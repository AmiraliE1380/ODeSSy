; ModuleID = '<stdin>'
source_filename = "/mydata/zstd/lib/compress/zstd_compress_superblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repcodes_s = type { [3 x i32] }
%struct.ZSTD_entropyCTablesMetadata_t = type { %struct.ZSTD_hufCTablesMetadata_t, %struct.ZSTD_fseCTablesMetadata_t }
%struct.ZSTD_hufCTablesMetadata_t = type { i32, [128 x i8], i64 }
%struct.ZSTD_fseCTablesMetadata_t = type { i32, i32, i32, [133 x i8], i64, i64 }

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
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %21 = load ptr, ptr %20, align 8, !tbaa !41
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %26 = load i64, ptr %25, align 8, !tbaa !43
  %27 = call i64 @ZSTD_buildBlockEntropyStats(ptr noundef nonnull %17, ptr noundef %19, ptr noundef %21, ptr noundef nonnull %22, ptr noundef nonnull %16, ptr noundef %24, i64 noundef %26) #5
  %28 = icmp ult i64 %27, -119
  br i1 %28, label %29, label %728

29:                                               ; preds = %6
  %30 = load ptr, ptr %18, align 8, !tbaa !5
  %31 = load ptr, ptr %20, align 8, !tbaa !41
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %33 = load i32, ptr %32, align 8, !tbaa !44
  %34 = load ptr, ptr %23, align 8, !tbaa !42
  %35 = load i64, ptr %25, align 8, !tbaa !43
  %36 = load ptr, ptr %17, align 8, !tbaa !45
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = ptrtoint ptr %38 to i64
  %40 = ptrtoint ptr %36 to i64
  %41 = sub i64 %39, %40
  %42 = ashr exact i64 %41, 3
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %44 = load ptr, ptr %43, align 8, !tbaa !47
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %46 = load ptr, ptr %45, align 8, !tbaa !48
  %47 = ptrtoint ptr %46 to i64
  %48 = ptrtoint ptr %44 to i64
  %49 = sub i64 %47, %48
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %51 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %53 = load ptr, ptr %52, align 8, !tbaa !49
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %55 = load ptr, ptr %54, align 8, !tbaa !50
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %57 = load ptr, ptr %56, align 8, !tbaa !51
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %59 = load i64, ptr %58, align 8, !tbaa !52
  %60 = call i64 @llvm.umax.i64(i64 %59, i64 1340)
  %61 = load i32, ptr %16, align 8, !tbaa !53
  %62 = icmp eq i32 %61, 2
  %63 = zext i1 %62 to i32
  %64 = icmp eq ptr %38, %36
  br i1 %64, label %.thread41, label %65

65:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i32 255, ptr %10, align 4, !tbaa !54
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
  %71 = load i32, ptr %10, align 4, !tbaa !54
  %72 = call i64 @HUF_estimateCompressedSize(ptr noundef %31, ptr noundef %34, i32 noundef %71) #5
  %73 = getelementptr inbounds nuw i8, ptr %16, i64 136
  %74 = load i64, ptr %73, align 8
  %75 = select i1 %62, i64 %74, i64 0
  %76 = add i64 %72, 3
  %77 = add i64 %76, %75
  br label %79

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %70, %67, %66, %65
  %80 = phi i64 [ 1, %66 ], [ 0, %78 ], [ %49, %65 ], [ %77, %70 ], [ %49, %67 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %81 = getelementptr inbounds nuw i8, ptr %31, i64 2064
  %82 = getelementptr inbounds nuw i8, ptr %16, i64 144
  %83 = getelementptr inbounds nuw i8, ptr %16, i64 148
  %84 = load i32, ptr %83, align 4, !tbaa !55
  %85 = getelementptr inbounds nuw i8, ptr %57, i64 %42
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 31, ptr %9, align 4, !tbaa !54
  %86 = call i64 @HIST_countFast_wksp(ptr noundef %34, ptr noundef nonnull %9, ptr noundef %57, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %42, ptr noundef %34, i64 noundef %35) #5
  switch i32 %84, label %92 [
    i32 0, label %87
    i32 1, label %.preheader337.preheader
  ]

87:                                               ; preds = %79
  %88 = load i32, ptr %9, align 4, !tbaa !54
  %89 = icmp ugt i32 %88, 28
  br i1 %89, label %108, label %90

90:                                               ; preds = %87
  %91 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, ptr noundef %34, i32 noundef %88) #5
  br label %98

92:                                               ; preds = %79
  %93 = and i32 %84, -2
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %.preheader337.preheader

95:                                               ; preds = %92
  %96 = load i32, ptr %9, align 4, !tbaa !54
  %97 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %81, ptr noundef %34, i32 noundef %96) #5
  br label %98

98:                                               ; preds = %95, %90
  %99 = phi i64 [ %97, %95 ], [ %91, %90 ]
  %100 = icmp ult i64 %99, -119
  br i1 %100, label %.preheader337.preheader, label %108

.preheader337.preheader:                          ; preds = %98, %92, %79
  %.ph320 = phi i64 [ 0, %79 ], [ 0, %92 ], [ %99, %98 ]
  br label %.preheader337

.preheader337:                                    ; preds = %.preheader337.preheader, %.preheader337
  %101 = phi i64 [ %105, %.preheader337 ], [ %.ph320, %.preheader337.preheader ]
  %102 = phi ptr [ %106, %.preheader337 ], [ %57, %.preheader337.preheader ]
  %103 = load i8, ptr %102, align 1, !tbaa !56
  %104 = zext i8 %103 to i64
  %105 = add i64 %101, %104
  %106 = getelementptr inbounds nuw i8, ptr %102, i64 1
  %107 = icmp ult ptr %106, %85
  br i1 %107, label %.preheader337, label %110, !llvm.loop !57

108:                                              ; preds = %98, %87
  %109 = mul i64 %42, 10
  br label %112

110:                                              ; preds = %.preheader337
  %111 = lshr i64 %105, 3
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i64 [ %109, %108 ], [ %111, %110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %114 = load i32, ptr %82, align 8, !tbaa !59
  %115 = getelementptr inbounds nuw i8, ptr %31, i64 4288
  %116 = getelementptr inbounds nuw i8, ptr %53, i64 %42
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i32 35, ptr %8, align 4, !tbaa !54
  %117 = call i64 @HIST_countFast_wksp(ptr noundef %34, ptr noundef nonnull %8, ptr noundef %53, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %42, ptr noundef %34, i64 noundef %35) #5
  switch i32 %114, label %123 [
    i32 0, label %118
    i32 1, label %.preheader334.preheader
  ]

.preheader334.preheader:                          ; preds = %129, %123, %112
  %.ph318 = phi i64 [ 0, %112 ], [ 0, %123 ], [ %130, %129 ]
  br label %.preheader334

118:                                              ; preds = %112
  %119 = load i32, ptr %8, align 4, !tbaa !54
  %120 = icmp ugt i32 %119, 35
  br i1 %120, label %132, label %121

121:                                              ; preds = %118
  %122 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, ptr noundef %34, i32 noundef %119) #5
  br label %129

123:                                              ; preds = %112
  %124 = and i32 %114, -2
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %126, label %.preheader334.preheader

126:                                              ; preds = %123
  %127 = load i32, ptr %8, align 4, !tbaa !54
  %128 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %115, ptr noundef %34, i32 noundef %127) #5
  br label %129

129:                                              ; preds = %126, %121
  %130 = phi i64 [ %128, %126 ], [ %122, %121 ]
  %131 = icmp ult i64 %130, -119
  br i1 %131, label %.preheader334.preheader, label %132

132:                                              ; preds = %129, %118
  %133 = mul i64 %42, 10
  br label %146

.preheader334:                                    ; preds = %.preheader334.preheader, %.preheader334
  %134 = phi i64 [ %141, %.preheader334 ], [ %.ph318, %.preheader334.preheader ]
  %135 = phi ptr [ %142, %.preheader334 ], [ %53, %.preheader334.preheader ]
  %136 = load i8, ptr %135, align 1, !tbaa !56
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !56
  %140 = zext i8 %139 to i64
  %141 = add i64 %134, %140
  %142 = getelementptr inbounds nuw i8, ptr %135, i64 1
  %143 = icmp ult ptr %142, %116
  br i1 %143, label %.preheader334, label %144, !llvm.loop !57

144:                                              ; preds = %.preheader334
  %145 = lshr i64 %141, 3
  br label %146

