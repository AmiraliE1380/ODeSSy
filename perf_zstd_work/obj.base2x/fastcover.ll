; ModuleID = '<stdin>'
source_filename = "/mydata/zstd/lib/dictBuilder/fastcover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FASTCOVER_accel_t = type { i32, i32 }
%struct.ZDICT_fastCover_params_t = type { i32, i32, i32, i32, i32, double, i32, i32, i32, %struct.ZDICT_params_t }
%struct.ZDICT_params_t = type { i32, i32, i32 }
%struct.FASTCOVER_ctx_t = type { ptr, ptr, ptr, i64, i64, i64, i64, ptr, i32, i32, %struct.FASTCOVER_accel_t, i32 }
%struct.ZDICT_cover_params_t = type { i32, i32, i32, i32, double, i32, i32, %struct.ZDICT_params_t }
%struct.COVER_best_s = type { i32, i32, i64, ptr, i64, %struct.ZDICT_cover_params_t, i64 }
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
define dso_local i64 @ZDICT_trainFromBuffer_fastCover(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef readonly byval(%struct.ZDICT_fastCover_params_t) align 8 captures(none) %5) local_unnamed_addr #0 {
  %7 = alloca %struct.FASTCOVER_ctx_t, align 8
  %8 = alloca %struct.ZDICT_cover_params_t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %10 = load i32, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %12 = load i32, ptr %11, align 8, !tbaa !12
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 20, i32 %12
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %16 = load i32, ptr %15, align 8, !tbaa !13
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 1)
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %19 = load i32, ptr %5, align 8
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %23 = getelementptr inbounds nuw i8, ptr %5, i64 36
  %24 = load i32, ptr %23, align 4
  store i32 %19, ptr %8, align 8, !tbaa !14
  %25 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %21, ptr %25, align 4, !tbaa !16
  %26 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %27 = load <2 x i32>, ptr %22, align 4
  store <2 x i32> %27, ptr %26, align 8, !tbaa !17
  %28 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double 1.000000e+00, ptr %28, align 8, !tbaa !18
  %29 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %30 = getelementptr inbounds nuw i8, ptr %5, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %29, ptr noundef nonnull align 4 dereferenceable(12) %30, i64 12, i1 false)
  store i32 %24, ptr %18, align 8, !tbaa !19
  %31 = icmp eq i32 %21, 0
  %32 = icmp eq i32 %19, 0
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %45, label %34

34:                                               ; preds = %6
  switch i32 %21, label %45 [
    i32 8, label %35
    i32 6, label %35
  ]

35:                                               ; preds = %34, %34
  %36 = zext i32 %19 to i64
  %37 = icmp ult i64 %1, %36
  %38 = icmp ugt i32 %21, %19
  %39 = or i1 %38, %37
  %40 = add i32 %14, -32
  %41 = icmp ult i32 %40, -31
  %42 = or i1 %41, %39
  %43 = icmp ugt i32 %16, 10
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35, %34, %6
  %46 = icmp sgt i32 %10, 0
  br i1 %46, label %47, label %96

47:                                               ; preds = %45
  tail call fastcc void @ZDICT_trainFromBuffer_fastCover.cold.6() #15
  br label %96

48:                                               ; preds = %35
  %49 = icmp eq i32 %4, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = icmp sgt i32 %10, 0
  br i1 %51, label %52, label %96

52:                                               ; preds = %50
  tail call fastcc void @ZDICT_trainFromBuffer_fastCover.cold.5() #15
  br label %96

53:                                               ; preds = %48
  %54 = icmp ult i64 %1, 256
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = icmp sgt i32 %10, 0
  br i1 %56, label %57, label %96

57:                                               ; preds = %55
  tail call fastcc void @ZDICT_trainFromBuffer_fastCover.cold.4() #15
  br label %96

58:                                               ; preds = %53
  %59 = zext nneg i32 %17 to i64
  %60 = getelementptr inbounds nuw [8 x i8], ptr @FASTCOVER_defaultAccelParameters, i64 %59
  %61 = load i64, ptr %60, align 8
  %62 = call fastcc i64 @FASTCOVER_ctx_init(ptr noundef %7, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %21, double noundef 1.000000e+00, i32 noundef %14, i64 %61, i32 noundef %10)
  %63 = icmp ult i64 %62, -119
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = icmp sgt i32 %10, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %64
  tail call fastcc void @ZDICT_trainFromBuffer_fastCover.cold.1() #15
  br label %96

67:                                               ; preds = %58
  %68 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %69 = load i64, ptr %68, align 8, !tbaa !20
  tail call void @COVER_warnOnSmallCorpus(i64 noundef %1, i64 noundef %69, i32 noundef %10) #16
  %70 = icmp sgt i32 %10, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  tail call fastcc void @ZDICT_trainFromBuffer_fastCover.cold.2() #15
  br label %72

72:                                               ; preds = %71, %67
  %73 = zext nneg i32 %14 to i64
  %74 = shl nuw nsw i64 1, %73
  %75 = tail call noalias ptr @calloc(i64 noundef %74, i64 noundef 2) #17
  %76 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %77 = load ptr, ptr %76, align 8, !tbaa !28
  %78 = call fastcc i64 @FASTCOVER_buildDictionary(ptr noundef nonnull %7, ptr noundef %77, ptr noundef %0, i64 noundef %1, i32 %19, i32 %21, ptr noundef %75)
  %79 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %80 = load i64, ptr %79, align 8, !tbaa !29
  %81 = getelementptr inbounds nuw i8, ptr %7, i64 72
  %82 = load i32, ptr %81, align 8, !tbaa !30
  %83 = zext i32 %82 to i64
  %84 = mul i64 %80, %83
  %85 = udiv i64 %84, 100
  %86 = trunc i64 %85 to i32
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 %78
  %88 = sub i64 %1, %78
  %89 = tail call i64 @ZDICT_finalizeDictionary(ptr noundef %0, i64 noundef %1, ptr noundef %87, i64 noundef %88, ptr noundef %2, ptr noundef %3, i32 noundef %86, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %29) #16
  %90 = icmp ult i64 %89, -119
  %91 = and i1 %70, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %72
  tail call fastcc void @ZDICT_trainFromBuffer_fastCover.cold.3(i64 %89) #15
  br label %93

93:                                               ; preds = %92, %72
  tail call void @free(ptr noundef %77) #16
  %94 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %95 = load ptr, ptr %94, align 8, !tbaa !31
  tail call void @free(ptr noundef %95) #16
  tail call void @free(ptr noundef %75) #16
  br label %96

96:                                               ; preds = %93, %66, %64, %57, %55, %52, %50, %47, %45
  %97 = phi i64 [ %89, %93 ], [ -42, %47 ], [ -42, %45 ], [ -72, %52 ], [ -72, %50 ], [ -70, %57 ], [ -70, %55 ], [ %62, %64 ], [ %62, %66 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret i64 %97
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -72, 1) i64 @FASTCOVER_ctx_init(ptr noundef nonnull captures(none) initializes((80, 84)) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, double noundef %5, i32 noundef %6, i64 %7, i32 noundef %8) unnamed_addr #0 {
  %10 = alloca ptr, align 8
  %11 = tail call i64 @COVER_sum(ptr noundef %2, i32 noundef %3) #16
  %12 = fcmp olt double %5, 1.000000e+00
  %13 = uitofp i32 %3 to double
  %14 = fmul double %5, %13
  %15 = fptoui double %14 to i32
  %16 = select i1 %12, i32 %15, i32 0
  %17 = select i1 %12, i32 %15, i32 %3
  %18 = sub i32 %3, %16
  br i1 %12, label %19, label %24

19:                                               ; preds = %9
  %20 = tail call i64 @COVER_sum(ptr noundef %2, i32 noundef %15) #16
  %21 = zext i32 %15 to i64
  %22 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %21
  %23 = tail call i64 @COVER_sum(ptr noundef %22, i32 noundef %18) #16
  br label %24

24:                                               ; preds = %19, %9
  %25 = phi i64 [ %20, %19 ], [ %11, %9 ]
  %26 = phi i64 [ %23, %19 ], [ %11, %9 ]
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %8, ptr %27, align 8, !tbaa !32
  %28 = tail call i32 @llvm.umax.i32(i32 %4, i32 8)
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %11, %29
  %31 = icmp ugt i64 %11, 4294967294
  %32 = or i1 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = icmp sgt i32 %8, 0
  br i1 %34, label %35, label %.loopexit8

