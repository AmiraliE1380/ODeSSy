; ModuleID = '/mydata/zstd/lib/compress/zstd_compress_superblock.c'
source_filename = "/mydata/zstd/lib/compress/zstd_compress_superblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.repcodes_s = type { [3 x i32] }
%struct.ZSTD_entropyCTablesMetadata_t = type { %struct.ZSTD_hufCTablesMetadata_t, %struct.ZSTD_fseCTablesMetadata_t }
%struct.ZSTD_hufCTablesMetadata_t = type { i32, [128 x i8], i64 }
%struct.ZSTD_fseCTablesMetadata_t = type { i32, i32, i32, [133 x i8], i64, i64 }
%struct.ZSTD_CCtx_s = type { i32, i32, i32, %struct.ZSTD_CCtx_params_s, %struct.ZSTD_CCtx_params_s, %struct.ZSTD_CCtx_params_s, i32, i64, %struct.ZSTD_cwksp, i64, i64, i64, i64, %struct.XXH64_state_s, %struct.ZSTD_customMem, ptr, i64, %struct.SeqCollector, i32, i32, %struct.SeqStore_t, %struct.ldmState_t, ptr, i64, %struct.RawSeqStore_t, %struct.ZSTD_blockState_t, ptr, i64, i32, ptr, i64, i64, i64, i64, ptr, i64, i64, i64, i32, i32, %struct.ZSTD_inBuffer_s, i64, i64, %struct.ZSTD_localDict, ptr, %struct.ZSTD_prefixDict_s, i64, %struct.ZSTD_blockSplitCtx, ptr, i64 }
%struct.ZSTD_CCtx_params_s = type { i32, %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, %struct.ldmParams_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.ZSTD_customMem, i32, i32, ptr, ptr, i32 }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }
%struct.ldmParams_t = type { i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_cwksp = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32 }
%struct.XXH64_state_s = type { i64, [4 x i64], [4 x i64], i32, i32, i64 }
%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.SeqCollector = type { i32, ptr, i64, i64 }
%struct.SeqStore_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }
%struct.ldmState_t = type { %struct.ZSTD_window_t, ptr, i32, ptr, [64 x i64], [64 x %struct.ldmMatchCandidate_t] }
%struct.ZSTD_window_t = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.ldmMatchCandidate_t = type { ptr, i32, i32, ptr }
%struct.RawSeqStore_t = type { ptr, i64, i64, i64, i64 }
%struct.ZSTD_blockState_t = type { ptr, ptr, %struct.ZSTD_MatchState_t }
%struct.ZSTD_MatchState_t = type { %struct.ZSTD_window_t, i32, i32, i32, i32, ptr, [8 x i32], i64, i32, ptr, ptr, ptr, i32, i32, %struct.optState_t, ptr, %struct.ZSTD_compressionParameters, ptr, i32, i32 }
%struct.optState_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ZSTD_inBuffer_s = type { ptr, i64, i64 }
%struct.ZSTD_localDict = type { ptr, ptr, i64, i32, ptr }
%struct.ZSTD_prefixDict_s = type { ptr, i64, i32 }
%struct.ZSTD_blockSplitCtx = type { %struct.SeqStore_t, %struct.SeqStore_t, %struct.SeqStore_t, %struct.SeqStore_t, %struct.SeqStore_t, [196 x i32], %struct.ZSTD_entropyCTablesMetadata_t }
%struct.ZSTD_entropyCTables_t = type { %struct.ZSTD_hufCTables_t, %struct.ZSTD_fseCTables_t }
%struct.ZSTD_hufCTables_t = type { [257 x i64], i32 }
%struct.ZSTD_fseCTables_t = type { [193 x i32], [363 x i32], [329 x i32], i32, i32, i32 }
%struct.SeqDef_s = type { i32, i16, i16 }
%struct.ZSTD_compressedBlockState_t = type { %struct.ZSTD_entropyCTables_t, [3 x i32] }

