; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/signed.inffast.or.ll'
source_filename = "/home/amiralie1380/michigan/pl/zlib/inffast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
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
  %55 = trunc i64 %14 to i32
  %56 = trunc i64 %13 to i32
  %57 = add i32 %16, %56
  %58 = xor i32 %1, -1
  %59 = add i32 %57, %58
  %60 = zext i32 %29 to i64
  %61 = xor i32 %29, -1
  %62 = icmp ult i32 %29, 4
  %63 = icmp ult i32 %29, 32
  %64 = and i64 %60, 28
  %65 = and i64 %60, 4294967264
  %66 = trunc nuw i64 %65 to i32
  %67 = sub i32 %29, %66
  %68 = getelementptr i8, ptr %31, i64 %65
  %69 = icmp eq i64 %65, %60
  %70 = icmp eq i64 %64, 0
  %71 = and i64 %60, 4294967292
  %72 = trunc nuw i64 %71 to i32
  %73 = sub i32 %29, %72
  %74 = getelementptr i8, ptr %31, i64 %71
  %75 = icmp eq i64 %71, %60
  %invariant.op = add i32 %1, %25
  %.neg55 = sub i32 %1, %57
  %.neg56 = add i32 %.neg55, %29
  %.neg62 = add i32 %.neg55, %54
  %76 = add i32 %16, %55
  %77 = add i32 %57, %61
  br label %78

78:                                               ; preds = %810, %2
  %79 = phi i32 [ %36, %2 ], [ %811, %810 ]
  %80 = phi i64 [ %34, %2 ], [ %812, %810 ]
  %81 = phi ptr [ %12, %2 ], [ %813, %810 ]
  %82 = phi ptr [ %5, %2 ], [ %814, %810 ]
  %83 = icmp ult i32 %79, 15
  br i1 %83, label %84, label %99

84:                                               ; preds = %78
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 1
  %86 = load i8, ptr %82, align 1, !tbaa !31
  %87 = zext i8 %86 to i64
  %88 = zext nneg i32 %79 to i64
  %89 = shl nuw nsw i64 %87, %88
  %90 = add i64 %89, %80
  %91 = add nuw nsw i32 %79, 8
  %92 = getelementptr inbounds nuw i8, ptr %82, i64 2
  %93 = load i8, ptr %85, align 1, !tbaa !31
  %94 = zext i8 %93 to i64
  %95 = zext nneg i32 %91 to i64
  %96 = shl nuw nsw i64 %94, %95
  %97 = add i64 %90, %96
  %98 = or disjoint i32 %79, 16
  br label %99

99:                                               ; preds = %84, %78
  %100 = phi i32 [ %98, %84 ], [ %79, %78 ]
  %101 = phi i64 [ %97, %84 ], [ %80, %78 ]
  %102 = phi ptr [ %92, %84 ], [ %82, %78 ]
  %103 = and i64 %101, %49
  %104 = getelementptr inbounds nuw [4 x i8], ptr %38, i64 %103
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 1
  %106 = load i8, ptr %105, align 1, !tbaa !32
  %107 = zext i8 %106 to i32
  %108 = zext nneg i8 %106 to i64
  %109 = lshr i64 %101, %108
  %110 = sub i32 %100, %107
  %111 = load i8, ptr %104, align 2, !tbaa !35
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %.loopexit93, label %.preheader92

.loopexit93:                                      ; preds = %789, %99
  %113 = phi ptr [ %104, %99 ], [ %798, %789 ]
  %114 = phi i64 [ %109, %99 ], [ %803, %789 ]
  %115 = phi i32 [ %110, %99 ], [ %804, %789 ]
  %116 = getelementptr inbounds nuw i8, ptr %113, i64 2
  %117 = load i16, ptr %116, align 2, !tbaa !36
  %118 = trunc i16 %117 to i8
  %119 = getelementptr inbounds nuw i8, ptr %81, i64 1
  store i8 %118, ptr %81, align 1, !tbaa !31
  br label %810

.preheader92:                                     ; preds = %99, %789
  %120 = phi i8 [ %805, %789 ], [ %111, %99 ]
  %121 = phi i32 [ %804, %789 ], [ %110, %99 ]
  %122 = phi i64 [ %803, %789 ], [ %109, %99 ]
  %123 = phi ptr [ %798, %789 ], [ %104, %99 ]
  %124 = zext i8 %120 to i32
  %125 = and i32 %124, 16
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %786, label %127

127:                                              ; preds = %.preheader92
  %128 = getelementptr inbounds nuw i8, ptr %123, i64 2
  %129 = load i16, ptr %128, align 2, !tbaa !36
  %130 = zext i16 %129 to i32
  %131 = and i32 %124, 15
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %155, label %133

133:                                              ; preds = %127
  %134 = icmp ult i32 %121, %131
  br i1 %134, label %135, label %143

135:                                              ; preds = %133
  %136 = getelementptr inbounds nuw i8, ptr %102, i64 1
  %137 = load i8, ptr %102, align 1, !tbaa !31
  %138 = zext i8 %137 to i64
  %139 = zext nneg i32 %121 to i64
  %140 = shl nuw nsw i64 %138, %139
  %141 = add i64 %140, %122
  %142 = add nuw nsw i32 %121, 8
  br label %143

143:                                              ; preds = %135, %133
  %144 = phi i32 [ %142, %135 ], [ %121, %133 ]
  %145 = phi i64 [ %141, %135 ], [ %122, %133 ]
  %146 = phi ptr [ %136, %135 ], [ %102, %133 ]
  %147 = trunc i64 %145 to i32
  %148 = shl nsw i32 -1, %131
  %149 = xor i32 %148, -1
  %150 = and i32 %147, %149
  %151 = add nuw nsw i32 %150, %130
  %152 = zext nneg i32 %131 to i64
  %153 = lshr i64 %145, %152
  %154 = sub i32 %144, %131
  br label %155

155:                                              ; preds = %143, %127
  %156 = phi i32 [ %154, %143 ], [ %121, %127 ]
  %157 = phi i64 [ %153, %143 ], [ %122, %127 ]
  %158 = phi ptr [ %146, %143 ], [ %102, %127 ]
  %159 = phi i32 [ %151, %143 ], [ %130, %127 ]
  %160 = icmp ult i32 %156, 15
  br i1 %160, label %161, label %176

161:                                              ; preds = %155
  %162 = getelementptr inbounds nuw i8, ptr %158, i64 1
  %163 = load i8, ptr %158, align 1, !tbaa !31
  %164 = zext i8 %163 to i64
  %165 = zext nneg i32 %156 to i64
  %166 = shl nuw nsw i64 %164, %165
  %167 = add i64 %166, %157
  %168 = add nuw nsw i32 %156, 8
  %169 = getelementptr inbounds nuw i8, ptr %158, i64 2
  %170 = load i8, ptr %162, align 1, !tbaa !31
  %171 = zext i8 %170 to i64
  %172 = zext nneg i32 %168 to i64
  %173 = shl nuw nsw i64 %171, %172
  %174 = add i64 %167, %173
  %175 = or disjoint i32 %156, 16
  br label %176

176:                                              ; preds = %161, %155
  %177 = phi i32 [ %175, %161 ], [ %156, %155 ]
  %178 = phi i64 [ %174, %161 ], [ %157, %155 ]
  %179 = phi ptr [ %169, %161 ], [ %158, %155 ]
  %180 = and i64 %178, %50
  %181 = getelementptr inbounds nuw [4 x i8], ptr %40, i64 %180
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 1
  %183 = load i8, ptr %182, align 1, !tbaa !32
  %184 = zext i8 %183 to i32
  %185 = zext nneg i8 %183 to i64
  %186 = lshr i64 %178, %185
  %187 = sub i32 %177, %184
  %188 = load i8, ptr %181, align 2, !tbaa !35
  %189 = zext i8 %188 to i32
  %190 = and i32 %189, 16
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %.preheader89, label %.loopexit91

