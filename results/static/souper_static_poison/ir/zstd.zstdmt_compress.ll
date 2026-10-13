; ModuleID = '/mydata/zstd/lib/compress/zstdmt_compress.c'
source_filename = "/mydata/zstd/lib/compress/zstdmt_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZSTDMT_CCtx_s = type { ptr, ptr, ptr, ptr, ptr, %struct.ZSTD_CCtx_params_s, i64, i64, i32, %struct.InBuff_t, %struct.RoundBuff_t, %struct.SerialState, %struct.RSyncState_t, i32, i32, i32, i32, i32, i64, i64, i64, %struct.ZSTD_customMem, ptr, ptr, i8 }
%struct.ZSTD_CCtx_params_s = type { i32, %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, %struct.ldmParams_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.ZSTD_customMem, i32, i32, ptr, ptr, i32 }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }
%struct.ldmParams_t = type { i32, i32, i32, i32, i32, i32 }
%struct.InBuff_t = type { %struct.Range, %struct.buffer_s, i64 }
%struct.Range = type { ptr, i64 }
%struct.buffer_s = type { ptr, i64 }
%struct.RoundBuff_t = type { ptr, i64, i64 }
%struct.SerialState = type { i32, i32, %struct.ZSTD_CCtx_params_s, %struct.ldmState_t, %struct.XXH64_state_s, i32, i32, i32, %struct.ZSTD_window_t }
%struct.ldmState_t = type { %struct.ZSTD_window_t, ptr, i32, ptr, [64 x i64], [64 x %struct.ldmMatchCandidate_t] }
%struct.ldmMatchCandidate_t = type { ptr, i32, i32, ptr }
%struct.XXH64_state_s = type { i64, [4 x i64], [4 x i64], i32, i32, i64 }
%struct.ZSTD_window_t = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.RSyncState_t = type { i64, i64, i64 }
%struct.ZSTDMT_jobDescription = type { i64, i64, i32, i32, ptr, ptr, ptr, ptr, %struct.buffer_s, %struct.Range, %struct.Range, i32, i32, i32, %struct.ZSTD_CCtx_params_s, ptr, i64, i64, i32 }
%struct.ZSTDMT_bufferPool_s = type { i32, i64, i32, i32, %struct.ZSTD_customMem, ptr }
%struct.ZSTDMT_CCtxPool = type { i32, i32, i32, %struct.ZSTD_customMem, ptr }
%struct.ZSTD_frameProgression = type { i64, i64, i64, i64, i32, i32 }
%struct.ZSTD_inBuffer_s = type { ptr, i64, i64 }
%struct.ZSTD_outBuffer_s = type { ptr, i64, i64 }
%struct.RawSeqStore_t = type { ptr, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@switch.table.ZSTDMT_initCStream_internal = private unnamed_addr constant [5 x i32] [i32 7, i32 7, i32 8, i32 8, i32 9], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @ZSTDMT_createCCtx_advanced(i32 noundef %0, ptr nocapture noundef readnone byval(%struct.ZSTD_customMem) align 8 %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTDMT_freeCCtx(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %164, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 24
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !5
  tail call void @POOL_free(ptr noundef %9) #17
  br label %10

10:                                               ; preds = %8, %3
  %11 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !27
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 9, i32 1
  %16 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  store i32 1, ptr %16, align 8, !tbaa !28
  %17 = getelementptr %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 21, i32 1
  %18 = getelementptr %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 21, i32 2
  br label %73

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 13
  %21 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 2
  br label %22

22:                                               ; preds = %55, %19
  %23 = phi ptr [ %12, %19 ], [ %58, %55 ]
  %24 = phi i32 [ 0, %19 ], [ %60, %55 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %23, i64 %25, i32 2
  %27 = load <2 x i32>, ptr %26, align 8, !tbaa !29
  %28 = load ptr, ptr %21, align 8, !tbaa !30
  %29 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %23, i64 %25, i32 8
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds { ptr, i64 }, ptr %29, i64 0, i32 1
  %32 = load i64, ptr %31, align 8
  %33 = icmp eq ptr %30, null
  br i1 %33, label %55, label %34

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %28, i64 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !31
  %37 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %28, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !33
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %28, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = add nuw i32 %36, 1
  store i32 %43, ptr %35, align 4, !tbaa !31
  %44 = zext i32 %36 to i64
  %45 = getelementptr inbounds %struct.buffer_s, ptr %42, i64 %44
  store ptr %30, ptr %45, align 8, !tbaa.struct !35
  %46 = getelementptr inbounds i8, ptr %45, i64 8
  store i64 %32, ptr %46, align 8, !tbaa.struct !38
  br label %55

47:                                               ; preds = %34
  %48 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %28, i64 0, i32 4, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %28, i64 0, i32 4, i32 2
  %53 = load ptr, ptr %52, align 8
  tail call void %49(ptr noundef %53, ptr noundef nonnull %30) #17
  br label %55

54:                                               ; preds = %47
  tail call void @free(ptr noundef nonnull %30) #17
  br label %55

55:                                               ; preds = %54, %51, %40, %22
  %56 = load ptr, ptr %11, align 8, !tbaa !27
  %57 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %56, i64 %25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %57, i8 0, i64 376, i1 false)
  %58 = load ptr, ptr %11, align 8, !tbaa !27
  %59 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %58, i64 %25, i32 2
  store <2 x i32> %27, ptr %59, align 8, !tbaa !29
  %60 = add i32 %24, 1
  %61 = load i32, ptr %20, align 8, !tbaa !39
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %63, label %22, !llvm.loop !40

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 9, i32 1
  %65 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %64, i8 0, i64 24, i1 false)
  store i32 1, ptr %65, align 8, !tbaa !28
  %66 = getelementptr %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 21, i32 1
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 21, i32 2
  %69 = icmp eq ptr %67, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %63
  %71 = load ptr, ptr %68, align 8
  tail call void %67(ptr noundef %71, ptr noundef nonnull %58) #17
  br label %73

72:                                               ; preds = %63
  tail call void @free(ptr noundef nonnull %58) #17
  br label %73

73:                                               ; preds = %14, %70, %72
  %74 = phi ptr [ %18, %14 ], [ %68, %70 ], [ %68, %72 ]
  %75 = phi ptr [ %17, %14 ], [ %66, %70 ], [ %66, %72 ]
  %76 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !30
  tail call fastcc void @ZSTDMT_freeBufferPool(ptr noundef %77)
  %78 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !42
  %80 = icmp eq ptr %79, null
  br i1 %80, label %119, label %81

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %79, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !43
  %84 = icmp eq ptr %83, null
  br i1 %84, label %111, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %79, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !45
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %85, %89
  %90 = phi i64 [ %95, %89 ], [ 0, %85 ]
  %91 = load ptr, ptr %82, align 8, !tbaa !43
  %92 = getelementptr inbounds ptr, ptr %91, i64 %90
  %93 = load ptr, ptr %92, align 8, !tbaa !36
  %94 = tail call i64 @ZSTD_freeCCtx(ptr noundef %93) #17
  %95 = add nuw nsw i64 %90, 1
  %96 = load i32, ptr %86, align 4, !tbaa !45
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %95, %97
  br i1 %98, label %89, label %99, !llvm.loop !46

99:                                               ; preds = %89
  %100 = load ptr, ptr %82, align 8, !tbaa !43
  %101 = icmp eq ptr %100, null
  br i1 %101, label %111, label %102

102:                                              ; preds = %85, %99
  %103 = phi ptr [ %100, %99 ], [ %83, %85 ]
  %104 = getelementptr %struct.ZSTDMT_CCtxPool, ptr %79, i64 0, i32 3, i32 1
  %105 = load ptr, ptr %104, align 8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = getelementptr %struct.ZSTDMT_CCtxPool, ptr %79, i64 0, i32 3, i32 2
  %109 = load ptr, ptr %108, align 8
  tail call void %105(ptr noundef %109, ptr noundef nonnull %103) #17
  br label %111

110:                                              ; preds = %102
  tail call void @free(ptr noundef nonnull %103) #17
  br label %111

111:                                              ; preds = %110, %107, %99, %81
  %112 = getelementptr %struct.ZSTDMT_CCtxPool, ptr %79, i64 0, i32 3, i32 1
  %113 = load ptr, ptr %112, align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = getelementptr %struct.ZSTDMT_CCtxPool, ptr %79, i64 0, i32 3, i32 2
  %117 = load ptr, ptr %116, align 8
  tail call void %113(ptr noundef %117, ptr noundef nonnull %79) #17
  br label %119

118:                                              ; preds = %111
  tail call void @free(ptr noundef nonnull %79) #17
  br label %119

119:                                              ; preds = %73, %115, %118
  %120 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !47
  tail call fastcc void @ZSTDMT_freeBufferPool(ptr noundef %121)
  %122 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 2, i32 24, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa.struct !48
  %124 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 2, i32 24, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa.struct !49
  %126 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 3, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !50
  %128 = icmp eq ptr %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %119
  %130 = icmp eq ptr %123, null
  br i1 %130, label %136, label %131

131:                                              ; preds = %129
  tail call void %123(ptr noundef %125, ptr noundef nonnull %127) #17
  br label %132

132:                                              ; preds = %131, %119
  %133 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 3, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !51
  %135 = icmp eq ptr %134, null
  br i1 %135, label %145, label %140

136:                                              ; preds = %129
  tail call void @free(ptr noundef nonnull %127) #17
  %137 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 3, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !51
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

145:                                              ; preds = %132, %136, %142, %143
  %146 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 22
  %147 = load ptr, ptr %146, align 8, !tbaa !52
  %148 = tail call i64 @ZSTD_freeCDict(ptr noundef %147) #17
  %149 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 10
  %150 = load ptr, ptr %149, align 8, !tbaa !53
  %151 = icmp eq ptr %150, null
  br i1 %151, label %158, label %152

152:                                              ; preds = %145
  %153 = load ptr, ptr %75, align 8
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %152
  %156 = load ptr, ptr %74, align 8
  tail call void %153(ptr noundef %156, ptr noundef nonnull %150) #17
  br label %158

157:                                              ; preds = %152
  tail call void @free(ptr noundef nonnull %150) #17
  br label %158

158:                                              ; preds = %145, %155, %157
  %159 = load ptr, ptr %75, align 8
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %158
  %162 = load ptr, ptr %74, align 8
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
  br i1 %2, label %52, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !33
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %0, i64 0, i32 4, i32 1
  br i1 %10, label %35, label %12

12:                                               ; preds = %7
  %13 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %0, i64 0, i32 4, i32 2
  br label %14

14:                                               ; preds = %12, %26
  %15 = phi i64 [ 0, %12 ], [ %27, %26 ]
  %16 = load ptr, ptr %4, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.buffer_s, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !54
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

26:                                               ; preds = %14, %24, %25
  %27 = add nuw nsw i64 %15, 1
  %28 = load i32, ptr %8, align 8, !tbaa !33
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %14, label %31, !llvm.loop !55

31:                                               ; preds = %26
  %32 = load ptr, ptr %4, align 8, !tbaa !34
  %33 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %0, i64 0, i32 4, i32 1
  %34 = icmp eq ptr %32, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %7, %31
  %36 = phi ptr [ %33, %31 ], [ %11, %7 ]
  %37 = phi ptr [ %32, %31 ], [ %5, %7 ]
  %38 = load ptr, ptr %36, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %0, i64 0, i32 4, i32 2
  %42 = load ptr, ptr %41, align 8
  tail call void %38(ptr noundef %42, ptr noundef nonnull %37) #17
  br label %44

43:                                               ; preds = %35
  tail call void @free(ptr noundef nonnull %37) #17
  br label %44

44:                                               ; preds = %3, %31, %40, %43
  %45 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %0, i64 0, i32 4, i32 1
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %0, i64 0, i32 4, i32 2
  %50 = load ptr, ptr %49, align 8
  tail call void %46(ptr noundef %50, ptr noundef nonnull %0) #17
  br label %52

51:                                               ; preds = %44
  tail call void @free(ptr noundef nonnull %0) #17
  br label %52

52:                                               ; preds = %51, %48, %1
  ret void
}

declare i64 @ZSTD_freeCDict(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTDMT_sizeof_CCtx(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %146, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = tail call i64 @POOL_sizeof(ptr noundef %4) #17
  %6 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !30
  %8 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !33
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %52, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %7, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = zext i32 %9 to i64
  %15 = icmp ult i32 %9, 5
  br i1 %15, label %39, label %16

16:                                               ; preds = %11
  %17 = and i64 %14, 3
  %18 = icmp eq i64 %17, 0
  %19 = select i1 %18, i64 4, i64 %17
  %20 = sub nsw i64 %14, %19
  br label %21

21:                                               ; preds = %21, %16
  %22 = phi i64 [ 0, %16 ], [ %34, %21 ]
  %23 = phi <2 x i64> [ zeroinitializer, %16 ], [ %32, %21 ]
  %24 = phi <2 x i64> [ zeroinitializer, %16 ], [ %33, %21 ]
  %25 = or disjoint i64 %22, 2
  %26 = getelementptr inbounds %struct.buffer_s, ptr %13, i64 %22, i32 1
  %27 = getelementptr inbounds %struct.buffer_s, ptr %13, i64 %25, i32 1
  %28 = load <4 x i64>, ptr %26, align 8, !tbaa !56
  %29 = load <4 x i64>, ptr %27, align 8, !tbaa !56
  %30 = shufflevector <4 x i64> %28, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %31 = shufflevector <4 x i64> %29, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %32 = add <2 x i64> %30, %23
  %33 = add <2 x i64> %31, %24
  %34 = add nuw i64 %22, 4
  %35 = icmp eq i64 %34, %20
  br i1 %35, label %36, label %21, !llvm.loop !57

36:                                               ; preds = %21
  %37 = add <2 x i64> %33, %32
  %38 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %37)
  br label %39

39:                                               ; preds = %11, %36
  %40 = phi i64 [ 0, %11 ], [ %20, %36 ]
  %41 = phi i64 [ 0, %11 ], [ %38, %36 ]
  br label %42

42:                                               ; preds = %39, %42
  %43 = phi i64 [ %48, %42 ], [ %40, %39 ]
  %44 = phi i64 [ %47, %42 ], [ %41, %39 ]
  %45 = getelementptr inbounds %struct.buffer_s, ptr %13, i64 %43, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !56
  %47 = add i64 %46, %44
  %48 = add nuw nsw i64 %43, 1
  %49 = icmp eq i64 %48, %14
  br i1 %49, label %50, label %42, !llvm.loop !60

50:                                               ; preds = %42
  %51 = shl nuw nsw i64 %14, 4
  br label %52

52:                                               ; preds = %50, %3
  %53 = phi i64 [ 0, %3 ], [ %51, %50 ]
  %54 = phi i64 [ 0, %3 ], [ %47, %50 ]
  %55 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 13
  %56 = load i32, ptr %55, align 8, !tbaa !39
  %57 = add i32 %56, 1
  %58 = zext i32 %57 to i64
  %59 = mul nuw nsw i64 %58, 376
  %60 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !42
  %62 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %61, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !45
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %52
  %66 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %61, i64 0, i32 4
  %67 = zext i32 %63 to i64
  br label %68

68:                                               ; preds = %68, %65
  %69 = phi i64 [ 0, %65 ], [ %76, %68 ]
  %70 = phi i64 [ 0, %65 ], [ %75, %68 ]
  %71 = load ptr, ptr %66, align 8, !tbaa !43
  %72 = getelementptr inbounds ptr, ptr %71, i64 %69
  %73 = load ptr, ptr %72, align 8, !tbaa !36
  %74 = tail call i64 @ZSTD_sizeof_CCtx(ptr noundef %73) #17
  %75 = add i64 %74, %70
  %76 = add nuw nsw i64 %69, 1
  %77 = icmp eq i64 %76, %67
  br i1 %77, label %78, label %68, !llvm.loop !61

78:                                               ; preds = %68, %52
  %79 = phi i64 [ 0, %52 ], [ %75, %68 ]
  %80 = sext i32 %63 to i64
  %81 = shl nsw i64 %80, 3
  %82 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !47
  %84 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %83, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !33
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %130, label %87

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %83, i64 0, i32 5
  %89 = load ptr, ptr %88, align 8, !tbaa !34
  %90 = zext i32 %85 to i64
  %91 = icmp ult i32 %85, 5
  br i1 %91, label %115, label %92

92:                                               ; preds = %87
  %93 = and i64 %90, 3
  %94 = icmp eq i64 %93, 0
  %95 = select i1 %94, i64 4, i64 %93
  %96 = sub nsw i64 %90, %95
  br label %97

97:                                               ; preds = %97, %92
  %98 = phi i64 [ 0, %92 ], [ %110, %97 ]
  %99 = phi <2 x i64> [ zeroinitializer, %92 ], [ %108, %97 ]
  %100 = phi <2 x i64> [ zeroinitializer, %92 ], [ %109, %97 ]
  %101 = or disjoint i64 %98, 2
  %102 = getelementptr inbounds %struct.buffer_s, ptr %89, i64 %98, i32 1
  %103 = getelementptr inbounds %struct.buffer_s, ptr %89, i64 %101, i32 1
  %104 = load <4 x i64>, ptr %102, align 8, !tbaa !56
  %105 = load <4 x i64>, ptr %103, align 8, !tbaa !56
  %106 = shufflevector <4 x i64> %104, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %107 = shufflevector <4 x i64> %105, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %108 = add <2 x i64> %106, %99
  %109 = add <2 x i64> %107, %100
  %110 = add nuw i64 %98, 4
  %111 = icmp eq i64 %110, %96
  br i1 %111, label %112, label %97, !llvm.loop !62

112:                                              ; preds = %97
  %113 = add <2 x i64> %109, %108
  %114 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %113)
  br label %115

115:                                              ; preds = %87, %112
  %116 = phi i64 [ 0, %87 ], [ %96, %112 ]
  %117 = phi i64 [ 0, %87 ], [ %114, %112 ]
  br label %118

118:                                              ; preds = %115, %118
  %119 = phi i64 [ %124, %118 ], [ %116, %115 ]
  %120 = phi i64 [ %123, %118 ], [ %117, %115 ]
  %121 = getelementptr inbounds %struct.buffer_s, ptr %89, i64 %119, i32 1
  %122 = load i64, ptr %121, align 8, !tbaa !56
  %123 = add i64 %122, %120
  %124 = add nuw nsw i64 %119, 1
  %125 = icmp eq i64 %124, %90
  br i1 %125, label %126, label %118, !llvm.loop !63

126:                                              ; preds = %118
  %127 = shl nuw nsw i64 %90, 4
  %128 = add nuw nsw i64 %127, 56
  %129 = add i64 %128, %123
  br label %130

130:                                              ; preds = %78, %126
  %131 = phi i64 [ 56, %78 ], [ %129, %126 ]
  %132 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 22
  %133 = load ptr, ptr %132, align 8, !tbaa !52
  %134 = tail call i64 @ZSTD_sizeof_CDict(ptr noundef %133) #17
  %135 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 10, i32 1
  %136 = load i64, ptr %135, align 8, !tbaa !64
  %137 = add i64 %5, 3064
  %138 = add i64 %137, %53
  %139 = add i64 %138, %54
  %140 = add i64 %139, %59
  %141 = add i64 %140, %81
  %142 = add i64 %141, %79
  %143 = add i64 %142, %131
  %144 = add i64 %143, %134
  %145 = add i64 %144, %136
  br label %146

146:                                              ; preds = %1, %130
  %147 = phi i64 [ %145, %130 ], [ 0, %1 ]
  ret i64 %147
}

declare i64 @POOL_sizeof(ptr noundef) local_unnamed_addr #2

