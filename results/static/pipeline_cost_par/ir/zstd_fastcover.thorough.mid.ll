; ModuleID = 'results/static/pipeline_cost_par/ir/zstd_fastcover.ll'
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
  call void @llvm.lifetime.start.p0(ptr %7)
  call void @llvm.lifetime.start.p0(ptr %8)
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
  call void @ZDICT_trainFromBuffer_fastCover.cold.6() #14
  br label %97

49:                                               ; preds = %36
  %50 = icmp eq i32 %4, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = icmp sgt i32 %10, 0
  br i1 %52, label %53, label %97

53:                                               ; preds = %51
  call void @ZDICT_trainFromBuffer_fastCover.cold.5() #14
  br label %97

54:                                               ; preds = %49
  %55 = icmp ult i64 %1, 256
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = icmp sgt i32 %10, 0
  br i1 %57, label %58, label %97

58:                                               ; preds = %56
  call void @ZDICT_trainFromBuffer_fastCover.cold.4() #14
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
  call void @ZDICT_trainFromBuffer_fastCover.cold.1() #14
  br label %97

68:                                               ; preds = %59
  %69 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %70 = load i64, ptr %69, align 8, !tbaa !20
  tail call void @COVER_warnOnSmallCorpus(i64 noundef %1, i64 noundef %70, i32 noundef %10) #15
  %71 = icmp sgt i32 %10, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  call void @ZDICT_trainFromBuffer_fastCover.cold.2() #14
  br label %73

73:                                               ; preds = %72, %68
  %74 = zext nneg i32 %14 to i64
  %75 = shl nuw nsw i64 1, %74
  %76 = tail call noalias ptr @calloc(i64 noundef %75, i64 noundef 2) #16
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
  call void @ZDICT_trainFromBuffer_fastCover.cold.3(i64 %90) #14
  br label %94

94:                                               ; preds = %93, %73
  tail call void @free(ptr noundef %78) #15
  %95 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %96 = load ptr, ptr %95, align 8, !tbaa !31
  tail call void @free(ptr noundef %96) #15
  tail call void @free(ptr noundef %76) #15
  br label %97

97:                                               ; preds = %94, %67, %65, %58, %56, %53, %51, %48, %46
  %98 = phi i64 [ %90, %94 ], [ -42, %48 ], [ -42, %46 ], [ -72, %53 ], [ -72, %51 ], [ -70, %58 ], [ -70, %56 ], [ %63, %65 ], [ %63, %67 ]
  call void @llvm.lifetime.end.p0(ptr %8)
  call void @llvm.lifetime.end.p0(ptr %7)
  ret i64 %98
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

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
  br i1 %34, label %35, label %190

35:                                               ; preds = %33
  call void @FASTCOVER_ctx_init.cold.6(i64 %11) #14
  br label %190

36:                                               ; preds = %24
  %37 = icmp ult i32 %17, 5
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = icmp sgt i32 %8, 0
  br i1 %39, label %40, label %190

40:                                               ; preds = %38
  call void @FASTCOVER_ctx_init.cold.5(i32 %17) #14
  br label %190

41:                                               ; preds = %36
  %42 = icmp eq i32 %3, %16
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = icmp sgt i32 %8, 0
  br i1 %44, label %45, label %190

45:                                               ; preds = %43
  call void @FASTCOVER_ctx_init.cold.4() #14
  br label %190

46:                                               ; preds = %41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  %47 = icmp sgt i32 %8, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  call void @FASTCOVER_ctx_init.cold.1(i64 %25, i32 %17, i64 %26, i32 %18) #14
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
  %65 = tail call noalias ptr @calloc(i64 noundef %64, i64 noundef 8) #16
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %65, ptr %66, align 8, !tbaa !31
  %67 = icmp eq ptr %65, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %49
  %69 = icmp sgt i32 %8, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %68
  call void @FASTCOVER_ctx_init.cold.3() #14
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

115:                                              ; preds = %115, %111
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
  %129 = tail call noalias ptr @calloc(i64 noundef %128, i64 noundef 4) #16
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %129, ptr %130, align 8, !tbaa !28
  %131 = icmp eq ptr %129, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %126
  %133 = icmp sgt i32 %8, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(ptr %10)
  call void @FASTCOVER_ctx_init.cold.2(ptr %130, ptr %10) #14
  %135 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.end.p0(ptr %10)
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
  %142 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr %141) #17
  %143 = load ptr, ptr @stderr, align 8, !tbaa !44
  %144 = tail call i32 @fflush(ptr noundef %143)
  %145 = load ptr, ptr %130, align 8, !tbaa !28
  %146 = load i64, ptr %54, align 8, !tbaa !29
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %190, label %148

148:                                              ; preds = %140, %139
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

