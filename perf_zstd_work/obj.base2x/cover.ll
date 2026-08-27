; ModuleID = '<stdin>'
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
  br i1 %6, label %.preheader.preheader, label %7

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
  br i1 %24, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %21, %4
  %.ph = phi i64 [ 0, %4 ], [ %8, %21 ]
  %.ph11 = phi i64 [ 0, %4 ], [ %23, %21 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %25 = phi i64 [ %30, %.preheader ], [ %.ph, %.preheader.preheader ]
  %26 = phi i64 [ %29, %.preheader ], [ %.ph11, %.preheader.preheader ]
  %27 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %25
  %28 = load i64, ptr %27, align 8, !tbaa !5
  %29 = add i64 %28, %26
  %30 = add nuw nsw i64 %25, 1
  %31 = icmp eq i64 %30, %5
  br i1 %31, label %.loopexit, label %.preheader, !llvm.loop !13

.loopexit:                                        ; preds = %.preheader, %21, %2
  %32 = phi i64 [ 0, %2 ], [ %23, %21 ], [ %29, %.preheader ]
  ret i64 %32
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
  %reass.sub16 = sub i32 %16, %14
  %57 = add i32 %reass.sub16, 1
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
  br i1 %10, label %.preheader149.preheader, label %11

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
  br i1 %28, label %.loopexit31, label %.preheader149.preheader

.preheader149.preheader:                          ; preds = %25, %7
  %.ph157 = phi i64 [ 0, %7 ], [ %12, %25 ]
  %.ph158 = phi i64 [ 0, %7 ], [ %27, %25 ]
  br label %.preheader149

.preheader149:                                    ; preds = %.preheader149.preheader, %.preheader149
  %29 = phi i64 [ %34, %.preheader149 ], [ %.ph157, %.preheader149.preheader ]
  %30 = phi i64 [ %33, %.preheader149 ], [ %.ph158, %.preheader149.preheader ]
  %31 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %29
  %32 = load i64, ptr %31, align 8, !tbaa !5
  %33 = add i64 %32, %30
  %34 = add nuw nsw i64 %29, 1
  %35 = icmp eq i64 %34, %9
  br i1 %35, label %.loopexit31, label %.preheader149, !llvm.loop !40

.loopexit31:                                      ; preds = %.preheader149, %25
  %36 = phi i64 [ %27, %25 ], [ %33, %.preheader149 ]
  %37 = fcmp olt double %5, 1.000000e+00
  %38 = uitofp i32 %3 to double
  %39 = fmul double %5, %38
  %40 = fptoui double %39 to i32
  %41 = select i1 %37, i32 %40, i32 0
  %42 = select i1 %37, i32 %40, i32 %3
  %43 = sub i32 %3, %41
  br i1 %37, label %44, label %.loopexit29

44:                                               ; preds = %.loopexit31
  %45 = icmp eq i32 %40, 0
  br i1 %45, label %.loopexit30, label %46

46:                                               ; preds = %44
  %47 = zext i32 %40 to i64
  %48 = icmp ult i32 %40, 4
  br i1 %48, label %.preheader143.preheader, label %49

49:                                               ; preds = %46
  %50 = and i64 %47, 4294967292
  br label %51

51:                                               ; preds = %51, %49
  %52 = phi i64 [ 0, %49 ], [ %61, %51 ]
  %53 = phi <2 x i64> [ zeroinitializer, %49 ], [ %59, %51 ]
  %54 = phi <2 x i64> [ zeroinitializer, %49 ], [ %60, %51 ]
  %55 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %52
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 16
  %57 = load <2 x i64>, ptr %55, align 8, !tbaa !5
  %58 = load <2 x i64>, ptr %56, align 8, !tbaa !5
  %59 = add <2 x i64> %57, %53
  %60 = add <2 x i64> %58, %54
  %61 = add nuw nsw i64 %52, 4
  %62 = icmp eq i64 %61, %50
  br i1 %62, label %63, label %51, !llvm.loop !41

63:                                               ; preds = %51
  %64 = add <2 x i64> %60, %59
  %65 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %64)
  %66 = icmp eq i64 %50, %47
  br i1 %66, label %.loopexit30, label %.preheader143.preheader

.preheader143.preheader:                          ; preds = %63, %46
  %.ph152 = phi i64 [ 0, %46 ], [ %50, %63 ]
  %.ph153 = phi i64 [ 0, %46 ], [ %65, %63 ]
  br label %.preheader143

.preheader143:                                    ; preds = %.preheader143.preheader, %.preheader143
  %67 = phi i64 [ %72, %.preheader143 ], [ %.ph152, %.preheader143.preheader ]
  %68 = phi i64 [ %71, %.preheader143 ], [ %.ph153, %.preheader143.preheader ]
  %69 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %67
  %70 = load i64, ptr %69, align 8, !tbaa !5
  %71 = add i64 %70, %68
  %72 = add nuw nsw i64 %67, 1
  %73 = icmp eq i64 %72, %47
  br i1 %73, label %.loopexit30, label %.preheader143, !llvm.loop !42

.loopexit30:                                      ; preds = %.preheader143, %63, %44
  %74 = phi i64 [ 0, %44 ], [ %47, %63 ], [ %47, %.preheader143 ]
  %75 = phi i64 [ 0, %44 ], [ %65, %63 ], [ %71, %.preheader143 ]
  %76 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %74
  %77 = icmp eq i32 %3, %40
  br i1 %77, label %.loopexit29, label %78

78:                                               ; preds = %.loopexit30
  %79 = zext i32 %43 to i64
  %80 = icmp ult i32 %43, 4
  br i1 %80, label %.preheader137.preheader, label %81

81:                                               ; preds = %78
  %82 = and i64 %79, 4294967292
  br label %83

83:                                               ; preds = %83, %81
  %84 = phi i64 [ 0, %81 ], [ %93, %83 ]
  %85 = phi <2 x i64> [ zeroinitializer, %81 ], [ %91, %83 ]
  %86 = phi <2 x i64> [ zeroinitializer, %81 ], [ %92, %83 ]
  %87 = getelementptr inbounds nuw [8 x i8], ptr %76, i64 %84
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 16
  %89 = load <2 x i64>, ptr %87, align 8, !tbaa !5
  %90 = load <2 x i64>, ptr %88, align 8, !tbaa !5
  %91 = add <2 x i64> %89, %85
  %92 = add <2 x i64> %90, %86
  %93 = add nuw i64 %84, 4
  %94 = icmp eq i64 %93, %82
  br i1 %94, label %95, label %83, !llvm.loop !43