@OF_defaultNorm = internal constant [29 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 16
@LL_bits = internal unnamed_addr constant [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@LL_defaultNorm = internal constant [36 x i16] [i16 4, i16 3, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 3, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 -1, i16 -1, i16 -1], align 16
@ML_bits = internal unnamed_addr constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\04\05\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@ML_defaultNorm = internal constant [53 x i16] [i16 1, i16 4, i16 3, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 16

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressSuperBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.repcodes_s, align 4
  %16 = alloca %struct.ZSTD_entropyCTablesMetadata_t, align 8
  call void @llvm.lifetime.start.p0(i64 312, ptr nonnull %16) #5
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 25, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 26
  %24 = load ptr, ptr %23, align 8, !tbaa !36
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 27
  %26 = load i64, ptr %25, align 8, !tbaa !37
  %27 = call i64 @ZSTD_buildBlockEntropyStats(ptr noundef nonnull %17, ptr noundef %19, ptr noundef %21, ptr noundef nonnull %22, ptr noundef nonnull %16, ptr noundef %24, i64 noundef %26) #5
  %28 = icmp ult i64 %27, -119
  br i1 %28, label %29, label %731

29:                                               ; preds = %6
  %30 = load ptr, ptr %18, align 8, !tbaa !5
  %31 = load ptr, ptr %20, align 8, !tbaa !35
  %32 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !38
  %34 = load ptr, ptr %23, align 8, !tbaa !36
  %35 = load i64, ptr %25, align 8, !tbaa !37
  %36 = load ptr, ptr %17, align 8, !tbaa !39
  %37 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !40
  %39 = ptrtoint ptr %38 to i64
  %40 = ptrtoint ptr %36 to i64
  %41 = sub i64 %39, %40
  %42 = ashr exact i64 %41, 3
  %43 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !41
  %45 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !42
  %47 = ptrtoint ptr %46 to i64
  %48 = ptrtoint ptr %44 to i64
  %49 = sub i64 %47, %48
  %50 = getelementptr inbounds i8, ptr %3, i64 %4
  %51 = getelementptr inbounds i8, ptr %1, i64 %2
  %52 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !43
  %54 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !44
  %56 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !45
  %58 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 4, i32 5
  %59 = load i64, ptr %58, align 8, !tbaa !46
  %60 = call i64 @llvm.umax.i64(i64 %59, i64 1340)
  %61 = load i32, ptr %16, align 8, !tbaa !47
  %62 = icmp eq i32 %61, 2
  %63 = zext i1 %62 to i32
  %64 = icmp eq ptr %38, %36
  br i1 %64, label %494, label %65

65:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #5
  store i32 255, ptr %10, align 4, !tbaa !48
  switch i32 %61, label %78 [
    i32 0, label %79
    i32 1, label %66
    i32 2, label %67
    i32 3, label %67
  ]

66:                                               ; preds = %65
  br label %79

67:                                               ; preds = %65, %65
  %68 = call i64 @HIST_count_wksp(ptr noundef %34, ptr noundef nonnull %10, ptr noundef %44, i64 noundef %49, ptr noundef %34, i64 noundef %35) #5
  %69 = icmp ult i64 %68, -119
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load i32, ptr %10, align 4, !tbaa !48
  %72 = call i64 @HUF_estimateCompressedSize(ptr noundef %31, ptr noundef %34, i32 noundef %71) #5
  %73 = getelementptr inbounds %struct.ZSTD_hufCTablesMetadata_t, ptr %16, i64 0, i32 2
  %74 = load i64, ptr %73, align 8
  %75 = select i1 %62, i64 %74, i64 0
  %76 = add i64 %72, 3
  %77 = add i64 %76, %75
  br label %79

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %70, %67, %66, %65
  %80 = phi i64 [ 1, %66 ], [ 0, %78 ], [ %49, %65 ], [ %77, %70 ], [ %49, %67 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #5
  %81 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %31, i64 0, i32 1
  %82 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %16, i64 0, i32 1
  %83 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %16, i64 0, i32 1, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !49
  %85 = getelementptr inbounds i8, ptr %57, i64 %42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #5
  store i32 31, ptr %9, align 4, !tbaa !48
  %86 = call i64 @HIST_countFast_wksp(ptr noundef %34, ptr noundef nonnull %9, ptr noundef %57, i64 noundef %42, ptr noundef %34, i64 noundef %35) #5
  switch i32 %84, label %92 [
    i32 0, label %87
    i32 1, label %101
  ]

87:                                               ; preds = %79
  %88 = load i32, ptr %9, align 4, !tbaa !48
  %89 = icmp ugt i32 %88, 28
  br i1 %89, label %112, label %90

90:                                               ; preds = %87
  %91 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, ptr noundef %34, i32 noundef %88) #5
  br label %98

92:                                               ; preds = %79
  %93 = and i32 %84, -2
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i32, ptr %9, align 4, !tbaa !48
  %97 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %81, ptr noundef %34, i32 noundef %96) #5
  br label %98

98:                                               ; preds = %95, %90
  %99 = phi i64 [ %97, %95 ], [ %91, %90 ]
  %100 = icmp ult i64 %99, -119
  br i1 %100, label %101, label %112

101:                                              ; preds = %98, %92, %79
  %102 = phi i64 [ %99, %98 ], [ 0, %92 ], [ 0, %79 ]
  %103 = icmp sgt i64 %42, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %101, %104
  %105 = phi i64 [ %109, %104 ], [ %102, %101 ]
  %106 = phi ptr [ %110, %104 ], [ %57, %101 ]
  %107 = load i8, ptr %106, align 1, !tbaa !50
  %108 = zext i8 %107 to i64
  %109 = add i64 %105, %108
  %110 = getelementptr inbounds i8, ptr %106, i64 1
  %111 = icmp ult ptr %110, %85
  br i1 %111, label %104, label %114, !llvm.loop !51

112:                                              ; preds = %98, %87
  %113 = mul i64 %42, 10
  br label %117

114:                                              ; preds = %104, %101
  %115 = phi i64 [ %102, %101 ], [ %109, %104 ]
  %116 = lshr i64 %115, 3
  br label %117

117:                                              ; preds = %114, %112
  %118 = phi i64 [ %113, %112 ], [ %116, %114 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #5
  %119 = load i32, ptr %82, align 8, !tbaa !53
  %120 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %31, i64 0, i32 1, i32 2
  %121 = getelementptr inbounds i8, ptr %53, i64 %42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  store i32 35, ptr %8, align 4, !tbaa !48
  %122 = call i64 @HIST_countFast_wksp(ptr noundef %34, ptr noundef nonnull %8, ptr noundef %53, i64 noundef %42, ptr noundef %34, i64 noundef %35) #5
  switch i32 %119, label %128 [
    i32 0, label %123
    i32 1, label %137
  ]

123:                                              ; preds = %117
  %124 = load i32, ptr %8, align 4, !tbaa !48
  %125 = icmp ugt i32 %124, 35
  br i1 %125, label %140, label %126

126:                                              ; preds = %123
  %127 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, ptr noundef %34, i32 noundef %124) #5
  br label %134

128:                                              ; preds = %117
  %129 = and i32 %119, -2
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load i32, ptr %8, align 4, !tbaa !48
  %133 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %120, ptr noundef %34, i32 noundef %132) #5
  br label %134

134:                                              ; preds = %131, %126
  %135 = phi i64 [ %133, %131 ], [ %127, %126 ]
  %136 = icmp ult i64 %135, -119
  br i1 %136, label %137, label %140

137:                                              ; preds = %134, %128, %117
  %138 = phi i64 [ %135, %134 ], [ 0, %128 ], [ 0, %117 ]
  %139 = icmp sgt i64 %42, 0
  br i1 %139, label %142, label %153

140:                                              ; preds = %134, %123
  %141 = mul i64 %42, 10
  br label %156

142:                                              ; preds = %137, %142
  %143 = phi i64 [ %150, %142 ], [ %138, %137 ]
  %144 = phi ptr [ %151, %142 ], [ %53, %137 ]
  %145 = load i8, ptr %144, align 1, !tbaa !50
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds i8, ptr @LL_bits, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !50
  %149 = zext i8 %148 to i64
  %150 = add i64 %143, %149
  %151 = getelementptr inbounds i8, ptr %144, i64 1
  %152 = icmp ult ptr %151, %121
  br i1 %152, label %142, label %153, !llvm.loop !51

153:                                              ; preds = %142, %137
  %154 = phi i64 [ %138, %137 ], [ %150, %142 ]
  %155 = lshr i64 %154, 3
  br label %156

156:                                              ; preds = %153, %140
  %157 = phi i64 [ %141, %140 ], [ %155, %153 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  %158 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %16, i64 0, i32 1, i32 2
  %159 = load i32, ptr %158, align 8, !tbaa !54
  %160 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %31, i64 0, i32 1, i32 1
  %161 = getelementptr inbounds i8, ptr %55, i64 %42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  store i32 52, ptr %7, align 4, !tbaa !48
  %162 = call i64 @HIST_countFast_wksp(ptr noundef %34, ptr noundef nonnull %7, ptr noundef %55, i64 noundef %42, ptr noundef %34, i64 noundef %35) #5
  switch i32 %159, label %168 [
    i32 0, label %163
    i32 1, label %177
  ]

163:                                              ; preds = %156
  %164 = load i32, ptr %7, align 4, !tbaa !48
  %165 = icmp ugt i32 %164, 52
  br i1 %165, label %180, label %166

166:                                              ; preds = %163
  %167 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, ptr noundef %34, i32 noundef %164) #5
  br label %174

168:                                              ; preds = %156
  %169 = and i32 %159, -2
  %170 = icmp eq i32 %169, 2
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = load i32, ptr %7, align 4, !tbaa !48
  %173 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %160, ptr noundef %34, i32 noundef %172) #5
  br label %174

174:                                              ; preds = %171, %166
  %175 = phi i64 [ %173, %171 ], [ %167, %166 ]
  %176 = icmp ult i64 %175, -119
  br i1 %176, label %177, label %180

177:                                              ; preds = %174, %168, %156
  %178 = phi i64 [ %175, %174 ], [ 0, %168 ], [ 0, %156 ]
  %179 = icmp sgt i64 %42, 0
  br i1 %179, label %182, label %193

180:                                              ; preds = %174, %163
  %181 = mul i64 %42, 10
  br label %196

182:                                              ; preds = %177, %182
  %183 = phi i64 [ %190, %182 ], [ %178, %177 ]
  %184 = phi ptr [ %191, %182 ], [ %55, %177 ]
  %185 = load i8, ptr %184, align 1, !tbaa !50
  %186 = zext i8 %185 to i64
  %187 = getelementptr inbounds i8, ptr @ML_bits, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !50
  %189 = zext i8 %188 to i64
  %190 = add i64 %183, %189
  %191 = getelementptr inbounds i8, ptr %184, i64 1
  %192 = icmp ult ptr %191, %161
  br i1 %192, label %182, label %193, !llvm.loop !51

193:                                              ; preds = %182, %177
  %194 = phi i64 [ %178, %177 ], [ %190, %182 ]
  %195 = lshr i64 %194, 3
  br label %196