35:                                               ; preds = %33
  tail call fastcc void @FASTCOVER_ctx_init.cold.6(i64 %11) #15
  br label %.loopexit8

36:                                               ; preds = %24
  %37 = icmp ult i32 %17, 5
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = icmp sgt i32 %8, 0
  br i1 %39, label %40, label %.loopexit8

40:                                               ; preds = %38
  tail call fastcc void @FASTCOVER_ctx_init.cold.5(i32 %17) #15
  br label %.loopexit8

41:                                               ; preds = %36
  %42 = icmp eq i32 %3, %16
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = icmp sgt i32 %8, 0
  br i1 %44, label %45, label %.loopexit8

45:                                               ; preds = %43
  tail call fastcc void @FASTCOVER_ctx_init.cold.4() #15
  br label %.loopexit8

46:                                               ; preds = %41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  %47 = icmp sgt i32 %8, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  tail call fastcc void @FASTCOVER_ctx_init.cold.1(i64 %25, i32 %17, i64 %26, i32 %18) #15
  br label %49

49:                                               ; preds = %48, %46
  store ptr %1, ptr %0, align 8, !tbaa !33
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %50, align 8, !tbaa !34
  %51 = zext i32 %3 to i64
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %51, ptr %52, align 8, !tbaa !35
  %53 = zext i32 %17 to i64
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %53, ptr %54, align 8, !tbaa !29
  %55 = zext i32 %18 to i64
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %55, ptr %56, align 8, !tbaa !36
  %reass.sub9 = sub i64 %25, %29
  %57 = add i64 %reass.sub9, 1
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %57, ptr %58, align 8, !tbaa !20
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %4, ptr %59, align 8, !tbaa !37
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %6, ptr %60, align 4, !tbaa !38
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %7, ptr %61, align 8
  %62 = add i32 %3, 1
  %63 = zext i32 %62 to i64
  %64 = tail call noalias ptr @calloc(i64 noundef %63, i64 noundef 8) #17
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %64, ptr %65, align 8, !tbaa !31
  %66 = icmp eq ptr %64, null
  %67 = lshr i64 %7, 32
  %68 = trunc nuw i64 %67 to i32
  br i1 %66, label %69, label %76

69:                                               ; preds = %49
  %70 = icmp sgt i32 %8, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  tail call fastcc void @FASTCOVER_ctx_init.cold.3() #15
  br label %72

72:                                               ; preds = %71, %69
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !28
  tail call void @free(ptr noundef %74) #16
  store ptr null, ptr %73, align 8, !tbaa !28
  %75 = load ptr, ptr %65, align 8, !tbaa !31
  tail call void @free(ptr noundef %75) #16
  store ptr null, ptr %65, align 8, !tbaa !31
  br label %.loopexit8

76:                                               ; preds = %49
  %77 = tail call i32 @llvm.umax.i32(i32 %62, i32 2)
  %78 = zext i32 %77 to i64
  %79 = getelementptr i8, ptr %2, i64 -8
  %80 = add nsw i64 %78, -1
  %81 = and i64 %80, 3
  %82 = icmp ult i32 %62, 5
  br i1 %82, label %.loopexit10, label %83

83:                                               ; preds = %76
  %84 = and i64 %80, -4
  %85 = getelementptr inbounds nuw i8, ptr %64, i64 8
  br label %86

86:                                               ; preds = %86, %83
  %87 = phi i64 [ 0, %83 ], [ %106, %86 ]
  %88 = phi i64 [ 1, %83 ], [ %108, %86 ]
  %89 = phi i64 [ 0, %83 ], [ %109, %86 ]
  %90 = getelementptr [8 x i8], ptr %79, i64 %88
  %91 = load i64, ptr %90, align 8, !tbaa !39
  %92 = add i64 %91, %87
  %93 = getelementptr inbounds nuw [8 x i8], ptr %64, i64 %88
  store i64 %92, ptr %93, align 8, !tbaa !39
  %94 = getelementptr [8 x i8], ptr %2, i64 %88
  %95 = load i64, ptr %94, align 8, !tbaa !39
  %96 = add i64 %95, %92
  %97 = getelementptr inbounds nuw [8 x i8], ptr %85, i64 %88
  store i64 %96, ptr %97, align 8, !tbaa !39
  %98 = add nuw nsw i64 %88, 2
  %99 = getelementptr [8 x i8], ptr %79, i64 %98
  %100 = load i64, ptr %99, align 8, !tbaa !39
  %101 = add i64 %100, %96
  %102 = getelementptr inbounds nuw [8 x i8], ptr %64, i64 %98
  store i64 %101, ptr %102, align 8, !tbaa !39
  %103 = add nuw nsw i64 %88, 3
  %104 = getelementptr [8 x i8], ptr %79, i64 %103
  %105 = load i64, ptr %104, align 8, !tbaa !39
  %106 = add i64 %105, %101
  %107 = getelementptr inbounds nuw [8 x i8], ptr %64, i64 %103
  store i64 %106, ptr %107, align 8, !tbaa !39
  %108 = add nuw nsw i64 %88, 4
  %109 = add nuw nsw i64 %89, 4
  %110 = icmp eq i64 %109, %84
  br i1 %110, label %.loopexit10, label %86, !llvm.loop !40

.loopexit10:                                      ; preds = %86, %76
  %111 = phi i64 [ 0, %76 ], [ %106, %86 ]
  %112 = phi i64 [ 1, %76 ], [ %108, %86 ]
  %113 = icmp eq i64 %81, 0
  br i1 %113, label %.loopexit9, label %.preheader

.preheader:                                       ; preds = %.loopexit10, %.preheader
  %114 = phi i64 [ %119, %.preheader ], [ %111, %.loopexit10 ]
  %115 = phi i64 [ %121, %.preheader ], [ %112, %.loopexit10 ]
  %116 = phi i64 [ %122, %.preheader ], [ 0, %.loopexit10 ]
  %117 = getelementptr [8 x i8], ptr %79, i64 %115
  %118 = load i64, ptr %117, align 8, !tbaa !39
  %119 = add i64 %118, %114
  %120 = getelementptr inbounds nuw [8 x i8], ptr %64, i64 %115
  store i64 %119, ptr %120, align 8, !tbaa !39
  %121 = add nuw nsw i64 %115, 1
  %122 = add nuw nsw i64 %116, 1
  %123 = icmp eq i64 %122, %81
  br i1 %123, label %.loopexit9, label %.preheader, !llvm.loop !42

.loopexit9:                                       ; preds = %.preheader, %.loopexit10
  %124 = zext nneg i32 %6 to i64
  %125 = shl nuw i64 1, %124
  %126 = tail call noalias ptr @calloc(i64 noundef %125, i64 noundef 4) #17
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %126, ptr %127, align 8, !tbaa !28
  %128 = icmp eq ptr %126, null
  br i1 %128, label %129, label %136

129:                                              ; preds = %.loopexit9
  %130 = icmp sgt i32 %8, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call fastcc void @FASTCOVER_ctx_init.cold.2(ptr %127, ptr %10) #15
  %132 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi ptr [ %132, %131 ], [ null, %129 ]
  tail call void @free(ptr noundef %134) #16
  store ptr null, ptr %127, align 8, !tbaa !28
  %135 = load ptr, ptr %65, align 8, !tbaa !31
  tail call void @free(ptr noundef %135) #16
  store ptr null, ptr %65, align 8, !tbaa !31
  br label %.loopexit8

136:                                              ; preds = %.loopexit9
  br i1 %47, label %137, label %145

137:                                              ; preds = %136
  %138 = load ptr, ptr @stderr, align 8, !tbaa !44
  %139 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr %138) #18
  %140 = load ptr, ptr @stderr, align 8, !tbaa !44
  %141 = tail call i32 @fflush(ptr noundef %140)
  %142 = load i64, ptr %54, align 8, !tbaa !29
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %.loopexit8, label %._crit_edge

._crit_edge:                                      ; preds = %137
  %144 = load ptr, ptr %127, align 8, !tbaa !28
  %.pre = load i32, ptr %59, align 8, !tbaa !37
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.pre13 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !46
  %.pre14 = load i32, ptr %60, align 4, !tbaa !38
  %.pre15 = load ptr, ptr %65, align 8, !tbaa !31
  %.pre16 = tail call i32 @llvm.umax.i32(i32 %.pre, i32 8)
  %.pre17 = zext i32 %.pre16 to i64
  br label %145

