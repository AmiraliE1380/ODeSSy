; ModuleID = '/home/amiralie1380/michigan/pl/zlib/inffast.c'
source_filename = "/home/amiralie1380/michigan/pl/zlib/inffast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @inflate_fast(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %4 = load ptr, ptr %3, align 8, !tbaa !8
  %5 = load ptr, ptr %0, align 8, !tbaa !14
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !15
  %8 = add i32 %7, -5
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %12 = load ptr, ptr %11, align 8, !tbaa !16
  %13 = ptrtoint ptr %12 to i64
  %14 = ptrtoaddr ptr %12 to i64
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %16 = load i32, ptr %15, align 8, !tbaa !17
  %17 = sub i32 %1, %16
  %18 = zext i32 %17 to i64
  %19 = sub nsw i64 0, %18
  %20 = getelementptr inbounds i8, ptr %12, i64 %19
  %21 = add i32 %16, -257
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds nuw i8, ptr %12, i64 %22
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 60
  %25 = load i32, ptr %24, align 4, !tbaa !18
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %27 = load i32, ptr %26, align 8, !tbaa !22
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 68
  %29 = load i32, ptr %28, align 4, !tbaa !23
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %31 = load ptr, ptr %30, align 8, !tbaa !24
  %32 = ptrtoaddr ptr %31 to i64
  %33 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %34 = load i64, ptr %33, align 8, !tbaa !25
  %35 = getelementptr inbounds nuw i8, ptr %4, i64 88
  %36 = load i32, ptr %35, align 8, !tbaa !26
  %37 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %38 = load ptr, ptr %37, align 8, !tbaa !27
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %40 = load ptr, ptr %39, align 8, !tbaa !28
  %41 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %42 = load i32, ptr %41, align 8, !tbaa !29
  %43 = shl nsw i32 -1, %42
  %44 = xor i32 %43, -1
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 124
  %46 = load i32, ptr %45, align 4, !tbaa !30
  %47 = shl nsw i32 -1, %46
  %48 = xor i32 %47, -1
  %49 = zext nneg i32 %44 to i64
  %50 = zext nneg i32 %48 to i64
  %51 = ptrtoint ptr %20 to i64
  %52 = getelementptr inbounds nuw i8, ptr %4, i64 7144
  %53 = icmp eq i32 %29, 0
  %54 = add i32 %29, %25
  %55 = add i32 %25, %1
  %56 = trunc i64 %14 to i32
  %57 = add i32 %16, %56
  %58 = trunc i64 %13 to i32
  %59 = add i32 %16, %58
  %60 = xor i32 %1, -1
  %61 = add i32 %59, %60
  %62 = zext i32 %29 to i64
  %63 = add i32 %29, %25
  %64 = add i32 %63, %1
  %65 = trunc i64 %13 to i32
  %66 = add i32 %16, %65
  %67 = add i32 %16, %58
  %68 = xor i32 %29, -1
  %69 = add i32 %67, %68
  %70 = sub i32 %69, %1
  %71 = add i32 %29, %1
  %72 = trunc i64 %13 to i32
  %73 = add i32 %16, %72
  %74 = add i32 %16, %58
  %75 = xor i32 %1, -1
  %76 = add i32 %74, %75
  %77 = icmp ult i32 %29, 4
  %78 = icmp ult i32 %29, 32
  %79 = and i64 %62, 28
  %80 = and i64 %62, 4294967264
  %81 = trunc nuw i64 %80 to i32
  %82 = sub i32 %29, %81
  %83 = getelementptr i8, ptr %31, i64 %80
  %84 = icmp eq i64 %80, %62
  %85 = icmp eq i64 %79, 0
  %86 = and i64 %62, 4294967292
  %87 = trunc nuw i64 %86 to i32
  %88 = sub i32 %29, %87
  %89 = getelementptr i8, ptr %31, i64 %86
  %90 = icmp eq i64 %86, %62
  br label %91

91:                                               ; preds = %861, %2
  %92 = phi i32 [ %36, %2 ], [ %862, %861 ]
  %93 = phi i64 [ %34, %2 ], [ %863, %861 ]
  %94 = phi ptr [ %12, %2 ], [ %864, %861 ]
  %95 = phi ptr [ %5, %2 ], [ %865, %861 ]
  %96 = icmp ult i32 %92, 15
  br i1 %96, label %97, label %112

97:                                               ; preds = %91
  %98 = getelementptr inbounds nuw i8, ptr %95, i64 1
  %99 = load i8, ptr %95, align 1, !tbaa !31
  %100 = zext i8 %99 to i64
  %101 = zext nneg i32 %92 to i64
  %102 = shl nuw nsw i64 %100, %101
  %103 = add i64 %102, %93
  %104 = add nuw nsw i32 %92, 8
  %105 = getelementptr inbounds nuw i8, ptr %95, i64 2
  %106 = load i8, ptr %98, align 1, !tbaa !31
  %107 = zext i8 %106 to i64
  %108 = zext nneg i32 %104 to i64
  %109 = shl nuw nsw i64 %107, %108
  %110 = add i64 %103, %109
  %111 = or disjoint i32 %92, 16
  br label %112

112:                                              ; preds = %97, %91
  %113 = phi i32 [ %111, %97 ], [ %92, %91 ]
  %114 = phi i64 [ %110, %97 ], [ %93, %91 ]
  %115 = phi ptr [ %105, %97 ], [ %95, %91 ]
  %116 = and i64 %114, %49
  %117 = getelementptr inbounds nuw [4 x i8], ptr %38, i64 %116
  %118 = getelementptr inbounds nuw i8, ptr %117, i64 1
  %119 = load i8, ptr %118, align 1, !tbaa !32
  %120 = zext i8 %119 to i32
  %121 = zext nneg i8 %119 to i64
  %122 = lshr i64 %114, %121
  %123 = sub i32 %113, %120
  %124 = load i8, ptr %117, align 2, !tbaa !35
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %840, %112
  %127 = phi ptr [ %117, %112 ], [ %849, %840 ]
  %128 = phi i64 [ %122, %112 ], [ %854, %840 ]
  %129 = phi i32 [ %123, %112 ], [ %855, %840 ]
  %130 = getelementptr inbounds nuw i8, ptr %127, i64 2
  %131 = load i16, ptr %130, align 2, !tbaa !36
  %132 = trunc i16 %131 to i8
  %133 = getelementptr inbounds nuw i8, ptr %94, i64 1
  store i8 %132, ptr %94, align 1, !tbaa !31
  br label %861

134:                                              ; preds = %112, %840
  %135 = phi i8 [ %856, %840 ], [ %124, %112 ]
  %136 = phi i32 [ %855, %840 ], [ %123, %112 ]
  %137 = phi i64 [ %854, %840 ], [ %122, %112 ]
  %138 = phi ptr [ %849, %840 ], [ %117, %112 ]
  %139 = zext i8 %135 to i32
  %140 = and i32 %139, 16
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %837, label %142

142:                                              ; preds = %134
  %143 = getelementptr inbounds nuw i8, ptr %138, i64 2
  %144 = load i16, ptr %143, align 2, !tbaa !36
  %145 = zext i16 %144 to i32
  %146 = and i32 %139, 15
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %170, label %148

148:                                              ; preds = %142
  %149 = icmp ult i32 %136, %146
  br i1 %149, label %150, label %158

150:                                              ; preds = %148
  %151 = getelementptr inbounds nuw i8, ptr %115, i64 1
  %152 = load i8, ptr %115, align 1, !tbaa !31
  %153 = zext i8 %152 to i64
  %154 = zext nneg i32 %136 to i64
  %155 = shl nuw nsw i64 %153, %154
  %156 = add i64 %155, %137
  %157 = add nuw nsw i32 %136, 8
  br label %158

