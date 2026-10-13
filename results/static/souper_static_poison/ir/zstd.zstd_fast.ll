; ModuleID = '/mydata/zstd/lib/compress/zstd_fast.c'
source_filename = "/mydata/zstd/lib/compress/zstd_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZSTD_MatchState_t = type { %struct.ZSTD_window_t, i32, i32, i32, i32, ptr, [8 x i32], i64, i32, ptr, ptr, ptr, i32, i32, %struct.optState_t, ptr, %struct.ZSTD_compressionParameters, ptr, i32, i32 }
%struct.ZSTD_window_t = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.optState_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.SeqStore_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }
%struct.SeqDef_s = type { i32, i16, i16 }

@ZSTD_match4Found_cmov.dummy = internal constant [4 x i8] c"\124Vx", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ZSTD_fillHashTable(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %3, 1
  %6 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !15
  %10 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !17
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = getelementptr inbounds i8, ptr %1, i64 -6
  %17 = getelementptr inbounds i8, ptr %15, i64 3
  %18 = icmp ult ptr %17, %16
  br i1 %5, label %19, label %233

19:                                               ; preds = %4
  br i1 %18, label %20, label %429

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !18
  %23 = ptrtoint ptr %11 to i64
  %24 = sub i32 56, %22
  %25 = zext nneg i32 %24 to i64
  %26 = sub i32 24, %22
  %27 = icmp eq i32 %2, 0
  br i1 %27, label %28, label %114

28:                                               ; preds = %20
  switch i32 %9, label %97 [
    i32 8, label %29
    i32 5, label %46
    i32 6, label %63
    i32 7, label %80
  ]

29:                                               ; preds = %28, %29
  %30 = phi ptr [ %44, %29 ], [ %17, %28 ]
  %31 = phi ptr [ %30, %29 ], [ %15, %28 ]
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %32, %23
  %34 = trunc i64 %33 to i32
  %35 = load i64, ptr %31, align 1, !tbaa !19
  %36 = mul i64 %35, -3523014627327384477
  %37 = lshr i64 %36, %25
  %38 = lshr i64 %37, 8
  %39 = trunc i64 %37 to i32
  %40 = and i32 %39, 255
  %41 = shl i32 %34, 8
  %42 = or disjoint i32 %40, %41
  %43 = getelementptr inbounds i32, ptr %7, i64 %38
  store i32 %42, ptr %43, align 4, !tbaa !20
  %44 = getelementptr inbounds i8, ptr %30, i64 3
  %45 = icmp ult ptr %44, %16
  br i1 %45, label %29, label %429, !llvm.loop !21

46:                                               ; preds = %28, %46
  %47 = phi ptr [ %61, %46 ], [ %17, %28 ]
  %48 = phi ptr [ %47, %46 ], [ %15, %28 ]
  %49 = ptrtoint ptr %48 to i64
  %50 = sub i64 %49, %23
  %51 = trunc i64 %50 to i32
  %52 = load i64, ptr %48, align 1, !tbaa !19
  %53 = mul i64 %52, -3523014627271114752
  %54 = lshr i64 %53, %25
  %55 = lshr i64 %54, 8
  %56 = trunc i64 %54 to i32
  %57 = and i32 %56, 255
  %58 = shl i32 %51, 8
  %59 = or disjoint i32 %57, %58
  %60 = getelementptr inbounds i32, ptr %7, i64 %55
  store i32 %59, ptr %60, align 4, !tbaa !20
  %61 = getelementptr inbounds i8, ptr %47, i64 3
  %62 = icmp ult ptr %61, %16
  br i1 %62, label %46, label %429, !llvm.loop !21

63:                                               ; preds = %28, %63
  %64 = phi ptr [ %78, %63 ], [ %17, %28 ]
  %65 = phi ptr [ %64, %63 ], [ %15, %28 ]
  %66 = ptrtoint ptr %65 to i64
  %67 = sub i64 %66, %23
  %68 = trunc i64 %67 to i32
  %69 = load i64, ptr %65, align 1, !tbaa !19
  %70 = mul i64 %69, -3523014627193847808
  %71 = lshr i64 %70, %25
  %72 = lshr i64 %71, 8
  %73 = trunc i64 %71 to i32
  %74 = and i32 %73, 255
  %75 = shl i32 %68, 8
  %76 = or disjoint i32 %74, %75
  %77 = getelementptr inbounds i32, ptr %7, i64 %72
  store i32 %76, ptr %77, align 4, !tbaa !20
  %78 = getelementptr inbounds i8, ptr %64, i64 3
  %79 = icmp ult ptr %78, %16
  br i1 %79, label %63, label %429, !llvm.loop !21

80:                                               ; preds = %28, %80
  %81 = phi ptr [ %95, %80 ], [ %17, %28 ]
  %82 = phi ptr [ %81, %80 ], [ %15, %28 ]
  %83 = ptrtoint ptr %82 to i64
  %84 = sub i64 %83, %23
  %85 = trunc i64 %84 to i32
  %86 = load i64, ptr %82, align 1, !tbaa !19
  %87 = mul i64 %86, -3523014627193167104
  %88 = lshr i64 %87, %25
  %89 = lshr i64 %88, 8
  %90 = trunc i64 %88 to i32
  %91 = and i32 %90, 255
  %92 = shl i32 %85, 8
  %93 = or disjoint i32 %91, %92
  %94 = getelementptr inbounds i32, ptr %7, i64 %89
  store i32 %93, ptr %94, align 4, !tbaa !20
  %95 = getelementptr inbounds i8, ptr %81, i64 3
  %96 = icmp ult ptr %95, %16
  br i1 %96, label %80, label %429, !llvm.loop !21

97:                                               ; preds = %28, %97
  %98 = phi ptr [ %112, %97 ], [ %17, %28 ]
  %99 = phi ptr [ %98, %97 ], [ %15, %28 ]
  %100 = ptrtoint ptr %99 to i64
  %101 = sub i64 %100, %23
  %102 = trunc i64 %101 to i32
  %103 = load i32, ptr %99, align 1, !tbaa !20
  %104 = mul i32 %103, -1640531535
  %105 = lshr i32 %104, %26
  %106 = lshr i32 %105, 8
  %107 = zext nneg i32 %106 to i64
  %108 = and i32 %105, 255
  %109 = shl i32 %102, 8
  %110 = or disjoint i32 %108, %109
  %111 = getelementptr inbounds i32, ptr %7, i64 %107
  store i32 %110, ptr %111, align 4, !tbaa !20
  %112 = getelementptr inbounds i8, ptr %98, i64 3
  %113 = icmp ult ptr %112, %16
  br i1 %113, label %97, label %429, !llvm.loop !21

114:                                              ; preds = %20, %230
  %115 = phi ptr [ %231, %230 ], [ %17, %20 ]
  %116 = phi ptr [ %115, %230 ], [ %15, %20 ]
  %117 = ptrtoint ptr %116 to i64
  %118 = sub i64 %117, %23
  %119 = trunc i64 %118 to i32
  %120 = shl i32 %119, 8
  %121 = getelementptr inbounds i8, ptr %116, i64 1
  switch i32 %9, label %170 [
    i32 8, label %158
    i32 5, label %122
    i32 6, label %134
    i32 7, label %146
  ]

122:                                              ; preds = %114
  %123 = load i64, ptr %116, align 1, !tbaa !19
  %124 = mul i64 %123, -3523014627271114752
  %125 = lshr i64 %124, %25
  %126 = lshr i64 %125, 8
  %127 = trunc i64 %125 to i32
  %128 = and i32 %127, 255
  %129 = or disjoint i32 %128, %120
  %130 = getelementptr inbounds i32, ptr %7, i64 %126
  store i32 %129, ptr %130, align 4, !tbaa !20
  %131 = load i64, ptr %121, align 1, !tbaa !19
  %132 = mul i64 %131, -3523014627271114752
  %133 = lshr i64 %132, %25
  br label %183

134:                                              ; preds = %114
  %135 = load i64, ptr %116, align 1, !tbaa !19
  %136 = mul i64 %135, -3523014627193847808
  %137 = lshr i64 %136, %25
  %138 = lshr i64 %137, 8
  %139 = trunc i64 %137 to i32
  %140 = and i32 %139, 255
  %141 = or disjoint i32 %140, %120
  %142 = getelementptr inbounds i32, ptr %7, i64 %138
  store i32 %141, ptr %142, align 4, !tbaa !20
  %143 = load i64, ptr %121, align 1, !tbaa !19
  %144 = mul i64 %143, -3523014627193847808
  %145 = lshr i64 %144, %25
  br label %183

146:                                              ; preds = %114
  %147 = load i64, ptr %116, align 1, !tbaa !19
  %148 = mul i64 %147, -3523014627193167104
  %149 = lshr i64 %148, %25
  %150 = lshr i64 %149, 8
  %151 = trunc i64 %149 to i32
  %152 = and i32 %151, 255
  %153 = or disjoint i32 %152, %120
  %154 = getelementptr inbounds i32, ptr %7, i64 %150
  store i32 %153, ptr %154, align 4, !tbaa !20
  %155 = load i64, ptr %121, align 1, !tbaa !19
  %156 = mul i64 %155, -3523014627193167104
  %157 = lshr i64 %156, %25
  br label %183

158:                                              ; preds = %114
  %159 = load i64, ptr %116, align 1, !tbaa !19
  %160 = mul i64 %159, -3523014627327384477
  %161 = lshr i64 %160, %25
  %162 = lshr i64 %161, 8
  %163 = trunc i64 %161 to i32
  %164 = and i32 %163, 255
  %165 = or disjoint i32 %164, %120
  %166 = getelementptr inbounds i32, ptr %7, i64 %162
  store i32 %165, ptr %166, align 4, !tbaa !20
  %167 = load i64, ptr %121, align 1, !tbaa !19
  %168 = mul i64 %167, -3523014627327384477
  %169 = lshr i64 %168, %25
  br label %183

170:                                              ; preds = %114
  %171 = load i32, ptr %116, align 1, !tbaa !20
  %172 = mul i32 %171, -1640531535
  %173 = lshr i32 %172, %26
  %174 = lshr i32 %173, 8
  %175 = zext nneg i32 %174 to i64
  %176 = and i32 %173, 255
  %177 = or disjoint i32 %176, %120
  %178 = getelementptr inbounds i32, ptr %7, i64 %175
  store i32 %177, ptr %178, align 4, !tbaa !20
  %179 = load i32, ptr %121, align 1, !tbaa !20
  %180 = mul i32 %179, -1640531535
  %181 = lshr i32 %180, %26
  %182 = zext i32 %181 to i64
  br label %183

183:                                              ; preds = %170, %158, %146, %134, %122
  %184 = phi i64 [ %182, %170 ], [ %157, %146 ], [ %145, %134 ], [ %133, %122 ], [ %169, %158 ]
  %185 = lshr i64 %184, 8
  %186 = getelementptr inbounds i32, ptr %7, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !20
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %183
  %190 = trunc i64 %184 to i32
  %191 = and i32 %190, 255
  %192 = shl i32 %119, 8
  %193 = add i32 %192, 256
  %194 = or disjoint i32 %191, %193
  store i32 %194, ptr %186, align 4, !tbaa !20
  br label %195

195:                                              ; preds = %189, %183
  %196 = getelementptr inbounds i8, ptr %116, i64 2
  switch i32 %9, label %213 [
    i32 8, label %209
    i32 5, label %205
    i32 6, label %201
    i32 7, label %197
  ]

197:                                              ; preds = %195
  %198 = load i64, ptr %196, align 1, !tbaa !19
  %199 = mul i64 %198, -3523014627193167104
  %200 = lshr i64 %199, %25
  br label %218

201:                                              ; preds = %195
  %202 = load i64, ptr %196, align 1, !tbaa !19
  %203 = mul i64 %202, -3523014627193847808
  %204 = lshr i64 %203, %25
  br label %218

205:                                              ; preds = %195
  %206 = load i64, ptr %196, align 1, !tbaa !19
  %207 = mul i64 %206, -3523014627271114752
  %208 = lshr i64 %207, %25
  br label %218

209:                                              ; preds = %195
  %210 = load i64, ptr %196, align 1, !tbaa !19
  %211 = mul i64 %210, -3523014627327384477
  %212 = lshr i64 %211, %25
  br label %218

213:                                              ; preds = %195
  %214 = load i32, ptr %196, align 1, !tbaa !20
  %215 = mul i32 %214, -1640531535
  %216 = lshr i32 %215, %26
  %217 = zext i32 %216 to i64
  br label %218

218:                                              ; preds = %213, %209, %205, %201, %197
  %219 = phi i64 [ %217, %213 ], [ %200, %197 ], [ %204, %201 ], [ %208, %205 ], [ %212, %209 ]
  %220 = lshr i64 %219, 8
  %221 = getelementptr inbounds i32, ptr %7, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !20
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %218
  %225 = trunc i64 %219 to i32
  %226 = and i32 %225, 255
  %227 = shl i32 %119, 8
  %228 = add i32 %227, 512
  %229 = or disjoint i32 %226, %228
  store i32 %229, ptr %221, align 4, !tbaa !20
  br label %230

230:                                              ; preds = %224, %218
  %231 = getelementptr inbounds i8, ptr %115, i64 3
  %232 = icmp ult ptr %231, %16
  br i1 %232, label %114, label %429, !llvm.loop !21

233:                                              ; preds = %4
  br i1 %18, label %234, label %429

234:                                              ; preds = %233
  %235 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 2
  %236 = load i32, ptr %235, align 4, !tbaa !18
  %237 = ptrtoint ptr %11 to i64
  %238 = sub i32 64, %236
  %239 = zext nneg i32 %238 to i64
  %240 = sub i32 32, %236
  %241 = icmp eq i32 %2, 0
  br i1 %241, label %242, label %304

242:                                              ; preds = %234
  switch i32 %9, label %291 [
    i32 8, label %243
    i32 5, label %255
    i32 6, label %267
    i32 7, label %279
  ]

243:                                              ; preds = %242, %243
  %244 = phi ptr [ %253, %243 ], [ %17, %242 ]
  %245 = phi ptr [ %244, %243 ], [ %15, %242 ]
  %246 = ptrtoint ptr %245 to i64
  %247 = sub i64 %246, %237
  %248 = trunc i64 %247 to i32
  %249 = load i64, ptr %245, align 1, !tbaa !19
  %250 = mul i64 %249, -3523014627327384477
  %251 = lshr i64 %250, %239
  %252 = getelementptr inbounds i32, ptr %7, i64 %251
  store i32 %248, ptr %252, align 4, !tbaa !20
  %253 = getelementptr inbounds i8, ptr %244, i64 3
  %254 = icmp ult ptr %253, %16
  br i1 %254, label %243, label %429, !llvm.loop !23

255:                                              ; preds = %242, %255
  %256 = phi ptr [ %265, %255 ], [ %17, %242 ]
  %257 = phi ptr [ %256, %255 ], [ %15, %242 ]
  %258 = ptrtoint ptr %257 to i64
  %259 = sub i64 %258, %237
  %260 = trunc i64 %259 to i32
  %261 = load i64, ptr %257, align 1, !tbaa !19
  %262 = mul i64 %261, -3523014627271114752
  %263 = lshr i64 %262, %239
  %264 = getelementptr inbounds i32, ptr %7, i64 %263
  store i32 %260, ptr %264, align 4, !tbaa !20
  %265 = getelementptr inbounds i8, ptr %256, i64 3
  %266 = icmp ult ptr %265, %16
  br i1 %266, label %255, label %429, !llvm.loop !23

267:                                              ; preds = %242, %267
  %268 = phi ptr [ %277, %267 ], [ %17, %242 ]
  %269 = phi ptr [ %268, %267 ], [ %15, %242 ]
  %270 = ptrtoint ptr %269 to i64
  %271 = sub i64 %270, %237
  %272 = trunc i64 %271 to i32
  %273 = load i64, ptr %269, align 1, !tbaa !19
  %274 = mul i64 %273, -3523014627193847808
  %275 = lshr i64 %274, %239
  %276 = getelementptr inbounds i32, ptr %7, i64 %275
  store i32 %272, ptr %276, align 4, !tbaa !20
  %277 = getelementptr inbounds i8, ptr %268, i64 3
  %278 = icmp ult ptr %277, %16
  br i1 %278, label %267, label %429, !llvm.loop !23

279:                                              ; preds = %242, %279
  %280 = phi ptr [ %289, %279 ], [ %17, %242 ]
  %281 = phi ptr [ %280, %279 ], [ %15, %242 ]
  %282 = ptrtoint ptr %281 to i64
  %283 = sub i64 %282, %237
  %284 = trunc i64 %283 to i32
  %285 = load i64, ptr %281, align 1, !tbaa !19
  %286 = mul i64 %285, -3523014627193167104
  %287 = lshr i64 %286, %239
  %288 = getelementptr inbounds i32, ptr %7, i64 %287
  store i32 %284, ptr %288, align 4, !tbaa !20
  %289 = getelementptr inbounds i8, ptr %280, i64 3
  %290 = icmp ult ptr %289, %16
  br i1 %290, label %279, label %429, !llvm.loop !23

291:                                              ; preds = %242, %291
  %292 = phi ptr [ %302, %291 ], [ %17, %242 ]
  %293 = phi ptr [ %292, %291 ], [ %15, %242 ]
  %294 = ptrtoint ptr %293 to i64
  %295 = sub i64 %294, %237
  %296 = trunc i64 %295 to i32
  %297 = load i32, ptr %293, align 1, !tbaa !20
  %298 = mul i32 %297, -1640531535
  %299 = lshr i32 %298, %240
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds i32, ptr %7, i64 %300
  store i32 %296, ptr %301, align 4, !tbaa !20
  %302 = getelementptr inbounds i8, ptr %292, i64 3
  %303 = icmp ult ptr %302, %16
  br i1 %303, label %291, label %429, !llvm.loop !23

304:                                              ; preds = %234, %426
  %305 = phi ptr [ %427, %426 ], [ %17, %234 ]
  %306 = phi ptr [ %305, %426 ], [ %15, %234 ]
  %307 = ptrtoint ptr %306 to i64
  %308 = sub i64 %307, %237
  %309 = trunc i64 %308 to i32
  switch i32 %9, label %358 [
    i32 8, label %346
    i32 5, label %310
    i32 6, label %322
    i32 7, label %334
  ]

310:                                              ; preds = %304
  %311 = load i64, ptr %306, align 1, !tbaa !19
  %312 = mul i64 %311, -3523014627271114752
  %313 = lshr i64 %312, %239
  %314 = getelementptr inbounds i32, ptr %7, i64 %313
  store i32 %309, ptr %314, align 4, !tbaa !20
  %315 = getelementptr inbounds i8, ptr %306, i64 1
  %316 = load i64, ptr %315, align 1, !tbaa !19
  %317 = mul i64 %316, -3523014627271114752
  %318 = lshr i64 %317, %239
  %319 = getelementptr inbounds i32, ptr %7, i64 %318
  %320 = load i32, ptr %319, align 4, !tbaa !20
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %382, label %384

322:                                              ; preds = %304
  %323 = load i64, ptr %306, align 1, !tbaa !19
  %324 = mul i64 %323, -3523014627193847808
  %325 = lshr i64 %324, %239
  %326 = getelementptr inbounds i32, ptr %7, i64 %325
  store i32 %309, ptr %326, align 4, !tbaa !20
  %327 = getelementptr inbounds i8, ptr %306, i64 1
  %328 = load i64, ptr %327, align 1, !tbaa !19
  %329 = mul i64 %328, -3523014627193847808
  %330 = lshr i64 %329, %239
  %331 = getelementptr inbounds i32, ptr %7, i64 %330
  %332 = load i32, ptr %331, align 4, !tbaa !20
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %392, label %394

334:                                              ; preds = %304
  %335 = load i64, ptr %306, align 1, !tbaa !19
  %336 = mul i64 %335, -3523014627193167104
  %337 = lshr i64 %336, %239
  %338 = getelementptr inbounds i32, ptr %7, i64 %337
  store i32 %309, ptr %338, align 4, !tbaa !20
  %339 = getelementptr inbounds i8, ptr %306, i64 1
  %340 = load i64, ptr %339, align 1, !tbaa !19
  %341 = mul i64 %340, -3523014627193167104
  %342 = lshr i64 %341, %239
  %343 = getelementptr inbounds i32, ptr %7, i64 %342
  %344 = load i32, ptr %343, align 4, !tbaa !20
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %402, label %404

346:                                              ; preds = %304
  %347 = load i64, ptr %306, align 1, !tbaa !19
  %348 = mul i64 %347, -3523014627327384477
  %349 = lshr i64 %348, %239
  %350 = getelementptr inbounds i32, ptr %7, i64 %349
  store i32 %309, ptr %350, align 4, !tbaa !20
  %351 = getelementptr inbounds i8, ptr %306, i64 1
  %352 = load i64, ptr %351, align 1, !tbaa !19
  %353 = mul i64 %352, -3523014627327384477
  %354 = lshr i64 %353, %239
  %355 = getelementptr inbounds i32, ptr %7, i64 %354
  %356 = load i32, ptr %355, align 4, !tbaa !20
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %372, label %374

358:                                              ; preds = %304
  %359 = load i32, ptr %306, align 1, !tbaa !20
  %360 = mul i32 %359, -1640531535
  %361 = lshr i32 %360, %240
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds i32, ptr %7, i64 %362
  store i32 %309, ptr %363, align 4, !tbaa !20
  %364 = getelementptr inbounds i8, ptr %306, i64 1
  %365 = load i32, ptr %364, align 1, !tbaa !20
  %366 = mul i32 %365, -1640531535
  %367 = lshr i32 %366, %240
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds i32, ptr %7, i64 %368
  %370 = load i32, ptr %369, align 4, !tbaa !20
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %412, label %414

372:                                              ; preds = %346
  %373 = add i32 %309, 1
  store i32 %373, ptr %355, align 4, !tbaa !20
  br label %374

374:                                              ; preds = %372, %346
  %375 = getelementptr inbounds i8, ptr %306, i64 2
  %376 = load i64, ptr %375, align 1, !tbaa !19
  %377 = mul i64 %376, -3523014627327384477
  %378 = lshr i64 %377, %239
  %379 = getelementptr inbounds i32, ptr %7, i64 %378
  %380 = load i32, ptr %379, align 4, !tbaa !20
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %423, label %426

382:                                              ; preds = %310
  %383 = add i32 %309, 1
  store i32 %383, ptr %319, align 4, !tbaa !20
  br label %384

384:                                              ; preds = %382, %310
  %385 = getelementptr inbounds i8, ptr %306, i64 2
  %386 = load i64, ptr %385, align 1, !tbaa !19
  %387 = mul i64 %386, -3523014627271114752
  %388 = lshr i64 %387, %239
  %389 = getelementptr inbounds i32, ptr %7, i64 %388
  %390 = load i32, ptr %389, align 4, !tbaa !20
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %423, label %426

392:                                              ; preds = %322
  %393 = add i32 %309, 1
  store i32 %393, ptr %331, align 4, !tbaa !20
  br label %394

394:                                              ; preds = %392, %322
  %395 = getelementptr inbounds i8, ptr %306, i64 2
  %396 = load i64, ptr %395, align 1, !tbaa !19
  %397 = mul i64 %396, -3523014627193847808
  %398 = lshr i64 %397, %239
  %399 = getelementptr inbounds i32, ptr %7, i64 %398
  %400 = load i32, ptr %399, align 4, !tbaa !20
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %423, label %426

402:                                              ; preds = %334
  %403 = add i32 %309, 1
  store i32 %403, ptr %343, align 4, !tbaa !20
  br label %404

404:                                              ; preds = %402, %334
  %405 = getelementptr inbounds i8, ptr %306, i64 2
  %406 = load i64, ptr %405, align 1, !tbaa !19
  %407 = mul i64 %406, -3523014627193167104
  %408 = lshr i64 %407, %239
  %409 = getelementptr inbounds i32, ptr %7, i64 %408
  %410 = load i32, ptr %409, align 4, !tbaa !20
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %423, label %426

412:                                              ; preds = %358
  %413 = add i32 %309, 1
  store i32 %413, ptr %369, align 4, !tbaa !20
  br label %414

414:                                              ; preds = %412, %358
  %415 = getelementptr inbounds i8, ptr %306, i64 2
  %416 = load i32, ptr %415, align 1, !tbaa !20
  %417 = mul i32 %416, -1640531535
  %418 = lshr i32 %417, %240
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds i32, ptr %7, i64 %419
  %421 = load i32, ptr %420, align 4, !tbaa !20
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %426

423:                                              ; preds = %414, %404, %394, %384, %374
  %424 = phi ptr [ %379, %374 ], [ %389, %384 ], [ %399, %394 ], [ %409, %404 ], [ %420, %414 ]
  %425 = add i32 %309, 2
  store i32 %425, ptr %424, align 4, !tbaa !20
  br label %426

426:                                              ; preds = %423, %414, %404, %394, %384, %374
  %427 = getelementptr inbounds i8, ptr %305, i64 3
  %428 = icmp ult ptr %427, %16
  br i1 %428, label %304, label %429, !llvm.loop !23

429:                                              ; preds = %426, %279, %267, %255, %243, %291, %230, %80, %63, %46, %29, %97, %233, %19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_fast(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16
  %7 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !24
  %9 = load i32, ptr %6, align 8, !tbaa !25
  %10 = icmp ult i32 %9, 19
  %11 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !26
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = add i32 %14, 1
  %18 = add i32 %17, %16
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !16
  %22 = ptrtoint ptr %3 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = add i64 %22, %4
  %25 = sub i64 %24, %23
  %26 = trunc i64 %25 to i32
  %27 = getelementptr i8, ptr %0, i64 24
  %28 = load i32, ptr %27, align 8, !tbaa !27
  %29 = getelementptr i8, ptr %0, i64 40
  %30 = load i32, ptr %29, align 8, !tbaa !28
  %31 = shl nuw i32 1, %9
  %32 = sub i32 %26, %28
  %33 = icmp ugt i32 %32, %31
  %34 = sub i32 %26, %31
  %35 = icmp eq i32 %30, 0
  %36 = select i1 %35, i1 %33, i1 false
  %37 = select i1 %36, i32 %34, i32 %28
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %21, i64 %38
  %40 = getelementptr inbounds i8, ptr %3, i64 %4
  %41 = getelementptr inbounds i8, ptr %40, i64 -8
  %42 = load i32, ptr %2, align 4, !tbaa !20
  %43 = getelementptr inbounds i32, ptr %2, i64 1
  %44 = load i32, ptr %43, align 4, !tbaa !20
  %45 = icmp eq ptr %39, %3
  %46 = zext i1 %45 to i64
  %47 = getelementptr inbounds i8, ptr %3, i64 %46
  %48 = ptrtoint ptr %47 to i64
  %49 = sub i64 %48, %23
  %50 = trunc i64 %49 to i32
  %51 = sub i32 %50, %28
  %52 = icmp ugt i32 %51, %31
  %53 = sub i32 %50, %31
  %54 = select i1 %35, i1 %52, i1 false
  %55 = select i1 %54, i32 %53, i32 %28
  %56 = sub i32 %50, %55
  %57 = icmp ugt i32 %44, %56
  %58 = select i1 %57, i32 0, i32 %44
  %59 = icmp ugt i32 %42, %56
  %60 = select i1 %59, i32 0, i32 %42
  %61 = getelementptr inbounds i8, ptr %21, i64 2
  %62 = getelementptr inbounds i8, ptr %47, i64 %19
  %63 = getelementptr inbounds i8, ptr %62, i64 1
  %64 = icmp ult ptr %63, %41
  br i1 %10, label %65, label %2308

65:                                               ; preds = %5
  switch i32 %8, label %66 [
    i32 7, label %1749
    i32 5, label %631
    i32 6, label %1190
  ]

66:                                               ; preds = %65
  br i1 %64, label %67, label %618

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !18
  %70 = sub i32 32, %69
  %71 = getelementptr inbounds i8, ptr %40, i64 -7
  %72 = getelementptr inbounds i8, ptr %40, i64 -3
  %73 = getelementptr inbounds i8, ptr %40, i64 -1
  %74 = getelementptr inbounds i8, ptr %40, i64 -32
  %75 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %76 = ptrtoint ptr %74 to i64
  %77 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %78 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %79 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  br label %80

80:                                               ; preds = %611, %67
  %81 = phi ptr [ %63, %67 ], [ %616, %611 ]
  %82 = phi ptr [ %62, %67 ], [ %615, %611 ]
  %83 = phi ptr [ %3, %67 ], [ %614, %611 ]
  %84 = phi ptr [ %47, %67 ], [ %614, %611 ]
  %85 = phi i32 [ %60, %67 ], [ %613, %611 ]
  %86 = phi i32 [ %58, %67 ], [ %612, %611 ]
  %87 = getelementptr inbounds i8, ptr %84, i64 1
  %88 = getelementptr inbounds i8, ptr %84, i64 128
  %89 = load i32, ptr %84, align 1, !tbaa !20
  %90 = mul i32 %89, -1640531535
  %91 = lshr i32 %90, %70
  %92 = zext i32 %91 to i64
  %93 = load i32, ptr %87, align 1, !tbaa !20
  %94 = getelementptr inbounds i32, ptr %12, i64 %92
  %95 = load i32, ptr %94, align 4, !tbaa !20
  %96 = zext i32 %85 to i64
  %97 = sub nsw i64 0, %96
  %98 = icmp ne i32 %85, 0
  br label %99

99:                                               ; preds = %179, %80
  %100 = phi i64 [ %92, %80 ], [ %138, %179 ]
  %101 = phi i32 [ %93, %80 ], [ %155, %179 ]
  %102 = phi i32 [ %95, %80 ], [ %154, %179 ]
  %103 = phi i64 [ %19, %80 ], [ %180, %179 ]
  %104 = phi ptr [ %88, %80 ], [ %181, %179 ]
  %105 = phi ptr [ %81, %80 ], [ %157, %179 ]
  %106 = phi ptr [ %82, %80 ], [ %156, %179 ]
  %107 = phi ptr [ %87, %80 ], [ %105, %179 ]
  %108 = phi ptr [ %84, %80 ], [ %106, %179 ]
  %109 = mul i32 %101, -1640531535
  %110 = lshr i32 %109, %70
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, ptr %106, i64 %97
  %113 = load i32, ptr %112, align 1, !tbaa !20
  %114 = ptrtoint ptr %108 to i64
  %115 = sub i64 %114, %23
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds i32, ptr %12, i64 %100
  store i32 %116, ptr %117, align 4, !tbaa !20
  %118 = load i32, ptr %106, align 1, !tbaa !20
  %119 = icmp eq i32 %118, %113
  %120 = and i1 %98, %119
  br i1 %120, label %164, label %121

121:                                              ; preds = %99
  %122 = zext i32 %102 to i64
  %123 = getelementptr inbounds i8, ptr %21, i64 %122
  %124 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %102, i32 %37, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr %123) #7, !srcloc !29
  %125 = load i32, ptr %108, align 1, !tbaa !20
  %126 = load i32, ptr %124, align 1, !tbaa !20
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !30
  %129 = icmp ult i32 %102, %37
  br i1 %129, label %130, label %183

130:                                              ; preds = %128
  %131 = load i32, ptr %106, align 1, !tbaa !20
  br label %132

132:                                              ; preds = %130, %121
  %133 = phi i32 [ %131, %130 ], [ %118, %121 ]
  %134 = getelementptr inbounds i32, ptr %12, i64 %111
  %135 = load i32, ptr %134, align 4, !tbaa !20
  %136 = mul i32 %133, -1640531535
  %137 = lshr i32 %136, %70
  %138 = zext i32 %137 to i64
  %139 = ptrtoint ptr %107 to i64
  %140 = sub i64 %139, %23
  %141 = trunc i64 %140 to i32
  store i32 %141, ptr %134, align 4, !tbaa !20
  %142 = zext i32 %135 to i64
  %143 = getelementptr inbounds i8, ptr %21, i64 %142
  %144 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %135, i32 %37, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr %143) #7, !srcloc !29
  %145 = load i32, ptr %107, align 1, !tbaa !20
  %146 = load i32, ptr %144, align 1, !tbaa !20
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %132
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !30
  %149 = icmp ult i32 %135, %37
  br i1 %149, label %152, label %150

150:                                              ; preds = %148
  %151 = icmp ult i64 %103, 5
  br i1 %151, label %183, label %195

152:                                              ; preds = %148, %132
  %153 = getelementptr inbounds i32, ptr %12, i64 %138
  %154 = load i32, ptr %153, align 4, !tbaa !20
  %155 = load i32, ptr %105, align 1, !tbaa !20
  %156 = getelementptr inbounds i8, ptr %106, i64 %103
  %157 = getelementptr inbounds i8, ptr %105, i64 %103
  %158 = icmp ult ptr %156, %104
  br i1 %158, label %179, label %159

159:                                              ; preds = %152
  %160 = add i64 %103, 1
  %161 = getelementptr inbounds i8, ptr %105, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %161, i32 0, i32 3, i32 1)
  %162 = getelementptr inbounds i8, ptr %105, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %162, i32 0, i32 3, i32 1)
  %163 = getelementptr inbounds i8, ptr %104, i64 128
  br label %179

164:                                              ; preds = %99
  %165 = getelementptr inbounds i8, ptr %106, i64 %97
  %166 = getelementptr inbounds i8, ptr %106, i64 -1
  %167 = load i8, ptr %166, align 1, !tbaa !31
  %168 = getelementptr inbounds i8, ptr %165, i64 -1
  %169 = load i8, ptr %168, align 1, !tbaa !31
  %170 = icmp eq i8 %167, %169
  %171 = sext i1 %170 to i64
  %172 = getelementptr inbounds i8, ptr %106, i64 %171
  %173 = getelementptr inbounds i8, ptr %165, i64 %171
  %174 = select i1 %170, i64 5, i64 4
  %175 = ptrtoint ptr %107 to i64
  %176 = sub i64 %175, %23
  %177 = trunc i64 %176 to i32
  %178 = getelementptr inbounds i32, ptr %12, i64 %111
  store i32 %177, ptr %178, align 4, !tbaa !20
  br label %223

179:                                              ; preds = %159, %152
  %180 = phi i64 [ %103, %152 ], [ %160, %159 ]
  %181 = phi ptr [ %104, %152 ], [ %163, %159 ]
  %182 = icmp ult ptr %157, %41
  br i1 %182, label %99, label %618, !llvm.loop !32

183:                                              ; preds = %128, %150
  %184 = phi ptr [ %106, %150 ], [ %107, %128 ]
  %185 = phi i64 [ %138, %150 ], [ %111, %128 ]
  %186 = phi i64 [ %139, %150 ], [ %114, %128 ]
  %187 = phi i64 [ %142, %150 ], [ %122, %128 ]
  %188 = phi i32 [ %135, %150 ], [ %102, %128 ]
  %189 = phi i32 [ %141, %150 ], [ %116, %128 ]
  %190 = phi ptr [ %107, %150 ], [ %108, %128 ]
  %191 = ptrtoint ptr %184 to i64
  %192 = sub i64 %191, %23
  %193 = trunc i64 %192 to i32
  %194 = getelementptr inbounds i32, ptr %12, i64 %185
  store i32 %193, ptr %194, align 4, !tbaa !20
  br label %195

195:                                              ; preds = %183, %150
  %196 = phi i64 [ %139, %150 ], [ %186, %183 ]
  %197 = phi i64 [ %142, %150 ], [ %187, %183 ]
  %198 = phi i32 [ %135, %150 ], [ %188, %183 ]
  %199 = phi i32 [ %141, %150 ], [ %189, %183 ]
  %200 = phi ptr [ %107, %150 ], [ %190, %183 ]
  %201 = getelementptr inbounds i8, ptr %21, i64 %197
  %202 = ptrtoint ptr %201 to i64
  %203 = sub i64 %196, %202
  %204 = trunc i64 %203 to i32
  %205 = add i32 %204, 3
  %206 = icmp ugt ptr %200, %83
  %207 = icmp ugt i32 %198, %37
  %208 = and i1 %207, %206
  br i1 %208, label %209, label %223

209:                                              ; preds = %195, %218
  %210 = phi ptr [ %213, %218 ], [ %200, %195 ]
  %211 = phi i64 [ %219, %218 ], [ 4, %195 ]
  %212 = phi ptr [ %215, %218 ], [ %201, %195 ]
  %213 = getelementptr inbounds i8, ptr %210, i64 -1
  %214 = load i8, ptr %213, align 1, !tbaa !31
  %215 = getelementptr inbounds i8, ptr %212, i64 -1
  %216 = load i8, ptr %215, align 1, !tbaa !31
  %217 = icmp eq i8 %214, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %209
  %219 = add i64 %211, 1
  %220 = icmp ugt ptr %213, %83
  %221 = icmp ugt ptr %215, %39
  %222 = and i1 %220, %221
  br i1 %222, label %209, label %223, !llvm.loop !33

223:                                              ; preds = %218, %209, %195, %164
  %224 = phi i32 [ %116, %164 ], [ %199, %195 ], [ %199, %209 ], [ %199, %218 ]
  %225 = phi i32 [ %86, %164 ], [ %85, %195 ], [ %85, %209 ], [ %85, %218 ]
  %226 = phi i32 [ 1, %164 ], [ %205, %195 ], [ %205, %209 ], [ %205, %218 ]
  %227 = phi ptr [ %173, %164 ], [ %201, %195 ], [ %215, %218 ], [ %212, %209 ]
  %228 = phi i64 [ %174, %164 ], [ 4, %195 ], [ %219, %218 ], [ %211, %209 ]
  %229 = phi i32 [ %85, %164 ], [ %204, %195 ], [ %204, %209 ], [ %204, %218 ]
  %230 = phi ptr [ %172, %164 ], [ %200, %195 ], [ %213, %218 ], [ %210, %209 ]
  %231 = getelementptr inbounds i8, ptr %230, i64 %228
  %232 = getelementptr inbounds i8, ptr %227, i64 %228
  %233 = icmp ugt ptr %71, %231
  br i1 %233, label %234, label %260

234:                                              ; preds = %223
  %235 = load i64, ptr %232, align 1, !tbaa !19
  %236 = load i64, ptr %231, align 1, !tbaa !19
  %237 = xor i64 %236, %235
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %234
  %240 = tail call i64 @llvm.cttz.i64(i64 %237, i1 true), !range !34
  %241 = lshr i64 %240, 3
  br label %297

242:                                              ; preds = %234, %248
  %243 = phi ptr [ %246, %248 ], [ %232, %234 ]
  %244 = phi ptr [ %245, %248 ], [ %231, %234 ]
  %245 = getelementptr inbounds i8, ptr %244, i64 8
  %246 = getelementptr inbounds i8, ptr %243, i64 8
  %247 = icmp ult ptr %245, %71
  br i1 %247, label %248, label %260

248:                                              ; preds = %242
  %249 = load i64, ptr %246, align 1, !tbaa !19
  %250 = load i64, ptr %245, align 1, !tbaa !19
  %251 = xor i64 %250, %249
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %242, label %253

253:                                              ; preds = %248
  %254 = tail call i64 @llvm.cttz.i64(i64 %251, i1 true), !range !34
  %255 = lshr i64 %254, 3
  %256 = getelementptr inbounds i8, ptr %245, i64 %255
  %257 = ptrtoint ptr %256 to i64
  %258 = ptrtoint ptr %231 to i64
  %259 = sub i64 %257, %258
  br label %297

260:                                              ; preds = %242, %223
  %261 = phi ptr [ %232, %223 ], [ %246, %242 ]
  %262 = phi ptr [ %231, %223 ], [ %245, %242 ]
  %263 = icmp ult ptr %262, %72
  br i1 %263, label %264, label %271

264:                                              ; preds = %260
  %265 = load i32, ptr %261, align 1, !tbaa !20
  %266 = load i32, ptr %262, align 1, !tbaa !20
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %264
  %269 = getelementptr inbounds i8, ptr %262, i64 4
  %270 = getelementptr inbounds i8, ptr %261, i64 4
  br label %271

271:                                              ; preds = %268, %264, %260
  %272 = phi ptr [ %270, %268 ], [ %261, %264 ], [ %261, %260 ]
  %273 = phi ptr [ %269, %268 ], [ %262, %264 ], [ %262, %260 ]
  %274 = icmp ult ptr %273, %73
  br i1 %274, label %275, label %282

275:                                              ; preds = %271
  %276 = load i16, ptr %272, align 1, !tbaa !35
  %277 = load i16, ptr %273, align 1, !tbaa !35
  %278 = icmp eq i16 %276, %277
  br i1 %278, label %279, label %282

279:                                              ; preds = %275
  %280 = getelementptr inbounds i8, ptr %273, i64 2
  %281 = getelementptr inbounds i8, ptr %272, i64 2
  br label %282

282:                                              ; preds = %279, %275, %271
  %283 = phi ptr [ %281, %279 ], [ %272, %275 ], [ %272, %271 ]
  %284 = phi ptr [ %280, %279 ], [ %273, %275 ], [ %273, %271 ]
  %285 = icmp ult ptr %284, %40
  br i1 %285, label %286, label %292

286:                                              ; preds = %282
  %287 = load i8, ptr %283, align 1, !tbaa !31
  %288 = load i8, ptr %284, align 1, !tbaa !31
  %289 = icmp eq i8 %287, %288
  %290 = zext i1 %289 to i64
  %291 = getelementptr inbounds i8, ptr %284, i64 %290
  br label %292

292:                                              ; preds = %286, %282
  %293 = phi ptr [ %284, %282 ], [ %291, %286 ]
  %294 = ptrtoint ptr %293 to i64
  %295 = ptrtoint ptr %231 to i64
  %296 = sub i64 %294, %295
  br label %297

297:                                              ; preds = %292, %253, %239
  %298 = phi i64 [ %296, %292 ], [ %241, %239 ], [ %259, %253 ]
  %299 = add i64 %298, %228
  %300 = ptrtoint ptr %230 to i64
  %301 = ptrtoint ptr %83 to i64
  %302 = sub i64 %300, %301
  %303 = getelementptr inbounds i8, ptr %83, i64 %302
  %304 = icmp ugt ptr %303, %74
  %305 = load ptr, ptr %75, align 8, !tbaa !37
  br i1 %304, label %329, label %306

306:                                              ; preds = %297
  %307 = load <2 x i64>, ptr %83, align 1, !tbaa !31
  store <2 x i64> %307, ptr %305, align 1, !tbaa !31
  %308 = icmp ugt i64 %302, 16
  br i1 %308, label %309, label %446

309:                                              ; preds = %306
  %310 = load ptr, ptr %75, align 8, !tbaa !37
  %311 = getelementptr inbounds i8, ptr %310, i64 16
  %312 = getelementptr inbounds i8, ptr %83, i64 16
  %313 = add i64 %302, -16
  %314 = getelementptr inbounds i8, ptr %310, i64 %302
  %315 = load <2 x i64>, ptr %312, align 1, !tbaa !31
  store <2 x i64> %315, ptr %311, align 1, !tbaa !31
  %316 = icmp ult i64 %313, 17
  br i1 %316, label %446, label %317

317:                                              ; preds = %309
  %318 = getelementptr inbounds i8, ptr %310, i64 32
  br label %319

319:                                              ; preds = %319, %317
  %320 = phi ptr [ %318, %317 ], [ %327, %319 ]
  %321 = phi ptr [ %312, %317 ], [ %325, %319 ]
  %322 = getelementptr inbounds i8, ptr %321, i64 16
  %323 = load <2 x i64>, ptr %322, align 1, !tbaa !31
  store <2 x i64> %323, ptr %320, align 1, !tbaa !31
  %324 = getelementptr inbounds i8, ptr %320, i64 16
  %325 = getelementptr inbounds i8, ptr %321, i64 32
  %326 = load <2 x i64>, ptr %325, align 1, !tbaa !31
  store <2 x i64> %326, ptr %324, align 1, !tbaa !31
  %327 = getelementptr inbounds i8, ptr %320, i64 32
  %328 = icmp ult ptr %327, %314
  br i1 %328, label %319, label %450, !llvm.loop !39

329:                                              ; preds = %297
  %330 = ptrtoint ptr %303 to i64
  %331 = icmp ugt ptr %83, %74
  br i1 %331, label %349, label %332

332:                                              ; preds = %329
  %333 = sub i64 %76, %301
  %334 = getelementptr inbounds i8, ptr %305, i64 %333
  %335 = load <2 x i64>, ptr %83, align 1, !tbaa !31
  store <2 x i64> %335, ptr %305, align 1, !tbaa !31
  %336 = icmp ult i64 %333, 17
  br i1 %336, label %349, label %337

337:                                              ; preds = %332
  %338 = getelementptr inbounds i8, ptr %305, i64 16
  br label %339

339:                                              ; preds = %339, %337
  %340 = phi ptr [ %338, %337 ], [ %347, %339 ]
  %341 = phi ptr [ %83, %337 ], [ %345, %339 ]
  %342 = getelementptr inbounds i8, ptr %341, i64 16
  %343 = load <2 x i64>, ptr %342, align 1, !tbaa !31
  store <2 x i64> %343, ptr %340, align 1, !tbaa !31
  %344 = getelementptr inbounds i8, ptr %340, i64 16
  %345 = getelementptr inbounds i8, ptr %341, i64 32
  %346 = load <2 x i64>, ptr %345, align 1, !tbaa !31
  store <2 x i64> %346, ptr %344, align 1, !tbaa !31
  %347 = getelementptr inbounds i8, ptr %340, i64 32
  %348 = icmp ult ptr %347, %334
  br i1 %348, label %339, label %349, !llvm.loop !39

349:                                              ; preds = %339, %332, %329
  %350 = phi ptr [ %74, %332 ], [ %83, %329 ], [ %74, %339 ]
  %351 = phi ptr [ %334, %332 ], [ %305, %329 ], [ %334, %339 ]
  %352 = icmp ult ptr %350, %303
  br i1 %352, label %353, label %450

353:                                              ; preds = %349
  %354 = ptrtoint ptr %351 to i64
  %355 = ptrtoint ptr %350 to i64
  %356 = sub i64 %330, %355
  %357 = getelementptr i8, ptr %350, i64 %356
  %358 = icmp ult i64 %356, 8
  %359 = sub i64 %354, %355
  %360 = icmp ult i64 %359, 32
  %361 = select i1 %358, i1 true, i1 %360
  br i1 %361, label %397, label %362

362:                                              ; preds = %353
  %363 = icmp ult i64 %356, 32
  br i1 %363, label %383, label %364

364:                                              ; preds = %362
  %365 = and i64 %356, -32
  br label %366

366:                                              ; preds = %366, %364
  %367 = phi i64 [ 0, %364 ], [ %374, %366 ]
  %368 = getelementptr i8, ptr %351, i64 %367
  %369 = getelementptr i8, ptr %350, i64 %367
  %370 = getelementptr i8, ptr %369, i64 16
  %371 = load <16 x i8>, ptr %369, align 1, !tbaa !31
  %372 = load <16 x i8>, ptr %370, align 1, !tbaa !31
  %373 = getelementptr i8, ptr %368, i64 16
  store <16 x i8> %371, ptr %368, align 1, !tbaa !31
  store <16 x i8> %372, ptr %373, align 1, !tbaa !31
  %374 = add nuw i64 %367, 32
  %375 = icmp eq i64 %374, %365
  br i1 %375, label %376, label %366, !llvm.loop !40

376:                                              ; preds = %366
  %377 = icmp eq i64 %356, %365
  br i1 %377, label %450, label %378

378:                                              ; preds = %376
  %379 = getelementptr i8, ptr %350, i64 %365
  %380 = getelementptr i8, ptr %351, i64 %365
  %381 = and i64 %356, 24
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %397, label %383

383:                                              ; preds = %362, %378
  %384 = phi i64 [ %365, %378 ], [ 0, %362 ]
  %385 = and i64 %356, -8
  %386 = getelementptr i8, ptr %351, i64 %385
  %387 = getelementptr i8, ptr %350, i64 %385
  br label %388

388:                                              ; preds = %388, %383
  %389 = phi i64 [ %384, %383 ], [ %393, %388 ]
  %390 = getelementptr i8, ptr %351, i64 %389
  %391 = getelementptr i8, ptr %350, i64 %389
  %392 = load <8 x i8>, ptr %391, align 1, !tbaa !31
  store <8 x i8> %392, ptr %390, align 1, !tbaa !31
  %393 = add nuw i64 %389, 8
  %394 = icmp eq i64 %393, %385
  br i1 %394, label %395, label %388, !llvm.loop !43

395:                                              ; preds = %388
  %396 = icmp eq i64 %356, %385
  br i1 %396, label %450, label %397

397:                                              ; preds = %353, %378, %395
  %398 = phi ptr [ %351, %353 ], [ %380, %378 ], [ %386, %395 ]
  %399 = phi ptr [ %350, %353 ], [ %379, %378 ], [ %387, %395 ]
  %400 = ptrtoint ptr %399 to i64
  %401 = sub i64 %300, %400
  %402 = and i64 %401, 7
  %403 = icmp eq i64 %402, 0
  br i1 %403, label %413, label %404

404:                                              ; preds = %397, %404
  %405 = phi ptr [ %410, %404 ], [ %398, %397 ]
  %406 = phi ptr [ %408, %404 ], [ %399, %397 ]
  %407 = phi i64 [ %411, %404 ], [ 0, %397 ]
  %408 = getelementptr inbounds i8, ptr %406, i64 1
  %409 = load i8, ptr %406, align 1, !tbaa !31
  %410 = getelementptr inbounds i8, ptr %405, i64 1
  store i8 %409, ptr %405, align 1, !tbaa !31
  %411 = add i64 %407, 1
  %412 = icmp eq i64 %411, %402
  br i1 %412, label %413, label %404, !llvm.loop !44

413:                                              ; preds = %404, %397
  %414 = phi ptr [ %398, %397 ], [ %410, %404 ]
  %415 = phi ptr [ %399, %397 ], [ %408, %404 ]
  %416 = sub i64 %400, %300
  %417 = icmp ugt i64 %416, -8
  br i1 %417, label %450, label %418

418:                                              ; preds = %413, %418
  %419 = phi ptr [ %444, %418 ], [ %414, %413 ]
  %420 = phi ptr [ %442, %418 ], [ %415, %413 ]
  %421 = getelementptr inbounds i8, ptr %420, i64 1
  %422 = load i8, ptr %420, align 1, !tbaa !31
  %423 = getelementptr inbounds i8, ptr %419, i64 1
  store i8 %422, ptr %419, align 1, !tbaa !31
  %424 = getelementptr inbounds i8, ptr %420, i64 2
  %425 = load i8, ptr %421, align 1, !tbaa !31
  %426 = getelementptr inbounds i8, ptr %419, i64 2
  store i8 %425, ptr %423, align 1, !tbaa !31
  %427 = getelementptr inbounds i8, ptr %420, i64 3
  %428 = load i8, ptr %424, align 1, !tbaa !31
  %429 = getelementptr inbounds i8, ptr %419, i64 3
  store i8 %428, ptr %426, align 1, !tbaa !31
  %430 = getelementptr inbounds i8, ptr %420, i64 4
  %431 = load i8, ptr %427, align 1, !tbaa !31
  %432 = getelementptr inbounds i8, ptr %419, i64 4
  store i8 %431, ptr %429, align 1, !tbaa !31
  %433 = getelementptr inbounds i8, ptr %420, i64 5
  %434 = load i8, ptr %430, align 1, !tbaa !31
  %435 = getelementptr inbounds i8, ptr %419, i64 5
  store i8 %434, ptr %432, align 1, !tbaa !31
  %436 = getelementptr inbounds i8, ptr %420, i64 6
  %437 = load i8, ptr %433, align 1, !tbaa !31
  %438 = getelementptr inbounds i8, ptr %419, i64 6
  store i8 %437, ptr %435, align 1, !tbaa !31
  %439 = getelementptr inbounds i8, ptr %420, i64 7
  %440 = load i8, ptr %436, align 1, !tbaa !31
  %441 = getelementptr inbounds i8, ptr %419, i64 7
  store i8 %440, ptr %438, align 1, !tbaa !31
  %442 = getelementptr inbounds i8, ptr %420, i64 8
  %443 = load i8, ptr %439, align 1, !tbaa !31
  %444 = getelementptr inbounds i8, ptr %419, i64 8
  store i8 %443, ptr %441, align 1, !tbaa !31
  %445 = icmp eq ptr %442, %357
  br i1 %445, label %450, label %418, !llvm.loop !46

446:                                              ; preds = %309, %306
  %447 = load ptr, ptr %75, align 8, !tbaa !37
  %448 = getelementptr inbounds i8, ptr %447, i64 %302
  store ptr %448, ptr %75, align 8, !tbaa !37
  %449 = load ptr, ptr %78, align 8, !tbaa !47
  br label %462

450:                                              ; preds = %319, %413, %418, %376, %395, %349
  %451 = load ptr, ptr %75, align 8, !tbaa !37
  %452 = getelementptr inbounds i8, ptr %451, i64 %302
  store ptr %452, ptr %75, align 8, !tbaa !37
  %453 = icmp ugt i64 %302, 65535
  %454 = load ptr, ptr %78, align 8, !tbaa !47
  br i1 %453, label %455, label %462, !prof !48

455:                                              ; preds = %450
  store i32 1, ptr %77, align 8, !tbaa !49
  %456 = load ptr, ptr %1, align 8, !tbaa !50
  %457 = ptrtoint ptr %454 to i64
  %458 = ptrtoint ptr %456 to i64
  %459 = sub i64 %457, %458
  %460 = lshr exact i64 %459, 3
  %461 = trunc i64 %460 to i32
  store i32 %461, ptr %79, align 4, !tbaa !51
  br label %462

462:                                              ; preds = %455, %450, %446
  %463 = phi ptr [ %449, %446 ], [ %454, %455 ], [ %454, %450 ]
  %464 = trunc i64 %302 to i16
  %465 = getelementptr inbounds %struct.SeqDef_s, ptr %463, i64 0, i32 1
  store i16 %464, ptr %465, align 4, !tbaa !52
  store i32 %226, ptr %463, align 4, !tbaa !54
  %466 = add i64 %299, -3
  %467 = icmp ugt i64 %466, 65535
  br i1 %467, label %468, label %475, !prof !55

468:                                              ; preds = %462
  store i32 2, ptr %77, align 8, !tbaa !49
  %469 = load ptr, ptr %1, align 8, !tbaa !50
  %470 = ptrtoint ptr %463 to i64
  %471 = ptrtoint ptr %469 to i64
  %472 = sub i64 %470, %471
  %473 = lshr exact i64 %472, 3
  %474 = trunc i64 %473 to i32
  store i32 %474, ptr %79, align 4, !tbaa !51
  br label %475

475:                                              ; preds = %468, %462
  %476 = trunc i64 %466 to i16
  %477 = getelementptr inbounds %struct.SeqDef_s, ptr %463, i64 0, i32 2
  store i16 %476, ptr %477, align 2, !tbaa !56
  %478 = getelementptr inbounds %struct.SeqDef_s, ptr %463, i64 1
  store ptr %478, ptr %78, align 8, !tbaa !47
  %479 = getelementptr inbounds i8, ptr %230, i64 %299
  %480 = icmp ugt ptr %479, %41
  br i1 %480, label %611, label %481

481:                                              ; preds = %475
  %482 = add i32 %224, 2
  %483 = zext i32 %224 to i64
  %484 = getelementptr inbounds i8, ptr %61, i64 %483
  %485 = load i32, ptr %484, align 1, !tbaa !20
  %486 = mul i32 %485, -1640531535
  %487 = lshr i32 %486, %70
  %488 = zext i32 %487 to i64
  %489 = getelementptr inbounds i32, ptr %12, i64 %488
  store i32 %482, ptr %489, align 4, !tbaa !20
  %490 = getelementptr inbounds i8, ptr %479, i64 -2
  %491 = ptrtoint ptr %490 to i64
  %492 = sub i64 %491, %23
  %493 = trunc i64 %492 to i32
  %494 = load i32, ptr %490, align 1, !tbaa !20
  %495 = mul i32 %494, -1640531535
  %496 = lshr i32 %495, %70
  %497 = zext i32 %496 to i64
  %498 = getelementptr inbounds i32, ptr %12, i64 %497
  store i32 %493, ptr %498, align 4, !tbaa !20
  %499 = icmp eq i32 %225, 0
  br i1 %499, label %611, label %500

500:                                              ; preds = %481, %606
  %501 = phi ptr [ %609, %606 ], [ %478, %481 ]
  %502 = phi ptr [ %588, %606 ], [ %479, %481 ]
  %503 = phi i32 [ %504, %606 ], [ %229, %481 ]
  %504 = phi i32 [ %503, %606 ], [ %225, %481 ]
  %505 = load i32, ptr %502, align 1, !tbaa !20
  %506 = zext i32 %504 to i64
  %507 = sub nsw i64 0, %506
  %508 = getelementptr inbounds i8, ptr %502, i64 %507
  %509 = load i32, ptr %508, align 1, !tbaa !20
  %510 = icmp eq i32 %505, %509
  br i1 %510, label %511, label %611

511:                                              ; preds = %500
  %512 = getelementptr inbounds i8, ptr %502, i64 4
  %513 = getelementptr inbounds i8, ptr %512, i64 %507
  %514 = icmp ugt ptr %71, %512
  br i1 %514, label %515, label %541

515:                                              ; preds = %511
  %516 = load i64, ptr %513, align 1, !tbaa !19
  %517 = load i64, ptr %512, align 1, !tbaa !19
  %518 = xor i64 %517, %516
  %519 = icmp eq i64 %518, 0
  br i1 %519, label %523, label %520

520:                                              ; preds = %515
  %521 = tail call i64 @llvm.cttz.i64(i64 %518, i1 true), !range !34
  %522 = lshr i64 %521, 3
  br label %578

523:                                              ; preds = %515, %529
  %524 = phi ptr [ %527, %529 ], [ %513, %515 ]
  %525 = phi ptr [ %526, %529 ], [ %512, %515 ]
  %526 = getelementptr inbounds i8, ptr %525, i64 8
  %527 = getelementptr inbounds i8, ptr %524, i64 8
  %528 = icmp ult ptr %526, %71
  br i1 %528, label %529, label %541

529:                                              ; preds = %523
  %530 = load i64, ptr %527, align 1, !tbaa !19
  %531 = load i64, ptr %526, align 1, !tbaa !19
  %532 = xor i64 %531, %530
  %533 = icmp eq i64 %532, 0
  br i1 %533, label %523, label %534

534:                                              ; preds = %529
  %535 = tail call i64 @llvm.cttz.i64(i64 %532, i1 true), !range !34
  %536 = lshr i64 %535, 3
  %537 = getelementptr inbounds i8, ptr %526, i64 %536
  %538 = ptrtoint ptr %537 to i64
  %539 = ptrtoint ptr %512 to i64
  %540 = sub i64 %538, %539
  br label %578

541:                                              ; preds = %523, %511
  %542 = phi ptr [ %513, %511 ], [ %527, %523 ]
  %543 = phi ptr [ %512, %511 ], [ %526, %523 ]
  %544 = icmp ult ptr %543, %72
  br i1 %544, label %545, label %552

545:                                              ; preds = %541
  %546 = load i32, ptr %542, align 1, !tbaa !20
  %547 = load i32, ptr %543, align 1, !tbaa !20
  %548 = icmp eq i32 %546, %547
  br i1 %548, label %549, label %552

549:                                              ; preds = %545
  %550 = getelementptr inbounds i8, ptr %543, i64 4
  %551 = getelementptr inbounds i8, ptr %542, i64 4
  br label %552

552:                                              ; preds = %549, %545, %541
  %553 = phi ptr [ %551, %549 ], [ %542, %545 ], [ %542, %541 ]
  %554 = phi ptr [ %550, %549 ], [ %543, %545 ], [ %543, %541 ]
  %555 = icmp ult ptr %554, %73
  br i1 %555, label %556, label %563

556:                                              ; preds = %552
  %557 = load i16, ptr %553, align 1, !tbaa !35
  %558 = load i16, ptr %554, align 1, !tbaa !35
  %559 = icmp eq i16 %557, %558
  br i1 %559, label %560, label %563

560:                                              ; preds = %556
  %561 = getelementptr inbounds i8, ptr %554, i64 2
  %562 = getelementptr inbounds i8, ptr %553, i64 2
  br label %563

563:                                              ; preds = %560, %556, %552
  %564 = phi ptr [ %562, %560 ], [ %553, %556 ], [ %553, %552 ]
  %565 = phi ptr [ %561, %560 ], [ %554, %556 ], [ %554, %552 ]
  %566 = icmp ult ptr %565, %40
  br i1 %566, label %567, label %573

567:                                              ; preds = %563
  %568 = load i8, ptr %564, align 1, !tbaa !31
  %569 = load i8, ptr %565, align 1, !tbaa !31
  %570 = icmp eq i8 %568, %569
  %571 = zext i1 %570 to i64
  %572 = getelementptr inbounds i8, ptr %565, i64 %571
  br label %573

573:                                              ; preds = %567, %563
  %574 = phi ptr [ %565, %563 ], [ %572, %567 ]
  %575 = ptrtoint ptr %574 to i64
  %576 = ptrtoint ptr %512 to i64
  %577 = sub i64 %575, %576
  br label %578

578:                                              ; preds = %573, %534, %520
  %579 = phi i64 [ %577, %573 ], [ %522, %520 ], [ %540, %534 ]
  %580 = add i64 %579, 4
  %581 = ptrtoint ptr %502 to i64
  %582 = sub i64 %581, %23
  %583 = trunc i64 %582 to i32
  %584 = mul i32 %505, -1640531535
  %585 = lshr i32 %584, %70
  %586 = zext i32 %585 to i64
  %587 = getelementptr inbounds i32, ptr %12, i64 %586
  store i32 %583, ptr %587, align 4, !tbaa !20
  %588 = getelementptr inbounds i8, ptr %502, i64 %580
  %589 = icmp ugt ptr %502, %74
  br i1 %589, label %594, label %590

590:                                              ; preds = %578
  %591 = load ptr, ptr %75, align 8, !tbaa !37
  %592 = load <2 x i64>, ptr %502, align 1, !tbaa !31
  store <2 x i64> %592, ptr %591, align 1, !tbaa !31
  %593 = load ptr, ptr %78, align 8, !tbaa !47
  br label %594

594:                                              ; preds = %590, %578
  %595 = phi ptr [ %501, %578 ], [ %593, %590 ]
  %596 = getelementptr inbounds %struct.SeqDef_s, ptr %595, i64 0, i32 1
  store i16 0, ptr %596, align 4, !tbaa !52
  store i32 1, ptr %595, align 4, !tbaa !54
  %597 = add i64 %579, 1
  %598 = icmp ugt i64 %597, 65535
  br i1 %598, label %599, label %606, !prof !55

599:                                              ; preds = %594
  store i32 2, ptr %77, align 8, !tbaa !49
  %600 = load ptr, ptr %1, align 8, !tbaa !50
  %601 = ptrtoint ptr %595 to i64
  %602 = ptrtoint ptr %600 to i64
  %603 = sub i64 %601, %602
  %604 = lshr exact i64 %603, 3
  %605 = trunc i64 %604 to i32
  store i32 %605, ptr %79, align 4, !tbaa !51
  br label %606

606:                                              ; preds = %599, %594
  %607 = trunc i64 %597 to i16
  %608 = getelementptr inbounds %struct.SeqDef_s, ptr %595, i64 0, i32 2
  store i16 %607, ptr %608, align 2, !tbaa !56
  %609 = getelementptr inbounds %struct.SeqDef_s, ptr %595, i64 1
  store ptr %609, ptr %78, align 8, !tbaa !47
  %610 = icmp ugt ptr %588, %41
  br i1 %610, label %611, label %500

611:                                              ; preds = %606, %500, %481, %475
  %612 = phi i32 [ 0, %481 ], [ %225, %475 ], [ %504, %500 ], [ %503, %606 ]
  %613 = phi i32 [ %229, %481 ], [ %229, %475 ], [ %503, %500 ], [ %504, %606 ]
  %614 = phi ptr [ %479, %481 ], [ %479, %475 ], [ %502, %500 ], [ %588, %606 ]
  %615 = getelementptr inbounds i8, ptr %614, i64 %19
  %616 = getelementptr inbounds i8, ptr %615, i64 1
  %617 = icmp ult ptr %616, %41
  br i1 %617, label %80, label %618

618:                                              ; preds = %611, %179, %66
  %619 = phi i32 [ %58, %66 ], [ %86, %179 ], [ %612, %611 ]
  %620 = phi i32 [ %60, %66 ], [ %85, %179 ], [ %613, %611 ]
  %621 = phi ptr [ %3, %66 ], [ %83, %179 ], [ %614, %611 ]
  %622 = select i1 %59, i32 %42, i32 0
  %623 = select i1 %57, i32 %44, i32 0
  %624 = icmp ne i32 %622, 0
  %625 = icmp ne i32 %620, 0
  %626 = select i1 %624, i1 %625, i1 false
  %627 = select i1 %626, i32 %622, i32 %623
  %628 = select i1 %625, i32 %620, i32 %622
  store i32 %628, ptr %2, align 4, !tbaa !20
  %629 = icmp eq i32 %619, 0
  %630 = select i1 %629, i32 %627, i32 %619
  br label %4874

631:                                              ; preds = %65
  br i1 %64, label %632, label %1177

632:                                              ; preds = %631
  %633 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 2
  %634 = load i32, ptr %633, align 4, !tbaa !18
  %635 = sub i32 64, %634
  %636 = zext nneg i32 %635 to i64
  %637 = getelementptr inbounds i8, ptr %40, i64 -7
  %638 = getelementptr inbounds i8, ptr %40, i64 -3
  %639 = getelementptr inbounds i8, ptr %40, i64 -1
  %640 = getelementptr inbounds i8, ptr %40, i64 -32
  %641 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %642 = ptrtoint ptr %640 to i64
  %643 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %644 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %645 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  br label %646

646:                                              ; preds = %1170, %632
  %647 = phi ptr [ %63, %632 ], [ %1175, %1170 ]
  %648 = phi ptr [ %62, %632 ], [ %1174, %1170 ]
  %649 = phi ptr [ %3, %632 ], [ %1173, %1170 ]
  %650 = phi ptr [ %47, %632 ], [ %1173, %1170 ]
  %651 = phi i32 [ %60, %632 ], [ %1172, %1170 ]
  %652 = phi i32 [ %58, %632 ], [ %1171, %1170 ]
  %653 = getelementptr inbounds i8, ptr %650, i64 1
  %654 = getelementptr inbounds i8, ptr %650, i64 128
  %655 = load i64, ptr %650, align 1, !tbaa !19
  %656 = mul i64 %655, -3523014627271114752
  %657 = lshr i64 %656, %636
  %658 = load i64, ptr %653, align 1, !tbaa !19
  %659 = getelementptr inbounds i32, ptr %12, i64 %657
  %660 = load i32, ptr %659, align 4, !tbaa !20
  %661 = zext i32 %651 to i64
  %662 = sub nsw i64 0, %661
  %663 = icmp ne i32 %651, 0
  br label %664

664:                                              ; preds = %740, %646
  %665 = phi i64 [ %657, %646 ], [ %699, %740 ]
  %666 = phi i64 [ %658, %646 ], [ %716, %740 ]
  %667 = phi i32 [ %660, %646 ], [ %715, %740 ]
  %668 = phi i64 [ %19, %646 ], [ %741, %740 ]
  %669 = phi ptr [ %654, %646 ], [ %742, %740 ]
  %670 = phi ptr [ %647, %646 ], [ %718, %740 ]
  %671 = phi ptr [ %648, %646 ], [ %717, %740 ]
  %672 = phi ptr [ %653, %646 ], [ %670, %740 ]
  %673 = phi ptr [ %650, %646 ], [ %671, %740 ]
  %674 = mul i64 %666, -3523014627271114752
  %675 = lshr i64 %674, %636
  %676 = getelementptr inbounds i8, ptr %671, i64 %662
  %677 = load i32, ptr %676, align 1, !tbaa !20
  %678 = ptrtoint ptr %673 to i64
  %679 = sub i64 %678, %23
  %680 = trunc i64 %679 to i32
  %681 = getelementptr inbounds i32, ptr %12, i64 %665
  store i32 %680, ptr %681, align 4, !tbaa !20
  %682 = load i32, ptr %671, align 1, !tbaa !20
  %683 = icmp eq i32 %682, %677
  %684 = and i1 %663, %683
  br i1 %684, label %725, label %685

685:                                              ; preds = %664
  %686 = zext i32 %667 to i64
  %687 = getelementptr inbounds i8, ptr %21, i64 %686
  %688 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %667, i32 %37, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr %687) #7, !srcloc !29
  %689 = load i32, ptr %673, align 1, !tbaa !20
  %690 = load i32, ptr %688, align 1, !tbaa !20
  %691 = icmp eq i32 %689, %690
  br i1 %691, label %692, label %694

692:                                              ; preds = %685
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !30
  %693 = icmp ult i32 %667, %37
  br i1 %693, label %694, label %744

694:                                              ; preds = %692, %685
  %695 = getelementptr inbounds i32, ptr %12, i64 %675
  %696 = load i32, ptr %695, align 4, !tbaa !20
  %697 = load i64, ptr %671, align 1, !tbaa !19
  %698 = mul i64 %697, -3523014627271114752
  %699 = lshr i64 %698, %636
  %700 = ptrtoint ptr %672 to i64
  %701 = sub i64 %700, %23
  %702 = trunc i64 %701 to i32
  store i32 %702, ptr %695, align 4, !tbaa !20
  %703 = zext i32 %696 to i64
  %704 = getelementptr inbounds i8, ptr %21, i64 %703
  %705 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %696, i32 %37, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr %704) #7, !srcloc !29
  %706 = load i32, ptr %672, align 1, !tbaa !20
  %707 = load i32, ptr %705, align 1, !tbaa !20
  %708 = icmp eq i32 %706, %707
  br i1 %708, label %709, label %713

709:                                              ; preds = %694
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !30
  %710 = icmp ult i32 %696, %37
  br i1 %710, label %713, label %711

711:                                              ; preds = %709
  %712 = icmp ult i64 %668, 5
  br i1 %712, label %744, label %756

713:                                              ; preds = %709, %694
  %714 = getelementptr inbounds i32, ptr %12, i64 %699
  %715 = load i32, ptr %714, align 4, !tbaa !20
  %716 = load i64, ptr %670, align 1, !tbaa !19
  %717 = getelementptr inbounds i8, ptr %671, i64 %668
  %718 = getelementptr inbounds i8, ptr %670, i64 %668
  %719 = icmp ult ptr %717, %669
  br i1 %719, label %740, label %720

720:                                              ; preds = %713
  %721 = add i64 %668, 1
  %722 = getelementptr inbounds i8, ptr %670, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %722, i32 0, i32 3, i32 1)
  %723 = getelementptr inbounds i8, ptr %670, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %723, i32 0, i32 3, i32 1)
  %724 = getelementptr inbounds i8, ptr %669, i64 128
  br label %740

725:                                              ; preds = %664
  %726 = getelementptr inbounds i8, ptr %671, i64 %662
  %727 = getelementptr inbounds i8, ptr %671, i64 -1
  %728 = load i8, ptr %727, align 1, !tbaa !31
  %729 = getelementptr inbounds i8, ptr %726, i64 -1
  %730 = load i8, ptr %729, align 1, !tbaa !31
  %731 = icmp eq i8 %728, %730
  %732 = sext i1 %731 to i64
  %733 = getelementptr inbounds i8, ptr %671, i64 %732
  %734 = getelementptr inbounds i8, ptr %726, i64 %732
  %735 = select i1 %731, i64 5, i64 4
  %736 = ptrtoint ptr %672 to i64
  %737 = sub i64 %736, %23
  %738 = trunc i64 %737 to i32
  %739 = getelementptr inbounds i32, ptr %12, i64 %675
  store i32 %738, ptr %739, align 4, !tbaa !20
  br label %784

740:                                              ; preds = %720, %713
  %741 = phi i64 [ %668, %713 ], [ %721, %720 ]
  %742 = phi ptr [ %669, %713 ], [ %724, %720 ]
  %743 = icmp ult ptr %718, %41
  br i1 %743, label %664, label %1177, !llvm.loop !32

744:                                              ; preds = %692, %711
  %745 = phi ptr [ %671, %711 ], [ %672, %692 ]
  %746 = phi i64 [ %699, %711 ], [ %675, %692 ]
  %747 = phi i64 [ %700, %711 ], [ %678, %692 ]
  %748 = phi i64 [ %703, %711 ], [ %686, %692 ]
  %749 = phi i32 [ %696, %711 ], [ %667, %692 ]
  %750 = phi i32 [ %702, %711 ], [ %680, %692 ]
  %751 = phi ptr [ %672, %711 ], [ %673, %692 ]
  %752 = ptrtoint ptr %745 to i64
  %753 = sub i64 %752, %23
  %754 = trunc i64 %753 to i32
  %755 = getelementptr inbounds i32, ptr %12, i64 %746
  store i32 %754, ptr %755, align 4, !tbaa !20
  br label %756

756:                                              ; preds = %744, %711
  %757 = phi i64 [ %700, %711 ], [ %747, %744 ]
  %758 = phi i64 [ %703, %711 ], [ %748, %744 ]
  %759 = phi i32 [ %696, %711 ], [ %749, %744 ]
  %760 = phi i32 [ %702, %711 ], [ %750, %744 ]
  %761 = phi ptr [ %672, %711 ], [ %751, %744 ]
  %762 = getelementptr inbounds i8, ptr %21, i64 %758
  %763 = ptrtoint ptr %762 to i64
  %764 = sub i64 %757, %763
  %765 = trunc i64 %764 to i32
  %766 = add i32 %765, 3
  %767 = icmp ugt ptr %761, %649
  %768 = icmp ugt i32 %759, %37
  %769 = and i1 %768, %767
  br i1 %769, label %770, label %784

770:                                              ; preds = %756, %779
  %771 = phi ptr [ %774, %779 ], [ %761, %756 ]
  %772 = phi i64 [ %780, %779 ], [ 4, %756 ]
  %773 = phi ptr [ %776, %779 ], [ %762, %756 ]
  %774 = getelementptr inbounds i8, ptr %771, i64 -1
  %775 = load i8, ptr %774, align 1, !tbaa !31
  %776 = getelementptr inbounds i8, ptr %773, i64 -1
  %777 = load i8, ptr %776, align 1, !tbaa !31
  %778 = icmp eq i8 %775, %777
  br i1 %778, label %779, label %784

779:                                              ; preds = %770
  %780 = add i64 %772, 1
  %781 = icmp ugt ptr %774, %649
  %782 = icmp ugt ptr %776, %39
  %783 = and i1 %781, %782
  br i1 %783, label %770, label %784, !llvm.loop !33

784:                                              ; preds = %779, %770, %756, %725
  %785 = phi i32 [ %680, %725 ], [ %760, %756 ], [ %760, %770 ], [ %760, %779 ]
  %786 = phi i32 [ %652, %725 ], [ %651, %756 ], [ %651, %770 ], [ %651, %779 ]
  %787 = phi i32 [ 1, %725 ], [ %766, %756 ], [ %766, %770 ], [ %766, %779 ]
  %788 = phi ptr [ %734, %725 ], [ %762, %756 ], [ %776, %779 ], [ %773, %770 ]
  %789 = phi i64 [ %735, %725 ], [ 4, %756 ], [ %780, %779 ], [ %772, %770 ]
  %790 = phi i32 [ %651, %725 ], [ %765, %756 ], [ %765, %770 ], [ %765, %779 ]
  %791 = phi ptr [ %733, %725 ], [ %761, %756 ], [ %774, %779 ], [ %771, %770 ]
  %792 = getelementptr inbounds i8, ptr %791, i64 %789
  %793 = getelementptr inbounds i8, ptr %788, i64 %789
  %794 = icmp ugt ptr %637, %792
  br i1 %794, label %795, label %821

795:                                              ; preds = %784
  %796 = load i64, ptr %793, align 1, !tbaa !19
  %797 = load i64, ptr %792, align 1, !tbaa !19
  %798 = xor i64 %797, %796
  %799 = icmp eq i64 %798, 0
  br i1 %799, label %803, label %800

800:                                              ; preds = %795
  %801 = tail call i64 @llvm.cttz.i64(i64 %798, i1 true), !range !34
  %802 = lshr i64 %801, 3
  br label %858

803:                                              ; preds = %795, %809
  %804 = phi ptr [ %807, %809 ], [ %793, %795 ]
  %805 = phi ptr [ %806, %809 ], [ %792, %795 ]
  %806 = getelementptr inbounds i8, ptr %805, i64 8
  %807 = getelementptr inbounds i8, ptr %804, i64 8
  %808 = icmp ult ptr %806, %637
  br i1 %808, label %809, label %821

809:                                              ; preds = %803
  %810 = load i64, ptr %807, align 1, !tbaa !19
  %811 = load i64, ptr %806, align 1, !tbaa !19
  %812 = xor i64 %811, %810
  %813 = icmp eq i64 %812, 0
  br i1 %813, label %803, label %814

814:                                              ; preds = %809
  %815 = tail call i64 @llvm.cttz.i64(i64 %812, i1 true), !range !34
  %816 = lshr i64 %815, 3
  %817 = getelementptr inbounds i8, ptr %806, i64 %816
  %818 = ptrtoint ptr %817 to i64
  %819 = ptrtoint ptr %792 to i64
  %820 = sub i64 %818, %819
  br label %858

821:                                              ; preds = %803, %784
  %822 = phi ptr [ %793, %784 ], [ %807, %803 ]
  %823 = phi ptr [ %792, %784 ], [ %806, %803 ]
  %824 = icmp ult ptr %823, %638
  br i1 %824, label %825, label %832

825:                                              ; preds = %821
  %826 = load i32, ptr %822, align 1, !tbaa !20
  %827 = load i32, ptr %823, align 1, !tbaa !20
  %828 = icmp eq i32 %826, %827
  br i1 %828, label %829, label %832

829:                                              ; preds = %825
  %830 = getelementptr inbounds i8, ptr %823, i64 4
  %831 = getelementptr inbounds i8, ptr %822, i64 4
  br label %832

832:                                              ; preds = %829, %825, %821
  %833 = phi ptr [ %831, %829 ], [ %822, %825 ], [ %822, %821 ]
  %834 = phi ptr [ %830, %829 ], [ %823, %825 ], [ %823, %821 ]
  %835 = icmp ult ptr %834, %639
  br i1 %835, label %836, label %843

836:                                              ; preds = %832
  %837 = load i16, ptr %833, align 1, !tbaa !35
  %838 = load i16, ptr %834, align 1, !tbaa !35
  %839 = icmp eq i16 %837, %838
  br i1 %839, label %840, label %843

840:                                              ; preds = %836
  %841 = getelementptr inbounds i8, ptr %834, i64 2
  %842 = getelementptr inbounds i8, ptr %833, i64 2
  br label %843

843:                                              ; preds = %840, %836, %832
  %844 = phi ptr [ %842, %840 ], [ %833, %836 ], [ %833, %832 ]
  %845 = phi ptr [ %841, %840 ], [ %834, %836 ], [ %834, %832 ]
  %846 = icmp ult ptr %845, %40
  br i1 %846, label %847, label %853

847:                                              ; preds = %843
  %848 = load i8, ptr %844, align 1, !tbaa !31
  %849 = load i8, ptr %845, align 1, !tbaa !31
  %850 = icmp eq i8 %848, %849
  %851 = zext i1 %850 to i64
  %852 = getelementptr inbounds i8, ptr %845, i64 %851
  br label %853

853:                                              ; preds = %847, %843
  %854 = phi ptr [ %845, %843 ], [ %852, %847 ]
  %855 = ptrtoint ptr %854 to i64
  %856 = ptrtoint ptr %792 to i64
  %857 = sub i64 %855, %856
  br label %858

858:                                              ; preds = %853, %814, %800
  %859 = phi i64 [ %857, %853 ], [ %802, %800 ], [ %820, %814 ]
  %860 = add i64 %859, %789
  %861 = ptrtoint ptr %791 to i64
  %862 = ptrtoint ptr %649 to i64
  %863 = sub i64 %861, %862
  %864 = getelementptr inbounds i8, ptr %649, i64 %863
  %865 = icmp ugt ptr %864, %640
  %866 = load ptr, ptr %641, align 8, !tbaa !37
  br i1 %865, label %890, label %867

867:                                              ; preds = %858
  %868 = load <2 x i64>, ptr %649, align 1, !tbaa !31
  store <2 x i64> %868, ptr %866, align 1, !tbaa !31
  %869 = icmp ugt i64 %863, 16
  br i1 %869, label %870, label %1007

870:                                              ; preds = %867
  %871 = load ptr, ptr %641, align 8, !tbaa !37
  %872 = getelementptr inbounds i8, ptr %871, i64 16
  %873 = getelementptr inbounds i8, ptr %649, i64 16
  %874 = add i64 %863, -16
  %875 = getelementptr inbounds i8, ptr %871, i64 %863
  %876 = load <2 x i64>, ptr %873, align 1, !tbaa !31
  store <2 x i64> %876, ptr %872, align 1, !tbaa !31
  %877 = icmp ult i64 %874, 17
  br i1 %877, label %1007, label %878

878:                                              ; preds = %870
  %879 = getelementptr inbounds i8, ptr %871, i64 32
  br label %880

880:                                              ; preds = %880, %878
  %881 = phi ptr [ %879, %878 ], [ %888, %880 ]
  %882 = phi ptr [ %873, %878 ], [ %886, %880 ]
  %883 = getelementptr inbounds i8, ptr %882, i64 16
  %884 = load <2 x i64>, ptr %883, align 1, !tbaa !31
  store <2 x i64> %884, ptr %881, align 1, !tbaa !31
  %885 = getelementptr inbounds i8, ptr %881, i64 16
  %886 = getelementptr inbounds i8, ptr %882, i64 32
  %887 = load <2 x i64>, ptr %886, align 1, !tbaa !31
  store <2 x i64> %887, ptr %885, align 1, !tbaa !31
  %888 = getelementptr inbounds i8, ptr %881, i64 32
  %889 = icmp ult ptr %888, %875
  br i1 %889, label %880, label %1011, !llvm.loop !39

890:                                              ; preds = %858
  %891 = ptrtoint ptr %864 to i64
  %892 = icmp ugt ptr %649, %640
  br i1 %892, label %910, label %893

893:                                              ; preds = %890
  %894 = sub i64 %642, %862
  %895 = getelementptr inbounds i8, ptr %866, i64 %894
  %896 = load <2 x i64>, ptr %649, align 1, !tbaa !31
  store <2 x i64> %896, ptr %866, align 1, !tbaa !31
  %897 = icmp ult i64 %894, 17
  br i1 %897, label %910, label %898

898:                                              ; preds = %893
  %899 = getelementptr inbounds i8, ptr %866, i64 16
  br label %900

900:                                              ; preds = %900, %898
  %901 = phi ptr [ %899, %898 ], [ %908, %900 ]
  %902 = phi ptr [ %649, %898 ], [ %906, %900 ]
  %903 = getelementptr inbounds i8, ptr %902, i64 16
  %904 = load <2 x i64>, ptr %903, align 1, !tbaa !31
  store <2 x i64> %904, ptr %901, align 1, !tbaa !31
  %905 = getelementptr inbounds i8, ptr %901, i64 16
  %906 = getelementptr inbounds i8, ptr %902, i64 32
  %907 = load <2 x i64>, ptr %906, align 1, !tbaa !31
  store <2 x i64> %907, ptr %905, align 1, !tbaa !31
  %908 = getelementptr inbounds i8, ptr %901, i64 32
  %909 = icmp ult ptr %908, %895
  br i1 %909, label %900, label %910, !llvm.loop !39

910:                                              ; preds = %900, %893, %890
  %911 = phi ptr [ %640, %893 ], [ %649, %890 ], [ %640, %900 ]
  %912 = phi ptr [ %895, %893 ], [ %866, %890 ], [ %895, %900 ]
  %913 = icmp ult ptr %911, %864
  br i1 %913, label %914, label %1011

914:                                              ; preds = %910
  %915 = ptrtoint ptr %912 to i64
  %916 = ptrtoint ptr %911 to i64
  %917 = sub i64 %891, %916
  %918 = getelementptr i8, ptr %911, i64 %917
  %919 = icmp ult i64 %917, 8
  %920 = sub i64 %915, %916
  %921 = icmp ult i64 %920, 32
  %922 = select i1 %919, i1 true, i1 %921
  br i1 %922, label %958, label %923

923:                                              ; preds = %914
  %924 = icmp ult i64 %917, 32
  br i1 %924, label %944, label %925

925:                                              ; preds = %923
  %926 = and i64 %917, -32
  br label %927

927:                                              ; preds = %927, %925
  %928 = phi i64 [ 0, %925 ], [ %935, %927 ]
  %929 = getelementptr i8, ptr %912, i64 %928
  %930 = getelementptr i8, ptr %911, i64 %928
  %931 = getelementptr i8, ptr %930, i64 16
  %932 = load <16 x i8>, ptr %930, align 1, !tbaa !31
  %933 = load <16 x i8>, ptr %931, align 1, !tbaa !31
  %934 = getelementptr i8, ptr %929, i64 16
  store <16 x i8> %932, ptr %929, align 1, !tbaa !31
  store <16 x i8> %933, ptr %934, align 1, !tbaa !31
  %935 = add nuw i64 %928, 32
  %936 = icmp eq i64 %935, %926
  br i1 %936, label %937, label %927, !llvm.loop !57

937:                                              ; preds = %927
  %938 = icmp eq i64 %917, %926
  br i1 %938, label %1011, label %939

939:                                              ; preds = %937
  %940 = getelementptr i8, ptr %911, i64 %926
  %941 = getelementptr i8, ptr %912, i64 %926
  %942 = and i64 %917, 24
  %943 = icmp eq i64 %942, 0
  br i1 %943, label %958, label %944

944:                                              ; preds = %923, %939
  %945 = phi i64 [ %926, %939 ], [ 0, %923 ]
  %946 = and i64 %917, -8
  %947 = getelementptr i8, ptr %912, i64 %946
  %948 = getelementptr i8, ptr %911, i64 %946
  br label %949

949:                                              ; preds = %949, %944
  %950 = phi i64 [ %945, %944 ], [ %954, %949 ]
  %951 = getelementptr i8, ptr %912, i64 %950
  %952 = getelementptr i8, ptr %911, i64 %950
  %953 = load <8 x i8>, ptr %952, align 1, !tbaa !31
  store <8 x i8> %953, ptr %951, align 1, !tbaa !31
  %954 = add nuw i64 %950, 8
  %955 = icmp eq i64 %954, %946
  br i1 %955, label %956, label %949, !llvm.loop !58

956:                                              ; preds = %949
  %957 = icmp eq i64 %917, %946
  br i1 %957, label %1011, label %958

958:                                              ; preds = %914, %939, %956
  %959 = phi ptr [ %912, %914 ], [ %941, %939 ], [ %947, %956 ]
  %960 = phi ptr [ %911, %914 ], [ %940, %939 ], [ %948, %956 ]
  %961 = ptrtoint ptr %960 to i64
  %962 = sub i64 %861, %961
  %963 = and i64 %962, 7
  %964 = icmp eq i64 %963, 0
  br i1 %964, label %974, label %965

965:                                              ; preds = %958, %965
  %966 = phi ptr [ %971, %965 ], [ %959, %958 ]
  %967 = phi ptr [ %969, %965 ], [ %960, %958 ]
  %968 = phi i64 [ %972, %965 ], [ 0, %958 ]
  %969 = getelementptr inbounds i8, ptr %967, i64 1
  %970 = load i8, ptr %967, align 1, !tbaa !31
  %971 = getelementptr inbounds i8, ptr %966, i64 1
  store i8 %970, ptr %966, align 1, !tbaa !31
  %972 = add i64 %968, 1
  %973 = icmp eq i64 %972, %963
  br i1 %973, label %974, label %965, !llvm.loop !59

974:                                              ; preds = %965, %958
  %975 = phi ptr [ %959, %958 ], [ %971, %965 ]
  %976 = phi ptr [ %960, %958 ], [ %969, %965 ]
  %977 = sub i64 %961, %861
  %978 = icmp ugt i64 %977, -8
  br i1 %978, label %1011, label %979

979:                                              ; preds = %974, %979
  %980 = phi ptr [ %1005, %979 ], [ %975, %974 ]
  %981 = phi ptr [ %1003, %979 ], [ %976, %974 ]
  %982 = getelementptr inbounds i8, ptr %981, i64 1
  %983 = load i8, ptr %981, align 1, !tbaa !31
  %984 = getelementptr inbounds i8, ptr %980, i64 1
  store i8 %983, ptr %980, align 1, !tbaa !31
  %985 = getelementptr inbounds i8, ptr %981, i64 2
  %986 = load i8, ptr %982, align 1, !tbaa !31
  %987 = getelementptr inbounds i8, ptr %980, i64 2
  store i8 %986, ptr %984, align 1, !tbaa !31
  %988 = getelementptr inbounds i8, ptr %981, i64 3
  %989 = load i8, ptr %985, align 1, !tbaa !31
  %990 = getelementptr inbounds i8, ptr %980, i64 3
  store i8 %989, ptr %987, align 1, !tbaa !31
  %991 = getelementptr inbounds i8, ptr %981, i64 4
  %992 = load i8, ptr %988, align 1, !tbaa !31
  %993 = getelementptr inbounds i8, ptr %980, i64 4
  store i8 %992, ptr %990, align 1, !tbaa !31
  %994 = getelementptr inbounds i8, ptr %981, i64 5
  %995 = load i8, ptr %991, align 1, !tbaa !31
  %996 = getelementptr inbounds i8, ptr %980, i64 5
  store i8 %995, ptr %993, align 1, !tbaa !31
  %997 = getelementptr inbounds i8, ptr %981, i64 6
  %998 = load i8, ptr %994, align 1, !tbaa !31
  %999 = getelementptr inbounds i8, ptr %980, i64 6
  store i8 %998, ptr %996, align 1, !tbaa !31
  %1000 = getelementptr inbounds i8, ptr %981, i64 7
  %1001 = load i8, ptr %997, align 1, !tbaa !31
  %1002 = getelementptr inbounds i8, ptr %980, i64 7
  store i8 %1001, ptr %999, align 1, !tbaa !31
  %1003 = getelementptr inbounds i8, ptr %981, i64 8
  %1004 = load i8, ptr %1000, align 1, !tbaa !31
  %1005 = getelementptr inbounds i8, ptr %980, i64 8
  store i8 %1004, ptr %1002, align 1, !tbaa !31
  %1006 = icmp eq ptr %1003, %918
  br i1 %1006, label %1011, label %979, !llvm.loop !60

1007:                                             ; preds = %870, %867
  %1008 = load ptr, ptr %641, align 8, !tbaa !37
  %1009 = getelementptr inbounds i8, ptr %1008, i64 %863
  store ptr %1009, ptr %641, align 8, !tbaa !37
  %1010 = load ptr, ptr %644, align 8, !tbaa !47
  br label %1023

1011:                                             ; preds = %880, %974, %979, %937, %956, %910
  %1012 = load ptr, ptr %641, align 8, !tbaa !37
  %1013 = getelementptr inbounds i8, ptr %1012, i64 %863
  store ptr %1013, ptr %641, align 8, !tbaa !37
  %1014 = icmp ugt i64 %863, 65535
  %1015 = load ptr, ptr %644, align 8, !tbaa !47
  br i1 %1014, label %1016, label %1023, !prof !48

1016:                                             ; preds = %1011
  store i32 1, ptr %643, align 8, !tbaa !49
  %1017 = load ptr, ptr %1, align 8, !tbaa !50
  %1018 = ptrtoint ptr %1015 to i64
  %1019 = ptrtoint ptr %1017 to i64
  %1020 = sub i64 %1018, %1019
  %1021 = lshr exact i64 %1020, 3
  %1022 = trunc i64 %1021 to i32
  store i32 %1022, ptr %645, align 4, !tbaa !51
  br label %1023

1023:                                             ; preds = %1016, %1011, %1007
  %1024 = phi ptr [ %1010, %1007 ], [ %1015, %1016 ], [ %1015, %1011 ]
  %1025 = trunc i64 %863 to i16
  %1026 = getelementptr inbounds %struct.SeqDef_s, ptr %1024, i64 0, i32 1
  store i16 %1025, ptr %1026, align 4, !tbaa !52
  store i32 %787, ptr %1024, align 4, !tbaa !54
  %1027 = add i64 %860, -3
  %1028 = icmp ugt i64 %1027, 65535
  br i1 %1028, label %1029, label %1036, !prof !55

1029:                                             ; preds = %1023
  store i32 2, ptr %643, align 8, !tbaa !49
  %1030 = load ptr, ptr %1, align 8, !tbaa !50
  %1031 = ptrtoint ptr %1024 to i64
  %1032 = ptrtoint ptr %1030 to i64
  %1033 = sub i64 %1031, %1032
  %1034 = lshr exact i64 %1033, 3
  %1035 = trunc i64 %1034 to i32
  store i32 %1035, ptr %645, align 4, !tbaa !51
  br label %1036

1036:                                             ; preds = %1029, %1023
  %1037 = trunc i64 %1027 to i16
  %1038 = getelementptr inbounds %struct.SeqDef_s, ptr %1024, i64 0, i32 2
  store i16 %1037, ptr %1038, align 2, !tbaa !56
  %1039 = getelementptr inbounds %struct.SeqDef_s, ptr %1024, i64 1
  store ptr %1039, ptr %644, align 8, !tbaa !47
  %1040 = getelementptr inbounds i8, ptr %791, i64 %860
  %1041 = icmp ugt ptr %1040, %41
  br i1 %1041, label %1170, label %1042

1042:                                             ; preds = %1036
  %1043 = add i32 %785, 2
  %1044 = zext i32 %785 to i64
  %1045 = getelementptr inbounds i8, ptr %61, i64 %1044
  %1046 = load i64, ptr %1045, align 1, !tbaa !19
  %1047 = mul i64 %1046, -3523014627271114752
  %1048 = lshr i64 %1047, %636
  %1049 = getelementptr inbounds i32, ptr %12, i64 %1048
  store i32 %1043, ptr %1049, align 4, !tbaa !20
  %1050 = getelementptr inbounds i8, ptr %1040, i64 -2
  %1051 = ptrtoint ptr %1050 to i64
  %1052 = sub i64 %1051, %23
  %1053 = trunc i64 %1052 to i32
  %1054 = load i64, ptr %1050, align 1, !tbaa !19
  %1055 = mul i64 %1054, -3523014627271114752
  %1056 = lshr i64 %1055, %636
  %1057 = getelementptr inbounds i32, ptr %12, i64 %1056
  store i32 %1053, ptr %1057, align 4, !tbaa !20
  %1058 = icmp eq i32 %786, 0
  br i1 %1058, label %1170, label %1059

1059:                                             ; preds = %1042, %1165
  %1060 = phi ptr [ %1168, %1165 ], [ %1039, %1042 ]
  %1061 = phi ptr [ %1147, %1165 ], [ %1040, %1042 ]
  %1062 = phi i32 [ %1063, %1165 ], [ %790, %1042 ]
  %1063 = phi i32 [ %1062, %1165 ], [ %786, %1042 ]
  %1064 = load i32, ptr %1061, align 1, !tbaa !20
  %1065 = zext i32 %1063 to i64
  %1066 = sub nsw i64 0, %1065
  %1067 = getelementptr inbounds i8, ptr %1061, i64 %1066
  %1068 = load i32, ptr %1067, align 1, !tbaa !20
  %1069 = icmp eq i32 %1064, %1068
  br i1 %1069, label %1070, label %1170

1070:                                             ; preds = %1059
  %1071 = getelementptr inbounds i8, ptr %1061, i64 4
  %1072 = getelementptr inbounds i8, ptr %1071, i64 %1066
  %1073 = icmp ugt ptr %637, %1071
  br i1 %1073, label %1074, label %1100

1074:                                             ; preds = %1070
  %1075 = load i64, ptr %1072, align 1, !tbaa !19
  %1076 = load i64, ptr %1071, align 1, !tbaa !19
  %1077 = xor i64 %1076, %1075
  %1078 = icmp eq i64 %1077, 0
  br i1 %1078, label %1082, label %1079

1079:                                             ; preds = %1074
  %1080 = tail call i64 @llvm.cttz.i64(i64 %1077, i1 true), !range !34
  %1081 = lshr i64 %1080, 3
  br label %1137

1082:                                             ; preds = %1074, %1088
  %1083 = phi ptr [ %1086, %1088 ], [ %1072, %1074 ]
  %1084 = phi ptr [ %1085, %1088 ], [ %1071, %1074 ]
  %1085 = getelementptr inbounds i8, ptr %1084, i64 8
  %1086 = getelementptr inbounds i8, ptr %1083, i64 8
  %1087 = icmp ult ptr %1085, %637
  br i1 %1087, label %1088, label %1100

1088:                                             ; preds = %1082
  %1089 = load i64, ptr %1086, align 1, !tbaa !19
  %1090 = load i64, ptr %1085, align 1, !tbaa !19
  %1091 = xor i64 %1090, %1089
  %1092 = icmp eq i64 %1091, 0
  br i1 %1092, label %1082, label %1093

1093:                                             ; preds = %1088
  %1094 = tail call i64 @llvm.cttz.i64(i64 %1091, i1 true), !range !34
  %1095 = lshr i64 %1094, 3
  %1096 = getelementptr inbounds i8, ptr %1085, i64 %1095
  %1097 = ptrtoint ptr %1096 to i64
  %1098 = ptrtoint ptr %1071 to i64
  %1099 = sub i64 %1097, %1098
  br label %1137

1100:                                             ; preds = %1082, %1070
  %1101 = phi ptr [ %1072, %1070 ], [ %1086, %1082 ]
  %1102 = phi ptr [ %1071, %1070 ], [ %1085, %1082 ]
  %1103 = icmp ult ptr %1102, %638
  br i1 %1103, label %1104, label %1111

1104:                                             ; preds = %1100
  %1105 = load i32, ptr %1101, align 1, !tbaa !20
  %1106 = load i32, ptr %1102, align 1, !tbaa !20
  %1107 = icmp eq i32 %1105, %1106
  br i1 %1107, label %1108, label %1111

1108:                                             ; preds = %1104
  %1109 = getelementptr inbounds i8, ptr %1102, i64 4
  %1110 = getelementptr inbounds i8, ptr %1101, i64 4
  br label %1111

1111:                                             ; preds = %1108, %1104, %1100
  %1112 = phi ptr [ %1110, %1108 ], [ %1101, %1104 ], [ %1101, %1100 ]
  %1113 = phi ptr [ %1109, %1108 ], [ %1102, %1104 ], [ %1102, %1100 ]
  %1114 = icmp ult ptr %1113, %639
  br i1 %1114, label %1115, label %1122

1115:                                             ; preds = %1111
  %1116 = load i16, ptr %1112, align 1, !tbaa !35
  %1117 = load i16, ptr %1113, align 1, !tbaa !35
  %1118 = icmp eq i16 %1116, %1117
  br i1 %1118, label %1119, label %1122

1119:                                             ; preds = %1115
  %1120 = getelementptr inbounds i8, ptr %1113, i64 2
  %1121 = getelementptr inbounds i8, ptr %1112, i64 2
  br label %1122

1122:                                             ; preds = %1119, %1115, %1111
  %1123 = phi ptr [ %1121, %1119 ], [ %1112, %1115 ], [ %1112, %1111 ]
  %1124 = phi ptr [ %1120, %1119 ], [ %1113, %1115 ], [ %1113, %1111 ]
  %1125 = icmp ult ptr %1124, %40
  br i1 %1125, label %1126, label %1132

1126:                                             ; preds = %1122
  %1127 = load i8, ptr %1123, align 1, !tbaa !31
  %1128 = load i8, ptr %1124, align 1, !tbaa !31
  %1129 = icmp eq i8 %1127, %1128
  %1130 = zext i1 %1129 to i64
  %1131 = getelementptr inbounds i8, ptr %1124, i64 %1130
  br label %1132

1132:                                             ; preds = %1126, %1122
  %1133 = phi ptr [ %1124, %1122 ], [ %1131, %1126 ]
  %1134 = ptrtoint ptr %1133 to i64
  %1135 = ptrtoint ptr %1071 to i64
  %1136 = sub i64 %1134, %1135
  br label %1137

1137:                                             ; preds = %1132, %1093, %1079
  %1138 = phi i64 [ %1136, %1132 ], [ %1081, %1079 ], [ %1099, %1093 ]
  %1139 = add i64 %1138, 4
  %1140 = ptrtoint ptr %1061 to i64
  %1141 = sub i64 %1140, %23
  %1142 = trunc i64 %1141 to i32
  %1143 = load i64, ptr %1061, align 1, !tbaa !19
  %1144 = mul i64 %1143, -3523014627271114752
  %1145 = lshr i64 %1144, %636
  %1146 = getelementptr inbounds i32, ptr %12, i64 %1145
  store i32 %1142, ptr %1146, align 4, !tbaa !20
  %1147 = getelementptr inbounds i8, ptr %1061, i64 %1139
  %1148 = icmp ugt ptr %1061, %640
  br i1 %1148, label %1153, label %1149

1149:                                             ; preds = %1137
  %1150 = load ptr, ptr %641, align 8, !tbaa !37
  %1151 = load <2 x i64>, ptr %1061, align 1, !tbaa !31
  store <2 x i64> %1151, ptr %1150, align 1, !tbaa !31
  %1152 = load ptr, ptr %644, align 8, !tbaa !47
  br label %1153

1153:                                             ; preds = %1149, %1137
  %1154 = phi ptr [ %1060, %1137 ], [ %1152, %1149 ]
  %1155 = getelementptr inbounds %struct.SeqDef_s, ptr %1154, i64 0, i32 1
  store i16 0, ptr %1155, align 4, !tbaa !52
  store i32 1, ptr %1154, align 4, !tbaa !54
  %1156 = add i64 %1138, 1
  %1157 = icmp ugt i64 %1156, 65535
  br i1 %1157, label %1158, label %1165, !prof !55

1158:                                             ; preds = %1153
  store i32 2, ptr %643, align 8, !tbaa !49
  %1159 = load ptr, ptr %1, align 8, !tbaa !50
  %1160 = ptrtoint ptr %1154 to i64
  %1161 = ptrtoint ptr %1159 to i64
  %1162 = sub i64 %1160, %1161
  %1163 = lshr exact i64 %1162, 3
  %1164 = trunc i64 %1163 to i32
  store i32 %1164, ptr %645, align 4, !tbaa !51
  br label %1165

1165:                                             ; preds = %1158, %1153
  %1166 = trunc i64 %1156 to i16
  %1167 = getelementptr inbounds %struct.SeqDef_s, ptr %1154, i64 0, i32 2
  store i16 %1166, ptr %1167, align 2, !tbaa !56
  %1168 = getelementptr inbounds %struct.SeqDef_s, ptr %1154, i64 1
  store ptr %1168, ptr %644, align 8, !tbaa !47
  %1169 = icmp ugt ptr %1147, %41
  br i1 %1169, label %1170, label %1059

1170:                                             ; preds = %1165, %1059, %1042, %1036
  %1171 = phi i32 [ 0, %1042 ], [ %786, %1036 ], [ %1063, %1059 ], [ %1062, %1165 ]
  %1172 = phi i32 [ %790, %1042 ], [ %790, %1036 ], [ %1062, %1059 ], [ %1063, %1165 ]
  %1173 = phi ptr [ %1040, %1042 ], [ %1040, %1036 ], [ %1061, %1059 ], [ %1147, %1165 ]
  %1174 = getelementptr inbounds i8, ptr %1173, i64 %19
  %1175 = getelementptr inbounds i8, ptr %1174, i64 1
  %1176 = icmp ult ptr %1175, %41
  br i1 %1176, label %646, label %1177

1177:                                             ; preds = %1170, %740, %631
  %1178 = phi i32 [ %58, %631 ], [ %652, %740 ], [ %1171, %1170 ]
  %1179 = phi i32 [ %60, %631 ], [ %651, %740 ], [ %1172, %1170 ]
  %1180 = phi ptr [ %3, %631 ], [ %649, %740 ], [ %1173, %1170 ]
  %1181 = select i1 %59, i32 %42, i32 0
  %1182 = select i1 %57, i32 %44, i32 0
  %1183 = icmp ne i32 %1181, 0
  %1184 = icmp ne i32 %1179, 0
  %1185 = select i1 %1183, i1 %1184, i1 false
  %1186 = select i1 %1185, i32 %1181, i32 %1182
  %1187 = select i1 %1184, i32 %1179, i32 %1181
  store i32 %1187, ptr %2, align 4, !tbaa !20
  %1188 = icmp eq i32 %1178, 0
  %1189 = select i1 %1188, i32 %1186, i32 %1178
  br label %4874

1190:                                             ; preds = %65
  br i1 %64, label %1191, label %1736

1191:                                             ; preds = %1190
  %1192 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 2
  %1193 = load i32, ptr %1192, align 4, !tbaa !18
  %1194 = sub i32 64, %1193
  %1195 = zext nneg i32 %1194 to i64
  %1196 = getelementptr inbounds i8, ptr %40, i64 -7
  %1197 = getelementptr inbounds i8, ptr %40, i64 -3
  %1198 = getelementptr inbounds i8, ptr %40, i64 -1
  %1199 = getelementptr inbounds i8, ptr %40, i64 -32
  %1200 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %1201 = ptrtoint ptr %1199 to i64
  %1202 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %1203 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %1204 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  br label %1205

1205:                                             ; preds = %1729, %1191
  %1206 = phi ptr [ %63, %1191 ], [ %1734, %1729 ]
  %1207 = phi ptr [ %62, %1191 ], [ %1733, %1729 ]
  %1208 = phi ptr [ %3, %1191 ], [ %1732, %1729 ]
  %1209 = phi ptr [ %47, %1191 ], [ %1732, %1729 ]
  %1210 = phi i32 [ %60, %1191 ], [ %1731, %1729 ]
  %1211 = phi i32 [ %58, %1191 ], [ %1730, %1729 ]
  %1212 = getelementptr inbounds i8, ptr %1209, i64 1
  %1213 = getelementptr inbounds i8, ptr %1209, i64 128
  %1214 = load i64, ptr %1209, align 1, !tbaa !19
  %1215 = mul i64 %1214, -3523014627193847808
  %1216 = lshr i64 %1215, %1195
  %1217 = load i64, ptr %1212, align 1, !tbaa !19
  %1218 = getelementptr inbounds i32, ptr %12, i64 %1216
  %1219 = load i32, ptr %1218, align 4, !tbaa !20
  %1220 = zext i32 %1210 to i64
  %1221 = sub nsw i64 0, %1220
  %1222 = icmp ne i32 %1210, 0
  br label %1223

1223:                                             ; preds = %1299, %1205
  %1224 = phi i64 [ %1216, %1205 ], [ %1258, %1299 ]
  %1225 = phi i64 [ %1217, %1205 ], [ %1275, %1299 ]
  %1226 = phi i32 [ %1219, %1205 ], [ %1274, %1299 ]
  %1227 = phi i64 [ %19, %1205 ], [ %1300, %1299 ]
  %1228 = phi ptr [ %1213, %1205 ], [ %1301, %1299 ]
  %1229 = phi ptr [ %1206, %1205 ], [ %1277, %1299 ]
  %1230 = phi ptr [ %1207, %1205 ], [ %1276, %1299 ]
  %1231 = phi ptr [ %1212, %1205 ], [ %1229, %1299 ]
  %1232 = phi ptr [ %1209, %1205 ], [ %1230, %1299 ]
  %1233 = mul i64 %1225, -3523014627193847808
  %1234 = lshr i64 %1233, %1195
  %1235 = getelementptr inbounds i8, ptr %1230, i64 %1221
  %1236 = load i32, ptr %1235, align 1, !tbaa !20
  %1237 = ptrtoint ptr %1232 to i64
  %1238 = sub i64 %1237, %23
  %1239 = trunc i64 %1238 to i32
  %1240 = getelementptr inbounds i32, ptr %12, i64 %1224
  store i32 %1239, ptr %1240, align 4, !tbaa !20
  %1241 = load i32, ptr %1230, align 1, !tbaa !20
  %1242 = icmp eq i32 %1241, %1236
  %1243 = and i1 %1222, %1242
  br i1 %1243, label %1284, label %1244

1244:                                             ; preds = %1223
  %1245 = zext i32 %1226 to i64
  %1246 = getelementptr inbounds i8, ptr %21, i64 %1245
  %1247 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1226, i32 %37, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr %1246) #7, !srcloc !29
  %1248 = load i32, ptr %1232, align 1, !tbaa !20
  %1249 = load i32, ptr %1247, align 1, !tbaa !20
  %1250 = icmp eq i32 %1248, %1249
  br i1 %1250, label %1251, label %1253

1251:                                             ; preds = %1244
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !30
  %1252 = icmp ult i32 %1226, %37
  br i1 %1252, label %1253, label %1303

1253:                                             ; preds = %1251, %1244
  %1254 = getelementptr inbounds i32, ptr %12, i64 %1234
  %1255 = load i32, ptr %1254, align 4, !tbaa !20
  %1256 = load i64, ptr %1230, align 1, !tbaa !19
  %1257 = mul i64 %1256, -3523014627193847808
  %1258 = lshr i64 %1257, %1195
  %1259 = ptrtoint ptr %1231 to i64
  %1260 = sub i64 %1259, %23
  %1261 = trunc i64 %1260 to i32
  store i32 %1261, ptr %1254, align 4, !tbaa !20
  %1262 = zext i32 %1255 to i64
  %1263 = getelementptr inbounds i8, ptr %21, i64 %1262
  %1264 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1255, i32 %37, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr %1263) #7, !srcloc !29
  %1265 = load i32, ptr %1231, align 1, !tbaa !20
  %1266 = load i32, ptr %1264, align 1, !tbaa !20
  %1267 = icmp eq i32 %1265, %1266
  br i1 %1267, label %1268, label %1272

1268:                                             ; preds = %1253
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !30
  %1269 = icmp ult i32 %1255, %37
  br i1 %1269, label %1272, label %1270

1270:                                             ; preds = %1268
  %1271 = icmp ult i64 %1227, 5
  br i1 %1271, label %1303, label %1315

1272:                                             ; preds = %1268, %1253
  %1273 = getelementptr inbounds i32, ptr %12, i64 %1258
  %1274 = load i32, ptr %1273, align 4, !tbaa !20
  %1275 = load i64, ptr %1229, align 1, !tbaa !19
  %1276 = getelementptr inbounds i8, ptr %1230, i64 %1227
  %1277 = getelementptr inbounds i8, ptr %1229, i64 %1227
  %1278 = icmp ult ptr %1276, %1228
  br i1 %1278, label %1299, label %1279

1279:                                             ; preds = %1272
  %1280 = add i64 %1227, 1
  %1281 = getelementptr inbounds i8, ptr %1229, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1281, i32 0, i32 3, i32 1)
  %1282 = getelementptr inbounds i8, ptr %1229, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %1282, i32 0, i32 3, i32 1)
  %1283 = getelementptr inbounds i8, ptr %1228, i64 128
  br label %1299

1284:                                             ; preds = %1223
  %1285 = getelementptr inbounds i8, ptr %1230, i64 %1221
  %1286 = getelementptr inbounds i8, ptr %1230, i64 -1
  %1287 = load i8, ptr %1286, align 1, !tbaa !31
  %1288 = getelementptr inbounds i8, ptr %1285, i64 -1
  %1289 = load i8, ptr %1288, align 1, !tbaa !31
  %1290 = icmp eq i8 %1287, %1289
  %1291 = sext i1 %1290 to i64
  %1292 = getelementptr inbounds i8, ptr %1230, i64 %1291
  %1293 = getelementptr inbounds i8, ptr %1285, i64 %1291
  %1294 = select i1 %1290, i64 5, i64 4
  %1295 = ptrtoint ptr %1231 to i64
  %1296 = sub i64 %1295, %23
  %1297 = trunc i64 %1296 to i32
  %1298 = getelementptr inbounds i32, ptr %12, i64 %1234
  store i32 %1297, ptr %1298, align 4, !tbaa !20
  br label %1343

1299:                                             ; preds = %1279, %1272
  %1300 = phi i64 [ %1227, %1272 ], [ %1280, %1279 ]
  %1301 = phi ptr [ %1228, %1272 ], [ %1283, %1279 ]
  %1302 = icmp ult ptr %1277, %41
  br i1 %1302, label %1223, label %1736, !llvm.loop !32

1303:                                             ; preds = %1251, %1270
  %1304 = phi ptr [ %1230, %1270 ], [ %1231, %1251 ]
  %1305 = phi i64 [ %1258, %1270 ], [ %1234, %1251 ]
  %1306 = phi i64 [ %1259, %1270 ], [ %1237, %1251 ]
  %1307 = phi i64 [ %1262, %1270 ], [ %1245, %1251 ]
  %1308 = phi i32 [ %1255, %1270 ], [ %1226, %1251 ]
  %1309 = phi i32 [ %1261, %1270 ], [ %1239, %1251 ]
  %1310 = phi ptr [ %1231, %1270 ], [ %1232, %1251 ]
  %1311 = ptrtoint ptr %1304 to i64
  %1312 = sub i64 %1311, %23
  %1313 = trunc i64 %1312 to i32
  %1314 = getelementptr inbounds i32, ptr %12, i64 %1305
  store i32 %1313, ptr %1314, align 4, !tbaa !20
  br label %1315

1315:                                             ; preds = %1303, %1270
  %1316 = phi i64 [ %1259, %1270 ], [ %1306, %1303 ]
  %1317 = phi i64 [ %1262, %1270 ], [ %1307, %1303 ]
  %1318 = phi i32 [ %1255, %1270 ], [ %1308, %1303 ]
  %1319 = phi i32 [ %1261, %1270 ], [ %1309, %1303 ]
  %1320 = phi ptr [ %1231, %1270 ], [ %1310, %1303 ]
  %1321 = getelementptr inbounds i8, ptr %21, i64 %1317
  %1322 = ptrtoint ptr %1321 to i64
  %1323 = sub i64 %1316, %1322
  %1324 = trunc i64 %1323 to i32
  %1325 = add i32 %1324, 3
  %1326 = icmp ugt ptr %1320, %1208
  %1327 = icmp ugt i32 %1318, %37
  %1328 = and i1 %1327, %1326
  br i1 %1328, label %1329, label %1343

1329:                                             ; preds = %1315, %1338
  %1330 = phi ptr [ %1333, %1338 ], [ %1320, %1315 ]
  %1331 = phi i64 [ %1339, %1338 ], [ 4, %1315 ]
  %1332 = phi ptr [ %1335, %1338 ], [ %1321, %1315 ]
  %1333 = getelementptr inbounds i8, ptr %1330, i64 -1
  %1334 = load i8, ptr %1333, align 1, !tbaa !31
  %1335 = getelementptr inbounds i8, ptr %1332, i64 -1
  %1336 = load i8, ptr %1335, align 1, !tbaa !31
  %1337 = icmp eq i8 %1334, %1336
  br i1 %1337, label %1338, label %1343

1338:                                             ; preds = %1329
  %1339 = add i64 %1331, 1
  %1340 = icmp ugt ptr %1333, %1208
  %1341 = icmp ugt ptr %1335, %39
  %1342 = and i1 %1340, %1341
  br i1 %1342, label %1329, label %1343, !llvm.loop !33

1343:                                             ; preds = %1338, %1329, %1315, %1284
  %1344 = phi i32 [ %1239, %1284 ], [ %1319, %1315 ], [ %1319, %1329 ], [ %1319, %1338 ]
  %1345 = phi i32 [ %1211, %1284 ], [ %1210, %1315 ], [ %1210, %1329 ], [ %1210, %1338 ]
  %1346 = phi i32 [ 1, %1284 ], [ %1325, %1315 ], [ %1325, %1329 ], [ %1325, %1338 ]
  %1347 = phi ptr [ %1293, %1284 ], [ %1321, %1315 ], [ %1335, %1338 ], [ %1332, %1329 ]
  %1348 = phi i64 [ %1294, %1284 ], [ 4, %1315 ], [ %1339, %1338 ], [ %1331, %1329 ]
  %1349 = phi i32 [ %1210, %1284 ], [ %1324, %1315 ], [ %1324, %1329 ], [ %1324, %1338 ]
  %1350 = phi ptr [ %1292, %1284 ], [ %1320, %1315 ], [ %1333, %1338 ], [ %1330, %1329 ]
  %1351 = getelementptr inbounds i8, ptr %1350, i64 %1348
  %1352 = getelementptr inbounds i8, ptr %1347, i64 %1348
  %1353 = icmp ugt ptr %1196, %1351
  br i1 %1353, label %1354, label %1380

1354:                                             ; preds = %1343
  %1355 = load i64, ptr %1352, align 1, !tbaa !19
  %1356 = load i64, ptr %1351, align 1, !tbaa !19
  %1357 = xor i64 %1356, %1355
  %1358 = icmp eq i64 %1357, 0
  br i1 %1358, label %1362, label %1359

1359:                                             ; preds = %1354
  %1360 = tail call i64 @llvm.cttz.i64(i64 %1357, i1 true), !range !34
  %1361 = lshr i64 %1360, 3
  br label %1417

1362:                                             ; preds = %1354, %1368
  %1363 = phi ptr [ %1366, %1368 ], [ %1352, %1354 ]
  %1364 = phi ptr [ %1365, %1368 ], [ %1351, %1354 ]
  %1365 = getelementptr inbounds i8, ptr %1364, i64 8
  %1366 = getelementptr inbounds i8, ptr %1363, i64 8
  %1367 = icmp ult ptr %1365, %1196
  br i1 %1367, label %1368, label %1380

1368:                                             ; preds = %1362
  %1369 = load i64, ptr %1366, align 1, !tbaa !19
  %1370 = load i64, ptr %1365, align 1, !tbaa !19
  %1371 = xor i64 %1370, %1369
  %1372 = icmp eq i64 %1371, 0
  br i1 %1372, label %1362, label %1373

1373:                                             ; preds = %1368
  %1374 = tail call i64 @llvm.cttz.i64(i64 %1371, i1 true), !range !34
  %1375 = lshr i64 %1374, 3
  %1376 = getelementptr inbounds i8, ptr %1365, i64 %1375
  %1377 = ptrtoint ptr %1376 to i64
  %1378 = ptrtoint ptr %1351 to i64
  %1379 = sub i64 %1377, %1378
  br label %1417

1380:                                             ; preds = %1362, %1343
  %1381 = phi ptr [ %1352, %1343 ], [ %1366, %1362 ]
  %1382 = phi ptr [ %1351, %1343 ], [ %1365, %1362 ]
  %1383 = icmp ult ptr %1382, %1197
  br i1 %1383, label %1384, label %1391

1384:                                             ; preds = %1380
  %1385 = load i32, ptr %1381, align 1, !tbaa !20
  %1386 = load i32, ptr %1382, align 1, !tbaa !20
  %1387 = icmp eq i32 %1385, %1386
  br i1 %1387, label %1388, label %1391

1388:                                             ; preds = %1384
  %1389 = getelementptr inbounds i8, ptr %1382, i64 4
  %1390 = getelementptr inbounds i8, ptr %1381, i64 4
  br label %1391

1391:                                             ; preds = %1388, %1384, %1380
  %1392 = phi ptr [ %1390, %1388 ], [ %1381, %1384 ], [ %1381, %1380 ]
  %1393 = phi ptr [ %1389, %1388 ], [ %1382, %1384 ], [ %1382, %1380 ]
  %1394 = icmp ult ptr %1393, %1198
  br i1 %1394, label %1395, label %1402

1395:                                             ; preds = %1391
  %1396 = load i16, ptr %1392, align 1, !tbaa !35
  %1397 = load i16, ptr %1393, align 1, !tbaa !35
  %1398 = icmp eq i16 %1396, %1397
  br i1 %1398, label %1399, label %1402

1399:                                             ; preds = %1395
  %1400 = getelementptr inbounds i8, ptr %1393, i64 2
  %1401 = getelementptr inbounds i8, ptr %1392, i64 2
  br label %1402

1402:                                             ; preds = %1399, %1395, %1391
  %1403 = phi ptr [ %1401, %1399 ], [ %1392, %1395 ], [ %1392, %1391 ]
  %1404 = phi ptr [ %1400, %1399 ], [ %1393, %1395 ], [ %1393, %1391 ]
  %1405 = icmp ult ptr %1404, %40
  br i1 %1405, label %1406, label %1412

1406:                                             ; preds = %1402
  %1407 = load i8, ptr %1403, align 1, !tbaa !31
  %1408 = load i8, ptr %1404, align 1, !tbaa !31
  %1409 = icmp eq i8 %1407, %1408
  %1410 = zext i1 %1409 to i64
  %1411 = getelementptr inbounds i8, ptr %1404, i64 %1410
  br label %1412

1412:                                             ; preds = %1406, %1402
  %1413 = phi ptr [ %1404, %1402 ], [ %1411, %1406 ]
  %1414 = ptrtoint ptr %1413 to i64
  %1415 = ptrtoint ptr %1351 to i64
  %1416 = sub i64 %1414, %1415
  br label %1417

1417:                                             ; preds = %1412, %1373, %1359
  %1418 = phi i64 [ %1416, %1412 ], [ %1361, %1359 ], [ %1379, %1373 ]
  %1419 = add i64 %1418, %1348
  %1420 = ptrtoint ptr %1350 to i64
  %1421 = ptrtoint ptr %1208 to i64
  %1422 = sub i64 %1420, %1421
  %1423 = getelementptr inbounds i8, ptr %1208, i64 %1422
  %1424 = icmp ugt ptr %1423, %1199
  %1425 = load ptr, ptr %1200, align 8, !tbaa !37
  br i1 %1424, label %1449, label %1426

1426:                                             ; preds = %1417
  %1427 = load <2 x i64>, ptr %1208, align 1, !tbaa !31
  store <2 x i64> %1427, ptr %1425, align 1, !tbaa !31
  %1428 = icmp ugt i64 %1422, 16
  br i1 %1428, label %1429, label %1566

1429:                                             ; preds = %1426
  %1430 = load ptr, ptr %1200, align 8, !tbaa !37
  %1431 = getelementptr inbounds i8, ptr %1430, i64 16
  %1432 = getelementptr inbounds i8, ptr %1208, i64 16
  %1433 = add i64 %1422, -16
  %1434 = getelementptr inbounds i8, ptr %1430, i64 %1422
  %1435 = load <2 x i64>, ptr %1432, align 1, !tbaa !31
  store <2 x i64> %1435, ptr %1431, align 1, !tbaa !31
  %1436 = icmp ult i64 %1433, 17
  br i1 %1436, label %1566, label %1437

1437:                                             ; preds = %1429
  %1438 = getelementptr inbounds i8, ptr %1430, i64 32
  br label %1439

1439:                                             ; preds = %1439, %1437
  %1440 = phi ptr [ %1438, %1437 ], [ %1447, %1439 ]
  %1441 = phi ptr [ %1432, %1437 ], [ %1445, %1439 ]
  %1442 = getelementptr inbounds i8, ptr %1441, i64 16
  %1443 = load <2 x i64>, ptr %1442, align 1, !tbaa !31
  store <2 x i64> %1443, ptr %1440, align 1, !tbaa !31
  %1444 = getelementptr inbounds i8, ptr %1440, i64 16
  %1445 = getelementptr inbounds i8, ptr %1441, i64 32
  %1446 = load <2 x i64>, ptr %1445, align 1, !tbaa !31
  store <2 x i64> %1446, ptr %1444, align 1, !tbaa !31
  %1447 = getelementptr inbounds i8, ptr %1440, i64 32
  %1448 = icmp ult ptr %1447, %1434
  br i1 %1448, label %1439, label %1570, !llvm.loop !39

1449:                                             ; preds = %1417
  %1450 = ptrtoint ptr %1423 to i64
  %1451 = icmp ugt ptr %1208, %1199
  br i1 %1451, label %1469, label %1452

1452:                                             ; preds = %1449
  %1453 = sub i64 %1201, %1421
  %1454 = getelementptr inbounds i8, ptr %1425, i64 %1453
  %1455 = load <2 x i64>, ptr %1208, align 1, !tbaa !31
  store <2 x i64> %1455, ptr %1425, align 1, !tbaa !31
  %1456 = icmp ult i64 %1453, 17
  br i1 %1456, label %1469, label %1457

1457:                                             ; preds = %1452
  %1458 = getelementptr inbounds i8, ptr %1425, i64 16
  br label %1459

1459:                                             ; preds = %1459, %1457
  %1460 = phi ptr [ %1458, %1457 ], [ %1467, %1459 ]
  %1461 = phi ptr [ %1208, %1457 ], [ %1465, %1459 ]
  %1462 = getelementptr inbounds i8, ptr %1461, i64 16
  %1463 = load <2 x i64>, ptr %1462, align 1, !tbaa !31
  store <2 x i64> %1463, ptr %1460, align 1, !tbaa !31
  %1464 = getelementptr inbounds i8, ptr %1460, i64 16
  %1465 = getelementptr inbounds i8, ptr %1461, i64 32
  %1466 = load <2 x i64>, ptr %1465, align 1, !tbaa !31
  store <2 x i64> %1466, ptr %1464, align 1, !tbaa !31
  %1467 = getelementptr inbounds i8, ptr %1460, i64 32
  %1468 = icmp ult ptr %1467, %1454
  br i1 %1468, label %1459, label %1469, !llvm.loop !39

1469:                                             ; preds = %1459, %1452, %1449
  %1470 = phi ptr [ %1199, %1452 ], [ %1208, %1449 ], [ %1199, %1459 ]
  %1471 = phi ptr [ %1454, %1452 ], [ %1425, %1449 ], [ %1454, %1459 ]
  %1472 = icmp ult ptr %1470, %1423
  br i1 %1472, label %1473, label %1570

1473:                                             ; preds = %1469
  %1474 = ptrtoint ptr %1471 to i64
  %1475 = ptrtoint ptr %1470 to i64
  %1476 = sub i64 %1450, %1475
  %1477 = getelementptr i8, ptr %1470, i64 %1476
  %1478 = icmp ult i64 %1476, 8
  %1479 = sub i64 %1474, %1475
  %1480 = icmp ult i64 %1479, 32
  %1481 = select i1 %1478, i1 true, i1 %1480
  br i1 %1481, label %1517, label %1482

1482:                                             ; preds = %1473
  %1483 = icmp ult i64 %1476, 32
  br i1 %1483, label %1503, label %1484

1484:                                             ; preds = %1482
  %1485 = and i64 %1476, -32
  br label %1486

1486:                                             ; preds = %1486, %1484
  %1487 = phi i64 [ 0, %1484 ], [ %1494, %1486 ]
  %1488 = getelementptr i8, ptr %1471, i64 %1487
  %1489 = getelementptr i8, ptr %1470, i64 %1487
  %1490 = getelementptr i8, ptr %1489, i64 16
  %1491 = load <16 x i8>, ptr %1489, align 1, !tbaa !31
  %1492 = load <16 x i8>, ptr %1490, align 1, !tbaa !31
  %1493 = getelementptr i8, ptr %1488, i64 16
  store <16 x i8> %1491, ptr %1488, align 1, !tbaa !31
  store <16 x i8> %1492, ptr %1493, align 1, !tbaa !31
  %1494 = add nuw i64 %1487, 32
  %1495 = icmp eq i64 %1494, %1485
  br i1 %1495, label %1496, label %1486, !llvm.loop !61

1496:                                             ; preds = %1486
  %1497 = icmp eq i64 %1476, %1485
  br i1 %1497, label %1570, label %1498

1498:                                             ; preds = %1496
  %1499 = getelementptr i8, ptr %1470, i64 %1485
  %1500 = getelementptr i8, ptr %1471, i64 %1485
  %1501 = and i64 %1476, 24
  %1502 = icmp eq i64 %1501, 0
  br i1 %1502, label %1517, label %1503

1503:                                             ; preds = %1482, %1498
  %1504 = phi i64 [ %1485, %1498 ], [ 0, %1482 ]
  %1505 = and i64 %1476, -8
  %1506 = getelementptr i8, ptr %1471, i64 %1505
  %1507 = getelementptr i8, ptr %1470, i64 %1505
  br label %1508

1508:                                             ; preds = %1508, %1503
  %1509 = phi i64 [ %1504, %1503 ], [ %1513, %1508 ]
  %1510 = getelementptr i8, ptr %1471, i64 %1509
  %1511 = getelementptr i8, ptr %1470, i64 %1509
  %1512 = load <8 x i8>, ptr %1511, align 1, !tbaa !31
  store <8 x i8> %1512, ptr %1510, align 1, !tbaa !31
  %1513 = add nuw i64 %1509, 8
  %1514 = icmp eq i64 %1513, %1505
  br i1 %1514, label %1515, label %1508, !llvm.loop !62

1515:                                             ; preds = %1508
  %1516 = icmp eq i64 %1476, %1505
  br i1 %1516, label %1570, label %1517

1517:                                             ; preds = %1473, %1498, %1515
  %1518 = phi ptr [ %1471, %1473 ], [ %1500, %1498 ], [ %1506, %1515 ]
  %1519 = phi ptr [ %1470, %1473 ], [ %1499, %1498 ], [ %1507, %1515 ]
  %1520 = ptrtoint ptr %1519 to i64
  %1521 = sub i64 %1420, %1520
  %1522 = and i64 %1521, 7
  %1523 = icmp eq i64 %1522, 0
  br i1 %1523, label %1533, label %1524

1524:                                             ; preds = %1517, %1524
  %1525 = phi ptr [ %1530, %1524 ], [ %1518, %1517 ]
  %1526 = phi ptr [ %1528, %1524 ], [ %1519, %1517 ]
  %1527 = phi i64 [ %1531, %1524 ], [ 0, %1517 ]
  %1528 = getelementptr inbounds i8, ptr %1526, i64 1
  %1529 = load i8, ptr %1526, align 1, !tbaa !31
  %1530 = getelementptr inbounds i8, ptr %1525, i64 1
  store i8 %1529, ptr %1525, align 1, !tbaa !31
  %1531 = add i64 %1527, 1
  %1532 = icmp eq i64 %1531, %1522
  br i1 %1532, label %1533, label %1524, !llvm.loop !63

1533:                                             ; preds = %1524, %1517
  %1534 = phi ptr [ %1518, %1517 ], [ %1530, %1524 ]
  %1535 = phi ptr [ %1519, %1517 ], [ %1528, %1524 ]
  %1536 = sub i64 %1520, %1420
  %1537 = icmp ugt i64 %1536, -8
  br i1 %1537, label %1570, label %1538

1538:                                             ; preds = %1533, %1538
  %1539 = phi ptr [ %1564, %1538 ], [ %1534, %1533 ]
  %1540 = phi ptr [ %1562, %1538 ], [ %1535, %1533 ]
  %1541 = getelementptr inbounds i8, ptr %1540, i64 1
  %1542 = load i8, ptr %1540, align 1, !tbaa !31
  %1543 = getelementptr inbounds i8, ptr %1539, i64 1
  store i8 %1542, ptr %1539, align 1, !tbaa !31
  %1544 = getelementptr inbounds i8, ptr %1540, i64 2
  %1545 = load i8, ptr %1541, align 1, !tbaa !31
  %1546 = getelementptr inbounds i8, ptr %1539, i64 2
  store i8 %1545, ptr %1543, align 1, !tbaa !31
  %1547 = getelementptr inbounds i8, ptr %1540, i64 3
  %1548 = load i8, ptr %1544, align 1, !tbaa !31
  %1549 = getelementptr inbounds i8, ptr %1539, i64 3
  store i8 %1548, ptr %1546, align 1, !tbaa !31
  %1550 = getelementptr inbounds i8, ptr %1540, i64 4
  %1551 = load i8, ptr %1547, align 1, !tbaa !31
  %1552 = getelementptr inbounds i8, ptr %1539, i64 4
  store i8 %1551, ptr %1549, align 1, !tbaa !31
  %1553 = getelementptr inbounds i8, ptr %1540, i64 5
  %1554 = load i8, ptr %1550, align 1, !tbaa !31
  %1555 = getelementptr inbounds i8, ptr %1539, i64 5
  store i8 %1554, ptr %1552, align 1, !tbaa !31
  %1556 = getelementptr inbounds i8, ptr %1540, i64 6
  %1557 = load i8, ptr %1553, align 1, !tbaa !31
  %1558 = getelementptr inbounds i8, ptr %1539, i64 6
  store i8 %1557, ptr %1555, align 1, !tbaa !31
  %1559 = getelementptr inbounds i8, ptr %1540, i64 7
  %1560 = load i8, ptr %1556, align 1, !tbaa !31
  %1561 = getelementptr inbounds i8, ptr %1539, i64 7
  store i8 %1560, ptr %1558, align 1, !tbaa !31
  %1562 = getelementptr inbounds i8, ptr %1540, i64 8
  %1563 = load i8, ptr %1559, align 1, !tbaa !31
  %1564 = getelementptr inbounds i8, ptr %1539, i64 8
  store i8 %1563, ptr %1561, align 1, !tbaa !31
  %1565 = icmp eq ptr %1562, %1477
  br i1 %1565, label %1570, label %1538, !llvm.loop !64

1566:                                             ; preds = %1429, %1426
  %1567 = load ptr, ptr %1200, align 8, !tbaa !37
  %1568 = getelementptr inbounds i8, ptr %1567, i64 %1422
  store ptr %1568, ptr %1200, align 8, !tbaa !37
  %1569 = load ptr, ptr %1203, align 8, !tbaa !47
  br label %1582

1570:                                             ; preds = %1439, %1533, %1538, %1496, %1515, %1469
  %1571 = load ptr, ptr %1200, align 8, !tbaa !37
  %1572 = getelementptr inbounds i8, ptr %1571, i64 %1422
  store ptr %1572, ptr %1200, align 8, !tbaa !37
  %1573 = icmp ugt i64 %1422, 65535
  %1574 = load ptr, ptr %1203, align 8, !tbaa !47
  br i1 %1573, label %1575, label %1582, !prof !48

1575:                                             ; preds = %1570
  store i32 1, ptr %1202, align 8, !tbaa !49
  %1576 = load ptr, ptr %1, align 8, !tbaa !50
  %1577 = ptrtoint ptr %1574 to i64
  %1578 = ptrtoint ptr %1576 to i64
  %1579 = sub i64 %1577, %1578
  %1580 = lshr exact i64 %1579, 3
  %1581 = trunc i64 %1580 to i32
  store i32 %1581, ptr %1204, align 4, !tbaa !51
  br label %1582

1582:                                             ; preds = %1575, %1570, %1566
  %1583 = phi ptr [ %1569, %1566 ], [ %1574, %1575 ], [ %1574, %1570 ]
  %1584 = trunc i64 %1422 to i16
  %1585 = getelementptr inbounds %struct.SeqDef_s, ptr %1583, i64 0, i32 1
  store i16 %1584, ptr %1585, align 4, !tbaa !52
  store i32 %1346, ptr %1583, align 4, !tbaa !54
  %1586 = add i64 %1419, -3
  %1587 = icmp ugt i64 %1586, 65535
  br i1 %1587, label %1588, label %1595, !prof !55

1588:                                             ; preds = %1582
  store i32 2, ptr %1202, align 8, !tbaa !49
  %1589 = load ptr, ptr %1, align 8, !tbaa !50
  %1590 = ptrtoint ptr %1583 to i64
  %1591 = ptrtoint ptr %1589 to i64
  %1592 = sub i64 %1590, %1591
  %1593 = lshr exact i64 %1592, 3
  %1594 = trunc i64 %1593 to i32
  store i32 %1594, ptr %1204, align 4, !tbaa !51
  br label %1595

1595:                                             ; preds = %1588, %1582
  %1596 = trunc i64 %1586 to i16
  %1597 = getelementptr inbounds %struct.SeqDef_s, ptr %1583, i64 0, i32 2
  store i16 %1596, ptr %1597, align 2, !tbaa !56
  %1598 = getelementptr inbounds %struct.SeqDef_s, ptr %1583, i64 1
  store ptr %1598, ptr %1203, align 8, !tbaa !47
  %1599 = getelementptr inbounds i8, ptr %1350, i64 %1419
  %1600 = icmp ugt ptr %1599, %41
  br i1 %1600, label %1729, label %1601

1601:                                             ; preds = %1595
  %1602 = add i32 %1344, 2
  %1603 = zext i32 %1344 to i64
  %1604 = getelementptr inbounds i8, ptr %61, i64 %1603
  %1605 = load i64, ptr %1604, align 1, !tbaa !19
  %1606 = mul i64 %1605, -3523014627193847808
  %1607 = lshr i64 %1606, %1195
  %1608 = getelementptr inbounds i32, ptr %12, i64 %1607
  store i32 %1602, ptr %1608, align 4, !tbaa !20
  %1609 = getelementptr inbounds i8, ptr %1599, i64 -2
  %1610 = ptrtoint ptr %1609 to i64
  %1611 = sub i64 %1610, %23
  %1612 = trunc i64 %1611 to i32
  %1613 = load i64, ptr %1609, align 1, !tbaa !19
  %1614 = mul i64 %1613, -3523014627193847808
  %1615 = lshr i64 %1614, %1195
  %1616 = getelementptr inbounds i32, ptr %12, i64 %1615
  store i32 %1612, ptr %1616, align 4, !tbaa !20
  %1617 = icmp eq i32 %1345, 0
  br i1 %1617, label %1729, label %1618

1618:                                             ; preds = %1601, %1724
  %1619 = phi ptr [ %1727, %1724 ], [ %1598, %1601 ]
  %1620 = phi ptr [ %1706, %1724 ], [ %1599, %1601 ]
  %1621 = phi i32 [ %1622, %1724 ], [ %1349, %1601 ]
  %1622 = phi i32 [ %1621, %1724 ], [ %1345, %1601 ]
  %1623 = load i32, ptr %1620, align 1, !tbaa !20
  %1624 = zext i32 %1622 to i64
  %1625 = sub nsw i64 0, %1624
  %1626 = getelementptr inbounds i8, ptr %1620, i64 %1625
  %1627 = load i32, ptr %1626, align 1, !tbaa !20
  %1628 = icmp eq i32 %1623, %1627
  br i1 %1628, label %1629, label %1729

1629:                                             ; preds = %1618
  %1630 = getelementptr inbounds i8, ptr %1620, i64 4
  %1631 = getelementptr inbounds i8, ptr %1630, i64 %1625
  %1632 = icmp ugt ptr %1196, %1630
  br i1 %1632, label %1633, label %1659

1633:                                             ; preds = %1629
  %1634 = load i64, ptr %1631, align 1, !tbaa !19
  %1635 = load i64, ptr %1630, align 1, !tbaa !19
  %1636 = xor i64 %1635, %1634
  %1637 = icmp eq i64 %1636, 0
  br i1 %1637, label %1641, label %1638

1638:                                             ; preds = %1633
  %1639 = tail call i64 @llvm.cttz.i64(i64 %1636, i1 true), !range !34
  %1640 = lshr i64 %1639, 3
  br label %1696

1641:                                             ; preds = %1633, %1647
  %1642 = phi ptr [ %1645, %1647 ], [ %1631, %1633 ]
  %1643 = phi ptr [ %1644, %1647 ], [ %1630, %1633 ]
  %1644 = getelementptr inbounds i8, ptr %1643, i64 8
  %1645 = getelementptr inbounds i8, ptr %1642, i64 8
  %1646 = icmp ult ptr %1644, %1196
  br i1 %1646, label %1647, label %1659

1647:                                             ; preds = %1641
  %1648 = load i64, ptr %1645, align 1, !tbaa !19
  %1649 = load i64, ptr %1644, align 1, !tbaa !19
  %1650 = xor i64 %1649, %1648
  %1651 = icmp eq i64 %1650, 0
  br i1 %1651, label %1641, label %1652

1652:                                             ; preds = %1647
  %1653 = tail call i64 @llvm.cttz.i64(i64 %1650, i1 true), !range !34
  %1654 = lshr i64 %1653, 3
  %1655 = getelementptr inbounds i8, ptr %1644, i64 %1654
  %1656 = ptrtoint ptr %1655 to i64
  %1657 = ptrtoint ptr %1630 to i64
  %1658 = sub i64 %1656, %1657
  br label %1696

1659:                                             ; preds = %1641, %1629
  %1660 = phi ptr [ %1631, %1629 ], [ %1645, %1641 ]
  %1661 = phi ptr [ %1630, %1629 ], [ %1644, %1641 ]
  %1662 = icmp ult ptr %1661, %1197
  br i1 %1662, label %1663, label %1670

1663:                                             ; preds = %1659
  %1664 = load i32, ptr %1660, align 1, !tbaa !20
  %1665 = load i32, ptr %1661, align 1, !tbaa !20
  %1666 = icmp eq i32 %1664, %1665
  br i1 %1666, label %1667, label %1670

1667:                                             ; preds = %1663
  %1668 = getelementptr inbounds i8, ptr %1661, i64 4
  %1669 = getelementptr inbounds i8, ptr %1660, i64 4
  br label %1670

1670:                                             ; preds = %1667, %1663, %1659
  %1671 = phi ptr [ %1669, %1667 ], [ %1660, %1663 ], [ %1660, %1659 ]
  %1672 = phi ptr [ %1668, %1667 ], [ %1661, %1663 ], [ %1661, %1659 ]
  %1673 = icmp ult ptr %1672, %1198
  br i1 %1673, label %1674, label %1681

1674:                                             ; preds = %1670
  %1675 = load i16, ptr %1671, align 1, !tbaa !35
  %1676 = load i16, ptr %1672, align 1, !tbaa !35
  %1677 = icmp eq i16 %1675, %1676
  br i1 %1677, label %1678, label %1681

1678:                                             ; preds = %1674
  %1679 = getelementptr inbounds i8, ptr %1672, i64 2
  %1680 = getelementptr inbounds i8, ptr %1671, i64 2
  br label %1681

1681:                                             ; preds = %1678, %1674, %1670
  %1682 = phi ptr [ %1680, %1678 ], [ %1671, %1674 ], [ %1671, %1670 ]
  %1683 = phi ptr [ %1679, %1678 ], [ %1672, %1674 ], [ %1672, %1670 ]
  %1684 = icmp ult ptr %1683, %40
  br i1 %1684, label %1685, label %1691

1685:                                             ; preds = %1681
  %1686 = load i8, ptr %1682, align 1, !tbaa !31
  %1687 = load i8, ptr %1683, align 1, !tbaa !31
  %1688 = icmp eq i8 %1686, %1687
  %1689 = zext i1 %1688 to i64
  %1690 = getelementptr inbounds i8, ptr %1683, i64 %1689
  br label %1691

1691:                                             ; preds = %1685, %1681
  %1692 = phi ptr [ %1683, %1681 ], [ %1690, %1685 ]
  %1693 = ptrtoint ptr %1692 to i64
  %1694 = ptrtoint ptr %1630 to i64
  %1695 = sub i64 %1693, %1694
  br label %1696

1696:                                             ; preds = %1691, %1652, %1638
  %1697 = phi i64 [ %1695, %1691 ], [ %1640, %1638 ], [ %1658, %1652 ]
  %1698 = add i64 %1697, 4
  %1699 = ptrtoint ptr %1620 to i64
  %1700 = sub i64 %1699, %23
  %1701 = trunc i64 %1700 to i32
  %1702 = load i64, ptr %1620, align 1, !tbaa !19
  %1703 = mul i64 %1702, -3523014627193847808
  %1704 = lshr i64 %1703, %1195
  %1705 = getelementptr inbounds i32, ptr %12, i64 %1704
  store i32 %1701, ptr %1705, align 4, !tbaa !20
  %1706 = getelementptr inbounds i8, ptr %1620, i64 %1698
  %1707 = icmp ugt ptr %1620, %1199
  br i1 %1707, label %1712, label %1708

1708:                                             ; preds = %1696
  %1709 = load ptr, ptr %1200, align 8, !tbaa !37
  %1710 = load <2 x i64>, ptr %1620, align 1, !tbaa !31
  store <2 x i64> %1710, ptr %1709, align 1, !tbaa !31
  %1711 = load ptr, ptr %1203, align 8, !tbaa !47
  br label %1712

1712:                                             ; preds = %1708, %1696
  %1713 = phi ptr [ %1619, %1696 ], [ %1711, %1708 ]
  %1714 = getelementptr inbounds %struct.SeqDef_s, ptr %1713, i64 0, i32 1
  store i16 0, ptr %1714, align 4, !tbaa !52
  store i32 1, ptr %1713, align 4, !tbaa !54
  %1715 = add i64 %1697, 1
  %1716 = icmp ugt i64 %1715, 65535
  br i1 %1716, label %1717, label %1724, !prof !55

1717:                                             ; preds = %1712
  store i32 2, ptr %1202, align 8, !tbaa !49
  %1718 = load ptr, ptr %1, align 8, !tbaa !50
  %1719 = ptrtoint ptr %1713 to i64
  %1720 = ptrtoint ptr %1718 to i64
  %1721 = sub i64 %1719, %1720
  %1722 = lshr exact i64 %1721, 3
  %1723 = trunc i64 %1722 to i32
  store i32 %1723, ptr %1204, align 4, !tbaa !51
  br label %1724

1724:                                             ; preds = %1717, %1712
  %1725 = trunc i64 %1715 to i16
  %1726 = getelementptr inbounds %struct.SeqDef_s, ptr %1713, i64 0, i32 2
  store i16 %1725, ptr %1726, align 2, !tbaa !56
  %1727 = getelementptr inbounds %struct.SeqDef_s, ptr %1713, i64 1
  store ptr %1727, ptr %1203, align 8, !tbaa !47
  %1728 = icmp ugt ptr %1706, %41
  br i1 %1728, label %1729, label %1618

1729:                                             ; preds = %1724, %1618, %1601, %1595
  %1730 = phi i32 [ 0, %1601 ], [ %1345, %1595 ], [ %1622, %1618 ], [ %1621, %1724 ]
  %1731 = phi i32 [ %1349, %1601 ], [ %1349, %1595 ], [ %1621, %1618 ], [ %1622, %1724 ]
  %1732 = phi ptr [ %1599, %1601 ], [ %1599, %1595 ], [ %1620, %1618 ], [ %1706, %1724 ]
  %1733 = getelementptr inbounds i8, ptr %1732, i64 %19
  %1734 = getelementptr inbounds i8, ptr %1733, i64 1
  %1735 = icmp ult ptr %1734, %41
  br i1 %1735, label %1205, label %1736

1736:                                             ; preds = %1729, %1299, %1190
  %1737 = phi i32 [ %58, %1190 ], [ %1211, %1299 ], [ %1730, %1729 ]
  %1738 = phi i32 [ %60, %1190 ], [ %1210, %1299 ], [ %1731, %1729 ]
  %1739 = phi ptr [ %3, %1190 ], [ %1208, %1299 ], [ %1732, %1729 ]
  %1740 = select i1 %59, i32 %42, i32 0
  %1741 = select i1 %57, i32 %44, i32 0
  %1742 = icmp ne i32 %1740, 0
  %1743 = icmp ne i32 %1738, 0
  %1744 = select i1 %1742, i1 %1743, i1 false
  %1745 = select i1 %1744, i32 %1740, i32 %1741
  %1746 = select i1 %1743, i32 %1738, i32 %1740
  store i32 %1746, ptr %2, align 4, !tbaa !20
  %1747 = icmp eq i32 %1737, 0
  %1748 = select i1 %1747, i32 %1745, i32 %1737
  br label %4874

1749:                                             ; preds = %65
  br i1 %64, label %1750, label %2295

1750:                                             ; preds = %1749
  %1751 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 2
  %1752 = load i32, ptr %1751, align 4, !tbaa !18
  %1753 = sub i32 64, %1752
  %1754 = zext nneg i32 %1753 to i64
  %1755 = getelementptr inbounds i8, ptr %40, i64 -7
  %1756 = getelementptr inbounds i8, ptr %40, i64 -3
  %1757 = getelementptr inbounds i8, ptr %40, i64 -1
  %1758 = getelementptr inbounds i8, ptr %40, i64 -32
  %1759 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %1760 = ptrtoint ptr %1758 to i64
  %1761 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %1762 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %1763 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  br label %1764

1764:                                             ; preds = %2288, %1750
  %1765 = phi ptr [ %63, %1750 ], [ %2293, %2288 ]
  %1766 = phi ptr [ %62, %1750 ], [ %2292, %2288 ]
  %1767 = phi ptr [ %3, %1750 ], [ %2291, %2288 ]
  %1768 = phi ptr [ %47, %1750 ], [ %2291, %2288 ]
  %1769 = phi i32 [ %60, %1750 ], [ %2290, %2288 ]
  %1770 = phi i32 [ %58, %1750 ], [ %2289, %2288 ]
  %1771 = getelementptr inbounds i8, ptr %1768, i64 1
  %1772 = getelementptr inbounds i8, ptr %1768, i64 128
  %1773 = load i64, ptr %1768, align 1, !tbaa !19
  %1774 = mul i64 %1773, -3523014627193167104
  %1775 = lshr i64 %1774, %1754
  %1776 = load i64, ptr %1771, align 1, !tbaa !19
  %1777 = getelementptr inbounds i32, ptr %12, i64 %1775
  %1778 = load i32, ptr %1777, align 4, !tbaa !20
  %1779 = zext i32 %1769 to i64
  %1780 = sub nsw i64 0, %1779
  %1781 = icmp ne i32 %1769, 0
  br label %1782

1782:                                             ; preds = %1858, %1764
  %1783 = phi i64 [ %1775, %1764 ], [ %1817, %1858 ]
  %1784 = phi i64 [ %1776, %1764 ], [ %1834, %1858 ]
  %1785 = phi i32 [ %1778, %1764 ], [ %1833, %1858 ]
  %1786 = phi i64 [ %19, %1764 ], [ %1859, %1858 ]
  %1787 = phi ptr [ %1772, %1764 ], [ %1860, %1858 ]
  %1788 = phi ptr [ %1765, %1764 ], [ %1836, %1858 ]
  %1789 = phi ptr [ %1766, %1764 ], [ %1835, %1858 ]
  %1790 = phi ptr [ %1771, %1764 ], [ %1788, %1858 ]
  %1791 = phi ptr [ %1768, %1764 ], [ %1789, %1858 ]
  %1792 = mul i64 %1784, -3523014627193167104
  %1793 = lshr i64 %1792, %1754
  %1794 = getelementptr inbounds i8, ptr %1789, i64 %1780
  %1795 = load i32, ptr %1794, align 1, !tbaa !20
  %1796 = ptrtoint ptr %1791 to i64
  %1797 = sub i64 %1796, %23
  %1798 = trunc i64 %1797 to i32
  %1799 = getelementptr inbounds i32, ptr %12, i64 %1783
  store i32 %1798, ptr %1799, align 4, !tbaa !20
  %1800 = load i32, ptr %1789, align 1, !tbaa !20
  %1801 = icmp eq i32 %1800, %1795
  %1802 = and i1 %1781, %1801
  br i1 %1802, label %1843, label %1803

1803:                                             ; preds = %1782
  %1804 = zext i32 %1785 to i64
  %1805 = getelementptr inbounds i8, ptr %21, i64 %1804
  %1806 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1785, i32 %37, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr %1805) #7, !srcloc !29
  %1807 = load i32, ptr %1791, align 1, !tbaa !20
  %1808 = load i32, ptr %1806, align 1, !tbaa !20
  %1809 = icmp eq i32 %1807, %1808
  br i1 %1809, label %1810, label %1812

1810:                                             ; preds = %1803
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !30
  %1811 = icmp ult i32 %1785, %37
  br i1 %1811, label %1812, label %1862

1812:                                             ; preds = %1810, %1803
  %1813 = getelementptr inbounds i32, ptr %12, i64 %1793
  %1814 = load i32, ptr %1813, align 4, !tbaa !20
  %1815 = load i64, ptr %1789, align 1, !tbaa !19
  %1816 = mul i64 %1815, -3523014627193167104
  %1817 = lshr i64 %1816, %1754
  %1818 = ptrtoint ptr %1790 to i64
  %1819 = sub i64 %1818, %23
  %1820 = trunc i64 %1819 to i32
  store i32 %1820, ptr %1813, align 4, !tbaa !20
  %1821 = zext i32 %1814 to i64
  %1822 = getelementptr inbounds i8, ptr %21, i64 %1821
  %1823 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1814, i32 %37, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr %1822) #7, !srcloc !29
  %1824 = load i32, ptr %1790, align 1, !tbaa !20
  %1825 = load i32, ptr %1823, align 1, !tbaa !20
  %1826 = icmp eq i32 %1824, %1825
  br i1 %1826, label %1827, label %1831

1827:                                             ; preds = %1812
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !30
  %1828 = icmp ult i32 %1814, %37
  br i1 %1828, label %1831, label %1829

1829:                                             ; preds = %1827
  %1830 = icmp ult i64 %1786, 5
  br i1 %1830, label %1862, label %1874

1831:                                             ; preds = %1827, %1812
  %1832 = getelementptr inbounds i32, ptr %12, i64 %1817
  %1833 = load i32, ptr %1832, align 4, !tbaa !20
  %1834 = load i64, ptr %1788, align 1, !tbaa !19
  %1835 = getelementptr inbounds i8, ptr %1789, i64 %1786
  %1836 = getelementptr inbounds i8, ptr %1788, i64 %1786
  %1837 = icmp ult ptr %1835, %1787
  br i1 %1837, label %1858, label %1838

1838:                                             ; preds = %1831
  %1839 = add i64 %1786, 1
  %1840 = getelementptr inbounds i8, ptr %1788, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1840, i32 0, i32 3, i32 1)
  %1841 = getelementptr inbounds i8, ptr %1788, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %1841, i32 0, i32 3, i32 1)
  %1842 = getelementptr inbounds i8, ptr %1787, i64 128
  br label %1858

1843:                                             ; preds = %1782
  %1844 = getelementptr inbounds i8, ptr %1789, i64 %1780
  %1845 = getelementptr inbounds i8, ptr %1789, i64 -1
  %1846 = load i8, ptr %1845, align 1, !tbaa !31
  %1847 = getelementptr inbounds i8, ptr %1844, i64 -1
  %1848 = load i8, ptr %1847, align 1, !tbaa !31
  %1849 = icmp eq i8 %1846, %1848
  %1850 = sext i1 %1849 to i64
  %1851 = getelementptr inbounds i8, ptr %1789, i64 %1850
  %1852 = getelementptr inbounds i8, ptr %1844, i64 %1850
  %1853 = select i1 %1849, i64 5, i64 4
  %1854 = ptrtoint ptr %1790 to i64
  %1855 = sub i64 %1854, %23
  %1856 = trunc i64 %1855 to i32
  %1857 = getelementptr inbounds i32, ptr %12, i64 %1793
  store i32 %1856, ptr %1857, align 4, !tbaa !20
  br label %1902

1858:                                             ; preds = %1838, %1831
  %1859 = phi i64 [ %1786, %1831 ], [ %1839, %1838 ]
  %1860 = phi ptr [ %1787, %1831 ], [ %1842, %1838 ]
  %1861 = icmp ult ptr %1836, %41
  br i1 %1861, label %1782, label %2295, !llvm.loop !32

1862:                                             ; preds = %1810, %1829
  %1863 = phi ptr [ %1789, %1829 ], [ %1790, %1810 ]
  %1864 = phi i64 [ %1817, %1829 ], [ %1793, %1810 ]
  %1865 = phi i64 [ %1818, %1829 ], [ %1796, %1810 ]
  %1866 = phi i64 [ %1821, %1829 ], [ %1804, %1810 ]
  %1867 = phi i32 [ %1814, %1829 ], [ %1785, %1810 ]
  %1868 = phi i32 [ %1820, %1829 ], [ %1798, %1810 ]
  %1869 = phi ptr [ %1790, %1829 ], [ %1791, %1810 ]
  %1870 = ptrtoint ptr %1863 to i64
  %1871 = sub i64 %1870, %23
  %1872 = trunc i64 %1871 to i32
  %1873 = getelementptr inbounds i32, ptr %12, i64 %1864
  store i32 %1872, ptr %1873, align 4, !tbaa !20
  br label %1874

1874:                                             ; preds = %1862, %1829
  %1875 = phi i64 [ %1818, %1829 ], [ %1865, %1862 ]
  %1876 = phi i64 [ %1821, %1829 ], [ %1866, %1862 ]
  %1877 = phi i32 [ %1814, %1829 ], [ %1867, %1862 ]
  %1878 = phi i32 [ %1820, %1829 ], [ %1868, %1862 ]
  %1879 = phi ptr [ %1790, %1829 ], [ %1869, %1862 ]
  %1880 = getelementptr inbounds i8, ptr %21, i64 %1876
  %1881 = ptrtoint ptr %1880 to i64
  %1882 = sub i64 %1875, %1881
  %1883 = trunc i64 %1882 to i32
  %1884 = add i32 %1883, 3
  %1885 = icmp ugt ptr %1879, %1767
  %1886 = icmp ugt i32 %1877, %37
  %1887 = and i1 %1886, %1885
  br i1 %1887, label %1888, label %1902

1888:                                             ; preds = %1874, %1897
  %1889 = phi ptr [ %1892, %1897 ], [ %1879, %1874 ]
  %1890 = phi i64 [ %1898, %1897 ], [ 4, %1874 ]
  %1891 = phi ptr [ %1894, %1897 ], [ %1880, %1874 ]
  %1892 = getelementptr inbounds i8, ptr %1889, i64 -1
  %1893 = load i8, ptr %1892, align 1, !tbaa !31
  %1894 = getelementptr inbounds i8, ptr %1891, i64 -1
  %1895 = load i8, ptr %1894, align 1, !tbaa !31
  %1896 = icmp eq i8 %1893, %1895
  br i1 %1896, label %1897, label %1902

1897:                                             ; preds = %1888
  %1898 = add i64 %1890, 1
  %1899 = icmp ugt ptr %1892, %1767
  %1900 = icmp ugt ptr %1894, %39
  %1901 = and i1 %1899, %1900
  br i1 %1901, label %1888, label %1902, !llvm.loop !33

1902:                                             ; preds = %1897, %1888, %1874, %1843
  %1903 = phi i32 [ %1798, %1843 ], [ %1878, %1874 ], [ %1878, %1888 ], [ %1878, %1897 ]
  %1904 = phi i32 [ %1770, %1843 ], [ %1769, %1874 ], [ %1769, %1888 ], [ %1769, %1897 ]
  %1905 = phi i32 [ 1, %1843 ], [ %1884, %1874 ], [ %1884, %1888 ], [ %1884, %1897 ]
  %1906 = phi ptr [ %1852, %1843 ], [ %1880, %1874 ], [ %1894, %1897 ], [ %1891, %1888 ]
  %1907 = phi i64 [ %1853, %1843 ], [ 4, %1874 ], [ %1898, %1897 ], [ %1890, %1888 ]
  %1908 = phi i32 [ %1769, %1843 ], [ %1883, %1874 ], [ %1883, %1888 ], [ %1883, %1897 ]
  %1909 = phi ptr [ %1851, %1843 ], [ %1879, %1874 ], [ %1892, %1897 ], [ %1889, %1888 ]
  %1910 = getelementptr inbounds i8, ptr %1909, i64 %1907
  %1911 = getelementptr inbounds i8, ptr %1906, i64 %1907
  %1912 = icmp ugt ptr %1755, %1910
  br i1 %1912, label %1913, label %1939

1913:                                             ; preds = %1902
  %1914 = load i64, ptr %1911, align 1, !tbaa !19
  %1915 = load i64, ptr %1910, align 1, !tbaa !19
  %1916 = xor i64 %1915, %1914
  %1917 = icmp eq i64 %1916, 0
  br i1 %1917, label %1921, label %1918

1918:                                             ; preds = %1913
  %1919 = tail call i64 @llvm.cttz.i64(i64 %1916, i1 true), !range !34
  %1920 = lshr i64 %1919, 3
  br label %1976

1921:                                             ; preds = %1913, %1927
  %1922 = phi ptr [ %1925, %1927 ], [ %1911, %1913 ]
  %1923 = phi ptr [ %1924, %1927 ], [ %1910, %1913 ]
  %1924 = getelementptr inbounds i8, ptr %1923, i64 8
  %1925 = getelementptr inbounds i8, ptr %1922, i64 8
  %1926 = icmp ult ptr %1924, %1755
  br i1 %1926, label %1927, label %1939

1927:                                             ; preds = %1921
  %1928 = load i64, ptr %1925, align 1, !tbaa !19
  %1929 = load i64, ptr %1924, align 1, !tbaa !19
  %1930 = xor i64 %1929, %1928
  %1931 = icmp eq i64 %1930, 0
  br i1 %1931, label %1921, label %1932

1932:                                             ; preds = %1927
  %1933 = tail call i64 @llvm.cttz.i64(i64 %1930, i1 true), !range !34
  %1934 = lshr i64 %1933, 3
  %1935 = getelementptr inbounds i8, ptr %1924, i64 %1934
  %1936 = ptrtoint ptr %1935 to i64
  %1937 = ptrtoint ptr %1910 to i64
  %1938 = sub i64 %1936, %1937
  br label %1976

1939:                                             ; preds = %1921, %1902
  %1940 = phi ptr [ %1911, %1902 ], [ %1925, %1921 ]
  %1941 = phi ptr [ %1910, %1902 ], [ %1924, %1921 ]
  %1942 = icmp ult ptr %1941, %1756
  br i1 %1942, label %1943, label %1950

1943:                                             ; preds = %1939
  %1944 = load i32, ptr %1940, align 1, !tbaa !20
  %1945 = load i32, ptr %1941, align 1, !tbaa !20
  %1946 = icmp eq i32 %1944, %1945
  br i1 %1946, label %1947, label %1950

1947:                                             ; preds = %1943
  %1948 = getelementptr inbounds i8, ptr %1941, i64 4
  %1949 = getelementptr inbounds i8, ptr %1940, i64 4
  br label %1950

1950:                                             ; preds = %1947, %1943, %1939
  %1951 = phi ptr [ %1949, %1947 ], [ %1940, %1943 ], [ %1940, %1939 ]
  %1952 = phi ptr [ %1948, %1947 ], [ %1941, %1943 ], [ %1941, %1939 ]
  %1953 = icmp ult ptr %1952, %1757
  br i1 %1953, label %1954, label %1961

1954:                                             ; preds = %1950
  %1955 = load i16, ptr %1951, align 1, !tbaa !35
  %1956 = load i16, ptr %1952, align 1, !tbaa !35
  %1957 = icmp eq i16 %1955, %1956
  br i1 %1957, label %1958, label %1961

1958:                                             ; preds = %1954
  %1959 = getelementptr inbounds i8, ptr %1952, i64 2
  %1960 = getelementptr inbounds i8, ptr %1951, i64 2
  br label %1961

1961:                                             ; preds = %1958, %1954, %1950
  %1962 = phi ptr [ %1960, %1958 ], [ %1951, %1954 ], [ %1951, %1950 ]
  %1963 = phi ptr [ %1959, %1958 ], [ %1952, %1954 ], [ %1952, %1950 ]
  %1964 = icmp ult ptr %1963, %40
  br i1 %1964, label %1965, label %1971

1965:                                             ; preds = %1961
  %1966 = load i8, ptr %1962, align 1, !tbaa !31
  %1967 = load i8, ptr %1963, align 1, !tbaa !31
  %1968 = icmp eq i8 %1966, %1967
  %1969 = zext i1 %1968 to i64
  %1970 = getelementptr inbounds i8, ptr %1963, i64 %1969
  br label %1971

1971:                                             ; preds = %1965, %1961
  %1972 = phi ptr [ %1963, %1961 ], [ %1970, %1965 ]
  %1973 = ptrtoint ptr %1972 to i64
  %1974 = ptrtoint ptr %1910 to i64
  %1975 = sub i64 %1973, %1974
  br label %1976

1976:                                             ; preds = %1971, %1932, %1918
  %1977 = phi i64 [ %1975, %1971 ], [ %1920, %1918 ], [ %1938, %1932 ]
  %1978 = add i64 %1977, %1907
  %1979 = ptrtoint ptr %1909 to i64
  %1980 = ptrtoint ptr %1767 to i64
  %1981 = sub i64 %1979, %1980
  %1982 = getelementptr inbounds i8, ptr %1767, i64 %1981
  %1983 = icmp ugt ptr %1982, %1758
  %1984 = load ptr, ptr %1759, align 8, !tbaa !37
  br i1 %1983, label %2008, label %1985

1985:                                             ; preds = %1976
  %1986 = load <2 x i64>, ptr %1767, align 1, !tbaa !31
  store <2 x i64> %1986, ptr %1984, align 1, !tbaa !31
  %1987 = icmp ugt i64 %1981, 16
  br i1 %1987, label %1988, label %2125

1988:                                             ; preds = %1985
  %1989 = load ptr, ptr %1759, align 8, !tbaa !37
  %1990 = getelementptr inbounds i8, ptr %1989, i64 16
  %1991 = getelementptr inbounds i8, ptr %1767, i64 16
  %1992 = add i64 %1981, -16
  %1993 = getelementptr inbounds i8, ptr %1989, i64 %1981
  %1994 = load <2 x i64>, ptr %1991, align 1, !tbaa !31
  store <2 x i64> %1994, ptr %1990, align 1, !tbaa !31
  %1995 = icmp ult i64 %1992, 17
  br i1 %1995, label %2125, label %1996

1996:                                             ; preds = %1988
  %1997 = getelementptr inbounds i8, ptr %1989, i64 32
  br label %1998

1998:                                             ; preds = %1998, %1996
  %1999 = phi ptr [ %1997, %1996 ], [ %2006, %1998 ]
  %2000 = phi ptr [ %1991, %1996 ], [ %2004, %1998 ]
  %2001 = getelementptr inbounds i8, ptr %2000, i64 16
  %2002 = load <2 x i64>, ptr %2001, align 1, !tbaa !31
  store <2 x i64> %2002, ptr %1999, align 1, !tbaa !31
  %2003 = getelementptr inbounds i8, ptr %1999, i64 16
  %2004 = getelementptr inbounds i8, ptr %2000, i64 32
  %2005 = load <2 x i64>, ptr %2004, align 1, !tbaa !31
  store <2 x i64> %2005, ptr %2003, align 1, !tbaa !31
  %2006 = getelementptr inbounds i8, ptr %1999, i64 32
  %2007 = icmp ult ptr %2006, %1993
  br i1 %2007, label %1998, label %2129, !llvm.loop !39

2008:                                             ; preds = %1976
  %2009 = ptrtoint ptr %1982 to i64
  %2010 = icmp ugt ptr %1767, %1758
  br i1 %2010, label %2028, label %2011

2011:                                             ; preds = %2008
  %2012 = sub i64 %1760, %1980
  %2013 = getelementptr inbounds i8, ptr %1984, i64 %2012
  %2014 = load <2 x i64>, ptr %1767, align 1, !tbaa !31
  store <2 x i64> %2014, ptr %1984, align 1, !tbaa !31
  %2015 = icmp ult i64 %2012, 17
  br i1 %2015, label %2028, label %2016

2016:                                             ; preds = %2011
  %2017 = getelementptr inbounds i8, ptr %1984, i64 16
  br label %2018

2018:                                             ; preds = %2018, %2016
  %2019 = phi ptr [ %2017, %2016 ], [ %2026, %2018 ]
  %2020 = phi ptr [ %1767, %2016 ], [ %2024, %2018 ]
  %2021 = getelementptr inbounds i8, ptr %2020, i64 16
  %2022 = load <2 x i64>, ptr %2021, align 1, !tbaa !31
  store <2 x i64> %2022, ptr %2019, align 1, !tbaa !31
  %2023 = getelementptr inbounds i8, ptr %2019, i64 16
  %2024 = getelementptr inbounds i8, ptr %2020, i64 32
  %2025 = load <2 x i64>, ptr %2024, align 1, !tbaa !31
  store <2 x i64> %2025, ptr %2023, align 1, !tbaa !31
  %2026 = getelementptr inbounds i8, ptr %2019, i64 32
  %2027 = icmp ult ptr %2026, %2013
  br i1 %2027, label %2018, label %2028, !llvm.loop !39

2028:                                             ; preds = %2018, %2011, %2008
  %2029 = phi ptr [ %1758, %2011 ], [ %1767, %2008 ], [ %1758, %2018 ]
  %2030 = phi ptr [ %2013, %2011 ], [ %1984, %2008 ], [ %2013, %2018 ]
  %2031 = icmp ult ptr %2029, %1982
  br i1 %2031, label %2032, label %2129

2032:                                             ; preds = %2028
  %2033 = ptrtoint ptr %2030 to i64
  %2034 = ptrtoint ptr %2029 to i64
  %2035 = sub i64 %2009, %2034
  %2036 = getelementptr i8, ptr %2029, i64 %2035
  %2037 = icmp ult i64 %2035, 8
  %2038 = sub i64 %2033, %2034
  %2039 = icmp ult i64 %2038, 32
  %2040 = select i1 %2037, i1 true, i1 %2039
  br i1 %2040, label %2076, label %2041

2041:                                             ; preds = %2032
  %2042 = icmp ult i64 %2035, 32
  br i1 %2042, label %2062, label %2043

2043:                                             ; preds = %2041
  %2044 = and i64 %2035, -32
  br label %2045

2045:                                             ; preds = %2045, %2043
  %2046 = phi i64 [ 0, %2043 ], [ %2053, %2045 ]
  %2047 = getelementptr i8, ptr %2030, i64 %2046
  %2048 = getelementptr i8, ptr %2029, i64 %2046
  %2049 = getelementptr i8, ptr %2048, i64 16
  %2050 = load <16 x i8>, ptr %2048, align 1, !tbaa !31
  %2051 = load <16 x i8>, ptr %2049, align 1, !tbaa !31
  %2052 = getelementptr i8, ptr %2047, i64 16
  store <16 x i8> %2050, ptr %2047, align 1, !tbaa !31
  store <16 x i8> %2051, ptr %2052, align 1, !tbaa !31
  %2053 = add nuw i64 %2046, 32
  %2054 = icmp eq i64 %2053, %2044
  br i1 %2054, label %2055, label %2045, !llvm.loop !65

2055:                                             ; preds = %2045
  %2056 = icmp eq i64 %2035, %2044
  br i1 %2056, label %2129, label %2057

2057:                                             ; preds = %2055
  %2058 = getelementptr i8, ptr %2029, i64 %2044
  %2059 = getelementptr i8, ptr %2030, i64 %2044
  %2060 = and i64 %2035, 24
  %2061 = icmp eq i64 %2060, 0
  br i1 %2061, label %2076, label %2062

2062:                                             ; preds = %2041, %2057
  %2063 = phi i64 [ %2044, %2057 ], [ 0, %2041 ]
  %2064 = and i64 %2035, -8
  %2065 = getelementptr i8, ptr %2030, i64 %2064
  %2066 = getelementptr i8, ptr %2029, i64 %2064
  br label %2067

2067:                                             ; preds = %2067, %2062
  %2068 = phi i64 [ %2063, %2062 ], [ %2072, %2067 ]
  %2069 = getelementptr i8, ptr %2030, i64 %2068
  %2070 = getelementptr i8, ptr %2029, i64 %2068
  %2071 = load <8 x i8>, ptr %2070, align 1, !tbaa !31
  store <8 x i8> %2071, ptr %2069, align 1, !tbaa !31
  %2072 = add nuw i64 %2068, 8
  %2073 = icmp eq i64 %2072, %2064
  br i1 %2073, label %2074, label %2067, !llvm.loop !66

2074:                                             ; preds = %2067
  %2075 = icmp eq i64 %2035, %2064
  br i1 %2075, label %2129, label %2076

2076:                                             ; preds = %2032, %2057, %2074
  %2077 = phi ptr [ %2030, %2032 ], [ %2059, %2057 ], [ %2065, %2074 ]
  %2078 = phi ptr [ %2029, %2032 ], [ %2058, %2057 ], [ %2066, %2074 ]
  %2079 = ptrtoint ptr %2078 to i64
  %2080 = sub i64 %1979, %2079
  %2081 = and i64 %2080, 7
  %2082 = icmp eq i64 %2081, 0
  br i1 %2082, label %2092, label %2083

2083:                                             ; preds = %2076, %2083
  %2084 = phi ptr [ %2089, %2083 ], [ %2077, %2076 ]
  %2085 = phi ptr [ %2087, %2083 ], [ %2078, %2076 ]
  %2086 = phi i64 [ %2090, %2083 ], [ 0, %2076 ]
  %2087 = getelementptr inbounds i8, ptr %2085, i64 1
  %2088 = load i8, ptr %2085, align 1, !tbaa !31
  %2089 = getelementptr inbounds i8, ptr %2084, i64 1
  store i8 %2088, ptr %2084, align 1, !tbaa !31
  %2090 = add i64 %2086, 1
  %2091 = icmp eq i64 %2090, %2081
  br i1 %2091, label %2092, label %2083, !llvm.loop !67

2092:                                             ; preds = %2083, %2076
  %2093 = phi ptr [ %2077, %2076 ], [ %2089, %2083 ]
  %2094 = phi ptr [ %2078, %2076 ], [ %2087, %2083 ]
  %2095 = sub i64 %2079, %1979
  %2096 = icmp ugt i64 %2095, -8
  br i1 %2096, label %2129, label %2097

2097:                                             ; preds = %2092, %2097
  %2098 = phi ptr [ %2123, %2097 ], [ %2093, %2092 ]
  %2099 = phi ptr [ %2121, %2097 ], [ %2094, %2092 ]
  %2100 = getelementptr inbounds i8, ptr %2099, i64 1
  %2101 = load i8, ptr %2099, align 1, !tbaa !31
  %2102 = getelementptr inbounds i8, ptr %2098, i64 1
  store i8 %2101, ptr %2098, align 1, !tbaa !31
  %2103 = getelementptr inbounds i8, ptr %2099, i64 2
  %2104 = load i8, ptr %2100, align 1, !tbaa !31
  %2105 = getelementptr inbounds i8, ptr %2098, i64 2
  store i8 %2104, ptr %2102, align 1, !tbaa !31
  %2106 = getelementptr inbounds i8, ptr %2099, i64 3
  %2107 = load i8, ptr %2103, align 1, !tbaa !31
  %2108 = getelementptr inbounds i8, ptr %2098, i64 3
  store i8 %2107, ptr %2105, align 1, !tbaa !31
  %2109 = getelementptr inbounds i8, ptr %2099, i64 4
  %2110 = load i8, ptr %2106, align 1, !tbaa !31
  %2111 = getelementptr inbounds i8, ptr %2098, i64 4
  store i8 %2110, ptr %2108, align 1, !tbaa !31
  %2112 = getelementptr inbounds i8, ptr %2099, i64 5
  %2113 = load i8, ptr %2109, align 1, !tbaa !31
  %2114 = getelementptr inbounds i8, ptr %2098, i64 5
  store i8 %2113, ptr %2111, align 1, !tbaa !31
  %2115 = getelementptr inbounds i8, ptr %2099, i64 6
  %2116 = load i8, ptr %2112, align 1, !tbaa !31
  %2117 = getelementptr inbounds i8, ptr %2098, i64 6
  store i8 %2116, ptr %2114, align 1, !tbaa !31
  %2118 = getelementptr inbounds i8, ptr %2099, i64 7
  %2119 = load i8, ptr %2115, align 1, !tbaa !31
  %2120 = getelementptr inbounds i8, ptr %2098, i64 7
  store i8 %2119, ptr %2117, align 1, !tbaa !31
  %2121 = getelementptr inbounds i8, ptr %2099, i64 8
  %2122 = load i8, ptr %2118, align 1, !tbaa !31
  %2123 = getelementptr inbounds i8, ptr %2098, i64 8
  store i8 %2122, ptr %2120, align 1, !tbaa !31
  %2124 = icmp eq ptr %2121, %2036
  br i1 %2124, label %2129, label %2097, !llvm.loop !68

2125:                                             ; preds = %1988, %1985
  %2126 = load ptr, ptr %1759, align 8, !tbaa !37
  %2127 = getelementptr inbounds i8, ptr %2126, i64 %1981
  store ptr %2127, ptr %1759, align 8, !tbaa !37
  %2128 = load ptr, ptr %1762, align 8, !tbaa !47
  br label %2141

2129:                                             ; preds = %1998, %2092, %2097, %2055, %2074, %2028
  %2130 = load ptr, ptr %1759, align 8, !tbaa !37
  %2131 = getelementptr inbounds i8, ptr %2130, i64 %1981
  store ptr %2131, ptr %1759, align 8, !tbaa !37
  %2132 = icmp ugt i64 %1981, 65535
  %2133 = load ptr, ptr %1762, align 8, !tbaa !47
  br i1 %2132, label %2134, label %2141, !prof !48

2134:                                             ; preds = %2129
  store i32 1, ptr %1761, align 8, !tbaa !49
  %2135 = load ptr, ptr %1, align 8, !tbaa !50
  %2136 = ptrtoint ptr %2133 to i64
  %2137 = ptrtoint ptr %2135 to i64
  %2138 = sub i64 %2136, %2137
  %2139 = lshr exact i64 %2138, 3
  %2140 = trunc i64 %2139 to i32
  store i32 %2140, ptr %1763, align 4, !tbaa !51
  br label %2141

2141:                                             ; preds = %2134, %2129, %2125
  %2142 = phi ptr [ %2128, %2125 ], [ %2133, %2134 ], [ %2133, %2129 ]
  %2143 = trunc i64 %1981 to i16
  %2144 = getelementptr inbounds %struct.SeqDef_s, ptr %2142, i64 0, i32 1
  store i16 %2143, ptr %2144, align 4, !tbaa !52
  store i32 %1905, ptr %2142, align 4, !tbaa !54
  %2145 = add i64 %1978, -3
  %2146 = icmp ugt i64 %2145, 65535
  br i1 %2146, label %2147, label %2154, !prof !55

2147:                                             ; preds = %2141
  store i32 2, ptr %1761, align 8, !tbaa !49
  %2148 = load ptr, ptr %1, align 8, !tbaa !50
  %2149 = ptrtoint ptr %2142 to i64
  %2150 = ptrtoint ptr %2148 to i64
  %2151 = sub i64 %2149, %2150
  %2152 = lshr exact i64 %2151, 3
  %2153 = trunc i64 %2152 to i32
  store i32 %2153, ptr %1763, align 4, !tbaa !51
  br label %2154

2154:                                             ; preds = %2147, %2141
  %2155 = trunc i64 %2145 to i16
  %2156 = getelementptr inbounds %struct.SeqDef_s, ptr %2142, i64 0, i32 2
  store i16 %2155, ptr %2156, align 2, !tbaa !56
  %2157 = getelementptr inbounds %struct.SeqDef_s, ptr %2142, i64 1
  store ptr %2157, ptr %1762, align 8, !tbaa !47
  %2158 = getelementptr inbounds i8, ptr %1909, i64 %1978
  %2159 = icmp ugt ptr %2158, %41
  br i1 %2159, label %2288, label %2160

2160:                                             ; preds = %2154
  %2161 = add i32 %1903, 2
  %2162 = zext i32 %1903 to i64
  %2163 = getelementptr inbounds i8, ptr %61, i64 %2162
  %2164 = load i64, ptr %2163, align 1, !tbaa !19
  %2165 = mul i64 %2164, -3523014627193167104
  %2166 = lshr i64 %2165, %1754
  %2167 = getelementptr inbounds i32, ptr %12, i64 %2166
  store i32 %2161, ptr %2167, align 4, !tbaa !20
  %2168 = getelementptr inbounds i8, ptr %2158, i64 -2
  %2169 = ptrtoint ptr %2168 to i64
  %2170 = sub i64 %2169, %23
  %2171 = trunc i64 %2170 to i32
  %2172 = load i64, ptr %2168, align 1, !tbaa !19
  %2173 = mul i64 %2172, -3523014627193167104
  %2174 = lshr i64 %2173, %1754
  %2175 = getelementptr inbounds i32, ptr %12, i64 %2174
  store i32 %2171, ptr %2175, align 4, !tbaa !20
  %2176 = icmp eq i32 %1904, 0
  br i1 %2176, label %2288, label %2177

2177:                                             ; preds = %2160, %2283
  %2178 = phi ptr [ %2286, %2283 ], [ %2157, %2160 ]
  %2179 = phi ptr [ %2265, %2283 ], [ %2158, %2160 ]
  %2180 = phi i32 [ %2181, %2283 ], [ %1908, %2160 ]
  %2181 = phi i32 [ %2180, %2283 ], [ %1904, %2160 ]
  %2182 = load i32, ptr %2179, align 1, !tbaa !20
  %2183 = zext i32 %2181 to i64
  %2184 = sub nsw i64 0, %2183
  %2185 = getelementptr inbounds i8, ptr %2179, i64 %2184
  %2186 = load i32, ptr %2185, align 1, !tbaa !20
  %2187 = icmp eq i32 %2182, %2186
  br i1 %2187, label %2188, label %2288

2188:                                             ; preds = %2177
  %2189 = getelementptr inbounds i8, ptr %2179, i64 4
  %2190 = getelementptr inbounds i8, ptr %2189, i64 %2184
  %2191 = icmp ugt ptr %1755, %2189
  br i1 %2191, label %2192, label %2218

2192:                                             ; preds = %2188
  %2193 = load i64, ptr %2190, align 1, !tbaa !19
  %2194 = load i64, ptr %2189, align 1, !tbaa !19
  %2195 = xor i64 %2194, %2193
  %2196 = icmp eq i64 %2195, 0
  br i1 %2196, label %2200, label %2197

2197:                                             ; preds = %2192
  %2198 = tail call i64 @llvm.cttz.i64(i64 %2195, i1 true), !range !34
  %2199 = lshr i64 %2198, 3
  br label %2255

2200:                                             ; preds = %2192, %2206
  %2201 = phi ptr [ %2204, %2206 ], [ %2190, %2192 ]
  %2202 = phi ptr [ %2203, %2206 ], [ %2189, %2192 ]
  %2203 = getelementptr inbounds i8, ptr %2202, i64 8
  %2204 = getelementptr inbounds i8, ptr %2201, i64 8
  %2205 = icmp ult ptr %2203, %1755
  br i1 %2205, label %2206, label %2218

2206:                                             ; preds = %2200
  %2207 = load i64, ptr %2204, align 1, !tbaa !19
  %2208 = load i64, ptr %2203, align 1, !tbaa !19
  %2209 = xor i64 %2208, %2207
  %2210 = icmp eq i64 %2209, 0
  br i1 %2210, label %2200, label %2211

2211:                                             ; preds = %2206
  %2212 = tail call i64 @llvm.cttz.i64(i64 %2209, i1 true), !range !34
  %2213 = lshr i64 %2212, 3
  %2214 = getelementptr inbounds i8, ptr %2203, i64 %2213
  %2215 = ptrtoint ptr %2214 to i64
  %2216 = ptrtoint ptr %2189 to i64
  %2217 = sub i64 %2215, %2216
  br label %2255

2218:                                             ; preds = %2200, %2188
  %2219 = phi ptr [ %2190, %2188 ], [ %2204, %2200 ]
  %2220 = phi ptr [ %2189, %2188 ], [ %2203, %2200 ]
  %2221 = icmp ult ptr %2220, %1756
  br i1 %2221, label %2222, label %2229

2222:                                             ; preds = %2218
  %2223 = load i32, ptr %2219, align 1, !tbaa !20
  %2224 = load i32, ptr %2220, align 1, !tbaa !20
  %2225 = icmp eq i32 %2223, %2224
  br i1 %2225, label %2226, label %2229

2226:                                             ; preds = %2222
  %2227 = getelementptr inbounds i8, ptr %2220, i64 4
  %2228 = getelementptr inbounds i8, ptr %2219, i64 4
  br label %2229

2229:                                             ; preds = %2226, %2222, %2218
  %2230 = phi ptr [ %2228, %2226 ], [ %2219, %2222 ], [ %2219, %2218 ]
  %2231 = phi ptr [ %2227, %2226 ], [ %2220, %2222 ], [ %2220, %2218 ]
  %2232 = icmp ult ptr %2231, %1757
  br i1 %2232, label %2233, label %2240

2233:                                             ; preds = %2229
  %2234 = load i16, ptr %2230, align 1, !tbaa !35
  %2235 = load i16, ptr %2231, align 1, !tbaa !35
  %2236 = icmp eq i16 %2234, %2235
  br i1 %2236, label %2237, label %2240

2237:                                             ; preds = %2233
  %2238 = getelementptr inbounds i8, ptr %2231, i64 2
  %2239 = getelementptr inbounds i8, ptr %2230, i64 2
  br label %2240

2240:                                             ; preds = %2237, %2233, %2229
  %2241 = phi ptr [ %2239, %2237 ], [ %2230, %2233 ], [ %2230, %2229 ]
  %2242 = phi ptr [ %2238, %2237 ], [ %2231, %2233 ], [ %2231, %2229 ]
  %2243 = icmp ult ptr %2242, %40
  br i1 %2243, label %2244, label %2250

2244:                                             ; preds = %2240
  %2245 = load i8, ptr %2241, align 1, !tbaa !31
  %2246 = load i8, ptr %2242, align 1, !tbaa !31
  %2247 = icmp eq i8 %2245, %2246
  %2248 = zext i1 %2247 to i64
  %2249 = getelementptr inbounds i8, ptr %2242, i64 %2248
  br label %2250

2250:                                             ; preds = %2244, %2240
  %2251 = phi ptr [ %2242, %2240 ], [ %2249, %2244 ]
  %2252 = ptrtoint ptr %2251 to i64
  %2253 = ptrtoint ptr %2189 to i64
  %2254 = sub i64 %2252, %2253
  br label %2255

2255:                                             ; preds = %2250, %2211, %2197
  %2256 = phi i64 [ %2254, %2250 ], [ %2199, %2197 ], [ %2217, %2211 ]
  %2257 = add i64 %2256, 4
  %2258 = ptrtoint ptr %2179 to i64
  %2259 = sub i64 %2258, %23
  %2260 = trunc i64 %2259 to i32
  %2261 = load i64, ptr %2179, align 1, !tbaa !19
  %2262 = mul i64 %2261, -3523014627193167104
  %2263 = lshr i64 %2262, %1754
  %2264 = getelementptr inbounds i32, ptr %12, i64 %2263
  store i32 %2260, ptr %2264, align 4, !tbaa !20
  %2265 = getelementptr inbounds i8, ptr %2179, i64 %2257
  %2266 = icmp ugt ptr %2179, %1758
  br i1 %2266, label %2271, label %2267

2267:                                             ; preds = %2255
  %2268 = load ptr, ptr %1759, align 8, !tbaa !37
  %2269 = load <2 x i64>, ptr %2179, align 1, !tbaa !31
  store <2 x i64> %2269, ptr %2268, align 1, !tbaa !31
  %2270 = load ptr, ptr %1762, align 8, !tbaa !47
  br label %2271

2271:                                             ; preds = %2267, %2255
  %2272 = phi ptr [ %2178, %2255 ], [ %2270, %2267 ]
  %2273 = getelementptr inbounds %struct.SeqDef_s, ptr %2272, i64 0, i32 1
  store i16 0, ptr %2273, align 4, !tbaa !52
  store i32 1, ptr %2272, align 4, !tbaa !54
  %2274 = add i64 %2256, 1
  %2275 = icmp ugt i64 %2274, 65535
  br i1 %2275, label %2276, label %2283, !prof !55

2276:                                             ; preds = %2271
  store i32 2, ptr %1761, align 8, !tbaa !49
  %2277 = load ptr, ptr %1, align 8, !tbaa !50
  %2278 = ptrtoint ptr %2272 to i64
  %2279 = ptrtoint ptr %2277 to i64
  %2280 = sub i64 %2278, %2279
  %2281 = lshr exact i64 %2280, 3
  %2282 = trunc i64 %2281 to i32
  store i32 %2282, ptr %1763, align 4, !tbaa !51
  br label %2283

2283:                                             ; preds = %2276, %2271
  %2284 = trunc i64 %2274 to i16
  %2285 = getelementptr inbounds %struct.SeqDef_s, ptr %2272, i64 0, i32 2
  store i16 %2284, ptr %2285, align 2, !tbaa !56
  %2286 = getelementptr inbounds %struct.SeqDef_s, ptr %2272, i64 1
  store ptr %2286, ptr %1762, align 8, !tbaa !47
  %2287 = icmp ugt ptr %2265, %41
  br i1 %2287, label %2288, label %2177

2288:                                             ; preds = %2283, %2177, %2160, %2154
  %2289 = phi i32 [ 0, %2160 ], [ %1904, %2154 ], [ %2181, %2177 ], [ %2180, %2283 ]
  %2290 = phi i32 [ %1908, %2160 ], [ %1908, %2154 ], [ %2180, %2177 ], [ %2181, %2283 ]
  %2291 = phi ptr [ %2158, %2160 ], [ %2158, %2154 ], [ %2179, %2177 ], [ %2265, %2283 ]
  %2292 = getelementptr inbounds i8, ptr %2291, i64 %19
  %2293 = getelementptr inbounds i8, ptr %2292, i64 1
  %2294 = icmp ult ptr %2293, %41
  br i1 %2294, label %1764, label %2295

2295:                                             ; preds = %2288, %1858, %1749
  %2296 = phi i32 [ %58, %1749 ], [ %1770, %1858 ], [ %2289, %2288 ]
  %2297 = phi i32 [ %60, %1749 ], [ %1769, %1858 ], [ %2290, %2288 ]
  %2298 = phi ptr [ %3, %1749 ], [ %1767, %1858 ], [ %2291, %2288 ]
  %2299 = select i1 %59, i32 %42, i32 0
  %2300 = select i1 %57, i32 %44, i32 0
  %2301 = icmp ne i32 %2299, 0
  %2302 = icmp ne i32 %2297, 0
  %2303 = select i1 %2301, i1 %2302, i1 false
  %2304 = select i1 %2303, i32 %2299, i32 %2300
  %2305 = select i1 %2302, i32 %2297, i32 %2299
  store i32 %2305, ptr %2, align 4, !tbaa !20
  %2306 = icmp eq i32 %2296, 0
  %2307 = select i1 %2306, i32 %2304, i32 %2296
  br label %4874

2308:                                             ; preds = %5
  switch i32 %8, label %2309 [
    i32 7, label %4234
    i32 5, label %2954
    i32 6, label %3594
  ]

2309:                                             ; preds = %2308
  br i1 %64, label %2310, label %2941

2310:                                             ; preds = %2309
  %2311 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 2
  %2312 = load i32, ptr %2311, align 4, !tbaa !18
  %2313 = sub i32 32, %2312
  %2314 = getelementptr inbounds i8, ptr %40, i64 -7
  %2315 = getelementptr inbounds i8, ptr %40, i64 -3
  %2316 = getelementptr inbounds i8, ptr %40, i64 -1
  %2317 = getelementptr inbounds i8, ptr %40, i64 -32
  %2318 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %2319 = ptrtoint ptr %2317 to i64
  %2320 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %2321 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %2322 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  br label %2323

2323:                                             ; preds = %2934, %2310
  %2324 = phi ptr [ %63, %2310 ], [ %2939, %2934 ]
  %2325 = phi ptr [ %62, %2310 ], [ %2938, %2934 ]
  %2326 = phi ptr [ %3, %2310 ], [ %2937, %2934 ]
  %2327 = phi ptr [ %47, %2310 ], [ %2937, %2934 ]
  %2328 = phi i32 [ %60, %2310 ], [ %2936, %2934 ]
  %2329 = phi i32 [ %58, %2310 ], [ %2935, %2934 ]
  %2330 = freeze i32 %2328
  %2331 = getelementptr inbounds i8, ptr %2327, i64 1
  %2332 = getelementptr inbounds i8, ptr %2327, i64 128
  %2333 = load i32, ptr %2327, align 1, !tbaa !20
  %2334 = mul i32 %2333, -1640531535
  %2335 = lshr i32 %2334, %2313
  %2336 = zext i32 %2335 to i64
  %2337 = load i32, ptr %2331, align 1, !tbaa !20
  %2338 = getelementptr inbounds i32, ptr %12, i64 %2336
  %2339 = load i32, ptr %2338, align 4, !tbaa !20
  %2340 = zext i32 %2330 to i64
  %2341 = sub nsw i64 0, %2340
  %2342 = icmp eq i32 %2330, 0
  br i1 %2342, label %2343, label %2412

2343:                                             ; preds = %2323, %2408
  %2344 = phi i64 [ %2379, %2408 ], [ %2336, %2323 ]
  %2345 = phi i32 [ %2399, %2408 ], [ %2337, %2323 ]
  %2346 = phi i32 [ %2398, %2408 ], [ %2339, %2323 ]
  %2347 = phi i64 [ %2409, %2408 ], [ %19, %2323 ]
  %2348 = phi ptr [ %2410, %2408 ], [ %2332, %2323 ]
  %2349 = phi ptr [ %2401, %2408 ], [ %2324, %2323 ]
  %2350 = phi ptr [ %2400, %2408 ], [ %2325, %2323 ]
  %2351 = phi ptr [ %2349, %2408 ], [ %2331, %2323 ]
  %2352 = phi ptr [ %2350, %2408 ], [ %2327, %2323 ]
  %2353 = mul i32 %2345, -1640531535
  %2354 = lshr i32 %2353, %2313
  %2355 = zext i32 %2354 to i64
  %2356 = ptrtoint ptr %2352 to i64
  %2357 = sub i64 %2356, %23
  %2358 = trunc i64 %2357 to i32
  %2359 = getelementptr inbounds i32, ptr %12, i64 %2344
  store i32 %2358, ptr %2359, align 4, !tbaa !20
  %2360 = load i32, ptr %2350, align 1, !tbaa !20
  %2361 = icmp ult i32 %2346, %37
  br i1 %2361, label %2367, label %2362

2362:                                             ; preds = %2343
  %2363 = zext i32 %2346 to i64
  %2364 = getelementptr inbounds i8, ptr %21, i64 %2363
  %2365 = load i32, ptr %2364, align 1, !tbaa !20
  %2366 = load i32, ptr %2352, align 1, !tbaa !20
  br label %2370

2367:                                             ; preds = %2343
  %2368 = load i32, ptr %2352, align 1, !tbaa !20
  %2369 = xor i32 %2368, 1
  br label %2370

2370:                                             ; preds = %2367, %2362
  %2371 = phi i32 [ %2366, %2362 ], [ %2368, %2367 ]
  %2372 = phi i32 [ %2365, %2362 ], [ %2369, %2367 ]
  %2373 = icmp eq i32 %2371, %2372
  br i1 %2373, label %2508, label %2374

2374:                                             ; preds = %2370
  %2375 = getelementptr inbounds i32, ptr %12, i64 %2355
  %2376 = load i32, ptr %2375, align 4, !tbaa !20
  %2377 = mul i32 %2360, -1640531535
  %2378 = lshr i32 %2377, %2313
  %2379 = zext i32 %2378 to i64
  %2380 = ptrtoint ptr %2351 to i64
  %2381 = sub i64 %2380, %23
  %2382 = trunc i64 %2381 to i32
  store i32 %2382, ptr %2375, align 4, !tbaa !20
  %2383 = icmp ult i32 %2376, %37
  br i1 %2383, label %2389, label %2384

2384:                                             ; preds = %2374
  %2385 = zext i32 %2376 to i64
  %2386 = getelementptr inbounds i8, ptr %21, i64 %2385
  %2387 = load i32, ptr %2386, align 1, !tbaa !20
  %2388 = load i32, ptr %2351, align 1, !tbaa !20
  br label %2392

2389:                                             ; preds = %2374
  %2390 = load i32, ptr %2351, align 1, !tbaa !20
  %2391 = xor i32 %2390, 1
  br label %2392

2392:                                             ; preds = %2389, %2384
  %2393 = phi i32 [ %2388, %2384 ], [ %2390, %2389 ]
  %2394 = phi i32 [ %2387, %2384 ], [ %2391, %2389 ]
  %2395 = icmp eq i32 %2393, %2394
  br i1 %2395, label %2469, label %2396

2396:                                             ; preds = %2392
  %2397 = getelementptr inbounds i32, ptr %12, i64 %2379
  %2398 = load i32, ptr %2397, align 4, !tbaa !20
  %2399 = load i32, ptr %2349, align 1, !tbaa !20
  %2400 = getelementptr inbounds i8, ptr %2350, i64 %2347
  %2401 = getelementptr inbounds i8, ptr %2349, i64 %2347
  %2402 = icmp ult ptr %2400, %2348
  br i1 %2402, label %2408, label %2403

2403:                                             ; preds = %2396
  %2404 = add i64 %2347, 1
  %2405 = getelementptr inbounds i8, ptr %2349, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %2405, i32 0, i32 3, i32 1)
  %2406 = getelementptr inbounds i8, ptr %2349, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %2406, i32 0, i32 3, i32 1)
  %2407 = getelementptr inbounds i8, ptr %2348, i64 128
  br label %2408

2408:                                             ; preds = %2403, %2396
  %2409 = phi i64 [ %2347, %2396 ], [ %2404, %2403 ]
  %2410 = phi ptr [ %2348, %2396 ], [ %2407, %2403 ]
  %2411 = icmp ult ptr %2401, %41
  br i1 %2411, label %2343, label %2941, !llvm.loop !32

2412:                                             ; preds = %2323, %2504
  %2413 = phi i64 [ %2452, %2504 ], [ %2336, %2323 ]
  %2414 = phi i32 [ %2480, %2504 ], [ %2337, %2323 ]
  %2415 = phi i32 [ %2479, %2504 ], [ %2339, %2323 ]
  %2416 = phi i64 [ %2505, %2504 ], [ %19, %2323 ]
  %2417 = phi ptr [ %2506, %2504 ], [ %2332, %2323 ]
  %2418 = phi ptr [ %2482, %2504 ], [ %2324, %2323 ]
  %2419 = phi ptr [ %2481, %2504 ], [ %2325, %2323 ]
  %2420 = phi ptr [ %2418, %2504 ], [ %2331, %2323 ]
  %2421 = phi ptr [ %2419, %2504 ], [ %2327, %2323 ]
  %2422 = mul i32 %2414, -1640531535
  %2423 = lshr i32 %2422, %2313
  %2424 = zext i32 %2423 to i64
  %2425 = getelementptr inbounds i8, ptr %2419, i64 %2341
  %2426 = load i32, ptr %2425, align 1, !tbaa !20
  %2427 = ptrtoint ptr %2421 to i64
  %2428 = sub i64 %2427, %23
  %2429 = trunc i64 %2428 to i32
  %2430 = getelementptr inbounds i32, ptr %12, i64 %2413
  store i32 %2429, ptr %2430, align 4, !tbaa !20
  %2431 = load i32, ptr %2419, align 1, !tbaa !20
  %2432 = icmp eq i32 %2431, %2426
  br i1 %2432, label %2489, label %2433

2433:                                             ; preds = %2412
  %2434 = icmp ult i32 %2415, %37
  br i1 %2434, label %2440, label %2435

2435:                                             ; preds = %2433
  %2436 = zext i32 %2415 to i64
  %2437 = getelementptr inbounds i8, ptr %21, i64 %2436
  %2438 = load i32, ptr %2437, align 1, !tbaa !20
  %2439 = load i32, ptr %2421, align 1, !tbaa !20
  br label %2443

2440:                                             ; preds = %2433
  %2441 = load i32, ptr %2421, align 1, !tbaa !20
  %2442 = xor i32 %2441, 1
  br label %2443

2443:                                             ; preds = %2440, %2435
  %2444 = phi i32 [ %2439, %2435 ], [ %2441, %2440 ]
  %2445 = phi i32 [ %2438, %2435 ], [ %2442, %2440 ]
  %2446 = icmp eq i32 %2444, %2445
  br i1 %2446, label %2508, label %2447

2447:                                             ; preds = %2443
  %2448 = getelementptr inbounds i32, ptr %12, i64 %2424
  %2449 = load i32, ptr %2448, align 4, !tbaa !20
  %2450 = mul i32 %2431, -1640531535
  %2451 = lshr i32 %2450, %2313
  %2452 = zext i32 %2451 to i64
  %2453 = ptrtoint ptr %2420 to i64
  %2454 = sub i64 %2453, %23
  %2455 = trunc i64 %2454 to i32
  store i32 %2455, ptr %2448, align 4, !tbaa !20
  %2456 = icmp ult i32 %2449, %37
  br i1 %2456, label %2462, label %2457

2457:                                             ; preds = %2447
  %2458 = zext i32 %2449 to i64
  %2459 = getelementptr inbounds i8, ptr %21, i64 %2458
  %2460 = load i32, ptr %2459, align 1, !tbaa !20
  %2461 = load i32, ptr %2420, align 1, !tbaa !20
  br label %2465

2462:                                             ; preds = %2447
  %2463 = load i32, ptr %2420, align 1, !tbaa !20
  %2464 = xor i32 %2463, 1
  br label %2465

2465:                                             ; preds = %2462, %2457
  %2466 = phi i32 [ %2461, %2457 ], [ %2463, %2462 ]
  %2467 = phi i32 [ %2460, %2457 ], [ %2464, %2462 ]
  %2468 = icmp eq i32 %2466, %2467
  br i1 %2468, label %2469, label %2477

2469:                                             ; preds = %2465, %2392
  %2470 = phi i32 [ %2376, %2392 ], [ %2449, %2465 ]
  %2471 = phi i64 [ %2379, %2392 ], [ %2452, %2465 ]
  %2472 = phi i32 [ %2382, %2392 ], [ %2455, %2465 ]
  %2473 = phi i64 [ %2347, %2392 ], [ %2416, %2465 ]
  %2474 = phi ptr [ %2350, %2392 ], [ %2419, %2465 ]
  %2475 = phi ptr [ %2351, %2392 ], [ %2420, %2465 ]
  %2476 = icmp ult i64 %2473, 5
  br i1 %2476, label %2508, label %2518

2477:                                             ; preds = %2465
  %2478 = getelementptr inbounds i32, ptr %12, i64 %2452
  %2479 = load i32, ptr %2478, align 4, !tbaa !20
  %2480 = load i32, ptr %2418, align 1, !tbaa !20
  %2481 = getelementptr inbounds i8, ptr %2419, i64 %2416
  %2482 = getelementptr inbounds i8, ptr %2418, i64 %2416
  %2483 = icmp ult ptr %2481, %2417
  br i1 %2483, label %2504, label %2484

2484:                                             ; preds = %2477
  %2485 = add i64 %2416, 1
  %2486 = getelementptr inbounds i8, ptr %2418, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %2486, i32 0, i32 3, i32 1)
  %2487 = getelementptr inbounds i8, ptr %2418, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %2487, i32 0, i32 3, i32 1)
  %2488 = getelementptr inbounds i8, ptr %2417, i64 128
  br label %2504

2489:                                             ; preds = %2412
  %2490 = getelementptr inbounds i8, ptr %2419, i64 %2341
  %2491 = getelementptr inbounds i8, ptr %2419, i64 -1
  %2492 = load i8, ptr %2491, align 1, !tbaa !31
  %2493 = getelementptr inbounds i8, ptr %2490, i64 -1
  %2494 = load i8, ptr %2493, align 1, !tbaa !31
  %2495 = icmp eq i8 %2492, %2494
  %2496 = sext i1 %2495 to i64
  %2497 = getelementptr inbounds i8, ptr %2419, i64 %2496
  %2498 = getelementptr inbounds i8, ptr %2490, i64 %2496
  %2499 = select i1 %2495, i64 5, i64 4
  %2500 = ptrtoint ptr %2420 to i64
  %2501 = sub i64 %2500, %23
  %2502 = trunc i64 %2501 to i32
  %2503 = getelementptr inbounds i32, ptr %12, i64 %2424
  store i32 %2502, ptr %2503, align 4, !tbaa !20
  br label %2546

2504:                                             ; preds = %2484, %2477
  %2505 = phi i64 [ %2416, %2477 ], [ %2485, %2484 ]
  %2506 = phi ptr [ %2417, %2477 ], [ %2488, %2484 ]
  %2507 = icmp ult ptr %2482, %41
  br i1 %2507, label %2412, label %2941, !llvm.loop !32

2508:                                             ; preds = %2443, %2370, %2469
  %2509 = phi ptr [ %2474, %2469 ], [ %2351, %2370 ], [ %2420, %2443 ]
  %2510 = phi i64 [ %2471, %2469 ], [ %2355, %2370 ], [ %2424, %2443 ]
  %2511 = phi i32 [ %2470, %2469 ], [ %2346, %2370 ], [ %2415, %2443 ]
  %2512 = phi i32 [ %2472, %2469 ], [ %2358, %2370 ], [ %2429, %2443 ]
  %2513 = phi ptr [ %2475, %2469 ], [ %2352, %2370 ], [ %2421, %2443 ]
  %2514 = ptrtoint ptr %2509 to i64
  %2515 = sub i64 %2514, %23
  %2516 = trunc i64 %2515 to i32
  %2517 = getelementptr inbounds i32, ptr %12, i64 %2510
  store i32 %2516, ptr %2517, align 4, !tbaa !20
  br label %2518

2518:                                             ; preds = %2508, %2469
  %2519 = phi i32 [ %2470, %2469 ], [ %2511, %2508 ]
  %2520 = phi i32 [ %2472, %2469 ], [ %2512, %2508 ]
  %2521 = phi ptr [ %2475, %2469 ], [ %2513, %2508 ]
  %2522 = zext i32 %2519 to i64
  %2523 = getelementptr inbounds i8, ptr %21, i64 %2522
  %2524 = ptrtoint ptr %2521 to i64
  %2525 = ptrtoint ptr %2523 to i64
  %2526 = sub i64 %2524, %2525
  %2527 = trunc i64 %2526 to i32
  %2528 = add i32 %2527, 3
  %2529 = icmp ugt ptr %2521, %2326
  %2530 = icmp ugt i32 %2519, %37
  %2531 = and i1 %2530, %2529
  br i1 %2531, label %2532, label %2546

2532:                                             ; preds = %2518, %2541
  %2533 = phi ptr [ %2536, %2541 ], [ %2521, %2518 ]
  %2534 = phi i64 [ %2542, %2541 ], [ 4, %2518 ]
  %2535 = phi ptr [ %2538, %2541 ], [ %2523, %2518 ]
  %2536 = getelementptr inbounds i8, ptr %2533, i64 -1
  %2537 = load i8, ptr %2536, align 1, !tbaa !31
  %2538 = getelementptr inbounds i8, ptr %2535, i64 -1
  %2539 = load i8, ptr %2538, align 1, !tbaa !31
  %2540 = icmp eq i8 %2537, %2539
  br i1 %2540, label %2541, label %2546

2541:                                             ; preds = %2532
  %2542 = add i64 %2534, 1
  %2543 = icmp ugt ptr %2536, %2326
  %2544 = icmp ugt ptr %2538, %39
  %2545 = and i1 %2543, %2544
  br i1 %2545, label %2532, label %2546, !llvm.loop !33

2546:                                             ; preds = %2541, %2532, %2518, %2489
  %2547 = phi i32 [ %2429, %2489 ], [ %2520, %2518 ], [ %2520, %2532 ], [ %2520, %2541 ]
  %2548 = phi i32 [ %2329, %2489 ], [ %2330, %2518 ], [ %2330, %2532 ], [ %2330, %2541 ]
  %2549 = phi i32 [ 1, %2489 ], [ %2528, %2518 ], [ %2528, %2532 ], [ %2528, %2541 ]
  %2550 = phi ptr [ %2498, %2489 ], [ %2523, %2518 ], [ %2538, %2541 ], [ %2535, %2532 ]
  %2551 = phi i64 [ %2499, %2489 ], [ 4, %2518 ], [ %2542, %2541 ], [ %2534, %2532 ]
  %2552 = phi i32 [ %2330, %2489 ], [ %2527, %2518 ], [ %2527, %2532 ], [ %2527, %2541 ]
  %2553 = phi ptr [ %2497, %2489 ], [ %2521, %2518 ], [ %2536, %2541 ], [ %2533, %2532 ]
  %2554 = getelementptr inbounds i8, ptr %2553, i64 %2551
  %2555 = getelementptr inbounds i8, ptr %2550, i64 %2551
  %2556 = icmp ugt ptr %2314, %2554
  br i1 %2556, label %2557, label %2583

2557:                                             ; preds = %2546
  %2558 = load i64, ptr %2555, align 1, !tbaa !19
  %2559 = load i64, ptr %2554, align 1, !tbaa !19
  %2560 = xor i64 %2559, %2558
  %2561 = icmp eq i64 %2560, 0
  br i1 %2561, label %2565, label %2562

2562:                                             ; preds = %2557
  %2563 = tail call i64 @llvm.cttz.i64(i64 %2560, i1 true), !range !34
  %2564 = lshr i64 %2563, 3
  br label %2620

2565:                                             ; preds = %2557, %2571
  %2566 = phi ptr [ %2569, %2571 ], [ %2555, %2557 ]
  %2567 = phi ptr [ %2568, %2571 ], [ %2554, %2557 ]
  %2568 = getelementptr inbounds i8, ptr %2567, i64 8
  %2569 = getelementptr inbounds i8, ptr %2566, i64 8
  %2570 = icmp ult ptr %2568, %2314
  br i1 %2570, label %2571, label %2583

2571:                                             ; preds = %2565
  %2572 = load i64, ptr %2569, align 1, !tbaa !19
  %2573 = load i64, ptr %2568, align 1, !tbaa !19
  %2574 = xor i64 %2573, %2572
  %2575 = icmp eq i64 %2574, 0
  br i1 %2575, label %2565, label %2576

2576:                                             ; preds = %2571
  %2577 = tail call i64 @llvm.cttz.i64(i64 %2574, i1 true), !range !34
  %2578 = lshr i64 %2577, 3
  %2579 = getelementptr inbounds i8, ptr %2568, i64 %2578
  %2580 = ptrtoint ptr %2579 to i64
  %2581 = ptrtoint ptr %2554 to i64
  %2582 = sub i64 %2580, %2581
  br label %2620

2583:                                             ; preds = %2565, %2546
  %2584 = phi ptr [ %2555, %2546 ], [ %2569, %2565 ]
  %2585 = phi ptr [ %2554, %2546 ], [ %2568, %2565 ]
  %2586 = icmp ult ptr %2585, %2315
  br i1 %2586, label %2587, label %2594

2587:                                             ; preds = %2583
  %2588 = load i32, ptr %2584, align 1, !tbaa !20
  %2589 = load i32, ptr %2585, align 1, !tbaa !20
  %2590 = icmp eq i32 %2588, %2589
  br i1 %2590, label %2591, label %2594

2591:                                             ; preds = %2587
  %2592 = getelementptr inbounds i8, ptr %2585, i64 4
  %2593 = getelementptr inbounds i8, ptr %2584, i64 4
  br label %2594

2594:                                             ; preds = %2591, %2587, %2583
  %2595 = phi ptr [ %2593, %2591 ], [ %2584, %2587 ], [ %2584, %2583 ]
  %2596 = phi ptr [ %2592, %2591 ], [ %2585, %2587 ], [ %2585, %2583 ]
  %2597 = icmp ult ptr %2596, %2316
  br i1 %2597, label %2598, label %2605

2598:                                             ; preds = %2594
  %2599 = load i16, ptr %2595, align 1, !tbaa !35
  %2600 = load i16, ptr %2596, align 1, !tbaa !35
  %2601 = icmp eq i16 %2599, %2600
  br i1 %2601, label %2602, label %2605

2602:                                             ; preds = %2598
  %2603 = getelementptr inbounds i8, ptr %2596, i64 2
  %2604 = getelementptr inbounds i8, ptr %2595, i64 2
  br label %2605

2605:                                             ; preds = %2602, %2598, %2594
  %2606 = phi ptr [ %2604, %2602 ], [ %2595, %2598 ], [ %2595, %2594 ]
  %2607 = phi ptr [ %2603, %2602 ], [ %2596, %2598 ], [ %2596, %2594 ]
  %2608 = icmp ult ptr %2607, %40
  br i1 %2608, label %2609, label %2615

2609:                                             ; preds = %2605
  %2610 = load i8, ptr %2606, align 1, !tbaa !31
  %2611 = load i8, ptr %2607, align 1, !tbaa !31
  %2612 = icmp eq i8 %2610, %2611
  %2613 = zext i1 %2612 to i64
  %2614 = getelementptr inbounds i8, ptr %2607, i64 %2613
  br label %2615

2615:                                             ; preds = %2609, %2605
  %2616 = phi ptr [ %2607, %2605 ], [ %2614, %2609 ]
  %2617 = ptrtoint ptr %2616 to i64
  %2618 = ptrtoint ptr %2554 to i64
  %2619 = sub i64 %2617, %2618
  br label %2620

2620:                                             ; preds = %2615, %2576, %2562
  %2621 = phi i64 [ %2619, %2615 ], [ %2564, %2562 ], [ %2582, %2576 ]
  %2622 = add i64 %2621, %2551
  %2623 = ptrtoint ptr %2553 to i64
  %2624 = ptrtoint ptr %2326 to i64
  %2625 = sub i64 %2623, %2624
  %2626 = getelementptr inbounds i8, ptr %2326, i64 %2625
  %2627 = icmp ugt ptr %2626, %2317
  %2628 = load ptr, ptr %2318, align 8, !tbaa !37
  br i1 %2627, label %2652, label %2629

2629:                                             ; preds = %2620
  %2630 = load <2 x i64>, ptr %2326, align 1, !tbaa !31
  store <2 x i64> %2630, ptr %2628, align 1, !tbaa !31
  %2631 = icmp ugt i64 %2625, 16
  br i1 %2631, label %2632, label %2769

2632:                                             ; preds = %2629
  %2633 = load ptr, ptr %2318, align 8, !tbaa !37
  %2634 = getelementptr inbounds i8, ptr %2633, i64 16
  %2635 = getelementptr inbounds i8, ptr %2326, i64 16
  %2636 = add i64 %2625, -16
  %2637 = getelementptr inbounds i8, ptr %2633, i64 %2625
  %2638 = load <2 x i64>, ptr %2635, align 1, !tbaa !31
  store <2 x i64> %2638, ptr %2634, align 1, !tbaa !31
  %2639 = icmp ult i64 %2636, 17
  br i1 %2639, label %2769, label %2640

2640:                                             ; preds = %2632
  %2641 = getelementptr inbounds i8, ptr %2633, i64 32
  br label %2642

2642:                                             ; preds = %2642, %2640
  %2643 = phi ptr [ %2641, %2640 ], [ %2650, %2642 ]
  %2644 = phi ptr [ %2635, %2640 ], [ %2648, %2642 ]
  %2645 = getelementptr inbounds i8, ptr %2644, i64 16
  %2646 = load <2 x i64>, ptr %2645, align 1, !tbaa !31
  store <2 x i64> %2646, ptr %2643, align 1, !tbaa !31
  %2647 = getelementptr inbounds i8, ptr %2643, i64 16
  %2648 = getelementptr inbounds i8, ptr %2644, i64 32
  %2649 = load <2 x i64>, ptr %2648, align 1, !tbaa !31
  store <2 x i64> %2649, ptr %2647, align 1, !tbaa !31
  %2650 = getelementptr inbounds i8, ptr %2643, i64 32
  %2651 = icmp ult ptr %2650, %2637
  br i1 %2651, label %2642, label %2773, !llvm.loop !39

2652:                                             ; preds = %2620
  %2653 = ptrtoint ptr %2626 to i64
  %2654 = icmp ugt ptr %2326, %2317
  br i1 %2654, label %2672, label %2655

2655:                                             ; preds = %2652
  %2656 = sub i64 %2319, %2624
  %2657 = getelementptr inbounds i8, ptr %2628, i64 %2656
  %2658 = load <2 x i64>, ptr %2326, align 1, !tbaa !31
  store <2 x i64> %2658, ptr %2628, align 1, !tbaa !31
  %2659 = icmp ult i64 %2656, 17
  br i1 %2659, label %2672, label %2660

2660:                                             ; preds = %2655
  %2661 = getelementptr inbounds i8, ptr %2628, i64 16
  br label %2662

2662:                                             ; preds = %2662, %2660
  %2663 = phi ptr [ %2661, %2660 ], [ %2670, %2662 ]
  %2664 = phi ptr [ %2326, %2660 ], [ %2668, %2662 ]
  %2665 = getelementptr inbounds i8, ptr %2664, i64 16
  %2666 = load <2 x i64>, ptr %2665, align 1, !tbaa !31
  store <2 x i64> %2666, ptr %2663, align 1, !tbaa !31
  %2667 = getelementptr inbounds i8, ptr %2663, i64 16
  %2668 = getelementptr inbounds i8, ptr %2664, i64 32
  %2669 = load <2 x i64>, ptr %2668, align 1, !tbaa !31
  store <2 x i64> %2669, ptr %2667, align 1, !tbaa !31
  %2670 = getelementptr inbounds i8, ptr %2663, i64 32
  %2671 = icmp ult ptr %2670, %2657
  br i1 %2671, label %2662, label %2672, !llvm.loop !39

2672:                                             ; preds = %2662, %2655, %2652
  %2673 = phi ptr [ %2317, %2655 ], [ %2326, %2652 ], [ %2317, %2662 ]
  %2674 = phi ptr [ %2657, %2655 ], [ %2628, %2652 ], [ %2657, %2662 ]
  %2675 = icmp ult ptr %2673, %2626
  br i1 %2675, label %2676, label %2773

2676:                                             ; preds = %2672
  %2677 = ptrtoint ptr %2674 to i64
  %2678 = ptrtoint ptr %2673 to i64
  %2679 = sub i64 %2653, %2678
  %2680 = getelementptr i8, ptr %2673, i64 %2679
  %2681 = icmp ult i64 %2679, 8
  %2682 = sub i64 %2677, %2678
  %2683 = icmp ult i64 %2682, 32
  %2684 = select i1 %2681, i1 true, i1 %2683
  br i1 %2684, label %2720, label %2685

2685:                                             ; preds = %2676
  %2686 = icmp ult i64 %2679, 32
  br i1 %2686, label %2706, label %2687

2687:                                             ; preds = %2685
  %2688 = and i64 %2679, -32
  br label %2689

2689:                                             ; preds = %2689, %2687
  %2690 = phi i64 [ 0, %2687 ], [ %2697, %2689 ]
  %2691 = getelementptr i8, ptr %2674, i64 %2690
  %2692 = getelementptr i8, ptr %2673, i64 %2690
  %2693 = getelementptr i8, ptr %2692, i64 16
  %2694 = load <16 x i8>, ptr %2692, align 1, !tbaa !31
  %2695 = load <16 x i8>, ptr %2693, align 1, !tbaa !31
  %2696 = getelementptr i8, ptr %2691, i64 16
  store <16 x i8> %2694, ptr %2691, align 1, !tbaa !31
  store <16 x i8> %2695, ptr %2696, align 1, !tbaa !31
  %2697 = add nuw i64 %2690, 32
  %2698 = icmp eq i64 %2697, %2688
  br i1 %2698, label %2699, label %2689, !llvm.loop !69

2699:                                             ; preds = %2689
  %2700 = icmp eq i64 %2679, %2688
  br i1 %2700, label %2773, label %2701

2701:                                             ; preds = %2699
  %2702 = getelementptr i8, ptr %2673, i64 %2688
  %2703 = getelementptr i8, ptr %2674, i64 %2688
  %2704 = and i64 %2679, 24
  %2705 = icmp eq i64 %2704, 0
  br i1 %2705, label %2720, label %2706

2706:                                             ; preds = %2685, %2701
  %2707 = phi i64 [ %2688, %2701 ], [ 0, %2685 ]
  %2708 = and i64 %2679, -8
  %2709 = getelementptr i8, ptr %2674, i64 %2708
  %2710 = getelementptr i8, ptr %2673, i64 %2708
  br label %2711

2711:                                             ; preds = %2711, %2706
  %2712 = phi i64 [ %2707, %2706 ], [ %2716, %2711 ]
  %2713 = getelementptr i8, ptr %2674, i64 %2712
  %2714 = getelementptr i8, ptr %2673, i64 %2712
  %2715 = load <8 x i8>, ptr %2714, align 1, !tbaa !31
  store <8 x i8> %2715, ptr %2713, align 1, !tbaa !31
  %2716 = add nuw i64 %2712, 8
  %2717 = icmp eq i64 %2716, %2708
  br i1 %2717, label %2718, label %2711, !llvm.loop !70

2718:                                             ; preds = %2711
  %2719 = icmp eq i64 %2679, %2708
  br i1 %2719, label %2773, label %2720

2720:                                             ; preds = %2676, %2701, %2718
  %2721 = phi ptr [ %2674, %2676 ], [ %2703, %2701 ], [ %2709, %2718 ]
  %2722 = phi ptr [ %2673, %2676 ], [ %2702, %2701 ], [ %2710, %2718 ]
  %2723 = ptrtoint ptr %2722 to i64
  %2724 = sub i64 %2623, %2723
  %2725 = and i64 %2724, 7
  %2726 = icmp eq i64 %2725, 0
  br i1 %2726, label %2736, label %2727

2727:                                             ; preds = %2720, %2727
  %2728 = phi ptr [ %2733, %2727 ], [ %2721, %2720 ]
  %2729 = phi ptr [ %2731, %2727 ], [ %2722, %2720 ]
  %2730 = phi i64 [ %2734, %2727 ], [ 0, %2720 ]
  %2731 = getelementptr inbounds i8, ptr %2729, i64 1
  %2732 = load i8, ptr %2729, align 1, !tbaa !31
  %2733 = getelementptr inbounds i8, ptr %2728, i64 1
  store i8 %2732, ptr %2728, align 1, !tbaa !31
  %2734 = add i64 %2730, 1
  %2735 = icmp eq i64 %2734, %2725
  br i1 %2735, label %2736, label %2727, !llvm.loop !71

2736:                                             ; preds = %2727, %2720
  %2737 = phi ptr [ %2721, %2720 ], [ %2733, %2727 ]
  %2738 = phi ptr [ %2722, %2720 ], [ %2731, %2727 ]
  %2739 = sub i64 %2723, %2623
  %2740 = icmp ugt i64 %2739, -8
  br i1 %2740, label %2773, label %2741

2741:                                             ; preds = %2736, %2741
  %2742 = phi ptr [ %2767, %2741 ], [ %2737, %2736 ]
  %2743 = phi ptr [ %2765, %2741 ], [ %2738, %2736 ]
  %2744 = getelementptr inbounds i8, ptr %2743, i64 1
  %2745 = load i8, ptr %2743, align 1, !tbaa !31
  %2746 = getelementptr inbounds i8, ptr %2742, i64 1
  store i8 %2745, ptr %2742, align 1, !tbaa !31
  %2747 = getelementptr inbounds i8, ptr %2743, i64 2
  %2748 = load i8, ptr %2744, align 1, !tbaa !31
  %2749 = getelementptr inbounds i8, ptr %2742, i64 2
  store i8 %2748, ptr %2746, align 1, !tbaa !31
  %2750 = getelementptr inbounds i8, ptr %2743, i64 3
  %2751 = load i8, ptr %2747, align 1, !tbaa !31
  %2752 = getelementptr inbounds i8, ptr %2742, i64 3
  store i8 %2751, ptr %2749, align 1, !tbaa !31
  %2753 = getelementptr inbounds i8, ptr %2743, i64 4
  %2754 = load i8, ptr %2750, align 1, !tbaa !31
  %2755 = getelementptr inbounds i8, ptr %2742, i64 4
  store i8 %2754, ptr %2752, align 1, !tbaa !31
  %2756 = getelementptr inbounds i8, ptr %2743, i64 5
  %2757 = load i8, ptr %2753, align 1, !tbaa !31
  %2758 = getelementptr inbounds i8, ptr %2742, i64 5
  store i8 %2757, ptr %2755, align 1, !tbaa !31
  %2759 = getelementptr inbounds i8, ptr %2743, i64 6
  %2760 = load i8, ptr %2756, align 1, !tbaa !31
  %2761 = getelementptr inbounds i8, ptr %2742, i64 6
  store i8 %2760, ptr %2758, align 1, !tbaa !31
  %2762 = getelementptr inbounds i8, ptr %2743, i64 7
  %2763 = load i8, ptr %2759, align 1, !tbaa !31
  %2764 = getelementptr inbounds i8, ptr %2742, i64 7
  store i8 %2763, ptr %2761, align 1, !tbaa !31
  %2765 = getelementptr inbounds i8, ptr %2743, i64 8
  %2766 = load i8, ptr %2762, align 1, !tbaa !31
  %2767 = getelementptr inbounds i8, ptr %2742, i64 8
  store i8 %2766, ptr %2764, align 1, !tbaa !31
  %2768 = icmp eq ptr %2765, %2680
  br i1 %2768, label %2773, label %2741, !llvm.loop !72

2769:                                             ; preds = %2632, %2629
  %2770 = load ptr, ptr %2318, align 8, !tbaa !37
  %2771 = getelementptr inbounds i8, ptr %2770, i64 %2625
  store ptr %2771, ptr %2318, align 8, !tbaa !37
  %2772 = load ptr, ptr %2321, align 8, !tbaa !47
  br label %2785

2773:                                             ; preds = %2642, %2736, %2741, %2699, %2718, %2672
  %2774 = load ptr, ptr %2318, align 8, !tbaa !37
  %2775 = getelementptr inbounds i8, ptr %2774, i64 %2625
  store ptr %2775, ptr %2318, align 8, !tbaa !37
  %2776 = icmp ugt i64 %2625, 65535
  %2777 = load ptr, ptr %2321, align 8, !tbaa !47
  br i1 %2776, label %2778, label %2785, !prof !48

2778:                                             ; preds = %2773
  store i32 1, ptr %2320, align 8, !tbaa !49
  %2779 = load ptr, ptr %1, align 8, !tbaa !50
  %2780 = ptrtoint ptr %2777 to i64
  %2781 = ptrtoint ptr %2779 to i64
  %2782 = sub i64 %2780, %2781
  %2783 = lshr exact i64 %2782, 3
  %2784 = trunc i64 %2783 to i32
  store i32 %2784, ptr %2322, align 4, !tbaa !51
  br label %2785

2785:                                             ; preds = %2778, %2773, %2769
  %2786 = phi ptr [ %2772, %2769 ], [ %2777, %2778 ], [ %2777, %2773 ]
  %2787 = trunc i64 %2625 to i16
  %2788 = getelementptr inbounds %struct.SeqDef_s, ptr %2786, i64 0, i32 1
  store i16 %2787, ptr %2788, align 4, !tbaa !52
  store i32 %2549, ptr %2786, align 4, !tbaa !54
  %2789 = add i64 %2622, -3
  %2790 = icmp ugt i64 %2789, 65535
  br i1 %2790, label %2791, label %2798, !prof !55

2791:                                             ; preds = %2785
  store i32 2, ptr %2320, align 8, !tbaa !49
  %2792 = load ptr, ptr %1, align 8, !tbaa !50
  %2793 = ptrtoint ptr %2786 to i64
  %2794 = ptrtoint ptr %2792 to i64
  %2795 = sub i64 %2793, %2794
  %2796 = lshr exact i64 %2795, 3
  %2797 = trunc i64 %2796 to i32
  store i32 %2797, ptr %2322, align 4, !tbaa !51
  br label %2798

2798:                                             ; preds = %2791, %2785
  %2799 = trunc i64 %2789 to i16
  %2800 = getelementptr inbounds %struct.SeqDef_s, ptr %2786, i64 0, i32 2
  store i16 %2799, ptr %2800, align 2, !tbaa !56
  %2801 = getelementptr inbounds %struct.SeqDef_s, ptr %2786, i64 1
  store ptr %2801, ptr %2321, align 8, !tbaa !47
  %2802 = getelementptr inbounds i8, ptr %2553, i64 %2622
  %2803 = icmp ugt ptr %2802, %41
  br i1 %2803, label %2934, label %2804

2804:                                             ; preds = %2798
  %2805 = add i32 %2547, 2
  %2806 = zext i32 %2547 to i64
  %2807 = getelementptr inbounds i8, ptr %61, i64 %2806
  %2808 = load i32, ptr %2807, align 1, !tbaa !20
  %2809 = mul i32 %2808, -1640531535
  %2810 = lshr i32 %2809, %2313
  %2811 = zext i32 %2810 to i64
  %2812 = getelementptr inbounds i32, ptr %12, i64 %2811
  store i32 %2805, ptr %2812, align 4, !tbaa !20
  %2813 = getelementptr inbounds i8, ptr %2802, i64 -2
  %2814 = ptrtoint ptr %2813 to i64
  %2815 = sub i64 %2814, %23
  %2816 = trunc i64 %2815 to i32
  %2817 = load i32, ptr %2813, align 1, !tbaa !20
  %2818 = mul i32 %2817, -1640531535
  %2819 = lshr i32 %2818, %2313
  %2820 = zext i32 %2819 to i64
  %2821 = getelementptr inbounds i32, ptr %12, i64 %2820
  store i32 %2816, ptr %2821, align 4, !tbaa !20
  %2822 = icmp eq i32 %2548, 0
  br i1 %2822, label %2934, label %2823

2823:                                             ; preds = %2804, %2929
  %2824 = phi ptr [ %2932, %2929 ], [ %2801, %2804 ]
  %2825 = phi ptr [ %2911, %2929 ], [ %2802, %2804 ]
  %2826 = phi i32 [ %2827, %2929 ], [ %2552, %2804 ]
  %2827 = phi i32 [ %2826, %2929 ], [ %2548, %2804 ]
  %2828 = load i32, ptr %2825, align 1, !tbaa !20
  %2829 = zext i32 %2827 to i64
  %2830 = sub nsw i64 0, %2829
  %2831 = getelementptr inbounds i8, ptr %2825, i64 %2830
  %2832 = load i32, ptr %2831, align 1, !tbaa !20
  %2833 = icmp eq i32 %2828, %2832
  br i1 %2833, label %2834, label %2934

2834:                                             ; preds = %2823
  %2835 = getelementptr inbounds i8, ptr %2825, i64 4
  %2836 = getelementptr inbounds i8, ptr %2835, i64 %2830
  %2837 = icmp ugt ptr %2314, %2835
  br i1 %2837, label %2838, label %2864

2838:                                             ; preds = %2834
  %2839 = load i64, ptr %2836, align 1, !tbaa !19
  %2840 = load i64, ptr %2835, align 1, !tbaa !19
  %2841 = xor i64 %2840, %2839
  %2842 = icmp eq i64 %2841, 0
  br i1 %2842, label %2846, label %2843

2843:                                             ; preds = %2838
  %2844 = tail call i64 @llvm.cttz.i64(i64 %2841, i1 true), !range !34
  %2845 = lshr i64 %2844, 3
  br label %2901

2846:                                             ; preds = %2838, %2852
  %2847 = phi ptr [ %2850, %2852 ], [ %2836, %2838 ]
  %2848 = phi ptr [ %2849, %2852 ], [ %2835, %2838 ]
  %2849 = getelementptr inbounds i8, ptr %2848, i64 8
  %2850 = getelementptr inbounds i8, ptr %2847, i64 8
  %2851 = icmp ult ptr %2849, %2314
  br i1 %2851, label %2852, label %2864

2852:                                             ; preds = %2846
  %2853 = load i64, ptr %2850, align 1, !tbaa !19
  %2854 = load i64, ptr %2849, align 1, !tbaa !19
  %2855 = xor i64 %2854, %2853
  %2856 = icmp eq i64 %2855, 0
  br i1 %2856, label %2846, label %2857

2857:                                             ; preds = %2852
  %2858 = tail call i64 @llvm.cttz.i64(i64 %2855, i1 true), !range !34
  %2859 = lshr i64 %2858, 3
  %2860 = getelementptr inbounds i8, ptr %2849, i64 %2859
  %2861 = ptrtoint ptr %2860 to i64
  %2862 = ptrtoint ptr %2835 to i64
  %2863 = sub i64 %2861, %2862
  br label %2901

2864:                                             ; preds = %2846, %2834
  %2865 = phi ptr [ %2836, %2834 ], [ %2850, %2846 ]
  %2866 = phi ptr [ %2835, %2834 ], [ %2849, %2846 ]
  %2867 = icmp ult ptr %2866, %2315
  br i1 %2867, label %2868, label %2875

2868:                                             ; preds = %2864
  %2869 = load i32, ptr %2865, align 1, !tbaa !20
  %2870 = load i32, ptr %2866, align 1, !tbaa !20
  %2871 = icmp eq i32 %2869, %2870
  br i1 %2871, label %2872, label %2875

2872:                                             ; preds = %2868
  %2873 = getelementptr inbounds i8, ptr %2866, i64 4
  %2874 = getelementptr inbounds i8, ptr %2865, i64 4
  br label %2875

2875:                                             ; preds = %2872, %2868, %2864
  %2876 = phi ptr [ %2874, %2872 ], [ %2865, %2868 ], [ %2865, %2864 ]
  %2877 = phi ptr [ %2873, %2872 ], [ %2866, %2868 ], [ %2866, %2864 ]
  %2878 = icmp ult ptr %2877, %2316
  br i1 %2878, label %2879, label %2886

2879:                                             ; preds = %2875
  %2880 = load i16, ptr %2876, align 1, !tbaa !35
  %2881 = load i16, ptr %2877, align 1, !tbaa !35
  %2882 = icmp eq i16 %2880, %2881
  br i1 %2882, label %2883, label %2886

2883:                                             ; preds = %2879
  %2884 = getelementptr inbounds i8, ptr %2877, i64 2
  %2885 = getelementptr inbounds i8, ptr %2876, i64 2
  br label %2886

2886:                                             ; preds = %2883, %2879, %2875
  %2887 = phi ptr [ %2885, %2883 ], [ %2876, %2879 ], [ %2876, %2875 ]
  %2888 = phi ptr [ %2884, %2883 ], [ %2877, %2879 ], [ %2877, %2875 ]
  %2889 = icmp ult ptr %2888, %40
  br i1 %2889, label %2890, label %2896

2890:                                             ; preds = %2886
  %2891 = load i8, ptr %2887, align 1, !tbaa !31
  %2892 = load i8, ptr %2888, align 1, !tbaa !31
  %2893 = icmp eq i8 %2891, %2892
  %2894 = zext i1 %2893 to i64
  %2895 = getelementptr inbounds i8, ptr %2888, i64 %2894
  br label %2896

2896:                                             ; preds = %2890, %2886
  %2897 = phi ptr [ %2888, %2886 ], [ %2895, %2890 ]
  %2898 = ptrtoint ptr %2897 to i64
  %2899 = ptrtoint ptr %2835 to i64
  %2900 = sub i64 %2898, %2899
  br label %2901

2901:                                             ; preds = %2896, %2857, %2843
  %2902 = phi i64 [ %2900, %2896 ], [ %2845, %2843 ], [ %2863, %2857 ]
  %2903 = add i64 %2902, 4
  %2904 = ptrtoint ptr %2825 to i64
  %2905 = sub i64 %2904, %23
  %2906 = trunc i64 %2905 to i32
  %2907 = mul i32 %2828, -1640531535
  %2908 = lshr i32 %2907, %2313
  %2909 = zext i32 %2908 to i64
  %2910 = getelementptr inbounds i32, ptr %12, i64 %2909
  store i32 %2906, ptr %2910, align 4, !tbaa !20
  %2911 = getelementptr inbounds i8, ptr %2825, i64 %2903
  %2912 = icmp ugt ptr %2825, %2317
  br i1 %2912, label %2917, label %2913

2913:                                             ; preds = %2901
  %2914 = load ptr, ptr %2318, align 8, !tbaa !37
  %2915 = load <2 x i64>, ptr %2825, align 1, !tbaa !31
  store <2 x i64> %2915, ptr %2914, align 1, !tbaa !31
  %2916 = load ptr, ptr %2321, align 8, !tbaa !47
  br label %2917

2917:                                             ; preds = %2913, %2901
  %2918 = phi ptr [ %2824, %2901 ], [ %2916, %2913 ]
  %2919 = getelementptr inbounds %struct.SeqDef_s, ptr %2918, i64 0, i32 1
  store i16 0, ptr %2919, align 4, !tbaa !52
  store i32 1, ptr %2918, align 4, !tbaa !54
  %2920 = add i64 %2902, 1
  %2921 = icmp ugt i64 %2920, 65535
  br i1 %2921, label %2922, label %2929, !prof !55

2922:                                             ; preds = %2917
  store i32 2, ptr %2320, align 8, !tbaa !49
  %2923 = load ptr, ptr %1, align 8, !tbaa !50
  %2924 = ptrtoint ptr %2918 to i64
  %2925 = ptrtoint ptr %2923 to i64
  %2926 = sub i64 %2924, %2925
  %2927 = lshr exact i64 %2926, 3
  %2928 = trunc i64 %2927 to i32
  store i32 %2928, ptr %2322, align 4, !tbaa !51
  br label %2929

2929:                                             ; preds = %2922, %2917
  %2930 = trunc i64 %2920 to i16
  %2931 = getelementptr inbounds %struct.SeqDef_s, ptr %2918, i64 0, i32 2
  store i16 %2930, ptr %2931, align 2, !tbaa !56
  %2932 = getelementptr inbounds %struct.SeqDef_s, ptr %2918, i64 1
  store ptr %2932, ptr %2321, align 8, !tbaa !47
  %2933 = icmp ugt ptr %2911, %41
  br i1 %2933, label %2934, label %2823

2934:                                             ; preds = %2929, %2823, %2804, %2798
  %2935 = phi i32 [ 0, %2804 ], [ %2548, %2798 ], [ %2827, %2823 ], [ %2826, %2929 ]
  %2936 = phi i32 [ %2552, %2804 ], [ %2552, %2798 ], [ %2826, %2823 ], [ %2827, %2929 ]
  %2937 = phi ptr [ %2802, %2804 ], [ %2802, %2798 ], [ %2825, %2823 ], [ %2911, %2929 ]
  %2938 = getelementptr inbounds i8, ptr %2937, i64 %19
  %2939 = getelementptr inbounds i8, ptr %2938, i64 1
  %2940 = icmp ult ptr %2939, %41
  br i1 %2940, label %2323, label %2941

2941:                                             ; preds = %2934, %2504, %2408, %2309
  %2942 = phi i32 [ %58, %2309 ], [ %2329, %2408 ], [ %2329, %2504 ], [ %2935, %2934 ]
  %2943 = phi i32 [ %60, %2309 ], [ 0, %2408 ], [ %2330, %2504 ], [ %2936, %2934 ]
  %2944 = phi ptr [ %3, %2309 ], [ %2326, %2408 ], [ %2326, %2504 ], [ %2937, %2934 ]
  %2945 = select i1 %59, i32 %42, i32 0
  %2946 = select i1 %57, i32 %44, i32 0
  %2947 = icmp ne i32 %2945, 0
  %2948 = icmp ne i32 %2943, 0
  %2949 = select i1 %2947, i1 %2948, i1 false
  %2950 = select i1 %2949, i32 %2945, i32 %2946
  %2951 = select i1 %2948, i32 %2943, i32 %2945
  store i32 %2951, ptr %2, align 4, !tbaa !20
  %2952 = icmp eq i32 %2942, 0
  %2953 = select i1 %2952, i32 %2950, i32 %2942
  br label %4874

2954:                                             ; preds = %2308
  br i1 %64, label %2955, label %3581

2955:                                             ; preds = %2954
  %2956 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 2
  %2957 = load i32, ptr %2956, align 4, !tbaa !18
  %2958 = sub i32 64, %2957
  %2959 = zext nneg i32 %2958 to i64
  %2960 = getelementptr inbounds i8, ptr %40, i64 -7
  %2961 = getelementptr inbounds i8, ptr %40, i64 -3
  %2962 = getelementptr inbounds i8, ptr %40, i64 -1
  %2963 = getelementptr inbounds i8, ptr %40, i64 -32
  %2964 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %2965 = ptrtoint ptr %2963 to i64
  %2966 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %2967 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %2968 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  br label %2969

2969:                                             ; preds = %3574, %2955
  %2970 = phi ptr [ %63, %2955 ], [ %3579, %3574 ]
  %2971 = phi ptr [ %62, %2955 ], [ %3578, %3574 ]
  %2972 = phi ptr [ %3, %2955 ], [ %3577, %3574 ]
  %2973 = phi ptr [ %47, %2955 ], [ %3577, %3574 ]
  %2974 = phi i32 [ %60, %2955 ], [ %3576, %3574 ]
  %2975 = phi i32 [ %58, %2955 ], [ %3575, %3574 ]
  %2976 = freeze i32 %2974
  %2977 = getelementptr inbounds i8, ptr %2973, i64 1
  %2978 = getelementptr inbounds i8, ptr %2973, i64 128
  %2979 = load i64, ptr %2973, align 1, !tbaa !19
  %2980 = mul i64 %2979, -3523014627271114752
  %2981 = lshr i64 %2980, %2959
  %2982 = load i64, ptr %2977, align 1, !tbaa !19
  %2983 = getelementptr inbounds i32, ptr %12, i64 %2981
  %2984 = load i32, ptr %2983, align 4, !tbaa !20
  %2985 = zext i32 %2976 to i64
  %2986 = sub nsw i64 0, %2985
  %2987 = icmp eq i32 %2976, 0
  br i1 %2987, label %2988, label %3055

2988:                                             ; preds = %2969, %3051
  %2989 = phi i64 [ %3022, %3051 ], [ %2981, %2969 ]
  %2990 = phi i64 [ %3042, %3051 ], [ %2982, %2969 ]
  %2991 = phi i32 [ %3041, %3051 ], [ %2984, %2969 ]
  %2992 = phi i64 [ %3052, %3051 ], [ %19, %2969 ]
  %2993 = phi ptr [ %3053, %3051 ], [ %2978, %2969 ]
  %2994 = phi ptr [ %3044, %3051 ], [ %2970, %2969 ]
  %2995 = phi ptr [ %3043, %3051 ], [ %2971, %2969 ]
  %2996 = phi ptr [ %2994, %3051 ], [ %2977, %2969 ]
  %2997 = phi ptr [ %2995, %3051 ], [ %2973, %2969 ]
  %2998 = mul i64 %2990, -3523014627271114752
  %2999 = lshr i64 %2998, %2959
  %3000 = ptrtoint ptr %2997 to i64
  %3001 = sub i64 %3000, %23
  %3002 = trunc i64 %3001 to i32
  %3003 = getelementptr inbounds i32, ptr %12, i64 %2989
  store i32 %3002, ptr %3003, align 4, !tbaa !20
  %3004 = icmp ult i32 %2991, %37
  br i1 %3004, label %3010, label %3005

3005:                                             ; preds = %2988
  %3006 = zext i32 %2991 to i64
  %3007 = getelementptr inbounds i8, ptr %21, i64 %3006
  %3008 = load i32, ptr %3007, align 1, !tbaa !20
  %3009 = load i32, ptr %2997, align 1, !tbaa !20
  br label %3013

3010:                                             ; preds = %2988
  %3011 = load i32, ptr %2997, align 1, !tbaa !20
  %3012 = xor i32 %3011, 1
  br label %3013

3013:                                             ; preds = %3010, %3005
  %3014 = phi i32 [ %3009, %3005 ], [ %3011, %3010 ]
  %3015 = phi i32 [ %3008, %3005 ], [ %3012, %3010 ]
  %3016 = icmp eq i32 %3014, %3015
  br i1 %3016, label %3150, label %3017

3017:                                             ; preds = %3013
  %3018 = getelementptr inbounds i32, ptr %12, i64 %2999
  %3019 = load i32, ptr %3018, align 4, !tbaa !20
  %3020 = load i64, ptr %2995, align 1, !tbaa !19
  %3021 = mul i64 %3020, -3523014627271114752
  %3022 = lshr i64 %3021, %2959
  %3023 = ptrtoint ptr %2996 to i64
  %3024 = sub i64 %3023, %23
  %3025 = trunc i64 %3024 to i32
  store i32 %3025, ptr %3018, align 4, !tbaa !20
  %3026 = icmp ult i32 %3019, %37
  br i1 %3026, label %3032, label %3027

3027:                                             ; preds = %3017
  %3028 = zext i32 %3019 to i64
  %3029 = getelementptr inbounds i8, ptr %21, i64 %3028
  %3030 = load i32, ptr %3029, align 1, !tbaa !20
  %3031 = load i32, ptr %2996, align 1, !tbaa !20
  br label %3035

3032:                                             ; preds = %3017
  %3033 = load i32, ptr %2996, align 1, !tbaa !20
  %3034 = xor i32 %3033, 1
  br label %3035

3035:                                             ; preds = %3032, %3027
  %3036 = phi i32 [ %3031, %3027 ], [ %3033, %3032 ]
  %3037 = phi i32 [ %3030, %3027 ], [ %3034, %3032 ]
  %3038 = icmp eq i32 %3036, %3037
  br i1 %3038, label %3111, label %3039

3039:                                             ; preds = %3035
  %3040 = getelementptr inbounds i32, ptr %12, i64 %3022
  %3041 = load i32, ptr %3040, align 4, !tbaa !20
  %3042 = load i64, ptr %2994, align 1, !tbaa !19
  %3043 = getelementptr inbounds i8, ptr %2995, i64 %2992
  %3044 = getelementptr inbounds i8, ptr %2994, i64 %2992
  %3045 = icmp ult ptr %3043, %2993
  br i1 %3045, label %3051, label %3046

3046:                                             ; preds = %3039
  %3047 = add i64 %2992, 1
  %3048 = getelementptr inbounds i8, ptr %2994, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %3048, i32 0, i32 3, i32 1)
  %3049 = getelementptr inbounds i8, ptr %2994, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %3049, i32 0, i32 3, i32 1)
  %3050 = getelementptr inbounds i8, ptr %2993, i64 128
  br label %3051

3051:                                             ; preds = %3046, %3039
  %3052 = phi i64 [ %2992, %3039 ], [ %3047, %3046 ]
  %3053 = phi ptr [ %2993, %3039 ], [ %3050, %3046 ]
  %3054 = icmp ult ptr %3044, %41
  br i1 %3054, label %2988, label %3581, !llvm.loop !32

3055:                                             ; preds = %2969, %3146
  %3056 = phi i64 [ %3094, %3146 ], [ %2981, %2969 ]
  %3057 = phi i64 [ %3122, %3146 ], [ %2982, %2969 ]
  %3058 = phi i32 [ %3121, %3146 ], [ %2984, %2969 ]
  %3059 = phi i64 [ %3147, %3146 ], [ %19, %2969 ]
  %3060 = phi ptr [ %3148, %3146 ], [ %2978, %2969 ]
  %3061 = phi ptr [ %3124, %3146 ], [ %2970, %2969 ]
  %3062 = phi ptr [ %3123, %3146 ], [ %2971, %2969 ]
  %3063 = phi ptr [ %3061, %3146 ], [ %2977, %2969 ]
  %3064 = phi ptr [ %3062, %3146 ], [ %2973, %2969 ]
  %3065 = mul i64 %3057, -3523014627271114752
  %3066 = lshr i64 %3065, %2959
  %3067 = getelementptr inbounds i8, ptr %3062, i64 %2986
  %3068 = load i32, ptr %3067, align 1, !tbaa !20
  %3069 = ptrtoint ptr %3064 to i64
  %3070 = sub i64 %3069, %23
  %3071 = trunc i64 %3070 to i32
  %3072 = getelementptr inbounds i32, ptr %12, i64 %3056
  store i32 %3071, ptr %3072, align 4, !tbaa !20
  %3073 = load i32, ptr %3062, align 1, !tbaa !20
  %3074 = icmp eq i32 %3073, %3068
  br i1 %3074, label %3131, label %3075

3075:                                             ; preds = %3055
  %3076 = icmp ult i32 %3058, %37
  br i1 %3076, label %3082, label %3077

3077:                                             ; preds = %3075
  %3078 = zext i32 %3058 to i64
  %3079 = getelementptr inbounds i8, ptr %21, i64 %3078
  %3080 = load i32, ptr %3079, align 1, !tbaa !20
  %3081 = load i32, ptr %3064, align 1, !tbaa !20
  br label %3085

3082:                                             ; preds = %3075
  %3083 = load i32, ptr %3064, align 1, !tbaa !20
  %3084 = xor i32 %3083, 1
  br label %3085

3085:                                             ; preds = %3082, %3077
  %3086 = phi i32 [ %3081, %3077 ], [ %3083, %3082 ]
  %3087 = phi i32 [ %3080, %3077 ], [ %3084, %3082 ]
  %3088 = icmp eq i32 %3086, %3087
  br i1 %3088, label %3150, label %3089

3089:                                             ; preds = %3085
  %3090 = getelementptr inbounds i32, ptr %12, i64 %3066
  %3091 = load i32, ptr %3090, align 4, !tbaa !20
  %3092 = load i64, ptr %3062, align 1, !tbaa !19
  %3093 = mul i64 %3092, -3523014627271114752
  %3094 = lshr i64 %3093, %2959
  %3095 = ptrtoint ptr %3063 to i64
  %3096 = sub i64 %3095, %23
  %3097 = trunc i64 %3096 to i32
  store i32 %3097, ptr %3090, align 4, !tbaa !20
  %3098 = icmp ult i32 %3091, %37
  br i1 %3098, label %3104, label %3099

3099:                                             ; preds = %3089
  %3100 = zext i32 %3091 to i64
  %3101 = getelementptr inbounds i8, ptr %21, i64 %3100
  %3102 = load i32, ptr %3101, align 1, !tbaa !20
  %3103 = load i32, ptr %3063, align 1, !tbaa !20
  br label %3107

3104:                                             ; preds = %3089
  %3105 = load i32, ptr %3063, align 1, !tbaa !20
  %3106 = xor i32 %3105, 1
  br label %3107

3107:                                             ; preds = %3104, %3099
  %3108 = phi i32 [ %3103, %3099 ], [ %3105, %3104 ]
  %3109 = phi i32 [ %3102, %3099 ], [ %3106, %3104 ]
  %3110 = icmp eq i32 %3108, %3109
  br i1 %3110, label %3111, label %3119

3111:                                             ; preds = %3107, %3035
  %3112 = phi i32 [ %3019, %3035 ], [ %3091, %3107 ]
  %3113 = phi i64 [ %3022, %3035 ], [ %3094, %3107 ]
  %3114 = phi i32 [ %3025, %3035 ], [ %3097, %3107 ]
  %3115 = phi i64 [ %2992, %3035 ], [ %3059, %3107 ]
  %3116 = phi ptr [ %2995, %3035 ], [ %3062, %3107 ]
  %3117 = phi ptr [ %2996, %3035 ], [ %3063, %3107 ]
  %3118 = icmp ult i64 %3115, 5
  br i1 %3118, label %3150, label %3160

3119:                                             ; preds = %3107
  %3120 = getelementptr inbounds i32, ptr %12, i64 %3094
  %3121 = load i32, ptr %3120, align 4, !tbaa !20
  %3122 = load i64, ptr %3061, align 1, !tbaa !19
  %3123 = getelementptr inbounds i8, ptr %3062, i64 %3059
  %3124 = getelementptr inbounds i8, ptr %3061, i64 %3059
  %3125 = icmp ult ptr %3123, %3060
  br i1 %3125, label %3146, label %3126

3126:                                             ; preds = %3119
  %3127 = add i64 %3059, 1
  %3128 = getelementptr inbounds i8, ptr %3061, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %3128, i32 0, i32 3, i32 1)
  %3129 = getelementptr inbounds i8, ptr %3061, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %3129, i32 0, i32 3, i32 1)
  %3130 = getelementptr inbounds i8, ptr %3060, i64 128
  br label %3146

3131:                                             ; preds = %3055
  %3132 = getelementptr inbounds i8, ptr %3062, i64 %2986
  %3133 = getelementptr inbounds i8, ptr %3062, i64 -1
  %3134 = load i8, ptr %3133, align 1, !tbaa !31
  %3135 = getelementptr inbounds i8, ptr %3132, i64 -1
  %3136 = load i8, ptr %3135, align 1, !tbaa !31
  %3137 = icmp eq i8 %3134, %3136
  %3138 = sext i1 %3137 to i64
  %3139 = getelementptr inbounds i8, ptr %3062, i64 %3138
  %3140 = getelementptr inbounds i8, ptr %3132, i64 %3138
  %3141 = select i1 %3137, i64 5, i64 4
  %3142 = ptrtoint ptr %3063 to i64
  %3143 = sub i64 %3142, %23
  %3144 = trunc i64 %3143 to i32
  %3145 = getelementptr inbounds i32, ptr %12, i64 %3066
  store i32 %3144, ptr %3145, align 4, !tbaa !20
  br label %3188

3146:                                             ; preds = %3126, %3119
  %3147 = phi i64 [ %3059, %3119 ], [ %3127, %3126 ]
  %3148 = phi ptr [ %3060, %3119 ], [ %3130, %3126 ]
  %3149 = icmp ult ptr %3124, %41
  br i1 %3149, label %3055, label %3581, !llvm.loop !32

3150:                                             ; preds = %3085, %3013, %3111
  %3151 = phi ptr [ %3116, %3111 ], [ %2996, %3013 ], [ %3063, %3085 ]
  %3152 = phi i64 [ %3113, %3111 ], [ %2999, %3013 ], [ %3066, %3085 ]
  %3153 = phi i32 [ %3112, %3111 ], [ %2991, %3013 ], [ %3058, %3085 ]
  %3154 = phi i32 [ %3114, %3111 ], [ %3002, %3013 ], [ %3071, %3085 ]
  %3155 = phi ptr [ %3117, %3111 ], [ %2997, %3013 ], [ %3064, %3085 ]
  %3156 = ptrtoint ptr %3151 to i64
  %3157 = sub i64 %3156, %23
  %3158 = trunc i64 %3157 to i32
  %3159 = getelementptr inbounds i32, ptr %12, i64 %3152
  store i32 %3158, ptr %3159, align 4, !tbaa !20
  br label %3160

3160:                                             ; preds = %3150, %3111
  %3161 = phi i32 [ %3112, %3111 ], [ %3153, %3150 ]
  %3162 = phi i32 [ %3114, %3111 ], [ %3154, %3150 ]
  %3163 = phi ptr [ %3117, %3111 ], [ %3155, %3150 ]
  %3164 = zext i32 %3161 to i64
  %3165 = getelementptr inbounds i8, ptr %21, i64 %3164
  %3166 = ptrtoint ptr %3163 to i64
  %3167 = ptrtoint ptr %3165 to i64
  %3168 = sub i64 %3166, %3167
  %3169 = trunc i64 %3168 to i32
  %3170 = add i32 %3169, 3
  %3171 = icmp ugt ptr %3163, %2972
  %3172 = icmp ugt i32 %3161, %37
  %3173 = and i1 %3172, %3171
  br i1 %3173, label %3174, label %3188

3174:                                             ; preds = %3160, %3183
  %3175 = phi ptr [ %3178, %3183 ], [ %3163, %3160 ]
  %3176 = phi i64 [ %3184, %3183 ], [ 4, %3160 ]
  %3177 = phi ptr [ %3180, %3183 ], [ %3165, %3160 ]
  %3178 = getelementptr inbounds i8, ptr %3175, i64 -1
  %3179 = load i8, ptr %3178, align 1, !tbaa !31
  %3180 = getelementptr inbounds i8, ptr %3177, i64 -1
  %3181 = load i8, ptr %3180, align 1, !tbaa !31
  %3182 = icmp eq i8 %3179, %3181
  br i1 %3182, label %3183, label %3188

3183:                                             ; preds = %3174
  %3184 = add i64 %3176, 1
  %3185 = icmp ugt ptr %3178, %2972
  %3186 = icmp ugt ptr %3180, %39
  %3187 = and i1 %3185, %3186
  br i1 %3187, label %3174, label %3188, !llvm.loop !33

3188:                                             ; preds = %3183, %3174, %3160, %3131
  %3189 = phi i32 [ %3071, %3131 ], [ %3162, %3160 ], [ %3162, %3174 ], [ %3162, %3183 ]
  %3190 = phi i32 [ %2975, %3131 ], [ %2976, %3160 ], [ %2976, %3174 ], [ %2976, %3183 ]
  %3191 = phi i32 [ 1, %3131 ], [ %3170, %3160 ], [ %3170, %3174 ], [ %3170, %3183 ]
  %3192 = phi ptr [ %3140, %3131 ], [ %3165, %3160 ], [ %3180, %3183 ], [ %3177, %3174 ]
  %3193 = phi i64 [ %3141, %3131 ], [ 4, %3160 ], [ %3184, %3183 ], [ %3176, %3174 ]
  %3194 = phi i32 [ %2976, %3131 ], [ %3169, %3160 ], [ %3169, %3174 ], [ %3169, %3183 ]
  %3195 = phi ptr [ %3139, %3131 ], [ %3163, %3160 ], [ %3178, %3183 ], [ %3175, %3174 ]
  %3196 = getelementptr inbounds i8, ptr %3195, i64 %3193
  %3197 = getelementptr inbounds i8, ptr %3192, i64 %3193
  %3198 = icmp ugt ptr %2960, %3196
  br i1 %3198, label %3199, label %3225

3199:                                             ; preds = %3188
  %3200 = load i64, ptr %3197, align 1, !tbaa !19
  %3201 = load i64, ptr %3196, align 1, !tbaa !19
  %3202 = xor i64 %3201, %3200
  %3203 = icmp eq i64 %3202, 0
  br i1 %3203, label %3207, label %3204

3204:                                             ; preds = %3199
  %3205 = tail call i64 @llvm.cttz.i64(i64 %3202, i1 true), !range !34
  %3206 = lshr i64 %3205, 3
  br label %3262

3207:                                             ; preds = %3199, %3213
  %3208 = phi ptr [ %3211, %3213 ], [ %3197, %3199 ]
  %3209 = phi ptr [ %3210, %3213 ], [ %3196, %3199 ]
  %3210 = getelementptr inbounds i8, ptr %3209, i64 8
  %3211 = getelementptr inbounds i8, ptr %3208, i64 8
  %3212 = icmp ult ptr %3210, %2960
  br i1 %3212, label %3213, label %3225

3213:                                             ; preds = %3207
  %3214 = load i64, ptr %3211, align 1, !tbaa !19
  %3215 = load i64, ptr %3210, align 1, !tbaa !19
  %3216 = xor i64 %3215, %3214
  %3217 = icmp eq i64 %3216, 0
  br i1 %3217, label %3207, label %3218

3218:                                             ; preds = %3213
  %3219 = tail call i64 @llvm.cttz.i64(i64 %3216, i1 true), !range !34
  %3220 = lshr i64 %3219, 3
  %3221 = getelementptr inbounds i8, ptr %3210, i64 %3220
  %3222 = ptrtoint ptr %3221 to i64
  %3223 = ptrtoint ptr %3196 to i64
  %3224 = sub i64 %3222, %3223
  br label %3262

3225:                                             ; preds = %3207, %3188
  %3226 = phi ptr [ %3197, %3188 ], [ %3211, %3207 ]
  %3227 = phi ptr [ %3196, %3188 ], [ %3210, %3207 ]
  %3228 = icmp ult ptr %3227, %2961
  br i1 %3228, label %3229, label %3236

3229:                                             ; preds = %3225
  %3230 = load i32, ptr %3226, align 1, !tbaa !20
  %3231 = load i32, ptr %3227, align 1, !tbaa !20
  %3232 = icmp eq i32 %3230, %3231
  br i1 %3232, label %3233, label %3236

3233:                                             ; preds = %3229
  %3234 = getelementptr inbounds i8, ptr %3227, i64 4
  %3235 = getelementptr inbounds i8, ptr %3226, i64 4
  br label %3236

3236:                                             ; preds = %3233, %3229, %3225
  %3237 = phi ptr [ %3235, %3233 ], [ %3226, %3229 ], [ %3226, %3225 ]
  %3238 = phi ptr [ %3234, %3233 ], [ %3227, %3229 ], [ %3227, %3225 ]
  %3239 = icmp ult ptr %3238, %2962
  br i1 %3239, label %3240, label %3247

3240:                                             ; preds = %3236
  %3241 = load i16, ptr %3237, align 1, !tbaa !35
  %3242 = load i16, ptr %3238, align 1, !tbaa !35
  %3243 = icmp eq i16 %3241, %3242
  br i1 %3243, label %3244, label %3247

3244:                                             ; preds = %3240
  %3245 = getelementptr inbounds i8, ptr %3238, i64 2
  %3246 = getelementptr inbounds i8, ptr %3237, i64 2
  br label %3247

3247:                                             ; preds = %3244, %3240, %3236
  %3248 = phi ptr [ %3246, %3244 ], [ %3237, %3240 ], [ %3237, %3236 ]
  %3249 = phi ptr [ %3245, %3244 ], [ %3238, %3240 ], [ %3238, %3236 ]
  %3250 = icmp ult ptr %3249, %40
  br i1 %3250, label %3251, label %3257

3251:                                             ; preds = %3247
  %3252 = load i8, ptr %3248, align 1, !tbaa !31
  %3253 = load i8, ptr %3249, align 1, !tbaa !31
  %3254 = icmp eq i8 %3252, %3253
  %3255 = zext i1 %3254 to i64
  %3256 = getelementptr inbounds i8, ptr %3249, i64 %3255
  br label %3257

3257:                                             ; preds = %3251, %3247
  %3258 = phi ptr [ %3249, %3247 ], [ %3256, %3251 ]
  %3259 = ptrtoint ptr %3258 to i64
  %3260 = ptrtoint ptr %3196 to i64
  %3261 = sub i64 %3259, %3260
  br label %3262

3262:                                             ; preds = %3257, %3218, %3204
  %3263 = phi i64 [ %3261, %3257 ], [ %3206, %3204 ], [ %3224, %3218 ]
  %3264 = add i64 %3263, %3193
  %3265 = ptrtoint ptr %3195 to i64
  %3266 = ptrtoint ptr %2972 to i64
  %3267 = sub i64 %3265, %3266
  %3268 = getelementptr inbounds i8, ptr %2972, i64 %3267
  %3269 = icmp ugt ptr %3268, %2963
  %3270 = load ptr, ptr %2964, align 8, !tbaa !37
  br i1 %3269, label %3294, label %3271

3271:                                             ; preds = %3262
  %3272 = load <2 x i64>, ptr %2972, align 1, !tbaa !31
  store <2 x i64> %3272, ptr %3270, align 1, !tbaa !31
  %3273 = icmp ugt i64 %3267, 16
  br i1 %3273, label %3274, label %3411

3274:                                             ; preds = %3271
  %3275 = load ptr, ptr %2964, align 8, !tbaa !37
  %3276 = getelementptr inbounds i8, ptr %3275, i64 16
  %3277 = getelementptr inbounds i8, ptr %2972, i64 16
  %3278 = add i64 %3267, -16
  %3279 = getelementptr inbounds i8, ptr %3275, i64 %3267
  %3280 = load <2 x i64>, ptr %3277, align 1, !tbaa !31
  store <2 x i64> %3280, ptr %3276, align 1, !tbaa !31
  %3281 = icmp ult i64 %3278, 17
  br i1 %3281, label %3411, label %3282

3282:                                             ; preds = %3274
  %3283 = getelementptr inbounds i8, ptr %3275, i64 32
  br label %3284

3284:                                             ; preds = %3284, %3282
  %3285 = phi ptr [ %3283, %3282 ], [ %3292, %3284 ]
  %3286 = phi ptr [ %3277, %3282 ], [ %3290, %3284 ]
  %3287 = getelementptr inbounds i8, ptr %3286, i64 16
  %3288 = load <2 x i64>, ptr %3287, align 1, !tbaa !31
  store <2 x i64> %3288, ptr %3285, align 1, !tbaa !31
  %3289 = getelementptr inbounds i8, ptr %3285, i64 16
  %3290 = getelementptr inbounds i8, ptr %3286, i64 32
  %3291 = load <2 x i64>, ptr %3290, align 1, !tbaa !31
  store <2 x i64> %3291, ptr %3289, align 1, !tbaa !31
  %3292 = getelementptr inbounds i8, ptr %3285, i64 32
  %3293 = icmp ult ptr %3292, %3279
  br i1 %3293, label %3284, label %3415, !llvm.loop !39

3294:                                             ; preds = %3262
  %3295 = ptrtoint ptr %3268 to i64
  %3296 = icmp ugt ptr %2972, %2963
  br i1 %3296, label %3314, label %3297

3297:                                             ; preds = %3294
  %3298 = sub i64 %2965, %3266
  %3299 = getelementptr inbounds i8, ptr %3270, i64 %3298
  %3300 = load <2 x i64>, ptr %2972, align 1, !tbaa !31
  store <2 x i64> %3300, ptr %3270, align 1, !tbaa !31
  %3301 = icmp ult i64 %3298, 17
  br i1 %3301, label %3314, label %3302

3302:                                             ; preds = %3297
  %3303 = getelementptr inbounds i8, ptr %3270, i64 16
  br label %3304

3304:                                             ; preds = %3304, %3302
  %3305 = phi ptr [ %3303, %3302 ], [ %3312, %3304 ]
  %3306 = phi ptr [ %2972, %3302 ], [ %3310, %3304 ]
  %3307 = getelementptr inbounds i8, ptr %3306, i64 16
  %3308 = load <2 x i64>, ptr %3307, align 1, !tbaa !31
  store <2 x i64> %3308, ptr %3305, align 1, !tbaa !31
  %3309 = getelementptr inbounds i8, ptr %3305, i64 16
  %3310 = getelementptr inbounds i8, ptr %3306, i64 32
  %3311 = load <2 x i64>, ptr %3310, align 1, !tbaa !31
  store <2 x i64> %3311, ptr %3309, align 1, !tbaa !31
  %3312 = getelementptr inbounds i8, ptr %3305, i64 32
  %3313 = icmp ult ptr %3312, %3299
  br i1 %3313, label %3304, label %3314, !llvm.loop !39

3314:                                             ; preds = %3304, %3297, %3294
  %3315 = phi ptr [ %2963, %3297 ], [ %2972, %3294 ], [ %2963, %3304 ]
  %3316 = phi ptr [ %3299, %3297 ], [ %3270, %3294 ], [ %3299, %3304 ]
  %3317 = icmp ult ptr %3315, %3268
  br i1 %3317, label %3318, label %3415

3318:                                             ; preds = %3314
  %3319 = ptrtoint ptr %3316 to i64
  %3320 = ptrtoint ptr %3315 to i64
  %3321 = sub i64 %3295, %3320
  %3322 = getelementptr i8, ptr %3315, i64 %3321
  %3323 = icmp ult i64 %3321, 8
  %3324 = sub i64 %3319, %3320
  %3325 = icmp ult i64 %3324, 32
  %3326 = select i1 %3323, i1 true, i1 %3325
  br i1 %3326, label %3362, label %3327

3327:                                             ; preds = %3318
  %3328 = icmp ult i64 %3321, 32
  br i1 %3328, label %3348, label %3329

3329:                                             ; preds = %3327
  %3330 = and i64 %3321, -32
  br label %3331

3331:                                             ; preds = %3331, %3329
  %3332 = phi i64 [ 0, %3329 ], [ %3339, %3331 ]
  %3333 = getelementptr i8, ptr %3316, i64 %3332
  %3334 = getelementptr i8, ptr %3315, i64 %3332
  %3335 = getelementptr i8, ptr %3334, i64 16
  %3336 = load <16 x i8>, ptr %3334, align 1, !tbaa !31
  %3337 = load <16 x i8>, ptr %3335, align 1, !tbaa !31
  %3338 = getelementptr i8, ptr %3333, i64 16
  store <16 x i8> %3336, ptr %3333, align 1, !tbaa !31
  store <16 x i8> %3337, ptr %3338, align 1, !tbaa !31
  %3339 = add nuw i64 %3332, 32
  %3340 = icmp eq i64 %3339, %3330
  br i1 %3340, label %3341, label %3331, !llvm.loop !73

3341:                                             ; preds = %3331
  %3342 = icmp eq i64 %3321, %3330
  br i1 %3342, label %3415, label %3343

3343:                                             ; preds = %3341
  %3344 = getelementptr i8, ptr %3315, i64 %3330
  %3345 = getelementptr i8, ptr %3316, i64 %3330
  %3346 = and i64 %3321, 24
  %3347 = icmp eq i64 %3346, 0
  br i1 %3347, label %3362, label %3348

3348:                                             ; preds = %3327, %3343
  %3349 = phi i64 [ %3330, %3343 ], [ 0, %3327 ]
  %3350 = and i64 %3321, -8
  %3351 = getelementptr i8, ptr %3316, i64 %3350
  %3352 = getelementptr i8, ptr %3315, i64 %3350
  br label %3353

3353:                                             ; preds = %3353, %3348
  %3354 = phi i64 [ %3349, %3348 ], [ %3358, %3353 ]
  %3355 = getelementptr i8, ptr %3316, i64 %3354
  %3356 = getelementptr i8, ptr %3315, i64 %3354
  %3357 = load <8 x i8>, ptr %3356, align 1, !tbaa !31
  store <8 x i8> %3357, ptr %3355, align 1, !tbaa !31
  %3358 = add nuw i64 %3354, 8
  %3359 = icmp eq i64 %3358, %3350
  br i1 %3359, label %3360, label %3353, !llvm.loop !74

3360:                                             ; preds = %3353
  %3361 = icmp eq i64 %3321, %3350
  br i1 %3361, label %3415, label %3362

3362:                                             ; preds = %3318, %3343, %3360
  %3363 = phi ptr [ %3316, %3318 ], [ %3345, %3343 ], [ %3351, %3360 ]
  %3364 = phi ptr [ %3315, %3318 ], [ %3344, %3343 ], [ %3352, %3360 ]
  %3365 = ptrtoint ptr %3364 to i64
  %3366 = sub i64 %3265, %3365
  %3367 = and i64 %3366, 7
  %3368 = icmp eq i64 %3367, 0
  br i1 %3368, label %3378, label %3369

3369:                                             ; preds = %3362, %3369
  %3370 = phi ptr [ %3375, %3369 ], [ %3363, %3362 ]
  %3371 = phi ptr [ %3373, %3369 ], [ %3364, %3362 ]
  %3372 = phi i64 [ %3376, %3369 ], [ 0, %3362 ]
  %3373 = getelementptr inbounds i8, ptr %3371, i64 1
  %3374 = load i8, ptr %3371, align 1, !tbaa !31
  %3375 = getelementptr inbounds i8, ptr %3370, i64 1
  store i8 %3374, ptr %3370, align 1, !tbaa !31
  %3376 = add i64 %3372, 1
  %3377 = icmp eq i64 %3376, %3367
  br i1 %3377, label %3378, label %3369, !llvm.loop !75

3378:                                             ; preds = %3369, %3362
  %3379 = phi ptr [ %3363, %3362 ], [ %3375, %3369 ]
  %3380 = phi ptr [ %3364, %3362 ], [ %3373, %3369 ]
  %3381 = sub i64 %3365, %3265
  %3382 = icmp ugt i64 %3381, -8
  br i1 %3382, label %3415, label %3383

3383:                                             ; preds = %3378, %3383
  %3384 = phi ptr [ %3409, %3383 ], [ %3379, %3378 ]
  %3385 = phi ptr [ %3407, %3383 ], [ %3380, %3378 ]
  %3386 = getelementptr inbounds i8, ptr %3385, i64 1
  %3387 = load i8, ptr %3385, align 1, !tbaa !31
  %3388 = getelementptr inbounds i8, ptr %3384, i64 1
  store i8 %3387, ptr %3384, align 1, !tbaa !31
  %3389 = getelementptr inbounds i8, ptr %3385, i64 2
  %3390 = load i8, ptr %3386, align 1, !tbaa !31
  %3391 = getelementptr inbounds i8, ptr %3384, i64 2
  store i8 %3390, ptr %3388, align 1, !tbaa !31
  %3392 = getelementptr inbounds i8, ptr %3385, i64 3
  %3393 = load i8, ptr %3389, align 1, !tbaa !31
  %3394 = getelementptr inbounds i8, ptr %3384, i64 3
  store i8 %3393, ptr %3391, align 1, !tbaa !31
  %3395 = getelementptr inbounds i8, ptr %3385, i64 4
  %3396 = load i8, ptr %3392, align 1, !tbaa !31
  %3397 = getelementptr inbounds i8, ptr %3384, i64 4
  store i8 %3396, ptr %3394, align 1, !tbaa !31
  %3398 = getelementptr inbounds i8, ptr %3385, i64 5
  %3399 = load i8, ptr %3395, align 1, !tbaa !31
  %3400 = getelementptr inbounds i8, ptr %3384, i64 5
  store i8 %3399, ptr %3397, align 1, !tbaa !31
  %3401 = getelementptr inbounds i8, ptr %3385, i64 6
  %3402 = load i8, ptr %3398, align 1, !tbaa !31
  %3403 = getelementptr inbounds i8, ptr %3384, i64 6
  store i8 %3402, ptr %3400, align 1, !tbaa !31
  %3404 = getelementptr inbounds i8, ptr %3385, i64 7
  %3405 = load i8, ptr %3401, align 1, !tbaa !31
  %3406 = getelementptr inbounds i8, ptr %3384, i64 7
  store i8 %3405, ptr %3403, align 1, !tbaa !31
  %3407 = getelementptr inbounds i8, ptr %3385, i64 8
  %3408 = load i8, ptr %3404, align 1, !tbaa !31
  %3409 = getelementptr inbounds i8, ptr %3384, i64 8
  store i8 %3408, ptr %3406, align 1, !tbaa !31
  %3410 = icmp eq ptr %3407, %3322
  br i1 %3410, label %3415, label %3383, !llvm.loop !76

3411:                                             ; preds = %3274, %3271
  %3412 = load ptr, ptr %2964, align 8, !tbaa !37
  %3413 = getelementptr inbounds i8, ptr %3412, i64 %3267
  store ptr %3413, ptr %2964, align 8, !tbaa !37
  %3414 = load ptr, ptr %2967, align 8, !tbaa !47
  br label %3427

3415:                                             ; preds = %3284, %3378, %3383, %3341, %3360, %3314
  %3416 = load ptr, ptr %2964, align 8, !tbaa !37
  %3417 = getelementptr inbounds i8, ptr %3416, i64 %3267
  store ptr %3417, ptr %2964, align 8, !tbaa !37
  %3418 = icmp ugt i64 %3267, 65535
  %3419 = load ptr, ptr %2967, align 8, !tbaa !47
  br i1 %3418, label %3420, label %3427, !prof !48

3420:                                             ; preds = %3415
  store i32 1, ptr %2966, align 8, !tbaa !49
  %3421 = load ptr, ptr %1, align 8, !tbaa !50
  %3422 = ptrtoint ptr %3419 to i64
  %3423 = ptrtoint ptr %3421 to i64
  %3424 = sub i64 %3422, %3423
  %3425 = lshr exact i64 %3424, 3
  %3426 = trunc i64 %3425 to i32
  store i32 %3426, ptr %2968, align 4, !tbaa !51
  br label %3427

3427:                                             ; preds = %3420, %3415, %3411
  %3428 = phi ptr [ %3414, %3411 ], [ %3419, %3420 ], [ %3419, %3415 ]
  %3429 = trunc i64 %3267 to i16
  %3430 = getelementptr inbounds %struct.SeqDef_s, ptr %3428, i64 0, i32 1
  store i16 %3429, ptr %3430, align 4, !tbaa !52
  store i32 %3191, ptr %3428, align 4, !tbaa !54
  %3431 = add i64 %3264, -3
  %3432 = icmp ugt i64 %3431, 65535
  br i1 %3432, label %3433, label %3440, !prof !55

3433:                                             ; preds = %3427
  store i32 2, ptr %2966, align 8, !tbaa !49
  %3434 = load ptr, ptr %1, align 8, !tbaa !50
  %3435 = ptrtoint ptr %3428 to i64
  %3436 = ptrtoint ptr %3434 to i64
  %3437 = sub i64 %3435, %3436
  %3438 = lshr exact i64 %3437, 3
  %3439 = trunc i64 %3438 to i32
  store i32 %3439, ptr %2968, align 4, !tbaa !51
  br label %3440

3440:                                             ; preds = %3433, %3427
  %3441 = trunc i64 %3431 to i16
  %3442 = getelementptr inbounds %struct.SeqDef_s, ptr %3428, i64 0, i32 2
  store i16 %3441, ptr %3442, align 2, !tbaa !56
  %3443 = getelementptr inbounds %struct.SeqDef_s, ptr %3428, i64 1
  store ptr %3443, ptr %2967, align 8, !tbaa !47
  %3444 = getelementptr inbounds i8, ptr %3195, i64 %3264
  %3445 = icmp ugt ptr %3444, %41
  br i1 %3445, label %3574, label %3446

3446:                                             ; preds = %3440
  %3447 = add i32 %3189, 2
  %3448 = zext i32 %3189 to i64
  %3449 = getelementptr inbounds i8, ptr %61, i64 %3448
  %3450 = load i64, ptr %3449, align 1, !tbaa !19
  %3451 = mul i64 %3450, -3523014627271114752
  %3452 = lshr i64 %3451, %2959
  %3453 = getelementptr inbounds i32, ptr %12, i64 %3452
  store i32 %3447, ptr %3453, align 4, !tbaa !20
  %3454 = getelementptr inbounds i8, ptr %3444, i64 -2
  %3455 = ptrtoint ptr %3454 to i64
  %3456 = sub i64 %3455, %23
  %3457 = trunc i64 %3456 to i32
  %3458 = load i64, ptr %3454, align 1, !tbaa !19
  %3459 = mul i64 %3458, -3523014627271114752
  %3460 = lshr i64 %3459, %2959
  %3461 = getelementptr inbounds i32, ptr %12, i64 %3460
  store i32 %3457, ptr %3461, align 4, !tbaa !20
  %3462 = icmp eq i32 %3190, 0
  br i1 %3462, label %3574, label %3463

3463:                                             ; preds = %3446, %3569
  %3464 = phi ptr [ %3572, %3569 ], [ %3443, %3446 ]
  %3465 = phi ptr [ %3551, %3569 ], [ %3444, %3446 ]
  %3466 = phi i32 [ %3467, %3569 ], [ %3194, %3446 ]
  %3467 = phi i32 [ %3466, %3569 ], [ %3190, %3446 ]
  %3468 = load i32, ptr %3465, align 1, !tbaa !20
  %3469 = zext i32 %3467 to i64
  %3470 = sub nsw i64 0, %3469
  %3471 = getelementptr inbounds i8, ptr %3465, i64 %3470
  %3472 = load i32, ptr %3471, align 1, !tbaa !20
  %3473 = icmp eq i32 %3468, %3472
  br i1 %3473, label %3474, label %3574

3474:                                             ; preds = %3463
  %3475 = getelementptr inbounds i8, ptr %3465, i64 4
  %3476 = getelementptr inbounds i8, ptr %3475, i64 %3470
  %3477 = icmp ugt ptr %2960, %3475
  br i1 %3477, label %3478, label %3504

3478:                                             ; preds = %3474
  %3479 = load i64, ptr %3476, align 1, !tbaa !19
  %3480 = load i64, ptr %3475, align 1, !tbaa !19
  %3481 = xor i64 %3480, %3479
  %3482 = icmp eq i64 %3481, 0
  br i1 %3482, label %3486, label %3483

3483:                                             ; preds = %3478
  %3484 = tail call i64 @llvm.cttz.i64(i64 %3481, i1 true), !range !34
  %3485 = lshr i64 %3484, 3
  br label %3541

3486:                                             ; preds = %3478, %3492
  %3487 = phi ptr [ %3490, %3492 ], [ %3476, %3478 ]
  %3488 = phi ptr [ %3489, %3492 ], [ %3475, %3478 ]
  %3489 = getelementptr inbounds i8, ptr %3488, i64 8
  %3490 = getelementptr inbounds i8, ptr %3487, i64 8
  %3491 = icmp ult ptr %3489, %2960
  br i1 %3491, label %3492, label %3504

3492:                                             ; preds = %3486
  %3493 = load i64, ptr %3490, align 1, !tbaa !19
  %3494 = load i64, ptr %3489, align 1, !tbaa !19
  %3495 = xor i64 %3494, %3493
  %3496 = icmp eq i64 %3495, 0
  br i1 %3496, label %3486, label %3497

3497:                                             ; preds = %3492
  %3498 = tail call i64 @llvm.cttz.i64(i64 %3495, i1 true), !range !34
  %3499 = lshr i64 %3498, 3
  %3500 = getelementptr inbounds i8, ptr %3489, i64 %3499
  %3501 = ptrtoint ptr %3500 to i64
  %3502 = ptrtoint ptr %3475 to i64
  %3503 = sub i64 %3501, %3502
  br label %3541

3504:                                             ; preds = %3486, %3474
  %3505 = phi ptr [ %3476, %3474 ], [ %3490, %3486 ]
  %3506 = phi ptr [ %3475, %3474 ], [ %3489, %3486 ]
  %3507 = icmp ult ptr %3506, %2961
  br i1 %3507, label %3508, label %3515

3508:                                             ; preds = %3504
  %3509 = load i32, ptr %3505, align 1, !tbaa !20
  %3510 = load i32, ptr %3506, align 1, !tbaa !20
  %3511 = icmp eq i32 %3509, %3510
  br i1 %3511, label %3512, label %3515

3512:                                             ; preds = %3508
  %3513 = getelementptr inbounds i8, ptr %3506, i64 4
  %3514 = getelementptr inbounds i8, ptr %3505, i64 4
  br label %3515

3515:                                             ; preds = %3512, %3508, %3504
  %3516 = phi ptr [ %3514, %3512 ], [ %3505, %3508 ], [ %3505, %3504 ]
  %3517 = phi ptr [ %3513, %3512 ], [ %3506, %3508 ], [ %3506, %3504 ]
  %3518 = icmp ult ptr %3517, %2962
  br i1 %3518, label %3519, label %3526

3519:                                             ; preds = %3515
  %3520 = load i16, ptr %3516, align 1, !tbaa !35
  %3521 = load i16, ptr %3517, align 1, !tbaa !35
  %3522 = icmp eq i16 %3520, %3521
  br i1 %3522, label %3523, label %3526

3523:                                             ; preds = %3519
  %3524 = getelementptr inbounds i8, ptr %3517, i64 2
  %3525 = getelementptr inbounds i8, ptr %3516, i64 2
  br label %3526

3526:                                             ; preds = %3523, %3519, %3515
  %3527 = phi ptr [ %3525, %3523 ], [ %3516, %3519 ], [ %3516, %3515 ]
  %3528 = phi ptr [ %3524, %3523 ], [ %3517, %3519 ], [ %3517, %3515 ]
  %3529 = icmp ult ptr %3528, %40
  br i1 %3529, label %3530, label %3536

3530:                                             ; preds = %3526
  %3531 = load i8, ptr %3527, align 1, !tbaa !31
  %3532 = load i8, ptr %3528, align 1, !tbaa !31
  %3533 = icmp eq i8 %3531, %3532
  %3534 = zext i1 %3533 to i64
  %3535 = getelementptr inbounds i8, ptr %3528, i64 %3534
  br label %3536

3536:                                             ; preds = %3530, %3526
  %3537 = phi ptr [ %3528, %3526 ], [ %3535, %3530 ]
  %3538 = ptrtoint ptr %3537 to i64
  %3539 = ptrtoint ptr %3475 to i64
  %3540 = sub i64 %3538, %3539
  br label %3541

3541:                                             ; preds = %3536, %3497, %3483
  %3542 = phi i64 [ %3540, %3536 ], [ %3485, %3483 ], [ %3503, %3497 ]
  %3543 = add i64 %3542, 4
  %3544 = ptrtoint ptr %3465 to i64
  %3545 = sub i64 %3544, %23
  %3546 = trunc i64 %3545 to i32
  %3547 = load i64, ptr %3465, align 1, !tbaa !19
  %3548 = mul i64 %3547, -3523014627271114752
  %3549 = lshr i64 %3548, %2959
  %3550 = getelementptr inbounds i32, ptr %12, i64 %3549
  store i32 %3546, ptr %3550, align 4, !tbaa !20
  %3551 = getelementptr inbounds i8, ptr %3465, i64 %3543
  %3552 = icmp ugt ptr %3465, %2963
  br i1 %3552, label %3557, label %3553

3553:                                             ; preds = %3541
  %3554 = load ptr, ptr %2964, align 8, !tbaa !37
  %3555 = load <2 x i64>, ptr %3465, align 1, !tbaa !31
  store <2 x i64> %3555, ptr %3554, align 1, !tbaa !31
  %3556 = load ptr, ptr %2967, align 8, !tbaa !47
  br label %3557

3557:                                             ; preds = %3553, %3541
  %3558 = phi ptr [ %3464, %3541 ], [ %3556, %3553 ]
  %3559 = getelementptr inbounds %struct.SeqDef_s, ptr %3558, i64 0, i32 1
  store i16 0, ptr %3559, align 4, !tbaa !52
  store i32 1, ptr %3558, align 4, !tbaa !54
  %3560 = add i64 %3542, 1
  %3561 = icmp ugt i64 %3560, 65535
  br i1 %3561, label %3562, label %3569, !prof !55

3562:                                             ; preds = %3557
  store i32 2, ptr %2966, align 8, !tbaa !49
  %3563 = load ptr, ptr %1, align 8, !tbaa !50
  %3564 = ptrtoint ptr %3558 to i64
  %3565 = ptrtoint ptr %3563 to i64
  %3566 = sub i64 %3564, %3565
  %3567 = lshr exact i64 %3566, 3
  %3568 = trunc i64 %3567 to i32
  store i32 %3568, ptr %2968, align 4, !tbaa !51
  br label %3569

3569:                                             ; preds = %3562, %3557
  %3570 = trunc i64 %3560 to i16
  %3571 = getelementptr inbounds %struct.SeqDef_s, ptr %3558, i64 0, i32 2
  store i16 %3570, ptr %3571, align 2, !tbaa !56
  %3572 = getelementptr inbounds %struct.SeqDef_s, ptr %3558, i64 1
  store ptr %3572, ptr %2967, align 8, !tbaa !47
  %3573 = icmp ugt ptr %3551, %41
  br i1 %3573, label %3574, label %3463

3574:                                             ; preds = %3569, %3463, %3446, %3440
  %3575 = phi i32 [ 0, %3446 ], [ %3190, %3440 ], [ %3467, %3463 ], [ %3466, %3569 ]
  %3576 = phi i32 [ %3194, %3446 ], [ %3194, %3440 ], [ %3466, %3463 ], [ %3467, %3569 ]
  %3577 = phi ptr [ %3444, %3446 ], [ %3444, %3440 ], [ %3465, %3463 ], [ %3551, %3569 ]
  %3578 = getelementptr inbounds i8, ptr %3577, i64 %19
  %3579 = getelementptr inbounds i8, ptr %3578, i64 1
  %3580 = icmp ult ptr %3579, %41
  br i1 %3580, label %2969, label %3581

3581:                                             ; preds = %3574, %3146, %3051, %2954
  %3582 = phi i32 [ %58, %2954 ], [ %2975, %3051 ], [ %2975, %3146 ], [ %3575, %3574 ]
  %3583 = phi i32 [ %60, %2954 ], [ 0, %3051 ], [ %2976, %3146 ], [ %3576, %3574 ]
  %3584 = phi ptr [ %3, %2954 ], [ %2972, %3051 ], [ %2972, %3146 ], [ %3577, %3574 ]
  %3585 = select i1 %59, i32 %42, i32 0
  %3586 = select i1 %57, i32 %44, i32 0
  %3587 = icmp ne i32 %3585, 0
  %3588 = icmp ne i32 %3583, 0
  %3589 = select i1 %3587, i1 %3588, i1 false
  %3590 = select i1 %3589, i32 %3585, i32 %3586
  %3591 = select i1 %3588, i32 %3583, i32 %3585
  store i32 %3591, ptr %2, align 4, !tbaa !20
  %3592 = icmp eq i32 %3582, 0
  %3593 = select i1 %3592, i32 %3590, i32 %3582
  br label %4874

3594:                                             ; preds = %2308
  br i1 %64, label %3595, label %4221

3595:                                             ; preds = %3594
  %3596 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 2
  %3597 = load i32, ptr %3596, align 4, !tbaa !18
  %3598 = sub i32 64, %3597
  %3599 = zext nneg i32 %3598 to i64
  %3600 = getelementptr inbounds i8, ptr %40, i64 -7
  %3601 = getelementptr inbounds i8, ptr %40, i64 -3
  %3602 = getelementptr inbounds i8, ptr %40, i64 -1
  %3603 = getelementptr inbounds i8, ptr %40, i64 -32
  %3604 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %3605 = ptrtoint ptr %3603 to i64
  %3606 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %3607 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %3608 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  br label %3609

3609:                                             ; preds = %4214, %3595
  %3610 = phi ptr [ %63, %3595 ], [ %4219, %4214 ]
  %3611 = phi ptr [ %62, %3595 ], [ %4218, %4214 ]
  %3612 = phi ptr [ %3, %3595 ], [ %4217, %4214 ]
  %3613 = phi ptr [ %47, %3595 ], [ %4217, %4214 ]
  %3614 = phi i32 [ %60, %3595 ], [ %4216, %4214 ]
  %3615 = phi i32 [ %58, %3595 ], [ %4215, %4214 ]
  %3616 = freeze i32 %3614
  %3617 = getelementptr inbounds i8, ptr %3613, i64 1
  %3618 = getelementptr inbounds i8, ptr %3613, i64 128
  %3619 = load i64, ptr %3613, align 1, !tbaa !19
  %3620 = mul i64 %3619, -3523014627193847808
  %3621 = lshr i64 %3620, %3599
  %3622 = load i64, ptr %3617, align 1, !tbaa !19
  %3623 = getelementptr inbounds i32, ptr %12, i64 %3621
  %3624 = load i32, ptr %3623, align 4, !tbaa !20
  %3625 = zext i32 %3616 to i64
  %3626 = sub nsw i64 0, %3625
  %3627 = icmp eq i32 %3616, 0
  br i1 %3627, label %3628, label %3695

3628:                                             ; preds = %3609, %3691
  %3629 = phi i64 [ %3662, %3691 ], [ %3621, %3609 ]
  %3630 = phi i64 [ %3682, %3691 ], [ %3622, %3609 ]
  %3631 = phi i32 [ %3681, %3691 ], [ %3624, %3609 ]
  %3632 = phi i64 [ %3692, %3691 ], [ %19, %3609 ]
  %3633 = phi ptr [ %3693, %3691 ], [ %3618, %3609 ]
  %3634 = phi ptr [ %3684, %3691 ], [ %3610, %3609 ]
  %3635 = phi ptr [ %3683, %3691 ], [ %3611, %3609 ]
  %3636 = phi ptr [ %3634, %3691 ], [ %3617, %3609 ]
  %3637 = phi ptr [ %3635, %3691 ], [ %3613, %3609 ]
  %3638 = mul i64 %3630, -3523014627193847808
  %3639 = lshr i64 %3638, %3599
  %3640 = ptrtoint ptr %3637 to i64
  %3641 = sub i64 %3640, %23
  %3642 = trunc i64 %3641 to i32
  %3643 = getelementptr inbounds i32, ptr %12, i64 %3629
  store i32 %3642, ptr %3643, align 4, !tbaa !20
  %3644 = icmp ult i32 %3631, %37
  br i1 %3644, label %3650, label %3645

3645:                                             ; preds = %3628
  %3646 = zext i32 %3631 to i64
  %3647 = getelementptr inbounds i8, ptr %21, i64 %3646
  %3648 = load i32, ptr %3647, align 1, !tbaa !20
  %3649 = load i32, ptr %3637, align 1, !tbaa !20
  br label %3653

3650:                                             ; preds = %3628
  %3651 = load i32, ptr %3637, align 1, !tbaa !20
  %3652 = xor i32 %3651, 1
  br label %3653

3653:                                             ; preds = %3650, %3645
  %3654 = phi i32 [ %3649, %3645 ], [ %3651, %3650 ]
  %3655 = phi i32 [ %3648, %3645 ], [ %3652, %3650 ]
  %3656 = icmp eq i32 %3654, %3655
  br i1 %3656, label %3790, label %3657

3657:                                             ; preds = %3653
  %3658 = getelementptr inbounds i32, ptr %12, i64 %3639
  %3659 = load i32, ptr %3658, align 4, !tbaa !20
  %3660 = load i64, ptr %3635, align 1, !tbaa !19
  %3661 = mul i64 %3660, -3523014627193847808
  %3662 = lshr i64 %3661, %3599
  %3663 = ptrtoint ptr %3636 to i64
  %3664 = sub i64 %3663, %23
  %3665 = trunc i64 %3664 to i32
  store i32 %3665, ptr %3658, align 4, !tbaa !20
  %3666 = icmp ult i32 %3659, %37
  br i1 %3666, label %3672, label %3667

3667:                                             ; preds = %3657
  %3668 = zext i32 %3659 to i64
  %3669 = getelementptr inbounds i8, ptr %21, i64 %3668
  %3670 = load i32, ptr %3669, align 1, !tbaa !20
  %3671 = load i32, ptr %3636, align 1, !tbaa !20
  br label %3675

3672:                                             ; preds = %3657
  %3673 = load i32, ptr %3636, align 1, !tbaa !20
  %3674 = xor i32 %3673, 1
  br label %3675

3675:                                             ; preds = %3672, %3667
  %3676 = phi i32 [ %3671, %3667 ], [ %3673, %3672 ]
  %3677 = phi i32 [ %3670, %3667 ], [ %3674, %3672 ]
  %3678 = icmp eq i32 %3676, %3677
  br i1 %3678, label %3751, label %3679

3679:                                             ; preds = %3675
  %3680 = getelementptr inbounds i32, ptr %12, i64 %3662
  %3681 = load i32, ptr %3680, align 4, !tbaa !20
  %3682 = load i64, ptr %3634, align 1, !tbaa !19
  %3683 = getelementptr inbounds i8, ptr %3635, i64 %3632
  %3684 = getelementptr inbounds i8, ptr %3634, i64 %3632
  %3685 = icmp ult ptr %3683, %3633
  br i1 %3685, label %3691, label %3686

3686:                                             ; preds = %3679
  %3687 = add i64 %3632, 1
  %3688 = getelementptr inbounds i8, ptr %3634, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %3688, i32 0, i32 3, i32 1)
  %3689 = getelementptr inbounds i8, ptr %3634, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %3689, i32 0, i32 3, i32 1)
  %3690 = getelementptr inbounds i8, ptr %3633, i64 128
  br label %3691

3691:                                             ; preds = %3686, %3679
  %3692 = phi i64 [ %3632, %3679 ], [ %3687, %3686 ]
  %3693 = phi ptr [ %3633, %3679 ], [ %3690, %3686 ]
  %3694 = icmp ult ptr %3684, %41
  br i1 %3694, label %3628, label %4221, !llvm.loop !32

3695:                                             ; preds = %3609, %3786
  %3696 = phi i64 [ %3734, %3786 ], [ %3621, %3609 ]
  %3697 = phi i64 [ %3762, %3786 ], [ %3622, %3609 ]
  %3698 = phi i32 [ %3761, %3786 ], [ %3624, %3609 ]
  %3699 = phi i64 [ %3787, %3786 ], [ %19, %3609 ]
  %3700 = phi ptr [ %3788, %3786 ], [ %3618, %3609 ]
  %3701 = phi ptr [ %3764, %3786 ], [ %3610, %3609 ]
  %3702 = phi ptr [ %3763, %3786 ], [ %3611, %3609 ]
  %3703 = phi ptr [ %3701, %3786 ], [ %3617, %3609 ]
  %3704 = phi ptr [ %3702, %3786 ], [ %3613, %3609 ]
  %3705 = mul i64 %3697, -3523014627193847808
  %3706 = lshr i64 %3705, %3599
  %3707 = getelementptr inbounds i8, ptr %3702, i64 %3626
  %3708 = load i32, ptr %3707, align 1, !tbaa !20
  %3709 = ptrtoint ptr %3704 to i64
  %3710 = sub i64 %3709, %23
  %3711 = trunc i64 %3710 to i32
  %3712 = getelementptr inbounds i32, ptr %12, i64 %3696
  store i32 %3711, ptr %3712, align 4, !tbaa !20
  %3713 = load i32, ptr %3702, align 1, !tbaa !20
  %3714 = icmp eq i32 %3713, %3708
  br i1 %3714, label %3771, label %3715

3715:                                             ; preds = %3695
  %3716 = icmp ult i32 %3698, %37
  br i1 %3716, label %3722, label %3717

3717:                                             ; preds = %3715
  %3718 = zext i32 %3698 to i64
  %3719 = getelementptr inbounds i8, ptr %21, i64 %3718
  %3720 = load i32, ptr %3719, align 1, !tbaa !20
  %3721 = load i32, ptr %3704, align 1, !tbaa !20
  br label %3725

3722:                                             ; preds = %3715
  %3723 = load i32, ptr %3704, align 1, !tbaa !20
  %3724 = xor i32 %3723, 1
  br label %3725

3725:                                             ; preds = %3722, %3717
  %3726 = phi i32 [ %3721, %3717 ], [ %3723, %3722 ]
  %3727 = phi i32 [ %3720, %3717 ], [ %3724, %3722 ]
  %3728 = icmp eq i32 %3726, %3727
  br i1 %3728, label %3790, label %3729

3729:                                             ; preds = %3725
  %3730 = getelementptr inbounds i32, ptr %12, i64 %3706
  %3731 = load i32, ptr %3730, align 4, !tbaa !20
  %3732 = load i64, ptr %3702, align 1, !tbaa !19
  %3733 = mul i64 %3732, -3523014627193847808
  %3734 = lshr i64 %3733, %3599
  %3735 = ptrtoint ptr %3703 to i64
  %3736 = sub i64 %3735, %23
  %3737 = trunc i64 %3736 to i32
  store i32 %3737, ptr %3730, align 4, !tbaa !20
  %3738 = icmp ult i32 %3731, %37
  br i1 %3738, label %3744, label %3739

3739:                                             ; preds = %3729
  %3740 = zext i32 %3731 to i64
  %3741 = getelementptr inbounds i8, ptr %21, i64 %3740
  %3742 = load i32, ptr %3741, align 1, !tbaa !20
  %3743 = load i32, ptr %3703, align 1, !tbaa !20
  br label %3747

3744:                                             ; preds = %3729
  %3745 = load i32, ptr %3703, align 1, !tbaa !20
  %3746 = xor i32 %3745, 1
  br label %3747

3747:                                             ; preds = %3744, %3739
  %3748 = phi i32 [ %3743, %3739 ], [ %3745, %3744 ]
  %3749 = phi i32 [ %3742, %3739 ], [ %3746, %3744 ]
  %3750 = icmp eq i32 %3748, %3749
  br i1 %3750, label %3751, label %3759

3751:                                             ; preds = %3747, %3675
  %3752 = phi i32 [ %3659, %3675 ], [ %3731, %3747 ]
  %3753 = phi i64 [ %3662, %3675 ], [ %3734, %3747 ]
  %3754 = phi i32 [ %3665, %3675 ], [ %3737, %3747 ]
  %3755 = phi i64 [ %3632, %3675 ], [ %3699, %3747 ]
  %3756 = phi ptr [ %3635, %3675 ], [ %3702, %3747 ]
  %3757 = phi ptr [ %3636, %3675 ], [ %3703, %3747 ]
  %3758 = icmp ult i64 %3755, 5
  br i1 %3758, label %3790, label %3800

3759:                                             ; preds = %3747
  %3760 = getelementptr inbounds i32, ptr %12, i64 %3734
  %3761 = load i32, ptr %3760, align 4, !tbaa !20
  %3762 = load i64, ptr %3701, align 1, !tbaa !19
  %3763 = getelementptr inbounds i8, ptr %3702, i64 %3699
  %3764 = getelementptr inbounds i8, ptr %3701, i64 %3699
  %3765 = icmp ult ptr %3763, %3700
  br i1 %3765, label %3786, label %3766

3766:                                             ; preds = %3759
  %3767 = add i64 %3699, 1
  %3768 = getelementptr inbounds i8, ptr %3701, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %3768, i32 0, i32 3, i32 1)
  %3769 = getelementptr inbounds i8, ptr %3701, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %3769, i32 0, i32 3, i32 1)
  %3770 = getelementptr inbounds i8, ptr %3700, i64 128
  br label %3786

3771:                                             ; preds = %3695
  %3772 = getelementptr inbounds i8, ptr %3702, i64 %3626
  %3773 = getelementptr inbounds i8, ptr %3702, i64 -1
  %3774 = load i8, ptr %3773, align 1, !tbaa !31
  %3775 = getelementptr inbounds i8, ptr %3772, i64 -1
  %3776 = load i8, ptr %3775, align 1, !tbaa !31
  %3777 = icmp eq i8 %3774, %3776
  %3778 = sext i1 %3777 to i64
  %3779 = getelementptr inbounds i8, ptr %3702, i64 %3778
  %3780 = getelementptr inbounds i8, ptr %3772, i64 %3778
  %3781 = select i1 %3777, i64 5, i64 4
  %3782 = ptrtoint ptr %3703 to i64
  %3783 = sub i64 %3782, %23
  %3784 = trunc i64 %3783 to i32
  %3785 = getelementptr inbounds i32, ptr %12, i64 %3706
  store i32 %3784, ptr %3785, align 4, !tbaa !20
  br label %3828

3786:                                             ; preds = %3766, %3759
  %3787 = phi i64 [ %3699, %3759 ], [ %3767, %3766 ]
  %3788 = phi ptr [ %3700, %3759 ], [ %3770, %3766 ]
  %3789 = icmp ult ptr %3764, %41
  br i1 %3789, label %3695, label %4221, !llvm.loop !32

3790:                                             ; preds = %3725, %3653, %3751
  %3791 = phi ptr [ %3756, %3751 ], [ %3636, %3653 ], [ %3703, %3725 ]
  %3792 = phi i64 [ %3753, %3751 ], [ %3639, %3653 ], [ %3706, %3725 ]
  %3793 = phi i32 [ %3752, %3751 ], [ %3631, %3653 ], [ %3698, %3725 ]
  %3794 = phi i32 [ %3754, %3751 ], [ %3642, %3653 ], [ %3711, %3725 ]
  %3795 = phi ptr [ %3757, %3751 ], [ %3637, %3653 ], [ %3704, %3725 ]
  %3796 = ptrtoint ptr %3791 to i64
  %3797 = sub i64 %3796, %23
  %3798 = trunc i64 %3797 to i32
  %3799 = getelementptr inbounds i32, ptr %12, i64 %3792
  store i32 %3798, ptr %3799, align 4, !tbaa !20
  br label %3800

3800:                                             ; preds = %3790, %3751
  %3801 = phi i32 [ %3752, %3751 ], [ %3793, %3790 ]
  %3802 = phi i32 [ %3754, %3751 ], [ %3794, %3790 ]
  %3803 = phi ptr [ %3757, %3751 ], [ %3795, %3790 ]
  %3804 = zext i32 %3801 to i64
  %3805 = getelementptr inbounds i8, ptr %21, i64 %3804
  %3806 = ptrtoint ptr %3803 to i64
  %3807 = ptrtoint ptr %3805 to i64
  %3808 = sub i64 %3806, %3807
  %3809 = trunc i64 %3808 to i32
  %3810 = add i32 %3809, 3
  %3811 = icmp ugt ptr %3803, %3612
  %3812 = icmp ugt i32 %3801, %37
  %3813 = and i1 %3812, %3811
  br i1 %3813, label %3814, label %3828

3814:                                             ; preds = %3800, %3823
  %3815 = phi ptr [ %3818, %3823 ], [ %3803, %3800 ]
  %3816 = phi i64 [ %3824, %3823 ], [ 4, %3800 ]
  %3817 = phi ptr [ %3820, %3823 ], [ %3805, %3800 ]
  %3818 = getelementptr inbounds i8, ptr %3815, i64 -1
  %3819 = load i8, ptr %3818, align 1, !tbaa !31
  %3820 = getelementptr inbounds i8, ptr %3817, i64 -1
  %3821 = load i8, ptr %3820, align 1, !tbaa !31
  %3822 = icmp eq i8 %3819, %3821
  br i1 %3822, label %3823, label %3828

3823:                                             ; preds = %3814
  %3824 = add i64 %3816, 1
  %3825 = icmp ugt ptr %3818, %3612
  %3826 = icmp ugt ptr %3820, %39
  %3827 = and i1 %3825, %3826
  br i1 %3827, label %3814, label %3828, !llvm.loop !33

3828:                                             ; preds = %3823, %3814, %3800, %3771
  %3829 = phi i32 [ %3711, %3771 ], [ %3802, %3800 ], [ %3802, %3814 ], [ %3802, %3823 ]
  %3830 = phi i32 [ %3615, %3771 ], [ %3616, %3800 ], [ %3616, %3814 ], [ %3616, %3823 ]
  %3831 = phi i32 [ 1, %3771 ], [ %3810, %3800 ], [ %3810, %3814 ], [ %3810, %3823 ]
  %3832 = phi ptr [ %3780, %3771 ], [ %3805, %3800 ], [ %3820, %3823 ], [ %3817, %3814 ]
  %3833 = phi i64 [ %3781, %3771 ], [ 4, %3800 ], [ %3824, %3823 ], [ %3816, %3814 ]
  %3834 = phi i32 [ %3616, %3771 ], [ %3809, %3800 ], [ %3809, %3814 ], [ %3809, %3823 ]
  %3835 = phi ptr [ %3779, %3771 ], [ %3803, %3800 ], [ %3818, %3823 ], [ %3815, %3814 ]
  %3836 = getelementptr inbounds i8, ptr %3835, i64 %3833
  %3837 = getelementptr inbounds i8, ptr %3832, i64 %3833
  %3838 = icmp ugt ptr %3600, %3836
  br i1 %3838, label %3839, label %3865

3839:                                             ; preds = %3828
  %3840 = load i64, ptr %3837, align 1, !tbaa !19
  %3841 = load i64, ptr %3836, align 1, !tbaa !19
  %3842 = xor i64 %3841, %3840
  %3843 = icmp eq i64 %3842, 0
  br i1 %3843, label %3847, label %3844

3844:                                             ; preds = %3839
  %3845 = tail call i64 @llvm.cttz.i64(i64 %3842, i1 true), !range !34
  %3846 = lshr i64 %3845, 3
  br label %3902

3847:                                             ; preds = %3839, %3853
  %3848 = phi ptr [ %3851, %3853 ], [ %3837, %3839 ]
  %3849 = phi ptr [ %3850, %3853 ], [ %3836, %3839 ]
  %3850 = getelementptr inbounds i8, ptr %3849, i64 8
  %3851 = getelementptr inbounds i8, ptr %3848, i64 8
  %3852 = icmp ult ptr %3850, %3600
  br i1 %3852, label %3853, label %3865

3853:                                             ; preds = %3847
  %3854 = load i64, ptr %3851, align 1, !tbaa !19
  %3855 = load i64, ptr %3850, align 1, !tbaa !19
  %3856 = xor i64 %3855, %3854
  %3857 = icmp eq i64 %3856, 0
  br i1 %3857, label %3847, label %3858

3858:                                             ; preds = %3853
  %3859 = tail call i64 @llvm.cttz.i64(i64 %3856, i1 true), !range !34
  %3860 = lshr i64 %3859, 3
  %3861 = getelementptr inbounds i8, ptr %3850, i64 %3860
  %3862 = ptrtoint ptr %3861 to i64
  %3863 = ptrtoint ptr %3836 to i64
  %3864 = sub i64 %3862, %3863
  br label %3902

3865:                                             ; preds = %3847, %3828
  %3866 = phi ptr [ %3837, %3828 ], [ %3851, %3847 ]
  %3867 = phi ptr [ %3836, %3828 ], [ %3850, %3847 ]
  %3868 = icmp ult ptr %3867, %3601
  br i1 %3868, label %3869, label %3876

3869:                                             ; preds = %3865
  %3870 = load i32, ptr %3866, align 1, !tbaa !20
  %3871 = load i32, ptr %3867, align 1, !tbaa !20
  %3872 = icmp eq i32 %3870, %3871
  br i1 %3872, label %3873, label %3876

3873:                                             ; preds = %3869
  %3874 = getelementptr inbounds i8, ptr %3867, i64 4
  %3875 = getelementptr inbounds i8, ptr %3866, i64 4
  br label %3876

3876:                                             ; preds = %3873, %3869, %3865
  %3877 = phi ptr [ %3875, %3873 ], [ %3866, %3869 ], [ %3866, %3865 ]
  %3878 = phi ptr [ %3874, %3873 ], [ %3867, %3869 ], [ %3867, %3865 ]
  %3879 = icmp ult ptr %3878, %3602
  br i1 %3879, label %3880, label %3887

3880:                                             ; preds = %3876
  %3881 = load i16, ptr %3877, align 1, !tbaa !35
  %3882 = load i16, ptr %3878, align 1, !tbaa !35
  %3883 = icmp eq i16 %3881, %3882
  br i1 %3883, label %3884, label %3887

3884:                                             ; preds = %3880
  %3885 = getelementptr inbounds i8, ptr %3878, i64 2
  %3886 = getelementptr inbounds i8, ptr %3877, i64 2
  br label %3887

3887:                                             ; preds = %3884, %3880, %3876
  %3888 = phi ptr [ %3886, %3884 ], [ %3877, %3880 ], [ %3877, %3876 ]
  %3889 = phi ptr [ %3885, %3884 ], [ %3878, %3880 ], [ %3878, %3876 ]
  %3890 = icmp ult ptr %3889, %40
  br i1 %3890, label %3891, label %3897

3891:                                             ; preds = %3887
  %3892 = load i8, ptr %3888, align 1, !tbaa !31
  %3893 = load i8, ptr %3889, align 1, !tbaa !31
  %3894 = icmp eq i8 %3892, %3893
  %3895 = zext i1 %3894 to i64
  %3896 = getelementptr inbounds i8, ptr %3889, i64 %3895
  br label %3897

3897:                                             ; preds = %3891, %3887
  %3898 = phi ptr [ %3889, %3887 ], [ %3896, %3891 ]
  %3899 = ptrtoint ptr %3898 to i64
  %3900 = ptrtoint ptr %3836 to i64
  %3901 = sub i64 %3899, %3900
  br label %3902

3902:                                             ; preds = %3897, %3858, %3844
  %3903 = phi i64 [ %3901, %3897 ], [ %3846, %3844 ], [ %3864, %3858 ]
  %3904 = add i64 %3903, %3833
  %3905 = ptrtoint ptr %3835 to i64
  %3906 = ptrtoint ptr %3612 to i64
  %3907 = sub i64 %3905, %3906
  %3908 = getelementptr inbounds i8, ptr %3612, i64 %3907
  %3909 = icmp ugt ptr %3908, %3603
  %3910 = load ptr, ptr %3604, align 8, !tbaa !37
  br i1 %3909, label %3934, label %3911

3911:                                             ; preds = %3902
  %3912 = load <2 x i64>, ptr %3612, align 1, !tbaa !31
  store <2 x i64> %3912, ptr %3910, align 1, !tbaa !31
  %3913 = icmp ugt i64 %3907, 16
  br i1 %3913, label %3914, label %4051

3914:                                             ; preds = %3911
  %3915 = load ptr, ptr %3604, align 8, !tbaa !37
  %3916 = getelementptr inbounds i8, ptr %3915, i64 16
  %3917 = getelementptr inbounds i8, ptr %3612, i64 16
  %3918 = add i64 %3907, -16
  %3919 = getelementptr inbounds i8, ptr %3915, i64 %3907
  %3920 = load <2 x i64>, ptr %3917, align 1, !tbaa !31
  store <2 x i64> %3920, ptr %3916, align 1, !tbaa !31
  %3921 = icmp ult i64 %3918, 17
  br i1 %3921, label %4051, label %3922

3922:                                             ; preds = %3914
  %3923 = getelementptr inbounds i8, ptr %3915, i64 32
  br label %3924

3924:                                             ; preds = %3924, %3922
  %3925 = phi ptr [ %3923, %3922 ], [ %3932, %3924 ]
  %3926 = phi ptr [ %3917, %3922 ], [ %3930, %3924 ]
  %3927 = getelementptr inbounds i8, ptr %3926, i64 16
  %3928 = load <2 x i64>, ptr %3927, align 1, !tbaa !31
  store <2 x i64> %3928, ptr %3925, align 1, !tbaa !31
  %3929 = getelementptr inbounds i8, ptr %3925, i64 16
  %3930 = getelementptr inbounds i8, ptr %3926, i64 32
  %3931 = load <2 x i64>, ptr %3930, align 1, !tbaa !31
  store <2 x i64> %3931, ptr %3929, align 1, !tbaa !31
  %3932 = getelementptr inbounds i8, ptr %3925, i64 32
  %3933 = icmp ult ptr %3932, %3919
  br i1 %3933, label %3924, label %4055, !llvm.loop !39

3934:                                             ; preds = %3902
  %3935 = ptrtoint ptr %3908 to i64
  %3936 = icmp ugt ptr %3612, %3603
  br i1 %3936, label %3954, label %3937

3937:                                             ; preds = %3934
  %3938 = sub i64 %3605, %3906
  %3939 = getelementptr inbounds i8, ptr %3910, i64 %3938
  %3940 = load <2 x i64>, ptr %3612, align 1, !tbaa !31
  store <2 x i64> %3940, ptr %3910, align 1, !tbaa !31
  %3941 = icmp ult i64 %3938, 17
  br i1 %3941, label %3954, label %3942

3942:                                             ; preds = %3937
  %3943 = getelementptr inbounds i8, ptr %3910, i64 16
  br label %3944

3944:                                             ; preds = %3944, %3942
  %3945 = phi ptr [ %3943, %3942 ], [ %3952, %3944 ]
  %3946 = phi ptr [ %3612, %3942 ], [ %3950, %3944 ]
  %3947 = getelementptr inbounds i8, ptr %3946, i64 16
  %3948 = load <2 x i64>, ptr %3947, align 1, !tbaa !31
  store <2 x i64> %3948, ptr %3945, align 1, !tbaa !31
  %3949 = getelementptr inbounds i8, ptr %3945, i64 16
  %3950 = getelementptr inbounds i8, ptr %3946, i64 32
  %3951 = load <2 x i64>, ptr %3950, align 1, !tbaa !31
  store <2 x i64> %3951, ptr %3949, align 1, !tbaa !31
  %3952 = getelementptr inbounds i8, ptr %3945, i64 32
  %3953 = icmp ult ptr %3952, %3939
  br i1 %3953, label %3944, label %3954, !llvm.loop !39

3954:                                             ; preds = %3944, %3937, %3934
  %3955 = phi ptr [ %3603, %3937 ], [ %3612, %3934 ], [ %3603, %3944 ]
  %3956 = phi ptr [ %3939, %3937 ], [ %3910, %3934 ], [ %3939, %3944 ]
  %3957 = icmp ult ptr %3955, %3908
  br i1 %3957, label %3958, label %4055

3958:                                             ; preds = %3954
  %3959 = ptrtoint ptr %3956 to i64
  %3960 = ptrtoint ptr %3955 to i64
  %3961 = sub i64 %3935, %3960
  %3962 = getelementptr i8, ptr %3955, i64 %3961
  %3963 = icmp ult i64 %3961, 8
  %3964 = sub i64 %3959, %3960
  %3965 = icmp ult i64 %3964, 32
  %3966 = select i1 %3963, i1 true, i1 %3965
  br i1 %3966, label %4002, label %3967

3967:                                             ; preds = %3958
  %3968 = icmp ult i64 %3961, 32
  br i1 %3968, label %3988, label %3969

3969:                                             ; preds = %3967
  %3970 = and i64 %3961, -32
  br label %3971

3971:                                             ; preds = %3971, %3969
  %3972 = phi i64 [ 0, %3969 ], [ %3979, %3971 ]
  %3973 = getelementptr i8, ptr %3956, i64 %3972
  %3974 = getelementptr i8, ptr %3955, i64 %3972
  %3975 = getelementptr i8, ptr %3974, i64 16
  %3976 = load <16 x i8>, ptr %3974, align 1, !tbaa !31
  %3977 = load <16 x i8>, ptr %3975, align 1, !tbaa !31
  %3978 = getelementptr i8, ptr %3973, i64 16
  store <16 x i8> %3976, ptr %3973, align 1, !tbaa !31
  store <16 x i8> %3977, ptr %3978, align 1, !tbaa !31
  %3979 = add nuw i64 %3972, 32
  %3980 = icmp eq i64 %3979, %3970
  br i1 %3980, label %3981, label %3971, !llvm.loop !77

3981:                                             ; preds = %3971
  %3982 = icmp eq i64 %3961, %3970
  br i1 %3982, label %4055, label %3983

3983:                                             ; preds = %3981
  %3984 = getelementptr i8, ptr %3955, i64 %3970
  %3985 = getelementptr i8, ptr %3956, i64 %3970
  %3986 = and i64 %3961, 24
  %3987 = icmp eq i64 %3986, 0
  br i1 %3987, label %4002, label %3988

3988:                                             ; preds = %3967, %3983
  %3989 = phi i64 [ %3970, %3983 ], [ 0, %3967 ]
  %3990 = and i64 %3961, -8
  %3991 = getelementptr i8, ptr %3956, i64 %3990
  %3992 = getelementptr i8, ptr %3955, i64 %3990
  br label %3993

3993:                                             ; preds = %3993, %3988
  %3994 = phi i64 [ %3989, %3988 ], [ %3998, %3993 ]
  %3995 = getelementptr i8, ptr %3956, i64 %3994
  %3996 = getelementptr i8, ptr %3955, i64 %3994
  %3997 = load <8 x i8>, ptr %3996, align 1, !tbaa !31
  store <8 x i8> %3997, ptr %3995, align 1, !tbaa !31
  %3998 = add nuw i64 %3994, 8
  %3999 = icmp eq i64 %3998, %3990
  br i1 %3999, label %4000, label %3993, !llvm.loop !78

4000:                                             ; preds = %3993
  %4001 = icmp eq i64 %3961, %3990
  br i1 %4001, label %4055, label %4002

4002:                                             ; preds = %3958, %3983, %4000
  %4003 = phi ptr [ %3956, %3958 ], [ %3985, %3983 ], [ %3991, %4000 ]
  %4004 = phi ptr [ %3955, %3958 ], [ %3984, %3983 ], [ %3992, %4000 ]
  %4005 = ptrtoint ptr %4004 to i64
  %4006 = sub i64 %3905, %4005
  %4007 = and i64 %4006, 7
  %4008 = icmp eq i64 %4007, 0
  br i1 %4008, label %4018, label %4009

4009:                                             ; preds = %4002, %4009
  %4010 = phi ptr [ %4015, %4009 ], [ %4003, %4002 ]
  %4011 = phi ptr [ %4013, %4009 ], [ %4004, %4002 ]
  %4012 = phi i64 [ %4016, %4009 ], [ 0, %4002 ]
  %4013 = getelementptr inbounds i8, ptr %4011, i64 1
  %4014 = load i8, ptr %4011, align 1, !tbaa !31
  %4015 = getelementptr inbounds i8, ptr %4010, i64 1
  store i8 %4014, ptr %4010, align 1, !tbaa !31
  %4016 = add i64 %4012, 1
  %4017 = icmp eq i64 %4016, %4007
  br i1 %4017, label %4018, label %4009, !llvm.loop !79

4018:                                             ; preds = %4009, %4002
  %4019 = phi ptr [ %4003, %4002 ], [ %4015, %4009 ]
  %4020 = phi ptr [ %4004, %4002 ], [ %4013, %4009 ]
  %4021 = sub i64 %4005, %3905
  %4022 = icmp ugt i64 %4021, -8
  br i1 %4022, label %4055, label %4023

4023:                                             ; preds = %4018, %4023
  %4024 = phi ptr [ %4049, %4023 ], [ %4019, %4018 ]
  %4025 = phi ptr [ %4047, %4023 ], [ %4020, %4018 ]
  %4026 = getelementptr inbounds i8, ptr %4025, i64 1
  %4027 = load i8, ptr %4025, align 1, !tbaa !31
  %4028 = getelementptr inbounds i8, ptr %4024, i64 1
  store i8 %4027, ptr %4024, align 1, !tbaa !31
  %4029 = getelementptr inbounds i8, ptr %4025, i64 2
  %4030 = load i8, ptr %4026, align 1, !tbaa !31
  %4031 = getelementptr inbounds i8, ptr %4024, i64 2
  store i8 %4030, ptr %4028, align 1, !tbaa !31
  %4032 = getelementptr inbounds i8, ptr %4025, i64 3
  %4033 = load i8, ptr %4029, align 1, !tbaa !31
  %4034 = getelementptr inbounds i8, ptr %4024, i64 3
  store i8 %4033, ptr %4031, align 1, !tbaa !31
  %4035 = getelementptr inbounds i8, ptr %4025, i64 4
  %4036 = load i8, ptr %4032, align 1, !tbaa !31
  %4037 = getelementptr inbounds i8, ptr %4024, i64 4
  store i8 %4036, ptr %4034, align 1, !tbaa !31
  %4038 = getelementptr inbounds i8, ptr %4025, i64 5
  %4039 = load i8, ptr %4035, align 1, !tbaa !31
  %4040 = getelementptr inbounds i8, ptr %4024, i64 5
  store i8 %4039, ptr %4037, align 1, !tbaa !31
  %4041 = getelementptr inbounds i8, ptr %4025, i64 6
  %4042 = load i8, ptr %4038, align 1, !tbaa !31
  %4043 = getelementptr inbounds i8, ptr %4024, i64 6
  store i8 %4042, ptr %4040, align 1, !tbaa !31
  %4044 = getelementptr inbounds i8, ptr %4025, i64 7
  %4045 = load i8, ptr %4041, align 1, !tbaa !31
  %4046 = getelementptr inbounds i8, ptr %4024, i64 7
  store i8 %4045, ptr %4043, align 1, !tbaa !31
  %4047 = getelementptr inbounds i8, ptr %4025, i64 8
  %4048 = load i8, ptr %4044, align 1, !tbaa !31
  %4049 = getelementptr inbounds i8, ptr %4024, i64 8
  store i8 %4048, ptr %4046, align 1, !tbaa !31
  %4050 = icmp eq ptr %4047, %3962
  br i1 %4050, label %4055, label %4023, !llvm.loop !80

4051:                                             ; preds = %3914, %3911
  %4052 = load ptr, ptr %3604, align 8, !tbaa !37
  %4053 = getelementptr inbounds i8, ptr %4052, i64 %3907
  store ptr %4053, ptr %3604, align 8, !tbaa !37
  %4054 = load ptr, ptr %3607, align 8, !tbaa !47
  br label %4067

4055:                                             ; preds = %3924, %4018, %4023, %3981, %4000, %3954
  %4056 = load ptr, ptr %3604, align 8, !tbaa !37
  %4057 = getelementptr inbounds i8, ptr %4056, i64 %3907
  store ptr %4057, ptr %3604, align 8, !tbaa !37
  %4058 = icmp ugt i64 %3907, 65535
  %4059 = load ptr, ptr %3607, align 8, !tbaa !47
  br i1 %4058, label %4060, label %4067, !prof !48

4060:                                             ; preds = %4055
  store i32 1, ptr %3606, align 8, !tbaa !49
  %4061 = load ptr, ptr %1, align 8, !tbaa !50
  %4062 = ptrtoint ptr %4059 to i64
  %4063 = ptrtoint ptr %4061 to i64
  %4064 = sub i64 %4062, %4063
  %4065 = lshr exact i64 %4064, 3
  %4066 = trunc i64 %4065 to i32
  store i32 %4066, ptr %3608, align 4, !tbaa !51
  br label %4067

4067:                                             ; preds = %4060, %4055, %4051
  %4068 = phi ptr [ %4054, %4051 ], [ %4059, %4060 ], [ %4059, %4055 ]
  %4069 = trunc i64 %3907 to i16
  %4070 = getelementptr inbounds %struct.SeqDef_s, ptr %4068, i64 0, i32 1
  store i16 %4069, ptr %4070, align 4, !tbaa !52
  store i32 %3831, ptr %4068, align 4, !tbaa !54
  %4071 = add i64 %3904, -3
  %4072 = icmp ugt i64 %4071, 65535
  br i1 %4072, label %4073, label %4080, !prof !55

4073:                                             ; preds = %4067
  store i32 2, ptr %3606, align 8, !tbaa !49
  %4074 = load ptr, ptr %1, align 8, !tbaa !50
  %4075 = ptrtoint ptr %4068 to i64
  %4076 = ptrtoint ptr %4074 to i64
  %4077 = sub i64 %4075, %4076
  %4078 = lshr exact i64 %4077, 3
  %4079 = trunc i64 %4078 to i32
  store i32 %4079, ptr %3608, align 4, !tbaa !51
  br label %4080

4080:                                             ; preds = %4073, %4067
  %4081 = trunc i64 %4071 to i16
  %4082 = getelementptr inbounds %struct.SeqDef_s, ptr %4068, i64 0, i32 2
  store i16 %4081, ptr %4082, align 2, !tbaa !56
  %4083 = getelementptr inbounds %struct.SeqDef_s, ptr %4068, i64 1
  store ptr %4083, ptr %3607, align 8, !tbaa !47
  %4084 = getelementptr inbounds i8, ptr %3835, i64 %3904
  %4085 = icmp ugt ptr %4084, %41
  br i1 %4085, label %4214, label %4086

4086:                                             ; preds = %4080
  %4087 = add i32 %3829, 2
  %4088 = zext i32 %3829 to i64
  %4089 = getelementptr inbounds i8, ptr %61, i64 %4088
  %4090 = load i64, ptr %4089, align 1, !tbaa !19
  %4091 = mul i64 %4090, -3523014627193847808
  %4092 = lshr i64 %4091, %3599
  %4093 = getelementptr inbounds i32, ptr %12, i64 %4092
  store i32 %4087, ptr %4093, align 4, !tbaa !20
  %4094 = getelementptr inbounds i8, ptr %4084, i64 -2
  %4095 = ptrtoint ptr %4094 to i64
  %4096 = sub i64 %4095, %23
  %4097 = trunc i64 %4096 to i32
  %4098 = load i64, ptr %4094, align 1, !tbaa !19
  %4099 = mul i64 %4098, -3523014627193847808
  %4100 = lshr i64 %4099, %3599
  %4101 = getelementptr inbounds i32, ptr %12, i64 %4100
  store i32 %4097, ptr %4101, align 4, !tbaa !20
  %4102 = icmp eq i32 %3830, 0
  br i1 %4102, label %4214, label %4103

4103:                                             ; preds = %4086, %4209
  %4104 = phi ptr [ %4212, %4209 ], [ %4083, %4086 ]
  %4105 = phi ptr [ %4191, %4209 ], [ %4084, %4086 ]
  %4106 = phi i32 [ %4107, %4209 ], [ %3834, %4086 ]
  %4107 = phi i32 [ %4106, %4209 ], [ %3830, %4086 ]
  %4108 = load i32, ptr %4105, align 1, !tbaa !20
  %4109 = zext i32 %4107 to i64
  %4110 = sub nsw i64 0, %4109
  %4111 = getelementptr inbounds i8, ptr %4105, i64 %4110
  %4112 = load i32, ptr %4111, align 1, !tbaa !20
  %4113 = icmp eq i32 %4108, %4112
  br i1 %4113, label %4114, label %4214

4114:                                             ; preds = %4103
  %4115 = getelementptr inbounds i8, ptr %4105, i64 4
  %4116 = getelementptr inbounds i8, ptr %4115, i64 %4110
  %4117 = icmp ugt ptr %3600, %4115
  br i1 %4117, label %4118, label %4144

4118:                                             ; preds = %4114
  %4119 = load i64, ptr %4116, align 1, !tbaa !19
  %4120 = load i64, ptr %4115, align 1, !tbaa !19
  %4121 = xor i64 %4120, %4119
  %4122 = icmp eq i64 %4121, 0
  br i1 %4122, label %4126, label %4123

4123:                                             ; preds = %4118
  %4124 = tail call i64 @llvm.cttz.i64(i64 %4121, i1 true), !range !34
  %4125 = lshr i64 %4124, 3
  br label %4181

4126:                                             ; preds = %4118, %4132
  %4127 = phi ptr [ %4130, %4132 ], [ %4116, %4118 ]
  %4128 = phi ptr [ %4129, %4132 ], [ %4115, %4118 ]
  %4129 = getelementptr inbounds i8, ptr %4128, i64 8
  %4130 = getelementptr inbounds i8, ptr %4127, i64 8
  %4131 = icmp ult ptr %4129, %3600
  br i1 %4131, label %4132, label %4144

4132:                                             ; preds = %4126
  %4133 = load i64, ptr %4130, align 1, !tbaa !19
  %4134 = load i64, ptr %4129, align 1, !tbaa !19
  %4135 = xor i64 %4134, %4133
  %4136 = icmp eq i64 %4135, 0
  br i1 %4136, label %4126, label %4137

4137:                                             ; preds = %4132
  %4138 = tail call i64 @llvm.cttz.i64(i64 %4135, i1 true), !range !34
  %4139 = lshr i64 %4138, 3
  %4140 = getelementptr inbounds i8, ptr %4129, i64 %4139
  %4141 = ptrtoint ptr %4140 to i64
  %4142 = ptrtoint ptr %4115 to i64
  %4143 = sub i64 %4141, %4142
  br label %4181

4144:                                             ; preds = %4126, %4114
  %4145 = phi ptr [ %4116, %4114 ], [ %4130, %4126 ]
  %4146 = phi ptr [ %4115, %4114 ], [ %4129, %4126 ]
  %4147 = icmp ult ptr %4146, %3601
  br i1 %4147, label %4148, label %4155

4148:                                             ; preds = %4144
  %4149 = load i32, ptr %4145, align 1, !tbaa !20
  %4150 = load i32, ptr %4146, align 1, !tbaa !20
  %4151 = icmp eq i32 %4149, %4150
  br i1 %4151, label %4152, label %4155

4152:                                             ; preds = %4148
  %4153 = getelementptr inbounds i8, ptr %4146, i64 4
  %4154 = getelementptr inbounds i8, ptr %4145, i64 4
  br label %4155

4155:                                             ; preds = %4152, %4148, %4144
  %4156 = phi ptr [ %4154, %4152 ], [ %4145, %4148 ], [ %4145, %4144 ]
  %4157 = phi ptr [ %4153, %4152 ], [ %4146, %4148 ], [ %4146, %4144 ]
  %4158 = icmp ult ptr %4157, %3602
  br i1 %4158, label %4159, label %4166

4159:                                             ; preds = %4155
  %4160 = load i16, ptr %4156, align 1, !tbaa !35
  %4161 = load i16, ptr %4157, align 1, !tbaa !35
  %4162 = icmp eq i16 %4160, %4161
  br i1 %4162, label %4163, label %4166

4163:                                             ; preds = %4159
  %4164 = getelementptr inbounds i8, ptr %4157, i64 2
  %4165 = getelementptr inbounds i8, ptr %4156, i64 2
  br label %4166

4166:                                             ; preds = %4163, %4159, %4155
  %4167 = phi ptr [ %4165, %4163 ], [ %4156, %4159 ], [ %4156, %4155 ]
  %4168 = phi ptr [ %4164, %4163 ], [ %4157, %4159 ], [ %4157, %4155 ]
  %4169 = icmp ult ptr %4168, %40
  br i1 %4169, label %4170, label %4176

4170:                                             ; preds = %4166
  %4171 = load i8, ptr %4167, align 1, !tbaa !31
  %4172 = load i8, ptr %4168, align 1, !tbaa !31
  %4173 = icmp eq i8 %4171, %4172
  %4174 = zext i1 %4173 to i64
  %4175 = getelementptr inbounds i8, ptr %4168, i64 %4174
  br label %4176

4176:                                             ; preds = %4170, %4166
  %4177 = phi ptr [ %4168, %4166 ], [ %4175, %4170 ]
  %4178 = ptrtoint ptr %4177 to i64
  %4179 = ptrtoint ptr %4115 to i64
  %4180 = sub i64 %4178, %4179
  br label %4181

4181:                                             ; preds = %4176, %4137, %4123
  %4182 = phi i64 [ %4180, %4176 ], [ %4125, %4123 ], [ %4143, %4137 ]
  %4183 = add i64 %4182, 4
  %4184 = ptrtoint ptr %4105 to i64
  %4185 = sub i64 %4184, %23
  %4186 = trunc i64 %4185 to i32
  %4187 = load i64, ptr %4105, align 1, !tbaa !19
  %4188 = mul i64 %4187, -3523014627193847808
  %4189 = lshr i64 %4188, %3599
  %4190 = getelementptr inbounds i32, ptr %12, i64 %4189
  store i32 %4186, ptr %4190, align 4, !tbaa !20
  %4191 = getelementptr inbounds i8, ptr %4105, i64 %4183
  %4192 = icmp ugt ptr %4105, %3603
  br i1 %4192, label %4197, label %4193

4193:                                             ; preds = %4181
  %4194 = load ptr, ptr %3604, align 8, !tbaa !37
  %4195 = load <2 x i64>, ptr %4105, align 1, !tbaa !31
  store <2 x i64> %4195, ptr %4194, align 1, !tbaa !31
  %4196 = load ptr, ptr %3607, align 8, !tbaa !47
  br label %4197

4197:                                             ; preds = %4193, %4181
  %4198 = phi ptr [ %4104, %4181 ], [ %4196, %4193 ]
  %4199 = getelementptr inbounds %struct.SeqDef_s, ptr %4198, i64 0, i32 1
  store i16 0, ptr %4199, align 4, !tbaa !52
  store i32 1, ptr %4198, align 4, !tbaa !54
  %4200 = add i64 %4182, 1
  %4201 = icmp ugt i64 %4200, 65535
  br i1 %4201, label %4202, label %4209, !prof !55

4202:                                             ; preds = %4197
  store i32 2, ptr %3606, align 8, !tbaa !49
  %4203 = load ptr, ptr %1, align 8, !tbaa !50
  %4204 = ptrtoint ptr %4198 to i64
  %4205 = ptrtoint ptr %4203 to i64
  %4206 = sub i64 %4204, %4205
  %4207 = lshr exact i64 %4206, 3
  %4208 = trunc i64 %4207 to i32
  store i32 %4208, ptr %3608, align 4, !tbaa !51
  br label %4209

4209:                                             ; preds = %4202, %4197
  %4210 = trunc i64 %4200 to i16
  %4211 = getelementptr inbounds %struct.SeqDef_s, ptr %4198, i64 0, i32 2
  store i16 %4210, ptr %4211, align 2, !tbaa !56
  %4212 = getelementptr inbounds %struct.SeqDef_s, ptr %4198, i64 1
  store ptr %4212, ptr %3607, align 8, !tbaa !47
  %4213 = icmp ugt ptr %4191, %41
  br i1 %4213, label %4214, label %4103

4214:                                             ; preds = %4209, %4103, %4086, %4080
  %4215 = phi i32 [ 0, %4086 ], [ %3830, %4080 ], [ %4107, %4103 ], [ %4106, %4209 ]
  %4216 = phi i32 [ %3834, %4086 ], [ %3834, %4080 ], [ %4106, %4103 ], [ %4107, %4209 ]
  %4217 = phi ptr [ %4084, %4086 ], [ %4084, %4080 ], [ %4105, %4103 ], [ %4191, %4209 ]
  %4218 = getelementptr inbounds i8, ptr %4217, i64 %19
  %4219 = getelementptr inbounds i8, ptr %4218, i64 1
  %4220 = icmp ult ptr %4219, %41
  br i1 %4220, label %3609, label %4221

4221:                                             ; preds = %4214, %3786, %3691, %3594
  %4222 = phi i32 [ %58, %3594 ], [ %3615, %3691 ], [ %3615, %3786 ], [ %4215, %4214 ]
  %4223 = phi i32 [ %60, %3594 ], [ 0, %3691 ], [ %3616, %3786 ], [ %4216, %4214 ]
  %4224 = phi ptr [ %3, %3594 ], [ %3612, %3691 ], [ %3612, %3786 ], [ %4217, %4214 ]
  %4225 = select i1 %59, i32 %42, i32 0
  %4226 = select i1 %57, i32 %44, i32 0
  %4227 = icmp ne i32 %4225, 0
  %4228 = icmp ne i32 %4223, 0
  %4229 = select i1 %4227, i1 %4228, i1 false
  %4230 = select i1 %4229, i32 %4225, i32 %4226
  %4231 = select i1 %4228, i32 %4223, i32 %4225
  store i32 %4231, ptr %2, align 4, !tbaa !20
  %4232 = icmp eq i32 %4222, 0
  %4233 = select i1 %4232, i32 %4230, i32 %4222
  br label %4874

4234:                                             ; preds = %2308
  br i1 %64, label %4235, label %4861

4235:                                             ; preds = %4234
  %4236 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 2
  %4237 = load i32, ptr %4236, align 4, !tbaa !18
  %4238 = sub i32 64, %4237
  %4239 = zext nneg i32 %4238 to i64
  %4240 = getelementptr inbounds i8, ptr %40, i64 -7
  %4241 = getelementptr inbounds i8, ptr %40, i64 -3
  %4242 = getelementptr inbounds i8, ptr %40, i64 -1
  %4243 = getelementptr inbounds i8, ptr %40, i64 -32
  %4244 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %4245 = ptrtoint ptr %4243 to i64
  %4246 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %4247 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %4248 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  br label %4249

4249:                                             ; preds = %4854, %4235
  %4250 = phi ptr [ %63, %4235 ], [ %4859, %4854 ]
  %4251 = phi ptr [ %62, %4235 ], [ %4858, %4854 ]
  %4252 = phi ptr [ %3, %4235 ], [ %4857, %4854 ]
  %4253 = phi ptr [ %47, %4235 ], [ %4857, %4854 ]
  %4254 = phi i32 [ %60, %4235 ], [ %4856, %4854 ]
  %4255 = phi i32 [ %58, %4235 ], [ %4855, %4854 ]
  %4256 = freeze i32 %4254
  %4257 = getelementptr inbounds i8, ptr %4253, i64 1
  %4258 = getelementptr inbounds i8, ptr %4253, i64 128
  %4259 = load i64, ptr %4253, align 1, !tbaa !19
  %4260 = mul i64 %4259, -3523014627193167104
  %4261 = lshr i64 %4260, %4239
  %4262 = load i64, ptr %4257, align 1, !tbaa !19
  %4263 = getelementptr inbounds i32, ptr %12, i64 %4261
  %4264 = load i32, ptr %4263, align 4, !tbaa !20
  %4265 = zext i32 %4256 to i64
  %4266 = sub nsw i64 0, %4265
  %4267 = icmp eq i32 %4256, 0
  br i1 %4267, label %4268, label %4335

4268:                                             ; preds = %4249, %4331
  %4269 = phi i64 [ %4302, %4331 ], [ %4261, %4249 ]
  %4270 = phi i64 [ %4322, %4331 ], [ %4262, %4249 ]
  %4271 = phi i32 [ %4321, %4331 ], [ %4264, %4249 ]
  %4272 = phi i64 [ %4332, %4331 ], [ %19, %4249 ]
  %4273 = phi ptr [ %4333, %4331 ], [ %4258, %4249 ]
  %4274 = phi ptr [ %4324, %4331 ], [ %4250, %4249 ]
  %4275 = phi ptr [ %4323, %4331 ], [ %4251, %4249 ]
  %4276 = phi ptr [ %4274, %4331 ], [ %4257, %4249 ]
  %4277 = phi ptr [ %4275, %4331 ], [ %4253, %4249 ]
  %4278 = mul i64 %4270, -3523014627193167104
  %4279 = lshr i64 %4278, %4239
  %4280 = ptrtoint ptr %4277 to i64
  %4281 = sub i64 %4280, %23
  %4282 = trunc i64 %4281 to i32
  %4283 = getelementptr inbounds i32, ptr %12, i64 %4269
  store i32 %4282, ptr %4283, align 4, !tbaa !20
  %4284 = icmp ult i32 %4271, %37
  br i1 %4284, label %4290, label %4285

4285:                                             ; preds = %4268
  %4286 = zext i32 %4271 to i64
  %4287 = getelementptr inbounds i8, ptr %21, i64 %4286
  %4288 = load i32, ptr %4287, align 1, !tbaa !20
  %4289 = load i32, ptr %4277, align 1, !tbaa !20
  br label %4293

4290:                                             ; preds = %4268
  %4291 = load i32, ptr %4277, align 1, !tbaa !20
  %4292 = xor i32 %4291, 1
  br label %4293

4293:                                             ; preds = %4290, %4285
  %4294 = phi i32 [ %4289, %4285 ], [ %4291, %4290 ]
  %4295 = phi i32 [ %4288, %4285 ], [ %4292, %4290 ]
  %4296 = icmp eq i32 %4294, %4295
  br i1 %4296, label %4430, label %4297

4297:                                             ; preds = %4293
  %4298 = getelementptr inbounds i32, ptr %12, i64 %4279
  %4299 = load i32, ptr %4298, align 4, !tbaa !20
  %4300 = load i64, ptr %4275, align 1, !tbaa !19
  %4301 = mul i64 %4300, -3523014627193167104
  %4302 = lshr i64 %4301, %4239
  %4303 = ptrtoint ptr %4276 to i64
  %4304 = sub i64 %4303, %23
  %4305 = trunc i64 %4304 to i32
  store i32 %4305, ptr %4298, align 4, !tbaa !20
  %4306 = icmp ult i32 %4299, %37
  br i1 %4306, label %4312, label %4307

4307:                                             ; preds = %4297
  %4308 = zext i32 %4299 to i64
  %4309 = getelementptr inbounds i8, ptr %21, i64 %4308
  %4310 = load i32, ptr %4309, align 1, !tbaa !20
  %4311 = load i32, ptr %4276, align 1, !tbaa !20
  br label %4315

4312:                                             ; preds = %4297
  %4313 = load i32, ptr %4276, align 1, !tbaa !20
  %4314 = xor i32 %4313, 1
  br label %4315

4315:                                             ; preds = %4312, %4307
  %4316 = phi i32 [ %4311, %4307 ], [ %4313, %4312 ]
  %4317 = phi i32 [ %4310, %4307 ], [ %4314, %4312 ]
  %4318 = icmp eq i32 %4316, %4317
  br i1 %4318, label %4391, label %4319

4319:                                             ; preds = %4315
  %4320 = getelementptr inbounds i32, ptr %12, i64 %4302
  %4321 = load i32, ptr %4320, align 4, !tbaa !20
  %4322 = load i64, ptr %4274, align 1, !tbaa !19
  %4323 = getelementptr inbounds i8, ptr %4275, i64 %4272
  %4324 = getelementptr inbounds i8, ptr %4274, i64 %4272
  %4325 = icmp ult ptr %4323, %4273
  br i1 %4325, label %4331, label %4326

4326:                                             ; preds = %4319
  %4327 = add i64 %4272, 1
  %4328 = getelementptr inbounds i8, ptr %4274, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %4328, i32 0, i32 3, i32 1)
  %4329 = getelementptr inbounds i8, ptr %4274, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %4329, i32 0, i32 3, i32 1)
  %4330 = getelementptr inbounds i8, ptr %4273, i64 128
  br label %4331

4331:                                             ; preds = %4326, %4319
  %4332 = phi i64 [ %4272, %4319 ], [ %4327, %4326 ]
  %4333 = phi ptr [ %4273, %4319 ], [ %4330, %4326 ]
  %4334 = icmp ult ptr %4324, %41
  br i1 %4334, label %4268, label %4861, !llvm.loop !32

4335:                                             ; preds = %4249, %4426
  %4336 = phi i64 [ %4374, %4426 ], [ %4261, %4249 ]
  %4337 = phi i64 [ %4402, %4426 ], [ %4262, %4249 ]
  %4338 = phi i32 [ %4401, %4426 ], [ %4264, %4249 ]
  %4339 = phi i64 [ %4427, %4426 ], [ %19, %4249 ]
  %4340 = phi ptr [ %4428, %4426 ], [ %4258, %4249 ]
  %4341 = phi ptr [ %4404, %4426 ], [ %4250, %4249 ]
  %4342 = phi ptr [ %4403, %4426 ], [ %4251, %4249 ]
  %4343 = phi ptr [ %4341, %4426 ], [ %4257, %4249 ]
  %4344 = phi ptr [ %4342, %4426 ], [ %4253, %4249 ]
  %4345 = mul i64 %4337, -3523014627193167104
  %4346 = lshr i64 %4345, %4239
  %4347 = getelementptr inbounds i8, ptr %4342, i64 %4266
  %4348 = load i32, ptr %4347, align 1, !tbaa !20
  %4349 = ptrtoint ptr %4344 to i64
  %4350 = sub i64 %4349, %23
  %4351 = trunc i64 %4350 to i32
  %4352 = getelementptr inbounds i32, ptr %12, i64 %4336
  store i32 %4351, ptr %4352, align 4, !tbaa !20
  %4353 = load i32, ptr %4342, align 1, !tbaa !20
  %4354 = icmp eq i32 %4353, %4348
  br i1 %4354, label %4411, label %4355

4355:                                             ; preds = %4335
  %4356 = icmp ult i32 %4338, %37
  br i1 %4356, label %4362, label %4357

4357:                                             ; preds = %4355
  %4358 = zext i32 %4338 to i64
  %4359 = getelementptr inbounds i8, ptr %21, i64 %4358
  %4360 = load i32, ptr %4359, align 1, !tbaa !20
  %4361 = load i32, ptr %4344, align 1, !tbaa !20
  br label %4365

4362:                                             ; preds = %4355
  %4363 = load i32, ptr %4344, align 1, !tbaa !20
  %4364 = xor i32 %4363, 1
  br label %4365

4365:                                             ; preds = %4362, %4357
  %4366 = phi i32 [ %4361, %4357 ], [ %4363, %4362 ]
  %4367 = phi i32 [ %4360, %4357 ], [ %4364, %4362 ]
  %4368 = icmp eq i32 %4366, %4367
  br i1 %4368, label %4430, label %4369

4369:                                             ; preds = %4365
  %4370 = getelementptr inbounds i32, ptr %12, i64 %4346
  %4371 = load i32, ptr %4370, align 4, !tbaa !20
  %4372 = load i64, ptr %4342, align 1, !tbaa !19
  %4373 = mul i64 %4372, -3523014627193167104
  %4374 = lshr i64 %4373, %4239
  %4375 = ptrtoint ptr %4343 to i64
  %4376 = sub i64 %4375, %23
  %4377 = trunc i64 %4376 to i32
  store i32 %4377, ptr %4370, align 4, !tbaa !20
  %4378 = icmp ult i32 %4371, %37
  br i1 %4378, label %4384, label %4379

4379:                                             ; preds = %4369
  %4380 = zext i32 %4371 to i64
  %4381 = getelementptr inbounds i8, ptr %21, i64 %4380
  %4382 = load i32, ptr %4381, align 1, !tbaa !20
  %4383 = load i32, ptr %4343, align 1, !tbaa !20
  br label %4387

4384:                                             ; preds = %4369
  %4385 = load i32, ptr %4343, align 1, !tbaa !20
  %4386 = xor i32 %4385, 1
  br label %4387

4387:                                             ; preds = %4384, %4379
  %4388 = phi i32 [ %4383, %4379 ], [ %4385, %4384 ]
  %4389 = phi i32 [ %4382, %4379 ], [ %4386, %4384 ]
  %4390 = icmp eq i32 %4388, %4389
  br i1 %4390, label %4391, label %4399

4391:                                             ; preds = %4387, %4315
  %4392 = phi i32 [ %4299, %4315 ], [ %4371, %4387 ]
  %4393 = phi i64 [ %4302, %4315 ], [ %4374, %4387 ]
  %4394 = phi i32 [ %4305, %4315 ], [ %4377, %4387 ]
  %4395 = phi i64 [ %4272, %4315 ], [ %4339, %4387 ]
  %4396 = phi ptr [ %4275, %4315 ], [ %4342, %4387 ]
  %4397 = phi ptr [ %4276, %4315 ], [ %4343, %4387 ]
  %4398 = icmp ult i64 %4395, 5
  br i1 %4398, label %4430, label %4440

4399:                                             ; preds = %4387
  %4400 = getelementptr inbounds i32, ptr %12, i64 %4374
  %4401 = load i32, ptr %4400, align 4, !tbaa !20
  %4402 = load i64, ptr %4341, align 1, !tbaa !19
  %4403 = getelementptr inbounds i8, ptr %4342, i64 %4339
  %4404 = getelementptr inbounds i8, ptr %4341, i64 %4339
  %4405 = icmp ult ptr %4403, %4340
  br i1 %4405, label %4426, label %4406

4406:                                             ; preds = %4399
  %4407 = add i64 %4339, 1
  %4408 = getelementptr inbounds i8, ptr %4341, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %4408, i32 0, i32 3, i32 1)
  %4409 = getelementptr inbounds i8, ptr %4341, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %4409, i32 0, i32 3, i32 1)
  %4410 = getelementptr inbounds i8, ptr %4340, i64 128
  br label %4426

4411:                                             ; preds = %4335
  %4412 = getelementptr inbounds i8, ptr %4342, i64 %4266
  %4413 = getelementptr inbounds i8, ptr %4342, i64 -1
  %4414 = load i8, ptr %4413, align 1, !tbaa !31
  %4415 = getelementptr inbounds i8, ptr %4412, i64 -1
  %4416 = load i8, ptr %4415, align 1, !tbaa !31
  %4417 = icmp eq i8 %4414, %4416
  %4418 = sext i1 %4417 to i64
  %4419 = getelementptr inbounds i8, ptr %4342, i64 %4418
  %4420 = getelementptr inbounds i8, ptr %4412, i64 %4418
  %4421 = select i1 %4417, i64 5, i64 4
  %4422 = ptrtoint ptr %4343 to i64
  %4423 = sub i64 %4422, %23
  %4424 = trunc i64 %4423 to i32
  %4425 = getelementptr inbounds i32, ptr %12, i64 %4346
  store i32 %4424, ptr %4425, align 4, !tbaa !20
  br label %4468

4426:                                             ; preds = %4406, %4399
  %4427 = phi i64 [ %4339, %4399 ], [ %4407, %4406 ]
  %4428 = phi ptr [ %4340, %4399 ], [ %4410, %4406 ]
  %4429 = icmp ult ptr %4404, %41
  br i1 %4429, label %4335, label %4861, !llvm.loop !32

4430:                                             ; preds = %4365, %4293, %4391
  %4431 = phi ptr [ %4396, %4391 ], [ %4276, %4293 ], [ %4343, %4365 ]
  %4432 = phi i64 [ %4393, %4391 ], [ %4279, %4293 ], [ %4346, %4365 ]
  %4433 = phi i32 [ %4392, %4391 ], [ %4271, %4293 ], [ %4338, %4365 ]
  %4434 = phi i32 [ %4394, %4391 ], [ %4282, %4293 ], [ %4351, %4365 ]
  %4435 = phi ptr [ %4397, %4391 ], [ %4277, %4293 ], [ %4344, %4365 ]
  %4436 = ptrtoint ptr %4431 to i64
  %4437 = sub i64 %4436, %23
  %4438 = trunc i64 %4437 to i32
  %4439 = getelementptr inbounds i32, ptr %12, i64 %4432
  store i32 %4438, ptr %4439, align 4, !tbaa !20
  br label %4440

4440:                                             ; preds = %4430, %4391
  %4441 = phi i32 [ %4392, %4391 ], [ %4433, %4430 ]
  %4442 = phi i32 [ %4394, %4391 ], [ %4434, %4430 ]
  %4443 = phi ptr [ %4397, %4391 ], [ %4435, %4430 ]
  %4444 = zext i32 %4441 to i64
  %4445 = getelementptr inbounds i8, ptr %21, i64 %4444
  %4446 = ptrtoint ptr %4443 to i64
  %4447 = ptrtoint ptr %4445 to i64
  %4448 = sub i64 %4446, %4447
  %4449 = trunc i64 %4448 to i32
  %4450 = add i32 %4449, 3
  %4451 = icmp ugt ptr %4443, %4252
  %4452 = icmp ugt i32 %4441, %37
  %4453 = and i1 %4452, %4451
  br i1 %4453, label %4454, label %4468

4454:                                             ; preds = %4440, %4463
  %4455 = phi ptr [ %4458, %4463 ], [ %4443, %4440 ]
  %4456 = phi i64 [ %4464, %4463 ], [ 4, %4440 ]
  %4457 = phi ptr [ %4460, %4463 ], [ %4445, %4440 ]
  %4458 = getelementptr inbounds i8, ptr %4455, i64 -1
  %4459 = load i8, ptr %4458, align 1, !tbaa !31
  %4460 = getelementptr inbounds i8, ptr %4457, i64 -1
  %4461 = load i8, ptr %4460, align 1, !tbaa !31
  %4462 = icmp eq i8 %4459, %4461
  br i1 %4462, label %4463, label %4468

4463:                                             ; preds = %4454
  %4464 = add i64 %4456, 1
  %4465 = icmp ugt ptr %4458, %4252
  %4466 = icmp ugt ptr %4460, %39
  %4467 = and i1 %4465, %4466
  br i1 %4467, label %4454, label %4468, !llvm.loop !33

4468:                                             ; preds = %4463, %4454, %4440, %4411
  %4469 = phi i32 [ %4351, %4411 ], [ %4442, %4440 ], [ %4442, %4454 ], [ %4442, %4463 ]
  %4470 = phi i32 [ %4255, %4411 ], [ %4256, %4440 ], [ %4256, %4454 ], [ %4256, %4463 ]
  %4471 = phi i32 [ 1, %4411 ], [ %4450, %4440 ], [ %4450, %4454 ], [ %4450, %4463 ]
  %4472 = phi ptr [ %4420, %4411 ], [ %4445, %4440 ], [ %4460, %4463 ], [ %4457, %4454 ]
  %4473 = phi i64 [ %4421, %4411 ], [ 4, %4440 ], [ %4464, %4463 ], [ %4456, %4454 ]
  %4474 = phi i32 [ %4256, %4411 ], [ %4449, %4440 ], [ %4449, %4454 ], [ %4449, %4463 ]
  %4475 = phi ptr [ %4419, %4411 ], [ %4443, %4440 ], [ %4458, %4463 ], [ %4455, %4454 ]
  %4476 = getelementptr inbounds i8, ptr %4475, i64 %4473
  %4477 = getelementptr inbounds i8, ptr %4472, i64 %4473
  %4478 = icmp ugt ptr %4240, %4476
  br i1 %4478, label %4479, label %4505

4479:                                             ; preds = %4468
  %4480 = load i64, ptr %4477, align 1, !tbaa !19
  %4481 = load i64, ptr %4476, align 1, !tbaa !19
  %4482 = xor i64 %4481, %4480
  %4483 = icmp eq i64 %4482, 0
  br i1 %4483, label %4487, label %4484

4484:                                             ; preds = %4479
  %4485 = tail call i64 @llvm.cttz.i64(i64 %4482, i1 true), !range !34
  %4486 = lshr i64 %4485, 3
  br label %4542

4487:                                             ; preds = %4479, %4493
  %4488 = phi ptr [ %4491, %4493 ], [ %4477, %4479 ]
  %4489 = phi ptr [ %4490, %4493 ], [ %4476, %4479 ]
  %4490 = getelementptr inbounds i8, ptr %4489, i64 8
  %4491 = getelementptr inbounds i8, ptr %4488, i64 8
  %4492 = icmp ult ptr %4490, %4240
  br i1 %4492, label %4493, label %4505

4493:                                             ; preds = %4487
  %4494 = load i64, ptr %4491, align 1, !tbaa !19
  %4495 = load i64, ptr %4490, align 1, !tbaa !19
  %4496 = xor i64 %4495, %4494
  %4497 = icmp eq i64 %4496, 0
  br i1 %4497, label %4487, label %4498

4498:                                             ; preds = %4493
  %4499 = tail call i64 @llvm.cttz.i64(i64 %4496, i1 true), !range !34
  %4500 = lshr i64 %4499, 3
  %4501 = getelementptr inbounds i8, ptr %4490, i64 %4500
  %4502 = ptrtoint ptr %4501 to i64
  %4503 = ptrtoint ptr %4476 to i64
  %4504 = sub i64 %4502, %4503
  br label %4542

4505:                                             ; preds = %4487, %4468
  %4506 = phi ptr [ %4477, %4468 ], [ %4491, %4487 ]
  %4507 = phi ptr [ %4476, %4468 ], [ %4490, %4487 ]
  %4508 = icmp ult ptr %4507, %4241
  br i1 %4508, label %4509, label %4516

4509:                                             ; preds = %4505
  %4510 = load i32, ptr %4506, align 1, !tbaa !20
  %4511 = load i32, ptr %4507, align 1, !tbaa !20
  %4512 = icmp eq i32 %4510, %4511
  br i1 %4512, label %4513, label %4516

4513:                                             ; preds = %4509
  %4514 = getelementptr inbounds i8, ptr %4507, i64 4
  %4515 = getelementptr inbounds i8, ptr %4506, i64 4
  br label %4516

4516:                                             ; preds = %4513, %4509, %4505
  %4517 = phi ptr [ %4515, %4513 ], [ %4506, %4509 ], [ %4506, %4505 ]
  %4518 = phi ptr [ %4514, %4513 ], [ %4507, %4509 ], [ %4507, %4505 ]
  %4519 = icmp ult ptr %4518, %4242
  br i1 %4519, label %4520, label %4527

4520:                                             ; preds = %4516
  %4521 = load i16, ptr %4517, align 1, !tbaa !35
  %4522 = load i16, ptr %4518, align 1, !tbaa !35
  %4523 = icmp eq i16 %4521, %4522
  br i1 %4523, label %4524, label %4527

4524:                                             ; preds = %4520
  %4525 = getelementptr inbounds i8, ptr %4518, i64 2
  %4526 = getelementptr inbounds i8, ptr %4517, i64 2
  br label %4527

4527:                                             ; preds = %4524, %4520, %4516
  %4528 = phi ptr [ %4526, %4524 ], [ %4517, %4520 ], [ %4517, %4516 ]
  %4529 = phi ptr [ %4525, %4524 ], [ %4518, %4520 ], [ %4518, %4516 ]
  %4530 = icmp ult ptr %4529, %40
  br i1 %4530, label %4531, label %4537

4531:                                             ; preds = %4527
  %4532 = load i8, ptr %4528, align 1, !tbaa !31
  %4533 = load i8, ptr %4529, align 1, !tbaa !31
  %4534 = icmp eq i8 %4532, %4533
  %4535 = zext i1 %4534 to i64
  %4536 = getelementptr inbounds i8, ptr %4529, i64 %4535
  br label %4537

4537:                                             ; preds = %4531, %4527
  %4538 = phi ptr [ %4529, %4527 ], [ %4536, %4531 ]
  %4539 = ptrtoint ptr %4538 to i64
  %4540 = ptrtoint ptr %4476 to i64
  %4541 = sub i64 %4539, %4540
  br label %4542

4542:                                             ; preds = %4537, %4498, %4484
  %4543 = phi i64 [ %4541, %4537 ], [ %4486, %4484 ], [ %4504, %4498 ]
  %4544 = add i64 %4543, %4473
  %4545 = ptrtoint ptr %4475 to i64
  %4546 = ptrtoint ptr %4252 to i64
  %4547 = sub i64 %4545, %4546
  %4548 = getelementptr inbounds i8, ptr %4252, i64 %4547
  %4549 = icmp ugt ptr %4548, %4243
  %4550 = load ptr, ptr %4244, align 8, !tbaa !37
  br i1 %4549, label %4574, label %4551

4551:                                             ; preds = %4542
  %4552 = load <2 x i64>, ptr %4252, align 1, !tbaa !31
  store <2 x i64> %4552, ptr %4550, align 1, !tbaa !31
  %4553 = icmp ugt i64 %4547, 16
  br i1 %4553, label %4554, label %4691

4554:                                             ; preds = %4551
  %4555 = load ptr, ptr %4244, align 8, !tbaa !37
  %4556 = getelementptr inbounds i8, ptr %4555, i64 16
  %4557 = getelementptr inbounds i8, ptr %4252, i64 16
  %4558 = add i64 %4547, -16
  %4559 = getelementptr inbounds i8, ptr %4555, i64 %4547
  %4560 = load <2 x i64>, ptr %4557, align 1, !tbaa !31
  store <2 x i64> %4560, ptr %4556, align 1, !tbaa !31
  %4561 = icmp ult i64 %4558, 17
  br i1 %4561, label %4691, label %4562

4562:                                             ; preds = %4554
  %4563 = getelementptr inbounds i8, ptr %4555, i64 32
  br label %4564

4564:                                             ; preds = %4564, %4562
  %4565 = phi ptr [ %4563, %4562 ], [ %4572, %4564 ]
  %4566 = phi ptr [ %4557, %4562 ], [ %4570, %4564 ]
  %4567 = getelementptr inbounds i8, ptr %4566, i64 16
  %4568 = load <2 x i64>, ptr %4567, align 1, !tbaa !31
  store <2 x i64> %4568, ptr %4565, align 1, !tbaa !31
  %4569 = getelementptr inbounds i8, ptr %4565, i64 16
  %4570 = getelementptr inbounds i8, ptr %4566, i64 32
  %4571 = load <2 x i64>, ptr %4570, align 1, !tbaa !31
  store <2 x i64> %4571, ptr %4569, align 1, !tbaa !31
  %4572 = getelementptr inbounds i8, ptr %4565, i64 32
  %4573 = icmp ult ptr %4572, %4559
  br i1 %4573, label %4564, label %4695, !llvm.loop !39

4574:                                             ; preds = %4542
  %4575 = ptrtoint ptr %4548 to i64
  %4576 = icmp ugt ptr %4252, %4243
  br i1 %4576, label %4594, label %4577

4577:                                             ; preds = %4574
  %4578 = sub i64 %4245, %4546
  %4579 = getelementptr inbounds i8, ptr %4550, i64 %4578
  %4580 = load <2 x i64>, ptr %4252, align 1, !tbaa !31
  store <2 x i64> %4580, ptr %4550, align 1, !tbaa !31
  %4581 = icmp ult i64 %4578, 17
  br i1 %4581, label %4594, label %4582

4582:                                             ; preds = %4577
  %4583 = getelementptr inbounds i8, ptr %4550, i64 16
  br label %4584

4584:                                             ; preds = %4584, %4582
  %4585 = phi ptr [ %4583, %4582 ], [ %4592, %4584 ]
  %4586 = phi ptr [ %4252, %4582 ], [ %4590, %4584 ]
  %4587 = getelementptr inbounds i8, ptr %4586, i64 16
  %4588 = load <2 x i64>, ptr %4587, align 1, !tbaa !31
  store <2 x i64> %4588, ptr %4585, align 1, !tbaa !31
  %4589 = getelementptr inbounds i8, ptr %4585, i64 16
  %4590 = getelementptr inbounds i8, ptr %4586, i64 32
  %4591 = load <2 x i64>, ptr %4590, align 1, !tbaa !31
  store <2 x i64> %4591, ptr %4589, align 1, !tbaa !31
  %4592 = getelementptr inbounds i8, ptr %4585, i64 32
  %4593 = icmp ult ptr %4592, %4579
  br i1 %4593, label %4584, label %4594, !llvm.loop !39

4594:                                             ; preds = %4584, %4577, %4574
  %4595 = phi ptr [ %4243, %4577 ], [ %4252, %4574 ], [ %4243, %4584 ]
  %4596 = phi ptr [ %4579, %4577 ], [ %4550, %4574 ], [ %4579, %4584 ]
  %4597 = icmp ult ptr %4595, %4548
  br i1 %4597, label %4598, label %4695

4598:                                             ; preds = %4594
  %4599 = ptrtoint ptr %4596 to i64
  %4600 = ptrtoint ptr %4595 to i64
  %4601 = sub i64 %4575, %4600
  %4602 = getelementptr i8, ptr %4595, i64 %4601
  %4603 = icmp ult i64 %4601, 8
  %4604 = sub i64 %4599, %4600
  %4605 = icmp ult i64 %4604, 32
  %4606 = select i1 %4603, i1 true, i1 %4605
  br i1 %4606, label %4642, label %4607

4607:                                             ; preds = %4598
  %4608 = icmp ult i64 %4601, 32
  br i1 %4608, label %4628, label %4609

4609:                                             ; preds = %4607
  %4610 = and i64 %4601, -32
  br label %4611

4611:                                             ; preds = %4611, %4609
  %4612 = phi i64 [ 0, %4609 ], [ %4619, %4611 ]
  %4613 = getelementptr i8, ptr %4596, i64 %4612
  %4614 = getelementptr i8, ptr %4595, i64 %4612
  %4615 = getelementptr i8, ptr %4614, i64 16
  %4616 = load <16 x i8>, ptr %4614, align 1, !tbaa !31
  %4617 = load <16 x i8>, ptr %4615, align 1, !tbaa !31
  %4618 = getelementptr i8, ptr %4613, i64 16
  store <16 x i8> %4616, ptr %4613, align 1, !tbaa !31
  store <16 x i8> %4617, ptr %4618, align 1, !tbaa !31
  %4619 = add nuw i64 %4612, 32
  %4620 = icmp eq i64 %4619, %4610
  br i1 %4620, label %4621, label %4611, !llvm.loop !81

4621:                                             ; preds = %4611
  %4622 = icmp eq i64 %4601, %4610
  br i1 %4622, label %4695, label %4623

4623:                                             ; preds = %4621
  %4624 = getelementptr i8, ptr %4595, i64 %4610
  %4625 = getelementptr i8, ptr %4596, i64 %4610
  %4626 = and i64 %4601, 24
  %4627 = icmp eq i64 %4626, 0
  br i1 %4627, label %4642, label %4628

4628:                                             ; preds = %4607, %4623
  %4629 = phi i64 [ %4610, %4623 ], [ 0, %4607 ]
  %4630 = and i64 %4601, -8
  %4631 = getelementptr i8, ptr %4596, i64 %4630
  %4632 = getelementptr i8, ptr %4595, i64 %4630
  br label %4633

4633:                                             ; preds = %4633, %4628
  %4634 = phi i64 [ %4629, %4628 ], [ %4638, %4633 ]
  %4635 = getelementptr i8, ptr %4596, i64 %4634
  %4636 = getelementptr i8, ptr %4595, i64 %4634
  %4637 = load <8 x i8>, ptr %4636, align 1, !tbaa !31
  store <8 x i8> %4637, ptr %4635, align 1, !tbaa !31
  %4638 = add nuw i64 %4634, 8
  %4639 = icmp eq i64 %4638, %4630
  br i1 %4639, label %4640, label %4633, !llvm.loop !82

4640:                                             ; preds = %4633
  %4641 = icmp eq i64 %4601, %4630
  br i1 %4641, label %4695, label %4642

4642:                                             ; preds = %4598, %4623, %4640
  %4643 = phi ptr [ %4596, %4598 ], [ %4625, %4623 ], [ %4631, %4640 ]
  %4644 = phi ptr [ %4595, %4598 ], [ %4624, %4623 ], [ %4632, %4640 ]
  %4645 = ptrtoint ptr %4644 to i64
  %4646 = sub i64 %4545, %4645
  %4647 = and i64 %4646, 7
  %4648 = icmp eq i64 %4647, 0
  br i1 %4648, label %4658, label %4649

4649:                                             ; preds = %4642, %4649
  %4650 = phi ptr [ %4655, %4649 ], [ %4643, %4642 ]
  %4651 = phi ptr [ %4653, %4649 ], [ %4644, %4642 ]
  %4652 = phi i64 [ %4656, %4649 ], [ 0, %4642 ]
  %4653 = getelementptr inbounds i8, ptr %4651, i64 1
  %4654 = load i8, ptr %4651, align 1, !tbaa !31
  %4655 = getelementptr inbounds i8, ptr %4650, i64 1
  store i8 %4654, ptr %4650, align 1, !tbaa !31
  %4656 = add i64 %4652, 1
  %4657 = icmp eq i64 %4656, %4647
  br i1 %4657, label %4658, label %4649, !llvm.loop !83

4658:                                             ; preds = %4649, %4642
  %4659 = phi ptr [ %4643, %4642 ], [ %4655, %4649 ]
  %4660 = phi ptr [ %4644, %4642 ], [ %4653, %4649 ]
  %4661 = sub i64 %4645, %4545
  %4662 = icmp ugt i64 %4661, -8
  br i1 %4662, label %4695, label %4663

4663:                                             ; preds = %4658, %4663
  %4664 = phi ptr [ %4689, %4663 ], [ %4659, %4658 ]
  %4665 = phi ptr [ %4687, %4663 ], [ %4660, %4658 ]
  %4666 = getelementptr inbounds i8, ptr %4665, i64 1
  %4667 = load i8, ptr %4665, align 1, !tbaa !31
  %4668 = getelementptr inbounds i8, ptr %4664, i64 1
  store i8 %4667, ptr %4664, align 1, !tbaa !31
  %4669 = getelementptr inbounds i8, ptr %4665, i64 2
  %4670 = load i8, ptr %4666, align 1, !tbaa !31
  %4671 = getelementptr inbounds i8, ptr %4664, i64 2
  store i8 %4670, ptr %4668, align 1, !tbaa !31
  %4672 = getelementptr inbounds i8, ptr %4665, i64 3
  %4673 = load i8, ptr %4669, align 1, !tbaa !31
  %4674 = getelementptr inbounds i8, ptr %4664, i64 3
  store i8 %4673, ptr %4671, align 1, !tbaa !31
  %4675 = getelementptr inbounds i8, ptr %4665, i64 4
  %4676 = load i8, ptr %4672, align 1, !tbaa !31
  %4677 = getelementptr inbounds i8, ptr %4664, i64 4
  store i8 %4676, ptr %4674, align 1, !tbaa !31
  %4678 = getelementptr inbounds i8, ptr %4665, i64 5
  %4679 = load i8, ptr %4675, align 1, !tbaa !31
  %4680 = getelementptr inbounds i8, ptr %4664, i64 5
  store i8 %4679, ptr %4677, align 1, !tbaa !31
  %4681 = getelementptr inbounds i8, ptr %4665, i64 6
  %4682 = load i8, ptr %4678, align 1, !tbaa !31
  %4683 = getelementptr inbounds i8, ptr %4664, i64 6
  store i8 %4682, ptr %4680, align 1, !tbaa !31
  %4684 = getelementptr inbounds i8, ptr %4665, i64 7
  %4685 = load i8, ptr %4681, align 1, !tbaa !31
  %4686 = getelementptr inbounds i8, ptr %4664, i64 7
  store i8 %4685, ptr %4683, align 1, !tbaa !31
  %4687 = getelementptr inbounds i8, ptr %4665, i64 8
  %4688 = load i8, ptr %4684, align 1, !tbaa !31
  %4689 = getelementptr inbounds i8, ptr %4664, i64 8
  store i8 %4688, ptr %4686, align 1, !tbaa !31
  %4690 = icmp eq ptr %4687, %4602
  br i1 %4690, label %4695, label %4663, !llvm.loop !84

4691:                                             ; preds = %4554, %4551
  %4692 = load ptr, ptr %4244, align 8, !tbaa !37
  %4693 = getelementptr inbounds i8, ptr %4692, i64 %4547
  store ptr %4693, ptr %4244, align 8, !tbaa !37
  %4694 = load ptr, ptr %4247, align 8, !tbaa !47
  br label %4707

4695:                                             ; preds = %4564, %4658, %4663, %4621, %4640, %4594
  %4696 = load ptr, ptr %4244, align 8, !tbaa !37
  %4697 = getelementptr inbounds i8, ptr %4696, i64 %4547
  store ptr %4697, ptr %4244, align 8, !tbaa !37
  %4698 = icmp ugt i64 %4547, 65535
  %4699 = load ptr, ptr %4247, align 8, !tbaa !47
  br i1 %4698, label %4700, label %4707, !prof !48

4700:                                             ; preds = %4695
  store i32 1, ptr %4246, align 8, !tbaa !49
  %4701 = load ptr, ptr %1, align 8, !tbaa !50
  %4702 = ptrtoint ptr %4699 to i64
  %4703 = ptrtoint ptr %4701 to i64
  %4704 = sub i64 %4702, %4703
  %4705 = lshr exact i64 %4704, 3
  %4706 = trunc i64 %4705 to i32
  store i32 %4706, ptr %4248, align 4, !tbaa !51
  br label %4707

4707:                                             ; preds = %4700, %4695, %4691
  %4708 = phi ptr [ %4694, %4691 ], [ %4699, %4700 ], [ %4699, %4695 ]
  %4709 = trunc i64 %4547 to i16
  %4710 = getelementptr inbounds %struct.SeqDef_s, ptr %4708, i64 0, i32 1
  store i16 %4709, ptr %4710, align 4, !tbaa !52
  store i32 %4471, ptr %4708, align 4, !tbaa !54
  %4711 = add i64 %4544, -3
  %4712 = icmp ugt i64 %4711, 65535
  br i1 %4712, label %4713, label %4720, !prof !55

4713:                                             ; preds = %4707
  store i32 2, ptr %4246, align 8, !tbaa !49
  %4714 = load ptr, ptr %1, align 8, !tbaa !50
  %4715 = ptrtoint ptr %4708 to i64
  %4716 = ptrtoint ptr %4714 to i64
  %4717 = sub i64 %4715, %4716
  %4718 = lshr exact i64 %4717, 3
  %4719 = trunc i64 %4718 to i32
  store i32 %4719, ptr %4248, align 4, !tbaa !51
  br label %4720

4720:                                             ; preds = %4713, %4707
  %4721 = trunc i64 %4711 to i16
  %4722 = getelementptr inbounds %struct.SeqDef_s, ptr %4708, i64 0, i32 2
  store i16 %4721, ptr %4722, align 2, !tbaa !56
  %4723 = getelementptr inbounds %struct.SeqDef_s, ptr %4708, i64 1
  store ptr %4723, ptr %4247, align 8, !tbaa !47
  %4724 = getelementptr inbounds i8, ptr %4475, i64 %4544
  %4725 = icmp ugt ptr %4724, %41
  br i1 %4725, label %4854, label %4726

4726:                                             ; preds = %4720
  %4727 = add i32 %4469, 2
  %4728 = zext i32 %4469 to i64
  %4729 = getelementptr inbounds i8, ptr %61, i64 %4728
  %4730 = load i64, ptr %4729, align 1, !tbaa !19
  %4731 = mul i64 %4730, -3523014627193167104
  %4732 = lshr i64 %4731, %4239
  %4733 = getelementptr inbounds i32, ptr %12, i64 %4732
  store i32 %4727, ptr %4733, align 4, !tbaa !20
  %4734 = getelementptr inbounds i8, ptr %4724, i64 -2
  %4735 = ptrtoint ptr %4734 to i64
  %4736 = sub i64 %4735, %23
  %4737 = trunc i64 %4736 to i32
  %4738 = load i64, ptr %4734, align 1, !tbaa !19
  %4739 = mul i64 %4738, -3523014627193167104
  %4740 = lshr i64 %4739, %4239
  %4741 = getelementptr inbounds i32, ptr %12, i64 %4740
  store i32 %4737, ptr %4741, align 4, !tbaa !20
  %4742 = icmp eq i32 %4470, 0
  br i1 %4742, label %4854, label %4743

4743:                                             ; preds = %4726, %4849
  %4744 = phi ptr [ %4852, %4849 ], [ %4723, %4726 ]
  %4745 = phi ptr [ %4831, %4849 ], [ %4724, %4726 ]
  %4746 = phi i32 [ %4747, %4849 ], [ %4474, %4726 ]
  %4747 = phi i32 [ %4746, %4849 ], [ %4470, %4726 ]
  %4748 = load i32, ptr %4745, align 1, !tbaa !20
  %4749 = zext i32 %4747 to i64
  %4750 = sub nsw i64 0, %4749
  %4751 = getelementptr inbounds i8, ptr %4745, i64 %4750
  %4752 = load i32, ptr %4751, align 1, !tbaa !20
  %4753 = icmp eq i32 %4748, %4752
  br i1 %4753, label %4754, label %4854

4754:                                             ; preds = %4743
  %4755 = getelementptr inbounds i8, ptr %4745, i64 4
  %4756 = getelementptr inbounds i8, ptr %4755, i64 %4750
  %4757 = icmp ugt ptr %4240, %4755
  br i1 %4757, label %4758, label %4784

4758:                                             ; preds = %4754
  %4759 = load i64, ptr %4756, align 1, !tbaa !19
  %4760 = load i64, ptr %4755, align 1, !tbaa !19
  %4761 = xor i64 %4760, %4759
  %4762 = icmp eq i64 %4761, 0
  br i1 %4762, label %4766, label %4763

4763:                                             ; preds = %4758
  %4764 = tail call i64 @llvm.cttz.i64(i64 %4761, i1 true), !range !34
  %4765 = lshr i64 %4764, 3
  br label %4821

4766:                                             ; preds = %4758, %4772
  %4767 = phi ptr [ %4770, %4772 ], [ %4756, %4758 ]
  %4768 = phi ptr [ %4769, %4772 ], [ %4755, %4758 ]
  %4769 = getelementptr inbounds i8, ptr %4768, i64 8
  %4770 = getelementptr inbounds i8, ptr %4767, i64 8
  %4771 = icmp ult ptr %4769, %4240
  br i1 %4771, label %4772, label %4784

4772:                                             ; preds = %4766
  %4773 = load i64, ptr %4770, align 1, !tbaa !19
  %4774 = load i64, ptr %4769, align 1, !tbaa !19
  %4775 = xor i64 %4774, %4773
  %4776 = icmp eq i64 %4775, 0
  br i1 %4776, label %4766, label %4777

4777:                                             ; preds = %4772
  %4778 = tail call i64 @llvm.cttz.i64(i64 %4775, i1 true), !range !34
  %4779 = lshr i64 %4778, 3
  %4780 = getelementptr inbounds i8, ptr %4769, i64 %4779
  %4781 = ptrtoint ptr %4780 to i64
  %4782 = ptrtoint ptr %4755 to i64
  %4783 = sub i64 %4781, %4782
  br label %4821

4784:                                             ; preds = %4766, %4754
  %4785 = phi ptr [ %4756, %4754 ], [ %4770, %4766 ]
  %4786 = phi ptr [ %4755, %4754 ], [ %4769, %4766 ]
  %4787 = icmp ult ptr %4786, %4241
  br i1 %4787, label %4788, label %4795

4788:                                             ; preds = %4784
  %4789 = load i32, ptr %4785, align 1, !tbaa !20
  %4790 = load i32, ptr %4786, align 1, !tbaa !20
  %4791 = icmp eq i32 %4789, %4790
  br i1 %4791, label %4792, label %4795

4792:                                             ; preds = %4788
  %4793 = getelementptr inbounds i8, ptr %4786, i64 4
  %4794 = getelementptr inbounds i8, ptr %4785, i64 4
  br label %4795

4795:                                             ; preds = %4792, %4788, %4784
  %4796 = phi ptr [ %4794, %4792 ], [ %4785, %4788 ], [ %4785, %4784 ]
  %4797 = phi ptr [ %4793, %4792 ], [ %4786, %4788 ], [ %4786, %4784 ]
  %4798 = icmp ult ptr %4797, %4242
  br i1 %4798, label %4799, label %4806

4799:                                             ; preds = %4795
  %4800 = load i16, ptr %4796, align 1, !tbaa !35
  %4801 = load i16, ptr %4797, align 1, !tbaa !35
  %4802 = icmp eq i16 %4800, %4801
  br i1 %4802, label %4803, label %4806

4803:                                             ; preds = %4799
  %4804 = getelementptr inbounds i8, ptr %4797, i64 2
  %4805 = getelementptr inbounds i8, ptr %4796, i64 2
  br label %4806

4806:                                             ; preds = %4803, %4799, %4795
  %4807 = phi ptr [ %4805, %4803 ], [ %4796, %4799 ], [ %4796, %4795 ]
  %4808 = phi ptr [ %4804, %4803 ], [ %4797, %4799 ], [ %4797, %4795 ]
  %4809 = icmp ult ptr %4808, %40
  br i1 %4809, label %4810, label %4816

4810:                                             ; preds = %4806
  %4811 = load i8, ptr %4807, align 1, !tbaa !31
  %4812 = load i8, ptr %4808, align 1, !tbaa !31
  %4813 = icmp eq i8 %4811, %4812
  %4814 = zext i1 %4813 to i64
  %4815 = getelementptr inbounds i8, ptr %4808, i64 %4814
  br label %4816

4816:                                             ; preds = %4810, %4806
  %4817 = phi ptr [ %4808, %4806 ], [ %4815, %4810 ]
  %4818 = ptrtoint ptr %4817 to i64
  %4819 = ptrtoint ptr %4755 to i64
  %4820 = sub i64 %4818, %4819
  br label %4821

4821:                                             ; preds = %4816, %4777, %4763
  %4822 = phi i64 [ %4820, %4816 ], [ %4765, %4763 ], [ %4783, %4777 ]
  %4823 = add i64 %4822, 4
  %4824 = ptrtoint ptr %4745 to i64
  %4825 = sub i64 %4824, %23
  %4826 = trunc i64 %4825 to i32
  %4827 = load i64, ptr %4745, align 1, !tbaa !19
  %4828 = mul i64 %4827, -3523014627193167104
  %4829 = lshr i64 %4828, %4239
  %4830 = getelementptr inbounds i32, ptr %12, i64 %4829
  store i32 %4826, ptr %4830, align 4, !tbaa !20
  %4831 = getelementptr inbounds i8, ptr %4745, i64 %4823
  %4832 = icmp ugt ptr %4745, %4243
  br i1 %4832, label %4837, label %4833

4833:                                             ; preds = %4821
  %4834 = load ptr, ptr %4244, align 8, !tbaa !37
  %4835 = load <2 x i64>, ptr %4745, align 1, !tbaa !31
  store <2 x i64> %4835, ptr %4834, align 1, !tbaa !31
  %4836 = load ptr, ptr %4247, align 8, !tbaa !47
  br label %4837

4837:                                             ; preds = %4833, %4821
  %4838 = phi ptr [ %4744, %4821 ], [ %4836, %4833 ]
  %4839 = getelementptr inbounds %struct.SeqDef_s, ptr %4838, i64 0, i32 1
  store i16 0, ptr %4839, align 4, !tbaa !52
  store i32 1, ptr %4838, align 4, !tbaa !54
  %4840 = add i64 %4822, 1
  %4841 = icmp ugt i64 %4840, 65535
  br i1 %4841, label %4842, label %4849, !prof !55

4842:                                             ; preds = %4837
  store i32 2, ptr %4246, align 8, !tbaa !49
  %4843 = load ptr, ptr %1, align 8, !tbaa !50
  %4844 = ptrtoint ptr %4838 to i64
  %4845 = ptrtoint ptr %4843 to i64
  %4846 = sub i64 %4844, %4845
  %4847 = lshr exact i64 %4846, 3
  %4848 = trunc i64 %4847 to i32
  store i32 %4848, ptr %4248, align 4, !tbaa !51
  br label %4849

4849:                                             ; preds = %4842, %4837
  %4850 = trunc i64 %4840 to i16
  %4851 = getelementptr inbounds %struct.SeqDef_s, ptr %4838, i64 0, i32 2
  store i16 %4850, ptr %4851, align 2, !tbaa !56
  %4852 = getelementptr inbounds %struct.SeqDef_s, ptr %4838, i64 1
  store ptr %4852, ptr %4247, align 8, !tbaa !47
  %4853 = icmp ugt ptr %4831, %41
  br i1 %4853, label %4854, label %4743

4854:                                             ; preds = %4849, %4743, %4726, %4720
  %4855 = phi i32 [ 0, %4726 ], [ %4470, %4720 ], [ %4747, %4743 ], [ %4746, %4849 ]
  %4856 = phi i32 [ %4474, %4726 ], [ %4474, %4720 ], [ %4746, %4743 ], [ %4747, %4849 ]
  %4857 = phi ptr [ %4724, %4726 ], [ %4724, %4720 ], [ %4745, %4743 ], [ %4831, %4849 ]
  %4858 = getelementptr inbounds i8, ptr %4857, i64 %19
  %4859 = getelementptr inbounds i8, ptr %4858, i64 1
  %4860 = icmp ult ptr %4859, %41
  br i1 %4860, label %4249, label %4861

4861:                                             ; preds = %4854, %4426, %4331, %4234
  %4862 = phi i32 [ %58, %4234 ], [ %4255, %4331 ], [ %4255, %4426 ], [ %4855, %4854 ]
  %4863 = phi i32 [ %60, %4234 ], [ 0, %4331 ], [ %4256, %4426 ], [ %4856, %4854 ]
  %4864 = phi ptr [ %3, %4234 ], [ %4252, %4331 ], [ %4252, %4426 ], [ %4857, %4854 ]
  %4865 = select i1 %59, i32 %42, i32 0
  %4866 = select i1 %57, i32 %44, i32 0
  %4867 = icmp ne i32 %4865, 0
  %4868 = icmp ne i32 %4863, 0
  %4869 = select i1 %4867, i1 %4868, i1 false
  %4870 = select i1 %4869, i32 %4865, i32 %4866
  %4871 = select i1 %4868, i32 %4863, i32 %4865
  store i32 %4871, ptr %2, align 4, !tbaa !20
  %4872 = icmp eq i32 %4862, 0
  %4873 = select i1 %4872, i32 %4870, i32 %4862
  br label %4874

4874:                                             ; preds = %4861, %4221, %3581, %2941, %2295, %1736, %1177, %618
  %4875 = phi i32 [ %4873, %4861 ], [ %4233, %4221 ], [ %3593, %3581 ], [ %2953, %2941 ], [ %2307, %2295 ], [ %1748, %1736 ], [ %1189, %1177 ], [ %630, %618 ]
  %4876 = phi ptr [ %4864, %4861 ], [ %4224, %4221 ], [ %3584, %3581 ], [ %2944, %2941 ], [ %2298, %2295 ], [ %1739, %1736 ], [ %1180, %1177 ], [ %621, %618 ]
  store i32 %4875, ptr %43, align 4, !tbaa !20
  %4877 = ptrtoint ptr %40 to i64
  %4878 = ptrtoint ptr %4876 to i64
  %4879 = sub i64 %4877, %4878
  ret i64 %4879
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_fast_dictMatchState(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !18
  %12 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !26
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = add i32 %13, %15
  %17 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !16
  %19 = zext i32 %16 to i64
  %20 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !27
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %18, i64 %22
  %24 = getelementptr inbounds i8, ptr %3, i64 %4
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i32, ptr %2, align 4, !tbaa !20
  %27 = getelementptr inbounds i32, ptr %2, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !20
  %29 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 15
  %30 = load ptr, ptr %29, align 8, !tbaa !85
  %31 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.ZSTD_window_t, ptr %30, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !27
  %35 = getelementptr inbounds %struct.ZSTD_window_t, ptr %30, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !16
  %37 = zext i32 %34 to i64
  %38 = getelementptr inbounds i8, ptr %36, i64 %37
  %39 = load ptr, ptr %30, align 8, !tbaa !86
  %40 = ptrtoint ptr %39 to i64
  %41 = ptrtoint ptr %36 to i64
  %42 = sub i64 %41, %40
  %43 = trunc i64 %42 to i32
  %44 = add i32 %21, %43
  %45 = ptrtoint ptr %3 to i64
  %46 = ptrtoint ptr %23 to i64
  %47 = sub i64 %45, %46
  %48 = getelementptr inbounds i8, ptr %39, i64 %47
  %49 = ptrtoint ptr %48 to i64
  %50 = ptrtoint ptr %38 to i64
  %51 = sub i64 %49, %50
  %52 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %30, i64 0, i32 16, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !18
  %54 = ptrtoint ptr %18 to i64
  %55 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 18
  %56 = load i32, ptr %55, align 8, !tbaa !87
  %57 = icmp eq i32 %56, 0
  switch i32 %7, label %58 [
    i32 7, label %2643
    i32 5, label %921
    i32 6, label %1782
  ]

58:                                               ; preds = %5
  br i1 %57, label %68, label %59

59:                                               ; preds = %58
  %60 = zext nneg i32 %53 to i64
  %61 = shl i64 4, %60
  %62 = icmp ugt i32 %53, 61
  br i1 %62, label %68, label %63

63:                                               ; preds = %59, %63
  %64 = phi i64 [ %66, %63 ], [ 0, %59 ]
  %65 = getelementptr inbounds i8, ptr %32, i64 %64
  tail call void @llvm.prefetch.p0(ptr %65, i32 0, i32 2, i32 1)
  %66 = add i64 %64, 64
  %67 = icmp ult i64 %66, %61
  br i1 %67, label %63, label %68, !llvm.loop !88

68:                                               ; preds = %63, %59, %58
  %69 = getelementptr inbounds i8, ptr %18, i64 2
  %70 = getelementptr inbounds i8, ptr %3, i64 %19
  %71 = icmp ugt ptr %70, %25
  br i1 %71, label %3504, label %72

72:                                               ; preds = %68
  %73 = and i64 %51, 4294967295
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = getelementptr inbounds i8, ptr %3, i64 %75
  %77 = sub i32 32, %11
  %78 = sub i32 24, %53
  %79 = getelementptr inbounds i8, ptr %24, i64 -32
  %80 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %81 = ptrtoint ptr %79 to i64
  %82 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %83 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %84 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  %85 = getelementptr inbounds i8, ptr %24, i64 -7
  %86 = getelementptr inbounds i8, ptr %24, i64 -3
  %87 = getelementptr inbounds i8, ptr %24, i64 -1
  %88 = zext i32 %44 to i64
  %89 = sub nsw i64 0, %88
  %90 = getelementptr inbounds i8, ptr %36, i64 %89
  br label %91

91:                                               ; preds = %915, %72
  %92 = phi ptr [ %70, %72 ], [ %919, %915 ]
  %93 = phi ptr [ %76, %72 ], [ %918, %915 ]
  %94 = phi ptr [ %3, %72 ], [ %918, %915 ]
  %95 = phi i32 [ %26, %72 ], [ %917, %915 ]
  %96 = phi i32 [ %28, %72 ], [ %916, %915 ]
  %97 = load i32, ptr %93, align 1, !tbaa !20
  %98 = mul i32 %97, -1640531535
  %99 = lshr i32 %98, %78
  %100 = lshr i32 %99, 8
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds i32, ptr %32, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !20
  %104 = xor i32 %99, %103
  %105 = getelementptr inbounds i8, ptr %93, i64 256
  br label %106

106:                                              ; preds = %811, %91
  %107 = phi ptr [ %105, %91 ], [ %813, %811 ]
  %108 = phi i64 [ %19, %91 ], [ %808, %811 ]
  %109 = phi i32 [ %104, %91 ], [ %818, %811 ]
  %110 = phi i32 [ %103, %91 ], [ %817, %811 ]
  %111 = phi i32 [ %98, %91 ], [ %128, %811 ]
  %112 = phi ptr [ %92, %91 ], [ %809, %811 ]
  %113 = phi ptr [ %93, %91 ], [ %112, %811 ]
  %114 = lshr i32 %111, %77
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, ptr %9, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !20
  %118 = and i32 %109, 255
  %119 = icmp eq i32 %118, 0
  %120 = ptrtoint ptr %113 to i64
  %121 = sub i64 %120, %54
  %122 = trunc i64 %121 to i32
  %123 = zext i32 %117 to i64
  %124 = getelementptr inbounds i8, ptr %18, i64 %123
  %125 = sub i32 %122, %95
  %126 = add i32 %125, 1
  %127 = load i32, ptr %112, align 1, !tbaa !20
  %128 = mul i32 %127, -1640531535
  %129 = lshr i32 %128, %78
  store i32 %122, ptr %116, align 4, !tbaa !20
  %130 = sub i32 %126, %21
  %131 = icmp ugt i32 %130, -4
  br i1 %131, label %321, label %132

132:                                              ; preds = %106
  %133 = icmp ult i32 %126, %21
  %134 = sub i32 %126, %44
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i8, ptr %36, i64 %135
  %137 = zext i32 %126 to i64
  %138 = getelementptr inbounds i8, ptr %18, i64 %137
  %139 = select i1 %133, ptr %136, ptr %138
  %140 = load i32, ptr %139, align 1, !tbaa !20
  %141 = getelementptr inbounds i8, ptr %113, i64 1
  %142 = load i32, ptr %141, align 1, !tbaa !20
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %321

144:                                              ; preds = %132
  %145 = ptrtoint ptr %113 to i64
  %146 = getelementptr inbounds i8, ptr %113, i64 1
  %147 = select i1 %133, ptr %39, ptr %24
  %148 = getelementptr inbounds i8, ptr %113, i64 5
  %149 = getelementptr inbounds i8, ptr %139, i64 4
  %150 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %148, ptr noundef nonnull %149, ptr noundef %24, ptr noundef %147, ptr noundef %23)
  %151 = add i64 %150, 4
  %152 = ptrtoint ptr %146 to i64
  %153 = ptrtoint ptr %94 to i64
  %154 = sub i64 %152, %153
  %155 = getelementptr inbounds i8, ptr %94, i64 %154
  %156 = icmp ugt ptr %155, %79
  %157 = load ptr, ptr %80, align 8, !tbaa !37
  br i1 %156, label %181, label %158

158:                                              ; preds = %144
  %159 = load <2 x i64>, ptr %94, align 1, !tbaa !31
  store <2 x i64> %159, ptr %157, align 1, !tbaa !31
  %160 = icmp ugt i64 %154, 16
  br i1 %160, label %161, label %299

161:                                              ; preds = %158
  %162 = load ptr, ptr %80, align 8, !tbaa !37
  %163 = getelementptr inbounds i8, ptr %162, i64 16
  %164 = getelementptr inbounds i8, ptr %94, i64 16
  %165 = add i64 %154, -16
  %166 = getelementptr inbounds i8, ptr %162, i64 %154
  %167 = load <2 x i64>, ptr %164, align 1, !tbaa !31
  store <2 x i64> %167, ptr %163, align 1, !tbaa !31
  %168 = icmp ult i64 %165, 17
  br i1 %168, label %299, label %169

169:                                              ; preds = %161
  %170 = getelementptr inbounds i8, ptr %162, i64 32
  br label %171

171:                                              ; preds = %171, %169
  %172 = phi ptr [ %170, %169 ], [ %179, %171 ]
  %173 = phi ptr [ %164, %169 ], [ %177, %171 ]
  %174 = getelementptr inbounds i8, ptr %173, i64 16
  %175 = load <2 x i64>, ptr %174, align 1, !tbaa !31
  store <2 x i64> %175, ptr %172, align 1, !tbaa !31
  %176 = getelementptr inbounds i8, ptr %172, i64 16
  %177 = getelementptr inbounds i8, ptr %173, i64 32
  %178 = load <2 x i64>, ptr %177, align 1, !tbaa !31
  store <2 x i64> %178, ptr %176, align 1, !tbaa !31
  %179 = getelementptr inbounds i8, ptr %172, i64 32
  %180 = icmp ult ptr %179, %166
  br i1 %180, label %171, label %303, !llvm.loop !39

181:                                              ; preds = %144
  %182 = ptrtoint ptr %155 to i64
  %183 = icmp ugt ptr %94, %79
  br i1 %183, label %201, label %184

184:                                              ; preds = %181
  %185 = sub i64 %81, %153
  %186 = getelementptr inbounds i8, ptr %157, i64 %185
  %187 = load <2 x i64>, ptr %94, align 1, !tbaa !31
  store <2 x i64> %187, ptr %157, align 1, !tbaa !31
  %188 = icmp ult i64 %185, 17
  br i1 %188, label %201, label %189

189:                                              ; preds = %184
  %190 = getelementptr inbounds i8, ptr %157, i64 16
  br label %191

191:                                              ; preds = %191, %189
  %192 = phi ptr [ %190, %189 ], [ %199, %191 ]
  %193 = phi ptr [ %94, %189 ], [ %197, %191 ]
  %194 = getelementptr inbounds i8, ptr %193, i64 16
  %195 = load <2 x i64>, ptr %194, align 1, !tbaa !31
  store <2 x i64> %195, ptr %192, align 1, !tbaa !31
  %196 = getelementptr inbounds i8, ptr %192, i64 16
  %197 = getelementptr inbounds i8, ptr %193, i64 32
  %198 = load <2 x i64>, ptr %197, align 1, !tbaa !31
  store <2 x i64> %198, ptr %196, align 1, !tbaa !31
  %199 = getelementptr inbounds i8, ptr %192, i64 32
  %200 = icmp ult ptr %199, %186
  br i1 %200, label %191, label %201, !llvm.loop !39

201:                                              ; preds = %191, %184, %181
  %202 = phi ptr [ %79, %184 ], [ %94, %181 ], [ %79, %191 ]
  %203 = phi ptr [ %186, %184 ], [ %157, %181 ], [ %186, %191 ]
  %204 = icmp ult ptr %202, %155
  br i1 %204, label %205, label %303

205:                                              ; preds = %201
  %206 = ptrtoint ptr %203 to i64
  %207 = ptrtoint ptr %202 to i64
  %208 = sub i64 %182, %207
  %209 = getelementptr i8, ptr %202, i64 %208
  %210 = icmp ult i64 %208, 8
  %211 = sub i64 %206, %207
  %212 = icmp ult i64 %211, 32
  %213 = select i1 %210, i1 true, i1 %212
  br i1 %213, label %249, label %214

214:                                              ; preds = %205
  %215 = icmp ult i64 %208, 32
  br i1 %215, label %235, label %216

216:                                              ; preds = %214
  %217 = and i64 %208, -32
  br label %218

218:                                              ; preds = %218, %216
  %219 = phi i64 [ 0, %216 ], [ %226, %218 ]
  %220 = getelementptr i8, ptr %203, i64 %219
  %221 = getelementptr i8, ptr %202, i64 %219
  %222 = getelementptr i8, ptr %221, i64 16
  %223 = load <16 x i8>, ptr %221, align 1, !tbaa !31
  %224 = load <16 x i8>, ptr %222, align 1, !tbaa !31
  %225 = getelementptr i8, ptr %220, i64 16
  store <16 x i8> %223, ptr %220, align 1, !tbaa !31
  store <16 x i8> %224, ptr %225, align 1, !tbaa !31
  %226 = add nuw i64 %219, 32
  %227 = icmp eq i64 %226, %217
  br i1 %227, label %228, label %218, !llvm.loop !89

228:                                              ; preds = %218
  %229 = icmp eq i64 %208, %217
  br i1 %229, label %303, label %230

230:                                              ; preds = %228
  %231 = getelementptr i8, ptr %202, i64 %217
  %232 = getelementptr i8, ptr %203, i64 %217
  %233 = and i64 %208, 24
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %249, label %235

235:                                              ; preds = %214, %230
  %236 = phi i64 [ %217, %230 ], [ 0, %214 ]
  %237 = and i64 %208, -8
  %238 = getelementptr i8, ptr %203, i64 %237
  %239 = getelementptr i8, ptr %202, i64 %237
  br label %240

240:                                              ; preds = %240, %235
  %241 = phi i64 [ %236, %235 ], [ %245, %240 ]
  %242 = getelementptr i8, ptr %203, i64 %241
  %243 = getelementptr i8, ptr %202, i64 %241
  %244 = load <8 x i8>, ptr %243, align 1, !tbaa !31
  store <8 x i8> %244, ptr %242, align 1, !tbaa !31
  %245 = add nuw i64 %241, 8
  %246 = icmp eq i64 %245, %237
  br i1 %246, label %247, label %240, !llvm.loop !90

247:                                              ; preds = %240
  %248 = icmp eq i64 %208, %237
  br i1 %248, label %303, label %249

249:                                              ; preds = %205, %230, %247
  %250 = phi ptr [ %203, %205 ], [ %232, %230 ], [ %238, %247 ]
  %251 = phi ptr [ %202, %205 ], [ %231, %230 ], [ %239, %247 ]
  %252 = ptrtoint ptr %251 to i64
  %253 = sub i64 %145, %252
  %254 = add i64 %253, 1
  %255 = sub i64 %145, %252
  %256 = and i64 %254, 7
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %267, label %258

258:                                              ; preds = %249, %258
  %259 = phi ptr [ %264, %258 ], [ %250, %249 ]
  %260 = phi ptr [ %262, %258 ], [ %251, %249 ]
  %261 = phi i64 [ %265, %258 ], [ 0, %249 ]
  %262 = getelementptr inbounds i8, ptr %260, i64 1
  %263 = load i8, ptr %260, align 1, !tbaa !31
  %264 = getelementptr inbounds i8, ptr %259, i64 1
  store i8 %263, ptr %259, align 1, !tbaa !31
  %265 = add i64 %261, 1
  %266 = icmp eq i64 %265, %256
  br i1 %266, label %267, label %258, !llvm.loop !91

267:                                              ; preds = %258, %249
  %268 = phi ptr [ %250, %249 ], [ %264, %258 ]
  %269 = phi ptr [ %251, %249 ], [ %262, %258 ]
  %270 = icmp ult i64 %255, 7
  br i1 %270, label %303, label %271

271:                                              ; preds = %267, %271
  %272 = phi ptr [ %297, %271 ], [ %268, %267 ]
  %273 = phi ptr [ %295, %271 ], [ %269, %267 ]
  %274 = getelementptr inbounds i8, ptr %273, i64 1
  %275 = load i8, ptr %273, align 1, !tbaa !31
  %276 = getelementptr inbounds i8, ptr %272, i64 1
  store i8 %275, ptr %272, align 1, !tbaa !31
  %277 = getelementptr inbounds i8, ptr %273, i64 2
  %278 = load i8, ptr %274, align 1, !tbaa !31
  %279 = getelementptr inbounds i8, ptr %272, i64 2
  store i8 %278, ptr %276, align 1, !tbaa !31
  %280 = getelementptr inbounds i8, ptr %273, i64 3
  %281 = load i8, ptr %277, align 1, !tbaa !31
  %282 = getelementptr inbounds i8, ptr %272, i64 3
  store i8 %281, ptr %279, align 1, !tbaa !31
  %283 = getelementptr inbounds i8, ptr %273, i64 4
  %284 = load i8, ptr %280, align 1, !tbaa !31
  %285 = getelementptr inbounds i8, ptr %272, i64 4
  store i8 %284, ptr %282, align 1, !tbaa !31
  %286 = getelementptr inbounds i8, ptr %273, i64 5
  %287 = load i8, ptr %283, align 1, !tbaa !31
  %288 = getelementptr inbounds i8, ptr %272, i64 5
  store i8 %287, ptr %285, align 1, !tbaa !31
  %289 = getelementptr inbounds i8, ptr %273, i64 6
  %290 = load i8, ptr %286, align 1, !tbaa !31
  %291 = getelementptr inbounds i8, ptr %272, i64 6
  store i8 %290, ptr %288, align 1, !tbaa !31
  %292 = getelementptr inbounds i8, ptr %273, i64 7
  %293 = load i8, ptr %289, align 1, !tbaa !31
  %294 = getelementptr inbounds i8, ptr %272, i64 7
  store i8 %293, ptr %291, align 1, !tbaa !31
  %295 = getelementptr inbounds i8, ptr %273, i64 8
  %296 = load i8, ptr %292, align 1, !tbaa !31
  %297 = getelementptr inbounds i8, ptr %272, i64 8
  store i8 %296, ptr %294, align 1, !tbaa !31
  %298 = icmp eq ptr %295, %209
  br i1 %298, label %303, label %271, !llvm.loop !92

299:                                              ; preds = %161, %158
  %300 = load ptr, ptr %80, align 8, !tbaa !37
  %301 = getelementptr inbounds i8, ptr %300, i64 %154
  store ptr %301, ptr %80, align 8, !tbaa !37
  %302 = load ptr, ptr %83, align 8, !tbaa !47
  br label %315

303:                                              ; preds = %171, %267, %271, %228, %247, %201
  %304 = load ptr, ptr %80, align 8, !tbaa !37
  %305 = getelementptr inbounds i8, ptr %304, i64 %154
  store ptr %305, ptr %80, align 8, !tbaa !37
  %306 = icmp ugt i64 %154, 65535
  %307 = load ptr, ptr %83, align 8, !tbaa !47
  br i1 %306, label %308, label %315, !prof !48

308:                                              ; preds = %303
  store i32 1, ptr %82, align 8, !tbaa !49
  %309 = load ptr, ptr %1, align 8, !tbaa !50
  %310 = ptrtoint ptr %307 to i64
  %311 = ptrtoint ptr %309 to i64
  %312 = sub i64 %310, %311
  %313 = lshr exact i64 %312, 3
  %314 = trunc i64 %313 to i32
  store i32 %314, ptr %84, align 4, !tbaa !51
  br label %315

315:                                              ; preds = %308, %303, %299
  %316 = phi ptr [ %302, %299 ], [ %307, %308 ], [ %307, %303 ]
  %317 = trunc i64 %154 to i16
  %318 = getelementptr inbounds %struct.SeqDef_s, ptr %316, i64 0, i32 1
  store i16 %317, ptr %318, align 4, !tbaa !52
  store i32 1, ptr %316, align 4, !tbaa !54
  %319 = add i64 %150, 1
  %320 = icmp ugt i64 %319, 65535
  br i1 %320, label %819, label %832, !prof !55

321:                                              ; preds = %132, %106
  br i1 %119, label %322, label %532

322:                                              ; preds = %321
  %323 = lshr i32 %110, 8
  %324 = icmp ugt i32 %323, %34
  br i1 %324, label %325, label %532

325:                                              ; preds = %322
  %326 = zext nneg i32 %323 to i64
  %327 = getelementptr inbounds i8, ptr %36, i64 %326
  %328 = load i32, ptr %327, align 1, !tbaa !20
  %329 = load i32, ptr %113, align 1, !tbaa !20
  %330 = icmp ne i32 %328, %329
  %331 = icmp ugt i32 %117, %21
  %332 = select i1 %330, i1 true, i1 %331
  br i1 %332, label %532, label %333

333:                                              ; preds = %325
  %334 = getelementptr inbounds i8, ptr %36, i64 %326
  %335 = add i32 %323, %44
  %336 = sub i32 %122, %335
  %337 = getelementptr inbounds i8, ptr %113, i64 4
  %338 = getelementptr inbounds i8, ptr %334, i64 4
  %339 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %337, ptr noundef nonnull %338, ptr noundef %24, ptr noundef %39, ptr noundef %23)
  %340 = add i64 %339, 4
  %341 = icmp ugt ptr %113, %94
  br i1 %341, label %342, label %360

342:                                              ; preds = %333, %351
  %343 = phi ptr [ %346, %351 ], [ %113, %333 ]
  %344 = phi i64 [ %352, %351 ], [ %340, %333 ]
  %345 = phi ptr [ %348, %351 ], [ %334, %333 ]
  %346 = getelementptr inbounds i8, ptr %343, i64 -1
  %347 = load i8, ptr %346, align 1, !tbaa !31
  %348 = getelementptr inbounds i8, ptr %345, i64 -1
  %349 = load i8, ptr %348, align 1, !tbaa !31
  %350 = icmp eq i8 %347, %349
  br i1 %350, label %351, label %356

351:                                              ; preds = %342
  %352 = add i64 %344, 1
  %353 = icmp ugt ptr %346, %94
  %354 = icmp ugt ptr %348, %38
  %355 = and i1 %353, %354
  br i1 %355, label %342, label %356, !llvm.loop !93

356:                                              ; preds = %351, %342
  %357 = phi i64 [ %352, %351 ], [ %344, %342 ]
  %358 = phi ptr [ %346, %351 ], [ %343, %342 ]
  %359 = ptrtoint ptr %358 to i64
  br label %360

360:                                              ; preds = %356, %333
  %361 = phi i64 [ %359, %356 ], [ %120, %333 ]
  %362 = phi i64 [ %357, %356 ], [ %340, %333 ]
  %363 = phi ptr [ %358, %356 ], [ %113, %333 ]
  %364 = ptrtoint ptr %94 to i64
  %365 = sub i64 %361, %364
  %366 = add i32 %336, 3
  %367 = getelementptr inbounds i8, ptr %94, i64 %365
  %368 = icmp ugt ptr %367, %79
  %369 = load ptr, ptr %80, align 8, !tbaa !37
  br i1 %368, label %393, label %370

370:                                              ; preds = %360
  %371 = load <2 x i64>, ptr %94, align 1, !tbaa !31
  store <2 x i64> %371, ptr %369, align 1, !tbaa !31
  %372 = icmp ugt i64 %365, 16
  br i1 %372, label %373, label %510

373:                                              ; preds = %370
  %374 = load ptr, ptr %80, align 8, !tbaa !37
  %375 = getelementptr inbounds i8, ptr %374, i64 16
  %376 = getelementptr inbounds i8, ptr %94, i64 16
  %377 = add i64 %365, -16
  %378 = getelementptr inbounds i8, ptr %374, i64 %365
  %379 = load <2 x i64>, ptr %376, align 1, !tbaa !31
  store <2 x i64> %379, ptr %375, align 1, !tbaa !31
  %380 = icmp ult i64 %377, 17
  br i1 %380, label %510, label %381

381:                                              ; preds = %373
  %382 = getelementptr inbounds i8, ptr %374, i64 32
  br label %383

383:                                              ; preds = %383, %381
  %384 = phi ptr [ %382, %381 ], [ %391, %383 ]
  %385 = phi ptr [ %376, %381 ], [ %389, %383 ]
  %386 = getelementptr inbounds i8, ptr %385, i64 16
  %387 = load <2 x i64>, ptr %386, align 1, !tbaa !31
  store <2 x i64> %387, ptr %384, align 1, !tbaa !31
  %388 = getelementptr inbounds i8, ptr %384, i64 16
  %389 = getelementptr inbounds i8, ptr %385, i64 32
  %390 = load <2 x i64>, ptr %389, align 1, !tbaa !31
  store <2 x i64> %390, ptr %388, align 1, !tbaa !31
  %391 = getelementptr inbounds i8, ptr %384, i64 32
  %392 = icmp ult ptr %391, %378
  br i1 %392, label %383, label %514, !llvm.loop !39

393:                                              ; preds = %360
  %394 = ptrtoint ptr %367 to i64
  %395 = icmp ugt ptr %94, %79
  br i1 %395, label %413, label %396

396:                                              ; preds = %393
  %397 = sub i64 %81, %364
  %398 = getelementptr inbounds i8, ptr %369, i64 %397
  %399 = load <2 x i64>, ptr %94, align 1, !tbaa !31
  store <2 x i64> %399, ptr %369, align 1, !tbaa !31
  %400 = icmp ult i64 %397, 17
  br i1 %400, label %413, label %401

401:                                              ; preds = %396
  %402 = getelementptr inbounds i8, ptr %369, i64 16
  br label %403

403:                                              ; preds = %403, %401
  %404 = phi ptr [ %402, %401 ], [ %411, %403 ]
  %405 = phi ptr [ %94, %401 ], [ %409, %403 ]
  %406 = getelementptr inbounds i8, ptr %405, i64 16
  %407 = load <2 x i64>, ptr %406, align 1, !tbaa !31
  store <2 x i64> %407, ptr %404, align 1, !tbaa !31
  %408 = getelementptr inbounds i8, ptr %404, i64 16
  %409 = getelementptr inbounds i8, ptr %405, i64 32
  %410 = load <2 x i64>, ptr %409, align 1, !tbaa !31
  store <2 x i64> %410, ptr %408, align 1, !tbaa !31
  %411 = getelementptr inbounds i8, ptr %404, i64 32
  %412 = icmp ult ptr %411, %398
  br i1 %412, label %403, label %413, !llvm.loop !39

413:                                              ; preds = %403, %396, %393
  %414 = phi ptr [ %79, %396 ], [ %94, %393 ], [ %79, %403 ]
  %415 = phi ptr [ %398, %396 ], [ %369, %393 ], [ %398, %403 ]
  %416 = icmp ult ptr %414, %367
  br i1 %416, label %417, label %514

417:                                              ; preds = %413
  %418 = ptrtoint ptr %415 to i64
  %419 = ptrtoint ptr %414 to i64
  %420 = sub i64 %394, %419
  %421 = getelementptr i8, ptr %414, i64 %420
  %422 = icmp ult i64 %420, 8
  %423 = sub i64 %418, %419
  %424 = icmp ult i64 %423, 32
  %425 = select i1 %422, i1 true, i1 %424
  br i1 %425, label %461, label %426

426:                                              ; preds = %417
  %427 = icmp ult i64 %420, 32
  br i1 %427, label %447, label %428

428:                                              ; preds = %426
  %429 = and i64 %420, -32
  br label %430

430:                                              ; preds = %430, %428
  %431 = phi i64 [ 0, %428 ], [ %438, %430 ]
  %432 = getelementptr i8, ptr %415, i64 %431
  %433 = getelementptr i8, ptr %414, i64 %431
  %434 = getelementptr i8, ptr %433, i64 16
  %435 = load <16 x i8>, ptr %433, align 1, !tbaa !31
  %436 = load <16 x i8>, ptr %434, align 1, !tbaa !31
  %437 = getelementptr i8, ptr %432, i64 16
  store <16 x i8> %435, ptr %432, align 1, !tbaa !31
  store <16 x i8> %436, ptr %437, align 1, !tbaa !31
  %438 = add nuw i64 %431, 32
  %439 = icmp eq i64 %438, %429
  br i1 %439, label %440, label %430, !llvm.loop !94

440:                                              ; preds = %430
  %441 = icmp eq i64 %420, %429
  br i1 %441, label %514, label %442

442:                                              ; preds = %440
  %443 = getelementptr i8, ptr %414, i64 %429
  %444 = getelementptr i8, ptr %415, i64 %429
  %445 = and i64 %420, 24
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %461, label %447

447:                                              ; preds = %426, %442
  %448 = phi i64 [ %429, %442 ], [ 0, %426 ]
  %449 = and i64 %420, -8
  %450 = getelementptr i8, ptr %415, i64 %449
  %451 = getelementptr i8, ptr %414, i64 %449
  br label %452

452:                                              ; preds = %452, %447
  %453 = phi i64 [ %448, %447 ], [ %457, %452 ]
  %454 = getelementptr i8, ptr %415, i64 %453
  %455 = getelementptr i8, ptr %414, i64 %453
  %456 = load <8 x i8>, ptr %455, align 1, !tbaa !31
  store <8 x i8> %456, ptr %454, align 1, !tbaa !31
  %457 = add nuw i64 %453, 8
  %458 = icmp eq i64 %457, %449
  br i1 %458, label %459, label %452, !llvm.loop !95

459:                                              ; preds = %452
  %460 = icmp eq i64 %420, %449
  br i1 %460, label %514, label %461

461:                                              ; preds = %417, %442, %459
  %462 = phi ptr [ %415, %417 ], [ %444, %442 ], [ %450, %459 ]
  %463 = phi ptr [ %414, %417 ], [ %443, %442 ], [ %451, %459 ]
  %464 = ptrtoint ptr %463 to i64
  %465 = sub i64 %361, %464
  %466 = and i64 %465, 7
  %467 = icmp eq i64 %466, 0
  br i1 %467, label %477, label %468

468:                                              ; preds = %461, %468
  %469 = phi ptr [ %474, %468 ], [ %462, %461 ]
  %470 = phi ptr [ %472, %468 ], [ %463, %461 ]
  %471 = phi i64 [ %475, %468 ], [ 0, %461 ]
  %472 = getelementptr inbounds i8, ptr %470, i64 1
  %473 = load i8, ptr %470, align 1, !tbaa !31
  %474 = getelementptr inbounds i8, ptr %469, i64 1
  store i8 %473, ptr %469, align 1, !tbaa !31
  %475 = add i64 %471, 1
  %476 = icmp eq i64 %475, %466
  br i1 %476, label %477, label %468, !llvm.loop !96

477:                                              ; preds = %468, %461
  %478 = phi ptr [ %462, %461 ], [ %474, %468 ]
  %479 = phi ptr [ %463, %461 ], [ %472, %468 ]
  %480 = sub i64 %464, %361
  %481 = icmp ugt i64 %480, -8
  br i1 %481, label %514, label %482

482:                                              ; preds = %477, %482
  %483 = phi ptr [ %508, %482 ], [ %478, %477 ]
  %484 = phi ptr [ %506, %482 ], [ %479, %477 ]
  %485 = getelementptr inbounds i8, ptr %484, i64 1
  %486 = load i8, ptr %484, align 1, !tbaa !31
  %487 = getelementptr inbounds i8, ptr %483, i64 1
  store i8 %486, ptr %483, align 1, !tbaa !31
  %488 = getelementptr inbounds i8, ptr %484, i64 2
  %489 = load i8, ptr %485, align 1, !tbaa !31
  %490 = getelementptr inbounds i8, ptr %483, i64 2
  store i8 %489, ptr %487, align 1, !tbaa !31
  %491 = getelementptr inbounds i8, ptr %484, i64 3
  %492 = load i8, ptr %488, align 1, !tbaa !31
  %493 = getelementptr inbounds i8, ptr %483, i64 3
  store i8 %492, ptr %490, align 1, !tbaa !31
  %494 = getelementptr inbounds i8, ptr %484, i64 4
  %495 = load i8, ptr %491, align 1, !tbaa !31
  %496 = getelementptr inbounds i8, ptr %483, i64 4
  store i8 %495, ptr %493, align 1, !tbaa !31
  %497 = getelementptr inbounds i8, ptr %484, i64 5
  %498 = load i8, ptr %494, align 1, !tbaa !31
  %499 = getelementptr inbounds i8, ptr %483, i64 5
  store i8 %498, ptr %496, align 1, !tbaa !31
  %500 = getelementptr inbounds i8, ptr %484, i64 6
  %501 = load i8, ptr %497, align 1, !tbaa !31
  %502 = getelementptr inbounds i8, ptr %483, i64 6
  store i8 %501, ptr %499, align 1, !tbaa !31
  %503 = getelementptr inbounds i8, ptr %484, i64 7
  %504 = load i8, ptr %500, align 1, !tbaa !31
  %505 = getelementptr inbounds i8, ptr %483, i64 7
  store i8 %504, ptr %502, align 1, !tbaa !31
  %506 = getelementptr inbounds i8, ptr %484, i64 8
  %507 = load i8, ptr %503, align 1, !tbaa !31
  %508 = getelementptr inbounds i8, ptr %483, i64 8
  store i8 %507, ptr %505, align 1, !tbaa !31
  %509 = icmp eq ptr %506, %421
  br i1 %509, label %514, label %482, !llvm.loop !97

510:                                              ; preds = %373, %370
  %511 = load ptr, ptr %80, align 8, !tbaa !37
  %512 = getelementptr inbounds i8, ptr %511, i64 %365
  store ptr %512, ptr %80, align 8, !tbaa !37
  %513 = load ptr, ptr %83, align 8, !tbaa !47
  br label %526

514:                                              ; preds = %383, %477, %482, %440, %459, %413
  %515 = load ptr, ptr %80, align 8, !tbaa !37
  %516 = getelementptr inbounds i8, ptr %515, i64 %365
  store ptr %516, ptr %80, align 8, !tbaa !37
  %517 = icmp ugt i64 %365, 65535
  %518 = load ptr, ptr %83, align 8, !tbaa !47
  br i1 %517, label %519, label %526, !prof !48

519:                                              ; preds = %514
  store i32 1, ptr %82, align 8, !tbaa !49
  %520 = load ptr, ptr %1, align 8, !tbaa !50
  %521 = ptrtoint ptr %518 to i64
  %522 = ptrtoint ptr %520 to i64
  %523 = sub i64 %521, %522
  %524 = lshr exact i64 %523, 3
  %525 = trunc i64 %524 to i32
  store i32 %525, ptr %84, align 4, !tbaa !51
  br label %526

526:                                              ; preds = %519, %514, %510
  %527 = phi ptr [ %513, %510 ], [ %518, %519 ], [ %518, %514 ]
  %528 = trunc i64 %365 to i16
  %529 = getelementptr inbounds %struct.SeqDef_s, ptr %527, i64 0, i32 1
  store i16 %528, ptr %529, align 4, !tbaa !52
  store i32 %366, ptr %527, align 4, !tbaa !54
  %530 = add i64 %362, -3
  %531 = icmp ugt i64 %530, 65535
  br i1 %531, label %819, label %832, !prof !55

532:                                              ; preds = %325, %322, %321
  %533 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %117, i32 %21, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr %124) #7, !srcloc !29
  %534 = load i32, ptr %113, align 1, !tbaa !20
  %535 = load i32, ptr %533, align 1, !tbaa !20
  %536 = icmp eq i32 %534, %535
  br i1 %536, label %537, label %805

537:                                              ; preds = %532
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !30
  %538 = icmp ult i32 %117, %21
  br i1 %538, label %805, label %539

539:                                              ; preds = %537
  %540 = ptrtoint ptr %124 to i64
  %541 = sub i64 %120, %540
  %542 = trunc i64 %541 to i32
  %543 = getelementptr inbounds i8, ptr %113, i64 4
  %544 = getelementptr inbounds i8, ptr %124, i64 4
  %545 = icmp ugt ptr %85, %543
  br i1 %545, label %546, label %572

546:                                              ; preds = %539
  %547 = load i64, ptr %544, align 1, !tbaa !19
  %548 = load i64, ptr %543, align 1, !tbaa !19
  %549 = xor i64 %548, %547
  %550 = icmp eq i64 %549, 0
  br i1 %550, label %554, label %551

551:                                              ; preds = %546
  %552 = tail call i64 @llvm.cttz.i64(i64 %549, i1 true), !range !34
  %553 = lshr i64 %552, 3
  br label %609

554:                                              ; preds = %546, %560
  %555 = phi ptr [ %558, %560 ], [ %544, %546 ]
  %556 = phi ptr [ %557, %560 ], [ %543, %546 ]
  %557 = getelementptr inbounds i8, ptr %556, i64 8
  %558 = getelementptr inbounds i8, ptr %555, i64 8
  %559 = icmp ult ptr %557, %85
  br i1 %559, label %560, label %572

560:                                              ; preds = %554
  %561 = load i64, ptr %558, align 1, !tbaa !19
  %562 = load i64, ptr %557, align 1, !tbaa !19
  %563 = xor i64 %562, %561
  %564 = icmp eq i64 %563, 0
  br i1 %564, label %554, label %565

565:                                              ; preds = %560
  %566 = tail call i64 @llvm.cttz.i64(i64 %563, i1 true), !range !34
  %567 = lshr i64 %566, 3
  %568 = getelementptr inbounds i8, ptr %557, i64 %567
  %569 = ptrtoint ptr %568 to i64
  %570 = ptrtoint ptr %543 to i64
  %571 = sub i64 %569, %570
  br label %609

572:                                              ; preds = %554, %539
  %573 = phi ptr [ %544, %539 ], [ %558, %554 ]
  %574 = phi ptr [ %543, %539 ], [ %557, %554 ]
  %575 = icmp ult ptr %574, %86
  br i1 %575, label %576, label %583

576:                                              ; preds = %572
  %577 = load i32, ptr %573, align 1, !tbaa !20
  %578 = load i32, ptr %574, align 1, !tbaa !20
  %579 = icmp eq i32 %577, %578
  br i1 %579, label %580, label %583

580:                                              ; preds = %576
  %581 = getelementptr inbounds i8, ptr %574, i64 4
  %582 = getelementptr inbounds i8, ptr %573, i64 4
  br label %583

583:                                              ; preds = %580, %576, %572
  %584 = phi ptr [ %582, %580 ], [ %573, %576 ], [ %573, %572 ]
  %585 = phi ptr [ %581, %580 ], [ %574, %576 ], [ %574, %572 ]
  %586 = icmp ult ptr %585, %87
  br i1 %586, label %587, label %594

587:                                              ; preds = %583
  %588 = load i16, ptr %584, align 1, !tbaa !35
  %589 = load i16, ptr %585, align 1, !tbaa !35
  %590 = icmp eq i16 %588, %589
  br i1 %590, label %591, label %594

591:                                              ; preds = %587
  %592 = getelementptr inbounds i8, ptr %585, i64 2
  %593 = getelementptr inbounds i8, ptr %584, i64 2
  br label %594

594:                                              ; preds = %591, %587, %583
  %595 = phi ptr [ %593, %591 ], [ %584, %587 ], [ %584, %583 ]
  %596 = phi ptr [ %592, %591 ], [ %585, %587 ], [ %585, %583 ]
  %597 = icmp ult ptr %596, %24
  br i1 %597, label %598, label %604

598:                                              ; preds = %594
  %599 = load i8, ptr %595, align 1, !tbaa !31
  %600 = load i8, ptr %596, align 1, !tbaa !31
  %601 = icmp eq i8 %599, %600
  %602 = zext i1 %601 to i64
  %603 = getelementptr inbounds i8, ptr %596, i64 %602
  br label %604

604:                                              ; preds = %598, %594
  %605 = phi ptr [ %596, %594 ], [ %603, %598 ]
  %606 = ptrtoint ptr %605 to i64
  %607 = ptrtoint ptr %543 to i64
  %608 = sub i64 %606, %607
  br label %609

609:                                              ; preds = %604, %565, %551
  %610 = phi i64 [ %608, %604 ], [ %553, %551 ], [ %571, %565 ]
  %611 = add i64 %610, 4
  %612 = icmp ugt ptr %113, %94
  %613 = icmp ugt i32 %117, %21
  %614 = and i1 %612, %613
  br i1 %614, label %615, label %633

615:                                              ; preds = %609, %624
  %616 = phi ptr [ %619, %624 ], [ %113, %609 ]
  %617 = phi i64 [ %625, %624 ], [ %611, %609 ]
  %618 = phi ptr [ %621, %624 ], [ %124, %609 ]
  %619 = getelementptr inbounds i8, ptr %616, i64 -1
  %620 = load i8, ptr %619, align 1, !tbaa !31
  %621 = getelementptr inbounds i8, ptr %618, i64 -1
  %622 = load i8, ptr %621, align 1, !tbaa !31
  %623 = icmp eq i8 %620, %622
  br i1 %623, label %624, label %629

624:                                              ; preds = %615
  %625 = add i64 %617, 1
  %626 = icmp ugt ptr %619, %94
  %627 = icmp ugt ptr %621, %23
  %628 = and i1 %626, %627
  br i1 %628, label %615, label %629, !llvm.loop !98

629:                                              ; preds = %624, %615
  %630 = phi i64 [ %625, %624 ], [ %617, %615 ]
  %631 = phi ptr [ %619, %624 ], [ %616, %615 ]
  %632 = ptrtoint ptr %631 to i64
  br label %633

633:                                              ; preds = %629, %609
  %634 = phi i64 [ %632, %629 ], [ %120, %609 ]
  %635 = phi i64 [ %630, %629 ], [ %611, %609 ]
  %636 = phi ptr [ %631, %629 ], [ %113, %609 ]
  %637 = ptrtoint ptr %94 to i64
  %638 = sub i64 %634, %637
  %639 = add i32 %542, 3
  %640 = getelementptr inbounds i8, ptr %94, i64 %638
  %641 = icmp ugt ptr %640, %79
  %642 = load ptr, ptr %80, align 8, !tbaa !37
  br i1 %641, label %666, label %643

643:                                              ; preds = %633
  %644 = load <2 x i64>, ptr %94, align 1, !tbaa !31
  store <2 x i64> %644, ptr %642, align 1, !tbaa !31
  %645 = icmp ugt i64 %638, 16
  br i1 %645, label %646, label %783

646:                                              ; preds = %643
  %647 = load ptr, ptr %80, align 8, !tbaa !37
  %648 = getelementptr inbounds i8, ptr %647, i64 16
  %649 = getelementptr inbounds i8, ptr %94, i64 16
  %650 = add i64 %638, -16
  %651 = getelementptr inbounds i8, ptr %647, i64 %638
  %652 = load <2 x i64>, ptr %649, align 1, !tbaa !31
  store <2 x i64> %652, ptr %648, align 1, !tbaa !31
  %653 = icmp ult i64 %650, 17
  br i1 %653, label %783, label %654

654:                                              ; preds = %646
  %655 = getelementptr inbounds i8, ptr %647, i64 32
  br label %656

656:                                              ; preds = %656, %654
  %657 = phi ptr [ %655, %654 ], [ %664, %656 ]
  %658 = phi ptr [ %649, %654 ], [ %662, %656 ]
  %659 = getelementptr inbounds i8, ptr %658, i64 16
  %660 = load <2 x i64>, ptr %659, align 1, !tbaa !31
  store <2 x i64> %660, ptr %657, align 1, !tbaa !31
  %661 = getelementptr inbounds i8, ptr %657, i64 16
  %662 = getelementptr inbounds i8, ptr %658, i64 32
  %663 = load <2 x i64>, ptr %662, align 1, !tbaa !31
  store <2 x i64> %663, ptr %661, align 1, !tbaa !31
  %664 = getelementptr inbounds i8, ptr %657, i64 32
  %665 = icmp ult ptr %664, %651
  br i1 %665, label %656, label %787, !llvm.loop !39

666:                                              ; preds = %633
  %667 = ptrtoint ptr %640 to i64
  %668 = icmp ugt ptr %94, %79
  br i1 %668, label %686, label %669

669:                                              ; preds = %666
  %670 = sub i64 %81, %637
  %671 = getelementptr inbounds i8, ptr %642, i64 %670
  %672 = load <2 x i64>, ptr %94, align 1, !tbaa !31
  store <2 x i64> %672, ptr %642, align 1, !tbaa !31
  %673 = icmp ult i64 %670, 17
  br i1 %673, label %686, label %674

674:                                              ; preds = %669
  %675 = getelementptr inbounds i8, ptr %642, i64 16
  br label %676

676:                                              ; preds = %676, %674
  %677 = phi ptr [ %675, %674 ], [ %684, %676 ]
  %678 = phi ptr [ %94, %674 ], [ %682, %676 ]
  %679 = getelementptr inbounds i8, ptr %678, i64 16
  %680 = load <2 x i64>, ptr %679, align 1, !tbaa !31
  store <2 x i64> %680, ptr %677, align 1, !tbaa !31
  %681 = getelementptr inbounds i8, ptr %677, i64 16
  %682 = getelementptr inbounds i8, ptr %678, i64 32
  %683 = load <2 x i64>, ptr %682, align 1, !tbaa !31
  store <2 x i64> %683, ptr %681, align 1, !tbaa !31
  %684 = getelementptr inbounds i8, ptr %677, i64 32
  %685 = icmp ult ptr %684, %671
  br i1 %685, label %676, label %686, !llvm.loop !39

686:                                              ; preds = %676, %669, %666
  %687 = phi ptr [ %79, %669 ], [ %94, %666 ], [ %79, %676 ]
  %688 = phi ptr [ %671, %669 ], [ %642, %666 ], [ %671, %676 ]
  %689 = icmp ult ptr %687, %640
  br i1 %689, label %690, label %787

690:                                              ; preds = %686
  %691 = ptrtoint ptr %688 to i64
  %692 = ptrtoint ptr %687 to i64
  %693 = sub i64 %667, %692
  %694 = getelementptr i8, ptr %687, i64 %693
  %695 = icmp ult i64 %693, 8
  %696 = sub i64 %691, %692
  %697 = icmp ult i64 %696, 32
  %698 = select i1 %695, i1 true, i1 %697
  br i1 %698, label %734, label %699

699:                                              ; preds = %690
  %700 = icmp ult i64 %693, 32
  br i1 %700, label %720, label %701

701:                                              ; preds = %699
  %702 = and i64 %693, -32
  br label %703

703:                                              ; preds = %703, %701
  %704 = phi i64 [ 0, %701 ], [ %711, %703 ]
  %705 = getelementptr i8, ptr %688, i64 %704
  %706 = getelementptr i8, ptr %687, i64 %704
  %707 = getelementptr i8, ptr %706, i64 16
  %708 = load <16 x i8>, ptr %706, align 1, !tbaa !31
  %709 = load <16 x i8>, ptr %707, align 1, !tbaa !31
  %710 = getelementptr i8, ptr %705, i64 16
  store <16 x i8> %708, ptr %705, align 1, !tbaa !31
  store <16 x i8> %709, ptr %710, align 1, !tbaa !31
  %711 = add nuw i64 %704, 32
  %712 = icmp eq i64 %711, %702
  br i1 %712, label %713, label %703, !llvm.loop !99

713:                                              ; preds = %703
  %714 = icmp eq i64 %693, %702
  br i1 %714, label %787, label %715

715:                                              ; preds = %713
  %716 = getelementptr i8, ptr %687, i64 %702
  %717 = getelementptr i8, ptr %688, i64 %702
  %718 = and i64 %693, 24
  %719 = icmp eq i64 %718, 0
  br i1 %719, label %734, label %720

720:                                              ; preds = %699, %715
  %721 = phi i64 [ %702, %715 ], [ 0, %699 ]
  %722 = and i64 %693, -8
  %723 = getelementptr i8, ptr %688, i64 %722
  %724 = getelementptr i8, ptr %687, i64 %722
  br label %725

725:                                              ; preds = %725, %720
  %726 = phi i64 [ %721, %720 ], [ %730, %725 ]
  %727 = getelementptr i8, ptr %688, i64 %726
  %728 = getelementptr i8, ptr %687, i64 %726
  %729 = load <8 x i8>, ptr %728, align 1, !tbaa !31
  store <8 x i8> %729, ptr %727, align 1, !tbaa !31
  %730 = add nuw i64 %726, 8
  %731 = icmp eq i64 %730, %722
  br i1 %731, label %732, label %725, !llvm.loop !100

732:                                              ; preds = %725
  %733 = icmp eq i64 %693, %722
  br i1 %733, label %787, label %734

734:                                              ; preds = %690, %715, %732
  %735 = phi ptr [ %688, %690 ], [ %717, %715 ], [ %723, %732 ]
  %736 = phi ptr [ %687, %690 ], [ %716, %715 ], [ %724, %732 ]
  %737 = ptrtoint ptr %736 to i64
  %738 = sub i64 %634, %737
  %739 = and i64 %738, 7
  %740 = icmp eq i64 %739, 0
  br i1 %740, label %750, label %741

741:                                              ; preds = %734, %741
  %742 = phi ptr [ %747, %741 ], [ %735, %734 ]
  %743 = phi ptr [ %745, %741 ], [ %736, %734 ]
  %744 = phi i64 [ %748, %741 ], [ 0, %734 ]
  %745 = getelementptr inbounds i8, ptr %743, i64 1
  %746 = load i8, ptr %743, align 1, !tbaa !31
  %747 = getelementptr inbounds i8, ptr %742, i64 1
  store i8 %746, ptr %742, align 1, !tbaa !31
  %748 = add i64 %744, 1
  %749 = icmp eq i64 %748, %739
  br i1 %749, label %750, label %741, !llvm.loop !101

750:                                              ; preds = %741, %734
  %751 = phi ptr [ %735, %734 ], [ %747, %741 ]
  %752 = phi ptr [ %736, %734 ], [ %745, %741 ]
  %753 = sub i64 %737, %634
  %754 = icmp ugt i64 %753, -8
  br i1 %754, label %787, label %755

755:                                              ; preds = %750, %755
  %756 = phi ptr [ %781, %755 ], [ %751, %750 ]
  %757 = phi ptr [ %779, %755 ], [ %752, %750 ]
  %758 = getelementptr inbounds i8, ptr %757, i64 1
  %759 = load i8, ptr %757, align 1, !tbaa !31
  %760 = getelementptr inbounds i8, ptr %756, i64 1
  store i8 %759, ptr %756, align 1, !tbaa !31
  %761 = getelementptr inbounds i8, ptr %757, i64 2
  %762 = load i8, ptr %758, align 1, !tbaa !31
  %763 = getelementptr inbounds i8, ptr %756, i64 2
  store i8 %762, ptr %760, align 1, !tbaa !31
  %764 = getelementptr inbounds i8, ptr %757, i64 3
  %765 = load i8, ptr %761, align 1, !tbaa !31
  %766 = getelementptr inbounds i8, ptr %756, i64 3
  store i8 %765, ptr %763, align 1, !tbaa !31
  %767 = getelementptr inbounds i8, ptr %757, i64 4
  %768 = load i8, ptr %764, align 1, !tbaa !31
  %769 = getelementptr inbounds i8, ptr %756, i64 4
  store i8 %768, ptr %766, align 1, !tbaa !31
  %770 = getelementptr inbounds i8, ptr %757, i64 5
  %771 = load i8, ptr %767, align 1, !tbaa !31
  %772 = getelementptr inbounds i8, ptr %756, i64 5
  store i8 %771, ptr %769, align 1, !tbaa !31
  %773 = getelementptr inbounds i8, ptr %757, i64 6
  %774 = load i8, ptr %770, align 1, !tbaa !31
  %775 = getelementptr inbounds i8, ptr %756, i64 6
  store i8 %774, ptr %772, align 1, !tbaa !31
  %776 = getelementptr inbounds i8, ptr %757, i64 7
  %777 = load i8, ptr %773, align 1, !tbaa !31
  %778 = getelementptr inbounds i8, ptr %756, i64 7
  store i8 %777, ptr %775, align 1, !tbaa !31
  %779 = getelementptr inbounds i8, ptr %757, i64 8
  %780 = load i8, ptr %776, align 1, !tbaa !31
  %781 = getelementptr inbounds i8, ptr %756, i64 8
  store i8 %780, ptr %778, align 1, !tbaa !31
  %782 = icmp eq ptr %779, %694
  br i1 %782, label %787, label %755, !llvm.loop !102

783:                                              ; preds = %646, %643
  %784 = load ptr, ptr %80, align 8, !tbaa !37
  %785 = getelementptr inbounds i8, ptr %784, i64 %638
  store ptr %785, ptr %80, align 8, !tbaa !37
  %786 = load ptr, ptr %83, align 8, !tbaa !47
  br label %799

787:                                              ; preds = %656, %750, %755, %713, %732, %686
  %788 = load ptr, ptr %80, align 8, !tbaa !37
  %789 = getelementptr inbounds i8, ptr %788, i64 %638
  store ptr %789, ptr %80, align 8, !tbaa !37
  %790 = icmp ugt i64 %638, 65535
  %791 = load ptr, ptr %83, align 8, !tbaa !47
  br i1 %790, label %792, label %799, !prof !48

792:                                              ; preds = %787
  store i32 1, ptr %82, align 8, !tbaa !49
  %793 = load ptr, ptr %1, align 8, !tbaa !50
  %794 = ptrtoint ptr %791 to i64
  %795 = ptrtoint ptr %793 to i64
  %796 = sub i64 %794, %795
  %797 = lshr exact i64 %796, 3
  %798 = trunc i64 %797 to i32
  store i32 %798, ptr %84, align 4, !tbaa !51
  br label %799

799:                                              ; preds = %792, %787, %783
  %800 = phi ptr [ %786, %783 ], [ %791, %792 ], [ %791, %787 ]
  %801 = trunc i64 %638 to i16
  %802 = getelementptr inbounds %struct.SeqDef_s, ptr %800, i64 0, i32 1
  store i16 %801, ptr %802, align 4, !tbaa !52
  store i32 %639, ptr %800, align 4, !tbaa !54
  %803 = add i64 %635, -3
  %804 = icmp ugt i64 %803, 65535
  br i1 %804, label %819, label %832, !prof !55

805:                                              ; preds = %537, %532
  %806 = icmp uge ptr %112, %107
  %807 = zext i1 %806 to i64
  %808 = add i64 %108, %807
  %809 = getelementptr inbounds i8, ptr %112, i64 %808
  %810 = icmp ugt ptr %809, %25
  br i1 %810, label %3504, label %811

811:                                              ; preds = %805
  %812 = select i1 %806, i64 256, i64 0
  %813 = getelementptr inbounds i8, ptr %107, i64 %812
  %814 = lshr i32 %129, 8
  %815 = zext nneg i32 %814 to i64
  %816 = getelementptr inbounds i32, ptr %32, i64 %815
  %817 = load i32, ptr %816, align 4, !tbaa !20
  %818 = xor i32 %817, %129
  br label %106

819:                                              ; preds = %799, %526, %315
  %820 = phi ptr [ %316, %315 ], [ %527, %526 ], [ %800, %799 ]
  %821 = phi i64 [ %319, %315 ], [ %530, %526 ], [ %803, %799 ]
  %822 = phi i64 [ %151, %315 ], [ %362, %526 ], [ %635, %799 ]
  %823 = phi i32 [ %96, %315 ], [ %95, %526 ], [ %95, %799 ]
  %824 = phi i32 [ %95, %315 ], [ %336, %526 ], [ %542, %799 ]
  %825 = phi ptr [ %146, %315 ], [ %363, %526 ], [ %636, %799 ]
  store i32 2, ptr %82, align 8, !tbaa !49
  %826 = load ptr, ptr %1, align 8, !tbaa !50
  %827 = ptrtoint ptr %820 to i64
  %828 = ptrtoint ptr %826 to i64
  %829 = sub i64 %827, %828
  %830 = lshr exact i64 %829, 3
  %831 = trunc i64 %830 to i32
  store i32 %831, ptr %84, align 4, !tbaa !51
  br label %832

832:                                              ; preds = %819, %799, %526, %315
  %833 = phi i64 [ %319, %315 ], [ %530, %526 ], [ %803, %799 ], [ %821, %819 ]
  %834 = phi ptr [ %316, %315 ], [ %527, %526 ], [ %800, %799 ], [ %820, %819 ]
  %835 = phi i64 [ %151, %315 ], [ %362, %526 ], [ %635, %799 ], [ %822, %819 ]
  %836 = phi i32 [ %96, %315 ], [ %95, %526 ], [ %95, %799 ], [ %823, %819 ]
  %837 = phi i32 [ %95, %315 ], [ %336, %526 ], [ %542, %799 ], [ %824, %819 ]
  %838 = phi ptr [ %146, %315 ], [ %363, %526 ], [ %636, %799 ], [ %825, %819 ]
  %839 = trunc i64 %833 to i16
  %840 = getelementptr inbounds %struct.SeqDef_s, ptr %834, i64 0, i32 2
  store i16 %839, ptr %840, align 2, !tbaa !56
  %841 = getelementptr inbounds %struct.SeqDef_s, ptr %834, i64 1
  store ptr %841, ptr %83, align 8, !tbaa !47
  %842 = getelementptr inbounds i8, ptr %838, i64 %835
  %843 = icmp ugt ptr %842, %25
  br i1 %843, label %915, label %844

844:                                              ; preds = %832
  %845 = add i32 %122, 2
  %846 = and i64 %121, 4294967295
  %847 = getelementptr inbounds i8, ptr %69, i64 %846
  %848 = load i32, ptr %847, align 1, !tbaa !20
  %849 = mul i32 %848, -1640531535
  %850 = lshr i32 %849, %77
  %851 = zext i32 %850 to i64
  %852 = getelementptr inbounds i32, ptr %9, i64 %851
  store i32 %845, ptr %852, align 4, !tbaa !20
  %853 = getelementptr inbounds i8, ptr %842, i64 -2
  %854 = ptrtoint ptr %853 to i64
  %855 = sub i64 %854, %54
  %856 = trunc i64 %855 to i32
  %857 = load i32, ptr %853, align 1, !tbaa !20
  %858 = mul i32 %857, -1640531535
  %859 = lshr i32 %858, %77
  %860 = zext i32 %859 to i64
  %861 = getelementptr inbounds i32, ptr %9, i64 %860
  store i32 %856, ptr %861, align 4, !tbaa !20
  br label %862

862:                                              ; preds = %904, %844
  %863 = phi ptr [ %841, %844 ], [ %907, %904 ]
  %864 = phi ptr [ %842, %844 ], [ %913, %904 ]
  %865 = phi i32 [ %837, %844 ], [ %866, %904 ]
  %866 = phi i32 [ %836, %844 ], [ %865, %904 ]
  %867 = ptrtoint ptr %864 to i64
  %868 = sub i64 %867, %54
  %869 = trunc i64 %868 to i32
  %870 = sub i32 %869, %866
  %871 = icmp ult i32 %870, %21
  %872 = zext i32 %870 to i64
  %873 = select i1 %871, ptr %90, ptr %18
  %874 = getelementptr inbounds i8, ptr %873, i64 %872
  %875 = sub i32 %870, %21
  %876 = icmp ugt i32 %875, -4
  br i1 %876, label %915, label %877

877:                                              ; preds = %862
  %878 = load i32, ptr %874, align 1, !tbaa !20
  %879 = load i32, ptr %864, align 1, !tbaa !20
  %880 = icmp eq i32 %878, %879
  br i1 %880, label %881, label %915

881:                                              ; preds = %877
  %882 = select i1 %871, ptr %39, ptr %24
  %883 = getelementptr inbounds i8, ptr %864, i64 4
  %884 = getelementptr inbounds i8, ptr %874, i64 4
  %885 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %883, ptr noundef nonnull %884, ptr noundef %24, ptr noundef %882, ptr noundef %23)
  %886 = add i64 %885, 4
  %887 = icmp ugt ptr %864, %79
  br i1 %887, label %892, label %888

888:                                              ; preds = %881
  %889 = load ptr, ptr %80, align 8, !tbaa !37
  %890 = load <2 x i64>, ptr %864, align 1, !tbaa !31
  store <2 x i64> %890, ptr %889, align 1, !tbaa !31
  %891 = load ptr, ptr %83, align 8, !tbaa !47
  br label %892

892:                                              ; preds = %888, %881
  %893 = phi ptr [ %863, %881 ], [ %891, %888 ]
  %894 = getelementptr inbounds %struct.SeqDef_s, ptr %893, i64 0, i32 1
  store i16 0, ptr %894, align 4, !tbaa !52
  store i32 1, ptr %893, align 4, !tbaa !54
  %895 = add i64 %885, 1
  %896 = icmp ugt i64 %895, 65535
  br i1 %896, label %897, label %904, !prof !55

897:                                              ; preds = %892
  store i32 2, ptr %82, align 8, !tbaa !49
  %898 = load ptr, ptr %1, align 8, !tbaa !50
  %899 = ptrtoint ptr %893 to i64
  %900 = ptrtoint ptr %898 to i64
  %901 = sub i64 %899, %900
  %902 = lshr exact i64 %901, 3
  %903 = trunc i64 %902 to i32
  store i32 %903, ptr %84, align 4, !tbaa !51
  br label %904

904:                                              ; preds = %897, %892
  %905 = trunc i64 %895 to i16
  %906 = getelementptr inbounds %struct.SeqDef_s, ptr %893, i64 0, i32 2
  store i16 %905, ptr %906, align 2, !tbaa !56
  %907 = getelementptr inbounds %struct.SeqDef_s, ptr %893, i64 1
  store ptr %907, ptr %83, align 8, !tbaa !47
  %908 = load i32, ptr %864, align 1, !tbaa !20
  %909 = mul i32 %908, -1640531535
  %910 = lshr i32 %909, %77
  %911 = zext i32 %910 to i64
  %912 = getelementptr inbounds i32, ptr %9, i64 %911
  store i32 %869, ptr %912, align 4, !tbaa !20
  %913 = getelementptr inbounds i8, ptr %864, i64 %886
  %914 = icmp ugt ptr %913, %25
  br i1 %914, label %915, label %862

915:                                              ; preds = %904, %877, %862, %832
  %916 = phi i32 [ %836, %832 ], [ %866, %862 ], [ %866, %877 ], [ %865, %904 ]
  %917 = phi i32 [ %837, %832 ], [ %865, %862 ], [ %865, %877 ], [ %866, %904 ]
  %918 = phi ptr [ %842, %832 ], [ %864, %862 ], [ %864, %877 ], [ %913, %904 ]
  %919 = getelementptr inbounds i8, ptr %918, i64 %19
  %920 = icmp ugt ptr %919, %25
  br i1 %920, label %3504, label %91

921:                                              ; preds = %5
  br i1 %57, label %931, label %922

922:                                              ; preds = %921
  %923 = zext nneg i32 %53 to i64
  %924 = shl i64 4, %923
  %925 = icmp ugt i32 %53, 61
  br i1 %925, label %931, label %926

926:                                              ; preds = %922, %926
  %927 = phi i64 [ %929, %926 ], [ 0, %922 ]
  %928 = getelementptr inbounds i8, ptr %32, i64 %927
  tail call void @llvm.prefetch.p0(ptr %928, i32 0, i32 2, i32 1)
  %929 = add i64 %927, 64
  %930 = icmp ult i64 %929, %924
  br i1 %930, label %926, label %931, !llvm.loop !88

931:                                              ; preds = %926, %922, %921
  %932 = getelementptr inbounds i8, ptr %18, i64 2
  %933 = getelementptr inbounds i8, ptr %3, i64 %19
  %934 = icmp ugt ptr %933, %25
  br i1 %934, label %3504, label %935

935:                                              ; preds = %931
  %936 = and i64 %51, 4294967295
  %937 = icmp eq i64 %936, 0
  %938 = zext i1 %937 to i64
  %939 = getelementptr inbounds i8, ptr %3, i64 %938
  %940 = sub i32 64, %11
  %941 = zext nneg i32 %940 to i64
  %942 = sub i32 56, %53
  %943 = zext nneg i32 %942 to i64
  %944 = getelementptr inbounds i8, ptr %24, i64 -32
  %945 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %946 = ptrtoint ptr %944 to i64
  %947 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %948 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %949 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  %950 = getelementptr inbounds i8, ptr %24, i64 -7
  %951 = getelementptr inbounds i8, ptr %24, i64 -3
  %952 = getelementptr inbounds i8, ptr %24, i64 -1
  %953 = zext i32 %44 to i64
  %954 = sub nsw i64 0, %953
  %955 = getelementptr inbounds i8, ptr %36, i64 %954
  br label %956

956:                                              ; preds = %1776, %935
  %957 = phi ptr [ %933, %935 ], [ %1780, %1776 ]
  %958 = phi ptr [ %939, %935 ], [ %1779, %1776 ]
  %959 = phi ptr [ %3, %935 ], [ %1779, %1776 ]
  %960 = phi i32 [ %26, %935 ], [ %1778, %1776 ]
  %961 = phi i32 [ %28, %935 ], [ %1777, %1776 ]
  %962 = load i64, ptr %958, align 1, !tbaa !19
  %963 = mul i64 %962, -3523014627271114752
  %964 = lshr i64 %963, %943
  %965 = lshr i64 %964, 8
  %966 = getelementptr inbounds i32, ptr %32, i64 %965
  %967 = load i32, ptr %966, align 4, !tbaa !20
  %968 = zext i32 %967 to i64
  %969 = xor i64 %964, %968
  %970 = getelementptr inbounds i8, ptr %958, i64 256
  br label %971

971:                                              ; preds = %1675, %956
  %972 = phi ptr [ %970, %956 ], [ %1677, %1675 ]
  %973 = phi i64 [ %19, %956 ], [ %1672, %1675 ]
  %974 = phi i64 [ %969, %956 ], [ %1682, %1675 ]
  %975 = phi i32 [ %967, %956 ], [ %1680, %1675 ]
  %976 = phi i64 [ %963, %956 ], [ %992, %1675 ]
  %977 = phi ptr [ %957, %956 ], [ %1673, %1675 ]
  %978 = phi ptr [ %958, %956 ], [ %977, %1675 ]
  %979 = lshr i64 %976, %941
  %980 = getelementptr inbounds i32, ptr %9, i64 %979
  %981 = load i32, ptr %980, align 4, !tbaa !20
  %982 = and i64 %974, 255
  %983 = icmp eq i64 %982, 0
  %984 = ptrtoint ptr %978 to i64
  %985 = sub i64 %984, %54
  %986 = trunc i64 %985 to i32
  %987 = zext i32 %981 to i64
  %988 = getelementptr inbounds i8, ptr %18, i64 %987
  %989 = sub i32 %986, %960
  %990 = add i32 %989, 1
  %991 = load i64, ptr %977, align 1, !tbaa !19
  %992 = mul i64 %991, -3523014627271114752
  %993 = lshr i64 %992, %943
  store i32 %986, ptr %980, align 4, !tbaa !20
  %994 = sub i32 %990, %21
  %995 = icmp ugt i32 %994, -4
  br i1 %995, label %1185, label %996

996:                                              ; preds = %971
  %997 = icmp ult i32 %990, %21
  %998 = sub i32 %990, %44
  %999 = zext i32 %998 to i64
  %1000 = getelementptr inbounds i8, ptr %36, i64 %999
  %1001 = zext i32 %990 to i64
  %1002 = getelementptr inbounds i8, ptr %18, i64 %1001
  %1003 = select i1 %997, ptr %1000, ptr %1002
  %1004 = load i32, ptr %1003, align 1, !tbaa !20
  %1005 = getelementptr inbounds i8, ptr %978, i64 1
  %1006 = load i32, ptr %1005, align 1, !tbaa !20
  %1007 = icmp eq i32 %1004, %1006
  br i1 %1007, label %1008, label %1185

1008:                                             ; preds = %996
  %1009 = ptrtoint ptr %978 to i64
  %1010 = getelementptr inbounds i8, ptr %978, i64 1
  %1011 = select i1 %997, ptr %39, ptr %24
  %1012 = getelementptr inbounds i8, ptr %978, i64 5
  %1013 = getelementptr inbounds i8, ptr %1003, i64 4
  %1014 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1012, ptr noundef nonnull %1013, ptr noundef %24, ptr noundef %1011, ptr noundef %23)
  %1015 = add i64 %1014, 4
  %1016 = ptrtoint ptr %1010 to i64
  %1017 = ptrtoint ptr %959 to i64
  %1018 = sub i64 %1016, %1017
  %1019 = getelementptr inbounds i8, ptr %959, i64 %1018
  %1020 = icmp ugt ptr %1019, %944
  %1021 = load ptr, ptr %945, align 8, !tbaa !37
  br i1 %1020, label %1045, label %1022

1022:                                             ; preds = %1008
  %1023 = load <2 x i64>, ptr %959, align 1, !tbaa !31
  store <2 x i64> %1023, ptr %1021, align 1, !tbaa !31
  %1024 = icmp ugt i64 %1018, 16
  br i1 %1024, label %1025, label %1163

1025:                                             ; preds = %1022
  %1026 = load ptr, ptr %945, align 8, !tbaa !37
  %1027 = getelementptr inbounds i8, ptr %1026, i64 16
  %1028 = getelementptr inbounds i8, ptr %959, i64 16
  %1029 = add i64 %1018, -16
  %1030 = getelementptr inbounds i8, ptr %1026, i64 %1018
  %1031 = load <2 x i64>, ptr %1028, align 1, !tbaa !31
  store <2 x i64> %1031, ptr %1027, align 1, !tbaa !31
  %1032 = icmp ult i64 %1029, 17
  br i1 %1032, label %1163, label %1033

1033:                                             ; preds = %1025
  %1034 = getelementptr inbounds i8, ptr %1026, i64 32
  br label %1035

1035:                                             ; preds = %1035, %1033
  %1036 = phi ptr [ %1034, %1033 ], [ %1043, %1035 ]
  %1037 = phi ptr [ %1028, %1033 ], [ %1041, %1035 ]
  %1038 = getelementptr inbounds i8, ptr %1037, i64 16
  %1039 = load <2 x i64>, ptr %1038, align 1, !tbaa !31
  store <2 x i64> %1039, ptr %1036, align 1, !tbaa !31
  %1040 = getelementptr inbounds i8, ptr %1036, i64 16
  %1041 = getelementptr inbounds i8, ptr %1037, i64 32
  %1042 = load <2 x i64>, ptr %1041, align 1, !tbaa !31
  store <2 x i64> %1042, ptr %1040, align 1, !tbaa !31
  %1043 = getelementptr inbounds i8, ptr %1036, i64 32
  %1044 = icmp ult ptr %1043, %1030
  br i1 %1044, label %1035, label %1167, !llvm.loop !39

1045:                                             ; preds = %1008
  %1046 = ptrtoint ptr %1019 to i64
  %1047 = icmp ugt ptr %959, %944
  br i1 %1047, label %1065, label %1048

1048:                                             ; preds = %1045
  %1049 = sub i64 %946, %1017
  %1050 = getelementptr inbounds i8, ptr %1021, i64 %1049
  %1051 = load <2 x i64>, ptr %959, align 1, !tbaa !31
  store <2 x i64> %1051, ptr %1021, align 1, !tbaa !31
  %1052 = icmp ult i64 %1049, 17
  br i1 %1052, label %1065, label %1053

1053:                                             ; preds = %1048
  %1054 = getelementptr inbounds i8, ptr %1021, i64 16
  br label %1055

1055:                                             ; preds = %1055, %1053
  %1056 = phi ptr [ %1054, %1053 ], [ %1063, %1055 ]
  %1057 = phi ptr [ %959, %1053 ], [ %1061, %1055 ]
  %1058 = getelementptr inbounds i8, ptr %1057, i64 16
  %1059 = load <2 x i64>, ptr %1058, align 1, !tbaa !31
  store <2 x i64> %1059, ptr %1056, align 1, !tbaa !31
  %1060 = getelementptr inbounds i8, ptr %1056, i64 16
  %1061 = getelementptr inbounds i8, ptr %1057, i64 32
  %1062 = load <2 x i64>, ptr %1061, align 1, !tbaa !31
  store <2 x i64> %1062, ptr %1060, align 1, !tbaa !31
  %1063 = getelementptr inbounds i8, ptr %1056, i64 32
  %1064 = icmp ult ptr %1063, %1050
  br i1 %1064, label %1055, label %1065, !llvm.loop !39

1065:                                             ; preds = %1055, %1048, %1045
  %1066 = phi ptr [ %944, %1048 ], [ %959, %1045 ], [ %944, %1055 ]
  %1067 = phi ptr [ %1050, %1048 ], [ %1021, %1045 ], [ %1050, %1055 ]
  %1068 = icmp ult ptr %1066, %1019
  br i1 %1068, label %1069, label %1167

1069:                                             ; preds = %1065
  %1070 = ptrtoint ptr %1067 to i64
  %1071 = ptrtoint ptr %1066 to i64
  %1072 = sub i64 %1046, %1071
  %1073 = getelementptr i8, ptr %1066, i64 %1072
  %1074 = icmp ult i64 %1072, 8
  %1075 = sub i64 %1070, %1071
  %1076 = icmp ult i64 %1075, 32
  %1077 = select i1 %1074, i1 true, i1 %1076
  br i1 %1077, label %1113, label %1078

1078:                                             ; preds = %1069
  %1079 = icmp ult i64 %1072, 32
  br i1 %1079, label %1099, label %1080

1080:                                             ; preds = %1078
  %1081 = and i64 %1072, -32
  br label %1082

1082:                                             ; preds = %1082, %1080
  %1083 = phi i64 [ 0, %1080 ], [ %1090, %1082 ]
  %1084 = getelementptr i8, ptr %1067, i64 %1083
  %1085 = getelementptr i8, ptr %1066, i64 %1083
  %1086 = getelementptr i8, ptr %1085, i64 16
  %1087 = load <16 x i8>, ptr %1085, align 1, !tbaa !31
  %1088 = load <16 x i8>, ptr %1086, align 1, !tbaa !31
  %1089 = getelementptr i8, ptr %1084, i64 16
  store <16 x i8> %1087, ptr %1084, align 1, !tbaa !31
  store <16 x i8> %1088, ptr %1089, align 1, !tbaa !31
  %1090 = add nuw i64 %1083, 32
  %1091 = icmp eq i64 %1090, %1081
  br i1 %1091, label %1092, label %1082, !llvm.loop !103

1092:                                             ; preds = %1082
  %1093 = icmp eq i64 %1072, %1081
  br i1 %1093, label %1167, label %1094

1094:                                             ; preds = %1092
  %1095 = getelementptr i8, ptr %1066, i64 %1081
  %1096 = getelementptr i8, ptr %1067, i64 %1081
  %1097 = and i64 %1072, 24
  %1098 = icmp eq i64 %1097, 0
  br i1 %1098, label %1113, label %1099

1099:                                             ; preds = %1078, %1094
  %1100 = phi i64 [ %1081, %1094 ], [ 0, %1078 ]
  %1101 = and i64 %1072, -8
  %1102 = getelementptr i8, ptr %1067, i64 %1101
  %1103 = getelementptr i8, ptr %1066, i64 %1101
  br label %1104

1104:                                             ; preds = %1104, %1099
  %1105 = phi i64 [ %1100, %1099 ], [ %1109, %1104 ]
  %1106 = getelementptr i8, ptr %1067, i64 %1105
  %1107 = getelementptr i8, ptr %1066, i64 %1105
  %1108 = load <8 x i8>, ptr %1107, align 1, !tbaa !31
  store <8 x i8> %1108, ptr %1106, align 1, !tbaa !31
  %1109 = add nuw i64 %1105, 8
  %1110 = icmp eq i64 %1109, %1101
  br i1 %1110, label %1111, label %1104, !llvm.loop !104

1111:                                             ; preds = %1104
  %1112 = icmp eq i64 %1072, %1101
  br i1 %1112, label %1167, label %1113

1113:                                             ; preds = %1069, %1094, %1111
  %1114 = phi ptr [ %1067, %1069 ], [ %1096, %1094 ], [ %1102, %1111 ]
  %1115 = phi ptr [ %1066, %1069 ], [ %1095, %1094 ], [ %1103, %1111 ]
  %1116 = ptrtoint ptr %1115 to i64
  %1117 = sub i64 %1009, %1116
  %1118 = add i64 %1117, 1
  %1119 = sub i64 %1009, %1116
  %1120 = and i64 %1118, 7
  %1121 = icmp eq i64 %1120, 0
  br i1 %1121, label %1131, label %1122

1122:                                             ; preds = %1113, %1122
  %1123 = phi ptr [ %1128, %1122 ], [ %1114, %1113 ]
  %1124 = phi ptr [ %1126, %1122 ], [ %1115, %1113 ]
  %1125 = phi i64 [ %1129, %1122 ], [ 0, %1113 ]
  %1126 = getelementptr inbounds i8, ptr %1124, i64 1
  %1127 = load i8, ptr %1124, align 1, !tbaa !31
  %1128 = getelementptr inbounds i8, ptr %1123, i64 1
  store i8 %1127, ptr %1123, align 1, !tbaa !31
  %1129 = add i64 %1125, 1
  %1130 = icmp eq i64 %1129, %1120
  br i1 %1130, label %1131, label %1122, !llvm.loop !105

1131:                                             ; preds = %1122, %1113
  %1132 = phi ptr [ %1114, %1113 ], [ %1128, %1122 ]
  %1133 = phi ptr [ %1115, %1113 ], [ %1126, %1122 ]
  %1134 = icmp ult i64 %1119, 7
  br i1 %1134, label %1167, label %1135

1135:                                             ; preds = %1131, %1135
  %1136 = phi ptr [ %1161, %1135 ], [ %1132, %1131 ]
  %1137 = phi ptr [ %1159, %1135 ], [ %1133, %1131 ]
  %1138 = getelementptr inbounds i8, ptr %1137, i64 1
  %1139 = load i8, ptr %1137, align 1, !tbaa !31
  %1140 = getelementptr inbounds i8, ptr %1136, i64 1
  store i8 %1139, ptr %1136, align 1, !tbaa !31
  %1141 = getelementptr inbounds i8, ptr %1137, i64 2
  %1142 = load i8, ptr %1138, align 1, !tbaa !31
  %1143 = getelementptr inbounds i8, ptr %1136, i64 2
  store i8 %1142, ptr %1140, align 1, !tbaa !31
  %1144 = getelementptr inbounds i8, ptr %1137, i64 3
  %1145 = load i8, ptr %1141, align 1, !tbaa !31
  %1146 = getelementptr inbounds i8, ptr %1136, i64 3
  store i8 %1145, ptr %1143, align 1, !tbaa !31
  %1147 = getelementptr inbounds i8, ptr %1137, i64 4
  %1148 = load i8, ptr %1144, align 1, !tbaa !31
  %1149 = getelementptr inbounds i8, ptr %1136, i64 4
  store i8 %1148, ptr %1146, align 1, !tbaa !31
  %1150 = getelementptr inbounds i8, ptr %1137, i64 5
  %1151 = load i8, ptr %1147, align 1, !tbaa !31
  %1152 = getelementptr inbounds i8, ptr %1136, i64 5
  store i8 %1151, ptr %1149, align 1, !tbaa !31
  %1153 = getelementptr inbounds i8, ptr %1137, i64 6
  %1154 = load i8, ptr %1150, align 1, !tbaa !31
  %1155 = getelementptr inbounds i8, ptr %1136, i64 6
  store i8 %1154, ptr %1152, align 1, !tbaa !31
  %1156 = getelementptr inbounds i8, ptr %1137, i64 7
  %1157 = load i8, ptr %1153, align 1, !tbaa !31
  %1158 = getelementptr inbounds i8, ptr %1136, i64 7
  store i8 %1157, ptr %1155, align 1, !tbaa !31
  %1159 = getelementptr inbounds i8, ptr %1137, i64 8
  %1160 = load i8, ptr %1156, align 1, !tbaa !31
  %1161 = getelementptr inbounds i8, ptr %1136, i64 8
  store i8 %1160, ptr %1158, align 1, !tbaa !31
  %1162 = icmp eq ptr %1159, %1073
  br i1 %1162, label %1167, label %1135, !llvm.loop !106

1163:                                             ; preds = %1025, %1022
  %1164 = load ptr, ptr %945, align 8, !tbaa !37
  %1165 = getelementptr inbounds i8, ptr %1164, i64 %1018
  store ptr %1165, ptr %945, align 8, !tbaa !37
  %1166 = load ptr, ptr %948, align 8, !tbaa !47
  br label %1179

1167:                                             ; preds = %1035, %1131, %1135, %1092, %1111, %1065
  %1168 = load ptr, ptr %945, align 8, !tbaa !37
  %1169 = getelementptr inbounds i8, ptr %1168, i64 %1018
  store ptr %1169, ptr %945, align 8, !tbaa !37
  %1170 = icmp ugt i64 %1018, 65535
  %1171 = load ptr, ptr %948, align 8, !tbaa !47
  br i1 %1170, label %1172, label %1179, !prof !48

1172:                                             ; preds = %1167
  store i32 1, ptr %947, align 8, !tbaa !49
  %1173 = load ptr, ptr %1, align 8, !tbaa !50
  %1174 = ptrtoint ptr %1171 to i64
  %1175 = ptrtoint ptr %1173 to i64
  %1176 = sub i64 %1174, %1175
  %1177 = lshr exact i64 %1176, 3
  %1178 = trunc i64 %1177 to i32
  store i32 %1178, ptr %949, align 4, !tbaa !51
  br label %1179

1179:                                             ; preds = %1172, %1167, %1163
  %1180 = phi ptr [ %1166, %1163 ], [ %1171, %1172 ], [ %1171, %1167 ]
  %1181 = trunc i64 %1018 to i16
  %1182 = getelementptr inbounds %struct.SeqDef_s, ptr %1180, i64 0, i32 1
  store i16 %1181, ptr %1182, align 4, !tbaa !52
  store i32 1, ptr %1180, align 4, !tbaa !54
  %1183 = add i64 %1014, 1
  %1184 = icmp ugt i64 %1183, 65535
  br i1 %1184, label %1683, label %1696, !prof !55

1185:                                             ; preds = %996, %971
  br i1 %983, label %1186, label %1396

1186:                                             ; preds = %1185
  %1187 = lshr i32 %975, 8
  %1188 = icmp ugt i32 %1187, %34
  br i1 %1188, label %1189, label %1396

1189:                                             ; preds = %1186
  %1190 = zext nneg i32 %1187 to i64
  %1191 = getelementptr inbounds i8, ptr %36, i64 %1190
  %1192 = load i32, ptr %1191, align 1, !tbaa !20
  %1193 = load i32, ptr %978, align 1, !tbaa !20
  %1194 = icmp ne i32 %1192, %1193
  %1195 = icmp ugt i32 %981, %21
  %1196 = select i1 %1194, i1 true, i1 %1195
  br i1 %1196, label %1396, label %1197

1197:                                             ; preds = %1189
  %1198 = getelementptr inbounds i8, ptr %36, i64 %1190
  %1199 = add i32 %1187, %44
  %1200 = sub i32 %986, %1199
  %1201 = getelementptr inbounds i8, ptr %978, i64 4
  %1202 = getelementptr inbounds i8, ptr %1198, i64 4
  %1203 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1201, ptr noundef nonnull %1202, ptr noundef %24, ptr noundef %39, ptr noundef %23)
  %1204 = add i64 %1203, 4
  %1205 = icmp ugt ptr %978, %959
  br i1 %1205, label %1206, label %1224

1206:                                             ; preds = %1197, %1215
  %1207 = phi ptr [ %1210, %1215 ], [ %978, %1197 ]
  %1208 = phi i64 [ %1216, %1215 ], [ %1204, %1197 ]
  %1209 = phi ptr [ %1212, %1215 ], [ %1198, %1197 ]
  %1210 = getelementptr inbounds i8, ptr %1207, i64 -1
  %1211 = load i8, ptr %1210, align 1, !tbaa !31
  %1212 = getelementptr inbounds i8, ptr %1209, i64 -1
  %1213 = load i8, ptr %1212, align 1, !tbaa !31
  %1214 = icmp eq i8 %1211, %1213
  br i1 %1214, label %1215, label %1220

1215:                                             ; preds = %1206
  %1216 = add i64 %1208, 1
  %1217 = icmp ugt ptr %1210, %959
  %1218 = icmp ugt ptr %1212, %38
  %1219 = and i1 %1217, %1218
  br i1 %1219, label %1206, label %1220, !llvm.loop !93

1220:                                             ; preds = %1215, %1206
  %1221 = phi i64 [ %1216, %1215 ], [ %1208, %1206 ]
  %1222 = phi ptr [ %1210, %1215 ], [ %1207, %1206 ]
  %1223 = ptrtoint ptr %1222 to i64
  br label %1224

1224:                                             ; preds = %1220, %1197
  %1225 = phi i64 [ %1223, %1220 ], [ %984, %1197 ]
  %1226 = phi i64 [ %1221, %1220 ], [ %1204, %1197 ]
  %1227 = phi ptr [ %1222, %1220 ], [ %978, %1197 ]
  %1228 = ptrtoint ptr %959 to i64
  %1229 = sub i64 %1225, %1228
  %1230 = add i32 %1200, 3
  %1231 = getelementptr inbounds i8, ptr %959, i64 %1229
  %1232 = icmp ugt ptr %1231, %944
  %1233 = load ptr, ptr %945, align 8, !tbaa !37
  br i1 %1232, label %1257, label %1234

1234:                                             ; preds = %1224
  %1235 = load <2 x i64>, ptr %959, align 1, !tbaa !31
  store <2 x i64> %1235, ptr %1233, align 1, !tbaa !31
  %1236 = icmp ugt i64 %1229, 16
  br i1 %1236, label %1237, label %1374

1237:                                             ; preds = %1234
  %1238 = load ptr, ptr %945, align 8, !tbaa !37
  %1239 = getelementptr inbounds i8, ptr %1238, i64 16
  %1240 = getelementptr inbounds i8, ptr %959, i64 16
  %1241 = add i64 %1229, -16
  %1242 = getelementptr inbounds i8, ptr %1238, i64 %1229
  %1243 = load <2 x i64>, ptr %1240, align 1, !tbaa !31
  store <2 x i64> %1243, ptr %1239, align 1, !tbaa !31
  %1244 = icmp ult i64 %1241, 17
  br i1 %1244, label %1374, label %1245

1245:                                             ; preds = %1237
  %1246 = getelementptr inbounds i8, ptr %1238, i64 32
  br label %1247

1247:                                             ; preds = %1247, %1245
  %1248 = phi ptr [ %1246, %1245 ], [ %1255, %1247 ]
  %1249 = phi ptr [ %1240, %1245 ], [ %1253, %1247 ]
  %1250 = getelementptr inbounds i8, ptr %1249, i64 16
  %1251 = load <2 x i64>, ptr %1250, align 1, !tbaa !31
  store <2 x i64> %1251, ptr %1248, align 1, !tbaa !31
  %1252 = getelementptr inbounds i8, ptr %1248, i64 16
  %1253 = getelementptr inbounds i8, ptr %1249, i64 32
  %1254 = load <2 x i64>, ptr %1253, align 1, !tbaa !31
  store <2 x i64> %1254, ptr %1252, align 1, !tbaa !31
  %1255 = getelementptr inbounds i8, ptr %1248, i64 32
  %1256 = icmp ult ptr %1255, %1242
  br i1 %1256, label %1247, label %1378, !llvm.loop !39

1257:                                             ; preds = %1224
  %1258 = ptrtoint ptr %1231 to i64
  %1259 = icmp ugt ptr %959, %944
  br i1 %1259, label %1277, label %1260

1260:                                             ; preds = %1257
  %1261 = sub i64 %946, %1228
  %1262 = getelementptr inbounds i8, ptr %1233, i64 %1261
  %1263 = load <2 x i64>, ptr %959, align 1, !tbaa !31
  store <2 x i64> %1263, ptr %1233, align 1, !tbaa !31
  %1264 = icmp ult i64 %1261, 17
  br i1 %1264, label %1277, label %1265

1265:                                             ; preds = %1260
  %1266 = getelementptr inbounds i8, ptr %1233, i64 16
  br label %1267

1267:                                             ; preds = %1267, %1265
  %1268 = phi ptr [ %1266, %1265 ], [ %1275, %1267 ]
  %1269 = phi ptr [ %959, %1265 ], [ %1273, %1267 ]
  %1270 = getelementptr inbounds i8, ptr %1269, i64 16
  %1271 = load <2 x i64>, ptr %1270, align 1, !tbaa !31
  store <2 x i64> %1271, ptr %1268, align 1, !tbaa !31
  %1272 = getelementptr inbounds i8, ptr %1268, i64 16
  %1273 = getelementptr inbounds i8, ptr %1269, i64 32
  %1274 = load <2 x i64>, ptr %1273, align 1, !tbaa !31
  store <2 x i64> %1274, ptr %1272, align 1, !tbaa !31
  %1275 = getelementptr inbounds i8, ptr %1268, i64 32
  %1276 = icmp ult ptr %1275, %1262
  br i1 %1276, label %1267, label %1277, !llvm.loop !39

1277:                                             ; preds = %1267, %1260, %1257
  %1278 = phi ptr [ %944, %1260 ], [ %959, %1257 ], [ %944, %1267 ]
  %1279 = phi ptr [ %1262, %1260 ], [ %1233, %1257 ], [ %1262, %1267 ]
  %1280 = icmp ult ptr %1278, %1231
  br i1 %1280, label %1281, label %1378

1281:                                             ; preds = %1277
  %1282 = ptrtoint ptr %1279 to i64
  %1283 = ptrtoint ptr %1278 to i64
  %1284 = sub i64 %1258, %1283
  %1285 = getelementptr i8, ptr %1278, i64 %1284
  %1286 = icmp ult i64 %1284, 8
  %1287 = sub i64 %1282, %1283
  %1288 = icmp ult i64 %1287, 32
  %1289 = select i1 %1286, i1 true, i1 %1288
  br i1 %1289, label %1325, label %1290

1290:                                             ; preds = %1281
  %1291 = icmp ult i64 %1284, 32
  br i1 %1291, label %1311, label %1292

1292:                                             ; preds = %1290
  %1293 = and i64 %1284, -32
  br label %1294

1294:                                             ; preds = %1294, %1292
  %1295 = phi i64 [ 0, %1292 ], [ %1302, %1294 ]
  %1296 = getelementptr i8, ptr %1279, i64 %1295
  %1297 = getelementptr i8, ptr %1278, i64 %1295
  %1298 = getelementptr i8, ptr %1297, i64 16
  %1299 = load <16 x i8>, ptr %1297, align 1, !tbaa !31
  %1300 = load <16 x i8>, ptr %1298, align 1, !tbaa !31
  %1301 = getelementptr i8, ptr %1296, i64 16
  store <16 x i8> %1299, ptr %1296, align 1, !tbaa !31
  store <16 x i8> %1300, ptr %1301, align 1, !tbaa !31
  %1302 = add nuw i64 %1295, 32
  %1303 = icmp eq i64 %1302, %1293
  br i1 %1303, label %1304, label %1294, !llvm.loop !107

1304:                                             ; preds = %1294
  %1305 = icmp eq i64 %1284, %1293
  br i1 %1305, label %1378, label %1306

1306:                                             ; preds = %1304
  %1307 = getelementptr i8, ptr %1278, i64 %1293
  %1308 = getelementptr i8, ptr %1279, i64 %1293
  %1309 = and i64 %1284, 24
  %1310 = icmp eq i64 %1309, 0
  br i1 %1310, label %1325, label %1311

1311:                                             ; preds = %1290, %1306
  %1312 = phi i64 [ %1293, %1306 ], [ 0, %1290 ]
  %1313 = and i64 %1284, -8
  %1314 = getelementptr i8, ptr %1279, i64 %1313
  %1315 = getelementptr i8, ptr %1278, i64 %1313
  br label %1316

1316:                                             ; preds = %1316, %1311
  %1317 = phi i64 [ %1312, %1311 ], [ %1321, %1316 ]
  %1318 = getelementptr i8, ptr %1279, i64 %1317
  %1319 = getelementptr i8, ptr %1278, i64 %1317
  %1320 = load <8 x i8>, ptr %1319, align 1, !tbaa !31
  store <8 x i8> %1320, ptr %1318, align 1, !tbaa !31
  %1321 = add nuw i64 %1317, 8
  %1322 = icmp eq i64 %1321, %1313
  br i1 %1322, label %1323, label %1316, !llvm.loop !108

1323:                                             ; preds = %1316
  %1324 = icmp eq i64 %1284, %1313
  br i1 %1324, label %1378, label %1325

1325:                                             ; preds = %1281, %1306, %1323
  %1326 = phi ptr [ %1279, %1281 ], [ %1308, %1306 ], [ %1314, %1323 ]
  %1327 = phi ptr [ %1278, %1281 ], [ %1307, %1306 ], [ %1315, %1323 ]
  %1328 = ptrtoint ptr %1327 to i64
  %1329 = sub i64 %1225, %1328
  %1330 = and i64 %1329, 7
  %1331 = icmp eq i64 %1330, 0
  br i1 %1331, label %1341, label %1332

1332:                                             ; preds = %1325, %1332
  %1333 = phi ptr [ %1338, %1332 ], [ %1326, %1325 ]
  %1334 = phi ptr [ %1336, %1332 ], [ %1327, %1325 ]
  %1335 = phi i64 [ %1339, %1332 ], [ 0, %1325 ]
  %1336 = getelementptr inbounds i8, ptr %1334, i64 1
  %1337 = load i8, ptr %1334, align 1, !tbaa !31
  %1338 = getelementptr inbounds i8, ptr %1333, i64 1
  store i8 %1337, ptr %1333, align 1, !tbaa !31
  %1339 = add i64 %1335, 1
  %1340 = icmp eq i64 %1339, %1330
  br i1 %1340, label %1341, label %1332, !llvm.loop !109

1341:                                             ; preds = %1332, %1325
  %1342 = phi ptr [ %1326, %1325 ], [ %1338, %1332 ]
  %1343 = phi ptr [ %1327, %1325 ], [ %1336, %1332 ]
  %1344 = sub i64 %1328, %1225
  %1345 = icmp ugt i64 %1344, -8
  br i1 %1345, label %1378, label %1346

1346:                                             ; preds = %1341, %1346
  %1347 = phi ptr [ %1372, %1346 ], [ %1342, %1341 ]
  %1348 = phi ptr [ %1370, %1346 ], [ %1343, %1341 ]
  %1349 = getelementptr inbounds i8, ptr %1348, i64 1
  %1350 = load i8, ptr %1348, align 1, !tbaa !31
  %1351 = getelementptr inbounds i8, ptr %1347, i64 1
  store i8 %1350, ptr %1347, align 1, !tbaa !31
  %1352 = getelementptr inbounds i8, ptr %1348, i64 2
  %1353 = load i8, ptr %1349, align 1, !tbaa !31
  %1354 = getelementptr inbounds i8, ptr %1347, i64 2
  store i8 %1353, ptr %1351, align 1, !tbaa !31
  %1355 = getelementptr inbounds i8, ptr %1348, i64 3
  %1356 = load i8, ptr %1352, align 1, !tbaa !31
  %1357 = getelementptr inbounds i8, ptr %1347, i64 3
  store i8 %1356, ptr %1354, align 1, !tbaa !31
  %1358 = getelementptr inbounds i8, ptr %1348, i64 4
  %1359 = load i8, ptr %1355, align 1, !tbaa !31
  %1360 = getelementptr inbounds i8, ptr %1347, i64 4
  store i8 %1359, ptr %1357, align 1, !tbaa !31
  %1361 = getelementptr inbounds i8, ptr %1348, i64 5
  %1362 = load i8, ptr %1358, align 1, !tbaa !31
  %1363 = getelementptr inbounds i8, ptr %1347, i64 5
  store i8 %1362, ptr %1360, align 1, !tbaa !31
  %1364 = getelementptr inbounds i8, ptr %1348, i64 6
  %1365 = load i8, ptr %1361, align 1, !tbaa !31
  %1366 = getelementptr inbounds i8, ptr %1347, i64 6
  store i8 %1365, ptr %1363, align 1, !tbaa !31
  %1367 = getelementptr inbounds i8, ptr %1348, i64 7
  %1368 = load i8, ptr %1364, align 1, !tbaa !31
  %1369 = getelementptr inbounds i8, ptr %1347, i64 7
  store i8 %1368, ptr %1366, align 1, !tbaa !31
  %1370 = getelementptr inbounds i8, ptr %1348, i64 8
  %1371 = load i8, ptr %1367, align 1, !tbaa !31
  %1372 = getelementptr inbounds i8, ptr %1347, i64 8
  store i8 %1371, ptr %1369, align 1, !tbaa !31
  %1373 = icmp eq ptr %1370, %1285
  br i1 %1373, label %1378, label %1346, !llvm.loop !110

1374:                                             ; preds = %1237, %1234
  %1375 = load ptr, ptr %945, align 8, !tbaa !37
  %1376 = getelementptr inbounds i8, ptr %1375, i64 %1229
  store ptr %1376, ptr %945, align 8, !tbaa !37
  %1377 = load ptr, ptr %948, align 8, !tbaa !47
  br label %1390

1378:                                             ; preds = %1247, %1341, %1346, %1304, %1323, %1277
  %1379 = load ptr, ptr %945, align 8, !tbaa !37
  %1380 = getelementptr inbounds i8, ptr %1379, i64 %1229
  store ptr %1380, ptr %945, align 8, !tbaa !37
  %1381 = icmp ugt i64 %1229, 65535
  %1382 = load ptr, ptr %948, align 8, !tbaa !47
  br i1 %1381, label %1383, label %1390, !prof !48

1383:                                             ; preds = %1378
  store i32 1, ptr %947, align 8, !tbaa !49
  %1384 = load ptr, ptr %1, align 8, !tbaa !50
  %1385 = ptrtoint ptr %1382 to i64
  %1386 = ptrtoint ptr %1384 to i64
  %1387 = sub i64 %1385, %1386
  %1388 = lshr exact i64 %1387, 3
  %1389 = trunc i64 %1388 to i32
  store i32 %1389, ptr %949, align 4, !tbaa !51
  br label %1390

1390:                                             ; preds = %1383, %1378, %1374
  %1391 = phi ptr [ %1377, %1374 ], [ %1382, %1383 ], [ %1382, %1378 ]
  %1392 = trunc i64 %1229 to i16
  %1393 = getelementptr inbounds %struct.SeqDef_s, ptr %1391, i64 0, i32 1
  store i16 %1392, ptr %1393, align 4, !tbaa !52
  store i32 %1230, ptr %1391, align 4, !tbaa !54
  %1394 = add i64 %1226, -3
  %1395 = icmp ugt i64 %1394, 65535
  br i1 %1395, label %1683, label %1696, !prof !55

1396:                                             ; preds = %1189, %1186, %1185
  %1397 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %981, i32 %21, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr %988) #7, !srcloc !29
  %1398 = load i32, ptr %978, align 1, !tbaa !20
  %1399 = load i32, ptr %1397, align 1, !tbaa !20
  %1400 = icmp eq i32 %1398, %1399
  br i1 %1400, label %1401, label %1669

1401:                                             ; preds = %1396
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !30
  %1402 = icmp ult i32 %981, %21
  br i1 %1402, label %1669, label %1403

1403:                                             ; preds = %1401
  %1404 = ptrtoint ptr %988 to i64
  %1405 = sub i64 %984, %1404
  %1406 = trunc i64 %1405 to i32
  %1407 = getelementptr inbounds i8, ptr %978, i64 4
  %1408 = getelementptr inbounds i8, ptr %988, i64 4
  %1409 = icmp ugt ptr %950, %1407
  br i1 %1409, label %1410, label %1436

1410:                                             ; preds = %1403
  %1411 = load i64, ptr %1408, align 1, !tbaa !19
  %1412 = load i64, ptr %1407, align 1, !tbaa !19
  %1413 = xor i64 %1412, %1411
  %1414 = icmp eq i64 %1413, 0
  br i1 %1414, label %1418, label %1415

1415:                                             ; preds = %1410
  %1416 = tail call i64 @llvm.cttz.i64(i64 %1413, i1 true), !range !34
  %1417 = lshr i64 %1416, 3
  br label %1473

1418:                                             ; preds = %1410, %1424
  %1419 = phi ptr [ %1422, %1424 ], [ %1408, %1410 ]
  %1420 = phi ptr [ %1421, %1424 ], [ %1407, %1410 ]
  %1421 = getelementptr inbounds i8, ptr %1420, i64 8
  %1422 = getelementptr inbounds i8, ptr %1419, i64 8
  %1423 = icmp ult ptr %1421, %950
  br i1 %1423, label %1424, label %1436

1424:                                             ; preds = %1418
  %1425 = load i64, ptr %1422, align 1, !tbaa !19
  %1426 = load i64, ptr %1421, align 1, !tbaa !19
  %1427 = xor i64 %1426, %1425
  %1428 = icmp eq i64 %1427, 0
  br i1 %1428, label %1418, label %1429

1429:                                             ; preds = %1424
  %1430 = tail call i64 @llvm.cttz.i64(i64 %1427, i1 true), !range !34
  %1431 = lshr i64 %1430, 3
  %1432 = getelementptr inbounds i8, ptr %1421, i64 %1431
  %1433 = ptrtoint ptr %1432 to i64
  %1434 = ptrtoint ptr %1407 to i64
  %1435 = sub i64 %1433, %1434
  br label %1473

1436:                                             ; preds = %1418, %1403
  %1437 = phi ptr [ %1408, %1403 ], [ %1422, %1418 ]
  %1438 = phi ptr [ %1407, %1403 ], [ %1421, %1418 ]
  %1439 = icmp ult ptr %1438, %951
  br i1 %1439, label %1440, label %1447

1440:                                             ; preds = %1436
  %1441 = load i32, ptr %1437, align 1, !tbaa !20
  %1442 = load i32, ptr %1438, align 1, !tbaa !20
  %1443 = icmp eq i32 %1441, %1442
  br i1 %1443, label %1444, label %1447

1444:                                             ; preds = %1440
  %1445 = getelementptr inbounds i8, ptr %1438, i64 4
  %1446 = getelementptr inbounds i8, ptr %1437, i64 4
  br label %1447

1447:                                             ; preds = %1444, %1440, %1436
  %1448 = phi ptr [ %1446, %1444 ], [ %1437, %1440 ], [ %1437, %1436 ]
  %1449 = phi ptr [ %1445, %1444 ], [ %1438, %1440 ], [ %1438, %1436 ]
  %1450 = icmp ult ptr %1449, %952
  br i1 %1450, label %1451, label %1458

1451:                                             ; preds = %1447
  %1452 = load i16, ptr %1448, align 1, !tbaa !35
  %1453 = load i16, ptr %1449, align 1, !tbaa !35
  %1454 = icmp eq i16 %1452, %1453
  br i1 %1454, label %1455, label %1458

1455:                                             ; preds = %1451
  %1456 = getelementptr inbounds i8, ptr %1449, i64 2
  %1457 = getelementptr inbounds i8, ptr %1448, i64 2
  br label %1458

1458:                                             ; preds = %1455, %1451, %1447
  %1459 = phi ptr [ %1457, %1455 ], [ %1448, %1451 ], [ %1448, %1447 ]
  %1460 = phi ptr [ %1456, %1455 ], [ %1449, %1451 ], [ %1449, %1447 ]
  %1461 = icmp ult ptr %1460, %24
  br i1 %1461, label %1462, label %1468

1462:                                             ; preds = %1458
  %1463 = load i8, ptr %1459, align 1, !tbaa !31
  %1464 = load i8, ptr %1460, align 1, !tbaa !31
  %1465 = icmp eq i8 %1463, %1464
  %1466 = zext i1 %1465 to i64
  %1467 = getelementptr inbounds i8, ptr %1460, i64 %1466
  br label %1468

1468:                                             ; preds = %1462, %1458
  %1469 = phi ptr [ %1460, %1458 ], [ %1467, %1462 ]
  %1470 = ptrtoint ptr %1469 to i64
  %1471 = ptrtoint ptr %1407 to i64
  %1472 = sub i64 %1470, %1471
  br label %1473

1473:                                             ; preds = %1468, %1429, %1415
  %1474 = phi i64 [ %1472, %1468 ], [ %1417, %1415 ], [ %1435, %1429 ]
  %1475 = add i64 %1474, 4
  %1476 = icmp ugt ptr %978, %959
  %1477 = icmp ugt i32 %981, %21
  %1478 = and i1 %1476, %1477
  br i1 %1478, label %1479, label %1497

1479:                                             ; preds = %1473, %1488
  %1480 = phi ptr [ %1483, %1488 ], [ %978, %1473 ]
  %1481 = phi i64 [ %1489, %1488 ], [ %1475, %1473 ]
  %1482 = phi ptr [ %1485, %1488 ], [ %988, %1473 ]
  %1483 = getelementptr inbounds i8, ptr %1480, i64 -1
  %1484 = load i8, ptr %1483, align 1, !tbaa !31
  %1485 = getelementptr inbounds i8, ptr %1482, i64 -1
  %1486 = load i8, ptr %1485, align 1, !tbaa !31
  %1487 = icmp eq i8 %1484, %1486
  br i1 %1487, label %1488, label %1493

1488:                                             ; preds = %1479
  %1489 = add i64 %1481, 1
  %1490 = icmp ugt ptr %1483, %959
  %1491 = icmp ugt ptr %1485, %23
  %1492 = and i1 %1490, %1491
  br i1 %1492, label %1479, label %1493, !llvm.loop !98

1493:                                             ; preds = %1488, %1479
  %1494 = phi i64 [ %1489, %1488 ], [ %1481, %1479 ]
  %1495 = phi ptr [ %1483, %1488 ], [ %1480, %1479 ]
  %1496 = ptrtoint ptr %1495 to i64
  br label %1497

1497:                                             ; preds = %1493, %1473
  %1498 = phi i64 [ %1496, %1493 ], [ %984, %1473 ]
  %1499 = phi i64 [ %1494, %1493 ], [ %1475, %1473 ]
  %1500 = phi ptr [ %1495, %1493 ], [ %978, %1473 ]
  %1501 = ptrtoint ptr %959 to i64
  %1502 = sub i64 %1498, %1501
  %1503 = add i32 %1406, 3
  %1504 = getelementptr inbounds i8, ptr %959, i64 %1502
  %1505 = icmp ugt ptr %1504, %944
  %1506 = load ptr, ptr %945, align 8, !tbaa !37
  br i1 %1505, label %1530, label %1507

1507:                                             ; preds = %1497
  %1508 = load <2 x i64>, ptr %959, align 1, !tbaa !31
  store <2 x i64> %1508, ptr %1506, align 1, !tbaa !31
  %1509 = icmp ugt i64 %1502, 16
  br i1 %1509, label %1510, label %1647

1510:                                             ; preds = %1507
  %1511 = load ptr, ptr %945, align 8, !tbaa !37
  %1512 = getelementptr inbounds i8, ptr %1511, i64 16
  %1513 = getelementptr inbounds i8, ptr %959, i64 16
  %1514 = add i64 %1502, -16
  %1515 = getelementptr inbounds i8, ptr %1511, i64 %1502
  %1516 = load <2 x i64>, ptr %1513, align 1, !tbaa !31
  store <2 x i64> %1516, ptr %1512, align 1, !tbaa !31
  %1517 = icmp ult i64 %1514, 17
  br i1 %1517, label %1647, label %1518

1518:                                             ; preds = %1510
  %1519 = getelementptr inbounds i8, ptr %1511, i64 32
  br label %1520

1520:                                             ; preds = %1520, %1518
  %1521 = phi ptr [ %1519, %1518 ], [ %1528, %1520 ]
  %1522 = phi ptr [ %1513, %1518 ], [ %1526, %1520 ]
  %1523 = getelementptr inbounds i8, ptr %1522, i64 16
  %1524 = load <2 x i64>, ptr %1523, align 1, !tbaa !31
  store <2 x i64> %1524, ptr %1521, align 1, !tbaa !31
  %1525 = getelementptr inbounds i8, ptr %1521, i64 16
  %1526 = getelementptr inbounds i8, ptr %1522, i64 32
  %1527 = load <2 x i64>, ptr %1526, align 1, !tbaa !31
  store <2 x i64> %1527, ptr %1525, align 1, !tbaa !31
  %1528 = getelementptr inbounds i8, ptr %1521, i64 32
  %1529 = icmp ult ptr %1528, %1515
  br i1 %1529, label %1520, label %1651, !llvm.loop !39

1530:                                             ; preds = %1497
  %1531 = ptrtoint ptr %1504 to i64
  %1532 = icmp ugt ptr %959, %944
  br i1 %1532, label %1550, label %1533

1533:                                             ; preds = %1530
  %1534 = sub i64 %946, %1501
  %1535 = getelementptr inbounds i8, ptr %1506, i64 %1534
  %1536 = load <2 x i64>, ptr %959, align 1, !tbaa !31
  store <2 x i64> %1536, ptr %1506, align 1, !tbaa !31
  %1537 = icmp ult i64 %1534, 17
  br i1 %1537, label %1550, label %1538

1538:                                             ; preds = %1533
  %1539 = getelementptr inbounds i8, ptr %1506, i64 16
  br label %1540

1540:                                             ; preds = %1540, %1538
  %1541 = phi ptr [ %1539, %1538 ], [ %1548, %1540 ]
  %1542 = phi ptr [ %959, %1538 ], [ %1546, %1540 ]
  %1543 = getelementptr inbounds i8, ptr %1542, i64 16
  %1544 = load <2 x i64>, ptr %1543, align 1, !tbaa !31
  store <2 x i64> %1544, ptr %1541, align 1, !tbaa !31
  %1545 = getelementptr inbounds i8, ptr %1541, i64 16
  %1546 = getelementptr inbounds i8, ptr %1542, i64 32
  %1547 = load <2 x i64>, ptr %1546, align 1, !tbaa !31
  store <2 x i64> %1547, ptr %1545, align 1, !tbaa !31
  %1548 = getelementptr inbounds i8, ptr %1541, i64 32
  %1549 = icmp ult ptr %1548, %1535
  br i1 %1549, label %1540, label %1550, !llvm.loop !39

1550:                                             ; preds = %1540, %1533, %1530
  %1551 = phi ptr [ %944, %1533 ], [ %959, %1530 ], [ %944, %1540 ]
  %1552 = phi ptr [ %1535, %1533 ], [ %1506, %1530 ], [ %1535, %1540 ]
  %1553 = icmp ult ptr %1551, %1504
  br i1 %1553, label %1554, label %1651

1554:                                             ; preds = %1550
  %1555 = ptrtoint ptr %1552 to i64
  %1556 = ptrtoint ptr %1551 to i64
  %1557 = sub i64 %1531, %1556
  %1558 = getelementptr i8, ptr %1551, i64 %1557
  %1559 = icmp ult i64 %1557, 8
  %1560 = sub i64 %1555, %1556
  %1561 = icmp ult i64 %1560, 32
  %1562 = select i1 %1559, i1 true, i1 %1561
  br i1 %1562, label %1598, label %1563

1563:                                             ; preds = %1554
  %1564 = icmp ult i64 %1557, 32
  br i1 %1564, label %1584, label %1565

1565:                                             ; preds = %1563
  %1566 = and i64 %1557, -32
  br label %1567

1567:                                             ; preds = %1567, %1565
  %1568 = phi i64 [ 0, %1565 ], [ %1575, %1567 ]
  %1569 = getelementptr i8, ptr %1552, i64 %1568
  %1570 = getelementptr i8, ptr %1551, i64 %1568
  %1571 = getelementptr i8, ptr %1570, i64 16
  %1572 = load <16 x i8>, ptr %1570, align 1, !tbaa !31
  %1573 = load <16 x i8>, ptr %1571, align 1, !tbaa !31
  %1574 = getelementptr i8, ptr %1569, i64 16
  store <16 x i8> %1572, ptr %1569, align 1, !tbaa !31
  store <16 x i8> %1573, ptr %1574, align 1, !tbaa !31
  %1575 = add nuw i64 %1568, 32
  %1576 = icmp eq i64 %1575, %1566
  br i1 %1576, label %1577, label %1567, !llvm.loop !111

1577:                                             ; preds = %1567
  %1578 = icmp eq i64 %1557, %1566
  br i1 %1578, label %1651, label %1579

1579:                                             ; preds = %1577
  %1580 = getelementptr i8, ptr %1551, i64 %1566
  %1581 = getelementptr i8, ptr %1552, i64 %1566
  %1582 = and i64 %1557, 24
  %1583 = icmp eq i64 %1582, 0
  br i1 %1583, label %1598, label %1584

1584:                                             ; preds = %1563, %1579
  %1585 = phi i64 [ %1566, %1579 ], [ 0, %1563 ]
  %1586 = and i64 %1557, -8
  %1587 = getelementptr i8, ptr %1552, i64 %1586
  %1588 = getelementptr i8, ptr %1551, i64 %1586
  br label %1589

1589:                                             ; preds = %1589, %1584
  %1590 = phi i64 [ %1585, %1584 ], [ %1594, %1589 ]
  %1591 = getelementptr i8, ptr %1552, i64 %1590
  %1592 = getelementptr i8, ptr %1551, i64 %1590
  %1593 = load <8 x i8>, ptr %1592, align 1, !tbaa !31
  store <8 x i8> %1593, ptr %1591, align 1, !tbaa !31
  %1594 = add nuw i64 %1590, 8
  %1595 = icmp eq i64 %1594, %1586
  br i1 %1595, label %1596, label %1589, !llvm.loop !112

1596:                                             ; preds = %1589
  %1597 = icmp eq i64 %1557, %1586
  br i1 %1597, label %1651, label %1598

1598:                                             ; preds = %1554, %1579, %1596
  %1599 = phi ptr [ %1552, %1554 ], [ %1581, %1579 ], [ %1587, %1596 ]
  %1600 = phi ptr [ %1551, %1554 ], [ %1580, %1579 ], [ %1588, %1596 ]
  %1601 = ptrtoint ptr %1600 to i64
  %1602 = sub i64 %1498, %1601
  %1603 = and i64 %1602, 7
  %1604 = icmp eq i64 %1603, 0
  br i1 %1604, label %1614, label %1605

1605:                                             ; preds = %1598, %1605
  %1606 = phi ptr [ %1611, %1605 ], [ %1599, %1598 ]
  %1607 = phi ptr [ %1609, %1605 ], [ %1600, %1598 ]
  %1608 = phi i64 [ %1612, %1605 ], [ 0, %1598 ]
  %1609 = getelementptr inbounds i8, ptr %1607, i64 1
  %1610 = load i8, ptr %1607, align 1, !tbaa !31
  %1611 = getelementptr inbounds i8, ptr %1606, i64 1
  store i8 %1610, ptr %1606, align 1, !tbaa !31
  %1612 = add i64 %1608, 1
  %1613 = icmp eq i64 %1612, %1603
  br i1 %1613, label %1614, label %1605, !llvm.loop !113

1614:                                             ; preds = %1605, %1598
  %1615 = phi ptr [ %1599, %1598 ], [ %1611, %1605 ]
  %1616 = phi ptr [ %1600, %1598 ], [ %1609, %1605 ]
  %1617 = sub i64 %1601, %1498
  %1618 = icmp ugt i64 %1617, -8
  br i1 %1618, label %1651, label %1619

1619:                                             ; preds = %1614, %1619
  %1620 = phi ptr [ %1645, %1619 ], [ %1615, %1614 ]
  %1621 = phi ptr [ %1643, %1619 ], [ %1616, %1614 ]
  %1622 = getelementptr inbounds i8, ptr %1621, i64 1
  %1623 = load i8, ptr %1621, align 1, !tbaa !31
  %1624 = getelementptr inbounds i8, ptr %1620, i64 1
  store i8 %1623, ptr %1620, align 1, !tbaa !31
  %1625 = getelementptr inbounds i8, ptr %1621, i64 2
  %1626 = load i8, ptr %1622, align 1, !tbaa !31
  %1627 = getelementptr inbounds i8, ptr %1620, i64 2
  store i8 %1626, ptr %1624, align 1, !tbaa !31
  %1628 = getelementptr inbounds i8, ptr %1621, i64 3
  %1629 = load i8, ptr %1625, align 1, !tbaa !31
  %1630 = getelementptr inbounds i8, ptr %1620, i64 3
  store i8 %1629, ptr %1627, align 1, !tbaa !31
  %1631 = getelementptr inbounds i8, ptr %1621, i64 4
  %1632 = load i8, ptr %1628, align 1, !tbaa !31
  %1633 = getelementptr inbounds i8, ptr %1620, i64 4
  store i8 %1632, ptr %1630, align 1, !tbaa !31
  %1634 = getelementptr inbounds i8, ptr %1621, i64 5
  %1635 = load i8, ptr %1631, align 1, !tbaa !31
  %1636 = getelementptr inbounds i8, ptr %1620, i64 5
  store i8 %1635, ptr %1633, align 1, !tbaa !31
  %1637 = getelementptr inbounds i8, ptr %1621, i64 6
  %1638 = load i8, ptr %1634, align 1, !tbaa !31
  %1639 = getelementptr inbounds i8, ptr %1620, i64 6
  store i8 %1638, ptr %1636, align 1, !tbaa !31
  %1640 = getelementptr inbounds i8, ptr %1621, i64 7
  %1641 = load i8, ptr %1637, align 1, !tbaa !31
  %1642 = getelementptr inbounds i8, ptr %1620, i64 7
  store i8 %1641, ptr %1639, align 1, !tbaa !31
  %1643 = getelementptr inbounds i8, ptr %1621, i64 8
  %1644 = load i8, ptr %1640, align 1, !tbaa !31
  %1645 = getelementptr inbounds i8, ptr %1620, i64 8
  store i8 %1644, ptr %1642, align 1, !tbaa !31
  %1646 = icmp eq ptr %1643, %1558
  br i1 %1646, label %1651, label %1619, !llvm.loop !114

1647:                                             ; preds = %1510, %1507
  %1648 = load ptr, ptr %945, align 8, !tbaa !37
  %1649 = getelementptr inbounds i8, ptr %1648, i64 %1502
  store ptr %1649, ptr %945, align 8, !tbaa !37
  %1650 = load ptr, ptr %948, align 8, !tbaa !47
  br label %1663

1651:                                             ; preds = %1520, %1614, %1619, %1577, %1596, %1550
  %1652 = load ptr, ptr %945, align 8, !tbaa !37
  %1653 = getelementptr inbounds i8, ptr %1652, i64 %1502
  store ptr %1653, ptr %945, align 8, !tbaa !37
  %1654 = icmp ugt i64 %1502, 65535
  %1655 = load ptr, ptr %948, align 8, !tbaa !47
  br i1 %1654, label %1656, label %1663, !prof !48

1656:                                             ; preds = %1651
  store i32 1, ptr %947, align 8, !tbaa !49
  %1657 = load ptr, ptr %1, align 8, !tbaa !50
  %1658 = ptrtoint ptr %1655 to i64
  %1659 = ptrtoint ptr %1657 to i64
  %1660 = sub i64 %1658, %1659
  %1661 = lshr exact i64 %1660, 3
  %1662 = trunc i64 %1661 to i32
  store i32 %1662, ptr %949, align 4, !tbaa !51
  br label %1663

1663:                                             ; preds = %1656, %1651, %1647
  %1664 = phi ptr [ %1650, %1647 ], [ %1655, %1656 ], [ %1655, %1651 ]
  %1665 = trunc i64 %1502 to i16
  %1666 = getelementptr inbounds %struct.SeqDef_s, ptr %1664, i64 0, i32 1
  store i16 %1665, ptr %1666, align 4, !tbaa !52
  store i32 %1503, ptr %1664, align 4, !tbaa !54
  %1667 = add i64 %1499, -3
  %1668 = icmp ugt i64 %1667, 65535
  br i1 %1668, label %1683, label %1696, !prof !55

1669:                                             ; preds = %1401, %1396
  %1670 = icmp uge ptr %977, %972
  %1671 = zext i1 %1670 to i64
  %1672 = add i64 %973, %1671
  %1673 = getelementptr inbounds i8, ptr %977, i64 %1672
  %1674 = icmp ugt ptr %1673, %25
  br i1 %1674, label %3504, label %1675

1675:                                             ; preds = %1669
  %1676 = select i1 %1670, i64 256, i64 0
  %1677 = getelementptr inbounds i8, ptr %972, i64 %1676
  %1678 = lshr i64 %993, 8
  %1679 = getelementptr inbounds i32, ptr %32, i64 %1678
  %1680 = load i32, ptr %1679, align 4, !tbaa !20
  %1681 = zext i32 %1680 to i64
  %1682 = xor i64 %993, %1681
  br label %971

1683:                                             ; preds = %1663, %1390, %1179
  %1684 = phi ptr [ %1180, %1179 ], [ %1391, %1390 ], [ %1664, %1663 ]
  %1685 = phi i64 [ %1183, %1179 ], [ %1394, %1390 ], [ %1667, %1663 ]
  %1686 = phi i64 [ %1015, %1179 ], [ %1226, %1390 ], [ %1499, %1663 ]
  %1687 = phi i32 [ %961, %1179 ], [ %960, %1390 ], [ %960, %1663 ]
  %1688 = phi i32 [ %960, %1179 ], [ %1200, %1390 ], [ %1406, %1663 ]
  %1689 = phi ptr [ %1010, %1179 ], [ %1227, %1390 ], [ %1500, %1663 ]
  store i32 2, ptr %947, align 8, !tbaa !49
  %1690 = load ptr, ptr %1, align 8, !tbaa !50
  %1691 = ptrtoint ptr %1684 to i64
  %1692 = ptrtoint ptr %1690 to i64
  %1693 = sub i64 %1691, %1692
  %1694 = lshr exact i64 %1693, 3
  %1695 = trunc i64 %1694 to i32
  store i32 %1695, ptr %949, align 4, !tbaa !51
  br label %1696

1696:                                             ; preds = %1683, %1663, %1390, %1179
  %1697 = phi i64 [ %1183, %1179 ], [ %1394, %1390 ], [ %1667, %1663 ], [ %1685, %1683 ]
  %1698 = phi ptr [ %1180, %1179 ], [ %1391, %1390 ], [ %1664, %1663 ], [ %1684, %1683 ]
  %1699 = phi i64 [ %1015, %1179 ], [ %1226, %1390 ], [ %1499, %1663 ], [ %1686, %1683 ]
  %1700 = phi i32 [ %961, %1179 ], [ %960, %1390 ], [ %960, %1663 ], [ %1687, %1683 ]
  %1701 = phi i32 [ %960, %1179 ], [ %1200, %1390 ], [ %1406, %1663 ], [ %1688, %1683 ]
  %1702 = phi ptr [ %1010, %1179 ], [ %1227, %1390 ], [ %1500, %1663 ], [ %1689, %1683 ]
  %1703 = trunc i64 %1697 to i16
  %1704 = getelementptr inbounds %struct.SeqDef_s, ptr %1698, i64 0, i32 2
  store i16 %1703, ptr %1704, align 2, !tbaa !56
  %1705 = getelementptr inbounds %struct.SeqDef_s, ptr %1698, i64 1
  store ptr %1705, ptr %948, align 8, !tbaa !47
  %1706 = getelementptr inbounds i8, ptr %1702, i64 %1699
  %1707 = icmp ugt ptr %1706, %25
  br i1 %1707, label %1776, label %1708

1708:                                             ; preds = %1696
  %1709 = add i32 %986, 2
  %1710 = and i64 %985, 4294967295
  %1711 = getelementptr inbounds i8, ptr %932, i64 %1710
  %1712 = load i64, ptr %1711, align 1, !tbaa !19
  %1713 = mul i64 %1712, -3523014627271114752
  %1714 = lshr i64 %1713, %941
  %1715 = getelementptr inbounds i32, ptr %9, i64 %1714
  store i32 %1709, ptr %1715, align 4, !tbaa !20
  %1716 = getelementptr inbounds i8, ptr %1706, i64 -2
  %1717 = ptrtoint ptr %1716 to i64
  %1718 = sub i64 %1717, %54
  %1719 = trunc i64 %1718 to i32
  %1720 = load i64, ptr %1716, align 1, !tbaa !19
  %1721 = mul i64 %1720, -3523014627271114752
  %1722 = lshr i64 %1721, %941
  %1723 = getelementptr inbounds i32, ptr %9, i64 %1722
  store i32 %1719, ptr %1723, align 4, !tbaa !20
  br label %1724

1724:                                             ; preds = %1766, %1708
  %1725 = phi ptr [ %1705, %1708 ], [ %1769, %1766 ]
  %1726 = phi ptr [ %1706, %1708 ], [ %1774, %1766 ]
  %1727 = phi i32 [ %1701, %1708 ], [ %1728, %1766 ]
  %1728 = phi i32 [ %1700, %1708 ], [ %1727, %1766 ]
  %1729 = ptrtoint ptr %1726 to i64
  %1730 = sub i64 %1729, %54
  %1731 = trunc i64 %1730 to i32
  %1732 = sub i32 %1731, %1728
  %1733 = icmp ult i32 %1732, %21
  %1734 = zext i32 %1732 to i64
  %1735 = select i1 %1733, ptr %955, ptr %18
  %1736 = getelementptr inbounds i8, ptr %1735, i64 %1734
  %1737 = sub i32 %1732, %21
  %1738 = icmp ugt i32 %1737, -4
  br i1 %1738, label %1776, label %1739

1739:                                             ; preds = %1724
  %1740 = load i32, ptr %1736, align 1, !tbaa !20
  %1741 = load i32, ptr %1726, align 1, !tbaa !20
  %1742 = icmp eq i32 %1740, %1741
  br i1 %1742, label %1743, label %1776

1743:                                             ; preds = %1739
  %1744 = select i1 %1733, ptr %39, ptr %24
  %1745 = getelementptr inbounds i8, ptr %1726, i64 4
  %1746 = getelementptr inbounds i8, ptr %1736, i64 4
  %1747 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1745, ptr noundef nonnull %1746, ptr noundef %24, ptr noundef %1744, ptr noundef %23)
  %1748 = add i64 %1747, 4
  %1749 = icmp ugt ptr %1726, %944
  br i1 %1749, label %1754, label %1750

1750:                                             ; preds = %1743
  %1751 = load ptr, ptr %945, align 8, !tbaa !37
  %1752 = load <2 x i64>, ptr %1726, align 1, !tbaa !31
  store <2 x i64> %1752, ptr %1751, align 1, !tbaa !31
  %1753 = load ptr, ptr %948, align 8, !tbaa !47
  br label %1754

1754:                                             ; preds = %1750, %1743
  %1755 = phi ptr [ %1725, %1743 ], [ %1753, %1750 ]
  %1756 = getelementptr inbounds %struct.SeqDef_s, ptr %1755, i64 0, i32 1
  store i16 0, ptr %1756, align 4, !tbaa !52
  store i32 1, ptr %1755, align 4, !tbaa !54
  %1757 = add i64 %1747, 1
  %1758 = icmp ugt i64 %1757, 65535
  br i1 %1758, label %1759, label %1766, !prof !55

1759:                                             ; preds = %1754
  store i32 2, ptr %947, align 8, !tbaa !49
  %1760 = load ptr, ptr %1, align 8, !tbaa !50
  %1761 = ptrtoint ptr %1755 to i64
  %1762 = ptrtoint ptr %1760 to i64
  %1763 = sub i64 %1761, %1762
  %1764 = lshr exact i64 %1763, 3
  %1765 = trunc i64 %1764 to i32
  store i32 %1765, ptr %949, align 4, !tbaa !51
  br label %1766

1766:                                             ; preds = %1759, %1754
  %1767 = trunc i64 %1757 to i16
  %1768 = getelementptr inbounds %struct.SeqDef_s, ptr %1755, i64 0, i32 2
  store i16 %1767, ptr %1768, align 2, !tbaa !56
  %1769 = getelementptr inbounds %struct.SeqDef_s, ptr %1755, i64 1
  store ptr %1769, ptr %948, align 8, !tbaa !47
  %1770 = load i64, ptr %1726, align 1, !tbaa !19
  %1771 = mul i64 %1770, -3523014627271114752
  %1772 = lshr i64 %1771, %941
  %1773 = getelementptr inbounds i32, ptr %9, i64 %1772
  store i32 %1731, ptr %1773, align 4, !tbaa !20
  %1774 = getelementptr inbounds i8, ptr %1726, i64 %1748
  %1775 = icmp ugt ptr %1774, %25
  br i1 %1775, label %1776, label %1724

1776:                                             ; preds = %1766, %1739, %1724, %1696
  %1777 = phi i32 [ %1700, %1696 ], [ %1728, %1724 ], [ %1728, %1739 ], [ %1727, %1766 ]
  %1778 = phi i32 [ %1701, %1696 ], [ %1727, %1724 ], [ %1727, %1739 ], [ %1728, %1766 ]
  %1779 = phi ptr [ %1706, %1696 ], [ %1726, %1724 ], [ %1726, %1739 ], [ %1774, %1766 ]
  %1780 = getelementptr inbounds i8, ptr %1779, i64 %19
  %1781 = icmp ugt ptr %1780, %25
  br i1 %1781, label %3504, label %956

1782:                                             ; preds = %5
  br i1 %57, label %1792, label %1783

1783:                                             ; preds = %1782
  %1784 = zext nneg i32 %53 to i64
  %1785 = shl i64 4, %1784
  %1786 = icmp ugt i32 %53, 61
  br i1 %1786, label %1792, label %1787

1787:                                             ; preds = %1783, %1787
  %1788 = phi i64 [ %1790, %1787 ], [ 0, %1783 ]
  %1789 = getelementptr inbounds i8, ptr %32, i64 %1788
  tail call void @llvm.prefetch.p0(ptr %1789, i32 0, i32 2, i32 1)
  %1790 = add i64 %1788, 64
  %1791 = icmp ult i64 %1790, %1785
  br i1 %1791, label %1787, label %1792, !llvm.loop !88

1792:                                             ; preds = %1787, %1783, %1782
  %1793 = getelementptr inbounds i8, ptr %18, i64 2
  %1794 = getelementptr inbounds i8, ptr %3, i64 %19
  %1795 = icmp ugt ptr %1794, %25
  br i1 %1795, label %3504, label %1796

1796:                                             ; preds = %1792
  %1797 = and i64 %51, 4294967295
  %1798 = icmp eq i64 %1797, 0
  %1799 = zext i1 %1798 to i64
  %1800 = getelementptr inbounds i8, ptr %3, i64 %1799
  %1801 = sub i32 64, %11
  %1802 = zext nneg i32 %1801 to i64
  %1803 = sub i32 56, %53
  %1804 = zext nneg i32 %1803 to i64
  %1805 = getelementptr inbounds i8, ptr %24, i64 -32
  %1806 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %1807 = ptrtoint ptr %1805 to i64
  %1808 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %1809 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %1810 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  %1811 = getelementptr inbounds i8, ptr %24, i64 -7
  %1812 = getelementptr inbounds i8, ptr %24, i64 -3
  %1813 = getelementptr inbounds i8, ptr %24, i64 -1
  %1814 = zext i32 %44 to i64
  %1815 = sub nsw i64 0, %1814
  %1816 = getelementptr inbounds i8, ptr %36, i64 %1815
  br label %1817

1817:                                             ; preds = %2637, %1796
  %1818 = phi ptr [ %1794, %1796 ], [ %2641, %2637 ]
  %1819 = phi ptr [ %1800, %1796 ], [ %2640, %2637 ]
  %1820 = phi ptr [ %3, %1796 ], [ %2640, %2637 ]
  %1821 = phi i32 [ %26, %1796 ], [ %2639, %2637 ]
  %1822 = phi i32 [ %28, %1796 ], [ %2638, %2637 ]
  %1823 = load i64, ptr %1819, align 1, !tbaa !19
  %1824 = mul i64 %1823, -3523014627193847808
  %1825 = lshr i64 %1824, %1804
  %1826 = lshr i64 %1825, 8
  %1827 = getelementptr inbounds i32, ptr %32, i64 %1826
  %1828 = load i32, ptr %1827, align 4, !tbaa !20
  %1829 = zext i32 %1828 to i64
  %1830 = xor i64 %1825, %1829
  %1831 = getelementptr inbounds i8, ptr %1819, i64 256
  br label %1832

1832:                                             ; preds = %2536, %1817
  %1833 = phi ptr [ %1831, %1817 ], [ %2538, %2536 ]
  %1834 = phi i64 [ %19, %1817 ], [ %2533, %2536 ]
  %1835 = phi i64 [ %1830, %1817 ], [ %2543, %2536 ]
  %1836 = phi i32 [ %1828, %1817 ], [ %2541, %2536 ]
  %1837 = phi i64 [ %1824, %1817 ], [ %1853, %2536 ]
  %1838 = phi ptr [ %1818, %1817 ], [ %2534, %2536 ]
  %1839 = phi ptr [ %1819, %1817 ], [ %1838, %2536 ]
  %1840 = lshr i64 %1837, %1802
  %1841 = getelementptr inbounds i32, ptr %9, i64 %1840
  %1842 = load i32, ptr %1841, align 4, !tbaa !20
  %1843 = and i64 %1835, 255
  %1844 = icmp eq i64 %1843, 0
  %1845 = ptrtoint ptr %1839 to i64
  %1846 = sub i64 %1845, %54
  %1847 = trunc i64 %1846 to i32
  %1848 = zext i32 %1842 to i64
  %1849 = getelementptr inbounds i8, ptr %18, i64 %1848
  %1850 = sub i32 %1847, %1821
  %1851 = add i32 %1850, 1
  %1852 = load i64, ptr %1838, align 1, !tbaa !19
  %1853 = mul i64 %1852, -3523014627193847808
  %1854 = lshr i64 %1853, %1804
  store i32 %1847, ptr %1841, align 4, !tbaa !20
  %1855 = sub i32 %1851, %21
  %1856 = icmp ugt i32 %1855, -4
  br i1 %1856, label %2046, label %1857

1857:                                             ; preds = %1832
  %1858 = icmp ult i32 %1851, %21
  %1859 = sub i32 %1851, %44
  %1860 = zext i32 %1859 to i64
  %1861 = getelementptr inbounds i8, ptr %36, i64 %1860
  %1862 = zext i32 %1851 to i64
  %1863 = getelementptr inbounds i8, ptr %18, i64 %1862
  %1864 = select i1 %1858, ptr %1861, ptr %1863
  %1865 = load i32, ptr %1864, align 1, !tbaa !20
  %1866 = getelementptr inbounds i8, ptr %1839, i64 1
  %1867 = load i32, ptr %1866, align 1, !tbaa !20
  %1868 = icmp eq i32 %1865, %1867
  br i1 %1868, label %1869, label %2046

1869:                                             ; preds = %1857
  %1870 = ptrtoint ptr %1839 to i64
  %1871 = getelementptr inbounds i8, ptr %1839, i64 1
  %1872 = select i1 %1858, ptr %39, ptr %24
  %1873 = getelementptr inbounds i8, ptr %1839, i64 5
  %1874 = getelementptr inbounds i8, ptr %1864, i64 4
  %1875 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1873, ptr noundef nonnull %1874, ptr noundef %24, ptr noundef %1872, ptr noundef %23)
  %1876 = add i64 %1875, 4
  %1877 = ptrtoint ptr %1871 to i64
  %1878 = ptrtoint ptr %1820 to i64
  %1879 = sub i64 %1877, %1878
  %1880 = getelementptr inbounds i8, ptr %1820, i64 %1879
  %1881 = icmp ugt ptr %1880, %1805
  %1882 = load ptr, ptr %1806, align 8, !tbaa !37
  br i1 %1881, label %1906, label %1883

1883:                                             ; preds = %1869
  %1884 = load <2 x i64>, ptr %1820, align 1, !tbaa !31
  store <2 x i64> %1884, ptr %1882, align 1, !tbaa !31
  %1885 = icmp ugt i64 %1879, 16
  br i1 %1885, label %1886, label %2024

1886:                                             ; preds = %1883
  %1887 = load ptr, ptr %1806, align 8, !tbaa !37
  %1888 = getelementptr inbounds i8, ptr %1887, i64 16
  %1889 = getelementptr inbounds i8, ptr %1820, i64 16
  %1890 = add i64 %1879, -16
  %1891 = getelementptr inbounds i8, ptr %1887, i64 %1879
  %1892 = load <2 x i64>, ptr %1889, align 1, !tbaa !31
  store <2 x i64> %1892, ptr %1888, align 1, !tbaa !31
  %1893 = icmp ult i64 %1890, 17
  br i1 %1893, label %2024, label %1894

1894:                                             ; preds = %1886
  %1895 = getelementptr inbounds i8, ptr %1887, i64 32
  br label %1896

1896:                                             ; preds = %1896, %1894
  %1897 = phi ptr [ %1895, %1894 ], [ %1904, %1896 ]
  %1898 = phi ptr [ %1889, %1894 ], [ %1902, %1896 ]
  %1899 = getelementptr inbounds i8, ptr %1898, i64 16
  %1900 = load <2 x i64>, ptr %1899, align 1, !tbaa !31
  store <2 x i64> %1900, ptr %1897, align 1, !tbaa !31
  %1901 = getelementptr inbounds i8, ptr %1897, i64 16
  %1902 = getelementptr inbounds i8, ptr %1898, i64 32
  %1903 = load <2 x i64>, ptr %1902, align 1, !tbaa !31
  store <2 x i64> %1903, ptr %1901, align 1, !tbaa !31
  %1904 = getelementptr inbounds i8, ptr %1897, i64 32
  %1905 = icmp ult ptr %1904, %1891
  br i1 %1905, label %1896, label %2028, !llvm.loop !39

1906:                                             ; preds = %1869
  %1907 = ptrtoint ptr %1880 to i64
  %1908 = icmp ugt ptr %1820, %1805
  br i1 %1908, label %1926, label %1909

1909:                                             ; preds = %1906
  %1910 = sub i64 %1807, %1878
  %1911 = getelementptr inbounds i8, ptr %1882, i64 %1910
  %1912 = load <2 x i64>, ptr %1820, align 1, !tbaa !31
  store <2 x i64> %1912, ptr %1882, align 1, !tbaa !31
  %1913 = icmp ult i64 %1910, 17
  br i1 %1913, label %1926, label %1914

1914:                                             ; preds = %1909
  %1915 = getelementptr inbounds i8, ptr %1882, i64 16
  br label %1916

1916:                                             ; preds = %1916, %1914
  %1917 = phi ptr [ %1915, %1914 ], [ %1924, %1916 ]
  %1918 = phi ptr [ %1820, %1914 ], [ %1922, %1916 ]
  %1919 = getelementptr inbounds i8, ptr %1918, i64 16
  %1920 = load <2 x i64>, ptr %1919, align 1, !tbaa !31
  store <2 x i64> %1920, ptr %1917, align 1, !tbaa !31
  %1921 = getelementptr inbounds i8, ptr %1917, i64 16
  %1922 = getelementptr inbounds i8, ptr %1918, i64 32
  %1923 = load <2 x i64>, ptr %1922, align 1, !tbaa !31
  store <2 x i64> %1923, ptr %1921, align 1, !tbaa !31
  %1924 = getelementptr inbounds i8, ptr %1917, i64 32
  %1925 = icmp ult ptr %1924, %1911
  br i1 %1925, label %1916, label %1926, !llvm.loop !39

1926:                                             ; preds = %1916, %1909, %1906
  %1927 = phi ptr [ %1805, %1909 ], [ %1820, %1906 ], [ %1805, %1916 ]
  %1928 = phi ptr [ %1911, %1909 ], [ %1882, %1906 ], [ %1911, %1916 ]
  %1929 = icmp ult ptr %1927, %1880
  br i1 %1929, label %1930, label %2028

1930:                                             ; preds = %1926
  %1931 = ptrtoint ptr %1928 to i64
  %1932 = ptrtoint ptr %1927 to i64
  %1933 = sub i64 %1907, %1932
  %1934 = getelementptr i8, ptr %1927, i64 %1933
  %1935 = icmp ult i64 %1933, 8
  %1936 = sub i64 %1931, %1932
  %1937 = icmp ult i64 %1936, 32
  %1938 = select i1 %1935, i1 true, i1 %1937
  br i1 %1938, label %1974, label %1939

1939:                                             ; preds = %1930
  %1940 = icmp ult i64 %1933, 32
  br i1 %1940, label %1960, label %1941

1941:                                             ; preds = %1939
  %1942 = and i64 %1933, -32
  br label %1943

1943:                                             ; preds = %1943, %1941
  %1944 = phi i64 [ 0, %1941 ], [ %1951, %1943 ]
  %1945 = getelementptr i8, ptr %1928, i64 %1944
  %1946 = getelementptr i8, ptr %1927, i64 %1944
  %1947 = getelementptr i8, ptr %1946, i64 16
  %1948 = load <16 x i8>, ptr %1946, align 1, !tbaa !31
  %1949 = load <16 x i8>, ptr %1947, align 1, !tbaa !31
  %1950 = getelementptr i8, ptr %1945, i64 16
  store <16 x i8> %1948, ptr %1945, align 1, !tbaa !31
  store <16 x i8> %1949, ptr %1950, align 1, !tbaa !31
  %1951 = add nuw i64 %1944, 32
  %1952 = icmp eq i64 %1951, %1942
  br i1 %1952, label %1953, label %1943, !llvm.loop !115

1953:                                             ; preds = %1943
  %1954 = icmp eq i64 %1933, %1942
  br i1 %1954, label %2028, label %1955

1955:                                             ; preds = %1953
  %1956 = getelementptr i8, ptr %1927, i64 %1942
  %1957 = getelementptr i8, ptr %1928, i64 %1942
  %1958 = and i64 %1933, 24
  %1959 = icmp eq i64 %1958, 0
  br i1 %1959, label %1974, label %1960

1960:                                             ; preds = %1939, %1955
  %1961 = phi i64 [ %1942, %1955 ], [ 0, %1939 ]
  %1962 = and i64 %1933, -8
  %1963 = getelementptr i8, ptr %1928, i64 %1962
  %1964 = getelementptr i8, ptr %1927, i64 %1962
  br label %1965

1965:                                             ; preds = %1965, %1960
  %1966 = phi i64 [ %1961, %1960 ], [ %1970, %1965 ]
  %1967 = getelementptr i8, ptr %1928, i64 %1966
  %1968 = getelementptr i8, ptr %1927, i64 %1966
  %1969 = load <8 x i8>, ptr %1968, align 1, !tbaa !31
  store <8 x i8> %1969, ptr %1967, align 1, !tbaa !31
  %1970 = add nuw i64 %1966, 8
  %1971 = icmp eq i64 %1970, %1962
  br i1 %1971, label %1972, label %1965, !llvm.loop !116

1972:                                             ; preds = %1965
  %1973 = icmp eq i64 %1933, %1962
  br i1 %1973, label %2028, label %1974

1974:                                             ; preds = %1930, %1955, %1972
  %1975 = phi ptr [ %1928, %1930 ], [ %1957, %1955 ], [ %1963, %1972 ]
  %1976 = phi ptr [ %1927, %1930 ], [ %1956, %1955 ], [ %1964, %1972 ]
  %1977 = ptrtoint ptr %1976 to i64
  %1978 = sub i64 %1870, %1977
  %1979 = add i64 %1978, 1
  %1980 = sub i64 %1870, %1977
  %1981 = and i64 %1979, 7
  %1982 = icmp eq i64 %1981, 0
  br i1 %1982, label %1992, label %1983

1983:                                             ; preds = %1974, %1983
  %1984 = phi ptr [ %1989, %1983 ], [ %1975, %1974 ]
  %1985 = phi ptr [ %1987, %1983 ], [ %1976, %1974 ]
  %1986 = phi i64 [ %1990, %1983 ], [ 0, %1974 ]
  %1987 = getelementptr inbounds i8, ptr %1985, i64 1
  %1988 = load i8, ptr %1985, align 1, !tbaa !31
  %1989 = getelementptr inbounds i8, ptr %1984, i64 1
  store i8 %1988, ptr %1984, align 1, !tbaa !31
  %1990 = add i64 %1986, 1
  %1991 = icmp eq i64 %1990, %1981
  br i1 %1991, label %1992, label %1983, !llvm.loop !117

1992:                                             ; preds = %1983, %1974
  %1993 = phi ptr [ %1975, %1974 ], [ %1989, %1983 ]
  %1994 = phi ptr [ %1976, %1974 ], [ %1987, %1983 ]
  %1995 = icmp ult i64 %1980, 7
  br i1 %1995, label %2028, label %1996

1996:                                             ; preds = %1992, %1996
  %1997 = phi ptr [ %2022, %1996 ], [ %1993, %1992 ]
  %1998 = phi ptr [ %2020, %1996 ], [ %1994, %1992 ]
  %1999 = getelementptr inbounds i8, ptr %1998, i64 1
  %2000 = load i8, ptr %1998, align 1, !tbaa !31
  %2001 = getelementptr inbounds i8, ptr %1997, i64 1
  store i8 %2000, ptr %1997, align 1, !tbaa !31
  %2002 = getelementptr inbounds i8, ptr %1998, i64 2
  %2003 = load i8, ptr %1999, align 1, !tbaa !31
  %2004 = getelementptr inbounds i8, ptr %1997, i64 2
  store i8 %2003, ptr %2001, align 1, !tbaa !31
  %2005 = getelementptr inbounds i8, ptr %1998, i64 3
  %2006 = load i8, ptr %2002, align 1, !tbaa !31
  %2007 = getelementptr inbounds i8, ptr %1997, i64 3
  store i8 %2006, ptr %2004, align 1, !tbaa !31
  %2008 = getelementptr inbounds i8, ptr %1998, i64 4
  %2009 = load i8, ptr %2005, align 1, !tbaa !31
  %2010 = getelementptr inbounds i8, ptr %1997, i64 4
  store i8 %2009, ptr %2007, align 1, !tbaa !31
  %2011 = getelementptr inbounds i8, ptr %1998, i64 5
  %2012 = load i8, ptr %2008, align 1, !tbaa !31
  %2013 = getelementptr inbounds i8, ptr %1997, i64 5
  store i8 %2012, ptr %2010, align 1, !tbaa !31
  %2014 = getelementptr inbounds i8, ptr %1998, i64 6
  %2015 = load i8, ptr %2011, align 1, !tbaa !31
  %2016 = getelementptr inbounds i8, ptr %1997, i64 6
  store i8 %2015, ptr %2013, align 1, !tbaa !31
  %2017 = getelementptr inbounds i8, ptr %1998, i64 7
  %2018 = load i8, ptr %2014, align 1, !tbaa !31
  %2019 = getelementptr inbounds i8, ptr %1997, i64 7
  store i8 %2018, ptr %2016, align 1, !tbaa !31
  %2020 = getelementptr inbounds i8, ptr %1998, i64 8
  %2021 = load i8, ptr %2017, align 1, !tbaa !31
  %2022 = getelementptr inbounds i8, ptr %1997, i64 8
  store i8 %2021, ptr %2019, align 1, !tbaa !31
  %2023 = icmp eq ptr %2020, %1934
  br i1 %2023, label %2028, label %1996, !llvm.loop !118

2024:                                             ; preds = %1886, %1883
  %2025 = load ptr, ptr %1806, align 8, !tbaa !37
  %2026 = getelementptr inbounds i8, ptr %2025, i64 %1879
  store ptr %2026, ptr %1806, align 8, !tbaa !37
  %2027 = load ptr, ptr %1809, align 8, !tbaa !47
  br label %2040

2028:                                             ; preds = %1896, %1992, %1996, %1953, %1972, %1926
  %2029 = load ptr, ptr %1806, align 8, !tbaa !37
  %2030 = getelementptr inbounds i8, ptr %2029, i64 %1879
  store ptr %2030, ptr %1806, align 8, !tbaa !37
  %2031 = icmp ugt i64 %1879, 65535
  %2032 = load ptr, ptr %1809, align 8, !tbaa !47
  br i1 %2031, label %2033, label %2040, !prof !48

2033:                                             ; preds = %2028
  store i32 1, ptr %1808, align 8, !tbaa !49
  %2034 = load ptr, ptr %1, align 8, !tbaa !50
  %2035 = ptrtoint ptr %2032 to i64
  %2036 = ptrtoint ptr %2034 to i64
  %2037 = sub i64 %2035, %2036
  %2038 = lshr exact i64 %2037, 3
  %2039 = trunc i64 %2038 to i32
  store i32 %2039, ptr %1810, align 4, !tbaa !51
  br label %2040

2040:                                             ; preds = %2033, %2028, %2024
  %2041 = phi ptr [ %2027, %2024 ], [ %2032, %2033 ], [ %2032, %2028 ]
  %2042 = trunc i64 %1879 to i16
  %2043 = getelementptr inbounds %struct.SeqDef_s, ptr %2041, i64 0, i32 1
  store i16 %2042, ptr %2043, align 4, !tbaa !52
  store i32 1, ptr %2041, align 4, !tbaa !54
  %2044 = add i64 %1875, 1
  %2045 = icmp ugt i64 %2044, 65535
  br i1 %2045, label %2544, label %2557, !prof !55

2046:                                             ; preds = %1857, %1832
  br i1 %1844, label %2047, label %2257

2047:                                             ; preds = %2046
  %2048 = lshr i32 %1836, 8
  %2049 = icmp ugt i32 %2048, %34
  br i1 %2049, label %2050, label %2257

2050:                                             ; preds = %2047
  %2051 = zext nneg i32 %2048 to i64
  %2052 = getelementptr inbounds i8, ptr %36, i64 %2051
  %2053 = load i32, ptr %2052, align 1, !tbaa !20
  %2054 = load i32, ptr %1839, align 1, !tbaa !20
  %2055 = icmp ne i32 %2053, %2054
  %2056 = icmp ugt i32 %1842, %21
  %2057 = select i1 %2055, i1 true, i1 %2056
  br i1 %2057, label %2257, label %2058

2058:                                             ; preds = %2050
  %2059 = getelementptr inbounds i8, ptr %36, i64 %2051
  %2060 = add i32 %2048, %44
  %2061 = sub i32 %1847, %2060
  %2062 = getelementptr inbounds i8, ptr %1839, i64 4
  %2063 = getelementptr inbounds i8, ptr %2059, i64 4
  %2064 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %2062, ptr noundef nonnull %2063, ptr noundef %24, ptr noundef %39, ptr noundef %23)
  %2065 = add i64 %2064, 4
  %2066 = icmp ugt ptr %1839, %1820
  br i1 %2066, label %2067, label %2085

2067:                                             ; preds = %2058, %2076
  %2068 = phi ptr [ %2071, %2076 ], [ %1839, %2058 ]
  %2069 = phi i64 [ %2077, %2076 ], [ %2065, %2058 ]
  %2070 = phi ptr [ %2073, %2076 ], [ %2059, %2058 ]
  %2071 = getelementptr inbounds i8, ptr %2068, i64 -1
  %2072 = load i8, ptr %2071, align 1, !tbaa !31
  %2073 = getelementptr inbounds i8, ptr %2070, i64 -1
  %2074 = load i8, ptr %2073, align 1, !tbaa !31
  %2075 = icmp eq i8 %2072, %2074
  br i1 %2075, label %2076, label %2081

2076:                                             ; preds = %2067
  %2077 = add i64 %2069, 1
  %2078 = icmp ugt ptr %2071, %1820
  %2079 = icmp ugt ptr %2073, %38
  %2080 = and i1 %2078, %2079
  br i1 %2080, label %2067, label %2081, !llvm.loop !93

2081:                                             ; preds = %2076, %2067
  %2082 = phi i64 [ %2077, %2076 ], [ %2069, %2067 ]
  %2083 = phi ptr [ %2071, %2076 ], [ %2068, %2067 ]
  %2084 = ptrtoint ptr %2083 to i64
  br label %2085

2085:                                             ; preds = %2081, %2058
  %2086 = phi i64 [ %2084, %2081 ], [ %1845, %2058 ]
  %2087 = phi i64 [ %2082, %2081 ], [ %2065, %2058 ]
  %2088 = phi ptr [ %2083, %2081 ], [ %1839, %2058 ]
  %2089 = ptrtoint ptr %1820 to i64
  %2090 = sub i64 %2086, %2089
  %2091 = add i32 %2061, 3
  %2092 = getelementptr inbounds i8, ptr %1820, i64 %2090
  %2093 = icmp ugt ptr %2092, %1805
  %2094 = load ptr, ptr %1806, align 8, !tbaa !37
  br i1 %2093, label %2118, label %2095

2095:                                             ; preds = %2085
  %2096 = load <2 x i64>, ptr %1820, align 1, !tbaa !31
  store <2 x i64> %2096, ptr %2094, align 1, !tbaa !31
  %2097 = icmp ugt i64 %2090, 16
  br i1 %2097, label %2098, label %2235

2098:                                             ; preds = %2095
  %2099 = load ptr, ptr %1806, align 8, !tbaa !37
  %2100 = getelementptr inbounds i8, ptr %2099, i64 16
  %2101 = getelementptr inbounds i8, ptr %1820, i64 16
  %2102 = add i64 %2090, -16
  %2103 = getelementptr inbounds i8, ptr %2099, i64 %2090
  %2104 = load <2 x i64>, ptr %2101, align 1, !tbaa !31
  store <2 x i64> %2104, ptr %2100, align 1, !tbaa !31
  %2105 = icmp ult i64 %2102, 17
  br i1 %2105, label %2235, label %2106

2106:                                             ; preds = %2098
  %2107 = getelementptr inbounds i8, ptr %2099, i64 32
  br label %2108

2108:                                             ; preds = %2108, %2106
  %2109 = phi ptr [ %2107, %2106 ], [ %2116, %2108 ]
  %2110 = phi ptr [ %2101, %2106 ], [ %2114, %2108 ]
  %2111 = getelementptr inbounds i8, ptr %2110, i64 16
  %2112 = load <2 x i64>, ptr %2111, align 1, !tbaa !31
  store <2 x i64> %2112, ptr %2109, align 1, !tbaa !31
  %2113 = getelementptr inbounds i8, ptr %2109, i64 16
  %2114 = getelementptr inbounds i8, ptr %2110, i64 32
  %2115 = load <2 x i64>, ptr %2114, align 1, !tbaa !31
  store <2 x i64> %2115, ptr %2113, align 1, !tbaa !31
  %2116 = getelementptr inbounds i8, ptr %2109, i64 32
  %2117 = icmp ult ptr %2116, %2103
  br i1 %2117, label %2108, label %2239, !llvm.loop !39

2118:                                             ; preds = %2085
  %2119 = ptrtoint ptr %2092 to i64
  %2120 = icmp ugt ptr %1820, %1805
  br i1 %2120, label %2138, label %2121

2121:                                             ; preds = %2118
  %2122 = sub i64 %1807, %2089
  %2123 = getelementptr inbounds i8, ptr %2094, i64 %2122
  %2124 = load <2 x i64>, ptr %1820, align 1, !tbaa !31
  store <2 x i64> %2124, ptr %2094, align 1, !tbaa !31
  %2125 = icmp ult i64 %2122, 17
  br i1 %2125, label %2138, label %2126

2126:                                             ; preds = %2121
  %2127 = getelementptr inbounds i8, ptr %2094, i64 16
  br label %2128

2128:                                             ; preds = %2128, %2126
  %2129 = phi ptr [ %2127, %2126 ], [ %2136, %2128 ]
  %2130 = phi ptr [ %1820, %2126 ], [ %2134, %2128 ]
  %2131 = getelementptr inbounds i8, ptr %2130, i64 16
  %2132 = load <2 x i64>, ptr %2131, align 1, !tbaa !31
  store <2 x i64> %2132, ptr %2129, align 1, !tbaa !31
  %2133 = getelementptr inbounds i8, ptr %2129, i64 16
  %2134 = getelementptr inbounds i8, ptr %2130, i64 32
  %2135 = load <2 x i64>, ptr %2134, align 1, !tbaa !31
  store <2 x i64> %2135, ptr %2133, align 1, !tbaa !31
  %2136 = getelementptr inbounds i8, ptr %2129, i64 32
  %2137 = icmp ult ptr %2136, %2123
  br i1 %2137, label %2128, label %2138, !llvm.loop !39

2138:                                             ; preds = %2128, %2121, %2118
  %2139 = phi ptr [ %1805, %2121 ], [ %1820, %2118 ], [ %1805, %2128 ]
  %2140 = phi ptr [ %2123, %2121 ], [ %2094, %2118 ], [ %2123, %2128 ]
  %2141 = icmp ult ptr %2139, %2092
  br i1 %2141, label %2142, label %2239

2142:                                             ; preds = %2138
  %2143 = ptrtoint ptr %2140 to i64
  %2144 = ptrtoint ptr %2139 to i64
  %2145 = sub i64 %2119, %2144
  %2146 = getelementptr i8, ptr %2139, i64 %2145
  %2147 = icmp ult i64 %2145, 8
  %2148 = sub i64 %2143, %2144
  %2149 = icmp ult i64 %2148, 32
  %2150 = select i1 %2147, i1 true, i1 %2149
  br i1 %2150, label %2186, label %2151

2151:                                             ; preds = %2142
  %2152 = icmp ult i64 %2145, 32
  br i1 %2152, label %2172, label %2153

2153:                                             ; preds = %2151
  %2154 = and i64 %2145, -32
  br label %2155

2155:                                             ; preds = %2155, %2153
  %2156 = phi i64 [ 0, %2153 ], [ %2163, %2155 ]
  %2157 = getelementptr i8, ptr %2140, i64 %2156
  %2158 = getelementptr i8, ptr %2139, i64 %2156
  %2159 = getelementptr i8, ptr %2158, i64 16
  %2160 = load <16 x i8>, ptr %2158, align 1, !tbaa !31
  %2161 = load <16 x i8>, ptr %2159, align 1, !tbaa !31
  %2162 = getelementptr i8, ptr %2157, i64 16
  store <16 x i8> %2160, ptr %2157, align 1, !tbaa !31
  store <16 x i8> %2161, ptr %2162, align 1, !tbaa !31
  %2163 = add nuw i64 %2156, 32
  %2164 = icmp eq i64 %2163, %2154
  br i1 %2164, label %2165, label %2155, !llvm.loop !119

2165:                                             ; preds = %2155
  %2166 = icmp eq i64 %2145, %2154
  br i1 %2166, label %2239, label %2167

2167:                                             ; preds = %2165
  %2168 = getelementptr i8, ptr %2139, i64 %2154
  %2169 = getelementptr i8, ptr %2140, i64 %2154
  %2170 = and i64 %2145, 24
  %2171 = icmp eq i64 %2170, 0
  br i1 %2171, label %2186, label %2172

2172:                                             ; preds = %2151, %2167
  %2173 = phi i64 [ %2154, %2167 ], [ 0, %2151 ]
  %2174 = and i64 %2145, -8
  %2175 = getelementptr i8, ptr %2140, i64 %2174
  %2176 = getelementptr i8, ptr %2139, i64 %2174
  br label %2177

2177:                                             ; preds = %2177, %2172
  %2178 = phi i64 [ %2173, %2172 ], [ %2182, %2177 ]
  %2179 = getelementptr i8, ptr %2140, i64 %2178
  %2180 = getelementptr i8, ptr %2139, i64 %2178
  %2181 = load <8 x i8>, ptr %2180, align 1, !tbaa !31
  store <8 x i8> %2181, ptr %2179, align 1, !tbaa !31
  %2182 = add nuw i64 %2178, 8
  %2183 = icmp eq i64 %2182, %2174
  br i1 %2183, label %2184, label %2177, !llvm.loop !120

2184:                                             ; preds = %2177
  %2185 = icmp eq i64 %2145, %2174
  br i1 %2185, label %2239, label %2186

2186:                                             ; preds = %2142, %2167, %2184
  %2187 = phi ptr [ %2140, %2142 ], [ %2169, %2167 ], [ %2175, %2184 ]
  %2188 = phi ptr [ %2139, %2142 ], [ %2168, %2167 ], [ %2176, %2184 ]
  %2189 = ptrtoint ptr %2188 to i64
  %2190 = sub i64 %2086, %2189
  %2191 = and i64 %2190, 7
  %2192 = icmp eq i64 %2191, 0
  br i1 %2192, label %2202, label %2193

2193:                                             ; preds = %2186, %2193
  %2194 = phi ptr [ %2199, %2193 ], [ %2187, %2186 ]
  %2195 = phi ptr [ %2197, %2193 ], [ %2188, %2186 ]
  %2196 = phi i64 [ %2200, %2193 ], [ 0, %2186 ]
  %2197 = getelementptr inbounds i8, ptr %2195, i64 1
  %2198 = load i8, ptr %2195, align 1, !tbaa !31
  %2199 = getelementptr inbounds i8, ptr %2194, i64 1
  store i8 %2198, ptr %2194, align 1, !tbaa !31
  %2200 = add i64 %2196, 1
  %2201 = icmp eq i64 %2200, %2191
  br i1 %2201, label %2202, label %2193, !llvm.loop !121

2202:                                             ; preds = %2193, %2186
  %2203 = phi ptr [ %2187, %2186 ], [ %2199, %2193 ]
  %2204 = phi ptr [ %2188, %2186 ], [ %2197, %2193 ]
  %2205 = sub i64 %2189, %2086
  %2206 = icmp ugt i64 %2205, -8
  br i1 %2206, label %2239, label %2207

2207:                                             ; preds = %2202, %2207
  %2208 = phi ptr [ %2233, %2207 ], [ %2203, %2202 ]
  %2209 = phi ptr [ %2231, %2207 ], [ %2204, %2202 ]
  %2210 = getelementptr inbounds i8, ptr %2209, i64 1
  %2211 = load i8, ptr %2209, align 1, !tbaa !31
  %2212 = getelementptr inbounds i8, ptr %2208, i64 1
  store i8 %2211, ptr %2208, align 1, !tbaa !31
  %2213 = getelementptr inbounds i8, ptr %2209, i64 2
  %2214 = load i8, ptr %2210, align 1, !tbaa !31
  %2215 = getelementptr inbounds i8, ptr %2208, i64 2
  store i8 %2214, ptr %2212, align 1, !tbaa !31
  %2216 = getelementptr inbounds i8, ptr %2209, i64 3
  %2217 = load i8, ptr %2213, align 1, !tbaa !31
  %2218 = getelementptr inbounds i8, ptr %2208, i64 3
  store i8 %2217, ptr %2215, align 1, !tbaa !31
  %2219 = getelementptr inbounds i8, ptr %2209, i64 4
  %2220 = load i8, ptr %2216, align 1, !tbaa !31
  %2221 = getelementptr inbounds i8, ptr %2208, i64 4
  store i8 %2220, ptr %2218, align 1, !tbaa !31
  %2222 = getelementptr inbounds i8, ptr %2209, i64 5
  %2223 = load i8, ptr %2219, align 1, !tbaa !31
  %2224 = getelementptr inbounds i8, ptr %2208, i64 5
  store i8 %2223, ptr %2221, align 1, !tbaa !31
  %2225 = getelementptr inbounds i8, ptr %2209, i64 6
  %2226 = load i8, ptr %2222, align 1, !tbaa !31
  %2227 = getelementptr inbounds i8, ptr %2208, i64 6
  store i8 %2226, ptr %2224, align 1, !tbaa !31
  %2228 = getelementptr inbounds i8, ptr %2209, i64 7
  %2229 = load i8, ptr %2225, align 1, !tbaa !31
  %2230 = getelementptr inbounds i8, ptr %2208, i64 7
  store i8 %2229, ptr %2227, align 1, !tbaa !31
  %2231 = getelementptr inbounds i8, ptr %2209, i64 8
  %2232 = load i8, ptr %2228, align 1, !tbaa !31
  %2233 = getelementptr inbounds i8, ptr %2208, i64 8
  store i8 %2232, ptr %2230, align 1, !tbaa !31
  %2234 = icmp eq ptr %2231, %2146
  br i1 %2234, label %2239, label %2207, !llvm.loop !122

2235:                                             ; preds = %2098, %2095
  %2236 = load ptr, ptr %1806, align 8, !tbaa !37
  %2237 = getelementptr inbounds i8, ptr %2236, i64 %2090
  store ptr %2237, ptr %1806, align 8, !tbaa !37
  %2238 = load ptr, ptr %1809, align 8, !tbaa !47
  br label %2251

2239:                                             ; preds = %2108, %2202, %2207, %2165, %2184, %2138
  %2240 = load ptr, ptr %1806, align 8, !tbaa !37
  %2241 = getelementptr inbounds i8, ptr %2240, i64 %2090
  store ptr %2241, ptr %1806, align 8, !tbaa !37
  %2242 = icmp ugt i64 %2090, 65535
  %2243 = load ptr, ptr %1809, align 8, !tbaa !47
  br i1 %2242, label %2244, label %2251, !prof !48

2244:                                             ; preds = %2239
  store i32 1, ptr %1808, align 8, !tbaa !49
  %2245 = load ptr, ptr %1, align 8, !tbaa !50
  %2246 = ptrtoint ptr %2243 to i64
  %2247 = ptrtoint ptr %2245 to i64
  %2248 = sub i64 %2246, %2247
  %2249 = lshr exact i64 %2248, 3
  %2250 = trunc i64 %2249 to i32
  store i32 %2250, ptr %1810, align 4, !tbaa !51
  br label %2251

2251:                                             ; preds = %2244, %2239, %2235
  %2252 = phi ptr [ %2238, %2235 ], [ %2243, %2244 ], [ %2243, %2239 ]
  %2253 = trunc i64 %2090 to i16
  %2254 = getelementptr inbounds %struct.SeqDef_s, ptr %2252, i64 0, i32 1
  store i16 %2253, ptr %2254, align 4, !tbaa !52
  store i32 %2091, ptr %2252, align 4, !tbaa !54
  %2255 = add i64 %2087, -3
  %2256 = icmp ugt i64 %2255, 65535
  br i1 %2256, label %2544, label %2557, !prof !55

2257:                                             ; preds = %2050, %2047, %2046
  %2258 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1842, i32 %21, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr %1849) #7, !srcloc !29
  %2259 = load i32, ptr %1839, align 1, !tbaa !20
  %2260 = load i32, ptr %2258, align 1, !tbaa !20
  %2261 = icmp eq i32 %2259, %2260
  br i1 %2261, label %2262, label %2530

2262:                                             ; preds = %2257
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !30
  %2263 = icmp ult i32 %1842, %21
  br i1 %2263, label %2530, label %2264

2264:                                             ; preds = %2262
  %2265 = ptrtoint ptr %1849 to i64
  %2266 = sub i64 %1845, %2265
  %2267 = trunc i64 %2266 to i32
  %2268 = getelementptr inbounds i8, ptr %1839, i64 4
  %2269 = getelementptr inbounds i8, ptr %1849, i64 4
  %2270 = icmp ugt ptr %1811, %2268
  br i1 %2270, label %2271, label %2297

2271:                                             ; preds = %2264
  %2272 = load i64, ptr %2269, align 1, !tbaa !19
  %2273 = load i64, ptr %2268, align 1, !tbaa !19
  %2274 = xor i64 %2273, %2272
  %2275 = icmp eq i64 %2274, 0
  br i1 %2275, label %2279, label %2276

2276:                                             ; preds = %2271
  %2277 = tail call i64 @llvm.cttz.i64(i64 %2274, i1 true), !range !34
  %2278 = lshr i64 %2277, 3
  br label %2334

2279:                                             ; preds = %2271, %2285
  %2280 = phi ptr [ %2283, %2285 ], [ %2269, %2271 ]
  %2281 = phi ptr [ %2282, %2285 ], [ %2268, %2271 ]
  %2282 = getelementptr inbounds i8, ptr %2281, i64 8
  %2283 = getelementptr inbounds i8, ptr %2280, i64 8
  %2284 = icmp ult ptr %2282, %1811
  br i1 %2284, label %2285, label %2297

2285:                                             ; preds = %2279
  %2286 = load i64, ptr %2283, align 1, !tbaa !19
  %2287 = load i64, ptr %2282, align 1, !tbaa !19
  %2288 = xor i64 %2287, %2286
  %2289 = icmp eq i64 %2288, 0
  br i1 %2289, label %2279, label %2290

2290:                                             ; preds = %2285
  %2291 = tail call i64 @llvm.cttz.i64(i64 %2288, i1 true), !range !34
  %2292 = lshr i64 %2291, 3
  %2293 = getelementptr inbounds i8, ptr %2282, i64 %2292
  %2294 = ptrtoint ptr %2293 to i64
  %2295 = ptrtoint ptr %2268 to i64
  %2296 = sub i64 %2294, %2295
  br label %2334

2297:                                             ; preds = %2279, %2264
  %2298 = phi ptr [ %2269, %2264 ], [ %2283, %2279 ]
  %2299 = phi ptr [ %2268, %2264 ], [ %2282, %2279 ]
  %2300 = icmp ult ptr %2299, %1812
  br i1 %2300, label %2301, label %2308

2301:                                             ; preds = %2297
  %2302 = load i32, ptr %2298, align 1, !tbaa !20
  %2303 = load i32, ptr %2299, align 1, !tbaa !20
  %2304 = icmp eq i32 %2302, %2303
  br i1 %2304, label %2305, label %2308

2305:                                             ; preds = %2301
  %2306 = getelementptr inbounds i8, ptr %2299, i64 4
  %2307 = getelementptr inbounds i8, ptr %2298, i64 4
  br label %2308

2308:                                             ; preds = %2305, %2301, %2297
  %2309 = phi ptr [ %2307, %2305 ], [ %2298, %2301 ], [ %2298, %2297 ]
  %2310 = phi ptr [ %2306, %2305 ], [ %2299, %2301 ], [ %2299, %2297 ]
  %2311 = icmp ult ptr %2310, %1813
  br i1 %2311, label %2312, label %2319

2312:                                             ; preds = %2308
  %2313 = load i16, ptr %2309, align 1, !tbaa !35
  %2314 = load i16, ptr %2310, align 1, !tbaa !35
  %2315 = icmp eq i16 %2313, %2314
  br i1 %2315, label %2316, label %2319

2316:                                             ; preds = %2312
  %2317 = getelementptr inbounds i8, ptr %2310, i64 2
  %2318 = getelementptr inbounds i8, ptr %2309, i64 2
  br label %2319

2319:                                             ; preds = %2316, %2312, %2308
  %2320 = phi ptr [ %2318, %2316 ], [ %2309, %2312 ], [ %2309, %2308 ]
  %2321 = phi ptr [ %2317, %2316 ], [ %2310, %2312 ], [ %2310, %2308 ]
  %2322 = icmp ult ptr %2321, %24
  br i1 %2322, label %2323, label %2329

2323:                                             ; preds = %2319
  %2324 = load i8, ptr %2320, align 1, !tbaa !31
  %2325 = load i8, ptr %2321, align 1, !tbaa !31
  %2326 = icmp eq i8 %2324, %2325
  %2327 = zext i1 %2326 to i64
  %2328 = getelementptr inbounds i8, ptr %2321, i64 %2327
  br label %2329

2329:                                             ; preds = %2323, %2319
  %2330 = phi ptr [ %2321, %2319 ], [ %2328, %2323 ]
  %2331 = ptrtoint ptr %2330 to i64
  %2332 = ptrtoint ptr %2268 to i64
  %2333 = sub i64 %2331, %2332
  br label %2334

2334:                                             ; preds = %2329, %2290, %2276
  %2335 = phi i64 [ %2333, %2329 ], [ %2278, %2276 ], [ %2296, %2290 ]
  %2336 = add i64 %2335, 4
  %2337 = icmp ugt ptr %1839, %1820
  %2338 = icmp ugt i32 %1842, %21
  %2339 = and i1 %2337, %2338
  br i1 %2339, label %2340, label %2358

2340:                                             ; preds = %2334, %2349
  %2341 = phi ptr [ %2344, %2349 ], [ %1839, %2334 ]
  %2342 = phi i64 [ %2350, %2349 ], [ %2336, %2334 ]
  %2343 = phi ptr [ %2346, %2349 ], [ %1849, %2334 ]
  %2344 = getelementptr inbounds i8, ptr %2341, i64 -1
  %2345 = load i8, ptr %2344, align 1, !tbaa !31
  %2346 = getelementptr inbounds i8, ptr %2343, i64 -1
  %2347 = load i8, ptr %2346, align 1, !tbaa !31
  %2348 = icmp eq i8 %2345, %2347
  br i1 %2348, label %2349, label %2354

2349:                                             ; preds = %2340
  %2350 = add i64 %2342, 1
  %2351 = icmp ugt ptr %2344, %1820
  %2352 = icmp ugt ptr %2346, %23
  %2353 = and i1 %2351, %2352
  br i1 %2353, label %2340, label %2354, !llvm.loop !98

2354:                                             ; preds = %2349, %2340
  %2355 = phi i64 [ %2350, %2349 ], [ %2342, %2340 ]
  %2356 = phi ptr [ %2344, %2349 ], [ %2341, %2340 ]
  %2357 = ptrtoint ptr %2356 to i64
  br label %2358

2358:                                             ; preds = %2354, %2334
  %2359 = phi i64 [ %2357, %2354 ], [ %1845, %2334 ]
  %2360 = phi i64 [ %2355, %2354 ], [ %2336, %2334 ]
  %2361 = phi ptr [ %2356, %2354 ], [ %1839, %2334 ]
  %2362 = ptrtoint ptr %1820 to i64
  %2363 = sub i64 %2359, %2362
  %2364 = add i32 %2267, 3
  %2365 = getelementptr inbounds i8, ptr %1820, i64 %2363
  %2366 = icmp ugt ptr %2365, %1805
  %2367 = load ptr, ptr %1806, align 8, !tbaa !37
  br i1 %2366, label %2391, label %2368

2368:                                             ; preds = %2358
  %2369 = load <2 x i64>, ptr %1820, align 1, !tbaa !31
  store <2 x i64> %2369, ptr %2367, align 1, !tbaa !31
  %2370 = icmp ugt i64 %2363, 16
  br i1 %2370, label %2371, label %2508

2371:                                             ; preds = %2368
  %2372 = load ptr, ptr %1806, align 8, !tbaa !37
  %2373 = getelementptr inbounds i8, ptr %2372, i64 16
  %2374 = getelementptr inbounds i8, ptr %1820, i64 16
  %2375 = add i64 %2363, -16
  %2376 = getelementptr inbounds i8, ptr %2372, i64 %2363
  %2377 = load <2 x i64>, ptr %2374, align 1, !tbaa !31
  store <2 x i64> %2377, ptr %2373, align 1, !tbaa !31
  %2378 = icmp ult i64 %2375, 17
  br i1 %2378, label %2508, label %2379

2379:                                             ; preds = %2371
  %2380 = getelementptr inbounds i8, ptr %2372, i64 32
  br label %2381

2381:                                             ; preds = %2381, %2379
  %2382 = phi ptr [ %2380, %2379 ], [ %2389, %2381 ]
  %2383 = phi ptr [ %2374, %2379 ], [ %2387, %2381 ]
  %2384 = getelementptr inbounds i8, ptr %2383, i64 16
  %2385 = load <2 x i64>, ptr %2384, align 1, !tbaa !31
  store <2 x i64> %2385, ptr %2382, align 1, !tbaa !31
  %2386 = getelementptr inbounds i8, ptr %2382, i64 16
  %2387 = getelementptr inbounds i8, ptr %2383, i64 32
  %2388 = load <2 x i64>, ptr %2387, align 1, !tbaa !31
  store <2 x i64> %2388, ptr %2386, align 1, !tbaa !31
  %2389 = getelementptr inbounds i8, ptr %2382, i64 32
  %2390 = icmp ult ptr %2389, %2376
  br i1 %2390, label %2381, label %2512, !llvm.loop !39

2391:                                             ; preds = %2358
  %2392 = ptrtoint ptr %2365 to i64
  %2393 = icmp ugt ptr %1820, %1805
  br i1 %2393, label %2411, label %2394

2394:                                             ; preds = %2391
  %2395 = sub i64 %1807, %2362
  %2396 = getelementptr inbounds i8, ptr %2367, i64 %2395
  %2397 = load <2 x i64>, ptr %1820, align 1, !tbaa !31
  store <2 x i64> %2397, ptr %2367, align 1, !tbaa !31
  %2398 = icmp ult i64 %2395, 17
  br i1 %2398, label %2411, label %2399

2399:                                             ; preds = %2394
  %2400 = getelementptr inbounds i8, ptr %2367, i64 16
  br label %2401

2401:                                             ; preds = %2401, %2399
  %2402 = phi ptr [ %2400, %2399 ], [ %2409, %2401 ]
  %2403 = phi ptr [ %1820, %2399 ], [ %2407, %2401 ]
  %2404 = getelementptr inbounds i8, ptr %2403, i64 16
  %2405 = load <2 x i64>, ptr %2404, align 1, !tbaa !31
  store <2 x i64> %2405, ptr %2402, align 1, !tbaa !31
  %2406 = getelementptr inbounds i8, ptr %2402, i64 16
  %2407 = getelementptr inbounds i8, ptr %2403, i64 32
  %2408 = load <2 x i64>, ptr %2407, align 1, !tbaa !31
  store <2 x i64> %2408, ptr %2406, align 1, !tbaa !31
  %2409 = getelementptr inbounds i8, ptr %2402, i64 32
  %2410 = icmp ult ptr %2409, %2396
  br i1 %2410, label %2401, label %2411, !llvm.loop !39

2411:                                             ; preds = %2401, %2394, %2391
  %2412 = phi ptr [ %1805, %2394 ], [ %1820, %2391 ], [ %1805, %2401 ]
  %2413 = phi ptr [ %2396, %2394 ], [ %2367, %2391 ], [ %2396, %2401 ]
  %2414 = icmp ult ptr %2412, %2365
  br i1 %2414, label %2415, label %2512

2415:                                             ; preds = %2411
  %2416 = ptrtoint ptr %2413 to i64
  %2417 = ptrtoint ptr %2412 to i64
  %2418 = sub i64 %2392, %2417
  %2419 = getelementptr i8, ptr %2412, i64 %2418
  %2420 = icmp ult i64 %2418, 8
  %2421 = sub i64 %2416, %2417
  %2422 = icmp ult i64 %2421, 32
  %2423 = select i1 %2420, i1 true, i1 %2422
  br i1 %2423, label %2459, label %2424

2424:                                             ; preds = %2415
  %2425 = icmp ult i64 %2418, 32
  br i1 %2425, label %2445, label %2426

2426:                                             ; preds = %2424
  %2427 = and i64 %2418, -32
  br label %2428

2428:                                             ; preds = %2428, %2426
  %2429 = phi i64 [ 0, %2426 ], [ %2436, %2428 ]
  %2430 = getelementptr i8, ptr %2413, i64 %2429
  %2431 = getelementptr i8, ptr %2412, i64 %2429
  %2432 = getelementptr i8, ptr %2431, i64 16
  %2433 = load <16 x i8>, ptr %2431, align 1, !tbaa !31
  %2434 = load <16 x i8>, ptr %2432, align 1, !tbaa !31
  %2435 = getelementptr i8, ptr %2430, i64 16
  store <16 x i8> %2433, ptr %2430, align 1, !tbaa !31
  store <16 x i8> %2434, ptr %2435, align 1, !tbaa !31
  %2436 = add nuw i64 %2429, 32
  %2437 = icmp eq i64 %2436, %2427
  br i1 %2437, label %2438, label %2428, !llvm.loop !123

2438:                                             ; preds = %2428
  %2439 = icmp eq i64 %2418, %2427
  br i1 %2439, label %2512, label %2440

2440:                                             ; preds = %2438
  %2441 = getelementptr i8, ptr %2412, i64 %2427
  %2442 = getelementptr i8, ptr %2413, i64 %2427
  %2443 = and i64 %2418, 24
  %2444 = icmp eq i64 %2443, 0
  br i1 %2444, label %2459, label %2445

2445:                                             ; preds = %2424, %2440
  %2446 = phi i64 [ %2427, %2440 ], [ 0, %2424 ]
  %2447 = and i64 %2418, -8
  %2448 = getelementptr i8, ptr %2413, i64 %2447
  %2449 = getelementptr i8, ptr %2412, i64 %2447
  br label %2450

2450:                                             ; preds = %2450, %2445
  %2451 = phi i64 [ %2446, %2445 ], [ %2455, %2450 ]
  %2452 = getelementptr i8, ptr %2413, i64 %2451
  %2453 = getelementptr i8, ptr %2412, i64 %2451
  %2454 = load <8 x i8>, ptr %2453, align 1, !tbaa !31
  store <8 x i8> %2454, ptr %2452, align 1, !tbaa !31
  %2455 = add nuw i64 %2451, 8
  %2456 = icmp eq i64 %2455, %2447
  br i1 %2456, label %2457, label %2450, !llvm.loop !124

2457:                                             ; preds = %2450
  %2458 = icmp eq i64 %2418, %2447
  br i1 %2458, label %2512, label %2459

2459:                                             ; preds = %2415, %2440, %2457
  %2460 = phi ptr [ %2413, %2415 ], [ %2442, %2440 ], [ %2448, %2457 ]
  %2461 = phi ptr [ %2412, %2415 ], [ %2441, %2440 ], [ %2449, %2457 ]
  %2462 = ptrtoint ptr %2461 to i64
  %2463 = sub i64 %2359, %2462
  %2464 = and i64 %2463, 7
  %2465 = icmp eq i64 %2464, 0
  br i1 %2465, label %2475, label %2466

2466:                                             ; preds = %2459, %2466
  %2467 = phi ptr [ %2472, %2466 ], [ %2460, %2459 ]
  %2468 = phi ptr [ %2470, %2466 ], [ %2461, %2459 ]
  %2469 = phi i64 [ %2473, %2466 ], [ 0, %2459 ]
  %2470 = getelementptr inbounds i8, ptr %2468, i64 1
  %2471 = load i8, ptr %2468, align 1, !tbaa !31
  %2472 = getelementptr inbounds i8, ptr %2467, i64 1
  store i8 %2471, ptr %2467, align 1, !tbaa !31
  %2473 = add i64 %2469, 1
  %2474 = icmp eq i64 %2473, %2464
  br i1 %2474, label %2475, label %2466, !llvm.loop !125

2475:                                             ; preds = %2466, %2459
  %2476 = phi ptr [ %2460, %2459 ], [ %2472, %2466 ]
  %2477 = phi ptr [ %2461, %2459 ], [ %2470, %2466 ]
  %2478 = sub i64 %2462, %2359
  %2479 = icmp ugt i64 %2478, -8
  br i1 %2479, label %2512, label %2480

2480:                                             ; preds = %2475, %2480
  %2481 = phi ptr [ %2506, %2480 ], [ %2476, %2475 ]
  %2482 = phi ptr [ %2504, %2480 ], [ %2477, %2475 ]
  %2483 = getelementptr inbounds i8, ptr %2482, i64 1
  %2484 = load i8, ptr %2482, align 1, !tbaa !31
  %2485 = getelementptr inbounds i8, ptr %2481, i64 1
  store i8 %2484, ptr %2481, align 1, !tbaa !31
  %2486 = getelementptr inbounds i8, ptr %2482, i64 2
  %2487 = load i8, ptr %2483, align 1, !tbaa !31
  %2488 = getelementptr inbounds i8, ptr %2481, i64 2
  store i8 %2487, ptr %2485, align 1, !tbaa !31
  %2489 = getelementptr inbounds i8, ptr %2482, i64 3
  %2490 = load i8, ptr %2486, align 1, !tbaa !31
  %2491 = getelementptr inbounds i8, ptr %2481, i64 3
  store i8 %2490, ptr %2488, align 1, !tbaa !31
  %2492 = getelementptr inbounds i8, ptr %2482, i64 4
  %2493 = load i8, ptr %2489, align 1, !tbaa !31
  %2494 = getelementptr inbounds i8, ptr %2481, i64 4
  store i8 %2493, ptr %2491, align 1, !tbaa !31
  %2495 = getelementptr inbounds i8, ptr %2482, i64 5
  %2496 = load i8, ptr %2492, align 1, !tbaa !31
  %2497 = getelementptr inbounds i8, ptr %2481, i64 5
  store i8 %2496, ptr %2494, align 1, !tbaa !31
  %2498 = getelementptr inbounds i8, ptr %2482, i64 6
  %2499 = load i8, ptr %2495, align 1, !tbaa !31
  %2500 = getelementptr inbounds i8, ptr %2481, i64 6
  store i8 %2499, ptr %2497, align 1, !tbaa !31
  %2501 = getelementptr inbounds i8, ptr %2482, i64 7
  %2502 = load i8, ptr %2498, align 1, !tbaa !31
  %2503 = getelementptr inbounds i8, ptr %2481, i64 7
  store i8 %2502, ptr %2500, align 1, !tbaa !31
  %2504 = getelementptr inbounds i8, ptr %2482, i64 8
  %2505 = load i8, ptr %2501, align 1, !tbaa !31
  %2506 = getelementptr inbounds i8, ptr %2481, i64 8
  store i8 %2505, ptr %2503, align 1, !tbaa !31
  %2507 = icmp eq ptr %2504, %2419
  br i1 %2507, label %2512, label %2480, !llvm.loop !126

2508:                                             ; preds = %2371, %2368
  %2509 = load ptr, ptr %1806, align 8, !tbaa !37
  %2510 = getelementptr inbounds i8, ptr %2509, i64 %2363
  store ptr %2510, ptr %1806, align 8, !tbaa !37
  %2511 = load ptr, ptr %1809, align 8, !tbaa !47
  br label %2524

2512:                                             ; preds = %2381, %2475, %2480, %2438, %2457, %2411
  %2513 = load ptr, ptr %1806, align 8, !tbaa !37
  %2514 = getelementptr inbounds i8, ptr %2513, i64 %2363
  store ptr %2514, ptr %1806, align 8, !tbaa !37
  %2515 = icmp ugt i64 %2363, 65535
  %2516 = load ptr, ptr %1809, align 8, !tbaa !47
  br i1 %2515, label %2517, label %2524, !prof !48

2517:                                             ; preds = %2512
  store i32 1, ptr %1808, align 8, !tbaa !49
  %2518 = load ptr, ptr %1, align 8, !tbaa !50
  %2519 = ptrtoint ptr %2516 to i64
  %2520 = ptrtoint ptr %2518 to i64
  %2521 = sub i64 %2519, %2520
  %2522 = lshr exact i64 %2521, 3
  %2523 = trunc i64 %2522 to i32
  store i32 %2523, ptr %1810, align 4, !tbaa !51
  br label %2524

2524:                                             ; preds = %2517, %2512, %2508
  %2525 = phi ptr [ %2511, %2508 ], [ %2516, %2517 ], [ %2516, %2512 ]
  %2526 = trunc i64 %2363 to i16
  %2527 = getelementptr inbounds %struct.SeqDef_s, ptr %2525, i64 0, i32 1
  store i16 %2526, ptr %2527, align 4, !tbaa !52
  store i32 %2364, ptr %2525, align 4, !tbaa !54
  %2528 = add i64 %2360, -3
  %2529 = icmp ugt i64 %2528, 65535
  br i1 %2529, label %2544, label %2557, !prof !55

2530:                                             ; preds = %2262, %2257
  %2531 = icmp uge ptr %1838, %1833
  %2532 = zext i1 %2531 to i64
  %2533 = add i64 %1834, %2532
  %2534 = getelementptr inbounds i8, ptr %1838, i64 %2533
  %2535 = icmp ugt ptr %2534, %25
  br i1 %2535, label %3504, label %2536

2536:                                             ; preds = %2530
  %2537 = select i1 %2531, i64 256, i64 0
  %2538 = getelementptr inbounds i8, ptr %1833, i64 %2537
  %2539 = lshr i64 %1854, 8
  %2540 = getelementptr inbounds i32, ptr %32, i64 %2539
  %2541 = load i32, ptr %2540, align 4, !tbaa !20
  %2542 = zext i32 %2541 to i64
  %2543 = xor i64 %1854, %2542
  br label %1832

2544:                                             ; preds = %2524, %2251, %2040
  %2545 = phi ptr [ %2041, %2040 ], [ %2252, %2251 ], [ %2525, %2524 ]
  %2546 = phi i64 [ %2044, %2040 ], [ %2255, %2251 ], [ %2528, %2524 ]
  %2547 = phi i64 [ %1876, %2040 ], [ %2087, %2251 ], [ %2360, %2524 ]
  %2548 = phi i32 [ %1822, %2040 ], [ %1821, %2251 ], [ %1821, %2524 ]
  %2549 = phi i32 [ %1821, %2040 ], [ %2061, %2251 ], [ %2267, %2524 ]
  %2550 = phi ptr [ %1871, %2040 ], [ %2088, %2251 ], [ %2361, %2524 ]
  store i32 2, ptr %1808, align 8, !tbaa !49
  %2551 = load ptr, ptr %1, align 8, !tbaa !50
  %2552 = ptrtoint ptr %2545 to i64
  %2553 = ptrtoint ptr %2551 to i64
  %2554 = sub i64 %2552, %2553
  %2555 = lshr exact i64 %2554, 3
  %2556 = trunc i64 %2555 to i32
  store i32 %2556, ptr %1810, align 4, !tbaa !51
  br label %2557

2557:                                             ; preds = %2544, %2524, %2251, %2040
  %2558 = phi i64 [ %2044, %2040 ], [ %2255, %2251 ], [ %2528, %2524 ], [ %2546, %2544 ]
  %2559 = phi ptr [ %2041, %2040 ], [ %2252, %2251 ], [ %2525, %2524 ], [ %2545, %2544 ]
  %2560 = phi i64 [ %1876, %2040 ], [ %2087, %2251 ], [ %2360, %2524 ], [ %2547, %2544 ]
  %2561 = phi i32 [ %1822, %2040 ], [ %1821, %2251 ], [ %1821, %2524 ], [ %2548, %2544 ]
  %2562 = phi i32 [ %1821, %2040 ], [ %2061, %2251 ], [ %2267, %2524 ], [ %2549, %2544 ]
  %2563 = phi ptr [ %1871, %2040 ], [ %2088, %2251 ], [ %2361, %2524 ], [ %2550, %2544 ]
  %2564 = trunc i64 %2558 to i16
  %2565 = getelementptr inbounds %struct.SeqDef_s, ptr %2559, i64 0, i32 2
  store i16 %2564, ptr %2565, align 2, !tbaa !56
  %2566 = getelementptr inbounds %struct.SeqDef_s, ptr %2559, i64 1
  store ptr %2566, ptr %1809, align 8, !tbaa !47
  %2567 = getelementptr inbounds i8, ptr %2563, i64 %2560
  %2568 = icmp ugt ptr %2567, %25
  br i1 %2568, label %2637, label %2569

2569:                                             ; preds = %2557
  %2570 = add i32 %1847, 2
  %2571 = and i64 %1846, 4294967295
  %2572 = getelementptr inbounds i8, ptr %1793, i64 %2571
  %2573 = load i64, ptr %2572, align 1, !tbaa !19
  %2574 = mul i64 %2573, -3523014627193847808
  %2575 = lshr i64 %2574, %1802
  %2576 = getelementptr inbounds i32, ptr %9, i64 %2575
  store i32 %2570, ptr %2576, align 4, !tbaa !20
  %2577 = getelementptr inbounds i8, ptr %2567, i64 -2
  %2578 = ptrtoint ptr %2577 to i64
  %2579 = sub i64 %2578, %54
  %2580 = trunc i64 %2579 to i32
  %2581 = load i64, ptr %2577, align 1, !tbaa !19
  %2582 = mul i64 %2581, -3523014627193847808
  %2583 = lshr i64 %2582, %1802
  %2584 = getelementptr inbounds i32, ptr %9, i64 %2583
  store i32 %2580, ptr %2584, align 4, !tbaa !20
  br label %2585

2585:                                             ; preds = %2627, %2569
  %2586 = phi ptr [ %2566, %2569 ], [ %2630, %2627 ]
  %2587 = phi ptr [ %2567, %2569 ], [ %2635, %2627 ]
  %2588 = phi i32 [ %2562, %2569 ], [ %2589, %2627 ]
  %2589 = phi i32 [ %2561, %2569 ], [ %2588, %2627 ]
  %2590 = ptrtoint ptr %2587 to i64
  %2591 = sub i64 %2590, %54
  %2592 = trunc i64 %2591 to i32
  %2593 = sub i32 %2592, %2589
  %2594 = icmp ult i32 %2593, %21
  %2595 = zext i32 %2593 to i64
  %2596 = select i1 %2594, ptr %1816, ptr %18
  %2597 = getelementptr inbounds i8, ptr %2596, i64 %2595
  %2598 = sub i32 %2593, %21
  %2599 = icmp ugt i32 %2598, -4
  br i1 %2599, label %2637, label %2600

2600:                                             ; preds = %2585
  %2601 = load i32, ptr %2597, align 1, !tbaa !20
  %2602 = load i32, ptr %2587, align 1, !tbaa !20
  %2603 = icmp eq i32 %2601, %2602
  br i1 %2603, label %2604, label %2637

2604:                                             ; preds = %2600
  %2605 = select i1 %2594, ptr %39, ptr %24
  %2606 = getelementptr inbounds i8, ptr %2587, i64 4
  %2607 = getelementptr inbounds i8, ptr %2597, i64 4
  %2608 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %2606, ptr noundef nonnull %2607, ptr noundef %24, ptr noundef %2605, ptr noundef %23)
  %2609 = add i64 %2608, 4
  %2610 = icmp ugt ptr %2587, %1805
  br i1 %2610, label %2615, label %2611

2611:                                             ; preds = %2604
  %2612 = load ptr, ptr %1806, align 8, !tbaa !37
  %2613 = load <2 x i64>, ptr %2587, align 1, !tbaa !31
  store <2 x i64> %2613, ptr %2612, align 1, !tbaa !31
  %2614 = load ptr, ptr %1809, align 8, !tbaa !47
  br label %2615

2615:                                             ; preds = %2611, %2604
  %2616 = phi ptr [ %2586, %2604 ], [ %2614, %2611 ]
  %2617 = getelementptr inbounds %struct.SeqDef_s, ptr %2616, i64 0, i32 1
  store i16 0, ptr %2617, align 4, !tbaa !52
  store i32 1, ptr %2616, align 4, !tbaa !54
  %2618 = add i64 %2608, 1
  %2619 = icmp ugt i64 %2618, 65535
  br i1 %2619, label %2620, label %2627, !prof !55

2620:                                             ; preds = %2615
  store i32 2, ptr %1808, align 8, !tbaa !49
  %2621 = load ptr, ptr %1, align 8, !tbaa !50
  %2622 = ptrtoint ptr %2616 to i64
  %2623 = ptrtoint ptr %2621 to i64
  %2624 = sub i64 %2622, %2623
  %2625 = lshr exact i64 %2624, 3
  %2626 = trunc i64 %2625 to i32
  store i32 %2626, ptr %1810, align 4, !tbaa !51
  br label %2627

2627:                                             ; preds = %2620, %2615
  %2628 = trunc i64 %2618 to i16
  %2629 = getelementptr inbounds %struct.SeqDef_s, ptr %2616, i64 0, i32 2
  store i16 %2628, ptr %2629, align 2, !tbaa !56
  %2630 = getelementptr inbounds %struct.SeqDef_s, ptr %2616, i64 1
  store ptr %2630, ptr %1809, align 8, !tbaa !47
  %2631 = load i64, ptr %2587, align 1, !tbaa !19
  %2632 = mul i64 %2631, -3523014627193847808
  %2633 = lshr i64 %2632, %1802
  %2634 = getelementptr inbounds i32, ptr %9, i64 %2633
  store i32 %2592, ptr %2634, align 4, !tbaa !20
  %2635 = getelementptr inbounds i8, ptr %2587, i64 %2609
  %2636 = icmp ugt ptr %2635, %25
  br i1 %2636, label %2637, label %2585

2637:                                             ; preds = %2627, %2600, %2585, %2557
  %2638 = phi i32 [ %2561, %2557 ], [ %2589, %2585 ], [ %2589, %2600 ], [ %2588, %2627 ]
  %2639 = phi i32 [ %2562, %2557 ], [ %2588, %2585 ], [ %2588, %2600 ], [ %2589, %2627 ]
  %2640 = phi ptr [ %2567, %2557 ], [ %2587, %2585 ], [ %2587, %2600 ], [ %2635, %2627 ]
  %2641 = getelementptr inbounds i8, ptr %2640, i64 %19
  %2642 = icmp ugt ptr %2641, %25
  br i1 %2642, label %3504, label %1817

2643:                                             ; preds = %5
  br i1 %57, label %2653, label %2644

2644:                                             ; preds = %2643
  %2645 = zext nneg i32 %53 to i64
  %2646 = shl i64 4, %2645
  %2647 = icmp ugt i32 %53, 61
  br i1 %2647, label %2653, label %2648

2648:                                             ; preds = %2644, %2648
  %2649 = phi i64 [ %2651, %2648 ], [ 0, %2644 ]
  %2650 = getelementptr inbounds i8, ptr %32, i64 %2649
  tail call void @llvm.prefetch.p0(ptr %2650, i32 0, i32 2, i32 1)
  %2651 = add i64 %2649, 64
  %2652 = icmp ult i64 %2651, %2646
  br i1 %2652, label %2648, label %2653, !llvm.loop !88

2653:                                             ; preds = %2648, %2644, %2643
  %2654 = getelementptr inbounds i8, ptr %18, i64 2
  %2655 = getelementptr inbounds i8, ptr %3, i64 %19
  %2656 = icmp ugt ptr %2655, %25
  br i1 %2656, label %3504, label %2657

2657:                                             ; preds = %2653
  %2658 = and i64 %51, 4294967295
  %2659 = icmp eq i64 %2658, 0
  %2660 = zext i1 %2659 to i64
  %2661 = getelementptr inbounds i8, ptr %3, i64 %2660
  %2662 = sub i32 64, %11
  %2663 = zext nneg i32 %2662 to i64
  %2664 = sub i32 56, %53
  %2665 = zext nneg i32 %2664 to i64
  %2666 = getelementptr inbounds i8, ptr %24, i64 -32
  %2667 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %2668 = ptrtoint ptr %2666 to i64
  %2669 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %2670 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %2671 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  %2672 = getelementptr inbounds i8, ptr %24, i64 -7
  %2673 = getelementptr inbounds i8, ptr %24, i64 -3
  %2674 = getelementptr inbounds i8, ptr %24, i64 -1
  %2675 = zext i32 %44 to i64
  %2676 = sub nsw i64 0, %2675
  %2677 = getelementptr inbounds i8, ptr %36, i64 %2676
  br label %2678

2678:                                             ; preds = %3498, %2657
  %2679 = phi ptr [ %2655, %2657 ], [ %3502, %3498 ]
  %2680 = phi ptr [ %2661, %2657 ], [ %3501, %3498 ]
  %2681 = phi ptr [ %3, %2657 ], [ %3501, %3498 ]
  %2682 = phi i32 [ %26, %2657 ], [ %3500, %3498 ]
  %2683 = phi i32 [ %28, %2657 ], [ %3499, %3498 ]
  %2684 = load i64, ptr %2680, align 1, !tbaa !19
  %2685 = mul i64 %2684, -3523014627193167104
  %2686 = lshr i64 %2685, %2665
  %2687 = lshr i64 %2686, 8
  %2688 = getelementptr inbounds i32, ptr %32, i64 %2687
  %2689 = load i32, ptr %2688, align 4, !tbaa !20
  %2690 = zext i32 %2689 to i64
  %2691 = xor i64 %2686, %2690
  %2692 = getelementptr inbounds i8, ptr %2680, i64 256
  br label %2693

2693:                                             ; preds = %3397, %2678
  %2694 = phi ptr [ %2692, %2678 ], [ %3399, %3397 ]
  %2695 = phi i64 [ %19, %2678 ], [ %3394, %3397 ]
  %2696 = phi i64 [ %2691, %2678 ], [ %3404, %3397 ]
  %2697 = phi i32 [ %2689, %2678 ], [ %3402, %3397 ]
  %2698 = phi i64 [ %2685, %2678 ], [ %2714, %3397 ]
  %2699 = phi ptr [ %2679, %2678 ], [ %3395, %3397 ]
  %2700 = phi ptr [ %2680, %2678 ], [ %2699, %3397 ]
  %2701 = lshr i64 %2698, %2663
  %2702 = getelementptr inbounds i32, ptr %9, i64 %2701
  %2703 = load i32, ptr %2702, align 4, !tbaa !20
  %2704 = and i64 %2696, 255
  %2705 = icmp eq i64 %2704, 0
  %2706 = ptrtoint ptr %2700 to i64
  %2707 = sub i64 %2706, %54
  %2708 = trunc i64 %2707 to i32
  %2709 = zext i32 %2703 to i64
  %2710 = getelementptr inbounds i8, ptr %18, i64 %2709
  %2711 = sub i32 %2708, %2682
  %2712 = add i32 %2711, 1
  %2713 = load i64, ptr %2699, align 1, !tbaa !19
  %2714 = mul i64 %2713, -3523014627193167104
  %2715 = lshr i64 %2714, %2665
  store i32 %2708, ptr %2702, align 4, !tbaa !20
  %2716 = sub i32 %2712, %21
  %2717 = icmp ugt i32 %2716, -4
  br i1 %2717, label %2907, label %2718

2718:                                             ; preds = %2693
  %2719 = icmp ult i32 %2712, %21
  %2720 = sub i32 %2712, %44
  %2721 = zext i32 %2720 to i64
  %2722 = getelementptr inbounds i8, ptr %36, i64 %2721
  %2723 = zext i32 %2712 to i64
  %2724 = getelementptr inbounds i8, ptr %18, i64 %2723
  %2725 = select i1 %2719, ptr %2722, ptr %2724
  %2726 = load i32, ptr %2725, align 1, !tbaa !20
  %2727 = getelementptr inbounds i8, ptr %2700, i64 1
  %2728 = load i32, ptr %2727, align 1, !tbaa !20
  %2729 = icmp eq i32 %2726, %2728
  br i1 %2729, label %2730, label %2907

2730:                                             ; preds = %2718
  %2731 = ptrtoint ptr %2700 to i64
  %2732 = getelementptr inbounds i8, ptr %2700, i64 1
  %2733 = select i1 %2719, ptr %39, ptr %24
  %2734 = getelementptr inbounds i8, ptr %2700, i64 5
  %2735 = getelementptr inbounds i8, ptr %2725, i64 4
  %2736 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %2734, ptr noundef nonnull %2735, ptr noundef %24, ptr noundef %2733, ptr noundef %23)
  %2737 = add i64 %2736, 4
  %2738 = ptrtoint ptr %2732 to i64
  %2739 = ptrtoint ptr %2681 to i64
  %2740 = sub i64 %2738, %2739
  %2741 = getelementptr inbounds i8, ptr %2681, i64 %2740
  %2742 = icmp ugt ptr %2741, %2666
  %2743 = load ptr, ptr %2667, align 8, !tbaa !37
  br i1 %2742, label %2767, label %2744

2744:                                             ; preds = %2730
  %2745 = load <2 x i64>, ptr %2681, align 1, !tbaa !31
  store <2 x i64> %2745, ptr %2743, align 1, !tbaa !31
  %2746 = icmp ugt i64 %2740, 16
  br i1 %2746, label %2747, label %2885

2747:                                             ; preds = %2744
  %2748 = load ptr, ptr %2667, align 8, !tbaa !37
  %2749 = getelementptr inbounds i8, ptr %2748, i64 16
  %2750 = getelementptr inbounds i8, ptr %2681, i64 16
  %2751 = add i64 %2740, -16
  %2752 = getelementptr inbounds i8, ptr %2748, i64 %2740
  %2753 = load <2 x i64>, ptr %2750, align 1, !tbaa !31
  store <2 x i64> %2753, ptr %2749, align 1, !tbaa !31
  %2754 = icmp ult i64 %2751, 17
  br i1 %2754, label %2885, label %2755

2755:                                             ; preds = %2747
  %2756 = getelementptr inbounds i8, ptr %2748, i64 32
  br label %2757

2757:                                             ; preds = %2757, %2755
  %2758 = phi ptr [ %2756, %2755 ], [ %2765, %2757 ]
  %2759 = phi ptr [ %2750, %2755 ], [ %2763, %2757 ]
  %2760 = getelementptr inbounds i8, ptr %2759, i64 16
  %2761 = load <2 x i64>, ptr %2760, align 1, !tbaa !31
  store <2 x i64> %2761, ptr %2758, align 1, !tbaa !31
  %2762 = getelementptr inbounds i8, ptr %2758, i64 16
  %2763 = getelementptr inbounds i8, ptr %2759, i64 32
  %2764 = load <2 x i64>, ptr %2763, align 1, !tbaa !31
  store <2 x i64> %2764, ptr %2762, align 1, !tbaa !31
  %2765 = getelementptr inbounds i8, ptr %2758, i64 32
  %2766 = icmp ult ptr %2765, %2752
  br i1 %2766, label %2757, label %2889, !llvm.loop !39

2767:                                             ; preds = %2730
  %2768 = ptrtoint ptr %2741 to i64
  %2769 = icmp ugt ptr %2681, %2666
  br i1 %2769, label %2787, label %2770

2770:                                             ; preds = %2767
  %2771 = sub i64 %2668, %2739
  %2772 = getelementptr inbounds i8, ptr %2743, i64 %2771
  %2773 = load <2 x i64>, ptr %2681, align 1, !tbaa !31
  store <2 x i64> %2773, ptr %2743, align 1, !tbaa !31
  %2774 = icmp ult i64 %2771, 17
  br i1 %2774, label %2787, label %2775

2775:                                             ; preds = %2770
  %2776 = getelementptr inbounds i8, ptr %2743, i64 16
  br label %2777

2777:                                             ; preds = %2777, %2775
  %2778 = phi ptr [ %2776, %2775 ], [ %2785, %2777 ]
  %2779 = phi ptr [ %2681, %2775 ], [ %2783, %2777 ]
  %2780 = getelementptr inbounds i8, ptr %2779, i64 16
  %2781 = load <2 x i64>, ptr %2780, align 1, !tbaa !31
  store <2 x i64> %2781, ptr %2778, align 1, !tbaa !31
  %2782 = getelementptr inbounds i8, ptr %2778, i64 16
  %2783 = getelementptr inbounds i8, ptr %2779, i64 32
  %2784 = load <2 x i64>, ptr %2783, align 1, !tbaa !31
  store <2 x i64> %2784, ptr %2782, align 1, !tbaa !31
  %2785 = getelementptr inbounds i8, ptr %2778, i64 32
  %2786 = icmp ult ptr %2785, %2772
  br i1 %2786, label %2777, label %2787, !llvm.loop !39

2787:                                             ; preds = %2777, %2770, %2767
  %2788 = phi ptr [ %2666, %2770 ], [ %2681, %2767 ], [ %2666, %2777 ]
  %2789 = phi ptr [ %2772, %2770 ], [ %2743, %2767 ], [ %2772, %2777 ]
  %2790 = icmp ult ptr %2788, %2741
  br i1 %2790, label %2791, label %2889

2791:                                             ; preds = %2787
  %2792 = ptrtoint ptr %2789 to i64
  %2793 = ptrtoint ptr %2788 to i64
  %2794 = sub i64 %2768, %2793
  %2795 = getelementptr i8, ptr %2788, i64 %2794
  %2796 = icmp ult i64 %2794, 8
  %2797 = sub i64 %2792, %2793
  %2798 = icmp ult i64 %2797, 32
  %2799 = select i1 %2796, i1 true, i1 %2798
  br i1 %2799, label %2835, label %2800

2800:                                             ; preds = %2791
  %2801 = icmp ult i64 %2794, 32
  br i1 %2801, label %2821, label %2802

2802:                                             ; preds = %2800
  %2803 = and i64 %2794, -32
  br label %2804

2804:                                             ; preds = %2804, %2802
  %2805 = phi i64 [ 0, %2802 ], [ %2812, %2804 ]
  %2806 = getelementptr i8, ptr %2789, i64 %2805
  %2807 = getelementptr i8, ptr %2788, i64 %2805
  %2808 = getelementptr i8, ptr %2807, i64 16
  %2809 = load <16 x i8>, ptr %2807, align 1, !tbaa !31
  %2810 = load <16 x i8>, ptr %2808, align 1, !tbaa !31
  %2811 = getelementptr i8, ptr %2806, i64 16
  store <16 x i8> %2809, ptr %2806, align 1, !tbaa !31
  store <16 x i8> %2810, ptr %2811, align 1, !tbaa !31
  %2812 = add nuw i64 %2805, 32
  %2813 = icmp eq i64 %2812, %2803
  br i1 %2813, label %2814, label %2804, !llvm.loop !127

2814:                                             ; preds = %2804
  %2815 = icmp eq i64 %2794, %2803
  br i1 %2815, label %2889, label %2816

2816:                                             ; preds = %2814
  %2817 = getelementptr i8, ptr %2788, i64 %2803
  %2818 = getelementptr i8, ptr %2789, i64 %2803
  %2819 = and i64 %2794, 24
  %2820 = icmp eq i64 %2819, 0
  br i1 %2820, label %2835, label %2821

2821:                                             ; preds = %2800, %2816
  %2822 = phi i64 [ %2803, %2816 ], [ 0, %2800 ]
  %2823 = and i64 %2794, -8
  %2824 = getelementptr i8, ptr %2789, i64 %2823
  %2825 = getelementptr i8, ptr %2788, i64 %2823
  br label %2826

2826:                                             ; preds = %2826, %2821
  %2827 = phi i64 [ %2822, %2821 ], [ %2831, %2826 ]
  %2828 = getelementptr i8, ptr %2789, i64 %2827
  %2829 = getelementptr i8, ptr %2788, i64 %2827
  %2830 = load <8 x i8>, ptr %2829, align 1, !tbaa !31
  store <8 x i8> %2830, ptr %2828, align 1, !tbaa !31
  %2831 = add nuw i64 %2827, 8
  %2832 = icmp eq i64 %2831, %2823
  br i1 %2832, label %2833, label %2826, !llvm.loop !128

2833:                                             ; preds = %2826
  %2834 = icmp eq i64 %2794, %2823
  br i1 %2834, label %2889, label %2835

2835:                                             ; preds = %2791, %2816, %2833
  %2836 = phi ptr [ %2789, %2791 ], [ %2818, %2816 ], [ %2824, %2833 ]
  %2837 = phi ptr [ %2788, %2791 ], [ %2817, %2816 ], [ %2825, %2833 ]
  %2838 = ptrtoint ptr %2837 to i64
  %2839 = sub i64 %2731, %2838
  %2840 = add i64 %2839, 1
  %2841 = sub i64 %2731, %2838
  %2842 = and i64 %2840, 7
  %2843 = icmp eq i64 %2842, 0
  br i1 %2843, label %2853, label %2844

2844:                                             ; preds = %2835, %2844
  %2845 = phi ptr [ %2850, %2844 ], [ %2836, %2835 ]
  %2846 = phi ptr [ %2848, %2844 ], [ %2837, %2835 ]
  %2847 = phi i64 [ %2851, %2844 ], [ 0, %2835 ]
  %2848 = getelementptr inbounds i8, ptr %2846, i64 1
  %2849 = load i8, ptr %2846, align 1, !tbaa !31
  %2850 = getelementptr inbounds i8, ptr %2845, i64 1
  store i8 %2849, ptr %2845, align 1, !tbaa !31
  %2851 = add i64 %2847, 1
  %2852 = icmp eq i64 %2851, %2842
  br i1 %2852, label %2853, label %2844, !llvm.loop !129

2853:                                             ; preds = %2844, %2835
  %2854 = phi ptr [ %2836, %2835 ], [ %2850, %2844 ]
  %2855 = phi ptr [ %2837, %2835 ], [ %2848, %2844 ]
  %2856 = icmp ult i64 %2841, 7
  br i1 %2856, label %2889, label %2857

2857:                                             ; preds = %2853, %2857
  %2858 = phi ptr [ %2883, %2857 ], [ %2854, %2853 ]
  %2859 = phi ptr [ %2881, %2857 ], [ %2855, %2853 ]
  %2860 = getelementptr inbounds i8, ptr %2859, i64 1
  %2861 = load i8, ptr %2859, align 1, !tbaa !31
  %2862 = getelementptr inbounds i8, ptr %2858, i64 1
  store i8 %2861, ptr %2858, align 1, !tbaa !31
  %2863 = getelementptr inbounds i8, ptr %2859, i64 2
  %2864 = load i8, ptr %2860, align 1, !tbaa !31
  %2865 = getelementptr inbounds i8, ptr %2858, i64 2
  store i8 %2864, ptr %2862, align 1, !tbaa !31
  %2866 = getelementptr inbounds i8, ptr %2859, i64 3
  %2867 = load i8, ptr %2863, align 1, !tbaa !31
  %2868 = getelementptr inbounds i8, ptr %2858, i64 3
  store i8 %2867, ptr %2865, align 1, !tbaa !31
  %2869 = getelementptr inbounds i8, ptr %2859, i64 4
  %2870 = load i8, ptr %2866, align 1, !tbaa !31
  %2871 = getelementptr inbounds i8, ptr %2858, i64 4
  store i8 %2870, ptr %2868, align 1, !tbaa !31
  %2872 = getelementptr inbounds i8, ptr %2859, i64 5
  %2873 = load i8, ptr %2869, align 1, !tbaa !31
  %2874 = getelementptr inbounds i8, ptr %2858, i64 5
  store i8 %2873, ptr %2871, align 1, !tbaa !31
  %2875 = getelementptr inbounds i8, ptr %2859, i64 6
  %2876 = load i8, ptr %2872, align 1, !tbaa !31
  %2877 = getelementptr inbounds i8, ptr %2858, i64 6
  store i8 %2876, ptr %2874, align 1, !tbaa !31
  %2878 = getelementptr inbounds i8, ptr %2859, i64 7
  %2879 = load i8, ptr %2875, align 1, !tbaa !31
  %2880 = getelementptr inbounds i8, ptr %2858, i64 7
  store i8 %2879, ptr %2877, align 1, !tbaa !31
  %2881 = getelementptr inbounds i8, ptr %2859, i64 8
  %2882 = load i8, ptr %2878, align 1, !tbaa !31
  %2883 = getelementptr inbounds i8, ptr %2858, i64 8
  store i8 %2882, ptr %2880, align 1, !tbaa !31
  %2884 = icmp eq ptr %2881, %2795
  br i1 %2884, label %2889, label %2857, !llvm.loop !130

2885:                                             ; preds = %2747, %2744
  %2886 = load ptr, ptr %2667, align 8, !tbaa !37
  %2887 = getelementptr inbounds i8, ptr %2886, i64 %2740
  store ptr %2887, ptr %2667, align 8, !tbaa !37
  %2888 = load ptr, ptr %2670, align 8, !tbaa !47
  br label %2901

2889:                                             ; preds = %2757, %2853, %2857, %2814, %2833, %2787
  %2890 = load ptr, ptr %2667, align 8, !tbaa !37
  %2891 = getelementptr inbounds i8, ptr %2890, i64 %2740
  store ptr %2891, ptr %2667, align 8, !tbaa !37
  %2892 = icmp ugt i64 %2740, 65535
  %2893 = load ptr, ptr %2670, align 8, !tbaa !47
  br i1 %2892, label %2894, label %2901, !prof !48

2894:                                             ; preds = %2889
  store i32 1, ptr %2669, align 8, !tbaa !49
  %2895 = load ptr, ptr %1, align 8, !tbaa !50
  %2896 = ptrtoint ptr %2893 to i64
  %2897 = ptrtoint ptr %2895 to i64
  %2898 = sub i64 %2896, %2897
  %2899 = lshr exact i64 %2898, 3
  %2900 = trunc i64 %2899 to i32
  store i32 %2900, ptr %2671, align 4, !tbaa !51
  br label %2901

2901:                                             ; preds = %2894, %2889, %2885
  %2902 = phi ptr [ %2888, %2885 ], [ %2893, %2894 ], [ %2893, %2889 ]
  %2903 = trunc i64 %2740 to i16
  %2904 = getelementptr inbounds %struct.SeqDef_s, ptr %2902, i64 0, i32 1
  store i16 %2903, ptr %2904, align 4, !tbaa !52
  store i32 1, ptr %2902, align 4, !tbaa !54
  %2905 = add i64 %2736, 1
  %2906 = icmp ugt i64 %2905, 65535
  br i1 %2906, label %3405, label %3418, !prof !55

2907:                                             ; preds = %2718, %2693
  br i1 %2705, label %2908, label %3118

2908:                                             ; preds = %2907
  %2909 = lshr i32 %2697, 8
  %2910 = icmp ugt i32 %2909, %34
  br i1 %2910, label %2911, label %3118

2911:                                             ; preds = %2908
  %2912 = zext nneg i32 %2909 to i64
  %2913 = getelementptr inbounds i8, ptr %36, i64 %2912
  %2914 = load i32, ptr %2913, align 1, !tbaa !20
  %2915 = load i32, ptr %2700, align 1, !tbaa !20
  %2916 = icmp ne i32 %2914, %2915
  %2917 = icmp ugt i32 %2703, %21
  %2918 = select i1 %2916, i1 true, i1 %2917
  br i1 %2918, label %3118, label %2919

2919:                                             ; preds = %2911
  %2920 = getelementptr inbounds i8, ptr %36, i64 %2912
  %2921 = add i32 %2909, %44
  %2922 = sub i32 %2708, %2921
  %2923 = getelementptr inbounds i8, ptr %2700, i64 4
  %2924 = getelementptr inbounds i8, ptr %2920, i64 4
  %2925 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %2923, ptr noundef nonnull %2924, ptr noundef %24, ptr noundef %39, ptr noundef %23)
  %2926 = add i64 %2925, 4
  %2927 = icmp ugt ptr %2700, %2681
  br i1 %2927, label %2928, label %2946

2928:                                             ; preds = %2919, %2937
  %2929 = phi ptr [ %2932, %2937 ], [ %2700, %2919 ]
  %2930 = phi i64 [ %2938, %2937 ], [ %2926, %2919 ]
  %2931 = phi ptr [ %2934, %2937 ], [ %2920, %2919 ]
  %2932 = getelementptr inbounds i8, ptr %2929, i64 -1
  %2933 = load i8, ptr %2932, align 1, !tbaa !31
  %2934 = getelementptr inbounds i8, ptr %2931, i64 -1
  %2935 = load i8, ptr %2934, align 1, !tbaa !31
  %2936 = icmp eq i8 %2933, %2935
  br i1 %2936, label %2937, label %2942

2937:                                             ; preds = %2928
  %2938 = add i64 %2930, 1
  %2939 = icmp ugt ptr %2932, %2681
  %2940 = icmp ugt ptr %2934, %38
  %2941 = and i1 %2939, %2940
  br i1 %2941, label %2928, label %2942, !llvm.loop !93

2942:                                             ; preds = %2937, %2928
  %2943 = phi i64 [ %2938, %2937 ], [ %2930, %2928 ]
  %2944 = phi ptr [ %2932, %2937 ], [ %2929, %2928 ]
  %2945 = ptrtoint ptr %2944 to i64
  br label %2946

2946:                                             ; preds = %2942, %2919
  %2947 = phi i64 [ %2945, %2942 ], [ %2706, %2919 ]
  %2948 = phi i64 [ %2943, %2942 ], [ %2926, %2919 ]
  %2949 = phi ptr [ %2944, %2942 ], [ %2700, %2919 ]
  %2950 = ptrtoint ptr %2681 to i64
  %2951 = sub i64 %2947, %2950
  %2952 = add i32 %2922, 3
  %2953 = getelementptr inbounds i8, ptr %2681, i64 %2951
  %2954 = icmp ugt ptr %2953, %2666
  %2955 = load ptr, ptr %2667, align 8, !tbaa !37
  br i1 %2954, label %2979, label %2956

2956:                                             ; preds = %2946
  %2957 = load <2 x i64>, ptr %2681, align 1, !tbaa !31
  store <2 x i64> %2957, ptr %2955, align 1, !tbaa !31
  %2958 = icmp ugt i64 %2951, 16
  br i1 %2958, label %2959, label %3096

2959:                                             ; preds = %2956
  %2960 = load ptr, ptr %2667, align 8, !tbaa !37
  %2961 = getelementptr inbounds i8, ptr %2960, i64 16
  %2962 = getelementptr inbounds i8, ptr %2681, i64 16
  %2963 = add i64 %2951, -16
  %2964 = getelementptr inbounds i8, ptr %2960, i64 %2951
  %2965 = load <2 x i64>, ptr %2962, align 1, !tbaa !31
  store <2 x i64> %2965, ptr %2961, align 1, !tbaa !31
  %2966 = icmp ult i64 %2963, 17
  br i1 %2966, label %3096, label %2967

2967:                                             ; preds = %2959
  %2968 = getelementptr inbounds i8, ptr %2960, i64 32
  br label %2969

2969:                                             ; preds = %2969, %2967
  %2970 = phi ptr [ %2968, %2967 ], [ %2977, %2969 ]
  %2971 = phi ptr [ %2962, %2967 ], [ %2975, %2969 ]
  %2972 = getelementptr inbounds i8, ptr %2971, i64 16
  %2973 = load <2 x i64>, ptr %2972, align 1, !tbaa !31
  store <2 x i64> %2973, ptr %2970, align 1, !tbaa !31
  %2974 = getelementptr inbounds i8, ptr %2970, i64 16
  %2975 = getelementptr inbounds i8, ptr %2971, i64 32
  %2976 = load <2 x i64>, ptr %2975, align 1, !tbaa !31
  store <2 x i64> %2976, ptr %2974, align 1, !tbaa !31
  %2977 = getelementptr inbounds i8, ptr %2970, i64 32
  %2978 = icmp ult ptr %2977, %2964
  br i1 %2978, label %2969, label %3100, !llvm.loop !39

2979:                                             ; preds = %2946
  %2980 = ptrtoint ptr %2953 to i64
  %2981 = icmp ugt ptr %2681, %2666
  br i1 %2981, label %2999, label %2982

2982:                                             ; preds = %2979
  %2983 = sub i64 %2668, %2950
  %2984 = getelementptr inbounds i8, ptr %2955, i64 %2983
  %2985 = load <2 x i64>, ptr %2681, align 1, !tbaa !31
  store <2 x i64> %2985, ptr %2955, align 1, !tbaa !31
  %2986 = icmp ult i64 %2983, 17
  br i1 %2986, label %2999, label %2987

2987:                                             ; preds = %2982
  %2988 = getelementptr inbounds i8, ptr %2955, i64 16
  br label %2989

2989:                                             ; preds = %2989, %2987
  %2990 = phi ptr [ %2988, %2987 ], [ %2997, %2989 ]
  %2991 = phi ptr [ %2681, %2987 ], [ %2995, %2989 ]
  %2992 = getelementptr inbounds i8, ptr %2991, i64 16
  %2993 = load <2 x i64>, ptr %2992, align 1, !tbaa !31
  store <2 x i64> %2993, ptr %2990, align 1, !tbaa !31
  %2994 = getelementptr inbounds i8, ptr %2990, i64 16
  %2995 = getelementptr inbounds i8, ptr %2991, i64 32
  %2996 = load <2 x i64>, ptr %2995, align 1, !tbaa !31
  store <2 x i64> %2996, ptr %2994, align 1, !tbaa !31
  %2997 = getelementptr inbounds i8, ptr %2990, i64 32
  %2998 = icmp ult ptr %2997, %2984
  br i1 %2998, label %2989, label %2999, !llvm.loop !39

2999:                                             ; preds = %2989, %2982, %2979
  %3000 = phi ptr [ %2666, %2982 ], [ %2681, %2979 ], [ %2666, %2989 ]
  %3001 = phi ptr [ %2984, %2982 ], [ %2955, %2979 ], [ %2984, %2989 ]
  %3002 = icmp ult ptr %3000, %2953
  br i1 %3002, label %3003, label %3100

3003:                                             ; preds = %2999
  %3004 = ptrtoint ptr %3001 to i64
  %3005 = ptrtoint ptr %3000 to i64
  %3006 = sub i64 %2980, %3005
  %3007 = getelementptr i8, ptr %3000, i64 %3006
  %3008 = icmp ult i64 %3006, 8
  %3009 = sub i64 %3004, %3005
  %3010 = icmp ult i64 %3009, 32
  %3011 = select i1 %3008, i1 true, i1 %3010
  br i1 %3011, label %3047, label %3012

3012:                                             ; preds = %3003
  %3013 = icmp ult i64 %3006, 32
  br i1 %3013, label %3033, label %3014

3014:                                             ; preds = %3012
  %3015 = and i64 %3006, -32
  br label %3016

3016:                                             ; preds = %3016, %3014
  %3017 = phi i64 [ 0, %3014 ], [ %3024, %3016 ]
  %3018 = getelementptr i8, ptr %3001, i64 %3017
  %3019 = getelementptr i8, ptr %3000, i64 %3017
  %3020 = getelementptr i8, ptr %3019, i64 16
  %3021 = load <16 x i8>, ptr %3019, align 1, !tbaa !31
  %3022 = load <16 x i8>, ptr %3020, align 1, !tbaa !31
  %3023 = getelementptr i8, ptr %3018, i64 16
  store <16 x i8> %3021, ptr %3018, align 1, !tbaa !31
  store <16 x i8> %3022, ptr %3023, align 1, !tbaa !31
  %3024 = add nuw i64 %3017, 32
  %3025 = icmp eq i64 %3024, %3015
  br i1 %3025, label %3026, label %3016, !llvm.loop !131

3026:                                             ; preds = %3016
  %3027 = icmp eq i64 %3006, %3015
  br i1 %3027, label %3100, label %3028

3028:                                             ; preds = %3026
  %3029 = getelementptr i8, ptr %3000, i64 %3015
  %3030 = getelementptr i8, ptr %3001, i64 %3015
  %3031 = and i64 %3006, 24
  %3032 = icmp eq i64 %3031, 0
  br i1 %3032, label %3047, label %3033

3033:                                             ; preds = %3012, %3028
  %3034 = phi i64 [ %3015, %3028 ], [ 0, %3012 ]
  %3035 = and i64 %3006, -8
  %3036 = getelementptr i8, ptr %3001, i64 %3035
  %3037 = getelementptr i8, ptr %3000, i64 %3035
  br label %3038

3038:                                             ; preds = %3038, %3033
  %3039 = phi i64 [ %3034, %3033 ], [ %3043, %3038 ]
  %3040 = getelementptr i8, ptr %3001, i64 %3039
  %3041 = getelementptr i8, ptr %3000, i64 %3039
  %3042 = load <8 x i8>, ptr %3041, align 1, !tbaa !31
  store <8 x i8> %3042, ptr %3040, align 1, !tbaa !31
  %3043 = add nuw i64 %3039, 8
  %3044 = icmp eq i64 %3043, %3035
  br i1 %3044, label %3045, label %3038, !llvm.loop !132

3045:                                             ; preds = %3038
  %3046 = icmp eq i64 %3006, %3035
  br i1 %3046, label %3100, label %3047

3047:                                             ; preds = %3003, %3028, %3045
  %3048 = phi ptr [ %3001, %3003 ], [ %3030, %3028 ], [ %3036, %3045 ]
  %3049 = phi ptr [ %3000, %3003 ], [ %3029, %3028 ], [ %3037, %3045 ]
  %3050 = ptrtoint ptr %3049 to i64
  %3051 = sub i64 %2947, %3050
  %3052 = and i64 %3051, 7
  %3053 = icmp eq i64 %3052, 0
  br i1 %3053, label %3063, label %3054

3054:                                             ; preds = %3047, %3054
  %3055 = phi ptr [ %3060, %3054 ], [ %3048, %3047 ]
  %3056 = phi ptr [ %3058, %3054 ], [ %3049, %3047 ]
  %3057 = phi i64 [ %3061, %3054 ], [ 0, %3047 ]
  %3058 = getelementptr inbounds i8, ptr %3056, i64 1
  %3059 = load i8, ptr %3056, align 1, !tbaa !31
  %3060 = getelementptr inbounds i8, ptr %3055, i64 1
  store i8 %3059, ptr %3055, align 1, !tbaa !31
  %3061 = add i64 %3057, 1
  %3062 = icmp eq i64 %3061, %3052
  br i1 %3062, label %3063, label %3054, !llvm.loop !133

3063:                                             ; preds = %3054, %3047
  %3064 = phi ptr [ %3048, %3047 ], [ %3060, %3054 ]
  %3065 = phi ptr [ %3049, %3047 ], [ %3058, %3054 ]
  %3066 = sub i64 %3050, %2947
  %3067 = icmp ugt i64 %3066, -8
  br i1 %3067, label %3100, label %3068

3068:                                             ; preds = %3063, %3068
  %3069 = phi ptr [ %3094, %3068 ], [ %3064, %3063 ]
  %3070 = phi ptr [ %3092, %3068 ], [ %3065, %3063 ]
  %3071 = getelementptr inbounds i8, ptr %3070, i64 1
  %3072 = load i8, ptr %3070, align 1, !tbaa !31
  %3073 = getelementptr inbounds i8, ptr %3069, i64 1
  store i8 %3072, ptr %3069, align 1, !tbaa !31
  %3074 = getelementptr inbounds i8, ptr %3070, i64 2
  %3075 = load i8, ptr %3071, align 1, !tbaa !31
  %3076 = getelementptr inbounds i8, ptr %3069, i64 2
  store i8 %3075, ptr %3073, align 1, !tbaa !31
  %3077 = getelementptr inbounds i8, ptr %3070, i64 3
  %3078 = load i8, ptr %3074, align 1, !tbaa !31
  %3079 = getelementptr inbounds i8, ptr %3069, i64 3
  store i8 %3078, ptr %3076, align 1, !tbaa !31
  %3080 = getelementptr inbounds i8, ptr %3070, i64 4
  %3081 = load i8, ptr %3077, align 1, !tbaa !31
  %3082 = getelementptr inbounds i8, ptr %3069, i64 4
  store i8 %3081, ptr %3079, align 1, !tbaa !31
  %3083 = getelementptr inbounds i8, ptr %3070, i64 5
  %3084 = load i8, ptr %3080, align 1, !tbaa !31
  %3085 = getelementptr inbounds i8, ptr %3069, i64 5
  store i8 %3084, ptr %3082, align 1, !tbaa !31
  %3086 = getelementptr inbounds i8, ptr %3070, i64 6
  %3087 = load i8, ptr %3083, align 1, !tbaa !31
  %3088 = getelementptr inbounds i8, ptr %3069, i64 6
  store i8 %3087, ptr %3085, align 1, !tbaa !31
  %3089 = getelementptr inbounds i8, ptr %3070, i64 7
  %3090 = load i8, ptr %3086, align 1, !tbaa !31
  %3091 = getelementptr inbounds i8, ptr %3069, i64 7
  store i8 %3090, ptr %3088, align 1, !tbaa !31
  %3092 = getelementptr inbounds i8, ptr %3070, i64 8
  %3093 = load i8, ptr %3089, align 1, !tbaa !31
  %3094 = getelementptr inbounds i8, ptr %3069, i64 8
  store i8 %3093, ptr %3091, align 1, !tbaa !31
  %3095 = icmp eq ptr %3092, %3007
  br i1 %3095, label %3100, label %3068, !llvm.loop !134

3096:                                             ; preds = %2959, %2956
  %3097 = load ptr, ptr %2667, align 8, !tbaa !37
  %3098 = getelementptr inbounds i8, ptr %3097, i64 %2951
  store ptr %3098, ptr %2667, align 8, !tbaa !37
  %3099 = load ptr, ptr %2670, align 8, !tbaa !47
  br label %3112

3100:                                             ; preds = %2969, %3063, %3068, %3026, %3045, %2999
  %3101 = load ptr, ptr %2667, align 8, !tbaa !37
  %3102 = getelementptr inbounds i8, ptr %3101, i64 %2951
  store ptr %3102, ptr %2667, align 8, !tbaa !37
  %3103 = icmp ugt i64 %2951, 65535
  %3104 = load ptr, ptr %2670, align 8, !tbaa !47
  br i1 %3103, label %3105, label %3112, !prof !48

3105:                                             ; preds = %3100
  store i32 1, ptr %2669, align 8, !tbaa !49
  %3106 = load ptr, ptr %1, align 8, !tbaa !50
  %3107 = ptrtoint ptr %3104 to i64
  %3108 = ptrtoint ptr %3106 to i64
  %3109 = sub i64 %3107, %3108
  %3110 = lshr exact i64 %3109, 3
  %3111 = trunc i64 %3110 to i32
  store i32 %3111, ptr %2671, align 4, !tbaa !51
  br label %3112

3112:                                             ; preds = %3105, %3100, %3096
  %3113 = phi ptr [ %3099, %3096 ], [ %3104, %3105 ], [ %3104, %3100 ]
  %3114 = trunc i64 %2951 to i16
  %3115 = getelementptr inbounds %struct.SeqDef_s, ptr %3113, i64 0, i32 1
  store i16 %3114, ptr %3115, align 4, !tbaa !52
  store i32 %2952, ptr %3113, align 4, !tbaa !54
  %3116 = add i64 %2948, -3
  %3117 = icmp ugt i64 %3116, 65535
  br i1 %3117, label %3405, label %3418, !prof !55

3118:                                             ; preds = %2911, %2908, %2907
  %3119 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %2703, i32 %21, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr %2710) #7, !srcloc !29
  %3120 = load i32, ptr %2700, align 1, !tbaa !20
  %3121 = load i32, ptr %3119, align 1, !tbaa !20
  %3122 = icmp eq i32 %3120, %3121
  br i1 %3122, label %3123, label %3391

3123:                                             ; preds = %3118
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !30
  %3124 = icmp ult i32 %2703, %21
  br i1 %3124, label %3391, label %3125

3125:                                             ; preds = %3123
  %3126 = ptrtoint ptr %2710 to i64
  %3127 = sub i64 %2706, %3126
  %3128 = trunc i64 %3127 to i32
  %3129 = getelementptr inbounds i8, ptr %2700, i64 4
  %3130 = getelementptr inbounds i8, ptr %2710, i64 4
  %3131 = icmp ugt ptr %2672, %3129
  br i1 %3131, label %3132, label %3158

3132:                                             ; preds = %3125
  %3133 = load i64, ptr %3130, align 1, !tbaa !19
  %3134 = load i64, ptr %3129, align 1, !tbaa !19
  %3135 = xor i64 %3134, %3133
  %3136 = icmp eq i64 %3135, 0
  br i1 %3136, label %3140, label %3137

3137:                                             ; preds = %3132
  %3138 = tail call i64 @llvm.cttz.i64(i64 %3135, i1 true), !range !34
  %3139 = lshr i64 %3138, 3
  br label %3195

3140:                                             ; preds = %3132, %3146
  %3141 = phi ptr [ %3144, %3146 ], [ %3130, %3132 ]
  %3142 = phi ptr [ %3143, %3146 ], [ %3129, %3132 ]
  %3143 = getelementptr inbounds i8, ptr %3142, i64 8
  %3144 = getelementptr inbounds i8, ptr %3141, i64 8
  %3145 = icmp ult ptr %3143, %2672
  br i1 %3145, label %3146, label %3158

3146:                                             ; preds = %3140
  %3147 = load i64, ptr %3144, align 1, !tbaa !19
  %3148 = load i64, ptr %3143, align 1, !tbaa !19
  %3149 = xor i64 %3148, %3147
  %3150 = icmp eq i64 %3149, 0
  br i1 %3150, label %3140, label %3151

3151:                                             ; preds = %3146
  %3152 = tail call i64 @llvm.cttz.i64(i64 %3149, i1 true), !range !34
  %3153 = lshr i64 %3152, 3
  %3154 = getelementptr inbounds i8, ptr %3143, i64 %3153
  %3155 = ptrtoint ptr %3154 to i64
  %3156 = ptrtoint ptr %3129 to i64
  %3157 = sub i64 %3155, %3156
  br label %3195

3158:                                             ; preds = %3140, %3125
  %3159 = phi ptr [ %3130, %3125 ], [ %3144, %3140 ]
  %3160 = phi ptr [ %3129, %3125 ], [ %3143, %3140 ]
  %3161 = icmp ult ptr %3160, %2673
  br i1 %3161, label %3162, label %3169

3162:                                             ; preds = %3158
  %3163 = load i32, ptr %3159, align 1, !tbaa !20
  %3164 = load i32, ptr %3160, align 1, !tbaa !20
  %3165 = icmp eq i32 %3163, %3164
  br i1 %3165, label %3166, label %3169

3166:                                             ; preds = %3162
  %3167 = getelementptr inbounds i8, ptr %3160, i64 4
  %3168 = getelementptr inbounds i8, ptr %3159, i64 4
  br label %3169

3169:                                             ; preds = %3166, %3162, %3158
  %3170 = phi ptr [ %3168, %3166 ], [ %3159, %3162 ], [ %3159, %3158 ]
  %3171 = phi ptr [ %3167, %3166 ], [ %3160, %3162 ], [ %3160, %3158 ]
  %3172 = icmp ult ptr %3171, %2674
  br i1 %3172, label %3173, label %3180

3173:                                             ; preds = %3169
  %3174 = load i16, ptr %3170, align 1, !tbaa !35
  %3175 = load i16, ptr %3171, align 1, !tbaa !35
  %3176 = icmp eq i16 %3174, %3175
  br i1 %3176, label %3177, label %3180

3177:                                             ; preds = %3173
  %3178 = getelementptr inbounds i8, ptr %3171, i64 2
  %3179 = getelementptr inbounds i8, ptr %3170, i64 2
  br label %3180

3180:                                             ; preds = %3177, %3173, %3169
  %3181 = phi ptr [ %3179, %3177 ], [ %3170, %3173 ], [ %3170, %3169 ]
  %3182 = phi ptr [ %3178, %3177 ], [ %3171, %3173 ], [ %3171, %3169 ]
  %3183 = icmp ult ptr %3182, %24
  br i1 %3183, label %3184, label %3190

3184:                                             ; preds = %3180
  %3185 = load i8, ptr %3181, align 1, !tbaa !31
  %3186 = load i8, ptr %3182, align 1, !tbaa !31
  %3187 = icmp eq i8 %3185, %3186
  %3188 = zext i1 %3187 to i64
  %3189 = getelementptr inbounds i8, ptr %3182, i64 %3188
  br label %3190

3190:                                             ; preds = %3184, %3180
  %3191 = phi ptr [ %3182, %3180 ], [ %3189, %3184 ]
  %3192 = ptrtoint ptr %3191 to i64
  %3193 = ptrtoint ptr %3129 to i64
  %3194 = sub i64 %3192, %3193
  br label %3195

3195:                                             ; preds = %3190, %3151, %3137
  %3196 = phi i64 [ %3194, %3190 ], [ %3139, %3137 ], [ %3157, %3151 ]
  %3197 = add i64 %3196, 4
  %3198 = icmp ugt ptr %2700, %2681
  %3199 = icmp ugt i32 %2703, %21
  %3200 = and i1 %3198, %3199
  br i1 %3200, label %3201, label %3219

3201:                                             ; preds = %3195, %3210
  %3202 = phi ptr [ %3205, %3210 ], [ %2700, %3195 ]
  %3203 = phi i64 [ %3211, %3210 ], [ %3197, %3195 ]
  %3204 = phi ptr [ %3207, %3210 ], [ %2710, %3195 ]
  %3205 = getelementptr inbounds i8, ptr %3202, i64 -1
  %3206 = load i8, ptr %3205, align 1, !tbaa !31
  %3207 = getelementptr inbounds i8, ptr %3204, i64 -1
  %3208 = load i8, ptr %3207, align 1, !tbaa !31
  %3209 = icmp eq i8 %3206, %3208
  br i1 %3209, label %3210, label %3215

3210:                                             ; preds = %3201
  %3211 = add i64 %3203, 1
  %3212 = icmp ugt ptr %3205, %2681
  %3213 = icmp ugt ptr %3207, %23
  %3214 = and i1 %3212, %3213
  br i1 %3214, label %3201, label %3215, !llvm.loop !98

3215:                                             ; preds = %3210, %3201
  %3216 = phi i64 [ %3211, %3210 ], [ %3203, %3201 ]
  %3217 = phi ptr [ %3205, %3210 ], [ %3202, %3201 ]
  %3218 = ptrtoint ptr %3217 to i64
  br label %3219

3219:                                             ; preds = %3215, %3195
  %3220 = phi i64 [ %3218, %3215 ], [ %2706, %3195 ]
  %3221 = phi i64 [ %3216, %3215 ], [ %3197, %3195 ]
  %3222 = phi ptr [ %3217, %3215 ], [ %2700, %3195 ]
  %3223 = ptrtoint ptr %2681 to i64
  %3224 = sub i64 %3220, %3223
  %3225 = add i32 %3128, 3
  %3226 = getelementptr inbounds i8, ptr %2681, i64 %3224
  %3227 = icmp ugt ptr %3226, %2666
  %3228 = load ptr, ptr %2667, align 8, !tbaa !37
  br i1 %3227, label %3252, label %3229

3229:                                             ; preds = %3219
  %3230 = load <2 x i64>, ptr %2681, align 1, !tbaa !31
  store <2 x i64> %3230, ptr %3228, align 1, !tbaa !31
  %3231 = icmp ugt i64 %3224, 16
  br i1 %3231, label %3232, label %3369

3232:                                             ; preds = %3229
  %3233 = load ptr, ptr %2667, align 8, !tbaa !37
  %3234 = getelementptr inbounds i8, ptr %3233, i64 16
  %3235 = getelementptr inbounds i8, ptr %2681, i64 16
  %3236 = add i64 %3224, -16
  %3237 = getelementptr inbounds i8, ptr %3233, i64 %3224
  %3238 = load <2 x i64>, ptr %3235, align 1, !tbaa !31
  store <2 x i64> %3238, ptr %3234, align 1, !tbaa !31
  %3239 = icmp ult i64 %3236, 17
  br i1 %3239, label %3369, label %3240

3240:                                             ; preds = %3232
  %3241 = getelementptr inbounds i8, ptr %3233, i64 32
  br label %3242

3242:                                             ; preds = %3242, %3240
  %3243 = phi ptr [ %3241, %3240 ], [ %3250, %3242 ]
  %3244 = phi ptr [ %3235, %3240 ], [ %3248, %3242 ]
  %3245 = getelementptr inbounds i8, ptr %3244, i64 16
  %3246 = load <2 x i64>, ptr %3245, align 1, !tbaa !31
  store <2 x i64> %3246, ptr %3243, align 1, !tbaa !31
  %3247 = getelementptr inbounds i8, ptr %3243, i64 16
  %3248 = getelementptr inbounds i8, ptr %3244, i64 32
  %3249 = load <2 x i64>, ptr %3248, align 1, !tbaa !31
  store <2 x i64> %3249, ptr %3247, align 1, !tbaa !31
  %3250 = getelementptr inbounds i8, ptr %3243, i64 32
  %3251 = icmp ult ptr %3250, %3237
  br i1 %3251, label %3242, label %3373, !llvm.loop !39

3252:                                             ; preds = %3219
  %3253 = ptrtoint ptr %3226 to i64
  %3254 = icmp ugt ptr %2681, %2666
  br i1 %3254, label %3272, label %3255

3255:                                             ; preds = %3252
  %3256 = sub i64 %2668, %3223
  %3257 = getelementptr inbounds i8, ptr %3228, i64 %3256
  %3258 = load <2 x i64>, ptr %2681, align 1, !tbaa !31
  store <2 x i64> %3258, ptr %3228, align 1, !tbaa !31
  %3259 = icmp ult i64 %3256, 17
  br i1 %3259, label %3272, label %3260

3260:                                             ; preds = %3255
  %3261 = getelementptr inbounds i8, ptr %3228, i64 16
  br label %3262

3262:                                             ; preds = %3262, %3260
  %3263 = phi ptr [ %3261, %3260 ], [ %3270, %3262 ]
  %3264 = phi ptr [ %2681, %3260 ], [ %3268, %3262 ]
  %3265 = getelementptr inbounds i8, ptr %3264, i64 16
  %3266 = load <2 x i64>, ptr %3265, align 1, !tbaa !31
  store <2 x i64> %3266, ptr %3263, align 1, !tbaa !31
  %3267 = getelementptr inbounds i8, ptr %3263, i64 16
  %3268 = getelementptr inbounds i8, ptr %3264, i64 32
  %3269 = load <2 x i64>, ptr %3268, align 1, !tbaa !31
  store <2 x i64> %3269, ptr %3267, align 1, !tbaa !31
  %3270 = getelementptr inbounds i8, ptr %3263, i64 32
  %3271 = icmp ult ptr %3270, %3257
  br i1 %3271, label %3262, label %3272, !llvm.loop !39

3272:                                             ; preds = %3262, %3255, %3252
  %3273 = phi ptr [ %2666, %3255 ], [ %2681, %3252 ], [ %2666, %3262 ]
  %3274 = phi ptr [ %3257, %3255 ], [ %3228, %3252 ], [ %3257, %3262 ]
  %3275 = icmp ult ptr %3273, %3226
  br i1 %3275, label %3276, label %3373

3276:                                             ; preds = %3272
  %3277 = ptrtoint ptr %3274 to i64
  %3278 = ptrtoint ptr %3273 to i64
  %3279 = sub i64 %3253, %3278
  %3280 = getelementptr i8, ptr %3273, i64 %3279
  %3281 = icmp ult i64 %3279, 8
  %3282 = sub i64 %3277, %3278
  %3283 = icmp ult i64 %3282, 32
  %3284 = select i1 %3281, i1 true, i1 %3283
  br i1 %3284, label %3320, label %3285

3285:                                             ; preds = %3276
  %3286 = icmp ult i64 %3279, 32
  br i1 %3286, label %3306, label %3287

3287:                                             ; preds = %3285
  %3288 = and i64 %3279, -32
  br label %3289

3289:                                             ; preds = %3289, %3287
  %3290 = phi i64 [ 0, %3287 ], [ %3297, %3289 ]
  %3291 = getelementptr i8, ptr %3274, i64 %3290
  %3292 = getelementptr i8, ptr %3273, i64 %3290
  %3293 = getelementptr i8, ptr %3292, i64 16
  %3294 = load <16 x i8>, ptr %3292, align 1, !tbaa !31
  %3295 = load <16 x i8>, ptr %3293, align 1, !tbaa !31
  %3296 = getelementptr i8, ptr %3291, i64 16
  store <16 x i8> %3294, ptr %3291, align 1, !tbaa !31
  store <16 x i8> %3295, ptr %3296, align 1, !tbaa !31
  %3297 = add nuw i64 %3290, 32
  %3298 = icmp eq i64 %3297, %3288
  br i1 %3298, label %3299, label %3289, !llvm.loop !135

3299:                                             ; preds = %3289
  %3300 = icmp eq i64 %3279, %3288
  br i1 %3300, label %3373, label %3301

3301:                                             ; preds = %3299
  %3302 = getelementptr i8, ptr %3273, i64 %3288
  %3303 = getelementptr i8, ptr %3274, i64 %3288
  %3304 = and i64 %3279, 24
  %3305 = icmp eq i64 %3304, 0
  br i1 %3305, label %3320, label %3306

3306:                                             ; preds = %3285, %3301
  %3307 = phi i64 [ %3288, %3301 ], [ 0, %3285 ]
  %3308 = and i64 %3279, -8
  %3309 = getelementptr i8, ptr %3274, i64 %3308
  %3310 = getelementptr i8, ptr %3273, i64 %3308
  br label %3311

3311:                                             ; preds = %3311, %3306
  %3312 = phi i64 [ %3307, %3306 ], [ %3316, %3311 ]
  %3313 = getelementptr i8, ptr %3274, i64 %3312
  %3314 = getelementptr i8, ptr %3273, i64 %3312
  %3315 = load <8 x i8>, ptr %3314, align 1, !tbaa !31
  store <8 x i8> %3315, ptr %3313, align 1, !tbaa !31
  %3316 = add nuw i64 %3312, 8
  %3317 = icmp eq i64 %3316, %3308
  br i1 %3317, label %3318, label %3311, !llvm.loop !136

3318:                                             ; preds = %3311
  %3319 = icmp eq i64 %3279, %3308
  br i1 %3319, label %3373, label %3320

3320:                                             ; preds = %3276, %3301, %3318
  %3321 = phi ptr [ %3274, %3276 ], [ %3303, %3301 ], [ %3309, %3318 ]
  %3322 = phi ptr [ %3273, %3276 ], [ %3302, %3301 ], [ %3310, %3318 ]
  %3323 = ptrtoint ptr %3322 to i64
  %3324 = sub i64 %3220, %3323
  %3325 = and i64 %3324, 7
  %3326 = icmp eq i64 %3325, 0
  br i1 %3326, label %3336, label %3327

3327:                                             ; preds = %3320, %3327
  %3328 = phi ptr [ %3333, %3327 ], [ %3321, %3320 ]
  %3329 = phi ptr [ %3331, %3327 ], [ %3322, %3320 ]
  %3330 = phi i64 [ %3334, %3327 ], [ 0, %3320 ]
  %3331 = getelementptr inbounds i8, ptr %3329, i64 1
  %3332 = load i8, ptr %3329, align 1, !tbaa !31
  %3333 = getelementptr inbounds i8, ptr %3328, i64 1
  store i8 %3332, ptr %3328, align 1, !tbaa !31
  %3334 = add i64 %3330, 1
  %3335 = icmp eq i64 %3334, %3325
  br i1 %3335, label %3336, label %3327, !llvm.loop !137

3336:                                             ; preds = %3327, %3320
  %3337 = phi ptr [ %3321, %3320 ], [ %3333, %3327 ]
  %3338 = phi ptr [ %3322, %3320 ], [ %3331, %3327 ]
  %3339 = sub i64 %3323, %3220
  %3340 = icmp ugt i64 %3339, -8
  br i1 %3340, label %3373, label %3341

3341:                                             ; preds = %3336, %3341
  %3342 = phi ptr [ %3367, %3341 ], [ %3337, %3336 ]
  %3343 = phi ptr [ %3365, %3341 ], [ %3338, %3336 ]
  %3344 = getelementptr inbounds i8, ptr %3343, i64 1
  %3345 = load i8, ptr %3343, align 1, !tbaa !31
  %3346 = getelementptr inbounds i8, ptr %3342, i64 1
  store i8 %3345, ptr %3342, align 1, !tbaa !31
  %3347 = getelementptr inbounds i8, ptr %3343, i64 2
  %3348 = load i8, ptr %3344, align 1, !tbaa !31
  %3349 = getelementptr inbounds i8, ptr %3342, i64 2
  store i8 %3348, ptr %3346, align 1, !tbaa !31
  %3350 = getelementptr inbounds i8, ptr %3343, i64 3
  %3351 = load i8, ptr %3347, align 1, !tbaa !31
  %3352 = getelementptr inbounds i8, ptr %3342, i64 3
  store i8 %3351, ptr %3349, align 1, !tbaa !31
  %3353 = getelementptr inbounds i8, ptr %3343, i64 4
  %3354 = load i8, ptr %3350, align 1, !tbaa !31
  %3355 = getelementptr inbounds i8, ptr %3342, i64 4
  store i8 %3354, ptr %3352, align 1, !tbaa !31
  %3356 = getelementptr inbounds i8, ptr %3343, i64 5
  %3357 = load i8, ptr %3353, align 1, !tbaa !31
  %3358 = getelementptr inbounds i8, ptr %3342, i64 5
  store i8 %3357, ptr %3355, align 1, !tbaa !31
  %3359 = getelementptr inbounds i8, ptr %3343, i64 6
  %3360 = load i8, ptr %3356, align 1, !tbaa !31
  %3361 = getelementptr inbounds i8, ptr %3342, i64 6
  store i8 %3360, ptr %3358, align 1, !tbaa !31
  %3362 = getelementptr inbounds i8, ptr %3343, i64 7
  %3363 = load i8, ptr %3359, align 1, !tbaa !31
  %3364 = getelementptr inbounds i8, ptr %3342, i64 7
  store i8 %3363, ptr %3361, align 1, !tbaa !31
  %3365 = getelementptr inbounds i8, ptr %3343, i64 8
  %3366 = load i8, ptr %3362, align 1, !tbaa !31
  %3367 = getelementptr inbounds i8, ptr %3342, i64 8
  store i8 %3366, ptr %3364, align 1, !tbaa !31
  %3368 = icmp eq ptr %3365, %3280
  br i1 %3368, label %3373, label %3341, !llvm.loop !138

3369:                                             ; preds = %3232, %3229
  %3370 = load ptr, ptr %2667, align 8, !tbaa !37
  %3371 = getelementptr inbounds i8, ptr %3370, i64 %3224
  store ptr %3371, ptr %2667, align 8, !tbaa !37
  %3372 = load ptr, ptr %2670, align 8, !tbaa !47
  br label %3385

3373:                                             ; preds = %3242, %3336, %3341, %3299, %3318, %3272
  %3374 = load ptr, ptr %2667, align 8, !tbaa !37
  %3375 = getelementptr inbounds i8, ptr %3374, i64 %3224
  store ptr %3375, ptr %2667, align 8, !tbaa !37
  %3376 = icmp ugt i64 %3224, 65535
  %3377 = load ptr, ptr %2670, align 8, !tbaa !47
  br i1 %3376, label %3378, label %3385, !prof !48

3378:                                             ; preds = %3373
  store i32 1, ptr %2669, align 8, !tbaa !49
  %3379 = load ptr, ptr %1, align 8, !tbaa !50
  %3380 = ptrtoint ptr %3377 to i64
  %3381 = ptrtoint ptr %3379 to i64
  %3382 = sub i64 %3380, %3381
  %3383 = lshr exact i64 %3382, 3
  %3384 = trunc i64 %3383 to i32
  store i32 %3384, ptr %2671, align 4, !tbaa !51
  br label %3385

3385:                                             ; preds = %3378, %3373, %3369
  %3386 = phi ptr [ %3372, %3369 ], [ %3377, %3378 ], [ %3377, %3373 ]
  %3387 = trunc i64 %3224 to i16
  %3388 = getelementptr inbounds %struct.SeqDef_s, ptr %3386, i64 0, i32 1
  store i16 %3387, ptr %3388, align 4, !tbaa !52
  store i32 %3225, ptr %3386, align 4, !tbaa !54
  %3389 = add i64 %3221, -3
  %3390 = icmp ugt i64 %3389, 65535
  br i1 %3390, label %3405, label %3418, !prof !55

3391:                                             ; preds = %3123, %3118
  %3392 = icmp uge ptr %2699, %2694
  %3393 = zext i1 %3392 to i64
  %3394 = add i64 %2695, %3393
  %3395 = getelementptr inbounds i8, ptr %2699, i64 %3394
  %3396 = icmp ugt ptr %3395, %25
  br i1 %3396, label %3504, label %3397

3397:                                             ; preds = %3391
  %3398 = select i1 %3392, i64 256, i64 0
  %3399 = getelementptr inbounds i8, ptr %2694, i64 %3398
  %3400 = lshr i64 %2715, 8
  %3401 = getelementptr inbounds i32, ptr %32, i64 %3400
  %3402 = load i32, ptr %3401, align 4, !tbaa !20
  %3403 = zext i32 %3402 to i64
  %3404 = xor i64 %2715, %3403
  br label %2693

3405:                                             ; preds = %3385, %3112, %2901
  %3406 = phi ptr [ %2902, %2901 ], [ %3113, %3112 ], [ %3386, %3385 ]
  %3407 = phi i64 [ %2905, %2901 ], [ %3116, %3112 ], [ %3389, %3385 ]
  %3408 = phi i64 [ %2737, %2901 ], [ %2948, %3112 ], [ %3221, %3385 ]
  %3409 = phi i32 [ %2683, %2901 ], [ %2682, %3112 ], [ %2682, %3385 ]
  %3410 = phi i32 [ %2682, %2901 ], [ %2922, %3112 ], [ %3128, %3385 ]
  %3411 = phi ptr [ %2732, %2901 ], [ %2949, %3112 ], [ %3222, %3385 ]
  store i32 2, ptr %2669, align 8, !tbaa !49
  %3412 = load ptr, ptr %1, align 8, !tbaa !50
  %3413 = ptrtoint ptr %3406 to i64
  %3414 = ptrtoint ptr %3412 to i64
  %3415 = sub i64 %3413, %3414
  %3416 = lshr exact i64 %3415, 3
  %3417 = trunc i64 %3416 to i32
  store i32 %3417, ptr %2671, align 4, !tbaa !51
  br label %3418

3418:                                             ; preds = %3405, %3385, %3112, %2901
  %3419 = phi i64 [ %2905, %2901 ], [ %3116, %3112 ], [ %3389, %3385 ], [ %3407, %3405 ]
  %3420 = phi ptr [ %2902, %2901 ], [ %3113, %3112 ], [ %3386, %3385 ], [ %3406, %3405 ]
  %3421 = phi i64 [ %2737, %2901 ], [ %2948, %3112 ], [ %3221, %3385 ], [ %3408, %3405 ]
  %3422 = phi i32 [ %2683, %2901 ], [ %2682, %3112 ], [ %2682, %3385 ], [ %3409, %3405 ]
  %3423 = phi i32 [ %2682, %2901 ], [ %2922, %3112 ], [ %3128, %3385 ], [ %3410, %3405 ]
  %3424 = phi ptr [ %2732, %2901 ], [ %2949, %3112 ], [ %3222, %3385 ], [ %3411, %3405 ]
  %3425 = trunc i64 %3419 to i16
  %3426 = getelementptr inbounds %struct.SeqDef_s, ptr %3420, i64 0, i32 2
  store i16 %3425, ptr %3426, align 2, !tbaa !56
  %3427 = getelementptr inbounds %struct.SeqDef_s, ptr %3420, i64 1
  store ptr %3427, ptr %2670, align 8, !tbaa !47
  %3428 = getelementptr inbounds i8, ptr %3424, i64 %3421
  %3429 = icmp ugt ptr %3428, %25
  br i1 %3429, label %3498, label %3430

3430:                                             ; preds = %3418
  %3431 = add i32 %2708, 2
  %3432 = and i64 %2707, 4294967295
  %3433 = getelementptr inbounds i8, ptr %2654, i64 %3432
  %3434 = load i64, ptr %3433, align 1, !tbaa !19
  %3435 = mul i64 %3434, -3523014627193167104
  %3436 = lshr i64 %3435, %2663
  %3437 = getelementptr inbounds i32, ptr %9, i64 %3436
  store i32 %3431, ptr %3437, align 4, !tbaa !20
  %3438 = getelementptr inbounds i8, ptr %3428, i64 -2
  %3439 = ptrtoint ptr %3438 to i64
  %3440 = sub i64 %3439, %54
  %3441 = trunc i64 %3440 to i32
  %3442 = load i64, ptr %3438, align 1, !tbaa !19
  %3443 = mul i64 %3442, -3523014627193167104
  %3444 = lshr i64 %3443, %2663
  %3445 = getelementptr inbounds i32, ptr %9, i64 %3444
  store i32 %3441, ptr %3445, align 4, !tbaa !20
  br label %3446

3446:                                             ; preds = %3488, %3430
  %3447 = phi ptr [ %3427, %3430 ], [ %3491, %3488 ]
  %3448 = phi ptr [ %3428, %3430 ], [ %3496, %3488 ]
  %3449 = phi i32 [ %3423, %3430 ], [ %3450, %3488 ]
  %3450 = phi i32 [ %3422, %3430 ], [ %3449, %3488 ]
  %3451 = ptrtoint ptr %3448 to i64
  %3452 = sub i64 %3451, %54
  %3453 = trunc i64 %3452 to i32
  %3454 = sub i32 %3453, %3450
  %3455 = icmp ult i32 %3454, %21
  %3456 = zext i32 %3454 to i64
  %3457 = select i1 %3455, ptr %2677, ptr %18
  %3458 = getelementptr inbounds i8, ptr %3457, i64 %3456
  %3459 = sub i32 %3454, %21
  %3460 = icmp ugt i32 %3459, -4
  br i1 %3460, label %3498, label %3461

3461:                                             ; preds = %3446
  %3462 = load i32, ptr %3458, align 1, !tbaa !20
  %3463 = load i32, ptr %3448, align 1, !tbaa !20
  %3464 = icmp eq i32 %3462, %3463
  br i1 %3464, label %3465, label %3498

3465:                                             ; preds = %3461
  %3466 = select i1 %3455, ptr %39, ptr %24
  %3467 = getelementptr inbounds i8, ptr %3448, i64 4
  %3468 = getelementptr inbounds i8, ptr %3458, i64 4
  %3469 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %3467, ptr noundef nonnull %3468, ptr noundef %24, ptr noundef %3466, ptr noundef %23)
  %3470 = add i64 %3469, 4
  %3471 = icmp ugt ptr %3448, %2666
  br i1 %3471, label %3476, label %3472

3472:                                             ; preds = %3465
  %3473 = load ptr, ptr %2667, align 8, !tbaa !37
  %3474 = load <2 x i64>, ptr %3448, align 1, !tbaa !31
  store <2 x i64> %3474, ptr %3473, align 1, !tbaa !31
  %3475 = load ptr, ptr %2670, align 8, !tbaa !47
  br label %3476

3476:                                             ; preds = %3472, %3465
  %3477 = phi ptr [ %3447, %3465 ], [ %3475, %3472 ]
  %3478 = getelementptr inbounds %struct.SeqDef_s, ptr %3477, i64 0, i32 1
  store i16 0, ptr %3478, align 4, !tbaa !52
  store i32 1, ptr %3477, align 4, !tbaa !54
  %3479 = add i64 %3469, 1
  %3480 = icmp ugt i64 %3479, 65535
  br i1 %3480, label %3481, label %3488, !prof !55

3481:                                             ; preds = %3476
  store i32 2, ptr %2669, align 8, !tbaa !49
  %3482 = load ptr, ptr %1, align 8, !tbaa !50
  %3483 = ptrtoint ptr %3477 to i64
  %3484 = ptrtoint ptr %3482 to i64
  %3485 = sub i64 %3483, %3484
  %3486 = lshr exact i64 %3485, 3
  %3487 = trunc i64 %3486 to i32
  store i32 %3487, ptr %2671, align 4, !tbaa !51
  br label %3488

3488:                                             ; preds = %3481, %3476
  %3489 = trunc i64 %3479 to i16
  %3490 = getelementptr inbounds %struct.SeqDef_s, ptr %3477, i64 0, i32 2
  store i16 %3489, ptr %3490, align 2, !tbaa !56
  %3491 = getelementptr inbounds %struct.SeqDef_s, ptr %3477, i64 1
  store ptr %3491, ptr %2670, align 8, !tbaa !47
  %3492 = load i64, ptr %3448, align 1, !tbaa !19
  %3493 = mul i64 %3492, -3523014627193167104
  %3494 = lshr i64 %3493, %2663
  %3495 = getelementptr inbounds i32, ptr %9, i64 %3494
  store i32 %3453, ptr %3495, align 4, !tbaa !20
  %3496 = getelementptr inbounds i8, ptr %3448, i64 %3470
  %3497 = icmp ugt ptr %3496, %25
  br i1 %3497, label %3498, label %3446

3498:                                             ; preds = %3488, %3461, %3446, %3418
  %3499 = phi i32 [ %3422, %3418 ], [ %3450, %3446 ], [ %3450, %3461 ], [ %3449, %3488 ]
  %3500 = phi i32 [ %3423, %3418 ], [ %3449, %3446 ], [ %3449, %3461 ], [ %3450, %3488 ]
  %3501 = phi ptr [ %3428, %3418 ], [ %3448, %3446 ], [ %3448, %3461 ], [ %3496, %3488 ]
  %3502 = getelementptr inbounds i8, ptr %3501, i64 %19
  %3503 = icmp ugt ptr %3502, %25
  br i1 %3503, label %3504, label %2678

3504:                                             ; preds = %2637, %2530, %1776, %1669, %3498, %3391, %915, %805, %2653, %1792, %931, %68
  %3505 = phi i32 [ %26, %68 ], [ %26, %931 ], [ %26, %1792 ], [ %26, %2653 ], [ %95, %805 ], [ %917, %915 ], [ %2682, %3391 ], [ %3500, %3498 ], [ %960, %1669 ], [ %1778, %1776 ], [ %1821, %2530 ], [ %2639, %2637 ]
  %3506 = phi i32 [ %28, %68 ], [ %28, %931 ], [ %28, %1792 ], [ %28, %2653 ], [ %96, %805 ], [ %916, %915 ], [ %2683, %3391 ], [ %3499, %3498 ], [ %961, %1669 ], [ %1777, %1776 ], [ %1822, %2530 ], [ %2638, %2637 ]
  %3507 = phi ptr [ %3, %68 ], [ %3, %931 ], [ %3, %1792 ], [ %3, %2653 ], [ %94, %805 ], [ %918, %915 ], [ %2681, %3391 ], [ %3501, %3498 ], [ %959, %1669 ], [ %1779, %1776 ], [ %1820, %2530 ], [ %2640, %2637 ]
  store i32 %3505, ptr %2, align 4, !tbaa !20
  store i32 %3506, ptr %27, align 4, !tbaa !20
  %3508 = ptrtoint ptr %24 to i64
  %3509 = ptrtoint ptr %3507 to i64
  %3510 = sub i64 %3508, %3509
  ret i64 %3510
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_fast_extDict(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !24
  %8 = add i32 %7, -5
  %9 = icmp ult i32 %8, 3
  %10 = select i1 %9, i32 %7, i32 4
  %11 = tail call fastcc i64 @ZSTD_compressBlock_fast_extDict_generic(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %10)
  ret i64 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #4

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i64 @ZSTD_count_2segments(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #5 {
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %6, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = icmp ult ptr %9, %2
  %11 = select i1 %10, ptr %9, ptr %2
  %12 = getelementptr inbounds i8, ptr %11, i64 -7
  %13 = icmp ugt ptr %12, %0
  br i1 %13, label %14, label %40

14:                                               ; preds = %5
  %15 = load i64, ptr %1, align 1, !tbaa !19
  %16 = load i64, ptr %0, align 1, !tbaa !19
  %17 = xor i64 %16, %15
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = tail call i64 @llvm.cttz.i64(i64 %17, i1 true), !range !34
  %21 = lshr i64 %20, 3
  br label %79

22:                                               ; preds = %14, %28
  %23 = phi ptr [ %26, %28 ], [ %1, %14 ]
  %24 = phi ptr [ %25, %28 ], [ %0, %14 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 8
  %26 = getelementptr inbounds i8, ptr %23, i64 8
  %27 = icmp ult ptr %25, %12
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load i64, ptr %26, align 1, !tbaa !19
  %30 = load i64, ptr %25, align 1, !tbaa !19
  %31 = xor i64 %30, %29
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %22, label %33

33:                                               ; preds = %28
  %34 = tail call i64 @llvm.cttz.i64(i64 %31, i1 true), !range !34
  %35 = lshr i64 %34, 3
  %36 = getelementptr inbounds i8, ptr %25, i64 %35
  %37 = ptrtoint ptr %36 to i64
  %38 = ptrtoint ptr %0 to i64
  %39 = sub i64 %37, %38
  br label %79

40:                                               ; preds = %22, %5
  %41 = phi ptr [ %1, %5 ], [ %26, %22 ]
  %42 = phi ptr [ %0, %5 ], [ %25, %22 ]
  %43 = getelementptr inbounds i8, ptr %11, i64 -3
  %44 = icmp ult ptr %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, ptr %41, align 1, !tbaa !20
  %47 = load i32, ptr %42, align 1, !tbaa !20
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr inbounds i8, ptr %42, i64 4
  %51 = getelementptr inbounds i8, ptr %41, i64 4
  br label %52

52:                                               ; preds = %49, %45, %40
  %53 = phi ptr [ %51, %49 ], [ %41, %45 ], [ %41, %40 ]
  %54 = phi ptr [ %50, %49 ], [ %42, %45 ], [ %42, %40 ]
  %55 = getelementptr inbounds i8, ptr %11, i64 -1
  %56 = icmp ult ptr %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i16, ptr %53, align 1, !tbaa !35
  %59 = load i16, ptr %54, align 1, !tbaa !35
  %60 = icmp eq i16 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = getelementptr inbounds i8, ptr %54, i64 2
  %63 = getelementptr inbounds i8, ptr %53, i64 2
  br label %64

64:                                               ; preds = %61, %57, %52
  %65 = phi ptr [ %63, %61 ], [ %53, %57 ], [ %53, %52 ]
  %66 = phi ptr [ %62, %61 ], [ %54, %57 ], [ %54, %52 ]
  %67 = icmp ult ptr %66, %11
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i8, ptr %65, align 1, !tbaa !31
  %70 = load i8, ptr %66, align 1, !tbaa !31
  %71 = icmp eq i8 %69, %70
  %72 = zext i1 %71 to i64
  %73 = getelementptr inbounds i8, ptr %66, i64 %72
  br label %74

74:                                               ; preds = %68, %64
  %75 = phi ptr [ %66, %64 ], [ %73, %68 ]
  %76 = ptrtoint ptr %75 to i64
  %77 = ptrtoint ptr %0 to i64
  %78 = sub i64 %76, %77
  br label %79

79:                                               ; preds = %19, %33, %74
  %80 = phi i64 [ %78, %74 ], [ %21, %19 ], [ %39, %33 ]
  %81 = getelementptr inbounds i8, ptr %1, i64 %80
  %82 = icmp eq ptr %81, %3
  br i1 %82, label %83, label %155

83:                                               ; preds = %79
  %84 = getelementptr inbounds i8, ptr %0, i64 %80
  %85 = getelementptr inbounds i8, ptr %2, i64 -7
  %86 = icmp ugt ptr %85, %84
  br i1 %86, label %87, label %113

87:                                               ; preds = %83
  %88 = load i64, ptr %4, align 1, !tbaa !19
  %89 = load i64, ptr %84, align 1, !tbaa !19
  %90 = xor i64 %89, %88
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = tail call i64 @llvm.cttz.i64(i64 %90, i1 true), !range !34
  %94 = lshr i64 %93, 3
  br label %152

95:                                               ; preds = %87, %101
  %96 = phi ptr [ %99, %101 ], [ %4, %87 ]
  %97 = phi ptr [ %98, %101 ], [ %84, %87 ]
  %98 = getelementptr inbounds i8, ptr %97, i64 8
  %99 = getelementptr inbounds i8, ptr %96, i64 8
  %100 = icmp ult ptr %98, %85
  br i1 %100, label %101, label %113

101:                                              ; preds = %95
  %102 = load i64, ptr %99, align 1, !tbaa !19
  %103 = load i64, ptr %98, align 1, !tbaa !19
  %104 = xor i64 %103, %102
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %95, label %106

106:                                              ; preds = %101
  %107 = tail call i64 @llvm.cttz.i64(i64 %104, i1 true), !range !34
  %108 = lshr i64 %107, 3
  %109 = getelementptr inbounds i8, ptr %98, i64 %108
  %110 = ptrtoint ptr %109 to i64
  %111 = ptrtoint ptr %84 to i64
  %112 = sub i64 %110, %111
  br label %152

113:                                              ; preds = %95, %83
  %114 = phi ptr [ %4, %83 ], [ %99, %95 ]
  %115 = phi ptr [ %84, %83 ], [ %98, %95 ]
  %116 = getelementptr inbounds i8, ptr %2, i64 -3
  %117 = icmp ult ptr %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load i32, ptr %114, align 1, !tbaa !20
  %120 = load i32, ptr %115, align 1, !tbaa !20
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = getelementptr inbounds i8, ptr %115, i64 4
  %124 = getelementptr inbounds i8, ptr %114, i64 4
  br label %125

125:                                              ; preds = %122, %118, %113
  %126 = phi ptr [ %124, %122 ], [ %114, %118 ], [ %114, %113 ]
  %127 = phi ptr [ %123, %122 ], [ %115, %118 ], [ %115, %113 ]
  %128 = getelementptr inbounds i8, ptr %2, i64 -1
  %129 = icmp ult ptr %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load i16, ptr %126, align 1, !tbaa !35
  %132 = load i16, ptr %127, align 1, !tbaa !35
  %133 = icmp eq i16 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = getelementptr inbounds i8, ptr %127, i64 2
  %136 = getelementptr inbounds i8, ptr %126, i64 2
  br label %137

137:                                              ; preds = %134, %130, %125
  %138 = phi ptr [ %136, %134 ], [ %126, %130 ], [ %126, %125 ]
  %139 = phi ptr [ %135, %134 ], [ %127, %130 ], [ %127, %125 ]
  %140 = icmp ult ptr %139, %2
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load i8, ptr %138, align 1, !tbaa !31
  %143 = load i8, ptr %139, align 1, !tbaa !31
  %144 = icmp eq i8 %142, %143
  %145 = zext i1 %144 to i64
  %146 = getelementptr inbounds i8, ptr %139, i64 %145
  br label %147

147:                                              ; preds = %141, %137
  %148 = phi ptr [ %139, %137 ], [ %146, %141 ]
  %149 = ptrtoint ptr %148 to i64
  %150 = ptrtoint ptr %84 to i64
  %151 = sub i64 %149, %150
  br label %152

152:                                              ; preds = %92, %106, %147
  %153 = phi i64 [ %151, %147 ], [ %94, %92 ], [ %112, %106 ]
  %154 = add i64 %153, %80
  br label %155

155:                                              ; preds = %79, %152
  %156 = phi i64 [ %154, %152 ], [ %80, %79 ]
  ret i64 %156
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBlock_fast_extDict_generic(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16
  %8 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !18
  %12 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !26
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = add i32 %13, 1
  %17 = add i32 %16, %15
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !16
  %21 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !139
  %23 = ptrtoint ptr %3 to i64
  %24 = ptrtoint ptr %20 to i64
  %25 = sub i64 %23, %24
  %26 = add i64 %25, %4
  %27 = trunc i64 %26 to i32
  %28 = load i32, ptr %7, align 4, !tbaa !25
  %29 = getelementptr i8, ptr %0, i64 28
  %30 = load i32, ptr %29, align 4, !tbaa !140
  %31 = getelementptr i8, ptr %0, i64 40
  %32 = load i32, ptr %31, align 8, !tbaa !28
  %33 = shl nuw i32 1, %28
  %34 = sub i32 %27, %30
  %35 = icmp ugt i32 %34, %33
  %36 = sub i32 %27, %33
  %37 = icmp eq i32 %32, 0
  %38 = select i1 %37, i1 %35, i1 false
  %39 = select i1 %38, i32 %36, i32 %30
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %22, i64 %40
  %42 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !27
  %44 = tail call i32 @llvm.umax.i32(i32 %43, i32 %39)
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %20, i64 %45
  %47 = getelementptr inbounds i8, ptr %22, i64 %45
  %48 = getelementptr inbounds i8, ptr %3, i64 %4
  %49 = getelementptr inbounds i8, ptr %48, i64 -8
  %50 = getelementptr inbounds i32, ptr %2, i64 1
  %51 = icmp ult i32 %39, %43
  br i1 %51, label %54, label %52

52:                                               ; preds = %6
  %53 = tail call i64 @ZSTD_compressBlock_fast(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %4)
  br label %664

54:                                               ; preds = %6
  %55 = load i32, ptr %50, align 4, !tbaa !20
  %56 = load i32, ptr %2, align 4, !tbaa !20
  %57 = trunc i64 %25 to i32
  %58 = sub i32 %57, %39
  %59 = icmp ult i32 %55, %58
  %60 = select i1 %59, i32 0, i32 %55
  %61 = select i1 %59, i32 %55, i32 0
  %62 = icmp ult i32 %56, %58
  %63 = select i1 %62, i32 0, i32 %56
  %64 = select i1 %62, i32 %56, i32 0
  %65 = getelementptr inbounds i8, ptr %20, i64 2
  %66 = getelementptr inbounds i8, ptr %3, i64 %18
  %67 = getelementptr inbounds i8, ptr %66, i64 1
  %68 = icmp ult ptr %67, %49
  br i1 %68, label %69, label %277

69:                                               ; preds = %54
  %70 = sub i32 64, %11
  %71 = zext nneg i32 %70 to i64
  %72 = sub i32 32, %11
  %73 = getelementptr inbounds i8, ptr %48, i64 -32
  %74 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %75 = ptrtoint ptr %73 to i64
  %76 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %77 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %78 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  br label %79

79:                                               ; preds = %69, %657
  %80 = phi ptr [ %67, %69 ], [ %662, %657 ]
  %81 = phi ptr [ %66, %69 ], [ %661, %657 ]
  %82 = phi i32 [ %64, %69 ], [ %660, %657 ]
  %83 = phi i32 [ %61, %69 ], [ %659, %657 ]
  %84 = phi ptr [ %3, %69 ], [ %658, %657 ]
  %85 = getelementptr inbounds i8, ptr %84, i64 1
  %86 = getelementptr inbounds i8, ptr %84, i64 128
  switch i32 %5, label %115 [
    i32 8, label %108
    i32 5, label %87
    i32 6, label %94
    i32 7, label %101
  ]

87:                                               ; preds = %79
  %88 = load i64, ptr %84, align 1, !tbaa !19
  %89 = mul i64 %88, -3523014627271114752
  %90 = lshr i64 %89, %71
  %91 = load i64, ptr %85, align 1, !tbaa !19
  %92 = mul i64 %91, -3523014627271114752
  %93 = lshr i64 %92, %71
  br label %124

94:                                               ; preds = %79
  %95 = load i64, ptr %84, align 1, !tbaa !19
  %96 = mul i64 %95, -3523014627193847808
  %97 = lshr i64 %96, %71
  %98 = load i64, ptr %85, align 1, !tbaa !19
  %99 = mul i64 %98, -3523014627193847808
  %100 = lshr i64 %99, %71
  br label %124

101:                                              ; preds = %79
  %102 = load i64, ptr %84, align 1, !tbaa !19
  %103 = mul i64 %102, -3523014627193167104
  %104 = lshr i64 %103, %71
  %105 = load i64, ptr %85, align 1, !tbaa !19
  %106 = mul i64 %105, -3523014627193167104
  %107 = lshr i64 %106, %71
  br label %124

108:                                              ; preds = %79
  %109 = load i64, ptr %84, align 1, !tbaa !19
  %110 = mul i64 %109, -3523014627327384477
  %111 = lshr i64 %110, %71
  %112 = load i64, ptr %85, align 1, !tbaa !19
  %113 = mul i64 %112, -3523014627327384477
  %114 = lshr i64 %113, %71
  br label %124

115:                                              ; preds = %79
  %116 = load i32, ptr %84, align 1, !tbaa !20
  %117 = mul i32 %116, -1640531535
  %118 = lshr i32 %117, %72
  %119 = zext i32 %118 to i64
  %120 = load i32, ptr %85, align 1, !tbaa !20
  %121 = mul i32 %120, -1640531535
  %122 = lshr i32 %121, %72
  %123 = zext i32 %122 to i64
  br label %124

124:                                              ; preds = %115, %87, %94, %101, %108
  %125 = phi i64 [ %119, %115 ], [ %104, %101 ], [ %97, %94 ], [ %90, %87 ], [ %111, %108 ]
  %126 = phi i64 [ %123, %115 ], [ %107, %101 ], [ %100, %94 ], [ %93, %87 ], [ %114, %108 ]
  %127 = getelementptr inbounds i32, ptr %9, i64 %125
  %128 = load i32, ptr %127, align 4, !tbaa !20
  %129 = icmp ult i32 %128, %44
  %130 = select i1 %129, ptr %22, ptr %20
  %131 = icmp ne i32 %82, 0
  br label %132

132:                                              ; preds = %273, %124
  %133 = phi i64 [ %18, %124 ], [ %274, %273 ]
  %134 = phi ptr [ %86, %124 ], [ %275, %273 ]
  %135 = phi ptr [ %130, %124 ], [ %241, %273 ]
  %136 = phi i32 [ %128, %124 ], [ %239, %273 ]
  %137 = phi i64 [ %126, %124 ], [ %264, %273 ]
  %138 = phi i64 [ %125, %124 ], [ %220, %273 ]
  %139 = phi ptr [ %80, %124 ], [ %266, %273 ]
  %140 = phi ptr [ %81, %124 ], [ %265, %273 ]
  %141 = phi ptr [ %85, %124 ], [ %139, %273 ]
  %142 = phi ptr [ %84, %124 ], [ %140, %273 ]
  %143 = ptrtoint ptr %140 to i64
  %144 = sub i64 %143, %24
  %145 = trunc i64 %144 to i32
  %146 = sub i32 %145, %82
  %147 = icmp ult i32 %146, %44
  %148 = select i1 %147, ptr %22, ptr %20
  %149 = sub i32 %44, %146
  %150 = icmp ugt i32 %149, 3
  %151 = and i1 %131, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %132
  %153 = zext i32 %146 to i64
  %154 = getelementptr inbounds i8, ptr %148, i64 %153
  %155 = load i32, ptr %154, align 1, !tbaa !20
  br label %159

156:                                              ; preds = %132
  %157 = load i32, ptr %140, align 1, !tbaa !20
  %158 = xor i32 %157, 1
  br label %159

159:                                              ; preds = %156, %152
  %160 = phi i32 [ %155, %152 ], [ %158, %156 ]
  %161 = ptrtoint ptr %142 to i64
  %162 = sub i64 %161, %24
  %163 = trunc i64 %162 to i32
  %164 = getelementptr inbounds i32, ptr %9, i64 %138
  store i32 %163, ptr %164, align 4, !tbaa !20
  %165 = load i32, ptr %140, align 1, !tbaa !20
  %166 = icmp eq i32 %165, %160
  br i1 %166, label %167, label %180

167:                                              ; preds = %159
  %168 = zext i32 %146 to i64
  %169 = getelementptr inbounds i8, ptr %148, i64 %168
  %170 = select i1 %147, ptr %47, ptr %48
  %171 = getelementptr inbounds i8, ptr %140, i64 -1
  %172 = load i8, ptr %171, align 1, !tbaa !31
  %173 = getelementptr inbounds i8, ptr %169, i64 -1
  %174 = load i8, ptr %173, align 1, !tbaa !31
  %175 = icmp eq i8 %172, %174
  %176 = sext i1 %175 to i64
  %177 = getelementptr inbounds i8, ptr %140, i64 %176
  %178 = getelementptr inbounds i8, ptr %169, i64 %176
  %179 = select i1 %175, i64 5, i64 4
  br label %322

180:                                              ; preds = %159
  %181 = icmp ult i32 %136, %39
  br i1 %181, label %187, label %182

182:                                              ; preds = %180
  %183 = zext i32 %136 to i64
  %184 = getelementptr inbounds i8, ptr %135, i64 %183
  %185 = load i32, ptr %184, align 1, !tbaa !20
  %186 = load i32, ptr %142, align 1, !tbaa !20
  br label %190

187:                                              ; preds = %180
  %188 = load i32, ptr %142, align 1, !tbaa !20
  %189 = xor i32 %188, 1
  br label %190

190:                                              ; preds = %187, %182
  %191 = phi i32 [ %186, %182 ], [ %188, %187 ]
  %192 = phi i32 [ %185, %182 ], [ %189, %187 ]
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %291, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds i32, ptr %9, i64 %137
  %196 = load i32, ptr %195, align 4, !tbaa !20
  %197 = icmp ult i32 %196, %44
  %198 = select i1 %197, ptr %22, ptr %20
  switch i32 %5, label %199 [
    i32 8, label %215
    i32 5, label %203
    i32 6, label %207
    i32 7, label %211
  ]

199:                                              ; preds = %194
  %200 = mul i32 %165, -1640531535
  %201 = lshr i32 %200, %72
  %202 = zext i32 %201 to i64
  br label %219

203:                                              ; preds = %194
  %204 = load i64, ptr %140, align 1, !tbaa !19
  %205 = mul i64 %204, -3523014627271114752
  %206 = lshr i64 %205, %71
  br label %219

207:                                              ; preds = %194
  %208 = load i64, ptr %140, align 1, !tbaa !19
  %209 = mul i64 %208, -3523014627193847808
  %210 = lshr i64 %209, %71
  br label %219

211:                                              ; preds = %194
  %212 = load i64, ptr %140, align 1, !tbaa !19
  %213 = mul i64 %212, -3523014627193167104
  %214 = lshr i64 %213, %71
  br label %219

215:                                              ; preds = %194
  %216 = load i64, ptr %140, align 1, !tbaa !19
  %217 = mul i64 %216, -3523014627327384477
  %218 = lshr i64 %217, %71
  br label %219

219:                                              ; preds = %199, %203, %207, %211, %215
  %220 = phi i64 [ %202, %199 ], [ %214, %211 ], [ %210, %207 ], [ %206, %203 ], [ %218, %215 ]
  %221 = ptrtoint ptr %141 to i64
  %222 = sub i64 %221, %24
  %223 = trunc i64 %222 to i32
  store i32 %223, ptr %195, align 4, !tbaa !20
  %224 = icmp ult i32 %196, %39
  br i1 %224, label %230, label %225

225:                                              ; preds = %219
  %226 = zext i32 %196 to i64
  %227 = getelementptr inbounds i8, ptr %198, i64 %226
  %228 = load i32, ptr %227, align 1, !tbaa !20
  %229 = load i32, ptr %141, align 1, !tbaa !20
  br label %233

230:                                              ; preds = %219
  %231 = load i32, ptr %141, align 1, !tbaa !20
  %232 = xor i32 %231, 1
  br label %233

233:                                              ; preds = %230, %225
  %234 = phi i32 [ %229, %225 ], [ %231, %230 ]
  %235 = phi i32 [ %228, %225 ], [ %232, %230 ]
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %291, label %237

237:                                              ; preds = %233
  %238 = getelementptr inbounds i32, ptr %9, i64 %220
  %239 = load i32, ptr %238, align 4, !tbaa !20
  %240 = icmp ult i32 %239, %44
  %241 = select i1 %240, ptr %22, ptr %20
  switch i32 %5, label %242 [
    i32 8, label %259
    i32 5, label %247
    i32 6, label %251
    i32 7, label %255
  ]

242:                                              ; preds = %237
  %243 = load i32, ptr %139, align 1, !tbaa !20
  %244 = mul i32 %243, -1640531535
  %245 = lshr i32 %244, %72
  %246 = zext i32 %245 to i64
  br label %263

247:                                              ; preds = %237
  %248 = load i64, ptr %139, align 1, !tbaa !19
  %249 = mul i64 %248, -3523014627271114752
  %250 = lshr i64 %249, %71
  br label %263

251:                                              ; preds = %237
  %252 = load i64, ptr %139, align 1, !tbaa !19
  %253 = mul i64 %252, -3523014627193847808
  %254 = lshr i64 %253, %71
  br label %263

255:                                              ; preds = %237
  %256 = load i64, ptr %139, align 1, !tbaa !19
  %257 = mul i64 %256, -3523014627193167104
  %258 = lshr i64 %257, %71
  br label %263

259:                                              ; preds = %237
  %260 = load i64, ptr %139, align 1, !tbaa !19
  %261 = mul i64 %260, -3523014627327384477
  %262 = lshr i64 %261, %71
  br label %263

263:                                              ; preds = %242, %247, %251, %255, %259
  %264 = phi i64 [ %246, %242 ], [ %258, %255 ], [ %254, %251 ], [ %250, %247 ], [ %262, %259 ]
  %265 = getelementptr inbounds i8, ptr %140, i64 %133
  %266 = getelementptr inbounds i8, ptr %139, i64 %133
  %267 = icmp ult ptr %265, %134
  br i1 %267, label %273, label %268

268:                                              ; preds = %263
  %269 = add i64 %133, 1
  %270 = getelementptr inbounds i8, ptr %139, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %270, i32 0, i32 3, i32 1)
  %271 = getelementptr inbounds i8, ptr %139, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %271, i32 0, i32 3, i32 1)
  %272 = getelementptr inbounds i8, ptr %134, i64 128
  br label %273

273:                                              ; preds = %263, %268
  %274 = phi i64 [ %269, %268 ], [ %133, %263 ]
  %275 = phi ptr [ %272, %268 ], [ %134, %263 ]
  %276 = icmp ult ptr %266, %49
  br i1 %276, label %132, label %277, !llvm.loop !141

277:                                              ; preds = %657, %273, %54
  %278 = phi ptr [ %3, %54 ], [ %84, %273 ], [ %658, %657 ]
  %279 = phi i32 [ %61, %54 ], [ %83, %273 ], [ %659, %657 ]
  %280 = phi i32 [ %64, %54 ], [ %82, %273 ], [ %660, %657 ]
  %281 = icmp ne i32 %63, 0
  %282 = icmp ne i32 %280, 0
  %283 = select i1 %281, i1 %282, i1 false
  %284 = select i1 %283, i32 %63, i32 %60
  %285 = select i1 %282, i32 %280, i32 %63
  store i32 %285, ptr %2, align 4, !tbaa !20
  %286 = icmp eq i32 %279, 0
  %287 = select i1 %286, i32 %284, i32 %279
  store i32 %287, ptr %50, align 4, !tbaa !20
  %288 = ptrtoint ptr %48 to i64
  %289 = ptrtoint ptr %278 to i64
  %290 = sub i64 %288, %289
  br label %664

291:                                              ; preds = %233, %190
  %292 = phi ptr [ %135, %190 ], [ %198, %233 ]
  %293 = phi i32 [ %136, %190 ], [ %196, %233 ]
  %294 = phi i64 [ %137, %190 ], [ %220, %233 ]
  %295 = phi i32 [ %163, %190 ], [ %223, %233 ]
  %296 = phi ptr [ %141, %190 ], [ %140, %233 ]
  %297 = phi ptr [ %142, %190 ], [ %141, %233 ]
  %298 = sub i32 %295, %293
  %299 = icmp ult i32 %293, %44
  %300 = select i1 %299, ptr %41, ptr %46
  %301 = select i1 %299, ptr %47, ptr %48
  %302 = zext i32 %293 to i64
  %303 = getelementptr inbounds i8, ptr %292, i64 %302
  %304 = add i32 %298, 3
  %305 = icmp ugt ptr %297, %84
  %306 = icmp ugt ptr %303, %300
  %307 = and i1 %306, %305
  br i1 %307, label %308, label %322

308:                                              ; preds = %291, %317
  %309 = phi ptr [ %312, %317 ], [ %297, %291 ]
  %310 = phi i64 [ %318, %317 ], [ 4, %291 ]
  %311 = phi ptr [ %314, %317 ], [ %303, %291 ]
  %312 = getelementptr inbounds i8, ptr %309, i64 -1
  %313 = load i8, ptr %312, align 1, !tbaa !31
  %314 = getelementptr inbounds i8, ptr %311, i64 -1
  %315 = load i8, ptr %314, align 1, !tbaa !31
  %316 = icmp eq i8 %313, %315
  br i1 %316, label %317, label %322

317:                                              ; preds = %308
  %318 = add i64 %310, 1
  %319 = icmp ugt ptr %312, %84
  %320 = icmp ugt ptr %314, %300
  %321 = and i1 %320, %319
  br i1 %321, label %308, label %322, !llvm.loop !142

322:                                              ; preds = %317, %308, %291, %167
  %323 = phi i32 [ 1, %167 ], [ %304, %291 ], [ %304, %308 ], [ %304, %317 ]
  %324 = phi ptr [ %178, %167 ], [ %303, %291 ], [ %314, %317 ], [ %311, %308 ]
  %325 = phi i64 [ %179, %167 ], [ 4, %291 ], [ %318, %317 ], [ %310, %308 ]
  %326 = phi ptr [ %170, %167 ], [ %301, %291 ], [ %301, %308 ], [ %301, %317 ]
  %327 = phi i64 [ %137, %167 ], [ %294, %291 ], [ %294, %308 ], [ %294, %317 ]
  %328 = phi i32 [ %163, %167 ], [ %295, %291 ], [ %295, %308 ], [ %295, %317 ]
  %329 = phi ptr [ %141, %167 ], [ %296, %291 ], [ %296, %308 ], [ %296, %317 ]
  %330 = phi ptr [ %177, %167 ], [ %297, %291 ], [ %312, %317 ], [ %309, %308 ]
  %331 = phi i32 [ %83, %167 ], [ %82, %291 ], [ %82, %308 ], [ %82, %317 ]
  %332 = phi i32 [ %82, %167 ], [ %298, %291 ], [ %298, %308 ], [ %298, %317 ]
  %333 = getelementptr inbounds i8, ptr %330, i64 %325
  %334 = getelementptr inbounds i8, ptr %324, i64 %325
  %335 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef %333, ptr noundef %334, ptr noundef %48, ptr noundef %326, ptr noundef nonnull %46)
  %336 = add i64 %335, %325
  %337 = ptrtoint ptr %330 to i64
  %338 = ptrtoint ptr %84 to i64
  %339 = sub i64 %337, %338
  %340 = getelementptr inbounds i8, ptr %84, i64 %339
  %341 = icmp ugt ptr %340, %73
  %342 = load ptr, ptr %74, align 8, !tbaa !37
  br i1 %341, label %366, label %343

343:                                              ; preds = %322
  %344 = load <2 x i64>, ptr %84, align 1, !tbaa !31
  store <2 x i64> %344, ptr %342, align 1, !tbaa !31
  %345 = icmp ugt i64 %339, 16
  br i1 %345, label %346, label %483

346:                                              ; preds = %343
  %347 = load ptr, ptr %74, align 8, !tbaa !37
  %348 = getelementptr inbounds i8, ptr %347, i64 16
  %349 = getelementptr inbounds i8, ptr %84, i64 16
  %350 = add i64 %339, -16
  %351 = getelementptr inbounds i8, ptr %347, i64 %339
  %352 = load <2 x i64>, ptr %349, align 1, !tbaa !31
  store <2 x i64> %352, ptr %348, align 1, !tbaa !31
  %353 = icmp ult i64 %350, 17
  br i1 %353, label %483, label %354

354:                                              ; preds = %346
  %355 = getelementptr inbounds i8, ptr %347, i64 32
  br label %356

356:                                              ; preds = %356, %354
  %357 = phi ptr [ %355, %354 ], [ %364, %356 ]
  %358 = phi ptr [ %349, %354 ], [ %362, %356 ]
  %359 = getelementptr inbounds i8, ptr %358, i64 16
  %360 = load <2 x i64>, ptr %359, align 1, !tbaa !31
  store <2 x i64> %360, ptr %357, align 1, !tbaa !31
  %361 = getelementptr inbounds i8, ptr %357, i64 16
  %362 = getelementptr inbounds i8, ptr %358, i64 32
  %363 = load <2 x i64>, ptr %362, align 1, !tbaa !31
  store <2 x i64> %363, ptr %361, align 1, !tbaa !31
  %364 = getelementptr inbounds i8, ptr %357, i64 32
  %365 = icmp ult ptr %364, %351
  br i1 %365, label %356, label %487, !llvm.loop !39

366:                                              ; preds = %322
  %367 = ptrtoint ptr %340 to i64
  %368 = icmp ugt ptr %84, %73
  br i1 %368, label %386, label %369

369:                                              ; preds = %366
  %370 = sub i64 %75, %338
  %371 = getelementptr inbounds i8, ptr %342, i64 %370
  %372 = load <2 x i64>, ptr %84, align 1, !tbaa !31
  store <2 x i64> %372, ptr %342, align 1, !tbaa !31
  %373 = icmp ult i64 %370, 17
  br i1 %373, label %386, label %374

374:                                              ; preds = %369
  %375 = getelementptr inbounds i8, ptr %342, i64 16
  br label %376

376:                                              ; preds = %376, %374
  %377 = phi ptr [ %375, %374 ], [ %384, %376 ]
  %378 = phi ptr [ %84, %374 ], [ %382, %376 ]
  %379 = getelementptr inbounds i8, ptr %378, i64 16
  %380 = load <2 x i64>, ptr %379, align 1, !tbaa !31
  store <2 x i64> %380, ptr %377, align 1, !tbaa !31
  %381 = getelementptr inbounds i8, ptr %377, i64 16
  %382 = getelementptr inbounds i8, ptr %378, i64 32
  %383 = load <2 x i64>, ptr %382, align 1, !tbaa !31
  store <2 x i64> %383, ptr %381, align 1, !tbaa !31
  %384 = getelementptr inbounds i8, ptr %377, i64 32
  %385 = icmp ult ptr %384, %371
  br i1 %385, label %376, label %386, !llvm.loop !39

386:                                              ; preds = %376, %369, %366
  %387 = phi ptr [ %73, %369 ], [ %84, %366 ], [ %73, %376 ]
  %388 = phi ptr [ %371, %369 ], [ %342, %366 ], [ %371, %376 ]
  %389 = icmp ult ptr %387, %340
  br i1 %389, label %390, label %487

390:                                              ; preds = %386
  %391 = ptrtoint ptr %388 to i64
  %392 = ptrtoint ptr %387 to i64
  %393 = sub i64 %367, %392
  %394 = getelementptr i8, ptr %387, i64 %393
  %395 = icmp ult i64 %393, 8
  %396 = sub i64 %391, %392
  %397 = icmp ult i64 %396, 32
  %398 = select i1 %395, i1 true, i1 %397
  br i1 %398, label %434, label %399

399:                                              ; preds = %390
  %400 = icmp ult i64 %393, 32
  br i1 %400, label %420, label %401

401:                                              ; preds = %399
  %402 = and i64 %393, -32
  br label %403

403:                                              ; preds = %403, %401
  %404 = phi i64 [ 0, %401 ], [ %411, %403 ]
  %405 = getelementptr i8, ptr %388, i64 %404
  %406 = getelementptr i8, ptr %387, i64 %404
  %407 = getelementptr i8, ptr %406, i64 16
  %408 = load <16 x i8>, ptr %406, align 1, !tbaa !31
  %409 = load <16 x i8>, ptr %407, align 1, !tbaa !31
  %410 = getelementptr i8, ptr %405, i64 16
  store <16 x i8> %408, ptr %405, align 1, !tbaa !31
  store <16 x i8> %409, ptr %410, align 1, !tbaa !31
  %411 = add nuw i64 %404, 32
  %412 = icmp eq i64 %411, %402
  br i1 %412, label %413, label %403, !llvm.loop !143

413:                                              ; preds = %403
  %414 = icmp eq i64 %393, %402
  br i1 %414, label %487, label %415

415:                                              ; preds = %413
  %416 = getelementptr i8, ptr %387, i64 %402
  %417 = getelementptr i8, ptr %388, i64 %402
  %418 = and i64 %393, 24
  %419 = icmp eq i64 %418, 0
  br i1 %419, label %434, label %420

420:                                              ; preds = %399, %415
  %421 = phi i64 [ %402, %415 ], [ 0, %399 ]
  %422 = and i64 %393, -8
  %423 = getelementptr i8, ptr %388, i64 %422
  %424 = getelementptr i8, ptr %387, i64 %422
  br label %425

425:                                              ; preds = %425, %420
  %426 = phi i64 [ %421, %420 ], [ %430, %425 ]
  %427 = getelementptr i8, ptr %388, i64 %426
  %428 = getelementptr i8, ptr %387, i64 %426
  %429 = load <8 x i8>, ptr %428, align 1, !tbaa !31
  store <8 x i8> %429, ptr %427, align 1, !tbaa !31
  %430 = add nuw i64 %426, 8
  %431 = icmp eq i64 %430, %422
  br i1 %431, label %432, label %425, !llvm.loop !144

432:                                              ; preds = %425
  %433 = icmp eq i64 %393, %422
  br i1 %433, label %487, label %434

434:                                              ; preds = %390, %415, %432
  %435 = phi ptr [ %388, %390 ], [ %417, %415 ], [ %423, %432 ]
  %436 = phi ptr [ %387, %390 ], [ %416, %415 ], [ %424, %432 ]
  %437 = ptrtoint ptr %436 to i64
  %438 = sub i64 %337, %437
  %439 = and i64 %438, 7
  %440 = icmp eq i64 %439, 0
  br i1 %440, label %450, label %441

441:                                              ; preds = %434, %441
  %442 = phi ptr [ %447, %441 ], [ %435, %434 ]
  %443 = phi ptr [ %445, %441 ], [ %436, %434 ]
  %444 = phi i64 [ %448, %441 ], [ 0, %434 ]
  %445 = getelementptr inbounds i8, ptr %443, i64 1
  %446 = load i8, ptr %443, align 1, !tbaa !31
  %447 = getelementptr inbounds i8, ptr %442, i64 1
  store i8 %446, ptr %442, align 1, !tbaa !31
  %448 = add i64 %444, 1
  %449 = icmp eq i64 %448, %439
  br i1 %449, label %450, label %441, !llvm.loop !145

450:                                              ; preds = %441, %434
  %451 = phi ptr [ %435, %434 ], [ %447, %441 ]
  %452 = phi ptr [ %436, %434 ], [ %445, %441 ]
  %453 = sub i64 %437, %337
  %454 = icmp ugt i64 %453, -8
  br i1 %454, label %487, label %455

455:                                              ; preds = %450, %455
  %456 = phi ptr [ %481, %455 ], [ %451, %450 ]
  %457 = phi ptr [ %479, %455 ], [ %452, %450 ]
  %458 = getelementptr inbounds i8, ptr %457, i64 1
  %459 = load i8, ptr %457, align 1, !tbaa !31
  %460 = getelementptr inbounds i8, ptr %456, i64 1
  store i8 %459, ptr %456, align 1, !tbaa !31
  %461 = getelementptr inbounds i8, ptr %457, i64 2
  %462 = load i8, ptr %458, align 1, !tbaa !31
  %463 = getelementptr inbounds i8, ptr %456, i64 2
  store i8 %462, ptr %460, align 1, !tbaa !31
  %464 = getelementptr inbounds i8, ptr %457, i64 3
  %465 = load i8, ptr %461, align 1, !tbaa !31
  %466 = getelementptr inbounds i8, ptr %456, i64 3
  store i8 %465, ptr %463, align 1, !tbaa !31
  %467 = getelementptr inbounds i8, ptr %457, i64 4
  %468 = load i8, ptr %464, align 1, !tbaa !31
  %469 = getelementptr inbounds i8, ptr %456, i64 4
  store i8 %468, ptr %466, align 1, !tbaa !31
  %470 = getelementptr inbounds i8, ptr %457, i64 5
  %471 = load i8, ptr %467, align 1, !tbaa !31
  %472 = getelementptr inbounds i8, ptr %456, i64 5
  store i8 %471, ptr %469, align 1, !tbaa !31
  %473 = getelementptr inbounds i8, ptr %457, i64 6
  %474 = load i8, ptr %470, align 1, !tbaa !31
  %475 = getelementptr inbounds i8, ptr %456, i64 6
  store i8 %474, ptr %472, align 1, !tbaa !31
  %476 = getelementptr inbounds i8, ptr %457, i64 7
  %477 = load i8, ptr %473, align 1, !tbaa !31
  %478 = getelementptr inbounds i8, ptr %456, i64 7
  store i8 %477, ptr %475, align 1, !tbaa !31
  %479 = getelementptr inbounds i8, ptr %457, i64 8
  %480 = load i8, ptr %476, align 1, !tbaa !31
  %481 = getelementptr inbounds i8, ptr %456, i64 8
  store i8 %480, ptr %478, align 1, !tbaa !31
  %482 = icmp eq ptr %479, %394
  br i1 %482, label %487, label %455, !llvm.loop !146

483:                                              ; preds = %346, %343
  %484 = load ptr, ptr %74, align 8, !tbaa !37
  %485 = getelementptr inbounds i8, ptr %484, i64 %339
  store ptr %485, ptr %74, align 8, !tbaa !37
  %486 = load ptr, ptr %77, align 8, !tbaa !47
  br label %499

487:                                              ; preds = %356, %450, %455, %413, %432, %386
  %488 = load ptr, ptr %74, align 8, !tbaa !37
  %489 = getelementptr inbounds i8, ptr %488, i64 %339
  store ptr %489, ptr %74, align 8, !tbaa !37
  %490 = icmp ugt i64 %339, 65535
  %491 = load ptr, ptr %77, align 8, !tbaa !47
  br i1 %490, label %492, label %499, !prof !48

492:                                              ; preds = %487
  store i32 1, ptr %76, align 8, !tbaa !49
  %493 = load ptr, ptr %1, align 8, !tbaa !50
  %494 = ptrtoint ptr %491 to i64
  %495 = ptrtoint ptr %493 to i64
  %496 = sub i64 %494, %495
  %497 = lshr exact i64 %496, 3
  %498 = trunc i64 %497 to i32
  store i32 %498, ptr %78, align 4, !tbaa !51
  br label %499

499:                                              ; preds = %483, %492, %487
  %500 = phi ptr [ %486, %483 ], [ %491, %492 ], [ %491, %487 ]
  %501 = trunc i64 %339 to i16
  %502 = getelementptr inbounds %struct.SeqDef_s, ptr %500, i64 0, i32 1
  store i16 %501, ptr %502, align 4, !tbaa !52
  store i32 %323, ptr %500, align 4, !tbaa !54
  %503 = add i64 %336, -3
  %504 = icmp ugt i64 %503, 65535
  br i1 %504, label %505, label %512, !prof !55

505:                                              ; preds = %499
  store i32 2, ptr %76, align 8, !tbaa !49
  %506 = load ptr, ptr %1, align 8, !tbaa !50
  %507 = ptrtoint ptr %500 to i64
  %508 = ptrtoint ptr %506 to i64
  %509 = sub i64 %507, %508
  %510 = lshr exact i64 %509, 3
  %511 = trunc i64 %510 to i32
  store i32 %511, ptr %78, align 4, !tbaa !51
  br label %512

512:                                              ; preds = %499, %505
  %513 = trunc i64 %503 to i16
  %514 = getelementptr inbounds %struct.SeqDef_s, ptr %500, i64 0, i32 2
  store i16 %513, ptr %514, align 2, !tbaa !56
  %515 = getelementptr inbounds %struct.SeqDef_s, ptr %500, i64 1
  store ptr %515, ptr %77, align 8, !tbaa !47
  %516 = getelementptr inbounds i8, ptr %330, i64 %336
  %517 = icmp ult ptr %329, %516
  br i1 %517, label %518, label %523

518:                                              ; preds = %512
  %519 = ptrtoint ptr %329 to i64
  %520 = sub i64 %519, %24
  %521 = trunc i64 %520 to i32
  %522 = getelementptr inbounds i32, ptr %9, i64 %327
  store i32 %521, ptr %522, align 4, !tbaa !20
  br label %523

523:                                              ; preds = %518, %512
  %524 = icmp ugt ptr %516, %49
  br i1 %524, label %657, label %525

525:                                              ; preds = %523
  %526 = add i32 %328, 2
  %527 = zext i32 %328 to i64
  %528 = getelementptr inbounds i8, ptr %65, i64 %527
  switch i32 %5, label %565 [
    i32 8, label %556
    i32 5, label %529
    i32 6, label %538
    i32 7, label %547
  ]

529:                                              ; preds = %525
  %530 = load i64, ptr %528, align 1, !tbaa !19
  %531 = mul i64 %530, -3523014627271114752
  %532 = lshr i64 %531, %71
  %533 = getelementptr inbounds i32, ptr %9, i64 %532
  store i32 %526, ptr %533, align 4, !tbaa !20
  %534 = getelementptr inbounds i8, ptr %516, i64 -2
  %535 = load i64, ptr %534, align 1, !tbaa !19
  %536 = mul i64 %535, -3523014627271114752
  %537 = lshr i64 %536, %71
  br label %576

538:                                              ; preds = %525
  %539 = load i64, ptr %528, align 1, !tbaa !19
  %540 = mul i64 %539, -3523014627193847808
  %541 = lshr i64 %540, %71
  %542 = getelementptr inbounds i32, ptr %9, i64 %541
  store i32 %526, ptr %542, align 4, !tbaa !20
  %543 = getelementptr inbounds i8, ptr %516, i64 -2
  %544 = load i64, ptr %543, align 1, !tbaa !19
  %545 = mul i64 %544, -3523014627193847808
  %546 = lshr i64 %545, %71
  br label %576

547:                                              ; preds = %525
  %548 = load i64, ptr %528, align 1, !tbaa !19
  %549 = mul i64 %548, -3523014627193167104
  %550 = lshr i64 %549, %71
  %551 = getelementptr inbounds i32, ptr %9, i64 %550
  store i32 %526, ptr %551, align 4, !tbaa !20
  %552 = getelementptr inbounds i8, ptr %516, i64 -2
  %553 = load i64, ptr %552, align 1, !tbaa !19
  %554 = mul i64 %553, -3523014627193167104
  %555 = lshr i64 %554, %71
  br label %576

556:                                              ; preds = %525
  %557 = load i64, ptr %528, align 1, !tbaa !19
  %558 = mul i64 %557, -3523014627327384477
  %559 = lshr i64 %558, %71
  %560 = getelementptr inbounds i32, ptr %9, i64 %559
  store i32 %526, ptr %560, align 4, !tbaa !20
  %561 = getelementptr inbounds i8, ptr %516, i64 -2
  %562 = load i64, ptr %561, align 1, !tbaa !19
  %563 = mul i64 %562, -3523014627327384477
  %564 = lshr i64 %563, %71
  br label %576

565:                                              ; preds = %525
  %566 = load i32, ptr %528, align 1, !tbaa !20
  %567 = mul i32 %566, -1640531535
  %568 = lshr i32 %567, %72
  %569 = zext i32 %568 to i64
  %570 = getelementptr inbounds i32, ptr %9, i64 %569
  store i32 %526, ptr %570, align 4, !tbaa !20
  %571 = getelementptr inbounds i8, ptr %516, i64 -2
  %572 = load i32, ptr %571, align 1, !tbaa !20
  %573 = mul i32 %572, -1640531535
  %574 = lshr i32 %573, %72
  %575 = zext i32 %574 to i64
  br label %576

576:                                              ; preds = %556, %547, %538, %529, %565
  %577 = phi ptr [ %571, %565 ], [ %552, %547 ], [ %543, %538 ], [ %534, %529 ], [ %561, %556 ]
  %578 = phi i64 [ %575, %565 ], [ %555, %547 ], [ %546, %538 ], [ %537, %529 ], [ %564, %556 ]
  %579 = ptrtoint ptr %577 to i64
  %580 = sub i64 %579, %24
  %581 = trunc i64 %580 to i32
  %582 = getelementptr inbounds i32, ptr %9, i64 %578
  store i32 %581, ptr %582, align 4, !tbaa !20
  br label %583

583:                                              ; preds = %576, %652
  %584 = phi ptr [ %630, %652 ], [ %515, %576 ]
  %585 = phi i32 [ %586, %652 ], [ %332, %576 ]
  %586 = phi i32 [ %585, %652 ], [ %331, %576 ]
  %587 = phi ptr [ %655, %652 ], [ %516, %576 ]
  %588 = ptrtoint ptr %587 to i64
  %589 = sub i64 %588, %24
  %590 = trunc i64 %589 to i32
  %591 = sub i32 %590, %586
  %592 = icmp ult i32 %591, %44
  %593 = zext i32 %591 to i64
  %594 = select i1 %592, ptr %22, ptr %20
  %595 = getelementptr inbounds i8, ptr %594, i64 %593
  %596 = sub i32 %591, %44
  %597 = icmp ugt i32 %596, -4
  %598 = icmp eq i32 %586, 0
  %599 = select i1 %598, i1 true, i1 %597
  br i1 %599, label %657, label %600

600:                                              ; preds = %583
  %601 = load i32, ptr %595, align 1, !tbaa !20
  %602 = load i32, ptr %587, align 1, !tbaa !20
  %603 = icmp eq i32 %601, %602
  br i1 %603, label %604, label %657

604:                                              ; preds = %600
  %605 = select i1 %592, ptr %47, ptr %48
  %606 = getelementptr inbounds i8, ptr %587, i64 4
  %607 = getelementptr inbounds i8, ptr %595, i64 4
  %608 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %606, ptr noundef nonnull %607, ptr noundef %48, ptr noundef %605, ptr noundef nonnull %46)
  %609 = add i64 %608, 4
  %610 = icmp ugt ptr %587, %73
  br i1 %610, label %615, label %611

611:                                              ; preds = %604
  %612 = load ptr, ptr %74, align 8, !tbaa !37
  %613 = load <2 x i64>, ptr %587, align 1, !tbaa !31
  store <2 x i64> %613, ptr %612, align 1, !tbaa !31
  %614 = load ptr, ptr %77, align 8, !tbaa !47
  br label %615

615:                                              ; preds = %604, %611
  %616 = phi ptr [ %584, %604 ], [ %614, %611 ]
  %617 = getelementptr inbounds %struct.SeqDef_s, ptr %616, i64 0, i32 1
  store i16 0, ptr %617, align 4, !tbaa !52
  store i32 1, ptr %616, align 4, !tbaa !54
  %618 = add i64 %608, 1
  %619 = icmp ugt i64 %618, 65535
  br i1 %619, label %620, label %627, !prof !55

620:                                              ; preds = %615
  store i32 2, ptr %76, align 8, !tbaa !49
  %621 = load ptr, ptr %1, align 8, !tbaa !50
  %622 = ptrtoint ptr %616 to i64
  %623 = ptrtoint ptr %621 to i64
  %624 = sub i64 %622, %623
  %625 = lshr exact i64 %624, 3
  %626 = trunc i64 %625 to i32
  store i32 %626, ptr %78, align 4, !tbaa !51
  br label %627

627:                                              ; preds = %615, %620
  %628 = trunc i64 %618 to i16
  %629 = getelementptr inbounds %struct.SeqDef_s, ptr %616, i64 0, i32 2
  store i16 %628, ptr %629, align 2, !tbaa !56
  %630 = getelementptr inbounds %struct.SeqDef_s, ptr %616, i64 1
  store ptr %630, ptr %77, align 8, !tbaa !47
  switch i32 %5, label %631 [
    i32 8, label %648
    i32 5, label %636
    i32 6, label %640
    i32 7, label %644
  ]

631:                                              ; preds = %627
  %632 = load i32, ptr %587, align 1, !tbaa !20
  %633 = mul i32 %632, -1640531535
  %634 = lshr i32 %633, %72
  %635 = zext i32 %634 to i64
  br label %652

636:                                              ; preds = %627
  %637 = load i64, ptr %587, align 1, !tbaa !19
  %638 = mul i64 %637, -3523014627271114752
  %639 = lshr i64 %638, %71
  br label %652

640:                                              ; preds = %627
  %641 = load i64, ptr %587, align 1, !tbaa !19
  %642 = mul i64 %641, -3523014627193847808
  %643 = lshr i64 %642, %71
  br label %652

644:                                              ; preds = %627
  %645 = load i64, ptr %587, align 1, !tbaa !19
  %646 = mul i64 %645, -3523014627193167104
  %647 = lshr i64 %646, %71
  br label %652

648:                                              ; preds = %627
  %649 = load i64, ptr %587, align 1, !tbaa !19
  %650 = mul i64 %649, -3523014627327384477
  %651 = lshr i64 %650, %71
  br label %652

652:                                              ; preds = %648, %644, %640, %636, %631
  %653 = phi i64 [ %635, %631 ], [ %647, %644 ], [ %643, %640 ], [ %639, %636 ], [ %651, %648 ]
  %654 = getelementptr inbounds i32, ptr %9, i64 %653
  store i32 %590, ptr %654, align 4, !tbaa !20
  %655 = getelementptr inbounds i8, ptr %587, i64 %609
  %656 = icmp ugt ptr %655, %49
  br i1 %656, label %657, label %583

657:                                              ; preds = %652, %600, %583, %523
  %658 = phi ptr [ %516, %523 ], [ %655, %652 ], [ %587, %600 ], [ %587, %583 ]
  %659 = phi i32 [ %331, %523 ], [ %585, %652 ], [ %586, %600 ], [ %586, %583 ]
  %660 = phi i32 [ %332, %523 ], [ %586, %652 ], [ %585, %600 ], [ %585, %583 ]
  %661 = getelementptr inbounds i8, ptr %658, i64 %18
  %662 = getelementptr inbounds i8, ptr %661, i64 1
  %663 = icmp ult ptr %662, %49
  br i1 %663, label %79, label %277

664:                                              ; preds = %277, %52
  %665 = phi i64 [ %53, %52 ], [ %290, %277 ]
  ret i64 %665
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !8, i64 112}
!6 = !{!"ZSTD_MatchState_t", !7, i64 0, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !8, i64 56, !9, i64 64, !12, i64 96, !11, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !11, i64 136, !11, i64 140, !13, i64 144, !8, i64 248, !14, i64 256, !8, i64 288, !11, i64 296, !11, i64 300}
!7 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 28, !11, i64 32}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !8, i64 88, !11, i64 96}
!14 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24}
!15 = !{!14, !11, i64 16}
!16 = !{!6, !8, i64 8}
!17 = !{!6, !11, i64 44}
!18 = !{!14, !11, i64 8}
!19 = !{!12, !12, i64 0}
!20 = !{!11, !11, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = !{!6, !11, i64 272}
!25 = !{!14, !11, i64 0}
!26 = !{!14, !11, i64 20}
!27 = !{!6, !11, i64 24}
!28 = !{!6, !11, i64 40}
!29 = !{i64 77378, i64 77402}
!30 = !{i64 5222}
!31 = !{!9, !9, i64 0}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22}
!34 = !{i64 0, i64 65}
!35 = !{!36, !36, i64 0}
!36 = !{!"short", !9, i64 0}
!37 = !{!38, !8, i64 24}
!38 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !12, i64 56, !12, i64 64, !11, i64 72, !11, i64 76}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !22, !41, !42}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = distinct !{!43, !22, !41, !42}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = distinct !{!46, !22, !41}
!47 = !{!38, !8, i64 8}
!48 = !{!"branch_weights", i32 1717128, i32 2145766520}
!49 = !{!38, !11, i64 72}
!50 = !{!38, !8, i64 0}
!51 = !{!38, !11, i64 76}
!52 = !{!53, !36, i64 4}
!53 = !{!"SeqDef_s", !11, i64 0, !36, i64 4, !36, i64 6}
!54 = !{!53, !11, i64 0}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{!53, !36, i64 6}
!57 = distinct !{!57, !22, !41, !42}
!58 = distinct !{!58, !22, !41, !42}
!59 = distinct !{!59, !45}
!60 = distinct !{!60, !22, !41}
!61 = distinct !{!61, !22, !41, !42}
!62 = distinct !{!62, !22, !41, !42}
!63 = distinct !{!63, !45}
!64 = distinct !{!64, !22, !41}
!65 = distinct !{!65, !22, !41, !42}
!66 = distinct !{!66, !22, !41, !42}
!67 = distinct !{!67, !45}
!68 = distinct !{!68, !22, !41}
!69 = distinct !{!69, !22, !41, !42}
!70 = distinct !{!70, !22, !41, !42}
!71 = distinct !{!71, !45}
!72 = distinct !{!72, !22, !41}
!73 = distinct !{!73, !22, !41, !42}
!74 = distinct !{!74, !22, !41, !42}
!75 = distinct !{!75, !45}
!76 = distinct !{!76, !22, !41}
!77 = distinct !{!77, !22, !41, !42}
!78 = distinct !{!78, !22, !41, !42}
!79 = distinct !{!79, !45}
!80 = distinct !{!80, !22, !41}
!81 = distinct !{!81, !22, !41, !42}
!82 = distinct !{!82, !22, !41, !42}
!83 = distinct !{!83, !45}
!84 = distinct !{!84, !22, !41}
!85 = !{!6, !8, i64 248}
!86 = !{!6, !8, i64 0}
!87 = !{!6, !11, i64 296}
!88 = distinct !{!88, !22}
!89 = distinct !{!89, !22, !41, !42}
!90 = distinct !{!90, !22, !41, !42}
!91 = distinct !{!91, !45}
!92 = distinct !{!92, !22, !41}
!93 = distinct !{!93, !22}
!94 = distinct !{!94, !22, !41, !42}
!95 = distinct !{!95, !22, !41, !42}
!96 = distinct !{!96, !45}
!97 = distinct !{!97, !22, !41}
!98 = distinct !{!98, !22}
!99 = distinct !{!99, !22, !41, !42}
!100 = distinct !{!100, !22, !41, !42}
!101 = distinct !{!101, !45}
!102 = distinct !{!102, !22, !41}
!103 = distinct !{!103, !22, !41, !42}
!104 = distinct !{!104, !22, !41, !42}
!105 = distinct !{!105, !45}
!106 = distinct !{!106, !22, !41}
!107 = distinct !{!107, !22, !41, !42}
!108 = distinct !{!108, !22, !41, !42}
!109 = distinct !{!109, !45}
!110 = distinct !{!110, !22, !41}
!111 = distinct !{!111, !22, !41, !42}
!112 = distinct !{!112, !22, !41, !42}
!113 = distinct !{!113, !45}
!114 = distinct !{!114, !22, !41}
!115 = distinct !{!115, !22, !41, !42}
!116 = distinct !{!116, !22, !41, !42}
!117 = distinct !{!117, !45}
!118 = distinct !{!118, !22, !41}
!119 = distinct !{!119, !22, !41, !42}
!120 = distinct !{!120, !22, !41, !42}
!121 = distinct !{!121, !45}
!122 = distinct !{!122, !22, !41}
!123 = distinct !{!123, !22, !41, !42}
!124 = distinct !{!124, !22, !41, !42}
!125 = distinct !{!125, !45}
!126 = distinct !{!126, !22, !41}
!127 = distinct !{!127, !22, !41, !42}
!128 = distinct !{!128, !22, !41, !42}
!129 = distinct !{!129, !45}
!130 = distinct !{!130, !22, !41}
!131 = distinct !{!131, !22, !41, !42}
!132 = distinct !{!132, !22, !41, !42}
!133 = distinct !{!133, !45}
!134 = distinct !{!134, !22, !41}
!135 = distinct !{!135, !22, !41, !42}
!136 = distinct !{!136, !22, !41, !42}
!137 = distinct !{!137, !45}
!138 = distinct !{!138, !22, !41}
!139 = !{!6, !8, i64 16}
!140 = !{!6, !11, i64 28}
!141 = distinct !{!141, !22}
!142 = distinct !{!142, !22}
!143 = distinct !{!143, !22, !41, !42}
!144 = distinct !{!144, !22, !41, !42}
!145 = distinct !{!145, !45}
!146 = distinct !{!146, !22, !41}
