; ModuleID = '/mydata/zstd/lib/dictBuilder/fastcover.c'
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
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #15
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
  %31 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %24, ptr %31, align 8, !tbaa !19
  %32 = icmp eq i32 %21, 0
  %33 = icmp eq i32 %19, 0
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %46, label %35

35:                                               ; preds = %6
  switch i32 %21, label %46 [
    i32 8, label %36
    i32 6, label %36
  ]

36:                                               ; preds = %35, %35
  %37 = zext i32 %19 to i64
  %38 = icmp ult i64 %1, %37
  %39 = icmp ugt i32 %21, %19
  %40 = or i1 %39, %38
  %41 = add i32 %14, -32
  %42 = icmp ult i32 %41, -31
  %43 = or i1 %42, %40
  %44 = icmp ugt i32 %16, 10
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36, %35, %6
  %47 = icmp sgt i32 %10, 0
  br i1 %47, label %48, label %97

48:                                               ; preds = %46
  call void @ZDICT_trainFromBuffer_fastCover.cold.6() #16
  br label %97

49:                                               ; preds = %36
  %50 = icmp eq i32 %4, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = icmp sgt i32 %10, 0
  br i1 %52, label %53, label %97

53:                                               ; preds = %51
  call void @ZDICT_trainFromBuffer_fastCover.cold.5() #16
  br label %97

54:                                               ; preds = %49
  %55 = icmp ult i64 %1, 256
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = icmp sgt i32 %10, 0
  br i1 %57, label %58, label %97

58:                                               ; preds = %56
  call void @ZDICT_trainFromBuffer_fastCover.cold.4() #16
  br label %97

59:                                               ; preds = %54
  %60 = zext nneg i32 %17 to i64
  %61 = getelementptr inbounds nuw [11 x %struct.FASTCOVER_accel_t], ptr @FASTCOVER_defaultAccelParameters, i64 0, i64 %60
  %62 = load i64, ptr %61, align 8
  %63 = call fastcc i64 @FASTCOVER_ctx_init(ptr noundef %7, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %21, double noundef 1.000000e+00, i32 noundef %14, i64 %62, i32 noundef %10)
  %64 = icmp ult i64 %63, -119
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = icmp sgt i32 %10, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %65
  call void @ZDICT_trainFromBuffer_fastCover.cold.1() #16
  br label %97

68:                                               ; preds = %59
  %69 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %70 = load i64, ptr %69, align 8, !tbaa !20
  tail call void @COVER_warnOnSmallCorpus(i64 noundef %1, i64 noundef %70, i32 noundef %10) #15
  %71 = icmp sgt i32 %10, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  call void @ZDICT_trainFromBuffer_fastCover.cold.2() #16
  br label %73

73:                                               ; preds = %72, %68
  %74 = zext nneg i32 %14 to i64
  %75 = shl nuw nsw i64 1, %74
  %76 = tail call noalias ptr @calloc(i64 noundef %75, i64 noundef 2) #17
  %77 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %78 = load ptr, ptr %77, align 8, !tbaa !28
  %79 = call fastcc i64 @FASTCOVER_buildDictionary(ptr noundef nonnull %7, ptr noundef %78, ptr noundef %0, i64 noundef %1, i32 %19, i32 %21, ptr noundef %76)
  %80 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %81 = load i64, ptr %80, align 8, !tbaa !29
  %82 = getelementptr inbounds nuw i8, ptr %7, i64 72
  %83 = load i32, ptr %82, align 8, !tbaa !30
  %84 = zext i32 %83 to i64
  %85 = mul i64 %81, %84
  %86 = udiv i64 %85, 100
  %87 = trunc i64 %86 to i32
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 %79
  %89 = sub i64 %1, %79
  %90 = tail call i64 @ZDICT_finalizeDictionary(ptr noundef %0, i64 noundef %1, ptr noundef %88, i64 noundef %89, ptr noundef %2, ptr noundef %3, i32 noundef %87, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %29) #15
  %91 = icmp ult i64 %90, -119
  %92 = and i1 %71, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %73
  call void @ZDICT_trainFromBuffer_fastCover.cold.3(i64 %90) #16
  br label %94

94:                                               ; preds = %93, %73
  tail call void @free(ptr noundef %78) #15
  %95 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %96 = load ptr, ptr %95, align 8, !tbaa !31
  tail call void @free(ptr noundef %96) #15
  tail call void @free(ptr noundef %76) #15
  br label %97

97:                                               ; preds = %48, %53, %58, %67, %65, %56, %51, %46, %94
  %98 = phi i64 [ %90, %94 ], [ -42, %48 ], [ -42, %46 ], [ -72, %53 ], [ -72, %51 ], [ -70, %58 ], [ -70, %56 ], [ %63, %65 ], [ %63, %67 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #15
  ret i64 %98
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -72, 1) i64 @FASTCOVER_ctx_init(ptr noundef nonnull captures(none) initializes((80, 84)) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, double noundef %5, i32 noundef %6, i64 %7, i32 noundef %8) unnamed_addr #0 {
  %10 = alloca ptr, align 8
  %11 = tail call i64 @COVER_sum(ptr noundef %2, i32 noundef %3) #15
  %12 = fcmp olt double %5, 1.000000e+00
  %13 = uitofp i32 %3 to double
  %14 = fmul double %5, %13
  %15 = fptoui double %14 to i32
  %16 = select i1 %12, i32 %15, i32 0
  %17 = select i1 %12, i32 %15, i32 %3
  %18 = sub i32 %3, %16
  br i1 %12, label %19, label %24

19:                                               ; preds = %9
  %20 = tail call i64 @COVER_sum(ptr noundef %2, i32 noundef %15) #15
  %21 = zext i32 %15 to i64
  %22 = getelementptr inbounds nuw i64, ptr %2, i64 %21
  %23 = tail call i64 @COVER_sum(ptr noundef %22, i32 noundef %18) #15
  br label %24

24:                                               ; preds = %9, %19
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
  br i1 %34, label %35, label %190

35:                                               ; preds = %33
  call void @FASTCOVER_ctx_init.cold.6(i64 %11) #16
  br label %190