.loopexit91:                                      ; preds = %766, %176
  %192 = phi ptr [ %181, %176 ], [ %775, %766 ]
  %193 = phi i64 [ %186, %176 ], [ %780, %766 ]
  %194 = phi i32 [ %187, %176 ], [ %781, %766 ]
  %195 = phi i32 [ %189, %176 ], [ %783, %766 ]
  %196 = getelementptr inbounds nuw i8, ptr %192, i64 2
  %197 = load i16, ptr %196, align 2, !tbaa !36
  %198 = zext i16 %197 to i32
  %199 = and i32 %195, 15
  %200 = icmp ult i32 %194, %199
  br i1 %200, label %201, label %218

201:                                              ; preds = %.loopexit91
  %202 = getelementptr inbounds nuw i8, ptr %179, i64 1
  %203 = load i8, ptr %179, align 1, !tbaa !31
  %204 = zext i8 %203 to i64
  %205 = zext nneg i32 %194 to i64
  %206 = shl nuw nsw i64 %204, %205
  %207 = add i64 %206, %193
  %208 = add nuw nsw i32 %194, 8
  %209 = icmp samesign ult i32 %208, %199
  br i1 %209, label %210, label %218

210:                                              ; preds = %201
  %211 = getelementptr inbounds nuw i8, ptr %179, i64 2
  %212 = load i8, ptr %202, align 1, !tbaa !31
  %213 = zext i8 %212 to i64
  %214 = zext nneg i32 %208 to i64
  %215 = shl nuw nsw i64 %213, %214
  %216 = add i64 %215, %207
  %217 = add nuw nsw i32 %194, 16
  br label %218

218:                                              ; preds = %210, %201, %.loopexit91
  %219 = phi i32 [ %217, %210 ], [ %208, %201 ], [ %194, %.loopexit91 ]
  %220 = phi i64 [ %216, %210 ], [ %207, %201 ], [ %193, %.loopexit91 ]
  %221 = phi ptr [ %211, %210 ], [ %202, %201 ], [ %179, %.loopexit91 ]
  %222 = trunc i64 %220 to i32
  %223 = shl nsw i32 -1, %199
  %224 = xor i32 %223, -1
  %225 = and i32 %222, %224
  %226 = add nuw nsw i32 %225, %198
  %227 = zext nneg i32 %199 to i64
  %228 = lshr i64 %220, %227
  %229 = sub i32 %219, %199
  %230 = ptrtoint ptr %81 to i64
  %231 = sub i64 %230, %51
  %232 = trunc i64 %231 to i32
  %233 = icmp ugt i32 %226, %232
  br i1 %233, label %234, label %731

234:                                              ; preds = %218
  %235 = sub nuw nsw i32 %226, %232
  %236 = icmp ugt i32 %235, %27
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load i32, ptr %52, align 8, !tbaa !37
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %.loopexit90

240:                                              ; preds = %237, %234
  br i1 %53, label %241, label %357

241:                                              ; preds = %240
  %242 = sub i32 %25, %235
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds nuw i8, ptr %31, i64 %243
  %245 = icmp ult i32 %235, %159
  br i1 %245, label %246, label %669

246:                                              ; preds = %241
  %247 = trunc i64 %230 to i32
  %248 = sub i32 %59, %247
  %249 = add i32 %248, %198
  %250 = add i32 %249, %225
  %251 = zext i32 %250 to i64
  %252 = add nuw nsw i64 %251, 1
  %253 = icmp ult i32 %250, 3
  br i1 %253, label %302, label %254

254:                                              ; preds = %246
  %255 = add i32 %invariant.op, %247
  %256 = add i32 %76, %198
  %257 = add i32 %256, %225
  %258 = sub i32 %255, %257
  %259 = zext i32 %258 to i64
  %260 = add i64 %32, %259
  %261 = sub i64 %230, %260
  %262 = icmp ult i64 %261, 32
  br i1 %262, label %302, label %263

263:                                              ; preds = %254
  %264 = icmp ult i32 %250, 31
  br i1 %264, label %286, label %265

265:                                              ; preds = %263
  %266 = and i64 %252, 8589934560
  br label %267

267:                                              ; preds = %267, %265
  %268 = phi i64 [ 0, %265 ], [ %275, %267 ]
  %269 = getelementptr i8, ptr %81, i64 %268
  %270 = getelementptr i8, ptr %244, i64 %268
  %271 = getelementptr i8, ptr %270, i64 16
  %272 = load <16 x i8>, ptr %270, align 1, !tbaa !31
  %273 = load <16 x i8>, ptr %271, align 1, !tbaa !31
  %274 = getelementptr i8, ptr %269, i64 16
  store <16 x i8> %272, ptr %269, align 1, !tbaa !31
  store <16 x i8> %273, ptr %274, align 1, !tbaa !31
  %275 = add nuw i64 %268, 32
  %276 = icmp eq i64 %275, %266
  br i1 %276, label %277, label %267, !llvm.loop !38

277:                                              ; preds = %267
  %278 = getelementptr i8, ptr %81, i64 %266
  %279 = icmp eq i64 %252, %266
  br i1 %279, label %.loopexit74, label %280

280:                                              ; preds = %277
  %281 = getelementptr i8, ptr %244, i64 %266
  %282 = trunc i64 %266 to i32
  %283 = sub i32 %235, %282
  %284 = and i64 %252, 28
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %302, label %286, !prof !42

286:                                              ; preds = %280, %263
  %287 = phi i64 [ %266, %280 ], [ 0, %263 ]
  %288 = and i64 %252, 8589934588
  br label %289

289:                                              ; preds = %289, %286
  %290 = phi i64 [ %287, %286 ], [ %294, %289 ]
  %291 = getelementptr i8, ptr %81, i64 %290
  %292 = getelementptr i8, ptr %244, i64 %290
  %293 = load <4 x i8>, ptr %292, align 1, !tbaa !31
  store <4 x i8> %293, ptr %291, align 1, !tbaa !31
  %294 = add nuw i64 %290, 4
  %295 = icmp eq i64 %294, %288
  br i1 %295, label %296, label %289, !llvm.loop !43

296:                                              ; preds = %289
  %297 = getelementptr i8, ptr %81, i64 %288
  %298 = trunc i64 %288 to i32
  %299 = sub i32 %235, %298
  %300 = getelementptr i8, ptr %244, i64 %288
  %301 = icmp eq i64 %252, %288
  br i1 %301, label %.loopexit74, label %302

302:                                              ; preds = %296, %280, %254, %246
  %303 = phi ptr [ %81, %246 ], [ %81, %254 ], [ %278, %280 ], [ %297, %296 ]
  %304 = phi i32 [ %235, %246 ], [ %235, %254 ], [ %283, %280 ], [ %299, %296 ]
  %305 = phi ptr [ %244, %246 ], [ %244, %254 ], [ %281, %280 ], [ %300, %296 ]
  %306 = add i32 %304, -1
  %307 = and i32 %304, 7
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %.loopexit76, label %.preheader75

.preheader75:                                     ; preds = %302, %.preheader75
  %309 = phi ptr [ %314, %.preheader75 ], [ %303, %302 ]
  %310 = phi ptr [ %312, %.preheader75 ], [ %305, %302 ]
  %311 = phi i32 [ %315, %.preheader75 ], [ 0, %302 ]
  %312 = getelementptr inbounds nuw i8, ptr %310, i64 1
  %313 = load i8, ptr %310, align 1, !tbaa !31
  %314 = getelementptr inbounds nuw i8, ptr %309, i64 1
  store i8 %313, ptr %309, align 1, !tbaa !31
  %315 = add nuw nsw i32 %311, 1
  %316 = icmp eq i32 %315, %307
  br i1 %316, label %.loopexit76.loopexit, label %.preheader75, !llvm.loop !44