146:                                              ; preds = %144, %132
  %147 = phi i64 [ %133, %132 ], [ %145, %144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %148 = getelementptr inbounds nuw i8, ptr %16, i64 152
  %149 = load i32, ptr %148, align 8, !tbaa !60
  %150 = getelementptr inbounds nuw i8, ptr %31, i64 2836
  %151 = getelementptr inbounds nuw i8, ptr %55, i64 %42
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i32 52, ptr %7, align 4, !tbaa !54
  %152 = call i64 @HIST_countFast_wksp(ptr noundef %34, ptr noundef nonnull %7, ptr noundef %55, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %42, ptr noundef %34, i64 noundef %35) #5
  switch i32 %149, label %158 [
    i32 0, label %153
    i32 1, label %.preheader.preheader
  ]

.preheader.preheader:                             ; preds = %164, %158, %146
  %.ph = phi i64 [ 0, %146 ], [ 0, %158 ], [ %165, %164 ]
  br label %.preheader

153:                                              ; preds = %146
  %154 = load i32, ptr %7, align 4, !tbaa !54
  %155 = icmp ugt i32 %154, 52
  br i1 %155, label %167, label %156

156:                                              ; preds = %153
  %157 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, ptr noundef %34, i32 noundef %154) #5
  br label %164

158:                                              ; preds = %146
  %159 = and i32 %149, -2
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %161, label %.preheader.preheader

161:                                              ; preds = %158
  %162 = load i32, ptr %7, align 4, !tbaa !54
  %163 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %150, ptr noundef %34, i32 noundef %162) #5
  br label %164

164:                                              ; preds = %161, %156
  %165 = phi i64 [ %163, %161 ], [ %157, %156 ]
  %166 = icmp ult i64 %165, -119
  br i1 %166, label %.preheader.preheader, label %167

167:                                              ; preds = %164, %153
  %168 = mul i64 %42, 10
  br label %181

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %169 = phi i64 [ %176, %.preheader ], [ %.ph, %.preheader.preheader ]
  %170 = phi ptr [ %177, %.preheader ], [ %55, %.preheader.preheader ]
  %171 = load i8, ptr %170, align 1, !tbaa !56
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !56
  %175 = zext i8 %174 to i64
  %176 = add i64 %169, %175
  %177 = getelementptr inbounds nuw i8, ptr %170, i64 1
  %178 = icmp ult ptr %177, %151
  br i1 %178, label %.preheader, label %179, !llvm.loop !57

179:                                              ; preds = %.preheader
  %180 = lshr i64 %176, 3
  br label %181