95:                                               ; preds = %83
  %96 = add <2 x i64> %92, %91
  %97 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %96)
  %98 = icmp eq i64 %82, %79
  br i1 %98, label %.loopexit29, label %.preheader137.preheader

.preheader137.preheader:                          ; preds = %95, %78
  %.ph147 = phi i64 [ 0, %78 ], [ %82, %95 ]
  %.ph148 = phi i64 [ 0, %78 ], [ %97, %95 ]
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.preheader, %.preheader137
  %99 = phi i64 [ %104, %.preheader137 ], [ %.ph147, %.preheader137.preheader ]
  %100 = phi i64 [ %103, %.preheader137 ], [ %.ph148, %.preheader137.preheader ]
  %101 = getelementptr inbounds nuw [8 x i8], ptr %76, i64 %99
  %102 = load i64, ptr %101, align 8, !tbaa !5
  %103 = add i64 %102, %100
  %104 = add nuw nsw i64 %99, 1
  %105 = icmp eq i64 %104, %79
  br i1 %105, label %.loopexit29, label %.preheader137, !llvm.loop !44

.loopexit29:                                      ; preds = %.preheader137, %95, %.loopexit30, %.loopexit31
  %106 = phi i64 [ %36, %.loopexit31 ], [ %75, %.loopexit30 ], [ %75, %95 ], [ %75, %.preheader137 ]
  %107 = phi i64 [ %36, %.loopexit31 ], [ 0, %.loopexit30 ], [ %97, %95 ], [ %103, %.preheader137 ]
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %6, ptr %108, align 4, !tbaa !45
  %109 = tail call i32 @llvm.umax.i32(i32 %4, i32 8)
  %110 = zext i32 %109 to i64
  %111 = icmp ult i64 %36, %110
  %112 = icmp ugt i64 %36, 4294967294
  %113 = or i1 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %.loopexit29
  %115 = icmp sgt i32 %6, 0
  br i1 %115, label %116, label %356

116:                                              ; preds = %114
  tail call fastcc void @COVER_ctx_init.cold.6(i64 %36) #27
  br label %356

117:                                              ; preds = %.loopexit29
  %118 = icmp ult i32 %42, 5
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = icmp sgt i32 %6, 0
  br i1 %120, label %121, label %356

121:                                              ; preds = %119
  tail call fastcc void @COVER_ctx_init.cold.5(i32 %42) #27
  br label %356

122:                                              ; preds = %117
  %123 = icmp eq i32 %3, %41
  br i1 %123, label %124, label %127

124:                                              ; preds = %122
  %125 = icmp sgt i32 %6, 0
  br i1 %125, label %126, label %356

126:                                              ; preds = %124
  tail call fastcc void @COVER_ctx_init.cold.4() #27
  br label %356

127:                                              ; preds = %122
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  %128 = icmp sgt i32 %6, 1
  br i1 %128, label %129, label %130

129:                                              ; preds = %127
  tail call fastcc void @COVER_ctx_init.cold.1(i64 %106, i32 %42, i64 %107, i32 %43) #27
  br label %130

130:                                              ; preds = %129, %127
  store ptr %1, ptr %0, align 8, !tbaa !46
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %131, align 8, !tbaa !47
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %9, ptr %132, align 8, !tbaa !48
  %133 = zext i32 %42 to i64
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %133, ptr %134, align 8, !tbaa !49
  %135 = zext i32 %43 to i64
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %135, ptr %136, align 8, !tbaa !50
  %137 = sub i64 %106, %110
  %138 = add i64 %137, 1
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %138, ptr %139, align 8, !tbaa !24
  %140 = shl i64 %138, 2
  %141 = tail call noalias ptr @malloc(i64 noundef %140) #28
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %141, ptr %142, align 8, !tbaa !35
  %143 = tail call noalias ptr @malloc(i64 noundef %140) #28
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %143, ptr %144, align 8, !tbaa !37
  %145 = add i32 %3, 1
  %146 = zext i32 %145 to i64
  %147 = shl nuw nsw i64 %146, 3
  %148 = tail call noalias ptr @malloc(i64 noundef %147) #28
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %148, ptr %149, align 8, !tbaa !38
  %150 = icmp eq ptr %141, null
  br i1 %150, label %155, label %151

151:                                              ; preds = %130
  %152 = icmp eq ptr %143, null
  %153 = icmp eq ptr %148, null
  %154 = or i1 %152, %153
  br i1 %154, label %155, label %176

155:                                              ; preds = %151, %130
  %156 = icmp sgt i32 %6, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call fastcc void @COVER_ctx_init.cold.3(ptr %142, ptr %8) #27
  %158 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi ptr [ %158, %157 ], [ %141, %155 ]
  %161 = icmp eq ptr %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %159
  tail call void @free(ptr noundef nonnull %160) #29
  store ptr null, ptr %142, align 8, !tbaa !35
  br label %163

163:                                              ; preds = %162, %159
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %165 = load ptr, ptr %164, align 8, !tbaa !36
  %166 = icmp eq ptr %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %163
  tail call void @free(ptr noundef nonnull %165) #29
  store ptr null, ptr %164, align 8, !tbaa !36
  br label %168

168:                                              ; preds = %167, %163
  %169 = load ptr, ptr %144, align 8, !tbaa !37
  %170 = icmp eq ptr %169, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %168
  tail call void @free(ptr noundef nonnull %169) #29
  store ptr null, ptr %144, align 8, !tbaa !37
  br label %172

172:                                              ; preds = %171, %168
  %173 = load ptr, ptr %149, align 8, !tbaa !38
  %174 = icmp eq ptr %173, null
  br i1 %174, label %356, label %175

175:                                              ; preds = %172
  tail call void @free(ptr noundef nonnull %173) #29
  store ptr null, ptr %149, align 8, !tbaa !38
  br label %356