.loopexit76.loopexit:                             ; preds = %.preheader75
  %317 = and i32 %304, -8
  br label %.loopexit76

.loopexit76:                                      ; preds = %.loopexit76.loopexit, %302
  %318 = phi ptr [ poison, %302 ], [ %314, %.loopexit76.loopexit ]
  %319 = phi ptr [ %303, %302 ], [ %314, %.loopexit76.loopexit ]
  %320 = phi i32 [ %304, %302 ], [ %317, %.loopexit76.loopexit ]
  %321 = phi ptr [ %305, %302 ], [ %312, %.loopexit76.loopexit ]
  %322 = icmp ult i32 %306, 7
  br i1 %322, label %.loopexit74, label %.preheader73

.preheader73:                                     ; preds = %.loopexit76, %.preheader73
  %323 = phi ptr [ %349, %.preheader73 ], [ %319, %.loopexit76 ]
  %324 = phi i32 [ %350, %.preheader73 ], [ %320, %.loopexit76 ]
  %325 = phi ptr [ %347, %.preheader73 ], [ %321, %.loopexit76 ]
  %326 = getelementptr inbounds nuw i8, ptr %325, i64 1
  %327 = load i8, ptr %325, align 1, !tbaa !31
  %328 = getelementptr inbounds nuw i8, ptr %323, i64 1
  store i8 %327, ptr %323, align 1, !tbaa !31
  %329 = getelementptr inbounds nuw i8, ptr %325, i64 2
  %330 = load i8, ptr %326, align 1, !tbaa !31
  %331 = getelementptr inbounds nuw i8, ptr %323, i64 2
  store i8 %330, ptr %328, align 1, !tbaa !31
  %332 = getelementptr inbounds nuw i8, ptr %325, i64 3
  %333 = load i8, ptr %329, align 1, !tbaa !31
  %334 = getelementptr inbounds nuw i8, ptr %323, i64 3
  store i8 %333, ptr %331, align 1, !tbaa !31
  %335 = getelementptr inbounds nuw i8, ptr %325, i64 4
  %336 = load i8, ptr %332, align 1, !tbaa !31
  %337 = getelementptr inbounds nuw i8, ptr %323, i64 4
  store i8 %336, ptr %334, align 1, !tbaa !31
  %338 = getelementptr inbounds nuw i8, ptr %325, i64 5
  %339 = load i8, ptr %335, align 1, !tbaa !31
  %340 = getelementptr inbounds nuw i8, ptr %323, i64 5
  store i8 %339, ptr %337, align 1, !tbaa !31
  %341 = getelementptr inbounds nuw i8, ptr %325, i64 6
  %342 = load i8, ptr %338, align 1, !tbaa !31
  %343 = getelementptr inbounds nuw i8, ptr %323, i64 6
  store i8 %342, ptr %340, align 1, !tbaa !31
  %344 = getelementptr inbounds nuw i8, ptr %325, i64 7
  %345 = load i8, ptr %341, align 1, !tbaa !31
  %346 = getelementptr inbounds nuw i8, ptr %323, i64 7
  store i8 %345, ptr %343, align 1, !tbaa !31
  %347 = getelementptr inbounds nuw i8, ptr %325, i64 8
  %348 = load i8, ptr %344, align 1, !tbaa !31
  %349 = getelementptr inbounds nuw i8, ptr %323, i64 8
  store i8 %348, ptr %346, align 1, !tbaa !31
  %350 = add i32 %324, -8
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %.loopexit74, label %.preheader73, !llvm.loop !46

.loopexit74:                                      ; preds = %.preheader73, %.loopexit76, %296, %277
  %352 = phi ptr [ %297, %296 ], [ %278, %277 ], [ %318, %.loopexit76 ], [ %349, %.preheader73 ]
  %353 = sub nuw nsw i32 %159, %235
  %354 = zext nneg i32 %226 to i64
  %355 = sub nsw i64 0, %354
  %356 = getelementptr inbounds i8, ptr %352, i64 %355
  br label %669

357:                                              ; preds = %240
  %358 = icmp ult i32 %29, %235
  br i1 %358, label %359, label %555

359:                                              ; preds = %357
  %360 = sub i32 %54, %235
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds nuw i8, ptr %31, i64 %361
  %363 = sub nuw nsw i32 %235, %29
  %364 = icmp ult i32 %363, %159
  br i1 %364, label %365, label %669

365:                                              ; preds = %359
  %366 = trunc i64 %230 to i32
  %367 = add i32 %1, %366
  %368 = sub i32 %77, %367
  %369 = add i32 %368, %198
  %370 = add i32 %369, %225
  %371 = zext i32 %370 to i64
  %372 = add nuw nsw i64 %371, 1
  %373 = icmp ult i32 %370, 3
  br i1 %373, label %420, label %374

374:                                              ; preds = %365
  %375 = add i32 %.neg62, %366
  %376 = sub i32 %375, %226
  %377 = zext i32 %376 to i64
  %378 = add i64 %32, %377
  %379 = sub i64 %230, %378
  %380 = icmp ult i64 %379, 32
  br i1 %380, label %420, label %381

381:                                              ; preds = %374
  %382 = icmp ult i32 %370, 31
  br i1 %382, label %404, label %383

383:                                              ; preds = %381
  %384 = and i64 %372, 8589934560
  br label %385

385:                                              ; preds = %385, %383
  %386 = phi i64 [ 0, %383 ], [ %393, %385 ]
  %387 = getelementptr i8, ptr %81, i64 %386
  %388 = getelementptr i8, ptr %362, i64 %386
  %389 = getelementptr i8, ptr %388, i64 16
  %390 = load <16 x i8>, ptr %388, align 1, !tbaa !31
  %391 = load <16 x i8>, ptr %389, align 1, !tbaa !31
  %392 = getelementptr i8, ptr %387, i64 16
  store <16 x i8> %390, ptr %387, align 1, !tbaa !31
  store <16 x i8> %391, ptr %392, align 1, !tbaa !31
  %393 = add nuw i64 %386, 32
  %394 = icmp eq i64 %393, %384
  br i1 %394, label %395, label %385, !llvm.loop !47

395:                                              ; preds = %385
  %396 = getelementptr i8, ptr %81, i64 %384
  %397 = icmp eq i64 %372, %384
  br i1 %397, label %.loopexit82, label %398

398:                                              ; preds = %395
  %399 = getelementptr i8, ptr %362, i64 %384
  %400 = trunc i64 %384 to i32
  %401 = sub i32 %363, %400
  %402 = and i64 %372, 28
  %403 = icmp eq i64 %402, 0
  br i1 %403, label %420, label %404, !prof !42

404:                                              ; preds = %398, %381
  %405 = phi i64 [ %384, %398 ], [ 0, %381 ]
  %406 = and i64 %372, 8589934588
  br label %407

407:                                              ; preds = %407, %404
  %408 = phi i64 [ %405, %404 ], [ %412, %407 ]
  %409 = getelementptr i8, ptr %81, i64 %408
  %410 = getelementptr i8, ptr %362, i64 %408
  %411 = load <4 x i8>, ptr %410, align 1, !tbaa !31
  store <4 x i8> %411, ptr %409, align 1, !tbaa !31
  %412 = add nuw i64 %408, 4
  %413 = icmp eq i64 %412, %406
  br i1 %413, label %414, label %407, !llvm.loop !48

414:                                              ; preds = %407
  %415 = getelementptr i8, ptr %81, i64 %406
  %416 = trunc i64 %406 to i32
  %417 = sub i32 %363, %416
  %418 = getelementptr i8, ptr %362, i64 %406
  %419 = icmp eq i64 %372, %406
  br i1 %419, label %.loopexit82, label %420

