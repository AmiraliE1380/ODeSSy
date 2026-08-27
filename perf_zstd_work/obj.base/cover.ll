; ModuleID = '/mydata/ODeSSy/perf_zstd_work/ll/cover.ll'
source_filename = "/mydata/zstd/lib/dictBuilder/cover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ZDICT_cover_params_t = type { i32, i32, i32, i32, double, i32, i32, %struct.ZDICT_params_t }
%struct.ZDICT_params_t = type { i32, i32, i32 }
%struct.COVER_ctx_t = type { ptr, ptr, ptr, i64, i64, i64, ptr, i64, ptr, ptr, i32, i32 }
%struct.COVER_map_s = type { ptr, i32, i32, i32 }
%struct.COVER_dictSelection = type { ptr, i64, i64 }
%struct.COVER_best_s = type { i32, i32, i64, ptr, i64, %struct.ZDICT_cover_params_t, i64 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [280 x i8] c"WARNING: The maximum dictionary size %u is too large compared to the source size %u! size(source)/size(dictionary) = %f, but it should be >= 10! This may lead to a subpar dictionary! We recommend training on sources at least 10x, and preferably 100x the size of the dictionary! \0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Cover parameters incorrect\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Cover must have at least one input file\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"dictBufferCapacity must be at least %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Failed to allocate dmer map: out of memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Building dictionary\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Constructed dictionary of size %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Incorrect parameters\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Trying %u different sets of parameters\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"d=%u\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Failed to initialize context\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"k=%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Failed to allocate parameters\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"\0D%u%%       \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"\0D%79s\0D\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [64 x i8] c"Total samples size is too large (%u MB), maximum size is %u MB\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"Total number of training samples is %u and is invalid.\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"Total number of testing samples is %u and is invalid.\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Training on %u samples of total size %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"Testing on %u samples of total size %u\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"Failed to allocate scratch buffers\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"Constructing partial suffix array\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Computing frequencies\0A\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"Breaking content into %u epochs of size %u\0A\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"Failed to allocate buffers: out of memory\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"Failed to select dictionary\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @COVER_sum(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %.loopexit, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = icmp ult i32 %1, 4
  br i1 %6, label %.preheader, label %7

7:                                                ; preds = %4
  %8 = and i64 %5, 4294967292
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i64 [ 0, %7 ], [ %19, %9 ]
  %11 = phi <2 x i64> [ zeroinitializer, %7 ], [ %17, %9 ]
  %12 = phi <2 x i64> [ zeroinitializer, %7 ], [ %18, %9 ]
  %13 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %10
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %15 = load <2 x i64>, ptr %13, align 8, !tbaa !5
  %16 = load <2 x i64>, ptr %14, align 8, !tbaa !5
  %17 = add <2 x i64> %15, %11
  %18 = add <2 x i64> %16, %12
  %19 = add nuw nsw i64 %10, 4
  %20 = icmp eq i64 %19, %8
  br i1 %20, label %21, label %9, !llvm.loop !9

21:                                               ; preds = %9
  %22 = add <2 x i64> %18, %17
  %23 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %22)
  %24 = icmp eq i64 %8, %5
  br i1 %24, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %21, %4
  %.ph = phi i64 [ %8, %21 ], [ 0, %4 ]
  %.ph11 = phi i64 [ %23, %21 ], [ 0, %4 ]
  br label %25

25:                                               ; preds = %.preheader, %25
  %26 = phi i64 [ %31, %25 ], [ %.ph, %.preheader ]
  %27 = phi i64 [ %30, %25 ], [ %.ph11, %.preheader ]
  %28 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !5
  %30 = add i64 %29, %27
  %31 = add nuw nsw i64 %26, 1
  %32 = icmp eq i64 %31, %5
  br i1 %32, label %.loopexit, label %25, !llvm.loop !13

.loopexit:                                        ; preds = %25, %21, %2
  %33 = phi i64 [ 0, %2 ], [ %23, %21 ], [ %30, %25 ]
  ret i64 %33
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @COVER_warnOnSmallCorpus(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = uitofp i64 %1 to double
  %5 = uitofp i64 %0 to double
  %6 = fdiv double %4, %5
  %7 = fcmp ult double %6, 1.000000e+01
  %8 = icmp sgt i32 %2, 0
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load ptr, ptr @stderr, align 8, !tbaa !14
  %12 = trunc i64 %0 to i32
  %13 = trunc i64 %1 to i32
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef %12, i32 noundef %13, double noundef %6) #26
  %15 = load ptr, ptr @stderr, align 8, !tbaa !14
  %16 = tail call i32 @fflush(ptr noundef %15)
  br label %17

17:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @COVER_computeEpochs(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = mul i32 %2, 10
  %6 = udiv i32 %0, %2
  %7 = icmp ugt i32 %3, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = udiv i32 %6, %3
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ 1, %4 ]
  %12 = udiv i32 %1, %11
  %13 = icmp ult i32 %12, %5
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = tail call i32 @llvm.umin.i32(i32 %5, i32 %1)
  %16 = udiv i32 %1, %15
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i32 [ %16, %14 ], [ %11, %10 ]
  %19 = phi i32 [ %15, %14 ], [ %12, %10 ]
  %20 = zext i32 %19 to i64
  %21 = shl nuw i64 %20, 32
  %22 = zext i32 %18 to i64
  %23 = or disjoint i64 %21, %22
  ret i64 %23
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_trainFromBuffer_cover(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8 captures(none) initializes((16, 24)) %5) local_unnamed_addr #4 {
  %7 = alloca %struct.COVER_ctx_t, align 8
  %8 = alloca %struct.COVER_map_s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 36
  %11 = load i32, ptr %10, align 4, !tbaa !17
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double 1.000000e+00, ptr %12, align 8, !tbaa !22
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %14 = load i32, ptr %13, align 4, !tbaa !23
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr %5, align 8
  %17 = icmp eq i32 %16, 0
  %18 = zext i32 %16 to i64
  %19 = icmp ult i64 %1, %18
  %20 = or i1 %17, %19
  %21 = icmp ugt i32 %14, %16
  %22 = or i1 %21, %20
  %23 = select i1 %15, i1 true, i1 %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = icmp sgt i32 %11, 0
  br i1 %25, label %26, label %125

26:                                               ; preds = %24
  tail call fastcc void @ZDICT_trainFromBuffer_cover.cold.6() #27
  br label %125

27:                                               ; preds = %6
  %28 = icmp eq i32 %4, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = icmp sgt i32 %11, 0
  br i1 %30, label %31, label %125

31:                                               ; preds = %29
  tail call fastcc void @ZDICT_trainFromBuffer_cover.cold.5() #27
  br label %125

32:                                               ; preds = %27
  %33 = icmp ult i64 %1, 256
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = icmp sgt i32 %11, 0
  br i1 %35, label %36, label %125

36:                                               ; preds = %34
  tail call fastcc void @ZDICT_trainFromBuffer_cover.cold.4() #27
  br label %125

37:                                               ; preds = %32
  %38 = call fastcc i64 @COVER_ctx_init(ptr noundef %7, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %14, double noundef 1.000000e+00, i32 noundef %11)
  %39 = icmp ult i64 %38, -119
  br i1 %39, label %40, label %125

40:                                               ; preds = %37
  %41 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %42 = load i64, ptr %41, align 8, !tbaa !24
  %43 = uitofp i64 %42 to double
  %44 = uitofp i64 %1 to double
  %45 = fdiv double %43, %44
  %46 = fcmp ult double %45, 1.000000e+01
  %47 = icmp sgt i32 %11, 0
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %56

49:                                               ; preds = %40
  %50 = load ptr, ptr @stderr, align 8, !tbaa !14
  %51 = trunc i64 %1 to i32
  %52 = trunc i64 %42 to i32
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str, i32 noundef %51, i32 noundef %52, double noundef %45) #26
  %54 = load ptr, ptr @stderr, align 8, !tbaa !14
  %55 = call i32 @fflush(ptr noundef %54)
  br label %56

56:                                               ; preds = %49, %40
  %reass.sub = sub i32 %16, %14
  %57 = add i32 %reass.sub, 1
  %58 = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %57, i1 true)
  %59 = xor i32 %58, 31
  %60 = sub nuw nsw i32 33, %58
  %61 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %60, ptr %61, align 8, !tbaa !29
  %62 = shl nuw i32 4, %59
  %63 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %62, ptr %63, align 4, !tbaa !32
  %64 = add i32 %62, -1
  %65 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %64, ptr %65, align 8, !tbaa !33
  %66 = zext i32 %62 to i64
  %67 = shl nuw nsw i64 %66, 3
  %68 = call noalias ptr @malloc(i64 noundef %67) #28
  store ptr %68, ptr %8, align 8, !tbaa !34
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %92

70:                                               ; preds = %56
  br i1 %47, label %71, label %72

71:                                               ; preds = %70
  call fastcc void @ZDICT_trainFromBuffer_cover.cold.3() #27
  br label %72

72:                                               ; preds = %71, %70
  %73 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %74 = load ptr, ptr %73, align 8, !tbaa !35
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  call void @free(ptr noundef nonnull %74) #29
  store ptr null, ptr %73, align 8, !tbaa !35
  br label %77

77:                                               ; preds = %76, %72
  %78 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %79 = load ptr, ptr %78, align 8, !tbaa !36
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  call void @free(ptr noundef nonnull %79) #29
  store ptr null, ptr %78, align 8, !tbaa !36
  br label %82

82:                                               ; preds = %81, %77
  %83 = getelementptr inbounds nuw i8, ptr %7, i64 72
  %84 = load ptr, ptr %83, align 8, !tbaa !37
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  call void @free(ptr noundef nonnull %84) #29
  store ptr null, ptr %83, align 8, !tbaa !37
  br label %87

87:                                               ; preds = %86, %82
  %88 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %89 = load ptr, ptr %88, align 8, !tbaa !38
  %90 = icmp eq ptr %89, null
  br i1 %90, label %125, label %91

91:                                               ; preds = %87
  call void @free(ptr noundef nonnull %89) #29
  br label %125

92:                                               ; preds = %56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %68, i8 -1, i64 %67, i1 false)
  %93 = icmp sgt i32 %11, 1
  br i1 %93, label %94, label %95

94:                                               ; preds = %92
  call fastcc void @ZDICT_trainFromBuffer_cover.cold.1() #27
  br label %95

95:                                               ; preds = %94, %92
  %96 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %97 = load ptr, ptr %96, align 8, !tbaa !36
  %98 = call fastcc i64 @COVER_buildDictionary(ptr noundef nonnull %7, ptr noundef %97, ptr noundef %8, ptr noundef %0, i64 noundef %1, i32 %16, i32 %14)
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 %98
  %100 = sub i64 %1, %98
  %101 = call i64 @ZDICT_finalizeDictionary(ptr noundef %0, i64 noundef %1, ptr noundef %99, i64 noundef %100, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %9) #29
  %102 = icmp ult i64 %101, -119
  %103 = and i1 %93, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  call fastcc void @ZDICT_trainFromBuffer_cover.cold.2(i64 %101) #27
  br label %105

105:                                              ; preds = %104, %95
  %106 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %107 = load ptr, ptr %106, align 8, !tbaa !35
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  call void @free(ptr noundef nonnull %107) #29
  store ptr null, ptr %106, align 8, !tbaa !35
  br label %110

110:                                              ; preds = %109, %105
  %111 = load ptr, ptr %96, align 8, !tbaa !36
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  call void @free(ptr noundef nonnull %111) #29
  store ptr null, ptr %96, align 8, !tbaa !36
  br label %114

114:                                              ; preds = %113, %110
  %115 = getelementptr inbounds nuw i8, ptr %7, i64 72
  %116 = load ptr, ptr %115, align 8, !tbaa !37
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  call void @free(ptr noundef nonnull %116) #29
  store ptr null, ptr %115, align 8, !tbaa !37
  br label %119

119:                                              ; preds = %118, %114
  %120 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %121 = load ptr, ptr %120, align 8, !tbaa !38
  %122 = icmp eq ptr %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  call void @free(ptr noundef nonnull %121) #29
  br label %124

124:                                              ; preds = %123, %119
  call void @free(ptr noundef nonnull %68) #29
  br label %125

125:                                              ; preds = %124, %91, %87, %37, %36, %34, %31, %29, %26, %24
  %126 = phi i64 [ %101, %124 ], [ %38, %37 ], [ -42, %26 ], [ -42, %24 ], [ -72, %31 ], [ -72, %29 ], [ -70, %36 ], [ -70, %34 ], [ -64, %87 ], [ -64, %91 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret i64 %126
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -72, 1) i64 @COVER_ctx_init(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, double noundef %5, i32 noundef %6) unnamed_addr #4 {
  %8 = alloca ptr, align 8
  %9 = zext i32 %3 to i64
  %10 = icmp ult i32 %3, 4
  br i1 %10, label %.preheader149, label %11

11:                                               ; preds = %7
  %12 = and i64 %9, 4294967292
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %23, %13 ]
  %15 = phi <2 x i64> [ zeroinitializer, %11 ], [ %21, %13 ]
  %16 = phi <2 x i64> [ zeroinitializer, %11 ], [ %22, %13 ]
  %17 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %14
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %19 = load <2 x i64>, ptr %17, align 8, !tbaa !5
  %20 = load <2 x i64>, ptr %18, align 8, !tbaa !5
  %21 = add <2 x i64> %19, %15
  %22 = add <2 x i64> %20, %16
  %23 = add nuw nsw i64 %14, 4
  %24 = icmp eq i64 %23, %12
  br i1 %24, label %25, label %13, !llvm.loop !39

25:                                               ; preds = %13
  %26 = add <2 x i64> %22, %21
  %27 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %26)
  %28 = icmp eq i64 %12, %9
  br i1 %28, label %.loopexit31, label %.preheader149

.preheader149:                                    ; preds = %25, %7
  %.ph150 = phi i64 [ %12, %25 ], [ 0, %7 ]
  %.ph151 = phi i64 [ %27, %25 ], [ 0, %7 ]
  br label %29

29:                                               ; preds = %.preheader149, %29
  %30 = phi i64 [ %35, %29 ], [ %.ph150, %.preheader149 ]
  %31 = phi i64 [ %34, %29 ], [ %.ph151, %.preheader149 ]
  %32 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %30
  %33 = load i64, ptr %32, align 8, !tbaa !5
  %34 = add i64 %33, %31
  %35 = add nuw nsw i64 %30, 1
  %36 = icmp eq i64 %35, %9
  br i1 %36, label %.loopexit31, label %29, !llvm.loop !40