158:                                              ; preds = %150, %148
  %159 = phi i32 [ %157, %150 ], [ %136, %148 ]
  %160 = phi i64 [ %156, %150 ], [ %137, %148 ]
  %161 = phi ptr [ %151, %150 ], [ %115, %148 ]
  %162 = trunc i64 %160 to i32
  %163 = shl nsw i32 -1, %146
  %164 = xor i32 %163, -1
  %165 = and i32 %162, %164
  %166 = add nuw nsw i32 %165, %145
  %167 = zext nneg i32 %146 to i64
  %168 = lshr i64 %160, %167
  %169 = sub i32 %159, %146
  br label %170

170:                                              ; preds = %158, %142
  %171 = phi i32 [ %169, %158 ], [ %136, %142 ]
  %172 = phi i64 [ %168, %158 ], [ %137, %142 ]
  %173 = phi ptr [ %161, %158 ], [ %115, %142 ]
  %174 = phi i32 [ %166, %158 ], [ %145, %142 ]
  %175 = icmp ult i32 %171, 15
  br i1 %175, label %176, label %191

176:                                              ; preds = %170
  %177 = getelementptr inbounds nuw i8, ptr %173, i64 1
  %178 = load i8, ptr %173, align 1, !tbaa !31
  %179 = zext i8 %178 to i64
  %180 = zext nneg i32 %171 to i64
  %181 = shl nuw nsw i64 %179, %180
  %182 = add i64 %181, %172
  %183 = add nuw nsw i32 %171, 8
  %184 = getelementptr inbounds nuw i8, ptr %173, i64 2
  %185 = load i8, ptr %177, align 1, !tbaa !31
  %186 = zext i8 %185 to i64
  %187 = zext nneg i32 %183 to i64
  %188 = shl nuw nsw i64 %186, %187
  %189 = add i64 %182, %188
  %190 = or disjoint i32 %171, 16
  br label %191

191:                                              ; preds = %176, %170
  %192 = phi i32 [ %190, %176 ], [ %171, %170 ]
  %193 = phi i64 [ %189, %176 ], [ %172, %170 ]
  %194 = phi ptr [ %184, %176 ], [ %173, %170 ]
  %195 = and i64 %193, %50
  %196 = getelementptr inbounds nuw [4 x i8], ptr %40, i64 %195
  %197 = getelementptr inbounds nuw i8, ptr %196, i64 1
  %198 = load i8, ptr %197, align 1, !tbaa !32
  %199 = zext i8 %198 to i32
  %200 = zext nneg i8 %198 to i64
  %201 = lshr i64 %193, %200
  %202 = sub i32 %192, %199
  %203 = load i8, ptr %196, align 2, !tbaa !35
  %204 = zext i8 %203 to i32
  %205 = and i32 %204, 16
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %810, label %207

207:                                              ; preds = %817, %191
  %208 = phi ptr [ %196, %191 ], [ %826, %817 ]
  %209 = phi i64 [ %201, %191 ], [ %831, %817 ]
  %210 = phi i32 [ %202, %191 ], [ %832, %817 ]
  %211 = phi i32 [ %204, %191 ], [ %834, %817 ]
  %212 = getelementptr inbounds nuw i8, ptr %208, i64 2
  %213 = load i16, ptr %212, align 2, !tbaa !36
  %214 = zext i16 %213 to i32
  %215 = and i32 %211, 15
  %216 = icmp ult i32 %210, %215
  br i1 %216, label %217, label %234

217:                                              ; preds = %207
  %218 = getelementptr inbounds nuw i8, ptr %194, i64 1
  %219 = load i8, ptr %194, align 1, !tbaa !31
  %220 = zext i8 %219 to i64
  %221 = zext nneg i32 %210 to i64
  %222 = shl nuw nsw i64 %220, %221
  %223 = add i64 %222, %209
  %224 = add nuw nsw i32 %210, 8
  %225 = icmp samesign ult i32 %224, %215
  br i1 %225, label %226, label %234

226:                                              ; preds = %217
  %227 = getelementptr inbounds nuw i8, ptr %194, i64 2
  %228 = load i8, ptr %218, align 1, !tbaa !31
  %229 = zext i8 %228 to i64
  %230 = zext nneg i32 %224 to i64
  %231 = shl nuw nsw i64 %229, %230
  %232 = add i64 %231, %223
  %233 = add nuw nsw i32 %210, 16
  br label %234

234:                                              ; preds = %217, %226, %207
  %235 = phi i32 [ %233, %226 ], [ %224, %217 ], [ %210, %207 ]
  %236 = phi i64 [ %232, %226 ], [ %223, %217 ], [ %209, %207 ]
  %237 = phi ptr [ %227, %226 ], [ %218, %217 ], [ %194, %207 ]
  %238 = trunc i64 %236 to i32
  %239 = shl nsw i32 -1, %215
  %240 = xor i32 %239, -1
  %241 = and i32 %238, %240
  %242 = add nuw nsw i32 %241, %214
  %243 = zext nneg i32 %215 to i64
  %244 = lshr i64 %236, %243
  %245 = sub i32 %235, %215
  %246 = ptrtoint ptr %94 to i64
  %247 = sub i64 %246, %51
  %248 = trunc i64 %247 to i32
  %249 = icmp ugt i32 %242, %248
  br i1 %249, label %250, label %781

250:                                              ; preds = %234
  %251 = sub nuw nsw i32 %242, %248
  %252 = icmp ugt i32 %251, %27
  br i1 %252, label %253, label %256

253:                                              ; preds = %250
  %254 = load i32, ptr %52, align 8, !tbaa !37
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %869

256:                                              ; preds = %253, %250
  br i1 %53, label %257, label %379

257:                                              ; preds = %256
  %258 = sub i32 %25, %251
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds nuw i8, ptr %31, i64 %259
  %261 = icmp ult i32 %251, %174
  br i1 %261, label %262, label %715

262:                                              ; preds = %257
  %263 = add i32 %61, %241
  %264 = add i32 %263, %214
  %265 = trunc i64 %246 to i32
  %266 = sub i32 %264, %265
  %267 = zext i32 %266 to i64
  %268 = add nuw nsw i64 %267, 1
  %269 = icmp ult i32 %266, 3
  br i1 %269, label %319, label %270

270:                                              ; preds = %262
  %271 = trunc i64 %246 to i32
  %272 = add i32 %55, %271
  %273 = add i32 %57, %241
  %274 = add i32 %273, %214
  %275 = sub i32 %272, %274
  %276 = zext i32 %275 to i64
  %277 = add i64 %32, %276
  %278 = sub i64 %246, %277
  %279 = icmp ult i64 %278, 32
  br i1 %279, label %319, label %280

280:                                              ; preds = %270
  %281 = icmp ult i32 %266, 31
  br i1 %281, label %303, label %282

282:                                              ; preds = %280
  %283 = and i64 %268, 28
  %284 = and i64 %268, 8589934560
  %285 = getelementptr i8, ptr %94, i64 %284
  %286 = trunc i64 %284 to i32
  %287 = sub i32 %251, %286
  %288 = getelementptr i8, ptr %260, i64 %284
  br label %289

289:                                              ; preds = %289, %282
  %290 = phi i64 [ 0, %282 ], [ %297, %289 ]
  %291 = getelementptr i8, ptr %94, i64 %290
  %292 = getelementptr i8, ptr %260, i64 %290
  %293 = getelementptr i8, ptr %292, i64 16
  %294 = load <16 x i8>, ptr %292, align 1, !tbaa !31
  %295 = load <16 x i8>, ptr %293, align 1, !tbaa !31
  %296 = getelementptr i8, ptr %291, i64 16
  store <16 x i8> %294, ptr %291, align 1, !tbaa !31
  store <16 x i8> %295, ptr %296, align 1, !tbaa !31
  %297 = add nuw i64 %290, 32
  %298 = icmp eq i64 %297, %284
  br i1 %298, label %299, label %289, !llvm.loop !38

299:                                              ; preds = %289
  %300 = icmp eq i64 %268, %284
  br i1 %300, label %373, label %301