420:                                              ; preds = %414, %398, %374, %365
  %421 = phi ptr [ %81, %365 ], [ %81, %374 ], [ %396, %398 ], [ %415, %414 ]
  %422 = phi i32 [ %363, %365 ], [ %363, %374 ], [ %401, %398 ], [ %417, %414 ]
  %423 = phi ptr [ %362, %365 ], [ %362, %374 ], [ %399, %398 ], [ %418, %414 ]
  %424 = add i32 %422, -1
  %425 = and i32 %422, 7
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %.loopexit84, label %.preheader83

.preheader83:                                     ; preds = %420, %.preheader83
  %427 = phi ptr [ %432, %.preheader83 ], [ %421, %420 ]
  %428 = phi ptr [ %430, %.preheader83 ], [ %423, %420 ]
  %429 = phi i32 [ %433, %.preheader83 ], [ 0, %420 ]
  %430 = getelementptr inbounds nuw i8, ptr %428, i64 1
  %431 = load i8, ptr %428, align 1, !tbaa !31
  %432 = getelementptr inbounds nuw i8, ptr %427, i64 1
  store i8 %431, ptr %427, align 1, !tbaa !31
  %433 = add nuw nsw i32 %429, 1
  %434 = icmp eq i32 %433, %425
  br i1 %434, label %.loopexit84.loopexit, label %.preheader83, !llvm.loop !49

.loopexit84.loopexit:                             ; preds = %.preheader83
  %435 = and i32 %422, -8
  br label %.loopexit84

.loopexit84:                                      ; preds = %.loopexit84.loopexit, %420
  %436 = phi ptr [ poison, %420 ], [ %432, %.loopexit84.loopexit ]
  %437 = phi ptr [ %421, %420 ], [ %432, %.loopexit84.loopexit ]
  %438 = phi i32 [ %422, %420 ], [ %435, %.loopexit84.loopexit ]
  %439 = phi ptr [ %423, %420 ], [ %430, %.loopexit84.loopexit ]
  %440 = icmp ult i32 %424, 7
  br i1 %440, label %.loopexit82, label %.preheader81

.preheader81:                                     ; preds = %.loopexit84, %.preheader81
  %441 = phi ptr [ %467, %.preheader81 ], [ %437, %.loopexit84 ]
  %442 = phi i32 [ %468, %.preheader81 ], [ %438, %.loopexit84 ]
  %443 = phi ptr [ %465, %.preheader81 ], [ %439, %.loopexit84 ]
  %444 = getelementptr inbounds nuw i8, ptr %443, i64 1
  %445 = load i8, ptr %443, align 1, !tbaa !31
  %446 = getelementptr inbounds nuw i8, ptr %441, i64 1
  store i8 %445, ptr %441, align 1, !tbaa !31
  %447 = getelementptr inbounds nuw i8, ptr %443, i64 2
  %448 = load i8, ptr %444, align 1, !tbaa !31
  %449 = getelementptr inbounds nuw i8, ptr %441, i64 2
  store i8 %448, ptr %446, align 1, !tbaa !31
  %450 = getelementptr inbounds nuw i8, ptr %443, i64 3
  %451 = load i8, ptr %447, align 1, !tbaa !31
  %452 = getelementptr inbounds nuw i8, ptr %441, i64 3
  store i8 %451, ptr %449, align 1, !tbaa !31
  %453 = getelementptr inbounds nuw i8, ptr %443, i64 4
  %454 = load i8, ptr %450, align 1, !tbaa !31
  %455 = getelementptr inbounds nuw i8, ptr %441, i64 4
  store i8 %454, ptr %452, align 1, !tbaa !31
  %456 = getelementptr inbounds nuw i8, ptr %443, i64 5
  %457 = load i8, ptr %453, align 1, !tbaa !31
  %458 = getelementptr inbounds nuw i8, ptr %441, i64 5
  store i8 %457, ptr %455, align 1, !tbaa !31
  %459 = getelementptr inbounds nuw i8, ptr %443, i64 6
  %460 = load i8, ptr %456, align 1, !tbaa !31
  %461 = getelementptr inbounds nuw i8, ptr %441, i64 6
  store i8 %460, ptr %458, align 1, !tbaa !31
  %462 = getelementptr inbounds nuw i8, ptr %443, i64 7
  %463 = load i8, ptr %459, align 1, !tbaa !31
  %464 = getelementptr inbounds nuw i8, ptr %441, i64 7
  store i8 %463, ptr %461, align 1, !tbaa !31
  %465 = getelementptr inbounds nuw i8, ptr %443, i64 8
  %466 = load i8, ptr %462, align 1, !tbaa !31
  %467 = getelementptr inbounds nuw i8, ptr %441, i64 8
  store i8 %466, ptr %464, align 1, !tbaa !31
  %468 = add i32 %442, -8
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %.loopexit82, label %.preheader81, !llvm.loop !50

.loopexit82:                                      ; preds = %.preheader81, %.loopexit84, %414, %395
  %470 = phi ptr [ %415, %414 ], [ %396, %395 ], [ %436, %.loopexit84 ], [ %467, %.preheader81 ]
  %471 = sub nuw nsw i32 %159, %363
  %472 = icmp ult i32 %29, %471
  br i1 %472, label %473, label %669

473:                                              ; preds = %.loopexit82
  %474 = ptrtoaddr ptr %470 to i64
  %475 = sub i64 %474, %32
  %476 = icmp ult i64 %475, 32
  %477 = select i1 %62, i1 true, i1 %476
  br i1 %477, label %500, label %478

478:                                              ; preds = %473
  br i1 %63, label %.preheader403, label %.preheader342

.preheader342:                                    ; preds = %478, %.preheader342
  %479 = phi i64 [ %486, %.preheader342 ], [ 0, %478 ]
  %480 = getelementptr i8, ptr %470, i64 %479
  %481 = getelementptr i8, ptr %31, i64 %479
  %482 = getelementptr i8, ptr %481, i64 16
  %483 = load <16 x i8>, ptr %481, align 1, !tbaa !31
  %484 = load <16 x i8>, ptr %482, align 1, !tbaa !31
  %485 = getelementptr i8, ptr %480, i64 16
  store <16 x i8> %483, ptr %480, align 1, !tbaa !31
  store <16 x i8> %484, ptr %485, align 1, !tbaa !31
  %486 = add nuw nsw i64 %479, 32
  %487 = icmp eq i64 %486, %65
  br i1 %487, label %488, label %.preheader342, !llvm.loop !51

488:                                              ; preds = %.preheader342
  %489 = getelementptr i8, ptr %470, i64 %65
  br i1 %69, label %.loopexit78, label %490

490:                                              ; preds = %488
  br i1 %70, label %500, label %.preheader403, !prof !42

.preheader403:                                    ; preds = %490, %478
  %.ph = phi i64 [ 0, %478 ], [ %65, %490 ]
  br label %491

491:                                              ; preds = %.preheader403, %491
  %492 = phi i64 [ %496, %491 ], [ %.ph, %.preheader403 ]
  %493 = getelementptr i8, ptr %470, i64 %492
  %494 = getelementptr i8, ptr %31, i64 %492
  %495 = load <4 x i8>, ptr %494, align 1, !tbaa !31
  store <4 x i8> %495, ptr %493, align 1, !tbaa !31
  %496 = add nuw i64 %492, 4
  %497 = icmp eq i64 %496, %71
  br i1 %497, label %498, label %491, !llvm.loop !52

498:                                              ; preds = %491
  %499 = getelementptr i8, ptr %470, i64 %71
  br i1 %75, label %.loopexit78, label %500

