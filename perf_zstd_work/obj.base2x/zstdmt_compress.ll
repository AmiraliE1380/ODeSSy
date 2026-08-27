; ModuleID = '<stdin>'
source_filename = "/mydata/zstd/lib/compress/zstdmt_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_frameProgression = type { i64, i64, i64, i64, i32, i32 }
%struct.ZSTD_CCtx_params_s = type { i32, %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, %struct.ldmParams_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.ZSTD_customMem, i32, i32, ptr, ptr, i32 }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }
%struct.ldmParams_t = type { i32, i32, i32, i32, i32, i32 }
%struct.RawSeqStore_t = type { ptr, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@switch.table.ZSTDMT_initCStream_internal = private unnamed_addr constant [5 x i32] [i32 7, i32 7, i32 8, i32 8, i32 9], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @ZSTDMT_createCCtx_advanced(i32 noundef %0, ptr noundef readnone byval(%struct.ZSTD_customMem) align 8 captures(none) %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTDMT_freeCCtx(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %164, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !5
  tail call void @POOL_free(ptr noundef %9) #17
  br label %10

10:                                               ; preds = %8, %3
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !31
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 2880
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  store i32 1, ptr %16, align 8, !tbaa !32
  %17 = getelementptr i8, ptr %0, i64 2920
  %18 = getelementptr i8, ptr %0, i64 2928
  br label %74

19:                                               ; preds = %10
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %22

22:                                               ; preds = %56, %19
  %23 = phi ptr [ %12, %19 ], [ %59, %56 ]
  %24 = phi i32 [ 0, %19 ], [ %61, %56 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw [376 x i8], ptr %23, i64 %25
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %28 = load <2 x i32>, ptr %27, align 8, !tbaa !33
  %29 = load ptr, ptr %21, align 8, !tbaa !34
  %30 = getelementptr inbounds nuw i8, ptr %26, i64 56
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds nuw i8, ptr %26, i64 64
  %33 = load i64, ptr %32, align 8
  %34 = icmp eq ptr %31, null
  br i1 %34, label %56, label %35

35:                                               ; preds = %22
  %36 = getelementptr inbounds nuw i8, ptr %29, i64 20
  %37 = load i32, ptr %36, align 4, !tbaa !35
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %39 = load i32, ptr %38, align 8, !tbaa !38
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = getelementptr inbounds nuw i8, ptr %29, i64 48
  %43 = load ptr, ptr %42, align 8, !tbaa !39
  %44 = add nuw i32 %37, 1
  store i32 %44, ptr %36, align 4, !tbaa !35
  %45 = zext i32 %37 to i64
  %46 = getelementptr inbounds nuw [16 x i8], ptr %43, i64 %45
  store ptr %31, ptr %46, align 8, !tbaa !40
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 %33, ptr %47, align 8, !tbaa !41
  br label %56

48:                                               ; preds = %35
  %49 = getelementptr i8, ptr %29, i64 32
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %29, i64 40
  %54 = load ptr, ptr %53, align 8
  tail call void %50(ptr noundef %54, ptr noundef nonnull %31) #17
  br label %56

55:                                               ; preds = %48
  tail call void @free(ptr noundef nonnull %31) #17
  br label %56

56:                                               ; preds = %55, %52, %41, %22
  %57 = load ptr, ptr %11, align 8, !tbaa !31
  %58 = getelementptr inbounds nuw [376 x i8], ptr %57, i64 %25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %58, i8 0, i64 376, i1 false)
  %59 = load ptr, ptr %11, align 8, !tbaa !31
  %.split = getelementptr inbounds nuw [376 x i8], ptr %59, i64 %25
  %60 = getelementptr inbounds nuw i8, ptr %.split, i64 16
  store <2 x i32> %28, ptr %60, align 8, !tbaa !33
  %61 = add i32 %24, 1
  %62 = load i32, ptr %20, align 8, !tbaa !42
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %64, label %22, !llvm.loop !43

64:                                               ; preds = %56
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 2880
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %65, i8 0, i64 24, i1 false)
  store i32 1, ptr %66, align 8, !tbaa !32
  %67 = getelementptr i8, ptr %0, i64 2920
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr i8, ptr %0, i64 2928
  %70 = icmp eq ptr %68, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %64
  %72 = load ptr, ptr %69, align 8
  tail call void %68(ptr noundef %72, ptr noundef nonnull %59) #17
  br label %74

73:                                               ; preds = %64
  tail call void @free(ptr noundef nonnull %59) #17
  br label %74

74:                                               ; preds = %73, %71, %14
  %75 = phi ptr [ %18, %14 ], [ %69, %71 ], [ %69, %73 ]
  %76 = phi ptr [ %17, %14 ], [ %67, %71 ], [ %67, %73 ]
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %78 = load ptr, ptr %77, align 8, !tbaa !34
  tail call fastcc void @ZSTDMT_freeBufferPool(ptr noundef %78)
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %80 = load ptr, ptr %79, align 8, !tbaa !45
  %81 = icmp eq ptr %80, null
  br i1 %81, label %119, label %82

82:                                               ; preds = %74
  %83 = getelementptr inbounds nuw i8, ptr %80, i64 40
  %84 = load ptr, ptr %83, align 8, !tbaa !46
  %85 = icmp eq ptr %84, null
  br i1 %85, label %111, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds nuw i8, ptr %80, i64 4
  %88 = load i32, ptr %87, align 4, !tbaa !50
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %.preheader, label %102

.preheader:                                       ; preds = %86, %.preheader
  %90 = phi i64 [ %95, %.preheader ], [ 0, %86 ]
  %91 = load ptr, ptr %83, align 8, !tbaa !46
  %92 = getelementptr inbounds nuw [8 x i8], ptr %91, i64 %90
  %93 = load ptr, ptr %92, align 8, !tbaa !51
  %94 = tail call i64 @ZSTD_freeCCtx(ptr noundef %93) #17
  %95 = add nuw nsw i64 %90, 1
  %96 = load i32, ptr %87, align 4, !tbaa !50
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %95, %97
  br i1 %98, label %.preheader, label %99, !llvm.loop !53

99:                                               ; preds = %.preheader
  %100 = load ptr, ptr %83, align 8, !tbaa !46
  %101 = icmp eq ptr %100, null
  br i1 %101, label %111, label %102

102:                                              ; preds = %99, %86
  %103 = phi ptr [ %100, %99 ], [ %84, %86 ]
  %104 = getelementptr i8, ptr %80, i64 24
  %105 = load ptr, ptr %104, align 8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = getelementptr i8, ptr %80, i64 32
  %109 = load ptr, ptr %108, align 8
  tail call void %105(ptr noundef %109, ptr noundef nonnull %103) #17
  br label %111

110:                                              ; preds = %102
  tail call void @free(ptr noundef nonnull %103) #17
  br label %111

111:                                              ; preds = %110, %107, %99, %82
  %112 = getelementptr i8, ptr %80, i64 24
  %113 = load ptr, ptr %112, align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = getelementptr i8, ptr %80, i64 32
  %117 = load ptr, ptr %116, align 8
  tail call void %113(ptr noundef %117, ptr noundef nonnull %80) #17
  br label %119

118:                                              ; preds = %111
  tail call void @free(ptr noundef nonnull %80) #17
  br label %119

119:                                              ; preds = %118, %115, %74
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %121 = load ptr, ptr %120, align 8, !tbaa !54
  tail call fastcc void @ZSTDMT_freeBufferPool(ptr noundef %121)
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %123 = load ptr, ptr %122, align 8, !tbaa !40
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %125 = load ptr, ptr %124, align 8, !tbaa !40
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 624
  %127 = load ptr, ptr %126, align 8, !tbaa !55
  %128 = icmp eq ptr %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %119
  %130 = icmp eq ptr %123, null
  br i1 %130, label %136, label %131

131:                                              ; preds = %129
  tail call void %123(ptr noundef %125, ptr noundef nonnull %127) #17
  br label %132

132:                                              ; preds = %131, %119
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 640
  %134 = load ptr, ptr %133, align 8, !tbaa !56
  %135 = icmp eq ptr %134, null
  br i1 %135, label %145, label %140

136:                                              ; preds = %129
  tail call void @free(ptr noundef nonnull %127) #17
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 640
  %138 = load ptr, ptr %137, align 8, !tbaa !56
  %139 = icmp eq ptr %138, null
  br i1 %139, label %145, label %143

140:                                              ; preds = %132
  %141 = icmp eq ptr %123, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %140
  tail call void %123(ptr noundef %125, ptr noundef nonnull %134) #17
  br label %145

143:                                              ; preds = %140, %136
  %144 = phi ptr [ %134, %140 ], [ %138, %136 ]
  tail call void @free(ptr noundef nonnull %144) #17
  br label %145

145:                                              ; preds = %143, %142, %136, %132
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %147 = load ptr, ptr %146, align 8, !tbaa !57
  %148 = tail call i64 @ZSTD_freeCDict(ptr noundef %147) #17
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %150 = load ptr, ptr %149, align 8, !tbaa !58
  %151 = icmp eq ptr %150, null
  br i1 %151, label %158, label %152

152:                                              ; preds = %145
  %153 = load ptr, ptr %76, align 8
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %152
  %156 = load ptr, ptr %75, align 8
  tail call void %153(ptr noundef %156, ptr noundef nonnull %150) #17
  br label %158

157:                                              ; preds = %152
  tail call void @free(ptr noundef nonnull %150) #17
  br label %158

158:                                              ; preds = %157, %155, %145
  %159 = load ptr, ptr %76, align 8
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %158
  %162 = load ptr, ptr %75, align 8
  tail call void %159(ptr noundef %162, ptr noundef nonnull %0) #17
  br label %164

163:                                              ; preds = %158
  tail call void @free(ptr noundef nonnull %0) #17
  br label %164

164:                                              ; preds = %163, %161, %1
  ret i64 0
}

declare void @POOL_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTDMT_freeBufferPool(ptr noundef %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %50, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load i32, ptr %8, align 8, !tbaa !38
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr i8, ptr %0, i64 32
  br i1 %10, label %34, label %12

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %0, i64 40
  br label %14

14:                                               ; preds = %26, %12
  %15 = phi i64 [ 0, %12 ], [ %27, %26 ]
  %16 = load ptr, ptr %4, align 8, !tbaa !39
  %17 = getelementptr inbounds nuw [16 x i8], ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = load ptr, ptr %11, align 8
  %20 = load ptr, ptr %13, align 8
  %21 = icmp eq ptr %18, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %14
  %23 = icmp eq ptr %19, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  tail call void %19(ptr noundef %20, ptr noundef nonnull %18) #17
  br label %26

25:                                               ; preds = %22
  tail call void @free(ptr noundef nonnull %18) #17
  br label %26

26:                                               ; preds = %25, %24, %14
  %27 = add nuw nsw i64 %15, 1
  %28 = load i32, ptr %8, align 8, !tbaa !38
  %29 = zext i32 %28 to i64
  %30 = icmp samesign ult i64 %27, %29
  br i1 %30, label %14, label %31, !llvm.loop !60

31:                                               ; preds = %26
  %32 = load ptr, ptr %4, align 8, !tbaa !39
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %31, %7
  %35 = phi ptr [ %32, %31 ], [ %5, %7 ]
  %36 = load ptr, ptr %11, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %0, i64 40
  %40 = load ptr, ptr %39, align 8
  tail call void %36(ptr noundef %40, ptr noundef nonnull %35) #17
  br label %42

41:                                               ; preds = %34
  tail call void @free(ptr noundef nonnull %35) #17
  br label %42

42:                                               ; preds = %41, %38, %31, %3
  %43 = getelementptr i8, ptr %0, i64 32
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %0, i64 40
  %48 = load ptr, ptr %47, align 8
  tail call void %44(ptr noundef %48, ptr noundef nonnull %0) #17
  br label %50

49:                                               ; preds = %42
  tail call void @free(ptr noundef nonnull %0) #17
  br label %50

50:                                               ; preds = %49, %46, %1
  ret void
}

declare i64 @ZSTD_freeCDict(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTDMT_sizeof_CCtx(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %135, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = tail call i64 @POOL_sizeof(ptr noundef %4) #17
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %9 = load i32, ptr %8, align 8, !tbaa !38
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %13 = load ptr, ptr %12, align 8, !tbaa !39
  %14 = zext i32 %9 to i64
  %15 = icmp ult i32 %9, 5
  br i1 %15, label %.preheader48.preheader, label %16

16:                                               ; preds = %11
  %17 = and i64 %14, 3
  %18 = icmp eq i64 %17, 0
  %19 = select i1 %18, i64 4, i64 %17
  %20 = sub nuw nsw i64 %14, %19
  br label %21

21:                                               ; preds = %21, %16
  %22 = phi i64 [ 0, %16 ], [ %33, %21 ]
  %23 = phi <2 x i64> [ zeroinitializer, %16 ], [ %31, %21 ]
  %24 = phi <2 x i64> [ zeroinitializer, %16 ], [ %32, %21 ]
  %.split = getelementptr inbounds nuw [16 x i8], ptr %13, i64 %22
  %25 = getelementptr inbounds nuw i8, ptr %.split, i64 8
  %26 = getelementptr inbounds nuw i8, ptr %.split, i64 40
  %27 = load <3 x i64>, ptr %25, align 8, !tbaa !61
  %28 = shufflevector <3 x i64> %27, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %29 = load <3 x i64>, ptr %26, align 8, !tbaa !61
  %30 = shufflevector <3 x i64> %29, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %31 = add <2 x i64> %28, %23
  %32 = add <2 x i64> %30, %24
  %33 = add nuw i64 %22, 4
  %34 = icmp eq i64 %33, %20
  br i1 %34, label %35, label %21, !llvm.loop !62

35:                                               ; preds = %21
  %36 = add <2 x i64> %32, %31
  %37 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %36)
  br label %.preheader48.preheader

.preheader48.preheader:                           ; preds = %35, %11
  %.ph43 = phi i64 [ 0, %11 ], [ %20, %35 ]
  %.ph44 = phi i64 [ 0, %11 ], [ %37, %35 ]
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.preheader, %.preheader48
  %38 = phi i64 [ %43, %.preheader48 ], [ %.ph43, %.preheader48.preheader ]
  %39 = phi i64 [ %42, %.preheader48 ], [ %.ph44, %.preheader48.preheader ]
  %.split9 = getelementptr inbounds nuw [16 x i8], ptr %13, i64 %38
  %40 = getelementptr inbounds nuw i8, ptr %.split9, i64 8
  %41 = load i64, ptr %40, align 8, !tbaa !61
  %42 = add i64 %41, %39
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %14
  br i1 %44, label %45, label %.preheader48, !llvm.loop !65

45:                                               ; preds = %.preheader48
  %46 = shl nuw nsw i64 %14, 4
  br label %47

47:                                               ; preds = %45, %3
  %48 = phi i64 [ 0, %3 ], [ %46, %45 ]
  %49 = phi i64 [ 0, %3 ], [ %42, %45 ]
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %51 = load i32, ptr %50, align 8, !tbaa !42
  %52 = add i32 %51, 1
  %53 = zext i32 %52 to i64
  %54 = mul nuw nsw i64 %53, 376
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %56 = load ptr, ptr %55, align 8, !tbaa !45
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 4
  %58 = load i32, ptr %57, align 4, !tbaa !50
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %.loopexit, label %60

60:                                               ; preds = %47
  %61 = getelementptr inbounds nuw i8, ptr %56, i64 40
  %62 = zext i32 %58 to i64
  br label %63

63:                                               ; preds = %63, %60
  %64 = phi i64 [ 0, %60 ], [ %71, %63 ]
  %65 = phi i64 [ 0, %60 ], [ %70, %63 ]
  %66 = load ptr, ptr %61, align 8, !tbaa !46
  %67 = getelementptr inbounds nuw [8 x i8], ptr %66, i64 %64
  %68 = load ptr, ptr %67, align 8, !tbaa !51
  %69 = tail call i64 @ZSTD_sizeof_CCtx(ptr noundef %68) #17
  %70 = add i64 %69, %65
  %71 = add nuw nsw i64 %64, 1
  %72 = icmp eq i64 %71, %62
  br i1 %72, label %.loopexit, label %63, !llvm.loop !66

.loopexit:                                        ; preds = %63, %47
  %73 = phi i64 [ 0, %47 ], [ %70, %63 ]
  %74 = sext i32 %58 to i64
  %75 = shl nsw i64 %74, 3
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %77 = load ptr, ptr %76, align 8, !tbaa !54
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 16
  %79 = load i32, ptr %78, align 8, !tbaa !38
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %119, label %81

81:                                               ; preds = %.loopexit
  %82 = getelementptr inbounds nuw i8, ptr %77, i64 48
  %83 = load ptr, ptr %82, align 8, !tbaa !39
  %84 = zext i32 %79 to i64
  %85 = icmp ult i32 %79, 5
  br i1 %85, label %.preheader.preheader, label %86

86:                                               ; preds = %81
  %87 = and i64 %84, 3
  %88 = icmp eq i64 %87, 0
  %89 = select i1 %88, i64 4, i64 %87
  %90 = sub nuw nsw i64 %84, %89
  br label %91

91:                                               ; preds = %91, %86
  %92 = phi i64 [ 0, %86 ], [ %103, %91 ]
  %93 = phi <2 x i64> [ zeroinitializer, %86 ], [ %101, %91 ]
  %94 = phi <2 x i64> [ zeroinitializer, %86 ], [ %102, %91 ]
  %.split10 = getelementptr inbounds nuw [16 x i8], ptr %83, i64 %92
  %95 = getelementptr inbounds nuw i8, ptr %.split10, i64 8
  %96 = getelementptr inbounds nuw i8, ptr %.split10, i64 40
  %97 = load <3 x i64>, ptr %95, align 8, !tbaa !61
  %98 = shufflevector <3 x i64> %97, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %99 = load <3 x i64>, ptr %96, align 8, !tbaa !61
  %100 = shufflevector <3 x i64> %99, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %101 = add <2 x i64> %98, %93
  %102 = add <2 x i64> %100, %94
  %103 = add nuw i64 %92, 4
  %104 = icmp eq i64 %103, %90
  br i1 %104, label %105, label %91, !llvm.loop !67

105:                                              ; preds = %91
  %106 = add <2 x i64> %102, %101
  %107 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %106)
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %105, %81
  %.ph = phi i64 [ 0, %81 ], [ %90, %105 ]
  %.ph39 = phi i64 [ 0, %81 ], [ %107, %105 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %108 = phi i64 [ %113, %.preheader ], [ %.ph, %.preheader.preheader ]
  %109 = phi i64 [ %112, %.preheader ], [ %.ph39, %.preheader.preheader ]
  %.split12 = getelementptr inbounds nuw [16 x i8], ptr %83, i64 %108
  %110 = getelementptr inbounds nuw i8, ptr %.split12, i64 8
  %111 = load i64, ptr %110, align 8, !tbaa !61
  %112 = add i64 %111, %109
  %113 = add nuw nsw i64 %108, 1
  %114 = icmp eq i64 %113, %84
  br i1 %114, label %115, label %.preheader, !llvm.loop !68

115:                                              ; preds = %.preheader
  %116 = shl nuw nsw i64 %84, 4
  %117 = add nuw nsw i64 %116, 56
  %118 = add i64 %117, %112
  br label %119

119:                                              ; preds = %115, %.loopexit
  %120 = phi i64 [ 56, %.loopexit ], [ %118, %115 ]
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %122 = load ptr, ptr %121, align 8, !tbaa !57
  %123 = tail call i64 @ZSTD_sizeof_CDict(ptr noundef %122) #17
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %125 = load i64, ptr %124, align 8, !tbaa !69
  %126 = add i64 %5, 3064
  %127 = add i64 %126, %48
  %128 = add i64 %127, %49
  %129 = add i64 %128, %54
  %130 = add i64 %129, %75
  %131 = add i64 %130, %73
  %132 = add i64 %131, %120
  %133 = add i64 %132, %123
  %134 = add i64 %133, %125
  br label %135

135:                                              ; preds = %119, %1
  %136 = phi i64 [ %134, %119 ], [ 0, %1 ]
  ret i64 %136
}

declare i64 @POOL_sizeof(ptr noundef) local_unnamed_addr #2

declare i64 @ZSTD_sizeof_CDict(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ZSTDMT_updateCParams_whileCompressing(ptr noundef captures(none) initializes((48, 72), (84, 88)) %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.ZSTD_compressionParameters, align 4
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %5 = load i32, ptr %4, align 4, !tbaa !70
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %7 = load i32, ptr %6, align 4, !tbaa !71
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %7, ptr %8, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %3, ptr noundef %1, i64 noundef -1, i64 noundef 0, i32 noundef 0) #17
  store i32 %5, ptr %3, align 4, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

declare void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind writable sret(%struct.ZSTD_compressionParameters) align 4, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ZSTDMT_getFrameProgression(ptr dead_on_unwind noalias writable writeonly sret(%struct.ZSTD_frameProgression) align 8 captures(none) initializes((32, 36)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 2896
  %4 = load i64, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 320
  %6 = load i64, ptr %5, align 8, !tbaa !76
  %7 = add i64 %6, %4
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 2904
  %9 = load i64, ptr %8, align 8, !tbaa !77
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 2872
  %11 = load i32, ptr %10, align 8, !tbaa !78
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %11, ptr %12, align 8, !tbaa !79
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 280
  %14 = load i32, ptr %13, align 8, !tbaa !81
  %15 = add i32 %14, %11
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 2868
  %17 = load i32, ptr %16, align 4, !tbaa !82
  %18 = icmp ult i32 %17, %15
  br i1 %18, label %19, label %.loopexit

19:                                               ; preds = %2
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 2864
  %21 = load i32, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %23 = load ptr, ptr %22, align 8, !tbaa !31
  br label %24

24:                                               ; preds = %41, %19
  %25 = phi i32 [ %17, %19 ], [ %53, %41 ]
  %26 = phi i64 [ %7, %19 ], [ %45, %41 ]
  %27 = phi i64 [ %4, %19 ], [ %47, %41 ]
  %28 = phi i64 [ %9, %19 ], [ %48, %41 ]
  %29 = phi i64 [ %9, %19 ], [ %49, %41 ]
  %30 = phi i32 [ 0, %19 ], [ %52, %41 ]
  %31 = and i32 %25, %21
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds nuw [376 x i8], ptr %23, i64 %32
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %35 = load i64, ptr %34, align 8, !tbaa !83
  %36 = icmp ult i64 %35, -119
  %37 = select i1 %36, i64 %35, i64 0
  br i1 %36, label %38, label %41

38:                                               ; preds = %24
  %39 = getelementptr inbounds nuw i8, ptr %33, i64 360
  %40 = load i64, ptr %39, align 8, !tbaa !85
  br label %41

41:                                               ; preds = %38, %24
  %42 = phi i64 [ %40, %38 ], [ 0, %24 ]
  %43 = getelementptr inbounds nuw i8, ptr %33, i64 96
  %44 = load i64, ptr %43, align 8, !tbaa !86
  %45 = add i64 %44, %26
  %46 = load i64, ptr %33, align 8, !tbaa !87
  %47 = add i64 %46, %27
  %48 = add i64 %37, %28
  %49 = add i64 %42, %29
  %50 = icmp ult i64 %46, %44
  %51 = zext i1 %50 to i32
  %52 = add i32 %30, %51
  %53 = add nuw i32 %25, 1
  %54 = icmp eq i32 %53, %15
  br i1 %54, label %.loopexit, label %24, !llvm.loop !88

.loopexit:                                        ; preds = %41, %2
  %55 = phi i32 [ 0, %2 ], [ %52, %41 ]
  %56 = phi i64 [ %9, %2 ], [ %49, %41 ]
  %57 = phi i64 [ %9, %2 ], [ %48, %41 ]
  %58 = phi i64 [ %4, %2 ], [ %47, %41 ]
  %59 = phi i64 [ %7, %2 ], [ %45, %41 ]
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %59, ptr %0, align 8
  store i64 %58, ptr %63, align 8
  store i64 %57, ptr %61, align 8
  store i64 %56, ptr %62, align 8
  store i32 %55, ptr %60, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @ZSTDMT_toFlushNow(ptr noundef readonly captures(none) %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 2868
  %3 = load i32, ptr %2, align 4, !tbaa !82
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 2872
  %5 = load i32, ptr %4, align 8, !tbaa !78
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %9 = load i32, ptr %8, align 8, !tbaa !42
  %10 = and i32 %9, %3
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !31
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds nuw [376 x i8], ptr %12, i64 %13
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %16 = load i64, ptr %15, align 8, !tbaa !83
  %17 = icmp ult i64 %16, -119
  %18 = select i1 %17, i64 %16, i64 0
  br i1 %17, label %19, label %22

19:                                               ; preds = %7
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 360
  %21 = load i64, ptr %20, align 8, !tbaa !85
  br label %22

22:                                               ; preds = %19, %7
  %23 = phi i64 [ %21, %19 ], [ 0, %7 ]
  %24 = sub i64 %18, %23
  br label %25

25:                                               ; preds = %22, %1
  %26 = phi i64 [ %24, %22 ], [ 0, %1 ]
  ret i64 %26
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -64, 1) i64 @ZSTDMT_initCStream_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef byval(%struct.ZSTD_CCtx_params_s) align 8 captures(none) %5, i64 noundef %6) local_unnamed_addr #1 {
  %8 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %9 = alloca %struct.ZSTD_customMem, align 8
  %10 = alloca %struct.ZSTD_compressionParameters, align 8
  %11 = alloca %struct.ZSTD_compressionParameters, align 8
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 76
  %13 = load i32, ptr %12, align 4, !tbaa !89
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 116
  %16 = load i32, ptr %15, align 4, !tbaa !90
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %202, label %18

18:                                               ; preds = %7
  %19 = load ptr, ptr %0, align 8, !tbaa !5
  %20 = zext i32 %13 to i64
  %21 = tail call i32 @POOL_resize(ptr noundef %19, i64 noundef %20) #17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %646

23:                                               ; preds = %18
  %24 = add i32 %13, 2
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %26 = load i32, ptr %25, align 8, !tbaa !42
  %27 = add i32 %26, 1
  %28 = icmp ugt i32 %24, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %23
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %31 = load ptr, ptr %30, align 8, !tbaa !31
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %33 = getelementptr i8, ptr %0, i64 2920
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr i8, ptr %0, i64 2928
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %31, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %29
  %39 = icmp eq ptr %34, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  tail call void %34(ptr noundef %36, ptr noundef nonnull %31) #17
  br label %42

41:                                               ; preds = %38
  tail call void @free(ptr noundef nonnull %31) #17
  br label %42

42:                                               ; preds = %41, %40, %29
  store i32 0, ptr %25, align 8, !tbaa !42
  %43 = load ptr, ptr %32, align 8, !tbaa !91
  %44 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %24, i1 true)
  %45 = xor i32 %44, 31
  %46 = shl nuw i32 2, %45
  %47 = sub nuw nsw i32 32, %44
  %48 = zext nneg i32 %47 to i64
  %49 = shl nuw nsw i64 376, %48
  %50 = icmp eq ptr %43, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %42
  %52 = load ptr, ptr %35, align 8
  %53 = tail call ptr %43(ptr noundef %52, i64 noundef range(i64 -17179869184, 1614907702921) %49) #17
  %54 = icmp eq ptr %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %53, i8 0, i64 range(i64 -17179869184, 1614907702921) %49, i1 false)
  br label %59

56:                                               ; preds = %42
  %57 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef range(i64 -17179869184, 1614907702921) %49) #18
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56, %55
  %60 = phi ptr [ %53, %55 ], [ %57, %56 ]
  store ptr %60, ptr %30, align 8, !tbaa !31
  %61 = add i32 %46, -1
  store i32 %61, ptr %25, align 8, !tbaa !42
  br label %63

