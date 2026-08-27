; ModuleID = '/mydata/ODeSSy/perf_zstd_work/ll/zdict.ll'
source_filename = "/mydata/zstd/lib/dictBuilder/zdict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZDICT_params_t = type { i32, i32, i32 }
%struct.ZSTD_parameters = type { %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }
%struct.ZDICT_legacy_params_t = type { i32, %struct.ZDICT_params_t }
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
  %6 = tail call ptr @ERR_getErrorString(i32 noundef %5) #19
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

10:                                               ; preds = %7, %4, %2
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
  %8 = tail call noalias dereferenceable_or_null(5632) ptr @malloc(i64 noundef 5632) #20
  %9 = tail call noalias dereferenceable_or_null(8704) ptr @malloc(i64 noundef 8704) #20
  %10 = icmp ne ptr %8, null
  %11 = icmp ne ptr %9, null
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  tail call void @ZSTD_reset_compressedBlockState(ptr noundef nonnull %8) #19
  %14 = tail call i64 @ZSTD_loadCEntropy(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %0, i64 noundef %1) #19
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi i64 [ %14, %13 ], [ -64, %7 ]
  tail call void @free(ptr noundef %8) #19
  tail call void @free(ptr noundef %9) #19
  br label %17

17:                                               ; preds = %15, %4, %2
  %18 = phi i64 [ %16, %15 ], [ -30, %4 ], [ -30, %2 ]
  ret i64 %18
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare void @ZSTD_reset_compressedBlockState(ptr noundef) local_unnamed_addr #4

declare i64 @ZSTD_loadCEntropy(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_finalizeDictionary(ptr noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef readonly captures(none) %5, i32 noundef %6, ptr noundef readonly byval(%struct.ZDICT_params_t) align 8 captures(none) %7) local_unnamed_addr #1 {
  %9 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
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
  %19 = tail call i64 @ZSTD_XXH64(ptr noundef captures(none) %2, i64 noundef %3, i64 noundef 0) #21
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
  tail call fastcc void @ZDICT_finalizeDictionary.cold.1() #22
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

46:                                               ; preds = %44, %35
  %47 = phi i64 [ %45, %44 ], [ 0, %35 ]
  %48 = add i64 %39, %34
  %49 = add i64 %48, %47
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 %34
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 %47
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %51, ptr align 1 %2, i64 %39, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 16 %9, i64 %34, i1 false)
  call void @llvm.memset.p0.i64(ptr align 1 %50, i8 0, i64 %47, i1 false)
  br label %52

52:                                               ; preds = %46, %41, %30, %8
  %53 = phi i64 [ %49, %46 ], [ %32, %30 ], [ -70, %8 ], [ -70, %41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret i64 %53
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64(ptr noundef captures(none), i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #7

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
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %21 = trunc i64 %7 to i32
  %22 = add i32 %21, 131072
  %23 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %22, i1 true)
  %24 = xor i32 %23, 31
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  %25 = icmp eq i32 %5, 0
  br i1 %25, label %.loopexit42, label %26

26:                                               ; preds = %9
  %27 = zext i32 %5 to i64
  %28 = icmp ult i32 %5, 4
  br i1 %28, label %.preheader114, label %29

29:                                               ; preds = %26
  %30 = and i64 %27, 4294967292
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi i64 [ 0, %29 ], [ %41, %31 ]
  %33 = phi <2 x i64> [ zeroinitializer, %29 ], [ %39, %31 ]
  %34 = phi <2 x i64> [ zeroinitializer, %29 ], [ %40, %31 ]
  %35 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %32
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %37 = load <2 x i64>, ptr %35, align 8, !tbaa !13
  %38 = load <2 x i64>, ptr %36, align 8, !tbaa !13
  %39 = add <2 x i64> %37, %33
  %40 = add <2 x i64> %38, %34
  %41 = add nuw nsw i64 %32, 4
  %42 = icmp eq i64 %41, %30
  br i1 %42, label %43, label %31, !llvm.loop !15

43:                                               ; preds = %31
  %44 = add <2 x i64> %40, %39
  %45 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %44)
  %46 = icmp eq i64 %30, %27
  br i1 %46, label %.loopexit42, label %.preheader114

.preheader114:                                    ; preds = %43, %26
  %.ph115 = phi i64 [ %30, %43 ], [ 0, %26 ]
  %.ph116 = phi i64 [ %45, %43 ], [ 0, %26 ]
  br label %47

47:                                               ; preds = %.preheader114, %47
  %48 = phi i64 [ %53, %47 ], [ %.ph115, %.preheader114 ]
  %49 = phi i64 [ %52, %47 ], [ %.ph116, %.preheader114 ]
  %50 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %48
  %51 = load i64, ptr %50, align 8, !tbaa !13
  %52 = add i64 %51, %49
  %53 = add nuw nsw i64 %48, 1
  %54 = icmp eq i64 %53, %27
  br i1 %54, label %.loopexit42, label %47, !llvm.loop !19

.loopexit42:                                      ; preds = %47, %43, %9
  %55 = phi i64 [ 0, %9 ], [ %45, %43 ], [ %52, %47 ]
  %56 = tail call i32 @llvm.umax.i32(i32 %5, i32 1)
  %57 = zext i32 %56 to i64
  %58 = udiv i64 %55, %57
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  %59 = icmp eq i32 %23, 0
  br i1 %59, label %633, label %60

60:                                               ; preds = %.loopexit42
  %61 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store <4 x i32> splat (i32 1), ptr %10, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %61, align 16, !tbaa !5
  %62 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %63 = getelementptr inbounds nuw i8, ptr %10, i64 48
  store <4 x i32> splat (i32 1), ptr %62, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %63, align 16, !tbaa !5
  %64 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %65 = getelementptr inbounds nuw i8, ptr %10, i64 80
  store <4 x i32> splat (i32 1), ptr %64, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %65, align 16, !tbaa !5
  %66 = getelementptr inbounds nuw i8, ptr %10, i64 96
  %67 = getelementptr inbounds nuw i8, ptr %10, i64 112
  store <4 x i32> splat (i32 1), ptr %66, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %67, align 16, !tbaa !5
  %68 = getelementptr inbounds nuw i8, ptr %10, i64 128
  %69 = getelementptr inbounds nuw i8, ptr %10, i64 144
  store <4 x i32> splat (i32 1), ptr %68, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %69, align 16, !tbaa !5
  %70 = getelementptr inbounds nuw i8, ptr %10, i64 160
  %71 = getelementptr inbounds nuw i8, ptr %10, i64 176
  store <4 x i32> splat (i32 1), ptr %70, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %71, align 16, !tbaa !5
  %72 = getelementptr inbounds nuw i8, ptr %10, i64 192
  %73 = getelementptr inbounds nuw i8, ptr %10, i64 208
  store <4 x i32> splat (i32 1), ptr %72, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %73, align 16, !tbaa !5
  %74 = getelementptr inbounds nuw i8, ptr %10, i64 224
  %75 = getelementptr inbounds nuw i8, ptr %10, i64 240
  store <4 x i32> splat (i32 1), ptr %74, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %75, align 16, !tbaa !5
  %76 = getelementptr inbounds nuw i8, ptr %10, i64 256
  %77 = getelementptr inbounds nuw i8, ptr %10, i64 272
  store <4 x i32> splat (i32 1), ptr %76, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %77, align 16, !tbaa !5
  %78 = getelementptr inbounds nuw i8, ptr %10, i64 288
  %79 = getelementptr inbounds nuw i8, ptr %10, i64 304
  store <4 x i32> splat (i32 1), ptr %78, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %79, align 16, !tbaa !5
  %80 = getelementptr inbounds nuw i8, ptr %10, i64 320
  %81 = getelementptr inbounds nuw i8, ptr %10, i64 336
  store <4 x i32> splat (i32 1), ptr %80, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %81, align 16, !tbaa !5
  %82 = getelementptr inbounds nuw i8, ptr %10, i64 352
  %83 = getelementptr inbounds nuw i8, ptr %10, i64 368
  store <4 x i32> splat (i32 1), ptr %82, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %83, align 16, !tbaa !5
  %84 = getelementptr inbounds nuw i8, ptr %10, i64 384
  %85 = getelementptr inbounds nuw i8, ptr %10, i64 400
  store <4 x i32> splat (i32 1), ptr %84, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %85, align 16, !tbaa !5
  %86 = getelementptr inbounds nuw i8, ptr %10, i64 416
  %87 = getelementptr inbounds nuw i8, ptr %10, i64 432
  store <4 x i32> splat (i32 1), ptr %86, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %87, align 16, !tbaa !5
  %88 = getelementptr inbounds nuw i8, ptr %10, i64 448
  %89 = getelementptr inbounds nuw i8, ptr %10, i64 464
  store <4 x i32> splat (i32 1), ptr %88, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %89, align 16, !tbaa !5
  %90 = getelementptr inbounds nuw i8, ptr %10, i64 480
  %91 = getelementptr inbounds nuw i8, ptr %10, i64 496
  store <4 x i32> splat (i32 1), ptr %90, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %91, align 16, !tbaa !5
  %92 = getelementptr inbounds nuw i8, ptr %10, i64 512
  %93 = getelementptr inbounds nuw i8, ptr %10, i64 528
  store <4 x i32> splat (i32 1), ptr %92, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %93, align 16, !tbaa !5
  %94 = getelementptr inbounds nuw i8, ptr %10, i64 544
  %95 = getelementptr inbounds nuw i8, ptr %10, i64 560
  store <4 x i32> splat (i32 1), ptr %94, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %95, align 16, !tbaa !5
  %96 = getelementptr inbounds nuw i8, ptr %10, i64 576
  %97 = getelementptr inbounds nuw i8, ptr %10, i64 592
  store <4 x i32> splat (i32 1), ptr %96, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %97, align 16, !tbaa !5
  %98 = getelementptr inbounds nuw i8, ptr %10, i64 608
  %99 = getelementptr inbounds nuw i8, ptr %10, i64 624
  store <4 x i32> splat (i32 1), ptr %98, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %99, align 16, !tbaa !5
  %100 = getelementptr inbounds nuw i8, ptr %10, i64 640
  %101 = getelementptr inbounds nuw i8, ptr %10, i64 656
  store <4 x i32> splat (i32 1), ptr %100, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %101, align 16, !tbaa !5
  %102 = getelementptr inbounds nuw i8, ptr %10, i64 672
  %103 = getelementptr inbounds nuw i8, ptr %10, i64 688
  store <4 x i32> splat (i32 1), ptr %102, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %103, align 16, !tbaa !5
  %104 = getelementptr inbounds nuw i8, ptr %10, i64 704
  %105 = getelementptr inbounds nuw i8, ptr %10, i64 720
  store <4 x i32> splat (i32 1), ptr %104, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %105, align 16, !tbaa !5
  %106 = getelementptr inbounds nuw i8, ptr %10, i64 736
  %107 = getelementptr inbounds nuw i8, ptr %10, i64 752
  store <4 x i32> splat (i32 1), ptr %106, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %107, align 16, !tbaa !5
  %108 = getelementptr inbounds nuw i8, ptr %10, i64 768
  %109 = getelementptr inbounds nuw i8, ptr %10, i64 784
  store <4 x i32> splat (i32 1), ptr %108, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %109, align 16, !tbaa !5
  %110 = getelementptr inbounds nuw i8, ptr %10, i64 800
  %111 = getelementptr inbounds nuw i8, ptr %10, i64 816
  store <4 x i32> splat (i32 1), ptr %110, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %111, align 16, !tbaa !5
  %112 = getelementptr inbounds nuw i8, ptr %10, i64 832
  %113 = getelementptr inbounds nuw i8, ptr %10, i64 848
  store <4 x i32> splat (i32 1), ptr %112, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %113, align 16, !tbaa !5
  %114 = getelementptr inbounds nuw i8, ptr %10, i64 864
  %115 = getelementptr inbounds nuw i8, ptr %10, i64 880
  store <4 x i32> splat (i32 1), ptr %114, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %115, align 16, !tbaa !5
  %116 = getelementptr inbounds nuw i8, ptr %10, i64 896
  %117 = getelementptr inbounds nuw i8, ptr %10, i64 912
  store <4 x i32> splat (i32 1), ptr %116, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %117, align 16, !tbaa !5
  %118 = getelementptr inbounds nuw i8, ptr %10, i64 928
  %119 = getelementptr inbounds nuw i8, ptr %10, i64 944
  store <4 x i32> splat (i32 1), ptr %118, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %119, align 16, !tbaa !5
  %120 = getelementptr inbounds nuw i8, ptr %10, i64 960
  %121 = getelementptr inbounds nuw i8, ptr %10, i64 976
  store <4 x i32> splat (i32 1), ptr %120, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %121, align 16, !tbaa !5
  %122 = getelementptr inbounds nuw i8, ptr %10, i64 992
  %123 = getelementptr inbounds nuw i8, ptr %10, i64 1008
  store <4 x i32> splat (i32 1), ptr %122, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %123, align 16, !tbaa !5
  %124 = sub nuw nsw i32 32, %23
  %125 = zext nneg i32 %124 to i64
  %126 = icmp ult i32 %22, 128
  br i1 %126, label %.preheader112, label %127

127:                                              ; preds = %60
  %128 = and i64 %125, 56
  br label %129

129:                                              ; preds = %129, %127
  %130 = phi i64 [ 0, %127 ], [ %133, %129 ]
  %131 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %130
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 16
  store <4 x i32> splat (i32 1), ptr %131, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %132, align 16, !tbaa !5
  %133 = add nuw i64 %130, 8
  %134 = icmp eq i64 %133, %128
  br i1 %134, label %135, label %129, !llvm.loop !20

135:                                              ; preds = %129
  %136 = icmp eq i64 %128, %125
  br i1 %136, label %.loopexit41, label %.preheader112

.preheader112:                                    ; preds = %135, %60
  %.ph113 = phi i64 [ %128, %135 ], [ 0, %60 ]
  br label %137

137:                                              ; preds = %.preheader112, %137
  %138 = phi i64 [ %140, %137 ], [ %.ph113, %.preheader112 ]
  %139 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %138
  store i32 1, ptr %139, align 4, !tbaa !5
  %140 = add nuw nsw i64 %138, 1
  %141 = icmp eq i64 %140, %125
  br i1 %141, label %.loopexit41, label %137, !llvm.loop !21

.loopexit41:                                      ; preds = %137, %135
  store <4 x i32> splat (i32 1), ptr %14, align 16, !tbaa !5
  %142 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store <4 x i32> splat (i32 1), ptr %142, align 16, !tbaa !5
  %143 = getelementptr inbounds nuw i8, ptr %14, i64 32
  store <4 x i32> splat (i32 1), ptr %143, align 16, !tbaa !5
  %144 = getelementptr inbounds nuw i8, ptr %14, i64 48
  store <4 x i32> splat (i32 1), ptr %144, align 16, !tbaa !5
  %145 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store <4 x i32> splat (i32 1), ptr %145, align 16, !tbaa !5
  %146 = getelementptr inbounds nuw i8, ptr %14, i64 80
  store <4 x i32> splat (i32 1), ptr %146, align 16, !tbaa !5
  %147 = getelementptr inbounds nuw i8, ptr %14, i64 96
  store <4 x i32> splat (i32 1), ptr %147, align 16, !tbaa !5
  %148 = getelementptr inbounds nuw i8, ptr %14, i64 112
  store <4 x i32> splat (i32 1), ptr %148, align 16, !tbaa !5
  %149 = getelementptr inbounds nuw i8, ptr %14, i64 128
  store <4 x i32> splat (i32 1), ptr %149, align 16, !tbaa !5
  %150 = getelementptr inbounds nuw i8, ptr %14, i64 144
  store <4 x i32> splat (i32 1), ptr %150, align 16, !tbaa !5
  %151 = getelementptr inbounds nuw i8, ptr %14, i64 160
  store <4 x i32> splat (i32 1), ptr %151, align 16, !tbaa !5
  %152 = getelementptr inbounds nuw i8, ptr %14, i64 176
  store <4 x i32> splat (i32 1), ptr %152, align 16, !tbaa !5
  %153 = getelementptr inbounds nuw i8, ptr %14, i64 192
  store <4 x i32> splat (i32 1), ptr %153, align 16, !tbaa !5
  %154 = getelementptr inbounds nuw i8, ptr %14, i64 208
  store i32 1, ptr %154, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %16, align 16, !tbaa !5
  %155 = getelementptr inbounds nuw i8, ptr %16, i64 16
  store <4 x i32> splat (i32 1), ptr %155, align 16, !tbaa !5
  %156 = getelementptr inbounds nuw i8, ptr %16, i64 32
  store <4 x i32> splat (i32 1), ptr %156, align 16, !tbaa !5
  %157 = getelementptr inbounds nuw i8, ptr %16, i64 48
  store <4 x i32> splat (i32 1), ptr %157, align 16, !tbaa !5
  %158 = getelementptr inbounds nuw i8, ptr %16, i64 64
  store <4 x i32> splat (i32 1), ptr %158, align 16, !tbaa !5
  %159 = getelementptr inbounds nuw i8, ptr %16, i64 80
  store <4 x i32> splat (i32 1), ptr %159, align 16, !tbaa !5
  %160 = getelementptr inbounds nuw i8, ptr %16, i64 96
  store <4 x i32> splat (i32 1), ptr %160, align 16, !tbaa !5
  %161 = getelementptr inbounds nuw i8, ptr %16, i64 112
  store <4 x i32> splat (i32 1), ptr %161, align 16, !tbaa !5
  %162 = getelementptr inbounds nuw i8, ptr %16, i64 128
  store <4 x i32> splat (i32 1), ptr %162, align 16, !tbaa !5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %18, i8 0, i64 4096, i1 false)
  %163 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i32 1, ptr %163, align 16, !tbaa !5
  %164 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 1, ptr %164, align 16, !tbaa !5
  %165 = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 1, ptr %165, align 4, !tbaa !5
  %166 = icmp eq i32 %2, 0
  %167 = select i1 %166, i32 3, i32 %2
  call void @ZSTD_getParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_parameters) align 4 %19, i32 noundef %167, i64 noundef %58, i64 noundef %7) #19
  %168 = call ptr @ZSTD_createCDict_advanced(ptr noundef %6, i64 noundef %7, i32 noundef 1, i32 noundef 1, ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %19, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 @ZSTD_defaultCMem) #19
  %169 = call ptr @ZSTD_createCCtx() #19
  %170 = call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #20
  %171 = icmp ne ptr %168, null
  %172 = icmp ne ptr %169, null
  %173 = select i1 %171, i1 %172, i1 false
  %174 = icmp ne ptr %170, null
  %175 = and i1 %173, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %.loopexit41
  br i1 %25, label %.loopexit40, label %177

177:                                              ; preds = %176
  %178 = load i32, ptr %19, align 8, !tbaa !22
  %179 = shl nuw i32 1, %178
  %180 = call i32 @llvm.smin.i32(i32 %179, i32 131072)
  %181 = sext i32 %180 to i64
  %182 = icmp eq i32 %8, 0
  %183 = icmp ugt i32 %8, 2
  %184 = zext i32 %5 to i64
  br label %188

185:                                              ; preds = %.loopexit41
  %186 = icmp eq i32 %8, 0
  br i1 %186, label %633, label %187

187:                                              ; preds = %185
  call fastcc void @ZDICT_analyzeEntropy.cold.1() #22
  br label %633

188:                                              ; preds = %435, %177
  %189 = phi i64 [ 0, %177 ], [ %438, %435 ]
  %190 = phi i64 [ 0, %177 ], [ %437, %435 ]
  %191 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %189
  %192 = load i64, ptr %191, align 8, !tbaa !13
  %193 = call i64 @llvm.umin.i64(i64 %192, i64 %181)
  %194 = call i64 @ZSTD_compressBegin_usingCDict_deprecated(ptr noundef %169, ptr noundef %168) #19
  %195 = icmp ult i64 %194, -119
  br i1 %195, label %198, label %196

196:                                              ; preds = %188
  br i1 %182, label %435, label %197

197:                                              ; preds = %196
  call fastcc void @ZDICT_analyzeEntropy.cold.2() #22
  br label %435

198:                                              ; preds = %188
  %199 = getelementptr inbounds nuw i8, ptr %3, i64 %190
  %200 = call i64 @ZSTD_compressBlock_deprecated(ptr noundef %169, ptr noundef %170, i64 noundef 131072, ptr noundef %199, i64 noundef %193) #19
  %201 = icmp ult i64 %200, -119
  br i1 %201, label %204, label %202

202:                                              ; preds = %198
  br i1 %183, label %203, label %435

203:                                              ; preds = %202
  call fastcc void @ZDICT_analyzeEntropy.cold.3(i64 %193) #22
  br label %435

204:                                              ; preds = %198
  %205 = icmp eq i64 %200, 0
  br i1 %205, label %435, label %206

206:                                              ; preds = %204
  %207 = call ptr @ZSTD_getSeqStore(ptr noundef %169) #19
  %208 = getelementptr inbounds nuw i8, ptr %207, i64 16
  %209 = load ptr, ptr %208, align 8, !tbaa !25
  %210 = getelementptr inbounds nuw i8, ptr %207, i64 24
  %211 = load ptr, ptr %210, align 8, !tbaa !30
  %212 = icmp ult ptr %209, %211
  br i1 %212, label %213, label %.loopexit37