145:                                              ; preds = %._crit_edge, %136
  %.pre-phi18 = phi i64 [ %.pre17, %._crit_edge ], [ %29, %136 ]
  %146 = phi ptr [ %.pre15, %._crit_edge ], [ %64, %136 ]
  %147 = phi i32 [ %.pre14, %._crit_edge ], [ %6, %136 ]
  %148 = phi i32 [ %.pre13, %._crit_edge ], [ %68, %136 ]
  %149 = phi i32 [ %.pre, %._crit_edge ], [ %4, %136 ]
  %150 = phi ptr [ %144, %._crit_edge ], [ %126, %136 ]
  %151 = phi i64 [ %142, %._crit_edge ], [ %53, %136 ]
  %152 = icmp eq i32 %149, 6
  %153 = sub i32 64, %147
  %154 = zext nneg i32 %153 to i64
  %155 = select i1 %152, i64 -3523014627193847808, i64 -3523014627327384477
  %156 = zext i32 %148 to i64
  %157 = add nuw nsw i64 %156, 1
  %158 = add nuw nsw i64 %157, %.pre-phi18
  %159 = load i64, ptr %146, align 8, !tbaa !39
  br label %161

.loopexit:                                        ; preds = %171, %161
  %160 = icmp eq i64 %164, %151
  br i1 %160, label %.loopexit8, label %161, !llvm.loop !47

161:                                              ; preds = %.loopexit, %145
  %162 = phi i64 [ %159, %145 ], [ %166, %.loopexit ]
  %163 = phi i64 [ 0, %145 ], [ %164, %.loopexit ]
  %164 = add nuw i64 %163, 1
  %165 = getelementptr inbounds nuw [8 x i8], ptr %146, i64 %164
  %166 = load i64, ptr %165, align 8, !tbaa !39
  %167 = add i64 %162, %.pre-phi18
  %168 = icmp ugt i64 %167, %166
  br i1 %168, label %.loopexit, label %169

169:                                              ; preds = %161
  %170 = load ptr, ptr %0, align 8, !tbaa !33
  br label %171

171:                                              ; preds = %171, %169
  %172 = phi i64 [ %162, %169 ], [ %180, %171 ]
  %173 = getelementptr inbounds nuw i8, ptr %170, i64 %172
  %174 = load i64, ptr %173, align 1, !tbaa !39
  %175 = mul i64 %174, %155
  %176 = lshr i64 %175, %154
  %177 = getelementptr inbounds nuw [4 x i8], ptr %150, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !17
  %179 = add i32 %178, 1
  store i32 %179, ptr %177, align 4, !tbaa !17
  %180 = add i64 %172, %157
  %181 = add i64 %158, %172
  %182 = icmp ugt i64 %181, %166
  br i1 %182, label %.loopexit, label %171, !llvm.loop !48

.loopexit8:                                       ; preds = %.loopexit, %137, %133, %72, %45, %43, %40, %38, %35, %33
  %183 = phi i64 [ -64, %72 ], [ -64, %133 ], [ -72, %35 ], [ -72, %33 ], [ -72, %40 ], [ -72, %38 ], [ -72, %45 ], [ -72, %43 ], [ 0, %137 ], [ 0, %.loopexit ]
  ret i64 %183
}