196:                                              ; preds = %193, %180
  %197 = phi i64 [ %181, %180 ], [ %195, %193 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  %198 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %16, i64 0, i32 1, i32 4
  %199 = load i64, ptr %198, align 8, !tbaa !55
  %200 = add i64 %80, 6
  %201 = add i64 %200, %118
  %202 = add i64 %201, %157
  %203 = add i64 %202, %197
  %204 = add i64 %203, %199
  %205 = icmp eq ptr %46, %44
  br i1 %205, label %209, label %206

206:                                              ; preds = %196
  %207 = shl i64 %80, 8
  %208 = udiv i64 %207, %49
  br label %209

209:                                              ; preds = %206, %196
  %210 = phi i64 [ %208, %206 ], [ 256, %196 ]
  %211 = sub i64 %204, %80
  %212 = shl i64 %211, 8
  %213 = udiv i64 %212, %42
  %214 = lshr i64 %60, 1
  %215 = add i64 %204, %214
  %216 = udiv i64 %215, %60
  %217 = call i64 @llvm.umax.i64(i64 %216, i64 1)
  %218 = shl i64 %204, 8
  %219 = udiv i64 %218, %217
  %220 = icmp ugt i64 %204, %4
  br i1 %220, label %731, label %221

221:                                              ; preds = %209
  %222 = add nsw i64 %217, -1
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %494, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 10
  %226 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 9
  %227 = ptrtoint ptr %51 to i64
  br label %228

228:                                              ; preds = %465, %224
  %229 = phi ptr [ %36, %224 ], [ %474, %465 ]
  %230 = phi ptr [ %44, %224 ], [ %473, %465 ]
  %231 = phi ptr [ %3, %224 ], [ %472, %465 ]
  %232 = phi ptr [ %1, %224 ], [ %471, %465 ]
  %233 = phi ptr [ %53, %224 ], [ %470, %465 ]
  %234 = phi ptr [ %55, %224 ], [ %469, %465 ]
  %235 = phi ptr [ %57, %224 ], [ %468, %465 ]
  %236 = phi i32 [ %63, %224 ], [ %467, %465 ]
  %237 = phi i32 [ 1, %224 ], [ %466, %465 ]
  %238 = phi i64 [ 0, %224 ], [ %475, %465 ]
  %239 = ptrtoint ptr %229 to i64
  %240 = sub i64 %39, %239
  %241 = ashr exact i64 %240, 3
  %242 = icmp eq i64 %238, 0
  %243 = select i1 %242, i64 30720, i64 0
  %244 = getelementptr inbounds %struct.SeqDef_s, ptr %229, i64 0, i32 1
  %245 = load i16, ptr %244, align 4, !tbaa !56
  %246 = zext i16 %245 to i64
  %247 = mul i64 %210, %246
  %248 = add i64 %243, %213
  %249 = add i64 %248, %247
  %250 = icmp ule i64 %249, %219
  %251 = icmp ugt i64 %241, 1
  %252 = and i1 %251, %250
  br i1 %252, label %253, label %282

253:                                              ; preds = %228
  %254 = add nuw nsw i64 %246, 3
  %255 = getelementptr inbounds %struct.SeqDef_s, ptr %229, i64 0, i32 2
  %256 = load i16, ptr %255, align 2, !tbaa !59
  %257 = zext i16 %256 to i64
  %258 = add nuw nsw i64 %254, %257
  br label %259

259:                                              ; preds = %279, %253
  %260 = phi i64 [ %280, %279 ], [ 1, %253 ]
  %261 = phi i64 [ %274, %279 ], [ %258, %253 ]
  %262 = phi i64 [ %268, %279 ], [ %249, %253 ]
  %263 = getelementptr inbounds %struct.SeqDef_s, ptr %229, i64 %260, i32 1
  %264 = load i16, ptr %263, align 4, !tbaa !56
  %265 = zext i16 %264 to i64
  %266 = mul i64 %210, %265
  %267 = add i64 %262, %213
  %268 = add i64 %267, %266
  %269 = getelementptr inbounds %struct.SeqDef_s, ptr %229, i64 %260, i32 2
  %270 = load i16, ptr %269, align 2, !tbaa !59
  %271 = zext i16 %270 to i64
  %272 = add i64 %261, 3
  %273 = add i64 %272, %265
  %274 = add i64 %273, %271
  %275 = icmp ugt i64 %268, %219
  %276 = shl i64 %274, 8
  %277 = icmp ult i64 %268, %276
  %278 = select i1 %275, i1 %277, i1 false
  br i1 %278, label %282, label %279

279:                                              ; preds = %259
  %280 = add nuw i64 %260, 1
  %281 = icmp eq i64 %280, %241
  br i1 %281, label %282, label %259, !llvm.loop !60

282:                                              ; preds = %279, %259, %228
  %283 = phi i64 [ 1, %228 ], [ %241, %279 ], [ %260, %259 ]
  %284 = getelementptr inbounds %struct.SeqDef_s, ptr %229, i64 %283
  %285 = icmp eq ptr %284, %38
  br i1 %285, label %481, label %286

286:                                              ; preds = %282
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #5
  store i32 0, ptr %11, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #5
  store i32 0, ptr %12, align 4, !tbaa !48
  %287 = load i32, ptr %225, align 4, !tbaa !61
  %288 = load ptr, ptr %17, align 8, !tbaa !39
  %289 = ptrtoint ptr %288 to i64
  %290 = add i64 %283, -1
  %291 = and i64 %283, 1
  %292 = icmp eq i64 %290, 0
  br i1 %292, label %339, label %293

293:                                              ; preds = %286
  %294 = and i64 %283, -2
  br label %295

295:                                              ; preds = %332, %293
  %296 = phi i64 [ 0, %293 ], [ %336, %332 ]
  %297 = phi i64 [ 0, %293 ], [ %335, %332 ]
  %298 = phi i64 [ 0, %293 ], [ %337, %332 ]
  %299 = getelementptr inbounds %struct.SeqDef_s, ptr %229, i64 %296
  %300 = getelementptr inbounds %struct.SeqDef_s, ptr %229, i64 %296, i32 1
  %301 = load i16, ptr %300, align 4, !tbaa !56
  %302 = zext i16 %301 to i32
  %303 = ptrtoint ptr %299 to i64
  %304 = sub i64 %303, %289
  %305 = lshr exact i64 %304, 3
  %306 = trunc i64 %305 to i32
  %307 = icmp eq i32 %287, %306
  br i1 %307, label %308, label %313

308:                                              ; preds = %295
  %309 = load i32, ptr %226, align 8, !tbaa !62
  %310 = icmp eq i32 %309, 1
  %311 = or disjoint i32 %302, 65536
  %312 = select i1 %310, i32 %311, i32 %302
  br label %313

313:                                              ; preds = %308, %295
  %314 = phi i32 [ %302, %295 ], [ %312, %308 ]
  %315 = zext nneg i32 %314 to i64
  %316 = add i64 %297, %315
  %317 = or disjoint i64 %296, 1
  %318 = getelementptr inbounds %struct.SeqDef_s, ptr %229, i64 %317
  %319 = getelementptr inbounds %struct.SeqDef_s, ptr %229, i64 %317, i32 1
  %320 = load i16, ptr %319, align 4, !tbaa !56
  %321 = zext i16 %320 to i32
  %322 = ptrtoint ptr %318 to i64
  %323 = sub i64 %322, %289
  %324 = lshr exact i64 %323, 3
  %325 = trunc i64 %324 to i32
  %326 = icmp eq i32 %287, %325
  br i1 %326, label %327, label %332

327:                                              ; preds = %313
  %328 = load i32, ptr %226, align 8, !tbaa !62
  %329 = icmp eq i32 %328, 1
  %330 = or disjoint i32 %321, 65536
  %331 = select i1 %329, i32 %330, i32 %321
  br label %332

332:                                              ; preds = %327, %313
  %333 = phi i32 [ %321, %313 ], [ %331, %327 ]
  %334 = zext nneg i32 %333 to i64
  %335 = add i64 %316, %334
  %336 = add nuw i64 %296, 2
  %337 = add i64 %298, 2
  %338 = icmp eq i64 %337, %294
  br i1 %338, label %339, label %295, !llvm.loop !63

339:                                              ; preds = %332, %286
  %340 = phi i64 [ undef, %286 ], [ %335, %332 ]
  %341 = phi i64 [ 0, %286 ], [ %336, %332 ]
  %342 = phi i64 [ 0, %286 ], [ %335, %332 ]
  %343 = icmp eq i64 %291, 0
  br i1 %343, label %363, label %344

344:                                              ; preds = %339
  %345 = getelementptr inbounds %struct.SeqDef_s, ptr %229, i64 %341
  %346 = getelementptr inbounds %struct.SeqDef_s, ptr %229, i64 %341, i32 1
  %347 = load i16, ptr %346, align 4, !tbaa !56
  %348 = zext i16 %347 to i32
  %349 = ptrtoint ptr %345 to i64
  %350 = sub i64 %349, %289
  %351 = lshr exact i64 %350, 3
  %352 = trunc i64 %351 to i32
  %353 = icmp eq i32 %287, %352
  br i1 %353, label %354, label %359

354:                                              ; preds = %344
  %355 = load i32, ptr %226, align 8, !tbaa !62
  %356 = icmp eq i32 %355, 1
  %357 = or disjoint i32 %348, 65536
  %358 = select i1 %356, i32 %357, i32 %348
  br label %359

359:                                              ; preds = %354, %344
  %360 = phi i32 [ %348, %344 ], [ %358, %354 ]
  %361 = zext nneg i32 %360 to i64
  %362 = add i64 %342, %361
  br label %363

363:                                              ; preds = %339, %359
  %364 = phi i64 [ %340, %339 ], [ %362, %359 ]
  %365 = and i64 %283, 1
  %366 = icmp eq i64 %290, 0
  br i1 %366, label %415, label %367

367:                                              ; preds = %363
  %368 = and i64 %283, -2
  br label %369

369:                                              ; preds = %408, %367
  %370 = phi i64 [ 0, %367 ], [ %411, %408 ]
  %371 = phi i64 [ 0, %367 ], [ %412, %408 ]
  %372 = phi i64 [ 0, %367 ], [ %413, %408 ]
  %373 = getelementptr inbounds %struct.SeqDef_s, ptr %229, i64 %371
  %374 = getelementptr inbounds %struct.SeqDef_s, ptr %229, i64 %371, i32 2
  %375 = load i16, ptr %374, align 2, !tbaa !59
  %376 = zext i16 %375 to i32
  %377 = add nuw nsw i32 %376, 3
  %378 = ptrtoint ptr %373 to i64
  %379 = sub i64 %378, %289
  %380 = lshr exact i64 %379, 3
  %381 = trunc i64 %380 to i32
  %382 = icmp eq i32 %287, %381
  br i1 %382, label %383, label %388

383:                                              ; preds = %369
  %384 = load i32, ptr %226, align 8, !tbaa !62
  %385 = icmp eq i32 %384, 2
  %386 = add nuw nsw i32 %376, 65539
  %387 = select i1 %385, i32 %386, i32 %377
  br label %388

388:                                              ; preds = %383, %369
  %389 = phi i32 [ %377, %369 ], [ %387, %383 ]
  %390 = zext nneg i32 %389 to i64
  %391 = add i64 %370, %390
  %392 = or disjoint i64 %371, 1
  %393 = getelementptr inbounds %struct.SeqDef_s, ptr %229, i64 %392
  %394 = getelementptr inbounds %struct.SeqDef_s, ptr %229, i64 %392, i32 2
  %395 = load i16, ptr %394, align 2, !tbaa !59
  %396 = zext i16 %395 to i32
  %397 = add nuw nsw i32 %396, 3
  %398 = ptrtoint ptr %393 to i64
  %399 = sub i64 %398, %289
  %400 = lshr exact i64 %399, 3
  %401 = trunc i64 %400 to i32
  %402 = icmp eq i32 %287, %401
  br i1 %402, label %403, label %408

403:                                              ; preds = %388
  %404 = load i32, ptr %226, align 8, !tbaa !62
  %405 = icmp eq i32 %404, 2
  %406 = add nuw nsw i32 %396, 65539
  %407 = select i1 %405, i32 %406, i32 %397
  br label %408

408:                                              ; preds = %403, %388
  %409 = phi i32 [ %397, %388 ], [ %407, %403 ]
  %410 = zext nneg i32 %409 to i64
  %411 = add i64 %391, %410
  %412 = add nuw i64 %371, 2
  %413 = add i64 %372, 2
  %414 = icmp eq i64 %413, %368
  br i1 %414, label %415, label %369, !llvm.loop !64

415:                                              ; preds = %408, %363
  %416 = phi i64 [ undef, %363 ], [ %411, %408 ]
  %417 = phi i64 [ 0, %363 ], [ %411, %408 ]
  %418 = phi i64 [ 0, %363 ], [ %412, %408 ]
  %419 = icmp eq i64 %365, 0
  br i1 %419, label %440, label %420

420:                                              ; preds = %415
  %421 = getelementptr inbounds %struct.SeqDef_s, ptr %229, i64 %418
  %422 = getelementptr inbounds %struct.SeqDef_s, ptr %229, i64 %418, i32 2
  %423 = load i16, ptr %422, align 2, !tbaa !59
  %424 = zext i16 %423 to i32
  %425 = add nuw nsw i32 %424, 3
  %426 = ptrtoint ptr %421 to i64
  %427 = sub i64 %426, %289
  %428 = lshr exact i64 %427, 3
  %429 = trunc i64 %428 to i32
  %430 = icmp eq i32 %287, %429
  br i1 %430, label %431, label %436

431:                                              ; preds = %420
  %432 = load i32, ptr %226, align 8, !tbaa !62
  %433 = icmp eq i32 %432, 2
  %434 = add nuw nsw i32 %424, 65539
  %435 = select i1 %433, i32 %434, i32 %425
  br label %436

436:                                              ; preds = %431, %420
  %437 = phi i32 [ %425, %420 ], [ %435, %431 ]
  %438 = zext nneg i32 %437 to i64
  %439 = add i64 %417, %438
  br label %440

440:                                              ; preds = %415, %436
  %441 = phi i64 [ %416, %415 ], [ %439, %436 ]
  %442 = add i64 %441, %364
  %443 = ptrtoint ptr %232 to i64
  %444 = sub i64 %227, %443
  %445 = call fastcc i64 @ZSTD_compressSubBlock(ptr noundef %31, ptr noundef nonnull %16, ptr noundef nonnull %229, i64 noundef %283, ptr noundef %230, i64 noundef %364, ptr noundef %233, ptr noundef %234, ptr noundef %235, ptr noundef nonnull %22, ptr noundef %232, i64 noundef %444, i32 noundef %33, i32 noundef %236, i32 noundef %237, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef 0)
  %446 = icmp ult i64 %445, -119
  br i1 %446, label %447, label %464

447:                                              ; preds = %440
  %448 = icmp ne i64 %445, 0
  %449 = icmp ult i64 %445, %442
  %450 = select i1 %448, i1 %449, i1 false
  br i1 %450, label %451, label %465

451:                                              ; preds = %447
  %452 = getelementptr inbounds i8, ptr %231, i64 %442
  %453 = getelementptr inbounds i8, ptr %230, i64 %364
  %454 = getelementptr inbounds i8, ptr %232, i64 %445
  %455 = getelementptr inbounds i8, ptr %233, i64 %283
  %456 = getelementptr inbounds i8, ptr %234, i64 %283
  %457 = getelementptr inbounds i8, ptr %235, i64 %283
  %458 = load i32, ptr %11, align 4, !tbaa !48
  %459 = icmp eq i32 %458, 0
  %460 = select i1 %459, i32 %236, i32 0
  %461 = load i32, ptr %12, align 4, !tbaa !48
  %462 = icmp eq i32 %461, 0
  %463 = select i1 %462, i32 %237, i32 0
  br label %465

464:                                              ; preds = %440
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #5
  br label %731

465:                                              ; preds = %451, %447
  %466 = phi i32 [ %237, %447 ], [ %463, %451 ]
  %467 = phi i32 [ %236, %447 ], [ %460, %451 ]
  %468 = phi ptr [ %235, %447 ], [ %457, %451 ]
  %469 = phi ptr [ %234, %447 ], [ %456, %451 ]
  %470 = phi ptr [ %233, %447 ], [ %455, %451 ]
  %471 = phi ptr [ %232, %447 ], [ %454, %451 ]
  %472 = phi ptr [ %231, %447 ], [ %452, %451 ]
  %473 = phi ptr [ %230, %447 ], [ %453, %451 ]
  %474 = phi ptr [ %229, %447 ], [ %284, %451 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #5
  %475 = add nuw nsw i64 %238, 1
  %476 = icmp eq i64 %475, %222
  br i1 %476, label %477, label %228, !llvm.loop !65

477:                                              ; preds = %465
  %478 = ptrtoint ptr %474 to i64
  %479 = sub i64 %39, %478
  %480 = ashr exact i64 %479, 3
  br label %481

481:                                              ; preds = %282, %477
  %482 = phi i64 [ %480, %477 ], [ %241, %282 ]
  %483 = phi i32 [ %466, %477 ], [ %237, %282 ]
  %484 = phi i32 [ %467, %477 ], [ %236, %282 ]
  %485 = phi ptr [ %468, %477 ], [ %235, %282 ]
  %486 = phi ptr [ %469, %477 ], [ %234, %282 ]
  %487 = phi ptr [ %470, %477 ], [ %233, %282 ]
  %488 = phi ptr [ %471, %477 ], [ %232, %282 ]
  %489 = phi ptr [ %472, %477 ], [ %231, %282 ]
  %490 = phi ptr [ %473, %477 ], [ %230, %282 ]
  %491 = phi ptr [ %474, %477 ], [ %229, %282 ]
  %492 = ptrtoint ptr %490 to i64
  %493 = sub i64 %47, %492
  br label %494

494:                                              ; preds = %481, %221, %29
  %495 = phi i64 [ %482, %481 ], [ %42, %221 ], [ %42, %29 ]
  %496 = phi i64 [ %493, %481 ], [ %49, %221 ], [ %49, %29 ]
  %497 = phi i32 [ %483, %481 ], [ 1, %221 ], [ 1, %29 ]
  %498 = phi i32 [ %484, %481 ], [ %63, %221 ], [ %63, %29 ]
  %499 = phi ptr [ %485, %481 ], [ %57, %221 ], [ %57, %29 ]
  %500 = phi ptr [ %486, %481 ], [ %55, %221 ], [ %55, %29 ]
  %501 = phi ptr [ %487, %481 ], [ %53, %221 ], [ %53, %29 ]
  %502 = phi ptr [ %488, %481 ], [ %1, %221 ], [ %1, %29 ]
  %503 = phi ptr [ %489, %481 ], [ %3, %221 ], [ %3, %29 ]
  %504 = phi ptr [ %490, %481 ], [ %44, %221 ], [ %44, %29 ]
  %505 = phi ptr [ %491, %481 ], [ %36, %221 ], [ %36, %29 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #5
  store i32 0, ptr %13, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #5
  store i32 0, ptr %14, align 4, !tbaa !48
  %506 = icmp eq ptr %38, %505
  br i1 %506, label %588, label %507

507:                                              ; preds = %494
  %508 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 10
  %509 = load i32, ptr %508, align 4, !tbaa !61
  %510 = load ptr, ptr %17, align 8, !tbaa !39
  %511 = ptrtoint ptr %510 to i64
  %512 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 9
  %513 = and i64 %495, 1
  %514 = icmp eq i64 %495, 1
  br i1 %514, label %563, label %515

515:                                              ; preds = %507
  %516 = and i64 %495, -2
  br label %517

517:                                              ; preds = %556, %515
  %518 = phi i64 [ 0, %515 ], [ %559, %556 ]
  %519 = phi i64 [ 0, %515 ], [ %560, %556 ]
  %520 = phi i64 [ 0, %515 ], [ %561, %556 ]
  %521 = getelementptr inbounds %struct.SeqDef_s, ptr %505, i64 %519
  %522 = getelementptr inbounds %struct.SeqDef_s, ptr %505, i64 %519, i32 2
  %523 = load i16, ptr %522, align 2, !tbaa !59
  %524 = zext i16 %523 to i32
  %525 = add nuw nsw i32 %524, 3
  %526 = ptrtoint ptr %521 to i64
  %527 = sub i64 %526, %511
  %528 = lshr exact i64 %527, 3
  %529 = trunc i64 %528 to i32
  %530 = icmp eq i32 %509, %529
  br i1 %530, label %531, label %536

531:                                              ; preds = %517
  %532 = load i32, ptr %512, align 8, !tbaa !62
  %533 = icmp eq i32 %532, 2
  %534 = add nuw nsw i32 %524, 65539
  %535 = select i1 %533, i32 %534, i32 %525
  br label %536

536:                                              ; preds = %531, %517
  %537 = phi i32 [ %525, %517 ], [ %535, %531 ]
  %538 = zext nneg i32 %537 to i64
  %539 = add i64 %518, %538
  %540 = or disjoint i64 %519, 1
  %541 = getelementptr inbounds %struct.SeqDef_s, ptr %505, i64 %540
  %542 = getelementptr inbounds %struct.SeqDef_s, ptr %505, i64 %540, i32 2
  %543 = load i16, ptr %542, align 2, !tbaa !59
  %544 = zext i16 %543 to i32
  %545 = add nuw nsw i32 %544, 3
  %546 = ptrtoint ptr %541 to i64
  %547 = sub i64 %546, %511
  %548 = lshr exact i64 %547, 3
  %549 = trunc i64 %548 to i32
  %550 = icmp eq i32 %509, %549
  br i1 %550, label %551, label %556

551:                                              ; preds = %536
  %552 = load i32, ptr %512, align 8, !tbaa !62
  %553 = icmp eq i32 %552, 2
  %554 = add nuw nsw i32 %544, 65539
  %555 = select i1 %553, i32 %554, i32 %545
  br label %556

556:                                              ; preds = %551, %536
  %557 = phi i32 [ %545, %536 ], [ %555, %551 ]
  %558 = zext nneg i32 %557 to i64
  %559 = add i64 %539, %558
  %560 = add nuw i64 %519, 2
  %561 = add i64 %520, 2
  %562 = icmp eq i64 %561, %516
  br i1 %562, label %563, label %517, !llvm.loop !64

563:                                              ; preds = %556, %507
  %564 = phi i64 [ undef, %507 ], [ %559, %556 ]
  %565 = phi i64 [ 0, %507 ], [ %559, %556 ]
  %566 = phi i64 [ 0, %507 ], [ %560, %556 ]
  %567 = icmp eq i64 %513, 0
  br i1 %567, label %588, label %568

568:                                              ; preds = %563
  %569 = getelementptr inbounds %struct.SeqDef_s, ptr %505, i64 %566
  %570 = getelementptr inbounds %struct.SeqDef_s, ptr %505, i64 %566, i32 2
  %571 = load i16, ptr %570, align 2, !tbaa !59
  %572 = zext i16 %571 to i32
  %573 = add nuw nsw i32 %572, 3
  %574 = ptrtoint ptr %569 to i64
  %575 = sub i64 %574, %511
  %576 = lshr exact i64 %575, 3
  %577 = trunc i64 %576 to i32
  %578 = icmp eq i32 %509, %577
  br i1 %578, label %579, label %584

579:                                              ; preds = %568
  %580 = load i32, ptr %512, align 8, !tbaa !62
  %581 = icmp eq i32 %580, 2
  %582 = add nuw nsw i32 %572, 65539
  %583 = select i1 %581, i32 %582, i32 %573
  br label %584

584:                                              ; preds = %579, %568
  %585 = phi i32 [ %573, %568 ], [ %583, %579 ]
  %586 = zext nneg i32 %585 to i64
  %587 = add i64 %565, %586
  br label %588

588:                                              ; preds = %584, %563, %494
  %589 = phi i64 [ 0, %494 ], [ %564, %563 ], [ %587, %584 ]
  %590 = add i64 %589, %496
  %591 = ptrtoint ptr %51 to i64
  %592 = ptrtoint ptr %502 to i64
  %593 = sub i64 %591, %592
  %594 = call fastcc i64 @ZSTD_compressSubBlock(ptr noundef %31, ptr noundef nonnull %16, ptr noundef %505, i64 noundef %495, ptr noundef %504, i64 noundef %496, ptr noundef %501, ptr noundef %500, ptr noundef %499, ptr noundef nonnull %22, ptr noundef %502, i64 noundef %593, i32 noundef %33, i32 noundef %498, i32 noundef %497, ptr noundef nonnull %13, ptr noundef nonnull %14, i32 noundef %5)
  %595 = icmp ult i64 %594, -119
  br i1 %595, label %596, label %610

596:                                              ; preds = %588
  %597 = icmp ne i64 %594, 0
  %598 = icmp ult i64 %594, %590
  %599 = select i1 %597, i1 %598, i1 false
  br i1 %599, label %600, label %611

600:                                              ; preds = %596
  %601 = getelementptr inbounds i8, ptr %503, i64 %590
  %602 = getelementptr inbounds i8, ptr %502, i64 %594
  %603 = load i32, ptr %13, align 4, !tbaa !48
  %604 = icmp eq i32 %603, 0
  %605 = load i32, ptr %14, align 4, !tbaa !48
  %606 = icmp eq i32 %605, 0
  %607 = select i1 %606, i32 %497, i32 0
  %608 = getelementptr inbounds %struct.SeqDef_s, ptr %505, i64 %495
  br i1 %604, label %611, label %609

609:                                              ; preds = %600
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #5
  br label %618

610:                                              ; preds = %588
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #5
  br label %731

611:                                              ; preds = %600, %596
  %612 = phi i32 [ %497, %596 ], [ %607, %600 ]
  %613 = phi ptr [ %502, %596 ], [ %602, %600 ]
  %614 = phi ptr [ %503, %596 ], [ %601, %600 ]
  %615 = phi ptr [ %505, %596 ], [ %608, %600 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #5
  %616 = icmp eq i32 %498, 0
  br i1 %616, label %618, label %617

617:                                              ; preds = %611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %31, ptr noundef nonnull align 8 dereferenceable(2064) %30, i64 2064, i1 false)
  br label %618

618:                                              ; preds = %617, %611, %609
  %619 = phi ptr [ %608, %609 ], [ %615, %617 ], [ %615, %611 ]
  %620 = phi ptr [ %601, %609 ], [ %614, %617 ], [ %614, %611 ]
  %621 = phi ptr [ %602, %609 ], [ %613, %617 ], [ %613, %611 ]
  %622 = phi i32 [ %607, %609 ], [ %612, %617 ], [ %612, %611 ]
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %639, label %624

624:                                              ; preds = %618
  %625 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %16, i64 0, i32 1
  %626 = load i32, ptr %625, align 8, !tbaa !53
  %627 = add i32 %626, -1
  %628 = icmp ult i32 %627, 2
  br i1 %628, label %731, label %629

629:                                              ; preds = %624
  %630 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %16, i64 0, i32 1, i32 2
  %631 = load i32, ptr %630, align 8, !tbaa !54
  %632 = add i32 %631, -1
  %633 = icmp ult i32 %632, 2
  br i1 %633, label %731, label %634

634:                                              ; preds = %629
  %635 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %16, i64 0, i32 1, i32 1
  %636 = load i32, ptr %635, align 4, !tbaa !49
  %637 = add i32 %636, -3
  %638 = icmp ult i32 %637, -2
  br i1 %638, label %639, label %731

639:                                              ; preds = %634, %618
  %640 = icmp ult ptr %620, %50
  br i1 %640, label %641, label %726

641:                                              ; preds = %639
  %642 = ptrtoint ptr %50 to i64
  %643 = ptrtoint ptr %620 to i64
  %644 = sub i64 %642, %643
  %645 = ptrtoint ptr %621 to i64
  %646 = sub i64 %591, %645
  %647 = add i64 %644, 3
  %648 = icmp ugt i64 %647, %646
  br i1 %648, label %731, label %649

649:                                              ; preds = %641
  %650 = trunc i64 %644 to i32
  %651 = shl i32 %650, 3
  %652 = add i32 %651, %5
  %653 = trunc i32 %652 to i16
  store i16 %653, ptr %621, align 1, !tbaa !66
  %654 = lshr i32 %652, 16
  %655 = trunc i32 %654 to i8
  %656 = getelementptr inbounds i8, ptr %621, i64 2
  store i8 %655, ptr %656, align 1, !tbaa !50
  %657 = getelementptr inbounds i8, ptr %621, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %657, ptr align 1 %620, i64 %644, i1 false)
  %658 = icmp ult i64 %647, -119
  br i1 %658, label %659, label %731

659:                                              ; preds = %649
  %660 = getelementptr inbounds i8, ptr %621, i64 %647
  %661 = icmp ult ptr %619, %38
  br i1 %661, label %662, label %726

662:                                              ; preds = %659
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #5
  %663 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %30, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull align 8 dereferenceable(12) %663, i64 12, i1 false)
  %664 = icmp ult ptr %36, %619
  br i1 %664, label %665, label %724

665:                                              ; preds = %662
  %666 = load i32, ptr %15, align 4, !tbaa !48
  %667 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 10
  %668 = load i32, ptr %667, align 4, !tbaa !61
  %669 = load ptr, ptr %17, align 8, !tbaa !39
  %670 = ptrtoint ptr %669 to i64
  %671 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i64 0, i32 20, i32 9
  %672 = getelementptr inbounds i32, ptr %15, i64 1
  %673 = getelementptr inbounds i32, ptr %15, i64 2
  %674 = load i32, ptr %673, align 4
  %675 = load i32, ptr %672, align 4
  br label %676

676:                                              ; preds = %718, %665
  %677 = phi i32 [ %675, %665 ], [ %719, %718 ]
  %678 = phi i32 [ %674, %665 ], [ %720, %718 ]
  %679 = phi ptr [ %36, %665 ], [ %722, %718 ]
  %680 = phi i32 [ %666, %665 ], [ %721, %718 ]
  %681 = load i32, ptr %679, align 4, !tbaa !67
  %682 = getelementptr inbounds %struct.SeqDef_s, ptr %679, i64 0, i32 1
  %683 = load i16, ptr %682, align 4, !tbaa !56
  %684 = zext i16 %683 to i32
  %685 = ptrtoint ptr %679 to i64
  %686 = sub i64 %685, %670
  %687 = lshr exact i64 %686, 3
  %688 = trunc i64 %687 to i32
  %689 = icmp eq i32 %668, %688
  br i1 %689, label %690, label %695

690:                                              ; preds = %676
  %691 = load i32, ptr %671, align 8, !tbaa !62
  %692 = icmp eq i32 %691, 1
  %693 = or disjoint i32 %684, 65536
  %694 = select i1 %692, i32 %693, i32 %684
  br label %695

695:                                              ; preds = %690, %676
  %696 = phi i32 [ %684, %676 ], [ %694, %690 ]
  %697 = icmp ugt i32 %681, 3
  br i1 %697, label %698, label %700

698:                                              ; preds = %695
  store i32 %677, ptr %673, align 4, !tbaa !48
  store i32 %680, ptr %672, align 4, !tbaa !48
  %699 = add i32 %681, -3
  br label %715

700:                                              ; preds = %695
  %701 = icmp eq i32 %696, 0
  %702 = zext i1 %701 to i32
  %703 = add nsw i32 %681, -1
  %704 = add nsw i32 %703, %702
  switch i32 %704, label %707 [
    i32 0, label %718
    i32 3, label %705
  ]

705:                                              ; preds = %700
  %706 = add i32 %680, -1
  br label %711

707:                                              ; preds = %700
  %708 = zext i32 %704 to i64
  %709 = getelementptr inbounds i32, ptr %15, i64 %708
  %710 = load i32, ptr %709, align 4, !tbaa !48
  br label %711

711:                                              ; preds = %707, %705
  %712 = phi i32 [ %706, %705 ], [ %710, %707 ]
  %713 = icmp eq i32 %704, 1
  %714 = select i1 %713, i32 %678, i32 %677
  store i32 %714, ptr %673, align 4, !tbaa !48
  store i32 %680, ptr %672, align 4, !tbaa !48
  br label %715

715:                                              ; preds = %711, %698
  %716 = phi i32 [ %714, %711 ], [ %677, %698 ]
  %717 = phi i32 [ %712, %711 ], [ %699, %698 ]
  store i32 %717, ptr %15, align 4, !tbaa !48
  br label %718

718:                                              ; preds = %715, %700
  %719 = phi i32 [ %677, %700 ], [ %680, %715 ]
  %720 = phi i32 [ %678, %700 ], [ %716, %715 ]
  %721 = phi i32 [ %680, %700 ], [ %717, %715 ]
  %722 = getelementptr inbounds %struct.SeqDef_s, ptr %679, i64 1
  %723 = icmp ult ptr %722, %619
  br i1 %723, label %676, label %724, !llvm.loop !68

724:                                              ; preds = %718, %662
  %725 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %31, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %725, ptr noundef nonnull align 4 dereferenceable(12) %15, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #5
  br label %726

726:                                              ; preds = %724, %659, %639
  %727 = phi ptr [ %660, %724 ], [ %621, %639 ], [ %660, %659 ]
  %728 = ptrtoint ptr %727 to i64
  %729 = ptrtoint ptr %1 to i64
  %730 = sub i64 %728, %729
  br label %731

731:                                              ; preds = %726, %649, %641, %634, %629, %624, %610, %464, %209, %6
  %732 = phi i64 [ %27, %6 ], [ %730, %726 ], [ %594, %610 ], [ 0, %634 ], [ %445, %464 ], [ 0, %209 ], [ 0, %624 ], [ 0, %629 ], [ %647, %649 ], [ -70, %641 ]
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %16) #5
  ret i64 %732
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i64 @ZSTD_buildBlockEntropyStats(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressSubBlock(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nocapture noundef readonly %9, ptr noundef %10, i64 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, ptr nocapture noundef writeonly %15, ptr nocapture noundef writeonly %16, i32 noundef %17) unnamed_addr #0 {
  %19 = getelementptr inbounds i8, ptr %10, i64 %11
  %20 = getelementptr inbounds i8, ptr %10, i64 3
  %21 = ptrtoint ptr %19 to i64
  %22 = add nsw i64 %11, -3
  %23 = icmp ne i32 %13, 0
  %24 = select i1 %23, i64 200, i64 0
  %25 = sub nuw nsw i64 1024, %24
  %26 = icmp ugt i64 %25, %5
  %27 = select i1 %26, i64 3, i64 4
  %28 = sub nuw nsw i64 16384, %24
  %29 = icmp ule i64 %28, %5
  %30 = zext i1 %29 to i64
  %31 = add nuw nsw i64 %27, %30
  %32 = getelementptr inbounds i8, ptr %20, i64 %31
  %33 = icmp eq i64 %31, 3
  br i1 %23, label %34, label %36

34:                                               ; preds = %18
  %35 = load i32, ptr %1, align 8, !tbaa !47
  br label %36

36:                                               ; preds = %34, %18
  %37 = phi i32 [ %35, %34 ], [ 3, %18 ]
  store i32 0, ptr %15, align 4, !tbaa !48
  %38 = icmp eq i64 %5, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %1, align 8, !tbaa !47
  switch i32 %40, label %45 [
    i32 0, label %41
    i32 1, label %43
  ]

41:                                               ; preds = %39, %36
  %42 = tail call i64 @ZSTD_noCompressLiterals(ptr noundef nonnull %20, i64 noundef %22, ptr noundef %4, i64 noundef %5) #5
  br label %117

43:                                               ; preds = %39
  %44 = tail call i64 @ZSTD_compressRleLiteralsBlock(ptr noundef nonnull %20, i64 noundef %22, ptr noundef %4, i64 noundef %5) #5
  br label %117

45:                                               ; preds = %39
  %46 = icmp eq i32 %40, 2
  %47 = and i1 %23, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.ZSTD_hufCTablesMetadata_t, ptr %1, i64 0, i32 1
  %50 = getelementptr inbounds %struct.ZSTD_hufCTablesMetadata_t, ptr %1, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !69
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr nonnull align 4 %49, i64 %51, i1 false)
  %52 = load i64, ptr %50, align 8, !tbaa !69
  %53 = getelementptr inbounds i8, ptr %32, i64 %52
  br label %54