181:                                              ; preds = %179, %167
  %182 = phi i64 [ %168, %167 ], [ %180, %179 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %183 = getelementptr inbounds nuw i8, ptr %16, i64 296
  %184 = load i64, ptr %183, align 8, !tbaa !61
  %185 = add i64 %80, 6
  %186 = add i64 %185, %113
  %187 = add i64 %186, %147
  %188 = add i64 %187, %182
  %189 = add i64 %188, %184
  %190 = icmp eq ptr %46, %44
  br i1 %190, label %194, label %191

191:                                              ; preds = %181
  %192 = shl i64 %80, 8
  %193 = udiv i64 %192, %49
  br label %194

194:                                              ; preds = %191, %181
  %195 = phi i64 [ %193, %191 ], [ 256, %181 ]
  %196 = sub i64 %189, %80
  %197 = shl i64 %196, 8
  %198 = udiv i64 %197, %42
  %199 = lshr i64 %60, 1
  %200 = add i64 %189, %199
  %201 = udiv i64 %200, %60
  %202 = call i64 @llvm.umax.i64(i64 %201, i64 1)
  %203 = shl i64 %189, 8
  %204 = udiv i64 %203, %202
  %205 = icmp ugt i64 %189, %4
  br i1 %205, label %728, label %206

206:                                              ; preds = %194
  %207 = add nsw i64 %202, -1
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %484, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %211 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %212 = ptrtoint ptr %51 to i64
  br label %213

213:                                              ; preds = %455, %209
  %214 = phi ptr [ %36, %209 ], [ %464, %455 ]
  %215 = phi ptr [ %44, %209 ], [ %463, %455 ]
  %216 = phi ptr [ %3, %209 ], [ %462, %455 ]
  %217 = phi ptr [ %1, %209 ], [ %461, %455 ]
  %218 = phi ptr [ %53, %209 ], [ %460, %455 ]
  %219 = phi ptr [ %55, %209 ], [ %459, %455 ]
  %220 = phi ptr [ %57, %209 ], [ %458, %455 ]
  %221 = phi i32 [ %63, %209 ], [ %457, %455 ]
  %222 = phi i32 [ 1, %209 ], [ %456, %455 ]
  %223 = phi i64 [ 0, %209 ], [ %465, %455 ]
  %224 = ptrtoint ptr %214 to i64
  %225 = sub i64 %39, %224
  %226 = ashr exact i64 %225, 3
  %227 = icmp eq i64 %223, 0
  %228 = select i1 %227, i64 30720, i64 0
  %229 = getelementptr inbounds nuw i8, ptr %214, i64 4
  %230 = load i16, ptr %229, align 4, !tbaa !62
  %231 = zext i16 %230 to i64
  %232 = mul i64 %195, %231
  %233 = add i64 %228, %198
  %234 = add i64 %233, %232
  %235 = icmp ule i64 %234, %204
  %236 = icmp ugt i64 %226, 1
  %237 = and i1 %236, %235
  br i1 %237, label %238, label %.thread

238:                                              ; preds = %213
  %239 = add nuw nsw i64 %231, 3
  %240 = getelementptr inbounds nuw i8, ptr %214, i64 6
  %241 = load i16, ptr %240, align 2, !tbaa !65
  %242 = zext i16 %241 to i64
  %243 = add nuw nsw i64 %239, %242
  br label %244

244:                                              ; preds = %265, %238
  %245 = phi i64 [ %266, %265 ], [ 1, %238 ]
  %246 = phi i64 [ %260, %265 ], [ %243, %238 ]
  %247 = phi i64 [ %254, %265 ], [ %234, %238 ]
  %248 = getelementptr inbounds nuw [8 x i8], ptr %214, i64 %245
  %249 = getelementptr inbounds nuw i8, ptr %248, i64 4
  %250 = load i16, ptr %249, align 4, !tbaa !62
  %251 = zext i16 %250 to i64
  %252 = mul i64 %195, %251
  %253 = add i64 %247, %198
  %254 = add i64 %253, %252
  %255 = getelementptr inbounds nuw i8, ptr %248, i64 6
  %256 = load i16, ptr %255, align 2, !tbaa !65
  %257 = zext i16 %256 to i64
  %258 = add i64 %246, 3
  %259 = add i64 %258, %251
  %260 = add i64 %259, %257
  %261 = icmp ugt i64 %254, %204
  %262 = shl i64 %260, 8
  %263 = icmp ult i64 %254, %262
  %264 = select i1 %261, i1 %263, i1 false
  br i1 %264, label %268, label %265

265:                                              ; preds = %244
  %266 = add nuw i64 %245, 1
  %267 = icmp eq i64 %266, %226
  br i1 %267, label %268, label %244, !llvm.loop !66

268:                                              ; preds = %265, %244
  %269 = phi i64 [ %245, %244 ], [ %226, %265 ]
  %270 = getelementptr inbounds nuw [8 x i8], ptr %214, i64 %269
  %271 = icmp eq ptr %270, %38
  br i1 %271, label %.loopexit45, label %277

.thread:                                          ; preds = %213
  %272 = getelementptr inbounds nuw i8, ptr %214, i64 8
  %273 = icmp eq ptr %272, %38
  br i1 %273, label %.loopexit45, label %.thread33

.thread33:                                        ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store i32 0, ptr %12, align 4, !tbaa !54
  %274 = load i32, ptr %210, align 4, !tbaa !67
  %275 = load ptr, ptr %17, align 8, !tbaa !45
  %276 = ptrtoint ptr %275 to i64
  br label %.thread39

277:                                              ; preds = %268
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store i32 0, ptr %12, align 4, !tbaa !54
  %278 = load i32, ptr %210, align 4, !tbaa !67
  %279 = load ptr, ptr %17, align 8, !tbaa !45
  %280 = ptrtoint ptr %279 to i64
  %281 = and i64 %269, 1
  %282 = icmp eq i64 %269, 1
  br i1 %282, label %.thread39, label %283

283:                                              ; preds = %277
  %284 = and i64 %269, -2
  br label %285

285:                                              ; preds = %320, %283
  %286 = phi i64 [ 0, %283 ], [ %324, %320 ]
  %287 = phi i64 [ 0, %283 ], [ %323, %320 ]
  %288 = getelementptr inbounds nuw [8 x i8], ptr %214, i64 %286
  %289 = getelementptr inbounds nuw i8, ptr %288, i64 4
  %290 = load i16, ptr %289, align 4, !tbaa !62
  %291 = zext i16 %290 to i32
  %292 = ptrtoint ptr %288 to i64
  %293 = sub i64 %292, %280
  %294 = lshr exact i64 %293, 3
  %295 = trunc i64 %294 to i32
  %296 = icmp eq i32 %278, %295
  br i1 %296, label %297, label %302

297:                                              ; preds = %285
  %298 = load i32, ptr %211, align 8, !tbaa !68
  %299 = icmp eq i32 %298, 1
  %300 = or disjoint i32 %291, 65536
  %301 = select i1 %299, i32 %300, i32 %291
  br label %302

302:                                              ; preds = %297, %285
  %303 = phi i32 [ %291, %285 ], [ %301, %297 ]
  %304 = zext nneg i32 %303 to i64
  %305 = add i64 %287, %304
  %306 = getelementptr inbounds nuw i8, ptr %288, i64 8
  %307 = getelementptr inbounds nuw i8, ptr %288, i64 12
  %308 = load i16, ptr %307, align 4, !tbaa !62
  %309 = zext i16 %308 to i32
  %310 = ptrtoint ptr %306 to i64
  %311 = sub i64 %310, %280
  %312 = lshr exact i64 %311, 3
  %313 = trunc i64 %312 to i32
  %314 = icmp eq i32 %278, %313
  br i1 %314, label %315, label %320

315:                                              ; preds = %302
  %316 = load i32, ptr %211, align 8, !tbaa !68
  %317 = icmp eq i32 %316, 1
  %318 = or disjoint i32 %309, 65536
  %319 = select i1 %317, i32 %318, i32 %309
  br label %320

320:                                              ; preds = %315, %302
  %321 = phi i32 [ %309, %302 ], [ %319, %315 ]
  %322 = zext nneg i32 %321 to i64
  %323 = add i64 %305, %322
  %324 = add i64 %286, 2
  %325 = icmp eq i64 %324, %284
  br i1 %325, label %326, label %285, !llvm.loop !69

326:                                              ; preds = %320
  %327 = icmp eq i64 %281, 0
  br i1 %327, label %352, label %..thread39_crit_edge

..thread39_crit_edge:                             ; preds = %326
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %214, i64 %284
  %.phi.trans.insert150 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 4
  %.pre = load i16, ptr %.phi.trans.insert150, align 4, !tbaa !62
  br label %.thread39

.thread39:                                        ; preds = %..thread39_crit_edge, %277, %.thread33
  %328 = phi i16 [ %.pre, %..thread39_crit_edge ], [ %230, %277 ], [ %230, %.thread33 ]
  %329 = phi i64 [ %323, %..thread39_crit_edge ], [ 0, %277 ], [ 0, %.thread33 ]
  %330 = phi i64 [ %284, %..thread39_crit_edge ], [ 0, %277 ], [ 0, %.thread33 ]
  %331 = phi ptr [ %270, %..thread39_crit_edge ], [ %270, %277 ], [ %272, %.thread33 ]
  %332 = phi i64 [ %269, %..thread39_crit_edge ], [ 1, %277 ], [ 1, %.thread33 ]
  %333 = phi i32 [ %278, %..thread39_crit_edge ], [ %278, %277 ], [ %274, %.thread33 ]
  %334 = phi i64 [ %280, %..thread39_crit_edge ], [ %280, %277 ], [ %276, %.thread33 ]
  %335 = phi i1 [ false, %..thread39_crit_edge ], [ true, %277 ], [ true, %.thread33 ]
  %336 = getelementptr inbounds nuw [8 x i8], ptr %214, i64 %330
  %337 = zext i16 %328 to i32
  %338 = ptrtoint ptr %336 to i64
  %339 = sub i64 %338, %334
  %340 = lshr exact i64 %339, 3
  %341 = trunc i64 %340 to i32
  %342 = icmp eq i32 %333, %341
  br i1 %342, label %343, label %348

343:                                              ; preds = %.thread39
  %344 = load i32, ptr %211, align 8, !tbaa !68
  %345 = icmp eq i32 %344, 1
  %346 = or disjoint i32 %337, 65536
  %347 = select i1 %345, i32 %346, i32 %337
  br label %348

348:                                              ; preds = %343, %.thread39
  %349 = phi i32 [ %337, %.thread39 ], [ %347, %343 ]
  %350 = zext nneg i32 %349 to i64
  %351 = add i64 %329, %350
  br i1 %335, label %.loopexit44.thread, label %._crit_edge

._crit_edge:                                      ; preds = %348
  %.pre151 = and i64 %332, -2
  br label %352

352:                                              ; preds = %._crit_edge, %326
  %.pre-phi = phi i64 [ %.pre151, %._crit_edge ], [ %284, %326 ]
  %353 = phi i64 [ %351, %._crit_edge ], [ %323, %326 ]
  %354 = phi i64 [ %334, %._crit_edge ], [ %280, %326 ]
  %355 = phi i32 [ %333, %._crit_edge ], [ %278, %326 ]
  %356 = phi i64 [ %332, %._crit_edge ], [ %269, %326 ]
  %357 = phi ptr [ %331, %._crit_edge ], [ %270, %326 ]
  %358 = phi i1 [ false, %._crit_edge ], [ true, %326 ]
  br label %359

359:                                              ; preds = %396, %352
  %360 = phi i64 [ 0, %352 ], [ %399, %396 ]
  %361 = phi i64 [ 0, %352 ], [ %400, %396 ]
  %362 = getelementptr inbounds nuw [8 x i8], ptr %214, i64 %361
  %363 = getelementptr inbounds nuw i8, ptr %362, i64 6
  %364 = load i16, ptr %363, align 2, !tbaa !65
  %365 = zext i16 %364 to i32
  %366 = add nuw nsw i32 %365, 3
  %367 = ptrtoint ptr %362 to i64
  %368 = sub i64 %367, %354
  %369 = lshr exact i64 %368, 3
  %370 = trunc i64 %369 to i32
  %371 = icmp eq i32 %355, %370
  br i1 %371, label %372, label %377

372:                                              ; preds = %359
  %373 = load i32, ptr %211, align 8, !tbaa !68
  %374 = icmp eq i32 %373, 2
  %375 = add nuw nsw i32 %365, 65539
  %376 = select i1 %374, i32 %375, i32 %366
  br label %377

377:                                              ; preds = %372, %359
  %378 = phi i32 [ %366, %359 ], [ %376, %372 ]
  %379 = zext nneg i32 %378 to i64
  %380 = add i64 %360, %379
  %381 = getelementptr inbounds nuw i8, ptr %362, i64 8
  %382 = getelementptr inbounds nuw i8, ptr %362, i64 14
  %383 = load i16, ptr %382, align 2, !tbaa !65
  %384 = zext i16 %383 to i32
  %385 = add nuw nsw i32 %384, 3
  %386 = ptrtoint ptr %381 to i64
  %387 = sub i64 %386, %354
  %388 = lshr exact i64 %387, 3
  %389 = trunc i64 %388 to i32
  %390 = icmp eq i32 %355, %389
  br i1 %390, label %391, label %396

391:                                              ; preds = %377
  %392 = load i32, ptr %211, align 8, !tbaa !68
  %393 = icmp eq i32 %392, 2
  %394 = add nuw nsw i32 %384, 65539
  %395 = select i1 %393, i32 %394, i32 %385
  br label %396

396:                                              ; preds = %391, %377
  %397 = phi i32 [ %385, %377 ], [ %395, %391 ]
  %398 = zext nneg i32 %397 to i64
  %399 = add i64 %380, %398
  %400 = add i64 %361, 2
  %401 = icmp eq i64 %400, %.pre-phi
  br i1 %401, label %.loopexit44, label %359, !llvm.loop !70

.loopexit44:                                      ; preds = %396
  br i1 %358, label %.thread40, label %.loopexit44.thread

.loopexit44.thread:                               ; preds = %.loopexit44, %348
  %402 = phi i64 [ %.pre-phi, %.loopexit44 ], [ 0, %348 ]
  %403 = phi i64 [ %399, %.loopexit44 ], [ 0, %348 ]
  %404 = phi ptr [ %357, %.loopexit44 ], [ %331, %348 ]
  %405 = phi i64 [ %356, %.loopexit44 ], [ %332, %348 ]
  %406 = phi i32 [ %355, %.loopexit44 ], [ %333, %348 ]
  %407 = phi i64 [ %354, %.loopexit44 ], [ %334, %348 ]
  %408 = phi i64 [ %353, %.loopexit44 ], [ %351, %348 ]
  %409 = getelementptr inbounds nuw [8 x i8], ptr %214, i64 %402
  %410 = getelementptr inbounds nuw i8, ptr %409, i64 6
  %411 = load i16, ptr %410, align 2, !tbaa !65
  %412 = zext i16 %411 to i32
  %413 = add nuw nsw i32 %412, 3
  %414 = ptrtoint ptr %409 to i64
  %415 = sub i64 %414, %407
  %416 = lshr exact i64 %415, 3
  %417 = trunc i64 %416 to i32
  %418 = icmp eq i32 %406, %417
  br i1 %418, label %419, label %424

419:                                              ; preds = %.loopexit44.thread
  %420 = load i32, ptr %211, align 8, !tbaa !68
  %421 = icmp eq i32 %420, 2
  %422 = add nuw nsw i32 %412, 65539
  %423 = select i1 %421, i32 %422, i32 %413
  br label %424

424:                                              ; preds = %419, %.loopexit44.thread
  %425 = phi i32 [ %413, %.loopexit44.thread ], [ %423, %419 ]
  %426 = zext nneg i32 %425 to i64
  %427 = add i64 %403, %426
  br label %.thread40

.thread40:                                        ; preds = %424, %.loopexit44
  %428 = phi ptr [ %357, %.loopexit44 ], [ %404, %424 ]
  %429 = phi i64 [ %356, %.loopexit44 ], [ %405, %424 ]
  %430 = phi i64 [ %353, %.loopexit44 ], [ %408, %424 ]
  %431 = phi i64 [ %399, %.loopexit44 ], [ %427, %424 ]
  %432 = add i64 %431, %430
  %433 = ptrtoint ptr %217 to i64
  %434 = sub i64 %212, %433
  %435 = call fastcc i64 @ZSTD_compressSubBlock(ptr noundef %31, ptr noundef nonnull readonly %16, ptr noundef nonnull %214, i64 noundef %429, ptr noundef %215, i64 noundef %430, ptr noundef %218, ptr noundef %219, ptr noundef %220, ptr noundef nonnull readonly %22, ptr noundef %217, i64 noundef %434, i32 noundef %33, i32 noundef %221, i32 noundef %222, ptr noundef %11, ptr noundef %12, i32 noundef 0)
  %436 = icmp ult i64 %435, -119
  br i1 %436, label %437, label %454

437:                                              ; preds = %.thread40
  %438 = icmp ne i64 %435, 0
  %439 = icmp ult i64 %435, %432
  %440 = select i1 %438, i1 %439, i1 false
  br i1 %440, label %441, label %455

441:                                              ; preds = %437
  %442 = getelementptr inbounds nuw i8, ptr %216, i64 %432
  %443 = getelementptr inbounds nuw i8, ptr %215, i64 %430
  %444 = getelementptr inbounds nuw i8, ptr %217, i64 %435
  %445 = getelementptr inbounds nuw i8, ptr %218, i64 %429
  %446 = getelementptr inbounds nuw i8, ptr %219, i64 %429
  %447 = getelementptr inbounds nuw i8, ptr %220, i64 %429
  %448 = load i32, ptr %11, align 4, !tbaa !54
  %449 = icmp eq i32 %448, 0
  %450 = select i1 %449, i32 %221, i32 0
  %451 = load i32, ptr %12, align 4, !tbaa !54
  %452 = icmp eq i32 %451, 0
  %453 = select i1 %452, i32 %222, i32 0
  br label %455

454:                                              ; preds = %.thread40
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %728

455:                                              ; preds = %441, %437
  %456 = phi i32 [ %222, %437 ], [ %453, %441 ]
  %457 = phi i32 [ %221, %437 ], [ %450, %441 ]
  %458 = phi ptr [ %220, %437 ], [ %447, %441 ]
  %459 = phi ptr [ %219, %437 ], [ %446, %441 ]
  %460 = phi ptr [ %218, %437 ], [ %445, %441 ]
  %461 = phi ptr [ %217, %437 ], [ %444, %441 ]
  %462 = phi ptr [ %216, %437 ], [ %442, %441 ]
  %463 = phi ptr [ %215, %437 ], [ %443, %441 ]
  %464 = phi ptr [ %214, %437 ], [ %428, %441 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %465 = add nuw nsw i64 %223, 1
  %466 = icmp eq i64 %465, %207
  br i1 %466, label %467, label %213, !llvm.loop !71

467:                                              ; preds = %455
  %468 = ptrtoint ptr %464 to i64
  %469 = sub i64 %39, %468
  %470 = ashr exact i64 %469, 3
  br label %.loopexit45, !llvm.loop !71

.loopexit45:                                      ; preds = %.thread, %268, %467
  %471 = phi i64 [ %470, %467 ], [ %226, %268 ], [ %226, %.thread ]
  %472 = phi i64 [ %469, %467 ], [ %225, %268 ], [ %225, %.thread ]
  %473 = phi i32 [ %456, %467 ], [ %222, %268 ], [ %222, %.thread ]
  %474 = phi i32 [ %457, %467 ], [ %221, %268 ], [ %221, %.thread ]
  %475 = phi ptr [ %458, %467 ], [ %220, %268 ], [ %220, %.thread ]
  %476 = phi ptr [ %459, %467 ], [ %219, %268 ], [ %219, %.thread ]
  %477 = phi ptr [ %460, %467 ], [ %218, %268 ], [ %218, %.thread ]
  %478 = phi ptr [ %461, %467 ], [ %217, %268 ], [ %217, %.thread ]
  %479 = phi ptr [ %462, %467 ], [ %216, %268 ], [ %216, %.thread ]
  %480 = phi ptr [ %463, %467 ], [ %215, %268 ], [ %215, %.thread ]
  %481 = phi ptr [ %464, %467 ], [ %214, %268 ], [ %214, %.thread ]
  %482 = ptrtoint ptr %480 to i64
  %483 = sub i64 %47, %482
  br label %484

484:                                              ; preds = %.loopexit45, %206
  %485 = phi i64 [ %471, %.loopexit45 ], [ %42, %206 ]
  %486 = phi i64 [ %472, %.loopexit45 ], [ %41, %206 ]
  %487 = phi i64 [ %483, %.loopexit45 ], [ %49, %206 ]
  %488 = phi i32 [ %473, %.loopexit45 ], [ 1, %206 ]
  %489 = phi i32 [ %474, %.loopexit45 ], [ %63, %206 ]
  %490 = phi ptr [ %475, %.loopexit45 ], [ %57, %206 ]
  %491 = phi ptr [ %476, %.loopexit45 ], [ %55, %206 ]
  %492 = phi ptr [ %477, %.loopexit45 ], [ %53, %206 ]
  %493 = phi ptr [ %478, %.loopexit45 ], [ %1, %206 ]
  %494 = phi ptr [ %479, %.loopexit45 ], [ %3, %206 ]
  %495 = phi ptr [ %480, %.loopexit45 ], [ %44, %206 ]
  %496 = phi ptr [ %481, %.loopexit45 ], [ %36, %206 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store i32 0, ptr %14, align 4, !tbaa !54
  %497 = icmp eq ptr %38, %496
  br i1 %497, label %574, label %498

.thread41:                                        ; preds = %29
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store i32 0, ptr %14, align 4, !tbaa !54
  br label %574

498:                                              ; preds = %484
  %499 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %500 = load i32, ptr %499, align 4, !tbaa !67
  %501 = load ptr, ptr %17, align 8, !tbaa !45
  %502 = ptrtoint ptr %501 to i64
  %503 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %504 = and i64 %485, 1
  %505 = icmp eq i64 %485, 1
  br i1 %505, label %.thread43, label %506

506:                                              ; preds = %498
  %507 = and i64 %485, -2
  br label %508

508:                                              ; preds = %545, %506
  %509 = phi i64 [ 0, %506 ], [ %548, %545 ]
  %510 = phi i64 [ 0, %506 ], [ %549, %545 ]
  %511 = getelementptr inbounds nuw [8 x i8], ptr %496, i64 %510
  %512 = getelementptr inbounds nuw i8, ptr %511, i64 6
  %513 = load i16, ptr %512, align 2, !tbaa !65
  %514 = zext i16 %513 to i32
  %515 = add nuw nsw i32 %514, 3
  %516 = ptrtoint ptr %511 to i64
  %517 = sub i64 %516, %502
  %518 = lshr exact i64 %517, 3
  %519 = trunc i64 %518 to i32
  %520 = icmp eq i32 %500, %519
  br i1 %520, label %521, label %526

521:                                              ; preds = %508
  %522 = load i32, ptr %503, align 8, !tbaa !68
  %523 = icmp eq i32 %522, 2
  %524 = add nuw nsw i32 %514, 65539
  %525 = select i1 %523, i32 %524, i32 %515
  br label %526

526:                                              ; preds = %521, %508
  %527 = phi i32 [ %515, %508 ], [ %525, %521 ]
  %528 = zext nneg i32 %527 to i64
  %529 = add i64 %509, %528
  %530 = getelementptr inbounds nuw i8, ptr %511, i64 8
  %531 = getelementptr inbounds nuw i8, ptr %511, i64 14
  %532 = load i16, ptr %531, align 2, !tbaa !65
  %533 = zext i16 %532 to i32
  %534 = add nuw nsw i32 %533, 3
  %535 = ptrtoint ptr %530 to i64
  %536 = sub i64 %535, %502
  %537 = lshr exact i64 %536, 3
  %538 = trunc i64 %537 to i32
  %539 = icmp eq i32 %500, %538
  br i1 %539, label %540, label %545

540:                                              ; preds = %526
  %541 = load i32, ptr %503, align 8, !tbaa !68
  %542 = icmp eq i32 %541, 2
  %543 = add nuw nsw i32 %533, 65539
  %544 = select i1 %542, i32 %543, i32 %534
  br label %545

545:                                              ; preds = %540, %526
  %546 = phi i32 [ %534, %526 ], [ %544, %540 ]
  %547 = zext nneg i32 %546 to i64
  %548 = add i64 %529, %547
  %549 = add i64 %510, 2
  %550 = icmp eq i64 %549, %507
  br i1 %550, label %551, label %508, !llvm.loop !70

551:                                              ; preds = %545
  %552 = icmp eq i64 %504, 0
  br i1 %552, label %574, label %.thread43

.thread43:                                        ; preds = %551, %498
  %553 = phi i64 [ %507, %551 ], [ 0, %498 ]
  %554 = phi i64 [ %548, %551 ], [ 0, %498 ]
  %555 = getelementptr inbounds nuw [8 x i8], ptr %496, i64 %553
  %556 = getelementptr inbounds nuw i8, ptr %555, i64 6
  %557 = load i16, ptr %556, align 2, !tbaa !65
  %558 = zext i16 %557 to i32
  %559 = add nuw nsw i32 %558, 3
  %560 = ptrtoint ptr %555 to i64
  %561 = sub i64 %560, %502
  %562 = lshr exact i64 %561, 3
  %563 = trunc i64 %562 to i32
  %564 = icmp eq i32 %500, %563
  br i1 %564, label %565, label %570

565:                                              ; preds = %.thread43
  %566 = load i32, ptr %503, align 8, !tbaa !68
  %567 = icmp eq i32 %566, 2
  %568 = add nuw nsw i32 %558, 65539
  %569 = select i1 %567, i32 %568, i32 %559
  br label %570

570:                                              ; preds = %565, %.thread43
  %571 = phi i32 [ %559, %.thread43 ], [ %569, %565 ]
  %572 = zext nneg i32 %571 to i64
  %573 = add i64 %554, %572
  br label %574

574:                                              ; preds = %570, %551, %.thread41, %484
  %575 = phi ptr [ %496, %484 ], [ %496, %551 ], [ %496, %570 ], [ %36, %.thread41 ]
  %576 = phi ptr [ %495, %484 ], [ %495, %551 ], [ %495, %570 ], [ %44, %.thread41 ]
  %577 = phi ptr [ %494, %484 ], [ %494, %551 ], [ %494, %570 ], [ %3, %.thread41 ]
  %578 = phi ptr [ %493, %484 ], [ %493, %551 ], [ %493, %570 ], [ %1, %.thread41 ]
  %579 = phi ptr [ %492, %484 ], [ %492, %551 ], [ %492, %570 ], [ %53, %.thread41 ]
  %580 = phi ptr [ %491, %484 ], [ %491, %551 ], [ %491, %570 ], [ %55, %.thread41 ]
  %581 = phi ptr [ %490, %484 ], [ %490, %551 ], [ %490, %570 ], [ %57, %.thread41 ]
  %582 = phi i32 [ %489, %484 ], [ %489, %551 ], [ %489, %570 ], [ %63, %.thread41 ]
  %583 = phi i32 [ %488, %484 ], [ %488, %551 ], [ %488, %570 ], [ 1, %.thread41 ]
  %584 = phi i64 [ %487, %484 ], [ %487, %551 ], [ %487, %570 ], [ %49, %.thread41 ]
  %585 = phi i64 [ %486, %484 ], [ %486, %551 ], [ %486, %570 ], [ 0, %.thread41 ]
  %586 = phi i64 [ %485, %484 ], [ %485, %551 ], [ %485, %570 ], [ 0, %.thread41 ]
  %587 = phi i64 [ 0, %484 ], [ %548, %551 ], [ %573, %570 ], [ 0, %.thread41 ]
  %588 = add i64 %587, %584
  %589 = ptrtoint ptr %51 to i64
  %590 = ptrtoint ptr %578 to i64
  %591 = sub i64 %589, %590
  %592 = call fastcc i64 @ZSTD_compressSubBlock(ptr noundef %31, ptr noundef nonnull readonly %16, ptr noundef %575, i64 noundef %586, ptr noundef %576, i64 noundef %584, ptr noundef %579, ptr noundef %580, ptr noundef %581, ptr noundef nonnull readonly %22, ptr noundef %578, i64 noundef %591, i32 noundef %33, i32 noundef %582, i32 noundef %583, ptr noundef %13, ptr noundef %14, i32 noundef %5)
  %593 = icmp ult i64 %592, -119
  br i1 %593, label %594, label %608

594:                                              ; preds = %574
  %595 = icmp ne i64 %592, 0
  %596 = icmp ult i64 %592, %588
  %597 = select i1 %595, i1 %596, i1 false
  br i1 %597, label %598, label %609

598:                                              ; preds = %594
  %599 = getelementptr inbounds nuw i8, ptr %577, i64 %588
  %600 = getelementptr inbounds nuw i8, ptr %578, i64 %592
  %601 = load i32, ptr %13, align 4, !tbaa !54
  %602 = icmp eq i32 %601, 0
  %603 = load i32, ptr %14, align 4, !tbaa !54
  %604 = icmp eq i32 %603, 0
  %605 = select i1 %604, i32 %583, i32 0
  %606 = getelementptr inbounds nuw i8, ptr %575, i64 %585
  br i1 %602, label %609, label %607

607:                                              ; preds = %598
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %616

608:                                              ; preds = %574
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %728

609:                                              ; preds = %598, %594
  %610 = phi i32 [ %583, %594 ], [ %605, %598 ]
  %611 = phi ptr [ %578, %594 ], [ %600, %598 ]
  %612 = phi ptr [ %577, %594 ], [ %599, %598 ]
  %613 = phi ptr [ %575, %594 ], [ %606, %598 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %614 = icmp eq i32 %582, 0
  br i1 %614, label %616, label %615

615:                                              ; preds = %609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %31, ptr noundef nonnull readonly align 8 dereferenceable(2064) %30, i64 2064, i1 false)
  br label %616

616:                                              ; preds = %615, %609, %607
  %617 = phi ptr [ %606, %607 ], [ %613, %615 ], [ %613, %609 ]
  %618 = phi ptr [ %599, %607 ], [ %612, %615 ], [ %612, %609 ]
  %619 = phi ptr [ %600, %607 ], [ %611, %615 ], [ %611, %609 ]
  %620 = phi i32 [ %605, %607 ], [ %610, %615 ], [ %610, %609 ]
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %637, label %622

622:                                              ; preds = %616
  %623 = getelementptr inbounds nuw i8, ptr %16, i64 144
  %624 = load i32, ptr %623, align 8, !tbaa !59
  %625 = add i32 %624, -1
  %626 = icmp ult i32 %625, 2
  br i1 %626, label %728, label %627

627:                                              ; preds = %622
  %628 = getelementptr inbounds nuw i8, ptr %16, i64 152
  %629 = load i32, ptr %628, align 8, !tbaa !60
  %630 = add i32 %629, -1
  %631 = icmp ult i32 %630, 2
  br i1 %631, label %728, label %632

632:                                              ; preds = %627
  %633 = getelementptr inbounds nuw i8, ptr %16, i64 148
  %634 = load i32, ptr %633, align 4, !tbaa !55
  %635 = add i32 %634, -3
  %636 = icmp ult i32 %635, -2
  br i1 %636, label %637, label %728

637:                                              ; preds = %632, %616
  %638 = icmp ult ptr %618, %50
  br i1 %638, label %639, label %723

639:                                              ; preds = %637
  %640 = ptrtoint ptr %50 to i64
  %641 = ptrtoint ptr %618 to i64
  %642 = sub i64 %640, %641
  %643 = ptrtoint ptr %619 to i64
  %644 = sub i64 %589, %643
  %645 = add i64 %642, 3
  %646 = icmp ugt i64 %645, %644
  br i1 %646, label %728, label %647

647:                                              ; preds = %639
  %648 = trunc i64 %642 to i32
  %649 = shl i32 %648, 3
  %650 = add i32 %649, %5
  %651 = trunc i32 %650 to i16
  store i16 %651, ptr %619, align 1, !tbaa !72
  %652 = lshr i32 %650, 16
  %653 = trunc i32 %652 to i8
  %654 = getelementptr inbounds nuw i8, ptr %619, i64 2
  store i8 %653, ptr %654, align 1, !tbaa !56
  %655 = getelementptr inbounds nuw i8, ptr %619, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %655, ptr readonly align 1 %618, i64 %642, i1 false)
  %656 = icmp ult i64 %645, -119
  br i1 %656, label %657, label %728

657:                                              ; preds = %647
  %658 = getelementptr inbounds nuw i8, ptr %619, i64 %645
  %659 = icmp ult ptr %617, %38
  br i1 %659, label %660, label %723

660:                                              ; preds = %657
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %661 = getelementptr inbounds nuw i8, ptr %30, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull readonly align 8 dereferenceable(12) %661, i64 12, i1 false)
  %662 = icmp ult ptr %36, %617
  br i1 %662, label %663, label %.loopexit

663:                                              ; preds = %660
  %664 = load i32, ptr %15, align 4
  %665 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %666 = load i32, ptr %665, align 4, !tbaa !67
  %667 = load ptr, ptr %17, align 8, !tbaa !45
  %668 = ptrtoint ptr %667 to i64
  %669 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %670 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %671 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %672 = load i32, ptr %671, align 4
  %673 = load i32, ptr %670, align 4
  br label %674

674:                                              ; preds = %716, %663
  %675 = phi i32 [ %673, %663 ], [ %717, %716 ]
  %676 = phi i32 [ %672, %663 ], [ %718, %716 ]
  %677 = phi ptr [ %36, %663 ], [ %720, %716 ]
  %678 = phi i32 [ %664, %663 ], [ %719, %716 ]
  %679 = load i32, ptr %677, align 4, !tbaa !73
  %680 = getelementptr inbounds nuw i8, ptr %677, i64 4
  %681 = load i16, ptr %680, align 4, !tbaa !62
  %682 = zext i16 %681 to i32
  %683 = ptrtoint ptr %677 to i64
  %684 = sub i64 %683, %668
  %685 = lshr exact i64 %684, 3
  %686 = trunc i64 %685 to i32
  %687 = icmp eq i32 %666, %686
  br i1 %687, label %688, label %693

688:                                              ; preds = %674
  %689 = load i32, ptr %669, align 8, !tbaa !68
  %690 = icmp eq i32 %689, 1
  %691 = or disjoint i32 %682, 65536
  %692 = select i1 %690, i32 %691, i32 %682
  br label %693

693:                                              ; preds = %688, %674
  %694 = phi i32 [ %682, %674 ], [ %692, %688 ]
  %695 = icmp ugt i32 %679, 3
  br i1 %695, label %696, label %698

696:                                              ; preds = %693
  store i32 %675, ptr %671, align 4, !tbaa !54
  store i32 %678, ptr %670, align 4, !tbaa !54
  %697 = add i32 %679, -3
  br label %713

698:                                              ; preds = %693
  %699 = icmp eq i32 %694, 0
  %700 = zext i1 %699 to i32
  %701 = add nsw i32 %679, -1
  %702 = add nsw i32 %701, %700
  switch i32 %702, label %705 [
    i32 0, label %716
    i32 3, label %703
  ]

703:                                              ; preds = %698
  %704 = add i32 %678, -1
  br label %709

705:                                              ; preds = %698
  %706 = zext i32 %702 to i64
  %707 = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %706
  %708 = load i32, ptr %707, align 4, !tbaa !54
  br label %709

709:                                              ; preds = %705, %703
  %710 = phi i32 [ %704, %703 ], [ %708, %705 ]
  %711 = icmp eq i32 %702, 1
  %712 = select i1 %711, i32 %676, i32 %675
  store i32 %712, ptr %671, align 4, !tbaa !54
  store i32 %678, ptr %670, align 4, !tbaa !54
  br label %713

713:                                              ; preds = %709, %696
  %714 = phi i32 [ %712, %709 ], [ %675, %696 ]
  %715 = phi i32 [ %710, %709 ], [ %697, %696 ]
  store i32 %715, ptr %15, align 4, !tbaa !54
  br label %716

716:                                              ; preds = %713, %698
  %717 = phi i32 [ %675, %698 ], [ %678, %713 ]
  %718 = phi i32 [ %676, %698 ], [ %714, %713 ]
  %719 = phi i32 [ %678, %698 ], [ %715, %713 ]
  %720 = getelementptr inbounds nuw i8, ptr %677, i64 8
  %721 = icmp ult ptr %720, %617
  br i1 %721, label %674, label %.loopexit, !llvm.loop !74

.loopexit:                                        ; preds = %716, %660
  %722 = getelementptr inbounds nuw i8, ptr %31, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %722, ptr noundef nonnull align 4 dereferenceable(12) %15, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %723

723:                                              ; preds = %.loopexit, %657, %637
  %724 = phi ptr [ %658, %.loopexit ], [ %619, %637 ], [ %658, %657 ]
  %725 = ptrtoint ptr %724 to i64
  %726 = ptrtoint ptr %1 to i64
  %727 = sub i64 %725, %726
  br label %728

728:                                              ; preds = %723, %647, %639, %632, %627, %622, %608, %454, %194, %6
  %729 = phi i64 [ %27, %6 ], [ %727, %723 ], [ %592, %608 ], [ 0, %632 ], [ %435, %454 ], [ 0, %194 ], [ 0, %622 ], [ 0, %627 ], [ %645, %647 ], [ -70, %639 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  ret i64 %729
}

declare i64 @ZSTD_buildBlockEntropyStats(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 5, 1) i64 @ZSTD_compressSubBlock(ptr noundef %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef readonly captures(none) %9, ptr noundef %10, i64 noundef %11, i32 noundef %12, i32 noundef range(i32 0, 2) %13, i32 noundef range(i32 0, 2) %14, ptr noundef nonnull writeonly captures(none) initializes((0, 4)) %15, ptr noundef nonnull writeonly captures(none) %16, i32 noundef %17) unnamed_addr #0 {
  %19 = getelementptr i8, ptr %10, i64 %11
  %20 = getelementptr inbounds nuw i8, ptr %10, i64 3
  %21 = ptrtoint ptr %19 to i64
  %22 = add i64 %11, -3
  %23 = icmp ne i32 %13, 0
  %24 = select i1 %23, i64 200, i64 0
  %25 = sub nuw nsw i64 1024, %24
  %26 = icmp ult i64 %5, %25
  %27 = select i1 %26, i64 3, i64 4
  %28 = sub nuw nsw i64 16384, %24
  %29 = icmp uge i64 %5, %28
  %30 = zext i1 %29 to i64
  %31 = add nuw nsw i64 %27, %30
  %32 = getelementptr inbounds nuw i8, ptr %20, i64 %31
  %33 = icmp eq i64 %31, 3
  br i1 %23, label %34, label %36

34:                                               ; preds = %18
  %35 = load i32, ptr %1, align 8, !tbaa !75
  br label %36

36:                                               ; preds = %34, %18
  %37 = phi i32 [ %35, %34 ], [ 3, %18 ]
  store i32 0, ptr %15, align 4, !tbaa !54
  %38 = icmp eq i64 %5, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %1, align 8, !tbaa !75
  switch i32 %40, label %45 [
    i32 0, label %41
    i32 1, label %43
  ]

41:                                               ; preds = %39, %36
  %42 = tail call i64 @ZSTD_noCompressLiterals(ptr noundef nonnull %20, i64 noundef %22, ptr noundef %4, i64 noundef %5) #5
  br label %116

43:                                               ; preds = %39
  %44 = tail call i64 @ZSTD_compressRleLiteralsBlock(ptr noundef nonnull %20, i64 noundef %22, ptr noundef %4, i64 noundef %5) #5
  br label %116

45:                                               ; preds = %39
  %46 = icmp eq i32 %40, 2
  %47 = and i1 %23, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %50 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %51 = load i64, ptr %50, align 8, !tbaa !76
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr nonnull readonly align 4 %49, i64 %51, i1 false)
  %52 = load i64, ptr %50, align 8, !tbaa !76
  %53 = getelementptr inbounds nuw i8, ptr %32, i64 %52
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
  %67 = getelementptr inbounds nuw i8, ptr %56, i64 %66
  %68 = add i64 %66, %55
  %69 = add i64 %66, -1
  %70 = icmp ult i64 %69, -120
  br i1 %70, label %71, label %219

