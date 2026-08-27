; ModuleID = '<stdin>'
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
  br i1 %28, label %.preheader114.preheader, label %29

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
  br i1 %46, label %.loopexit42, label %.preheader114.preheader

.preheader114.preheader:                          ; preds = %43, %26
  %.ph94 = phi i64 [ 0, %26 ], [ %30, %43 ]
  %.ph95 = phi i64 [ 0, %26 ], [ %45, %43 ]
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.preheader, %.preheader114
  %47 = phi i64 [ %52, %.preheader114 ], [ %.ph94, %.preheader114.preheader ]
  %48 = phi i64 [ %51, %.preheader114 ], [ %.ph95, %.preheader114.preheader ]
  %49 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %47
  %50 = load i64, ptr %49, align 8, !tbaa !13
  %51 = add i64 %50, %48
  %52 = add nuw nsw i64 %47, 1
  %53 = icmp eq i64 %52, %27
  br i1 %53, label %.loopexit42, label %.preheader114, !llvm.loop !19

.loopexit42:                                      ; preds = %.preheader114, %43, %9
  %54 = phi i64 [ 0, %9 ], [ %45, %43 ], [ %51, %.preheader114 ]
  %55 = tail call i32 @llvm.umax.i32(i32 %5, i32 1)
  %56 = zext i32 %55 to i64
  %57 = udiv i64 %54, %56
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  %58 = icmp eq i32 %23, 0
  br i1 %58, label %630, label %59

59:                                               ; preds = %.loopexit42
  %60 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store <4 x i32> splat (i32 1), ptr %10, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %60, align 16, !tbaa !5
  %61 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %62 = getelementptr inbounds nuw i8, ptr %10, i64 48
  store <4 x i32> splat (i32 1), ptr %61, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %62, align 16, !tbaa !5
  %63 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %64 = getelementptr inbounds nuw i8, ptr %10, i64 80
  store <4 x i32> splat (i32 1), ptr %63, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %64, align 16, !tbaa !5
  %65 = getelementptr inbounds nuw i8, ptr %10, i64 96
  %66 = getelementptr inbounds nuw i8, ptr %10, i64 112
  store <4 x i32> splat (i32 1), ptr %65, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %66, align 16, !tbaa !5
  %67 = getelementptr inbounds nuw i8, ptr %10, i64 128
  %68 = getelementptr inbounds nuw i8, ptr %10, i64 144
  store <4 x i32> splat (i32 1), ptr %67, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %68, align 16, !tbaa !5
  %69 = getelementptr inbounds nuw i8, ptr %10, i64 160
  %70 = getelementptr inbounds nuw i8, ptr %10, i64 176
  store <4 x i32> splat (i32 1), ptr %69, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %70, align 16, !tbaa !5
  %71 = getelementptr inbounds nuw i8, ptr %10, i64 192
  %72 = getelementptr inbounds nuw i8, ptr %10, i64 208
  store <4 x i32> splat (i32 1), ptr %71, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %72, align 16, !tbaa !5
  %73 = getelementptr inbounds nuw i8, ptr %10, i64 224
  %74 = getelementptr inbounds nuw i8, ptr %10, i64 240
  store <4 x i32> splat (i32 1), ptr %73, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %74, align 16, !tbaa !5
  %75 = getelementptr inbounds nuw i8, ptr %10, i64 256
  %76 = getelementptr inbounds nuw i8, ptr %10, i64 272
  store <4 x i32> splat (i32 1), ptr %75, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %76, align 16, !tbaa !5
  %77 = getelementptr inbounds nuw i8, ptr %10, i64 288
  %78 = getelementptr inbounds nuw i8, ptr %10, i64 304
  store <4 x i32> splat (i32 1), ptr %77, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %78, align 16, !tbaa !5
  %79 = getelementptr inbounds nuw i8, ptr %10, i64 320
  %80 = getelementptr inbounds nuw i8, ptr %10, i64 336
  store <4 x i32> splat (i32 1), ptr %79, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %80, align 16, !tbaa !5
  %81 = getelementptr inbounds nuw i8, ptr %10, i64 352
  %82 = getelementptr inbounds nuw i8, ptr %10, i64 368
  store <4 x i32> splat (i32 1), ptr %81, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %82, align 16, !tbaa !5
  %83 = getelementptr inbounds nuw i8, ptr %10, i64 384
  %84 = getelementptr inbounds nuw i8, ptr %10, i64 400
  store <4 x i32> splat (i32 1), ptr %83, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %84, align 16, !tbaa !5
  %85 = getelementptr inbounds nuw i8, ptr %10, i64 416
  %86 = getelementptr inbounds nuw i8, ptr %10, i64 432
  store <4 x i32> splat (i32 1), ptr %85, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %86, align 16, !tbaa !5
  %87 = getelementptr inbounds nuw i8, ptr %10, i64 448
  %88 = getelementptr inbounds nuw i8, ptr %10, i64 464
  store <4 x i32> splat (i32 1), ptr %87, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %88, align 16, !tbaa !5
  %89 = getelementptr inbounds nuw i8, ptr %10, i64 480
  %90 = getelementptr inbounds nuw i8, ptr %10, i64 496
  store <4 x i32> splat (i32 1), ptr %89, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %90, align 16, !tbaa !5
  %91 = getelementptr inbounds nuw i8, ptr %10, i64 512
  %92 = getelementptr inbounds nuw i8, ptr %10, i64 528
  store <4 x i32> splat (i32 1), ptr %91, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %92, align 16, !tbaa !5
  %93 = getelementptr inbounds nuw i8, ptr %10, i64 544
  %94 = getelementptr inbounds nuw i8, ptr %10, i64 560
  store <4 x i32> splat (i32 1), ptr %93, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %94, align 16, !tbaa !5
  %95 = getelementptr inbounds nuw i8, ptr %10, i64 576
  %96 = getelementptr inbounds nuw i8, ptr %10, i64 592
  store <4 x i32> splat (i32 1), ptr %95, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %96, align 16, !tbaa !5
  %97 = getelementptr inbounds nuw i8, ptr %10, i64 608
  %98 = getelementptr inbounds nuw i8, ptr %10, i64 624
  store <4 x i32> splat (i32 1), ptr %97, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %98, align 16, !tbaa !5
  %99 = getelementptr inbounds nuw i8, ptr %10, i64 640
  %100 = getelementptr inbounds nuw i8, ptr %10, i64 656
  store <4 x i32> splat (i32 1), ptr %99, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %100, align 16, !tbaa !5
  %101 = getelementptr inbounds nuw i8, ptr %10, i64 672
  %102 = getelementptr inbounds nuw i8, ptr %10, i64 688
  store <4 x i32> splat (i32 1), ptr %101, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %102, align 16, !tbaa !5
  %103 = getelementptr inbounds nuw i8, ptr %10, i64 704
  %104 = getelementptr inbounds nuw i8, ptr %10, i64 720
  store <4 x i32> splat (i32 1), ptr %103, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %104, align 16, !tbaa !5
  %105 = getelementptr inbounds nuw i8, ptr %10, i64 736
  %106 = getelementptr inbounds nuw i8, ptr %10, i64 752
  store <4 x i32> splat (i32 1), ptr %105, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %106, align 16, !tbaa !5
  %107 = getelementptr inbounds nuw i8, ptr %10, i64 768
  %108 = getelementptr inbounds nuw i8, ptr %10, i64 784
  store <4 x i32> splat (i32 1), ptr %107, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %108, align 16, !tbaa !5
  %109 = getelementptr inbounds nuw i8, ptr %10, i64 800
  %110 = getelementptr inbounds nuw i8, ptr %10, i64 816
  store <4 x i32> splat (i32 1), ptr %109, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %110, align 16, !tbaa !5
  %111 = getelementptr inbounds nuw i8, ptr %10, i64 832
  %112 = getelementptr inbounds nuw i8, ptr %10, i64 848
  store <4 x i32> splat (i32 1), ptr %111, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %112, align 16, !tbaa !5
  %113 = getelementptr inbounds nuw i8, ptr %10, i64 864
  %114 = getelementptr inbounds nuw i8, ptr %10, i64 880
  store <4 x i32> splat (i32 1), ptr %113, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %114, align 16, !tbaa !5
  %115 = getelementptr inbounds nuw i8, ptr %10, i64 896
  %116 = getelementptr inbounds nuw i8, ptr %10, i64 912
  store <4 x i32> splat (i32 1), ptr %115, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %116, align 16, !tbaa !5
  %117 = getelementptr inbounds nuw i8, ptr %10, i64 928
  %118 = getelementptr inbounds nuw i8, ptr %10, i64 944
  store <4 x i32> splat (i32 1), ptr %117, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %118, align 16, !tbaa !5
  %119 = getelementptr inbounds nuw i8, ptr %10, i64 960
  %120 = getelementptr inbounds nuw i8, ptr %10, i64 976
  store <4 x i32> splat (i32 1), ptr %119, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %120, align 16, !tbaa !5
  %121 = getelementptr inbounds nuw i8, ptr %10, i64 992
  %122 = getelementptr inbounds nuw i8, ptr %10, i64 1008
  store <4 x i32> splat (i32 1), ptr %121, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %122, align 16, !tbaa !5
  %123 = sub nuw nsw i32 32, %23
  %124 = zext nneg i32 %123 to i64
  %125 = icmp ult i32 %22, 128
  br i1 %125, label %.preheader112.preheader, label %126

126:                                              ; preds = %59
  %127 = and i64 %124, 56
  br label %128

128:                                              ; preds = %128, %126
  %129 = phi i64 [ 0, %126 ], [ %132, %128 ]
  %130 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %129
  %131 = getelementptr inbounds nuw i8, ptr %130, i64 16
  store <4 x i32> splat (i32 1), ptr %130, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %131, align 16, !tbaa !5
  %132 = add nuw i64 %129, 8
  %133 = icmp eq i64 %132, %127
  br i1 %133, label %134, label %128, !llvm.loop !20

134:                                              ; preds = %128
  %135 = icmp eq i64 %127, %124
  br i1 %135, label %.loopexit41, label %.preheader112.preheader

.preheader112.preheader:                          ; preds = %134, %59
  %.ph93 = phi i64 [ 0, %59 ], [ %127, %134 ]
  br label %.preheader112

.preheader112:                                    ; preds = %.preheader112.preheader, %.preheader112
  %136 = phi i64 [ %138, %.preheader112 ], [ %.ph93, %.preheader112.preheader ]
  %137 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %136
  store i32 1, ptr %137, align 4, !tbaa !5
  %138 = add nuw nsw i64 %136, 1
  %139 = icmp eq i64 %138, %124
  br i1 %139, label %.loopexit41, label %.preheader112, !llvm.loop !21

.loopexit41:                                      ; preds = %.preheader112, %134
  store <4 x i32> splat (i32 1), ptr %14, align 16, !tbaa !5
  %140 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store <4 x i32> splat (i32 1), ptr %140, align 16, !tbaa !5
  %141 = getelementptr inbounds nuw i8, ptr %14, i64 32
  store <4 x i32> splat (i32 1), ptr %141, align 16, !tbaa !5
  %142 = getelementptr inbounds nuw i8, ptr %14, i64 48
  store <4 x i32> splat (i32 1), ptr %142, align 16, !tbaa !5
  %143 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store <4 x i32> splat (i32 1), ptr %143, align 16, !tbaa !5
  %144 = getelementptr inbounds nuw i8, ptr %14, i64 80
  store <4 x i32> splat (i32 1), ptr %144, align 16, !tbaa !5
  %145 = getelementptr inbounds nuw i8, ptr %14, i64 96
  store <4 x i32> splat (i32 1), ptr %145, align 16, !tbaa !5
  %146 = getelementptr inbounds nuw i8, ptr %14, i64 112
  store <4 x i32> splat (i32 1), ptr %146, align 16, !tbaa !5
  %147 = getelementptr inbounds nuw i8, ptr %14, i64 128
  store <4 x i32> splat (i32 1), ptr %147, align 16, !tbaa !5
  %148 = getelementptr inbounds nuw i8, ptr %14, i64 144
  store <4 x i32> splat (i32 1), ptr %148, align 16, !tbaa !5
  %149 = getelementptr inbounds nuw i8, ptr %14, i64 160
  store <4 x i32> splat (i32 1), ptr %149, align 16, !tbaa !5
  %150 = getelementptr inbounds nuw i8, ptr %14, i64 176
  store <4 x i32> splat (i32 1), ptr %150, align 16, !tbaa !5
  %151 = getelementptr inbounds nuw i8, ptr %14, i64 192
  store <4 x i32> splat (i32 1), ptr %151, align 16, !tbaa !5
  %152 = getelementptr inbounds nuw i8, ptr %14, i64 208
  store i32 1, ptr %152, align 16, !tbaa !5
  store <4 x i32> splat (i32 1), ptr %16, align 16, !tbaa !5
  %153 = getelementptr inbounds nuw i8, ptr %16, i64 16
  store <4 x i32> splat (i32 1), ptr %153, align 16, !tbaa !5
  %154 = getelementptr inbounds nuw i8, ptr %16, i64 32
  store <4 x i32> splat (i32 1), ptr %154, align 16, !tbaa !5
  %155 = getelementptr inbounds nuw i8, ptr %16, i64 48
  store <4 x i32> splat (i32 1), ptr %155, align 16, !tbaa !5
  %156 = getelementptr inbounds nuw i8, ptr %16, i64 64
  store <4 x i32> splat (i32 1), ptr %156, align 16, !tbaa !5
  %157 = getelementptr inbounds nuw i8, ptr %16, i64 80
  store <4 x i32> splat (i32 1), ptr %157, align 16, !tbaa !5
  %158 = getelementptr inbounds nuw i8, ptr %16, i64 96
  store <4 x i32> splat (i32 1), ptr %158, align 16, !tbaa !5
  %159 = getelementptr inbounds nuw i8, ptr %16, i64 112
  store <4 x i32> splat (i32 1), ptr %159, align 16, !tbaa !5
  %160 = getelementptr inbounds nuw i8, ptr %16, i64 128
  store <4 x i32> splat (i32 1), ptr %160, align 16, !tbaa !5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %18, i8 0, i64 4096, i1 false)
  %161 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i32 1, ptr %161, align 16, !tbaa !5
  %162 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 1, ptr %162, align 16, !tbaa !5
  %163 = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 1, ptr %163, align 4, !tbaa !5
  %164 = icmp eq i32 %2, 0
  %165 = select i1 %164, i32 3, i32 %2
  call void @ZSTD_getParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_parameters) align 4 %19, i32 noundef %165, i64 noundef %57, i64 noundef %7) #19
  %166 = call ptr @ZSTD_createCDict_advanced(ptr noundef %6, i64 noundef %7, i32 noundef 1, i32 noundef 1, ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %19, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 @ZSTD_defaultCMem) #19
  %167 = call ptr @ZSTD_createCCtx() #19
  %168 = call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #20
  %169 = icmp ne ptr %166, null
  %170 = icmp ne ptr %167, null
  %171 = select i1 %169, i1 %170, i1 false
  %172 = icmp ne ptr %168, null
  %173 = and i1 %171, %172
  br i1 %173, label %174, label %183

174:                                              ; preds = %.loopexit41
  br i1 %25, label %.loopexit40, label %175

175:                                              ; preds = %174
  %176 = load i32, ptr %19, align 8, !tbaa !22
  %177 = shl nuw i32 1, %176
  %178 = call i32 @llvm.smin.i32(i32 %177, i32 131072)
  %179 = sext i32 %178 to i64
  %180 = icmp eq i32 %8, 0
  %181 = icmp ugt i32 %8, 2
  %182 = zext i32 %5 to i64
  br label %186

183:                                              ; preds = %.loopexit41
  %184 = icmp eq i32 %8, 0
  br i1 %184, label %630, label %185

185:                                              ; preds = %183
  call fastcc void @ZDICT_analyzeEntropy.cold.1() #22
  br label %630

186:                                              ; preds = %433, %175
  %187 = phi i64 [ 0, %175 ], [ %436, %433 ]
  %188 = phi i64 [ 0, %175 ], [ %435, %433 ]
  %189 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %187
  %190 = load i64, ptr %189, align 8, !tbaa !13
  %191 = call i64 @llvm.umin.i64(i64 %190, i64 %179)
  %192 = call i64 @ZSTD_compressBegin_usingCDict_deprecated(ptr noundef %167, ptr noundef %166) #19
  %193 = icmp ult i64 %192, -119
  br i1 %193, label %196, label %194

194:                                              ; preds = %186
  br i1 %180, label %433, label %195

195:                                              ; preds = %194
  call fastcc void @ZDICT_analyzeEntropy.cold.2() #22
  br label %433

196:                                              ; preds = %186
  %197 = getelementptr inbounds nuw i8, ptr %3, i64 %188
  %198 = call i64 @ZSTD_compressBlock_deprecated(ptr noundef %167, ptr noundef %168, i64 noundef 131072, ptr noundef %197, i64 noundef %191) #19
  %199 = icmp ult i64 %198, -119
  br i1 %199, label %202, label %200

200:                                              ; preds = %196
  br i1 %181, label %201, label %433

201:                                              ; preds = %200
  call fastcc void @ZDICT_analyzeEntropy.cold.3(i64 %191) #22
  br label %433

202:                                              ; preds = %196
  %203 = icmp eq i64 %198, 0
  br i1 %203, label %433, label %204

204:                                              ; preds = %202
  %205 = call ptr @ZSTD_getSeqStore(ptr noundef %167) #19
  %206 = getelementptr inbounds nuw i8, ptr %205, i64 16
  %207 = load ptr, ptr %206, align 8, !tbaa !25
  %208 = getelementptr inbounds nuw i8, ptr %205, i64 24
  %209 = load ptr, ptr %208, align 8, !tbaa !30
  %210 = icmp ult ptr %207, %209
  br i1 %210, label %211, label %.loopexit37