declare i64 @ZSTD_sizeof_CDict(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ZSTDMT_updateCParams_whileCompressing(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.ZSTD_compressionParameters, align 4
  %4 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 5, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !65
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !66
  %8 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 5, i32 3
  store i32 %7, ptr %8, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #17
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %3, ptr noundef %1, i64 noundef -1, i64 noundef 0, i32 noundef 0) #17
  store i32 %5, ptr %3, align 4, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !69
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind writable sret(%struct.ZSTD_compressionParameters) align 4, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ZSTDMT_getFrameProgression(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.ZSTD_frameProgression) align 8 %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %1, i64 0, i32 19
  %4 = load i64, ptr %3, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %1, i64 0, i32 9, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !71
  %7 = add i64 %6, %4
  %8 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %1, i64 0, i32 20
  %9 = load i64, ptr %8, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %1, i64 0, i32 15
  %11 = load i32, ptr %10, align 8, !tbaa !73
  %12 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %0, i64 0, i32 4
  store i32 %11, ptr %12, align 8, !tbaa !74
  %13 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %1, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !76
  %15 = add i32 %14, %11
  %16 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %1, i64 0, i32 14
  %17 = load i32, ptr %16, align 4, !tbaa !77
  %18 = icmp ult i32 %17, %15
  br i1 %18, label %19, label %55

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %1, i64 0, i32 13
  %21 = load i32, ptr %20, align 8, !tbaa !39
  %22 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !27
  br label %24

24:                                               ; preds = %19, %41
  %25 = phi i32 [ %17, %19 ], [ %53, %41 ]
  %26 = phi i64 [ %7, %19 ], [ %45, %41 ]
  %27 = phi i64 [ %4, %19 ], [ %47, %41 ]
  %28 = phi i64 [ %9, %19 ], [ %48, %41 ]
  %29 = phi i64 [ %9, %19 ], [ %49, %41 ]
  %30 = phi i32 [ 0, %19 ], [ %52, %41 ]
  %31 = and i32 %21, %25
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %23, i64 %32
  %34 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %23, i64 %32, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !78
  %36 = icmp ult i64 %35, -119
  %37 = select i1 %36, i64 %35, i64 0
  br i1 %36, label %38, label %41

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %23, i64 %32, i32 17
  %40 = load i64, ptr %39, align 8, !tbaa !80
  br label %41

41:                                               ; preds = %24, %38
  %42 = phi i64 [ %40, %38 ], [ 0, %24 ]
  %43 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %23, i64 %32, i32 10, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !81
  %45 = add i64 %26, %44
  %46 = load i64, ptr %33, align 8, !tbaa !82
  %47 = add i64 %27, %46
  %48 = add i64 %28, %37
  %49 = add i64 %29, %42
  %50 = icmp ult i64 %46, %44
  %51 = zext i1 %50 to i32
  %52 = add i32 %30, %51
  %53 = add nuw i32 %25, 1
  %54 = icmp eq i32 %53, %15
  br i1 %54, label %55, label %24, !llvm.loop !83

55:                                               ; preds = %41, %2
  %56 = phi i32 [ 0, %2 ], [ %52, %41 ]
  %57 = phi i64 [ %9, %2 ], [ %49, %41 ]
  %58 = phi i64 [ %9, %2 ], [ %48, %41 ]
  %59 = phi i64 [ %4, %2 ], [ %47, %41 ]
  %60 = phi i64 [ %7, %2 ], [ %45, %41 ]
  %61 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %0, i64 0, i32 5
  %62 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %0, i64 0, i32 2
  %63 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %0, i64 0, i32 3
  %64 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %0, i64 0, i32 1
  store i64 %60, ptr %0, align 8, !tbaa !84
  store i64 %59, ptr %64, align 8, !tbaa !85
  store i64 %58, ptr %62, align 8, !tbaa !86
  store i64 %57, ptr %63, align 8, !tbaa !87
  store i32 %56, ptr %61, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @ZSTDMT_toFlushNow(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 14
  %3 = load i32, ptr %2, align 4, !tbaa !77
  %4 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 15
  %5 = load i32, ptr %4, align 8, !tbaa !73
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 13
  %9 = load i32, ptr %8, align 8, !tbaa !39
  %10 = and i32 %9, %3
  %11 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !27
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %12, i64 %13, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !78
  %16 = icmp ult i64 %15, -119
  %17 = select i1 %16, i64 %15, i64 0
  br i1 %16, label %18, label %21

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %12, i64 %13, i32 17
  %20 = load i64, ptr %19, align 8, !tbaa !80
  br label %21

21:                                               ; preds = %7, %18
  %22 = phi i64 [ %20, %18 ], [ 0, %7 ]
  %23 = sub i64 %17, %22
  br label %24

24:                                               ; preds = %1, %21
  %25 = phi i64 [ %23, %21 ], [ 0, %1 ]
  ret i64 %25
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTDMT_initCStream_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef byval(%struct.ZSTD_CCtx_params_s) align 8 %5, i64 noundef %6) local_unnamed_addr #1 {
  %8 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %9 = alloca %struct.ZSTD_customMem, align 8
  %10 = alloca %struct.ZSTD_customMem, align 8
  %11 = alloca %struct.ZSTD_compressionParameters, align 8
  %12 = alloca %struct.ZSTD_compressionParameters, align 8
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 9
  %14 = load i32, ptr %13, align 4, !tbaa !89
  %15 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 5, i32 9
  %17 = load i32, ptr %16, align 4, !tbaa !90
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %207, label %19

19:                                               ; preds = %7
  %20 = load ptr, ptr %0, align 8, !tbaa !5
  %21 = zext i32 %14 to i64
  %22 = tail call i32 @POOL_resize(ptr noundef %20, i64 noundef %21) #17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %663

24:                                               ; preds = %19
  %25 = add i32 %14, 2
  %26 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 13
  %27 = load i32, ptr %26, align 8, !tbaa !39
  %28 = add i32 %27, 1
  %29 = icmp ugt i32 %25, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !27
  %33 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 21
  %34 = getelementptr %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 21, i32 1
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 21, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %32, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %30
  %40 = icmp eq ptr %35, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %39
  tail call void %35(ptr noundef %37, ptr noundef nonnull %32) #17
  br label %43

42:                                               ; preds = %39
  tail call void @free(ptr noundef nonnull %32) #17
  br label %43

43:                                               ; preds = %42, %41, %30
  store i32 0, ptr %26, align 8, !tbaa !39
  %44 = load ptr, ptr %33, align 8, !tbaa !91
  %45 = tail call i32 @llvm.ctlz.i32(i32 %25, i1 true), !range !92
  %46 = xor i32 %45, 31
  %47 = shl i32 2, %46
  %48 = zext i32 %47 to i64
  %49 = mul nuw nsw i64 %48, 376
  %50 = icmp eq ptr %44, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %43
  %52 = load ptr, ptr %36, align 8
  %53 = tail call ptr %44(ptr noundef %52, i64 noundef %49) #17
  %54 = icmp eq ptr %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %53, i8 0, i64 %49, i1 false)
  br label %59

56:                                               ; preds = %43
  %57 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %49) #18
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56, %55
  %60 = phi ptr [ %53, %55 ], [ %57, %56 ]
  store ptr %60, ptr %31, align 8, !tbaa !27
  %61 = add i32 %47, -1
  store i32 %61, ptr %26, align 8, !tbaa !39
  br label %63

62:                                               ; preds = %56, %51
  store ptr null, ptr %31, align 8, !tbaa !27
  br label %663

63:                                               ; preds = %59, %24
  %64 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !30
  %66 = shl i32 %14, 1
  %67 = add i32 %66, 3
  %68 = tail call fastcc ptr @ZSTDMT_expandBufferPool(ptr noundef %65, i32 noundef %67)
  store ptr %68, ptr %64, align 8, !tbaa !30
  %69 = icmp eq ptr %68, null
  br i1 %69, label %663, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !42
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store ptr null, ptr %71, align 8, !tbaa !42
  br label %663

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %72, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !45
  %78 = icmp slt i32 %77, %14
  br i1 %78, label %79, label %199

79:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10)
  %80 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %72, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %80, i64 24, i1 false), !tbaa.struct !93
  %81 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %72, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !43
  %83 = icmp eq ptr %82, null
  br i1 %83, label %108, label %84

84:                                               ; preds = %79
  %85 = icmp sgt i32 %77, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %84, %86
  %87 = phi i64 [ %92, %86 ], [ 0, %84 ]
  %88 = load ptr, ptr %81, align 8, !tbaa !43
  %89 = getelementptr inbounds ptr, ptr %88, i64 %87
  %90 = load ptr, ptr %89, align 8, !tbaa !36
  %91 = tail call i64 @ZSTD_freeCCtx(ptr noundef %90) #17
  %92 = add nuw nsw i64 %87, 1
  %93 = load i32, ptr %76, align 4, !tbaa !45
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %86, label %96, !llvm.loop !46

96:                                               ; preds = %86
  %97 = load ptr, ptr %81, align 8, !tbaa !43
  %98 = icmp eq ptr %97, null
  br i1 %98, label %108, label %99

99:                                               ; preds = %96, %84
  %100 = phi ptr [ %97, %96 ], [ %82, %84 ]
  %101 = getelementptr %struct.ZSTDMT_CCtxPool, ptr %72, i64 0, i32 3, i32 1
  %102 = load ptr, ptr %101, align 8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = getelementptr %struct.ZSTDMT_CCtxPool, ptr %72, i64 0, i32 3, i32 2
  %106 = load ptr, ptr %105, align 8
  tail call void %102(ptr noundef %106, ptr noundef nonnull %100) #17
  br label %108

107:                                              ; preds = %99
  tail call void @free(ptr noundef nonnull %100) #17
  br label %108

108:                                              ; preds = %107, %104, %96, %79
  %109 = getelementptr %struct.ZSTDMT_CCtxPool, ptr %72, i64 0, i32 3, i32 1
  %110 = load ptr, ptr %109, align 8
  %111 = icmp eq ptr %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = getelementptr %struct.ZSTDMT_CCtxPool, ptr %72, i64 0, i32 3, i32 2
  %114 = load ptr, ptr %113, align 8
  tail call void %110(ptr noundef %114, ptr noundef nonnull %72) #17
  br label %116

115:                                              ; preds = %108
  tail call void @free(ptr noundef nonnull %72) #17
  br label %116

116:                                              ; preds = %115, %112
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %117 = load ptr, ptr %9, align 8, !tbaa !91
  %118 = icmp eq ptr %117, null
  br i1 %118, label %124, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds i8, ptr %9, i64 16
  %121 = load ptr, ptr %120, align 8
  %122 = tail call ptr %117(ptr noundef %121, i64 noundef 48) #17
  %123 = icmp eq ptr %122, null
  br i1 %123, label %196, label %127

124:                                              ; preds = %116
  %125 = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #18
  %126 = icmp eq ptr %125, null
  br i1 %126, label %196, label %137

127:                                              ; preds = %119
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %122, i8 0, i64 48, i1 false)
  %128 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %122, i64 0, i32 1
  store i32 %14, ptr %128, align 4, !tbaa !45
  %129 = sext i32 %14 to i64
  %130 = shl nsw i64 %129, 3
  %131 = tail call ptr %117(ptr noundef %121, i64 noundef %130) #17
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %122, i64 0, i32 4
  store ptr null, ptr %134, align 8, !tbaa !43
  br label %144

135:                                              ; preds = %127
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %131, i8 0, i64 %130, i1 false)
  %136 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %122, i64 0, i32 4
  store ptr %131, ptr %136, align 8, !tbaa !43
  br label %153

137:                                              ; preds = %124
  %138 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %125, i64 0, i32 1
  store i32 %14, ptr %138, align 4, !tbaa !45
  %139 = sext i32 %14 to i64
  %140 = shl nsw i64 %139, 3
  %141 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %140) #18
  %142 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %125, i64 0, i32 4
  store ptr %141, ptr %142, align 8, !tbaa !43
  %143 = icmp eq ptr %141, null
  br i1 %143, label %144, label %153

144:                                              ; preds = %137, %133
  %145 = phi ptr [ %122, %133 ], [ %125, %137 ]
  %146 = getelementptr %struct.ZSTDMT_CCtxPool, ptr %145, i64 0, i32 3, i32 1
  %147 = load ptr, ptr %146, align 8
  %148 = icmp eq ptr %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %144
  %150 = getelementptr %struct.ZSTDMT_CCtxPool, ptr %145, i64 0, i32 3, i32 2
  %151 = load ptr, ptr %150, align 8
  tail call void %147(ptr noundef %151, ptr noundef nonnull %145) #17
  br label %196

152:                                              ; preds = %144
  tail call void @free(ptr noundef nonnull %145) #17
  br label %196

153:                                              ; preds = %137, %135
  %154 = phi ptr [ %128, %135 ], [ %138, %137 ]
  %155 = phi ptr [ %122, %135 ], [ %125, %137 ]
  %156 = phi ptr [ %136, %135 ], [ %142, %137 ]
  %157 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %155, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %157, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !93
  %158 = tail call ptr @ZSTD_createCCtx_advanced(ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %9) #17
  %159 = load ptr, ptr %156, align 8, !tbaa !43
  store ptr %158, ptr %159, align 8, !tbaa !36
  %160 = load ptr, ptr %156, align 8, !tbaa !43
  %161 = load ptr, ptr %160, align 8, !tbaa !36
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %197

163:                                              ; preds = %153
  %164 = load i32, ptr %154, align 4, !tbaa !45
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %163, %166
  %167 = phi i64 [ %172, %166 ], [ 0, %163 ]
  %168 = load ptr, ptr %156, align 8, !tbaa !43
  %169 = getelementptr inbounds ptr, ptr %168, i64 %167
  %170 = load ptr, ptr %169, align 8, !tbaa !36
  %171 = tail call i64 @ZSTD_freeCCtx(ptr noundef %170) #17
  %172 = add nuw nsw i64 %167, 1
  %173 = load i32, ptr %154, align 4, !tbaa !45
  %174 = sext i32 %173 to i64
  %175 = icmp slt i64 %172, %174
  br i1 %175, label %166, label %176, !llvm.loop !46

176:                                              ; preds = %166
  %177 = load ptr, ptr %156, align 8, !tbaa !43
  %178 = icmp eq ptr %177, null
  br i1 %178, label %188, label %179

179:                                              ; preds = %176, %163
  %180 = phi ptr [ %177, %176 ], [ %160, %163 ]
  %181 = getelementptr %struct.ZSTDMT_CCtxPool, ptr %155, i64 0, i32 3, i32 1
  %182 = load ptr, ptr %181, align 8
  %183 = icmp eq ptr %182, null
  br i1 %183, label %187, label %184

184:                                              ; preds = %179
  %185 = getelementptr %struct.ZSTDMT_CCtxPool, ptr %155, i64 0, i32 3, i32 2
  %186 = load ptr, ptr %185, align 8
  tail call void %182(ptr noundef %186, ptr noundef nonnull %180) #17
  br label %188

187:                                              ; preds = %179
  tail call void @free(ptr noundef nonnull %180) #17
  br label %188

188:                                              ; preds = %187, %184, %176
  %189 = getelementptr %struct.ZSTDMT_CCtxPool, ptr %155, i64 0, i32 3, i32 1
  %190 = load ptr, ptr %189, align 8
  %191 = icmp eq ptr %190, null
  br i1 %191, label %195, label %192

192:                                              ; preds = %188
  %193 = getelementptr %struct.ZSTDMT_CCtxPool, ptr %155, i64 0, i32 3, i32 2
  %194 = load ptr, ptr %193, align 8
  tail call void %190(ptr noundef %194, ptr noundef nonnull %155) #17
  br label %196

195:                                              ; preds = %188
  tail call void @free(ptr noundef nonnull %155) #17
  br label %196

196:                                              ; preds = %195, %192, %152, %149, %124, %119
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10)
  store ptr null, ptr %71, align 8, !tbaa !42
  br label %663

197:                                              ; preds = %153
  %198 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %155, i64 0, i32 2
  store i32 1, ptr %198, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10)
  br label %199

199:                                              ; preds = %197, %75
  %200 = phi ptr [ %155, %197 ], [ %72, %75 ]
  store ptr %200, ptr %71, align 8, !tbaa !42
  %201 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 4
  %202 = load ptr, ptr %201, align 8, !tbaa !47
  %203 = tail call fastcc ptr @ZSTDMT_expandBufferPool(ptr noundef %202, i32 noundef %14)
  store ptr %203, ptr %201, align 8, !tbaa !47
  %204 = icmp eq ptr %203, null
  br i1 %204, label %663, label %205

205:                                              ; preds = %199
  %206 = tail call i64 @ZSTD_CCtxParams_setParameter(ptr noundef nonnull %15, i32 noundef 400, i32 noundef %14) #17
  br label %207

207:                                              ; preds = %205, %7
  %208 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 10
  %209 = load i64, ptr %208, align 8
  %210 = add i64 %209, -1
  %211 = icmp ult i64 %210, 524287
  br i1 %211, label %214, label %212

212:                                              ; preds = %207
  %213 = icmp ugt i64 %209, 1073741824
  br i1 %213, label %214, label %216

214:                                              ; preds = %212, %207
  %215 = phi i64 [ 524288, %207 ], [ 1073741824, %212 ]
  store i64 %215, ptr %208, align 8, !tbaa !95
  br label %216

216:                                              ; preds = %214, %212
  %217 = phi i64 [ %209, %212 ], [ %215, %214 ]
  %218 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 17
  %219 = load i32, ptr %218, align 8, !tbaa !28
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %299

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 14
  %223 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 15
  %224 = load i32, ptr %223, align 8, !tbaa !73
  %225 = load i32, ptr %222, align 4, !tbaa !77
  %226 = icmp ult i32 %225, %224
  %227 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 1
  br i1 %226, label %228, label %247

228:                                              ; preds = %221
  %229 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 13
  %230 = load i32, ptr %229, align 8, !tbaa !39
  %231 = load ptr, ptr %227, align 8, !tbaa !27
  br label %232

232:                                              ; preds = %242, %228
  %233 = phi i32 [ %225, %228 ], [ %243, %242 ]
  %234 = and i32 %233, %230
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %231, i64 %235
  %237 = load i64, ptr %236, align 8, !tbaa !82
  %238 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %231, i64 %235, i32 10, i32 1
  %239 = load i64, ptr %238, align 8, !tbaa !81
  %240 = icmp ult i64 %237, %239
  br i1 %240, label %241, label %242, !llvm.loop !96

241:                                              ; preds = %232, %241
  br label %241

242:                                              ; preds = %232
  %243 = add nuw i32 %233, 1
  store i32 %243, ptr %222, align 4, !tbaa !77
  %244 = icmp eq i32 %243, %224
  br i1 %244, label %245, label %232, !llvm.loop !97

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 1
  br label %251

247:                                              ; preds = %221
  %248 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !27
  %250 = icmp eq ptr %249, null
  br i1 %250, label %297, label %251

251:                                              ; preds = %245, %247
  %252 = phi ptr [ %246, %245 ], [ %227, %247 ]
  %253 = phi ptr [ %231, %245 ], [ %249, %247 ]
  %254 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 13
  %255 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 2
  br label %256

256:                                              ; preds = %289, %251
  %257 = phi ptr [ %253, %251 ], [ %292, %289 ]
  %258 = phi i32 [ 0, %251 ], [ %294, %289 ]
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %257, i64 %259, i32 2
  %261 = load <2 x i32>, ptr %260, align 8, !tbaa !29
  %262 = load ptr, ptr %255, align 8, !tbaa !30
  %263 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %257, i64 %259, i32 8
  %264 = load ptr, ptr %263, align 8
  %265 = getelementptr inbounds { ptr, i64 }, ptr %263, i64 0, i32 1
  %266 = load i64, ptr %265, align 8
  %267 = icmp eq ptr %264, null
  br i1 %267, label %289, label %268

268:                                              ; preds = %256
  %269 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %262, i64 0, i32 3
  %270 = load i32, ptr %269, align 4, !tbaa !31
  %271 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %262, i64 0, i32 2
  %272 = load i32, ptr %271, align 8, !tbaa !33
  %273 = icmp ult i32 %270, %272
  br i1 %273, label %274, label %281

274:                                              ; preds = %268
  %275 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %262, i64 0, i32 5
  %276 = load ptr, ptr %275, align 8, !tbaa !34
  %277 = add nuw i32 %270, 1
  store i32 %277, ptr %269, align 4, !tbaa !31
  %278 = zext i32 %270 to i64
  %279 = getelementptr inbounds %struct.buffer_s, ptr %276, i64 %278
  store ptr %264, ptr %279, align 8, !tbaa.struct !35
  %280 = getelementptr inbounds i8, ptr %279, i64 8
  store i64 %266, ptr %280, align 8, !tbaa.struct !38
  br label %289

281:                                              ; preds = %268
  %282 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %262, i64 0, i32 4, i32 1
  %283 = load ptr, ptr %282, align 8
  %284 = icmp eq ptr %283, null
  br i1 %284, label %288, label %285

285:                                              ; preds = %281
  %286 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %262, i64 0, i32 4, i32 2
  %287 = load ptr, ptr %286, align 8
  tail call void %283(ptr noundef %287, ptr noundef nonnull %264) #17
  br label %289

288:                                              ; preds = %281
  tail call void @free(ptr noundef nonnull %264) #17
  br label %289

289:                                              ; preds = %288, %285, %274, %256
  %290 = load ptr, ptr %252, align 8, !tbaa !27
  %291 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %290, i64 %259
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %291, i8 0, i64 376, i1 false)
  %292 = load ptr, ptr %252, align 8, !tbaa !27
  %293 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %292, i64 %259, i32 2
  store <2 x i32> %261, ptr %293, align 8, !tbaa !29
  %294 = add i32 %258, 1
  %295 = load i32, ptr %254, align 8, !tbaa !39
  %296 = icmp ugt i32 %294, %295
  br i1 %296, label %297, label %256, !llvm.loop !40

297:                                              ; preds = %289, %247
  %298 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 9, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %298, i8 0, i64 24, i1 false)
  store i32 1, ptr %218, align 8, !tbaa !28
  br label %299

299:                                              ; preds = %297, %216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %15, ptr noundef nonnull align 8 dereferenceable(224) %5, i64 224, i1 false), !tbaa.struct !98
  %300 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 18
  store i64 %6, ptr %300, align 8, !tbaa !99
  %301 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 22
  %302 = load ptr, ptr %301, align 8, !tbaa !52
  %303 = tail call i64 @ZSTD_freeCDict(ptr noundef %302) #17
  %304 = icmp eq ptr %1, null
  br i1 %304, label %311, label %305

305:                                              ; preds = %299
  %306 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 1
  %307 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 21
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, ptr noundef nonnull align 4 dereferenceable(28) %306, i64 28, i1 false), !tbaa.struct !69
  %308 = tail call ptr @ZSTD_createCDict_advanced(ptr noundef nonnull %1, i64 noundef %2, i32 noundef 0, i32 noundef %3, ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %11, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %307) #17
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %11) #17
  store ptr %308, ptr %301, align 8, !tbaa !52
  %309 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 23
  store ptr %308, ptr %309, align 8, !tbaa !100
  %310 = icmp eq ptr %308, null
  br i1 %310, label %663, label %313

311:                                              ; preds = %299
  store ptr null, ptr %301, align 8, !tbaa !52
  %312 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 23
  store ptr %4, ptr %312, align 8, !tbaa !100
  br label %313

313:                                              ; preds = %305, %311
  %314 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 11
  %315 = load i32, ptr %314, align 8, !tbaa !101
  %316 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 1
  %317 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 1, i32 6
  %318 = load i32, ptr %317, align 4, !tbaa !102
  %319 = icmp eq i32 %315, 0
  br i1 %319, label %320, label %327

320:                                              ; preds = %313
  %321 = add i32 %318, -5
  %322 = icmp ult i32 %321, 5
  br i1 %322, label %323, label %327

323:                                              ; preds = %320
  %324 = zext nneg i32 %321 to i64
  %325 = getelementptr inbounds [5 x i32], ptr @switch.table.ZSTDMT_initCStream_internal, i64 0, i64 %324
  %326 = load i32, ptr %325, align 4
  br label %327

327:                                              ; preds = %320, %323, %313
  %328 = phi i32 [ %315, %313 ], [ %326, %323 ], [ 6, %320 ]
  %329 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 9, i32 %328), !nosanitize !103
  %330 = extractvalue { i32, i1 } %329, 0, !nosanitize !103
  %331 = extractvalue { i32, i1 } %329, 1, !nosanitize !103
  br i1 %331, label %332, label %333, !nosanitize !103

332:                                              ; preds = %327
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !103
  unreachable, !nosanitize !103

333:                                              ; preds = %327
  %334 = load i32, ptr %316, align 4
  %335 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 13
  %336 = load i32, ptr %335, align 8, !tbaa !104
  %337 = icmp eq i32 %336, 1
  br i1 %337, label %338, label %371