62:                                               ; preds = %56, %51
  store ptr null, ptr %30, align 8, !tbaa !31
  br label %646

63:                                               ; preds = %59, %23
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = shl i32 %13, 1
  %67 = add i32 %66, 3
  %68 = tail call fastcc ptr @ZSTDMT_expandBufferPool(ptr noundef %65, i32 noundef %67)
  store ptr %68, ptr %64, align 8, !tbaa !34
  %69 = icmp eq ptr %68, null
  br i1 %69, label %646, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %72 = load ptr, ptr %71, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %73 = icmp eq ptr %72, null
  br i1 %73, label %193, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds nuw i8, ptr %72, i64 4
  %76 = load i32, ptr %75, align 4, !tbaa !50
  %77 = icmp sgt i32 %13, %76
  br i1 %77, label %78, label %194

78:                                               ; preds = %74
  %79 = getelementptr inbounds nuw i8, ptr %72, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %79, i64 24, i1 false)
  %80 = getelementptr inbounds nuw i8, ptr %72, i64 40
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  %82 = icmp eq ptr %81, null
  br i1 %82, label %106, label %83

83:                                               ; preds = %78
  %84 = icmp sgt i32 %76, 0
  br i1 %84, label %.preheader57, label %97

.preheader57:                                     ; preds = %83, %.preheader57
  %85 = phi i64 [ %90, %.preheader57 ], [ 0, %83 ]
  %86 = load ptr, ptr %80, align 8, !tbaa !46
  %87 = getelementptr inbounds nuw [8 x i8], ptr %86, i64 %85
  %88 = load ptr, ptr %87, align 8, !tbaa !51
  %89 = tail call i64 @ZSTD_freeCCtx(ptr noundef %88) #17
  %90 = add nuw nsw i64 %85, 1
  %91 = load i32, ptr %75, align 4, !tbaa !50
  %92 = sext i32 %91 to i64
  %93 = icmp slt i64 %90, %92
  br i1 %93, label %.preheader57, label %94, !llvm.loop !53

94:                                               ; preds = %.preheader57
  %95 = load ptr, ptr %80, align 8, !tbaa !46
  %96 = icmp eq ptr %95, null
  br i1 %96, label %106, label %97

97:                                               ; preds = %94, %83
  %98 = phi ptr [ %95, %94 ], [ %81, %83 ]
  %99 = getelementptr i8, ptr %72, i64 24
  %100 = load ptr, ptr %99, align 8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = getelementptr i8, ptr %72, i64 32
  %104 = load ptr, ptr %103, align 8
  tail call void %100(ptr noundef %104, ptr noundef nonnull %98) #17
  br label %106

105:                                              ; preds = %97
  tail call void @free(ptr noundef nonnull %98) #17
  br label %106

106:                                              ; preds = %105, %102, %94, %78
  %107 = getelementptr i8, ptr %72, i64 24
  %108 = load ptr, ptr %107, align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = getelementptr i8, ptr %72, i64 32
  %112 = load ptr, ptr %111, align 8
  tail call void %108(ptr noundef %112, ptr noundef nonnull %72) #17
  br label %114

113:                                              ; preds = %106
  tail call void @free(ptr noundef nonnull %72) #17
  br label %114

114:                                              ; preds = %113, %110
  %115 = load ptr, ptr %9, align 8
  %116 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %117 = load ptr, ptr %116, align 8
  %118 = icmp eq ptr %115, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = tail call ptr %115(ptr noundef %117, i64 noundef 48) #17
  %121 = icmp eq ptr %120, null
  br i1 %121, label %193, label %125

122:                                              ; preds = %114
  %123 = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #18
  %124 = icmp eq ptr %123, null
  br i1 %124, label %193, label %135

125:                                              ; preds = %119
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %120, i8 0, i64 48, i1 false)
  %126 = getelementptr inbounds nuw i8, ptr %120, i64 4
  store i32 %13, ptr %126, align 4, !tbaa !50
  %127 = sext i32 %13 to i64
  %128 = shl nsw i64 %127, 3
  %129 = tail call ptr %115(ptr noundef %117, i64 noundef range(i64 -17179869184, 1614907702921) %128) #17
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = getelementptr inbounds nuw i8, ptr %120, i64 40
  store ptr null, ptr %132, align 8, !tbaa !46
  br label %142

133:                                              ; preds = %125
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %129, i8 0, i64 range(i64 -17179869184, 1614907702921) %128, i1 false)
  %134 = getelementptr inbounds nuw i8, ptr %120, i64 40
  store ptr %129, ptr %134, align 8, !tbaa !46
  br label %151

135:                                              ; preds = %122
  %136 = getelementptr inbounds nuw i8, ptr %123, i64 4
  store i32 %13, ptr %136, align 4, !tbaa !50
  %137 = sext i32 %13 to i64
  %138 = shl nsw i64 %137, 3
  %139 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef range(i64 -17179869184, 1614907702921) %138) #18
  %140 = getelementptr inbounds nuw i8, ptr %123, i64 40
  store ptr %139, ptr %140, align 8, !tbaa !46
  %141 = icmp eq ptr %139, null
  br i1 %141, label %142, label %151

142:                                              ; preds = %135, %131
  %143 = phi ptr [ %120, %131 ], [ %123, %135 ]
  %144 = getelementptr i8, ptr %143, i64 24
  %145 = load ptr, ptr %144, align 8
  %146 = icmp eq ptr %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  %148 = getelementptr i8, ptr %143, i64 32
  %149 = load ptr, ptr %148, align 8
  tail call void %145(ptr noundef %149, ptr noundef nonnull %143) #17
  br label %193

150:                                              ; preds = %142
  tail call void @free(ptr noundef nonnull %143) #17
  br label %193

151:                                              ; preds = %135, %133
  %152 = phi ptr [ %134, %133 ], [ %140, %135 ]
  %153 = phi ptr [ %120, %133 ], [ %123, %135 ]
  %154 = phi ptr [ %126, %133 ], [ %136, %135 ]
  %155 = getelementptr inbounds nuw i8, ptr %153, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %155, ptr noundef nonnull readonly align 8 dereferenceable(24) %9, i64 24, i1 false)
  %156 = tail call ptr @ZSTD_createCCtx_advanced(ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %9) #17
  %157 = load ptr, ptr %152, align 8, !tbaa !46
  store ptr %156, ptr %157, align 8, !tbaa !51
  %158 = icmp eq ptr %156, null
  br i1 %158, label %159, label %191

159:                                              ; preds = %151
  %160 = load i32, ptr %154, align 4, !tbaa !50
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %.preheader56, label %174

.preheader56:                                     ; preds = %159, %.preheader56
  %162 = phi i64 [ %167, %.preheader56 ], [ 0, %159 ]
  %163 = load ptr, ptr %152, align 8, !tbaa !46
  %164 = getelementptr inbounds nuw [8 x i8], ptr %163, i64 %162
  %165 = load ptr, ptr %164, align 8, !tbaa !51
  %166 = tail call i64 @ZSTD_freeCCtx(ptr noundef %165) #17
  %167 = add nuw nsw i64 %162, 1
  %168 = load i32, ptr %154, align 4, !tbaa !50
  %169 = sext i32 %168 to i64
  %170 = icmp slt i64 %167, %169
  br i1 %170, label %.preheader56, label %171, !llvm.loop !53

171:                                              ; preds = %.preheader56
  %172 = load ptr, ptr %152, align 8, !tbaa !46
  %173 = icmp eq ptr %172, null
  br i1 %173, label %183, label %174

174:                                              ; preds = %171, %159
  %175 = phi ptr [ %172, %171 ], [ %157, %159 ]
  %176 = getelementptr i8, ptr %153, i64 24
  %177 = load ptr, ptr %176, align 8
  %178 = icmp eq ptr %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = getelementptr i8, ptr %153, i64 32
  %181 = load ptr, ptr %180, align 8
  tail call void %177(ptr noundef %181, ptr noundef nonnull %175) #17
  br label %183

182:                                              ; preds = %174
  tail call void @free(ptr noundef nonnull %175) #17
  br label %183

183:                                              ; preds = %182, %179, %171
  %184 = getelementptr i8, ptr %153, i64 24
  %185 = load ptr, ptr %184, align 8
  %186 = icmp eq ptr %185, null
  br i1 %186, label %190, label %187

187:                                              ; preds = %183
  %188 = getelementptr i8, ptr %153, i64 32
  %189 = load ptr, ptr %188, align 8
  tail call void %185(ptr noundef %189, ptr noundef nonnull %153) #17
  br label %193

190:                                              ; preds = %183
  tail call void @free(ptr noundef nonnull %153) #17
  br label %193

191:                                              ; preds = %151
  %192 = getelementptr inbounds nuw i8, ptr %153, i64 8
  store i32 1, ptr %192, align 8, !tbaa !92
  br label %194

193:                                              ; preds = %190, %187, %150, %147, %122, %119, %70
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store ptr null, ptr %71, align 8, !tbaa !45
  br label %646

194:                                              ; preds = %191, %74
  %195 = phi ptr [ %72, %74 ], [ %153, %191 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store ptr %195, ptr %71, align 8, !tbaa !45
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %197 = load ptr, ptr %196, align 8, !tbaa !54
  %198 = tail call fastcc ptr @ZSTDMT_expandBufferPool(ptr noundef %197, i32 noundef %13)
  store ptr %198, ptr %196, align 8, !tbaa !54
  %199 = icmp eq ptr %198, null
  br i1 %199, label %646, label %200

200:                                              ; preds = %194
  %201 = tail call i64 @ZSTD_CCtxParams_setParameter(ptr noundef nonnull %14, i32 noundef 400, i32 noundef %13) #17
  br label %202

202:                                              ; preds = %200, %7
  %203 = getelementptr inbounds nuw i8, ptr %5, i64 80
  %204 = load i64, ptr %203, align 8, !tbaa !93
  %205 = add i64 %204, -1
  %206 = icmp ult i64 %205, 524287
  br i1 %206, label %209, label %207

207:                                              ; preds = %202
  %208 = icmp ugt i64 %204, 1073741824
  br i1 %208, label %209, label %211

209:                                              ; preds = %207, %202
  %210 = phi i64 [ 524288, %202 ], [ 1073741824, %207 ]
  store i64 %210, ptr %203, align 8, !tbaa !93
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi i64 [ %204, %207 ], [ %210, %209 ]
  %213 = getelementptr inbounds nuw i8, ptr %0, i64 2880
  %214 = load i32, ptr %213, align 8, !tbaa !32
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %288

216:                                              ; preds = %211
  %217 = getelementptr inbounds nuw i8, ptr %0, i64 2868
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 2872
  %219 = load i32, ptr %218, align 8, !tbaa !78
  %220 = load i32, ptr %217, align 4, !tbaa !82
  %221 = icmp ult i32 %220, %219
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %221, label %223, label %239

223:                                              ; preds = %216
  %224 = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %225 = load i32, ptr %224, align 8, !tbaa !42
  %226 = load ptr, ptr %222, align 8, !tbaa !31
  br label %227

227:                                              ; preds = %236, %223
  %228 = phi i32 [ %220, %223 ], [ %237, %236 ]
  %229 = and i32 %228, %225
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds nuw [376 x i8], ptr %226, i64 %230
  %232 = load i64, ptr %231, align 8, !tbaa !87
  %233 = getelementptr inbounds nuw i8, ptr %231, i64 96
  %234 = load i64, ptr %233, align 8, !tbaa !86
  %235 = icmp ult i64 %232, %234
  br i1 %235, label %.preheader, label %236, !llvm.loop !94

.preheader:                                       ; preds = %227, %.preheader
  br label %.preheader

236:                                              ; preds = %227
  %237 = add nuw i32 %228, 1
  store i32 %237, ptr %217, align 4, !tbaa !82
  %238 = icmp eq i32 %237, %219
  br i1 %238, label %.loopexit55, label %227, !llvm.loop !95

239:                                              ; preds = %216
  %240 = load ptr, ptr %222, align 8, !tbaa !31
  %241 = icmp eq ptr %240, null
  br i1 %241, label %.loopexit, label %.loopexit55

.loopexit55:                                      ; preds = %236, %239
  %242 = phi ptr [ %240, %239 ], [ %226, %236 ]
  %243 = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %244 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %245

245:                                              ; preds = %279, %.loopexit55
  %246 = phi ptr [ %242, %.loopexit55 ], [ %282, %279 ]
  %247 = phi i32 [ 0, %.loopexit55 ], [ %284, %279 ]
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds nuw [376 x i8], ptr %246, i64 %248
  %250 = getelementptr inbounds nuw i8, ptr %249, i64 16
  %251 = load <2 x i32>, ptr %250, align 8, !tbaa !33
  %252 = load ptr, ptr %244, align 8, !tbaa !34
  %253 = getelementptr inbounds nuw i8, ptr %249, i64 56
  %254 = load ptr, ptr %253, align 8
  %255 = getelementptr inbounds nuw i8, ptr %249, i64 64
  %256 = load i64, ptr %255, align 8
  %257 = icmp eq ptr %254, null
  br i1 %257, label %279, label %258

258:                                              ; preds = %245
  %259 = getelementptr inbounds nuw i8, ptr %252, i64 20
  %260 = load i32, ptr %259, align 4, !tbaa !35
  %261 = getelementptr inbounds nuw i8, ptr %252, i64 16
  %262 = load i32, ptr %261, align 8, !tbaa !38
  %263 = icmp ult i32 %260, %262
  br i1 %263, label %264, label %271

264:                                              ; preds = %258
  %265 = getelementptr inbounds nuw i8, ptr %252, i64 48
  %266 = load ptr, ptr %265, align 8, !tbaa !39
  %267 = add nuw i32 %260, 1
  store i32 %267, ptr %259, align 4, !tbaa !35
  %268 = zext i32 %260 to i64
  %269 = getelementptr inbounds nuw [16 x i8], ptr %266, i64 %268
  store ptr %254, ptr %269, align 8, !tbaa !40
  %270 = getelementptr inbounds nuw i8, ptr %269, i64 8
  store i64 %256, ptr %270, align 8, !tbaa !41
  br label %279

271:                                              ; preds = %258
  %272 = getelementptr i8, ptr %252, i64 32
  %273 = load ptr, ptr %272, align 8
  %274 = icmp eq ptr %273, null
  br i1 %274, label %278, label %275

275:                                              ; preds = %271
  %276 = getelementptr i8, ptr %252, i64 40
  %277 = load ptr, ptr %276, align 8
  tail call void %273(ptr noundef %277, ptr noundef nonnull %254) #17
  br label %279

278:                                              ; preds = %271
  tail call void @free(ptr noundef nonnull %254) #17
  br label %279

279:                                              ; preds = %278, %275, %264, %245
  %280 = load ptr, ptr %222, align 8, !tbaa !31
  %281 = getelementptr inbounds nuw [376 x i8], ptr %280, i64 %248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %281, i8 0, i64 376, i1 false)
  %282 = load ptr, ptr %222, align 8, !tbaa !31
  %.split = getelementptr inbounds nuw [376 x i8], ptr %282, i64 %248
  %283 = getelementptr inbounds nuw i8, ptr %.split, i64 16
  store <2 x i32> %251, ptr %283, align 8, !tbaa !33
  %284 = add i32 %247, 1
  %285 = load i32, ptr %243, align 8, !tbaa !42
  %286 = icmp ugt i32 %284, %285
  br i1 %286, label %.loopexit, label %245, !llvm.loop !43

.loopexit:                                        ; preds = %279, %239
  %287 = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %287, i8 0, i64 24, i1 false)
  store i32 1, ptr %213, align 8, !tbaa !32
  br label %288

288:                                              ; preds = %.loopexit, %211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %14, ptr noundef nonnull align 8 dereferenceable(224) %5, i64 224, i1 false), !tbaa.struct !96
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 2888
  store i64 %6, ptr %289, align 8, !tbaa !97
  %290 = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %291 = load ptr, ptr %290, align 8, !tbaa !57
  %292 = tail call i64 @ZSTD_freeCDict(ptr noundef %291) #17
  %293 = icmp eq ptr %1, null
  br i1 %293, label %300, label %294

294:                                              ; preds = %288
  %295 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %296 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, ptr noundef nonnull align 4 dereferenceable(28) %295, i64 28, i1 false), !tbaa.struct !74
  %297 = tail call ptr @ZSTD_createCDict_advanced(ptr noundef nonnull %1, i64 noundef %2, i32 noundef 0, i32 noundef %3, ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %10, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %296) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  store ptr %297, ptr %290, align 8, !tbaa !57
  %298 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  store ptr %297, ptr %298, align 8, !tbaa !98
  %299 = icmp eq ptr %297, null
  br i1 %299, label %646, label %302

300:                                              ; preds = %288
  store ptr null, ptr %290, align 8, !tbaa !57
  %301 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  store ptr %4, ptr %301, align 8, !tbaa !98
  br label %302

302:                                              ; preds = %300, %294
  %303 = getelementptr inbounds nuw i8, ptr %5, i64 88
  %304 = load i32, ptr %303, align 8, !tbaa !99
  %305 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %306 = getelementptr inbounds nuw i8, ptr %5, i64 28
  %307 = load i32, ptr %306, align 4, !tbaa !100
  %308 = icmp eq i32 %304, 0
  br i1 %308, label %309, label %316

309:                                              ; preds = %302
  %310 = add i32 %307, -5
  %311 = icmp ult i32 %310, 5
  br i1 %311, label %312, label %316

312:                                              ; preds = %309
  %313 = zext nneg i32 %310 to i64
  %314 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.ZSTDMT_initCStream_internal, i64 %313
  %315 = load i32, ptr %314, align 4
  br label %316

316:                                              ; preds = %312, %309, %302
  %317 = phi i32 [ %304, %302 ], [ %315, %312 ], [ 6, %309 ]
  %318 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 9, i32 %317), !nosanitize !101
  %319 = extractvalue { i32, i1 } %318, 0, !nosanitize !101
  %320 = extractvalue { i32, i1 } %318, 1, !nosanitize !101
  br i1 %320, label %321, label %322, !prof !102, !nosanitize !101

321:                                              ; preds = %316
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !101
  unreachable, !nosanitize !101

322:                                              ; preds = %316
  %323 = load i32, ptr %305, align 4
  %324 = getelementptr inbounds nuw i8, ptr %5, i64 96
  %325 = load i32, ptr %324, align 8, !tbaa !103
  %326 = icmp eq i32 %325, 1
  br i1 %326, label %327, label %360

327:                                              ; preds = %322
  %328 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %329 = load i32, ptr %328, align 8, !tbaa !104
  %330 = tail call i32 @ZSTD_cycleLog(i32 noundef %329, i32 noundef %307) #17
  %331 = add i32 %330, 3
  %332 = icmp ult i32 %331, 21
  br i1 %332, label %338, label %333

333:                                              ; preds = %327
  %334 = tail call i32 @ZSTD_cycleLog(i32 noundef %329, i32 noundef %307) #17
  %335 = add i32 %334, 3
  %336 = tail call i32 @llvm.umin.i32(i32 %335, i32 30)
  %337 = add nsw i32 %336, -2
  br label %338

338:                                              ; preds = %333, %327
  %339 = phi i32 [ 19, %327 ], [ %337, %333 ]
  %340 = icmp ult i32 %323, %339
  br i1 %340, label %350, label %341

341:                                              ; preds = %338
  %342 = tail call i32 @ZSTD_cycleLog(i32 noundef %329, i32 noundef %307) #17
  %343 = add i32 %342, 3
  %344 = icmp ult i32 %343, 21
  br i1 %344, label %350, label %345

345:                                              ; preds = %341
  %346 = tail call i32 @ZSTD_cycleLog(i32 noundef %329, i32 noundef %307) #17
  %347 = add i32 %346, 3
  %348 = tail call i32 @llvm.umin.i32(i32 %347, i32 30)
  %349 = add nsw i32 %348, -2
  br label %350

350:                                              ; preds = %345, %341, %338
  %351 = phi i32 [ 19, %341 ], [ %349, %345 ], [ %323, %338 ]
  %352 = sub i32 %351, %319
  %353 = icmp eq i32 %351, %319
  %354 = zext nneg i32 %352 to i64
  %355 = shl nuw i64 1, %354
  %356 = select i1 %353, i64 0, i64 %355
  %357 = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 %356, ptr %357, align 8, !tbaa !105
  %358 = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %212, ptr %358, align 8, !tbaa !106
  %359 = icmp eq i64 %212, 0
  br i1 %359, label %371, label %392