301:                                              ; preds = %299
  %302 = icmp eq i64 %283, 0
  br i1 %302, label %319, label %303, !prof !42

303:                                              ; preds = %280, %301
  %304 = phi i64 [ %284, %301 ], [ 0, %280 ]
  %305 = and i64 %268, 8589934588
  %306 = getelementptr i8, ptr %94, i64 %305
  %307 = trunc i64 %305 to i32
  %308 = sub i32 %251, %307
  %309 = getelementptr i8, ptr %260, i64 %305
  br label %310

310:                                              ; preds = %310, %303
  %311 = phi i64 [ %304, %303 ], [ %315, %310 ]
  %312 = getelementptr i8, ptr %94, i64 %311
  %313 = getelementptr i8, ptr %260, i64 %311
  %314 = load <4 x i8>, ptr %313, align 1, !tbaa !31
  store <4 x i8> %314, ptr %312, align 1, !tbaa !31
  %315 = add nuw i64 %311, 4
  %316 = icmp eq i64 %315, %305
  br i1 %316, label %317, label %310, !llvm.loop !43

317:                                              ; preds = %310
  %318 = icmp eq i64 %268, %305
  br i1 %318, label %373, label %319

319:                                              ; preds = %270, %262, %301, %317
  %320 = phi ptr [ %94, %262 ], [ %94, %270 ], [ %285, %301 ], [ %306, %317 ]
  %321 = phi i32 [ %251, %262 ], [ %251, %270 ], [ %287, %301 ], [ %308, %317 ]
  %322 = phi ptr [ %260, %262 ], [ %260, %270 ], [ %288, %301 ], [ %309, %317 ]
  %323 = add i32 %321, -1
  %324 = and i32 %321, 7
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %337, label %326

326:                                              ; preds = %319, %326
  %327 = phi ptr [ %333, %326 ], [ %320, %319 ]
  %328 = phi i32 [ %334, %326 ], [ %321, %319 ]
  %329 = phi ptr [ %331, %326 ], [ %322, %319 ]
  %330 = phi i32 [ %335, %326 ], [ 0, %319 ]
  %331 = getelementptr inbounds nuw i8, ptr %329, i64 1
  %332 = load i8, ptr %329, align 1, !tbaa !31
  %333 = getelementptr inbounds nuw i8, ptr %327, i64 1
  store i8 %332, ptr %327, align 1, !tbaa !31
  %334 = add i32 %328, -1
  %335 = add i32 %330, 1
  %336 = icmp eq i32 %335, %324
  br i1 %336, label %337, label %326, !llvm.loop !44

337:                                              ; preds = %326, %319
  %338 = phi ptr [ poison, %319 ], [ %333, %326 ]
  %339 = phi ptr [ %320, %319 ], [ %333, %326 ]
  %340 = phi i32 [ %321, %319 ], [ %334, %326 ]
  %341 = phi ptr [ %322, %319 ], [ %331, %326 ]
  %342 = icmp ult i32 %323, 7
  br i1 %342, label %373, label %343

343:                                              ; preds = %337, %343
  %344 = phi ptr [ %370, %343 ], [ %339, %337 ]
  %345 = phi i32 [ %371, %343 ], [ %340, %337 ]
  %346 = phi ptr [ %368, %343 ], [ %341, %337 ]
  %347 = getelementptr inbounds nuw i8, ptr %346, i64 1
  %348 = load i8, ptr %346, align 1, !tbaa !31
  %349 = getelementptr inbounds nuw i8, ptr %344, i64 1
  store i8 %348, ptr %344, align 1, !tbaa !31
  %350 = getelementptr inbounds nuw i8, ptr %346, i64 2
  %351 = load i8, ptr %347, align 1, !tbaa !31
  %352 = getelementptr inbounds nuw i8, ptr %344, i64 2
  store i8 %351, ptr %349, align 1, !tbaa !31
  %353 = getelementptr inbounds nuw i8, ptr %346, i64 3
  %354 = load i8, ptr %350, align 1, !tbaa !31
  %355 = getelementptr inbounds nuw i8, ptr %344, i64 3
  store i8 %354, ptr %352, align 1, !tbaa !31
  %356 = getelementptr inbounds nuw i8, ptr %346, i64 4
  %357 = load i8, ptr %353, align 1, !tbaa !31
  %358 = getelementptr inbounds nuw i8, ptr %344, i64 4
  store i8 %357, ptr %355, align 1, !tbaa !31
  %359 = getelementptr inbounds nuw i8, ptr %346, i64 5
  %360 = load i8, ptr %356, align 1, !tbaa !31
  %361 = getelementptr inbounds nuw i8, ptr %344, i64 5
  store i8 %360, ptr %358, align 1, !tbaa !31
  %362 = getelementptr inbounds nuw i8, ptr %346, i64 6
  %363 = load i8, ptr %359, align 1, !tbaa !31
  %364 = getelementptr inbounds nuw i8, ptr %344, i64 6
  store i8 %363, ptr %361, align 1, !tbaa !31
  %365 = getelementptr inbounds nuw i8, ptr %346, i64 7
  %366 = load i8, ptr %362, align 1, !tbaa !31
  %367 = getelementptr inbounds nuw i8, ptr %344, i64 7
  store i8 %366, ptr %364, align 1, !tbaa !31
  %368 = getelementptr inbounds nuw i8, ptr %346, i64 8
  %369 = load i8, ptr %365, align 1, !tbaa !31
  %370 = getelementptr inbounds nuw i8, ptr %344, i64 8
  store i8 %369, ptr %367, align 1, !tbaa !31
  %371 = add i32 %345, -8
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %343, !llvm.loop !46

373:                                              ; preds = %337, %343, %317, %299
  %374 = phi ptr [ %306, %317 ], [ %285, %299 ], [ %338, %337 ], [ %370, %343 ]
  %375 = sub nuw nsw i32 %174, %251
  %376 = zext nneg i32 %242 to i64
  %377 = sub nsw i64 0, %376
  %378 = getelementptr inbounds i8, ptr %374, i64 %377
  br label %715

379:                                              ; preds = %256
  %380 = icmp ult i32 %29, %251
  br i1 %380, label %381, label %593

381:                                              ; preds = %379
  %382 = sub i32 %54, %251
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds nuw i8, ptr %31, i64 %383
  %385 = sub nuw nsw i32 %251, %29
  %386 = icmp ult i32 %385, %174
  br i1 %386, label %387, label %715

387:                                              ; preds = %381
  %388 = add i32 %70, %241
  %389 = add i32 %388, %214
  %390 = trunc i64 %246 to i32
  %391 = sub i32 %389, %390
  %392 = zext i32 %391 to i64
  %393 = add nuw nsw i64 %392, 1
  %394 = icmp ult i32 %391, 3
  br i1 %394, label %444, label %395

395:                                              ; preds = %387
  %396 = trunc i64 %246 to i32
  %397 = add i32 %64, %396
  %398 = add i32 %66, %241
  %399 = add i32 %398, %214
  %400 = sub i32 %397, %399
  %401 = zext i32 %400 to i64
  %402 = add i64 %32, %401
  %403 = sub i64 %246, %402
  %404 = icmp ult i64 %403, 32
  br i1 %404, label %444, label %405

405:                                              ; preds = %395
  %406 = icmp ult i32 %391, 31
  br i1 %406, label %428, label %407

407:                                              ; preds = %405
  %408 = and i64 %393, 28
  %409 = and i64 %393, 8589934560
  %410 = getelementptr i8, ptr %94, i64 %409
  %411 = trunc i64 %409 to i32
  %412 = sub i32 %385, %411
  %413 = getelementptr i8, ptr %384, i64 %409
  br label %414