.loopexit31:                                      ; preds = %29, %25
  %37 = phi i64 [ %27, %25 ], [ %34, %29 ]
  %38 = fcmp olt double %5, 1.000000e+00
  %39 = uitofp i32 %3 to double
  %40 = fmul double %5, %39
  %41 = fptoui double %40 to i32
  %42 = select i1 %38, i32 %41, i32 0
  %43 = select i1 %38, i32 %41, i32 %3
  %44 = sub i32 %3, %42
  br i1 %38, label %45, label %.loopexit29

45:                                               ; preds = %.loopexit31
  %46 = icmp eq i32 %41, 0
  br i1 %46, label %.loopexit30, label %47

47:                                               ; preds = %45
  %48 = zext i32 %41 to i64
  %49 = icmp ult i32 %41, 4
  br i1 %49, label %.preheader143, label %50

50:                                               ; preds = %47
  %51 = and i64 %48, 4294967292
  br label %52

52:                                               ; preds = %52, %50
  %53 = phi i64 [ 0, %50 ], [ %62, %52 ]
  %54 = phi <2 x i64> [ zeroinitializer, %50 ], [ %60, %52 ]
  %55 = phi <2 x i64> [ zeroinitializer, %50 ], [ %61, %52 ]
  %56 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %53
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 16
  %58 = load <2 x i64>, ptr %56, align 8, !tbaa !5
  %59 = load <2 x i64>, ptr %57, align 8, !tbaa !5
  %60 = add <2 x i64> %58, %54
  %61 = add <2 x i64> %59, %55
  %62 = add nuw nsw i64 %53, 4
  %63 = icmp eq i64 %62, %51
  br i1 %63, label %64, label %52, !llvm.loop !41

64:                                               ; preds = %52
  %65 = add <2 x i64> %61, %60
  %66 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %65)
  %67 = icmp eq i64 %51, %48
  br i1 %67, label %.loopexit30, label %.preheader143

.preheader143:                                    ; preds = %64, %47
  %.ph144 = phi i64 [ %51, %64 ], [ 0, %47 ]
  %.ph145 = phi i64 [ %66, %64 ], [ 0, %47 ]
  br label %68

68:                                               ; preds = %.preheader143, %68
  %69 = phi i64 [ %74, %68 ], [ %.ph144, %.preheader143 ]
  %70 = phi i64 [ %73, %68 ], [ %.ph145, %.preheader143 ]
  %71 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %69
  %72 = load i64, ptr %71, align 8, !tbaa !5
  %73 = add i64 %72, %70
  %74 = add nuw nsw i64 %69, 1
  %75 = icmp eq i64 %74, %48
  br i1 %75, label %.loopexit30, label %68, !llvm.loop !42

.loopexit30:                                      ; preds = %68, %64, %45
  %76 = phi i64 [ 0, %45 ], [ %48, %64 ], [ %48, %68 ]
  %77 = phi i64 [ 0, %45 ], [ %66, %64 ], [ %73, %68 ]
  %78 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %76
  %79 = icmp eq i32 %3, %41
  br i1 %79, label %.loopexit29, label %80

80:                                               ; preds = %.loopexit30
  %81 = zext i32 %44 to i64
  %82 = icmp ult i32 %44, 4
  br i1 %82, label %.preheader137, label %83

83:                                               ; preds = %80
  %84 = and i64 %81, 4294967292
  br label %85

85:                                               ; preds = %85, %83
  %86 = phi i64 [ 0, %83 ], [ %95, %85 ]
  %87 = phi <2 x i64> [ zeroinitializer, %83 ], [ %93, %85 ]
  %88 = phi <2 x i64> [ zeroinitializer, %83 ], [ %94, %85 ]
  %89 = getelementptr inbounds nuw [8 x i8], ptr %78, i64 %86
  %90 = getelementptr inbounds nuw i8, ptr %89, i64 16
  %91 = load <2 x i64>, ptr %89, align 8, !tbaa !5
  %92 = load <2 x i64>, ptr %90, align 8, !tbaa !5
  %93 = add <2 x i64> %91, %87
  %94 = add <2 x i64> %92, %88
  %95 = add nuw i64 %86, 4
  %96 = icmp eq i64 %95, %84
  br i1 %96, label %97, label %85, !llvm.loop !43

97:                                               ; preds = %85
  %98 = add <2 x i64> %94, %93
  %99 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %98)
  %100 = icmp eq i64 %84, %81
  br i1 %100, label %.loopexit29, label %.preheader137

.preheader137:                                    ; preds = %97, %80
  %.ph138 = phi i64 [ %84, %97 ], [ 0, %80 ]
  %.ph139 = phi i64 [ %99, %97 ], [ 0, %80 ]
  br label %101

101:                                              ; preds = %.preheader137, %101
  %102 = phi i64 [ %107, %101 ], [ %.ph138, %.preheader137 ]
  %103 = phi i64 [ %106, %101 ], [ %.ph139, %.preheader137 ]
  %104 = getelementptr inbounds nuw [8 x i8], ptr %78, i64 %102
  %105 = load i64, ptr %104, align 8, !tbaa !5
  %106 = add i64 %105, %103
  %107 = add nuw nsw i64 %102, 1
  %108 = icmp eq i64 %107, %81
  br i1 %108, label %.loopexit29, label %101, !llvm.loop !44

.loopexit29:                                      ; preds = %101, %97, %.loopexit30, %.loopexit31
  %109 = phi i64 [ %37, %.loopexit31 ], [ %77, %.loopexit30 ], [ %77, %97 ], [ %77, %101 ]
  %110 = phi i64 [ %37, %.loopexit31 ], [ 0, %.loopexit30 ], [ %99, %97 ], [ %106, %101 ]
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %6, ptr %111, align 4, !tbaa !45
  %112 = tail call i32 @llvm.umax.i32(i32 %4, i32 8)
  %113 = zext i32 %112 to i64
  %114 = icmp ult i64 %37, %113
  %115 = icmp ugt i64 %37, 4294967294
  %116 = or i1 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %.loopexit29
  %118 = icmp sgt i32 %6, 0
  br i1 %118, label %119, label %356

119:                                              ; preds = %117
  tail call fastcc void @COVER_ctx_init.cold.6(i64 %37) #27
  br label %356

120:                                              ; preds = %.loopexit29
  %121 = icmp ult i32 %43, 5
  br i1 %121, label %122, label %125

122:                                              ; preds = %120
  %123 = icmp sgt i32 %6, 0
  br i1 %123, label %124, label %356

124:                                              ; preds = %122
  tail call fastcc void @COVER_ctx_init.cold.5(i32 %43) #27
  br label %356

125:                                              ; preds = %120
  %126 = icmp eq i32 %3, %42
  br i1 %126, label %127, label %130

127:                                              ; preds = %125
  %128 = icmp sgt i32 %6, 0
  br i1 %128, label %129, label %356

129:                                              ; preds = %127
  tail call fastcc void @COVER_ctx_init.cold.4() #27
  br label %356

130:                                              ; preds = %125
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  %131 = icmp sgt i32 %6, 1
  br i1 %131, label %132, label %133

132:                                              ; preds = %130
  tail call fastcc void @COVER_ctx_init.cold.1(i64 %109, i32 %43, i64 %110, i32 %44) #27
  br label %133

133:                                              ; preds = %132, %130
  store ptr %1, ptr %0, align 8, !tbaa !46
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %134, align 8, !tbaa !47
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %9, ptr %135, align 8, !tbaa !48
  %136 = zext i32 %43 to i64
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %136, ptr %137, align 8, !tbaa !49
  %138 = zext i32 %44 to i64
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %138, ptr %139, align 8, !tbaa !50
  %140 = sub i64 %109, %113
  %141 = add i64 %140, 1
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %141, ptr %142, align 8, !tbaa !24
  %143 = shl i64 %141, 2
  %144 = tail call noalias ptr @malloc(i64 noundef %143) #28
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %144, ptr %145, align 8, !tbaa !35
  %146 = tail call noalias ptr @malloc(i64 noundef %143) #28
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %146, ptr %147, align 8, !tbaa !37
  %148 = add i32 %3, 1
  %149 = zext i32 %148 to i64
  %150 = shl nuw nsw i64 %149, 3
  %151 = tail call noalias ptr @malloc(i64 noundef %150) #28
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %151, ptr %152, align 8, !tbaa !38
  %153 = icmp eq ptr %144, null
  br i1 %153, label %158, label %154

154:                                              ; preds = %133
  %155 = icmp eq ptr %146, null
  %156 = icmp eq ptr %151, null
  %157 = or i1 %155, %156
  br i1 %157, label %158, label %179

158:                                              ; preds = %154, %133
  %159 = icmp sgt i32 %6, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %158
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call fastcc void @COVER_ctx_init.cold.3(ptr %145, ptr %8) #27
  %161 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi ptr [ %161, %160 ], [ %144, %158 ]
  %164 = icmp eq ptr %163, null
  br i1 %164, label %166, label %165

165:                                              ; preds = %162
  tail call void @free(ptr noundef nonnull %163) #29
  store ptr null, ptr %145, align 8, !tbaa !35
  br label %166

166:                                              ; preds = %165, %162
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %168 = load ptr, ptr %167, align 8, !tbaa !36
  %169 = icmp eq ptr %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %166
  tail call void @free(ptr noundef nonnull %168) #29
  store ptr null, ptr %167, align 8, !tbaa !36
  br label %171

171:                                              ; preds = %170, %166
  %172 = load ptr, ptr %147, align 8, !tbaa !37
  %173 = icmp eq ptr %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %171
  tail call void @free(ptr noundef nonnull %172) #29
  store ptr null, ptr %147, align 8, !tbaa !37
  br label %175

175:                                              ; preds = %174, %171
  %176 = load ptr, ptr %152, align 8, !tbaa !38
  %177 = icmp eq ptr %176, null
  br i1 %177, label %356, label %178

178:                                              ; preds = %175
  tail call void @free(ptr noundef nonnull %176) #29
  store ptr null, ptr %152, align 8, !tbaa !38
  br label %356

179:                                              ; preds = %154
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %180, align 8, !tbaa !36
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %4, ptr %181, align 8, !tbaa !51
  store i64 0, ptr %151, align 8, !tbaa !5
  %182 = tail call i32 @llvm.umax.i32(i32 %148, i32 2)
  %183 = zext i32 %182 to i64
  %184 = getelementptr i8, ptr %2, i64 -8
  %185 = add nsw i64 %183, -1
  %186 = and i64 %185, 3
  %187 = icmp ult i32 %148, 5
  br i1 %187, label %.loopexit28, label %188

188:                                              ; preds = %179
  %189 = and i64 %185, -4
  %190 = getelementptr inbounds nuw i8, ptr %151, i64 8
  br label %191

191:                                              ; preds = %191, %188
  %192 = phi i64 [ 0, %188 ], [ %211, %191 ]
  %193 = phi i64 [ 1, %188 ], [ %213, %191 ]
  %194 = phi i64 [ 0, %188 ], [ %214, %191 ]
  %195 = getelementptr [8 x i8], ptr %184, i64 %193
  %196 = load i64, ptr %195, align 8, !tbaa !5
  %197 = add i64 %196, %192
  %198 = getelementptr inbounds nuw [8 x i8], ptr %151, i64 %193
  store i64 %197, ptr %198, align 8, !tbaa !5
  %199 = getelementptr [8 x i8], ptr %2, i64 %193
  %200 = load i64, ptr %199, align 8, !tbaa !5
  %201 = add i64 %200, %197
  %202 = getelementptr inbounds nuw [8 x i8], ptr %190, i64 %193
  store i64 %201, ptr %202, align 8, !tbaa !5
  %203 = add nuw nsw i64 %193, 2
  %204 = getelementptr [8 x i8], ptr %184, i64 %203
  %205 = load i64, ptr %204, align 8, !tbaa !5
  %206 = add i64 %205, %201
  %207 = getelementptr inbounds nuw [8 x i8], ptr %151, i64 %203
  store i64 %206, ptr %207, align 8, !tbaa !5
  %208 = add nuw nsw i64 %193, 3
  %209 = getelementptr [8 x i8], ptr %184, i64 %208
  %210 = load i64, ptr %209, align 8, !tbaa !5
  %211 = add i64 %210, %206
  %212 = getelementptr inbounds nuw [8 x i8], ptr %151, i64 %208
  store i64 %211, ptr %212, align 8, !tbaa !5
  %213 = add nuw nsw i64 %193, 4
  %214 = add nuw nsw i64 %194, 4
  %215 = icmp eq i64 %214, %189
  br i1 %215, label %.loopexit28, label %191, !llvm.loop !52

.loopexit28:                                      ; preds = %191, %179
  %216 = phi i64 [ 0, %179 ], [ %211, %191 ]
  %217 = phi i64 [ 1, %179 ], [ %213, %191 ]
  %218 = icmp eq i64 %186, 0
  br i1 %218, label %.loopexit27, label %.preheader26

.preheader26:                                     ; preds = %.loopexit28, %.preheader26
  %219 = phi i64 [ %224, %.preheader26 ], [ %216, %.loopexit28 ]
  %220 = phi i64 [ %226, %.preheader26 ], [ %217, %.loopexit28 ]
  %221 = phi i64 [ %227, %.preheader26 ], [ 0, %.loopexit28 ]
  %222 = getelementptr [8 x i8], ptr %184, i64 %220
  %223 = load i64, ptr %222, align 8, !tbaa !5
  %224 = add i64 %223, %219
  %225 = getelementptr inbounds nuw [8 x i8], ptr %151, i64 %220
  store i64 %224, ptr %225, align 8, !tbaa !5
  %226 = add nuw nsw i64 %220, 1
  %227 = add nuw nsw i64 %221, 1
  %228 = icmp eq i64 %227, %186
  br i1 %228, label %.loopexit27, label %.preheader26, !llvm.loop !53

.loopexit27:                                      ; preds = %.preheader26, %.loopexit28
  br i1 %131, label %229, label %236

229:                                              ; preds = %.loopexit27
  %230 = load ptr, ptr @stderr, align 8, !tbaa !14
  %231 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 34, i64 1, ptr %230) #30
  %232 = load ptr, ptr @stderr, align 8, !tbaa !14
  %233 = tail call i32 @fflush(ptr noundef %232)
  %234 = load i64, ptr %142, align 8, !tbaa !24
  %235 = load ptr, ptr %145, align 8, !tbaa !35
  br label %236

236:                                              ; preds = %229, %.loopexit27
  %237 = phi ptr [ %235, %229 ], [ %144, %.loopexit27 ]
  %238 = phi i64 [ %234, %229 ], [ %141, %.loopexit27 ]
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %.loopexit25, label %240

240:                                              ; preds = %236
  %241 = icmp ult i64 %238, 20
  br i1 %241, label %.preheader133, label %242