54:                                               ; preds = %48, %45
  %55 = phi i64 [ %52, %48 ], [ 0, %45 ]
  %56 = phi ptr [ %53, %48 ], [ %32, %45 ]
  %57 = icmp ne i32 %12, 0
  %58 = zext i1 %57 to i32
  %59 = ptrtoint ptr %56 to i64
  %60 = sub i64 %21, %59
  br i1 %33, label %61, label %63

61:                                               ; preds = %54
  %62 = tail call i64 @HUF_compress1X_usingCTable(ptr noundef nonnull %56, i64 noundef %60, ptr noundef %4, i64 noundef %5, ptr noundef %0, i32 noundef %58) #5
  br label %65

63:                                               ; preds = %54
  %64 = tail call i64 @HUF_compress4X_usingCTable(ptr noundef nonnull %56, i64 noundef %60, ptr noundef %4, i64 noundef %5, ptr noundef %0, i32 noundef %58) #5
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i64 [ %62, %61 ], [ %64, %63 ]
  %67 = getelementptr inbounds i8, ptr %56, i64 %66
  %68 = add i64 %66, %55
  %69 = add i64 %66, -1
  %70 = icmp ult i64 %69, -120
  br i1 %70, label %71, label %222

71:                                               ; preds = %65
  %72 = icmp ult i64 %68, %5
  %73 = select i1 %23, i1 true, i1 %72
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = tail call i64 @ZSTD_noCompressLiterals(ptr noundef nonnull %20, i64 noundef %22, ptr noundef %4, i64 noundef %5) #5
  br label %117