190:                                              ; preds = %166, %140, %136, %71, %45, %43, %40, %38, %35, %33
  %191 = phi i64 [ -64, %71 ], [ -64, %136 ], [ -72, %35 ], [ -72, %33 ], [ -72, %40 ], [ -72, %38 ], [ -72, %45 ], [ -72, %43 ], [ 0, %140 ], [ 0, %166 ]
  ret i64 %191
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
  %13 = tail call i64 @COVER_computeEpochs(i32 noundef %9, i32 noundef %12, i32 noundef %4, i32 noundef 1) #15
  %14 = lshr i64 %13, 32
  %15 = trunc nuw i64 %14 to i32
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %17 = load i32, ptr %16, align 8, !tbaa !32
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  call void @FASTCOVER_buildDictionary.cold.1(i64 %13, i32 %15) #14
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

32:                                               ; preds = %231, %22
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

130:                                              ; preds = %155, %74, %50
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

139:                                              ; preds = %139, %132
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

173:                                              ; preds = %173, %151
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

204:                                              ; preds = %173, %151, %130
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
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !55
  unreachable, !nosanitize !55

222:                                              ; preds = %217
  %223 = extractvalue { i64, i1 } %219, 0, !nosanitize !55
  %224 = icmp sgt i64 %223, 150000
  %225 = or i1 %30, %224
  br i1 %225, label %226, label %231

226:                                              ; preds = %222
  call void @llvm.lifetime.start.p0(ptr %8)
  call void @FASTCOVER_buildDictionary.cold.2(i64 %3, i64 %213, ptr %8) #14
  %227 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(ptr %8)
  br label %231

228:                                              ; preds = %204
  %229 = add nuw nsw i64 %34, 1
  %230 = icmp ugt i64 %34, 8
  br i1 %230, label %238, label %231

231:                                              ; preds = %228, %226, %222, %212
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
  call void @FASTCOVER_buildDictionary.cold.3() #14
  br label %241

241:                                              ; preds = %240, %238
  ret i64 %239
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
  call void @llvm.lifetime.start.p0(ptr %8)
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
  call void @llvm.lifetime.start.p0(ptr %9)
  %50 = fcmp ogt double %16, 1.000000e+00
  br i1 %50, label %51, label %54

51:                                               ; preds = %6
  %52 = icmp sgt i32 %49, 0
  br i1 %52, label %53, label %310

53:                                               ; preds = %51
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.12() #14
  br label %310

54:                                               ; preds = %6
  %55 = icmp ugt i32 %45, 10
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = icmp sgt i32 %49, 0
  br i1 %57, label %58, label %310

58:                                               ; preds = %56
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.11() #14
  br label %310

59:                                               ; preds = %54
  %60 = icmp ult i32 %24, %21
  %61 = icmp ult i32 %25, %24
  %62 = or i1 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = icmp sgt i32 %49, 0
  br i1 %64, label %65, label %310

65:                                               ; preds = %63
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.10() #14
  br label %310

66:                                               ; preds = %59
  %67 = icmp eq i32 %4, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = icmp sgt i32 %49, 0
  br i1 %69, label %70, label %310

70:                                               ; preds = %68
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.9() #14
  br label %310

71:                                               ; preds = %66
  %72 = icmp ult i64 %1, 256
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = icmp sgt i32 %49, 0
  br i1 %74, label %75, label %310

75:                                               ; preds = %73
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.8() #14
  br label %310

76:                                               ; preds = %71
  %77 = icmp ugt i32 %12, 1
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  %79 = zext i32 %12 to i64
  %80 = tail call ptr @POOL_create(i64 noundef %79, i64 noundef 1) #15
  %81 = icmp eq ptr %80, null
  br i1 %81, label %310, label %82

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
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.1(i32 %39) #14
  br label %92

92:                                               ; preds = %91, %82
  %93 = icmp ugt i32 %20, %21
  br i1 %93, label %288, label %94

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
  %mv.h = icmp sge i32 %48, 0
  %mv.h.fr = freeze i1 %mv.h
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %94
  br label %109

109:                                              ; preds = %188, %.mv.ph.mv.fast
  %110 = phi i32 [ %.lcssa.mv.fast, %188 ], [ 1, %.mv.ph.mv.fast ]
  %111 = phi i32 [ %191, %188 ], [ %20, %.mv.ph.mv.fast ]
  %112 = phi i1 [ false, %188 ], [ true, %.mv.ph.mv.fast ]
  %113 = phi i64 [ %.lcssa3.mv.fast, %188 ], [ 0, %.mv.ph.mv.fast ]
  call void @llvm.lifetime.start.p0(ptr %10)
  br i1 %95, label %115, label %114

114:                                              ; preds = %109
  br i1 false, label %.loopexit1, label %120, !prof !63