declare void @COVER_warnOnSmallCorpus(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i64 @FASTCOVER_buildDictionary(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef writeonly captures(none) %2, i64 noundef %3, i32 %4, i32 %5, ptr noundef captures(none) %6) unnamed_addr #0 {
  %8 = alloca i64, align 8
  %9 = trunc i64 %3 to i32
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %11 = load i64, ptr %10, align 8, !tbaa !20
  %12 = trunc i64 %11 to i32
  %13 = tail call i64 @COVER_computeEpochs(i32 noundef %9, i32 noundef %12, i32 noundef %4, i32 noundef 1) #16
  %14 = lshr i64 %13, 32
  %15 = trunc nuw i64 %14 to i32
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %17 = load i32, ptr %16, align 8, !tbaa !32
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  tail call fastcc void @FASTCOVER_buildDictionary.cold.1(i64 %13, i32 %15) #15
  br label %20

20:                                               ; preds = %19, %7
  %21 = icmp eq i64 %3, 0
  br i1 %21, label %.loopexit14, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %24 = icmp eq i32 %5, 6
  %25 = select i1 %24, i64 -3523014627193847808, i64 -3523014627327384477
  %26 = add i32 %4, 2
  %27 = sub i32 %26, %5
  %28 = add i32 %5, -1
  %29 = zext i32 %5 to i64
  %30 = icmp samesign ugt i32 %17, 3
  %31 = and i64 %13, 4294967295
  br label %32

32:                                               ; preds = %226, %22
  %33 = phi i64 [ %3, %22 ], [ %227, %226 ]
  %34 = phi i64 [ 0, %22 ], [ %228, %226 ]
  %35 = phi i64 [ 0, %22 ], [ %229, %226 ]
  %36 = phi i64 [ 0, %22 ], [ %231, %226 ]
  %37 = mul i64 %36, %14
  %38 = trunc i64 %37 to i32
  %39 = add i32 %38, %15
  %40 = load i32, ptr %23, align 4, !tbaa !38
  %41 = icmp ugt i32 %39, %38
  br i1 %41, label %42, label %50

42:                                               ; preds = %32
  %43 = load ptr, ptr %0, align 8, !tbaa !33
  %44 = sub i32 64, %40
  %45 = zext nneg i32 %44 to i64
  %46 = and i64 %37, 4294967295
  %47 = zext i32 %39 to i64
  br label %80

48:                                               ; preds = %122
  %49 = icmp eq i32 %126, 0
  br label %50

50:                                               ; preds = %48, %32
  %51 = phi i32 [ %38, %32 ], [ %123, %48 ]
  %52 = phi i1 [ true, %32 ], [ %49, %48 ]
  %53 = phi i32 [ 0, %32 ], [ %127, %48 ]
  %54 = phi i32 [ 0, %32 ], [ %128, %48 ]
  %55 = icmp ult i32 %51, %39
  br i1 %55, label %56, label %.loopexit13

56:                                               ; preds = %50
  %57 = load ptr, ptr %0, align 8, !tbaa !33
  %58 = sub i32 64, %40
  %59 = zext nneg i32 %58 to i64
  %60 = zext i32 %51 to i64
  %61 = zext i32 %39 to i64
  %62 = sub nsw i64 %61, %60
  %63 = and i64 %62, 1
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %56
  %66 = getelementptr inbounds nuw i8, ptr %57, i64 %60
  %67 = load i64, ptr %66, align 1, !tbaa !39
  %68 = mul i64 %67, %25
  %69 = lshr i64 %68, %59
  %70 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !49
  %72 = add i16 %71, -1
  store i16 %72, ptr %70, align 2, !tbaa !49
  %73 = add nuw nsw i64 %60, 1
  br label %74

74:                                               ; preds = %65, %56
  %75 = phi i64 [ %60, %56 ], [ %73, %65 ]
  %76 = add nsw i64 %61, -1
  %77 = icmp eq i64 %76, %60
  br i1 %77, label %.loopexit13, label %78

78:                                               ; preds = %74
  %79 = getelementptr i8, ptr %57, i64 1
  br label %152

80:                                               ; preds = %122, %42
  %81 = phi i64 [ %46, %42 ], [ %100, %122 ]
  %82 = phi i32 [ 0, %42 ], [ %128, %122 ]
  %83 = phi i32 [ 0, %42 ], [ %127, %122 ]
  %84 = phi i32 [ 0, %42 ], [ %126, %122 ]
  %85 = phi i32 [ 0, %42 ], [ %124, %122 ]
  %86 = phi i32 [ %38, %42 ], [ %123, %122 ]
  %87 = getelementptr inbounds nuw i8, ptr %43, i64 %81
  %88 = load i64, ptr %87, align 1, !tbaa !39
  %89 = mul i64 %88, %25
  %90 = lshr i64 %89, %45
  %91 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !49
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %80
  %95 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %90
  %96 = load i32, ptr %95, align 4, !tbaa !17
  %97 = add i32 %96, %85
  br label %98

98:                                               ; preds = %94, %80
  %99 = phi i32 [ %97, %94 ], [ %85, %80 ]
  %100 = add nuw nsw i64 %81, 1
  %101 = trunc i64 %100 to i32
  %102 = add i16 %92, 1
  store i16 %102, ptr %91, align 2, !tbaa !49
  %103 = sub i32 %101, %86
  %104 = icmp eq i32 %103, %27
  br i1 %104, label %105, label %122

105:                                              ; preds = %98
  %106 = zext i32 %86 to i64
  %107 = getelementptr inbounds nuw i8, ptr %43, i64 %106
  %108 = load i64, ptr %107, align 1, !tbaa !39
  %109 = mul i64 %108, %25
  %110 = lshr i64 %109, %45
  %111 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %110
  %112 = load i16, ptr %111, align 2, !tbaa !49
  %113 = add i16 %112, -1
  store i16 %113, ptr %111, align 2, !tbaa !49
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %105
  %116 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %110
  %117 = load i32, ptr %116, align 4, !tbaa !17
  %118 = sub i32 %99, %117
  br label %119

119:                                              ; preds = %115, %105
  %120 = phi i32 [ %118, %115 ], [ %99, %105 ]
  %121 = add i32 %86, 1
  br label %122

122:                                              ; preds = %119, %98
  %123 = phi i32 [ %121, %119 ], [ %86, %98 ]
  %124 = phi i32 [ %120, %119 ], [ %99, %98 ]
  %125 = icmp ugt i32 %124, %84
  %126 = tail call i32 @llvm.umax.i32(i32 %124, i32 %84)
  %127 = select i1 %125, i32 %101, i32 %83
  %128 = select i1 %125, i32 %123, i32 %82
  %129 = icmp eq i64 %100, %47
  br i1 %129, label %48, label %80, !llvm.loop !51

.loopexit13:                                      ; preds = %152, %74, %50
  %130 = icmp eq i32 %54, %53
  br i1 %130, label %.loopexit, label %131

131:                                              ; preds = %.loopexit13
  %132 = load ptr, ptr %0, align 8, !tbaa !33
  %133 = sub i32 64, %40
  %134 = zext nneg i32 %133 to i64
  %135 = sub i32 %53, %54
  %136 = and i32 %135, 3
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %.loopexit12, label %.preheader11

.preheader11:                                     ; preds = %131, %.preheader11
  %138 = phi i32 [ %146, %.preheader11 ], [ %54, %131 ]
  %139 = phi i32 [ %147, %.preheader11 ], [ 0, %131 ]
  %140 = zext i32 %138 to i64
  %141 = getelementptr inbounds nuw i8, ptr %132, i64 %140
  %142 = load i64, ptr %141, align 1, !tbaa !39
  %143 = mul i64 %142, %25
  %144 = lshr i64 %143, %134
  %145 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %144
  store i32 0, ptr %145, align 4, !tbaa !17
  %146 = add i32 %138, 1
  %147 = add nuw nsw i32 %139, 1
  %148 = icmp eq i32 %147, %136
  br i1 %148, label %.loopexit12, label %.preheader11, !llvm.loop !52

.loopexit12:                                      ; preds = %.preheader11, %131
  %149 = phi i32 [ %54, %131 ], [ %146, %.preheader11 ]
  %150 = sub i32 %54, %53
  %151 = icmp ugt i32 %150, -4
  br i1 %151, label %.loopexit, label %.preheader

152:                                              ; preds = %152, %78
  %153 = phi i64 [ %75, %78 ], [ %168, %152 ]
  %154 = getelementptr inbounds nuw i8, ptr %57, i64 %153
  %155 = load i64, ptr %154, align 1, !tbaa !39
  %156 = mul i64 %155, %25
  %157 = lshr i64 %156, %59
  %158 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %157
  %159 = load i16, ptr %158, align 2, !tbaa !49
  %160 = add i16 %159, -1
  store i16 %160, ptr %158, align 2, !tbaa !49
  %161 = getelementptr i8, ptr %79, i64 %153
  %162 = load i64, ptr %161, align 1, !tbaa !39
  %163 = mul i64 %162, %25
  %164 = lshr i64 %163, %59
  %165 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %164
  %166 = load i16, ptr %165, align 2, !tbaa !49
  %167 = add i16 %166, -1
  store i16 %167, ptr %165, align 2, !tbaa !49
  %168 = add nuw nsw i64 %153, 2
  %169 = icmp eq i64 %168, %61
  br i1 %169, label %.loopexit13, label %152, !llvm.loop !53

.preheader:                                       ; preds = %.loopexit12, %.preheader
  %170 = phi i32 [ %198, %.preheader ], [ %149, %.loopexit12 ]
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds nuw i8, ptr %132, i64 %171
  %173 = load i64, ptr %172, align 1, !tbaa !39
  %174 = mul i64 %173, %25
  %175 = lshr i64 %174, %134
  %176 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %175
  store i32 0, ptr %176, align 4, !tbaa !17
  %177 = add i32 %170, 1
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds nuw i8, ptr %132, i64 %178
  %180 = load i64, ptr %179, align 1, !tbaa !39
  %181 = mul i64 %180, %25
  %182 = lshr i64 %181, %134
  %183 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %182
  store i32 0, ptr %183, align 4, !tbaa !17
  %184 = add i32 %170, 2
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds nuw i8, ptr %132, i64 %185
  %187 = load i64, ptr %186, align 1, !tbaa !39
  %188 = mul i64 %187, %25
  %189 = lshr i64 %188, %134
  %190 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %189
  store i32 0, ptr %190, align 4, !tbaa !17
  %191 = add i32 %170, 3
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds nuw i8, ptr %132, i64 %192
  %194 = load i64, ptr %193, align 1, !tbaa !39
  %195 = mul i64 %194, %25
  %196 = lshr i64 %195, %134
  %197 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %196
  store i32 0, ptr %197, align 4, !tbaa !17
  %198 = add i32 %170, 4
  %199 = icmp eq i32 %198, %53
  br i1 %199, label %.loopexit, label %.preheader, !llvm.loop !54

.loopexit:                                        ; preds = %.preheader, %.loopexit12, %.loopexit13
  %200 = zext i32 %54 to i64
  br i1 %52, label %223, label %201

201:                                              ; preds = %.loopexit
  %202 = add i32 %28, %53
  %203 = sub i32 %202, %54
  %204 = zext i32 %203 to i64
  %205 = tail call i64 @llvm.umin.i64(i64 %33, i64 %204)
  %206 = icmp samesign ult i64 %205, %29
  br i1 %206, label %.loopexit14, label %207

207:                                              ; preds = %201
  %208 = sub i64 %33, %205
  %209 = getelementptr inbounds nuw i8, ptr %2, i64 %208
  %210 = load ptr, ptr %0, align 8, !tbaa !33
  %211 = getelementptr inbounds nuw i8, ptr %210, i64 %200
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %209, ptr align 1 %211, i64 %205, i1 false)
  br i1 %18, label %212, label %226

212:                                              ; preds = %207
  %213 = tail call i64 @clock() #16
  %214 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %213, i64 %35), !nosanitize !55
  %215 = extractvalue { i64, i1 } %214, 1, !nosanitize !55
  br i1 %215, label %216, label %217, !prof !56, !nosanitize !55

216:                                              ; preds = %212
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !55
  unreachable, !nosanitize !55

217:                                              ; preds = %212
  %218 = extractvalue { i64, i1 } %214, 0, !nosanitize !55
  %219 = icmp sgt i64 %218, 150000
  %220 = or i1 %30, %219
  br i1 %220, label %221, label %226

221:                                              ; preds = %217
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call fastcc void @FASTCOVER_buildDictionary.cold.2(i64 %3, i64 %208, ptr %8) #15
  %222 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %226

223:                                              ; preds = %.loopexit
  %224 = add nuw nsw i64 %34, 1
  %225 = icmp ugt i64 %34, 8
  br i1 %225, label %.loopexit14, label %226

226:                                              ; preds = %223, %221, %217, %207
  %227 = phi i64 [ %33, %223 ], [ %208, %221 ], [ %208, %217 ], [ %208, %207 ]
  %228 = phi i64 [ %224, %223 ], [ 0, %221 ], [ 0, %217 ], [ 0, %207 ]
  %229 = phi i64 [ %35, %223 ], [ %222, %221 ], [ %35, %217 ], [ %35, %207 ]
  %230 = add nsw i64 %36, 1
  %231 = urem i64 %230, %31
  %232 = icmp eq i64 %227, 0
  br i1 %232, label %.loopexit14, label %32, !llvm.loop !57