176:                                              ; preds = %151
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %177, align 8, !tbaa !36
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %4, ptr %178, align 8, !tbaa !51
  store i64 0, ptr %148, align 8, !tbaa !5
  %179 = tail call i32 @llvm.umax.i32(i32 %145, i32 2)
  %180 = zext i32 %179 to i64
  %181 = getelementptr i8, ptr %2, i64 -8
  %182 = add nsw i64 %180, -1
  %183 = and i64 %182, 3
  %184 = icmp ult i32 %145, 5
  br i1 %184, label %.loopexit28, label %185

185:                                              ; preds = %176
  %186 = and i64 %182, -4
  %187 = getelementptr inbounds nuw i8, ptr %148, i64 8
  br label %188

188:                                              ; preds = %188, %185
  %189 = phi i64 [ 0, %185 ], [ %208, %188 ]
  %190 = phi i64 [ 1, %185 ], [ %210, %188 ]
  %191 = phi i64 [ 0, %185 ], [ %211, %188 ]
  %192 = getelementptr [8 x i8], ptr %181, i64 %190
  %193 = load i64, ptr %192, align 8, !tbaa !5
  %194 = add i64 %193, %189
  %195 = getelementptr inbounds nuw [8 x i8], ptr %148, i64 %190
  store i64 %194, ptr %195, align 8, !tbaa !5
  %196 = getelementptr [8 x i8], ptr %2, i64 %190
  %197 = load i64, ptr %196, align 8, !tbaa !5
  %198 = add i64 %197, %194
  %199 = getelementptr inbounds nuw [8 x i8], ptr %187, i64 %190
  store i64 %198, ptr %199, align 8, !tbaa !5
  %200 = add nuw nsw i64 %190, 2
  %201 = getelementptr [8 x i8], ptr %181, i64 %200
  %202 = load i64, ptr %201, align 8, !tbaa !5
  %203 = add i64 %202, %198
  %204 = getelementptr inbounds nuw [8 x i8], ptr %148, i64 %200
  store i64 %203, ptr %204, align 8, !tbaa !5
  %205 = add nuw nsw i64 %190, 3
  %206 = getelementptr [8 x i8], ptr %181, i64 %205
  %207 = load i64, ptr %206, align 8, !tbaa !5
  %208 = add i64 %207, %203
  %209 = getelementptr inbounds nuw [8 x i8], ptr %148, i64 %205
  store i64 %208, ptr %209, align 8, !tbaa !5
  %210 = add nuw nsw i64 %190, 4
  %211 = add nuw nsw i64 %191, 4
  %212 = icmp eq i64 %211, %186
  br i1 %212, label %.loopexit28, label %188, !llvm.loop !52

.loopexit28:                                      ; preds = %188, %176
  %213 = phi i64 [ 0, %176 ], [ %208, %188 ]
  %214 = phi i64 [ 1, %176 ], [ %210, %188 ]
  %215 = icmp eq i64 %183, 0
  br i1 %215, label %.loopexit27, label %.preheader26

.preheader26:                                     ; preds = %.loopexit28, %.preheader26
  %216 = phi i64 [ %221, %.preheader26 ], [ %213, %.loopexit28 ]
  %217 = phi i64 [ %223, %.preheader26 ], [ %214, %.loopexit28 ]
  %218 = phi i64 [ %224, %.preheader26 ], [ 0, %.loopexit28 ]
  %219 = getelementptr [8 x i8], ptr %181, i64 %217
  %220 = load i64, ptr %219, align 8, !tbaa !5
  %221 = add i64 %220, %216
  %222 = getelementptr inbounds nuw [8 x i8], ptr %148, i64 %217
  store i64 %221, ptr %222, align 8, !tbaa !5
  %223 = add nuw nsw i64 %217, 1
  %224 = add nuw nsw i64 %218, 1
  %225 = icmp eq i64 %224, %183
  br i1 %225, label %.loopexit27, label %.preheader26, !llvm.loop !53

.loopexit27:                                      ; preds = %.preheader26, %.loopexit28
  br i1 %128, label %226, label %233

226:                                              ; preds = %.loopexit27
  %227 = load ptr, ptr @stderr, align 8, !tbaa !14
  %228 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 34, i64 1, ptr %227) #30
  %229 = load ptr, ptr @stderr, align 8, !tbaa !14
  %230 = tail call i32 @fflush(ptr noundef %229)
  %231 = load i64, ptr %139, align 8, !tbaa !24
  %232 = load ptr, ptr %142, align 8, !tbaa !35
  br label %233

233:                                              ; preds = %226, %.loopexit27
  %234 = phi ptr [ %232, %226 ], [ %141, %.loopexit27 ]
  %235 = phi i64 [ %231, %226 ], [ %138, %.loopexit27 ]
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %.loopexit25, label %237

237:                                              ; preds = %233
  %238 = icmp ult i64 %235, 20
  br i1 %238, label %.preheader133.preheader, label %239

239:                                              ; preds = %237
  %240 = add i64 %235, -1
  %241 = and i64 %240, 4294967295
  %242 = icmp eq i64 %241, 4294967295
  %243 = icmp ugt i64 %240, 4294967295
  %244 = or i1 %243, %242
  br i1 %244, label %.preheader133.preheader, label %245

245:                                              ; preds = %239
  %246 = and i64 %235, 8589934584
  br label %247

247:                                              ; preds = %247, %245
  %248 = phi i64 [ 0, %245 ], [ %253, %247 ]
  %249 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %245 ], [ %254, %247 ]
  %250 = add <4 x i32> %249, splat (i32 4)
  %251 = getelementptr inbounds nuw [4 x i8], ptr %234, i64 %248
  %252 = getelementptr inbounds nuw i8, ptr %251, i64 16
  store <4 x i32> %249, ptr %251, align 4, !tbaa !55
  store <4 x i32> %250, ptr %252, align 4, !tbaa !55
  %253 = add nuw nsw i64 %248, 8
  %254 = add <4 x i32> %249, splat (i32 8)
  %255 = icmp eq i64 %253, %246
  br i1 %255, label %256, label %247, !llvm.loop !56