414:                                              ; preds = %414, %407
  %415 = phi i64 [ 0, %407 ], [ %422, %414 ]
  %416 = getelementptr i8, ptr %94, i64 %415
  %417 = getelementptr i8, ptr %384, i64 %415
  %418 = getelementptr i8, ptr %417, i64 16
  %419 = load <16 x i8>, ptr %417, align 1, !tbaa !31
  %420 = load <16 x i8>, ptr %418, align 1, !tbaa !31
  %421 = getelementptr i8, ptr %416, i64 16
  store <16 x i8> %419, ptr %416, align 1, !tbaa !31
  store <16 x i8> %420, ptr %421, align 1, !tbaa !31
  %422 = add nuw i64 %415, 32
  %423 = icmp eq i64 %422, %409
  br i1 %423, label %424, label %414, !llvm.loop !47

424:                                              ; preds = %414
  %425 = icmp eq i64 %393, %409
  br i1 %425, label %498, label %426

426:                                              ; preds = %424
  %427 = icmp eq i64 %408, 0
  br i1 %427, label %444, label %428, !prof !42

428:                                              ; preds = %405, %426
  %429 = phi i64 [ %409, %426 ], [ 0, %405 ]
  %430 = and i64 %393, 8589934588
  %431 = getelementptr i8, ptr %94, i64 %430
  %432 = trunc i64 %430 to i32
  %433 = sub i32 %385, %432
  %434 = getelementptr i8, ptr %384, i64 %430
  br label %435

435:                                              ; preds = %435, %428
  %436 = phi i64 [ %429, %428 ], [ %440, %435 ]
  %437 = getelementptr i8, ptr %94, i64 %436
  %438 = getelementptr i8, ptr %384, i64 %436
  %439 = load <4 x i8>, ptr %438, align 1, !tbaa !31
  store <4 x i8> %439, ptr %437, align 1, !tbaa !31
  %440 = add nuw i64 %436, 4
  %441 = icmp eq i64 %440, %430
  br i1 %441, label %442, label %435, !llvm.loop !48

442:                                              ; preds = %435
  %443 = icmp eq i64 %393, %430
  br i1 %443, label %498, label %444

444:                                              ; preds = %395, %387, %426, %442
  %445 = phi ptr [ %94, %387 ], [ %94, %395 ], [ %410, %426 ], [ %431, %442 ]
  %446 = phi i32 [ %385, %387 ], [ %385, %395 ], [ %412, %426 ], [ %433, %442 ]
  %447 = phi ptr [ %384, %387 ], [ %384, %395 ], [ %413, %426 ], [ %434, %442 ]
  %448 = add i32 %446, -1
  %449 = and i32 %446, 7
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %462, label %451

451:                                              ; preds = %444, %451
  %452 = phi ptr [ %458, %451 ], [ %445, %444 ]
  %453 = phi i32 [ %459, %451 ], [ %446, %444 ]
  %454 = phi ptr [ %456, %451 ], [ %447, %444 ]
  %455 = phi i32 [ %460, %451 ], [ 0, %444 ]
  %456 = getelementptr inbounds nuw i8, ptr %454, i64 1
  %457 = load i8, ptr %454, align 1, !tbaa !31
  %458 = getelementptr inbounds nuw i8, ptr %452, i64 1
  store i8 %457, ptr %452, align 1, !tbaa !31
  %459 = add i32 %453, -1
  %460 = add i32 %455, 1
  %461 = icmp eq i32 %460, %449
  br i1 %461, label %462, label %451, !llvm.loop !49

462:                                              ; preds = %451, %444
  %463 = phi ptr [ poison, %444 ], [ %458, %451 ]
  %464 = phi ptr [ %445, %444 ], [ %458, %451 ]
  %465 = phi i32 [ %446, %444 ], [ %459, %451 ]
  %466 = phi ptr [ %447, %444 ], [ %456, %451 ]
  %467 = icmp ult i32 %448, 7
  br i1 %467, label %498, label %468

468:                                              ; preds = %462, %468
  %469 = phi ptr [ %495, %468 ], [ %464, %462 ]
  %470 = phi i32 [ %496, %468 ], [ %465, %462 ]
  %471 = phi ptr [ %493, %468 ], [ %466, %462 ]
  %472 = getelementptr inbounds nuw i8, ptr %471, i64 1
  %473 = load i8, ptr %471, align 1, !tbaa !31
  %474 = getelementptr inbounds nuw i8, ptr %469, i64 1
  store i8 %473, ptr %469, align 1, !tbaa !31
  %475 = getelementptr inbounds nuw i8, ptr %471, i64 2
  %476 = load i8, ptr %472, align 1, !tbaa !31
  %477 = getelementptr inbounds nuw i8, ptr %469, i64 2
  store i8 %476, ptr %474, align 1, !tbaa !31
  %478 = getelementptr inbounds nuw i8, ptr %471, i64 3
  %479 = load i8, ptr %475, align 1, !tbaa !31
  %480 = getelementptr inbounds nuw i8, ptr %469, i64 3
  store i8 %479, ptr %477, align 1, !tbaa !31
  %481 = getelementptr inbounds nuw i8, ptr %471, i64 4
  %482 = load i8, ptr %478, align 1, !tbaa !31
  %483 = getelementptr inbounds nuw i8, ptr %469, i64 4
  store i8 %482, ptr %480, align 1, !tbaa !31
  %484 = getelementptr inbounds nuw i8, ptr %471, i64 5
  %485 = load i8, ptr %481, align 1, !tbaa !31
  %486 = getelementptr inbounds nuw i8, ptr %469, i64 5
  store i8 %485, ptr %483, align 1, !tbaa !31
  %487 = getelementptr inbounds nuw i8, ptr %471, i64 6
  %488 = load i8, ptr %484, align 1, !tbaa !31
  %489 = getelementptr inbounds nuw i8, ptr %469, i64 6
  store i8 %488, ptr %486, align 1, !tbaa !31
  %490 = getelementptr inbounds nuw i8, ptr %471, i64 7
  %491 = load i8, ptr %487, align 1, !tbaa !31
  %492 = getelementptr inbounds nuw i8, ptr %469, i64 7
  store i8 %491, ptr %489, align 1, !tbaa !31
  %493 = getelementptr inbounds nuw i8, ptr %471, i64 8
  %494 = load i8, ptr %490, align 1, !tbaa !31
  %495 = getelementptr inbounds nuw i8, ptr %469, i64 8
  store i8 %494, ptr %492, align 1, !tbaa !31
  %496 = add i32 %470, -8
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %468, !llvm.loop !50

498:                                              ; preds = %462, %468, %442, %424
  %499 = phi ptr [ %431, %442 ], [ %410, %424 ], [ %463, %462 ], [ %495, %468 ]
  %500 = sub nuw nsw i32 %174, %385
  %501 = icmp ult i32 %29, %500
  br i1 %501, label %502, label %715

502:                                              ; preds = %498
  %503 = ptrtoaddr ptr %499 to i64
  %504 = sub i64 %503, %32
  %505 = icmp ult i64 %504, 32
  %506 = select i1 %77, i1 true, i1 %505
  br i1 %506, label %533, label %507

507:                                              ; preds = %502
  br i1 %78, label %522, label %508

508:                                              ; preds = %507
  %509 = getelementptr i8, ptr %499, i64 %80
  br label %510

510:                                              ; preds = %510, %508
  %511 = phi i64 [ 0, %508 ], [ %518, %510 ]
  %512 = getelementptr i8, ptr %499, i64 %511
  %513 = getelementptr i8, ptr %31, i64 %511
  %514 = getelementptr i8, ptr %513, i64 16
  %515 = load <16 x i8>, ptr %513, align 1, !tbaa !31
  %516 = load <16 x i8>, ptr %514, align 1, !tbaa !31
  %517 = getelementptr i8, ptr %512, i64 16
  store <16 x i8> %515, ptr %512, align 1, !tbaa !31
  store <16 x i8> %516, ptr %517, align 1, !tbaa !31
  %518 = add nuw i64 %511, 32
  %519 = icmp eq i64 %518, %80
  br i1 %519, label %520, label %510, !llvm.loop !51