115:                                              ; preds = %109
  %116 = load ptr, ptr @stderr, align 8, !tbaa !44
  %117 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef nonnull @.str.10, i32 noundef %111) #19
  %118 = load ptr, ptr @stderr, align 8, !tbaa !44
  %119 = call i32 @fflush(ptr noundef %118)
  br i1 false, label %.loopexit1, label %120, !prof !56, !nosanitize !55

120:                                              ; preds = %115, %114
  %121 = phi i32 [ %108, %114 ], [ %98, %115 ]
  %122 = call fastcc i64 @FASTCOVER_ctx_init(ptr noundef %10, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %111, double noundef %16, i32 noundef %43, i64 %89, i32 noundef %121)
  %123 = icmp ult i64 %122, -119
  br i1 %123, label %124, label %209

124:                                              ; preds = %120
  br i1 %112, label %125, label %127

125:                                              ; preds = %124
  %126 = load i64, ptr %100, align 8, !tbaa !20
  call void @COVER_warnOnSmallCorpus(i64 noundef %1, i64 noundef %126, i32 noundef %49) #15
  br label %127

127:                                              ; preds = %125, %124
  %128 = icmp eq i32 %111, 0
  br label %129

129:                                              ; preds = %183, %127
  %130 = phi i32 [ %110, %127 ], [ %185, %183 ]
  %131 = phi i32 [ %24, %127 ], [ %186, %183 ]
  %132 = phi i64 [ %113, %127 ], [ %184, %183 ]
  %133 = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #20
  br i1 %95, label %134, label %135

134:                                              ; preds = %129
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.3(i32 %131) #14
  br label %135

135:                                              ; preds = %134, %129
  %136 = icmp eq ptr %133, null
  br i1 %136, label %225, label %137

137:                                              ; preds = %135
  store ptr %10, ptr %133, align 8, !tbaa !64
  %138 = getelementptr inbounds nuw i8, ptr %133, i64 8
  store ptr %9, ptr %138, align 8, !tbaa !67
  %139 = getelementptr inbounds nuw i8, ptr %133, i64 16
  store i64 %1, ptr %139, align 8, !tbaa !68
  %140 = getelementptr inbounds nuw i8, ptr %133, i64 24
  %141 = getelementptr inbounds nuw i8, ptr %133, i64 28
  %142 = getelementptr inbounds nuw i8, ptr %133, i64 32
  %143 = getelementptr inbounds nuw i8, ptr %133, i64 36
  store i32 %84, ptr %143, align 4, !tbaa !17
  %144 = getelementptr inbounds nuw i8, ptr %133, i64 40
  %145 = getelementptr inbounds nuw i8, ptr %133, i64 48
  %146 = getelementptr inbounds nuw i8, ptr %133, i64 52
  store i32 0, ptr %146, align 4, !tbaa !17
  %147 = getelementptr inbounds nuw i8, ptr %133, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %147, ptr noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !69
  %148 = getelementptr inbounds nuw i8, ptr %133, i64 68
  store i32 0, ptr %148, align 4
  store i32 %131, ptr %140, align 8, !tbaa !70
  store i32 %111, ptr %141, align 4, !tbaa !71
  store double %16, ptr %144, align 8, !tbaa !72
  store i32 %29, ptr %142, align 8, !tbaa !73
  store i32 0, ptr %145, align 8, !tbaa !74
  %149 = load i32, ptr %101, align 8, !tbaa !32
  %150 = getelementptr inbounds nuw i8, ptr %133, i64 60
  store i32 %149, ptr %150, align 4, !tbaa !75
  %151 = load i32, ptr %102, align 4, !tbaa !38
  %152 = icmp eq i32 %131, 0
  %153 = or i1 %152, %128
  br i1 %153, label %180, label %154

154:                                              ; preds = %137
  switch i32 %111, label %180 [
    i32 8, label %155
    i32 6, label %155
  ]

155:                                              ; preds = %154, %154
  %156 = zext i32 %131 to i64
  %157 = icmp ult i64 %1, %156
  %158 = icmp ugt i32 %111, %131
  %159 = or i1 %157, %158
  %160 = add i32 %151, -32
  %161 = icmp ult i32 %160, -31
  %162 = or i1 %161, %159
  br i1 %162, label %180, label %163

163:                                              ; preds = %155
  call void @COVER_best_start(ptr noundef nonnull %9) #15
  br i1 %103, label %165, label %164

164:                                              ; preds = %163
  call void @POOL_add(ptr noundef nonnull %83, ptr noundef nonnull @FASTCOVER_tryParameters, ptr noundef nonnull %133) #15
  br label %166

165:                                              ; preds = %163
  call void @FASTCOVER_tryParameters(ptr noundef nonnull %133)
  br label %166

166:                                              ; preds = %165, %164
  br i1 %90, label %167, label %177