360:                                              ; preds = %322
  %361 = icmp sgt i32 %319, 7
  %362 = sub i32 %323, %319
  %363 = select i1 %361, i32 0, i32 %362
  %364 = icmp eq i32 %363, 0
  %365 = zext nneg i32 %363 to i64
  %366 = shl nuw i64 1, %365
  %367 = select i1 %364, i64 0, i64 %366
  %368 = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 %367, ptr %368, align 8, !tbaa !105
  %369 = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %212, ptr %369, align 8, !tbaa !106
  %370 = icmp eq i64 %212, 0
  br i1 %370, label %378, label %392

371:                                              ; preds = %350
  %372 = tail call i32 @ZSTD_cycleLog(i32 noundef %329, i32 noundef %307) #17
  %373 = add i32 %372, 3
  %374 = icmp ult i32 %373, 21
  br i1 %374, label %387, label %375

375:                                              ; preds = %371
  %376 = tail call i32 @ZSTD_cycleLog(i32 noundef %329, i32 noundef %307) #17
  %377 = add i32 %376, 3
  br label %381

378:                                              ; preds = %360
  %379 = add i32 %323, 2
  %380 = icmp ult i32 %379, 20
  br i1 %380, label %387, label %381

381:                                              ; preds = %378, %375
  %382 = phi ptr [ %368, %378 ], [ %357, %375 ]
  %383 = phi ptr [ %369, %378 ], [ %358, %375 ]
  %384 = phi i32 [ %379, %378 ], [ %377, %375 ]
  %385 = tail call i32 @llvm.umin.i32(i32 %384, i32 30)
  %386 = zext nneg i32 %385 to i64
  br label %387

387:                                              ; preds = %381, %378, %371
  %388 = phi ptr [ %357, %371 ], [ %368, %378 ], [ %382, %381 ]
  %389 = phi ptr [ %358, %371 ], [ %369, %378 ], [ %383, %381 ]
  %390 = phi i64 [ 21, %371 ], [ 20, %378 ], [ %386, %381 ]
  %391 = shl nuw nsw i64 1, %390
  store i64 %391, ptr %389, align 8, !tbaa !106
  br label %392

392:                                              ; preds = %387, %360, %350
  %393 = phi ptr [ %389, %387 ], [ %358, %350 ], [ %369, %360 ]
  %394 = phi ptr [ %388, %387 ], [ %357, %350 ], [ %368, %360 ]
  %395 = phi i64 [ %391, %387 ], [ %212, %350 ], [ %212, %360 ]
  %396 = getelementptr inbounds nuw i8, ptr %5, i64 92
  %397 = load i32, ptr %396, align 4, !tbaa !107
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %410, label %399

399:                                              ; preds = %392
  %400 = lshr i64 %395, 10
  %401 = trunc nuw nsw i64 %400 to i32
  %402 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %401, i1 true)
  %403 = sub nuw nsw i32 41, %402
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 2840
  store i64 0, ptr %404, align 8, !tbaa !108
  %405 = zext nneg i32 %403 to i64
  %406 = shl nsw i64 -1, %405
  %407 = xor i64 %406, -1
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 2848
  store i64 %407, ptr %408, align 8, !tbaa !109
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 2856
  store i64 -769974921742649141, ptr %409, align 8, !tbaa !110
  br label %410

410:                                              ; preds = %399, %392
  %411 = load i64, ptr %394, align 8, !tbaa !105
  %412 = icmp ult i64 %395, %411
  br i1 %412, label %413, label %414

413:                                              ; preds = %410
  store i64 %411, ptr %393, align 8, !tbaa !106
  br label %414

414:                                              ; preds = %413, %410
  %415 = phi i64 [ %411, %413 ], [ %395, %410 ]
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %417 = load ptr, ptr %416, align 8, !tbaa !34
  %418 = tail call i64 @ZSTD_compressBound(i64 noundef %415) #17
  %419 = getelementptr inbounds nuw i8, ptr %417, i64 8
  store i64 %418, ptr %419, align 8, !tbaa !111
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %421 = load i32, ptr %420, align 8, !tbaa !112
  %422 = icmp eq i32 %421, 1
  br i1 %422, label %423, label %428

423:                                              ; preds = %414
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %425 = load i32, ptr %424, align 4, !tbaa !70
  %426 = shl nuw i32 1, %425
  %427 = zext i32 %426 to i64
  br label %428

428:                                              ; preds = %423, %414
  %429 = phi i64 [ %427, %423 ], [ 0, %414 ]
  %430 = load i64, ptr %394, align 8, !tbaa !105
  %431 = icmp eq i64 %430, 0
  %432 = select i1 %431, i64 2, i64 3
  %433 = load i64, ptr %393, align 8, !tbaa !106
  %434 = mul i64 %432, %433
  %435 = load i32, ptr %15, align 4, !tbaa !90
  %436 = tail call i32 @llvm.smax.i32(i32 %435, i32 1)
  %437 = zext nneg i32 %436 to i64
  %438 = mul i64 %433, %437
  %439 = tail call i64 @llvm.umax.i64(i64 %429, i64 %438)
  %440 = add i64 %439, %434
  %441 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %442 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %443 = load i64, ptr %442, align 8, !tbaa !69
  %444 = icmp ult i64 %443, %440
  br i1 %444, label %445, label %471

445:                                              ; preds = %428
  %446 = load ptr, ptr %441, align 8, !tbaa !58
  %447 = icmp eq ptr %446, null
  br i1 %447, label %456, label %448

448:                                              ; preds = %445
  %449 = getelementptr i8, ptr %0, i64 2920
  %450 = load ptr, ptr %449, align 8
  %451 = icmp eq ptr %450, null
  br i1 %451, label %455, label %452

452:                                              ; preds = %448
  %453 = getelementptr i8, ptr %0, i64 2928
  %454 = load ptr, ptr %453, align 8
  tail call void %450(ptr noundef %454, ptr noundef nonnull %446) #17
  br label %456

455:                                              ; preds = %448
  tail call void @free(ptr noundef nonnull %446) #17
  br label %456

456:                                              ; preds = %455, %452, %445
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %458 = load ptr, ptr %457, align 8, !tbaa !91
  %459 = icmp eq ptr %458, null
  br i1 %459, label %464, label %460

460:                                              ; preds = %456
  %461 = getelementptr i8, ptr %0, i64 2928
  %462 = load ptr, ptr %461, align 8
  %463 = tail call ptr %458(ptr noundef %462, i64 noundef %440) #17
  br label %466

464:                                              ; preds = %456
  %465 = tail call noalias ptr @malloc(i64 noundef %440) #20
  br label %466

466:                                              ; preds = %464, %460
  %467 = phi ptr [ %463, %460 ], [ %465, %464 ]
  store ptr %467, ptr %441, align 8, !tbaa !58
  %468 = icmp eq ptr %467, null
  br i1 %468, label %470, label %469

469:                                              ; preds = %466
  store i64 %440, ptr %442, align 8, !tbaa !69
  br label %471

470:                                              ; preds = %466
  store i64 0, ptr %442, align 8, !tbaa !69
  br label %646

471:                                              ; preds = %469, %428
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 0, ptr %472, align 8, !tbaa !113
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 2868
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 2896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %474, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %475, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %473, i8 0, i64 40, i1 false)
  %476 = load ptr, ptr %290, align 8, !tbaa !57
  %477 = tail call i64 @ZSTD_freeCDict(ptr noundef %476) #17
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %290, i8 0, i64 16, i1 false)
  br i1 %293, label %487, label %479

479:                                              ; preds = %471
  %480 = icmp eq i32 %3, 1
  br i1 %480, label %481, label %483

481:                                              ; preds = %479
  store ptr %1, ptr %473, align 8, !tbaa !114
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %2, ptr %482, align 8, !tbaa !115
  br label %488

483:                                              ; preds = %479
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 2912
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, ptr noundef nonnull align 4 dereferenceable(28) %305, i64 28, i1 false), !tbaa.struct !74
  %485 = tail call ptr @ZSTD_createCDict_advanced(ptr noundef nonnull %1, i64 noundef %2, i32 noundef 1, i32 noundef %3, ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %11, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %484) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  store ptr %485, ptr %290, align 8, !tbaa !57
  store ptr %485, ptr %478, align 8, !tbaa !98
  %486 = icmp eq ptr %485, null
  br i1 %486, label %646, label %488

487:                                              ; preds = %471
  store ptr %4, ptr %478, align 8, !tbaa !98
  br label %488

488:                                              ; preds = %487, %483, %481
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %490 = load ptr, ptr %489, align 8, !tbaa !54
  %491 = load i64, ptr %393, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %8, ptr noundef nonnull align 8 dereferenceable(224) %5, i64 224, i1 false)
  %492 = getelementptr inbounds nuw i8, ptr %8, i64 96
  %493 = load i32, ptr %492, align 8, !tbaa !103
  %494 = icmp eq i32 %493, 1
  br i1 %494, label %495, label %497

495:                                              ; preds = %488
  %496 = getelementptr inbounds nuw i8, ptr %8, i64 4
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %492, ptr noundef nonnull %496) #17
  br label %498

497:                                              ; preds = %488
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %492, i8 0, i64 24, i1 false)
  br label %498

498:                                              ; preds = %497, %495
  %499 = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i32 0, ptr %499, align 8, !tbaa !116
  %500 = getelementptr inbounds nuw i8, ptr %8, i64 36
  %501 = load i32, ptr %500, align 4, !tbaa !117
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %506, label %503

503:                                              ; preds = %498
  %504 = getelementptr inbounds nuw i8, ptr %0, i64 2696
  %505 = call i32 @ZSTD_XXH64_reset(ptr noundef nonnull captures(none) %504, i64 noundef 0) #17
  br label %506

506:                                              ; preds = %503, %498
  %507 = load i32, ptr %492, align 8, !tbaa !103
  %508 = icmp eq i32 %507, 1
  br i1 %508, label %509, label %642

509:                                              ; preds = %506
  %510 = getelementptr inbounds nuw i8, ptr %8, i64 168
  %511 = load ptr, ptr %510, align 8, !tbaa !40
  %512 = getelementptr inbounds nuw i8, ptr %8, i64 176
  %513 = load ptr, ptr %512, align 8, !tbaa !40
  %514 = getelementptr inbounds nuw i8, ptr %8, i64 184
  %515 = load ptr, ptr %514, align 8, !tbaa !40
  %516 = getelementptr inbounds nuw i8, ptr %8, i64 100
  %517 = load i32, ptr %516, align 4, !tbaa !118
  %518 = zext nneg i32 %517 to i64
  %519 = shl i64 8, %518
  %520 = getelementptr inbounds nuw i8, ptr %8, i64 104
  %521 = load i32, ptr %520, align 8, !tbaa !119
  %522 = sub i32 %517, %521
  %523 = getelementptr inbounds nuw i8, ptr %0, i64 460
  %524 = load i32, ptr %523, align 4, !tbaa !120
  %525 = getelementptr inbounds nuw i8, ptr %0, i64 464
  %526 = load i32, ptr %525, align 8, !tbaa !121
  %527 = sub i32 %524, %526
  %528 = zext nneg i32 %522 to i64
  %529 = shl nuw i64 1, %528
  %530 = call i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %492, i64 noundef %491) #17
  %531 = mul i64 %530, 12
  %532 = getelementptr inbounds nuw i8, ptr %490, i64 8
  store i64 %531, ptr %532, align 8, !tbaa !111
  %533 = getelementptr inbounds nuw i8, ptr %0, i64 584
  %534 = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 0, ptr %534, align 8
  %535 = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr @.str, ptr %535, align 8, !tbaa !122
  %536 = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr @.str, ptr %536, align 8, !tbaa !123
  %537 = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i32 2, ptr %537, align 8, !tbaa !124
  %538 = getelementptr inbounds nuw i8, ptr %0, i64 612
  store i32 2, ptr %538, align 4, !tbaa !125
  store ptr getelementptr inbounds nuw (i8, ptr @.str, i64 2), ptr %533, align 8, !tbaa !126
  %539 = getelementptr inbounds nuw i8, ptr %0, i64 624
  %540 = load ptr, ptr %539, align 8, !tbaa !55
  %541 = icmp eq ptr %540, null
  br i1 %541, label %549, label %542

542:                                              ; preds = %509
  %543 = load i32, ptr %523, align 4, !tbaa !120
  %544 = icmp ult i32 %543, %517
  br i1 %544, label %545, label %557

545:                                              ; preds = %542
  %546 = icmp eq ptr %513, null
  br i1 %546, label %548, label %547

547:                                              ; preds = %545
  call void %513(ptr noundef %515, ptr noundef nonnull %540) #17
  br label %549

548:                                              ; preds = %545
  call void @free(ptr noundef nonnull %540) #17
  br label %549

549:                                              ; preds = %548, %547, %509
  %550 = icmp eq ptr %511, null
  br i1 %550, label %553, label %551

551:                                              ; preds = %549
  %552 = call ptr %511(ptr noundef %515, i64 noundef %519) #17
  br label %555

553:                                              ; preds = %549
  %554 = call noalias ptr @malloc(i64 noundef %519) #20
  br label %555

555:                                              ; preds = %553, %551
  %556 = phi ptr [ %552, %551 ], [ %554, %553 ]
  store ptr %556, ptr %539, align 8, !tbaa !55
  br label %557

557:                                              ; preds = %555, %542
  %558 = phi ptr [ %556, %555 ], [ %540, %542 ]
  %559 = getelementptr inbounds nuw i8, ptr %0, i64 640
  %560 = load ptr, ptr %559, align 8, !tbaa !56
  %561 = icmp eq ptr %560, null
  %562 = icmp ult i32 %527, %522
  %563 = select i1 %561, i1 true, i1 %562
  br i1 %563, label %564, label %581

564:                                              ; preds = %557
  br i1 %561, label %569, label %565

565:                                              ; preds = %564
  %566 = icmp eq ptr %513, null
  br i1 %566, label %568, label %567

567:                                              ; preds = %565
  call void %513(ptr noundef %515, ptr noundef nonnull %560) #17
  br label %569

568:                                              ; preds = %565
  call void @free(ptr noundef nonnull %560) #17
  br label %569

569:                                              ; preds = %568, %567, %564
  %570 = icmp eq ptr %511, null
  br i1 %570, label %573, label %571

571:                                              ; preds = %569
  %572 = call ptr %511(ptr noundef %515, i64 noundef %529) #17
  br label %575

573:                                              ; preds = %569
  %574 = call noalias ptr @malloc(i64 noundef %529) #20
  br label %575

575:                                              ; preds = %573, %571
  %576 = phi ptr [ %572, %571 ], [ %574, %573 ]
  store ptr %576, ptr %559, align 8, !tbaa !56
  %577 = load ptr, ptr %539, align 8, !tbaa !55
  %578 = icmp eq ptr %576, null
  %579 = icmp eq ptr %577, null
  %580 = select i1 %579, i1 true, i1 %578
  br i1 %580, label %641, label %583

581:                                              ; preds = %557
  %582 = icmp eq ptr %558, null
  br i1 %582, label %641, label %583

583:                                              ; preds = %581, %575
  %584 = phi ptr [ %558, %581 ], [ %577, %575 ]
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %584, i8 0, i64 %519, i1 false)
  %585 = load ptr, ptr %559, align 8, !tbaa !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %585, i8 0, i64 %529, i1 false)
  %586 = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 0, ptr %586, align 8, !tbaa !127
  %587 = icmp ne i64 %2, 0
  %588 = icmp eq i32 %3, 1
  %589 = and i1 %587, %588
  br i1 %589, label %590, label %639

590:                                              ; preds = %583
  %591 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %592 = load ptr, ptr %533, align 8, !tbaa !126
  %593 = icmp eq ptr %1, %592
  br i1 %593, label %594, label %598

594:                                              ; preds = %590
  %595 = load ptr, ptr %536, align 8, !tbaa !123
  %596 = load i32, ptr %538, align 4, !tbaa !125
  %597 = load i32, ptr %537, align 8, !tbaa !124
  br label %610

598:                                              ; preds = %590
  %599 = load ptr, ptr %535, align 8, !tbaa !122
  %600 = ptrtoint ptr %592 to i64
  %601 = ptrtoint ptr %599 to i64
  %602 = sub i64 %600, %601
  %603 = load i32, ptr %537, align 8, !tbaa !124
  store i32 %603, ptr %538, align 4, !tbaa !125
  %604 = trunc i64 %602 to i32
  store i32 %604, ptr %537, align 8, !tbaa !124
  store ptr %599, ptr %536, align 8, !tbaa !123
  %605 = sub i64 0, %602
  %606 = getelementptr inbounds i8, ptr %1, i64 %605
  store ptr %606, ptr %535, align 8, !tbaa !122
  %607 = sub i32 %604, %603
  %608 = icmp ult i32 %607, 8
  br i1 %608, label %609, label %610

609:                                              ; preds = %598
  store i32 %604, ptr %538, align 4, !tbaa !125
  br label %610

610:                                              ; preds = %609, %598, %594
  %611 = phi i32 [ %597, %594 ], [ %604, %609 ], [ %604, %598 ]
  %612 = phi i32 [ %596, %594 ], [ %604, %609 ], [ %603, %598 ]
  %613 = phi ptr [ %595, %594 ], [ %599, %609 ], [ %599, %598 ]
  store ptr %591, ptr %533, align 8, !tbaa !126
  %614 = zext i32 %612 to i64
  %615 = getelementptr inbounds nuw i8, ptr %613, i64 %614
  %616 = icmp ugt ptr %591, %615
  %617 = zext i32 %611 to i64
  %618 = getelementptr inbounds nuw i8, ptr %613, i64 %617
  %619 = icmp ult ptr %1, %618
  %620 = and i1 %616, %619
  br i1 %620, label %621, label %627

621:                                              ; preds = %610
  %622 = ptrtoint ptr %591 to i64
  %623 = ptrtoint ptr %613 to i64
  %624 = sub i64 %622, %623
  %625 = call i64 @llvm.umin.i64(i64 %624, i64 %617)
  %626 = trunc nuw i64 %625 to i32
  store i32 %626, ptr %538, align 4, !tbaa !125
  br label %627

627:                                              ; preds = %621, %610
  call void @ZSTD_ldm_fillHashTable(ptr noundef nonnull %533, ptr noundef %1, ptr noundef nonnull %591, ptr noundef nonnull %492) #17
  %628 = getelementptr inbounds nuw i8, ptr %8, i64 48
  %629 = load i32, ptr %628, align 8, !tbaa !128
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %631, label %637

631:                                              ; preds = %627
  %632 = load ptr, ptr %535, align 8, !tbaa !129
  %633 = ptrtoint ptr %591 to i64
  %634 = ptrtoint ptr %632 to i64
  %635 = sub i64 %633, %634
  %636 = trunc i64 %635 to i32
  br label %637

637:                                              ; preds = %631, %627
  %638 = phi i32 [ %636, %631 ], [ 0, %627 ]
  store i32 %638, ptr %586, align 8, !tbaa !127
  br label %639

639:                                              ; preds = %637, %583
  %640 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %640, ptr noundef nonnull align 8 dereferenceable(40) %533, i64 40, i1 false), !tbaa.struct !130
  br label %642

641:                                              ; preds = %581, %575
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %646

642:                                              ; preds = %639, %506
  %643 = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %643, ptr noundef nonnull align 8 dereferenceable(224) %8, i64 224, i1 false), !tbaa.struct !96
  %644 = and i64 %491, 4294967295
  %645 = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 %644, ptr %645, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %646

646:                                              ; preds = %642, %641, %483, %470, %294, %194, %193, %63, %62, %18
  %647 = phi i64 [ -64, %470 ], [ -64, %294 ], [ -64, %483 ], [ 0, %642 ], [ -64, %641 ], [ -64, %62 ], [ -64, %18 ], [ -64, %63 ], [ -64, %194 ], [ -64, %193 ]
  ret i64 %647
}

declare ptr @ZSTD_createCDict_advanced(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.ZSTD_compressionParameters) align 8, ptr noundef byval(%struct.ZSTD_customMem) align 8) local_unnamed_addr #2