.loopexit14:                                      ; preds = %226, %223, %201, %20
  %233 = phi i64 [ 0, %20 ], [ %33, %201 ], [ %33, %223 ], [ 0, %226 ]
  br i1 %18, label %234, label %235

234:                                              ; preds = %.loopexit14
  tail call fastcc void @FASTCOVER_buildDictionary.cold.3() #15
  br label %235

235:                                              ; preds = %234, %.loopexit14
  ret i64 %233
}

declare i64 @ZDICT_finalizeDictionary(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef byval(%struct.ZDICT_params_t) align 8) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef captures(none) %5) local_unnamed_addr #0 {
  %7 = alloca i64, align 8
  %8 = alloca [12 x i8], align 4
  %9 = alloca %struct.COVER_best_s, align 8
  %10 = alloca %struct.FASTCOVER_ctx_t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %12 = load i32, ptr %11, align 8, !tbaa !58
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %14 = load double, ptr %13, align 8, !tbaa !59
  %15 = fcmp ugt double %14, 0.000000e+00
  %16 = select i1 %15, double %14, double 7.500000e-01
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %18 = load i32, ptr %17, align 4, !tbaa !60
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 6, i32 %18
  %.fr = freeze i32 %20
  %21 = select i1 %19, i32 8, i32 %18
  %22 = load i32, ptr %5, align 8, !tbaa !61
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 50, i32 %22
  %25 = select i1 %23, i32 2000, i32 %22
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %27 = load i32, ptr %26, align 4, !tbaa !62
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 40, i32 %27
  %30 = select i1 %23, i32 1950, i32 0
  %31 = udiv i32 %30, %29
  %32 = tail call i32 @llvm.umax.i32(i32 %31, i32 1)
  %33 = trunc nuw nsw i32 %30 to i16
  %34 = trunc nuw nsw i32 %32 to i16
  %35 = udiv i16 %33, %34
  %36 = add nuw nsw i16 %35, 1
  %37 = zext nneg i16 %36 to i32
  %38 = zext i1 %19 to i32
  %39 = shl nuw nsw i32 %37, %38
  %40 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %41 = load i32, ptr %40, align 8, !tbaa !12
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 20, i32 %41
  %44 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %45 = load i32, ptr %44, align 8, !tbaa !13
  %46 = tail call i32 @llvm.umax.i32(i32 %45, i32 1)
  %47 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %48 = load i32, ptr %47, align 8, !tbaa !5
  %49 = freeze i32 %48
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %50 = fcmp ogt double %16, 1.000000e+00
  br i1 %50, label %51, label %54

51:                                               ; preds = %6
  %52 = icmp sgt i32 %49, 0
  br i1 %52, label %53, label %225

53:                                               ; preds = %51
  tail call fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.12() #15
  br label %225

54:                                               ; preds = %6
  %55 = icmp ugt i32 %45, 10
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = icmp sgt i32 %49, 0
  br i1 %57, label %58, label %225

58:                                               ; preds = %56
  tail call fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.11() #15
  br label %225

59:                                               ; preds = %54
  %60 = icmp ult i32 %24, %21
  %61 = icmp ult i32 %25, %24
  %62 = or i1 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = icmp sgt i32 %49, 0
  br i1 %64, label %65, label %225

65:                                               ; preds = %63
  tail call fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.10() #15
  br label %225

66:                                               ; preds = %59
  %67 = icmp eq i32 %4, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = icmp sgt i32 %49, 0
  br i1 %69, label %70, label %225

70:                                               ; preds = %68
  tail call fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.9() #15
  br label %225

71:                                               ; preds = %66
  %72 = icmp ult i64 %1, 256
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = icmp sgt i32 %49, 0
  br i1 %74, label %75, label %225

75:                                               ; preds = %73
  tail call fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.8() #15
  br label %225

76:                                               ; preds = %71
  %77 = icmp ugt i32 %12, 1
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  %79 = zext i32 %12 to i64
  %80 = tail call ptr @POOL_create(i64 noundef %79, i64 noundef 1) #16
  %81 = icmp eq ptr %80, null
  br i1 %81, label %225, label %82

82:                                               ; preds = %78, %76
  %83 = phi ptr [ %80, %78 ], [ null, %76 ]
  call void @COVER_best_init(ptr noundef nonnull %9) #16
  %84 = load i32, ptr %11, align 8
  %85 = getelementptr inbounds nuw i8, ptr %5, i64 36
  %86 = getelementptr inbounds nuw i8, ptr %5, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %86, i64 12, i1 false)
  %87 = zext nneg i32 %46 to i64
  %88 = getelementptr inbounds nuw [8 x i8], ptr @FASTCOVER_defaultAccelParameters, i64 %87
  %89 = load i64, ptr %88, align 8
  %90 = icmp sgt i32 %49, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  call fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.1(i32 %39) #15
  br label %92

92:                                               ; preds = %91, %82
  %93 = icmp ugt i32 %.fr, %21
  br i1 %93, label %.loopexit18, label %94

94:                                               ; preds = %92
  %95 = icmp sgt i32 %49, 2
  %96 = icmp eq i32 %49, 0
  %97 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %49, i32 -1)
  %98 = extractvalue { i32, i1 } %97, 0
  %99 = extractvalue { i32, i1 } %97, 1
  %100 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %101 = getelementptr inbounds nuw i8, ptr %10, i64 80
  %102 = getelementptr inbounds nuw i8, ptr %10, i64 68
  %103 = icmp eq ptr %83, null
  %104 = icmp samesign ugt i32 %49, 3
  %105 = icmp sgt i32 %49, 0
  %106 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %107 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %108 = select i1 %96, i32 0, i32 %98
  br label %109

109:                                              ; preds = %.split27.us, %94
  %110 = phi i32 [ %.us-phi28, %.split27.us ], [ 1, %94 ]
  %111 = phi i32 [ %203, %.split27.us ], [ %.fr, %94 ]
  %112 = phi i1 [ false, %.split27.us ], [ true, %94 ]
  %113 = phi i64 [ %.us-phi, %.split27.us ], [ 0, %94 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  br i1 %95, label %114, label %119

114:                                              ; preds = %109
  %115 = load ptr, ptr @stderr, align 8, !tbaa !44
  %116 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef nonnull @.str.10, i32 noundef %111) #20
  %117 = load ptr, ptr @stderr, align 8, !tbaa !44
  %118 = call i32 @fflush(ptr noundef %117)
  br i1 %99, label %.loopexit, label %120, !prof !56, !nosanitize !55

119:                                              ; preds = %109
  br i1 %99, label %.loopexit, label %120, !prof !63

.loopexit:                                        ; preds = %119, %114, %178
  call void @llvm.ubsantrap(i8 21) #19, !nosanitize !55
  unreachable, !nosanitize !55

120:                                              ; preds = %119, %114
  %121 = phi i32 [ %108, %119 ], [ %98, %114 ]
  %122 = call fastcc i64 @FASTCOVER_ctx_init(ptr noundef %10, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %111, double noundef %16, i32 noundef %43, i64 %89, i32 noundef %121)
  %123 = icmp ult i64 %122, -119
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  br i1 %105, label %125, label %126

125:                                              ; preds = %124
  call fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.2() #15
  br label %126

126:                                              ; preds = %125, %124
  call void @COVER_best_destroy(ptr noundef nonnull %9) #16
  br label %199

127:                                              ; preds = %120
  br i1 %112, label %128, label %130

128:                                              ; preds = %127
  %129 = load i64, ptr %100, align 8, !tbaa !20
  call void @COVER_warnOnSmallCorpus(i64 noundef %1, i64 noundef %129, i32 noundef %49) #16
  br label %130

130:                                              ; preds = %128, %127
  %131 = icmp eq i32 %111, 0
  br i1 %131, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %130
  br i1 %95, label %.split.us.us, label %.split.us.preheader.split

.split.us.us:                                     ; preds = %.split.us.preheader, %.split.us.us
  %132 = phi i32 [ %133, %.split.us.us ], [ %24, %.split.us.preheader ]
  call fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.3(i32 %132) #15
  call fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.5() #15
  %133 = add i32 %132, %32
  %134 = icmp ugt i32 %133, %25
  br i1 %134, label %.split27.us, label %.split.us.us, !llvm.loop !64

