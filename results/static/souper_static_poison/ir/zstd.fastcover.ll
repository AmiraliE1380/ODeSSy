; ModuleID = '/mydata/zstd/lib/dictBuilder/fastcover.c'
source_filename = "/mydata/zstd/lib/dictBuilder/fastcover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FASTCOVER_accel_t = type { i32, i32 }
%struct.ZDICT_fastCover_params_t = type { i32, i32, i32, i32, i32, double, i32, i32, i32, %struct.ZDICT_params_t }
%struct.ZDICT_params_t = type { i32, i32, i32 }
%struct.FASTCOVER_ctx_t = type { ptr, ptr, ptr, i64, i64, i64, i64, ptr, i32, i32, %struct.FASTCOVER_accel_t, i32 }
%struct.ZDICT_cover_params_t = type { i32, i32, i32, i32, double, i32, i32, %struct.ZDICT_params_t }
%struct.COVER_best_s = type { i32, i32, i64, ptr, i64, %struct.ZDICT_cover_params_t, i64 }
%struct.FASTCOVER_tryParameters_data_s = type { ptr, ptr, i64, %struct.ZDICT_cover_params_t }
%struct.COVER_dictSelection = type { ptr, i64, i64 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [32 x i8] c"FASTCOVER parameters incorrect\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"FASTCOVER must have at least one input file\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"dictBufferCapacity must be at least %u\0A\00", align 1
@FASTCOVER_defaultAccelParameters = internal unnamed_addr constant [11 x %struct.FASTCOVER_accel_t] [%struct.FASTCOVER_accel_t { i32 100, i32 0 }, %struct.FASTCOVER_accel_t { i32 100, i32 0 }, %struct.FASTCOVER_accel_t { i32 50, i32 1 }, %struct.FASTCOVER_accel_t { i32 34, i32 2 }, %struct.FASTCOVER_accel_t { i32 25, i32 3 }, %struct.FASTCOVER_accel_t { i32 20, i32 4 }, %struct.FASTCOVER_accel_t { i32 17, i32 5 }, %struct.FASTCOVER_accel_t { i32 14, i32 6 }, %struct.FASTCOVER_accel_t { i32 13, i32 7 }, %struct.FASTCOVER_accel_t { i32 11, i32 8 }, %struct.FASTCOVER_accel_t { i32 10, i32 9 }], align 16
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to initialize context\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Building dictionary\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Constructed dictionary of size %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Incorrect splitPoint\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Incorrect accel\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Incorrect k\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Trying %u different sets of parameters\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"d=%u\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"k=%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Failed to allocate parameters\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"\0D%u%%       \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"\0D%79s\0D\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [64 x i8] c"Total samples size is too large (%u MB), maximum size is %u MB\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"Total number of training samples is %u and is invalid\0A\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"Total number of testing samples is %u and is invalid.\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Training on %u samples of total size %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"Testing on %u samples of total size %u\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"Failed to allocate scratch buffers \0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"Failed to allocate frequency table \0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Computing frequencies\0A\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"Breaking content into %u epochs of size %u\0A\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"Failed to allocate buffers: out of memory\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"Failed to select dictionary\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_trainFromBuffer_fastCover(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly byval(%struct.ZDICT_fastCover_params_t) align 8 %5) local_unnamed_addr #0 {
  %7 = alloca { i32, %struct.ZDICT_params_t }, align 8
  %8 = alloca %struct.FASTCOVER_ctx_t, align 8
  %9 = alloca %struct.ZDICT_cover_params_t, align 16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #14
  %10 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %5, i64 0, i32 9, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %5, i64 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 20, i32 %13
  %16 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %5, i64 0, i32 6
  %17 = load i32, ptr %16, align 8
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 1)
  %19 = getelementptr inbounds i8, ptr %9, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %19, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  %20 = load <2 x i32>, ptr %5, align 8
  %21 = getelementptr inbounds i8, ptr %5, i64 12
  %22 = load <4 x i32>, ptr %21, align 4
  %23 = getelementptr inbounds i8, ptr %5, i64 36
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds i8, ptr %5, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false)
  %26 = shufflevector <2 x i32> %20, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %27 = shufflevector <4 x i32> %26, <4 x i32> %22, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x i32> %27, ptr %9, align 16, !tbaa !12
  %28 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %9, i64 0, i32 4
  store double 1.000000e+00, ptr %28, align 16, !tbaa !13
  %29 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %9, i64 0, i32 7
  %30 = getelementptr inbounds i8, ptr %7, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %29, ptr noundef nonnull align 4 dereferenceable(12) %30, i64 12, i1 false), !tbaa.struct !15
  %31 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %9, i64 0, i32 5
  store i32 %24, ptr %31, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  %32 = icmp eq <2 x i32> %20, zeroinitializer
  %33 = extractelement <2 x i1> %32, i64 0
  %34 = extractelement <2 x i1> %32, i64 1
  %35 = select i1 %34, i1 true, i1 %33
  br i1 %35, label %49, label %36

36:                                               ; preds = %6
  %37 = extractelement <2 x i32> %20, i64 1
  switch i32 %37, label %49 [
    i32 8, label %38
    i32 6, label %38
  ]

38:                                               ; preds = %36, %36
  %39 = extractelement <2 x i32> %20, i64 0
  %40 = zext i32 %39 to i64
  %41 = icmp ugt i64 %40, %1
  %42 = icmp ugt i32 %37, %39
  %43 = or i1 %42, %41
  %44 = add i32 %15, -32
  %45 = icmp ult i32 %44, -31
  %46 = or i1 %45, %43
  %47 = icmp ugt i32 %17, 10
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %38, %36, %6
  %50 = icmp sgt i32 %11, 0
  br i1 %50, label %51, label %125

51:                                               ; preds = %49
  %52 = load ptr, ptr @stderr, align 8, !tbaa !17
  %53 = tail call i64 @fwrite(ptr nonnull @.str, i64 31, i64 1, ptr %52) #15
  %54 = load ptr, ptr @stderr, align 8, !tbaa !17
  %55 = tail call i32 @fflush(ptr noundef %54)
  br label %125

56:                                               ; preds = %38
  %57 = icmp eq i32 %4, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %56
  %59 = icmp sgt i32 %11, 0
  br i1 %59, label %60, label %125

60:                                               ; preds = %58
  %61 = load ptr, ptr @stderr, align 8, !tbaa !17
  %62 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %61) #15
  %63 = load ptr, ptr @stderr, align 8, !tbaa !17
  %64 = tail call i32 @fflush(ptr noundef %63)
  br label %125

65:                                               ; preds = %56
  %66 = icmp ult i64 %1, 256
  br i1 %66, label %67, label %74

67:                                               ; preds = %65
  %68 = icmp sgt i32 %11, 0
  br i1 %68, label %69, label %125

69:                                               ; preds = %67
  %70 = load ptr, ptr @stderr, align 8, !tbaa !17
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef nonnull @.str.2, i32 noundef 256) #15
  %72 = load ptr, ptr @stderr, align 8, !tbaa !17
  %73 = tail call i32 @fflush(ptr noundef %72)
  br label %125

74:                                               ; preds = %65
  %75 = zext nneg i32 %18 to i64
  %76 = getelementptr inbounds [11 x %struct.FASTCOVER_accel_t], ptr @FASTCOVER_defaultAccelParameters, i64 0, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa.struct !19
  %78 = call fastcc i64 @FASTCOVER_ctx_init(ptr noundef nonnull %8, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %37, double noundef 1.000000e+00, i32 noundef %15, i64 %77, i32 noundef %11), !range !20
  %79 = icmp ult i64 %78, -119
  br i1 %79, label %87, label %80

80:                                               ; preds = %74
  %81 = icmp sgt i32 %11, 0
  br i1 %81, label %82, label %125

82:                                               ; preds = %80
  %83 = load ptr, ptr @stderr, align 8, !tbaa !17
  %84 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 29, i64 1, ptr %83) #15
  %85 = load ptr, ptr @stderr, align 8, !tbaa !17
  %86 = tail call i32 @fflush(ptr noundef %85)
  br label %125

87:                                               ; preds = %74
  %88 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %8, i64 0, i32 6
  %89 = load i64, ptr %88, align 8, !tbaa !21
  tail call void @COVER_warnOnSmallCorpus(i64 noundef %1, i64 noundef %89, i32 noundef %11) #14
  %90 = icmp sgt i32 %11, 1
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load ptr, ptr @stderr, align 8, !tbaa !17
  %93 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 20, i64 1, ptr %92) #15
  %94 = load ptr, ptr @stderr, align 8, !tbaa !17
  %95 = tail call i32 @fflush(ptr noundef %94)
  br label %96