211:                                              ; preds = %204
  %212 = ptrtoint ptr %209 to i64
  %213 = ptrtoint ptr %207 to i64
  %214 = sub i64 %212, %213
  %215 = and i64 %214, 3
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %.loopexit39, label %.preheader38

.preheader38:                                     ; preds = %211, %.preheader38
  %217 = phi ptr [ %224, %.preheader38 ], [ %207, %211 ]
  %218 = phi i64 [ %225, %.preheader38 ], [ 0, %211 ]
  %219 = load i8, ptr %217, align 1, !tbaa !31
  %220 = zext i8 %219 to i64
  %221 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !5
  %223 = add i32 %222, 1
  store i32 %223, ptr %221, align 4, !tbaa !5
  %224 = getelementptr inbounds nuw i8, ptr %217, i64 1
  %225 = add nuw nsw i64 %218, 1
  %226 = icmp eq i64 %225, %215
  br i1 %226, label %.loopexit39, label %.preheader38, !llvm.loop !32

.loopexit39:                                      ; preds = %.preheader38, %211
  %227 = phi ptr [ %207, %211 ], [ %224, %.preheader38 ]
  %228 = sub i64 %213, %212
  %229 = icmp ugt i64 %228, -4
  br i1 %229, label %.loopexit37, label %.preheader36

.preheader36:                                     ; preds = %.loopexit39, %.preheader36
  %230 = phi ptr [ %254, %.preheader36 ], [ %227, %.loopexit39 ]
  %231 = load i8, ptr %230, align 1, !tbaa !31
  %232 = zext i8 %231 to i64
  %233 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !5
  %235 = add i32 %234, 1
  store i32 %235, ptr %233, align 4, !tbaa !5
  %236 = getelementptr inbounds nuw i8, ptr %230, i64 1
  %237 = load i8, ptr %236, align 1, !tbaa !31
  %238 = zext i8 %237 to i64
  %239 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %238
  %240 = load i32, ptr %239, align 4, !tbaa !5
  %241 = add i32 %240, 1
  store i32 %241, ptr %239, align 4, !tbaa !5
  %242 = getelementptr inbounds nuw i8, ptr %230, i64 2
  %243 = load i8, ptr %242, align 1, !tbaa !31
  %244 = zext i8 %243 to i64
  %245 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !5
  %247 = add i32 %246, 1
  store i32 %247, ptr %245, align 4, !tbaa !5
  %248 = getelementptr inbounds nuw i8, ptr %230, i64 3
  %249 = load i8, ptr %248, align 1, !tbaa !31
  %250 = zext i8 %249 to i64
  %251 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %250
  %252 = load i32, ptr %251, align 4, !tbaa !5
  %253 = add i32 %252, 1
  store i32 %253, ptr %251, align 4, !tbaa !5
  %254 = getelementptr inbounds nuw i8, ptr %230, i64 4
  %255 = icmp eq ptr %254, %209
  br i1 %255, label %.loopexit37, label %.preheader36, !llvm.loop !34

.loopexit37:                                      ; preds = %.preheader36, %.loopexit39, %204
  %256 = getelementptr inbounds nuw i8, ptr %205, i64 8
  %257 = load ptr, ptr %256, align 8, !tbaa !35
  %258 = load ptr, ptr %205, align 8, !tbaa !36
  %259 = ptrtoint ptr %257 to i64
  %260 = ptrtoint ptr %258 to i64
  %261 = sub i64 %259, %260
  %262 = lshr i64 %261, 3
  %263 = trunc i64 %262 to i32
  %264 = call i32 @ZSTD_seqToCodes(ptr noundef nonnull %205) #19
  %265 = getelementptr inbounds nuw i8, ptr %205, i64 48
  %266 = load ptr, ptr %265, align 8, !tbaa !37
  %267 = icmp eq i32 %263, 0
  br i1 %267, label %433, label %268

268:                                              ; preds = %.loopexit37
  %269 = and i64 %262, 4294967295
  %270 = add nsw i64 %269, -1
  %271 = and i64 %262, 3
  %272 = icmp ult i64 %270, 3
  br i1 %272, label %.loopexit35, label %273

273:                                              ; preds = %268
  %274 = and i64 %262, 4294967292
  %275 = getelementptr inbounds nuw i8, ptr %266, i64 1
  %276 = getelementptr inbounds nuw i8, ptr %266, i64 2
  %277 = getelementptr inbounds nuw i8, ptr %266, i64 3
  br label %278

278:                                              ; preds = %278, %273
  %279 = phi i64 [ 0, %273 ], [ %304, %278 ]
  %280 = getelementptr inbounds nuw i8, ptr %266, i64 %279
  %281 = load i8, ptr %280, align 1, !tbaa !31
  %282 = zext i8 %281 to i64
  %283 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !5
  %285 = add i32 %284, 1
  store i32 %285, ptr %283, align 4, !tbaa !5
  %286 = getelementptr inbounds nuw i8, ptr %275, i64 %279
  %287 = load i8, ptr %286, align 1, !tbaa !31
  %288 = zext i8 %287 to i64
  %289 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !5
  %291 = add i32 %290, 1
  store i32 %291, ptr %289, align 4, !tbaa !5
  %292 = getelementptr inbounds nuw i8, ptr %276, i64 %279
  %293 = load i8, ptr %292, align 1, !tbaa !31
  %294 = zext i8 %293 to i64
  %295 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %294
  %296 = load i32, ptr %295, align 4, !tbaa !5
  %297 = add i32 %296, 1
  store i32 %297, ptr %295, align 4, !tbaa !5
  %298 = getelementptr inbounds nuw i8, ptr %277, i64 %279
  %299 = load i8, ptr %298, align 1, !tbaa !31
  %300 = zext i8 %299 to i64
  %301 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %300
  %302 = load i32, ptr %301, align 4, !tbaa !5
  %303 = add i32 %302, 1
  store i32 %303, ptr %301, align 4, !tbaa !5
  %304 = add nuw i64 %279, 4
  %305 = icmp eq i64 %304, %274
  br i1 %305, label %.loopexit35, label %278, !llvm.loop !38

.loopexit35:                                      ; preds = %278, %268
  %306 = phi i64 [ 0, %268 ], [ %274, %278 ]
  %307 = icmp eq i64 %271, 0
  br i1 %307, label %.loopexit34, label %.preheader33

.preheader33:                                     ; preds = %.loopexit35, %.preheader33
  %308 = phi i64 [ %316, %.preheader33 ], [ %306, %.loopexit35 ]
  %309 = phi i64 [ %317, %.preheader33 ], [ 0, %.loopexit35 ]
  %310 = getelementptr inbounds nuw i8, ptr %266, i64 %308
  %311 = load i8, ptr %310, align 1, !tbaa !31
  %312 = zext i8 %311 to i64
  %313 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %312
  %314 = load i32, ptr %313, align 4, !tbaa !5
  %315 = add i32 %314, 1
  store i32 %315, ptr %313, align 4, !tbaa !5
  %316 = add nuw nsw i64 %308, 1
  %317 = add nuw nsw i64 %309, 1
  %318 = icmp eq i64 %317, %271
  br i1 %318, label %.loopexit34, label %.preheader33, !llvm.loop !39

.loopexit34:                                      ; preds = %.preheader33, %.loopexit35
  %319 = getelementptr inbounds nuw i8, ptr %205, i64 40
  %320 = load ptr, ptr %319, align 8, !tbaa !40
  br i1 %272, label %.loopexit32, label %321

321:                                              ; preds = %.loopexit34
  %322 = and i64 %262, 4294967292
  %323 = getelementptr inbounds nuw i8, ptr %320, i64 1
  %324 = getelementptr inbounds nuw i8, ptr %320, i64 2
  %325 = getelementptr inbounds nuw i8, ptr %320, i64 3
  br label %326

326:                                              ; preds = %326, %321
  %327 = phi i64 [ 0, %321 ], [ %352, %326 ]
  %328 = getelementptr inbounds nuw i8, ptr %320, i64 %327
  %329 = load i8, ptr %328, align 1, !tbaa !31
  %330 = zext i8 %329 to i64
  %331 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %330
  %332 = load i32, ptr %331, align 4, !tbaa !5
  %333 = add i32 %332, 1
  store i32 %333, ptr %331, align 4, !tbaa !5
  %334 = getelementptr inbounds nuw i8, ptr %323, i64 %327
  %335 = load i8, ptr %334, align 1, !tbaa !31
  %336 = zext i8 %335 to i64
  %337 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %336
  %338 = load i32, ptr %337, align 4, !tbaa !5
  %339 = add i32 %338, 1
  store i32 %339, ptr %337, align 4, !tbaa !5
  %340 = getelementptr inbounds nuw i8, ptr %324, i64 %327
  %341 = load i8, ptr %340, align 1, !tbaa !31
  %342 = zext i8 %341 to i64
  %343 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %342
  %344 = load i32, ptr %343, align 4, !tbaa !5
  %345 = add i32 %344, 1
  store i32 %345, ptr %343, align 4, !tbaa !5
  %346 = getelementptr inbounds nuw i8, ptr %325, i64 %327
  %347 = load i8, ptr %346, align 1, !tbaa !31
  %348 = zext i8 %347 to i64
  %349 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %348
  %350 = load i32, ptr %349, align 4, !tbaa !5
  %351 = add i32 %350, 1
  store i32 %351, ptr %349, align 4, !tbaa !5
  %352 = add nuw i64 %327, 4
  %353 = icmp eq i64 %352, %322
  br i1 %353, label %.loopexit32, label %326, !llvm.loop !41

.loopexit32:                                      ; preds = %326, %.loopexit34
  %354 = phi i64 [ 0, %.loopexit34 ], [ %322, %326 ]
  br i1 %307, label %.loopexit31, label %.preheader30

.preheader30:                                     ; preds = %.loopexit32, %.preheader30
  %355 = phi i64 [ %363, %.preheader30 ], [ %354, %.loopexit32 ]
  %356 = phi i64 [ %364, %.preheader30 ], [ 0, %.loopexit32 ]
  %357 = getelementptr inbounds nuw i8, ptr %320, i64 %355
  %358 = load i8, ptr %357, align 1, !tbaa !31
  %359 = zext i8 %358 to i64
  %360 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %359
  %361 = load i32, ptr %360, align 4, !tbaa !5
  %362 = add i32 %361, 1
  store i32 %362, ptr %360, align 4, !tbaa !5
  %363 = add nuw nsw i64 %355, 1
  %364 = add nuw nsw i64 %356, 1
  %365 = icmp eq i64 %364, %271
  br i1 %365, label %.loopexit31, label %.preheader30, !llvm.loop !42

.loopexit31:                                      ; preds = %.preheader30, %.loopexit32
  %366 = getelementptr inbounds nuw i8, ptr %205, i64 32
  %367 = load ptr, ptr %366, align 8, !tbaa !43
  br i1 %272, label %.loopexit29, label %368

368:                                              ; preds = %.loopexit31
  %369 = and i64 %262, 4294967292
  %370 = getelementptr inbounds nuw i8, ptr %367, i64 1
  %371 = getelementptr inbounds nuw i8, ptr %367, i64 2
  %372 = getelementptr inbounds nuw i8, ptr %367, i64 3
  br label %373

373:                                              ; preds = %373, %368
  %374 = phi i64 [ 0, %368 ], [ %399, %373 ]
  %375 = getelementptr inbounds nuw i8, ptr %367, i64 %374
  %376 = load i8, ptr %375, align 1, !tbaa !31
  %377 = zext i8 %376 to i64
  %378 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %377
  %379 = load i32, ptr %378, align 4, !tbaa !5
  %380 = add i32 %379, 1
  store i32 %380, ptr %378, align 4, !tbaa !5
  %381 = getelementptr inbounds nuw i8, ptr %370, i64 %374
  %382 = load i8, ptr %381, align 1, !tbaa !31
  %383 = zext i8 %382 to i64
  %384 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %383
  %385 = load i32, ptr %384, align 4, !tbaa !5
  %386 = add i32 %385, 1
  store i32 %386, ptr %384, align 4, !tbaa !5
  %387 = getelementptr inbounds nuw i8, ptr %371, i64 %374
  %388 = load i8, ptr %387, align 1, !tbaa !31
  %389 = zext i8 %388 to i64
  %390 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %389
  %391 = load i32, ptr %390, align 4, !tbaa !5
  %392 = add i32 %391, 1
  store i32 %392, ptr %390, align 4, !tbaa !5
  %393 = getelementptr inbounds nuw i8, ptr %372, i64 %374
  %394 = load i8, ptr %393, align 1, !tbaa !31
  %395 = zext i8 %394 to i64
  %396 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %395
  %397 = load i32, ptr %396, align 4, !tbaa !5
  %398 = add i32 %397, 1
  store i32 %398, ptr %396, align 4, !tbaa !5
  %399 = add nuw i64 %374, 4
  %400 = icmp eq i64 %399, %369
  br i1 %400, label %.loopexit29, label %373, !llvm.loop !44

.loopexit29:                                      ; preds = %373, %.loopexit31
  %401 = phi i64 [ 0, %.loopexit31 ], [ %369, %373 ]
  br i1 %307, label %.loopexit28, label %.preheader

.preheader:                                       ; preds = %.loopexit29, %.preheader
  %402 = phi i64 [ %410, %.preheader ], [ %401, %.loopexit29 ]
  %403 = phi i64 [ %411, %.preheader ], [ 0, %.loopexit29 ]
  %404 = getelementptr inbounds nuw i8, ptr %367, i64 %402
  %405 = load i8, ptr %404, align 1, !tbaa !31
  %406 = zext i8 %405 to i64
  %407 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %406
  %408 = load i32, ptr %407, align 4, !tbaa !5
  %409 = add i32 %408, 1
  store i32 %409, ptr %407, align 4, !tbaa !5
  %410 = add nuw nsw i64 %402, 1
  %411 = add nuw nsw i64 %403, 1
  %412 = icmp eq i64 %411, %271
  br i1 %412, label %.loopexit28, label %.preheader, !llvm.loop !45

.loopexit28:                                      ; preds = %.preheader, %.loopexit29
  %413 = icmp eq i32 %263, 1
  br i1 %413, label %433, label %414

414:                                              ; preds = %.loopexit28
  %415 = load ptr, ptr %205, align 8, !tbaa !36
  %416 = load i32, ptr %415, align 4, !tbaa !46
  %417 = add i32 %416, -3
  %418 = getelementptr inbounds nuw i8, ptr %415, i64 8
  %419 = load i32, ptr %418, align 4, !tbaa !46
  %420 = add i32 %419, -3
  %421 = icmp ugt i32 %417, 1023
  %422 = select i1 %421, i32 0, i32 %417
  %423 = icmp ugt i32 %420, 1023
  %424 = select i1 %423, i32 0, i32 %420
  %425 = zext i32 %422 to i64
  %426 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %425
  %427 = load i32, ptr %426, align 4, !tbaa !5
  %428 = add i32 %427, 3
  store i32 %428, ptr %426, align 4, !tbaa !5
  %429 = zext i32 %424 to i64
  %430 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %429
  %431 = load i32, ptr %430, align 4, !tbaa !5
  %432 = add i32 %431, 1
  store i32 %432, ptr %430, align 4, !tbaa !5
  br label %433

433:                                              ; preds = %414, %.loopexit28, %.loopexit37, %202, %201, %200, %195, %194
  %434 = load i64, ptr %189, align 8, !tbaa !13
  %435 = add i64 %434, %188
  %436 = add nuw nsw i64 %187, 1
  %437 = icmp eq i64 %436, %182
  br i1 %437, label %.loopexit40, label %186, !llvm.loop !49

.loopexit40:                                      ; preds = %433, %174
  %438 = icmp ugt i32 %8, 3
  br i1 %438, label %439, label %440

439:                                              ; preds = %.loopexit40
  call fastcc void @ZDICT_analyzeEntropy.cold.4(ptr %12, i64 %124) #22
  br label %440

440:                                              ; preds = %439, %.loopexit40
  %441 = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %11, ptr noundef nonnull %10, i32 noundef 255, i32 noundef 11, ptr noundef nonnull %20, i64 noundef 4864) #19
  %442 = icmp ult i64 %441, -119
  br i1 %442, label %446, label %443

443:                                              ; preds = %440
  %444 = icmp eq i32 %8, 0
  br i1 %444, label %630, label %445

445:                                              ; preds = %443
  call fastcc void @ZDICT_analyzeEntropy.cold.5() #22
  br label %630

446:                                              ; preds = %440
  %447 = icmp eq i64 %441, 8
  br i1 %447, label %448, label %519

448:                                              ; preds = %446
  %449 = icmp ugt i32 %8, 1
  br i1 %449, label %450, label %451

450:                                              ; preds = %448
  call fastcc void @ZDICT_analyzeEntropy.cold.6() #22
  br label %451