256:                                              ; preds = %247
  %257 = trunc i64 %246 to i32
  %258 = icmp eq i64 %235, %246
  br i1 %258, label %.loopexit25, label %.preheader133.preheader

.preheader133.preheader:                          ; preds = %256, %239, %237
  %.ph = phi i64 [ 0, %239 ], [ 0, %237 ], [ %246, %256 ]
  %.ph144 = phi i32 [ 0, %239 ], [ 0, %237 ], [ %257, %256 ]
  br label %.preheader133

.preheader133:                                    ; preds = %.preheader133.preheader, %.preheader133
  %259 = phi i64 [ %263, %.preheader133 ], [ %.ph, %.preheader133.preheader ]
  %260 = phi i32 [ %262, %.preheader133 ], [ %.ph144, %.preheader133.preheader ]
  %261 = getelementptr inbounds nuw [4 x i8], ptr %234, i64 %259
  store i32 %260, ptr %261, align 4, !tbaa !55
  %262 = add i32 %260, 1
  %263 = zext i32 %262 to i64
  %264 = icmp ugt i64 %235, %263
  br i1 %264, label %.preheader133, label %.loopexit25, !llvm.loop !57

.loopexit25:                                      ; preds = %.preheader133, %256, %233
  %265 = load i32, ptr %178, align 8, !tbaa !51
  %266 = icmp ult i32 %265, 9
  %267 = select i1 %266, ptr @COVER_strict_cmp8, ptr @COVER_strict_cmp
  tail call void @qsort_r(ptr noundef %234, i64 noundef %235, i64 noundef 4, ptr noundef nonnull %267, ptr noundef nonnull %0) #29
  br i1 %128, label %268, label %269

268:                                              ; preds = %.loopexit25
  tail call fastcc void @COVER_ctx_init.cold.2() #27
  br label %269

269:                                              ; preds = %268, %.loopexit25
  %270 = load ptr, ptr %142, align 8, !tbaa !35
  %271 = load i64, ptr %139, align 8, !tbaa !24
  %272 = load i32, ptr %178, align 8, !tbaa !51
  %273 = icmp ult i32 %272, 9
  %274 = select i1 %273, ptr @COVER_cmp8, ptr @COVER_cmp
  %275 = icmp eq i64 %271, 0
  br i1 %275, label %.loopexit24, label %.preheader

.preheader:                                       ; preds = %269, %351
  %276 = phi i64 [ %296, %351 ], [ 0, %269 ]
  %277 = phi ptr [ %.lcssa, %351 ], [ %270, %269 ]
  %278 = add nuw i64 %276, 1
  %279 = tail call i64 @llvm.umax.i64(i64 %271, i64 %278)
  %280 = add i64 %279, -1
  %281 = getelementptr inbounds nuw i8, ptr %277, i64 4
  %282 = icmp eq i64 %276, %280
  br i1 %282, label %._crit_edge119, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %283 = tail call i32 %274(ptr noundef nonnull %0, ptr noundef %277, ptr noundef nonnull %281) #29, !callees !58
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %.lr.ph46, label %._crit_edge, !llvm.loop !59

.lr.ph46:                                         ; preds = %.lr.ph.preheader
  %285 = getelementptr inbounds nuw i8, ptr %277, i64 8
  %286 = icmp eq i64 %278, %280
  br i1 %286, label %._crit_edge119, label %.lr.ph.lr.ph, !llvm.loop !59

.lr.ph.lr.ph:                                     ; preds = %.lr.ph46
  br label %.lr.ph, !llvm.loop !59

287:                                              ; preds = %.lr.ph
  %288 = getelementptr inbounds nuw i8, ptr %290, i64 4
  %289 = icmp eq i64 %293, %280
  br i1 %289, label %.._crit_edge119.loopexit_crit_edge, label %.lr.ph, !llvm.loop !59

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %287
  %290 = phi ptr [ %285, %.lr.ph.lr.ph ], [ %288, %287 ]
  %291 = phi ptr [ %281, %.lr.ph.lr.ph ], [ %290, %287 ]
  %292 = phi i64 [ %278, %.lr.ph.lr.ph ], [ %293, %287 ]
  %293 = add i64 %292, 1
  %294 = tail call i32 %274(ptr noundef nonnull %0, ptr noundef %277, ptr noundef nonnull %290) #29, !callees !58
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %287, label %.lr.ph.._crit_edge_crit_edge, !llvm.loop !59

.lr.ph.._crit_edge_crit_edge:                     ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %.lr.ph.._crit_edge_crit_edge, %.lr.ph.preheader
  %.lcssa29 = phi ptr [ %290, %.lr.ph.._crit_edge_crit_edge ], [ %281, %.lr.ph.preheader ]
  %.lcssa27 = phi ptr [ %291, %.lr.ph.._crit_edge_crit_edge ], [ %277, %.lr.ph.preheader ]
  %.lcssa25 = phi i64 [ %293, %.lr.ph.._crit_edge_crit_edge ], [ %278, %.lr.ph.preheader ]
  br label %._crit_edge119, !llvm.loop !59

.._crit_edge119.loopexit_crit_edge:               ; preds = %287
  br label %._crit_edge119, !llvm.loop !59

._crit_edge119:                                   ; preds = %.lr.ph46, %.._crit_edge119.loopexit_crit_edge, %._crit_edge, %.preheader
  %.lcssa102 = phi ptr [ %.lcssa27, %._crit_edge ], [ %277, %.preheader ], [ %290, %.._crit_edge119.loopexit_crit_edge ], [ %281, %.lr.ph46 ]
  %.lcssa = phi ptr [ %.lcssa29, %._crit_edge ], [ %281, %.preheader ], [ %288, %.._crit_edge119.loopexit_crit_edge ], [ %285, %.lr.ph46 ]
  %296 = phi i64 [ %.lcssa25, %._crit_edge ], [ %279, %.preheader ], [ %279, %.._crit_edge119.loopexit_crit_edge ], [ %279, %.lr.ph46 ]
  %297 = load ptr, ptr %142, align 8, !tbaa !35
  %298 = ptrtoint ptr %277 to i64
  %299 = ptrtoint ptr %297 to i64
  %300 = sub i64 %298, %299
  %301 = lshr exact i64 %300, 2
  %302 = trunc i64 %301 to i32
  %303 = load ptr, ptr %149, align 8, !tbaa !38
  %304 = load i64, ptr %132, align 8, !tbaa !48
  %305 = getelementptr inbounds nuw [8 x i8], ptr %303, i64 %304
  %306 = load i64, ptr %303, align 8, !tbaa !5
  %307 = load ptr, ptr %144, align 8, !tbaa !37
  %308 = ptrtoint ptr %305 to i64
  br label %309