96:                                               ; preds = %91, %87
  %97 = zext nneg i32 %15 to i64
  %98 = shl nuw nsw i64 1, %97
  %99 = tail call noalias ptr @calloc(i64 noundef %98, i64 noundef 2) #16
  %100 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %8, i64 0, i32 7
  %101 = load ptr, ptr %100, align 8, !tbaa !25
  %102 = call fastcc i64 @FASTCOVER_buildDictionary(ptr noundef nonnull %8, ptr noundef %101, ptr noundef %0, i64 noundef %1, i32 %39, i32 %37, ptr noundef %99)
  %103 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %8, i64 0, i32 4
  %104 = load i64, ptr %103, align 8, !tbaa !26
  %105 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %8, i64 0, i32 10
  %106 = load i32, ptr %105, align 8, !tbaa !27
  %107 = zext i32 %106 to i64
  %108 = mul i64 %104, %107
  %109 = udiv i64 %108, 100
  %110 = trunc i64 %109 to i32
  %111 = getelementptr inbounds i8, ptr %0, i64 %102
  %112 = sub i64 %1, %102
  %113 = tail call i64 @ZDICT_finalizeDictionary(ptr noundef %0, i64 noundef %1, ptr noundef %111, i64 noundef %112, ptr noundef %2, ptr noundef %3, i32 noundef %110, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %29) #14
  %114 = icmp ult i64 %113, -119
  %115 = and i1 %90, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %96
  %117 = load ptr, ptr @stderr, align 8, !tbaa !17
  %118 = trunc i64 %113 to i32
  %119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef nonnull @.str.5, i32 noundef %118) #15
  %120 = load ptr, ptr @stderr, align 8, !tbaa !17
  %121 = tail call i32 @fflush(ptr noundef %120)
  br label %122

122:                                              ; preds = %116, %96
  tail call void @free(ptr noundef %101) #14
  %123 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %8, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !28
  tail call void @free(ptr noundef %124) #14
  tail call void @free(ptr noundef %99) #14
  br label %125

125:                                              ; preds = %82, %80, %67, %69, %58, %60, %49, %51, %122
  %126 = phi i64 [ %113, %122 ], [ -42, %51 ], [ -42, %49 ], [ -72, %60 ], [ -72, %58 ], [ -70, %69 ], [ -70, %67 ], [ %78, %80 ], [ %78, %82 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %8) #14
  ret i64 %126
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef i64 @FASTCOVER_ctx_init(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5, i32 noundef %6, i64 %7, i32 noundef %8) unnamed_addr #0 {
  %10 = tail call i64 @COVER_sum(ptr noundef %2, i32 noundef %3) #14
  %11 = fcmp olt double %5, 1.000000e+00
  %12 = uitofp i32 %3 to double
  %13 = fmul double %12, %5
  %14 = fptoui double %13 to i32
  %15 = select i1 %11, i32 %14, i32 0
  %16 = select i1 %11, i32 %14, i32 %3
  %17 = sub i32 %3, %15
  br i1 %11, label %18, label %23

18:                                               ; preds = %9
  %19 = tail call i64 @COVER_sum(ptr noundef %2, i32 noundef %14) #14
  %20 = zext i32 %14 to i64
  %21 = getelementptr inbounds i64, ptr %2, i64 %20
  %22 = tail call i64 @COVER_sum(ptr noundef %21, i32 noundef %17) #14
  br label %23

23:                                               ; preds = %9, %18
  %24 = phi i64 [ %19, %18 ], [ %10, %9 ]
  %25 = phi i64 [ %22, %18 ], [ %10, %9 ]
  %26 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %0, i64 0, i32 11
  store i32 %8, ptr %26, align 8, !tbaa !29
  %27 = tail call i32 @llvm.umax.i32(i32 %4, i32 8)
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %10, %28
  %30 = icmp ugt i64 %10, 4294967294
  %31 = or i1 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %23
  %33 = icmp sgt i32 %8, 0
  br i1 %33, label %34, label %223

34:                                               ; preds = %32
  %35 = load ptr, ptr @stderr, align 8, !tbaa !17
  %36 = lshr i64 %10, 20
  %37 = trunc i64 %36 to i32
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.16, i32 noundef %37, i32 noundef 4095) #15
  %39 = load ptr, ptr @stderr, align 8, !tbaa !17
  %40 = tail call i32 @fflush(ptr noundef %39)
  br label %223

41:                                               ; preds = %23
  %42 = icmp ult i32 %16, 5
  br i1 %42, label %43, label %50

43:                                               ; preds = %41
  %44 = icmp sgt i32 %8, 0
  br i1 %44, label %45, label %223

45:                                               ; preds = %43
  %46 = load ptr, ptr @stderr, align 8, !tbaa !17
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.17, i32 noundef %16) #15
  %48 = load ptr, ptr @stderr, align 8, !tbaa !17
  %49 = tail call i32 @fflush(ptr noundef %48)
  br label %223

50:                                               ; preds = %41
  %51 = icmp eq i32 %15, %3
  br i1 %51, label %52, label %59

52:                                               ; preds = %50
  %53 = icmp sgt i32 %8, 0
  br i1 %53, label %54, label %223

54:                                               ; preds = %52
  %55 = load ptr, ptr @stderr, align 8, !tbaa !17
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.18, i32 noundef 0) #15
  %57 = load ptr, ptr @stderr, align 8, !tbaa !17
  %58 = tail call i32 @fflush(ptr noundef %57)
  br label %223

59:                                               ; preds = %50
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  %60 = icmp sgt i32 %8, 1
  br i1 %60, label %61, label %72

61:                                               ; preds = %59
  %62 = load ptr, ptr @stderr, align 8, !tbaa !17
  %63 = trunc i64 %24 to i32
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.19, i32 noundef %16, i32 noundef %63) #15
  %65 = load ptr, ptr @stderr, align 8, !tbaa !17
  %66 = tail call i32 @fflush(ptr noundef %65)
  %67 = load ptr, ptr @stderr, align 8, !tbaa !17
  %68 = trunc i64 %25 to i32
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.20, i32 noundef %17, i32 noundef %68) #15
  %70 = load ptr, ptr @stderr, align 8, !tbaa !17
  %71 = tail call i32 @fflush(ptr noundef %70)
  br label %72

72:                                               ; preds = %59, %61
  store ptr %1, ptr %0, align 8, !tbaa !30
  %73 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %0, i64 0, i32 2
  store ptr %2, ptr %73, align 8, !tbaa !31
  %74 = zext i32 %3 to i64
  %75 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %0, i64 0, i32 3
  store i64 %74, ptr %75, align 8, !tbaa !32
  %76 = zext i32 %16 to i64
  %77 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %0, i64 0, i32 4
  store i64 %76, ptr %77, align 8, !tbaa !26
  %78 = zext i32 %17 to i64
  %79 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %0, i64 0, i32 5
  store i64 %78, ptr %79, align 8, !tbaa !33
  %80 = sub i64 %24, %28
  %81 = add i64 %80, 1
  %82 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %0, i64 0, i32 6
  store i64 %81, ptr %82, align 8, !tbaa !21
  %83 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %0, i64 0, i32 8
  store i32 %4, ptr %83, align 8, !tbaa !34
  %84 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %0, i64 0, i32 9
  store i32 %6, ptr %84, align 4, !tbaa !35
  %85 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %0, i64 0, i32 10
  store i64 %7, ptr %85, align 8, !tbaa.struct !19
  %86 = add i32 %3, 1
  %87 = zext i32 %86 to i64
  %88 = tail call noalias ptr @calloc(i64 noundef %87, i64 noundef 8) #16
  %89 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %0, i64 0, i32 1
  store ptr %88, ptr %89, align 8, !tbaa !28
  %90 = icmp eq ptr %88, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %72
  %92 = icmp sgt i32 %8, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %91
  %94 = load ptr, ptr @stderr, align 8, !tbaa !17
  %95 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 36, i64 1, ptr %94) #15
  %96 = load ptr, ptr @stderr, align 8, !tbaa !17
  %97 = tail call i32 @fflush(ptr noundef %96)
  br label %98

98:                                               ; preds = %93, %91
  %99 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %0, i64 0, i32 7
  %100 = load ptr, ptr %99, align 8, !tbaa !25
  tail call void @free(ptr noundef %100) #14
  store ptr null, ptr %99, align 8, !tbaa !25
  %101 = load ptr, ptr %89, align 8, !tbaa !28
  tail call void @free(ptr noundef %101) #14
  store ptr null, ptr %89, align 8, !tbaa !28
  br label %223

102:                                              ; preds = %72
  %103 = icmp eq i32 %3, 0
  br i1 %103, label %155, label %104

104:                                              ; preds = %102
  %105 = tail call i32 @llvm.umax.i32(i32 %86, i32 2)
  %106 = zext i32 %105 to i64
  %107 = getelementptr i64, ptr %2, i64 -1
  %108 = add nsw i64 %106, -1
  %109 = add nsw i64 %106, -2
  %110 = and i64 %108, 3
  %111 = icmp ult i64 %109, 3
  br i1 %111, label %140, label %112

