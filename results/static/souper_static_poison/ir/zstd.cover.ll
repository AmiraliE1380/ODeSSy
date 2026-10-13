; ModuleID = '/mydata/zstd/lib/dictBuilder/cover.c'
source_filename = "/mydata/zstd/lib/dictBuilder/cover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZDICT_cover_params_t = type { i32, i32, i32, i32, double, i32, i32, %struct.ZDICT_params_t }
%struct.ZDICT_params_t = type { i32, i32, i32 }
%struct.COVER_ctx_t = type { ptr, ptr, ptr, i64, i64, i64, ptr, i64, ptr, ptr, i32, i32 }
%struct.COVER_map_s = type { ptr, i32, i32, i32 }
%struct.COVER_map_pair_t_s = type { i32, i32 }
%struct.COVER_best_s = type { i32, i32, i64, ptr, i64, %struct.ZDICT_cover_params_t, i64 }
%struct.COVER_dictSelection = type { ptr, i64, i64 }
%struct.COVER_tryParameters_data_s = type { ptr, ptr, i64, %struct.ZDICT_cover_params_t }

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
define dso_local i64 @COVER_sum(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %36, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = icmp ult i32 %1, 4
  br i1 %6, label %25, label %7

7:                                                ; preds = %4
  %8 = and i64 %5, 4294967292
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i64 [ 0, %7 ], [ %19, %9 ]
  %11 = phi <2 x i64> [ zeroinitializer, %7 ], [ %17, %9 ]
  %12 = phi <2 x i64> [ zeroinitializer, %7 ], [ %18, %9 ]
  %13 = getelementptr inbounds i64, ptr %0, i64 %10
  %14 = getelementptr inbounds i64, ptr %13, i64 2
  %15 = load <2 x i64>, ptr %13, align 8, !tbaa !5
  %16 = load <2 x i64>, ptr %14, align 8, !tbaa !5
  %17 = add <2 x i64> %15, %11
  %18 = add <2 x i64> %16, %12
  %19 = add nuw i64 %10, 4
  %20 = icmp eq i64 %19, %8
  br i1 %20, label %21, label %9, !llvm.loop !9

21:                                               ; preds = %9
  %22 = add <2 x i64> %18, %17
  %23 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %22)
  %24 = icmp eq i64 %8, %5
  br i1 %24, label %36, label %25

25:                                               ; preds = %4, %21
  %26 = phi i64 [ 0, %4 ], [ %8, %21 ]
  %27 = phi i64 [ 0, %4 ], [ %23, %21 ]
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi i64 [ %34, %28 ], [ %26, %25 ]
  %30 = phi i64 [ %33, %28 ], [ %27, %25 ]
  %31 = getelementptr inbounds i64, ptr %0, i64 %29
  %32 = load i64, ptr %31, align 8, !tbaa !5
  %33 = add i64 %32, %30
  %34 = add nuw nsw i64 %29, 1
  %35 = icmp eq i64 %34, %5
  br i1 %35, label %36, label %28, !llvm.loop !13

36:                                               ; preds = %28, %21, %2
  %37 = phi i64 [ 0, %2 ], [ %23, %21 ], [ %33, %28 ]
  ret i64 %37
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @COVER_warnOnSmallCorpus(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
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
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef %12, i32 noundef %13, double noundef %6) #23
  %15 = load ptr, ptr @stderr, align 8, !tbaa !14
  %16 = tail call i32 @fflush(ptr noundef %15)
  br label %17

17:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @COVER_computeEpochs(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = mul i32 %2, 10
  %6 = udiv i32 %0, %2
  %7 = icmp ult i32 %6, %3
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = udiv i32 %6, %3
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi i32 [ %9, %8 ], [ 1, %4 ]
  %12 = udiv i32 %1, %11
  %13 = icmp ult i32 %12, %5
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = tail call i32 @llvm.umin.i32(i32 %5, i32 %1)
  %16 = udiv i32 %1, %15
  br label %17

17:                                               ; preds = %10, %14
  %18 = phi i32 [ %16, %14 ], [ %11, %10 ]
  %19 = phi i32 [ %15, %14 ], [ %12, %10 ]
  %20 = zext i32 %19 to i64
  %21 = shl nuw i64 %20, 32
  %22 = zext i32 %18 to i64
  %23 = or disjoint i64 %21, %22
  ret i64 %23
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_trainFromBuffer_cover(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8 %5) local_unnamed_addr #5 {
  %7 = alloca %struct.COVER_ctx_t, align 8
  %8 = alloca %struct.COVER_map_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #24
  %9 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %5, i64 0, i32 7
  %10 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %5, i64 0, i32 7, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !16
  %12 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %5, i64 0, i32 4
  store double 1.000000e+00, ptr %12, align 8, !tbaa !21
  %13 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %5, i64 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr %5, align 8
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  %19 = zext i32 %16 to i64
  %20 = icmp ugt i64 %19, %1
  %21 = select i1 %18, i1 true, i1 %20
  %22 = icmp ugt i32 %14, %16
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %6
  %25 = icmp sgt i32 %11, 0
  br i1 %25, label %26, label %151

26:                                               ; preds = %24
  %27 = load ptr, ptr @stderr, align 8, !tbaa !14
  %28 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 27, i64 1, ptr %27) #23
  %29 = load ptr, ptr @stderr, align 8, !tbaa !14
  %30 = tail call i32 @fflush(ptr noundef %29)
  br label %151

31:                                               ; preds = %6
  %32 = icmp eq i32 %4, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %31
  %34 = icmp sgt i32 %11, 0
  br i1 %34, label %35, label %151

35:                                               ; preds = %33
  %36 = load ptr, ptr @stderr, align 8, !tbaa !14
  %37 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 40, i64 1, ptr %36) #23
  %38 = load ptr, ptr @stderr, align 8, !tbaa !14
  %39 = tail call i32 @fflush(ptr noundef %38)
  br label %151

40:                                               ; preds = %31
  %41 = icmp ult i64 %1, 256
  br i1 %41, label %42, label %49

42:                                               ; preds = %40
  %43 = icmp sgt i32 %11, 0
  br i1 %43, label %44, label %151

44:                                               ; preds = %42
  %45 = load ptr, ptr @stderr, align 8, !tbaa !14
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.3, i32 noundef 256) #23
  %47 = load ptr, ptr @stderr, align 8, !tbaa !14
  %48 = tail call i32 @fflush(ptr noundef %47)
  br label %151

49:                                               ; preds = %40
  %50 = call fastcc i64 @COVER_ctx_init(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %14, double noundef 1.000000e+00, i32 noundef %11), !range !22
  %51 = icmp ult i64 %50, -119
  br i1 %51, label %52, label %151

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.COVER_ctx_t, ptr %7, i64 0, i32 7
  %54 = load i64, ptr %53, align 8, !tbaa !23
  %55 = uitofp i64 %54 to double
  %56 = uitofp i64 %1 to double
  %57 = fdiv double %55, %56
  %58 = fcmp ult double %57, 1.000000e+01
  %59 = icmp sgt i32 %11, 0
  %60 = and i1 %59, %58
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load ptr, ptr @stderr, align 8, !tbaa !14
  %63 = trunc i64 %1 to i32
  %64 = trunc i64 %54 to i32
  %65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str, i32 noundef %63, i32 noundef %64, double noundef %57) #23
  %66 = load ptr, ptr @stderr, align 8, !tbaa !14
  %67 = call i32 @fflush(ptr noundef %66)
  br label %68

68:                                               ; preds = %52, %61
  %69 = add i32 %16, 1
  %70 = sub i32 %69, %14
  %71 = call i32 @llvm.ctlz.i32(i32 %70, i1 true), !range !25
  %72 = xor i32 %71, 31
  %73 = sub nuw nsw i32 33, %71
  %74 = getelementptr inbounds %struct.COVER_map_s, ptr %8, i64 0, i32 1
  store i32 %73, ptr %74, align 8, !tbaa !26
  %75 = shl i32 4, %72
  %76 = getelementptr inbounds %struct.COVER_map_s, ptr %8, i64 0, i32 2
  store i32 %75, ptr %76, align 4, !tbaa !28
  %77 = add i32 %75, -1
  %78 = getelementptr inbounds %struct.COVER_map_s, ptr %8, i64 0, i32 3
  store i32 %77, ptr %78, align 8, !tbaa !29
  %79 = zext i32 %75 to i64
  %80 = shl nuw nsw i64 %79, 3
  %81 = call noalias ptr @malloc(i64 noundef %80) #25
  store ptr %81, ptr %8, align 8, !tbaa !30
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %109

83:                                               ; preds = %68
  br i1 %59, label %84, label %89

84:                                               ; preds = %83
  %85 = load ptr, ptr @stderr, align 8, !tbaa !14
  %86 = call i64 @fwrite(ptr nonnull @.str.4, i64 43, i64 1, ptr %85) #23
  %87 = load ptr, ptr @stderr, align 8, !tbaa !14
  %88 = call i32 @fflush(ptr noundef %87)
  br label %89

89:                                               ; preds = %84, %83
  %90 = getelementptr inbounds %struct.COVER_ctx_t, ptr %7, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !31
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  call void @free(ptr noundef nonnull %91) #24
  store ptr null, ptr %90, align 8, !tbaa !31
  br label %94

94:                                               ; preds = %93, %89
  %95 = getelementptr inbounds %struct.COVER_ctx_t, ptr %7, i64 0, i32 8
  %96 = load ptr, ptr %95, align 8, !tbaa !32
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  call void @free(ptr noundef nonnull %96) #24
  store ptr null, ptr %95, align 8, !tbaa !32
  br label %99

99:                                               ; preds = %98, %94
  %100 = getelementptr inbounds %struct.COVER_ctx_t, ptr %7, i64 0, i32 9
  %101 = load ptr, ptr %100, align 8, !tbaa !33
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  call void @free(ptr noundef nonnull %101) #24
  store ptr null, ptr %100, align 8, !tbaa !33
  br label %104

104:                                              ; preds = %103, %99
  %105 = getelementptr inbounds %struct.COVER_ctx_t, ptr %7, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !34
  %107 = icmp eq ptr %106, null
  br i1 %107, label %151, label %108

108:                                              ; preds = %104
  call void @free(ptr noundef nonnull %106) #24
  br label %151

109:                                              ; preds = %68
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %81, i8 -1, i64 %80, i1 false)
  %110 = icmp sgt i32 %11, 1
  br i1 %110, label %111, label %116

111:                                              ; preds = %109
  %112 = load ptr, ptr @stderr, align 8, !tbaa !14
  %113 = call i64 @fwrite(ptr nonnull @.str.5, i64 20, i64 1, ptr %112) #23
  %114 = load ptr, ptr @stderr, align 8, !tbaa !14
  %115 = call i32 @fflush(ptr noundef %114)
  br label %116

116:                                              ; preds = %111, %109
  %117 = getelementptr inbounds %struct.COVER_ctx_t, ptr %7, i64 0, i32 8
  %118 = load ptr, ptr %117, align 8, !tbaa !32
  %119 = call fastcc i64 @COVER_buildDictionary(ptr noundef nonnull %7, ptr noundef %118, ptr noundef nonnull %8, ptr noundef %0, i64 noundef %1, i32 %16, i32 %14)
  %120 = getelementptr inbounds i8, ptr %0, i64 %119
  %121 = sub i64 %1, %119
  %122 = call i64 @ZDICT_finalizeDictionary(ptr noundef %0, i64 noundef %1, ptr noundef %120, i64 noundef %121, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %9) #24
  %123 = icmp ult i64 %122, -119
  %124 = and i1 %110, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %116
  %126 = load ptr, ptr @stderr, align 8, !tbaa !14
  %127 = trunc i64 %122 to i32
  %128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef nonnull @.str.6, i32 noundef %127) #23
  %129 = load ptr, ptr @stderr, align 8, !tbaa !14
  %130 = call i32 @fflush(ptr noundef %129)
  br label %131

131:                                              ; preds = %125, %116
  %132 = getelementptr inbounds %struct.COVER_ctx_t, ptr %7, i64 0, i32 6
  %133 = load ptr, ptr %132, align 8, !tbaa !31
  %134 = icmp eq ptr %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  call void @free(ptr noundef nonnull %133) #24
  store ptr null, ptr %132, align 8, !tbaa !31
  br label %136

136:                                              ; preds = %135, %131
  %137 = load ptr, ptr %117, align 8, !tbaa !32
  %138 = icmp eq ptr %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  call void @free(ptr noundef nonnull %137) #24
  store ptr null, ptr %117, align 8, !tbaa !32
  br label %140

140:                                              ; preds = %139, %136
  %141 = getelementptr inbounds %struct.COVER_ctx_t, ptr %7, i64 0, i32 9
  %142 = load ptr, ptr %141, align 8, !tbaa !33
  %143 = icmp eq ptr %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  call void @free(ptr noundef nonnull %142) #24
  store ptr null, ptr %141, align 8, !tbaa !33
  br label %145

145:                                              ; preds = %144, %140
  %146 = getelementptr inbounds %struct.COVER_ctx_t, ptr %7, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !34
  %148 = icmp eq ptr %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  call void @free(ptr noundef nonnull %147) #24
  br label %150

150:                                              ; preds = %145, %149
  call void @free(ptr noundef nonnull %81) #24
  br label %151

151:                                              ; preds = %108, %104, %42, %44, %33, %35, %24, %26, %49, %150
  %152 = phi i64 [ %122, %150 ], [ %50, %49 ], [ -42, %26 ], [ -42, %24 ], [ -72, %35 ], [ -72, %33 ], [ -70, %44 ], [ -70, %42 ], [ -64, %104 ], [ -64, %108 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #24
  ret i64 %152
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i64 @COVER_ctx_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5, i32 noundef %6) unnamed_addr #5 {
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %7
  %10 = zext i32 %3 to i64
  %11 = icmp ult i32 %3, 4
  br i1 %11, label %30, label %12

12:                                               ; preds = %9
  %13 = and i64 %10, 4294967292
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i64 [ 0, %12 ], [ %24, %14 ]
  %16 = phi <2 x i64> [ zeroinitializer, %12 ], [ %22, %14 ]
  %17 = phi <2 x i64> [ zeroinitializer, %12 ], [ %23, %14 ]
  %18 = getelementptr inbounds i64, ptr %2, i64 %15
  %19 = getelementptr inbounds i64, ptr %18, i64 2
  %20 = load <2 x i64>, ptr %18, align 8, !tbaa !5
  %21 = load <2 x i64>, ptr %19, align 8, !tbaa !5
  %22 = add <2 x i64> %20, %16
  %23 = add <2 x i64> %21, %17
  %24 = add nuw i64 %15, 4
  %25 = icmp eq i64 %24, %13
  br i1 %25, label %26, label %14, !llvm.loop !35

26:                                               ; preds = %14
  %27 = add <2 x i64> %23, %22
  %28 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %27)
  %29 = icmp eq i64 %13, %10
  br i1 %29, label %41, label %30