309:                                              ; preds = %345, %._crit_edge119
  %310 = phi ptr [ %277, %._crit_edge119 ], [ %349, %345 ]
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
  %354 = icmp ult i64 %296, %271
  br i1 %354, label %.preheader, label %.loopexit24, !llvm.loop !62

.loopexit24:                                      ; preds = %351, %269
  %355 = phi ptr [ %270, %269 ], [ %297, %351 ]
  store ptr %355, ptr %177, align 8, !tbaa !36
  store ptr null, ptr %142, align 8, !tbaa !35
  br label %356

356:                                              ; preds = %.loopexit24, %175, %172, %126, %124, %121, %119, %116, %114
  %357 = phi i64 [ 0, %.loopexit24 ], [ -72, %116 ], [ -72, %114 ], [ -72, %121 ], [ -72, %119 ], [ -72, %126 ], [ -72, %124 ], [ -64, %172 ], [ -64, %175 ]
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

47:                                               ; preds = %348, %37
  %48 = phi i64 [ %4, %37 ], [ %349, %348 ]
  %49 = phi i64 [ 0, %37 ], [ %350, %348 ]
  %50 = phi i64 [ 0, %37 ], [ %353, %348 ]
  %51 = phi i64 [ 0, %37 ], [ %351, %348 ]
  %52 = trunc i64 %50 to i32
  %53 = mul i32 %24, %52
  %54 = add i32 %53, %24
  %55 = load ptr, ptr %2, align 8, !tbaa !34
  %56 = load i32, ptr %38, align 4, !tbaa !32
  %57 = zext i32 %56 to i64
  %58 = shl nuw nsw i64 %57, 3
  tail call void @llvm.memset.p0.i64(ptr align 4 %55, i8 -1, i64 %58, i1 false)
  %59 = icmp ult i32 %53, %54
  br i1 %59, label %60, label %345

60:                                               ; preds = %47
  %61 = load ptr, ptr %39, align 8, !tbaa !37
  %62 = load ptr, ptr %2, align 8, !tbaa !34
  %63 = zext i32 %53 to i64
  %64 = zext i32 %54 to i64
  br label %90

65:                                               ; preds = %239
  %66 = icmp eq i32 %245, %244
  br i1 %66, label %.loopexit28, label %67

67:                                               ; preds = %65
  %68 = sub i32 %244, %245
  %69 = add i32 %245, 1
  %70 = and i32 %68, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %67
  %73 = zext i32 %245 to i64
  %74 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !55
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !55
  %79 = icmp eq i32 %78, 0
  %80 = tail call i32 @llvm.umin.i32(i32 %244, i32 %245)
  %81 = select i1 %79, i32 %244, i32 %80
  %82 = select i1 %79, i32 %245, i32 %69
  br label %83

83:                                               ; preds = %72, %67
  %84 = phi i32 [ poison, %67 ], [ %81, %72 ]
  %85 = phi i32 [ poison, %67 ], [ %82, %72 ]
  %86 = phi i32 [ %245, %67 ], [ %69, %72 ]
  %87 = phi i32 [ %245, %67 ], [ %82, %72 ]
  %88 = phi i32 [ %244, %67 ], [ %81, %72 ]
  %89 = icmp eq i32 %244, %69
  br i1 %89, label %.loopexit32, label %.preheader31

90:                                               ; preds = %239, %60
  %91 = phi i64 [ %63, %60 ], [ %136, %239 ]
  %92 = phi i32 [ 0, %60 ], [ %245, %239 ]
  %93 = phi i32 [ 0, %60 ], [ %244, %239 ]
  %94 = phi i32 [ 0, %60 ], [ %243, %239 ]
  %95 = phi i32 [ 0, %60 ], [ %241, %239 ]
  %96 = phi i32 [ %53, %60 ], [ %240, %239 ]
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

.lr.ph:                                           ; preds = %.preheader25, %.lr.ph.preheader
  %113 = phi i32 [ %115, %.preheader25 ], [ %102, %.lr.ph.preheader ]
  %114 = add i32 %113, 1
  %115 = and i32 %114, %110
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
  br label %126

.preheader25._crit_edge:                          ; preds = %.preheader25, %.preheader25.preheader
  %.pre-phi66 = phi i64 [ %103, %.preheader25.preheader ], [ %116, %.preheader25 ]
  %.lcssa104 = phi i32 [ %106, %.preheader25.preheader ], [ %119, %.preheader25 ]
  %.split = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %.pre-phi66
  %124 = getelementptr inbounds nuw i8, ptr %.split, i64 4
  %125 = icmp eq i32 %.lcssa104, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %.preheader25._crit_edge, %.loopexit26
  %127 = phi ptr [ %123, %.loopexit26 ], [ %124, %.preheader25._crit_edge ]
  %128 = zext i32 %98 to i64
  %129 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !55
  %131 = add i32 %130, %95
  br label %132

132:                                              ; preds = %126, %.preheader25._crit_edge
  %133 = phi ptr [ %127, %126 ], [ %124, %.preheader25._crit_edge ]
  %134 = phi i32 [ 0, %126 ], [ %.lcssa104, %.preheader25._crit_edge ]
  %135 = phi i32 [ %131, %126 ], [ %95, %.preheader25._crit_edge ]
  %136 = add nuw nsw i64 %91, 1
  %137 = trunc i64 %136 to i32
  %138 = add nuw i32 %134, 1
  store i32 %138, ptr %133, align 4, !tbaa !55
  %139 = sub i32 %137, %96
  %140 = icmp eq i32 %139, %43
  br i1 %140, label %141, label %239