500:                                              ; preds = %498, %490, %473
  %501 = phi ptr [ %470, %473 ], [ %489, %490 ], [ %499, %498 ]
  %502 = phi i32 [ %29, %473 ], [ %67, %490 ], [ %73, %498 ]
  %503 = phi ptr [ %31, %473 ], [ %68, %490 ], [ %74, %498 ]
  %504 = add i32 %502, -1
  %505 = and i32 %502, 7
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %.loopexit80, label %.preheader79

.preheader79:                                     ; preds = %500, %.preheader79
  %507 = phi ptr [ %512, %.preheader79 ], [ %501, %500 ]
  %508 = phi ptr [ %510, %.preheader79 ], [ %503, %500 ]
  %509 = phi i32 [ %513, %.preheader79 ], [ 0, %500 ]
  %510 = getelementptr inbounds nuw i8, ptr %508, i64 1
  %511 = load i8, ptr %508, align 1, !tbaa !31
  %512 = getelementptr inbounds nuw i8, ptr %507, i64 1
  store i8 %511, ptr %507, align 1, !tbaa !31
  %513 = add nuw nsw i32 %509, 1
  %514 = icmp eq i32 %513, %505
  br i1 %514, label %.loopexit80.loopexit, label %.preheader79, !llvm.loop !53

.loopexit80.loopexit:                             ; preds = %.preheader79
  %515 = and i32 %502, -8
  br label %.loopexit80

.loopexit80:                                      ; preds = %.loopexit80.loopexit, %500
  %516 = phi ptr [ poison, %500 ], [ %512, %.loopexit80.loopexit ]
  %517 = phi ptr [ %501, %500 ], [ %512, %.loopexit80.loopexit ]
  %518 = phi i32 [ %502, %500 ], [ %515, %.loopexit80.loopexit ]
  %519 = phi ptr [ %503, %500 ], [ %510, %.loopexit80.loopexit ]
  %520 = icmp ult i32 %504, 7
  br i1 %520, label %.loopexit78, label %.preheader77

.preheader77:                                     ; preds = %.loopexit80, %.preheader77
  %521 = phi ptr [ %547, %.preheader77 ], [ %517, %.loopexit80 ]
  %522 = phi i32 [ %548, %.preheader77 ], [ %518, %.loopexit80 ]
  %523 = phi ptr [ %545, %.preheader77 ], [ %519, %.loopexit80 ]
  %524 = getelementptr inbounds nuw i8, ptr %523, i64 1
  %525 = load i8, ptr %523, align 1, !tbaa !31
  %526 = getelementptr inbounds nuw i8, ptr %521, i64 1
  store i8 %525, ptr %521, align 1, !tbaa !31
  %527 = getelementptr inbounds nuw i8, ptr %523, i64 2
  %528 = load i8, ptr %524, align 1, !tbaa !31
  %529 = getelementptr inbounds nuw i8, ptr %521, i64 2
  store i8 %528, ptr %526, align 1, !tbaa !31
  %530 = getelementptr inbounds nuw i8, ptr %523, i64 3
  %531 = load i8, ptr %527, align 1, !tbaa !31
  %532 = getelementptr inbounds nuw i8, ptr %521, i64 3
  store i8 %531, ptr %529, align 1, !tbaa !31
  %533 = getelementptr inbounds nuw i8, ptr %523, i64 4
  %534 = load i8, ptr %530, align 1, !tbaa !31
  %535 = getelementptr inbounds nuw i8, ptr %521, i64 4
  store i8 %534, ptr %532, align 1, !tbaa !31
  %536 = getelementptr inbounds nuw i8, ptr %523, i64 5
  %537 = load i8, ptr %533, align 1, !tbaa !31
  %538 = getelementptr inbounds nuw i8, ptr %521, i64 5
  store i8 %537, ptr %535, align 1, !tbaa !31
  %539 = getelementptr inbounds nuw i8, ptr %523, i64 6
  %540 = load i8, ptr %536, align 1, !tbaa !31
  %541 = getelementptr inbounds nuw i8, ptr %521, i64 6
  store i8 %540, ptr %538, align 1, !tbaa !31
  %542 = getelementptr inbounds nuw i8, ptr %523, i64 7
  %543 = load i8, ptr %539, align 1, !tbaa !31
  %544 = getelementptr inbounds nuw i8, ptr %521, i64 7
  store i8 %543, ptr %541, align 1, !tbaa !31
  %545 = getelementptr inbounds nuw i8, ptr %523, i64 8
  %546 = load i8, ptr %542, align 1, !tbaa !31
  %547 = getelementptr inbounds nuw i8, ptr %521, i64 8
  store i8 %546, ptr %544, align 1, !tbaa !31
  %548 = add i32 %522, -8
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %.loopexit78, label %.preheader77, !llvm.loop !54

.loopexit78:                                      ; preds = %.preheader77, %.loopexit80, %498, %488
  %550 = phi ptr [ %499, %498 ], [ %489, %488 ], [ %516, %.loopexit80 ], [ %547, %.preheader77 ]
  %551 = sub nuw nsw i32 %471, %29
  %552 = zext nneg i32 %226 to i64
  %553 = sub nsw i64 0, %552
  %554 = getelementptr inbounds i8, ptr %550, i64 %553
  br label %669

555:                                              ; preds = %357
  %556 = sub nuw i32 %29, %235
  %557 = zext i32 %556 to i64
  %558 = getelementptr inbounds nuw i8, ptr %31, i64 %557
  %559 = icmp ult i32 %235, %159
  br i1 %559, label %560, label %669

560:                                              ; preds = %555
  %561 = trunc i64 %230 to i32
  %562 = sub i32 %59, %561
  %563 = add i32 %562, %198
  %564 = add i32 %563, %225
  %565 = zext i32 %564 to i64
  %566 = add nuw nsw i64 %565, 1
  %567 = icmp ult i32 %564, 3
  br i1 %567, label %614, label %568

568:                                              ; preds = %560
  %569 = add i32 %.neg56, %561
  %570 = sub i32 %569, %226
  %571 = zext i32 %570 to i64
  %572 = add i64 %32, %571
  %573 = sub i64 %230, %572
  %574 = icmp ult i64 %573, 32
  br i1 %574, label %614, label %575

575:                                              ; preds = %568
  %576 = icmp ult i32 %564, 31
  br i1 %576, label %598, label %577

577:                                              ; preds = %575
  %578 = and i64 %566, 8589934560
  br label %579

579:                                              ; preds = %579, %577
  %580 = phi i64 [ 0, %577 ], [ %587, %579 ]
  %581 = getelementptr i8, ptr %81, i64 %580
  %582 = getelementptr i8, ptr %558, i64 %580
  %583 = getelementptr i8, ptr %582, i64 16
  %584 = load <16 x i8>, ptr %582, align 1, !tbaa !31
  %585 = load <16 x i8>, ptr %583, align 1, !tbaa !31
  %586 = getelementptr i8, ptr %581, i64 16
  store <16 x i8> %584, ptr %581, align 1, !tbaa !31
  store <16 x i8> %585, ptr %586, align 1, !tbaa !31
  %587 = add nuw i64 %580, 32
  %588 = icmp eq i64 %587, %578
  br i1 %588, label %589, label %579, !llvm.loop !55

589:                                              ; preds = %579
  %590 = getelementptr i8, ptr %81, i64 %578
  %591 = icmp eq i64 %566, %578
  br i1 %591, label %.loopexit86, label %592

592:                                              ; preds = %589
  %593 = getelementptr i8, ptr %558, i64 %578
  %594 = trunc i64 %578 to i32
  %595 = sub i32 %235, %594
  %596 = and i64 %566, 28
  %597 = icmp eq i64 %596, 0
  br i1 %597, label %614, label %598, !prof !42

