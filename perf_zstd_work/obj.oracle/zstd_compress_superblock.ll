; ModuleID = '/mydata/ODeSSy/perf_zstd_work/obj.oracle/zstd_compress_superblock.ll.mid'
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
  br i1 %28, label %29, label %731

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
    i32 1, label %.preheader337
  ]

87:                                               ; preds = %79
  %88 = load i32, ptr %9, align 4, !tbaa !54
  %89 = icmp ugt i32 %88, 28
  br i1 %89, label %109, label %90

90:                                               ; preds = %87
  %91 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, ptr noundef %34, i32 noundef %88) #5
  br label %98

92:                                               ; preds = %79
  %93 = and i32 %84, -2
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %.preheader337

95:                                               ; preds = %92
  %96 = load i32, ptr %9, align 4, !tbaa !54
  %97 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %81, ptr noundef %34, i32 noundef %96) #5
  br label %98

98:                                               ; preds = %95, %90
  %99 = phi i64 [ %97, %95 ], [ %91, %90 ]
  %100 = icmp ult i64 %99, -119
  br i1 %100, label %.preheader337, label %109

.preheader337:                                    ; preds = %98, %92, %79
  %.ph338 = phi i64 [ %99, %98 ], [ 0, %92 ], [ 0, %79 ]
  br label %101

101:                                              ; preds = %.preheader337, %101
  %102 = phi i64 [ %106, %101 ], [ %.ph338, %.preheader337 ]
  %103 = phi ptr [ %107, %101 ], [ %57, %.preheader337 ]
  %104 = load i8, ptr %103, align 1, !tbaa !56
  %105 = zext i8 %104 to i64
  %106 = add i64 %102, %105
  %107 = getelementptr inbounds nuw i8, ptr %103, i64 1
  %108 = icmp ult ptr %107, %85
  br i1 %108, label %101, label %111, !llvm.loop !57

109:                                              ; preds = %98, %87
  %110 = mul i64 %42, 10
  br label %113

111:                                              ; preds = %101
  %112 = lshr i64 %106, 3
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i64 [ %110, %109 ], [ %112, %111 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %115 = load i32, ptr %82, align 8, !tbaa !59
  %116 = getelementptr inbounds nuw i8, ptr %31, i64 4288
  %117 = getelementptr inbounds nuw i8, ptr %53, i64 %42
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i32 35, ptr %8, align 4, !tbaa !54
  %118 = call i64 @HIST_countFast_wksp(ptr noundef %34, ptr noundef nonnull %8, ptr noundef %53, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %42, ptr noundef %34, i64 noundef %35) #5
  switch i32 %115, label %124 [
    i32 0, label %119
    i32 1, label %.preheader334
  ]

.preheader334:                                    ; preds = %130, %124, %113
  %.ph335 = phi i64 [ %131, %130 ], [ 0, %124 ], [ 0, %113 ]
  br label %135

119:                                              ; preds = %113
  %120 = load i32, ptr %8, align 4, !tbaa !54
  %121 = icmp ugt i32 %120, 35
  br i1 %121, label %133, label %122

122:                                              ; preds = %119
  %123 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, ptr noundef %34, i32 noundef %120) #5
  br label %130

124:                                              ; preds = %113
  %125 = and i32 %115, -2
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %.preheader334

127:                                              ; preds = %124
  %128 = load i32, ptr %8, align 4, !tbaa !54
  %129 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %116, ptr noundef %34, i32 noundef %128) #5
  br label %130

130:                                              ; preds = %127, %122
  %131 = phi i64 [ %129, %127 ], [ %123, %122 ]
  %132 = icmp ult i64 %131, -119
  br i1 %132, label %.preheader334, label %133

133:                                              ; preds = %130, %119
  %134 = mul i64 %42, 10
  br label %148

135:                                              ; preds = %.preheader334, %135
  %136 = phi i64 [ %143, %135 ], [ %.ph335, %.preheader334 ]
  %137 = phi ptr [ %144, %135 ], [ %53, %.preheader334 ]
  %138 = load i8, ptr %137, align 1, !tbaa !56
  %139 = zext i8 %138 to i64
  %140 = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !56
  %142 = zext i8 %141 to i64
  %143 = add i64 %136, %142
  %144 = getelementptr inbounds nuw i8, ptr %137, i64 1
  %145 = icmp ult ptr %144, %117
  br i1 %145, label %135, label %146, !llvm.loop !57

146:                                              ; preds = %135
  %147 = lshr i64 %143, 3
  br label %148

148:                                              ; preds = %146, %133
  %149 = phi i64 [ %134, %133 ], [ %147, %146 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %150 = getelementptr inbounds nuw i8, ptr %16, i64 152
  %151 = load i32, ptr %150, align 8, !tbaa !60
  %152 = getelementptr inbounds nuw i8, ptr %31, i64 2836
  %153 = getelementptr inbounds nuw i8, ptr %55, i64 %42
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i32 52, ptr %7, align 4, !tbaa !54
  %154 = call i64 @HIST_countFast_wksp(ptr noundef %34, ptr noundef nonnull %7, ptr noundef %55, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %42, ptr noundef %34, i64 noundef %35) #5
  switch i32 %151, label %160 [
    i32 0, label %155
    i32 1, label %.preheader
  ]

.preheader:                                       ; preds = %166, %160, %148
  %.ph = phi i64 [ %167, %166 ], [ 0, %160 ], [ 0, %148 ]
  br label %171

155:                                              ; preds = %148
  %156 = load i32, ptr %7, align 4, !tbaa !54
  %157 = icmp ugt i32 %156, 52
  br i1 %157, label %169, label %158

158:                                              ; preds = %155
  %159 = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, ptr noundef %34, i32 noundef %156) #5
  br label %166