71:                                               ; preds = %65
  %72 = icmp ult i64 %68, %5
  %73 = select i1 %23, i1 true, i1 %72
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = tail call i64 @ZSTD_noCompressLiterals(ptr noundef nonnull %20, i64 noundef %22, ptr noundef %4, i64 noundef %5) #5
  br label %116

76:                                               ; preds = %71
  %77 = icmp ugt i64 %68, 1023
  %78 = select i1 %77, i64 4, i64 3
  %79 = icmp ugt i64 %68, 16383
  %80 = zext i1 %79 to i64
  %81 = add nuw nsw i64 %78, %80
  %82 = icmp samesign ult i64 %31, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = tail call i64 @ZSTD_noCompressLiterals(ptr noundef nonnull %20, i64 noundef %22, ptr noundef %4, i64 noundef %5) #5
  br label %116

85:                                               ; preds = %76
  %86 = trunc i64 %5 to i32
  %87 = shl i32 %86, 4
  switch i64 %31, label %default.unreachable21 [
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
  store i16 %93, ptr %20, align 1, !tbaa !72
  %94 = lshr i32 %92, 16
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds nuw i8, ptr %10, i64 5
  store i8 %95, ptr %96, align 1, !tbaa !56
  br label %112

97:                                               ; preds = %85
  %98 = trunc i64 %68 to i32
  %99 = shl i32 %98, 18
  %100 = or disjoint i32 %87, 8
  %101 = add i32 %100, %37
  %102 = add i32 %101, %99
  store i32 %102, ptr %20, align 1, !tbaa !54
  br label %112

103:                                              ; preds = %85
  %104 = trunc i64 %68 to i32
  %105 = shl i32 %104, 22
  %106 = or disjoint i32 %87, 12
  %107 = add i32 %106, %37
  %108 = add i32 %107, %105
  store i32 %108, ptr %20, align 1, !tbaa !54
  %109 = lshr i64 %68, 10
  %110 = trunc i64 %109 to i8
  %111 = getelementptr inbounds nuw i8, ptr %10, i64 7
  store i8 %110, ptr %111, align 1, !tbaa !56
  br label %112

default.unreachable21:                            ; preds = %85
  unreachable

112:                                              ; preds = %103, %97, %88
  store i32 1, ptr %15, align 4, !tbaa !54
  %113 = ptrtoint ptr %67 to i64
  %114 = ptrtoint ptr %20 to i64
  %115 = sub i64 %113, %114
  br label %116

116:                                              ; preds = %112, %83, %74, %43, %41
  %117 = phi i64 [ %42, %41 ], [ %44, %43 ], [ %115, %112 ], [ %75, %74 ], [ %84, %83 ]
  %118 = icmp ult i64 %117, -119
  br i1 %118, label %119, label %219

119:                                              ; preds = %116
  %120 = icmp eq i64 %117, 0
  br i1 %120, label %219, label %121

121:                                              ; preds = %119
  %122 = getelementptr inbounds nuw i8, ptr %20, i64 %117
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %124 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %125 = ptrtoint ptr %122 to i64
  %126 = sub i64 %22, %117
  %127 = getelementptr i8, ptr %9, i64 4
  %128 = load i32, ptr %127, align 4, !tbaa !77
  %129 = icmp ugt i32 %128, 57
  %130 = zext i1 %129 to i32
  store i32 0, ptr %16, align 4, !tbaa !54
  %131 = icmp slt i64 %126, 4
  br i1 %131, label %219, label %132

132:                                              ; preds = %121
  %133 = icmp ult i64 %3, 128
  br i1 %133, label %148, label %134

134:                                              ; preds = %132
  %135 = icmp ult i64 %3, 32512
  br i1 %135, label %136, label %143

136:                                              ; preds = %134
  %137 = lshr i64 %3, 8
  %138 = trunc nuw nsw i64 %137 to i8
  %139 = or disjoint i8 %138, -128
  store i8 %139, ptr %122, align 1, !tbaa !56
  %140 = trunc i64 %3 to i8
  %141 = getelementptr inbounds nuw i8, ptr %122, i64 1
  store i8 %140, ptr %141, align 1, !tbaa !56
  %142 = getelementptr inbounds nuw i8, ptr %122, i64 2
  br label %152

143:                                              ; preds = %134
  store i8 -1, ptr %122, align 1, !tbaa !56
  %144 = getelementptr inbounds nuw i8, ptr %122, i64 1
  %145 = trunc i64 %3 to i16
  %146 = add i16 %145, -32512
  store i16 %146, ptr %144, align 1, !tbaa !72
  %147 = getelementptr inbounds nuw i8, ptr %122, i64 3
  br label %152

148:                                              ; preds = %132
  %149 = trunc nuw nsw i64 %3 to i8
  %150 = getelementptr inbounds nuw i8, ptr %122, i64 1
  store i8 %149, ptr %122, align 1, !tbaa !56
  %151 = icmp eq i64 %3, 0
  br i1 %151, label %207, label %152

152:                                              ; preds = %148, %143, %136
  %153 = phi ptr [ %150, %148 ], [ %147, %143 ], [ %142, %136 ]
  %154 = getelementptr inbounds nuw i8, ptr %153, i64 1
  %155 = icmp eq i32 %14, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  store i8 -4, ptr %153, align 1, !tbaa !56
  %157 = ptrtoint ptr %154 to i64
  %158 = sub i64 %21, %157
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 2836
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 4288
  %161 = tail call i64 @ZSTD_encodeSequences(ptr noundef nonnull %154, i64 noundef %158, ptr noundef nonnull %159, ptr noundef %7, ptr noundef nonnull %123, ptr noundef %8, ptr noundef nonnull %160, ptr noundef %6, ptr noundef %2, i64 noundef %3, i32 noundef %130, i32 noundef %12) #5
  %162 = icmp ult i64 %161, -119
  br i1 %162, label %186, label %219

163:                                              ; preds = %152
  %164 = load i32, ptr %124, align 8, !tbaa !59
  %165 = getelementptr inbounds nuw i8, ptr %1, i64 148
  %166 = load i32, ptr %165, align 4, !tbaa !55
  %167 = getelementptr inbounds nuw i8, ptr %1, i64 152
  %168 = load i32, ptr %167, align 8, !tbaa !60
  %169 = shl i32 %164, 6
  %170 = shl i32 %166, 4
  %171 = add i32 %170, %169
  %172 = shl i32 %168, 2
  %173 = add i32 %171, %172
  %174 = trunc i32 %173 to i8
  store i8 %174, ptr %153, align 1, !tbaa !56
  %175 = getelementptr inbounds nuw i8, ptr %1, i64 156
  %176 = getelementptr inbounds nuw i8, ptr %1, i64 296
  %177 = load i64, ptr %176, align 8, !tbaa !61
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %154, ptr nonnull readonly align 4 %175, i64 %177, i1 false)
  %178 = load i64, ptr %176, align 8, !tbaa !61
  %179 = getelementptr inbounds nuw i8, ptr %154, i64 %178
  %180 = ptrtoint ptr %179 to i64
  %181 = sub i64 %21, %180
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 2836
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 4288
  %184 = tail call i64 @ZSTD_encodeSequences(ptr noundef nonnull %179, i64 noundef %181, ptr noundef nonnull %182, ptr noundef %7, ptr noundef nonnull %123, ptr noundef %8, ptr noundef nonnull %183, ptr noundef %6, ptr noundef %2, i64 noundef %3, i32 noundef %130, i32 noundef %12) #5
  %185 = icmp ult i64 %184, -119
  br i1 %185, label %188, label %219