112:                                              ; preds = %104
  %113 = and i64 %108, -4
  %114 = getelementptr i64, ptr %88, i64 1
  br label %115

115:                                              ; preds = %115, %112
  %116 = phi i64 [ 0, %112 ], [ %135, %115 ]
  %117 = phi i64 [ 1, %112 ], [ %137, %115 ]
  %118 = phi i64 [ 0, %112 ], [ %138, %115 ]
  %119 = getelementptr i64, ptr %107, i64 %117
  %120 = load i64, ptr %119, align 8, !tbaa !36
  %121 = add i64 %120, %116
  %122 = getelementptr inbounds i64, ptr %88, i64 %117
  store i64 %121, ptr %122, align 8, !tbaa !36
  %123 = getelementptr i64, ptr %2, i64 %117
  %124 = load i64, ptr %123, align 8, !tbaa !36
  %125 = add i64 %124, %121
  %126 = getelementptr i64, ptr %114, i64 %117
  store i64 %125, ptr %126, align 8, !tbaa !36
  %127 = add nuw nsw i64 %117, 2
  %128 = getelementptr i64, ptr %107, i64 %127
  %129 = load i64, ptr %128, align 8, !tbaa !36
  %130 = add i64 %129, %125
  %131 = getelementptr inbounds i64, ptr %88, i64 %127
  store i64 %130, ptr %131, align 8, !tbaa !36
  %132 = add nuw nsw i64 %117, 3
  %133 = getelementptr i64, ptr %107, i64 %132
  %134 = load i64, ptr %133, align 8, !tbaa !36
  %135 = add i64 %134, %130
  %136 = getelementptr inbounds i64, ptr %88, i64 %132
  store i64 %135, ptr %136, align 8, !tbaa !36
  %137 = add nuw nsw i64 %117, 4
  %138 = add i64 %118, 4
  %139 = icmp eq i64 %138, %113
  br i1 %139, label %140, label %115, !llvm.loop !37

140:                                              ; preds = %115, %104
  %141 = phi i64 [ 0, %104 ], [ %135, %115 ]
  %142 = phi i64 [ 1, %104 ], [ %137, %115 ]
  %143 = icmp eq i64 %110, 0
  br i1 %143, label %155, label %144

144:                                              ; preds = %140, %144
  %145 = phi i64 [ %150, %144 ], [ %141, %140 ]
  %146 = phi i64 [ %152, %144 ], [ %142, %140 ]
  %147 = phi i64 [ %153, %144 ], [ 0, %140 ]
  %148 = getelementptr i64, ptr %107, i64 %146
  %149 = load i64, ptr %148, align 8, !tbaa !36
  %150 = add i64 %149, %145
  %151 = getelementptr inbounds i64, ptr %88, i64 %146
  store i64 %150, ptr %151, align 8, !tbaa !36
  %152 = add nuw nsw i64 %146, 1
  %153 = add i64 %147, 1
  %154 = icmp eq i64 %153, %110
  br i1 %154, label %155, label %144, !llvm.loop !39

155:                                              ; preds = %140, %144, %102
  %156 = zext nneg i32 %6 to i64
  %157 = shl nuw i64 1, %156
  %158 = tail call noalias ptr @calloc(i64 noundef %157, i64 noundef 4) #16
  %159 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %0, i64 0, i32 7
  store ptr %158, ptr %159, align 8, !tbaa !25
  %160 = icmp eq ptr %158, null
  br i1 %160, label %161, label %172

161:                                              ; preds = %155
  %162 = icmp sgt i32 %8, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %161
  %164 = load ptr, ptr @stderr, align 8, !tbaa !17
  %165 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 36, i64 1, ptr %164) #15
  %166 = load ptr, ptr @stderr, align 8, !tbaa !17
  %167 = tail call i32 @fflush(ptr noundef %166)
  %168 = load ptr, ptr %159, align 8, !tbaa !25
  br label %169

169:                                              ; preds = %163, %161
  %170 = phi ptr [ %168, %163 ], [ null, %161 ]
  tail call void @free(ptr noundef %170) #14
  store ptr null, ptr %159, align 8, !tbaa !25
  %171 = load ptr, ptr %89, align 8, !tbaa !28
  tail call void @free(ptr noundef %171) #14
  store ptr null, ptr %89, align 8, !tbaa !28
  br label %223

172:                                              ; preds = %155
  br i1 %60, label %173, label %180

173:                                              ; preds = %172
  %174 = load ptr, ptr @stderr, align 8, !tbaa !17
  %175 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr %174) #15
  %176 = load ptr, ptr @stderr, align 8, !tbaa !17
  %177 = tail call i32 @fflush(ptr noundef %176)
  %178 = load ptr, ptr %159, align 8, !tbaa !25
  %179 = load i64, ptr %77, align 8, !tbaa !26
  br label %180

180:                                              ; preds = %173, %172
  %181 = phi i64 [ %179, %173 ], [ %76, %172 ]
  %182 = phi ptr [ %178, %173 ], [ %158, %172 ]
  %183 = icmp eq i64 %181, 0
  br i1 %183, label %223, label %184

184:                                              ; preds = %180
  %185 = load i32, ptr %83, align 8, !tbaa !34
  %186 = tail call i32 @llvm.umax.i32(i32 %185, i32 8)
  %187 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %0, i64 0, i32 10, i32 1
  %188 = load i32, ptr %187, align 4, !tbaa !41
  %189 = load i32, ptr %84, align 4, !tbaa !35
  %190 = load ptr, ptr %89, align 8, !tbaa !28
  %191 = zext i32 %186 to i64
  %192 = icmp eq i32 %185, 6
  %193 = sub i32 64, %189
  %194 = zext nneg i32 %193 to i64
  %195 = select i1 %192, i64 -3523014627193847808, i64 -3523014627327384477
  %196 = zext i32 %188 to i64
  %197 = add nuw nsw i64 %196, 1
  %198 = load i64, ptr %190, align 8, !tbaa !36
  br label %201

199:                                              ; preds = %211, %201
  %200 = icmp eq i64 %204, %181
  br i1 %200, label %223, label %201, !llvm.loop !42

201:                                              ; preds = %199, %184
  %202 = phi i64 [ %198, %184 ], [ %206, %199 ]
  %203 = phi i64 [ 0, %184 ], [ %204, %199 ]
  %204 = add nuw i64 %203, 1
  %205 = getelementptr inbounds i64, ptr %190, i64 %204
  %206 = load i64, ptr %205, align 8, !tbaa !36
  %207 = add i64 %202, %191
  %208 = icmp ugt i64 %207, %206
  br i1 %208, label %199, label %209

209:                                              ; preds = %201
  %210 = load ptr, ptr %0, align 8, !tbaa !30
  br label %211

211:                                              ; preds = %211, %209
  %212 = phi i64 [ %202, %209 ], [ %220, %211 ]
  %213 = getelementptr inbounds i8, ptr %210, i64 %212
  %214 = load i64, ptr %213, align 1, !tbaa !36
  %215 = mul i64 %214, %195
  %216 = lshr i64 %215, %194
  %217 = getelementptr inbounds i32, ptr %182, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !12
  %219 = add i32 %218, 1
  store i32 %219, ptr %217, align 4, !tbaa !12
  %220 = add i64 %197, %212
  %221 = add i64 %220, %191
  %222 = icmp ugt i64 %221, %206
  br i1 %222, label %199, label %211, !llvm.loop !43

223:                                              ; preds = %199, %180, %52, %54, %43, %45, %32, %34, %169, %98
  %224 = phi i64 [ -64, %98 ], [ -64, %169 ], [ -72, %34 ], [ -72, %32 ], [ -72, %45 ], [ -72, %43 ], [ -72, %54 ], [ -72, %52 ], [ 0, %180 ], [ 0, %199 ]
  ret i64 %224
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @COVER_warnOnSmallCorpus(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i64 @FASTCOVER_buildDictionary(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, i64 noundef %3, i32 %4, i32 %5, ptr nocapture noundef %6) unnamed_addr #0 {
  %8 = trunc i64 %3 to i32
  %9 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %0, i64 0, i32 6
  %10 = load i64, ptr %9, align 8, !tbaa !21
  %11 = trunc i64 %10 to i32
  %12 = tail call i64 @COVER_computeEpochs(i32 noundef %8, i32 noundef %11, i32 noundef %4, i32 noundef 1) #14
  %13 = lshr i64 %12, 32
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %0, i64 0, i32 11
  %16 = load i32, ptr %15, align 8, !tbaa !29
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %24

18:                                               ; preds = %7
  %19 = trunc i64 %12 to i32
  %20 = load ptr, ptr @stderr, align 8, !tbaa !17
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.24, i32 noundef %19, i32 noundef %14) #15
  %22 = load ptr, ptr @stderr, align 8, !tbaa !17
  %23 = tail call i32 @fflush(ptr noundef %22)
  br label %24