36:                                               ; preds = %24
  %37 = icmp ult i32 %17, 5
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = icmp sgt i32 %8, 0
  br i1 %39, label %40, label %190

40:                                               ; preds = %38
  call void @FASTCOVER_ctx_init.cold.5(i32 %17) #16
  br label %190

41:                                               ; preds = %36
  %42 = icmp eq i32 %3, %16
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = icmp sgt i32 %8, 0
  br i1 %44, label %45, label %190

45:                                               ; preds = %43
  call void @FASTCOVER_ctx_init.cold.4() #16
  br label %190

46:                                               ; preds = %41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  %47 = icmp sgt i32 %8, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  call void @FASTCOVER_ctx_init.cold.1(i64 %25, i32 %17, i64 %26, i32 %18) #16
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
  %57 = sub i64 %25, %29
  %58 = add i64 %57, 1
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %58, ptr %59, align 8, !tbaa !20
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %4, ptr %60, align 8, !tbaa !37
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %6, ptr %61, align 4, !tbaa !38
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %7, ptr %62, align 8
  %63 = add i32 %3, 1
  %64 = zext i32 %63 to i64
  %65 = tail call noalias ptr @calloc(i64 noundef %64, i64 noundef 8) #17
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %65, ptr %66, align 8, !tbaa !31
  %67 = icmp eq ptr %65, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %49
  %69 = icmp sgt i32 %8, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %68
  call void @FASTCOVER_ctx_init.cold.3() #16
  br label %71

71:                                               ; preds = %70, %68
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %73 = load ptr, ptr %72, align 8, !tbaa !28
  tail call void @free(ptr noundef %73) #15
  store ptr null, ptr %72, align 8, !tbaa !28
  %74 = load ptr, ptr %66, align 8, !tbaa !31
  tail call void @free(ptr noundef %74) #15
  store ptr null, ptr %66, align 8, !tbaa !31
  br label %190

75:                                               ; preds = %49
  %76 = tail call i32 @llvm.umax.i32(i32 %63, i32 2)
  %77 = zext i32 %76 to i64
  %78 = getelementptr i8, ptr %2, i64 -8
  %79 = add nsw i64 %77, -1
  %80 = and i64 %79, 3
  %81 = add i32 %76, -2
  %82 = icmp ult i32 %81, 3
  br i1 %82, label %111, label %83

83:                                               ; preds = %75
  %84 = and i64 %79, -4
  %85 = getelementptr inbounds i8, ptr %65, i64 8
  br label %86

86:                                               ; preds = %86, %83
  %87 = phi i64 [ 0, %83 ], [ %106, %86 ]
  %88 = phi i64 [ 1, %83 ], [ %108, %86 ]
  %89 = phi i64 [ 0, %83 ], [ %109, %86 ]
  %90 = getelementptr i64, ptr %78, i64 %88
  %91 = load i64, ptr %90, align 8, !tbaa !39
  %92 = add i64 %91, %87
  %93 = getelementptr inbounds nuw i64, ptr %65, i64 %88
  store i64 %92, ptr %93, align 8, !tbaa !39
  %94 = getelementptr i64, ptr %2, i64 %88
  %95 = load i64, ptr %94, align 8, !tbaa !39
  %96 = add i64 %95, %92
  %97 = getelementptr inbounds i64, ptr %85, i64 %88
  store i64 %96, ptr %97, align 8, !tbaa !39
  %98 = add nuw nsw i64 %88, 2
  %99 = getelementptr i64, ptr %78, i64 %98
  %100 = load i64, ptr %99, align 8, !tbaa !39
  %101 = add i64 %100, %96
  %102 = getelementptr inbounds nuw i64, ptr %65, i64 %98
  store i64 %101, ptr %102, align 8, !tbaa !39
  %103 = add nuw nsw i64 %88, 3
  %104 = getelementptr i64, ptr %78, i64 %103
  %105 = load i64, ptr %104, align 8, !tbaa !39
  %106 = add i64 %105, %101
  %107 = getelementptr inbounds nuw i64, ptr %65, i64 %103
  store i64 %106, ptr %107, align 8, !tbaa !39
  %108 = add nuw nsw i64 %88, 4
  %109 = add i64 %89, 4
  %110 = icmp eq i64 %109, %84
  br i1 %110, label %111, label %86, !llvm.loop !40

111:                                              ; preds = %86, %75
  %112 = phi i64 [ 0, %75 ], [ %106, %86 ]
  %113 = phi i64 [ 1, %75 ], [ %108, %86 ]
  %114 = icmp eq i64 %80, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %111, %115
  %116 = phi i64 [ %121, %115 ], [ %112, %111 ]
  %117 = phi i64 [ %123, %115 ], [ %113, %111 ]
  %118 = phi i64 [ %124, %115 ], [ 0, %111 ]
  %119 = getelementptr i64, ptr %78, i64 %117
  %120 = load i64, ptr %119, align 8, !tbaa !39
  %121 = add i64 %120, %116
  %122 = getelementptr inbounds nuw i64, ptr %65, i64 %117
  store i64 %121, ptr %122, align 8, !tbaa !39
  %123 = add nuw nsw i64 %117, 1
  %124 = add i64 %118, 1
  %125 = icmp eq i64 %124, %80
  br i1 %125, label %126, label %115, !llvm.loop !42

126:                                              ; preds = %115, %111
  %127 = zext nneg i32 %6 to i64
  %128 = shl nuw i64 1, %127
  %129 = tail call noalias ptr @calloc(i64 noundef %128, i64 noundef 4) #17
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %129, ptr %130, align 8, !tbaa !28
  %131 = icmp eq ptr %129, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %126
  %133 = icmp sgt i32 %8, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 -1, ptr %10)
  call void @FASTCOVER_ctx_init.cold.2(ptr %130, ptr %10) #16
  %135 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 -1, ptr %10)
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi ptr [ %135, %134 ], [ null, %132 ]
  tail call void @free(ptr noundef %137) #15
  store ptr null, ptr %130, align 8, !tbaa !28
  %138 = load ptr, ptr %66, align 8, !tbaa !31
  tail call void @free(ptr noundef %138) #15
  store ptr null, ptr %66, align 8, !tbaa !31
  br label %190