213:                                              ; preds = %206
  %214 = ptrtoint ptr %211 to i64
  %215 = ptrtoint ptr %209 to i64
  %216 = sub i64 %214, %215
  %217 = and i64 %216, 3
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %.loopexit39, label %.preheader38

.preheader38:                                     ; preds = %213, %.preheader38
  %219 = phi ptr [ %226, %.preheader38 ], [ %209, %213 ]
  %220 = phi i64 [ %227, %.preheader38 ], [ 0, %213 ]
  %221 = load i8, ptr %219, align 1, !tbaa !31
  %222 = zext i8 %221 to i64
  %223 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !5
  %225 = add i32 %224, 1
  store i32 %225, ptr %223, align 4, !tbaa !5
  %226 = getelementptr inbounds nuw i8, ptr %219, i64 1
  %227 = add nuw nsw i64 %220, 1
  %228 = icmp eq i64 %227, %217
  br i1 %228, label %.loopexit39, label %.preheader38, !llvm.loop !32

.loopexit39:                                      ; preds = %.preheader38, %213
  %229 = phi ptr [ %209, %213 ], [ %226, %.preheader38 ]
  %230 = sub i64 %215, %214
  %231 = icmp ugt i64 %230, -4
  br i1 %231, label %.loopexit37, label %.preheader36

.preheader36:                                     ; preds = %.loopexit39, %.preheader36
  %232 = phi ptr [ %256, %.preheader36 ], [ %229, %.loopexit39 ]
  %233 = load i8, ptr %232, align 1, !tbaa !31
  %234 = zext i8 %233 to i64
  %235 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !5
  %237 = add i32 %236, 1
  store i32 %237, ptr %235, align 4, !tbaa !5
  %238 = getelementptr inbounds nuw i8, ptr %232, i64 1
  %239 = load i8, ptr %238, align 1, !tbaa !31
  %240 = zext i8 %239 to i64
  %241 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !5
  %243 = add i32 %242, 1
  store i32 %243, ptr %241, align 4, !tbaa !5
  %244 = getelementptr inbounds nuw i8, ptr %232, i64 2
  %245 = load i8, ptr %244, align 1, !tbaa !31
  %246 = zext i8 %245 to i64
  %247 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !5
  %249 = add i32 %248, 1
  store i32 %249, ptr %247, align 4, !tbaa !5
  %250 = getelementptr inbounds nuw i8, ptr %232, i64 3
  %251 = load i8, ptr %250, align 1, !tbaa !31
  %252 = zext i8 %251 to i64
  %253 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %252
  %254 = load i32, ptr %253, align 4, !tbaa !5
  %255 = add i32 %254, 1
  store i32 %255, ptr %253, align 4, !tbaa !5
  %256 = getelementptr inbounds nuw i8, ptr %232, i64 4
  %257 = icmp eq ptr %256, %211
  br i1 %257, label %.loopexit37, label %.preheader36, !llvm.loop !34

.loopexit37:                                      ; preds = %.preheader36, %.loopexit39, %206
  %258 = getelementptr inbounds nuw i8, ptr %207, i64 8
  %259 = load ptr, ptr %258, align 8, !tbaa !35
  %260 = load ptr, ptr %207, align 8, !tbaa !36
  %261 = ptrtoint ptr %259 to i64
  %262 = ptrtoint ptr %260 to i64
  %263 = sub i64 %261, %262
  %264 = lshr i64 %263, 3
  %265 = trunc i64 %264 to i32
  %266 = call i32 @ZSTD_seqToCodes(ptr noundef nonnull %207) #19
  %267 = getelementptr inbounds nuw i8, ptr %207, i64 48
  %268 = load ptr, ptr %267, align 8, !tbaa !37
  %269 = icmp eq i32 %265, 0
  br i1 %269, label %435, label %270

270:                                              ; preds = %.loopexit37
  %271 = and i64 %264, 4294967295
  %272 = add nsw i64 %271, -1
  %273 = and i64 %264, 3
  %274 = icmp ult i64 %272, 3
  br i1 %274, label %.loopexit35, label %275

275:                                              ; preds = %270
  %276 = and i64 %264, 4294967292
  %277 = getelementptr inbounds nuw i8, ptr %268, i64 1
  %278 = getelementptr inbounds nuw i8, ptr %268, i64 2
  %279 = getelementptr inbounds nuw i8, ptr %268, i64 3
  br label %280

280:                                              ; preds = %280, %275
  %281 = phi i64 [ 0, %275 ], [ %306, %280 ]
  %282 = getelementptr inbounds nuw i8, ptr %268, i64 %281
  %283 = load i8, ptr %282, align 1, !tbaa !31
  %284 = zext i8 %283 to i64
  %285 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %284
  %286 = load i32, ptr %285, align 4, !tbaa !5
  %287 = add i32 %286, 1
  store i32 %287, ptr %285, align 4, !tbaa !5
  %288 = getelementptr inbounds nuw i8, ptr %277, i64 %281
  %289 = load i8, ptr %288, align 1, !tbaa !31
  %290 = zext i8 %289 to i64
  %291 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %290
  %292 = load i32, ptr %291, align 4, !tbaa !5
  %293 = add i32 %292, 1
  store i32 %293, ptr %291, align 4, !tbaa !5
  %294 = getelementptr inbounds nuw i8, ptr %278, i64 %281
  %295 = load i8, ptr %294, align 1, !tbaa !31
  %296 = zext i8 %295 to i64
  %297 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %296
  %298 = load i32, ptr %297, align 4, !tbaa !5
  %299 = add i32 %298, 1
  store i32 %299, ptr %297, align 4, !tbaa !5
  %300 = getelementptr inbounds nuw i8, ptr %279, i64 %281
  %301 = load i8, ptr %300, align 1, !tbaa !31
  %302 = zext i8 %301 to i64
  %303 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %302
  %304 = load i32, ptr %303, align 4, !tbaa !5
  %305 = add i32 %304, 1
  store i32 %305, ptr %303, align 4, !tbaa !5
  %306 = add nuw i64 %281, 4
  %307 = icmp eq i64 %306, %276
  br i1 %307, label %.loopexit35, label %280, !llvm.loop !38

.loopexit35:                                      ; preds = %280, %270
  %308 = phi i64 [ 0, %270 ], [ %276, %280 ]
  %309 = icmp eq i64 %273, 0
  br i1 %309, label %.loopexit34, label %.preheader33

.preheader33:                                     ; preds = %.loopexit35, %.preheader33
  %310 = phi i64 [ %318, %.preheader33 ], [ %308, %.loopexit35 ]
  %311 = phi i64 [ %319, %.preheader33 ], [ 0, %.loopexit35 ]
  %312 = getelementptr inbounds nuw i8, ptr %268, i64 %310
  %313 = load i8, ptr %312, align 1, !tbaa !31
  %314 = zext i8 %313 to i64
  %315 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %314
  %316 = load i32, ptr %315, align 4, !tbaa !5
  %317 = add i32 %316, 1
  store i32 %317, ptr %315, align 4, !tbaa !5
  %318 = add nuw nsw i64 %310, 1
  %319 = add nuw nsw i64 %311, 1
  %320 = icmp eq i64 %319, %273
  br i1 %320, label %.loopexit34, label %.preheader33, !llvm.loop !39

.loopexit34:                                      ; preds = %.preheader33, %.loopexit35
  %321 = getelementptr inbounds nuw i8, ptr %207, i64 40
  %322 = load ptr, ptr %321, align 8, !tbaa !40
  br i1 %274, label %.loopexit32, label %323

323:                                              ; preds = %.loopexit34
  %324 = and i64 %264, 4294967292
  %325 = getelementptr inbounds nuw i8, ptr %322, i64 1
  %326 = getelementptr inbounds nuw i8, ptr %322, i64 2
  %327 = getelementptr inbounds nuw i8, ptr %322, i64 3
  br label %328

328:                                              ; preds = %328, %323
  %329 = phi i64 [ 0, %323 ], [ %354, %328 ]
  %330 = getelementptr inbounds nuw i8, ptr %322, i64 %329
  %331 = load i8, ptr %330, align 1, !tbaa !31
  %332 = zext i8 %331 to i64
  %333 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %332
  %334 = load i32, ptr %333, align 4, !tbaa !5
  %335 = add i32 %334, 1
  store i32 %335, ptr %333, align 4, !tbaa !5
  %336 = getelementptr inbounds nuw i8, ptr %325, i64 %329
  %337 = load i8, ptr %336, align 1, !tbaa !31
  %338 = zext i8 %337 to i64
  %339 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %338
  %340 = load i32, ptr %339, align 4, !tbaa !5
  %341 = add i32 %340, 1
  store i32 %341, ptr %339, align 4, !tbaa !5
  %342 = getelementptr inbounds nuw i8, ptr %326, i64 %329
  %343 = load i8, ptr %342, align 1, !tbaa !31
  %344 = zext i8 %343 to i64
  %345 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %344
  %346 = load i32, ptr %345, align 4, !tbaa !5
  %347 = add i32 %346, 1
  store i32 %347, ptr %345, align 4, !tbaa !5
  %348 = getelementptr inbounds nuw i8, ptr %327, i64 %329
  %349 = load i8, ptr %348, align 1, !tbaa !31
  %350 = zext i8 %349 to i64
  %351 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %350
  %352 = load i32, ptr %351, align 4, !tbaa !5
  %353 = add i32 %352, 1
  store i32 %353, ptr %351, align 4, !tbaa !5
  %354 = add nuw i64 %329, 4
  %355 = icmp eq i64 %354, %324
  br i1 %355, label %.loopexit32, label %328, !llvm.loop !41

.loopexit32:                                      ; preds = %328, %.loopexit34
  %356 = phi i64 [ 0, %.loopexit34 ], [ %324, %328 ]
  br i1 %309, label %.loopexit31, label %.preheader30

.preheader30:                                     ; preds = %.loopexit32, %.preheader30
  %357 = phi i64 [ %365, %.preheader30 ], [ %356, %.loopexit32 ]
  %358 = phi i64 [ %366, %.preheader30 ], [ 0, %.loopexit32 ]
  %359 = getelementptr inbounds nuw i8, ptr %322, i64 %357
  %360 = load i8, ptr %359, align 1, !tbaa !31
  %361 = zext i8 %360 to i64
  %362 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %361
  %363 = load i32, ptr %362, align 4, !tbaa !5
  %364 = add i32 %363, 1
  store i32 %364, ptr %362, align 4, !tbaa !5
  %365 = add nuw nsw i64 %357, 1
  %366 = add nuw nsw i64 %358, 1
  %367 = icmp eq i64 %366, %273
  br i1 %367, label %.loopexit31, label %.preheader30, !llvm.loop !42

.loopexit31:                                      ; preds = %.preheader30, %.loopexit32
  %368 = getelementptr inbounds nuw i8, ptr %207, i64 32
  %369 = load ptr, ptr %368, align 8, !tbaa !43
  br i1 %274, label %.loopexit29, label %370

370:                                              ; preds = %.loopexit31
  %371 = and i64 %264, 4294967292
  %372 = getelementptr inbounds nuw i8, ptr %369, i64 1
  %373 = getelementptr inbounds nuw i8, ptr %369, i64 2
  %374 = getelementptr inbounds nuw i8, ptr %369, i64 3
  br label %375

375:                                              ; preds = %375, %370
  %376 = phi i64 [ 0, %370 ], [ %401, %375 ]
  %377 = getelementptr inbounds nuw i8, ptr %369, i64 %376
  %378 = load i8, ptr %377, align 1, !tbaa !31
  %379 = zext i8 %378 to i64
  %380 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %379
  %381 = load i32, ptr %380, align 4, !tbaa !5
  %382 = add i32 %381, 1
  store i32 %382, ptr %380, align 4, !tbaa !5
  %383 = getelementptr inbounds nuw i8, ptr %372, i64 %376
  %384 = load i8, ptr %383, align 1, !tbaa !31
  %385 = zext i8 %384 to i64
  %386 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %385
  %387 = load i32, ptr %386, align 4, !tbaa !5
  %388 = add i32 %387, 1
  store i32 %388, ptr %386, align 4, !tbaa !5
  %389 = getelementptr inbounds nuw i8, ptr %373, i64 %376
  %390 = load i8, ptr %389, align 1, !tbaa !31
  %391 = zext i8 %390 to i64
  %392 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %391
  %393 = load i32, ptr %392, align 4, !tbaa !5
  %394 = add i32 %393, 1
  store i32 %394, ptr %392, align 4, !tbaa !5
  %395 = getelementptr inbounds nuw i8, ptr %374, i64 %376
  %396 = load i8, ptr %395, align 1, !tbaa !31
  %397 = zext i8 %396 to i64
  %398 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %397
  %399 = load i32, ptr %398, align 4, !tbaa !5
  %400 = add i32 %399, 1
  store i32 %400, ptr %398, align 4, !tbaa !5
  %401 = add nuw i64 %376, 4
  %402 = icmp eq i64 %401, %371
  br i1 %402, label %.loopexit29, label %375, !llvm.loop !44

.loopexit29:                                      ; preds = %375, %.loopexit31
  %403 = phi i64 [ 0, %.loopexit31 ], [ %371, %375 ]
  br i1 %309, label %.loopexit28, label %.preheader

.preheader:                                       ; preds = %.loopexit29, %.preheader
  %404 = phi i64 [ %412, %.preheader ], [ %403, %.loopexit29 ]
  %405 = phi i64 [ %413, %.preheader ], [ 0, %.loopexit29 ]
  %406 = getelementptr inbounds nuw i8, ptr %369, i64 %404
  %407 = load i8, ptr %406, align 1, !tbaa !31
  %408 = zext i8 %407 to i64
  %409 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %408
  %410 = load i32, ptr %409, align 4, !tbaa !5
  %411 = add i32 %410, 1
  store i32 %411, ptr %409, align 4, !tbaa !5
  %412 = add nuw nsw i64 %404, 1
  %413 = add nuw nsw i64 %405, 1
  %414 = icmp eq i64 %413, %273
  br i1 %414, label %.loopexit28, label %.preheader, !llvm.loop !45

.loopexit28:                                      ; preds = %.preheader, %.loopexit29
  %415 = icmp eq i32 %265, 1
  br i1 %415, label %435, label %416

416:                                              ; preds = %.loopexit28
  %417 = load ptr, ptr %207, align 8, !tbaa !36
  %418 = load i32, ptr %417, align 4, !tbaa !46
  %419 = add i32 %418, -3
  %420 = getelementptr inbounds nuw i8, ptr %417, i64 8
  %421 = load i32, ptr %420, align 4, !tbaa !46
  %422 = add i32 %421, -3
  %423 = icmp ugt i32 %419, 1023
  %424 = select i1 %423, i32 0, i32 %419
  %425 = icmp ugt i32 %422, 1023
  %426 = select i1 %425, i32 0, i32 %422
  %427 = zext i32 %424 to i64
  %428 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %427
  %429 = load i32, ptr %428, align 4, !tbaa !5
  %430 = add i32 %429, 3
  store i32 %430, ptr %428, align 4, !tbaa !5
  %431 = zext i32 %426 to i64
  %432 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %431
  %433 = load i32, ptr %432, align 4, !tbaa !5
  %434 = add i32 %433, 1
  store i32 %434, ptr %432, align 4, !tbaa !5
  br label %435

435:                                              ; preds = %416, %.loopexit28, %.loopexit37, %204, %203, %202, %197, %196
  %436 = load i64, ptr %191, align 8, !tbaa !13
  %437 = add i64 %436, %190
  %438 = add nuw nsw i64 %189, 1
  %439 = icmp eq i64 %438, %184
  br i1 %439, label %.loopexit40, label %188, !llvm.loop !49

.loopexit40:                                      ; preds = %435, %176
  %440 = icmp ugt i32 %8, 3
  br i1 %440, label %441, label %442

441:                                              ; preds = %.loopexit40
  call fastcc void @ZDICT_analyzeEntropy.cold.4(ptr %12, i64 %125) #22
  br label %442

442:                                              ; preds = %441, %.loopexit40
  %443 = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %11, ptr noundef nonnull %10, i32 noundef 255, i32 noundef 11, ptr noundef nonnull %20, i64 noundef 4864) #19
  %444 = icmp ult i64 %443, -119
  br i1 %444, label %448, label %445

445:                                              ; preds = %442
  %446 = icmp eq i32 %8, 0
  br i1 %446, label %633, label %447

447:                                              ; preds = %445
  call fastcc void @ZDICT_analyzeEntropy.cold.5() #22
  br label %633

448:                                              ; preds = %442
  %449 = icmp eq i64 %443, 8
  br i1 %449, label %450, label %521

450:                                              ; preds = %448
  %451 = icmp ugt i32 %8, 1
  br i1 %451, label %452, label %453

452:                                              ; preds = %450
  call fastcc void @ZDICT_analyzeEntropy.cold.6() #22
  br label %453

453:                                              ; preds = %452, %450
  %454 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %455 = getelementptr inbounds nuw i8, ptr %10, i64 20
  store <4 x i32> splat (i32 2), ptr %454, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %455, align 4, !tbaa !5
  %456 = getelementptr inbounds nuw i8, ptr %10, i64 36
  %457 = getelementptr inbounds nuw i8, ptr %10, i64 52
  store <4 x i32> splat (i32 2), ptr %456, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %457, align 4, !tbaa !5
  %458 = getelementptr inbounds nuw i8, ptr %10, i64 68
  %459 = getelementptr inbounds nuw i8, ptr %10, i64 84
  store <4 x i32> splat (i32 2), ptr %458, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %459, align 4, !tbaa !5
  %460 = getelementptr inbounds nuw i8, ptr %10, i64 100
  %461 = getelementptr inbounds nuw i8, ptr %10, i64 116
  store <4 x i32> splat (i32 2), ptr %460, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %461, align 4, !tbaa !5
  %462 = getelementptr inbounds nuw i8, ptr %10, i64 132
  %463 = getelementptr inbounds nuw i8, ptr %10, i64 148
  store <4 x i32> splat (i32 2), ptr %462, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %463, align 4, !tbaa !5
  %464 = getelementptr inbounds nuw i8, ptr %10, i64 164
  %465 = getelementptr inbounds nuw i8, ptr %10, i64 180
  store <4 x i32> splat (i32 2), ptr %464, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %465, align 4, !tbaa !5
  %466 = getelementptr inbounds nuw i8, ptr %10, i64 196
  %467 = getelementptr inbounds nuw i8, ptr %10, i64 212
  store <4 x i32> splat (i32 2), ptr %466, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %467, align 4, !tbaa !5
  %468 = getelementptr inbounds nuw i8, ptr %10, i64 228
  %469 = getelementptr inbounds nuw i8, ptr %10, i64 244
  store <4 x i32> splat (i32 2), ptr %468, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %469, align 4, !tbaa !5
  %470 = getelementptr inbounds nuw i8, ptr %10, i64 260
  %471 = getelementptr inbounds nuw i8, ptr %10, i64 276
  store <4 x i32> splat (i32 2), ptr %470, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %471, align 4, !tbaa !5
  %472 = getelementptr inbounds nuw i8, ptr %10, i64 292
  %473 = getelementptr inbounds nuw i8, ptr %10, i64 308
  store <4 x i32> splat (i32 2), ptr %472, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %473, align 4, !tbaa !5
  %474 = getelementptr inbounds nuw i8, ptr %10, i64 324
  %475 = getelementptr inbounds nuw i8, ptr %10, i64 340
  store <4 x i32> splat (i32 2), ptr %474, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %475, align 4, !tbaa !5
  %476 = getelementptr inbounds nuw i8, ptr %10, i64 356
  %477 = getelementptr inbounds nuw i8, ptr %10, i64 372
  store <4 x i32> splat (i32 2), ptr %476, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %477, align 4, !tbaa !5
  %478 = getelementptr inbounds nuw i8, ptr %10, i64 388
  %479 = getelementptr inbounds nuw i8, ptr %10, i64 404
  store <4 x i32> splat (i32 2), ptr %478, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %479, align 4, !tbaa !5
  %480 = getelementptr inbounds nuw i8, ptr %10, i64 420
  %481 = getelementptr inbounds nuw i8, ptr %10, i64 436
  store <4 x i32> splat (i32 2), ptr %480, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %481, align 4, !tbaa !5
  %482 = getelementptr inbounds nuw i8, ptr %10, i64 452
  %483 = getelementptr inbounds nuw i8, ptr %10, i64 468
  store <4 x i32> splat (i32 2), ptr %482, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %483, align 4, !tbaa !5
  %484 = getelementptr inbounds nuw i8, ptr %10, i64 484
  %485 = getelementptr inbounds nuw i8, ptr %10, i64 500
  store <4 x i32> splat (i32 2), ptr %484, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %485, align 4, !tbaa !5
  %486 = getelementptr inbounds nuw i8, ptr %10, i64 516
  %487 = getelementptr inbounds nuw i8, ptr %10, i64 532
  store <4 x i32> splat (i32 2), ptr %486, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %487, align 4, !tbaa !5
  %488 = getelementptr inbounds nuw i8, ptr %10, i64 548
  %489 = getelementptr inbounds nuw i8, ptr %10, i64 564
  store <4 x i32> splat (i32 2), ptr %488, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %489, align 4, !tbaa !5
  %490 = getelementptr inbounds nuw i8, ptr %10, i64 580
  %491 = getelementptr inbounds nuw i8, ptr %10, i64 596
  store <4 x i32> splat (i32 2), ptr %490, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %491, align 4, !tbaa !5
  %492 = getelementptr inbounds nuw i8, ptr %10, i64 612
  %493 = getelementptr inbounds nuw i8, ptr %10, i64 628
  store <4 x i32> splat (i32 2), ptr %492, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %493, align 4, !tbaa !5
  %494 = getelementptr inbounds nuw i8, ptr %10, i64 644
  %495 = getelementptr inbounds nuw i8, ptr %10, i64 660
  store <4 x i32> splat (i32 2), ptr %494, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %495, align 4, !tbaa !5
  %496 = getelementptr inbounds nuw i8, ptr %10, i64 676
  %497 = getelementptr inbounds nuw i8, ptr %10, i64 692
  store <4 x i32> splat (i32 2), ptr %496, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %497, align 4, !tbaa !5
  %498 = getelementptr inbounds nuw i8, ptr %10, i64 708
  %499 = getelementptr inbounds nuw i8, ptr %10, i64 724
  store <4 x i32> splat (i32 2), ptr %498, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %499, align 4, !tbaa !5
  %500 = getelementptr inbounds nuw i8, ptr %10, i64 740
  %501 = getelementptr inbounds nuw i8, ptr %10, i64 756
  store <4 x i32> splat (i32 2), ptr %500, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %501, align 4, !tbaa !5
  %502 = getelementptr inbounds nuw i8, ptr %10, i64 772
  %503 = getelementptr inbounds nuw i8, ptr %10, i64 788
  store <4 x i32> splat (i32 2), ptr %502, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %503, align 4, !tbaa !5
  %504 = getelementptr inbounds nuw i8, ptr %10, i64 804
  %505 = getelementptr inbounds nuw i8, ptr %10, i64 820
  store <4 x i32> splat (i32 2), ptr %504, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %505, align 4, !tbaa !5
  %506 = getelementptr inbounds nuw i8, ptr %10, i64 836
  %507 = getelementptr inbounds nuw i8, ptr %10, i64 852
  store <4 x i32> splat (i32 2), ptr %506, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %507, align 4, !tbaa !5
  %508 = getelementptr inbounds nuw i8, ptr %10, i64 868
  %509 = getelementptr inbounds nuw i8, ptr %10, i64 884
  store <4 x i32> splat (i32 2), ptr %508, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %509, align 4, !tbaa !5
  %510 = getelementptr inbounds nuw i8, ptr %10, i64 900
  %511 = getelementptr inbounds nuw i8, ptr %10, i64 916
  store <4 x i32> splat (i32 2), ptr %510, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %511, align 4, !tbaa !5
  %512 = getelementptr inbounds nuw i8, ptr %10, i64 932
  %513 = getelementptr inbounds nuw i8, ptr %10, i64 948
  store <4 x i32> splat (i32 2), ptr %512, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %513, align 4, !tbaa !5
  %514 = getelementptr inbounds nuw i8, ptr %10, i64 964
  %515 = getelementptr inbounds nuw i8, ptr %10, i64 980
  store <4 x i32> splat (i32 2), ptr %514, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %515, align 4, !tbaa !5
  %516 = getelementptr inbounds nuw i8, ptr %10, i64 996
  store <4 x i32> splat (i32 2), ptr %516, align 4, !tbaa !5
  %517 = getelementptr inbounds nuw i8, ptr %10, i64 1012
  %518 = getelementptr inbounds nuw i8, ptr %10, i64 1016
  %519 = getelementptr inbounds nuw i8, ptr %10, i64 1020
  store i32 2, ptr %519, align 4, !tbaa !5
  store i32 4, ptr %10, align 16, !tbaa !5
  store i32 1, ptr %517, align 4, !tbaa !5
  store i32 1, ptr %518, align 8, !tbaa !5
  %520 = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %11, ptr noundef nonnull %10, i32 noundef 255, i32 noundef 11, ptr noundef nonnull %20, i64 noundef 4864) #19
  br label %521

