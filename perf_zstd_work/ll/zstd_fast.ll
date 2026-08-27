; ModuleID = '/mydata/zstd/lib/compress/zstd_fast.c'
source_filename = "/mydata/zstd/lib/compress/zstd_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_match4Found_cmov.dummy = internal constant [4 x i8] c"\124Vx", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ZSTD_fillHashTable(ptr noundef readonly captures(none) %0, ptr noundef readnone captures(address) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %3, 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %9 = load i32, ptr %8, align 4, !tbaa !18
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !20
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = getelementptr inbounds i8, ptr %1, i64 -6
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 3
  %18 = icmp ult ptr %17, %16
  br i1 %5, label %19, label %233

19:                                               ; preds = %4
  br i1 %18, label %20, label %436

20:                                               ; preds = %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %22 = load i32, ptr %21, align 4, !tbaa !21
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
  %35 = load i64, ptr %31, align 1, !tbaa !22
  %36 = mul i64 %35, -3523014627327384477
  %37 = lshr i64 %36, %25
  %38 = lshr i64 %37, 8
  %39 = trunc i64 %37 to i32
  %40 = and i32 %39, 255
  %41 = shl i32 %34, 8
  %42 = or disjoint i32 %40, %41
  %43 = getelementptr inbounds nuw i32, ptr %7, i64 %38
  store i32 %42, ptr %43, align 4, !tbaa !23
  %44 = getelementptr inbounds nuw i8, ptr %30, i64 3
  %45 = icmp ult ptr %44, %16
  br i1 %45, label %29, label %436, !llvm.loop !24

46:                                               ; preds = %28, %46
  %47 = phi ptr [ %61, %46 ], [ %17, %28 ]
  %48 = phi ptr [ %47, %46 ], [ %15, %28 ]
  %49 = ptrtoint ptr %48 to i64
  %50 = sub i64 %49, %23
  %51 = trunc i64 %50 to i32
  %52 = load i64, ptr %48, align 1, !tbaa !22
  %53 = mul i64 %52, -3523014627271114752
  %54 = lshr i64 %53, %25
  %55 = lshr i64 %54, 8
  %56 = trunc i64 %54 to i32
  %57 = and i32 %56, 255
  %58 = shl i32 %51, 8
  %59 = or disjoint i32 %57, %58
  %60 = getelementptr inbounds nuw i32, ptr %7, i64 %55
  store i32 %59, ptr %60, align 4, !tbaa !23
  %61 = getelementptr inbounds nuw i8, ptr %47, i64 3
  %62 = icmp ult ptr %61, %16
  br i1 %62, label %46, label %436, !llvm.loop !24

63:                                               ; preds = %28, %63
  %64 = phi ptr [ %78, %63 ], [ %17, %28 ]
  %65 = phi ptr [ %64, %63 ], [ %15, %28 ]
  %66 = ptrtoint ptr %65 to i64
  %67 = sub i64 %66, %23
  %68 = trunc i64 %67 to i32
  %69 = load i64, ptr %65, align 1, !tbaa !22
  %70 = mul i64 %69, -3523014627193847808
  %71 = lshr i64 %70, %25
  %72 = lshr i64 %71, 8
  %73 = trunc i64 %71 to i32
  %74 = and i32 %73, 255
  %75 = shl i32 %68, 8
  %76 = or disjoint i32 %74, %75
  %77 = getelementptr inbounds nuw i32, ptr %7, i64 %72
  store i32 %76, ptr %77, align 4, !tbaa !23
  %78 = getelementptr inbounds nuw i8, ptr %64, i64 3
  %79 = icmp ult ptr %78, %16
  br i1 %79, label %63, label %436, !llvm.loop !24

80:                                               ; preds = %28, %80
  %81 = phi ptr [ %95, %80 ], [ %17, %28 ]
  %82 = phi ptr [ %81, %80 ], [ %15, %28 ]
  %83 = ptrtoint ptr %82 to i64
  %84 = sub i64 %83, %23
  %85 = trunc i64 %84 to i32
  %86 = load i64, ptr %82, align 1, !tbaa !22
  %87 = mul i64 %86, -3523014627193167104
  %88 = lshr i64 %87, %25
  %89 = lshr i64 %88, 8
  %90 = trunc i64 %88 to i32
  %91 = and i32 %90, 255
  %92 = shl i32 %85, 8
  %93 = or disjoint i32 %91, %92
  %94 = getelementptr inbounds nuw i32, ptr %7, i64 %89
  store i32 %93, ptr %94, align 4, !tbaa !23
  %95 = getelementptr inbounds nuw i8, ptr %81, i64 3
  %96 = icmp ult ptr %95, %16
  br i1 %96, label %80, label %436, !llvm.loop !24

97:                                               ; preds = %28, %97
  %98 = phi ptr [ %112, %97 ], [ %17, %28 ]
  %99 = phi ptr [ %98, %97 ], [ %15, %28 ]
  %100 = ptrtoint ptr %99 to i64
  %101 = sub i64 %100, %23
  %102 = trunc i64 %101 to i32
  %103 = load i32, ptr %99, align 1, !tbaa !23
  %104 = mul i32 %103, -1640531535
  %105 = lshr i32 %104, %26
  %106 = lshr i32 %105, 8
  %107 = zext nneg i32 %106 to i64
  %108 = and i32 %105, 255
  %109 = shl i32 %102, 8
  %110 = or disjoint i32 %108, %109
  %111 = getelementptr inbounds nuw i32, ptr %7, i64 %107
  store i32 %110, ptr %111, align 4, !tbaa !23
  %112 = getelementptr inbounds nuw i8, ptr %98, i64 3
  %113 = icmp ult ptr %112, %16
  br i1 %113, label %97, label %436, !llvm.loop !24

114:                                              ; preds = %20, %230
  %115 = phi ptr [ %231, %230 ], [ %17, %20 ]
  %116 = phi ptr [ %115, %230 ], [ %15, %20 ]
  %117 = ptrtoint ptr %116 to i64
  %118 = sub i64 %117, %23
  %119 = trunc i64 %118 to i32
  %120 = shl i32 %119, 8
  %121 = getelementptr inbounds nuw i8, ptr %116, i64 1
  switch i32 %9, label %170 [
    i32 8, label %158
    i32 5, label %122
    i32 6, label %134
    i32 7, label %146
  ]

122:                                              ; preds = %114
  %123 = load i64, ptr %116, align 1, !tbaa !22
  %124 = mul i64 %123, -3523014627271114752
  %125 = lshr i64 %124, %25
  %126 = lshr i64 %125, 8
  %127 = trunc i64 %125 to i32
  %128 = and i32 %127, 255
  %129 = or disjoint i32 %128, %120
  %130 = getelementptr inbounds nuw i32, ptr %7, i64 %126
  store i32 %129, ptr %130, align 4, !tbaa !23
  %131 = load i64, ptr %121, align 1, !tbaa !22
  %132 = mul i64 %131, -3523014627271114752
  %133 = lshr i64 %132, %25
  br label %183

134:                                              ; preds = %114
  %135 = load i64, ptr %116, align 1, !tbaa !22
  %136 = mul i64 %135, -3523014627193847808
  %137 = lshr i64 %136, %25
  %138 = lshr i64 %137, 8
  %139 = trunc i64 %137 to i32
  %140 = and i32 %139, 255
  %141 = or disjoint i32 %140, %120
  %142 = getelementptr inbounds nuw i32, ptr %7, i64 %138
  store i32 %141, ptr %142, align 4, !tbaa !23
  %143 = load i64, ptr %121, align 1, !tbaa !22
  %144 = mul i64 %143, -3523014627193847808
  %145 = lshr i64 %144, %25
  br label %183

146:                                              ; preds = %114
  %147 = load i64, ptr %116, align 1, !tbaa !22
  %148 = mul i64 %147, -3523014627193167104
  %149 = lshr i64 %148, %25
  %150 = lshr i64 %149, 8
  %151 = trunc i64 %149 to i32
  %152 = and i32 %151, 255
  %153 = or disjoint i32 %152, %120
  %154 = getelementptr inbounds nuw i32, ptr %7, i64 %150
  store i32 %153, ptr %154, align 4, !tbaa !23
  %155 = load i64, ptr %121, align 1, !tbaa !22
  %156 = mul i64 %155, -3523014627193167104
  %157 = lshr i64 %156, %25
  br label %183

158:                                              ; preds = %114
  %159 = load i64, ptr %116, align 1, !tbaa !22
  %160 = mul i64 %159, -3523014627327384477
  %161 = lshr i64 %160, %25
  %162 = lshr i64 %161, 8
  %163 = trunc i64 %161 to i32
  %164 = and i32 %163, 255
  %165 = or disjoint i32 %164, %120
  %166 = getelementptr inbounds nuw i32, ptr %7, i64 %162
  store i32 %165, ptr %166, align 4, !tbaa !23
  %167 = load i64, ptr %121, align 1, !tbaa !22
  %168 = mul i64 %167, -3523014627327384477
  %169 = lshr i64 %168, %25
  br label %183

170:                                              ; preds = %114
  %171 = load i32, ptr %116, align 1, !tbaa !23
  %172 = mul i32 %171, -1640531535
  %173 = lshr i32 %172, %26
  %174 = lshr i32 %173, 8
  %175 = zext nneg i32 %174 to i64
  %176 = and i32 %173, 255
  %177 = or disjoint i32 %176, %120
  %178 = getelementptr inbounds nuw i32, ptr %7, i64 %175
  store i32 %177, ptr %178, align 4, !tbaa !23
  %179 = load i32, ptr %121, align 1, !tbaa !23
  %180 = mul i32 %179, -1640531535
  %181 = lshr i32 %180, %26
  %182 = zext i32 %181 to i64
  br label %183

183:                                              ; preds = %170, %158, %146, %134, %122
  %184 = phi i64 [ %182, %170 ], [ %169, %158 ], [ %133, %122 ], [ %145, %134 ], [ %157, %146 ]
  %185 = lshr i64 %184, 8
  %186 = getelementptr inbounds nuw i32, ptr %7, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !23
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %183
  %190 = trunc i64 %184 to i32
  %191 = and i32 %190, 255
  %192 = shl i32 %119, 8
  %193 = add i32 %192, 256
  %194 = or disjoint i32 %191, %193
  store i32 %194, ptr %186, align 4, !tbaa !23
  br label %195

195:                                              ; preds = %189, %183
  %196 = getelementptr inbounds nuw i8, ptr %116, i64 2
  switch i32 %9, label %213 [
    i32 8, label %209
    i32 5, label %205
    i32 6, label %201
    i32 7, label %197
  ]

197:                                              ; preds = %195
  %198 = load i64, ptr %196, align 1, !tbaa !22
  %199 = mul i64 %198, -3523014627193167104
  %200 = lshr i64 %199, %25
  br label %218

201:                                              ; preds = %195
  %202 = load i64, ptr %196, align 1, !tbaa !22
  %203 = mul i64 %202, -3523014627193847808
  %204 = lshr i64 %203, %25
  br label %218

205:                                              ; preds = %195
  %206 = load i64, ptr %196, align 1, !tbaa !22
  %207 = mul i64 %206, -3523014627271114752
  %208 = lshr i64 %207, %25
  br label %218

209:                                              ; preds = %195
  %210 = load i64, ptr %196, align 1, !tbaa !22
  %211 = mul i64 %210, -3523014627327384477
  %212 = lshr i64 %211, %25
  br label %218

213:                                              ; preds = %195
  %214 = load i32, ptr %196, align 1, !tbaa !23
  %215 = mul i32 %214, -1640531535
  %216 = lshr i32 %215, %26
  %217 = zext i32 %216 to i64
  br label %218

218:                                              ; preds = %213, %209, %205, %201, %197
  %219 = phi i64 [ %217, %213 ], [ %212, %209 ], [ %208, %205 ], [ %204, %201 ], [ %200, %197 ]
  %220 = lshr i64 %219, 8
  %221 = getelementptr inbounds nuw i32, ptr %7, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !23
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %218
  %225 = trunc i64 %219 to i32
  %226 = and i32 %225, 255
  %227 = shl i32 %119, 8
  %228 = add i32 %227, 512
  %229 = or disjoint i32 %226, %228
  store i32 %229, ptr %221, align 4, !tbaa !23
  br label %230

230:                                              ; preds = %224, %218
  %231 = getelementptr inbounds nuw i8, ptr %115, i64 3
  %232 = icmp ult ptr %231, %16
  br i1 %232, label %114, label %436, !llvm.loop !24

233:                                              ; preds = %4
  br i1 %18, label %234, label %436

234:                                              ; preds = %233
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %236 = load i32, ptr %235, align 4, !tbaa !21
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
  %249 = load i64, ptr %245, align 1, !tbaa !22
  %250 = mul i64 %249, -3523014627327384477
  %251 = lshr i64 %250, %239
  %252 = getelementptr inbounds nuw i32, ptr %7, i64 %251
  store i32 %248, ptr %252, align 4, !tbaa !23
  %253 = getelementptr inbounds nuw i8, ptr %244, i64 3
  %254 = icmp ult ptr %253, %16
  br i1 %254, label %243, label %436, !llvm.loop !26

255:                                              ; preds = %242, %255
  %256 = phi ptr [ %265, %255 ], [ %17, %242 ]
  %257 = phi ptr [ %256, %255 ], [ %15, %242 ]
  %258 = ptrtoint ptr %257 to i64
  %259 = sub i64 %258, %237
  %260 = trunc i64 %259 to i32
  %261 = load i64, ptr %257, align 1, !tbaa !22
  %262 = mul i64 %261, -3523014627271114752
  %263 = lshr i64 %262, %239
  %264 = getelementptr inbounds nuw i32, ptr %7, i64 %263
  store i32 %260, ptr %264, align 4, !tbaa !23
  %265 = getelementptr inbounds nuw i8, ptr %256, i64 3
  %266 = icmp ult ptr %265, %16
  br i1 %266, label %255, label %436, !llvm.loop !26

267:                                              ; preds = %242, %267
  %268 = phi ptr [ %277, %267 ], [ %17, %242 ]
  %269 = phi ptr [ %268, %267 ], [ %15, %242 ]
  %270 = ptrtoint ptr %269 to i64
  %271 = sub i64 %270, %237
  %272 = trunc i64 %271 to i32
  %273 = load i64, ptr %269, align 1, !tbaa !22
  %274 = mul i64 %273, -3523014627193847808
  %275 = lshr i64 %274, %239
  %276 = getelementptr inbounds nuw i32, ptr %7, i64 %275
  store i32 %272, ptr %276, align 4, !tbaa !23
  %277 = getelementptr inbounds nuw i8, ptr %268, i64 3
  %278 = icmp ult ptr %277, %16
  br i1 %278, label %267, label %436, !llvm.loop !26

279:                                              ; preds = %242, %279
  %280 = phi ptr [ %289, %279 ], [ %17, %242 ]
  %281 = phi ptr [ %280, %279 ], [ %15, %242 ]
  %282 = ptrtoint ptr %281 to i64
  %283 = sub i64 %282, %237
  %284 = trunc i64 %283 to i32
  %285 = load i64, ptr %281, align 1, !tbaa !22
  %286 = mul i64 %285, -3523014627193167104
  %287 = lshr i64 %286, %239
  %288 = getelementptr inbounds nuw i32, ptr %7, i64 %287
  store i32 %284, ptr %288, align 4, !tbaa !23
  %289 = getelementptr inbounds nuw i8, ptr %280, i64 3
  %290 = icmp ult ptr %289, %16
  br i1 %290, label %279, label %436, !llvm.loop !26

291:                                              ; preds = %242, %291
  %292 = phi ptr [ %302, %291 ], [ %17, %242 ]
  %293 = phi ptr [ %292, %291 ], [ %15, %242 ]
  %294 = ptrtoint ptr %293 to i64
  %295 = sub i64 %294, %237
  %296 = trunc i64 %295 to i32
  %297 = load i32, ptr %293, align 1, !tbaa !23
  %298 = mul i32 %297, -1640531535
  %299 = lshr i32 %298, %240
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds nuw i32, ptr %7, i64 %300
  store i32 %296, ptr %301, align 4, !tbaa !23
  %302 = getelementptr inbounds nuw i8, ptr %292, i64 3
  %303 = icmp ult ptr %302, %16
  br i1 %303, label %291, label %436, !llvm.loop !26

304:                                              ; preds = %234, %433
  %305 = phi ptr [ %434, %433 ], [ %17, %234 ]
  %306 = phi ptr [ %305, %433 ], [ %15, %234 ]
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
  %311 = load i64, ptr %306, align 1, !tbaa !22
  %312 = mul i64 %311, -3523014627271114752
  %313 = lshr i64 %312, %239
  %314 = getelementptr inbounds nuw i32, ptr %7, i64 %313
  store i32 %309, ptr %314, align 4, !tbaa !23
  %315 = getelementptr inbounds nuw i8, ptr %306, i64 1
  %316 = load i64, ptr %315, align 1, !tbaa !22
  %317 = mul i64 %316, -3523014627271114752
  %318 = lshr i64 %317, %239
  %319 = getelementptr inbounds nuw i32, ptr %7, i64 %318
  %320 = load i32, ptr %319, align 4, !tbaa !23
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %384, label %386

322:                                              ; preds = %304
  %323 = load i64, ptr %306, align 1, !tbaa !22
  %324 = mul i64 %323, -3523014627193847808
  %325 = lshr i64 %324, %239
  %326 = getelementptr inbounds nuw i32, ptr %7, i64 %325
  store i32 %309, ptr %326, align 4, !tbaa !23
  %327 = getelementptr inbounds nuw i8, ptr %306, i64 1
  %328 = load i64, ptr %327, align 1, !tbaa !22
  %329 = mul i64 %328, -3523014627193847808
  %330 = lshr i64 %329, %239
  %331 = getelementptr inbounds nuw i32, ptr %7, i64 %330
  %332 = load i32, ptr %331, align 4, !tbaa !23
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %396, label %398

334:                                              ; preds = %304
  %335 = load i64, ptr %306, align 1, !tbaa !22
  %336 = mul i64 %335, -3523014627193167104
  %337 = lshr i64 %336, %239
  %338 = getelementptr inbounds nuw i32, ptr %7, i64 %337
  store i32 %309, ptr %338, align 4, !tbaa !23
  %339 = getelementptr inbounds nuw i8, ptr %306, i64 1
  %340 = load i64, ptr %339, align 1, !tbaa !22
  %341 = mul i64 %340, -3523014627193167104
  %342 = lshr i64 %341, %239
  %343 = getelementptr inbounds nuw i32, ptr %7, i64 %342
  %344 = load i32, ptr %343, align 4, !tbaa !23
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %408, label %410

346:                                              ; preds = %304
  %347 = load i64, ptr %306, align 1, !tbaa !22
  %348 = mul i64 %347, -3523014627327384477
  %349 = lshr i64 %348, %239
  %350 = getelementptr inbounds nuw i32, ptr %7, i64 %349
  store i32 %309, ptr %350, align 4, !tbaa !23
  %351 = getelementptr inbounds nuw i8, ptr %306, i64 1
  %352 = load i64, ptr %351, align 1, !tbaa !22
  %353 = mul i64 %352, -3523014627327384477
  %354 = lshr i64 %353, %239
  %355 = getelementptr inbounds nuw i32, ptr %7, i64 %354
  %356 = load i32, ptr %355, align 4, !tbaa !23
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %372, label %374

358:                                              ; preds = %304
  %359 = load i32, ptr %306, align 1, !tbaa !23
  %360 = mul i32 %359, -1640531535
  %361 = lshr i32 %360, %240
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds nuw i32, ptr %7, i64 %362
  store i32 %309, ptr %363, align 4, !tbaa !23
  %364 = getelementptr inbounds nuw i8, ptr %306, i64 1
  %365 = load i32, ptr %364, align 1, !tbaa !23
  %366 = mul i32 %365, -1640531535
  %367 = lshr i32 %366, %240
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds nuw i32, ptr %7, i64 %368
  %370 = load i32, ptr %369, align 4, !tbaa !23
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %420, label %422

372:                                              ; preds = %346
  %373 = add i32 %309, 1
  store i32 %373, ptr %355, align 4, !tbaa !23
  br label %374

374:                                              ; preds = %372, %346
  %375 = getelementptr inbounds nuw i8, ptr %306, i64 2
  %376 = load i64, ptr %375, align 1, !tbaa !22
  %377 = mul i64 %376, -3523014627327384477
  %378 = lshr i64 %377, %239
  %379 = getelementptr inbounds nuw i32, ptr %7, i64 %378
  %380 = load i32, ptr %379, align 4, !tbaa !23
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %433

382:                                              ; preds = %374
  %383 = add i32 %309, 2
  store i32 %383, ptr %379, align 4, !tbaa !23
  br label %433

384:                                              ; preds = %310
  %385 = add i32 %309, 1
  store i32 %385, ptr %319, align 4, !tbaa !23
  br label %386

386:                                              ; preds = %384, %310
  %387 = getelementptr inbounds nuw i8, ptr %306, i64 2
  %388 = load i64, ptr %387, align 1, !tbaa !22
  %389 = mul i64 %388, -3523014627271114752
  %390 = lshr i64 %389, %239
  %391 = getelementptr inbounds nuw i32, ptr %7, i64 %390
  %392 = load i32, ptr %391, align 4, !tbaa !23
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %433

394:                                              ; preds = %386
  %395 = add i32 %309, 2
  store i32 %395, ptr %391, align 4, !tbaa !23
  br label %433

396:                                              ; preds = %322
  %397 = add i32 %309, 1
  store i32 %397, ptr %331, align 4, !tbaa !23
  br label %398

398:                                              ; preds = %396, %322
  %399 = getelementptr inbounds nuw i8, ptr %306, i64 2
  %400 = load i64, ptr %399, align 1, !tbaa !22
  %401 = mul i64 %400, -3523014627193847808
  %402 = lshr i64 %401, %239
  %403 = getelementptr inbounds nuw i32, ptr %7, i64 %402
  %404 = load i32, ptr %403, align 4, !tbaa !23
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %433

406:                                              ; preds = %398
  %407 = add i32 %309, 2
  store i32 %407, ptr %403, align 4, !tbaa !23
  br label %433

408:                                              ; preds = %334
  %409 = add i32 %309, 1
  store i32 %409, ptr %343, align 4, !tbaa !23
  br label %410

410:                                              ; preds = %408, %334
  %411 = getelementptr inbounds nuw i8, ptr %306, i64 2
  %412 = load i64, ptr %411, align 1, !tbaa !22
  %413 = mul i64 %412, -3523014627193167104
  %414 = lshr i64 %413, %239
  %415 = getelementptr inbounds nuw i32, ptr %7, i64 %414
  %416 = load i32, ptr %415, align 4, !tbaa !23
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %433

418:                                              ; preds = %410
  %419 = add i32 %309, 2
  store i32 %419, ptr %415, align 4, !tbaa !23
  br label %433

420:                                              ; preds = %358
  %421 = add i32 %309, 1
  store i32 %421, ptr %369, align 4, !tbaa !23
  br label %422

422:                                              ; preds = %420, %358
  %423 = getelementptr inbounds nuw i8, ptr %306, i64 2
  %424 = load i32, ptr %423, align 1, !tbaa !23
  %425 = mul i32 %424, -1640531535
  %426 = lshr i32 %425, %240
  %427 = zext i32 %426 to i64
  %428 = getelementptr inbounds nuw i32, ptr %7, i64 %427
  %429 = load i32, ptr %428, align 4, !tbaa !23
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %433

431:                                              ; preds = %422
  %432 = add i32 %309, 2
  store i32 %432, ptr %428, align 4, !tbaa !23
  br label %433

433:                                              ; preds = %431, %422, %418, %410, %406, %398, %394, %386, %382, %374
  %434 = getelementptr inbounds nuw i8, ptr %305, i64 3
  %435 = icmp ult ptr %434, %16
  br i1 %435, label %304, label %436, !llvm.loop !26

436:                                              ; preds = %433, %279, %267, %255, %243, %291, %230, %80, %63, %46, %29, %97, %233, %19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_fast(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %8 = load i32, ptr %7, align 8, !tbaa !27
  %9 = load i32, ptr %6, align 8, !tbaa !28
  %10 = icmp ult i32 %9, 19
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %14 = load i32, ptr %13, align 4, !tbaa !29
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 1)
  %16 = add i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !19
  %20 = ptrtoint ptr %3 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = add i64 %4, %20
  %23 = sub i64 %22, %21
  %24 = trunc i64 %23 to i32
  %25 = getelementptr i8, ptr %0, i64 24
  %26 = load i32, ptr %25, align 8, !tbaa !30
  %27 = getelementptr i8, ptr %0, i64 40
  %28 = load i32, ptr %27, align 8, !tbaa !31
  %29 = shl nuw i32 1, %9
  %30 = sub i32 %24, %26
  %31 = icmp ugt i32 %30, %29
  %32 = sub i32 %24, %29
  %33 = icmp eq i32 %28, 0
  %34 = select i1 %33, i1 %31, i1 false
  %35 = select i1 %34, i32 %32, i32 %26
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %39 = getelementptr inbounds i8, ptr %38, i64 -8
  %40 = load i32, ptr %2, align 4, !tbaa !23
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %42 = load i32, ptr %41, align 4, !tbaa !23
  %43 = icmp eq ptr %3, %37
  %44 = zext i1 %43 to i64
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 %44
  %46 = ptrtoint ptr %45 to i64
  %47 = sub i64 %46, %21
  %48 = trunc i64 %47 to i32
  %49 = sub i32 %48, %26
  %50 = icmp ugt i32 %49, %29
  %51 = sub i32 %48, %29
  %52 = select i1 %33, i1 %50, i1 false
  %53 = select i1 %52, i32 %51, i32 %26
  %54 = sub i32 %48, %53
  %55 = icmp ugt i32 %42, %54
  %56 = select i1 %55, i32 0, i32 %42
  %57 = icmp ugt i32 %40, %54
  %58 = select i1 %57, i32 0, i32 %40
  %59 = getelementptr inbounds nuw i8, ptr %19, i64 2
  %60 = getelementptr inbounds nuw i8, ptr %45, i64 %17
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 1
  %62 = icmp ult ptr %61, %39
  br i1 %10, label %63, label %2246

63:                                               ; preds = %5
  switch i32 %8, label %64 [
    i32 7, label %1702
    i32 5, label %614
    i32 6, label %1158
  ]

64:                                               ; preds = %63
  br i1 %62, label %65, label %4656

65:                                               ; preds = %64
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %67 = load i32, ptr %66, align 4, !tbaa !21
  %68 = sub i32 32, %67
  %69 = getelementptr inbounds i8, ptr %38, i64 -7
  %70 = getelementptr inbounds i8, ptr %38, i64 -3
  %71 = getelementptr inbounds i8, ptr %38, i64 -1
  %72 = getelementptr inbounds i8, ptr %38, i64 -32
  %73 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %74 = ptrtoint ptr %72 to i64
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %76 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %77 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %78

78:                                               ; preds = %607, %65
  %79 = phi ptr [ %61, %65 ], [ %612, %607 ]
  %80 = phi ptr [ %60, %65 ], [ %611, %607 ]
  %81 = phi ptr [ %3, %65 ], [ %610, %607 ]
  %82 = phi ptr [ %45, %65 ], [ %610, %607 ]
  %83 = phi i32 [ %58, %65 ], [ %609, %607 ]
  %84 = phi i32 [ %56, %65 ], [ %608, %607 ]
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 1
  %86 = getelementptr inbounds nuw i8, ptr %82, i64 128
  %87 = load i32, ptr %82, align 1, !tbaa !23
  %88 = mul i32 %87, -1640531535
  %89 = lshr i32 %88, %68
  %90 = zext i32 %89 to i64
  %91 = load i32, ptr %85, align 1, !tbaa !23
  %92 = getelementptr inbounds nuw i32, ptr %12, i64 %90
  %93 = load i32, ptr %92, align 4, !tbaa !23
  %94 = zext i32 %83 to i64
  %95 = sub nsw i64 0, %94
  %96 = icmp ne i32 %83, 0
  br label %97

97:                                               ; preds = %177, %78
  %98 = phi i64 [ %90, %78 ], [ %136, %177 ]
  %99 = phi i32 [ %91, %78 ], [ %153, %177 ]
  %100 = phi i32 [ %93, %78 ], [ %152, %177 ]
  %101 = phi i64 [ %17, %78 ], [ %178, %177 ]
  %102 = phi ptr [ %86, %78 ], [ %179, %177 ]
  %103 = phi ptr [ %79, %78 ], [ %155, %177 ]
  %104 = phi ptr [ %80, %78 ], [ %154, %177 ]
  %105 = phi ptr [ %85, %78 ], [ %103, %177 ]
  %106 = phi ptr [ %82, %78 ], [ %104, %177 ]
  %107 = mul i32 %99, -1640531535
  %108 = lshr i32 %107, %68
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i8, ptr %104, i64 %95
  %111 = load i32, ptr %110, align 1, !tbaa !23
  %112 = ptrtoint ptr %106 to i64
  %113 = sub i64 %112, %21
  %114 = trunc i64 %113 to i32
  %115 = getelementptr inbounds nuw i32, ptr %12, i64 %98
  store i32 %114, ptr %115, align 4, !tbaa !23
  %116 = load i32, ptr %104, align 1, !tbaa !23
  %117 = icmp eq i32 %116, %111
  %118 = and i1 %96, %117
  br i1 %118, label %162, label %119

119:                                              ; preds = %97
  %120 = zext i32 %100 to i64
  %121 = getelementptr inbounds nuw i8, ptr %19, i64 %120
  %122 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %100, i32 %35, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %121) #7, !srcloc !32
  %123 = load i32, ptr %106, align 1, !tbaa !23
  %124 = load i32, ptr %122, align 1, !tbaa !23
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !33
  %127 = icmp ult i32 %100, %35
  br i1 %127, label %128, label %181

128:                                              ; preds = %126
  %129 = load i32, ptr %104, align 1, !tbaa !23
  br label %130

130:                                              ; preds = %128, %119
  %131 = phi i32 [ %129, %128 ], [ %116, %119 ]
  %132 = getelementptr inbounds nuw i32, ptr %12, i64 %109
  %133 = load i32, ptr %132, align 4, !tbaa !23
  %134 = mul i32 %131, -1640531535
  %135 = lshr i32 %134, %68
  %136 = zext i32 %135 to i64
  %137 = ptrtoint ptr %105 to i64
  %138 = sub i64 %137, %21
  %139 = trunc i64 %138 to i32
  store i32 %139, ptr %132, align 4, !tbaa !23
  %140 = zext i32 %133 to i64
  %141 = getelementptr inbounds nuw i8, ptr %19, i64 %140
  %142 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %133, i32 %35, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %141) #7, !srcloc !32
  %143 = load i32, ptr %105, align 1, !tbaa !23
  %144 = load i32, ptr %142, align 1, !tbaa !23
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %130
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !33
  %147 = icmp ult i32 %133, %35
  br i1 %147, label %150, label %148

148:                                              ; preds = %146
  %149 = icmp ult i64 %101, 5
  br i1 %149, label %181, label %193

150:                                              ; preds = %146, %130
  %151 = getelementptr inbounds nuw i32, ptr %12, i64 %136
  %152 = load i32, ptr %151, align 4, !tbaa !23
  %153 = load i32, ptr %103, align 1, !tbaa !23
  %154 = getelementptr inbounds nuw i8, ptr %104, i64 %101
  %155 = getelementptr inbounds nuw i8, ptr %103, i64 %101
  %156 = icmp ult ptr %154, %102
  br i1 %156, label %177, label %157

157:                                              ; preds = %150
  %158 = add i64 %101, 1
  %159 = getelementptr inbounds nuw i8, ptr %103, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %159, i32 0, i32 3, i32 1)
  %160 = getelementptr inbounds nuw i8, ptr %103, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %160, i32 0, i32 3, i32 1)
  %161 = getelementptr inbounds nuw i8, ptr %102, i64 128
  br label %177

162:                                              ; preds = %97
  %163 = getelementptr inbounds i8, ptr %104, i64 %95
  %164 = getelementptr inbounds i8, ptr %104, i64 -1
  %165 = load i8, ptr %164, align 1, !tbaa !34
  %166 = getelementptr inbounds i8, ptr %163, i64 -1
  %167 = load i8, ptr %166, align 1, !tbaa !34
  %168 = icmp eq i8 %165, %167
  %169 = sext i1 %168 to i64
  %170 = getelementptr inbounds i8, ptr %104, i64 %169
  %171 = getelementptr inbounds i8, ptr %163, i64 %169
  %172 = select i1 %168, i64 5, i64 4
  %173 = ptrtoint ptr %105 to i64
  %174 = sub i64 %173, %21
  %175 = trunc i64 %174 to i32
  %176 = getelementptr inbounds nuw i32, ptr %12, i64 %109
  store i32 %175, ptr %176, align 4, !tbaa !23
  br label %221

177:                                              ; preds = %157, %150
  %178 = phi i64 [ %101, %150 ], [ %158, %157 ]
  %179 = phi ptr [ %102, %150 ], [ %161, %157 ]
  %180 = icmp ult ptr %155, %39
  br i1 %180, label %97, label %4656, !llvm.loop !35

181:                                              ; preds = %126, %148
  %182 = phi ptr [ %104, %148 ], [ %105, %126 ]
  %183 = phi i64 [ %136, %148 ], [ %109, %126 ]
  %184 = phi i64 [ %137, %148 ], [ %112, %126 ]
  %185 = phi i64 [ %140, %148 ], [ %120, %126 ]
  %186 = phi i32 [ %133, %148 ], [ %100, %126 ]
  %187 = phi i32 [ %139, %148 ], [ %114, %126 ]
  %188 = phi ptr [ %105, %148 ], [ %106, %126 ]
  %189 = ptrtoint ptr %182 to i64
  %190 = sub i64 %189, %21
  %191 = trunc i64 %190 to i32
  %192 = getelementptr inbounds nuw i32, ptr %12, i64 %183
  store i32 %191, ptr %192, align 4, !tbaa !23
  br label %193

193:                                              ; preds = %181, %148
  %194 = phi i64 [ %137, %148 ], [ %184, %181 ]
  %195 = phi i64 [ %140, %148 ], [ %185, %181 ]
  %196 = phi i32 [ %133, %148 ], [ %186, %181 ]
  %197 = phi i32 [ %139, %148 ], [ %187, %181 ]
  %198 = phi ptr [ %105, %148 ], [ %188, %181 ]
  %199 = getelementptr inbounds nuw i8, ptr %19, i64 %195
  %200 = ptrtoint ptr %199 to i64
  %201 = sub i64 %194, %200
  %202 = trunc i64 %201 to i32
  %203 = add i32 %202, 3
  %204 = icmp ugt ptr %198, %81
  %205 = icmp ugt i32 %196, %35
  %206 = and i1 %205, %204
  br i1 %206, label %207, label %221

207:                                              ; preds = %193, %216
  %208 = phi ptr [ %211, %216 ], [ %198, %193 ]
  %209 = phi i64 [ %217, %216 ], [ 4, %193 ]
  %210 = phi ptr [ %213, %216 ], [ %199, %193 ]
  %211 = getelementptr inbounds i8, ptr %208, i64 -1
  %212 = load i8, ptr %211, align 1, !tbaa !34
  %213 = getelementptr inbounds i8, ptr %210, i64 -1
  %214 = load i8, ptr %213, align 1, !tbaa !34
  %215 = icmp eq i8 %212, %214
  br i1 %215, label %216, label %221

216:                                              ; preds = %207
  %217 = add i64 %209, 1
  %218 = icmp ugt ptr %211, %81
  %219 = icmp ugt ptr %213, %37
  %220 = and i1 %218, %219
  br i1 %220, label %207, label %221, !llvm.loop !36

221:                                              ; preds = %216, %207, %193, %162
  %222 = phi i32 [ %114, %162 ], [ %197, %193 ], [ %197, %207 ], [ %197, %216 ]
  %223 = phi i32 [ %84, %162 ], [ %83, %193 ], [ %83, %207 ], [ %83, %216 ]
  %224 = phi i32 [ 1, %162 ], [ %203, %193 ], [ %203, %207 ], [ %203, %216 ]
  %225 = phi ptr [ %171, %162 ], [ %199, %193 ], [ %213, %216 ], [ %210, %207 ]
  %226 = phi i64 [ %172, %162 ], [ 4, %193 ], [ %217, %216 ], [ %209, %207 ]
  %227 = phi i32 [ %83, %162 ], [ %202, %193 ], [ %202, %207 ], [ %202, %216 ]
  %228 = phi ptr [ %170, %162 ], [ %198, %193 ], [ %211, %216 ], [ %208, %207 ]
  %229 = getelementptr inbounds nuw i8, ptr %228, i64 %226
  %230 = getelementptr inbounds nuw i8, ptr %225, i64 %226
  %231 = icmp ult ptr %229, %69
  br i1 %231, label %232, label %258

232:                                              ; preds = %221
  %233 = load i64, ptr %230, align 1, !tbaa !22
  %234 = load i64, ptr %229, align 1, !tbaa !22
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %240, label %236

236:                                              ; preds = %232
  %237 = xor i64 %234, %233
  %238 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %237, i1 true)
  %239 = lshr i64 %238, 3
  br label %295

240:                                              ; preds = %232, %246
  %241 = phi ptr [ %244, %246 ], [ %230, %232 ]
  %242 = phi ptr [ %243, %246 ], [ %229, %232 ]
  %243 = getelementptr inbounds nuw i8, ptr %242, i64 8
  %244 = getelementptr inbounds nuw i8, ptr %241, i64 8
  %245 = icmp ult ptr %243, %69
  br i1 %245, label %246, label %258

246:                                              ; preds = %240
  %247 = load i64, ptr %244, align 1, !tbaa !22
  %248 = load i64, ptr %243, align 1, !tbaa !22
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %240, label %250

250:                                              ; preds = %246
  %251 = xor i64 %248, %247
  %252 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %251, i1 true)
  %253 = lshr i64 %252, 3
  %254 = getelementptr inbounds nuw i8, ptr %243, i64 %253
  %255 = ptrtoint ptr %254 to i64
  %256 = ptrtoint ptr %229 to i64
  %257 = sub i64 %255, %256
  br label %295

258:                                              ; preds = %240, %221
  %259 = phi ptr [ %230, %221 ], [ %244, %240 ]
  %260 = phi ptr [ %229, %221 ], [ %243, %240 ]
  %261 = icmp ult ptr %260, %70
  br i1 %261, label %262, label %269

262:                                              ; preds = %258
  %263 = load i32, ptr %259, align 1, !tbaa !23
  %264 = load i32, ptr %260, align 1, !tbaa !23
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %262
  %267 = getelementptr inbounds nuw i8, ptr %260, i64 4
  %268 = getelementptr inbounds nuw i8, ptr %259, i64 4
  br label %269

269:                                              ; preds = %266, %262, %258
  %270 = phi ptr [ %268, %266 ], [ %259, %262 ], [ %259, %258 ]
  %271 = phi ptr [ %267, %266 ], [ %260, %262 ], [ %260, %258 ]
  %272 = icmp ult ptr %271, %71
  br i1 %272, label %273, label %280

273:                                              ; preds = %269
  %274 = load i16, ptr %270, align 1, !tbaa !37
  %275 = load i16, ptr %271, align 1, !tbaa !37
  %276 = icmp eq i16 %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %273
  %278 = getelementptr inbounds nuw i8, ptr %271, i64 2
  %279 = getelementptr inbounds nuw i8, ptr %270, i64 2
  br label %280

280:                                              ; preds = %277, %273, %269
  %281 = phi ptr [ %279, %277 ], [ %270, %273 ], [ %270, %269 ]
  %282 = phi ptr [ %278, %277 ], [ %271, %273 ], [ %271, %269 ]
  %283 = icmp ult ptr %282, %38
  br i1 %283, label %284, label %290

284:                                              ; preds = %280
  %285 = load i8, ptr %281, align 1, !tbaa !34
  %286 = load i8, ptr %282, align 1, !tbaa !34
  %287 = icmp eq i8 %285, %286
  %288 = zext i1 %287 to i64
  %289 = getelementptr inbounds nuw i8, ptr %282, i64 %288
  br label %290

290:                                              ; preds = %284, %280
  %291 = phi ptr [ %282, %280 ], [ %289, %284 ]
  %292 = ptrtoint ptr %291 to i64
  %293 = ptrtoint ptr %229 to i64
  %294 = sub i64 %292, %293
  br label %295

295:                                              ; preds = %290, %250, %236
  %296 = phi i64 [ %294, %290 ], [ %239, %236 ], [ %257, %250 ]
  %297 = add i64 %296, %226
  %298 = ptrtoint ptr %228 to i64
  %299 = ptrtoint ptr %81 to i64
  %300 = sub i64 %298, %299
  %301 = icmp ugt ptr %228, %72
  %302 = load ptr, ptr %73, align 8, !tbaa !39
  br i1 %301, label %326, label %303

303:                                              ; preds = %295
  %304 = load <2 x i64>, ptr %81, align 1, !tbaa !34
  store <2 x i64> %304, ptr %302, align 1, !tbaa !34
  %305 = icmp ugt i64 %300, 16
  br i1 %305, label %306, label %442

306:                                              ; preds = %303
  %307 = load ptr, ptr %73, align 8, !tbaa !39
  %308 = getelementptr inbounds nuw i8, ptr %307, i64 16
  %309 = getelementptr inbounds nuw i8, ptr %81, i64 16
  %310 = add i64 %300, -16
  %311 = getelementptr i8, ptr %307, i64 %300
  %312 = load <2 x i64>, ptr %309, align 1, !tbaa !34
  store <2 x i64> %312, ptr %308, align 1, !tbaa !34
  %313 = icmp ult i64 %310, 17
  br i1 %313, label %442, label %314

314:                                              ; preds = %306
  %315 = getelementptr inbounds nuw i8, ptr %307, i64 32
  br label %316

316:                                              ; preds = %316, %314
  %317 = phi ptr [ %315, %314 ], [ %324, %316 ]
  %318 = phi ptr [ %309, %314 ], [ %322, %316 ]
  %319 = getelementptr inbounds nuw i8, ptr %318, i64 16
  %320 = load <2 x i64>, ptr %319, align 1, !tbaa !34
  store <2 x i64> %320, ptr %317, align 1, !tbaa !34
  %321 = getelementptr inbounds nuw i8, ptr %317, i64 16
  %322 = getelementptr inbounds nuw i8, ptr %318, i64 32
  %323 = load <2 x i64>, ptr %322, align 1, !tbaa !34
  store <2 x i64> %323, ptr %321, align 1, !tbaa !34
  %324 = getelementptr inbounds nuw i8, ptr %317, i64 32
  %325 = icmp ult ptr %324, %311
  br i1 %325, label %316, label %446, !llvm.loop !42

326:                                              ; preds = %295
  %327 = icmp ugt ptr %81, %72
  br i1 %327, label %345, label %328

328:                                              ; preds = %326
  %329 = sub i64 %74, %299
  %330 = getelementptr inbounds i8, ptr %302, i64 %329
  %331 = load <2 x i64>, ptr %81, align 1, !tbaa !34
  store <2 x i64> %331, ptr %302, align 1, !tbaa !34
  %332 = icmp ult i64 %329, 17
  br i1 %332, label %345, label %333

333:                                              ; preds = %328
  %334 = getelementptr inbounds nuw i8, ptr %302, i64 16
  br label %335

335:                                              ; preds = %335, %333
  %336 = phi ptr [ %334, %333 ], [ %343, %335 ]
  %337 = phi ptr [ %81, %333 ], [ %341, %335 ]
  %338 = getelementptr inbounds nuw i8, ptr %337, i64 16
  %339 = load <2 x i64>, ptr %338, align 1, !tbaa !34
  store <2 x i64> %339, ptr %336, align 1, !tbaa !34
  %340 = getelementptr inbounds nuw i8, ptr %336, i64 16
  %341 = getelementptr inbounds nuw i8, ptr %337, i64 32
  %342 = load <2 x i64>, ptr %341, align 1, !tbaa !34
  store <2 x i64> %342, ptr %340, align 1, !tbaa !34
  %343 = getelementptr inbounds nuw i8, ptr %336, i64 32
  %344 = icmp ult ptr %343, %330
  br i1 %344, label %335, label %345, !llvm.loop !42

345:                                              ; preds = %335, %328, %326
  %346 = phi ptr [ %72, %328 ], [ %81, %326 ], [ %72, %335 ]
  %347 = phi ptr [ %330, %328 ], [ %302, %326 ], [ %330, %335 ]
  %348 = icmp ult ptr %346, %228
  br i1 %348, label %349, label %446

349:                                              ; preds = %345
  %350 = ptrtoint ptr %346 to i64
  %351 = ptrtoint ptr %347 to i64
  %352 = ptrtoint ptr %346 to i64
  %353 = sub i64 %298, %352
  %354 = icmp ult i64 %353, 4
  %355 = sub i64 %351, %350
  %356 = icmp ult i64 %355, 32
  %357 = select i1 %354, i1 true, i1 %356
  br i1 %357, label %393, label %358

358:                                              ; preds = %349
  %359 = icmp ult i64 %353, 32
  br i1 %359, label %379, label %360

360:                                              ; preds = %358
  %361 = and i64 %353, -32
  br label %362

362:                                              ; preds = %362, %360
  %363 = phi i64 [ 0, %360 ], [ %370, %362 ]
  %364 = getelementptr i8, ptr %347, i64 %363
  %365 = getelementptr i8, ptr %346, i64 %363
  %366 = getelementptr i8, ptr %365, i64 16
  %367 = load <16 x i8>, ptr %365, align 1, !tbaa !34
  %368 = load <16 x i8>, ptr %366, align 1, !tbaa !34
  %369 = getelementptr i8, ptr %364, i64 16
  store <16 x i8> %367, ptr %364, align 1, !tbaa !34
  store <16 x i8> %368, ptr %369, align 1, !tbaa !34
  %370 = add nuw i64 %363, 32
  %371 = icmp eq i64 %370, %361
  br i1 %371, label %372, label %362, !llvm.loop !43

372:                                              ; preds = %362
  %373 = icmp eq i64 %353, %361
  br i1 %373, label %446, label %374

374:                                              ; preds = %372
  %375 = getelementptr i8, ptr %347, i64 %361
  %376 = getelementptr i8, ptr %346, i64 %361
  %377 = and i64 %353, 28
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %393, label %379

379:                                              ; preds = %374, %358
  %380 = phi i64 [ %361, %374 ], [ 0, %358 ]
  %381 = and i64 %353, -4
  %382 = getelementptr i8, ptr %347, i64 %381
  %383 = getelementptr i8, ptr %346, i64 %381
  br label %384

384:                                              ; preds = %384, %379
  %385 = phi i64 [ %380, %379 ], [ %389, %384 ]
  %386 = getelementptr i8, ptr %347, i64 %385
  %387 = getelementptr i8, ptr %346, i64 %385
  %388 = load <4 x i8>, ptr %387, align 1, !tbaa !34
  store <4 x i8> %388, ptr %386, align 1, !tbaa !34
  %389 = add nuw i64 %385, 4
  %390 = icmp eq i64 %389, %381
  br i1 %390, label %391, label %384, !llvm.loop !46

391:                                              ; preds = %384
  %392 = icmp eq i64 %353, %381
  br i1 %392, label %446, label %393

393:                                              ; preds = %374, %391, %349
  %394 = phi ptr [ %347, %349 ], [ %375, %374 ], [ %382, %391 ]
  %395 = phi ptr [ %346, %349 ], [ %376, %374 ], [ %383, %391 ]
  %396 = ptrtoint ptr %395 to i64
  %397 = sub i64 %298, %396
  %398 = and i64 %397, 7
  %399 = icmp eq i64 %398, 0
  br i1 %399, label %409, label %400

400:                                              ; preds = %393, %400
  %401 = phi ptr [ %406, %400 ], [ %394, %393 ]
  %402 = phi ptr [ %404, %400 ], [ %395, %393 ]
  %403 = phi i64 [ %407, %400 ], [ 0, %393 ]
  %404 = getelementptr inbounds nuw i8, ptr %402, i64 1
  %405 = load i8, ptr %402, align 1, !tbaa !34
  %406 = getelementptr inbounds nuw i8, ptr %401, i64 1
  store i8 %405, ptr %401, align 1, !tbaa !34
  %407 = add i64 %403, 1
  %408 = icmp eq i64 %407, %398
  br i1 %408, label %409, label %400, !llvm.loop !47

409:                                              ; preds = %400, %393
  %410 = phi ptr [ %394, %393 ], [ %406, %400 ]
  %411 = phi ptr [ %395, %393 ], [ %404, %400 ]
  %412 = sub i64 %396, %298
  %413 = icmp ugt i64 %412, -8
  br i1 %413, label %446, label %414

414:                                              ; preds = %409, %414
  %415 = phi ptr [ %440, %414 ], [ %410, %409 ]
  %416 = phi ptr [ %438, %414 ], [ %411, %409 ]
  %417 = getelementptr inbounds nuw i8, ptr %416, i64 1
  %418 = load i8, ptr %416, align 1, !tbaa !34
  %419 = getelementptr inbounds nuw i8, ptr %415, i64 1
  store i8 %418, ptr %415, align 1, !tbaa !34
  %420 = getelementptr inbounds nuw i8, ptr %416, i64 2
  %421 = load i8, ptr %417, align 1, !tbaa !34
  %422 = getelementptr inbounds nuw i8, ptr %415, i64 2
  store i8 %421, ptr %419, align 1, !tbaa !34
  %423 = getelementptr inbounds nuw i8, ptr %416, i64 3
  %424 = load i8, ptr %420, align 1, !tbaa !34
  %425 = getelementptr inbounds nuw i8, ptr %415, i64 3
  store i8 %424, ptr %422, align 1, !tbaa !34
  %426 = getelementptr inbounds nuw i8, ptr %416, i64 4
  %427 = load i8, ptr %423, align 1, !tbaa !34
  %428 = getelementptr inbounds nuw i8, ptr %415, i64 4
  store i8 %427, ptr %425, align 1, !tbaa !34
  %429 = getelementptr inbounds nuw i8, ptr %416, i64 5
  %430 = load i8, ptr %426, align 1, !tbaa !34
  %431 = getelementptr inbounds nuw i8, ptr %415, i64 5
  store i8 %430, ptr %428, align 1, !tbaa !34
  %432 = getelementptr inbounds nuw i8, ptr %416, i64 6
  %433 = load i8, ptr %429, align 1, !tbaa !34
  %434 = getelementptr inbounds nuw i8, ptr %415, i64 6
  store i8 %433, ptr %431, align 1, !tbaa !34
  %435 = getelementptr inbounds nuw i8, ptr %416, i64 7
  %436 = load i8, ptr %432, align 1, !tbaa !34
  %437 = getelementptr inbounds nuw i8, ptr %415, i64 7
  store i8 %436, ptr %434, align 1, !tbaa !34
  %438 = getelementptr inbounds nuw i8, ptr %416, i64 8
  %439 = load i8, ptr %435, align 1, !tbaa !34
  %440 = getelementptr inbounds nuw i8, ptr %415, i64 8
  store i8 %439, ptr %437, align 1, !tbaa !34
  %441 = icmp eq ptr %438, %228
  br i1 %441, label %446, label %414, !llvm.loop !49

442:                                              ; preds = %306, %303
  %443 = load ptr, ptr %73, align 8, !tbaa !39
  %444 = getelementptr inbounds nuw i8, ptr %443, i64 %300
  store ptr %444, ptr %73, align 8, !tbaa !39
  %445 = load ptr, ptr %76, align 8, !tbaa !50
  br label %458

446:                                              ; preds = %316, %409, %414, %372, %391, %345
  %447 = load ptr, ptr %73, align 8, !tbaa !39
  %448 = getelementptr inbounds nuw i8, ptr %447, i64 %300
  store ptr %448, ptr %73, align 8, !tbaa !39
  %449 = icmp ugt i64 %300, 65535
  %450 = load ptr, ptr %76, align 8, !tbaa !50
  br i1 %449, label %451, label %458, !prof !51

451:                                              ; preds = %446
  store i32 1, ptr %75, align 8, !tbaa !52
  %452 = load ptr, ptr %1, align 8, !tbaa !53
  %453 = ptrtoint ptr %450 to i64
  %454 = ptrtoint ptr %452 to i64
  %455 = sub i64 %453, %454
  %456 = lshr exact i64 %455, 3
  %457 = trunc i64 %456 to i32
  store i32 %457, ptr %77, align 4, !tbaa !54
  br label %458

458:                                              ; preds = %451, %446, %442
  %459 = phi ptr [ %445, %442 ], [ %450, %451 ], [ %450, %446 ]
  %460 = trunc i64 %300 to i16
  %461 = getelementptr inbounds nuw i8, ptr %459, i64 4
  store i16 %460, ptr %461, align 4, !tbaa !55
  store i32 %224, ptr %459, align 4, !tbaa !57
  %462 = add i64 %297, -3
  %463 = icmp ugt i64 %462, 65535
  br i1 %463, label %464, label %471, !prof !58

464:                                              ; preds = %458
  store i32 2, ptr %75, align 8, !tbaa !52
  %465 = load ptr, ptr %1, align 8, !tbaa !53
  %466 = ptrtoint ptr %459 to i64
  %467 = ptrtoint ptr %465 to i64
  %468 = sub i64 %466, %467
  %469 = lshr exact i64 %468, 3
  %470 = trunc i64 %469 to i32
  store i32 %470, ptr %77, align 4, !tbaa !54
  br label %471

471:                                              ; preds = %464, %458
  %472 = trunc i64 %462 to i16
  %473 = getelementptr inbounds nuw i8, ptr %459, i64 6
  store i16 %472, ptr %473, align 2, !tbaa !59
  %474 = getelementptr inbounds nuw i8, ptr %459, i64 8
  store ptr %474, ptr %76, align 8, !tbaa !50
  %475 = getelementptr inbounds nuw i8, ptr %228, i64 %297
  %476 = icmp ugt ptr %475, %39
  br i1 %476, label %607, label %477

477:                                              ; preds = %471
  %478 = add i32 %222, 2
  %479 = zext i32 %222 to i64
  %480 = getelementptr inbounds nuw i8, ptr %59, i64 %479
  %481 = load i32, ptr %480, align 1, !tbaa !23
  %482 = mul i32 %481, -1640531535
  %483 = lshr i32 %482, %68
  %484 = zext i32 %483 to i64
  %485 = getelementptr inbounds nuw i32, ptr %12, i64 %484
  store i32 %478, ptr %485, align 4, !tbaa !23
  %486 = getelementptr inbounds i8, ptr %475, i64 -2
  %487 = ptrtoint ptr %486 to i64
  %488 = sub i64 %487, %21
  %489 = trunc i64 %488 to i32
  %490 = load i32, ptr %486, align 1, !tbaa !23
  %491 = mul i32 %490, -1640531535
  %492 = lshr i32 %491, %68
  %493 = zext i32 %492 to i64
  %494 = getelementptr inbounds nuw i32, ptr %12, i64 %493
  store i32 %489, ptr %494, align 4, !tbaa !23
  %495 = icmp eq i32 %223, 0
  br i1 %495, label %607, label %496

496:                                              ; preds = %477, %602
  %497 = phi ptr [ %605, %602 ], [ %474, %477 ]
  %498 = phi ptr [ %584, %602 ], [ %475, %477 ]
  %499 = phi i32 [ %500, %602 ], [ %227, %477 ]
  %500 = phi i32 [ %499, %602 ], [ %223, %477 ]
  %501 = load i32, ptr %498, align 1, !tbaa !23
  %502 = zext i32 %500 to i64
  %503 = sub nsw i64 0, %502
  %504 = getelementptr inbounds i8, ptr %498, i64 %503
  %505 = load i32, ptr %504, align 1, !tbaa !23
  %506 = icmp eq i32 %501, %505
  br i1 %506, label %507, label %607

507:                                              ; preds = %496
  %508 = getelementptr inbounds nuw i8, ptr %498, i64 4
  %509 = getelementptr inbounds i8, ptr %508, i64 %503
  %510 = icmp ult ptr %508, %69
  br i1 %510, label %511, label %537

511:                                              ; preds = %507
  %512 = load i64, ptr %509, align 1, !tbaa !22
  %513 = load i64, ptr %508, align 1, !tbaa !22
  %514 = icmp eq i64 %512, %513
  br i1 %514, label %519, label %515

515:                                              ; preds = %511
  %516 = xor i64 %513, %512
  %517 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %516, i1 true)
  %518 = lshr i64 %517, 3
  br label %574

519:                                              ; preds = %511, %525
  %520 = phi ptr [ %523, %525 ], [ %509, %511 ]
  %521 = phi ptr [ %522, %525 ], [ %508, %511 ]
  %522 = getelementptr inbounds nuw i8, ptr %521, i64 8
  %523 = getelementptr inbounds nuw i8, ptr %520, i64 8
  %524 = icmp ult ptr %522, %69
  br i1 %524, label %525, label %537

525:                                              ; preds = %519
  %526 = load i64, ptr %523, align 1, !tbaa !22
  %527 = load i64, ptr %522, align 1, !tbaa !22
  %528 = icmp eq i64 %526, %527
  br i1 %528, label %519, label %529

529:                                              ; preds = %525
  %530 = xor i64 %527, %526
  %531 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %530, i1 true)
  %532 = lshr i64 %531, 3
  %533 = getelementptr inbounds nuw i8, ptr %522, i64 %532
  %534 = ptrtoint ptr %533 to i64
  %535 = ptrtoint ptr %508 to i64
  %536 = sub i64 %534, %535
  br label %574

537:                                              ; preds = %519, %507
  %538 = phi ptr [ %509, %507 ], [ %523, %519 ]
  %539 = phi ptr [ %508, %507 ], [ %522, %519 ]
  %540 = icmp ult ptr %539, %70
  br i1 %540, label %541, label %548

541:                                              ; preds = %537
  %542 = load i32, ptr %538, align 1, !tbaa !23
  %543 = load i32, ptr %539, align 1, !tbaa !23
  %544 = icmp eq i32 %542, %543
  br i1 %544, label %545, label %548

545:                                              ; preds = %541
  %546 = getelementptr inbounds nuw i8, ptr %539, i64 4
  %547 = getelementptr inbounds nuw i8, ptr %538, i64 4
  br label %548

548:                                              ; preds = %545, %541, %537
  %549 = phi ptr [ %547, %545 ], [ %538, %541 ], [ %538, %537 ]
  %550 = phi ptr [ %546, %545 ], [ %539, %541 ], [ %539, %537 ]
  %551 = icmp ult ptr %550, %71
  br i1 %551, label %552, label %559

552:                                              ; preds = %548
  %553 = load i16, ptr %549, align 1, !tbaa !37
  %554 = load i16, ptr %550, align 1, !tbaa !37
  %555 = icmp eq i16 %553, %554
  br i1 %555, label %556, label %559

556:                                              ; preds = %552
  %557 = getelementptr inbounds nuw i8, ptr %550, i64 2
  %558 = getelementptr inbounds nuw i8, ptr %549, i64 2
  br label %559

559:                                              ; preds = %556, %552, %548
  %560 = phi ptr [ %558, %556 ], [ %549, %552 ], [ %549, %548 ]
  %561 = phi ptr [ %557, %556 ], [ %550, %552 ], [ %550, %548 ]
  %562 = icmp ult ptr %561, %38
  br i1 %562, label %563, label %569

563:                                              ; preds = %559
  %564 = load i8, ptr %560, align 1, !tbaa !34
  %565 = load i8, ptr %561, align 1, !tbaa !34
  %566 = icmp eq i8 %564, %565
  %567 = zext i1 %566 to i64
  %568 = getelementptr inbounds nuw i8, ptr %561, i64 %567
  br label %569

569:                                              ; preds = %563, %559
  %570 = phi ptr [ %561, %559 ], [ %568, %563 ]
  %571 = ptrtoint ptr %570 to i64
  %572 = ptrtoint ptr %508 to i64
  %573 = sub i64 %571, %572
  br label %574

574:                                              ; preds = %569, %529, %515
  %575 = phi i64 [ %573, %569 ], [ %518, %515 ], [ %536, %529 ]
  %576 = ptrtoint ptr %498 to i64
  %577 = sub i64 %576, %21
  %578 = trunc i64 %577 to i32
  %579 = mul i32 %501, -1640531535
  %580 = lshr i32 %579, %68
  %581 = zext i32 %580 to i64
  %582 = getelementptr inbounds nuw i32, ptr %12, i64 %581
  store i32 %578, ptr %582, align 4, !tbaa !23
  %583 = getelementptr i8, ptr %498, i64 %575
  %584 = getelementptr i8, ptr %583, i64 4
  %585 = icmp ugt ptr %498, %72
  br i1 %585, label %590, label %586

586:                                              ; preds = %574
  %587 = load ptr, ptr %73, align 8, !tbaa !39
  %588 = load <2 x i64>, ptr %498, align 1, !tbaa !34
  store <2 x i64> %588, ptr %587, align 1, !tbaa !34
  %589 = load ptr, ptr %76, align 8, !tbaa !50
  br label %590

590:                                              ; preds = %586, %574
  %591 = phi ptr [ %497, %574 ], [ %589, %586 ]
  %592 = getelementptr inbounds nuw i8, ptr %591, i64 4
  store i16 0, ptr %592, align 4, !tbaa !55
  store i32 1, ptr %591, align 4, !tbaa !57
  %593 = add i64 %575, 1
  %594 = icmp ugt i64 %593, 65535
  br i1 %594, label %595, label %602, !prof !58

595:                                              ; preds = %590
  store i32 2, ptr %75, align 8, !tbaa !52
  %596 = load ptr, ptr %1, align 8, !tbaa !53
  %597 = ptrtoint ptr %591 to i64
  %598 = ptrtoint ptr %596 to i64
  %599 = sub i64 %597, %598
  %600 = lshr exact i64 %599, 3
  %601 = trunc i64 %600 to i32
  store i32 %601, ptr %77, align 4, !tbaa !54
  br label %602

602:                                              ; preds = %595, %590
  %603 = trunc i64 %593 to i16
  %604 = getelementptr inbounds nuw i8, ptr %591, i64 6
  store i16 %603, ptr %604, align 2, !tbaa !59
  %605 = getelementptr inbounds nuw i8, ptr %591, i64 8
  store ptr %605, ptr %76, align 8, !tbaa !50
  %606 = icmp ugt ptr %584, %39
  br i1 %606, label %607, label %496

607:                                              ; preds = %602, %496, %477, %471
  %608 = phi i32 [ 0, %477 ], [ %223, %471 ], [ %500, %496 ], [ %499, %602 ]
  %609 = phi i32 [ %227, %477 ], [ %227, %471 ], [ %499, %496 ], [ %500, %602 ]
  %610 = phi ptr [ %475, %477 ], [ %475, %471 ], [ %498, %496 ], [ %584, %602 ]
  %611 = getelementptr inbounds nuw i8, ptr %610, i64 %17
  %612 = getelementptr inbounds nuw i8, ptr %611, i64 1
  %613 = icmp ult ptr %612, %39
  br i1 %613, label %78, label %4656

614:                                              ; preds = %63
  br i1 %62, label %615, label %4656

615:                                              ; preds = %614
  %616 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %617 = load i32, ptr %616, align 4, !tbaa !21
  %618 = sub i32 64, %617
  %619 = zext nneg i32 %618 to i64
  %620 = getelementptr inbounds i8, ptr %38, i64 -7
  %621 = getelementptr inbounds i8, ptr %38, i64 -3
  %622 = getelementptr inbounds i8, ptr %38, i64 -1
  %623 = getelementptr inbounds i8, ptr %38, i64 -32
  %624 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %625 = ptrtoint ptr %623 to i64
  %626 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %627 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %628 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %629

629:                                              ; preds = %1151, %615
  %630 = phi ptr [ %61, %615 ], [ %1156, %1151 ]
  %631 = phi ptr [ %60, %615 ], [ %1155, %1151 ]
  %632 = phi ptr [ %3, %615 ], [ %1154, %1151 ]
  %633 = phi ptr [ %45, %615 ], [ %1154, %1151 ]
  %634 = phi i32 [ %58, %615 ], [ %1153, %1151 ]
  %635 = phi i32 [ %56, %615 ], [ %1152, %1151 ]
  %636 = getelementptr inbounds nuw i8, ptr %633, i64 1
  %637 = getelementptr inbounds nuw i8, ptr %633, i64 128
  %638 = load i64, ptr %633, align 1, !tbaa !22
  %639 = mul i64 %638, -3523014627271114752
  %640 = lshr i64 %639, %619
  %641 = load i64, ptr %636, align 1, !tbaa !22
  %642 = getelementptr inbounds nuw i32, ptr %12, i64 %640
  %643 = load i32, ptr %642, align 4, !tbaa !23
  %644 = zext i32 %634 to i64
  %645 = sub nsw i64 0, %644
  %646 = icmp ne i32 %634, 0
  br label %647

647:                                              ; preds = %723, %629
  %648 = phi i64 [ %640, %629 ], [ %682, %723 ]
  %649 = phi i64 [ %641, %629 ], [ %699, %723 ]
  %650 = phi i32 [ %643, %629 ], [ %698, %723 ]
  %651 = phi i64 [ %17, %629 ], [ %724, %723 ]
  %652 = phi ptr [ %637, %629 ], [ %725, %723 ]
  %653 = phi ptr [ %630, %629 ], [ %701, %723 ]
  %654 = phi ptr [ %631, %629 ], [ %700, %723 ]
  %655 = phi ptr [ %636, %629 ], [ %653, %723 ]
  %656 = phi ptr [ %633, %629 ], [ %654, %723 ]
  %657 = mul i64 %649, -3523014627271114752
  %658 = lshr i64 %657, %619
  %659 = getelementptr inbounds i8, ptr %654, i64 %645
  %660 = load i32, ptr %659, align 1, !tbaa !23
  %661 = ptrtoint ptr %656 to i64
  %662 = sub i64 %661, %21
  %663 = trunc i64 %662 to i32
  %664 = getelementptr inbounds nuw i32, ptr %12, i64 %648
  store i32 %663, ptr %664, align 4, !tbaa !23
  %665 = load i32, ptr %654, align 1, !tbaa !23
  %666 = icmp eq i32 %665, %660
  %667 = and i1 %646, %666
  br i1 %667, label %708, label %668

668:                                              ; preds = %647
  %669 = zext i32 %650 to i64
  %670 = getelementptr inbounds nuw i8, ptr %19, i64 %669
  %671 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %650, i32 %35, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %670) #7, !srcloc !32
  %672 = load i32, ptr %656, align 1, !tbaa !23
  %673 = load i32, ptr %671, align 1, !tbaa !23
  %674 = icmp eq i32 %672, %673
  br i1 %674, label %675, label %677

675:                                              ; preds = %668
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !33
  %676 = icmp ult i32 %650, %35
  br i1 %676, label %677, label %727

677:                                              ; preds = %675, %668
  %678 = getelementptr inbounds nuw i32, ptr %12, i64 %658
  %679 = load i32, ptr %678, align 4, !tbaa !23
  %680 = load i64, ptr %654, align 1, !tbaa !22
  %681 = mul i64 %680, -3523014627271114752
  %682 = lshr i64 %681, %619
  %683 = ptrtoint ptr %655 to i64
  %684 = sub i64 %683, %21
  %685 = trunc i64 %684 to i32
  store i32 %685, ptr %678, align 4, !tbaa !23
  %686 = zext i32 %679 to i64
  %687 = getelementptr inbounds nuw i8, ptr %19, i64 %686
  %688 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %679, i32 %35, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %687) #7, !srcloc !32
  %689 = load i32, ptr %655, align 1, !tbaa !23
  %690 = load i32, ptr %688, align 1, !tbaa !23
  %691 = icmp eq i32 %689, %690
  br i1 %691, label %692, label %696

692:                                              ; preds = %677
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !33
  %693 = icmp ult i32 %679, %35
  br i1 %693, label %696, label %694

694:                                              ; preds = %692
  %695 = icmp ult i64 %651, 5
  br i1 %695, label %727, label %739

696:                                              ; preds = %692, %677
  %697 = getelementptr inbounds nuw i32, ptr %12, i64 %682
  %698 = load i32, ptr %697, align 4, !tbaa !23
  %699 = load i64, ptr %653, align 1, !tbaa !22
  %700 = getelementptr inbounds nuw i8, ptr %654, i64 %651
  %701 = getelementptr inbounds nuw i8, ptr %653, i64 %651
  %702 = icmp ult ptr %700, %652
  br i1 %702, label %723, label %703

703:                                              ; preds = %696
  %704 = add i64 %651, 1
  %705 = getelementptr inbounds nuw i8, ptr %653, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %705, i32 0, i32 3, i32 1)
  %706 = getelementptr inbounds nuw i8, ptr %653, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %706, i32 0, i32 3, i32 1)
  %707 = getelementptr inbounds nuw i8, ptr %652, i64 128
  br label %723

708:                                              ; preds = %647
  %709 = getelementptr inbounds i8, ptr %654, i64 %645
  %710 = getelementptr inbounds i8, ptr %654, i64 -1
  %711 = load i8, ptr %710, align 1, !tbaa !34
  %712 = getelementptr inbounds i8, ptr %709, i64 -1
  %713 = load i8, ptr %712, align 1, !tbaa !34
  %714 = icmp eq i8 %711, %713
  %715 = sext i1 %714 to i64
  %716 = getelementptr inbounds i8, ptr %654, i64 %715
  %717 = getelementptr inbounds i8, ptr %709, i64 %715
  %718 = select i1 %714, i64 5, i64 4
  %719 = ptrtoint ptr %655 to i64
  %720 = sub i64 %719, %21
  %721 = trunc i64 %720 to i32
  %722 = getelementptr inbounds nuw i32, ptr %12, i64 %658
  store i32 %721, ptr %722, align 4, !tbaa !23
  br label %767

723:                                              ; preds = %703, %696
  %724 = phi i64 [ %651, %696 ], [ %704, %703 ]
  %725 = phi ptr [ %652, %696 ], [ %707, %703 ]
  %726 = icmp ult ptr %701, %39
  br i1 %726, label %647, label %4656, !llvm.loop !35

727:                                              ; preds = %675, %694
  %728 = phi ptr [ %654, %694 ], [ %655, %675 ]
  %729 = phi i64 [ %682, %694 ], [ %658, %675 ]
  %730 = phi i64 [ %683, %694 ], [ %661, %675 ]
  %731 = phi i64 [ %686, %694 ], [ %669, %675 ]
  %732 = phi i32 [ %679, %694 ], [ %650, %675 ]
  %733 = phi i32 [ %685, %694 ], [ %663, %675 ]
  %734 = phi ptr [ %655, %694 ], [ %656, %675 ]
  %735 = ptrtoint ptr %728 to i64
  %736 = sub i64 %735, %21
  %737 = trunc i64 %736 to i32
  %738 = getelementptr inbounds nuw i32, ptr %12, i64 %729
  store i32 %737, ptr %738, align 4, !tbaa !23
  br label %739

739:                                              ; preds = %727, %694
  %740 = phi i64 [ %683, %694 ], [ %730, %727 ]
  %741 = phi i64 [ %686, %694 ], [ %731, %727 ]
  %742 = phi i32 [ %679, %694 ], [ %732, %727 ]
  %743 = phi i32 [ %685, %694 ], [ %733, %727 ]
  %744 = phi ptr [ %655, %694 ], [ %734, %727 ]
  %745 = getelementptr inbounds nuw i8, ptr %19, i64 %741
  %746 = ptrtoint ptr %745 to i64
  %747 = sub i64 %740, %746
  %748 = trunc i64 %747 to i32
  %749 = add i32 %748, 3
  %750 = icmp ugt ptr %744, %632
  %751 = icmp ugt i32 %742, %35
  %752 = and i1 %751, %750
  br i1 %752, label %753, label %767

753:                                              ; preds = %739, %762
  %754 = phi ptr [ %757, %762 ], [ %744, %739 ]
  %755 = phi i64 [ %763, %762 ], [ 4, %739 ]
  %756 = phi ptr [ %759, %762 ], [ %745, %739 ]
  %757 = getelementptr inbounds i8, ptr %754, i64 -1
  %758 = load i8, ptr %757, align 1, !tbaa !34
  %759 = getelementptr inbounds i8, ptr %756, i64 -1
  %760 = load i8, ptr %759, align 1, !tbaa !34
  %761 = icmp eq i8 %758, %760
  br i1 %761, label %762, label %767

762:                                              ; preds = %753
  %763 = add i64 %755, 1
  %764 = icmp ugt ptr %757, %632
  %765 = icmp ugt ptr %759, %37
  %766 = and i1 %764, %765
  br i1 %766, label %753, label %767, !llvm.loop !36

767:                                              ; preds = %762, %753, %739, %708
  %768 = phi i32 [ %663, %708 ], [ %743, %739 ], [ %743, %753 ], [ %743, %762 ]
  %769 = phi i32 [ %635, %708 ], [ %634, %739 ], [ %634, %753 ], [ %634, %762 ]
  %770 = phi i32 [ 1, %708 ], [ %749, %739 ], [ %749, %753 ], [ %749, %762 ]
  %771 = phi ptr [ %717, %708 ], [ %745, %739 ], [ %759, %762 ], [ %756, %753 ]
  %772 = phi i64 [ %718, %708 ], [ 4, %739 ], [ %763, %762 ], [ %755, %753 ]
  %773 = phi i32 [ %634, %708 ], [ %748, %739 ], [ %748, %753 ], [ %748, %762 ]
  %774 = phi ptr [ %716, %708 ], [ %744, %739 ], [ %757, %762 ], [ %754, %753 ]
  %775 = getelementptr inbounds nuw i8, ptr %774, i64 %772
  %776 = getelementptr inbounds nuw i8, ptr %771, i64 %772
  %777 = icmp ult ptr %775, %620
  br i1 %777, label %778, label %804

778:                                              ; preds = %767
  %779 = load i64, ptr %776, align 1, !tbaa !22
  %780 = load i64, ptr %775, align 1, !tbaa !22
  %781 = icmp eq i64 %779, %780
  br i1 %781, label %786, label %782

782:                                              ; preds = %778
  %783 = xor i64 %780, %779
  %784 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %783, i1 true)
  %785 = lshr i64 %784, 3
  br label %841

786:                                              ; preds = %778, %792
  %787 = phi ptr [ %790, %792 ], [ %776, %778 ]
  %788 = phi ptr [ %789, %792 ], [ %775, %778 ]
  %789 = getelementptr inbounds nuw i8, ptr %788, i64 8
  %790 = getelementptr inbounds nuw i8, ptr %787, i64 8
  %791 = icmp ult ptr %789, %620
  br i1 %791, label %792, label %804

792:                                              ; preds = %786
  %793 = load i64, ptr %790, align 1, !tbaa !22
  %794 = load i64, ptr %789, align 1, !tbaa !22
  %795 = icmp eq i64 %793, %794
  br i1 %795, label %786, label %796

796:                                              ; preds = %792
  %797 = xor i64 %794, %793
  %798 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %797, i1 true)
  %799 = lshr i64 %798, 3
  %800 = getelementptr inbounds nuw i8, ptr %789, i64 %799
  %801 = ptrtoint ptr %800 to i64
  %802 = ptrtoint ptr %775 to i64
  %803 = sub i64 %801, %802
  br label %841

804:                                              ; preds = %786, %767
  %805 = phi ptr [ %776, %767 ], [ %790, %786 ]
  %806 = phi ptr [ %775, %767 ], [ %789, %786 ]
  %807 = icmp ult ptr %806, %621
  br i1 %807, label %808, label %815

808:                                              ; preds = %804
  %809 = load i32, ptr %805, align 1, !tbaa !23
  %810 = load i32, ptr %806, align 1, !tbaa !23
  %811 = icmp eq i32 %809, %810
  br i1 %811, label %812, label %815

812:                                              ; preds = %808
  %813 = getelementptr inbounds nuw i8, ptr %806, i64 4
  %814 = getelementptr inbounds nuw i8, ptr %805, i64 4
  br label %815

815:                                              ; preds = %812, %808, %804
  %816 = phi ptr [ %814, %812 ], [ %805, %808 ], [ %805, %804 ]
  %817 = phi ptr [ %813, %812 ], [ %806, %808 ], [ %806, %804 ]
  %818 = icmp ult ptr %817, %622
  br i1 %818, label %819, label %826

819:                                              ; preds = %815
  %820 = load i16, ptr %816, align 1, !tbaa !37
  %821 = load i16, ptr %817, align 1, !tbaa !37
  %822 = icmp eq i16 %820, %821
  br i1 %822, label %823, label %826

823:                                              ; preds = %819
  %824 = getelementptr inbounds nuw i8, ptr %817, i64 2
  %825 = getelementptr inbounds nuw i8, ptr %816, i64 2
  br label %826

826:                                              ; preds = %823, %819, %815
  %827 = phi ptr [ %825, %823 ], [ %816, %819 ], [ %816, %815 ]
  %828 = phi ptr [ %824, %823 ], [ %817, %819 ], [ %817, %815 ]
  %829 = icmp ult ptr %828, %38
  br i1 %829, label %830, label %836

830:                                              ; preds = %826
  %831 = load i8, ptr %827, align 1, !tbaa !34
  %832 = load i8, ptr %828, align 1, !tbaa !34
  %833 = icmp eq i8 %831, %832
  %834 = zext i1 %833 to i64
  %835 = getelementptr inbounds nuw i8, ptr %828, i64 %834
  br label %836

836:                                              ; preds = %830, %826
  %837 = phi ptr [ %828, %826 ], [ %835, %830 ]
  %838 = ptrtoint ptr %837 to i64
  %839 = ptrtoint ptr %775 to i64
  %840 = sub i64 %838, %839
  br label %841

841:                                              ; preds = %836, %796, %782
  %842 = phi i64 [ %840, %836 ], [ %785, %782 ], [ %803, %796 ]
  %843 = add i64 %842, %772
  %844 = ptrtoint ptr %774 to i64
  %845 = ptrtoint ptr %632 to i64
  %846 = sub i64 %844, %845
  %847 = icmp ugt ptr %774, %623
  %848 = load ptr, ptr %624, align 8, !tbaa !39
  br i1 %847, label %872, label %849

849:                                              ; preds = %841
  %850 = load <2 x i64>, ptr %632, align 1, !tbaa !34
  store <2 x i64> %850, ptr %848, align 1, !tbaa !34
  %851 = icmp ugt i64 %846, 16
  br i1 %851, label %852, label %988

852:                                              ; preds = %849
  %853 = load ptr, ptr %624, align 8, !tbaa !39
  %854 = getelementptr inbounds nuw i8, ptr %853, i64 16
  %855 = getelementptr inbounds nuw i8, ptr %632, i64 16
  %856 = add i64 %846, -16
  %857 = getelementptr i8, ptr %853, i64 %846
  %858 = load <2 x i64>, ptr %855, align 1, !tbaa !34
  store <2 x i64> %858, ptr %854, align 1, !tbaa !34
  %859 = icmp ult i64 %856, 17
  br i1 %859, label %988, label %860

860:                                              ; preds = %852
  %861 = getelementptr inbounds nuw i8, ptr %853, i64 32
  br label %862

862:                                              ; preds = %862, %860
  %863 = phi ptr [ %861, %860 ], [ %870, %862 ]
  %864 = phi ptr [ %855, %860 ], [ %868, %862 ]
  %865 = getelementptr inbounds nuw i8, ptr %864, i64 16
  %866 = load <2 x i64>, ptr %865, align 1, !tbaa !34
  store <2 x i64> %866, ptr %863, align 1, !tbaa !34
  %867 = getelementptr inbounds nuw i8, ptr %863, i64 16
  %868 = getelementptr inbounds nuw i8, ptr %864, i64 32
  %869 = load <2 x i64>, ptr %868, align 1, !tbaa !34
  store <2 x i64> %869, ptr %867, align 1, !tbaa !34
  %870 = getelementptr inbounds nuw i8, ptr %863, i64 32
  %871 = icmp ult ptr %870, %857
  br i1 %871, label %862, label %992, !llvm.loop !42

872:                                              ; preds = %841
  %873 = icmp ugt ptr %632, %623
  br i1 %873, label %891, label %874

874:                                              ; preds = %872
  %875 = sub i64 %625, %845
  %876 = getelementptr inbounds i8, ptr %848, i64 %875
  %877 = load <2 x i64>, ptr %632, align 1, !tbaa !34
  store <2 x i64> %877, ptr %848, align 1, !tbaa !34
  %878 = icmp ult i64 %875, 17
  br i1 %878, label %891, label %879

879:                                              ; preds = %874
  %880 = getelementptr inbounds nuw i8, ptr %848, i64 16
  br label %881

881:                                              ; preds = %881, %879
  %882 = phi ptr [ %880, %879 ], [ %889, %881 ]
  %883 = phi ptr [ %632, %879 ], [ %887, %881 ]
  %884 = getelementptr inbounds nuw i8, ptr %883, i64 16
  %885 = load <2 x i64>, ptr %884, align 1, !tbaa !34
  store <2 x i64> %885, ptr %882, align 1, !tbaa !34
  %886 = getelementptr inbounds nuw i8, ptr %882, i64 16
  %887 = getelementptr inbounds nuw i8, ptr %883, i64 32
  %888 = load <2 x i64>, ptr %887, align 1, !tbaa !34
  store <2 x i64> %888, ptr %886, align 1, !tbaa !34
  %889 = getelementptr inbounds nuw i8, ptr %882, i64 32
  %890 = icmp ult ptr %889, %876
  br i1 %890, label %881, label %891, !llvm.loop !42

891:                                              ; preds = %881, %874, %872
  %892 = phi ptr [ %623, %874 ], [ %632, %872 ], [ %623, %881 ]
  %893 = phi ptr [ %876, %874 ], [ %848, %872 ], [ %876, %881 ]
  %894 = icmp ult ptr %892, %774
  br i1 %894, label %895, label %992

895:                                              ; preds = %891
  %896 = ptrtoint ptr %892 to i64
  %897 = ptrtoint ptr %893 to i64
  %898 = ptrtoint ptr %892 to i64
  %899 = sub i64 %844, %898
  %900 = icmp ult i64 %899, 4
  %901 = sub i64 %897, %896
  %902 = icmp ult i64 %901, 32
  %903 = select i1 %900, i1 true, i1 %902
  br i1 %903, label %939, label %904

904:                                              ; preds = %895
  %905 = icmp ult i64 %899, 32
  br i1 %905, label %925, label %906

906:                                              ; preds = %904
  %907 = and i64 %899, -32
  br label %908

908:                                              ; preds = %908, %906
  %909 = phi i64 [ 0, %906 ], [ %916, %908 ]
  %910 = getelementptr i8, ptr %893, i64 %909
  %911 = getelementptr i8, ptr %892, i64 %909
  %912 = getelementptr i8, ptr %911, i64 16
  %913 = load <16 x i8>, ptr %911, align 1, !tbaa !34
  %914 = load <16 x i8>, ptr %912, align 1, !tbaa !34
  %915 = getelementptr i8, ptr %910, i64 16
  store <16 x i8> %913, ptr %910, align 1, !tbaa !34
  store <16 x i8> %914, ptr %915, align 1, !tbaa !34
  %916 = add nuw i64 %909, 32
  %917 = icmp eq i64 %916, %907
  br i1 %917, label %918, label %908, !llvm.loop !60

918:                                              ; preds = %908
  %919 = icmp eq i64 %899, %907
  br i1 %919, label %992, label %920

920:                                              ; preds = %918
  %921 = getelementptr i8, ptr %893, i64 %907
  %922 = getelementptr i8, ptr %892, i64 %907
  %923 = and i64 %899, 28
  %924 = icmp eq i64 %923, 0
  br i1 %924, label %939, label %925

925:                                              ; preds = %920, %904
  %926 = phi i64 [ %907, %920 ], [ 0, %904 ]
  %927 = and i64 %899, -4
  %928 = getelementptr i8, ptr %893, i64 %927
  %929 = getelementptr i8, ptr %892, i64 %927
  br label %930

930:                                              ; preds = %930, %925
  %931 = phi i64 [ %926, %925 ], [ %935, %930 ]
  %932 = getelementptr i8, ptr %893, i64 %931
  %933 = getelementptr i8, ptr %892, i64 %931
  %934 = load <4 x i8>, ptr %933, align 1, !tbaa !34
  store <4 x i8> %934, ptr %932, align 1, !tbaa !34
  %935 = add nuw i64 %931, 4
  %936 = icmp eq i64 %935, %927
  br i1 %936, label %937, label %930, !llvm.loop !61

937:                                              ; preds = %930
  %938 = icmp eq i64 %899, %927
  br i1 %938, label %992, label %939

939:                                              ; preds = %920, %937, %895
  %940 = phi ptr [ %893, %895 ], [ %921, %920 ], [ %928, %937 ]
  %941 = phi ptr [ %892, %895 ], [ %922, %920 ], [ %929, %937 ]
  %942 = ptrtoint ptr %941 to i64
  %943 = sub i64 %844, %942
  %944 = and i64 %943, 7
  %945 = icmp eq i64 %944, 0
  br i1 %945, label %955, label %946

946:                                              ; preds = %939, %946
  %947 = phi ptr [ %952, %946 ], [ %940, %939 ]
  %948 = phi ptr [ %950, %946 ], [ %941, %939 ]
  %949 = phi i64 [ %953, %946 ], [ 0, %939 ]
  %950 = getelementptr inbounds nuw i8, ptr %948, i64 1
  %951 = load i8, ptr %948, align 1, !tbaa !34
  %952 = getelementptr inbounds nuw i8, ptr %947, i64 1
  store i8 %951, ptr %947, align 1, !tbaa !34
  %953 = add i64 %949, 1
  %954 = icmp eq i64 %953, %944
  br i1 %954, label %955, label %946, !llvm.loop !62

955:                                              ; preds = %946, %939
  %956 = phi ptr [ %940, %939 ], [ %952, %946 ]
  %957 = phi ptr [ %941, %939 ], [ %950, %946 ]
  %958 = sub i64 %942, %844
  %959 = icmp ugt i64 %958, -8
  br i1 %959, label %992, label %960

960:                                              ; preds = %955, %960
  %961 = phi ptr [ %986, %960 ], [ %956, %955 ]
  %962 = phi ptr [ %984, %960 ], [ %957, %955 ]
  %963 = getelementptr inbounds nuw i8, ptr %962, i64 1
  %964 = load i8, ptr %962, align 1, !tbaa !34
  %965 = getelementptr inbounds nuw i8, ptr %961, i64 1
  store i8 %964, ptr %961, align 1, !tbaa !34
  %966 = getelementptr inbounds nuw i8, ptr %962, i64 2
  %967 = load i8, ptr %963, align 1, !tbaa !34
  %968 = getelementptr inbounds nuw i8, ptr %961, i64 2
  store i8 %967, ptr %965, align 1, !tbaa !34
  %969 = getelementptr inbounds nuw i8, ptr %962, i64 3
  %970 = load i8, ptr %966, align 1, !tbaa !34
  %971 = getelementptr inbounds nuw i8, ptr %961, i64 3
  store i8 %970, ptr %968, align 1, !tbaa !34
  %972 = getelementptr inbounds nuw i8, ptr %962, i64 4
  %973 = load i8, ptr %969, align 1, !tbaa !34
  %974 = getelementptr inbounds nuw i8, ptr %961, i64 4
  store i8 %973, ptr %971, align 1, !tbaa !34
  %975 = getelementptr inbounds nuw i8, ptr %962, i64 5
  %976 = load i8, ptr %972, align 1, !tbaa !34
  %977 = getelementptr inbounds nuw i8, ptr %961, i64 5
  store i8 %976, ptr %974, align 1, !tbaa !34
  %978 = getelementptr inbounds nuw i8, ptr %962, i64 6
  %979 = load i8, ptr %975, align 1, !tbaa !34
  %980 = getelementptr inbounds nuw i8, ptr %961, i64 6
  store i8 %979, ptr %977, align 1, !tbaa !34
  %981 = getelementptr inbounds nuw i8, ptr %962, i64 7
  %982 = load i8, ptr %978, align 1, !tbaa !34
  %983 = getelementptr inbounds nuw i8, ptr %961, i64 7
  store i8 %982, ptr %980, align 1, !tbaa !34
  %984 = getelementptr inbounds nuw i8, ptr %962, i64 8
  %985 = load i8, ptr %981, align 1, !tbaa !34
  %986 = getelementptr inbounds nuw i8, ptr %961, i64 8
  store i8 %985, ptr %983, align 1, !tbaa !34
  %987 = icmp eq ptr %984, %774
  br i1 %987, label %992, label %960, !llvm.loop !63

988:                                              ; preds = %852, %849
  %989 = load ptr, ptr %624, align 8, !tbaa !39
  %990 = getelementptr inbounds nuw i8, ptr %989, i64 %846
  store ptr %990, ptr %624, align 8, !tbaa !39
  %991 = load ptr, ptr %627, align 8, !tbaa !50
  br label %1004

992:                                              ; preds = %862, %955, %960, %918, %937, %891
  %993 = load ptr, ptr %624, align 8, !tbaa !39
  %994 = getelementptr inbounds nuw i8, ptr %993, i64 %846
  store ptr %994, ptr %624, align 8, !tbaa !39
  %995 = icmp ugt i64 %846, 65535
  %996 = load ptr, ptr %627, align 8, !tbaa !50
  br i1 %995, label %997, label %1004, !prof !51

997:                                              ; preds = %992
  store i32 1, ptr %626, align 8, !tbaa !52
  %998 = load ptr, ptr %1, align 8, !tbaa !53
  %999 = ptrtoint ptr %996 to i64
  %1000 = ptrtoint ptr %998 to i64
  %1001 = sub i64 %999, %1000
  %1002 = lshr exact i64 %1001, 3
  %1003 = trunc i64 %1002 to i32
  store i32 %1003, ptr %628, align 4, !tbaa !54
  br label %1004

1004:                                             ; preds = %997, %992, %988
  %1005 = phi ptr [ %991, %988 ], [ %996, %997 ], [ %996, %992 ]
  %1006 = trunc i64 %846 to i16
  %1007 = getelementptr inbounds nuw i8, ptr %1005, i64 4
  store i16 %1006, ptr %1007, align 4, !tbaa !55
  store i32 %770, ptr %1005, align 4, !tbaa !57
  %1008 = add i64 %843, -3
  %1009 = icmp ugt i64 %1008, 65535
  br i1 %1009, label %1010, label %1017, !prof !58

1010:                                             ; preds = %1004
  store i32 2, ptr %626, align 8, !tbaa !52
  %1011 = load ptr, ptr %1, align 8, !tbaa !53
  %1012 = ptrtoint ptr %1005 to i64
  %1013 = ptrtoint ptr %1011 to i64
  %1014 = sub i64 %1012, %1013
  %1015 = lshr exact i64 %1014, 3
  %1016 = trunc i64 %1015 to i32
  store i32 %1016, ptr %628, align 4, !tbaa !54
  br label %1017

1017:                                             ; preds = %1010, %1004
  %1018 = trunc i64 %1008 to i16
  %1019 = getelementptr inbounds nuw i8, ptr %1005, i64 6
  store i16 %1018, ptr %1019, align 2, !tbaa !59
  %1020 = getelementptr inbounds nuw i8, ptr %1005, i64 8
  store ptr %1020, ptr %627, align 8, !tbaa !50
  %1021 = getelementptr inbounds nuw i8, ptr %774, i64 %843
  %1022 = icmp ugt ptr %1021, %39
  br i1 %1022, label %1151, label %1023

1023:                                             ; preds = %1017
  %1024 = add i32 %768, 2
  %1025 = zext i32 %768 to i64
  %1026 = getelementptr inbounds nuw i8, ptr %59, i64 %1025
  %1027 = load i64, ptr %1026, align 1, !tbaa !22
  %1028 = mul i64 %1027, -3523014627271114752
  %1029 = lshr i64 %1028, %619
  %1030 = getelementptr inbounds nuw i32, ptr %12, i64 %1029
  store i32 %1024, ptr %1030, align 4, !tbaa !23
  %1031 = getelementptr inbounds i8, ptr %1021, i64 -2
  %1032 = ptrtoint ptr %1031 to i64
  %1033 = sub i64 %1032, %21
  %1034 = trunc i64 %1033 to i32
  %1035 = load i64, ptr %1031, align 1, !tbaa !22
  %1036 = mul i64 %1035, -3523014627271114752
  %1037 = lshr i64 %1036, %619
  %1038 = getelementptr inbounds nuw i32, ptr %12, i64 %1037
  store i32 %1034, ptr %1038, align 4, !tbaa !23
  %1039 = icmp eq i32 %769, 0
  br i1 %1039, label %1151, label %1040

1040:                                             ; preds = %1023, %1146
  %1041 = phi ptr [ %1149, %1146 ], [ %1020, %1023 ]
  %1042 = phi ptr [ %1128, %1146 ], [ %1021, %1023 ]
  %1043 = phi i32 [ %1044, %1146 ], [ %773, %1023 ]
  %1044 = phi i32 [ %1043, %1146 ], [ %769, %1023 ]
  %1045 = load i32, ptr %1042, align 1, !tbaa !23
  %1046 = zext i32 %1044 to i64
  %1047 = sub nsw i64 0, %1046
  %1048 = getelementptr inbounds i8, ptr %1042, i64 %1047
  %1049 = load i32, ptr %1048, align 1, !tbaa !23
  %1050 = icmp eq i32 %1045, %1049
  br i1 %1050, label %1051, label %1151

1051:                                             ; preds = %1040
  %1052 = getelementptr inbounds nuw i8, ptr %1042, i64 4
  %1053 = getelementptr inbounds i8, ptr %1052, i64 %1047
  %1054 = icmp ult ptr %1052, %620
  br i1 %1054, label %1055, label %1081

1055:                                             ; preds = %1051
  %1056 = load i64, ptr %1053, align 1, !tbaa !22
  %1057 = load i64, ptr %1052, align 1, !tbaa !22
  %1058 = icmp eq i64 %1056, %1057
  br i1 %1058, label %1063, label %1059

1059:                                             ; preds = %1055
  %1060 = xor i64 %1057, %1056
  %1061 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1060, i1 true)
  %1062 = lshr i64 %1061, 3
  br label %1118

1063:                                             ; preds = %1055, %1069
  %1064 = phi ptr [ %1067, %1069 ], [ %1053, %1055 ]
  %1065 = phi ptr [ %1066, %1069 ], [ %1052, %1055 ]
  %1066 = getelementptr inbounds nuw i8, ptr %1065, i64 8
  %1067 = getelementptr inbounds nuw i8, ptr %1064, i64 8
  %1068 = icmp ult ptr %1066, %620
  br i1 %1068, label %1069, label %1081

1069:                                             ; preds = %1063
  %1070 = load i64, ptr %1067, align 1, !tbaa !22
  %1071 = load i64, ptr %1066, align 1, !tbaa !22
  %1072 = icmp eq i64 %1070, %1071
  br i1 %1072, label %1063, label %1073

1073:                                             ; preds = %1069
  %1074 = xor i64 %1071, %1070
  %1075 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1074, i1 true)
  %1076 = lshr i64 %1075, 3
  %1077 = getelementptr inbounds nuw i8, ptr %1066, i64 %1076
  %1078 = ptrtoint ptr %1077 to i64
  %1079 = ptrtoint ptr %1052 to i64
  %1080 = sub i64 %1078, %1079
  br label %1118

1081:                                             ; preds = %1063, %1051
  %1082 = phi ptr [ %1053, %1051 ], [ %1067, %1063 ]
  %1083 = phi ptr [ %1052, %1051 ], [ %1066, %1063 ]
  %1084 = icmp ult ptr %1083, %621
  br i1 %1084, label %1085, label %1092

1085:                                             ; preds = %1081
  %1086 = load i32, ptr %1082, align 1, !tbaa !23
  %1087 = load i32, ptr %1083, align 1, !tbaa !23
  %1088 = icmp eq i32 %1086, %1087
  br i1 %1088, label %1089, label %1092

1089:                                             ; preds = %1085
  %1090 = getelementptr inbounds nuw i8, ptr %1083, i64 4
  %1091 = getelementptr inbounds nuw i8, ptr %1082, i64 4
  br label %1092

1092:                                             ; preds = %1089, %1085, %1081
  %1093 = phi ptr [ %1091, %1089 ], [ %1082, %1085 ], [ %1082, %1081 ]
  %1094 = phi ptr [ %1090, %1089 ], [ %1083, %1085 ], [ %1083, %1081 ]
  %1095 = icmp ult ptr %1094, %622
  br i1 %1095, label %1096, label %1103

1096:                                             ; preds = %1092
  %1097 = load i16, ptr %1093, align 1, !tbaa !37
  %1098 = load i16, ptr %1094, align 1, !tbaa !37
  %1099 = icmp eq i16 %1097, %1098
  br i1 %1099, label %1100, label %1103

1100:                                             ; preds = %1096
  %1101 = getelementptr inbounds nuw i8, ptr %1094, i64 2
  %1102 = getelementptr inbounds nuw i8, ptr %1093, i64 2
  br label %1103

1103:                                             ; preds = %1100, %1096, %1092
  %1104 = phi ptr [ %1102, %1100 ], [ %1093, %1096 ], [ %1093, %1092 ]
  %1105 = phi ptr [ %1101, %1100 ], [ %1094, %1096 ], [ %1094, %1092 ]
  %1106 = icmp ult ptr %1105, %38
  br i1 %1106, label %1107, label %1113

1107:                                             ; preds = %1103
  %1108 = load i8, ptr %1104, align 1, !tbaa !34
  %1109 = load i8, ptr %1105, align 1, !tbaa !34
  %1110 = icmp eq i8 %1108, %1109
  %1111 = zext i1 %1110 to i64
  %1112 = getelementptr inbounds nuw i8, ptr %1105, i64 %1111
  br label %1113

1113:                                             ; preds = %1107, %1103
  %1114 = phi ptr [ %1105, %1103 ], [ %1112, %1107 ]
  %1115 = ptrtoint ptr %1114 to i64
  %1116 = ptrtoint ptr %1052 to i64
  %1117 = sub i64 %1115, %1116
  br label %1118

1118:                                             ; preds = %1113, %1073, %1059
  %1119 = phi i64 [ %1117, %1113 ], [ %1062, %1059 ], [ %1080, %1073 ]
  %1120 = ptrtoint ptr %1042 to i64
  %1121 = sub i64 %1120, %21
  %1122 = trunc i64 %1121 to i32
  %1123 = load i64, ptr %1042, align 1, !tbaa !22
  %1124 = mul i64 %1123, -3523014627271114752
  %1125 = lshr i64 %1124, %619
  %1126 = getelementptr inbounds nuw i32, ptr %12, i64 %1125
  store i32 %1122, ptr %1126, align 4, !tbaa !23
  %1127 = getelementptr i8, ptr %1042, i64 %1119
  %1128 = getelementptr i8, ptr %1127, i64 4
  %1129 = icmp ugt ptr %1042, %623
  br i1 %1129, label %1134, label %1130

1130:                                             ; preds = %1118
  %1131 = load ptr, ptr %624, align 8, !tbaa !39
  %1132 = load <2 x i64>, ptr %1042, align 1, !tbaa !34
  store <2 x i64> %1132, ptr %1131, align 1, !tbaa !34
  %1133 = load ptr, ptr %627, align 8, !tbaa !50
  br label %1134

1134:                                             ; preds = %1130, %1118
  %1135 = phi ptr [ %1041, %1118 ], [ %1133, %1130 ]
  %1136 = getelementptr inbounds nuw i8, ptr %1135, i64 4
  store i16 0, ptr %1136, align 4, !tbaa !55
  store i32 1, ptr %1135, align 4, !tbaa !57
  %1137 = add i64 %1119, 1
  %1138 = icmp ugt i64 %1137, 65535
  br i1 %1138, label %1139, label %1146, !prof !58

1139:                                             ; preds = %1134
  store i32 2, ptr %626, align 8, !tbaa !52
  %1140 = load ptr, ptr %1, align 8, !tbaa !53
  %1141 = ptrtoint ptr %1135 to i64
  %1142 = ptrtoint ptr %1140 to i64
  %1143 = sub i64 %1141, %1142
  %1144 = lshr exact i64 %1143, 3
  %1145 = trunc i64 %1144 to i32
  store i32 %1145, ptr %628, align 4, !tbaa !54
  br label %1146

1146:                                             ; preds = %1139, %1134
  %1147 = trunc i64 %1137 to i16
  %1148 = getelementptr inbounds nuw i8, ptr %1135, i64 6
  store i16 %1147, ptr %1148, align 2, !tbaa !59
  %1149 = getelementptr inbounds nuw i8, ptr %1135, i64 8
  store ptr %1149, ptr %627, align 8, !tbaa !50
  %1150 = icmp ugt ptr %1128, %39
  br i1 %1150, label %1151, label %1040

1151:                                             ; preds = %1146, %1040, %1023, %1017
  %1152 = phi i32 [ 0, %1023 ], [ %769, %1017 ], [ %1044, %1040 ], [ %1043, %1146 ]
  %1153 = phi i32 [ %773, %1023 ], [ %773, %1017 ], [ %1043, %1040 ], [ %1044, %1146 ]
  %1154 = phi ptr [ %1021, %1023 ], [ %1021, %1017 ], [ %1042, %1040 ], [ %1128, %1146 ]
  %1155 = getelementptr inbounds nuw i8, ptr %1154, i64 %17
  %1156 = getelementptr inbounds nuw i8, ptr %1155, i64 1
  %1157 = icmp ult ptr %1156, %39
  br i1 %1157, label %629, label %4656

1158:                                             ; preds = %63
  br i1 %62, label %1159, label %4656

1159:                                             ; preds = %1158
  %1160 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %1161 = load i32, ptr %1160, align 4, !tbaa !21
  %1162 = sub i32 64, %1161
  %1163 = zext nneg i32 %1162 to i64
  %1164 = getelementptr inbounds i8, ptr %38, i64 -7
  %1165 = getelementptr inbounds i8, ptr %38, i64 -3
  %1166 = getelementptr inbounds i8, ptr %38, i64 -1
  %1167 = getelementptr inbounds i8, ptr %38, i64 -32
  %1168 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %1169 = ptrtoint ptr %1167 to i64
  %1170 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %1171 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %1172 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %1173

1173:                                             ; preds = %1695, %1159
  %1174 = phi ptr [ %61, %1159 ], [ %1700, %1695 ]
  %1175 = phi ptr [ %60, %1159 ], [ %1699, %1695 ]
  %1176 = phi ptr [ %3, %1159 ], [ %1698, %1695 ]
  %1177 = phi ptr [ %45, %1159 ], [ %1698, %1695 ]
  %1178 = phi i32 [ %58, %1159 ], [ %1697, %1695 ]
  %1179 = phi i32 [ %56, %1159 ], [ %1696, %1695 ]
  %1180 = getelementptr inbounds nuw i8, ptr %1177, i64 1
  %1181 = getelementptr inbounds nuw i8, ptr %1177, i64 128
  %1182 = load i64, ptr %1177, align 1, !tbaa !22
  %1183 = mul i64 %1182, -3523014627193847808
  %1184 = lshr i64 %1183, %1163
  %1185 = load i64, ptr %1180, align 1, !tbaa !22
  %1186 = getelementptr inbounds nuw i32, ptr %12, i64 %1184
  %1187 = load i32, ptr %1186, align 4, !tbaa !23
  %1188 = zext i32 %1178 to i64
  %1189 = sub nsw i64 0, %1188
  %1190 = icmp ne i32 %1178, 0
  br label %1191

1191:                                             ; preds = %1267, %1173
  %1192 = phi i64 [ %1184, %1173 ], [ %1226, %1267 ]
  %1193 = phi i64 [ %1185, %1173 ], [ %1243, %1267 ]
  %1194 = phi i32 [ %1187, %1173 ], [ %1242, %1267 ]
  %1195 = phi i64 [ %17, %1173 ], [ %1268, %1267 ]
  %1196 = phi ptr [ %1181, %1173 ], [ %1269, %1267 ]
  %1197 = phi ptr [ %1174, %1173 ], [ %1245, %1267 ]
  %1198 = phi ptr [ %1175, %1173 ], [ %1244, %1267 ]
  %1199 = phi ptr [ %1180, %1173 ], [ %1197, %1267 ]
  %1200 = phi ptr [ %1177, %1173 ], [ %1198, %1267 ]
  %1201 = mul i64 %1193, -3523014627193847808
  %1202 = lshr i64 %1201, %1163
  %1203 = getelementptr inbounds i8, ptr %1198, i64 %1189
  %1204 = load i32, ptr %1203, align 1, !tbaa !23
  %1205 = ptrtoint ptr %1200 to i64
  %1206 = sub i64 %1205, %21
  %1207 = trunc i64 %1206 to i32
  %1208 = getelementptr inbounds nuw i32, ptr %12, i64 %1192
  store i32 %1207, ptr %1208, align 4, !tbaa !23
  %1209 = load i32, ptr %1198, align 1, !tbaa !23
  %1210 = icmp eq i32 %1209, %1204
  %1211 = and i1 %1190, %1210
  br i1 %1211, label %1252, label %1212

1212:                                             ; preds = %1191
  %1213 = zext i32 %1194 to i64
  %1214 = getelementptr inbounds nuw i8, ptr %19, i64 %1213
  %1215 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1194, i32 %35, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %1214) #7, !srcloc !32
  %1216 = load i32, ptr %1200, align 1, !tbaa !23
  %1217 = load i32, ptr %1215, align 1, !tbaa !23
  %1218 = icmp eq i32 %1216, %1217
  br i1 %1218, label %1219, label %1221

1219:                                             ; preds = %1212
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !33
  %1220 = icmp ult i32 %1194, %35
  br i1 %1220, label %1221, label %1271

1221:                                             ; preds = %1219, %1212
  %1222 = getelementptr inbounds nuw i32, ptr %12, i64 %1202
  %1223 = load i32, ptr %1222, align 4, !tbaa !23
  %1224 = load i64, ptr %1198, align 1, !tbaa !22
  %1225 = mul i64 %1224, -3523014627193847808
  %1226 = lshr i64 %1225, %1163
  %1227 = ptrtoint ptr %1199 to i64
  %1228 = sub i64 %1227, %21
  %1229 = trunc i64 %1228 to i32
  store i32 %1229, ptr %1222, align 4, !tbaa !23
  %1230 = zext i32 %1223 to i64
  %1231 = getelementptr inbounds nuw i8, ptr %19, i64 %1230
  %1232 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1223, i32 %35, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %1231) #7, !srcloc !32
  %1233 = load i32, ptr %1199, align 1, !tbaa !23
  %1234 = load i32, ptr %1232, align 1, !tbaa !23
  %1235 = icmp eq i32 %1233, %1234
  br i1 %1235, label %1236, label %1240

1236:                                             ; preds = %1221
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !33
  %1237 = icmp ult i32 %1223, %35
  br i1 %1237, label %1240, label %1238

1238:                                             ; preds = %1236
  %1239 = icmp ult i64 %1195, 5
  br i1 %1239, label %1271, label %1283

1240:                                             ; preds = %1236, %1221
  %1241 = getelementptr inbounds nuw i32, ptr %12, i64 %1226
  %1242 = load i32, ptr %1241, align 4, !tbaa !23
  %1243 = load i64, ptr %1197, align 1, !tbaa !22
  %1244 = getelementptr inbounds nuw i8, ptr %1198, i64 %1195
  %1245 = getelementptr inbounds nuw i8, ptr %1197, i64 %1195
  %1246 = icmp ult ptr %1244, %1196
  br i1 %1246, label %1267, label %1247

1247:                                             ; preds = %1240
  %1248 = add i64 %1195, 1
  %1249 = getelementptr inbounds nuw i8, ptr %1197, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1249, i32 0, i32 3, i32 1)
  %1250 = getelementptr inbounds nuw i8, ptr %1197, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %1250, i32 0, i32 3, i32 1)
  %1251 = getelementptr inbounds nuw i8, ptr %1196, i64 128
  br label %1267

1252:                                             ; preds = %1191
  %1253 = getelementptr inbounds i8, ptr %1198, i64 %1189
  %1254 = getelementptr inbounds i8, ptr %1198, i64 -1
  %1255 = load i8, ptr %1254, align 1, !tbaa !34
  %1256 = getelementptr inbounds i8, ptr %1253, i64 -1
  %1257 = load i8, ptr %1256, align 1, !tbaa !34
  %1258 = icmp eq i8 %1255, %1257
  %1259 = sext i1 %1258 to i64
  %1260 = getelementptr inbounds i8, ptr %1198, i64 %1259
  %1261 = getelementptr inbounds i8, ptr %1253, i64 %1259
  %1262 = select i1 %1258, i64 5, i64 4
  %1263 = ptrtoint ptr %1199 to i64
  %1264 = sub i64 %1263, %21
  %1265 = trunc i64 %1264 to i32
  %1266 = getelementptr inbounds nuw i32, ptr %12, i64 %1202
  store i32 %1265, ptr %1266, align 4, !tbaa !23
  br label %1311

1267:                                             ; preds = %1247, %1240
  %1268 = phi i64 [ %1195, %1240 ], [ %1248, %1247 ]
  %1269 = phi ptr [ %1196, %1240 ], [ %1251, %1247 ]
  %1270 = icmp ult ptr %1245, %39
  br i1 %1270, label %1191, label %4656, !llvm.loop !35

1271:                                             ; preds = %1219, %1238
  %1272 = phi ptr [ %1198, %1238 ], [ %1199, %1219 ]
  %1273 = phi i64 [ %1226, %1238 ], [ %1202, %1219 ]
  %1274 = phi i64 [ %1227, %1238 ], [ %1205, %1219 ]
  %1275 = phi i64 [ %1230, %1238 ], [ %1213, %1219 ]
  %1276 = phi i32 [ %1223, %1238 ], [ %1194, %1219 ]
  %1277 = phi i32 [ %1229, %1238 ], [ %1207, %1219 ]
  %1278 = phi ptr [ %1199, %1238 ], [ %1200, %1219 ]
  %1279 = ptrtoint ptr %1272 to i64
  %1280 = sub i64 %1279, %21
  %1281 = trunc i64 %1280 to i32
  %1282 = getelementptr inbounds nuw i32, ptr %12, i64 %1273
  store i32 %1281, ptr %1282, align 4, !tbaa !23
  br label %1283

1283:                                             ; preds = %1271, %1238
  %1284 = phi i64 [ %1227, %1238 ], [ %1274, %1271 ]
  %1285 = phi i64 [ %1230, %1238 ], [ %1275, %1271 ]
  %1286 = phi i32 [ %1223, %1238 ], [ %1276, %1271 ]
  %1287 = phi i32 [ %1229, %1238 ], [ %1277, %1271 ]
  %1288 = phi ptr [ %1199, %1238 ], [ %1278, %1271 ]
  %1289 = getelementptr inbounds nuw i8, ptr %19, i64 %1285
  %1290 = ptrtoint ptr %1289 to i64
  %1291 = sub i64 %1284, %1290
  %1292 = trunc i64 %1291 to i32
  %1293 = add i32 %1292, 3
  %1294 = icmp ugt ptr %1288, %1176
  %1295 = icmp ugt i32 %1286, %35
  %1296 = and i1 %1295, %1294
  br i1 %1296, label %1297, label %1311

1297:                                             ; preds = %1283, %1306
  %1298 = phi ptr [ %1301, %1306 ], [ %1288, %1283 ]
  %1299 = phi i64 [ %1307, %1306 ], [ 4, %1283 ]
  %1300 = phi ptr [ %1303, %1306 ], [ %1289, %1283 ]
  %1301 = getelementptr inbounds i8, ptr %1298, i64 -1
  %1302 = load i8, ptr %1301, align 1, !tbaa !34
  %1303 = getelementptr inbounds i8, ptr %1300, i64 -1
  %1304 = load i8, ptr %1303, align 1, !tbaa !34
  %1305 = icmp eq i8 %1302, %1304
  br i1 %1305, label %1306, label %1311

1306:                                             ; preds = %1297
  %1307 = add i64 %1299, 1
  %1308 = icmp ugt ptr %1301, %1176
  %1309 = icmp ugt ptr %1303, %37
  %1310 = and i1 %1308, %1309
  br i1 %1310, label %1297, label %1311, !llvm.loop !36

1311:                                             ; preds = %1306, %1297, %1283, %1252
  %1312 = phi i32 [ %1207, %1252 ], [ %1287, %1283 ], [ %1287, %1297 ], [ %1287, %1306 ]
  %1313 = phi i32 [ %1179, %1252 ], [ %1178, %1283 ], [ %1178, %1297 ], [ %1178, %1306 ]
  %1314 = phi i32 [ 1, %1252 ], [ %1293, %1283 ], [ %1293, %1297 ], [ %1293, %1306 ]
  %1315 = phi ptr [ %1261, %1252 ], [ %1289, %1283 ], [ %1303, %1306 ], [ %1300, %1297 ]
  %1316 = phi i64 [ %1262, %1252 ], [ 4, %1283 ], [ %1307, %1306 ], [ %1299, %1297 ]
  %1317 = phi i32 [ %1178, %1252 ], [ %1292, %1283 ], [ %1292, %1297 ], [ %1292, %1306 ]
  %1318 = phi ptr [ %1260, %1252 ], [ %1288, %1283 ], [ %1301, %1306 ], [ %1298, %1297 ]
  %1319 = getelementptr inbounds nuw i8, ptr %1318, i64 %1316
  %1320 = getelementptr inbounds nuw i8, ptr %1315, i64 %1316
  %1321 = icmp ult ptr %1319, %1164
  br i1 %1321, label %1322, label %1348

1322:                                             ; preds = %1311
  %1323 = load i64, ptr %1320, align 1, !tbaa !22
  %1324 = load i64, ptr %1319, align 1, !tbaa !22
  %1325 = icmp eq i64 %1323, %1324
  br i1 %1325, label %1330, label %1326

1326:                                             ; preds = %1322
  %1327 = xor i64 %1324, %1323
  %1328 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1327, i1 true)
  %1329 = lshr i64 %1328, 3
  br label %1385

1330:                                             ; preds = %1322, %1336
  %1331 = phi ptr [ %1334, %1336 ], [ %1320, %1322 ]
  %1332 = phi ptr [ %1333, %1336 ], [ %1319, %1322 ]
  %1333 = getelementptr inbounds nuw i8, ptr %1332, i64 8
  %1334 = getelementptr inbounds nuw i8, ptr %1331, i64 8
  %1335 = icmp ult ptr %1333, %1164
  br i1 %1335, label %1336, label %1348

1336:                                             ; preds = %1330
  %1337 = load i64, ptr %1334, align 1, !tbaa !22
  %1338 = load i64, ptr %1333, align 1, !tbaa !22
  %1339 = icmp eq i64 %1337, %1338
  br i1 %1339, label %1330, label %1340

1340:                                             ; preds = %1336
  %1341 = xor i64 %1338, %1337
  %1342 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1341, i1 true)
  %1343 = lshr i64 %1342, 3
  %1344 = getelementptr inbounds nuw i8, ptr %1333, i64 %1343
  %1345 = ptrtoint ptr %1344 to i64
  %1346 = ptrtoint ptr %1319 to i64
  %1347 = sub i64 %1345, %1346
  br label %1385

1348:                                             ; preds = %1330, %1311
  %1349 = phi ptr [ %1320, %1311 ], [ %1334, %1330 ]
  %1350 = phi ptr [ %1319, %1311 ], [ %1333, %1330 ]
  %1351 = icmp ult ptr %1350, %1165
  br i1 %1351, label %1352, label %1359

1352:                                             ; preds = %1348
  %1353 = load i32, ptr %1349, align 1, !tbaa !23
  %1354 = load i32, ptr %1350, align 1, !tbaa !23
  %1355 = icmp eq i32 %1353, %1354
  br i1 %1355, label %1356, label %1359

1356:                                             ; preds = %1352
  %1357 = getelementptr inbounds nuw i8, ptr %1350, i64 4
  %1358 = getelementptr inbounds nuw i8, ptr %1349, i64 4
  br label %1359

1359:                                             ; preds = %1356, %1352, %1348
  %1360 = phi ptr [ %1358, %1356 ], [ %1349, %1352 ], [ %1349, %1348 ]
  %1361 = phi ptr [ %1357, %1356 ], [ %1350, %1352 ], [ %1350, %1348 ]
  %1362 = icmp ult ptr %1361, %1166
  br i1 %1362, label %1363, label %1370

1363:                                             ; preds = %1359
  %1364 = load i16, ptr %1360, align 1, !tbaa !37
  %1365 = load i16, ptr %1361, align 1, !tbaa !37
  %1366 = icmp eq i16 %1364, %1365
  br i1 %1366, label %1367, label %1370

1367:                                             ; preds = %1363
  %1368 = getelementptr inbounds nuw i8, ptr %1361, i64 2
  %1369 = getelementptr inbounds nuw i8, ptr %1360, i64 2
  br label %1370

1370:                                             ; preds = %1367, %1363, %1359
  %1371 = phi ptr [ %1369, %1367 ], [ %1360, %1363 ], [ %1360, %1359 ]
  %1372 = phi ptr [ %1368, %1367 ], [ %1361, %1363 ], [ %1361, %1359 ]
  %1373 = icmp ult ptr %1372, %38
  br i1 %1373, label %1374, label %1380

1374:                                             ; preds = %1370
  %1375 = load i8, ptr %1371, align 1, !tbaa !34
  %1376 = load i8, ptr %1372, align 1, !tbaa !34
  %1377 = icmp eq i8 %1375, %1376
  %1378 = zext i1 %1377 to i64
  %1379 = getelementptr inbounds nuw i8, ptr %1372, i64 %1378
  br label %1380

1380:                                             ; preds = %1374, %1370
  %1381 = phi ptr [ %1372, %1370 ], [ %1379, %1374 ]
  %1382 = ptrtoint ptr %1381 to i64
  %1383 = ptrtoint ptr %1319 to i64
  %1384 = sub i64 %1382, %1383
  br label %1385

1385:                                             ; preds = %1380, %1340, %1326
  %1386 = phi i64 [ %1384, %1380 ], [ %1329, %1326 ], [ %1347, %1340 ]
  %1387 = add i64 %1386, %1316
  %1388 = ptrtoint ptr %1318 to i64
  %1389 = ptrtoint ptr %1176 to i64
  %1390 = sub i64 %1388, %1389
  %1391 = icmp ugt ptr %1318, %1167
  %1392 = load ptr, ptr %1168, align 8, !tbaa !39
  br i1 %1391, label %1416, label %1393

1393:                                             ; preds = %1385
  %1394 = load <2 x i64>, ptr %1176, align 1, !tbaa !34
  store <2 x i64> %1394, ptr %1392, align 1, !tbaa !34
  %1395 = icmp ugt i64 %1390, 16
  br i1 %1395, label %1396, label %1532

1396:                                             ; preds = %1393
  %1397 = load ptr, ptr %1168, align 8, !tbaa !39
  %1398 = getelementptr inbounds nuw i8, ptr %1397, i64 16
  %1399 = getelementptr inbounds nuw i8, ptr %1176, i64 16
  %1400 = add i64 %1390, -16
  %1401 = getelementptr i8, ptr %1397, i64 %1390
  %1402 = load <2 x i64>, ptr %1399, align 1, !tbaa !34
  store <2 x i64> %1402, ptr %1398, align 1, !tbaa !34
  %1403 = icmp ult i64 %1400, 17
  br i1 %1403, label %1532, label %1404

1404:                                             ; preds = %1396
  %1405 = getelementptr inbounds nuw i8, ptr %1397, i64 32
  br label %1406

1406:                                             ; preds = %1406, %1404
  %1407 = phi ptr [ %1405, %1404 ], [ %1414, %1406 ]
  %1408 = phi ptr [ %1399, %1404 ], [ %1412, %1406 ]
  %1409 = getelementptr inbounds nuw i8, ptr %1408, i64 16
  %1410 = load <2 x i64>, ptr %1409, align 1, !tbaa !34
  store <2 x i64> %1410, ptr %1407, align 1, !tbaa !34
  %1411 = getelementptr inbounds nuw i8, ptr %1407, i64 16
  %1412 = getelementptr inbounds nuw i8, ptr %1408, i64 32
  %1413 = load <2 x i64>, ptr %1412, align 1, !tbaa !34
  store <2 x i64> %1413, ptr %1411, align 1, !tbaa !34
  %1414 = getelementptr inbounds nuw i8, ptr %1407, i64 32
  %1415 = icmp ult ptr %1414, %1401
  br i1 %1415, label %1406, label %1536, !llvm.loop !42

1416:                                             ; preds = %1385
  %1417 = icmp ugt ptr %1176, %1167
  br i1 %1417, label %1435, label %1418

1418:                                             ; preds = %1416
  %1419 = sub i64 %1169, %1389
  %1420 = getelementptr inbounds i8, ptr %1392, i64 %1419
  %1421 = load <2 x i64>, ptr %1176, align 1, !tbaa !34
  store <2 x i64> %1421, ptr %1392, align 1, !tbaa !34
  %1422 = icmp ult i64 %1419, 17
  br i1 %1422, label %1435, label %1423

1423:                                             ; preds = %1418
  %1424 = getelementptr inbounds nuw i8, ptr %1392, i64 16
  br label %1425

1425:                                             ; preds = %1425, %1423
  %1426 = phi ptr [ %1424, %1423 ], [ %1433, %1425 ]
  %1427 = phi ptr [ %1176, %1423 ], [ %1431, %1425 ]
  %1428 = getelementptr inbounds nuw i8, ptr %1427, i64 16
  %1429 = load <2 x i64>, ptr %1428, align 1, !tbaa !34
  store <2 x i64> %1429, ptr %1426, align 1, !tbaa !34
  %1430 = getelementptr inbounds nuw i8, ptr %1426, i64 16
  %1431 = getelementptr inbounds nuw i8, ptr %1427, i64 32
  %1432 = load <2 x i64>, ptr %1431, align 1, !tbaa !34
  store <2 x i64> %1432, ptr %1430, align 1, !tbaa !34
  %1433 = getelementptr inbounds nuw i8, ptr %1426, i64 32
  %1434 = icmp ult ptr %1433, %1420
  br i1 %1434, label %1425, label %1435, !llvm.loop !42

1435:                                             ; preds = %1425, %1418, %1416
  %1436 = phi ptr [ %1167, %1418 ], [ %1176, %1416 ], [ %1167, %1425 ]
  %1437 = phi ptr [ %1420, %1418 ], [ %1392, %1416 ], [ %1420, %1425 ]
  %1438 = icmp ult ptr %1436, %1318
  br i1 %1438, label %1439, label %1536

1439:                                             ; preds = %1435
  %1440 = ptrtoint ptr %1436 to i64
  %1441 = ptrtoint ptr %1437 to i64
  %1442 = ptrtoint ptr %1436 to i64
  %1443 = sub i64 %1388, %1442
  %1444 = icmp ult i64 %1443, 4
  %1445 = sub i64 %1441, %1440
  %1446 = icmp ult i64 %1445, 32
  %1447 = select i1 %1444, i1 true, i1 %1446
  br i1 %1447, label %1483, label %1448

1448:                                             ; preds = %1439
  %1449 = icmp ult i64 %1443, 32
  br i1 %1449, label %1469, label %1450

1450:                                             ; preds = %1448
  %1451 = and i64 %1443, -32
  br label %1452

1452:                                             ; preds = %1452, %1450
  %1453 = phi i64 [ 0, %1450 ], [ %1460, %1452 ]
  %1454 = getelementptr i8, ptr %1437, i64 %1453
  %1455 = getelementptr i8, ptr %1436, i64 %1453
  %1456 = getelementptr i8, ptr %1455, i64 16
  %1457 = load <16 x i8>, ptr %1455, align 1, !tbaa !34
  %1458 = load <16 x i8>, ptr %1456, align 1, !tbaa !34
  %1459 = getelementptr i8, ptr %1454, i64 16
  store <16 x i8> %1457, ptr %1454, align 1, !tbaa !34
  store <16 x i8> %1458, ptr %1459, align 1, !tbaa !34
  %1460 = add nuw i64 %1453, 32
  %1461 = icmp eq i64 %1460, %1451
  br i1 %1461, label %1462, label %1452, !llvm.loop !64

1462:                                             ; preds = %1452
  %1463 = icmp eq i64 %1443, %1451
  br i1 %1463, label %1536, label %1464

1464:                                             ; preds = %1462
  %1465 = getelementptr i8, ptr %1437, i64 %1451
  %1466 = getelementptr i8, ptr %1436, i64 %1451
  %1467 = and i64 %1443, 28
  %1468 = icmp eq i64 %1467, 0
  br i1 %1468, label %1483, label %1469

1469:                                             ; preds = %1464, %1448
  %1470 = phi i64 [ %1451, %1464 ], [ 0, %1448 ]
  %1471 = and i64 %1443, -4
  %1472 = getelementptr i8, ptr %1437, i64 %1471
  %1473 = getelementptr i8, ptr %1436, i64 %1471
  br label %1474

1474:                                             ; preds = %1474, %1469
  %1475 = phi i64 [ %1470, %1469 ], [ %1479, %1474 ]
  %1476 = getelementptr i8, ptr %1437, i64 %1475
  %1477 = getelementptr i8, ptr %1436, i64 %1475
  %1478 = load <4 x i8>, ptr %1477, align 1, !tbaa !34
  store <4 x i8> %1478, ptr %1476, align 1, !tbaa !34
  %1479 = add nuw i64 %1475, 4
  %1480 = icmp eq i64 %1479, %1471
  br i1 %1480, label %1481, label %1474, !llvm.loop !65

1481:                                             ; preds = %1474
  %1482 = icmp eq i64 %1443, %1471
  br i1 %1482, label %1536, label %1483

1483:                                             ; preds = %1464, %1481, %1439
  %1484 = phi ptr [ %1437, %1439 ], [ %1465, %1464 ], [ %1472, %1481 ]
  %1485 = phi ptr [ %1436, %1439 ], [ %1466, %1464 ], [ %1473, %1481 ]
  %1486 = ptrtoint ptr %1485 to i64
  %1487 = sub i64 %1388, %1486
  %1488 = and i64 %1487, 7
  %1489 = icmp eq i64 %1488, 0
  br i1 %1489, label %1499, label %1490

1490:                                             ; preds = %1483, %1490
  %1491 = phi ptr [ %1496, %1490 ], [ %1484, %1483 ]
  %1492 = phi ptr [ %1494, %1490 ], [ %1485, %1483 ]
  %1493 = phi i64 [ %1497, %1490 ], [ 0, %1483 ]
  %1494 = getelementptr inbounds nuw i8, ptr %1492, i64 1
  %1495 = load i8, ptr %1492, align 1, !tbaa !34
  %1496 = getelementptr inbounds nuw i8, ptr %1491, i64 1
  store i8 %1495, ptr %1491, align 1, !tbaa !34
  %1497 = add i64 %1493, 1
  %1498 = icmp eq i64 %1497, %1488
  br i1 %1498, label %1499, label %1490, !llvm.loop !66

1499:                                             ; preds = %1490, %1483
  %1500 = phi ptr [ %1484, %1483 ], [ %1496, %1490 ]
  %1501 = phi ptr [ %1485, %1483 ], [ %1494, %1490 ]
  %1502 = sub i64 %1486, %1388
  %1503 = icmp ugt i64 %1502, -8
  br i1 %1503, label %1536, label %1504

1504:                                             ; preds = %1499, %1504
  %1505 = phi ptr [ %1530, %1504 ], [ %1500, %1499 ]
  %1506 = phi ptr [ %1528, %1504 ], [ %1501, %1499 ]
  %1507 = getelementptr inbounds nuw i8, ptr %1506, i64 1
  %1508 = load i8, ptr %1506, align 1, !tbaa !34
  %1509 = getelementptr inbounds nuw i8, ptr %1505, i64 1
  store i8 %1508, ptr %1505, align 1, !tbaa !34
  %1510 = getelementptr inbounds nuw i8, ptr %1506, i64 2
  %1511 = load i8, ptr %1507, align 1, !tbaa !34
  %1512 = getelementptr inbounds nuw i8, ptr %1505, i64 2
  store i8 %1511, ptr %1509, align 1, !tbaa !34
  %1513 = getelementptr inbounds nuw i8, ptr %1506, i64 3
  %1514 = load i8, ptr %1510, align 1, !tbaa !34
  %1515 = getelementptr inbounds nuw i8, ptr %1505, i64 3
  store i8 %1514, ptr %1512, align 1, !tbaa !34
  %1516 = getelementptr inbounds nuw i8, ptr %1506, i64 4
  %1517 = load i8, ptr %1513, align 1, !tbaa !34
  %1518 = getelementptr inbounds nuw i8, ptr %1505, i64 4
  store i8 %1517, ptr %1515, align 1, !tbaa !34
  %1519 = getelementptr inbounds nuw i8, ptr %1506, i64 5
  %1520 = load i8, ptr %1516, align 1, !tbaa !34
  %1521 = getelementptr inbounds nuw i8, ptr %1505, i64 5
  store i8 %1520, ptr %1518, align 1, !tbaa !34
  %1522 = getelementptr inbounds nuw i8, ptr %1506, i64 6
  %1523 = load i8, ptr %1519, align 1, !tbaa !34
  %1524 = getelementptr inbounds nuw i8, ptr %1505, i64 6
  store i8 %1523, ptr %1521, align 1, !tbaa !34
  %1525 = getelementptr inbounds nuw i8, ptr %1506, i64 7
  %1526 = load i8, ptr %1522, align 1, !tbaa !34
  %1527 = getelementptr inbounds nuw i8, ptr %1505, i64 7
  store i8 %1526, ptr %1524, align 1, !tbaa !34
  %1528 = getelementptr inbounds nuw i8, ptr %1506, i64 8
  %1529 = load i8, ptr %1525, align 1, !tbaa !34
  %1530 = getelementptr inbounds nuw i8, ptr %1505, i64 8
  store i8 %1529, ptr %1527, align 1, !tbaa !34
  %1531 = icmp eq ptr %1528, %1318
  br i1 %1531, label %1536, label %1504, !llvm.loop !67

1532:                                             ; preds = %1396, %1393
  %1533 = load ptr, ptr %1168, align 8, !tbaa !39
  %1534 = getelementptr inbounds nuw i8, ptr %1533, i64 %1390
  store ptr %1534, ptr %1168, align 8, !tbaa !39
  %1535 = load ptr, ptr %1171, align 8, !tbaa !50
  br label %1548

1536:                                             ; preds = %1406, %1499, %1504, %1462, %1481, %1435
  %1537 = load ptr, ptr %1168, align 8, !tbaa !39
  %1538 = getelementptr inbounds nuw i8, ptr %1537, i64 %1390
  store ptr %1538, ptr %1168, align 8, !tbaa !39
  %1539 = icmp ugt i64 %1390, 65535
  %1540 = load ptr, ptr %1171, align 8, !tbaa !50
  br i1 %1539, label %1541, label %1548, !prof !51

1541:                                             ; preds = %1536
  store i32 1, ptr %1170, align 8, !tbaa !52
  %1542 = load ptr, ptr %1, align 8, !tbaa !53
  %1543 = ptrtoint ptr %1540 to i64
  %1544 = ptrtoint ptr %1542 to i64
  %1545 = sub i64 %1543, %1544
  %1546 = lshr exact i64 %1545, 3
  %1547 = trunc i64 %1546 to i32
  store i32 %1547, ptr %1172, align 4, !tbaa !54
  br label %1548

1548:                                             ; preds = %1541, %1536, %1532
  %1549 = phi ptr [ %1535, %1532 ], [ %1540, %1541 ], [ %1540, %1536 ]
  %1550 = trunc i64 %1390 to i16
  %1551 = getelementptr inbounds nuw i8, ptr %1549, i64 4
  store i16 %1550, ptr %1551, align 4, !tbaa !55
  store i32 %1314, ptr %1549, align 4, !tbaa !57
  %1552 = add i64 %1387, -3
  %1553 = icmp ugt i64 %1552, 65535
  br i1 %1553, label %1554, label %1561, !prof !58

1554:                                             ; preds = %1548
  store i32 2, ptr %1170, align 8, !tbaa !52
  %1555 = load ptr, ptr %1, align 8, !tbaa !53
  %1556 = ptrtoint ptr %1549 to i64
  %1557 = ptrtoint ptr %1555 to i64
  %1558 = sub i64 %1556, %1557
  %1559 = lshr exact i64 %1558, 3
  %1560 = trunc i64 %1559 to i32
  store i32 %1560, ptr %1172, align 4, !tbaa !54
  br label %1561

1561:                                             ; preds = %1554, %1548
  %1562 = trunc i64 %1552 to i16
  %1563 = getelementptr inbounds nuw i8, ptr %1549, i64 6
  store i16 %1562, ptr %1563, align 2, !tbaa !59
  %1564 = getelementptr inbounds nuw i8, ptr %1549, i64 8
  store ptr %1564, ptr %1171, align 8, !tbaa !50
  %1565 = getelementptr inbounds nuw i8, ptr %1318, i64 %1387
  %1566 = icmp ugt ptr %1565, %39
  br i1 %1566, label %1695, label %1567

1567:                                             ; preds = %1561
  %1568 = add i32 %1312, 2
  %1569 = zext i32 %1312 to i64
  %1570 = getelementptr inbounds nuw i8, ptr %59, i64 %1569
  %1571 = load i64, ptr %1570, align 1, !tbaa !22
  %1572 = mul i64 %1571, -3523014627193847808
  %1573 = lshr i64 %1572, %1163
  %1574 = getelementptr inbounds nuw i32, ptr %12, i64 %1573
  store i32 %1568, ptr %1574, align 4, !tbaa !23
  %1575 = getelementptr inbounds i8, ptr %1565, i64 -2
  %1576 = ptrtoint ptr %1575 to i64
  %1577 = sub i64 %1576, %21
  %1578 = trunc i64 %1577 to i32
  %1579 = load i64, ptr %1575, align 1, !tbaa !22
  %1580 = mul i64 %1579, -3523014627193847808
  %1581 = lshr i64 %1580, %1163
  %1582 = getelementptr inbounds nuw i32, ptr %12, i64 %1581
  store i32 %1578, ptr %1582, align 4, !tbaa !23
  %1583 = icmp eq i32 %1313, 0
  br i1 %1583, label %1695, label %1584

1584:                                             ; preds = %1567, %1690
  %1585 = phi ptr [ %1693, %1690 ], [ %1564, %1567 ]
  %1586 = phi ptr [ %1672, %1690 ], [ %1565, %1567 ]
  %1587 = phi i32 [ %1588, %1690 ], [ %1317, %1567 ]
  %1588 = phi i32 [ %1587, %1690 ], [ %1313, %1567 ]
  %1589 = load i32, ptr %1586, align 1, !tbaa !23
  %1590 = zext i32 %1588 to i64
  %1591 = sub nsw i64 0, %1590
  %1592 = getelementptr inbounds i8, ptr %1586, i64 %1591
  %1593 = load i32, ptr %1592, align 1, !tbaa !23
  %1594 = icmp eq i32 %1589, %1593
  br i1 %1594, label %1595, label %1695

1595:                                             ; preds = %1584
  %1596 = getelementptr inbounds nuw i8, ptr %1586, i64 4
  %1597 = getelementptr inbounds i8, ptr %1596, i64 %1591
  %1598 = icmp ult ptr %1596, %1164
  br i1 %1598, label %1599, label %1625

1599:                                             ; preds = %1595
  %1600 = load i64, ptr %1597, align 1, !tbaa !22
  %1601 = load i64, ptr %1596, align 1, !tbaa !22
  %1602 = icmp eq i64 %1600, %1601
  br i1 %1602, label %1607, label %1603

1603:                                             ; preds = %1599
  %1604 = xor i64 %1601, %1600
  %1605 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1604, i1 true)
  %1606 = lshr i64 %1605, 3
  br label %1662

1607:                                             ; preds = %1599, %1613
  %1608 = phi ptr [ %1611, %1613 ], [ %1597, %1599 ]
  %1609 = phi ptr [ %1610, %1613 ], [ %1596, %1599 ]
  %1610 = getelementptr inbounds nuw i8, ptr %1609, i64 8
  %1611 = getelementptr inbounds nuw i8, ptr %1608, i64 8
  %1612 = icmp ult ptr %1610, %1164
  br i1 %1612, label %1613, label %1625

1613:                                             ; preds = %1607
  %1614 = load i64, ptr %1611, align 1, !tbaa !22
  %1615 = load i64, ptr %1610, align 1, !tbaa !22
  %1616 = icmp eq i64 %1614, %1615
  br i1 %1616, label %1607, label %1617

1617:                                             ; preds = %1613
  %1618 = xor i64 %1615, %1614
  %1619 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1618, i1 true)
  %1620 = lshr i64 %1619, 3
  %1621 = getelementptr inbounds nuw i8, ptr %1610, i64 %1620
  %1622 = ptrtoint ptr %1621 to i64
  %1623 = ptrtoint ptr %1596 to i64
  %1624 = sub i64 %1622, %1623
  br label %1662

1625:                                             ; preds = %1607, %1595
  %1626 = phi ptr [ %1597, %1595 ], [ %1611, %1607 ]
  %1627 = phi ptr [ %1596, %1595 ], [ %1610, %1607 ]
  %1628 = icmp ult ptr %1627, %1165
  br i1 %1628, label %1629, label %1636

1629:                                             ; preds = %1625
  %1630 = load i32, ptr %1626, align 1, !tbaa !23
  %1631 = load i32, ptr %1627, align 1, !tbaa !23
  %1632 = icmp eq i32 %1630, %1631
  br i1 %1632, label %1633, label %1636

1633:                                             ; preds = %1629
  %1634 = getelementptr inbounds nuw i8, ptr %1627, i64 4
  %1635 = getelementptr inbounds nuw i8, ptr %1626, i64 4
  br label %1636

1636:                                             ; preds = %1633, %1629, %1625
  %1637 = phi ptr [ %1635, %1633 ], [ %1626, %1629 ], [ %1626, %1625 ]
  %1638 = phi ptr [ %1634, %1633 ], [ %1627, %1629 ], [ %1627, %1625 ]
  %1639 = icmp ult ptr %1638, %1166
  br i1 %1639, label %1640, label %1647

1640:                                             ; preds = %1636
  %1641 = load i16, ptr %1637, align 1, !tbaa !37
  %1642 = load i16, ptr %1638, align 1, !tbaa !37
  %1643 = icmp eq i16 %1641, %1642
  br i1 %1643, label %1644, label %1647

1644:                                             ; preds = %1640
  %1645 = getelementptr inbounds nuw i8, ptr %1638, i64 2
  %1646 = getelementptr inbounds nuw i8, ptr %1637, i64 2
  br label %1647

1647:                                             ; preds = %1644, %1640, %1636
  %1648 = phi ptr [ %1646, %1644 ], [ %1637, %1640 ], [ %1637, %1636 ]
  %1649 = phi ptr [ %1645, %1644 ], [ %1638, %1640 ], [ %1638, %1636 ]
  %1650 = icmp ult ptr %1649, %38
  br i1 %1650, label %1651, label %1657

1651:                                             ; preds = %1647
  %1652 = load i8, ptr %1648, align 1, !tbaa !34
  %1653 = load i8, ptr %1649, align 1, !tbaa !34
  %1654 = icmp eq i8 %1652, %1653
  %1655 = zext i1 %1654 to i64
  %1656 = getelementptr inbounds nuw i8, ptr %1649, i64 %1655
  br label %1657

1657:                                             ; preds = %1651, %1647
  %1658 = phi ptr [ %1649, %1647 ], [ %1656, %1651 ]
  %1659 = ptrtoint ptr %1658 to i64
  %1660 = ptrtoint ptr %1596 to i64
  %1661 = sub i64 %1659, %1660
  br label %1662

1662:                                             ; preds = %1657, %1617, %1603
  %1663 = phi i64 [ %1661, %1657 ], [ %1606, %1603 ], [ %1624, %1617 ]
  %1664 = ptrtoint ptr %1586 to i64
  %1665 = sub i64 %1664, %21
  %1666 = trunc i64 %1665 to i32
  %1667 = load i64, ptr %1586, align 1, !tbaa !22
  %1668 = mul i64 %1667, -3523014627193847808
  %1669 = lshr i64 %1668, %1163
  %1670 = getelementptr inbounds nuw i32, ptr %12, i64 %1669
  store i32 %1666, ptr %1670, align 4, !tbaa !23
  %1671 = getelementptr i8, ptr %1586, i64 %1663
  %1672 = getelementptr i8, ptr %1671, i64 4
  %1673 = icmp ugt ptr %1586, %1167
  br i1 %1673, label %1678, label %1674

1674:                                             ; preds = %1662
  %1675 = load ptr, ptr %1168, align 8, !tbaa !39
  %1676 = load <2 x i64>, ptr %1586, align 1, !tbaa !34
  store <2 x i64> %1676, ptr %1675, align 1, !tbaa !34
  %1677 = load ptr, ptr %1171, align 8, !tbaa !50
  br label %1678

1678:                                             ; preds = %1674, %1662
  %1679 = phi ptr [ %1585, %1662 ], [ %1677, %1674 ]
  %1680 = getelementptr inbounds nuw i8, ptr %1679, i64 4
  store i16 0, ptr %1680, align 4, !tbaa !55
  store i32 1, ptr %1679, align 4, !tbaa !57
  %1681 = add i64 %1663, 1
  %1682 = icmp ugt i64 %1681, 65535
  br i1 %1682, label %1683, label %1690, !prof !58

1683:                                             ; preds = %1678
  store i32 2, ptr %1170, align 8, !tbaa !52
  %1684 = load ptr, ptr %1, align 8, !tbaa !53
  %1685 = ptrtoint ptr %1679 to i64
  %1686 = ptrtoint ptr %1684 to i64
  %1687 = sub i64 %1685, %1686
  %1688 = lshr exact i64 %1687, 3
  %1689 = trunc i64 %1688 to i32
  store i32 %1689, ptr %1172, align 4, !tbaa !54
  br label %1690

1690:                                             ; preds = %1683, %1678
  %1691 = trunc i64 %1681 to i16
  %1692 = getelementptr inbounds nuw i8, ptr %1679, i64 6
  store i16 %1691, ptr %1692, align 2, !tbaa !59
  %1693 = getelementptr inbounds nuw i8, ptr %1679, i64 8
  store ptr %1693, ptr %1171, align 8, !tbaa !50
  %1694 = icmp ugt ptr %1672, %39
  br i1 %1694, label %1695, label %1584

1695:                                             ; preds = %1690, %1584, %1567, %1561
  %1696 = phi i32 [ 0, %1567 ], [ %1313, %1561 ], [ %1588, %1584 ], [ %1587, %1690 ]
  %1697 = phi i32 [ %1317, %1567 ], [ %1317, %1561 ], [ %1587, %1584 ], [ %1588, %1690 ]
  %1698 = phi ptr [ %1565, %1567 ], [ %1565, %1561 ], [ %1586, %1584 ], [ %1672, %1690 ]
  %1699 = getelementptr inbounds nuw i8, ptr %1698, i64 %17
  %1700 = getelementptr inbounds nuw i8, ptr %1699, i64 1
  %1701 = icmp ult ptr %1700, %39
  br i1 %1701, label %1173, label %4656

1702:                                             ; preds = %63
  br i1 %62, label %1703, label %4656

1703:                                             ; preds = %1702
  %1704 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %1705 = load i32, ptr %1704, align 4, !tbaa !21
  %1706 = sub i32 64, %1705
  %1707 = zext nneg i32 %1706 to i64
  %1708 = getelementptr inbounds i8, ptr %38, i64 -7
  %1709 = getelementptr inbounds i8, ptr %38, i64 -3
  %1710 = getelementptr inbounds i8, ptr %38, i64 -1
  %1711 = getelementptr inbounds i8, ptr %38, i64 -32
  %1712 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %1713 = ptrtoint ptr %1711 to i64
  %1714 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %1715 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %1716 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %1717

1717:                                             ; preds = %2239, %1703
  %1718 = phi ptr [ %61, %1703 ], [ %2244, %2239 ]
  %1719 = phi ptr [ %60, %1703 ], [ %2243, %2239 ]
  %1720 = phi ptr [ %3, %1703 ], [ %2242, %2239 ]
  %1721 = phi ptr [ %45, %1703 ], [ %2242, %2239 ]
  %1722 = phi i32 [ %58, %1703 ], [ %2241, %2239 ]
  %1723 = phi i32 [ %56, %1703 ], [ %2240, %2239 ]
  %1724 = getelementptr inbounds nuw i8, ptr %1721, i64 1
  %1725 = getelementptr inbounds nuw i8, ptr %1721, i64 128
  %1726 = load i64, ptr %1721, align 1, !tbaa !22
  %1727 = mul i64 %1726, -3523014627193167104
  %1728 = lshr i64 %1727, %1707
  %1729 = load i64, ptr %1724, align 1, !tbaa !22
  %1730 = getelementptr inbounds nuw i32, ptr %12, i64 %1728
  %1731 = load i32, ptr %1730, align 4, !tbaa !23
  %1732 = zext i32 %1722 to i64
  %1733 = sub nsw i64 0, %1732
  %1734 = icmp ne i32 %1722, 0
  br label %1735

1735:                                             ; preds = %1811, %1717
  %1736 = phi i64 [ %1728, %1717 ], [ %1770, %1811 ]
  %1737 = phi i64 [ %1729, %1717 ], [ %1787, %1811 ]
  %1738 = phi i32 [ %1731, %1717 ], [ %1786, %1811 ]
  %1739 = phi i64 [ %17, %1717 ], [ %1812, %1811 ]
  %1740 = phi ptr [ %1725, %1717 ], [ %1813, %1811 ]
  %1741 = phi ptr [ %1718, %1717 ], [ %1789, %1811 ]
  %1742 = phi ptr [ %1719, %1717 ], [ %1788, %1811 ]
  %1743 = phi ptr [ %1724, %1717 ], [ %1741, %1811 ]
  %1744 = phi ptr [ %1721, %1717 ], [ %1742, %1811 ]
  %1745 = mul i64 %1737, -3523014627193167104
  %1746 = lshr i64 %1745, %1707
  %1747 = getelementptr inbounds i8, ptr %1742, i64 %1733
  %1748 = load i32, ptr %1747, align 1, !tbaa !23
  %1749 = ptrtoint ptr %1744 to i64
  %1750 = sub i64 %1749, %21
  %1751 = trunc i64 %1750 to i32
  %1752 = getelementptr inbounds nuw i32, ptr %12, i64 %1736
  store i32 %1751, ptr %1752, align 4, !tbaa !23
  %1753 = load i32, ptr %1742, align 1, !tbaa !23
  %1754 = icmp eq i32 %1753, %1748
  %1755 = and i1 %1734, %1754
  br i1 %1755, label %1796, label %1756

1756:                                             ; preds = %1735
  %1757 = zext i32 %1738 to i64
  %1758 = getelementptr inbounds nuw i8, ptr %19, i64 %1757
  %1759 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1738, i32 %35, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %1758) #7, !srcloc !32
  %1760 = load i32, ptr %1744, align 1, !tbaa !23
  %1761 = load i32, ptr %1759, align 1, !tbaa !23
  %1762 = icmp eq i32 %1760, %1761
  br i1 %1762, label %1763, label %1765

1763:                                             ; preds = %1756
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !33
  %1764 = icmp ult i32 %1738, %35
  br i1 %1764, label %1765, label %1815

1765:                                             ; preds = %1763, %1756
  %1766 = getelementptr inbounds nuw i32, ptr %12, i64 %1746
  %1767 = load i32, ptr %1766, align 4, !tbaa !23
  %1768 = load i64, ptr %1742, align 1, !tbaa !22
  %1769 = mul i64 %1768, -3523014627193167104
  %1770 = lshr i64 %1769, %1707
  %1771 = ptrtoint ptr %1743 to i64
  %1772 = sub i64 %1771, %21
  %1773 = trunc i64 %1772 to i32
  store i32 %1773, ptr %1766, align 4, !tbaa !23
  %1774 = zext i32 %1767 to i64
  %1775 = getelementptr inbounds nuw i8, ptr %19, i64 %1774
  %1776 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1767, i32 %35, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %1775) #7, !srcloc !32
  %1777 = load i32, ptr %1743, align 1, !tbaa !23
  %1778 = load i32, ptr %1776, align 1, !tbaa !23
  %1779 = icmp eq i32 %1777, %1778
  br i1 %1779, label %1780, label %1784

1780:                                             ; preds = %1765
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !33
  %1781 = icmp ult i32 %1767, %35
  br i1 %1781, label %1784, label %1782

1782:                                             ; preds = %1780
  %1783 = icmp ult i64 %1739, 5
  br i1 %1783, label %1815, label %1827

1784:                                             ; preds = %1780, %1765
  %1785 = getelementptr inbounds nuw i32, ptr %12, i64 %1770
  %1786 = load i32, ptr %1785, align 4, !tbaa !23
  %1787 = load i64, ptr %1741, align 1, !tbaa !22
  %1788 = getelementptr inbounds nuw i8, ptr %1742, i64 %1739
  %1789 = getelementptr inbounds nuw i8, ptr %1741, i64 %1739
  %1790 = icmp ult ptr %1788, %1740
  br i1 %1790, label %1811, label %1791

1791:                                             ; preds = %1784
  %1792 = add i64 %1739, 1
  %1793 = getelementptr inbounds nuw i8, ptr %1741, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1793, i32 0, i32 3, i32 1)
  %1794 = getelementptr inbounds nuw i8, ptr %1741, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %1794, i32 0, i32 3, i32 1)
  %1795 = getelementptr inbounds nuw i8, ptr %1740, i64 128
  br label %1811

1796:                                             ; preds = %1735
  %1797 = getelementptr inbounds i8, ptr %1742, i64 %1733
  %1798 = getelementptr inbounds i8, ptr %1742, i64 -1
  %1799 = load i8, ptr %1798, align 1, !tbaa !34
  %1800 = getelementptr inbounds i8, ptr %1797, i64 -1
  %1801 = load i8, ptr %1800, align 1, !tbaa !34
  %1802 = icmp eq i8 %1799, %1801
  %1803 = sext i1 %1802 to i64
  %1804 = getelementptr inbounds i8, ptr %1742, i64 %1803
  %1805 = getelementptr inbounds i8, ptr %1797, i64 %1803
  %1806 = select i1 %1802, i64 5, i64 4
  %1807 = ptrtoint ptr %1743 to i64
  %1808 = sub i64 %1807, %21
  %1809 = trunc i64 %1808 to i32
  %1810 = getelementptr inbounds nuw i32, ptr %12, i64 %1746
  store i32 %1809, ptr %1810, align 4, !tbaa !23
  br label %1855

1811:                                             ; preds = %1791, %1784
  %1812 = phi i64 [ %1739, %1784 ], [ %1792, %1791 ]
  %1813 = phi ptr [ %1740, %1784 ], [ %1795, %1791 ]
  %1814 = icmp ult ptr %1789, %39
  br i1 %1814, label %1735, label %4656, !llvm.loop !35

1815:                                             ; preds = %1763, %1782
  %1816 = phi ptr [ %1742, %1782 ], [ %1743, %1763 ]
  %1817 = phi i64 [ %1770, %1782 ], [ %1746, %1763 ]
  %1818 = phi i64 [ %1771, %1782 ], [ %1749, %1763 ]
  %1819 = phi i64 [ %1774, %1782 ], [ %1757, %1763 ]
  %1820 = phi i32 [ %1767, %1782 ], [ %1738, %1763 ]
  %1821 = phi i32 [ %1773, %1782 ], [ %1751, %1763 ]
  %1822 = phi ptr [ %1743, %1782 ], [ %1744, %1763 ]
  %1823 = ptrtoint ptr %1816 to i64
  %1824 = sub i64 %1823, %21
  %1825 = trunc i64 %1824 to i32
  %1826 = getelementptr inbounds nuw i32, ptr %12, i64 %1817
  store i32 %1825, ptr %1826, align 4, !tbaa !23
  br label %1827

1827:                                             ; preds = %1815, %1782
  %1828 = phi i64 [ %1771, %1782 ], [ %1818, %1815 ]
  %1829 = phi i64 [ %1774, %1782 ], [ %1819, %1815 ]
  %1830 = phi i32 [ %1767, %1782 ], [ %1820, %1815 ]
  %1831 = phi i32 [ %1773, %1782 ], [ %1821, %1815 ]
  %1832 = phi ptr [ %1743, %1782 ], [ %1822, %1815 ]
  %1833 = getelementptr inbounds nuw i8, ptr %19, i64 %1829
  %1834 = ptrtoint ptr %1833 to i64
  %1835 = sub i64 %1828, %1834
  %1836 = trunc i64 %1835 to i32
  %1837 = add i32 %1836, 3
  %1838 = icmp ugt ptr %1832, %1720
  %1839 = icmp ugt i32 %1830, %35
  %1840 = and i1 %1839, %1838
  br i1 %1840, label %1841, label %1855

1841:                                             ; preds = %1827, %1850
  %1842 = phi ptr [ %1845, %1850 ], [ %1832, %1827 ]
  %1843 = phi i64 [ %1851, %1850 ], [ 4, %1827 ]
  %1844 = phi ptr [ %1847, %1850 ], [ %1833, %1827 ]
  %1845 = getelementptr inbounds i8, ptr %1842, i64 -1
  %1846 = load i8, ptr %1845, align 1, !tbaa !34
  %1847 = getelementptr inbounds i8, ptr %1844, i64 -1
  %1848 = load i8, ptr %1847, align 1, !tbaa !34
  %1849 = icmp eq i8 %1846, %1848
  br i1 %1849, label %1850, label %1855

1850:                                             ; preds = %1841
  %1851 = add i64 %1843, 1
  %1852 = icmp ugt ptr %1845, %1720
  %1853 = icmp ugt ptr %1847, %37
  %1854 = and i1 %1852, %1853
  br i1 %1854, label %1841, label %1855, !llvm.loop !36

1855:                                             ; preds = %1850, %1841, %1827, %1796
  %1856 = phi i32 [ %1751, %1796 ], [ %1831, %1827 ], [ %1831, %1841 ], [ %1831, %1850 ]
  %1857 = phi i32 [ %1723, %1796 ], [ %1722, %1827 ], [ %1722, %1841 ], [ %1722, %1850 ]
  %1858 = phi i32 [ 1, %1796 ], [ %1837, %1827 ], [ %1837, %1841 ], [ %1837, %1850 ]
  %1859 = phi ptr [ %1805, %1796 ], [ %1833, %1827 ], [ %1847, %1850 ], [ %1844, %1841 ]
  %1860 = phi i64 [ %1806, %1796 ], [ 4, %1827 ], [ %1851, %1850 ], [ %1843, %1841 ]
  %1861 = phi i32 [ %1722, %1796 ], [ %1836, %1827 ], [ %1836, %1841 ], [ %1836, %1850 ]
  %1862 = phi ptr [ %1804, %1796 ], [ %1832, %1827 ], [ %1845, %1850 ], [ %1842, %1841 ]
  %1863 = getelementptr inbounds nuw i8, ptr %1862, i64 %1860
  %1864 = getelementptr inbounds nuw i8, ptr %1859, i64 %1860
  %1865 = icmp ult ptr %1863, %1708
  br i1 %1865, label %1866, label %1892

1866:                                             ; preds = %1855
  %1867 = load i64, ptr %1864, align 1, !tbaa !22
  %1868 = load i64, ptr %1863, align 1, !tbaa !22
  %1869 = icmp eq i64 %1867, %1868
  br i1 %1869, label %1874, label %1870

1870:                                             ; preds = %1866
  %1871 = xor i64 %1868, %1867
  %1872 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1871, i1 true)
  %1873 = lshr i64 %1872, 3
  br label %1929

1874:                                             ; preds = %1866, %1880
  %1875 = phi ptr [ %1878, %1880 ], [ %1864, %1866 ]
  %1876 = phi ptr [ %1877, %1880 ], [ %1863, %1866 ]
  %1877 = getelementptr inbounds nuw i8, ptr %1876, i64 8
  %1878 = getelementptr inbounds nuw i8, ptr %1875, i64 8
  %1879 = icmp ult ptr %1877, %1708
  br i1 %1879, label %1880, label %1892

1880:                                             ; preds = %1874
  %1881 = load i64, ptr %1878, align 1, !tbaa !22
  %1882 = load i64, ptr %1877, align 1, !tbaa !22
  %1883 = icmp eq i64 %1881, %1882
  br i1 %1883, label %1874, label %1884

1884:                                             ; preds = %1880
  %1885 = xor i64 %1882, %1881
  %1886 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1885, i1 true)
  %1887 = lshr i64 %1886, 3
  %1888 = getelementptr inbounds nuw i8, ptr %1877, i64 %1887
  %1889 = ptrtoint ptr %1888 to i64
  %1890 = ptrtoint ptr %1863 to i64
  %1891 = sub i64 %1889, %1890
  br label %1929

1892:                                             ; preds = %1874, %1855
  %1893 = phi ptr [ %1864, %1855 ], [ %1878, %1874 ]
  %1894 = phi ptr [ %1863, %1855 ], [ %1877, %1874 ]
  %1895 = icmp ult ptr %1894, %1709
  br i1 %1895, label %1896, label %1903

1896:                                             ; preds = %1892
  %1897 = load i32, ptr %1893, align 1, !tbaa !23
  %1898 = load i32, ptr %1894, align 1, !tbaa !23
  %1899 = icmp eq i32 %1897, %1898
  br i1 %1899, label %1900, label %1903

1900:                                             ; preds = %1896
  %1901 = getelementptr inbounds nuw i8, ptr %1894, i64 4
  %1902 = getelementptr inbounds nuw i8, ptr %1893, i64 4
  br label %1903

1903:                                             ; preds = %1900, %1896, %1892
  %1904 = phi ptr [ %1902, %1900 ], [ %1893, %1896 ], [ %1893, %1892 ]
  %1905 = phi ptr [ %1901, %1900 ], [ %1894, %1896 ], [ %1894, %1892 ]
  %1906 = icmp ult ptr %1905, %1710
  br i1 %1906, label %1907, label %1914

1907:                                             ; preds = %1903
  %1908 = load i16, ptr %1904, align 1, !tbaa !37
  %1909 = load i16, ptr %1905, align 1, !tbaa !37
  %1910 = icmp eq i16 %1908, %1909
  br i1 %1910, label %1911, label %1914

1911:                                             ; preds = %1907
  %1912 = getelementptr inbounds nuw i8, ptr %1905, i64 2
  %1913 = getelementptr inbounds nuw i8, ptr %1904, i64 2
  br label %1914

1914:                                             ; preds = %1911, %1907, %1903
  %1915 = phi ptr [ %1913, %1911 ], [ %1904, %1907 ], [ %1904, %1903 ]
  %1916 = phi ptr [ %1912, %1911 ], [ %1905, %1907 ], [ %1905, %1903 ]
  %1917 = icmp ult ptr %1916, %38
  br i1 %1917, label %1918, label %1924

1918:                                             ; preds = %1914
  %1919 = load i8, ptr %1915, align 1, !tbaa !34
  %1920 = load i8, ptr %1916, align 1, !tbaa !34
  %1921 = icmp eq i8 %1919, %1920
  %1922 = zext i1 %1921 to i64
  %1923 = getelementptr inbounds nuw i8, ptr %1916, i64 %1922
  br label %1924

1924:                                             ; preds = %1918, %1914
  %1925 = phi ptr [ %1916, %1914 ], [ %1923, %1918 ]
  %1926 = ptrtoint ptr %1925 to i64
  %1927 = ptrtoint ptr %1863 to i64
  %1928 = sub i64 %1926, %1927
  br label %1929

1929:                                             ; preds = %1924, %1884, %1870
  %1930 = phi i64 [ %1928, %1924 ], [ %1873, %1870 ], [ %1891, %1884 ]
  %1931 = add i64 %1930, %1860
  %1932 = ptrtoint ptr %1862 to i64
  %1933 = ptrtoint ptr %1720 to i64
  %1934 = sub i64 %1932, %1933
  %1935 = icmp ugt ptr %1862, %1711
  %1936 = load ptr, ptr %1712, align 8, !tbaa !39
  br i1 %1935, label %1960, label %1937

1937:                                             ; preds = %1929
  %1938 = load <2 x i64>, ptr %1720, align 1, !tbaa !34
  store <2 x i64> %1938, ptr %1936, align 1, !tbaa !34
  %1939 = icmp ugt i64 %1934, 16
  br i1 %1939, label %1940, label %2076

1940:                                             ; preds = %1937
  %1941 = load ptr, ptr %1712, align 8, !tbaa !39
  %1942 = getelementptr inbounds nuw i8, ptr %1941, i64 16
  %1943 = getelementptr inbounds nuw i8, ptr %1720, i64 16
  %1944 = add i64 %1934, -16
  %1945 = getelementptr i8, ptr %1941, i64 %1934
  %1946 = load <2 x i64>, ptr %1943, align 1, !tbaa !34
  store <2 x i64> %1946, ptr %1942, align 1, !tbaa !34
  %1947 = icmp ult i64 %1944, 17
  br i1 %1947, label %2076, label %1948

1948:                                             ; preds = %1940
  %1949 = getelementptr inbounds nuw i8, ptr %1941, i64 32
  br label %1950

1950:                                             ; preds = %1950, %1948
  %1951 = phi ptr [ %1949, %1948 ], [ %1958, %1950 ]
  %1952 = phi ptr [ %1943, %1948 ], [ %1956, %1950 ]
  %1953 = getelementptr inbounds nuw i8, ptr %1952, i64 16
  %1954 = load <2 x i64>, ptr %1953, align 1, !tbaa !34
  store <2 x i64> %1954, ptr %1951, align 1, !tbaa !34
  %1955 = getelementptr inbounds nuw i8, ptr %1951, i64 16
  %1956 = getelementptr inbounds nuw i8, ptr %1952, i64 32
  %1957 = load <2 x i64>, ptr %1956, align 1, !tbaa !34
  store <2 x i64> %1957, ptr %1955, align 1, !tbaa !34
  %1958 = getelementptr inbounds nuw i8, ptr %1951, i64 32
  %1959 = icmp ult ptr %1958, %1945
  br i1 %1959, label %1950, label %2080, !llvm.loop !42

1960:                                             ; preds = %1929
  %1961 = icmp ugt ptr %1720, %1711
  br i1 %1961, label %1979, label %1962

1962:                                             ; preds = %1960
  %1963 = sub i64 %1713, %1933
  %1964 = getelementptr inbounds i8, ptr %1936, i64 %1963
  %1965 = load <2 x i64>, ptr %1720, align 1, !tbaa !34
  store <2 x i64> %1965, ptr %1936, align 1, !tbaa !34
  %1966 = icmp ult i64 %1963, 17
  br i1 %1966, label %1979, label %1967

1967:                                             ; preds = %1962
  %1968 = getelementptr inbounds nuw i8, ptr %1936, i64 16
  br label %1969

1969:                                             ; preds = %1969, %1967
  %1970 = phi ptr [ %1968, %1967 ], [ %1977, %1969 ]
  %1971 = phi ptr [ %1720, %1967 ], [ %1975, %1969 ]
  %1972 = getelementptr inbounds nuw i8, ptr %1971, i64 16
  %1973 = load <2 x i64>, ptr %1972, align 1, !tbaa !34
  store <2 x i64> %1973, ptr %1970, align 1, !tbaa !34
  %1974 = getelementptr inbounds nuw i8, ptr %1970, i64 16
  %1975 = getelementptr inbounds nuw i8, ptr %1971, i64 32
  %1976 = load <2 x i64>, ptr %1975, align 1, !tbaa !34
  store <2 x i64> %1976, ptr %1974, align 1, !tbaa !34
  %1977 = getelementptr inbounds nuw i8, ptr %1970, i64 32
  %1978 = icmp ult ptr %1977, %1964
  br i1 %1978, label %1969, label %1979, !llvm.loop !42

1979:                                             ; preds = %1969, %1962, %1960
  %1980 = phi ptr [ %1711, %1962 ], [ %1720, %1960 ], [ %1711, %1969 ]
  %1981 = phi ptr [ %1964, %1962 ], [ %1936, %1960 ], [ %1964, %1969 ]
  %1982 = icmp ult ptr %1980, %1862
  br i1 %1982, label %1983, label %2080

1983:                                             ; preds = %1979
  %1984 = ptrtoint ptr %1980 to i64
  %1985 = ptrtoint ptr %1981 to i64
  %1986 = ptrtoint ptr %1980 to i64
  %1987 = sub i64 %1932, %1986
  %1988 = icmp ult i64 %1987, 4
  %1989 = sub i64 %1985, %1984
  %1990 = icmp ult i64 %1989, 32
  %1991 = select i1 %1988, i1 true, i1 %1990
  br i1 %1991, label %2027, label %1992

1992:                                             ; preds = %1983
  %1993 = icmp ult i64 %1987, 32
  br i1 %1993, label %2013, label %1994

1994:                                             ; preds = %1992
  %1995 = and i64 %1987, -32
  br label %1996

1996:                                             ; preds = %1996, %1994
  %1997 = phi i64 [ 0, %1994 ], [ %2004, %1996 ]
  %1998 = getelementptr i8, ptr %1981, i64 %1997
  %1999 = getelementptr i8, ptr %1980, i64 %1997
  %2000 = getelementptr i8, ptr %1999, i64 16
  %2001 = load <16 x i8>, ptr %1999, align 1, !tbaa !34
  %2002 = load <16 x i8>, ptr %2000, align 1, !tbaa !34
  %2003 = getelementptr i8, ptr %1998, i64 16
  store <16 x i8> %2001, ptr %1998, align 1, !tbaa !34
  store <16 x i8> %2002, ptr %2003, align 1, !tbaa !34
  %2004 = add nuw i64 %1997, 32
  %2005 = icmp eq i64 %2004, %1995
  br i1 %2005, label %2006, label %1996, !llvm.loop !68

2006:                                             ; preds = %1996
  %2007 = icmp eq i64 %1987, %1995
  br i1 %2007, label %2080, label %2008

2008:                                             ; preds = %2006
  %2009 = getelementptr i8, ptr %1981, i64 %1995
  %2010 = getelementptr i8, ptr %1980, i64 %1995
  %2011 = and i64 %1987, 28
  %2012 = icmp eq i64 %2011, 0
  br i1 %2012, label %2027, label %2013

2013:                                             ; preds = %2008, %1992
  %2014 = phi i64 [ %1995, %2008 ], [ 0, %1992 ]
  %2015 = and i64 %1987, -4
  %2016 = getelementptr i8, ptr %1981, i64 %2015
  %2017 = getelementptr i8, ptr %1980, i64 %2015
  br label %2018

2018:                                             ; preds = %2018, %2013
  %2019 = phi i64 [ %2014, %2013 ], [ %2023, %2018 ]
  %2020 = getelementptr i8, ptr %1981, i64 %2019
  %2021 = getelementptr i8, ptr %1980, i64 %2019
  %2022 = load <4 x i8>, ptr %2021, align 1, !tbaa !34
  store <4 x i8> %2022, ptr %2020, align 1, !tbaa !34
  %2023 = add nuw i64 %2019, 4
  %2024 = icmp eq i64 %2023, %2015
  br i1 %2024, label %2025, label %2018, !llvm.loop !69

2025:                                             ; preds = %2018
  %2026 = icmp eq i64 %1987, %2015
  br i1 %2026, label %2080, label %2027

2027:                                             ; preds = %2008, %2025, %1983
  %2028 = phi ptr [ %1981, %1983 ], [ %2009, %2008 ], [ %2016, %2025 ]
  %2029 = phi ptr [ %1980, %1983 ], [ %2010, %2008 ], [ %2017, %2025 ]
  %2030 = ptrtoint ptr %2029 to i64
  %2031 = sub i64 %1932, %2030
  %2032 = and i64 %2031, 7
  %2033 = icmp eq i64 %2032, 0
  br i1 %2033, label %2043, label %2034

2034:                                             ; preds = %2027, %2034
  %2035 = phi ptr [ %2040, %2034 ], [ %2028, %2027 ]
  %2036 = phi ptr [ %2038, %2034 ], [ %2029, %2027 ]
  %2037 = phi i64 [ %2041, %2034 ], [ 0, %2027 ]
  %2038 = getelementptr inbounds nuw i8, ptr %2036, i64 1
  %2039 = load i8, ptr %2036, align 1, !tbaa !34
  %2040 = getelementptr inbounds nuw i8, ptr %2035, i64 1
  store i8 %2039, ptr %2035, align 1, !tbaa !34
  %2041 = add i64 %2037, 1
  %2042 = icmp eq i64 %2041, %2032
  br i1 %2042, label %2043, label %2034, !llvm.loop !70

2043:                                             ; preds = %2034, %2027
  %2044 = phi ptr [ %2028, %2027 ], [ %2040, %2034 ]
  %2045 = phi ptr [ %2029, %2027 ], [ %2038, %2034 ]
  %2046 = sub i64 %2030, %1932
  %2047 = icmp ugt i64 %2046, -8
  br i1 %2047, label %2080, label %2048

2048:                                             ; preds = %2043, %2048
  %2049 = phi ptr [ %2074, %2048 ], [ %2044, %2043 ]
  %2050 = phi ptr [ %2072, %2048 ], [ %2045, %2043 ]
  %2051 = getelementptr inbounds nuw i8, ptr %2050, i64 1
  %2052 = load i8, ptr %2050, align 1, !tbaa !34
  %2053 = getelementptr inbounds nuw i8, ptr %2049, i64 1
  store i8 %2052, ptr %2049, align 1, !tbaa !34
  %2054 = getelementptr inbounds nuw i8, ptr %2050, i64 2
  %2055 = load i8, ptr %2051, align 1, !tbaa !34
  %2056 = getelementptr inbounds nuw i8, ptr %2049, i64 2
  store i8 %2055, ptr %2053, align 1, !tbaa !34
  %2057 = getelementptr inbounds nuw i8, ptr %2050, i64 3
  %2058 = load i8, ptr %2054, align 1, !tbaa !34
  %2059 = getelementptr inbounds nuw i8, ptr %2049, i64 3
  store i8 %2058, ptr %2056, align 1, !tbaa !34
  %2060 = getelementptr inbounds nuw i8, ptr %2050, i64 4
  %2061 = load i8, ptr %2057, align 1, !tbaa !34
  %2062 = getelementptr inbounds nuw i8, ptr %2049, i64 4
  store i8 %2061, ptr %2059, align 1, !tbaa !34
  %2063 = getelementptr inbounds nuw i8, ptr %2050, i64 5
  %2064 = load i8, ptr %2060, align 1, !tbaa !34
  %2065 = getelementptr inbounds nuw i8, ptr %2049, i64 5
  store i8 %2064, ptr %2062, align 1, !tbaa !34
  %2066 = getelementptr inbounds nuw i8, ptr %2050, i64 6
  %2067 = load i8, ptr %2063, align 1, !tbaa !34
  %2068 = getelementptr inbounds nuw i8, ptr %2049, i64 6
  store i8 %2067, ptr %2065, align 1, !tbaa !34
  %2069 = getelementptr inbounds nuw i8, ptr %2050, i64 7
  %2070 = load i8, ptr %2066, align 1, !tbaa !34
  %2071 = getelementptr inbounds nuw i8, ptr %2049, i64 7
  store i8 %2070, ptr %2068, align 1, !tbaa !34
  %2072 = getelementptr inbounds nuw i8, ptr %2050, i64 8
  %2073 = load i8, ptr %2069, align 1, !tbaa !34
  %2074 = getelementptr inbounds nuw i8, ptr %2049, i64 8
  store i8 %2073, ptr %2071, align 1, !tbaa !34
  %2075 = icmp eq ptr %2072, %1862
  br i1 %2075, label %2080, label %2048, !llvm.loop !71

2076:                                             ; preds = %1940, %1937
  %2077 = load ptr, ptr %1712, align 8, !tbaa !39
  %2078 = getelementptr inbounds nuw i8, ptr %2077, i64 %1934
  store ptr %2078, ptr %1712, align 8, !tbaa !39
  %2079 = load ptr, ptr %1715, align 8, !tbaa !50
  br label %2092

2080:                                             ; preds = %1950, %2043, %2048, %2006, %2025, %1979
  %2081 = load ptr, ptr %1712, align 8, !tbaa !39
  %2082 = getelementptr inbounds nuw i8, ptr %2081, i64 %1934
  store ptr %2082, ptr %1712, align 8, !tbaa !39
  %2083 = icmp ugt i64 %1934, 65535
  %2084 = load ptr, ptr %1715, align 8, !tbaa !50
  br i1 %2083, label %2085, label %2092, !prof !51

2085:                                             ; preds = %2080
  store i32 1, ptr %1714, align 8, !tbaa !52
  %2086 = load ptr, ptr %1, align 8, !tbaa !53
  %2087 = ptrtoint ptr %2084 to i64
  %2088 = ptrtoint ptr %2086 to i64
  %2089 = sub i64 %2087, %2088
  %2090 = lshr exact i64 %2089, 3
  %2091 = trunc i64 %2090 to i32
  store i32 %2091, ptr %1716, align 4, !tbaa !54
  br label %2092

2092:                                             ; preds = %2085, %2080, %2076
  %2093 = phi ptr [ %2079, %2076 ], [ %2084, %2085 ], [ %2084, %2080 ]
  %2094 = trunc i64 %1934 to i16
  %2095 = getelementptr inbounds nuw i8, ptr %2093, i64 4
  store i16 %2094, ptr %2095, align 4, !tbaa !55
  store i32 %1858, ptr %2093, align 4, !tbaa !57
  %2096 = add i64 %1931, -3
  %2097 = icmp ugt i64 %2096, 65535
  br i1 %2097, label %2098, label %2105, !prof !58

2098:                                             ; preds = %2092
  store i32 2, ptr %1714, align 8, !tbaa !52
  %2099 = load ptr, ptr %1, align 8, !tbaa !53
  %2100 = ptrtoint ptr %2093 to i64
  %2101 = ptrtoint ptr %2099 to i64
  %2102 = sub i64 %2100, %2101
  %2103 = lshr exact i64 %2102, 3
  %2104 = trunc i64 %2103 to i32
  store i32 %2104, ptr %1716, align 4, !tbaa !54
  br label %2105

2105:                                             ; preds = %2098, %2092
  %2106 = trunc i64 %2096 to i16
  %2107 = getelementptr inbounds nuw i8, ptr %2093, i64 6
  store i16 %2106, ptr %2107, align 2, !tbaa !59
  %2108 = getelementptr inbounds nuw i8, ptr %2093, i64 8
  store ptr %2108, ptr %1715, align 8, !tbaa !50
  %2109 = getelementptr inbounds nuw i8, ptr %1862, i64 %1931
  %2110 = icmp ugt ptr %2109, %39
  br i1 %2110, label %2239, label %2111

2111:                                             ; preds = %2105
  %2112 = add i32 %1856, 2
  %2113 = zext i32 %1856 to i64
  %2114 = getelementptr inbounds nuw i8, ptr %59, i64 %2113
  %2115 = load i64, ptr %2114, align 1, !tbaa !22
  %2116 = mul i64 %2115, -3523014627193167104
  %2117 = lshr i64 %2116, %1707
  %2118 = getelementptr inbounds nuw i32, ptr %12, i64 %2117
  store i32 %2112, ptr %2118, align 4, !tbaa !23
  %2119 = getelementptr inbounds i8, ptr %2109, i64 -2
  %2120 = ptrtoint ptr %2119 to i64
  %2121 = sub i64 %2120, %21
  %2122 = trunc i64 %2121 to i32
  %2123 = load i64, ptr %2119, align 1, !tbaa !22
  %2124 = mul i64 %2123, -3523014627193167104
  %2125 = lshr i64 %2124, %1707
  %2126 = getelementptr inbounds nuw i32, ptr %12, i64 %2125
  store i32 %2122, ptr %2126, align 4, !tbaa !23
  %2127 = icmp eq i32 %1857, 0
  br i1 %2127, label %2239, label %2128

2128:                                             ; preds = %2111, %2234
  %2129 = phi ptr [ %2237, %2234 ], [ %2108, %2111 ]
  %2130 = phi ptr [ %2216, %2234 ], [ %2109, %2111 ]
  %2131 = phi i32 [ %2132, %2234 ], [ %1861, %2111 ]
  %2132 = phi i32 [ %2131, %2234 ], [ %1857, %2111 ]
  %2133 = load i32, ptr %2130, align 1, !tbaa !23
  %2134 = zext i32 %2132 to i64
  %2135 = sub nsw i64 0, %2134
  %2136 = getelementptr inbounds i8, ptr %2130, i64 %2135
  %2137 = load i32, ptr %2136, align 1, !tbaa !23
  %2138 = icmp eq i32 %2133, %2137
  br i1 %2138, label %2139, label %2239

2139:                                             ; preds = %2128
  %2140 = getelementptr inbounds nuw i8, ptr %2130, i64 4
  %2141 = getelementptr inbounds i8, ptr %2140, i64 %2135
  %2142 = icmp ult ptr %2140, %1708
  br i1 %2142, label %2143, label %2169

2143:                                             ; preds = %2139
  %2144 = load i64, ptr %2141, align 1, !tbaa !22
  %2145 = load i64, ptr %2140, align 1, !tbaa !22
  %2146 = icmp eq i64 %2144, %2145
  br i1 %2146, label %2151, label %2147

2147:                                             ; preds = %2143
  %2148 = xor i64 %2145, %2144
  %2149 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2148, i1 true)
  %2150 = lshr i64 %2149, 3
  br label %2206

2151:                                             ; preds = %2143, %2157
  %2152 = phi ptr [ %2155, %2157 ], [ %2141, %2143 ]
  %2153 = phi ptr [ %2154, %2157 ], [ %2140, %2143 ]
  %2154 = getelementptr inbounds nuw i8, ptr %2153, i64 8
  %2155 = getelementptr inbounds nuw i8, ptr %2152, i64 8
  %2156 = icmp ult ptr %2154, %1708
  br i1 %2156, label %2157, label %2169

2157:                                             ; preds = %2151
  %2158 = load i64, ptr %2155, align 1, !tbaa !22
  %2159 = load i64, ptr %2154, align 1, !tbaa !22
  %2160 = icmp eq i64 %2158, %2159
  br i1 %2160, label %2151, label %2161

2161:                                             ; preds = %2157
  %2162 = xor i64 %2159, %2158
  %2163 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2162, i1 true)
  %2164 = lshr i64 %2163, 3
  %2165 = getelementptr inbounds nuw i8, ptr %2154, i64 %2164
  %2166 = ptrtoint ptr %2165 to i64
  %2167 = ptrtoint ptr %2140 to i64
  %2168 = sub i64 %2166, %2167
  br label %2206

2169:                                             ; preds = %2151, %2139
  %2170 = phi ptr [ %2141, %2139 ], [ %2155, %2151 ]
  %2171 = phi ptr [ %2140, %2139 ], [ %2154, %2151 ]
  %2172 = icmp ult ptr %2171, %1709
  br i1 %2172, label %2173, label %2180

2173:                                             ; preds = %2169
  %2174 = load i32, ptr %2170, align 1, !tbaa !23
  %2175 = load i32, ptr %2171, align 1, !tbaa !23
  %2176 = icmp eq i32 %2174, %2175
  br i1 %2176, label %2177, label %2180

2177:                                             ; preds = %2173
  %2178 = getelementptr inbounds nuw i8, ptr %2171, i64 4
  %2179 = getelementptr inbounds nuw i8, ptr %2170, i64 4
  br label %2180

2180:                                             ; preds = %2177, %2173, %2169
  %2181 = phi ptr [ %2179, %2177 ], [ %2170, %2173 ], [ %2170, %2169 ]
  %2182 = phi ptr [ %2178, %2177 ], [ %2171, %2173 ], [ %2171, %2169 ]
  %2183 = icmp ult ptr %2182, %1710
  br i1 %2183, label %2184, label %2191

2184:                                             ; preds = %2180
  %2185 = load i16, ptr %2181, align 1, !tbaa !37
  %2186 = load i16, ptr %2182, align 1, !tbaa !37
  %2187 = icmp eq i16 %2185, %2186
  br i1 %2187, label %2188, label %2191

2188:                                             ; preds = %2184
  %2189 = getelementptr inbounds nuw i8, ptr %2182, i64 2
  %2190 = getelementptr inbounds nuw i8, ptr %2181, i64 2
  br label %2191

2191:                                             ; preds = %2188, %2184, %2180
  %2192 = phi ptr [ %2190, %2188 ], [ %2181, %2184 ], [ %2181, %2180 ]
  %2193 = phi ptr [ %2189, %2188 ], [ %2182, %2184 ], [ %2182, %2180 ]
  %2194 = icmp ult ptr %2193, %38
  br i1 %2194, label %2195, label %2201

2195:                                             ; preds = %2191
  %2196 = load i8, ptr %2192, align 1, !tbaa !34
  %2197 = load i8, ptr %2193, align 1, !tbaa !34
  %2198 = icmp eq i8 %2196, %2197
  %2199 = zext i1 %2198 to i64
  %2200 = getelementptr inbounds nuw i8, ptr %2193, i64 %2199
  br label %2201

2201:                                             ; preds = %2195, %2191
  %2202 = phi ptr [ %2193, %2191 ], [ %2200, %2195 ]
  %2203 = ptrtoint ptr %2202 to i64
  %2204 = ptrtoint ptr %2140 to i64
  %2205 = sub i64 %2203, %2204
  br label %2206

2206:                                             ; preds = %2201, %2161, %2147
  %2207 = phi i64 [ %2205, %2201 ], [ %2150, %2147 ], [ %2168, %2161 ]
  %2208 = ptrtoint ptr %2130 to i64
  %2209 = sub i64 %2208, %21
  %2210 = trunc i64 %2209 to i32
  %2211 = load i64, ptr %2130, align 1, !tbaa !22
  %2212 = mul i64 %2211, -3523014627193167104
  %2213 = lshr i64 %2212, %1707
  %2214 = getelementptr inbounds nuw i32, ptr %12, i64 %2213
  store i32 %2210, ptr %2214, align 4, !tbaa !23
  %2215 = getelementptr i8, ptr %2130, i64 %2207
  %2216 = getelementptr i8, ptr %2215, i64 4
  %2217 = icmp ugt ptr %2130, %1711
  br i1 %2217, label %2222, label %2218

2218:                                             ; preds = %2206
  %2219 = load ptr, ptr %1712, align 8, !tbaa !39
  %2220 = load <2 x i64>, ptr %2130, align 1, !tbaa !34
  store <2 x i64> %2220, ptr %2219, align 1, !tbaa !34
  %2221 = load ptr, ptr %1715, align 8, !tbaa !50
  br label %2222

2222:                                             ; preds = %2218, %2206
  %2223 = phi ptr [ %2129, %2206 ], [ %2221, %2218 ]
  %2224 = getelementptr inbounds nuw i8, ptr %2223, i64 4
  store i16 0, ptr %2224, align 4, !tbaa !55
  store i32 1, ptr %2223, align 4, !tbaa !57
  %2225 = add i64 %2207, 1
  %2226 = icmp ugt i64 %2225, 65535
  br i1 %2226, label %2227, label %2234, !prof !58

2227:                                             ; preds = %2222
  store i32 2, ptr %1714, align 8, !tbaa !52
  %2228 = load ptr, ptr %1, align 8, !tbaa !53
  %2229 = ptrtoint ptr %2223 to i64
  %2230 = ptrtoint ptr %2228 to i64
  %2231 = sub i64 %2229, %2230
  %2232 = lshr exact i64 %2231, 3
  %2233 = trunc i64 %2232 to i32
  store i32 %2233, ptr %1716, align 4, !tbaa !54
  br label %2234

2234:                                             ; preds = %2227, %2222
  %2235 = trunc i64 %2225 to i16
  %2236 = getelementptr inbounds nuw i8, ptr %2223, i64 6
  store i16 %2235, ptr %2236, align 2, !tbaa !59
  %2237 = getelementptr inbounds nuw i8, ptr %2223, i64 8
  store ptr %2237, ptr %1715, align 8, !tbaa !50
  %2238 = icmp ugt ptr %2216, %39
  br i1 %2238, label %2239, label %2128

2239:                                             ; preds = %2234, %2128, %2111, %2105
  %2240 = phi i32 [ 0, %2111 ], [ %1857, %2105 ], [ %2132, %2128 ], [ %2131, %2234 ]
  %2241 = phi i32 [ %1861, %2111 ], [ %1861, %2105 ], [ %2131, %2128 ], [ %2132, %2234 ]
  %2242 = phi ptr [ %2109, %2111 ], [ %2109, %2105 ], [ %2130, %2128 ], [ %2216, %2234 ]
  %2243 = getelementptr inbounds nuw i8, ptr %2242, i64 %17
  %2244 = getelementptr inbounds nuw i8, ptr %2243, i64 1
  %2245 = icmp ult ptr %2244, %39
  br i1 %2245, label %1717, label %4656

2246:                                             ; preds = %5
  switch i32 %8, label %2247 [
    i32 7, label %4055
    i32 5, label %2853
    i32 6, label %3454
  ]

2247:                                             ; preds = %2246
  br i1 %62, label %2248, label %4656

2248:                                             ; preds = %2247
  %2249 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %2250 = load i32, ptr %2249, align 4, !tbaa !21
  %2251 = sub i32 32, %2250
  %2252 = getelementptr inbounds i8, ptr %38, i64 -7
  %2253 = getelementptr inbounds i8, ptr %38, i64 -3
  %2254 = getelementptr inbounds i8, ptr %38, i64 -1
  %2255 = getelementptr inbounds i8, ptr %38, i64 -32
  %2256 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %2257 = ptrtoint ptr %2255 to i64
  %2258 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %2259 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %2260 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %2261

2261:                                             ; preds = %2846, %2248
  %2262 = phi ptr [ %61, %2248 ], [ %2851, %2846 ]
  %2263 = phi ptr [ %60, %2248 ], [ %2850, %2846 ]
  %2264 = phi ptr [ %3, %2248 ], [ %2849, %2846 ]
  %2265 = phi ptr [ %45, %2248 ], [ %2849, %2846 ]
  %2266 = phi i32 [ %58, %2248 ], [ %2848, %2846 ]
  %2267 = phi i32 [ %56, %2248 ], [ %2847, %2846 ]
  %2268 = freeze i32 %2266
  %2269 = getelementptr inbounds nuw i8, ptr %2265, i64 1
  %2270 = getelementptr inbounds nuw i8, ptr %2265, i64 128
  %2271 = load i32, ptr %2265, align 1, !tbaa !23
  %2272 = mul i32 %2271, -1640531535
  %2273 = lshr i32 %2272, %2251
  %2274 = zext i32 %2273 to i64
  %2275 = load i32, ptr %2269, align 1, !tbaa !23
  %2276 = getelementptr inbounds nuw i32, ptr %12, i64 %2274
  %2277 = load i32, ptr %2276, align 4, !tbaa !23
  %2278 = zext i32 %2268 to i64
  %2279 = sub nsw i64 0, %2278
  %2280 = icmp eq i32 %2268, 0
  br i1 %2280, label %2281, label %2338

2281:                                             ; preds = %2261, %2334
  %2282 = phi i64 [ %2311, %2334 ], [ %2274, %2261 ]
  %2283 = phi i32 [ %2325, %2334 ], [ %2275, %2261 ]
  %2284 = phi i32 [ %2324, %2334 ], [ %2277, %2261 ]
  %2285 = phi i64 [ %2335, %2334 ], [ %17, %2261 ]
  %2286 = phi ptr [ %2336, %2334 ], [ %2270, %2261 ]
  %2287 = phi ptr [ %2327, %2334 ], [ %2262, %2261 ]
  %2288 = phi ptr [ %2326, %2334 ], [ %2263, %2261 ]
  %2289 = phi ptr [ %2287, %2334 ], [ %2269, %2261 ]
  %2290 = phi ptr [ %2288, %2334 ], [ %2265, %2261 ]
  %2291 = mul i32 %2283, -1640531535
  %2292 = lshr i32 %2291, %2251
  %2293 = zext i32 %2292 to i64
  %2294 = ptrtoint ptr %2290 to i64
  %2295 = sub i64 %2294, %21
  %2296 = trunc i64 %2295 to i32
  %2297 = getelementptr inbounds nuw i32, ptr %12, i64 %2282
  store i32 %2296, ptr %2297, align 4, !tbaa !23
  %2298 = load i32, ptr %2288, align 1, !tbaa !23
  %2299 = icmp ult i32 %2284, %35
  br i1 %2299, label %2306, label %2300

2300:                                             ; preds = %2281
  %2301 = zext i32 %2284 to i64
  %2302 = getelementptr inbounds nuw i8, ptr %19, i64 %2301
  %2303 = load i32, ptr %2302, align 1, !tbaa !23
  %2304 = load i32, ptr %2290, align 1, !tbaa !23
  %2305 = icmp eq i32 %2304, %2303
  br i1 %2305, label %2422, label %2306

2306:                                             ; preds = %2300, %2281
  %2307 = getelementptr inbounds nuw i32, ptr %12, i64 %2293
  %2308 = load i32, ptr %2307, align 4, !tbaa !23
  %2309 = mul i32 %2298, -1640531535
  %2310 = lshr i32 %2309, %2251
  %2311 = zext i32 %2310 to i64
  %2312 = ptrtoint ptr %2289 to i64
  %2313 = sub i64 %2312, %21
  %2314 = trunc i64 %2313 to i32
  store i32 %2314, ptr %2307, align 4, !tbaa !23
  %2315 = icmp ult i32 %2308, %35
  br i1 %2315, label %2322, label %2316

2316:                                             ; preds = %2306
  %2317 = zext i32 %2308 to i64
  %2318 = getelementptr inbounds nuw i8, ptr %19, i64 %2317
  %2319 = load i32, ptr %2318, align 1, !tbaa !23
  %2320 = load i32, ptr %2289, align 1, !tbaa !23
  %2321 = icmp eq i32 %2320, %2319
  br i1 %2321, label %2383, label %2322

2322:                                             ; preds = %2316, %2306
  %2323 = getelementptr inbounds nuw i32, ptr %12, i64 %2311
  %2324 = load i32, ptr %2323, align 4, !tbaa !23
  %2325 = load i32, ptr %2287, align 1, !tbaa !23
  %2326 = getelementptr inbounds nuw i8, ptr %2288, i64 %2285
  %2327 = getelementptr inbounds nuw i8, ptr %2287, i64 %2285
  %2328 = icmp ult ptr %2326, %2286
  br i1 %2328, label %2334, label %2329

2329:                                             ; preds = %2322
  %2330 = add i64 %2285, 1
  %2331 = getelementptr inbounds nuw i8, ptr %2287, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %2331, i32 0, i32 3, i32 1)
  %2332 = getelementptr inbounds nuw i8, ptr %2287, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %2332, i32 0, i32 3, i32 1)
  %2333 = getelementptr inbounds nuw i8, ptr %2286, i64 128
  br label %2334

2334:                                             ; preds = %2329, %2322
  %2335 = phi i64 [ %2285, %2322 ], [ %2330, %2329 ]
  %2336 = phi ptr [ %2286, %2322 ], [ %2333, %2329 ]
  %2337 = icmp ult ptr %2327, %39
  br i1 %2337, label %2281, label %4656, !llvm.loop !35

2338:                                             ; preds = %2261, %2418
  %2339 = phi i64 [ %2372, %2418 ], [ %2274, %2261 ]
  %2340 = phi i32 [ %2394, %2418 ], [ %2275, %2261 ]
  %2341 = phi i32 [ %2393, %2418 ], [ %2277, %2261 ]
  %2342 = phi i64 [ %2419, %2418 ], [ %17, %2261 ]
  %2343 = phi ptr [ %2420, %2418 ], [ %2270, %2261 ]
  %2344 = phi ptr [ %2396, %2418 ], [ %2262, %2261 ]
  %2345 = phi ptr [ %2395, %2418 ], [ %2263, %2261 ]
  %2346 = phi ptr [ %2344, %2418 ], [ %2269, %2261 ]
  %2347 = phi ptr [ %2345, %2418 ], [ %2265, %2261 ]
  %2348 = mul i32 %2340, -1640531535
  %2349 = lshr i32 %2348, %2251
  %2350 = zext i32 %2349 to i64
  %2351 = getelementptr inbounds i8, ptr %2345, i64 %2279
  %2352 = load i32, ptr %2351, align 1, !tbaa !23
  %2353 = ptrtoint ptr %2347 to i64
  %2354 = sub i64 %2353, %21
  %2355 = trunc i64 %2354 to i32
  %2356 = getelementptr inbounds nuw i32, ptr %12, i64 %2339
  store i32 %2355, ptr %2356, align 4, !tbaa !23
  %2357 = load i32, ptr %2345, align 1, !tbaa !23
  %2358 = icmp eq i32 %2357, %2352
  br i1 %2358, label %2403, label %2359

2359:                                             ; preds = %2338
  %2360 = icmp ult i32 %2341, %35
  br i1 %2360, label %2367, label %2361

2361:                                             ; preds = %2359
  %2362 = zext i32 %2341 to i64
  %2363 = getelementptr inbounds nuw i8, ptr %19, i64 %2362
  %2364 = load i32, ptr %2363, align 1, !tbaa !23
  %2365 = load i32, ptr %2347, align 1, !tbaa !23
  %2366 = icmp eq i32 %2365, %2364
  br i1 %2366, label %2422, label %2367

2367:                                             ; preds = %2361, %2359
  %2368 = getelementptr inbounds nuw i32, ptr %12, i64 %2350
  %2369 = load i32, ptr %2368, align 4, !tbaa !23
  %2370 = mul i32 %2357, -1640531535
  %2371 = lshr i32 %2370, %2251
  %2372 = zext i32 %2371 to i64
  %2373 = ptrtoint ptr %2346 to i64
  %2374 = sub i64 %2373, %21
  %2375 = trunc i64 %2374 to i32
  store i32 %2375, ptr %2368, align 4, !tbaa !23
  %2376 = icmp ult i32 %2369, %35
  br i1 %2376, label %2391, label %2377

2377:                                             ; preds = %2367
  %2378 = zext i32 %2369 to i64
  %2379 = getelementptr inbounds nuw i8, ptr %19, i64 %2378
  %2380 = load i32, ptr %2379, align 1, !tbaa !23
  %2381 = load i32, ptr %2346, align 1, !tbaa !23
  %2382 = icmp eq i32 %2381, %2380
  br i1 %2382, label %2383, label %2391

2383:                                             ; preds = %2377, %2316
  %2384 = phi i32 [ %2308, %2316 ], [ %2369, %2377 ]
  %2385 = phi i64 [ %2311, %2316 ], [ %2372, %2377 ]
  %2386 = phi i32 [ %2314, %2316 ], [ %2375, %2377 ]
  %2387 = phi i64 [ %2285, %2316 ], [ %2342, %2377 ]
  %2388 = phi ptr [ %2288, %2316 ], [ %2345, %2377 ]
  %2389 = phi ptr [ %2289, %2316 ], [ %2346, %2377 ]
  %2390 = icmp ult i64 %2387, 5
  br i1 %2390, label %2422, label %2432

2391:                                             ; preds = %2377, %2367
  %2392 = getelementptr inbounds nuw i32, ptr %12, i64 %2372
  %2393 = load i32, ptr %2392, align 4, !tbaa !23
  %2394 = load i32, ptr %2344, align 1, !tbaa !23
  %2395 = getelementptr inbounds nuw i8, ptr %2345, i64 %2342
  %2396 = getelementptr inbounds nuw i8, ptr %2344, i64 %2342
  %2397 = icmp ult ptr %2395, %2343
  br i1 %2397, label %2418, label %2398

2398:                                             ; preds = %2391
  %2399 = add i64 %2342, 1
  %2400 = getelementptr inbounds nuw i8, ptr %2344, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %2400, i32 0, i32 3, i32 1)
  %2401 = getelementptr inbounds nuw i8, ptr %2344, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %2401, i32 0, i32 3, i32 1)
  %2402 = getelementptr inbounds nuw i8, ptr %2343, i64 128
  br label %2418

2403:                                             ; preds = %2338
  %2404 = getelementptr inbounds i8, ptr %2345, i64 %2279
  %2405 = getelementptr inbounds i8, ptr %2345, i64 -1
  %2406 = load i8, ptr %2405, align 1, !tbaa !34
  %2407 = getelementptr inbounds i8, ptr %2404, i64 -1
  %2408 = load i8, ptr %2407, align 1, !tbaa !34
  %2409 = icmp eq i8 %2406, %2408
  %2410 = sext i1 %2409 to i64
  %2411 = getelementptr inbounds i8, ptr %2345, i64 %2410
  %2412 = getelementptr inbounds i8, ptr %2404, i64 %2410
  %2413 = select i1 %2409, i64 5, i64 4
  %2414 = ptrtoint ptr %2346 to i64
  %2415 = sub i64 %2414, %21
  %2416 = trunc i64 %2415 to i32
  %2417 = getelementptr inbounds nuw i32, ptr %12, i64 %2350
  store i32 %2416, ptr %2417, align 4, !tbaa !23
  br label %2460

2418:                                             ; preds = %2398, %2391
  %2419 = phi i64 [ %2342, %2391 ], [ %2399, %2398 ]
  %2420 = phi ptr [ %2343, %2391 ], [ %2402, %2398 ]
  %2421 = icmp ult ptr %2396, %39
  br i1 %2421, label %2338, label %4656, !llvm.loop !35

2422:                                             ; preds = %2361, %2300, %2383
  %2423 = phi ptr [ %2388, %2383 ], [ %2289, %2300 ], [ %2346, %2361 ]
  %2424 = phi i64 [ %2385, %2383 ], [ %2293, %2300 ], [ %2350, %2361 ]
  %2425 = phi i32 [ %2384, %2383 ], [ %2284, %2300 ], [ %2341, %2361 ]
  %2426 = phi i32 [ %2386, %2383 ], [ %2296, %2300 ], [ %2355, %2361 ]
  %2427 = phi ptr [ %2389, %2383 ], [ %2290, %2300 ], [ %2347, %2361 ]
  %2428 = ptrtoint ptr %2423 to i64
  %2429 = sub i64 %2428, %21
  %2430 = trunc i64 %2429 to i32
  %2431 = getelementptr inbounds nuw i32, ptr %12, i64 %2424
  store i32 %2430, ptr %2431, align 4, !tbaa !23
  br label %2432

2432:                                             ; preds = %2422, %2383
  %2433 = phi i32 [ %2384, %2383 ], [ %2425, %2422 ]
  %2434 = phi i32 [ %2386, %2383 ], [ %2426, %2422 ]
  %2435 = phi ptr [ %2389, %2383 ], [ %2427, %2422 ]
  %2436 = zext i32 %2433 to i64
  %2437 = getelementptr inbounds nuw i8, ptr %19, i64 %2436
  %2438 = ptrtoint ptr %2435 to i64
  %2439 = ptrtoint ptr %2437 to i64
  %2440 = sub i64 %2438, %2439
  %2441 = trunc i64 %2440 to i32
  %2442 = add i32 %2441, 3
  %2443 = icmp ugt ptr %2435, %2264
  %2444 = icmp ugt i32 %2433, %35
  %2445 = and i1 %2444, %2443
  br i1 %2445, label %2446, label %2460

2446:                                             ; preds = %2432, %2455
  %2447 = phi ptr [ %2450, %2455 ], [ %2435, %2432 ]
  %2448 = phi i64 [ %2456, %2455 ], [ 4, %2432 ]
  %2449 = phi ptr [ %2452, %2455 ], [ %2437, %2432 ]
  %2450 = getelementptr inbounds i8, ptr %2447, i64 -1
  %2451 = load i8, ptr %2450, align 1, !tbaa !34
  %2452 = getelementptr inbounds i8, ptr %2449, i64 -1
  %2453 = load i8, ptr %2452, align 1, !tbaa !34
  %2454 = icmp eq i8 %2451, %2453
  br i1 %2454, label %2455, label %2460

2455:                                             ; preds = %2446
  %2456 = add i64 %2448, 1
  %2457 = icmp ugt ptr %2450, %2264
  %2458 = icmp ugt ptr %2452, %37
  %2459 = and i1 %2457, %2458
  br i1 %2459, label %2446, label %2460, !llvm.loop !36

2460:                                             ; preds = %2455, %2446, %2432, %2403
  %2461 = phi i32 [ %2355, %2403 ], [ %2434, %2432 ], [ %2434, %2446 ], [ %2434, %2455 ]
  %2462 = phi i32 [ %2267, %2403 ], [ %2268, %2432 ], [ %2268, %2446 ], [ %2268, %2455 ]
  %2463 = phi i32 [ 1, %2403 ], [ %2442, %2432 ], [ %2442, %2446 ], [ %2442, %2455 ]
  %2464 = phi ptr [ %2412, %2403 ], [ %2437, %2432 ], [ %2452, %2455 ], [ %2449, %2446 ]
  %2465 = phi i64 [ %2413, %2403 ], [ 4, %2432 ], [ %2456, %2455 ], [ %2448, %2446 ]
  %2466 = phi i32 [ %2268, %2403 ], [ %2441, %2432 ], [ %2441, %2446 ], [ %2441, %2455 ]
  %2467 = phi ptr [ %2411, %2403 ], [ %2435, %2432 ], [ %2450, %2455 ], [ %2447, %2446 ]
  %2468 = getelementptr inbounds nuw i8, ptr %2467, i64 %2465
  %2469 = getelementptr inbounds nuw i8, ptr %2464, i64 %2465
  %2470 = icmp ult ptr %2468, %2252
  br i1 %2470, label %2471, label %2497

2471:                                             ; preds = %2460
  %2472 = load i64, ptr %2469, align 1, !tbaa !22
  %2473 = load i64, ptr %2468, align 1, !tbaa !22
  %2474 = icmp eq i64 %2472, %2473
  br i1 %2474, label %2479, label %2475

2475:                                             ; preds = %2471
  %2476 = xor i64 %2473, %2472
  %2477 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2476, i1 true)
  %2478 = lshr i64 %2477, 3
  br label %2534

2479:                                             ; preds = %2471, %2485
  %2480 = phi ptr [ %2483, %2485 ], [ %2469, %2471 ]
  %2481 = phi ptr [ %2482, %2485 ], [ %2468, %2471 ]
  %2482 = getelementptr inbounds nuw i8, ptr %2481, i64 8
  %2483 = getelementptr inbounds nuw i8, ptr %2480, i64 8
  %2484 = icmp ult ptr %2482, %2252
  br i1 %2484, label %2485, label %2497

2485:                                             ; preds = %2479
  %2486 = load i64, ptr %2483, align 1, !tbaa !22
  %2487 = load i64, ptr %2482, align 1, !tbaa !22
  %2488 = icmp eq i64 %2486, %2487
  br i1 %2488, label %2479, label %2489

2489:                                             ; preds = %2485
  %2490 = xor i64 %2487, %2486
  %2491 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2490, i1 true)
  %2492 = lshr i64 %2491, 3
  %2493 = getelementptr inbounds nuw i8, ptr %2482, i64 %2492
  %2494 = ptrtoint ptr %2493 to i64
  %2495 = ptrtoint ptr %2468 to i64
  %2496 = sub i64 %2494, %2495
  br label %2534

2497:                                             ; preds = %2479, %2460
  %2498 = phi ptr [ %2469, %2460 ], [ %2483, %2479 ]
  %2499 = phi ptr [ %2468, %2460 ], [ %2482, %2479 ]
  %2500 = icmp ult ptr %2499, %2253
  br i1 %2500, label %2501, label %2508

2501:                                             ; preds = %2497
  %2502 = load i32, ptr %2498, align 1, !tbaa !23
  %2503 = load i32, ptr %2499, align 1, !tbaa !23
  %2504 = icmp eq i32 %2502, %2503
  br i1 %2504, label %2505, label %2508

2505:                                             ; preds = %2501
  %2506 = getelementptr inbounds nuw i8, ptr %2499, i64 4
  %2507 = getelementptr inbounds nuw i8, ptr %2498, i64 4
  br label %2508

2508:                                             ; preds = %2505, %2501, %2497
  %2509 = phi ptr [ %2507, %2505 ], [ %2498, %2501 ], [ %2498, %2497 ]
  %2510 = phi ptr [ %2506, %2505 ], [ %2499, %2501 ], [ %2499, %2497 ]
  %2511 = icmp ult ptr %2510, %2254
  br i1 %2511, label %2512, label %2519

2512:                                             ; preds = %2508
  %2513 = load i16, ptr %2509, align 1, !tbaa !37
  %2514 = load i16, ptr %2510, align 1, !tbaa !37
  %2515 = icmp eq i16 %2513, %2514
  br i1 %2515, label %2516, label %2519

2516:                                             ; preds = %2512
  %2517 = getelementptr inbounds nuw i8, ptr %2510, i64 2
  %2518 = getelementptr inbounds nuw i8, ptr %2509, i64 2
  br label %2519

2519:                                             ; preds = %2516, %2512, %2508
  %2520 = phi ptr [ %2518, %2516 ], [ %2509, %2512 ], [ %2509, %2508 ]
  %2521 = phi ptr [ %2517, %2516 ], [ %2510, %2512 ], [ %2510, %2508 ]
  %2522 = icmp ult ptr %2521, %38
  br i1 %2522, label %2523, label %2529

2523:                                             ; preds = %2519
  %2524 = load i8, ptr %2520, align 1, !tbaa !34
  %2525 = load i8, ptr %2521, align 1, !tbaa !34
  %2526 = icmp eq i8 %2524, %2525
  %2527 = zext i1 %2526 to i64
  %2528 = getelementptr inbounds nuw i8, ptr %2521, i64 %2527
  br label %2529

2529:                                             ; preds = %2523, %2519
  %2530 = phi ptr [ %2521, %2519 ], [ %2528, %2523 ]
  %2531 = ptrtoint ptr %2530 to i64
  %2532 = ptrtoint ptr %2468 to i64
  %2533 = sub i64 %2531, %2532
  br label %2534

2534:                                             ; preds = %2529, %2489, %2475
  %2535 = phi i64 [ %2533, %2529 ], [ %2478, %2475 ], [ %2496, %2489 ]
  %2536 = add i64 %2535, %2465
  %2537 = ptrtoint ptr %2467 to i64
  %2538 = ptrtoint ptr %2264 to i64
  %2539 = sub i64 %2537, %2538
  %2540 = icmp ugt ptr %2467, %2255
  %2541 = load ptr, ptr %2256, align 8, !tbaa !39
  br i1 %2540, label %2565, label %2542

2542:                                             ; preds = %2534
  %2543 = load <2 x i64>, ptr %2264, align 1, !tbaa !34
  store <2 x i64> %2543, ptr %2541, align 1, !tbaa !34
  %2544 = icmp ugt i64 %2539, 16
  br i1 %2544, label %2545, label %2681

2545:                                             ; preds = %2542
  %2546 = load ptr, ptr %2256, align 8, !tbaa !39
  %2547 = getelementptr inbounds nuw i8, ptr %2546, i64 16
  %2548 = getelementptr inbounds nuw i8, ptr %2264, i64 16
  %2549 = add i64 %2539, -16
  %2550 = getelementptr i8, ptr %2546, i64 %2539
  %2551 = load <2 x i64>, ptr %2548, align 1, !tbaa !34
  store <2 x i64> %2551, ptr %2547, align 1, !tbaa !34
  %2552 = icmp ult i64 %2549, 17
  br i1 %2552, label %2681, label %2553

2553:                                             ; preds = %2545
  %2554 = getelementptr inbounds nuw i8, ptr %2546, i64 32
  br label %2555

2555:                                             ; preds = %2555, %2553
  %2556 = phi ptr [ %2554, %2553 ], [ %2563, %2555 ]
  %2557 = phi ptr [ %2548, %2553 ], [ %2561, %2555 ]
  %2558 = getelementptr inbounds nuw i8, ptr %2557, i64 16
  %2559 = load <2 x i64>, ptr %2558, align 1, !tbaa !34
  store <2 x i64> %2559, ptr %2556, align 1, !tbaa !34
  %2560 = getelementptr inbounds nuw i8, ptr %2556, i64 16
  %2561 = getelementptr inbounds nuw i8, ptr %2557, i64 32
  %2562 = load <2 x i64>, ptr %2561, align 1, !tbaa !34
  store <2 x i64> %2562, ptr %2560, align 1, !tbaa !34
  %2563 = getelementptr inbounds nuw i8, ptr %2556, i64 32
  %2564 = icmp ult ptr %2563, %2550
  br i1 %2564, label %2555, label %2685, !llvm.loop !42

2565:                                             ; preds = %2534
  %2566 = icmp ugt ptr %2264, %2255
  br i1 %2566, label %2584, label %2567

2567:                                             ; preds = %2565
  %2568 = sub i64 %2257, %2538
  %2569 = getelementptr inbounds i8, ptr %2541, i64 %2568
  %2570 = load <2 x i64>, ptr %2264, align 1, !tbaa !34
  store <2 x i64> %2570, ptr %2541, align 1, !tbaa !34
  %2571 = icmp ult i64 %2568, 17
  br i1 %2571, label %2584, label %2572

2572:                                             ; preds = %2567
  %2573 = getelementptr inbounds nuw i8, ptr %2541, i64 16
  br label %2574

2574:                                             ; preds = %2574, %2572
  %2575 = phi ptr [ %2573, %2572 ], [ %2582, %2574 ]
  %2576 = phi ptr [ %2264, %2572 ], [ %2580, %2574 ]
  %2577 = getelementptr inbounds nuw i8, ptr %2576, i64 16
  %2578 = load <2 x i64>, ptr %2577, align 1, !tbaa !34
  store <2 x i64> %2578, ptr %2575, align 1, !tbaa !34
  %2579 = getelementptr inbounds nuw i8, ptr %2575, i64 16
  %2580 = getelementptr inbounds nuw i8, ptr %2576, i64 32
  %2581 = load <2 x i64>, ptr %2580, align 1, !tbaa !34
  store <2 x i64> %2581, ptr %2579, align 1, !tbaa !34
  %2582 = getelementptr inbounds nuw i8, ptr %2575, i64 32
  %2583 = icmp ult ptr %2582, %2569
  br i1 %2583, label %2574, label %2584, !llvm.loop !42

2584:                                             ; preds = %2574, %2567, %2565
  %2585 = phi ptr [ %2255, %2567 ], [ %2264, %2565 ], [ %2255, %2574 ]
  %2586 = phi ptr [ %2569, %2567 ], [ %2541, %2565 ], [ %2569, %2574 ]
  %2587 = icmp ult ptr %2585, %2467
  br i1 %2587, label %2588, label %2685

2588:                                             ; preds = %2584
  %2589 = ptrtoint ptr %2585 to i64
  %2590 = ptrtoint ptr %2586 to i64
  %2591 = ptrtoint ptr %2585 to i64
  %2592 = sub i64 %2537, %2591
  %2593 = icmp ult i64 %2592, 4
  %2594 = sub i64 %2590, %2589
  %2595 = icmp ult i64 %2594, 32
  %2596 = select i1 %2593, i1 true, i1 %2595
  br i1 %2596, label %2632, label %2597

2597:                                             ; preds = %2588
  %2598 = icmp ult i64 %2592, 32
  br i1 %2598, label %2618, label %2599

2599:                                             ; preds = %2597
  %2600 = and i64 %2592, -32
  br label %2601

2601:                                             ; preds = %2601, %2599
  %2602 = phi i64 [ 0, %2599 ], [ %2609, %2601 ]
  %2603 = getelementptr i8, ptr %2586, i64 %2602
  %2604 = getelementptr i8, ptr %2585, i64 %2602
  %2605 = getelementptr i8, ptr %2604, i64 16
  %2606 = load <16 x i8>, ptr %2604, align 1, !tbaa !34
  %2607 = load <16 x i8>, ptr %2605, align 1, !tbaa !34
  %2608 = getelementptr i8, ptr %2603, i64 16
  store <16 x i8> %2606, ptr %2603, align 1, !tbaa !34
  store <16 x i8> %2607, ptr %2608, align 1, !tbaa !34
  %2609 = add nuw i64 %2602, 32
  %2610 = icmp eq i64 %2609, %2600
  br i1 %2610, label %2611, label %2601, !llvm.loop !72

2611:                                             ; preds = %2601
  %2612 = icmp eq i64 %2592, %2600
  br i1 %2612, label %2685, label %2613

2613:                                             ; preds = %2611
  %2614 = getelementptr i8, ptr %2586, i64 %2600
  %2615 = getelementptr i8, ptr %2585, i64 %2600
  %2616 = and i64 %2592, 28
  %2617 = icmp eq i64 %2616, 0
  br i1 %2617, label %2632, label %2618

2618:                                             ; preds = %2613, %2597
  %2619 = phi i64 [ %2600, %2613 ], [ 0, %2597 ]
  %2620 = and i64 %2592, -4
  %2621 = getelementptr i8, ptr %2586, i64 %2620
  %2622 = getelementptr i8, ptr %2585, i64 %2620
  br label %2623

2623:                                             ; preds = %2623, %2618
  %2624 = phi i64 [ %2619, %2618 ], [ %2628, %2623 ]
  %2625 = getelementptr i8, ptr %2586, i64 %2624
  %2626 = getelementptr i8, ptr %2585, i64 %2624
  %2627 = load <4 x i8>, ptr %2626, align 1, !tbaa !34
  store <4 x i8> %2627, ptr %2625, align 1, !tbaa !34
  %2628 = add nuw i64 %2624, 4
  %2629 = icmp eq i64 %2628, %2620
  br i1 %2629, label %2630, label %2623, !llvm.loop !73

2630:                                             ; preds = %2623
  %2631 = icmp eq i64 %2592, %2620
  br i1 %2631, label %2685, label %2632

2632:                                             ; preds = %2613, %2630, %2588
  %2633 = phi ptr [ %2586, %2588 ], [ %2614, %2613 ], [ %2621, %2630 ]
  %2634 = phi ptr [ %2585, %2588 ], [ %2615, %2613 ], [ %2622, %2630 ]
  %2635 = ptrtoint ptr %2634 to i64
  %2636 = sub i64 %2537, %2635
  %2637 = and i64 %2636, 7
  %2638 = icmp eq i64 %2637, 0
  br i1 %2638, label %2648, label %2639

2639:                                             ; preds = %2632, %2639
  %2640 = phi ptr [ %2645, %2639 ], [ %2633, %2632 ]
  %2641 = phi ptr [ %2643, %2639 ], [ %2634, %2632 ]
  %2642 = phi i64 [ %2646, %2639 ], [ 0, %2632 ]
  %2643 = getelementptr inbounds nuw i8, ptr %2641, i64 1
  %2644 = load i8, ptr %2641, align 1, !tbaa !34
  %2645 = getelementptr inbounds nuw i8, ptr %2640, i64 1
  store i8 %2644, ptr %2640, align 1, !tbaa !34
  %2646 = add i64 %2642, 1
  %2647 = icmp eq i64 %2646, %2637
  br i1 %2647, label %2648, label %2639, !llvm.loop !74

2648:                                             ; preds = %2639, %2632
  %2649 = phi ptr [ %2633, %2632 ], [ %2645, %2639 ]
  %2650 = phi ptr [ %2634, %2632 ], [ %2643, %2639 ]
  %2651 = sub i64 %2635, %2537
  %2652 = icmp ugt i64 %2651, -8
  br i1 %2652, label %2685, label %2653

2653:                                             ; preds = %2648, %2653
  %2654 = phi ptr [ %2679, %2653 ], [ %2649, %2648 ]
  %2655 = phi ptr [ %2677, %2653 ], [ %2650, %2648 ]
  %2656 = getelementptr inbounds nuw i8, ptr %2655, i64 1
  %2657 = load i8, ptr %2655, align 1, !tbaa !34
  %2658 = getelementptr inbounds nuw i8, ptr %2654, i64 1
  store i8 %2657, ptr %2654, align 1, !tbaa !34
  %2659 = getelementptr inbounds nuw i8, ptr %2655, i64 2
  %2660 = load i8, ptr %2656, align 1, !tbaa !34
  %2661 = getelementptr inbounds nuw i8, ptr %2654, i64 2
  store i8 %2660, ptr %2658, align 1, !tbaa !34
  %2662 = getelementptr inbounds nuw i8, ptr %2655, i64 3
  %2663 = load i8, ptr %2659, align 1, !tbaa !34
  %2664 = getelementptr inbounds nuw i8, ptr %2654, i64 3
  store i8 %2663, ptr %2661, align 1, !tbaa !34
  %2665 = getelementptr inbounds nuw i8, ptr %2655, i64 4
  %2666 = load i8, ptr %2662, align 1, !tbaa !34
  %2667 = getelementptr inbounds nuw i8, ptr %2654, i64 4
  store i8 %2666, ptr %2664, align 1, !tbaa !34
  %2668 = getelementptr inbounds nuw i8, ptr %2655, i64 5
  %2669 = load i8, ptr %2665, align 1, !tbaa !34
  %2670 = getelementptr inbounds nuw i8, ptr %2654, i64 5
  store i8 %2669, ptr %2667, align 1, !tbaa !34
  %2671 = getelementptr inbounds nuw i8, ptr %2655, i64 6
  %2672 = load i8, ptr %2668, align 1, !tbaa !34
  %2673 = getelementptr inbounds nuw i8, ptr %2654, i64 6
  store i8 %2672, ptr %2670, align 1, !tbaa !34
  %2674 = getelementptr inbounds nuw i8, ptr %2655, i64 7
  %2675 = load i8, ptr %2671, align 1, !tbaa !34
  %2676 = getelementptr inbounds nuw i8, ptr %2654, i64 7
  store i8 %2675, ptr %2673, align 1, !tbaa !34
  %2677 = getelementptr inbounds nuw i8, ptr %2655, i64 8
  %2678 = load i8, ptr %2674, align 1, !tbaa !34
  %2679 = getelementptr inbounds nuw i8, ptr %2654, i64 8
  store i8 %2678, ptr %2676, align 1, !tbaa !34
  %2680 = icmp eq ptr %2677, %2467
  br i1 %2680, label %2685, label %2653, !llvm.loop !75

2681:                                             ; preds = %2545, %2542
  %2682 = load ptr, ptr %2256, align 8, !tbaa !39
  %2683 = getelementptr inbounds nuw i8, ptr %2682, i64 %2539
  store ptr %2683, ptr %2256, align 8, !tbaa !39
  %2684 = load ptr, ptr %2259, align 8, !tbaa !50
  br label %2697

2685:                                             ; preds = %2555, %2648, %2653, %2611, %2630, %2584
  %2686 = load ptr, ptr %2256, align 8, !tbaa !39
  %2687 = getelementptr inbounds nuw i8, ptr %2686, i64 %2539
  store ptr %2687, ptr %2256, align 8, !tbaa !39
  %2688 = icmp ugt i64 %2539, 65535
  %2689 = load ptr, ptr %2259, align 8, !tbaa !50
  br i1 %2688, label %2690, label %2697, !prof !51

2690:                                             ; preds = %2685
  store i32 1, ptr %2258, align 8, !tbaa !52
  %2691 = load ptr, ptr %1, align 8, !tbaa !53
  %2692 = ptrtoint ptr %2689 to i64
  %2693 = ptrtoint ptr %2691 to i64
  %2694 = sub i64 %2692, %2693
  %2695 = lshr exact i64 %2694, 3
  %2696 = trunc i64 %2695 to i32
  store i32 %2696, ptr %2260, align 4, !tbaa !54
  br label %2697

2697:                                             ; preds = %2690, %2685, %2681
  %2698 = phi ptr [ %2684, %2681 ], [ %2689, %2690 ], [ %2689, %2685 ]
  %2699 = trunc i64 %2539 to i16
  %2700 = getelementptr inbounds nuw i8, ptr %2698, i64 4
  store i16 %2699, ptr %2700, align 4, !tbaa !55
  store i32 %2463, ptr %2698, align 4, !tbaa !57
  %2701 = add i64 %2536, -3
  %2702 = icmp ugt i64 %2701, 65535
  br i1 %2702, label %2703, label %2710, !prof !58

2703:                                             ; preds = %2697
  store i32 2, ptr %2258, align 8, !tbaa !52
  %2704 = load ptr, ptr %1, align 8, !tbaa !53
  %2705 = ptrtoint ptr %2698 to i64
  %2706 = ptrtoint ptr %2704 to i64
  %2707 = sub i64 %2705, %2706
  %2708 = lshr exact i64 %2707, 3
  %2709 = trunc i64 %2708 to i32
  store i32 %2709, ptr %2260, align 4, !tbaa !54
  br label %2710

2710:                                             ; preds = %2703, %2697
  %2711 = trunc i64 %2701 to i16
  %2712 = getelementptr inbounds nuw i8, ptr %2698, i64 6
  store i16 %2711, ptr %2712, align 2, !tbaa !59
  %2713 = getelementptr inbounds nuw i8, ptr %2698, i64 8
  store ptr %2713, ptr %2259, align 8, !tbaa !50
  %2714 = getelementptr inbounds nuw i8, ptr %2467, i64 %2536
  %2715 = icmp ugt ptr %2714, %39
  br i1 %2715, label %2846, label %2716

2716:                                             ; preds = %2710
  %2717 = add i32 %2461, 2
  %2718 = zext i32 %2461 to i64
  %2719 = getelementptr inbounds nuw i8, ptr %59, i64 %2718
  %2720 = load i32, ptr %2719, align 1, !tbaa !23
  %2721 = mul i32 %2720, -1640531535
  %2722 = lshr i32 %2721, %2251
  %2723 = zext i32 %2722 to i64
  %2724 = getelementptr inbounds nuw i32, ptr %12, i64 %2723
  store i32 %2717, ptr %2724, align 4, !tbaa !23
  %2725 = getelementptr inbounds i8, ptr %2714, i64 -2
  %2726 = ptrtoint ptr %2725 to i64
  %2727 = sub i64 %2726, %21
  %2728 = trunc i64 %2727 to i32
  %2729 = load i32, ptr %2725, align 1, !tbaa !23
  %2730 = mul i32 %2729, -1640531535
  %2731 = lshr i32 %2730, %2251
  %2732 = zext i32 %2731 to i64
  %2733 = getelementptr inbounds nuw i32, ptr %12, i64 %2732
  store i32 %2728, ptr %2733, align 4, !tbaa !23
  %2734 = icmp eq i32 %2462, 0
  br i1 %2734, label %2846, label %2735

2735:                                             ; preds = %2716, %2841
  %2736 = phi ptr [ %2844, %2841 ], [ %2713, %2716 ]
  %2737 = phi ptr [ %2823, %2841 ], [ %2714, %2716 ]
  %2738 = phi i32 [ %2739, %2841 ], [ %2466, %2716 ]
  %2739 = phi i32 [ %2738, %2841 ], [ %2462, %2716 ]
  %2740 = load i32, ptr %2737, align 1, !tbaa !23
  %2741 = zext i32 %2739 to i64
  %2742 = sub nsw i64 0, %2741
  %2743 = getelementptr inbounds i8, ptr %2737, i64 %2742
  %2744 = load i32, ptr %2743, align 1, !tbaa !23
  %2745 = icmp eq i32 %2740, %2744
  br i1 %2745, label %2746, label %2846

2746:                                             ; preds = %2735
  %2747 = getelementptr inbounds nuw i8, ptr %2737, i64 4
  %2748 = getelementptr inbounds i8, ptr %2747, i64 %2742
  %2749 = icmp ult ptr %2747, %2252
  br i1 %2749, label %2750, label %2776

2750:                                             ; preds = %2746
  %2751 = load i64, ptr %2748, align 1, !tbaa !22
  %2752 = load i64, ptr %2747, align 1, !tbaa !22
  %2753 = icmp eq i64 %2751, %2752
  br i1 %2753, label %2758, label %2754

2754:                                             ; preds = %2750
  %2755 = xor i64 %2752, %2751
  %2756 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2755, i1 true)
  %2757 = lshr i64 %2756, 3
  br label %2813

2758:                                             ; preds = %2750, %2764
  %2759 = phi ptr [ %2762, %2764 ], [ %2748, %2750 ]
  %2760 = phi ptr [ %2761, %2764 ], [ %2747, %2750 ]
  %2761 = getelementptr inbounds nuw i8, ptr %2760, i64 8
  %2762 = getelementptr inbounds nuw i8, ptr %2759, i64 8
  %2763 = icmp ult ptr %2761, %2252
  br i1 %2763, label %2764, label %2776

2764:                                             ; preds = %2758
  %2765 = load i64, ptr %2762, align 1, !tbaa !22
  %2766 = load i64, ptr %2761, align 1, !tbaa !22
  %2767 = icmp eq i64 %2765, %2766
  br i1 %2767, label %2758, label %2768

2768:                                             ; preds = %2764
  %2769 = xor i64 %2766, %2765
  %2770 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2769, i1 true)
  %2771 = lshr i64 %2770, 3
  %2772 = getelementptr inbounds nuw i8, ptr %2761, i64 %2771
  %2773 = ptrtoint ptr %2772 to i64
  %2774 = ptrtoint ptr %2747 to i64
  %2775 = sub i64 %2773, %2774
  br label %2813

2776:                                             ; preds = %2758, %2746
  %2777 = phi ptr [ %2748, %2746 ], [ %2762, %2758 ]
  %2778 = phi ptr [ %2747, %2746 ], [ %2761, %2758 ]
  %2779 = icmp ult ptr %2778, %2253
  br i1 %2779, label %2780, label %2787

2780:                                             ; preds = %2776
  %2781 = load i32, ptr %2777, align 1, !tbaa !23
  %2782 = load i32, ptr %2778, align 1, !tbaa !23
  %2783 = icmp eq i32 %2781, %2782
  br i1 %2783, label %2784, label %2787

2784:                                             ; preds = %2780
  %2785 = getelementptr inbounds nuw i8, ptr %2778, i64 4
  %2786 = getelementptr inbounds nuw i8, ptr %2777, i64 4
  br label %2787

2787:                                             ; preds = %2784, %2780, %2776
  %2788 = phi ptr [ %2786, %2784 ], [ %2777, %2780 ], [ %2777, %2776 ]
  %2789 = phi ptr [ %2785, %2784 ], [ %2778, %2780 ], [ %2778, %2776 ]
  %2790 = icmp ult ptr %2789, %2254
  br i1 %2790, label %2791, label %2798

2791:                                             ; preds = %2787
  %2792 = load i16, ptr %2788, align 1, !tbaa !37
  %2793 = load i16, ptr %2789, align 1, !tbaa !37
  %2794 = icmp eq i16 %2792, %2793
  br i1 %2794, label %2795, label %2798

2795:                                             ; preds = %2791
  %2796 = getelementptr inbounds nuw i8, ptr %2789, i64 2
  %2797 = getelementptr inbounds nuw i8, ptr %2788, i64 2
  br label %2798

2798:                                             ; preds = %2795, %2791, %2787
  %2799 = phi ptr [ %2797, %2795 ], [ %2788, %2791 ], [ %2788, %2787 ]
  %2800 = phi ptr [ %2796, %2795 ], [ %2789, %2791 ], [ %2789, %2787 ]
  %2801 = icmp ult ptr %2800, %38
  br i1 %2801, label %2802, label %2808

2802:                                             ; preds = %2798
  %2803 = load i8, ptr %2799, align 1, !tbaa !34
  %2804 = load i8, ptr %2800, align 1, !tbaa !34
  %2805 = icmp eq i8 %2803, %2804
  %2806 = zext i1 %2805 to i64
  %2807 = getelementptr inbounds nuw i8, ptr %2800, i64 %2806
  br label %2808

2808:                                             ; preds = %2802, %2798
  %2809 = phi ptr [ %2800, %2798 ], [ %2807, %2802 ]
  %2810 = ptrtoint ptr %2809 to i64
  %2811 = ptrtoint ptr %2747 to i64
  %2812 = sub i64 %2810, %2811
  br label %2813

2813:                                             ; preds = %2808, %2768, %2754
  %2814 = phi i64 [ %2812, %2808 ], [ %2757, %2754 ], [ %2775, %2768 ]
  %2815 = ptrtoint ptr %2737 to i64
  %2816 = sub i64 %2815, %21
  %2817 = trunc i64 %2816 to i32
  %2818 = mul i32 %2740, -1640531535
  %2819 = lshr i32 %2818, %2251
  %2820 = zext i32 %2819 to i64
  %2821 = getelementptr inbounds nuw i32, ptr %12, i64 %2820
  store i32 %2817, ptr %2821, align 4, !tbaa !23
  %2822 = getelementptr i8, ptr %2737, i64 %2814
  %2823 = getelementptr i8, ptr %2822, i64 4
  %2824 = icmp ugt ptr %2737, %2255
  br i1 %2824, label %2829, label %2825

2825:                                             ; preds = %2813
  %2826 = load ptr, ptr %2256, align 8, !tbaa !39
  %2827 = load <2 x i64>, ptr %2737, align 1, !tbaa !34
  store <2 x i64> %2827, ptr %2826, align 1, !tbaa !34
  %2828 = load ptr, ptr %2259, align 8, !tbaa !50
  br label %2829

2829:                                             ; preds = %2825, %2813
  %2830 = phi ptr [ %2736, %2813 ], [ %2828, %2825 ]
  %2831 = getelementptr inbounds nuw i8, ptr %2830, i64 4
  store i16 0, ptr %2831, align 4, !tbaa !55
  store i32 1, ptr %2830, align 4, !tbaa !57
  %2832 = add i64 %2814, 1
  %2833 = icmp ugt i64 %2832, 65535
  br i1 %2833, label %2834, label %2841, !prof !58

2834:                                             ; preds = %2829
  store i32 2, ptr %2258, align 8, !tbaa !52
  %2835 = load ptr, ptr %1, align 8, !tbaa !53
  %2836 = ptrtoint ptr %2830 to i64
  %2837 = ptrtoint ptr %2835 to i64
  %2838 = sub i64 %2836, %2837
  %2839 = lshr exact i64 %2838, 3
  %2840 = trunc i64 %2839 to i32
  store i32 %2840, ptr %2260, align 4, !tbaa !54
  br label %2841

2841:                                             ; preds = %2834, %2829
  %2842 = trunc i64 %2832 to i16
  %2843 = getelementptr inbounds nuw i8, ptr %2830, i64 6
  store i16 %2842, ptr %2843, align 2, !tbaa !59
  %2844 = getelementptr inbounds nuw i8, ptr %2830, i64 8
  store ptr %2844, ptr %2259, align 8, !tbaa !50
  %2845 = icmp ugt ptr %2823, %39
  br i1 %2845, label %2846, label %2735

2846:                                             ; preds = %2841, %2735, %2716, %2710
  %2847 = phi i32 [ 0, %2716 ], [ %2462, %2710 ], [ %2739, %2735 ], [ %2738, %2841 ]
  %2848 = phi i32 [ %2466, %2716 ], [ %2466, %2710 ], [ %2738, %2735 ], [ %2739, %2841 ]
  %2849 = phi ptr [ %2714, %2716 ], [ %2714, %2710 ], [ %2737, %2735 ], [ %2823, %2841 ]
  %2850 = getelementptr inbounds nuw i8, ptr %2849, i64 %17
  %2851 = getelementptr inbounds nuw i8, ptr %2850, i64 1
  %2852 = icmp ult ptr %2851, %39
  br i1 %2852, label %2261, label %4656

2853:                                             ; preds = %2246
  br i1 %62, label %2854, label %4656

2854:                                             ; preds = %2853
  %2855 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %2856 = load i32, ptr %2855, align 4, !tbaa !21
  %2857 = sub i32 64, %2856
  %2858 = zext nneg i32 %2857 to i64
  %2859 = getelementptr inbounds i8, ptr %38, i64 -7
  %2860 = getelementptr inbounds i8, ptr %38, i64 -3
  %2861 = getelementptr inbounds i8, ptr %38, i64 -1
  %2862 = getelementptr inbounds i8, ptr %38, i64 -32
  %2863 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %2864 = ptrtoint ptr %2862 to i64
  %2865 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %2866 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %2867 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %2868

2868:                                             ; preds = %3447, %2854
  %2869 = phi ptr [ %61, %2854 ], [ %3452, %3447 ]
  %2870 = phi ptr [ %60, %2854 ], [ %3451, %3447 ]
  %2871 = phi ptr [ %3, %2854 ], [ %3450, %3447 ]
  %2872 = phi ptr [ %45, %2854 ], [ %3450, %3447 ]
  %2873 = phi i32 [ %58, %2854 ], [ %3449, %3447 ]
  %2874 = phi i32 [ %56, %2854 ], [ %3448, %3447 ]
  %2875 = freeze i32 %2873
  %2876 = getelementptr inbounds nuw i8, ptr %2872, i64 1
  %2877 = getelementptr inbounds nuw i8, ptr %2872, i64 128
  %2878 = load i64, ptr %2872, align 1, !tbaa !22
  %2879 = mul i64 %2878, -3523014627271114752
  %2880 = lshr i64 %2879, %2858
  %2881 = load i64, ptr %2876, align 1, !tbaa !22
  %2882 = getelementptr inbounds nuw i32, ptr %12, i64 %2880
  %2883 = load i32, ptr %2882, align 4, !tbaa !23
  %2884 = zext i32 %2875 to i64
  %2885 = sub nsw i64 0, %2884
  %2886 = icmp eq i32 %2875, 0
  br i1 %2886, label %2887, label %2942

2887:                                             ; preds = %2868, %2938
  %2888 = phi i64 [ %2915, %2938 ], [ %2880, %2868 ]
  %2889 = phi i64 [ %2929, %2938 ], [ %2881, %2868 ]
  %2890 = phi i32 [ %2928, %2938 ], [ %2883, %2868 ]
  %2891 = phi i64 [ %2939, %2938 ], [ %17, %2868 ]
  %2892 = phi ptr [ %2940, %2938 ], [ %2877, %2868 ]
  %2893 = phi ptr [ %2931, %2938 ], [ %2869, %2868 ]
  %2894 = phi ptr [ %2930, %2938 ], [ %2870, %2868 ]
  %2895 = phi ptr [ %2893, %2938 ], [ %2876, %2868 ]
  %2896 = phi ptr [ %2894, %2938 ], [ %2872, %2868 ]
  %2897 = mul i64 %2889, -3523014627271114752
  %2898 = lshr i64 %2897, %2858
  %2899 = ptrtoint ptr %2896 to i64
  %2900 = sub i64 %2899, %21
  %2901 = trunc i64 %2900 to i32
  %2902 = getelementptr inbounds nuw i32, ptr %12, i64 %2888
  store i32 %2901, ptr %2902, align 4, !tbaa !23
  %2903 = icmp ult i32 %2890, %35
  br i1 %2903, label %2910, label %2904

2904:                                             ; preds = %2887
  %2905 = zext i32 %2890 to i64
  %2906 = getelementptr inbounds nuw i8, ptr %19, i64 %2905
  %2907 = load i32, ptr %2906, align 1, !tbaa !23
  %2908 = load i32, ptr %2896, align 1, !tbaa !23
  %2909 = icmp eq i32 %2908, %2907
  br i1 %2909, label %3025, label %2910

2910:                                             ; preds = %2904, %2887
  %2911 = getelementptr inbounds nuw i32, ptr %12, i64 %2898
  %2912 = load i32, ptr %2911, align 4, !tbaa !23
  %2913 = load i64, ptr %2894, align 1, !tbaa !22
  %2914 = mul i64 %2913, -3523014627271114752
  %2915 = lshr i64 %2914, %2858
  %2916 = ptrtoint ptr %2895 to i64
  %2917 = sub i64 %2916, %21
  %2918 = trunc i64 %2917 to i32
  store i32 %2918, ptr %2911, align 4, !tbaa !23
  %2919 = icmp ult i32 %2912, %35
  br i1 %2919, label %2926, label %2920

2920:                                             ; preds = %2910
  %2921 = zext i32 %2912 to i64
  %2922 = getelementptr inbounds nuw i8, ptr %19, i64 %2921
  %2923 = load i32, ptr %2922, align 1, !tbaa !23
  %2924 = load i32, ptr %2895, align 1, !tbaa !23
  %2925 = icmp eq i32 %2924, %2923
  br i1 %2925, label %2986, label %2926

2926:                                             ; preds = %2920, %2910
  %2927 = getelementptr inbounds nuw i32, ptr %12, i64 %2915
  %2928 = load i32, ptr %2927, align 4, !tbaa !23
  %2929 = load i64, ptr %2893, align 1, !tbaa !22
  %2930 = getelementptr inbounds nuw i8, ptr %2894, i64 %2891
  %2931 = getelementptr inbounds nuw i8, ptr %2893, i64 %2891
  %2932 = icmp ult ptr %2930, %2892
  br i1 %2932, label %2938, label %2933

2933:                                             ; preds = %2926
  %2934 = add i64 %2891, 1
  %2935 = getelementptr inbounds nuw i8, ptr %2893, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %2935, i32 0, i32 3, i32 1)
  %2936 = getelementptr inbounds nuw i8, ptr %2893, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %2936, i32 0, i32 3, i32 1)
  %2937 = getelementptr inbounds nuw i8, ptr %2892, i64 128
  br label %2938

2938:                                             ; preds = %2933, %2926
  %2939 = phi i64 [ %2891, %2926 ], [ %2934, %2933 ]
  %2940 = phi ptr [ %2892, %2926 ], [ %2937, %2933 ]
  %2941 = icmp ult ptr %2931, %39
  br i1 %2941, label %2887, label %4656, !llvm.loop !35

2942:                                             ; preds = %2868, %3021
  %2943 = phi i64 [ %2975, %3021 ], [ %2880, %2868 ]
  %2944 = phi i64 [ %2997, %3021 ], [ %2881, %2868 ]
  %2945 = phi i32 [ %2996, %3021 ], [ %2883, %2868 ]
  %2946 = phi i64 [ %3022, %3021 ], [ %17, %2868 ]
  %2947 = phi ptr [ %3023, %3021 ], [ %2877, %2868 ]
  %2948 = phi ptr [ %2999, %3021 ], [ %2869, %2868 ]
  %2949 = phi ptr [ %2998, %3021 ], [ %2870, %2868 ]
  %2950 = phi ptr [ %2948, %3021 ], [ %2876, %2868 ]
  %2951 = phi ptr [ %2949, %3021 ], [ %2872, %2868 ]
  %2952 = mul i64 %2944, -3523014627271114752
  %2953 = lshr i64 %2952, %2858
  %2954 = getelementptr inbounds i8, ptr %2949, i64 %2885
  %2955 = load i32, ptr %2954, align 1, !tbaa !23
  %2956 = ptrtoint ptr %2951 to i64
  %2957 = sub i64 %2956, %21
  %2958 = trunc i64 %2957 to i32
  %2959 = getelementptr inbounds nuw i32, ptr %12, i64 %2943
  store i32 %2958, ptr %2959, align 4, !tbaa !23
  %2960 = load i32, ptr %2949, align 1, !tbaa !23
  %2961 = icmp eq i32 %2960, %2955
  br i1 %2961, label %3006, label %2962

2962:                                             ; preds = %2942
  %2963 = icmp ult i32 %2945, %35
  br i1 %2963, label %2970, label %2964

2964:                                             ; preds = %2962
  %2965 = zext i32 %2945 to i64
  %2966 = getelementptr inbounds nuw i8, ptr %19, i64 %2965
  %2967 = load i32, ptr %2966, align 1, !tbaa !23
  %2968 = load i32, ptr %2951, align 1, !tbaa !23
  %2969 = icmp eq i32 %2968, %2967
  br i1 %2969, label %3025, label %2970

2970:                                             ; preds = %2964, %2962
  %2971 = getelementptr inbounds nuw i32, ptr %12, i64 %2953
  %2972 = load i32, ptr %2971, align 4, !tbaa !23
  %2973 = load i64, ptr %2949, align 1, !tbaa !22
  %2974 = mul i64 %2973, -3523014627271114752
  %2975 = lshr i64 %2974, %2858
  %2976 = ptrtoint ptr %2950 to i64
  %2977 = sub i64 %2976, %21
  %2978 = trunc i64 %2977 to i32
  store i32 %2978, ptr %2971, align 4, !tbaa !23
  %2979 = icmp ult i32 %2972, %35
  br i1 %2979, label %2994, label %2980

2980:                                             ; preds = %2970
  %2981 = zext i32 %2972 to i64
  %2982 = getelementptr inbounds nuw i8, ptr %19, i64 %2981
  %2983 = load i32, ptr %2982, align 1, !tbaa !23
  %2984 = load i32, ptr %2950, align 1, !tbaa !23
  %2985 = icmp eq i32 %2984, %2983
  br i1 %2985, label %2986, label %2994

2986:                                             ; preds = %2980, %2920
  %2987 = phi i32 [ %2912, %2920 ], [ %2972, %2980 ]
  %2988 = phi i64 [ %2915, %2920 ], [ %2975, %2980 ]
  %2989 = phi i32 [ %2918, %2920 ], [ %2978, %2980 ]
  %2990 = phi i64 [ %2891, %2920 ], [ %2946, %2980 ]
  %2991 = phi ptr [ %2894, %2920 ], [ %2949, %2980 ]
  %2992 = phi ptr [ %2895, %2920 ], [ %2950, %2980 ]
  %2993 = icmp ult i64 %2990, 5
  br i1 %2993, label %3025, label %3035

2994:                                             ; preds = %2980, %2970
  %2995 = getelementptr inbounds nuw i32, ptr %12, i64 %2975
  %2996 = load i32, ptr %2995, align 4, !tbaa !23
  %2997 = load i64, ptr %2948, align 1, !tbaa !22
  %2998 = getelementptr inbounds nuw i8, ptr %2949, i64 %2946
  %2999 = getelementptr inbounds nuw i8, ptr %2948, i64 %2946
  %3000 = icmp ult ptr %2998, %2947
  br i1 %3000, label %3021, label %3001

3001:                                             ; preds = %2994
  %3002 = add i64 %2946, 1
  %3003 = getelementptr inbounds nuw i8, ptr %2948, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %3003, i32 0, i32 3, i32 1)
  %3004 = getelementptr inbounds nuw i8, ptr %2948, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %3004, i32 0, i32 3, i32 1)
  %3005 = getelementptr inbounds nuw i8, ptr %2947, i64 128
  br label %3021

3006:                                             ; preds = %2942
  %3007 = getelementptr inbounds i8, ptr %2949, i64 %2885
  %3008 = getelementptr inbounds i8, ptr %2949, i64 -1
  %3009 = load i8, ptr %3008, align 1, !tbaa !34
  %3010 = getelementptr inbounds i8, ptr %3007, i64 -1
  %3011 = load i8, ptr %3010, align 1, !tbaa !34
  %3012 = icmp eq i8 %3009, %3011
  %3013 = sext i1 %3012 to i64
  %3014 = getelementptr inbounds i8, ptr %2949, i64 %3013
  %3015 = getelementptr inbounds i8, ptr %3007, i64 %3013
  %3016 = select i1 %3012, i64 5, i64 4
  %3017 = ptrtoint ptr %2950 to i64
  %3018 = sub i64 %3017, %21
  %3019 = trunc i64 %3018 to i32
  %3020 = getelementptr inbounds nuw i32, ptr %12, i64 %2953
  store i32 %3019, ptr %3020, align 4, !tbaa !23
  br label %3063

3021:                                             ; preds = %3001, %2994
  %3022 = phi i64 [ %2946, %2994 ], [ %3002, %3001 ]
  %3023 = phi ptr [ %2947, %2994 ], [ %3005, %3001 ]
  %3024 = icmp ult ptr %2999, %39
  br i1 %3024, label %2942, label %4656, !llvm.loop !35

3025:                                             ; preds = %2964, %2904, %2986
  %3026 = phi ptr [ %2991, %2986 ], [ %2895, %2904 ], [ %2950, %2964 ]
  %3027 = phi i64 [ %2988, %2986 ], [ %2898, %2904 ], [ %2953, %2964 ]
  %3028 = phi i32 [ %2987, %2986 ], [ %2890, %2904 ], [ %2945, %2964 ]
  %3029 = phi i32 [ %2989, %2986 ], [ %2901, %2904 ], [ %2958, %2964 ]
  %3030 = phi ptr [ %2992, %2986 ], [ %2896, %2904 ], [ %2951, %2964 ]
  %3031 = ptrtoint ptr %3026 to i64
  %3032 = sub i64 %3031, %21
  %3033 = trunc i64 %3032 to i32
  %3034 = getelementptr inbounds nuw i32, ptr %12, i64 %3027
  store i32 %3033, ptr %3034, align 4, !tbaa !23
  br label %3035

3035:                                             ; preds = %3025, %2986
  %3036 = phi i32 [ %2987, %2986 ], [ %3028, %3025 ]
  %3037 = phi i32 [ %2989, %2986 ], [ %3029, %3025 ]
  %3038 = phi ptr [ %2992, %2986 ], [ %3030, %3025 ]
  %3039 = zext i32 %3036 to i64
  %3040 = getelementptr inbounds nuw i8, ptr %19, i64 %3039
  %3041 = ptrtoint ptr %3038 to i64
  %3042 = ptrtoint ptr %3040 to i64
  %3043 = sub i64 %3041, %3042
  %3044 = trunc i64 %3043 to i32
  %3045 = add i32 %3044, 3
  %3046 = icmp ugt ptr %3038, %2871
  %3047 = icmp ugt i32 %3036, %35
  %3048 = and i1 %3047, %3046
  br i1 %3048, label %3049, label %3063

3049:                                             ; preds = %3035, %3058
  %3050 = phi ptr [ %3053, %3058 ], [ %3038, %3035 ]
  %3051 = phi i64 [ %3059, %3058 ], [ 4, %3035 ]
  %3052 = phi ptr [ %3055, %3058 ], [ %3040, %3035 ]
  %3053 = getelementptr inbounds i8, ptr %3050, i64 -1
  %3054 = load i8, ptr %3053, align 1, !tbaa !34
  %3055 = getelementptr inbounds i8, ptr %3052, i64 -1
  %3056 = load i8, ptr %3055, align 1, !tbaa !34
  %3057 = icmp eq i8 %3054, %3056
  br i1 %3057, label %3058, label %3063

3058:                                             ; preds = %3049
  %3059 = add i64 %3051, 1
  %3060 = icmp ugt ptr %3053, %2871
  %3061 = icmp ugt ptr %3055, %37
  %3062 = and i1 %3060, %3061
  br i1 %3062, label %3049, label %3063, !llvm.loop !36

3063:                                             ; preds = %3058, %3049, %3035, %3006
  %3064 = phi i32 [ %2958, %3006 ], [ %3037, %3035 ], [ %3037, %3049 ], [ %3037, %3058 ]
  %3065 = phi i32 [ %2874, %3006 ], [ %2875, %3035 ], [ %2875, %3049 ], [ %2875, %3058 ]
  %3066 = phi i32 [ 1, %3006 ], [ %3045, %3035 ], [ %3045, %3049 ], [ %3045, %3058 ]
  %3067 = phi ptr [ %3015, %3006 ], [ %3040, %3035 ], [ %3055, %3058 ], [ %3052, %3049 ]
  %3068 = phi i64 [ %3016, %3006 ], [ 4, %3035 ], [ %3059, %3058 ], [ %3051, %3049 ]
  %3069 = phi i32 [ %2875, %3006 ], [ %3044, %3035 ], [ %3044, %3049 ], [ %3044, %3058 ]
  %3070 = phi ptr [ %3014, %3006 ], [ %3038, %3035 ], [ %3053, %3058 ], [ %3050, %3049 ]
  %3071 = getelementptr inbounds nuw i8, ptr %3070, i64 %3068
  %3072 = getelementptr inbounds nuw i8, ptr %3067, i64 %3068
  %3073 = icmp ult ptr %3071, %2859
  br i1 %3073, label %3074, label %3100

3074:                                             ; preds = %3063
  %3075 = load i64, ptr %3072, align 1, !tbaa !22
  %3076 = load i64, ptr %3071, align 1, !tbaa !22
  %3077 = icmp eq i64 %3075, %3076
  br i1 %3077, label %3082, label %3078

3078:                                             ; preds = %3074
  %3079 = xor i64 %3076, %3075
  %3080 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3079, i1 true)
  %3081 = lshr i64 %3080, 3
  br label %3137

3082:                                             ; preds = %3074, %3088
  %3083 = phi ptr [ %3086, %3088 ], [ %3072, %3074 ]
  %3084 = phi ptr [ %3085, %3088 ], [ %3071, %3074 ]
  %3085 = getelementptr inbounds nuw i8, ptr %3084, i64 8
  %3086 = getelementptr inbounds nuw i8, ptr %3083, i64 8
  %3087 = icmp ult ptr %3085, %2859
  br i1 %3087, label %3088, label %3100

3088:                                             ; preds = %3082
  %3089 = load i64, ptr %3086, align 1, !tbaa !22
  %3090 = load i64, ptr %3085, align 1, !tbaa !22
  %3091 = icmp eq i64 %3089, %3090
  br i1 %3091, label %3082, label %3092

3092:                                             ; preds = %3088
  %3093 = xor i64 %3090, %3089
  %3094 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3093, i1 true)
  %3095 = lshr i64 %3094, 3
  %3096 = getelementptr inbounds nuw i8, ptr %3085, i64 %3095
  %3097 = ptrtoint ptr %3096 to i64
  %3098 = ptrtoint ptr %3071 to i64
  %3099 = sub i64 %3097, %3098
  br label %3137

3100:                                             ; preds = %3082, %3063
  %3101 = phi ptr [ %3072, %3063 ], [ %3086, %3082 ]
  %3102 = phi ptr [ %3071, %3063 ], [ %3085, %3082 ]
  %3103 = icmp ult ptr %3102, %2860
  br i1 %3103, label %3104, label %3111

3104:                                             ; preds = %3100
  %3105 = load i32, ptr %3101, align 1, !tbaa !23
  %3106 = load i32, ptr %3102, align 1, !tbaa !23
  %3107 = icmp eq i32 %3105, %3106
  br i1 %3107, label %3108, label %3111

3108:                                             ; preds = %3104
  %3109 = getelementptr inbounds nuw i8, ptr %3102, i64 4
  %3110 = getelementptr inbounds nuw i8, ptr %3101, i64 4
  br label %3111

3111:                                             ; preds = %3108, %3104, %3100
  %3112 = phi ptr [ %3110, %3108 ], [ %3101, %3104 ], [ %3101, %3100 ]
  %3113 = phi ptr [ %3109, %3108 ], [ %3102, %3104 ], [ %3102, %3100 ]
  %3114 = icmp ult ptr %3113, %2861
  br i1 %3114, label %3115, label %3122

3115:                                             ; preds = %3111
  %3116 = load i16, ptr %3112, align 1, !tbaa !37
  %3117 = load i16, ptr %3113, align 1, !tbaa !37
  %3118 = icmp eq i16 %3116, %3117
  br i1 %3118, label %3119, label %3122

3119:                                             ; preds = %3115
  %3120 = getelementptr inbounds nuw i8, ptr %3113, i64 2
  %3121 = getelementptr inbounds nuw i8, ptr %3112, i64 2
  br label %3122

3122:                                             ; preds = %3119, %3115, %3111
  %3123 = phi ptr [ %3121, %3119 ], [ %3112, %3115 ], [ %3112, %3111 ]
  %3124 = phi ptr [ %3120, %3119 ], [ %3113, %3115 ], [ %3113, %3111 ]
  %3125 = icmp ult ptr %3124, %38
  br i1 %3125, label %3126, label %3132

3126:                                             ; preds = %3122
  %3127 = load i8, ptr %3123, align 1, !tbaa !34
  %3128 = load i8, ptr %3124, align 1, !tbaa !34
  %3129 = icmp eq i8 %3127, %3128
  %3130 = zext i1 %3129 to i64
  %3131 = getelementptr inbounds nuw i8, ptr %3124, i64 %3130
  br label %3132

3132:                                             ; preds = %3126, %3122
  %3133 = phi ptr [ %3124, %3122 ], [ %3131, %3126 ]
  %3134 = ptrtoint ptr %3133 to i64
  %3135 = ptrtoint ptr %3071 to i64
  %3136 = sub i64 %3134, %3135
  br label %3137

3137:                                             ; preds = %3132, %3092, %3078
  %3138 = phi i64 [ %3136, %3132 ], [ %3081, %3078 ], [ %3099, %3092 ]
  %3139 = add i64 %3138, %3068
  %3140 = ptrtoint ptr %3070 to i64
  %3141 = ptrtoint ptr %2871 to i64
  %3142 = sub i64 %3140, %3141
  %3143 = icmp ugt ptr %3070, %2862
  %3144 = load ptr, ptr %2863, align 8, !tbaa !39
  br i1 %3143, label %3168, label %3145

3145:                                             ; preds = %3137
  %3146 = load <2 x i64>, ptr %2871, align 1, !tbaa !34
  store <2 x i64> %3146, ptr %3144, align 1, !tbaa !34
  %3147 = icmp ugt i64 %3142, 16
  br i1 %3147, label %3148, label %3284

3148:                                             ; preds = %3145
  %3149 = load ptr, ptr %2863, align 8, !tbaa !39
  %3150 = getelementptr inbounds nuw i8, ptr %3149, i64 16
  %3151 = getelementptr inbounds nuw i8, ptr %2871, i64 16
  %3152 = add i64 %3142, -16
  %3153 = getelementptr i8, ptr %3149, i64 %3142
  %3154 = load <2 x i64>, ptr %3151, align 1, !tbaa !34
  store <2 x i64> %3154, ptr %3150, align 1, !tbaa !34
  %3155 = icmp ult i64 %3152, 17
  br i1 %3155, label %3284, label %3156

3156:                                             ; preds = %3148
  %3157 = getelementptr inbounds nuw i8, ptr %3149, i64 32
  br label %3158

3158:                                             ; preds = %3158, %3156
  %3159 = phi ptr [ %3157, %3156 ], [ %3166, %3158 ]
  %3160 = phi ptr [ %3151, %3156 ], [ %3164, %3158 ]
  %3161 = getelementptr inbounds nuw i8, ptr %3160, i64 16
  %3162 = load <2 x i64>, ptr %3161, align 1, !tbaa !34
  store <2 x i64> %3162, ptr %3159, align 1, !tbaa !34
  %3163 = getelementptr inbounds nuw i8, ptr %3159, i64 16
  %3164 = getelementptr inbounds nuw i8, ptr %3160, i64 32
  %3165 = load <2 x i64>, ptr %3164, align 1, !tbaa !34
  store <2 x i64> %3165, ptr %3163, align 1, !tbaa !34
  %3166 = getelementptr inbounds nuw i8, ptr %3159, i64 32
  %3167 = icmp ult ptr %3166, %3153
  br i1 %3167, label %3158, label %3288, !llvm.loop !42

3168:                                             ; preds = %3137
  %3169 = icmp ugt ptr %2871, %2862
  br i1 %3169, label %3187, label %3170

3170:                                             ; preds = %3168
  %3171 = sub i64 %2864, %3141
  %3172 = getelementptr inbounds i8, ptr %3144, i64 %3171
  %3173 = load <2 x i64>, ptr %2871, align 1, !tbaa !34
  store <2 x i64> %3173, ptr %3144, align 1, !tbaa !34
  %3174 = icmp ult i64 %3171, 17
  br i1 %3174, label %3187, label %3175

3175:                                             ; preds = %3170
  %3176 = getelementptr inbounds nuw i8, ptr %3144, i64 16
  br label %3177

3177:                                             ; preds = %3177, %3175
  %3178 = phi ptr [ %3176, %3175 ], [ %3185, %3177 ]
  %3179 = phi ptr [ %2871, %3175 ], [ %3183, %3177 ]
  %3180 = getelementptr inbounds nuw i8, ptr %3179, i64 16
  %3181 = load <2 x i64>, ptr %3180, align 1, !tbaa !34
  store <2 x i64> %3181, ptr %3178, align 1, !tbaa !34
  %3182 = getelementptr inbounds nuw i8, ptr %3178, i64 16
  %3183 = getelementptr inbounds nuw i8, ptr %3179, i64 32
  %3184 = load <2 x i64>, ptr %3183, align 1, !tbaa !34
  store <2 x i64> %3184, ptr %3182, align 1, !tbaa !34
  %3185 = getelementptr inbounds nuw i8, ptr %3178, i64 32
  %3186 = icmp ult ptr %3185, %3172
  br i1 %3186, label %3177, label %3187, !llvm.loop !42

3187:                                             ; preds = %3177, %3170, %3168
  %3188 = phi ptr [ %2862, %3170 ], [ %2871, %3168 ], [ %2862, %3177 ]
  %3189 = phi ptr [ %3172, %3170 ], [ %3144, %3168 ], [ %3172, %3177 ]
  %3190 = icmp ult ptr %3188, %3070
  br i1 %3190, label %3191, label %3288

3191:                                             ; preds = %3187
  %3192 = ptrtoint ptr %3188 to i64
  %3193 = ptrtoint ptr %3189 to i64
  %3194 = ptrtoint ptr %3188 to i64
  %3195 = sub i64 %3140, %3194
  %3196 = icmp ult i64 %3195, 4
  %3197 = sub i64 %3193, %3192
  %3198 = icmp ult i64 %3197, 32
  %3199 = select i1 %3196, i1 true, i1 %3198
  br i1 %3199, label %3235, label %3200

3200:                                             ; preds = %3191
  %3201 = icmp ult i64 %3195, 32
  br i1 %3201, label %3221, label %3202

3202:                                             ; preds = %3200
  %3203 = and i64 %3195, -32
  br label %3204

3204:                                             ; preds = %3204, %3202
  %3205 = phi i64 [ 0, %3202 ], [ %3212, %3204 ]
  %3206 = getelementptr i8, ptr %3189, i64 %3205
  %3207 = getelementptr i8, ptr %3188, i64 %3205
  %3208 = getelementptr i8, ptr %3207, i64 16
  %3209 = load <16 x i8>, ptr %3207, align 1, !tbaa !34
  %3210 = load <16 x i8>, ptr %3208, align 1, !tbaa !34
  %3211 = getelementptr i8, ptr %3206, i64 16
  store <16 x i8> %3209, ptr %3206, align 1, !tbaa !34
  store <16 x i8> %3210, ptr %3211, align 1, !tbaa !34
  %3212 = add nuw i64 %3205, 32
  %3213 = icmp eq i64 %3212, %3203
  br i1 %3213, label %3214, label %3204, !llvm.loop !76

3214:                                             ; preds = %3204
  %3215 = icmp eq i64 %3195, %3203
  br i1 %3215, label %3288, label %3216

3216:                                             ; preds = %3214
  %3217 = getelementptr i8, ptr %3189, i64 %3203
  %3218 = getelementptr i8, ptr %3188, i64 %3203
  %3219 = and i64 %3195, 28
  %3220 = icmp eq i64 %3219, 0
  br i1 %3220, label %3235, label %3221

3221:                                             ; preds = %3216, %3200
  %3222 = phi i64 [ %3203, %3216 ], [ 0, %3200 ]
  %3223 = and i64 %3195, -4
  %3224 = getelementptr i8, ptr %3189, i64 %3223
  %3225 = getelementptr i8, ptr %3188, i64 %3223
  br label %3226

3226:                                             ; preds = %3226, %3221
  %3227 = phi i64 [ %3222, %3221 ], [ %3231, %3226 ]
  %3228 = getelementptr i8, ptr %3189, i64 %3227
  %3229 = getelementptr i8, ptr %3188, i64 %3227
  %3230 = load <4 x i8>, ptr %3229, align 1, !tbaa !34
  store <4 x i8> %3230, ptr %3228, align 1, !tbaa !34
  %3231 = add nuw i64 %3227, 4
  %3232 = icmp eq i64 %3231, %3223
  br i1 %3232, label %3233, label %3226, !llvm.loop !77

3233:                                             ; preds = %3226
  %3234 = icmp eq i64 %3195, %3223
  br i1 %3234, label %3288, label %3235

3235:                                             ; preds = %3216, %3233, %3191
  %3236 = phi ptr [ %3189, %3191 ], [ %3217, %3216 ], [ %3224, %3233 ]
  %3237 = phi ptr [ %3188, %3191 ], [ %3218, %3216 ], [ %3225, %3233 ]
  %3238 = ptrtoint ptr %3237 to i64
  %3239 = sub i64 %3140, %3238
  %3240 = and i64 %3239, 7
  %3241 = icmp eq i64 %3240, 0
  br i1 %3241, label %3251, label %3242

3242:                                             ; preds = %3235, %3242
  %3243 = phi ptr [ %3248, %3242 ], [ %3236, %3235 ]
  %3244 = phi ptr [ %3246, %3242 ], [ %3237, %3235 ]
  %3245 = phi i64 [ %3249, %3242 ], [ 0, %3235 ]
  %3246 = getelementptr inbounds nuw i8, ptr %3244, i64 1
  %3247 = load i8, ptr %3244, align 1, !tbaa !34
  %3248 = getelementptr inbounds nuw i8, ptr %3243, i64 1
  store i8 %3247, ptr %3243, align 1, !tbaa !34
  %3249 = add i64 %3245, 1
  %3250 = icmp eq i64 %3249, %3240
  br i1 %3250, label %3251, label %3242, !llvm.loop !78

3251:                                             ; preds = %3242, %3235
  %3252 = phi ptr [ %3236, %3235 ], [ %3248, %3242 ]
  %3253 = phi ptr [ %3237, %3235 ], [ %3246, %3242 ]
  %3254 = sub i64 %3238, %3140
  %3255 = icmp ugt i64 %3254, -8
  br i1 %3255, label %3288, label %3256

3256:                                             ; preds = %3251, %3256
  %3257 = phi ptr [ %3282, %3256 ], [ %3252, %3251 ]
  %3258 = phi ptr [ %3280, %3256 ], [ %3253, %3251 ]
  %3259 = getelementptr inbounds nuw i8, ptr %3258, i64 1
  %3260 = load i8, ptr %3258, align 1, !tbaa !34
  %3261 = getelementptr inbounds nuw i8, ptr %3257, i64 1
  store i8 %3260, ptr %3257, align 1, !tbaa !34
  %3262 = getelementptr inbounds nuw i8, ptr %3258, i64 2
  %3263 = load i8, ptr %3259, align 1, !tbaa !34
  %3264 = getelementptr inbounds nuw i8, ptr %3257, i64 2
  store i8 %3263, ptr %3261, align 1, !tbaa !34
  %3265 = getelementptr inbounds nuw i8, ptr %3258, i64 3
  %3266 = load i8, ptr %3262, align 1, !tbaa !34
  %3267 = getelementptr inbounds nuw i8, ptr %3257, i64 3
  store i8 %3266, ptr %3264, align 1, !tbaa !34
  %3268 = getelementptr inbounds nuw i8, ptr %3258, i64 4
  %3269 = load i8, ptr %3265, align 1, !tbaa !34
  %3270 = getelementptr inbounds nuw i8, ptr %3257, i64 4
  store i8 %3269, ptr %3267, align 1, !tbaa !34
  %3271 = getelementptr inbounds nuw i8, ptr %3258, i64 5
  %3272 = load i8, ptr %3268, align 1, !tbaa !34
  %3273 = getelementptr inbounds nuw i8, ptr %3257, i64 5
  store i8 %3272, ptr %3270, align 1, !tbaa !34
  %3274 = getelementptr inbounds nuw i8, ptr %3258, i64 6
  %3275 = load i8, ptr %3271, align 1, !tbaa !34
  %3276 = getelementptr inbounds nuw i8, ptr %3257, i64 6
  store i8 %3275, ptr %3273, align 1, !tbaa !34
  %3277 = getelementptr inbounds nuw i8, ptr %3258, i64 7
  %3278 = load i8, ptr %3274, align 1, !tbaa !34
  %3279 = getelementptr inbounds nuw i8, ptr %3257, i64 7
  store i8 %3278, ptr %3276, align 1, !tbaa !34
  %3280 = getelementptr inbounds nuw i8, ptr %3258, i64 8
  %3281 = load i8, ptr %3277, align 1, !tbaa !34
  %3282 = getelementptr inbounds nuw i8, ptr %3257, i64 8
  store i8 %3281, ptr %3279, align 1, !tbaa !34
  %3283 = icmp eq ptr %3280, %3070
  br i1 %3283, label %3288, label %3256, !llvm.loop !79

3284:                                             ; preds = %3148, %3145
  %3285 = load ptr, ptr %2863, align 8, !tbaa !39
  %3286 = getelementptr inbounds nuw i8, ptr %3285, i64 %3142
  store ptr %3286, ptr %2863, align 8, !tbaa !39
  %3287 = load ptr, ptr %2866, align 8, !tbaa !50
  br label %3300

3288:                                             ; preds = %3158, %3251, %3256, %3214, %3233, %3187
  %3289 = load ptr, ptr %2863, align 8, !tbaa !39
  %3290 = getelementptr inbounds nuw i8, ptr %3289, i64 %3142
  store ptr %3290, ptr %2863, align 8, !tbaa !39
  %3291 = icmp ugt i64 %3142, 65535
  %3292 = load ptr, ptr %2866, align 8, !tbaa !50
  br i1 %3291, label %3293, label %3300, !prof !51

3293:                                             ; preds = %3288
  store i32 1, ptr %2865, align 8, !tbaa !52
  %3294 = load ptr, ptr %1, align 8, !tbaa !53
  %3295 = ptrtoint ptr %3292 to i64
  %3296 = ptrtoint ptr %3294 to i64
  %3297 = sub i64 %3295, %3296
  %3298 = lshr exact i64 %3297, 3
  %3299 = trunc i64 %3298 to i32
  store i32 %3299, ptr %2867, align 4, !tbaa !54
  br label %3300

3300:                                             ; preds = %3293, %3288, %3284
  %3301 = phi ptr [ %3287, %3284 ], [ %3292, %3293 ], [ %3292, %3288 ]
  %3302 = trunc i64 %3142 to i16
  %3303 = getelementptr inbounds nuw i8, ptr %3301, i64 4
  store i16 %3302, ptr %3303, align 4, !tbaa !55
  store i32 %3066, ptr %3301, align 4, !tbaa !57
  %3304 = add i64 %3139, -3
  %3305 = icmp ugt i64 %3304, 65535
  br i1 %3305, label %3306, label %3313, !prof !58

3306:                                             ; preds = %3300
  store i32 2, ptr %2865, align 8, !tbaa !52
  %3307 = load ptr, ptr %1, align 8, !tbaa !53
  %3308 = ptrtoint ptr %3301 to i64
  %3309 = ptrtoint ptr %3307 to i64
  %3310 = sub i64 %3308, %3309
  %3311 = lshr exact i64 %3310, 3
  %3312 = trunc i64 %3311 to i32
  store i32 %3312, ptr %2867, align 4, !tbaa !54
  br label %3313

3313:                                             ; preds = %3306, %3300
  %3314 = trunc i64 %3304 to i16
  %3315 = getelementptr inbounds nuw i8, ptr %3301, i64 6
  store i16 %3314, ptr %3315, align 2, !tbaa !59
  %3316 = getelementptr inbounds nuw i8, ptr %3301, i64 8
  store ptr %3316, ptr %2866, align 8, !tbaa !50
  %3317 = getelementptr inbounds nuw i8, ptr %3070, i64 %3139
  %3318 = icmp ugt ptr %3317, %39
  br i1 %3318, label %3447, label %3319

3319:                                             ; preds = %3313
  %3320 = add i32 %3064, 2
  %3321 = zext i32 %3064 to i64
  %3322 = getelementptr inbounds nuw i8, ptr %59, i64 %3321
  %3323 = load i64, ptr %3322, align 1, !tbaa !22
  %3324 = mul i64 %3323, -3523014627271114752
  %3325 = lshr i64 %3324, %2858
  %3326 = getelementptr inbounds nuw i32, ptr %12, i64 %3325
  store i32 %3320, ptr %3326, align 4, !tbaa !23
  %3327 = getelementptr inbounds i8, ptr %3317, i64 -2
  %3328 = ptrtoint ptr %3327 to i64
  %3329 = sub i64 %3328, %21
  %3330 = trunc i64 %3329 to i32
  %3331 = load i64, ptr %3327, align 1, !tbaa !22
  %3332 = mul i64 %3331, -3523014627271114752
  %3333 = lshr i64 %3332, %2858
  %3334 = getelementptr inbounds nuw i32, ptr %12, i64 %3333
  store i32 %3330, ptr %3334, align 4, !tbaa !23
  %3335 = icmp eq i32 %3065, 0
  br i1 %3335, label %3447, label %3336

3336:                                             ; preds = %3319, %3442
  %3337 = phi ptr [ %3445, %3442 ], [ %3316, %3319 ]
  %3338 = phi ptr [ %3424, %3442 ], [ %3317, %3319 ]
  %3339 = phi i32 [ %3340, %3442 ], [ %3069, %3319 ]
  %3340 = phi i32 [ %3339, %3442 ], [ %3065, %3319 ]
  %3341 = load i32, ptr %3338, align 1, !tbaa !23
  %3342 = zext i32 %3340 to i64
  %3343 = sub nsw i64 0, %3342
  %3344 = getelementptr inbounds i8, ptr %3338, i64 %3343
  %3345 = load i32, ptr %3344, align 1, !tbaa !23
  %3346 = icmp eq i32 %3341, %3345
  br i1 %3346, label %3347, label %3447

3347:                                             ; preds = %3336
  %3348 = getelementptr inbounds nuw i8, ptr %3338, i64 4
  %3349 = getelementptr inbounds i8, ptr %3348, i64 %3343
  %3350 = icmp ult ptr %3348, %2859
  br i1 %3350, label %3351, label %3377

3351:                                             ; preds = %3347
  %3352 = load i64, ptr %3349, align 1, !tbaa !22
  %3353 = load i64, ptr %3348, align 1, !tbaa !22
  %3354 = icmp eq i64 %3352, %3353
  br i1 %3354, label %3359, label %3355

3355:                                             ; preds = %3351
  %3356 = xor i64 %3353, %3352
  %3357 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3356, i1 true)
  %3358 = lshr i64 %3357, 3
  br label %3414

3359:                                             ; preds = %3351, %3365
  %3360 = phi ptr [ %3363, %3365 ], [ %3349, %3351 ]
  %3361 = phi ptr [ %3362, %3365 ], [ %3348, %3351 ]
  %3362 = getelementptr inbounds nuw i8, ptr %3361, i64 8
  %3363 = getelementptr inbounds nuw i8, ptr %3360, i64 8
  %3364 = icmp ult ptr %3362, %2859
  br i1 %3364, label %3365, label %3377

3365:                                             ; preds = %3359
  %3366 = load i64, ptr %3363, align 1, !tbaa !22
  %3367 = load i64, ptr %3362, align 1, !tbaa !22
  %3368 = icmp eq i64 %3366, %3367
  br i1 %3368, label %3359, label %3369

3369:                                             ; preds = %3365
  %3370 = xor i64 %3367, %3366
  %3371 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3370, i1 true)
  %3372 = lshr i64 %3371, 3
  %3373 = getelementptr inbounds nuw i8, ptr %3362, i64 %3372
  %3374 = ptrtoint ptr %3373 to i64
  %3375 = ptrtoint ptr %3348 to i64
  %3376 = sub i64 %3374, %3375
  br label %3414

3377:                                             ; preds = %3359, %3347
  %3378 = phi ptr [ %3349, %3347 ], [ %3363, %3359 ]
  %3379 = phi ptr [ %3348, %3347 ], [ %3362, %3359 ]
  %3380 = icmp ult ptr %3379, %2860
  br i1 %3380, label %3381, label %3388

3381:                                             ; preds = %3377
  %3382 = load i32, ptr %3378, align 1, !tbaa !23
  %3383 = load i32, ptr %3379, align 1, !tbaa !23
  %3384 = icmp eq i32 %3382, %3383
  br i1 %3384, label %3385, label %3388

3385:                                             ; preds = %3381
  %3386 = getelementptr inbounds nuw i8, ptr %3379, i64 4
  %3387 = getelementptr inbounds nuw i8, ptr %3378, i64 4
  br label %3388

3388:                                             ; preds = %3385, %3381, %3377
  %3389 = phi ptr [ %3387, %3385 ], [ %3378, %3381 ], [ %3378, %3377 ]
  %3390 = phi ptr [ %3386, %3385 ], [ %3379, %3381 ], [ %3379, %3377 ]
  %3391 = icmp ult ptr %3390, %2861
  br i1 %3391, label %3392, label %3399

3392:                                             ; preds = %3388
  %3393 = load i16, ptr %3389, align 1, !tbaa !37
  %3394 = load i16, ptr %3390, align 1, !tbaa !37
  %3395 = icmp eq i16 %3393, %3394
  br i1 %3395, label %3396, label %3399

3396:                                             ; preds = %3392
  %3397 = getelementptr inbounds nuw i8, ptr %3390, i64 2
  %3398 = getelementptr inbounds nuw i8, ptr %3389, i64 2
  br label %3399

3399:                                             ; preds = %3396, %3392, %3388
  %3400 = phi ptr [ %3398, %3396 ], [ %3389, %3392 ], [ %3389, %3388 ]
  %3401 = phi ptr [ %3397, %3396 ], [ %3390, %3392 ], [ %3390, %3388 ]
  %3402 = icmp ult ptr %3401, %38
  br i1 %3402, label %3403, label %3409

3403:                                             ; preds = %3399
  %3404 = load i8, ptr %3400, align 1, !tbaa !34
  %3405 = load i8, ptr %3401, align 1, !tbaa !34
  %3406 = icmp eq i8 %3404, %3405
  %3407 = zext i1 %3406 to i64
  %3408 = getelementptr inbounds nuw i8, ptr %3401, i64 %3407
  br label %3409

3409:                                             ; preds = %3403, %3399
  %3410 = phi ptr [ %3401, %3399 ], [ %3408, %3403 ]
  %3411 = ptrtoint ptr %3410 to i64
  %3412 = ptrtoint ptr %3348 to i64
  %3413 = sub i64 %3411, %3412
  br label %3414

3414:                                             ; preds = %3409, %3369, %3355
  %3415 = phi i64 [ %3413, %3409 ], [ %3358, %3355 ], [ %3376, %3369 ]
  %3416 = ptrtoint ptr %3338 to i64
  %3417 = sub i64 %3416, %21
  %3418 = trunc i64 %3417 to i32
  %3419 = load i64, ptr %3338, align 1, !tbaa !22
  %3420 = mul i64 %3419, -3523014627271114752
  %3421 = lshr i64 %3420, %2858
  %3422 = getelementptr inbounds nuw i32, ptr %12, i64 %3421
  store i32 %3418, ptr %3422, align 4, !tbaa !23
  %3423 = getelementptr i8, ptr %3338, i64 %3415
  %3424 = getelementptr i8, ptr %3423, i64 4
  %3425 = icmp ugt ptr %3338, %2862
  br i1 %3425, label %3430, label %3426

3426:                                             ; preds = %3414
  %3427 = load ptr, ptr %2863, align 8, !tbaa !39
  %3428 = load <2 x i64>, ptr %3338, align 1, !tbaa !34
  store <2 x i64> %3428, ptr %3427, align 1, !tbaa !34
  %3429 = load ptr, ptr %2866, align 8, !tbaa !50
  br label %3430

3430:                                             ; preds = %3426, %3414
  %3431 = phi ptr [ %3337, %3414 ], [ %3429, %3426 ]
  %3432 = getelementptr inbounds nuw i8, ptr %3431, i64 4
  store i16 0, ptr %3432, align 4, !tbaa !55
  store i32 1, ptr %3431, align 4, !tbaa !57
  %3433 = add i64 %3415, 1
  %3434 = icmp ugt i64 %3433, 65535
  br i1 %3434, label %3435, label %3442, !prof !58

3435:                                             ; preds = %3430
  store i32 2, ptr %2865, align 8, !tbaa !52
  %3436 = load ptr, ptr %1, align 8, !tbaa !53
  %3437 = ptrtoint ptr %3431 to i64
  %3438 = ptrtoint ptr %3436 to i64
  %3439 = sub i64 %3437, %3438
  %3440 = lshr exact i64 %3439, 3
  %3441 = trunc i64 %3440 to i32
  store i32 %3441, ptr %2867, align 4, !tbaa !54
  br label %3442

3442:                                             ; preds = %3435, %3430
  %3443 = trunc i64 %3433 to i16
  %3444 = getelementptr inbounds nuw i8, ptr %3431, i64 6
  store i16 %3443, ptr %3444, align 2, !tbaa !59
  %3445 = getelementptr inbounds nuw i8, ptr %3431, i64 8
  store ptr %3445, ptr %2866, align 8, !tbaa !50
  %3446 = icmp ugt ptr %3424, %39
  br i1 %3446, label %3447, label %3336

3447:                                             ; preds = %3442, %3336, %3319, %3313
  %3448 = phi i32 [ 0, %3319 ], [ %3065, %3313 ], [ %3340, %3336 ], [ %3339, %3442 ]
  %3449 = phi i32 [ %3069, %3319 ], [ %3069, %3313 ], [ %3339, %3336 ], [ %3340, %3442 ]
  %3450 = phi ptr [ %3317, %3319 ], [ %3317, %3313 ], [ %3338, %3336 ], [ %3424, %3442 ]
  %3451 = getelementptr inbounds nuw i8, ptr %3450, i64 %17
  %3452 = getelementptr inbounds nuw i8, ptr %3451, i64 1
  %3453 = icmp ult ptr %3452, %39
  br i1 %3453, label %2868, label %4656

3454:                                             ; preds = %2246
  br i1 %62, label %3455, label %4656

3455:                                             ; preds = %3454
  %3456 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %3457 = load i32, ptr %3456, align 4, !tbaa !21
  %3458 = sub i32 64, %3457
  %3459 = zext nneg i32 %3458 to i64
  %3460 = getelementptr inbounds i8, ptr %38, i64 -7
  %3461 = getelementptr inbounds i8, ptr %38, i64 -3
  %3462 = getelementptr inbounds i8, ptr %38, i64 -1
  %3463 = getelementptr inbounds i8, ptr %38, i64 -32
  %3464 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %3465 = ptrtoint ptr %3463 to i64
  %3466 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %3467 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3468 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %3469

3469:                                             ; preds = %4048, %3455
  %3470 = phi ptr [ %61, %3455 ], [ %4053, %4048 ]
  %3471 = phi ptr [ %60, %3455 ], [ %4052, %4048 ]
  %3472 = phi ptr [ %3, %3455 ], [ %4051, %4048 ]
  %3473 = phi ptr [ %45, %3455 ], [ %4051, %4048 ]
  %3474 = phi i32 [ %58, %3455 ], [ %4050, %4048 ]
  %3475 = phi i32 [ %56, %3455 ], [ %4049, %4048 ]
  %3476 = freeze i32 %3474
  %3477 = getelementptr inbounds nuw i8, ptr %3473, i64 1
  %3478 = getelementptr inbounds nuw i8, ptr %3473, i64 128
  %3479 = load i64, ptr %3473, align 1, !tbaa !22
  %3480 = mul i64 %3479, -3523014627193847808
  %3481 = lshr i64 %3480, %3459
  %3482 = load i64, ptr %3477, align 1, !tbaa !22
  %3483 = getelementptr inbounds nuw i32, ptr %12, i64 %3481
  %3484 = load i32, ptr %3483, align 4, !tbaa !23
  %3485 = zext i32 %3476 to i64
  %3486 = sub nsw i64 0, %3485
  %3487 = icmp eq i32 %3476, 0
  br i1 %3487, label %3488, label %3543

3488:                                             ; preds = %3469, %3539
  %3489 = phi i64 [ %3516, %3539 ], [ %3481, %3469 ]
  %3490 = phi i64 [ %3530, %3539 ], [ %3482, %3469 ]
  %3491 = phi i32 [ %3529, %3539 ], [ %3484, %3469 ]
  %3492 = phi i64 [ %3540, %3539 ], [ %17, %3469 ]
  %3493 = phi ptr [ %3541, %3539 ], [ %3478, %3469 ]
  %3494 = phi ptr [ %3532, %3539 ], [ %3470, %3469 ]
  %3495 = phi ptr [ %3531, %3539 ], [ %3471, %3469 ]
  %3496 = phi ptr [ %3494, %3539 ], [ %3477, %3469 ]
  %3497 = phi ptr [ %3495, %3539 ], [ %3473, %3469 ]
  %3498 = mul i64 %3490, -3523014627193847808
  %3499 = lshr i64 %3498, %3459
  %3500 = ptrtoint ptr %3497 to i64
  %3501 = sub i64 %3500, %21
  %3502 = trunc i64 %3501 to i32
  %3503 = getelementptr inbounds nuw i32, ptr %12, i64 %3489
  store i32 %3502, ptr %3503, align 4, !tbaa !23
  %3504 = icmp ult i32 %3491, %35
  br i1 %3504, label %3511, label %3505

3505:                                             ; preds = %3488
  %3506 = zext i32 %3491 to i64
  %3507 = getelementptr inbounds nuw i8, ptr %19, i64 %3506
  %3508 = load i32, ptr %3507, align 1, !tbaa !23
  %3509 = load i32, ptr %3497, align 1, !tbaa !23
  %3510 = icmp eq i32 %3509, %3508
  br i1 %3510, label %3626, label %3511

3511:                                             ; preds = %3505, %3488
  %3512 = getelementptr inbounds nuw i32, ptr %12, i64 %3499
  %3513 = load i32, ptr %3512, align 4, !tbaa !23
  %3514 = load i64, ptr %3495, align 1, !tbaa !22
  %3515 = mul i64 %3514, -3523014627193847808
  %3516 = lshr i64 %3515, %3459
  %3517 = ptrtoint ptr %3496 to i64
  %3518 = sub i64 %3517, %21
  %3519 = trunc i64 %3518 to i32
  store i32 %3519, ptr %3512, align 4, !tbaa !23
  %3520 = icmp ult i32 %3513, %35
  br i1 %3520, label %3527, label %3521

3521:                                             ; preds = %3511
  %3522 = zext i32 %3513 to i64
  %3523 = getelementptr inbounds nuw i8, ptr %19, i64 %3522
  %3524 = load i32, ptr %3523, align 1, !tbaa !23
  %3525 = load i32, ptr %3496, align 1, !tbaa !23
  %3526 = icmp eq i32 %3525, %3524
  br i1 %3526, label %3587, label %3527

3527:                                             ; preds = %3521, %3511
  %3528 = getelementptr inbounds nuw i32, ptr %12, i64 %3516
  %3529 = load i32, ptr %3528, align 4, !tbaa !23
  %3530 = load i64, ptr %3494, align 1, !tbaa !22
  %3531 = getelementptr inbounds nuw i8, ptr %3495, i64 %3492
  %3532 = getelementptr inbounds nuw i8, ptr %3494, i64 %3492
  %3533 = icmp ult ptr %3531, %3493
  br i1 %3533, label %3539, label %3534

3534:                                             ; preds = %3527
  %3535 = add i64 %3492, 1
  %3536 = getelementptr inbounds nuw i8, ptr %3494, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %3536, i32 0, i32 3, i32 1)
  %3537 = getelementptr inbounds nuw i8, ptr %3494, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %3537, i32 0, i32 3, i32 1)
  %3538 = getelementptr inbounds nuw i8, ptr %3493, i64 128
  br label %3539

3539:                                             ; preds = %3534, %3527
  %3540 = phi i64 [ %3492, %3527 ], [ %3535, %3534 ]
  %3541 = phi ptr [ %3493, %3527 ], [ %3538, %3534 ]
  %3542 = icmp ult ptr %3532, %39
  br i1 %3542, label %3488, label %4656, !llvm.loop !35

3543:                                             ; preds = %3469, %3622
  %3544 = phi i64 [ %3576, %3622 ], [ %3481, %3469 ]
  %3545 = phi i64 [ %3598, %3622 ], [ %3482, %3469 ]
  %3546 = phi i32 [ %3597, %3622 ], [ %3484, %3469 ]
  %3547 = phi i64 [ %3623, %3622 ], [ %17, %3469 ]
  %3548 = phi ptr [ %3624, %3622 ], [ %3478, %3469 ]
  %3549 = phi ptr [ %3600, %3622 ], [ %3470, %3469 ]
  %3550 = phi ptr [ %3599, %3622 ], [ %3471, %3469 ]
  %3551 = phi ptr [ %3549, %3622 ], [ %3477, %3469 ]
  %3552 = phi ptr [ %3550, %3622 ], [ %3473, %3469 ]
  %3553 = mul i64 %3545, -3523014627193847808
  %3554 = lshr i64 %3553, %3459
  %3555 = getelementptr inbounds i8, ptr %3550, i64 %3486
  %3556 = load i32, ptr %3555, align 1, !tbaa !23
  %3557 = ptrtoint ptr %3552 to i64
  %3558 = sub i64 %3557, %21
  %3559 = trunc i64 %3558 to i32
  %3560 = getelementptr inbounds nuw i32, ptr %12, i64 %3544
  store i32 %3559, ptr %3560, align 4, !tbaa !23
  %3561 = load i32, ptr %3550, align 1, !tbaa !23
  %3562 = icmp eq i32 %3561, %3556
  br i1 %3562, label %3607, label %3563

3563:                                             ; preds = %3543
  %3564 = icmp ult i32 %3546, %35
  br i1 %3564, label %3571, label %3565

3565:                                             ; preds = %3563
  %3566 = zext i32 %3546 to i64
  %3567 = getelementptr inbounds nuw i8, ptr %19, i64 %3566
  %3568 = load i32, ptr %3567, align 1, !tbaa !23
  %3569 = load i32, ptr %3552, align 1, !tbaa !23
  %3570 = icmp eq i32 %3569, %3568
  br i1 %3570, label %3626, label %3571

3571:                                             ; preds = %3565, %3563
  %3572 = getelementptr inbounds nuw i32, ptr %12, i64 %3554
  %3573 = load i32, ptr %3572, align 4, !tbaa !23
  %3574 = load i64, ptr %3550, align 1, !tbaa !22
  %3575 = mul i64 %3574, -3523014627193847808
  %3576 = lshr i64 %3575, %3459
  %3577 = ptrtoint ptr %3551 to i64
  %3578 = sub i64 %3577, %21
  %3579 = trunc i64 %3578 to i32
  store i32 %3579, ptr %3572, align 4, !tbaa !23
  %3580 = icmp ult i32 %3573, %35
  br i1 %3580, label %3595, label %3581

3581:                                             ; preds = %3571
  %3582 = zext i32 %3573 to i64
  %3583 = getelementptr inbounds nuw i8, ptr %19, i64 %3582
  %3584 = load i32, ptr %3583, align 1, !tbaa !23
  %3585 = load i32, ptr %3551, align 1, !tbaa !23
  %3586 = icmp eq i32 %3585, %3584
  br i1 %3586, label %3587, label %3595

3587:                                             ; preds = %3581, %3521
  %3588 = phi i32 [ %3513, %3521 ], [ %3573, %3581 ]
  %3589 = phi i64 [ %3516, %3521 ], [ %3576, %3581 ]
  %3590 = phi i32 [ %3519, %3521 ], [ %3579, %3581 ]
  %3591 = phi i64 [ %3492, %3521 ], [ %3547, %3581 ]
  %3592 = phi ptr [ %3495, %3521 ], [ %3550, %3581 ]
  %3593 = phi ptr [ %3496, %3521 ], [ %3551, %3581 ]
  %3594 = icmp ult i64 %3591, 5
  br i1 %3594, label %3626, label %3636

3595:                                             ; preds = %3581, %3571
  %3596 = getelementptr inbounds nuw i32, ptr %12, i64 %3576
  %3597 = load i32, ptr %3596, align 4, !tbaa !23
  %3598 = load i64, ptr %3549, align 1, !tbaa !22
  %3599 = getelementptr inbounds nuw i8, ptr %3550, i64 %3547
  %3600 = getelementptr inbounds nuw i8, ptr %3549, i64 %3547
  %3601 = icmp ult ptr %3599, %3548
  br i1 %3601, label %3622, label %3602

3602:                                             ; preds = %3595
  %3603 = add i64 %3547, 1
  %3604 = getelementptr inbounds nuw i8, ptr %3549, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %3604, i32 0, i32 3, i32 1)
  %3605 = getelementptr inbounds nuw i8, ptr %3549, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %3605, i32 0, i32 3, i32 1)
  %3606 = getelementptr inbounds nuw i8, ptr %3548, i64 128
  br label %3622

3607:                                             ; preds = %3543
  %3608 = getelementptr inbounds i8, ptr %3550, i64 %3486
  %3609 = getelementptr inbounds i8, ptr %3550, i64 -1
  %3610 = load i8, ptr %3609, align 1, !tbaa !34
  %3611 = getelementptr inbounds i8, ptr %3608, i64 -1
  %3612 = load i8, ptr %3611, align 1, !tbaa !34
  %3613 = icmp eq i8 %3610, %3612
  %3614 = sext i1 %3613 to i64
  %3615 = getelementptr inbounds i8, ptr %3550, i64 %3614
  %3616 = getelementptr inbounds i8, ptr %3608, i64 %3614
  %3617 = select i1 %3613, i64 5, i64 4
  %3618 = ptrtoint ptr %3551 to i64
  %3619 = sub i64 %3618, %21
  %3620 = trunc i64 %3619 to i32
  %3621 = getelementptr inbounds nuw i32, ptr %12, i64 %3554
  store i32 %3620, ptr %3621, align 4, !tbaa !23
  br label %3664

3622:                                             ; preds = %3602, %3595
  %3623 = phi i64 [ %3547, %3595 ], [ %3603, %3602 ]
  %3624 = phi ptr [ %3548, %3595 ], [ %3606, %3602 ]
  %3625 = icmp ult ptr %3600, %39
  br i1 %3625, label %3543, label %4656, !llvm.loop !35

3626:                                             ; preds = %3565, %3505, %3587
  %3627 = phi ptr [ %3592, %3587 ], [ %3496, %3505 ], [ %3551, %3565 ]
  %3628 = phi i64 [ %3589, %3587 ], [ %3499, %3505 ], [ %3554, %3565 ]
  %3629 = phi i32 [ %3588, %3587 ], [ %3491, %3505 ], [ %3546, %3565 ]
  %3630 = phi i32 [ %3590, %3587 ], [ %3502, %3505 ], [ %3559, %3565 ]
  %3631 = phi ptr [ %3593, %3587 ], [ %3497, %3505 ], [ %3552, %3565 ]
  %3632 = ptrtoint ptr %3627 to i64
  %3633 = sub i64 %3632, %21
  %3634 = trunc i64 %3633 to i32
  %3635 = getelementptr inbounds nuw i32, ptr %12, i64 %3628
  store i32 %3634, ptr %3635, align 4, !tbaa !23
  br label %3636

3636:                                             ; preds = %3626, %3587
  %3637 = phi i32 [ %3588, %3587 ], [ %3629, %3626 ]
  %3638 = phi i32 [ %3590, %3587 ], [ %3630, %3626 ]
  %3639 = phi ptr [ %3593, %3587 ], [ %3631, %3626 ]
  %3640 = zext i32 %3637 to i64
  %3641 = getelementptr inbounds nuw i8, ptr %19, i64 %3640
  %3642 = ptrtoint ptr %3639 to i64
  %3643 = ptrtoint ptr %3641 to i64
  %3644 = sub i64 %3642, %3643
  %3645 = trunc i64 %3644 to i32
  %3646 = add i32 %3645, 3
  %3647 = icmp ugt ptr %3639, %3472
  %3648 = icmp ugt i32 %3637, %35
  %3649 = and i1 %3648, %3647
  br i1 %3649, label %3650, label %3664

3650:                                             ; preds = %3636, %3659
  %3651 = phi ptr [ %3654, %3659 ], [ %3639, %3636 ]
  %3652 = phi i64 [ %3660, %3659 ], [ 4, %3636 ]
  %3653 = phi ptr [ %3656, %3659 ], [ %3641, %3636 ]
  %3654 = getelementptr inbounds i8, ptr %3651, i64 -1
  %3655 = load i8, ptr %3654, align 1, !tbaa !34
  %3656 = getelementptr inbounds i8, ptr %3653, i64 -1
  %3657 = load i8, ptr %3656, align 1, !tbaa !34
  %3658 = icmp eq i8 %3655, %3657
  br i1 %3658, label %3659, label %3664

3659:                                             ; preds = %3650
  %3660 = add i64 %3652, 1
  %3661 = icmp ugt ptr %3654, %3472
  %3662 = icmp ugt ptr %3656, %37
  %3663 = and i1 %3661, %3662
  br i1 %3663, label %3650, label %3664, !llvm.loop !36

3664:                                             ; preds = %3659, %3650, %3636, %3607
  %3665 = phi i32 [ %3559, %3607 ], [ %3638, %3636 ], [ %3638, %3650 ], [ %3638, %3659 ]
  %3666 = phi i32 [ %3475, %3607 ], [ %3476, %3636 ], [ %3476, %3650 ], [ %3476, %3659 ]
  %3667 = phi i32 [ 1, %3607 ], [ %3646, %3636 ], [ %3646, %3650 ], [ %3646, %3659 ]
  %3668 = phi ptr [ %3616, %3607 ], [ %3641, %3636 ], [ %3656, %3659 ], [ %3653, %3650 ]
  %3669 = phi i64 [ %3617, %3607 ], [ 4, %3636 ], [ %3660, %3659 ], [ %3652, %3650 ]
  %3670 = phi i32 [ %3476, %3607 ], [ %3645, %3636 ], [ %3645, %3650 ], [ %3645, %3659 ]
  %3671 = phi ptr [ %3615, %3607 ], [ %3639, %3636 ], [ %3654, %3659 ], [ %3651, %3650 ]
  %3672 = getelementptr inbounds nuw i8, ptr %3671, i64 %3669
  %3673 = getelementptr inbounds nuw i8, ptr %3668, i64 %3669
  %3674 = icmp ult ptr %3672, %3460
  br i1 %3674, label %3675, label %3701

3675:                                             ; preds = %3664
  %3676 = load i64, ptr %3673, align 1, !tbaa !22
  %3677 = load i64, ptr %3672, align 1, !tbaa !22
  %3678 = icmp eq i64 %3676, %3677
  br i1 %3678, label %3683, label %3679

3679:                                             ; preds = %3675
  %3680 = xor i64 %3677, %3676
  %3681 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3680, i1 true)
  %3682 = lshr i64 %3681, 3
  br label %3738

3683:                                             ; preds = %3675, %3689
  %3684 = phi ptr [ %3687, %3689 ], [ %3673, %3675 ]
  %3685 = phi ptr [ %3686, %3689 ], [ %3672, %3675 ]
  %3686 = getelementptr inbounds nuw i8, ptr %3685, i64 8
  %3687 = getelementptr inbounds nuw i8, ptr %3684, i64 8
  %3688 = icmp ult ptr %3686, %3460
  br i1 %3688, label %3689, label %3701

3689:                                             ; preds = %3683
  %3690 = load i64, ptr %3687, align 1, !tbaa !22
  %3691 = load i64, ptr %3686, align 1, !tbaa !22
  %3692 = icmp eq i64 %3690, %3691
  br i1 %3692, label %3683, label %3693

3693:                                             ; preds = %3689
  %3694 = xor i64 %3691, %3690
  %3695 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3694, i1 true)
  %3696 = lshr i64 %3695, 3
  %3697 = getelementptr inbounds nuw i8, ptr %3686, i64 %3696
  %3698 = ptrtoint ptr %3697 to i64
  %3699 = ptrtoint ptr %3672 to i64
  %3700 = sub i64 %3698, %3699
  br label %3738

3701:                                             ; preds = %3683, %3664
  %3702 = phi ptr [ %3673, %3664 ], [ %3687, %3683 ]
  %3703 = phi ptr [ %3672, %3664 ], [ %3686, %3683 ]
  %3704 = icmp ult ptr %3703, %3461
  br i1 %3704, label %3705, label %3712

3705:                                             ; preds = %3701
  %3706 = load i32, ptr %3702, align 1, !tbaa !23
  %3707 = load i32, ptr %3703, align 1, !tbaa !23
  %3708 = icmp eq i32 %3706, %3707
  br i1 %3708, label %3709, label %3712

3709:                                             ; preds = %3705
  %3710 = getelementptr inbounds nuw i8, ptr %3703, i64 4
  %3711 = getelementptr inbounds nuw i8, ptr %3702, i64 4
  br label %3712

3712:                                             ; preds = %3709, %3705, %3701
  %3713 = phi ptr [ %3711, %3709 ], [ %3702, %3705 ], [ %3702, %3701 ]
  %3714 = phi ptr [ %3710, %3709 ], [ %3703, %3705 ], [ %3703, %3701 ]
  %3715 = icmp ult ptr %3714, %3462
  br i1 %3715, label %3716, label %3723

3716:                                             ; preds = %3712
  %3717 = load i16, ptr %3713, align 1, !tbaa !37
  %3718 = load i16, ptr %3714, align 1, !tbaa !37
  %3719 = icmp eq i16 %3717, %3718
  br i1 %3719, label %3720, label %3723

3720:                                             ; preds = %3716
  %3721 = getelementptr inbounds nuw i8, ptr %3714, i64 2
  %3722 = getelementptr inbounds nuw i8, ptr %3713, i64 2
  br label %3723

3723:                                             ; preds = %3720, %3716, %3712
  %3724 = phi ptr [ %3722, %3720 ], [ %3713, %3716 ], [ %3713, %3712 ]
  %3725 = phi ptr [ %3721, %3720 ], [ %3714, %3716 ], [ %3714, %3712 ]
  %3726 = icmp ult ptr %3725, %38
  br i1 %3726, label %3727, label %3733

3727:                                             ; preds = %3723
  %3728 = load i8, ptr %3724, align 1, !tbaa !34
  %3729 = load i8, ptr %3725, align 1, !tbaa !34
  %3730 = icmp eq i8 %3728, %3729
  %3731 = zext i1 %3730 to i64
  %3732 = getelementptr inbounds nuw i8, ptr %3725, i64 %3731
  br label %3733

3733:                                             ; preds = %3727, %3723
  %3734 = phi ptr [ %3725, %3723 ], [ %3732, %3727 ]
  %3735 = ptrtoint ptr %3734 to i64
  %3736 = ptrtoint ptr %3672 to i64
  %3737 = sub i64 %3735, %3736
  br label %3738

3738:                                             ; preds = %3733, %3693, %3679
  %3739 = phi i64 [ %3737, %3733 ], [ %3682, %3679 ], [ %3700, %3693 ]
  %3740 = add i64 %3739, %3669
  %3741 = ptrtoint ptr %3671 to i64
  %3742 = ptrtoint ptr %3472 to i64
  %3743 = sub i64 %3741, %3742
  %3744 = icmp ugt ptr %3671, %3463
  %3745 = load ptr, ptr %3464, align 8, !tbaa !39
  br i1 %3744, label %3769, label %3746

3746:                                             ; preds = %3738
  %3747 = load <2 x i64>, ptr %3472, align 1, !tbaa !34
  store <2 x i64> %3747, ptr %3745, align 1, !tbaa !34
  %3748 = icmp ugt i64 %3743, 16
  br i1 %3748, label %3749, label %3885

3749:                                             ; preds = %3746
  %3750 = load ptr, ptr %3464, align 8, !tbaa !39
  %3751 = getelementptr inbounds nuw i8, ptr %3750, i64 16
  %3752 = getelementptr inbounds nuw i8, ptr %3472, i64 16
  %3753 = add i64 %3743, -16
  %3754 = getelementptr i8, ptr %3750, i64 %3743
  %3755 = load <2 x i64>, ptr %3752, align 1, !tbaa !34
  store <2 x i64> %3755, ptr %3751, align 1, !tbaa !34
  %3756 = icmp ult i64 %3753, 17
  br i1 %3756, label %3885, label %3757

3757:                                             ; preds = %3749
  %3758 = getelementptr inbounds nuw i8, ptr %3750, i64 32
  br label %3759

3759:                                             ; preds = %3759, %3757
  %3760 = phi ptr [ %3758, %3757 ], [ %3767, %3759 ]
  %3761 = phi ptr [ %3752, %3757 ], [ %3765, %3759 ]
  %3762 = getelementptr inbounds nuw i8, ptr %3761, i64 16
  %3763 = load <2 x i64>, ptr %3762, align 1, !tbaa !34
  store <2 x i64> %3763, ptr %3760, align 1, !tbaa !34
  %3764 = getelementptr inbounds nuw i8, ptr %3760, i64 16
  %3765 = getelementptr inbounds nuw i8, ptr %3761, i64 32
  %3766 = load <2 x i64>, ptr %3765, align 1, !tbaa !34
  store <2 x i64> %3766, ptr %3764, align 1, !tbaa !34
  %3767 = getelementptr inbounds nuw i8, ptr %3760, i64 32
  %3768 = icmp ult ptr %3767, %3754
  br i1 %3768, label %3759, label %3889, !llvm.loop !42

3769:                                             ; preds = %3738
  %3770 = icmp ugt ptr %3472, %3463
  br i1 %3770, label %3788, label %3771

3771:                                             ; preds = %3769
  %3772 = sub i64 %3465, %3742
  %3773 = getelementptr inbounds i8, ptr %3745, i64 %3772
  %3774 = load <2 x i64>, ptr %3472, align 1, !tbaa !34
  store <2 x i64> %3774, ptr %3745, align 1, !tbaa !34
  %3775 = icmp ult i64 %3772, 17
  br i1 %3775, label %3788, label %3776

3776:                                             ; preds = %3771
  %3777 = getelementptr inbounds nuw i8, ptr %3745, i64 16
  br label %3778

3778:                                             ; preds = %3778, %3776
  %3779 = phi ptr [ %3777, %3776 ], [ %3786, %3778 ]
  %3780 = phi ptr [ %3472, %3776 ], [ %3784, %3778 ]
  %3781 = getelementptr inbounds nuw i8, ptr %3780, i64 16
  %3782 = load <2 x i64>, ptr %3781, align 1, !tbaa !34
  store <2 x i64> %3782, ptr %3779, align 1, !tbaa !34
  %3783 = getelementptr inbounds nuw i8, ptr %3779, i64 16
  %3784 = getelementptr inbounds nuw i8, ptr %3780, i64 32
  %3785 = load <2 x i64>, ptr %3784, align 1, !tbaa !34
  store <2 x i64> %3785, ptr %3783, align 1, !tbaa !34
  %3786 = getelementptr inbounds nuw i8, ptr %3779, i64 32
  %3787 = icmp ult ptr %3786, %3773
  br i1 %3787, label %3778, label %3788, !llvm.loop !42

3788:                                             ; preds = %3778, %3771, %3769
  %3789 = phi ptr [ %3463, %3771 ], [ %3472, %3769 ], [ %3463, %3778 ]
  %3790 = phi ptr [ %3773, %3771 ], [ %3745, %3769 ], [ %3773, %3778 ]
  %3791 = icmp ult ptr %3789, %3671
  br i1 %3791, label %3792, label %3889

3792:                                             ; preds = %3788
  %3793 = ptrtoint ptr %3789 to i64
  %3794 = ptrtoint ptr %3790 to i64
  %3795 = ptrtoint ptr %3789 to i64
  %3796 = sub i64 %3741, %3795
  %3797 = icmp ult i64 %3796, 4
  %3798 = sub i64 %3794, %3793
  %3799 = icmp ult i64 %3798, 32
  %3800 = select i1 %3797, i1 true, i1 %3799
  br i1 %3800, label %3836, label %3801

3801:                                             ; preds = %3792
  %3802 = icmp ult i64 %3796, 32
  br i1 %3802, label %3822, label %3803

3803:                                             ; preds = %3801
  %3804 = and i64 %3796, -32
  br label %3805

3805:                                             ; preds = %3805, %3803
  %3806 = phi i64 [ 0, %3803 ], [ %3813, %3805 ]
  %3807 = getelementptr i8, ptr %3790, i64 %3806
  %3808 = getelementptr i8, ptr %3789, i64 %3806
  %3809 = getelementptr i8, ptr %3808, i64 16
  %3810 = load <16 x i8>, ptr %3808, align 1, !tbaa !34
  %3811 = load <16 x i8>, ptr %3809, align 1, !tbaa !34
  %3812 = getelementptr i8, ptr %3807, i64 16
  store <16 x i8> %3810, ptr %3807, align 1, !tbaa !34
  store <16 x i8> %3811, ptr %3812, align 1, !tbaa !34
  %3813 = add nuw i64 %3806, 32
  %3814 = icmp eq i64 %3813, %3804
  br i1 %3814, label %3815, label %3805, !llvm.loop !80

3815:                                             ; preds = %3805
  %3816 = icmp eq i64 %3796, %3804
  br i1 %3816, label %3889, label %3817

3817:                                             ; preds = %3815
  %3818 = getelementptr i8, ptr %3790, i64 %3804
  %3819 = getelementptr i8, ptr %3789, i64 %3804
  %3820 = and i64 %3796, 28
  %3821 = icmp eq i64 %3820, 0
  br i1 %3821, label %3836, label %3822

3822:                                             ; preds = %3817, %3801
  %3823 = phi i64 [ %3804, %3817 ], [ 0, %3801 ]
  %3824 = and i64 %3796, -4
  %3825 = getelementptr i8, ptr %3790, i64 %3824
  %3826 = getelementptr i8, ptr %3789, i64 %3824
  br label %3827

3827:                                             ; preds = %3827, %3822
  %3828 = phi i64 [ %3823, %3822 ], [ %3832, %3827 ]
  %3829 = getelementptr i8, ptr %3790, i64 %3828
  %3830 = getelementptr i8, ptr %3789, i64 %3828
  %3831 = load <4 x i8>, ptr %3830, align 1, !tbaa !34
  store <4 x i8> %3831, ptr %3829, align 1, !tbaa !34
  %3832 = add nuw i64 %3828, 4
  %3833 = icmp eq i64 %3832, %3824
  br i1 %3833, label %3834, label %3827, !llvm.loop !81

3834:                                             ; preds = %3827
  %3835 = icmp eq i64 %3796, %3824
  br i1 %3835, label %3889, label %3836

3836:                                             ; preds = %3817, %3834, %3792
  %3837 = phi ptr [ %3790, %3792 ], [ %3818, %3817 ], [ %3825, %3834 ]
  %3838 = phi ptr [ %3789, %3792 ], [ %3819, %3817 ], [ %3826, %3834 ]
  %3839 = ptrtoint ptr %3838 to i64
  %3840 = sub i64 %3741, %3839
  %3841 = and i64 %3840, 7
  %3842 = icmp eq i64 %3841, 0
  br i1 %3842, label %3852, label %3843

3843:                                             ; preds = %3836, %3843
  %3844 = phi ptr [ %3849, %3843 ], [ %3837, %3836 ]
  %3845 = phi ptr [ %3847, %3843 ], [ %3838, %3836 ]
  %3846 = phi i64 [ %3850, %3843 ], [ 0, %3836 ]
  %3847 = getelementptr inbounds nuw i8, ptr %3845, i64 1
  %3848 = load i8, ptr %3845, align 1, !tbaa !34
  %3849 = getelementptr inbounds nuw i8, ptr %3844, i64 1
  store i8 %3848, ptr %3844, align 1, !tbaa !34
  %3850 = add i64 %3846, 1
  %3851 = icmp eq i64 %3850, %3841
  br i1 %3851, label %3852, label %3843, !llvm.loop !82

3852:                                             ; preds = %3843, %3836
  %3853 = phi ptr [ %3837, %3836 ], [ %3849, %3843 ]
  %3854 = phi ptr [ %3838, %3836 ], [ %3847, %3843 ]
  %3855 = sub i64 %3839, %3741
  %3856 = icmp ugt i64 %3855, -8
  br i1 %3856, label %3889, label %3857

3857:                                             ; preds = %3852, %3857
  %3858 = phi ptr [ %3883, %3857 ], [ %3853, %3852 ]
  %3859 = phi ptr [ %3881, %3857 ], [ %3854, %3852 ]
  %3860 = getelementptr inbounds nuw i8, ptr %3859, i64 1
  %3861 = load i8, ptr %3859, align 1, !tbaa !34
  %3862 = getelementptr inbounds nuw i8, ptr %3858, i64 1
  store i8 %3861, ptr %3858, align 1, !tbaa !34
  %3863 = getelementptr inbounds nuw i8, ptr %3859, i64 2
  %3864 = load i8, ptr %3860, align 1, !tbaa !34
  %3865 = getelementptr inbounds nuw i8, ptr %3858, i64 2
  store i8 %3864, ptr %3862, align 1, !tbaa !34
  %3866 = getelementptr inbounds nuw i8, ptr %3859, i64 3
  %3867 = load i8, ptr %3863, align 1, !tbaa !34
  %3868 = getelementptr inbounds nuw i8, ptr %3858, i64 3
  store i8 %3867, ptr %3865, align 1, !tbaa !34
  %3869 = getelementptr inbounds nuw i8, ptr %3859, i64 4
  %3870 = load i8, ptr %3866, align 1, !tbaa !34
  %3871 = getelementptr inbounds nuw i8, ptr %3858, i64 4
  store i8 %3870, ptr %3868, align 1, !tbaa !34
  %3872 = getelementptr inbounds nuw i8, ptr %3859, i64 5
  %3873 = load i8, ptr %3869, align 1, !tbaa !34
  %3874 = getelementptr inbounds nuw i8, ptr %3858, i64 5
  store i8 %3873, ptr %3871, align 1, !tbaa !34
  %3875 = getelementptr inbounds nuw i8, ptr %3859, i64 6
  %3876 = load i8, ptr %3872, align 1, !tbaa !34
  %3877 = getelementptr inbounds nuw i8, ptr %3858, i64 6
  store i8 %3876, ptr %3874, align 1, !tbaa !34
  %3878 = getelementptr inbounds nuw i8, ptr %3859, i64 7
  %3879 = load i8, ptr %3875, align 1, !tbaa !34
  %3880 = getelementptr inbounds nuw i8, ptr %3858, i64 7
  store i8 %3879, ptr %3877, align 1, !tbaa !34
  %3881 = getelementptr inbounds nuw i8, ptr %3859, i64 8
  %3882 = load i8, ptr %3878, align 1, !tbaa !34
  %3883 = getelementptr inbounds nuw i8, ptr %3858, i64 8
  store i8 %3882, ptr %3880, align 1, !tbaa !34
  %3884 = icmp eq ptr %3881, %3671
  br i1 %3884, label %3889, label %3857, !llvm.loop !83

3885:                                             ; preds = %3749, %3746
  %3886 = load ptr, ptr %3464, align 8, !tbaa !39
  %3887 = getelementptr inbounds nuw i8, ptr %3886, i64 %3743
  store ptr %3887, ptr %3464, align 8, !tbaa !39
  %3888 = load ptr, ptr %3467, align 8, !tbaa !50
  br label %3901

3889:                                             ; preds = %3759, %3852, %3857, %3815, %3834, %3788
  %3890 = load ptr, ptr %3464, align 8, !tbaa !39
  %3891 = getelementptr inbounds nuw i8, ptr %3890, i64 %3743
  store ptr %3891, ptr %3464, align 8, !tbaa !39
  %3892 = icmp ugt i64 %3743, 65535
  %3893 = load ptr, ptr %3467, align 8, !tbaa !50
  br i1 %3892, label %3894, label %3901, !prof !51

3894:                                             ; preds = %3889
  store i32 1, ptr %3466, align 8, !tbaa !52
  %3895 = load ptr, ptr %1, align 8, !tbaa !53
  %3896 = ptrtoint ptr %3893 to i64
  %3897 = ptrtoint ptr %3895 to i64
  %3898 = sub i64 %3896, %3897
  %3899 = lshr exact i64 %3898, 3
  %3900 = trunc i64 %3899 to i32
  store i32 %3900, ptr %3468, align 4, !tbaa !54
  br label %3901

3901:                                             ; preds = %3894, %3889, %3885
  %3902 = phi ptr [ %3888, %3885 ], [ %3893, %3894 ], [ %3893, %3889 ]
  %3903 = trunc i64 %3743 to i16
  %3904 = getelementptr inbounds nuw i8, ptr %3902, i64 4
  store i16 %3903, ptr %3904, align 4, !tbaa !55
  store i32 %3667, ptr %3902, align 4, !tbaa !57
  %3905 = add i64 %3740, -3
  %3906 = icmp ugt i64 %3905, 65535
  br i1 %3906, label %3907, label %3914, !prof !58

3907:                                             ; preds = %3901
  store i32 2, ptr %3466, align 8, !tbaa !52
  %3908 = load ptr, ptr %1, align 8, !tbaa !53
  %3909 = ptrtoint ptr %3902 to i64
  %3910 = ptrtoint ptr %3908 to i64
  %3911 = sub i64 %3909, %3910
  %3912 = lshr exact i64 %3911, 3
  %3913 = trunc i64 %3912 to i32
  store i32 %3913, ptr %3468, align 4, !tbaa !54
  br label %3914

3914:                                             ; preds = %3907, %3901
  %3915 = trunc i64 %3905 to i16
  %3916 = getelementptr inbounds nuw i8, ptr %3902, i64 6
  store i16 %3915, ptr %3916, align 2, !tbaa !59
  %3917 = getelementptr inbounds nuw i8, ptr %3902, i64 8
  store ptr %3917, ptr %3467, align 8, !tbaa !50
  %3918 = getelementptr inbounds nuw i8, ptr %3671, i64 %3740
  %3919 = icmp ugt ptr %3918, %39
  br i1 %3919, label %4048, label %3920

3920:                                             ; preds = %3914
  %3921 = add i32 %3665, 2
  %3922 = zext i32 %3665 to i64
  %3923 = getelementptr inbounds nuw i8, ptr %59, i64 %3922
  %3924 = load i64, ptr %3923, align 1, !tbaa !22
  %3925 = mul i64 %3924, -3523014627193847808
  %3926 = lshr i64 %3925, %3459
  %3927 = getelementptr inbounds nuw i32, ptr %12, i64 %3926
  store i32 %3921, ptr %3927, align 4, !tbaa !23
  %3928 = getelementptr inbounds i8, ptr %3918, i64 -2
  %3929 = ptrtoint ptr %3928 to i64
  %3930 = sub i64 %3929, %21
  %3931 = trunc i64 %3930 to i32
  %3932 = load i64, ptr %3928, align 1, !tbaa !22
  %3933 = mul i64 %3932, -3523014627193847808
  %3934 = lshr i64 %3933, %3459
  %3935 = getelementptr inbounds nuw i32, ptr %12, i64 %3934
  store i32 %3931, ptr %3935, align 4, !tbaa !23
  %3936 = icmp eq i32 %3666, 0
  br i1 %3936, label %4048, label %3937

3937:                                             ; preds = %3920, %4043
  %3938 = phi ptr [ %4046, %4043 ], [ %3917, %3920 ]
  %3939 = phi ptr [ %4025, %4043 ], [ %3918, %3920 ]
  %3940 = phi i32 [ %3941, %4043 ], [ %3670, %3920 ]
  %3941 = phi i32 [ %3940, %4043 ], [ %3666, %3920 ]
  %3942 = load i32, ptr %3939, align 1, !tbaa !23
  %3943 = zext i32 %3941 to i64
  %3944 = sub nsw i64 0, %3943
  %3945 = getelementptr inbounds i8, ptr %3939, i64 %3944
  %3946 = load i32, ptr %3945, align 1, !tbaa !23
  %3947 = icmp eq i32 %3942, %3946
  br i1 %3947, label %3948, label %4048

3948:                                             ; preds = %3937
  %3949 = getelementptr inbounds nuw i8, ptr %3939, i64 4
  %3950 = getelementptr inbounds i8, ptr %3949, i64 %3944
  %3951 = icmp ult ptr %3949, %3460
  br i1 %3951, label %3952, label %3978

3952:                                             ; preds = %3948
  %3953 = load i64, ptr %3950, align 1, !tbaa !22
  %3954 = load i64, ptr %3949, align 1, !tbaa !22
  %3955 = icmp eq i64 %3953, %3954
  br i1 %3955, label %3960, label %3956

3956:                                             ; preds = %3952
  %3957 = xor i64 %3954, %3953
  %3958 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3957, i1 true)
  %3959 = lshr i64 %3958, 3
  br label %4015

3960:                                             ; preds = %3952, %3966
  %3961 = phi ptr [ %3964, %3966 ], [ %3950, %3952 ]
  %3962 = phi ptr [ %3963, %3966 ], [ %3949, %3952 ]
  %3963 = getelementptr inbounds nuw i8, ptr %3962, i64 8
  %3964 = getelementptr inbounds nuw i8, ptr %3961, i64 8
  %3965 = icmp ult ptr %3963, %3460
  br i1 %3965, label %3966, label %3978

3966:                                             ; preds = %3960
  %3967 = load i64, ptr %3964, align 1, !tbaa !22
  %3968 = load i64, ptr %3963, align 1, !tbaa !22
  %3969 = icmp eq i64 %3967, %3968
  br i1 %3969, label %3960, label %3970

3970:                                             ; preds = %3966
  %3971 = xor i64 %3968, %3967
  %3972 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3971, i1 true)
  %3973 = lshr i64 %3972, 3
  %3974 = getelementptr inbounds nuw i8, ptr %3963, i64 %3973
  %3975 = ptrtoint ptr %3974 to i64
  %3976 = ptrtoint ptr %3949 to i64
  %3977 = sub i64 %3975, %3976
  br label %4015

3978:                                             ; preds = %3960, %3948
  %3979 = phi ptr [ %3950, %3948 ], [ %3964, %3960 ]
  %3980 = phi ptr [ %3949, %3948 ], [ %3963, %3960 ]
  %3981 = icmp ult ptr %3980, %3461
  br i1 %3981, label %3982, label %3989

3982:                                             ; preds = %3978
  %3983 = load i32, ptr %3979, align 1, !tbaa !23
  %3984 = load i32, ptr %3980, align 1, !tbaa !23
  %3985 = icmp eq i32 %3983, %3984
  br i1 %3985, label %3986, label %3989

3986:                                             ; preds = %3982
  %3987 = getelementptr inbounds nuw i8, ptr %3980, i64 4
  %3988 = getelementptr inbounds nuw i8, ptr %3979, i64 4
  br label %3989

3989:                                             ; preds = %3986, %3982, %3978
  %3990 = phi ptr [ %3988, %3986 ], [ %3979, %3982 ], [ %3979, %3978 ]
  %3991 = phi ptr [ %3987, %3986 ], [ %3980, %3982 ], [ %3980, %3978 ]
  %3992 = icmp ult ptr %3991, %3462
  br i1 %3992, label %3993, label %4000

3993:                                             ; preds = %3989
  %3994 = load i16, ptr %3990, align 1, !tbaa !37
  %3995 = load i16, ptr %3991, align 1, !tbaa !37
  %3996 = icmp eq i16 %3994, %3995
  br i1 %3996, label %3997, label %4000

3997:                                             ; preds = %3993
  %3998 = getelementptr inbounds nuw i8, ptr %3991, i64 2
  %3999 = getelementptr inbounds nuw i8, ptr %3990, i64 2
  br label %4000

4000:                                             ; preds = %3997, %3993, %3989
  %4001 = phi ptr [ %3999, %3997 ], [ %3990, %3993 ], [ %3990, %3989 ]
  %4002 = phi ptr [ %3998, %3997 ], [ %3991, %3993 ], [ %3991, %3989 ]
  %4003 = icmp ult ptr %4002, %38
  br i1 %4003, label %4004, label %4010

4004:                                             ; preds = %4000
  %4005 = load i8, ptr %4001, align 1, !tbaa !34
  %4006 = load i8, ptr %4002, align 1, !tbaa !34
  %4007 = icmp eq i8 %4005, %4006
  %4008 = zext i1 %4007 to i64
  %4009 = getelementptr inbounds nuw i8, ptr %4002, i64 %4008
  br label %4010

4010:                                             ; preds = %4004, %4000
  %4011 = phi ptr [ %4002, %4000 ], [ %4009, %4004 ]
  %4012 = ptrtoint ptr %4011 to i64
  %4013 = ptrtoint ptr %3949 to i64
  %4014 = sub i64 %4012, %4013
  br label %4015

4015:                                             ; preds = %4010, %3970, %3956
  %4016 = phi i64 [ %4014, %4010 ], [ %3959, %3956 ], [ %3977, %3970 ]
  %4017 = ptrtoint ptr %3939 to i64
  %4018 = sub i64 %4017, %21
  %4019 = trunc i64 %4018 to i32
  %4020 = load i64, ptr %3939, align 1, !tbaa !22
  %4021 = mul i64 %4020, -3523014627193847808
  %4022 = lshr i64 %4021, %3459
  %4023 = getelementptr inbounds nuw i32, ptr %12, i64 %4022
  store i32 %4019, ptr %4023, align 4, !tbaa !23
  %4024 = getelementptr i8, ptr %3939, i64 %4016
  %4025 = getelementptr i8, ptr %4024, i64 4
  %4026 = icmp ugt ptr %3939, %3463
  br i1 %4026, label %4031, label %4027

4027:                                             ; preds = %4015
  %4028 = load ptr, ptr %3464, align 8, !tbaa !39
  %4029 = load <2 x i64>, ptr %3939, align 1, !tbaa !34
  store <2 x i64> %4029, ptr %4028, align 1, !tbaa !34
  %4030 = load ptr, ptr %3467, align 8, !tbaa !50
  br label %4031

4031:                                             ; preds = %4027, %4015
  %4032 = phi ptr [ %3938, %4015 ], [ %4030, %4027 ]
  %4033 = getelementptr inbounds nuw i8, ptr %4032, i64 4
  store i16 0, ptr %4033, align 4, !tbaa !55
  store i32 1, ptr %4032, align 4, !tbaa !57
  %4034 = add i64 %4016, 1
  %4035 = icmp ugt i64 %4034, 65535
  br i1 %4035, label %4036, label %4043, !prof !58

4036:                                             ; preds = %4031
  store i32 2, ptr %3466, align 8, !tbaa !52
  %4037 = load ptr, ptr %1, align 8, !tbaa !53
  %4038 = ptrtoint ptr %4032 to i64
  %4039 = ptrtoint ptr %4037 to i64
  %4040 = sub i64 %4038, %4039
  %4041 = lshr exact i64 %4040, 3
  %4042 = trunc i64 %4041 to i32
  store i32 %4042, ptr %3468, align 4, !tbaa !54
  br label %4043

4043:                                             ; preds = %4036, %4031
  %4044 = trunc i64 %4034 to i16
  %4045 = getelementptr inbounds nuw i8, ptr %4032, i64 6
  store i16 %4044, ptr %4045, align 2, !tbaa !59
  %4046 = getelementptr inbounds nuw i8, ptr %4032, i64 8
  store ptr %4046, ptr %3467, align 8, !tbaa !50
  %4047 = icmp ugt ptr %4025, %39
  br i1 %4047, label %4048, label %3937

4048:                                             ; preds = %4043, %3937, %3920, %3914
  %4049 = phi i32 [ 0, %3920 ], [ %3666, %3914 ], [ %3941, %3937 ], [ %3940, %4043 ]
  %4050 = phi i32 [ %3670, %3920 ], [ %3670, %3914 ], [ %3940, %3937 ], [ %3941, %4043 ]
  %4051 = phi ptr [ %3918, %3920 ], [ %3918, %3914 ], [ %3939, %3937 ], [ %4025, %4043 ]
  %4052 = getelementptr inbounds nuw i8, ptr %4051, i64 %17
  %4053 = getelementptr inbounds nuw i8, ptr %4052, i64 1
  %4054 = icmp ult ptr %4053, %39
  br i1 %4054, label %3469, label %4656

4055:                                             ; preds = %2246
  br i1 %62, label %4056, label %4656

4056:                                             ; preds = %4055
  %4057 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %4058 = load i32, ptr %4057, align 4, !tbaa !21
  %4059 = sub i32 64, %4058
  %4060 = zext nneg i32 %4059 to i64
  %4061 = getelementptr inbounds i8, ptr %38, i64 -7
  %4062 = getelementptr inbounds i8, ptr %38, i64 -3
  %4063 = getelementptr inbounds i8, ptr %38, i64 -1
  %4064 = getelementptr inbounds i8, ptr %38, i64 -32
  %4065 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %4066 = ptrtoint ptr %4064 to i64
  %4067 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %4068 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %4069 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %4070

4070:                                             ; preds = %4649, %4056
  %4071 = phi ptr [ %61, %4056 ], [ %4654, %4649 ]
  %4072 = phi ptr [ %60, %4056 ], [ %4653, %4649 ]
  %4073 = phi ptr [ %3, %4056 ], [ %4652, %4649 ]
  %4074 = phi ptr [ %45, %4056 ], [ %4652, %4649 ]
  %4075 = phi i32 [ %58, %4056 ], [ %4651, %4649 ]
  %4076 = phi i32 [ %56, %4056 ], [ %4650, %4649 ]
  %4077 = freeze i32 %4075
  %4078 = getelementptr inbounds nuw i8, ptr %4074, i64 1
  %4079 = getelementptr inbounds nuw i8, ptr %4074, i64 128
  %4080 = load i64, ptr %4074, align 1, !tbaa !22
  %4081 = mul i64 %4080, -3523014627193167104
  %4082 = lshr i64 %4081, %4060
  %4083 = load i64, ptr %4078, align 1, !tbaa !22
  %4084 = getelementptr inbounds nuw i32, ptr %12, i64 %4082
  %4085 = load i32, ptr %4084, align 4, !tbaa !23
  %4086 = zext i32 %4077 to i64
  %4087 = sub nsw i64 0, %4086
  %4088 = icmp eq i32 %4077, 0
  br i1 %4088, label %4089, label %4144

4089:                                             ; preds = %4070, %4140
  %4090 = phi i64 [ %4117, %4140 ], [ %4082, %4070 ]
  %4091 = phi i64 [ %4131, %4140 ], [ %4083, %4070 ]
  %4092 = phi i32 [ %4130, %4140 ], [ %4085, %4070 ]
  %4093 = phi i64 [ %4141, %4140 ], [ %17, %4070 ]
  %4094 = phi ptr [ %4142, %4140 ], [ %4079, %4070 ]
  %4095 = phi ptr [ %4133, %4140 ], [ %4071, %4070 ]
  %4096 = phi ptr [ %4132, %4140 ], [ %4072, %4070 ]
  %4097 = phi ptr [ %4095, %4140 ], [ %4078, %4070 ]
  %4098 = phi ptr [ %4096, %4140 ], [ %4074, %4070 ]
  %4099 = mul i64 %4091, -3523014627193167104
  %4100 = lshr i64 %4099, %4060
  %4101 = ptrtoint ptr %4098 to i64
  %4102 = sub i64 %4101, %21
  %4103 = trunc i64 %4102 to i32
  %4104 = getelementptr inbounds nuw i32, ptr %12, i64 %4090
  store i32 %4103, ptr %4104, align 4, !tbaa !23
  %4105 = icmp ult i32 %4092, %35
  br i1 %4105, label %4112, label %4106

4106:                                             ; preds = %4089
  %4107 = zext i32 %4092 to i64
  %4108 = getelementptr inbounds nuw i8, ptr %19, i64 %4107
  %4109 = load i32, ptr %4108, align 1, !tbaa !23
  %4110 = load i32, ptr %4098, align 1, !tbaa !23
  %4111 = icmp eq i32 %4110, %4109
  br i1 %4111, label %4227, label %4112

4112:                                             ; preds = %4106, %4089
  %4113 = getelementptr inbounds nuw i32, ptr %12, i64 %4100
  %4114 = load i32, ptr %4113, align 4, !tbaa !23
  %4115 = load i64, ptr %4096, align 1, !tbaa !22
  %4116 = mul i64 %4115, -3523014627193167104
  %4117 = lshr i64 %4116, %4060
  %4118 = ptrtoint ptr %4097 to i64
  %4119 = sub i64 %4118, %21
  %4120 = trunc i64 %4119 to i32
  store i32 %4120, ptr %4113, align 4, !tbaa !23
  %4121 = icmp ult i32 %4114, %35
  br i1 %4121, label %4128, label %4122

4122:                                             ; preds = %4112
  %4123 = zext i32 %4114 to i64
  %4124 = getelementptr inbounds nuw i8, ptr %19, i64 %4123
  %4125 = load i32, ptr %4124, align 1, !tbaa !23
  %4126 = load i32, ptr %4097, align 1, !tbaa !23
  %4127 = icmp eq i32 %4126, %4125
  br i1 %4127, label %4188, label %4128

4128:                                             ; preds = %4122, %4112
  %4129 = getelementptr inbounds nuw i32, ptr %12, i64 %4117
  %4130 = load i32, ptr %4129, align 4, !tbaa !23
  %4131 = load i64, ptr %4095, align 1, !tbaa !22
  %4132 = getelementptr inbounds nuw i8, ptr %4096, i64 %4093
  %4133 = getelementptr inbounds nuw i8, ptr %4095, i64 %4093
  %4134 = icmp ult ptr %4132, %4094
  br i1 %4134, label %4140, label %4135

4135:                                             ; preds = %4128
  %4136 = add i64 %4093, 1
  %4137 = getelementptr inbounds nuw i8, ptr %4095, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %4137, i32 0, i32 3, i32 1)
  %4138 = getelementptr inbounds nuw i8, ptr %4095, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %4138, i32 0, i32 3, i32 1)
  %4139 = getelementptr inbounds nuw i8, ptr %4094, i64 128
  br label %4140

4140:                                             ; preds = %4135, %4128
  %4141 = phi i64 [ %4093, %4128 ], [ %4136, %4135 ]
  %4142 = phi ptr [ %4094, %4128 ], [ %4139, %4135 ]
  %4143 = icmp ult ptr %4133, %39
  br i1 %4143, label %4089, label %4656, !llvm.loop !35

4144:                                             ; preds = %4070, %4223
  %4145 = phi i64 [ %4177, %4223 ], [ %4082, %4070 ]
  %4146 = phi i64 [ %4199, %4223 ], [ %4083, %4070 ]
  %4147 = phi i32 [ %4198, %4223 ], [ %4085, %4070 ]
  %4148 = phi i64 [ %4224, %4223 ], [ %17, %4070 ]
  %4149 = phi ptr [ %4225, %4223 ], [ %4079, %4070 ]
  %4150 = phi ptr [ %4201, %4223 ], [ %4071, %4070 ]
  %4151 = phi ptr [ %4200, %4223 ], [ %4072, %4070 ]
  %4152 = phi ptr [ %4150, %4223 ], [ %4078, %4070 ]
  %4153 = phi ptr [ %4151, %4223 ], [ %4074, %4070 ]
  %4154 = mul i64 %4146, -3523014627193167104
  %4155 = lshr i64 %4154, %4060
  %4156 = getelementptr inbounds i8, ptr %4151, i64 %4087
  %4157 = load i32, ptr %4156, align 1, !tbaa !23
  %4158 = ptrtoint ptr %4153 to i64
  %4159 = sub i64 %4158, %21
  %4160 = trunc i64 %4159 to i32
  %4161 = getelementptr inbounds nuw i32, ptr %12, i64 %4145
  store i32 %4160, ptr %4161, align 4, !tbaa !23
  %4162 = load i32, ptr %4151, align 1, !tbaa !23
  %4163 = icmp eq i32 %4162, %4157
  br i1 %4163, label %4208, label %4164

4164:                                             ; preds = %4144
  %4165 = icmp ult i32 %4147, %35
  br i1 %4165, label %4172, label %4166

4166:                                             ; preds = %4164
  %4167 = zext i32 %4147 to i64
  %4168 = getelementptr inbounds nuw i8, ptr %19, i64 %4167
  %4169 = load i32, ptr %4168, align 1, !tbaa !23
  %4170 = load i32, ptr %4153, align 1, !tbaa !23
  %4171 = icmp eq i32 %4170, %4169
  br i1 %4171, label %4227, label %4172

4172:                                             ; preds = %4166, %4164
  %4173 = getelementptr inbounds nuw i32, ptr %12, i64 %4155
  %4174 = load i32, ptr %4173, align 4, !tbaa !23
  %4175 = load i64, ptr %4151, align 1, !tbaa !22
  %4176 = mul i64 %4175, -3523014627193167104
  %4177 = lshr i64 %4176, %4060
  %4178 = ptrtoint ptr %4152 to i64
  %4179 = sub i64 %4178, %21
  %4180 = trunc i64 %4179 to i32
  store i32 %4180, ptr %4173, align 4, !tbaa !23
  %4181 = icmp ult i32 %4174, %35
  br i1 %4181, label %4196, label %4182

4182:                                             ; preds = %4172
  %4183 = zext i32 %4174 to i64
  %4184 = getelementptr inbounds nuw i8, ptr %19, i64 %4183
  %4185 = load i32, ptr %4184, align 1, !tbaa !23
  %4186 = load i32, ptr %4152, align 1, !tbaa !23
  %4187 = icmp eq i32 %4186, %4185
  br i1 %4187, label %4188, label %4196

4188:                                             ; preds = %4182, %4122
  %4189 = phi i32 [ %4114, %4122 ], [ %4174, %4182 ]
  %4190 = phi i64 [ %4117, %4122 ], [ %4177, %4182 ]
  %4191 = phi i32 [ %4120, %4122 ], [ %4180, %4182 ]
  %4192 = phi i64 [ %4093, %4122 ], [ %4148, %4182 ]
  %4193 = phi ptr [ %4096, %4122 ], [ %4151, %4182 ]
  %4194 = phi ptr [ %4097, %4122 ], [ %4152, %4182 ]
  %4195 = icmp ult i64 %4192, 5
  br i1 %4195, label %4227, label %4237

4196:                                             ; preds = %4182, %4172
  %4197 = getelementptr inbounds nuw i32, ptr %12, i64 %4177
  %4198 = load i32, ptr %4197, align 4, !tbaa !23
  %4199 = load i64, ptr %4150, align 1, !tbaa !22
  %4200 = getelementptr inbounds nuw i8, ptr %4151, i64 %4148
  %4201 = getelementptr inbounds nuw i8, ptr %4150, i64 %4148
  %4202 = icmp ult ptr %4200, %4149
  br i1 %4202, label %4223, label %4203

4203:                                             ; preds = %4196
  %4204 = add i64 %4148, 1
  %4205 = getelementptr inbounds nuw i8, ptr %4150, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %4205, i32 0, i32 3, i32 1)
  %4206 = getelementptr inbounds nuw i8, ptr %4150, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %4206, i32 0, i32 3, i32 1)
  %4207 = getelementptr inbounds nuw i8, ptr %4149, i64 128
  br label %4223

4208:                                             ; preds = %4144
  %4209 = getelementptr inbounds i8, ptr %4151, i64 %4087
  %4210 = getelementptr inbounds i8, ptr %4151, i64 -1
  %4211 = load i8, ptr %4210, align 1, !tbaa !34
  %4212 = getelementptr inbounds i8, ptr %4209, i64 -1
  %4213 = load i8, ptr %4212, align 1, !tbaa !34
  %4214 = icmp eq i8 %4211, %4213
  %4215 = sext i1 %4214 to i64
  %4216 = getelementptr inbounds i8, ptr %4151, i64 %4215
  %4217 = getelementptr inbounds i8, ptr %4209, i64 %4215
  %4218 = select i1 %4214, i64 5, i64 4
  %4219 = ptrtoint ptr %4152 to i64
  %4220 = sub i64 %4219, %21
  %4221 = trunc i64 %4220 to i32
  %4222 = getelementptr inbounds nuw i32, ptr %12, i64 %4155
  store i32 %4221, ptr %4222, align 4, !tbaa !23
  br label %4265

4223:                                             ; preds = %4203, %4196
  %4224 = phi i64 [ %4148, %4196 ], [ %4204, %4203 ]
  %4225 = phi ptr [ %4149, %4196 ], [ %4207, %4203 ]
  %4226 = icmp ult ptr %4201, %39
  br i1 %4226, label %4144, label %4656, !llvm.loop !35

4227:                                             ; preds = %4166, %4106, %4188
  %4228 = phi ptr [ %4193, %4188 ], [ %4097, %4106 ], [ %4152, %4166 ]
  %4229 = phi i64 [ %4190, %4188 ], [ %4100, %4106 ], [ %4155, %4166 ]
  %4230 = phi i32 [ %4189, %4188 ], [ %4092, %4106 ], [ %4147, %4166 ]
  %4231 = phi i32 [ %4191, %4188 ], [ %4103, %4106 ], [ %4160, %4166 ]
  %4232 = phi ptr [ %4194, %4188 ], [ %4098, %4106 ], [ %4153, %4166 ]
  %4233 = ptrtoint ptr %4228 to i64
  %4234 = sub i64 %4233, %21
  %4235 = trunc i64 %4234 to i32
  %4236 = getelementptr inbounds nuw i32, ptr %12, i64 %4229
  store i32 %4235, ptr %4236, align 4, !tbaa !23
  br label %4237

4237:                                             ; preds = %4227, %4188
  %4238 = phi i32 [ %4189, %4188 ], [ %4230, %4227 ]
  %4239 = phi i32 [ %4191, %4188 ], [ %4231, %4227 ]
  %4240 = phi ptr [ %4194, %4188 ], [ %4232, %4227 ]
  %4241 = zext i32 %4238 to i64
  %4242 = getelementptr inbounds nuw i8, ptr %19, i64 %4241
  %4243 = ptrtoint ptr %4240 to i64
  %4244 = ptrtoint ptr %4242 to i64
  %4245 = sub i64 %4243, %4244
  %4246 = trunc i64 %4245 to i32
  %4247 = add i32 %4246, 3
  %4248 = icmp ugt ptr %4240, %4073
  %4249 = icmp ugt i32 %4238, %35
  %4250 = and i1 %4249, %4248
  br i1 %4250, label %4251, label %4265

4251:                                             ; preds = %4237, %4260
  %4252 = phi ptr [ %4255, %4260 ], [ %4240, %4237 ]
  %4253 = phi i64 [ %4261, %4260 ], [ 4, %4237 ]
  %4254 = phi ptr [ %4257, %4260 ], [ %4242, %4237 ]
  %4255 = getelementptr inbounds i8, ptr %4252, i64 -1
  %4256 = load i8, ptr %4255, align 1, !tbaa !34
  %4257 = getelementptr inbounds i8, ptr %4254, i64 -1
  %4258 = load i8, ptr %4257, align 1, !tbaa !34
  %4259 = icmp eq i8 %4256, %4258
  br i1 %4259, label %4260, label %4265

4260:                                             ; preds = %4251
  %4261 = add i64 %4253, 1
  %4262 = icmp ugt ptr %4255, %4073
  %4263 = icmp ugt ptr %4257, %37
  %4264 = and i1 %4262, %4263
  br i1 %4264, label %4251, label %4265, !llvm.loop !36

4265:                                             ; preds = %4260, %4251, %4237, %4208
  %4266 = phi i32 [ %4160, %4208 ], [ %4239, %4237 ], [ %4239, %4251 ], [ %4239, %4260 ]
  %4267 = phi i32 [ %4076, %4208 ], [ %4077, %4237 ], [ %4077, %4251 ], [ %4077, %4260 ]
  %4268 = phi i32 [ 1, %4208 ], [ %4247, %4237 ], [ %4247, %4251 ], [ %4247, %4260 ]
  %4269 = phi ptr [ %4217, %4208 ], [ %4242, %4237 ], [ %4257, %4260 ], [ %4254, %4251 ]
  %4270 = phi i64 [ %4218, %4208 ], [ 4, %4237 ], [ %4261, %4260 ], [ %4253, %4251 ]
  %4271 = phi i32 [ %4077, %4208 ], [ %4246, %4237 ], [ %4246, %4251 ], [ %4246, %4260 ]
  %4272 = phi ptr [ %4216, %4208 ], [ %4240, %4237 ], [ %4255, %4260 ], [ %4252, %4251 ]
  %4273 = getelementptr inbounds nuw i8, ptr %4272, i64 %4270
  %4274 = getelementptr inbounds nuw i8, ptr %4269, i64 %4270
  %4275 = icmp ult ptr %4273, %4061
  br i1 %4275, label %4276, label %4302

4276:                                             ; preds = %4265
  %4277 = load i64, ptr %4274, align 1, !tbaa !22
  %4278 = load i64, ptr %4273, align 1, !tbaa !22
  %4279 = icmp eq i64 %4277, %4278
  br i1 %4279, label %4284, label %4280

4280:                                             ; preds = %4276
  %4281 = xor i64 %4278, %4277
  %4282 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %4281, i1 true)
  %4283 = lshr i64 %4282, 3
  br label %4339

4284:                                             ; preds = %4276, %4290
  %4285 = phi ptr [ %4288, %4290 ], [ %4274, %4276 ]
  %4286 = phi ptr [ %4287, %4290 ], [ %4273, %4276 ]
  %4287 = getelementptr inbounds nuw i8, ptr %4286, i64 8
  %4288 = getelementptr inbounds nuw i8, ptr %4285, i64 8
  %4289 = icmp ult ptr %4287, %4061
  br i1 %4289, label %4290, label %4302

4290:                                             ; preds = %4284
  %4291 = load i64, ptr %4288, align 1, !tbaa !22
  %4292 = load i64, ptr %4287, align 1, !tbaa !22
  %4293 = icmp eq i64 %4291, %4292
  br i1 %4293, label %4284, label %4294

4294:                                             ; preds = %4290
  %4295 = xor i64 %4292, %4291
  %4296 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %4295, i1 true)
  %4297 = lshr i64 %4296, 3
  %4298 = getelementptr inbounds nuw i8, ptr %4287, i64 %4297
  %4299 = ptrtoint ptr %4298 to i64
  %4300 = ptrtoint ptr %4273 to i64
  %4301 = sub i64 %4299, %4300
  br label %4339

4302:                                             ; preds = %4284, %4265
  %4303 = phi ptr [ %4274, %4265 ], [ %4288, %4284 ]
  %4304 = phi ptr [ %4273, %4265 ], [ %4287, %4284 ]
  %4305 = icmp ult ptr %4304, %4062
  br i1 %4305, label %4306, label %4313

4306:                                             ; preds = %4302
  %4307 = load i32, ptr %4303, align 1, !tbaa !23
  %4308 = load i32, ptr %4304, align 1, !tbaa !23
  %4309 = icmp eq i32 %4307, %4308
  br i1 %4309, label %4310, label %4313

4310:                                             ; preds = %4306
  %4311 = getelementptr inbounds nuw i8, ptr %4304, i64 4
  %4312 = getelementptr inbounds nuw i8, ptr %4303, i64 4
  br label %4313

4313:                                             ; preds = %4310, %4306, %4302
  %4314 = phi ptr [ %4312, %4310 ], [ %4303, %4306 ], [ %4303, %4302 ]
  %4315 = phi ptr [ %4311, %4310 ], [ %4304, %4306 ], [ %4304, %4302 ]
  %4316 = icmp ult ptr %4315, %4063
  br i1 %4316, label %4317, label %4324

4317:                                             ; preds = %4313
  %4318 = load i16, ptr %4314, align 1, !tbaa !37
  %4319 = load i16, ptr %4315, align 1, !tbaa !37
  %4320 = icmp eq i16 %4318, %4319
  br i1 %4320, label %4321, label %4324

4321:                                             ; preds = %4317
  %4322 = getelementptr inbounds nuw i8, ptr %4315, i64 2
  %4323 = getelementptr inbounds nuw i8, ptr %4314, i64 2
  br label %4324

4324:                                             ; preds = %4321, %4317, %4313
  %4325 = phi ptr [ %4323, %4321 ], [ %4314, %4317 ], [ %4314, %4313 ]
  %4326 = phi ptr [ %4322, %4321 ], [ %4315, %4317 ], [ %4315, %4313 ]
  %4327 = icmp ult ptr %4326, %38
  br i1 %4327, label %4328, label %4334

4328:                                             ; preds = %4324
  %4329 = load i8, ptr %4325, align 1, !tbaa !34
  %4330 = load i8, ptr %4326, align 1, !tbaa !34
  %4331 = icmp eq i8 %4329, %4330
  %4332 = zext i1 %4331 to i64
  %4333 = getelementptr inbounds nuw i8, ptr %4326, i64 %4332
  br label %4334

4334:                                             ; preds = %4328, %4324
  %4335 = phi ptr [ %4326, %4324 ], [ %4333, %4328 ]
  %4336 = ptrtoint ptr %4335 to i64
  %4337 = ptrtoint ptr %4273 to i64
  %4338 = sub i64 %4336, %4337
  br label %4339

4339:                                             ; preds = %4334, %4294, %4280
  %4340 = phi i64 [ %4338, %4334 ], [ %4283, %4280 ], [ %4301, %4294 ]
  %4341 = add i64 %4340, %4270
  %4342 = ptrtoint ptr %4272 to i64
  %4343 = ptrtoint ptr %4073 to i64
  %4344 = sub i64 %4342, %4343
  %4345 = icmp ugt ptr %4272, %4064
  %4346 = load ptr, ptr %4065, align 8, !tbaa !39
  br i1 %4345, label %4370, label %4347

4347:                                             ; preds = %4339
  %4348 = load <2 x i64>, ptr %4073, align 1, !tbaa !34
  store <2 x i64> %4348, ptr %4346, align 1, !tbaa !34
  %4349 = icmp ugt i64 %4344, 16
  br i1 %4349, label %4350, label %4486

4350:                                             ; preds = %4347
  %4351 = load ptr, ptr %4065, align 8, !tbaa !39
  %4352 = getelementptr inbounds nuw i8, ptr %4351, i64 16
  %4353 = getelementptr inbounds nuw i8, ptr %4073, i64 16
  %4354 = add i64 %4344, -16
  %4355 = getelementptr i8, ptr %4351, i64 %4344
  %4356 = load <2 x i64>, ptr %4353, align 1, !tbaa !34
  store <2 x i64> %4356, ptr %4352, align 1, !tbaa !34
  %4357 = icmp ult i64 %4354, 17
  br i1 %4357, label %4486, label %4358

4358:                                             ; preds = %4350
  %4359 = getelementptr inbounds nuw i8, ptr %4351, i64 32
  br label %4360

4360:                                             ; preds = %4360, %4358
  %4361 = phi ptr [ %4359, %4358 ], [ %4368, %4360 ]
  %4362 = phi ptr [ %4353, %4358 ], [ %4366, %4360 ]
  %4363 = getelementptr inbounds nuw i8, ptr %4362, i64 16
  %4364 = load <2 x i64>, ptr %4363, align 1, !tbaa !34
  store <2 x i64> %4364, ptr %4361, align 1, !tbaa !34
  %4365 = getelementptr inbounds nuw i8, ptr %4361, i64 16
  %4366 = getelementptr inbounds nuw i8, ptr %4362, i64 32
  %4367 = load <2 x i64>, ptr %4366, align 1, !tbaa !34
  store <2 x i64> %4367, ptr %4365, align 1, !tbaa !34
  %4368 = getelementptr inbounds nuw i8, ptr %4361, i64 32
  %4369 = icmp ult ptr %4368, %4355
  br i1 %4369, label %4360, label %4490, !llvm.loop !42

4370:                                             ; preds = %4339
  %4371 = icmp ugt ptr %4073, %4064
  br i1 %4371, label %4389, label %4372

4372:                                             ; preds = %4370
  %4373 = sub i64 %4066, %4343
  %4374 = getelementptr inbounds i8, ptr %4346, i64 %4373
  %4375 = load <2 x i64>, ptr %4073, align 1, !tbaa !34
  store <2 x i64> %4375, ptr %4346, align 1, !tbaa !34
  %4376 = icmp ult i64 %4373, 17
  br i1 %4376, label %4389, label %4377

4377:                                             ; preds = %4372
  %4378 = getelementptr inbounds nuw i8, ptr %4346, i64 16
  br label %4379

4379:                                             ; preds = %4379, %4377
  %4380 = phi ptr [ %4378, %4377 ], [ %4387, %4379 ]
  %4381 = phi ptr [ %4073, %4377 ], [ %4385, %4379 ]
  %4382 = getelementptr inbounds nuw i8, ptr %4381, i64 16
  %4383 = load <2 x i64>, ptr %4382, align 1, !tbaa !34
  store <2 x i64> %4383, ptr %4380, align 1, !tbaa !34
  %4384 = getelementptr inbounds nuw i8, ptr %4380, i64 16
  %4385 = getelementptr inbounds nuw i8, ptr %4381, i64 32
  %4386 = load <2 x i64>, ptr %4385, align 1, !tbaa !34
  store <2 x i64> %4386, ptr %4384, align 1, !tbaa !34
  %4387 = getelementptr inbounds nuw i8, ptr %4380, i64 32
  %4388 = icmp ult ptr %4387, %4374
  br i1 %4388, label %4379, label %4389, !llvm.loop !42

4389:                                             ; preds = %4379, %4372, %4370
  %4390 = phi ptr [ %4064, %4372 ], [ %4073, %4370 ], [ %4064, %4379 ]
  %4391 = phi ptr [ %4374, %4372 ], [ %4346, %4370 ], [ %4374, %4379 ]
  %4392 = icmp ult ptr %4390, %4272
  br i1 %4392, label %4393, label %4490

4393:                                             ; preds = %4389
  %4394 = ptrtoint ptr %4390 to i64
  %4395 = ptrtoint ptr %4391 to i64
  %4396 = ptrtoint ptr %4390 to i64
  %4397 = sub i64 %4342, %4396
  %4398 = icmp ult i64 %4397, 4
  %4399 = sub i64 %4395, %4394
  %4400 = icmp ult i64 %4399, 32
  %4401 = select i1 %4398, i1 true, i1 %4400
  br i1 %4401, label %4437, label %4402

4402:                                             ; preds = %4393
  %4403 = icmp ult i64 %4397, 32
  br i1 %4403, label %4423, label %4404

4404:                                             ; preds = %4402
  %4405 = and i64 %4397, -32
  br label %4406

4406:                                             ; preds = %4406, %4404
  %4407 = phi i64 [ 0, %4404 ], [ %4414, %4406 ]
  %4408 = getelementptr i8, ptr %4391, i64 %4407
  %4409 = getelementptr i8, ptr %4390, i64 %4407
  %4410 = getelementptr i8, ptr %4409, i64 16
  %4411 = load <16 x i8>, ptr %4409, align 1, !tbaa !34
  %4412 = load <16 x i8>, ptr %4410, align 1, !tbaa !34
  %4413 = getelementptr i8, ptr %4408, i64 16
  store <16 x i8> %4411, ptr %4408, align 1, !tbaa !34
  store <16 x i8> %4412, ptr %4413, align 1, !tbaa !34
  %4414 = add nuw i64 %4407, 32
  %4415 = icmp eq i64 %4414, %4405
  br i1 %4415, label %4416, label %4406, !llvm.loop !84

4416:                                             ; preds = %4406
  %4417 = icmp eq i64 %4397, %4405
  br i1 %4417, label %4490, label %4418

4418:                                             ; preds = %4416
  %4419 = getelementptr i8, ptr %4391, i64 %4405
  %4420 = getelementptr i8, ptr %4390, i64 %4405
  %4421 = and i64 %4397, 28
  %4422 = icmp eq i64 %4421, 0
  br i1 %4422, label %4437, label %4423

4423:                                             ; preds = %4418, %4402
  %4424 = phi i64 [ %4405, %4418 ], [ 0, %4402 ]
  %4425 = and i64 %4397, -4
  %4426 = getelementptr i8, ptr %4391, i64 %4425
  %4427 = getelementptr i8, ptr %4390, i64 %4425
  br label %4428

4428:                                             ; preds = %4428, %4423
  %4429 = phi i64 [ %4424, %4423 ], [ %4433, %4428 ]
  %4430 = getelementptr i8, ptr %4391, i64 %4429
  %4431 = getelementptr i8, ptr %4390, i64 %4429
  %4432 = load <4 x i8>, ptr %4431, align 1, !tbaa !34
  store <4 x i8> %4432, ptr %4430, align 1, !tbaa !34
  %4433 = add nuw i64 %4429, 4
  %4434 = icmp eq i64 %4433, %4425
  br i1 %4434, label %4435, label %4428, !llvm.loop !85

4435:                                             ; preds = %4428
  %4436 = icmp eq i64 %4397, %4425
  br i1 %4436, label %4490, label %4437

4437:                                             ; preds = %4418, %4435, %4393
  %4438 = phi ptr [ %4391, %4393 ], [ %4419, %4418 ], [ %4426, %4435 ]
  %4439 = phi ptr [ %4390, %4393 ], [ %4420, %4418 ], [ %4427, %4435 ]
  %4440 = ptrtoint ptr %4439 to i64
  %4441 = sub i64 %4342, %4440
  %4442 = and i64 %4441, 7
  %4443 = icmp eq i64 %4442, 0
  br i1 %4443, label %4453, label %4444

4444:                                             ; preds = %4437, %4444
  %4445 = phi ptr [ %4450, %4444 ], [ %4438, %4437 ]
  %4446 = phi ptr [ %4448, %4444 ], [ %4439, %4437 ]
  %4447 = phi i64 [ %4451, %4444 ], [ 0, %4437 ]
  %4448 = getelementptr inbounds nuw i8, ptr %4446, i64 1
  %4449 = load i8, ptr %4446, align 1, !tbaa !34
  %4450 = getelementptr inbounds nuw i8, ptr %4445, i64 1
  store i8 %4449, ptr %4445, align 1, !tbaa !34
  %4451 = add i64 %4447, 1
  %4452 = icmp eq i64 %4451, %4442
  br i1 %4452, label %4453, label %4444, !llvm.loop !86

4453:                                             ; preds = %4444, %4437
  %4454 = phi ptr [ %4438, %4437 ], [ %4450, %4444 ]
  %4455 = phi ptr [ %4439, %4437 ], [ %4448, %4444 ]
  %4456 = sub i64 %4440, %4342
  %4457 = icmp ugt i64 %4456, -8
  br i1 %4457, label %4490, label %4458

4458:                                             ; preds = %4453, %4458
  %4459 = phi ptr [ %4484, %4458 ], [ %4454, %4453 ]
  %4460 = phi ptr [ %4482, %4458 ], [ %4455, %4453 ]
  %4461 = getelementptr inbounds nuw i8, ptr %4460, i64 1
  %4462 = load i8, ptr %4460, align 1, !tbaa !34
  %4463 = getelementptr inbounds nuw i8, ptr %4459, i64 1
  store i8 %4462, ptr %4459, align 1, !tbaa !34
  %4464 = getelementptr inbounds nuw i8, ptr %4460, i64 2
  %4465 = load i8, ptr %4461, align 1, !tbaa !34
  %4466 = getelementptr inbounds nuw i8, ptr %4459, i64 2
  store i8 %4465, ptr %4463, align 1, !tbaa !34
  %4467 = getelementptr inbounds nuw i8, ptr %4460, i64 3
  %4468 = load i8, ptr %4464, align 1, !tbaa !34
  %4469 = getelementptr inbounds nuw i8, ptr %4459, i64 3
  store i8 %4468, ptr %4466, align 1, !tbaa !34
  %4470 = getelementptr inbounds nuw i8, ptr %4460, i64 4
  %4471 = load i8, ptr %4467, align 1, !tbaa !34
  %4472 = getelementptr inbounds nuw i8, ptr %4459, i64 4
  store i8 %4471, ptr %4469, align 1, !tbaa !34
  %4473 = getelementptr inbounds nuw i8, ptr %4460, i64 5
  %4474 = load i8, ptr %4470, align 1, !tbaa !34
  %4475 = getelementptr inbounds nuw i8, ptr %4459, i64 5
  store i8 %4474, ptr %4472, align 1, !tbaa !34
  %4476 = getelementptr inbounds nuw i8, ptr %4460, i64 6
  %4477 = load i8, ptr %4473, align 1, !tbaa !34
  %4478 = getelementptr inbounds nuw i8, ptr %4459, i64 6
  store i8 %4477, ptr %4475, align 1, !tbaa !34
  %4479 = getelementptr inbounds nuw i8, ptr %4460, i64 7
  %4480 = load i8, ptr %4476, align 1, !tbaa !34
  %4481 = getelementptr inbounds nuw i8, ptr %4459, i64 7
  store i8 %4480, ptr %4478, align 1, !tbaa !34
  %4482 = getelementptr inbounds nuw i8, ptr %4460, i64 8
  %4483 = load i8, ptr %4479, align 1, !tbaa !34
  %4484 = getelementptr inbounds nuw i8, ptr %4459, i64 8
  store i8 %4483, ptr %4481, align 1, !tbaa !34
  %4485 = icmp eq ptr %4482, %4272
  br i1 %4485, label %4490, label %4458, !llvm.loop !87

4486:                                             ; preds = %4350, %4347
  %4487 = load ptr, ptr %4065, align 8, !tbaa !39
  %4488 = getelementptr inbounds nuw i8, ptr %4487, i64 %4344
  store ptr %4488, ptr %4065, align 8, !tbaa !39
  %4489 = load ptr, ptr %4068, align 8, !tbaa !50
  br label %4502

4490:                                             ; preds = %4360, %4453, %4458, %4416, %4435, %4389
  %4491 = load ptr, ptr %4065, align 8, !tbaa !39
  %4492 = getelementptr inbounds nuw i8, ptr %4491, i64 %4344
  store ptr %4492, ptr %4065, align 8, !tbaa !39
  %4493 = icmp ugt i64 %4344, 65535
  %4494 = load ptr, ptr %4068, align 8, !tbaa !50
  br i1 %4493, label %4495, label %4502, !prof !51

4495:                                             ; preds = %4490
  store i32 1, ptr %4067, align 8, !tbaa !52
  %4496 = load ptr, ptr %1, align 8, !tbaa !53
  %4497 = ptrtoint ptr %4494 to i64
  %4498 = ptrtoint ptr %4496 to i64
  %4499 = sub i64 %4497, %4498
  %4500 = lshr exact i64 %4499, 3
  %4501 = trunc i64 %4500 to i32
  store i32 %4501, ptr %4069, align 4, !tbaa !54
  br label %4502

4502:                                             ; preds = %4495, %4490, %4486
  %4503 = phi ptr [ %4489, %4486 ], [ %4494, %4495 ], [ %4494, %4490 ]
  %4504 = trunc i64 %4344 to i16
  %4505 = getelementptr inbounds nuw i8, ptr %4503, i64 4
  store i16 %4504, ptr %4505, align 4, !tbaa !55
  store i32 %4268, ptr %4503, align 4, !tbaa !57
  %4506 = add i64 %4341, -3
  %4507 = icmp ugt i64 %4506, 65535
  br i1 %4507, label %4508, label %4515, !prof !58

4508:                                             ; preds = %4502
  store i32 2, ptr %4067, align 8, !tbaa !52
  %4509 = load ptr, ptr %1, align 8, !tbaa !53
  %4510 = ptrtoint ptr %4503 to i64
  %4511 = ptrtoint ptr %4509 to i64
  %4512 = sub i64 %4510, %4511
  %4513 = lshr exact i64 %4512, 3
  %4514 = trunc i64 %4513 to i32
  store i32 %4514, ptr %4069, align 4, !tbaa !54
  br label %4515

4515:                                             ; preds = %4508, %4502
  %4516 = trunc i64 %4506 to i16
  %4517 = getelementptr inbounds nuw i8, ptr %4503, i64 6
  store i16 %4516, ptr %4517, align 2, !tbaa !59
  %4518 = getelementptr inbounds nuw i8, ptr %4503, i64 8
  store ptr %4518, ptr %4068, align 8, !tbaa !50
  %4519 = getelementptr inbounds nuw i8, ptr %4272, i64 %4341
  %4520 = icmp ugt ptr %4519, %39
  br i1 %4520, label %4649, label %4521

4521:                                             ; preds = %4515
  %4522 = add i32 %4266, 2
  %4523 = zext i32 %4266 to i64
  %4524 = getelementptr inbounds nuw i8, ptr %59, i64 %4523
  %4525 = load i64, ptr %4524, align 1, !tbaa !22
  %4526 = mul i64 %4525, -3523014627193167104
  %4527 = lshr i64 %4526, %4060
  %4528 = getelementptr inbounds nuw i32, ptr %12, i64 %4527
  store i32 %4522, ptr %4528, align 4, !tbaa !23
  %4529 = getelementptr inbounds i8, ptr %4519, i64 -2
  %4530 = ptrtoint ptr %4529 to i64
  %4531 = sub i64 %4530, %21
  %4532 = trunc i64 %4531 to i32
  %4533 = load i64, ptr %4529, align 1, !tbaa !22
  %4534 = mul i64 %4533, -3523014627193167104
  %4535 = lshr i64 %4534, %4060
  %4536 = getelementptr inbounds nuw i32, ptr %12, i64 %4535
  store i32 %4532, ptr %4536, align 4, !tbaa !23
  %4537 = icmp eq i32 %4267, 0
  br i1 %4537, label %4649, label %4538

4538:                                             ; preds = %4521, %4644
  %4539 = phi ptr [ %4647, %4644 ], [ %4518, %4521 ]
  %4540 = phi ptr [ %4626, %4644 ], [ %4519, %4521 ]
  %4541 = phi i32 [ %4542, %4644 ], [ %4271, %4521 ]
  %4542 = phi i32 [ %4541, %4644 ], [ %4267, %4521 ]
  %4543 = load i32, ptr %4540, align 1, !tbaa !23
  %4544 = zext i32 %4542 to i64
  %4545 = sub nsw i64 0, %4544
  %4546 = getelementptr inbounds i8, ptr %4540, i64 %4545
  %4547 = load i32, ptr %4546, align 1, !tbaa !23
  %4548 = icmp eq i32 %4543, %4547
  br i1 %4548, label %4549, label %4649

4549:                                             ; preds = %4538
  %4550 = getelementptr inbounds nuw i8, ptr %4540, i64 4
  %4551 = getelementptr inbounds i8, ptr %4550, i64 %4545
  %4552 = icmp ult ptr %4550, %4061
  br i1 %4552, label %4553, label %4579

4553:                                             ; preds = %4549
  %4554 = load i64, ptr %4551, align 1, !tbaa !22
  %4555 = load i64, ptr %4550, align 1, !tbaa !22
  %4556 = icmp eq i64 %4554, %4555
  br i1 %4556, label %4561, label %4557

4557:                                             ; preds = %4553
  %4558 = xor i64 %4555, %4554
  %4559 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %4558, i1 true)
  %4560 = lshr i64 %4559, 3
  br label %4616

4561:                                             ; preds = %4553, %4567
  %4562 = phi ptr [ %4565, %4567 ], [ %4551, %4553 ]
  %4563 = phi ptr [ %4564, %4567 ], [ %4550, %4553 ]
  %4564 = getelementptr inbounds nuw i8, ptr %4563, i64 8
  %4565 = getelementptr inbounds nuw i8, ptr %4562, i64 8
  %4566 = icmp ult ptr %4564, %4061
  br i1 %4566, label %4567, label %4579

4567:                                             ; preds = %4561
  %4568 = load i64, ptr %4565, align 1, !tbaa !22
  %4569 = load i64, ptr %4564, align 1, !tbaa !22
  %4570 = icmp eq i64 %4568, %4569
  br i1 %4570, label %4561, label %4571

4571:                                             ; preds = %4567
  %4572 = xor i64 %4569, %4568
  %4573 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %4572, i1 true)
  %4574 = lshr i64 %4573, 3
  %4575 = getelementptr inbounds nuw i8, ptr %4564, i64 %4574
  %4576 = ptrtoint ptr %4575 to i64
  %4577 = ptrtoint ptr %4550 to i64
  %4578 = sub i64 %4576, %4577
  br label %4616

4579:                                             ; preds = %4561, %4549
  %4580 = phi ptr [ %4551, %4549 ], [ %4565, %4561 ]
  %4581 = phi ptr [ %4550, %4549 ], [ %4564, %4561 ]
  %4582 = icmp ult ptr %4581, %4062
  br i1 %4582, label %4583, label %4590

4583:                                             ; preds = %4579
  %4584 = load i32, ptr %4580, align 1, !tbaa !23
  %4585 = load i32, ptr %4581, align 1, !tbaa !23
  %4586 = icmp eq i32 %4584, %4585
  br i1 %4586, label %4587, label %4590

4587:                                             ; preds = %4583
  %4588 = getelementptr inbounds nuw i8, ptr %4581, i64 4
  %4589 = getelementptr inbounds nuw i8, ptr %4580, i64 4
  br label %4590

4590:                                             ; preds = %4587, %4583, %4579
  %4591 = phi ptr [ %4589, %4587 ], [ %4580, %4583 ], [ %4580, %4579 ]
  %4592 = phi ptr [ %4588, %4587 ], [ %4581, %4583 ], [ %4581, %4579 ]
  %4593 = icmp ult ptr %4592, %4063
  br i1 %4593, label %4594, label %4601

4594:                                             ; preds = %4590
  %4595 = load i16, ptr %4591, align 1, !tbaa !37
  %4596 = load i16, ptr %4592, align 1, !tbaa !37
  %4597 = icmp eq i16 %4595, %4596
  br i1 %4597, label %4598, label %4601

4598:                                             ; preds = %4594
  %4599 = getelementptr inbounds nuw i8, ptr %4592, i64 2
  %4600 = getelementptr inbounds nuw i8, ptr %4591, i64 2
  br label %4601

4601:                                             ; preds = %4598, %4594, %4590
  %4602 = phi ptr [ %4600, %4598 ], [ %4591, %4594 ], [ %4591, %4590 ]
  %4603 = phi ptr [ %4599, %4598 ], [ %4592, %4594 ], [ %4592, %4590 ]
  %4604 = icmp ult ptr %4603, %38
  br i1 %4604, label %4605, label %4611

4605:                                             ; preds = %4601
  %4606 = load i8, ptr %4602, align 1, !tbaa !34
  %4607 = load i8, ptr %4603, align 1, !tbaa !34
  %4608 = icmp eq i8 %4606, %4607
  %4609 = zext i1 %4608 to i64
  %4610 = getelementptr inbounds nuw i8, ptr %4603, i64 %4609
  br label %4611

4611:                                             ; preds = %4605, %4601
  %4612 = phi ptr [ %4603, %4601 ], [ %4610, %4605 ]
  %4613 = ptrtoint ptr %4612 to i64
  %4614 = ptrtoint ptr %4550 to i64
  %4615 = sub i64 %4613, %4614
  br label %4616

4616:                                             ; preds = %4611, %4571, %4557
  %4617 = phi i64 [ %4615, %4611 ], [ %4560, %4557 ], [ %4578, %4571 ]
  %4618 = ptrtoint ptr %4540 to i64
  %4619 = sub i64 %4618, %21
  %4620 = trunc i64 %4619 to i32
  %4621 = load i64, ptr %4540, align 1, !tbaa !22
  %4622 = mul i64 %4621, -3523014627193167104
  %4623 = lshr i64 %4622, %4060
  %4624 = getelementptr inbounds nuw i32, ptr %12, i64 %4623
  store i32 %4620, ptr %4624, align 4, !tbaa !23
  %4625 = getelementptr i8, ptr %4540, i64 %4617
  %4626 = getelementptr i8, ptr %4625, i64 4
  %4627 = icmp ugt ptr %4540, %4064
  br i1 %4627, label %4632, label %4628

4628:                                             ; preds = %4616
  %4629 = load ptr, ptr %4065, align 8, !tbaa !39
  %4630 = load <2 x i64>, ptr %4540, align 1, !tbaa !34
  store <2 x i64> %4630, ptr %4629, align 1, !tbaa !34
  %4631 = load ptr, ptr %4068, align 8, !tbaa !50
  br label %4632

4632:                                             ; preds = %4628, %4616
  %4633 = phi ptr [ %4539, %4616 ], [ %4631, %4628 ]
  %4634 = getelementptr inbounds nuw i8, ptr %4633, i64 4
  store i16 0, ptr %4634, align 4, !tbaa !55
  store i32 1, ptr %4633, align 4, !tbaa !57
  %4635 = add i64 %4617, 1
  %4636 = icmp ugt i64 %4635, 65535
  br i1 %4636, label %4637, label %4644, !prof !58

4637:                                             ; preds = %4632
  store i32 2, ptr %4067, align 8, !tbaa !52
  %4638 = load ptr, ptr %1, align 8, !tbaa !53
  %4639 = ptrtoint ptr %4633 to i64
  %4640 = ptrtoint ptr %4638 to i64
  %4641 = sub i64 %4639, %4640
  %4642 = lshr exact i64 %4641, 3
  %4643 = trunc i64 %4642 to i32
  store i32 %4643, ptr %4069, align 4, !tbaa !54
  br label %4644

4644:                                             ; preds = %4637, %4632
  %4645 = trunc i64 %4635 to i16
  %4646 = getelementptr inbounds nuw i8, ptr %4633, i64 6
  store i16 %4645, ptr %4646, align 2, !tbaa !59
  %4647 = getelementptr inbounds nuw i8, ptr %4633, i64 8
  store ptr %4647, ptr %4068, align 8, !tbaa !50
  %4648 = icmp ugt ptr %4626, %39
  br i1 %4648, label %4649, label %4538

4649:                                             ; preds = %4644, %4538, %4521, %4515
  %4650 = phi i32 [ 0, %4521 ], [ %4267, %4515 ], [ %4542, %4538 ], [ %4541, %4644 ]
  %4651 = phi i32 [ %4271, %4521 ], [ %4271, %4515 ], [ %4541, %4538 ], [ %4542, %4644 ]
  %4652 = phi ptr [ %4519, %4521 ], [ %4519, %4515 ], [ %4540, %4538 ], [ %4626, %4644 ]
  %4653 = getelementptr inbounds nuw i8, ptr %4652, i64 %17
  %4654 = getelementptr inbounds nuw i8, ptr %4653, i64 1
  %4655 = icmp ult ptr %4654, %39
  br i1 %4655, label %4070, label %4656

4656:                                             ; preds = %4048, %3622, %3539, %3447, %3021, %2938, %4649, %4223, %4140, %2846, %2418, %2334, %1695, %1267, %1151, %723, %2239, %1811, %607, %177, %4055, %3454, %2853, %2247, %1702, %1158, %614, %64
  %4657 = phi i32 [ %58, %64 ], [ %58, %614 ], [ %58, %1158 ], [ %58, %1702 ], [ %58, %2247 ], [ %58, %2853 ], [ %58, %3454 ], [ %58, %4055 ], [ %83, %177 ], [ %609, %607 ], [ %1722, %1811 ], [ %2241, %2239 ], [ %634, %723 ], [ %1153, %1151 ], [ %1178, %1267 ], [ %1697, %1695 ], [ 0, %2334 ], [ %2268, %2418 ], [ %2848, %2846 ], [ 0, %4140 ], [ %4077, %4223 ], [ %4651, %4649 ], [ 0, %2938 ], [ %2875, %3021 ], [ %3449, %3447 ], [ 0, %3539 ], [ %3476, %3622 ], [ %4050, %4048 ]
  %4658 = phi i32 [ %56, %64 ], [ %56, %614 ], [ %56, %1158 ], [ %56, %1702 ], [ %56, %2247 ], [ %56, %2853 ], [ %56, %3454 ], [ %56, %4055 ], [ %84, %177 ], [ %608, %607 ], [ %1723, %1811 ], [ %2240, %2239 ], [ %635, %723 ], [ %1152, %1151 ], [ %1179, %1267 ], [ %1696, %1695 ], [ %2267, %2334 ], [ %2267, %2418 ], [ %2847, %2846 ], [ %4076, %4140 ], [ %4076, %4223 ], [ %4650, %4649 ], [ %2874, %2938 ], [ %2874, %3021 ], [ %3448, %3447 ], [ %3475, %3539 ], [ %3475, %3622 ], [ %4049, %4048 ]
  %4659 = phi ptr [ %3, %64 ], [ %3, %614 ], [ %3, %1158 ], [ %3, %1702 ], [ %3, %2247 ], [ %3, %2853 ], [ %3, %3454 ], [ %3, %4055 ], [ %81, %177 ], [ %610, %607 ], [ %1720, %1811 ], [ %2242, %2239 ], [ %632, %723 ], [ %1154, %1151 ], [ %1176, %1267 ], [ %1698, %1695 ], [ %2264, %2334 ], [ %2264, %2418 ], [ %2849, %2846 ], [ %4073, %4140 ], [ %4073, %4223 ], [ %4652, %4649 ], [ %2871, %2938 ], [ %2871, %3021 ], [ %3450, %3447 ], [ %3472, %3539 ], [ %3472, %3622 ], [ %4051, %4048 ]
  %4660 = select i1 %57, i32 %40, i32 0
  %4661 = select i1 %55, i32 %42, i32 0
  %4662 = icmp ne i32 %4657, 0
  %4663 = select i1 %57, i1 %4662, i1 false
  %4664 = select i1 %4663, i32 %40, i32 %4661
  %4665 = select i1 %4662, i32 %4657, i32 %4660
  store i32 %4665, ptr %2, align 4, !tbaa !23
  %4666 = icmp eq i32 %4658, 0
  %4667 = select i1 %4666, i32 %4664, i32 %4658
  store i32 %4667, ptr %41, align 4, !tbaa !23
  %4668 = ptrtoint ptr %38 to i64
  %4669 = ptrtoint ptr %4659 to i64
  %4670 = sub i64 %4668, %4669
  ret i64 %4670
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_fast_dictMatchState(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %7 = load i32, ptr %6, align 8, !tbaa !27
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %11 = load i32, ptr %10, align 4, !tbaa !21
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %13 = load i32, ptr %12, align 4, !tbaa !29
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 1)
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %16 = load ptr, ptr %15, align 8, !tbaa !19
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %19 = load i32, ptr %18, align 8, !tbaa !30
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds nuw i8, ptr %16, i64 %20
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %23 = getelementptr inbounds i8, ptr %22, i64 -8
  %24 = load i32, ptr %2, align 4, !tbaa !23
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %26 = load i32, ptr %25, align 4, !tbaa !23
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %28 = load ptr, ptr %27, align 8, !tbaa !88
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 112
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = getelementptr inbounds nuw i8, ptr %28, i64 24
  %32 = load i32, ptr %31, align 8, !tbaa !30
  %33 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %34 = load ptr, ptr %33, align 8, !tbaa !19
  %35 = zext i32 %32 to i64
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 %35
  %37 = load ptr, ptr %28, align 8, !tbaa !89
  %38 = ptrtoint ptr %37 to i64
  %39 = ptrtoint ptr %34 to i64
  %40 = sub i64 %39, %38
  %41 = trunc i64 %40 to i32
  %42 = add i32 %19, %41
  %43 = ptrtoint ptr %3 to i64
  %44 = ptrtoint ptr %21 to i64
  %45 = sub i64 %43, %44
  %46 = getelementptr inbounds i8, ptr %37, i64 %45
  %47 = ptrtoint ptr %46 to i64
  %48 = ptrtoint ptr %36 to i64
  %49 = sub i64 %47, %48
  %50 = getelementptr inbounds nuw i8, ptr %28, i64 264
  %51 = load i32, ptr %50, align 4, !tbaa !21
  %52 = ptrtoint ptr %16 to i64
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %54 = load i32, ptr %53, align 8, !tbaa !90
  %55 = icmp eq i32 %54, 0
  switch i32 %7, label %56 [
    i32 7, label %2635
    i32 5, label %917
    i32 6, label %1776
  ]

56:                                               ; preds = %5
  br i1 %55, label %66, label %57

57:                                               ; preds = %56
  %58 = zext nneg i32 %51 to i64
  %59 = shl i64 4, %58
  %60 = icmp ugt i32 %51, 61
  br i1 %60, label %66, label %61

61:                                               ; preds = %57, %61
  %62 = phi i64 [ %64, %61 ], [ 0, %57 ]
  %63 = getelementptr inbounds nuw i8, ptr %30, i64 %62
  tail call void @llvm.prefetch.p0(ptr %63, i32 0, i32 2, i32 1)
  %64 = add i64 %62, 64
  %65 = icmp ult i64 %64, %59
  br i1 %65, label %61, label %66, !llvm.loop !91

66:                                               ; preds = %61, %57, %56
  %67 = getelementptr inbounds nuw i8, ptr %16, i64 2
  %68 = getelementptr inbounds nuw i8, ptr %3, i64 %17
  %69 = icmp ugt ptr %68, %23
  br i1 %69, label %3494, label %70

70:                                               ; preds = %66
  %71 = and i64 %49, 4294967295
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = getelementptr inbounds nuw i8, ptr %3, i64 %73
  %75 = sub i32 32, %11
  %76 = sub i32 24, %51
  %77 = getelementptr inbounds i8, ptr %22, i64 -32
  %78 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %79 = ptrtoint ptr %77 to i64
  %80 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %82 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %83 = getelementptr inbounds i8, ptr %22, i64 -7
  %84 = getelementptr inbounds i8, ptr %22, i64 -3
  %85 = getelementptr inbounds i8, ptr %22, i64 -1
  %86 = zext i32 %42 to i64
  %87 = sub nsw i64 0, %86
  %88 = getelementptr inbounds i8, ptr %34, i64 %87
  br label %89

89:                                               ; preds = %911, %70
  %90 = phi ptr [ %68, %70 ], [ %915, %911 ]
  %91 = phi ptr [ %74, %70 ], [ %914, %911 ]
  %92 = phi ptr [ %3, %70 ], [ %914, %911 ]
  %93 = phi i32 [ %24, %70 ], [ %913, %911 ]
  %94 = phi i32 [ %26, %70 ], [ %912, %911 ]
  %95 = load i32, ptr %91, align 1, !tbaa !23
  %96 = mul i32 %95, -1640531535
  %97 = lshr i32 %96, %76
  %98 = lshr i32 %97, 8
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds nuw i32, ptr %30, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !23
  %102 = xor i32 %97, %101
  %103 = getelementptr inbounds nuw i8, ptr %91, i64 256
  br label %104

104:                                              ; preds = %807, %89
  %105 = phi ptr [ %103, %89 ], [ %809, %807 ]
  %106 = phi i64 [ %17, %89 ], [ %804, %807 ]
  %107 = phi i32 [ %102, %89 ], [ %814, %807 ]
  %108 = phi i32 [ %101, %89 ], [ %813, %807 ]
  %109 = phi i32 [ %96, %89 ], [ %126, %807 ]
  %110 = phi ptr [ %90, %89 ], [ %805, %807 ]
  %111 = phi ptr [ %91, %89 ], [ %110, %807 ]
  %112 = lshr i32 %109, %75
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds nuw i32, ptr %9, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !23
  %116 = and i32 %107, 255
  %117 = icmp eq i32 %116, 0
  %118 = ptrtoint ptr %111 to i64
  %119 = sub i64 %118, %52
  %120 = trunc i64 %119 to i32
  %121 = zext i32 %115 to i64
  %122 = getelementptr inbounds nuw i8, ptr %16, i64 %121
  %123 = sub i32 %120, %93
  %124 = add i32 %123, 1
  %125 = load i32, ptr %110, align 1, !tbaa !23
  %126 = mul i32 %125, -1640531535
  %127 = lshr i32 %126, %76
  store i32 %120, ptr %114, align 4, !tbaa !23
  %128 = sub i32 %124, %19
  %129 = icmp ugt i32 %128, -4
  br i1 %129, label %319, label %130

130:                                              ; preds = %104
  %131 = icmp ult i32 %124, %19
  %132 = sub i32 %124, %42
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds nuw i8, ptr %34, i64 %133
  %135 = zext i32 %124 to i64
  %136 = getelementptr inbounds nuw i8, ptr %16, i64 %135
  %137 = select i1 %131, ptr %134, ptr %136
  %138 = load i32, ptr %137, align 1, !tbaa !23
  %139 = getelementptr inbounds nuw i8, ptr %111, i64 1
  %140 = load i32, ptr %139, align 1, !tbaa !23
  %141 = icmp eq i32 %138, %140
  br i1 %141, label %142, label %319

142:                                              ; preds = %130
  %143 = ptrtoint ptr %111 to i64
  %144 = getelementptr inbounds nuw i8, ptr %111, i64 1
  %145 = select i1 %131, ptr %37, ptr %22
  %146 = getelementptr inbounds nuw i8, ptr %111, i64 5
  %147 = getelementptr inbounds nuw i8, ptr %137, i64 4
  %148 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %146, ptr noundef nonnull %147, ptr noundef %22, ptr noundef %145, ptr noundef %21)
  %149 = add i64 %148, 4
  %150 = ptrtoint ptr %144 to i64
  %151 = ptrtoint ptr %92 to i64
  %152 = sub i64 %150, %151
  %153 = icmp ugt ptr %144, %77
  %154 = load ptr, ptr %78, align 8, !tbaa !39
  br i1 %153, label %178, label %155

155:                                              ; preds = %142
  %156 = load <2 x i64>, ptr %92, align 1, !tbaa !34
  store <2 x i64> %156, ptr %154, align 1, !tbaa !34
  %157 = icmp ugt i64 %152, 16
  br i1 %157, label %158, label %297

158:                                              ; preds = %155
  %159 = load ptr, ptr %78, align 8, !tbaa !39
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 16
  %161 = getelementptr inbounds nuw i8, ptr %92, i64 16
  %162 = add i64 %152, -16
  %163 = getelementptr i8, ptr %159, i64 %152
  %164 = load <2 x i64>, ptr %161, align 1, !tbaa !34
  store <2 x i64> %164, ptr %160, align 1, !tbaa !34
  %165 = icmp ult i64 %162, 17
  br i1 %165, label %297, label %166

166:                                              ; preds = %158
  %167 = getelementptr inbounds nuw i8, ptr %159, i64 32
  br label %168

168:                                              ; preds = %168, %166
  %169 = phi ptr [ %167, %166 ], [ %176, %168 ]
  %170 = phi ptr [ %161, %166 ], [ %174, %168 ]
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 16
  %172 = load <2 x i64>, ptr %171, align 1, !tbaa !34
  store <2 x i64> %172, ptr %169, align 1, !tbaa !34
  %173 = getelementptr inbounds nuw i8, ptr %169, i64 16
  %174 = getelementptr inbounds nuw i8, ptr %170, i64 32
  %175 = load <2 x i64>, ptr %174, align 1, !tbaa !34
  store <2 x i64> %175, ptr %173, align 1, !tbaa !34
  %176 = getelementptr inbounds nuw i8, ptr %169, i64 32
  %177 = icmp ult ptr %176, %163
  br i1 %177, label %168, label %301, !llvm.loop !42

178:                                              ; preds = %142
  %179 = icmp ugt ptr %92, %77
  br i1 %179, label %197, label %180

180:                                              ; preds = %178
  %181 = sub i64 %79, %151
  %182 = getelementptr inbounds i8, ptr %154, i64 %181
  %183 = load <2 x i64>, ptr %92, align 1, !tbaa !34
  store <2 x i64> %183, ptr %154, align 1, !tbaa !34
  %184 = icmp ult i64 %181, 17
  br i1 %184, label %197, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds nuw i8, ptr %154, i64 16
  br label %187

187:                                              ; preds = %187, %185
  %188 = phi ptr [ %186, %185 ], [ %195, %187 ]
  %189 = phi ptr [ %92, %185 ], [ %193, %187 ]
  %190 = getelementptr inbounds nuw i8, ptr %189, i64 16
  %191 = load <2 x i64>, ptr %190, align 1, !tbaa !34
  store <2 x i64> %191, ptr %188, align 1, !tbaa !34
  %192 = getelementptr inbounds nuw i8, ptr %188, i64 16
  %193 = getelementptr inbounds nuw i8, ptr %189, i64 32
  %194 = load <2 x i64>, ptr %193, align 1, !tbaa !34
  store <2 x i64> %194, ptr %192, align 1, !tbaa !34
  %195 = getelementptr inbounds nuw i8, ptr %188, i64 32
  %196 = icmp ult ptr %195, %182
  br i1 %196, label %187, label %197, !llvm.loop !42

197:                                              ; preds = %187, %180, %178
  %198 = phi ptr [ %77, %180 ], [ %92, %178 ], [ %77, %187 ]
  %199 = phi ptr [ %182, %180 ], [ %154, %178 ], [ %182, %187 ]
  %200 = icmp ult ptr %198, %144
  br i1 %200, label %201, label %301

201:                                              ; preds = %197
  %202 = ptrtoint ptr %198 to i64
  %203 = ptrtoint ptr %199 to i64
  %204 = ptrtoint ptr %198 to i64
  %205 = sub i64 %143, %204
  %206 = add i64 %205, 1
  %207 = icmp ult i64 %206, 4
  %208 = sub i64 %203, %202
  %209 = icmp ult i64 %208, 32
  %210 = select i1 %207, i1 true, i1 %209
  br i1 %210, label %246, label %211

211:                                              ; preds = %201
  %212 = icmp ult i64 %206, 32
  br i1 %212, label %232, label %213

213:                                              ; preds = %211
  %214 = and i64 %206, -32
  br label %215

215:                                              ; preds = %215, %213
  %216 = phi i64 [ 0, %213 ], [ %223, %215 ]
  %217 = getelementptr i8, ptr %199, i64 %216
  %218 = getelementptr i8, ptr %198, i64 %216
  %219 = getelementptr i8, ptr %218, i64 16
  %220 = load <16 x i8>, ptr %218, align 1, !tbaa !34
  %221 = load <16 x i8>, ptr %219, align 1, !tbaa !34
  %222 = getelementptr i8, ptr %217, i64 16
  store <16 x i8> %220, ptr %217, align 1, !tbaa !34
  store <16 x i8> %221, ptr %222, align 1, !tbaa !34
  %223 = add nuw i64 %216, 32
  %224 = icmp eq i64 %223, %214
  br i1 %224, label %225, label %215, !llvm.loop !92

225:                                              ; preds = %215
  %226 = icmp eq i64 %206, %214
  br i1 %226, label %301, label %227

227:                                              ; preds = %225
  %228 = getelementptr i8, ptr %199, i64 %214
  %229 = getelementptr i8, ptr %198, i64 %214
  %230 = and i64 %206, 28
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %246, label %232

232:                                              ; preds = %227, %211
  %233 = phi i64 [ %214, %227 ], [ 0, %211 ]
  %234 = and i64 %206, -4
  %235 = getelementptr i8, ptr %199, i64 %234
  %236 = getelementptr i8, ptr %198, i64 %234
  br label %237

237:                                              ; preds = %237, %232
  %238 = phi i64 [ %233, %232 ], [ %242, %237 ]
  %239 = getelementptr i8, ptr %199, i64 %238
  %240 = getelementptr i8, ptr %198, i64 %238
  %241 = load <4 x i8>, ptr %240, align 1, !tbaa !34
  store <4 x i8> %241, ptr %239, align 1, !tbaa !34
  %242 = add nuw i64 %238, 4
  %243 = icmp eq i64 %242, %234
  br i1 %243, label %244, label %237, !llvm.loop !93

244:                                              ; preds = %237
  %245 = icmp eq i64 %206, %234
  br i1 %245, label %301, label %246

246:                                              ; preds = %227, %244, %201
  %247 = phi ptr [ %199, %201 ], [ %228, %227 ], [ %235, %244 ]
  %248 = phi ptr [ %198, %201 ], [ %229, %227 ], [ %236, %244 ]
  %249 = ptrtoint ptr %248 to i64
  %250 = sub i64 %143, %249
  %251 = add i64 %250, 1
  %252 = sub i64 %143, %249
  %253 = and i64 %251, 7
  %254 = and i64 %250, 7
  %255 = icmp eq i64 %254, 7
  br i1 %255, label %265, label %256

256:                                              ; preds = %246, %256
  %257 = phi ptr [ %262, %256 ], [ %247, %246 ]
  %258 = phi ptr [ %260, %256 ], [ %248, %246 ]
  %259 = phi i64 [ %263, %256 ], [ 0, %246 ]
  %260 = getelementptr inbounds nuw i8, ptr %258, i64 1
  %261 = load i8, ptr %258, align 1, !tbaa !34
  %262 = getelementptr inbounds nuw i8, ptr %257, i64 1
  store i8 %261, ptr %257, align 1, !tbaa !34
  %263 = add i64 %259, 1
  %264 = icmp eq i64 %263, %253
  br i1 %264, label %265, label %256, !llvm.loop !94

265:                                              ; preds = %256, %246
  %266 = phi ptr [ %247, %246 ], [ %262, %256 ]
  %267 = phi ptr [ %248, %246 ], [ %260, %256 ]
  %268 = icmp ult i64 %252, 7
  br i1 %268, label %301, label %269

269:                                              ; preds = %265, %269
  %270 = phi ptr [ %295, %269 ], [ %266, %265 ]
  %271 = phi ptr [ %293, %269 ], [ %267, %265 ]
  %272 = getelementptr inbounds nuw i8, ptr %271, i64 1
  %273 = load i8, ptr %271, align 1, !tbaa !34
  %274 = getelementptr inbounds nuw i8, ptr %270, i64 1
  store i8 %273, ptr %270, align 1, !tbaa !34
  %275 = getelementptr inbounds nuw i8, ptr %271, i64 2
  %276 = load i8, ptr %272, align 1, !tbaa !34
  %277 = getelementptr inbounds nuw i8, ptr %270, i64 2
  store i8 %276, ptr %274, align 1, !tbaa !34
  %278 = getelementptr inbounds nuw i8, ptr %271, i64 3
  %279 = load i8, ptr %275, align 1, !tbaa !34
  %280 = getelementptr inbounds nuw i8, ptr %270, i64 3
  store i8 %279, ptr %277, align 1, !tbaa !34
  %281 = getelementptr inbounds nuw i8, ptr %271, i64 4
  %282 = load i8, ptr %278, align 1, !tbaa !34
  %283 = getelementptr inbounds nuw i8, ptr %270, i64 4
  store i8 %282, ptr %280, align 1, !tbaa !34
  %284 = getelementptr inbounds nuw i8, ptr %271, i64 5
  %285 = load i8, ptr %281, align 1, !tbaa !34
  %286 = getelementptr inbounds nuw i8, ptr %270, i64 5
  store i8 %285, ptr %283, align 1, !tbaa !34
  %287 = getelementptr inbounds nuw i8, ptr %271, i64 6
  %288 = load i8, ptr %284, align 1, !tbaa !34
  %289 = getelementptr inbounds nuw i8, ptr %270, i64 6
  store i8 %288, ptr %286, align 1, !tbaa !34
  %290 = getelementptr inbounds nuw i8, ptr %271, i64 7
  %291 = load i8, ptr %287, align 1, !tbaa !34
  %292 = getelementptr inbounds nuw i8, ptr %270, i64 7
  store i8 %291, ptr %289, align 1, !tbaa !34
  %293 = getelementptr inbounds nuw i8, ptr %271, i64 8
  %294 = load i8, ptr %290, align 1, !tbaa !34
  %295 = getelementptr inbounds nuw i8, ptr %270, i64 8
  store i8 %294, ptr %292, align 1, !tbaa !34
  %296 = icmp eq ptr %290, %111
  br i1 %296, label %301, label %269, !llvm.loop !95

297:                                              ; preds = %158, %155
  %298 = load ptr, ptr %78, align 8, !tbaa !39
  %299 = getelementptr inbounds nuw i8, ptr %298, i64 %152
  store ptr %299, ptr %78, align 8, !tbaa !39
  %300 = load ptr, ptr %81, align 8, !tbaa !50
  br label %313

301:                                              ; preds = %168, %265, %269, %225, %244, %197
  %302 = load ptr, ptr %78, align 8, !tbaa !39
  %303 = getelementptr inbounds nuw i8, ptr %302, i64 %152
  store ptr %303, ptr %78, align 8, !tbaa !39
  %304 = icmp ugt i64 %152, 65535
  %305 = load ptr, ptr %81, align 8, !tbaa !50
  br i1 %304, label %306, label %313, !prof !51

306:                                              ; preds = %301
  store i32 1, ptr %80, align 8, !tbaa !52
  %307 = load ptr, ptr %1, align 8, !tbaa !53
  %308 = ptrtoint ptr %305 to i64
  %309 = ptrtoint ptr %307 to i64
  %310 = sub i64 %308, %309
  %311 = lshr exact i64 %310, 3
  %312 = trunc i64 %311 to i32
  store i32 %312, ptr %82, align 4, !tbaa !54
  br label %313

313:                                              ; preds = %306, %301, %297
  %314 = phi ptr [ %300, %297 ], [ %305, %306 ], [ %305, %301 ]
  %315 = trunc i64 %152 to i16
  %316 = getelementptr inbounds nuw i8, ptr %314, i64 4
  store i16 %315, ptr %316, align 4, !tbaa !55
  store i32 1, ptr %314, align 4, !tbaa !57
  %317 = add i64 %148, 1
  %318 = icmp ugt i64 %317, 65535
  br i1 %318, label %815, label %828, !prof !58

319:                                              ; preds = %130, %104
  br i1 %117, label %320, label %529

320:                                              ; preds = %319
  %321 = lshr i32 %108, 8
  %322 = icmp ugt i32 %321, %32
  br i1 %322, label %323, label %529

323:                                              ; preds = %320
  %324 = zext nneg i32 %321 to i64
  %325 = getelementptr inbounds nuw i8, ptr %34, i64 %324
  %326 = load i32, ptr %325, align 1, !tbaa !23
  %327 = load i32, ptr %111, align 1, !tbaa !23
  %328 = icmp ne i32 %326, %327
  %329 = icmp ugt i32 %115, %19
  %330 = select i1 %328, i1 true, i1 %329
  br i1 %330, label %529, label %331

331:                                              ; preds = %323
  %332 = getelementptr inbounds nuw i8, ptr %34, i64 %324
  %333 = add i32 %321, %42
  %334 = sub i32 %120, %333
  %335 = getelementptr inbounds nuw i8, ptr %111, i64 4
  %336 = getelementptr inbounds nuw i8, ptr %332, i64 4
  %337 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %335, ptr noundef nonnull %336, ptr noundef %22, ptr noundef %37, ptr noundef %21)
  %338 = add i64 %337, 4
  %339 = icmp ugt ptr %111, %92
  br i1 %339, label %340, label %358

340:                                              ; preds = %331, %349
  %341 = phi ptr [ %344, %349 ], [ %111, %331 ]
  %342 = phi i64 [ %350, %349 ], [ %338, %331 ]
  %343 = phi ptr [ %346, %349 ], [ %332, %331 ]
  %344 = getelementptr inbounds i8, ptr %341, i64 -1
  %345 = load i8, ptr %344, align 1, !tbaa !34
  %346 = getelementptr inbounds i8, ptr %343, i64 -1
  %347 = load i8, ptr %346, align 1, !tbaa !34
  %348 = icmp eq i8 %345, %347
  br i1 %348, label %349, label %354

349:                                              ; preds = %340
  %350 = add i64 %342, 1
  %351 = icmp ugt ptr %344, %92
  %352 = icmp ugt ptr %346, %36
  %353 = and i1 %351, %352
  br i1 %353, label %340, label %354, !llvm.loop !96

354:                                              ; preds = %349, %340
  %355 = phi i64 [ %350, %349 ], [ %342, %340 ]
  %356 = phi ptr [ %344, %349 ], [ %341, %340 ]
  %357 = ptrtoint ptr %356 to i64
  br label %358

358:                                              ; preds = %354, %331
  %359 = phi i64 [ %357, %354 ], [ %118, %331 ]
  %360 = phi i64 [ %355, %354 ], [ %338, %331 ]
  %361 = phi ptr [ %356, %354 ], [ %111, %331 ]
  %362 = ptrtoint ptr %361 to i64
  %363 = ptrtoint ptr %92 to i64
  %364 = sub i64 %359, %363
  %365 = add i32 %334, 3
  %366 = icmp ugt ptr %361, %77
  %367 = load ptr, ptr %78, align 8, !tbaa !39
  br i1 %366, label %391, label %368

368:                                              ; preds = %358
  %369 = load <2 x i64>, ptr %92, align 1, !tbaa !34
  store <2 x i64> %369, ptr %367, align 1, !tbaa !34
  %370 = icmp ugt i64 %364, 16
  br i1 %370, label %371, label %507

371:                                              ; preds = %368
  %372 = load ptr, ptr %78, align 8, !tbaa !39
  %373 = getelementptr inbounds nuw i8, ptr %372, i64 16
  %374 = getelementptr inbounds nuw i8, ptr %92, i64 16
  %375 = add i64 %364, -16
  %376 = getelementptr i8, ptr %372, i64 %364
  %377 = load <2 x i64>, ptr %374, align 1, !tbaa !34
  store <2 x i64> %377, ptr %373, align 1, !tbaa !34
  %378 = icmp ult i64 %375, 17
  br i1 %378, label %507, label %379

379:                                              ; preds = %371
  %380 = getelementptr inbounds nuw i8, ptr %372, i64 32
  br label %381

381:                                              ; preds = %381, %379
  %382 = phi ptr [ %380, %379 ], [ %389, %381 ]
  %383 = phi ptr [ %374, %379 ], [ %387, %381 ]
  %384 = getelementptr inbounds nuw i8, ptr %383, i64 16
  %385 = load <2 x i64>, ptr %384, align 1, !tbaa !34
  store <2 x i64> %385, ptr %382, align 1, !tbaa !34
  %386 = getelementptr inbounds nuw i8, ptr %382, i64 16
  %387 = getelementptr inbounds nuw i8, ptr %383, i64 32
  %388 = load <2 x i64>, ptr %387, align 1, !tbaa !34
  store <2 x i64> %388, ptr %386, align 1, !tbaa !34
  %389 = getelementptr inbounds nuw i8, ptr %382, i64 32
  %390 = icmp ult ptr %389, %376
  br i1 %390, label %381, label %511, !llvm.loop !42

391:                                              ; preds = %358
  %392 = icmp ugt ptr %92, %77
  br i1 %392, label %410, label %393

393:                                              ; preds = %391
  %394 = sub i64 %79, %363
  %395 = getelementptr inbounds i8, ptr %367, i64 %394
  %396 = load <2 x i64>, ptr %92, align 1, !tbaa !34
  store <2 x i64> %396, ptr %367, align 1, !tbaa !34
  %397 = icmp ult i64 %394, 17
  br i1 %397, label %410, label %398

398:                                              ; preds = %393
  %399 = getelementptr inbounds nuw i8, ptr %367, i64 16
  br label %400

400:                                              ; preds = %400, %398
  %401 = phi ptr [ %399, %398 ], [ %408, %400 ]
  %402 = phi ptr [ %92, %398 ], [ %406, %400 ]
  %403 = getelementptr inbounds nuw i8, ptr %402, i64 16
  %404 = load <2 x i64>, ptr %403, align 1, !tbaa !34
  store <2 x i64> %404, ptr %401, align 1, !tbaa !34
  %405 = getelementptr inbounds nuw i8, ptr %401, i64 16
  %406 = getelementptr inbounds nuw i8, ptr %402, i64 32
  %407 = load <2 x i64>, ptr %406, align 1, !tbaa !34
  store <2 x i64> %407, ptr %405, align 1, !tbaa !34
  %408 = getelementptr inbounds nuw i8, ptr %401, i64 32
  %409 = icmp ult ptr %408, %395
  br i1 %409, label %400, label %410, !llvm.loop !42

410:                                              ; preds = %400, %393, %391
  %411 = phi ptr [ %77, %393 ], [ %92, %391 ], [ %77, %400 ]
  %412 = phi ptr [ %395, %393 ], [ %367, %391 ], [ %395, %400 ]
  %413 = icmp ult ptr %411, %361
  br i1 %413, label %414, label %511

414:                                              ; preds = %410
  %415 = ptrtoint ptr %411 to i64
  %416 = ptrtoint ptr %412 to i64
  %417 = ptrtoint ptr %411 to i64
  %418 = sub i64 %362, %417
  %419 = icmp ult i64 %418, 4
  %420 = sub i64 %416, %415
  %421 = icmp ult i64 %420, 32
  %422 = select i1 %419, i1 true, i1 %421
  br i1 %422, label %458, label %423

423:                                              ; preds = %414
  %424 = icmp ult i64 %418, 32
  br i1 %424, label %444, label %425

425:                                              ; preds = %423
  %426 = and i64 %418, -32
  br label %427

427:                                              ; preds = %427, %425
  %428 = phi i64 [ 0, %425 ], [ %435, %427 ]
  %429 = getelementptr i8, ptr %412, i64 %428
  %430 = getelementptr i8, ptr %411, i64 %428
  %431 = getelementptr i8, ptr %430, i64 16
  %432 = load <16 x i8>, ptr %430, align 1, !tbaa !34
  %433 = load <16 x i8>, ptr %431, align 1, !tbaa !34
  %434 = getelementptr i8, ptr %429, i64 16
  store <16 x i8> %432, ptr %429, align 1, !tbaa !34
  store <16 x i8> %433, ptr %434, align 1, !tbaa !34
  %435 = add nuw i64 %428, 32
  %436 = icmp eq i64 %435, %426
  br i1 %436, label %437, label %427, !llvm.loop !97

437:                                              ; preds = %427
  %438 = icmp eq i64 %418, %426
  br i1 %438, label %511, label %439

439:                                              ; preds = %437
  %440 = getelementptr i8, ptr %412, i64 %426
  %441 = getelementptr i8, ptr %411, i64 %426
  %442 = and i64 %418, 28
  %443 = icmp eq i64 %442, 0
  br i1 %443, label %458, label %444

444:                                              ; preds = %439, %423
  %445 = phi i64 [ %426, %439 ], [ 0, %423 ]
  %446 = and i64 %418, -4
  %447 = getelementptr i8, ptr %412, i64 %446
  %448 = getelementptr i8, ptr %411, i64 %446
  br label %449

449:                                              ; preds = %449, %444
  %450 = phi i64 [ %445, %444 ], [ %454, %449 ]
  %451 = getelementptr i8, ptr %412, i64 %450
  %452 = getelementptr i8, ptr %411, i64 %450
  %453 = load <4 x i8>, ptr %452, align 1, !tbaa !34
  store <4 x i8> %453, ptr %451, align 1, !tbaa !34
  %454 = add nuw i64 %450, 4
  %455 = icmp eq i64 %454, %446
  br i1 %455, label %456, label %449, !llvm.loop !98

456:                                              ; preds = %449
  %457 = icmp eq i64 %418, %446
  br i1 %457, label %511, label %458

458:                                              ; preds = %439, %456, %414
  %459 = phi ptr [ %412, %414 ], [ %440, %439 ], [ %447, %456 ]
  %460 = phi ptr [ %411, %414 ], [ %441, %439 ], [ %448, %456 ]
  %461 = ptrtoint ptr %460 to i64
  %462 = sub i64 %362, %461
  %463 = and i64 %462, 7
  %464 = icmp eq i64 %463, 0
  br i1 %464, label %474, label %465

465:                                              ; preds = %458, %465
  %466 = phi ptr [ %471, %465 ], [ %459, %458 ]
  %467 = phi ptr [ %469, %465 ], [ %460, %458 ]
  %468 = phi i64 [ %472, %465 ], [ 0, %458 ]
  %469 = getelementptr inbounds nuw i8, ptr %467, i64 1
  %470 = load i8, ptr %467, align 1, !tbaa !34
  %471 = getelementptr inbounds nuw i8, ptr %466, i64 1
  store i8 %470, ptr %466, align 1, !tbaa !34
  %472 = add i64 %468, 1
  %473 = icmp eq i64 %472, %463
  br i1 %473, label %474, label %465, !llvm.loop !99

474:                                              ; preds = %465, %458
  %475 = phi ptr [ %459, %458 ], [ %471, %465 ]
  %476 = phi ptr [ %460, %458 ], [ %469, %465 ]
  %477 = sub i64 %461, %362
  %478 = icmp ugt i64 %477, -8
  br i1 %478, label %511, label %479

479:                                              ; preds = %474, %479
  %480 = phi ptr [ %505, %479 ], [ %475, %474 ]
  %481 = phi ptr [ %503, %479 ], [ %476, %474 ]
  %482 = getelementptr inbounds nuw i8, ptr %481, i64 1
  %483 = load i8, ptr %481, align 1, !tbaa !34
  %484 = getelementptr inbounds nuw i8, ptr %480, i64 1
  store i8 %483, ptr %480, align 1, !tbaa !34
  %485 = getelementptr inbounds nuw i8, ptr %481, i64 2
  %486 = load i8, ptr %482, align 1, !tbaa !34
  %487 = getelementptr inbounds nuw i8, ptr %480, i64 2
  store i8 %486, ptr %484, align 1, !tbaa !34
  %488 = getelementptr inbounds nuw i8, ptr %481, i64 3
  %489 = load i8, ptr %485, align 1, !tbaa !34
  %490 = getelementptr inbounds nuw i8, ptr %480, i64 3
  store i8 %489, ptr %487, align 1, !tbaa !34
  %491 = getelementptr inbounds nuw i8, ptr %481, i64 4
  %492 = load i8, ptr %488, align 1, !tbaa !34
  %493 = getelementptr inbounds nuw i8, ptr %480, i64 4
  store i8 %492, ptr %490, align 1, !tbaa !34
  %494 = getelementptr inbounds nuw i8, ptr %481, i64 5
  %495 = load i8, ptr %491, align 1, !tbaa !34
  %496 = getelementptr inbounds nuw i8, ptr %480, i64 5
  store i8 %495, ptr %493, align 1, !tbaa !34
  %497 = getelementptr inbounds nuw i8, ptr %481, i64 6
  %498 = load i8, ptr %494, align 1, !tbaa !34
  %499 = getelementptr inbounds nuw i8, ptr %480, i64 6
  store i8 %498, ptr %496, align 1, !tbaa !34
  %500 = getelementptr inbounds nuw i8, ptr %481, i64 7
  %501 = load i8, ptr %497, align 1, !tbaa !34
  %502 = getelementptr inbounds nuw i8, ptr %480, i64 7
  store i8 %501, ptr %499, align 1, !tbaa !34
  %503 = getelementptr inbounds nuw i8, ptr %481, i64 8
  %504 = load i8, ptr %500, align 1, !tbaa !34
  %505 = getelementptr inbounds nuw i8, ptr %480, i64 8
  store i8 %504, ptr %502, align 1, !tbaa !34
  %506 = icmp eq ptr %503, %361
  br i1 %506, label %511, label %479, !llvm.loop !100

507:                                              ; preds = %371, %368
  %508 = load ptr, ptr %78, align 8, !tbaa !39
  %509 = getelementptr inbounds nuw i8, ptr %508, i64 %364
  store ptr %509, ptr %78, align 8, !tbaa !39
  %510 = load ptr, ptr %81, align 8, !tbaa !50
  br label %523

511:                                              ; preds = %381, %474, %479, %437, %456, %410
  %512 = load ptr, ptr %78, align 8, !tbaa !39
  %513 = getelementptr inbounds nuw i8, ptr %512, i64 %364
  store ptr %513, ptr %78, align 8, !tbaa !39
  %514 = icmp ugt i64 %364, 65535
  %515 = load ptr, ptr %81, align 8, !tbaa !50
  br i1 %514, label %516, label %523, !prof !51

516:                                              ; preds = %511
  store i32 1, ptr %80, align 8, !tbaa !52
  %517 = load ptr, ptr %1, align 8, !tbaa !53
  %518 = ptrtoint ptr %515 to i64
  %519 = ptrtoint ptr %517 to i64
  %520 = sub i64 %518, %519
  %521 = lshr exact i64 %520, 3
  %522 = trunc i64 %521 to i32
  store i32 %522, ptr %82, align 4, !tbaa !54
  br label %523

523:                                              ; preds = %516, %511, %507
  %524 = phi ptr [ %510, %507 ], [ %515, %516 ], [ %515, %511 ]
  %525 = trunc i64 %364 to i16
  %526 = getelementptr inbounds nuw i8, ptr %524, i64 4
  store i16 %525, ptr %526, align 4, !tbaa !55
  store i32 %365, ptr %524, align 4, !tbaa !57
  %527 = add i64 %360, -3
  %528 = icmp ugt i64 %527, 65535
  br i1 %528, label %815, label %828, !prof !58

529:                                              ; preds = %323, %320, %319
  %530 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %115, i32 %19, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %122) #7, !srcloc !32
  %531 = load i32, ptr %111, align 1, !tbaa !23
  %532 = load i32, ptr %530, align 1, !tbaa !23
  %533 = icmp eq i32 %531, %532
  br i1 %533, label %534, label %801

534:                                              ; preds = %529
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !33
  %535 = icmp ult i32 %115, %19
  br i1 %535, label %801, label %536

536:                                              ; preds = %534
  %537 = ptrtoint ptr %122 to i64
  %538 = sub i64 %118, %537
  %539 = trunc i64 %538 to i32
  %540 = getelementptr inbounds nuw i8, ptr %111, i64 4
  %541 = getelementptr inbounds nuw i8, ptr %122, i64 4
  %542 = icmp ult ptr %540, %83
  br i1 %542, label %543, label %569

543:                                              ; preds = %536
  %544 = load i64, ptr %541, align 1, !tbaa !22
  %545 = load i64, ptr %540, align 1, !tbaa !22
  %546 = icmp eq i64 %544, %545
  br i1 %546, label %551, label %547

547:                                              ; preds = %543
  %548 = xor i64 %545, %544
  %549 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %548, i1 true)
  %550 = lshr i64 %549, 3
  br label %606

551:                                              ; preds = %543, %557
  %552 = phi ptr [ %555, %557 ], [ %541, %543 ]
  %553 = phi ptr [ %554, %557 ], [ %540, %543 ]
  %554 = getelementptr inbounds nuw i8, ptr %553, i64 8
  %555 = getelementptr inbounds nuw i8, ptr %552, i64 8
  %556 = icmp ult ptr %554, %83
  br i1 %556, label %557, label %569

557:                                              ; preds = %551
  %558 = load i64, ptr %555, align 1, !tbaa !22
  %559 = load i64, ptr %554, align 1, !tbaa !22
  %560 = icmp eq i64 %558, %559
  br i1 %560, label %551, label %561

561:                                              ; preds = %557
  %562 = xor i64 %559, %558
  %563 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %562, i1 true)
  %564 = lshr i64 %563, 3
  %565 = getelementptr inbounds nuw i8, ptr %554, i64 %564
  %566 = ptrtoint ptr %565 to i64
  %567 = ptrtoint ptr %540 to i64
  %568 = sub i64 %566, %567
  br label %606

569:                                              ; preds = %551, %536
  %570 = phi ptr [ %541, %536 ], [ %555, %551 ]
  %571 = phi ptr [ %540, %536 ], [ %554, %551 ]
  %572 = icmp ult ptr %571, %84
  br i1 %572, label %573, label %580

573:                                              ; preds = %569
  %574 = load i32, ptr %570, align 1, !tbaa !23
  %575 = load i32, ptr %571, align 1, !tbaa !23
  %576 = icmp eq i32 %574, %575
  br i1 %576, label %577, label %580

577:                                              ; preds = %573
  %578 = getelementptr inbounds nuw i8, ptr %571, i64 4
  %579 = getelementptr inbounds nuw i8, ptr %570, i64 4
  br label %580

580:                                              ; preds = %577, %573, %569
  %581 = phi ptr [ %579, %577 ], [ %570, %573 ], [ %570, %569 ]
  %582 = phi ptr [ %578, %577 ], [ %571, %573 ], [ %571, %569 ]
  %583 = icmp ult ptr %582, %85
  br i1 %583, label %584, label %591

584:                                              ; preds = %580
  %585 = load i16, ptr %581, align 1, !tbaa !37
  %586 = load i16, ptr %582, align 1, !tbaa !37
  %587 = icmp eq i16 %585, %586
  br i1 %587, label %588, label %591

588:                                              ; preds = %584
  %589 = getelementptr inbounds nuw i8, ptr %582, i64 2
  %590 = getelementptr inbounds nuw i8, ptr %581, i64 2
  br label %591

591:                                              ; preds = %588, %584, %580
  %592 = phi ptr [ %590, %588 ], [ %581, %584 ], [ %581, %580 ]
  %593 = phi ptr [ %589, %588 ], [ %582, %584 ], [ %582, %580 ]
  %594 = icmp ult ptr %593, %22
  br i1 %594, label %595, label %601

595:                                              ; preds = %591
  %596 = load i8, ptr %592, align 1, !tbaa !34
  %597 = load i8, ptr %593, align 1, !tbaa !34
  %598 = icmp eq i8 %596, %597
  %599 = zext i1 %598 to i64
  %600 = getelementptr inbounds nuw i8, ptr %593, i64 %599
  br label %601

601:                                              ; preds = %595, %591
  %602 = phi ptr [ %593, %591 ], [ %600, %595 ]
  %603 = ptrtoint ptr %602 to i64
  %604 = ptrtoint ptr %540 to i64
  %605 = sub i64 %603, %604
  br label %606

606:                                              ; preds = %601, %561, %547
  %607 = phi i64 [ %605, %601 ], [ %550, %547 ], [ %568, %561 ]
  %608 = add i64 %607, 4
  %609 = icmp ugt ptr %111, %92
  %610 = icmp ugt i32 %115, %19
  %611 = and i1 %609, %610
  br i1 %611, label %612, label %630

612:                                              ; preds = %606, %621
  %613 = phi ptr [ %616, %621 ], [ %111, %606 ]
  %614 = phi i64 [ %622, %621 ], [ %608, %606 ]
  %615 = phi ptr [ %618, %621 ], [ %122, %606 ]
  %616 = getelementptr inbounds i8, ptr %613, i64 -1
  %617 = load i8, ptr %616, align 1, !tbaa !34
  %618 = getelementptr inbounds i8, ptr %615, i64 -1
  %619 = load i8, ptr %618, align 1, !tbaa !34
  %620 = icmp eq i8 %617, %619
  br i1 %620, label %621, label %626

621:                                              ; preds = %612
  %622 = add i64 %614, 1
  %623 = icmp ugt ptr %616, %92
  %624 = icmp ugt ptr %618, %21
  %625 = and i1 %623, %624
  br i1 %625, label %612, label %626, !llvm.loop !101

626:                                              ; preds = %621, %612
  %627 = phi i64 [ %622, %621 ], [ %614, %612 ]
  %628 = phi ptr [ %616, %621 ], [ %613, %612 ]
  %629 = ptrtoint ptr %628 to i64
  br label %630

630:                                              ; preds = %626, %606
  %631 = phi i64 [ %629, %626 ], [ %118, %606 ]
  %632 = phi i64 [ %627, %626 ], [ %608, %606 ]
  %633 = phi ptr [ %628, %626 ], [ %111, %606 ]
  %634 = ptrtoint ptr %633 to i64
  %635 = ptrtoint ptr %92 to i64
  %636 = sub i64 %631, %635
  %637 = add i32 %539, 3
  %638 = icmp ugt ptr %633, %77
  %639 = load ptr, ptr %78, align 8, !tbaa !39
  br i1 %638, label %663, label %640

640:                                              ; preds = %630
  %641 = load <2 x i64>, ptr %92, align 1, !tbaa !34
  store <2 x i64> %641, ptr %639, align 1, !tbaa !34
  %642 = icmp ugt i64 %636, 16
  br i1 %642, label %643, label %779

643:                                              ; preds = %640
  %644 = load ptr, ptr %78, align 8, !tbaa !39
  %645 = getelementptr inbounds nuw i8, ptr %644, i64 16
  %646 = getelementptr inbounds nuw i8, ptr %92, i64 16
  %647 = add i64 %636, -16
  %648 = getelementptr i8, ptr %644, i64 %636
  %649 = load <2 x i64>, ptr %646, align 1, !tbaa !34
  store <2 x i64> %649, ptr %645, align 1, !tbaa !34
  %650 = icmp ult i64 %647, 17
  br i1 %650, label %779, label %651

651:                                              ; preds = %643
  %652 = getelementptr inbounds nuw i8, ptr %644, i64 32
  br label %653

653:                                              ; preds = %653, %651
  %654 = phi ptr [ %652, %651 ], [ %661, %653 ]
  %655 = phi ptr [ %646, %651 ], [ %659, %653 ]
  %656 = getelementptr inbounds nuw i8, ptr %655, i64 16
  %657 = load <2 x i64>, ptr %656, align 1, !tbaa !34
  store <2 x i64> %657, ptr %654, align 1, !tbaa !34
  %658 = getelementptr inbounds nuw i8, ptr %654, i64 16
  %659 = getelementptr inbounds nuw i8, ptr %655, i64 32
  %660 = load <2 x i64>, ptr %659, align 1, !tbaa !34
  store <2 x i64> %660, ptr %658, align 1, !tbaa !34
  %661 = getelementptr inbounds nuw i8, ptr %654, i64 32
  %662 = icmp ult ptr %661, %648
  br i1 %662, label %653, label %783, !llvm.loop !42

663:                                              ; preds = %630
  %664 = icmp ugt ptr %92, %77
  br i1 %664, label %682, label %665

665:                                              ; preds = %663
  %666 = sub i64 %79, %635
  %667 = getelementptr inbounds i8, ptr %639, i64 %666
  %668 = load <2 x i64>, ptr %92, align 1, !tbaa !34
  store <2 x i64> %668, ptr %639, align 1, !tbaa !34
  %669 = icmp ult i64 %666, 17
  br i1 %669, label %682, label %670

670:                                              ; preds = %665
  %671 = getelementptr inbounds nuw i8, ptr %639, i64 16
  br label %672

672:                                              ; preds = %672, %670
  %673 = phi ptr [ %671, %670 ], [ %680, %672 ]
  %674 = phi ptr [ %92, %670 ], [ %678, %672 ]
  %675 = getelementptr inbounds nuw i8, ptr %674, i64 16
  %676 = load <2 x i64>, ptr %675, align 1, !tbaa !34
  store <2 x i64> %676, ptr %673, align 1, !tbaa !34
  %677 = getelementptr inbounds nuw i8, ptr %673, i64 16
  %678 = getelementptr inbounds nuw i8, ptr %674, i64 32
  %679 = load <2 x i64>, ptr %678, align 1, !tbaa !34
  store <2 x i64> %679, ptr %677, align 1, !tbaa !34
  %680 = getelementptr inbounds nuw i8, ptr %673, i64 32
  %681 = icmp ult ptr %680, %667
  br i1 %681, label %672, label %682, !llvm.loop !42

682:                                              ; preds = %672, %665, %663
  %683 = phi ptr [ %77, %665 ], [ %92, %663 ], [ %77, %672 ]
  %684 = phi ptr [ %667, %665 ], [ %639, %663 ], [ %667, %672 ]
  %685 = icmp ult ptr %683, %633
  br i1 %685, label %686, label %783

686:                                              ; preds = %682
  %687 = ptrtoint ptr %683 to i64
  %688 = ptrtoint ptr %684 to i64
  %689 = ptrtoint ptr %683 to i64
  %690 = sub i64 %634, %689
  %691 = icmp ult i64 %690, 4
  %692 = sub i64 %688, %687
  %693 = icmp ult i64 %692, 32
  %694 = select i1 %691, i1 true, i1 %693
  br i1 %694, label %730, label %695

695:                                              ; preds = %686
  %696 = icmp ult i64 %690, 32
  br i1 %696, label %716, label %697

697:                                              ; preds = %695
  %698 = and i64 %690, -32
  br label %699

699:                                              ; preds = %699, %697
  %700 = phi i64 [ 0, %697 ], [ %707, %699 ]
  %701 = getelementptr i8, ptr %684, i64 %700
  %702 = getelementptr i8, ptr %683, i64 %700
  %703 = getelementptr i8, ptr %702, i64 16
  %704 = load <16 x i8>, ptr %702, align 1, !tbaa !34
  %705 = load <16 x i8>, ptr %703, align 1, !tbaa !34
  %706 = getelementptr i8, ptr %701, i64 16
  store <16 x i8> %704, ptr %701, align 1, !tbaa !34
  store <16 x i8> %705, ptr %706, align 1, !tbaa !34
  %707 = add nuw i64 %700, 32
  %708 = icmp eq i64 %707, %698
  br i1 %708, label %709, label %699, !llvm.loop !102

709:                                              ; preds = %699
  %710 = icmp eq i64 %690, %698
  br i1 %710, label %783, label %711

711:                                              ; preds = %709
  %712 = getelementptr i8, ptr %684, i64 %698
  %713 = getelementptr i8, ptr %683, i64 %698
  %714 = and i64 %690, 28
  %715 = icmp eq i64 %714, 0
  br i1 %715, label %730, label %716

716:                                              ; preds = %711, %695
  %717 = phi i64 [ %698, %711 ], [ 0, %695 ]
  %718 = and i64 %690, -4
  %719 = getelementptr i8, ptr %684, i64 %718
  %720 = getelementptr i8, ptr %683, i64 %718
  br label %721

721:                                              ; preds = %721, %716
  %722 = phi i64 [ %717, %716 ], [ %726, %721 ]
  %723 = getelementptr i8, ptr %684, i64 %722
  %724 = getelementptr i8, ptr %683, i64 %722
  %725 = load <4 x i8>, ptr %724, align 1, !tbaa !34
  store <4 x i8> %725, ptr %723, align 1, !tbaa !34
  %726 = add nuw i64 %722, 4
  %727 = icmp eq i64 %726, %718
  br i1 %727, label %728, label %721, !llvm.loop !103

728:                                              ; preds = %721
  %729 = icmp eq i64 %690, %718
  br i1 %729, label %783, label %730

730:                                              ; preds = %711, %728, %686
  %731 = phi ptr [ %684, %686 ], [ %712, %711 ], [ %719, %728 ]
  %732 = phi ptr [ %683, %686 ], [ %713, %711 ], [ %720, %728 ]
  %733 = ptrtoint ptr %732 to i64
  %734 = sub i64 %634, %733
  %735 = and i64 %734, 7
  %736 = icmp eq i64 %735, 0
  br i1 %736, label %746, label %737

737:                                              ; preds = %730, %737
  %738 = phi ptr [ %743, %737 ], [ %731, %730 ]
  %739 = phi ptr [ %741, %737 ], [ %732, %730 ]
  %740 = phi i64 [ %744, %737 ], [ 0, %730 ]
  %741 = getelementptr inbounds nuw i8, ptr %739, i64 1
  %742 = load i8, ptr %739, align 1, !tbaa !34
  %743 = getelementptr inbounds nuw i8, ptr %738, i64 1
  store i8 %742, ptr %738, align 1, !tbaa !34
  %744 = add i64 %740, 1
  %745 = icmp eq i64 %744, %735
  br i1 %745, label %746, label %737, !llvm.loop !104

746:                                              ; preds = %737, %730
  %747 = phi ptr [ %731, %730 ], [ %743, %737 ]
  %748 = phi ptr [ %732, %730 ], [ %741, %737 ]
  %749 = sub i64 %733, %634
  %750 = icmp ugt i64 %749, -8
  br i1 %750, label %783, label %751

751:                                              ; preds = %746, %751
  %752 = phi ptr [ %777, %751 ], [ %747, %746 ]
  %753 = phi ptr [ %775, %751 ], [ %748, %746 ]
  %754 = getelementptr inbounds nuw i8, ptr %753, i64 1
  %755 = load i8, ptr %753, align 1, !tbaa !34
  %756 = getelementptr inbounds nuw i8, ptr %752, i64 1
  store i8 %755, ptr %752, align 1, !tbaa !34
  %757 = getelementptr inbounds nuw i8, ptr %753, i64 2
  %758 = load i8, ptr %754, align 1, !tbaa !34
  %759 = getelementptr inbounds nuw i8, ptr %752, i64 2
  store i8 %758, ptr %756, align 1, !tbaa !34
  %760 = getelementptr inbounds nuw i8, ptr %753, i64 3
  %761 = load i8, ptr %757, align 1, !tbaa !34
  %762 = getelementptr inbounds nuw i8, ptr %752, i64 3
  store i8 %761, ptr %759, align 1, !tbaa !34
  %763 = getelementptr inbounds nuw i8, ptr %753, i64 4
  %764 = load i8, ptr %760, align 1, !tbaa !34
  %765 = getelementptr inbounds nuw i8, ptr %752, i64 4
  store i8 %764, ptr %762, align 1, !tbaa !34
  %766 = getelementptr inbounds nuw i8, ptr %753, i64 5
  %767 = load i8, ptr %763, align 1, !tbaa !34
  %768 = getelementptr inbounds nuw i8, ptr %752, i64 5
  store i8 %767, ptr %765, align 1, !tbaa !34
  %769 = getelementptr inbounds nuw i8, ptr %753, i64 6
  %770 = load i8, ptr %766, align 1, !tbaa !34
  %771 = getelementptr inbounds nuw i8, ptr %752, i64 6
  store i8 %770, ptr %768, align 1, !tbaa !34
  %772 = getelementptr inbounds nuw i8, ptr %753, i64 7
  %773 = load i8, ptr %769, align 1, !tbaa !34
  %774 = getelementptr inbounds nuw i8, ptr %752, i64 7
  store i8 %773, ptr %771, align 1, !tbaa !34
  %775 = getelementptr inbounds nuw i8, ptr %753, i64 8
  %776 = load i8, ptr %772, align 1, !tbaa !34
  %777 = getelementptr inbounds nuw i8, ptr %752, i64 8
  store i8 %776, ptr %774, align 1, !tbaa !34
  %778 = icmp eq ptr %775, %633
  br i1 %778, label %783, label %751, !llvm.loop !105

779:                                              ; preds = %643, %640
  %780 = load ptr, ptr %78, align 8, !tbaa !39
  %781 = getelementptr inbounds nuw i8, ptr %780, i64 %636
  store ptr %781, ptr %78, align 8, !tbaa !39
  %782 = load ptr, ptr %81, align 8, !tbaa !50
  br label %795

783:                                              ; preds = %653, %746, %751, %709, %728, %682
  %784 = load ptr, ptr %78, align 8, !tbaa !39
  %785 = getelementptr inbounds nuw i8, ptr %784, i64 %636
  store ptr %785, ptr %78, align 8, !tbaa !39
  %786 = icmp ugt i64 %636, 65535
  %787 = load ptr, ptr %81, align 8, !tbaa !50
  br i1 %786, label %788, label %795, !prof !51

788:                                              ; preds = %783
  store i32 1, ptr %80, align 8, !tbaa !52
  %789 = load ptr, ptr %1, align 8, !tbaa !53
  %790 = ptrtoint ptr %787 to i64
  %791 = ptrtoint ptr %789 to i64
  %792 = sub i64 %790, %791
  %793 = lshr exact i64 %792, 3
  %794 = trunc i64 %793 to i32
  store i32 %794, ptr %82, align 4, !tbaa !54
  br label %795

795:                                              ; preds = %788, %783, %779
  %796 = phi ptr [ %782, %779 ], [ %787, %788 ], [ %787, %783 ]
  %797 = trunc i64 %636 to i16
  %798 = getelementptr inbounds nuw i8, ptr %796, i64 4
  store i16 %797, ptr %798, align 4, !tbaa !55
  store i32 %637, ptr %796, align 4, !tbaa !57
  %799 = add i64 %632, -3
  %800 = icmp ugt i64 %799, 65535
  br i1 %800, label %815, label %828, !prof !58

801:                                              ; preds = %534, %529
  %802 = icmp uge ptr %110, %105
  %803 = zext i1 %802 to i64
  %804 = add i64 %106, %803
  %805 = getelementptr inbounds nuw i8, ptr %110, i64 %804
  %806 = icmp ugt ptr %805, %23
  br i1 %806, label %3494, label %807

807:                                              ; preds = %801
  %808 = select i1 %802, i64 256, i64 0
  %809 = getelementptr inbounds nuw i8, ptr %105, i64 %808
  %810 = lshr i32 %127, 8
  %811 = zext nneg i32 %810 to i64
  %812 = getelementptr inbounds nuw i32, ptr %30, i64 %811
  %813 = load i32, ptr %812, align 4, !tbaa !23
  %814 = xor i32 %813, %127
  br label %104

815:                                              ; preds = %795, %523, %313
  %816 = phi ptr [ %314, %313 ], [ %524, %523 ], [ %796, %795 ]
  %817 = phi i64 [ %317, %313 ], [ %527, %523 ], [ %799, %795 ]
  %818 = phi i64 [ %149, %313 ], [ %360, %523 ], [ %632, %795 ]
  %819 = phi i32 [ %94, %313 ], [ %93, %523 ], [ %93, %795 ]
  %820 = phi i32 [ %93, %313 ], [ %334, %523 ], [ %539, %795 ]
  %821 = phi ptr [ %144, %313 ], [ %361, %523 ], [ %633, %795 ]
  store i32 2, ptr %80, align 8, !tbaa !52
  %822 = load ptr, ptr %1, align 8, !tbaa !53
  %823 = ptrtoint ptr %816 to i64
  %824 = ptrtoint ptr %822 to i64
  %825 = sub i64 %823, %824
  %826 = lshr exact i64 %825, 3
  %827 = trunc i64 %826 to i32
  store i32 %827, ptr %82, align 4, !tbaa !54
  br label %828

828:                                              ; preds = %815, %795, %523, %313
  %829 = phi i64 [ %317, %313 ], [ %527, %523 ], [ %799, %795 ], [ %817, %815 ]
  %830 = phi ptr [ %314, %313 ], [ %524, %523 ], [ %796, %795 ], [ %816, %815 ]
  %831 = phi i64 [ %149, %313 ], [ %360, %523 ], [ %632, %795 ], [ %818, %815 ]
  %832 = phi i32 [ %94, %313 ], [ %93, %523 ], [ %93, %795 ], [ %819, %815 ]
  %833 = phi i32 [ %93, %313 ], [ %334, %523 ], [ %539, %795 ], [ %820, %815 ]
  %834 = phi ptr [ %144, %313 ], [ %361, %523 ], [ %633, %795 ], [ %821, %815 ]
  %835 = trunc i64 %829 to i16
  %836 = getelementptr inbounds nuw i8, ptr %830, i64 6
  store i16 %835, ptr %836, align 2, !tbaa !59
  %837 = getelementptr inbounds nuw i8, ptr %830, i64 8
  store ptr %837, ptr %81, align 8, !tbaa !50
  %838 = getelementptr inbounds nuw i8, ptr %834, i64 %831
  %839 = icmp ugt ptr %838, %23
  br i1 %839, label %911, label %840

840:                                              ; preds = %828
  %841 = add i32 %120, 2
  %842 = and i64 %119, 4294967295
  %843 = getelementptr inbounds nuw i8, ptr %67, i64 %842
  %844 = load i32, ptr %843, align 1, !tbaa !23
  %845 = mul i32 %844, -1640531535
  %846 = lshr i32 %845, %75
  %847 = zext i32 %846 to i64
  %848 = getelementptr inbounds nuw i32, ptr %9, i64 %847
  store i32 %841, ptr %848, align 4, !tbaa !23
  %849 = getelementptr inbounds i8, ptr %838, i64 -2
  %850 = ptrtoint ptr %849 to i64
  %851 = sub i64 %850, %52
  %852 = trunc i64 %851 to i32
  %853 = load i32, ptr %849, align 1, !tbaa !23
  %854 = mul i32 %853, -1640531535
  %855 = lshr i32 %854, %75
  %856 = zext i32 %855 to i64
  %857 = getelementptr inbounds nuw i32, ptr %9, i64 %856
  store i32 %852, ptr %857, align 4, !tbaa !23
  br label %858

858:                                              ; preds = %899, %840
  %859 = phi ptr [ %837, %840 ], [ %902, %899 ]
  %860 = phi ptr [ %838, %840 ], [ %909, %899 ]
  %861 = phi i32 [ %833, %840 ], [ %862, %899 ]
  %862 = phi i32 [ %832, %840 ], [ %861, %899 ]
  %863 = ptrtoint ptr %860 to i64
  %864 = sub i64 %863, %52
  %865 = trunc i64 %864 to i32
  %866 = sub i32 %865, %862
  %867 = icmp ult i32 %866, %19
  %868 = zext i32 %866 to i64
  %869 = select i1 %867, ptr %88, ptr %16
  %870 = getelementptr inbounds nuw i8, ptr %869, i64 %868
  %871 = sub i32 %866, %19
  %872 = icmp ugt i32 %871, -4
  br i1 %872, label %911, label %873

873:                                              ; preds = %858
  %874 = load i32, ptr %870, align 1, !tbaa !23
  %875 = load i32, ptr %860, align 1, !tbaa !23
  %876 = icmp eq i32 %874, %875
  br i1 %876, label %877, label %911

877:                                              ; preds = %873
  %878 = select i1 %867, ptr %37, ptr %22
  %879 = getelementptr inbounds nuw i8, ptr %860, i64 4
  %880 = getelementptr inbounds nuw i8, ptr %870, i64 4
  %881 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %879, ptr noundef nonnull %880, ptr noundef %22, ptr noundef %878, ptr noundef %21)
  %882 = icmp ugt ptr %860, %77
  br i1 %882, label %887, label %883

883:                                              ; preds = %877
  %884 = load ptr, ptr %78, align 8, !tbaa !39
  %885 = load <2 x i64>, ptr %860, align 1, !tbaa !34
  store <2 x i64> %885, ptr %884, align 1, !tbaa !34
  %886 = load ptr, ptr %81, align 8, !tbaa !50
  br label %887

887:                                              ; preds = %883, %877
  %888 = phi ptr [ %859, %877 ], [ %886, %883 ]
  %889 = getelementptr inbounds nuw i8, ptr %888, i64 4
  store i16 0, ptr %889, align 4, !tbaa !55
  store i32 1, ptr %888, align 4, !tbaa !57
  %890 = add i64 %881, 1
  %891 = icmp ugt i64 %890, 65535
  br i1 %891, label %892, label %899, !prof !58

892:                                              ; preds = %887
  store i32 2, ptr %80, align 8, !tbaa !52
  %893 = load ptr, ptr %1, align 8, !tbaa !53
  %894 = ptrtoint ptr %888 to i64
  %895 = ptrtoint ptr %893 to i64
  %896 = sub i64 %894, %895
  %897 = lshr exact i64 %896, 3
  %898 = trunc i64 %897 to i32
  store i32 %898, ptr %82, align 4, !tbaa !54
  br label %899

899:                                              ; preds = %892, %887
  %900 = trunc i64 %890 to i16
  %901 = getelementptr inbounds nuw i8, ptr %888, i64 6
  store i16 %900, ptr %901, align 2, !tbaa !59
  %902 = getelementptr inbounds nuw i8, ptr %888, i64 8
  store ptr %902, ptr %81, align 8, !tbaa !50
  %903 = load i32, ptr %860, align 1, !tbaa !23
  %904 = mul i32 %903, -1640531535
  %905 = lshr i32 %904, %75
  %906 = zext i32 %905 to i64
  %907 = getelementptr inbounds nuw i32, ptr %9, i64 %906
  store i32 %865, ptr %907, align 4, !tbaa !23
  %908 = getelementptr i8, ptr %860, i64 %881
  %909 = getelementptr i8, ptr %908, i64 4
  %910 = icmp ugt ptr %909, %23
  br i1 %910, label %911, label %858

911:                                              ; preds = %899, %873, %858, %828
  %912 = phi i32 [ %832, %828 ], [ %862, %858 ], [ %862, %873 ], [ %861, %899 ]
  %913 = phi i32 [ %833, %828 ], [ %861, %858 ], [ %861, %873 ], [ %862, %899 ]
  %914 = phi ptr [ %838, %828 ], [ %860, %858 ], [ %860, %873 ], [ %909, %899 ]
  %915 = getelementptr inbounds nuw i8, ptr %914, i64 %17
  %916 = icmp ugt ptr %915, %23
  br i1 %916, label %3494, label %89

917:                                              ; preds = %5
  br i1 %55, label %927, label %918

918:                                              ; preds = %917
  %919 = zext nneg i32 %51 to i64
  %920 = shl i64 4, %919
  %921 = icmp ugt i32 %51, 61
  br i1 %921, label %927, label %922

922:                                              ; preds = %918, %922
  %923 = phi i64 [ %925, %922 ], [ 0, %918 ]
  %924 = getelementptr inbounds nuw i8, ptr %30, i64 %923
  tail call void @llvm.prefetch.p0(ptr %924, i32 0, i32 2, i32 1)
  %925 = add i64 %923, 64
  %926 = icmp ult i64 %925, %920
  br i1 %926, label %922, label %927, !llvm.loop !91

927:                                              ; preds = %922, %918, %917
  %928 = getelementptr inbounds nuw i8, ptr %16, i64 2
  %929 = getelementptr inbounds nuw i8, ptr %3, i64 %17
  %930 = icmp ugt ptr %929, %23
  br i1 %930, label %3494, label %931

931:                                              ; preds = %927
  %932 = and i64 %49, 4294967295
  %933 = icmp eq i64 %932, 0
  %934 = zext i1 %933 to i64
  %935 = getelementptr inbounds nuw i8, ptr %3, i64 %934
  %936 = sub i32 64, %11
  %937 = zext nneg i32 %936 to i64
  %938 = sub i32 56, %51
  %939 = zext nneg i32 %938 to i64
  %940 = getelementptr inbounds i8, ptr %22, i64 -32
  %941 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %942 = ptrtoint ptr %940 to i64
  %943 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %944 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %945 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %946 = getelementptr inbounds i8, ptr %22, i64 -7
  %947 = getelementptr inbounds i8, ptr %22, i64 -3
  %948 = getelementptr inbounds i8, ptr %22, i64 -1
  %949 = zext i32 %42 to i64
  %950 = sub nsw i64 0, %949
  %951 = getelementptr inbounds i8, ptr %34, i64 %950
  br label %952

952:                                              ; preds = %1770, %931
  %953 = phi ptr [ %929, %931 ], [ %1774, %1770 ]
  %954 = phi ptr [ %935, %931 ], [ %1773, %1770 ]
  %955 = phi ptr [ %3, %931 ], [ %1773, %1770 ]
  %956 = phi i32 [ %24, %931 ], [ %1772, %1770 ]
  %957 = phi i32 [ %26, %931 ], [ %1771, %1770 ]
  %958 = load i64, ptr %954, align 1, !tbaa !22
  %959 = mul i64 %958, -3523014627271114752
  %960 = lshr i64 %959, %939
  %961 = lshr i64 %960, 8
  %962 = getelementptr inbounds nuw i32, ptr %30, i64 %961
  %963 = load i32, ptr %962, align 4, !tbaa !23
  %964 = zext i32 %963 to i64
  %965 = xor i64 %960, %964
  %966 = getelementptr inbounds nuw i8, ptr %954, i64 256
  br label %967

967:                                              ; preds = %1669, %952
  %968 = phi ptr [ %966, %952 ], [ %1671, %1669 ]
  %969 = phi i64 [ %17, %952 ], [ %1666, %1669 ]
  %970 = phi i64 [ %965, %952 ], [ %1676, %1669 ]
  %971 = phi i32 [ %963, %952 ], [ %1674, %1669 ]
  %972 = phi i64 [ %959, %952 ], [ %988, %1669 ]
  %973 = phi ptr [ %953, %952 ], [ %1667, %1669 ]
  %974 = phi ptr [ %954, %952 ], [ %973, %1669 ]
  %975 = lshr i64 %972, %937
  %976 = getelementptr inbounds nuw i32, ptr %9, i64 %975
  %977 = load i32, ptr %976, align 4, !tbaa !23
  %978 = and i64 %970, 255
  %979 = icmp eq i64 %978, 0
  %980 = ptrtoint ptr %974 to i64
  %981 = sub i64 %980, %52
  %982 = trunc i64 %981 to i32
  %983 = zext i32 %977 to i64
  %984 = getelementptr inbounds nuw i8, ptr %16, i64 %983
  %985 = sub i32 %982, %956
  %986 = add i32 %985, 1
  %987 = load i64, ptr %973, align 1, !tbaa !22
  %988 = mul i64 %987, -3523014627271114752
  %989 = lshr i64 %988, %939
  store i32 %982, ptr %976, align 4, !tbaa !23
  %990 = sub i32 %986, %19
  %991 = icmp ugt i32 %990, -4
  br i1 %991, label %1181, label %992

992:                                              ; preds = %967
  %993 = icmp ult i32 %986, %19
  %994 = sub i32 %986, %42
  %995 = zext i32 %994 to i64
  %996 = getelementptr inbounds nuw i8, ptr %34, i64 %995
  %997 = zext i32 %986 to i64
  %998 = getelementptr inbounds nuw i8, ptr %16, i64 %997
  %999 = select i1 %993, ptr %996, ptr %998
  %1000 = load i32, ptr %999, align 1, !tbaa !23
  %1001 = getelementptr inbounds nuw i8, ptr %974, i64 1
  %1002 = load i32, ptr %1001, align 1, !tbaa !23
  %1003 = icmp eq i32 %1000, %1002
  br i1 %1003, label %1004, label %1181

1004:                                             ; preds = %992
  %1005 = ptrtoint ptr %974 to i64
  %1006 = getelementptr inbounds nuw i8, ptr %974, i64 1
  %1007 = select i1 %993, ptr %37, ptr %22
  %1008 = getelementptr inbounds nuw i8, ptr %974, i64 5
  %1009 = getelementptr inbounds nuw i8, ptr %999, i64 4
  %1010 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1008, ptr noundef nonnull %1009, ptr noundef %22, ptr noundef %1007, ptr noundef %21)
  %1011 = add i64 %1010, 4
  %1012 = ptrtoint ptr %1006 to i64
  %1013 = ptrtoint ptr %955 to i64
  %1014 = sub i64 %1012, %1013
  %1015 = icmp ugt ptr %1006, %940
  %1016 = load ptr, ptr %941, align 8, !tbaa !39
  br i1 %1015, label %1040, label %1017

1017:                                             ; preds = %1004
  %1018 = load <2 x i64>, ptr %955, align 1, !tbaa !34
  store <2 x i64> %1018, ptr %1016, align 1, !tbaa !34
  %1019 = icmp ugt i64 %1014, 16
  br i1 %1019, label %1020, label %1159

1020:                                             ; preds = %1017
  %1021 = load ptr, ptr %941, align 8, !tbaa !39
  %1022 = getelementptr inbounds nuw i8, ptr %1021, i64 16
  %1023 = getelementptr inbounds nuw i8, ptr %955, i64 16
  %1024 = add i64 %1014, -16
  %1025 = getelementptr i8, ptr %1021, i64 %1014
  %1026 = load <2 x i64>, ptr %1023, align 1, !tbaa !34
  store <2 x i64> %1026, ptr %1022, align 1, !tbaa !34
  %1027 = icmp ult i64 %1024, 17
  br i1 %1027, label %1159, label %1028

1028:                                             ; preds = %1020
  %1029 = getelementptr inbounds nuw i8, ptr %1021, i64 32
  br label %1030

1030:                                             ; preds = %1030, %1028
  %1031 = phi ptr [ %1029, %1028 ], [ %1038, %1030 ]
  %1032 = phi ptr [ %1023, %1028 ], [ %1036, %1030 ]
  %1033 = getelementptr inbounds nuw i8, ptr %1032, i64 16
  %1034 = load <2 x i64>, ptr %1033, align 1, !tbaa !34
  store <2 x i64> %1034, ptr %1031, align 1, !tbaa !34
  %1035 = getelementptr inbounds nuw i8, ptr %1031, i64 16
  %1036 = getelementptr inbounds nuw i8, ptr %1032, i64 32
  %1037 = load <2 x i64>, ptr %1036, align 1, !tbaa !34
  store <2 x i64> %1037, ptr %1035, align 1, !tbaa !34
  %1038 = getelementptr inbounds nuw i8, ptr %1031, i64 32
  %1039 = icmp ult ptr %1038, %1025
  br i1 %1039, label %1030, label %1163, !llvm.loop !42

1040:                                             ; preds = %1004
  %1041 = icmp ugt ptr %955, %940
  br i1 %1041, label %1059, label %1042

1042:                                             ; preds = %1040
  %1043 = sub i64 %942, %1013
  %1044 = getelementptr inbounds i8, ptr %1016, i64 %1043
  %1045 = load <2 x i64>, ptr %955, align 1, !tbaa !34
  store <2 x i64> %1045, ptr %1016, align 1, !tbaa !34
  %1046 = icmp ult i64 %1043, 17
  br i1 %1046, label %1059, label %1047

1047:                                             ; preds = %1042
  %1048 = getelementptr inbounds nuw i8, ptr %1016, i64 16
  br label %1049

1049:                                             ; preds = %1049, %1047
  %1050 = phi ptr [ %1048, %1047 ], [ %1057, %1049 ]
  %1051 = phi ptr [ %955, %1047 ], [ %1055, %1049 ]
  %1052 = getelementptr inbounds nuw i8, ptr %1051, i64 16
  %1053 = load <2 x i64>, ptr %1052, align 1, !tbaa !34
  store <2 x i64> %1053, ptr %1050, align 1, !tbaa !34
  %1054 = getelementptr inbounds nuw i8, ptr %1050, i64 16
  %1055 = getelementptr inbounds nuw i8, ptr %1051, i64 32
  %1056 = load <2 x i64>, ptr %1055, align 1, !tbaa !34
  store <2 x i64> %1056, ptr %1054, align 1, !tbaa !34
  %1057 = getelementptr inbounds nuw i8, ptr %1050, i64 32
  %1058 = icmp ult ptr %1057, %1044
  br i1 %1058, label %1049, label %1059, !llvm.loop !42

1059:                                             ; preds = %1049, %1042, %1040
  %1060 = phi ptr [ %940, %1042 ], [ %955, %1040 ], [ %940, %1049 ]
  %1061 = phi ptr [ %1044, %1042 ], [ %1016, %1040 ], [ %1044, %1049 ]
  %1062 = icmp ult ptr %1060, %1006
  br i1 %1062, label %1063, label %1163

1063:                                             ; preds = %1059
  %1064 = ptrtoint ptr %1060 to i64
  %1065 = ptrtoint ptr %1061 to i64
  %1066 = ptrtoint ptr %1060 to i64
  %1067 = sub i64 %1005, %1066
  %1068 = add i64 %1067, 1
  %1069 = icmp ult i64 %1068, 4
  %1070 = sub i64 %1065, %1064
  %1071 = icmp ult i64 %1070, 32
  %1072 = select i1 %1069, i1 true, i1 %1071
  br i1 %1072, label %1108, label %1073

1073:                                             ; preds = %1063
  %1074 = icmp ult i64 %1068, 32
  br i1 %1074, label %1094, label %1075

1075:                                             ; preds = %1073
  %1076 = and i64 %1068, -32
  br label %1077

1077:                                             ; preds = %1077, %1075
  %1078 = phi i64 [ 0, %1075 ], [ %1085, %1077 ]
  %1079 = getelementptr i8, ptr %1061, i64 %1078
  %1080 = getelementptr i8, ptr %1060, i64 %1078
  %1081 = getelementptr i8, ptr %1080, i64 16
  %1082 = load <16 x i8>, ptr %1080, align 1, !tbaa !34
  %1083 = load <16 x i8>, ptr %1081, align 1, !tbaa !34
  %1084 = getelementptr i8, ptr %1079, i64 16
  store <16 x i8> %1082, ptr %1079, align 1, !tbaa !34
  store <16 x i8> %1083, ptr %1084, align 1, !tbaa !34
  %1085 = add nuw i64 %1078, 32
  %1086 = icmp eq i64 %1085, %1076
  br i1 %1086, label %1087, label %1077, !llvm.loop !106

1087:                                             ; preds = %1077
  %1088 = icmp eq i64 %1068, %1076
  br i1 %1088, label %1163, label %1089

1089:                                             ; preds = %1087
  %1090 = getelementptr i8, ptr %1061, i64 %1076
  %1091 = getelementptr i8, ptr %1060, i64 %1076
  %1092 = and i64 %1068, 28
  %1093 = icmp eq i64 %1092, 0
  br i1 %1093, label %1108, label %1094

1094:                                             ; preds = %1089, %1073
  %1095 = phi i64 [ %1076, %1089 ], [ 0, %1073 ]
  %1096 = and i64 %1068, -4
  %1097 = getelementptr i8, ptr %1061, i64 %1096
  %1098 = getelementptr i8, ptr %1060, i64 %1096
  br label %1099

1099:                                             ; preds = %1099, %1094
  %1100 = phi i64 [ %1095, %1094 ], [ %1104, %1099 ]
  %1101 = getelementptr i8, ptr %1061, i64 %1100
  %1102 = getelementptr i8, ptr %1060, i64 %1100
  %1103 = load <4 x i8>, ptr %1102, align 1, !tbaa !34
  store <4 x i8> %1103, ptr %1101, align 1, !tbaa !34
  %1104 = add nuw i64 %1100, 4
  %1105 = icmp eq i64 %1104, %1096
  br i1 %1105, label %1106, label %1099, !llvm.loop !107

1106:                                             ; preds = %1099
  %1107 = icmp eq i64 %1068, %1096
  br i1 %1107, label %1163, label %1108

1108:                                             ; preds = %1089, %1106, %1063
  %1109 = phi ptr [ %1061, %1063 ], [ %1090, %1089 ], [ %1097, %1106 ]
  %1110 = phi ptr [ %1060, %1063 ], [ %1091, %1089 ], [ %1098, %1106 ]
  %1111 = ptrtoint ptr %1110 to i64
  %1112 = sub i64 %1005, %1111
  %1113 = add i64 %1112, 1
  %1114 = sub i64 %1005, %1111
  %1115 = and i64 %1113, 7
  %1116 = and i64 %1112, 7
  %1117 = icmp eq i64 %1116, 7
  br i1 %1117, label %1127, label %1118

1118:                                             ; preds = %1108, %1118
  %1119 = phi ptr [ %1124, %1118 ], [ %1109, %1108 ]
  %1120 = phi ptr [ %1122, %1118 ], [ %1110, %1108 ]
  %1121 = phi i64 [ %1125, %1118 ], [ 0, %1108 ]
  %1122 = getelementptr inbounds nuw i8, ptr %1120, i64 1
  %1123 = load i8, ptr %1120, align 1, !tbaa !34
  %1124 = getelementptr inbounds nuw i8, ptr %1119, i64 1
  store i8 %1123, ptr %1119, align 1, !tbaa !34
  %1125 = add i64 %1121, 1
  %1126 = icmp eq i64 %1125, %1115
  br i1 %1126, label %1127, label %1118, !llvm.loop !108

1127:                                             ; preds = %1118, %1108
  %1128 = phi ptr [ %1109, %1108 ], [ %1124, %1118 ]
  %1129 = phi ptr [ %1110, %1108 ], [ %1122, %1118 ]
  %1130 = icmp ult i64 %1114, 7
  br i1 %1130, label %1163, label %1131

1131:                                             ; preds = %1127, %1131
  %1132 = phi ptr [ %1157, %1131 ], [ %1128, %1127 ]
  %1133 = phi ptr [ %1155, %1131 ], [ %1129, %1127 ]
  %1134 = getelementptr inbounds nuw i8, ptr %1133, i64 1
  %1135 = load i8, ptr %1133, align 1, !tbaa !34
  %1136 = getelementptr inbounds nuw i8, ptr %1132, i64 1
  store i8 %1135, ptr %1132, align 1, !tbaa !34
  %1137 = getelementptr inbounds nuw i8, ptr %1133, i64 2
  %1138 = load i8, ptr %1134, align 1, !tbaa !34
  %1139 = getelementptr inbounds nuw i8, ptr %1132, i64 2
  store i8 %1138, ptr %1136, align 1, !tbaa !34
  %1140 = getelementptr inbounds nuw i8, ptr %1133, i64 3
  %1141 = load i8, ptr %1137, align 1, !tbaa !34
  %1142 = getelementptr inbounds nuw i8, ptr %1132, i64 3
  store i8 %1141, ptr %1139, align 1, !tbaa !34
  %1143 = getelementptr inbounds nuw i8, ptr %1133, i64 4
  %1144 = load i8, ptr %1140, align 1, !tbaa !34
  %1145 = getelementptr inbounds nuw i8, ptr %1132, i64 4
  store i8 %1144, ptr %1142, align 1, !tbaa !34
  %1146 = getelementptr inbounds nuw i8, ptr %1133, i64 5
  %1147 = load i8, ptr %1143, align 1, !tbaa !34
  %1148 = getelementptr inbounds nuw i8, ptr %1132, i64 5
  store i8 %1147, ptr %1145, align 1, !tbaa !34
  %1149 = getelementptr inbounds nuw i8, ptr %1133, i64 6
  %1150 = load i8, ptr %1146, align 1, !tbaa !34
  %1151 = getelementptr inbounds nuw i8, ptr %1132, i64 6
  store i8 %1150, ptr %1148, align 1, !tbaa !34
  %1152 = getelementptr inbounds nuw i8, ptr %1133, i64 7
  %1153 = load i8, ptr %1149, align 1, !tbaa !34
  %1154 = getelementptr inbounds nuw i8, ptr %1132, i64 7
  store i8 %1153, ptr %1151, align 1, !tbaa !34
  %1155 = getelementptr inbounds nuw i8, ptr %1133, i64 8
  %1156 = load i8, ptr %1152, align 1, !tbaa !34
  %1157 = getelementptr inbounds nuw i8, ptr %1132, i64 8
  store i8 %1156, ptr %1154, align 1, !tbaa !34
  %1158 = icmp eq ptr %1152, %974
  br i1 %1158, label %1163, label %1131, !llvm.loop !109

1159:                                             ; preds = %1020, %1017
  %1160 = load ptr, ptr %941, align 8, !tbaa !39
  %1161 = getelementptr inbounds nuw i8, ptr %1160, i64 %1014
  store ptr %1161, ptr %941, align 8, !tbaa !39
  %1162 = load ptr, ptr %944, align 8, !tbaa !50
  br label %1175

1163:                                             ; preds = %1030, %1127, %1131, %1087, %1106, %1059
  %1164 = load ptr, ptr %941, align 8, !tbaa !39
  %1165 = getelementptr inbounds nuw i8, ptr %1164, i64 %1014
  store ptr %1165, ptr %941, align 8, !tbaa !39
  %1166 = icmp ugt i64 %1014, 65535
  %1167 = load ptr, ptr %944, align 8, !tbaa !50
  br i1 %1166, label %1168, label %1175, !prof !51

1168:                                             ; preds = %1163
  store i32 1, ptr %943, align 8, !tbaa !52
  %1169 = load ptr, ptr %1, align 8, !tbaa !53
  %1170 = ptrtoint ptr %1167 to i64
  %1171 = ptrtoint ptr %1169 to i64
  %1172 = sub i64 %1170, %1171
  %1173 = lshr exact i64 %1172, 3
  %1174 = trunc i64 %1173 to i32
  store i32 %1174, ptr %945, align 4, !tbaa !54
  br label %1175

1175:                                             ; preds = %1168, %1163, %1159
  %1176 = phi ptr [ %1162, %1159 ], [ %1167, %1168 ], [ %1167, %1163 ]
  %1177 = trunc i64 %1014 to i16
  %1178 = getelementptr inbounds nuw i8, ptr %1176, i64 4
  store i16 %1177, ptr %1178, align 4, !tbaa !55
  store i32 1, ptr %1176, align 4, !tbaa !57
  %1179 = add i64 %1010, 1
  %1180 = icmp ugt i64 %1179, 65535
  br i1 %1180, label %1677, label %1690, !prof !58

1181:                                             ; preds = %992, %967
  br i1 %979, label %1182, label %1391

1182:                                             ; preds = %1181
  %1183 = lshr i32 %971, 8
  %1184 = icmp ugt i32 %1183, %32
  br i1 %1184, label %1185, label %1391

1185:                                             ; preds = %1182
  %1186 = zext nneg i32 %1183 to i64
  %1187 = getelementptr inbounds nuw i8, ptr %34, i64 %1186
  %1188 = load i32, ptr %1187, align 1, !tbaa !23
  %1189 = load i32, ptr %974, align 1, !tbaa !23
  %1190 = icmp ne i32 %1188, %1189
  %1191 = icmp ugt i32 %977, %19
  %1192 = select i1 %1190, i1 true, i1 %1191
  br i1 %1192, label %1391, label %1193

1193:                                             ; preds = %1185
  %1194 = getelementptr inbounds nuw i8, ptr %34, i64 %1186
  %1195 = add i32 %1183, %42
  %1196 = sub i32 %982, %1195
  %1197 = getelementptr inbounds nuw i8, ptr %974, i64 4
  %1198 = getelementptr inbounds nuw i8, ptr %1194, i64 4
  %1199 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1197, ptr noundef nonnull %1198, ptr noundef %22, ptr noundef %37, ptr noundef %21)
  %1200 = add i64 %1199, 4
  %1201 = icmp ugt ptr %974, %955
  br i1 %1201, label %1202, label %1220

1202:                                             ; preds = %1193, %1211
  %1203 = phi ptr [ %1206, %1211 ], [ %974, %1193 ]
  %1204 = phi i64 [ %1212, %1211 ], [ %1200, %1193 ]
  %1205 = phi ptr [ %1208, %1211 ], [ %1194, %1193 ]
  %1206 = getelementptr inbounds i8, ptr %1203, i64 -1
  %1207 = load i8, ptr %1206, align 1, !tbaa !34
  %1208 = getelementptr inbounds i8, ptr %1205, i64 -1
  %1209 = load i8, ptr %1208, align 1, !tbaa !34
  %1210 = icmp eq i8 %1207, %1209
  br i1 %1210, label %1211, label %1216

1211:                                             ; preds = %1202
  %1212 = add i64 %1204, 1
  %1213 = icmp ugt ptr %1206, %955
  %1214 = icmp ugt ptr %1208, %36
  %1215 = and i1 %1213, %1214
  br i1 %1215, label %1202, label %1216, !llvm.loop !96

1216:                                             ; preds = %1211, %1202
  %1217 = phi i64 [ %1212, %1211 ], [ %1204, %1202 ]
  %1218 = phi ptr [ %1206, %1211 ], [ %1203, %1202 ]
  %1219 = ptrtoint ptr %1218 to i64
  br label %1220

1220:                                             ; preds = %1216, %1193
  %1221 = phi i64 [ %1219, %1216 ], [ %980, %1193 ]
  %1222 = phi i64 [ %1217, %1216 ], [ %1200, %1193 ]
  %1223 = phi ptr [ %1218, %1216 ], [ %974, %1193 ]
  %1224 = ptrtoint ptr %1223 to i64
  %1225 = ptrtoint ptr %955 to i64
  %1226 = sub i64 %1221, %1225
  %1227 = add i32 %1196, 3
  %1228 = icmp ugt ptr %1223, %940
  %1229 = load ptr, ptr %941, align 8, !tbaa !39
  br i1 %1228, label %1253, label %1230

1230:                                             ; preds = %1220
  %1231 = load <2 x i64>, ptr %955, align 1, !tbaa !34
  store <2 x i64> %1231, ptr %1229, align 1, !tbaa !34
  %1232 = icmp ugt i64 %1226, 16
  br i1 %1232, label %1233, label %1369

1233:                                             ; preds = %1230
  %1234 = load ptr, ptr %941, align 8, !tbaa !39
  %1235 = getelementptr inbounds nuw i8, ptr %1234, i64 16
  %1236 = getelementptr inbounds nuw i8, ptr %955, i64 16
  %1237 = add i64 %1226, -16
  %1238 = getelementptr i8, ptr %1234, i64 %1226
  %1239 = load <2 x i64>, ptr %1236, align 1, !tbaa !34
  store <2 x i64> %1239, ptr %1235, align 1, !tbaa !34
  %1240 = icmp ult i64 %1237, 17
  br i1 %1240, label %1369, label %1241

1241:                                             ; preds = %1233
  %1242 = getelementptr inbounds nuw i8, ptr %1234, i64 32
  br label %1243

1243:                                             ; preds = %1243, %1241
  %1244 = phi ptr [ %1242, %1241 ], [ %1251, %1243 ]
  %1245 = phi ptr [ %1236, %1241 ], [ %1249, %1243 ]
  %1246 = getelementptr inbounds nuw i8, ptr %1245, i64 16
  %1247 = load <2 x i64>, ptr %1246, align 1, !tbaa !34
  store <2 x i64> %1247, ptr %1244, align 1, !tbaa !34
  %1248 = getelementptr inbounds nuw i8, ptr %1244, i64 16
  %1249 = getelementptr inbounds nuw i8, ptr %1245, i64 32
  %1250 = load <2 x i64>, ptr %1249, align 1, !tbaa !34
  store <2 x i64> %1250, ptr %1248, align 1, !tbaa !34
  %1251 = getelementptr inbounds nuw i8, ptr %1244, i64 32
  %1252 = icmp ult ptr %1251, %1238
  br i1 %1252, label %1243, label %1373, !llvm.loop !42

1253:                                             ; preds = %1220
  %1254 = icmp ugt ptr %955, %940
  br i1 %1254, label %1272, label %1255

1255:                                             ; preds = %1253
  %1256 = sub i64 %942, %1225
  %1257 = getelementptr inbounds i8, ptr %1229, i64 %1256
  %1258 = load <2 x i64>, ptr %955, align 1, !tbaa !34
  store <2 x i64> %1258, ptr %1229, align 1, !tbaa !34
  %1259 = icmp ult i64 %1256, 17
  br i1 %1259, label %1272, label %1260

1260:                                             ; preds = %1255
  %1261 = getelementptr inbounds nuw i8, ptr %1229, i64 16
  br label %1262

1262:                                             ; preds = %1262, %1260
  %1263 = phi ptr [ %1261, %1260 ], [ %1270, %1262 ]
  %1264 = phi ptr [ %955, %1260 ], [ %1268, %1262 ]
  %1265 = getelementptr inbounds nuw i8, ptr %1264, i64 16
  %1266 = load <2 x i64>, ptr %1265, align 1, !tbaa !34
  store <2 x i64> %1266, ptr %1263, align 1, !tbaa !34
  %1267 = getelementptr inbounds nuw i8, ptr %1263, i64 16
  %1268 = getelementptr inbounds nuw i8, ptr %1264, i64 32
  %1269 = load <2 x i64>, ptr %1268, align 1, !tbaa !34
  store <2 x i64> %1269, ptr %1267, align 1, !tbaa !34
  %1270 = getelementptr inbounds nuw i8, ptr %1263, i64 32
  %1271 = icmp ult ptr %1270, %1257
  br i1 %1271, label %1262, label %1272, !llvm.loop !42

1272:                                             ; preds = %1262, %1255, %1253
  %1273 = phi ptr [ %940, %1255 ], [ %955, %1253 ], [ %940, %1262 ]
  %1274 = phi ptr [ %1257, %1255 ], [ %1229, %1253 ], [ %1257, %1262 ]
  %1275 = icmp ult ptr %1273, %1223
  br i1 %1275, label %1276, label %1373

1276:                                             ; preds = %1272
  %1277 = ptrtoint ptr %1273 to i64
  %1278 = ptrtoint ptr %1274 to i64
  %1279 = ptrtoint ptr %1273 to i64
  %1280 = sub i64 %1224, %1279
  %1281 = icmp ult i64 %1280, 4
  %1282 = sub i64 %1278, %1277
  %1283 = icmp ult i64 %1282, 32
  %1284 = select i1 %1281, i1 true, i1 %1283
  br i1 %1284, label %1320, label %1285

1285:                                             ; preds = %1276
  %1286 = icmp ult i64 %1280, 32
  br i1 %1286, label %1306, label %1287

1287:                                             ; preds = %1285
  %1288 = and i64 %1280, -32
  br label %1289

1289:                                             ; preds = %1289, %1287
  %1290 = phi i64 [ 0, %1287 ], [ %1297, %1289 ]
  %1291 = getelementptr i8, ptr %1274, i64 %1290
  %1292 = getelementptr i8, ptr %1273, i64 %1290
  %1293 = getelementptr i8, ptr %1292, i64 16
  %1294 = load <16 x i8>, ptr %1292, align 1, !tbaa !34
  %1295 = load <16 x i8>, ptr %1293, align 1, !tbaa !34
  %1296 = getelementptr i8, ptr %1291, i64 16
  store <16 x i8> %1294, ptr %1291, align 1, !tbaa !34
  store <16 x i8> %1295, ptr %1296, align 1, !tbaa !34
  %1297 = add nuw i64 %1290, 32
  %1298 = icmp eq i64 %1297, %1288
  br i1 %1298, label %1299, label %1289, !llvm.loop !110

1299:                                             ; preds = %1289
  %1300 = icmp eq i64 %1280, %1288
  br i1 %1300, label %1373, label %1301

1301:                                             ; preds = %1299
  %1302 = getelementptr i8, ptr %1274, i64 %1288
  %1303 = getelementptr i8, ptr %1273, i64 %1288
  %1304 = and i64 %1280, 28
  %1305 = icmp eq i64 %1304, 0
  br i1 %1305, label %1320, label %1306

1306:                                             ; preds = %1301, %1285
  %1307 = phi i64 [ %1288, %1301 ], [ 0, %1285 ]
  %1308 = and i64 %1280, -4
  %1309 = getelementptr i8, ptr %1274, i64 %1308
  %1310 = getelementptr i8, ptr %1273, i64 %1308
  br label %1311

1311:                                             ; preds = %1311, %1306
  %1312 = phi i64 [ %1307, %1306 ], [ %1316, %1311 ]
  %1313 = getelementptr i8, ptr %1274, i64 %1312
  %1314 = getelementptr i8, ptr %1273, i64 %1312
  %1315 = load <4 x i8>, ptr %1314, align 1, !tbaa !34
  store <4 x i8> %1315, ptr %1313, align 1, !tbaa !34
  %1316 = add nuw i64 %1312, 4
  %1317 = icmp eq i64 %1316, %1308
  br i1 %1317, label %1318, label %1311, !llvm.loop !111

1318:                                             ; preds = %1311
  %1319 = icmp eq i64 %1280, %1308
  br i1 %1319, label %1373, label %1320

1320:                                             ; preds = %1301, %1318, %1276
  %1321 = phi ptr [ %1274, %1276 ], [ %1302, %1301 ], [ %1309, %1318 ]
  %1322 = phi ptr [ %1273, %1276 ], [ %1303, %1301 ], [ %1310, %1318 ]
  %1323 = ptrtoint ptr %1322 to i64
  %1324 = sub i64 %1224, %1323
  %1325 = and i64 %1324, 7
  %1326 = icmp eq i64 %1325, 0
  br i1 %1326, label %1336, label %1327

1327:                                             ; preds = %1320, %1327
  %1328 = phi ptr [ %1333, %1327 ], [ %1321, %1320 ]
  %1329 = phi ptr [ %1331, %1327 ], [ %1322, %1320 ]
  %1330 = phi i64 [ %1334, %1327 ], [ 0, %1320 ]
  %1331 = getelementptr inbounds nuw i8, ptr %1329, i64 1
  %1332 = load i8, ptr %1329, align 1, !tbaa !34
  %1333 = getelementptr inbounds nuw i8, ptr %1328, i64 1
  store i8 %1332, ptr %1328, align 1, !tbaa !34
  %1334 = add i64 %1330, 1
  %1335 = icmp eq i64 %1334, %1325
  br i1 %1335, label %1336, label %1327, !llvm.loop !112

1336:                                             ; preds = %1327, %1320
  %1337 = phi ptr [ %1321, %1320 ], [ %1333, %1327 ]
  %1338 = phi ptr [ %1322, %1320 ], [ %1331, %1327 ]
  %1339 = sub i64 %1323, %1224
  %1340 = icmp ugt i64 %1339, -8
  br i1 %1340, label %1373, label %1341

1341:                                             ; preds = %1336, %1341
  %1342 = phi ptr [ %1367, %1341 ], [ %1337, %1336 ]
  %1343 = phi ptr [ %1365, %1341 ], [ %1338, %1336 ]
  %1344 = getelementptr inbounds nuw i8, ptr %1343, i64 1
  %1345 = load i8, ptr %1343, align 1, !tbaa !34
  %1346 = getelementptr inbounds nuw i8, ptr %1342, i64 1
  store i8 %1345, ptr %1342, align 1, !tbaa !34
  %1347 = getelementptr inbounds nuw i8, ptr %1343, i64 2
  %1348 = load i8, ptr %1344, align 1, !tbaa !34
  %1349 = getelementptr inbounds nuw i8, ptr %1342, i64 2
  store i8 %1348, ptr %1346, align 1, !tbaa !34
  %1350 = getelementptr inbounds nuw i8, ptr %1343, i64 3
  %1351 = load i8, ptr %1347, align 1, !tbaa !34
  %1352 = getelementptr inbounds nuw i8, ptr %1342, i64 3
  store i8 %1351, ptr %1349, align 1, !tbaa !34
  %1353 = getelementptr inbounds nuw i8, ptr %1343, i64 4
  %1354 = load i8, ptr %1350, align 1, !tbaa !34
  %1355 = getelementptr inbounds nuw i8, ptr %1342, i64 4
  store i8 %1354, ptr %1352, align 1, !tbaa !34
  %1356 = getelementptr inbounds nuw i8, ptr %1343, i64 5
  %1357 = load i8, ptr %1353, align 1, !tbaa !34
  %1358 = getelementptr inbounds nuw i8, ptr %1342, i64 5
  store i8 %1357, ptr %1355, align 1, !tbaa !34
  %1359 = getelementptr inbounds nuw i8, ptr %1343, i64 6
  %1360 = load i8, ptr %1356, align 1, !tbaa !34
  %1361 = getelementptr inbounds nuw i8, ptr %1342, i64 6
  store i8 %1360, ptr %1358, align 1, !tbaa !34
  %1362 = getelementptr inbounds nuw i8, ptr %1343, i64 7
  %1363 = load i8, ptr %1359, align 1, !tbaa !34
  %1364 = getelementptr inbounds nuw i8, ptr %1342, i64 7
  store i8 %1363, ptr %1361, align 1, !tbaa !34
  %1365 = getelementptr inbounds nuw i8, ptr %1343, i64 8
  %1366 = load i8, ptr %1362, align 1, !tbaa !34
  %1367 = getelementptr inbounds nuw i8, ptr %1342, i64 8
  store i8 %1366, ptr %1364, align 1, !tbaa !34
  %1368 = icmp eq ptr %1365, %1223
  br i1 %1368, label %1373, label %1341, !llvm.loop !113

1369:                                             ; preds = %1233, %1230
  %1370 = load ptr, ptr %941, align 8, !tbaa !39
  %1371 = getelementptr inbounds nuw i8, ptr %1370, i64 %1226
  store ptr %1371, ptr %941, align 8, !tbaa !39
  %1372 = load ptr, ptr %944, align 8, !tbaa !50
  br label %1385

1373:                                             ; preds = %1243, %1336, %1341, %1299, %1318, %1272
  %1374 = load ptr, ptr %941, align 8, !tbaa !39
  %1375 = getelementptr inbounds nuw i8, ptr %1374, i64 %1226
  store ptr %1375, ptr %941, align 8, !tbaa !39
  %1376 = icmp ugt i64 %1226, 65535
  %1377 = load ptr, ptr %944, align 8, !tbaa !50
  br i1 %1376, label %1378, label %1385, !prof !51

1378:                                             ; preds = %1373
  store i32 1, ptr %943, align 8, !tbaa !52
  %1379 = load ptr, ptr %1, align 8, !tbaa !53
  %1380 = ptrtoint ptr %1377 to i64
  %1381 = ptrtoint ptr %1379 to i64
  %1382 = sub i64 %1380, %1381
  %1383 = lshr exact i64 %1382, 3
  %1384 = trunc i64 %1383 to i32
  store i32 %1384, ptr %945, align 4, !tbaa !54
  br label %1385

1385:                                             ; preds = %1378, %1373, %1369
  %1386 = phi ptr [ %1372, %1369 ], [ %1377, %1378 ], [ %1377, %1373 ]
  %1387 = trunc i64 %1226 to i16
  %1388 = getelementptr inbounds nuw i8, ptr %1386, i64 4
  store i16 %1387, ptr %1388, align 4, !tbaa !55
  store i32 %1227, ptr %1386, align 4, !tbaa !57
  %1389 = add i64 %1222, -3
  %1390 = icmp ugt i64 %1389, 65535
  br i1 %1390, label %1677, label %1690, !prof !58

1391:                                             ; preds = %1185, %1182, %1181
  %1392 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %977, i32 %19, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %984) #7, !srcloc !32
  %1393 = load i32, ptr %974, align 1, !tbaa !23
  %1394 = load i32, ptr %1392, align 1, !tbaa !23
  %1395 = icmp eq i32 %1393, %1394
  br i1 %1395, label %1396, label %1663

1396:                                             ; preds = %1391
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !33
  %1397 = icmp ult i32 %977, %19
  br i1 %1397, label %1663, label %1398

1398:                                             ; preds = %1396
  %1399 = ptrtoint ptr %984 to i64
  %1400 = sub i64 %980, %1399
  %1401 = trunc i64 %1400 to i32
  %1402 = getelementptr inbounds nuw i8, ptr %974, i64 4
  %1403 = getelementptr inbounds nuw i8, ptr %984, i64 4
  %1404 = icmp ult ptr %1402, %946
  br i1 %1404, label %1405, label %1431

1405:                                             ; preds = %1398
  %1406 = load i64, ptr %1403, align 1, !tbaa !22
  %1407 = load i64, ptr %1402, align 1, !tbaa !22
  %1408 = icmp eq i64 %1406, %1407
  br i1 %1408, label %1413, label %1409

1409:                                             ; preds = %1405
  %1410 = xor i64 %1407, %1406
  %1411 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1410, i1 true)
  %1412 = lshr i64 %1411, 3
  br label %1468

1413:                                             ; preds = %1405, %1419
  %1414 = phi ptr [ %1417, %1419 ], [ %1403, %1405 ]
  %1415 = phi ptr [ %1416, %1419 ], [ %1402, %1405 ]
  %1416 = getelementptr inbounds nuw i8, ptr %1415, i64 8
  %1417 = getelementptr inbounds nuw i8, ptr %1414, i64 8
  %1418 = icmp ult ptr %1416, %946
  br i1 %1418, label %1419, label %1431

1419:                                             ; preds = %1413
  %1420 = load i64, ptr %1417, align 1, !tbaa !22
  %1421 = load i64, ptr %1416, align 1, !tbaa !22
  %1422 = icmp eq i64 %1420, %1421
  br i1 %1422, label %1413, label %1423

1423:                                             ; preds = %1419
  %1424 = xor i64 %1421, %1420
  %1425 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1424, i1 true)
  %1426 = lshr i64 %1425, 3
  %1427 = getelementptr inbounds nuw i8, ptr %1416, i64 %1426
  %1428 = ptrtoint ptr %1427 to i64
  %1429 = ptrtoint ptr %1402 to i64
  %1430 = sub i64 %1428, %1429
  br label %1468

1431:                                             ; preds = %1413, %1398
  %1432 = phi ptr [ %1403, %1398 ], [ %1417, %1413 ]
  %1433 = phi ptr [ %1402, %1398 ], [ %1416, %1413 ]
  %1434 = icmp ult ptr %1433, %947
  br i1 %1434, label %1435, label %1442

1435:                                             ; preds = %1431
  %1436 = load i32, ptr %1432, align 1, !tbaa !23
  %1437 = load i32, ptr %1433, align 1, !tbaa !23
  %1438 = icmp eq i32 %1436, %1437
  br i1 %1438, label %1439, label %1442

1439:                                             ; preds = %1435
  %1440 = getelementptr inbounds nuw i8, ptr %1433, i64 4
  %1441 = getelementptr inbounds nuw i8, ptr %1432, i64 4
  br label %1442

1442:                                             ; preds = %1439, %1435, %1431
  %1443 = phi ptr [ %1441, %1439 ], [ %1432, %1435 ], [ %1432, %1431 ]
  %1444 = phi ptr [ %1440, %1439 ], [ %1433, %1435 ], [ %1433, %1431 ]
  %1445 = icmp ult ptr %1444, %948
  br i1 %1445, label %1446, label %1453

1446:                                             ; preds = %1442
  %1447 = load i16, ptr %1443, align 1, !tbaa !37
  %1448 = load i16, ptr %1444, align 1, !tbaa !37
  %1449 = icmp eq i16 %1447, %1448
  br i1 %1449, label %1450, label %1453

1450:                                             ; preds = %1446
  %1451 = getelementptr inbounds nuw i8, ptr %1444, i64 2
  %1452 = getelementptr inbounds nuw i8, ptr %1443, i64 2
  br label %1453

1453:                                             ; preds = %1450, %1446, %1442
  %1454 = phi ptr [ %1452, %1450 ], [ %1443, %1446 ], [ %1443, %1442 ]
  %1455 = phi ptr [ %1451, %1450 ], [ %1444, %1446 ], [ %1444, %1442 ]
  %1456 = icmp ult ptr %1455, %22
  br i1 %1456, label %1457, label %1463

1457:                                             ; preds = %1453
  %1458 = load i8, ptr %1454, align 1, !tbaa !34
  %1459 = load i8, ptr %1455, align 1, !tbaa !34
  %1460 = icmp eq i8 %1458, %1459
  %1461 = zext i1 %1460 to i64
  %1462 = getelementptr inbounds nuw i8, ptr %1455, i64 %1461
  br label %1463

1463:                                             ; preds = %1457, %1453
  %1464 = phi ptr [ %1455, %1453 ], [ %1462, %1457 ]
  %1465 = ptrtoint ptr %1464 to i64
  %1466 = ptrtoint ptr %1402 to i64
  %1467 = sub i64 %1465, %1466
  br label %1468

1468:                                             ; preds = %1463, %1423, %1409
  %1469 = phi i64 [ %1467, %1463 ], [ %1412, %1409 ], [ %1430, %1423 ]
  %1470 = add i64 %1469, 4
  %1471 = icmp ugt ptr %974, %955
  %1472 = icmp ugt i32 %977, %19
  %1473 = and i1 %1471, %1472
  br i1 %1473, label %1474, label %1492

1474:                                             ; preds = %1468, %1483
  %1475 = phi ptr [ %1478, %1483 ], [ %974, %1468 ]
  %1476 = phi i64 [ %1484, %1483 ], [ %1470, %1468 ]
  %1477 = phi ptr [ %1480, %1483 ], [ %984, %1468 ]
  %1478 = getelementptr inbounds i8, ptr %1475, i64 -1
  %1479 = load i8, ptr %1478, align 1, !tbaa !34
  %1480 = getelementptr inbounds i8, ptr %1477, i64 -1
  %1481 = load i8, ptr %1480, align 1, !tbaa !34
  %1482 = icmp eq i8 %1479, %1481
  br i1 %1482, label %1483, label %1488

1483:                                             ; preds = %1474
  %1484 = add i64 %1476, 1
  %1485 = icmp ugt ptr %1478, %955
  %1486 = icmp ugt ptr %1480, %21
  %1487 = and i1 %1485, %1486
  br i1 %1487, label %1474, label %1488, !llvm.loop !101

1488:                                             ; preds = %1483, %1474
  %1489 = phi i64 [ %1484, %1483 ], [ %1476, %1474 ]
  %1490 = phi ptr [ %1478, %1483 ], [ %1475, %1474 ]
  %1491 = ptrtoint ptr %1490 to i64
  br label %1492

1492:                                             ; preds = %1488, %1468
  %1493 = phi i64 [ %1491, %1488 ], [ %980, %1468 ]
  %1494 = phi i64 [ %1489, %1488 ], [ %1470, %1468 ]
  %1495 = phi ptr [ %1490, %1488 ], [ %974, %1468 ]
  %1496 = ptrtoint ptr %1495 to i64
  %1497 = ptrtoint ptr %955 to i64
  %1498 = sub i64 %1493, %1497
  %1499 = add i32 %1401, 3
  %1500 = icmp ugt ptr %1495, %940
  %1501 = load ptr, ptr %941, align 8, !tbaa !39
  br i1 %1500, label %1525, label %1502

1502:                                             ; preds = %1492
  %1503 = load <2 x i64>, ptr %955, align 1, !tbaa !34
  store <2 x i64> %1503, ptr %1501, align 1, !tbaa !34
  %1504 = icmp ugt i64 %1498, 16
  br i1 %1504, label %1505, label %1641

1505:                                             ; preds = %1502
  %1506 = load ptr, ptr %941, align 8, !tbaa !39
  %1507 = getelementptr inbounds nuw i8, ptr %1506, i64 16
  %1508 = getelementptr inbounds nuw i8, ptr %955, i64 16
  %1509 = add i64 %1498, -16
  %1510 = getelementptr i8, ptr %1506, i64 %1498
  %1511 = load <2 x i64>, ptr %1508, align 1, !tbaa !34
  store <2 x i64> %1511, ptr %1507, align 1, !tbaa !34
  %1512 = icmp ult i64 %1509, 17
  br i1 %1512, label %1641, label %1513

1513:                                             ; preds = %1505
  %1514 = getelementptr inbounds nuw i8, ptr %1506, i64 32
  br label %1515

1515:                                             ; preds = %1515, %1513
  %1516 = phi ptr [ %1514, %1513 ], [ %1523, %1515 ]
  %1517 = phi ptr [ %1508, %1513 ], [ %1521, %1515 ]
  %1518 = getelementptr inbounds nuw i8, ptr %1517, i64 16
  %1519 = load <2 x i64>, ptr %1518, align 1, !tbaa !34
  store <2 x i64> %1519, ptr %1516, align 1, !tbaa !34
  %1520 = getelementptr inbounds nuw i8, ptr %1516, i64 16
  %1521 = getelementptr inbounds nuw i8, ptr %1517, i64 32
  %1522 = load <2 x i64>, ptr %1521, align 1, !tbaa !34
  store <2 x i64> %1522, ptr %1520, align 1, !tbaa !34
  %1523 = getelementptr inbounds nuw i8, ptr %1516, i64 32
  %1524 = icmp ult ptr %1523, %1510
  br i1 %1524, label %1515, label %1645, !llvm.loop !42

1525:                                             ; preds = %1492
  %1526 = icmp ugt ptr %955, %940
  br i1 %1526, label %1544, label %1527

1527:                                             ; preds = %1525
  %1528 = sub i64 %942, %1497
  %1529 = getelementptr inbounds i8, ptr %1501, i64 %1528
  %1530 = load <2 x i64>, ptr %955, align 1, !tbaa !34
  store <2 x i64> %1530, ptr %1501, align 1, !tbaa !34
  %1531 = icmp ult i64 %1528, 17
  br i1 %1531, label %1544, label %1532

1532:                                             ; preds = %1527
  %1533 = getelementptr inbounds nuw i8, ptr %1501, i64 16
  br label %1534

1534:                                             ; preds = %1534, %1532
  %1535 = phi ptr [ %1533, %1532 ], [ %1542, %1534 ]
  %1536 = phi ptr [ %955, %1532 ], [ %1540, %1534 ]
  %1537 = getelementptr inbounds nuw i8, ptr %1536, i64 16
  %1538 = load <2 x i64>, ptr %1537, align 1, !tbaa !34
  store <2 x i64> %1538, ptr %1535, align 1, !tbaa !34
  %1539 = getelementptr inbounds nuw i8, ptr %1535, i64 16
  %1540 = getelementptr inbounds nuw i8, ptr %1536, i64 32
  %1541 = load <2 x i64>, ptr %1540, align 1, !tbaa !34
  store <2 x i64> %1541, ptr %1539, align 1, !tbaa !34
  %1542 = getelementptr inbounds nuw i8, ptr %1535, i64 32
  %1543 = icmp ult ptr %1542, %1529
  br i1 %1543, label %1534, label %1544, !llvm.loop !42

1544:                                             ; preds = %1534, %1527, %1525
  %1545 = phi ptr [ %940, %1527 ], [ %955, %1525 ], [ %940, %1534 ]
  %1546 = phi ptr [ %1529, %1527 ], [ %1501, %1525 ], [ %1529, %1534 ]
  %1547 = icmp ult ptr %1545, %1495
  br i1 %1547, label %1548, label %1645

1548:                                             ; preds = %1544
  %1549 = ptrtoint ptr %1545 to i64
  %1550 = ptrtoint ptr %1546 to i64
  %1551 = ptrtoint ptr %1545 to i64
  %1552 = sub i64 %1496, %1551
  %1553 = icmp ult i64 %1552, 4
  %1554 = sub i64 %1550, %1549
  %1555 = icmp ult i64 %1554, 32
  %1556 = select i1 %1553, i1 true, i1 %1555
  br i1 %1556, label %1592, label %1557

1557:                                             ; preds = %1548
  %1558 = icmp ult i64 %1552, 32
  br i1 %1558, label %1578, label %1559

1559:                                             ; preds = %1557
  %1560 = and i64 %1552, -32
  br label %1561

1561:                                             ; preds = %1561, %1559
  %1562 = phi i64 [ 0, %1559 ], [ %1569, %1561 ]
  %1563 = getelementptr i8, ptr %1546, i64 %1562
  %1564 = getelementptr i8, ptr %1545, i64 %1562
  %1565 = getelementptr i8, ptr %1564, i64 16
  %1566 = load <16 x i8>, ptr %1564, align 1, !tbaa !34
  %1567 = load <16 x i8>, ptr %1565, align 1, !tbaa !34
  %1568 = getelementptr i8, ptr %1563, i64 16
  store <16 x i8> %1566, ptr %1563, align 1, !tbaa !34
  store <16 x i8> %1567, ptr %1568, align 1, !tbaa !34
  %1569 = add nuw i64 %1562, 32
  %1570 = icmp eq i64 %1569, %1560
  br i1 %1570, label %1571, label %1561, !llvm.loop !114

1571:                                             ; preds = %1561
  %1572 = icmp eq i64 %1552, %1560
  br i1 %1572, label %1645, label %1573

1573:                                             ; preds = %1571
  %1574 = getelementptr i8, ptr %1546, i64 %1560
  %1575 = getelementptr i8, ptr %1545, i64 %1560
  %1576 = and i64 %1552, 28
  %1577 = icmp eq i64 %1576, 0
  br i1 %1577, label %1592, label %1578

1578:                                             ; preds = %1573, %1557
  %1579 = phi i64 [ %1560, %1573 ], [ 0, %1557 ]
  %1580 = and i64 %1552, -4
  %1581 = getelementptr i8, ptr %1546, i64 %1580
  %1582 = getelementptr i8, ptr %1545, i64 %1580
  br label %1583

1583:                                             ; preds = %1583, %1578
  %1584 = phi i64 [ %1579, %1578 ], [ %1588, %1583 ]
  %1585 = getelementptr i8, ptr %1546, i64 %1584
  %1586 = getelementptr i8, ptr %1545, i64 %1584
  %1587 = load <4 x i8>, ptr %1586, align 1, !tbaa !34
  store <4 x i8> %1587, ptr %1585, align 1, !tbaa !34
  %1588 = add nuw i64 %1584, 4
  %1589 = icmp eq i64 %1588, %1580
  br i1 %1589, label %1590, label %1583, !llvm.loop !115

1590:                                             ; preds = %1583
  %1591 = icmp eq i64 %1552, %1580
  br i1 %1591, label %1645, label %1592

1592:                                             ; preds = %1573, %1590, %1548
  %1593 = phi ptr [ %1546, %1548 ], [ %1574, %1573 ], [ %1581, %1590 ]
  %1594 = phi ptr [ %1545, %1548 ], [ %1575, %1573 ], [ %1582, %1590 ]
  %1595 = ptrtoint ptr %1594 to i64
  %1596 = sub i64 %1496, %1595
  %1597 = and i64 %1596, 7
  %1598 = icmp eq i64 %1597, 0
  br i1 %1598, label %1608, label %1599

1599:                                             ; preds = %1592, %1599
  %1600 = phi ptr [ %1605, %1599 ], [ %1593, %1592 ]
  %1601 = phi ptr [ %1603, %1599 ], [ %1594, %1592 ]
  %1602 = phi i64 [ %1606, %1599 ], [ 0, %1592 ]
  %1603 = getelementptr inbounds nuw i8, ptr %1601, i64 1
  %1604 = load i8, ptr %1601, align 1, !tbaa !34
  %1605 = getelementptr inbounds nuw i8, ptr %1600, i64 1
  store i8 %1604, ptr %1600, align 1, !tbaa !34
  %1606 = add i64 %1602, 1
  %1607 = icmp eq i64 %1606, %1597
  br i1 %1607, label %1608, label %1599, !llvm.loop !116

1608:                                             ; preds = %1599, %1592
  %1609 = phi ptr [ %1593, %1592 ], [ %1605, %1599 ]
  %1610 = phi ptr [ %1594, %1592 ], [ %1603, %1599 ]
  %1611 = sub i64 %1595, %1496
  %1612 = icmp ugt i64 %1611, -8
  br i1 %1612, label %1645, label %1613

1613:                                             ; preds = %1608, %1613
  %1614 = phi ptr [ %1639, %1613 ], [ %1609, %1608 ]
  %1615 = phi ptr [ %1637, %1613 ], [ %1610, %1608 ]
  %1616 = getelementptr inbounds nuw i8, ptr %1615, i64 1
  %1617 = load i8, ptr %1615, align 1, !tbaa !34
  %1618 = getelementptr inbounds nuw i8, ptr %1614, i64 1
  store i8 %1617, ptr %1614, align 1, !tbaa !34
  %1619 = getelementptr inbounds nuw i8, ptr %1615, i64 2
  %1620 = load i8, ptr %1616, align 1, !tbaa !34
  %1621 = getelementptr inbounds nuw i8, ptr %1614, i64 2
  store i8 %1620, ptr %1618, align 1, !tbaa !34
  %1622 = getelementptr inbounds nuw i8, ptr %1615, i64 3
  %1623 = load i8, ptr %1619, align 1, !tbaa !34
  %1624 = getelementptr inbounds nuw i8, ptr %1614, i64 3
  store i8 %1623, ptr %1621, align 1, !tbaa !34
  %1625 = getelementptr inbounds nuw i8, ptr %1615, i64 4
  %1626 = load i8, ptr %1622, align 1, !tbaa !34
  %1627 = getelementptr inbounds nuw i8, ptr %1614, i64 4
  store i8 %1626, ptr %1624, align 1, !tbaa !34
  %1628 = getelementptr inbounds nuw i8, ptr %1615, i64 5
  %1629 = load i8, ptr %1625, align 1, !tbaa !34
  %1630 = getelementptr inbounds nuw i8, ptr %1614, i64 5
  store i8 %1629, ptr %1627, align 1, !tbaa !34
  %1631 = getelementptr inbounds nuw i8, ptr %1615, i64 6
  %1632 = load i8, ptr %1628, align 1, !tbaa !34
  %1633 = getelementptr inbounds nuw i8, ptr %1614, i64 6
  store i8 %1632, ptr %1630, align 1, !tbaa !34
  %1634 = getelementptr inbounds nuw i8, ptr %1615, i64 7
  %1635 = load i8, ptr %1631, align 1, !tbaa !34
  %1636 = getelementptr inbounds nuw i8, ptr %1614, i64 7
  store i8 %1635, ptr %1633, align 1, !tbaa !34
  %1637 = getelementptr inbounds nuw i8, ptr %1615, i64 8
  %1638 = load i8, ptr %1634, align 1, !tbaa !34
  %1639 = getelementptr inbounds nuw i8, ptr %1614, i64 8
  store i8 %1638, ptr %1636, align 1, !tbaa !34
  %1640 = icmp eq ptr %1637, %1495
  br i1 %1640, label %1645, label %1613, !llvm.loop !117

1641:                                             ; preds = %1505, %1502
  %1642 = load ptr, ptr %941, align 8, !tbaa !39
  %1643 = getelementptr inbounds nuw i8, ptr %1642, i64 %1498
  store ptr %1643, ptr %941, align 8, !tbaa !39
  %1644 = load ptr, ptr %944, align 8, !tbaa !50
  br label %1657

1645:                                             ; preds = %1515, %1608, %1613, %1571, %1590, %1544
  %1646 = load ptr, ptr %941, align 8, !tbaa !39
  %1647 = getelementptr inbounds nuw i8, ptr %1646, i64 %1498
  store ptr %1647, ptr %941, align 8, !tbaa !39
  %1648 = icmp ugt i64 %1498, 65535
  %1649 = load ptr, ptr %944, align 8, !tbaa !50
  br i1 %1648, label %1650, label %1657, !prof !51

1650:                                             ; preds = %1645
  store i32 1, ptr %943, align 8, !tbaa !52
  %1651 = load ptr, ptr %1, align 8, !tbaa !53
  %1652 = ptrtoint ptr %1649 to i64
  %1653 = ptrtoint ptr %1651 to i64
  %1654 = sub i64 %1652, %1653
  %1655 = lshr exact i64 %1654, 3
  %1656 = trunc i64 %1655 to i32
  store i32 %1656, ptr %945, align 4, !tbaa !54
  br label %1657

1657:                                             ; preds = %1650, %1645, %1641
  %1658 = phi ptr [ %1644, %1641 ], [ %1649, %1650 ], [ %1649, %1645 ]
  %1659 = trunc i64 %1498 to i16
  %1660 = getelementptr inbounds nuw i8, ptr %1658, i64 4
  store i16 %1659, ptr %1660, align 4, !tbaa !55
  store i32 %1499, ptr %1658, align 4, !tbaa !57
  %1661 = add i64 %1494, -3
  %1662 = icmp ugt i64 %1661, 65535
  br i1 %1662, label %1677, label %1690, !prof !58

1663:                                             ; preds = %1396, %1391
  %1664 = icmp uge ptr %973, %968
  %1665 = zext i1 %1664 to i64
  %1666 = add i64 %969, %1665
  %1667 = getelementptr inbounds nuw i8, ptr %973, i64 %1666
  %1668 = icmp ugt ptr %1667, %23
  br i1 %1668, label %3494, label %1669

1669:                                             ; preds = %1663
  %1670 = select i1 %1664, i64 256, i64 0
  %1671 = getelementptr inbounds nuw i8, ptr %968, i64 %1670
  %1672 = lshr i64 %989, 8
  %1673 = getelementptr inbounds nuw i32, ptr %30, i64 %1672
  %1674 = load i32, ptr %1673, align 4, !tbaa !23
  %1675 = zext i32 %1674 to i64
  %1676 = xor i64 %989, %1675
  br label %967

1677:                                             ; preds = %1657, %1385, %1175
  %1678 = phi ptr [ %1176, %1175 ], [ %1386, %1385 ], [ %1658, %1657 ]
  %1679 = phi i64 [ %1179, %1175 ], [ %1389, %1385 ], [ %1661, %1657 ]
  %1680 = phi i64 [ %1011, %1175 ], [ %1222, %1385 ], [ %1494, %1657 ]
  %1681 = phi i32 [ %957, %1175 ], [ %956, %1385 ], [ %956, %1657 ]
  %1682 = phi i32 [ %956, %1175 ], [ %1196, %1385 ], [ %1401, %1657 ]
  %1683 = phi ptr [ %1006, %1175 ], [ %1223, %1385 ], [ %1495, %1657 ]
  store i32 2, ptr %943, align 8, !tbaa !52
  %1684 = load ptr, ptr %1, align 8, !tbaa !53
  %1685 = ptrtoint ptr %1678 to i64
  %1686 = ptrtoint ptr %1684 to i64
  %1687 = sub i64 %1685, %1686
  %1688 = lshr exact i64 %1687, 3
  %1689 = trunc i64 %1688 to i32
  store i32 %1689, ptr %945, align 4, !tbaa !54
  br label %1690

1690:                                             ; preds = %1677, %1657, %1385, %1175
  %1691 = phi i64 [ %1179, %1175 ], [ %1389, %1385 ], [ %1661, %1657 ], [ %1679, %1677 ]
  %1692 = phi ptr [ %1176, %1175 ], [ %1386, %1385 ], [ %1658, %1657 ], [ %1678, %1677 ]
  %1693 = phi i64 [ %1011, %1175 ], [ %1222, %1385 ], [ %1494, %1657 ], [ %1680, %1677 ]
  %1694 = phi i32 [ %957, %1175 ], [ %956, %1385 ], [ %956, %1657 ], [ %1681, %1677 ]
  %1695 = phi i32 [ %956, %1175 ], [ %1196, %1385 ], [ %1401, %1657 ], [ %1682, %1677 ]
  %1696 = phi ptr [ %1006, %1175 ], [ %1223, %1385 ], [ %1495, %1657 ], [ %1683, %1677 ]
  %1697 = trunc i64 %1691 to i16
  %1698 = getelementptr inbounds nuw i8, ptr %1692, i64 6
  store i16 %1697, ptr %1698, align 2, !tbaa !59
  %1699 = getelementptr inbounds nuw i8, ptr %1692, i64 8
  store ptr %1699, ptr %944, align 8, !tbaa !50
  %1700 = getelementptr inbounds nuw i8, ptr %1696, i64 %1693
  %1701 = icmp ugt ptr %1700, %23
  br i1 %1701, label %1770, label %1702

1702:                                             ; preds = %1690
  %1703 = add i32 %982, 2
  %1704 = and i64 %981, 4294967295
  %1705 = getelementptr inbounds nuw i8, ptr %928, i64 %1704
  %1706 = load i64, ptr %1705, align 1, !tbaa !22
  %1707 = mul i64 %1706, -3523014627271114752
  %1708 = lshr i64 %1707, %937
  %1709 = getelementptr inbounds nuw i32, ptr %9, i64 %1708
  store i32 %1703, ptr %1709, align 4, !tbaa !23
  %1710 = getelementptr inbounds i8, ptr %1700, i64 -2
  %1711 = ptrtoint ptr %1710 to i64
  %1712 = sub i64 %1711, %52
  %1713 = trunc i64 %1712 to i32
  %1714 = load i64, ptr %1710, align 1, !tbaa !22
  %1715 = mul i64 %1714, -3523014627271114752
  %1716 = lshr i64 %1715, %937
  %1717 = getelementptr inbounds nuw i32, ptr %9, i64 %1716
  store i32 %1713, ptr %1717, align 4, !tbaa !23
  br label %1718

1718:                                             ; preds = %1759, %1702
  %1719 = phi ptr [ %1699, %1702 ], [ %1762, %1759 ]
  %1720 = phi ptr [ %1700, %1702 ], [ %1768, %1759 ]
  %1721 = phi i32 [ %1695, %1702 ], [ %1722, %1759 ]
  %1722 = phi i32 [ %1694, %1702 ], [ %1721, %1759 ]
  %1723 = ptrtoint ptr %1720 to i64
  %1724 = sub i64 %1723, %52
  %1725 = trunc i64 %1724 to i32
  %1726 = sub i32 %1725, %1722
  %1727 = icmp ult i32 %1726, %19
  %1728 = zext i32 %1726 to i64
  %1729 = select i1 %1727, ptr %951, ptr %16
  %1730 = getelementptr inbounds nuw i8, ptr %1729, i64 %1728
  %1731 = sub i32 %1726, %19
  %1732 = icmp ugt i32 %1731, -4
  br i1 %1732, label %1770, label %1733

1733:                                             ; preds = %1718
  %1734 = load i32, ptr %1730, align 1, !tbaa !23
  %1735 = load i32, ptr %1720, align 1, !tbaa !23
  %1736 = icmp eq i32 %1734, %1735
  br i1 %1736, label %1737, label %1770

1737:                                             ; preds = %1733
  %1738 = select i1 %1727, ptr %37, ptr %22
  %1739 = getelementptr inbounds nuw i8, ptr %1720, i64 4
  %1740 = getelementptr inbounds nuw i8, ptr %1730, i64 4
  %1741 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1739, ptr noundef nonnull %1740, ptr noundef %22, ptr noundef %1738, ptr noundef %21)
  %1742 = icmp ugt ptr %1720, %940
  br i1 %1742, label %1747, label %1743

1743:                                             ; preds = %1737
  %1744 = load ptr, ptr %941, align 8, !tbaa !39
  %1745 = load <2 x i64>, ptr %1720, align 1, !tbaa !34
  store <2 x i64> %1745, ptr %1744, align 1, !tbaa !34
  %1746 = load ptr, ptr %944, align 8, !tbaa !50
  br label %1747

1747:                                             ; preds = %1743, %1737
  %1748 = phi ptr [ %1719, %1737 ], [ %1746, %1743 ]
  %1749 = getelementptr inbounds nuw i8, ptr %1748, i64 4
  store i16 0, ptr %1749, align 4, !tbaa !55
  store i32 1, ptr %1748, align 4, !tbaa !57
  %1750 = add i64 %1741, 1
  %1751 = icmp ugt i64 %1750, 65535
  br i1 %1751, label %1752, label %1759, !prof !58

1752:                                             ; preds = %1747
  store i32 2, ptr %943, align 8, !tbaa !52
  %1753 = load ptr, ptr %1, align 8, !tbaa !53
  %1754 = ptrtoint ptr %1748 to i64
  %1755 = ptrtoint ptr %1753 to i64
  %1756 = sub i64 %1754, %1755
  %1757 = lshr exact i64 %1756, 3
  %1758 = trunc i64 %1757 to i32
  store i32 %1758, ptr %945, align 4, !tbaa !54
  br label %1759

1759:                                             ; preds = %1752, %1747
  %1760 = trunc i64 %1750 to i16
  %1761 = getelementptr inbounds nuw i8, ptr %1748, i64 6
  store i16 %1760, ptr %1761, align 2, !tbaa !59
  %1762 = getelementptr inbounds nuw i8, ptr %1748, i64 8
  store ptr %1762, ptr %944, align 8, !tbaa !50
  %1763 = load i64, ptr %1720, align 1, !tbaa !22
  %1764 = mul i64 %1763, -3523014627271114752
  %1765 = lshr i64 %1764, %937
  %1766 = getelementptr inbounds nuw i32, ptr %9, i64 %1765
  store i32 %1725, ptr %1766, align 4, !tbaa !23
  %1767 = getelementptr i8, ptr %1720, i64 %1741
  %1768 = getelementptr i8, ptr %1767, i64 4
  %1769 = icmp ugt ptr %1768, %23
  br i1 %1769, label %1770, label %1718

1770:                                             ; preds = %1759, %1733, %1718, %1690
  %1771 = phi i32 [ %1694, %1690 ], [ %1722, %1718 ], [ %1722, %1733 ], [ %1721, %1759 ]
  %1772 = phi i32 [ %1695, %1690 ], [ %1721, %1718 ], [ %1721, %1733 ], [ %1722, %1759 ]
  %1773 = phi ptr [ %1700, %1690 ], [ %1720, %1718 ], [ %1720, %1733 ], [ %1768, %1759 ]
  %1774 = getelementptr inbounds nuw i8, ptr %1773, i64 %17
  %1775 = icmp ugt ptr %1774, %23
  br i1 %1775, label %3494, label %952

1776:                                             ; preds = %5
  br i1 %55, label %1786, label %1777

1777:                                             ; preds = %1776
  %1778 = zext nneg i32 %51 to i64
  %1779 = shl i64 4, %1778
  %1780 = icmp ugt i32 %51, 61
  br i1 %1780, label %1786, label %1781

1781:                                             ; preds = %1777, %1781
  %1782 = phi i64 [ %1784, %1781 ], [ 0, %1777 ]
  %1783 = getelementptr inbounds nuw i8, ptr %30, i64 %1782
  tail call void @llvm.prefetch.p0(ptr %1783, i32 0, i32 2, i32 1)
  %1784 = add i64 %1782, 64
  %1785 = icmp ult i64 %1784, %1779
  br i1 %1785, label %1781, label %1786, !llvm.loop !91

1786:                                             ; preds = %1781, %1777, %1776
  %1787 = getelementptr inbounds nuw i8, ptr %16, i64 2
  %1788 = getelementptr inbounds nuw i8, ptr %3, i64 %17
  %1789 = icmp ugt ptr %1788, %23
  br i1 %1789, label %3494, label %1790

1790:                                             ; preds = %1786
  %1791 = and i64 %49, 4294967295
  %1792 = icmp eq i64 %1791, 0
  %1793 = zext i1 %1792 to i64
  %1794 = getelementptr inbounds nuw i8, ptr %3, i64 %1793
  %1795 = sub i32 64, %11
  %1796 = zext nneg i32 %1795 to i64
  %1797 = sub i32 56, %51
  %1798 = zext nneg i32 %1797 to i64
  %1799 = getelementptr inbounds i8, ptr %22, i64 -32
  %1800 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %1801 = ptrtoint ptr %1799 to i64
  %1802 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %1803 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %1804 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %1805 = getelementptr inbounds i8, ptr %22, i64 -7
  %1806 = getelementptr inbounds i8, ptr %22, i64 -3
  %1807 = getelementptr inbounds i8, ptr %22, i64 -1
  %1808 = zext i32 %42 to i64
  %1809 = sub nsw i64 0, %1808
  %1810 = getelementptr inbounds i8, ptr %34, i64 %1809
  br label %1811

1811:                                             ; preds = %2629, %1790
  %1812 = phi ptr [ %1788, %1790 ], [ %2633, %2629 ]
  %1813 = phi ptr [ %1794, %1790 ], [ %2632, %2629 ]
  %1814 = phi ptr [ %3, %1790 ], [ %2632, %2629 ]
  %1815 = phi i32 [ %24, %1790 ], [ %2631, %2629 ]
  %1816 = phi i32 [ %26, %1790 ], [ %2630, %2629 ]
  %1817 = load i64, ptr %1813, align 1, !tbaa !22
  %1818 = mul i64 %1817, -3523014627193847808
  %1819 = lshr i64 %1818, %1798
  %1820 = lshr i64 %1819, 8
  %1821 = getelementptr inbounds nuw i32, ptr %30, i64 %1820
  %1822 = load i32, ptr %1821, align 4, !tbaa !23
  %1823 = zext i32 %1822 to i64
  %1824 = xor i64 %1819, %1823
  %1825 = getelementptr inbounds nuw i8, ptr %1813, i64 256
  br label %1826

1826:                                             ; preds = %2528, %1811
  %1827 = phi ptr [ %1825, %1811 ], [ %2530, %2528 ]
  %1828 = phi i64 [ %17, %1811 ], [ %2525, %2528 ]
  %1829 = phi i64 [ %1824, %1811 ], [ %2535, %2528 ]
  %1830 = phi i32 [ %1822, %1811 ], [ %2533, %2528 ]
  %1831 = phi i64 [ %1818, %1811 ], [ %1847, %2528 ]
  %1832 = phi ptr [ %1812, %1811 ], [ %2526, %2528 ]
  %1833 = phi ptr [ %1813, %1811 ], [ %1832, %2528 ]
  %1834 = lshr i64 %1831, %1796
  %1835 = getelementptr inbounds nuw i32, ptr %9, i64 %1834
  %1836 = load i32, ptr %1835, align 4, !tbaa !23
  %1837 = and i64 %1829, 255
  %1838 = icmp eq i64 %1837, 0
  %1839 = ptrtoint ptr %1833 to i64
  %1840 = sub i64 %1839, %52
  %1841 = trunc i64 %1840 to i32
  %1842 = zext i32 %1836 to i64
  %1843 = getelementptr inbounds nuw i8, ptr %16, i64 %1842
  %1844 = sub i32 %1841, %1815
  %1845 = add i32 %1844, 1
  %1846 = load i64, ptr %1832, align 1, !tbaa !22
  %1847 = mul i64 %1846, -3523014627193847808
  %1848 = lshr i64 %1847, %1798
  store i32 %1841, ptr %1835, align 4, !tbaa !23
  %1849 = sub i32 %1845, %19
  %1850 = icmp ugt i32 %1849, -4
  br i1 %1850, label %2040, label %1851

1851:                                             ; preds = %1826
  %1852 = icmp ult i32 %1845, %19
  %1853 = sub i32 %1845, %42
  %1854 = zext i32 %1853 to i64
  %1855 = getelementptr inbounds nuw i8, ptr %34, i64 %1854
  %1856 = zext i32 %1845 to i64
  %1857 = getelementptr inbounds nuw i8, ptr %16, i64 %1856
  %1858 = select i1 %1852, ptr %1855, ptr %1857
  %1859 = load i32, ptr %1858, align 1, !tbaa !23
  %1860 = getelementptr inbounds nuw i8, ptr %1833, i64 1
  %1861 = load i32, ptr %1860, align 1, !tbaa !23
  %1862 = icmp eq i32 %1859, %1861
  br i1 %1862, label %1863, label %2040

1863:                                             ; preds = %1851
  %1864 = ptrtoint ptr %1833 to i64
  %1865 = getelementptr inbounds nuw i8, ptr %1833, i64 1
  %1866 = select i1 %1852, ptr %37, ptr %22
  %1867 = getelementptr inbounds nuw i8, ptr %1833, i64 5
  %1868 = getelementptr inbounds nuw i8, ptr %1858, i64 4
  %1869 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1867, ptr noundef nonnull %1868, ptr noundef %22, ptr noundef %1866, ptr noundef %21)
  %1870 = add i64 %1869, 4
  %1871 = ptrtoint ptr %1865 to i64
  %1872 = ptrtoint ptr %1814 to i64
  %1873 = sub i64 %1871, %1872
  %1874 = icmp ugt ptr %1865, %1799
  %1875 = load ptr, ptr %1800, align 8, !tbaa !39
  br i1 %1874, label %1899, label %1876

1876:                                             ; preds = %1863
  %1877 = load <2 x i64>, ptr %1814, align 1, !tbaa !34
  store <2 x i64> %1877, ptr %1875, align 1, !tbaa !34
  %1878 = icmp ugt i64 %1873, 16
  br i1 %1878, label %1879, label %2018

1879:                                             ; preds = %1876
  %1880 = load ptr, ptr %1800, align 8, !tbaa !39
  %1881 = getelementptr inbounds nuw i8, ptr %1880, i64 16
  %1882 = getelementptr inbounds nuw i8, ptr %1814, i64 16
  %1883 = add i64 %1873, -16
  %1884 = getelementptr i8, ptr %1880, i64 %1873
  %1885 = load <2 x i64>, ptr %1882, align 1, !tbaa !34
  store <2 x i64> %1885, ptr %1881, align 1, !tbaa !34
  %1886 = icmp ult i64 %1883, 17
  br i1 %1886, label %2018, label %1887

1887:                                             ; preds = %1879
  %1888 = getelementptr inbounds nuw i8, ptr %1880, i64 32
  br label %1889

1889:                                             ; preds = %1889, %1887
  %1890 = phi ptr [ %1888, %1887 ], [ %1897, %1889 ]
  %1891 = phi ptr [ %1882, %1887 ], [ %1895, %1889 ]
  %1892 = getelementptr inbounds nuw i8, ptr %1891, i64 16
  %1893 = load <2 x i64>, ptr %1892, align 1, !tbaa !34
  store <2 x i64> %1893, ptr %1890, align 1, !tbaa !34
  %1894 = getelementptr inbounds nuw i8, ptr %1890, i64 16
  %1895 = getelementptr inbounds nuw i8, ptr %1891, i64 32
  %1896 = load <2 x i64>, ptr %1895, align 1, !tbaa !34
  store <2 x i64> %1896, ptr %1894, align 1, !tbaa !34
  %1897 = getelementptr inbounds nuw i8, ptr %1890, i64 32
  %1898 = icmp ult ptr %1897, %1884
  br i1 %1898, label %1889, label %2022, !llvm.loop !42

1899:                                             ; preds = %1863
  %1900 = icmp ugt ptr %1814, %1799
  br i1 %1900, label %1918, label %1901

1901:                                             ; preds = %1899
  %1902 = sub i64 %1801, %1872
  %1903 = getelementptr inbounds i8, ptr %1875, i64 %1902
  %1904 = load <2 x i64>, ptr %1814, align 1, !tbaa !34
  store <2 x i64> %1904, ptr %1875, align 1, !tbaa !34
  %1905 = icmp ult i64 %1902, 17
  br i1 %1905, label %1918, label %1906

1906:                                             ; preds = %1901
  %1907 = getelementptr inbounds nuw i8, ptr %1875, i64 16
  br label %1908

1908:                                             ; preds = %1908, %1906
  %1909 = phi ptr [ %1907, %1906 ], [ %1916, %1908 ]
  %1910 = phi ptr [ %1814, %1906 ], [ %1914, %1908 ]
  %1911 = getelementptr inbounds nuw i8, ptr %1910, i64 16
  %1912 = load <2 x i64>, ptr %1911, align 1, !tbaa !34
  store <2 x i64> %1912, ptr %1909, align 1, !tbaa !34
  %1913 = getelementptr inbounds nuw i8, ptr %1909, i64 16
  %1914 = getelementptr inbounds nuw i8, ptr %1910, i64 32
  %1915 = load <2 x i64>, ptr %1914, align 1, !tbaa !34
  store <2 x i64> %1915, ptr %1913, align 1, !tbaa !34
  %1916 = getelementptr inbounds nuw i8, ptr %1909, i64 32
  %1917 = icmp ult ptr %1916, %1903
  br i1 %1917, label %1908, label %1918, !llvm.loop !42

1918:                                             ; preds = %1908, %1901, %1899
  %1919 = phi ptr [ %1799, %1901 ], [ %1814, %1899 ], [ %1799, %1908 ]
  %1920 = phi ptr [ %1903, %1901 ], [ %1875, %1899 ], [ %1903, %1908 ]
  %1921 = icmp ult ptr %1919, %1865
  br i1 %1921, label %1922, label %2022

1922:                                             ; preds = %1918
  %1923 = ptrtoint ptr %1919 to i64
  %1924 = ptrtoint ptr %1920 to i64
  %1925 = ptrtoint ptr %1919 to i64
  %1926 = sub i64 %1864, %1925
  %1927 = add i64 %1926, 1
  %1928 = icmp ult i64 %1927, 4
  %1929 = sub i64 %1924, %1923
  %1930 = icmp ult i64 %1929, 32
  %1931 = select i1 %1928, i1 true, i1 %1930
  br i1 %1931, label %1967, label %1932

1932:                                             ; preds = %1922
  %1933 = icmp ult i64 %1927, 32
  br i1 %1933, label %1953, label %1934

1934:                                             ; preds = %1932
  %1935 = and i64 %1927, -32
  br label %1936

1936:                                             ; preds = %1936, %1934
  %1937 = phi i64 [ 0, %1934 ], [ %1944, %1936 ]
  %1938 = getelementptr i8, ptr %1920, i64 %1937
  %1939 = getelementptr i8, ptr %1919, i64 %1937
  %1940 = getelementptr i8, ptr %1939, i64 16
  %1941 = load <16 x i8>, ptr %1939, align 1, !tbaa !34
  %1942 = load <16 x i8>, ptr %1940, align 1, !tbaa !34
  %1943 = getelementptr i8, ptr %1938, i64 16
  store <16 x i8> %1941, ptr %1938, align 1, !tbaa !34
  store <16 x i8> %1942, ptr %1943, align 1, !tbaa !34
  %1944 = add nuw i64 %1937, 32
  %1945 = icmp eq i64 %1944, %1935
  br i1 %1945, label %1946, label %1936, !llvm.loop !118

1946:                                             ; preds = %1936
  %1947 = icmp eq i64 %1927, %1935
  br i1 %1947, label %2022, label %1948

1948:                                             ; preds = %1946
  %1949 = getelementptr i8, ptr %1920, i64 %1935
  %1950 = getelementptr i8, ptr %1919, i64 %1935
  %1951 = and i64 %1927, 28
  %1952 = icmp eq i64 %1951, 0
  br i1 %1952, label %1967, label %1953

1953:                                             ; preds = %1948, %1932
  %1954 = phi i64 [ %1935, %1948 ], [ 0, %1932 ]
  %1955 = and i64 %1927, -4
  %1956 = getelementptr i8, ptr %1920, i64 %1955
  %1957 = getelementptr i8, ptr %1919, i64 %1955
  br label %1958

1958:                                             ; preds = %1958, %1953
  %1959 = phi i64 [ %1954, %1953 ], [ %1963, %1958 ]
  %1960 = getelementptr i8, ptr %1920, i64 %1959
  %1961 = getelementptr i8, ptr %1919, i64 %1959
  %1962 = load <4 x i8>, ptr %1961, align 1, !tbaa !34
  store <4 x i8> %1962, ptr %1960, align 1, !tbaa !34
  %1963 = add nuw i64 %1959, 4
  %1964 = icmp eq i64 %1963, %1955
  br i1 %1964, label %1965, label %1958, !llvm.loop !119

1965:                                             ; preds = %1958
  %1966 = icmp eq i64 %1927, %1955
  br i1 %1966, label %2022, label %1967

1967:                                             ; preds = %1948, %1965, %1922
  %1968 = phi ptr [ %1920, %1922 ], [ %1949, %1948 ], [ %1956, %1965 ]
  %1969 = phi ptr [ %1919, %1922 ], [ %1950, %1948 ], [ %1957, %1965 ]
  %1970 = ptrtoint ptr %1969 to i64
  %1971 = sub i64 %1864, %1970
  %1972 = add i64 %1971, 1
  %1973 = sub i64 %1864, %1970
  %1974 = and i64 %1972, 7
  %1975 = and i64 %1971, 7
  %1976 = icmp eq i64 %1975, 7
  br i1 %1976, label %1986, label %1977

1977:                                             ; preds = %1967, %1977
  %1978 = phi ptr [ %1983, %1977 ], [ %1968, %1967 ]
  %1979 = phi ptr [ %1981, %1977 ], [ %1969, %1967 ]
  %1980 = phi i64 [ %1984, %1977 ], [ 0, %1967 ]
  %1981 = getelementptr inbounds nuw i8, ptr %1979, i64 1
  %1982 = load i8, ptr %1979, align 1, !tbaa !34
  %1983 = getelementptr inbounds nuw i8, ptr %1978, i64 1
  store i8 %1982, ptr %1978, align 1, !tbaa !34
  %1984 = add i64 %1980, 1
  %1985 = icmp eq i64 %1984, %1974
  br i1 %1985, label %1986, label %1977, !llvm.loop !120

1986:                                             ; preds = %1977, %1967
  %1987 = phi ptr [ %1968, %1967 ], [ %1983, %1977 ]
  %1988 = phi ptr [ %1969, %1967 ], [ %1981, %1977 ]
  %1989 = icmp ult i64 %1973, 7
  br i1 %1989, label %2022, label %1990

1990:                                             ; preds = %1986, %1990
  %1991 = phi ptr [ %2016, %1990 ], [ %1987, %1986 ]
  %1992 = phi ptr [ %2014, %1990 ], [ %1988, %1986 ]
  %1993 = getelementptr inbounds nuw i8, ptr %1992, i64 1
  %1994 = load i8, ptr %1992, align 1, !tbaa !34
  %1995 = getelementptr inbounds nuw i8, ptr %1991, i64 1
  store i8 %1994, ptr %1991, align 1, !tbaa !34
  %1996 = getelementptr inbounds nuw i8, ptr %1992, i64 2
  %1997 = load i8, ptr %1993, align 1, !tbaa !34
  %1998 = getelementptr inbounds nuw i8, ptr %1991, i64 2
  store i8 %1997, ptr %1995, align 1, !tbaa !34
  %1999 = getelementptr inbounds nuw i8, ptr %1992, i64 3
  %2000 = load i8, ptr %1996, align 1, !tbaa !34
  %2001 = getelementptr inbounds nuw i8, ptr %1991, i64 3
  store i8 %2000, ptr %1998, align 1, !tbaa !34
  %2002 = getelementptr inbounds nuw i8, ptr %1992, i64 4
  %2003 = load i8, ptr %1999, align 1, !tbaa !34
  %2004 = getelementptr inbounds nuw i8, ptr %1991, i64 4
  store i8 %2003, ptr %2001, align 1, !tbaa !34
  %2005 = getelementptr inbounds nuw i8, ptr %1992, i64 5
  %2006 = load i8, ptr %2002, align 1, !tbaa !34
  %2007 = getelementptr inbounds nuw i8, ptr %1991, i64 5
  store i8 %2006, ptr %2004, align 1, !tbaa !34
  %2008 = getelementptr inbounds nuw i8, ptr %1992, i64 6
  %2009 = load i8, ptr %2005, align 1, !tbaa !34
  %2010 = getelementptr inbounds nuw i8, ptr %1991, i64 6
  store i8 %2009, ptr %2007, align 1, !tbaa !34
  %2011 = getelementptr inbounds nuw i8, ptr %1992, i64 7
  %2012 = load i8, ptr %2008, align 1, !tbaa !34
  %2013 = getelementptr inbounds nuw i8, ptr %1991, i64 7
  store i8 %2012, ptr %2010, align 1, !tbaa !34
  %2014 = getelementptr inbounds nuw i8, ptr %1992, i64 8
  %2015 = load i8, ptr %2011, align 1, !tbaa !34
  %2016 = getelementptr inbounds nuw i8, ptr %1991, i64 8
  store i8 %2015, ptr %2013, align 1, !tbaa !34
  %2017 = icmp eq ptr %2011, %1833
  br i1 %2017, label %2022, label %1990, !llvm.loop !121

2018:                                             ; preds = %1879, %1876
  %2019 = load ptr, ptr %1800, align 8, !tbaa !39
  %2020 = getelementptr inbounds nuw i8, ptr %2019, i64 %1873
  store ptr %2020, ptr %1800, align 8, !tbaa !39
  %2021 = load ptr, ptr %1803, align 8, !tbaa !50
  br label %2034

2022:                                             ; preds = %1889, %1986, %1990, %1946, %1965, %1918
  %2023 = load ptr, ptr %1800, align 8, !tbaa !39
  %2024 = getelementptr inbounds nuw i8, ptr %2023, i64 %1873
  store ptr %2024, ptr %1800, align 8, !tbaa !39
  %2025 = icmp ugt i64 %1873, 65535
  %2026 = load ptr, ptr %1803, align 8, !tbaa !50
  br i1 %2025, label %2027, label %2034, !prof !51

2027:                                             ; preds = %2022
  store i32 1, ptr %1802, align 8, !tbaa !52
  %2028 = load ptr, ptr %1, align 8, !tbaa !53
  %2029 = ptrtoint ptr %2026 to i64
  %2030 = ptrtoint ptr %2028 to i64
  %2031 = sub i64 %2029, %2030
  %2032 = lshr exact i64 %2031, 3
  %2033 = trunc i64 %2032 to i32
  store i32 %2033, ptr %1804, align 4, !tbaa !54
  br label %2034

2034:                                             ; preds = %2027, %2022, %2018
  %2035 = phi ptr [ %2021, %2018 ], [ %2026, %2027 ], [ %2026, %2022 ]
  %2036 = trunc i64 %1873 to i16
  %2037 = getelementptr inbounds nuw i8, ptr %2035, i64 4
  store i16 %2036, ptr %2037, align 4, !tbaa !55
  store i32 1, ptr %2035, align 4, !tbaa !57
  %2038 = add i64 %1869, 1
  %2039 = icmp ugt i64 %2038, 65535
  br i1 %2039, label %2536, label %2549, !prof !58

2040:                                             ; preds = %1851, %1826
  br i1 %1838, label %2041, label %2250

2041:                                             ; preds = %2040
  %2042 = lshr i32 %1830, 8
  %2043 = icmp ugt i32 %2042, %32
  br i1 %2043, label %2044, label %2250

2044:                                             ; preds = %2041
  %2045 = zext nneg i32 %2042 to i64
  %2046 = getelementptr inbounds nuw i8, ptr %34, i64 %2045
  %2047 = load i32, ptr %2046, align 1, !tbaa !23
  %2048 = load i32, ptr %1833, align 1, !tbaa !23
  %2049 = icmp ne i32 %2047, %2048
  %2050 = icmp ugt i32 %1836, %19
  %2051 = select i1 %2049, i1 true, i1 %2050
  br i1 %2051, label %2250, label %2052

2052:                                             ; preds = %2044
  %2053 = getelementptr inbounds nuw i8, ptr %34, i64 %2045
  %2054 = add i32 %2042, %42
  %2055 = sub i32 %1841, %2054
  %2056 = getelementptr inbounds nuw i8, ptr %1833, i64 4
  %2057 = getelementptr inbounds nuw i8, ptr %2053, i64 4
  %2058 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %2056, ptr noundef nonnull %2057, ptr noundef %22, ptr noundef %37, ptr noundef %21)
  %2059 = add i64 %2058, 4
  %2060 = icmp ugt ptr %1833, %1814
  br i1 %2060, label %2061, label %2079

2061:                                             ; preds = %2052, %2070
  %2062 = phi ptr [ %2065, %2070 ], [ %1833, %2052 ]
  %2063 = phi i64 [ %2071, %2070 ], [ %2059, %2052 ]
  %2064 = phi ptr [ %2067, %2070 ], [ %2053, %2052 ]
  %2065 = getelementptr inbounds i8, ptr %2062, i64 -1
  %2066 = load i8, ptr %2065, align 1, !tbaa !34
  %2067 = getelementptr inbounds i8, ptr %2064, i64 -1
  %2068 = load i8, ptr %2067, align 1, !tbaa !34
  %2069 = icmp eq i8 %2066, %2068
  br i1 %2069, label %2070, label %2075

2070:                                             ; preds = %2061
  %2071 = add i64 %2063, 1
  %2072 = icmp ugt ptr %2065, %1814
  %2073 = icmp ugt ptr %2067, %36
  %2074 = and i1 %2072, %2073
  br i1 %2074, label %2061, label %2075, !llvm.loop !96

2075:                                             ; preds = %2070, %2061
  %2076 = phi i64 [ %2071, %2070 ], [ %2063, %2061 ]
  %2077 = phi ptr [ %2065, %2070 ], [ %2062, %2061 ]
  %2078 = ptrtoint ptr %2077 to i64
  br label %2079

2079:                                             ; preds = %2075, %2052
  %2080 = phi i64 [ %2078, %2075 ], [ %1839, %2052 ]
  %2081 = phi i64 [ %2076, %2075 ], [ %2059, %2052 ]
  %2082 = phi ptr [ %2077, %2075 ], [ %1833, %2052 ]
  %2083 = ptrtoint ptr %2082 to i64
  %2084 = ptrtoint ptr %1814 to i64
  %2085 = sub i64 %2080, %2084
  %2086 = add i32 %2055, 3
  %2087 = icmp ugt ptr %2082, %1799
  %2088 = load ptr, ptr %1800, align 8, !tbaa !39
  br i1 %2087, label %2112, label %2089

2089:                                             ; preds = %2079
  %2090 = load <2 x i64>, ptr %1814, align 1, !tbaa !34
  store <2 x i64> %2090, ptr %2088, align 1, !tbaa !34
  %2091 = icmp ugt i64 %2085, 16
  br i1 %2091, label %2092, label %2228

2092:                                             ; preds = %2089
  %2093 = load ptr, ptr %1800, align 8, !tbaa !39
  %2094 = getelementptr inbounds nuw i8, ptr %2093, i64 16
  %2095 = getelementptr inbounds nuw i8, ptr %1814, i64 16
  %2096 = add i64 %2085, -16
  %2097 = getelementptr i8, ptr %2093, i64 %2085
  %2098 = load <2 x i64>, ptr %2095, align 1, !tbaa !34
  store <2 x i64> %2098, ptr %2094, align 1, !tbaa !34
  %2099 = icmp ult i64 %2096, 17
  br i1 %2099, label %2228, label %2100

2100:                                             ; preds = %2092
  %2101 = getelementptr inbounds nuw i8, ptr %2093, i64 32
  br label %2102

2102:                                             ; preds = %2102, %2100
  %2103 = phi ptr [ %2101, %2100 ], [ %2110, %2102 ]
  %2104 = phi ptr [ %2095, %2100 ], [ %2108, %2102 ]
  %2105 = getelementptr inbounds nuw i8, ptr %2104, i64 16
  %2106 = load <2 x i64>, ptr %2105, align 1, !tbaa !34
  store <2 x i64> %2106, ptr %2103, align 1, !tbaa !34
  %2107 = getelementptr inbounds nuw i8, ptr %2103, i64 16
  %2108 = getelementptr inbounds nuw i8, ptr %2104, i64 32
  %2109 = load <2 x i64>, ptr %2108, align 1, !tbaa !34
  store <2 x i64> %2109, ptr %2107, align 1, !tbaa !34
  %2110 = getelementptr inbounds nuw i8, ptr %2103, i64 32
  %2111 = icmp ult ptr %2110, %2097
  br i1 %2111, label %2102, label %2232, !llvm.loop !42

2112:                                             ; preds = %2079
  %2113 = icmp ugt ptr %1814, %1799
  br i1 %2113, label %2131, label %2114

2114:                                             ; preds = %2112
  %2115 = sub i64 %1801, %2084
  %2116 = getelementptr inbounds i8, ptr %2088, i64 %2115
  %2117 = load <2 x i64>, ptr %1814, align 1, !tbaa !34
  store <2 x i64> %2117, ptr %2088, align 1, !tbaa !34
  %2118 = icmp ult i64 %2115, 17
  br i1 %2118, label %2131, label %2119

2119:                                             ; preds = %2114
  %2120 = getelementptr inbounds nuw i8, ptr %2088, i64 16
  br label %2121

2121:                                             ; preds = %2121, %2119
  %2122 = phi ptr [ %2120, %2119 ], [ %2129, %2121 ]
  %2123 = phi ptr [ %1814, %2119 ], [ %2127, %2121 ]
  %2124 = getelementptr inbounds nuw i8, ptr %2123, i64 16
  %2125 = load <2 x i64>, ptr %2124, align 1, !tbaa !34
  store <2 x i64> %2125, ptr %2122, align 1, !tbaa !34
  %2126 = getelementptr inbounds nuw i8, ptr %2122, i64 16
  %2127 = getelementptr inbounds nuw i8, ptr %2123, i64 32
  %2128 = load <2 x i64>, ptr %2127, align 1, !tbaa !34
  store <2 x i64> %2128, ptr %2126, align 1, !tbaa !34
  %2129 = getelementptr inbounds nuw i8, ptr %2122, i64 32
  %2130 = icmp ult ptr %2129, %2116
  br i1 %2130, label %2121, label %2131, !llvm.loop !42

2131:                                             ; preds = %2121, %2114, %2112
  %2132 = phi ptr [ %1799, %2114 ], [ %1814, %2112 ], [ %1799, %2121 ]
  %2133 = phi ptr [ %2116, %2114 ], [ %2088, %2112 ], [ %2116, %2121 ]
  %2134 = icmp ult ptr %2132, %2082
  br i1 %2134, label %2135, label %2232

2135:                                             ; preds = %2131
  %2136 = ptrtoint ptr %2132 to i64
  %2137 = ptrtoint ptr %2133 to i64
  %2138 = ptrtoint ptr %2132 to i64
  %2139 = sub i64 %2083, %2138
  %2140 = icmp ult i64 %2139, 4
  %2141 = sub i64 %2137, %2136
  %2142 = icmp ult i64 %2141, 32
  %2143 = select i1 %2140, i1 true, i1 %2142
  br i1 %2143, label %2179, label %2144

2144:                                             ; preds = %2135
  %2145 = icmp ult i64 %2139, 32
  br i1 %2145, label %2165, label %2146

2146:                                             ; preds = %2144
  %2147 = and i64 %2139, -32
  br label %2148

2148:                                             ; preds = %2148, %2146
  %2149 = phi i64 [ 0, %2146 ], [ %2156, %2148 ]
  %2150 = getelementptr i8, ptr %2133, i64 %2149
  %2151 = getelementptr i8, ptr %2132, i64 %2149
  %2152 = getelementptr i8, ptr %2151, i64 16
  %2153 = load <16 x i8>, ptr %2151, align 1, !tbaa !34
  %2154 = load <16 x i8>, ptr %2152, align 1, !tbaa !34
  %2155 = getelementptr i8, ptr %2150, i64 16
  store <16 x i8> %2153, ptr %2150, align 1, !tbaa !34
  store <16 x i8> %2154, ptr %2155, align 1, !tbaa !34
  %2156 = add nuw i64 %2149, 32
  %2157 = icmp eq i64 %2156, %2147
  br i1 %2157, label %2158, label %2148, !llvm.loop !122

2158:                                             ; preds = %2148
  %2159 = icmp eq i64 %2139, %2147
  br i1 %2159, label %2232, label %2160

2160:                                             ; preds = %2158
  %2161 = getelementptr i8, ptr %2133, i64 %2147
  %2162 = getelementptr i8, ptr %2132, i64 %2147
  %2163 = and i64 %2139, 28
  %2164 = icmp eq i64 %2163, 0
  br i1 %2164, label %2179, label %2165

2165:                                             ; preds = %2160, %2144
  %2166 = phi i64 [ %2147, %2160 ], [ 0, %2144 ]
  %2167 = and i64 %2139, -4
  %2168 = getelementptr i8, ptr %2133, i64 %2167
  %2169 = getelementptr i8, ptr %2132, i64 %2167
  br label %2170

2170:                                             ; preds = %2170, %2165
  %2171 = phi i64 [ %2166, %2165 ], [ %2175, %2170 ]
  %2172 = getelementptr i8, ptr %2133, i64 %2171
  %2173 = getelementptr i8, ptr %2132, i64 %2171
  %2174 = load <4 x i8>, ptr %2173, align 1, !tbaa !34
  store <4 x i8> %2174, ptr %2172, align 1, !tbaa !34
  %2175 = add nuw i64 %2171, 4
  %2176 = icmp eq i64 %2175, %2167
  br i1 %2176, label %2177, label %2170, !llvm.loop !123

2177:                                             ; preds = %2170
  %2178 = icmp eq i64 %2139, %2167
  br i1 %2178, label %2232, label %2179

2179:                                             ; preds = %2160, %2177, %2135
  %2180 = phi ptr [ %2133, %2135 ], [ %2161, %2160 ], [ %2168, %2177 ]
  %2181 = phi ptr [ %2132, %2135 ], [ %2162, %2160 ], [ %2169, %2177 ]
  %2182 = ptrtoint ptr %2181 to i64
  %2183 = sub i64 %2083, %2182
  %2184 = and i64 %2183, 7
  %2185 = icmp eq i64 %2184, 0
  br i1 %2185, label %2195, label %2186

2186:                                             ; preds = %2179, %2186
  %2187 = phi ptr [ %2192, %2186 ], [ %2180, %2179 ]
  %2188 = phi ptr [ %2190, %2186 ], [ %2181, %2179 ]
  %2189 = phi i64 [ %2193, %2186 ], [ 0, %2179 ]
  %2190 = getelementptr inbounds nuw i8, ptr %2188, i64 1
  %2191 = load i8, ptr %2188, align 1, !tbaa !34
  %2192 = getelementptr inbounds nuw i8, ptr %2187, i64 1
  store i8 %2191, ptr %2187, align 1, !tbaa !34
  %2193 = add i64 %2189, 1
  %2194 = icmp eq i64 %2193, %2184
  br i1 %2194, label %2195, label %2186, !llvm.loop !124

2195:                                             ; preds = %2186, %2179
  %2196 = phi ptr [ %2180, %2179 ], [ %2192, %2186 ]
  %2197 = phi ptr [ %2181, %2179 ], [ %2190, %2186 ]
  %2198 = sub i64 %2182, %2083
  %2199 = icmp ugt i64 %2198, -8
  br i1 %2199, label %2232, label %2200

2200:                                             ; preds = %2195, %2200
  %2201 = phi ptr [ %2226, %2200 ], [ %2196, %2195 ]
  %2202 = phi ptr [ %2224, %2200 ], [ %2197, %2195 ]
  %2203 = getelementptr inbounds nuw i8, ptr %2202, i64 1
  %2204 = load i8, ptr %2202, align 1, !tbaa !34
  %2205 = getelementptr inbounds nuw i8, ptr %2201, i64 1
  store i8 %2204, ptr %2201, align 1, !tbaa !34
  %2206 = getelementptr inbounds nuw i8, ptr %2202, i64 2
  %2207 = load i8, ptr %2203, align 1, !tbaa !34
  %2208 = getelementptr inbounds nuw i8, ptr %2201, i64 2
  store i8 %2207, ptr %2205, align 1, !tbaa !34
  %2209 = getelementptr inbounds nuw i8, ptr %2202, i64 3
  %2210 = load i8, ptr %2206, align 1, !tbaa !34
  %2211 = getelementptr inbounds nuw i8, ptr %2201, i64 3
  store i8 %2210, ptr %2208, align 1, !tbaa !34
  %2212 = getelementptr inbounds nuw i8, ptr %2202, i64 4
  %2213 = load i8, ptr %2209, align 1, !tbaa !34
  %2214 = getelementptr inbounds nuw i8, ptr %2201, i64 4
  store i8 %2213, ptr %2211, align 1, !tbaa !34
  %2215 = getelementptr inbounds nuw i8, ptr %2202, i64 5
  %2216 = load i8, ptr %2212, align 1, !tbaa !34
  %2217 = getelementptr inbounds nuw i8, ptr %2201, i64 5
  store i8 %2216, ptr %2214, align 1, !tbaa !34
  %2218 = getelementptr inbounds nuw i8, ptr %2202, i64 6
  %2219 = load i8, ptr %2215, align 1, !tbaa !34
  %2220 = getelementptr inbounds nuw i8, ptr %2201, i64 6
  store i8 %2219, ptr %2217, align 1, !tbaa !34
  %2221 = getelementptr inbounds nuw i8, ptr %2202, i64 7
  %2222 = load i8, ptr %2218, align 1, !tbaa !34
  %2223 = getelementptr inbounds nuw i8, ptr %2201, i64 7
  store i8 %2222, ptr %2220, align 1, !tbaa !34
  %2224 = getelementptr inbounds nuw i8, ptr %2202, i64 8
  %2225 = load i8, ptr %2221, align 1, !tbaa !34
  %2226 = getelementptr inbounds nuw i8, ptr %2201, i64 8
  store i8 %2225, ptr %2223, align 1, !tbaa !34
  %2227 = icmp eq ptr %2224, %2082
  br i1 %2227, label %2232, label %2200, !llvm.loop !125

2228:                                             ; preds = %2092, %2089
  %2229 = load ptr, ptr %1800, align 8, !tbaa !39
  %2230 = getelementptr inbounds nuw i8, ptr %2229, i64 %2085
  store ptr %2230, ptr %1800, align 8, !tbaa !39
  %2231 = load ptr, ptr %1803, align 8, !tbaa !50
  br label %2244

2232:                                             ; preds = %2102, %2195, %2200, %2158, %2177, %2131
  %2233 = load ptr, ptr %1800, align 8, !tbaa !39
  %2234 = getelementptr inbounds nuw i8, ptr %2233, i64 %2085
  store ptr %2234, ptr %1800, align 8, !tbaa !39
  %2235 = icmp ugt i64 %2085, 65535
  %2236 = load ptr, ptr %1803, align 8, !tbaa !50
  br i1 %2235, label %2237, label %2244, !prof !51

2237:                                             ; preds = %2232
  store i32 1, ptr %1802, align 8, !tbaa !52
  %2238 = load ptr, ptr %1, align 8, !tbaa !53
  %2239 = ptrtoint ptr %2236 to i64
  %2240 = ptrtoint ptr %2238 to i64
  %2241 = sub i64 %2239, %2240
  %2242 = lshr exact i64 %2241, 3
  %2243 = trunc i64 %2242 to i32
  store i32 %2243, ptr %1804, align 4, !tbaa !54
  br label %2244

2244:                                             ; preds = %2237, %2232, %2228
  %2245 = phi ptr [ %2231, %2228 ], [ %2236, %2237 ], [ %2236, %2232 ]
  %2246 = trunc i64 %2085 to i16
  %2247 = getelementptr inbounds nuw i8, ptr %2245, i64 4
  store i16 %2246, ptr %2247, align 4, !tbaa !55
  store i32 %2086, ptr %2245, align 4, !tbaa !57
  %2248 = add i64 %2081, -3
  %2249 = icmp ugt i64 %2248, 65535
  br i1 %2249, label %2536, label %2549, !prof !58

2250:                                             ; preds = %2044, %2041, %2040
  %2251 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1836, i32 %19, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %1843) #7, !srcloc !32
  %2252 = load i32, ptr %1833, align 1, !tbaa !23
  %2253 = load i32, ptr %2251, align 1, !tbaa !23
  %2254 = icmp eq i32 %2252, %2253
  br i1 %2254, label %2255, label %2522

2255:                                             ; preds = %2250
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !33
  %2256 = icmp ult i32 %1836, %19
  br i1 %2256, label %2522, label %2257

2257:                                             ; preds = %2255
  %2258 = ptrtoint ptr %1843 to i64
  %2259 = sub i64 %1839, %2258
  %2260 = trunc i64 %2259 to i32
  %2261 = getelementptr inbounds nuw i8, ptr %1833, i64 4
  %2262 = getelementptr inbounds nuw i8, ptr %1843, i64 4
  %2263 = icmp ult ptr %2261, %1805
  br i1 %2263, label %2264, label %2290

2264:                                             ; preds = %2257
  %2265 = load i64, ptr %2262, align 1, !tbaa !22
  %2266 = load i64, ptr %2261, align 1, !tbaa !22
  %2267 = icmp eq i64 %2265, %2266
  br i1 %2267, label %2272, label %2268

2268:                                             ; preds = %2264
  %2269 = xor i64 %2266, %2265
  %2270 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2269, i1 true)
  %2271 = lshr i64 %2270, 3
  br label %2327

2272:                                             ; preds = %2264, %2278
  %2273 = phi ptr [ %2276, %2278 ], [ %2262, %2264 ]
  %2274 = phi ptr [ %2275, %2278 ], [ %2261, %2264 ]
  %2275 = getelementptr inbounds nuw i8, ptr %2274, i64 8
  %2276 = getelementptr inbounds nuw i8, ptr %2273, i64 8
  %2277 = icmp ult ptr %2275, %1805
  br i1 %2277, label %2278, label %2290

2278:                                             ; preds = %2272
  %2279 = load i64, ptr %2276, align 1, !tbaa !22
  %2280 = load i64, ptr %2275, align 1, !tbaa !22
  %2281 = icmp eq i64 %2279, %2280
  br i1 %2281, label %2272, label %2282

2282:                                             ; preds = %2278
  %2283 = xor i64 %2280, %2279
  %2284 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2283, i1 true)
  %2285 = lshr i64 %2284, 3
  %2286 = getelementptr inbounds nuw i8, ptr %2275, i64 %2285
  %2287 = ptrtoint ptr %2286 to i64
  %2288 = ptrtoint ptr %2261 to i64
  %2289 = sub i64 %2287, %2288
  br label %2327

2290:                                             ; preds = %2272, %2257
  %2291 = phi ptr [ %2262, %2257 ], [ %2276, %2272 ]
  %2292 = phi ptr [ %2261, %2257 ], [ %2275, %2272 ]
  %2293 = icmp ult ptr %2292, %1806
  br i1 %2293, label %2294, label %2301

2294:                                             ; preds = %2290
  %2295 = load i32, ptr %2291, align 1, !tbaa !23
  %2296 = load i32, ptr %2292, align 1, !tbaa !23
  %2297 = icmp eq i32 %2295, %2296
  br i1 %2297, label %2298, label %2301

2298:                                             ; preds = %2294
  %2299 = getelementptr inbounds nuw i8, ptr %2292, i64 4
  %2300 = getelementptr inbounds nuw i8, ptr %2291, i64 4
  br label %2301

2301:                                             ; preds = %2298, %2294, %2290
  %2302 = phi ptr [ %2300, %2298 ], [ %2291, %2294 ], [ %2291, %2290 ]
  %2303 = phi ptr [ %2299, %2298 ], [ %2292, %2294 ], [ %2292, %2290 ]
  %2304 = icmp ult ptr %2303, %1807
  br i1 %2304, label %2305, label %2312

2305:                                             ; preds = %2301
  %2306 = load i16, ptr %2302, align 1, !tbaa !37
  %2307 = load i16, ptr %2303, align 1, !tbaa !37
  %2308 = icmp eq i16 %2306, %2307
  br i1 %2308, label %2309, label %2312

2309:                                             ; preds = %2305
  %2310 = getelementptr inbounds nuw i8, ptr %2303, i64 2
  %2311 = getelementptr inbounds nuw i8, ptr %2302, i64 2
  br label %2312

2312:                                             ; preds = %2309, %2305, %2301
  %2313 = phi ptr [ %2311, %2309 ], [ %2302, %2305 ], [ %2302, %2301 ]
  %2314 = phi ptr [ %2310, %2309 ], [ %2303, %2305 ], [ %2303, %2301 ]
  %2315 = icmp ult ptr %2314, %22
  br i1 %2315, label %2316, label %2322

2316:                                             ; preds = %2312
  %2317 = load i8, ptr %2313, align 1, !tbaa !34
  %2318 = load i8, ptr %2314, align 1, !tbaa !34
  %2319 = icmp eq i8 %2317, %2318
  %2320 = zext i1 %2319 to i64
  %2321 = getelementptr inbounds nuw i8, ptr %2314, i64 %2320
  br label %2322

2322:                                             ; preds = %2316, %2312
  %2323 = phi ptr [ %2314, %2312 ], [ %2321, %2316 ]
  %2324 = ptrtoint ptr %2323 to i64
  %2325 = ptrtoint ptr %2261 to i64
  %2326 = sub i64 %2324, %2325
  br label %2327

2327:                                             ; preds = %2322, %2282, %2268
  %2328 = phi i64 [ %2326, %2322 ], [ %2271, %2268 ], [ %2289, %2282 ]
  %2329 = add i64 %2328, 4
  %2330 = icmp ugt ptr %1833, %1814
  %2331 = icmp ugt i32 %1836, %19
  %2332 = and i1 %2330, %2331
  br i1 %2332, label %2333, label %2351

2333:                                             ; preds = %2327, %2342
  %2334 = phi ptr [ %2337, %2342 ], [ %1833, %2327 ]
  %2335 = phi i64 [ %2343, %2342 ], [ %2329, %2327 ]
  %2336 = phi ptr [ %2339, %2342 ], [ %1843, %2327 ]
  %2337 = getelementptr inbounds i8, ptr %2334, i64 -1
  %2338 = load i8, ptr %2337, align 1, !tbaa !34
  %2339 = getelementptr inbounds i8, ptr %2336, i64 -1
  %2340 = load i8, ptr %2339, align 1, !tbaa !34
  %2341 = icmp eq i8 %2338, %2340
  br i1 %2341, label %2342, label %2347

2342:                                             ; preds = %2333
  %2343 = add i64 %2335, 1
  %2344 = icmp ugt ptr %2337, %1814
  %2345 = icmp ugt ptr %2339, %21
  %2346 = and i1 %2344, %2345
  br i1 %2346, label %2333, label %2347, !llvm.loop !101

2347:                                             ; preds = %2342, %2333
  %2348 = phi i64 [ %2343, %2342 ], [ %2335, %2333 ]
  %2349 = phi ptr [ %2337, %2342 ], [ %2334, %2333 ]
  %2350 = ptrtoint ptr %2349 to i64
  br label %2351

2351:                                             ; preds = %2347, %2327
  %2352 = phi i64 [ %2350, %2347 ], [ %1839, %2327 ]
  %2353 = phi i64 [ %2348, %2347 ], [ %2329, %2327 ]
  %2354 = phi ptr [ %2349, %2347 ], [ %1833, %2327 ]
  %2355 = ptrtoint ptr %2354 to i64
  %2356 = ptrtoint ptr %1814 to i64
  %2357 = sub i64 %2352, %2356
  %2358 = add i32 %2260, 3
  %2359 = icmp ugt ptr %2354, %1799
  %2360 = load ptr, ptr %1800, align 8, !tbaa !39
  br i1 %2359, label %2384, label %2361

2361:                                             ; preds = %2351
  %2362 = load <2 x i64>, ptr %1814, align 1, !tbaa !34
  store <2 x i64> %2362, ptr %2360, align 1, !tbaa !34
  %2363 = icmp ugt i64 %2357, 16
  br i1 %2363, label %2364, label %2500

2364:                                             ; preds = %2361
  %2365 = load ptr, ptr %1800, align 8, !tbaa !39
  %2366 = getelementptr inbounds nuw i8, ptr %2365, i64 16
  %2367 = getelementptr inbounds nuw i8, ptr %1814, i64 16
  %2368 = add i64 %2357, -16
  %2369 = getelementptr i8, ptr %2365, i64 %2357
  %2370 = load <2 x i64>, ptr %2367, align 1, !tbaa !34
  store <2 x i64> %2370, ptr %2366, align 1, !tbaa !34
  %2371 = icmp ult i64 %2368, 17
  br i1 %2371, label %2500, label %2372

2372:                                             ; preds = %2364
  %2373 = getelementptr inbounds nuw i8, ptr %2365, i64 32
  br label %2374

2374:                                             ; preds = %2374, %2372
  %2375 = phi ptr [ %2373, %2372 ], [ %2382, %2374 ]
  %2376 = phi ptr [ %2367, %2372 ], [ %2380, %2374 ]
  %2377 = getelementptr inbounds nuw i8, ptr %2376, i64 16
  %2378 = load <2 x i64>, ptr %2377, align 1, !tbaa !34
  store <2 x i64> %2378, ptr %2375, align 1, !tbaa !34
  %2379 = getelementptr inbounds nuw i8, ptr %2375, i64 16
  %2380 = getelementptr inbounds nuw i8, ptr %2376, i64 32
  %2381 = load <2 x i64>, ptr %2380, align 1, !tbaa !34
  store <2 x i64> %2381, ptr %2379, align 1, !tbaa !34
  %2382 = getelementptr inbounds nuw i8, ptr %2375, i64 32
  %2383 = icmp ult ptr %2382, %2369
  br i1 %2383, label %2374, label %2504, !llvm.loop !42

2384:                                             ; preds = %2351
  %2385 = icmp ugt ptr %1814, %1799
  br i1 %2385, label %2403, label %2386

2386:                                             ; preds = %2384
  %2387 = sub i64 %1801, %2356
  %2388 = getelementptr inbounds i8, ptr %2360, i64 %2387
  %2389 = load <2 x i64>, ptr %1814, align 1, !tbaa !34
  store <2 x i64> %2389, ptr %2360, align 1, !tbaa !34
  %2390 = icmp ult i64 %2387, 17
  br i1 %2390, label %2403, label %2391

2391:                                             ; preds = %2386
  %2392 = getelementptr inbounds nuw i8, ptr %2360, i64 16
  br label %2393

2393:                                             ; preds = %2393, %2391
  %2394 = phi ptr [ %2392, %2391 ], [ %2401, %2393 ]
  %2395 = phi ptr [ %1814, %2391 ], [ %2399, %2393 ]
  %2396 = getelementptr inbounds nuw i8, ptr %2395, i64 16
  %2397 = load <2 x i64>, ptr %2396, align 1, !tbaa !34
  store <2 x i64> %2397, ptr %2394, align 1, !tbaa !34
  %2398 = getelementptr inbounds nuw i8, ptr %2394, i64 16
  %2399 = getelementptr inbounds nuw i8, ptr %2395, i64 32
  %2400 = load <2 x i64>, ptr %2399, align 1, !tbaa !34
  store <2 x i64> %2400, ptr %2398, align 1, !tbaa !34
  %2401 = getelementptr inbounds nuw i8, ptr %2394, i64 32
  %2402 = icmp ult ptr %2401, %2388
  br i1 %2402, label %2393, label %2403, !llvm.loop !42

2403:                                             ; preds = %2393, %2386, %2384
  %2404 = phi ptr [ %1799, %2386 ], [ %1814, %2384 ], [ %1799, %2393 ]
  %2405 = phi ptr [ %2388, %2386 ], [ %2360, %2384 ], [ %2388, %2393 ]
  %2406 = icmp ult ptr %2404, %2354
  br i1 %2406, label %2407, label %2504

2407:                                             ; preds = %2403
  %2408 = ptrtoint ptr %2404 to i64
  %2409 = ptrtoint ptr %2405 to i64
  %2410 = ptrtoint ptr %2404 to i64
  %2411 = sub i64 %2355, %2410
  %2412 = icmp ult i64 %2411, 4
  %2413 = sub i64 %2409, %2408
  %2414 = icmp ult i64 %2413, 32
  %2415 = select i1 %2412, i1 true, i1 %2414
  br i1 %2415, label %2451, label %2416

2416:                                             ; preds = %2407
  %2417 = icmp ult i64 %2411, 32
  br i1 %2417, label %2437, label %2418

2418:                                             ; preds = %2416
  %2419 = and i64 %2411, -32
  br label %2420

2420:                                             ; preds = %2420, %2418
  %2421 = phi i64 [ 0, %2418 ], [ %2428, %2420 ]
  %2422 = getelementptr i8, ptr %2405, i64 %2421
  %2423 = getelementptr i8, ptr %2404, i64 %2421
  %2424 = getelementptr i8, ptr %2423, i64 16
  %2425 = load <16 x i8>, ptr %2423, align 1, !tbaa !34
  %2426 = load <16 x i8>, ptr %2424, align 1, !tbaa !34
  %2427 = getelementptr i8, ptr %2422, i64 16
  store <16 x i8> %2425, ptr %2422, align 1, !tbaa !34
  store <16 x i8> %2426, ptr %2427, align 1, !tbaa !34
  %2428 = add nuw i64 %2421, 32
  %2429 = icmp eq i64 %2428, %2419
  br i1 %2429, label %2430, label %2420, !llvm.loop !126

2430:                                             ; preds = %2420
  %2431 = icmp eq i64 %2411, %2419
  br i1 %2431, label %2504, label %2432

2432:                                             ; preds = %2430
  %2433 = getelementptr i8, ptr %2405, i64 %2419
  %2434 = getelementptr i8, ptr %2404, i64 %2419
  %2435 = and i64 %2411, 28
  %2436 = icmp eq i64 %2435, 0
  br i1 %2436, label %2451, label %2437

2437:                                             ; preds = %2432, %2416
  %2438 = phi i64 [ %2419, %2432 ], [ 0, %2416 ]
  %2439 = and i64 %2411, -4
  %2440 = getelementptr i8, ptr %2405, i64 %2439
  %2441 = getelementptr i8, ptr %2404, i64 %2439
  br label %2442

2442:                                             ; preds = %2442, %2437
  %2443 = phi i64 [ %2438, %2437 ], [ %2447, %2442 ]
  %2444 = getelementptr i8, ptr %2405, i64 %2443
  %2445 = getelementptr i8, ptr %2404, i64 %2443
  %2446 = load <4 x i8>, ptr %2445, align 1, !tbaa !34
  store <4 x i8> %2446, ptr %2444, align 1, !tbaa !34
  %2447 = add nuw i64 %2443, 4
  %2448 = icmp eq i64 %2447, %2439
  br i1 %2448, label %2449, label %2442, !llvm.loop !127

2449:                                             ; preds = %2442
  %2450 = icmp eq i64 %2411, %2439
  br i1 %2450, label %2504, label %2451

2451:                                             ; preds = %2432, %2449, %2407
  %2452 = phi ptr [ %2405, %2407 ], [ %2433, %2432 ], [ %2440, %2449 ]
  %2453 = phi ptr [ %2404, %2407 ], [ %2434, %2432 ], [ %2441, %2449 ]
  %2454 = ptrtoint ptr %2453 to i64
  %2455 = sub i64 %2355, %2454
  %2456 = and i64 %2455, 7
  %2457 = icmp eq i64 %2456, 0
  br i1 %2457, label %2467, label %2458

2458:                                             ; preds = %2451, %2458
  %2459 = phi ptr [ %2464, %2458 ], [ %2452, %2451 ]
  %2460 = phi ptr [ %2462, %2458 ], [ %2453, %2451 ]
  %2461 = phi i64 [ %2465, %2458 ], [ 0, %2451 ]
  %2462 = getelementptr inbounds nuw i8, ptr %2460, i64 1
  %2463 = load i8, ptr %2460, align 1, !tbaa !34
  %2464 = getelementptr inbounds nuw i8, ptr %2459, i64 1
  store i8 %2463, ptr %2459, align 1, !tbaa !34
  %2465 = add i64 %2461, 1
  %2466 = icmp eq i64 %2465, %2456
  br i1 %2466, label %2467, label %2458, !llvm.loop !128

2467:                                             ; preds = %2458, %2451
  %2468 = phi ptr [ %2452, %2451 ], [ %2464, %2458 ]
  %2469 = phi ptr [ %2453, %2451 ], [ %2462, %2458 ]
  %2470 = sub i64 %2454, %2355
  %2471 = icmp ugt i64 %2470, -8
  br i1 %2471, label %2504, label %2472

2472:                                             ; preds = %2467, %2472
  %2473 = phi ptr [ %2498, %2472 ], [ %2468, %2467 ]
  %2474 = phi ptr [ %2496, %2472 ], [ %2469, %2467 ]
  %2475 = getelementptr inbounds nuw i8, ptr %2474, i64 1
  %2476 = load i8, ptr %2474, align 1, !tbaa !34
  %2477 = getelementptr inbounds nuw i8, ptr %2473, i64 1
  store i8 %2476, ptr %2473, align 1, !tbaa !34
  %2478 = getelementptr inbounds nuw i8, ptr %2474, i64 2
  %2479 = load i8, ptr %2475, align 1, !tbaa !34
  %2480 = getelementptr inbounds nuw i8, ptr %2473, i64 2
  store i8 %2479, ptr %2477, align 1, !tbaa !34
  %2481 = getelementptr inbounds nuw i8, ptr %2474, i64 3
  %2482 = load i8, ptr %2478, align 1, !tbaa !34
  %2483 = getelementptr inbounds nuw i8, ptr %2473, i64 3
  store i8 %2482, ptr %2480, align 1, !tbaa !34
  %2484 = getelementptr inbounds nuw i8, ptr %2474, i64 4
  %2485 = load i8, ptr %2481, align 1, !tbaa !34
  %2486 = getelementptr inbounds nuw i8, ptr %2473, i64 4
  store i8 %2485, ptr %2483, align 1, !tbaa !34
  %2487 = getelementptr inbounds nuw i8, ptr %2474, i64 5
  %2488 = load i8, ptr %2484, align 1, !tbaa !34
  %2489 = getelementptr inbounds nuw i8, ptr %2473, i64 5
  store i8 %2488, ptr %2486, align 1, !tbaa !34
  %2490 = getelementptr inbounds nuw i8, ptr %2474, i64 6
  %2491 = load i8, ptr %2487, align 1, !tbaa !34
  %2492 = getelementptr inbounds nuw i8, ptr %2473, i64 6
  store i8 %2491, ptr %2489, align 1, !tbaa !34
  %2493 = getelementptr inbounds nuw i8, ptr %2474, i64 7
  %2494 = load i8, ptr %2490, align 1, !tbaa !34
  %2495 = getelementptr inbounds nuw i8, ptr %2473, i64 7
  store i8 %2494, ptr %2492, align 1, !tbaa !34
  %2496 = getelementptr inbounds nuw i8, ptr %2474, i64 8
  %2497 = load i8, ptr %2493, align 1, !tbaa !34
  %2498 = getelementptr inbounds nuw i8, ptr %2473, i64 8
  store i8 %2497, ptr %2495, align 1, !tbaa !34
  %2499 = icmp eq ptr %2496, %2354
  br i1 %2499, label %2504, label %2472, !llvm.loop !129

2500:                                             ; preds = %2364, %2361
  %2501 = load ptr, ptr %1800, align 8, !tbaa !39
  %2502 = getelementptr inbounds nuw i8, ptr %2501, i64 %2357
  store ptr %2502, ptr %1800, align 8, !tbaa !39
  %2503 = load ptr, ptr %1803, align 8, !tbaa !50
  br label %2516

2504:                                             ; preds = %2374, %2467, %2472, %2430, %2449, %2403
  %2505 = load ptr, ptr %1800, align 8, !tbaa !39
  %2506 = getelementptr inbounds nuw i8, ptr %2505, i64 %2357
  store ptr %2506, ptr %1800, align 8, !tbaa !39
  %2507 = icmp ugt i64 %2357, 65535
  %2508 = load ptr, ptr %1803, align 8, !tbaa !50
  br i1 %2507, label %2509, label %2516, !prof !51

2509:                                             ; preds = %2504
  store i32 1, ptr %1802, align 8, !tbaa !52
  %2510 = load ptr, ptr %1, align 8, !tbaa !53
  %2511 = ptrtoint ptr %2508 to i64
  %2512 = ptrtoint ptr %2510 to i64
  %2513 = sub i64 %2511, %2512
  %2514 = lshr exact i64 %2513, 3
  %2515 = trunc i64 %2514 to i32
  store i32 %2515, ptr %1804, align 4, !tbaa !54
  br label %2516

2516:                                             ; preds = %2509, %2504, %2500
  %2517 = phi ptr [ %2503, %2500 ], [ %2508, %2509 ], [ %2508, %2504 ]
  %2518 = trunc i64 %2357 to i16
  %2519 = getelementptr inbounds nuw i8, ptr %2517, i64 4
  store i16 %2518, ptr %2519, align 4, !tbaa !55
  store i32 %2358, ptr %2517, align 4, !tbaa !57
  %2520 = add i64 %2353, -3
  %2521 = icmp ugt i64 %2520, 65535
  br i1 %2521, label %2536, label %2549, !prof !58

2522:                                             ; preds = %2255, %2250
  %2523 = icmp uge ptr %1832, %1827
  %2524 = zext i1 %2523 to i64
  %2525 = add i64 %1828, %2524
  %2526 = getelementptr inbounds nuw i8, ptr %1832, i64 %2525
  %2527 = icmp ugt ptr %2526, %23
  br i1 %2527, label %3494, label %2528

2528:                                             ; preds = %2522
  %2529 = select i1 %2523, i64 256, i64 0
  %2530 = getelementptr inbounds nuw i8, ptr %1827, i64 %2529
  %2531 = lshr i64 %1848, 8
  %2532 = getelementptr inbounds nuw i32, ptr %30, i64 %2531
  %2533 = load i32, ptr %2532, align 4, !tbaa !23
  %2534 = zext i32 %2533 to i64
  %2535 = xor i64 %1848, %2534
  br label %1826

2536:                                             ; preds = %2516, %2244, %2034
  %2537 = phi ptr [ %2035, %2034 ], [ %2245, %2244 ], [ %2517, %2516 ]
  %2538 = phi i64 [ %2038, %2034 ], [ %2248, %2244 ], [ %2520, %2516 ]
  %2539 = phi i64 [ %1870, %2034 ], [ %2081, %2244 ], [ %2353, %2516 ]
  %2540 = phi i32 [ %1816, %2034 ], [ %1815, %2244 ], [ %1815, %2516 ]
  %2541 = phi i32 [ %1815, %2034 ], [ %2055, %2244 ], [ %2260, %2516 ]
  %2542 = phi ptr [ %1865, %2034 ], [ %2082, %2244 ], [ %2354, %2516 ]
  store i32 2, ptr %1802, align 8, !tbaa !52
  %2543 = load ptr, ptr %1, align 8, !tbaa !53
  %2544 = ptrtoint ptr %2537 to i64
  %2545 = ptrtoint ptr %2543 to i64
  %2546 = sub i64 %2544, %2545
  %2547 = lshr exact i64 %2546, 3
  %2548 = trunc i64 %2547 to i32
  store i32 %2548, ptr %1804, align 4, !tbaa !54
  br label %2549

2549:                                             ; preds = %2536, %2516, %2244, %2034
  %2550 = phi i64 [ %2038, %2034 ], [ %2248, %2244 ], [ %2520, %2516 ], [ %2538, %2536 ]
  %2551 = phi ptr [ %2035, %2034 ], [ %2245, %2244 ], [ %2517, %2516 ], [ %2537, %2536 ]
  %2552 = phi i64 [ %1870, %2034 ], [ %2081, %2244 ], [ %2353, %2516 ], [ %2539, %2536 ]
  %2553 = phi i32 [ %1816, %2034 ], [ %1815, %2244 ], [ %1815, %2516 ], [ %2540, %2536 ]
  %2554 = phi i32 [ %1815, %2034 ], [ %2055, %2244 ], [ %2260, %2516 ], [ %2541, %2536 ]
  %2555 = phi ptr [ %1865, %2034 ], [ %2082, %2244 ], [ %2354, %2516 ], [ %2542, %2536 ]
  %2556 = trunc i64 %2550 to i16
  %2557 = getelementptr inbounds nuw i8, ptr %2551, i64 6
  store i16 %2556, ptr %2557, align 2, !tbaa !59
  %2558 = getelementptr inbounds nuw i8, ptr %2551, i64 8
  store ptr %2558, ptr %1803, align 8, !tbaa !50
  %2559 = getelementptr inbounds nuw i8, ptr %2555, i64 %2552
  %2560 = icmp ugt ptr %2559, %23
  br i1 %2560, label %2629, label %2561

2561:                                             ; preds = %2549
  %2562 = add i32 %1841, 2
  %2563 = and i64 %1840, 4294967295
  %2564 = getelementptr inbounds nuw i8, ptr %1787, i64 %2563
  %2565 = load i64, ptr %2564, align 1, !tbaa !22
  %2566 = mul i64 %2565, -3523014627193847808
  %2567 = lshr i64 %2566, %1796
  %2568 = getelementptr inbounds nuw i32, ptr %9, i64 %2567
  store i32 %2562, ptr %2568, align 4, !tbaa !23
  %2569 = getelementptr inbounds i8, ptr %2559, i64 -2
  %2570 = ptrtoint ptr %2569 to i64
  %2571 = sub i64 %2570, %52
  %2572 = trunc i64 %2571 to i32
  %2573 = load i64, ptr %2569, align 1, !tbaa !22
  %2574 = mul i64 %2573, -3523014627193847808
  %2575 = lshr i64 %2574, %1796
  %2576 = getelementptr inbounds nuw i32, ptr %9, i64 %2575
  store i32 %2572, ptr %2576, align 4, !tbaa !23
  br label %2577

2577:                                             ; preds = %2618, %2561
  %2578 = phi ptr [ %2558, %2561 ], [ %2621, %2618 ]
  %2579 = phi ptr [ %2559, %2561 ], [ %2627, %2618 ]
  %2580 = phi i32 [ %2554, %2561 ], [ %2581, %2618 ]
  %2581 = phi i32 [ %2553, %2561 ], [ %2580, %2618 ]
  %2582 = ptrtoint ptr %2579 to i64
  %2583 = sub i64 %2582, %52
  %2584 = trunc i64 %2583 to i32
  %2585 = sub i32 %2584, %2581
  %2586 = icmp ult i32 %2585, %19
  %2587 = zext i32 %2585 to i64
  %2588 = select i1 %2586, ptr %1810, ptr %16
  %2589 = getelementptr inbounds nuw i8, ptr %2588, i64 %2587
  %2590 = sub i32 %2585, %19
  %2591 = icmp ugt i32 %2590, -4
  br i1 %2591, label %2629, label %2592

2592:                                             ; preds = %2577
  %2593 = load i32, ptr %2589, align 1, !tbaa !23
  %2594 = load i32, ptr %2579, align 1, !tbaa !23
  %2595 = icmp eq i32 %2593, %2594
  br i1 %2595, label %2596, label %2629

2596:                                             ; preds = %2592
  %2597 = select i1 %2586, ptr %37, ptr %22
  %2598 = getelementptr inbounds nuw i8, ptr %2579, i64 4
  %2599 = getelementptr inbounds nuw i8, ptr %2589, i64 4
  %2600 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %2598, ptr noundef nonnull %2599, ptr noundef %22, ptr noundef %2597, ptr noundef %21)
  %2601 = icmp ugt ptr %2579, %1799
  br i1 %2601, label %2606, label %2602

2602:                                             ; preds = %2596
  %2603 = load ptr, ptr %1800, align 8, !tbaa !39
  %2604 = load <2 x i64>, ptr %2579, align 1, !tbaa !34
  store <2 x i64> %2604, ptr %2603, align 1, !tbaa !34
  %2605 = load ptr, ptr %1803, align 8, !tbaa !50
  br label %2606

2606:                                             ; preds = %2602, %2596
  %2607 = phi ptr [ %2578, %2596 ], [ %2605, %2602 ]
  %2608 = getelementptr inbounds nuw i8, ptr %2607, i64 4
  store i16 0, ptr %2608, align 4, !tbaa !55
  store i32 1, ptr %2607, align 4, !tbaa !57
  %2609 = add i64 %2600, 1
  %2610 = icmp ugt i64 %2609, 65535
  br i1 %2610, label %2611, label %2618, !prof !58

2611:                                             ; preds = %2606
  store i32 2, ptr %1802, align 8, !tbaa !52
  %2612 = load ptr, ptr %1, align 8, !tbaa !53
  %2613 = ptrtoint ptr %2607 to i64
  %2614 = ptrtoint ptr %2612 to i64
  %2615 = sub i64 %2613, %2614
  %2616 = lshr exact i64 %2615, 3
  %2617 = trunc i64 %2616 to i32
  store i32 %2617, ptr %1804, align 4, !tbaa !54
  br label %2618

2618:                                             ; preds = %2611, %2606
  %2619 = trunc i64 %2609 to i16
  %2620 = getelementptr inbounds nuw i8, ptr %2607, i64 6
  store i16 %2619, ptr %2620, align 2, !tbaa !59
  %2621 = getelementptr inbounds nuw i8, ptr %2607, i64 8
  store ptr %2621, ptr %1803, align 8, !tbaa !50
  %2622 = load i64, ptr %2579, align 1, !tbaa !22
  %2623 = mul i64 %2622, -3523014627193847808
  %2624 = lshr i64 %2623, %1796
  %2625 = getelementptr inbounds nuw i32, ptr %9, i64 %2624
  store i32 %2584, ptr %2625, align 4, !tbaa !23
  %2626 = getelementptr i8, ptr %2579, i64 %2600
  %2627 = getelementptr i8, ptr %2626, i64 4
  %2628 = icmp ugt ptr %2627, %23
  br i1 %2628, label %2629, label %2577

2629:                                             ; preds = %2618, %2592, %2577, %2549
  %2630 = phi i32 [ %2553, %2549 ], [ %2581, %2577 ], [ %2581, %2592 ], [ %2580, %2618 ]
  %2631 = phi i32 [ %2554, %2549 ], [ %2580, %2577 ], [ %2580, %2592 ], [ %2581, %2618 ]
  %2632 = phi ptr [ %2559, %2549 ], [ %2579, %2577 ], [ %2579, %2592 ], [ %2627, %2618 ]
  %2633 = getelementptr inbounds nuw i8, ptr %2632, i64 %17
  %2634 = icmp ugt ptr %2633, %23
  br i1 %2634, label %3494, label %1811

2635:                                             ; preds = %5
  br i1 %55, label %2645, label %2636

2636:                                             ; preds = %2635
  %2637 = zext nneg i32 %51 to i64
  %2638 = shl i64 4, %2637
  %2639 = icmp ugt i32 %51, 61
  br i1 %2639, label %2645, label %2640

2640:                                             ; preds = %2636, %2640
  %2641 = phi i64 [ %2643, %2640 ], [ 0, %2636 ]
  %2642 = getelementptr inbounds nuw i8, ptr %30, i64 %2641
  tail call void @llvm.prefetch.p0(ptr %2642, i32 0, i32 2, i32 1)
  %2643 = add i64 %2641, 64
  %2644 = icmp ult i64 %2643, %2638
  br i1 %2644, label %2640, label %2645, !llvm.loop !91

2645:                                             ; preds = %2640, %2636, %2635
  %2646 = getelementptr inbounds nuw i8, ptr %16, i64 2
  %2647 = getelementptr inbounds nuw i8, ptr %3, i64 %17
  %2648 = icmp ugt ptr %2647, %23
  br i1 %2648, label %3494, label %2649

2649:                                             ; preds = %2645
  %2650 = and i64 %49, 4294967295
  %2651 = icmp eq i64 %2650, 0
  %2652 = zext i1 %2651 to i64
  %2653 = getelementptr inbounds nuw i8, ptr %3, i64 %2652
  %2654 = sub i32 64, %11
  %2655 = zext nneg i32 %2654 to i64
  %2656 = sub i32 56, %51
  %2657 = zext nneg i32 %2656 to i64
  %2658 = getelementptr inbounds i8, ptr %22, i64 -32
  %2659 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %2660 = ptrtoint ptr %2658 to i64
  %2661 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %2662 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %2663 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %2664 = getelementptr inbounds i8, ptr %22, i64 -7
  %2665 = getelementptr inbounds i8, ptr %22, i64 -3
  %2666 = getelementptr inbounds i8, ptr %22, i64 -1
  %2667 = zext i32 %42 to i64
  %2668 = sub nsw i64 0, %2667
  %2669 = getelementptr inbounds i8, ptr %34, i64 %2668
  br label %2670

2670:                                             ; preds = %3488, %2649
  %2671 = phi ptr [ %2647, %2649 ], [ %3492, %3488 ]
  %2672 = phi ptr [ %2653, %2649 ], [ %3491, %3488 ]
  %2673 = phi ptr [ %3, %2649 ], [ %3491, %3488 ]
  %2674 = phi i32 [ %24, %2649 ], [ %3490, %3488 ]
  %2675 = phi i32 [ %26, %2649 ], [ %3489, %3488 ]
  %2676 = load i64, ptr %2672, align 1, !tbaa !22
  %2677 = mul i64 %2676, -3523014627193167104
  %2678 = lshr i64 %2677, %2657
  %2679 = lshr i64 %2678, 8
  %2680 = getelementptr inbounds nuw i32, ptr %30, i64 %2679
  %2681 = load i32, ptr %2680, align 4, !tbaa !23
  %2682 = zext i32 %2681 to i64
  %2683 = xor i64 %2678, %2682
  %2684 = getelementptr inbounds nuw i8, ptr %2672, i64 256
  br label %2685

2685:                                             ; preds = %3387, %2670
  %2686 = phi ptr [ %2684, %2670 ], [ %3389, %3387 ]
  %2687 = phi i64 [ %17, %2670 ], [ %3384, %3387 ]
  %2688 = phi i64 [ %2683, %2670 ], [ %3394, %3387 ]
  %2689 = phi i32 [ %2681, %2670 ], [ %3392, %3387 ]
  %2690 = phi i64 [ %2677, %2670 ], [ %2706, %3387 ]
  %2691 = phi ptr [ %2671, %2670 ], [ %3385, %3387 ]
  %2692 = phi ptr [ %2672, %2670 ], [ %2691, %3387 ]
  %2693 = lshr i64 %2690, %2655
  %2694 = getelementptr inbounds nuw i32, ptr %9, i64 %2693
  %2695 = load i32, ptr %2694, align 4, !tbaa !23
  %2696 = and i64 %2688, 255
  %2697 = icmp eq i64 %2696, 0
  %2698 = ptrtoint ptr %2692 to i64
  %2699 = sub i64 %2698, %52
  %2700 = trunc i64 %2699 to i32
  %2701 = zext i32 %2695 to i64
  %2702 = getelementptr inbounds nuw i8, ptr %16, i64 %2701
  %2703 = sub i32 %2700, %2674
  %2704 = add i32 %2703, 1
  %2705 = load i64, ptr %2691, align 1, !tbaa !22
  %2706 = mul i64 %2705, -3523014627193167104
  %2707 = lshr i64 %2706, %2657
  store i32 %2700, ptr %2694, align 4, !tbaa !23
  %2708 = sub i32 %2704, %19
  %2709 = icmp ugt i32 %2708, -4
  br i1 %2709, label %2899, label %2710

2710:                                             ; preds = %2685
  %2711 = icmp ult i32 %2704, %19
  %2712 = sub i32 %2704, %42
  %2713 = zext i32 %2712 to i64
  %2714 = getelementptr inbounds nuw i8, ptr %34, i64 %2713
  %2715 = zext i32 %2704 to i64
  %2716 = getelementptr inbounds nuw i8, ptr %16, i64 %2715
  %2717 = select i1 %2711, ptr %2714, ptr %2716
  %2718 = load i32, ptr %2717, align 1, !tbaa !23
  %2719 = getelementptr inbounds nuw i8, ptr %2692, i64 1
  %2720 = load i32, ptr %2719, align 1, !tbaa !23
  %2721 = icmp eq i32 %2718, %2720
  br i1 %2721, label %2722, label %2899

2722:                                             ; preds = %2710
  %2723 = ptrtoint ptr %2692 to i64
  %2724 = getelementptr inbounds nuw i8, ptr %2692, i64 1
  %2725 = select i1 %2711, ptr %37, ptr %22
  %2726 = getelementptr inbounds nuw i8, ptr %2692, i64 5
  %2727 = getelementptr inbounds nuw i8, ptr %2717, i64 4
  %2728 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %2726, ptr noundef nonnull %2727, ptr noundef %22, ptr noundef %2725, ptr noundef %21)
  %2729 = add i64 %2728, 4
  %2730 = ptrtoint ptr %2724 to i64
  %2731 = ptrtoint ptr %2673 to i64
  %2732 = sub i64 %2730, %2731
  %2733 = icmp ugt ptr %2724, %2658
  %2734 = load ptr, ptr %2659, align 8, !tbaa !39
  br i1 %2733, label %2758, label %2735

2735:                                             ; preds = %2722
  %2736 = load <2 x i64>, ptr %2673, align 1, !tbaa !34
  store <2 x i64> %2736, ptr %2734, align 1, !tbaa !34
  %2737 = icmp ugt i64 %2732, 16
  br i1 %2737, label %2738, label %2877

2738:                                             ; preds = %2735
  %2739 = load ptr, ptr %2659, align 8, !tbaa !39
  %2740 = getelementptr inbounds nuw i8, ptr %2739, i64 16
  %2741 = getelementptr inbounds nuw i8, ptr %2673, i64 16
  %2742 = add i64 %2732, -16
  %2743 = getelementptr i8, ptr %2739, i64 %2732
  %2744 = load <2 x i64>, ptr %2741, align 1, !tbaa !34
  store <2 x i64> %2744, ptr %2740, align 1, !tbaa !34
  %2745 = icmp ult i64 %2742, 17
  br i1 %2745, label %2877, label %2746

2746:                                             ; preds = %2738
  %2747 = getelementptr inbounds nuw i8, ptr %2739, i64 32
  br label %2748

2748:                                             ; preds = %2748, %2746
  %2749 = phi ptr [ %2747, %2746 ], [ %2756, %2748 ]
  %2750 = phi ptr [ %2741, %2746 ], [ %2754, %2748 ]
  %2751 = getelementptr inbounds nuw i8, ptr %2750, i64 16
  %2752 = load <2 x i64>, ptr %2751, align 1, !tbaa !34
  store <2 x i64> %2752, ptr %2749, align 1, !tbaa !34
  %2753 = getelementptr inbounds nuw i8, ptr %2749, i64 16
  %2754 = getelementptr inbounds nuw i8, ptr %2750, i64 32
  %2755 = load <2 x i64>, ptr %2754, align 1, !tbaa !34
  store <2 x i64> %2755, ptr %2753, align 1, !tbaa !34
  %2756 = getelementptr inbounds nuw i8, ptr %2749, i64 32
  %2757 = icmp ult ptr %2756, %2743
  br i1 %2757, label %2748, label %2881, !llvm.loop !42

2758:                                             ; preds = %2722
  %2759 = icmp ugt ptr %2673, %2658
  br i1 %2759, label %2777, label %2760

2760:                                             ; preds = %2758
  %2761 = sub i64 %2660, %2731
  %2762 = getelementptr inbounds i8, ptr %2734, i64 %2761
  %2763 = load <2 x i64>, ptr %2673, align 1, !tbaa !34
  store <2 x i64> %2763, ptr %2734, align 1, !tbaa !34
  %2764 = icmp ult i64 %2761, 17
  br i1 %2764, label %2777, label %2765

2765:                                             ; preds = %2760
  %2766 = getelementptr inbounds nuw i8, ptr %2734, i64 16
  br label %2767

2767:                                             ; preds = %2767, %2765
  %2768 = phi ptr [ %2766, %2765 ], [ %2775, %2767 ]
  %2769 = phi ptr [ %2673, %2765 ], [ %2773, %2767 ]
  %2770 = getelementptr inbounds nuw i8, ptr %2769, i64 16
  %2771 = load <2 x i64>, ptr %2770, align 1, !tbaa !34
  store <2 x i64> %2771, ptr %2768, align 1, !tbaa !34
  %2772 = getelementptr inbounds nuw i8, ptr %2768, i64 16
  %2773 = getelementptr inbounds nuw i8, ptr %2769, i64 32
  %2774 = load <2 x i64>, ptr %2773, align 1, !tbaa !34
  store <2 x i64> %2774, ptr %2772, align 1, !tbaa !34
  %2775 = getelementptr inbounds nuw i8, ptr %2768, i64 32
  %2776 = icmp ult ptr %2775, %2762
  br i1 %2776, label %2767, label %2777, !llvm.loop !42

2777:                                             ; preds = %2767, %2760, %2758
  %2778 = phi ptr [ %2658, %2760 ], [ %2673, %2758 ], [ %2658, %2767 ]
  %2779 = phi ptr [ %2762, %2760 ], [ %2734, %2758 ], [ %2762, %2767 ]
  %2780 = icmp ult ptr %2778, %2724
  br i1 %2780, label %2781, label %2881

2781:                                             ; preds = %2777
  %2782 = ptrtoint ptr %2778 to i64
  %2783 = ptrtoint ptr %2779 to i64
  %2784 = ptrtoint ptr %2778 to i64
  %2785 = sub i64 %2723, %2784
  %2786 = add i64 %2785, 1
  %2787 = icmp ult i64 %2786, 4
  %2788 = sub i64 %2783, %2782
  %2789 = icmp ult i64 %2788, 32
  %2790 = select i1 %2787, i1 true, i1 %2789
  br i1 %2790, label %2826, label %2791

2791:                                             ; preds = %2781
  %2792 = icmp ult i64 %2786, 32
  br i1 %2792, label %2812, label %2793

2793:                                             ; preds = %2791
  %2794 = and i64 %2786, -32
  br label %2795

2795:                                             ; preds = %2795, %2793
  %2796 = phi i64 [ 0, %2793 ], [ %2803, %2795 ]
  %2797 = getelementptr i8, ptr %2779, i64 %2796
  %2798 = getelementptr i8, ptr %2778, i64 %2796
  %2799 = getelementptr i8, ptr %2798, i64 16
  %2800 = load <16 x i8>, ptr %2798, align 1, !tbaa !34
  %2801 = load <16 x i8>, ptr %2799, align 1, !tbaa !34
  %2802 = getelementptr i8, ptr %2797, i64 16
  store <16 x i8> %2800, ptr %2797, align 1, !tbaa !34
  store <16 x i8> %2801, ptr %2802, align 1, !tbaa !34
  %2803 = add nuw i64 %2796, 32
  %2804 = icmp eq i64 %2803, %2794
  br i1 %2804, label %2805, label %2795, !llvm.loop !130

2805:                                             ; preds = %2795
  %2806 = icmp eq i64 %2786, %2794
  br i1 %2806, label %2881, label %2807

2807:                                             ; preds = %2805
  %2808 = getelementptr i8, ptr %2779, i64 %2794
  %2809 = getelementptr i8, ptr %2778, i64 %2794
  %2810 = and i64 %2786, 28
  %2811 = icmp eq i64 %2810, 0
  br i1 %2811, label %2826, label %2812

2812:                                             ; preds = %2807, %2791
  %2813 = phi i64 [ %2794, %2807 ], [ 0, %2791 ]
  %2814 = and i64 %2786, -4
  %2815 = getelementptr i8, ptr %2779, i64 %2814
  %2816 = getelementptr i8, ptr %2778, i64 %2814
  br label %2817

2817:                                             ; preds = %2817, %2812
  %2818 = phi i64 [ %2813, %2812 ], [ %2822, %2817 ]
  %2819 = getelementptr i8, ptr %2779, i64 %2818
  %2820 = getelementptr i8, ptr %2778, i64 %2818
  %2821 = load <4 x i8>, ptr %2820, align 1, !tbaa !34
  store <4 x i8> %2821, ptr %2819, align 1, !tbaa !34
  %2822 = add nuw i64 %2818, 4
  %2823 = icmp eq i64 %2822, %2814
  br i1 %2823, label %2824, label %2817, !llvm.loop !131

2824:                                             ; preds = %2817
  %2825 = icmp eq i64 %2786, %2814
  br i1 %2825, label %2881, label %2826

2826:                                             ; preds = %2807, %2824, %2781
  %2827 = phi ptr [ %2779, %2781 ], [ %2808, %2807 ], [ %2815, %2824 ]
  %2828 = phi ptr [ %2778, %2781 ], [ %2809, %2807 ], [ %2816, %2824 ]
  %2829 = ptrtoint ptr %2828 to i64
  %2830 = sub i64 %2723, %2829
  %2831 = add i64 %2830, 1
  %2832 = sub i64 %2723, %2829
  %2833 = and i64 %2831, 7
  %2834 = and i64 %2830, 7
  %2835 = icmp eq i64 %2834, 7
  br i1 %2835, label %2845, label %2836

2836:                                             ; preds = %2826, %2836
  %2837 = phi ptr [ %2842, %2836 ], [ %2827, %2826 ]
  %2838 = phi ptr [ %2840, %2836 ], [ %2828, %2826 ]
  %2839 = phi i64 [ %2843, %2836 ], [ 0, %2826 ]
  %2840 = getelementptr inbounds nuw i8, ptr %2838, i64 1
  %2841 = load i8, ptr %2838, align 1, !tbaa !34
  %2842 = getelementptr inbounds nuw i8, ptr %2837, i64 1
  store i8 %2841, ptr %2837, align 1, !tbaa !34
  %2843 = add i64 %2839, 1
  %2844 = icmp eq i64 %2843, %2833
  br i1 %2844, label %2845, label %2836, !llvm.loop !132

2845:                                             ; preds = %2836, %2826
  %2846 = phi ptr [ %2827, %2826 ], [ %2842, %2836 ]
  %2847 = phi ptr [ %2828, %2826 ], [ %2840, %2836 ]
  %2848 = icmp ult i64 %2832, 7
  br i1 %2848, label %2881, label %2849

2849:                                             ; preds = %2845, %2849
  %2850 = phi ptr [ %2875, %2849 ], [ %2846, %2845 ]
  %2851 = phi ptr [ %2873, %2849 ], [ %2847, %2845 ]
  %2852 = getelementptr inbounds nuw i8, ptr %2851, i64 1
  %2853 = load i8, ptr %2851, align 1, !tbaa !34
  %2854 = getelementptr inbounds nuw i8, ptr %2850, i64 1
  store i8 %2853, ptr %2850, align 1, !tbaa !34
  %2855 = getelementptr inbounds nuw i8, ptr %2851, i64 2
  %2856 = load i8, ptr %2852, align 1, !tbaa !34
  %2857 = getelementptr inbounds nuw i8, ptr %2850, i64 2
  store i8 %2856, ptr %2854, align 1, !tbaa !34
  %2858 = getelementptr inbounds nuw i8, ptr %2851, i64 3
  %2859 = load i8, ptr %2855, align 1, !tbaa !34
  %2860 = getelementptr inbounds nuw i8, ptr %2850, i64 3
  store i8 %2859, ptr %2857, align 1, !tbaa !34
  %2861 = getelementptr inbounds nuw i8, ptr %2851, i64 4
  %2862 = load i8, ptr %2858, align 1, !tbaa !34
  %2863 = getelementptr inbounds nuw i8, ptr %2850, i64 4
  store i8 %2862, ptr %2860, align 1, !tbaa !34
  %2864 = getelementptr inbounds nuw i8, ptr %2851, i64 5
  %2865 = load i8, ptr %2861, align 1, !tbaa !34
  %2866 = getelementptr inbounds nuw i8, ptr %2850, i64 5
  store i8 %2865, ptr %2863, align 1, !tbaa !34
  %2867 = getelementptr inbounds nuw i8, ptr %2851, i64 6
  %2868 = load i8, ptr %2864, align 1, !tbaa !34
  %2869 = getelementptr inbounds nuw i8, ptr %2850, i64 6
  store i8 %2868, ptr %2866, align 1, !tbaa !34
  %2870 = getelementptr inbounds nuw i8, ptr %2851, i64 7
  %2871 = load i8, ptr %2867, align 1, !tbaa !34
  %2872 = getelementptr inbounds nuw i8, ptr %2850, i64 7
  store i8 %2871, ptr %2869, align 1, !tbaa !34
  %2873 = getelementptr inbounds nuw i8, ptr %2851, i64 8
  %2874 = load i8, ptr %2870, align 1, !tbaa !34
  %2875 = getelementptr inbounds nuw i8, ptr %2850, i64 8
  store i8 %2874, ptr %2872, align 1, !tbaa !34
  %2876 = icmp eq ptr %2870, %2692
  br i1 %2876, label %2881, label %2849, !llvm.loop !133

2877:                                             ; preds = %2738, %2735
  %2878 = load ptr, ptr %2659, align 8, !tbaa !39
  %2879 = getelementptr inbounds nuw i8, ptr %2878, i64 %2732
  store ptr %2879, ptr %2659, align 8, !tbaa !39
  %2880 = load ptr, ptr %2662, align 8, !tbaa !50
  br label %2893

2881:                                             ; preds = %2748, %2845, %2849, %2805, %2824, %2777
  %2882 = load ptr, ptr %2659, align 8, !tbaa !39
  %2883 = getelementptr inbounds nuw i8, ptr %2882, i64 %2732
  store ptr %2883, ptr %2659, align 8, !tbaa !39
  %2884 = icmp ugt i64 %2732, 65535
  %2885 = load ptr, ptr %2662, align 8, !tbaa !50
  br i1 %2884, label %2886, label %2893, !prof !51

2886:                                             ; preds = %2881
  store i32 1, ptr %2661, align 8, !tbaa !52
  %2887 = load ptr, ptr %1, align 8, !tbaa !53
  %2888 = ptrtoint ptr %2885 to i64
  %2889 = ptrtoint ptr %2887 to i64
  %2890 = sub i64 %2888, %2889
  %2891 = lshr exact i64 %2890, 3
  %2892 = trunc i64 %2891 to i32
  store i32 %2892, ptr %2663, align 4, !tbaa !54
  br label %2893

2893:                                             ; preds = %2886, %2881, %2877
  %2894 = phi ptr [ %2880, %2877 ], [ %2885, %2886 ], [ %2885, %2881 ]
  %2895 = trunc i64 %2732 to i16
  %2896 = getelementptr inbounds nuw i8, ptr %2894, i64 4
  store i16 %2895, ptr %2896, align 4, !tbaa !55
  store i32 1, ptr %2894, align 4, !tbaa !57
  %2897 = add i64 %2728, 1
  %2898 = icmp ugt i64 %2897, 65535
  br i1 %2898, label %3395, label %3408, !prof !58

2899:                                             ; preds = %2710, %2685
  br i1 %2697, label %2900, label %3109

2900:                                             ; preds = %2899
  %2901 = lshr i32 %2689, 8
  %2902 = icmp ugt i32 %2901, %32
  br i1 %2902, label %2903, label %3109

2903:                                             ; preds = %2900
  %2904 = zext nneg i32 %2901 to i64
  %2905 = getelementptr inbounds nuw i8, ptr %34, i64 %2904
  %2906 = load i32, ptr %2905, align 1, !tbaa !23
  %2907 = load i32, ptr %2692, align 1, !tbaa !23
  %2908 = icmp ne i32 %2906, %2907
  %2909 = icmp ugt i32 %2695, %19
  %2910 = select i1 %2908, i1 true, i1 %2909
  br i1 %2910, label %3109, label %2911

2911:                                             ; preds = %2903
  %2912 = getelementptr inbounds nuw i8, ptr %34, i64 %2904
  %2913 = add i32 %2901, %42
  %2914 = sub i32 %2700, %2913
  %2915 = getelementptr inbounds nuw i8, ptr %2692, i64 4
  %2916 = getelementptr inbounds nuw i8, ptr %2912, i64 4
  %2917 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %2915, ptr noundef nonnull %2916, ptr noundef %22, ptr noundef %37, ptr noundef %21)
  %2918 = add i64 %2917, 4
  %2919 = icmp ugt ptr %2692, %2673
  br i1 %2919, label %2920, label %2938

2920:                                             ; preds = %2911, %2929
  %2921 = phi ptr [ %2924, %2929 ], [ %2692, %2911 ]
  %2922 = phi i64 [ %2930, %2929 ], [ %2918, %2911 ]
  %2923 = phi ptr [ %2926, %2929 ], [ %2912, %2911 ]
  %2924 = getelementptr inbounds i8, ptr %2921, i64 -1
  %2925 = load i8, ptr %2924, align 1, !tbaa !34
  %2926 = getelementptr inbounds i8, ptr %2923, i64 -1
  %2927 = load i8, ptr %2926, align 1, !tbaa !34
  %2928 = icmp eq i8 %2925, %2927
  br i1 %2928, label %2929, label %2934

2929:                                             ; preds = %2920
  %2930 = add i64 %2922, 1
  %2931 = icmp ugt ptr %2924, %2673
  %2932 = icmp ugt ptr %2926, %36
  %2933 = and i1 %2931, %2932
  br i1 %2933, label %2920, label %2934, !llvm.loop !96

2934:                                             ; preds = %2929, %2920
  %2935 = phi i64 [ %2930, %2929 ], [ %2922, %2920 ]
  %2936 = phi ptr [ %2924, %2929 ], [ %2921, %2920 ]
  %2937 = ptrtoint ptr %2936 to i64
  br label %2938

2938:                                             ; preds = %2934, %2911
  %2939 = phi i64 [ %2937, %2934 ], [ %2698, %2911 ]
  %2940 = phi i64 [ %2935, %2934 ], [ %2918, %2911 ]
  %2941 = phi ptr [ %2936, %2934 ], [ %2692, %2911 ]
  %2942 = ptrtoint ptr %2941 to i64
  %2943 = ptrtoint ptr %2673 to i64
  %2944 = sub i64 %2939, %2943
  %2945 = add i32 %2914, 3
  %2946 = icmp ugt ptr %2941, %2658
  %2947 = load ptr, ptr %2659, align 8, !tbaa !39
  br i1 %2946, label %2971, label %2948

2948:                                             ; preds = %2938
  %2949 = load <2 x i64>, ptr %2673, align 1, !tbaa !34
  store <2 x i64> %2949, ptr %2947, align 1, !tbaa !34
  %2950 = icmp ugt i64 %2944, 16
  br i1 %2950, label %2951, label %3087

2951:                                             ; preds = %2948
  %2952 = load ptr, ptr %2659, align 8, !tbaa !39
  %2953 = getelementptr inbounds nuw i8, ptr %2952, i64 16
  %2954 = getelementptr inbounds nuw i8, ptr %2673, i64 16
  %2955 = add i64 %2944, -16
  %2956 = getelementptr i8, ptr %2952, i64 %2944
  %2957 = load <2 x i64>, ptr %2954, align 1, !tbaa !34
  store <2 x i64> %2957, ptr %2953, align 1, !tbaa !34
  %2958 = icmp ult i64 %2955, 17
  br i1 %2958, label %3087, label %2959

2959:                                             ; preds = %2951
  %2960 = getelementptr inbounds nuw i8, ptr %2952, i64 32
  br label %2961

2961:                                             ; preds = %2961, %2959
  %2962 = phi ptr [ %2960, %2959 ], [ %2969, %2961 ]
  %2963 = phi ptr [ %2954, %2959 ], [ %2967, %2961 ]
  %2964 = getelementptr inbounds nuw i8, ptr %2963, i64 16
  %2965 = load <2 x i64>, ptr %2964, align 1, !tbaa !34
  store <2 x i64> %2965, ptr %2962, align 1, !tbaa !34
  %2966 = getelementptr inbounds nuw i8, ptr %2962, i64 16
  %2967 = getelementptr inbounds nuw i8, ptr %2963, i64 32
  %2968 = load <2 x i64>, ptr %2967, align 1, !tbaa !34
  store <2 x i64> %2968, ptr %2966, align 1, !tbaa !34
  %2969 = getelementptr inbounds nuw i8, ptr %2962, i64 32
  %2970 = icmp ult ptr %2969, %2956
  br i1 %2970, label %2961, label %3091, !llvm.loop !42

2971:                                             ; preds = %2938
  %2972 = icmp ugt ptr %2673, %2658
  br i1 %2972, label %2990, label %2973

2973:                                             ; preds = %2971
  %2974 = sub i64 %2660, %2943
  %2975 = getelementptr inbounds i8, ptr %2947, i64 %2974
  %2976 = load <2 x i64>, ptr %2673, align 1, !tbaa !34
  store <2 x i64> %2976, ptr %2947, align 1, !tbaa !34
  %2977 = icmp ult i64 %2974, 17
  br i1 %2977, label %2990, label %2978

2978:                                             ; preds = %2973
  %2979 = getelementptr inbounds nuw i8, ptr %2947, i64 16
  br label %2980

2980:                                             ; preds = %2980, %2978
  %2981 = phi ptr [ %2979, %2978 ], [ %2988, %2980 ]
  %2982 = phi ptr [ %2673, %2978 ], [ %2986, %2980 ]
  %2983 = getelementptr inbounds nuw i8, ptr %2982, i64 16
  %2984 = load <2 x i64>, ptr %2983, align 1, !tbaa !34
  store <2 x i64> %2984, ptr %2981, align 1, !tbaa !34
  %2985 = getelementptr inbounds nuw i8, ptr %2981, i64 16
  %2986 = getelementptr inbounds nuw i8, ptr %2982, i64 32
  %2987 = load <2 x i64>, ptr %2986, align 1, !tbaa !34
  store <2 x i64> %2987, ptr %2985, align 1, !tbaa !34
  %2988 = getelementptr inbounds nuw i8, ptr %2981, i64 32
  %2989 = icmp ult ptr %2988, %2975
  br i1 %2989, label %2980, label %2990, !llvm.loop !42

2990:                                             ; preds = %2980, %2973, %2971
  %2991 = phi ptr [ %2658, %2973 ], [ %2673, %2971 ], [ %2658, %2980 ]
  %2992 = phi ptr [ %2975, %2973 ], [ %2947, %2971 ], [ %2975, %2980 ]
  %2993 = icmp ult ptr %2991, %2941
  br i1 %2993, label %2994, label %3091

2994:                                             ; preds = %2990
  %2995 = ptrtoint ptr %2991 to i64
  %2996 = ptrtoint ptr %2992 to i64
  %2997 = ptrtoint ptr %2991 to i64
  %2998 = sub i64 %2942, %2997
  %2999 = icmp ult i64 %2998, 4
  %3000 = sub i64 %2996, %2995
  %3001 = icmp ult i64 %3000, 32
  %3002 = select i1 %2999, i1 true, i1 %3001
  br i1 %3002, label %3038, label %3003

3003:                                             ; preds = %2994
  %3004 = icmp ult i64 %2998, 32
  br i1 %3004, label %3024, label %3005

3005:                                             ; preds = %3003
  %3006 = and i64 %2998, -32
  br label %3007

3007:                                             ; preds = %3007, %3005
  %3008 = phi i64 [ 0, %3005 ], [ %3015, %3007 ]
  %3009 = getelementptr i8, ptr %2992, i64 %3008
  %3010 = getelementptr i8, ptr %2991, i64 %3008
  %3011 = getelementptr i8, ptr %3010, i64 16
  %3012 = load <16 x i8>, ptr %3010, align 1, !tbaa !34
  %3013 = load <16 x i8>, ptr %3011, align 1, !tbaa !34
  %3014 = getelementptr i8, ptr %3009, i64 16
  store <16 x i8> %3012, ptr %3009, align 1, !tbaa !34
  store <16 x i8> %3013, ptr %3014, align 1, !tbaa !34
  %3015 = add nuw i64 %3008, 32
  %3016 = icmp eq i64 %3015, %3006
  br i1 %3016, label %3017, label %3007, !llvm.loop !134

3017:                                             ; preds = %3007
  %3018 = icmp eq i64 %2998, %3006
  br i1 %3018, label %3091, label %3019

3019:                                             ; preds = %3017
  %3020 = getelementptr i8, ptr %2992, i64 %3006
  %3021 = getelementptr i8, ptr %2991, i64 %3006
  %3022 = and i64 %2998, 28
  %3023 = icmp eq i64 %3022, 0
  br i1 %3023, label %3038, label %3024

3024:                                             ; preds = %3019, %3003
  %3025 = phi i64 [ %3006, %3019 ], [ 0, %3003 ]
  %3026 = and i64 %2998, -4
  %3027 = getelementptr i8, ptr %2992, i64 %3026
  %3028 = getelementptr i8, ptr %2991, i64 %3026
  br label %3029

3029:                                             ; preds = %3029, %3024
  %3030 = phi i64 [ %3025, %3024 ], [ %3034, %3029 ]
  %3031 = getelementptr i8, ptr %2992, i64 %3030
  %3032 = getelementptr i8, ptr %2991, i64 %3030
  %3033 = load <4 x i8>, ptr %3032, align 1, !tbaa !34
  store <4 x i8> %3033, ptr %3031, align 1, !tbaa !34
  %3034 = add nuw i64 %3030, 4
  %3035 = icmp eq i64 %3034, %3026
  br i1 %3035, label %3036, label %3029, !llvm.loop !135

3036:                                             ; preds = %3029
  %3037 = icmp eq i64 %2998, %3026
  br i1 %3037, label %3091, label %3038

3038:                                             ; preds = %3019, %3036, %2994
  %3039 = phi ptr [ %2992, %2994 ], [ %3020, %3019 ], [ %3027, %3036 ]
  %3040 = phi ptr [ %2991, %2994 ], [ %3021, %3019 ], [ %3028, %3036 ]
  %3041 = ptrtoint ptr %3040 to i64
  %3042 = sub i64 %2942, %3041
  %3043 = and i64 %3042, 7
  %3044 = icmp eq i64 %3043, 0
  br i1 %3044, label %3054, label %3045

3045:                                             ; preds = %3038, %3045
  %3046 = phi ptr [ %3051, %3045 ], [ %3039, %3038 ]
  %3047 = phi ptr [ %3049, %3045 ], [ %3040, %3038 ]
  %3048 = phi i64 [ %3052, %3045 ], [ 0, %3038 ]
  %3049 = getelementptr inbounds nuw i8, ptr %3047, i64 1
  %3050 = load i8, ptr %3047, align 1, !tbaa !34
  %3051 = getelementptr inbounds nuw i8, ptr %3046, i64 1
  store i8 %3050, ptr %3046, align 1, !tbaa !34
  %3052 = add i64 %3048, 1
  %3053 = icmp eq i64 %3052, %3043
  br i1 %3053, label %3054, label %3045, !llvm.loop !136

3054:                                             ; preds = %3045, %3038
  %3055 = phi ptr [ %3039, %3038 ], [ %3051, %3045 ]
  %3056 = phi ptr [ %3040, %3038 ], [ %3049, %3045 ]
  %3057 = sub i64 %3041, %2942
  %3058 = icmp ugt i64 %3057, -8
  br i1 %3058, label %3091, label %3059

3059:                                             ; preds = %3054, %3059
  %3060 = phi ptr [ %3085, %3059 ], [ %3055, %3054 ]
  %3061 = phi ptr [ %3083, %3059 ], [ %3056, %3054 ]
  %3062 = getelementptr inbounds nuw i8, ptr %3061, i64 1
  %3063 = load i8, ptr %3061, align 1, !tbaa !34
  %3064 = getelementptr inbounds nuw i8, ptr %3060, i64 1
  store i8 %3063, ptr %3060, align 1, !tbaa !34
  %3065 = getelementptr inbounds nuw i8, ptr %3061, i64 2
  %3066 = load i8, ptr %3062, align 1, !tbaa !34
  %3067 = getelementptr inbounds nuw i8, ptr %3060, i64 2
  store i8 %3066, ptr %3064, align 1, !tbaa !34
  %3068 = getelementptr inbounds nuw i8, ptr %3061, i64 3
  %3069 = load i8, ptr %3065, align 1, !tbaa !34
  %3070 = getelementptr inbounds nuw i8, ptr %3060, i64 3
  store i8 %3069, ptr %3067, align 1, !tbaa !34
  %3071 = getelementptr inbounds nuw i8, ptr %3061, i64 4
  %3072 = load i8, ptr %3068, align 1, !tbaa !34
  %3073 = getelementptr inbounds nuw i8, ptr %3060, i64 4
  store i8 %3072, ptr %3070, align 1, !tbaa !34
  %3074 = getelementptr inbounds nuw i8, ptr %3061, i64 5
  %3075 = load i8, ptr %3071, align 1, !tbaa !34
  %3076 = getelementptr inbounds nuw i8, ptr %3060, i64 5
  store i8 %3075, ptr %3073, align 1, !tbaa !34
  %3077 = getelementptr inbounds nuw i8, ptr %3061, i64 6
  %3078 = load i8, ptr %3074, align 1, !tbaa !34
  %3079 = getelementptr inbounds nuw i8, ptr %3060, i64 6
  store i8 %3078, ptr %3076, align 1, !tbaa !34
  %3080 = getelementptr inbounds nuw i8, ptr %3061, i64 7
  %3081 = load i8, ptr %3077, align 1, !tbaa !34
  %3082 = getelementptr inbounds nuw i8, ptr %3060, i64 7
  store i8 %3081, ptr %3079, align 1, !tbaa !34
  %3083 = getelementptr inbounds nuw i8, ptr %3061, i64 8
  %3084 = load i8, ptr %3080, align 1, !tbaa !34
  %3085 = getelementptr inbounds nuw i8, ptr %3060, i64 8
  store i8 %3084, ptr %3082, align 1, !tbaa !34
  %3086 = icmp eq ptr %3083, %2941
  br i1 %3086, label %3091, label %3059, !llvm.loop !137

3087:                                             ; preds = %2951, %2948
  %3088 = load ptr, ptr %2659, align 8, !tbaa !39
  %3089 = getelementptr inbounds nuw i8, ptr %3088, i64 %2944
  store ptr %3089, ptr %2659, align 8, !tbaa !39
  %3090 = load ptr, ptr %2662, align 8, !tbaa !50
  br label %3103

3091:                                             ; preds = %2961, %3054, %3059, %3017, %3036, %2990
  %3092 = load ptr, ptr %2659, align 8, !tbaa !39
  %3093 = getelementptr inbounds nuw i8, ptr %3092, i64 %2944
  store ptr %3093, ptr %2659, align 8, !tbaa !39
  %3094 = icmp ugt i64 %2944, 65535
  %3095 = load ptr, ptr %2662, align 8, !tbaa !50
  br i1 %3094, label %3096, label %3103, !prof !51

3096:                                             ; preds = %3091
  store i32 1, ptr %2661, align 8, !tbaa !52
  %3097 = load ptr, ptr %1, align 8, !tbaa !53
  %3098 = ptrtoint ptr %3095 to i64
  %3099 = ptrtoint ptr %3097 to i64
  %3100 = sub i64 %3098, %3099
  %3101 = lshr exact i64 %3100, 3
  %3102 = trunc i64 %3101 to i32
  store i32 %3102, ptr %2663, align 4, !tbaa !54
  br label %3103

3103:                                             ; preds = %3096, %3091, %3087
  %3104 = phi ptr [ %3090, %3087 ], [ %3095, %3096 ], [ %3095, %3091 ]
  %3105 = trunc i64 %2944 to i16
  %3106 = getelementptr inbounds nuw i8, ptr %3104, i64 4
  store i16 %3105, ptr %3106, align 4, !tbaa !55
  store i32 %2945, ptr %3104, align 4, !tbaa !57
  %3107 = add i64 %2940, -3
  %3108 = icmp ugt i64 %3107, 65535
  br i1 %3108, label %3395, label %3408, !prof !58

3109:                                             ; preds = %2903, %2900, %2899
  %3110 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %2695, i32 %19, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %2702) #7, !srcloc !32
  %3111 = load i32, ptr %2692, align 1, !tbaa !23
  %3112 = load i32, ptr %3110, align 1, !tbaa !23
  %3113 = icmp eq i32 %3111, %3112
  br i1 %3113, label %3114, label %3381

3114:                                             ; preds = %3109
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !33
  %3115 = icmp ult i32 %2695, %19
  br i1 %3115, label %3381, label %3116

3116:                                             ; preds = %3114
  %3117 = ptrtoint ptr %2702 to i64
  %3118 = sub i64 %2698, %3117
  %3119 = trunc i64 %3118 to i32
  %3120 = getelementptr inbounds nuw i8, ptr %2692, i64 4
  %3121 = getelementptr inbounds nuw i8, ptr %2702, i64 4
  %3122 = icmp ult ptr %3120, %2664
  br i1 %3122, label %3123, label %3149

3123:                                             ; preds = %3116
  %3124 = load i64, ptr %3121, align 1, !tbaa !22
  %3125 = load i64, ptr %3120, align 1, !tbaa !22
  %3126 = icmp eq i64 %3124, %3125
  br i1 %3126, label %3131, label %3127

3127:                                             ; preds = %3123
  %3128 = xor i64 %3125, %3124
  %3129 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3128, i1 true)
  %3130 = lshr i64 %3129, 3
  br label %3186

3131:                                             ; preds = %3123, %3137
  %3132 = phi ptr [ %3135, %3137 ], [ %3121, %3123 ]
  %3133 = phi ptr [ %3134, %3137 ], [ %3120, %3123 ]
  %3134 = getelementptr inbounds nuw i8, ptr %3133, i64 8
  %3135 = getelementptr inbounds nuw i8, ptr %3132, i64 8
  %3136 = icmp ult ptr %3134, %2664
  br i1 %3136, label %3137, label %3149

3137:                                             ; preds = %3131
  %3138 = load i64, ptr %3135, align 1, !tbaa !22
  %3139 = load i64, ptr %3134, align 1, !tbaa !22
  %3140 = icmp eq i64 %3138, %3139
  br i1 %3140, label %3131, label %3141

3141:                                             ; preds = %3137
  %3142 = xor i64 %3139, %3138
  %3143 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3142, i1 true)
  %3144 = lshr i64 %3143, 3
  %3145 = getelementptr inbounds nuw i8, ptr %3134, i64 %3144
  %3146 = ptrtoint ptr %3145 to i64
  %3147 = ptrtoint ptr %3120 to i64
  %3148 = sub i64 %3146, %3147
  br label %3186

3149:                                             ; preds = %3131, %3116
  %3150 = phi ptr [ %3121, %3116 ], [ %3135, %3131 ]
  %3151 = phi ptr [ %3120, %3116 ], [ %3134, %3131 ]
  %3152 = icmp ult ptr %3151, %2665
  br i1 %3152, label %3153, label %3160

3153:                                             ; preds = %3149
  %3154 = load i32, ptr %3150, align 1, !tbaa !23
  %3155 = load i32, ptr %3151, align 1, !tbaa !23
  %3156 = icmp eq i32 %3154, %3155
  br i1 %3156, label %3157, label %3160

3157:                                             ; preds = %3153
  %3158 = getelementptr inbounds nuw i8, ptr %3151, i64 4
  %3159 = getelementptr inbounds nuw i8, ptr %3150, i64 4
  br label %3160

3160:                                             ; preds = %3157, %3153, %3149
  %3161 = phi ptr [ %3159, %3157 ], [ %3150, %3153 ], [ %3150, %3149 ]
  %3162 = phi ptr [ %3158, %3157 ], [ %3151, %3153 ], [ %3151, %3149 ]
  %3163 = icmp ult ptr %3162, %2666
  br i1 %3163, label %3164, label %3171

3164:                                             ; preds = %3160
  %3165 = load i16, ptr %3161, align 1, !tbaa !37
  %3166 = load i16, ptr %3162, align 1, !tbaa !37
  %3167 = icmp eq i16 %3165, %3166
  br i1 %3167, label %3168, label %3171

3168:                                             ; preds = %3164
  %3169 = getelementptr inbounds nuw i8, ptr %3162, i64 2
  %3170 = getelementptr inbounds nuw i8, ptr %3161, i64 2
  br label %3171

3171:                                             ; preds = %3168, %3164, %3160
  %3172 = phi ptr [ %3170, %3168 ], [ %3161, %3164 ], [ %3161, %3160 ]
  %3173 = phi ptr [ %3169, %3168 ], [ %3162, %3164 ], [ %3162, %3160 ]
  %3174 = icmp ult ptr %3173, %22
  br i1 %3174, label %3175, label %3181

3175:                                             ; preds = %3171
  %3176 = load i8, ptr %3172, align 1, !tbaa !34
  %3177 = load i8, ptr %3173, align 1, !tbaa !34
  %3178 = icmp eq i8 %3176, %3177
  %3179 = zext i1 %3178 to i64
  %3180 = getelementptr inbounds nuw i8, ptr %3173, i64 %3179
  br label %3181

3181:                                             ; preds = %3175, %3171
  %3182 = phi ptr [ %3173, %3171 ], [ %3180, %3175 ]
  %3183 = ptrtoint ptr %3182 to i64
  %3184 = ptrtoint ptr %3120 to i64
  %3185 = sub i64 %3183, %3184
  br label %3186

3186:                                             ; preds = %3181, %3141, %3127
  %3187 = phi i64 [ %3185, %3181 ], [ %3130, %3127 ], [ %3148, %3141 ]
  %3188 = add i64 %3187, 4
  %3189 = icmp ugt ptr %2692, %2673
  %3190 = icmp ugt i32 %2695, %19
  %3191 = and i1 %3189, %3190
  br i1 %3191, label %3192, label %3210

3192:                                             ; preds = %3186, %3201
  %3193 = phi ptr [ %3196, %3201 ], [ %2692, %3186 ]
  %3194 = phi i64 [ %3202, %3201 ], [ %3188, %3186 ]
  %3195 = phi ptr [ %3198, %3201 ], [ %2702, %3186 ]
  %3196 = getelementptr inbounds i8, ptr %3193, i64 -1
  %3197 = load i8, ptr %3196, align 1, !tbaa !34
  %3198 = getelementptr inbounds i8, ptr %3195, i64 -1
  %3199 = load i8, ptr %3198, align 1, !tbaa !34
  %3200 = icmp eq i8 %3197, %3199
  br i1 %3200, label %3201, label %3206

3201:                                             ; preds = %3192
  %3202 = add i64 %3194, 1
  %3203 = icmp ugt ptr %3196, %2673
  %3204 = icmp ugt ptr %3198, %21
  %3205 = and i1 %3203, %3204
  br i1 %3205, label %3192, label %3206, !llvm.loop !101

3206:                                             ; preds = %3201, %3192
  %3207 = phi i64 [ %3202, %3201 ], [ %3194, %3192 ]
  %3208 = phi ptr [ %3196, %3201 ], [ %3193, %3192 ]
  %3209 = ptrtoint ptr %3208 to i64
  br label %3210

3210:                                             ; preds = %3206, %3186
  %3211 = phi i64 [ %3209, %3206 ], [ %2698, %3186 ]
  %3212 = phi i64 [ %3207, %3206 ], [ %3188, %3186 ]
  %3213 = phi ptr [ %3208, %3206 ], [ %2692, %3186 ]
  %3214 = ptrtoint ptr %3213 to i64
  %3215 = ptrtoint ptr %2673 to i64
  %3216 = sub i64 %3211, %3215
  %3217 = add i32 %3119, 3
  %3218 = icmp ugt ptr %3213, %2658
  %3219 = load ptr, ptr %2659, align 8, !tbaa !39
  br i1 %3218, label %3243, label %3220

3220:                                             ; preds = %3210
  %3221 = load <2 x i64>, ptr %2673, align 1, !tbaa !34
  store <2 x i64> %3221, ptr %3219, align 1, !tbaa !34
  %3222 = icmp ugt i64 %3216, 16
  br i1 %3222, label %3223, label %3359

3223:                                             ; preds = %3220
  %3224 = load ptr, ptr %2659, align 8, !tbaa !39
  %3225 = getelementptr inbounds nuw i8, ptr %3224, i64 16
  %3226 = getelementptr inbounds nuw i8, ptr %2673, i64 16
  %3227 = add i64 %3216, -16
  %3228 = getelementptr i8, ptr %3224, i64 %3216
  %3229 = load <2 x i64>, ptr %3226, align 1, !tbaa !34
  store <2 x i64> %3229, ptr %3225, align 1, !tbaa !34
  %3230 = icmp ult i64 %3227, 17
  br i1 %3230, label %3359, label %3231

3231:                                             ; preds = %3223
  %3232 = getelementptr inbounds nuw i8, ptr %3224, i64 32
  br label %3233

3233:                                             ; preds = %3233, %3231
  %3234 = phi ptr [ %3232, %3231 ], [ %3241, %3233 ]
  %3235 = phi ptr [ %3226, %3231 ], [ %3239, %3233 ]
  %3236 = getelementptr inbounds nuw i8, ptr %3235, i64 16
  %3237 = load <2 x i64>, ptr %3236, align 1, !tbaa !34
  store <2 x i64> %3237, ptr %3234, align 1, !tbaa !34
  %3238 = getelementptr inbounds nuw i8, ptr %3234, i64 16
  %3239 = getelementptr inbounds nuw i8, ptr %3235, i64 32
  %3240 = load <2 x i64>, ptr %3239, align 1, !tbaa !34
  store <2 x i64> %3240, ptr %3238, align 1, !tbaa !34
  %3241 = getelementptr inbounds nuw i8, ptr %3234, i64 32
  %3242 = icmp ult ptr %3241, %3228
  br i1 %3242, label %3233, label %3363, !llvm.loop !42

3243:                                             ; preds = %3210
  %3244 = icmp ugt ptr %2673, %2658
  br i1 %3244, label %3262, label %3245

3245:                                             ; preds = %3243
  %3246 = sub i64 %2660, %3215
  %3247 = getelementptr inbounds i8, ptr %3219, i64 %3246
  %3248 = load <2 x i64>, ptr %2673, align 1, !tbaa !34
  store <2 x i64> %3248, ptr %3219, align 1, !tbaa !34
  %3249 = icmp ult i64 %3246, 17
  br i1 %3249, label %3262, label %3250

3250:                                             ; preds = %3245
  %3251 = getelementptr inbounds nuw i8, ptr %3219, i64 16
  br label %3252

3252:                                             ; preds = %3252, %3250
  %3253 = phi ptr [ %3251, %3250 ], [ %3260, %3252 ]
  %3254 = phi ptr [ %2673, %3250 ], [ %3258, %3252 ]
  %3255 = getelementptr inbounds nuw i8, ptr %3254, i64 16
  %3256 = load <2 x i64>, ptr %3255, align 1, !tbaa !34
  store <2 x i64> %3256, ptr %3253, align 1, !tbaa !34
  %3257 = getelementptr inbounds nuw i8, ptr %3253, i64 16
  %3258 = getelementptr inbounds nuw i8, ptr %3254, i64 32
  %3259 = load <2 x i64>, ptr %3258, align 1, !tbaa !34
  store <2 x i64> %3259, ptr %3257, align 1, !tbaa !34
  %3260 = getelementptr inbounds nuw i8, ptr %3253, i64 32
  %3261 = icmp ult ptr %3260, %3247
  br i1 %3261, label %3252, label %3262, !llvm.loop !42

3262:                                             ; preds = %3252, %3245, %3243
  %3263 = phi ptr [ %2658, %3245 ], [ %2673, %3243 ], [ %2658, %3252 ]
  %3264 = phi ptr [ %3247, %3245 ], [ %3219, %3243 ], [ %3247, %3252 ]
  %3265 = icmp ult ptr %3263, %3213
  br i1 %3265, label %3266, label %3363

3266:                                             ; preds = %3262
  %3267 = ptrtoint ptr %3263 to i64
  %3268 = ptrtoint ptr %3264 to i64
  %3269 = ptrtoint ptr %3263 to i64
  %3270 = sub i64 %3214, %3269
  %3271 = icmp ult i64 %3270, 4
  %3272 = sub i64 %3268, %3267
  %3273 = icmp ult i64 %3272, 32
  %3274 = select i1 %3271, i1 true, i1 %3273
  br i1 %3274, label %3310, label %3275

3275:                                             ; preds = %3266
  %3276 = icmp ult i64 %3270, 32
  br i1 %3276, label %3296, label %3277

3277:                                             ; preds = %3275
  %3278 = and i64 %3270, -32
  br label %3279

3279:                                             ; preds = %3279, %3277
  %3280 = phi i64 [ 0, %3277 ], [ %3287, %3279 ]
  %3281 = getelementptr i8, ptr %3264, i64 %3280
  %3282 = getelementptr i8, ptr %3263, i64 %3280
  %3283 = getelementptr i8, ptr %3282, i64 16
  %3284 = load <16 x i8>, ptr %3282, align 1, !tbaa !34
  %3285 = load <16 x i8>, ptr %3283, align 1, !tbaa !34
  %3286 = getelementptr i8, ptr %3281, i64 16
  store <16 x i8> %3284, ptr %3281, align 1, !tbaa !34
  store <16 x i8> %3285, ptr %3286, align 1, !tbaa !34
  %3287 = add nuw i64 %3280, 32
  %3288 = icmp eq i64 %3287, %3278
  br i1 %3288, label %3289, label %3279, !llvm.loop !138

3289:                                             ; preds = %3279
  %3290 = icmp eq i64 %3270, %3278
  br i1 %3290, label %3363, label %3291

3291:                                             ; preds = %3289
  %3292 = getelementptr i8, ptr %3264, i64 %3278
  %3293 = getelementptr i8, ptr %3263, i64 %3278
  %3294 = and i64 %3270, 28
  %3295 = icmp eq i64 %3294, 0
  br i1 %3295, label %3310, label %3296

3296:                                             ; preds = %3291, %3275
  %3297 = phi i64 [ %3278, %3291 ], [ 0, %3275 ]
  %3298 = and i64 %3270, -4
  %3299 = getelementptr i8, ptr %3264, i64 %3298
  %3300 = getelementptr i8, ptr %3263, i64 %3298
  br label %3301

3301:                                             ; preds = %3301, %3296
  %3302 = phi i64 [ %3297, %3296 ], [ %3306, %3301 ]
  %3303 = getelementptr i8, ptr %3264, i64 %3302
  %3304 = getelementptr i8, ptr %3263, i64 %3302
  %3305 = load <4 x i8>, ptr %3304, align 1, !tbaa !34
  store <4 x i8> %3305, ptr %3303, align 1, !tbaa !34
  %3306 = add nuw i64 %3302, 4
  %3307 = icmp eq i64 %3306, %3298
  br i1 %3307, label %3308, label %3301, !llvm.loop !139

3308:                                             ; preds = %3301
  %3309 = icmp eq i64 %3270, %3298
  br i1 %3309, label %3363, label %3310

3310:                                             ; preds = %3291, %3308, %3266
  %3311 = phi ptr [ %3264, %3266 ], [ %3292, %3291 ], [ %3299, %3308 ]
  %3312 = phi ptr [ %3263, %3266 ], [ %3293, %3291 ], [ %3300, %3308 ]
  %3313 = ptrtoint ptr %3312 to i64
  %3314 = sub i64 %3214, %3313
  %3315 = and i64 %3314, 7
  %3316 = icmp eq i64 %3315, 0
  br i1 %3316, label %3326, label %3317

3317:                                             ; preds = %3310, %3317
  %3318 = phi ptr [ %3323, %3317 ], [ %3311, %3310 ]
  %3319 = phi ptr [ %3321, %3317 ], [ %3312, %3310 ]
  %3320 = phi i64 [ %3324, %3317 ], [ 0, %3310 ]
  %3321 = getelementptr inbounds nuw i8, ptr %3319, i64 1
  %3322 = load i8, ptr %3319, align 1, !tbaa !34
  %3323 = getelementptr inbounds nuw i8, ptr %3318, i64 1
  store i8 %3322, ptr %3318, align 1, !tbaa !34
  %3324 = add i64 %3320, 1
  %3325 = icmp eq i64 %3324, %3315
  br i1 %3325, label %3326, label %3317, !llvm.loop !140

3326:                                             ; preds = %3317, %3310
  %3327 = phi ptr [ %3311, %3310 ], [ %3323, %3317 ]
  %3328 = phi ptr [ %3312, %3310 ], [ %3321, %3317 ]
  %3329 = sub i64 %3313, %3214
  %3330 = icmp ugt i64 %3329, -8
  br i1 %3330, label %3363, label %3331

3331:                                             ; preds = %3326, %3331
  %3332 = phi ptr [ %3357, %3331 ], [ %3327, %3326 ]
  %3333 = phi ptr [ %3355, %3331 ], [ %3328, %3326 ]
  %3334 = getelementptr inbounds nuw i8, ptr %3333, i64 1
  %3335 = load i8, ptr %3333, align 1, !tbaa !34
  %3336 = getelementptr inbounds nuw i8, ptr %3332, i64 1
  store i8 %3335, ptr %3332, align 1, !tbaa !34
  %3337 = getelementptr inbounds nuw i8, ptr %3333, i64 2
  %3338 = load i8, ptr %3334, align 1, !tbaa !34
  %3339 = getelementptr inbounds nuw i8, ptr %3332, i64 2
  store i8 %3338, ptr %3336, align 1, !tbaa !34
  %3340 = getelementptr inbounds nuw i8, ptr %3333, i64 3
  %3341 = load i8, ptr %3337, align 1, !tbaa !34
  %3342 = getelementptr inbounds nuw i8, ptr %3332, i64 3
  store i8 %3341, ptr %3339, align 1, !tbaa !34
  %3343 = getelementptr inbounds nuw i8, ptr %3333, i64 4
  %3344 = load i8, ptr %3340, align 1, !tbaa !34
  %3345 = getelementptr inbounds nuw i8, ptr %3332, i64 4
  store i8 %3344, ptr %3342, align 1, !tbaa !34
  %3346 = getelementptr inbounds nuw i8, ptr %3333, i64 5
  %3347 = load i8, ptr %3343, align 1, !tbaa !34
  %3348 = getelementptr inbounds nuw i8, ptr %3332, i64 5
  store i8 %3347, ptr %3345, align 1, !tbaa !34
  %3349 = getelementptr inbounds nuw i8, ptr %3333, i64 6
  %3350 = load i8, ptr %3346, align 1, !tbaa !34
  %3351 = getelementptr inbounds nuw i8, ptr %3332, i64 6
  store i8 %3350, ptr %3348, align 1, !tbaa !34
  %3352 = getelementptr inbounds nuw i8, ptr %3333, i64 7
  %3353 = load i8, ptr %3349, align 1, !tbaa !34
  %3354 = getelementptr inbounds nuw i8, ptr %3332, i64 7
  store i8 %3353, ptr %3351, align 1, !tbaa !34
  %3355 = getelementptr inbounds nuw i8, ptr %3333, i64 8
  %3356 = load i8, ptr %3352, align 1, !tbaa !34
  %3357 = getelementptr inbounds nuw i8, ptr %3332, i64 8
  store i8 %3356, ptr %3354, align 1, !tbaa !34
  %3358 = icmp eq ptr %3355, %3213
  br i1 %3358, label %3363, label %3331, !llvm.loop !141

3359:                                             ; preds = %3223, %3220
  %3360 = load ptr, ptr %2659, align 8, !tbaa !39
  %3361 = getelementptr inbounds nuw i8, ptr %3360, i64 %3216
  store ptr %3361, ptr %2659, align 8, !tbaa !39
  %3362 = load ptr, ptr %2662, align 8, !tbaa !50
  br label %3375

3363:                                             ; preds = %3233, %3326, %3331, %3289, %3308, %3262
  %3364 = load ptr, ptr %2659, align 8, !tbaa !39
  %3365 = getelementptr inbounds nuw i8, ptr %3364, i64 %3216
  store ptr %3365, ptr %2659, align 8, !tbaa !39
  %3366 = icmp ugt i64 %3216, 65535
  %3367 = load ptr, ptr %2662, align 8, !tbaa !50
  br i1 %3366, label %3368, label %3375, !prof !51

3368:                                             ; preds = %3363
  store i32 1, ptr %2661, align 8, !tbaa !52
  %3369 = load ptr, ptr %1, align 8, !tbaa !53
  %3370 = ptrtoint ptr %3367 to i64
  %3371 = ptrtoint ptr %3369 to i64
  %3372 = sub i64 %3370, %3371
  %3373 = lshr exact i64 %3372, 3
  %3374 = trunc i64 %3373 to i32
  store i32 %3374, ptr %2663, align 4, !tbaa !54
  br label %3375

3375:                                             ; preds = %3368, %3363, %3359
  %3376 = phi ptr [ %3362, %3359 ], [ %3367, %3368 ], [ %3367, %3363 ]
  %3377 = trunc i64 %3216 to i16
  %3378 = getelementptr inbounds nuw i8, ptr %3376, i64 4
  store i16 %3377, ptr %3378, align 4, !tbaa !55
  store i32 %3217, ptr %3376, align 4, !tbaa !57
  %3379 = add i64 %3212, -3
  %3380 = icmp ugt i64 %3379, 65535
  br i1 %3380, label %3395, label %3408, !prof !58

3381:                                             ; preds = %3114, %3109
  %3382 = icmp uge ptr %2691, %2686
  %3383 = zext i1 %3382 to i64
  %3384 = add i64 %2687, %3383
  %3385 = getelementptr inbounds nuw i8, ptr %2691, i64 %3384
  %3386 = icmp ugt ptr %3385, %23
  br i1 %3386, label %3494, label %3387

3387:                                             ; preds = %3381
  %3388 = select i1 %3382, i64 256, i64 0
  %3389 = getelementptr inbounds nuw i8, ptr %2686, i64 %3388
  %3390 = lshr i64 %2707, 8
  %3391 = getelementptr inbounds nuw i32, ptr %30, i64 %3390
  %3392 = load i32, ptr %3391, align 4, !tbaa !23
  %3393 = zext i32 %3392 to i64
  %3394 = xor i64 %2707, %3393
  br label %2685

3395:                                             ; preds = %3375, %3103, %2893
  %3396 = phi ptr [ %2894, %2893 ], [ %3104, %3103 ], [ %3376, %3375 ]
  %3397 = phi i64 [ %2897, %2893 ], [ %3107, %3103 ], [ %3379, %3375 ]
  %3398 = phi i64 [ %2729, %2893 ], [ %2940, %3103 ], [ %3212, %3375 ]
  %3399 = phi i32 [ %2675, %2893 ], [ %2674, %3103 ], [ %2674, %3375 ]
  %3400 = phi i32 [ %2674, %2893 ], [ %2914, %3103 ], [ %3119, %3375 ]
  %3401 = phi ptr [ %2724, %2893 ], [ %2941, %3103 ], [ %3213, %3375 ]
  store i32 2, ptr %2661, align 8, !tbaa !52
  %3402 = load ptr, ptr %1, align 8, !tbaa !53
  %3403 = ptrtoint ptr %3396 to i64
  %3404 = ptrtoint ptr %3402 to i64
  %3405 = sub i64 %3403, %3404
  %3406 = lshr exact i64 %3405, 3
  %3407 = trunc i64 %3406 to i32
  store i32 %3407, ptr %2663, align 4, !tbaa !54
  br label %3408

3408:                                             ; preds = %3395, %3375, %3103, %2893
  %3409 = phi i64 [ %2897, %2893 ], [ %3107, %3103 ], [ %3379, %3375 ], [ %3397, %3395 ]
  %3410 = phi ptr [ %2894, %2893 ], [ %3104, %3103 ], [ %3376, %3375 ], [ %3396, %3395 ]
  %3411 = phi i64 [ %2729, %2893 ], [ %2940, %3103 ], [ %3212, %3375 ], [ %3398, %3395 ]
  %3412 = phi i32 [ %2675, %2893 ], [ %2674, %3103 ], [ %2674, %3375 ], [ %3399, %3395 ]
  %3413 = phi i32 [ %2674, %2893 ], [ %2914, %3103 ], [ %3119, %3375 ], [ %3400, %3395 ]
  %3414 = phi ptr [ %2724, %2893 ], [ %2941, %3103 ], [ %3213, %3375 ], [ %3401, %3395 ]
  %3415 = trunc i64 %3409 to i16
  %3416 = getelementptr inbounds nuw i8, ptr %3410, i64 6
  store i16 %3415, ptr %3416, align 2, !tbaa !59
  %3417 = getelementptr inbounds nuw i8, ptr %3410, i64 8
  store ptr %3417, ptr %2662, align 8, !tbaa !50
  %3418 = getelementptr inbounds nuw i8, ptr %3414, i64 %3411
  %3419 = icmp ugt ptr %3418, %23
  br i1 %3419, label %3488, label %3420

3420:                                             ; preds = %3408
  %3421 = add i32 %2700, 2
  %3422 = and i64 %2699, 4294967295
  %3423 = getelementptr inbounds nuw i8, ptr %2646, i64 %3422
  %3424 = load i64, ptr %3423, align 1, !tbaa !22
  %3425 = mul i64 %3424, -3523014627193167104
  %3426 = lshr i64 %3425, %2655
  %3427 = getelementptr inbounds nuw i32, ptr %9, i64 %3426
  store i32 %3421, ptr %3427, align 4, !tbaa !23
  %3428 = getelementptr inbounds i8, ptr %3418, i64 -2
  %3429 = ptrtoint ptr %3428 to i64
  %3430 = sub i64 %3429, %52
  %3431 = trunc i64 %3430 to i32
  %3432 = load i64, ptr %3428, align 1, !tbaa !22
  %3433 = mul i64 %3432, -3523014627193167104
  %3434 = lshr i64 %3433, %2655
  %3435 = getelementptr inbounds nuw i32, ptr %9, i64 %3434
  store i32 %3431, ptr %3435, align 4, !tbaa !23
  br label %3436

3436:                                             ; preds = %3477, %3420
  %3437 = phi ptr [ %3417, %3420 ], [ %3480, %3477 ]
  %3438 = phi ptr [ %3418, %3420 ], [ %3486, %3477 ]
  %3439 = phi i32 [ %3413, %3420 ], [ %3440, %3477 ]
  %3440 = phi i32 [ %3412, %3420 ], [ %3439, %3477 ]
  %3441 = ptrtoint ptr %3438 to i64
  %3442 = sub i64 %3441, %52
  %3443 = trunc i64 %3442 to i32
  %3444 = sub i32 %3443, %3440
  %3445 = icmp ult i32 %3444, %19
  %3446 = zext i32 %3444 to i64
  %3447 = select i1 %3445, ptr %2669, ptr %16
  %3448 = getelementptr inbounds nuw i8, ptr %3447, i64 %3446
  %3449 = sub i32 %3444, %19
  %3450 = icmp ugt i32 %3449, -4
  br i1 %3450, label %3488, label %3451

3451:                                             ; preds = %3436
  %3452 = load i32, ptr %3448, align 1, !tbaa !23
  %3453 = load i32, ptr %3438, align 1, !tbaa !23
  %3454 = icmp eq i32 %3452, %3453
  br i1 %3454, label %3455, label %3488

3455:                                             ; preds = %3451
  %3456 = select i1 %3445, ptr %37, ptr %22
  %3457 = getelementptr inbounds nuw i8, ptr %3438, i64 4
  %3458 = getelementptr inbounds nuw i8, ptr %3448, i64 4
  %3459 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %3457, ptr noundef nonnull %3458, ptr noundef %22, ptr noundef %3456, ptr noundef %21)
  %3460 = icmp ugt ptr %3438, %2658
  br i1 %3460, label %3465, label %3461

3461:                                             ; preds = %3455
  %3462 = load ptr, ptr %2659, align 8, !tbaa !39
  %3463 = load <2 x i64>, ptr %3438, align 1, !tbaa !34
  store <2 x i64> %3463, ptr %3462, align 1, !tbaa !34
  %3464 = load ptr, ptr %2662, align 8, !tbaa !50
  br label %3465

3465:                                             ; preds = %3461, %3455
  %3466 = phi ptr [ %3437, %3455 ], [ %3464, %3461 ]
  %3467 = getelementptr inbounds nuw i8, ptr %3466, i64 4
  store i16 0, ptr %3467, align 4, !tbaa !55
  store i32 1, ptr %3466, align 4, !tbaa !57
  %3468 = add i64 %3459, 1
  %3469 = icmp ugt i64 %3468, 65535
  br i1 %3469, label %3470, label %3477, !prof !58

3470:                                             ; preds = %3465
  store i32 2, ptr %2661, align 8, !tbaa !52
  %3471 = load ptr, ptr %1, align 8, !tbaa !53
  %3472 = ptrtoint ptr %3466 to i64
  %3473 = ptrtoint ptr %3471 to i64
  %3474 = sub i64 %3472, %3473
  %3475 = lshr exact i64 %3474, 3
  %3476 = trunc i64 %3475 to i32
  store i32 %3476, ptr %2663, align 4, !tbaa !54
  br label %3477

3477:                                             ; preds = %3470, %3465
  %3478 = trunc i64 %3468 to i16
  %3479 = getelementptr inbounds nuw i8, ptr %3466, i64 6
  store i16 %3478, ptr %3479, align 2, !tbaa !59
  %3480 = getelementptr inbounds nuw i8, ptr %3466, i64 8
  store ptr %3480, ptr %2662, align 8, !tbaa !50
  %3481 = load i64, ptr %3438, align 1, !tbaa !22
  %3482 = mul i64 %3481, -3523014627193167104
  %3483 = lshr i64 %3482, %2655
  %3484 = getelementptr inbounds nuw i32, ptr %9, i64 %3483
  store i32 %3443, ptr %3484, align 4, !tbaa !23
  %3485 = getelementptr i8, ptr %3438, i64 %3459
  %3486 = getelementptr i8, ptr %3485, i64 4
  %3487 = icmp ugt ptr %3486, %23
  br i1 %3487, label %3488, label %3436

3488:                                             ; preds = %3477, %3451, %3436, %3408
  %3489 = phi i32 [ %3412, %3408 ], [ %3440, %3436 ], [ %3440, %3451 ], [ %3439, %3477 ]
  %3490 = phi i32 [ %3413, %3408 ], [ %3439, %3436 ], [ %3439, %3451 ], [ %3440, %3477 ]
  %3491 = phi ptr [ %3418, %3408 ], [ %3438, %3436 ], [ %3438, %3451 ], [ %3486, %3477 ]
  %3492 = getelementptr inbounds nuw i8, ptr %3491, i64 %17
  %3493 = icmp ugt ptr %3492, %23
  br i1 %3493, label %3494, label %2670

3494:                                             ; preds = %2629, %2522, %1770, %1663, %3488, %3381, %911, %801, %2645, %1786, %927, %66
  %3495 = phi i32 [ %24, %66 ], [ %24, %927 ], [ %24, %1786 ], [ %24, %2645 ], [ %93, %801 ], [ %913, %911 ], [ %2674, %3381 ], [ %3490, %3488 ], [ %956, %1663 ], [ %1772, %1770 ], [ %1815, %2522 ], [ %2631, %2629 ]
  %3496 = phi i32 [ %26, %66 ], [ %26, %927 ], [ %26, %1786 ], [ %26, %2645 ], [ %94, %801 ], [ %912, %911 ], [ %2675, %3381 ], [ %3489, %3488 ], [ %957, %1663 ], [ %1771, %1770 ], [ %1816, %2522 ], [ %2630, %2629 ]
  %3497 = phi ptr [ %3, %66 ], [ %3, %927 ], [ %3, %1786 ], [ %3, %2645 ], [ %92, %801 ], [ %914, %911 ], [ %2673, %3381 ], [ %3491, %3488 ], [ %955, %1663 ], [ %1773, %1770 ], [ %1814, %2522 ], [ %2632, %2629 ]
  store i32 %3495, ptr %2, align 4, !tbaa !23
  store i32 %3496, ptr %25, align 4, !tbaa !23
  %3498 = ptrtoint ptr %22 to i64
  %3499 = ptrtoint ptr %3497 to i64
  %3500 = sub i64 %3498, %3499
  ret i64 %3500
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_fast_extDict(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %7 = load i32, ptr %6, align 8, !tbaa !27
  %8 = add i32 %7, -5
  %9 = icmp ult i32 %8, 3
  %10 = select i1 %9, i32 %7, i32 4
  %11 = tail call fastcc i64 @ZSTD_compressBlock_fast_extDict_generic(ptr noundef nonnull readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %10)
  ret i64 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #4

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @ZSTD_count_2segments(ptr noundef %0, ptr noundef %1, ptr noundef readnone captures(address) %2, ptr noundef %3, ptr noundef readonly captures(none) %4) unnamed_addr #5 {
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %6, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = icmp ult ptr %9, %2
  %11 = select i1 %10, ptr %9, ptr %2
  %12 = getelementptr inbounds i8, ptr %11, i64 -7
  %13 = icmp ult ptr %0, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %5
  %15 = load i64, ptr %1, align 1, !tbaa !22
  %16 = load i64, ptr %0, align 1, !tbaa !22
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = xor i64 %16, %15
  %20 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %19, i1 true)
  %21 = lshr i64 %20, 3
  br label %79

22:                                               ; preds = %14, %28
  %23 = phi ptr [ %26, %28 ], [ %1, %14 ]
  %24 = phi ptr [ %25, %28 ], [ %0, %14 ]
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %26 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %27 = icmp ult ptr %25, %12
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load i64, ptr %26, align 1, !tbaa !22
  %30 = load i64, ptr %25, align 1, !tbaa !22
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %22, label %32

32:                                               ; preds = %28
  %33 = xor i64 %30, %29
  %34 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %33, i1 true)
  %35 = lshr i64 %34, 3
  %36 = getelementptr inbounds nuw i8, ptr %25, i64 %35
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
  %46 = load i32, ptr %41, align 1, !tbaa !23
  %47 = load i32, ptr %42, align 1, !tbaa !23
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr inbounds nuw i8, ptr %42, i64 4
  %51 = getelementptr inbounds nuw i8, ptr %41, i64 4
  br label %52

52:                                               ; preds = %49, %45, %40
  %53 = phi ptr [ %51, %49 ], [ %41, %45 ], [ %41, %40 ]
  %54 = phi ptr [ %50, %49 ], [ %42, %45 ], [ %42, %40 ]
  %55 = getelementptr inbounds i8, ptr %11, i64 -1
  %56 = icmp ult ptr %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i16, ptr %53, align 1, !tbaa !37
  %59 = load i16, ptr %54, align 1, !tbaa !37
  %60 = icmp eq i16 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = getelementptr inbounds nuw i8, ptr %54, i64 2
  %63 = getelementptr inbounds nuw i8, ptr %53, i64 2
  br label %64

64:                                               ; preds = %61, %57, %52
  %65 = phi ptr [ %63, %61 ], [ %53, %57 ], [ %53, %52 ]
  %66 = phi ptr [ %62, %61 ], [ %54, %57 ], [ %54, %52 ]
  %67 = icmp ult ptr %66, %11
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i8, ptr %65, align 1, !tbaa !34
  %70 = load i8, ptr %66, align 1, !tbaa !34
  %71 = icmp eq i8 %69, %70
  %72 = zext i1 %71 to i64
  %73 = getelementptr inbounds nuw i8, ptr %66, i64 %72
  br label %74

74:                                               ; preds = %68, %64
  %75 = phi ptr [ %66, %64 ], [ %73, %68 ]
  %76 = ptrtoint ptr %75 to i64
  %77 = ptrtoint ptr %0 to i64
  %78 = sub i64 %76, %77
  br label %79

79:                                               ; preds = %18, %32, %74
  %80 = phi i64 [ %78, %74 ], [ %21, %18 ], [ %39, %32 ]
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 %80
  %82 = icmp eq ptr %81, %3
  br i1 %82, label %83, label %155

83:                                               ; preds = %79
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 %80
  %85 = getelementptr inbounds i8, ptr %2, i64 -7
  %86 = icmp ult ptr %84, %85
  br i1 %86, label %87, label %113

87:                                               ; preds = %83
  %88 = load i64, ptr %4, align 1, !tbaa !22
  %89 = load i64, ptr %84, align 1, !tbaa !22
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = xor i64 %89, %88
  %93 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %92, i1 true)
  %94 = lshr i64 %93, 3
  br label %152

95:                                               ; preds = %87, %101
  %96 = phi ptr [ %99, %101 ], [ %4, %87 ]
  %97 = phi ptr [ %98, %101 ], [ %84, %87 ]
  %98 = getelementptr inbounds nuw i8, ptr %97, i64 8
  %99 = getelementptr inbounds nuw i8, ptr %96, i64 8
  %100 = icmp ult ptr %98, %85
  br i1 %100, label %101, label %113

101:                                              ; preds = %95
  %102 = load i64, ptr %99, align 1, !tbaa !22
  %103 = load i64, ptr %98, align 1, !tbaa !22
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %95, label %105

105:                                              ; preds = %101
  %106 = xor i64 %103, %102
  %107 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %106, i1 true)
  %108 = lshr i64 %107, 3
  %109 = getelementptr inbounds nuw i8, ptr %98, i64 %108
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
  %119 = load i32, ptr %114, align 1, !tbaa !23
  %120 = load i32, ptr %115, align 1, !tbaa !23
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = getelementptr inbounds nuw i8, ptr %115, i64 4
  %124 = getelementptr inbounds nuw i8, ptr %114, i64 4
  br label %125

125:                                              ; preds = %122, %118, %113
  %126 = phi ptr [ %124, %122 ], [ %114, %118 ], [ %114, %113 ]
  %127 = phi ptr [ %123, %122 ], [ %115, %118 ], [ %115, %113 ]
  %128 = getelementptr inbounds i8, ptr %2, i64 -1
  %129 = icmp ult ptr %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load i16, ptr %126, align 1, !tbaa !37
  %132 = load i16, ptr %127, align 1, !tbaa !37
  %133 = icmp eq i16 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = getelementptr inbounds nuw i8, ptr %127, i64 2
  %136 = getelementptr inbounds nuw i8, ptr %126, i64 2
  br label %137

137:                                              ; preds = %134, %130, %125
  %138 = phi ptr [ %136, %134 ], [ %126, %130 ], [ %126, %125 ]
  %139 = phi ptr [ %135, %134 ], [ %127, %130 ], [ %127, %125 ]
  %140 = icmp ult ptr %139, %2
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load i8, ptr %138, align 1, !tbaa !34
  %143 = load i8, ptr %139, align 1, !tbaa !34
  %144 = icmp eq i8 %142, %143
  %145 = zext i1 %144 to i64
  %146 = getelementptr inbounds nuw i8, ptr %139, i64 %145
  br label %147

147:                                              ; preds = %141, %137
  %148 = phi ptr [ %139, %137 ], [ %146, %141 ]
  %149 = ptrtoint ptr %148 to i64
  %150 = ptrtoint ptr %84 to i64
  %151 = sub i64 %149, %150
  br label %152

152:                                              ; preds = %91, %105, %147
  %153 = phi i64 [ %151, %147 ], [ %94, %91 ], [ %112, %105 ]
  %154 = add i64 %153, %80
  br label %155

155:                                              ; preds = %79, %152
  %156 = phi i64 [ %154, %152 ], [ %80, %79 ]
  ret i64 %156
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBlock_fast_extDict_generic(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 4, 8) %5) unnamed_addr #1 {
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %11 = load i32, ptr %10, align 4, !tbaa !21
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %13 = load i32, ptr %12, align 4, !tbaa !29
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 1)
  %15 = add i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %18 = load ptr, ptr %17, align 8, !tbaa !19
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %20 = load ptr, ptr %19, align 8, !tbaa !142
  %21 = ptrtoint ptr %3 to i64
  %22 = ptrtoint ptr %18 to i64
  %23 = sub i64 %21, %22
  %24 = add i64 %23, %4
  %25 = trunc i64 %24 to i32
  %26 = load i32, ptr %7, align 4, !tbaa !143
  %27 = getelementptr i8, ptr %0, i64 28
  %28 = load i32, ptr %27, align 4, !tbaa !144
  %29 = getelementptr i8, ptr %0, i64 40
  %30 = load i32, ptr %29, align 8, !tbaa !31
  %31 = shl nuw i32 1, %26
  %32 = sub i32 %25, %28
  %33 = icmp ugt i32 %32, %31
  %34 = sub i32 %25, %31
  %35 = icmp eq i32 %30, 0
  %36 = select i1 %35, i1 %33, i1 false
  %37 = select i1 %36, i32 %34, i32 %28
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds nuw i8, ptr %20, i64 %38
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %41 = load i32, ptr %40, align 8, !tbaa !30
  %42 = tail call i32 @llvm.umax.i32(i32 %41, i32 %37)
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds nuw i8, ptr %18, i64 %43
  %45 = getelementptr inbounds nuw i8, ptr %20, i64 %43
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %47 = getelementptr inbounds i8, ptr %46, i64 -8
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %49 = icmp ult i32 %37, %41
  br i1 %49, label %52, label %50

50:                                               ; preds = %6
  %51 = tail call i64 @ZSTD_compressBlock_fast(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %4)
  br label %622

52:                                               ; preds = %6
  %53 = load i32, ptr %48, align 4, !tbaa !23
  %54 = load i32, ptr %2, align 4, !tbaa !23
  %55 = trunc i64 %23 to i32
  %56 = sub i32 %55, %37
  %57 = icmp ult i32 %53, %56
  %58 = select i1 %57, i32 0, i32 %53
  %59 = select i1 %57, i32 %53, i32 0
  %60 = icmp ult i32 %54, %56
  %61 = select i1 %60, i32 0, i32 %54
  %62 = select i1 %60, i32 %54, i32 0
  %63 = getelementptr inbounds nuw i8, ptr %18, i64 2
  %64 = getelementptr inbounds nuw i8, ptr %3, i64 %16
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 1
  %66 = icmp ult ptr %65, %47
  br i1 %66, label %67, label %250

67:                                               ; preds = %52
  %68 = sub i32 32, %11
  %69 = sub i32 64, %11
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds i8, ptr %46, i64 -32
  %72 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %73 = ptrtoint ptr %71 to i64
  %74 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %76 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %77

77:                                               ; preds = %67, %615
  %78 = phi ptr [ %65, %67 ], [ %620, %615 ]
  %79 = phi ptr [ %64, %67 ], [ %619, %615 ]
  %80 = phi i32 [ %62, %67 ], [ %618, %615 ]
  %81 = phi i32 [ %59, %67 ], [ %617, %615 ]
  %82 = phi ptr [ %3, %67 ], [ %616, %615 ]
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 1
  %84 = getelementptr inbounds nuw i8, ptr %82, i64 128
  switch i32 %5, label %106 [
    i32 7, label %99
    i32 5, label %85
    i32 6, label %92
    i32 4, label %108
  ]

85:                                               ; preds = %77
  %86 = load i64, ptr %82, align 1, !tbaa !22
  %87 = mul i64 %86, -3523014627271114752
  %88 = lshr i64 %87, %70
  %89 = load i64, ptr %83, align 1, !tbaa !22
  %90 = mul i64 %89, -3523014627271114752
  %91 = lshr i64 %90, %70
  br label %117

92:                                               ; preds = %77
  %93 = load i64, ptr %82, align 1, !tbaa !22
  %94 = mul i64 %93, -3523014627193847808
  %95 = lshr i64 %94, %70
  %96 = load i64, ptr %83, align 1, !tbaa !22
  %97 = mul i64 %96, -3523014627193847808
  %98 = lshr i64 %97, %70
  br label %117

99:                                               ; preds = %77
  %100 = load i64, ptr %82, align 1, !tbaa !22
  %101 = mul i64 %100, -3523014627193167104
  %102 = lshr i64 %101, %70
  %103 = load i64, ptr %83, align 1, !tbaa !22
  %104 = mul i64 %103, -3523014627193167104
  %105 = lshr i64 %104, %70
  br label %117

106:                                              ; preds = %77
  unreachable

107:                                              ; preds = %496, %214, %181, %588
  unreachable

108:                                              ; preds = %77
  %109 = load i32, ptr %82, align 1, !tbaa !23
  %110 = mul i32 %109, -1640531535
  %111 = lshr i32 %110, %68
  %112 = zext i32 %111 to i64
  %113 = load i32, ptr %83, align 1, !tbaa !23
  %114 = mul i32 %113, -1640531535
  %115 = lshr i32 %114, %68
  %116 = zext i32 %115 to i64
  br label %117

117:                                              ; preds = %108, %85, %92, %99
  %118 = phi i64 [ %112, %108 ], [ %88, %85 ], [ %95, %92 ], [ %102, %99 ]
  %119 = phi i64 [ %116, %108 ], [ %91, %85 ], [ %98, %92 ], [ %105, %99 ]
  %120 = getelementptr inbounds nuw i32, ptr %9, i64 %118
  %121 = load i32, ptr %120, align 4, !tbaa !23
  %122 = icmp ult i32 %121, %42
  %123 = select i1 %122, ptr %20, ptr %18
  %124 = icmp ne i32 %80, 0
  br label %125

125:                                              ; preds = %246, %117
  %126 = phi i64 [ %16, %117 ], [ %247, %246 ]
  %127 = phi ptr [ %84, %117 ], [ %248, %246 ]
  %128 = phi ptr [ %123, %117 ], [ %218, %246 ]
  %129 = phi i32 [ %121, %117 ], [ %216, %246 ]
  %130 = phi i64 [ %119, %117 ], [ %237, %246 ]
  %131 = phi i64 [ %118, %117 ], [ %203, %246 ]
  %132 = phi ptr [ %78, %117 ], [ %239, %246 ]
  %133 = phi ptr [ %79, %117 ], [ %238, %246 ]
  %134 = phi ptr [ %83, %117 ], [ %132, %246 ]
  %135 = phi ptr [ %82, %117 ], [ %133, %246 ]
  %136 = ptrtoint ptr %133 to i64
  %137 = sub i64 %136, %22
  %138 = trunc i64 %137 to i32
  %139 = sub i32 %138, %80
  %140 = icmp ult i32 %139, %42
  %141 = select i1 %140, ptr %20, ptr %18
  %142 = sub i32 %42, %139
  %143 = icmp ugt i32 %142, 3
  %144 = and i1 %124, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %125
  %146 = zext i32 %139 to i64
  %147 = getelementptr inbounds nuw i8, ptr %141, i64 %146
  %148 = load i32, ptr %147, align 1, !tbaa !23
  br label %152

149:                                              ; preds = %125
  %150 = load i32, ptr %133, align 1, !tbaa !23
  %151 = xor i32 %150, 1
  br label %152

152:                                              ; preds = %149, %145
  %153 = phi i32 [ %148, %145 ], [ %151, %149 ]
  %154 = ptrtoint ptr %135 to i64
  %155 = sub i64 %154, %22
  %156 = trunc i64 %155 to i32
  %157 = getelementptr inbounds nuw i32, ptr %9, i64 %131
  store i32 %156, ptr %157, align 4, !tbaa !23
  %158 = load i32, ptr %133, align 1, !tbaa !23
  %159 = icmp eq i32 %158, %153
  br i1 %159, label %160, label %173

160:                                              ; preds = %152
  %161 = zext i32 %139 to i64
  %162 = getelementptr inbounds nuw i8, ptr %141, i64 %161
  %163 = select i1 %140, ptr %45, ptr %46
  %164 = getelementptr inbounds i8, ptr %133, i64 -1
  %165 = load i8, ptr %164, align 1, !tbaa !34
  %166 = getelementptr inbounds i8, ptr %162, i64 -1
  %167 = load i8, ptr %166, align 1, !tbaa !34
  %168 = icmp eq i8 %165, %167
  %169 = sext i1 %168 to i64
  %170 = getelementptr inbounds i8, ptr %133, i64 %169
  %171 = getelementptr inbounds i8, ptr %162, i64 %169
  %172 = select i1 %168, i64 5, i64 4
  br label %295

173:                                              ; preds = %152
  %174 = icmp ult i32 %129, %37
  br i1 %174, label %181, label %175

175:                                              ; preds = %173
  %176 = zext i32 %129 to i64
  %177 = getelementptr inbounds nuw i8, ptr %128, i64 %176
  %178 = load i32, ptr %177, align 1, !tbaa !23
  %179 = load i32, ptr %135, align 1, !tbaa !23
  %180 = icmp eq i32 %179, %178
  br i1 %180, label %264, label %181

181:                                              ; preds = %173, %175
  %182 = getelementptr inbounds nuw i32, ptr %9, i64 %130
  %183 = load i32, ptr %182, align 4, !tbaa !23
  %184 = icmp ult i32 %183, %42
  %185 = select i1 %184, ptr %20, ptr %18
  switch i32 %5, label %107 [
    i32 7, label %198
    i32 5, label %190
    i32 6, label %194
    i32 4, label %186
  ]

186:                                              ; preds = %181
  %187 = mul i32 %158, -1640531535
  %188 = lshr i32 %187, %68
  %189 = zext i32 %188 to i64
  br label %202

190:                                              ; preds = %181
  %191 = load i64, ptr %133, align 1, !tbaa !22
  %192 = mul i64 %191, -3523014627271114752
  %193 = lshr i64 %192, %70
  br label %202

194:                                              ; preds = %181
  %195 = load i64, ptr %133, align 1, !tbaa !22
  %196 = mul i64 %195, -3523014627193847808
  %197 = lshr i64 %196, %70
  br label %202

198:                                              ; preds = %181
  %199 = load i64, ptr %133, align 1, !tbaa !22
  %200 = mul i64 %199, -3523014627193167104
  %201 = lshr i64 %200, %70
  br label %202

202:                                              ; preds = %186, %190, %194, %198
  %203 = phi i64 [ %189, %186 ], [ %193, %190 ], [ %197, %194 ], [ %201, %198 ]
  %204 = ptrtoint ptr %134 to i64
  %205 = sub i64 %204, %22
  %206 = trunc i64 %205 to i32
  store i32 %206, ptr %182, align 4, !tbaa !23
  %207 = icmp ult i32 %183, %37
  br i1 %207, label %214, label %208

208:                                              ; preds = %202
  %209 = zext i32 %183 to i64
  %210 = getelementptr inbounds nuw i8, ptr %185, i64 %209
  %211 = load i32, ptr %210, align 1, !tbaa !23
  %212 = load i32, ptr %134, align 1, !tbaa !23
  %213 = icmp eq i32 %212, %211
  br i1 %213, label %264, label %214

214:                                              ; preds = %202, %208
  %215 = getelementptr inbounds nuw i32, ptr %9, i64 %203
  %216 = load i32, ptr %215, align 4, !tbaa !23
  %217 = icmp ult i32 %216, %42
  %218 = select i1 %217, ptr %20, ptr %18
  switch i32 %5, label %107 [
    i32 7, label %232
    i32 5, label %224
    i32 6, label %228
    i32 4, label %219
  ]

219:                                              ; preds = %214
  %220 = load i32, ptr %132, align 1, !tbaa !23
  %221 = mul i32 %220, -1640531535
  %222 = lshr i32 %221, %68
  %223 = zext i32 %222 to i64
  br label %236

224:                                              ; preds = %214
  %225 = load i64, ptr %132, align 1, !tbaa !22
  %226 = mul i64 %225, -3523014627271114752
  %227 = lshr i64 %226, %70
  br label %236

228:                                              ; preds = %214
  %229 = load i64, ptr %132, align 1, !tbaa !22
  %230 = mul i64 %229, -3523014627193847808
  %231 = lshr i64 %230, %70
  br label %236

232:                                              ; preds = %214
  %233 = load i64, ptr %132, align 1, !tbaa !22
  %234 = mul i64 %233, -3523014627193167104
  %235 = lshr i64 %234, %70
  br label %236

236:                                              ; preds = %219, %224, %228, %232
  %237 = phi i64 [ %223, %219 ], [ %227, %224 ], [ %231, %228 ], [ %235, %232 ]
  %238 = getelementptr inbounds nuw i8, ptr %133, i64 %126
  %239 = getelementptr inbounds nuw i8, ptr %132, i64 %126
  %240 = icmp ult ptr %238, %127
  br i1 %240, label %246, label %241

241:                                              ; preds = %236
  %242 = add i64 %126, 1
  %243 = getelementptr inbounds nuw i8, ptr %132, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %243, i32 0, i32 3, i32 1)
  %244 = getelementptr inbounds nuw i8, ptr %132, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %244, i32 0, i32 3, i32 1)
  %245 = getelementptr inbounds nuw i8, ptr %127, i64 128
  br label %246

246:                                              ; preds = %236, %241
  %247 = phi i64 [ %242, %241 ], [ %126, %236 ]
  %248 = phi ptr [ %245, %241 ], [ %127, %236 ]
  %249 = icmp ult ptr %239, %47
  br i1 %249, label %125, label %250, !llvm.loop !145

250:                                              ; preds = %615, %246, %52
  %251 = phi ptr [ %3, %52 ], [ %82, %246 ], [ %616, %615 ]
  %252 = phi i32 [ %59, %52 ], [ %81, %246 ], [ %617, %615 ]
  %253 = phi i32 [ %62, %52 ], [ %80, %246 ], [ %618, %615 ]
  %254 = icmp ne i32 %61, 0
  %255 = icmp ne i32 %253, 0
  %256 = select i1 %254, i1 %255, i1 false
  %257 = select i1 %256, i32 %61, i32 %58
  %258 = select i1 %255, i32 %253, i32 %61
  store i32 %258, ptr %2, align 4, !tbaa !23
  %259 = icmp eq i32 %252, 0
  %260 = select i1 %259, i32 %257, i32 %252
  store i32 %260, ptr %48, align 4, !tbaa !23
  %261 = ptrtoint ptr %46 to i64
  %262 = ptrtoint ptr %251 to i64
  %263 = sub i64 %261, %262
  br label %622

264:                                              ; preds = %208, %175
  %265 = phi ptr [ %185, %208 ], [ %128, %175 ]
  %266 = phi i32 [ %183, %208 ], [ %129, %175 ]
  %267 = phi i64 [ %203, %208 ], [ %130, %175 ]
  %268 = phi i32 [ %206, %208 ], [ %156, %175 ]
  %269 = phi ptr [ %133, %208 ], [ %134, %175 ]
  %270 = phi ptr [ %134, %208 ], [ %135, %175 ]
  %271 = sub i32 %268, %266
  %272 = icmp ugt i32 %41, %266
  %273 = select i1 %272, ptr %39, ptr %44
  %274 = select i1 %272, ptr %45, ptr %46
  %275 = zext i32 %266 to i64
  %276 = getelementptr inbounds nuw i8, ptr %265, i64 %275
  %277 = add i32 %271, 3
  %278 = icmp ugt ptr %270, %82
  %279 = icmp ugt ptr %276, %273
  %280 = and i1 %279, %278
  br i1 %280, label %281, label %295

281:                                              ; preds = %264, %290
  %282 = phi ptr [ %285, %290 ], [ %270, %264 ]
  %283 = phi i64 [ %291, %290 ], [ 4, %264 ]
  %284 = phi ptr [ %287, %290 ], [ %276, %264 ]
  %285 = getelementptr inbounds i8, ptr %282, i64 -1
  %286 = load i8, ptr %285, align 1, !tbaa !34
  %287 = getelementptr inbounds i8, ptr %284, i64 -1
  %288 = load i8, ptr %287, align 1, !tbaa !34
  %289 = icmp eq i8 %286, %288
  br i1 %289, label %290, label %295

290:                                              ; preds = %281
  %291 = add i64 %283, 1
  %292 = icmp ugt ptr %285, %82
  %293 = icmp ugt ptr %287, %273
  %294 = and i1 %293, %292
  br i1 %294, label %281, label %295, !llvm.loop !146

295:                                              ; preds = %290, %281, %264, %160
  %296 = phi i32 [ 1, %160 ], [ %277, %264 ], [ %277, %281 ], [ %277, %290 ]
  %297 = phi ptr [ %171, %160 ], [ %276, %264 ], [ %287, %290 ], [ %284, %281 ]
  %298 = phi i64 [ %172, %160 ], [ 4, %264 ], [ %291, %290 ], [ %283, %281 ]
  %299 = phi ptr [ %163, %160 ], [ %274, %264 ], [ %274, %281 ], [ %274, %290 ]
  %300 = phi i64 [ %130, %160 ], [ %267, %264 ], [ %267, %281 ], [ %267, %290 ]
  %301 = phi i32 [ %156, %160 ], [ %268, %264 ], [ %268, %281 ], [ %268, %290 ]
  %302 = phi ptr [ %134, %160 ], [ %269, %264 ], [ %269, %281 ], [ %269, %290 ]
  %303 = phi ptr [ %170, %160 ], [ %270, %264 ], [ %285, %290 ], [ %282, %281 ]
  %304 = phi i32 [ %81, %160 ], [ %80, %264 ], [ %80, %281 ], [ %80, %290 ]
  %305 = phi i32 [ %80, %160 ], [ %271, %264 ], [ %271, %281 ], [ %271, %290 ]
  %306 = getelementptr inbounds nuw i8, ptr %303, i64 %298
  %307 = getelementptr inbounds nuw i8, ptr %297, i64 %298
  %308 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef %306, ptr noundef %307, ptr noundef %46, ptr noundef %299, ptr noundef nonnull %44)
  %309 = add i64 %308, %298
  %310 = ptrtoint ptr %303 to i64
  %311 = ptrtoint ptr %82 to i64
  %312 = sub i64 %310, %311
  %313 = icmp ugt ptr %303, %71
  %314 = load ptr, ptr %72, align 8, !tbaa !39
  br i1 %313, label %338, label %315

315:                                              ; preds = %295
  %316 = load <2 x i64>, ptr %82, align 1, !tbaa !34
  store <2 x i64> %316, ptr %314, align 1, !tbaa !34
  %317 = icmp ugt i64 %312, 16
  br i1 %317, label %318, label %454

318:                                              ; preds = %315
  %319 = load ptr, ptr %72, align 8, !tbaa !39
  %320 = getelementptr inbounds nuw i8, ptr %319, i64 16
  %321 = getelementptr inbounds nuw i8, ptr %82, i64 16
  %322 = add i64 %312, -16
  %323 = getelementptr i8, ptr %319, i64 %312
  %324 = load <2 x i64>, ptr %321, align 1, !tbaa !34
  store <2 x i64> %324, ptr %320, align 1, !tbaa !34
  %325 = icmp ult i64 %322, 17
  br i1 %325, label %454, label %326

326:                                              ; preds = %318
  %327 = getelementptr inbounds nuw i8, ptr %319, i64 32
  br label %328

328:                                              ; preds = %328, %326
  %329 = phi ptr [ %327, %326 ], [ %336, %328 ]
  %330 = phi ptr [ %321, %326 ], [ %334, %328 ]
  %331 = getelementptr inbounds nuw i8, ptr %330, i64 16
  %332 = load <2 x i64>, ptr %331, align 1, !tbaa !34
  store <2 x i64> %332, ptr %329, align 1, !tbaa !34
  %333 = getelementptr inbounds nuw i8, ptr %329, i64 16
  %334 = getelementptr inbounds nuw i8, ptr %330, i64 32
  %335 = load <2 x i64>, ptr %334, align 1, !tbaa !34
  store <2 x i64> %335, ptr %333, align 1, !tbaa !34
  %336 = getelementptr inbounds nuw i8, ptr %329, i64 32
  %337 = icmp ult ptr %336, %323
  br i1 %337, label %328, label %458, !llvm.loop !42

338:                                              ; preds = %295
  %339 = icmp ugt ptr %82, %71
  br i1 %339, label %357, label %340

340:                                              ; preds = %338
  %341 = sub i64 %73, %311
  %342 = getelementptr inbounds i8, ptr %314, i64 %341
  %343 = load <2 x i64>, ptr %82, align 1, !tbaa !34
  store <2 x i64> %343, ptr %314, align 1, !tbaa !34
  %344 = icmp ult i64 %341, 17
  br i1 %344, label %357, label %345

345:                                              ; preds = %340
  %346 = getelementptr inbounds nuw i8, ptr %314, i64 16
  br label %347

347:                                              ; preds = %347, %345
  %348 = phi ptr [ %346, %345 ], [ %355, %347 ]
  %349 = phi ptr [ %82, %345 ], [ %353, %347 ]
  %350 = getelementptr inbounds nuw i8, ptr %349, i64 16
  %351 = load <2 x i64>, ptr %350, align 1, !tbaa !34
  store <2 x i64> %351, ptr %348, align 1, !tbaa !34
  %352 = getelementptr inbounds nuw i8, ptr %348, i64 16
  %353 = getelementptr inbounds nuw i8, ptr %349, i64 32
  %354 = load <2 x i64>, ptr %353, align 1, !tbaa !34
  store <2 x i64> %354, ptr %352, align 1, !tbaa !34
  %355 = getelementptr inbounds nuw i8, ptr %348, i64 32
  %356 = icmp ult ptr %355, %342
  br i1 %356, label %347, label %357, !llvm.loop !42

357:                                              ; preds = %347, %340, %338
  %358 = phi ptr [ %71, %340 ], [ %82, %338 ], [ %71, %347 ]
  %359 = phi ptr [ %342, %340 ], [ %314, %338 ], [ %342, %347 ]
  %360 = icmp ult ptr %358, %303
  br i1 %360, label %361, label %458

361:                                              ; preds = %357
  %362 = ptrtoint ptr %358 to i64
  %363 = ptrtoint ptr %359 to i64
  %364 = ptrtoint ptr %358 to i64
  %365 = sub i64 %310, %364
  %366 = icmp ult i64 %365, 4
  %367 = sub i64 %363, %362
  %368 = icmp ult i64 %367, 32
  %369 = select i1 %366, i1 true, i1 %368
  br i1 %369, label %405, label %370

370:                                              ; preds = %361
  %371 = icmp ult i64 %365, 32
  br i1 %371, label %391, label %372

372:                                              ; preds = %370
  %373 = and i64 %365, -32
  br label %374

374:                                              ; preds = %374, %372
  %375 = phi i64 [ 0, %372 ], [ %382, %374 ]
  %376 = getelementptr i8, ptr %359, i64 %375
  %377 = getelementptr i8, ptr %358, i64 %375
  %378 = getelementptr i8, ptr %377, i64 16
  %379 = load <16 x i8>, ptr %377, align 1, !tbaa !34
  %380 = load <16 x i8>, ptr %378, align 1, !tbaa !34
  %381 = getelementptr i8, ptr %376, i64 16
  store <16 x i8> %379, ptr %376, align 1, !tbaa !34
  store <16 x i8> %380, ptr %381, align 1, !tbaa !34
  %382 = add nuw i64 %375, 32
  %383 = icmp eq i64 %382, %373
  br i1 %383, label %384, label %374, !llvm.loop !147

384:                                              ; preds = %374
  %385 = icmp eq i64 %365, %373
  br i1 %385, label %458, label %386

386:                                              ; preds = %384
  %387 = getelementptr i8, ptr %359, i64 %373
  %388 = getelementptr i8, ptr %358, i64 %373
  %389 = and i64 %365, 28
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %405, label %391

391:                                              ; preds = %386, %370
  %392 = phi i64 [ %373, %386 ], [ 0, %370 ]
  %393 = and i64 %365, -4
  %394 = getelementptr i8, ptr %359, i64 %393
  %395 = getelementptr i8, ptr %358, i64 %393
  br label %396

396:                                              ; preds = %396, %391
  %397 = phi i64 [ %392, %391 ], [ %401, %396 ]
  %398 = getelementptr i8, ptr %359, i64 %397
  %399 = getelementptr i8, ptr %358, i64 %397
  %400 = load <4 x i8>, ptr %399, align 1, !tbaa !34
  store <4 x i8> %400, ptr %398, align 1, !tbaa !34
  %401 = add nuw i64 %397, 4
  %402 = icmp eq i64 %401, %393
  br i1 %402, label %403, label %396, !llvm.loop !148

403:                                              ; preds = %396
  %404 = icmp eq i64 %365, %393
  br i1 %404, label %458, label %405

405:                                              ; preds = %386, %403, %361
  %406 = phi ptr [ %359, %361 ], [ %387, %386 ], [ %394, %403 ]
  %407 = phi ptr [ %358, %361 ], [ %388, %386 ], [ %395, %403 ]
  %408 = ptrtoint ptr %407 to i64
  %409 = sub i64 %310, %408
  %410 = and i64 %409, 7
  %411 = icmp eq i64 %410, 0
  br i1 %411, label %421, label %412

412:                                              ; preds = %405, %412
  %413 = phi ptr [ %418, %412 ], [ %406, %405 ]
  %414 = phi ptr [ %416, %412 ], [ %407, %405 ]
  %415 = phi i64 [ %419, %412 ], [ 0, %405 ]
  %416 = getelementptr inbounds nuw i8, ptr %414, i64 1
  %417 = load i8, ptr %414, align 1, !tbaa !34
  %418 = getelementptr inbounds nuw i8, ptr %413, i64 1
  store i8 %417, ptr %413, align 1, !tbaa !34
  %419 = add i64 %415, 1
  %420 = icmp eq i64 %419, %410
  br i1 %420, label %421, label %412, !llvm.loop !149

421:                                              ; preds = %412, %405
  %422 = phi ptr [ %406, %405 ], [ %418, %412 ]
  %423 = phi ptr [ %407, %405 ], [ %416, %412 ]
  %424 = sub i64 %408, %310
  %425 = icmp ugt i64 %424, -8
  br i1 %425, label %458, label %426

426:                                              ; preds = %421, %426
  %427 = phi ptr [ %452, %426 ], [ %422, %421 ]
  %428 = phi ptr [ %450, %426 ], [ %423, %421 ]
  %429 = getelementptr inbounds nuw i8, ptr %428, i64 1
  %430 = load i8, ptr %428, align 1, !tbaa !34
  %431 = getelementptr inbounds nuw i8, ptr %427, i64 1
  store i8 %430, ptr %427, align 1, !tbaa !34
  %432 = getelementptr inbounds nuw i8, ptr %428, i64 2
  %433 = load i8, ptr %429, align 1, !tbaa !34
  %434 = getelementptr inbounds nuw i8, ptr %427, i64 2
  store i8 %433, ptr %431, align 1, !tbaa !34
  %435 = getelementptr inbounds nuw i8, ptr %428, i64 3
  %436 = load i8, ptr %432, align 1, !tbaa !34
  %437 = getelementptr inbounds nuw i8, ptr %427, i64 3
  store i8 %436, ptr %434, align 1, !tbaa !34
  %438 = getelementptr inbounds nuw i8, ptr %428, i64 4
  %439 = load i8, ptr %435, align 1, !tbaa !34
  %440 = getelementptr inbounds nuw i8, ptr %427, i64 4
  store i8 %439, ptr %437, align 1, !tbaa !34
  %441 = getelementptr inbounds nuw i8, ptr %428, i64 5
  %442 = load i8, ptr %438, align 1, !tbaa !34
  %443 = getelementptr inbounds nuw i8, ptr %427, i64 5
  store i8 %442, ptr %440, align 1, !tbaa !34
  %444 = getelementptr inbounds nuw i8, ptr %428, i64 6
  %445 = load i8, ptr %441, align 1, !tbaa !34
  %446 = getelementptr inbounds nuw i8, ptr %427, i64 6
  store i8 %445, ptr %443, align 1, !tbaa !34
  %447 = getelementptr inbounds nuw i8, ptr %428, i64 7
  %448 = load i8, ptr %444, align 1, !tbaa !34
  %449 = getelementptr inbounds nuw i8, ptr %427, i64 7
  store i8 %448, ptr %446, align 1, !tbaa !34
  %450 = getelementptr inbounds nuw i8, ptr %428, i64 8
  %451 = load i8, ptr %447, align 1, !tbaa !34
  %452 = getelementptr inbounds nuw i8, ptr %427, i64 8
  store i8 %451, ptr %449, align 1, !tbaa !34
  %453 = icmp eq ptr %450, %303
  br i1 %453, label %458, label %426, !llvm.loop !150

454:                                              ; preds = %318, %315
  %455 = load ptr, ptr %72, align 8, !tbaa !39
  %456 = getelementptr inbounds nuw i8, ptr %455, i64 %312
  store ptr %456, ptr %72, align 8, !tbaa !39
  %457 = load ptr, ptr %75, align 8, !tbaa !50
  br label %470

458:                                              ; preds = %328, %421, %426, %384, %403, %357
  %459 = load ptr, ptr %72, align 8, !tbaa !39
  %460 = getelementptr inbounds nuw i8, ptr %459, i64 %312
  store ptr %460, ptr %72, align 8, !tbaa !39
  %461 = icmp ugt i64 %312, 65535
  %462 = load ptr, ptr %75, align 8, !tbaa !50
  br i1 %461, label %463, label %470, !prof !51

463:                                              ; preds = %458
  store i32 1, ptr %74, align 8, !tbaa !52
  %464 = load ptr, ptr %1, align 8, !tbaa !53
  %465 = ptrtoint ptr %462 to i64
  %466 = ptrtoint ptr %464 to i64
  %467 = sub i64 %465, %466
  %468 = lshr exact i64 %467, 3
  %469 = trunc i64 %468 to i32
  store i32 %469, ptr %76, align 4, !tbaa !54
  br label %470

470:                                              ; preds = %454, %463, %458
  %471 = phi ptr [ %457, %454 ], [ %462, %463 ], [ %462, %458 ]
  %472 = trunc i64 %312 to i16
  %473 = getelementptr inbounds nuw i8, ptr %471, i64 4
  store i16 %472, ptr %473, align 4, !tbaa !55
  store i32 %296, ptr %471, align 4, !tbaa !57
  %474 = add i64 %309, -3
  %475 = icmp ugt i64 %474, 65535
  br i1 %475, label %476, label %483, !prof !58

476:                                              ; preds = %470
  store i32 2, ptr %74, align 8, !tbaa !52
  %477 = load ptr, ptr %1, align 8, !tbaa !53
  %478 = ptrtoint ptr %471 to i64
  %479 = ptrtoint ptr %477 to i64
  %480 = sub i64 %478, %479
  %481 = lshr exact i64 %480, 3
  %482 = trunc i64 %481 to i32
  store i32 %482, ptr %76, align 4, !tbaa !54
  br label %483

483:                                              ; preds = %470, %476
  %484 = trunc i64 %474 to i16
  %485 = getelementptr inbounds nuw i8, ptr %471, i64 6
  store i16 %484, ptr %485, align 2, !tbaa !59
  %486 = getelementptr inbounds nuw i8, ptr %471, i64 8
  store ptr %486, ptr %75, align 8, !tbaa !50
  %487 = getelementptr inbounds nuw i8, ptr %303, i64 %309
  %488 = icmp ult ptr %302, %487
  br i1 %488, label %489, label %494

489:                                              ; preds = %483
  %490 = ptrtoint ptr %302 to i64
  %491 = sub i64 %490, %22
  %492 = trunc i64 %491 to i32
  %493 = getelementptr inbounds nuw i32, ptr %9, i64 %300
  store i32 %492, ptr %493, align 4, !tbaa !23
  br label %494

494:                                              ; preds = %489, %483
  %495 = icmp ugt ptr %487, %47
  br i1 %495, label %615, label %496

496:                                              ; preds = %494
  %497 = add i32 %301, 2
  %498 = zext i32 %301 to i64
  %499 = getelementptr inbounds nuw i8, ptr %63, i64 %498
  switch i32 %5, label %107 [
    i32 7, label %518
    i32 5, label %500
    i32 6, label %509
    i32 4, label %527
  ]

500:                                              ; preds = %496
  %501 = load i64, ptr %499, align 1, !tbaa !22
  %502 = mul i64 %501, -3523014627271114752
  %503 = lshr i64 %502, %70
  %504 = getelementptr inbounds nuw i32, ptr %9, i64 %503
  store i32 %497, ptr %504, align 4, !tbaa !23
  %505 = getelementptr inbounds i8, ptr %487, i64 -2
  %506 = load i64, ptr %505, align 1, !tbaa !22
  %507 = mul i64 %506, -3523014627271114752
  %508 = lshr i64 %507, %70
  br label %538

509:                                              ; preds = %496
  %510 = load i64, ptr %499, align 1, !tbaa !22
  %511 = mul i64 %510, -3523014627193847808
  %512 = lshr i64 %511, %70
  %513 = getelementptr inbounds nuw i32, ptr %9, i64 %512
  store i32 %497, ptr %513, align 4, !tbaa !23
  %514 = getelementptr inbounds i8, ptr %487, i64 -2
  %515 = load i64, ptr %514, align 1, !tbaa !22
  %516 = mul i64 %515, -3523014627193847808
  %517 = lshr i64 %516, %70
  br label %538

518:                                              ; preds = %496
  %519 = load i64, ptr %499, align 1, !tbaa !22
  %520 = mul i64 %519, -3523014627193167104
  %521 = lshr i64 %520, %70
  %522 = getelementptr inbounds nuw i32, ptr %9, i64 %521
  store i32 %497, ptr %522, align 4, !tbaa !23
  %523 = getelementptr inbounds i8, ptr %487, i64 -2
  %524 = load i64, ptr %523, align 1, !tbaa !22
  %525 = mul i64 %524, -3523014627193167104
  %526 = lshr i64 %525, %70
  br label %538

527:                                              ; preds = %496
  %528 = load i32, ptr %499, align 1, !tbaa !23
  %529 = mul i32 %528, -1640531535
  %530 = lshr i32 %529, %68
  %531 = zext i32 %530 to i64
  %532 = getelementptr inbounds nuw i32, ptr %9, i64 %531
  store i32 %497, ptr %532, align 4, !tbaa !23
  %533 = getelementptr inbounds i8, ptr %487, i64 -2
  %534 = load i32, ptr %533, align 1, !tbaa !23
  %535 = mul i32 %534, -1640531535
  %536 = lshr i32 %535, %68
  %537 = zext i32 %536 to i64
  br label %538

538:                                              ; preds = %518, %509, %500, %527
  %539 = phi ptr [ %533, %527 ], [ %505, %500 ], [ %514, %509 ], [ %523, %518 ]
  %540 = phi i64 [ %537, %527 ], [ %508, %500 ], [ %517, %509 ], [ %526, %518 ]
  %541 = ptrtoint ptr %539 to i64
  %542 = sub i64 %541, %22
  %543 = trunc i64 %542 to i32
  %544 = getelementptr inbounds nuw i32, ptr %9, i64 %540
  store i32 %543, ptr %544, align 4, !tbaa !23
  br label %545

545:                                              ; preds = %538, %609
  %546 = phi ptr [ %591, %609 ], [ %486, %538 ]
  %547 = phi i32 [ %548, %609 ], [ %305, %538 ]
  %548 = phi i32 [ %547, %609 ], [ %304, %538 ]
  %549 = phi ptr [ %613, %609 ], [ %487, %538 ]
  %550 = ptrtoint ptr %549 to i64
  %551 = sub i64 %550, %22
  %552 = trunc i64 %551 to i32
  %553 = sub i32 %552, %548
  %554 = icmp ult i32 %553, %42
  %555 = zext i32 %553 to i64
  %556 = select i1 %554, ptr %20, ptr %18
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 %555
  %558 = sub i32 %553, %42
  %559 = icmp ugt i32 %558, -4
  %560 = icmp eq i32 %548, 0
  %561 = select i1 %560, i1 true, i1 %559
  br i1 %561, label %615, label %562

562:                                              ; preds = %545
  %563 = load i32, ptr %557, align 1, !tbaa !23
  %564 = load i32, ptr %549, align 1, !tbaa !23
  %565 = icmp eq i32 %563, %564
  br i1 %565, label %566, label %615

566:                                              ; preds = %562
  %567 = select i1 %554, ptr %45, ptr %46
  %568 = getelementptr inbounds nuw i8, ptr %549, i64 4
  %569 = getelementptr inbounds nuw i8, ptr %557, i64 4
  %570 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %568, ptr noundef nonnull %569, ptr noundef %46, ptr noundef %567, ptr noundef nonnull %44)
  %571 = icmp ugt ptr %549, %71
  br i1 %571, label %576, label %572

572:                                              ; preds = %566
  %573 = load ptr, ptr %72, align 8, !tbaa !39
  %574 = load <2 x i64>, ptr %549, align 1, !tbaa !34
  store <2 x i64> %574, ptr %573, align 1, !tbaa !34
  %575 = load ptr, ptr %75, align 8, !tbaa !50
  br label %576

576:                                              ; preds = %566, %572
  %577 = phi ptr [ %546, %566 ], [ %575, %572 ]
  %578 = getelementptr inbounds nuw i8, ptr %577, i64 4
  store i16 0, ptr %578, align 4, !tbaa !55
  store i32 1, ptr %577, align 4, !tbaa !57
  %579 = add i64 %570, 1
  %580 = icmp ugt i64 %579, 65535
  br i1 %580, label %581, label %588, !prof !58

581:                                              ; preds = %576
  store i32 2, ptr %74, align 8, !tbaa !52
  %582 = load ptr, ptr %1, align 8, !tbaa !53
  %583 = ptrtoint ptr %577 to i64
  %584 = ptrtoint ptr %582 to i64
  %585 = sub i64 %583, %584
  %586 = lshr exact i64 %585, 3
  %587 = trunc i64 %586 to i32
  store i32 %587, ptr %76, align 4, !tbaa !54
  br label %588

588:                                              ; preds = %576, %581
  %589 = trunc i64 %579 to i16
  %590 = getelementptr inbounds nuw i8, ptr %577, i64 6
  store i16 %589, ptr %590, align 2, !tbaa !59
  %591 = getelementptr inbounds nuw i8, ptr %577, i64 8
  store ptr %591, ptr %75, align 8, !tbaa !50
  switch i32 %5, label %107 [
    i32 7, label %605
    i32 5, label %597
    i32 6, label %601
    i32 4, label %592
  ]

592:                                              ; preds = %588
  %593 = load i32, ptr %549, align 1, !tbaa !23
  %594 = mul i32 %593, -1640531535
  %595 = lshr i32 %594, %68
  %596 = zext i32 %595 to i64
  br label %609

597:                                              ; preds = %588
  %598 = load i64, ptr %549, align 1, !tbaa !22
  %599 = mul i64 %598, -3523014627271114752
  %600 = lshr i64 %599, %70
  br label %609

601:                                              ; preds = %588
  %602 = load i64, ptr %549, align 1, !tbaa !22
  %603 = mul i64 %602, -3523014627193847808
  %604 = lshr i64 %603, %70
  br label %609

605:                                              ; preds = %588
  %606 = load i64, ptr %549, align 1, !tbaa !22
  %607 = mul i64 %606, -3523014627193167104
  %608 = lshr i64 %607, %70
  br label %609

609:                                              ; preds = %605, %601, %597, %592
  %610 = phi i64 [ %596, %592 ], [ %600, %597 ], [ %604, %601 ], [ %608, %605 ]
  %611 = getelementptr inbounds nuw i32, ptr %9, i64 %610
  store i32 %552, ptr %611, align 4, !tbaa !23
  %612 = getelementptr i8, ptr %549, i64 %570
  %613 = getelementptr i8, ptr %612, i64 4
  %614 = icmp ugt ptr %613, %47
  br i1 %614, label %615, label %545

615:                                              ; preds = %609, %562, %545, %494
  %616 = phi ptr [ %487, %494 ], [ %613, %609 ], [ %549, %562 ], [ %549, %545 ]
  %617 = phi i32 [ %304, %494 ], [ %547, %609 ], [ %548, %562 ], [ %548, %545 ]
  %618 = phi i32 [ %305, %494 ], [ %548, %609 ], [ %547, %562 ], [ %547, %545 ]
  %619 = getelementptr inbounds nuw i8, ptr %616, i64 %16
  %620 = getelementptr inbounds nuw i8, ptr %619, i64 1
  %621 = icmp ult ptr %620, %47
  br i1 %621, label %77, label %250

622:                                              ; preds = %250, %50
  %623 = phi i64 [ %51, %50 ], [ %263, %250 ]
  ret i64 %623
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !14, i64 112}
!6 = !{!"ZSTD_MatchState_t", !7, i64 0, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !8, i64 56, !10, i64 64, !13, i64 96, !12, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !12, i64 136, !12, i64 140, !15, i64 144, !16, i64 248, !17, i64 256, !9, i64 288, !12, i64 296, !12, i64 300}
!7 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !12, i64 24, !12, i64 28, !12, i64 32}
!8 = !{!"p1 omnipotent char", !9, i64 0}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"int", !10, i64 0}
!13 = !{!"long", !10, i64 0}
!14 = !{!"p1 int", !9, i64 0}
!15 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !9, i64 32, !9, i64 40, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !9, i64 88, !12, i64 96}
!16 = !{!"p1 _ZTS17ZSTD_MatchState_t", !9, i64 0}
!17 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24}
!18 = !{!17, !12, i64 16}
!19 = !{!6, !8, i64 8}
!20 = !{!6, !12, i64 44}
!21 = !{!17, !12, i64 8}
!22 = !{!13, !13, i64 0}
!23 = !{!12, !12, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
!27 = !{!6, !12, i64 272}
!28 = !{!6, !12, i64 256}
!29 = !{!17, !12, i64 20}
!30 = !{!6, !12, i64 24}
!31 = !{!6, !12, i64 40}
!32 = !{i64 82283, i64 82307}
!33 = !{i64 5222}
!34 = !{!10, !10, i64 0}
!35 = distinct !{!35, !25}
!36 = distinct !{!36, !25}
!37 = !{!38, !38, i64 0}
!38 = !{!"short", !10, i64 0}
!39 = !{!40, !8, i64 24}
!40 = !{!"", !41, i64 0, !41, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !13, i64 56, !13, i64 64, !12, i64 72, !12, i64 76}
!41 = !{!"p1 _ZTS8SeqDef_s", !9, i64 0}
!42 = distinct !{!42, !25}
!43 = distinct !{!43, !25, !44, !45}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = distinct !{!46, !25, !44, !45}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = distinct !{!49, !25, !44}
!50 = !{!40, !41, i64 8}
!51 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!52 = !{!40, !12, i64 72}
!53 = !{!40, !41, i64 0}
!54 = !{!40, !12, i64 76}
!55 = !{!56, !38, i64 4}
!56 = !{!"SeqDef_s", !12, i64 0, !38, i64 4, !38, i64 6}
!57 = !{!56, !12, i64 0}
!58 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!59 = !{!56, !38, i64 6}
!60 = distinct !{!60, !25, !44, !45}
!61 = distinct !{!61, !25, !44, !45}
!62 = distinct !{!62, !48}
!63 = distinct !{!63, !25, !44}
!64 = distinct !{!64, !25, !44, !45}
!65 = distinct !{!65, !25, !44, !45}
!66 = distinct !{!66, !48}
!67 = distinct !{!67, !25, !44}
!68 = distinct !{!68, !25, !44, !45}
!69 = distinct !{!69, !25, !44, !45}
!70 = distinct !{!70, !48}
!71 = distinct !{!71, !25, !44}
!72 = distinct !{!72, !25, !44, !45}
!73 = distinct !{!73, !25, !44, !45}
!74 = distinct !{!74, !48}
!75 = distinct !{!75, !25, !44}
!76 = distinct !{!76, !25, !44, !45}
!77 = distinct !{!77, !25, !44, !45}
!78 = distinct !{!78, !48}
!79 = distinct !{!79, !25, !44}
!80 = distinct !{!80, !25, !44, !45}
!81 = distinct !{!81, !25, !44, !45}
!82 = distinct !{!82, !48}
!83 = distinct !{!83, !25, !44}
!84 = distinct !{!84, !25, !44, !45}
!85 = distinct !{!85, !25, !44, !45}
!86 = distinct !{!86, !48}
!87 = distinct !{!87, !25, !44}
!88 = !{!6, !16, i64 248}
!89 = !{!6, !8, i64 0}
!90 = !{!6, !12, i64 296}
!91 = distinct !{!91, !25}
!92 = distinct !{!92, !25, !44, !45}
!93 = distinct !{!93, !25, !44, !45}
!94 = distinct !{!94, !48}
!95 = distinct !{!95, !25, !44}
!96 = distinct !{!96, !25}
!97 = distinct !{!97, !25, !44, !45}
!98 = distinct !{!98, !25, !44, !45}
!99 = distinct !{!99, !48}
!100 = distinct !{!100, !25, !44}
!101 = distinct !{!101, !25}
!102 = distinct !{!102, !25, !44, !45}
!103 = distinct !{!103, !25, !44, !45}
!104 = distinct !{!104, !48}
!105 = distinct !{!105, !25, !44}
!106 = distinct !{!106, !25, !44, !45}
!107 = distinct !{!107, !25, !44, !45}
!108 = distinct !{!108, !48}
!109 = distinct !{!109, !25, !44}
!110 = distinct !{!110, !25, !44, !45}
!111 = distinct !{!111, !25, !44, !45}
!112 = distinct !{!112, !48}
!113 = distinct !{!113, !25, !44}
!114 = distinct !{!114, !25, !44, !45}
!115 = distinct !{!115, !25, !44, !45}
!116 = distinct !{!116, !48}
!117 = distinct !{!117, !25, !44}
!118 = distinct !{!118, !25, !44, !45}
!119 = distinct !{!119, !25, !44, !45}
!120 = distinct !{!120, !48}
!121 = distinct !{!121, !25, !44}
!122 = distinct !{!122, !25, !44, !45}
!123 = distinct !{!123, !25, !44, !45}
!124 = distinct !{!124, !48}
!125 = distinct !{!125, !25, !44}
!126 = distinct !{!126, !25, !44, !45}
!127 = distinct !{!127, !25, !44, !45}
!128 = distinct !{!128, !48}
!129 = distinct !{!129, !25, !44}
!130 = distinct !{!130, !25, !44, !45}
!131 = distinct !{!131, !25, !44, !45}
!132 = distinct !{!132, !48}
!133 = distinct !{!133, !25, !44}
!134 = distinct !{!134, !25, !44, !45}
!135 = distinct !{!135, !25, !44, !45}
!136 = distinct !{!136, !48}
!137 = distinct !{!137, !25, !44}
!138 = distinct !{!138, !25, !44, !45}
!139 = distinct !{!139, !25, !44, !45}
!140 = distinct !{!140, !48}
!141 = distinct !{!141, !25, !44}
!142 = !{!6, !8, i64 16}
!143 = !{!17, !12, i64 0}
!144 = !{!6, !12, i64 28}
!145 = distinct !{!145, !25}
!146 = distinct !{!146, !25}
!147 = distinct !{!147, !25, !44, !45}
!148 = distinct !{!148, !25, !44, !45}
!149 = distinct !{!149, !48}
!150 = distinct !{!150, !25, !44}