76:                                               ; preds = %71
  %77 = icmp ugt i64 %68, 1023
  %78 = select i1 %77, i64 4, i64 3
  %79 = icmp ugt i64 %68, 16383
  %80 = zext i1 %79 to i64
  %81 = add nuw nsw i64 %78, %80
  %82 = icmp ult i64 %31, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = tail call i64 @ZSTD_noCompressLiterals(ptr noundef nonnull %20, i64 noundef %22, ptr noundef %4, i64 noundef %5) #5
  br label %117

85:                                               ; preds = %76
  %86 = trunc i64 %5 to i32
  %87 = shl i32 %86, 4
  switch i64 %31, label %112 [
    i64 3, label %88
    i64 4, label %97
    i64 5, label %103
  ]

88:                                               ; preds = %85
  %89 = add i32 %37, %87
  %90 = trunc i64 %68 to i32
  %91 = shl i32 %90, 14
  %92 = add i32 %89, %91
  %93 = trunc i32 %92 to i16
  store i16 %93, ptr %20, align 1, !tbaa !66
  %94 = lshr i32 %92, 16
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds i8, ptr %10, i64 5
  store i8 %95, ptr %96, align 1, !tbaa !50
  br label %113

97:                                               ; preds = %85
  %98 = trunc i64 %68 to i32
  %99 = shl i32 %98, 18
  %100 = or disjoint i32 %87, 8
  %101 = add i32 %100, %37
  %102 = add i32 %101, %99
  store i32 %102, ptr %20, align 1, !tbaa !48
  br label %113