.split.us.preheader.split:                        ; preds = %.split.us.preheader
  br i1 %105, label %.split.us.us23, label %.split27.us

.split.us.us23:                                   ; preds = %.split.us.preheader.split, %.split.us.us23
  %135 = phi i32 [ %136, %.split.us.us23 ], [ %24, %.split.us.preheader.split ]
  call fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.5() #15
  %136 = add i32 %135, %32
  %137 = icmp ugt i32 %136, %25
  br i1 %137, label %.split27.us, label %.split.us.us23, !llvm.loop !64

.split:                                           ; preds = %130, %194
  %138 = phi i32 [ %196, %194 ], [ %110, %130 ]
  %139 = phi i32 [ %197, %194 ], [ %24, %130 ]
  %140 = phi i64 [ %195, %194 ], [ %113, %130 ]
  %141 = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #21
  br i1 %95, label %142, label %143

142:                                              ; preds = %.split
  call fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.3(i32 %139) #15
  br label %143

143:                                              ; preds = %142, %.split
  %144 = icmp eq ptr %141, null
  br i1 %144, label %.split25.us, label %146

.split25.us:                                      ; preds = %143
  br i1 %105, label %145, label %191

145:                                              ; preds = %.split25.us
  call fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.6() #15
  br label %191

146:                                              ; preds = %143
  store ptr %10, ptr %141, align 8, !tbaa !65
  %147 = getelementptr inbounds nuw i8, ptr %141, i64 8
  store ptr %9, ptr %147, align 8, !tbaa !68
  %148 = getelementptr inbounds nuw i8, ptr %141, i64 16
  store i64 %1, ptr %148, align 8, !tbaa !69
  %149 = getelementptr inbounds nuw i8, ptr %141, i64 24
  %150 = getelementptr inbounds nuw i8, ptr %141, i64 28
  %151 = getelementptr inbounds nuw i8, ptr %141, i64 32
  %152 = getelementptr inbounds nuw i8, ptr %141, i64 36
  store i32 %84, ptr %152, align 4, !tbaa !17
  %153 = getelementptr inbounds nuw i8, ptr %141, i64 40
  %154 = getelementptr inbounds nuw i8, ptr %141, i64 48
  %155 = getelementptr inbounds nuw i8, ptr %141, i64 52
  store i32 0, ptr %155, align 4, !tbaa !17
  %156 = getelementptr inbounds nuw i8, ptr %141, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %156, ptr noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !70
  %157 = getelementptr inbounds nuw i8, ptr %141, i64 68
  store i32 0, ptr %157, align 4
  store i32 %139, ptr %149, align 8, !tbaa !71
  store i32 %111, ptr %150, align 4, !tbaa !72
  store double %16, ptr %153, align 8, !tbaa !73
  store i32 %29, ptr %151, align 8, !tbaa !74
  store i32 0, ptr %154, align 8, !tbaa !75
  %158 = load i32, ptr %101, align 8, !tbaa !32
  %159 = getelementptr inbounds nuw i8, ptr %141, i64 60
  store i32 %158, ptr %159, align 4, !tbaa !76
  %160 = load i32, ptr %102, align 4, !tbaa !38
  %161 = icmp eq i32 %139, 0
  br i1 %161, label %171, label %162

162:                                              ; preds = %146
  switch i32 %111, label %171 [
    i32 8, label %163
    i32 6, label %163
  ]

163:                                              ; preds = %162, %162
  %164 = zext i32 %139 to i64
  %165 = icmp ult i64 %1, %164
  %166 = icmp ugt i32 %111, %139
  %167 = or i1 %166, %165
  %168 = add i32 %160, -32
  %169 = icmp ult i32 %168, -31
  %170 = or i1 %167, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %163, %162, %146
  br i1 %105, label %172, label %173

172:                                              ; preds = %171
  call fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.5() #15
  br label %173

173:                                              ; preds = %172, %171
  call void @free(ptr noundef nonnull %141) #16
  br label %194

174:                                              ; preds = %163
  call void @COVER_best_start(ptr noundef nonnull %9) #16
  br i1 %103, label %176, label %175

175:                                              ; preds = %174
  call void @POOL_add(ptr noundef nonnull %83, ptr noundef nonnull @FASTCOVER_tryParameters, ptr noundef nonnull %141) #16
  br label %177

176:                                              ; preds = %174
  call void @FASTCOVER_tryParameters(ptr noundef nonnull %141)
  br label %177

177:                                              ; preds = %176, %175
  br i1 %90, label %178, label %188

178:                                              ; preds = %177
  %179 = call i64 @clock() #16
  %180 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %179, i64 %140), !nosanitize !55
  %181 = extractvalue { i64, i1 } %180, 1, !nosanitize !55
  br i1 %181, label %.loopexit, label %182, !prof !56, !nosanitize !55

182:                                              ; preds = %178
  %183 = extractvalue { i64, i1 } %180, 0, !nosanitize !55
  %184 = icmp sgt i64 %183, 150000
  %185 = select i1 %184, i1 true, i1 %104
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.4(i32 %138, i32 %39, ptr %7) #15
  %187 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %188

188:                                              ; preds = %186, %182, %177
  %189 = phi i64 [ %140, %177 ], [ %187, %186 ], [ %140, %182 ]
  %190 = add i32 %138, 1
  br label %194

191:                                              ; preds = %145, %.split25.us
  call void @COVER_best_destroy(ptr noundef nonnull %9) #16
  %192 = load ptr, ptr %106, align 8, !tbaa !28
  call void @free(ptr noundef %192) #16
  store ptr null, ptr %106, align 8, !tbaa !28
  %193 = load ptr, ptr %107, align 8, !tbaa !31
  call void @free(ptr noundef %193) #16
  store ptr null, ptr %107, align 8, !tbaa !31
  br label %199

194:                                              ; preds = %188, %173
  %195 = phi i64 [ %140, %173 ], [ %189, %188 ]
  %196 = phi i32 [ %138, %173 ], [ %190, %188 ]
  %197 = add i32 %139, %32
  %198 = icmp ugt i32 %197, %25
  br i1 %198, label %.split27.us, label %.split, !llvm.loop !64

199:                                              ; preds = %191, %126
  %200 = phi i64 [ %122, %126 ], [ -64, %191 ]
  call void @POOL_free(ptr noundef %83) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %225

.split27.us:                                      ; preds = %194, %.split.us.us23, %.split.us.us, %.split.us.preheader.split
  %.us-phi = phi i64 [ %113, %.split.us.us23 ], [ %113, %.split.us.preheader.split ], [ %113, %.split.us.us ], [ %195, %194 ]
  %.us-phi28 = phi i32 [ %110, %.split.us.us23 ], [ %110, %.split.us.preheader.split ], [ %110, %.split.us.us ], [ %196, %194 ]
  call void @COVER_best_wait(ptr noundef nonnull %9) #16
  %201 = load ptr, ptr %106, align 8, !tbaa !28
  call void @free(ptr noundef %201) #16
  store ptr null, ptr %106, align 8, !tbaa !28
  %202 = load ptr, ptr %107, align 8, !tbaa !31
  call void @free(ptr noundef %202) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %203 = add i32 %111, 2
  %204 = icmp ugt i32 %203, %21
  br i1 %204, label %.loopexit18, label %109, !llvm.loop !77

.loopexit18:                                      ; preds = %.split27.us, %92
  br i1 %90, label %205, label %206

205:                                              ; preds = %.loopexit18
  call fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.7() #15
  br label %206

206:                                              ; preds = %205, %.loopexit18
  %207 = getelementptr inbounds nuw i8, ptr %9, i64 80
  %208 = load i64, ptr %207, align 8, !tbaa !78
  %209 = icmp ult i64 %208, -119
  br i1 %209, label %211, label %210

210:                                              ; preds = %206
  call void @COVER_best_destroy(ptr noundef nonnull %9) #16
  call void @POOL_free(ptr noundef %83) #16
  br label %225