338:                                              ; preds = %333
  %339 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 1, i32 1
  %340 = load i32, ptr %339, align 8, !tbaa !105
  %341 = tail call i32 @ZSTD_cycleLog(i32 noundef %340, i32 noundef %318) #17
  %342 = add i32 %341, 3
  %343 = icmp ult i32 %342, 21
  br i1 %343, label %349, label %344

344:                                              ; preds = %338
  %345 = tail call i32 @ZSTD_cycleLog(i32 noundef %340, i32 noundef %318) #17
  %346 = add i32 %345, 3
  %347 = tail call i32 @llvm.umin.i32(i32 %346, i32 30)
  %348 = add nsw i32 %347, -2
  br label %349

349:                                              ; preds = %344, %338
  %350 = phi i32 [ 19, %338 ], [ %348, %344 ]
  %351 = icmp ult i32 %334, %350
  br i1 %351, label %361, label %352

352:                                              ; preds = %349
  %353 = tail call i32 @ZSTD_cycleLog(i32 noundef %340, i32 noundef %318) #17
  %354 = add i32 %353, 3
  %355 = icmp ult i32 %354, 21
  br i1 %355, label %361, label %356

356:                                              ; preds = %352
  %357 = tail call i32 @ZSTD_cycleLog(i32 noundef %340, i32 noundef %318) #17
  %358 = add i32 %357, 3
  %359 = tail call i32 @llvm.umin.i32(i32 %358, i32 30)
  %360 = add nsw i32 %359, -2
  br label %361

361:                                              ; preds = %352, %356, %349
  %362 = phi i32 [ 19, %352 ], [ %360, %356 ], [ %334, %349 ]
  %363 = sub i32 %362, %330
  %364 = icmp eq i32 %362, %330
  %365 = zext nneg i32 %363 to i64
  %366 = shl nuw i64 1, %365
  %367 = select i1 %364, i64 0, i64 %366
  %368 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 7
  store i64 %367, ptr %368, align 8, !tbaa !106
  %369 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 6
  store i64 %217, ptr %369, align 8, !tbaa !107
  %370 = icmp eq i64 %217, 0
  br i1 %370, label %382, label %408

371:                                              ; preds = %333
  %372 = icmp sgt i32 %330, 7
  %373 = sub i32 %334, %330
  %374 = select i1 %372, i32 0, i32 %373
  %375 = icmp eq i32 %374, 0
  %376 = zext nneg i32 %374 to i64
  %377 = shl nuw i64 1, %376
  %378 = select i1 %375, i64 0, i64 %377
  %379 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 7
  store i64 %378, ptr %379, align 8, !tbaa !106
  %380 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 6
  store i64 %217, ptr %380, align 8, !tbaa !107
  %381 = icmp eq i64 %217, 0
  br i1 %381, label %392, label %408

382:                                              ; preds = %361
  br i1 %337, label %383, label %392

383:                                              ; preds = %382
  %384 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 1, i32 1
  %385 = load i32, ptr %384, align 8, !tbaa !105
  %386 = tail call i32 @ZSTD_cycleLog(i32 noundef %385, i32 noundef %318) #17
  %387 = add i32 %386, 3
  %388 = icmp ult i32 %387, 21
  br i1 %388, label %402, label %389

389:                                              ; preds = %383
  %390 = tail call i32 @ZSTD_cycleLog(i32 noundef %385, i32 noundef %318) #17
  %391 = add i32 %390, 3
  br label %397

392:                                              ; preds = %371, %382
  %393 = phi ptr [ %368, %382 ], [ %379, %371 ]
  %394 = phi ptr [ %369, %382 ], [ %380, %371 ]
  %395 = add i32 %334, 2
  %396 = icmp ult i32 %395, 20
  br i1 %396, label %402, label %397

397:                                              ; preds = %392, %389
  %398 = phi ptr [ %393, %392 ], [ %368, %389 ]
  %399 = phi ptr [ %394, %392 ], [ %369, %389 ]
  %400 = phi i32 [ %395, %392 ], [ %391, %389 ]
  %401 = tail call i32 @llvm.umin.i32(i32 %400, i32 30)
  br label %402

402:                                              ; preds = %383, %392, %397
  %403 = phi ptr [ %368, %383 ], [ %393, %392 ], [ %398, %397 ]
  %404 = phi ptr [ %369, %383 ], [ %394, %392 ], [ %399, %397 ]
  %405 = phi i32 [ 21, %383 ], [ 20, %392 ], [ %401, %397 ]
  %406 = zext nneg i32 %405 to i64
  %407 = shl nuw nsw i64 1, %406
  store i64 %407, ptr %404, align 8, !tbaa !107
  br label %408

408:                                              ; preds = %371, %402, %361
  %409 = phi ptr [ %404, %402 ], [ %369, %361 ], [ %380, %371 ]
  %410 = phi ptr [ %403, %402 ], [ %368, %361 ], [ %379, %371 ]
  %411 = phi i64 [ %407, %402 ], [ %217, %361 ], [ %217, %371 ]
  %412 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i64 0, i32 12
  %413 = load i32, ptr %412, align 4, !tbaa !108
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %426, label %415

415:                                              ; preds = %408
  %416 = lshr i64 %411, 10
  %417 = trunc i64 %416 to i32
  %418 = tail call i32 @llvm.ctlz.i32(i32 %417, i1 true), !range !92
  %419 = sub nuw nsw i32 41, %418
  %420 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 12
  store i64 0, ptr %420, align 8, !tbaa !109
  %421 = zext nneg i32 %419 to i64
  %422 = shl nsw i64 -1, %421
  %423 = xor i64 %422, -1
  %424 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 12, i32 1
  store i64 %423, ptr %424, align 8, !tbaa !110
  %425 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 12, i32 2
  store i64 -769974921742649141, ptr %425, align 8, !tbaa !111
  br label %426

426:                                              ; preds = %415, %408
  %427 = load i64, ptr %410, align 8, !tbaa !106
  %428 = icmp ult i64 %411, %427
  br i1 %428, label %429, label %430

429:                                              ; preds = %426
  store i64 %427, ptr %409, align 8, !tbaa !107
  br label %430

430:                                              ; preds = %429, %426
  %431 = phi i64 [ %427, %429 ], [ %411, %426 ]
  %432 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 2
  %433 = load ptr, ptr %432, align 8, !tbaa !30
  %434 = tail call i64 @ZSTD_compressBound(i64 noundef %431) #17
  %435 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %433, i64 0, i32 1
  store i64 %434, ptr %435, align 8, !tbaa !112
  %436 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 5, i32 13
  %437 = load i32, ptr %436, align 8, !tbaa !113
  %438 = icmp eq i32 %437, 1
  br i1 %438, label %439, label %444

439:                                              ; preds = %430
  %440 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 5, i32 1
  %441 = load i32, ptr %440, align 4, !tbaa !65
  %442 = shl nuw i32 1, %441
  %443 = zext i32 %442 to i64
  br label %444

444:                                              ; preds = %439, %430
  %445 = phi i64 [ %443, %439 ], [ 0, %430 ]
  %446 = load i64, ptr %410, align 8, !tbaa !106
  %447 = icmp eq i64 %446, 0
  %448 = select i1 %447, i64 2, i64 3
  %449 = load i64, ptr %409, align 8, !tbaa !107
  %450 = mul i64 %448, %449
  %451 = load i32, ptr %16, align 4, !tbaa !90
  %452 = tail call i32 @llvm.smax.i32(i32 %451, i32 1)
  %453 = zext nneg i32 %452 to i64
  %454 = mul i64 %449, %453
  %455 = tail call i64 @llvm.umax.i64(i64 %445, i64 %454)
  %456 = add i64 %455, %450
  %457 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 10
  %458 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 10, i32 1
  %459 = load i64, ptr %458, align 8, !tbaa !64
  %460 = icmp ult i64 %459, %456
  br i1 %460, label %461, label %487

461:                                              ; preds = %444
  %462 = load ptr, ptr %457, align 8, !tbaa !53
  %463 = icmp eq ptr %462, null
  br i1 %463, label %472, label %464

464:                                              ; preds = %461
  %465 = getelementptr %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 21, i32 1
  %466 = load ptr, ptr %465, align 8
  %467 = icmp eq ptr %466, null
  br i1 %467, label %471, label %468

468:                                              ; preds = %464
  %469 = getelementptr %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 21, i32 2
  %470 = load ptr, ptr %469, align 8
  tail call void %466(ptr noundef %470, ptr noundef nonnull %462) #17
  br label %472

471:                                              ; preds = %464
  tail call void @free(ptr noundef nonnull %462) #17
  br label %472

472:                                              ; preds = %471, %468, %461
  %473 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 21
  %474 = load ptr, ptr %473, align 8, !tbaa !91
  %475 = icmp eq ptr %474, null
  br i1 %475, label %480, label %476

476:                                              ; preds = %472
  %477 = getelementptr %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 21, i32 2
  %478 = load ptr, ptr %477, align 8
  %479 = tail call ptr %474(ptr noundef %478, i64 noundef %456) #17
  br label %482

480:                                              ; preds = %472
  %481 = tail call noalias ptr @malloc(i64 noundef %456) #20
  br label %482

482:                                              ; preds = %476, %480
  %483 = phi ptr [ %479, %476 ], [ %481, %480 ]
  store ptr %483, ptr %457, align 8, !tbaa !53
  %484 = icmp eq ptr %483, null
  br i1 %484, label %486, label %485

485:                                              ; preds = %482
  store i64 %456, ptr %458, align 8, !tbaa !64
  br label %487

486:                                              ; preds = %482
  store i64 0, ptr %458, align 8, !tbaa !64
  br label %663

487:                                              ; preds = %485, %444
  %488 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 10, i32 2
  store i64 0, ptr %488, align 8, !tbaa !114
  %489 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 9
  %490 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 14
  %491 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %490, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %491, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %489, i8 0, i64 40, i1 false)
  %492 = load ptr, ptr %301, align 8, !tbaa !52
  %493 = tail call i64 @ZSTD_freeCDict(ptr noundef %492) #17
  %494 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %301, i8 0, i64 16, i1 false)
  br i1 %304, label %503, label %495

495:                                              ; preds = %487
  %496 = icmp eq i32 %3, 1
  br i1 %496, label %497, label %499

497:                                              ; preds = %495
  store ptr %1, ptr %489, align 8, !tbaa !115
  %498 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 9, i32 0, i32 1
  store i64 %2, ptr %498, align 8, !tbaa !116
  br label %504

499:                                              ; preds = %495
  %500 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 21
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %12) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, ptr noundef nonnull align 4 dereferenceable(28) %316, i64 28, i1 false), !tbaa.struct !69
  %501 = tail call ptr @ZSTD_createCDict_advanced(ptr noundef nonnull %1, i64 noundef %2, i32 noundef 1, i32 noundef %3, ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %12, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %500) #17
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %12) #17
  store ptr %501, ptr %301, align 8, !tbaa !52
  store ptr %501, ptr %494, align 8, !tbaa !100
  %502 = icmp eq ptr %501, null
  br i1 %502, label %663, label %504

503:                                              ; preds = %487
  store ptr %4, ptr %494, align 8, !tbaa !100
  br label %504

504:                                              ; preds = %497, %499, %503
  %505 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 4
  %506 = load ptr, ptr %505, align 8, !tbaa !47
  %507 = load i64, ptr %409, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %8, ptr noundef nonnull align 8 dereferenceable(224) %5, i64 224, i1 false)
  %508 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i64 0, i32 13
  %509 = load i32, ptr %508, align 8, !tbaa !104
  %510 = icmp eq i32 %509, 1
  br i1 %510, label %511, label %513

511:                                              ; preds = %504
  %512 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i64 0, i32 1
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %508, ptr noundef nonnull %512) #17
  br label %514

513:                                              ; preds = %504
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %508, i8 0, i64 24, i1 false)
  br label %514

514:                                              ; preds = %513, %511
  %515 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 5
  store i32 0, ptr %515, align 8, !tbaa !117
  %516 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i64 0, i32 2, i32 1
  %517 = load i32, ptr %516, align 4, !tbaa !118
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %522, label %519

519:                                              ; preds = %514
  %520 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 4
  %521 = call i32 @ZSTD_XXH64_reset(ptr nocapture noundef nonnull %520, i64 noundef 0) #17
  br label %522

522:                                              ; preds = %519, %514
  %523 = load i32, ptr %508, align 8, !tbaa !104
  %524 = icmp eq i32 %523, 1
  br i1 %524, label %525, label %659

525:                                              ; preds = %522
  %526 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i64 0, i32 24
  %527 = load ptr, ptr %526, align 8, !tbaa.struct !93
  %528 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i64 0, i32 24, i32 1
  %529 = load ptr, ptr %528, align 8, !tbaa.struct !48
  %530 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i64 0, i32 24, i32 2
  %531 = load ptr, ptr %530, align 8, !tbaa.struct !49
  %532 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i64 0, i32 13, i32 1
  %533 = load i32, ptr %532, align 4, !tbaa !119
  %534 = zext nneg i32 %533 to i64
  %535 = shl i64 8, %534
  %536 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i64 0, i32 13, i32 2
  %537 = load i32, ptr %536, align 8, !tbaa !120
  %538 = sub i32 %533, %537
  %539 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 2, i32 13, i32 1
  %540 = load i32, ptr %539, align 4, !tbaa !121
  %541 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 2, i32 13, i32 2
  %542 = load i32, ptr %541, align 8, !tbaa !122
  %543 = sub i32 %540, %542
  %544 = zext nneg i32 %538 to i64
  %545 = shl nuw i64 1, %544
  %546 = call i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %508, i64 noundef %507) #17
  %547 = mul i64 %546, 12
  %548 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %506, i64 0, i32 1
  store i64 %547, ptr %548, align 8, !tbaa !112
  %549 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 3
  %550 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 3, i32 0, i32 5
  store i64 0, ptr %550, align 8
  %551 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 3, i32 0, i32 1
  store ptr @.str, ptr %551, align 8, !tbaa !123
  %552 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 3, i32 0, i32 2
  store ptr @.str, ptr %552, align 8, !tbaa !124
  %553 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 3, i32 0, i32 3
  store i32 2, ptr %553, align 8, !tbaa !125
  %554 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 3, i32 0, i32 4
  store i32 2, ptr %554, align 4, !tbaa !126
  store ptr getelementptr inbounds ([2 x i8], ptr @.str, i64 1, i64 0), ptr %549, align 8, !tbaa !127
  %555 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 3, i32 1
  %556 = load ptr, ptr %555, align 8, !tbaa !50
  %557 = icmp eq ptr %556, null
  br i1 %557, label %565, label %558

558:                                              ; preds = %525
  %559 = load i32, ptr %539, align 4, !tbaa !121
  %560 = icmp ult i32 %559, %533
  br i1 %560, label %561, label %573

561:                                              ; preds = %558
  %562 = icmp eq ptr %529, null
  br i1 %562, label %564, label %563

563:                                              ; preds = %561
  call void %529(ptr noundef %531, ptr noundef nonnull %556) #17
  br label %565

564:                                              ; preds = %561
  call void @free(ptr noundef nonnull %556) #17
  br label %565

565:                                              ; preds = %564, %563, %525
  %566 = icmp eq ptr %527, null
  br i1 %566, label %569, label %567

567:                                              ; preds = %565
  %568 = call ptr %527(ptr noundef %531, i64 noundef %535) #17
  br label %571

569:                                              ; preds = %565
  %570 = call noalias ptr @malloc(i64 noundef %535) #20
  br label %571

571:                                              ; preds = %569, %567
  %572 = phi ptr [ %568, %567 ], [ %570, %569 ]
  store ptr %572, ptr %555, align 8, !tbaa !50
  br label %573

573:                                              ; preds = %571, %558
  %574 = phi ptr [ %572, %571 ], [ %556, %558 ]
  %575 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 3, i32 3
  %576 = load ptr, ptr %575, align 8, !tbaa !51
  %577 = icmp eq ptr %576, null
  %578 = icmp ult i32 %543, %538
  %579 = select i1 %577, i1 true, i1 %578
  br i1 %579, label %580, label %597

580:                                              ; preds = %573
  br i1 %577, label %585, label %581

581:                                              ; preds = %580
  %582 = icmp eq ptr %529, null
  br i1 %582, label %584, label %583

583:                                              ; preds = %581
  call void %529(ptr noundef %531, ptr noundef nonnull %576) #17
  br label %585

584:                                              ; preds = %581
  call void @free(ptr noundef nonnull %576) #17
  br label %585

585:                                              ; preds = %584, %583, %580
  %586 = icmp eq ptr %527, null
  br i1 %586, label %589, label %587

587:                                              ; preds = %585
  %588 = call ptr %527(ptr noundef %531, i64 noundef %545) #17
  br label %591

589:                                              ; preds = %585
  %590 = call noalias ptr @malloc(i64 noundef %545) #20
  br label %591

591:                                              ; preds = %589, %587
  %592 = phi ptr [ %588, %587 ], [ %590, %589 ]
  store ptr %592, ptr %575, align 8, !tbaa !51
  %593 = load ptr, ptr %555, align 8, !tbaa !50
  %594 = icmp eq ptr %592, null
  %595 = icmp eq ptr %593, null
  %596 = select i1 %595, i1 true, i1 %594
  br i1 %596, label %658, label %599

597:                                              ; preds = %573
  %598 = icmp eq ptr %574, null
  br i1 %598, label %658, label %599

599:                                              ; preds = %597, %591
  %600 = phi ptr [ %574, %597 ], [ %593, %591 ]
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %600, i8 0, i64 %535, i1 false)
  %601 = load ptr, ptr %575, align 8, !tbaa !51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %601, i8 0, i64 %545, i1 false)
  %602 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 3, i32 2
  store i32 0, ptr %602, align 8, !tbaa !128
  %603 = icmp ne i64 %2, 0
  %604 = icmp eq i32 %3, 1
  %605 = and i1 %603, %604
  br i1 %605, label %606, label %656

606:                                              ; preds = %599
  %607 = getelementptr inbounds i8, ptr %1, i64 %2
  %608 = load ptr, ptr %549, align 8, !tbaa !127
  %609 = icmp eq ptr %608, %1
  br i1 %609, label %610, label %614

610:                                              ; preds = %606
  %611 = load ptr, ptr %552, align 8, !tbaa !124
  %612 = load i32, ptr %554, align 4, !tbaa !126
  %613 = load i32, ptr %553, align 8, !tbaa !125
  br label %626

614:                                              ; preds = %606
  %615 = load ptr, ptr %551, align 8, !tbaa !123
  %616 = ptrtoint ptr %608 to i64
  %617 = ptrtoint ptr %615 to i64
  %618 = sub i64 %616, %617
  %619 = load i32, ptr %553, align 8, !tbaa !125
  store i32 %619, ptr %554, align 4, !tbaa !126
  %620 = trunc i64 %618 to i32
  store i32 %620, ptr %553, align 8, !tbaa !125
  store ptr %615, ptr %552, align 8, !tbaa !124
  %621 = sub i64 0, %618
  %622 = getelementptr inbounds i8, ptr %1, i64 %621
  store ptr %622, ptr %551, align 8, !tbaa !123
  %623 = sub i32 %620, %619
  %624 = icmp ult i32 %623, 8
  br i1 %624, label %625, label %626

625:                                              ; preds = %614
  store i32 %620, ptr %554, align 4, !tbaa !126
  br label %626

626:                                              ; preds = %625, %614, %610
  %627 = phi i32 [ %613, %610 ], [ %620, %625 ], [ %620, %614 ]
  %628 = phi i32 [ %612, %610 ], [ %620, %625 ], [ %619, %614 ]
  %629 = phi ptr [ %611, %610 ], [ %615, %625 ], [ %615, %614 ]
  store ptr %607, ptr %549, align 8, !tbaa !127
  %630 = zext i32 %628 to i64
  %631 = getelementptr inbounds i8, ptr %629, i64 %630
  %632 = icmp ugt ptr %607, %631
  %633 = zext i32 %627 to i64
  %634 = getelementptr inbounds i8, ptr %629, i64 %633
  %635 = icmp ugt ptr %634, %1
  %636 = and i1 %632, %635
  br i1 %636, label %637, label %644

637:                                              ; preds = %626
  %638 = ptrtoint ptr %607 to i64
  %639 = ptrtoint ptr %629 to i64
  %640 = sub i64 %638, %639
  %641 = icmp ugt i64 %640, %633
  %642 = trunc i64 %640 to i32
  %643 = select i1 %641, i32 %627, i32 %642
  store i32 %643, ptr %554, align 4, !tbaa !126
  br label %644

644:                                              ; preds = %637, %626
  call void @ZSTD_ldm_fillHashTable(ptr noundef nonnull %549, ptr noundef %1, ptr noundef nonnull %607, ptr noundef nonnull %508) #17
  %645 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i64 0, i32 4
  %646 = load i32, ptr %645, align 8, !tbaa !129
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %648, label %654

648:                                              ; preds = %644
  %649 = load ptr, ptr %551, align 8, !tbaa !130
  %650 = ptrtoint ptr %607 to i64
  %651 = ptrtoint ptr %649 to i64
  %652 = sub i64 %650, %651
  %653 = trunc i64 %652 to i32
  br label %654

654:                                              ; preds = %648, %644
  %655 = phi i32 [ %653, %648 ], [ 0, %644 ]
  store i32 %655, ptr %602, align 8, !tbaa !128
  br label %656

656:                                              ; preds = %654, %599
  %657 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %657, ptr noundef nonnull align 8 dereferenceable(40) %549, i64 40, i1 false), !tbaa.struct !131
  br label %659

658:                                              ; preds = %591, %597
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8)
  br label %663

659:                                              ; preds = %656, %522
  %660 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %660, ptr noundef nonnull align 8 dereferenceable(224) %8, i64 224, i1 false), !tbaa.struct !98
  %661 = and i64 %507, 4294967295
  %662 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 2, i32 10
  store i64 %661, ptr %662, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8)
  br label %663

663:                                              ; preds = %196, %74, %199, %63, %19, %62, %659, %658, %486, %499, %305
  %664 = phi i64 [ -64, %486 ], [ -64, %305 ], [ -64, %499 ], [ 0, %659 ], [ -64, %658 ], [ -64, %62 ], [ -64, %19 ], [ -64, %63 ], [ -64, %199 ], [ -64, %74 ], [ -64, %196 ]
  ret i64 %664
}