186:                                              ; preds = %156
  %187 = getelementptr inbounds nuw i8, ptr %154, i64 %161
  br label %196

188:                                              ; preds = %163
  %189 = getelementptr inbounds nuw i8, ptr %179, i64 %184
  %190 = getelementptr inbounds nuw i8, ptr %1, i64 304
  %191 = load i64, ptr %190, align 8, !tbaa !78
  %192 = icmp ne i64 %191, 0
  %193 = add i64 %191, %184
  %194 = icmp ult i64 %193, 4
  %195 = and i1 %192, %194
  br i1 %195, label %219, label %196

196:                                              ; preds = %188, %186
  %197 = phi ptr [ %187, %186 ], [ %189, %188 ]
  %198 = ptrtoint ptr %197 to i64
  %199 = ptrtoint ptr %153 to i64
  %200 = sub i64 %198, %199
  %201 = icmp slt i64 %200, 4
  br i1 %201, label %219, label %202

202:                                              ; preds = %196
  store i32 1, ptr %16, align 4, !tbaa !54
  %203 = sub i64 %198, %125
  %204 = icmp ult i64 %203, -119
  br i1 %204, label %205, label %219

205:                                              ; preds = %202
  %206 = icmp eq i64 %203, 0
  br i1 %206, label %219, label %207