30:                                               ; preds = %9, %26
  %31 = phi i64 [ 0, %9 ], [ %13, %26 ]
  %32 = phi i64 [ 0, %9 ], [ %28, %26 ]
  br label %33

33:                                               ; preds = %30, %33
  %34 = phi i64 [ %39, %33 ], [ %31, %30 ]
  %35 = phi i64 [ %38, %33 ], [ %32, %30 ]
  %36 = getelementptr inbounds i64, ptr %2, i64 %34
  %37 = load i64, ptr %36, align 8, !tbaa !5
  %38 = add i64 %37, %35
  %39 = add nuw nsw i64 %34, 1
  %40 = icmp eq i64 %39, %10
  br i1 %40, label %41, label %33, !llvm.loop !36

41:                                               ; preds = %33, %26, %7
  %42 = phi i64 [ 0, %7 ], [ %28, %26 ], [ %38, %33 ]
  %43 = fcmp olt double %5, 1.000000e+00
  %44 = uitofp i32 %3 to double
  %45 = fmul double %44, %5
  %46 = fptoui double %45 to i32
  %47 = select i1 %43, i32 %46, i32 0
  %48 = select i1 %43, i32 %46, i32 %3
  %49 = sub i32 %3, %47
  br i1 %43, label %50, label %121

50:                                               ; preds = %41
  %51 = icmp eq i32 %46, 0
  br i1 %51, label %84, label %52

52:                                               ; preds = %50
  %53 = zext i32 %46 to i64
  %54 = icmp ult i32 %46, 4
  br i1 %54, label %73, label %55

55:                                               ; preds = %52
  %56 = and i64 %53, 4294967292
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi i64 [ 0, %55 ], [ %67, %57 ]
  %59 = phi <2 x i64> [ zeroinitializer, %55 ], [ %65, %57 ]
  %60 = phi <2 x i64> [ zeroinitializer, %55 ], [ %66, %57 ]
  %61 = getelementptr inbounds i64, ptr %2, i64 %58
  %62 = getelementptr inbounds i64, ptr %61, i64 2
  %63 = load <2 x i64>, ptr %61, align 8, !tbaa !5
  %64 = load <2 x i64>, ptr %62, align 8, !tbaa !5
  %65 = add <2 x i64> %63, %59
  %66 = add <2 x i64> %64, %60
  %67 = add nuw i64 %58, 4
  %68 = icmp eq i64 %67, %56
  br i1 %68, label %69, label %57, !llvm.loop !37

69:                                               ; preds = %57
  %70 = add <2 x i64> %66, %65
  %71 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %70)
  %72 = icmp eq i64 %56, %53
  br i1 %72, label %84, label %73

73:                                               ; preds = %52, %69
  %74 = phi i64 [ 0, %52 ], [ %56, %69 ]
  %75 = phi i64 [ 0, %52 ], [ %71, %69 ]
  br label %76

76:                                               ; preds = %73, %76
  %77 = phi i64 [ %82, %76 ], [ %74, %73 ]
  %78 = phi i64 [ %81, %76 ], [ %75, %73 ]
  %79 = getelementptr inbounds i64, ptr %2, i64 %77
  %80 = load i64, ptr %79, align 8, !tbaa !5
  %81 = add i64 %80, %78
  %82 = add nuw nsw i64 %77, 1
  %83 = icmp eq i64 %82, %53
  br i1 %83, label %84, label %76, !llvm.loop !38

84:                                               ; preds = %76, %69, %50
  %85 = phi i64 [ 0, %50 ], [ %53, %69 ], [ %53, %76 ]
  %86 = phi i64 [ 0, %50 ], [ %71, %69 ], [ %81, %76 ]
  %87 = getelementptr inbounds i64, ptr %2, i64 %85
  %88 = icmp eq i32 %47, %3
  br i1 %88, label %121, label %89

89:                                               ; preds = %84
  %90 = zext i32 %49 to i64
  %91 = icmp ult i32 %49, 4
  br i1 %91, label %110, label %92

92:                                               ; preds = %89
  %93 = and i64 %90, 4294967292
  br label %94

94:                                               ; preds = %94, %92
  %95 = phi i64 [ 0, %92 ], [ %104, %94 ]
  %96 = phi <2 x i64> [ zeroinitializer, %92 ], [ %102, %94 ]
  %97 = phi <2 x i64> [ zeroinitializer, %92 ], [ %103, %94 ]
  %98 = getelementptr inbounds i64, ptr %87, i64 %95
  %99 = getelementptr inbounds i64, ptr %98, i64 2
  %100 = load <2 x i64>, ptr %98, align 8, !tbaa !5
  %101 = load <2 x i64>, ptr %99, align 8, !tbaa !5
  %102 = add <2 x i64> %100, %96
  %103 = add <2 x i64> %101, %97
  %104 = add nuw i64 %95, 4
  %105 = icmp eq i64 %104, %93
  br i1 %105, label %106, label %94, !llvm.loop !39

106:                                              ; preds = %94
  %107 = add <2 x i64> %103, %102
  %108 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %107)
  %109 = icmp eq i64 %93, %90
  br i1 %109, label %121, label %110

110:                                              ; preds = %89, %106
  %111 = phi i64 [ 0, %89 ], [ %93, %106 ]
  %112 = phi i64 [ 0, %89 ], [ %108, %106 ]
  br label %113

113:                                              ; preds = %110, %113
  %114 = phi i64 [ %119, %113 ], [ %111, %110 ]
  %115 = phi i64 [ %118, %113 ], [ %112, %110 ]
  %116 = getelementptr inbounds i64, ptr %87, i64 %114
  %117 = load i64, ptr %116, align 8, !tbaa !5
  %118 = add i64 %117, %115
  %119 = add nuw nsw i64 %114, 1
  %120 = icmp eq i64 %119, %90
  br i1 %120, label %121, label %113, !llvm.loop !40

121:                                              ; preds = %113, %106, %41, %84
  %122 = phi i64 [ %86, %84 ], [ %42, %41 ], [ %86, %106 ], [ %86, %113 ]
  %123 = phi i64 [ 0, %84 ], [ %42, %41 ], [ %108, %106 ], [ %118, %113 ]
  %124 = getelementptr inbounds %struct.COVER_ctx_t, ptr %0, i64 0, i32 11
  store i32 %6, ptr %124, align 4, !tbaa !41
  %125 = tail call i32 @llvm.umax.i32(i32 %4, i32 8)
  %126 = zext i32 %125 to i64
  %127 = icmp ult i64 %42, %126
  %128 = icmp ugt i64 %42, 4294967294
  %129 = or i1 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %121
  %131 = icmp sgt i32 %6, 0
  br i1 %131, label %132, label %414

132:                                              ; preds = %130
  %133 = load ptr, ptr @stderr, align 8, !tbaa !14
  %134 = lshr i64 %42, 20
  %135 = trunc i64 %134 to i32
  %136 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef nonnull @.str.16, i32 noundef %135, i32 noundef 4095) #23
  %137 = load ptr, ptr @stderr, align 8, !tbaa !14
  %138 = tail call i32 @fflush(ptr noundef %137)
  br label %414

139:                                              ; preds = %121
  %140 = icmp ult i32 %48, 5
  br i1 %140, label %141, label %148

141:                                              ; preds = %139
  %142 = icmp sgt i32 %6, 0
  br i1 %142, label %143, label %414

143:                                              ; preds = %141
  %144 = load ptr, ptr @stderr, align 8, !tbaa !14
  %145 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef nonnull @.str.17, i32 noundef %48) #23
  %146 = load ptr, ptr @stderr, align 8, !tbaa !14
  %147 = tail call i32 @fflush(ptr noundef %146)
  br label %414

148:                                              ; preds = %139
  %149 = icmp eq i32 %47, %3
  br i1 %149, label %150, label %157

150:                                              ; preds = %148
  %151 = icmp sgt i32 %6, 0
  br i1 %151, label %152, label %414

152:                                              ; preds = %150
  %153 = load ptr, ptr @stderr, align 8, !tbaa !14
  %154 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %153, ptr noundef nonnull @.str.18, i32 noundef 0) #23
  %155 = load ptr, ptr @stderr, align 8, !tbaa !14
  %156 = tail call i32 @fflush(ptr noundef %155)
  br label %414

157:                                              ; preds = %148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  %158 = icmp sgt i32 %6, 1
  br i1 %158, label %159, label %170

159:                                              ; preds = %157
  %160 = load ptr, ptr @stderr, align 8, !tbaa !14
  %161 = trunc i64 %122 to i32
  %162 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %160, ptr noundef nonnull @.str.19, i32 noundef %48, i32 noundef %161) #23
  %163 = load ptr, ptr @stderr, align 8, !tbaa !14
  %164 = tail call i32 @fflush(ptr noundef %163)
  %165 = load ptr, ptr @stderr, align 8, !tbaa !14
  %166 = trunc i64 %123 to i32
  %167 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef nonnull @.str.20, i32 noundef %49, i32 noundef %166) #23
  %168 = load ptr, ptr @stderr, align 8, !tbaa !14
  %169 = tail call i32 @fflush(ptr noundef %168)
  br label %170

170:                                              ; preds = %157, %159
  store ptr %1, ptr %0, align 8, !tbaa !42
  %171 = getelementptr inbounds %struct.COVER_ctx_t, ptr %0, i64 0, i32 2
  store ptr %2, ptr %171, align 8, !tbaa !43
  %172 = zext i32 %3 to i64
  %173 = getelementptr inbounds %struct.COVER_ctx_t, ptr %0, i64 0, i32 3
  store i64 %172, ptr %173, align 8, !tbaa !44
  %174 = zext i32 %48 to i64
  %175 = getelementptr inbounds %struct.COVER_ctx_t, ptr %0, i64 0, i32 4
  store i64 %174, ptr %175, align 8, !tbaa !45
  %176 = zext i32 %49 to i64
  %177 = getelementptr inbounds %struct.COVER_ctx_t, ptr %0, i64 0, i32 5
  store i64 %176, ptr %177, align 8, !tbaa !46
  %178 = sub i64 %122, %126
  %179 = add i64 %178, 1
  %180 = getelementptr inbounds %struct.COVER_ctx_t, ptr %0, i64 0, i32 7
  store i64 %179, ptr %180, align 8, !tbaa !23
  %181 = shl i64 %179, 2
  %182 = tail call noalias ptr @malloc(i64 noundef %181) #25
  %183 = getelementptr inbounds %struct.COVER_ctx_t, ptr %0, i64 0, i32 6
  store ptr %182, ptr %183, align 8, !tbaa !31
  %184 = tail call noalias ptr @malloc(i64 noundef %181) #25
  %185 = getelementptr inbounds %struct.COVER_ctx_t, ptr %0, i64 0, i32 9
  store ptr %184, ptr %185, align 8, !tbaa !33
  %186 = add i32 %3, 1
  %187 = zext i32 %186 to i64
  %188 = shl nuw nsw i64 %187, 3
  %189 = tail call noalias ptr @malloc(i64 noundef %188) #25
  %190 = getelementptr inbounds %struct.COVER_ctx_t, ptr %0, i64 0, i32 1
  store ptr %189, ptr %190, align 8, !tbaa !34
  %191 = icmp eq ptr %182, null
  br i1 %191, label %196, label %192

192:                                              ; preds = %170
  %193 = icmp eq ptr %184, null
  %194 = icmp eq ptr %189, null
  %195 = or i1 %193, %194
  br i1 %195, label %196, label %221

196:                                              ; preds = %192, %170
  %197 = icmp sgt i32 %6, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %196
  %199 = load ptr, ptr @stderr, align 8, !tbaa !14
  %200 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 35, i64 1, ptr %199) #23
  %201 = load ptr, ptr @stderr, align 8, !tbaa !14
  %202 = tail call i32 @fflush(ptr noundef %201)
  %203 = load ptr, ptr %183, align 8, !tbaa !31
  br label %204

204:                                              ; preds = %196, %198
  %205 = phi ptr [ %182, %196 ], [ %203, %198 ]
  %206 = icmp eq ptr %205, null
  br i1 %206, label %208, label %207

207:                                              ; preds = %204
  tail call void @free(ptr noundef nonnull %205) #24
  store ptr null, ptr %183, align 8, !tbaa !31
  br label %208

208:                                              ; preds = %207, %204
  %209 = getelementptr inbounds %struct.COVER_ctx_t, ptr %0, i64 0, i32 8
  %210 = load ptr, ptr %209, align 8, !tbaa !32
  %211 = icmp eq ptr %210, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %208
  tail call void @free(ptr noundef nonnull %210) #24
  store ptr null, ptr %209, align 8, !tbaa !32
  br label %213

213:                                              ; preds = %212, %208
  %214 = load ptr, ptr %185, align 8, !tbaa !33
  %215 = icmp eq ptr %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %213
  tail call void @free(ptr noundef nonnull %214) #24
  store ptr null, ptr %185, align 8, !tbaa !33
  br label %217

217:                                              ; preds = %216, %213
  %218 = load ptr, ptr %190, align 8, !tbaa !34
  %219 = icmp eq ptr %218, null
  br i1 %219, label %414, label %220

220:                                              ; preds = %217
  tail call void @free(ptr noundef nonnull %218) #24
  store ptr null, ptr %190, align 8, !tbaa !34
  br label %414

221:                                              ; preds = %192
  %222 = getelementptr inbounds %struct.COVER_ctx_t, ptr %0, i64 0, i32 8
  store ptr null, ptr %222, align 8, !tbaa !32
  %223 = getelementptr inbounds %struct.COVER_ctx_t, ptr %0, i64 0, i32 10
  store i32 %4, ptr %223, align 8, !tbaa !47
  store i64 0, ptr %189, align 8, !tbaa !5
  br i1 %8, label %275, label %224

224:                                              ; preds = %221
  %225 = tail call i32 @llvm.umax.i32(i32 %186, i32 2)
  %226 = zext i32 %225 to i64
  %227 = getelementptr i64, ptr %2, i64 -1
  %228 = add nsw i64 %226, -1
  %229 = add nsw i64 %226, -2
  %230 = and i64 %228, 3
  %231 = icmp ult i64 %229, 3
  br i1 %231, label %260, label %232

232:                                              ; preds = %224
  %233 = and i64 %228, -4
  %234 = getelementptr i64, ptr %189, i64 1
  br label %235