139:                                              ; preds = %126
  br i1 %47, label %140, label %148

140:                                              ; preds = %139
  %141 = load ptr, ptr @stderr, align 8, !tbaa !44
  %142 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr %141) #18
  %143 = load ptr, ptr @stderr, align 8, !tbaa !44
  %144 = tail call i32 @fflush(ptr noundef %143)
  %145 = load ptr, ptr %130, align 8, !tbaa !28
  %146 = load i64, ptr %54, align 8, !tbaa !29
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %190, label %148

148:                                              ; preds = %139, %140
  %149 = phi ptr [ %145, %140 ], [ %129, %139 ]
  %150 = phi i64 [ %146, %140 ], [ %53, %139 ]
  %151 = load i32, ptr %60, align 8, !tbaa !37
  %152 = tail call i32 @llvm.umax.i32(i32 %151, i32 8)
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %154 = load i32, ptr %153, align 4, !tbaa !46
  %155 = load i32, ptr %61, align 4, !tbaa !38
  %156 = load ptr, ptr %66, align 8, !tbaa !31
  %157 = zext i32 %152 to i64
  %158 = icmp eq i32 %151, 6
  %159 = sub i32 64, %155
  %160 = zext nneg i32 %159 to i64
  %161 = select i1 %158, i64 -3523014627193847808, i64 -3523014627327384477
  %162 = zext i32 %154 to i64
  %163 = add nuw nsw i64 %162, 1
  %164 = add nuw nsw i64 %163, %157
  %165 = load i64, ptr %156, align 8, !tbaa !39
  br label %168

166:                                              ; preds = %178, %168
  %167 = icmp eq i64 %171, %150
  br i1 %167, label %190, label %168, !llvm.loop !47

168:                                              ; preds = %166, %148
  %169 = phi i64 [ %165, %148 ], [ %173, %166 ]
  %170 = phi i64 [ 0, %148 ], [ %171, %166 ]
  %171 = add nuw i64 %170, 1
  %172 = getelementptr inbounds nuw i64, ptr %156, i64 %171
  %173 = load i64, ptr %172, align 8, !tbaa !39
  %174 = add i64 %169, %157
  %175 = icmp ugt i64 %174, %173
  br i1 %175, label %166, label %176

176:                                              ; preds = %168
  %177 = load ptr, ptr %0, align 8, !tbaa !33
  br label %178

178:                                              ; preds = %178, %176
  %179 = phi i64 [ %169, %176 ], [ %187, %178 ]
  %180 = getelementptr inbounds nuw i8, ptr %177, i64 %179
  %181 = load i64, ptr %180, align 1, !tbaa !39
  %182 = mul i64 %181, %161
  %183 = lshr i64 %182, %160
  %184 = getelementptr inbounds nuw i32, ptr %149, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !17
  %186 = add i32 %185, 1
  store i32 %186, ptr %184, align 4, !tbaa !17
  %187 = add i64 %179, %163
  %188 = add i64 %164, %179
  %189 = icmp ugt i64 %188, %173
  br i1 %189, label %166, label %178, !llvm.loop !48