521:                                              ; preds = %453, %448
  %522 = phi i64 [ %520, %453 ], [ %443, %448 ]
  br i1 %126, label %.preheader107, label %523

523:                                              ; preds = %521
  %524 = and i64 %125, 56
  br label %525

525:                                              ; preds = %525, %523
  %526 = phi i64 [ 0, %523 ], [ %535, %525 ]
  %527 = phi <4 x i32> [ zeroinitializer, %523 ], [ %533, %525 ]
  %528 = phi <4 x i32> [ zeroinitializer, %523 ], [ %534, %525 ]
  %529 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %526
  %530 = getelementptr inbounds nuw i8, ptr %529, i64 16
  %531 = load <4 x i32>, ptr %529, align 16, !tbaa !5
  %532 = load <4 x i32>, ptr %530, align 16, !tbaa !5
  %533 = add <4 x i32> %531, %527
  %534 = add <4 x i32> %532, %528
  %535 = add nuw i64 %526, 8
  %536 = icmp eq i64 %535, %524
  br i1 %536, label %537, label %525, !llvm.loop !50

537:                                              ; preds = %525
  %538 = add <4 x i32> %534, %533
  %539 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %538)
  %540 = icmp eq i64 %524, %125
  br i1 %540, label %.loopexit, label %.preheader107

.preheader107:                                    ; preds = %537, %521
  %.ph = phi i64 [ %524, %537 ], [ 0, %521 ]
  %.ph108 = phi i32 [ %539, %537 ], [ 0, %521 ]
  br label %541

541:                                              ; preds = %.preheader107, %541
  %542 = phi i64 [ %547, %541 ], [ %.ph, %.preheader107 ]
  %543 = phi i32 [ %546, %541 ], [ %.ph108, %.preheader107 ]
  %544 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %542
  %545 = load i32, ptr %544, align 4, !tbaa !5
  %546 = add i32 %545, %543
  %547 = add nuw nsw i64 %542, 1
  %548 = icmp eq i64 %547, %125
  br i1 %548, label %.loopexit, label %541, !llvm.loop !51

.loopexit:                                        ; preds = %541, %537
  %549 = phi i32 [ %539, %537 ], [ %546, %541 ]
  %550 = trunc i64 %522 to i32
  %551 = zext i32 %549 to i64
  %552 = call i64 @FSE_normalizeCount(ptr noundef nonnull %13, i32 noundef 8, ptr noundef nonnull %12, i64 noundef %551, i32 noundef %24, i32 noundef 1) #19
  %553 = icmp ult i64 %552, -119
  br i1 %553, label %557, label %554

554:                                              ; preds = %.loopexit
  %555 = icmp eq i32 %8, 0
  br i1 %555, label %633, label %556

556:                                              ; preds = %554
  call fastcc void @ZDICT_analyzeEntropy.cold.7() #22
  br label %633

557:                                              ; preds = %.loopexit
  %558 = load <32 x i32>, ptr %14, align 16, !tbaa !5
  %559 = load <20 x i32>, ptr %149, align 16, !tbaa !5
  %560 = load i32, ptr %154, align 16, !tbaa !5
  %561 = shufflevector <20 x i32> %559, <20 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %562 = add <32 x i32> %561, %558
  %563 = shufflevector <32 x i32> %562, <32 x i32> %558, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %564 = call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %563)
  %565 = add i32 %564, %560
  %566 = trunc i64 %552 to i32
  %567 = zext i32 %565 to i64
  %568 = call i64 @FSE_normalizeCount(ptr noundef nonnull %15, i32 noundef 9, ptr noundef nonnull %14, i64 noundef %567, i32 noundef 52, i32 noundef 1) #19
  %569 = icmp ult i64 %568, -119
  br i1 %569, label %573, label %570

570:                                              ; preds = %557
  %571 = icmp eq i32 %8, 0
  br i1 %571, label %633, label %572

572:                                              ; preds = %570
  call fastcc void @ZDICT_analyzeEntropy.cold.8() #22
  br label %633

573:                                              ; preds = %557
  %574 = load <32 x i32>, ptr %16, align 16, !tbaa !5
  %575 = load <4 x i32>, ptr %162, align 16, !tbaa !5
  %576 = shufflevector <32 x i32> %574, <32 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %577 = add <4 x i32> %576, %575
  %578 = shufflevector <4 x i32> %577, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %579 = shufflevector <32 x i32> %578, <32 x i32> %574, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %580 = call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %579)
  %581 = trunc i64 %568 to i32
  %582 = zext i32 %580 to i64
  %583 = call i64 @FSE_normalizeCount(ptr noundef nonnull %17, i32 noundef 9, ptr noundef nonnull %16, i64 noundef %582, i32 noundef 35, i32 noundef 1) #19
  %584 = icmp ult i64 %583, -119
  br i1 %584, label %588, label %585

585:                                              ; preds = %573
  %586 = icmp eq i32 %8, 0
  br i1 %586, label %633, label %587

587:                                              ; preds = %585
  call fastcc void @ZDICT_analyzeEntropy.cold.9() #22
  br label %633

588:                                              ; preds = %573
  %589 = trunc i64 %583 to i32
  %590 = call i64 @HUF_writeCTable_wksp(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %11, i32 noundef 255, i32 noundef %550, ptr noundef nonnull %20, i64 noundef 4864) #19
  %591 = icmp ult i64 %590, -119
  br i1 %591, label %595, label %592

592:                                              ; preds = %588
  %593 = icmp eq i32 %8, 0
  br i1 %593, label %633, label %594

594:                                              ; preds = %592
  call fastcc void @ZDICT_analyzeEntropy.cold.10() #22
  br label %633

595:                                              ; preds = %588
  %596 = getelementptr inbounds nuw i8, ptr %0, i64 %590
  %597 = sub i64 %1, %590
  %598 = call i64 @FSE_writeNCount(ptr noundef %596, i64 noundef %597, ptr noundef nonnull %13, i32 noundef 30, i32 noundef %566) #19
  %599 = icmp ult i64 %598, -119
  br i1 %599, label %603, label %600

600:                                              ; preds = %595
  %601 = icmp eq i32 %8, 0
  br i1 %601, label %633, label %602

602:                                              ; preds = %600
  call fastcc void @ZDICT_analyzeEntropy.cold.11() #22
  br label %633

603:                                              ; preds = %595
  %604 = getelementptr inbounds nuw i8, ptr %596, i64 %598
  %605 = sub i64 %597, %598
  %606 = call i64 @FSE_writeNCount(ptr noundef %604, i64 noundef %605, ptr noundef nonnull %15, i32 noundef 52, i32 noundef %581) #19
  %607 = icmp ult i64 %606, -119
  br i1 %607, label %611, label %608

608:                                              ; preds = %603
  %609 = icmp eq i32 %8, 0
  br i1 %609, label %633, label %610

610:                                              ; preds = %608
  call fastcc void @ZDICT_analyzeEntropy.cold.12() #22
  br label %633

611:                                              ; preds = %603
  %612 = getelementptr inbounds nuw i8, ptr %604, i64 %606
  %613 = sub i64 %605, %606
  %614 = call i64 @FSE_writeNCount(ptr noundef %612, i64 noundef %613, ptr noundef nonnull %17, i32 noundef 35, i32 noundef %589) #19
  %615 = icmp ult i64 %614, -119
  br i1 %615, label %619, label %616

616:                                              ; preds = %611
  %617 = icmp eq i32 %8, 0
  br i1 %617, label %633, label %618

618:                                              ; preds = %616
  call fastcc void @ZDICT_analyzeEntropy.cold.13() #22
  br label %633

619:                                              ; preds = %611
  %620 = sub i64 %613, %614
  %621 = icmp ult i64 %620, 12
  br i1 %621, label %622, label %625

622:                                              ; preds = %619
  %623 = icmp eq i32 %8, 0
  br i1 %623, label %633, label %624

624:                                              ; preds = %622
  call fastcc void @ZDICT_analyzeEntropy.cold.14() #22
  br label %633

625:                                              ; preds = %619
  %626 = getelementptr inbounds nuw i8, ptr %612, i64 %614
  store i32 1, ptr %626, align 1, !tbaa !5
  %627 = getelementptr inbounds nuw i8, ptr %626, i64 4
  store i32 4, ptr %627, align 1, !tbaa !5
  %628 = getelementptr inbounds nuw i8, ptr %626, i64 8
  store i32 8, ptr %628, align 1, !tbaa !5
  %629 = add nuw i64 %590, 12
  %630 = add i64 %629, %598
  %631 = add i64 %630, %606
  %632 = add i64 %631, %614
  br label %633

633:                                              ; preds = %625, %624, %622, %618, %616, %610, %608, %602, %600, %594, %592, %587, %585, %572, %570, %556, %554, %447, %445, %187, %185, %.loopexit42
  %634 = phi ptr [ null, %.loopexit42 ], [ %168, %622 ], [ %168, %624 ], [ %168, %625 ], [ %168, %585 ], [ %168, %587 ], [ %168, %570 ], [ %168, %572 ], [ %168, %554 ], [ %168, %556 ], [ %168, %185 ], [ %168, %187 ], [ %168, %447 ], [ %168, %445 ], [ %168, %594 ], [ %168, %592 ], [ %168, %602 ], [ %168, %600 ], [ %168, %610 ], [ %168, %608 ], [ %168, %618 ], [ %168, %616 ]
  %635 = phi ptr [ null, %.loopexit42 ], [ %169, %622 ], [ %169, %624 ], [ %169, %625 ], [ %169, %585 ], [ %169, %587 ], [ %169, %570 ], [ %169, %572 ], [ %169, %554 ], [ %169, %556 ], [ %169, %185 ], [ %169, %187 ], [ %169, %447 ], [ %169, %445 ], [ %169, %594 ], [ %169, %592 ], [ %169, %602 ], [ %169, %600 ], [ %169, %610 ], [ %169, %608 ], [ %169, %618 ], [ %169, %616 ]
  %636 = phi ptr [ null, %.loopexit42 ], [ %170, %622 ], [ %170, %624 ], [ %170, %625 ], [ %170, %585 ], [ %170, %587 ], [ %170, %570 ], [ %170, %572 ], [ %170, %554 ], [ %170, %556 ], [ %170, %185 ], [ %170, %187 ], [ %170, %447 ], [ %170, %445 ], [ %170, %594 ], [ %170, %592 ], [ %170, %602 ], [ %170, %600 ], [ %170, %610 ], [ %170, %608 ], [ %170, %618 ], [ %170, %616 ]
  %637 = phi i64 [ -34, %.loopexit42 ], [ -70, %622 ], [ -70, %624 ], [ %632, %625 ], [ %583, %585 ], [ %583, %587 ], [ %568, %570 ], [ %568, %572 ], [ %552, %554 ], [ %552, %556 ], [ -64, %185 ], [ -64, %187 ], [ %443, %447 ], [ %443, %445 ], [ %590, %594 ], [ %590, %592 ], [ %598, %602 ], [ %598, %600 ], [ %606, %610 ], [ %606, %608 ], [ %614, %618 ], [ %614, %616 ]
  %638 = call i64 @ZSTD_freeCDict(ptr noundef %634) #19
  %639 = call i64 @ZSTD_freeCCtx(ptr noundef %635) #19
  call void @free(ptr noundef %636) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  ret i64 %637
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_trainFromBuffer_legacy(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, i32 noundef %4, ptr noundef readonly byval(%struct.ZDICT_legacy_params_t) align 8 captures(none) %5) local_unnamed_addr #1 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [64 x i32], align 16
  %10 = alloca [64 x i32], align 16
  %11 = alloca [64 x i32], align 16
  %12 = alloca %struct.ZDICT_params_t, align 8
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %1214, label %14

14:                                               ; preds = %6
  %15 = zext i32 %4 to i64
  %16 = icmp ult i32 %4, 4
  br i1 %16, label %.preheader496, label %17

17:                                               ; preds = %14
  %18 = and i64 %15, 4294967292
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i64 [ 0, %17 ], [ %29, %19 ]
  %21 = phi <2 x i64> [ zeroinitializer, %17 ], [ %27, %19 ]
  %22 = phi <2 x i64> [ zeroinitializer, %17 ], [ %28, %19 ]
  %23 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %20
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %25 = load <2 x i64>, ptr %23, align 8, !tbaa !13
  %26 = load <2 x i64>, ptr %24, align 8, !tbaa !13
  %27 = add <2 x i64> %25, %21
  %28 = add <2 x i64> %26, %22
  %29 = add nuw nsw i64 %20, 4
  %30 = icmp eq i64 %29, %18
  br i1 %30, label %31, label %19, !llvm.loop !52

31:                                               ; preds = %19
  %32 = add <2 x i64> %28, %27
  %33 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %32)
  %34 = icmp eq i64 %18, %15
  br i1 %34, label %.loopexit122, label %.preheader496

.preheader496:                                    ; preds = %31, %14
  %.ph497 = phi i64 [ %18, %31 ], [ 0, %14 ]
  %.ph498 = phi i64 [ %33, %31 ], [ 0, %14 ]
  br label %35

35:                                               ; preds = %.preheader496, %35
  %36 = phi i64 [ %41, %35 ], [ %.ph497, %.preheader496 ]
  %37 = phi i64 [ %40, %35 ], [ %.ph498, %.preheader496 ]
  %38 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %36
  %39 = load i64, ptr %38, align 8, !tbaa !13
  %40 = add i64 %39, %37
  %41 = add nuw nsw i64 %36, 1
  %42 = icmp eq i64 %41, %15
  br i1 %42, label %.loopexit122, label %35, !llvm.loop !53

.loopexit122:                                     ; preds = %35, %31
  %43 = phi i64 [ %33, %31 ], [ %40, %35 ]
  %44 = icmp ult i64 %43, 512
  br i1 %44, label %1214, label %45

45:                                               ; preds = %.loopexit122
  %46 = add i64 %43, 32
  %47 = tail call noalias ptr @malloc(i64 noundef %46) #20
  %48 = icmp eq ptr %47, null
  br i1 %48, label %1214, label %49

49:                                               ; preds = %45
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %47, ptr align 1 %2, i64 %43, i1 false)
  %50 = getelementptr inbounds nuw i8, ptr %47, i64 %43
  store <16 x i8> <i8 -30, i8 51, i8 -9, i8 105, i8 -35, i8 -31, i8 -119, i8 112, i8 5, i8 -68, i8 15, i8 79, i8 -73, i8 -13, i8 110, i8 -47>, ptr %50, align 1, !tbaa !31
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 16
  store <16 x i8> <i8 14, i8 -34, i8 95, i8 14, i8 -114, i8 -50, i8 31, i8 67, i8 -40, i8 -37, i8 31, i8 -102, i8 88, i8 -72, i8 -78, i8 0>, ptr %51, align 1, !tbaa !31
  %52 = load i32, ptr %5, align 8
  %53 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %54 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %55 = load i32, ptr %54, align 8
  %56 = load <2 x i32>, ptr %53, align 4
  %57 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %58 = load i32, ptr %57, align 4
  %59 = lshr i64 %1, 4
  %60 = trunc i64 %59 to i32
  %61 = tail call i32 @llvm.umax.i32(i32 %4, i32 %60)
  %62 = tail call i32 @llvm.umax.i32(i32 %61, i32 10000)
  %63 = zext i32 %62 to i64
  %64 = mul nuw nsw i64 %63, 12
  %65 = tail call noalias ptr @malloc(i64 noundef %64) #20
  br i1 %16, label %.preheader490, label %66

66:                                               ; preds = %49
  %67 = and i64 %15, 4294967292
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi i64 [ 0, %66 ], [ %78, %68 ]
  %70 = phi <2 x i64> [ zeroinitializer, %66 ], [ %76, %68 ]
  %71 = phi <2 x i64> [ zeroinitializer, %66 ], [ %77, %68 ]
  %72 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %69
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 16
  %74 = load <2 x i64>, ptr %72, align 8, !tbaa !13
  %75 = load <2 x i64>, ptr %73, align 8, !tbaa !13
  %76 = add <2 x i64> %74, %70
  %77 = add <2 x i64> %75, %71
  %78 = add nuw nsw i64 %69, 4
  %79 = icmp eq i64 %78, %67
  br i1 %79, label %80, label %68, !llvm.loop !54

80:                                               ; preds = %68
  %81 = add <2 x i64> %77, %76
  %82 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %81)
  %83 = icmp eq i64 %67, %15
  br i1 %83, label %.loopexit121, label %.preheader490

.preheader490:                                    ; preds = %80, %49
  %.ph491 = phi i64 [ %67, %80 ], [ 0, %49 ]
  %.ph492 = phi i64 [ %82, %80 ], [ 0, %49 ]
  br label %84

84:                                               ; preds = %.preheader490, %84
  %85 = phi i64 [ %90, %84 ], [ %.ph491, %.preheader490 ]
  %86 = phi i64 [ %89, %84 ], [ %.ph492, %.preheader490 ]
  %87 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %85
  %88 = load i64, ptr %87, align 8, !tbaa !13
  %89 = add i64 %88, %86
  %90 = add nuw nsw i64 %85, 1
  %91 = icmp eq i64 %90, %15
  br i1 %91, label %.loopexit121, label %84, !llvm.loop !55