103:                                              ; preds = %85
  %104 = trunc i64 %68 to i32
  %105 = shl i32 %104, 22
  %106 = or disjoint i32 %87, 12
  %107 = add i32 %106, %37
  %108 = add i32 %107, %105
  store i32 %108, ptr %20, align 1, !tbaa !48
  %109 = lshr i64 %68, 10
  %110 = trunc i64 %109 to i8
  %111 = getelementptr inbounds i8, ptr %10, i64 7
  store i8 %110, ptr %111, align 1, !tbaa !50
  br label %113

112:                                              ; preds = %85
  unreachable

113:                                              ; preds = %103, %97, %88
  store i32 1, ptr %15, align 4, !tbaa !48
  %114 = ptrtoint ptr %67 to i64
  %115 = ptrtoint ptr %20 to i64
  %116 = sub i64 %114, %115
  br label %117

117:                                              ; preds = %41, %43, %74, %83, %113
  %118 = phi i64 [ %42, %41 ], [ %44, %43 ], [ %116, %113 ], [ %75, %74 ], [ %84, %83 ]
  %119 = icmp ult i64 %118, -119
  br i1 %119, label %120, label %222

120:                                              ; preds = %117
  %121 = icmp eq i64 %118, 0
  br i1 %121, label %222, label %122