declare ptr @ZSTD_createCDict_advanced(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.ZSTD_compressionParameters) align 8, ptr noundef byval(%struct.ZSTD_customMem) align 8) local_unnamed_addr #2

declare i64 @ZSTD_compressBound(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #7

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ZSTDMT_nextInputSizeHint(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 6
  %3 = load i64, ptr %2, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 9, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !71
  %6 = icmp eq i64 %3, %5
  %7 = select i1 %6, i64 0, i64 %5
  %8 = sub i64 %3, %7
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTDMT_compressStream_generic(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 16
  %6 = load i32, ptr %5, align 4, !tbaa !133
  %7 = icmp ne i32 %6, 0
  %8 = icmp eq i32 %3, 0
  %9 = and i1 %8, %7
  br i1 %9, label %1202, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !76
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %792

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %2, i64 0, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %2, i64 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = icmp ugt i64 %16, %18
  br i1 %19, label %20, label %792

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 9, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !134
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %216

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 15
  %26 = load i32, ptr %25, align 8, !tbaa !73
  %27 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 10, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !64
  %29 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 6
  %30 = load i64, ptr %29, align 8, !tbaa !107
  %31 = udiv i64 %28, %30
  %32 = zext i32 %26 to i64
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %64, label %34

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 14
  %36 = load i32, ptr %35, align 4, !tbaa !77
  %37 = icmp ult i32 %36, %26
  br i1 %37, label %38, label %64

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 13
  %40 = load i32, ptr %39, align 8, !tbaa !39
  %41 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !27
  br label %46

43:                                               ; preds = %46
  %44 = add nuw i32 %47, 1
  %45 = icmp eq i32 %44, %26
  br i1 %45, label %64, label %46, !llvm.loop !135

46:                                               ; preds = %43, %38
  %47 = phi i32 [ %36, %38 ], [ %44, %43 ]
  %48 = and i32 %47, %40
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %42, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !82
  %52 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %42, i64 %49, i32 10, i32 1
  %53 = load i64, ptr %52, align 8
  %54 = icmp ult i64 %51, %53
  br i1 %54, label %55, label %43

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %42, i64 %49, i32 10
  %57 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %42, i64 %49, i32 9
  %58 = getelementptr inbounds i8, ptr %57, i64 8
  %59 = load i64, ptr %58, align 8, !tbaa.struct !38
  %60 = icmp eq i64 %59, 0
  %61 = select i1 %60, ptr %56, ptr %57
  %62 = select i1 %60, i64 %53, i64 %59
  %63 = load ptr, ptr %61, align 8
  br label %64

64:                                               ; preds = %43, %55, %34, %24
  %65 = phi ptr [ null, %24 ], [ %63, %55 ], [ null, %34 ], [ null, %43 ]
  %66 = phi i64 [ 0, %24 ], [ %62, %55 ], [ 0, %34 ], [ 0, %43 ]
  %67 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 10
  %68 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 10, i32 2
  %69 = load i64, ptr %68, align 8, !tbaa !114
  %70 = sub i64 %28, %69
  %71 = icmp ult i64 %70, %30
  br i1 %71, label %72, label %143

72:                                               ; preds = %64
  %73 = load ptr, ptr %67, align 8, !tbaa !53
  %74 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 9, i32 0, i32 1
  %75 = load i64, ptr %74, align 8, !tbaa !116
  %76 = icmp eq ptr %65, null
  %77 = icmp eq ptr %73, null
  %78 = select i1 %76, i1 true, i1 %77
  br i1 %78, label %89, label %79

79:                                               ; preds = %72
  %80 = getelementptr inbounds i8, ptr %73, i64 %75
  %81 = getelementptr inbounds i8, ptr %65, i64 %66
  %82 = icmp eq i64 %75, 0
  %83 = icmp eq i64 %66, 0
  %84 = or i1 %83, %82
  %85 = icmp ule ptr %81, %73
  %86 = icmp ule ptr %80, %65
  %87 = select i1 %84, i1 true, i1 %85
  %88 = select i1 %87, i1 true, i1 %86
  br i1 %88, label %89, label %792

89:                                               ; preds = %79, %72
  %90 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 9
  %91 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 5, i32 13
  %92 = load i32, ptr %91, align 8, !tbaa !113
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %141

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 8
  %96 = load ptr, ptr %95, align 1
  %97 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 8, i32 1
  %98 = load ptr, ptr %97, align 1
  %99 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 8, i32 2
  %100 = load ptr, ptr %99, align 1
  %101 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 8, i32 3
  %102 = load i32, ptr %101, align 1
  %103 = icmp eq ptr %100, null
  %104 = select i1 %103, i1 true, i1 %77
  %105 = icmp eq ptr %98, null
  %106 = select i1 %105, i1 true, i1 %77
  %107 = zext i32 %102 to i64
  %108 = getelementptr inbounds i8, ptr %98, i64 %107
  %109 = getelementptr inbounds i8, ptr %73, i64 %75
  %110 = icmp ne i64 %75, 0
  %111 = icmp ne ptr %96, %108
  %112 = select i1 %110, i1 %111, i1 false
  %113 = icmp ugt ptr %96, %73
  %114 = icmp ugt ptr %109, %108
  %115 = select i1 %112, i1 %113, i1 false
  %116 = select i1 %115, i1 %114, i1 false
  br i1 %104, label %117, label %121

117:                                              ; preds = %94
  %118 = xor i1 %116, true
  %119 = select i1 %106, i1 true, i1 %118
  br i1 %119, label %141, label %120

120:                                              ; preds = %117, %120
  br label %120

121:                                              ; preds = %94
  %122 = icmp eq i64 %75, 0
  %123 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 8, i32 4
  %124 = load i32, ptr %123, align 1
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i8, ptr %100, i64 %125
  %127 = sub i32 %102, %124
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i8, ptr %126, i64 %128
  %130 = icmp eq i32 %102, %124
  %131 = select i1 %122, i1 true, i1 %130
  %132 = icmp ule ptr %129, %73
  %133 = icmp ule ptr %109, %126
  %134 = select i1 %131, i1 true, i1 %132
  %135 = select i1 %134, i1 true, i1 %133
  br i1 %135, label %136, label %140

136:                                              ; preds = %121
  %137 = xor i1 %116, true
  %138 = select i1 %106, i1 true, i1 %137
  br i1 %138, label %141, label %139

139:                                              ; preds = %136, %139
  br label %139

140:                                              ; preds = %121, %140
  br label %140

141:                                              ; preds = %136, %117, %89
  %142 = load ptr, ptr %90, align 8, !tbaa !115
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %73, ptr align 1 %142, i64 %75, i1 false)
  store ptr %73, ptr %90, align 8, !tbaa !115
  store i64 %75, ptr %68, align 8, !tbaa !114
  br label %143

143:                                              ; preds = %141, %64
  %144 = phi i64 [ %75, %141 ], [ %69, %64 ]
  %145 = load ptr, ptr %67, align 8, !tbaa !53
  %146 = getelementptr inbounds i8, ptr %145, i64 %144
  %147 = icmp eq ptr %65, null
  %148 = icmp eq ptr %145, null
  %149 = select i1 %147, i1 true, i1 %148
  br i1 %149, label %160, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds i8, ptr %146, i64 %30
  %152 = getelementptr inbounds i8, ptr %65, i64 %66
  %153 = icmp eq i64 %66, 0
  %154 = icmp ule ptr %152, %146
  %155 = icmp ule ptr %151, %65
  %156 = select i1 %153, i1 true, i1 %154
  %157 = select i1 %156, i1 true, i1 %155
  br i1 %157, label %160, label %158

158:                                              ; preds = %150
  %159 = load ptr, ptr %21, align 8, !tbaa !134
  br label %210

160:                                              ; preds = %150, %143
  %161 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 5, i32 13
  %162 = load i32, ptr %161, align 8, !tbaa !113
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %207

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 8
  %166 = load ptr, ptr %165, align 1
  %167 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 8, i32 1
  %168 = load ptr, ptr %167, align 1
  %169 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 8, i32 2
  %170 = load ptr, ptr %169, align 1
  %171 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 8, i32 3
  %172 = load i32, ptr %171, align 1
  %173 = icmp eq ptr %170, null
  %174 = select i1 %173, i1 true, i1 %148
  %175 = icmp eq ptr %168, null
  %176 = select i1 %175, i1 true, i1 %148
  %177 = zext i32 %172 to i64
  %178 = getelementptr inbounds i8, ptr %168, i64 %177
  %179 = getelementptr inbounds i8, ptr %146, i64 %30
  %180 = icmp ne ptr %166, %178
  %181 = icmp ugt ptr %166, %146
  %182 = icmp ugt ptr %179, %178
  %183 = select i1 %180, i1 %181, i1 false
  %184 = select i1 %183, i1 %182, i1 false
  br i1 %174, label %185, label %189

185:                                              ; preds = %164
  %186 = xor i1 %184, true
  %187 = select i1 %176, i1 true, i1 %186
  br i1 %187, label %207, label %188

188:                                              ; preds = %185, %188
  br label %188

189:                                              ; preds = %164
  %190 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 8, i32 4
  %191 = load i32, ptr %190, align 1
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i8, ptr %170, i64 %192
  %194 = sub i32 %172, %191
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i8, ptr %193, i64 %195
  %197 = icmp eq i32 %172, %191
  %198 = icmp ule ptr %196, %146
  %199 = icmp ule ptr %179, %193
  %200 = select i1 %197, i1 true, i1 %198
  %201 = select i1 %200, i1 true, i1 %199
  br i1 %201, label %202, label %206

202:                                              ; preds = %189
  %203 = xor i1 %184, true
  %204 = select i1 %176, i1 true, i1 %203
  br i1 %204, label %207, label %205

205:                                              ; preds = %202, %205
  br label %205

206:                                              ; preds = %189, %206
  br label %206

207:                                              ; preds = %202, %185, %160
  store ptr %146, ptr %21, align 8, !tbaa.struct !35
  %208 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 9, i32 1, i32 1
  store i64 %30, ptr %208, align 8, !tbaa.struct !38
  %209 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 9, i32 2
  store i64 0, ptr %209, align 8, !tbaa !71
  br label %210

210:                                              ; preds = %158, %207
  %211 = phi ptr [ %146, %207 ], [ %159, %158 ]
  %212 = icmp eq ptr %211, null
  br i1 %212, label %792, label %213

213:                                              ; preds = %210
  %214 = load i64, ptr %15, align 1
  %215 = load i64, ptr %17, align 1
  br label %216

216:                                              ; preds = %213, %20
  %217 = phi i64 [ %215, %213 ], [ %18, %20 ]
  %218 = phi i64 [ %214, %213 ], [ %16, %20 ]
  %219 = phi ptr [ %211, %213 ], [ %22, %20 ]
  %220 = load ptr, ptr %2, align 1
  %221 = getelementptr inbounds i8, ptr %220, i64 %217
  %222 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 12, i32 2
  %223 = load i64, ptr %222, align 8, !tbaa !111
  %224 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 12, i32 1
  %225 = load i64, ptr %224, align 8, !tbaa !110
  %226 = sub i64 %218, %217
  %227 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 6
  %228 = load i64, ptr %227, align 8, !tbaa !107
  %229 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 9, i32 2
  %230 = load i64, ptr %229, align 8, !tbaa !71
  %231 = sub i64 %228, %230
  %232 = tail call i64 @llvm.umin.i64(i64 %226, i64 %231)
  %233 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 5, i32 12
  %234 = load i32, ptr %233, align 4, !tbaa !136
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %780, label %236

236:                                              ; preds = %216
  %237 = add i64 %230, %226
  %238 = icmp ult i64 %237, 131072
  %239 = add i64 %232, %230
  %240 = icmp ult i64 %239, 32
  %241 = select i1 %238, i1 true, i1 %240
  br i1 %241, label %780, label %242

242:                                              ; preds = %236
  %243 = icmp ult i64 %230, 131072
  br i1 %243, label %244, label %541

244:                                              ; preds = %242
  %245 = sub nuw nsw i64 131072, %230
  %246 = icmp ult i64 %230, 131041
  br i1 %246, label %247, label %438

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %221, i64 %245
  %249 = getelementptr inbounds i8, ptr %248, i64 -32
  %250 = load i8, ptr %249, align 1, !tbaa !137
  %251 = zext i8 %250 to i64
  %252 = getelementptr inbounds i8, ptr %248, i64 -31
  %253 = load i8, ptr %252, align 1, !tbaa !137
  %254 = zext i8 %253 to i64
  %255 = mul i64 %251, -3523014627327384477
  %256 = add i64 %255, 1663341874145258472
  %257 = add i64 %256, %254
  %258 = getelementptr inbounds i8, ptr %248, i64 -30
  %259 = load i8, ptr %258, align 1, !tbaa !137
  %260 = zext i8 %259 to i64
  %261 = mul i64 %257, -3523014627327384477
  %262 = add nuw nsw i64 %260, 10
  %263 = add i64 %262, %261
  %264 = getelementptr inbounds i8, ptr %248, i64 -29
  %265 = load i8, ptr %264, align 1, !tbaa !137
  %266 = zext i8 %265 to i64
  %267 = mul i64 %263, -3523014627327384477
  %268 = add nuw nsw i64 %266, 10
  %269 = add i64 %268, %267
  %270 = getelementptr inbounds i8, ptr %248, i64 -28
  %271 = load i8, ptr %270, align 1, !tbaa !137
  %272 = zext i8 %271 to i64
  %273 = mul i64 %269, -3523014627327384477
  %274 = add nuw nsw i64 %272, 10
  %275 = add i64 %274, %273
  %276 = getelementptr inbounds i8, ptr %248, i64 -27
  %277 = load i8, ptr %276, align 1, !tbaa !137
  %278 = zext i8 %277 to i64
  %279 = mul i64 %275, -3523014627327384477
  %280 = add nuw nsw i64 %278, 10
  %281 = add i64 %280, %279
  %282 = getelementptr inbounds i8, ptr %248, i64 -26
  %283 = load i8, ptr %282, align 1, !tbaa !137
  %284 = zext i8 %283 to i64
  %285 = mul i64 %281, -3523014627327384477
  %286 = add nuw nsw i64 %284, 10
  %287 = add i64 %286, %285
  %288 = getelementptr inbounds i8, ptr %248, i64 -25
  %289 = load i8, ptr %288, align 1, !tbaa !137
  %290 = zext i8 %289 to i64
  %291 = mul i64 %287, -3523014627327384477
  %292 = add nuw nsw i64 %290, 10
  %293 = add i64 %292, %291
  %294 = getelementptr inbounds i8, ptr %248, i64 -24
  %295 = load i8, ptr %294, align 1, !tbaa !137
  %296 = zext i8 %295 to i64
  %297 = mul i64 %293, -3523014627327384477
  %298 = add nuw nsw i64 %296, 10
  %299 = add i64 %298, %297
  %300 = getelementptr inbounds i8, ptr %248, i64 -23
  %301 = load i8, ptr %300, align 1, !tbaa !137
  %302 = zext i8 %301 to i64
  %303 = mul i64 %299, -3523014627327384477
  %304 = add nuw nsw i64 %302, 10
  %305 = add i64 %304, %303
  %306 = getelementptr inbounds i8, ptr %248, i64 -22
  %307 = load i8, ptr %306, align 1, !tbaa !137
  %308 = zext i8 %307 to i64
  %309 = mul i64 %305, -3523014627327384477
  %310 = add nuw nsw i64 %308, 10
  %311 = add i64 %310, %309
  %312 = getelementptr inbounds i8, ptr %248, i64 -21
  %313 = load i8, ptr %312, align 1, !tbaa !137
  %314 = zext i8 %313 to i64
  %315 = mul i64 %311, -3523014627327384477
  %316 = add nuw nsw i64 %314, 10
  %317 = add i64 %316, %315
  %318 = getelementptr inbounds i8, ptr %248, i64 -20
  %319 = load i8, ptr %318, align 1, !tbaa !137
  %320 = zext i8 %319 to i64
  %321 = mul i64 %317, -3523014627327384477
  %322 = add nuw nsw i64 %320, 10
  %323 = add i64 %322, %321
  %324 = getelementptr inbounds i8, ptr %248, i64 -19
  %325 = load i8, ptr %324, align 1, !tbaa !137
  %326 = zext i8 %325 to i64
  %327 = mul i64 %323, -3523014627327384477
  %328 = add nuw nsw i64 %326, 10
  %329 = add i64 %328, %327
  %330 = getelementptr inbounds i8, ptr %248, i64 -18
  %331 = load i8, ptr %330, align 1, !tbaa !137
  %332 = zext i8 %331 to i64
  %333 = mul i64 %329, -3523014627327384477
  %334 = add nuw nsw i64 %332, 10
  %335 = add i64 %334, %333
  %336 = getelementptr inbounds i8, ptr %248, i64 -17
  %337 = load i8, ptr %336, align 1, !tbaa !137
  %338 = zext i8 %337 to i64
  %339 = mul i64 %335, -3523014627327384477
  %340 = add nuw nsw i64 %338, 10
  %341 = add i64 %340, %339
  %342 = getelementptr inbounds i8, ptr %248, i64 -16
  %343 = load i8, ptr %342, align 1, !tbaa !137
  %344 = zext i8 %343 to i64
  %345 = mul i64 %341, -3523014627327384477
  %346 = add nuw nsw i64 %344, 10
  %347 = add i64 %346, %345
  %348 = getelementptr inbounds i8, ptr %248, i64 -15
  %349 = load i8, ptr %348, align 1, !tbaa !137
  %350 = zext i8 %349 to i64
  %351 = mul i64 %347, -3523014627327384477
  %352 = add nuw nsw i64 %350, 10
  %353 = add i64 %352, %351
  %354 = getelementptr inbounds i8, ptr %248, i64 -14
  %355 = load i8, ptr %354, align 1, !tbaa !137
  %356 = zext i8 %355 to i64
  %357 = mul i64 %353, -3523014627327384477
  %358 = add nuw nsw i64 %356, 10
  %359 = add i64 %358, %357
  %360 = getelementptr inbounds i8, ptr %248, i64 -13
  %361 = load i8, ptr %360, align 1, !tbaa !137
  %362 = zext i8 %361 to i64
  %363 = mul i64 %359, -3523014627327384477
  %364 = add nuw nsw i64 %362, 10
  %365 = add i64 %364, %363
  %366 = getelementptr inbounds i8, ptr %248, i64 -12
  %367 = load i8, ptr %366, align 1, !tbaa !137
  %368 = zext i8 %367 to i64
  %369 = mul i64 %365, -3523014627327384477
  %370 = add nuw nsw i64 %368, 10
  %371 = add i64 %370, %369
  %372 = getelementptr inbounds i8, ptr %248, i64 -11
  %373 = load i8, ptr %372, align 1, !tbaa !137
  %374 = zext i8 %373 to i64
  %375 = mul i64 %371, -3523014627327384477
  %376 = add nuw nsw i64 %374, 10
  %377 = add i64 %376, %375
  %378 = getelementptr inbounds i8, ptr %248, i64 -10
  %379 = load i8, ptr %378, align 1, !tbaa !137
  %380 = zext i8 %379 to i64
  %381 = mul i64 %377, -3523014627327384477
  %382 = add nuw nsw i64 %380, 10
  %383 = add i64 %382, %381
  %384 = getelementptr inbounds i8, ptr %248, i64 -9
  %385 = load i8, ptr %384, align 1, !tbaa !137
  %386 = zext i8 %385 to i64
  %387 = mul i64 %383, -3523014627327384477
  %388 = add nuw nsw i64 %386, 10
  %389 = add i64 %388, %387
  %390 = getelementptr inbounds i8, ptr %248, i64 -8
  %391 = load i8, ptr %390, align 1, !tbaa !137
  %392 = zext i8 %391 to i64
  %393 = mul i64 %389, -3523014627327384477
  %394 = add nuw nsw i64 %392, 10
  %395 = add i64 %394, %393
  %396 = getelementptr inbounds i8, ptr %248, i64 -7
  %397 = load i8, ptr %396, align 1, !tbaa !137
  %398 = zext i8 %397 to i64
  %399 = mul i64 %395, -3523014627327384477
  %400 = add nuw nsw i64 %398, 10
  %401 = add i64 %400, %399
  %402 = getelementptr inbounds i8, ptr %248, i64 -6
  %403 = load i8, ptr %402, align 1, !tbaa !137
  %404 = zext i8 %403 to i64
  %405 = mul i64 %401, -3523014627327384477
  %406 = add nuw nsw i64 %404, 10
  %407 = add i64 %406, %405
  %408 = getelementptr inbounds i8, ptr %248, i64 -5
  %409 = load i8, ptr %408, align 1, !tbaa !137
  %410 = zext i8 %409 to i64
  %411 = mul i64 %407, -3523014627327384477
  %412 = add nuw nsw i64 %410, 10
  %413 = add i64 %412, %411
  %414 = getelementptr inbounds i8, ptr %248, i64 -4
  %415 = load i8, ptr %414, align 1, !tbaa !137
  %416 = zext i8 %415 to i64
  %417 = mul i64 %413, -3523014627327384477
  %418 = add nuw nsw i64 %416, 10
  %419 = add i64 %418, %417
  %420 = getelementptr inbounds i8, ptr %248, i64 -3
  %421 = load i8, ptr %420, align 1, !tbaa !137
  %422 = zext i8 %421 to i64
  %423 = mul i64 %419, -3523014627327384477
  %424 = add nuw nsw i64 %422, 10
  %425 = add i64 %424, %423
  %426 = getelementptr inbounds i8, ptr %248, i64 -2
  %427 = load i8, ptr %426, align 1, !tbaa !137
  %428 = zext i8 %427 to i64
  %429 = mul i64 %425, -3523014627327384477
  %430 = add nuw nsw i64 %428, 10
  %431 = add i64 %430, %429
  %432 = getelementptr inbounds i8, ptr %248, i64 -1
  %433 = load i8, ptr %432, align 1, !tbaa !137
  %434 = zext i8 %433 to i64
  %435 = mul i64 %431, -3523014627327384477
  %436 = add nuw nsw i64 %434, 10
  %437 = add i64 %436, %435
  br label %752

438:                                              ; preds = %244
  %439 = getelementptr inbounds i8, ptr %219, i64 %230
  %440 = getelementptr inbounds i8, ptr %439, i64 -32
  %441 = getelementptr inbounds i8, ptr %440, i64 %245
  %442 = add nsw i64 %230, -131041
  %443 = and i64 %230, 3
  %444 = icmp ult i64 %442, 3
  br i1 %444, label %482, label %445

445:                                              ; preds = %438
  %446 = and i64 %230, 131068
  %447 = add nsw i64 %446, -131044
  br label %448

448:                                              ; preds = %448, %445
  %449 = phi i64 [ 0, %445 ], [ %479, %448 ]
  %450 = phi i64 [ 0, %445 ], [ %478, %448 ]
  %451 = phi i64 [ 0, %445 ], [ %480, %448 ]
  %452 = getelementptr inbounds i8, ptr %441, i64 %449
  %453 = load i8, ptr %452, align 1, !tbaa !137
  %454 = zext i8 %453 to i64
  %455 = mul i64 %450, -3523014627327384477
  %456 = add i64 %455, 10
  %457 = add i64 %456, %454
  %458 = or disjoint i64 %449, 1
  %459 = getelementptr inbounds i8, ptr %441, i64 %458
  %460 = load i8, ptr %459, align 1, !tbaa !137
  %461 = zext i8 %460 to i64
  %462 = mul i64 %457, -3523014627327384477
  %463 = add i64 %462, 10
  %464 = add i64 %463, %461
  %465 = or disjoint i64 %449, 2
  %466 = getelementptr inbounds i8, ptr %441, i64 %465
  %467 = load i8, ptr %466, align 1, !tbaa !137
  %468 = zext i8 %467 to i64
  %469 = mul i64 %464, -3523014627327384477
  %470 = add i64 %469, 10
  %471 = add i64 %470, %468
  %472 = or disjoint i64 %449, 3
  %473 = getelementptr inbounds i8, ptr %441, i64 %472
  %474 = load i8, ptr %473, align 1, !tbaa !137
  %475 = zext i8 %474 to i64
  %476 = mul i64 %471, -3523014627327384477
  %477 = add i64 %476, 10
  %478 = add i64 %477, %475
  %479 = add nuw nsw i64 %449, 4
  %480 = add i64 %451, 4
  %481 = icmp eq i64 %451, %447
  br i1 %481, label %482, label %448, !llvm.loop !138

482:                                              ; preds = %448, %438
  %483 = phi i64 [ undef, %438 ], [ %478, %448 ]
  %484 = phi i64 [ 0, %438 ], [ %479, %448 ]
  %485 = phi i64 [ 0, %438 ], [ %478, %448 ]
  %486 = icmp eq i64 %443, 0
  br i1 %486, label %500, label %487

487:                                              ; preds = %482, %487
  %488 = phi i64 [ %497, %487 ], [ %484, %482 ]
  %489 = phi i64 [ %496, %487 ], [ %485, %482 ]
  %490 = phi i64 [ %498, %487 ], [ 0, %482 ]
  %491 = getelementptr inbounds i8, ptr %441, i64 %488
  %492 = load i8, ptr %491, align 1, !tbaa !137
  %493 = zext i8 %492 to i64
  %494 = mul i64 %489, -3523014627327384477
  %495 = add i64 %494, 10
  %496 = add i64 %495, %493
  %497 = add nuw nsw i64 %488, 1
  %498 = add i64 %490, 1
  %499 = icmp eq i64 %498, %443
  br i1 %499, label %500, label %487, !llvm.loop !139

500:                                              ; preds = %487, %482
  %501 = phi i64 [ %483, %482 ], [ %496, %487 ]
  %502 = xor i64 %230, 131071
  %503 = and i64 %245, 3
  %504 = icmp ult i64 %502, 3
  br i1 %504, label %734, label %505

505:                                              ; preds = %500
  %506 = and i64 %245, 262140
  br label %507

507:                                              ; preds = %507, %505
  %508 = phi i64 [ 0, %505 ], [ %538, %507 ]
  %509 = phi i64 [ %501, %505 ], [ %537, %507 ]
  %510 = phi i64 [ 0, %505 ], [ %539, %507 ]
  %511 = getelementptr inbounds i8, ptr %221, i64 %508
  %512 = load i8, ptr %511, align 1, !tbaa !137
  %513 = zext i8 %512 to i64
  %514 = mul i64 %509, -3523014627327384477
  %515 = add i64 %514, 10
  %516 = add i64 %515, %513
  %517 = or disjoint i64 %508, 1
  %518 = getelementptr inbounds i8, ptr %221, i64 %517
  %519 = load i8, ptr %518, align 1, !tbaa !137
  %520 = zext i8 %519 to i64
  %521 = mul i64 %516, -3523014627327384477
  %522 = add i64 %521, 10
  %523 = add i64 %522, %520
  %524 = or disjoint i64 %508, 2
  %525 = getelementptr inbounds i8, ptr %221, i64 %524
  %526 = load i8, ptr %525, align 1, !tbaa !137
  %527 = zext i8 %526 to i64
  %528 = mul i64 %523, -3523014627327384477
  %529 = add i64 %528, 10
  %530 = add i64 %529, %527
  %531 = or disjoint i64 %508, 3
  %532 = getelementptr inbounds i8, ptr %221, i64 %531
  %533 = load i8, ptr %532, align 1, !tbaa !137
  %534 = zext i8 %533 to i64
  %535 = mul i64 %530, -3523014627327384477
  %536 = add i64 %535, 10
  %537 = add i64 %536, %534
  %538 = add nuw nsw i64 %508, 4
  %539 = add i64 %510, 4
  %540 = icmp eq i64 %539, %506
  br i1 %540, label %734, label %507, !llvm.loop !138

541:                                              ; preds = %242
  %542 = getelementptr inbounds i8, ptr %219, i64 %230
  %543 = getelementptr inbounds i8, ptr %542, i64 -32
  %544 = load i8, ptr %543, align 1, !tbaa !137
  %545 = zext i8 %544 to i64
  %546 = getelementptr inbounds i8, ptr %542, i64 -31
  %547 = load i8, ptr %546, align 1, !tbaa !137
  %548 = zext i8 %547 to i64
  %549 = mul i64 %545, -3523014627327384477
  %550 = add i64 %549, 1663341874145258472
  %551 = add i64 %550, %548
  %552 = getelementptr inbounds i8, ptr %542, i64 -30
  %553 = load i8, ptr %552, align 1, !tbaa !137
  %554 = zext i8 %553 to i64
  %555 = mul i64 %551, -3523014627327384477
  %556 = add nuw nsw i64 %554, 10
  %557 = add i64 %556, %555
  %558 = getelementptr inbounds i8, ptr %542, i64 -29
  %559 = load i8, ptr %558, align 1, !tbaa !137
  %560 = zext i8 %559 to i64
  %561 = mul i64 %557, -3523014627327384477
  %562 = add nuw nsw i64 %560, 10
  %563 = add i64 %562, %561
  %564 = getelementptr inbounds i8, ptr %542, i64 -28
  %565 = load i8, ptr %564, align 1, !tbaa !137
  %566 = zext i8 %565 to i64
  %567 = mul i64 %563, -3523014627327384477
  %568 = add nuw nsw i64 %566, 10
  %569 = add i64 %568, %567
  %570 = getelementptr inbounds i8, ptr %542, i64 -27
  %571 = load i8, ptr %570, align 1, !tbaa !137
  %572 = zext i8 %571 to i64
  %573 = mul i64 %569, -3523014627327384477
  %574 = add nuw nsw i64 %572, 10
  %575 = add i64 %574, %573
  %576 = getelementptr inbounds i8, ptr %542, i64 -26
  %577 = load i8, ptr %576, align 1, !tbaa !137
  %578 = zext i8 %577 to i64
  %579 = mul i64 %575, -3523014627327384477
  %580 = add nuw nsw i64 %578, 10
  %581 = add i64 %580, %579
  %582 = getelementptr inbounds i8, ptr %542, i64 -25
  %583 = load i8, ptr %582, align 1, !tbaa !137
  %584 = zext i8 %583 to i64
  %585 = mul i64 %581, -3523014627327384477
  %586 = add nuw nsw i64 %584, 10
  %587 = add i64 %586, %585
  %588 = getelementptr inbounds i8, ptr %542, i64 -24
  %589 = load i8, ptr %588, align 1, !tbaa !137
  %590 = zext i8 %589 to i64
  %591 = mul i64 %587, -3523014627327384477
  %592 = add nuw nsw i64 %590, 10
  %593 = add i64 %592, %591
  %594 = getelementptr inbounds i8, ptr %542, i64 -23
  %595 = load i8, ptr %594, align 1, !tbaa !137
  %596 = zext i8 %595 to i64
  %597 = mul i64 %593, -3523014627327384477
  %598 = add nuw nsw i64 %596, 10
  %599 = add i64 %598, %597
  %600 = getelementptr inbounds i8, ptr %542, i64 -22
  %601 = load i8, ptr %600, align 1, !tbaa !137
  %602 = zext i8 %601 to i64
  %603 = mul i64 %599, -3523014627327384477
  %604 = add nuw nsw i64 %602, 10
  %605 = add i64 %604, %603
  %606 = getelementptr inbounds i8, ptr %542, i64 -21
  %607 = load i8, ptr %606, align 1, !tbaa !137
  %608 = zext i8 %607 to i64
  %609 = mul i64 %605, -3523014627327384477
  %610 = add nuw nsw i64 %608, 10
  %611 = add i64 %610, %609
  %612 = getelementptr inbounds i8, ptr %542, i64 -20
  %613 = load i8, ptr %612, align 1, !tbaa !137
  %614 = zext i8 %613 to i64
  %615 = mul i64 %611, -3523014627327384477
  %616 = add nuw nsw i64 %614, 10
  %617 = add i64 %616, %615
  %618 = getelementptr inbounds i8, ptr %542, i64 -19
  %619 = load i8, ptr %618, align 1, !tbaa !137
  %620 = zext i8 %619 to i64
  %621 = mul i64 %617, -3523014627327384477
  %622 = add nuw nsw i64 %620, 10
  %623 = add i64 %622, %621
  %624 = getelementptr inbounds i8, ptr %542, i64 -18
  %625 = load i8, ptr %624, align 1, !tbaa !137
  %626 = zext i8 %625 to i64
  %627 = mul i64 %623, -3523014627327384477
  %628 = add nuw nsw i64 %626, 10
  %629 = add i64 %628, %627
  %630 = getelementptr inbounds i8, ptr %542, i64 -17
  %631 = load i8, ptr %630, align 1, !tbaa !137
  %632 = zext i8 %631 to i64
  %633 = mul i64 %629, -3523014627327384477
  %634 = add nuw nsw i64 %632, 10
  %635 = add i64 %634, %633
  %636 = getelementptr inbounds i8, ptr %542, i64 -16
  %637 = load i8, ptr %636, align 1, !tbaa !137
  %638 = zext i8 %637 to i64
  %639 = mul i64 %635, -3523014627327384477
  %640 = add nuw nsw i64 %638, 10
  %641 = add i64 %640, %639
  %642 = getelementptr inbounds i8, ptr %542, i64 -15
  %643 = load i8, ptr %642, align 1, !tbaa !137
  %644 = zext i8 %643 to i64
  %645 = mul i64 %641, -3523014627327384477
  %646 = add nuw nsw i64 %644, 10
  %647 = add i64 %646, %645
  %648 = getelementptr inbounds i8, ptr %542, i64 -14
  %649 = load i8, ptr %648, align 1, !tbaa !137
  %650 = zext i8 %649 to i64
  %651 = mul i64 %647, -3523014627327384477
  %652 = add nuw nsw i64 %650, 10
  %653 = add i64 %652, %651
  %654 = getelementptr inbounds i8, ptr %542, i64 -13
  %655 = load i8, ptr %654, align 1, !tbaa !137
  %656 = zext i8 %655 to i64
  %657 = mul i64 %653, -3523014627327384477
  %658 = add nuw nsw i64 %656, 10
  %659 = add i64 %658, %657
  %660 = getelementptr inbounds i8, ptr %542, i64 -12
  %661 = load i8, ptr %660, align 1, !tbaa !137
  %662 = zext i8 %661 to i64
  %663 = mul i64 %659, -3523014627327384477
  %664 = add nuw nsw i64 %662, 10
  %665 = add i64 %664, %663
  %666 = getelementptr inbounds i8, ptr %542, i64 -11
  %667 = load i8, ptr %666, align 1, !tbaa !137
  %668 = zext i8 %667 to i64
  %669 = mul i64 %665, -3523014627327384477
  %670 = add nuw nsw i64 %668, 10
  %671 = add i64 %670, %669
  %672 = getelementptr inbounds i8, ptr %542, i64 -10
  %673 = load i8, ptr %672, align 1, !tbaa !137
  %674 = zext i8 %673 to i64
  %675 = mul i64 %671, -3523014627327384477
  %676 = add nuw nsw i64 %674, 10
  %677 = add i64 %676, %675
  %678 = getelementptr inbounds i8, ptr %542, i64 -9
  %679 = load i8, ptr %678, align 1, !tbaa !137
  %680 = zext i8 %679 to i64
  %681 = mul i64 %677, -3523014627327384477
  %682 = add nuw nsw i64 %680, 10
  %683 = add i64 %682, %681
  %684 = getelementptr inbounds i8, ptr %542, i64 -8
  %685 = load i8, ptr %684, align 1, !tbaa !137
  %686 = zext i8 %685 to i64
  %687 = mul i64 %683, -3523014627327384477
  %688 = add nuw nsw i64 %686, 10
  %689 = add i64 %688, %687
  %690 = getelementptr inbounds i8, ptr %542, i64 -7
  %691 = load i8, ptr %690, align 1, !tbaa !137
  %692 = zext i8 %691 to i64
  %693 = mul i64 %689, -3523014627327384477
  %694 = add nuw nsw i64 %692, 10
  %695 = add i64 %694, %693
  %696 = getelementptr inbounds i8, ptr %542, i64 -6
  %697 = load i8, ptr %696, align 1, !tbaa !137
  %698 = zext i8 %697 to i64
  %699 = mul i64 %695, -3523014627327384477
  %700 = add nuw nsw i64 %698, 10
  %701 = add i64 %700, %699
  %702 = getelementptr inbounds i8, ptr %542, i64 -5
  %703 = load i8, ptr %702, align 1, !tbaa !137
  %704 = zext i8 %703 to i64
  %705 = mul i64 %701, -3523014627327384477
  %706 = add nuw nsw i64 %704, 10
  %707 = add i64 %706, %705
  %708 = getelementptr inbounds i8, ptr %542, i64 -4
  %709 = load i8, ptr %708, align 1, !tbaa !137
  %710 = zext i8 %709 to i64
  %711 = mul i64 %707, -3523014627327384477
  %712 = add nuw nsw i64 %710, 10
  %713 = add i64 %712, %711
  %714 = getelementptr inbounds i8, ptr %542, i64 -3
  %715 = load i8, ptr %714, align 1, !tbaa !137
  %716 = zext i8 %715 to i64
  %717 = mul i64 %713, -3523014627327384477
  %718 = add nuw nsw i64 %716, 10
  %719 = add i64 %718, %717
  %720 = getelementptr inbounds i8, ptr %542, i64 -2
  %721 = load i8, ptr %720, align 1, !tbaa !137
  %722 = zext i8 %721 to i64
  %723 = mul i64 %719, -3523014627327384477
  %724 = add nuw nsw i64 %722, 10
  %725 = add i64 %724, %723
  %726 = getelementptr inbounds i8, ptr %542, i64 -1
  %727 = load i8, ptr %726, align 1, !tbaa !137
  %728 = zext i8 %727 to i64
  %729 = mul i64 %725, -3523014627327384477
  %730 = add nuw nsw i64 %728, 10
  %731 = add i64 %730, %729
  %732 = and i64 %731, %225
  %733 = icmp eq i64 %732, %225
  br i1 %733, label %780, label %752

734:                                              ; preds = %507, %500
  %735 = phi i64 [ undef, %500 ], [ %537, %507 ]
  %736 = phi i64 [ 0, %500 ], [ %538, %507 ]
  %737 = phi i64 [ %501, %500 ], [ %537, %507 ]
  %738 = icmp eq i64 %503, 0
  br i1 %738, label %752, label %739

739:                                              ; preds = %734, %739
  %740 = phi i64 [ %749, %739 ], [ %736, %734 ]
  %741 = phi i64 [ %748, %739 ], [ %737, %734 ]
  %742 = phi i64 [ %750, %739 ], [ 0, %734 ]
  %743 = getelementptr inbounds i8, ptr %221, i64 %740
  %744 = load i8, ptr %743, align 1, !tbaa !137
  %745 = zext i8 %744 to i64
  %746 = mul i64 %741, -3523014627327384477
  %747 = add i64 %746, 10
  %748 = add i64 %747, %745
  %749 = add nuw nsw i64 %740, 1
  %750 = add i64 %742, 1
  %751 = icmp eq i64 %750, %503
  br i1 %751, label %752, label %739, !llvm.loop !141

752:                                              ; preds = %734, %739, %541, %247
  %753 = phi i64 [ %731, %541 ], [ %437, %247 ], [ %735, %734 ], [ %748, %739 ]
  %754 = phi ptr [ %543, %541 ], [ %249, %247 ], [ %440, %739 ], [ %440, %734 ]
  %755 = phi i64 [ 0, %541 ], [ %245, %247 ], [ %245, %739 ], [ %245, %734 ]
  %756 = icmp ult i64 %755, %232
  br i1 %756, label %757, label %780

757:                                              ; preds = %752, %778
  %758 = phi i64 [ %777, %778 ], [ %755, %752 ]
  %759 = phi i64 [ %774, %778 ], [ %753, %752 ]
  %760 = icmp ult i64 %758, 32
  %761 = getelementptr inbounds i8, ptr %754, i64 %758
  %762 = getelementptr i8, ptr %221, i64 %758
  %763 = getelementptr i8, ptr %762, i64 -32
  %764 = select i1 %760, ptr %761, ptr %763
  %765 = load i8, ptr %764, align 1, !tbaa !137
  %766 = load i8, ptr %762, align 1, !tbaa !137
  %767 = zext i8 %766 to i64
  %768 = add nuw nsw i64 %767, 10
  %769 = zext i8 %765 to i64
  %770 = add nuw nsw i64 %769, 10
  %771 = mul i64 %770, %223
  %772 = sub i64 %759, %771
  %773 = mul i64 %772, -3523014627327384477
  %774 = add i64 %768, %773
  %775 = and i64 %774, %225
  %776 = icmp eq i64 %775, %225
  %777 = add i64 %758, 1
  br i1 %776, label %780, label %778

778:                                              ; preds = %757
  %779 = icmp eq i64 %777, %232
  br i1 %779, label %780, label %757, !llvm.loop !142

780:                                              ; preds = %778, %757, %216, %236, %541, %752
  %781 = phi i64 [ %232, %216 ], [ %232, %236 ], [ 0, %541 ], [ %232, %752 ], [ %232, %778 ], [ %777, %757 ]
  %782 = phi i1 [ false, %216 ], [ false, %236 ], [ true, %541 ], [ false, %752 ], [ %776, %757 ], [ %776, %778 ]
  %783 = and i1 %8, %782
  %784 = select i1 %783, i32 1, i32 %3
  %785 = getelementptr inbounds i8, ptr %219, i64 %230
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %785, ptr align 1 %221, i64 %781, i1 false)
  %786 = load i64, ptr %17, align 8, !tbaa !143
  %787 = add i64 %786, %781
  store i64 %787, ptr %17, align 8, !tbaa !143
  %788 = load i64, ptr %229, align 8, !tbaa !71
  %789 = add i64 %788, %781
  store i64 %789, ptr %229, align 8, !tbaa !71
  %790 = icmp eq i64 %781, 0
  %791 = zext i1 %790 to i32
  br label %792

792:                                              ; preds = %79, %210, %780, %14, %10
  %793 = phi i32 [ 1, %10 ], [ %791, %780 ], [ 1, %210 ], [ 1, %14 ], [ 1, %79 ]
  %794 = phi i32 [ %3, %10 ], [ %784, %780 ], [ %3, %210 ], [ %3, %14 ], [ %3, %79 ]
  %795 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %2, i64 0, i32 2
  %796 = load i64, ptr %795, align 8, !tbaa !143
  %797 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %2, i64 0, i32 1
  %798 = load i64, ptr %797, align 8, !tbaa !145
  %799 = icmp ult i64 %796, %798
  %800 = icmp eq i32 %794, 2
  %801 = and i1 %800, %799
  %802 = select i1 %801, i32 1, i32 %794
  %803 = load i32, ptr %11, align 8, !tbaa !76
  %804 = icmp eq i32 %803, 0
  %805 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 9, i32 2
  %806 = load i64, ptr %805, align 8, !tbaa !71
  br i1 %804, label %807, label %820

807:                                              ; preds = %792
  %808 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 6
  %809 = load i64, ptr %808, align 8, !tbaa !107
  %810 = icmp ult i64 %806, %809
  br i1 %810, label %811, label %820

811:                                              ; preds = %807
  %812 = icmp eq i32 %802, 0
  %813 = icmp eq i64 %806, 0
  %814 = or i1 %812, %813
  br i1 %814, label %815, label %820

815:                                              ; preds = %811
  %816 = icmp eq i32 %802, 2
  br i1 %816, label %817, label %977

817:                                              ; preds = %815
  %818 = load i32, ptr %5, align 4, !tbaa !133
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %820, label %977

820:                                              ; preds = %792, %811, %817, %807
  %821 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 15
  %822 = load i32, ptr %821, align 8, !tbaa !73
  %823 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 13
  %824 = load i32, ptr %823, align 8, !tbaa !39
  %825 = and i32 %824, %822
  %826 = icmp eq i32 %802, 2
  %827 = zext i1 %826 to i32
  %828 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 14
  %829 = load i32, ptr %828, align 4, !tbaa !77
  %830 = add i32 %829, %824
  %831 = icmp ugt i32 %822, %830
  br i1 %831, label %977, label %832

832:                                              ; preds = %820
  br i1 %804, label %837, label %833

833:                                              ; preds = %832
  %834 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 1
  %835 = load ptr, ptr %834, align 8, !tbaa !27
  %836 = zext i32 %825 to i64
  br label %965

837:                                              ; preds = %832
  %838 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 9
  %839 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 9, i32 1
  %840 = load ptr, ptr %839, align 8, !tbaa !134
  %841 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 1
  %842 = load ptr, ptr %841, align 8, !tbaa !27
  %843 = zext i32 %825 to i64
  %844 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %842, i64 %843, i32 10
  store ptr %840, ptr %844, align 8, !tbaa !146
  %845 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %842, i64 %843, i32 10, i32 1
  store i64 %806, ptr %845, align 8, !tbaa !81
  %846 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %842, i64 %843, i32 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %846, ptr noundef nonnull align 8 dereferenceable(16) %838, i64 16, i1 false), !tbaa.struct !35
  %847 = load ptr, ptr %841, align 8, !tbaa !27
  %848 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %847, i64 %843
  %849 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %847, i64 %843, i32 14
  %850 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %848, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %849, ptr noundef nonnull align 8 dereferenceable(224) %850, i64 224, i1 false), !tbaa.struct !98
  %851 = load i32, ptr %821, align 8, !tbaa !73
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %853, label %856