598:                                              ; preds = %592, %575
  %599 = phi i64 [ %578, %592 ], [ 0, %575 ]
  %600 = and i64 %566, 8589934588
  br label %601

601:                                              ; preds = %601, %598
  %602 = phi i64 [ %599, %598 ], [ %606, %601 ]
  %603 = getelementptr i8, ptr %81, i64 %602
  %604 = getelementptr i8, ptr %558, i64 %602
  %605 = load <4 x i8>, ptr %604, align 1, !tbaa !31
  store <4 x i8> %605, ptr %603, align 1, !tbaa !31
  %606 = add nuw i64 %602, 4
  %607 = icmp eq i64 %606, %600
  br i1 %607, label %608, label %601, !llvm.loop !56

608:                                              ; preds = %601
  %609 = getelementptr i8, ptr %81, i64 %600
  %610 = trunc i64 %600 to i32
  %611 = sub i32 %235, %610
  %612 = getelementptr i8, ptr %558, i64 %600
  %613 = icmp eq i64 %566, %600
  br i1 %613, label %.loopexit86, label %614

614:                                              ; preds = %608, %592, %568, %560
  %615 = phi ptr [ %81, %560 ], [ %81, %568 ], [ %590, %592 ], [ %609, %608 ]
  %616 = phi i32 [ %235, %560 ], [ %235, %568 ], [ %595, %592 ], [ %611, %608 ]
  %617 = phi ptr [ %558, %560 ], [ %558, %568 ], [ %593, %592 ], [ %612, %608 ]
  %618 = add i32 %616, -1
  %619 = and i32 %616, 7
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %.loopexit88, label %.preheader87

.preheader87:                                     ; preds = %614, %.preheader87
  %621 = phi ptr [ %626, %.preheader87 ], [ %615, %614 ]
  %622 = phi ptr [ %624, %.preheader87 ], [ %617, %614 ]
  %623 = phi i32 [ %627, %.preheader87 ], [ 0, %614 ]
  %624 = getelementptr inbounds nuw i8, ptr %622, i64 1
  %625 = load i8, ptr %622, align 1, !tbaa !31
  %626 = getelementptr inbounds nuw i8, ptr %621, i64 1
  store i8 %625, ptr %621, align 1, !tbaa !31
  %627 = add nuw nsw i32 %623, 1
  %628 = icmp eq i32 %627, %619
  br i1 %628, label %.loopexit88.loopexit, label %.preheader87, !llvm.loop !57

.loopexit88.loopexit:                             ; preds = %.preheader87
  %629 = and i32 %616, -8
  br label %.loopexit88

.loopexit88:                                      ; preds = %.loopexit88.loopexit, %614
  %630 = phi ptr [ poison, %614 ], [ %626, %.loopexit88.loopexit ]
  %631 = phi ptr [ %615, %614 ], [ %626, %.loopexit88.loopexit ]
  %632 = phi i32 [ %616, %614 ], [ %629, %.loopexit88.loopexit ]
  %633 = phi ptr [ %617, %614 ], [ %624, %.loopexit88.loopexit ]
  %634 = icmp ult i32 %618, 7
  br i1 %634, label %.loopexit86, label %.preheader85

.preheader85:                                     ; preds = %.loopexit88, %.preheader85
  %635 = phi ptr [ %661, %.preheader85 ], [ %631, %.loopexit88 ]
  %636 = phi i32 [ %662, %.preheader85 ], [ %632, %.loopexit88 ]
  %637 = phi ptr [ %659, %.preheader85 ], [ %633, %.loopexit88 ]
  %638 = getelementptr inbounds nuw i8, ptr %637, i64 1
  %639 = load i8, ptr %637, align 1, !tbaa !31
  %640 = getelementptr inbounds nuw i8, ptr %635, i64 1
  store i8 %639, ptr %635, align 1, !tbaa !31
  %641 = getelementptr inbounds nuw i8, ptr %637, i64 2
  %642 = load i8, ptr %638, align 1, !tbaa !31
  %643 = getelementptr inbounds nuw i8, ptr %635, i64 2
  store i8 %642, ptr %640, align 1, !tbaa !31
  %644 = getelementptr inbounds nuw i8, ptr %637, i64 3
  %645 = load i8, ptr %641, align 1, !tbaa !31
  %646 = getelementptr inbounds nuw i8, ptr %635, i64 3
  store i8 %645, ptr %643, align 1, !tbaa !31
  %647 = getelementptr inbounds nuw i8, ptr %637, i64 4
  %648 = load i8, ptr %644, align 1, !tbaa !31
  %649 = getelementptr inbounds nuw i8, ptr %635, i64 4
  store i8 %648, ptr %646, align 1, !tbaa !31
  %650 = getelementptr inbounds nuw i8, ptr %637, i64 5
  %651 = load i8, ptr %647, align 1, !tbaa !31
  %652 = getelementptr inbounds nuw i8, ptr %635, i64 5
  store i8 %651, ptr %649, align 1, !tbaa !31
  %653 = getelementptr inbounds nuw i8, ptr %637, i64 6
  %654 = load i8, ptr %650, align 1, !tbaa !31
  %655 = getelementptr inbounds nuw i8, ptr %635, i64 6
  store i8 %654, ptr %652, align 1, !tbaa !31
  %656 = getelementptr inbounds nuw i8, ptr %637, i64 7
  %657 = load i8, ptr %653, align 1, !tbaa !31
  %658 = getelementptr inbounds nuw i8, ptr %635, i64 7
  store i8 %657, ptr %655, align 1, !tbaa !31
  %659 = getelementptr inbounds nuw i8, ptr %637, i64 8
  %660 = load i8, ptr %656, align 1, !tbaa !31
  %661 = getelementptr inbounds nuw i8, ptr %635, i64 8
  store i8 %660, ptr %658, align 1, !tbaa !31
  %662 = add i32 %636, -8
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %.loopexit86, label %.preheader85, !llvm.loop !58

.loopexit86:                                      ; preds = %.preheader85, %.loopexit88, %608, %589
  %664 = phi ptr [ %609, %608 ], [ %590, %589 ], [ %630, %.loopexit88 ], [ %661, %.preheader85 ]
  %665 = sub nuw nsw i32 %159, %235
  %666 = zext nneg i32 %226 to i64
  %667 = sub nsw i64 0, %666
  %668 = getelementptr inbounds i8, ptr %664, i64 %667
  br label %669

669:                                              ; preds = %.loopexit86, %555, %.loopexit78, %.loopexit82, %359, %.loopexit74, %241
  %670 = phi ptr [ %352, %.loopexit74 ], [ %81, %241 ], [ %550, %.loopexit78 ], [ %470, %.loopexit82 ], [ %81, %359 ], [ %664, %.loopexit86 ], [ %81, %555 ]
  %671 = phi i32 [ %353, %.loopexit74 ], [ %159, %241 ], [ %551, %.loopexit78 ], [ %471, %.loopexit82 ], [ %159, %359 ], [ %665, %.loopexit86 ], [ %159, %555 ]
  %672 = phi ptr [ %356, %.loopexit74 ], [ %244, %241 ], [ %554, %.loopexit78 ], [ %31, %.loopexit82 ], [ %362, %359 ], [ %668, %.loopexit86 ], [ %558, %555 ]
  %673 = icmp ugt i32 %671, 2
  br i1 %673, label %674, label %.loopexit

674:                                              ; preds = %669
  %675 = add nsw i32 %671, -3
  %676 = udiv i32 %675, 3
  %677 = and i32 %676, 1
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %679, label %689