122:                                              ; preds = %120
  %123 = getelementptr inbounds i8, ptr %20, i64 %118
  %124 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i64 0, i32 1
  %125 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %1, i64 0, i32 1
  %126 = ptrtoint ptr %123 to i64
  %127 = sub i64 %21, %126
  %128 = getelementptr i8, ptr %9, i64 4
  %129 = load i32, ptr %128, align 4, !tbaa !70
  %130 = icmp ugt i32 %129, 57
  %131 = zext i1 %130 to i32
  store i32 0, ptr %16, align 4, !tbaa !48
  %132 = icmp slt i64 %127, 4
  br i1 %132, label %222, label %133

133:                                              ; preds = %122
  %134 = icmp ult i64 %3, 128
  br i1 %134, label %149, label %135

135:                                              ; preds = %133
  %136 = icmp ult i64 %3, 32512
  br i1 %136, label %137, label %144

137:                                              ; preds = %135
  %138 = lshr i64 %3, 8
  %139 = trunc i64 %138 to i8
  %140 = or disjoint i8 %139, -128
  store i8 %140, ptr %123, align 1, !tbaa !50
  %141 = trunc i64 %3 to i8
  %142 = getelementptr inbounds i8, ptr %123, i64 1
  store i8 %141, ptr %142, align 1, !tbaa !50
  %143 = getelementptr inbounds i8, ptr %123, i64 2
  br label %153

144:                                              ; preds = %135
  store i8 -1, ptr %123, align 1, !tbaa !50
  %145 = getelementptr inbounds i8, ptr %123, i64 1
  %146 = trunc i64 %3 to i16
  %147 = add i16 %146, -32512
  store i16 %147, ptr %145, align 1, !tbaa !66
  %148 = getelementptr inbounds i8, ptr %123, i64 3
  br label %153

149:                                              ; preds = %133
  %150 = trunc i64 %3 to i8
  %151 = getelementptr inbounds i8, ptr %123, i64 1
  store i8 %150, ptr %123, align 1, !tbaa !50
  %152 = icmp eq i64 %3, 0
  br i1 %152, label %208, label %153

153:                                              ; preds = %149, %144, %137
  %154 = phi ptr [ %151, %149 ], [ %148, %144 ], [ %143, %137 ]
  %155 = getelementptr inbounds i8, ptr %154, i64 1
  %156 = icmp eq i32 %14, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %153
  store i8 -4, ptr %154, align 1, !tbaa !50
  %158 = ptrtoint ptr %155 to i64
  %159 = sub i64 %21, %158
  %160 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i64 0, i32 1, i32 1
  %161 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i64 0, i32 1, i32 2
  %162 = tail call i64 @ZSTD_encodeSequences(ptr noundef nonnull %155, i64 noundef %159, ptr noundef nonnull %160, ptr noundef %7, ptr noundef nonnull %124, ptr noundef %8, ptr noundef nonnull %161, ptr noundef %6, ptr noundef %2, i64 noundef %3, i32 noundef %131, i32 noundef %12) #5
  %163 = icmp ult i64 %162, -119
  br i1 %163, label %187, label %222

164:                                              ; preds = %153
  %165 = load i32, ptr %125, align 8, !tbaa !53
  %166 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %1, i64 0, i32 1, i32 1
  %167 = load i32, ptr %166, align 4, !tbaa !49
  %168 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %1, i64 0, i32 1, i32 2
  %169 = load i32, ptr %168, align 8, !tbaa !54
  %170 = shl i32 %165, 6
  %171 = shl i32 %167, 4
  %172 = add i32 %171, %170
  %173 = shl i32 %169, 2
  %174 = add i32 %172, %173
  %175 = trunc i32 %174 to i8
  store i8 %175, ptr %154, align 1, !tbaa !50
  %176 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %1, i64 0, i32 1, i32 3
  %177 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %1, i64 0, i32 1, i32 4
  %178 = load i64, ptr %177, align 8, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %155, ptr nonnull align 4 %176, i64 %178, i1 false)
  %179 = load i64, ptr %177, align 8, !tbaa !55
  %180 = getelementptr inbounds i8, ptr %155, i64 %179
  %181 = ptrtoint ptr %180 to i64
  %182 = sub i64 %21, %181
  %183 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i64 0, i32 1, i32 1
  %184 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i64 0, i32 1, i32 2
  %185 = tail call i64 @ZSTD_encodeSequences(ptr noundef nonnull %180, i64 noundef %182, ptr noundef nonnull %183, ptr noundef %7, ptr noundef nonnull %124, ptr noundef %8, ptr noundef nonnull %184, ptr noundef %6, ptr noundef %2, i64 noundef %3, i32 noundef %131, i32 noundef %12) #5
  %186 = icmp ult i64 %185, -119
  br i1 %186, label %189, label %222