451:                                              ; preds = %450, %448
  %452 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %453 = getelementptr inbounds nuw i8, ptr %10, i64 20
  store <4 x i32> splat (i32 2), ptr %452, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %453, align 4, !tbaa !5
  %454 = getelementptr inbounds nuw i8, ptr %10, i64 36
  %455 = getelementptr inbounds nuw i8, ptr %10, i64 52
  store <4 x i32> splat (i32 2), ptr %454, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %455, align 4, !tbaa !5
  %456 = getelementptr inbounds nuw i8, ptr %10, i64 68
  %457 = getelementptr inbounds nuw i8, ptr %10, i64 84
  store <4 x i32> splat (i32 2), ptr %456, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %457, align 4, !tbaa !5
  %458 = getelementptr inbounds nuw i8, ptr %10, i64 100
  %459 = getelementptr inbounds nuw i8, ptr %10, i64 116
  store <4 x i32> splat (i32 2), ptr %458, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %459, align 4, !tbaa !5
  %460 = getelementptr inbounds nuw i8, ptr %10, i64 132
  %461 = getelementptr inbounds nuw i8, ptr %10, i64 148
  store <4 x i32> splat (i32 2), ptr %460, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %461, align 4, !tbaa !5
  %462 = getelementptr inbounds nuw i8, ptr %10, i64 164
  %463 = getelementptr inbounds nuw i8, ptr %10, i64 180
  store <4 x i32> splat (i32 2), ptr %462, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %463, align 4, !tbaa !5
  %464 = getelementptr inbounds nuw i8, ptr %10, i64 196
  %465 = getelementptr inbounds nuw i8, ptr %10, i64 212
  store <4 x i32> splat (i32 2), ptr %464, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %465, align 4, !tbaa !5
  %466 = getelementptr inbounds nuw i8, ptr %10, i64 228
  %467 = getelementptr inbounds nuw i8, ptr %10, i64 244
  store <4 x i32> splat (i32 2), ptr %466, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %467, align 4, !tbaa !5
  %468 = getelementptr inbounds nuw i8, ptr %10, i64 260
  %469 = getelementptr inbounds nuw i8, ptr %10, i64 276
  store <4 x i32> splat (i32 2), ptr %468, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %469, align 4, !tbaa !5
  %470 = getelementptr inbounds nuw i8, ptr %10, i64 292
  %471 = getelementptr inbounds nuw i8, ptr %10, i64 308
  store <4 x i32> splat (i32 2), ptr %470, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %471, align 4, !tbaa !5
  %472 = getelementptr inbounds nuw i8, ptr %10, i64 324
  %473 = getelementptr inbounds nuw i8, ptr %10, i64 340
  store <4 x i32> splat (i32 2), ptr %472, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %473, align 4, !tbaa !5
  %474 = getelementptr inbounds nuw i8, ptr %10, i64 356
  %475 = getelementptr inbounds nuw i8, ptr %10, i64 372
  store <4 x i32> splat (i32 2), ptr %474, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %475, align 4, !tbaa !5
  %476 = getelementptr inbounds nuw i8, ptr %10, i64 388
  %477 = getelementptr inbounds nuw i8, ptr %10, i64 404
  store <4 x i32> splat (i32 2), ptr %476, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %477, align 4, !tbaa !5
  %478 = getelementptr inbounds nuw i8, ptr %10, i64 420
  %479 = getelementptr inbounds nuw i8, ptr %10, i64 436
  store <4 x i32> splat (i32 2), ptr %478, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %479, align 4, !tbaa !5
  %480 = getelementptr inbounds nuw i8, ptr %10, i64 452
  %481 = getelementptr inbounds nuw i8, ptr %10, i64 468
  store <4 x i32> splat (i32 2), ptr %480, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %481, align 4, !tbaa !5
  %482 = getelementptr inbounds nuw i8, ptr %10, i64 484
  %483 = getelementptr inbounds nuw i8, ptr %10, i64 500
  store <4 x i32> splat (i32 2), ptr %482, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %483, align 4, !tbaa !5
  %484 = getelementptr inbounds nuw i8, ptr %10, i64 516
  %485 = getelementptr inbounds nuw i8, ptr %10, i64 532
  store <4 x i32> splat (i32 2), ptr %484, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %485, align 4, !tbaa !5
  %486 = getelementptr inbounds nuw i8, ptr %10, i64 548
  %487 = getelementptr inbounds nuw i8, ptr %10, i64 564
  store <4 x i32> splat (i32 2), ptr %486, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %487, align 4, !tbaa !5
  %488 = getelementptr inbounds nuw i8, ptr %10, i64 580
  %489 = getelementptr inbounds nuw i8, ptr %10, i64 596
  store <4 x i32> splat (i32 2), ptr %488, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %489, align 4, !tbaa !5
  %490 = getelementptr inbounds nuw i8, ptr %10, i64 612
  %491 = getelementptr inbounds nuw i8, ptr %10, i64 628
  store <4 x i32> splat (i32 2), ptr %490, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %491, align 4, !tbaa !5
  %492 = getelementptr inbounds nuw i8, ptr %10, i64 644
  %493 = getelementptr inbounds nuw i8, ptr %10, i64 660
  store <4 x i32> splat (i32 2), ptr %492, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %493, align 4, !tbaa !5
  %494 = getelementptr inbounds nuw i8, ptr %10, i64 676
  %495 = getelementptr inbounds nuw i8, ptr %10, i64 692
  store <4 x i32> splat (i32 2), ptr %494, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %495, align 4, !tbaa !5
  %496 = getelementptr inbounds nuw i8, ptr %10, i64 708
  %497 = getelementptr inbounds nuw i8, ptr %10, i64 724
  store <4 x i32> splat (i32 2), ptr %496, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %497, align 4, !tbaa !5
  %498 = getelementptr inbounds nuw i8, ptr %10, i64 740
  %499 = getelementptr inbounds nuw i8, ptr %10, i64 756
  store <4 x i32> splat (i32 2), ptr %498, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %499, align 4, !tbaa !5
  %500 = getelementptr inbounds nuw i8, ptr %10, i64 772
  %501 = getelementptr inbounds nuw i8, ptr %10, i64 788
  store <4 x i32> splat (i32 2), ptr %500, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %501, align 4, !tbaa !5
  %502 = getelementptr inbounds nuw i8, ptr %10, i64 804
  %503 = getelementptr inbounds nuw i8, ptr %10, i64 820
  store <4 x i32> splat (i32 2), ptr %502, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %503, align 4, !tbaa !5
  %504 = getelementptr inbounds nuw i8, ptr %10, i64 836
  %505 = getelementptr inbounds nuw i8, ptr %10, i64 852
  store <4 x i32> splat (i32 2), ptr %504, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %505, align 4, !tbaa !5
  %506 = getelementptr inbounds nuw i8, ptr %10, i64 868
  %507 = getelementptr inbounds nuw i8, ptr %10, i64 884
  store <4 x i32> splat (i32 2), ptr %506, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %507, align 4, !tbaa !5
  %508 = getelementptr inbounds nuw i8, ptr %10, i64 900
  %509 = getelementptr inbounds nuw i8, ptr %10, i64 916
  store <4 x i32> splat (i32 2), ptr %508, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %509, align 4, !tbaa !5
  %510 = getelementptr inbounds nuw i8, ptr %10, i64 932
  %511 = getelementptr inbounds nuw i8, ptr %10, i64 948
  store <4 x i32> splat (i32 2), ptr %510, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %511, align 4, !tbaa !5
  %512 = getelementptr inbounds nuw i8, ptr %10, i64 964
  %513 = getelementptr inbounds nuw i8, ptr %10, i64 980
  store <4 x i32> splat (i32 2), ptr %512, align 4, !tbaa !5
  store <4 x i32> splat (i32 2), ptr %513, align 4, !tbaa !5
  %514 = getelementptr inbounds nuw i8, ptr %10, i64 996
  store <4 x i32> splat (i32 2), ptr %514, align 4, !tbaa !5
  %515 = getelementptr inbounds nuw i8, ptr %10, i64 1012
  %516 = getelementptr inbounds nuw i8, ptr %10, i64 1016
  %517 = getelementptr inbounds nuw i8, ptr %10, i64 1020
  store i32 2, ptr %517, align 4, !tbaa !5
  store i32 4, ptr %10, align 16, !tbaa !5
  store i32 1, ptr %515, align 4, !tbaa !5
  store i32 1, ptr %516, align 8, !tbaa !5
  %518 = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %11, ptr noundef nonnull %10, i32 noundef 255, i32 noundef 11, ptr noundef nonnull %20, i64 noundef 4864) #19
  br label %519

519:                                              ; preds = %451, %446
  %520 = phi i64 [ %518, %451 ], [ %441, %446 ]
  br i1 %125, label %.preheader107.preheader, label %521

521:                                              ; preds = %519
  %522 = and i64 %124, 56
  br label %523

523:                                              ; preds = %523, %521
  %524 = phi i64 [ 0, %521 ], [ %533, %523 ]
  %525 = phi <4 x i32> [ zeroinitializer, %521 ], [ %531, %523 ]
  %526 = phi <4 x i32> [ zeroinitializer, %521 ], [ %532, %523 ]
  %527 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %524
  %528 = getelementptr inbounds nuw i8, ptr %527, i64 16
  %529 = load <4 x i32>, ptr %527, align 16, !tbaa !5
  %530 = load <4 x i32>, ptr %528, align 16, !tbaa !5
  %531 = add <4 x i32> %529, %525
  %532 = add <4 x i32> %530, %526
  %533 = add nuw i64 %524, 8
  %534 = icmp eq i64 %533, %522
  br i1 %534, label %535, label %523, !llvm.loop !50

535:                                              ; preds = %523
  %536 = add <4 x i32> %532, %531
  %537 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %536)
  %538 = icmp eq i64 %522, %124
  br i1 %538, label %.loopexit, label %.preheader107.preheader

.preheader107.preheader:                          ; preds = %535, %519
  %.ph = phi i64 [ 0, %519 ], [ %522, %535 ]
  %.ph89 = phi i32 [ 0, %519 ], [ %537, %535 ]
  br label %.preheader107

.preheader107:                                    ; preds = %.preheader107.preheader, %.preheader107
  %539 = phi i64 [ %544, %.preheader107 ], [ %.ph, %.preheader107.preheader ]
  %540 = phi i32 [ %543, %.preheader107 ], [ %.ph89, %.preheader107.preheader ]
  %541 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %539
  %542 = load i32, ptr %541, align 4, !tbaa !5
  %543 = add i32 %542, %540
  %544 = add nuw nsw i64 %539, 1
  %545 = icmp eq i64 %544, %124
  br i1 %545, label %.loopexit, label %.preheader107, !llvm.loop !51

.loopexit:                                        ; preds = %.preheader107, %535
  %546 = phi i32 [ %537, %535 ], [ %543, %.preheader107 ]
  %547 = trunc i64 %520 to i32
  %548 = zext i32 %546 to i64
  %549 = call i64 @FSE_normalizeCount(ptr noundef nonnull %13, i32 noundef 8, ptr noundef nonnull %12, i64 noundef %548, i32 noundef %24, i32 noundef 1) #19
  %550 = icmp ult i64 %549, -119
  br i1 %550, label %554, label %551

551:                                              ; preds = %.loopexit
  %552 = icmp eq i32 %8, 0
  br i1 %552, label %630, label %553

553:                                              ; preds = %551
  call fastcc void @ZDICT_analyzeEntropy.cold.7() #22
  br label %630

554:                                              ; preds = %.loopexit
  %555 = load <32 x i32>, ptr %14, align 16, !tbaa !5
  %556 = load <20 x i32>, ptr %147, align 16, !tbaa !5
  %557 = load i32, ptr %152, align 16, !tbaa !5
  %558 = shufflevector <20 x i32> %556, <20 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %559 = add <32 x i32> %558, %555
  %560 = shufflevector <32 x i32> %559, <32 x i32> %555, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %561 = call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %560)
  %562 = add i32 %561, %557
  %563 = trunc i64 %549 to i32
  %564 = zext i32 %562 to i64
  %565 = call i64 @FSE_normalizeCount(ptr noundef nonnull %15, i32 noundef 9, ptr noundef nonnull %14, i64 noundef %564, i32 noundef 52, i32 noundef 1) #19
  %566 = icmp ult i64 %565, -119
  br i1 %566, label %570, label %567

567:                                              ; preds = %554
  %568 = icmp eq i32 %8, 0
  br i1 %568, label %630, label %569

569:                                              ; preds = %567
  call fastcc void @ZDICT_analyzeEntropy.cold.8() #22
  br label %630

570:                                              ; preds = %554
  %571 = load <32 x i32>, ptr %16, align 16, !tbaa !5
  %572 = load <4 x i32>, ptr %160, align 16, !tbaa !5
  %573 = shufflevector <32 x i32> %571, <32 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %574 = add <4 x i32> %573, %572
  %575 = shufflevector <4 x i32> %574, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %576 = shufflevector <32 x i32> %575, <32 x i32> %571, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %577 = call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %576)
  %578 = trunc i64 %565 to i32
  %579 = zext i32 %577 to i64
  %580 = call i64 @FSE_normalizeCount(ptr noundef nonnull %17, i32 noundef 9, ptr noundef nonnull %16, i64 noundef %579, i32 noundef 35, i32 noundef 1) #19
  %581 = icmp ult i64 %580, -119
  br i1 %581, label %585, label %582

582:                                              ; preds = %570
  %583 = icmp eq i32 %8, 0
  br i1 %583, label %630, label %584

584:                                              ; preds = %582
  call fastcc void @ZDICT_analyzeEntropy.cold.9() #22
  br label %630

585:                                              ; preds = %570
  %586 = trunc i64 %580 to i32
  %587 = call i64 @HUF_writeCTable_wksp(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %11, i32 noundef 255, i32 noundef %547, ptr noundef nonnull %20, i64 noundef 4864) #19
  %588 = icmp ult i64 %587, -119
  br i1 %588, label %592, label %589

589:                                              ; preds = %585
  %590 = icmp eq i32 %8, 0
  br i1 %590, label %630, label %591

591:                                              ; preds = %589
  call fastcc void @ZDICT_analyzeEntropy.cold.10() #22
  br label %630

592:                                              ; preds = %585
  %593 = getelementptr inbounds nuw i8, ptr %0, i64 %587
  %594 = sub i64 %1, %587
  %595 = call i64 @FSE_writeNCount(ptr noundef %593, i64 noundef %594, ptr noundef nonnull %13, i32 noundef 30, i32 noundef %563) #19
  %596 = icmp ult i64 %595, -119
  br i1 %596, label %600, label %597

597:                                              ; preds = %592
  %598 = icmp eq i32 %8, 0
  br i1 %598, label %630, label %599

599:                                              ; preds = %597
  call fastcc void @ZDICT_analyzeEntropy.cold.11() #22
  br label %630

600:                                              ; preds = %592
  %601 = getelementptr inbounds nuw i8, ptr %593, i64 %595
  %602 = sub i64 %594, %595
  %603 = call i64 @FSE_writeNCount(ptr noundef %601, i64 noundef %602, ptr noundef nonnull %15, i32 noundef 52, i32 noundef %578) #19
  %604 = icmp ult i64 %603, -119
  br i1 %604, label %608, label %605

605:                                              ; preds = %600
  %606 = icmp eq i32 %8, 0
  br i1 %606, label %630, label %607

607:                                              ; preds = %605
  call fastcc void @ZDICT_analyzeEntropy.cold.12() #22
  br label %630

608:                                              ; preds = %600
  %609 = getelementptr inbounds nuw i8, ptr %601, i64 %603
  %610 = sub i64 %602, %603
  %611 = call i64 @FSE_writeNCount(ptr noundef %609, i64 noundef %610, ptr noundef nonnull %17, i32 noundef 35, i32 noundef %586) #19
  %612 = icmp ult i64 %611, -119
  br i1 %612, label %616, label %613

613:                                              ; preds = %608
  %614 = icmp eq i32 %8, 0
  br i1 %614, label %630, label %615

615:                                              ; preds = %613
  call fastcc void @ZDICT_analyzeEntropy.cold.13() #22
  br label %630

616:                                              ; preds = %608
  %617 = sub i64 %610, %611
  %618 = icmp ult i64 %617, 12
  br i1 %618, label %619, label %622

619:                                              ; preds = %616
  %620 = icmp eq i32 %8, 0
  br i1 %620, label %630, label %621

621:                                              ; preds = %619
  call fastcc void @ZDICT_analyzeEntropy.cold.14() #22
  br label %630

622:                                              ; preds = %616
  %623 = getelementptr inbounds nuw i8, ptr %609, i64 %611
  store i32 1, ptr %623, align 1, !tbaa !5
  %624 = getelementptr inbounds nuw i8, ptr %623, i64 4
  store i32 4, ptr %624, align 1, !tbaa !5
  %625 = getelementptr inbounds nuw i8, ptr %623, i64 8
  store i32 8, ptr %625, align 1, !tbaa !5
  %626 = add nuw i64 %587, 12
  %627 = add i64 %626, %595
  %628 = add i64 %627, %603
  %629 = add i64 %628, %611
  br label %630

630:                                              ; preds = %622, %621, %619, %615, %613, %607, %605, %599, %597, %591, %589, %584, %582, %569, %567, %553, %551, %445, %443, %185, %183, %.loopexit42
  %631 = phi ptr [ null, %.loopexit42 ], [ %166, %619 ], [ %166, %621 ], [ %166, %622 ], [ %166, %582 ], [ %166, %584 ], [ %166, %567 ], [ %166, %569 ], [ %166, %551 ], [ %166, %553 ], [ %166, %183 ], [ %166, %185 ], [ %166, %445 ], [ %166, %443 ], [ %166, %591 ], [ %166, %589 ], [ %166, %599 ], [ %166, %597 ], [ %166, %607 ], [ %166, %605 ], [ %166, %615 ], [ %166, %613 ]
  %632 = phi ptr [ null, %.loopexit42 ], [ %167, %619 ], [ %167, %621 ], [ %167, %622 ], [ %167, %582 ], [ %167, %584 ], [ %167, %567 ], [ %167, %569 ], [ %167, %551 ], [ %167, %553 ], [ %167, %183 ], [ %167, %185 ], [ %167, %445 ], [ %167, %443 ], [ %167, %591 ], [ %167, %589 ], [ %167, %599 ], [ %167, %597 ], [ %167, %607 ], [ %167, %605 ], [ %167, %615 ], [ %167, %613 ]
  %633 = phi ptr [ null, %.loopexit42 ], [ %168, %619 ], [ %168, %621 ], [ %168, %622 ], [ %168, %582 ], [ %168, %584 ], [ %168, %567 ], [ %168, %569 ], [ %168, %551 ], [ %168, %553 ], [ %168, %183 ], [ %168, %185 ], [ %168, %445 ], [ %168, %443 ], [ %168, %591 ], [ %168, %589 ], [ %168, %599 ], [ %168, %597 ], [ %168, %607 ], [ %168, %605 ], [ %168, %615 ], [ %168, %613 ]
  %634 = phi i64 [ -34, %.loopexit42 ], [ -70, %619 ], [ -70, %621 ], [ %629, %622 ], [ %580, %582 ], [ %580, %584 ], [ %565, %567 ], [ %565, %569 ], [ %549, %551 ], [ %549, %553 ], [ -64, %183 ], [ -64, %185 ], [ %441, %445 ], [ %441, %443 ], [ %587, %591 ], [ %587, %589 ], [ %595, %599 ], [ %595, %597 ], [ %603, %607 ], [ %603, %605 ], [ %611, %615 ], [ %611, %613 ]
  %635 = call i64 @ZSTD_freeCDict(ptr noundef %631) #19
  %636 = call i64 @ZSTD_freeCCtx(ptr noundef %632) #19
  call void @free(ptr noundef %633) #19
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
  ret i64 %634
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
  br i1 %13, label %1207, label %14