167:                                              ; preds = %166
  %168 = call i64 @clock() #15
  %169 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %168, i64 %132), !nosanitize !55
  %170 = extractvalue { i64, i1 } %169, 1, !nosanitize !55
  br i1 %170, label %.loopexit, label %171, !prof !56, !nosanitize !55

171:                                              ; preds = %167
  %172 = extractvalue { i64, i1 } %169, 0, !nosanitize !55
  %173 = icmp sgt i64 %172, 150000
  %174 = select i1 %173, i1 true, i1 %104
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  call void @llvm.lifetime.start.p0(ptr %7)
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.4(i32 %130, i32 %39, ptr %7) #14
  %176 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr %7)
  br label %177

177:                                              ; preds = %175, %171, %166
  %178 = phi i64 [ %132, %166 ], [ %176, %175 ], [ %132, %171 ]
  %179 = add i32 %130, 1
  br label %183

180:                                              ; preds = %155, %154, %137
  br i1 %105, label %181, label %182

181:                                              ; preds = %180
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.5() #14
  br label %182

182:                                              ; preds = %181, %180
  call void @free(ptr noundef nonnull %133) #15
  br label %183

183:                                              ; preds = %182, %177
  %184 = phi i64 [ %132, %182 ], [ %178, %177 ]
  %185 = phi i32 [ %130, %182 ], [ %179, %177 ]
  %186 = add i32 %131, %32
  %187 = icmp ugt i32 %186, %25
  br i1 %187, label %188, label %129, !llvm.loop !76

188:                                              ; preds = %183
  %.lcssa3.mv.fast = phi i64 [ %184, %183 ]
  %.lcssa.mv.fast = phi i32 [ %185, %183 ]
  call void @COVER_best_wait(ptr noundef nonnull %9) #15
  %189 = load ptr, ptr %106, align 8, !tbaa !28
  call void @free(ptr noundef %189) #15
  store ptr null, ptr %106, align 8, !tbaa !28
  %190 = load ptr, ptr %107, align 8, !tbaa !31
  call void @free(ptr noundef %190) #15
  call void @llvm.lifetime.end.p0(ptr %10)
  %191 = add i32 %111, 2
  %192 = icmp ugt i32 %191, %21
  br i1 %192, label %.loopexit2, label %109, !llvm.loop !77

.mv.ph:                                           ; preds = %94
  br label %193

193:                                              ; preds = %283, %.mv.ph
  %194 = phi i32 [ %.lcssa, %283 ], [ 1, %.mv.ph ]
  %195 = phi i32 [ %286, %283 ], [ %20, %.mv.ph ]
  %196 = phi i1 [ false, %283 ], [ true, %.mv.ph ]
  %197 = phi i64 [ %.lcssa3, %283 ], [ 0, %.mv.ph ]
  call void @llvm.lifetime.start.p0(ptr %10)
  br i1 %95, label %198, label %203

198:                                              ; preds = %193
  %199 = load ptr, ptr @stderr, align 8, !tbaa !44
  %200 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %199, ptr noundef nonnull @.str.10, i32 noundef %195) #19
  %201 = load ptr, ptr @stderr, align 8, !tbaa !44
  %202 = call i32 @fflush(ptr noundef %201)
  br i1 false, label %.loopexit1, label %205, !prof !56, !nosanitize !55

203:                                              ; preds = %193
  br i1 %99, label %.loopexit1, label %205, !prof !63

.loopexit:                                        ; preds = %167, %260
  br label %204

.loopexit1:                                       ; preds = %115, %114, %198, %203
  br label %204

204:                                              ; preds = %.loopexit1, %.loopexit
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !55
  unreachable, !nosanitize !55

205:                                              ; preds = %203, %198
  %206 = phi i32 [ %108, %203 ], [ %98, %198 ]
  %207 = call fastcc i64 @FASTCOVER_ctx_init(ptr noundef %10, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %195, double noundef %16, i32 noundef %43, i64 %89, i32 noundef %206)
  %208 = icmp ult i64 %207, -119
  br i1 %208, label %212, label %209

209:                                              ; preds = %120, %205
  %.lcssa4 = phi i64 [ %207, %205 ], [ %122, %120 ]
  br i1 %105, label %210, label %211

210:                                              ; preds = %209
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.2() #14
  br label %211

211:                                              ; preds = %210, %209
  call void @COVER_best_destroy(ptr noundef nonnull %9) #15
  br label %281

212:                                              ; preds = %205
  br i1 %196, label %213, label %215

213:                                              ; preds = %212
  %214 = load i64, ptr %100, align 8, !tbaa !20
  call void @COVER_warnOnSmallCorpus(i64 noundef %1, i64 noundef %214, i32 noundef %49) #15
  br label %215