853:                                              ; preds = %837
  %854 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 23
  %855 = load ptr, ptr %854, align 8, !tbaa !100
  br label %856

856:                                              ; preds = %853, %837
  %857 = phi ptr [ %855, %853 ], [ null, %837 ]
  %858 = load ptr, ptr %841, align 8, !tbaa !27
  %859 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %858, i64 %843, i32 15
  store ptr %857, ptr %859, align 8, !tbaa !147
  %860 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 18
  %861 = load i64, ptr %860, align 8, !tbaa !99
  %862 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %858, i64 %843, i32 16
  store i64 %861, ptr %862, align 8, !tbaa !148
  %863 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %858, i64 %843, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %863, i8 0, i64 16, i1 false)
  %864 = load ptr, ptr %841, align 8, !tbaa !27
  %865 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %864, i64 %843, i32 4
  %866 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 2
  %867 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %864, i64 %843, i32 5
  %868 = load <2 x ptr>, ptr %866, align 8, !tbaa !36
  %869 = shufflevector <2 x ptr> %868, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %869, ptr %865, align 8, !tbaa !36
  %870 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 4
  %871 = load ptr, ptr %870, align 8, !tbaa !47
  %872 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %864, i64 %843, i32 6
  store ptr %871, ptr %872, align 8, !tbaa !149
  %873 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11
  %874 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %864, i64 %843, i32 7
  store ptr %873, ptr %874, align 8, !tbaa !150
  %875 = load i32, ptr %821, align 8, !tbaa !73
  %876 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %864, i64 %843, i32 11
  store i32 %875, ptr %876, align 8, !tbaa !151
  %877 = icmp eq i32 %875, 0
  %878 = zext i1 %877 to i32
  %879 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %864, i64 %843, i32 12
  store i32 %878, ptr %879, align 4, !tbaa !152
  %880 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %864, i64 %843, i32 13
  store i32 %827, ptr %880, align 8, !tbaa !153
  %881 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 5, i32 2, i32 1
  %882 = load i32, ptr %881, align 4, !tbaa !154
  %883 = icmp ne i32 %882, 0
  %884 = and i1 %826, %883
  %885 = icmp ne i32 %875, 0
  %886 = select i1 %884, i1 %885, i1 false
  %887 = zext i1 %886 to i32
  %888 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %864, i64 %843, i32 18
  store i32 %887, ptr %888, align 8, !tbaa !155
  %889 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %864, i64 %843, i32 17
  store i64 0, ptr %889, align 8, !tbaa !80
  %890 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 10, i32 2
  %891 = load i64, ptr %890, align 8, !tbaa !114
  %892 = add i64 %891, %806
  store i64 %892, ptr %890, align 8, !tbaa !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %839, i8 0, i64 24, i1 false)
  br i1 %826, label %893, label %894