14:                                               ; preds = %6
  %15 = zext i32 %4 to i64
  %16 = icmp ult i32 %4, 4
  br i1 %16, label %.preheader496.preheader, label %17

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
  br i1 %34, label %.loopexit122, label %.preheader496.preheader

.preheader496.preheader:                          ; preds = %31, %14
  %.ph442 = phi i64 [ 0, %14 ], [ %18, %31 ]
  %.ph443 = phi i64 [ 0, %14 ], [ %33, %31 ]
  br label %.preheader496

.preheader496:                                    ; preds = %.preheader496.preheader, %.preheader496
  %35 = phi i64 [ %40, %.preheader496 ], [ %.ph442, %.preheader496.preheader ]
  %36 = phi i64 [ %39, %.preheader496 ], [ %.ph443, %.preheader496.preheader ]
  %37 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %35
  %38 = load i64, ptr %37, align 8, !tbaa !13
  %39 = add i64 %38, %36
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %15
  br i1 %41, label %.loopexit122, label %.preheader496, !llvm.loop !53

.loopexit122:                                     ; preds = %.preheader496, %31
  %42 = phi i64 [ %33, %31 ], [ %39, %.preheader496 ]
  %43 = icmp ult i64 %42, 512
  br i1 %43, label %1207, label %44

44:                                               ; preds = %.loopexit122
  %45 = add i64 %42, 32
  %46 = tail call noalias ptr @malloc(i64 noundef %45) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %1207, label %48

48:                                               ; preds = %44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %46, ptr align 1 %2, i64 %42, i1 false)
  %49 = getelementptr inbounds nuw i8, ptr %46, i64 %42
  store <16 x i8> <i8 -30, i8 51, i8 -9, i8 105, i8 -35, i8 -31, i8 -119, i8 112, i8 5, i8 -68, i8 15, i8 79, i8 -73, i8 -13, i8 110, i8 -47>, ptr %49, align 1, !tbaa !31
  %50 = getelementptr inbounds nuw i8, ptr %49, i64 16
  store <16 x i8> <i8 14, i8 -34, i8 95, i8 14, i8 -114, i8 -50, i8 31, i8 67, i8 -40, i8 -37, i8 31, i8 -102, i8 88, i8 -72, i8 -78, i8 0>, ptr %50, align 1, !tbaa !31
  %51 = load i32, ptr %5, align 8
  %52 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %53 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %54 = load i32, ptr %53, align 8
  %55 = load <2 x i32>, ptr %52, align 4
  %56 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %57 = load i32, ptr %56, align 4
  %58 = lshr i64 %1, 4
  %59 = trunc i64 %58 to i32
  %60 = tail call i32 @llvm.umax.i32(i32 %4, i32 %59)
  %61 = tail call i32 @llvm.umax.i32(i32 %60, i32 10000)
  %62 = zext i32 %61 to i64
  %63 = mul nuw nsw i64 %62, 12
  %64 = tail call noalias ptr @malloc(i64 noundef %63) #20
  br i1 %16, label %.preheader490.preheader, label %65

65:                                               ; preds = %48
  %66 = and i64 %15, 4294967292
  br label %67

67:                                               ; preds = %67, %65
  %68 = phi i64 [ 0, %65 ], [ %77, %67 ]
  %69 = phi <2 x i64> [ zeroinitializer, %65 ], [ %75, %67 ]
  %70 = phi <2 x i64> [ zeroinitializer, %65 ], [ %76, %67 ]
  %71 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %68
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 16
  %73 = load <2 x i64>, ptr %71, align 8, !tbaa !13
  %74 = load <2 x i64>, ptr %72, align 8, !tbaa !13
  %75 = add <2 x i64> %73, %69
  %76 = add <2 x i64> %74, %70
  %77 = add nuw nsw i64 %68, 4
  %78 = icmp eq i64 %77, %66
  br i1 %78, label %79, label %67, !llvm.loop !54

79:                                               ; preds = %67
  %80 = add <2 x i64> %76, %75
  %81 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %80)
  %82 = icmp eq i64 %66, %15
  br i1 %82, label %.loopexit121, label %.preheader490.preheader

.preheader490.preheader:                          ; preds = %79, %48
  %.ph437 = phi i64 [ 0, %48 ], [ %66, %79 ]
  %.ph438 = phi i64 [ 0, %48 ], [ %81, %79 ]
  br label %.preheader490

.preheader490:                                    ; preds = %.preheader490.preheader, %.preheader490
  %83 = phi i64 [ %88, %.preheader490 ], [ %.ph437, %.preheader490.preheader ]
  %84 = phi i64 [ %87, %.preheader490 ], [ %.ph438, %.preheader490.preheader ]
  %85 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %83
  %86 = load i64, ptr %85, align 8, !tbaa !13
  %87 = add i64 %86, %84
  %88 = add nuw nsw i64 %83, 1
  %89 = icmp eq i64 %88, %15
  br i1 %89, label %.loopexit121, label %.preheader490, !llvm.loop !55

.loopexit121:                                     ; preds = %.preheader490, %79
  %90 = phi i64 [ %81, %79 ], [ %87, %.preheader490 ]
  %91 = icmp eq i32 %51, 0
  %92 = select i1 %91, i32 9, i32 %51
  %93 = icmp ugt i32 %92, 30
  %94 = lshr i32 %4, %92
  %95 = select i1 %93, i32 4, i32 %94
  %96 = icmp eq ptr %64, null
  br i1 %96, label %1205, label %97

97:                                               ; preds = %.loopexit121
  %98 = icmp ult i64 %1, 256
  br i1 %98, label %.loopexit, label %99

99:                                               ; preds = %97
  %100 = icmp ult i64 %90, 512
  br i1 %100, label %.loopexit, label %101

101:                                              ; preds = %99
  store i32 1, ptr %64, align 4, !tbaa !9
  %102 = getelementptr inbounds nuw i8, ptr %64, i64 4
  store i32 0, ptr %102, align 4, !tbaa !11
  %103 = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i32 -1, ptr %103, align 4, !tbaa !12
  %104 = shl i64 %90, 2
  %105 = add i64 %104, 8
  %106 = tail call noalias ptr @malloc(i64 noundef %105) #20
  %107 = getelementptr inbounds nuw i8, ptr %106, i64 4
  %108 = tail call noalias ptr @malloc(i64 noundef %104) #20
  %109 = add i64 %90, 16
  %110 = tail call noalias ptr @malloc(i64 noundef %109) #20
  %111 = icmp ugt i32 %54, 1
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  tail call fastcc void @ZDICT_trainFromBuffer_legacy.cold.1() #22
  br label %113

113:                                              ; preds = %112, %101
  %114 = icmp ne ptr %106, null
  %115 = icmp ne ptr %108, null
  %116 = and i1 %114, %115
  %117 = icmp ne ptr %110, null
  %118 = and i1 %116, %117
  br i1 %118, label %119, label %1006

119:                                              ; preds = %113
  %120 = tail call i32 @llvm.umax.i32(i32 %95, i32 4)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %110, i8 0, i64 %109, i1 false)
  %121 = icmp ugt i64 %90, 2097152000
  %122 = icmp ugt i32 %54, 2
  %123 = and i1 %122, %121
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  tail call fastcc void @ZDICT_trainFromBuffer_legacy.cold.2() #22
  br label %.preheader487.preheader

125:                                              ; preds = %119
  br i1 %121, label %.preheader487.preheader, label %.loopexit120

.preheader487.preheader:                          ; preds = %125, %124
  br label %.preheader487

.preheader487:                                    ; preds = %.preheader487.preheader, %.preheader487
  %126 = phi i64 [ %132, %.preheader487 ], [ %90, %.preheader487.preheader ]
  %127 = phi i32 [ %128, %.preheader487 ], [ %4, %.preheader487.preheader ]
  %128 = add i32 %127, -1
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %129
  %131 = load i64, ptr %130, align 8, !tbaa !13
  %132 = sub i64 %126, %131
  %133 = icmp ugt i64 %132, 2097152000
  br i1 %133, label %.preheader487, label %.loopexit120, !llvm.loop !56

.loopexit120:                                     ; preds = %.preheader487, %125
  %134 = phi i32 [ %4, %125 ], [ %128, %.preheader487 ]
  %135 = phi i64 [ %90, %125 ], [ %132, %.preheader487 ]
  br i1 %111, label %136, label %137

136:                                              ; preds = %.loopexit120
  tail call fastcc void @ZDICT_trainFromBuffer_legacy.cold.3(i64 %135, i32 %134) #22
  br label %137

137:                                              ; preds = %136, %.loopexit120
  %138 = trunc nuw nsw i64 %135 to i32
  %139 = tail call i32 @divsufsort(ptr noundef nonnull %46, ptr noundef nonnull %107, i32 noundef %138, i32 noundef 0) #19
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %1006

141:                                              ; preds = %137
  %142 = getelementptr inbounds nuw [4 x i8], ptr %107, i64 %135
  store i32 %138, ptr %142, align 4, !tbaa !5
  store i32 %138, ptr %106, align 4, !tbaa !5
  %143 = icmp eq i64 %135, 0
  br i1 %143, label %.loopexit118, label %144

144:                                              ; preds = %141
  %145 = and i64 %135, 3
  %146 = icmp samesign ult i64 %135, 4
  br i1 %146, label %.loopexit119, label %147

147:                                              ; preds = %144
  %148 = and i64 %135, 2147483644
  br label %149

149:                                              ; preds = %149, %147
  %150 = phi i64 [ 0, %147 ], [ %174, %149 ]
  %151 = trunc nuw nsw i64 %150 to i32
  %152 = getelementptr inbounds nuw [4 x i8], ptr %107, i64 %150
  %153 = load i32, ptr %152, align 4, !tbaa !5
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds nuw [4 x i8], ptr %108, i64 %154
  store i32 %151, ptr %155, align 4, !tbaa !5
  %156 = or disjoint i64 %150, 1
  %157 = trunc nuw nsw i64 %156 to i32
  %158 = getelementptr inbounds nuw [4 x i8], ptr %107, i64 %156
  %159 = load i32, ptr %158, align 4, !tbaa !5
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds nuw [4 x i8], ptr %108, i64 %160
  store i32 %157, ptr %161, align 4, !tbaa !5
  %162 = or disjoint i64 %150, 2
  %163 = trunc nuw nsw i64 %162 to i32
  %164 = getelementptr inbounds nuw [4 x i8], ptr %107, i64 %162
  %165 = load i32, ptr %164, align 4, !tbaa !5
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds nuw [4 x i8], ptr %108, i64 %166
  store i32 %163, ptr %167, align 4, !tbaa !5
  %168 = or disjoint i64 %150, 3
  %169 = trunc nuw nsw i64 %168 to i32
  %170 = getelementptr inbounds nuw [4 x i8], ptr %107, i64 %168
  %171 = load i32, ptr %170, align 4, !tbaa !5
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds nuw [4 x i8], ptr %108, i64 %172
  store i32 %169, ptr %173, align 4, !tbaa !5
  %174 = add nuw i64 %150, 4
  %175 = icmp eq i64 %174, %148
  br i1 %175, label %.loopexit119, label %149, !llvm.loop !57

.loopexit119:                                     ; preds = %149, %144
  %176 = phi i64 [ 0, %144 ], [ %148, %149 ]
  %177 = icmp eq i64 %145, 0
  br i1 %177, label %.loopexit118, label %.preheader117

.preheader117:                                    ; preds = %.loopexit119, %.preheader117
  %178 = phi i64 [ %185, %.preheader117 ], [ %176, %.loopexit119 ]
  %179 = phi i64 [ %186, %.preheader117 ], [ 0, %.loopexit119 ]
  %180 = trunc nuw nsw i64 %178 to i32
  %181 = getelementptr inbounds nuw [4 x i8], ptr %107, i64 %178
  %182 = load i32, ptr %181, align 4, !tbaa !5
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds nuw [4 x i8], ptr %108, i64 %183
  store i32 %180, ptr %184, align 4, !tbaa !5
  %185 = add nuw nsw i64 %178, 1
  %186 = add nuw nsw i64 %179, 1
  %187 = icmp eq i64 %186, %145
  br i1 %187, label %.loopexit118, label %.preheader117, !llvm.loop !58

.loopexit118:                                     ; preds = %.preheader117, %.loopexit119, %141
  br i1 %111, label %188, label %189

188:                                              ; preds = %.loopexit118
  tail call fastcc void @ZDICT_trainFromBuffer_legacy.cold.4(i1 %122, i32 %120) #22
  br label %189

189:                                              ; preds = %188, %.loopexit118
  br i1 %143, label %1006, label %190

190:                                              ; preds = %189
  %191 = icmp ugt i32 %54, 3
  %192 = getelementptr inbounds nuw i8, ptr %9, i64 252
  %193 = getelementptr inbounds nuw i8, ptr %10, i64 252
  %194 = getelementptr inbounds nuw i8, ptr %10, i64 248
  %195 = getelementptr inbounds nuw i8, ptr %10, i64 244
  %196 = getelementptr inbounds nuw i8, ptr %10, i64 240
  %197 = getelementptr inbounds nuw i8, ptr %10, i64 236
  %198 = getelementptr inbounds nuw i8, ptr %10, i64 232
  %199 = getelementptr inbounds nuw i8, ptr %10, i64 228
  %200 = getelementptr inbounds nuw i8, ptr %10, i64 224
  %201 = getelementptr inbounds nuw i8, ptr %10, i64 220
  %202 = getelementptr inbounds nuw i8, ptr %10, i64 216
  %203 = getelementptr inbounds nuw i8, ptr %10, i64 212
  %204 = getelementptr inbounds nuw i8, ptr %10, i64 208
  %205 = getelementptr inbounds nuw i8, ptr %10, i64 204
  %206 = getelementptr inbounds nuw i8, ptr %10, i64 200
  %207 = getelementptr inbounds nuw i8, ptr %10, i64 196
  %208 = getelementptr inbounds nuw i8, ptr %10, i64 192
  %209 = getelementptr inbounds nuw i8, ptr %10, i64 188
  %210 = getelementptr inbounds nuw i8, ptr %10, i64 184
  %211 = getelementptr inbounds nuw i8, ptr %10, i64 180
  %212 = getelementptr inbounds nuw i8, ptr %10, i64 176
  %213 = getelementptr inbounds nuw i8, ptr %10, i64 172
  %214 = getelementptr inbounds nuw i8, ptr %10, i64 168
  %215 = getelementptr inbounds nuw i8, ptr %10, i64 164
  %216 = getelementptr inbounds nuw i8, ptr %10, i64 160
  %217 = getelementptr inbounds nuw i8, ptr %10, i64 156
  %218 = getelementptr inbounds nuw i8, ptr %10, i64 152
  %219 = getelementptr inbounds nuw i8, ptr %10, i64 148
  %220 = getelementptr inbounds nuw i8, ptr %10, i64 144
  %221 = getelementptr inbounds nuw i8, ptr %10, i64 140
  %222 = getelementptr inbounds nuw i8, ptr %10, i64 136
  %223 = getelementptr inbounds nuw i8, ptr %10, i64 132
  %224 = getelementptr inbounds nuw i8, ptr %10, i64 128
  %225 = getelementptr inbounds nuw i8, ptr %10, i64 124
  %226 = getelementptr inbounds nuw i8, ptr %10, i64 120
  %227 = getelementptr inbounds nuw i8, ptr %10, i64 116
  %228 = getelementptr inbounds nuw i8, ptr %10, i64 112
  %229 = getelementptr inbounds nuw i8, ptr %10, i64 108
  %230 = getelementptr inbounds nuw i8, ptr %10, i64 104
  %231 = getelementptr inbounds nuw i8, ptr %10, i64 100
  %232 = getelementptr inbounds nuw i8, ptr %10, i64 96
  %233 = getelementptr inbounds nuw i8, ptr %10, i64 92
  %234 = getelementptr inbounds nuw i8, ptr %10, i64 88
  %235 = getelementptr inbounds nuw i8, ptr %10, i64 84
  %236 = getelementptr inbounds nuw i8, ptr %10, i64 80
  %237 = getelementptr inbounds nuw i8, ptr %10, i64 76
  %238 = getelementptr inbounds nuw i8, ptr %10, i64 72
  %239 = getelementptr inbounds nuw i8, ptr %10, i64 68
  %240 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %241 = getelementptr inbounds nuw i8, ptr %10, i64 60
  %242 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %243 = getelementptr inbounds nuw i8, ptr %10, i64 52
  %244 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %245 = getelementptr inbounds nuw i8, ptr %10, i64 44
  %246 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %247 = getelementptr inbounds nuw i8, ptr %10, i64 36
  %248 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %249 = getelementptr inbounds nuw i8, ptr %10, i64 28
  %250 = getelementptr inbounds nuw i8, ptr %11, i64 20
  %251 = add i32 %61, -1
  %252 = uitofp nneg i64 %135 to double
  %253 = getelementptr i8, ptr %106, i64 8
  %254 = getelementptr i8, ptr %106, i64 12
  %255 = getelementptr i8, ptr %106, i64 16
  br label %256