141:                                              ; preds = %132
  %142 = zext i32 %96 to i64
  %143 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !55
  %145 = load i32, ptr %40, align 8, !tbaa !29
  %146 = mul i32 %144, -1640531535
  %147 = sub i32 32, %145
  %148 = lshr i32 %146, %147
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %149
  %151 = getelementptr inbounds nuw i8, ptr %150, i64 4
  %152 = load i32, ptr %151, align 4, !tbaa !63
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %.loopexit24, label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %141
  %154 = load i32, ptr %150, align 4, !tbaa !65
  %155 = icmp eq i32 %154, %144
  br i1 %155, label %.preheader23._crit_edge, label %.lr.ph122.preheader

.lr.ph122.preheader:                              ; preds = %.preheader23.preheader
  %156 = load i32, ptr %41, align 8, !tbaa !33
  br label %.lr.ph122

.preheader23:                                     ; preds = %.lr.ph122
  %157 = load i32, ptr %163, align 4, !tbaa !65
  %158 = icmp eq i32 %157, %144
  br i1 %158, label %.preheader23._crit_edge, label %.lr.ph122

.lr.ph122:                                        ; preds = %.preheader23, %.lr.ph122.preheader
  %159 = phi i32 [ %161, %.preheader23 ], [ %148, %.lr.ph122.preheader ]
  %160 = add i32 %159, 1
  %161 = and i32 %160, %156
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %162
  %164 = getelementptr inbounds nuw i8, ptr %163, i64 4
  %165 = load i32, ptr %164, align 4, !tbaa !63
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %.loopexit24, label %.preheader23

.loopexit24:                                      ; preds = %.lr.ph122, %141
  %167 = phi i64 [ %149, %141 ], [ %162, %.lr.ph122 ]
  %168 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %167
  %169 = getelementptr inbounds nuw i8, ptr %168, i64 4
  store i32 %144, ptr %168, align 4, !tbaa !65
  %170 = add i32 %96, 1
  store i32 -1, ptr %169, align 4, !tbaa !55
  br label %239

.preheader23._crit_edge:                          ; preds = %.preheader23, %.preheader23.preheader
  %.pre-phi = phi i64 [ %149, %.preheader23.preheader ], [ %162, %.preheader23 ]
  %.lcssa109 = phi i32 [ %152, %.preheader23.preheader ], [ %165, %.preheader23 ]
  %.split19 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %.pre-phi
  %171 = getelementptr inbounds nuw i8, ptr %.split19, i64 4
  %172 = add i32 %.lcssa109, -1
  %173 = add i32 %96, 1
  store i32 %172, ptr %171, align 4, !tbaa !55
  %174 = icmp eq i32 %172, 0
  br i1 %174, label %175, label %239

175:                                              ; preds = %.preheader23._crit_edge
  %176 = load i32, ptr %40, align 8, !tbaa !29
  %177 = sub i32 32, %176
  %178 = lshr i32 %146, %177
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %179
  %181 = getelementptr inbounds nuw i8, ptr %180, i64 4
  %182 = load i32, ptr %181, align 4, !tbaa !63
  %183 = icmp eq i32 %182, -1
  br i1 %183, label %.loopexit22, label %.preheader21

.preheader21:                                     ; preds = %175, %188
  %184 = phi ptr [ %193, %188 ], [ %180, %175 ]
  %185 = phi i32 [ %191, %188 ], [ %178, %175 ]
  %186 = load i32, ptr %184, align 4, !tbaa !65
  %187 = icmp eq i32 %186, %144
  br i1 %187, label %197, label %188

188:                                              ; preds = %.preheader21
  %189 = add i32 %185, 1
  %190 = load i32, ptr %41, align 8, !tbaa !33
  %191 = and i32 %190, %189
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %192
  %194 = getelementptr inbounds nuw i8, ptr %193, i64 4
  %195 = load i32, ptr %194, align 4, !tbaa !63
  %196 = icmp eq i32 %195, -1
  br i1 %196, label %.loopexit22, label %.preheader21

197:                                              ; preds = %.preheader21
  %198 = zext i32 %185 to i64
  %199 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %198
  %200 = load i32, ptr %41, align 8, !tbaa !33
  %201 = add i32 %185, 1
  %202 = and i32 %200, %201
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %203
  %205 = getelementptr inbounds nuw i8, ptr %204, i64 4
  %206 = load i32, ptr %205, align 4, !tbaa !63
  %207 = icmp eq i32 %206, -1
  br i1 %207, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %197, %225
  %208 = phi i32 [ %233, %225 ], [ %206, %197 ]
  %209 = phi ptr [ %231, %225 ], [ %204, %197 ]
  %210 = phi i32 [ %229, %225 ], [ %202, %197 ]
  %211 = phi i32 [ %227, %225 ], [ 1, %197 ]
  %212 = phi ptr [ %226, %225 ], [ %199, %197 ]
  %213 = load i32, ptr %209, align 4, !tbaa !65
  %214 = mul i32 %213, -1640531535
  %215 = lshr i32 %214, %177
  %216 = sub i32 %210, %215
  %217 = and i32 %216, %200
  %218 = icmp ult i32 %217, %211
  br i1 %218, label %221, label %219

219:                                              ; preds = %.preheader
  store i32 %213, ptr %212, align 4, !tbaa !65
  %220 = getelementptr inbounds nuw i8, ptr %212, i64 4
  store i32 %208, ptr %220, align 4, !tbaa !63
  br label %225

221:                                              ; preds = %.preheader
  %222 = add i32 %211, 1
  br label %225

.loopexit:                                        ; preds = %225, %197
  %223 = phi ptr [ %199, %197 ], [ %226, %225 ]
  %224 = getelementptr inbounds nuw i8, ptr %223, i64 4
  store i32 -1, ptr %224, align 4, !tbaa !63
  br label %.loopexit22

225:                                              ; preds = %221, %219
  %226 = phi ptr [ %212, %221 ], [ %209, %219 ]
  %227 = phi i32 [ %222, %221 ], [ 1, %219 ]
  %228 = add i32 %210, 1
  %229 = and i32 %228, %200
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds nuw [8 x i8], ptr %62, i64 %230
  %232 = getelementptr inbounds nuw i8, ptr %231, i64 4
  %233 = load i32, ptr %232, align 4, !tbaa !63
  %234 = icmp eq i32 %233, -1
  br i1 %234, label %.loopexit, label %.preheader