520:                                              ; preds = %510
  br i1 %84, label %587, label %521

521:                                              ; preds = %520
  br i1 %85, label %533, label %522, !prof !42

522:                                              ; preds = %507, %521
  %523 = phi i64 [ %80, %521 ], [ 0, %507 ]
  %524 = getelementptr i8, ptr %499, i64 %86
  br label %525

525:                                              ; preds = %525, %522
  %526 = phi i64 [ %523, %522 ], [ %530, %525 ]
  %527 = getelementptr i8, ptr %499, i64 %526
  %528 = getelementptr i8, ptr %31, i64 %526
  %529 = load <4 x i8>, ptr %528, align 1, !tbaa !31
  store <4 x i8> %529, ptr %527, align 1, !tbaa !31
  %530 = add nuw i64 %526, 4
  %531 = icmp eq i64 %530, %86
  br i1 %531, label %532, label %525, !llvm.loop !52

532:                                              ; preds = %525
  br i1 %90, label %587, label %533

533:                                              ; preds = %502, %521, %532
  %534 = phi ptr [ %499, %502 ], [ %509, %521 ], [ %524, %532 ]
  %535 = phi i32 [ %29, %502 ], [ %82, %521 ], [ %88, %532 ]
  %536 = phi ptr [ %31, %502 ], [ %83, %521 ], [ %89, %532 ]
  %537 = add i32 %535, -1
  %538 = and i32 %535, 7
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %551, label %540

540:                                              ; preds = %533, %540
  %541 = phi ptr [ %547, %540 ], [ %534, %533 ]
  %542 = phi i32 [ %548, %540 ], [ %535, %533 ]
  %543 = phi ptr [ %545, %540 ], [ %536, %533 ]
  %544 = phi i32 [ %549, %540 ], [ 0, %533 ]
  %545 = getelementptr inbounds nuw i8, ptr %543, i64 1
  %546 = load i8, ptr %543, align 1, !tbaa !31
  %547 = getelementptr inbounds nuw i8, ptr %541, i64 1
  store i8 %546, ptr %541, align 1, !tbaa !31
  %548 = add i32 %542, -1
  %549 = add i32 %544, 1
  %550 = icmp eq i32 %549, %538
  br i1 %550, label %551, label %540, !llvm.loop !53

551:                                              ; preds = %540, %533
  %552 = phi ptr [ poison, %533 ], [ %547, %540 ]
  %553 = phi ptr [ %534, %533 ], [ %547, %540 ]
  %554 = phi i32 [ %535, %533 ], [ %548, %540 ]
  %555 = phi ptr [ %536, %533 ], [ %545, %540 ]
  %556 = icmp ult i32 %537, 7
  br i1 %556, label %587, label %557

557:                                              ; preds = %551, %557
  %558 = phi ptr [ %584, %557 ], [ %553, %551 ]
  %559 = phi i32 [ %585, %557 ], [ %554, %551 ]
  %560 = phi ptr [ %582, %557 ], [ %555, %551 ]
  %561 = getelementptr inbounds nuw i8, ptr %560, i64 1
  %562 = load i8, ptr %560, align 1, !tbaa !31
  %563 = getelementptr inbounds nuw i8, ptr %558, i64 1
  store i8 %562, ptr %558, align 1, !tbaa !31
  %564 = getelementptr inbounds nuw i8, ptr %560, i64 2
  %565 = load i8, ptr %561, align 1, !tbaa !31
  %566 = getelementptr inbounds nuw i8, ptr %558, i64 2
  store i8 %565, ptr %563, align 1, !tbaa !31
  %567 = getelementptr inbounds nuw i8, ptr %560, i64 3
  %568 = load i8, ptr %564, align 1, !tbaa !31
  %569 = getelementptr inbounds nuw i8, ptr %558, i64 3
  store i8 %568, ptr %566, align 1, !tbaa !31
  %570 = getelementptr inbounds nuw i8, ptr %560, i64 4
  %571 = load i8, ptr %567, align 1, !tbaa !31
  %572 = getelementptr inbounds nuw i8, ptr %558, i64 4
  store i8 %571, ptr %569, align 1, !tbaa !31
  %573 = getelementptr inbounds nuw i8, ptr %560, i64 5
  %574 = load i8, ptr %570, align 1, !tbaa !31
  %575 = getelementptr inbounds nuw i8, ptr %558, i64 5
  store i8 %574, ptr %572, align 1, !tbaa !31
  %576 = getelementptr inbounds nuw i8, ptr %560, i64 6
  %577 = load i8, ptr %573, align 1, !tbaa !31
  %578 = getelementptr inbounds nuw i8, ptr %558, i64 6
  store i8 %577, ptr %575, align 1, !tbaa !31
  %579 = getelementptr inbounds nuw i8, ptr %560, i64 7
  %580 = load i8, ptr %576, align 1, !tbaa !31
  %581 = getelementptr inbounds nuw i8, ptr %558, i64 7
  store i8 %580, ptr %578, align 1, !tbaa !31
  %582 = getelementptr inbounds nuw i8, ptr %560, i64 8
  %583 = load i8, ptr %579, align 1, !tbaa !31
  %584 = getelementptr inbounds nuw i8, ptr %558, i64 8
  store i8 %583, ptr %581, align 1, !tbaa !31
  %585 = add i32 %559, -8
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %587, label %557, !llvm.loop !54

587:                                              ; preds = %551, %557, %532, %520
  %588 = phi ptr [ %524, %532 ], [ %509, %520 ], [ %552, %551 ], [ %584, %557 ]
  %589 = sub nuw nsw i32 %500, %29
  %590 = zext nneg i32 %242 to i64
  %591 = sub nsw i64 0, %590
  %592 = getelementptr inbounds i8, ptr %588, i64 %591
  br label %715

593:                                              ; preds = %379
  %594 = sub nuw i32 %29, %251
  %595 = zext i32 %594 to i64
  %596 = getelementptr inbounds nuw i8, ptr %31, i64 %595
  %597 = icmp ult i32 %251, %174
  br i1 %597, label %598, label %715

598:                                              ; preds = %593
  %599 = add i32 %76, %241
  %600 = add i32 %599, %214
  %601 = trunc i64 %246 to i32
  %602 = sub i32 %600, %601
  %603 = zext i32 %602 to i64
  %604 = add nuw nsw i64 %603, 1
  %605 = icmp ult i32 %602, 3
  br i1 %605, label %655, label %606

606:                                              ; preds = %598
  %607 = trunc i64 %246 to i32
  %608 = add i32 %71, %607
  %609 = add i32 %73, %241
  %610 = add i32 %609, %214
  %611 = sub i32 %608, %610
  %612 = zext i32 %611 to i64
  %613 = add i64 %32, %612
  %614 = sub i64 %246, %613
  %615 = icmp ult i64 %614, 32
  br i1 %615, label %655, label %616

616:                                              ; preds = %606
  %617 = icmp ult i32 %602, 31
  br i1 %617, label %639, label %618

618:                                              ; preds = %616
  %619 = and i64 %604, 28
  %620 = and i64 %604, 8589934560
  %621 = getelementptr i8, ptr %94, i64 %620
  %622 = trunc i64 %620 to i32
  %623 = sub i32 %251, %622
  %624 = getelementptr i8, ptr %596, i64 %620
  br label %625

625:                                              ; preds = %625, %618
  %626 = phi i64 [ 0, %618 ], [ %633, %625 ]
  %627 = getelementptr i8, ptr %94, i64 %626
  %628 = getelementptr i8, ptr %596, i64 %626
  %629 = getelementptr i8, ptr %628, i64 16
  %630 = load <16 x i8>, ptr %628, align 1, !tbaa !31
  %631 = load <16 x i8>, ptr %629, align 1, !tbaa !31
  %632 = getelementptr i8, ptr %627, i64 16
  store <16 x i8> %630, ptr %627, align 1, !tbaa !31
  store <16 x i8> %631, ptr %632, align 1, !tbaa !31
  %633 = add nuw i64 %626, 32
  %634 = icmp eq i64 %633, %620
  br i1 %634, label %635, label %625, !llvm.loop !55