declare i64 @ZSTD_compressBound(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #6

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTDMT_nextInputSizeHint(ptr noundef readonly captures(none) %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %3 = load i64, ptr %2, align 8, !tbaa !106
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %5 = load i64, ptr %4, align 8, !tbaa !76
  %6 = icmp eq i64 %3, %5
  %7 = select i1 %6, i64 0, i64 %5
  %8 = sub i64 %3, %7
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTDMT_compressStream_generic(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 2876
  %6 = load i32, ptr %5, align 4, !tbaa !133
  %7 = icmp ne i32 %6, 0
  %8 = icmp eq i32 %3, 0
  %9 = and i1 %8, %7
  br i1 %9, label %1284, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %12 = load i32, ptr %11, align 8, !tbaa !81
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %879

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %16 = load i64, ptr %15, align 8, !tbaa !134
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %18 = load i64, ptr %17, align 8, !tbaa !136
  %19 = icmp ugt i64 %16, %18
  br i1 %19, label %20, label %879

20:                                               ; preds = %14
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %22 = load ptr, ptr %21, align 8, !tbaa !137
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %176

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 2872
  %26 = load i32, ptr %25, align 8, !tbaa !78
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %28 = load i64, ptr %27, align 8, !tbaa !69
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %30 = load i64, ptr %29, align 8, !tbaa !106
  %31 = udiv i64 %28, %30
  %32 = zext i32 %26 to i64
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %.loopexit79, label %34

34:                                               ; preds = %24
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 2868
  %36 = load i32, ptr %35, align 4, !tbaa !82
  %37 = icmp ult i32 %36, %26
  br i1 %37, label %38, label %.loopexit79

38:                                               ; preds = %34
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %40 = load i32, ptr %39, align 8, !tbaa !42
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %42 = load ptr, ptr %41, align 8, !tbaa !31
  br label %46

43:                                               ; preds = %46
  %44 = add nuw i32 %47, 1
  %45 = icmp eq i32 %44, %26
  br i1 %45, label %.loopexit79, label %46, !llvm.loop !138

46:                                               ; preds = %43, %38
  %47 = phi i32 [ %36, %38 ], [ %44, %43 ]
  %48 = and i32 %47, %40
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds nuw [376 x i8], ptr %42, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !87
  %52 = getelementptr inbounds nuw i8, ptr %50, i64 96
  %53 = load i64, ptr %52, align 8, !tbaa !86
  %54 = icmp ult i64 %51, %53
  br i1 %54, label %55, label %43

55:                                               ; preds = %46
  %56 = getelementptr inbounds nuw i8, ptr %50, i64 80
  %57 = load i64, ptr %56, align 8, !tbaa !41
  %58 = icmp eq i64 %57, 0
  %59 = select i1 %58, i64 88, i64 72
  %60 = getelementptr inbounds nuw i8, ptr %50, i64 %59
  %61 = select i1 %58, i64 %53, i64 %57
  %62 = load ptr, ptr %60, align 8, !tbaa !40
  br label %.loopexit79

.loopexit79:                                      ; preds = %43, %55, %34, %24
  %63 = phi ptr [ null, %24 ], [ %62, %55 ], [ null, %34 ], [ null, %43 ]
  %64 = phi i64 [ 0, %24 ], [ %61, %55 ], [ 0, %34 ], [ 0, %43 ]
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 344
  %67 = load i64, ptr %66, align 8, !tbaa !113
  %68 = sub i64 %28, %67
  %69 = icmp ult i64 %68, %30
  br i1 %69, label %70, label %121

70:                                               ; preds = %.loopexit79
  %71 = load ptr, ptr %65, align 8, !tbaa !58
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %73 = load i64, ptr %72, align 8, !tbaa !115
  %74 = icmp eq ptr %63, null
  %75 = icmp eq ptr %71, null
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %87, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds nuw i8, ptr %71, i64 %73
  %79 = getelementptr inbounds nuw i8, ptr %63, i64 %64
  %80 = icmp samesign eq i64 %73, 0
  %81 = icmp samesign eq i64 %64, 0
  %82 = select i1 %80, i1 true, i1 %81
  %83 = icmp uge ptr %71, %79
  %84 = icmp uge ptr %63, %78
  %85 = select i1 %82, i1 true, i1 %83
  %86 = select i1 %85, i1 true, i1 %84
  br i1 %86, label %87, label %879

87:                                               ; preds = %77, %70
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %90 = load i32, ptr %89, align 8, !tbaa !112
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %119

92:                                               ; preds = %87
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %100 = load i32, ptr %99, align 8
  %101 = icmp eq ptr %98, null
  %102 = select i1 %101, i1 true, i1 %75
  %103 = icmp eq ptr %96, null
  %104 = zext i32 %100 to i64
  %105 = getelementptr inbounds nuw i8, ptr %96, i64 %104
  %106 = getelementptr inbounds nuw i8, ptr %71, i64 %73
  %107 = icmp samesign eq i64 %73, 0
  %108 = icmp eq ptr %94, %105
  %109 = select i1 %107, i1 true, i1 %108
  %110 = icmp uge ptr %71, %94
  %111 = icmp uge ptr %105, %106
  %112 = select i1 %109, i1 true, i1 %110
  %113 = select i1 %112, i1 true, i1 %111
  br i1 %102, label %114, label %117

114:                                              ; preds = %92
  %115 = select i1 %103, i1 true, i1 %75
  %116 = select i1 %115, i1 true, i1 %113
  br i1 %116, label %119, label %.preheader77

.preheader77:                                     ; preds = %114, %.preheader77
  br label %.preheader77

117:                                              ; preds = %92
  %118 = select i1 %103, i1 true, i1 %113
  br i1 %118, label %119, label %.preheader78

.preheader78:                                     ; preds = %117, %.preheader78
  br label %.preheader78

119:                                              ; preds = %117, %114, %87
  %120 = load ptr, ptr %88, align 8, !tbaa !114
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %71, ptr align 1 %120, i64 %73, i1 false)
  store ptr %71, ptr %88, align 8, !tbaa !114
  store i64 %73, ptr %66, align 8, !tbaa !113
  br label %121

121:                                              ; preds = %119, %.loopexit79
  %122 = phi i64 [ %73, %119 ], [ %67, %.loopexit79 ]
  %123 = load ptr, ptr %65, align 8, !tbaa !58
  %124 = getelementptr inbounds nuw i8, ptr %123, i64 %122
  %125 = icmp eq ptr %63, null
  %126 = icmp eq ptr %123, null
  %127 = select i1 %125, i1 true, i1 %126
  br i1 %127, label %138, label %128

128:                                              ; preds = %121
  %129 = getelementptr inbounds nuw i8, ptr %124, i64 %30
  %130 = getelementptr inbounds nuw i8, ptr %63, i64 %64
  %131 = icmp samesign eq i64 %64, 0
  %132 = icmp uge ptr %124, %130
  %133 = icmp uge ptr %63, %129
  %134 = select i1 %131, i1 true, i1 %132
  %135 = select i1 %134, i1 true, i1 %133
  br i1 %135, label %138, label %136

136:                                              ; preds = %128
  %137 = load ptr, ptr %21, align 8, !tbaa !137
  br label %170

138:                                              ; preds = %128, %121
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %140 = load i32, ptr %139, align 8, !tbaa !112
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %167

142:                                              ; preds = %138
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 2808
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %148 = load ptr, ptr %147, align 8
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %150 = load i32, ptr %149, align 8
  %151 = icmp eq ptr %148, null
  %152 = select i1 %151, i1 true, i1 %126
  %153 = icmp eq ptr %146, null
  %154 = zext i32 %150 to i64
  %155 = getelementptr inbounds nuw i8, ptr %146, i64 %154
  %156 = getelementptr inbounds nuw i8, ptr %124, i64 %30
  %157 = icmp eq ptr %144, %155
  %158 = icmp uge ptr %124, %144
  %159 = icmp uge ptr %155, %156
  %160 = select i1 %157, i1 true, i1 %158
  %161 = select i1 %160, i1 true, i1 %159
  br i1 %152, label %162, label %165

162:                                              ; preds = %142
  %163 = select i1 %153, i1 true, i1 %126
  %164 = select i1 %163, i1 true, i1 %161
  br i1 %164, label %167, label %.preheader75

.preheader75:                                     ; preds = %162, %.preheader75
  br label %.preheader75

165:                                              ; preds = %142
  %166 = select i1 %153, i1 true, i1 %161
  br i1 %166, label %167, label %.preheader76

.preheader76:                                     ; preds = %165, %.preheader76
  br label %.preheader76

167:                                              ; preds = %165, %162, %138
  store ptr %124, ptr %21, align 8, !tbaa !40
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 %30, ptr %168, align 8, !tbaa !41
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 0, ptr %169, align 8, !tbaa !76
  br label %170

170:                                              ; preds = %167, %136
  %171 = phi ptr [ %124, %167 ], [ %137, %136 ]
  %172 = icmp eq ptr %171, null
  br i1 %172, label %879, label %173

173:                                              ; preds = %170
  %174 = load i64, ptr %15, align 8
  %175 = load i64, ptr %17, align 8
  br label %176

176:                                              ; preds = %173, %20
  %177 = phi i64 [ %175, %173 ], [ %18, %20 ]
  %178 = phi i64 [ %174, %173 ], [ %16, %20 ]
  %179 = phi ptr [ %171, %173 ], [ %22, %20 ]
  %180 = load ptr, ptr %2, align 8
  %181 = getelementptr inbounds nuw i8, ptr %180, i64 %177
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 2856
  %183 = load i64, ptr %182, align 8, !tbaa !110
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %185 = load i64, ptr %184, align 8, !tbaa !109
  %186 = sub i64 %178, %177
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %188 = load i64, ptr %187, align 8, !tbaa !106
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %190 = load i64, ptr %189, align 8, !tbaa !76
  %191 = sub i64 %188, %190
  %192 = tail call i64 @llvm.umin.i64(i64 %186, i64 %191)
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %194 = load i32, ptr %193, align 4, !tbaa !139
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %.thread, label %196

196:                                              ; preds = %176
  %197 = add i64 %190, %186
  %198 = icmp ult i64 %197, 131072
  %199 = add i64 %192, %190
  %200 = icmp ult i64 %199, 32
  %201 = select i1 %198, i1 true, i1 %200
  br i1 %201, label %.thread, label %202

202:                                              ; preds = %196
  %203 = icmp ult i64 %190, 131072
  br i1 %203, label %204, label %635

204:                                              ; preds = %202
  %205 = sub nuw nsw i64 131072, %190
  %206 = icmp samesign ult i64 %190, 131041
  br i1 %206, label %207, label %398

207:                                              ; preds = %204
  %208 = getelementptr inbounds nuw i8, ptr %181, i64 %205
  %209 = getelementptr inbounds i8, ptr %208, i64 -32
  %210 = load i8, ptr %209, align 1, !tbaa !140
  %211 = zext i8 %210 to i64
  %212 = getelementptr inbounds i8, ptr %208, i64 -31
  %213 = load i8, ptr %212, align 1, !tbaa !140
  %214 = zext i8 %213 to i64
  %215 = mul i64 %211, -3523014627327384477
  %216 = add i64 %215, 1663341874145258472
  %217 = add i64 %216, %214
  %218 = getelementptr inbounds i8, ptr %208, i64 -30
  %219 = load i8, ptr %218, align 1, !tbaa !140
  %220 = zext i8 %219 to i64
  %221 = mul i64 %217, -3523014627327384477
  %222 = add nuw nsw i64 %220, 10
  %223 = add i64 %222, %221
  %224 = getelementptr inbounds i8, ptr %208, i64 -29
  %225 = load i8, ptr %224, align 1, !tbaa !140
  %226 = zext i8 %225 to i64
  %227 = mul i64 %223, -3523014627327384477
  %228 = add nuw nsw i64 %226, 10
  %229 = add i64 %228, %227
  %230 = getelementptr inbounds i8, ptr %208, i64 -28
  %231 = load i8, ptr %230, align 1, !tbaa !140
  %232 = zext i8 %231 to i64
  %233 = mul i64 %229, -3523014627327384477
  %234 = add nuw nsw i64 %232, 10
  %235 = add i64 %234, %233
  %236 = getelementptr inbounds i8, ptr %208, i64 -27
  %237 = load i8, ptr %236, align 1, !tbaa !140
  %238 = zext i8 %237 to i64
  %239 = mul i64 %235, -3523014627327384477
  %240 = add nuw nsw i64 %238, 10
  %241 = add i64 %240, %239
  %242 = getelementptr inbounds i8, ptr %208, i64 -26
  %243 = load i8, ptr %242, align 1, !tbaa !140
  %244 = zext i8 %243 to i64
  %245 = mul i64 %241, -3523014627327384477
  %246 = add nuw nsw i64 %244, 10
  %247 = add i64 %246, %245
  %248 = getelementptr inbounds i8, ptr %208, i64 -25
  %249 = load i8, ptr %248, align 1, !tbaa !140
  %250 = zext i8 %249 to i64
  %251 = mul i64 %247, -3523014627327384477
  %252 = add nuw nsw i64 %250, 10
  %253 = add i64 %252, %251
  %254 = getelementptr inbounds i8, ptr %208, i64 -24
  %255 = load i8, ptr %254, align 1, !tbaa !140
  %256 = zext i8 %255 to i64
  %257 = mul i64 %253, -3523014627327384477
  %258 = add nuw nsw i64 %256, 10
  %259 = add i64 %258, %257
  %260 = getelementptr inbounds i8, ptr %208, i64 -23
  %261 = load i8, ptr %260, align 1, !tbaa !140
  %262 = zext i8 %261 to i64
  %263 = mul i64 %259, -3523014627327384477
  %264 = add nuw nsw i64 %262, 10
  %265 = add i64 %264, %263
  %266 = getelementptr inbounds i8, ptr %208, i64 -22
  %267 = load i8, ptr %266, align 1, !tbaa !140
  %268 = zext i8 %267 to i64
  %269 = mul i64 %265, -3523014627327384477
  %270 = add nuw nsw i64 %268, 10
  %271 = add i64 %270, %269
  %272 = getelementptr inbounds i8, ptr %208, i64 -21
  %273 = load i8, ptr %272, align 1, !tbaa !140
  %274 = zext i8 %273 to i64
  %275 = mul i64 %271, -3523014627327384477
  %276 = add nuw nsw i64 %274, 10
  %277 = add i64 %276, %275
  %278 = getelementptr inbounds i8, ptr %208, i64 -20
  %279 = load i8, ptr %278, align 1, !tbaa !140
  %280 = zext i8 %279 to i64
  %281 = mul i64 %277, -3523014627327384477
  %282 = add nuw nsw i64 %280, 10
  %283 = add i64 %282, %281
  %284 = getelementptr inbounds i8, ptr %208, i64 -19
  %285 = load i8, ptr %284, align 1, !tbaa !140
  %286 = zext i8 %285 to i64
  %287 = mul i64 %283, -3523014627327384477
  %288 = add nuw nsw i64 %286, 10
  %289 = add i64 %288, %287
  %290 = getelementptr inbounds i8, ptr %208, i64 -18
  %291 = load i8, ptr %290, align 1, !tbaa !140
  %292 = zext i8 %291 to i64
  %293 = mul i64 %289, -3523014627327384477
  %294 = add nuw nsw i64 %292, 10
  %295 = add i64 %294, %293
  %296 = getelementptr inbounds i8, ptr %208, i64 -17
  %297 = load i8, ptr %296, align 1, !tbaa !140
  %298 = zext i8 %297 to i64
  %299 = mul i64 %295, -3523014627327384477
  %300 = add nuw nsw i64 %298, 10
  %301 = add i64 %300, %299
  %302 = getelementptr inbounds i8, ptr %208, i64 -16
  %303 = load i8, ptr %302, align 1, !tbaa !140
  %304 = zext i8 %303 to i64
  %305 = mul i64 %301, -3523014627327384477
  %306 = add nuw nsw i64 %304, 10
  %307 = add i64 %306, %305
  %308 = getelementptr inbounds i8, ptr %208, i64 -15
  %309 = load i8, ptr %308, align 1, !tbaa !140
  %310 = zext i8 %309 to i64
  %311 = mul i64 %307, -3523014627327384477
  %312 = add nuw nsw i64 %310, 10
  %313 = add i64 %312, %311
  %314 = getelementptr inbounds i8, ptr %208, i64 -14
  %315 = load i8, ptr %314, align 1, !tbaa !140
  %316 = zext i8 %315 to i64
  %317 = mul i64 %313, -3523014627327384477
  %318 = add nuw nsw i64 %316, 10
  %319 = add i64 %318, %317
  %320 = getelementptr inbounds i8, ptr %208, i64 -13
  %321 = load i8, ptr %320, align 1, !tbaa !140
  %322 = zext i8 %321 to i64
  %323 = mul i64 %319, -3523014627327384477
  %324 = add nuw nsw i64 %322, 10
  %325 = add i64 %324, %323
  %326 = getelementptr inbounds i8, ptr %208, i64 -12
  %327 = load i8, ptr %326, align 1, !tbaa !140
  %328 = zext i8 %327 to i64
  %329 = mul i64 %325, -3523014627327384477
  %330 = add nuw nsw i64 %328, 10
  %331 = add i64 %330, %329
  %332 = getelementptr inbounds i8, ptr %208, i64 -11
  %333 = load i8, ptr %332, align 1, !tbaa !140
  %334 = zext i8 %333 to i64
  %335 = mul i64 %331, -3523014627327384477
  %336 = add nuw nsw i64 %334, 10
  %337 = add i64 %336, %335
  %338 = getelementptr inbounds i8, ptr %208, i64 -10
  %339 = load i8, ptr %338, align 1, !tbaa !140
  %340 = zext i8 %339 to i64
  %341 = mul i64 %337, -3523014627327384477
  %342 = add nuw nsw i64 %340, 10
  %343 = add i64 %342, %341
  %344 = getelementptr inbounds i8, ptr %208, i64 -9
  %345 = load i8, ptr %344, align 1, !tbaa !140
  %346 = zext i8 %345 to i64
  %347 = mul i64 %343, -3523014627327384477
  %348 = add nuw nsw i64 %346, 10
  %349 = add i64 %348, %347
  %350 = getelementptr inbounds i8, ptr %208, i64 -8
  %351 = load i8, ptr %350, align 1, !tbaa !140
  %352 = zext i8 %351 to i64
  %353 = mul i64 %349, -3523014627327384477
  %354 = add nuw nsw i64 %352, 10
  %355 = add i64 %354, %353
  %356 = getelementptr inbounds i8, ptr %208, i64 -7
  %357 = load i8, ptr %356, align 1, !tbaa !140
  %358 = zext i8 %357 to i64
  %359 = mul i64 %355, -3523014627327384477
  %360 = add nuw nsw i64 %358, 10
  %361 = add i64 %360, %359
  %362 = getelementptr inbounds i8, ptr %208, i64 -6
  %363 = load i8, ptr %362, align 1, !tbaa !140
  %364 = zext i8 %363 to i64
  %365 = mul i64 %361, -3523014627327384477
  %366 = add nuw nsw i64 %364, 10
  %367 = add i64 %366, %365
  %368 = getelementptr inbounds i8, ptr %208, i64 -5
  %369 = load i8, ptr %368, align 1, !tbaa !140
  %370 = zext i8 %369 to i64
  %371 = mul i64 %367, -3523014627327384477
  %372 = add nuw nsw i64 %370, 10
  %373 = add i64 %372, %371
  %374 = getelementptr inbounds i8, ptr %208, i64 -4
  %375 = load i8, ptr %374, align 1, !tbaa !140
  %376 = zext i8 %375 to i64
  %377 = mul i64 %373, -3523014627327384477
  %378 = add nuw nsw i64 %376, 10
  %379 = add i64 %378, %377
  %380 = getelementptr inbounds i8, ptr %208, i64 -3
  %381 = load i8, ptr %380, align 1, !tbaa !140
  %382 = zext i8 %381 to i64
  %383 = mul i64 %379, -3523014627327384477
  %384 = add nuw nsw i64 %382, 10
  %385 = add i64 %384, %383
  %386 = getelementptr inbounds i8, ptr %208, i64 -2
  %387 = load i8, ptr %386, align 1, !tbaa !140
  %388 = zext i8 %387 to i64
  %389 = mul i64 %385, -3523014627327384477
  %390 = add nuw nsw i64 %388, 10
  %391 = add i64 %390, %389
  %392 = getelementptr inbounds i8, ptr %208, i64 -1
  %393 = load i8, ptr %392, align 1, !tbaa !140
  %394 = zext i8 %393 to i64
  %395 = mul i64 %391, -3523014627327384477
  %396 = add nuw nsw i64 %394, 10
  %397 = add i64 %396, %395
  br label %.loopexit70

398:                                              ; preds = %204
  %399 = getelementptr inbounds nuw i8, ptr %179, i64 %190
  %400 = getelementptr inbounds i8, ptr %399, i64 -32
  %401 = getelementptr inbounds nuw i8, ptr %400, i64 %205
  %402 = and i64 %190, 3
  %403 = icmp samesign ult i64 %190, 131044
  br i1 %403, label %.loopexit74, label %404

404:                                              ; preds = %398
  %405 = and i64 %190, 131068
  %406 = add nsw i64 %405, -131044
  %407 = getelementptr inbounds nuw i8, ptr %401, i64 3
  %408 = getelementptr inbounds nuw i8, ptr %401, i64 2
  %409 = getelementptr inbounds nuw i8, ptr %401, i64 1
  %410 = load i8, ptr %401, align 1, !tbaa !140
  %411 = zext i8 %410 to i64
  %412 = load i8, ptr %409, align 1, !tbaa !140
  %413 = zext i8 %412 to i64
  %414 = mul i64 %411, -3523014627327384477
  %415 = add i64 %414, %413
  %416 = load i8, ptr %408, align 1, !tbaa !140
  %417 = zext i8 %416 to i64
  %418 = mul i64 %415, -3523014627327384477
  %419 = add i64 %418, %417
  %420 = load i8, ptr %407, align 1, !tbaa !140
  %421 = zext i8 %420 to i64
  %422 = mul i64 %419, -3523014627327384477
  %423 = add nuw nsw i64 %421, 1741079827716923664
  %424 = add i64 %423, %422
  %425 = icmp eq i64 %406, 0
  br i1 %425, label %.loopexit74.loopexit, label %426

426:                                              ; preds = %404
  %427 = getelementptr inbounds nuw i8, ptr %401, i64 4
  %428 = load i8, ptr %427, align 1, !tbaa !140
  %429 = zext i8 %428 to i64
  %430 = mul i64 %424, -3523014627327384477
  %431 = add i64 %430, 10
  %432 = add i64 %431, %429
  %433 = getelementptr inbounds nuw i8, ptr %401, i64 5
  %434 = load i8, ptr %433, align 1, !tbaa !140
  %435 = zext i8 %434 to i64
  %436 = mul i64 %432, -3523014627327384477
  %437 = add nuw nsw i64 %435, 10
  %438 = add i64 %437, %436
  %439 = getelementptr inbounds nuw i8, ptr %401, i64 6
  %440 = load i8, ptr %439, align 1, !tbaa !140
  %441 = zext i8 %440 to i64
  %442 = mul i64 %438, -3523014627327384477
  %443 = add nuw nsw i64 %441, 10
  %444 = add i64 %443, %442
  %445 = getelementptr inbounds nuw i8, ptr %401, i64 7
  %446 = load i8, ptr %445, align 1, !tbaa !140
  %447 = zext i8 %446 to i64
  %448 = mul i64 %444, -3523014627327384477
  %449 = add nuw nsw i64 %447, 10
  %450 = add i64 %449, %448
  %451 = icmp eq i64 %406, 4
  br i1 %451, label %.loopexit74.loopexit, label %452

452:                                              ; preds = %426
  %453 = getelementptr inbounds nuw i8, ptr %401, i64 8
  %454 = load i8, ptr %453, align 1, !tbaa !140
  %455 = zext i8 %454 to i64
  %456 = mul i64 %450, -3523014627327384477
  %457 = add i64 %456, 10
  %458 = add i64 %457, %455
  %459 = getelementptr inbounds nuw i8, ptr %401, i64 9
  %460 = load i8, ptr %459, align 1, !tbaa !140
  %461 = zext i8 %460 to i64
  %462 = mul i64 %458, -3523014627327384477
  %463 = add nuw nsw i64 %461, 10
  %464 = add i64 %463, %462
  %465 = getelementptr inbounds nuw i8, ptr %401, i64 10
  %466 = load i8, ptr %465, align 1, !tbaa !140
  %467 = zext i8 %466 to i64
  %468 = mul i64 %464, -3523014627327384477
  %469 = add nuw nsw i64 %467, 10
  %470 = add i64 %469, %468
  %471 = getelementptr inbounds nuw i8, ptr %401, i64 11
  %472 = load i8, ptr %471, align 1, !tbaa !140
  %473 = zext i8 %472 to i64
  %474 = mul i64 %470, -3523014627327384477
  %475 = add nuw nsw i64 %473, 10
  %476 = add i64 %475, %474
  %477 = icmp eq i64 %406, 8
  br i1 %477, label %.loopexit74.loopexit, label %478

478:                                              ; preds = %452
  %479 = getelementptr inbounds nuw i8, ptr %401, i64 12
  %480 = load i8, ptr %479, align 1, !tbaa !140
  %481 = zext i8 %480 to i64
  %482 = mul i64 %476, -3523014627327384477
  %483 = add i64 %482, 10
  %484 = add i64 %483, %481
  %485 = getelementptr inbounds nuw i8, ptr %401, i64 13
  %486 = load i8, ptr %485, align 1, !tbaa !140
  %487 = zext i8 %486 to i64
  %488 = mul i64 %484, -3523014627327384477
  %489 = add nuw nsw i64 %487, 10
  %490 = add i64 %489, %488
  %491 = getelementptr inbounds nuw i8, ptr %401, i64 14
  %492 = load i8, ptr %491, align 1, !tbaa !140
  %493 = zext i8 %492 to i64
  %494 = mul i64 %490, -3523014627327384477
  %495 = add nuw nsw i64 %493, 10
  %496 = add i64 %495, %494
  %497 = getelementptr inbounds nuw i8, ptr %401, i64 15
  %498 = load i8, ptr %497, align 1, !tbaa !140
  %499 = zext i8 %498 to i64
  %500 = mul i64 %496, -3523014627327384477
  %501 = add nuw nsw i64 %499, 10
  %502 = add i64 %501, %500
  %503 = icmp eq i64 %406, 12
  br i1 %503, label %.loopexit74.loopexit, label %504

504:                                              ; preds = %478
  %505 = getelementptr inbounds nuw i8, ptr %401, i64 16
  %506 = load i8, ptr %505, align 1, !tbaa !140
  %507 = zext i8 %506 to i64
  %508 = mul i64 %502, -3523014627327384477
  %509 = add i64 %508, 10
  %510 = add i64 %509, %507
  %511 = getelementptr inbounds nuw i8, ptr %401, i64 17
  %512 = load i8, ptr %511, align 1, !tbaa !140
  %513 = zext i8 %512 to i64
  %514 = mul i64 %510, -3523014627327384477
  %515 = add nuw nsw i64 %513, 10
  %516 = add i64 %515, %514
  %517 = getelementptr inbounds nuw i8, ptr %401, i64 18
  %518 = load i8, ptr %517, align 1, !tbaa !140
  %519 = zext i8 %518 to i64
  %520 = mul i64 %516, -3523014627327384477
  %521 = add nuw nsw i64 %519, 10
  %522 = add i64 %521, %520
  %523 = getelementptr inbounds nuw i8, ptr %401, i64 19
  %524 = load i8, ptr %523, align 1, !tbaa !140
  %525 = zext i8 %524 to i64
  %526 = mul i64 %522, -3523014627327384477
  %527 = add nuw nsw i64 %525, 10
  %528 = add i64 %527, %526
  %529 = icmp eq i64 %406, 16
  br i1 %529, label %.loopexit74.loopexit, label %530

530:                                              ; preds = %504
  %531 = getelementptr inbounds nuw i8, ptr %401, i64 20
  %532 = load i8, ptr %531, align 1, !tbaa !140
  %533 = zext i8 %532 to i64
  %534 = mul i64 %528, -3523014627327384477
  %535 = add i64 %534, 10
  %536 = add i64 %535, %533
  %537 = getelementptr inbounds nuw i8, ptr %401, i64 21
  %538 = load i8, ptr %537, align 1, !tbaa !140
  %539 = zext i8 %538 to i64
  %540 = mul i64 %536, -3523014627327384477
  %541 = add nuw nsw i64 %539, 10
  %542 = add i64 %541, %540
  %543 = getelementptr inbounds nuw i8, ptr %401, i64 22
  %544 = load i8, ptr %543, align 1, !tbaa !140
  %545 = zext i8 %544 to i64
  %546 = mul i64 %542, -3523014627327384477
  %547 = add nuw nsw i64 %545, 10
  %548 = add i64 %547, %546
  %549 = getelementptr inbounds nuw i8, ptr %401, i64 23
  %550 = load i8, ptr %549, align 1, !tbaa !140
  %551 = zext i8 %550 to i64
  %552 = mul i64 %548, -3523014627327384477
  %553 = add nuw nsw i64 %551, 10
  %554 = add i64 %553, %552
  %555 = icmp eq i64 %406, 20
  br i1 %555, label %.loopexit74.loopexit, label %556

556:                                              ; preds = %530
  %557 = getelementptr inbounds nuw i8, ptr %401, i64 24
  %558 = load i8, ptr %557, align 1, !tbaa !140
  %559 = zext i8 %558 to i64
  %560 = mul i64 %554, -3523014627327384477
  %561 = add i64 %560, 10
  %562 = add i64 %561, %559
  %563 = getelementptr inbounds nuw i8, ptr %401, i64 25
  %564 = load i8, ptr %563, align 1, !tbaa !140
  %565 = zext i8 %564 to i64
  %566 = mul i64 %562, -3523014627327384477
  %567 = add nuw nsw i64 %565, 10
  %568 = add i64 %567, %566
  %569 = getelementptr inbounds nuw i8, ptr %401, i64 26
  %570 = load i8, ptr %569, align 1, !tbaa !140
  %571 = zext i8 %570 to i64
  %572 = mul i64 %568, -3523014627327384477
  %573 = add nuw nsw i64 %571, 10
  %574 = add i64 %573, %572
  %575 = getelementptr inbounds nuw i8, ptr %401, i64 27
  %576 = load i8, ptr %575, align 1, !tbaa !140
  %577 = zext i8 %576 to i64
  %578 = mul i64 %574, -3523014627327384477
  %579 = add nuw nsw i64 %577, 10
  %580 = add i64 %579, %578
  br label %.loopexit74.loopexit

.loopexit74.loopexit:                             ; preds = %556, %530, %504, %478, %452, %426, %404
  %.lcssa167 = phi i64 [ %424, %404 ], [ %450, %426 ], [ %476, %452 ], [ %502, %478 ], [ %528, %504 ], [ %554, %530 ], [ %580, %556 ]
  %581 = add nsw i64 %405, -131040
  br label %.loopexit74

.loopexit74:                                      ; preds = %.loopexit74.loopexit, %398
  %582 = phi i64 [ poison, %398 ], [ %.lcssa167, %.loopexit74.loopexit ]
  %583 = phi i64 [ 0, %398 ], [ %581, %.loopexit74.loopexit ]
  %584 = phi i64 [ 0, %398 ], [ %.lcssa167, %.loopexit74.loopexit ]
  %585 = icmp eq i64 %402, 0
  br i1 %585, label %.loopexit73, label %.preheader72

.preheader72:                                     ; preds = %.loopexit74, %.preheader72
  %586 = phi i64 [ %595, %.preheader72 ], [ %583, %.loopexit74 ]
  %587 = phi i64 [ %594, %.preheader72 ], [ %584, %.loopexit74 ]
  %588 = phi i64 [ %596, %.preheader72 ], [ 0, %.loopexit74 ]
  %589 = getelementptr inbounds nuw i8, ptr %401, i64 %586
  %590 = load i8, ptr %589, align 1, !tbaa !140
  %591 = zext i8 %590 to i64
  %592 = mul i64 %587, -3523014627327384477
  %593 = add i64 %592, 10
  %594 = add i64 %593, %591
  %595 = add nuw nsw i64 %586, 1
  %596 = add nuw nsw i64 %588, 1
  %597 = icmp eq i64 %596, %402
  br i1 %597, label %.loopexit73, label %.preheader72, !llvm.loop !141

.loopexit73:                                      ; preds = %.preheader72, %.loopexit74
  %598 = phi i64 [ %582, %.loopexit74 ], [ %594, %.preheader72 ]
  %599 = and i64 %205, 3
  %600 = icmp samesign ugt i64 %190, 131068
  br i1 %600, label %.loopexit71, label %601

601:                                              ; preds = %.loopexit73
  %602 = and i64 %205, 262140
  %603 = getelementptr inbounds nuw i8, ptr %181, i64 1
  %604 = getelementptr inbounds nuw i8, ptr %181, i64 2
  %605 = getelementptr inbounds nuw i8, ptr %181, i64 3
  br label %606

606:                                              ; preds = %606, %601
  %607 = phi i64 [ 0, %601 ], [ %633, %606 ]
  %608 = phi i64 [ %598, %601 ], [ %632, %606 ]
  %609 = getelementptr inbounds nuw i8, ptr %181, i64 %607
  %610 = load i8, ptr %609, align 1, !tbaa !140
  %611 = zext i8 %610 to i64
  %612 = mul i64 %608, -3523014627327384477
  %613 = add i64 %612, 10
  %614 = add i64 %613, %611
  %615 = getelementptr inbounds nuw i8, ptr %603, i64 %607
  %616 = load i8, ptr %615, align 1, !tbaa !140
  %617 = zext i8 %616 to i64
  %618 = mul i64 %614, -3523014627327384477
  %619 = add nuw nsw i64 %617, 10
  %620 = add i64 %619, %618
  %621 = getelementptr inbounds nuw i8, ptr %604, i64 %607
  %622 = load i8, ptr %621, align 1, !tbaa !140
  %623 = zext i8 %622 to i64
  %624 = mul i64 %620, -3523014627327384477
  %625 = add nuw nsw i64 %623, 10
  %626 = add i64 %625, %624
  %627 = getelementptr inbounds nuw i8, ptr %605, i64 %607
  %628 = load i8, ptr %627, align 1, !tbaa !140
  %629 = zext i8 %628 to i64
  %630 = mul i64 %626, -3523014627327384477
  %631 = add nuw nsw i64 %629, 10
  %632 = add i64 %631, %630
  %633 = add nuw nsw i64 %607, 4
  %634 = icmp eq i64 %633, %602
  br i1 %634, label %.loopexit71, label %606, !llvm.loop !143

635:                                              ; preds = %202
  %636 = getelementptr inbounds nuw i8, ptr %179, i64 %190
  %637 = getelementptr inbounds i8, ptr %636, i64 -32
  %638 = load i8, ptr %637, align 1, !tbaa !140
  %639 = zext i8 %638 to i64
  %640 = getelementptr inbounds i8, ptr %636, i64 -31
  %641 = load i8, ptr %640, align 1, !tbaa !140
  %642 = zext i8 %641 to i64
  %643 = mul i64 %639, -3523014627327384477
  %644 = add i64 %643, 1663341874145258472
  %645 = add i64 %644, %642
  %646 = getelementptr inbounds i8, ptr %636, i64 -30
  %647 = load i8, ptr %646, align 1, !tbaa !140
  %648 = zext i8 %647 to i64
  %649 = mul i64 %645, -3523014627327384477
  %650 = add nuw nsw i64 %648, 10
  %651 = add i64 %650, %649
  %652 = getelementptr inbounds i8, ptr %636, i64 -29
  %653 = load i8, ptr %652, align 1, !tbaa !140
  %654 = zext i8 %653 to i64
  %655 = mul i64 %651, -3523014627327384477
  %656 = add nuw nsw i64 %654, 10
  %657 = add i64 %656, %655
  %658 = getelementptr inbounds i8, ptr %636, i64 -28
  %659 = load i8, ptr %658, align 1, !tbaa !140
  %660 = zext i8 %659 to i64
  %661 = mul i64 %657, -3523014627327384477
  %662 = add nuw nsw i64 %660, 10
  %663 = add i64 %662, %661
  %664 = getelementptr inbounds i8, ptr %636, i64 -27
  %665 = load i8, ptr %664, align 1, !tbaa !140
  %666 = zext i8 %665 to i64
  %667 = mul i64 %663, -3523014627327384477
  %668 = add nuw nsw i64 %666, 10
  %669 = add i64 %668, %667
  %670 = getelementptr inbounds i8, ptr %636, i64 -26
  %671 = load i8, ptr %670, align 1, !tbaa !140
  %672 = zext i8 %671 to i64
  %673 = mul i64 %669, -3523014627327384477
  %674 = add nuw nsw i64 %672, 10
  %675 = add i64 %674, %673
  %676 = getelementptr inbounds i8, ptr %636, i64 -25
  %677 = load i8, ptr %676, align 1, !tbaa !140
  %678 = zext i8 %677 to i64
  %679 = mul i64 %675, -3523014627327384477
  %680 = add nuw nsw i64 %678, 10
  %681 = add i64 %680, %679
  %682 = getelementptr inbounds i8, ptr %636, i64 -24
  %683 = load i8, ptr %682, align 1, !tbaa !140
  %684 = zext i8 %683 to i64
  %685 = mul i64 %681, -3523014627327384477
  %686 = add nuw nsw i64 %684, 10
  %687 = add i64 %686, %685
  %688 = getelementptr inbounds i8, ptr %636, i64 -23
  %689 = load i8, ptr %688, align 1, !tbaa !140
  %690 = zext i8 %689 to i64
  %691 = mul i64 %687, -3523014627327384477
  %692 = add nuw nsw i64 %690, 10
  %693 = add i64 %692, %691
  %694 = getelementptr inbounds i8, ptr %636, i64 -22
  %695 = load i8, ptr %694, align 1, !tbaa !140
  %696 = zext i8 %695 to i64
  %697 = mul i64 %693, -3523014627327384477
  %698 = add nuw nsw i64 %696, 10
  %699 = add i64 %698, %697
  %700 = getelementptr inbounds i8, ptr %636, i64 -21
  %701 = load i8, ptr %700, align 1, !tbaa !140
  %702 = zext i8 %701 to i64
  %703 = mul i64 %699, -3523014627327384477
  %704 = add nuw nsw i64 %702, 10
  %705 = add i64 %704, %703
  %706 = getelementptr inbounds i8, ptr %636, i64 -20
  %707 = load i8, ptr %706, align 1, !tbaa !140
  %708 = zext i8 %707 to i64
  %709 = mul i64 %705, -3523014627327384477
  %710 = add nuw nsw i64 %708, 10
  %711 = add i64 %710, %709
  %712 = getelementptr inbounds i8, ptr %636, i64 -19
  %713 = load i8, ptr %712, align 1, !tbaa !140
  %714 = zext i8 %713 to i64
  %715 = mul i64 %711, -3523014627327384477
  %716 = add nuw nsw i64 %714, 10
  %717 = add i64 %716, %715
  %718 = getelementptr inbounds i8, ptr %636, i64 -18
  %719 = load i8, ptr %718, align 1, !tbaa !140
  %720 = zext i8 %719 to i64
  %721 = mul i64 %717, -3523014627327384477
  %722 = add nuw nsw i64 %720, 10
  %723 = add i64 %722, %721
  %724 = getelementptr inbounds i8, ptr %636, i64 -17
  %725 = load i8, ptr %724, align 1, !tbaa !140
  %726 = zext i8 %725 to i64
  %727 = mul i64 %723, -3523014627327384477
  %728 = add nuw nsw i64 %726, 10
  %729 = add i64 %728, %727
  %730 = getelementptr inbounds i8, ptr %636, i64 -16
  %731 = load i8, ptr %730, align 1, !tbaa !140
  %732 = zext i8 %731 to i64
  %733 = mul i64 %729, -3523014627327384477
  %734 = add nuw nsw i64 %732, 10
  %735 = add i64 %734, %733
  %736 = getelementptr inbounds i8, ptr %636, i64 -15
  %737 = load i8, ptr %736, align 1, !tbaa !140
  %738 = zext i8 %737 to i64
  %739 = mul i64 %735, -3523014627327384477
  %740 = add nuw nsw i64 %738, 10
  %741 = add i64 %740, %739
  %742 = getelementptr inbounds i8, ptr %636, i64 -14
  %743 = load i8, ptr %742, align 1, !tbaa !140
  %744 = zext i8 %743 to i64
  %745 = mul i64 %741, -3523014627327384477
  %746 = add nuw nsw i64 %744, 10
  %747 = add i64 %746, %745
  %748 = getelementptr inbounds i8, ptr %636, i64 -13
  %749 = load i8, ptr %748, align 1, !tbaa !140
  %750 = zext i8 %749 to i64
  %751 = mul i64 %747, -3523014627327384477
  %752 = add nuw nsw i64 %750, 10
  %753 = add i64 %752, %751
  %754 = getelementptr inbounds i8, ptr %636, i64 -12
  %755 = load i8, ptr %754, align 1, !tbaa !140
  %756 = zext i8 %755 to i64
  %757 = mul i64 %753, -3523014627327384477
  %758 = add nuw nsw i64 %756, 10
  %759 = add i64 %758, %757
  %760 = getelementptr inbounds i8, ptr %636, i64 -11
  %761 = load i8, ptr %760, align 1, !tbaa !140
  %762 = zext i8 %761 to i64
  %763 = mul i64 %759, -3523014627327384477
  %764 = add nuw nsw i64 %762, 10
  %765 = add i64 %764, %763
  %766 = getelementptr inbounds i8, ptr %636, i64 -10
  %767 = load i8, ptr %766, align 1, !tbaa !140
  %768 = zext i8 %767 to i64
  %769 = mul i64 %765, -3523014627327384477
  %770 = add nuw nsw i64 %768, 10
  %771 = add i64 %770, %769
  %772 = getelementptr inbounds i8, ptr %636, i64 -9
  %773 = load i8, ptr %772, align 1, !tbaa !140
  %774 = zext i8 %773 to i64
  %775 = mul i64 %771, -3523014627327384477
  %776 = add nuw nsw i64 %774, 10
  %777 = add i64 %776, %775
  %778 = getelementptr inbounds i8, ptr %636, i64 -8
  %779 = load i8, ptr %778, align 1, !tbaa !140
  %780 = zext i8 %779 to i64
  %781 = mul i64 %777, -3523014627327384477
  %782 = add nuw nsw i64 %780, 10
  %783 = add i64 %782, %781
  %784 = getelementptr inbounds i8, ptr %636, i64 -7
  %785 = load i8, ptr %784, align 1, !tbaa !140
  %786 = zext i8 %785 to i64
  %787 = mul i64 %783, -3523014627327384477
  %788 = add nuw nsw i64 %786, 10
  %789 = add i64 %788, %787
  %790 = getelementptr inbounds i8, ptr %636, i64 -6
  %791 = load i8, ptr %790, align 1, !tbaa !140
  %792 = zext i8 %791 to i64
  %793 = mul i64 %789, -3523014627327384477
  %794 = add nuw nsw i64 %792, 10
  %795 = add i64 %794, %793
  %796 = getelementptr inbounds i8, ptr %636, i64 -5
  %797 = load i8, ptr %796, align 1, !tbaa !140
  %798 = zext i8 %797 to i64
  %799 = mul i64 %795, -3523014627327384477
  %800 = add nuw nsw i64 %798, 10
  %801 = add i64 %800, %799
  %802 = getelementptr inbounds i8, ptr %636, i64 -4
  %803 = load i8, ptr %802, align 1, !tbaa !140
  %804 = zext i8 %803 to i64
  %805 = mul i64 %801, -3523014627327384477
  %806 = add nuw nsw i64 %804, 10
  %807 = add i64 %806, %805
  %808 = getelementptr inbounds i8, ptr %636, i64 -3
  %809 = load i8, ptr %808, align 1, !tbaa !140
  %810 = zext i8 %809 to i64
  %811 = mul i64 %807, -3523014627327384477
  %812 = add nuw nsw i64 %810, 10
  %813 = add i64 %812, %811
  %814 = getelementptr inbounds i8, ptr %636, i64 -2
  %815 = load i8, ptr %814, align 1, !tbaa !140
  %816 = zext i8 %815 to i64
  %817 = mul i64 %813, -3523014627327384477
  %818 = add nuw nsw i64 %816, 10
  %819 = add i64 %818, %817
  %820 = getelementptr inbounds i8, ptr %636, i64 -1
  %821 = load i8, ptr %820, align 1, !tbaa !140
  %822 = zext i8 %821 to i64
  %823 = mul i64 %819, -3523014627327384477
  %824 = add nuw nsw i64 %822, 10
  %825 = add i64 %824, %823
  %826 = and i64 %825, %185
  %827 = icmp eq i64 %826, %185
  br i1 %827, label %.loopexit68, label %.loopexit70

.loopexit71:                                      ; preds = %606, %.loopexit73
  %828 = phi i64 [ poison, %.loopexit73 ], [ %632, %606 ]
  %829 = phi i64 [ 0, %.loopexit73 ], [ %602, %606 ]
  %830 = phi i64 [ %598, %.loopexit73 ], [ %632, %606 ]
  %831 = icmp eq i64 %599, 0
  br i1 %831, label %.loopexit70, label %.preheader69

.preheader69:                                     ; preds = %.loopexit71, %.preheader69
  %832 = phi i64 [ %841, %.preheader69 ], [ %829, %.loopexit71 ]
  %833 = phi i64 [ %840, %.preheader69 ], [ %830, %.loopexit71 ]
  %834 = phi i64 [ %842, %.preheader69 ], [ 0, %.loopexit71 ]
  %835 = getelementptr inbounds nuw i8, ptr %181, i64 %832
  %836 = load i8, ptr %835, align 1, !tbaa !140
  %837 = zext i8 %836 to i64
  %838 = mul i64 %833, -3523014627327384477
  %839 = add i64 %838, 10
  %840 = add i64 %839, %837
  %841 = add nuw nsw i64 %832, 1
  %842 = add nuw nsw i64 %834, 1
  %843 = icmp eq i64 %842, %599
  br i1 %843, label %.loopexit70, label %.preheader69, !llvm.loop !144

.loopexit70:                                      ; preds = %.preheader69, %.loopexit71, %635, %207
  %844 = phi i64 [ %825, %635 ], [ %397, %207 ], [ %828, %.loopexit71 ], [ %840, %.preheader69 ]
  %845 = phi ptr [ %637, %635 ], [ %209, %207 ], [ %400, %.loopexit71 ], [ %400, %.preheader69 ]
  %846 = phi i64 [ 0, %635 ], [ %205, %207 ], [ %205, %.loopexit71 ], [ %205, %.preheader69 ]
  %847 = icmp ult i64 %846, %192
  br i1 %847, label %.preheader67, label %.thread

.preheader67:                                     ; preds = %.loopexit70, %868
  %848 = phi i64 [ %867, %868 ], [ %846, %.loopexit70 ]
  %849 = phi i64 [ %864, %868 ], [ %844, %.loopexit70 ]
  %850 = icmp ult i64 %848, 32
  %851 = getelementptr inbounds nuw i8, ptr %845, i64 %848
  %852 = getelementptr i8, ptr %181, i64 %848
  %853 = getelementptr i8, ptr %852, i64 -32
  %854 = select i1 %850, ptr %851, ptr %853
  %855 = load i8, ptr %854, align 1, !tbaa !140
  %856 = load i8, ptr %852, align 1, !tbaa !140
  %857 = zext i8 %856 to i64
  %858 = add nuw nsw i64 %857, 10
  %859 = zext i8 %855 to i64
  %860 = add nuw nsw i64 %859, 10
  %861 = mul i64 %860, %183
  %862 = sub i64 %849, %861
  %863 = mul i64 %862, -3523014627327384477
  %864 = add i64 %858, %863
  %865 = and i64 %864, %185
  %866 = icmp eq i64 %865, %185
  %867 = add nuw i64 %848, 1
  br i1 %866, label %.loopexit68, label %868

868:                                              ; preds = %.preheader67
  %869 = icmp eq i64 %867, %192
  br i1 %869, label %.thread, label %.preheader67, !llvm.loop !145

.loopexit68:                                      ; preds = %.preheader67, %635
  %870 = phi i64 [ 0, %635 ], [ %867, %.preheader67 ]
  %spec.select = tail call i32 @llvm.umax.i32(i32 %3, i32 1)
  br label %.thread

.thread:                                          ; preds = %868, %.loopexit68, %.loopexit70, %196, %176
  %871 = phi i64 [ %192, %.loopexit70 ], [ %870, %.loopexit68 ], [ %192, %176 ], [ %192, %196 ], [ %192, %868 ]
  %872 = phi i32 [ %3, %.loopexit70 ], [ %spec.select, %.loopexit68 ], [ %3, %176 ], [ %3, %196 ], [ %3, %868 ]
  %873 = getelementptr inbounds nuw i8, ptr %179, i64 %190
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %873, ptr align 1 %181, i64 %871, i1 false)
  %874 = load i64, ptr %17, align 8, !tbaa !136
  %875 = add i64 %874, %871
  store i64 %875, ptr %17, align 8, !tbaa !136
  %876 = load i64, ptr %189, align 8, !tbaa !76
  %877 = add i64 %876, %871
  store i64 %877, ptr %189, align 8, !tbaa !76
  %878 = icmp ne i64 %871, 0
  br label %879

879:                                              ; preds = %.thread, %170, %77, %14, %10
  %880 = phi i1 [ false, %10 ], [ %878, %.thread ], [ false, %170 ], [ false, %14 ], [ false, %77 ]
  %881 = phi i32 [ %3, %10 ], [ %872, %.thread ], [ %3, %170 ], [ %3, %14 ], [ %3, %77 ]
  %882 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %883 = load i64, ptr %882, align 8, !tbaa !136
  %884 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %885 = load i64, ptr %884, align 8, !tbaa !134
  %886 = icmp ult i64 %883, %885
  %887 = icmp eq i32 %881, 2
  %888 = and i1 %887, %886
  %889 = select i1 %888, i32 1, i32 %881
  %890 = load i32, ptr %11, align 8, !tbaa !81
  %891 = icmp eq i32 %890, 0
  %892 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %893 = load i64, ptr %892, align 8, !tbaa !76
  br i1 %891, label %894, label %907

894:                                              ; preds = %879
  %895 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %896 = load i64, ptr %895, align 8, !tbaa !106
  %897 = icmp ult i64 %893, %896
  br i1 %897, label %898, label %907

898:                                              ; preds = %894
  %899 = icmp eq i32 %889, 0
  %900 = icmp eq i64 %893, 0
  %901 = or i1 %900, %899
  br i1 %901, label %902, label %907

902:                                              ; preds = %898
  %903 = icmp eq i32 %889, 2
  br i1 %903, label %904, label %1064

904:                                              ; preds = %902
  %905 = load i32, ptr %5, align 4, !tbaa !133
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %907, label %1064

907:                                              ; preds = %904, %898, %894, %879
  %908 = getelementptr inbounds nuw i8, ptr %0, i64 2872
  %909 = load i32, ptr %908, align 8, !tbaa !78
  %910 = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %911 = load i32, ptr %910, align 8, !tbaa !42
  %912 = and i32 %911, %909
  %913 = icmp eq i32 %889, 2
  %914 = zext i1 %913 to i32
  %915 = getelementptr inbounds nuw i8, ptr %0, i64 2868
  %916 = load i32, ptr %915, align 4, !tbaa !82
  %917 = add i32 %916, %911
  %918 = icmp ugt i32 %909, %917
  br i1 %918, label %1064, label %919

919:                                              ; preds = %907
  br i1 %891, label %924, label %920

920:                                              ; preds = %919
  %921 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %922 = load ptr, ptr %921, align 8, !tbaa !31
  %923 = zext i32 %912 to i64
  br label %1052

924:                                              ; preds = %919
  %925 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %926 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %927 = load ptr, ptr %926, align 8, !tbaa !137
  %928 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %929 = load ptr, ptr %928, align 8, !tbaa !31
  %930 = zext i32 %912 to i64
  %.split = getelementptr inbounds nuw [376 x i8], ptr %929, i64 %930
  %931 = getelementptr inbounds nuw i8, ptr %.split, i64 88
  store ptr %927, ptr %931, align 8, !tbaa !146
  %932 = getelementptr inbounds nuw i8, ptr %.split, i64 96
  store i64 %893, ptr %932, align 8, !tbaa !86
  %933 = getelementptr inbounds nuw i8, ptr %.split, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %933, ptr noundef nonnull align 8 dereferenceable(16) %925, i64 16, i1 false), !tbaa.struct !147
  %934 = load ptr, ptr %928, align 8, !tbaa !31
  %935 = getelementptr inbounds nuw [376 x i8], ptr %934, i64 %930
  %936 = getelementptr inbounds nuw i8, ptr %935, i64 120
  %937 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %935, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %936, ptr noundef nonnull align 8 dereferenceable(224) %937, i64 224, i1 false), !tbaa.struct !96
  %938 = load i32, ptr %908, align 8, !tbaa !78
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %940, label %943