207:                                              ; preds = %205, %148
  %208 = phi i64 [ %203, %205 ], [ 1, %148 ]
  %209 = add nuw nsw i64 %117, 3
  %210 = add nuw nsw i64 %209, %208
  %211 = trunc i64 %210 to i32
  %212 = shl i32 %211, 3
  %213 = add i32 %17, -20
  %214 = add i32 %213, %212
  %215 = trunc i32 %214 to i16
  store i16 %215, ptr %10, align 1, !tbaa !72
  %216 = lshr i32 %214, 16
  %217 = trunc i32 %216 to i8
  %218 = getelementptr inbounds nuw i8, ptr %10, i64 2
  store i8 %217, ptr %218, align 1, !tbaa !56
  br label %219

219:                                              ; preds = %207, %205, %202, %196, %188, %163, %156, %121, %119, %116, %65
  %220 = phi i64 [ %210, %207 ], [ 0, %119 ], [ %117, %116 ], [ 0, %65 ], [ 0, %205 ], [ %203, %202 ], [ 0, %188 ], [ 0, %196 ], [ %184, %163 ], [ %161, %156 ], [ -70, %121 ]
  ret i64 %220
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i64 @HIST_count_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @HUF_estimateCompressedSize(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @HIST_countFast_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @ZSTD_crossEntropyCost(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @ZSTD_fseBitCost(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @ZSTD_noCompressLiterals(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @ZSTD_compressRleLiteralsBlock(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @HUF_compress1X_usingCTable(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @HUF_compress4X_usingCTable(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @ZSTD_encodeSequences(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !16, i64 3224}
!6 = !{!"ZSTD_CCtx_s", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !10, i64 240, !10, i64 464, !7, i64 688, !13, i64 696, !17, i64 704, !13, i64 776, !18, i64 784, !18, i64 792, !18, i64 800, !19, i64 808, !15, i64 896, !20, i64 920, !13, i64 928, !21, i64 936, !7, i64 968, !7, i64 972, !22, i64 976, !25, i64 1056, !16, i64 3168, !13, i64 3176, !27, i64 3184, !28, i64 3224, !16, i64 3544, !13, i64 3552, !7, i64 3560, !24, i64 3568, !13, i64 3576, !13, i64 3584, !13, i64 3592, !13, i64 3600, !24, i64 3608, !13, i64 3616, !13, i64 3624, !13, i64 3632, !7, i64 3640, !7, i64 3644, !33, i64 3648, !13, i64 3672, !13, i64 3680, !34, i64 3688, !35, i64 3728, !36, i64 3736, !18, i64 3760, !37, i64 3768, !16, i64 5264, !13, i64 5272}
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
!20 = !{!"p1 _ZTS10POOL_ctx_s", !16, i64 0}
!21 = !{!"", !7, i64 0, !16, i64 8, !13, i64 16, !13, i64 24}
!22 = !{!"", !23, i64 0, !23, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !13, i64 56, !13, i64 64, !7, i64 72, !7, i64 76}
!23 = !{!"p1 _ZTS8SeqDef_s", !16, i64 0}
!24 = !{!"p1 omnipotent char", !16, i64 0}
!25 = !{!"", !26, i64 0, !16, i64 40, !7, i64 48, !24, i64 56, !8, i64 64, !8, i64 576}
!26 = !{!"", !24, i64 0, !24, i64 8, !24, i64 16, !7, i64 24, !7, i64 28, !7, i64 32}
!27 = !{!"", !16, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!28 = !{!"", !16, i64 0, !16, i64 8, !29, i64 16}
!29 = !{!"ZSTD_MatchState_t", !26, i64 0, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !24, i64 56, !8, i64 64, !13, i64 96, !7, i64 104, !30, i64 112, !30, i64 120, !30, i64 128, !7, i64 136, !7, i64 140, !31, i64 144, !32, i64 248, !11, i64 256, !16, i64 288, !7, i64 296, !7, i64 300}
!30 = !{!"p1 int", !16, i64 0}
!31 = !{!"", !30, i64 0, !30, i64 8, !30, i64 16, !30, i64 24, !16, i64 32, !16, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !16, i64 88, !7, i64 96}
!32 = !{!"p1 _ZTS17ZSTD_MatchState_t", !16, i64 0}
!33 = !{!"ZSTD_inBuffer_s", !16, i64 0, !13, i64 8, !13, i64 16}
!34 = !{!"", !16, i64 0, !16, i64 8, !13, i64 16, !7, i64 24, !35, i64 32}
!35 = !{!"p1 _ZTS12ZSTD_CDict_s", !16, i64 0}
!36 = !{!"ZSTD_prefixDict_s", !16, i64 0, !13, i64 8, !7, i64 16}
!37 = !{!"", !22, i64 0, !22, i64 80, !22, i64 160, !22, i64 240, !22, i64 320, !8, i64 400, !38, i64 1184}
!38 = !{!"", !39, i64 0, !40, i64 144}
!39 = !{!"", !7, i64 0, !8, i64 4, !13, i64 136}
!40 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !8, i64 12, !13, i64 152, !13, i64 160}
!41 = !{!6, !16, i64 3232}
!42 = !{!6, !16, i64 3544}
!43 = !{!6, !13, i64 3552}
!44 = !{!6, !7, i64 8}
!45 = !{!22, !23, i64 0}
!46 = !{!22, !23, i64 8}
!47 = !{!22, !24, i64 16}
!48 = !{!22, !24, i64 24}
!49 = !{!22, !24, i64 32}
!50 = !{!22, !24, i64 40}
!51 = !{!22, !24, i64 48}
!52 = !{!10, !13, i64 56}
!53 = !{!38, !7, i64 0}
!54 = !{!7, !7, i64 0}
!55 = !{!40, !7, i64 4}
!56 = !{!8, !8, i64 0}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!40, !7, i64 0}
!60 = !{!40, !7, i64 8}
!61 = !{!40, !13, i64 152}
!62 = !{!63, !64, i64 4}
!63 = !{!"SeqDef_s", !7, i64 0, !64, i64 4, !64, i64 6}
!64 = !{!"short", !8, i64 0}
!65 = !{!63, !64, i64 6}
!66 = distinct !{!66, !58}
!67 = !{!22, !7, i64 76}
!68 = !{!22, !7, i64 72}
!69 = distinct !{!69, !58}
!70 = distinct !{!70, !58}
!71 = distinct !{!71, !58}
!72 = !{!64, !64, i64 0}
!73 = !{!63, !7, i64 0}
!74 = distinct !{!74, !58}
!75 = !{!39, !7, i64 0}
!76 = !{!39, !13, i64 136}
!77 = !{!10, !7, i64 4}
!78 = !{!40, !13, i64 160}