215:                                              ; preds = %213, %212
  %216 = icmp eq i32 %195, 0
  br label %217

217:                                              ; preds = %276, %215
  %218 = phi i32 [ %194, %215 ], [ %278, %276 ]
  %219 = phi i32 [ %24, %215 ], [ %279, %276 ]
  %220 = phi i64 [ %197, %215 ], [ %277, %276 ]
  %221 = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #20
  br i1 %95, label %222, label %223

222:                                              ; preds = %217
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.3(i32 %219) #14
  br label %223

223:                                              ; preds = %222, %217
  %224 = icmp eq ptr %221, null
  br i1 %224, label %225, label %227

225:                                              ; preds = %135, %223
  br i1 %105, label %226, label %273

226:                                              ; preds = %225
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.6() #14
  br label %273

227:                                              ; preds = %223
  store ptr %10, ptr %221, align 8, !tbaa !64
  %228 = getelementptr inbounds nuw i8, ptr %221, i64 8
  store ptr %9, ptr %228, align 8, !tbaa !67
  %229 = getelementptr inbounds nuw i8, ptr %221, i64 16
  store i64 %1, ptr %229, align 8, !tbaa !68
  %230 = getelementptr inbounds nuw i8, ptr %221, i64 24
  %231 = getelementptr inbounds nuw i8, ptr %221, i64 28
  %232 = getelementptr inbounds nuw i8, ptr %221, i64 32
  %233 = getelementptr inbounds nuw i8, ptr %221, i64 36
  store i32 %84, ptr %233, align 4, !tbaa !17
  %234 = getelementptr inbounds nuw i8, ptr %221, i64 40
  %235 = getelementptr inbounds nuw i8, ptr %221, i64 48
  %236 = getelementptr inbounds nuw i8, ptr %221, i64 52
  store i32 0, ptr %236, align 4, !tbaa !17
  %237 = getelementptr inbounds nuw i8, ptr %221, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %237, ptr noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !69
  %238 = getelementptr inbounds nuw i8, ptr %221, i64 68
  store i32 0, ptr %238, align 4
  store i32 %219, ptr %230, align 8, !tbaa !70
  store i32 %195, ptr %231, align 4, !tbaa !71
  store double %16, ptr %234, align 8, !tbaa !72
  store i32 %29, ptr %232, align 8, !tbaa !73
  store i32 0, ptr %235, align 8, !tbaa !74
  %239 = load i32, ptr %101, align 8, !tbaa !32
  %240 = getelementptr inbounds nuw i8, ptr %221, i64 60
  store i32 %239, ptr %240, align 4, !tbaa !75
  %241 = load i32, ptr %102, align 4, !tbaa !38
  %242 = icmp eq i32 %219, 0
  %243 = or i1 %242, %216
  br i1 %243, label %253, label %244

244:                                              ; preds = %227
  switch i32 %195, label %253 [
    i32 8, label %245
    i32 6, label %245
  ]

245:                                              ; preds = %244, %244
  %246 = zext i32 %219 to i64
  %247 = icmp ult i64 %1, %246
  %248 = icmp ugt i32 %195, %219
  %249 = or i1 %247, %248
  %250 = add i32 %241, -32
  %251 = icmp ult i32 %250, -31
  %252 = or i1 %251, %249
  br i1 %252, label %253, label %256

253:                                              ; preds = %245, %244, %227
  br i1 %105, label %254, label %255

254:                                              ; preds = %253
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.5() #14
  br label %255

255:                                              ; preds = %254, %253
  call void @free(ptr noundef nonnull %221) #15
  br label %276

256:                                              ; preds = %245
  call void @COVER_best_start(ptr noundef nonnull %9) #15
  br i1 %103, label %258, label %257

257:                                              ; preds = %256
  call void @POOL_add(ptr noundef nonnull %83, ptr noundef nonnull @FASTCOVER_tryParameters, ptr noundef nonnull %221) #15
  br label %259

258:                                              ; preds = %256
  call void @FASTCOVER_tryParameters(ptr noundef nonnull %221)
  br label %259

259:                                              ; preds = %258, %257
  br i1 %90, label %260, label %270

260:                                              ; preds = %259
  %261 = call i64 @clock() #15
  %262 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %261, i64 %220), !nosanitize !55
  %263 = extractvalue { i64, i1 } %262, 1, !nosanitize !55
  br i1 %263, label %.loopexit, label %264, !prof !56, !nosanitize !55

264:                                              ; preds = %260
  %265 = extractvalue { i64, i1 } %262, 0, !nosanitize !55
  %266 = icmp sgt i64 %265, 150000
  %267 = select i1 %266, i1 true, i1 %104
  br i1 %267, label %268, label %270

268:                                              ; preds = %264
  call void @llvm.lifetime.start.p0(ptr %7)
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.4(i32 %218, i32 %39, ptr %7) #14
  %269 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr %7)
  br label %270