893:                                              ; preds = %856
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %838, i8 0, i64 16, i1 false)
  store i32 %827, ptr %5, align 4, !tbaa !133
  br i1 %877, label %904, label %905

894:                                              ; preds = %856
  %895 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 7
  %896 = load i64, ptr %895, align 8, !tbaa !106
  %897 = tail call i64 @llvm.umin.i64(i64 %896, i64 %806)
  %898 = getelementptr inbounds i8, ptr %840, i64 %806
  %899 = sub i64 0, %897
  %900 = getelementptr inbounds i8, ptr %898, i64 %899
  store ptr %900, ptr %838, align 8, !tbaa !115
  %901 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 9, i32 0, i32 1
  store i64 %897, ptr %901, align 8, !tbaa !116
  %902 = icmp ne i64 %806, 0
  %903 = select i1 %902, i1 true, i1 %877
  br i1 %903, label %965, label %907

904:                                              ; preds = %893
  store i32 0, ptr %881, align 4, !tbaa !154
  br label %965

905:                                              ; preds = %893
  %906 = icmp eq i64 %806, 0
  br i1 %906, label %907, label %965

907:                                              ; preds = %905, %894
  %908 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %864, i64 %843, i32 8
  %909 = load ptr, ptr %867, align 8, !tbaa !156
  %910 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %909, i64 0, i32 1
  %911 = load i64, ptr %910, align 8, !tbaa !112
  %912 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %909, i64 0, i32 3
  %913 = load i32, ptr %912, align 4, !tbaa !31
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %938, label %915

915:                                              ; preds = %907
  %916 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %909, i64 0, i32 5
  %917 = load ptr, ptr %916, align 8, !tbaa !34
  %918 = add i32 %913, -1
  store i32 %918, ptr %912, align 4, !tbaa !31
  %919 = zext i32 %918 to i64
  %920 = getelementptr inbounds %struct.buffer_s, ptr %917, i64 %919
  %921 = load ptr, ptr %920, align 8, !tbaa.struct !35
  %922 = getelementptr inbounds i8, ptr %920, i64 8
  %923 = load i64, ptr %922, align 8, !tbaa.struct !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %920, i8 0, i64 16, i1 false)
  %924 = icmp ult i64 %923, %911
  %925 = lshr i64 %923, 3
  %926 = icmp ugt i64 %925, %911
  %927 = or i1 %924, %926
  br i1 %927, label %928, label %952

928:                                              ; preds = %915
  %929 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %909, i64 0, i32 4, i32 1
  %930 = load ptr, ptr %929, align 8
  %931 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %909, i64 0, i32 4, i32 2
  %932 = load ptr, ptr %931, align 8
  %933 = icmp eq ptr %921, null
  br i1 %933, label %938, label %934

934:                                              ; preds = %928
  %935 = icmp eq ptr %930, null
  br i1 %935, label %937, label %936

936:                                              ; preds = %934
  tail call void %930(ptr noundef %932, ptr noundef nonnull %921) #17
  br label %938

937:                                              ; preds = %934
  tail call void @free(ptr noundef nonnull %921) #17
  br label %938

938:                                              ; preds = %937, %936, %928, %907
  %939 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %909, i64 0, i32 4
  %940 = load ptr, ptr %939, align 8, !tbaa !91
  %941 = icmp eq ptr %940, null
  br i1 %941, label %946, label %942

942:                                              ; preds = %938
  %943 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %909, i64 0, i32 4, i32 2
  %944 = load ptr, ptr %943, align 8
  %945 = tail call ptr %940(ptr noundef %944, i64 noundef %911) #17
  br label %948

946:                                              ; preds = %938
  %947 = tail call noalias ptr @malloc(i64 noundef %911) #20
  br label %948

948:                                              ; preds = %946, %942
  %949 = phi ptr [ %945, %942 ], [ %947, %946 ]
  %950 = icmp eq ptr %949, null
  %951 = select i1 %950, i64 0, i64 %911
  br label %952

952:                                              ; preds = %948, %915
  %953 = phi ptr [ %949, %948 ], [ %921, %915 ]
  %954 = phi i64 [ %951, %948 ], [ %923, %915 ]
  store ptr %953, ptr %908, align 8, !tbaa.struct !35
  %955 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %864, i64 %843, i32 8, i32 1
  store i64 %954, ptr %955, align 8, !tbaa.struct !38
  %956 = icmp eq ptr %953, null
  br i1 %956, label %960, label %957

957:                                              ; preds = %952
  %958 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %864, i64 %843, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %958, i8 0, i64 16, i1 false)
  %959 = tail call i64 @ZSTD_writeLastEmptyBlock(ptr noundef nonnull %953, i64 noundef %954) #17
  br label %960

960:                                              ; preds = %957, %952
  %961 = phi i64 [ %959, %957 ], [ -64, %952 ]
  %962 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %864, i64 %843, i32 1
  store i64 %961, ptr %962, align 8
  %963 = load i32, ptr %821, align 8, !tbaa !73
  %964 = add i32 %963, 1
  store i32 %964, ptr %821, align 8, !tbaa !73
  br label %977

965:                                              ; preds = %905, %904, %894, %833
  %966 = phi i64 [ %836, %833 ], [ %843, %894 ], [ %843, %904 ], [ %843, %905 ]
  %967 = phi ptr [ %835, %833 ], [ %864, %894 ], [ %864, %904 ], [ %864, %905 ]
  %968 = load ptr, ptr %0, align 8, !tbaa !5
  %969 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %967, i64 %966
  %970 = tail call i32 @POOL_tryAdd(ptr noundef %968, ptr noundef nonnull @ZSTDMT_compressionJob, ptr noundef %969) #17
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %975, label %972

972:                                              ; preds = %965
  %973 = load i32, ptr %821, align 8, !tbaa !73
  %974 = add i32 %973, 1
  store i32 %974, ptr %821, align 8, !tbaa !73
  br label %975

975:                                              ; preds = %972, %965
  %976 = phi i32 [ 0, %972 ], [ 1, %965 ]
  store i32 %976, ptr %11, align 8, !tbaa !76
  br label %977

977:                                              ; preds = %975, %960, %820, %817, %815
  %978 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 14
  %979 = load i32, ptr %978, align 4, !tbaa !77
  %980 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 13
  %981 = load i32, ptr %980, align 8, !tbaa !39
  %982 = and i32 %981, %979
  %983 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 1
  %984 = zext i32 %982 to i64
  %985 = icmp eq i32 %793, 0
  br i1 %985, label %986, label %988

986:                                              ; preds = %977
  %987 = load ptr, ptr %983, align 8, !tbaa !27
  br label %1006

988:                                              ; preds = %977
  %989 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 15
  %990 = load i32, ptr %989, align 8, !tbaa !73
  %991 = icmp ult i32 %979, %990
  %992 = load ptr, ptr %983, align 8, !tbaa !27
  br i1 %991, label %993, label %1006

993:                                              ; preds = %988
  %994 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %992, i64 %984, i32 17
  %995 = load i64, ptr %994, align 8, !tbaa !80
  %996 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %992, i64 %984, i32 1
  %997 = load i64, ptr %996, align 8, !tbaa !78
  %998 = icmp eq i64 %995, %997
  br i1 %998, label %999, label %1006

999:                                              ; preds = %993
  %1000 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %992, i64 %984, i32 10, i32 1
  %1001 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %992, i64 %984
  %1002 = load i64, ptr %1001, align 8, !tbaa !82
  %1003 = load i64, ptr %1000, align 8, !tbaa !81
  %1004 = icmp eq i64 %1002, %1003
  br i1 %1004, label %1006, label %1005, !llvm.loop !157

1005:                                             ; preds = %999, %1005
  br label %1005

1006:                                             ; preds = %999, %993, %988, %986
  %1007 = phi ptr [ %987, %986 ], [ %992, %993 ], [ %992, %999 ], [ %992, %988 ]
  %1008 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %1007, i64 %984
  %1009 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %1007, i64 %984, i32 1
  %1010 = load i64, ptr %1009, align 8, !tbaa !78
  %1011 = load i64, ptr %1008, align 8, !tbaa !82
  %1012 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %1007, i64 %984, i32 10, i32 1
  %1013 = load i64, ptr %1012, align 8, !tbaa !81
  %1014 = icmp ult i64 %1010, -119
  br i1 %1014, label %1078, label %1015

1015:                                             ; preds = %1006
  %1016 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 15
  %1017 = load i32, ptr %1016, align 8, !tbaa !73
  %1018 = icmp ult i32 %979, %1017
  br i1 %1018, label %1019, label %1032

1019:                                             ; preds = %1015, %1029
  %1020 = phi i32 [ %1030, %1029 ], [ %979, %1015 ]
  %1021 = and i32 %1020, %981
  %1022 = zext i32 %1021 to i64
  %1023 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %1007, i64 %1022
  %1024 = load i64, ptr %1023, align 8, !tbaa !82
  %1025 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %1007, i64 %1022, i32 10, i32 1
  %1026 = load i64, ptr %1025, align 8, !tbaa !81
  %1027 = icmp ult i64 %1024, %1026
  br i1 %1027, label %1028, label %1029, !llvm.loop !96

1028:                                             ; preds = %1019, %1028
  br label %1028

1029:                                             ; preds = %1019
  %1030 = add nuw i32 %1020, 1
  store i32 %1030, ptr %978, align 4, !tbaa !77
  %1031 = icmp eq i32 %1030, %1017
  br i1 %1031, label %1032, label %1019, !llvm.loop !97

1032:                                             ; preds = %1029, %1015
  %1033 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 2
  br label %1034

1034:                                             ; preds = %1067, %1032
  %1035 = phi ptr [ %1007, %1032 ], [ %1070, %1067 ]
  %1036 = phi i32 [ 0, %1032 ], [ %1072, %1067 ]
  %1037 = zext i32 %1036 to i64
  %1038 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %1035, i64 %1037, i32 2
  %1039 = load <2 x i32>, ptr %1038, align 8, !tbaa !29
  %1040 = load ptr, ptr %1033, align 8, !tbaa !30
  %1041 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %1035, i64 %1037, i32 8
  %1042 = load ptr, ptr %1041, align 8
  %1043 = getelementptr inbounds { ptr, i64 }, ptr %1041, i64 0, i32 1
  %1044 = load i64, ptr %1043, align 8
  %1045 = icmp eq ptr %1042, null
  br i1 %1045, label %1067, label %1046

1046:                                             ; preds = %1034
  %1047 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %1040, i64 0, i32 3
  %1048 = load i32, ptr %1047, align 4, !tbaa !31
  %1049 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %1040, i64 0, i32 2
  %1050 = load i32, ptr %1049, align 8, !tbaa !33
  %1051 = icmp ult i32 %1048, %1050
  br i1 %1051, label %1052, label %1059

1052:                                             ; preds = %1046
  %1053 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %1040, i64 0, i32 5
  %1054 = load ptr, ptr %1053, align 8, !tbaa !34
  %1055 = add nuw i32 %1048, 1
  store i32 %1055, ptr %1047, align 4, !tbaa !31
  %1056 = zext i32 %1048 to i64
  %1057 = getelementptr inbounds %struct.buffer_s, ptr %1054, i64 %1056
  store ptr %1042, ptr %1057, align 8, !tbaa.struct !35
  %1058 = getelementptr inbounds i8, ptr %1057, i64 8
  store i64 %1044, ptr %1058, align 8, !tbaa.struct !38
  br label %1067

1059:                                             ; preds = %1046
  %1060 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %1040, i64 0, i32 4, i32 1
  %1061 = load ptr, ptr %1060, align 8
  %1062 = icmp eq ptr %1061, null
  br i1 %1062, label %1066, label %1063

1063:                                             ; preds = %1059
  %1064 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %1040, i64 0, i32 4, i32 2
  %1065 = load ptr, ptr %1064, align 8
  tail call void %1061(ptr noundef %1065, ptr noundef nonnull %1042) #17
  br label %1067

1066:                                             ; preds = %1059
  tail call void @free(ptr noundef nonnull %1042) #17
  br label %1067

1067:                                             ; preds = %1066, %1063, %1052, %1034
  %1068 = load ptr, ptr %983, align 8, !tbaa !27
  %1069 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %1068, i64 %1037
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %1069, i8 0, i64 376, i1 false)
  %1070 = load ptr, ptr %983, align 8, !tbaa !27
  %1071 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %1070, i64 %1037, i32 2
  store <2 x i32> %1039, ptr %1071, align 8, !tbaa !29
  %1072 = add i32 %1036, 1
  %1073 = load i32, ptr %980, align 8, !tbaa !39
  %1074 = icmp ugt i32 %1072, %1073
  br i1 %1074, label %1075, label %1034, !llvm.loop !40

1075:                                             ; preds = %1067
  %1076 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 9, i32 1
  %1077 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1076, i8 0, i64 24, i1 false)
  store i32 1, ptr %1077, align 8, !tbaa !28
  br label %1195

1078:                                             ; preds = %1006
  %1079 = icmp eq i64 %1011, %1013
  br i1 %1079, label %1080, label %1092

1080:                                             ; preds = %1078
  %1081 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %1007, i64 %984, i32 18
  %1082 = load i32, ptr %1081, align 8, !tbaa !155
  %1083 = icmp eq i32 %1082, 0
  br i1 %1083, label %1092, label %1084

1084:                                             ; preds = %1080
  %1085 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 11, i32 4
  %1086 = tail call i64 @ZSTD_XXH64_digest(ptr nocapture noundef nonnull %1085) #21
  %1087 = trunc i64 %1086 to i32
  %1088 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %1007, i64 %984, i32 8
  %1089 = load ptr, ptr %1088, align 8, !tbaa !158
  %1090 = getelementptr inbounds i8, ptr %1089, i64 %1010
  store i32 %1087, ptr %1090, align 1, !tbaa !29
  %1091 = add nuw i64 %1010, 4
  store i64 %1091, ptr %1009, align 8, !tbaa !78
  store i32 0, ptr %1081, align 8, !tbaa !155
  br label %1094

1092:                                             ; preds = %1080, %1078
  %1093 = icmp eq i64 %1010, 0
  br i1 %1093, label %1174, label %1094

1094:                                             ; preds = %1092, %1084
  %1095 = phi i64 [ %1091, %1084 ], [ %1010, %1092 ]
  %1096 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %1007, i64 %984, i32 17
  %1097 = load i64, ptr %1096, align 8, !tbaa !80
  %1098 = sub i64 %1095, %1097
  %1099 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %1, i64 0, i32 1
  %1100 = load i64, ptr %1099, align 8, !tbaa !159
  %1101 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %1, i64 0, i32 2
  %1102 = load i64, ptr %1101, align 8, !tbaa !161
  %1103 = sub i64 %1100, %1102
  %1104 = tail call i64 @llvm.umin.i64(i64 %1098, i64 %1103)
  %1105 = icmp eq i64 %1104, 0
  br i1 %1105, label %1116, label %1106

1106:                                             ; preds = %1094
  %1107 = load ptr, ptr %1, align 8, !tbaa !162
  %1108 = getelementptr inbounds i8, ptr %1107, i64 %1102
  %1109 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %1007, i64 %984, i32 8
  %1110 = load ptr, ptr %1109, align 8, !tbaa !158
  %1111 = getelementptr inbounds i8, ptr %1110, i64 %1097
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1108, ptr align 1 %1111, i64 %1104, i1 false)
  %1112 = load i64, ptr %1101, align 8, !tbaa !161
  %1113 = load ptr, ptr %983, align 8, !tbaa !27
  %1114 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %1113, i64 %984, i32 17
  %1115 = load i64, ptr %1114, align 8, !tbaa !80
  br label %1116

1116:                                             ; preds = %1106, %1094
  %1117 = phi i64 [ %1115, %1106 ], [ %1097, %1094 ]
  %1118 = phi ptr [ %1113, %1106 ], [ %1007, %1094 ]
  %1119 = phi i64 [ %1112, %1106 ], [ %1102, %1094 ]
  %1120 = add i64 %1119, %1104
  store i64 %1120, ptr %1101, align 8, !tbaa !161
  %1121 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %1118, i64 %984, i32 17
  %1122 = add i64 %1117, %1104
  store i64 %1122, ptr %1121, align 8, !tbaa !80
  %1123 = icmp eq i64 %1122, %1095
  %1124 = select i1 %1079, i1 %1123, i1 false
  br i1 %1124, label %1125, label %1169

1125:                                             ; preds = %1116
  %1126 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 2
  %1127 = load ptr, ptr %1126, align 8, !tbaa !30
  %1128 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %1118, i64 %984, i32 8
  %1129 = load ptr, ptr %1128, align 8
  %1130 = getelementptr inbounds { ptr, i64 }, ptr %1128, i64 0, i32 1
  %1131 = load i64, ptr %1130, align 8
  %1132 = icmp eq ptr %1129, null
  br i1 %1132, label %1154, label %1133

1133:                                             ; preds = %1125
  %1134 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %1127, i64 0, i32 3
  %1135 = load i32, ptr %1134, align 4, !tbaa !31
  %1136 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %1127, i64 0, i32 2
  %1137 = load i32, ptr %1136, align 8, !tbaa !33
  %1138 = icmp ult i32 %1135, %1137
  br i1 %1138, label %1139, label %1146

1139:                                             ; preds = %1133
  %1140 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %1127, i64 0, i32 5
  %1141 = load ptr, ptr %1140, align 8, !tbaa !34
  %1142 = add nuw i32 %1135, 1
  store i32 %1142, ptr %1134, align 4, !tbaa !31
  %1143 = zext i32 %1135 to i64
  %1144 = getelementptr inbounds %struct.buffer_s, ptr %1141, i64 %1143
  store ptr %1129, ptr %1144, align 8, !tbaa.struct !35
  %1145 = getelementptr inbounds i8, ptr %1144, i64 8
  store i64 %1131, ptr %1145, align 8, !tbaa.struct !38
  br label %1154

1146:                                             ; preds = %1133
  %1147 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %1127, i64 0, i32 4, i32 1
  %1148 = load ptr, ptr %1147, align 8
  %1149 = icmp eq ptr %1148, null
  br i1 %1149, label %1153, label %1150

1150:                                             ; preds = %1146
  %1151 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %1127, i64 0, i32 4, i32 2
  %1152 = load ptr, ptr %1151, align 8
  tail call void %1148(ptr noundef %1152, ptr noundef nonnull %1129) #17
  br label %1154

1153:                                             ; preds = %1146
  tail call void @free(ptr noundef nonnull %1129) #17
  br label %1154