24:                                               ; preds = %18, %7
  %25 = icmp eq i64 %3, 0
  br i1 %25, label %249, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %0, i64 0, i32 9
  %28 = icmp eq i32 %5, 6
  %29 = select i1 %28, i64 -3523014627193847808, i64 -3523014627327384477
  %30 = add i32 %4, 2
  %31 = sub i32 %30, %5
  %32 = add i32 %5, -1
  %33 = zext i32 %5 to i64
  %34 = icmp ugt i32 %16, 3
  %35 = and i64 %12, 4294967295
  br label %36

36:                                               ; preds = %26, %242
  %37 = phi i64 [ %3, %26 ], [ %243, %242 ]
  %38 = phi i64 [ 0, %26 ], [ %244, %242 ]
  %39 = phi i64 [ 0, %26 ], [ %245, %242 ]
  %40 = phi i64 [ 0, %26 ], [ %247, %242 ]
  %41 = mul i64 %40, %13
  %42 = trunc i64 %41 to i32
  %43 = add i32 %42, %14
  %44 = load i32, ptr %27, align 4, !tbaa !35
  %45 = icmp ugt i32 %43, %42
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load ptr, ptr %0, align 8, !tbaa !30
  %48 = sub i32 64, %44
  %49 = zext nneg i32 %48 to i64
  %50 = and i64 %41, 4294967295
  %51 = zext i32 %43 to i64
  br label %82

52:                                               ; preds = %124, %36
  %53 = phi i32 [ %42, %36 ], [ %125, %124 ]
  %54 = phi i32 [ 0, %36 ], [ %128, %124 ]
  %55 = phi i32 [ 0, %36 ], [ %129, %124 ]
  %56 = phi i32 [ 0, %36 ], [ %130, %124 ]
  %57 = icmp ult i32 %53, %43
  br i1 %57, label %58, label %132

58:                                               ; preds = %52
  %59 = load ptr, ptr %0, align 8, !tbaa !30
  %60 = sub i32 64, %44
  %61 = zext nneg i32 %60 to i64
  %62 = zext i32 %53 to i64
  %63 = zext i32 %43 to i64
  %64 = sub nsw i64 %63, %62
  %65 = and i64 %64, 1
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %58
  %68 = getelementptr inbounds i8, ptr %59, i64 %62
  %69 = load i64, ptr %68, align 1, !tbaa !36
  %70 = mul i64 %69, %29
  %71 = lshr i64 %70, %61
  %72 = getelementptr inbounds i16, ptr %6, i64 %71
  %73 = load i16, ptr %72, align 2, !tbaa !44
  %74 = add i16 %73, -1
  store i16 %74, ptr %72, align 2, !tbaa !44
  %75 = add nuw nsw i64 %62, 1
  br label %76

76:                                               ; preds = %67, %58
  %77 = phi i64 [ %62, %58 ], [ %75, %67 ]
  %78 = add nsw i64 %63, -1
  %79 = icmp eq i64 %78, %62
  br i1 %79, label %132, label %80

80:                                               ; preds = %76
  %81 = getelementptr i8, ptr %59, i64 1
  br label %157

82:                                               ; preds = %124, %46
  %83 = phi i64 [ %50, %46 ], [ %102, %124 ]
  %84 = phi i32 [ 0, %46 ], [ %130, %124 ]
  %85 = phi i32 [ 0, %46 ], [ %129, %124 ]
  %86 = phi i32 [ 0, %46 ], [ %128, %124 ]
  %87 = phi i32 [ 0, %46 ], [ %126, %124 ]
  %88 = phi i32 [ %42, %46 ], [ %125, %124 ]
  %89 = getelementptr inbounds i8, ptr %47, i64 %83
  %90 = load i64, ptr %89, align 1, !tbaa !36
  %91 = mul i64 %90, %29
  %92 = lshr i64 %91, %49
  %93 = getelementptr inbounds i16, ptr %6, i64 %92
  %94 = load i16, ptr %93, align 2, !tbaa !44
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %82
  %97 = getelementptr inbounds i32, ptr %1, i64 %92
  %98 = load i32, ptr %97, align 4, !tbaa !12
  %99 = add i32 %98, %87
  br label %100

100:                                              ; preds = %96, %82
  %101 = phi i32 [ %99, %96 ], [ %87, %82 ]
  %102 = add nuw nsw i64 %83, 1
  %103 = trunc i64 %102 to i32
  %104 = add i16 %94, 1
  store i16 %104, ptr %93, align 2, !tbaa !44
  %105 = sub i32 %103, %88
  %106 = icmp eq i32 %105, %31
  br i1 %106, label %107, label %124

107:                                              ; preds = %100
  %108 = zext i32 %88 to i64
  %109 = getelementptr inbounds i8, ptr %47, i64 %108
  %110 = load i64, ptr %109, align 1, !tbaa !36
  %111 = mul i64 %110, %29
  %112 = lshr i64 %111, %49
  %113 = getelementptr inbounds i16, ptr %6, i64 %112
  %114 = load i16, ptr %113, align 2, !tbaa !44
  %115 = add i16 %114, -1
  store i16 %115, ptr %113, align 2, !tbaa !44
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %107
  %118 = getelementptr inbounds i32, ptr %1, i64 %112
  %119 = load i32, ptr %118, align 4, !tbaa !12
  %120 = sub i32 %101, %119
  br label %121

121:                                              ; preds = %117, %107
  %122 = phi i32 [ %120, %117 ], [ %101, %107 ]
  %123 = add i32 %88, 1
  br label %124

124:                                              ; preds = %121, %100
  %125 = phi i32 [ %123, %121 ], [ %88, %100 ]
  %126 = phi i32 [ %122, %121 ], [ %101, %100 ]
  %127 = icmp ugt i32 %126, %86
  %128 = tail call i32 @llvm.umax.i32(i32 %126, i32 %86)
  %129 = select i1 %127, i32 %103, i32 %85
  %130 = select i1 %127, i32 %125, i32 %84
  %131 = icmp eq i64 %102, %51
  br i1 %131, label %52, label %82, !llvm.loop !46

132:                                              ; preds = %76, %157, %52
  %133 = icmp eq i32 %56, %55
  br i1 %133, label %206, label %134

134:                                              ; preds = %132
  %135 = load ptr, ptr %0, align 8, !tbaa !30
  %136 = sub i32 64, %44
  %137 = zext nneg i32 %136 to i64
  %138 = sub i32 %55, %56
  %139 = and i32 %138, 3
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %134, %141
  %142 = phi i32 [ %150, %141 ], [ %56, %134 ]
  %143 = phi i32 [ %151, %141 ], [ 0, %134 ]
  %144 = zext i32 %142 to i64
  %145 = getelementptr inbounds i8, ptr %135, i64 %144
  %146 = load i64, ptr %145, align 1, !tbaa !36
  %147 = mul i64 %146, %29
  %148 = lshr i64 %147, %137
  %149 = getelementptr inbounds i32, ptr %1, i64 %148
  store i32 0, ptr %149, align 4, !tbaa !12
  %150 = add i32 %142, 1
  %151 = add i32 %143, 1
  %152 = icmp eq i32 %151, %139
  br i1 %152, label %153, label %141, !llvm.loop !47

153:                                              ; preds = %141, %134
  %154 = phi i32 [ %56, %134 ], [ %150, %141 ]
  %155 = sub i32 %56, %55
  %156 = icmp ugt i32 %155, -4
  br i1 %156, label %206, label %175

157:                                              ; preds = %157, %80
  %158 = phi i64 [ %77, %80 ], [ %173, %157 ]
  %159 = getelementptr inbounds i8, ptr %59, i64 %158
  %160 = load i64, ptr %159, align 1, !tbaa !36
  %161 = mul i64 %160, %29
  %162 = lshr i64 %161, %61
  %163 = getelementptr inbounds i16, ptr %6, i64 %162
  %164 = load i16, ptr %163, align 2, !tbaa !44
  %165 = add i16 %164, -1
  store i16 %165, ptr %163, align 2, !tbaa !44
  %166 = getelementptr i8, ptr %81, i64 %158
  %167 = load i64, ptr %166, align 1, !tbaa !36
  %168 = mul i64 %167, %29
  %169 = lshr i64 %168, %61
  %170 = getelementptr inbounds i16, ptr %6, i64 %169
  %171 = load i16, ptr %170, align 2, !tbaa !44
  %172 = add i16 %171, -1
  store i16 %172, ptr %170, align 2, !tbaa !44
  %173 = add nuw nsw i64 %158, 2
  %174 = icmp eq i64 %173, %63
  br i1 %174, label %132, label %157, !llvm.loop !48