.loopexit121:                                     ; preds = %84, %80
  %92 = phi i64 [ %82, %80 ], [ %89, %84 ]
  %93 = icmp eq i32 %52, 0
  %94 = select i1 %93, i32 9, i32 %52
  %95 = icmp ugt i32 %94, 30
  %96 = lshr i32 %4, %94
  %97 = select i1 %95, i32 4, i32 %96
  %98 = icmp eq ptr %65, null
  br i1 %98, label %1212, label %99

99:                                               ; preds = %.loopexit121
  %100 = icmp ult i64 %1, 256
  br i1 %100, label %.loopexit, label %101

101:                                              ; preds = %99
  %102 = icmp ult i64 %92, 512
  br i1 %102, label %.loopexit, label %103

103:                                              ; preds = %101
  store i32 1, ptr %65, align 4, !tbaa !9
  %104 = getelementptr inbounds nuw i8, ptr %65, i64 4
  store i32 0, ptr %104, align 4, !tbaa !11
  %105 = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i32 -1, ptr %105, align 4, !tbaa !12
  %106 = shl i64 %92, 2
  %107 = add i64 %106, 8
  %108 = tail call noalias ptr @malloc(i64 noundef %107) #20
  %109 = getelementptr inbounds nuw i8, ptr %108, i64 4
  %110 = tail call noalias ptr @malloc(i64 noundef %106) #20
  %111 = add i64 %92, 16
  %112 = tail call noalias ptr @malloc(i64 noundef %111) #20
  %113 = icmp ugt i32 %55, 1
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  tail call fastcc void @ZDICT_trainFromBuffer_legacy.cold.1() #22
  br label %115

115:                                              ; preds = %114, %103
  %116 = icmp ne ptr %108, null
  %117 = icmp ne ptr %110, null
  %118 = and i1 %116, %117
  %119 = icmp ne ptr %112, null
  %120 = and i1 %118, %119
  br i1 %120, label %121, label %1010

121:                                              ; preds = %115
  %122 = tail call i32 @llvm.umax.i32(i32 %97, i32 4)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %112, i8 0, i64 %111, i1 false)
  %123 = icmp ugt i64 %92, 2097152000
  %124 = icmp ugt i32 %55, 2
  %125 = and i1 %124, %123
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  tail call fastcc void @ZDICT_trainFromBuffer_legacy.cold.2() #22
  br label %.preheader487

127:                                              ; preds = %121
  br i1 %123, label %.preheader487, label %.loopexit120

.preheader487:                                    ; preds = %127, %126
  br label %128

128:                                              ; preds = %.preheader487, %128
  %129 = phi i64 [ %135, %128 ], [ %92, %.preheader487 ]
  %130 = phi i32 [ %131, %128 ], [ %4, %.preheader487 ]
  %131 = add i32 %130, -1
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %132
  %134 = load i64, ptr %133, align 8, !tbaa !13
  %135 = sub i64 %129, %134
  %136 = icmp ugt i64 %135, 2097152000
  br i1 %136, label %128, label %.loopexit120, !llvm.loop !56

.loopexit120:                                     ; preds = %128, %127
  %137 = phi i32 [ %4, %127 ], [ %131, %128 ]
  %138 = phi i64 [ %92, %127 ], [ %135, %128 ]
  br i1 %113, label %139, label %140

139:                                              ; preds = %.loopexit120
  tail call fastcc void @ZDICT_trainFromBuffer_legacy.cold.3(i64 %138, i32 %137) #22
  br label %140

140:                                              ; preds = %139, %.loopexit120
  %141 = trunc nuw nsw i64 %138 to i32
  %142 = tail call i32 @divsufsort(ptr noundef nonnull %47, ptr noundef nonnull %109, i32 noundef %141, i32 noundef 0) #19
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %1010

144:                                              ; preds = %140
  %145 = getelementptr inbounds nuw [4 x i8], ptr %109, i64 %138
  store i32 %141, ptr %145, align 4, !tbaa !5
  store i32 %141, ptr %108, align 4, !tbaa !5
  %146 = icmp eq i64 %138, 0
  br i1 %146, label %.loopexit118, label %147

147:                                              ; preds = %144
  %148 = and i64 %138, 3
  %149 = icmp samesign ult i64 %138, 4
  br i1 %149, label %.loopexit119, label %150

150:                                              ; preds = %147
  %151 = and i64 %138, 2147483644
  br label %152

152:                                              ; preds = %152, %150
  %153 = phi i64 [ 0, %150 ], [ %177, %152 ]
  %154 = trunc nuw nsw i64 %153 to i32
  %155 = getelementptr inbounds nuw [4 x i8], ptr %109, i64 %153
  %156 = load i32, ptr %155, align 4, !tbaa !5
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds nuw [4 x i8], ptr %110, i64 %157
  store i32 %154, ptr %158, align 4, !tbaa !5
  %159 = or disjoint i64 %153, 1
  %160 = trunc nuw nsw i64 %159 to i32
  %161 = getelementptr inbounds nuw [4 x i8], ptr %109, i64 %159
  %162 = load i32, ptr %161, align 4, !tbaa !5
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds nuw [4 x i8], ptr %110, i64 %163
  store i32 %160, ptr %164, align 4, !tbaa !5
  %165 = or disjoint i64 %153, 2
  %166 = trunc nuw nsw i64 %165 to i32
  %167 = getelementptr inbounds nuw [4 x i8], ptr %109, i64 %165
  %168 = load i32, ptr %167, align 4, !tbaa !5
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds nuw [4 x i8], ptr %110, i64 %169
  store i32 %166, ptr %170, align 4, !tbaa !5
  %171 = or disjoint i64 %153, 3
  %172 = trunc nuw nsw i64 %171 to i32
  %173 = getelementptr inbounds nuw [4 x i8], ptr %109, i64 %171
  %174 = load i32, ptr %173, align 4, !tbaa !5
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds nuw [4 x i8], ptr %110, i64 %175
  store i32 %172, ptr %176, align 4, !tbaa !5
  %177 = add nuw i64 %153, 4
  %178 = icmp eq i64 %177, %151
  br i1 %178, label %.loopexit119, label %152, !llvm.loop !57

.loopexit119:                                     ; preds = %152, %147
  %179 = phi i64 [ 0, %147 ], [ %151, %152 ]
  %180 = icmp eq i64 %148, 0
  br i1 %180, label %.loopexit118, label %.preheader117

.preheader117:                                    ; preds = %.loopexit119, %.preheader117
  %181 = phi i64 [ %188, %.preheader117 ], [ %179, %.loopexit119 ]
  %182 = phi i64 [ %189, %.preheader117 ], [ 0, %.loopexit119 ]
  %183 = trunc nuw nsw i64 %181 to i32
  %184 = getelementptr inbounds nuw [4 x i8], ptr %109, i64 %181
  %185 = load i32, ptr %184, align 4, !tbaa !5
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds nuw [4 x i8], ptr %110, i64 %186
  store i32 %183, ptr %187, align 4, !tbaa !5
  %188 = add nuw nsw i64 %181, 1
  %189 = add nuw nsw i64 %182, 1
  %190 = icmp eq i64 %189, %148
  br i1 %190, label %.loopexit118, label %.preheader117, !llvm.loop !58

.loopexit118:                                     ; preds = %.preheader117, %.loopexit119, %144
  br i1 %113, label %191, label %192

191:                                              ; preds = %.loopexit118
  tail call fastcc void @ZDICT_trainFromBuffer_legacy.cold.4(i1 %124, i32 %122) #22
  br label %192

192:                                              ; preds = %191, %.loopexit118
  br i1 %146, label %1010, label %193

193:                                              ; preds = %192
  %194 = icmp ugt i32 %55, 3
  %195 = getelementptr inbounds nuw i8, ptr %9, i64 252
  %196 = getelementptr inbounds nuw i8, ptr %10, i64 252
  %197 = getelementptr inbounds nuw i8, ptr %10, i64 248
  %198 = getelementptr inbounds nuw i8, ptr %10, i64 244
  %199 = getelementptr inbounds nuw i8, ptr %10, i64 240
  %200 = getelementptr inbounds nuw i8, ptr %10, i64 236
  %201 = getelementptr inbounds nuw i8, ptr %10, i64 232
  %202 = getelementptr inbounds nuw i8, ptr %10, i64 228
  %203 = getelementptr inbounds nuw i8, ptr %10, i64 224
  %204 = getelementptr inbounds nuw i8, ptr %10, i64 220
  %205 = getelementptr inbounds nuw i8, ptr %10, i64 216
  %206 = getelementptr inbounds nuw i8, ptr %10, i64 212
  %207 = getelementptr inbounds nuw i8, ptr %10, i64 208
  %208 = getelementptr inbounds nuw i8, ptr %10, i64 204
  %209 = getelementptr inbounds nuw i8, ptr %10, i64 200
  %210 = getelementptr inbounds nuw i8, ptr %10, i64 196
  %211 = getelementptr inbounds nuw i8, ptr %10, i64 192
  %212 = getelementptr inbounds nuw i8, ptr %10, i64 188
  %213 = getelementptr inbounds nuw i8, ptr %10, i64 184
  %214 = getelementptr inbounds nuw i8, ptr %10, i64 180
  %215 = getelementptr inbounds nuw i8, ptr %10, i64 176
  %216 = getelementptr inbounds nuw i8, ptr %10, i64 172
  %217 = getelementptr inbounds nuw i8, ptr %10, i64 168
  %218 = getelementptr inbounds nuw i8, ptr %10, i64 164
  %219 = getelementptr inbounds nuw i8, ptr %10, i64 160
  %220 = getelementptr inbounds nuw i8, ptr %10, i64 156
  %221 = getelementptr inbounds nuw i8, ptr %10, i64 152
  %222 = getelementptr inbounds nuw i8, ptr %10, i64 148
  %223 = getelementptr inbounds nuw i8, ptr %10, i64 144
  %224 = getelementptr inbounds nuw i8, ptr %10, i64 140
  %225 = getelementptr inbounds nuw i8, ptr %10, i64 136
  %226 = getelementptr inbounds nuw i8, ptr %10, i64 132
  %227 = getelementptr inbounds nuw i8, ptr %10, i64 128
  %228 = getelementptr inbounds nuw i8, ptr %10, i64 124
  %229 = getelementptr inbounds nuw i8, ptr %10, i64 120
  %230 = getelementptr inbounds nuw i8, ptr %10, i64 116
  %231 = getelementptr inbounds nuw i8, ptr %10, i64 112
  %232 = getelementptr inbounds nuw i8, ptr %10, i64 108
  %233 = getelementptr inbounds nuw i8, ptr %10, i64 104
  %234 = getelementptr inbounds nuw i8, ptr %10, i64 100
  %235 = getelementptr inbounds nuw i8, ptr %10, i64 96
  %236 = getelementptr inbounds nuw i8, ptr %10, i64 92
  %237 = getelementptr inbounds nuw i8, ptr %10, i64 88
  %238 = getelementptr inbounds nuw i8, ptr %10, i64 84
  %239 = getelementptr inbounds nuw i8, ptr %10, i64 80
  %240 = getelementptr inbounds nuw i8, ptr %10, i64 76
  %241 = getelementptr inbounds nuw i8, ptr %10, i64 72
  %242 = getelementptr inbounds nuw i8, ptr %10, i64 68
  %243 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %244 = getelementptr inbounds nuw i8, ptr %10, i64 60
  %245 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %246 = getelementptr inbounds nuw i8, ptr %10, i64 52
  %247 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %248 = getelementptr inbounds nuw i8, ptr %10, i64 44
  %249 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %250 = getelementptr inbounds nuw i8, ptr %10, i64 36
  %251 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %252 = getelementptr inbounds nuw i8, ptr %10, i64 28
  %253 = getelementptr inbounds nuw i8, ptr %11, i64 20
  %254 = add i32 %62, -1
  %255 = uitofp nneg i64 %138 to double
  %256 = getelementptr i8, ptr %108, i64 8
  %257 = getelementptr i8, ptr %108, i64 12
  %258 = getelementptr i8, ptr %108, i64 16
  br label %259

259:                                              ; preds = %1003, %193
  %260 = phi i64 [ 0, %193 ], [ %1006, %1003 ]
  %261 = phi i64 [ 0, %193 ], [ %1005, %1003 ]
  %262 = phi i32 [ 0, %193 ], [ %1004, %1003 ]
  %263 = getelementptr inbounds nuw i8, ptr %112, i64 %260
  %264 = load i8, ptr %263, align 1, !tbaa !31
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %259
  %267 = add i32 %262, 1
  br label %1003, !llvm.loop !59

268:                                              ; preds = %259
  %269 = getelementptr inbounds nuw [4 x i8], ptr %110, i64 %260
  %270 = load i32, ptr %269, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %11, i8 0, i64 256, i1 false)
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds nuw [4 x i8], ptr %109, i64 %271
  %273 = load i32, ptr %272, align 4, !tbaa !5
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds nuw i8, ptr %112, i64 %274
  store i8 1, ptr %275, align 1, !tbaa !31
  %276 = getelementptr inbounds nuw i8, ptr %47, i64 %274
  %277 = load i16, ptr %276, align 1, !tbaa !60
  %278 = getelementptr inbounds nuw i8, ptr %276, i64 2
  %279 = load i16, ptr %278, align 1, !tbaa !60
  %280 = icmp eq i16 %277, %279
  br i1 %280, label %294, label %281

281:                                              ; preds = %268
  %282 = getelementptr inbounds nuw i8, ptr %276, i64 1
  %283 = load i16, ptr %282, align 1, !tbaa !60
  %284 = getelementptr inbounds nuw i8, ptr %276, i64 3
  %285 = load i16, ptr %284, align 1, !tbaa !60
  %286 = icmp eq i16 %283, %285
  br i1 %286, label %294, label %287

287:                                              ; preds = %281
  %288 = getelementptr inbounds nuw i8, ptr %276, i64 4
  %289 = load i16, ptr %288, align 1, !tbaa !60
  %290 = icmp eq i16 %279, %289
  br i1 %290, label %294, label %291

291:                                              ; preds = %287
  %292 = load i64, ptr %276, align 1, !tbaa !13
  %293 = ptrtoint ptr %276 to i64
  br label %318

294:                                              ; preds = %287, %281, %268
  %295 = getelementptr inbounds nuw i8, ptr %276, i64 4
  %296 = load i16, ptr %295, align 1, !tbaa !60
  br label %297

297:                                              ; preds = %297, %294
  %298 = phi i32 [ 6, %294 ], [ %303, %297 ]
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds nuw i8, ptr %276, i64 %299
  %301 = load i16, ptr %300, align 1
  %302 = icmp eq i16 %301, %296
  %303 = add i32 %298, 2
  br i1 %302, label %297, label %304, !llvm.loop !61

304:                                              ; preds = %297
  %305 = icmp eq i32 %298, 0
  br i1 %305, label %.loopexit105, label %306

306:                                              ; preds = %304
  %307 = getelementptr inbounds nuw i8, ptr %276, i64 %299
  %308 = getelementptr i8, ptr %307, i64 -1
  %309 = load i8, ptr %308, align 1, !tbaa !31
  %310 = trunc i16 %301 to i8
  %311 = icmp eq i8 %309, %310
  %312 = zext i1 %311 to i32
  %313 = getelementptr i8, ptr %275, i64 1
  %314 = or disjoint i32 %298, %312
  %315 = tail call i32 @llvm.umax.i32(i32 %314, i32 2)
  %316 = add i32 %315, -1
  %317 = zext i32 %316 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %313, i8 1, i64 %317, i1 false), !tbaa !31
  br label %.loopexit105

318:                                              ; preds = %.loopexit103, %291
  %319 = phi i32 [ %270, %291 ], [ %320, %.loopexit103 ]
  %320 = add i32 %319, 1
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds nuw [4 x i8], ptr %109, i64 %321
  %323 = load i32, ptr %322, align 4, !tbaa !5
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds nuw i8, ptr %47, i64 %324
  %326 = load i64, ptr %325, align 1, !tbaa !13
  %327 = icmp eq i64 %326, %292
  br i1 %327, label %.preheader102, label %.loopexit103

.preheader102:                                    ; preds = %318, %.preheader102
  %328 = phi ptr [ %330, %.preheader102 ], [ %276, %318 ]
  %329 = phi ptr [ %331, %.preheader102 ], [ %325, %318 ]
  %330 = getelementptr inbounds nuw i8, ptr %328, i64 8
  %331 = getelementptr inbounds nuw i8, ptr %329, i64 8
  %332 = load i64, ptr %331, align 1, !tbaa !13
  %333 = load i64, ptr %330, align 1, !tbaa !13
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %.preheader102, label %.loopexit103

.loopexit103:                                     ; preds = %.preheader102, %318
  %335 = phi ptr [ %276, %318 ], [ %330, %.preheader102 ]
  %336 = phi i64 [ %326, %318 ], [ %332, %.preheader102 ]
  %337 = phi i64 [ %292, %318 ], [ %333, %.preheader102 ]
  %338 = xor i64 %337, %336
  %339 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %338, i1 true)
  %340 = lshr i64 %339, 3
  %341 = getelementptr inbounds nuw i8, ptr %335, i64 %340
  %342 = ptrtoint ptr %341 to i64
  %343 = sub i64 %342, %293
  %344 = icmp ugt i64 %343, 6
  br i1 %344, label %318, label %.preheader116, !llvm.loop !62

.preheader116:                                    ; preds = %.loopexit103, %.loopexit101
  %345 = phi i32 [ %372, %.loopexit101 ], [ 0, %.loopexit103 ]
  %346 = phi i32 [ %371, %.loopexit101 ], [ %270, %.loopexit103 ]
  %347 = zext i32 %346 to i64
  %348 = getelementptr [4 x i8], ptr %108, i64 %347
  %349 = load i32, ptr %348, align 4, !tbaa !5
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds nuw i8, ptr %47, i64 %350
  %352 = load i64, ptr %351, align 1, !tbaa !13
  %353 = icmp eq i64 %352, %292
  br i1 %353, label %.preheader100, label %.loopexit101

.preheader100:                                    ; preds = %.preheader116, %.preheader100
  %354 = phi ptr [ %356, %.preheader100 ], [ %276, %.preheader116 ]
  %355 = phi ptr [ %357, %.preheader100 ], [ %351, %.preheader116 ]
  %356 = getelementptr inbounds nuw i8, ptr %354, i64 8
  %357 = getelementptr inbounds nuw i8, ptr %355, i64 8
  %358 = load i64, ptr %357, align 1, !tbaa !13
  %359 = load i64, ptr %356, align 1, !tbaa !13
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %.preheader100, label %.loopexit101

.loopexit101:                                     ; preds = %.preheader100, %.preheader116
  %361 = phi ptr [ %276, %.preheader116 ], [ %356, %.preheader100 ]
  %362 = phi i64 [ %352, %.preheader116 ], [ %358, %.preheader100 ]
  %363 = phi i64 [ %292, %.preheader116 ], [ %359, %.preheader100 ]
  %364 = xor i64 %363, %362
  %365 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %364, i1 true)
  %366 = lshr i64 %365, 3
  %367 = getelementptr inbounds nuw i8, ptr %361, i64 %366
  %368 = ptrtoint ptr %367 to i64
  %369 = sub i64 %368, %293
  %370 = icmp ugt i64 %369, 6
  %371 = add i32 %346, -1
  %372 = add i32 %345, 1
  br i1 %370, label %.preheader116, label %373, !llvm.loop !63

373:                                              ; preds = %.loopexit101
  %374 = sub i32 %320, %346
  %375 = icmp ult i32 %374, %122
  br i1 %375, label %376, label %414

376:                                              ; preds = %373
  %377 = icmp ult i32 %346, %320
  br i1 %377, label %378, label %.loopexit105

378:                                              ; preds = %376
  %379 = sub i32 %319, %270
  %380 = add i32 %379, %345
  %381 = and i32 %374, 3
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %.loopexit107, label %.preheader106

.preheader106:                                    ; preds = %378, %.preheader106
  %383 = phi i64 [ %389, %.preheader106 ], [ %347, %378 ]
  %384 = phi i32 [ %390, %.preheader106 ], [ 0, %378 ]
  %385 = getelementptr inbounds nuw [4 x i8], ptr %109, i64 %383
  %386 = load i32, ptr %385, align 4, !tbaa !5
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds nuw i8, ptr %112, i64 %387
  store i8 1, ptr %388, align 1, !tbaa !31
  %389 = add nuw nsw i64 %383, 1
  %390 = add nuw nsw i32 %384, 1
  %391 = icmp eq i32 %390, %381
  br i1 %391, label %.loopexit107, label %.preheader106, !llvm.loop !64

.loopexit107:                                     ; preds = %.preheader106, %378
  %392 = phi i64 [ %347, %378 ], [ %389, %.preheader106 ]
  %393 = icmp ult i32 %380, 3
  br i1 %393, label %.loopexit105, label %.preheader104