160:                                              ; preds = %148
  %161 = and i32 %151, -2
  %162 = icmp eq i32 %161, 2
  br i1 %162, label %163, label %.preheader

163:                                              ; preds = %160
  %164 = load i32, ptr %7, align 4, !tbaa !54
  %165 = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %152, ptr noundef %34, i32 noundef %164) #5
  br label %166

166:                                              ; preds = %163, %158
  %167 = phi i64 [ %165, %163 ], [ %159, %158 ]
  %168 = icmp ult i64 %167, -119
  br i1 %168, label %.preheader, label %169

169:                                              ; preds = %166, %155
  %170 = mul i64 %42, 10
  br label %184

171:                                              ; preds = %.preheader, %171
  %172 = phi i64 [ %179, %171 ], [ %.ph, %.preheader ]
  %173 = phi ptr [ %180, %171 ], [ %55, %.preheader ]
  %174 = load i8, ptr %173, align 1, !tbaa !56
  %175 = zext i8 %174 to i64
  %176 = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !56
  %178 = zext i8 %177 to i64
  %179 = add i64 %172, %178
  %180 = getelementptr inbounds nuw i8, ptr %173, i64 1
  %181 = icmp ult ptr %180, %153
  br i1 %181, label %171, label %182, !llvm.loop !57

182:                                              ; preds = %171
  %183 = lshr i64 %179, 3
  br label %184