175:                                              ; preds = %153, %175
  %176 = phi i32 [ %204, %175 ], [ %154, %153 ]
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i8, ptr %135, i64 %177
  %179 = load i64, ptr %178, align 1, !tbaa !36
  %180 = mul i64 %179, %29
  %181 = lshr i64 %180, %137
  %182 = getelementptr inbounds i32, ptr %1, i64 %181
  store i32 0, ptr %182, align 4, !tbaa !12
  %183 = add i32 %176, 1
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i8, ptr %135, i64 %184
  %186 = load i64, ptr %185, align 1, !tbaa !36
  %187 = mul i64 %186, %29
  %188 = lshr i64 %187, %137
  %189 = getelementptr inbounds i32, ptr %1, i64 %188
  store i32 0, ptr %189, align 4, !tbaa !12
  %190 = add i32 %176, 2
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i8, ptr %135, i64 %191
  %193 = load i64, ptr %192, align 1, !tbaa !36
  %194 = mul i64 %193, %29
  %195 = lshr i64 %194, %137
  %196 = getelementptr inbounds i32, ptr %1, i64 %195
  store i32 0, ptr %196, align 4, !tbaa !12
  %197 = add i32 %176, 3
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i8, ptr %135, i64 %198
  %200 = load i64, ptr %199, align 1, !tbaa !36
  %201 = mul i64 %200, %29
  %202 = lshr i64 %201, %137
  %203 = getelementptr inbounds i32, ptr %1, i64 %202
  store i32 0, ptr %203, align 4, !tbaa !12
  %204 = add i32 %176, 4
  %205 = icmp eq i32 %204, %55
  br i1 %205, label %206, label %175, !llvm.loop !49

206:                                              ; preds = %153, %175, %132
  %207 = zext i32 %56 to i64
  %208 = icmp eq i32 %54, 0
  br i1 %208, label %239, label %209

209:                                              ; preds = %206
  %210 = add i32 %32, %55
  %211 = sub i32 %210, %56
  %212 = zext i32 %211 to i64
  %213 = tail call i64 @llvm.umin.i64(i64 %37, i64 %212)
  %214 = icmp ult i64 %213, %33
  br i1 %214, label %249, label %215

215:                                              ; preds = %209
  %216 = sub i64 %37, %213
  %217 = getelementptr inbounds i8, ptr %2, i64 %216
  %218 = load ptr, ptr %0, align 8, !tbaa !30
  %219 = getelementptr inbounds i8, ptr %218, i64 %207
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %217, ptr align 1 %219, i64 %213, i1 false)
  br i1 %17, label %220, label %242

220:                                              ; preds = %215
  %221 = tail call i64 @clock() #14
  %222 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %221, i64 %39), !nosanitize !50
  %223 = extractvalue { i64, i1 } %222, 1, !nosanitize !50
  br i1 %223, label %224, label %225, !nosanitize !50

224:                                              ; preds = %220
  tail call void @llvm.ubsantrap(i8 21) #17, !nosanitize !50
  unreachable, !nosanitize !50

225:                                              ; preds = %220
  %226 = extractvalue { i64, i1 } %222, 0, !nosanitize !50
  %227 = icmp sgt i64 %226, 150000
  %228 = or i1 %34, %227
  br i1 %228, label %229, label %242

229:                                              ; preds = %225
  %230 = tail call i64 @clock() #14
  %231 = load ptr, ptr @stderr, align 8, !tbaa !17
  %232 = sub i64 %3, %216
  %233 = mul i64 %232, 100
  %234 = udiv i64 %233, %3
  %235 = trunc i64 %234 to i32
  %236 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %231, ptr noundef nonnull @.str.13, i32 noundef %235) #15
  %237 = load ptr, ptr @stderr, align 8, !tbaa !17
  %238 = tail call i32 @fflush(ptr noundef %237)
  br label %242

239:                                              ; preds = %206
  %240 = add nuw nsw i64 %38, 1
  %241 = icmp ugt i64 %38, 8
  br i1 %241, label %249, label %242

242:                                              ; preds = %215, %225, %229, %239
  %243 = phi i64 [ %37, %239 ], [ %216, %229 ], [ %216, %225 ], [ %216, %215 ]
  %244 = phi i64 [ %240, %239 ], [ 0, %229 ], [ 0, %225 ], [ 0, %215 ]
  %245 = phi i64 [ %39, %239 ], [ %230, %229 ], [ %39, %225 ], [ %39, %215 ]
  %246 = add nsw i64 %40, 1
  %247 = urem i64 %246, %35
  %248 = icmp eq i64 %243, 0
  br i1 %248, label %249, label %36, !llvm.loop !51

249:                                              ; preds = %242, %239, %209, %24
  %250 = phi i64 [ 0, %24 ], [ %37, %209 ], [ %37, %239 ], [ 0, %242 ]
  br i1 %17, label %251, label %256

251:                                              ; preds = %249
  %252 = load ptr, ptr @stderr, align 8, !tbaa !17
  %253 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %252, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #15
  %254 = load ptr, ptr @stderr, align 8, !tbaa !17
  %255 = tail call i32 @fflush(ptr noundef %254)
  br label %256

256:                                              ; preds = %251, %249
  ret i64 %250
}

declare i64 @ZDICT_finalizeDictionary(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef byval(%struct.ZDICT_params_t) align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr nocapture noundef writeonly %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca [16 x i8], align 4
  %8 = alloca { i32, %struct.ZDICT_params_t }, align 8
  %9 = alloca [12 x i8], align 4
  %10 = alloca %struct.COVER_best_s, align 8
  %11 = alloca %struct.FASTCOVER_ctx_t, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9)
  %12 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %5, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %5, i64 0, i32 5
  %15 = load double, ptr %14, align 8, !tbaa !53
  %16 = fcmp ugt double %15, 0.000000e+00
  %17 = select i1 %16, double %15, double 7.500000e-01
  %18 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %5, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !54
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 6, i32 %19
  %22 = select i1 %20, i32 8, i32 %19
  %23 = load i32, ptr %5, align 8, !tbaa !55
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 50, i32 %23
  %26 = select i1 %24, i32 2000, i32 %23
  %27 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %5, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !56
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 40, i32 %28
  %31 = select i1 %24, i32 1950, i32 0
  %32 = udiv i32 %31, %30
  %33 = tail call i32 @llvm.umax.i32(i32 %32, i32 1)
  %34 = trunc i32 %31 to i16
  %35 = trunc i32 %33 to i16
  %36 = udiv i16 %34, %35
  %37 = add nuw nsw i16 %36, 1
  %38 = zext nneg i16 %37 to i32
  %39 = zext i1 %20 to i32
  %40 = shl nuw nsw i32 %38, %39
  %41 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %5, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !57
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 20, i32 %42
  %45 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %5, i64 0, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !58
  %47 = tail call i32 @llvm.umax.i32(i32 %46, i32 1)
  %48 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %5, i64 0, i32 9, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !5
  %50 = freeze i32 %49
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %10) #14
  %51 = fcmp ogt double %17, 1.000000e+00
  br i1 %51, label %52, label %59

52:                                               ; preds = %6
  %53 = icmp sgt i32 %50, 0
  br i1 %53, label %54, label %279

54:                                               ; preds = %52
  %55 = load ptr, ptr @stderr, align 8, !tbaa !17
  %56 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 21, i64 1, ptr %55) #15
  %57 = load ptr, ptr @stderr, align 8, !tbaa !17
  %58 = tail call i32 @fflush(ptr noundef %57)
  br label %279

59:                                               ; preds = %6
  %60 = icmp ugt i32 %46, 10
  br i1 %60, label %61, label %68

61:                                               ; preds = %59
  %62 = icmp sgt i32 %50, 0
  br i1 %62, label %63, label %279

63:                                               ; preds = %61
  %64 = load ptr, ptr @stderr, align 8, !tbaa !17
  %65 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 16, i64 1, ptr %64) #15
  %66 = load ptr, ptr @stderr, align 8, !tbaa !17
  %67 = tail call i32 @fflush(ptr noundef %66)
  br label %279

68:                                               ; preds = %59
  %69 = icmp ult i32 %25, %22
  %70 = icmp ult i32 %26, %25
  %71 = or i1 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = icmp sgt i32 %50, 0
  br i1 %73, label %74, label %279

74:                                               ; preds = %72
  %75 = load ptr, ptr @stderr, align 8, !tbaa !17
  %76 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 12, i64 1, ptr %75) #15
  %77 = load ptr, ptr @stderr, align 8, !tbaa !17
  %78 = tail call i32 @fflush(ptr noundef %77)
  br label %279