256:                                              ; preds = %999, %190
  %257 = phi i64 [ 0, %190 ], [ %1002, %999 ]
  %258 = phi i64 [ 0, %190 ], [ %1001, %999 ]
  %259 = phi i32 [ 0, %190 ], [ %1000, %999 ]
  %260 = getelementptr inbounds nuw i8, ptr %110, i64 %257
  %261 = load i8, ptr %260, align 1, !tbaa !31
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %265, label %263

263:                                              ; preds = %256
  %264 = add i32 %259, 1
  br label %999, !llvm.loop !59

265:                                              ; preds = %256
  %266 = getelementptr inbounds nuw [4 x i8], ptr %108, i64 %257
  %267 = load i32, ptr %266, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %11, i8 0, i64 256, i1 false)
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds nuw [4 x i8], ptr %107, i64 %268
  %270 = load i32, ptr %269, align 4, !tbaa !5
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds nuw i8, ptr %110, i64 %271
  store i8 1, ptr %272, align 1, !tbaa !31
  %273 = getelementptr inbounds nuw i8, ptr %46, i64 %271
  %274 = load i16, ptr %273, align 1, !tbaa !60
  %275 = getelementptr inbounds nuw i8, ptr %273, i64 2
  %276 = load i16, ptr %275, align 1, !tbaa !60
  %277 = icmp eq i16 %274, %276
  br i1 %277, label %291, label %278

278:                                              ; preds = %265
  %279 = getelementptr inbounds nuw i8, ptr %273, i64 1
  %280 = load i16, ptr %279, align 1, !tbaa !60
  %281 = getelementptr inbounds nuw i8, ptr %273, i64 3
  %282 = load i16, ptr %281, align 1, !tbaa !60
  %283 = icmp eq i16 %280, %282
  br i1 %283, label %291, label %284

284:                                              ; preds = %278
  %285 = getelementptr inbounds nuw i8, ptr %273, i64 4
  %286 = load i16, ptr %285, align 1, !tbaa !60
  %287 = icmp eq i16 %276, %286
  br i1 %287, label %291, label %288

288:                                              ; preds = %284
  %289 = load i64, ptr %273, align 1, !tbaa !13
  %290 = ptrtoint ptr %273 to i64
  br label %315

291:                                              ; preds = %284, %278, %265
  %292 = getelementptr inbounds nuw i8, ptr %273, i64 4
  %293 = load i16, ptr %292, align 1, !tbaa !60
  br label %294

294:                                              ; preds = %294, %291
  %295 = phi i32 [ 6, %291 ], [ %300, %294 ]
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds nuw i8, ptr %273, i64 %296
  %298 = load i16, ptr %297, align 1
  %299 = icmp eq i16 %298, %293
  %300 = add i32 %295, 2
  br i1 %299, label %294, label %301, !llvm.loop !61

301:                                              ; preds = %294
  %302 = icmp eq i32 %295, 0
  br i1 %302, label %.loopexit105, label %303

303:                                              ; preds = %301
  %304 = getelementptr inbounds nuw i8, ptr %273, i64 %296
  %305 = getelementptr i8, ptr %304, i64 -1
  %306 = load i8, ptr %305, align 1, !tbaa !31
  %307 = trunc i16 %298 to i8
  %308 = icmp eq i8 %306, %307
  %309 = zext i1 %308 to i32
  %310 = getelementptr i8, ptr %272, i64 1
  %311 = or disjoint i32 %295, %309
  %312 = tail call i32 @llvm.umax.i32(i32 %311, i32 2)
  %313 = add i32 %312, -1
  %314 = zext i32 %313 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %310, i8 1, i64 %314, i1 false), !tbaa !31
  br label %.loopexit105

315:                                              ; preds = %.loopexit103, %288
  %316 = phi i32 [ %267, %288 ], [ %317, %.loopexit103 ]
  %317 = add i32 %316, 1
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds nuw [4 x i8], ptr %107, i64 %318
  %320 = load i32, ptr %319, align 4, !tbaa !5
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds nuw i8, ptr %46, i64 %321
  %323 = load i64, ptr %322, align 1, !tbaa !13
  %324 = icmp eq i64 %323, %289
  br i1 %324, label %.preheader102, label %.loopexit103

.preheader102:                                    ; preds = %315, %.preheader102
  %325 = phi ptr [ %327, %.preheader102 ], [ %273, %315 ]
  %326 = phi ptr [ %328, %.preheader102 ], [ %322, %315 ]
  %327 = getelementptr inbounds nuw i8, ptr %325, i64 8
  %328 = getelementptr inbounds nuw i8, ptr %326, i64 8
  %329 = load i64, ptr %328, align 1, !tbaa !13
  %330 = load i64, ptr %327, align 1, !tbaa !13
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %.preheader102, label %.loopexit103

.loopexit103:                                     ; preds = %.preheader102, %315
  %332 = phi ptr [ %273, %315 ], [ %327, %.preheader102 ]
  %333 = phi i64 [ %323, %315 ], [ %329, %.preheader102 ]
  %334 = phi i64 [ %289, %315 ], [ %330, %.preheader102 ]
  %335 = xor i64 %334, %333
  %336 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %335, i1 true)
  %337 = lshr i64 %336, 3
  %338 = getelementptr inbounds nuw i8, ptr %332, i64 %337
  %339 = ptrtoint ptr %338 to i64
  %340 = sub i64 %339, %290
  %341 = icmp ugt i64 %340, 6
  br i1 %341, label %315, label %.preheader116, !llvm.loop !62

.preheader116:                                    ; preds = %.loopexit103, %.loopexit101
  %342 = phi i32 [ %369, %.loopexit101 ], [ 0, %.loopexit103 ]
  %343 = phi i32 [ %368, %.loopexit101 ], [ %267, %.loopexit103 ]
  %344 = zext i32 %343 to i64
  %345 = getelementptr [4 x i8], ptr %106, i64 %344
  %346 = load i32, ptr %345, align 4, !tbaa !5
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds nuw i8, ptr %46, i64 %347
  %349 = load i64, ptr %348, align 1, !tbaa !13
  %350 = icmp eq i64 %349, %289
  br i1 %350, label %.preheader100, label %.loopexit101

.preheader100:                                    ; preds = %.preheader116, %.preheader100
  %351 = phi ptr [ %353, %.preheader100 ], [ %273, %.preheader116 ]
  %352 = phi ptr [ %354, %.preheader100 ], [ %348, %.preheader116 ]
  %353 = getelementptr inbounds nuw i8, ptr %351, i64 8
  %354 = getelementptr inbounds nuw i8, ptr %352, i64 8
  %355 = load i64, ptr %354, align 1, !tbaa !13
  %356 = load i64, ptr %353, align 1, !tbaa !13
  %357 = icmp eq i64 %355, %356
  br i1 %357, label %.preheader100, label %.loopexit101

.loopexit101:                                     ; preds = %.preheader100, %.preheader116
  %358 = phi ptr [ %273, %.preheader116 ], [ %353, %.preheader100 ]
  %359 = phi i64 [ %349, %.preheader116 ], [ %355, %.preheader100 ]
  %360 = phi i64 [ %289, %.preheader116 ], [ %356, %.preheader100 ]
  %361 = xor i64 %360, %359
  %362 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %361, i1 true)
  %363 = lshr i64 %362, 3
  %364 = getelementptr inbounds nuw i8, ptr %358, i64 %363
  %365 = ptrtoint ptr %364 to i64
  %366 = sub i64 %365, %290
  %367 = icmp ugt i64 %366, 6
  %368 = add i32 %343, -1
  %369 = add i32 %342, 1
  br i1 %367, label %.preheader116, label %370, !llvm.loop !63

370:                                              ; preds = %.loopexit101
  %371 = sub i32 %317, %343
  %372 = icmp ult i32 %371, %120
  br i1 %372, label %373, label %411

373:                                              ; preds = %370
  %374 = icmp ult i32 %343, %317
  br i1 %374, label %375, label %.loopexit105

375:                                              ; preds = %373
  %376 = sub i32 %316, %267
  %377 = add i32 %376, %342
  %378 = and i32 %371, 3
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %.loopexit107, label %.preheader106

.preheader106:                                    ; preds = %375, %.preheader106
  %380 = phi i64 [ %386, %.preheader106 ], [ %344, %375 ]
  %381 = phi i32 [ %387, %.preheader106 ], [ 0, %375 ]
  %382 = getelementptr inbounds nuw [4 x i8], ptr %107, i64 %380
  %383 = load i32, ptr %382, align 4, !tbaa !5
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds nuw i8, ptr %110, i64 %384
  store i8 1, ptr %385, align 1, !tbaa !31
  %386 = add nuw nsw i64 %380, 1
  %387 = add nuw nsw i32 %381, 1
  %388 = icmp eq i32 %387, %378
  br i1 %388, label %.loopexit107, label %.preheader106, !llvm.loop !64

.loopexit107:                                     ; preds = %.preheader106, %375
  %389 = phi i64 [ %344, %375 ], [ %386, %.preheader106 ]
  %390 = icmp ult i32 %377, 3
  br i1 %390, label %.loopexit105, label %.preheader104

.preheader104:                                    ; preds = %.loopexit107, %.preheader104
  %391 = phi i64 [ %408, %.preheader104 ], [ %389, %.loopexit107 ]
  %392 = getelementptr inbounds nuw [4 x i8], ptr %107, i64 %391
  %393 = load i32, ptr %392, align 4, !tbaa !5
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds nuw i8, ptr %110, i64 %394
  store i8 1, ptr %395, align 1, !tbaa !31
  %396 = getelementptr [4 x i8], ptr %253, i64 %391
  %397 = load i32, ptr %396, align 4, !tbaa !5
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds nuw i8, ptr %110, i64 %398
  store i8 1, ptr %399, align 1, !tbaa !31
  %400 = getelementptr [4 x i8], ptr %254, i64 %391
  %401 = load i32, ptr %400, align 4, !tbaa !5
  %402 = zext i32 %401 to i64
  %403 = getelementptr inbounds nuw i8, ptr %110, i64 %402
  store i8 1, ptr %403, align 1, !tbaa !31
  %404 = getelementptr [4 x i8], ptr %255, i64 %391
  %405 = load i32, ptr %404, align 4, !tbaa !5
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds nuw i8, ptr %110, i64 %406
  store i8 1, ptr %407, align 1, !tbaa !31
  %408 = add nuw nsw i64 %391, 4
  %409 = trunc i64 %408 to i32
  %410 = icmp eq i32 %317, %409
  br i1 %410, label %.loopexit105, label %.preheader104, !llvm.loop !65

411:                                              ; preds = %370
  br i1 %191, label %412, label %.preheader448.preheader

412:                                              ; preds = %411
  tail call fastcc void @ZDICT_trainFromBuffer_legacy.cold.5(i32 %371, i32 %270) #22
  br label %.preheader448.preheader

.preheader448.preheader:                          ; preds = %412, %411
  br label %.preheader448

.preheader448:                                    ; preds = %.preheader448.preheader, %514
  %413 = phi i32 [ %518, %514 ], [ 7, %.preheader448.preheader ]
  %414 = phi i32 [ %516, %514 ], [ %343, %.preheader448.preheader ]
  %415 = phi i32 [ %517, %514 ], [ %317, %.preheader448.preheader ]
  %416 = icmp ult i32 %414, %415
  br i1 %416, label %417, label %507

417:                                              ; preds = %.preheader448
  %418 = zext i32 %414 to i64
  %419 = zext i32 %415 to i64
  %420 = sub nsw i64 %419, %418
  %421 = and i64 %420, 1
  %422 = add nsw i64 %419, -1
  %423 = icmp eq i64 %422, %418
  br i1 %423, label %.loopexit99, label %424

424:                                              ; preds = %417
  %425 = and i64 %420, -2
  br label %426

426:                                              ; preds = %466, %424
  %427 = phi i64 [ %418, %424 ], [ %473, %466 ]
  %428 = phi i32 [ %414, %424 ], [ %471, %466 ]
  %429 = phi i32 [ 0, %424 ], [ %470, %466 ]
  %430 = phi i32 [ %414, %424 ], [ %469, %466 ]
  %431 = phi i32 [ 0, %424 ], [ %472, %466 ]
  %432 = phi i8 [ 0, %424 ], [ %467, %466 ]
  %433 = phi i64 [ 0, %424 ], [ %474, %466 ]
  %434 = getelementptr inbounds nuw [4 x i8], ptr %107, i64 %427
  %435 = load i32, ptr %434, align 4, !tbaa !5
  %436 = add i32 %435, %413
  %437 = zext i32 %436 to i64
  %438 = getelementptr inbounds nuw i8, ptr %46, i64 %437
  %439 = load i8, ptr %438, align 1, !tbaa !31
  %440 = icmp eq i8 %439, %432
  br i1 %440, label %446, label %441

441:                                              ; preds = %426
  %442 = icmp ugt i32 %431, %429
  %443 = tail call i32 @llvm.umax.i32(i32 %431, i32 %429)
  %444 = select i1 %442, i32 %430, i32 %428
  %445 = trunc nuw i64 %427 to i32
  br label %446

446:                                              ; preds = %441, %426
  %447 = phi i8 [ %439, %441 ], [ %432, %426 ]
  %448 = phi i32 [ 0, %441 ], [ %431, %426 ]
  %449 = phi i32 [ %445, %441 ], [ %430, %426 ]
  %450 = phi i32 [ %443, %441 ], [ %429, %426 ]
  %451 = phi i32 [ %444, %441 ], [ %428, %426 ]
  %452 = add i32 %448, 1
  %453 = add nuw nsw i64 %427, 1
  %454 = getelementptr inbounds nuw [4 x i8], ptr %107, i64 %453
  %455 = load i32, ptr %454, align 4, !tbaa !5
  %456 = add i32 %455, %413
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds nuw i8, ptr %46, i64 %457
  %459 = load i8, ptr %458, align 1, !tbaa !31
  %460 = icmp eq i8 %459, %447
  br i1 %460, label %466, label %461

461:                                              ; preds = %446
  %462 = icmp ugt i32 %452, %450
  %463 = tail call i32 @llvm.umax.i32(i32 %452, i32 %450)
  %464 = select i1 %462, i32 %449, i32 %451
  %465 = trunc nuw i64 %453 to i32
  br label %466

466:                                              ; preds = %461, %446
  %467 = phi i8 [ %459, %461 ], [ %447, %446 ]
  %468 = phi i32 [ 0, %461 ], [ %452, %446 ]
  %469 = phi i32 [ %465, %461 ], [ %449, %446 ]
  %470 = phi i32 [ %463, %461 ], [ %450, %446 ]
  %471 = phi i32 [ %464, %461 ], [ %451, %446 ]
  %472 = add i32 %468, 1
  %473 = add nuw nsw i64 %427, 2
  %474 = add i64 %433, 2
  %475 = icmp eq i64 %474, %425
  br i1 %475, label %.loopexit99.loopexit, label %426, !llvm.loop !66

.loopexit99.loopexit:                             ; preds = %466
  %476 = add nsw i64 %425, %418
  br label %.loopexit99

.loopexit99:                                      ; preds = %.loopexit99.loopexit, %417
  %477 = phi i32 [ poison, %417 ], [ %469, %.loopexit99.loopexit ]
  %478 = phi i32 [ poison, %417 ], [ %470, %.loopexit99.loopexit ]
  %479 = phi i32 [ poison, %417 ], [ %471, %.loopexit99.loopexit ]
  %480 = phi i32 [ poison, %417 ], [ %472, %.loopexit99.loopexit ]
  %481 = phi i64 [ %418, %417 ], [ %476, %.loopexit99.loopexit ]
  %482 = phi i32 [ %414, %417 ], [ %471, %.loopexit99.loopexit ]
  %483 = phi i32 [ 0, %417 ], [ %470, %.loopexit99.loopexit ]
  %484 = phi i32 [ %414, %417 ], [ %469, %.loopexit99.loopexit ]
  %485 = phi i32 [ 0, %417 ], [ %472, %.loopexit99.loopexit ]
  %486 = phi i8 [ 0, %417 ], [ %467, %.loopexit99.loopexit ]
  %487 = icmp eq i64 %421, 0
  br i1 %487, label %507, label %488

488:                                              ; preds = %.loopexit99
  %489 = getelementptr inbounds nuw [4 x i8], ptr %107, i64 %481
  %490 = load i32, ptr %489, align 4, !tbaa !5
  %491 = add i32 %490, %413
  %492 = zext i32 %491 to i64
  %493 = getelementptr inbounds nuw i8, ptr %46, i64 %492
  %494 = load i8, ptr %493, align 1, !tbaa !31
  %495 = icmp eq i8 %494, %486
  br i1 %495, label %501, label %496

496:                                              ; preds = %488
  %497 = icmp ugt i32 %485, %483
  %498 = tail call i32 @llvm.umax.i32(i32 %485, i32 %483)
  %499 = select i1 %497, i32 %484, i32 %482
  %500 = trunc nuw i64 %481 to i32
  br label %501

501:                                              ; preds = %496, %488
  %502 = phi i32 [ 0, %496 ], [ %485, %488 ]
  %503 = phi i32 [ %500, %496 ], [ %484, %488 ]
  %504 = phi i32 [ %498, %496 ], [ %483, %488 ]
  %505 = phi i32 [ %499, %496 ], [ %482, %488 ]
  %506 = add i32 %502, 1
  br label %507