242:                                              ; preds = %240
  %243 = add i64 %238, -1
  %244 = and i64 %243, 4294967295
  %245 = icmp eq i64 %244, 4294967295
  %246 = icmp ugt i64 %243, 4294967295
  %247 = or i1 %246, %245
  br i1 %247, label %.preheader133, label %248

248:                                              ; preds = %242
  %249 = and i64 %238, 8589934584
  br label %250

250:                                              ; preds = %250, %248
  %251 = phi i64 [ 0, %248 ], [ %256, %250 ]
  %252 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %248 ], [ %257, %250 ]
  %253 = add <4 x i32> %252, splat (i32 4)
  %254 = getelementptr inbounds nuw [4 x i8], ptr %237, i64 %251
  %255 = getelementptr inbounds nuw i8, ptr %254, i64 16
  store <4 x i32> %252, ptr %254, align 4, !tbaa !55
  store <4 x i32> %253, ptr %255, align 4, !tbaa !55
  %256 = add nuw nsw i64 %251, 8
  %257 = add <4 x i32> %252, splat (i32 8)
  %258 = icmp eq i64 %256, %249
  br i1 %258, label %259, label %250, !llvm.loop !56

259:                                              ; preds = %250
  %260 = trunc i64 %249 to i32
  %261 = icmp eq i64 %238, %249
  br i1 %261, label %.loopexit25, label %.preheader133

.preheader133:                                    ; preds = %259, %242, %240
  %.ph = phi i64 [ %249, %259 ], [ 0, %240 ], [ 0, %242 ]
  %.ph134 = phi i32 [ %260, %259 ], [ 0, %240 ], [ 0, %242 ]
  br label %262

262:                                              ; preds = %.preheader133, %262
  %263 = phi i64 [ %267, %262 ], [ %.ph, %.preheader133 ]
  %264 = phi i32 [ %266, %262 ], [ %.ph134, %.preheader133 ]
  %265 = getelementptr inbounds nuw [4 x i8], ptr %237, i64 %263
  store i32 %264, ptr %265, align 4, !tbaa !55
  %266 = add i32 %264, 1
  %267 = zext i32 %266 to i64
  %268 = icmp ugt i64 %238, %267
  br i1 %268, label %262, label %.loopexit25, !llvm.loop !57

.loopexit25:                                      ; preds = %262, %259, %236
  %269 = load i32, ptr %181, align 8, !tbaa !51
  %270 = icmp ult i32 %269, 9
  %271 = select i1 %270, ptr @COVER_strict_cmp8, ptr @COVER_strict_cmp
  tail call void @qsort_r(ptr noundef %237, i64 noundef %238, i64 noundef 4, ptr noundef nonnull %271, ptr noundef nonnull %0) #29
  br i1 %131, label %272, label %273

272:                                              ; preds = %.loopexit25
  tail call fastcc void @COVER_ctx_init.cold.2() #27
  br label %273

273:                                              ; preds = %272, %.loopexit25
  %274 = load ptr, ptr %145, align 8, !tbaa !35
  %275 = load i64, ptr %142, align 8, !tbaa !24
  %276 = load i32, ptr %181, align 8, !tbaa !51
  %277 = icmp ult i32 %276, 9
  %278 = select i1 %277, ptr @COVER_cmp8, ptr @COVER_cmp
  %279 = icmp eq i64 %275, 0
  br i1 %279, label %.loopexit24, label %.preheader

.preheader:                                       ; preds = %273, %351
  %280 = phi i64 [ %296, %351 ], [ 0, %273 ]
  %281 = phi ptr [ %.lcssa, %351 ], [ %274, %273 ]
  %282 = add nuw i64 %280, 1
  %283 = tail call i64 @llvm.umax.i64(i64 %275, i64 %282)
  %284 = add i64 %283, -1
  %285 = getelementptr inbounds nuw i8, ptr %281, i64 4
  %286 = icmp eq i64 %280, %284
  br i1 %286, label %._crit_edge119, label %.lr.ph

287:                                              ; preds = %.lr.ph
  %288 = getelementptr inbounds nuw i8, ptr %290, i64 4
  %289 = icmp eq i64 %293, %284
  br i1 %289, label %._crit_edge119, label %.lr.ph, !llvm.loop !58

.lr.ph:                                           ; preds = %.preheader, %287
  %290 = phi ptr [ %288, %287 ], [ %285, %.preheader ]
  %291 = phi ptr [ %290, %287 ], [ %281, %.preheader ]
  %292 = phi i64 [ %293, %287 ], [ %280, %.preheader ]
  %293 = add i64 %292, 1
  %294 = tail call i32 %278(ptr noundef nonnull %0, ptr noundef %281, ptr noundef nonnull %290) #29, !callees !59
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %287, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph
  br label %._crit_edge119, !llvm.loop !58

._crit_edge119:                                   ; preds = %287, %._crit_edge, %.preheader
  %.lcssa102 = phi ptr [ %291, %._crit_edge ], [ %281, %.preheader ], [ %290, %287 ]
  %.lcssa = phi ptr [ %290, %._crit_edge ], [ %285, %.preheader ], [ %288, %287 ]
  %296 = phi i64 [ %293, %._crit_edge ], [ %283, %.preheader ], [ %283, %287 ]
  %297 = load ptr, ptr %145, align 8, !tbaa !35
  %298 = ptrtoint ptr %281 to i64
  %299 = ptrtoint ptr %297 to i64
  %300 = sub i64 %298, %299
  %301 = lshr exact i64 %300, 2
  %302 = trunc i64 %301 to i32
  %303 = load ptr, ptr %152, align 8, !tbaa !38
  %304 = load i64, ptr %135, align 8, !tbaa !48
  %305 = getelementptr inbounds nuw [8 x i8], ptr %303, i64 %304
  %306 = load i64, ptr %303, align 8, !tbaa !5
  %307 = load ptr, ptr %147, align 8, !tbaa !37
  %308 = ptrtoint ptr %305 to i64
  br label %309

309:                                              ; preds = %345, %._crit_edge119
  %310 = phi ptr [ %281, %._crit_edge119 ], [ %349, %345 ]
  %311 = phi i64 [ %306, %._crit_edge119 ], [ %348, %345 ]
  %312 = phi i32 [ 0, %._crit_edge119 ], [ %347, %345 ]
  %313 = phi ptr [ %303, %._crit_edge119 ], [ %346, %345 ]
  %314 = load i32, ptr %310, align 4, !tbaa !55
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds nuw [4 x i8], ptr %307, i64 %315
  store i32 %302, ptr %316, align 4, !tbaa !55
  %317 = load i32, ptr %310, align 4, !tbaa !55
  %318 = zext i32 %317 to i64
  %319 = icmp ugt i64 %311, %318
  br i1 %319, label %345, label %320

320:                                              ; preds = %309
  %321 = add i32 %312, 1
  %322 = icmp eq ptr %310, %.lcssa102
  br i1 %322, label %345, label %323

323:                                              ; preds = %320
  %324 = icmp eq ptr %305, %313
  br i1 %324, label %.loopexit, label %325

325:                                              ; preds = %323
  %326 = ptrtoint ptr %313 to i64
  %327 = sub i64 %308, %326
  %328 = ashr exact i64 %327, 3
  br label %329

329:                                              ; preds = %329, %325
  %330 = phi ptr [ %340, %329 ], [ %313, %325 ]
  %331 = phi i64 [ %339, %329 ], [ %328, %325 ]
  %332 = lshr i64 %331, 1
  %333 = getelementptr inbounds nuw [8 x i8], ptr %330, i64 %332
  %334 = load i64, ptr %333, align 8, !tbaa !5
  %335 = icmp ult i64 %334, %318
  %336 = getelementptr inbounds nuw i8, ptr %333, i64 8
  %337 = xor i64 %332, -1
  %338 = add i64 %331, %337
  %339 = select i1 %335, i64 %338, i64 %332
  %340 = select i1 %335, ptr %336, ptr %330
  %341 = icmp eq i64 %339, 0
  br i1 %341, label %.loopexit, label %329, !llvm.loop !60

.loopexit:                                        ; preds = %329, %323
  %342 = phi ptr [ %305, %323 ], [ %340, %329 ]
  %343 = load i64, ptr %342, align 8, !tbaa !5
  %344 = getelementptr inbounds nuw i8, ptr %342, i64 8
  br label %345

345:                                              ; preds = %.loopexit, %320, %309
  %346 = phi ptr [ %313, %309 ], [ %344, %.loopexit ], [ %313, %320 ]
  %347 = phi i32 [ %312, %309 ], [ %321, %.loopexit ], [ %321, %320 ]
  %348 = phi i64 [ %311, %309 ], [ %343, %.loopexit ], [ %311, %320 ]
  %349 = getelementptr inbounds nuw i8, ptr %310, i64 4
  %350 = icmp eq ptr %310, %.lcssa102
  br i1 %350, label %351, label %309, !llvm.loop !61

351:                                              ; preds = %345
  %352 = and i64 %301, 4294967295
  %353 = getelementptr inbounds nuw [4 x i8], ptr %297, i64 %352
  store i32 %347, ptr %353, align 4, !tbaa !55
  %354 = icmp ult i64 %296, %275
  br i1 %354, label %.preheader, label %.loopexit24, !llvm.loop !62

.loopexit24:                                      ; preds = %351, %273
  %355 = phi ptr [ %274, %273 ], [ %297, %351 ]
  store ptr %355, ptr %180, align 8, !tbaa !36
  store ptr null, ptr %145, align 8, !tbaa !35
  br label %356

356:                                              ; preds = %.loopexit24, %178, %175, %129, %127, %124, %122, %119, %117
  %357 = phi i64 [ 0, %.loopexit24 ], [ -72, %119 ], [ -72, %117 ], [ -72, %124 ], [ -72, %122 ], [ -72, %129 ], [ -72, %127 ], [ -64, %175 ], [ -64, %178 ]
  ret i64 %357
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @COVER_buildDictionary(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef writeonly captures(none) %3, i64 noundef %4, i32 %5, i32 %6) unnamed_addr #4 {
  %8 = alloca i64, align 8
  %9 = trunc i64 %4 to i32
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %11 = load i64, ptr %10, align 8, !tbaa !24
  %12 = trunc i64 %11 to i32
  %13 = mul i32 %5, 10
  %14 = udiv i32 %9, %5
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 4)
  %16 = lshr i32 %15, 2
  %17 = udiv i32 %12, %16
  %18 = icmp ult i32 %17, %13
  br i1 %18, label %19, label %22

19:                                               ; preds = %7
  %20 = tail call i32 @llvm.umin.i32(i32 %13, i32 %12)
  %21 = udiv i32 %12, %20
  br label %22

22:                                               ; preds = %19, %7
  %23 = phi i32 [ %21, %19 ], [ %16, %7 ]
  %24 = phi i32 [ %20, %19 ], [ %17, %7 ]
  %25 = zext i32 %23 to i64
  %26 = icmp ult i32 %23, 80
  %27 = lshr i32 %23, 3
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 100)
  %29 = select i1 %26, i32 10, i32 %28
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %32 = load i32, ptr %31, align 4, !tbaa !45
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  tail call fastcc void @COVER_buildDictionary.cold.1(i32 %23, i32 %24) #27
  br label %35

35:                                               ; preds = %34, %22
  %36 = icmp eq i64 %4, 0
  br i1 %36, label %.loopexit33, label %37

37:                                               ; preds = %35
  %38 = getelementptr i8, ptr %2, i64 12
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %40 = getelementptr i8, ptr %2, i64 8
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %42 = add i32 %5, 2
  %43 = sub i32 %42, %6
  %44 = add i32 %6, -1
  %45 = zext i32 %6 to i64
  %46 = icmp samesign ugt i32 %32, 3
  br label %47

47:                                               ; preds = %350, %37
  %48 = phi i64 [ %4, %37 ], [ %351, %350 ]
  %49 = phi i64 [ 0, %37 ], [ %352, %350 ]
  %50 = phi i64 [ 0, %37 ], [ %355, %350 ]
  %51 = phi i64 [ 0, %37 ], [ %353, %350 ]
  %52 = trunc i64 %50 to i32
  %53 = mul i32 %24, %52
  %54 = add i32 %53, %24
  %55 = load ptr, ptr %2, align 8, !tbaa !34
  %56 = load i32, ptr %38, align 4, !tbaa !32
  %57 = zext i32 %56 to i64
  %58 = shl nuw nsw i64 %57, 3
  tail call void @llvm.memset.p0.i64(ptr align 4 %55, i8 -1, i64 %58, i1 false)
  %59 = icmp ult i32 %53, %54
  br i1 %59, label %60, label %347

60:                                               ; preds = %47
  %61 = load ptr, ptr %39, align 8, !tbaa !37
  %62 = load ptr, ptr %2, align 8, !tbaa !34
  %63 = zext i32 %53 to i64
  %64 = zext i32 %54 to i64
  br label %90

65:                                               ; preds = %241
  %66 = icmp eq i32 %247, %246
  br i1 %66, label %.loopexit28, label %67

67:                                               ; preds = %65
  %68 = sub i32 %246, %247
  %69 = add i32 %247, 1
  %70 = and i32 %68, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %67
  %73 = zext i32 %247 to i64
  %74 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !55
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !55
  %79 = icmp eq i32 %78, 0
  %80 = tail call i32 @llvm.umin.i32(i32 %246, i32 %247)
  %81 = select i1 %79, i32 %246, i32 %80
  %82 = select i1 %79, i32 %247, i32 %69
  br label %83

83:                                               ; preds = %72, %67
  %84 = phi i32 [ poison, %67 ], [ %81, %72 ]
  %85 = phi i32 [ poison, %67 ], [ %82, %72 ]
  %86 = phi i32 [ %247, %67 ], [ %69, %72 ]
  %87 = phi i32 [ %247, %67 ], [ %82, %72 ]
  %88 = phi i32 [ %246, %67 ], [ %81, %72 ]
  %89 = icmp eq i32 %246, %69
  br i1 %89, label %.loopexit32, label %.preheader31

90:                                               ; preds = %241, %60
  %91 = phi i64 [ %63, %60 ], [ %137, %241 ]
  %92 = phi i32 [ 0, %60 ], [ %247, %241 ]
  %93 = phi i32 [ 0, %60 ], [ %246, %241 ]
  %94 = phi i32 [ 0, %60 ], [ %245, %241 ]
  %95 = phi i32 [ 0, %60 ], [ %243, %241 ]
  %96 = phi i32 [ %53, %60 ], [ %242, %241 ]
  %97 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %91
  %98 = load i32, ptr %97, align 4, !tbaa !55
  %99 = load i32, ptr %40, align 8, !tbaa !29
  %100 = mul i32 %98, -1640531535
  %101 = sub i32 32, %99
  %102 = lshr i32 %100, %101
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %103
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 4
  %106 = load i32, ptr %105, align 4, !tbaa !63
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %.loopexit26, label %.preheader25.preheader