79:                                               ; preds = %68
  %80 = icmp eq i32 %4, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %79
  %82 = icmp sgt i32 %50, 0
  br i1 %82, label %83, label %279

83:                                               ; preds = %81
  %84 = load ptr, ptr @stderr, align 8, !tbaa !17
  %85 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %84) #15
  %86 = load ptr, ptr @stderr, align 8, !tbaa !17
  %87 = tail call i32 @fflush(ptr noundef %86)
  br label %279

88:                                               ; preds = %79
  %89 = icmp ult i64 %1, 256
  br i1 %89, label %90, label %97

90:                                               ; preds = %88
  %91 = icmp sgt i32 %50, 0
  br i1 %91, label %92, label %279

92:                                               ; preds = %90
  %93 = load ptr, ptr @stderr, align 8, !tbaa !17
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef nonnull @.str.2, i32 noundef 256) #15
  %95 = load ptr, ptr @stderr, align 8, !tbaa !17
  %96 = tail call i32 @fflush(ptr noundef %95)
  br label %279

97:                                               ; preds = %88
  %98 = icmp ugt i32 %13, 1
  br i1 %98, label %99, label %103

99:                                               ; preds = %97
  %100 = zext i32 %13 to i64
  %101 = tail call ptr @POOL_create(i64 noundef %100, i64 noundef 1) #14
  %102 = icmp eq ptr %101, null
  br i1 %102, label %279, label %103

103:                                              ; preds = %99, %97
  %104 = phi ptr [ %101, %99 ], [ null, %97 ]
  call void @COVER_best_init(ptr noundef nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8)
  %105 = load i32, ptr %12, align 1
  %106 = getelementptr inbounds i8, ptr %5, i64 36
  %107 = getelementptr inbounds i8, ptr %5, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(16) %107, i64 16, i1 false)
  %108 = getelementptr inbounds i8, ptr %8, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %108, i64 12, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8)
  %109 = zext nneg i32 %47 to i64
  %110 = getelementptr inbounds [11 x %struct.FASTCOVER_accel_t], ptr @FASTCOVER_defaultAccelParameters, i64 0, i64 %109
  %111 = load i64, ptr %110, align 8, !tbaa.struct !19
  %112 = icmp sgt i32 %50, 1
  br i1 %112, label %113, label %118

113:                                              ; preds = %103
  %114 = load ptr, ptr @stderr, align 8, !tbaa !17
  %115 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.9, i32 noundef %40) #15
  %116 = load ptr, ptr @stderr, align 8, !tbaa !17
  %117 = call i32 @fflush(ptr noundef %116)
  br label %118

118:                                              ; preds = %113, %103
  %119 = icmp ugt i32 %21, %22
  br i1 %119, label %252, label %120

120:                                              ; preds = %118
  %121 = icmp sgt i32 %50, 2
  %122 = icmp eq i32 %50, 0
  %123 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %50, i32 -1)
  %124 = extractvalue { i32, i1 } %123, 0
  %125 = extractvalue { i32, i1 } %123, 1
  %126 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %11, i64 0, i32 6
  %127 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %11, i64 0, i32 11
  %128 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %11, i64 0, i32 9
  %129 = icmp eq ptr %104, null
  %130 = icmp ugt i32 %50, 3
  %131 = icmp sgt i32 %50, 0
  %132 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %11, i64 0, i32 7
  %133 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %11, i64 0, i32 1
  %134 = select i1 %122, i32 0, i32 %124
  br label %135

135:                                              ; preds = %120, %247
  %136 = phi i32 [ %242, %247 ], [ 1, %120 ]
  %137 = phi i32 [ %250, %247 ], [ %21, %120 ]
  %138 = phi i1 [ false, %247 ], [ true, %120 ]
  %139 = phi i64 [ %241, %247 ], [ 0, %120 ]
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %11) #14
  br i1 %121, label %140, label %145

140:                                              ; preds = %135
  %141 = load ptr, ptr @stderr, align 8, !tbaa !17
  %142 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef nonnull @.str.10, i32 noundef %137) #15
  %143 = load ptr, ptr @stderr, align 8, !tbaa !17
  %144 = call i32 @fflush(ptr noundef %143)
  br i1 %125, label %146, label %147, !nosanitize !50

145:                                              ; preds = %135
  br i1 %125, label %146, label %147

146:                                              ; preds = %145, %140, %218
  call void @llvm.ubsantrap(i8 21) #17, !nosanitize !50
  unreachable, !nosanitize !50

147:                                              ; preds = %145, %140
  %148 = phi i32 [ %134, %145 ], [ %124, %140 ]
  %149 = call fastcc i64 @FASTCOVER_ctx_init(ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %137, double noundef %17, i32 noundef %44, i64 %111, i32 noundef %148), !range !20
  %150 = icmp ult i64 %149, -119
  br i1 %150, label %158, label %151

151:                                              ; preds = %147
  br i1 %131, label %152, label %157

152:                                              ; preds = %151
  %153 = load ptr, ptr @stderr, align 8, !tbaa !17
  %154 = call i64 @fwrite(ptr nonnull @.str.3, i64 29, i64 1, ptr %153) #15
  %155 = load ptr, ptr @stderr, align 8, !tbaa !17
  %156 = call i32 @fflush(ptr noundef %155)
  br label %157

157:                                              ; preds = %151, %152
  call void @COVER_best_destroy(ptr noundef nonnull %10) #14
  br label %245

158:                                              ; preds = %147
  br i1 %138, label %159, label %161

159:                                              ; preds = %158
  %160 = load i64, ptr %126, align 8, !tbaa !21
  call void @COVER_warnOnSmallCorpus(i64 noundef %1, i64 noundef %160, i32 noundef %50) #14
  br label %161

161:                                              ; preds = %159, %158
  %162 = icmp eq i32 %137, 0
  br label %163

163:                                              ; preds = %161, %240
  %164 = phi i32 [ %136, %161 ], [ %242, %240 ]
  %165 = phi i32 [ %25, %161 ], [ %243, %240 ]
  %166 = phi i64 [ %139, %161 ], [ %241, %240 ]
  %167 = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #18
  br i1 %121, label %168, label %173

168:                                              ; preds = %163
  %169 = load ptr, ptr @stderr, align 8, !tbaa !17
  %170 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef nonnull @.str.11, i32 noundef %165) #15
  %171 = load ptr, ptr @stderr, align 8, !tbaa !17
  %172 = call i32 @fflush(ptr noundef %171)
  br label %173

173:                                              ; preds = %168, %163
  %174 = icmp eq ptr %167, null
  br i1 %174, label %175, label %181

175:                                              ; preds = %173
  br i1 %131, label %176, label %237

176:                                              ; preds = %175
  %177 = load ptr, ptr @stderr, align 8, !tbaa !17
  %178 = call i64 @fwrite(ptr nonnull @.str.12, i64 30, i64 1, ptr %177) #15
  %179 = load ptr, ptr @stderr, align 8, !tbaa !17
  %180 = call i32 @fflush(ptr noundef %179)
  br label %237

181:                                              ; preds = %173
  store ptr %11, ptr %167, align 8, !tbaa !59
  %182 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %167, i64 0, i32 1
  store ptr %10, ptr %182, align 8, !tbaa !61
  %183 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %167, i64 0, i32 2
  store i64 %1, ptr %183, align 8, !tbaa !62
  %184 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %167, i64 0, i32 3
  %185 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %167, i64 0, i32 3, i32 1
  %186 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %167, i64 0, i32 3, i32 2
  %187 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %167, i64 0, i32 3, i32 3
  store i32 %105, ptr %187, align 4, !tbaa.struct !63
  %188 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %167, i64 0, i32 3, i32 4
  %189 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %167, i64 0, i32 3, i32 5
  %190 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %167, i64 0, i32 3, i32 6
  store i32 0, ptr %190, align 4, !tbaa.struct !65
  %191 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %167, i64 0, i32 3, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %191, ptr noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !15
  %192 = getelementptr inbounds i8, ptr %167, i64 68
  store i32 0, ptr %192, align 4, !tbaa.struct !50
  store i32 %165, ptr %184, align 8, !tbaa !66
  store i32 %137, ptr %185, align 4, !tbaa !67
  store double %17, ptr %188, align 8, !tbaa !68
  store i32 %30, ptr %186, align 8, !tbaa !69
  store i32 0, ptr %189, align 8, !tbaa !70
  %193 = load i32, ptr %127, align 8, !tbaa !29
  %194 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %167, i64 0, i32 3, i32 7, i32 1
  store i32 %193, ptr %194, align 4, !tbaa !71
  %195 = load i32, ptr %128, align 4, !tbaa !35
  %196 = icmp eq i32 %165, 0
  %197 = or i1 %196, %162
  br i1 %197, label %207, label %198