940:                                              ; preds = %924
  %941 = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %942 = load ptr, ptr %941, align 8, !tbaa !98
  br label %943

943:                                              ; preds = %940, %924
  %944 = phi ptr [ %942, %940 ], [ null, %924 ]
  %945 = load ptr, ptr %928, align 8, !tbaa !31
  %.split45 = getelementptr inbounds nuw [376 x i8], ptr %945, i64 %930
  %946 = getelementptr inbounds nuw i8, ptr %.split45, i64 344
  store ptr %944, ptr %946, align 8, !tbaa !148
  %947 = getelementptr inbounds nuw i8, ptr %0, i64 2888
  %948 = load i64, ptr %947, align 8, !tbaa !97
  %949 = getelementptr inbounds nuw i8, ptr %.split45, i64 352
  store i64 %948, ptr %949, align 8, !tbaa !149
  %950 = getelementptr inbounds nuw i8, ptr %.split45, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %950, i8 0, i64 16, i1 false)
  %951 = load ptr, ptr %928, align 8, !tbaa !31
  %.split48 = getelementptr inbounds nuw [376 x i8], ptr %951, i64 %930
  %952 = getelementptr inbounds nuw i8, ptr %.split48, i64 24
  %953 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %954 = load <2 x ptr>, ptr %953, align 8, !tbaa !40
  %955 = shufflevector <2 x ptr> %954, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %955, ptr %952, align 8, !tbaa !40
  %956 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %957 = load ptr, ptr %956, align 8, !tbaa !54
  %958 = getelementptr inbounds nuw i8, ptr %.split48, i64 40
  store ptr %957, ptr %958, align 8, !tbaa !150
  %959 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %960 = getelementptr inbounds nuw i8, ptr %.split48, i64 48
  store ptr %959, ptr %960, align 8, !tbaa !151
  %961 = load i32, ptr %908, align 8, !tbaa !78
  %962 = getelementptr inbounds nuw i8, ptr %.split48, i64 104
  store i32 %961, ptr %962, align 8, !tbaa !152
  %963 = icmp eq i32 %961, 0
  %964 = zext i1 %963 to i32
  %965 = getelementptr inbounds nuw i8, ptr %.split48, i64 108
  store i32 %964, ptr %965, align 4, !tbaa !153
  %966 = getelementptr inbounds nuw i8, ptr %.split48, i64 112
  store i32 %914, ptr %966, align 8, !tbaa !154
  %967 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %968 = load i32, ptr %967, align 4, !tbaa !155
  %969 = icmp ne i32 %968, 0
  %970 = and i1 %913, %969
  %971 = icmp ne i32 %961, 0
  %972 = select i1 %970, i1 %971, i1 false
  %973 = zext i1 %972 to i32
  %974 = getelementptr inbounds nuw i8, ptr %.split48, i64 368
  store i32 %973, ptr %974, align 8, !tbaa !156
  %975 = getelementptr inbounds nuw i8, ptr %.split48, i64 360
  store i64 0, ptr %975, align 8, !tbaa !85
  %976 = getelementptr inbounds nuw i8, ptr %0, i64 344
  %977 = load i64, ptr %976, align 8, !tbaa !113
  %978 = add i64 %977, %893
  store i64 %978, ptr %976, align 8, !tbaa !113
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %926, i8 0, i64 24, i1 false)
  br i1 %913, label %979, label %980