190:                                              ; preds = %35, %40, %45, %166, %140, %43, %38, %33, %136, %71
  %191 = phi i64 [ -64, %71 ], [ -64, %136 ], [ -72, %35 ], [ -72, %33 ], [ -72, %40 ], [ -72, %38 ], [ -72, %45 ], [ -72, %43 ], [ 0, %140 ], [ 0, %166 ]
  ret i64 %191
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @COVER_warnOnSmallCorpus(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i64 @FASTCOVER_buildDictionary(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef writeonly captures(none) %2, i64 noundef %3, i32 %4, i32 %5, ptr noundef captures(none) %6) unnamed_addr #0 {
  %8 = alloca i64, align 8
  %9 = trunc i64 %3 to i32
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %11 = load i64, ptr %10, align 8, !tbaa !20
  %12 = trunc i64 %11 to i32
  %13 = tail call i64 @COVER_computeEpochs(i32 noundef %9, i32 noundef %12, i32 noundef %4, i32 noundef 1) #15
  %14 = lshr i64 %13, 32
  %15 = trunc nuw i64 %14 to i32
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %17 = load i32, ptr %16, align 8, !tbaa !32
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  call void @FASTCOVER_buildDictionary.cold.1(i64 %13, i32 %15) #16
  br label %20

20:                                               ; preds = %19, %7
  %21 = icmp eq i64 %3, 0
  br i1 %21, label %238, label %22

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

32:                                               ; preds = %22, %231
  %33 = phi i64 [ %3, %22 ], [ %232, %231 ]
  %34 = phi i64 [ 0, %22 ], [ %233, %231 ]
  %35 = phi i64 [ 0, %22 ], [ %234, %231 ]
  %36 = phi i64 [ 0, %22 ], [ %236, %231 ]
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
  br i1 %55, label %56, label %130

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
  %70 = getelementptr inbounds nuw i16, ptr %6, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !49
  %72 = add i16 %71, -1
  store i16 %72, ptr %70, align 2, !tbaa !49
  %73 = add nuw nsw i64 %60, 1
  br label %74

74:                                               ; preds = %65, %56
  %75 = phi i64 [ %60, %56 ], [ %73, %65 ]
  %76 = add nsw i64 %61, -1
  %77 = icmp eq i64 %76, %60
  br i1 %77, label %130, label %78

78:                                               ; preds = %74
  %79 = getelementptr i8, ptr %57, i64 1
  br label %155

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
  %91 = getelementptr inbounds nuw i16, ptr %6, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !49
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %80
  %95 = getelementptr inbounds nuw i32, ptr %1, i64 %90
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
  %111 = getelementptr inbounds nuw i16, ptr %6, i64 %110
  %112 = load i16, ptr %111, align 2, !tbaa !49
  %113 = add i16 %112, -1
  store i16 %113, ptr %111, align 2, !tbaa !49
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %105
  %116 = getelementptr inbounds nuw i32, ptr %1, i64 %110
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

130:                                              ; preds = %74, %155, %50
  %131 = icmp eq i32 %54, %53
  br i1 %131, label %204, label %132

132:                                              ; preds = %130
  %133 = load ptr, ptr %0, align 8, !tbaa !33
  %134 = sub i32 64, %40
  %135 = zext nneg i32 %134 to i64
  %136 = sub i32 %53, %54
  %137 = and i32 %136, 3
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %151, label %139

139:                                              ; preds = %132, %139
  %140 = phi i32 [ %148, %139 ], [ %54, %132 ]
  %141 = phi i32 [ %149, %139 ], [ 0, %132 ]
  %142 = zext i32 %140 to i64
  %143 = getelementptr inbounds nuw i8, ptr %133, i64 %142
  %144 = load i64, ptr %143, align 1, !tbaa !39
  %145 = mul i64 %144, %25
  %146 = lshr i64 %145, %135
  %147 = getelementptr inbounds nuw i32, ptr %1, i64 %146
  store i32 0, ptr %147, align 4, !tbaa !17
  %148 = add i32 %140, 1
  %149 = add i32 %141, 1
  %150 = icmp eq i32 %149, %137
  br i1 %150, label %151, label %139, !llvm.loop !52

151:                                              ; preds = %139, %132
  %152 = phi i32 [ %54, %132 ], [ %148, %139 ]
  %153 = sub i32 %54, %53
  %154 = icmp ugt i32 %153, -4
  br i1 %154, label %204, label %173

155:                                              ; preds = %155, %78
  %156 = phi i64 [ %75, %78 ], [ %171, %155 ]
  %157 = getelementptr inbounds nuw i8, ptr %57, i64 %156
  %158 = load i64, ptr %157, align 1, !tbaa !39
  %159 = mul i64 %158, %25
  %160 = lshr i64 %159, %59
  %161 = getelementptr inbounds nuw i16, ptr %6, i64 %160
  %162 = load i16, ptr %161, align 2, !tbaa !49
  %163 = add i16 %162, -1
  store i16 %163, ptr %161, align 2, !tbaa !49
  %164 = getelementptr i8, ptr %79, i64 %156
  %165 = load i64, ptr %164, align 1, !tbaa !39
  %166 = mul i64 %165, %25
  %167 = lshr i64 %166, %59
  %168 = getelementptr inbounds nuw i16, ptr %6, i64 %167
  %169 = load i16, ptr %168, align 2, !tbaa !49
  %170 = add i16 %169, -1
  store i16 %170, ptr %168, align 2, !tbaa !49
  %171 = add nuw nsw i64 %156, 2
  %172 = icmp eq i64 %171, %61
  br i1 %172, label %130, label %155, !llvm.loop !53

173:                                              ; preds = %151, %173
  %174 = phi i32 [ %202, %173 ], [ %152, %151 ]
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds nuw i8, ptr %133, i64 %175
  %177 = load i64, ptr %176, align 1, !tbaa !39
  %178 = mul i64 %177, %25
  %179 = lshr i64 %178, %135
  %180 = getelementptr inbounds nuw i32, ptr %1, i64 %179
  store i32 0, ptr %180, align 4, !tbaa !17
  %181 = add i32 %174, 1
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds nuw i8, ptr %133, i64 %182
  %184 = load i64, ptr %183, align 1, !tbaa !39
  %185 = mul i64 %184, %25
  %186 = lshr i64 %185, %135
  %187 = getelementptr inbounds nuw i32, ptr %1, i64 %186
  store i32 0, ptr %187, align 4, !tbaa !17
  %188 = add i32 %174, 2
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds nuw i8, ptr %133, i64 %189
  %191 = load i64, ptr %190, align 1, !tbaa !39
  %192 = mul i64 %191, %25
  %193 = lshr i64 %192, %135
  %194 = getelementptr inbounds nuw i32, ptr %1, i64 %193
  store i32 0, ptr %194, align 4, !tbaa !17
  %195 = add i32 %174, 3
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds nuw i8, ptr %133, i64 %196
  %198 = load i64, ptr %197, align 1, !tbaa !39
  %199 = mul i64 %198, %25
  %200 = lshr i64 %199, %135
  %201 = getelementptr inbounds nuw i32, ptr %1, i64 %200
  store i32 0, ptr %201, align 4, !tbaa !17
  %202 = add i32 %174, 4
  %203 = icmp eq i32 %202, %53
  br i1 %203, label %204, label %173, !llvm.loop !54

204:                                              ; preds = %151, %173, %130
  %205 = zext i32 %54 to i64
  br i1 %52, label %228, label %206

206:                                              ; preds = %204
  %207 = add i32 %28, %53
  %208 = sub i32 %207, %54
  %209 = zext i32 %208 to i64
  %210 = tail call i64 @llvm.umin.i64(i64 %33, i64 %209)
  %211 = icmp samesign ult i64 %210, %29
  br i1 %211, label %238, label %212

212:                                              ; preds = %206
  %213 = sub i64 %33, %210
  %214 = getelementptr inbounds nuw i8, ptr %2, i64 %213
  %215 = load ptr, ptr %0, align 8, !tbaa !33
  %216 = getelementptr inbounds nuw i8, ptr %215, i64 %205
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %214, ptr align 1 %216, i64 %210, i1 false)
  br i1 %18, label %217, label %231

217:                                              ; preds = %212
  %218 = tail call i64 @clock() #15
  %219 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %218, i64 %35), !nosanitize !55
  %220 = extractvalue { i64, i1 } %219, 1, !nosanitize !55
  br i1 %220, label %221, label %222, !prof !56, !nosanitize !55

221:                                              ; preds = %217
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !55
  unreachable, !nosanitize !55

222:                                              ; preds = %217
  %223 = extractvalue { i64, i1 } %219, 0, !nosanitize !55
  %224 = icmp sgt i64 %223, 150000
  %225 = or i1 %30, %224
  br i1 %225, label %226, label %231

226:                                              ; preds = %222
  call void @llvm.lifetime.start.p0(i64 -1, ptr %8)
  call void @FASTCOVER_buildDictionary.cold.2(i64 %3, i64 %213, ptr %8) #16
  %227 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 -1, ptr %8)
  br label %231