507:                                              ; preds = %501, %.loopexit99, %.preheader448
  %508 = phi i32 [ 0, %.preheader448 ], [ %480, %.loopexit99 ], [ %506, %501 ]
  %509 = phi i32 [ %414, %.preheader448 ], [ %477, %.loopexit99 ], [ %503, %501 ]
  %510 = phi i32 [ 0, %.preheader448 ], [ %478, %.loopexit99 ], [ %504, %501 ]
  %511 = phi i32 [ %414, %.preheader448 ], [ %479, %.loopexit99 ], [ %505, %501 ]
  %512 = tail call i32 @llvm.umax.i32(i32 %508, i32 %510)
  %513 = icmp ult i32 %512, %120
  br i1 %513, label %519, label %514

514:                                              ; preds = %507
  %515 = icmp ugt i32 %508, %510
  %516 = select i1 %515, i32 %509, i32 %511
  %517 = add i32 %516, %512
  %518 = add i32 %413, 1
  br label %.preheader448

519:                                              ; preds = %507
  %520 = zext i32 %414 to i64
  %521 = getelementptr inbounds nuw [4 x i8], ptr %107, i64 %520
  %522 = load i32, ptr %521, align 4, !tbaa !5
  %523 = zext i32 %522 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %9, i8 0, i64 256, i1 false)
  %524 = getelementptr inbounds nuw i8, ptr %46, i64 %523
  %525 = load i64, ptr %524, align 1, !tbaa !13
  %526 = ptrtoint ptr %524 to i64
  br label %527

527:                                              ; preds = %.loopexit98, %519
  %528 = phi i32 [ %529, %.loopexit98 ], [ %414, %519 ]
  %529 = add i32 %528, 1
  %530 = zext i32 %529 to i64
  %531 = getelementptr inbounds nuw [4 x i8], ptr %107, i64 %530
  %532 = load i32, ptr %531, align 4, !tbaa !5
  %533 = zext i32 %532 to i64
  %534 = getelementptr inbounds nuw i8, ptr %46, i64 %533
  %535 = load i64, ptr %534, align 1, !tbaa !13
  %536 = icmp eq i64 %535, %525
  br i1 %536, label %.preheader97, label %.loopexit98

.preheader97:                                     ; preds = %527, %.preheader97
  %537 = phi ptr [ %539, %.preheader97 ], [ %524, %527 ]
  %538 = phi ptr [ %540, %.preheader97 ], [ %534, %527 ]
  %539 = getelementptr inbounds nuw i8, ptr %537, i64 8
  %540 = getelementptr inbounds nuw i8, ptr %538, i64 8
  %541 = load i64, ptr %540, align 1, !tbaa !13
  %542 = load i64, ptr %539, align 1, !tbaa !13
  %543 = icmp eq i64 %541, %542
  br i1 %543, label %.preheader97, label %.loopexit98

.loopexit98:                                      ; preds = %.preheader97, %527
  %544 = phi ptr [ %524, %527 ], [ %539, %.preheader97 ]
  %545 = phi i64 [ %535, %527 ], [ %541, %.preheader97 ]
  %546 = phi i64 [ %525, %527 ], [ %542, %.preheader97 ]
  %547 = xor i64 %546, %545
  %548 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %547, i1 true)
  %549 = lshr i64 %548, 3
  %550 = getelementptr inbounds nuw i8, ptr %544, i64 %549
  %551 = ptrtoint ptr %550 to i64
  %552 = sub i64 %551, %526
  %553 = tail call i64 @llvm.umin.i64(i64 %552, i64 63)
  %554 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %553
  %555 = load i32, ptr %554, align 4, !tbaa !5
  %556 = add i32 %555, 1
  store i32 %556, ptr %554, align 4, !tbaa !5
  %557 = icmp ugt i64 %552, 6
  br i1 %557, label %527, label %558, !llvm.loop !67

558:                                              ; preds = %.loopexit98
  %559 = icmp eq i32 %414, 0
  br i1 %559, label %.loopexit115, label %.preheader114

.preheader114:                                    ; preds = %558, %.loopexit96
  %560 = phi i32 [ %590, %.loopexit96 ], [ %414, %558 ]
  %561 = add i32 %560, -1
  %562 = zext i32 %561 to i64
  %563 = getelementptr inbounds nuw [4 x i8], ptr %107, i64 %562
  %564 = load i32, ptr %563, align 4, !tbaa !5
  %565 = zext i32 %564 to i64
  %566 = getelementptr inbounds nuw i8, ptr %46, i64 %565
  %567 = load i64, ptr %566, align 1, !tbaa !13
  %568 = icmp eq i64 %567, %525
  br i1 %568, label %.preheader95, label %.loopexit96

.preheader95:                                     ; preds = %.preheader114, %.preheader95
  %569 = phi ptr [ %571, %.preheader95 ], [ %524, %.preheader114 ]
  %570 = phi ptr [ %572, %.preheader95 ], [ %566, %.preheader114 ]
  %571 = getelementptr inbounds nuw i8, ptr %569, i64 8
  %572 = getelementptr inbounds nuw i8, ptr %570, i64 8
  %573 = load i64, ptr %572, align 1, !tbaa !13
  %574 = load i64, ptr %571, align 1, !tbaa !13
  %575 = icmp eq i64 %573, %574
  br i1 %575, label %.preheader95, label %.loopexit96

.loopexit96:                                      ; preds = %.preheader95, %.preheader114
  %576 = phi ptr [ %524, %.preheader114 ], [ %571, %.preheader95 ]
  %577 = phi i64 [ %567, %.preheader114 ], [ %573, %.preheader95 ]
  %578 = phi i64 [ %525, %.preheader114 ], [ %574, %.preheader95 ]
  %579 = xor i64 %578, %577
  %580 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %579, i1 true)
  %581 = lshr i64 %580, 3
  %582 = getelementptr inbounds nuw i8, ptr %576, i64 %581
  %583 = ptrtoint ptr %582 to i64
  %584 = sub i64 %583, %526
  %585 = tail call i64 @llvm.umin.i64(i64 %584, i64 63)
  %586 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %585
  %587 = load i32, ptr %586, align 4, !tbaa !5
  %588 = add i32 %587, 1
  store i32 %588, ptr %586, align 4, !tbaa !5
  %589 = icmp ugt i64 %584, 6
  %590 = select i1 %589, i32 %561, i32 %560
  %591 = icmp ne i32 %590, 0
  %592 = and i1 %589, %591
  br i1 %592, label %.preheader114, label %.loopexit115, !llvm.loop !68

.loopexit115:                                     ; preds = %.loopexit96, %558
  %593 = phi i32 [ 0, %558 ], [ %590, %.loopexit96 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %10, i8 0, i64 256, i1 false)
  %594 = load i32, ptr %192, align 4, !tbaa !5
  store i32 %594, ptr %193, align 4, !tbaa !5
  br label %595

595:                                              ; preds = %595, %.loopexit115
  %596 = phi i32 [ %594, %.loopexit115 ], [ %610, %595 ]
  %597 = phi i64 [ 62, %.loopexit115 ], [ %612, %595 ]
  %598 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %597
  %599 = load i32, ptr %598, align 4, !tbaa !5
  %600 = add i32 %599, %596
  %601 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %597
  store i32 %600, ptr %601, align 4, !tbaa !5
  %602 = add nsw i64 %597, -1
  %603 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %602
  %604 = load i32, ptr %603, align 4, !tbaa !5
  %605 = add i32 %604, %600
  %606 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %602
  store i32 %605, ptr %606, align 4, !tbaa !5
  %607 = add nsw i64 %597, -2
  %608 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %607
  %609 = load i32, ptr %608, align 4, !tbaa !5
  %610 = add i32 %609, %605
  %611 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %607
  store i32 %610, ptr %611, align 4, !tbaa !5
  %612 = add nsw i64 %597, -3
  %613 = icmp eq i64 %607, 0
  br i1 %613, label %614, label %595, !llvm.loop !69

614:                                              ; preds = %595
  %615 = load i32, ptr %193, align 4, !tbaa !5
  %616 = icmp ult i32 %615, %120
  br i1 %616, label %617, label %786

617:                                              ; preds = %614
  %618 = load i32, ptr %194, align 8, !tbaa !5
  %619 = icmp ult i32 %618, %120
  br i1 %619, label %620, label %786

620:                                              ; preds = %617
  %621 = load i32, ptr %195, align 4, !tbaa !5
  %622 = icmp ult i32 %621, %120
  br i1 %622, label %623, label %786

623:                                              ; preds = %620
  %624 = load i32, ptr %196, align 16, !tbaa !5
  %625 = icmp ult i32 %624, %120
  br i1 %625, label %626, label %786

626:                                              ; preds = %623
  %627 = load i32, ptr %197, align 4, !tbaa !5
  %628 = icmp ult i32 %627, %120
  br i1 %628, label %629, label %786

629:                                              ; preds = %626
  %630 = load i32, ptr %198, align 8, !tbaa !5
  %631 = icmp ult i32 %630, %120
  br i1 %631, label %632, label %786

632:                                              ; preds = %629
  %633 = load i32, ptr %199, align 4, !tbaa !5
  %634 = icmp ult i32 %633, %120
  br i1 %634, label %635, label %786

635:                                              ; preds = %632
  %636 = load i32, ptr %200, align 16, !tbaa !5
  %637 = icmp ult i32 %636, %120
  br i1 %637, label %638, label %786

638:                                              ; preds = %635
  %639 = load i32, ptr %201, align 4, !tbaa !5
  %640 = icmp ult i32 %639, %120
  br i1 %640, label %641, label %786

641:                                              ; preds = %638
  %642 = load i32, ptr %202, align 8, !tbaa !5
  %643 = icmp ult i32 %642, %120
  br i1 %643, label %644, label %786

644:                                              ; preds = %641
  %645 = load i32, ptr %203, align 4, !tbaa !5
  %646 = icmp ult i32 %645, %120
  br i1 %646, label %647, label %786

647:                                              ; preds = %644
  %648 = load i32, ptr %204, align 16, !tbaa !5
  %649 = icmp ult i32 %648, %120
  br i1 %649, label %650, label %786

650:                                              ; preds = %647
  %651 = load i32, ptr %205, align 4, !tbaa !5
  %652 = icmp ult i32 %651, %120
  br i1 %652, label %653, label %786

653:                                              ; preds = %650
  %654 = load i32, ptr %206, align 8, !tbaa !5
  %655 = icmp ult i32 %654, %120
  br i1 %655, label %656, label %786

656:                                              ; preds = %653
  %657 = load i32, ptr %207, align 4, !tbaa !5
  %658 = icmp ult i32 %657, %120
  br i1 %658, label %659, label %786

659:                                              ; preds = %656
  %660 = load i32, ptr %208, align 16, !tbaa !5
  %661 = icmp ult i32 %660, %120
  br i1 %661, label %662, label %786

662:                                              ; preds = %659
  %663 = load i32, ptr %209, align 4, !tbaa !5
  %664 = icmp ult i32 %663, %120
  br i1 %664, label %665, label %786

665:                                              ; preds = %662
  %666 = load i32, ptr %210, align 8, !tbaa !5
  %667 = icmp ult i32 %666, %120
  br i1 %667, label %668, label %786

668:                                              ; preds = %665
  %669 = load i32, ptr %211, align 4, !tbaa !5
  %670 = icmp ult i32 %669, %120
  br i1 %670, label %671, label %786

671:                                              ; preds = %668
  %672 = load i32, ptr %212, align 16, !tbaa !5
  %673 = icmp ult i32 %672, %120
  br i1 %673, label %674, label %786

674:                                              ; preds = %671
  %675 = load i32, ptr %213, align 4, !tbaa !5
  %676 = icmp ult i32 %675, %120
  br i1 %676, label %677, label %786

677:                                              ; preds = %674
  %678 = load i32, ptr %214, align 8, !tbaa !5
  %679 = icmp ult i32 %678, %120
  br i1 %679, label %680, label %786

680:                                              ; preds = %677
  %681 = load i32, ptr %215, align 4, !tbaa !5
  %682 = icmp ult i32 %681, %120
  br i1 %682, label %683, label %786

683:                                              ; preds = %680
  %684 = load i32, ptr %216, align 16, !tbaa !5
  %685 = icmp ult i32 %684, %120
  br i1 %685, label %686, label %786

686:                                              ; preds = %683
  %687 = load i32, ptr %217, align 4, !tbaa !5
  %688 = icmp ult i32 %687, %120
  br i1 %688, label %689, label %786

689:                                              ; preds = %686
  %690 = load i32, ptr %218, align 8, !tbaa !5
  %691 = icmp ult i32 %690, %120
  br i1 %691, label %692, label %786

692:                                              ; preds = %689
  %693 = load i32, ptr %219, align 4, !tbaa !5
  %694 = icmp ult i32 %693, %120
  br i1 %694, label %695, label %786

695:                                              ; preds = %692
  %696 = load i32, ptr %220, align 16, !tbaa !5
  %697 = icmp ult i32 %696, %120
  br i1 %697, label %698, label %786

698:                                              ; preds = %695
  %699 = load i32, ptr %221, align 4, !tbaa !5
  %700 = icmp ult i32 %699, %120
  br i1 %700, label %701, label %786

701:                                              ; preds = %698
  %702 = load i32, ptr %222, align 8, !tbaa !5
  %703 = icmp ult i32 %702, %120
  br i1 %703, label %704, label %786

704:                                              ; preds = %701
  %705 = load i32, ptr %223, align 4, !tbaa !5
  %706 = icmp ult i32 %705, %120
  br i1 %706, label %707, label %786

707:                                              ; preds = %704
  %708 = load i32, ptr %224, align 16, !tbaa !5
  %709 = icmp ult i32 %708, %120
  br i1 %709, label %710, label %786

710:                                              ; preds = %707
  %711 = load i32, ptr %225, align 4, !tbaa !5
  %712 = icmp ult i32 %711, %120
  br i1 %712, label %713, label %786

713:                                              ; preds = %710
  %714 = load i32, ptr %226, align 8, !tbaa !5
  %715 = icmp ult i32 %714, %120
  br i1 %715, label %716, label %786

716:                                              ; preds = %713
  %717 = load i32, ptr %227, align 4, !tbaa !5
  %718 = icmp ult i32 %717, %120
  br i1 %718, label %719, label %786

719:                                              ; preds = %716
  %720 = load i32, ptr %228, align 16, !tbaa !5
  %721 = icmp ult i32 %720, %120
  br i1 %721, label %722, label %786

722:                                              ; preds = %719
  %723 = load i32, ptr %229, align 4, !tbaa !5
  %724 = icmp ult i32 %723, %120
  br i1 %724, label %725, label %786

725:                                              ; preds = %722
  %726 = load i32, ptr %230, align 8, !tbaa !5
  %727 = icmp ult i32 %726, %120
  br i1 %727, label %728, label %786

728:                                              ; preds = %725
  %729 = load i32, ptr %231, align 4, !tbaa !5
  %730 = icmp ult i32 %729, %120
  br i1 %730, label %731, label %786

731:                                              ; preds = %728
  %732 = load i32, ptr %232, align 16, !tbaa !5
  %733 = icmp ult i32 %732, %120
  br i1 %733, label %734, label %786

734:                                              ; preds = %731
  %735 = load i32, ptr %233, align 4, !tbaa !5
  %736 = icmp ult i32 %735, %120
  br i1 %736, label %737, label %786

737:                                              ; preds = %734
  %738 = load i32, ptr %234, align 8, !tbaa !5
  %739 = icmp ult i32 %738, %120
  br i1 %739, label %740, label %786

740:                                              ; preds = %737
  %741 = load i32, ptr %235, align 4, !tbaa !5
  %742 = icmp ult i32 %741, %120
  br i1 %742, label %743, label %786

743:                                              ; preds = %740
  %744 = load i32, ptr %236, align 16, !tbaa !5
  %745 = icmp ult i32 %744, %120
  br i1 %745, label %746, label %786

746:                                              ; preds = %743
  %747 = load i32, ptr %237, align 4, !tbaa !5
  %748 = icmp ult i32 %747, %120
  br i1 %748, label %749, label %786

749:                                              ; preds = %746
  %750 = load i32, ptr %238, align 8, !tbaa !5
  %751 = icmp ult i32 %750, %120
  br i1 %751, label %752, label %786

752:                                              ; preds = %749
  %753 = load i32, ptr %239, align 4, !tbaa !5
  %754 = icmp ult i32 %753, %120
  br i1 %754, label %755, label %786

755:                                              ; preds = %752
  %756 = load i32, ptr %240, align 16, !tbaa !5
  %757 = icmp ult i32 %756, %120
  br i1 %757, label %758, label %786

758:                                              ; preds = %755
  %759 = load i32, ptr %241, align 4, !tbaa !5
  %760 = icmp ult i32 %759, %120
  br i1 %760, label %761, label %786

761:                                              ; preds = %758
  %762 = load i32, ptr %242, align 8, !tbaa !5
  %763 = icmp ult i32 %762, %120
  br i1 %763, label %764, label %786

764:                                              ; preds = %761
  %765 = load i32, ptr %243, align 4, !tbaa !5
  %766 = icmp ult i32 %765, %120
  br i1 %766, label %767, label %786

767:                                              ; preds = %764
  %768 = load i32, ptr %244, align 16, !tbaa !5
  %769 = icmp ult i32 %768, %120
  br i1 %769, label %770, label %786

770:                                              ; preds = %767
  %771 = load i32, ptr %245, align 4, !tbaa !5
  %772 = icmp ult i32 %771, %120
  br i1 %772, label %773, label %786

773:                                              ; preds = %770
  %774 = load i32, ptr %246, align 8, !tbaa !5
  %775 = icmp ult i32 %774, %120
  br i1 %775, label %776, label %786

776:                                              ; preds = %773
  %777 = load i32, ptr %247, align 4, !tbaa !5
  %778 = icmp ult i32 %777, %120
  br i1 %778, label %779, label %786

779:                                              ; preds = %776
  %780 = load i32, ptr %248, align 16, !tbaa !5
  %781 = icmp ult i32 %780, %120
  br i1 %781, label %782, label %786