198:                                              ; preds = %181
  switch i32 %137, label %207 [
    i32 8, label %199
    i32 6, label %199
  ]

199:                                              ; preds = %198, %198
  %200 = zext i32 %165 to i64
  %201 = icmp ugt i64 %200, %1
  %202 = icmp ugt i32 %137, %165
  %203 = or i1 %201, %202
  %204 = add i32 %195, -32
  %205 = icmp ult i32 %204, -31
  %206 = or i1 %205, %203
  br i1 %206, label %207, label %214

207:                                              ; preds = %199, %198, %181
  br i1 %131, label %208, label %213

208:                                              ; preds = %207
  %209 = load ptr, ptr @stderr, align 8, !tbaa !17
  %210 = call i64 @fwrite(ptr nonnull @.str, i64 31, i64 1, ptr %209) #15
  %211 = load ptr, ptr @stderr, align 8, !tbaa !17
  %212 = call i32 @fflush(ptr noundef %211)
  br label %213

213:                                              ; preds = %208, %207
  call void @free(ptr noundef nonnull %167) #14
  br label %240

214:                                              ; preds = %199
  call void @COVER_best_start(ptr noundef nonnull %10) #14
  br i1 %129, label %216, label %215

215:                                              ; preds = %214
  call void @POOL_add(ptr noundef nonnull %104, ptr noundef nonnull @FASTCOVER_tryParameters, ptr noundef nonnull %167) #14
  br label %217

216:                                              ; preds = %214
  call void @FASTCOVER_tryParameters(ptr noundef nonnull %167)
  br label %217

217:                                              ; preds = %216, %215
  br i1 %112, label %218, label %234

218:                                              ; preds = %217
  %219 = call i64 @clock() #14
  %220 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %219, i64 %166), !nosanitize !50
  %221 = extractvalue { i64, i1 } %220, 1, !nosanitize !50
  br i1 %221, label %146, label %222, !nosanitize !50

222:                                              ; preds = %218
  %223 = extractvalue { i64, i1 } %220, 0, !nosanitize !50
  %224 = icmp sgt i64 %223, 150000
  %225 = or i1 %224, %130
  br i1 %225, label %226, label %234

226:                                              ; preds = %222
  %227 = call i64 @clock() #14
  %228 = load ptr, ptr @stderr, align 8, !tbaa !17
  %229 = mul i32 %164, 100
  %230 = udiv i32 %229, %40
  %231 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %228, ptr noundef nonnull @.str.13, i32 noundef %230) #15
  %232 = load ptr, ptr @stderr, align 8, !tbaa !17
  %233 = call i32 @fflush(ptr noundef %232)
  br label %234

234:                                              ; preds = %226, %222, %217
  %235 = phi i64 [ %166, %217 ], [ %227, %226 ], [ %166, %222 ]
  %236 = add i32 %164, 1
  br label %240

237:                                              ; preds = %175, %176
  call void @COVER_best_destroy(ptr noundef nonnull %10) #14
  %238 = load ptr, ptr %132, align 8, !tbaa !25
  call void @free(ptr noundef %238) #14
  store ptr null, ptr %132, align 8, !tbaa !25
  %239 = load ptr, ptr %133, align 8, !tbaa !28
  call void @free(ptr noundef %239) #14
  store ptr null, ptr %133, align 8, !tbaa !28
  br label %245

240:                                              ; preds = %234, %213
  %241 = phi i64 [ %166, %213 ], [ %235, %234 ]
  %242 = phi i32 [ %164, %213 ], [ %236, %234 ]
  %243 = add i32 %165, %33
  %244 = icmp ugt i32 %243, %26
  br i1 %244, label %247, label %163, !llvm.loop !72

245:                                              ; preds = %237, %157
  %246 = phi i64 [ %149, %157 ], [ -64, %237 ]
  call void @POOL_free(ptr noundef %104) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %11) #14
  br label %279

247:                                              ; preds = %240
  call void @COVER_best_wait(ptr noundef nonnull %10) #14
  %248 = load ptr, ptr %132, align 8, !tbaa !25
  call void @free(ptr noundef %248) #14
  store ptr null, ptr %132, align 8, !tbaa !25
  %249 = load ptr, ptr %133, align 8, !tbaa !28
  call void @free(ptr noundef %249) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %11) #14
  %250 = add i32 %137, 2
  %251 = icmp ugt i32 %250, %22
  br i1 %251, label %252, label %135, !llvm.loop !73

252:                                              ; preds = %247, %118
  br i1 %112, label %253, label %258

253:                                              ; preds = %252
  %254 = load ptr, ptr @stderr, align 8, !tbaa !17
  %255 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %254, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #15
  %256 = load ptr, ptr @stderr, align 8, !tbaa !17
  %257 = call i32 @fflush(ptr noundef %256)
  br label %258

258:                                              ; preds = %253, %252
  %259 = getelementptr inbounds %struct.COVER_best_s, ptr %10, i64 0, i32 6
  %260 = load i64, ptr %259, align 8, !tbaa !74
  %261 = icmp ult i64 %260, -119
  br i1 %261, label %263, label %262

262:                                              ; preds = %258
  call void @COVER_best_destroy(ptr noundef nonnull %10) #14
  call void @POOL_free(ptr noundef %104) #14
  br label %279

263:                                              ; preds = %258
  %264 = getelementptr inbounds %struct.COVER_best_s, ptr %10, i64 0, i32 4
  %265 = load i64, ptr %264, align 8, !tbaa !76
  %266 = getelementptr inbounds %struct.COVER_best_s, ptr %10, i64 0, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  %267 = getelementptr inbounds %struct.COVER_best_s, ptr %10, i64 0, i32 5, i32 2
  %268 = getelementptr inbounds %struct.COVER_best_s, ptr %10, i64 0, i32 5, i32 4
  %269 = load double, ptr %268, align 8
  %270 = getelementptr inbounds %struct.COVER_best_s, ptr %10, i64 0, i32 5, i32 5
  %271 = load i32, ptr %270, align 8
  %272 = getelementptr inbounds %struct.COVER_best_s, ptr %10, i64 0, i32 5, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %272, i64 16, i1 false)
  %273 = load <2 x i32>, ptr %266, align 8
  store <2 x i32> %273, ptr %5, align 8, !tbaa !12
  %274 = load <2 x i32>, ptr %267, align 8
  store <2 x i32> %274, ptr %27, align 4, !tbaa !12
  store double %269, ptr %14, align 8, !tbaa !53
  store i32 %44, ptr %41, align 8, !tbaa !57
  store i32 %47, ptr %45, align 8, !tbaa !58
  %275 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %5, i64 0, i32 9
  %276 = getelementptr inbounds i8, ptr %7, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %275, ptr noundef nonnull align 4 dereferenceable(12) %276, i64 12, i1 false), !tbaa.struct !15
  store i32 %271, ptr %106, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  %277 = getelementptr inbounds %struct.COVER_best_s, ptr %10, i64 0, i32 3
  %278 = load ptr, ptr %277, align 8, !tbaa !78
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %278, i64 %265, i1 false)
  call void @COVER_best_destroy(ptr noundef nonnull %10) #14
  call void @POOL_free(ptr noundef %104) #14
  br label %279

279:                                              ; preds = %245, %262, %263, %99, %90, %92, %81, %83, %72, %74, %61, %63, %52, %54
  %280 = phi i64 [ -42, %54 ], [ -42, %52 ], [ -42, %63 ], [ -42, %61 ], [ -42, %74 ], [ -42, %72 ], [ -72, %83 ], [ -72, %81 ], [ -70, %92 ], [ -70, %90 ], [ -64, %99 ], [ %260, %262 ], [ %265, %263 ], [ %246, %245 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9)
  ret i64 %280
}