228:                                              ; preds = %204
  %229 = add nuw nsw i64 %34, 1
  %230 = icmp ugt i64 %34, 8
  br i1 %230, label %238, label %231

231:                                              ; preds = %226, %212, %222, %228
  %232 = phi i64 [ %33, %228 ], [ %213, %226 ], [ %213, %222 ], [ %213, %212 ]
  %233 = phi i64 [ %229, %228 ], [ 0, %226 ], [ 0, %222 ], [ 0, %212 ]
  %234 = phi i64 [ %35, %228 ], [ %227, %226 ], [ %35, %222 ], [ %35, %212 ]
  %235 = add nsw i64 %36, 1
  %236 = urem i64 %235, %31
  %237 = icmp eq i64 %232, 0
  br i1 %237, label %238, label %32, !llvm.loop !57

238:                                              ; preds = %231, %228, %206, %20
  %239 = phi i64 [ 0, %20 ], [ %33, %206 ], [ %33, %228 ], [ 0, %231 ]
  br i1 %18, label %240, label %241

240:                                              ; preds = %238
  call void @FASTCOVER_buildDictionary.cold.3() #16
  br label %241

241:                                              ; preds = %240, %238
  ret i64 %239
}

declare i64 @ZDICT_finalizeDictionary(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef byval(%struct.ZDICT_params_t) align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef captures(none) %5) local_unnamed_addr #0 {
  %7 = alloca i64, align 8
  %8 = alloca [12 x i8], align 4
  %9 = alloca %struct.COVER_best_s, align 8
  %10 = alloca %struct.FASTCOVER_ctx_t, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8)
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
  %48 = load i32, ptr %47, align 4, !tbaa !5
  %49 = freeze i32 %48
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %9) #15
  %50 = fcmp ogt double %16, 1.000000e+00
  br i1 %50, label %51, label %54

51:                                               ; preds = %6
  %52 = icmp sgt i32 %49, 0
  br i1 %52, label %53, label %226

53:                                               ; preds = %51
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.12() #16
  br label %226

54:                                               ; preds = %6
  %55 = icmp ugt i32 %45, 10
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = icmp sgt i32 %49, 0
  br i1 %57, label %58, label %226

58:                                               ; preds = %56
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.11() #16
  br label %226

59:                                               ; preds = %54
  %60 = icmp ult i32 %24, %21
  %61 = icmp ult i32 %25, %24
  %62 = or i1 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = icmp sgt i32 %49, 0
  br i1 %64, label %65, label %226

65:                                               ; preds = %63
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.10() #16
  br label %226

66:                                               ; preds = %59
  %67 = icmp eq i32 %4, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = icmp sgt i32 %49, 0
  br i1 %69, label %70, label %226

70:                                               ; preds = %68
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.9() #16
  br label %226

71:                                               ; preds = %66
  %72 = icmp ult i64 %1, 256
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = icmp sgt i32 %49, 0
  br i1 %74, label %75, label %226

75:                                               ; preds = %73
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.8() #16
  br label %226

76:                                               ; preds = %71
  %77 = icmp ugt i32 %12, 1
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  %79 = zext i32 %12 to i64
  %80 = tail call ptr @POOL_create(i64 noundef %79, i64 noundef 1) #15
  %81 = icmp eq ptr %80, null
  br i1 %81, label %226, label %82

82:                                               ; preds = %78, %76
  %83 = phi ptr [ %80, %78 ], [ null, %76 ]
  call void @COVER_best_init(ptr noundef nonnull %9) #15
  %84 = load i32, ptr %11, align 8
  %85 = getelementptr inbounds nuw i8, ptr %5, i64 36
  %86 = getelementptr inbounds nuw i8, ptr %5, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %86, i64 12, i1 false)
  %87 = zext nneg i32 %46 to i64
  %88 = getelementptr inbounds nuw [11 x %struct.FASTCOVER_accel_t], ptr @FASTCOVER_defaultAccelParameters, i64 0, i64 %87
  %89 = load i64, ptr %88, align 8
  %90 = icmp sgt i32 %49, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.1(i32 %39) #16
  br label %92

92:                                               ; preds = %91, %82
  %93 = icmp ugt i32 %20, %21
  br i1 %93, label %204, label %94

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

109:                                              ; preds = %94, %199
  %110 = phi i32 [ %194, %199 ], [ 1, %94 ]
  %111 = phi i32 [ %202, %199 ], [ %20, %94 ]
  %112 = phi i1 [ false, %199 ], [ true, %94 ]
  %113 = phi i64 [ %193, %199 ], [ 0, %94 ]
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %10) #15
  br i1 %95, label %114, label %119

114:                                              ; preds = %109
  %115 = load ptr, ptr @stderr, align 8, !tbaa !44
  %116 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef nonnull @.str.10, i32 noundef %111) #20
  %117 = load ptr, ptr @stderr, align 8, !tbaa !44
  %118 = call i32 @fflush(ptr noundef %117)
  br i1 %99, label %120, label %121, !prof !56, !nosanitize !55

119:                                              ; preds = %109
  br i1 %99, label %120, label %121, !prof !63

120:                                              ; preds = %119, %114, %176
  call void @llvm.ubsantrap(i8 21) #19, !nosanitize !55
  unreachable, !nosanitize !55

121:                                              ; preds = %119, %114
  %122 = phi i32 [ %108, %119 ], [ %98, %114 ]
  %123 = call fastcc i64 @FASTCOVER_ctx_init(ptr noundef %10, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %111, double noundef %16, i32 noundef %43, i64 %89, i32 noundef %122)
  %124 = icmp ult i64 %123, -119
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  br i1 %105, label %126, label %127

126:                                              ; preds = %125
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.2() #16
  br label %127

127:                                              ; preds = %126, %125
  call void @COVER_best_destroy(ptr noundef nonnull %9) #15
  br label %197

128:                                              ; preds = %121
  br i1 %112, label %129, label %131

129:                                              ; preds = %128
  %130 = load i64, ptr %100, align 8, !tbaa !20
  call void @COVER_warnOnSmallCorpus(i64 noundef %1, i64 noundef %130, i32 noundef %49) #15
  br label %131