235:                                              ; preds = %235, %232
  %236 = phi i64 [ 0, %232 ], [ %255, %235 ]
  %237 = phi i64 [ 1, %232 ], [ %257, %235 ]
  %238 = phi i64 [ 0, %232 ], [ %258, %235 ]
  %239 = getelementptr i64, ptr %227, i64 %237
  %240 = load i64, ptr %239, align 8, !tbaa !5
  %241 = add i64 %240, %236
  %242 = getelementptr inbounds i64, ptr %189, i64 %237
  store i64 %241, ptr %242, align 8, !tbaa !5
  %243 = getelementptr i64, ptr %2, i64 %237
  %244 = load i64, ptr %243, align 8, !tbaa !5
  %245 = add i64 %244, %241
  %246 = getelementptr i64, ptr %234, i64 %237
  store i64 %245, ptr %246, align 8, !tbaa !5
  %247 = add nuw nsw i64 %237, 2
  %248 = getelementptr i64, ptr %227, i64 %247
  %249 = load i64, ptr %248, align 8, !tbaa !5
  %250 = add i64 %249, %245
  %251 = getelementptr inbounds i64, ptr %189, i64 %247
  store i64 %250, ptr %251, align 8, !tbaa !5
  %252 = add nuw nsw i64 %237, 3
  %253 = getelementptr i64, ptr %227, i64 %252
  %254 = load i64, ptr %253, align 8, !tbaa !5
  %255 = add i64 %254, %250
  %256 = getelementptr inbounds i64, ptr %189, i64 %252
  store i64 %255, ptr %256, align 8, !tbaa !5
  %257 = add nuw nsw i64 %237, 4
  %258 = add i64 %238, 4
  %259 = icmp eq i64 %258, %233
  br i1 %259, label %260, label %235, !llvm.loop !48

260:                                              ; preds = %235, %224
  %261 = phi i64 [ 0, %224 ], [ %255, %235 ]
  %262 = phi i64 [ 1, %224 ], [ %257, %235 ]
  %263 = icmp eq i64 %230, 0
  br i1 %263, label %275, label %264

264:                                              ; preds = %260, %264
  %265 = phi i64 [ %270, %264 ], [ %261, %260 ]
  %266 = phi i64 [ %272, %264 ], [ %262, %260 ]
  %267 = phi i64 [ %273, %264 ], [ 0, %260 ]
  %268 = getelementptr i64, ptr %227, i64 %266
  %269 = load i64, ptr %268, align 8, !tbaa !5
  %270 = add i64 %269, %265
  %271 = getelementptr inbounds i64, ptr %189, i64 %266
  store i64 %270, ptr %271, align 8, !tbaa !5
  %272 = add nuw nsw i64 %266, 1
  %273 = add i64 %267, 1
  %274 = icmp eq i64 %273, %230
  br i1 %274, label %275, label %264, !llvm.loop !49

275:                                              ; preds = %260, %264, %221
  br i1 %158, label %276, label %283

276:                                              ; preds = %275
  %277 = load ptr, ptr @stderr, align 8, !tbaa !14
  %278 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 34, i64 1, ptr %277) #23
  %279 = load ptr, ptr @stderr, align 8, !tbaa !14
  %280 = tail call i32 @fflush(ptr noundef %279)
  %281 = load i64, ptr %180, align 8, !tbaa !23
  %282 = load ptr, ptr %183, align 8, !tbaa !31
  br label %283

283:                                              ; preds = %276, %275
  %284 = phi ptr [ %282, %276 ], [ %182, %275 ]
  %285 = phi i64 [ %281, %276 ], [ %179, %275 ]
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %319, label %287

287:                                              ; preds = %283
  %288 = icmp ult i64 %285, 20
  br i1 %288, label %309, label %289

289:                                              ; preds = %287
  %290 = add i64 %285, -1
  %291 = and i64 %290, 4294967295
  %292 = icmp eq i64 %291, 4294967295
  %293 = icmp ugt i64 %290, 4294967295
  %294 = or i1 %292, %293
  br i1 %294, label %309, label %295

295:                                              ; preds = %289
  %296 = and i64 %285, -8
  %297 = trunc i64 %296 to i32
  br label %298

298:                                              ; preds = %298, %295
  %299 = phi i64 [ 0, %295 ], [ %304, %298 ]
  %300 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %295 ], [ %305, %298 ]
  %301 = add <4 x i32> %300, <i32 4, i32 4, i32 4, i32 4>
  %302 = getelementptr inbounds i32, ptr %284, i64 %299
  %303 = getelementptr inbounds i32, ptr %302, i64 4
  store <4 x i32> %300, ptr %302, align 4, !tbaa !51
  store <4 x i32> %301, ptr %303, align 4, !tbaa !51
  %304 = add nuw i64 %299, 8
  %305 = add <4 x i32> %300, <i32 8, i32 8, i32 8, i32 8>
  %306 = icmp eq i64 %304, %296
  br i1 %306, label %307, label %298, !llvm.loop !52

307:                                              ; preds = %298
  %308 = icmp eq i64 %285, %296
  br i1 %308, label %319, label %309

309:                                              ; preds = %289, %287, %307
  %310 = phi i64 [ 0, %289 ], [ 0, %287 ], [ %296, %307 ]
  %311 = phi i32 [ 0, %289 ], [ 0, %287 ], [ %297, %307 ]
  br label %312

312:                                              ; preds = %309, %312
  %313 = phi i64 [ %317, %312 ], [ %310, %309 ]
  %314 = phi i32 [ %316, %312 ], [ %311, %309 ]
  %315 = getelementptr inbounds i32, ptr %284, i64 %313
  store i32 %314, ptr %315, align 4, !tbaa !51
  %316 = add i32 %314, 1
  %317 = zext i32 %316 to i64
  %318 = icmp ugt i64 %285, %317
  br i1 %318, label %312, label %319, !llvm.loop !53

319:                                              ; preds = %312, %307, %283
  %320 = load i32, ptr %223, align 8, !tbaa !47
  %321 = icmp ult i32 %320, 9
  %322 = select i1 %321, ptr @COVER_strict_cmp8, ptr @COVER_strict_cmp
  tail call void @qsort_r(ptr noundef %284, i64 noundef %285, i64 noundef 4, ptr noundef nonnull %322, ptr noundef nonnull %0) #24
  br i1 %158, label %323, label %328

323:                                              ; preds = %319
  %324 = load ptr, ptr @stderr, align 8, !tbaa !14
  %325 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr %324) #23
  %326 = load ptr, ptr @stderr, align 8, !tbaa !14
  %327 = tail call i32 @fflush(ptr noundef %326)
  br label %328

328:                                              ; preds = %323, %319
  %329 = load ptr, ptr %183, align 8, !tbaa !31
  %330 = load i64, ptr %180, align 8, !tbaa !23
  %331 = load i32, ptr %223, align 8, !tbaa !47
  %332 = icmp ult i32 %331, 9
  %333 = select i1 %332, ptr @COVER_cmp8, ptr @COVER_cmp
  %334 = icmp eq i64 %330, 0
  br i1 %334, label %412, label %335

335:                                              ; preds = %328, %408
  %336 = phi i64 [ %351, %408 ], [ 0, %328 ]
  %337 = phi ptr [ %344, %408 ], [ %329, %328 ]
  %338 = add nuw i64 %336, 1
  %339 = tail call i64 @llvm.umax.i64(i64 %330, i64 %338)
  %340 = add i64 %339, -1
  br label %341

341:                                              ; preds = %346, %335
  %342 = phi i64 [ %347, %346 ], [ %336, %335 ]
  %343 = phi ptr [ %344, %346 ], [ %337, %335 ]
  %344 = getelementptr inbounds i8, ptr %343, i64 4
  %345 = icmp eq i64 %342, %340
  br i1 %345, label %350, label %346

346:                                              ; preds = %341
  %347 = add i64 %342, 1
  %348 = tail call i32 %333(ptr noundef nonnull %0, ptr noundef %337, ptr noundef nonnull %344) #24, !callees !54
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %341, label %350, !llvm.loop !55

350:                                              ; preds = %346, %341
  %351 = phi i64 [ %339, %341 ], [ %347, %346 ]
  %352 = load ptr, ptr %183, align 8, !tbaa !31
  %353 = ptrtoint ptr %337 to i64
  %354 = ptrtoint ptr %352 to i64
  %355 = sub i64 %353, %354
  %356 = lshr exact i64 %355, 2
  %357 = trunc i64 %356 to i32
  %358 = load ptr, ptr %190, align 8, !tbaa !34
  %359 = load i64, ptr %173, align 8, !tbaa !44
  %360 = getelementptr inbounds i64, ptr %358, i64 %359
  %361 = load i64, ptr %358, align 8, !tbaa !5
  %362 = load ptr, ptr %185, align 8, !tbaa !33
  %363 = ptrtoint ptr %360 to i64
  br label %364

364:                                              ; preds = %402, %350
  %365 = phi ptr [ %337, %350 ], [ %406, %402 ]
  %366 = phi i64 [ %361, %350 ], [ %405, %402 ]
  %367 = phi i32 [ 0, %350 ], [ %404, %402 ]
  %368 = phi ptr [ %358, %350 ], [ %403, %402 ]
  %369 = load i32, ptr %365, align 4, !tbaa !51
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds i32, ptr %362, i64 %370
  store i32 %357, ptr %371, align 4, !tbaa !51
  %372 = load i32, ptr %365, align 4, !tbaa !51
  %373 = zext i32 %372 to i64
  %374 = icmp ugt i64 %366, %373
  br i1 %374, label %402, label %375

375:                                              ; preds = %364
  %376 = add i32 %367, 1
  %377 = getelementptr inbounds i32, ptr %365, i64 1
  %378 = icmp eq ptr %377, %344
  br i1 %378, label %402, label %379

379:                                              ; preds = %375
  %380 = icmp eq ptr %360, %368
  br i1 %380, label %398, label %381

381:                                              ; preds = %379
  %382 = ptrtoint ptr %368 to i64
  %383 = sub i64 %363, %382
  %384 = ashr exact i64 %383, 3
  br label %385

385:                                              ; preds = %385, %381
  %386 = phi ptr [ %396, %385 ], [ %368, %381 ]
  %387 = phi i64 [ %395, %385 ], [ %384, %381 ]
  %388 = lshr i64 %387, 1
  %389 = getelementptr inbounds i64, ptr %386, i64 %388
  %390 = load i64, ptr %389, align 8, !tbaa !5
  %391 = icmp ult i64 %390, %373
  %392 = getelementptr inbounds i64, ptr %389, i64 1
  %393 = xor i64 %388, -1
  %394 = add i64 %387, %393
  %395 = select i1 %391, i64 %394, i64 %388
  %396 = select i1 %391, ptr %392, ptr %386
  %397 = icmp eq i64 %395, 0
  br i1 %397, label %398, label %385, !llvm.loop !56

398:                                              ; preds = %385, %379
  %399 = phi ptr [ %360, %379 ], [ %396, %385 ]
  %400 = load i64, ptr %399, align 8, !tbaa !5
  %401 = getelementptr inbounds i64, ptr %399, i64 1
  br label %402

402:                                              ; preds = %398, %375, %364
  %403 = phi ptr [ %368, %364 ], [ %401, %398 ], [ %368, %375 ]
  %404 = phi i32 [ %367, %364 ], [ %376, %398 ], [ %376, %375 ]
  %405 = phi i64 [ %366, %364 ], [ %400, %398 ], [ %366, %375 ]
  %406 = getelementptr inbounds i32, ptr %365, i64 1
  %407 = icmp eq ptr %406, %344
  br i1 %407, label %408, label %364, !llvm.loop !57

408:                                              ; preds = %402
  %409 = and i64 %356, 4294967295
  %410 = getelementptr inbounds i32, ptr %352, i64 %409
  store i32 %404, ptr %410, align 4, !tbaa !51
  %411 = icmp ult i64 %351, %330
  br i1 %411, label %335, label %412, !llvm.loop !58

412:                                              ; preds = %408, %328
  %413 = phi ptr [ %329, %328 ], [ %352, %408 ]
  store ptr %413, ptr %222, align 8, !tbaa !32
  store ptr null, ptr %183, align 8, !tbaa !31
  br label %414

414:                                              ; preds = %220, %217, %150, %152, %141, %143, %130, %132, %412
  %415 = phi i64 [ 0, %412 ], [ -72, %132 ], [ -72, %130 ], [ -72, %143 ], [ -72, %141 ], [ -72, %152 ], [ -72, %150 ], [ -64, %217 ], [ -64, %220 ]
  ret i64 %415
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @COVER_buildDictionary(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, i64 noundef %4, i32 %5, i32 %6) unnamed_addr #5 {
  %8 = trunc i64 %4 to i32
  %9 = getelementptr inbounds %struct.COVER_ctx_t, ptr %0, i64 0, i32 7
  %10 = load i64, ptr %9, align 8, !tbaa !23
  %11 = trunc i64 %10 to i32
  %12 = mul i32 %5, 10
  %13 = udiv i32 %8, %5
  %14 = icmp ult i32 %13, 4
  %15 = lshr i32 %13, 2
  %16 = select i1 %14, i32 1, i32 %15
  %17 = udiv i32 %11, %16
  %18 = icmp ult i32 %17, %12
  br i1 %18, label %19, label %22

19:                                               ; preds = %7
  %20 = tail call i32 @llvm.umin.i32(i32 %12, i32 %11)
  %21 = udiv i32 %11, %20
  br label %22

22:                                               ; preds = %7, %19
  %23 = phi i32 [ %21, %19 ], [ %16, %7 ]
  %24 = phi i32 [ %20, %19 ], [ %17, %7 ]
  %25 = zext i32 %23 to i64
  %26 = icmp ult i32 %23, 80
  %27 = lshr i32 %23, 3
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 100)
  %29 = select i1 %26, i32 10, i32 %28
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds %struct.COVER_ctx_t, ptr %0, i64 0, i32 11
  %32 = load i32, ptr %31, align 4, !tbaa !41
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %22
  %35 = load ptr, ptr @stderr, align 8, !tbaa !14
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.24, i32 noundef %23, i32 noundef %24) #23
  %37 = load ptr, ptr @stderr, align 8, !tbaa !14
  %38 = tail call i32 @fflush(ptr noundef %37)
  br label %39

39:                                               ; preds = %34, %22
  %40 = icmp eq i64 %4, 0
  br i1 %40, label %392, label %41

41:                                               ; preds = %39
  %42 = getelementptr i8, ptr %2, i64 12
  %43 = getelementptr inbounds %struct.COVER_ctx_t, ptr %0, i64 0, i32 9
  %44 = getelementptr i8, ptr %2, i64 8
  %45 = getelementptr inbounds %struct.COVER_map_s, ptr %2, i64 0, i32 3
  %46 = add i32 %5, 2
  %47 = sub i32 %46, %6
  %48 = add i32 %6, -1
  %49 = zext i32 %6 to i64
  %50 = icmp ugt i32 %32, 3
  br label %51

51:                                               ; preds = %41, %385
  %52 = phi i64 [ %4, %41 ], [ %386, %385 ]
  %53 = phi i64 [ 0, %41 ], [ %387, %385 ]
  %54 = phi i64 [ 0, %41 ], [ %390, %385 ]
  %55 = phi i64 [ 0, %41 ], [ %388, %385 ]
  %56 = trunc i64 %54 to i32
  %57 = mul i32 %24, %56
  %58 = add i32 %57, %24
  %59 = load ptr, ptr %2, align 8, !tbaa !30
  %60 = load i32, ptr %42, align 4, !tbaa !28
  %61 = zext i32 %60 to i64
  %62 = shl nuw nsw i64 %61, 3
  tail call void @llvm.memset.p0.i64(ptr align 4 %59, i8 -1, i64 %62, i1 false)
  %63 = icmp ult i32 %57, %58
  br i1 %63, label %64, label %382