979:                                              ; preds = %943
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %925, i8 0, i64 16, i1 false)
  store i32 %914, ptr %5, align 4, !tbaa !133
  br i1 %963, label %990, label %991

980:                                              ; preds = %943
  %981 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %982 = load i64, ptr %981, align 8, !tbaa !105
  %983 = tail call i64 @llvm.umin.i64(i64 %893, i64 %982)
  %984 = getelementptr inbounds nuw i8, ptr %927, i64 %893
  %985 = sub i64 0, %983
  %986 = getelementptr inbounds i8, ptr %984, i64 %985
  store ptr %986, ptr %925, align 8, !tbaa !114
  %987 = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %983, ptr %987, align 8, !tbaa !115
  %988 = icmp ne i64 %893, 0
  %989 = select i1 %988, i1 true, i1 %963
  br i1 %989, label %1052, label %993

990:                                              ; preds = %979
  store i32 0, ptr %967, align 4, !tbaa !155
  br label %1052

991:                                              ; preds = %979
  %992 = icmp eq i64 %893, 0
  br i1 %992, label %993, label %1052

993:                                              ; preds = %991, %980
  %994 = getelementptr inbounds nuw i8, ptr %.split48, i64 56
  %995 = getelementptr inbounds nuw i8, ptr %.split48, i64 32
  %996 = load ptr, ptr %995, align 8, !tbaa !157
  %997 = getelementptr inbounds nuw i8, ptr %996, i64 8
  %998 = load i64, ptr %997, align 8, !tbaa !111
  %999 = getelementptr inbounds nuw i8, ptr %996, i64 20
  %1000 = load i32, ptr %999, align 4, !tbaa !35
  %1001 = icmp eq i32 %1000, 0
  br i1 %1001, label %1025, label %1002

1002:                                             ; preds = %993
  %1003 = getelementptr inbounds nuw i8, ptr %996, i64 48
  %1004 = load ptr, ptr %1003, align 8, !tbaa !39
  %1005 = add i32 %1000, -1
  store i32 %1005, ptr %999, align 4, !tbaa !35
  %1006 = zext i32 %1005 to i64
  %1007 = getelementptr inbounds nuw [16 x i8], ptr %1004, i64 %1006
  %1008 = load ptr, ptr %1007, align 8, !tbaa !40
  %1009 = getelementptr inbounds nuw i8, ptr %1007, i64 8
  %1010 = load i64, ptr %1009, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1007, i8 0, i64 16, i1 false)
  %1011 = icmp ult i64 %1010, %998
  %1012 = lshr i64 %1010, 3
  %1013 = icmp ugt i64 %1012, %998
  %1014 = or i1 %1011, %1013
  br i1 %1014, label %1015, label %1039

1015:                                             ; preds = %1002
  %1016 = getelementptr i8, ptr %996, i64 32
  %1017 = load ptr, ptr %1016, align 8
  %1018 = getelementptr i8, ptr %996, i64 40
  %1019 = load ptr, ptr %1018, align 8
  %1020 = icmp eq ptr %1008, null
  br i1 %1020, label %1025, label %1021

1021:                                             ; preds = %1015
  %1022 = icmp eq ptr %1017, null
  br i1 %1022, label %1024, label %1023

1023:                                             ; preds = %1021
  tail call void %1017(ptr noundef %1019, ptr noundef nonnull %1008) #17
  br label %1025

1024:                                             ; preds = %1021
  tail call void @free(ptr noundef nonnull %1008) #17
  br label %1025

1025:                                             ; preds = %1024, %1023, %1015, %993
  %1026 = getelementptr inbounds nuw i8, ptr %996, i64 24
  %1027 = load ptr, ptr %1026, align 8, !tbaa !91
  %1028 = icmp eq ptr %1027, null
  br i1 %1028, label %1033, label %1029

1029:                                             ; preds = %1025
  %1030 = getelementptr i8, ptr %996, i64 40
  %1031 = load ptr, ptr %1030, align 8
  %1032 = tail call ptr %1027(ptr noundef %1031, i64 noundef %998) #17
  br label %1035

1033:                                             ; preds = %1025
  %1034 = tail call noalias ptr @malloc(i64 noundef %998) #20
  br label %1035

1035:                                             ; preds = %1033, %1029
  %1036 = phi ptr [ %1032, %1029 ], [ %1034, %1033 ]
  %1037 = icmp eq ptr %1036, null
  %1038 = select i1 %1037, i64 0, i64 %998
  br label %1039

1039:                                             ; preds = %1035, %1002
  %1040 = phi ptr [ %1036, %1035 ], [ %1008, %1002 ]
  %1041 = phi i64 [ %1038, %1035 ], [ %1010, %1002 ]
  store ptr %1040, ptr %994, align 8, !tbaa !40
  %1042 = getelementptr inbounds nuw i8, ptr %.split48, i64 64
  store i64 %1041, ptr %1042, align 8, !tbaa !41
  %1043 = icmp eq ptr %1040, null
  br i1 %1043, label %1047, label %1044

1044:                                             ; preds = %1039
  %1045 = getelementptr inbounds nuw i8, ptr %.split48, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1045, i8 0, i64 16, i1 false)
  %1046 = tail call i64 @ZSTD_writeLastEmptyBlock(ptr noundef nonnull %1040, i64 noundef %1041) #17
  br label %1047

1047:                                             ; preds = %1044, %1039
  %1048 = phi i64 [ %1046, %1044 ], [ -64, %1039 ]
  %1049 = getelementptr inbounds nuw i8, ptr %.split48, i64 8
  store i64 %1048, ptr %1049, align 8, !tbaa !83
  %1050 = load i32, ptr %908, align 8, !tbaa !78
  %1051 = add i32 %1050, 1
  store i32 %1051, ptr %908, align 8, !tbaa !78
  br label %1064

1052:                                             ; preds = %991, %990, %980, %920
  %1053 = phi i64 [ %923, %920 ], [ %930, %980 ], [ %930, %990 ], [ %930, %991 ]
  %1054 = phi ptr [ %922, %920 ], [ %951, %980 ], [ %951, %990 ], [ %951, %991 ]
  %1055 = load ptr, ptr %0, align 8, !tbaa !5
  %1056 = getelementptr inbounds nuw [376 x i8], ptr %1054, i64 %1053
  %1057 = tail call i32 @POOL_tryAdd(ptr noundef %1055, ptr noundef nonnull @ZSTDMT_compressionJob, ptr noundef %1056) #17
  %1058 = icmp eq i32 %1057, 0
  br i1 %1058, label %1062, label %1059

1059:                                             ; preds = %1052
  %1060 = load i32, ptr %908, align 8, !tbaa !78
  %1061 = add i32 %1060, 1
  store i32 %1061, ptr %908, align 8, !tbaa !78
  br label %1062

1062:                                             ; preds = %1059, %1052
  %1063 = phi i32 [ 0, %1059 ], [ 1, %1052 ]
  store i32 %1063, ptr %11, align 8, !tbaa !81
  br label %1064

1064:                                             ; preds = %1062, %1047, %907, %904, %902
  %1065 = getelementptr inbounds nuw i8, ptr %0, i64 2868
  %1066 = load i32, ptr %1065, align 4, !tbaa !82
  %1067 = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %1068 = load i32, ptr %1067, align 8, !tbaa !42
  %1069 = and i32 %1068, %1066
  %1070 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1071 = zext i32 %1069 to i64
  br i1 %880, label %1072, label %1074

1072:                                             ; preds = %1064
  %1073 = load ptr, ptr %1070, align 8, !tbaa !31
  br label %1091

1074:                                             ; preds = %1064
  %1075 = getelementptr inbounds nuw i8, ptr %0, i64 2872
  %1076 = load i32, ptr %1075, align 8, !tbaa !78
  %1077 = icmp ult i32 %1066, %1076
  %1078 = load ptr, ptr %1070, align 8, !tbaa !31
  br i1 %1077, label %1079, label %1091

1079:                                             ; preds = %1074
  %1080 = getelementptr inbounds nuw [376 x i8], ptr %1078, i64 %1071
  %1081 = getelementptr inbounds nuw i8, ptr %1080, i64 360
  %1082 = load i64, ptr %1081, align 8, !tbaa !85
  %1083 = getelementptr inbounds nuw i8, ptr %1080, i64 8
  %1084 = load i64, ptr %1083, align 8, !tbaa !83
  %1085 = icmp eq i64 %1082, %1084
  br i1 %1085, label %1086, label %1091

1086:                                             ; preds = %1079
  %1087 = getelementptr inbounds nuw i8, ptr %1080, i64 96
  %1088 = load i64, ptr %1080, align 8, !tbaa !87
  %1089 = load i64, ptr %1087, align 8, !tbaa !86
  %1090 = icmp eq i64 %1088, %1089
  br i1 %1090, label %1091, label %.preheader66, !llvm.loop !158

.preheader66:                                     ; preds = %1086, %.preheader66
  br label %.preheader66

1091:                                             ; preds = %1086, %1079, %1074, %1072
  %1092 = phi ptr [ %1073, %1072 ], [ %1078, %1079 ], [ %1078, %1086 ], [ %1078, %1074 ]
  %1093 = getelementptr inbounds nuw [376 x i8], ptr %1092, i64 %1071
  %1094 = getelementptr inbounds nuw i8, ptr %1093, i64 8
  %1095 = load i64, ptr %1094, align 8, !tbaa !83
  %1096 = load i64, ptr %1093, align 8, !tbaa !87
  %1097 = getelementptr inbounds nuw i8, ptr %1093, i64 96
  %1098 = load i64, ptr %1097, align 8, !tbaa !86
  %1099 = icmp ult i64 %1095, -119
  br i1 %1099, label %1161, label %1100

1100:                                             ; preds = %1091
  %1101 = getelementptr inbounds nuw i8, ptr %0, i64 2872
  %1102 = load i32, ptr %1101, align 8, !tbaa !78
  %1103 = icmp ult i32 %1066, %1102
  br i1 %1103, label %.preheader65, label %.loopexit

.preheader65:                                     ; preds = %1100, %1112
  %1104 = phi i32 [ %1113, %1112 ], [ %1066, %1100 ]
  %1105 = and i32 %1104, %1068
  %1106 = zext i32 %1105 to i64
  %1107 = getelementptr inbounds nuw [376 x i8], ptr %1092, i64 %1106
  %1108 = load i64, ptr %1107, align 8, !tbaa !87
  %1109 = getelementptr inbounds nuw i8, ptr %1107, i64 96
  %1110 = load i64, ptr %1109, align 8, !tbaa !86
  %1111 = icmp ult i64 %1108, %1110
  br i1 %1111, label %.preheader, label %1112, !llvm.loop !94

.preheader:                                       ; preds = %.preheader65, %.preheader
  br label %.preheader

1112:                                             ; preds = %.preheader65
  %1113 = add nuw i32 %1104, 1
  store i32 %1113, ptr %1065, align 4, !tbaa !82
  %1114 = icmp eq i32 %1113, %1102
  br i1 %1114, label %.loopexit, label %.preheader65, !llvm.loop !95

.loopexit:                                        ; preds = %1112, %1100
  %1115 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %1116

1116:                                             ; preds = %1150, %.loopexit
  %1117 = phi ptr [ %1092, %.loopexit ], [ %1153, %1150 ]
  %1118 = phi i32 [ 0, %.loopexit ], [ %1155, %1150 ]
  %1119 = zext i32 %1118 to i64
  %1120 = getelementptr inbounds nuw [376 x i8], ptr %1117, i64 %1119
  %1121 = getelementptr inbounds nuw i8, ptr %1120, i64 16
  %1122 = load <2 x i32>, ptr %1121, align 8, !tbaa !33
  %1123 = load ptr, ptr %1115, align 8, !tbaa !34
  %1124 = getelementptr inbounds nuw i8, ptr %1120, i64 56
  %1125 = load ptr, ptr %1124, align 8
  %1126 = getelementptr inbounds nuw i8, ptr %1120, i64 64
  %1127 = load i64, ptr %1126, align 8
  %1128 = icmp eq ptr %1125, null
  br i1 %1128, label %1150, label %1129

1129:                                             ; preds = %1116
  %1130 = getelementptr inbounds nuw i8, ptr %1123, i64 20
  %1131 = load i32, ptr %1130, align 4, !tbaa !35
  %1132 = getelementptr inbounds nuw i8, ptr %1123, i64 16
  %1133 = load i32, ptr %1132, align 8, !tbaa !38
  %1134 = icmp ult i32 %1131, %1133
  br i1 %1134, label %1135, label %1142

1135:                                             ; preds = %1129
  %1136 = getelementptr inbounds nuw i8, ptr %1123, i64 48
  %1137 = load ptr, ptr %1136, align 8, !tbaa !39
  %1138 = add nuw i32 %1131, 1
  store i32 %1138, ptr %1130, align 4, !tbaa !35
  %1139 = zext i32 %1131 to i64
  %1140 = getelementptr inbounds nuw [16 x i8], ptr %1137, i64 %1139
  store ptr %1125, ptr %1140, align 8, !tbaa !40
  %1141 = getelementptr inbounds nuw i8, ptr %1140, i64 8
  store i64 %1127, ptr %1141, align 8, !tbaa !41
  br label %1150

1142:                                             ; preds = %1129
  %1143 = getelementptr i8, ptr %1123, i64 32
  %1144 = load ptr, ptr %1143, align 8
  %1145 = icmp eq ptr %1144, null
  br i1 %1145, label %1149, label %1146

1146:                                             ; preds = %1142
  %1147 = getelementptr i8, ptr %1123, i64 40
  %1148 = load ptr, ptr %1147, align 8
  tail call void %1144(ptr noundef %1148, ptr noundef nonnull %1125) #17
  br label %1150

1149:                                             ; preds = %1142
  tail call void @free(ptr noundef nonnull %1125) #17
  br label %1150

1150:                                             ; preds = %1149, %1146, %1135, %1116
  %1151 = load ptr, ptr %1070, align 8, !tbaa !31
  %1152 = getelementptr inbounds nuw [376 x i8], ptr %1151, i64 %1119
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %1152, i8 0, i64 376, i1 false)
  %1153 = load ptr, ptr %1070, align 8, !tbaa !31
  %.split56 = getelementptr inbounds nuw [376 x i8], ptr %1153, i64 %1119
  %1154 = getelementptr inbounds nuw i8, ptr %.split56, i64 16
  store <2 x i32> %1122, ptr %1154, align 8, !tbaa !33
  %1155 = add i32 %1118, 1
  %1156 = load i32, ptr %1067, align 8, !tbaa !42
  %1157 = icmp ugt i32 %1155, %1156
  br i1 %1157, label %1158, label %1116, !llvm.loop !43

1158:                                             ; preds = %1150
  %1159 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %1160 = getelementptr inbounds nuw i8, ptr %0, i64 2880
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1159, i8 0, i64 24, i1 false)
  store i32 1, ptr %1160, align 8, !tbaa !32
  br label %1277

1161:                                             ; preds = %1091
  %1162 = icmp eq i64 %1096, %1098
  br i1 %1162, label %1163, label %1175

1163:                                             ; preds = %1161
  %1164 = getelementptr inbounds nuw i8, ptr %1093, i64 368
  %1165 = load i32, ptr %1164, align 8, !tbaa !156
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1175, label %1167

1167:                                             ; preds = %1163
  %1168 = getelementptr inbounds nuw i8, ptr %0, i64 2696
  %1169 = tail call i64 @ZSTD_XXH64_digest(ptr noundef nonnull captures(none) %1168) #21
  %1170 = trunc i64 %1169 to i32
  %1171 = getelementptr inbounds nuw i8, ptr %1093, i64 56
  %1172 = load ptr, ptr %1171, align 8, !tbaa !159
  %1173 = getelementptr inbounds nuw i8, ptr %1172, i64 %1095
  store i32 %1170, ptr %1173, align 1, !tbaa !33
  %1174 = add nuw i64 %1095, 4
  store i64 %1174, ptr %1094, align 8, !tbaa !83
  store i32 0, ptr %1164, align 8, !tbaa !156
  br label %1177

1175:                                             ; preds = %1163, %1161
  %1176 = icmp eq i64 %1095, 0
  br i1 %1176, label %1257, label %1177

1177:                                             ; preds = %1175, %1167
  %1178 = phi i64 [ %1174, %1167 ], [ %1095, %1175 ]
  %1179 = getelementptr inbounds nuw i8, ptr %1093, i64 360
  %1180 = load i64, ptr %1179, align 8, !tbaa !85
  %1181 = sub i64 %1178, %1180
  %1182 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %1183 = load i64, ptr %1182, align 8, !tbaa !160
  %1184 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %1185 = load i64, ptr %1184, align 8, !tbaa !162
  %1186 = sub i64 %1183, %1185
  %1187 = tail call i64 @llvm.umin.i64(i64 %1181, i64 %1186)
  %1188 = icmp eq i64 %1187, 0
  br i1 %1188, label %1199, label %1189

1189:                                             ; preds = %1177
  %1190 = load ptr, ptr %1, align 8, !tbaa !163
  %1191 = getelementptr inbounds nuw i8, ptr %1190, i64 %1185
  %1192 = getelementptr inbounds nuw i8, ptr %1093, i64 56
  %1193 = load ptr, ptr %1192, align 8, !tbaa !159
  %1194 = getelementptr inbounds nuw i8, ptr %1193, i64 %1180
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1191, ptr align 1 %1194, i64 %1187, i1 false)
  %1195 = load i64, ptr %1184, align 8, !tbaa !162
  %1196 = load ptr, ptr %1070, align 8, !tbaa !31
  %.split60 = getelementptr inbounds nuw [376 x i8], ptr %1196, i64 %1071
  %1197 = getelementptr inbounds nuw i8, ptr %.split60, i64 360
  %1198 = load i64, ptr %1197, align 8, !tbaa !85
  br label %1199

1199:                                             ; preds = %1189, %1177
  %1200 = phi i64 [ %1198, %1189 ], [ %1180, %1177 ]
  %1201 = phi ptr [ %1196, %1189 ], [ %1092, %1177 ]
  %1202 = phi i64 [ %1195, %1189 ], [ %1185, %1177 ]
  %1203 = add i64 %1202, %1187
  store i64 %1203, ptr %1184, align 8, !tbaa !162
  %.split61 = getelementptr inbounds nuw [376 x i8], ptr %1201, i64 %1071
  %1204 = getelementptr inbounds nuw i8, ptr %.split61, i64 360
  %1205 = add i64 %1200, %1187
  store i64 %1205, ptr %1204, align 8, !tbaa !85
  %1206 = icmp eq i64 %1205, %1178
  %1207 = select i1 %1162, i1 %1206, i1 false
  br i1 %1207, label %1208, label %1252