.preheader104:                                    ; preds = %.loopexit107, %.preheader104
  %394 = phi i64 [ %411, %.preheader104 ], [ %392, %.loopexit107 ]
  %395 = getelementptr inbounds nuw [4 x i8], ptr %109, i64 %394
  %396 = load i32, ptr %395, align 4, !tbaa !5
  %397 = zext i32 %396 to i64
  %398 = getelementptr inbounds nuw i8, ptr %112, i64 %397
  store i8 1, ptr %398, align 1, !tbaa !31
  %399 = getelementptr [4 x i8], ptr %256, i64 %394
  %400 = load i32, ptr %399, align 4, !tbaa !5
  %401 = zext i32 %400 to i64
  %402 = getelementptr inbounds nuw i8, ptr %112, i64 %401
  store i8 1, ptr %402, align 1, !tbaa !31
  %403 = getelementptr [4 x i8], ptr %257, i64 %394
  %404 = load i32, ptr %403, align 4, !tbaa !5
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds nuw i8, ptr %112, i64 %405
  store i8 1, ptr %406, align 1, !tbaa !31
  %407 = getelementptr [4 x i8], ptr %258, i64 %394
  %408 = load i32, ptr %407, align 4, !tbaa !5
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds nuw i8, ptr %112, i64 %409
  store i8 1, ptr %410, align 1, !tbaa !31
  %411 = add nuw nsw i64 %394, 4
  %412 = trunc i64 %411 to i32
  %413 = icmp eq i32 %320, %412
  br i1 %413, label %.loopexit105, label %.preheader104, !llvm.loop !65

414:                                              ; preds = %373
  br i1 %194, label %415, label %.preheader448

415:                                              ; preds = %414
  tail call fastcc void @ZDICT_trainFromBuffer_legacy.cold.5(i32 %374, i32 %273) #22
  br label %.preheader448

.preheader448:                                    ; preds = %415, %414
  br label %416

416:                                              ; preds = %.preheader448, %518
  %417 = phi i32 [ %522, %518 ], [ 7, %.preheader448 ]
  %418 = phi i32 [ %520, %518 ], [ %346, %.preheader448 ]
  %419 = phi i32 [ %521, %518 ], [ %320, %.preheader448 ]
  %420 = icmp ult i32 %418, %419
  br i1 %420, label %421, label %511

421:                                              ; preds = %416
  %422 = zext i32 %418 to i64
  %423 = zext i32 %419 to i64
  %424 = sub nsw i64 %423, %422
  %425 = and i64 %424, 1
  %426 = add nsw i64 %423, -1
  %427 = icmp eq i64 %426, %422
  br i1 %427, label %.loopexit99, label %428

428:                                              ; preds = %421
  %429 = and i64 %424, -2
  br label %430

430:                                              ; preds = %470, %428
  %431 = phi i64 [ %422, %428 ], [ %477, %470 ]
  %432 = phi i32 [ %418, %428 ], [ %475, %470 ]
  %433 = phi i32 [ 0, %428 ], [ %474, %470 ]
  %434 = phi i32 [ %418, %428 ], [ %473, %470 ]
  %435 = phi i32 [ 0, %428 ], [ %476, %470 ]
  %436 = phi i8 [ 0, %428 ], [ %471, %470 ]
  %437 = phi i64 [ 0, %428 ], [ %478, %470 ]
  %438 = getelementptr inbounds nuw [4 x i8], ptr %109, i64 %431
  %439 = load i32, ptr %438, align 4, !tbaa !5
  %440 = add i32 %439, %417
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds nuw i8, ptr %47, i64 %441
  %443 = load i8, ptr %442, align 1, !tbaa !31
  %444 = icmp eq i8 %443, %436
  br i1 %444, label %450, label %445

445:                                              ; preds = %430
  %446 = icmp ugt i32 %435, %433
  %447 = tail call i32 @llvm.umax.i32(i32 %435, i32 %433)
  %448 = select i1 %446, i32 %434, i32 %432
  %449 = trunc nuw i64 %431 to i32
  br label %450

450:                                              ; preds = %445, %430
  %451 = phi i8 [ %443, %445 ], [ %436, %430 ]
  %452 = phi i32 [ 0, %445 ], [ %435, %430 ]
  %453 = phi i32 [ %449, %445 ], [ %434, %430 ]
  %454 = phi i32 [ %447, %445 ], [ %433, %430 ]
  %455 = phi i32 [ %448, %445 ], [ %432, %430 ]
  %456 = add i32 %452, 1
  %457 = add nuw nsw i64 %431, 1
  %458 = getelementptr inbounds nuw [4 x i8], ptr %109, i64 %457
  %459 = load i32, ptr %458, align 4, !tbaa !5
  %460 = add i32 %459, %417
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds nuw i8, ptr %47, i64 %461
  %463 = load i8, ptr %462, align 1, !tbaa !31
  %464 = icmp eq i8 %463, %451
  br i1 %464, label %470, label %465

465:                                              ; preds = %450
  %466 = icmp ugt i32 %456, %454
  %467 = tail call i32 @llvm.umax.i32(i32 %456, i32 %454)
  %468 = select i1 %466, i32 %453, i32 %455
  %469 = trunc nuw i64 %457 to i32
  br label %470

470:                                              ; preds = %465, %450
  %471 = phi i8 [ %463, %465 ], [ %451, %450 ]
  %472 = phi i32 [ 0, %465 ], [ %456, %450 ]
  %473 = phi i32 [ %469, %465 ], [ %453, %450 ]
  %474 = phi i32 [ %467, %465 ], [ %454, %450 ]
  %475 = phi i32 [ %468, %465 ], [ %455, %450 ]
  %476 = add i32 %472, 1
  %477 = add nuw nsw i64 %431, 2
  %478 = add i64 %437, 2
  %479 = icmp eq i64 %478, %429
  br i1 %479, label %.loopexit99.loopexit, label %430, !llvm.loop !66

.loopexit99.loopexit:                             ; preds = %470
  %480 = add nsw i64 %429, %422
  br label %.loopexit99

.loopexit99:                                      ; preds = %.loopexit99.loopexit, %421
  %481 = phi i32 [ poison, %421 ], [ %473, %.loopexit99.loopexit ]
  %482 = phi i32 [ poison, %421 ], [ %474, %.loopexit99.loopexit ]
  %483 = phi i32 [ poison, %421 ], [ %475, %.loopexit99.loopexit ]
  %484 = phi i32 [ poison, %421 ], [ %476, %.loopexit99.loopexit ]
  %485 = phi i64 [ %422, %421 ], [ %480, %.loopexit99.loopexit ]
  %486 = phi i32 [ %418, %421 ], [ %475, %.loopexit99.loopexit ]
  %487 = phi i32 [ 0, %421 ], [ %474, %.loopexit99.loopexit ]
  %488 = phi i32 [ %418, %421 ], [ %473, %.loopexit99.loopexit ]
  %489 = phi i32 [ 0, %421 ], [ %476, %.loopexit99.loopexit ]
  %490 = phi i8 [ 0, %421 ], [ %471, %.loopexit99.loopexit ]
  %491 = icmp eq i64 %425, 0
  br i1 %491, label %511, label %492

492:                                              ; preds = %.loopexit99
  %493 = getelementptr inbounds nuw [4 x i8], ptr %109, i64 %485
  %494 = load i32, ptr %493, align 4, !tbaa !5
  %495 = add i32 %494, %417
  %496 = zext i32 %495 to i64
  %497 = getelementptr inbounds nuw i8, ptr %47, i64 %496
  %498 = load i8, ptr %497, align 1, !tbaa !31
  %499 = icmp eq i8 %498, %490
  br i1 %499, label %505, label %500

500:                                              ; preds = %492
  %501 = icmp ugt i32 %489, %487
  %502 = tail call i32 @llvm.umax.i32(i32 %489, i32 %487)
  %503 = select i1 %501, i32 %488, i32 %486
  %504 = trunc nuw i64 %485 to i32
  br label %505

505:                                              ; preds = %500, %492
  %506 = phi i32 [ 0, %500 ], [ %489, %492 ]
  %507 = phi i32 [ %504, %500 ], [ %488, %492 ]
  %508 = phi i32 [ %502, %500 ], [ %487, %492 ]
  %509 = phi i32 [ %503, %500 ], [ %486, %492 ]
  %510 = add i32 %506, 1
  br label %511

511:                                              ; preds = %505, %.loopexit99, %416
  %512 = phi i32 [ 0, %416 ], [ %484, %.loopexit99 ], [ %510, %505 ]
  %513 = phi i32 [ %418, %416 ], [ %481, %.loopexit99 ], [ %507, %505 ]
  %514 = phi i32 [ 0, %416 ], [ %482, %.loopexit99 ], [ %508, %505 ]
  %515 = phi i32 [ %418, %416 ], [ %483, %.loopexit99 ], [ %509, %505 ]
  %516 = tail call i32 @llvm.umax.i32(i32 %512, i32 %514)
  %517 = icmp ult i32 %516, %122
  br i1 %517, label %523, label %518

518:                                              ; preds = %511
  %519 = icmp ugt i32 %512, %514
  %520 = select i1 %519, i32 %513, i32 %515
  %521 = add i32 %520, %516
  %522 = add i32 %417, 1
  br label %416

523:                                              ; preds = %511
  %524 = zext i32 %418 to i64
  %525 = getelementptr inbounds nuw [4 x i8], ptr %109, i64 %524
  %526 = load i32, ptr %525, align 4, !tbaa !5
  %527 = zext i32 %526 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %9, i8 0, i64 256, i1 false)
  %528 = getelementptr inbounds nuw i8, ptr %47, i64 %527
  %529 = load i64, ptr %528, align 1, !tbaa !13
  %530 = ptrtoint ptr %528 to i64
  br label %531

531:                                              ; preds = %.loopexit98, %523
  %532 = phi i32 [ %533, %.loopexit98 ], [ %418, %523 ]
  %533 = add i32 %532, 1
  %534 = zext i32 %533 to i64
  %535 = getelementptr inbounds nuw [4 x i8], ptr %109, i64 %534
  %536 = load i32, ptr %535, align 4, !tbaa !5
  %537 = zext i32 %536 to i64
  %538 = getelementptr inbounds nuw i8, ptr %47, i64 %537
  %539 = load i64, ptr %538, align 1, !tbaa !13
  %540 = icmp eq i64 %539, %529
  br i1 %540, label %.preheader97, label %.loopexit98

.preheader97:                                     ; preds = %531, %.preheader97
  %541 = phi ptr [ %543, %.preheader97 ], [ %528, %531 ]
  %542 = phi ptr [ %544, %.preheader97 ], [ %538, %531 ]
  %543 = getelementptr inbounds nuw i8, ptr %541, i64 8
  %544 = getelementptr inbounds nuw i8, ptr %542, i64 8
  %545 = load i64, ptr %544, align 1, !tbaa !13
  %546 = load i64, ptr %543, align 1, !tbaa !13
  %547 = icmp eq i64 %545, %546
  br i1 %547, label %.preheader97, label %.loopexit98

.loopexit98:                                      ; preds = %.preheader97, %531
  %548 = phi ptr [ %528, %531 ], [ %543, %.preheader97 ]
  %549 = phi i64 [ %539, %531 ], [ %545, %.preheader97 ]
  %550 = phi i64 [ %529, %531 ], [ %546, %.preheader97 ]
  %551 = xor i64 %550, %549
  %552 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %551, i1 true)
  %553 = lshr i64 %552, 3
  %554 = getelementptr inbounds nuw i8, ptr %548, i64 %553
  %555 = ptrtoint ptr %554 to i64
  %556 = sub i64 %555, %530
  %557 = tail call i64 @llvm.umin.i64(i64 %556, i64 63)
  %558 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %557
  %559 = load i32, ptr %558, align 4, !tbaa !5
  %560 = add i32 %559, 1
  store i32 %560, ptr %558, align 4, !tbaa !5
  %561 = icmp ugt i64 %556, 6
  br i1 %561, label %531, label %562, !llvm.loop !67

562:                                              ; preds = %.loopexit98
  %563 = icmp eq i32 %418, 0
  br i1 %563, label %.loopexit115, label %.preheader114

.preheader114:                                    ; preds = %562, %.loopexit96
  %564 = phi i32 [ %594, %.loopexit96 ], [ %418, %562 ]
  %565 = add i32 %564, -1
  %566 = zext i32 %565 to i64
  %567 = getelementptr inbounds nuw [4 x i8], ptr %109, i64 %566
  %568 = load i32, ptr %567, align 4, !tbaa !5
  %569 = zext i32 %568 to i64
  %570 = getelementptr inbounds nuw i8, ptr %47, i64 %569
  %571 = load i64, ptr %570, align 1, !tbaa !13
  %572 = icmp eq i64 %571, %529
  br i1 %572, label %.preheader95, label %.loopexit96

.preheader95:                                     ; preds = %.preheader114, %.preheader95
  %573 = phi ptr [ %575, %.preheader95 ], [ %528, %.preheader114 ]
  %574 = phi ptr [ %576, %.preheader95 ], [ %570, %.preheader114 ]
  %575 = getelementptr inbounds nuw i8, ptr %573, i64 8
  %576 = getelementptr inbounds nuw i8, ptr %574, i64 8
  %577 = load i64, ptr %576, align 1, !tbaa !13
  %578 = load i64, ptr %575, align 1, !tbaa !13
  %579 = icmp eq i64 %577, %578
  br i1 %579, label %.preheader95, label %.loopexit96

.loopexit96:                                      ; preds = %.preheader95, %.preheader114
  %580 = phi ptr [ %528, %.preheader114 ], [ %575, %.preheader95 ]
  %581 = phi i64 [ %571, %.preheader114 ], [ %577, %.preheader95 ]
  %582 = phi i64 [ %529, %.preheader114 ], [ %578, %.preheader95 ]
  %583 = xor i64 %582, %581
  %584 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %583, i1 true)
  %585 = lshr i64 %584, 3
  %586 = getelementptr inbounds nuw i8, ptr %580, i64 %585
  %587 = ptrtoint ptr %586 to i64
  %588 = sub i64 %587, %530
  %589 = tail call i64 @llvm.umin.i64(i64 %588, i64 63)
  %590 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %589
  %591 = load i32, ptr %590, align 4, !tbaa !5
  %592 = add i32 %591, 1
  store i32 %592, ptr %590, align 4, !tbaa !5
  %593 = icmp ugt i64 %588, 6
  %594 = select i1 %593, i32 %565, i32 %564
  %595 = icmp ne i32 %594, 0
  %596 = and i1 %593, %595
  br i1 %596, label %.preheader114, label %.loopexit115, !llvm.loop !68

.loopexit115:                                     ; preds = %.loopexit96, %562
  %597 = phi i32 [ 0, %562 ], [ %594, %.loopexit96 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %10, i8 0, i64 256, i1 false)
  %598 = load i32, ptr %195, align 4, !tbaa !5
  store i32 %598, ptr %196, align 4, !tbaa !5
  br label %599

599:                                              ; preds = %599, %.loopexit115
  %600 = phi i32 [ %598, %.loopexit115 ], [ %614, %599 ]
  %601 = phi i64 [ 62, %.loopexit115 ], [ %616, %599 ]
  %602 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %601
  %603 = load i32, ptr %602, align 4, !tbaa !5
  %604 = add i32 %603, %600
  %605 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %601
  store i32 %604, ptr %605, align 4, !tbaa !5
  %606 = add nsw i64 %601, -1
  %607 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %606
  %608 = load i32, ptr %607, align 4, !tbaa !5
  %609 = add i32 %608, %604
  %610 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %606
  store i32 %609, ptr %610, align 4, !tbaa !5
  %611 = add nsw i64 %601, -2
  %612 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %611
  %613 = load i32, ptr %612, align 4, !tbaa !5
  %614 = add i32 %613, %609
  %615 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %611
  store i32 %614, ptr %615, align 4, !tbaa !5
  %616 = add nsw i64 %601, -3
  %617 = icmp eq i64 %611, 0
  br i1 %617, label %618, label %599, !llvm.loop !69

618:                                              ; preds = %599
  %619 = load i32, ptr %196, align 4, !tbaa !5
  %620 = icmp ult i32 %619, %122
  br i1 %620, label %621, label %790

621:                                              ; preds = %618
  %622 = load i32, ptr %197, align 8, !tbaa !5
  %623 = icmp ult i32 %622, %122
  br i1 %623, label %624, label %790

624:                                              ; preds = %621
  %625 = load i32, ptr %198, align 4, !tbaa !5
  %626 = icmp ult i32 %625, %122
  br i1 %626, label %627, label %790

627:                                              ; preds = %624
  %628 = load i32, ptr %199, align 16, !tbaa !5
  %629 = icmp ult i32 %628, %122
  br i1 %629, label %630, label %790

630:                                              ; preds = %627
  %631 = load i32, ptr %200, align 4, !tbaa !5
  %632 = icmp ult i32 %631, %122
  br i1 %632, label %633, label %790

633:                                              ; preds = %630
  %634 = load i32, ptr %201, align 8, !tbaa !5
  %635 = icmp ult i32 %634, %122
  br i1 %635, label %636, label %790

636:                                              ; preds = %633
  %637 = load i32, ptr %202, align 4, !tbaa !5
  %638 = icmp ult i32 %637, %122
  br i1 %638, label %639, label %790

639:                                              ; preds = %636
  %640 = load i32, ptr %203, align 16, !tbaa !5
  %641 = icmp ult i32 %640, %122
  br i1 %641, label %642, label %790

642:                                              ; preds = %639
  %643 = load i32, ptr %204, align 4, !tbaa !5
  %644 = icmp ult i32 %643, %122
  br i1 %644, label %645, label %790

645:                                              ; preds = %642
  %646 = load i32, ptr %205, align 8, !tbaa !5
  %647 = icmp ult i32 %646, %122
  br i1 %647, label %648, label %790

648:                                              ; preds = %645
  %649 = load i32, ptr %206, align 4, !tbaa !5
  %650 = icmp ult i32 %649, %122
  br i1 %650, label %651, label %790

651:                                              ; preds = %648
  %652 = load i32, ptr %207, align 16, !tbaa !5
  %653 = icmp ult i32 %652, %122
  br i1 %653, label %654, label %790

654:                                              ; preds = %651
  %655 = load i32, ptr %208, align 4, !tbaa !5
  %656 = icmp ult i32 %655, %122
  br i1 %656, label %657, label %790

657:                                              ; preds = %654
  %658 = load i32, ptr %209, align 8, !tbaa !5
  %659 = icmp ult i32 %658, %122
  br i1 %659, label %660, label %790

660:                                              ; preds = %657
  %661 = load i32, ptr %210, align 4, !tbaa !5
  %662 = icmp ult i32 %661, %122
  br i1 %662, label %663, label %790

663:                                              ; preds = %660
  %664 = load i32, ptr %211, align 16, !tbaa !5
  %665 = icmp ult i32 %664, %122
  br i1 %665, label %666, label %790

666:                                              ; preds = %663
  %667 = load i32, ptr %212, align 4, !tbaa !5
  %668 = icmp ult i32 %667, %122
  br i1 %668, label %669, label %790

669:                                              ; preds = %666
  %670 = load i32, ptr %213, align 8, !tbaa !5
  %671 = icmp ult i32 %670, %122
  br i1 %671, label %672, label %790

672:                                              ; preds = %669
  %673 = load i32, ptr %214, align 4, !tbaa !5
  %674 = icmp ult i32 %673, %122
  br i1 %674, label %675, label %790

675:                                              ; preds = %672
  %676 = load i32, ptr %215, align 16, !tbaa !5
  %677 = icmp ult i32 %676, %122
  br i1 %677, label %678, label %790

678:                                              ; preds = %675
  %679 = load i32, ptr %216, align 4, !tbaa !5
  %680 = icmp ult i32 %679, %122
  br i1 %680, label %681, label %790

681:                                              ; preds = %678
  %682 = load i32, ptr %217, align 8, !tbaa !5
  %683 = icmp ult i32 %682, %122
  br i1 %683, label %684, label %790

684:                                              ; preds = %681
  %685 = load i32, ptr %218, align 4, !tbaa !5
  %686 = icmp ult i32 %685, %122
  br i1 %686, label %687, label %790

687:                                              ; preds = %684
  %688 = load i32, ptr %219, align 16, !tbaa !5
  %689 = icmp ult i32 %688, %122
  br i1 %689, label %690, label %790

690:                                              ; preds = %687
  %691 = load i32, ptr %220, align 4, !tbaa !5
  %692 = icmp ult i32 %691, %122
  br i1 %692, label %693, label %790

693:                                              ; preds = %690
  %694 = load i32, ptr %221, align 8, !tbaa !5
  %695 = icmp ult i32 %694, %122
  br i1 %695, label %696, label %790

696:                                              ; preds = %693
  %697 = load i32, ptr %222, align 4, !tbaa !5
  %698 = icmp ult i32 %697, %122
  br i1 %698, label %699, label %790

699:                                              ; preds = %696
  %700 = load i32, ptr %223, align 16, !tbaa !5
  %701 = icmp ult i32 %700, %122
  br i1 %701, label %702, label %790

702:                                              ; preds = %699
  %703 = load i32, ptr %224, align 4, !tbaa !5
  %704 = icmp ult i32 %703, %122
  br i1 %704, label %705, label %790