64:                                               ; preds = %51
  %65 = load ptr, ptr %43, align 8, !tbaa !33
  %66 = load ptr, ptr %2, align 8, !tbaa !30
  %67 = zext i32 %57 to i64
  %68 = zext i32 %58 to i64
  br label %95

69:                                               ; preds = %262
  %70 = icmp eq i32 %268, %267
  br i1 %70, label %347, label %71

71:                                               ; preds = %69
  %72 = sub i32 %267, %268
  %73 = add i32 %268, 1
  %74 = and i32 %72, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %71
  %77 = zext i32 %268 to i64
  %78 = getelementptr inbounds i32, ptr %65, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !51
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %1, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !51
  %83 = icmp eq i32 %82, 0
  %84 = tail call i32 @llvm.umin.i32(i32 %267, i32 %268)
  %85 = add i32 %268, 1
  %86 = select i1 %83, i32 %267, i32 %84
  %87 = select i1 %83, i32 %268, i32 %85
  br label %88

88:                                               ; preds = %76, %71
  %89 = phi i32 [ undef, %71 ], [ %86, %76 ]
  %90 = phi i32 [ undef, %71 ], [ %87, %76 ]
  %91 = phi i32 [ %268, %71 ], [ %85, %76 ]
  %92 = phi i32 [ %268, %71 ], [ %87, %76 ]
  %93 = phi i32 [ %267, %71 ], [ %86, %76 ]
  %94 = icmp eq i32 %267, %73
  br i1 %94, label %270, label %293

95:                                               ; preds = %262, %64
  %96 = phi i64 [ %67, %64 ], [ %149, %262 ]
  %97 = phi i32 [ 0, %64 ], [ %268, %262 ]
  %98 = phi i32 [ 0, %64 ], [ %267, %262 ]
  %99 = phi i32 [ 0, %64 ], [ %266, %262 ]
  %100 = phi i32 [ 0, %64 ], [ %264, %262 ]
  %101 = phi i32 [ %57, %64 ], [ %263, %262 ]
  %102 = getelementptr inbounds i32, ptr %65, i64 %96
  %103 = load i32, ptr %102, align 4, !tbaa !51
  %104 = load i32, ptr %44, align 8, !tbaa !26
  %105 = mul i32 %103, -1640531535
  %106 = sub i32 32, %104
  %107 = lshr i32 %105, %106
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %66, i64 %108, i32 1
  %110 = load i32, ptr %109, align 4, !tbaa !51
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %130, label %112

112:                                              ; preds = %95
  %113 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %66, i64 %108
  %114 = load i32, ptr %113, align 4, !tbaa !59
  %115 = icmp eq i32 %114, %103
  br i1 %115, label %134, label %116

116:                                              ; preds = %112
  %117 = load i32, ptr %45, align 8, !tbaa !29
  br label %122

118:                                              ; preds = %122
  %119 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %66, i64 %126
  %120 = load i32, ptr %119, align 4, !tbaa !59
  %121 = icmp eq i32 %120, %103
  br i1 %121, label %134, label %122

122:                                              ; preds = %116, %118
  %123 = phi i32 [ %107, %116 ], [ %125, %118 ]
  %124 = add i32 %123, 1
  %125 = and i32 %117, %124
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %66, i64 %126, i32 1
  %128 = load i32, ptr %127, align 4, !tbaa !51
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %118

130:                                              ; preds = %122, %95
  %131 = phi i64 [ %108, %95 ], [ %126, %122 ]
  %132 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %66, i64 %131, i32 1
  %133 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %66, i64 %131
  store i32 %103, ptr %133, align 4, !tbaa !59
  store i32 0, ptr %132, align 4, !tbaa !61
  br label %139

134:                                              ; preds = %118, %112
  %135 = phi i64 [ %108, %112 ], [ %126, %118 ]
  %136 = phi i32 [ %110, %112 ], [ %128, %118 ]
  %137 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %66, i64 %135, i32 1
  %138 = icmp eq i32 %136, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134, %130
  %140 = phi ptr [ %132, %130 ], [ %137, %134 ]
  %141 = zext i32 %103 to i64
  %142 = getelementptr inbounds i32, ptr %1, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !51
  %144 = add i32 %143, %100
  br label %145

145:                                              ; preds = %139, %134
  %146 = phi ptr [ %140, %139 ], [ %137, %134 ]
  %147 = phi i32 [ 0, %139 ], [ %136, %134 ]
  %148 = phi i32 [ %144, %139 ], [ %100, %134 ]
  %149 = add nuw nsw i64 %96, 1
  %150 = trunc i64 %149 to i32
  %151 = add nuw i32 %147, 1
  store i32 %151, ptr %146, align 4, !tbaa !51
  %152 = sub i32 %150, %101
  %153 = icmp eq i32 %152, %47
  br i1 %153, label %154, label %262

154:                                              ; preds = %145
  %155 = zext i32 %101 to i64
  %156 = getelementptr inbounds i32, ptr %65, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !51
  %158 = load i32, ptr %44, align 8, !tbaa !26
  %159 = mul i32 %157, -1640531535
  %160 = sub i32 32, %158
  %161 = lshr i32 %159, %160
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %66, i64 %162, i32 1
  %164 = load i32, ptr %163, align 4, !tbaa !51
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %184, label %166

166:                                              ; preds = %154
  %167 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %66, i64 %162
  %168 = load i32, ptr %167, align 4, !tbaa !59
  %169 = icmp eq i32 %168, %157
  br i1 %169, label %189, label %170

170:                                              ; preds = %166
  %171 = load i32, ptr %45, align 8, !tbaa !29
  br label %176

172:                                              ; preds = %176
  %173 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %66, i64 %180
  %174 = load i32, ptr %173, align 4, !tbaa !59
  %175 = icmp eq i32 %174, %157
  br i1 %175, label %189, label %176

176:                                              ; preds = %170, %172
  %177 = phi i32 [ %161, %170 ], [ %179, %172 ]
  %178 = add i32 %177, 1
  %179 = and i32 %171, %178
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %66, i64 %180, i32 1
  %182 = load i32, ptr %181, align 4, !tbaa !51
  %183 = icmp eq i32 %182, -1
  br i1 %183, label %184, label %172

184:                                              ; preds = %176, %154
  %185 = phi i64 [ %162, %154 ], [ %180, %176 ]
  %186 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %66, i64 %185, i32 1
  %187 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %66, i64 %185
  store i32 %157, ptr %187, align 4, !tbaa !59
  %188 = add i32 %101, 1
  store i32 -1, ptr %186, align 4, !tbaa !51
  br label %262

189:                                              ; preds = %172, %166
  %190 = phi i64 [ %162, %166 ], [ %180, %172 ]
  %191 = phi i32 [ %164, %166 ], [ %182, %172 ]
  %192 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %66, i64 %190, i32 1
  %193 = add i32 %101, 1
  %194 = add i32 %191, -1
  store i32 %194, ptr %192, align 4, !tbaa !51
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %262

196:                                              ; preds = %189
  %197 = load i32, ptr %44, align 8, !tbaa !26
  %198 = sub i32 32, %197
  %199 = lshr i32 %159, %198
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %66, i64 %200, i32 1
  %202 = load i32, ptr %201, align 4, !tbaa !61
  %203 = icmp eq i32 %202, -1
  br i1 %203, label %257, label %204

204:                                              ; preds = %196, %210
  %205 = phi i64 [ %214, %210 ], [ %200, %196 ]
  %206 = phi i32 [ %213, %210 ], [ %199, %196 ]
  %207 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %66, i64 %205
  %208 = load i32, ptr %207, align 4, !tbaa !59
  %209 = icmp eq i32 %208, %157
  br i1 %209, label %218, label %210

210:                                              ; preds = %204
  %211 = add i32 %206, 1
  %212 = load i32, ptr %45, align 8, !tbaa !29
  %213 = and i32 %212, %211
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %66, i64 %214, i32 1
  %216 = load i32, ptr %215, align 4, !tbaa !61
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %257, label %204

218:                                              ; preds = %204
  %219 = zext i32 %206 to i64
  %220 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %66, i64 %219
  %221 = load i32, ptr %45, align 8, !tbaa !29
  %222 = add i32 %206, 1
  %223 = and i32 %221, %222
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %66, i64 %224, i32 1
  %226 = load i32, ptr %225, align 4, !tbaa !61
  %227 = icmp eq i32 %226, -1
  br i1 %227, label %245, label %228

228:                                              ; preds = %218, %248
  %229 = phi i32 [ %255, %248 ], [ %226, %218 ]
  %230 = phi i64 [ %253, %248 ], [ %224, %218 ]
  %231 = phi i32 [ %252, %248 ], [ %223, %218 ]
  %232 = phi i32 [ %250, %248 ], [ 1, %218 ]
  %233 = phi ptr [ %249, %248 ], [ %220, %218 ]
  %234 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %66, i64 %230
  %235 = load i32, ptr %234, align 4, !tbaa !59
  %236 = mul i32 %235, -1640531535
  %237 = lshr i32 %236, %198
  %238 = sub i32 %231, %237
  %239 = and i32 %238, %221
  %240 = icmp ult i32 %239, %232
  br i1 %240, label %243, label %241

241:                                              ; preds = %228
  store i32 %235, ptr %233, align 4, !tbaa !59
  %242 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %233, i64 0, i32 1
  store i32 %229, ptr %242, align 4, !tbaa !61
  br label %248

243:                                              ; preds = %228
  %244 = add i32 %232, 1
  br label %248

245:                                              ; preds = %248, %218
  %246 = phi ptr [ %220, %218 ], [ %249, %248 ]
  %247 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %246, i64 0, i32 1
  store i32 -1, ptr %247, align 4, !tbaa !61
  br label %257

248:                                              ; preds = %243, %241
  %249 = phi ptr [ %233, %243 ], [ %234, %241 ]
  %250 = phi i32 [ %244, %243 ], [ 1, %241 ]
  %251 = add i32 %231, 1
  %252 = and i32 %251, %221
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds %struct.COVER_map_pair_t_s, ptr %66, i64 %253, i32 1
  %255 = load i32, ptr %254, align 4, !tbaa !61
  %256 = icmp eq i32 %255, -1
  br i1 %256, label %245, label %228

257:                                              ; preds = %210, %245, %196
  %258 = zext i32 %157 to i64
  %259 = getelementptr inbounds i32, ptr %1, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !51
  %261 = sub i32 %148, %260
  br label %262

262:                                              ; preds = %257, %189, %184, %145
  %263 = phi i32 [ %101, %145 ], [ %193, %257 ], [ %193, %189 ], [ %188, %184 ]
  %264 = phi i32 [ %148, %145 ], [ %261, %257 ], [ %148, %189 ], [ %148, %184 ]
  %265 = icmp ugt i32 %264, %99
  %266 = tail call i32 @llvm.umax.i32(i32 %264, i32 %99)
  %267 = select i1 %265, i32 %150, i32 %98
  %268 = select i1 %265, i32 %263, i32 %97
  %269 = icmp eq i64 %149, %68
  br i1 %269, label %69, label %95, !llvm.loop !62

270:                                              ; preds = %293, %88
  %271 = phi i32 [ %89, %88 ], [ %317, %293 ]
  %272 = phi i32 [ %90, %88 ], [ %318, %293 ]
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %347, label %274

274:                                              ; preds = %270
  %275 = sub i32 %272, %271
  %276 = and i32 %275, 3
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %289, label %278

278:                                              ; preds = %274, %278
  %279 = phi i32 [ %286, %278 ], [ %271, %274 ]
  %280 = phi i32 [ %287, %278 ], [ 0, %274 ]
  %281 = zext i32 %279 to i64
  %282 = getelementptr inbounds i32, ptr %65, i64 %281
  %283 = load i32, ptr %282, align 4, !tbaa !51
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds i32, ptr %1, i64 %284
  store i32 0, ptr %285, align 4, !tbaa !51
  %286 = add i32 %279, 1
  %287 = add i32 %280, 1
  %288 = icmp eq i32 %287, %276
  br i1 %288, label %289, label %278, !llvm.loop !63

289:                                              ; preds = %278, %274
  %290 = phi i32 [ %271, %274 ], [ %286, %278 ]
  %291 = sub i32 %271, %272
  %292 = icmp ugt i32 %291, -4
  br i1 %292, label %347, label %320

293:                                              ; preds = %88, %293
  %294 = phi i32 [ %316, %293 ], [ %91, %88 ]
  %295 = phi i32 [ %318, %293 ], [ %92, %88 ]
  %296 = phi i32 [ %317, %293 ], [ %93, %88 ]
  %297 = zext i32 %294 to i64
  %298 = getelementptr inbounds i32, ptr %65, i64 %297
  %299 = load i32, ptr %298, align 4, !tbaa !51
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds i32, ptr %1, i64 %300
  %302 = load i32, ptr %301, align 4, !tbaa !51
  %303 = icmp eq i32 %302, 0
  %304 = tail call i32 @llvm.umin.i32(i32 %296, i32 %294)
  %305 = add i32 %294, 1
  %306 = select i1 %303, i32 %296, i32 %304
  %307 = select i1 %303, i32 %295, i32 %305
  %308 = zext i32 %305 to i64
  %309 = getelementptr inbounds i32, ptr %65, i64 %308
  %310 = load i32, ptr %309, align 4, !tbaa !51
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds i32, ptr %1, i64 %311
  %313 = load i32, ptr %312, align 4, !tbaa !51
  %314 = icmp eq i32 %313, 0
  %315 = tail call i32 @llvm.umin.i32(i32 %306, i32 %305)
  %316 = add i32 %294, 2
  %317 = select i1 %314, i32 %306, i32 %315
  %318 = select i1 %314, i32 %307, i32 %316
  %319 = icmp eq i32 %316, %267
  br i1 %319, label %270, label %293, !llvm.loop !64

320:                                              ; preds = %289, %320
  %321 = phi i32 [ %345, %320 ], [ %290, %289 ]
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds i32, ptr %65, i64 %322
  %324 = load i32, ptr %323, align 4, !tbaa !51
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds i32, ptr %1, i64 %325
  store i32 0, ptr %326, align 4, !tbaa !51
  %327 = add i32 %321, 1
  %328 = zext i32 %327 to i64
  %329 = getelementptr inbounds i32, ptr %65, i64 %328
  %330 = load i32, ptr %329, align 4, !tbaa !51
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds i32, ptr %1, i64 %331
  store i32 0, ptr %332, align 4, !tbaa !51
  %333 = add i32 %321, 2
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds i32, ptr %65, i64 %334
  %336 = load i32, ptr %335, align 4, !tbaa !51
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds i32, ptr %1, i64 %337
  store i32 0, ptr %338, align 4, !tbaa !51
  %339 = add i32 %321, 3
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds i32, ptr %65, i64 %340
  %342 = load i32, ptr %341, align 4, !tbaa !51
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds i32, ptr %1, i64 %343
  store i32 0, ptr %344, align 4, !tbaa !51
  %345 = add i32 %321, 4
  %346 = icmp eq i32 %345, %272
  br i1 %346, label %347, label %320, !llvm.loop !65