1208:                                             ; preds = %1199
  %1209 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1210 = load ptr, ptr %1209, align 8, !tbaa !34
  %1211 = getelementptr inbounds nuw i8, ptr %.split61, i64 56
  %1212 = load ptr, ptr %1211, align 8
  %1213 = getelementptr inbounds nuw i8, ptr %.split61, i64 64
  %1214 = load i64, ptr %1213, align 8
  %1215 = icmp eq ptr %1212, null
  br i1 %1215, label %1237, label %1216

1216:                                             ; preds = %1208
  %1217 = getelementptr inbounds nuw i8, ptr %1210, i64 20
  %1218 = load i32, ptr %1217, align 4, !tbaa !35
  %1219 = getelementptr inbounds nuw i8, ptr %1210, i64 16
  %1220 = load i32, ptr %1219, align 8, !tbaa !38
  %1221 = icmp ult i32 %1218, %1220
  br i1 %1221, label %1222, label %1229

1222:                                             ; preds = %1216
  %1223 = getelementptr inbounds nuw i8, ptr %1210, i64 48
  %1224 = load ptr, ptr %1223, align 8, !tbaa !39
  %1225 = add nuw i32 %1218, 1
  store i32 %1225, ptr %1217, align 4, !tbaa !35
  %1226 = zext i32 %1218 to i64
  %1227 = getelementptr inbounds nuw [16 x i8], ptr %1224, i64 %1226
  store ptr %1212, ptr %1227, align 8, !tbaa !40
  %1228 = getelementptr inbounds nuw i8, ptr %1227, i64 8
  store i64 %1214, ptr %1228, align 8, !tbaa !41
  br label %1237

1229:                                             ; preds = %1216
  %1230 = getelementptr i8, ptr %1210, i64 32
  %1231 = load ptr, ptr %1230, align 8
  %1232 = icmp eq ptr %1231, null
  br i1 %1232, label %1236, label %1233

1233:                                             ; preds = %1229
  %1234 = getelementptr i8, ptr %1210, i64 40
  %1235 = load ptr, ptr %1234, align 8
  tail call void %1231(ptr noundef %1235, ptr noundef nonnull %1212) #17
  br label %1237

1236:                                             ; preds = %1229
  tail call void @free(ptr noundef nonnull %1212) #17
  br label %1237

1237:                                             ; preds = %1236, %1233, %1222, %1208
  %1238 = load ptr, ptr %1070, align 8, !tbaa !31
  %.split62 = getelementptr inbounds nuw [376 x i8], ptr %1238, i64 %1071
  %1239 = getelementptr inbounds nuw i8, ptr %.split62, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1239, i8 0, i64 16, i1 false)
  %1240 = load ptr, ptr %1070, align 8, !tbaa !31
  %.split63 = getelementptr inbounds nuw [376 x i8], ptr %1240, i64 %1071
  %1241 = getelementptr inbounds nuw i8, ptr %.split63, i64 8
  store i64 0, ptr %1241, align 8, !tbaa !83
  %1242 = getelementptr inbounds nuw i8, ptr %0, i64 2896
  %1243 = load i64, ptr %1242, align 8, !tbaa !75
  %1244 = add i64 %1243, %1096
  store i64 %1244, ptr %1242, align 8, !tbaa !75
  %1245 = getelementptr inbounds nuw i8, ptr %0, i64 2904
  %1246 = load i64, ptr %1245, align 8, !tbaa !77
  %1247 = add i64 %1246, %1178
  store i64 %1247, ptr %1245, align 8, !tbaa !77
  %1248 = load i32, ptr %1065, align 4, !tbaa !82
  %1249 = add i32 %1248, 1
  store i32 %1249, ptr %1065, align 4, !tbaa !82
  %1250 = getelementptr inbounds nuw i8, ptr %.split63, i64 360
  %1251 = load i64, ptr %1250, align 8, !tbaa !85
  br label %1252

1252:                                             ; preds = %1237, %1199
  %1253 = phi i64 [ %1205, %1199 ], [ %1251, %1237 ]
  %1254 = icmp ugt i64 %1178, %1253
  br i1 %1254, label %1255, label %1257

1255:                                             ; preds = %1252
  %1256 = sub nuw i64 %1178, %1253
  br label %1277

1257:                                             ; preds = %1252, %1175
  %1258 = icmp ugt i64 %1098, %1096
  br i1 %1258, label %1277, label %1259

1259:                                             ; preds = %1257
  %1260 = load i32, ptr %1065, align 4, !tbaa !82
  %1261 = getelementptr inbounds nuw i8, ptr %0, i64 2872
  %1262 = load i32, ptr %1261, align 8, !tbaa !78
  %1263 = icmp ult i32 %1260, %1262
  br i1 %1263, label %1277, label %1264

1264:                                             ; preds = %1259
  %1265 = load i32, ptr %11, align 8, !tbaa !81
  %1266 = icmp eq i32 %1265, 0
  br i1 %1266, label %1267, label %1277

1267:                                             ; preds = %1264
  %1268 = load i64, ptr %892, align 8, !tbaa !76
  %1269 = icmp eq i64 %1268, 0
  br i1 %1269, label %1270, label %1277

1270:                                             ; preds = %1267
  %1271 = load i32, ptr %5, align 4, !tbaa !133
  %1272 = getelementptr inbounds nuw i8, ptr %0, i64 2880
  store i32 %1271, ptr %1272, align 8, !tbaa !32
  %1273 = icmp eq i32 %889, 2
  br i1 %1273, label %1274, label %1277

1274:                                             ; preds = %1270
  %1275 = icmp eq i32 %1271, 0
  %1276 = zext i1 %1275 to i64
  br label %1277

1277:                                             ; preds = %1274, %1270, %1267, %1264, %1259, %1257, %1255, %1158
  %1278 = phi i64 [ %1276, %1274 ], [ 1, %1257 ], [ 1, %1259 ], [ 1, %1264 ], [ 1, %1267 ], [ 0, %1270 ], [ %1256, %1255 ], [ %1095, %1158 ]
  %1279 = load i64, ptr %882, align 8, !tbaa !136
  %1280 = load i64, ptr %884, align 8, !tbaa !134
  %1281 = icmp ult i64 %1279, %1280
  %1282 = tail call i64 @llvm.umax.i64(i64 %1278, i64 1)
  %1283 = select i1 %1281, i64 %1282, i64 %1278
  br label %1284

1284:                                             ; preds = %1277, %4
  %1285 = phi i64 [ %1283, %1277 ], [ -60, %4 ]
  ret i64 %1285
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare i64 @ZSTD_freeCCtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

declare i64 @ZSTD_sizeof_CCtx(ptr noundef) local_unnamed_addr #2

declare i32 @POOL_resize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ZSTDMT_expandBufferPool(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %47, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load i32, ptr %5, align 8, !tbaa !38
  %7 = icmp ult i32 %6, %1
  br i1 %7, label %8, label %47

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %10 = load <2 x ptr>, ptr %9, align 8
  %11 = extractelement <2 x ptr> %10, i64 0
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !111
  tail call fastcc void @ZSTDMT_freeBufferPool(ptr noundef nonnull %0)
  %16 = icmp eq ptr %11, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %8
  %18 = tail call ptr %11(ptr noundef %13, i64 noundef 56) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %23

20:                                               ; preds = %8
  %21 = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %32

23:                                               ; preds = %17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %18, i8 0, i64 56, i1 false)
  %24 = zext i32 %1 to i64
  %25 = shl nuw nsw i64 %24, 4
  %26 = tail call ptr %11(ptr noundef %13, i64 noundef range(i64 -17179869184, 1614907702921) %25) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store ptr null, ptr %29, align 8, !tbaa !39
  br label %38

30:                                               ; preds = %23
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %26, i8 0, i64 range(i64 -17179869184, 1614907702921) %25, i1 false)
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store ptr %26, ptr %31, align 8, !tbaa !39
  br label %40

32:                                               ; preds = %20
  %33 = zext i32 %1 to i64
  %34 = shl nuw nsw i64 %33, 4
  %35 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef range(i64 -17179869184, 1614907702921) %34) #18
  %36 = getelementptr inbounds nuw i8, ptr %21, i64 48
  store ptr %35, ptr %36, align 8, !tbaa !39
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32, %28
  %39 = phi ptr [ %18, %28 ], [ %21, %32 ]
  tail call fastcc void @ZSTDMT_freeBufferPool(ptr noundef nonnull %39)
  br label %47

40:                                               ; preds = %32, %30
  %41 = phi ptr [ %18, %30 ], [ %21, %32 ]
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 16
  store i32 %1, ptr %43, align 8, !tbaa !38
  %44 = getelementptr inbounds nuw i8, ptr %41, i64 20
  store i32 0, ptr %44, align 4, !tbaa !35
  %45 = getelementptr inbounds nuw i8, ptr %41, i64 24
  store <2 x ptr> %10, ptr %45, align 8, !tbaa !40
  %46 = getelementptr inbounds nuw i8, ptr %41, i64 40
  store ptr %13, ptr %46, align 8, !tbaa !40
  store i64 %15, ptr %42, align 8, !tbaa !111
  br label %47

47:                                               ; preds = %40, %38, %20, %17, %4, %2
  %48 = phi ptr [ null, %2 ], [ %0, %4 ], [ %41, %40 ], [ null, %38 ], [ null, %20 ], [ null, %17 ]
  ret ptr %48
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

declare ptr @ZSTD_createCCtx_advanced(ptr noundef byval(%struct.ZSTD_customMem) align 8) local_unnamed_addr #2

declare i64 @ZSTD_CCtxParams_setParameter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #6

declare i32 @ZSTD_cycleLog(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

declare void @ZSTD_ldm_adjustParameters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ZSTD_XXH64_reset(ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

declare i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef byval(%struct.ldmParams_t) align 8, i64 noundef) local_unnamed_addr #2

declare void @ZSTD_ldm_fillHashTable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare i32 @POOL_tryAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ZSTDMT_compressionJob(ptr noundef captures(none) %0) #1 {
  %2 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %3 = alloca %struct.RawSeqStore_t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %2, ptr noundef nonnull align 8 dereferenceable(224) %4, i64 224, i1 false), !tbaa.struct !96
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !164
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !92
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %8, i32 -1)
  %12 = extractvalue { i32, i1 } %11, 1, !nosanitize !101
  br i1 %12, label %13, label %14, !prof !102, !nosanitize !101

13:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !101
  unreachable, !nosanitize !101

14:                                               ; preds = %10
  %15 = extractvalue { i32, i1 } %11, 0, !nosanitize !101
  store i32 %15, ptr %7, align 8, !tbaa !92
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds [8 x i8], ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  br label %24

21:                                               ; preds = %1
  %22 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %23 = tail call ptr @ZSTD_createCCtx_advanced(ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %22) #17
  br label %24

24:                                               ; preds = %21, %14
  %25 = phi ptr [ %20, %14 ], [ %23, %21 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %27 = load ptr, ptr %26, align 8, !tbaa !150
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %29 = load i64, ptr %28, align 8, !tbaa !111, !noalias !165
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false), !alias.scope !165
  br label %80

32:                                               ; preds = %24
  %33 = getelementptr inbounds nuw i8, ptr %27, i64 20
  %34 = load i32, ptr %33, align 4, !tbaa !35, !noalias !165
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw i8, ptr %27, i64 48
  %38 = load ptr, ptr %37, align 8, !tbaa !39, !noalias !165
  %39 = add i32 %34, -1
  store i32 %39, ptr %33, align 4, !tbaa !35, !noalias !165
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds nuw [16 x i8], ptr %38, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !40, !noalias !165
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %44 = load i64, ptr %43, align 8, !tbaa !41, !noalias !165
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false), !noalias !165
  %45 = icmp ult i64 %44, %29
  %46 = lshr i64 %44, 3
  %47 = icmp ugt i64 %46, %29
  %48 = or i1 %45, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %36
  %50 = getelementptr i8, ptr %27, i64 32
  %51 = load ptr, ptr %50, align 8, !noalias !165
  %52 = getelementptr i8, ptr %27, i64 40
  %53 = load ptr, ptr %52, align 8, !noalias !165
  %54 = icmp eq ptr %42, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = icmp eq ptr %51, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %55
  tail call void %51(ptr noundef %53, ptr noundef nonnull %42) #17, !noalias !165
  br label %59

58:                                               ; preds = %55
  tail call void @free(ptr noundef nonnull %42) #17, !noalias !165
  br label %59

59:                                               ; preds = %58, %57, %49, %32
  %60 = getelementptr inbounds nuw i8, ptr %27, i64 24
  %61 = load ptr, ptr %60, align 8, !tbaa !91, !noalias !165
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = getelementptr i8, ptr %27, i64 40
  %65 = load ptr, ptr %64, align 8, !noalias !165
  %66 = tail call ptr %61(ptr noundef %65, i64 noundef %29) #17, !noalias !165
  br label %69

67:                                               ; preds = %59
  %68 = tail call noalias ptr @malloc(i64 noundef %29) #20
  br label %69

69:                                               ; preds = %67, %63
  %70 = phi ptr [ %66, %63 ], [ %68, %67 ]
  %71 = icmp eq ptr %70, null
  %72 = select i1 %71, i64 0, i64 %29
  br label %73

73:                                               ; preds = %69, %36
  %74 = phi ptr [ %70, %69 ], [ %42, %36 ]
  %75 = phi i64 [ %72, %69 ], [ %44, %36 ]
  %76 = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %76, i8 0, i64 24, i1 false), !alias.scope !168
  store ptr %74, ptr %3, align 8, !tbaa !171, !alias.scope !168
  %77 = udiv i64 %75, 12
  %78 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %77, ptr %78, align 8, !tbaa !173, !alias.scope !168
  %79 = icmp eq ptr %74, null
  br label %80

80:                                               ; preds = %73, %31
  %81 = phi i1 [ true, %31 ], [ %79, %73 ]
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %84 = icmp eq ptr %25, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -64, ptr %86, align 8, !tbaa !83
  br label %353

87:                                               ; preds = %80
  %88 = load i64, ptr %83, align 8, !tbaa !41
  %89 = load ptr, ptr %82, align 8, !tbaa !40
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %143

91:                                               ; preds = %87
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %93 = load ptr, ptr %92, align 8, !tbaa !157
  %94 = getelementptr inbounds nuw i8, ptr %93, i64 8
  %95 = load i64, ptr %94, align 8, !tbaa !111
  %96 = getelementptr inbounds nuw i8, ptr %93, i64 20
  %97 = load i32, ptr %96, align 4, !tbaa !35
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %122, label %99

99:                                               ; preds = %91
  %100 = getelementptr inbounds nuw i8, ptr %93, i64 48
  %101 = load ptr, ptr %100, align 8, !tbaa !39
  %102 = add i32 %97, -1
  store i32 %102, ptr %96, align 4, !tbaa !35
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds nuw [16 x i8], ptr %101, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !40
  %106 = getelementptr inbounds nuw i8, ptr %104, i64 8
  %107 = load i64, ptr %106, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %104, i8 0, i64 16, i1 false)
  %108 = icmp ult i64 %107, %95
  %109 = lshr i64 %107, 3
  %110 = icmp ugt i64 %109, %95
  %111 = or i1 %108, %110
  br i1 %111, label %112, label %136

112:                                              ; preds = %99
  %113 = getelementptr i8, ptr %93, i64 32
  %114 = load ptr, ptr %113, align 8
  %115 = getelementptr i8, ptr %93, i64 40
  %116 = load ptr, ptr %115, align 8
  %117 = icmp eq ptr %105, null
  br i1 %117, label %122, label %118

118:                                              ; preds = %112
  %119 = icmp eq ptr %114, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %118
  tail call void %114(ptr noundef %116, ptr noundef nonnull %105) #17
  br label %122

121:                                              ; preds = %118
  tail call void @free(ptr noundef nonnull %105) #17
  br label %122

122:                                              ; preds = %121, %120, %112, %91
  %123 = getelementptr inbounds nuw i8, ptr %93, i64 24
  %124 = load ptr, ptr %123, align 8, !tbaa !91
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = getelementptr i8, ptr %93, i64 40
  %128 = load ptr, ptr %127, align 8
  %129 = tail call ptr %124(ptr noundef %128, i64 noundef %95) #17
  br label %132

130:                                              ; preds = %122
  %131 = tail call noalias ptr @malloc(i64 noundef %95) #20
  br label %132

132:                                              ; preds = %130, %126
  %133 = phi ptr [ %129, %126 ], [ %131, %130 ]
  %134 = icmp eq ptr %133, null
  %135 = select i1 %134, i64 0, i64 %95
  br label %136

136:                                              ; preds = %132, %99
  %137 = phi ptr [ %133, %132 ], [ %105, %99 ]
  %138 = phi i64 [ %135, %132 ], [ %107, %99 ]
  %139 = icmp eq ptr %137, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -64, ptr %141, align 8, !tbaa !83
  br label %353

142:                                              ; preds = %136
  store ptr %137, ptr %82, align 8, !tbaa !40
  store i64 %138, ptr %83, align 8, !tbaa !41
  br label %143

143:                                              ; preds = %142, %87
  %144 = phi ptr [ %137, %142 ], [ %89, %87 ]
  %145 = phi i64 [ %138, %142 ], [ %88, %87 ]
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %147 = load i32, ptr %146, align 8, !tbaa !103
  %148 = icmp eq i32 %147, 1
  %149 = select i1 %148, i1 %81, i1 false
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -64, ptr %151, align 8, !tbaa !83
  br label %353

152:                                              ; preds = %143
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %154 = load i32, ptr %153, align 8, !tbaa !152
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 0, ptr %157, align 4, !tbaa !117
  br label %158

158:                                              ; preds = %156, %152
  store i32 2, ptr %146, align 8, !tbaa !103
  %159 = getelementptr inbounds nuw i8, ptr %2, i64 76
  store i32 0, ptr %159, align 4, !tbaa !89
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %161 = load ptr, ptr %160, align 8, !tbaa !151
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %163 = load ptr, ptr %162, align 8
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %165 = load i64, ptr %164, align 8
  %166 = getelementptr inbounds nuw i8, ptr %161, i64 2432
  %167 = load i32, ptr %166, align 8, !tbaa !116
  %168 = icmp ult i32 %167, %154
  br i1 %168, label %.preheader, label %169, !llvm.loop !174

.preheader:                                       ; preds = %158, %.preheader
  br label %.preheader

169:                                              ; preds = %158
  %170 = icmp eq i32 %167, %154
  br i1 %170, label %171, label %235

171:                                              ; preds = %169
  %172 = getelementptr inbounds nuw i8, ptr %161, i64 104
  %173 = load i32, ptr %172, align 8, !tbaa !175
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %175, label %226

175:                                              ; preds = %171
  %176 = getelementptr inbounds nuw i8, ptr %161, i64 232
  %177 = icmp eq i64 %165, 0
  br i1 %177, label %223, label %178

178:                                              ; preds = %175
  %179 = load ptr, ptr %176, align 8, !tbaa !126
  %180 = icmp eq ptr %163, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %178
  %182 = getelementptr inbounds nuw i8, ptr %161, i64 248
  %183 = load ptr, ptr %182, align 8, !tbaa !123
  %184 = getelementptr inbounds nuw i8, ptr %161, i64 260
  %185 = load i32, ptr %184, align 4, !tbaa !125
  %186 = getelementptr inbounds nuw i8, ptr %161, i64 256
  %187 = load i32, ptr %186, align 8, !tbaa !124
  br label %204

188:                                              ; preds = %178
  %189 = getelementptr inbounds nuw i8, ptr %161, i64 240
  %190 = load ptr, ptr %189, align 8, !tbaa !122
  %191 = ptrtoint ptr %179 to i64
  %192 = ptrtoint ptr %190 to i64
  %193 = sub i64 %191, %192
  %194 = getelementptr inbounds nuw i8, ptr %161, i64 256
  %195 = load i32, ptr %194, align 8, !tbaa !124
  %196 = getelementptr inbounds nuw i8, ptr %161, i64 260
  store i32 %195, ptr %196, align 4, !tbaa !125
  %197 = trunc i64 %193 to i32
  store i32 %197, ptr %194, align 8, !tbaa !124
  %198 = getelementptr inbounds nuw i8, ptr %161, i64 248
  store ptr %190, ptr %198, align 8, !tbaa !123
  %199 = sub i64 0, %193
  %200 = getelementptr inbounds i8, ptr %163, i64 %199
  store ptr %200, ptr %189, align 8, !tbaa !122
  %201 = sub i32 %197, %195
  %202 = icmp ult i32 %201, 8
  br i1 %202, label %203, label %204

203:                                              ; preds = %188
  store i32 %197, ptr %196, align 4, !tbaa !125
  br label %204

204:                                              ; preds = %203, %188, %181
  %205 = phi i32 [ %187, %181 ], [ %197, %203 ], [ %197, %188 ]
  %206 = phi i32 [ %185, %181 ], [ %197, %203 ], [ %195, %188 ]
  %207 = phi ptr [ %183, %181 ], [ %190, %203 ], [ %190, %188 ]
  %208 = getelementptr inbounds nuw i8, ptr %163, i64 %165
  store ptr %208, ptr %176, align 8, !tbaa !126
  %209 = zext i32 %206 to i64
  %210 = getelementptr inbounds nuw i8, ptr %207, i64 %209
  %211 = icmp ugt ptr %208, %210
  %212 = zext i32 %205 to i64
  %213 = getelementptr inbounds nuw i8, ptr %207, i64 %212
  %214 = icmp ult ptr %163, %213
  %215 = and i1 %211, %214
  br i1 %215, label %216, label %223

216:                                              ; preds = %204
  %217 = getelementptr inbounds nuw i8, ptr %161, i64 260
  %218 = ptrtoint ptr %208 to i64
  %219 = ptrtoint ptr %207 to i64
  %220 = sub i64 %218, %219
  %221 = tail call i64 @llvm.umin.i64(i64 %220, i64 %212)
  %222 = trunc nuw i64 %221 to i32
  store i32 %222, ptr %217, align 4, !tbaa !125
  br label %223

223:                                              ; preds = %216, %204, %175
  %224 = call i64 @ZSTD_ldm_generateSequences(ptr noundef nonnull %176, ptr noundef nonnull %3, ptr noundef nonnull %172, ptr noundef %163, i64 noundef %165) #17
  %225 = getelementptr inbounds nuw i8, ptr %161, i64 2448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %225, ptr noundef nonnull align 8 dereferenceable(40) %176, i64 40, i1 false), !tbaa.struct !130
  br label %226

226:                                              ; preds = %223, %171
  %227 = getelementptr inbounds nuw i8, ptr %161, i64 44
  %228 = load i32, ptr %227, align 4, !tbaa !176
  %229 = icmp ne i32 %228, 0
  %230 = icmp ne i64 %165, 0
  %231 = select i1 %229, i1 %230, i1 false
  br i1 %231, label %232, label %235

232:                                              ; preds = %226
  %233 = getelementptr inbounds nuw i8, ptr %161, i64 2344
  %234 = call i32 @ZSTD_XXH64_update(ptr noundef nonnull captures(none) %233, ptr noundef captures(none) %163, i64 noundef %165) #17
  br label %235

235:                                              ; preds = %232, %226, %169
  %236 = load i32, ptr %166, align 8, !tbaa !116
  %237 = add i32 %236, 1
  store i32 %237, ptr %166, align 8, !tbaa !116
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 344
  %239 = load ptr, ptr %238, align 8, !tbaa !148
  %240 = icmp eq ptr %239, null
  br i1 %240, label %248, label %241

241:                                              ; preds = %235
  %242 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %243 = load i64, ptr %242, align 8, !tbaa !149
  %244 = call i64 @ZSTD_compressBegin_advanced_internal(ptr noundef nonnull %25, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %239, ptr noundef nonnull %2, i64 noundef %243) #17
  %245 = icmp ult i64 %244, -119
  br i1 %245, label %277, label %246

246:                                              ; preds = %241
  %247 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %244, ptr %247, align 8, !tbaa !83
  br label %353