211:                                              ; preds = %206
  %212 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %213 = load i64, ptr %212, align 8, !tbaa !80
  %214 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %215 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %216 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %217 = load double, ptr %216, align 8
  %218 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %219 = load i32, ptr %218, align 8
  %220 = load <2 x i32>, ptr %214, align 8
  store <2 x i32> %220, ptr %5, align 8, !tbaa !17
  %221 = load <2 x i32>, ptr %215, align 8
  store <2 x i32> %221, ptr %26, align 4, !tbaa !17
  store double %217, ptr %13, align 8, !tbaa !59
  store i32 %43, ptr %40, align 8, !tbaa !12
  store i32 %46, ptr %44, align 8, !tbaa !13
  %222 = getelementptr inbounds nuw i8, ptr %9, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %86, ptr noundef nonnull align 8 dereferenceable(12) %222, i64 12, i1 false)
  store i32 %219, ptr %85, align 4, !tbaa !81
  %223 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %224 = load ptr, ptr %223, align 8, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %224, i64 %213, i1 false)
  call void @COVER_best_destroy(ptr noundef nonnull %9) #16
  call void @POOL_free(ptr noundef %83) #16
  br label %225

225:                                              ; preds = %211, %210, %199, %78, %75, %73, %70, %68, %65, %63, %58, %56, %53, %51
  %226 = phi i64 [ -42, %53 ], [ -42, %51 ], [ -42, %58 ], [ -42, %56 ], [ -42, %65 ], [ -42, %63 ], [ -72, %70 ], [ -72, %68 ], [ -70, %75 ], [ -70, %73 ], [ -64, %78 ], [ %208, %210 ], [ %213, %211 ], [ %200, %199 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret i64 %226
}

declare ptr @POOL_create(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @COVER_best_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #7

declare void @COVER_best_destroy(ptr noundef) local_unnamed_addr #4

declare void @POOL_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

declare void @COVER_best_start(ptr noundef) local_unnamed_addr #4

declare void @POOL_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @FASTCOVER_tryParameters(ptr noundef captures(none) %0) #0 {
  %2 = alloca %struct.ZDICT_cover_params_t, align 8
  %3 = alloca %struct.COVER_dictSelection, align 8
  %4 = alloca %struct.COVER_dictSelection, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false), !tbaa.struct !83
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load i64, ptr %7, align 8, !tbaa !69
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 68
  %10 = load i32, ptr %9, align 4, !tbaa !38
  %11 = zext nneg i32 %10 to i64
  %12 = shl nuw i64 1, %11
  %13 = tail call noalias ptr @calloc(i64 noundef %12, i64 noundef 2) #17
  %14 = tail call noalias ptr @malloc(i64 noundef %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @COVER_dictSelectionError(ptr dead_on_unwind nonnull writable sret(%struct.COVER_dictSelection) align 8 %3, i64 noundef -1) #16
  %15 = load i32, ptr %9, align 4, !tbaa !38
  %16 = zext nneg i32 %15 to i64
  %17 = shl i64 4, %16
  %18 = call noalias ptr @malloc(i64 noundef %17) #21
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 80
  %20 = load i32, ptr %19, align 8, !tbaa !32
  %21 = icmp ne ptr %13, null
  %22 = icmp ne ptr %14, null
  %23 = and i1 %21, %22
  %24 = icmp ne ptr %18, null
  %25 = and i1 %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = icmp sgt i32 %20, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %26
  call fastcc void @FASTCOVER_tryParameters.cold.1() #15
  br label %58

29:                                               ; preds = %1
  %30 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %31 = load ptr, ptr %30, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %18, ptr align 4 %31, i64 %17, i1 false)
  %32 = load i32, ptr %2, align 8, !tbaa !14
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %34 = load i32, ptr %33, align 4
  %35 = call fastcc i64 @FASTCOVER_buildDictionary(ptr noundef nonnull %5, ptr noundef nonnull %18, ptr noundef nonnull %14, i64 noundef %8, i32 %32, i32 %34, ptr noundef nonnull %13)
  %36 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %37 = load i64, ptr %36, align 8, !tbaa !29
  %38 = getelementptr inbounds nuw i8, ptr %5, i64 72
  %39 = load i32, ptr %38, align 8, !tbaa !30
  %40 = zext i32 %39 to i64
  %41 = mul i64 %37, %40
  %42 = udiv i64 %41, 100
  %43 = trunc i64 %42 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %44 = getelementptr inbounds nuw i8, ptr %14, i64 %35
  %45 = sub i64 %8, %35
  %46 = load ptr, ptr %5, align 8, !tbaa !33
  %47 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %50 = load i64, ptr %49, align 8, !tbaa !35
  %51 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %52 = load ptr, ptr %51, align 8, !tbaa !31
  call void @COVER_selectDict(ptr dead_on_unwind nonnull writable sret(%struct.COVER_dictSelection) align 8 %4, ptr noundef nonnull %44, i64 noundef %8, i64 noundef %45, ptr noundef %46, ptr noundef %48, i32 noundef %43, i64 noundef %37, i64 noundef %50, ptr noundef nonnull byval(%struct.ZDICT_cover_params_t) align 8 %2, ptr noundef %52, i64 noundef -1) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !85
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %53 = call i32 @COVER_dictSelectionIsError(ptr noundef nonnull byval(%struct.COVER_dictSelection) align 8 %3) #16
  %54 = icmp ne i32 %53, 0
  %55 = icmp sgt i32 %20, 0
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %61

57:                                               ; preds = %29
  call fastcc void @FASTCOVER_tryParameters.cold.2() #15
  br label %58

58:                                               ; preds = %57, %28
  %59 = load ptr, ptr @stderr, align 8, !tbaa !44
  %60 = call i32 @fflush(ptr noundef %59)
  br label %61