184:                                              ; preds = %182, %169
  %185 = phi i64 [ %170, %169 ], [ %183, %182 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %186 = getelementptr inbounds nuw i8, ptr %16, i64 296
  %187 = load i64, ptr %186, align 8, !tbaa !61
  %188 = add i64 %80, 6
  %189 = add i64 %188, %114
  %190 = add i64 %189, %149
  %191 = add i64 %190, %185
  %192 = add i64 %191, %187
  %193 = icmp eq ptr %46, %44
  br i1 %193, label %197, label %194

194:                                              ; preds = %184
  %195 = shl i64 %80, 8
  %196 = udiv i64 %195, %49
  br label %197

197:                                              ; preds = %194, %184
  %198 = phi i64 [ %196, %194 ], [ 256, %184 ]
  %199 = sub i64 %192, %80
  %200 = shl i64 %199, 8
  %201 = udiv i64 %200, %42
  %202 = lshr i64 %60, 1
  %203 = add i64 %192, %202
  %204 = udiv i64 %203, %60
  %205 = call i64 @llvm.umax.i64(i64 %204, i64 1)
  %206 = shl i64 %192, 8
  %207 = udiv i64 %206, %205
  %208 = icmp ugt i64 %192, %4
  br i1 %208, label %731, label %209

209:                                              ; preds = %197
  %210 = add nsw i64 %205, -1
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %487, label %212

212:                                              ; preds = %209
  %213 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %215 = ptrtoint ptr %51 to i64
  br label %216

216:                                              ; preds = %458, %212
  %217 = phi ptr [ %36, %212 ], [ %467, %458 ]
  %218 = phi ptr [ %44, %212 ], [ %466, %458 ]
  %219 = phi ptr [ %3, %212 ], [ %465, %458 ]
  %220 = phi ptr [ %1, %212 ], [ %464, %458 ]
  %221 = phi ptr [ %53, %212 ], [ %463, %458 ]
  %222 = phi ptr [ %55, %212 ], [ %462, %458 ]
  %223 = phi ptr [ %57, %212 ], [ %461, %458 ]
  %224 = phi i32 [ %63, %212 ], [ %460, %458 ]
  %225 = phi i32 [ 1, %212 ], [ %459, %458 ]
  %226 = phi i64 [ 0, %212 ], [ %468, %458 ]
  %227 = ptrtoint ptr %217 to i64
  %228 = sub i64 %39, %227
  %229 = ashr exact i64 %228, 3
  %230 = icmp eq i64 %226, 0
  %231 = select i1 %230, i64 30720, i64 0
  %232 = getelementptr inbounds nuw i8, ptr %217, i64 4
  %233 = load i16, ptr %232, align 4, !tbaa !62
  %234 = zext i16 %233 to i64
  %235 = mul i64 %198, %234
  %236 = add i64 %231, %201
  %237 = add i64 %236, %235
  %238 = icmp ule i64 %237, %207
  %239 = icmp ugt i64 %229, 1
  %240 = and i1 %239, %238
  br i1 %240, label %241, label %.thread

241:                                              ; preds = %216
  %242 = add nuw nsw i64 %234, 3
  %243 = getelementptr inbounds nuw i8, ptr %217, i64 6
  %244 = load i16, ptr %243, align 2, !tbaa !65
  %245 = zext i16 %244 to i64
  %246 = add nuw nsw i64 %242, %245
  br label %247

247:                                              ; preds = %268, %241
  %248 = phi i64 [ %269, %268 ], [ 1, %241 ]
  %249 = phi i64 [ %263, %268 ], [ %246, %241 ]
  %250 = phi i64 [ %257, %268 ], [ %237, %241 ]
  %251 = getelementptr inbounds nuw [8 x i8], ptr %217, i64 %248
  %252 = getelementptr inbounds nuw i8, ptr %251, i64 4
  %253 = load i16, ptr %252, align 4, !tbaa !62
  %254 = zext i16 %253 to i64
  %255 = mul i64 %198, %254
  %256 = add i64 %250, %201
  %257 = add i64 %256, %255
  %258 = getelementptr inbounds nuw i8, ptr %251, i64 6
  %259 = load i16, ptr %258, align 2, !tbaa !65
  %260 = zext i16 %259 to i64
  %261 = add i64 %249, 3
  %262 = add i64 %261, %254
  %263 = add i64 %262, %260
  %264 = icmp ugt i64 %257, %207
  %265 = shl i64 %263, 8
  %266 = icmp ult i64 %257, %265
  %267 = select i1 %264, i1 %266, i1 false
  br i1 %267, label %271, label %268

268:                                              ; preds = %247
  %269 = add nuw i64 %248, 1
  %270 = icmp eq i64 %269, %229
  br i1 %270, label %271, label %247, !llvm.loop !66

271:                                              ; preds = %268, %247
  %272 = phi i64 [ %248, %247 ], [ %229, %268 ]
  %273 = getelementptr inbounds nuw [8 x i8], ptr %217, i64 %272
  %274 = icmp eq ptr %273, %38
  br i1 %274, label %.loopexit45, label %280

.thread:                                          ; preds = %216
  %275 = getelementptr inbounds nuw i8, ptr %217, i64 8
  %276 = icmp eq ptr %275, %38
  br i1 %276, label %.loopexit45, label %.thread33

.thread33:                                        ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store i32 0, ptr %12, align 4, !tbaa !54
  %277 = load i32, ptr %213, align 4, !tbaa !67
  %278 = load ptr, ptr %17, align 8, !tbaa !45
  %279 = ptrtoint ptr %278 to i64
  br label %.thread39

280:                                              ; preds = %271
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store i32 0, ptr %12, align 4, !tbaa !54
  %281 = load i32, ptr %213, align 4, !tbaa !67
  %282 = load ptr, ptr %17, align 8, !tbaa !45
  %283 = ptrtoint ptr %282 to i64
  %284 = and i64 %272, 1
  %285 = icmp eq i64 %272, 1
  br i1 %285, label %.thread39, label %286

286:                                              ; preds = %280
  %287 = and i64 %272, -2
  br label %288

288:                                              ; preds = %323, %286
  %289 = phi i64 [ 0, %286 ], [ %327, %323 ]
  %290 = phi i64 [ 0, %286 ], [ %326, %323 ]
  %291 = getelementptr inbounds nuw [8 x i8], ptr %217, i64 %289
  %292 = getelementptr inbounds nuw i8, ptr %291, i64 4
  %293 = load i16, ptr %292, align 4, !tbaa !62
  %294 = zext i16 %293 to i32
  %295 = ptrtoint ptr %291 to i64
  %296 = sub i64 %295, %283
  %297 = lshr exact i64 %296, 3
  %298 = trunc i64 %297 to i32
  %299 = icmp eq i32 %281, %298
  br i1 %299, label %300, label %305

300:                                              ; preds = %288
  %301 = load i32, ptr %214, align 8, !tbaa !68
  %302 = icmp eq i32 %301, 1
  %303 = or disjoint i32 %294, 65536
  %304 = select i1 %302, i32 %303, i32 %294
  br label %305

305:                                              ; preds = %300, %288
  %306 = phi i32 [ %294, %288 ], [ %304, %300 ]
  %307 = zext nneg i32 %306 to i64
  %308 = add i64 %290, %307
  %309 = getelementptr inbounds nuw i8, ptr %291, i64 8
  %310 = getelementptr inbounds nuw i8, ptr %291, i64 12
  %311 = load i16, ptr %310, align 4, !tbaa !62
  %312 = zext i16 %311 to i32
  %313 = ptrtoint ptr %309 to i64
  %314 = sub i64 %313, %283
  %315 = lshr exact i64 %314, 3
  %316 = trunc i64 %315 to i32
  %317 = icmp eq i32 %281, %316
  br i1 %317, label %318, label %323

318:                                              ; preds = %305
  %319 = load i32, ptr %214, align 8, !tbaa !68
  %320 = icmp eq i32 %319, 1
  %321 = or disjoint i32 %312, 65536
  %322 = select i1 %320, i32 %321, i32 %312
  br label %323

323:                                              ; preds = %318, %305
  %324 = phi i32 [ %312, %305 ], [ %322, %318 ]
  %325 = zext nneg i32 %324 to i64
  %326 = add i64 %308, %325
  %327 = add i64 %289, 2
  %328 = icmp eq i64 %327, %287
  br i1 %328, label %329, label %288, !llvm.loop !69

329:                                              ; preds = %323
  %330 = icmp eq i64 %284, 0
  br i1 %330, label %355, label %..thread39_crit_edge

..thread39_crit_edge:                             ; preds = %329
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %217, i64 %287
  %.phi.trans.insert150 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 4
  %.pre = load i16, ptr %.phi.trans.insert150, align 4, !tbaa !62
  br label %.thread39

.thread39:                                        ; preds = %..thread39_crit_edge, %.thread33, %280
  %331 = phi i16 [ %.pre, %..thread39_crit_edge ], [ %233, %280 ], [ %233, %.thread33 ]
  %332 = phi i64 [ %326, %..thread39_crit_edge ], [ 0, %280 ], [ 0, %.thread33 ]
  %333 = phi i64 [ %287, %..thread39_crit_edge ], [ 0, %280 ], [ 0, %.thread33 ]
  %334 = phi ptr [ %273, %..thread39_crit_edge ], [ %273, %280 ], [ %275, %.thread33 ]
  %335 = phi i64 [ %272, %..thread39_crit_edge ], [ 1, %280 ], [ 1, %.thread33 ]
  %336 = phi i32 [ %281, %..thread39_crit_edge ], [ %281, %280 ], [ %277, %.thread33 ]
  %337 = phi i64 [ %283, %..thread39_crit_edge ], [ %283, %280 ], [ %279, %.thread33 ]
  %338 = phi i1 [ false, %..thread39_crit_edge ], [ true, %280 ], [ true, %.thread33 ]
  %339 = getelementptr inbounds nuw [8 x i8], ptr %217, i64 %333
  %340 = zext i16 %331 to i32
  %341 = ptrtoint ptr %339 to i64
  %342 = sub i64 %341, %337
  %343 = lshr exact i64 %342, 3
  %344 = trunc i64 %343 to i32
  %345 = icmp eq i32 %336, %344
  br i1 %345, label %346, label %351

346:                                              ; preds = %.thread39
  %347 = load i32, ptr %214, align 8, !tbaa !68
  %348 = icmp eq i32 %347, 1
  %349 = or disjoint i32 %340, 65536
  %350 = select i1 %348, i32 %349, i32 %340
  br label %351

351:                                              ; preds = %346, %.thread39
  %352 = phi i32 [ %340, %.thread39 ], [ %350, %346 ]
  %353 = zext nneg i32 %352 to i64
  %354 = add i64 %332, %353
  br i1 %338, label %.loopexit44.thread, label %._crit_edge

._crit_edge:                                      ; preds = %351
  %.pre151 = and i64 %335, -2
  br label %355

355:                                              ; preds = %._crit_edge, %329
  %.pre-phi = phi i64 [ %.pre151, %._crit_edge ], [ %287, %329 ]
  %356 = phi i64 [ %354, %._crit_edge ], [ %326, %329 ]
  %357 = phi i64 [ %337, %._crit_edge ], [ %283, %329 ]
  %358 = phi i32 [ %336, %._crit_edge ], [ %281, %329 ]
  %359 = phi i64 [ %335, %._crit_edge ], [ %272, %329 ]
  %360 = phi ptr [ %334, %._crit_edge ], [ %273, %329 ]
  %361 = phi i1 [ false, %._crit_edge ], [ true, %329 ]
  br label %362

362:                                              ; preds = %399, %355
  %363 = phi i64 [ 0, %355 ], [ %402, %399 ]
  %364 = phi i64 [ 0, %355 ], [ %403, %399 ]
  %365 = getelementptr inbounds nuw [8 x i8], ptr %217, i64 %364
  %366 = getelementptr inbounds nuw i8, ptr %365, i64 6
  %367 = load i16, ptr %366, align 2, !tbaa !65
  %368 = zext i16 %367 to i32
  %369 = add nuw nsw i32 %368, 3
  %370 = ptrtoint ptr %365 to i64
  %371 = sub i64 %370, %357
  %372 = lshr exact i64 %371, 3
  %373 = trunc i64 %372 to i32
  %374 = icmp eq i32 %358, %373
  br i1 %374, label %375, label %380

375:                                              ; preds = %362
  %376 = load i32, ptr %214, align 8, !tbaa !68
  %377 = icmp eq i32 %376, 2
  %378 = add nuw nsw i32 %368, 65539
  %379 = select i1 %377, i32 %378, i32 %369
  br label %380

380:                                              ; preds = %375, %362
  %381 = phi i32 [ %369, %362 ], [ %379, %375 ]
  %382 = zext nneg i32 %381 to i64
  %383 = add i64 %363, %382
  %384 = getelementptr inbounds nuw i8, ptr %365, i64 8
  %385 = getelementptr inbounds nuw i8, ptr %365, i64 14
  %386 = load i16, ptr %385, align 2, !tbaa !65
  %387 = zext i16 %386 to i32
  %388 = add nuw nsw i32 %387, 3
  %389 = ptrtoint ptr %384 to i64
  %390 = sub i64 %389, %357
  %391 = lshr exact i64 %390, 3
  %392 = trunc i64 %391 to i32
  %393 = icmp eq i32 %358, %392
  br i1 %393, label %394, label %399

394:                                              ; preds = %380
  %395 = load i32, ptr %214, align 8, !tbaa !68
  %396 = icmp eq i32 %395, 2
  %397 = add nuw nsw i32 %387, 65539
  %398 = select i1 %396, i32 %397, i32 %388
  br label %399

399:                                              ; preds = %394, %380
  %400 = phi i32 [ %388, %380 ], [ %398, %394 ]
  %401 = zext nneg i32 %400 to i64
  %402 = add i64 %383, %401
  %403 = add i64 %364, 2
  %404 = icmp eq i64 %403, %.pre-phi
  br i1 %404, label %.loopexit44, label %362, !llvm.loop !70

.loopexit44:                                      ; preds = %399
  br i1 %361, label %.thread40, label %.loopexit44.thread

.loopexit44.thread:                               ; preds = %351, %.loopexit44
  %405 = phi i64 [ %.pre-phi, %.loopexit44 ], [ 0, %351 ]
  %406 = phi i64 [ %402, %.loopexit44 ], [ 0, %351 ]
  %407 = phi ptr [ %360, %.loopexit44 ], [ %334, %351 ]
  %408 = phi i64 [ %359, %.loopexit44 ], [ %335, %351 ]
  %409 = phi i32 [ %358, %.loopexit44 ], [ %336, %351 ]
  %410 = phi i64 [ %357, %.loopexit44 ], [ %337, %351 ]
  %411 = phi i64 [ %356, %.loopexit44 ], [ %354, %351 ]
  %412 = getelementptr inbounds nuw [8 x i8], ptr %217, i64 %405
  %413 = getelementptr inbounds nuw i8, ptr %412, i64 6
  %414 = load i16, ptr %413, align 2, !tbaa !65
  %415 = zext i16 %414 to i32
  %416 = add nuw nsw i32 %415, 3
  %417 = ptrtoint ptr %412 to i64
  %418 = sub i64 %417, %410
  %419 = lshr exact i64 %418, 3
  %420 = trunc i64 %419 to i32
  %421 = icmp eq i32 %409, %420
  br i1 %421, label %422, label %427

422:                                              ; preds = %.loopexit44.thread
  %423 = load i32, ptr %214, align 8, !tbaa !68
  %424 = icmp eq i32 %423, 2
  %425 = add nuw nsw i32 %415, 65539
  %426 = select i1 %424, i32 %425, i32 %416
  br label %427

427:                                              ; preds = %422, %.loopexit44.thread
  %428 = phi i32 [ %416, %.loopexit44.thread ], [ %426, %422 ]
  %429 = zext nneg i32 %428 to i64
  %430 = add i64 %406, %429
  br label %.thread40

.thread40:                                        ; preds = %427, %.loopexit44
  %431 = phi ptr [ %360, %.loopexit44 ], [ %407, %427 ]
  %432 = phi i64 [ %359, %.loopexit44 ], [ %408, %427 ]
  %433 = phi i64 [ %356, %.loopexit44 ], [ %411, %427 ]
  %434 = phi i64 [ %402, %.loopexit44 ], [ %430, %427 ]
  %435 = add i64 %434, %433
  %436 = ptrtoint ptr %220 to i64
  %437 = sub i64 %215, %436
  %438 = call fastcc i64 @ZSTD_compressSubBlock(ptr noundef %31, ptr noundef nonnull readonly %16, ptr noundef nonnull %217, i64 noundef %432, ptr noundef %218, i64 noundef %433, ptr noundef %221, ptr noundef %222, ptr noundef %223, ptr noundef nonnull readonly %22, ptr noundef %220, i64 noundef %437, i32 noundef %33, i32 noundef %224, i32 noundef %225, ptr noundef %11, ptr noundef %12, i32 noundef 0)
  %439 = icmp ult i64 %438, -119
  br i1 %439, label %440, label %457

440:                                              ; preds = %.thread40
  %441 = icmp ne i64 %438, 0
  %442 = icmp ult i64 %438, %435
  %443 = select i1 %441, i1 %442, i1 false
  br i1 %443, label %444, label %458

444:                                              ; preds = %440
  %445 = getelementptr inbounds nuw i8, ptr %219, i64 %435
  %446 = getelementptr inbounds nuw i8, ptr %218, i64 %433
  %447 = getelementptr inbounds nuw i8, ptr %220, i64 %438
  %448 = getelementptr inbounds nuw i8, ptr %221, i64 %432
  %449 = getelementptr inbounds nuw i8, ptr %222, i64 %432
  %450 = getelementptr inbounds nuw i8, ptr %223, i64 %432
  %451 = load i32, ptr %11, align 4, !tbaa !54
  %452 = icmp eq i32 %451, 0
  %453 = select i1 %452, i32 %224, i32 0
  %454 = load i32, ptr %12, align 4, !tbaa !54
  %455 = icmp eq i32 %454, 0
  %456 = select i1 %455, i32 %225, i32 0
  br label %458

457:                                              ; preds = %.thread40
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %731

458:                                              ; preds = %444, %440
  %459 = phi i32 [ %225, %440 ], [ %456, %444 ]
  %460 = phi i32 [ %224, %440 ], [ %453, %444 ]
  %461 = phi ptr [ %223, %440 ], [ %450, %444 ]
  %462 = phi ptr [ %222, %440 ], [ %449, %444 ]
  %463 = phi ptr [ %221, %440 ], [ %448, %444 ]
  %464 = phi ptr [ %220, %440 ], [ %447, %444 ]
  %465 = phi ptr [ %219, %440 ], [ %445, %444 ]
  %466 = phi ptr [ %218, %440 ], [ %446, %444 ]
  %467 = phi ptr [ %217, %440 ], [ %431, %444 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %468 = add nuw nsw i64 %226, 1
  %469 = icmp eq i64 %468, %210
  br i1 %469, label %470, label %216, !llvm.loop !71

470:                                              ; preds = %458
  %471 = ptrtoint ptr %467 to i64
  %472 = sub i64 %39, %471
  %473 = ashr exact i64 %472, 3
  br label %.loopexit45, !llvm.loop !71

.loopexit45:                                      ; preds = %.thread, %271, %470
  %474 = phi i64 [ %473, %470 ], [ %229, %271 ], [ %229, %.thread ]
  %475 = phi i64 [ %472, %470 ], [ %228, %271 ], [ %228, %.thread ]
  %476 = phi i32 [ %459, %470 ], [ %225, %271 ], [ %225, %.thread ]
  %477 = phi i32 [ %460, %470 ], [ %224, %271 ], [ %224, %.thread ]
  %478 = phi ptr [ %461, %470 ], [ %223, %271 ], [ %223, %.thread ]
  %479 = phi ptr [ %462, %470 ], [ %222, %271 ], [ %222, %.thread ]
  %480 = phi ptr [ %463, %470 ], [ %221, %271 ], [ %221, %.thread ]
  %481 = phi ptr [ %464, %470 ], [ %220, %271 ], [ %220, %.thread ]
  %482 = phi ptr [ %465, %470 ], [ %219, %271 ], [ %219, %.thread ]
  %483 = phi ptr [ %466, %470 ], [ %218, %271 ], [ %218, %.thread ]
  %484 = phi ptr [ %467, %470 ], [ %217, %271 ], [ %217, %.thread ]
  %485 = ptrtoint ptr %483 to i64
  %486 = sub i64 %47, %485
  br label %487

487:                                              ; preds = %.loopexit45, %209
  %488 = phi i64 [ %474, %.loopexit45 ], [ %42, %209 ]
  %489 = phi i64 [ %475, %.loopexit45 ], [ %41, %209 ]
  %490 = phi i64 [ %486, %.loopexit45 ], [ %49, %209 ]
  %491 = phi i32 [ %476, %.loopexit45 ], [ 1, %209 ]
  %492 = phi i32 [ %477, %.loopexit45 ], [ %63, %209 ]
  %493 = phi ptr [ %478, %.loopexit45 ], [ %57, %209 ]
  %494 = phi ptr [ %479, %.loopexit45 ], [ %55, %209 ]
  %495 = phi ptr [ %480, %.loopexit45 ], [ %53, %209 ]
  %496 = phi ptr [ %481, %.loopexit45 ], [ %1, %209 ]
  %497 = phi ptr [ %482, %.loopexit45 ], [ %3, %209 ]
  %498 = phi ptr [ %483, %.loopexit45 ], [ %44, %209 ]
  %499 = phi ptr [ %484, %.loopexit45 ], [ %36, %209 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store i32 0, ptr %14, align 4, !tbaa !54
  %500 = icmp eq ptr %38, %499
  br i1 %500, label %577, label %501

.thread41:                                        ; preds = %29
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store i32 0, ptr %14, align 4, !tbaa !54
  br label %577

501:                                              ; preds = %487
  %502 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %503 = load i32, ptr %502, align 4, !tbaa !67
  %504 = load ptr, ptr %17, align 8, !tbaa !45
  %505 = ptrtoint ptr %504 to i64
  %506 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %507 = and i64 %488, 1
  %508 = icmp eq i64 %488, 1
  br i1 %508, label %.thread43, label %509

509:                                              ; preds = %501
  %510 = and i64 %488, -2
  br label %511

511:                                              ; preds = %548, %509
  %512 = phi i64 [ 0, %509 ], [ %551, %548 ]
  %513 = phi i64 [ 0, %509 ], [ %552, %548 ]
  %514 = getelementptr inbounds nuw [8 x i8], ptr %499, i64 %513
  %515 = getelementptr inbounds nuw i8, ptr %514, i64 6
  %516 = load i16, ptr %515, align 2, !tbaa !65
  %517 = zext i16 %516 to i32
  %518 = add nuw nsw i32 %517, 3
  %519 = ptrtoint ptr %514 to i64
  %520 = sub i64 %519, %505
  %521 = lshr exact i64 %520, 3
  %522 = trunc i64 %521 to i32
  %523 = icmp eq i32 %503, %522
  br i1 %523, label %524, label %529

524:                                              ; preds = %511
  %525 = load i32, ptr %506, align 8, !tbaa !68
  %526 = icmp eq i32 %525, 2
  %527 = add nuw nsw i32 %517, 65539
  %528 = select i1 %526, i32 %527, i32 %518
  br label %529

529:                                              ; preds = %524, %511
  %530 = phi i32 [ %518, %511 ], [ %528, %524 ]
  %531 = zext nneg i32 %530 to i64
  %532 = add i64 %512, %531
  %533 = getelementptr inbounds nuw i8, ptr %514, i64 8
  %534 = getelementptr inbounds nuw i8, ptr %514, i64 14
  %535 = load i16, ptr %534, align 2, !tbaa !65
  %536 = zext i16 %535 to i32
  %537 = add nuw nsw i32 %536, 3
  %538 = ptrtoint ptr %533 to i64
  %539 = sub i64 %538, %505
  %540 = lshr exact i64 %539, 3
  %541 = trunc i64 %540 to i32
  %542 = icmp eq i32 %503, %541
  br i1 %542, label %543, label %548

543:                                              ; preds = %529
  %544 = load i32, ptr %506, align 8, !tbaa !68
  %545 = icmp eq i32 %544, 2
  %546 = add nuw nsw i32 %536, 65539
  %547 = select i1 %545, i32 %546, i32 %537
  br label %548

548:                                              ; preds = %543, %529
  %549 = phi i32 [ %537, %529 ], [ %547, %543 ]
  %550 = zext nneg i32 %549 to i64
  %551 = add i64 %532, %550
  %552 = add i64 %513, 2
  %553 = icmp eq i64 %552, %510
  br i1 %553, label %554, label %511, !llvm.loop !70

554:                                              ; preds = %548
  %555 = icmp eq i64 %507, 0
  br i1 %555, label %577, label %.thread43

.thread43:                                        ; preds = %501, %554
  %556 = phi i64 [ %510, %554 ], [ 0, %501 ]
  %557 = phi i64 [ %551, %554 ], [ 0, %501 ]
  %558 = getelementptr inbounds nuw [8 x i8], ptr %499, i64 %556
  %559 = getelementptr inbounds nuw i8, ptr %558, i64 6
  %560 = load i16, ptr %559, align 2, !tbaa !65
  %561 = zext i16 %560 to i32
  %562 = add nuw nsw i32 %561, 3
  %563 = ptrtoint ptr %558 to i64
  %564 = sub i64 %563, %505
  %565 = lshr exact i64 %564, 3
  %566 = trunc i64 %565 to i32
  %567 = icmp eq i32 %503, %566
  br i1 %567, label %568, label %573

568:                                              ; preds = %.thread43
  %569 = load i32, ptr %506, align 8, !tbaa !68
  %570 = icmp eq i32 %569, 2
  %571 = add nuw nsw i32 %561, 65539
  %572 = select i1 %570, i32 %571, i32 %562
  br label %573

573:                                              ; preds = %568, %.thread43
  %574 = phi i32 [ %562, %.thread43 ], [ %572, %568 ]
  %575 = zext nneg i32 %574 to i64
  %576 = add i64 %557, %575
  br label %577

577:                                              ; preds = %.thread41, %573, %554, %487
  %578 = phi ptr [ %499, %487 ], [ %499, %554 ], [ %499, %573 ], [ %36, %.thread41 ]
  %579 = phi ptr [ %498, %487 ], [ %498, %554 ], [ %498, %573 ], [ %44, %.thread41 ]
  %580 = phi ptr [ %497, %487 ], [ %497, %554 ], [ %497, %573 ], [ %3, %.thread41 ]
  %581 = phi ptr [ %496, %487 ], [ %496, %554 ], [ %496, %573 ], [ %1, %.thread41 ]
  %582 = phi ptr [ %495, %487 ], [ %495, %554 ], [ %495, %573 ], [ %53, %.thread41 ]
  %583 = phi ptr [ %494, %487 ], [ %494, %554 ], [ %494, %573 ], [ %55, %.thread41 ]
  %584 = phi ptr [ %493, %487 ], [ %493, %554 ], [ %493, %573 ], [ %57, %.thread41 ]
  %585 = phi i32 [ %492, %487 ], [ %492, %554 ], [ %492, %573 ], [ %63, %.thread41 ]
  %586 = phi i32 [ %491, %487 ], [ %491, %554 ], [ %491, %573 ], [ 1, %.thread41 ]
  %587 = phi i64 [ %490, %487 ], [ %490, %554 ], [ %490, %573 ], [ %49, %.thread41 ]
  %588 = phi i64 [ %489, %487 ], [ %489, %554 ], [ %489, %573 ], [ 0, %.thread41 ]
  %589 = phi i64 [ %488, %487 ], [ %488, %554 ], [ %488, %573 ], [ 0, %.thread41 ]
  %590 = phi i64 [ 0, %487 ], [ %551, %554 ], [ %576, %573 ], [ 0, %.thread41 ]
  %591 = add i64 %590, %587
  %592 = ptrtoint ptr %51 to i64
  %593 = ptrtoint ptr %581 to i64
  %594 = sub i64 %592, %593
  %595 = call fastcc i64 @ZSTD_compressSubBlock(ptr noundef %31, ptr noundef nonnull readonly %16, ptr noundef %578, i64 noundef %589, ptr noundef %579, i64 noundef %587, ptr noundef %582, ptr noundef %583, ptr noundef %584, ptr noundef nonnull readonly %22, ptr noundef %581, i64 noundef %594, i32 noundef %33, i32 noundef %585, i32 noundef %586, ptr noundef %13, ptr noundef %14, i32 noundef %5)
  %596 = icmp ult i64 %595, -119
  br i1 %596, label %597, label %611

597:                                              ; preds = %577
  %598 = icmp ne i64 %595, 0
  %599 = icmp ult i64 %595, %591
  %600 = select i1 %598, i1 %599, i1 false
  br i1 %600, label %601, label %612

601:                                              ; preds = %597
  %602 = getelementptr inbounds nuw i8, ptr %580, i64 %591
  %603 = getelementptr inbounds nuw i8, ptr %581, i64 %595
  %604 = load i32, ptr %13, align 4, !tbaa !54
  %605 = icmp eq i32 %604, 0
  %606 = load i32, ptr %14, align 4, !tbaa !54
  %607 = icmp eq i32 %606, 0
  %608 = select i1 %607, i32 %586, i32 0
  %609 = getelementptr inbounds nuw i8, ptr %578, i64 %588
  br i1 %605, label %612, label %610

610:                                              ; preds = %601
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %619

611:                                              ; preds = %577
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %731

612:                                              ; preds = %601, %597
  %613 = phi i32 [ %586, %597 ], [ %608, %601 ]
  %614 = phi ptr [ %581, %597 ], [ %603, %601 ]
  %615 = phi ptr [ %580, %597 ], [ %602, %601 ]
  %616 = phi ptr [ %578, %597 ], [ %609, %601 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %617 = icmp eq i32 %585, 0
  br i1 %617, label %619, label %618

618:                                              ; preds = %612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %31, ptr noundef nonnull readonly align 8 dereferenceable(2064) %30, i64 2064, i1 false)
  br label %619

619:                                              ; preds = %618, %612, %610
  %620 = phi ptr [ %609, %610 ], [ %616, %618 ], [ %616, %612 ]
  %621 = phi ptr [ %602, %610 ], [ %615, %618 ], [ %615, %612 ]
  %622 = phi ptr [ %603, %610 ], [ %614, %618 ], [ %614, %612 ]
  %623 = phi i32 [ %608, %610 ], [ %613, %618 ], [ %613, %612 ]
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %640, label %625

625:                                              ; preds = %619
  %626 = getelementptr inbounds nuw i8, ptr %16, i64 144
  %627 = load i32, ptr %626, align 8, !tbaa !59
  %628 = add i32 %627, -1
  %629 = icmp ult i32 %628, 2
  br i1 %629, label %731, label %630

630:                                              ; preds = %625
  %631 = getelementptr inbounds nuw i8, ptr %16, i64 152
  %632 = load i32, ptr %631, align 8, !tbaa !60
  %633 = add i32 %632, -1
  %634 = icmp ult i32 %633, 2
  br i1 %634, label %731, label %635

635:                                              ; preds = %630
  %636 = getelementptr inbounds nuw i8, ptr %16, i64 148
  %637 = load i32, ptr %636, align 4, !tbaa !55
  %638 = add i32 %637, -3
  %639 = icmp ult i32 %638, -2
  br i1 %639, label %640, label %731

640:                                              ; preds = %635, %619
  %641 = icmp ult ptr %621, %50
  br i1 %641, label %642, label %726

642:                                              ; preds = %640
  %643 = ptrtoint ptr %50 to i64
  %644 = ptrtoint ptr %621 to i64
  %645 = sub i64 %643, %644
  %646 = ptrtoint ptr %622 to i64
  %647 = sub i64 %592, %646
  %648 = add i64 %645, 3
  %649 = icmp ugt i64 %648, %647
  br i1 %649, label %731, label %650

650:                                              ; preds = %642
  %651 = trunc i64 %645 to i32
  %652 = shl i32 %651, 3
  %653 = add i32 %652, %5
  %654 = trunc i32 %653 to i16
  store i16 %654, ptr %622, align 1, !tbaa !72
  %655 = lshr i32 %653, 16
  %656 = trunc i32 %655 to i8
  %657 = getelementptr inbounds nuw i8, ptr %622, i64 2
  store i8 %656, ptr %657, align 1, !tbaa !56
  %658 = getelementptr inbounds nuw i8, ptr %622, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %658, ptr readonly align 1 %621, i64 %645, i1 false)
  %659 = icmp ult i64 %648, -119
  br i1 %659, label %660, label %731

660:                                              ; preds = %650
  %661 = getelementptr inbounds nuw i8, ptr %622, i64 %648
  %662 = icmp ult ptr %620, %38
  br i1 %662, label %663, label %726

663:                                              ; preds = %660
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %664 = getelementptr inbounds nuw i8, ptr %30, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull readonly align 8 dereferenceable(12) %664, i64 12, i1 false)
  %665 = icmp ult ptr %36, %620
  br i1 %665, label %666, label %.loopexit

666:                                              ; preds = %663
  %667 = load i32, ptr %15, align 4
  %668 = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %669 = load i32, ptr %668, align 4, !tbaa !67
  %670 = load ptr, ptr %17, align 8, !tbaa !45
  %671 = ptrtoint ptr %670 to i64
  %672 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %673 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %674 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %675 = load i32, ptr %674, align 4
  %676 = load i32, ptr %673, align 4
  br label %677

677:                                              ; preds = %719, %666
  %678 = phi i32 [ %676, %666 ], [ %720, %719 ]
  %679 = phi i32 [ %675, %666 ], [ %721, %719 ]
  %680 = phi ptr [ %36, %666 ], [ %723, %719 ]
  %681 = phi i32 [ %667, %666 ], [ %722, %719 ]
  %682 = load i32, ptr %680, align 4, !tbaa !73
  %683 = getelementptr inbounds nuw i8, ptr %680, i64 4
  %684 = load i16, ptr %683, align 4, !tbaa !62
  %685 = zext i16 %684 to i32
  %686 = ptrtoint ptr %680 to i64
  %687 = sub i64 %686, %671
  %688 = lshr exact i64 %687, 3
  %689 = trunc i64 %688 to i32
  %690 = icmp eq i32 %669, %689
  br i1 %690, label %691, label %696

691:                                              ; preds = %677
  %692 = load i32, ptr %672, align 8, !tbaa !68
  %693 = icmp eq i32 %692, 1
  %694 = or disjoint i32 %685, 65536
  %695 = select i1 %693, i32 %694, i32 %685
  br label %696

696:                                              ; preds = %691, %677
  %697 = phi i32 [ %685, %677 ], [ %695, %691 ]
  %698 = icmp ugt i32 %682, 3
  br i1 %698, label %699, label %701

699:                                              ; preds = %696
  store i32 %678, ptr %674, align 4, !tbaa !54
  store i32 %681, ptr %673, align 4, !tbaa !54
  %700 = add i32 %682, -3
  br label %716

701:                                              ; preds = %696
  %702 = icmp eq i32 %697, 0
  %703 = zext i1 %702 to i32
  %704 = add nsw i32 %682, -1
  %705 = add nsw i32 %704, %703
  switch i32 %705, label %708 [
    i32 0, label %719
    i32 3, label %706
  ]

706:                                              ; preds = %701
  %707 = add i32 %681, -1
  br label %712

708:                                              ; preds = %701
  %709 = zext i32 %705 to i64
  %710 = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %709
  %711 = load i32, ptr %710, align 4, !tbaa !54
  br label %712

712:                                              ; preds = %708, %706
  %713 = phi i32 [ %707, %706 ], [ %711, %708 ]
  %714 = icmp eq i32 %705, 1
  %715 = select i1 %714, i32 %679, i32 %678
  store i32 %715, ptr %674, align 4, !tbaa !54
  store i32 %681, ptr %673, align 4, !tbaa !54
  br label %716

716:                                              ; preds = %712, %699
  %717 = phi i32 [ %715, %712 ], [ %678, %699 ]
  %718 = phi i32 [ %713, %712 ], [ %700, %699 ]
  store i32 %718, ptr %15, align 4, !tbaa !54
  br label %719

719:                                              ; preds = %716, %701
  %720 = phi i32 [ %678, %701 ], [ %681, %716 ]
  %721 = phi i32 [ %679, %701 ], [ %717, %716 ]
  %722 = phi i32 [ %681, %701 ], [ %718, %716 ]
  %723 = getelementptr inbounds nuw i8, ptr %680, i64 8
  %724 = icmp ult ptr %723, %620
  br i1 %724, label %677, label %.loopexit, !llvm.loop !74

.loopexit:                                        ; preds = %719, %663
  %725 = getelementptr inbounds nuw i8, ptr %31, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %725, ptr noundef nonnull align 4 dereferenceable(12) %15, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %726

726:                                              ; preds = %.loopexit, %660, %640
  %727 = phi ptr [ %661, %.loopexit ], [ %622, %640 ], [ %661, %660 ]
  %728 = ptrtoint ptr %727 to i64
  %729 = ptrtoint ptr %1 to i64
  %730 = sub i64 %728, %729
  br label %731

731:                                              ; preds = %726, %650, %642, %635, %630, %625, %611, %457, %197, %6
  %732 = phi i64 [ %27, %6 ], [ %730, %726 ], [ %595, %611 ], [ 0, %635 ], [ %438, %457 ], [ 0, %197 ], [ 0, %625 ], [ 0, %630 ], [ %648, %650 ], [ -70, %642 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  ret i64 %732
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