248:                                              ; preds = %235
  %249 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %250 = load i32, ptr %249, align 4, !tbaa !153
  %251 = icmp eq i32 %250, 0
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %253 = select i1 %251, ptr %164, ptr %252
  %254 = load i64, ptr %253, align 8, !tbaa !140
  %255 = zext i1 %251 to i32
  %256 = call i64 @ZSTD_CCtxParams_setParameter(ptr noundef nonnull %2, i32 noundef 1000, i32 noundef %255) #17
  %257 = icmp ult i64 %256, -119
  br i1 %257, label %260, label %258

258:                                              ; preds = %248
  %259 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %256, ptr %259, align 8, !tbaa !83
  br label %353

260:                                              ; preds = %248
  %261 = load i32, ptr %249, align 4, !tbaa !153
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %260
  %264 = call i64 @ZSTD_CCtxParams_setParameter(ptr noundef nonnull %2, i32 noundef 1012, i32 noundef 0) #17
  %265 = icmp ult i64 %264, -119
  br i1 %265, label %268, label %266

266:                                              ; preds = %263
  %267 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %264, ptr %267, align 8, !tbaa !83
  br label %353

268:                                              ; preds = %263, %260
  %269 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %270 = load ptr, ptr %269, align 8, !tbaa !177
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %272 = load i64, ptr %271, align 8, !tbaa !178
  %273 = call i64 @ZSTD_compressBegin_advanced_internal(ptr noundef nonnull %25, ptr noundef %270, i64 noundef %272, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef nonnull %2, i64 noundef %254) #17
  %274 = icmp ult i64 %273, -119
  br i1 %274, label %277, label %275

275:                                              ; preds = %268
  %276 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %273, ptr %276, align 8, !tbaa !83
  br label %353

277:                                              ; preds = %268, %241
  %278 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %279 = load i64, ptr %278, align 8, !tbaa !179
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %283, label %281

281:                                              ; preds = %277
  %282 = load ptr, ptr %3, align 8
  call void @ZSTD_referenceExternalSequences(ptr noundef nonnull %25, ptr noundef %282, i64 noundef %279) #17
  br label %283

283:                                              ; preds = %281, %277
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %285 = load i32, ptr %284, align 4, !tbaa !153
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %283
  %288 = load ptr, ptr %162, align 8, !tbaa !146
  %289 = call i64 @ZSTD_compressContinue_public(ptr noundef nonnull %25, ptr noundef nonnull %144, i64 noundef %145, ptr noundef %288, i64 noundef 0) #17
  %290 = icmp ult i64 %289, -119
  br i1 %290, label %291, label %292

291:                                              ; preds = %287
  call void @ZSTD_invalidateRepCodes(ptr noundef nonnull %25) #17
  br label %294

292:                                              ; preds = %287
  %293 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %289, ptr %293, align 8, !tbaa !83
  br label %353

294:                                              ; preds = %291, %283
  %295 = load i64, ptr %164, align 8, !tbaa !86
  %296 = add i64 %295, 524287
  %297 = lshr i64 %296, 19
  %298 = trunc i64 %297 to i32
  %299 = load ptr, ptr %162, align 8, !tbaa !146
  %300 = getelementptr inbounds nuw i8, ptr %144, i64 %145
  %301 = icmp sgt i32 %298, 1
  br i1 %301, label %302, label %.loopexit

302:                                              ; preds = %294
  %303 = ptrtoint ptr %300 to i64
  %304 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %305 = and i64 %297, 2147483647
  br label %306

306:                                              ; preds = %315, %302
  %307 = phi i64 [ 1, %302 ], [ %319, %315 ]
  %308 = phi ptr [ %299, %302 ], [ %321, %315 ]
  %309 = phi ptr [ %144, %302 ], [ %320, %315 ]
  %310 = ptrtoint ptr %309 to i64
  %311 = sub i64 %303, %310
  %312 = call i64 @ZSTD_compressContinue_public(ptr noundef nonnull %25, ptr noundef %309, i64 noundef %311, ptr noundef %308, i64 noundef 524288) #17
  %313 = icmp ult i64 %312, -119
  br i1 %313, label %315, label %314

314:                                              ; preds = %306
  store i64 %312, ptr %304, align 8, !tbaa !83
  br label %353

315:                                              ; preds = %306
  %316 = load i64, ptr %304, align 8, !tbaa !83
  %317 = add i64 %316, %312
  store i64 %317, ptr %304, align 8, !tbaa !83
  %318 = shl nuw nsw i64 %307, 19
  store i64 %318, ptr %0, align 8, !tbaa !87
  %319 = add nuw nsw i64 %307, 1
  %320 = getelementptr inbounds nuw i8, ptr %309, i64 %312
  %321 = getelementptr inbounds nuw i8, ptr %308, i64 524288
  %322 = icmp eq i64 %319, %305
  br i1 %322, label %.loopexit, label %306, !llvm.loop !180

.loopexit:                                        ; preds = %315, %294
  %323 = phi ptr [ %144, %294 ], [ %320, %315 ]
  %324 = phi ptr [ %299, %294 ], [ %321, %315 ]
  %325 = icmp sgt i32 %298, 0
  %326 = zext i1 %325 to i32
  %327 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %328 = load i32, ptr %327, align 8, !tbaa !154
  %329 = or i32 %328, %326
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %351, label %331

331:                                              ; preds = %.loopexit
  %332 = load i64, ptr %164, align 8, !tbaa !86
  %333 = and i64 %332, 524287
  %334 = icmp eq i64 %333, 0
  %335 = icmp ugt i64 %332, 524287
  %336 = and i1 %335, %334
  %337 = select i1 %336, i64 524288, i64 %333
  %338 = icmp eq i32 %328, 0
  %339 = ptrtoint ptr %300 to i64
  %340 = ptrtoint ptr %323 to i64
  %341 = sub i64 %339, %340
  br i1 %338, label %344, label %342

342:                                              ; preds = %331
  %343 = call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %25, ptr noundef %323, i64 noundef %341, ptr noundef %324, i64 noundef %337) #17
  br label %346

344:                                              ; preds = %331
  %345 = call i64 @ZSTD_compressContinue_public(ptr noundef nonnull %25, ptr noundef %323, i64 noundef %341, ptr noundef %324, i64 noundef %337) #17
  br label %346

346:                                              ; preds = %344, %342
  %347 = phi i64 [ %343, %342 ], [ %345, %344 ]
  %348 = icmp ult i64 %347, -119
  br i1 %348, label %351, label %349

349:                                              ; preds = %346
  %350 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %347, ptr %350, align 8, !tbaa !83
  br label %353

351:                                              ; preds = %346, %.loopexit
  %352 = phi i64 [ 0, %.loopexit ], [ %347, %346 ]
  call void @ZSTD_CCtx_trace(ptr noundef nonnull %25, i64 noundef 0) #17
  br label %353

353:                                              ; preds = %351, %349, %314, %292, %275, %266, %258, %246, %150, %140, %85
  %354 = phi i64 [ 0, %85 ], [ 0, %140 ], [ 0, %150 ], [ %352, %351 ], [ 0, %349 ], [ 0, %292 ], [ 0, %246 ], [ 0, %314 ], [ 0, %266 ], [ 0, %258 ], [ 0, %275 ]
  %355 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %356 = load ptr, ptr %355, align 8, !tbaa !151
  %357 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %358 = load i32, ptr %357, align 8, !tbaa !152
  %359 = getelementptr inbounds nuw i8, ptr %356, i64 2432
  %360 = load i32, ptr %359, align 8, !tbaa !116
  %361 = icmp ugt i32 %360, %358
  br i1 %361, label %374, label %362

362:                                              ; preds = %353
  %363 = add i32 %358, 1
  store i32 %363, ptr %359, align 8, !tbaa !116
  %364 = getelementptr inbounds nuw i8, ptr %356, i64 2448
  %365 = load ptr, ptr %364, align 8, !tbaa !126
  %366 = getelementptr inbounds nuw i8, ptr %356, i64 2456
  %367 = load ptr, ptr %366, align 8, !tbaa !122
  %368 = ptrtoint ptr %365 to i64
  %369 = ptrtoint ptr %367 to i64
  %370 = sub i64 %368, %369
  %371 = trunc i64 %370 to i32
  %372 = getelementptr inbounds nuw i8, ptr %356, i64 2476
  store i32 %371, ptr %372, align 4, !tbaa !125
  %373 = getelementptr inbounds nuw i8, ptr %356, i64 2472
  store i32 %371, ptr %373, align 8, !tbaa !124
  br label %374

374:                                              ; preds = %362, %353
  %375 = load ptr, ptr %26, align 8, !tbaa !150
  %376 = load ptr, ptr %3, align 8, !tbaa !171
  %377 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %378 = load i64, ptr %377, align 8, !tbaa !173
  %379 = mul i64 %378, 12
  %380 = icmp eq ptr %376, null
  br i1 %380, label %402, label %381

381:                                              ; preds = %374
  %382 = getelementptr inbounds nuw i8, ptr %375, i64 20
  %383 = load i32, ptr %382, align 4, !tbaa !35
  %384 = getelementptr inbounds nuw i8, ptr %375, i64 16
  %385 = load i32, ptr %384, align 8, !tbaa !38
  %386 = icmp ult i32 %383, %385
  br i1 %386, label %387, label %394

387:                                              ; preds = %381
  %388 = getelementptr inbounds nuw i8, ptr %375, i64 48
  %389 = load ptr, ptr %388, align 8, !tbaa !39
  %390 = add nuw i32 %383, 1
  store i32 %390, ptr %382, align 4, !tbaa !35
  %391 = zext i32 %383 to i64
  %392 = getelementptr inbounds nuw [16 x i8], ptr %389, i64 %391
  store ptr %376, ptr %392, align 8, !tbaa !40
  %393 = getelementptr inbounds nuw i8, ptr %392, i64 8
  store i64 %379, ptr %393, align 8, !tbaa !41
  br label %402

394:                                              ; preds = %381
  %395 = getelementptr i8, ptr %375, i64 32
  %396 = load ptr, ptr %395, align 8
  %397 = icmp eq ptr %396, null
  br i1 %397, label %401, label %398

398:                                              ; preds = %394
  %399 = getelementptr i8, ptr %375, i64 40
  %400 = load ptr, ptr %399, align 8
  call void %396(ptr noundef %400, ptr noundef nonnull %376) #17
  br label %402

401:                                              ; preds = %394
  call void @free(ptr noundef nonnull %376) #17
  br label %402

402:                                              ; preds = %401, %398, %387, %374
  %403 = load ptr, ptr %5, align 8, !tbaa !164
  br i1 %84, label %418, label %404

404:                                              ; preds = %402
  %405 = getelementptr inbounds nuw i8, ptr %403, i64 8
  %406 = load i32, ptr %405, align 8, !tbaa !92
  %407 = getelementptr inbounds nuw i8, ptr %403, i64 4
  %408 = load i32, ptr %407, align 4, !tbaa !50
  %409 = icmp slt i32 %406, %408
  br i1 %409, label %410, label %416

410:                                              ; preds = %404
  %411 = add nsw i32 %406, 1
  %412 = getelementptr inbounds nuw i8, ptr %403, i64 40
  %413 = load ptr, ptr %412, align 8, !tbaa !46
  store i32 %411, ptr %405, align 8, !tbaa !92
  %414 = sext i32 %406 to i64
  %415 = getelementptr inbounds [8 x i8], ptr %413, i64 %414
  store ptr %25, ptr %415, align 8, !tbaa !51
  br label %418

416:                                              ; preds = %404
  %417 = call i64 @ZSTD_freeCCtx(ptr noundef nonnull %25) #17
  br label %418

418:                                              ; preds = %416, %410, %402
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %420 = load i64, ptr %419, align 8, !tbaa !83
  %421 = add i64 %420, %354
  store i64 %421, ptr %419, align 8, !tbaa !83
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %423 = load i64, ptr %422, align 8, !tbaa !86
  store i64 %423, ptr %0, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare i64 @ZSTD_writeLastEmptyBlock(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ZSTD_compressBegin_advanced_internal(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ZSTD_compressContinue_public(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ZSTD_invalidateRepCodes(ptr noundef) local_unnamed_addr #2

declare i64 @ZSTD_compressEnd_public(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ZSTD_CCtx_trace(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ZSTD_ldm_generateSequences(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ZSTD_XXH64_update(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

declare void @ZSTD_referenceExternalSequences(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64_digest(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #16

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"ZSTDMT_CCtx_s", !7, i64 0, !8, i64 8, !11, i64 16, !8, i64 24, !11, i64 32, !12, i64 40, !16, i64 264, !16, i64 272, !13, i64 280, !19, i64 288, !22, i64 328, !24, i64 352, !28, i64 2840, !13, i64 2864, !13, i64 2868, !13, i64 2872, !13, i64 2876, !13, i64 2880, !29, i64 2888, !29, i64 2896, !29, i64 2904, !18, i64 2912, !30, i64 2936, !30, i64 2944, !13, i64 2952}
!7 = !{!"p1 _ZTS10POOL_ctx_s", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"p1 _ZTS19ZSTDMT_bufferPool_s", !8, i64 0}
!12 = !{!"ZSTD_CCtx_params_s", !13, i64 0, !14, i64 4, !15, i64 32, !13, i64 44, !13, i64 48, !16, i64 56, !13, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !16, i64 80, !13, i64 88, !13, i64 92, !17, i64 96, !13, i64 120, !13, i64 124, !13, i64 128, !13, i64 132, !13, i64 136, !13, i64 140, !13, i64 144, !16, i64 152, !13, i64 160, !13, i64 164, !18, i64 168, !13, i64 192, !13, i64 196, !8, i64 200, !8, i64 208, !13, i64 216}
!13 = !{!"int", !9, i64 0}
!14 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24}
!15 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8}
!16 = !{!"long", !9, i64 0}
!17 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!18 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16}
!19 = !{!"", !20, i64 0, !21, i64 16, !16, i64 32}
!20 = !{!"", !8, i64 0, !16, i64 8}
!21 = !{!"buffer_s", !8, i64 0, !16, i64 8}
!22 = !{!"", !23, i64 0, !16, i64 8, !16, i64 16}
!23 = !{!"p1 omnipotent char", !8, i64 0}
!24 = !{!"", !13, i64 0, !13, i64 4, !12, i64 8, !25, i64 232, !27, i64 2344, !13, i64 2432, !13, i64 2436, !13, i64 2440, !26, i64 2448}
!25 = !{!"", !26, i64 0, !8, i64 40, !13, i64 48, !23, i64 56, !9, i64 64, !9, i64 576}
!26 = !{!"", !23, i64 0, !23, i64 8, !23, i64 16, !13, i64 24, !13, i64 28, !13, i64 32}
!27 = !{!"XXH64_state_s", !16, i64 0, !9, i64 8, !9, i64 40, !13, i64 72, !13, i64 76, !16, i64 80}
!28 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16}
!29 = !{!"long long", !9, i64 0}
!30 = !{!"p1 _ZTS12ZSTD_CDict_s", !8, i64 0}
!31 = !{!6, !8, i64 8}
!32 = !{!6, !13, i64 2880}
!33 = !{!13, !13, i64 0}
!34 = !{!6, !11, i64 16}
!35 = !{!36, !13, i64 20}
!36 = !{!"ZSTDMT_bufferPool_s", !13, i64 0, !16, i64 8, !13, i64 16, !13, i64 20, !18, i64 24, !37, i64 48}
!37 = !{!"p1 _ZTS8buffer_s", !8, i64 0}
!38 = !{!36, !13, i64 16}
!39 = !{!36, !37, i64 48}
!40 = !{!8, !8, i64 0}
!41 = !{!16, !16, i64 0}
!42 = !{!6, !13, i64 2864}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!6, !8, i64 24}
!46 = !{!47, !48, i64 40}
!47 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !18, i64 16, !48, i64 40}
!48 = !{!"p2 _ZTS11ZSTD_CCtx_s", !49, i64 0}
!49 = !{!"any p2 pointer", !8, i64 0}
!50 = !{!47, !13, i64 4}
!51 = !{!52, !52, i64 0}
!52 = !{!"p1 _ZTS11ZSTD_CCtx_s", !8, i64 0}
!53 = distinct !{!53, !44}
!54 = !{!6, !11, i64 32}
!55 = !{!24, !8, i64 272}
!56 = !{!24, !23, i64 288}
!57 = !{!6, !30, i64 2936}
!58 = !{!6, !23, i64 328}
!59 = !{!21, !8, i64 0}
!60 = distinct !{!60, !44}
!61 = !{!21, !16, i64 8}
!62 = distinct !{!62, !44, !63, !64}
!63 = !{!"llvm.loop.isvectorized", i32 1}
!64 = !{!"llvm.loop.unroll.runtime.disable"}
!65 = distinct !{!65, !44, !64, !63}
!66 = distinct !{!66, !44}
!67 = distinct !{!67, !44, !63, !64}
!68 = distinct !{!68, !44, !64, !63}
!69 = !{!6, !16, i64 336}
!70 = !{!6, !13, i64 44}
!71 = !{!12, !13, i64 44}
!72 = !{!6, !13, i64 84}
!73 = !{!14, !13, i64 0}
!74 = !{i64 0, i64 4, !33, i64 4, i64 4, !33, i64 8, i64 4, !33, i64 12, i64 4, !33, i64 16, i64 4, !33, i64 20, i64 4, !33, i64 24, i64 4, !33}
!75 = !{!6, !29, i64 2896}
!76 = !{!6, !16, i64 320}
!77 = !{!6, !29, i64 2904}
!78 = !{!6, !13, i64 2872}
!79 = !{!80, !13, i64 32}
!80 = !{!"", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !13, i64 32, !13, i64 36}
!81 = !{!6, !13, i64 280}
!82 = !{!6, !13, i64 2868}
!83 = !{!84, !16, i64 8}
!84 = !{!"", !16, i64 0, !16, i64 8, !13, i64 16, !13, i64 20, !8, i64 24, !11, i64 32, !11, i64 40, !8, i64 48, !21, i64 56, !20, i64 72, !20, i64 88, !13, i64 104, !13, i64 108, !13, i64 112, !12, i64 120, !30, i64 344, !29, i64 352, !16, i64 360, !13, i64 368}
!85 = !{!84, !16, i64 360}
!86 = !{!84, !16, i64 96}
!87 = !{!84, !16, i64 0}
!88 = distinct !{!88, !44}
!89 = !{!12, !13, i64 76}
!90 = !{!6, !13, i64 116}
!91 = !{!18, !8, i64 0}
!92 = !{!47, !13, i64 8}
!93 = !{!12, !16, i64 80}
!94 = distinct !{!94, !44}
!95 = distinct !{!95, !44}
!96 = !{i64 0, i64 4, !33, i64 4, i64 4, !33, i64 8, i64 4, !33, i64 12, i64 4, !33, i64 16, i64 4, !33, i64 20, i64 4, !33, i64 24, i64 4, !33, i64 28, i64 4, !33, i64 32, i64 4, !33, i64 36, i64 4, !33, i64 40, i64 4, !33, i64 44, i64 4, !33, i64 48, i64 4, !33, i64 56, i64 8, !41, i64 64, i64 4, !33, i64 68, i64 4, !33, i64 72, i64 4, !33, i64 76, i64 4, !33, i64 80, i64 8, !41, i64 88, i64 4, !33, i64 92, i64 4, !33, i64 96, i64 4, !33, i64 100, i64 4, !33, i64 104, i64 4, !33, i64 108, i64 4, !33, i64 112, i64 4, !33, i64 116, i64 4, !33, i64 120, i64 4, !33, i64 124, i64 4, !33, i64 128, i64 4, !33, i64 132, i64 4, !33, i64 136, i64 4, !33, i64 140, i64 4, !33, i64 144, i64 4, !33, i64 152, i64 8, !41, i64 160, i64 4, !33, i64 164, i64 4, !33, i64 168, i64 8, !40, i64 176, i64 8, !40, i64 184, i64 8, !40, i64 192, i64 4, !33, i64 196, i64 4, !33, i64 200, i64 8, !40, i64 208, i64 8, !40, i64 216, i64 4, !33}
!97 = !{!6, !29, i64 2888}
!98 = !{!6, !30, i64 2944}
!99 = !{!12, !13, i64 88}
!100 = !{!12, !13, i64 28}
!101 = !{}
!102 = !{!"branch_weights", i32 1, i32 1048575}
!103 = !{!12, !13, i64 96}
!104 = !{!12, !13, i64 8}
!105 = !{!6, !16, i64 272}
!106 = !{!6, !16, i64 264}
!107 = !{!12, !13, i64 92}
!108 = !{!6, !16, i64 2840}
!109 = !{!6, !16, i64 2848}
!110 = !{!6, !16, i64 2856}
!111 = !{!36, !16, i64 8}
!112 = !{!6, !13, i64 136}
!113 = !{!6, !16, i64 344}
!114 = !{!6, !8, i64 288}
!115 = !{!6, !16, i64 296}
!116 = !{!24, !13, i64 2432}
!117 = !{!12, !13, i64 36}
!118 = !{!12, !13, i64 100}
!119 = !{!12, !13, i64 104}
!120 = !{!24, !13, i64 108}
!121 = !{!24, !13, i64 112}
!122 = !{!26, !23, i64 8}
!123 = !{!26, !23, i64 16}
!124 = !{!26, !13, i64 24}
!125 = !{!26, !13, i64 28}
!126 = !{!26, !23, i64 0}
!127 = !{!24, !13, i64 280}
!128 = !{!12, !13, i64 48}
!129 = !{!24, !23, i64 240}
!130 = !{i64 0, i64 8, !131, i64 8, i64 8, !131, i64 16, i64 8, !131, i64 24, i64 4, !33, i64 28, i64 4, !33, i64 32, i64 4, !33}
!131 = !{!23, !23, i64 0}
!132 = !{!24, !16, i64 88}
!133 = !{!6, !13, i64 2876}
!134 = !{!135, !16, i64 8}
!135 = !{!"ZSTD_inBuffer_s", !8, i64 0, !16, i64 8, !16, i64 16}
!136 = !{!135, !16, i64 16}
!137 = !{!6, !8, i64 304}
!138 = distinct !{!138, !44}
!139 = !{!6, !13, i64 132}
!140 = !{!9, !9, i64 0}
!141 = distinct !{!141, !142}
!142 = !{!"llvm.loop.unroll.disable"}
!143 = distinct !{!143, !44}
!144 = distinct !{!144, !142}
!145 = distinct !{!145, !44}
!146 = !{!84, !8, i64 88}
!147 = !{i64 0, i64 8, !40, i64 8, i64 8, !41}
!148 = !{!84, !30, i64 344}
!149 = !{!84, !29, i64 352}
!150 = !{!84, !11, i64 40}
!151 = !{!84, !8, i64 48}
!152 = !{!84, !13, i64 104}
!153 = !{!84, !13, i64 108}
!154 = !{!84, !13, i64 112}
!155 = !{!6, !13, i64 76}
!156 = !{!84, !13, i64 368}
!157 = !{!84, !11, i64 32}
!158 = distinct !{!158, !44}
!159 = !{!84, !8, i64 56}
!160 = !{!161, !16, i64 8}
!161 = !{!"ZSTD_outBuffer_s", !8, i64 0, !16, i64 8, !16, i64 16}
!162 = !{!161, !16, i64 16}
!163 = !{!161, !8, i64 0}
!164 = !{!84, !8, i64 24}
!165 = !{!166}
!166 = distinct !{!166, !167, !"ZSTDMT_getSeq: argument 0"}
!167 = distinct !{!167, !"ZSTDMT_getSeq"}
!168 = !{!169, !166}
!169 = distinct !{!169, !170, !"bufferToSeq: argument 0"}
!170 = distinct !{!170, !"bufferToSeq"}
!171 = !{!172, !8, i64 0}
!172 = !{!"", !8, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32}
!173 = !{!172, !16, i64 32}
!174 = distinct !{!174, !44}
!175 = !{!24, !13, i64 104}
!176 = !{!24, !13, i64 44}
!177 = !{!84, !8, i64 72}
!178 = !{!84, !16, i64 80}
!179 = !{!172, !16, i64 24}
!180 = distinct !{!180, !44}