782:                                              ; preds = %779
  %783 = load i32, ptr %249, align 4, !tbaa !5
  %784 = icmp ult i32 %783, %120
  %785 = select i1 %784, i32 6, i32 7
  br label %786

786:                                              ; preds = %782, %779, %776, %773, %770, %767, %764, %761, %758, %755, %752, %749, %746, %743, %740, %737, %734, %731, %728, %725, %722, %719, %716, %713, %710, %707, %704, %701, %698, %695, %692, %689, %686, %683, %680, %677, %674, %671, %668, %665, %662, %659, %656, %653, %650, %647, %644, %641, %638, %635, %632, %629, %626, %623, %620, %617, %614
  %787 = phi i32 [ 63, %614 ], [ 62, %617 ], [ 61, %620 ], [ 60, %623 ], [ 59, %626 ], [ 58, %629 ], [ 57, %632 ], [ 56, %635 ], [ 55, %638 ], [ 54, %641 ], [ 53, %644 ], [ 52, %647 ], [ 51, %650 ], [ 50, %653 ], [ 49, %656 ], [ 48, %659 ], [ 47, %662 ], [ 46, %665 ], [ 45, %668 ], [ 44, %671 ], [ 43, %674 ], [ 42, %677 ], [ 41, %680 ], [ 40, %683 ], [ 39, %686 ], [ 38, %689 ], [ 37, %692 ], [ 36, %695 ], [ 35, %698 ], [ 34, %701 ], [ 33, %704 ], [ 32, %707 ], [ 31, %710 ], [ 30, %713 ], [ 29, %716 ], [ 28, %719 ], [ 27, %722 ], [ 26, %725 ], [ 25, %728 ], [ 24, %731 ], [ 23, %734 ], [ 22, %737 ], [ 21, %740 ], [ 20, %743 ], [ 19, %746 ], [ 18, %749 ], [ 17, %752 ], [ 16, %755 ], [ 15, %758 ], [ 14, %761 ], [ 13, %764 ], [ 12, %767 ], [ 11, %770 ], [ 10, %773 ], [ 9, %776 ], [ 8, %779 ], [ %785, %782 ]
  %788 = zext nneg i32 %787 to i64
  %789 = getelementptr i8, ptr %524, i64 %788
  %790 = getelementptr i8, ptr %789, i64 -1
  %791 = load i8, ptr %790, align 1, !tbaa !31
  %792 = getelementptr i8, ptr %524, i64 -2
  br label %793

793:                                              ; preds = %793, %786
  %794 = phi i32 [ %787, %786 ], [ %799, %793 ]
  %795 = zext i32 %794 to i64
  %796 = getelementptr i8, ptr %792, i64 %795
  %797 = load i8, ptr %796, align 1, !tbaa !31
  %798 = icmp eq i8 %797, %791
  %799 = add i32 %794, -1
  br i1 %798, label %793, label %800, !llvm.loop !70

800:                                              ; preds = %793
  %801 = icmp ult i32 %794, 7
  br i1 %801, label %.loopexit105, label %802

802:                                              ; preds = %800
  store i32 0, ptr %250, align 4, !tbaa !5
  %803 = and i64 %795, 1
  %804 = icmp eq i32 %794, 7
  br i1 %804, label %.loopexit113, label %805

805:                                              ; preds = %802
  %806 = and i64 %795, 4294967294
  %807 = add nsw i64 %806, -8
  br label %808

808:                                              ; preds = %808, %805
  %809 = phi i32 [ 0, %805 ], [ %825, %808 ]
  %810 = phi i64 [ 7, %805 ], [ %827, %808 ]
  %811 = phi i64 [ 0, %805 ], [ %828, %808 ]
  %812 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %810
  %813 = load i32, ptr %812, align 4, !tbaa !5
  %814 = trunc nuw i64 %810 to i32
  %815 = add i32 %814, -3
  %816 = mul i32 %815, %813
  %817 = add i32 %816, %809
  %818 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %810
  store i32 %817, ptr %818, align 4, !tbaa !5
  %819 = add nuw nsw i64 %810, 1
  %820 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %819
  %821 = load i32, ptr %820, align 4, !tbaa !5
  %822 = trunc nuw i64 %819 to i32
  %823 = add i32 %822, -3
  %824 = mul i32 %821, %823
  %825 = add i32 %824, %817
  %826 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %819
  store i32 %825, ptr %826, align 4, !tbaa !5
  %827 = add nuw nsw i64 %810, 2
  %828 = add i64 %811, 2
  %829 = icmp eq i64 %811, %807
  br i1 %829, label %.loopexit113, label %808, !llvm.loop !71

.loopexit113:                                     ; preds = %808, %802
  %830 = phi i32 [ 0, %802 ], [ %825, %808 ]
  %831 = phi i64 [ 7, %802 ], [ %827, %808 ]
  %832 = icmp eq i64 %803, 0
  br i1 %832, label %841, label %833

833:                                              ; preds = %.loopexit113
  %834 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %831
  %835 = load i32, ptr %834, align 4, !tbaa !5
  %836 = trunc nuw i64 %831 to i32
  %837 = add i32 %836, -3
  %838 = mul i32 %835, %837
  %839 = add i32 %838, %830
  %840 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %831
  store i32 %839, ptr %840, align 4, !tbaa !5
  br label %841

841:                                              ; preds = %833, %.loopexit113
  br i1 %191, label %845, label %842

842:                                              ; preds = %841
  %843 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %795
  %844 = load i32, ptr %843, align 4, !tbaa !5
  br label %855

845:                                              ; preds = %841
  %846 = load ptr, ptr @stderr, align 8, !tbaa !72
  %847 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %795
  %848 = load i32, ptr %847, align 4, !tbaa !5
  %849 = uitofp i32 %848 to double
  %850 = uitofp i32 %794 to double
  %851 = fdiv double %849, %850
  %852 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %846, ptr noundef nonnull @.str.36, i32 noundef %522, i32 noundef %794, i32 noundef %848, double noundef %851) #23
  %853 = load ptr, ptr @stderr, align 8, !tbaa !72
  %854 = tail call i32 @fflush(ptr noundef %853)
  br label %855

855:                                              ; preds = %845, %842
  %856 = phi i32 [ %844, %842 ], [ %848, %845 ]
  %857 = icmp ult i32 %593, %529
  br i1 %857, label %858, label %.loopexit112

858:                                              ; preds = %855
  %859 = zext i32 %593 to i64
  br label %860

860:                                              ; preds = %899, %858
  %861 = phi i64 [ %859, %858 ], [ %900, %899 ]
  %862 = getelementptr inbounds nuw [4 x i8], ptr %107, i64 %861
  %863 = load i32, ptr %862, align 4, !tbaa !5
  %864 = icmp eq i32 %863, %522
  br i1 %864, label %889, label %865

865:                                              ; preds = %860
  %866 = zext i32 %863 to i64
  %867 = getelementptr inbounds nuw i8, ptr %46, i64 %866
  %868 = load i64, ptr %867, align 1, !tbaa !13
  %869 = load i64, ptr %524, align 1, !tbaa !13
  %870 = icmp eq i64 %868, %869
  br i1 %870, label %.preheader93, label %.loopexit94

.preheader93:                                     ; preds = %865, %.preheader93
  %871 = phi ptr [ %873, %.preheader93 ], [ %524, %865 ]
  %872 = phi ptr [ %874, %.preheader93 ], [ %867, %865 ]
  %873 = getelementptr inbounds nuw i8, ptr %871, i64 8
  %874 = getelementptr inbounds nuw i8, ptr %872, i64 8
  %875 = load i64, ptr %874, align 1, !tbaa !13
  %876 = load i64, ptr %873, align 1, !tbaa !13
  %877 = icmp eq i64 %875, %876
  br i1 %877, label %.preheader93, label %.loopexit94

.loopexit94:                                      ; preds = %.preheader93, %865
  %878 = phi ptr [ %524, %865 ], [ %873, %.preheader93 ]
  %879 = phi i64 [ %868, %865 ], [ %875, %.preheader93 ]
  %880 = phi i64 [ %869, %865 ], [ %876, %.preheader93 ]
  %881 = xor i64 %880, %879
  %882 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %881, i1 true)
  %883 = lshr i64 %882, 3
  %884 = getelementptr inbounds nuw i8, ptr %878, i64 %883
  %885 = ptrtoint ptr %884 to i64
  %886 = sub i64 %885, %526
  %887 = trunc i64 %886 to i32
  %888 = tail call i32 @llvm.umin.i32(i32 %794, i32 %887)
  br label %889

889:                                              ; preds = %.loopexit94, %860
  %890 = phi i32 [ %794, %860 ], [ %888, %.loopexit94 ]
  %891 = add i32 %890, %863
  %892 = icmp ult i32 %863, %891
  br i1 %892, label %893, label %899

893:                                              ; preds = %889
  %894 = zext i32 %863 to i64
  %895 = getelementptr i8, ptr %110, i64 %894
  %896 = add i32 %890, -1
  %897 = zext i32 %896 to i64
  %898 = add nuw nsw i64 %897, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %895, i8 1, i64 %898, i1 false), !tbaa !31
  br label %899

899:                                              ; preds = %893, %889
  %900 = add nuw nsw i64 %861, 1
  %901 = icmp eq i64 %900, %530
  br i1 %901, label %.loopexit112, label %860, !llvm.loop !74

.loopexit105:                                     ; preds = %.preheader104, %800, %.loopexit107, %373, %303, %301
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %902 = add i32 %259, 1
  br label %999, !llvm.loop !59

.loopexit112:                                     ; preds = %899, %855
  %903 = shl nuw i64 %795, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %904 = or disjoint i64 %903, %523
  %905 = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %64, i64 %904, i32 %856, i32 noundef 0, ptr noundef nonnull readonly %46)
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %951, label %907

907:                                              ; preds = %.loopexit112
  %908 = zext i32 %905 to i64
  %909 = getelementptr inbounds nuw [12 x i8], ptr %64, i64 %908
  %910 = load i64, ptr %909, align 4
  %911 = getelementptr inbounds nuw i8, ptr %909, i64 8
  %912 = load i32, ptr %911, align 4
  %913 = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %64, i64 %910, i32 %912, i32 noundef %905, ptr noundef nonnull readonly %46)
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %.loopexit111, label %.preheader110

.preheader110:                                    ; preds = %907, %942
  %915 = phi i32 [ %949, %942 ], [ %913, %907 ]
  %916 = phi i64 [ %944, %942 ], [ %908, %907 ]
  %917 = phi i32 [ %915, %942 ], [ %905, %907 ]
  %918 = load i32, ptr %64, align 4, !tbaa !9
  %919 = add i32 %918, -1
  %920 = icmp ult i32 %917, %919
  br i1 %920, label %921, label %942

921:                                              ; preds = %.preheader110
  %922 = zext i32 %919 to i64
  %923 = sub nsw i64 %922, %916
  %924 = and i64 %923, 1
  %925 = icmp eq i64 %924, 0
  br i1 %925, label %930, label %926

926:                                              ; preds = %921
  %927 = getelementptr inbounds nuw [12 x i8], ptr %64, i64 %916
  %928 = add nuw nsw i64 %916, 1
  %929 = getelementptr inbounds nuw [12 x i8], ptr %64, i64 %928
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %927, ptr noundef nonnull align 4 dereferenceable(12) %929, i64 12, i1 false), !tbaa.struct !75
  br label %930

930:                                              ; preds = %926, %921
  %931 = phi i64 [ %916, %921 ], [ %928, %926 ]
  %932 = add nsw i64 %922, -1
  %933 = icmp eq i64 %916, %932
  br i1 %933, label %.loopexit92, label %.preheader91

.preheader91:                                     ; preds = %930, %.preheader91
  %934 = phi i64 [ %937, %.preheader91 ], [ %931, %930 ]
  %935 = getelementptr inbounds nuw [12 x i8], ptr %64, i64 %934
  %936 = getelementptr inbounds nuw i8, ptr %935, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %935, ptr noundef nonnull align 4 dereferenceable(12) %936, i64 12, i1 false), !tbaa.struct !75
  %937 = add nuw nsw i64 %934, 2
  %938 = getelementptr inbounds nuw [12 x i8], ptr %64, i64 %937
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %936, ptr noundef nonnull align 4 dereferenceable(12) %938, i64 12, i1 false), !tbaa.struct !75
  %939 = icmp eq i64 %937, %922
  br i1 %939, label %.loopexit92, label %.preheader91, !llvm.loop !76

.loopexit92:                                      ; preds = %.preheader91, %930
  %940 = load i32, ptr %64, align 4, !tbaa !9
  %941 = add i32 %940, -1
  br label %942

942:                                              ; preds = %.loopexit92, %.preheader110
  %943 = phi i32 [ %941, %.loopexit92 ], [ %919, %.preheader110 ]
  store i32 %943, ptr %64, align 4, !tbaa !9
  %944 = zext i32 %915 to i64
  %945 = getelementptr inbounds nuw [12 x i8], ptr %64, i64 %944
  %946 = load i64, ptr %945, align 4
  %947 = getelementptr inbounds nuw i8, ptr %945, i64 8
  %948 = load i32, ptr %947, align 4
  %949 = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %64, i64 %946, i32 %948, i32 noundef %915, ptr noundef nonnull readonly %46)
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %.loopexit111, label %.preheader110, !llvm.loop !77

951:                                              ; preds = %.loopexit112
  %952 = load i32, ptr %64, align 4, !tbaa !9
  %953 = tail call i32 @llvm.umin.i32(i32 %952, i32 %251)
  %954 = add i32 %953, -1
  %955 = zext i32 %954 to i64
  %956 = getelementptr inbounds nuw [12 x i8], ptr %64, i64 %955
  %957 = getelementptr inbounds nuw i8, ptr %956, i64 8
  %958 = load i32, ptr %957, align 4, !tbaa !12
  %959 = icmp ult i32 %958, %856
  br i1 %959, label %.preheader108, label %.loopexit109

.preheader108:                                    ; preds = %951, %.preheader108
  %960 = phi ptr [ %967, %.preheader108 ], [ %956, %951 ]
  %961 = phi i32 [ %965, %.preheader108 ], [ %954, %951 ]
  %962 = phi i32 [ %961, %.preheader108 ], [ %953, %951 ]
  %963 = zext i32 %962 to i64
  %964 = getelementptr inbounds nuw [12 x i8], ptr %64, i64 %963
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %964, ptr noundef nonnull align 4 dereferenceable(12) %960, i64 12, i1 false), !tbaa.struct !75
  %965 = add i32 %961, -1
  %966 = zext i32 %965 to i64
  %967 = getelementptr inbounds nuw [12 x i8], ptr %64, i64 %966
  %968 = getelementptr inbounds nuw i8, ptr %967, i64 8
  %969 = load i32, ptr %968, align 4, !tbaa !12
  %970 = icmp ult i32 %969, %856
  br i1 %970, label %.preheader108, label %.loopexit109, !llvm.loop !78

.loopexit109:                                     ; preds = %.preheader108, %951
  %971 = phi i32 [ %953, %951 ], [ %961, %.preheader108 ]
  %972 = zext i32 %971 to i64
  %973 = getelementptr inbounds nuw [12 x i8], ptr %64, i64 %972
  store i64 %904, ptr %973, align 4
  %974 = getelementptr inbounds nuw i8, ptr %973, i64 8
  store i32 %856, ptr %974, align 4, !tbaa !5
  %975 = add nuw i32 %953, 1
  store i32 %975, ptr %64, align 4, !tbaa !9
  br label %.loopexit111

.loopexit111:                                     ; preds = %942, %.loopexit109, %907
  %976 = add i32 %794, %259
  br i1 %111, label %977, label %999

977:                                              ; preds = %.loopexit111
  %978 = tail call i64 @clock() #19
  %979 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %978, i64 %258), !nosanitize !79
  %980 = extractvalue { i64, i1 } %979, 1, !nosanitize !79
  br i1 %980, label %981, label %982, !prof !80, !nosanitize !79

981:                                              ; preds = %977
  tail call void @llvm.ubsantrap(i8 21) #24, !nosanitize !79
  unreachable, !nosanitize !79

982:                                              ; preds = %977
  %983 = extractvalue { i64, i1 } %979, 0, !nosanitize !79
  %984 = icmp sgt i64 %983, 300000
  br i1 %984, label %985, label %994

985:                                              ; preds = %982
  %986 = tail call i64 @clock() #19
  %987 = load ptr, ptr @stderr, align 8, !tbaa !72
  %988 = uitofp i32 %976 to double
  %989 = fdiv double %988, %252
  %990 = fmul double %989, 1.000000e+02
  %991 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %987, ptr noundef nonnull @.str.33, double noundef %990) #23
  %992 = load ptr, ptr @stderr, align 8, !tbaa !72
  %993 = tail call i32 @fflush(ptr noundef %992)
  br label %994

994:                                              ; preds = %985, %982
  %995 = phi i64 [ %986, %985 ], [ %258, %982 ]
  br i1 %191, label %996, label %999

996:                                              ; preds = %994
  %997 = load ptr, ptr @stderr, align 8, !tbaa !72
  %998 = tail call i32 @fflush(ptr noundef %997)
  br label %999

999:                                              ; preds = %996, %994, %.loopexit111, %.loopexit105, %263
  %1000 = phi i32 [ %264, %263 ], [ %902, %.loopexit105 ], [ %976, %994 ], [ %976, %996 ], [ %976, %.loopexit111 ]
  %1001 = phi i64 [ %258, %263 ], [ %258, %.loopexit105 ], [ %995, %994 ], [ %995, %996 ], [ %258, %.loopexit111 ]
  %1002 = zext i32 %1000 to i64
  %1003 = icmp samesign ugt i64 %135, %1002
  br i1 %1003, label %256, label %1004

1004:                                             ; preds = %999
  %1005 = load i32, ptr %64, align 4, !tbaa !9
  br label %1006