635:                                              ; preds = %625
  %636 = icmp eq i64 %604, %620
  br i1 %636, label %709, label %637

637:                                              ; preds = %635
  %638 = icmp eq i64 %619, 0
  br i1 %638, label %655, label %639, !prof !42

639:                                              ; preds = %616, %637
  %640 = phi i64 [ %620, %637 ], [ 0, %616 ]
  %641 = and i64 %604, 8589934588
  %642 = getelementptr i8, ptr %94, i64 %641
  %643 = trunc i64 %641 to i32
  %644 = sub i32 %251, %643
  %645 = getelementptr i8, ptr %596, i64 %641
  br label %646

646:                                              ; preds = %646, %639
  %647 = phi i64 [ %640, %639 ], [ %651, %646 ]
  %648 = getelementptr i8, ptr %94, i64 %647
  %649 = getelementptr i8, ptr %596, i64 %647
  %650 = load <4 x i8>, ptr %649, align 1, !tbaa !31
  store <4 x i8> %650, ptr %648, align 1, !tbaa !31
  %651 = add nuw i64 %647, 4
  %652 = icmp eq i64 %651, %641
  br i1 %652, label %653, label %646, !llvm.loop !56

653:                                              ; preds = %646
  %654 = icmp eq i64 %604, %641
  br i1 %654, label %709, label %655

655:                                              ; preds = %606, %598, %637, %653
  %656 = phi ptr [ %94, %598 ], [ %94, %606 ], [ %621, %637 ], [ %642, %653 ]
  %657 = phi i32 [ %251, %598 ], [ %251, %606 ], [ %623, %637 ], [ %644, %653 ]
  %658 = phi ptr [ %596, %598 ], [ %596, %606 ], [ %624, %637 ], [ %645, %653 ]
  %659 = add i32 %657, -1
  %660 = and i32 %657, 7
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %673, label %662

662:                                              ; preds = %655, %662
  %663 = phi ptr [ %669, %662 ], [ %656, %655 ]
  %664 = phi i32 [ %670, %662 ], [ %657, %655 ]
  %665 = phi ptr [ %667, %662 ], [ %658, %655 ]
  %666 = phi i32 [ %671, %662 ], [ 0, %655 ]
  %667 = getelementptr inbounds nuw i8, ptr %665, i64 1
  %668 = load i8, ptr %665, align 1, !tbaa !31
  %669 = getelementptr inbounds nuw i8, ptr %663, i64 1
  store i8 %668, ptr %663, align 1, !tbaa !31
  %670 = add i32 %664, -1
  %671 = add i32 %666, 1
  %672 = icmp eq i32 %671, %660
  br i1 %672, label %673, label %662, !llvm.loop !57

673:                                              ; preds = %662, %655
  %674 = phi ptr [ poison, %655 ], [ %669, %662 ]
  %675 = phi ptr [ %656, %655 ], [ %669, %662 ]
  %676 = phi i32 [ %657, %655 ], [ %670, %662 ]
  %677 = phi ptr [ %658, %655 ], [ %667, %662 ]
  %678 = icmp ult i32 %659, 7
  br i1 %678, label %709, label %679

679:                                              ; preds = %673, %679
  %680 = phi ptr [ %706, %679 ], [ %675, %673 ]
  %681 = phi i32 [ %707, %679 ], [ %676, %673 ]
  %682 = phi ptr [ %704, %679 ], [ %677, %673 ]
  %683 = getelementptr inbounds nuw i8, ptr %682, i64 1
  %684 = load i8, ptr %682, align 1, !tbaa !31
  %685 = getelementptr inbounds nuw i8, ptr %680, i64 1
  store i8 %684, ptr %680, align 1, !tbaa !31
  %686 = getelementptr inbounds nuw i8, ptr %682, i64 2
  %687 = load i8, ptr %683, align 1, !tbaa !31
  %688 = getelementptr inbounds nuw i8, ptr %680, i64 2
  store i8 %687, ptr %685, align 1, !tbaa !31
  %689 = getelementptr inbounds nuw i8, ptr %682, i64 3
  %690 = load i8, ptr %686, align 1, !tbaa !31
  %691 = getelementptr inbounds nuw i8, ptr %680, i64 3
  store i8 %690, ptr %688, align 1, !tbaa !31
  %692 = getelementptr inbounds nuw i8, ptr %682, i64 4
  %693 = load i8, ptr %689, align 1, !tbaa !31
  %694 = getelementptr inbounds nuw i8, ptr %680, i64 4
  store i8 %693, ptr %691, align 1, !tbaa !31
  %695 = getelementptr inbounds nuw i8, ptr %682, i64 5
  %696 = load i8, ptr %692, align 1, !tbaa !31
  %697 = getelementptr inbounds nuw i8, ptr %680, i64 5
  store i8 %696, ptr %694, align 1, !tbaa !31
  %698 = getelementptr inbounds nuw i8, ptr %682, i64 6
  %699 = load i8, ptr %695, align 1, !tbaa !31
  %700 = getelementptr inbounds nuw i8, ptr %680, i64 6
  store i8 %699, ptr %697, align 1, !tbaa !31
  %701 = getelementptr inbounds nuw i8, ptr %682, i64 7
  %702 = load i8, ptr %698, align 1, !tbaa !31
  %703 = getelementptr inbounds nuw i8, ptr %680, i64 7
  store i8 %702, ptr %700, align 1, !tbaa !31
  %704 = getelementptr inbounds nuw i8, ptr %682, i64 8
  %705 = load i8, ptr %701, align 1, !tbaa !31
  %706 = getelementptr inbounds nuw i8, ptr %680, i64 8
  store i8 %705, ptr %703, align 1, !tbaa !31
  %707 = add i32 %681, -8
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %709, label %679, !llvm.loop !58

709:                                              ; preds = %673, %679, %653, %635
  %710 = phi ptr [ %642, %653 ], [ %621, %635 ], [ %674, %673 ], [ %706, %679 ]
  %711 = sub nuw nsw i32 %174, %251
  %712 = zext nneg i32 %242 to i64
  %713 = sub nsw i64 0, %712
  %714 = getelementptr inbounds i8, ptr %710, i64 %713
  br label %715

715:                                              ; preds = %498, %587, %381, %709, %593, %257, %373
  %716 = phi ptr [ %374, %373 ], [ %94, %257 ], [ %588, %587 ], [ %499, %498 ], [ %94, %381 ], [ %710, %709 ], [ %94, %593 ]
  %717 = phi i32 [ %375, %373 ], [ %174, %257 ], [ %589, %587 ], [ %500, %498 ], [ %174, %381 ], [ %711, %709 ], [ %174, %593 ]
  %718 = phi ptr [ %378, %373 ], [ %260, %257 ], [ %592, %587 ], [ %31, %498 ], [ %384, %381 ], [ %714, %709 ], [ %596, %593 ]
  %719 = icmp ugt i32 %717, 2
  br i1 %719, label %720, label %768

720:                                              ; preds = %715
  %721 = add i32 %717, -3
  %722 = udiv i32 %721, 3
  %723 = and i32 %722, 1
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %725, label %736

725:                                              ; preds = %720
  %726 = getelementptr inbounds nuw i8, ptr %718, i64 1
  %727 = load i8, ptr %718, align 1, !tbaa !31
  %728 = getelementptr inbounds nuw i8, ptr %716, i64 1
  store i8 %727, ptr %716, align 1, !tbaa !31
  %729 = getelementptr inbounds nuw i8, ptr %718, i64 2
  %730 = load i8, ptr %726, align 1, !tbaa !31
  %731 = getelementptr inbounds nuw i8, ptr %716, i64 2
  store i8 %730, ptr %728, align 1, !tbaa !31
  %732 = getelementptr inbounds nuw i8, ptr %718, i64 3
  %733 = load i8, ptr %729, align 1, !tbaa !31
  %734 = getelementptr inbounds nuw i8, ptr %716, i64 3
  store i8 %733, ptr %731, align 1, !tbaa !31
  %735 = add i32 %717, -3
  br label %736