270:                                              ; preds = %268, %264, %259
  %271 = phi i64 [ %220, %259 ], [ %269, %268 ], [ %220, %264 ]
  %272 = add i32 %218, 1
  br label %276

273:                                              ; preds = %226, %225
  call void @COVER_best_destroy(ptr noundef nonnull %9) #15
  %274 = load ptr, ptr %106, align 8, !tbaa !28
  call void @free(ptr noundef %274) #15
  store ptr null, ptr %106, align 8, !tbaa !28
  %275 = load ptr, ptr %107, align 8, !tbaa !31
  call void @free(ptr noundef %275) #15
  store ptr null, ptr %107, align 8, !tbaa !31
  br label %281

276:                                              ; preds = %270, %255
  %277 = phi i64 [ %220, %255 ], [ %271, %270 ]
  %278 = phi i32 [ %218, %255 ], [ %272, %270 ]
  %279 = add i32 %219, %32
  %280 = icmp ugt i32 %279, %25
  br i1 %280, label %283, label %217, !llvm.loop !76

281:                                              ; preds = %273, %211
  %282 = phi i64 [ %.lcssa4, %211 ], [ -64, %273 ]
  call void @POOL_free(ptr noundef %83) #15
  call void @llvm.lifetime.end.p0(ptr %10)
  br label %310

283:                                              ; preds = %276
  %.lcssa3 = phi i64 [ %277, %276 ]
  %.lcssa = phi i32 [ %278, %276 ]
  call void @COVER_best_wait(ptr noundef nonnull %9) #15
  %284 = load ptr, ptr %106, align 8, !tbaa !28
  call void @free(ptr noundef %284) #15
  store ptr null, ptr %106, align 8, !tbaa !28
  %285 = load ptr, ptr %107, align 8, !tbaa !31
  call void @free(ptr noundef %285) #15
  call void @llvm.lifetime.end.p0(ptr %10)
  %286 = add i32 %195, 2
  %287 = icmp ugt i32 %286, %21
  br i1 %287, label %.loopexit2, label %193, !llvm.loop !77

.loopexit2:                                       ; preds = %188, %283
  br label %288

288:                                              ; preds = %.loopexit2, %92
  br i1 %90, label %289, label %290

289:                                              ; preds = %288
  call void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.7() #14
  br label %290

290:                                              ; preds = %289, %288
  %291 = getelementptr inbounds nuw i8, ptr %9, i64 80
  %292 = load i64, ptr %291, align 8, !tbaa !78
  %293 = icmp ult i64 %292, -119
  br i1 %293, label %295, label %294

294:                                              ; preds = %290
  call void @COVER_best_destroy(ptr noundef nonnull %9) #15
  call void @POOL_free(ptr noundef %83) #15
  br label %310

295:                                              ; preds = %290
  %296 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %297 = load i64, ptr %296, align 8, !tbaa !80
  %298 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %299 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %300 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %301 = load double, ptr %300, align 8
  %302 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %303 = load i32, ptr %302, align 8
  %304 = load <2 x i32>, ptr %298, align 8
  store <2 x i32> %304, ptr %5, align 8, !tbaa !17
  %305 = load <2 x i32>, ptr %299, align 8
  store <2 x i32> %305, ptr %26, align 4, !tbaa !17
  store double %301, ptr %13, align 8, !tbaa !59
  store i32 %43, ptr %40, align 8, !tbaa !12
  store i32 %46, ptr %44, align 8, !tbaa !13
  %306 = getelementptr inbounds nuw i8, ptr %5, i64 44
  %307 = getelementptr inbounds nuw i8, ptr %9, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %306, ptr noundef nonnull align 8 dereferenceable(12) %307, i64 12, i1 false)
  store i32 %303, ptr %85, align 4, !tbaa !81
  %308 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %309 = load ptr, ptr %308, align 8, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %309, i64 %297, i1 false)
  call void @COVER_best_destroy(ptr noundef nonnull %9) #15
  call void @POOL_free(ptr noundef %83) #15
  br label %310