.preheader25.preheader:                           ; preds = %90
  %108 = load i32, ptr %104, align 4, !tbaa !65
  %109 = icmp eq i32 %108, %98
  br i1 %109, label %.preheader25._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader25.preheader
  %110 = load i32, ptr %41, align 8, !tbaa !33
  br label %.lr.ph

.preheader25:                                     ; preds = %.lr.ph
  %111 = load i32, ptr %117, align 4, !tbaa !65
  %112 = icmp eq i32 %111, %98
  br i1 %112, label %.preheader25._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.preheader25
  %113 = phi i32 [ %115, %.preheader25 ], [ %102, %.lr.ph.preheader ]
  %114 = add i32 %113, 1
  %115 = and i32 %110, %114
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %116
  %118 = getelementptr inbounds nuw i8, ptr %117, i64 4
  %119 = load i32, ptr %118, align 4, !tbaa !63
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %.loopexit26, label %.preheader25

.loopexit26:                                      ; preds = %.lr.ph, %90
  %121 = phi i64 [ %103, %90 ], [ %116, %.lr.ph ]
  %122 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %121
  %123 = getelementptr inbounds nuw i8, ptr %122, i64 4
  store i32 %98, ptr %122, align 4, !tbaa !65
  store i32 0, ptr %123, align 4, !tbaa !63
  br label %127

.preheader25._crit_edge:                          ; preds = %.preheader25, %.preheader25.preheader
  %.lcssa104 = phi i32 [ %106, %.preheader25.preheader ], [ %119, %.preheader25 ]
  %.lcssa = phi i32 [ %102, %.preheader25.preheader ], [ %115, %.preheader25 ]
  %124 = zext i32 %.lcssa to i64
  %.split = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %124
  %125 = getelementptr inbounds nuw i8, ptr %.split, i64 4
  %126 = icmp eq i32 %.lcssa104, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %.preheader25._crit_edge, %.loopexit26
  %128 = phi ptr [ %123, %.loopexit26 ], [ %125, %.preheader25._crit_edge ]
  %129 = zext i32 %98 to i64
  %130 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !55
  %132 = add i32 %131, %95
  br label %133

133:                                              ; preds = %127, %.preheader25._crit_edge
  %134 = phi ptr [ %128, %127 ], [ %125, %.preheader25._crit_edge ]
  %135 = phi i32 [ 0, %127 ], [ %.lcssa104, %.preheader25._crit_edge ]
  %136 = phi i32 [ %132, %127 ], [ %95, %.preheader25._crit_edge ]
  %137 = add nuw nsw i64 %91, 1
  %138 = trunc i64 %137 to i32
  %139 = add nuw i32 %135, 1
  store i32 %139, ptr %134, align 4, !tbaa !55
  %140 = sub i32 %138, %96
  %141 = icmp eq i32 %140, %43
  br i1 %141, label %142, label %241

142:                                              ; preds = %133
  %143 = zext i32 %96 to i64
  %144 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !55
  %146 = load i32, ptr %40, align 8, !tbaa !29
  %147 = mul i32 %145, -1640531535
  %148 = sub i32 32, %146
  %149 = lshr i32 %147, %148
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %150
  %152 = getelementptr inbounds nuw i8, ptr %151, i64 4
  %153 = load i32, ptr %152, align 4, !tbaa !63
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %.loopexit24, label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %142
  %155 = load i32, ptr %151, align 4, !tbaa !65
  %156 = icmp eq i32 %155, %145
  br i1 %156, label %.preheader23._crit_edge, label %.lr.ph122.preheader

.lr.ph122.preheader:                              ; preds = %.preheader23.preheader
  %157 = load i32, ptr %41, align 8, !tbaa !33
  br label %.lr.ph122

.preheader23:                                     ; preds = %.lr.ph122
  %158 = load i32, ptr %164, align 4, !tbaa !65
  %159 = icmp eq i32 %158, %145
  br i1 %159, label %.preheader23._crit_edge, label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %.preheader23
  %160 = phi i32 [ %162, %.preheader23 ], [ %149, %.lr.ph122.preheader ]
  %161 = add i32 %160, 1
  %162 = and i32 %157, %161
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %163
  %165 = getelementptr inbounds nuw i8, ptr %164, i64 4
  %166 = load i32, ptr %165, align 4, !tbaa !63
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %.loopexit24, label %.preheader23

.loopexit24:                                      ; preds = %.lr.ph122, %142
  %168 = phi i64 [ %150, %142 ], [ %163, %.lr.ph122 ]
  %169 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %168
  %170 = getelementptr inbounds nuw i8, ptr %169, i64 4
  store i32 %145, ptr %169, align 4, !tbaa !65
  %171 = add i32 %96, 1
  store i32 -1, ptr %170, align 4, !tbaa !55
  br label %241

.preheader23._crit_edge:                          ; preds = %.preheader23, %.preheader23.preheader
  %.lcssa109 = phi i32 [ %153, %.preheader23.preheader ], [ %166, %.preheader23 ]
  %.lcssa107 = phi i32 [ %149, %.preheader23.preheader ], [ %162, %.preheader23 ]
  %172 = zext i32 %.lcssa107 to i64
  %.split19 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %172
  %173 = getelementptr inbounds nuw i8, ptr %.split19, i64 4
  %174 = add i32 %.lcssa109, -1
  %175 = add i32 %96, 1
  store i32 %174, ptr %173, align 4, !tbaa !55
  %176 = icmp eq i32 %174, 0
  br i1 %176, label %177, label %241

177:                                              ; preds = %.preheader23._crit_edge
  %178 = load i32, ptr %40, align 8, !tbaa !29
  %179 = sub i32 32, %178
  %180 = lshr i32 %147, %179
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %181
  %183 = getelementptr inbounds nuw i8, ptr %182, i64 4
  %184 = load i32, ptr %183, align 4, !tbaa !63
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %.loopexit22, label %.preheader21

.preheader21:                                     ; preds = %177, %190
  %186 = phi ptr [ %195, %190 ], [ %182, %177 ]
  %187 = phi i32 [ %193, %190 ], [ %180, %177 ]
  %188 = load i32, ptr %186, align 4, !tbaa !65
  %189 = icmp eq i32 %188, %145
  br i1 %189, label %199, label %190

190:                                              ; preds = %.preheader21
  %191 = add i32 %187, 1
  %192 = load i32, ptr %41, align 8, !tbaa !33
  %193 = and i32 %192, %191
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %194
  %196 = getelementptr inbounds nuw i8, ptr %195, i64 4
  %197 = load i32, ptr %196, align 4, !tbaa !63
  %198 = icmp eq i32 %197, -1
  br i1 %198, label %.loopexit22, label %.preheader21

199:                                              ; preds = %.preheader21
  %200 = zext i32 %187 to i64
  %201 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %200
  %202 = load i32, ptr %41, align 8, !tbaa !33
  %203 = add i32 %187, 1
  %204 = and i32 %202, %203
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %205
  %207 = getelementptr inbounds nuw i8, ptr %206, i64 4
  %208 = load i32, ptr %207, align 4, !tbaa !63
  %209 = icmp eq i32 %208, -1
  br i1 %209, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %199, %227
  %210 = phi i32 [ %235, %227 ], [ %208, %199 ]
  %211 = phi ptr [ %233, %227 ], [ %206, %199 ]
  %212 = phi i32 [ %231, %227 ], [ %204, %199 ]
  %213 = phi i32 [ %229, %227 ], [ 1, %199 ]
  %214 = phi ptr [ %228, %227 ], [ %201, %199 ]
  %215 = load i32, ptr %211, align 4, !tbaa !65
  %216 = mul i32 %215, -1640531535
  %217 = lshr i32 %216, %179
  %218 = sub i32 %212, %217
  %219 = and i32 %218, %202
  %220 = icmp ult i32 %219, %213
  br i1 %220, label %223, label %221

221:                                              ; preds = %.preheader
  store i32 %215, ptr %214, align 4, !tbaa !65
  %222 = getelementptr inbounds nuw i8, ptr %214, i64 4
  store i32 %210, ptr %222, align 4, !tbaa !63
  br label %227

223:                                              ; preds = %.preheader
  %224 = add i32 %213, 1
  br label %227

.loopexit:                                        ; preds = %227, %199
  %225 = phi ptr [ %201, %199 ], [ %228, %227 ]
  %226 = getelementptr inbounds nuw i8, ptr %225, i64 4
  store i32 -1, ptr %226, align 4, !tbaa !63
  br label %.loopexit22

227:                                              ; preds = %223, %221
  %228 = phi ptr [ %214, %223 ], [ %211, %221 ]
  %229 = phi i32 [ %224, %223 ], [ 1, %221 ]
  %230 = add i32 %212, 1
  %231 = and i32 %230, %202
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %232
  %234 = getelementptr inbounds nuw i8, ptr %233, i64 4
  %235 = load i32, ptr %234, align 4, !tbaa !63
  %236 = icmp eq i32 %235, -1
  br i1 %236, label %.loopexit, label %.preheader

.loopexit22:                                      ; preds = %190, %.loopexit, %177
  %237 = zext i32 %145 to i64
  %238 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %237
  %239 = load i32, ptr %238, align 4, !tbaa !55
  %240 = sub i32 %136, %239
  br label %241

241:                                              ; preds = %.loopexit22, %.preheader23._crit_edge, %.loopexit24, %133
  %242 = phi i32 [ %96, %133 ], [ %175, %.loopexit22 ], [ %175, %.preheader23._crit_edge ], [ %171, %.loopexit24 ]
  %243 = phi i32 [ %136, %133 ], [ %240, %.loopexit22 ], [ %136, %.preheader23._crit_edge ], [ %136, %.loopexit24 ]
  %244 = icmp ugt i32 %243, %94
  %245 = tail call i32 @llvm.umax.i32(i32 %243, i32 %94)
  %246 = select i1 %244, i32 %138, i32 %93
  %247 = select i1 %244, i32 %242, i32 %92
  %248 = icmp eq i64 %137, %64
  br i1 %248, label %65, label %90, !llvm.loop !66

.loopexit32:                                      ; preds = %.preheader31, %83
  %249 = phi i32 [ %84, %83 ], [ %292, %.preheader31 ]
  %250 = phi i32 [ %85, %83 ], [ %293, %.preheader31 ]
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %.loopexit28, label %252

252:                                              ; preds = %.loopexit32
  %253 = sub i32 %250, %249
  %254 = and i32 %253, 3
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %.loopexit30, label %.preheader29

.preheader29:                                     ; preds = %252, %.preheader29
  %256 = phi i32 [ %263, %.preheader29 ], [ %249, %252 ]
  %257 = phi i32 [ %264, %.preheader29 ], [ 0, %252 ]
  %258 = zext i32 %256 to i64
  %259 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !55
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %261
  store i32 0, ptr %262, align 4, !tbaa !55
  %263 = add i32 %256, 1
  %264 = add nuw nsw i32 %257, 1
  %265 = icmp eq i32 %264, %254
  br i1 %265, label %.loopexit30, label %.preheader29, !llvm.loop !67

.loopexit30:                                      ; preds = %.preheader29, %252
  %266 = phi i32 [ %249, %252 ], [ %263, %.preheader29 ]
  %267 = sub i32 %249, %250
  %268 = icmp ugt i32 %267, -4
  br i1 %268, label %.loopexit28, label %.preheader27

.preheader31:                                     ; preds = %83, %.preheader31
  %269 = phi i32 [ %291, %.preheader31 ], [ %86, %83 ]
  %270 = phi i32 [ %293, %.preheader31 ], [ %87, %83 ]
  %271 = phi i32 [ %292, %.preheader31 ], [ %88, %83 ]
  %272 = zext i32 %269 to i64
  %273 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %272
  %274 = load i32, ptr %273, align 4, !tbaa !55
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %275
  %277 = load i32, ptr %276, align 4, !tbaa !55
  %278 = icmp eq i32 %277, 0
  %279 = tail call i32 @llvm.umin.i32(i32 %271, i32 %269)
  %280 = add i32 %269, 1
  %281 = select i1 %278, i32 %271, i32 %279
  %282 = select i1 %278, i32 %270, i32 %280
  %283 = zext i32 %280 to i64
  %284 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %283
  %285 = load i32, ptr %284, align 4, !tbaa !55
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %286
  %288 = load i32, ptr %287, align 4, !tbaa !55
  %289 = icmp eq i32 %288, 0
  %290 = tail call i32 @llvm.umin.i32(i32 %281, i32 %280)
  %291 = add i32 %269, 2
  %292 = select i1 %289, i32 %281, i32 %290
  %293 = select i1 %289, i32 %282, i32 %291
  %294 = icmp eq i32 %291, %246
  br i1 %294, label %.loopexit32, label %.preheader31, !llvm.loop !68

.preheader27:                                     ; preds = %.loopexit30, %.preheader27
  %295 = phi i32 [ %319, %.preheader27 ], [ %266, %.loopexit30 ]
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %296
  %298 = load i32, ptr %297, align 4, !tbaa !55
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %299
  store i32 0, ptr %300, align 4, !tbaa !55
  %301 = add i32 %295, 1
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %302
  %304 = load i32, ptr %303, align 4, !tbaa !55
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %305
  store i32 0, ptr %306, align 4, !tbaa !55
  %307 = add i32 %295, 2
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %308
  %310 = load i32, ptr %309, align 4, !tbaa !55
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %311
  store i32 0, ptr %312, align 4, !tbaa !55
  %313 = add i32 %295, 3
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %314
  %316 = load i32, ptr %315, align 4, !tbaa !55
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %317
  store i32 0, ptr %318, align 4, !tbaa !55
  %319 = add i32 %295, 4
  %320 = icmp eq i32 %319, %250
  br i1 %320, label %.loopexit28, label %.preheader27, !llvm.loop !69

.loopexit28:                                      ; preds = %.preheader27, %.loopexit30, %.loopexit32, %65
  %321 = phi i32 [ %249, %.loopexit32 ], [ %246, %65 ], [ %250, %.loopexit30 ], [ %250, %.preheader27 ]
  %322 = phi i32 [ %249, %.loopexit32 ], [ %246, %65 ], [ %249, %.loopexit30 ], [ %249, %.preheader27 ]
  %323 = zext i32 %322 to i64
  %324 = icmp eq i32 %245, 0
  br i1 %324, label %347, label %325

325:                                              ; preds = %.loopexit28
  %326 = add i32 %44, %321
  %327 = sub i32 %326, %322
  %328 = zext i32 %327 to i64
  %329 = tail call i64 @llvm.umin.i64(i64 %48, i64 %328)
  %330 = icmp samesign ult i64 %329, %45
  br i1 %330, label %.loopexit33, label %331