131:                                              ; preds = %129, %128
  %132 = icmp eq i32 %111, 0
  br label %133

133:                                              ; preds = %131, %192
  %134 = phi i32 [ %110, %131 ], [ %194, %192 ]
  %135 = phi i32 [ %24, %131 ], [ %195, %192 ]
  %136 = phi i64 [ %113, %131 ], [ %193, %192 ]
  %137 = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #21
  br i1 %95, label %138, label %139

138:                                              ; preds = %133
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.3(i32 %135) #16
  br label %139

139:                                              ; preds = %138, %133
  %140 = icmp eq ptr %137, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %139
  br i1 %105, label %142, label %189

142:                                              ; preds = %141
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.6() #16
  br label %189

143:                                              ; preds = %139
  store ptr %10, ptr %137, align 8, !tbaa !64
  %144 = getelementptr inbounds nuw i8, ptr %137, i64 8
  store ptr %9, ptr %144, align 8, !tbaa !67
  %145 = getelementptr inbounds nuw i8, ptr %137, i64 16
  store i64 %1, ptr %145, align 8, !tbaa !68
  %146 = getelementptr inbounds nuw i8, ptr %137, i64 24
  %147 = getelementptr inbounds nuw i8, ptr %137, i64 28
  %148 = getelementptr inbounds nuw i8, ptr %137, i64 32
  %149 = getelementptr inbounds nuw i8, ptr %137, i64 36
  store i32 %84, ptr %149, align 4, !tbaa !17
  %150 = getelementptr inbounds nuw i8, ptr %137, i64 40
  %151 = getelementptr inbounds nuw i8, ptr %137, i64 48
  %152 = getelementptr inbounds nuw i8, ptr %137, i64 52
  store i32 0, ptr %152, align 4, !tbaa !17
  %153 = getelementptr inbounds nuw i8, ptr %137, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %153, ptr noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !69
  %154 = getelementptr inbounds nuw i8, ptr %137, i64 68
  store i32 0, ptr %154, align 4
  store i32 %135, ptr %146, align 8, !tbaa !70
  store i32 %111, ptr %147, align 4, !tbaa !71
  store double %16, ptr %150, align 8, !tbaa !72
  store i32 %29, ptr %148, align 8, !tbaa !73
  store i32 0, ptr %151, align 8, !tbaa !74
  %155 = load i32, ptr %101, align 8, !tbaa !32
  %156 = getelementptr inbounds nuw i8, ptr %137, i64 60
  store i32 %155, ptr %156, align 4, !tbaa !75
  %157 = load i32, ptr %102, align 4, !tbaa !38
  %158 = icmp eq i32 %135, 0
  %159 = or i1 %158, %132
  br i1 %159, label %169, label %160

160:                                              ; preds = %143
  switch i32 %111, label %169 [
    i32 8, label %161
    i32 6, label %161
  ]

161:                                              ; preds = %160, %160
  %162 = zext i32 %135 to i64
  %163 = icmp ult i64 %1, %162
  %164 = icmp ugt i32 %111, %135
  %165 = or i1 %163, %164
  %166 = add i32 %157, -32
  %167 = icmp ult i32 %166, -31
  %168 = or i1 %167, %165
  br i1 %168, label %169, label %172

169:                                              ; preds = %161, %160, %143
  br i1 %105, label %170, label %171

170:                                              ; preds = %169
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.5() #16
  br label %171

171:                                              ; preds = %170, %169
  call void @free(ptr noundef nonnull %137) #15
  br label %192

172:                                              ; preds = %161
  call void @COVER_best_start(ptr noundef nonnull %9) #15
  br i1 %103, label %174, label %173

173:                                              ; preds = %172
  call void @POOL_add(ptr noundef nonnull %83, ptr noundef nonnull @FASTCOVER_tryParameters, ptr noundef nonnull %137) #15
  br label %175

174:                                              ; preds = %172
  call void @FASTCOVER_tryParameters(ptr noundef nonnull %137)
  br label %175

175:                                              ; preds = %174, %173
  br i1 %90, label %176, label %186

176:                                              ; preds = %175
  %177 = call i64 @clock() #15
  %178 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %177, i64 %136), !nosanitize !55
  %179 = extractvalue { i64, i1 } %178, 1, !nosanitize !55
  br i1 %179, label %120, label %180, !prof !56, !nosanitize !55

180:                                              ; preds = %176
  %181 = extractvalue { i64, i1 } %178, 0, !nosanitize !55
  %182 = icmp sgt i64 %181, 150000
  %183 = select i1 %182, i1 true, i1 %104
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  call void @llvm.lifetime.start.p0(i64 -1, ptr %7)
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.4(i32 %134, i32 %39, ptr %7) #16
  %185 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 -1, ptr %7)
  br label %186

186:                                              ; preds = %184, %180, %175
  %187 = phi i64 [ %136, %175 ], [ %185, %184 ], [ %136, %180 ]
  %188 = add i32 %134, 1
  br label %192

189:                                              ; preds = %142, %141
  call void @COVER_best_destroy(ptr noundef nonnull %9) #15
  %190 = load ptr, ptr %106, align 8, !tbaa !28
  call void @free(ptr noundef %190) #15
  store ptr null, ptr %106, align 8, !tbaa !28
  %191 = load ptr, ptr %107, align 8, !tbaa !31
  call void @free(ptr noundef %191) #15
  store ptr null, ptr %107, align 8, !tbaa !31
  br label %197

192:                                              ; preds = %186, %171
  %193 = phi i64 [ %136, %171 ], [ %187, %186 ]
  %194 = phi i32 [ %134, %171 ], [ %188, %186 ]
  %195 = add i32 %135, %32
  %196 = icmp ugt i32 %195, %25
  br i1 %196, label %199, label %133, !llvm.loop !76

197:                                              ; preds = %189, %127
  %198 = phi i64 [ %123, %127 ], [ -64, %189 ]
  call void @POOL_free(ptr noundef %83) #15
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #15
  br label %226