705:                                              ; preds = %702
  %706 = load i32, ptr %225, align 8, !tbaa !5
  %707 = icmp ult i32 %706, %122
  br i1 %707, label %708, label %790

708:                                              ; preds = %705
  %709 = load i32, ptr %226, align 4, !tbaa !5
  %710 = icmp ult i32 %709, %122
  br i1 %710, label %711, label %790

711:                                              ; preds = %708
  %712 = load i32, ptr %227, align 16, !tbaa !5
  %713 = icmp ult i32 %712, %122
  br i1 %713, label %714, label %790

714:                                              ; preds = %711
  %715 = load i32, ptr %228, align 4, !tbaa !5
  %716 = icmp ult i32 %715, %122
  br i1 %716, label %717, label %790

717:                                              ; preds = %714
  %718 = load i32, ptr %229, align 8, !tbaa !5
  %719 = icmp ult i32 %718, %122
  br i1 %719, label %720, label %790

720:                                              ; preds = %717
  %721 = load i32, ptr %230, align 4, !tbaa !5
  %722 = icmp ult i32 %721, %122
  br i1 %722, label %723, label %790

723:                                              ; preds = %720
  %724 = load i32, ptr %231, align 16, !tbaa !5
  %725 = icmp ult i32 %724, %122
  br i1 %725, label %726, label %790

726:                                              ; preds = %723
  %727 = load i32, ptr %232, align 4, !tbaa !5
  %728 = icmp ult i32 %727, %122
  br i1 %728, label %729, label %790

729:                                              ; preds = %726
  %730 = load i32, ptr %233, align 8, !tbaa !5
  %731 = icmp ult i32 %730, %122
  br i1 %731, label %732, label %790

732:                                              ; preds = %729
  %733 = load i32, ptr %234, align 4, !tbaa !5
  %734 = icmp ult i32 %733, %122
  br i1 %734, label %735, label %790

735:                                              ; preds = %732
  %736 = load i32, ptr %235, align 16, !tbaa !5
  %737 = icmp ult i32 %736, %122
  br i1 %737, label %738, label %790

738:                                              ; preds = %735
  %739 = load i32, ptr %236, align 4, !tbaa !5
  %740 = icmp ult i32 %739, %122
  br i1 %740, label %741, label %790

741:                                              ; preds = %738
  %742 = load i32, ptr %237, align 8, !tbaa !5
  %743 = icmp ult i32 %742, %122
  br i1 %743, label %744, label %790

744:                                              ; preds = %741
  %745 = load i32, ptr %238, align 4, !tbaa !5
  %746 = icmp ult i32 %745, %122
  br i1 %746, label %747, label %790

747:                                              ; preds = %744
  %748 = load i32, ptr %239, align 16, !tbaa !5
  %749 = icmp ult i32 %748, %122
  br i1 %749, label %750, label %790

750:                                              ; preds = %747
  %751 = load i32, ptr %240, align 4, !tbaa !5
  %752 = icmp ult i32 %751, %122
  br i1 %752, label %753, label %790

753:                                              ; preds = %750
  %754 = load i32, ptr %241, align 8, !tbaa !5
  %755 = icmp ult i32 %754, %122
  br i1 %755, label %756, label %790

756:                                              ; preds = %753
  %757 = load i32, ptr %242, align 4, !tbaa !5
  %758 = icmp ult i32 %757, %122
  br i1 %758, label %759, label %790

759:                                              ; preds = %756
  %760 = load i32, ptr %243, align 16, !tbaa !5
  %761 = icmp ult i32 %760, %122
  br i1 %761, label %762, label %790

762:                                              ; preds = %759
  %763 = load i32, ptr %244, align 4, !tbaa !5
  %764 = icmp ult i32 %763, %122
  br i1 %764, label %765, label %790

765:                                              ; preds = %762
  %766 = load i32, ptr %245, align 8, !tbaa !5
  %767 = icmp ult i32 %766, %122
  br i1 %767, label %768, label %790

768:                                              ; preds = %765
  %769 = load i32, ptr %246, align 4, !tbaa !5
  %770 = icmp ult i32 %769, %122
  br i1 %770, label %771, label %790

771:                                              ; preds = %768
  %772 = load i32, ptr %247, align 16, !tbaa !5
  %773 = icmp ult i32 %772, %122
  br i1 %773, label %774, label %790

774:                                              ; preds = %771
  %775 = load i32, ptr %248, align 4, !tbaa !5
  %776 = icmp ult i32 %775, %122
  br i1 %776, label %777, label %790

777:                                              ; preds = %774
  %778 = load i32, ptr %249, align 8, !tbaa !5
  %779 = icmp ult i32 %778, %122
  br i1 %779, label %780, label %790

780:                                              ; preds = %777
  %781 = load i32, ptr %250, align 4, !tbaa !5
  %782 = icmp ult i32 %781, %122
  br i1 %782, label %783, label %790

783:                                              ; preds = %780
  %784 = load i32, ptr %251, align 16, !tbaa !5
  %785 = icmp ult i32 %784, %122
  br i1 %785, label %786, label %790

786:                                              ; preds = %783
  %787 = load i32, ptr %252, align 4, !tbaa !5
  %788 = icmp ult i32 %787, %122
  %789 = select i1 %788, i32 6, i32 7
  br label %790

790:                                              ; preds = %786, %783, %780, %777, %774, %771, %768, %765, %762, %759, %756, %753, %750, %747, %744, %741, %738, %735, %732, %729, %726, %723, %720, %717, %714, %711, %708, %705, %702, %699, %696, %693, %690, %687, %684, %681, %678, %675, %672, %669, %666, %663, %660, %657, %654, %651, %648, %645, %642, %639, %636, %633, %630, %627, %624, %621, %618
  %791 = phi i32 [ 63, %618 ], [ 62, %621 ], [ 61, %624 ], [ 60, %627 ], [ 59, %630 ], [ 58, %633 ], [ 57, %636 ], [ 56, %639 ], [ 55, %642 ], [ 54, %645 ], [ 53, %648 ], [ 52, %651 ], [ 51, %654 ], [ 50, %657 ], [ 49, %660 ], [ 48, %663 ], [ 47, %666 ], [ 46, %669 ], [ 45, %672 ], [ 44, %675 ], [ 43, %678 ], [ 42, %681 ], [ 41, %684 ], [ 40, %687 ], [ 39, %690 ], [ 38, %693 ], [ 37, %696 ], [ 36, %699 ], [ 35, %702 ], [ 34, %705 ], [ 33, %708 ], [ 32, %711 ], [ 31, %714 ], [ 30, %717 ], [ 29, %720 ], [ 28, %723 ], [ 27, %726 ], [ 26, %729 ], [ 25, %732 ], [ 24, %735 ], [ 23, %738 ], [ 22, %741 ], [ 21, %744 ], [ 20, %747 ], [ 19, %750 ], [ 18, %753 ], [ 17, %756 ], [ 16, %759 ], [ 15, %762 ], [ 14, %765 ], [ 13, %768 ], [ 12, %771 ], [ 11, %774 ], [ 10, %777 ], [ 9, %780 ], [ 8, %783 ], [ %789, %786 ]
  %792 = zext nneg i32 %791 to i64
  %793 = getelementptr i8, ptr %528, i64 %792
  %794 = getelementptr i8, ptr %793, i64 -1
  %795 = load i8, ptr %794, align 1, !tbaa !31
  %796 = getelementptr i8, ptr %528, i64 -2
  br label %797

797:                                              ; preds = %797, %790
  %798 = phi i32 [ %791, %790 ], [ %803, %797 ]
  %799 = zext i32 %798 to i64
  %800 = getelementptr i8, ptr %796, i64 %799
  %801 = load i8, ptr %800, align 1, !tbaa !31
  %802 = icmp eq i8 %801, %795
  %803 = add i32 %798, -1
  br i1 %802, label %797, label %804, !llvm.loop !70

804:                                              ; preds = %797
  %805 = icmp ult i32 %798, 7
  br i1 %805, label %.loopexit105, label %806

806:                                              ; preds = %804
  store i32 0, ptr %253, align 4, !tbaa !5
  %807 = and i64 %799, 1
  %808 = icmp eq i32 %798, 7
  br i1 %808, label %.loopexit113, label %809

809:                                              ; preds = %806
  %810 = and i64 %799, 4294967294
  %811 = add nsw i64 %810, -8
  br label %812

812:                                              ; preds = %812, %809
  %813 = phi i32 [ 0, %809 ], [ %829, %812 ]
  %814 = phi i64 [ 7, %809 ], [ %831, %812 ]
  %815 = phi i64 [ 0, %809 ], [ %832, %812 ]
  %816 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %814
  %817 = load i32, ptr %816, align 4, !tbaa !5
  %818 = trunc nuw i64 %814 to i32
  %819 = add i32 %818, -3
  %820 = mul i32 %819, %817
  %821 = add i32 %820, %813
  %822 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %814
  store i32 %821, ptr %822, align 4, !tbaa !5
  %823 = add nuw nsw i64 %814, 1
  %824 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %823
  %825 = load i32, ptr %824, align 4, !tbaa !5
  %826 = trunc nuw i64 %823 to i32
  %827 = add i32 %826, -3
  %828 = mul i32 %825, %827
  %829 = add i32 %828, %821
  %830 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %823
  store i32 %829, ptr %830, align 4, !tbaa !5
  %831 = add nuw nsw i64 %814, 2
  %832 = add i64 %815, 2
  %833 = icmp eq i64 %815, %811
  br i1 %833, label %.loopexit113, label %812, !llvm.loop !71

.loopexit113:                                     ; preds = %812, %806
  %834 = phi i32 [ 0, %806 ], [ %829, %812 ]
  %835 = phi i64 [ 7, %806 ], [ %831, %812 ]
  %836 = icmp eq i64 %807, 0
  br i1 %836, label %845, label %837

837:                                              ; preds = %.loopexit113
  %838 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %835
  %839 = load i32, ptr %838, align 4, !tbaa !5
  %840 = trunc nuw i64 %835 to i32
  %841 = add i32 %840, -3
  %842 = mul i32 %839, %841
  %843 = add i32 %842, %834
  %844 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %835
  store i32 %843, ptr %844, align 4, !tbaa !5
  br label %845

845:                                              ; preds = %837, %.loopexit113
  br i1 %194, label %849, label %846

846:                                              ; preds = %845
  %847 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %799
  %848 = load i32, ptr %847, align 4, !tbaa !5
  br label %859

849:                                              ; preds = %845
  %850 = load ptr, ptr @stderr, align 8, !tbaa !72
  %851 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %799
  %852 = load i32, ptr %851, align 4, !tbaa !5
  %853 = uitofp i32 %852 to double
  %854 = uitofp i32 %798 to double
  %855 = fdiv double %853, %854
  %856 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %850, ptr noundef nonnull @.str.36, i32 noundef %526, i32 noundef %798, i32 noundef %852, double noundef %855) #23
  %857 = load ptr, ptr @stderr, align 8, !tbaa !72
  %858 = tail call i32 @fflush(ptr noundef %857)
  br label %859

859:                                              ; preds = %849, %846
  %860 = phi i32 [ %848, %846 ], [ %852, %849 ]
  %861 = icmp ult i32 %597, %533
  br i1 %861, label %862, label %.loopexit112

862:                                              ; preds = %859
  %863 = zext i32 %597 to i64
  br label %864

864:                                              ; preds = %903, %862
  %865 = phi i64 [ %863, %862 ], [ %904, %903 ]
  %866 = getelementptr inbounds nuw [4 x i8], ptr %109, i64 %865
  %867 = load i32, ptr %866, align 4, !tbaa !5
  %868 = icmp eq i32 %867, %526
  br i1 %868, label %893, label %869

869:                                              ; preds = %864
  %870 = zext i32 %867 to i64
  %871 = getelementptr inbounds nuw i8, ptr %47, i64 %870
  %872 = load i64, ptr %871, align 1, !tbaa !13
  %873 = load i64, ptr %528, align 1, !tbaa !13
  %874 = icmp eq i64 %872, %873
  br i1 %874, label %.preheader93, label %.loopexit94

.preheader93:                                     ; preds = %869, %.preheader93
  %875 = phi ptr [ %877, %.preheader93 ], [ %528, %869 ]
  %876 = phi ptr [ %878, %.preheader93 ], [ %871, %869 ]
  %877 = getelementptr inbounds nuw i8, ptr %875, i64 8
  %878 = getelementptr inbounds nuw i8, ptr %876, i64 8
  %879 = load i64, ptr %878, align 1, !tbaa !13
  %880 = load i64, ptr %877, align 1, !tbaa !13
  %881 = icmp eq i64 %879, %880
  br i1 %881, label %.preheader93, label %.loopexit94

.loopexit94:                                      ; preds = %.preheader93, %869
  %882 = phi ptr [ %528, %869 ], [ %877, %.preheader93 ]
  %883 = phi i64 [ %872, %869 ], [ %879, %.preheader93 ]
  %884 = phi i64 [ %873, %869 ], [ %880, %.preheader93 ]
  %885 = xor i64 %884, %883
  %886 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %885, i1 true)
  %887 = lshr i64 %886, 3
  %888 = getelementptr inbounds nuw i8, ptr %882, i64 %887
  %889 = ptrtoint ptr %888 to i64
  %890 = sub i64 %889, %530
  %891 = trunc i64 %890 to i32
  %892 = tail call i32 @llvm.umin.i32(i32 %798, i32 %891)
  br label %893

893:                                              ; preds = %.loopexit94, %864
  %894 = phi i32 [ %798, %864 ], [ %892, %.loopexit94 ]
  %895 = add i32 %894, %867
  %896 = icmp ult i32 %867, %895
  br i1 %896, label %897, label %903

897:                                              ; preds = %893
  %898 = zext i32 %867 to i64
  %899 = getelementptr i8, ptr %112, i64 %898
  %900 = add i32 %894, -1
  %901 = zext i32 %900 to i64
  %902 = add nuw nsw i64 %901, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %899, i8 1, i64 %902, i1 false), !tbaa !31
  br label %903

903:                                              ; preds = %897, %893
  %904 = add nuw nsw i64 %865, 1
  %905 = icmp eq i64 %904, %534
  br i1 %905, label %.loopexit112, label %864, !llvm.loop !74

.loopexit105:                                     ; preds = %.preheader104, %804, %.loopexit107, %376, %306, %304
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %906 = add i32 %262, 1
  br label %1003, !llvm.loop !59

.loopexit112:                                     ; preds = %903, %859
  %907 = shl nuw i64 %799, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %908 = or disjoint i64 %907, %527
  %909 = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %65, i64 %908, i32 %860, i32 noundef 0, ptr noundef nonnull readonly %47)
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %955, label %911

911:                                              ; preds = %.loopexit112
  %912 = zext i32 %909 to i64
  %913 = getelementptr inbounds nuw [12 x i8], ptr %65, i64 %912
  %914 = load i64, ptr %913, align 4
  %915 = getelementptr inbounds nuw i8, ptr %913, i64 8
  %916 = load i32, ptr %915, align 4
  %917 = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %65, i64 %914, i32 %916, i32 noundef %909, ptr noundef nonnull readonly %47)
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %.loopexit111, label %.preheader110

.preheader110:                                    ; preds = %911, %946
  %919 = phi i32 [ %953, %946 ], [ %917, %911 ]
  %920 = phi i64 [ %948, %946 ], [ %912, %911 ]
  %921 = phi i32 [ %919, %946 ], [ %909, %911 ]
  %922 = load i32, ptr %65, align 4, !tbaa !9
  %923 = add i32 %922, -1
  %924 = icmp ult i32 %921, %923
  br i1 %924, label %925, label %946

925:                                              ; preds = %.preheader110
  %926 = zext i32 %923 to i64
  %927 = sub nsw i64 %926, %920
  %928 = and i64 %927, 1
  %929 = icmp eq i64 %928, 0
  br i1 %929, label %934, label %930

930:                                              ; preds = %925
  %931 = getelementptr inbounds nuw [12 x i8], ptr %65, i64 %920
  %932 = add nuw nsw i64 %920, 1
  %933 = getelementptr inbounds nuw [12 x i8], ptr %65, i64 %932
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %931, ptr noundef nonnull align 4 dereferenceable(12) %933, i64 12, i1 false), !tbaa.struct !75
  br label %934

934:                                              ; preds = %930, %925
  %935 = phi i64 [ %920, %925 ], [ %932, %930 ]
  %936 = add nsw i64 %926, -1
  %937 = icmp eq i64 %920, %936
  br i1 %937, label %.loopexit92, label %.preheader91

.preheader91:                                     ; preds = %934, %.preheader91
  %938 = phi i64 [ %941, %.preheader91 ], [ %935, %934 ]
  %939 = getelementptr inbounds nuw [12 x i8], ptr %65, i64 %938
  %940 = getelementptr inbounds nuw i8, ptr %939, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %939, ptr noundef nonnull align 4 dereferenceable(12) %940, i64 12, i1 false), !tbaa.struct !75
  %941 = add nuw nsw i64 %938, 2
  %942 = getelementptr inbounds nuw [12 x i8], ptr %65, i64 %941
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %940, ptr noundef nonnull align 4 dereferenceable(12) %942, i64 12, i1 false), !tbaa.struct !75
  %943 = icmp eq i64 %941, %926
  br i1 %943, label %.loopexit92, label %.preheader91, !llvm.loop !76

.loopexit92:                                      ; preds = %.preheader91, %934
  %944 = load i32, ptr %65, align 4, !tbaa !9
  %945 = add i32 %944, -1
  br label %946

946:                                              ; preds = %.loopexit92, %.preheader110
  %947 = phi i32 [ %945, %.loopexit92 ], [ %923, %.preheader110 ]
  store i32 %947, ptr %65, align 4, !tbaa !9
  %948 = zext i32 %919 to i64
  %949 = getelementptr inbounds nuw [12 x i8], ptr %65, i64 %948
  %950 = load i64, ptr %949, align 4
  %951 = getelementptr inbounds nuw i8, ptr %949, i64 8
  %952 = load i32, ptr %951, align 4
  %953 = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %65, i64 %950, i32 %952, i32 noundef %919, ptr noundef nonnull readonly %47)
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %.loopexit111, label %.preheader110, !llvm.loop !77

955:                                              ; preds = %.loopexit112
  %956 = load i32, ptr %65, align 4, !tbaa !9
  %957 = tail call i32 @llvm.umin.i32(i32 %956, i32 %254)
  %958 = add i32 %957, -1
  %959 = zext i32 %958 to i64
  %960 = getelementptr inbounds nuw [12 x i8], ptr %65, i64 %959
  %961 = getelementptr inbounds nuw i8, ptr %960, i64 8
  %962 = load i32, ptr %961, align 4, !tbaa !12
  %963 = icmp ult i32 %962, %860
  br i1 %963, label %.preheader108, label %.loopexit109

.preheader108:                                    ; preds = %955, %.preheader108
  %964 = phi ptr [ %971, %.preheader108 ], [ %960, %955 ]
  %965 = phi i32 [ %969, %.preheader108 ], [ %958, %955 ]
  %966 = phi i32 [ %965, %.preheader108 ], [ %957, %955 ]
  %967 = zext i32 %966 to i64
  %968 = getelementptr inbounds nuw [12 x i8], ptr %65, i64 %967
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %968, ptr noundef nonnull align 4 dereferenceable(12) %964, i64 12, i1 false), !tbaa.struct !75
  %969 = add i32 %965, -1
  %970 = zext i32 %969 to i64
  %971 = getelementptr inbounds nuw [12 x i8], ptr %65, i64 %970
  %972 = getelementptr inbounds nuw i8, ptr %971, i64 8
  %973 = load i32, ptr %972, align 4, !tbaa !12
  %974 = icmp ult i32 %973, %860
  br i1 %974, label %.preheader108, label %.loopexit109, !llvm.loop !78

.loopexit109:                                     ; preds = %.preheader108, %955
  %975 = phi i32 [ %957, %955 ], [ %965, %.preheader108 ]
  %976 = zext i32 %975 to i64
  %977 = getelementptr inbounds nuw [12 x i8], ptr %65, i64 %976
  store i64 %908, ptr %977, align 4
  %978 = getelementptr inbounds nuw i8, ptr %977, i64 8
  store i32 %860, ptr %978, align 4, !tbaa !5
  %979 = add nuw i32 %957, 1
  store i32 %979, ptr %65, align 4, !tbaa !9
  br label %.loopexit111

.loopexit111:                                     ; preds = %946, %.loopexit109, %911
  %980 = add i32 %798, %262
  br i1 %113, label %981, label %1003

981:                                              ; preds = %.loopexit111
  %982 = tail call i64 @clock() #19
  %983 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %982, i64 %261), !nosanitize !79
  %984 = extractvalue { i64, i1 } %983, 1, !nosanitize !79
  br i1 %984, label %985, label %986, !prof !80, !nosanitize !79

985:                                              ; preds = %981
  tail call void @llvm.ubsantrap(i8 21) #24, !nosanitize !79
  unreachable, !nosanitize !79

986:                                              ; preds = %981
  %987 = extractvalue { i64, i1 } %983, 0, !nosanitize !79
  %988 = icmp sgt i64 %987, 300000
  br i1 %988, label %989, label %998