61:                                               ; preds = %58, %29, %26
  call void @free(ptr noundef %14) #16
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %63 = load ptr, ptr %62, align 8, !tbaa !68
  call void @COVER_best_finish(ptr noundef %63, ptr noundef nonnull byval(%struct.ZDICT_cover_params_t) align 8 %2, ptr noundef nonnull byval(%struct.COVER_dictSelection) align 8 %3) #16
  call void @free(ptr noundef nonnull %0) #16
  call void @free(ptr noundef %13) #16
  call void @COVER_dictSelectionFree(ptr noundef nonnull byval(%struct.COVER_dictSelection) align 8 %3) #16
  call void @free(ptr noundef %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #10

declare void @COVER_best_wait(ptr noundef) local_unnamed_addr #4

declare i64 @COVER_sum(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @COVER_computeEpochs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #10

declare void @COVER_dictSelectionError(ptr dead_on_unwind writable sret(%struct.COVER_dictSelection) align 8, i64 noundef) local_unnamed_addr #4

declare void @COVER_selectDict(ptr dead_on_unwind writable sret(%struct.COVER_dictSelection) align 8, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @COVER_dictSelectionIsError(ptr noundef byval(%struct.COVER_dictSelection) align 8) local_unnamed_addr #4

declare void @COVER_best_finish(ptr noundef, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8, ptr noundef byval(%struct.COVER_dictSelection) align 8) local_unnamed_addr #4

declare void @COVER_dictSelectionFree(ptr noundef byval(%struct.COVER_dictSelection) align 8) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_trainFromBuffer_fastCover.cold.1() unnamed_addr #12 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !44
  %2 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 29, i64 1, ptr %1) #18
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_trainFromBuffer_fastCover.cold.2() unnamed_addr #12 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !44
  %2 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 20, i64 1, ptr %1) #18
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_trainFromBuffer_fastCover.cold.3(i64 range(i64 0, -119) %0) unnamed_addr #12 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = trunc i64 %0 to i32
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %3) #20
  %5 = load ptr, ptr @stderr, align 8, !tbaa !44
  %6 = tail call i32 @fflush(ptr noundef %5)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_trainFromBuffer_fastCover.cold.4() unnamed_addr #12 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !44
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef 256) #20
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_trainFromBuffer_fastCover.cold.5() unnamed_addr #12 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !44
  %2 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %1) #18
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_trainFromBuffer_fastCover.cold.6() unnamed_addr #12 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !44
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 31, i64 1, ptr %1) #18
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @FASTCOVER_ctx_init.cold.1(i64 %0, i32 range(i32 5, 0) %1, i64 %2, i32 %3) unnamed_addr #12 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !44
  %6 = trunc i64 %0 to i32
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.19, i32 noundef %1, i32 noundef %6) #20
  %8 = load ptr, ptr @stderr, align 8, !tbaa !44
  %9 = tail call i32 @fflush(ptr noundef %8)
  %10 = load ptr, ptr @stderr, align 8, !tbaa !44
  %11 = trunc i64 %2 to i32
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.20, i32 noundef %3, i32 noundef %11) #20
  %13 = load ptr, ptr @stderr, align 8, !tbaa !44
  %14 = tail call i32 @fflush(ptr noundef %13)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @FASTCOVER_ctx_init.cold.2(ptr nonnull readonly captures(none) %0, ptr nonnull writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #12 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 36, i64 1, ptr %3) #18
  %5 = load ptr, ptr @stderr, align 8, !tbaa !44
  %6 = tail call i32 @fflush(ptr noundef %5)
  %7 = load ptr, ptr %0, align 8, !tbaa !28
  store ptr %7, ptr %1, align 8
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @FASTCOVER_ctx_init.cold.3() unnamed_addr #12 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !44
  %2 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 36, i64 1, ptr %1) #18
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @FASTCOVER_ctx_init.cold.4() unnamed_addr #12 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !44
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef 0) #20
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @FASTCOVER_ctx_init.cold.5(i32 range(i32 0, 5) %0) unnamed_addr #12 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef %0) #20
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @FASTCOVER_ctx_init.cold.6(i64 %0) unnamed_addr #12 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = lshr i64 %0, 20
  %4 = trunc i64 %3 to i32
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %4, i32 noundef 4095) #20
  %6 = load ptr, ptr @stderr, align 8, !tbaa !44
  %7 = tail call i32 @fflush(ptr noundef %6)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @FASTCOVER_buildDictionary.cold.1(i64 %0, i32 %1) unnamed_addr #12 {
  %3 = trunc i64 %0 to i32
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.24, i32 noundef %3, i32 noundef %1) #20
  %6 = load ptr, ptr @stderr, align 8, !tbaa !44
  %7 = tail call i32 @fflush(ptr noundef %6)
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal fastcc void @FASTCOVER_buildDictionary.cold.2(i64 range(i64 1, 0) %0, i64 %1, ptr nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #13 {
  %4 = tail call i64 @clock() #16
  store i64 %4, ptr %2, align 8
  %5 = load ptr, ptr @stderr, align 8, !tbaa !44
  %6 = sub i64 %0, %1
  %7 = mul i64 %6, 100
  %8 = udiv i64 %7, %0
  %9 = trunc i64 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %9) #20
  %11 = load ptr, ptr @stderr, align 8, !tbaa !44
  %12 = tail call i32 @fflush(ptr noundef %11)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @FASTCOVER_buildDictionary.cold.3() unnamed_addr #12 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !44
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #20
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.1(i32 range(i32 1, 3903) %0) unnamed_addr #12 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %0) #20
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.2() unnamed_addr #12 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !44
  %2 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 29, i64 1, ptr %1) #18
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.3(i32 %0) unnamed_addr #12 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %0) #20
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.4(i32 %0, i32 range(i32 1, 3903) %1, ptr nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #13 {
  %4 = tail call i64 @clock() #16
  store i64 %4, ptr %2, align 8
  %5 = load ptr, ptr @stderr, align 8, !tbaa !44
  %6 = mul i32 %0, 100
  %7 = udiv i32 %6, %1
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %7) #20
  %9 = load ptr, ptr @stderr, align 8, !tbaa !44
  %10 = tail call i32 @fflush(ptr noundef %9)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.5() unnamed_addr #12 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !44
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 31, i64 1, ptr %1) #18
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.6() unnamed_addr #12 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !44
  %2 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 30, i64 1, ptr %1) #18
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.7() unnamed_addr #12 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !44
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #20
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.8() unnamed_addr #12 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !44
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef 256) #20
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.9() unnamed_addr #12 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !44
  %2 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %1) #18
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.10() unnamed_addr #12 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !44
  %2 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 12, i64 1, ptr %1) #18
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.11() unnamed_addr #12 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !44
  %2 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 16, i64 1, ptr %1) #18
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.12() unnamed_addr #12 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !44
  %2 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 21, i64 1, ptr %1) #18
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @FASTCOVER_tryParameters.cold.1() unnamed_addr #12 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !44
  %2 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 42, i64 1, ptr %1) #18
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @FASTCOVER_tryParameters.cold.2() unnamed_addr #12 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !44
  %2 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 28, i64 1, ptr %1) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nounwind }
attributes #12 = { cold minsize nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold minsize nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { noinline }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0,1) }
attributes #18 = { cold }
attributes #19 = { noreturn nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !7, i64 48}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !10, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !11, i64 44}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"double", !8, i64 0}
!11 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8}
!12 = !{!6, !7, i64 8}
!13 = !{!6, !7, i64 32}
!14 = !{!15, !7, i64 0}
!15 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !10, i64 16, !7, i64 24, !7, i64 28, !11, i64 32}
!16 = !{!15, !7, i64 4}
!17 = !{!7, !7, i64 0}
!18 = !{!15, !10, i64 16}
!19 = !{!15, !7, i64 24}
!20 = !{!21, !25, i64 48}
!21 = !{!"", !22, i64 0, !24, i64 8, !24, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !26, i64 56, !7, i64 64, !7, i64 68, !27, i64 72, !7, i64 80}
!22 = !{!"p1 omnipotent char", !23, i64 0}
!23 = !{!"any pointer", !8, i64 0}
!24 = !{!"p1 long", !23, i64 0}
!25 = !{!"long", !8, i64 0}
!26 = !{!"p1 int", !23, i64 0}
!27 = !{!"", !7, i64 0, !7, i64 4}
!28 = !{!21, !26, i64 56}
!29 = !{!21, !25, i64 32}
!30 = !{!21, !7, i64 72}
!31 = !{!21, !24, i64 8}
!32 = !{!21, !7, i64 80}
!33 = !{!21, !22, i64 0}
!34 = !{!21, !24, i64 16}
!35 = !{!21, !25, i64 24}
!36 = !{!21, !25, i64 40}
!37 = !{!21, !7, i64 64}
!38 = !{!21, !7, i64 68}
!39 = !{!25, !25, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!45, !45, i64 0}
!45 = !{!"p1 _ZTS8_IO_FILE", !23, i64 0}
!46 = !{!21, !7, i64 76}
!47 = distinct !{!47, !41}
!48 = distinct !{!48, !41}
!49 = !{!50, !50, i64 0}
!50 = !{!"short", !8, i64 0}
!51 = distinct !{!51, !41}
!52 = distinct !{!52, !43}
!53 = distinct !{!53, !41}
!54 = distinct !{!54, !41}
!55 = !{}
!56 = !{!"branch_weights", i32 1, i32 1048575}
!57 = distinct !{!57, !41}
!58 = !{!6, !7, i64 16}
!59 = !{!6, !10, i64 24}
!60 = !{!6, !7, i64 4}
!61 = !{!6, !7, i64 0}
!62 = !{!6, !7, i64 12}
!63 = !{!"branch_weights", i32 1, i32 2097151}
!64 = distinct !{!64, !41}
!65 = !{!66, !23, i64 0}
!66 = !{!"FASTCOVER_tryParameters_data_s", !23, i64 0, !67, i64 8, !25, i64 16, !15, i64 24}
!67 = !{!"p1 _ZTS12COVER_best_s", !23, i64 0}
!68 = !{!66, !67, i64 8}
!69 = !{!66, !25, i64 16}
!70 = !{i64 0, i64 4, !17, i64 4, i64 4, !17, i64 8, i64 4, !17}
!71 = !{!66, !7, i64 24}
!72 = !{!66, !7, i64 28}
!73 = !{!66, !10, i64 40}
!74 = !{!66, !7, i64 32}
!75 = !{!66, !7, i64 48}
!76 = !{!66, !7, i64 60}
!77 = distinct !{!77, !41}
!78 = !{!79, !25, i64 80}
!79 = !{!"COVER_best_s", !7, i64 0, !7, i64 4, !25, i64 8, !23, i64 16, !25, i64 24, !15, i64 32, !25, i64 80}
!80 = !{!79, !25, i64 24}
!81 = !{!6, !7, i64 36}
!82 = !{!79, !23, i64 16}
!83 = !{i64 0, i64 4, !17, i64 4, i64 4, !17, i64 8, i64 4, !17, i64 12, i64 4, !17, i64 16, i64 8, !84, i64 24, i64 4, !17, i64 28, i64 4, !17, i64 32, i64 4, !17, i64 36, i64 4, !17, i64 40, i64 4, !17}
!84 = !{!10, !10, i64 0}
!85 = !{i64 0, i64 8, !86, i64 8, i64 8, !39, i64 16, i64 8, !39}
!86 = !{!22, !22, i64 0}