199:                                              ; preds = %192
  call void @COVER_best_wait(ptr noundef nonnull %9) #15
  %200 = load ptr, ptr %106, align 8, !tbaa !28
  call void @free(ptr noundef %200) #15
  store ptr null, ptr %106, align 8, !tbaa !28
  %201 = load ptr, ptr %107, align 8, !tbaa !31
  call void @free(ptr noundef %201) #15
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #15
  %202 = add i32 %111, 2
  %203 = icmp ugt i32 %202, %21
  br i1 %203, label %204, label %109, !llvm.loop !77

204:                                              ; preds = %199, %92
  br i1 %90, label %205, label %206

205:                                              ; preds = %204
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.7() #16
  br label %206

206:                                              ; preds = %205, %204
  %207 = getelementptr inbounds nuw i8, ptr %9, i64 80
  %208 = load i64, ptr %207, align 8, !tbaa !78
  %209 = icmp ult i64 %208, -119
  br i1 %209, label %211, label %210

210:                                              ; preds = %206
  call void @COVER_best_destroy(ptr noundef nonnull %9) #15
  call void @POOL_free(ptr noundef %83) #15
  br label %226

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
  %222 = getelementptr inbounds nuw i8, ptr %5, i64 44
  %223 = getelementptr inbounds nuw i8, ptr %9, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %222, ptr noundef nonnull align 8 dereferenceable(12) %223, i64 12, i1 false)
  store i32 %219, ptr %85, align 4, !tbaa !81
  %224 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %225 = load ptr, ptr %224, align 8, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %225, i64 %213, i1 false)
  call void @COVER_best_destroy(ptr noundef nonnull %9) #15
  call void @POOL_free(ptr noundef %83) #15
  br label %226

226:                                              ; preds = %53, %58, %65, %70, %75, %197, %210, %211, %78, %73, %68, %63, %56, %51
  %227 = phi i64 [ -42, %53 ], [ -42, %51 ], [ -42, %58 ], [ -42, %56 ], [ -42, %65 ], [ -42, %63 ], [ -72, %70 ], [ -72, %68 ], [ -70, %75 ], [ -70, %73 ], [ -64, %78 ], [ %208, %210 ], [ %213, %211 ], [ %198, %197 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8)
  ret i64 %227
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
define internal void @FASTCOVER_tryParameters(ptr noundef captures(none) %0) #0 {
  %2 = alloca %struct.ZDICT_cover_params_t, align 8
  %3 = alloca %struct.COVER_dictSelection, align 8
  %4 = alloca %struct.COVER_dictSelection, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #15
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false), !tbaa.struct !83
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load i64, ptr %7, align 8, !tbaa !68
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 68
  %10 = load i32, ptr %9, align 4, !tbaa !38
  %11 = zext nneg i32 %10 to i64
  %12 = shl nuw i64 1, %11
  %13 = tail call noalias ptr @calloc(i64 noundef %12, i64 noundef 2) #17
  %14 = tail call noalias ptr @malloc(i64 noundef %8) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @COVER_dictSelectionError(ptr dead_on_unwind nonnull writable sret(%struct.COVER_dictSelection) align 8 %3, i64 noundef -1) #15
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
  call void @FASTCOVER_tryParameters.cold.1() #16
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %44 = getelementptr inbounds nuw i8, ptr %14, i64 %35
  %45 = sub i64 %8, %35
  %46 = load ptr, ptr %5, align 8, !tbaa !33
  %47 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %50 = load i64, ptr %49, align 8, !tbaa !35
  %51 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %52 = load ptr, ptr %51, align 8, !tbaa !31
  call void @COVER_selectDict(ptr dead_on_unwind nonnull writable sret(%struct.COVER_dictSelection) align 8 %4, ptr noundef nonnull %44, i64 noundef %8, i64 noundef %45, ptr noundef %46, ptr noundef %48, i32 noundef %43, i64 noundef %37, i64 noundef %50, ptr noundef nonnull byval(%struct.ZDICT_cover_params_t) align 8 %2, ptr noundef %52, i64 noundef -1) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !85
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  %53 = call i32 @COVER_dictSelectionIsError(ptr noundef nonnull byval(%struct.COVER_dictSelection) align 8 %3) #15
  %54 = icmp ne i32 %53, 0
  %55 = icmp sgt i32 %20, 0
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %61

57:                                               ; preds = %29
  call void @FASTCOVER_tryParameters.cold.2() #16
  br label %58

58:                                               ; preds = %57, %28
  %59 = load ptr, ptr @stderr, align 8, !tbaa !44
  %60 = call i32 @fflush(ptr noundef %59)
  br label %61

61:                                               ; preds = %58, %29, %26
  call void @free(ptr noundef %14) #15
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %63 = load ptr, ptr %62, align 8, !tbaa !67
  call void @COVER_best_finish(ptr noundef %63, ptr noundef nonnull byval(%struct.ZDICT_cover_params_t) align 8 %2, ptr noundef nonnull byval(%struct.COVER_dictSelection) align 8 %3) #15
  call void @free(ptr noundef nonnull %0) #15
  call void @free(ptr noundef %13) #15
  call void @COVER_dictSelectionFree(ptr noundef nonnull byval(%struct.COVER_dictSelection) align 8 %3) #15
  call void @free(ptr noundef %18) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #15
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
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_fastCover.cold.1() #14 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 29, i64 1, ptr %2) #18
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_fastCover.cold.2() #14 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 20, i64 1, ptr %2) #18
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_fastCover.cold.3(i64 %0) #14 {
  br label %2

2:                                                ; preds = %1
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = trunc i64 %0 to i32
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %4) #20
  %6 = load ptr, ptr @stderr, align 8, !tbaa !44
  %7 = tail call i32 @fflush(ptr noundef %6)
  br label %8

8:                                                ; preds = %2
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_fastCover.cold.4() #14 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 256) #20
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_fastCover.cold.5() #14 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %2) #18
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_fastCover.cold.6() #14 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 31, i64 1, ptr %2) #18
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_ctx_init.cold.1(i64 %0, i32 %1, i64 %2, i32 %3) #14 {
  br label %5