679:                                              ; preds = %674
  %680 = getelementptr inbounds nuw i8, ptr %672, i64 1
  %681 = load i8, ptr %672, align 1, !tbaa !31
  %682 = getelementptr inbounds nuw i8, ptr %670, i64 1
  store i8 %681, ptr %670, align 1, !tbaa !31
  %683 = getelementptr inbounds nuw i8, ptr %672, i64 2
  %684 = load i8, ptr %680, align 1, !tbaa !31
  %685 = getelementptr inbounds nuw i8, ptr %670, i64 2
  store i8 %684, ptr %682, align 1, !tbaa !31
  %686 = getelementptr inbounds nuw i8, ptr %672, i64 3
  %687 = load i8, ptr %683, align 1, !tbaa !31
  %688 = getelementptr inbounds nuw i8, ptr %670, i64 3
  store i8 %687, ptr %685, align 1, !tbaa !31
  br label %689

689:                                              ; preds = %679, %674
  %690 = phi ptr [ %672, %674 ], [ %686, %679 ]
  %691 = phi i32 [ %671, %674 ], [ %675, %679 ]
  %692 = phi ptr [ %670, %674 ], [ %688, %679 ]
  %693 = phi ptr [ poison, %674 ], [ %686, %679 ]
  %694 = phi ptr [ poison, %674 ], [ %688, %679 ]
  %695 = icmp ult i32 %675, 3
  br i1 %695, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %689, %.preheader
  %696 = phi ptr [ %714, %.preheader ], [ %690, %689 ]
  %697 = phi i32 [ %717, %.preheader ], [ %691, %689 ]
  %698 = phi ptr [ %716, %.preheader ], [ %692, %689 ]
  %699 = getelementptr inbounds nuw i8, ptr %696, i64 1
  %700 = load i8, ptr %696, align 1, !tbaa !31
  %701 = getelementptr inbounds nuw i8, ptr %698, i64 1
  store i8 %700, ptr %698, align 1, !tbaa !31
  %702 = getelementptr inbounds nuw i8, ptr %696, i64 2
  %703 = load i8, ptr %699, align 1, !tbaa !31
  %704 = getelementptr inbounds nuw i8, ptr %698, i64 2
  store i8 %703, ptr %701, align 1, !tbaa !31
  %705 = getelementptr inbounds nuw i8, ptr %696, i64 3
  %706 = load i8, ptr %702, align 1, !tbaa !31
  %707 = getelementptr inbounds nuw i8, ptr %698, i64 3
  store i8 %706, ptr %704, align 1, !tbaa !31
  %708 = getelementptr inbounds nuw i8, ptr %696, i64 4
  %709 = load i8, ptr %705, align 1, !tbaa !31
  %710 = getelementptr inbounds nuw i8, ptr %698, i64 4
  store i8 %709, ptr %707, align 1, !tbaa !31
  %711 = getelementptr inbounds nuw i8, ptr %696, i64 5
  %712 = load i8, ptr %708, align 1, !tbaa !31
  %713 = getelementptr inbounds nuw i8, ptr %698, i64 5
  store i8 %712, ptr %710, align 1, !tbaa !31
  %714 = getelementptr inbounds nuw i8, ptr %696, i64 6
  %715 = load i8, ptr %711, align 1, !tbaa !31
  %716 = getelementptr inbounds nuw i8, ptr %698, i64 6
  store i8 %715, ptr %713, align 1, !tbaa !31
  %717 = add i32 %697, -6
  %718 = icmp ugt i32 %717, 2
  br i1 %718, label %.preheader, label %.loopexit, !llvm.loop !59

.loopexit:                                        ; preds = %.preheader, %689, %669
  %719 = phi ptr [ %670, %669 ], [ %694, %689 ], [ %716, %.preheader ]
  %720 = phi i32 [ %671, %669 ], [ %675, %689 ], [ %717, %.preheader ]
  %721 = phi ptr [ %672, %669 ], [ %693, %689 ], [ %714, %.preheader ]
  %722 = icmp eq i32 %720, 0
  br i1 %722, label %810, label %723

723:                                              ; preds = %.loopexit
  %724 = load i8, ptr %721, align 1, !tbaa !31
  %725 = getelementptr inbounds nuw i8, ptr %719, i64 1
  store i8 %724, ptr %719, align 1, !tbaa !31
  %726 = icmp eq i32 %720, 2
  br i1 %726, label %727, label %810

727:                                              ; preds = %723
  %728 = getelementptr inbounds nuw i8, ptr %721, i64 1
  %729 = load i8, ptr %728, align 1, !tbaa !31
  %730 = getelementptr inbounds nuw i8, ptr %719, i64 2
  store i8 %729, ptr %725, align 1, !tbaa !31
  br label %810

731:                                              ; preds = %218
  %732 = zext nneg i32 %226 to i64
  %733 = sub nsw i64 0, %732
  %734 = getelementptr inbounds i8, ptr %81, i64 %733
  br label %735

735:                                              ; preds = %735, %731
  %736 = phi ptr [ %81, %731 ], [ %747, %735 ]
  %737 = phi i32 [ %159, %731 ], [ %748, %735 ]
  %738 = phi ptr [ %734, %731 ], [ %745, %735 ]
  %739 = getelementptr inbounds nuw i8, ptr %738, i64 1
  %740 = load i8, ptr %738, align 1, !tbaa !31
  %741 = getelementptr inbounds nuw i8, ptr %736, i64 1
  store i8 %740, ptr %736, align 1, !tbaa !31
  %742 = getelementptr inbounds nuw i8, ptr %738, i64 2
  %743 = load i8, ptr %739, align 1, !tbaa !31
  %744 = getelementptr inbounds nuw i8, ptr %736, i64 2
  store i8 %743, ptr %741, align 1, !tbaa !31
  %745 = getelementptr inbounds nuw i8, ptr %738, i64 3
  %746 = load i8, ptr %742, align 1, !tbaa !31
  %747 = getelementptr inbounds nuw i8, ptr %736, i64 3
  store i8 %746, ptr %744, align 1, !tbaa !31
  %748 = add i32 %737, -3
  %749 = icmp ugt i32 %748, 2
  br i1 %749, label %735, label %750, !llvm.loop !60

750:                                              ; preds = %735
  %751 = icmp eq i32 %748, 0
  br i1 %751, label %810, label %752

752:                                              ; preds = %750
  %753 = load i8, ptr %745, align 1, !tbaa !31
  %754 = getelementptr inbounds nuw i8, ptr %736, i64 4
  store i8 %753, ptr %747, align 1, !tbaa !31
  %755 = icmp eq i32 %748, 2
  br i1 %755, label %756, label %810

756:                                              ; preds = %752
  %757 = getelementptr inbounds nuw i8, ptr %738, i64 4
  %758 = load i8, ptr %757, align 1, !tbaa !31
  %759 = getelementptr inbounds nuw i8, ptr %736, i64 5
  store i8 %758, ptr %754, align 1, !tbaa !31
  br label %810

.preheader89:                                     ; preds = %176, %766
  %760 = phi i32 [ %783, %766 ], [ %189, %176 ]
  %761 = phi i32 [ %781, %766 ], [ %187, %176 ]
  %762 = phi i64 [ %780, %766 ], [ %186, %176 ]
  %763 = phi ptr [ %775, %766 ], [ %181, %176 ]
  %764 = and i32 %760, 64
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %766, label %.loopexit90

766:                                              ; preds = %.preheader89
  %767 = getelementptr inbounds nuw i8, ptr %763, i64 2
  %768 = load i16, ptr %767, align 2, !tbaa !36
  %769 = zext i16 %768 to i64
  %770 = getelementptr inbounds nuw [4 x i8], ptr %40, i64 %769
  %771 = shl nsw i32 -1, %760
  %772 = xor i32 %771, -1
  %773 = zext nneg i32 %772 to i64
  %774 = and i64 %762, %773
  %775 = getelementptr inbounds nuw [4 x i8], ptr %770, i64 %774
  %776 = getelementptr inbounds nuw i8, ptr %775, i64 1
  %777 = load i8, ptr %776, align 1, !tbaa !32
  %778 = zext i8 %777 to i32
  %779 = zext nneg i8 %777 to i64
  %780 = lshr i64 %762, %779
  %781 = sub i32 %761, %778
  %782 = load i8, ptr %775, align 2, !tbaa !35
  %783 = zext i8 %782 to i32
  %784 = and i32 %783, 16
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %.preheader89, label %.loopexit91