331:                                              ; preds = %325
  %332 = sub i64 %48, %329
  %333 = getelementptr inbounds nuw i8, ptr %3, i64 %332
  %334 = load ptr, ptr %0, align 8, !tbaa !46
  %335 = getelementptr inbounds nuw i8, ptr %334, i64 %323
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %333, ptr align 1 %335, i64 %329, i1 false)
  br i1 %33, label %336, label %350

336:                                              ; preds = %331
  %337 = tail call i64 @clock() #29
  %338 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %337, i64 %51), !nosanitize !70
  %339 = extractvalue { i64, i1 } %338, 1, !nosanitize !70
  br i1 %339, label %340, label %341, !prof !71, !nosanitize !70

340:                                              ; preds = %336
  tail call void @llvm.ubsantrap(i8 21) #31, !nosanitize !70
  unreachable, !nosanitize !70

341:                                              ; preds = %336
  %342 = extractvalue { i64, i1 } %338, 0, !nosanitize !70
  %343 = icmp sgt i64 %342, 150000
  %344 = or i1 %46, %343
  br i1 %344, label %345, label %350

345:                                              ; preds = %341
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call fastcc void @COVER_buildDictionary.cold.2(i64 %4, i64 %332, ptr %8) #27
  %346 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %350

347:                                              ; preds = %.loopexit28, %47
  %348 = add i64 %49, 1
  %349 = icmp ult i64 %348, %30
  br i1 %349, label %350, label %.loopexit33

350:                                              ; preds = %347, %345, %341, %331
  %351 = phi i64 [ %48, %347 ], [ %332, %345 ], [ %332, %341 ], [ %332, %331 ]
  %352 = phi i64 [ %348, %347 ], [ 0, %345 ], [ 0, %341 ], [ 0, %331 ]
  %353 = phi i64 [ %51, %347 ], [ %346, %345 ], [ %51, %341 ], [ %51, %331 ]
  %354 = add nsw i64 %50, 1
  %355 = urem i64 %354, %25
  %356 = icmp eq i64 %351, 0
  br i1 %356, label %.loopexit33, label %47, !llvm.loop !72

.loopexit33:                                      ; preds = %350, %347, %325, %35
  %357 = phi i64 [ 0, %35 ], [ 0, %350 ], [ %48, %347 ], [ %48, %325 ]
  br i1 %33, label %358, label %359

358:                                              ; preds = %.loopexit33
  tail call fastcc void @COVER_buildDictionary.cold.3() #27
  br label %359

359:                                              ; preds = %358, %.loopexit33
  ret i64 %357
}

declare i64 @ZDICT_finalizeDictionary(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef byval(%struct.ZDICT_params_t) align 8) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @COVER_checkTotalCompressedSize(ptr noundef readonly byval(%struct.ZDICT_cover_params_t) align 8 captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2, ptr noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #4 {
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = load double, ptr %9, align 8, !tbaa !22
  %11 = fcmp olt double %10, 1.000000e+00
  %12 = select i1 %11, i64 %4, i64 0
  %13 = icmp uge i64 %12, %5
  br i1 %13, label %.loopexit8, label %14

14:                                               ; preds = %8
  %15 = sub nuw i64 %5, %12
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %.preheader28, label %17

17:                                               ; preds = %14
  %18 = and i64 %15, -4
  %19 = getelementptr [8 x i8], ptr %1, i64 %12
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i64 [ 0, %17 ], [ %30, %20 ]
  %22 = phi <2 x i64> [ zeroinitializer, %17 ], [ %28, %20 ]
  %23 = phi <2 x i64> [ zeroinitializer, %17 ], [ %29, %20 ]
  %24 = getelementptr [8 x i8], ptr %19, i64 %21
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 16
  %26 = load <2 x i64>, ptr %24, align 8, !tbaa !5
  %27 = load <2 x i64>, ptr %25, align 8, !tbaa !5
  %28 = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %26, <2 x i64> %22)
  %29 = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %27, <2 x i64> %23)
  %30 = add nuw i64 %21, 4
  %31 = icmp eq i64 %30, %18
  br i1 %31, label %32, label %20, !llvm.loop !73

32:                                               ; preds = %20
  %33 = add i64 %18, %12
  %34 = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %28, <2 x i64> %29)
  %35 = tail call i64 @llvm.vector.reduce.umax.v2i64(<2 x i64> %34)
  %36 = icmp eq i64 %15, %18
  br i1 %36, label %.loopexit8, label %.preheader28

.preheader28:                                     ; preds = %32, %14
  %.ph29 = phi i64 [ %35, %32 ], [ 0, %14 ]
  %.ph30 = phi i64 [ %33, %32 ], [ %12, %14 ]
  br label %37

37:                                               ; preds = %.preheader28, %37
  %38 = phi i64 [ %42, %37 ], [ %.ph29, %.preheader28 ]
  %39 = phi i64 [ %43, %37 ], [ %.ph30, %.preheader28 ]
  %40 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !5
  %42 = tail call i64 @llvm.umax.i64(i64 %41, i64 %38)
  %43 = add nuw i64 %39, 1
  %44 = icmp eq i64 %43, %5
  br i1 %44, label %.loopexit8, label %37, !llvm.loop !74

.loopexit8:                                       ; preds = %37, %32, %8
  %45 = phi i64 [ 0, %8 ], [ %35, %32 ], [ %42, %37 ]
  %46 = tail call i64 @ZSTD_compressBound(i64 noundef %45) #29
  %47 = tail call noalias ptr @malloc(i64 noundef %46) #28
  %48 = tail call ptr @ZSTD_createCCtx() #29
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %50 = load i32, ptr %49, align 8, !tbaa !75
  %51 = tail call ptr @ZSTD_createCDict(ptr noundef %6, i64 noundef %7, i32 noundef %50) #29
  %52 = icmp eq ptr %47, null
  %53 = icmp eq ptr %48, null
  %54 = select i1 %52, i1 true, i1 %53
  %55 = icmp eq ptr %51, null
  %56 = select i1 %54, i1 true, i1 %55
  %57 = or i1 %13, %56
  %58 = select i1 %56, i64 -1, i64 %7
  br i1 %57, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit8, %68
  %59 = phi i64 [ %70, %68 ], [ %12, %.loopexit8 ]
  %60 = phi i64 [ %69, %68 ], [ %7, %.loopexit8 ]
  %61 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %59
  %62 = load i64, ptr %61, align 8, !tbaa !5
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 %62
  %64 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %59
  %65 = load i64, ptr %64, align 8, !tbaa !5
  %66 = tail call i64 @ZSTD_compress_usingCDict(ptr noundef nonnull %48, ptr noundef nonnull %47, i64 noundef %46, ptr noundef %63, i64 noundef %65, ptr noundef nonnull %51) #29
  %67 = icmp ult i64 %66, -119
  br i1 %67, label %68, label %.loopexit

68:                                               ; preds = %.preheader
  %69 = add i64 %66, %60
  %70 = add i64 %59, 1
  %71 = icmp eq i64 %70, %5
  br i1 %71, label %.loopexit, label %.preheader, !llvm.loop !76

.loopexit:                                        ; preds = %68, %.preheader, %.loopexit8
  %72 = phi i64 [ %58, %.loopexit8 ], [ %66, %.preheader ], [ %69, %68 ]
  %73 = tail call i64 @ZSTD_freeCCtx(ptr noundef %48) #29
  %74 = tail call i64 @ZSTD_freeCDict(ptr noundef %51) #29
  br i1 %52, label %76, label %75

75:                                               ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %47) #29
  br label %76

76:                                               ; preds = %75, %.loopexit
  ret i64 %72
}