declare ptr @POOL_create(i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @COVER_best_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #8

declare void @COVER_best_destroy(ptr noundef) local_unnamed_addr #5

declare void @POOL_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

declare void @COVER_best_start(ptr noundef) local_unnamed_addr #5

declare void @POOL_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @FASTCOVER_tryParameters(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.ZDICT_cover_params_t, align 8
  %3 = alloca %struct.COVER_dictSelection, align 8
  %4 = alloca %struct.COVER_dictSelection, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #14
  %6 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %0, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false), !tbaa.struct !79
  %7 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !62
  %9 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %5, i64 0, i32 9
  %10 = load i32, ptr %9, align 4, !tbaa !35
  %11 = zext nneg i32 %10 to i64
  %12 = shl nuw i64 1, %11
  %13 = tail call noalias ptr @calloc(i64 noundef %12, i64 noundef 2) #16
  %14 = tail call noalias ptr @malloc(i64 noundef %8) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @COVER_dictSelectionError(ptr dead_on_unwind nonnull writable sret(%struct.COVER_dictSelection) align 8 %3, i64 noundef -1) #14
  %15 = load i32, ptr %9, align 4, !tbaa !35
  %16 = zext nneg i32 %15 to i64
  %17 = shl i64 4, %16
  %18 = call noalias ptr @malloc(i64 noundef %17) #18
  %19 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %5, i64 0, i32 11
  %20 = load i32, ptr %19, align 8, !tbaa !29
  %21 = icmp ne ptr %13, null
  %22 = icmp ne ptr %14, null
  %23 = and i1 %21, %22
  %24 = icmp ne ptr %18, null
  %25 = and i1 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = icmp sgt i32 %20, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %26
  %29 = load ptr, ptr @stderr, align 8, !tbaa !17
  %30 = call i64 @fwrite(ptr nonnull @.str.25, i64 42, i64 1, ptr %29) #15
  br label %62

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %5, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %18, ptr align 4 %33, i64 %17, i1 false)
  %34 = load i32, ptr %2, align 8, !tbaa !80
  %35 = getelementptr inbounds i8, ptr %2, i64 4
  %36 = load i32, ptr %35, align 4
  %37 = call fastcc i64 @FASTCOVER_buildDictionary(ptr noundef nonnull %5, ptr noundef nonnull %18, ptr noundef nonnull %14, i64 noundef %8, i32 %34, i32 %36, ptr noundef nonnull %13)
  %38 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %5, i64 0, i32 4
  %39 = load i64, ptr %38, align 8, !tbaa !26
  %40 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %5, i64 0, i32 10
  %41 = load i32, ptr %40, align 8, !tbaa !27
  %42 = zext i32 %41 to i64
  %43 = mul i64 %39, %42
  %44 = udiv i64 %43, 100
  %45 = trunc i64 %44 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %46 = getelementptr inbounds i8, ptr %14, i64 %37
  %47 = sub i64 %8, %37
  %48 = load ptr, ptr %5, align 8, !tbaa !30
  %49 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %5, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !31
  %51 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %5, i64 0, i32 3
  %52 = load i64, ptr %51, align 8, !tbaa !32
  %53 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %5, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !28
  call void @COVER_selectDict(ptr dead_on_unwind nonnull writable sret(%struct.COVER_dictSelection) align 8 %4, ptr noundef nonnull %46, i64 noundef %8, i64 noundef %47, ptr noundef %48, ptr noundef %50, i32 noundef %45, i64 noundef %39, i64 noundef %52, ptr noundef nonnull byval(%struct.ZDICT_cover_params_t) align 8 %2, ptr noundef %54, i64 noundef -1) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !81
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  %55 = call i32 @COVER_dictSelectionIsError(ptr noundef nonnull byval(%struct.COVER_dictSelection) align 8 %3) #14
  %56 = icmp ne i32 %55, 0
  %57 = icmp sgt i32 %20, 0
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %65

59:                                               ; preds = %31
  %60 = load ptr, ptr @stderr, align 8, !tbaa !17
  %61 = call i64 @fwrite(ptr nonnull @.str.26, i64 28, i64 1, ptr %60) #15
  br label %62

62:                                               ; preds = %28, %59
  %63 = load ptr, ptr @stderr, align 8, !tbaa !17
  %64 = call i32 @fflush(ptr noundef %63)
  br label %65

65:                                               ; preds = %62, %31, %26
  call void @free(ptr noundef %14) #14
  %66 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %0, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !61
  call void @COVER_best_finish(ptr noundef %67, ptr noundef nonnull byval(%struct.ZDICT_cover_params_t) align 8 %2, ptr noundef nonnull byval(%struct.COVER_dictSelection) align 8 %3) #14
  call void @free(ptr noundef nonnull %0) #14
  call void @free(ptr noundef %13) #14
  call void @COVER_dictSelectionFree(ptr noundef nonnull byval(%struct.COVER_dictSelection) align 8 %3) #14
  call void @free(ptr noundef %18) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #14
  ret void
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #11

declare void @COVER_best_wait(ptr noundef) local_unnamed_addr #5

declare i64 @COVER_sum(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i64 @COVER_computeEpochs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #11

declare void @COVER_dictSelectionError(ptr dead_on_unwind writable sret(%struct.COVER_dictSelection) align 8, i64 noundef) local_unnamed_addr #5

declare void @COVER_selectDict(ptr dead_on_unwind writable sret(%struct.COVER_dictSelection) align 8, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @COVER_dictSelectionIsError(ptr noundef byval(%struct.COVER_dictSelection) align 8) local_unnamed_addr #5

declare void @COVER_best_finish(ptr noundef, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8, ptr noundef byval(%struct.COVER_dictSelection) align 8) local_unnamed_addr #5

declare void @COVER_dictSelectionFree(ptr noundef byval(%struct.COVER_dictSelection) align 8) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind }
attributes #15 = { cold }
attributes #16 = { nounwind allocsize(0,1) }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 48}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !10, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !11, i64 44}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"double", !8, i64 0}
!11 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !10, i64 16}
!14 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !10, i64 16, !7, i64 24, !7, i64 28, !11, i64 32}
!15 = !{i64 0, i64 4, !12, i64 4, i64 4, !12, i64 8, i64 4, !12}
!16 = !{!14, !7, i64 24}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !8, i64 0}
!19 = !{i64 0, i64 4, !12, i64 4, i64 4, !12}
!20 = !{i64 -72, i64 1}
!21 = !{!22, !23, i64 48}
!22 = !{!"", !18, i64 0, !18, i64 8, !18, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !18, i64 56, !7, i64 64, !7, i64 68, !24, i64 72, !7, i64 80}
!23 = !{!"long", !8, i64 0}
!24 = !{!"", !7, i64 0, !7, i64 4}
!25 = !{!22, !18, i64 56}
!26 = !{!22, !23, i64 32}
!27 = !{!22, !7, i64 72}
!28 = !{!22, !18, i64 8}
!29 = !{!22, !7, i64 80}
!30 = !{!22, !18, i64 0}
!31 = !{!22, !18, i64 16}
!32 = !{!22, !23, i64 24}
!33 = !{!22, !23, i64 40}
!34 = !{!22, !7, i64 64}
!35 = !{!22, !7, i64 68}
!36 = !{!23, !23, i64 0}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!22, !7, i64 76}
!42 = distinct !{!42, !38}
!43 = distinct !{!43, !38}
!44 = !{!45, !45, i64 0}
!45 = !{!"short", !8, i64 0}
!46 = distinct !{!46, !38}
!47 = distinct !{!47, !40}
!48 = distinct !{!48, !38}
!49 = distinct !{!49, !38}
!50 = !{}
!51 = distinct !{!51, !38}
!52 = !{!6, !7, i64 16}
!53 = !{!6, !10, i64 24}
!54 = !{!6, !7, i64 4}
!55 = !{!6, !7, i64 0}
!56 = !{!6, !7, i64 12}
!57 = !{!6, !7, i64 8}
!58 = !{!6, !7, i64 32}
!59 = !{!60, !18, i64 0}
!60 = !{!"FASTCOVER_tryParameters_data_s", !18, i64 0, !18, i64 8, !23, i64 16, !14, i64 24}
!61 = !{!60, !18, i64 8}
!62 = !{!60, !23, i64 16}
!63 = !{i64 0, i64 4, !12, i64 4, i64 8, !64, i64 12, i64 4, !12, i64 16, i64 4, !12, i64 20, i64 4, !12, i64 24, i64 4, !12, i64 28, i64 4, !12}
!64 = !{!10, !10, i64 0}
!65 = !{i64 0, i64 4, !12, i64 4, i64 4, !12, i64 8, i64 4, !12, i64 12, i64 4, !12}
!66 = !{!60, !7, i64 24}
!67 = !{!60, !7, i64 28}
!68 = !{!60, !10, i64 40}
!69 = !{!60, !7, i64 32}
!70 = !{!60, !7, i64 48}
!71 = !{!60, !7, i64 60}
!72 = distinct !{!72, !38}
!73 = distinct !{!73, !38}
!74 = !{!75, !23, i64 80}
!75 = !{!"COVER_best_s", !7, i64 0, !7, i64 4, !23, i64 8, !18, i64 16, !23, i64 24, !14, i64 32, !23, i64 80}
!76 = !{!75, !23, i64 24}
!77 = !{!6, !7, i64 36}
!78 = !{!75, !18, i64 16}
!79 = !{i64 0, i64 4, !12, i64 4, i64 4, !12, i64 8, i64 4, !12, i64 12, i64 4, !12, i64 16, i64 8, !64, i64 24, i64 4, !12, i64 28, i64 4, !12, i64 32, i64 4, !12, i64 36, i64 4, !12, i64 40, i64 4, !12}
!80 = !{!14, !7, i64 0}
!81 = !{i64 0, i64 8, !17, i64 8, i64 8, !36, i64 16, i64 8, !36}