310:                                              ; preds = %295, %294, %281, %78, %75, %73, %70, %68, %65, %63, %58, %56, %53, %51
  %311 = phi i64 [ -42, %53 ], [ -42, %51 ], [ -42, %58 ], [ -42, %56 ], [ -42, %65 ], [ -42, %63 ], [ -72, %70 ], [ -72, %68 ], [ -70, %75 ], [ -70, %73 ], [ -64, %78 ], [ %292, %294 ], [ %297, %295 ], [ %282, %281 ]
  call void @llvm.lifetime.end.p0(ptr %9)
  call void @llvm.lifetime.end.p0(ptr %8)
  ret i64 %311
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
  %5 = load ptr, ptr %0, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr %2)
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false), !tbaa.struct !83
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load i64, ptr %7, align 8, !tbaa !68
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 68
  %10 = load i32, ptr %9, align 4, !tbaa !38
  %11 = zext nneg i32 %10 to i64
  %12 = shl nuw i64 1, %11
  %13 = tail call noalias ptr @calloc(i64 noundef %12, i64 noundef 2) #16
  %14 = tail call noalias ptr @malloc(i64 noundef %8) #20
  call void @llvm.lifetime.start.p0(ptr %3)
  call void @COVER_dictSelectionError(ptr dead_on_unwind nonnull writable sret(%struct.COVER_dictSelection) align 8 %3, i64 noundef -1) #15
  %15 = load i32, ptr %9, align 4, !tbaa !38
  %16 = zext nneg i32 %15 to i64
  %17 = shl i64 4, %16
  %18 = call noalias ptr @malloc(i64 noundef %17) #20
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
  call void @FASTCOVER_tryParameters.cold.1() #14
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
  call void @llvm.lifetime.start.p0(ptr %4)
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
  call void @llvm.lifetime.end.p0(ptr %4)
  %53 = call i32 @COVER_dictSelectionIsError(ptr noundef nonnull byval(%struct.COVER_dictSelection) align 8 %3) #15
  %54 = icmp ne i32 %53, 0
  %55 = icmp sgt i32 %20, 0
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %61

57:                                               ; preds = %29
  call void @FASTCOVER_tryParameters.cold.2() #14
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
  call void @llvm.lifetime.end.p0(ptr %3)
  call void @llvm.lifetime.end.p0(ptr %2)
  ret void
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #10

declare void @COVER_best_wait(ptr noundef) local_unnamed_addr #4

declare i64 @COVER_sum(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @COVER_computeEpochs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #10

declare void @COVER_dictSelectionError(ptr dead_on_unwind writable sret(%struct.COVER_dictSelection) align 8, i64 noundef) local_unnamed_addr #4

declare void @COVER_selectDict(ptr dead_on_unwind writable sret(%struct.COVER_dictSelection) align 8, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @COVER_dictSelectionIsError(ptr noundef byval(%struct.COVER_dictSelection) align 8) local_unnamed_addr #4

declare void @COVER_best_finish(ptr noundef, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8, ptr noundef byval(%struct.COVER_dictSelection) align 8) local_unnamed_addr #4

declare void @COVER_dictSelectionFree(ptr noundef byval(%struct.COVER_dictSelection) align 8) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_fastCover.cold.1() #12 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 29, i64 1, ptr %2) #17
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_fastCover.cold.2() #12 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 20, i64 1, ptr %2) #17
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_fastCover.cold.3(i64 %0) #12 {
  br label %2

2:                                                ; preds = %1
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = trunc i64 %0 to i32
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %4) #19
  %6 = load ptr, ptr @stderr, align 8, !tbaa !44
  %7 = tail call i32 @fflush(ptr noundef %6)
  br label %8

8:                                                ; preds = %2
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_fastCover.cold.4() #12 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 256) #19
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_fastCover.cold.5() #12 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %2) #17
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_trainFromBuffer_fastCover.cold.6() #12 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 31, i64 1, ptr %2) #17
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_ctx_init.cold.1(i64 %0, i32 %1, i64 %2, i32 %3) #12 {
  br label %5

5:                                                ; preds = %4
  %6 = load ptr, ptr @stderr, align 8, !tbaa !44
  %7 = trunc i64 %0 to i32
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.19, i32 noundef %1, i32 noundef %7) #19
  %9 = load ptr, ptr @stderr, align 8, !tbaa !44
  %10 = tail call i32 @fflush(ptr noundef %9)
  %11 = load ptr, ptr @stderr, align 8, !tbaa !44
  %12 = trunc i64 %2 to i32
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.20, i32 noundef %3, i32 noundef %12) #19
  %14 = load ptr, ptr @stderr, align 8, !tbaa !44
  %15 = tail call i32 @fflush(ptr noundef %14)
  br label %16

16:                                               ; preds = %5
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_ctx_init.cold.2(ptr %0, ptr %1) #12 {
  br label %3

3:                                                ; preds = %2
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 36, i64 1, ptr %4) #17
  %6 = load ptr, ptr @stderr, align 8, !tbaa !44
  %7 = tail call i32 @fflush(ptr noundef %6)
  %8 = load ptr, ptr %0, align 8, !tbaa !28
  store ptr %8, ptr %1, align 8
  br label %9

9:                                                ; preds = %3
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_ctx_init.cold.3() #12 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 36, i64 1, ptr %2) #17
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_ctx_init.cold.4() #12 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 0) #19
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_ctx_init.cold.5(i32 %0) #12 {
  br label %2