declare i64 @ZSTD_compressBound(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

declare ptr @ZSTD_createCCtx() local_unnamed_addr #5

declare ptr @ZSTD_createCDict(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare i64 @ZSTD_compress_usingCDict(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare i64 @ZSTD_freeCCtx(ptr noundef) local_unnamed_addr #5

declare i64 @ZSTD_freeCDict(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @COVER_best_init(ptr noundef writeonly captures(address_is_null) %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i64 -1, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local void @COVER_best_wait(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !79
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %.preheader, !llvm.loop !80

.preheader:                                       ; preds = %3, %.preheader
  br label %.preheader

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @COVER_best_destroy(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !79
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %.preheader, !llvm.loop !80

.preheader:                                       ; preds = %3, %.preheader
  br label %.preheader

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %9) #29
  br label %12

12:                                               ; preds = %11, %7, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @COVER_best_start(ptr noundef captures(address_is_null) %0) local_unnamed_addr #11 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !79
  %6 = add i64 %5, 1
  store i64 %6, ptr %4, align 8, !tbaa !79
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @COVER_best_finish(ptr noundef captures(address_is_null) %0, ptr noundef readonly byval(%struct.ZDICT_cover_params_t) align 8 captures(none) %1, ptr noundef readonly byval(%struct.COVER_dictSelection) align 8 captures(none) %2) local_unnamed_addr #12 {
  %4 = load ptr, ptr %2, align 8, !tbaa !82
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %6 = load i64, ptr %5, align 8, !tbaa !84
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !85
  %9 = icmp eq ptr %0, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !79
  %13 = add i64 %12, -1
  store i64 %13, ptr %11, align 8, !tbaa !79
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %15 = load i64, ptr %14, align 8, !tbaa !77
  %16 = icmp ult i64 %6, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %10
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %23 = load i64, ptr %22, align 8, !tbaa !86
  %24 = icmp ult i64 %23, %8
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  tail call void @free(ptr noundef nonnull %19) #29
  br label %26

26:                                               ; preds = %25, %17
  %27 = tail call noalias ptr @malloc(i64 noundef %8) #28
  store ptr %27, ptr %18, align 8, !tbaa !81
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  store i64 -1, ptr %14, align 8, !tbaa !77
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %30, align 8, !tbaa !86
  br label %37

31:                                               ; preds = %26, %21
  %32 = phi ptr [ %27, %26 ], [ %19, %21 ]
  %33 = icmp eq ptr %4, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr nonnull align 1 %4, i64 %8, i1 false)
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %8, ptr %35, align 8, !tbaa !86
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %36, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !87
  store i64 %6, ptr %14, align 8, !tbaa !77
  br label %37

37:                                               ; preds = %34, %31, %29, %10, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @COVER_dictSelectionError(ptr dead_on_unwind noalias writable writeonly sret(%struct.COVER_dictSelection) align 8 captures(none) initializes((0, 24)) %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i64 %1, ptr %3, align 8, !tbaa !84, !alias.scope !89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @COVER_dictSelectionIsError(ptr noundef readonly byval(%struct.COVER_dictSelection) align 8 captures(none) %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load i64, ptr %2, align 8, !tbaa !84
  %4 = icmp ugt i64 %3, -120
  %5 = load ptr, ptr %0, align 8
  %6 = icmp eq ptr %5, null
  %7 = select i1 %4, i1 true, i1 %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @COVER_dictSelectionFree(ptr noundef readonly byval(%struct.COVER_dictSelection) align 8 captures(none) %0) local_unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !82
  tail call void @free(ptr noundef %2) #29
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @COVER_selectDict(ptr dead_on_unwind noalias writable writeonly sret(%struct.COVER_dictSelection) align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i64 noundef %7, i64 noundef %8, ptr noundef readonly byval(%struct.ZDICT_cover_params_t) align 8 captures(none) %9, ptr noundef readonly captures(none) %10, i64 %11) local_unnamed_addr #4 {
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %14 = tail call noalias ptr @malloc(i64 noundef %2) #28
  %15 = tail call noalias ptr @malloc(i64 noundef %2) #28
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 28
  %17 = load i32, ptr %16, align 4, !tbaa !92
  %18 = uitofp i32 %17 to double
  %19 = fdiv nnan double %18, 1.000000e+02
  %20 = fadd nnan double %19, 1.000000e+00
  %21 = icmp ne ptr %14, null
  %22 = icmp ne ptr %15, null
  %23 = and i1 %21, %22
  br i1 %23, label %26, label %24

24:                                               ; preds = %12
  tail call void @free(ptr noundef %14) #29
  tail call void @free(ptr noundef %15) #29
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !93
  store i64 %3, ptr %25, align 8, !tbaa !84, !alias.scope !96
  br label %75

26:                                               ; preds = %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %14, ptr align 1 %1, i64 %3, i1 false)
  %27 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %28 = tail call i64 @ZDICT_finalizeDictionary(ptr noundef nonnull %14, i64 noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %27) #29
  %29 = tail call i32 @ZDICT_isError(i64 noundef %28) #29
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  tail call void @free(ptr noundef nonnull %14) #29
  tail call void @free(ptr noundef nonnull %15) #29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !99
  store i64 %28, ptr %32, align 8, !tbaa !84, !alias.scope !102
  br label %75

33:                                               ; preds = %26
  %34 = tail call i64 @COVER_checkTotalCompressedSize(ptr noundef nonnull byval(%struct.ZDICT_cover_params_t) align 8 %9, ptr noundef %5, ptr noundef %4, ptr noundef %10, i64 noundef %7, i64 noundef %8, ptr noundef nonnull %14, i64 noundef %28)
  %35 = icmp ult i64 %34, -119
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  tail call void @free(ptr noundef nonnull %14) #29
  tail call void @free(ptr noundef nonnull %15) #29
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !105
  store i64 %34, ptr %37, align 8, !tbaa !84, !alias.scope !108
  br label %75

38:                                               ; preds = %33
  %39 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %40 = load i32, ptr %39, align 8, !tbaa !111
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = icmp ugt i64 %28, 256
  br i1 %43, label %44, label %.loopexit

44:                                               ; preds = %42
  %45 = uitofp i64 %34 to double
  %46 = fmul double %20, %45
  br label %50

47:                                               ; preds = %38
  tail call void @free(ptr noundef nonnull %15) #29
  store ptr %14, ptr %0, align 8, !tbaa !82, !alias.scope !112
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %28, ptr %48, align 8, !tbaa !85, !alias.scope !112
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %34, ptr %49, align 8, !tbaa !84, !alias.scope !112
  br label %75

50:                                               ; preds = %70, %44
  %51 = phi i64 [ 256, %44 ], [ %71, %70 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %15, ptr nonnull align 1 %14, i64 %28, i1 false)
  %52 = sub i64 0, %51
  %53 = getelementptr inbounds i8, ptr %13, i64 %52
  %54 = tail call i64 @ZDICT_finalizeDictionary(ptr noundef nonnull %15, i64 noundef %2, ptr noundef %53, i64 noundef %51, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %27) #29
  %55 = tail call i32 @ZDICT_isError(i64 noundef %54) #29
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  tail call void @free(ptr noundef %14) #29
  tail call void @free(ptr noundef nonnull %15) #29
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !115
  store i64 %54, ptr %58, align 8, !tbaa !84, !alias.scope !118
  br label %75

59:                                               ; preds = %50
  %60 = tail call i64 @COVER_checkTotalCompressedSize(ptr noundef nonnull byval(%struct.ZDICT_cover_params_t) align 8 %9, ptr noundef %5, ptr noundef %4, ptr noundef %10, i64 noundef %7, i64 noundef %8, ptr noundef nonnull %15, i64 noundef %54)
  %61 = icmp ult i64 %60, -119
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  tail call void @free(ptr noundef %14) #29
  tail call void @free(ptr noundef nonnull %15) #29
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !121
  store i64 %60, ptr %63, align 8, !tbaa !84, !alias.scope !124
  br label %75

64:                                               ; preds = %59
  %65 = uitofp i64 %60 to double
  %66 = fcmp ult double %46, %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  tail call void @free(ptr noundef %14) #29
  store ptr %15, ptr %0, align 8, !tbaa !82, !alias.scope !127
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %54, ptr %68, align 8, !tbaa !85, !alias.scope !127
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %60, ptr %69, align 8, !tbaa !84, !alias.scope !127
  br label %75

70:                                               ; preds = %64
  %71 = shl i64 %54, 1
  %72 = icmp ult i64 %71, %28
  br i1 %72, label %50, label %.loopexit, !llvm.loop !130

.loopexit:                                        ; preds = %70, %42
  tail call void @free(ptr noundef nonnull %15) #29
  store ptr %14, ptr %0, align 8, !tbaa !82, !alias.scope !131
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %28, ptr %73, align 8, !tbaa !85, !alias.scope !131
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %34, ptr %74, align 8, !tbaa !84, !alias.scope !131
  br label %75

75:                                               ; preds = %.loopexit, %67, %62, %57, %47, %36, %31, %24
  ret void
}

declare i32 @ZDICT_isError(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_optimizeTrainFromBuffer_cover(ptr noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef captures(none) %5) local_unnamed_addr #4 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.COVER_best_s, align 8
  %9 = alloca %struct.COVER_ctx_t, align 8
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %11 = load i32, ptr %10, align 4, !tbaa !134
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %13 = load double, ptr %12, align 8, !tbaa !22
  %14 = fcmp ugt double %13, 0.000000e+00
  %15 = select i1 %14, double %13, double 1.000000e+00
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %17 = load i32, ptr %16, align 4, !tbaa !23
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 6, i32 %17
  %20 = select i1 %18, i32 8, i32 %17
  %21 = load i32, ptr %5, align 8, !tbaa !135
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 50, i32 %21
  %24 = select i1 %22, i32 2000, i32 %21
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %26 = load i32, ptr %25, align 8, !tbaa !136
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 40, i32 %26
  %29 = select i1 %22, i32 1950, i32 0
  %30 = udiv i32 %29, %28
  %31 = tail call i32 @llvm.umax.i32(i32 %30, i32 1)
  %32 = trunc nuw nsw i32 %29 to i16
  %33 = trunc nuw nsw i32 %31 to i16
  %34 = udiv i16 %32, %33
  %35 = add nuw nsw i16 %34, 1
  %36 = zext nneg i16 %35 to i32
  %37 = zext i1 %18 to i32
  %38 = shl nuw nsw i32 %36, %37
  %39 = getelementptr inbounds nuw i8, ptr %5, i64 36
  %40 = load i32, ptr %39, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %41 = fcmp ogt double %15, 1.000000e+00
  br i1 %41, label %42, label %45

42:                                               ; preds = %6
  %43 = icmp sgt i32 %40, 0
  br i1 %43, label %44, label %258

44:                                               ; preds = %42
  tail call fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.11() #27
  br label %258

45:                                               ; preds = %6
  %46 = icmp ult i32 %23, %20
  %47 = icmp ult i32 %24, %23
  %48 = or i1 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = icmp sgt i32 %40, 0
  br i1 %50, label %51, label %258

51:                                               ; preds = %49
  tail call fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.10() #27
  br label %258

52:                                               ; preds = %45
  %53 = icmp eq i32 %4, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = icmp sgt i32 %40, 0
  br i1 %55, label %56, label %258

56:                                               ; preds = %54
  tail call fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.9() #27
  br label %258

57:                                               ; preds = %52
  %58 = icmp ult i64 %1, 256
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = icmp sgt i32 %40, 0
  br i1 %60, label %61, label %258

61:                                               ; preds = %59
  tail call fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.8() #27
  br label %258

62:                                               ; preds = %57
  %63 = icmp ugt i32 %11, 1
  br i1 %63, label %64, label %68

64:                                               ; preds = %62
  %65 = zext i32 %11 to i64
  %66 = tail call ptr @POOL_create(i64 noundef %65, i64 noundef 1) #29
  %67 = icmp eq ptr %66, null
  br i1 %67, label %258, label %68

68:                                               ; preds = %64, %62
  %69 = phi ptr [ %66, %64 ], [ null, %62 ]
  %70 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %71 = getelementptr inbounds nuw i8, ptr %8, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %70, i8 0, i64 24, i1 false)
  store i64 -1, ptr %71, align 8, !tbaa !77
  %72 = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %72, i8 0, i64 48, i1 false)
  %73 = icmp sgt i32 %40, 1
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  tail call fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.1(i32 %38) #27
  br label %75

75:                                               ; preds = %74, %68
  %76 = icmp ugt i32 %19, %20
  br i1 %76, label %.loopexit33, label %77

77:                                               ; preds = %75
  %78 = icmp sgt i32 %40, 2
  %79 = icmp eq i32 %40, 0
  %80 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %40, i32 -1)
  %81 = extractvalue { i32, i1 } %80, 0
  %82 = extractvalue { i32, i1 } %80, 1
  %83 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %84 = uitofp i64 %1 to double
  %85 = icmp sgt i32 %40, 0
  %86 = trunc i64 %1 to i32
  %87 = getelementptr inbounds nuw i8, ptr %9, i64 84
  %88 = icmp eq ptr %69, null
  %89 = icmp samesign ugt i32 %40, 3
  %90 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %91 = getelementptr inbounds nuw i8, ptr %9, i64 64
  %92 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %93 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %94 = select i1 %79, i32 0, i32 %81
  br label %95

95:                                               ; preds = %231, %77
  %96 = phi i32 [ 1, %77 ], [ %207, %231 ]
  %97 = phi i32 [ %19, %77 ], [ %232, %231 ]
  %98 = phi i1 [ true, %77 ], [ false, %231 ]
  %99 = phi i64 [ 0, %77 ], [ %206, %231 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br i1 %78, label %100, label %105

100:                                              ; preds = %95
  %101 = load ptr, ptr @stderr, align 8, !tbaa !14
  %102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.9, i32 noundef %97) #26
  %103 = load ptr, ptr @stderr, align 8, !tbaa !14
  %104 = call i32 @fflush(ptr noundef %103)
  br i1 %82, label %.loopexit, label %106, !prof !71, !nosanitize !70

105:                                              ; preds = %95
  br i1 %82, label %.loopexit, label %106, !prof !137

.loopexit:                                        ; preds = %105, %100, %192
  call void @llvm.ubsantrap(i8 21) #31, !nosanitize !70
  unreachable, !nosanitize !70

106:                                              ; preds = %105, %100
  %107 = phi i32 [ %94, %105 ], [ %81, %100 ]
  %108 = call fastcc i64 @COVER_ctx_init(ptr noundef %9, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %97, double noundef %15, i32 noundef %107)
  %109 = icmp ult i64 %108, -119
  br i1 %109, label %120, label %110

110:                                              ; preds = %106
  br i1 %85, label %111, label %112

111:                                              ; preds = %110
  call fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.2() #27
  br label %112

112:                                              ; preds = %111, %110
  %113 = load i64, ptr %70, align 8, !tbaa !79
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %.preheader31, !llvm.loop !80

.preheader31:                                     ; preds = %112, %.preheader31
  br label %.preheader31

115:                                              ; preds = %112
  %116 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %117 = load ptr, ptr %116, align 8, !tbaa !81
  %118 = icmp eq ptr %117, null
  br i1 %118, label %229, label %119

119:                                              ; preds = %115
  call void @free(ptr noundef nonnull %117) #29
  br label %229

120:                                              ; preds = %106
  br i1 %98, label %121, label %133

121:                                              ; preds = %120
  %122 = load i64, ptr %83, align 8, !tbaa !24
  %123 = uitofp i64 %122 to double
  %124 = fdiv double %123, %84
  %125 = fcmp ult double %124, 1.000000e+01
  %126 = and i1 %85, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load ptr, ptr @stderr, align 8, !tbaa !14
  %129 = trunc i64 %122 to i32
  %130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef nonnull @.str, i32 noundef %86, i32 noundef %129, double noundef %124) #26
  %131 = load ptr, ptr @stderr, align 8, !tbaa !14
  %132 = call i32 @fflush(ptr noundef %131)
  br label %133

133:                                              ; preds = %127, %121, %120
  %134 = add i32 %97, -1
  br label %135

135:                                              ; preds = %205, %133
  %136 = phi i32 [ %207, %205 ], [ %96, %133 ]
  %137 = phi i32 [ %208, %205 ], [ %23, %133 ]
  %138 = phi i64 [ %206, %205 ], [ %99, %133 ]
  %139 = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #28
  br i1 %78, label %140, label %141

140:                                              ; preds = %135
  call fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.3(i32 %137) #27
  br label %141

141:                                              ; preds = %140, %135
  %142 = icmp eq ptr %139, null
  br i1 %142, label %143, label %169

143:                                              ; preds = %141
  br i1 %85, label %144, label %145

144:                                              ; preds = %143
  call fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.6() #27
  br label %145

145:                                              ; preds = %144, %143
  %146 = load i64, ptr %70, align 8, !tbaa !79
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %.preheader29, !llvm.loop !80

.preheader29:                                     ; preds = %145, %.preheader29
  br label %.preheader29

148:                                              ; preds = %145
  %149 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %150 = load ptr, ptr %149, align 8, !tbaa !81
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %148
  call void @free(ptr noundef nonnull %150) #29
  br label %153

153:                                              ; preds = %152, %148
  %154 = load ptr, ptr %90, align 8, !tbaa !35
  %155 = icmp eq ptr %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %153
  call void @free(ptr noundef nonnull %154) #29
  store ptr null, ptr %90, align 8, !tbaa !35
  br label %157

157:                                              ; preds = %156, %153
  %158 = load ptr, ptr %91, align 8, !tbaa !36
  %159 = icmp eq ptr %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  call void @free(ptr noundef nonnull %158) #29
  store ptr null, ptr %91, align 8, !tbaa !36
  br label %161

161:                                              ; preds = %160, %157
  %162 = load ptr, ptr %92, align 8, !tbaa !37
  %163 = icmp eq ptr %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  call void @free(ptr noundef nonnull %162) #29
  store ptr null, ptr %92, align 8, !tbaa !37
  br label %165

165:                                              ; preds = %164, %161
  %166 = load ptr, ptr %93, align 8, !tbaa !38
  %167 = icmp eq ptr %166, null
  br i1 %167, label %229, label %168

168:                                              ; preds = %165
  call void @free(ptr noundef nonnull %166) #29
  store ptr null, ptr %93, align 8, !tbaa !38
  br label %229

169:                                              ; preds = %141
  store ptr %9, ptr %139, align 8, !tbaa !138
  %170 = getelementptr inbounds nuw i8, ptr %139, i64 8
  store ptr %8, ptr %170, align 8, !tbaa !141
  %171 = getelementptr inbounds nuw i8, ptr %139, i64 16
  store i64 %1, ptr %171, align 8, !tbaa !142
  %172 = getelementptr inbounds nuw i8, ptr %139, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %172, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 48, i1 false), !tbaa.struct !87
  store i32 %137, ptr %172, align 8, !tbaa !143
  %173 = getelementptr inbounds nuw i8, ptr %139, i64 28
  store i32 %97, ptr %173, align 4, !tbaa !144
  %174 = getelementptr inbounds nuw i8, ptr %139, i64 40
  store double %15, ptr %174, align 8, !tbaa !145
  %175 = getelementptr inbounds nuw i8, ptr %139, i64 32
  store i32 %28, ptr %175, align 8, !tbaa !146
  %176 = getelementptr inbounds nuw i8, ptr %139, i64 48
  store i32 0, ptr %176, align 8, !tbaa !147
  %177 = load i32, ptr %87, align 4, !tbaa !45
  %178 = getelementptr inbounds nuw i8, ptr %139, i64 60
  store i32 %177, ptr %178, align 4, !tbaa !148
  %179 = zext i32 %137 to i64
  %180 = icmp ult i64 %1, %179
  %181 = icmp uge i32 %134, %137
  %182 = or i1 %181, %180
  br i1 %182, label %183, label %186

183:                                              ; preds = %169
  br i1 %85, label %184, label %185

184:                                              ; preds = %183
  call fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.5() #27
  br label %185

185:                                              ; preds = %184, %183
  call void @free(ptr noundef nonnull %139) #29
  br label %205

186:                                              ; preds = %169
  %187 = load i64, ptr %70, align 8, !tbaa !79
  %188 = add i64 %187, 1
  store i64 %188, ptr %70, align 8, !tbaa !79
  br i1 %88, label %190, label %189

189:                                              ; preds = %186
  call void @POOL_add(ptr noundef nonnull %69, ptr noundef nonnull @COVER_tryParameters, ptr noundef nonnull %139) #29
  br label %191

190:                                              ; preds = %186
  call void @COVER_tryParameters(ptr noundef nonnull %139)
  br label %191

191:                                              ; preds = %190, %189
  br i1 %73, label %192, label %202

192:                                              ; preds = %191
  %193 = call i64 @clock() #29
  %194 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %193, i64 %138), !nosanitize !70
  %195 = extractvalue { i64, i1 } %194, 1, !nosanitize !70
  br i1 %195, label %.loopexit, label %196, !prof !71, !nosanitize !70

196:                                              ; preds = %192
  %197 = extractvalue { i64, i1 } %194, 0, !nosanitize !70
  %198 = icmp sgt i64 %197, 150000
  %199 = select i1 %198, i1 true, i1 %89
  br i1 %199, label %200, label %202

200:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.4(i32 %136, i32 %38, ptr %7) #27
  %201 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %202

202:                                              ; preds = %200, %196, %191
  %203 = phi i64 [ %138, %191 ], [ %201, %200 ], [ %138, %196 ]
  %204 = add i32 %136, 1
  br label %205

205:                                              ; preds = %202, %185
  %206 = phi i64 [ %138, %185 ], [ %203, %202 ]
  %207 = phi i32 [ %136, %185 ], [ %204, %202 ]
  %208 = add i32 %137, %31
  %209 = icmp ugt i32 %208, %24
  br i1 %209, label %210, label %135, !llvm.loop !149