989:                                              ; preds = %986
  %990 = tail call i64 @clock() #19
  %991 = load ptr, ptr @stderr, align 8, !tbaa !72
  %992 = uitofp i32 %980 to double
  %993 = fdiv double %992, %255
  %994 = fmul double %993, 1.000000e+02
  %995 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %991, ptr noundef nonnull @.str.33, double noundef %994) #23
  %996 = load ptr, ptr @stderr, align 8, !tbaa !72
  %997 = tail call i32 @fflush(ptr noundef %996)
  br label %998

998:                                              ; preds = %989, %986
  %999 = phi i64 [ %990, %989 ], [ %261, %986 ]
  br i1 %194, label %1000, label %1003

1000:                                             ; preds = %998
  %1001 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1002 = tail call i32 @fflush(ptr noundef %1001)
  br label %1003

1003:                                             ; preds = %1000, %998, %.loopexit111, %.loopexit105, %266
  %1004 = phi i32 [ %267, %266 ], [ %906, %.loopexit105 ], [ %980, %998 ], [ %980, %1000 ], [ %980, %.loopexit111 ]
  %1005 = phi i64 [ %261, %266 ], [ %261, %.loopexit105 ], [ %999, %998 ], [ %999, %1000 ], [ %261, %.loopexit111 ]
  %1006 = zext i32 %1004 to i64
  %1007 = icmp samesign ugt i64 %138, %1006
  br i1 %1007, label %259, label %1008

1008:                                             ; preds = %1003
  %1009 = load i32, ptr %65, align 4, !tbaa !9
  br label %1010

1010:                                             ; preds = %1008, %192, %140, %115
  %1011 = phi i32 [ %1009, %1008 ], [ 1, %115 ], [ 1, %140 ], [ 1, %192 ]
  tail call void @free(ptr noundef %108) #19
  tail call void @free(ptr noundef %110) #19
  tail call void @free(ptr noundef %112) #19
  %1012 = icmp ugt i32 %55, 2
  br i1 %1012, label %1013, label %.loopexit90

1013:                                             ; preds = %1010
  %1014 = tail call i32 @llvm.umin.i32(i32 %1011, i32 25)
  %1015 = icmp ugt i32 %1011, 1
  br i1 %1015, label %1016, label %1142

1016:                                             ; preds = %1013
  %1017 = zext i32 %1011 to i64
  %1018 = icmp ult i32 %1011, 10
  br i1 %1018, label %.preheader444, label %1019

1019:                                             ; preds = %1016
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call fastcc void @ZDICT_trainFromBuffer_legacy.cold.7(i64 %1017, ptr %65, ptr %8, ptr %7) #22
  %1020 = load i64, ptr %8, align 8
  %1021 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.preheader444

.preheader444:                                    ; preds = %1019, %1016
  %.ph445 = phi i64 [ %1020, %1019 ], [ 1, %1016 ]
  %.ph446 = phi i32 [ %1021, %1019 ], [ 0, %1016 ]
  br label %1022

1022:                                             ; preds = %.preheader444, %1022
  %1023 = phi i64 [ %1028, %1022 ], [ %.ph445, %.preheader444 ]
  %1024 = phi i32 [ %1027, %1022 ], [ %.ph446, %.preheader444 ]
  %.split = getelementptr inbounds nuw [12 x i8], ptr %65, i64 %1023
  %1025 = getelementptr inbounds nuw i8, ptr %.split, i64 4
  %1026 = load i32, ptr %1025, align 4, !tbaa !11
  %1027 = add i32 %1026, %1024
  %1028 = add nuw nsw i64 %1023, 1
  %1029 = icmp eq i64 %1028, %1017
  br i1 %1029, label %1030, label %1022, !llvm.loop !81

1030:                                             ; preds = %1022
  %1031 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1032 = add i32 %1011, -1
  %1033 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1031, ptr noundef nonnull @.str.18, i32 noundef %1032, i32 noundef %1027) #23
  %1034 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1035 = tail call i32 @fflush(ptr noundef %1034)
  %1036 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1037 = add nsw i32 %1014, -1
  %1038 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1036, ptr noundef nonnull @.str.19, i32 noundef %1037) #23
  %1039 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1040 = tail call i32 @fflush(ptr noundef %1039)
  %1041 = zext nneg i32 %1014 to i64
  br label %1042

1042:                                             ; preds = %.loopexit88, %1030
  %1043 = phi i64 [ 1, %1030 ], [ %1083, %.loopexit88 ]
  %1044 = getelementptr inbounds nuw [12 x i8], ptr %65, i64 %1043
  %1045 = load i32, ptr %1044, align 4, !tbaa !9
  %1046 = getelementptr inbounds nuw i8, ptr %1044, i64 4
  %1047 = load i32, ptr %1046, align 4, !tbaa !11
  %1048 = zext i32 %1045 to i64
  %1049 = icmp ult i64 %92, %1048
  %1050 = add i32 %1047, %1045
  %1051 = zext i32 %1050 to i64
  %1052 = icmp ult i64 %92, %1051
  %1053 = select i1 %1049, i1 true, i1 %1052
  br i1 %1053, label %.loopexit, label %1054

1054:                                             ; preds = %1042
  %1055 = tail call i32 @llvm.umin.i32(i32 %1047, i32 40)
  %1056 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1057 = getelementptr inbounds nuw i8, ptr %1044, i64 8
  %1058 = load i32, ptr %1057, align 4, !tbaa !12
  %1059 = trunc nuw nsw i64 %1043 to i32
  %1060 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1056, ptr noundef nonnull @.str.20, i32 noundef %1059, i32 noundef %1047, i32 noundef %1045, i32 noundef %1058) #23
  %1061 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1062 = tail call i32 @fflush(ptr noundef %1061)
  %1063 = getelementptr inbounds nuw i8, ptr %47, i64 %1048
  %1064 = zext nneg i32 %1055 to i64
  %1065 = icmp eq i32 %1047, 0
  br i1 %1065, label %.loopexit88, label %.preheader87

.preheader87:                                     ; preds = %1054, %.preheader87
  %1066 = phi i64 [ %1077, %.preheader87 ], [ 0, %1054 ]
  %1067 = getelementptr inbounds nuw i8, ptr %1063, i64 %1066
  %1068 = load i8, ptr %1067, align 1, !tbaa !31
  %1069 = add i8 %1068, -127
  %1070 = icmp ult i8 %1069, -95
  %1071 = select i1 %1070, i8 46, i8 %1068
  %1072 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1073 = zext i8 %1071 to i32
  %1074 = tail call i32 @fputc(i32 %1073, ptr %1072)
  %1075 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1076 = tail call i32 @fflush(ptr noundef %1075)
  %1077 = add nuw nsw i64 %1066, 1
  %1078 = icmp eq i64 %1077, %1064
  br i1 %1078, label %.loopexit88, label %.preheader87, !llvm.loop !82

.loopexit88:                                      ; preds = %.preheader87, %1054
  %1079 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1080 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %1079) #25
  %1081 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1082 = tail call i32 @fflush(ptr noundef %1081)
  %1083 = add nuw nsw i64 %1043, 1
  %1084 = icmp eq i64 %1083, %1041
  br i1 %1084, label %.loopexit90, label %1042, !llvm.loop !83

.loopexit90:                                      ; preds = %.loopexit88, %1010
  %1085 = icmp ugt i32 %1011, 1
  br i1 %1085, label %1086, label %.loopexit

1086:                                             ; preds = %.loopexit90
  %1087 = zext i32 %1011 to i64
  %1088 = icmp ult i32 %1011, 10
  br i1 %1088, label %.preheader438, label %1089

1089:                                             ; preds = %1086
  %1090 = add nsw i64 %1087, -1
  %1091 = and i64 %1090, 7
  %1092 = icmp eq i64 %1091, 0
  %1093 = select i1 %1092, i64 8, i64 %1091
  %1094 = sub nuw nsw i64 %1090, %1093
  br label %1095

1095:                                             ; preds = %1095, %1089
  %1096 = phi i64 [ 0, %1089 ], [ %1099, %1095 ]
  %1097 = phi <4 x i32> [ zeroinitializer, %1089 ], [ %1125, %1095 ]
  %1098 = phi <4 x i32> [ zeroinitializer, %1089 ], [ %1126, %1095 ]
  %1099 = add i64 %1096, 8
  %1100 = getelementptr inbounds nuw [12 x i8], ptr %65, i64 %1096
  %1101 = getelementptr inbounds nuw i8, ptr %1100, i64 16
  %1102 = getelementptr inbounds nuw i8, ptr %1100, i64 28
  %1103 = getelementptr inbounds nuw i8, ptr %1100, i64 40
  %1104 = getelementptr inbounds nuw i8, ptr %1100, i64 52
  %1105 = getelementptr inbounds nuw i8, ptr %1100, i64 64
  %1106 = getelementptr inbounds nuw i8, ptr %1100, i64 76
  %1107 = getelementptr inbounds nuw i8, ptr %1100, i64 88
  %.split82 = getelementptr inbounds nuw [12 x i8], ptr %65, i64 %1099
  %1108 = getelementptr inbounds nuw i8, ptr %.split82, i64 4
  %1109 = load i32, ptr %1101, align 4, !tbaa !11
  %1110 = load i32, ptr %1102, align 4, !tbaa !11
  %1111 = load i32, ptr %1103, align 4, !tbaa !11
  %1112 = load i32, ptr %1104, align 4, !tbaa !11
  %1113 = insertelement <4 x i32> poison, i32 %1109, i64 0
  %1114 = insertelement <4 x i32> %1113, i32 %1110, i64 1
  %1115 = insertelement <4 x i32> %1114, i32 %1111, i64 2
  %1116 = insertelement <4 x i32> %1115, i32 %1112, i64 3
  %1117 = load i32, ptr %1105, align 4, !tbaa !11
  %1118 = load i32, ptr %1106, align 4, !tbaa !11
  %1119 = load i32, ptr %1107, align 4, !tbaa !11
  %1120 = load i32, ptr %1108, align 4, !tbaa !11
  %1121 = insertelement <4 x i32> poison, i32 %1117, i64 0
  %1122 = insertelement <4 x i32> %1121, i32 %1118, i64 1
  %1123 = insertelement <4 x i32> %1122, i32 %1119, i64 2
  %1124 = insertelement <4 x i32> %1123, i32 %1120, i64 3
  %1125 = add <4 x i32> %1116, %1097
  %1126 = add <4 x i32> %1124, %1098
  %1127 = icmp eq i64 %1099, %1094
  br i1 %1127, label %1128, label %1095, !llvm.loop !84

1128:                                             ; preds = %1095
  %1129 = add nuw nsw i64 %1094, 1
  %1130 = add <4 x i32> %1126, %1125
  %1131 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %1130)
  br label %.preheader438

.preheader438:                                    ; preds = %1128, %1086
  %.ph = phi i64 [ %1129, %1128 ], [ 1, %1086 ]
  %.ph439 = phi i32 [ %1131, %1128 ], [ 0, %1086 ]
  br label %1132

1132:                                             ; preds = %.preheader438, %1132
  %1133 = phi i64 [ %1138, %1132 ], [ %.ph, %.preheader438 ]
  %1134 = phi i32 [ %1137, %1132 ], [ %.ph439, %.preheader438 ]
  %.split83 = getelementptr inbounds nuw [12 x i8], ptr %65, i64 %1133
  %1135 = getelementptr inbounds nuw i8, ptr %.split83, i64 4
  %1136 = load i32, ptr %1135, align 4, !tbaa !11
  %1137 = add i32 %1136, %1134
  %1138 = add nuw nsw i64 %1133, 1
  %1139 = icmp eq i64 %1138, %1087
  br i1 %1139, label %1140, label %1132, !llvm.loop !85

1140:                                             ; preds = %1132
  %1141 = icmp ult i32 %1137, 128
  br i1 %1141, label %.loopexit, label %1143

1142:                                             ; preds = %1013
  tail call fastcc void @ZDICT_trainFromBuffer_legacy.cold.6(i32 %1011, i32 %1014) #22
  br label %.loopexit

1143:                                             ; preds = %1140
  %1144 = zext i32 %1137 to i64
  %1145 = lshr i64 %1, 2
  %1146 = icmp samesign ugt i64 %1145, %1144
  %1147 = and i1 %113, %1146
  br i1 %1147, label %1148, label %1160

1148:                                             ; preds = %1143
  %1149 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1150 = trunc i64 %1 to i32
  %1151 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1149, ptr noundef nonnull @.str.22, i32 noundef %1137, i32 noundef %1150) #23
  %1152 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1153 = tail call i32 @fflush(ptr noundef %1152)
  %1154 = mul i64 %1, 10
  %1155 = icmp ult i64 %92, %1154
  br i1 %1155, label %1156, label %1157

1156:                                             ; preds = %1148
  tail call fastcc void @ZDICT_trainFromBuffer_legacy.cold.8(i64 %92) #22
  br label %1157

1157:                                             ; preds = %1156, %1148
  %1158 = icmp ugt i32 %97, 4
  br i1 %1158, label %1159, label %1160

1159:                                             ; preds = %1157
  tail call fastcc void @ZDICT_trainFromBuffer_legacy.cold.9(i32 %94) #22
  br label %1160

1160:                                             ; preds = %1159, %1157, %1143
  %1161 = mul i64 %1, 3
  %1162 = icmp ult i64 %1161, %1144
  %1163 = icmp ugt i32 %4, 8
  %1164 = and i1 %1163, %1162
  %1165 = icmp ugt i32 %94, 1
  %1166 = select i1 %1164, i1 %1165, i1 false
  br i1 %1166, label %.preheader, label %.preheader432

.preheader:                                       ; preds = %1160, %.preheader
  %1167 = phi i32 [ %1168, %.preheader ], [ %94, %1160 ]
  %1168 = add i32 %1167, -1
  %1169 = lshr i32 %4, %1168
  %1170 = icmp ult i32 %1169, 5
  br i1 %1170, label %.preheader, label %1171, !llvm.loop !86

1171:                                             ; preds = %.preheader
  br i1 %113, label %1172, label %.preheader432

1172:                                             ; preds = %1171
  tail call fastcc void @ZDICT_trainFromBuffer_legacy.cold.10(i64 %1, i32 %1137, i32 %1168) #22
  br label %.preheader432

.preheader432:                                    ; preds = %1172, %1171, %1160
  br label %1173

1173:                                             ; preds = %.preheader432, %1181
  %1174 = phi i64 [ %1182, %1181 ], [ 1, %.preheader432 ]
  %1175 = phi i32 [ %1178, %1181 ], [ 0, %.preheader432 ]
  %.split84 = getelementptr inbounds nuw [12 x i8], ptr %65, i64 %1174
  %1176 = getelementptr inbounds nuw i8, ptr %.split84, i64 4
  %1177 = load i32, ptr %1176, align 4, !tbaa !11
  %1178 = add i32 %1177, %1175
  %1179 = zext i32 %1178 to i64
  %1180 = icmp ult i64 %1, %1179
  br i1 %1180, label %1184, label %1181

1181:                                             ; preds = %1173
  %1182 = add nuw nsw i64 %1174, 1
  %1183 = icmp eq i64 %1182, %1087
  br i1 %1183, label %.loopexit86, label %1173, !llvm.loop !87

1184:                                             ; preds = %1173
  %1185 = trunc nuw i64 %1174 to i32
  br label %.loopexit86

.loopexit86:                                      ; preds = %1181, %1184
  %1186 = phi i32 [ %1175, %1184 ], [ %1178, %1181 ]
  %1187 = phi i32 [ %1185, %1184 ], [ %1011, %1181 ]
  %1188 = icmp ugt i32 %1187, 1
  br i1 %1188, label %1189, label %.loopexit85

1189:                                             ; preds = %.loopexit86
  %1190 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %1191 = zext i32 %1187 to i64
  br label %1192

1192:                                             ; preds = %1202, %1189
  %1193 = phi i64 [ 1, %1189 ], [ %1206, %1202 ]
  %1194 = phi ptr [ %1190, %1189 ], [ %1200, %1202 ]
  %1195 = getelementptr inbounds nuw [12 x i8], ptr %65, i64 %1193
  %1196 = getelementptr inbounds nuw i8, ptr %1195, i64 4
  %1197 = load i32, ptr %1196, align 4, !tbaa !11
  %1198 = zext i32 %1197 to i64
  %1199 = sub nsw i64 0, %1198
  %1200 = getelementptr inbounds i8, ptr %1194, i64 %1199
  %1201 = icmp ult ptr %1200, %0
  br i1 %1201, label %.loopexit, label %1202

1202:                                             ; preds = %1192
  %1203 = load i32, ptr %1195, align 4, !tbaa !9
  %1204 = zext i32 %1203 to i64
  %1205 = getelementptr inbounds nuw i8, ptr %47, i64 %1204
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1200, ptr nonnull align 1 %1205, i64 %1198, i1 false)
  %1206 = add nuw nsw i64 %1193, 1
  %1207 = icmp eq i64 %1206, %1191
  br i1 %1207, label %.loopexit85, label %1192, !llvm.loop !88

.loopexit85:                                      ; preds = %1202, %.loopexit86
  %1208 = zext i32 %1186 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store <2 x i32> %56, ptr %12, align 8, !tbaa !5
  %1209 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %58, ptr %1209, align 8, !tbaa !5
  %1210 = tail call fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %1208, i64 noundef %1, ptr noundef nonnull %47, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %.loopexit

.loopexit:                                        ; preds = %1042, %1192, %.loopexit85, %1142, %1140, %.loopexit90, %101, %99
  %1211 = phi i64 [ %1210, %.loopexit85 ], [ -70, %99 ], [ -34, %101 ], [ -34, %1142 ], [ -34, %.loopexit90 ], [ -34, %1140 ], [ -1, %1192 ], [ -1, %1042 ]
  tail call void @free(ptr noundef nonnull %65) #19
  br label %1212

1212:                                             ; preds = %.loopexit, %.loopexit121
  %1213 = phi i64 [ -64, %.loopexit121 ], [ %1211, %.loopexit ]
  tail call void @free(ptr noundef %47) #19
  br label %1214

1214:                                             ; preds = %1212, %45, %.loopexit122, %6
  %1215 = phi i64 [ %1213, %1212 ], [ 0, %.loopexit122 ], [ -64, %45 ], [ 0, %6 ]
  ret i64 %1215
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_trainFromBuffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = alloca %struct.ZDICT_fastCover_params_t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 8, ptr %7, align 4, !tbaa !89
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 4, ptr %8, align 4, !tbaa !92
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 3, ptr %9, align 4, !tbaa !93
  %10 = call i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i64 %10
}

declare i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_addEntropyTablesFromBuffer(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = add i64 %2, -8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %10 = sub i64 0, %1
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  %12 = tail call fastcc i64 @ZDICT_analyzeEntropy(ptr noundef nonnull %7, i64 noundef %8, i32 noundef 3, ptr noundef %3, ptr noundef readonly %4, i32 noundef %5, ptr noundef %11, i64 noundef %1, i32 noundef 0)
  %13 = icmp ult i64 %12, -119
  %14 = add i64 %12, 8
  br i1 %13, label %15, label %ZDICT_addEntropyTablesFromBuffer_advanced.exit

15:                                               ; preds = %6
  store i32 -332356553, ptr %0, align 1, !tbaa !5
  %16 = tail call i64 @ZSTD_XXH64(ptr noundef nonnull captures(none) %11, i64 noundef %1, i64 noundef 0) #21
  %17 = urem i64 %16, 2147450880
  %18 = trunc nuw nsw i64 %17 to i32
  %19 = add nuw nsw i32 %18, 32768
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %19, ptr %20, align 1, !tbaa !5
  %21 = add i64 %14, %1
  %22 = icmp ult i64 %21, %2
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %14
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %24, ptr nonnull align 1 %11, i64 %1, i1 false)
  br label %25

25:                                               ; preds = %23, %15
  %26 = tail call i64 @llvm.umin.i64(i64 %2, i64 %21)
  br label %ZDICT_addEntropyTablesFromBuffer_advanced.exit

ZDICT_addEntropyTablesFromBuffer_advanced.exit:   ; preds = %6, %25
  %27 = phi i64 [ %26, %25 ], [ %12, %6 ]
  ret i64 %27
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
  tail call fastcc void @ZDICT_addEntropyTablesFromBuffer_advanced.cold.1() #22
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
  %25 = tail call i64 @ZSTD_XXH64(ptr noundef nonnull captures(none) %20, i64 noundef %1, i64 noundef 0) #21
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

40:                                               ; preds = %38, %15
  %41 = phi i64 [ %39, %38 ], [ %21, %15 ]
  ret i64 %41
}