1154:                                             ; preds = %1153, %1150, %1139, %1125
  %1155 = load ptr, ptr %983, align 8, !tbaa !27
  %1156 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %1155, i64 %984, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1156, i8 0, i64 16, i1 false)
  %1157 = load ptr, ptr %983, align 8, !tbaa !27
  %1158 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %1157, i64 %984, i32 1
  store i64 0, ptr %1158, align 8, !tbaa !78
  %1159 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 19
  %1160 = load i64, ptr %1159, align 8, !tbaa !70
  %1161 = add i64 %1160, %1011
  store i64 %1161, ptr %1159, align 8, !tbaa !70
  %1162 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 20
  %1163 = load i64, ptr %1162, align 8, !tbaa !72
  %1164 = add i64 %1163, %1095
  store i64 %1164, ptr %1162, align 8, !tbaa !72
  %1165 = load i32, ptr %978, align 4, !tbaa !77
  %1166 = add i32 %1165, 1
  store i32 %1166, ptr %978, align 4, !tbaa !77
  %1167 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %1157, i64 %984, i32 17
  %1168 = load i64, ptr %1167, align 8, !tbaa !80
  br label %1169

1169:                                             ; preds = %1154, %1116
  %1170 = phi i64 [ %1122, %1116 ], [ %1168, %1154 ]
  %1171 = icmp ugt i64 %1095, %1170
  br i1 %1171, label %1172, label %1174

1172:                                             ; preds = %1169
  %1173 = sub i64 %1095, %1170
  br label %1195

1174:                                             ; preds = %1092, %1169
  %1175 = icmp ugt i64 %1013, %1011
  br i1 %1175, label %1195, label %1176

1176:                                             ; preds = %1174
  %1177 = load i32, ptr %978, align 4, !tbaa !77
  %1178 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 15
  %1179 = load i32, ptr %1178, align 8, !tbaa !73
  %1180 = icmp ult i32 %1177, %1179
  br i1 %1180, label %1195, label %1181

1181:                                             ; preds = %1176
  %1182 = load i32, ptr %11, align 8, !tbaa !76
  %1183 = icmp eq i32 %1182, 0
  br i1 %1183, label %1184, label %1195

1184:                                             ; preds = %1181
  %1185 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 9, i32 2
  %1186 = load i64, ptr %1185, align 8, !tbaa !71
  %1187 = icmp eq i64 %1186, 0
  br i1 %1187, label %1188, label %1195

1188:                                             ; preds = %1184
  %1189 = load i32, ptr %5, align 4, !tbaa !133
  %1190 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i64 0, i32 17
  store i32 %1189, ptr %1190, align 8, !tbaa !28
  %1191 = icmp eq i32 %802, 2
  br i1 %1191, label %1192, label %1195

1192:                                             ; preds = %1188
  %1193 = icmp eq i32 %1189, 0
  %1194 = zext i1 %1193 to i64
  br label %1195

1195:                                             ; preds = %1075, %1172, %1174, %1176, %1181, %1184, %1188, %1192
  %1196 = phi i64 [ %1194, %1192 ], [ 1, %1174 ], [ 1, %1176 ], [ 1, %1181 ], [ 1, %1184 ], [ 0, %1188 ], [ %1173, %1172 ], [ %1010, %1075 ]
  %1197 = load i64, ptr %795, align 8, !tbaa !143
  %1198 = load i64, ptr %797, align 8, !tbaa !145
  %1199 = icmp ult i64 %1197, %1198
  %1200 = tail call i64 @llvm.umax.i64(i64 %1196, i64 1)
  %1201 = select i1 %1199, i64 %1200, i64 %1196
  br label %1202

1202:                                             ; preds = %4, %1195
  %1203 = phi i64 [ %1201, %1195 ], [ -60, %4 ]
  ret i64 %1203
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare i64 @ZSTD_freeCCtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

declare i64 @ZSTD_sizeof_CCtx(ptr noundef) local_unnamed_addr #2

declare i32 @POOL_resize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ZSTDMT_expandBufferPool(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %49, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !33
  %7 = icmp ult i32 %6, %1
  br i1 %7, label %8, label %49

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa.struct !93
  %11 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %0, i64 0, i32 4, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa.struct !48
  %13 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %0, i64 0, i32 4, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa.struct !49
  %15 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !112
  tail call fastcc void @ZSTDMT_freeBufferPool(ptr noundef nonnull %0)
  %17 = icmp eq ptr %10, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %8
  %19 = tail call ptr %10(ptr noundef %14, i64 noundef 56) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %49, label %24

21:                                               ; preds = %8
  %22 = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %33

24:                                               ; preds = %18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %19, i8 0, i64 56, i1 false)
  %25 = zext i32 %1 to i64
  %26 = shl nuw nsw i64 %25, 4
  %27 = tail call ptr %10(ptr noundef %14, i64 noundef %26) #17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %19, i64 0, i32 5
  store ptr null, ptr %30, align 8, !tbaa !34
  br label %39

31:                                               ; preds = %24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %27, i8 0, i64 %26, i1 false)
  %32 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %19, i64 0, i32 5
  store ptr %27, ptr %32, align 8, !tbaa !34
  br label %41

33:                                               ; preds = %21
  %34 = zext i32 %1 to i64
  %35 = shl nuw nsw i64 %34, 4
  %36 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %35) #18
  %37 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %22, i64 0, i32 5
  store ptr %36, ptr %37, align 8, !tbaa !34
  %38 = icmp eq ptr %36, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %33, %29
  %40 = phi ptr [ %19, %29 ], [ %22, %33 ]
  tail call fastcc void @ZSTDMT_freeBufferPool(ptr noundef nonnull %40)
  br label %49

41:                                               ; preds = %33, %31
  %42 = phi ptr [ %19, %31 ], [ %22, %33 ]
  %43 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %42, i64 0, i32 1
  %44 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %42, i64 0, i32 2
  store i32 %1, ptr %44, align 8, !tbaa !33
  %45 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %42, i64 0, i32 3
  store i32 0, ptr %45, align 4, !tbaa !31
  %46 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %42, i64 0, i32 4
  store ptr %10, ptr %46, align 8, !tbaa.struct !93
  %47 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %42, i64 0, i32 4, i32 1
  store ptr %12, ptr %47, align 8, !tbaa.struct !48
  %48 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %42, i64 0, i32 4, i32 2
  store ptr %14, ptr %48, align 8, !tbaa.struct !49
  store i64 %16, ptr %43, align 8, !tbaa !112
  br label %49

49:                                               ; preds = %18, %21, %39, %41, %4, %2
  %50 = phi ptr [ null, %2 ], [ %0, %4 ], [ %42, %41 ], [ null, %39 ], [ null, %21 ], [ null, %18 ]
  ret ptr %50
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

declare ptr @ZSTD_createCCtx_advanced(ptr noundef byval(%struct.ZSTD_customMem) align 8) local_unnamed_addr #2

declare i64 @ZSTD_CCtxParams_setParameter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #7

declare i32 @ZSTD_cycleLog(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

declare void @ZSTD_ldm_adjustParameters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ZSTD_XXH64_reset(ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef byval(%struct.ldmParams_t) align 8, i64 noundef) local_unnamed_addr #2

declare void @ZSTD_ldm_fillHashTable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

declare i32 @POOL_tryAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ZSTDMT_compressionJob(ptr nocapture noundef %0) #1 {
  %2 = alloca %struct.ZSTD_CCtx_params_s, align 8
  %3 = alloca %struct.RawSeqStore_t, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %2) #17
  %4 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %2, ptr noundef nonnull align 8 dereferenceable(224) %4, i64 224, i1 false), !tbaa.struct !98
  %5 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !163
  %7 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !94
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %8, i32 -1)
  %12 = extractvalue { i32, i1 } %11, 1, !nosanitize !103
  br i1 %12, label %13, label %14, !nosanitize !103

13:                                               ; preds = %10
  tail call void @llvm.ubsantrap(i8 21) #19, !nosanitize !103
  unreachable, !nosanitize !103

14:                                               ; preds = %10
  %15 = extractvalue { i32, i1 } %11, 0, !nosanitize !103
  store i32 %15, ptr %7, align 8, !tbaa !94
  %16 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %6, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !36
  br label %24

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %6, i64 0, i32 3
  %23 = tail call ptr @ZSTD_createCCtx_advanced(ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %22) #17
  br label %24

24:                                               ; preds = %14, %21
  %25 = phi ptr [ %20, %14 ], [ %23, %21 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  %26 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !149
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %28 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %27, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !112, !noalias !164
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false), !alias.scope !164
  br label %79

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %27, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !31, !noalias !164
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %27, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !34, !noalias !164
  %39 = add i32 %34, -1
  store i32 %39, ptr %33, align 4, !tbaa !31, !noalias !164
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.buffer_s, ptr %38, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa.struct !35, !noalias !164
  %43 = getelementptr inbounds i8, ptr %41, i64 8
  %44 = load i64, ptr %43, align 8, !tbaa.struct !38, !noalias !164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false), !noalias !164
  %45 = icmp ult i64 %44, %29
  %46 = lshr i64 %44, 3
  %47 = icmp ugt i64 %46, %29
  %48 = or i1 %45, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %36
  %50 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %27, i64 0, i32 4, i32 1
  %51 = load ptr, ptr %50, align 8, !noalias !164
  %52 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %27, i64 0, i32 4, i32 2
  %53 = load ptr, ptr %52, align 8, !noalias !164
  %54 = icmp eq ptr %42, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = icmp eq ptr %51, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %55
  tail call void %51(ptr noundef %53, ptr noundef nonnull %42) #17, !noalias !164
  br label %59

58:                                               ; preds = %55
  tail call void @free(ptr noundef nonnull %42) #17, !noalias !164
  br label %59

59:                                               ; preds = %58, %57, %49, %32
  %60 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %27, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !91, !noalias !164
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %27, i64 0, i32 4, i32 2
  %65 = load ptr, ptr %64, align 8, !noalias !164
  %66 = tail call ptr %61(ptr noundef %65, i64 noundef %29) #17, !noalias !164
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
  %76 = getelementptr inbounds i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %76, i8 0, i64 24, i1 false), !alias.scope !167
  store ptr %74, ptr %3, align 8, !tbaa !170, !alias.scope !167
  %77 = udiv i64 %75, 12
  %78 = getelementptr inbounds %struct.RawSeqStore_t, ptr %3, i64 0, i32 4
  store i64 %77, ptr %78, align 8, !tbaa !172, !alias.scope !167
  br label %79

79:                                               ; preds = %31, %73
  %80 = phi ptr [ null, %31 ], [ %74, %73 ]
  %81 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 8
  %82 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 8, i32 1
  %83 = icmp eq ptr %25, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 1
  store i64 -64, ptr %85, align 8, !tbaa !78
  br label %356

86:                                               ; preds = %79
  %87 = load i64, ptr %82, align 8, !tbaa.struct !38
  %88 = load ptr, ptr %81, align 8, !tbaa.struct !35
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %142

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 5
  %92 = load ptr, ptr %91, align 8, !tbaa !156
  %93 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %92, i64 0, i32 1
  %94 = load i64, ptr %93, align 8, !tbaa !112
  %95 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %92, i64 0, i32 3
  %96 = load i32, ptr %95, align 4, !tbaa !31
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %121, label %98

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %92, i64 0, i32 5
  %100 = load ptr, ptr %99, align 8, !tbaa !34
  %101 = add i32 %96, -1
  store i32 %101, ptr %95, align 4, !tbaa !31
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.buffer_s, ptr %100, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa.struct !35
  %105 = getelementptr inbounds i8, ptr %103, i64 8
  %106 = load i64, ptr %105, align 8, !tbaa.struct !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %103, i8 0, i64 16, i1 false)
  %107 = icmp ult i64 %106, %94
  %108 = lshr i64 %106, 3
  %109 = icmp ugt i64 %108, %94
  %110 = or i1 %107, %109
  br i1 %110, label %111, label %135

111:                                              ; preds = %98
  %112 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %92, i64 0, i32 4, i32 1
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %92, i64 0, i32 4, i32 2
  %115 = load ptr, ptr %114, align 8
  %116 = icmp eq ptr %104, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %111
  %118 = icmp eq ptr %113, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %117
  tail call void %113(ptr noundef %115, ptr noundef nonnull %104) #17
  br label %121

120:                                              ; preds = %117
  tail call void @free(ptr noundef nonnull %104) #17
  br label %121

121:                                              ; preds = %120, %119, %111, %90
  %122 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %92, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !91
  %124 = icmp eq ptr %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %92, i64 0, i32 4, i32 2
  %127 = load ptr, ptr %126, align 8
  %128 = tail call ptr %123(ptr noundef %127, i64 noundef %94) #17
  br label %131

129:                                              ; preds = %121
  %130 = tail call noalias ptr @malloc(i64 noundef %94) #20
  br label %131

131:                                              ; preds = %129, %125
  %132 = phi ptr [ %128, %125 ], [ %130, %129 ]
  %133 = icmp eq ptr %132, null
  %134 = select i1 %133, i64 0, i64 %94
  br label %135

135:                                              ; preds = %98, %131
  %136 = phi ptr [ %132, %131 ], [ %104, %98 ]
  %137 = phi i64 [ %134, %131 ], [ %106, %98 ]
  %138 = icmp eq ptr %136, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 1
  store i64 -64, ptr %140, align 8, !tbaa !78
  br label %356

141:                                              ; preds = %135
  store ptr %136, ptr %81, align 8, !tbaa.struct !35
  store i64 %137, ptr %82, align 8, !tbaa.struct !38
  br label %142

142:                                              ; preds = %141, %86
  %143 = phi ptr [ %136, %141 ], [ %88, %86 ]
  %144 = phi i64 [ %137, %141 ], [ %87, %86 ]
  %145 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i64 0, i32 13
  %146 = load i32, ptr %145, align 8, !tbaa !104
  %147 = icmp eq i32 %146, 1
  %148 = icmp eq ptr %80, null
  %149 = select i1 %147, i1 %148, i1 false
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 1
  store i64 -64, ptr %151, align 8, !tbaa !78
  br label %356

152:                                              ; preds = %142
  %153 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 11
  %154 = load i32, ptr %153, align 8, !tbaa !151
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i64 0, i32 2, i32 1
  store i32 0, ptr %157, align 4, !tbaa !118
  br label %158

158:                                              ; preds = %156, %152
  store i32 2, ptr %145, align 8, !tbaa !104
  %159 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i64 0, i32 9
  store i32 0, ptr %159, align 4, !tbaa !89
  %160 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 7
  %161 = load ptr, ptr %160, align 8, !tbaa !150
  %162 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 10
  %163 = load ptr, ptr %162, align 8
  %164 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 10, i32 1
  %165 = load i64, ptr %164, align 8
  %166 = getelementptr inbounds %struct.SerialState, ptr %161, i64 0, i32 5
  %167 = load i32, ptr %166, align 8, !tbaa !117
  %168 = icmp ult i32 %167, %154
  br i1 %168, label %169, label %170, !llvm.loop !173

169:                                              ; preds = %158, %169
  br label %169

170:                                              ; preds = %158
  %171 = icmp eq i32 %167, %154
  br i1 %171, label %172, label %237

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.SerialState, ptr %161, i64 0, i32 2, i32 13
  %174 = load i32, ptr %173, align 8, !tbaa !174
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %228

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.SerialState, ptr %161, i64 0, i32 3
  %178 = icmp eq i64 %165, 0
  br i1 %178, label %225, label %179

179:                                              ; preds = %176
  %180 = load ptr, ptr %177, align 8, !tbaa !127
  %181 = icmp eq ptr %180, %163
  br i1 %181, label %182, label %189

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.SerialState, ptr %161, i64 0, i32 3, i32 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !124
  %185 = getelementptr inbounds %struct.SerialState, ptr %161, i64 0, i32 3, i32 0, i32 4
  %186 = load i32, ptr %185, align 4, !tbaa !126
  %187 = getelementptr inbounds %struct.SerialState, ptr %161, i64 0, i32 3, i32 0, i32 3
  %188 = load i32, ptr %187, align 8, !tbaa !125
  br label %205

189:                                              ; preds = %179
  %190 = getelementptr inbounds %struct.SerialState, ptr %161, i64 0, i32 3, i32 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !123
  %192 = ptrtoint ptr %180 to i64
  %193 = ptrtoint ptr %191 to i64
  %194 = sub i64 %192, %193
  %195 = getelementptr inbounds %struct.SerialState, ptr %161, i64 0, i32 3, i32 0, i32 3
  %196 = load i32, ptr %195, align 8, !tbaa !125
  %197 = getelementptr inbounds %struct.SerialState, ptr %161, i64 0, i32 3, i32 0, i32 4
  store i32 %196, ptr %197, align 4, !tbaa !126
  %198 = trunc i64 %194 to i32
  store i32 %198, ptr %195, align 8, !tbaa !125
  %199 = getelementptr inbounds %struct.SerialState, ptr %161, i64 0, i32 3, i32 0, i32 2
  store ptr %191, ptr %199, align 8, !tbaa !124
  %200 = sub i64 0, %194
  %201 = getelementptr inbounds i8, ptr %163, i64 %200
  store ptr %201, ptr %190, align 8, !tbaa !123
  %202 = sub i32 %198, %196
  %203 = icmp ult i32 %202, 8
  br i1 %203, label %204, label %205

204:                                              ; preds = %189
  store i32 %198, ptr %197, align 4, !tbaa !126
  br label %205

205:                                              ; preds = %204, %189, %182
  %206 = phi i32 [ %188, %182 ], [ %198, %204 ], [ %198, %189 ]
  %207 = phi i32 [ %186, %182 ], [ %198, %204 ], [ %196, %189 ]
  %208 = phi ptr [ %184, %182 ], [ %191, %204 ], [ %191, %189 ]
  %209 = getelementptr inbounds i8, ptr %163, i64 %165
  store ptr %209, ptr %177, align 8, !tbaa !127
  %210 = zext i32 %207 to i64
  %211 = getelementptr inbounds i8, ptr %208, i64 %210
  %212 = icmp ugt ptr %209, %211
  %213 = zext i32 %206 to i64
  %214 = getelementptr inbounds i8, ptr %208, i64 %213
  %215 = icmp ugt ptr %214, %163
  %216 = and i1 %212, %215
  br i1 %216, label %217, label %225

217:                                              ; preds = %205
  %218 = getelementptr inbounds %struct.SerialState, ptr %161, i64 0, i32 3, i32 0, i32 4
  %219 = ptrtoint ptr %209 to i64
  %220 = ptrtoint ptr %208 to i64
  %221 = sub i64 %219, %220
  %222 = icmp ugt i64 %221, %213
  %223 = trunc i64 %221 to i32
  %224 = select i1 %222, i32 %206, i32 %223
  store i32 %224, ptr %218, align 4, !tbaa !126
  br label %225

225:                                              ; preds = %217, %205, %176
  %226 = call i64 @ZSTD_ldm_generateSequences(ptr noundef nonnull %177, ptr noundef nonnull %3, ptr noundef nonnull %173, ptr noundef %163, i64 noundef %165) #17
  %227 = getelementptr inbounds %struct.SerialState, ptr %161, i64 0, i32 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %227, ptr noundef nonnull align 8 dereferenceable(40) %177, i64 40, i1 false), !tbaa.struct !131
  br label %228

228:                                              ; preds = %225, %172
  %229 = getelementptr inbounds %struct.SerialState, ptr %161, i64 0, i32 2, i32 2, i32 1
  %230 = load i32, ptr %229, align 4, !tbaa !175
  %231 = icmp ne i32 %230, 0
  %232 = icmp ne i64 %165, 0
  %233 = select i1 %231, i1 %232, i1 false
  br i1 %233, label %234, label %237

234:                                              ; preds = %228
  %235 = getelementptr inbounds %struct.SerialState, ptr %161, i64 0, i32 4
  %236 = call i32 @ZSTD_XXH64_update(ptr nocapture noundef nonnull %235, ptr nocapture noundef %163, i64 noundef %165) #17
  br label %237

237:                                              ; preds = %170, %228, %234
  %238 = load i32, ptr %166, align 8, !tbaa !117
  %239 = add i32 %238, 1
  store i32 %239, ptr %166, align 8, !tbaa !117
  %240 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 15
  %241 = load ptr, ptr %240, align 8, !tbaa !147
  %242 = icmp eq ptr %241, null
  br i1 %242, label %250, label %243

243:                                              ; preds = %237
  %244 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 16
  %245 = load i64, ptr %244, align 8, !tbaa !148
  %246 = call i64 @ZSTD_compressBegin_advanced_internal(ptr noundef nonnull %25, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %241, ptr noundef nonnull %2, i64 noundef %245) #17
  %247 = icmp ult i64 %246, -119
  br i1 %247, label %279, label %248

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 1
  store i64 %246, ptr %249, align 8, !tbaa !78
  br label %356

250:                                              ; preds = %237
  %251 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 12
  %252 = load i32, ptr %251, align 4, !tbaa !152
  %253 = icmp eq i32 %252, 0
  %254 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 16
  %255 = select i1 %253, ptr %164, ptr %254
  %256 = load i64, ptr %255, align 8, !tbaa !137
  %257 = zext i1 %253 to i32
  %258 = call i64 @ZSTD_CCtxParams_setParameter(ptr noundef nonnull %2, i32 noundef 1000, i32 noundef %257) #17
  %259 = icmp ult i64 %258, -119
  br i1 %259, label %262, label %260

260:                                              ; preds = %250
  %261 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 1
  store i64 %258, ptr %261, align 8, !tbaa !78
  br label %356

262:                                              ; preds = %250
  %263 = load i32, ptr %251, align 4, !tbaa !152
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %262
  %266 = call i64 @ZSTD_CCtxParams_setParameter(ptr noundef nonnull %2, i32 noundef 1012, i32 noundef 0) #17
  %267 = icmp ult i64 %266, -119
  br i1 %267, label %270, label %268

268:                                              ; preds = %265
  %269 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 1
  store i64 %266, ptr %269, align 8, !tbaa !78
  br label %356

270:                                              ; preds = %265, %262
  %271 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 9
  %272 = load ptr, ptr %271, align 8, !tbaa !176
  %273 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 9, i32 1
  %274 = load i64, ptr %273, align 8, !tbaa !177
  %275 = call i64 @ZSTD_compressBegin_advanced_internal(ptr noundef nonnull %25, ptr noundef %272, i64 noundef %274, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef nonnull %2, i64 noundef %256) #17
  %276 = icmp ult i64 %275, -119
  br i1 %276, label %279, label %277