210:                                              ; preds = %205
  %211 = load i64, ptr %70, align 8, !tbaa !79
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %.preheader30, !llvm.loop !80

.preheader30:                                     ; preds = %210, %.preheader30
  br label %.preheader30

213:                                              ; preds = %210
  %214 = load ptr, ptr %90, align 8, !tbaa !35
  %215 = icmp eq ptr %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %213
  call void @free(ptr noundef nonnull %214) #29
  store ptr null, ptr %90, align 8, !tbaa !35
  br label %217

217:                                              ; preds = %216, %213
  %218 = load ptr, ptr %91, align 8, !tbaa !36
  %219 = icmp eq ptr %218, null
  br i1 %219, label %221, label %220

220:                                              ; preds = %217
  call void @free(ptr noundef nonnull %218) #29
  store ptr null, ptr %91, align 8, !tbaa !36
  br label %221

221:                                              ; preds = %220, %217
  %222 = load ptr, ptr %92, align 8, !tbaa !37
  %223 = icmp eq ptr %222, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %221
  call void @free(ptr noundef nonnull %222) #29
  store ptr null, ptr %92, align 8, !tbaa !37
  br label %225

225:                                              ; preds = %224, %221
  %226 = load ptr, ptr %93, align 8, !tbaa !38
  %227 = icmp eq ptr %226, null
  br i1 %227, label %231, label %228

228:                                              ; preds = %225
  call void @free(ptr noundef nonnull %226) #29
  br label %231

229:                                              ; preds = %168, %165, %119, %115
  %230 = phi i64 [ %108, %119 ], [ %108, %115 ], [ -64, %168 ], [ -64, %165 ]
  call void @POOL_free(ptr noundef %69) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %258

231:                                              ; preds = %228, %225
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %232 = add i32 %97, 2
  %233 = icmp ugt i32 %232, %20
  br i1 %233, label %.loopexit33, label %95, !llvm.loop !150

.loopexit33:                                      ; preds = %231, %75
  br i1 %73, label %234, label %235

234:                                              ; preds = %.loopexit33
  call fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.7() #27
  br label %235

235:                                              ; preds = %234, %.loopexit33
  %236 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %237 = load i64, ptr %236, align 8, !tbaa !86
  %238 = load i64, ptr %71, align 8, !tbaa !77
  %239 = icmp ult i64 %238, -119
  br i1 %239, label %249, label %240

240:                                              ; preds = %235
  %241 = load i64, ptr %70, align 8, !tbaa !79
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %.preheader28, !llvm.loop !80

.preheader28:                                     ; preds = %240, %.preheader28
  br label %.preheader28

243:                                              ; preds = %240
  %244 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %245 = load ptr, ptr %244, align 8, !tbaa !81
  %246 = icmp eq ptr %245, null
  br i1 %246, label %248, label %247

247:                                              ; preds = %243
  call void @free(ptr noundef nonnull %245) #29
  br label %248

248:                                              ; preds = %247, %243
  call void @POOL_free(ptr noundef %69) #29
  br label %258

249:                                              ; preds = %235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %72, i64 48, i1 false), !tbaa.struct !87
  %250 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %251 = load ptr, ptr %250, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %251, i64 %237, i1 false)
  %252 = load i64, ptr %70, align 8, !tbaa !79
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %254, label %.preheader, !llvm.loop !80

.preheader:                                       ; preds = %249, %.preheader
  br label %.preheader

254:                                              ; preds = %249
  %255 = icmp eq ptr %251, null
  br i1 %255, label %257, label %256

256:                                              ; preds = %254
  call void @free(ptr noundef nonnull %251) #29
  br label %257

257:                                              ; preds = %256, %254
  call void @POOL_free(ptr noundef %69) #29
  br label %258

258:                                              ; preds = %257, %248, %229, %64, %61, %59, %56, %54, %51, %49, %44, %42
  %259 = phi i64 [ %230, %229 ], [ -42, %44 ], [ -42, %42 ], [ -42, %51 ], [ -42, %49 ], [ -72, %56 ], [ -72, %54 ], [ -70, %61 ], [ -70, %59 ], [ -64, %64 ], [ %238, %248 ], [ %237, %257 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret i64 %259
}

declare ptr @POOL_create(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #15

declare void @POOL_free(ptr noundef) local_unnamed_addr #5

declare void @POOL_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @COVER_tryParameters(ptr noundef captures(none) %0) #4 {
  %2 = alloca %struct.ZDICT_cover_params_t, align 8
  %3 = alloca %struct.COVER_map_s, align 8
  %4 = alloca %struct.COVER_dictSelection, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !138
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load i64, ptr %7, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #28
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %11 = load i64, ptr %10, align 8, !tbaa !24
  %12 = shl i64 %11, 2
  %13 = tail call noalias ptr @malloc(i64 noundef %12) #28
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 84
  %15 = load i32, ptr %14, align 4, !tbaa !45
  %16 = load i32, ptr %2, align 8
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %16, 1
  %20 = sub i32 %19, %18
  %21 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %20, i1 true)
  %22 = xor i32 %21, 31
  %23 = sub nuw nsw i32 33, %21
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %23, ptr %24, align 8, !tbaa !29
  %25 = shl nuw i32 4, %22
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %25, ptr %26, align 4, !tbaa !32
  %27 = add i32 %25, -1
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %27, ptr %28, align 8, !tbaa !33
  %29 = zext i32 %25 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = tail call noalias ptr @malloc(i64 noundef %30) #28
  store ptr %31, ptr %3, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = icmp sgt i32 %15, 0
  br i1 %34, label %35, label %76

35:                                               ; preds = %33
  tail call fastcc void @COVER_tryParameters.cold.3() #27
  br label %70

36:                                               ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %31, i8 -1, i64 %30, i1 false)
  %37 = icmp ne ptr %9, null
  %38 = icmp ne ptr %13, null
  %39 = and i1 %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = icmp sgt i32 %15, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %40
  tail call fastcc void @COVER_tryParameters.cold.1() #27
  br label %70

43:                                               ; preds = %36
  %44 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %45 = load ptr, ptr %44, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %13, ptr align 4 %45, i64 %12, i1 false)
  %46 = call fastcc i64 @COVER_buildDictionary(ptr noundef nonnull %5, ptr noundef nonnull %13, ptr noundef %3, ptr noundef nonnull %9, i64 noundef %8, i32 %16, i32 %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %47 = getelementptr inbounds nuw i8, ptr %9, i64 %46
  %48 = sub i64 %8, %46
  %49 = load ptr, ptr %5, align 8, !tbaa !46
  %50 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %51 = load ptr, ptr %50, align 8, !tbaa !47
  %52 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %53 = load i64, ptr %52, align 8, !tbaa !49
  %54 = trunc i64 %53 to i32
  %55 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %56 = load i64, ptr %55, align 8, !tbaa !48
  %57 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %58 = load ptr, ptr %57, align 8, !tbaa !38
  call void @COVER_selectDict(ptr dead_on_unwind nonnull writable sret(%struct.COVER_dictSelection) align 8 %4, ptr noundef nonnull %47, i64 noundef %8, i64 noundef %48, ptr noundef %49, ptr noundef %51, i32 noundef %54, i64 noundef %53, i64 noundef %56, ptr noundef nonnull byval(%struct.ZDICT_cover_params_t) align 8 %2, ptr noundef %58, i64 poison)
  %59 = load ptr, ptr %4, align 8, !tbaa !151
  %60 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %61 = load i64, ptr %60, align 8, !tbaa !5
  %62 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %63 = load i64, ptr %62, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %64 = icmp ugt i64 %63, -120
  %65 = icmp eq ptr %59, null
  %66 = select i1 %64, i1 true, i1 %65
  %67 = icmp sgt i32 %15, 0
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %69, label %76

69:                                               ; preds = %43
  tail call fastcc void @COVER_tryParameters.cold.2() #27
  br label %70

70:                                               ; preds = %69, %42, %35
  %71 = phi ptr [ null, %42 ], [ %59, %69 ], [ null, %35 ]
  %72 = phi i64 [ 0, %42 ], [ %61, %69 ], [ 0, %35 ]
  %73 = phi i64 [ -1, %42 ], [ %63, %69 ], [ -1, %35 ]
  %74 = load ptr, ptr @stderr, align 8, !tbaa !14
  %75 = tail call i32 @fflush(ptr noundef %74)
  br label %76

76:                                               ; preds = %70, %43, %40, %33
  %77 = phi ptr [ null, %33 ], [ %59, %43 ], [ null, %40 ], [ %71, %70 ]
  %78 = phi i64 [ 0, %33 ], [ %61, %43 ], [ 0, %40 ], [ %72, %70 ]
  %79 = phi i64 [ -1, %33 ], [ %63, %43 ], [ -1, %40 ], [ %73, %70 ]
  tail call void @free(ptr noundef %9) #29
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %81 = load ptr, ptr %80, align 8, !tbaa !141
  %82 = icmp eq ptr %81, null
  br i1 %82, label %110, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %85 = load i64, ptr %84, align 8, !tbaa !79
  %86 = add i64 %85, -1
  store i64 %86, ptr %84, align 8, !tbaa !79
  %87 = getelementptr inbounds nuw i8, ptr %81, i64 80
  %88 = load i64, ptr %87, align 8, !tbaa !77
  %89 = icmp ult i64 %79, %88
  br i1 %89, label %90, label %110

90:                                               ; preds = %83
  %91 = getelementptr inbounds nuw i8, ptr %81, i64 16
  %92 = load ptr, ptr %91, align 8, !tbaa !81
  %93 = icmp eq ptr %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds nuw i8, ptr %81, i64 24
  %96 = load i64, ptr %95, align 8, !tbaa !86
  %97 = icmp ult i64 %96, %78
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  tail call void @free(ptr noundef nonnull %92) #29
  br label %99

99:                                               ; preds = %98, %90
  %100 = tail call noalias ptr @malloc(i64 noundef %78) #28
  store ptr %100, ptr %91, align 8, !tbaa !81
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  store i64 -1, ptr %87, align 8, !tbaa !77
  %103 = getelementptr inbounds nuw i8, ptr %81, i64 24
  store i64 0, ptr %103, align 8, !tbaa !86
  br label %110

104:                                              ; preds = %99, %94
  %105 = phi ptr [ %100, %99 ], [ %92, %94 ]
  %106 = icmp eq ptr %77, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %105, ptr nonnull align 1 %77, i64 %78, i1 false)
  %108 = getelementptr inbounds nuw i8, ptr %81, i64 24
  store i64 %78, ptr %108, align 8, !tbaa !86
  %109 = getelementptr inbounds nuw i8, ptr %81, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %109, ptr noundef nonnull readonly align 8 dereferenceable(48) %2, i64 48, i1 false)
  store i64 %79, ptr %87, align 8, !tbaa !77
  br label %110

110:                                              ; preds = %107, %104, %102, %83, %76
  tail call void @free(ptr noundef nonnull %0) #29
  br i1 %32, label %112, label %111

111:                                              ; preds = %110
  tail call void @free(ptr noundef nonnull %31) #29
  br label %112

112:                                              ; preds = %111, %110
  tail call void @free(ptr noundef %77) #29
  tail call void @free(ptr noundef %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #17

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @COVER_cmp8(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) unnamed_addr #18 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = icmp eq i32 %5, 8
  %7 = shl i32 %5, 3
  %8 = zext nneg i32 %7 to i64
  %9 = shl nsw i64 -1, %8
  %10 = xor i64 %9, -1
  %11 = select i1 %6, i64 -1, i64 %10
  %12 = load ptr, ptr %0, align 8, !tbaa !46
  %13 = load i32, ptr %1, align 4, !tbaa !55
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 %14
  %16 = load i64, ptr %15, align 1, !tbaa !5
  %17 = and i64 %11, %16
  %18 = load i32, ptr %2, align 4, !tbaa !55
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds nuw i8, ptr %12, i64 %19
  %21 = load i64, ptr %20, align 1, !tbaa !5
  %22 = and i64 %21, %11
  %23 = tail call i32 @llvm.ucmp.i32.i64(i64 %17, i64 %22)
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @COVER_cmp(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) unnamed_addr #19 {
  %4 = load i32, ptr %1, align 4, !tbaa !55
  %5 = load i32, ptr %2, align 4, !tbaa !55
  %6 = load ptr, ptr %0, align 8, !tbaa !46
  %7 = zext i32 %4 to i64
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 %7
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %12 = load i32, ptr %11, align 8, !tbaa !51
  %13 = zext i32 %12 to i64
  %14 = tail call i32 @memcmp(ptr noundef %8, ptr noundef %10, i64 noundef %13) #32
  ret i32 %14
}