347:                                              ; preds = %289, %320, %69, %270
  %348 = phi i32 [ %271, %270 ], [ %267, %69 ], [ %272, %320 ], [ %272, %289 ]
  %349 = phi i32 [ %271, %270 ], [ %267, %69 ], [ %271, %320 ], [ %271, %289 ]
  %350 = zext i32 %349 to i64
  %351 = icmp eq i32 %266, 0
  br i1 %351, label %382, label %352

352:                                              ; preds = %347
  %353 = add i32 %48, %348
  %354 = sub i32 %353, %349
  %355 = zext i32 %354 to i64
  %356 = tail call i64 @llvm.umin.i64(i64 %52, i64 %355)
  %357 = icmp ult i64 %356, %49
  br i1 %357, label %392, label %358

358:                                              ; preds = %352
  %359 = sub i64 %52, %356
  %360 = getelementptr inbounds i8, ptr %3, i64 %359
  %361 = load ptr, ptr %0, align 8, !tbaa !42
  %362 = getelementptr inbounds i8, ptr %361, i64 %350
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %360, ptr align 1 %362, i64 %356, i1 false)
  br i1 %33, label %363, label %385

363:                                              ; preds = %358
  %364 = tail call i64 @clock() #24
  %365 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %364, i64 %55), !nosanitize !66
  %366 = extractvalue { i64, i1 } %365, 1, !nosanitize !66
  br i1 %366, label %367, label %368, !nosanitize !66

367:                                              ; preds = %363
  tail call void @llvm.ubsantrap(i8 21) #26, !nosanitize !66
  unreachable, !nosanitize !66

368:                                              ; preds = %363
  %369 = extractvalue { i64, i1 } %365, 0, !nosanitize !66
  %370 = icmp sgt i64 %369, 150000
  %371 = or i1 %50, %370
  br i1 %371, label %372, label %385

372:                                              ; preds = %368
  %373 = tail call i64 @clock() #24
  %374 = load ptr, ptr @stderr, align 8, !tbaa !14
  %375 = sub i64 %4, %359
  %376 = mul i64 %375, 100
  %377 = udiv i64 %376, %4
  %378 = trunc i64 %377 to i32
  %379 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %374, ptr noundef nonnull @.str.13, i32 noundef %378) #23
  %380 = load ptr, ptr @stderr, align 8, !tbaa !14
  %381 = tail call i32 @fflush(ptr noundef %380)
  br label %385

382:                                              ; preds = %51, %347
  %383 = add i64 %53, 1
  %384 = icmp ult i64 %383, %30
  br i1 %384, label %385, label %392

385:                                              ; preds = %358, %368, %372, %382
  %386 = phi i64 [ %52, %382 ], [ %359, %372 ], [ %359, %368 ], [ %359, %358 ]
  %387 = phi i64 [ %383, %382 ], [ 0, %372 ], [ 0, %368 ], [ 0, %358 ]
  %388 = phi i64 [ %55, %382 ], [ %373, %372 ], [ %55, %368 ], [ %55, %358 ]
  %389 = add nsw i64 %54, 1
  %390 = urem i64 %389, %25
  %391 = icmp eq i64 %386, 0
  br i1 %391, label %392, label %51, !llvm.loop !67

392:                                              ; preds = %385, %382, %352, %39
  %393 = phi i64 [ 0, %39 ], [ %52, %352 ], [ %52, %382 ], [ 0, %385 ]
  br i1 %33, label %394, label %399

394:                                              ; preds = %392
  %395 = load ptr, ptr @stderr, align 8, !tbaa !14
  %396 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %395, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #23
  %397 = load ptr, ptr @stderr, align 8, !tbaa !14
  %398 = tail call i32 @fflush(ptr noundef %397)
  br label %399

399:                                              ; preds = %394, %392
  ret i64 %393
}

declare i64 @ZDICT_finalizeDictionary(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef byval(%struct.ZDICT_params_t) align 8) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @COVER_checkTotalCompressedSize(ptr nocapture noundef readonly byval(%struct.ZDICT_cover_params_t) align 8 %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #5 {
  %9 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %0, i64 0, i32 4
  %10 = load double, ptr %9, align 8, !tbaa !21
  %11 = fcmp olt double %10, 1.000000e+00
  %12 = select i1 %11, i64 %4, i64 0
  %13 = icmp uge i64 %12, %5
  br i1 %13, label %48, label %14

14:                                               ; preds = %8
  %15 = sub i64 %5, %12
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %37, label %17

17:                                               ; preds = %14
  %18 = and i64 %15, -4
  %19 = add i64 %12, %18
  %20 = getelementptr i64, ptr %1, i64 %12
  br label %21

21:                                               ; preds = %21, %17
  %22 = phi i64 [ 0, %17 ], [ %31, %21 ]
  %23 = phi <2 x i64> [ zeroinitializer, %17 ], [ %29, %21 ]
  %24 = phi <2 x i64> [ zeroinitializer, %17 ], [ %30, %21 ]
  %25 = getelementptr i64, ptr %20, i64 %22
  %26 = getelementptr inbounds i64, ptr %25, i64 2
  %27 = load <2 x i64>, ptr %25, align 8, !tbaa !5
  %28 = load <2 x i64>, ptr %26, align 8, !tbaa !5
  %29 = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %27, <2 x i64> %23)
  %30 = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %28, <2 x i64> %24)
  %31 = add nuw i64 %22, 4
  %32 = icmp eq i64 %31, %18
  br i1 %32, label %33, label %21, !llvm.loop !68

33:                                               ; preds = %21
  %34 = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %29, <2 x i64> %30)
  %35 = tail call i64 @llvm.vector.reduce.umax.v2i64(<2 x i64> %34)
  %36 = icmp eq i64 %15, %18
  br i1 %36, label %48, label %37

37:                                               ; preds = %14, %33
  %38 = phi i64 [ 0, %14 ], [ %35, %33 ]
  %39 = phi i64 [ %12, %14 ], [ %19, %33 ]
  br label %40

40:                                               ; preds = %37, %40
  %41 = phi i64 [ %45, %40 ], [ %38, %37 ]
  %42 = phi i64 [ %46, %40 ], [ %39, %37 ]
  %43 = getelementptr inbounds i64, ptr %1, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !5
  %45 = tail call i64 @llvm.umax.i64(i64 %44, i64 %41)
  %46 = add nuw i64 %42, 1
  %47 = icmp eq i64 %46, %5
  br i1 %47, label %48, label %40, !llvm.loop !69

48:                                               ; preds = %40, %33, %8
  %49 = phi i64 [ 0, %8 ], [ %35, %33 ], [ %45, %40 ]
  %50 = tail call i64 @ZSTD_compressBound(i64 noundef %49) #24
  %51 = tail call noalias ptr @malloc(i64 noundef %50) #25
  %52 = tail call ptr @ZSTD_createCCtx() #24
  %53 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %0, i64 0, i32 7
  %54 = load i32, ptr %53, align 8, !tbaa !70
  %55 = tail call ptr @ZSTD_createCDict(ptr noundef %6, i64 noundef %7, i32 noundef %54) #24
  %56 = icmp eq ptr %51, null
  %57 = icmp eq ptr %52, null
  %58 = select i1 %56, i1 true, i1 %57
  %59 = icmp eq ptr %55, null
  %60 = select i1 %58, i1 true, i1 %59
  %61 = or i1 %60, %13
  %62 = select i1 %60, i64 -1, i64 %7
  br i1 %61, label %77, label %63

63:                                               ; preds = %48, %73
  %64 = phi i64 [ %75, %73 ], [ %12, %48 ]
  %65 = phi i64 [ %74, %73 ], [ %7, %48 ]
  %66 = getelementptr inbounds i64, ptr %3, i64 %64
  %67 = load i64, ptr %66, align 8, !tbaa !5
  %68 = getelementptr inbounds i8, ptr %2, i64 %67
  %69 = getelementptr inbounds i64, ptr %1, i64 %64
  %70 = load i64, ptr %69, align 8, !tbaa !5
  %71 = tail call i64 @ZSTD_compress_usingCDict(ptr noundef nonnull %52, ptr noundef nonnull %51, i64 noundef %50, ptr noundef %68, i64 noundef %70, ptr noundef nonnull %55) #24
  %72 = icmp ult i64 %71, -119
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  %74 = add i64 %71, %65
  %75 = add i64 %64, 1
  %76 = icmp eq i64 %75, %5
  br i1 %76, label %77, label %63, !llvm.loop !71

77:                                               ; preds = %73, %63, %48
  %78 = phi i64 [ %62, %48 ], [ %74, %73 ], [ %71, %63 ]
  %79 = tail call i64 @ZSTD_freeCCtx(ptr noundef %52) #24
  %80 = tail call i64 @ZSTD_freeCDict(ptr noundef %55) #24
  br i1 %56, label %82, label %81

81:                                               ; preds = %77
  tail call void @free(ptr noundef nonnull %51) #24
  br label %82

82:                                               ; preds = %77, %81
  ret i64 %78
}