786:                                              ; preds = %.preheader92
  %787 = and i32 %124, 64
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %789, label %807

789:                                              ; preds = %786
  %790 = getelementptr inbounds nuw i8, ptr %123, i64 2
  %791 = load i16, ptr %790, align 2, !tbaa !36
  %792 = zext i16 %791 to i64
  %793 = getelementptr inbounds nuw [4 x i8], ptr %38, i64 %792
  %794 = shl nsw i32 -1, %124
  %795 = xor i32 %794, -1
  %796 = zext nneg i32 %795 to i64
  %797 = and i64 %122, %796
  %798 = getelementptr inbounds nuw [4 x i8], ptr %793, i64 %797
  %799 = getelementptr inbounds nuw i8, ptr %798, i64 1
  %800 = load i8, ptr %799, align 1, !tbaa !32
  %801 = zext i8 %800 to i32
  %802 = zext nneg i8 %800 to i64
  %803 = lshr i64 %122, %802
  %804 = sub i32 %121, %801
  %805 = load i8, ptr %798, align 2, !tbaa !35
  %806 = icmp eq i8 %805, 0
  br i1 %806, label %.loopexit93, label %.preheader92

807:                                              ; preds = %786
  %808 = and i32 %124, 32
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %.loopexit90, label %823

810:                                              ; preds = %756, %752, %750, %727, %723, %.loopexit, %.loopexit93
  %811 = phi i32 [ %115, %.loopexit93 ], [ %229, %727 ], [ %229, %723 ], [ %229, %.loopexit ], [ %229, %756 ], [ %229, %752 ], [ %229, %750 ]
  %812 = phi i64 [ %114, %.loopexit93 ], [ %228, %727 ], [ %228, %723 ], [ %228, %.loopexit ], [ %228, %756 ], [ %228, %752 ], [ %228, %750 ]
  %813 = phi ptr [ %119, %.loopexit93 ], [ %730, %727 ], [ %725, %723 ], [ %719, %.loopexit ], [ %759, %756 ], [ %754, %752 ], [ %747, %750 ]
  %814 = phi ptr [ %102, %.loopexit93 ], [ %221, %727 ], [ %221, %723 ], [ %221, %.loopexit ], [ %221, %756 ], [ %221, %752 ], [ %221, %750 ]
  %815 = icmp ult ptr %814, %10
  %816 = icmp ult ptr %813, %23
  %817 = select i1 %815, i1 %816, i1 false
  br i1 %817, label %78, label %.loopexit95, !llvm.loop !61

.loopexit90:                                      ; preds = %237, %.preheader89, %807
  %818 = phi ptr [ @.str.2, %807 ], [ @.str.1, %.preheader89 ], [ @.str, %237 ]
  %819 = phi i32 [ %121, %807 ], [ %761, %.preheader89 ], [ %229, %237 ]
  %820 = phi i64 [ %122, %807 ], [ %762, %.preheader89 ], [ %228, %237 ]
  %821 = phi ptr [ %102, %807 ], [ %179, %.preheader89 ], [ %221, %237 ]
  %822 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %818, ptr %822, align 8, !tbaa !62
  br label %823

823:                                              ; preds = %.loopexit90, %807
  %824 = phi i32 [ 16191, %807 ], [ 16209, %.loopexit90 ]
  %825 = phi i32 [ %121, %807 ], [ %819, %.loopexit90 ]
  %826 = phi i64 [ %122, %807 ], [ %820, %.loopexit90 ]
  %827 = phi ptr [ %102, %807 ], [ %821, %.loopexit90 ]
  %828 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %824, ptr %828, align 8, !tbaa !63
  br label %.loopexit95

.loopexit95:                                      ; preds = %810, %823
  %829 = phi i32 [ %825, %823 ], [ %811, %810 ]
  %830 = phi i64 [ %826, %823 ], [ %812, %810 ]
  %831 = phi ptr [ %81, %823 ], [ %813, %810 ]
  %832 = phi ptr [ %827, %823 ], [ %814, %810 ]
  %833 = lshr i32 %829, 3
  %834 = zext nneg i32 %833 to i64
  %835 = sub nsw i64 0, %834
  %836 = getelementptr inbounds i8, ptr %832, i64 %835
  store ptr %836, ptr %0, align 8, !tbaa !14
  store ptr %831, ptr %11, align 8, !tbaa !16
  %837 = icmp ult ptr %836, %10
  br i1 %837, label %838, label %845

838:                                              ; preds = %.loopexit95
  %839 = ptrtoint ptr %10 to i64
  %840 = ptrtoint ptr %836 to i64
  %841 = sub i64 %839, %840
  %842 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %841, i64 5), !nosanitize !64
  %843 = extractvalue { i64, i1 } %842, 1, !nosanitize !64
  br i1 %843, label %844, label %852, !prof !65, !nosanitize !64

844:                                              ; preds = %857, %838
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !64
  unreachable, !nosanitize !64

845:                                              ; preds = %.loopexit95
  %846 = ptrtoint ptr %836 to i64
  %847 = ptrtoint ptr %10 to i64
  %848 = sub i64 %846, %847
  %849 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 5, i64 %848), !nosanitize !64
  %850 = extractvalue { i64, i1 } %849, 1, !nosanitize !64
  br i1 %850, label %851, label %852, !prof !65, !nosanitize !64

851:                                              ; preds = %863, %845
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !64
  unreachable, !nosanitize !64

852:                                              ; preds = %845, %838
  %853 = phi { i64, i1 } [ %842, %838 ], [ %849, %845 ]
  %854 = extractvalue { i64, i1 } %853, 0
  %855 = trunc i64 %854 to i32
  store i32 %855, ptr %6, align 8, !tbaa !15
  %856 = icmp ult ptr %831, %23
  br i1 %856, label %857, label %863

857:                                              ; preds = %852
  %858 = ptrtoint ptr %23 to i64
  %859 = ptrtoint ptr %831 to i64
  %860 = sub i64 %858, %859
  %861 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %860, i64 257), !nosanitize !64
  %862 = extractvalue { i64, i1 } %861, 1, !nosanitize !64
  br i1 %862, label %844, label %869, !prof !65, !nosanitize !64

863:                                              ; preds = %852
  %864 = ptrtoint ptr %831 to i64
  %865 = ptrtoint ptr %23 to i64
  %866 = sub i64 %864, %865
  %867 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 257, i64 %866), !nosanitize !64
  %868 = extractvalue { i64, i1 } %867, 1, !nosanitize !64
  br i1 %868, label %851, label %869, !prof !65, !nosanitize !64

869:                                              ; preds = %863, %857
  %870 = phi { i64, i1 } [ %861, %857 ], [ %867, %863 ]
  %871 = extractvalue { i64, i1 } %870, 0
  %872 = and i32 %829, 7
  %873 = shl nsw i32 -1, %872
  %874 = xor i32 %873, -1
  %875 = zext nneg i32 %874 to i64
  %876 = and i64 %830, %875
  %877 = trunc i64 %871 to i32
  store i32 %877, ptr %15, align 8, !tbaa !17
  store i64 %876, ptr %33, align 8, !tbaa !25
  store i32 %872, ptr %35, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #1

attributes #0 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { noreturn nounwind }

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
!64 = !{}
!65 = !{!"branch_weights", i32 1, i32 1048575}