1006:                                             ; preds = %1004, %189, %137, %113
  %1007 = phi i32 [ %1005, %1004 ], [ 1, %113 ], [ 1, %137 ], [ 1, %189 ]
  tail call void @free(ptr noundef %106) #19
  tail call void @free(ptr noundef %108) #19
  tail call void @free(ptr noundef %110) #19
  %1008 = icmp ugt i32 %54, 2
  br i1 %1008, label %1009, label %.loopexit90

1009:                                             ; preds = %1006
  %1010 = tail call i32 @llvm.umin.i32(i32 %1007, i32 25)
  %1011 = icmp ugt i32 %1007, 1
  br i1 %1011, label %1012, label %1136

1012:                                             ; preds = %1009
  %1013 = zext i32 %1007 to i64
  %1014 = icmp ult i32 %1007, 10
  br i1 %1014, label %.preheader444.preheader, label %1015

1015:                                             ; preds = %1012
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call fastcc void @ZDICT_trainFromBuffer_legacy.cold.7(i64 %1013, ptr %64, ptr %8, ptr %7) #22
  %1016 = load i64, ptr %8, align 8
  %1017 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.preheader444.preheader

.preheader444.preheader:                          ; preds = %1015, %1012
  %.ph394 = phi i64 [ 1, %1012 ], [ %1016, %1015 ]
  %.ph395 = phi i32 [ 0, %1012 ], [ %1017, %1015 ]
  br label %.preheader444

.preheader444:                                    ; preds = %.preheader444.preheader, %.preheader444
  %1018 = phi i64 [ %1023, %.preheader444 ], [ %.ph394, %.preheader444.preheader ]
  %1019 = phi i32 [ %1022, %.preheader444 ], [ %.ph395, %.preheader444.preheader ]
  %.split = getelementptr inbounds nuw [12 x i8], ptr %64, i64 %1018
  %1020 = getelementptr inbounds nuw i8, ptr %.split, i64 4
  %1021 = load i32, ptr %1020, align 4, !tbaa !11
  %1022 = add i32 %1021, %1019
  %1023 = add nuw nsw i64 %1018, 1
  %1024 = icmp eq i64 %1023, %1013
  br i1 %1024, label %1025, label %.preheader444, !llvm.loop !81

1025:                                             ; preds = %.preheader444
  %1026 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1027 = add i32 %1007, -1
  %1028 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1026, ptr noundef nonnull @.str.18, i32 noundef %1027, i32 noundef %1022) #23
  %1029 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1030 = tail call i32 @fflush(ptr noundef %1029)
  %1031 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1032 = add nsw i32 %1010, -1
  %1033 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1031, ptr noundef nonnull @.str.19, i32 noundef %1032) #23
  %1034 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1035 = tail call i32 @fflush(ptr noundef %1034)
  %1036 = zext nneg i32 %1010 to i64
  br label %1037

1037:                                             ; preds = %.loopexit88, %1025
  %1038 = phi i64 [ 1, %1025 ], [ %1078, %.loopexit88 ]
  %1039 = getelementptr inbounds nuw [12 x i8], ptr %64, i64 %1038
  %1040 = load i32, ptr %1039, align 4, !tbaa !9
  %1041 = getelementptr inbounds nuw i8, ptr %1039, i64 4
  %1042 = load i32, ptr %1041, align 4, !tbaa !11
  %1043 = zext i32 %1040 to i64
  %1044 = icmp ult i64 %90, %1043
  %1045 = add i32 %1042, %1040
  %1046 = zext i32 %1045 to i64
  %1047 = icmp ult i64 %90, %1046
  %1048 = select i1 %1044, i1 true, i1 %1047
  br i1 %1048, label %.loopexit, label %1049

1049:                                             ; preds = %1037
  %1050 = tail call i32 @llvm.umin.i32(i32 %1042, i32 40)
  %1051 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1052 = getelementptr inbounds nuw i8, ptr %1039, i64 8
  %1053 = load i32, ptr %1052, align 4, !tbaa !12
  %1054 = trunc nuw nsw i64 %1038 to i32
  %1055 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1051, ptr noundef nonnull @.str.20, i32 noundef %1054, i32 noundef %1042, i32 noundef %1040, i32 noundef %1053) #23
  %1056 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1057 = tail call i32 @fflush(ptr noundef %1056)
  %1058 = getelementptr inbounds nuw i8, ptr %46, i64 %1043
  %1059 = zext nneg i32 %1050 to i64
  %1060 = icmp eq i32 %1042, 0
  br i1 %1060, label %.loopexit88, label %.preheader87

.preheader87:                                     ; preds = %1049, %.preheader87
  %1061 = phi i64 [ %1072, %.preheader87 ], [ 0, %1049 ]
  %1062 = getelementptr inbounds nuw i8, ptr %1058, i64 %1061
  %1063 = load i8, ptr %1062, align 1, !tbaa !31
  %1064 = add i8 %1063, -127
  %1065 = icmp ult i8 %1064, -95
  %1066 = select i1 %1065, i8 46, i8 %1063
  %1067 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1068 = zext i8 %1066 to i32
  %1069 = tail call i32 @fputc(i32 %1068, ptr %1067)
  %1070 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1071 = tail call i32 @fflush(ptr noundef %1070)
  %1072 = add nuw nsw i64 %1061, 1
  %1073 = icmp eq i64 %1072, %1059
  br i1 %1073, label %.loopexit88, label %.preheader87, !llvm.loop !82

.loopexit88:                                      ; preds = %.preheader87, %1049
  %1074 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1075 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %1074) #25
  %1076 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1077 = tail call i32 @fflush(ptr noundef %1076)
  %1078 = add nuw nsw i64 %1038, 1
  %1079 = icmp eq i64 %1078, %1036
  br i1 %1079, label %.loopexit90, label %1037, !llvm.loop !83

.loopexit90:                                      ; preds = %.loopexit88, %1006
  %1080 = icmp ugt i32 %1007, 1
  br i1 %1080, label %1081, label %.loopexit

1081:                                             ; preds = %.loopexit90
  %1082 = zext i32 %1007 to i64
  %1083 = icmp ult i32 %1007, 10
  br i1 %1083, label %.preheader438.preheader, label %1084

1084:                                             ; preds = %1081
  %1085 = add nsw i64 %1082, -1
  %1086 = and i64 %1085, 7
  %1087 = icmp eq i64 %1086, 0
  %1088 = select i1 %1087, i64 8, i64 %1086
  %1089 = sub nuw nsw i64 %1085, %1088
  br label %1090

1090:                                             ; preds = %1090, %1084
  %1091 = phi i64 [ 0, %1084 ], [ %1094, %1090 ]
  %1092 = phi <4 x i32> [ zeroinitializer, %1084 ], [ %1120, %1090 ]
  %1093 = phi <4 x i32> [ zeroinitializer, %1084 ], [ %1121, %1090 ]
  %1094 = add i64 %1091, 8
  %1095 = getelementptr inbounds nuw [12 x i8], ptr %64, i64 %1091
  %1096 = getelementptr inbounds nuw i8, ptr %1095, i64 16
  %1097 = getelementptr inbounds nuw i8, ptr %1095, i64 28
  %1098 = getelementptr inbounds nuw i8, ptr %1095, i64 40
  %1099 = getelementptr inbounds nuw i8, ptr %1095, i64 52
  %1100 = getelementptr inbounds nuw i8, ptr %1095, i64 64
  %1101 = getelementptr inbounds nuw i8, ptr %1095, i64 76
  %1102 = getelementptr inbounds nuw i8, ptr %1095, i64 88
  %.split82 = getelementptr inbounds nuw [12 x i8], ptr %64, i64 %1094
  %1103 = getelementptr inbounds nuw i8, ptr %.split82, i64 4
  %1104 = load i32, ptr %1096, align 4, !tbaa !11
  %1105 = load i32, ptr %1097, align 4, !tbaa !11
  %1106 = load i32, ptr %1098, align 4, !tbaa !11
  %1107 = load i32, ptr %1099, align 4, !tbaa !11
  %1108 = insertelement <4 x i32> poison, i32 %1104, i64 0
  %1109 = insertelement <4 x i32> %1108, i32 %1105, i64 1
  %1110 = insertelement <4 x i32> %1109, i32 %1106, i64 2
  %1111 = insertelement <4 x i32> %1110, i32 %1107, i64 3
  %1112 = load i32, ptr %1100, align 4, !tbaa !11
  %1113 = load i32, ptr %1101, align 4, !tbaa !11
  %1114 = load i32, ptr %1102, align 4, !tbaa !11
  %1115 = load i32, ptr %1103, align 4, !tbaa !11
  %1116 = insertelement <4 x i32> poison, i32 %1112, i64 0
  %1117 = insertelement <4 x i32> %1116, i32 %1113, i64 1
  %1118 = insertelement <4 x i32> %1117, i32 %1114, i64 2
  %1119 = insertelement <4 x i32> %1118, i32 %1115, i64 3
  %1120 = add <4 x i32> %1111, %1092
  %1121 = add <4 x i32> %1119, %1093
  %1122 = icmp eq i64 %1094, %1089
  br i1 %1122, label %1123, label %1090, !llvm.loop !84

1123:                                             ; preds = %1090
  %1124 = add nuw nsw i64 %1089, 1
  %1125 = add <4 x i32> %1121, %1120
  %1126 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %1125)
  br label %.preheader438.preheader

.preheader438.preheader:                          ; preds = %1123, %1081
  %.ph = phi i64 [ 1, %1081 ], [ %1124, %1123 ]
  %.ph389 = phi i32 [ 0, %1081 ], [ %1126, %1123 ]
  br label %.preheader438

.preheader438:                                    ; preds = %.preheader438.preheader, %.preheader438
  %1127 = phi i64 [ %1132, %.preheader438 ], [ %.ph, %.preheader438.preheader ]
  %1128 = phi i32 [ %1131, %.preheader438 ], [ %.ph389, %.preheader438.preheader ]
  %.split83 = getelementptr inbounds nuw [12 x i8], ptr %64, i64 %1127
  %1129 = getelementptr inbounds nuw i8, ptr %.split83, i64 4
  %1130 = load i32, ptr %1129, align 4, !tbaa !11
  %1131 = add i32 %1130, %1128
  %1132 = add nuw nsw i64 %1127, 1
  %1133 = icmp eq i64 %1132, %1082
  br i1 %1133, label %1134, label %.preheader438, !llvm.loop !85

1134:                                             ; preds = %.preheader438
  %1135 = icmp ult i32 %1131, 128
  br i1 %1135, label %.loopexit, label %1137

1136:                                             ; preds = %1009
  tail call fastcc void @ZDICT_trainFromBuffer_legacy.cold.6(i32 %1007, i32 %1010) #22
  br label %.loopexit

1137:                                             ; preds = %1134
  %1138 = zext i32 %1131 to i64
  %1139 = lshr i64 %1, 2
  %1140 = icmp samesign ugt i64 %1139, %1138
  %1141 = and i1 %111, %1140
  br i1 %1141, label %1142, label %1154

1142:                                             ; preds = %1137
  %1143 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1144 = trunc i64 %1 to i32
  %1145 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1143, ptr noundef nonnull @.str.22, i32 noundef %1131, i32 noundef %1144) #23
  %1146 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1147 = tail call i32 @fflush(ptr noundef %1146)
  %1148 = mul i64 %1, 10
  %1149 = icmp ult i64 %90, %1148
  br i1 %1149, label %1150, label %1151

1150:                                             ; preds = %1142
  tail call fastcc void @ZDICT_trainFromBuffer_legacy.cold.8(i64 %90) #22
  br label %1151

1151:                                             ; preds = %1150, %1142
  %1152 = icmp ugt i32 %95, 4
  br i1 %1152, label %1153, label %1154

1153:                                             ; preds = %1151
  tail call fastcc void @ZDICT_trainFromBuffer_legacy.cold.9(i32 %92) #22
  br label %1154

1154:                                             ; preds = %1153, %1151, %1137
  %1155 = mul i64 %1, 3
  %1156 = icmp ult i64 %1155, %1138
  %1157 = icmp ugt i32 %4, 8
  %1158 = and i1 %1157, %1156
  %1159 = icmp ugt i32 %92, 1
  %1160 = select i1 %1158, i1 %1159, i1 false
  br i1 %1160, label %.preheader, label %.preheader432.preheader

.preheader:                                       ; preds = %1154, %.preheader
  %1161 = phi i32 [ %1162, %.preheader ], [ %92, %1154 ]
  %1162 = add i32 %1161, -1
  %1163 = lshr i32 %4, %1162
  %1164 = icmp ult i32 %1163, 5
  br i1 %1164, label %.preheader, label %1165, !llvm.loop !86

1165:                                             ; preds = %.preheader
  br i1 %111, label %1166, label %.preheader432.preheader

1166:                                             ; preds = %1165
  tail call fastcc void @ZDICT_trainFromBuffer_legacy.cold.10(i64 %1, i32 %1131, i32 %1162) #22
  br label %.preheader432.preheader

.preheader432.preheader:                          ; preds = %1166, %1165, %1154
  br label %.preheader432

.preheader432:                                    ; preds = %.preheader432.preheader, %1174
  %1167 = phi i64 [ %1175, %1174 ], [ 1, %.preheader432.preheader ]
  %1168 = phi i32 [ %1171, %1174 ], [ 0, %.preheader432.preheader ]
  %.split84 = getelementptr inbounds nuw [12 x i8], ptr %64, i64 %1167
  %1169 = getelementptr inbounds nuw i8, ptr %.split84, i64 4
  %1170 = load i32, ptr %1169, align 4, !tbaa !11
  %1171 = add i32 %1170, %1168
  %1172 = zext i32 %1171 to i64
  %1173 = icmp ult i64 %1, %1172
  br i1 %1173, label %1177, label %1174

1174:                                             ; preds = %.preheader432
  %1175 = add nuw nsw i64 %1167, 1
  %1176 = icmp eq i64 %1175, %1082
  br i1 %1176, label %.loopexit86, label %.preheader432, !llvm.loop !87

1177:                                             ; preds = %.preheader432
  %1178 = trunc nuw i64 %1167 to i32
  br label %.loopexit86

.loopexit86:                                      ; preds = %1174, %1177
  %1179 = phi i32 [ %1168, %1177 ], [ %1171, %1174 ]
  %1180 = phi i32 [ %1178, %1177 ], [ %1007, %1174 ]
  %1181 = icmp ugt i32 %1180, 1
  br i1 %1181, label %1182, label %.loopexit85

1182:                                             ; preds = %.loopexit86
  %1183 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %1184 = zext i32 %1180 to i64
  br label %1185

1185:                                             ; preds = %1195, %1182
  %1186 = phi i64 [ 1, %1182 ], [ %1199, %1195 ]
  %1187 = phi ptr [ %1183, %1182 ], [ %1193, %1195 ]
  %1188 = getelementptr inbounds nuw [12 x i8], ptr %64, i64 %1186
  %1189 = getelementptr inbounds nuw i8, ptr %1188, i64 4
  %1190 = load i32, ptr %1189, align 4, !tbaa !11
  %1191 = zext i32 %1190 to i64
  %1192 = sub nsw i64 0, %1191
  %1193 = getelementptr inbounds i8, ptr %1187, i64 %1192
  %1194 = icmp ult ptr %1193, %0
  br i1 %1194, label %.loopexit, label %1195

1195:                                             ; preds = %1185
  %1196 = load i32, ptr %1188, align 4, !tbaa !9
  %1197 = zext i32 %1196 to i64
  %1198 = getelementptr inbounds nuw i8, ptr %46, i64 %1197
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1193, ptr nonnull align 1 %1198, i64 %1191, i1 false)
  %1199 = add nuw nsw i64 %1186, 1
  %1200 = icmp eq i64 %1199, %1184
  br i1 %1200, label %.loopexit85, label %1185, !llvm.loop !88

.loopexit85:                                      ; preds = %1195, %.loopexit86
  %1201 = zext i32 %1179 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store <2 x i32> %55, ptr %12, align 8, !tbaa !5
  %1202 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %57, ptr %1202, align 8, !tbaa !5
  %1203 = tail call fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %1201, i64 noundef %1, ptr noundef nonnull %46, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %.loopexit

.loopexit:                                        ; preds = %1037, %1185, %.loopexit85, %1136, %1134, %.loopexit90, %99, %97
  %1204 = phi i64 [ %1203, %.loopexit85 ], [ -70, %97 ], [ -34, %99 ], [ -34, %1136 ], [ -34, %.loopexit90 ], [ -34, %1134 ], [ -1, %1185 ], [ -1, %1037 ]
  tail call void @free(ptr noundef nonnull %64) #19
  br label %1205

1205:                                             ; preds = %.loopexit, %.loopexit121
  %1206 = phi i64 [ -64, %.loopexit121 ], [ %1204, %.loopexit ]
  tail call void @free(ptr noundef %46) #19
  br label %1207

1207:                                             ; preds = %1205, %44, %.loopexit122, %6
  %1208 = phi i64 [ %1206, %1205 ], [ 0, %.loopexit122 ], [ -64, %44 ], [ 0, %6 ]
  ret i64 %1208
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

ZDICT_addEntropyTablesFromBuffer_advanced.exit:   ; preds = %25, %6
  %27 = phi i64 [ %26, %25 ], [ %12, %6 ]
  ret i64 %27
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef range(i64 0, 4294967296) %1, i64 noundef range(i64 256, 0) %2, ptr noundef nonnull %3, ptr noundef readonly captures(none) %4, i32 noundef range(i32 1, 0) %5, ptr noundef readonly byval(%struct.ZDICT_params_t) align 8 captures(none) %6) unnamed_addr #1 {
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
  %19 = sub nsw i64 0, %1
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  %21 = tail call fastcc i64 @ZDICT_analyzeEntropy(ptr noundef nonnull %16, i64 noundef %17, i32 noundef %10, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull %20, i64 noundef %1, i32 noundef %12)
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