declare i64 @ZSTD_compressBound(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare ptr @ZSTD_createCCtx() local_unnamed_addr #6

declare ptr @ZSTD_createCDict(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare i64 @ZSTD_compress_usingCDict(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare i64 @ZSTD_freeCCtx(ptr noundef) local_unnamed_addr #6

declare i64 @ZSTD_freeCDict(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @COVER_best_init(ptr noundef writeonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.COVER_best_s, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.COVER_best_s, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i64 -1, ptr %5, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.COVER_best_s, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  br label %7

7:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local void @COVER_best_wait(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.COVER_best_s, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !74
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %8, label %7, !llvm.loop !75

7:                                                ; preds = %3, %7
  br label %7

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @COVER_best_destroy(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.COVER_best_s, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !74
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %8, label %7, !llvm.loop !75

7:                                                ; preds = %3, %7
  br label %7

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.COVER_best_s, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %10) #24
  br label %13

13:                                               ; preds = %8, %12, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @COVER_best_start(ptr noundef %0) local_unnamed_addr #11 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.COVER_best_s, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !74
  %6 = add i64 %5, 1
  store i64 %6, ptr %4, align 8, !tbaa !74
  br label %7

7:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @COVER_best_finish(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.ZDICT_cover_params_t) align 8 %1, ptr nocapture noundef readonly byval(%struct.COVER_dictSelection) align 8 %2) local_unnamed_addr #12 {
  %4 = load ptr, ptr %2, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.COVER_dictSelection, ptr %2, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.COVER_dictSelection, ptr %2, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !80
  %9 = icmp eq ptr %0, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.COVER_best_s, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !74
  %13 = add i64 %12, -1
  store i64 %13, ptr %11, align 8, !tbaa !74
  %14 = getelementptr inbounds %struct.COVER_best_s, ptr %0, i64 0, i32 6
  %15 = load i64, ptr %14, align 8, !tbaa !72
  %16 = icmp ult i64 %6, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.COVER_best_s, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.COVER_best_s, ptr %0, i64 0, i32 4
  %23 = load i64, ptr %22, align 8, !tbaa !81
  %24 = icmp ult i64 %23, %8
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  tail call void @free(ptr noundef nonnull %19) #24
  br label %26

26:                                               ; preds = %17, %25
  %27 = tail call noalias ptr @malloc(i64 noundef %8) #25
  store ptr %27, ptr %18, align 8, !tbaa !76
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  store i64 -1, ptr %14, align 8, !tbaa !72
  %30 = getelementptr inbounds %struct.COVER_best_s, ptr %0, i64 0, i32 4
  store i64 0, ptr %30, align 8, !tbaa !81
  br label %37

31:                                               ; preds = %26, %21
  %32 = phi ptr [ %27, %26 ], [ %19, %21 ]
  %33 = icmp eq ptr %4, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr nonnull align 1 %4, i64 %8, i1 false)
  %35 = getelementptr inbounds %struct.COVER_best_s, ptr %0, i64 0, i32 4
  store i64 %8, ptr %35, align 8, !tbaa !81
  %36 = getelementptr inbounds %struct.COVER_best_s, ptr %0, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %36, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !82
  store i64 %6, ptr %14, align 8, !tbaa !72
  br label %37

37:                                               ; preds = %10, %34, %31, %29, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @COVER_dictSelectionError(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.COVER_dictSelection) align 8 %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.COVER_dictSelection, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i64 %1, ptr %3, align 8, !tbaa !79, !alias.scope !84
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @COVER_dictSelectionIsError(ptr nocapture noundef readonly byval(%struct.COVER_dictSelection) align 8 %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.COVER_dictSelection, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !79
  %4 = icmp ugt i64 %3, -120
  %5 = load ptr, ptr %0, align 8
  %6 = icmp eq ptr %5, null
  %7 = select i1 %4, i1 true, i1 %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @COVER_dictSelectionFree(ptr nocapture noundef readonly byval(%struct.COVER_dictSelection) align 8 %0) local_unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !77
  tail call void @free(ptr noundef %2) #24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @COVER_selectDict(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.COVER_dictSelection) align 8 %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i64 noundef %7, i64 noundef %8, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8 %9, ptr nocapture noundef readonly %10, i64 %11) local_unnamed_addr #5 {
  %13 = getelementptr inbounds i8, ptr %1, i64 %3
  %14 = tail call noalias ptr @malloc(i64 noundef %2) #25
  %15 = tail call noalias ptr @malloc(i64 noundef %2) #25
  %16 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %9, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !87
  %18 = uitofp i32 %17 to double
  %19 = fdiv double %18, 1.000000e+02
  %20 = fadd double %19, 1.000000e+00
  %21 = icmp ne ptr %14, null
  %22 = icmp ne ptr %15, null
  %23 = and i1 %21, %22
  br i1 %23, label %26, label %24

24:                                               ; preds = %12
  tail call void @free(ptr noundef %14) #24
  tail call void @free(ptr noundef %15) #24
  %25 = getelementptr inbounds %struct.COVER_dictSelection, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !88
  store i64 %3, ptr %25, align 8, !tbaa !79, !alias.scope !91
  br label %76

26:                                               ; preds = %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %14, ptr align 1 %1, i64 %3, i1 false)
  %27 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %9, i64 0, i32 7
  %28 = tail call i64 @ZDICT_finalizeDictionary(ptr noundef nonnull %14, i64 noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %27) #24
  %29 = tail call i32 @ZDICT_isError(i64 noundef %28) #24
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  tail call void @free(ptr noundef nonnull %14) #24
  tail call void @free(ptr noundef nonnull %15) #24
  %32 = getelementptr inbounds %struct.COVER_dictSelection, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !94
  store i64 %28, ptr %32, align 8, !tbaa !79, !alias.scope !97
  br label %76

33:                                               ; preds = %26
  %34 = tail call i64 @COVER_checkTotalCompressedSize(ptr noundef nonnull byval(%struct.ZDICT_cover_params_t) align 8 %9, ptr noundef %5, ptr noundef %4, ptr noundef %10, i64 noundef %7, i64 noundef %8, ptr noundef nonnull %14, i64 noundef %28)
  %35 = icmp ult i64 %34, -119
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  tail call void @free(ptr noundef nonnull %14) #24
  tail call void @free(ptr noundef nonnull %15) #24
  %37 = getelementptr inbounds %struct.COVER_dictSelection, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !100
  store i64 %34, ptr %37, align 8, !tbaa !79, !alias.scope !103
  br label %76

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %9, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !106
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = icmp ugt i64 %28, 256
  br i1 %43, label %44, label %73

44:                                               ; preds = %42
  %45 = uitofp i64 %34 to double
  %46 = fmul double %20, %45
  br label %50

47:                                               ; preds = %38
  tail call void @free(ptr noundef nonnull %15) #24
  store ptr %14, ptr %0, align 8, !tbaa !77, !alias.scope !107
  %48 = getelementptr inbounds %struct.COVER_dictSelection, ptr %0, i64 0, i32 1
  store i64 %28, ptr %48, align 8, !tbaa !80, !alias.scope !107
  %49 = getelementptr inbounds %struct.COVER_dictSelection, ptr %0, i64 0, i32 2
  store i64 %34, ptr %49, align 8, !tbaa !79, !alias.scope !107
  br label %76

50:                                               ; preds = %44, %70
  %51 = phi i64 [ 256, %44 ], [ %71, %70 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %15, ptr nonnull align 1 %14, i64 %28, i1 false)
  %52 = sub i64 0, %51
  %53 = getelementptr inbounds i8, ptr %13, i64 %52
  %54 = tail call i64 @ZDICT_finalizeDictionary(ptr noundef nonnull %15, i64 noundef %2, ptr noundef %53, i64 noundef %51, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %27) #24
  %55 = tail call i32 @ZDICT_isError(i64 noundef %54) #24
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  tail call void @free(ptr noundef %14) #24
  tail call void @free(ptr noundef %15) #24
  %58 = getelementptr inbounds %struct.COVER_dictSelection, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !110
  store i64 %54, ptr %58, align 8, !tbaa !79, !alias.scope !113
  br label %76

59:                                               ; preds = %50
  %60 = tail call i64 @COVER_checkTotalCompressedSize(ptr noundef nonnull byval(%struct.ZDICT_cover_params_t) align 8 %9, ptr noundef %5, ptr noundef %4, ptr noundef %10, i64 noundef %7, i64 noundef %8, ptr noundef nonnull %15, i64 noundef %54)
  %61 = icmp ult i64 %60, -119
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  tail call void @free(ptr noundef %14) #24
  tail call void @free(ptr noundef %15) #24
  %63 = getelementptr inbounds %struct.COVER_dictSelection, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !116
  store i64 %60, ptr %63, align 8, !tbaa !79, !alias.scope !119
  br label %76

64:                                               ; preds = %59
  %65 = uitofp i64 %60 to double
  %66 = fcmp ult double %46, %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  tail call void @free(ptr noundef %14) #24
  store ptr %15, ptr %0, align 8, !tbaa !77, !alias.scope !122
  %68 = getelementptr inbounds %struct.COVER_dictSelection, ptr %0, i64 0, i32 1
  store i64 %54, ptr %68, align 8, !tbaa !80, !alias.scope !122
  %69 = getelementptr inbounds %struct.COVER_dictSelection, ptr %0, i64 0, i32 2
  store i64 %60, ptr %69, align 8, !tbaa !79, !alias.scope !122
  br label %76

70:                                               ; preds = %64
  %71 = shl i64 %54, 1
  %72 = icmp ult i64 %71, %28
  br i1 %72, label %50, label %73, !llvm.loop !125

73:                                               ; preds = %70, %42
  tail call void @free(ptr noundef %15) #24
  store ptr %14, ptr %0, align 8, !tbaa !77, !alias.scope !126
  %74 = getelementptr inbounds %struct.COVER_dictSelection, ptr %0, i64 0, i32 1
  store i64 %28, ptr %74, align 8, !tbaa !80, !alias.scope !126
  %75 = getelementptr inbounds %struct.COVER_dictSelection, ptr %0, i64 0, i32 2
  store i64 %34, ptr %75, align 8, !tbaa !79, !alias.scope !126
  br label %76

76:                                               ; preds = %73, %67, %62, %57, %47, %36, %31, %24
  ret void
}

declare i32 @ZDICT_isError(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_optimizeTrainFromBuffer_cover(ptr nocapture noundef writeonly %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef %5) local_unnamed_addr #5 {
  %7 = alloca %struct.COVER_best_s, align 8
  %8 = alloca %struct.COVER_ctx_t, align 8
  %9 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %5, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !129
  %11 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %5, i64 0, i32 4
  %12 = load double, ptr %11, align 8, !tbaa !21
  %13 = fcmp ugt double %12, 0.000000e+00
  %14 = select i1 %13, double %12, double 1.000000e+00
  %15 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %5, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !130
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 6, i32 %16
  %19 = select i1 %17, i32 8, i32 %16
  %20 = load i32, ptr %5, align 8, !tbaa !131
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 50, i32 %20
  %23 = select i1 %21, i32 2000, i32 %20
  %24 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %5, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !132
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 40, i32 %25
  %28 = select i1 %21, i32 1950, i32 0
  %29 = udiv i32 %28, %27
  %30 = tail call i32 @llvm.umax.i32(i32 %29, i32 1)
  %31 = trunc i32 %28 to i16
  %32 = trunc i32 %30 to i16
  %33 = udiv i16 %31, %32
  %34 = add nuw nsw i16 %33, 1
  %35 = zext nneg i16 %34 to i32
  %36 = zext i1 %17 to i32
  %37 = shl nuw nsw i32 %35, %36
  %38 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %5, i64 0, i32 7, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #24
  %40 = fcmp ogt double %14, 1.000000e+00
  br i1 %40, label %41, label %48

41:                                               ; preds = %6
  %42 = icmp sgt i32 %39, 0
  br i1 %42, label %43, label %313

43:                                               ; preds = %41
  %44 = load ptr, ptr @stderr, align 8, !tbaa !14
  %45 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 21, i64 1, ptr %44) #23
  %46 = load ptr, ptr @stderr, align 8, !tbaa !14
  %47 = tail call i32 @fflush(ptr noundef %46)
  br label %313

48:                                               ; preds = %6
  %49 = icmp ult i32 %22, %19
  %50 = icmp ult i32 %23, %22
  %51 = or i1 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = icmp sgt i32 %39, 0
  br i1 %53, label %54, label %313

54:                                               ; preds = %52
  %55 = load ptr, ptr @stderr, align 8, !tbaa !14
  %56 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 21, i64 1, ptr %55) #23
  %57 = load ptr, ptr @stderr, align 8, !tbaa !14
  %58 = tail call i32 @fflush(ptr noundef %57)
  br label %313

59:                                               ; preds = %48
  %60 = icmp eq i32 %4, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %59
  %62 = icmp sgt i32 %39, 0
  br i1 %62, label %63, label %313

63:                                               ; preds = %61
  %64 = load ptr, ptr @stderr, align 8, !tbaa !14
  %65 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 40, i64 1, ptr %64) #23
  %66 = load ptr, ptr @stderr, align 8, !tbaa !14
  %67 = tail call i32 @fflush(ptr noundef %66)
  br label %313

68:                                               ; preds = %59
  %69 = icmp ult i64 %1, 256
  br i1 %69, label %70, label %77

70:                                               ; preds = %68
  %71 = icmp sgt i32 %39, 0
  br i1 %71, label %72, label %313

72:                                               ; preds = %70
  %73 = load ptr, ptr @stderr, align 8, !tbaa !14
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef nonnull @.str.3, i32 noundef 256) #23
  %75 = load ptr, ptr @stderr, align 8, !tbaa !14
  %76 = tail call i32 @fflush(ptr noundef %75)
  br label %313

77:                                               ; preds = %68
  %78 = icmp ugt i32 %10, 1
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  %80 = zext i32 %10 to i64
  %81 = tail call ptr @POOL_create(i64 noundef %80, i64 noundef 1) #24
  %82 = icmp eq ptr %81, null
  br i1 %82, label %313, label %83

83:                                               ; preds = %79, %77
  %84 = phi ptr [ %81, %79 ], [ null, %77 ]
  %85 = getelementptr inbounds %struct.COVER_best_s, ptr %7, i64 0, i32 2
  %86 = getelementptr inbounds %struct.COVER_best_s, ptr %7, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %85, i8 0, i64 24, i1 false)
  store i64 -1, ptr %86, align 8, !tbaa !72
  %87 = getelementptr inbounds %struct.COVER_best_s, ptr %7, i64 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %87, i8 0, i64 48, i1 false)
  %88 = icmp sgt i32 %39, 1
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load ptr, ptr @stderr, align 8, !tbaa !14
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.8, i32 noundef %37) #23
  %92 = load ptr, ptr @stderr, align 8, !tbaa !14
  %93 = tail call i32 @fflush(ptr noundef %92)
  br label %94

94:                                               ; preds = %89, %83
  %95 = icmp ugt i32 %18, %19
  br i1 %95, label %282, label %96

96:                                               ; preds = %94
  %97 = icmp sgt i32 %39, 2
  %98 = icmp eq i32 %39, 0
  %99 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %39, i32 -1)
  %100 = extractvalue { i32, i1 } %99, 0
  %101 = extractvalue { i32, i1 } %99, 1
  %102 = getelementptr inbounds %struct.COVER_ctx_t, ptr %8, i64 0, i32 7
  %103 = uitofp i64 %1 to double
  %104 = icmp sgt i32 %39, 0
  %105 = trunc i64 %1 to i32
  %106 = getelementptr inbounds %struct.COVER_ctx_t, ptr %8, i64 0, i32 11
  %107 = icmp eq ptr %84, null
  %108 = icmp ugt i32 %39, 3
  %109 = getelementptr inbounds %struct.COVER_ctx_t, ptr %8, i64 0, i32 6
  %110 = getelementptr inbounds %struct.COVER_ctx_t, ptr %8, i64 0, i32 8
  %111 = getelementptr inbounds %struct.COVER_ctx_t, ptr %8, i64 0, i32 9
  %112 = getelementptr inbounds %struct.COVER_ctx_t, ptr %8, i64 0, i32 1
  %113 = select i1 %98, i32 0, i32 %100
  br label %114

114:                                              ; preds = %96, %279
  %115 = phi i32 [ 1, %96 ], [ %254, %279 ]
  %116 = phi i32 [ %18, %96 ], [ %280, %279 ]
  %117 = phi i1 [ true, %96 ], [ false, %279 ]
  %118 = phi i64 [ 0, %96 ], [ %253, %279 ]
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %8) #24
  br i1 %97, label %119, label %124

119:                                              ; preds = %114
  %120 = load ptr, ptr @stderr, align 8, !tbaa !14
  %121 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef nonnull @.str.9, i32 noundef %116) #23
  %122 = load ptr, ptr @stderr, align 8, !tbaa !14
  %123 = call i32 @fflush(ptr noundef %122)
  br i1 %101, label %125, label %126, !nosanitize !66

124:                                              ; preds = %114
  br i1 %101, label %125, label %126

125:                                              ; preds = %119, %124, %233
  call void @llvm.ubsantrap(i8 21) #26, !nosanitize !66
  unreachable, !nosanitize !66

126:                                              ; preds = %124, %119
  %127 = phi i32 [ %113, %124 ], [ %100, %119 ]
  %128 = call fastcc i64 @COVER_ctx_init(ptr noundef nonnull %8, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %116, double noundef %14, i32 noundef %127), !range !22
  %129 = icmp ult i64 %128, -119
  br i1 %129, label %145, label %130

130:                                              ; preds = %126
  br i1 %104, label %131, label %136

131:                                              ; preds = %130
  %132 = load ptr, ptr @stderr, align 8, !tbaa !14
  %133 = call i64 @fwrite(ptr nonnull @.str.10, i64 29, i64 1, ptr %132) #23
  %134 = load ptr, ptr @stderr, align 8, !tbaa !14
  %135 = call i32 @fflush(ptr noundef %134)
  br label %136

136:                                              ; preds = %131, %130
  %137 = load i64, ptr %85, align 8, !tbaa !74
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %140, label %139, !llvm.loop !75

139:                                              ; preds = %136, %139
  br label %139

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.COVER_best_s, ptr %7, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !76
  %143 = icmp eq ptr %142, null
  br i1 %143, label %277, label %144

144:                                              ; preds = %140
  call void @free(ptr noundef nonnull %142) #24
  br label %277

145:                                              ; preds = %126
  br i1 %117, label %146, label %158

146:                                              ; preds = %145
  %147 = load i64, ptr %102, align 8, !tbaa !23
  %148 = uitofp i64 %147 to double
  %149 = fdiv double %148, %103
  %150 = fcmp ult double %149, 1.000000e+01
  %151 = and i1 %104, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %146
  %153 = load ptr, ptr @stderr, align 8, !tbaa !14
  %154 = trunc i64 %147 to i32
  %155 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %153, ptr noundef nonnull @.str, i32 noundef %105, i32 noundef %154, double noundef %149) #23
  %156 = load ptr, ptr @stderr, align 8, !tbaa !14
  %157 = call i32 @fflush(ptr noundef %156)
  br label %158

158:                                              ; preds = %145, %146, %152
  %159 = icmp eq i32 %116, 0
  br label %160

160:                                              ; preds = %158, %252
  %161 = phi i32 [ %254, %252 ], [ %115, %158 ]
  %162 = phi i32 [ %255, %252 ], [ %22, %158 ]
  %163 = phi i64 [ %253, %252 ], [ %118, %158 ]
  %164 = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #25
  br i1 %97, label %165, label %170

165:                                              ; preds = %160
  %166 = load ptr, ptr @stderr, align 8, !tbaa !14
  %167 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %166, ptr noundef nonnull @.str.11, i32 noundef %162) #23
  %168 = load ptr, ptr @stderr, align 8, !tbaa !14
  %169 = call i32 @fflush(ptr noundef %168)
  br label %170

170:                                              ; preds = %165, %160
  %171 = icmp eq ptr %164, null
  br i1 %171, label %172, label %203

172:                                              ; preds = %170
  br i1 %104, label %173, label %178

173:                                              ; preds = %172
  %174 = load ptr, ptr @stderr, align 8, !tbaa !14
  %175 = call i64 @fwrite(ptr nonnull @.str.12, i64 30, i64 1, ptr %174) #23
  %176 = load ptr, ptr @stderr, align 8, !tbaa !14
  %177 = call i32 @fflush(ptr noundef %176)
  br label %178

178:                                              ; preds = %173, %172
  %179 = load i64, ptr %85, align 8, !tbaa !74
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %182, label %181, !llvm.loop !75

181:                                              ; preds = %178, %181
  br label %181

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.COVER_best_s, ptr %7, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !76
  %185 = icmp eq ptr %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %182
  call void @free(ptr noundef nonnull %184) #24
  br label %187