187:                                              ; preds = %157
  %188 = getelementptr inbounds i8, ptr %155, i64 %162
  br label %197

189:                                              ; preds = %164
  %190 = getelementptr inbounds i8, ptr %180, i64 %185
  %191 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %1, i64 0, i32 1, i32 5
  %192 = load i64, ptr %191, align 8, !tbaa !71
  %193 = icmp ne i64 %192, 0
  %194 = add i64 %192, %185
  %195 = icmp ult i64 %194, 4
  %196 = and i1 %193, %195
  br i1 %196, label %222, label %197

197:                                              ; preds = %189, %187
  %198 = phi ptr [ %188, %187 ], [ %190, %189 ]
  %199 = ptrtoint ptr %198 to i64
  %200 = ptrtoint ptr %154 to i64
  %201 = sub i64 %199, %200
  %202 = icmp slt i64 %201, 4
  br i1 %202, label %222, label %203

203:                                              ; preds = %197
  store i32 1, ptr %16, align 4, !tbaa !48
  %204 = sub i64 %199, %126
  %205 = icmp ult i64 %204, -119
  br i1 %205, label %206, label %222

206:                                              ; preds = %203
  %207 = icmp eq i64 %204, 0
  br i1 %207, label %222, label %208

208:                                              ; preds = %149, %206
  %209 = phi i64 [ %204, %206 ], [ 1, %149 ]
  %210 = getelementptr inbounds i8, ptr %123, i64 %209
  %211 = ptrtoint ptr %210 to i64
  %212 = ptrtoint ptr %10 to i64
  %213 = sub i64 %211, %212
  %214 = trunc i64 %213 to i32
  %215 = shl i32 %214, 3
  %216 = add i32 %17, -20
  %217 = add i32 %216, %215
  %218 = trunc i32 %217 to i16
  store i16 %218, ptr %10, align 1, !tbaa !66
  %219 = lshr i32 %217, 16
  %220 = trunc i32 %219 to i8
  %221 = getelementptr inbounds i8, ptr %10, i64 2
  store i8 %220, ptr %221, align 1, !tbaa !50
  br label %222

222:                                              ; preds = %164, %157, %122, %197, %189, %206, %203, %65, %120, %117, %208
  %223 = phi i64 [ %213, %208 ], [ 0, %120 ], [ %118, %117 ], [ 0, %65 ], [ 0, %206 ], [ %204, %203 ], [ 0, %189 ], [ 0, %197 ], [ %185, %164 ], [ %162, %157 ], [ -70, %122 ]
  ret i64 %223
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i64 @HIST_count_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @HUF_estimateCompressedSize(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @HIST_countFast_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ZSTD_crossEntropyCost(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @ZSTD_fseBitCost(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @ZSTD_noCompressLiterals(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ZSTD_compressRleLiteralsBlock(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @HUF_compress1X_usingCTable(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @HUF_compress4X_usingCTable(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @ZSTD_encodeSequences(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !16, i64 3224}
!6 = !{!"ZSTD_CCtx_s", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !10, i64 240, !10, i64 464, !7, i64 688, !13, i64 696, !17, i64 704, !13, i64 776, !18, i64 784, !18, i64 792, !18, i64 800, !19, i64 808, !15, i64 896, !16, i64 920, !13, i64 928, !20, i64 936, !7, i64 968, !7, i64 972, !21, i64 976, !22, i64 1056, !16, i64 3168, !13, i64 3176, !24, i64 3184, !25, i64 3224, !16, i64 3544, !13, i64 3552, !7, i64 3560, !16, i64 3568, !13, i64 3576, !13, i64 3584, !13, i64 3592, !13, i64 3600, !16, i64 3608, !13, i64 3616, !13, i64 3624, !13, i64 3632, !7, i64 3640, !7, i64 3644, !28, i64 3648, !13, i64 3672, !13, i64 3680, !29, i64 3688, !16, i64 3728, !30, i64 3736, !18, i64 3760, !31, i64 3768, !16, i64 5264, !13, i64 5272}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ZSTD_CCtx_params_s", !7, i64 0, !11, i64 4, !12, i64 32, !7, i64 44, !7, i64 48, !13, i64 56, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !13, i64 80, !7, i64 88, !7, i64 92, !14, i64 96, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !13, i64 152, !7, i64 160, !7, i64 164, !15, i64 168, !7, i64 192, !7, i64 196, !16, i64 200, !16, i64 208, !7, i64 216}
!11 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24}
!12 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8}
!13 = !{!"long", !8, i64 0}
!14 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!15 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16}
!16 = !{!"any pointer", !8, i64 0}
!17 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !8, i64 56, !7, i64 60, !7, i64 64, !7, i64 68}
!18 = !{!"long long", !8, i64 0}
!19 = !{!"XXH64_state_s", !13, i64 0, !8, i64 8, !8, i64 40, !7, i64 72, !7, i64 76, !13, i64 80}
!20 = !{!"", !7, i64 0, !16, i64 8, !13, i64 16, !13, i64 24}
!21 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !13, i64 56, !13, i64 64, !7, i64 72, !7, i64 76}
!22 = !{!"", !23, i64 0, !16, i64 40, !7, i64 48, !16, i64 56, !8, i64 64, !8, i64 576}
!23 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !7, i64 24, !7, i64 28, !7, i64 32}
!24 = !{!"", !16, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!25 = !{!"", !16, i64 0, !16, i64 8, !26, i64 16}
!26 = !{!"ZSTD_MatchState_t", !23, i64 0, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !16, i64 56, !8, i64 64, !13, i64 96, !7, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !7, i64 136, !7, i64 140, !27, i64 144, !16, i64 248, !11, i64 256, !16, i64 288, !7, i64 296, !7, i64 300}
!27 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !16, i64 88, !7, i64 96}
!28 = !{!"ZSTD_inBuffer_s", !16, i64 0, !13, i64 8, !13, i64 16}
!29 = !{!"", !16, i64 0, !16, i64 8, !13, i64 16, !7, i64 24, !16, i64 32}
!30 = !{!"ZSTD_prefixDict_s", !16, i64 0, !13, i64 8, !7, i64 16}
!31 = !{!"", !21, i64 0, !21, i64 80, !21, i64 160, !21, i64 240, !21, i64 320, !8, i64 400, !32, i64 1184}
!32 = !{!"", !33, i64 0, !34, i64 144}
!33 = !{!"", !7, i64 0, !8, i64 4, !13, i64 136}
!34 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !8, i64 12, !13, i64 152, !13, i64 160}
!35 = !{!6, !16, i64 3232}
!36 = !{!6, !16, i64 3544}
!37 = !{!6, !13, i64 3552}
!38 = !{!6, !7, i64 8}
!39 = !{!21, !16, i64 0}
!40 = !{!21, !16, i64 8}
!41 = !{!21, !16, i64 16}
!42 = !{!21, !16, i64 24}
!43 = !{!21, !16, i64 32}
!44 = !{!21, !16, i64 40}
!45 = !{!21, !16, i64 48}
!46 = !{!10, !13, i64 56}
!47 = !{!33, !7, i64 0}
!48 = !{!7, !7, i64 0}
!49 = !{!34, !7, i64 4}
!50 = !{!8, !8, i64 0}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!34, !7, i64 0}
!54 = !{!34, !7, i64 8}
!55 = !{!34, !13, i64 152}
!56 = !{!57, !58, i64 4}
!57 = !{!"SeqDef_s", !7, i64 0, !58, i64 4, !58, i64 6}
!58 = !{!"short", !8, i64 0}
!59 = !{!57, !58, i64 6}
!60 = distinct !{!60, !52}
!61 = !{!21, !7, i64 76}
!62 = !{!21, !7, i64 72}
!63 = distinct !{!63, !52}
!64 = distinct !{!64, !52}
!65 = distinct !{!65, !52}
!66 = !{!58, !58, i64 0}
!67 = !{!57, !7, i64 0}
!68 = distinct !{!68, !52}
!69 = !{!33, !13, i64 136}
!70 = !{!10, !7, i64 4}
!71 = !{!34, !13, i64 160}