.loopexit22:                                      ; preds = %188, %.loopexit, %175
  %235 = zext i32 %144 to i64
  %236 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %235
  %237 = load i32, ptr %236, align 4, !tbaa !55
  %238 = sub i32 %135, %237
  br label %239

239:                                              ; preds = %.loopexit22, %.preheader23._crit_edge, %.loopexit24, %132
  %240 = phi i32 [ %96, %132 ], [ %173, %.loopexit22 ], [ %173, %.preheader23._crit_edge ], [ %170, %.loopexit24 ]
  %241 = phi i32 [ %135, %132 ], [ %238, %.loopexit22 ], [ %135, %.preheader23._crit_edge ], [ %135, %.loopexit24 ]
  %242 = icmp ugt i32 %241, %94
  %243 = tail call i32 @llvm.umax.i32(i32 %241, i32 %94)
  %244 = select i1 %242, i32 %137, i32 %93
  %245 = select i1 %242, i32 %240, i32 %92
  %246 = icmp eq i64 %136, %64
  br i1 %246, label %65, label %90, !llvm.loop !66

.loopexit32:                                      ; preds = %.preheader31, %83
  %247 = phi i32 [ %84, %83 ], [ %290, %.preheader31 ]
  %248 = phi i32 [ %85, %83 ], [ %291, %.preheader31 ]
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %.loopexit28, label %250

250:                                              ; preds = %.loopexit32
  %251 = sub i32 %248, %247
  %252 = and i32 %251, 3
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %.loopexit30, label %.preheader29

.preheader29:                                     ; preds = %250, %.preheader29
  %254 = phi i32 [ %261, %.preheader29 ], [ %247, %250 ]
  %255 = phi i32 [ %262, %.preheader29 ], [ 0, %250 ]
  %256 = zext i32 %254 to i64
  %257 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %256
  %258 = load i32, ptr %257, align 4, !tbaa !55
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %259
  store i32 0, ptr %260, align 4, !tbaa !55
  %261 = add i32 %254, 1
  %262 = add nuw nsw i32 %255, 1
  %263 = icmp eq i32 %262, %252
  br i1 %263, label %.loopexit30, label %.preheader29, !llvm.loop !67

.loopexit30:                                      ; preds = %.preheader29, %250
  %264 = phi i32 [ %247, %250 ], [ %261, %.preheader29 ]
  %265 = sub i32 %247, %248
  %266 = icmp ugt i32 %265, -4
  br i1 %266, label %.loopexit28, label %.preheader27

.preheader31:                                     ; preds = %83, %.preheader31
  %267 = phi i32 [ %289, %.preheader31 ], [ %86, %83 ]
  %268 = phi i32 [ %291, %.preheader31 ], [ %87, %83 ]
  %269 = phi i32 [ %290, %.preheader31 ], [ %88, %83 ]
  %270 = zext i32 %267 to i64
  %271 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %270
  %272 = load i32, ptr %271, align 4, !tbaa !55
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %273
  %275 = load i32, ptr %274, align 4, !tbaa !55
  %276 = icmp eq i32 %275, 0
  %277 = tail call i32 @llvm.umin.i32(i32 %269, i32 %267)
  %278 = add i32 %267, 1
  %279 = select i1 %276, i32 %269, i32 %277
  %280 = select i1 %276, i32 %268, i32 %278
  %281 = zext i32 %278 to i64
  %282 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %281
  %283 = load i32, ptr %282, align 4, !tbaa !55
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %284
  %286 = load i32, ptr %285, align 4, !tbaa !55
  %287 = icmp eq i32 %286, 0
  %288 = tail call i32 @llvm.umin.i32(i32 %279, i32 %278)
  %289 = add i32 %267, 2
  %290 = select i1 %287, i32 %279, i32 %288
  %291 = select i1 %287, i32 %280, i32 %289
  %292 = icmp eq i32 %289, %244
  br i1 %292, label %.loopexit32, label %.preheader31, !llvm.loop !68

.preheader27:                                     ; preds = %.loopexit30, %.preheader27
  %293 = phi i32 [ %317, %.preheader27 ], [ %264, %.loopexit30 ]
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %294
  %296 = load i32, ptr %295, align 4, !tbaa !55
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %297
  store i32 0, ptr %298, align 4, !tbaa !55
  %299 = add i32 %293, 1
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %300
  %302 = load i32, ptr %301, align 4, !tbaa !55
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %303
  store i32 0, ptr %304, align 4, !tbaa !55
  %305 = add i32 %293, 2
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %306
  %308 = load i32, ptr %307, align 4, !tbaa !55
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %309
  store i32 0, ptr %310, align 4, !tbaa !55
  %311 = add i32 %293, 3
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds nuw [4 x i8], ptr %61, i64 %312
  %314 = load i32, ptr %313, align 4, !tbaa !55
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %315
  store i32 0, ptr %316, align 4, !tbaa !55
  %317 = add i32 %293, 4
  %318 = icmp eq i32 %317, %248
  br i1 %318, label %.loopexit28, label %.preheader27, !llvm.loop !69

.loopexit28:                                      ; preds = %.preheader27, %.loopexit30, %.loopexit32, %65
  %319 = phi i32 [ %247, %.loopexit32 ], [ %244, %65 ], [ %248, %.loopexit30 ], [ %248, %.preheader27 ]
  %320 = phi i32 [ %247, %.loopexit32 ], [ %244, %65 ], [ %247, %.loopexit30 ], [ %247, %.preheader27 ]
  %321 = zext i32 %320 to i64
  %322 = icmp eq i32 %243, 0
  br i1 %322, label %345, label %323

323:                                              ; preds = %.loopexit28
  %324 = add i32 %44, %319
  %325 = sub i32 %324, %320
  %326 = zext i32 %325 to i64
  %327 = tail call i64 @llvm.umin.i64(i64 %48, i64 %326)
  %328 = icmp samesign ult i64 %327, %45
  br i1 %328, label %.loopexit33, label %329