declare ptr @ERR_getErrorString(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #10

declare void @ZSTD_getParams(ptr dead_on_unwind writable sret(%struct.ZSTD_parameters) align 4, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare ptr @ZSTD_createCDict_advanced(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.ZSTD_compressionParameters) align 8, ptr noundef byval(%struct.ZSTD_customMem) align 8) local_unnamed_addr #4

declare ptr @ZSTD_createCCtx() local_unnamed_addr #4

declare i64 @HUF_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @FSE_normalizeCount(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i64 @HUF_writeCTable_wksp(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @FSE_writeNCount(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i64 @ZSTD_freeCDict(ptr noundef) local_unnamed_addr #4

declare i64 @ZSTD_freeCCtx(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

declare i64 @ZSTD_compressBegin_usingCDict_deprecated(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @ZSTD_compressBlock_deprecated(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @ZSTD_getSeqStore(ptr noundef) local_unnamed_addr #4

declare i32 @ZSTD_seqToCodes(ptr noundef) local_unnamed_addr #4

declare i32 @divsufsort(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #11

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull captures(none) %0, i64 %1, i32 %2, i32 noundef %3, ptr noundef nonnull readonly captures(none) %4) unnamed_addr #14 {
  %6 = trunc i64 %1 to i32
  %7 = lshr i64 %1, 32
  %8 = trunc nuw i64 %7 to i32
  %9 = load i32, ptr %0, align 4, !tbaa !9
  %10 = add i32 %8, %6
  %11 = icmp ugt i32 %9, 1
  br i1 %11, label %12, label %.loopexit15

12:                                               ; preds = %5
  %13 = zext i32 %3 to i64
  %14 = zext i32 %9 to i64
  br label %19

15:                                               ; preds = %59
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %17 = and i64 %1, 4294967295
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 %17
  br label %62

19:                                               ; preds = %59, %12
  %20 = phi i64 [ 1, %12 ], [ %60, %59 ]
  %21 = icmp eq i64 %20, %13
  br i1 %21, label %59, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %20
  %24 = load i32, ptr %23, align 4, !tbaa !9
  %25 = icmp ule i32 %24, %6
  %26 = icmp ugt i32 %24, %10
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %59, label %28

28:                                               ; preds = %22
  %29 = sub nuw i32 %24, %6
  %30 = getelementptr inbounds nuw i8, ptr %23, i64 4
  %31 = load i32, ptr %30, align 4, !tbaa !11
  %32 = add i32 %31, %29
  store i32 %32, ptr %30, align 4, !tbaa !11
  store i32 %6, ptr %23, align 4, !tbaa !9
  %33 = mul i32 %29, %2
  %34 = udiv i32 %33, %8
  %35 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %36 = load i32, ptr %35, align 4, !tbaa !12
  %37 = lshr i32 %8, 3
  %38 = add i32 %34, %37
  %39 = add i32 %38, %36
  store i32 %39, ptr %35, align 4, !tbaa !12
  %40 = load i64, ptr %23, align 4
  %41 = icmp samesign ugt i64 %20, 1
  br i1 %41, label %.preheader16, label %.loopexit17

.preheader16:                                     ; preds = %28, %49
  %42 = phi i64 [ %43, %49 ], [ %20, %28 ]
  %43 = add nsw i64 %42, -1
  %44 = and i64 %43, 4294967295
  %45 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %44
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %47 = load i32, ptr %46, align 4, !tbaa !12
  %48 = icmp ult i32 %47, %39
  br i1 %48, label %49, label %53

49:                                               ; preds = %.preheader16
  %50 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %42
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %50, ptr noundef nonnull align 4 dereferenceable(12) %45, i64 12, i1 false), !tbaa.struct !75
  %51 = and i64 %43, 4294967294
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %.loopexit17, label %.preheader16, !llvm.loop !94

53:                                               ; preds = %.preheader16
  %54 = trunc nuw i64 %42 to i32
  br label %.loopexit17

.loopexit17:                                      ; preds = %49, %53, %28
  %55 = phi i32 [ 1, %28 ], [ %54, %53 ], [ 1, %49 ]
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %56
  store i64 %40, ptr %57, align 4
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 8
  store i32 %39, ptr %58, align 4, !tbaa !5
  br label %.loopexit15

59:                                               ; preds = %22, %19
  %60 = add nuw nsw i64 %20, 1
  %61 = icmp eq i64 %60, %14
  br i1 %61, label %15, label %19, !llvm.loop !95

62:                                               ; preds = %146, %15
  %63 = phi i64 [ 1, %15 ], [ %147, %146 ]
  %64 = icmp eq i64 %63, %13
  br i1 %64, label %146, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %63
  %67 = load i32, ptr %66, align 4, !tbaa !9
  %68 = getelementptr inbounds nuw i8, ptr %66, i64 4
  %69 = load i32, ptr %68, align 4, !tbaa !11
  %70 = add i32 %69, %67
  %71 = icmp uge i32 %70, %6
  %72 = icmp ult i32 %67, %6
  %73 = and i1 %72, %71
  br i1 %73, label %74, label %112

74:                                               ; preds = %65
  %75 = getelementptr inbounds nuw i8, ptr %66, i64 4
  %76 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %10, i32 %70), !nosanitize !79
  %77 = extractvalue { i32, i1 } %76, 0, !nosanitize !79
  %78 = extractvalue { i32, i1 } %76, 1, !nosanitize !79
  br i1 %78, label %79, label %80, !prof !80, !nosanitize !79

79:                                               ; preds = %74
  tail call void @llvm.ubsantrap(i8 21) #24, !nosanitize !79
  unreachable, !nosanitize !79

80:                                               ; preds = %74
  %81 = lshr i32 %8, 3
  %82 = getelementptr inbounds nuw i8, ptr %66, i64 8
  %83 = load i32, ptr %82, align 4, !tbaa !12
  %84 = add i32 %83, %81
  store i32 %84, ptr %82, align 4, !tbaa !12
  %85 = icmp sgt i32 %77, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = add i32 %77, %69
  store i32 %87, ptr %75, align 4, !tbaa !11
  %88 = mul i32 %77, %2
  %89 = udiv i32 %88, %8
  %90 = add i32 %89, %84
  store i32 %90, ptr %82, align 4, !tbaa !12
  br label %91

91:                                               ; preds = %86, %80
  %92 = phi i32 [ %90, %86 ], [ %84, %80 ]
  %93 = load i64, ptr %66, align 4
  %94 = icmp samesign ugt i64 %63, 1
  br i1 %94, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %91, %102
  %95 = phi i64 [ %96, %102 ], [ %63, %91 ]
  %96 = add nsw i64 %95, -1
  %97 = and i64 %96, 4294967295
  %98 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %97
  %99 = getelementptr inbounds nuw i8, ptr %98, i64 8
  %100 = load i32, ptr %99, align 4, !tbaa !12
  %101 = icmp ult i32 %100, %92
  br i1 %101, label %102, label %106

102:                                              ; preds = %.preheader
  %103 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %95
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %103, ptr noundef nonnull align 4 dereferenceable(12) %98, i64 12, i1 false), !tbaa.struct !75
  %104 = and i64 %96, 4294967294
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %.loopexit, label %.preheader, !llvm.loop !96

106:                                              ; preds = %.preheader
  %107 = trunc nuw i64 %95 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %102, %106, %91
  %108 = phi i32 [ 1, %91 ], [ %107, %106 ], [ 1, %102 ]
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %109
  store i64 %93, ptr %110, align 4
  %111 = getelementptr inbounds nuw i8, ptr %110, i64 8
  store i32 %92, ptr %111, align 4, !tbaa !5
  br label %.loopexit15

112:                                              ; preds = %65
  %113 = zext i32 %67 to i64
  %114 = getelementptr inbounds nuw i8, ptr %4, i64 %113
  %115 = load i64, ptr %114, align 1, !tbaa !13
  %116 = load i64, ptr %18, align 1, !tbaa !13
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %146

118:                                              ; preds = %112
  %119 = zext i32 %69 to i64
  %120 = icmp eq i32 %69, 0
  br i1 %120, label %.loopexit12, label %.preheader11

.preheader11:                                     ; preds = %118, %127
  %121 = phi i64 [ %128, %127 ], [ 0, %118 ]
  %122 = getelementptr inbounds nuw i8, ptr %114, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !31
  %124 = getelementptr inbounds nuw i8, ptr %18, i64 %121
  %125 = load i8, ptr %124, align 1, !tbaa !31
  %126 = icmp eq i8 %123, %125
  br i1 %126, label %127, label %.loopexit12

127:                                              ; preds = %.preheader11
  %128 = add nuw nsw i64 %121, 1
  %129 = icmp eq i64 %128, %119
  br i1 %129, label %.loopexit13, label %.preheader11, !llvm.loop !97

.loopexit12:                                      ; preds = %.preheader11, %118
  %130 = phi i64 [ 0, %118 ], [ %121, %.preheader11 ]
  %131 = icmp eq i64 %130, %119
  br i1 %131, label %.loopexit13, label %146

.loopexit13:                                      ; preds = %.loopexit12, %127
  %132 = getelementptr inbounds nuw i8, ptr %66, i64 4
  %133 = trunc i64 %63 to i32
  %134 = sub i32 %8, %69
  %135 = tail call i32 @llvm.umax.i32(i32 %134, i32 1)
  %136 = zext i32 %135 to i64
  store i32 %6, ptr %66, align 4, !tbaa !9
  %137 = zext i32 %2 to i64
  %138 = mul nuw i64 %136, %137
  %139 = udiv i64 %138, %7
  %140 = trunc i64 %139 to i32
  %141 = getelementptr inbounds nuw i8, ptr %66, i64 8
  %142 = load i32, ptr %141, align 4, !tbaa !12
  %143 = add i32 %142, %140
  store i32 %143, ptr %141, align 4, !tbaa !12
  %144 = add i32 %69, 1
  %145 = tail call i32 @llvm.umin.i32(i32 %144, i32 %8)
  store i32 %145, ptr %132, align 4, !tbaa !11
  br label %.loopexit15

146:                                              ; preds = %.loopexit12, %112, %62
  %147 = add nuw nsw i64 %63, 1
  %148 = icmp eq i64 %147, %14
  br i1 %148, label %.loopexit15, label %62, !llvm.loop !98

.loopexit15:                                      ; preds = %146, %.loopexit13, %.loopexit, %.loopexit17, %5
  %149 = phi i32 [ %55, %.loopexit17 ], [ %108, %.loopexit ], [ %133, %.loopexit13 ], [ 0, %5 ], [ 0, %146 ]
  ret i32 %149
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #13

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #13

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_finalizeDictionary.cold.1() unnamed_addr #16 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !72
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #23
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = tail call i32 @fflush(ptr noundef %3)
  %5 = load ptr, ptr @stderr, align 8, !tbaa !72
  %6 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 16, i64 1, ptr %5) #25
  %7 = load ptr, ptr @stderr, align 8, !tbaa !72
  %8 = tail call i32 @fflush(ptr noundef %7)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_analyzeEntropy.cold.1() unnamed_addr #16 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !72
  %2 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 19, i64 1, ptr %1) #25
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_analyzeEntropy.cold.2() unnamed_addr #16 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !72
  %2 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 48, i64 1, ptr %1) #25
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_analyzeEntropy.cold.3(i64 %0) unnamed_addr #16 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !72
  %3 = trunc i64 %0 to i32
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef %3) #23
  %5 = load ptr, ptr @stderr, align 8, !tbaa !72
  %6 = tail call i32 @fflush(ptr noundef %5)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_analyzeEntropy.cold.4(ptr nonnull readonly captures(none) %0, i64 range(i64 1, 32) %1) unnamed_addr #16 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 27, i64 1, ptr %3) #25
  %5 = load ptr, ptr @stderr, align 8, !tbaa !72
  %6 = tail call i32 @fflush(ptr noundef %5)
  br label %7

7:                                                ; preds = %7, %2
  %8 = phi i64 [ 0, %2 ], [ %16, %7 ]
  %9 = load ptr, ptr @stderr, align 8, !tbaa !72
  %10 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %8
  %11 = load i32, ptr %10, align 4, !tbaa !5
  %12 = trunc nuw nsw i64 %8 to i32
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.5, i32 noundef %12, i32 noundef %11) #23
  %14 = load ptr, ptr @stderr, align 8, !tbaa !72
  %15 = tail call i32 @fflush(ptr noundef %14)
  %16 = add nuw nsw i64 %8, 1
  %17 = icmp eq i64 %16, %1
  br i1 %17, label %18, label %7, !llvm.loop !99

18:                                               ; preds = %7
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_analyzeEntropy.cold.5() unnamed_addr #16 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !72
  %2 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 24, i64 1, ptr %1) #25
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_analyzeEntropy.cold.6() unnamed_addr #16 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !72
  %2 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 99, i64 1, ptr %1) #25
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_analyzeEntropy.cold.7() unnamed_addr #16 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !72
  %2 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 44, i64 1, ptr %1) #25
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_analyzeEntropy.cold.8() unnamed_addr #16 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !72
  %2 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 48, i64 1, ptr %1) #25
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_analyzeEntropy.cold.9() unnamed_addr #16 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !72
  %2 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 46, i64 1, ptr %1) #25
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_analyzeEntropy.cold.10() unnamed_addr #16 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !72
  %2 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 23, i64 1, ptr %1) #25
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_analyzeEntropy.cold.11() unnamed_addr #16 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !72
  %2 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 42, i64 1, ptr %1) #25
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_analyzeEntropy.cold.12() unnamed_addr #16 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !72
  %2 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 46, i64 1, ptr %1) #25
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_analyzeEntropy.cold.13() unnamed_addr #16 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !72
  %2 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 44, i64 1, ptr %1) #25
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_analyzeEntropy.cold.14() unnamed_addr #16 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !72
  %2 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 38, i64 1, ptr %1) #25
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_trainFromBuffer_legacy.cold.1() unnamed_addr #16 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !72
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #23
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_trainFromBuffer_legacy.cold.2() unnamed_addr #16 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !72
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef 2000) #23
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_trainFromBuffer_legacy.cold.3(i64 range(i64 0, 2097152001) %0, i32 %1) unnamed_addr #16 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = lshr i64 %0, 20
  %5 = trunc nuw nsw i64 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.30, i32 noundef %1, i32 noundef %5) #23
  %7 = load ptr, ptr @stderr, align 8, !tbaa !72
  %8 = tail call i32 @fflush(ptr noundef %7)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_trainFromBuffer_legacy.cold.4(i1 %0, i32 range(i32 4, 0) %1) unnamed_addr #16 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 22, i64 1, ptr %3) #25
  %5 = load ptr, ptr @stderr, align 8, !tbaa !72
  %6 = tail call i32 @fflush(ptr noundef %5)
  br i1 %0, label %7, label %12

7:                                                ; preds = %2
  %8 = load ptr, ptr @stderr, align 8, !tbaa !72
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.32, i32 noundef %1) #23
  %10 = load ptr, ptr @stderr, align 8, !tbaa !72
  %11 = tail call i32 @fflush(ptr noundef %10)
  br label %12

12:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_trainFromBuffer_legacy.cold.5(i32 range(i32 4, 0) %0, i32 %1) unnamed_addr #16 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  %5 = load ptr, ptr @stderr, align 8, !tbaa !72
  %6 = tail call i32 @fflush(ptr noundef %5)
  %7 = load ptr, ptr @stderr, align 8, !tbaa !72
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.35, i32 noundef %0, i32 noundef 7, i32 noundef %1) #23
  %9 = load ptr, ptr @stderr, align 8, !tbaa !72
  %10 = tail call i32 @fflush(ptr noundef %9)
  %11 = load ptr, ptr @stderr, align 8, !tbaa !72
  %12 = tail call i32 @fputc(i32 10, ptr %11)
  %13 = load ptr, ptr @stderr, align 8, !tbaa !72
  %14 = tail call i32 @fflush(ptr noundef %13)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_trainFromBuffer_legacy.cold.6(i32 range(i32 0, 2) %0, i32 range(i32 0, 26) %1) unnamed_addr #16 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = add nsw i32 %0, -1
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef %4, i32 noundef 0) #23
  %6 = load ptr, ptr @stderr, align 8, !tbaa !72
  %7 = tail call i32 @fflush(ptr noundef %6)
  %8 = load ptr, ptr @stderr, align 8, !tbaa !72
  %9 = add nsw i32 %1, -1
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.19, i32 noundef %9) #23
  %11 = load ptr, ptr @stderr, align 8, !tbaa !72
  %12 = tail call i32 @fflush(ptr noundef %11)
  ret void
}

; Function Attrs: cold minsize nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZDICT_trainFromBuffer_legacy.cold.7(i64 range(i64 2, 4294967296) %0, ptr nonnull readonly captures(none) %1, ptr nonnull writeonly captures(none) initializes((0, 8)) %2, ptr nonnull writeonly captures(none) %3) unnamed_addr #17 {
  %5 = add nsw i64 %0, -1
  %6 = and i64 %5, 7
  %7 = icmp eq i64 %6, 0
  %8 = select i1 %7, i64 8, i64 %6
  %9 = sub nsw i64 %5, %8
  %10 = add nsw i64 %9, 1
  store i64 %10, ptr %2, align 8
  br label %14

11:                                               ; preds = %14
  %12 = add <4 x i32> %45, %44
  %13 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %12)
  store i32 %13, ptr %3, align 4
  ret void

14:                                               ; preds = %14, %4
  %15 = phi i64 [ 0, %4 ], [ %18, %14 ]
  %16 = phi <4 x i32> [ zeroinitializer, %4 ], [ %44, %14 ]
  %17 = phi <4 x i32> [ zeroinitializer, %4 ], [ %45, %14 ]
  %18 = add i64 %15, 8
  %19 = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %15
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 40
  %23 = getelementptr inbounds nuw i8, ptr %19, i64 52
  %24 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 76
  %26 = getelementptr inbounds nuw i8, ptr %19, i64 88
  %.split = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %18
  %27 = getelementptr inbounds nuw i8, ptr %.split, i64 4
  %28 = load i32, ptr %20, align 4, !tbaa !11
  %29 = load i32, ptr %21, align 4, !tbaa !11
  %30 = load i32, ptr %22, align 4, !tbaa !11
  %31 = load i32, ptr %23, align 4, !tbaa !11
  %32 = insertelement <4 x i32> poison, i32 %28, i64 0
  %33 = insertelement <4 x i32> %32, i32 %29, i64 1
  %34 = insertelement <4 x i32> %33, i32 %30, i64 2
  %35 = insertelement <4 x i32> %34, i32 %31, i64 3
  %36 = load i32, ptr %24, align 4, !tbaa !11
  %37 = load i32, ptr %25, align 4, !tbaa !11
  %38 = load i32, ptr %26, align 4, !tbaa !11
  %39 = load i32, ptr %27, align 4, !tbaa !11
  %40 = insertelement <4 x i32> poison, i32 %36, i64 0
  %41 = insertelement <4 x i32> %40, i32 %37, i64 1
  %42 = insertelement <4 x i32> %41, i32 %38, i64 2
  %43 = insertelement <4 x i32> %42, i32 %39, i64 3
  %44 = add <4 x i32> %35, %16
  %45 = add <4 x i32> %43, %17
  %46 = icmp eq i64 %18, %9
  br i1 %46, label %11, label %14, !llvm.loop !100
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_trainFromBuffer_legacy.cold.8(i64 range(i64 512, 0) %0) unnamed_addr #16 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !72
  %3 = lshr i64 %0, 20
  %4 = trunc i64 %3 to i32
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef %4) #23
  %6 = load ptr, ptr @stderr, align 8, !tbaa !72
  %7 = tail call i32 @fflush(ptr noundef %6)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_trainFromBuffer_legacy.cold.9(i32 %0) unnamed_addr #16 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !72
  %3 = add i32 %0, 1
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef %3) #23
  %5 = load ptr, ptr @stderr, align 8, !tbaa !72
  %6 = tail call i32 @fflush(ptr noundef %5)
  %7 = load ptr, ptr @stderr, align 8, !tbaa !72
  %8 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 90, i64 1, ptr %7) #25
  %9 = load ptr, ptr @stderr, align 8, !tbaa !72
  %10 = tail call i32 @fflush(ptr noundef %9)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_trainFromBuffer_legacy.cold.10(i64 range(i64 256, 0) %0, i32 range(i32 128, 0) %1, i32 %2) unnamed_addr #16 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !72
  %5 = trunc i64 %0 to i32
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.26, i32 noundef %1, i32 noundef %5) #23
  %7 = load ptr, ptr @stderr, align 8, !tbaa !72
  %8 = tail call i32 @fflush(ptr noundef %7)
  %9 = load ptr, ptr @stderr, align 8, !tbaa !72
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.27, i32 noundef %2) #23
  %11 = load ptr, ptr @stderr, align 8, !tbaa !72
  %12 = tail call i32 @fflush(ptr noundef %11)
  %13 = load ptr, ptr @stderr, align 8, !tbaa !72
  %14 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 54, i64 1, ptr %13) #25
  %15 = load ptr, ptr @stderr, align 8, !tbaa !72
  %16 = tail call i32 @fflush(ptr noundef %15)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_addEntropyTablesFromBuffer_advanced.cold.1() unnamed_addr #16 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !72
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #23
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = tail call i32 @fflush(ptr noundef %3)
  %5 = load ptr, ptr @stderr, align 8, !tbaa !72
  %6 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 16, i64 1, ptr %5) #25
  %7 = load ptr, ptr @stderr, align 8, !tbaa !72
  %8 = tail call i32 @fflush(ptr noundef %7)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { cold minsize nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold minsize nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { noinline }
attributes #23 = { cold nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { cold }

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