5:                                                ; preds = %4
  %6 = load ptr, ptr @stderr, align 8, !tbaa !44
  %7 = trunc i64 %0 to i32
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.19, i32 noundef %1, i32 noundef %7) #20
  %9 = load ptr, ptr @stderr, align 8, !tbaa !44
  %10 = tail call i32 @fflush(ptr noundef %9)
  %11 = load ptr, ptr @stderr, align 8, !tbaa !44
  %12 = trunc i64 %2 to i32
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.20, i32 noundef %3, i32 noundef %12) #20
  %14 = load ptr, ptr @stderr, align 8, !tbaa !44
  %15 = tail call i32 @fflush(ptr noundef %14)
  br label %16

16:                                               ; preds = %5
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_ctx_init.cold.2(ptr %0, ptr %1) #14 {
  br label %3

3:                                                ; preds = %2
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 36, i64 1, ptr %4) #18
  %6 = load ptr, ptr @stderr, align 8, !tbaa !44
  %7 = tail call i32 @fflush(ptr noundef %6)
  %8 = load ptr, ptr %0, align 8, !tbaa !28
  store ptr %8, ptr %1, align 8
  br label %9

9:                                                ; preds = %3
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_ctx_init.cold.3() #14 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 36, i64 1, ptr %2) #18
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_ctx_init.cold.4() #14 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 0) #20
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_ctx_init.cold.5(i32 %0) #14 {
  br label %2

2:                                                ; preds = %1
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %0) #20
  %5 = load ptr, ptr @stderr, align 8, !tbaa !44
  %6 = tail call i32 @fflush(ptr noundef %5)
  br label %7

7:                                                ; preds = %2
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_ctx_init.cold.6(i64 %0) #14 {
  br label %2

2:                                                ; preds = %1
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = lshr i64 %0, 20
  %5 = trunc i64 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %5, i32 noundef 4095) #20
  %7 = load ptr, ptr @stderr, align 8, !tbaa !44
  %8 = tail call i32 @fflush(ptr noundef %7)
  br label %9

9:                                                ; preds = %2
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_buildDictionary.cold.1(i64 %0, i32 %1) #14 {
  br label %3

3:                                                ; preds = %2
  %4 = trunc i64 %0 to i32
  %5 = load ptr, ptr @stderr, align 8, !tbaa !44
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.24, i32 noundef %4, i32 noundef %1) #20
  %7 = load ptr, ptr @stderr, align 8, !tbaa !44
  %8 = tail call i32 @fflush(ptr noundef %7)
  br label %9

9:                                                ; preds = %3
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_buildDictionary.cold.2(i64 %0, i64 %1, ptr %2) #14 {
  br label %4

4:                                                ; preds = %3
  %5 = tail call i64 @clock() #15
  store i64 %5, ptr %2, align 8
  %6 = load ptr, ptr @stderr, align 8, !tbaa !44
  %7 = sub i64 %0, %1
  %8 = mul i64 %7, 100
  %9 = udiv i64 %8, %0
  %10 = trunc i64 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.13, i32 noundef %10) #20
  %12 = load ptr, ptr @stderr, align 8, !tbaa !44
  %13 = tail call i32 @fflush(ptr noundef %12)
  br label %14

14:                                               ; preds = %4
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_buildDictionary.cold.3() #14 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #20
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.1(i32 %0) #14 {
  br label %2

2:                                                ; preds = %1
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %0) #20
  %5 = load ptr, ptr @stderr, align 8, !tbaa !44
  %6 = call i32 @fflush(ptr noundef %5)
  br label %7

7:                                                ; preds = %2
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.2() #14 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = call i64 @fwrite(ptr nonnull @.str.3, i64 29, i64 1, ptr %2) #18
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.3(i32 %0) #14 {
  br label %2

2:                                                ; preds = %1
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef %0) #20
  %5 = load ptr, ptr @stderr, align 8, !tbaa !44
  %6 = call i32 @fflush(ptr noundef %5)
  br label %7

7:                                                ; preds = %2
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.4(i32 %0, i32 %1, ptr %2) #14 {
  br label %4

4:                                                ; preds = %3
  %5 = call i64 @clock() #15
  store i64 %5, ptr %2, align 8
  %6 = load ptr, ptr @stderr, align 8, !tbaa !44
  %7 = mul i32 %0, 100
  %8 = udiv i32 %7, %1
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.13, i32 noundef %8) #20
  %10 = load ptr, ptr @stderr, align 8, !tbaa !44
  %11 = call i32 @fflush(ptr noundef %10)
  br label %12

12:                                               ; preds = %4
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.5() #14 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = call i64 @fwrite(ptr nonnull @.str, i64 31, i64 1, ptr %2) #18
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.6() #14 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = call i64 @fwrite(ptr nonnull @.str.12, i64 30, i64 1, ptr %2) #18
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.7() #14 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #20
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.8() #14 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 256) #20
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.9() #14 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %2) #18
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.10() #14 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 12, i64 1, ptr %2) #18
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.11() #14 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 16, i64 1, ptr %2) #18
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.12() #14 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 21, i64 1, ptr %2) #18
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_tryParameters.cold.1() #14 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = call i64 @fwrite(ptr nonnull @.str.25, i64 42, i64 1, ptr %2) #18
  br label %4

4:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_tryParameters.cold.2() #14 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = call i64 @fwrite(ptr nonnull @.str.26, i64 28, i64 1, ptr %2) #18
  br label %4

4:                                                ; preds = %1
  ret void
}

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
attributes #14 = { cold minsize nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noinline }
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
!64 = !{!65, !23, i64 0}
!65 = !{!"FASTCOVER_tryParameters_data_s", !23, i64 0, !66, i64 8, !25, i64 16, !15, i64 24}
!66 = !{!"p1 _ZTS12COVER_best_s", !23, i64 0}
!67 = !{!65, !66, i64 8}
!68 = !{!65, !25, i64 16}
!69 = !{i64 0, i64 4, !17, i64 4, i64 4, !17, i64 8, i64 4, !17}
!70 = !{!65, !7, i64 24}
!71 = !{!65, !7, i64 28}
!72 = !{!65, !10, i64 40}
!73 = !{!65, !7, i64 32}
!74 = !{!65, !7, i64 48}
!75 = !{!65, !7, i64 60}
!76 = distinct !{!76, !41}
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