329:                                              ; preds = %323
  %330 = sub i64 %48, %327
  %331 = getelementptr inbounds nuw i8, ptr %3, i64 %330
  %332 = load ptr, ptr %0, align 8, !tbaa !46
  %333 = getelementptr inbounds nuw i8, ptr %332, i64 %321
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %331, ptr align 1 %333, i64 %327, i1 false)
  br i1 %33, label %334, label %348

334:                                              ; preds = %329
  %335 = tail call i64 @clock() #29
  %336 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %335, i64 %51), !nosanitize !70
  %337 = extractvalue { i64, i1 } %336, 1, !nosanitize !70
  br i1 %337, label %338, label %339, !prof !71, !nosanitize !70

338:                                              ; preds = %334
  tail call void @llvm.ubsantrap(i8 21) #31, !nosanitize !70
  unreachable, !nosanitize !70

339:                                              ; preds = %334
  %340 = extractvalue { i64, i1 } %336, 0, !nosanitize !70
  %341 = icmp sgt i64 %340, 150000
  %342 = or i1 %46, %341
  br i1 %342, label %343, label %348

343:                                              ; preds = %339
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call fastcc void @COVER_buildDictionary.cold.2(i64 %4, i64 %330, ptr %8) #27
  %344 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %348

345:                                              ; preds = %.loopexit28, %47
  %346 = add i64 %49, 1
  %347 = icmp ult i64 %346, %30
  br i1 %347, label %348, label %.loopexit33

348:                                              ; preds = %345, %343, %339, %329
  %349 = phi i64 [ %48, %345 ], [ %330, %343 ], [ %330, %339 ], [ %330, %329 ]
  %350 = phi i64 [ %346, %345 ], [ 0, %343 ], [ 0, %339 ], [ 0, %329 ]
  %351 = phi i64 [ %51, %345 ], [ %344, %343 ], [ %51, %339 ], [ %51, %329 ]
  %352 = add nsw i64 %50, 1
  %353 = urem i64 %352, %25
  %354 = icmp eq i64 %349, 0
  br i1 %354, label %.loopexit33, label %47, !llvm.loop !72

.loopexit33:                                      ; preds = %348, %345, %323, %35
  %355 = phi i64 [ 0, %35 ], [ %48, %323 ], [ %48, %345 ], [ 0, %348 ]
  br i1 %33, label %356, label %357

356:                                              ; preds = %.loopexit33
  tail call fastcc void @COVER_buildDictionary.cold.3() #27
  br label %357

357:                                              ; preds = %356, %.loopexit33
  ret i64 %355
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
  br i1 %16, label %.preheader28.preheader, label %17

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
  br i1 %36, label %.loopexit8, label %.preheader28.preheader

.preheader28.preheader:                           ; preds = %32, %14
  %.ph27 = phi i64 [ 0, %14 ], [ %35, %32 ]
  %.ph28 = phi i64 [ %12, %14 ], [ %33, %32 ]
  br label %.preheader28

.preheader28:                                     ; preds = %.preheader28.preheader, %.preheader28
  %37 = phi i64 [ %41, %.preheader28 ], [ %.ph27, %.preheader28.preheader ]
  %38 = phi i64 [ %42, %.preheader28 ], [ %.ph28, %.preheader28.preheader ]
  %39 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !5
  %41 = tail call i64 @llvm.umax.i64(i64 %40, i64 %37)
  %42 = add nuw i64 %38, 1
  %43 = icmp eq i64 %42, %5
  br i1 %43, label %.loopexit8, label %.preheader28, !llvm.loop !74

.loopexit8:                                       ; preds = %.preheader28, %32, %8
  %44 = phi i64 [ 0, %8 ], [ %35, %32 ], [ %41, %.preheader28 ]
  %45 = tail call i64 @ZSTD_compressBound(i64 noundef %44) #29
  %46 = tail call noalias ptr @malloc(i64 noundef %45) #28
  %47 = tail call ptr @ZSTD_createCCtx() #29
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %49 = load i32, ptr %48, align 8, !tbaa !75
  %50 = tail call ptr @ZSTD_createCDict(ptr noundef %6, i64 noundef %7, i32 noundef %49) #29
  %51 = icmp eq ptr %46, null
  %52 = icmp eq ptr %47, null
  %53 = select i1 %51, i1 true, i1 %52
  %54 = icmp eq ptr %50, null
  %55 = select i1 %53, i1 true, i1 %54
  %56 = or i1 %13, %55
  %57 = select i1 %55, i64 -1, i64 %7
  br i1 %56, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit8, %67
  %58 = phi i64 [ %69, %67 ], [ %12, %.loopexit8 ]
  %59 = phi i64 [ %68, %67 ], [ %7, %.loopexit8 ]
  %60 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %58
  %61 = load i64, ptr %60, align 8, !tbaa !5
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 %61
  %63 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %58
  %64 = load i64, ptr %63, align 8, !tbaa !5
  %65 = tail call i64 @ZSTD_compress_usingCDict(ptr noundef nonnull %47, ptr noundef nonnull %46, i64 noundef %45, ptr noundef %62, i64 noundef %64, ptr noundef nonnull %50) #29
  %66 = icmp ult i64 %65, -119
  br i1 %66, label %67, label %.loopexit

67:                                               ; preds = %.preheader
  %68 = add i64 %65, %59
  %69 = add i64 %58, 1
  %70 = icmp eq i64 %69, %5
  br i1 %70, label %.loopexit, label %.preheader, !llvm.loop !76

.loopexit:                                        ; preds = %67, %.preheader, %.loopexit8
  %71 = phi i64 [ %57, %.loopexit8 ], [ %68, %67 ], [ %65, %.preheader ]
  %72 = tail call i64 @ZSTD_freeCCtx(ptr noundef %47) #29
  %73 = tail call i64 @ZSTD_freeCDict(ptr noundef %50) #29
  br i1 %51, label %75, label %74

74:                                               ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %46) #29
  br label %75

75:                                               ; preds = %74, %.loopexit
  ret i64 %71
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
!58 = !{ptr @COVER_cmp, ptr @COVER_cmp8}
!59 = distinct !{!59, !10}
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