187:                                              ; preds = %182, %186
  %188 = load ptr, ptr %109, align 8, !tbaa !31
  %189 = icmp eq ptr %188, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %187
  call void @free(ptr noundef nonnull %188) #24
  store ptr null, ptr %109, align 8, !tbaa !31
  br label %191

191:                                              ; preds = %190, %187
  %192 = load ptr, ptr %110, align 8, !tbaa !32
  %193 = icmp eq ptr %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %191
  call void @free(ptr noundef nonnull %192) #24
  store ptr null, ptr %110, align 8, !tbaa !32
  br label %195

195:                                              ; preds = %194, %191
  %196 = load ptr, ptr %111, align 8, !tbaa !33
  %197 = icmp eq ptr %196, null
  br i1 %197, label %199, label %198

198:                                              ; preds = %195
  call void @free(ptr noundef nonnull %196) #24
  store ptr null, ptr %111, align 8, !tbaa !33
  br label %199

199:                                              ; preds = %198, %195
  %200 = load ptr, ptr %112, align 8, !tbaa !34
  %201 = icmp eq ptr %200, null
  br i1 %201, label %277, label %202

202:                                              ; preds = %199
  call void @free(ptr noundef nonnull %200) #24
  store ptr null, ptr %112, align 8, !tbaa !34
  br label %277

203:                                              ; preds = %170
  store ptr %8, ptr %164, align 8, !tbaa !133
  %204 = getelementptr inbounds %struct.COVER_tryParameters_data_s, ptr %164, i64 0, i32 1
  store ptr %7, ptr %204, align 8, !tbaa !135
  %205 = getelementptr inbounds %struct.COVER_tryParameters_data_s, ptr %164, i64 0, i32 2
  store i64 %1, ptr %205, align 8, !tbaa !136
  %206 = getelementptr inbounds %struct.COVER_tryParameters_data_s, ptr %164, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %206, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 48, i1 false), !tbaa.struct !82
  store i32 %162, ptr %206, align 8, !tbaa !137
  %207 = getelementptr inbounds %struct.COVER_tryParameters_data_s, ptr %164, i64 0, i32 3, i32 1
  store i32 %116, ptr %207, align 4, !tbaa !138
  %208 = getelementptr inbounds %struct.COVER_tryParameters_data_s, ptr %164, i64 0, i32 3, i32 4
  store double %14, ptr %208, align 8, !tbaa !139
  %209 = getelementptr inbounds %struct.COVER_tryParameters_data_s, ptr %164, i64 0, i32 3, i32 2
  store i32 %27, ptr %209, align 8, !tbaa !140
  %210 = getelementptr inbounds %struct.COVER_tryParameters_data_s, ptr %164, i64 0, i32 3, i32 5
  store i32 0, ptr %210, align 8, !tbaa !141
  %211 = load i32, ptr %106, align 4, !tbaa !41
  %212 = getelementptr inbounds %struct.COVER_tryParameters_data_s, ptr %164, i64 0, i32 3, i32 7, i32 1
  store i32 %211, ptr %212, align 4, !tbaa !142
  %213 = icmp eq i32 %162, 0
  %214 = or i1 %213, %159
  %215 = zext i32 %162 to i64
  %216 = icmp ugt i64 %215, %1
  %217 = or i1 %216, %214
  %218 = icmp ugt i32 %116, %162
  %219 = or i1 %218, %217
  br i1 %219, label %220, label %227

220:                                              ; preds = %203
  br i1 %104, label %221, label %226

221:                                              ; preds = %220
  %222 = load ptr, ptr @stderr, align 8, !tbaa !14
  %223 = call i64 @fwrite(ptr nonnull @.str.1, i64 27, i64 1, ptr %222) #23
  %224 = load ptr, ptr @stderr, align 8, !tbaa !14
  %225 = call i32 @fflush(ptr noundef %224)
  br label %226

226:                                              ; preds = %221, %220
  call void @free(ptr noundef nonnull %164) #24
  br label %252

227:                                              ; preds = %203
  %228 = load i64, ptr %85, align 8, !tbaa !74
  %229 = add i64 %228, 1
  store i64 %229, ptr %85, align 8, !tbaa !74
  br i1 %107, label %231, label %230

230:                                              ; preds = %227
  call void @POOL_add(ptr noundef nonnull %84, ptr noundef nonnull @COVER_tryParameters, ptr noundef nonnull %164) #24
  br label %232

231:                                              ; preds = %227
  call void @COVER_tryParameters(ptr noundef nonnull %164)
  br label %232

232:                                              ; preds = %231, %230
  br i1 %88, label %233, label %249

233:                                              ; preds = %232
  %234 = call i64 @clock() #24
  %235 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %234, i64 %163), !nosanitize !66
  %236 = extractvalue { i64, i1 } %235, 1, !nosanitize !66
  br i1 %236, label %125, label %237, !nosanitize !66

237:                                              ; preds = %233
  %238 = extractvalue { i64, i1 } %235, 0, !nosanitize !66
  %239 = icmp sgt i64 %238, 150000
  %240 = select i1 %239, i1 true, i1 %108
  br i1 %240, label %241, label %249

241:                                              ; preds = %237
  %242 = call i64 @clock() #24
  %243 = load ptr, ptr @stderr, align 8, !tbaa !14
  %244 = mul i32 %161, 100
  %245 = udiv i32 %244, %37
  %246 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %243, ptr noundef nonnull @.str.13, i32 noundef %245) #23
  %247 = load ptr, ptr @stderr, align 8, !tbaa !14
  %248 = call i32 @fflush(ptr noundef %247)
  br label %249

249:                                              ; preds = %241, %237, %232
  %250 = phi i64 [ %163, %232 ], [ %242, %241 ], [ %163, %237 ]
  %251 = add i32 %161, 1
  br label %252

252:                                              ; preds = %249, %226
  %253 = phi i64 [ %163, %226 ], [ %250, %249 ]
  %254 = phi i32 [ %161, %226 ], [ %251, %249 ]
  %255 = add i32 %162, %30
  %256 = icmp ugt i32 %255, %23
  br i1 %256, label %257, label %160, !llvm.loop !143

257:                                              ; preds = %252
  %258 = load i64, ptr %85, align 8, !tbaa !74
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %261, label %260, !llvm.loop !75

260:                                              ; preds = %257, %260
  br label %260

261:                                              ; preds = %257
  %262 = load ptr, ptr %109, align 8, !tbaa !31
  %263 = icmp eq ptr %262, null
  br i1 %263, label %265, label %264

264:                                              ; preds = %261
  call void @free(ptr noundef nonnull %262) #24
  store ptr null, ptr %109, align 8, !tbaa !31
  br label %265

265:                                              ; preds = %264, %261
  %266 = load ptr, ptr %110, align 8, !tbaa !32
  %267 = icmp eq ptr %266, null
  br i1 %267, label %269, label %268

268:                                              ; preds = %265
  call void @free(ptr noundef nonnull %266) #24
  store ptr null, ptr %110, align 8, !tbaa !32
  br label %269

269:                                              ; preds = %268, %265
  %270 = load ptr, ptr %111, align 8, !tbaa !33
  %271 = icmp eq ptr %270, null
  br i1 %271, label %273, label %272

272:                                              ; preds = %269
  call void @free(ptr noundef nonnull %270) #24
  store ptr null, ptr %111, align 8, !tbaa !33
  br label %273

273:                                              ; preds = %272, %269
  %274 = load ptr, ptr %112, align 8, !tbaa !34
  %275 = icmp eq ptr %274, null
  br i1 %275, label %279, label %276

276:                                              ; preds = %273
  call void @free(ptr noundef nonnull %274) #24
  br label %279

277:                                              ; preds = %199, %202, %140, %144
  %278 = phi i64 [ %128, %144 ], [ %128, %140 ], [ -64, %202 ], [ -64, %199 ]
  call void @POOL_free(ptr noundef %84) #24
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %8) #24
  br label %313

279:                                              ; preds = %273, %276
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %8) #24
  %280 = add i32 %116, 2
  %281 = icmp ugt i32 %280, %19
  br i1 %281, label %282, label %114, !llvm.loop !144

282:                                              ; preds = %279, %94
  br i1 %88, label %283, label %288

283:                                              ; preds = %282
  %284 = load ptr, ptr @stderr, align 8, !tbaa !14
  %285 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %284, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #23
  %286 = load ptr, ptr @stderr, align 8, !tbaa !14
  %287 = call i32 @fflush(ptr noundef %286)
  br label %288

288:                                              ; preds = %283, %282
  %289 = getelementptr inbounds %struct.COVER_best_s, ptr %7, i64 0, i32 4
  %290 = load i64, ptr %289, align 8, !tbaa !81
  %291 = load i64, ptr %86, align 8, !tbaa !72
  %292 = icmp ult i64 %291, -119
  br i1 %292, label %303, label %293

293:                                              ; preds = %288
  %294 = load i64, ptr %85, align 8, !tbaa !74
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %297, label %296, !llvm.loop !75

296:                                              ; preds = %293, %296
  br label %296

297:                                              ; preds = %293
  %298 = getelementptr inbounds %struct.COVER_best_s, ptr %7, i64 0, i32 3
  %299 = load ptr, ptr %298, align 8, !tbaa !76
  %300 = icmp eq ptr %299, null
  br i1 %300, label %302, label %301

301:                                              ; preds = %297
  call void @free(ptr noundef nonnull %299) #24
  br label %302

302:                                              ; preds = %297, %301
  call void @POOL_free(ptr noundef %84) #24
  br label %313

303:                                              ; preds = %288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %87, i64 48, i1 false), !tbaa.struct !82
  %304 = getelementptr inbounds %struct.COVER_best_s, ptr %7, i64 0, i32 3
  %305 = load ptr, ptr %304, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %305, i64 %290, i1 false)
  %306 = load i64, ptr %85, align 8, !tbaa !74
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %309, label %308, !llvm.loop !75

308:                                              ; preds = %303, %308
  br label %308

309:                                              ; preds = %303
  %310 = icmp eq ptr %305, null
  br i1 %310, label %312, label %311

311:                                              ; preds = %309
  call void @free(ptr noundef nonnull %305) #24
  br label %312

312:                                              ; preds = %309, %311
  call void @POOL_free(ptr noundef %84) #24
  br label %313

313:                                              ; preds = %277, %302, %312, %79, %70, %72, %61, %63, %52, %54, %41, %43
  %314 = phi i64 [ %278, %277 ], [ -42, %43 ], [ -42, %41 ], [ -42, %54 ], [ -42, %52 ], [ -72, %63 ], [ -72, %61 ], [ -70, %72 ], [ -70, %70 ], [ -64, %79 ], [ %291, %302 ], [ %290, %312 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #24
  ret i64 %314
}

declare ptr @POOL_create(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #15

declare void @POOL_free(ptr noundef) local_unnamed_addr #6

declare void @POOL_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @COVER_tryParameters(ptr nocapture noundef %0) #5 {
  %2 = alloca %struct.ZDICT_cover_params_t, align 8
  %3 = alloca %struct.ZDICT_cover_params_t, align 8
  %4 = alloca %struct.COVER_map_s, align 8
  %5 = alloca %struct.COVER_dictSelection, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #24
  %7 = getelementptr inbounds %struct.COVER_tryParameters_data_s, ptr %0, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %7, i64 48, i1 false), !tbaa.struct !82
  %8 = getelementptr inbounds %struct.COVER_tryParameters_data_s, ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #24
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #25
  %11 = getelementptr inbounds %struct.COVER_ctx_t, ptr %6, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !23
  %13 = shl i64 %12, 2
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #25
  %15 = getelementptr inbounds %struct.COVER_ctx_t, ptr %6, i64 0, i32 11
  %16 = load i32, ptr %15, align 4, !tbaa !41
  %17 = load i32, ptr %3, align 8, !tbaa !131
  %18 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %3, i64 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %17, 1
  %21 = sub i32 %20, %19
  %22 = tail call i32 @llvm.ctlz.i32(i32 %21, i1 true), !range !25
  %23 = xor i32 %22, 31
  %24 = sub nuw nsw i32 33, %22
  %25 = getelementptr inbounds %struct.COVER_map_s, ptr %4, i64 0, i32 1
  store i32 %24, ptr %25, align 8, !tbaa !26
  %26 = shl i32 4, %23
  %27 = getelementptr inbounds %struct.COVER_map_s, ptr %4, i64 0, i32 2
  store i32 %26, ptr %27, align 4, !tbaa !28
  %28 = add i32 %26, -1
  %29 = getelementptr inbounds %struct.COVER_map_s, ptr %4, i64 0, i32 3
  store i32 %28, ptr %29, align 8, !tbaa !29
  %30 = zext i32 %26 to i64
  %31 = shl nuw nsw i64 %30, 3
  %32 = tail call noalias ptr @malloc(i64 noundef %31) #25
  store ptr %32, ptr %4, align 8, !tbaa !30
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = icmp sgt i32 %16, 0
  br i1 %35, label %36, label %83

36:                                               ; preds = %34
  %37 = load ptr, ptr @stderr, align 8, !tbaa !14
  %38 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 43, i64 1, ptr %37) #23
  br label %77

39:                                               ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %32, i8 -1, i64 %31, i1 false)
  %40 = icmp ne ptr %10, null
  %41 = icmp ne ptr %14, null
  %42 = and i1 %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = icmp sgt i32 %16, 0
  br i1 %44, label %45, label %83

45:                                               ; preds = %43
  %46 = load ptr, ptr @stderr, align 8, !tbaa !14
  %47 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 42, i64 1, ptr %46) #23
  br label %77

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.COVER_ctx_t, ptr %6, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %14, ptr align 4 %50, i64 %13, i1 false)
  %51 = call fastcc i64 @COVER_buildDictionary(ptr noundef nonnull %6, ptr noundef nonnull %14, ptr noundef nonnull %4, ptr noundef nonnull %10, i64 noundef %9, i32 %17, i32 %19)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #24
  %52 = getelementptr inbounds i8, ptr %10, i64 %51
  %53 = sub i64 %9, %51
  %54 = load ptr, ptr %6, align 8, !tbaa !42
  %55 = getelementptr inbounds %struct.COVER_ctx_t, ptr %6, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !43
  %57 = getelementptr inbounds %struct.COVER_ctx_t, ptr %6, i64 0, i32 4
  %58 = load i64, ptr %57, align 8, !tbaa !45
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds %struct.COVER_ctx_t, ptr %6, i64 0, i32 3
  %61 = load i64, ptr %60, align 8, !tbaa !44
  %62 = getelementptr inbounds %struct.COVER_ctx_t, ptr %6, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !34
  call void @COVER_selectDict(ptr dead_on_unwind nonnull writable sret(%struct.COVER_dictSelection) align 8 %5, ptr noundef nonnull %52, i64 noundef %9, i64 noundef %53, ptr noundef %54, ptr noundef %56, i32 noundef %59, i64 noundef %58, i64 noundef %61, ptr noundef nonnull byval(%struct.ZDICT_cover_params_t) align 8 %3, ptr noundef %63, i64 poison)
  %64 = load ptr, ptr %5, align 8, !tbaa.struct !145
  %65 = getelementptr inbounds i8, ptr %5, i64 8
  %66 = load i64, ptr %65, align 8, !tbaa.struct !146
  %67 = getelementptr inbounds i8, ptr %5, i64 16
  %68 = load i64, ptr %67, align 8, !tbaa.struct !147
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #24
  %69 = icmp ugt i64 %68, -120
  %70 = icmp eq ptr %64, null
  %71 = select i1 %69, i1 true, i1 %70
  %72 = icmp sgt i32 %16, 0
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %74, label %83