736:                                              ; preds = %725, %720
  %737 = phi ptr [ %718, %720 ], [ %732, %725 ]
  %738 = phi i32 [ %717, %720 ], [ %735, %725 ]
  %739 = phi ptr [ %716, %720 ], [ %734, %725 ]
  %740 = phi ptr [ poison, %720 ], [ %732, %725 ]
  %741 = phi ptr [ poison, %720 ], [ %734, %725 ]
  %742 = phi i32 [ poison, %720 ], [ %735, %725 ]
  %743 = icmp ult i32 %721, 3
  br i1 %743, label %768, label %744

744:                                              ; preds = %736, %744
  %745 = phi ptr [ %763, %744 ], [ %737, %736 ]
  %746 = phi i32 [ %766, %744 ], [ %738, %736 ]
  %747 = phi ptr [ %765, %744 ], [ %739, %736 ]
  %748 = getelementptr inbounds nuw i8, ptr %745, i64 1
  %749 = load i8, ptr %745, align 1, !tbaa !31
  %750 = getelementptr inbounds nuw i8, ptr %747, i64 1
  store i8 %749, ptr %747, align 1, !tbaa !31
  %751 = getelementptr inbounds nuw i8, ptr %745, i64 2
  %752 = load i8, ptr %748, align 1, !tbaa !31
  %753 = getelementptr inbounds nuw i8, ptr %747, i64 2
  store i8 %752, ptr %750, align 1, !tbaa !31
  %754 = getelementptr inbounds nuw i8, ptr %745, i64 3
  %755 = load i8, ptr %751, align 1, !tbaa !31
  %756 = getelementptr inbounds nuw i8, ptr %747, i64 3
  store i8 %755, ptr %753, align 1, !tbaa !31
  %757 = getelementptr inbounds nuw i8, ptr %745, i64 4
  %758 = load i8, ptr %754, align 1, !tbaa !31
  %759 = getelementptr inbounds nuw i8, ptr %747, i64 4
  store i8 %758, ptr %756, align 1, !tbaa !31
  %760 = getelementptr inbounds nuw i8, ptr %745, i64 5
  %761 = load i8, ptr %757, align 1, !tbaa !31
  %762 = getelementptr inbounds nuw i8, ptr %747, i64 5
  store i8 %761, ptr %759, align 1, !tbaa !31
  %763 = getelementptr inbounds nuw i8, ptr %745, i64 6
  %764 = load i8, ptr %760, align 1, !tbaa !31
  %765 = getelementptr inbounds nuw i8, ptr %747, i64 6
  store i8 %764, ptr %762, align 1, !tbaa !31
  %766 = add i32 %746, -6
  %767 = icmp ugt i32 %766, 2
  br i1 %767, label %744, label %768, !llvm.loop !59

768:                                              ; preds = %736, %744, %715
  %769 = phi ptr [ %716, %715 ], [ %741, %736 ], [ %765, %744 ]
  %770 = phi i32 [ %717, %715 ], [ %742, %736 ], [ %766, %744 ]
  %771 = phi ptr [ %718, %715 ], [ %740, %736 ], [ %763, %744 ]
  %772 = icmp eq i32 %770, 0
  br i1 %772, label %861, label %773

773:                                              ; preds = %768
  %774 = load i8, ptr %771, align 1, !tbaa !31
  %775 = getelementptr inbounds nuw i8, ptr %769, i64 1
  store i8 %774, ptr %769, align 1, !tbaa !31
  %776 = icmp eq i32 %770, 2
  br i1 %776, label %777, label %861

777:                                              ; preds = %773
  %778 = getelementptr inbounds nuw i8, ptr %771, i64 1
  %779 = load i8, ptr %778, align 1, !tbaa !31
  %780 = getelementptr inbounds nuw i8, ptr %769, i64 2
  store i8 %779, ptr %775, align 1, !tbaa !31
  br label %861

781:                                              ; preds = %234
  %782 = zext nneg i32 %242 to i64
  %783 = sub nsw i64 0, %782
  %784 = getelementptr inbounds i8, ptr %94, i64 %783
  br label %785

785:                                              ; preds = %785, %781
  %786 = phi ptr [ %94, %781 ], [ %797, %785 ]
  %787 = phi i32 [ %174, %781 ], [ %798, %785 ]
  %788 = phi ptr [ %784, %781 ], [ %795, %785 ]
  %789 = getelementptr inbounds nuw i8, ptr %788, i64 1
  %790 = load i8, ptr %788, align 1, !tbaa !31
  %791 = getelementptr inbounds nuw i8, ptr %786, i64 1
  store i8 %790, ptr %786, align 1, !tbaa !31
  %792 = getelementptr inbounds nuw i8, ptr %788, i64 2
  %793 = load i8, ptr %789, align 1, !tbaa !31
  %794 = getelementptr inbounds nuw i8, ptr %786, i64 2
  store i8 %793, ptr %791, align 1, !tbaa !31
  %795 = getelementptr inbounds nuw i8, ptr %788, i64 3
  %796 = load i8, ptr %792, align 1, !tbaa !31
  %797 = getelementptr inbounds nuw i8, ptr %786, i64 3
  store i8 %796, ptr %794, align 1, !tbaa !31
  %798 = add i32 %787, -3
  %799 = icmp ugt i32 %798, 2
  br i1 %799, label %785, label %800, !llvm.loop !60

800:                                              ; preds = %785
  %801 = icmp eq i32 %798, 0
  br i1 %801, label %861, label %802

802:                                              ; preds = %800
  %803 = load i8, ptr %795, align 1, !tbaa !31
  %804 = getelementptr inbounds nuw i8, ptr %786, i64 4
  store i8 %803, ptr %797, align 1, !tbaa !31
  %805 = icmp eq i32 %798, 2
  br i1 %805, label %806, label %861

806:                                              ; preds = %802
  %807 = getelementptr inbounds nuw i8, ptr %788, i64 4
  %808 = load i8, ptr %807, align 1, !tbaa !31
  %809 = getelementptr inbounds nuw i8, ptr %786, i64 5
  store i8 %808, ptr %804, align 1, !tbaa !31
  br label %861

810:                                              ; preds = %191, %817
  %811 = phi i32 [ %834, %817 ], [ %204, %191 ]
  %812 = phi i32 [ %832, %817 ], [ %202, %191 ]
  %813 = phi i64 [ %831, %817 ], [ %201, %191 ]
  %814 = phi ptr [ %826, %817 ], [ %196, %191 ]
  %815 = and i32 %811, 64
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %817, label %869

817:                                              ; preds = %810
  %818 = getelementptr inbounds nuw i8, ptr %814, i64 2
  %819 = load i16, ptr %818, align 2, !tbaa !36
  %820 = zext i16 %819 to i64
  %821 = getelementptr inbounds nuw [4 x i8], ptr %40, i64 %820
  %822 = shl nsw i32 -1, %811
  %823 = xor i32 %822, -1
  %824 = zext nneg i32 %823 to i64
  %825 = and i64 %813, %824
  %826 = getelementptr inbounds nuw [4 x i8], ptr %821, i64 %825
  %827 = getelementptr inbounds nuw i8, ptr %826, i64 1
  %828 = load i8, ptr %827, align 1, !tbaa !32
  %829 = zext i8 %828 to i32
  %830 = zext nneg i8 %828 to i64
  %831 = lshr i64 %813, %830
  %832 = sub i32 %812, %829
  %833 = load i8, ptr %826, align 2, !tbaa !35
  %834 = zext i8 %833 to i32
  %835 = and i32 %834, 16
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %810, label %207