277:                                              ; preds = %270
  %278 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 1
  store i64 %275, ptr %278, align 8, !tbaa !78
  br label %356

279:                                              ; preds = %243, %270
  %280 = getelementptr inbounds i8, ptr %3, i64 24
  %281 = load i64, ptr %280, align 8, !tbaa !178
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %279
  %284 = load ptr, ptr %3, align 8
  call void @ZSTD_referenceExternalSequences(ptr noundef nonnull %25, ptr noundef %284, i64 noundef %281) #17
  br label %285

285:                                              ; preds = %279, %283
  %286 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 12
  %287 = load i32, ptr %286, align 4, !tbaa !152
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %296

289:                                              ; preds = %285
  %290 = load ptr, ptr %162, align 8, !tbaa !146
  %291 = call i64 @ZSTD_compressContinue_public(ptr noundef nonnull %25, ptr noundef nonnull %143, i64 noundef %144, ptr noundef %290, i64 noundef 0) #17
  %292 = icmp ult i64 %291, -119
  br i1 %292, label %293, label %294

293:                                              ; preds = %289
  call void @ZSTD_invalidateRepCodes(ptr noundef nonnull %25) #17
  br label %296

294:                                              ; preds = %289
  %295 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 1
  store i64 %291, ptr %295, align 8, !tbaa !78
  br label %356

296:                                              ; preds = %293, %285
  %297 = load i64, ptr %164, align 8, !tbaa !81
  %298 = add i64 %297, 524287
  %299 = lshr i64 %298, 19
  %300 = trunc i64 %299 to i32
  %301 = load ptr, ptr %162, align 8, !tbaa !146
  %302 = getelementptr inbounds i8, ptr %143, i64 %144
  %303 = icmp sgt i32 %300, 1
  br i1 %303, label %304, label %325

304:                                              ; preds = %296
  %305 = ptrtoint ptr %302 to i64
  %306 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 1
  %307 = and i64 %299, 4294967295
  br label %308

308:                                              ; preds = %304, %317
  %309 = phi i64 [ 1, %304 ], [ %321, %317 ]
  %310 = phi ptr [ %301, %304 ], [ %323, %317 ]
  %311 = phi ptr [ %143, %304 ], [ %322, %317 ]
  %312 = ptrtoint ptr %311 to i64
  %313 = sub i64 %305, %312
  %314 = call i64 @ZSTD_compressContinue_public(ptr noundef nonnull %25, ptr noundef %311, i64 noundef %313, ptr noundef %310, i64 noundef 524288) #17
  %315 = icmp ult i64 %314, -119
  br i1 %315, label %317, label %316

316:                                              ; preds = %308
  store i64 %314, ptr %306, align 8, !tbaa !78
  br label %356

317:                                              ; preds = %308
  %318 = load i64, ptr %306, align 8, !tbaa !78
  %319 = add i64 %318, %314
  store i64 %319, ptr %306, align 8, !tbaa !78
  %320 = shl nuw nsw i64 %309, 19
  store i64 %320, ptr %0, align 8, !tbaa !82
  %321 = add nuw nsw i64 %309, 1
  %322 = getelementptr inbounds i8, ptr %311, i64 %314
  %323 = getelementptr inbounds i8, ptr %310, i64 524288
  %324 = icmp eq i64 %321, %307
  br i1 %324, label %325, label %308, !llvm.loop !179

325:                                              ; preds = %317, %296
  %326 = phi ptr [ %143, %296 ], [ %322, %317 ]
  %327 = phi ptr [ %301, %296 ], [ %323, %317 ]
  %328 = icmp sgt i32 %300, 0
  %329 = zext i1 %328 to i32
  %330 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 13
  %331 = load i32, ptr %330, align 8, !tbaa !153
  %332 = or i32 %331, %329
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %354, label %334

334:                                              ; preds = %325
  %335 = load i64, ptr %164, align 8, !tbaa !81
  %336 = and i64 %335, 524287
  %337 = icmp eq i64 %336, 0
  %338 = icmp ugt i64 %335, 524287
  %339 = and i1 %338, %337
  %340 = select i1 %339, i64 524288, i64 %336
  %341 = icmp eq i32 %331, 0
  %342 = ptrtoint ptr %302 to i64
  %343 = ptrtoint ptr %326 to i64
  %344 = sub i64 %342, %343
  br i1 %341, label %347, label %345

345:                                              ; preds = %334
  %346 = call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %25, ptr noundef %326, i64 noundef %344, ptr noundef %327, i64 noundef %340) #17
  br label %349

347:                                              ; preds = %334
  %348 = call i64 @ZSTD_compressContinue_public(ptr noundef nonnull %25, ptr noundef %326, i64 noundef %344, ptr noundef %327, i64 noundef %340) #17
  br label %349

349:                                              ; preds = %347, %345
  %350 = phi i64 [ %346, %345 ], [ %348, %347 ]
  %351 = icmp ult i64 %350, -119
  br i1 %351, label %354, label %352

352:                                              ; preds = %349
  %353 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 1
  store i64 %350, ptr %353, align 8, !tbaa !78
  br label %356

354:                                              ; preds = %349, %325
  %355 = phi i64 [ 0, %325 ], [ %350, %349 ]
  call void @ZSTD_CCtx_trace(ptr noundef nonnull %25, i64 noundef 0) #17
  br label %356

356:                                              ; preds = %352, %277, %260, %268, %316, %294, %248, %354, %150, %139, %84
  %357 = phi i64 [ 0, %84 ], [ 0, %139 ], [ 0, %150 ], [ 0, %248 ], [ 0, %352 ], [ %355, %354 ], [ 0, %294 ], [ 0, %316 ], [ 0, %268 ], [ 0, %260 ], [ 0, %277 ]
  %358 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 7
  %359 = load ptr, ptr %358, align 8, !tbaa !150
  %360 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 11
  %361 = load i32, ptr %360, align 8, !tbaa !151
  %362 = getelementptr inbounds %struct.SerialState, ptr %359, i64 0, i32 5
  %363 = load i32, ptr %362, align 8, !tbaa !117
  %364 = icmp ugt i32 %363, %361
  br i1 %364, label %377, label %365

365:                                              ; preds = %356
  %366 = add i32 %361, 1
  store i32 %366, ptr %362, align 8, !tbaa !117
  %367 = getelementptr inbounds %struct.SerialState, ptr %359, i64 0, i32 8
  %368 = load ptr, ptr %367, align 8, !tbaa !127
  %369 = getelementptr inbounds %struct.SerialState, ptr %359, i64 0, i32 8, i32 1
  %370 = load ptr, ptr %369, align 8, !tbaa !123
  %371 = ptrtoint ptr %368 to i64
  %372 = ptrtoint ptr %370 to i64
  %373 = sub i64 %371, %372
  %374 = trunc i64 %373 to i32
  %375 = getelementptr inbounds %struct.SerialState, ptr %359, i64 0, i32 8, i32 4
  store i32 %374, ptr %375, align 4, !tbaa !126
  %376 = getelementptr inbounds %struct.SerialState, ptr %359, i64 0, i32 8, i32 3
  store i32 %374, ptr %376, align 8, !tbaa !125
  br label %377

377:                                              ; preds = %356, %365
  %378 = load ptr, ptr %26, align 8, !tbaa !149
  %379 = load ptr, ptr %3, align 8, !tbaa !170
  %380 = getelementptr inbounds i8, ptr %3, i64 32
  %381 = load i64, ptr %380, align 8, !tbaa !172
  %382 = mul i64 %381, 12
  %383 = icmp eq ptr %379, null
  br i1 %383, label %405, label %384

384:                                              ; preds = %377
  %385 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %378, i64 0, i32 3
  %386 = load i32, ptr %385, align 4, !tbaa !31
  %387 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %378, i64 0, i32 2
  %388 = load i32, ptr %387, align 8, !tbaa !33
  %389 = icmp ult i32 %386, %388
  br i1 %389, label %390, label %397

390:                                              ; preds = %384
  %391 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %378, i64 0, i32 5
  %392 = load ptr, ptr %391, align 8, !tbaa !34
  %393 = add nuw i32 %386, 1
  store i32 %393, ptr %385, align 4, !tbaa !31
  %394 = zext i32 %386 to i64
  %395 = getelementptr inbounds %struct.buffer_s, ptr %392, i64 %394
  store ptr %379, ptr %395, align 8, !tbaa.struct !35
  %396 = getelementptr inbounds i8, ptr %395, i64 8
  store i64 %382, ptr %396, align 8, !tbaa.struct !38
  br label %405

397:                                              ; preds = %384
  %398 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %378, i64 0, i32 4, i32 1
  %399 = load ptr, ptr %398, align 8
  %400 = icmp eq ptr %399, null
  br i1 %400, label %404, label %401

401:                                              ; preds = %397
  %402 = getelementptr %struct.ZSTDMT_bufferPool_s, ptr %378, i64 0, i32 4, i32 2
  %403 = load ptr, ptr %402, align 8
  call void %399(ptr noundef %403, ptr noundef nonnull %379) #17
  br label %405

404:                                              ; preds = %397
  call void @free(ptr noundef nonnull %379) #17
  br label %405

405:                                              ; preds = %377, %390, %401, %404
  %406 = load ptr, ptr %5, align 8, !tbaa !163
  br i1 %83, label %421, label %407

407:                                              ; preds = %405
  %408 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %406, i64 0, i32 2
  %409 = load i32, ptr %408, align 8, !tbaa !94
  %410 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %406, i64 0, i32 1
  %411 = load i32, ptr %410, align 4, !tbaa !45
  %412 = icmp slt i32 %409, %411
  br i1 %412, label %413, label %419

413:                                              ; preds = %407
  %414 = add nsw i32 %409, 1
  %415 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %406, i64 0, i32 4
  %416 = load ptr, ptr %415, align 8, !tbaa !43
  store i32 %414, ptr %408, align 8, !tbaa !94
  %417 = sext i32 %409 to i64
  %418 = getelementptr inbounds ptr, ptr %416, i64 %417
  store ptr %25, ptr %418, align 8, !tbaa !36
  br label %421

419:                                              ; preds = %407
  %420 = call i64 @ZSTD_freeCCtx(ptr noundef nonnull %25) #17
  br label %421

421:                                              ; preds = %405, %413, %419
  %422 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 1
  %423 = load i64, ptr %422, align 8, !tbaa !78
  %424 = add i64 %423, %357
  store i64 %424, ptr %422, align 8, !tbaa !78
  %425 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i64 0, i32 10, i32 1
  %426 = load i64, ptr %425, align 8, !tbaa !81
  store i64 %426, ptr %0, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %2) #17
  ret void
}

declare i64 @ZSTD_writeLastEmptyBlock(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ZSTD_compressBegin_advanced_internal(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ZSTD_compressContinue_public(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ZSTD_invalidateRepCodes(ptr noundef) local_unnamed_addr #2

declare i64 @ZSTD_compressEnd_public(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ZSTD_CCtx_trace(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ZSTD_ldm_generateSequences(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ZSTD_XXH64_update(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

declare void @ZSTD_referenceExternalSequences(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64_digest(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold noreturn nounwind }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
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
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"ZSTDMT_CCtx_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !14, i64 264, !14, i64 272, !11, i64 280, !17, i64 288, !20, i64 328, !21, i64 352, !25, i64 2840, !11, i64 2864, !11, i64 2868, !11, i64 2872, !11, i64 2876, !11, i64 2880, !26, i64 2888, !26, i64 2896, !26, i64 2904, !16, i64 2912, !7, i64 2936, !7, i64 2944, !11, i64 2952}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ZSTD_CCtx_params_s", !11, i64 0, !12, i64 4, !13, i64 32, !11, i64 44, !11, i64 48, !14, i64 56, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !14, i64 80, !11, i64 88, !11, i64 92, !15, i64 96, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !14, i64 152, !11, i64 160, !11, i64 164, !16, i64 168, !11, i64 192, !11, i64 196, !7, i64 200, !7, i64 208, !11, i64 216}
!11 = !{!"int", !8, i64 0}
!12 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24}
!13 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8}
!14 = !{!"long", !8, i64 0}
!15 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!16 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!17 = !{!"", !18, i64 0, !19, i64 16, !14, i64 32}
!18 = !{!"", !7, i64 0, !14, i64 8}
!19 = !{!"buffer_s", !7, i64 0, !14, i64 8}
!20 = !{!"", !7, i64 0, !14, i64 8, !14, i64 16}
!21 = !{!"", !11, i64 0, !11, i64 4, !10, i64 8, !22, i64 232, !24, i64 2344, !11, i64 2432, !11, i64 2436, !11, i64 2440, !23, i64 2448}
!22 = !{!"", !23, i64 0, !7, i64 40, !11, i64 48, !7, i64 56, !8, i64 64, !8, i64 576}
!23 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24, !11, i64 28, !11, i64 32}
!24 = !{!"XXH64_state_s", !14, i64 0, !8, i64 8, !8, i64 40, !11, i64 72, !11, i64 76, !14, i64 80}
!25 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16}
!26 = !{!"long long", !8, i64 0}
!27 = !{!6, !7, i64 8}
!28 = !{!6, !11, i64 2880}
!29 = !{!11, !11, i64 0}
!30 = !{!6, !7, i64 16}
!31 = !{!32, !11, i64 20}
!32 = !{!"ZSTDMT_bufferPool_s", !11, i64 0, !14, i64 8, !11, i64 16, !11, i64 20, !16, i64 24, !7, i64 48}
!33 = !{!32, !11, i64 16}
!34 = !{!32, !7, i64 48}
!35 = !{i64 0, i64 8, !36, i64 8, i64 8, !37}
!36 = !{!7, !7, i64 0}
!37 = !{!14, !14, i64 0}
!38 = !{i64 0, i64 8, !37}
!39 = !{!6, !11, i64 2864}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!6, !7, i64 24}
!43 = !{!44, !7, i64 40}
!44 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !16, i64 16, !7, i64 40}
!45 = !{!44, !11, i64 4}
!46 = distinct !{!46, !41}
!47 = !{!6, !7, i64 32}
!48 = !{i64 0, i64 8, !36, i64 8, i64 8, !36}
!49 = !{i64 0, i64 8, !36}
!50 = !{!21, !7, i64 272}
!51 = !{!21, !7, i64 288}
!52 = !{!6, !7, i64 2936}
!53 = !{!6, !7, i64 328}
!54 = !{!19, !7, i64 0}
!55 = distinct !{!55, !41}
!56 = !{!19, !14, i64 8}
!57 = distinct !{!57, !41, !58, !59}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = distinct !{!60, !41, !59, !58}
!61 = distinct !{!61, !41}
!62 = distinct !{!62, !41, !58, !59}
!63 = distinct !{!63, !41, !59, !58}
!64 = !{!6, !14, i64 336}
!65 = !{!6, !11, i64 44}
!66 = !{!10, !11, i64 44}
!67 = !{!6, !11, i64 84}
!68 = !{!12, !11, i64 0}
!69 = !{i64 0, i64 4, !29, i64 4, i64 4, !29, i64 8, i64 4, !29, i64 12, i64 4, !29, i64 16, i64 4, !29, i64 20, i64 4, !29, i64 24, i64 4, !29}
!70 = !{!6, !26, i64 2896}
!71 = !{!6, !14, i64 320}
!72 = !{!6, !26, i64 2904}
!73 = !{!6, !11, i64 2872}
!74 = !{!75, !11, i64 32}
!75 = !{!"", !26, i64 0, !26, i64 8, !26, i64 16, !26, i64 24, !11, i64 32, !11, i64 36}
!76 = !{!6, !11, i64 280}
!77 = !{!6, !11, i64 2868}
!78 = !{!79, !14, i64 8}
!79 = !{!"", !14, i64 0, !14, i64 8, !11, i64 16, !11, i64 20, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !19, i64 56, !18, i64 72, !18, i64 88, !11, i64 104, !11, i64 108, !11, i64 112, !10, i64 120, !7, i64 344, !26, i64 352, !14, i64 360, !11, i64 368}
!80 = !{!79, !14, i64 360}
!81 = !{!79, !14, i64 96}
!82 = !{!79, !14, i64 0}
!83 = distinct !{!83, !41}
!84 = !{!75, !26, i64 0}
!85 = !{!75, !26, i64 8}
!86 = !{!75, !26, i64 16}
!87 = !{!75, !26, i64 24}
!88 = !{!75, !11, i64 36}
!89 = !{!10, !11, i64 76}
!90 = !{!6, !11, i64 116}
!91 = !{!16, !7, i64 0}
!92 = !{i32 0, i32 33}
!93 = !{i64 0, i64 8, !36, i64 8, i64 8, !36, i64 16, i64 8, !36}
!94 = !{!44, !11, i64 8}
!95 = !{!10, !14, i64 80}
!96 = distinct !{!96, !41}
!97 = distinct !{!97, !41}
!98 = !{i64 0, i64 4, !29, i64 4, i64 4, !29, i64 8, i64 4, !29, i64 12, i64 4, !29, i64 16, i64 4, !29, i64 20, i64 4, !29, i64 24, i64 4, !29, i64 28, i64 4, !29, i64 32, i64 4, !29, i64 36, i64 4, !29, i64 40, i64 4, !29, i64 44, i64 4, !29, i64 48, i64 4, !29, i64 56, i64 8, !37, i64 64, i64 4, !29, i64 68, i64 4, !29, i64 72, i64 4, !29, i64 76, i64 4, !29, i64 80, i64 8, !37, i64 88, i64 4, !29, i64 92, i64 4, !29, i64 96, i64 4, !29, i64 100, i64 4, !29, i64 104, i64 4, !29, i64 108, i64 4, !29, i64 112, i64 4, !29, i64 116, i64 4, !29, i64 120, i64 4, !29, i64 124, i64 4, !29, i64 128, i64 4, !29, i64 132, i64 4, !29, i64 136, i64 4, !29, i64 140, i64 4, !29, i64 144, i64 4, !29, i64 152, i64 8, !37, i64 160, i64 4, !29, i64 164, i64 4, !29, i64 168, i64 8, !36, i64 176, i64 8, !36, i64 184, i64 8, !36, i64 192, i64 4, !29, i64 196, i64 4, !29, i64 200, i64 8, !36, i64 208, i64 8, !36, i64 216, i64 4, !29}
!99 = !{!6, !26, i64 2888}
!100 = !{!6, !7, i64 2944}
!101 = !{!10, !11, i64 88}
!102 = !{!10, !11, i64 28}
!103 = !{}
!104 = !{!10, !11, i64 96}
!105 = !{!10, !11, i64 8}
!106 = !{!6, !14, i64 272}
!107 = !{!6, !14, i64 264}
!108 = !{!10, !11, i64 92}
!109 = !{!6, !14, i64 2840}
!110 = !{!6, !14, i64 2848}
!111 = !{!6, !14, i64 2856}
!112 = !{!32, !14, i64 8}
!113 = !{!6, !11, i64 136}
!114 = !{!6, !14, i64 344}
!115 = !{!6, !7, i64 288}
!116 = !{!6, !14, i64 296}
!117 = !{!21, !11, i64 2432}
!118 = !{!10, !11, i64 36}
!119 = !{!10, !11, i64 100}
!120 = !{!10, !11, i64 104}
!121 = !{!21, !11, i64 108}
!122 = !{!21, !11, i64 112}
!123 = !{!23, !7, i64 8}
!124 = !{!23, !7, i64 16}
!125 = !{!23, !11, i64 24}
!126 = !{!23, !11, i64 28}
!127 = !{!23, !7, i64 0}
!128 = !{!21, !11, i64 280}
!129 = !{!10, !11, i64 48}
!130 = !{!21, !7, i64 240}
!131 = !{i64 0, i64 8, !36, i64 8, i64 8, !36, i64 16, i64 8, !36, i64 24, i64 4, !29, i64 28, i64 4, !29, i64 32, i64 4, !29}
!132 = !{!21, !14, i64 88}
!133 = !{!6, !11, i64 2876}
!134 = !{!6, !7, i64 304}
!135 = distinct !{!135, !41}
!136 = !{!6, !11, i64 132}
!137 = !{!8, !8, i64 0}
!138 = distinct !{!138, !41}
!139 = distinct !{!139, !140}
!140 = !{!"llvm.loop.unroll.disable"}
!141 = distinct !{!141, !140}
!142 = distinct !{!142, !41}
!143 = !{!144, !14, i64 16}
!144 = !{!"ZSTD_inBuffer_s", !7, i64 0, !14, i64 8, !14, i64 16}
!145 = !{!144, !14, i64 8}
!146 = !{!79, !7, i64 88}
!147 = !{!79, !7, i64 344}
!148 = !{!79, !26, i64 352}
!149 = !{!79, !7, i64 40}
!150 = !{!79, !7, i64 48}
!151 = !{!79, !11, i64 104}
!152 = !{!79, !11, i64 108}
!153 = !{!79, !11, i64 112}
!154 = !{!6, !11, i64 76}
!155 = !{!79, !11, i64 368}
!156 = !{!79, !7, i64 32}
!157 = distinct !{!157, !41}
!158 = !{!79, !7, i64 56}
!159 = !{!160, !14, i64 8}
!160 = !{!"ZSTD_outBuffer_s", !7, i64 0, !14, i64 8, !14, i64 16}
!161 = !{!160, !14, i64 16}
!162 = !{!160, !7, i64 0}
!163 = !{!79, !7, i64 24}
!164 = !{!165}
!165 = distinct !{!165, !166, !"ZSTDMT_getSeq: argument 0"}
!166 = distinct !{!166, !"ZSTDMT_getSeq"}
!167 = !{!168, !165}
!168 = distinct !{!168, !169, !"bufferToSeq: argument 0"}
!169 = distinct !{!169, !"bufferToSeq"}
!170 = !{!171, !7, i64 0}
!171 = !{!"", !7, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!172 = !{!171, !14, i64 32}
!173 = distinct !{!173, !41}
!174 = !{!21, !11, i64 104}
!175 = !{!21, !11, i64 44}
!176 = !{!79, !7, i64 72}
!177 = !{!79, !14, i64 80}
!178 = !{!171, !14, i64 24}
!179 = distinct !{!179, !41}