74:                                               ; preds = %48
  %75 = load ptr, ptr @stderr, align 8, !tbaa !14
  %76 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 28, i64 1, ptr %75) #23
  br label %77

77:                                               ; preds = %36, %45, %74
  %78 = phi ptr [ null, %45 ], [ %64, %74 ], [ null, %36 ]
  %79 = phi i64 [ 0, %45 ], [ %66, %74 ], [ 0, %36 ]
  %80 = phi i64 [ -1, %45 ], [ %68, %74 ], [ -1, %36 ]
  %81 = load ptr, ptr @stderr, align 8, !tbaa !14
  %82 = tail call i32 @fflush(ptr noundef %81)
  br label %83

83:                                               ; preds = %77, %48, %43, %34
  %84 = phi ptr [ null, %34 ], [ %64, %48 ], [ null, %43 ], [ %78, %77 ]
  %85 = phi i64 [ 0, %34 ], [ %66, %48 ], [ 0, %43 ], [ %79, %77 ]
  %86 = phi i64 [ -1, %34 ], [ %68, %48 ], [ -1, %43 ], [ %80, %77 ]
  tail call void @free(ptr noundef %10) #24
  %87 = getelementptr inbounds %struct.COVER_tryParameters_data_s, ptr %0, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !135
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %89 = icmp eq ptr %88, null
  br i1 %89, label %117, label %90

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.COVER_best_s, ptr %88, i64 0, i32 2
  %92 = load i64, ptr %91, align 8, !tbaa !74
  %93 = add i64 %92, -1
  store i64 %93, ptr %91, align 8, !tbaa !74
  %94 = getelementptr inbounds %struct.COVER_best_s, ptr %88, i64 0, i32 6
  %95 = load i64, ptr %94, align 8, !tbaa !72
  %96 = icmp ult i64 %86, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.COVER_best_s, ptr %88, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !76
  %100 = icmp eq ptr %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.COVER_best_s, ptr %88, i64 0, i32 4
  %103 = load i64, ptr %102, align 8, !tbaa !81
  %104 = icmp ult i64 %103, %85
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  tail call void @free(ptr noundef nonnull %99) #24
  br label %106

106:                                              ; preds = %105, %97
  %107 = tail call noalias ptr @malloc(i64 noundef %85) #25
  store ptr %107, ptr %98, align 8, !tbaa !76
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  store i64 -1, ptr %94, align 8, !tbaa !72
  %110 = getelementptr inbounds %struct.COVER_best_s, ptr %88, i64 0, i32 4
  store i64 0, ptr %110, align 8, !tbaa !81
  br label %117

111:                                              ; preds = %106, %101
  %112 = phi ptr [ %107, %106 ], [ %99, %101 ]
  %113 = icmp eq ptr %84, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %112, ptr nonnull align 1 %84, i64 %85, i1 false)
  %115 = getelementptr inbounds %struct.COVER_best_s, ptr %88, i64 0, i32 4
  store i64 %85, ptr %115, align 8, !tbaa !81
  %116 = getelementptr inbounds %struct.COVER_best_s, ptr %88, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %116, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !82
  store i64 %86, ptr %94, align 8, !tbaa !72
  br label %117

117:                                              ; preds = %83, %90, %109, %111, %114
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2)
  tail call void @free(ptr noundef nonnull %0) #24
  br i1 %33, label %119, label %118

118:                                              ; preds = %117
  tail call void @free(ptr noundef nonnull %32) #24
  br label %119

119:                                              ; preds = %117, %118
  tail call void @free(ptr noundef %84) #24
  tail call void @free(ptr noundef %14) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #24
  ret void
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #17

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @COVER_cmp8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #18 {
  %4 = getelementptr inbounds %struct.COVER_ctx_t, ptr %0, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = icmp eq i32 %5, 8
  %7 = shl i32 %5, 3
  %8 = zext nneg i32 %7 to i64
  %9 = shl nsw i64 -1, %8
  %10 = xor i64 %9, -1
  %11 = select i1 %6, i64 -1, i64 %10
  %12 = load ptr, ptr %0, align 8, !tbaa !42
  %13 = load i32, ptr %1, align 4, !tbaa !51
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %12, i64 %14
  %16 = load i64, ptr %15, align 1, !tbaa !5
  %17 = and i64 %11, %16
  %18 = load i32, ptr %2, align 4, !tbaa !51
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %12, i64 %19
  %21 = load i64, ptr %20, align 1, !tbaa !5
  %22 = and i64 %21, %11
  %23 = icmp ult i64 %17, %22
  %24 = icmp ugt i64 %17, %22
  %25 = zext i1 %24 to i32
  %26 = select i1 %23, i32 -1, i32 %25
  ret i32 %26
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @COVER_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #19 {
  %4 = load i32, ptr %1, align 4, !tbaa !51
  %5 = load i32, ptr %2, align 4, !tbaa !51
  %6 = load ptr, ptr %0, align 8, !tbaa !42
  %7 = zext i32 %4 to i64
  %8 = getelementptr inbounds i8, ptr %6, i64 %7
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  %11 = getelementptr inbounds %struct.COVER_ctx_t, ptr %0, i64 0, i32 10
  %12 = load i32, ptr %11, align 8, !tbaa !47
  %13 = zext i32 %12 to i64
  %14 = tail call i32 @memcmp(ptr noundef %8, ptr noundef %10, i64 noundef %13) #27
  ret i32 %14
}

declare void @qsort_r(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @COVER_strict_cmp8(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) #18 {
  %4 = getelementptr inbounds %struct.COVER_ctx_t, ptr %2, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = icmp eq i32 %5, 8
  %7 = shl i32 %5, 3
  %8 = zext nneg i32 %7 to i64
  %9 = shl nsw i64 -1, %8
  %10 = xor i64 %9, -1
  %11 = select i1 %6, i64 -1, i64 %10
  %12 = load ptr, ptr %2, align 8, !tbaa !42
  %13 = load i32, ptr %0, align 4, !tbaa !51
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %12, i64 %14
  %16 = load i64, ptr %15, align 1, !tbaa !5
  %17 = and i64 %11, %16
  %18 = load i32, ptr %1, align 4, !tbaa !51
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %12, i64 %19
  %21 = load i64, ptr %20, align 1, !tbaa !5
  %22 = and i64 %21, %11
  %23 = icmp ult i64 %17, %22
  %24 = icmp ugt i64 %17, %22
  %25 = zext i1 %24 to i32
  %26 = select i1 %23, i32 -1, i32 %25
  %27 = icmp eq i32 %26, 0
  %28 = icmp ult ptr %0, %1
  %29 = select i1 %28, i32 -1, i32 1
  %30 = select i1 %27, i32 %29, i32 %26
  ret i32 %30
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @COVER_strict_cmp(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) #19 {
  %4 = load i32, ptr %0, align 4, !tbaa !51
  %5 = load i32, ptr %1, align 4, !tbaa !51
  %6 = load ptr, ptr %2, align 8, !tbaa !42
  %7 = zext i32 %4 to i64
  %8 = getelementptr inbounds i8, ptr %6, i64 %7
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  %11 = getelementptr inbounds %struct.COVER_ctx_t, ptr %2, i64 0, i32 10
  %12 = load i32, ptr %11, align 8, !tbaa !47
  %13 = zext i32 %12 to i64
  %14 = tail call i32 @memcmp(ptr noundef %8, ptr noundef %10, i64 noundef %13) #27
  %15 = icmp eq i32 %14, 0
  %16 = icmp ult ptr %0, %1
  %17 = select i1 %16, i32 -1, i32 1
  %18 = select i1 %15, i32 %17, i32 %14
  ret i32 %18
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umax.v2i64(<2 x i64>, <2 x i64>) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.umax.v2i64(<2 x i64>) #21

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree nounwind }
attributes #23 = { cold }
attributes #24 = { nounwind }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
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
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!17, !18, i64 36}
!17 = !{!"", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !19, i64 16, !18, i64 24, !18, i64 28, !20, i64 32}
!18 = !{!"int", !7, i64 0}
!19 = !{!"double", !7, i64 0}
!20 = !{!"", !18, i64 0, !18, i64 4, !18, i64 8}
!21 = !{!17, !19, i64 16}
!22 = !{i64 -72, i64 1}
!23 = !{!24, !6, i64 56}
!24 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !15, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !18, i64 80, !18, i64 84}
!25 = !{i32 0, i32 33}
!26 = !{!27, !18, i64 8}
!27 = !{!"COVER_map_s", !15, i64 0, !18, i64 8, !18, i64 12, !18, i64 16}
!28 = !{!27, !18, i64 12}
!29 = !{!27, !18, i64 16}
!30 = !{!27, !15, i64 0}
!31 = !{!24, !15, i64 48}
!32 = !{!24, !15, i64 64}
!33 = !{!24, !15, i64 72}
!34 = !{!24, !15, i64 8}
!35 = distinct !{!35, !10, !11, !12}
!36 = distinct !{!36, !10, !12, !11}
!37 = distinct !{!37, !10, !11, !12}
!38 = distinct !{!38, !10, !12, !11}
!39 = distinct !{!39, !10, !11, !12}
!40 = distinct !{!40, !10, !12, !11}
!41 = !{!24, !18, i64 84}
!42 = !{!24, !15, i64 0}
!43 = !{!24, !15, i64 16}
!44 = !{!24, !6, i64 24}
!45 = !{!24, !6, i64 32}
!46 = !{!24, !6, i64 40}
!47 = !{!24, !18, i64 80}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!18, !18, i64 0}
!52 = distinct !{!52, !10, !11, !12}
!53 = distinct !{!53, !10, !11}
!54 = !{ptr @COVER_cmp, ptr @COVER_cmp8}
!55 = distinct !{!55, !10}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !10}
!58 = distinct !{!58, !10}
!59 = !{!60, !18, i64 0}
!60 = !{!"COVER_map_pair_t_s", !18, i64 0, !18, i64 4}
!61 = !{!60, !18, i64 4}
!62 = distinct !{!62, !10}
!63 = distinct !{!63, !50}
!64 = distinct !{!64, !10}
!65 = distinct !{!65, !10}
!66 = !{}
!67 = distinct !{!67, !10}
!68 = distinct !{!68, !10, !11, !12}
!69 = distinct !{!69, !10, !12, !11}
!70 = !{!17, !18, i64 32}
!71 = distinct !{!71, !10}
!72 = !{!73, !6, i64 80}
!73 = !{!"COVER_best_s", !18, i64 0, !18, i64 4, !6, i64 8, !15, i64 16, !6, i64 24, !17, i64 32, !6, i64 80}
!74 = !{!73, !6, i64 8}
!75 = distinct !{!75, !10}
!76 = !{!73, !15, i64 16}
!77 = !{!78, !15, i64 0}
!78 = !{!"COVER_dictSelection", !15, i64 0, !6, i64 8, !6, i64 16}
!79 = !{!78, !6, i64 16}
!80 = !{!78, !6, i64 8}
!81 = !{!73, !6, i64 24}
!82 = !{i64 0, i64 4, !51, i64 4, i64 4, !51, i64 8, i64 4, !51, i64 12, i64 4, !51, i64 16, i64 8, !83, i64 24, i64 4, !51, i64 28, i64 4, !51, i64 32, i64 4, !51, i64 36, i64 4, !51, i64 40, i64 4, !51}
!83 = !{!19, !19, i64 0}
!84 = !{!85}
!85 = distinct !{!85, !86, !"setDictSelection: argument 0"}
!86 = distinct !{!86, !"setDictSelection"}
!87 = !{!17, !18, i64 28}
!88 = !{!89}
!89 = distinct !{!89, !90, !"COVER_dictSelectionError: argument 0"}
!90 = distinct !{!90, !"COVER_dictSelectionError"}
!91 = !{!92, !89}
!92 = distinct !{!92, !93, !"setDictSelection: argument 0"}
!93 = distinct !{!93, !"setDictSelection"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"COVER_dictSelectionError: argument 0"}
!96 = distinct !{!96, !"COVER_dictSelectionError"}
!97 = !{!98, !95}
!98 = distinct !{!98, !99, !"setDictSelection: argument 0"}
!99 = distinct !{!99, !"setDictSelection"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"COVER_dictSelectionError: argument 0"}
!102 = distinct !{!102, !"COVER_dictSelectionError"}
!103 = !{!104, !101}
!104 = distinct !{!104, !105, !"setDictSelection: argument 0"}
!105 = distinct !{!105, !"setDictSelection"}
!106 = !{!17, !18, i64 24}
!107 = !{!108}
!108 = distinct !{!108, !109, !"setDictSelection: argument 0"}
!109 = distinct !{!109, !"setDictSelection"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"COVER_dictSelectionError: argument 0"}
!112 = distinct !{!112, !"COVER_dictSelectionError"}
!113 = !{!114, !111}
!114 = distinct !{!114, !115, !"setDictSelection: argument 0"}
!115 = distinct !{!115, !"setDictSelection"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"COVER_dictSelectionError: argument 0"}
!118 = distinct !{!118, !"COVER_dictSelectionError"}
!119 = !{!120, !117}
!120 = distinct !{!120, !121, !"setDictSelection: argument 0"}
!121 = distinct !{!121, !"setDictSelection"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"setDictSelection: argument 0"}
!124 = distinct !{!124, !"setDictSelection"}
!125 = distinct !{!125, !10}
!126 = !{!127}
!127 = distinct !{!127, !128, !"setDictSelection: argument 0"}
!128 = distinct !{!128, !"setDictSelection"}
!129 = !{!17, !18, i64 12}
!130 = !{!17, !18, i64 4}
!131 = !{!17, !18, i64 0}
!132 = !{!17, !18, i64 8}
!133 = !{!134, !15, i64 0}
!134 = !{!"COVER_tryParameters_data_s", !15, i64 0, !15, i64 8, !6, i64 16, !17, i64 24}
!135 = !{!134, !15, i64 8}
!136 = !{!134, !6, i64 16}
!137 = !{!134, !18, i64 24}
!138 = !{!134, !18, i64 28}
!139 = !{!134, !19, i64 40}
!140 = !{!134, !18, i64 32}
!141 = !{!134, !18, i64 48}
!142 = !{!134, !18, i64 60}
!143 = distinct !{!143, !10}
!144 = distinct !{!144, !10}
!145 = !{i64 0, i64 8, !14, i64 8, i64 8, !5, i64 16, i64 8, !5}
!146 = !{i64 0, i64 8, !5, i64 8, i64 8, !5}
!147 = !{i64 0, i64 8, !5}