837:                                              ; preds = %134
  %838 = and i32 %139, 64
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %840, label %858

840:                                              ; preds = %837
  %841 = getelementptr inbounds nuw i8, ptr %138, i64 2
  %842 = load i16, ptr %841, align 2, !tbaa !36
  %843 = zext i16 %842 to i64
  %844 = getelementptr inbounds nuw [4 x i8], ptr %38, i64 %843
  %845 = shl nsw i32 -1, %139
  %846 = xor i32 %845, -1
  %847 = zext nneg i32 %846 to i64
  %848 = and i64 %137, %847
  %849 = getelementptr inbounds nuw [4 x i8], ptr %844, i64 %848
  %850 = getelementptr inbounds nuw i8, ptr %849, i64 1
  %851 = load i8, ptr %850, align 1, !tbaa !32
  %852 = zext i8 %851 to i32
  %853 = zext nneg i8 %851 to i64
  %854 = lshr i64 %137, %853
  %855 = sub i32 %136, %852
  %856 = load i8, ptr %849, align 2, !tbaa !35
  %857 = icmp eq i8 %856, 0
  br i1 %857, label %126, label %134

858:                                              ; preds = %837
  %859 = and i32 %139, 32
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %869, label %875

861:                                              ; preds = %126, %800, %806, %802, %768, %777, %773
  %862 = phi i32 [ %129, %126 ], [ %245, %777 ], [ %245, %773 ], [ %245, %768 ], [ %245, %806 ], [ %245, %802 ], [ %245, %800 ]
  %863 = phi i64 [ %128, %126 ], [ %244, %777 ], [ %244, %773 ], [ %244, %768 ], [ %244, %806 ], [ %244, %802 ], [ %244, %800 ]
  %864 = phi ptr [ %133, %126 ], [ %780, %777 ], [ %775, %773 ], [ %769, %768 ], [ %809, %806 ], [ %804, %802 ], [ %797, %800 ]
  %865 = phi ptr [ %115, %126 ], [ %237, %777 ], [ %237, %773 ], [ %237, %768 ], [ %237, %806 ], [ %237, %802 ], [ %237, %800 ]
  %866 = icmp ult ptr %865, %10
  %867 = icmp ult ptr %864, %23
  %868 = select i1 %866, i1 %867, i1 false
  br i1 %868, label %91, label %881, !llvm.loop !61

869:                                              ; preds = %253, %810, %858
  %870 = phi ptr [ @.str.2, %858 ], [ @.str.1, %810 ], [ @.str, %253 ]
  %871 = phi i32 [ %136, %858 ], [ %812, %810 ], [ %245, %253 ]
  %872 = phi i64 [ %137, %858 ], [ %813, %810 ], [ %244, %253 ]
  %873 = phi ptr [ %115, %858 ], [ %194, %810 ], [ %237, %253 ]
  %874 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %870, ptr %874, align 8, !tbaa !62
  br label %875

875:                                              ; preds = %869, %858
  %876 = phi i32 [ 16191, %858 ], [ 16209, %869 ]
  %877 = phi i32 [ %136, %858 ], [ %871, %869 ]
  %878 = phi i64 [ %137, %858 ], [ %872, %869 ]
  %879 = phi ptr [ %115, %858 ], [ %873, %869 ]
  %880 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %876, ptr %880, align 8, !tbaa !63
  br label %881

881:                                              ; preds = %861, %875
  %882 = phi i32 [ %877, %875 ], [ %862, %861 ]
  %883 = phi i64 [ %878, %875 ], [ %863, %861 ]
  %884 = phi ptr [ %94, %875 ], [ %864, %861 ]
  %885 = phi ptr [ %879, %875 ], [ %865, %861 ]
  %886 = lshr i32 %882, 3
  %887 = zext nneg i32 %886 to i64
  %888 = sub nsw i64 0, %887
  %889 = getelementptr inbounds i8, ptr %885, i64 %888
  store ptr %889, ptr %0, align 8, !tbaa !14
  store ptr %884, ptr %11, align 8, !tbaa !16
  %890 = ptrtoint ptr %10 to i64
  %891 = ptrtoint ptr %889 to i64
  %892 = sub i64 %890, %891
  %893 = trunc i64 %892 to i32
  %894 = add i32 %893, 5
  store i32 %894, ptr %6, align 8, !tbaa !15
  %895 = ptrtoint ptr %23 to i64
  %896 = ptrtoint ptr %884 to i64
  %897 = sub i64 %895, %896
  %898 = and i32 %882, 7
  %899 = shl nsw i32 -1, %898
  %900 = xor i32 %899, -1
  %901 = zext nneg i32 %900 to i64
  %902 = and i64 %883, %901
  %903 = trunc i64 %897 to i32
  %904 = add i32 %903, 257
  store i32 %904, ptr %15, align 8, !tbaa !17
  store i64 %902, ptr %33, align 8, !tbaa !25
  store i32 %898, ptr %35, align 8, !tbaa !26
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git 3cab3bc6384b5f58cab7140d00d7a527eade010e)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !13, i64 56}
!9 = !{!"z_stream_s", !10, i64 0, !5, i64 8, !12, i64 16, !10, i64 24, !5, i64 32, !12, i64 40, !10, i64 48, !13, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !5, i64 88, !12, i64 96, !12, i64 104}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 _ZTS14internal_state", !11, i64 0}
!14 = !{!9, !10, i64 0}
!15 = !{!9, !5, i64 8}
!16 = !{!9, !10, i64 24}
!17 = !{!9, !5, i64 32}
!18 = !{!19, !5, i64 60}
!19 = !{!"inflate_state", !20, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !12, i64 32, !12, i64 40, !21, i64 48, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !10, i64 72, !12, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !11, i64 104, !11, i64 112, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !11, i64 144, !6, i64 152, !6, i64 792, !6, i64 1368, !5, i64 7144, !5, i64 7148, !5, i64 7152}
!20 = !{!"p1 _ZTS10z_stream_s", !11, i64 0}
!21 = !{!"p1 _ZTS11gz_header_s", !11, i64 0}
!22 = !{!19, !5, i64 64}
!23 = !{!19, !5, i64 68}
!24 = !{!19, !10, i64 72}
!25 = !{!19, !12, i64 80}
!26 = !{!19, !5, i64 88}
!27 = !{!19, !11, i64 104}
!28 = !{!19, !11, i64 112}
!29 = !{!19, !5, i64 120}
!30 = !{!19, !5, i64 124}
!31 = !{!6, !6, i64 0}
!32 = !{!33, !6, i64 1}
!33 = !{!"", !6, i64 0, !6, i64 1, !34, i64 2}
!34 = !{!"short", !6, i64 0}
!35 = !{!33, !6, i64 0}
!36 = !{!33, !34, i64 2}
!37 = !{!19, !5, i64 7144}
!38 = distinct !{!38, !39, !40, !41}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = !{!"branch_weights", i32 4, i32 28}
!43 = distinct !{!43, !39, !40, !41}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = distinct !{!46, !39, !40}
!47 = distinct !{!47, !39, !40, !41}
!48 = distinct !{!48, !39, !40, !41}
!49 = distinct !{!49, !45}
!50 = distinct !{!50, !39, !40}
!51 = distinct !{!51, !39, !40, !41}
!52 = distinct !{!52, !39, !40, !41}
!53 = distinct !{!53, !45}
!54 = distinct !{!54, !39, !40}
!55 = distinct !{!55, !39, !40, !41}
!56 = distinct !{!56, !39, !40, !41}
!57 = distinct !{!57, !45}
!58 = distinct !{!58, !39, !40}
!59 = distinct !{!59, !39}
!60 = distinct !{!60, !39}
!61 = distinct !{!61, !39}
!62 = !{!9, !10, i64 48}
!63 = !{!19, !5, i64 8}