2:                                                ; preds = %1
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %0) #19
  %5 = load ptr, ptr @stderr, align 8, !tbaa !44
  %6 = tail call i32 @fflush(ptr noundef %5)
  br label %7

7:                                                ; preds = %2
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_ctx_init.cold.6(i64 %0) #12 {
  br label %2

2:                                                ; preds = %1
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = lshr i64 %0, 20
  %5 = trunc i64 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %5, i32 noundef 4095) #19
  %7 = load ptr, ptr @stderr, align 8, !tbaa !44
  %8 = tail call i32 @fflush(ptr noundef %7)
  br label %9

9:                                                ; preds = %2
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_buildDictionary.cold.1(i64 %0, i32 %1) #12 {
  br label %3

3:                                                ; preds = %2
  %4 = trunc i64 %0 to i32
  %5 = load ptr, ptr @stderr, align 8, !tbaa !44
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.24, i32 noundef %4, i32 noundef %1) #19
  %7 = load ptr, ptr @stderr, align 8, !tbaa !44
  %8 = tail call i32 @fflush(ptr noundef %7)
  br label %9

9:                                                ; preds = %3
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_buildDictionary.cold.2(i64 %0, i64 %1, ptr %2) #12 {
  br label %4

4:                                                ; preds = %3
  %5 = tail call i64 @clock() #15
  store i64 %5, ptr %2, align 8
  %6 = load ptr, ptr @stderr, align 8, !tbaa !44
  %7 = sub i64 %0, %1
  %8 = mul i64 %7, 100
  %9 = udiv i64 %8, %0
  %10 = trunc i64 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.13, i32 noundef %10) #19
  %12 = load ptr, ptr @stderr, align 8, !tbaa !44
  %13 = tail call i32 @fflush(ptr noundef %12)
  br label %14

14:                                               ; preds = %4
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_buildDictionary.cold.3() #12 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #19
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.1(i32 %0) #12 {
  br label %2

2:                                                ; preds = %1
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %0) #19
  %5 = load ptr, ptr @stderr, align 8, !tbaa !44
  %6 = call i32 @fflush(ptr noundef %5)
  br label %7

7:                                                ; preds = %2
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.2() #12 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = call i64 @fwrite(ptr nonnull @.str.3, i64 29, i64 1, ptr %2) #17
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.3(i32 %0) #12 {
  br label %2

2:                                                ; preds = %1
  %3 = load ptr, ptr @stderr, align 8, !tbaa !44
  %4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef %0) #19
  %5 = load ptr, ptr @stderr, align 8, !tbaa !44
  %6 = call i32 @fflush(ptr noundef %5)
  br label %7

7:                                                ; preds = %2
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.4(i32 %0, i32 %1, ptr %2) #12 {
  br label %4

4:                                                ; preds = %3
  %5 = call i64 @clock() #15
  store i64 %5, ptr %2, align 8
  %6 = load ptr, ptr @stderr, align 8, !tbaa !44
  %7 = mul i32 %0, 100
  %8 = udiv i32 %7, %1
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.13, i32 noundef %8) #19
  %10 = load ptr, ptr @stderr, align 8, !tbaa !44
  %11 = call i32 @fflush(ptr noundef %10)
  br label %12

12:                                               ; preds = %4
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.5() #12 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = call i64 @fwrite(ptr nonnull @.str, i64 31, i64 1, ptr %2) #17
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.6() #12 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = call i64 @fwrite(ptr nonnull @.str.12, i64 30, i64 1, ptr %2) #17
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.7() #12 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #19
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.8() #12 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 256) #19
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.9() #12 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %2) #17
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.10() #12 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 12, i64 1, ptr %2) #17
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.11() #12 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 16, i64 1, ptr %2) #17
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @ZDICT_optimizeTrainFromBuffer_fastCover.cold.12() #12 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 21, i64 1, ptr %2) #17
  %4 = load ptr, ptr @stderr, align 8, !tbaa !44
  %5 = tail call i32 @fflush(ptr noundef %4)
  br label %6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_tryParameters.cold.1() #12 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = call i64 @fwrite(ptr nonnull @.str.25, i64 42, i64 1, ptr %2) #17
  br label %4

4:                                                ; preds = %1
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal void @FASTCOVER_tryParameters.cold.2() #12 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @stderr, align 8, !tbaa !44
  %3 = call i64 @fwrite(ptr nonnull @.str.26, i64 28, i64 1, ptr %2) #17
  br label %4

4:                                                ; preds = %1
  ret void
}

declare void @llvm.lifetime.start.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

declare void @llvm.lifetime.end.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nounwind }
attributes #12 = { cold minsize nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { noinline }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0,1) }
attributes #17 = { cold }
attributes #18 = { noreturn nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }

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