declare void @qsort_r(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @COVER_strict_cmp8(ptr noundef readonly captures(address) %0, ptr noundef readonly captures(address) %1, ptr noundef readonly captures(none) %2) #18 {
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = icmp eq i32 %5, 8
  %7 = shl i32 %5, 3
  %8 = zext nneg i32 %7 to i64
  %9 = shl nsw i64 -1, %8
  %10 = xor i64 %9, -1
  %11 = select i1 %6, i64 -1, i64 %10
  %12 = load ptr, ptr %2, align 8, !tbaa !46
  %13 = load i32, ptr %0, align 4, !tbaa !55
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 %14
  %16 = load i64, ptr %15, align 1, !tbaa !5
  %17 = and i64 %11, %16
  %18 = load i32, ptr %1, align 4, !tbaa !55
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds nuw i8, ptr %12, i64 %19
  %21 = load i64, ptr %20, align 1, !tbaa !5
  %22 = and i64 %21, %11
  %23 = tail call range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %17, i64 %22)
  %24 = icmp eq i64 %17, %22
  %25 = icmp ult ptr %0, %1
  %26 = select i1 %25, i32 -1, i32 1
  %27 = select i1 %24, i32 %26, i32 %23
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @COVER_strict_cmp(ptr noundef readonly captures(address) %0, ptr noundef readonly captures(address) %1, ptr noundef readonly captures(none) %2) #19 {
  %4 = load i32, ptr %0, align 4, !tbaa !55
  %5 = load i32, ptr %1, align 4, !tbaa !55
  %6 = load ptr, ptr %2, align 8, !tbaa !46
  %7 = zext i32 %4 to i64
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 %7
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %12 = load i32, ptr %11, align 8, !tbaa !51
  %13 = zext i32 %12 to i64
  %14 = tail call i32 @memcmp(ptr noundef %8, ptr noundef %10, i64 noundef %13) #32
  %15 = icmp eq i32 %14, 0
  %16 = icmp ult ptr %0, %1
  %17 = select i1 %16, i32 -1, i32 1
  %18 = select i1 %15, i32 %17, i32 %14
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #21

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #17

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #17

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #17

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umax.v2i64(<2 x i64>, <2 x i64>) #17

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.umax.v2i64(<2 x i64>) #17

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_trainFromBuffer_cover.cold.1() unnamed_addr #23 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !14
  %2 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 20, i64 1, ptr %1) #30
  %3 = load ptr, ptr @stderr, align 8, !tbaa !14
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_trainFromBuffer_cover.cold.2(i64 range(i64 0, -119) %0) unnamed_addr #23 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !14
  %3 = trunc i64 %0 to i32
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %3) #26
  %5 = load ptr, ptr @stderr, align 8, !tbaa !14
  %6 = tail call i32 @fflush(ptr noundef %5)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_trainFromBuffer_cover.cold.3() unnamed_addr #23 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !14
  %2 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 43, i64 1, ptr %1) #30
  %3 = load ptr, ptr @stderr, align 8, !tbaa !14
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_trainFromBuffer_cover.cold.4() unnamed_addr #23 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !14
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef 256) #26
  %3 = load ptr, ptr @stderr, align 8, !tbaa !14
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_trainFromBuffer_cover.cold.5() unnamed_addr #23 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !14
  %2 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 40, i64 1, ptr %1) #30
  %3 = load ptr, ptr @stderr, align 8, !tbaa !14
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_trainFromBuffer_cover.cold.6() unnamed_addr #23 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !14
  %2 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 27, i64 1, ptr %1) #30
  %3 = load ptr, ptr @stderr, align 8, !tbaa !14
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @COVER_ctx_init.cold.1(i64 %0, i32 range(i32 5, 0) %1, i64 %2, i32 %3) unnamed_addr #23 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !14
  %6 = trunc i64 %0 to i32
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.19, i32 noundef %1, i32 noundef %6) #26
  %8 = load ptr, ptr @stderr, align 8, !tbaa !14
  %9 = tail call i32 @fflush(ptr noundef %8)
  %10 = load ptr, ptr @stderr, align 8, !tbaa !14
  %11 = trunc i64 %2 to i32
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.20, i32 noundef %3, i32 noundef %11) #26
  %13 = load ptr, ptr @stderr, align 8, !tbaa !14
  %14 = tail call i32 @fflush(ptr noundef %13)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @COVER_ctx_init.cold.2() unnamed_addr #23 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !14
  %2 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr %1) #30
  %3 = load ptr, ptr @stderr, align 8, !tbaa !14
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @COVER_ctx_init.cold.3(ptr nonnull readonly captures(none) %0, ptr nonnull writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #23 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !14
  %4 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 35, i64 1, ptr %3) #30
  %5 = load ptr, ptr @stderr, align 8, !tbaa !14
  %6 = tail call i32 @fflush(ptr noundef %5)
  %7 = load ptr, ptr %0, align 8, !tbaa !35
  store ptr %7, ptr %1, align 8
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @COVER_ctx_init.cold.4() unnamed_addr #23 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !14
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef 0) #26
  %3 = load ptr, ptr @stderr, align 8, !tbaa !14
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @COVER_ctx_init.cold.5(i32 range(i32 0, 5) %0) unnamed_addr #23 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !14
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef %0) #26
  %4 = load ptr, ptr @stderr, align 8, !tbaa !14
  %5 = tail call i32 @fflush(ptr noundef %4)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @COVER_ctx_init.cold.6(i64 %0) unnamed_addr #23 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !14
  %3 = lshr i64 %0, 20
  %4 = trunc i64 %3 to i32
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %4, i32 noundef 4095) #26
  %6 = load ptr, ptr @stderr, align 8, !tbaa !14
  %7 = tail call i32 @fflush(ptr noundef %6)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @COVER_buildDictionary.cold.1(i32 %0, i32 %1) unnamed_addr #23 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !14
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.24, i32 noundef %0, i32 noundef %1) #26
  %5 = load ptr, ptr @stderr, align 8, !tbaa !14
  %6 = tail call i32 @fflush(ptr noundef %5)
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal fastcc void @COVER_buildDictionary.cold.2(i64 range(i64 1, 0) %0, i64 %1, ptr nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #24 {
  %4 = tail call i64 @clock() #29
  store i64 %4, ptr %2, align 8
  %5 = load ptr, ptr @stderr, align 8, !tbaa !14
  %6 = sub i64 %0, %1
  %7 = mul i64 %6, 100
  %8 = udiv i64 %7, %0
  %9 = trunc i64 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %9) #26
  %11 = load ptr, ptr @stderr, align 8, !tbaa !14
  %12 = tail call i32 @fflush(ptr noundef %11)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @COVER_buildDictionary.cold.3() unnamed_addr #23 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !14
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #26
  %3 = load ptr, ptr @stderr, align 8, !tbaa !14
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.1(i32 range(i32 1, 3903) %0) unnamed_addr #23 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !14
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %0) #26
  %4 = load ptr, ptr @stderr, align 8, !tbaa !14
  %5 = tail call i32 @fflush(ptr noundef %4)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.2() unnamed_addr #23 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !14
  %2 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 29, i64 1, ptr %1) #30
  %3 = load ptr, ptr @stderr, align 8, !tbaa !14
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.3(i32 %0) unnamed_addr #23 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !14
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %0) #26
  %4 = load ptr, ptr @stderr, align 8, !tbaa !14
  %5 = tail call i32 @fflush(ptr noundef %4)
  ret void
}

; Function Attrs: cold minsize nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.4(i32 %0, i32 range(i32 1, 3903) %1, ptr nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #24 {
  %4 = tail call i64 @clock() #29
  store i64 %4, ptr %2, align 8
  %5 = load ptr, ptr @stderr, align 8, !tbaa !14
  %6 = mul i32 %0, 100
  %7 = udiv i32 %6, %1
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %7) #26
  %9 = load ptr, ptr @stderr, align 8, !tbaa !14
  %10 = tail call i32 @fflush(ptr noundef %9)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.5() unnamed_addr #23 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !14
  %2 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 27, i64 1, ptr %1) #30
  %3 = load ptr, ptr @stderr, align 8, !tbaa !14
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.6() unnamed_addr #23 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !14
  %2 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 30, i64 1, ptr %1) #30
  %3 = load ptr, ptr @stderr, align 8, !tbaa !14
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.7() unnamed_addr #23 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !14
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #26
  %3 = load ptr, ptr @stderr, align 8, !tbaa !14
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.8() unnamed_addr #23 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !14
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef 256) #26
  %3 = load ptr, ptr @stderr, align 8, !tbaa !14
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.9() unnamed_addr #23 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !14
  %2 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 40, i64 1, ptr %1) #30
  %3 = load ptr, ptr @stderr, align 8, !tbaa !14
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.10() unnamed_addr #23 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !14
  %2 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 21, i64 1, ptr %1) #30
  %3 = load ptr, ptr @stderr, align 8, !tbaa !14
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @ZDICT_optimizeTrainFromBuffer_cover.cold.11() unnamed_addr #23 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !14
  %2 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 21, i64 1, ptr %1) #30
  %3 = load ptr, ptr @stderr, align 8, !tbaa !14
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @COVER_tryParameters.cold.1() unnamed_addr #23 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !14
  %2 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 42, i64 1, ptr %1) #30
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @COVER_tryParameters.cold.2() unnamed_addr #23 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !14
  %2 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 28, i64 1, ptr %1) #30
  ret void
}

; Function Attrs: cold minsize nofree nounwind uwtable
define internal fastcc void @COVER_tryParameters.cold.3() unnamed_addr #23 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !14
  %2 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 43, i64 1, ptr %1) #30
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #25

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #25

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree nounwind }
attributes #23 = { cold minsize nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold minsize nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #26 = { cold nounwind }
attributes #27 = { noinline }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind }
attributes #30 = { cold }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10, !12, !11}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!18, !19, i64 36}
!18 = !{!"", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !20, i64 16, !19, i64 24, !19, i64 28, !21, i64 32}
!19 = !{!"int", !7, i64 0}
!20 = !{!"double", !7, i64 0}
!21 = !{!"", !19, i64 0, !19, i64 4, !19, i64 8}
!22 = !{!18, !20, i64 16}
!23 = !{!18, !19, i64 4}
!24 = !{!25, !6, i64 56}
!25 = !{!"", !26, i64 0, !27, i64 8, !27, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !28, i64 48, !6, i64 56, !28, i64 64, !28, i64 72, !19, i64 80, !19, i64 84}
!26 = !{!"p1 omnipotent char", !16, i64 0}
!27 = !{!"p1 long", !16, i64 0}
!28 = !{!"p1 int", !16, i64 0}
!29 = !{!30, !19, i64 8}
!30 = !{!"COVER_map_s", !31, i64 0, !19, i64 8, !19, i64 12, !19, i64 16}
!31 = !{!"p1 _ZTS18COVER_map_pair_t_s", !16, i64 0}
!32 = !{!30, !19, i64 12}
!33 = !{!30, !19, i64 16}
!34 = !{!30, !31, i64 0}
!35 = !{!25, !28, i64 48}
!36 = !{!25, !28, i64 64}
!37 = !{!25, !28, i64 72}
!38 = !{!25, !27, i64 8}
!39 = distinct !{!39, !10, !11, !12}
!40 = distinct !{!40, !10, !12, !11}
!41 = distinct !{!41, !10, !11, !12}
!42 = distinct !{!42, !10, !12, !11}
!43 = distinct !{!43, !10, !11, !12}
!44 = distinct !{!44, !10, !12, !11}
!45 = !{!25, !19, i64 84}
!46 = !{!25, !26, i64 0}
!47 = !{!25, !27, i64 16}
!48 = !{!25, !6, i64 24}
!49 = !{!25, !6, i64 32}
!50 = !{!25, !6, i64 40}
!51 = !{!25, !19, i64 80}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!19, !19, i64 0}
!56 = distinct !{!56, !10, !11, !12}
!57 = distinct !{!57, !10, !11}
!58 = distinct !{!58, !10}
!59 = !{ptr @COVER_cmp, ptr @COVER_cmp8}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !10}
!62 = distinct !{!62, !10}
!63 = !{!64, !19, i64 4}
!64 = !{!"COVER_map_pair_t_s", !19, i64 0, !19, i64 4}
!65 = !{!64, !19, i64 0}
!66 = distinct !{!66, !10}
!67 = distinct !{!67, !54}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !10}
!70 = !{}
!71 = !{!"branch_weights", i32 1, i32 1048575}
!72 = distinct !{!72, !10}
!73 = distinct !{!73, !10, !11, !12}
!74 = distinct !{!74, !10, !12, !11}
!75 = !{!18, !19, i64 32}
!76 = distinct !{!76, !10}
!77 = !{!78, !6, i64 80}
!78 = !{!"COVER_best_s", !19, i64 0, !19, i64 4, !6, i64 8, !16, i64 16, !6, i64 24, !18, i64 32, !6, i64 80}
!79 = !{!78, !6, i64 8}
!80 = distinct !{!80, !10}
!81 = !{!78, !16, i64 16}
!82 = !{!83, !26, i64 0}
!83 = !{!"COVER_dictSelection", !26, i64 0, !6, i64 8, !6, i64 16}
!84 = !{!83, !6, i64 16}
!85 = !{!83, !6, i64 8}
!86 = !{!78, !6, i64 24}
!87 = !{i64 0, i64 4, !55, i64 4, i64 4, !55, i64 8, i64 4, !55, i64 12, i64 4, !55, i64 16, i64 8, !88, i64 24, i64 4, !55, i64 28, i64 4, !55, i64 32, i64 4, !55, i64 36, i64 4, !55, i64 40, i64 4, !55}
!88 = !{!20, !20, i64 0}
!89 = !{!90}
!90 = distinct !{!90, !91, !"setDictSelection: argument 0"}
!91 = distinct !{!91, !"setDictSelection"}
!92 = !{!18, !19, i64 28}
!93 = !{!94}
!94 = distinct !{!94, !95, !"COVER_dictSelectionError: argument 0"}
!95 = distinct !{!95, !"COVER_dictSelectionError"}
!96 = !{!97, !94}
!97 = distinct !{!97, !98, !"setDictSelection: argument 0"}
!98 = distinct !{!98, !"setDictSelection"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"COVER_dictSelectionError: argument 0"}
!101 = distinct !{!101, !"COVER_dictSelectionError"}
!102 = !{!103, !100}
!103 = distinct !{!103, !104, !"setDictSelection: argument 0"}
!104 = distinct !{!104, !"setDictSelection"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"COVER_dictSelectionError: argument 0"}
!107 = distinct !{!107, !"COVER_dictSelectionError"}
!108 = !{!109, !106}
!109 = distinct !{!109, !110, !"setDictSelection: argument 0"}
!110 = distinct !{!110, !"setDictSelection"}
!111 = !{!18, !19, i64 24}
!112 = !{!113}
!113 = distinct !{!113, !114, !"setDictSelection: argument 0"}
!114 = distinct !{!114, !"setDictSelection"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"COVER_dictSelectionError: argument 0"}
!117 = distinct !{!117, !"COVER_dictSelectionError"}
!118 = !{!119, !116}
!119 = distinct !{!119, !120, !"setDictSelection: argument 0"}
!120 = distinct !{!120, !"setDictSelection"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"COVER_dictSelectionError: argument 0"}
!123 = distinct !{!123, !"COVER_dictSelectionError"}
!124 = !{!125, !122}
!125 = distinct !{!125, !126, !"setDictSelection: argument 0"}
!126 = distinct !{!126, !"setDictSelection"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"setDictSelection: argument 0"}
!129 = distinct !{!129, !"setDictSelection"}
!130 = distinct !{!130, !10}
!131 = !{!132}
!132 = distinct !{!132, !133, !"setDictSelection: argument 0"}
!133 = distinct !{!133, !"setDictSelection"}
!134 = !{!18, !19, i64 12}
!135 = !{!18, !19, i64 0}
!136 = !{!18, !19, i64 8}
!137 = !{!"branch_weights", i32 1, i32 2097151}
!138 = !{!139, !16, i64 0}
!139 = !{!"COVER_tryParameters_data_s", !16, i64 0, !140, i64 8, !6, i64 16, !18, i64 24}
!140 = !{!"p1 _ZTS12COVER_best_s", !16, i64 0}
!141 = !{!139, !140, i64 8}
!142 = !{!139, !6, i64 16}
!143 = !{!139, !19, i64 24}
!144 = !{!139, !19, i64 28}
!145 = !{!139, !20, i64 40}
!146 = !{!139, !19, i64 32}
!147 = !{!139, !19, i64 48}
!148 = !{!139, !19, i64 60}
!149 = distinct !{!149, !10}
!150 = distinct !{!150, !10}
!151 = !{!26, !26, i64 0}
