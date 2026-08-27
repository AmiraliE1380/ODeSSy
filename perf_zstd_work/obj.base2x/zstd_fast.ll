; ModuleID = '<stdin>'
source_filename = "/mydata/zstd/lib/compress/zstd_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_match4Found_cmov.dummy = internal constant [4 x i8] c"\124Vx", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ZSTD_fillHashTable(ptr noundef readonly captures(none) %0, ptr noundef readnone captures(address) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %3, 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %9 = load i32, ptr %8, align 8, !tbaa !18
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %13 = load i32, ptr %12, align 4, !tbaa !20
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 %14
  %16 = getelementptr inbounds i8, ptr %1, i64 -6
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 3
  %18 = icmp ult ptr %17, %16
  br i1 %5, label %19, label %225

19:                                               ; preds = %4
  br i1 %18, label %20, label %.loopexit

20:                                               ; preds = %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %22 = load i32, ptr %21, align 4, !tbaa !21
  %23 = ptrtoint ptr %11 to i64
  %24 = sub i32 56, %22
  %25 = zext nneg i32 %24 to i64
  %26 = sub i32 24, %22
  %27 = icmp eq i32 %2, 0
  br i1 %27, label %28, label %.preheader13

28:                                               ; preds = %20
  switch i32 %9, label %.preheader [
    i32 8, label %.preheader5
    i32 5, label %.preheader7
    i32 6, label %.preheader9
    i32 7, label %.preheader11
  ]

.preheader5:                                      ; preds = %28, %.preheader5
  %29 = phi ptr [ %43, %.preheader5 ], [ %17, %28 ]
  %30 = phi ptr [ %29, %.preheader5 ], [ %15, %28 ]
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %31, %23
  %33 = trunc i64 %32 to i32
  %34 = load i64, ptr %30, align 1, !tbaa !22
  %35 = mul i64 %34, -3523014627327384477
  %36 = lshr i64 %35, %25
  %37 = lshr i64 %36, 8
  %38 = trunc i64 %36 to i32
  %39 = and i32 %38, 255
  %40 = shl i32 %33, 8
  %41 = or disjoint i32 %39, %40
  %42 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %37
  store i32 %41, ptr %42, align 4, !tbaa !23
  %43 = getelementptr inbounds nuw i8, ptr %29, i64 3
  %44 = icmp ult ptr %43, %16
  br i1 %44, label %.preheader5, label %.loopexit, !llvm.loop !24

.preheader7:                                      ; preds = %28, %.preheader7
  %45 = phi ptr [ %59, %.preheader7 ], [ %17, %28 ]
  %46 = phi ptr [ %45, %.preheader7 ], [ %15, %28 ]
  %47 = ptrtoint ptr %46 to i64
  %48 = sub i64 %47, %23
  %49 = trunc i64 %48 to i32
  %50 = load i64, ptr %46, align 1, !tbaa !22
  %51 = mul i64 %50, -3523014627271114752
  %52 = lshr i64 %51, %25
  %53 = lshr i64 %52, 8
  %54 = trunc i64 %52 to i32
  %55 = and i32 %54, 255
  %56 = shl i32 %49, 8
  %57 = or disjoint i32 %55, %56
  %58 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %53
  store i32 %57, ptr %58, align 4, !tbaa !23
  %59 = getelementptr inbounds nuw i8, ptr %45, i64 3
  %60 = icmp ult ptr %59, %16
  br i1 %60, label %.preheader7, label %.loopexit, !llvm.loop !24

.preheader9:                                      ; preds = %28, %.preheader9
  %61 = phi ptr [ %75, %.preheader9 ], [ %17, %28 ]
  %62 = phi ptr [ %61, %.preheader9 ], [ %15, %28 ]
  %63 = ptrtoint ptr %62 to i64
  %64 = sub i64 %63, %23
  %65 = trunc i64 %64 to i32
  %66 = load i64, ptr %62, align 1, !tbaa !22
  %67 = mul i64 %66, -3523014627193847808
  %68 = lshr i64 %67, %25
  %69 = lshr i64 %68, 8
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = shl i32 %65, 8
  %73 = or disjoint i32 %71, %72
  %74 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %69
  store i32 %73, ptr %74, align 4, !tbaa !23
  %75 = getelementptr inbounds nuw i8, ptr %61, i64 3
  %76 = icmp ult ptr %75, %16
  br i1 %76, label %.preheader9, label %.loopexit, !llvm.loop !24

.preheader11:                                     ; preds = %28, %.preheader11
  %77 = phi ptr [ %91, %.preheader11 ], [ %17, %28 ]
  %78 = phi ptr [ %77, %.preheader11 ], [ %15, %28 ]
  %79 = ptrtoint ptr %78 to i64
  %80 = sub i64 %79, %23
  %81 = trunc i64 %80 to i32
  %82 = load i64, ptr %78, align 1, !tbaa !22
  %83 = mul i64 %82, -3523014627193167104
  %84 = lshr i64 %83, %25
  %85 = lshr i64 %84, 8
  %86 = trunc i64 %84 to i32
  %87 = and i32 %86, 255
  %88 = shl i32 %81, 8
  %89 = or disjoint i32 %87, %88
  %90 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %85
  store i32 %89, ptr %90, align 4, !tbaa !23
  %91 = getelementptr inbounds nuw i8, ptr %77, i64 3
  %92 = icmp ult ptr %91, %16
  br i1 %92, label %.preheader11, label %.loopexit, !llvm.loop !24

.preheader:                                       ; preds = %28, %.preheader
  %93 = phi ptr [ %107, %.preheader ], [ %17, %28 ]
  %94 = phi ptr [ %93, %.preheader ], [ %15, %28 ]
  %95 = ptrtoint ptr %94 to i64
  %96 = sub i64 %95, %23
  %97 = trunc i64 %96 to i32
  %98 = load i32, ptr %94, align 1, !tbaa !23
  %99 = mul i32 %98, -1640531535
  %100 = lshr i32 %99, %26
  %101 = lshr i32 %100, 8
  %102 = zext nneg i32 %101 to i64
  %103 = and i32 %100, 255
  %104 = shl i32 %97, 8
  %105 = or disjoint i32 %103, %104
  %106 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %102
  store i32 %105, ptr %106, align 4, !tbaa !23
  %107 = getelementptr inbounds nuw i8, ptr %93, i64 3
  %108 = icmp ult ptr %107, %16
  br i1 %108, label %.preheader, label %.loopexit, !llvm.loop !24

.preheader13:                                     ; preds = %20, %222
  %109 = phi ptr [ %223, %222 ], [ %17, %20 ]
  %110 = phi ptr [ %109, %222 ], [ %15, %20 ]
  %111 = ptrtoint ptr %110 to i64
  %112 = sub i64 %111, %23
  %113 = trunc i64 %112 to i32
  %114 = shl i32 %113, 8
  %115 = getelementptr inbounds nuw i8, ptr %110, i64 1
  switch i32 %9, label %164 [
    i32 8, label %152
    i32 5, label %116
    i32 6, label %128
    i32 7, label %140
  ]

116:                                              ; preds = %.preheader13
  %117 = load i64, ptr %110, align 1, !tbaa !22
  %118 = mul i64 %117, -3523014627271114752
  %119 = lshr i64 %118, %25
  %120 = lshr i64 %119, 8
  %121 = trunc i64 %119 to i32
  %122 = and i32 %121, 255
  %123 = or disjoint i32 %122, %114
  %124 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %120
  store i32 %123, ptr %124, align 4, !tbaa !23
  %125 = load i64, ptr %115, align 1, !tbaa !22
  %126 = mul i64 %125, -3523014627271114752
  %127 = lshr i64 %126, %25
  br label %177

128:                                              ; preds = %.preheader13
  %129 = load i64, ptr %110, align 1, !tbaa !22
  %130 = mul i64 %129, -3523014627193847808
  %131 = lshr i64 %130, %25
  %132 = lshr i64 %131, 8
  %133 = trunc i64 %131 to i32
  %134 = and i32 %133, 255
  %135 = or disjoint i32 %134, %114
  %136 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %132
  store i32 %135, ptr %136, align 4, !tbaa !23
  %137 = load i64, ptr %115, align 1, !tbaa !22
  %138 = mul i64 %137, -3523014627193847808
  %139 = lshr i64 %138, %25
  br label %177

140:                                              ; preds = %.preheader13
  %141 = load i64, ptr %110, align 1, !tbaa !22
  %142 = mul i64 %141, -3523014627193167104
  %143 = lshr i64 %142, %25
  %144 = lshr i64 %143, 8
  %145 = trunc i64 %143 to i32
  %146 = and i32 %145, 255
  %147 = or disjoint i32 %146, %114
  %148 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %144
  store i32 %147, ptr %148, align 4, !tbaa !23
  %149 = load i64, ptr %115, align 1, !tbaa !22
  %150 = mul i64 %149, -3523014627193167104
  %151 = lshr i64 %150, %25
  br label %177

152:                                              ; preds = %.preheader13
  %153 = load i64, ptr %110, align 1, !tbaa !22
  %154 = mul i64 %153, -3523014627327384477
  %155 = lshr i64 %154, %25
  %156 = lshr i64 %155, 8
  %157 = trunc i64 %155 to i32
  %158 = and i32 %157, 255
  %159 = or disjoint i32 %158, %114
  %160 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %156
  store i32 %159, ptr %160, align 4, !tbaa !23
  %161 = load i64, ptr %115, align 1, !tbaa !22
  %162 = mul i64 %161, -3523014627327384477
  %163 = lshr i64 %162, %25
  br label %177

164:                                              ; preds = %.preheader13
  %165 = load i32, ptr %110, align 1, !tbaa !23
  %166 = mul i32 %165, -1640531535
  %167 = lshr i32 %166, %26
  %168 = lshr i32 %167, 8
  %169 = zext nneg i32 %168 to i64
  %170 = and i32 %167, 255
  %171 = or disjoint i32 %170, %114
  %172 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %169
  store i32 %171, ptr %172, align 4, !tbaa !23
  %173 = load i32, ptr %115, align 1, !tbaa !23
  %174 = mul i32 %173, -1640531535
  %175 = lshr i32 %174, %26
  %176 = zext i32 %175 to i64
  br label %177

177:                                              ; preds = %164, %152, %140, %128, %116
  %178 = phi i64 [ %176, %164 ], [ %163, %152 ], [ %127, %116 ], [ %139, %128 ], [ %151, %140 ]
  %179 = lshr i64 %178, 8
  %180 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !23
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %177
  %184 = trunc i64 %178 to i32
  %185 = and i32 %184, 255
  %186 = add i32 %114, 256
  %187 = or disjoint i32 %185, %186
  store i32 %187, ptr %180, align 4, !tbaa !23
  br label %188

188:                                              ; preds = %183, %177
  %189 = getelementptr inbounds nuw i8, ptr %110, i64 2
  switch i32 %9, label %206 [
    i32 8, label %202
    i32 5, label %198
    i32 6, label %194
    i32 7, label %190
  ]

190:                                              ; preds = %188
  %191 = load i64, ptr %189, align 1, !tbaa !22
  %192 = mul i64 %191, -3523014627193167104
  %193 = lshr i64 %192, %25
  br label %211

194:                                              ; preds = %188
  %195 = load i64, ptr %189, align 1, !tbaa !22
  %196 = mul i64 %195, -3523014627193847808
  %197 = lshr i64 %196, %25
  br label %211

198:                                              ; preds = %188
  %199 = load i64, ptr %189, align 1, !tbaa !22
  %200 = mul i64 %199, -3523014627271114752
  %201 = lshr i64 %200, %25
  br label %211

202:                                              ; preds = %188
  %203 = load i64, ptr %189, align 1, !tbaa !22
  %204 = mul i64 %203, -3523014627327384477
  %205 = lshr i64 %204, %25
  br label %211

206:                                              ; preds = %188
  %207 = load i32, ptr %189, align 1, !tbaa !23
  %208 = mul i32 %207, -1640531535
  %209 = lshr i32 %208, %26
  %210 = zext i32 %209 to i64
  br label %211

211:                                              ; preds = %206, %202, %198, %194, %190
  %212 = phi i64 [ %210, %206 ], [ %205, %202 ], [ %201, %198 ], [ %197, %194 ], [ %193, %190 ]
  %213 = lshr i64 %212, 8
  %214 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %213
  %215 = load i32, ptr %214, align 4, !tbaa !23
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %211
  %218 = trunc i64 %212 to i32
  %219 = and i32 %218, 255
  %220 = add i32 %114, 512
  %221 = or disjoint i32 %219, %220
  store i32 %221, ptr %214, align 4, !tbaa !23
  br label %222

222:                                              ; preds = %217, %211
  %223 = getelementptr inbounds nuw i8, ptr %109, i64 3
  %224 = icmp ult ptr %223, %16
  br i1 %224, label %.preheader13, label %.loopexit, !llvm.loop !24

225:                                              ; preds = %4
  br i1 %18, label %226, label %.loopexit

226:                                              ; preds = %225
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %228 = load i32, ptr %227, align 4, !tbaa !21
  %229 = ptrtoint ptr %11 to i64
  %230 = sub i32 64, %228
  %231 = zext nneg i32 %230 to i64
  %232 = sub i32 32, %228
  %233 = icmp eq i32 %2, 0
  br i1 %233, label %234, label %.preheader25

234:                                              ; preds = %226
  switch i32 %9, label %.preheader15 [
    i32 8, label %.preheader17
    i32 5, label %.preheader19
    i32 6, label %.preheader21
    i32 7, label %.preheader23
  ]

.preheader17:                                     ; preds = %234, %.preheader17
  %235 = phi ptr [ %244, %.preheader17 ], [ %17, %234 ]
  %236 = phi ptr [ %235, %.preheader17 ], [ %15, %234 ]
  %237 = ptrtoint ptr %236 to i64
  %238 = sub i64 %237, %229
  %239 = trunc i64 %238 to i32
  %240 = load i64, ptr %236, align 1, !tbaa !22
  %241 = mul i64 %240, -3523014627327384477
  %242 = lshr i64 %241, %231
  %243 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %242
  store i32 %239, ptr %243, align 4, !tbaa !23
  %244 = getelementptr inbounds nuw i8, ptr %235, i64 3
  %245 = icmp ult ptr %244, %16
  br i1 %245, label %.preheader17, label %.loopexit, !llvm.loop !26

.preheader19:                                     ; preds = %234, %.preheader19
  %246 = phi ptr [ %255, %.preheader19 ], [ %17, %234 ]
  %247 = phi ptr [ %246, %.preheader19 ], [ %15, %234 ]
  %248 = ptrtoint ptr %247 to i64
  %249 = sub i64 %248, %229
  %250 = trunc i64 %249 to i32
  %251 = load i64, ptr %247, align 1, !tbaa !22
  %252 = mul i64 %251, -3523014627271114752
  %253 = lshr i64 %252, %231
  %254 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %253
  store i32 %250, ptr %254, align 4, !tbaa !23
  %255 = getelementptr inbounds nuw i8, ptr %246, i64 3
  %256 = icmp ult ptr %255, %16
  br i1 %256, label %.preheader19, label %.loopexit, !llvm.loop !26

.preheader21:                                     ; preds = %234, %.preheader21
  %257 = phi ptr [ %266, %.preheader21 ], [ %17, %234 ]
  %258 = phi ptr [ %257, %.preheader21 ], [ %15, %234 ]
  %259 = ptrtoint ptr %258 to i64
  %260 = sub i64 %259, %229
  %261 = trunc i64 %260 to i32
  %262 = load i64, ptr %258, align 1, !tbaa !22
  %263 = mul i64 %262, -3523014627193847808
  %264 = lshr i64 %263, %231
  %265 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %264
  store i32 %261, ptr %265, align 4, !tbaa !23
  %266 = getelementptr inbounds nuw i8, ptr %257, i64 3
  %267 = icmp ult ptr %266, %16
  br i1 %267, label %.preheader21, label %.loopexit, !llvm.loop !26

.preheader23:                                     ; preds = %234, %.preheader23
  %268 = phi ptr [ %277, %.preheader23 ], [ %17, %234 ]
  %269 = phi ptr [ %268, %.preheader23 ], [ %15, %234 ]
  %270 = ptrtoint ptr %269 to i64
  %271 = sub i64 %270, %229
  %272 = trunc i64 %271 to i32
  %273 = load i64, ptr %269, align 1, !tbaa !22
  %274 = mul i64 %273, -3523014627193167104
  %275 = lshr i64 %274, %231
  %276 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %275
  store i32 %272, ptr %276, align 4, !tbaa !23
  %277 = getelementptr inbounds nuw i8, ptr %268, i64 3
  %278 = icmp ult ptr %277, %16
  br i1 %278, label %.preheader23, label %.loopexit, !llvm.loop !26

.preheader15:                                     ; preds = %234, %.preheader15
  %279 = phi ptr [ %289, %.preheader15 ], [ %17, %234 ]
  %280 = phi ptr [ %279, %.preheader15 ], [ %15, %234 ]
  %281 = ptrtoint ptr %280 to i64
  %282 = sub i64 %281, %229
  %283 = trunc i64 %282 to i32
  %284 = load i32, ptr %280, align 1, !tbaa !23
  %285 = mul i32 %284, -1640531535
  %286 = lshr i32 %285, %232
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %287
  store i32 %283, ptr %288, align 4, !tbaa !23
  %289 = getelementptr inbounds nuw i8, ptr %279, i64 3
  %290 = icmp ult ptr %289, %16
  br i1 %290, label %.preheader15, label %.loopexit, !llvm.loop !26

.preheader25:                                     ; preds = %226, %419
  %291 = phi ptr [ %420, %419 ], [ %17, %226 ]
  %292 = phi ptr [ %291, %419 ], [ %15, %226 ]
  %293 = ptrtoint ptr %292 to i64
  %294 = sub i64 %293, %229
  %295 = trunc i64 %294 to i32
  switch i32 %9, label %344 [
    i32 8, label %332
    i32 5, label %296
    i32 6, label %308
    i32 7, label %320
  ]

296:                                              ; preds = %.preheader25
  %297 = load i64, ptr %292, align 1, !tbaa !22
  %298 = mul i64 %297, -3523014627271114752
  %299 = lshr i64 %298, %231
  %300 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %299
  store i32 %295, ptr %300, align 4, !tbaa !23
  %301 = getelementptr inbounds nuw i8, ptr %292, i64 1
  %302 = load i64, ptr %301, align 1, !tbaa !22
  %303 = mul i64 %302, -3523014627271114752
  %304 = lshr i64 %303, %231
  %305 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %304
  %306 = load i32, ptr %305, align 4, !tbaa !23
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %370, label %372

308:                                              ; preds = %.preheader25
  %309 = load i64, ptr %292, align 1, !tbaa !22
  %310 = mul i64 %309, -3523014627193847808
  %311 = lshr i64 %310, %231
  %312 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %311
  store i32 %295, ptr %312, align 4, !tbaa !23
  %313 = getelementptr inbounds nuw i8, ptr %292, i64 1
  %314 = load i64, ptr %313, align 1, !tbaa !22
  %315 = mul i64 %314, -3523014627193847808
  %316 = lshr i64 %315, %231
  %317 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %316
  %318 = load i32, ptr %317, align 4, !tbaa !23
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %382, label %384

320:                                              ; preds = %.preheader25
  %321 = load i64, ptr %292, align 1, !tbaa !22
  %322 = mul i64 %321, -3523014627193167104
  %323 = lshr i64 %322, %231
  %324 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %323
  store i32 %295, ptr %324, align 4, !tbaa !23
  %325 = getelementptr inbounds nuw i8, ptr %292, i64 1
  %326 = load i64, ptr %325, align 1, !tbaa !22
  %327 = mul i64 %326, -3523014627193167104
  %328 = lshr i64 %327, %231
  %329 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %328
  %330 = load i32, ptr %329, align 4, !tbaa !23
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %394, label %396

332:                                              ; preds = %.preheader25
  %333 = load i64, ptr %292, align 1, !tbaa !22
  %334 = mul i64 %333, -3523014627327384477
  %335 = lshr i64 %334, %231
  %336 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %335
  store i32 %295, ptr %336, align 4, !tbaa !23
  %337 = getelementptr inbounds nuw i8, ptr %292, i64 1
  %338 = load i64, ptr %337, align 1, !tbaa !22
  %339 = mul i64 %338, -3523014627327384477
  %340 = lshr i64 %339, %231
  %341 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %340
  %342 = load i32, ptr %341, align 4, !tbaa !23
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %358, label %360

344:                                              ; preds = %.preheader25
  %345 = load i32, ptr %292, align 1, !tbaa !23
  %346 = mul i32 %345, -1640531535
  %347 = lshr i32 %346, %232
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %348
  store i32 %295, ptr %349, align 4, !tbaa !23
  %350 = getelementptr inbounds nuw i8, ptr %292, i64 1
  %351 = load i32, ptr %350, align 1, !tbaa !23
  %352 = mul i32 %351, -1640531535
  %353 = lshr i32 %352, %232
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %354
  %356 = load i32, ptr %355, align 4, !tbaa !23
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %406, label %408

358:                                              ; preds = %332
  %359 = add i32 %295, 1
  store i32 %359, ptr %341, align 4, !tbaa !23
  br label %360

360:                                              ; preds = %358, %332
  %361 = getelementptr inbounds nuw i8, ptr %292, i64 2
  %362 = load i64, ptr %361, align 1, !tbaa !22
  %363 = mul i64 %362, -3523014627327384477
  %364 = lshr i64 %363, %231
  %365 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %364
  %366 = load i32, ptr %365, align 4, !tbaa !23
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %419

368:                                              ; preds = %360
  %369 = add i32 %295, 2
  store i32 %369, ptr %365, align 4, !tbaa !23
  br label %419

370:                                              ; preds = %296
  %371 = add i32 %295, 1
  store i32 %371, ptr %305, align 4, !tbaa !23
  br label %372

372:                                              ; preds = %370, %296
  %373 = getelementptr inbounds nuw i8, ptr %292, i64 2
  %374 = load i64, ptr %373, align 1, !tbaa !22
  %375 = mul i64 %374, -3523014627271114752
  %376 = lshr i64 %375, %231
  %377 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %376
  %378 = load i32, ptr %377, align 4, !tbaa !23
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %419

380:                                              ; preds = %372
  %381 = add i32 %295, 2
  store i32 %381, ptr %377, align 4, !tbaa !23
  br label %419

382:                                              ; preds = %308
  %383 = add i32 %295, 1
  store i32 %383, ptr %317, align 4, !tbaa !23
  br label %384

384:                                              ; preds = %382, %308
  %385 = getelementptr inbounds nuw i8, ptr %292, i64 2
  %386 = load i64, ptr %385, align 1, !tbaa !22
  %387 = mul i64 %386, -3523014627193847808
  %388 = lshr i64 %387, %231
  %389 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %388
  %390 = load i32, ptr %389, align 4, !tbaa !23
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %419

392:                                              ; preds = %384
  %393 = add i32 %295, 2
  store i32 %393, ptr %389, align 4, !tbaa !23
  br label %419

394:                                              ; preds = %320
  %395 = add i32 %295, 1
  store i32 %395, ptr %329, align 4, !tbaa !23
  br label %396

396:                                              ; preds = %394, %320
  %397 = getelementptr inbounds nuw i8, ptr %292, i64 2
  %398 = load i64, ptr %397, align 1, !tbaa !22
  %399 = mul i64 %398, -3523014627193167104
  %400 = lshr i64 %399, %231
  %401 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %400
  %402 = load i32, ptr %401, align 4, !tbaa !23
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %419

404:                                              ; preds = %396
  %405 = add i32 %295, 2
  store i32 %405, ptr %401, align 4, !tbaa !23
  br label %419

406:                                              ; preds = %344
  %407 = add i32 %295, 1
  store i32 %407, ptr %355, align 4, !tbaa !23
  br label %408

408:                                              ; preds = %406, %344
  %409 = getelementptr inbounds nuw i8, ptr %292, i64 2
  %410 = load i32, ptr %409, align 1, !tbaa !23
  %411 = mul i32 %410, -1640531535
  %412 = lshr i32 %411, %232
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %413
  %415 = load i32, ptr %414, align 4, !tbaa !23
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %419

417:                                              ; preds = %408
  %418 = add i32 %295, 2
  store i32 %418, ptr %414, align 4, !tbaa !23
  br label %419

419:                                              ; preds = %417, %408, %404, %396, %392, %384, %380, %372, %368, %360
  %420 = getelementptr inbounds nuw i8, ptr %291, i64 3
  %421 = icmp ult ptr %420, %16
  br i1 %421, label %.preheader25, label %.loopexit, !llvm.loop !26

.loopexit:                                        ; preds = %419, %.preheader23, %.preheader21, %.preheader19, %.preheader17, %.preheader15, %222, %.preheader11, %.preheader9, %.preheader7, %.preheader5, %.preheader, %225, %19
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
  br i1 %10, label %63, label %2182

63:                                               ; preds = %5
  switch i32 %8, label %64 [
    i32 7, label %1654
    i32 5, label %598
    i32 6, label %1126
  ]

64:                                               ; preds = %63
  br i1 %62, label %65, label %.loopexit490

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

78:                                               ; preds = %.loopexit473, %65
  %79 = phi ptr [ %61, %65 ], [ %596, %.loopexit473 ]
  %80 = phi ptr [ %60, %65 ], [ %595, %.loopexit473 ]
  %81 = phi ptr [ %3, %65 ], [ %594, %.loopexit473 ]
  %82 = phi ptr [ %45, %65 ], [ %594, %.loopexit473 ]
  %83 = phi i32 [ %58, %65 ], [ %593, %.loopexit473 ]
  %84 = phi i32 [ %56, %65 ], [ %592, %.loopexit473 ]
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 1
  %86 = getelementptr inbounds nuw i8, ptr %82, i64 128
  %87 = load i32, ptr %82, align 1, !tbaa !23
  %88 = mul i32 %87, -1640531535
  %89 = lshr i32 %88, %68
  %90 = zext i32 %89 to i64
  %91 = load i32, ptr %85, align 1, !tbaa !23
  %92 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %90
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
  %115 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %98
  store i32 %114, ptr %115, align 4, !tbaa !23
  %116 = load i32, ptr %104, align 1, !tbaa !23
  %117 = icmp eq i32 %116, %111
  %118 = and i1 %96, %117
  br i1 %118, label %162, label %119

119:                                              ; preds = %97
  %120 = zext i32 %100 to i64
  %121 = getelementptr inbounds nuw i8, ptr %19, i64 %120
  %122 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %100, i32 %35, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %121) #6, !srcloc !32
  %123 = load i32, ptr %106, align 1, !tbaa !23
  %124 = load i32, ptr %122, align 1, !tbaa !23
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !33
  %127 = icmp ult i32 %100, %35
  br i1 %127, label %128, label %.loopexit489

128:                                              ; preds = %126
  %129 = load i32, ptr %104, align 1, !tbaa !23
  br label %130

130:                                              ; preds = %128, %119
  %131 = phi i32 [ %129, %128 ], [ %116, %119 ]
  %132 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %109
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
  %142 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %133, i32 %35, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %141) #6, !srcloc !32
  %143 = load i32, ptr %105, align 1, !tbaa !23
  %144 = load i32, ptr %142, align 1, !tbaa !23
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %130
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !33
  %147 = icmp ult i32 %133, %35
  br i1 %147, label %150, label %148

148:                                              ; preds = %146
  %149 = icmp ult i64 %101, 5
  br i1 %149, label %.loopexit489, label %192

150:                                              ; preds = %146, %130
  %151 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %136
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
  %176 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %109
  store i32 %175, ptr %176, align 4, !tbaa !23
  br label %.loopexit485

177:                                              ; preds = %157, %150
  %178 = phi i64 [ %101, %150 ], [ %158, %157 ]
  %179 = phi ptr [ %102, %150 ], [ %161, %157 ]
  %180 = icmp ult ptr %155, %39
  br i1 %180, label %97, label %.loopexit490, !llvm.loop !35

.loopexit489:                                     ; preds = %126, %148
  %181 = phi ptr [ %104, %148 ], [ %105, %126 ]
  %182 = phi i64 [ %136, %148 ], [ %109, %126 ]
  %183 = phi i64 [ %137, %148 ], [ %112, %126 ]
  %184 = phi i64 [ %140, %148 ], [ %120, %126 ]
  %185 = phi i32 [ %133, %148 ], [ %100, %126 ]
  %186 = phi i32 [ %139, %148 ], [ %114, %126 ]
  %187 = phi ptr [ %105, %148 ], [ %106, %126 ]
  %188 = ptrtoint ptr %181 to i64
  %189 = sub i64 %188, %21
  %190 = trunc i64 %189 to i32
  %191 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %182
  store i32 %190, ptr %191, align 4, !tbaa !23
  br label %192

192:                                              ; preds = %.loopexit489, %148
  %193 = phi i64 [ %137, %148 ], [ %183, %.loopexit489 ]
  %194 = phi i64 [ %140, %148 ], [ %184, %.loopexit489 ]
  %195 = phi i32 [ %133, %148 ], [ %185, %.loopexit489 ]
  %196 = phi i32 [ %139, %148 ], [ %186, %.loopexit489 ]
  %197 = phi ptr [ %105, %148 ], [ %187, %.loopexit489 ]
  %198 = getelementptr inbounds nuw i8, ptr %19, i64 %194
  %199 = ptrtoint ptr %198 to i64
  %200 = sub i64 %193, %199
  %201 = trunc i64 %200 to i32
  %202 = add i32 %201, 3
  %203 = icmp ugt ptr %197, %81
  %204 = icmp ugt i32 %195, %35
  %205 = and i1 %204, %203
  br i1 %205, label %.preheader484, label %.loopexit485

.preheader484:                                    ; preds = %192, %214
  %206 = phi ptr [ %209, %214 ], [ %197, %192 ]
  %207 = phi i64 [ %215, %214 ], [ 4, %192 ]
  %208 = phi ptr [ %211, %214 ], [ %198, %192 ]
  %209 = getelementptr inbounds i8, ptr %206, i64 -1
  %210 = load i8, ptr %209, align 1, !tbaa !34
  %211 = getelementptr inbounds i8, ptr %208, i64 -1
  %212 = load i8, ptr %211, align 1, !tbaa !34
  %213 = icmp eq i8 %210, %212
  br i1 %213, label %214, label %.loopexit485

214:                                              ; preds = %.preheader484
  %215 = add i64 %207, 1
  %216 = icmp ugt ptr %209, %81
  %217 = icmp ugt ptr %211, %37
  %218 = and i1 %216, %217
  br i1 %218, label %.preheader484, label %.loopexit485, !llvm.loop !36

.loopexit485:                                     ; preds = %214, %.preheader484, %192, %162
  %219 = phi i32 [ %114, %162 ], [ %196, %192 ], [ %196, %.preheader484 ], [ %196, %214 ]
  %220 = phi i32 [ %84, %162 ], [ %83, %192 ], [ %83, %.preheader484 ], [ %83, %214 ]
  %221 = phi i32 [ 1, %162 ], [ %202, %192 ], [ %202, %.preheader484 ], [ %202, %214 ]
  %222 = phi ptr [ %171, %162 ], [ %198, %192 ], [ %211, %214 ], [ %208, %.preheader484 ]
  %223 = phi i64 [ %172, %162 ], [ 4, %192 ], [ %215, %214 ], [ %207, %.preheader484 ]
  %224 = phi i32 [ %83, %162 ], [ %201, %192 ], [ %201, %.preheader484 ], [ %201, %214 ]
  %225 = phi ptr [ %170, %162 ], [ %197, %192 ], [ %209, %214 ], [ %206, %.preheader484 ]
  %226 = getelementptr inbounds nuw i8, ptr %225, i64 %223
  %227 = getelementptr inbounds nuw i8, ptr %222, i64 %223
  %228 = icmp ult ptr %226, %69
  br i1 %228, label %229, label %.loopexit483

229:                                              ; preds = %.loopexit485
  %230 = load i64, ptr %227, align 1, !tbaa !22
  %231 = load i64, ptr %226, align 1, !tbaa !22
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %.preheader482, label %233

233:                                              ; preds = %229
  %234 = xor i64 %231, %230
  %235 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %234, i1 true)
  %236 = lshr i64 %235, 3
  br label %290

.preheader482:                                    ; preds = %229, %242
  %237 = phi ptr [ %240, %242 ], [ %227, %229 ]
  %238 = phi ptr [ %239, %242 ], [ %226, %229 ]
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 8
  %240 = getelementptr inbounds nuw i8, ptr %237, i64 8
  %241 = icmp ult ptr %239, %69
  br i1 %241, label %242, label %.loopexit483

242:                                              ; preds = %.preheader482
  %243 = load i64, ptr %240, align 1, !tbaa !22
  %244 = load i64, ptr %239, align 1, !tbaa !22
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %.preheader482, label %246

246:                                              ; preds = %242
  %247 = xor i64 %244, %243
  %248 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %247, i1 true)
  %249 = lshr i64 %248, 3
  %250 = getelementptr inbounds nuw i8, ptr %239, i64 %249
  %251 = ptrtoint ptr %250 to i64
  %252 = ptrtoint ptr %226 to i64
  %253 = sub i64 %251, %252
  br label %290

.loopexit483:                                     ; preds = %.preheader482, %.loopexit485
  %254 = phi ptr [ %227, %.loopexit485 ], [ %240, %.preheader482 ]
  %255 = phi ptr [ %226, %.loopexit485 ], [ %239, %.preheader482 ]
  %256 = icmp ult ptr %255, %70
  br i1 %256, label %257, label %264

257:                                              ; preds = %.loopexit483
  %258 = load i32, ptr %254, align 1, !tbaa !23
  %259 = load i32, ptr %255, align 1, !tbaa !23
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %264

261:                                              ; preds = %257
  %262 = getelementptr inbounds nuw i8, ptr %255, i64 4
  %263 = getelementptr inbounds nuw i8, ptr %254, i64 4
  br label %264

264:                                              ; preds = %261, %257, %.loopexit483
  %265 = phi ptr [ %263, %261 ], [ %254, %257 ], [ %254, %.loopexit483 ]
  %266 = phi ptr [ %262, %261 ], [ %255, %257 ], [ %255, %.loopexit483 ]
  %267 = icmp ult ptr %266, %71
  br i1 %267, label %268, label %275

268:                                              ; preds = %264
  %269 = load i16, ptr %265, align 1, !tbaa !37
  %270 = load i16, ptr %266, align 1, !tbaa !37
  %271 = icmp eq i16 %269, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %268
  %273 = getelementptr inbounds nuw i8, ptr %266, i64 2
  %274 = getelementptr inbounds nuw i8, ptr %265, i64 2
  br label %275

275:                                              ; preds = %272, %268, %264
  %276 = phi ptr [ %274, %272 ], [ %265, %268 ], [ %265, %264 ]
  %277 = phi ptr [ %273, %272 ], [ %266, %268 ], [ %266, %264 ]
  %278 = icmp ult ptr %277, %38
  br i1 %278, label %279, label %285

279:                                              ; preds = %275
  %280 = load i8, ptr %276, align 1, !tbaa !34
  %281 = load i8, ptr %277, align 1, !tbaa !34
  %282 = icmp eq i8 %280, %281
  %283 = zext i1 %282 to i64
  %284 = getelementptr inbounds nuw i8, ptr %277, i64 %283
  br label %285

285:                                              ; preds = %279, %275
  %286 = phi ptr [ %277, %275 ], [ %284, %279 ]
  %287 = ptrtoint ptr %286 to i64
  %288 = ptrtoint ptr %226 to i64
  %289 = sub i64 %287, %288
  br label %290

290:                                              ; preds = %285, %246, %233
  %291 = phi i64 [ %289, %285 ], [ %236, %233 ], [ %253, %246 ]
  %292 = add i64 %291, %223
  %293 = ptrtoint ptr %225 to i64
  %294 = ptrtoint ptr %81 to i64
  %295 = sub i64 %293, %294
  %296 = icmp ugt ptr %225, %72
  %297 = load ptr, ptr %73, align 8, !tbaa !39
  br i1 %296, label %320, label %298

298:                                              ; preds = %290
  %299 = load <2 x i64>, ptr %81, align 1, !tbaa !34
  store <2 x i64> %299, ptr %297, align 1, !tbaa !34
  %300 = icmp ugt i64 %295, 16
  br i1 %300, label %301, label %431

301:                                              ; preds = %298
  %302 = load ptr, ptr %73, align 8, !tbaa !39
  %303 = getelementptr inbounds nuw i8, ptr %302, i64 16
  %304 = getelementptr inbounds nuw i8, ptr %81, i64 16
  %305 = getelementptr i8, ptr %302, i64 %295
  %306 = load <2 x i64>, ptr %304, align 1, !tbaa !34
  store <2 x i64> %306, ptr %303, align 1, !tbaa !34
  %307 = icmp ult i64 %295, 33
  br i1 %307, label %431, label %308

308:                                              ; preds = %301
  %309 = getelementptr inbounds nuw i8, ptr %302, i64 32
  br label %310

310:                                              ; preds = %310, %308
  %311 = phi ptr [ %309, %308 ], [ %318, %310 ]
  %312 = phi ptr [ %304, %308 ], [ %316, %310 ]
  %313 = getelementptr inbounds nuw i8, ptr %312, i64 16
  %314 = load <2 x i64>, ptr %313, align 1, !tbaa !34
  store <2 x i64> %314, ptr %311, align 1, !tbaa !34
  %315 = getelementptr inbounds nuw i8, ptr %311, i64 16
  %316 = getelementptr inbounds nuw i8, ptr %312, i64 32
  %317 = load <2 x i64>, ptr %316, align 1, !tbaa !34
  store <2 x i64> %317, ptr %315, align 1, !tbaa !34
  %318 = getelementptr inbounds nuw i8, ptr %311, i64 32
  %319 = icmp ult ptr %318, %305
  br i1 %319, label %310, label %.loopexit477, !llvm.loop !42

320:                                              ; preds = %290
  %321 = icmp ugt ptr %81, %72
  br i1 %321, label %.loopexit480, label %322

322:                                              ; preds = %320
  %323 = sub i64 %74, %294
  %324 = getelementptr inbounds i8, ptr %297, i64 %323
  %325 = load <2 x i64>, ptr %81, align 1, !tbaa !34
  store <2 x i64> %325, ptr %297, align 1, !tbaa !34
  %326 = icmp ult i64 %323, 17
  br i1 %326, label %.loopexit480, label %327

327:                                              ; preds = %322
  %328 = getelementptr inbounds nuw i8, ptr %297, i64 16
  br label %329

329:                                              ; preds = %329, %327
  %330 = phi ptr [ %328, %327 ], [ %337, %329 ]
  %331 = phi ptr [ %81, %327 ], [ %335, %329 ]
  %332 = getelementptr inbounds nuw i8, ptr %331, i64 16
  %333 = load <2 x i64>, ptr %332, align 1, !tbaa !34
  store <2 x i64> %333, ptr %330, align 1, !tbaa !34
  %334 = getelementptr inbounds nuw i8, ptr %330, i64 16
  %335 = getelementptr inbounds nuw i8, ptr %331, i64 32
  %336 = load <2 x i64>, ptr %335, align 1, !tbaa !34
  store <2 x i64> %336, ptr %334, align 1, !tbaa !34
  %337 = getelementptr inbounds nuw i8, ptr %330, i64 32
  %338 = icmp ult ptr %337, %324
  br i1 %338, label %329, label %.loopexit480, !llvm.loop !42

.loopexit480:                                     ; preds = %329, %322, %320
  %339 = phi ptr [ %72, %322 ], [ %81, %320 ], [ %72, %329 ]
  %340 = phi ptr [ %324, %322 ], [ %297, %320 ], [ %324, %329 ]
  %341 = icmp ult ptr %339, %225
  br i1 %341, label %342, label %.loopexit477

342:                                              ; preds = %.loopexit480
  %343 = ptrtoint ptr %339 to i64
  %344 = ptrtoint ptr %340 to i64
  %345 = sub i64 %293, %343
  %346 = icmp ult i64 %345, 4
  %347 = sub i64 %344, %343
  %348 = icmp ult i64 %347, 32
  %349 = select i1 %346, i1 true, i1 %348
  br i1 %349, label %385, label %350

350:                                              ; preds = %342
  %351 = icmp ult i64 %345, 32
  br i1 %351, label %371, label %352

352:                                              ; preds = %350
  %353 = and i64 %345, -32
  br label %354

354:                                              ; preds = %354, %352
  %355 = phi i64 [ 0, %352 ], [ %362, %354 ]
  %356 = getelementptr i8, ptr %340, i64 %355
  %357 = getelementptr i8, ptr %339, i64 %355
  %358 = getelementptr i8, ptr %357, i64 16
  %359 = load <16 x i8>, ptr %357, align 1, !tbaa !34
  %360 = load <16 x i8>, ptr %358, align 1, !tbaa !34
  %361 = getelementptr i8, ptr %356, i64 16
  store <16 x i8> %359, ptr %356, align 1, !tbaa !34
  store <16 x i8> %360, ptr %361, align 1, !tbaa !34
  %362 = add nuw i64 %355, 32
  %363 = icmp eq i64 %362, %353
  br i1 %363, label %364, label %354, !llvm.loop !43

364:                                              ; preds = %354
  %365 = icmp eq i64 %345, %353
  br i1 %365, label %.loopexit477, label %366

366:                                              ; preds = %364
  %367 = getelementptr i8, ptr %340, i64 %353
  %368 = getelementptr i8, ptr %339, i64 %353
  %369 = and i64 %345, 28
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %385, label %371

371:                                              ; preds = %366, %350
  %372 = phi i64 [ %353, %366 ], [ 0, %350 ]
  %373 = and i64 %345, -4
  br label %374

374:                                              ; preds = %374, %371
  %375 = phi i64 [ %372, %371 ], [ %379, %374 ]
  %376 = getelementptr i8, ptr %340, i64 %375
  %377 = getelementptr i8, ptr %339, i64 %375
  %378 = load <4 x i8>, ptr %377, align 1, !tbaa !34
  store <4 x i8> %378, ptr %376, align 1, !tbaa !34
  %379 = add nuw i64 %375, 4
  %380 = icmp eq i64 %379, %373
  br i1 %380, label %381, label %374, !llvm.loop !46

381:                                              ; preds = %374
  %382 = getelementptr i8, ptr %340, i64 %373
  %383 = getelementptr i8, ptr %339, i64 %373
  %384 = icmp eq i64 %345, %373
  br i1 %384, label %.loopexit477, label %385

385:                                              ; preds = %381, %366, %342
  %386 = phi ptr [ %340, %342 ], [ %367, %366 ], [ %382, %381 ]
  %387 = phi ptr [ %339, %342 ], [ %368, %366 ], [ %383, %381 ]
  %388 = ptrtoint ptr %387 to i64
  %389 = sub i64 %293, %388
  %390 = and i64 %389, 7
  %391 = icmp eq i64 %390, 0
  br i1 %391, label %.loopexit479, label %.preheader478

.preheader478:                                    ; preds = %385, %.preheader478
  %392 = phi ptr [ %397, %.preheader478 ], [ %386, %385 ]
  %393 = phi ptr [ %395, %.preheader478 ], [ %387, %385 ]
  %394 = phi i64 [ %398, %.preheader478 ], [ 0, %385 ]
  %395 = getelementptr inbounds nuw i8, ptr %393, i64 1
  %396 = load i8, ptr %393, align 1, !tbaa !34
  %397 = getelementptr inbounds nuw i8, ptr %392, i64 1
  store i8 %396, ptr %392, align 1, !tbaa !34
  %398 = add nuw nsw i64 %394, 1
  %399 = icmp eq i64 %398, %390
  br i1 %399, label %.loopexit479, label %.preheader478, !llvm.loop !47

.loopexit479:                                     ; preds = %.preheader478, %385
  %400 = phi ptr [ %386, %385 ], [ %397, %.preheader478 ]
  %401 = phi ptr [ %387, %385 ], [ %395, %.preheader478 ]
  %402 = sub i64 %388, %293
  %403 = icmp ugt i64 %402, -8
  br i1 %403, label %.loopexit477, label %.preheader476

.preheader476:                                    ; preds = %.loopexit479, %.preheader476
  %404 = phi ptr [ %429, %.preheader476 ], [ %400, %.loopexit479 ]
  %405 = phi ptr [ %427, %.preheader476 ], [ %401, %.loopexit479 ]
  %406 = getelementptr inbounds nuw i8, ptr %405, i64 1
  %407 = load i8, ptr %405, align 1, !tbaa !34
  %408 = getelementptr inbounds nuw i8, ptr %404, i64 1
  store i8 %407, ptr %404, align 1, !tbaa !34
  %409 = getelementptr inbounds nuw i8, ptr %405, i64 2
  %410 = load i8, ptr %406, align 1, !tbaa !34
  %411 = getelementptr inbounds nuw i8, ptr %404, i64 2
  store i8 %410, ptr %408, align 1, !tbaa !34
  %412 = getelementptr inbounds nuw i8, ptr %405, i64 3
  %413 = load i8, ptr %409, align 1, !tbaa !34
  %414 = getelementptr inbounds nuw i8, ptr %404, i64 3
  store i8 %413, ptr %411, align 1, !tbaa !34
  %415 = getelementptr inbounds nuw i8, ptr %405, i64 4
  %416 = load i8, ptr %412, align 1, !tbaa !34
  %417 = getelementptr inbounds nuw i8, ptr %404, i64 4
  store i8 %416, ptr %414, align 1, !tbaa !34
  %418 = getelementptr inbounds nuw i8, ptr %405, i64 5
  %419 = load i8, ptr %415, align 1, !tbaa !34
  %420 = getelementptr inbounds nuw i8, ptr %404, i64 5
  store i8 %419, ptr %417, align 1, !tbaa !34
  %421 = getelementptr inbounds nuw i8, ptr %405, i64 6
  %422 = load i8, ptr %418, align 1, !tbaa !34
  %423 = getelementptr inbounds nuw i8, ptr %404, i64 6
  store i8 %422, ptr %420, align 1, !tbaa !34
  %424 = getelementptr inbounds nuw i8, ptr %405, i64 7
  %425 = load i8, ptr %421, align 1, !tbaa !34
  %426 = getelementptr inbounds nuw i8, ptr %404, i64 7
  store i8 %425, ptr %423, align 1, !tbaa !34
  %427 = getelementptr inbounds nuw i8, ptr %405, i64 8
  %428 = load i8, ptr %424, align 1, !tbaa !34
  %429 = getelementptr inbounds nuw i8, ptr %404, i64 8
  store i8 %428, ptr %426, align 1, !tbaa !34
  %430 = icmp eq ptr %427, %225
  br i1 %430, label %.loopexit477, label %.preheader476, !llvm.loop !49

431:                                              ; preds = %301, %298
  %432 = load ptr, ptr %73, align 8, !tbaa !39
  %433 = getelementptr inbounds nuw i8, ptr %432, i64 %295
  store ptr %433, ptr %73, align 8, !tbaa !39
  %434 = load ptr, ptr %76, align 8, !tbaa !50
  br label %446

.loopexit477:                                     ; preds = %310, %.preheader476, %.loopexit479, %381, %364, %.loopexit480
  %435 = load ptr, ptr %73, align 8, !tbaa !39
  %436 = getelementptr inbounds nuw i8, ptr %435, i64 %295
  store ptr %436, ptr %73, align 8, !tbaa !39
  %437 = icmp ugt i64 %295, 65535
  %438 = load ptr, ptr %76, align 8, !tbaa !50
  br i1 %437, label %439, label %446, !prof !51

439:                                              ; preds = %.loopexit477
  store i32 1, ptr %75, align 8, !tbaa !52
  %440 = load ptr, ptr %1, align 8, !tbaa !53
  %441 = ptrtoint ptr %438 to i64
  %442 = ptrtoint ptr %440 to i64
  %443 = sub i64 %441, %442
  %444 = lshr exact i64 %443, 3
  %445 = trunc i64 %444 to i32
  store i32 %445, ptr %77, align 4, !tbaa !54
  br label %446

446:                                              ; preds = %439, %.loopexit477, %431
  %447 = phi ptr [ %434, %431 ], [ %438, %439 ], [ %438, %.loopexit477 ]
  %448 = trunc i64 %295 to i16
  %449 = getelementptr inbounds nuw i8, ptr %447, i64 4
  store i16 %448, ptr %449, align 4, !tbaa !55
  store i32 %221, ptr %447, align 4, !tbaa !57
  %450 = add i64 %292, -3
  %451 = icmp ugt i64 %450, 65535
  br i1 %451, label %452, label %459, !prof !58

452:                                              ; preds = %446
  store i32 2, ptr %75, align 8, !tbaa !52
  %453 = load ptr, ptr %1, align 8, !tbaa !53
  %454 = ptrtoint ptr %447 to i64
  %455 = ptrtoint ptr %453 to i64
  %456 = sub i64 %454, %455
  %457 = lshr exact i64 %456, 3
  %458 = trunc i64 %457 to i32
  store i32 %458, ptr %77, align 4, !tbaa !54
  br label %459

459:                                              ; preds = %452, %446
  %460 = trunc i64 %450 to i16
  %461 = getelementptr inbounds nuw i8, ptr %447, i64 6
  store i16 %460, ptr %461, align 2, !tbaa !59
  %462 = getelementptr inbounds nuw i8, ptr %447, i64 8
  store ptr %462, ptr %76, align 8, !tbaa !50
  %463 = getelementptr inbounds nuw i8, ptr %225, i64 %292
  %464 = icmp ugt ptr %463, %39
  br i1 %464, label %.loopexit473, label %465

465:                                              ; preds = %459
  %466 = add i32 %219, 2
  %467 = zext i32 %219 to i64
  %468 = getelementptr inbounds nuw i8, ptr %59, i64 %467
  %469 = load i32, ptr %468, align 1, !tbaa !23
  %470 = mul i32 %469, -1640531535
  %471 = lshr i32 %470, %68
  %472 = zext i32 %471 to i64
  %473 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %472
  store i32 %466, ptr %473, align 4, !tbaa !23
  %474 = getelementptr inbounds i8, ptr %463, i64 -2
  %475 = ptrtoint ptr %474 to i64
  %476 = sub i64 %475, %21
  %477 = trunc i64 %476 to i32
  %478 = load i32, ptr %474, align 1, !tbaa !23
  %479 = mul i32 %478, -1640531535
  %480 = lshr i32 %479, %68
  %481 = zext i32 %480 to i64
  %482 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %481
  store i32 %477, ptr %482, align 4, !tbaa !23
  %483 = icmp eq i32 %220, 0
  br i1 %483, label %.loopexit473, label %.preheader472

.preheader472:                                    ; preds = %465, %587
  %484 = phi ptr [ %590, %587 ], [ %462, %465 ]
  %485 = phi ptr [ %569, %587 ], [ %463, %465 ]
  %486 = phi i32 [ %487, %587 ], [ %224, %465 ]
  %487 = phi i32 [ %486, %587 ], [ %220, %465 ]
  %488 = load i32, ptr %485, align 1, !tbaa !23
  %489 = zext i32 %487 to i64
  %490 = sub nsw i64 0, %489
  %491 = getelementptr inbounds i8, ptr %485, i64 %490
  %492 = load i32, ptr %491, align 1, !tbaa !23
  %493 = icmp eq i32 %488, %492
  br i1 %493, label %494, label %.loopexit473

494:                                              ; preds = %.preheader472
  %495 = getelementptr inbounds nuw i8, ptr %485, i64 4
  %496 = getelementptr inbounds i8, ptr %495, i64 %490
  %497 = icmp ult ptr %495, %69
  br i1 %497, label %498, label %.loopexit

498:                                              ; preds = %494
  %499 = load i64, ptr %496, align 1, !tbaa !22
  %500 = load i64, ptr %495, align 1, !tbaa !22
  %501 = icmp eq i64 %499, %500
  br i1 %501, label %.preheader, label %502

502:                                              ; preds = %498
  %503 = xor i64 %500, %499
  %504 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %503, i1 true)
  %505 = lshr i64 %504, 3
  br label %559

.preheader:                                       ; preds = %498, %511
  %506 = phi ptr [ %509, %511 ], [ %496, %498 ]
  %507 = phi ptr [ %508, %511 ], [ %495, %498 ]
  %508 = getelementptr inbounds nuw i8, ptr %507, i64 8
  %509 = getelementptr inbounds nuw i8, ptr %506, i64 8
  %510 = icmp ult ptr %508, %69
  br i1 %510, label %511, label %.loopexit

511:                                              ; preds = %.preheader
  %512 = load i64, ptr %509, align 1, !tbaa !22
  %513 = load i64, ptr %508, align 1, !tbaa !22
  %514 = icmp eq i64 %512, %513
  br i1 %514, label %.preheader, label %515

515:                                              ; preds = %511
  %516 = xor i64 %513, %512
  %517 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %516, i1 true)
  %518 = lshr i64 %517, 3
  %519 = getelementptr inbounds nuw i8, ptr %508, i64 %518
  %520 = ptrtoint ptr %519 to i64
  %521 = ptrtoint ptr %495 to i64
  %522 = sub i64 %520, %521
  br label %559

.loopexit:                                        ; preds = %.preheader, %494
  %523 = phi ptr [ %496, %494 ], [ %509, %.preheader ]
  %524 = phi ptr [ %495, %494 ], [ %508, %.preheader ]
  %525 = icmp ult ptr %524, %70
  br i1 %525, label %526, label %533

526:                                              ; preds = %.loopexit
  %527 = load i32, ptr %523, align 1, !tbaa !23
  %528 = load i32, ptr %524, align 1, !tbaa !23
  %529 = icmp eq i32 %527, %528
  br i1 %529, label %530, label %533

530:                                              ; preds = %526
  %531 = getelementptr inbounds nuw i8, ptr %524, i64 4
  %532 = getelementptr inbounds nuw i8, ptr %523, i64 4
  br label %533

533:                                              ; preds = %530, %526, %.loopexit
  %534 = phi ptr [ %532, %530 ], [ %523, %526 ], [ %523, %.loopexit ]
  %535 = phi ptr [ %531, %530 ], [ %524, %526 ], [ %524, %.loopexit ]
  %536 = icmp ult ptr %535, %71
  br i1 %536, label %537, label %544

537:                                              ; preds = %533
  %538 = load i16, ptr %534, align 1, !tbaa !37
  %539 = load i16, ptr %535, align 1, !tbaa !37
  %540 = icmp eq i16 %538, %539
  br i1 %540, label %541, label %544

541:                                              ; preds = %537
  %542 = getelementptr inbounds nuw i8, ptr %535, i64 2
  %543 = getelementptr inbounds nuw i8, ptr %534, i64 2
  br label %544

544:                                              ; preds = %541, %537, %533
  %545 = phi ptr [ %543, %541 ], [ %534, %537 ], [ %534, %533 ]
  %546 = phi ptr [ %542, %541 ], [ %535, %537 ], [ %535, %533 ]
  %547 = icmp ult ptr %546, %38
  br i1 %547, label %548, label %554

548:                                              ; preds = %544
  %549 = load i8, ptr %545, align 1, !tbaa !34
  %550 = load i8, ptr %546, align 1, !tbaa !34
  %551 = icmp eq i8 %549, %550
  %552 = zext i1 %551 to i64
  %553 = getelementptr inbounds nuw i8, ptr %546, i64 %552
  br label %554

554:                                              ; preds = %548, %544
  %555 = phi ptr [ %546, %544 ], [ %553, %548 ]
  %556 = ptrtoint ptr %555 to i64
  %557 = ptrtoint ptr %495 to i64
  %558 = sub i64 %556, %557
  br label %559

559:                                              ; preds = %554, %515, %502
  %560 = phi i64 [ %558, %554 ], [ %505, %502 ], [ %522, %515 ]
  %561 = ptrtoint ptr %485 to i64
  %562 = sub i64 %561, %21
  %563 = trunc i64 %562 to i32
  %564 = mul i32 %488, -1640531535
  %565 = lshr i32 %564, %68
  %566 = zext i32 %565 to i64
  %567 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %566
  store i32 %563, ptr %567, align 4, !tbaa !23
  %568 = getelementptr i8, ptr %485, i64 %560
  %569 = getelementptr i8, ptr %568, i64 4
  %570 = icmp ugt ptr %485, %72
  br i1 %570, label %575, label %571

571:                                              ; preds = %559
  %572 = load ptr, ptr %73, align 8, !tbaa !39
  %573 = load <2 x i64>, ptr %485, align 1, !tbaa !34
  store <2 x i64> %573, ptr %572, align 1, !tbaa !34
  %574 = load ptr, ptr %76, align 8, !tbaa !50
  br label %575

575:                                              ; preds = %571, %559
  %576 = phi ptr [ %484, %559 ], [ %574, %571 ]
  %577 = getelementptr inbounds nuw i8, ptr %576, i64 4
  store i16 0, ptr %577, align 4, !tbaa !55
  store i32 1, ptr %576, align 4, !tbaa !57
  %578 = add i64 %560, 1
  %579 = icmp ugt i64 %578, 65535
  br i1 %579, label %580, label %587, !prof !58

580:                                              ; preds = %575
  store i32 2, ptr %75, align 8, !tbaa !52
  %581 = load ptr, ptr %1, align 8, !tbaa !53
  %582 = ptrtoint ptr %576 to i64
  %583 = ptrtoint ptr %581 to i64
  %584 = sub i64 %582, %583
  %585 = lshr exact i64 %584, 3
  %586 = trunc i64 %585 to i32
  store i32 %586, ptr %77, align 4, !tbaa !54
  br label %587

587:                                              ; preds = %580, %575
  %588 = trunc i64 %578 to i16
  %589 = getelementptr inbounds nuw i8, ptr %576, i64 6
  store i16 %588, ptr %589, align 2, !tbaa !59
  %590 = getelementptr inbounds nuw i8, ptr %576, i64 8
  store ptr %590, ptr %76, align 8, !tbaa !50
  %591 = icmp ugt ptr %569, %39
  br i1 %591, label %.loopexit473, label %.preheader472

.loopexit473:                                     ; preds = %587, %.preheader472, %465, %459
  %592 = phi i32 [ 0, %465 ], [ %220, %459 ], [ %487, %.preheader472 ], [ %486, %587 ]
  %593 = phi i32 [ %224, %465 ], [ %224, %459 ], [ %486, %.preheader472 ], [ %487, %587 ]
  %594 = phi ptr [ %463, %465 ], [ %463, %459 ], [ %485, %.preheader472 ], [ %569, %587 ]
  %595 = getelementptr inbounds nuw i8, ptr %594, i64 %17
  %596 = getelementptr inbounds nuw i8, ptr %595, i64 1
  %597 = icmp ult ptr %596, %39
  br i1 %597, label %78, label %.loopexit490

598:                                              ; preds = %63
  br i1 %62, label %599, label %.loopexit490

599:                                              ; preds = %598
  %600 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %601 = load i32, ptr %600, align 4, !tbaa !21
  %602 = sub i32 64, %601
  %603 = zext nneg i32 %602 to i64
  %604 = getelementptr inbounds i8, ptr %38, i64 -7
  %605 = getelementptr inbounds i8, ptr %38, i64 -3
  %606 = getelementptr inbounds i8, ptr %38, i64 -1
  %607 = getelementptr inbounds i8, ptr %38, i64 -32
  %608 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %609 = ptrtoint ptr %607 to i64
  %610 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %611 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %612 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %613

613:                                              ; preds = %.loopexit518, %599
  %614 = phi ptr [ %61, %599 ], [ %1124, %.loopexit518 ]
  %615 = phi ptr [ %60, %599 ], [ %1123, %.loopexit518 ]
  %616 = phi ptr [ %3, %599 ], [ %1122, %.loopexit518 ]
  %617 = phi ptr [ %45, %599 ], [ %1122, %.loopexit518 ]
  %618 = phi i32 [ %58, %599 ], [ %1121, %.loopexit518 ]
  %619 = phi i32 [ %56, %599 ], [ %1120, %.loopexit518 ]
  %620 = getelementptr inbounds nuw i8, ptr %617, i64 1
  %621 = getelementptr inbounds nuw i8, ptr %617, i64 128
  %622 = load i64, ptr %617, align 1, !tbaa !22
  %623 = mul i64 %622, -3523014627271114752
  %624 = lshr i64 %623, %603
  %625 = load i64, ptr %620, align 1, !tbaa !22
  %626 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %624
  %627 = load i32, ptr %626, align 4, !tbaa !23
  %628 = zext i32 %618 to i64
  %629 = sub nsw i64 0, %628
  %630 = icmp ne i32 %618, 0
  br label %631

631:                                              ; preds = %707, %613
  %632 = phi i64 [ %624, %613 ], [ %666, %707 ]
  %633 = phi i64 [ %625, %613 ], [ %683, %707 ]
  %634 = phi i32 [ %627, %613 ], [ %682, %707 ]
  %635 = phi i64 [ %17, %613 ], [ %708, %707 ]
  %636 = phi ptr [ %621, %613 ], [ %709, %707 ]
  %637 = phi ptr [ %614, %613 ], [ %685, %707 ]
  %638 = phi ptr [ %615, %613 ], [ %684, %707 ]
  %639 = phi ptr [ %620, %613 ], [ %637, %707 ]
  %640 = phi ptr [ %617, %613 ], [ %638, %707 ]
  %641 = mul i64 %633, -3523014627271114752
  %642 = lshr i64 %641, %603
  %643 = getelementptr inbounds i8, ptr %638, i64 %629
  %644 = load i32, ptr %643, align 1, !tbaa !23
  %645 = ptrtoint ptr %640 to i64
  %646 = sub i64 %645, %21
  %647 = trunc i64 %646 to i32
  %648 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %632
  store i32 %647, ptr %648, align 4, !tbaa !23
  %649 = load i32, ptr %638, align 1, !tbaa !23
  %650 = icmp eq i32 %649, %644
  %651 = and i1 %630, %650
  br i1 %651, label %692, label %652

652:                                              ; preds = %631
  %653 = zext i32 %634 to i64
  %654 = getelementptr inbounds nuw i8, ptr %19, i64 %653
  %655 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %634, i32 %35, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %654) #6, !srcloc !32
  %656 = load i32, ptr %640, align 1, !tbaa !23
  %657 = load i32, ptr %655, align 1, !tbaa !23
  %658 = icmp eq i32 %656, %657
  br i1 %658, label %659, label %661

659:                                              ; preds = %652
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !33
  %660 = icmp ult i32 %634, %35
  br i1 %660, label %661, label %.loopexit535

661:                                              ; preds = %659, %652
  %662 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %642
  %663 = load i32, ptr %662, align 4, !tbaa !23
  %664 = load i64, ptr %638, align 1, !tbaa !22
  %665 = mul i64 %664, -3523014627271114752
  %666 = lshr i64 %665, %603
  %667 = ptrtoint ptr %639 to i64
  %668 = sub i64 %667, %21
  %669 = trunc i64 %668 to i32
  store i32 %669, ptr %662, align 4, !tbaa !23
  %670 = zext i32 %663 to i64
  %671 = getelementptr inbounds nuw i8, ptr %19, i64 %670
  %672 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %663, i32 %35, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %671) #6, !srcloc !32
  %673 = load i32, ptr %639, align 1, !tbaa !23
  %674 = load i32, ptr %672, align 1, !tbaa !23
  %675 = icmp eq i32 %673, %674
  br i1 %675, label %676, label %680

676:                                              ; preds = %661
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !33
  %677 = icmp ult i32 %663, %35
  br i1 %677, label %680, label %678

678:                                              ; preds = %676
  %679 = icmp ult i64 %635, 5
  br i1 %679, label %.loopexit535, label %722

680:                                              ; preds = %676, %661
  %681 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %666
  %682 = load i32, ptr %681, align 4, !tbaa !23
  %683 = load i64, ptr %637, align 1, !tbaa !22
  %684 = getelementptr inbounds nuw i8, ptr %638, i64 %635
  %685 = getelementptr inbounds nuw i8, ptr %637, i64 %635
  %686 = icmp ult ptr %684, %636
  br i1 %686, label %707, label %687

687:                                              ; preds = %680
  %688 = add i64 %635, 1
  %689 = getelementptr inbounds nuw i8, ptr %637, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %689, i32 0, i32 3, i32 1)
  %690 = getelementptr inbounds nuw i8, ptr %637, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %690, i32 0, i32 3, i32 1)
  %691 = getelementptr inbounds nuw i8, ptr %636, i64 128
  br label %707

692:                                              ; preds = %631
  %693 = getelementptr inbounds i8, ptr %638, i64 %629
  %694 = getelementptr inbounds i8, ptr %638, i64 -1
  %695 = load i8, ptr %694, align 1, !tbaa !34
  %696 = getelementptr inbounds i8, ptr %693, i64 -1
  %697 = load i8, ptr %696, align 1, !tbaa !34
  %698 = icmp eq i8 %695, %697
  %699 = sext i1 %698 to i64
  %700 = getelementptr inbounds i8, ptr %638, i64 %699
  %701 = getelementptr inbounds i8, ptr %693, i64 %699
  %702 = select i1 %698, i64 5, i64 4
  %703 = ptrtoint ptr %639 to i64
  %704 = sub i64 %703, %21
  %705 = trunc i64 %704 to i32
  %706 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %642
  store i32 %705, ptr %706, align 4, !tbaa !23
  br label %.loopexit531

707:                                              ; preds = %687, %680
  %708 = phi i64 [ %635, %680 ], [ %688, %687 ]
  %709 = phi ptr [ %636, %680 ], [ %691, %687 ]
  %710 = icmp ult ptr %685, %39
  br i1 %710, label %631, label %.loopexit490, !llvm.loop !35

.loopexit535:                                     ; preds = %659, %678
  %711 = phi ptr [ %638, %678 ], [ %639, %659 ]
  %712 = phi i64 [ %666, %678 ], [ %642, %659 ]
  %713 = phi i64 [ %667, %678 ], [ %645, %659 ]
  %714 = phi i64 [ %670, %678 ], [ %653, %659 ]
  %715 = phi i32 [ %663, %678 ], [ %634, %659 ]
  %716 = phi i32 [ %669, %678 ], [ %647, %659 ]
  %717 = phi ptr [ %639, %678 ], [ %640, %659 ]
  %718 = ptrtoint ptr %711 to i64
  %719 = sub i64 %718, %21
  %720 = trunc i64 %719 to i32
  %721 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %712
  store i32 %720, ptr %721, align 4, !tbaa !23
  br label %722

722:                                              ; preds = %.loopexit535, %678
  %723 = phi i64 [ %667, %678 ], [ %713, %.loopexit535 ]
  %724 = phi i64 [ %670, %678 ], [ %714, %.loopexit535 ]
  %725 = phi i32 [ %663, %678 ], [ %715, %.loopexit535 ]
  %726 = phi i32 [ %669, %678 ], [ %716, %.loopexit535 ]
  %727 = phi ptr [ %639, %678 ], [ %717, %.loopexit535 ]
  %728 = getelementptr inbounds nuw i8, ptr %19, i64 %724
  %729 = ptrtoint ptr %728 to i64
  %730 = sub i64 %723, %729
  %731 = trunc i64 %730 to i32
  %732 = add i32 %731, 3
  %733 = icmp ugt ptr %727, %616
  %734 = icmp ugt i32 %725, %35
  %735 = and i1 %734, %733
  br i1 %735, label %.preheader530, label %.loopexit531

.preheader530:                                    ; preds = %722, %744
  %736 = phi ptr [ %739, %744 ], [ %727, %722 ]
  %737 = phi i64 [ %745, %744 ], [ 4, %722 ]
  %738 = phi ptr [ %741, %744 ], [ %728, %722 ]
  %739 = getelementptr inbounds i8, ptr %736, i64 -1
  %740 = load i8, ptr %739, align 1, !tbaa !34
  %741 = getelementptr inbounds i8, ptr %738, i64 -1
  %742 = load i8, ptr %741, align 1, !tbaa !34
  %743 = icmp eq i8 %740, %742
  br i1 %743, label %744, label %.loopexit531

744:                                              ; preds = %.preheader530
  %745 = add i64 %737, 1
  %746 = icmp ugt ptr %739, %616
  %747 = icmp ugt ptr %741, %37
  %748 = and i1 %746, %747
  br i1 %748, label %.preheader530, label %.loopexit531, !llvm.loop !36

.loopexit531:                                     ; preds = %744, %.preheader530, %722, %692
  %749 = phi i32 [ %647, %692 ], [ %726, %722 ], [ %726, %.preheader530 ], [ %726, %744 ]
  %750 = phi i32 [ %619, %692 ], [ %618, %722 ], [ %618, %.preheader530 ], [ %618, %744 ]
  %751 = phi i32 [ 1, %692 ], [ %732, %722 ], [ %732, %.preheader530 ], [ %732, %744 ]
  %752 = phi ptr [ %701, %692 ], [ %728, %722 ], [ %741, %744 ], [ %738, %.preheader530 ]
  %753 = phi i64 [ %702, %692 ], [ 4, %722 ], [ %745, %744 ], [ %737, %.preheader530 ]
  %754 = phi i32 [ %618, %692 ], [ %731, %722 ], [ %731, %.preheader530 ], [ %731, %744 ]
  %755 = phi ptr [ %700, %692 ], [ %727, %722 ], [ %739, %744 ], [ %736, %.preheader530 ]
  %756 = getelementptr inbounds nuw i8, ptr %755, i64 %753
  %757 = getelementptr inbounds nuw i8, ptr %752, i64 %753
  %758 = icmp ult ptr %756, %604
  br i1 %758, label %759, label %.loopexit529

759:                                              ; preds = %.loopexit531
  %760 = load i64, ptr %757, align 1, !tbaa !22
  %761 = load i64, ptr %756, align 1, !tbaa !22
  %762 = icmp eq i64 %760, %761
  br i1 %762, label %.preheader528, label %763

763:                                              ; preds = %759
  %764 = xor i64 %761, %760
  %765 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %764, i1 true)
  %766 = lshr i64 %765, 3
  br label %820

.preheader528:                                    ; preds = %759, %772
  %767 = phi ptr [ %770, %772 ], [ %757, %759 ]
  %768 = phi ptr [ %769, %772 ], [ %756, %759 ]
  %769 = getelementptr inbounds nuw i8, ptr %768, i64 8
  %770 = getelementptr inbounds nuw i8, ptr %767, i64 8
  %771 = icmp ult ptr %769, %604
  br i1 %771, label %772, label %.loopexit529

772:                                              ; preds = %.preheader528
  %773 = load i64, ptr %770, align 1, !tbaa !22
  %774 = load i64, ptr %769, align 1, !tbaa !22
  %775 = icmp eq i64 %773, %774
  br i1 %775, label %.preheader528, label %776

776:                                              ; preds = %772
  %777 = xor i64 %774, %773
  %778 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %777, i1 true)
  %779 = lshr i64 %778, 3
  %780 = getelementptr inbounds nuw i8, ptr %769, i64 %779
  %781 = ptrtoint ptr %780 to i64
  %782 = ptrtoint ptr %756 to i64
  %783 = sub i64 %781, %782
  br label %820

.loopexit529:                                     ; preds = %.preheader528, %.loopexit531
  %784 = phi ptr [ %757, %.loopexit531 ], [ %770, %.preheader528 ]
  %785 = phi ptr [ %756, %.loopexit531 ], [ %769, %.preheader528 ]
  %786 = icmp ult ptr %785, %605
  br i1 %786, label %787, label %794

787:                                              ; preds = %.loopexit529
  %788 = load i32, ptr %784, align 1, !tbaa !23
  %789 = load i32, ptr %785, align 1, !tbaa !23
  %790 = icmp eq i32 %788, %789
  br i1 %790, label %791, label %794

791:                                              ; preds = %787
  %792 = getelementptr inbounds nuw i8, ptr %785, i64 4
  %793 = getelementptr inbounds nuw i8, ptr %784, i64 4
  br label %794

794:                                              ; preds = %791, %787, %.loopexit529
  %795 = phi ptr [ %793, %791 ], [ %784, %787 ], [ %784, %.loopexit529 ]
  %796 = phi ptr [ %792, %791 ], [ %785, %787 ], [ %785, %.loopexit529 ]
  %797 = icmp ult ptr %796, %606
  br i1 %797, label %798, label %805

798:                                              ; preds = %794
  %799 = load i16, ptr %795, align 1, !tbaa !37
  %800 = load i16, ptr %796, align 1, !tbaa !37
  %801 = icmp eq i16 %799, %800
  br i1 %801, label %802, label %805

802:                                              ; preds = %798
  %803 = getelementptr inbounds nuw i8, ptr %796, i64 2
  %804 = getelementptr inbounds nuw i8, ptr %795, i64 2
  br label %805

805:                                              ; preds = %802, %798, %794
  %806 = phi ptr [ %804, %802 ], [ %795, %798 ], [ %795, %794 ]
  %807 = phi ptr [ %803, %802 ], [ %796, %798 ], [ %796, %794 ]
  %808 = icmp ult ptr %807, %38
  br i1 %808, label %809, label %815

809:                                              ; preds = %805
  %810 = load i8, ptr %806, align 1, !tbaa !34
  %811 = load i8, ptr %807, align 1, !tbaa !34
  %812 = icmp eq i8 %810, %811
  %813 = zext i1 %812 to i64
  %814 = getelementptr inbounds nuw i8, ptr %807, i64 %813
  br label %815

815:                                              ; preds = %809, %805
  %816 = phi ptr [ %807, %805 ], [ %814, %809 ]
  %817 = ptrtoint ptr %816 to i64
  %818 = ptrtoint ptr %756 to i64
  %819 = sub i64 %817, %818
  br label %820

820:                                              ; preds = %815, %776, %763
  %821 = phi i64 [ %819, %815 ], [ %766, %763 ], [ %783, %776 ]
  %822 = add i64 %821, %753
  %823 = ptrtoint ptr %755 to i64
  %824 = ptrtoint ptr %616 to i64
  %825 = sub i64 %823, %824
  %826 = icmp ugt ptr %755, %607
  %827 = load ptr, ptr %608, align 8, !tbaa !39
  br i1 %826, label %850, label %828

828:                                              ; preds = %820
  %829 = load <2 x i64>, ptr %616, align 1, !tbaa !34
  store <2 x i64> %829, ptr %827, align 1, !tbaa !34
  %830 = icmp ugt i64 %825, 16
  br i1 %830, label %831, label %961

831:                                              ; preds = %828
  %832 = load ptr, ptr %608, align 8, !tbaa !39
  %833 = getelementptr inbounds nuw i8, ptr %832, i64 16
  %834 = getelementptr inbounds nuw i8, ptr %616, i64 16
  %835 = getelementptr i8, ptr %832, i64 %825
  %836 = load <2 x i64>, ptr %834, align 1, !tbaa !34
  store <2 x i64> %836, ptr %833, align 1, !tbaa !34
  %837 = icmp ult i64 %825, 33
  br i1 %837, label %961, label %838

838:                                              ; preds = %831
  %839 = getelementptr inbounds nuw i8, ptr %832, i64 32
  br label %840

840:                                              ; preds = %840, %838
  %841 = phi ptr [ %839, %838 ], [ %848, %840 ]
  %842 = phi ptr [ %834, %838 ], [ %846, %840 ]
  %843 = getelementptr inbounds nuw i8, ptr %842, i64 16
  %844 = load <2 x i64>, ptr %843, align 1, !tbaa !34
  store <2 x i64> %844, ptr %841, align 1, !tbaa !34
  %845 = getelementptr inbounds nuw i8, ptr %841, i64 16
  %846 = getelementptr inbounds nuw i8, ptr %842, i64 32
  %847 = load <2 x i64>, ptr %846, align 1, !tbaa !34
  store <2 x i64> %847, ptr %845, align 1, !tbaa !34
  %848 = getelementptr inbounds nuw i8, ptr %841, i64 32
  %849 = icmp ult ptr %848, %835
  br i1 %849, label %840, label %.loopexit523, !llvm.loop !42

850:                                              ; preds = %820
  %851 = icmp ugt ptr %616, %607
  br i1 %851, label %.loopexit526, label %852

852:                                              ; preds = %850
  %853 = sub i64 %609, %824
  %854 = getelementptr inbounds i8, ptr %827, i64 %853
  %855 = load <2 x i64>, ptr %616, align 1, !tbaa !34
  store <2 x i64> %855, ptr %827, align 1, !tbaa !34
  %856 = icmp ult i64 %853, 17
  br i1 %856, label %.loopexit526, label %857

857:                                              ; preds = %852
  %858 = getelementptr inbounds nuw i8, ptr %827, i64 16
  br label %859

859:                                              ; preds = %859, %857
  %860 = phi ptr [ %858, %857 ], [ %867, %859 ]
  %861 = phi ptr [ %616, %857 ], [ %865, %859 ]
  %862 = getelementptr inbounds nuw i8, ptr %861, i64 16
  %863 = load <2 x i64>, ptr %862, align 1, !tbaa !34
  store <2 x i64> %863, ptr %860, align 1, !tbaa !34
  %864 = getelementptr inbounds nuw i8, ptr %860, i64 16
  %865 = getelementptr inbounds nuw i8, ptr %861, i64 32
  %866 = load <2 x i64>, ptr %865, align 1, !tbaa !34
  store <2 x i64> %866, ptr %864, align 1, !tbaa !34
  %867 = getelementptr inbounds nuw i8, ptr %860, i64 32
  %868 = icmp ult ptr %867, %854
  br i1 %868, label %859, label %.loopexit526, !llvm.loop !42

.loopexit526:                                     ; preds = %859, %852, %850
  %869 = phi ptr [ %607, %852 ], [ %616, %850 ], [ %607, %859 ]
  %870 = phi ptr [ %854, %852 ], [ %827, %850 ], [ %854, %859 ]
  %871 = icmp ult ptr %869, %755
  br i1 %871, label %872, label %.loopexit523

872:                                              ; preds = %.loopexit526
  %873 = ptrtoint ptr %869 to i64
  %874 = ptrtoint ptr %870 to i64
  %875 = sub i64 %823, %873
  %876 = icmp ult i64 %875, 4
  %877 = sub i64 %874, %873
  %878 = icmp ult i64 %877, 32
  %879 = select i1 %876, i1 true, i1 %878
  br i1 %879, label %915, label %880

880:                                              ; preds = %872
  %881 = icmp ult i64 %875, 32
  br i1 %881, label %901, label %882

882:                                              ; preds = %880
  %883 = and i64 %875, -32
  br label %884

884:                                              ; preds = %884, %882
  %885 = phi i64 [ 0, %882 ], [ %892, %884 ]
  %886 = getelementptr i8, ptr %870, i64 %885
  %887 = getelementptr i8, ptr %869, i64 %885
  %888 = getelementptr i8, ptr %887, i64 16
  %889 = load <16 x i8>, ptr %887, align 1, !tbaa !34
  %890 = load <16 x i8>, ptr %888, align 1, !tbaa !34
  %891 = getelementptr i8, ptr %886, i64 16
  store <16 x i8> %889, ptr %886, align 1, !tbaa !34
  store <16 x i8> %890, ptr %891, align 1, !tbaa !34
  %892 = add nuw i64 %885, 32
  %893 = icmp eq i64 %892, %883
  br i1 %893, label %894, label %884, !llvm.loop !60

894:                                              ; preds = %884
  %895 = icmp eq i64 %875, %883
  br i1 %895, label %.loopexit523, label %896

896:                                              ; preds = %894
  %897 = getelementptr i8, ptr %870, i64 %883
  %898 = getelementptr i8, ptr %869, i64 %883
  %899 = and i64 %875, 28
  %900 = icmp eq i64 %899, 0
  br i1 %900, label %915, label %901

901:                                              ; preds = %896, %880
  %902 = phi i64 [ %883, %896 ], [ 0, %880 ]
  %903 = and i64 %875, -4
  br label %904

904:                                              ; preds = %904, %901
  %905 = phi i64 [ %902, %901 ], [ %909, %904 ]
  %906 = getelementptr i8, ptr %870, i64 %905
  %907 = getelementptr i8, ptr %869, i64 %905
  %908 = load <4 x i8>, ptr %907, align 1, !tbaa !34
  store <4 x i8> %908, ptr %906, align 1, !tbaa !34
  %909 = add nuw i64 %905, 4
  %910 = icmp eq i64 %909, %903
  br i1 %910, label %911, label %904, !llvm.loop !61

911:                                              ; preds = %904
  %912 = getelementptr i8, ptr %870, i64 %903
  %913 = getelementptr i8, ptr %869, i64 %903
  %914 = icmp eq i64 %875, %903
  br i1 %914, label %.loopexit523, label %915

915:                                              ; preds = %911, %896, %872
  %916 = phi ptr [ %870, %872 ], [ %897, %896 ], [ %912, %911 ]
  %917 = phi ptr [ %869, %872 ], [ %898, %896 ], [ %913, %911 ]
  %918 = ptrtoint ptr %917 to i64
  %919 = sub i64 %823, %918
  %920 = and i64 %919, 7
  %921 = icmp eq i64 %920, 0
  br i1 %921, label %.loopexit525, label %.preheader524

.preheader524:                                    ; preds = %915, %.preheader524
  %922 = phi ptr [ %927, %.preheader524 ], [ %916, %915 ]
  %923 = phi ptr [ %925, %.preheader524 ], [ %917, %915 ]
  %924 = phi i64 [ %928, %.preheader524 ], [ 0, %915 ]
  %925 = getelementptr inbounds nuw i8, ptr %923, i64 1
  %926 = load i8, ptr %923, align 1, !tbaa !34
  %927 = getelementptr inbounds nuw i8, ptr %922, i64 1
  store i8 %926, ptr %922, align 1, !tbaa !34
  %928 = add nuw nsw i64 %924, 1
  %929 = icmp eq i64 %928, %920
  br i1 %929, label %.loopexit525, label %.preheader524, !llvm.loop !62

.loopexit525:                                     ; preds = %.preheader524, %915
  %930 = phi ptr [ %916, %915 ], [ %927, %.preheader524 ]
  %931 = phi ptr [ %917, %915 ], [ %925, %.preheader524 ]
  %932 = sub i64 %918, %823
  %933 = icmp ugt i64 %932, -8
  br i1 %933, label %.loopexit523, label %.preheader522

.preheader522:                                    ; preds = %.loopexit525, %.preheader522
  %934 = phi ptr [ %959, %.preheader522 ], [ %930, %.loopexit525 ]
  %935 = phi ptr [ %957, %.preheader522 ], [ %931, %.loopexit525 ]
  %936 = getelementptr inbounds nuw i8, ptr %935, i64 1
  %937 = load i8, ptr %935, align 1, !tbaa !34
  %938 = getelementptr inbounds nuw i8, ptr %934, i64 1
  store i8 %937, ptr %934, align 1, !tbaa !34
  %939 = getelementptr inbounds nuw i8, ptr %935, i64 2
  %940 = load i8, ptr %936, align 1, !tbaa !34
  %941 = getelementptr inbounds nuw i8, ptr %934, i64 2
  store i8 %940, ptr %938, align 1, !tbaa !34
  %942 = getelementptr inbounds nuw i8, ptr %935, i64 3
  %943 = load i8, ptr %939, align 1, !tbaa !34
  %944 = getelementptr inbounds nuw i8, ptr %934, i64 3
  store i8 %943, ptr %941, align 1, !tbaa !34
  %945 = getelementptr inbounds nuw i8, ptr %935, i64 4
  %946 = load i8, ptr %942, align 1, !tbaa !34
  %947 = getelementptr inbounds nuw i8, ptr %934, i64 4
  store i8 %946, ptr %944, align 1, !tbaa !34
  %948 = getelementptr inbounds nuw i8, ptr %935, i64 5
  %949 = load i8, ptr %945, align 1, !tbaa !34
  %950 = getelementptr inbounds nuw i8, ptr %934, i64 5
  store i8 %949, ptr %947, align 1, !tbaa !34
  %951 = getelementptr inbounds nuw i8, ptr %935, i64 6
  %952 = load i8, ptr %948, align 1, !tbaa !34
  %953 = getelementptr inbounds nuw i8, ptr %934, i64 6
  store i8 %952, ptr %950, align 1, !tbaa !34
  %954 = getelementptr inbounds nuw i8, ptr %935, i64 7
  %955 = load i8, ptr %951, align 1, !tbaa !34
  %956 = getelementptr inbounds nuw i8, ptr %934, i64 7
  store i8 %955, ptr %953, align 1, !tbaa !34
  %957 = getelementptr inbounds nuw i8, ptr %935, i64 8
  %958 = load i8, ptr %954, align 1, !tbaa !34
  %959 = getelementptr inbounds nuw i8, ptr %934, i64 8
  store i8 %958, ptr %956, align 1, !tbaa !34
  %960 = icmp eq ptr %957, %755
  br i1 %960, label %.loopexit523, label %.preheader522, !llvm.loop !63

961:                                              ; preds = %831, %828
  %962 = load ptr, ptr %608, align 8, !tbaa !39
  %963 = getelementptr inbounds nuw i8, ptr %962, i64 %825
  store ptr %963, ptr %608, align 8, !tbaa !39
  %964 = load ptr, ptr %611, align 8, !tbaa !50
  br label %976

.loopexit523:                                     ; preds = %840, %.preheader522, %.loopexit525, %911, %894, %.loopexit526
  %965 = load ptr, ptr %608, align 8, !tbaa !39
  %966 = getelementptr inbounds nuw i8, ptr %965, i64 %825
  store ptr %966, ptr %608, align 8, !tbaa !39
  %967 = icmp ugt i64 %825, 65535
  %968 = load ptr, ptr %611, align 8, !tbaa !50
  br i1 %967, label %969, label %976, !prof !51

969:                                              ; preds = %.loopexit523
  store i32 1, ptr %610, align 8, !tbaa !52
  %970 = load ptr, ptr %1, align 8, !tbaa !53
  %971 = ptrtoint ptr %968 to i64
  %972 = ptrtoint ptr %970 to i64
  %973 = sub i64 %971, %972
  %974 = lshr exact i64 %973, 3
  %975 = trunc i64 %974 to i32
  store i32 %975, ptr %612, align 4, !tbaa !54
  br label %976

976:                                              ; preds = %969, %.loopexit523, %961
  %977 = phi ptr [ %964, %961 ], [ %968, %969 ], [ %968, %.loopexit523 ]
  %978 = trunc i64 %825 to i16
  %979 = getelementptr inbounds nuw i8, ptr %977, i64 4
  store i16 %978, ptr %979, align 4, !tbaa !55
  store i32 %751, ptr %977, align 4, !tbaa !57
  %980 = add i64 %822, -3
  %981 = icmp ugt i64 %980, 65535
  br i1 %981, label %982, label %989, !prof !58

982:                                              ; preds = %976
  store i32 2, ptr %610, align 8, !tbaa !52
  %983 = load ptr, ptr %1, align 8, !tbaa !53
  %984 = ptrtoint ptr %977 to i64
  %985 = ptrtoint ptr %983 to i64
  %986 = sub i64 %984, %985
  %987 = lshr exact i64 %986, 3
  %988 = trunc i64 %987 to i32
  store i32 %988, ptr %612, align 4, !tbaa !54
  br label %989

989:                                              ; preds = %982, %976
  %990 = trunc i64 %980 to i16
  %991 = getelementptr inbounds nuw i8, ptr %977, i64 6
  store i16 %990, ptr %991, align 2, !tbaa !59
  %992 = getelementptr inbounds nuw i8, ptr %977, i64 8
  store ptr %992, ptr %611, align 8, !tbaa !50
  %993 = getelementptr inbounds nuw i8, ptr %755, i64 %822
  %994 = icmp ugt ptr %993, %39
  br i1 %994, label %.loopexit518, label %995

995:                                              ; preds = %989
  %996 = add i32 %749, 2
  %997 = zext i32 %749 to i64
  %998 = getelementptr inbounds nuw i8, ptr %59, i64 %997
  %999 = load i64, ptr %998, align 1, !tbaa !22
  %1000 = mul i64 %999, -3523014627271114752
  %1001 = lshr i64 %1000, %603
  %1002 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %1001
  store i32 %996, ptr %1002, align 4, !tbaa !23
  %1003 = getelementptr inbounds i8, ptr %993, i64 -2
  %1004 = ptrtoint ptr %1003 to i64
  %1005 = sub i64 %1004, %21
  %1006 = trunc i64 %1005 to i32
  %1007 = load i64, ptr %1003, align 1, !tbaa !22
  %1008 = mul i64 %1007, -3523014627271114752
  %1009 = lshr i64 %1008, %603
  %1010 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %1009
  store i32 %1006, ptr %1010, align 4, !tbaa !23
  %1011 = icmp eq i32 %750, 0
  br i1 %1011, label %.loopexit518, label %.preheader517

.preheader517:                                    ; preds = %995, %1115
  %1012 = phi ptr [ %1118, %1115 ], [ %992, %995 ]
  %1013 = phi ptr [ %1097, %1115 ], [ %993, %995 ]
  %1014 = phi i32 [ %1015, %1115 ], [ %754, %995 ]
  %1015 = phi i32 [ %1014, %1115 ], [ %750, %995 ]
  %1016 = load i32, ptr %1013, align 1, !tbaa !23
  %1017 = zext i32 %1015 to i64
  %1018 = sub nsw i64 0, %1017
  %1019 = getelementptr inbounds i8, ptr %1013, i64 %1018
  %1020 = load i32, ptr %1019, align 1, !tbaa !23
  %1021 = icmp eq i32 %1016, %1020
  br i1 %1021, label %1022, label %.loopexit518

1022:                                             ; preds = %.preheader517
  %1023 = getelementptr inbounds nuw i8, ptr %1013, i64 4
  %1024 = getelementptr inbounds i8, ptr %1023, i64 %1018
  %1025 = icmp ult ptr %1023, %604
  br i1 %1025, label %1026, label %.loopexit516

1026:                                             ; preds = %1022
  %1027 = load i64, ptr %1024, align 1, !tbaa !22
  %1028 = load i64, ptr %1023, align 1, !tbaa !22
  %1029 = icmp eq i64 %1027, %1028
  br i1 %1029, label %.preheader515, label %1030

1030:                                             ; preds = %1026
  %1031 = xor i64 %1028, %1027
  %1032 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1031, i1 true)
  %1033 = lshr i64 %1032, 3
  br label %1087

.preheader515:                                    ; preds = %1026, %1039
  %1034 = phi ptr [ %1037, %1039 ], [ %1024, %1026 ]
  %1035 = phi ptr [ %1036, %1039 ], [ %1023, %1026 ]
  %1036 = getelementptr inbounds nuw i8, ptr %1035, i64 8
  %1037 = getelementptr inbounds nuw i8, ptr %1034, i64 8
  %1038 = icmp ult ptr %1036, %604
  br i1 %1038, label %1039, label %.loopexit516

1039:                                             ; preds = %.preheader515
  %1040 = load i64, ptr %1037, align 1, !tbaa !22
  %1041 = load i64, ptr %1036, align 1, !tbaa !22
  %1042 = icmp eq i64 %1040, %1041
  br i1 %1042, label %.preheader515, label %1043

1043:                                             ; preds = %1039
  %1044 = xor i64 %1041, %1040
  %1045 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1044, i1 true)
  %1046 = lshr i64 %1045, 3
  %1047 = getelementptr inbounds nuw i8, ptr %1036, i64 %1046
  %1048 = ptrtoint ptr %1047 to i64
  %1049 = ptrtoint ptr %1023 to i64
  %1050 = sub i64 %1048, %1049
  br label %1087

.loopexit516:                                     ; preds = %.preheader515, %1022
  %1051 = phi ptr [ %1024, %1022 ], [ %1037, %.preheader515 ]
  %1052 = phi ptr [ %1023, %1022 ], [ %1036, %.preheader515 ]
  %1053 = icmp ult ptr %1052, %605
  br i1 %1053, label %1054, label %1061

1054:                                             ; preds = %.loopexit516
  %1055 = load i32, ptr %1051, align 1, !tbaa !23
  %1056 = load i32, ptr %1052, align 1, !tbaa !23
  %1057 = icmp eq i32 %1055, %1056
  br i1 %1057, label %1058, label %1061

1058:                                             ; preds = %1054
  %1059 = getelementptr inbounds nuw i8, ptr %1052, i64 4
  %1060 = getelementptr inbounds nuw i8, ptr %1051, i64 4
  br label %1061

1061:                                             ; preds = %1058, %1054, %.loopexit516
  %1062 = phi ptr [ %1060, %1058 ], [ %1051, %1054 ], [ %1051, %.loopexit516 ]
  %1063 = phi ptr [ %1059, %1058 ], [ %1052, %1054 ], [ %1052, %.loopexit516 ]
  %1064 = icmp ult ptr %1063, %606
  br i1 %1064, label %1065, label %1072

1065:                                             ; preds = %1061
  %1066 = load i16, ptr %1062, align 1, !tbaa !37
  %1067 = load i16, ptr %1063, align 1, !tbaa !37
  %1068 = icmp eq i16 %1066, %1067
  br i1 %1068, label %1069, label %1072

1069:                                             ; preds = %1065
  %1070 = getelementptr inbounds nuw i8, ptr %1063, i64 2
  %1071 = getelementptr inbounds nuw i8, ptr %1062, i64 2
  br label %1072

1072:                                             ; preds = %1069, %1065, %1061
  %1073 = phi ptr [ %1071, %1069 ], [ %1062, %1065 ], [ %1062, %1061 ]
  %1074 = phi ptr [ %1070, %1069 ], [ %1063, %1065 ], [ %1063, %1061 ]
  %1075 = icmp ult ptr %1074, %38
  br i1 %1075, label %1076, label %1082

1076:                                             ; preds = %1072
  %1077 = load i8, ptr %1073, align 1, !tbaa !34
  %1078 = load i8, ptr %1074, align 1, !tbaa !34
  %1079 = icmp eq i8 %1077, %1078
  %1080 = zext i1 %1079 to i64
  %1081 = getelementptr inbounds nuw i8, ptr %1074, i64 %1080
  br label %1082

1082:                                             ; preds = %1076, %1072
  %1083 = phi ptr [ %1074, %1072 ], [ %1081, %1076 ]
  %1084 = ptrtoint ptr %1083 to i64
  %1085 = ptrtoint ptr %1023 to i64
  %1086 = sub i64 %1084, %1085
  br label %1087

1087:                                             ; preds = %1082, %1043, %1030
  %1088 = phi i64 [ %1086, %1082 ], [ %1033, %1030 ], [ %1050, %1043 ]
  %1089 = ptrtoint ptr %1013 to i64
  %1090 = sub i64 %1089, %21
  %1091 = trunc i64 %1090 to i32
  %1092 = load i64, ptr %1013, align 1, !tbaa !22
  %1093 = mul i64 %1092, -3523014627271114752
  %1094 = lshr i64 %1093, %603
  %1095 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %1094
  store i32 %1091, ptr %1095, align 4, !tbaa !23
  %1096 = getelementptr i8, ptr %1013, i64 %1088
  %1097 = getelementptr i8, ptr %1096, i64 4
  %1098 = icmp ugt ptr %1013, %607
  br i1 %1098, label %1103, label %1099

1099:                                             ; preds = %1087
  %1100 = load ptr, ptr %608, align 8, !tbaa !39
  %1101 = load <2 x i64>, ptr %1013, align 1, !tbaa !34
  store <2 x i64> %1101, ptr %1100, align 1, !tbaa !34
  %1102 = load ptr, ptr %611, align 8, !tbaa !50
  br label %1103

1103:                                             ; preds = %1099, %1087
  %1104 = phi ptr [ %1012, %1087 ], [ %1102, %1099 ]
  %1105 = getelementptr inbounds nuw i8, ptr %1104, i64 4
  store i16 0, ptr %1105, align 4, !tbaa !55
  store i32 1, ptr %1104, align 4, !tbaa !57
  %1106 = add i64 %1088, 1
  %1107 = icmp ugt i64 %1106, 65535
  br i1 %1107, label %1108, label %1115, !prof !58

1108:                                             ; preds = %1103
  store i32 2, ptr %610, align 8, !tbaa !52
  %1109 = load ptr, ptr %1, align 8, !tbaa !53
  %1110 = ptrtoint ptr %1104 to i64
  %1111 = ptrtoint ptr %1109 to i64
  %1112 = sub i64 %1110, %1111
  %1113 = lshr exact i64 %1112, 3
  %1114 = trunc i64 %1113 to i32
  store i32 %1114, ptr %612, align 4, !tbaa !54
  br label %1115

1115:                                             ; preds = %1108, %1103
  %1116 = trunc i64 %1106 to i16
  %1117 = getelementptr inbounds nuw i8, ptr %1104, i64 6
  store i16 %1116, ptr %1117, align 2, !tbaa !59
  %1118 = getelementptr inbounds nuw i8, ptr %1104, i64 8
  store ptr %1118, ptr %611, align 8, !tbaa !50
  %1119 = icmp ugt ptr %1097, %39
  br i1 %1119, label %.loopexit518, label %.preheader517

.loopexit518:                                     ; preds = %1115, %.preheader517, %995, %989
  %1120 = phi i32 [ 0, %995 ], [ %750, %989 ], [ %1015, %.preheader517 ], [ %1014, %1115 ]
  %1121 = phi i32 [ %754, %995 ], [ %754, %989 ], [ %1014, %.preheader517 ], [ %1015, %1115 ]
  %1122 = phi ptr [ %993, %995 ], [ %993, %989 ], [ %1013, %.preheader517 ], [ %1097, %1115 ]
  %1123 = getelementptr inbounds nuw i8, ptr %1122, i64 %17
  %1124 = getelementptr inbounds nuw i8, ptr %1123, i64 1
  %1125 = icmp ult ptr %1124, %39
  br i1 %1125, label %613, label %.loopexit490

1126:                                             ; preds = %63
  br i1 %62, label %1127, label %.loopexit490

1127:                                             ; preds = %1126
  %1128 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %1129 = load i32, ptr %1128, align 4, !tbaa !21
  %1130 = sub i32 64, %1129
  %1131 = zext nneg i32 %1130 to i64
  %1132 = getelementptr inbounds i8, ptr %38, i64 -7
  %1133 = getelementptr inbounds i8, ptr %38, i64 -3
  %1134 = getelementptr inbounds i8, ptr %38, i64 -1
  %1135 = getelementptr inbounds i8, ptr %38, i64 -32
  %1136 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %1137 = ptrtoint ptr %1135 to i64
  %1138 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %1139 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %1140 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %1141

1141:                                             ; preds = %.loopexit541, %1127
  %1142 = phi ptr [ %61, %1127 ], [ %1652, %.loopexit541 ]
  %1143 = phi ptr [ %60, %1127 ], [ %1651, %.loopexit541 ]
  %1144 = phi ptr [ %3, %1127 ], [ %1650, %.loopexit541 ]
  %1145 = phi ptr [ %45, %1127 ], [ %1650, %.loopexit541 ]
  %1146 = phi i32 [ %58, %1127 ], [ %1649, %.loopexit541 ]
  %1147 = phi i32 [ %56, %1127 ], [ %1648, %.loopexit541 ]
  %1148 = getelementptr inbounds nuw i8, ptr %1145, i64 1
  %1149 = getelementptr inbounds nuw i8, ptr %1145, i64 128
  %1150 = load i64, ptr %1145, align 1, !tbaa !22
  %1151 = mul i64 %1150, -3523014627193847808
  %1152 = lshr i64 %1151, %1131
  %1153 = load i64, ptr %1148, align 1, !tbaa !22
  %1154 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %1152
  %1155 = load i32, ptr %1154, align 4, !tbaa !23
  %1156 = zext i32 %1146 to i64
  %1157 = sub nsw i64 0, %1156
  %1158 = icmp ne i32 %1146, 0
  br label %1159

1159:                                             ; preds = %1235, %1141
  %1160 = phi i64 [ %1152, %1141 ], [ %1194, %1235 ]
  %1161 = phi i64 [ %1153, %1141 ], [ %1211, %1235 ]
  %1162 = phi i32 [ %1155, %1141 ], [ %1210, %1235 ]
  %1163 = phi i64 [ %17, %1141 ], [ %1236, %1235 ]
  %1164 = phi ptr [ %1149, %1141 ], [ %1237, %1235 ]
  %1165 = phi ptr [ %1142, %1141 ], [ %1213, %1235 ]
  %1166 = phi ptr [ %1143, %1141 ], [ %1212, %1235 ]
  %1167 = phi ptr [ %1148, %1141 ], [ %1165, %1235 ]
  %1168 = phi ptr [ %1145, %1141 ], [ %1166, %1235 ]
  %1169 = mul i64 %1161, -3523014627193847808
  %1170 = lshr i64 %1169, %1131
  %1171 = getelementptr inbounds i8, ptr %1166, i64 %1157
  %1172 = load i32, ptr %1171, align 1, !tbaa !23
  %1173 = ptrtoint ptr %1168 to i64
  %1174 = sub i64 %1173, %21
  %1175 = trunc i64 %1174 to i32
  %1176 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %1160
  store i32 %1175, ptr %1176, align 4, !tbaa !23
  %1177 = load i32, ptr %1166, align 1, !tbaa !23
  %1178 = icmp eq i32 %1177, %1172
  %1179 = and i1 %1158, %1178
  br i1 %1179, label %1220, label %1180

1180:                                             ; preds = %1159
  %1181 = zext i32 %1162 to i64
  %1182 = getelementptr inbounds nuw i8, ptr %19, i64 %1181
  %1183 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1162, i32 %35, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %1182) #6, !srcloc !32
  %1184 = load i32, ptr %1168, align 1, !tbaa !23
  %1185 = load i32, ptr %1183, align 1, !tbaa !23
  %1186 = icmp eq i32 %1184, %1185
  br i1 %1186, label %1187, label %1189

1187:                                             ; preds = %1180
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !33
  %1188 = icmp ult i32 %1162, %35
  br i1 %1188, label %1189, label %.loopexit558

1189:                                             ; preds = %1187, %1180
  %1190 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %1170
  %1191 = load i32, ptr %1190, align 4, !tbaa !23
  %1192 = load i64, ptr %1166, align 1, !tbaa !22
  %1193 = mul i64 %1192, -3523014627193847808
  %1194 = lshr i64 %1193, %1131
  %1195 = ptrtoint ptr %1167 to i64
  %1196 = sub i64 %1195, %21
  %1197 = trunc i64 %1196 to i32
  store i32 %1197, ptr %1190, align 4, !tbaa !23
  %1198 = zext i32 %1191 to i64
  %1199 = getelementptr inbounds nuw i8, ptr %19, i64 %1198
  %1200 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1191, i32 %35, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %1199) #6, !srcloc !32
  %1201 = load i32, ptr %1167, align 1, !tbaa !23
  %1202 = load i32, ptr %1200, align 1, !tbaa !23
  %1203 = icmp eq i32 %1201, %1202
  br i1 %1203, label %1204, label %1208

1204:                                             ; preds = %1189
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !33
  %1205 = icmp ult i32 %1191, %35
  br i1 %1205, label %1208, label %1206

1206:                                             ; preds = %1204
  %1207 = icmp ult i64 %1163, 5
  br i1 %1207, label %.loopexit558, label %1250

1208:                                             ; preds = %1204, %1189
  %1209 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %1194
  %1210 = load i32, ptr %1209, align 4, !tbaa !23
  %1211 = load i64, ptr %1165, align 1, !tbaa !22
  %1212 = getelementptr inbounds nuw i8, ptr %1166, i64 %1163
  %1213 = getelementptr inbounds nuw i8, ptr %1165, i64 %1163
  %1214 = icmp ult ptr %1212, %1164
  br i1 %1214, label %1235, label %1215

1215:                                             ; preds = %1208
  %1216 = add i64 %1163, 1
  %1217 = getelementptr inbounds nuw i8, ptr %1165, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1217, i32 0, i32 3, i32 1)
  %1218 = getelementptr inbounds nuw i8, ptr %1165, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %1218, i32 0, i32 3, i32 1)
  %1219 = getelementptr inbounds nuw i8, ptr %1164, i64 128
  br label %1235

1220:                                             ; preds = %1159
  %1221 = getelementptr inbounds i8, ptr %1166, i64 %1157
  %1222 = getelementptr inbounds i8, ptr %1166, i64 -1
  %1223 = load i8, ptr %1222, align 1, !tbaa !34
  %1224 = getelementptr inbounds i8, ptr %1221, i64 -1
  %1225 = load i8, ptr %1224, align 1, !tbaa !34
  %1226 = icmp eq i8 %1223, %1225
  %1227 = sext i1 %1226 to i64
  %1228 = getelementptr inbounds i8, ptr %1166, i64 %1227
  %1229 = getelementptr inbounds i8, ptr %1221, i64 %1227
  %1230 = select i1 %1226, i64 5, i64 4
  %1231 = ptrtoint ptr %1167 to i64
  %1232 = sub i64 %1231, %21
  %1233 = trunc i64 %1232 to i32
  %1234 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %1170
  store i32 %1233, ptr %1234, align 4, !tbaa !23
  br label %.loopexit554

1235:                                             ; preds = %1215, %1208
  %1236 = phi i64 [ %1163, %1208 ], [ %1216, %1215 ]
  %1237 = phi ptr [ %1164, %1208 ], [ %1219, %1215 ]
  %1238 = icmp ult ptr %1213, %39
  br i1 %1238, label %1159, label %.loopexit490, !llvm.loop !35

.loopexit558:                                     ; preds = %1187, %1206
  %1239 = phi ptr [ %1166, %1206 ], [ %1167, %1187 ]
  %1240 = phi i64 [ %1194, %1206 ], [ %1170, %1187 ]
  %1241 = phi i64 [ %1195, %1206 ], [ %1173, %1187 ]
  %1242 = phi i64 [ %1198, %1206 ], [ %1181, %1187 ]
  %1243 = phi i32 [ %1191, %1206 ], [ %1162, %1187 ]
  %1244 = phi i32 [ %1197, %1206 ], [ %1175, %1187 ]
  %1245 = phi ptr [ %1167, %1206 ], [ %1168, %1187 ]
  %1246 = ptrtoint ptr %1239 to i64
  %1247 = sub i64 %1246, %21
  %1248 = trunc i64 %1247 to i32
  %1249 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %1240
  store i32 %1248, ptr %1249, align 4, !tbaa !23
  br label %1250

1250:                                             ; preds = %.loopexit558, %1206
  %1251 = phi i64 [ %1195, %1206 ], [ %1241, %.loopexit558 ]
  %1252 = phi i64 [ %1198, %1206 ], [ %1242, %.loopexit558 ]
  %1253 = phi i32 [ %1191, %1206 ], [ %1243, %.loopexit558 ]
  %1254 = phi i32 [ %1197, %1206 ], [ %1244, %.loopexit558 ]
  %1255 = phi ptr [ %1167, %1206 ], [ %1245, %.loopexit558 ]
  %1256 = getelementptr inbounds nuw i8, ptr %19, i64 %1252
  %1257 = ptrtoint ptr %1256 to i64
  %1258 = sub i64 %1251, %1257
  %1259 = trunc i64 %1258 to i32
  %1260 = add i32 %1259, 3
  %1261 = icmp ugt ptr %1255, %1144
  %1262 = icmp ugt i32 %1253, %35
  %1263 = and i1 %1262, %1261
  br i1 %1263, label %.preheader553, label %.loopexit554

.preheader553:                                    ; preds = %1250, %1272
  %1264 = phi ptr [ %1267, %1272 ], [ %1255, %1250 ]
  %1265 = phi i64 [ %1273, %1272 ], [ 4, %1250 ]
  %1266 = phi ptr [ %1269, %1272 ], [ %1256, %1250 ]
  %1267 = getelementptr inbounds i8, ptr %1264, i64 -1
  %1268 = load i8, ptr %1267, align 1, !tbaa !34
  %1269 = getelementptr inbounds i8, ptr %1266, i64 -1
  %1270 = load i8, ptr %1269, align 1, !tbaa !34
  %1271 = icmp eq i8 %1268, %1270
  br i1 %1271, label %1272, label %.loopexit554

1272:                                             ; preds = %.preheader553
  %1273 = add i64 %1265, 1
  %1274 = icmp ugt ptr %1267, %1144
  %1275 = icmp ugt ptr %1269, %37
  %1276 = and i1 %1274, %1275
  br i1 %1276, label %.preheader553, label %.loopexit554, !llvm.loop !36

.loopexit554:                                     ; preds = %1272, %.preheader553, %1250, %1220
  %1277 = phi i32 [ %1175, %1220 ], [ %1254, %1250 ], [ %1254, %.preheader553 ], [ %1254, %1272 ]
  %1278 = phi i32 [ %1147, %1220 ], [ %1146, %1250 ], [ %1146, %.preheader553 ], [ %1146, %1272 ]
  %1279 = phi i32 [ 1, %1220 ], [ %1260, %1250 ], [ %1260, %.preheader553 ], [ %1260, %1272 ]
  %1280 = phi ptr [ %1229, %1220 ], [ %1256, %1250 ], [ %1269, %1272 ], [ %1266, %.preheader553 ]
  %1281 = phi i64 [ %1230, %1220 ], [ 4, %1250 ], [ %1273, %1272 ], [ %1265, %.preheader553 ]
  %1282 = phi i32 [ %1146, %1220 ], [ %1259, %1250 ], [ %1259, %.preheader553 ], [ %1259, %1272 ]
  %1283 = phi ptr [ %1228, %1220 ], [ %1255, %1250 ], [ %1267, %1272 ], [ %1264, %.preheader553 ]
  %1284 = getelementptr inbounds nuw i8, ptr %1283, i64 %1281
  %1285 = getelementptr inbounds nuw i8, ptr %1280, i64 %1281
  %1286 = icmp ult ptr %1284, %1132
  br i1 %1286, label %1287, label %.loopexit552

1287:                                             ; preds = %.loopexit554
  %1288 = load i64, ptr %1285, align 1, !tbaa !22
  %1289 = load i64, ptr %1284, align 1, !tbaa !22
  %1290 = icmp eq i64 %1288, %1289
  br i1 %1290, label %.preheader551, label %1291

1291:                                             ; preds = %1287
  %1292 = xor i64 %1289, %1288
  %1293 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1292, i1 true)
  %1294 = lshr i64 %1293, 3
  br label %1348

.preheader551:                                    ; preds = %1287, %1300
  %1295 = phi ptr [ %1298, %1300 ], [ %1285, %1287 ]
  %1296 = phi ptr [ %1297, %1300 ], [ %1284, %1287 ]
  %1297 = getelementptr inbounds nuw i8, ptr %1296, i64 8
  %1298 = getelementptr inbounds nuw i8, ptr %1295, i64 8
  %1299 = icmp ult ptr %1297, %1132
  br i1 %1299, label %1300, label %.loopexit552

1300:                                             ; preds = %.preheader551
  %1301 = load i64, ptr %1298, align 1, !tbaa !22
  %1302 = load i64, ptr %1297, align 1, !tbaa !22
  %1303 = icmp eq i64 %1301, %1302
  br i1 %1303, label %.preheader551, label %1304

1304:                                             ; preds = %1300
  %1305 = xor i64 %1302, %1301
  %1306 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1305, i1 true)
  %1307 = lshr i64 %1306, 3
  %1308 = getelementptr inbounds nuw i8, ptr %1297, i64 %1307
  %1309 = ptrtoint ptr %1308 to i64
  %1310 = ptrtoint ptr %1284 to i64
  %1311 = sub i64 %1309, %1310
  br label %1348

.loopexit552:                                     ; preds = %.preheader551, %.loopexit554
  %1312 = phi ptr [ %1285, %.loopexit554 ], [ %1298, %.preheader551 ]
  %1313 = phi ptr [ %1284, %.loopexit554 ], [ %1297, %.preheader551 ]
  %1314 = icmp ult ptr %1313, %1133
  br i1 %1314, label %1315, label %1322

1315:                                             ; preds = %.loopexit552
  %1316 = load i32, ptr %1312, align 1, !tbaa !23
  %1317 = load i32, ptr %1313, align 1, !tbaa !23
  %1318 = icmp eq i32 %1316, %1317
  br i1 %1318, label %1319, label %1322

1319:                                             ; preds = %1315
  %1320 = getelementptr inbounds nuw i8, ptr %1313, i64 4
  %1321 = getelementptr inbounds nuw i8, ptr %1312, i64 4
  br label %1322

1322:                                             ; preds = %1319, %1315, %.loopexit552
  %1323 = phi ptr [ %1321, %1319 ], [ %1312, %1315 ], [ %1312, %.loopexit552 ]
  %1324 = phi ptr [ %1320, %1319 ], [ %1313, %1315 ], [ %1313, %.loopexit552 ]
  %1325 = icmp ult ptr %1324, %1134
  br i1 %1325, label %1326, label %1333

1326:                                             ; preds = %1322
  %1327 = load i16, ptr %1323, align 1, !tbaa !37
  %1328 = load i16, ptr %1324, align 1, !tbaa !37
  %1329 = icmp eq i16 %1327, %1328
  br i1 %1329, label %1330, label %1333

1330:                                             ; preds = %1326
  %1331 = getelementptr inbounds nuw i8, ptr %1324, i64 2
  %1332 = getelementptr inbounds nuw i8, ptr %1323, i64 2
  br label %1333

1333:                                             ; preds = %1330, %1326, %1322
  %1334 = phi ptr [ %1332, %1330 ], [ %1323, %1326 ], [ %1323, %1322 ]
  %1335 = phi ptr [ %1331, %1330 ], [ %1324, %1326 ], [ %1324, %1322 ]
  %1336 = icmp ult ptr %1335, %38
  br i1 %1336, label %1337, label %1343

1337:                                             ; preds = %1333
  %1338 = load i8, ptr %1334, align 1, !tbaa !34
  %1339 = load i8, ptr %1335, align 1, !tbaa !34
  %1340 = icmp eq i8 %1338, %1339
  %1341 = zext i1 %1340 to i64
  %1342 = getelementptr inbounds nuw i8, ptr %1335, i64 %1341
  br label %1343

1343:                                             ; preds = %1337, %1333
  %1344 = phi ptr [ %1335, %1333 ], [ %1342, %1337 ]
  %1345 = ptrtoint ptr %1344 to i64
  %1346 = ptrtoint ptr %1284 to i64
  %1347 = sub i64 %1345, %1346
  br label %1348

1348:                                             ; preds = %1343, %1304, %1291
  %1349 = phi i64 [ %1347, %1343 ], [ %1294, %1291 ], [ %1311, %1304 ]
  %1350 = add i64 %1349, %1281
  %1351 = ptrtoint ptr %1283 to i64
  %1352 = ptrtoint ptr %1144 to i64
  %1353 = sub i64 %1351, %1352
  %1354 = icmp ugt ptr %1283, %1135
  %1355 = load ptr, ptr %1136, align 8, !tbaa !39
  br i1 %1354, label %1378, label %1356

1356:                                             ; preds = %1348
  %1357 = load <2 x i64>, ptr %1144, align 1, !tbaa !34
  store <2 x i64> %1357, ptr %1355, align 1, !tbaa !34
  %1358 = icmp ugt i64 %1353, 16
  br i1 %1358, label %1359, label %1489

1359:                                             ; preds = %1356
  %1360 = load ptr, ptr %1136, align 8, !tbaa !39
  %1361 = getelementptr inbounds nuw i8, ptr %1360, i64 16
  %1362 = getelementptr inbounds nuw i8, ptr %1144, i64 16
  %1363 = getelementptr i8, ptr %1360, i64 %1353
  %1364 = load <2 x i64>, ptr %1362, align 1, !tbaa !34
  store <2 x i64> %1364, ptr %1361, align 1, !tbaa !34
  %1365 = icmp ult i64 %1353, 33
  br i1 %1365, label %1489, label %1366

1366:                                             ; preds = %1359
  %1367 = getelementptr inbounds nuw i8, ptr %1360, i64 32
  br label %1368

1368:                                             ; preds = %1368, %1366
  %1369 = phi ptr [ %1367, %1366 ], [ %1376, %1368 ]
  %1370 = phi ptr [ %1362, %1366 ], [ %1374, %1368 ]
  %1371 = getelementptr inbounds nuw i8, ptr %1370, i64 16
  %1372 = load <2 x i64>, ptr %1371, align 1, !tbaa !34
  store <2 x i64> %1372, ptr %1369, align 1, !tbaa !34
  %1373 = getelementptr inbounds nuw i8, ptr %1369, i64 16
  %1374 = getelementptr inbounds nuw i8, ptr %1370, i64 32
  %1375 = load <2 x i64>, ptr %1374, align 1, !tbaa !34
  store <2 x i64> %1375, ptr %1373, align 1, !tbaa !34
  %1376 = getelementptr inbounds nuw i8, ptr %1369, i64 32
  %1377 = icmp ult ptr %1376, %1363
  br i1 %1377, label %1368, label %.loopexit546, !llvm.loop !42

1378:                                             ; preds = %1348
  %1379 = icmp ugt ptr %1144, %1135
  br i1 %1379, label %.loopexit549, label %1380

1380:                                             ; preds = %1378
  %1381 = sub i64 %1137, %1352
  %1382 = getelementptr inbounds i8, ptr %1355, i64 %1381
  %1383 = load <2 x i64>, ptr %1144, align 1, !tbaa !34
  store <2 x i64> %1383, ptr %1355, align 1, !tbaa !34
  %1384 = icmp ult i64 %1381, 17
  br i1 %1384, label %.loopexit549, label %1385

1385:                                             ; preds = %1380
  %1386 = getelementptr inbounds nuw i8, ptr %1355, i64 16
  br label %1387

1387:                                             ; preds = %1387, %1385
  %1388 = phi ptr [ %1386, %1385 ], [ %1395, %1387 ]
  %1389 = phi ptr [ %1144, %1385 ], [ %1393, %1387 ]
  %1390 = getelementptr inbounds nuw i8, ptr %1389, i64 16
  %1391 = load <2 x i64>, ptr %1390, align 1, !tbaa !34
  store <2 x i64> %1391, ptr %1388, align 1, !tbaa !34
  %1392 = getelementptr inbounds nuw i8, ptr %1388, i64 16
  %1393 = getelementptr inbounds nuw i8, ptr %1389, i64 32
  %1394 = load <2 x i64>, ptr %1393, align 1, !tbaa !34
  store <2 x i64> %1394, ptr %1392, align 1, !tbaa !34
  %1395 = getelementptr inbounds nuw i8, ptr %1388, i64 32
  %1396 = icmp ult ptr %1395, %1382
  br i1 %1396, label %1387, label %.loopexit549, !llvm.loop !42

.loopexit549:                                     ; preds = %1387, %1380, %1378
  %1397 = phi ptr [ %1135, %1380 ], [ %1144, %1378 ], [ %1135, %1387 ]
  %1398 = phi ptr [ %1382, %1380 ], [ %1355, %1378 ], [ %1382, %1387 ]
  %1399 = icmp ult ptr %1397, %1283
  br i1 %1399, label %1400, label %.loopexit546

1400:                                             ; preds = %.loopexit549
  %1401 = ptrtoint ptr %1397 to i64
  %1402 = ptrtoint ptr %1398 to i64
  %1403 = sub i64 %1351, %1401
  %1404 = icmp ult i64 %1403, 4
  %1405 = sub i64 %1402, %1401
  %1406 = icmp ult i64 %1405, 32
  %1407 = select i1 %1404, i1 true, i1 %1406
  br i1 %1407, label %1443, label %1408

1408:                                             ; preds = %1400
  %1409 = icmp ult i64 %1403, 32
  br i1 %1409, label %1429, label %1410

1410:                                             ; preds = %1408
  %1411 = and i64 %1403, -32
  br label %1412

1412:                                             ; preds = %1412, %1410
  %1413 = phi i64 [ 0, %1410 ], [ %1420, %1412 ]
  %1414 = getelementptr i8, ptr %1398, i64 %1413
  %1415 = getelementptr i8, ptr %1397, i64 %1413
  %1416 = getelementptr i8, ptr %1415, i64 16
  %1417 = load <16 x i8>, ptr %1415, align 1, !tbaa !34
  %1418 = load <16 x i8>, ptr %1416, align 1, !tbaa !34
  %1419 = getelementptr i8, ptr %1414, i64 16
  store <16 x i8> %1417, ptr %1414, align 1, !tbaa !34
  store <16 x i8> %1418, ptr %1419, align 1, !tbaa !34
  %1420 = add nuw i64 %1413, 32
  %1421 = icmp eq i64 %1420, %1411
  br i1 %1421, label %1422, label %1412, !llvm.loop !64

1422:                                             ; preds = %1412
  %1423 = icmp eq i64 %1403, %1411
  br i1 %1423, label %.loopexit546, label %1424

1424:                                             ; preds = %1422
  %1425 = getelementptr i8, ptr %1398, i64 %1411
  %1426 = getelementptr i8, ptr %1397, i64 %1411
  %1427 = and i64 %1403, 28
  %1428 = icmp eq i64 %1427, 0
  br i1 %1428, label %1443, label %1429

1429:                                             ; preds = %1424, %1408
  %1430 = phi i64 [ %1411, %1424 ], [ 0, %1408 ]
  %1431 = and i64 %1403, -4
  br label %1432

1432:                                             ; preds = %1432, %1429
  %1433 = phi i64 [ %1430, %1429 ], [ %1437, %1432 ]
  %1434 = getelementptr i8, ptr %1398, i64 %1433
  %1435 = getelementptr i8, ptr %1397, i64 %1433
  %1436 = load <4 x i8>, ptr %1435, align 1, !tbaa !34
  store <4 x i8> %1436, ptr %1434, align 1, !tbaa !34
  %1437 = add nuw i64 %1433, 4
  %1438 = icmp eq i64 %1437, %1431
  br i1 %1438, label %1439, label %1432, !llvm.loop !65

1439:                                             ; preds = %1432
  %1440 = getelementptr i8, ptr %1398, i64 %1431
  %1441 = getelementptr i8, ptr %1397, i64 %1431
  %1442 = icmp eq i64 %1403, %1431
  br i1 %1442, label %.loopexit546, label %1443

1443:                                             ; preds = %1439, %1424, %1400
  %1444 = phi ptr [ %1398, %1400 ], [ %1425, %1424 ], [ %1440, %1439 ]
  %1445 = phi ptr [ %1397, %1400 ], [ %1426, %1424 ], [ %1441, %1439 ]
  %1446 = ptrtoint ptr %1445 to i64
  %1447 = sub i64 %1351, %1446
  %1448 = and i64 %1447, 7
  %1449 = icmp eq i64 %1448, 0
  br i1 %1449, label %.loopexit548, label %.preheader547

.preheader547:                                    ; preds = %1443, %.preheader547
  %1450 = phi ptr [ %1455, %.preheader547 ], [ %1444, %1443 ]
  %1451 = phi ptr [ %1453, %.preheader547 ], [ %1445, %1443 ]
  %1452 = phi i64 [ %1456, %.preheader547 ], [ 0, %1443 ]
  %1453 = getelementptr inbounds nuw i8, ptr %1451, i64 1
  %1454 = load i8, ptr %1451, align 1, !tbaa !34
  %1455 = getelementptr inbounds nuw i8, ptr %1450, i64 1
  store i8 %1454, ptr %1450, align 1, !tbaa !34
  %1456 = add nuw nsw i64 %1452, 1
  %1457 = icmp eq i64 %1456, %1448
  br i1 %1457, label %.loopexit548, label %.preheader547, !llvm.loop !66

.loopexit548:                                     ; preds = %.preheader547, %1443
  %1458 = phi ptr [ %1444, %1443 ], [ %1455, %.preheader547 ]
  %1459 = phi ptr [ %1445, %1443 ], [ %1453, %.preheader547 ]
  %1460 = sub i64 %1446, %1351
  %1461 = icmp ugt i64 %1460, -8
  br i1 %1461, label %.loopexit546, label %.preheader545

.preheader545:                                    ; preds = %.loopexit548, %.preheader545
  %1462 = phi ptr [ %1487, %.preheader545 ], [ %1458, %.loopexit548 ]
  %1463 = phi ptr [ %1485, %.preheader545 ], [ %1459, %.loopexit548 ]
  %1464 = getelementptr inbounds nuw i8, ptr %1463, i64 1
  %1465 = load i8, ptr %1463, align 1, !tbaa !34
  %1466 = getelementptr inbounds nuw i8, ptr %1462, i64 1
  store i8 %1465, ptr %1462, align 1, !tbaa !34
  %1467 = getelementptr inbounds nuw i8, ptr %1463, i64 2
  %1468 = load i8, ptr %1464, align 1, !tbaa !34
  %1469 = getelementptr inbounds nuw i8, ptr %1462, i64 2
  store i8 %1468, ptr %1466, align 1, !tbaa !34
  %1470 = getelementptr inbounds nuw i8, ptr %1463, i64 3
  %1471 = load i8, ptr %1467, align 1, !tbaa !34
  %1472 = getelementptr inbounds nuw i8, ptr %1462, i64 3
  store i8 %1471, ptr %1469, align 1, !tbaa !34
  %1473 = getelementptr inbounds nuw i8, ptr %1463, i64 4
  %1474 = load i8, ptr %1470, align 1, !tbaa !34
  %1475 = getelementptr inbounds nuw i8, ptr %1462, i64 4
  store i8 %1474, ptr %1472, align 1, !tbaa !34
  %1476 = getelementptr inbounds nuw i8, ptr %1463, i64 5
  %1477 = load i8, ptr %1473, align 1, !tbaa !34
  %1478 = getelementptr inbounds nuw i8, ptr %1462, i64 5
  store i8 %1477, ptr %1475, align 1, !tbaa !34
  %1479 = getelementptr inbounds nuw i8, ptr %1463, i64 6
  %1480 = load i8, ptr %1476, align 1, !tbaa !34
  %1481 = getelementptr inbounds nuw i8, ptr %1462, i64 6
  store i8 %1480, ptr %1478, align 1, !tbaa !34
  %1482 = getelementptr inbounds nuw i8, ptr %1463, i64 7
  %1483 = load i8, ptr %1479, align 1, !tbaa !34
  %1484 = getelementptr inbounds nuw i8, ptr %1462, i64 7
  store i8 %1483, ptr %1481, align 1, !tbaa !34
  %1485 = getelementptr inbounds nuw i8, ptr %1463, i64 8
  %1486 = load i8, ptr %1482, align 1, !tbaa !34
  %1487 = getelementptr inbounds nuw i8, ptr %1462, i64 8
  store i8 %1486, ptr %1484, align 1, !tbaa !34
  %1488 = icmp eq ptr %1485, %1283
  br i1 %1488, label %.loopexit546, label %.preheader545, !llvm.loop !67

1489:                                             ; preds = %1359, %1356
  %1490 = load ptr, ptr %1136, align 8, !tbaa !39
  %1491 = getelementptr inbounds nuw i8, ptr %1490, i64 %1353
  store ptr %1491, ptr %1136, align 8, !tbaa !39
  %1492 = load ptr, ptr %1139, align 8, !tbaa !50
  br label %1504

.loopexit546:                                     ; preds = %1368, %.preheader545, %.loopexit548, %1439, %1422, %.loopexit549
  %1493 = load ptr, ptr %1136, align 8, !tbaa !39
  %1494 = getelementptr inbounds nuw i8, ptr %1493, i64 %1353
  store ptr %1494, ptr %1136, align 8, !tbaa !39
  %1495 = icmp ugt i64 %1353, 65535
  %1496 = load ptr, ptr %1139, align 8, !tbaa !50
  br i1 %1495, label %1497, label %1504, !prof !51

1497:                                             ; preds = %.loopexit546
  store i32 1, ptr %1138, align 8, !tbaa !52
  %1498 = load ptr, ptr %1, align 8, !tbaa !53
  %1499 = ptrtoint ptr %1496 to i64
  %1500 = ptrtoint ptr %1498 to i64
  %1501 = sub i64 %1499, %1500
  %1502 = lshr exact i64 %1501, 3
  %1503 = trunc i64 %1502 to i32
  store i32 %1503, ptr %1140, align 4, !tbaa !54
  br label %1504

1504:                                             ; preds = %1497, %.loopexit546, %1489
  %1505 = phi ptr [ %1492, %1489 ], [ %1496, %1497 ], [ %1496, %.loopexit546 ]
  %1506 = trunc i64 %1353 to i16
  %1507 = getelementptr inbounds nuw i8, ptr %1505, i64 4
  store i16 %1506, ptr %1507, align 4, !tbaa !55
  store i32 %1279, ptr %1505, align 4, !tbaa !57
  %1508 = add i64 %1350, -3
  %1509 = icmp ugt i64 %1508, 65535
  br i1 %1509, label %1510, label %1517, !prof !58

1510:                                             ; preds = %1504
  store i32 2, ptr %1138, align 8, !tbaa !52
  %1511 = load ptr, ptr %1, align 8, !tbaa !53
  %1512 = ptrtoint ptr %1505 to i64
  %1513 = ptrtoint ptr %1511 to i64
  %1514 = sub i64 %1512, %1513
  %1515 = lshr exact i64 %1514, 3
  %1516 = trunc i64 %1515 to i32
  store i32 %1516, ptr %1140, align 4, !tbaa !54
  br label %1517

1517:                                             ; preds = %1510, %1504
  %1518 = trunc i64 %1508 to i16
  %1519 = getelementptr inbounds nuw i8, ptr %1505, i64 6
  store i16 %1518, ptr %1519, align 2, !tbaa !59
  %1520 = getelementptr inbounds nuw i8, ptr %1505, i64 8
  store ptr %1520, ptr %1139, align 8, !tbaa !50
  %1521 = getelementptr inbounds nuw i8, ptr %1283, i64 %1350
  %1522 = icmp ugt ptr %1521, %39
  br i1 %1522, label %.loopexit541, label %1523

1523:                                             ; preds = %1517
  %1524 = add i32 %1277, 2
  %1525 = zext i32 %1277 to i64
  %1526 = getelementptr inbounds nuw i8, ptr %59, i64 %1525
  %1527 = load i64, ptr %1526, align 1, !tbaa !22
  %1528 = mul i64 %1527, -3523014627193847808
  %1529 = lshr i64 %1528, %1131
  %1530 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %1529
  store i32 %1524, ptr %1530, align 4, !tbaa !23
  %1531 = getelementptr inbounds i8, ptr %1521, i64 -2
  %1532 = ptrtoint ptr %1531 to i64
  %1533 = sub i64 %1532, %21
  %1534 = trunc i64 %1533 to i32
  %1535 = load i64, ptr %1531, align 1, !tbaa !22
  %1536 = mul i64 %1535, -3523014627193847808
  %1537 = lshr i64 %1536, %1131
  %1538 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %1537
  store i32 %1534, ptr %1538, align 4, !tbaa !23
  %1539 = icmp eq i32 %1278, 0
  br i1 %1539, label %.loopexit541, label %.preheader540

.preheader540:                                    ; preds = %1523, %1643
  %1540 = phi ptr [ %1646, %1643 ], [ %1520, %1523 ]
  %1541 = phi ptr [ %1625, %1643 ], [ %1521, %1523 ]
  %1542 = phi i32 [ %1543, %1643 ], [ %1282, %1523 ]
  %1543 = phi i32 [ %1542, %1643 ], [ %1278, %1523 ]
  %1544 = load i32, ptr %1541, align 1, !tbaa !23
  %1545 = zext i32 %1543 to i64
  %1546 = sub nsw i64 0, %1545
  %1547 = getelementptr inbounds i8, ptr %1541, i64 %1546
  %1548 = load i32, ptr %1547, align 1, !tbaa !23
  %1549 = icmp eq i32 %1544, %1548
  br i1 %1549, label %1550, label %.loopexit541

1550:                                             ; preds = %.preheader540
  %1551 = getelementptr inbounds nuw i8, ptr %1541, i64 4
  %1552 = getelementptr inbounds i8, ptr %1551, i64 %1546
  %1553 = icmp ult ptr %1551, %1132
  br i1 %1553, label %1554, label %.loopexit539

1554:                                             ; preds = %1550
  %1555 = load i64, ptr %1552, align 1, !tbaa !22
  %1556 = load i64, ptr %1551, align 1, !tbaa !22
  %1557 = icmp eq i64 %1555, %1556
  br i1 %1557, label %.preheader538, label %1558

1558:                                             ; preds = %1554
  %1559 = xor i64 %1556, %1555
  %1560 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1559, i1 true)
  %1561 = lshr i64 %1560, 3
  br label %1615

.preheader538:                                    ; preds = %1554, %1567
  %1562 = phi ptr [ %1565, %1567 ], [ %1552, %1554 ]
  %1563 = phi ptr [ %1564, %1567 ], [ %1551, %1554 ]
  %1564 = getelementptr inbounds nuw i8, ptr %1563, i64 8
  %1565 = getelementptr inbounds nuw i8, ptr %1562, i64 8
  %1566 = icmp ult ptr %1564, %1132
  br i1 %1566, label %1567, label %.loopexit539

1567:                                             ; preds = %.preheader538
  %1568 = load i64, ptr %1565, align 1, !tbaa !22
  %1569 = load i64, ptr %1564, align 1, !tbaa !22
  %1570 = icmp eq i64 %1568, %1569
  br i1 %1570, label %.preheader538, label %1571

1571:                                             ; preds = %1567
  %1572 = xor i64 %1569, %1568
  %1573 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1572, i1 true)
  %1574 = lshr i64 %1573, 3
  %1575 = getelementptr inbounds nuw i8, ptr %1564, i64 %1574
  %1576 = ptrtoint ptr %1575 to i64
  %1577 = ptrtoint ptr %1551 to i64
  %1578 = sub i64 %1576, %1577
  br label %1615

.loopexit539:                                     ; preds = %.preheader538, %1550
  %1579 = phi ptr [ %1552, %1550 ], [ %1565, %.preheader538 ]
  %1580 = phi ptr [ %1551, %1550 ], [ %1564, %.preheader538 ]
  %1581 = icmp ult ptr %1580, %1133
  br i1 %1581, label %1582, label %1589

1582:                                             ; preds = %.loopexit539
  %1583 = load i32, ptr %1579, align 1, !tbaa !23
  %1584 = load i32, ptr %1580, align 1, !tbaa !23
  %1585 = icmp eq i32 %1583, %1584
  br i1 %1585, label %1586, label %1589

1586:                                             ; preds = %1582
  %1587 = getelementptr inbounds nuw i8, ptr %1580, i64 4
  %1588 = getelementptr inbounds nuw i8, ptr %1579, i64 4
  br label %1589

1589:                                             ; preds = %1586, %1582, %.loopexit539
  %1590 = phi ptr [ %1588, %1586 ], [ %1579, %1582 ], [ %1579, %.loopexit539 ]
  %1591 = phi ptr [ %1587, %1586 ], [ %1580, %1582 ], [ %1580, %.loopexit539 ]
  %1592 = icmp ult ptr %1591, %1134
  br i1 %1592, label %1593, label %1600

1593:                                             ; preds = %1589
  %1594 = load i16, ptr %1590, align 1, !tbaa !37
  %1595 = load i16, ptr %1591, align 1, !tbaa !37
  %1596 = icmp eq i16 %1594, %1595
  br i1 %1596, label %1597, label %1600

1597:                                             ; preds = %1593
  %1598 = getelementptr inbounds nuw i8, ptr %1591, i64 2
  %1599 = getelementptr inbounds nuw i8, ptr %1590, i64 2
  br label %1600

1600:                                             ; preds = %1597, %1593, %1589
  %1601 = phi ptr [ %1599, %1597 ], [ %1590, %1593 ], [ %1590, %1589 ]
  %1602 = phi ptr [ %1598, %1597 ], [ %1591, %1593 ], [ %1591, %1589 ]
  %1603 = icmp ult ptr %1602, %38
  br i1 %1603, label %1604, label %1610

1604:                                             ; preds = %1600
  %1605 = load i8, ptr %1601, align 1, !tbaa !34
  %1606 = load i8, ptr %1602, align 1, !tbaa !34
  %1607 = icmp eq i8 %1605, %1606
  %1608 = zext i1 %1607 to i64
  %1609 = getelementptr inbounds nuw i8, ptr %1602, i64 %1608
  br label %1610

1610:                                             ; preds = %1604, %1600
  %1611 = phi ptr [ %1602, %1600 ], [ %1609, %1604 ]
  %1612 = ptrtoint ptr %1611 to i64
  %1613 = ptrtoint ptr %1551 to i64
  %1614 = sub i64 %1612, %1613
  br label %1615

1615:                                             ; preds = %1610, %1571, %1558
  %1616 = phi i64 [ %1614, %1610 ], [ %1561, %1558 ], [ %1578, %1571 ]
  %1617 = ptrtoint ptr %1541 to i64
  %1618 = sub i64 %1617, %21
  %1619 = trunc i64 %1618 to i32
  %1620 = load i64, ptr %1541, align 1, !tbaa !22
  %1621 = mul i64 %1620, -3523014627193847808
  %1622 = lshr i64 %1621, %1131
  %1623 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %1622
  store i32 %1619, ptr %1623, align 4, !tbaa !23
  %1624 = getelementptr i8, ptr %1541, i64 %1616
  %1625 = getelementptr i8, ptr %1624, i64 4
  %1626 = icmp ugt ptr %1541, %1135
  br i1 %1626, label %1631, label %1627

1627:                                             ; preds = %1615
  %1628 = load ptr, ptr %1136, align 8, !tbaa !39
  %1629 = load <2 x i64>, ptr %1541, align 1, !tbaa !34
  store <2 x i64> %1629, ptr %1628, align 1, !tbaa !34
  %1630 = load ptr, ptr %1139, align 8, !tbaa !50
  br label %1631

1631:                                             ; preds = %1627, %1615
  %1632 = phi ptr [ %1540, %1615 ], [ %1630, %1627 ]
  %1633 = getelementptr inbounds nuw i8, ptr %1632, i64 4
  store i16 0, ptr %1633, align 4, !tbaa !55
  store i32 1, ptr %1632, align 4, !tbaa !57
  %1634 = add i64 %1616, 1
  %1635 = icmp ugt i64 %1634, 65535
  br i1 %1635, label %1636, label %1643, !prof !58

1636:                                             ; preds = %1631
  store i32 2, ptr %1138, align 8, !tbaa !52
  %1637 = load ptr, ptr %1, align 8, !tbaa !53
  %1638 = ptrtoint ptr %1632 to i64
  %1639 = ptrtoint ptr %1637 to i64
  %1640 = sub i64 %1638, %1639
  %1641 = lshr exact i64 %1640, 3
  %1642 = trunc i64 %1641 to i32
  store i32 %1642, ptr %1140, align 4, !tbaa !54
  br label %1643

1643:                                             ; preds = %1636, %1631
  %1644 = trunc i64 %1634 to i16
  %1645 = getelementptr inbounds nuw i8, ptr %1632, i64 6
  store i16 %1644, ptr %1645, align 2, !tbaa !59
  %1646 = getelementptr inbounds nuw i8, ptr %1632, i64 8
  store ptr %1646, ptr %1139, align 8, !tbaa !50
  %1647 = icmp ugt ptr %1625, %39
  br i1 %1647, label %.loopexit541, label %.preheader540

.loopexit541:                                     ; preds = %1643, %.preheader540, %1523, %1517
  %1648 = phi i32 [ 0, %1523 ], [ %1278, %1517 ], [ %1543, %.preheader540 ], [ %1542, %1643 ]
  %1649 = phi i32 [ %1282, %1523 ], [ %1282, %1517 ], [ %1542, %.preheader540 ], [ %1543, %1643 ]
  %1650 = phi ptr [ %1521, %1523 ], [ %1521, %1517 ], [ %1541, %.preheader540 ], [ %1625, %1643 ]
  %1651 = getelementptr inbounds nuw i8, ptr %1650, i64 %17
  %1652 = getelementptr inbounds nuw i8, ptr %1651, i64 1
  %1653 = icmp ult ptr %1652, %39
  br i1 %1653, label %1141, label %.loopexit490

1654:                                             ; preds = %63
  br i1 %62, label %1655, label %.loopexit490

1655:                                             ; preds = %1654
  %1656 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %1657 = load i32, ptr %1656, align 4, !tbaa !21
  %1658 = sub i32 64, %1657
  %1659 = zext nneg i32 %1658 to i64
  %1660 = getelementptr inbounds i8, ptr %38, i64 -7
  %1661 = getelementptr inbounds i8, ptr %38, i64 -3
  %1662 = getelementptr inbounds i8, ptr %38, i64 -1
  %1663 = getelementptr inbounds i8, ptr %38, i64 -32
  %1664 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %1665 = ptrtoint ptr %1663 to i64
  %1666 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %1667 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %1668 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %1669

1669:                                             ; preds = %.loopexit495, %1655
  %1670 = phi ptr [ %61, %1655 ], [ %2180, %.loopexit495 ]
  %1671 = phi ptr [ %60, %1655 ], [ %2179, %.loopexit495 ]
  %1672 = phi ptr [ %3, %1655 ], [ %2178, %.loopexit495 ]
  %1673 = phi ptr [ %45, %1655 ], [ %2178, %.loopexit495 ]
  %1674 = phi i32 [ %58, %1655 ], [ %2177, %.loopexit495 ]
  %1675 = phi i32 [ %56, %1655 ], [ %2176, %.loopexit495 ]
  %1676 = getelementptr inbounds nuw i8, ptr %1673, i64 1
  %1677 = getelementptr inbounds nuw i8, ptr %1673, i64 128
  %1678 = load i64, ptr %1673, align 1, !tbaa !22
  %1679 = mul i64 %1678, -3523014627193167104
  %1680 = lshr i64 %1679, %1659
  %1681 = load i64, ptr %1676, align 1, !tbaa !22
  %1682 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %1680
  %1683 = load i32, ptr %1682, align 4, !tbaa !23
  %1684 = zext i32 %1674 to i64
  %1685 = sub nsw i64 0, %1684
  %1686 = icmp ne i32 %1674, 0
  br label %1687

1687:                                             ; preds = %1763, %1669
  %1688 = phi i64 [ %1680, %1669 ], [ %1722, %1763 ]
  %1689 = phi i64 [ %1681, %1669 ], [ %1739, %1763 ]
  %1690 = phi i32 [ %1683, %1669 ], [ %1738, %1763 ]
  %1691 = phi i64 [ %17, %1669 ], [ %1764, %1763 ]
  %1692 = phi ptr [ %1677, %1669 ], [ %1765, %1763 ]
  %1693 = phi ptr [ %1670, %1669 ], [ %1741, %1763 ]
  %1694 = phi ptr [ %1671, %1669 ], [ %1740, %1763 ]
  %1695 = phi ptr [ %1676, %1669 ], [ %1693, %1763 ]
  %1696 = phi ptr [ %1673, %1669 ], [ %1694, %1763 ]
  %1697 = mul i64 %1689, -3523014627193167104
  %1698 = lshr i64 %1697, %1659
  %1699 = getelementptr inbounds i8, ptr %1694, i64 %1685
  %1700 = load i32, ptr %1699, align 1, !tbaa !23
  %1701 = ptrtoint ptr %1696 to i64
  %1702 = sub i64 %1701, %21
  %1703 = trunc i64 %1702 to i32
  %1704 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %1688
  store i32 %1703, ptr %1704, align 4, !tbaa !23
  %1705 = load i32, ptr %1694, align 1, !tbaa !23
  %1706 = icmp eq i32 %1705, %1700
  %1707 = and i1 %1686, %1706
  br i1 %1707, label %1748, label %1708

1708:                                             ; preds = %1687
  %1709 = zext i32 %1690 to i64
  %1710 = getelementptr inbounds nuw i8, ptr %19, i64 %1709
  %1711 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1690, i32 %35, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %1710) #6, !srcloc !32
  %1712 = load i32, ptr %1696, align 1, !tbaa !23
  %1713 = load i32, ptr %1711, align 1, !tbaa !23
  %1714 = icmp eq i32 %1712, %1713
  br i1 %1714, label %1715, label %1717

1715:                                             ; preds = %1708
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !33
  %1716 = icmp ult i32 %1690, %35
  br i1 %1716, label %1717, label %.loopexit512

1717:                                             ; preds = %1715, %1708
  %1718 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %1698
  %1719 = load i32, ptr %1718, align 4, !tbaa !23
  %1720 = load i64, ptr %1694, align 1, !tbaa !22
  %1721 = mul i64 %1720, -3523014627193167104
  %1722 = lshr i64 %1721, %1659
  %1723 = ptrtoint ptr %1695 to i64
  %1724 = sub i64 %1723, %21
  %1725 = trunc i64 %1724 to i32
  store i32 %1725, ptr %1718, align 4, !tbaa !23
  %1726 = zext i32 %1719 to i64
  %1727 = getelementptr inbounds nuw i8, ptr %19, i64 %1726
  %1728 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1719, i32 %35, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %1727) #6, !srcloc !32
  %1729 = load i32, ptr %1695, align 1, !tbaa !23
  %1730 = load i32, ptr %1728, align 1, !tbaa !23
  %1731 = icmp eq i32 %1729, %1730
  br i1 %1731, label %1732, label %1736

1732:                                             ; preds = %1717
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !33
  %1733 = icmp ult i32 %1719, %35
  br i1 %1733, label %1736, label %1734

1734:                                             ; preds = %1732
  %1735 = icmp ult i64 %1691, 5
  br i1 %1735, label %.loopexit512, label %1778

1736:                                             ; preds = %1732, %1717
  %1737 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %1722
  %1738 = load i32, ptr %1737, align 4, !tbaa !23
  %1739 = load i64, ptr %1693, align 1, !tbaa !22
  %1740 = getelementptr inbounds nuw i8, ptr %1694, i64 %1691
  %1741 = getelementptr inbounds nuw i8, ptr %1693, i64 %1691
  %1742 = icmp ult ptr %1740, %1692
  br i1 %1742, label %1763, label %1743

1743:                                             ; preds = %1736
  %1744 = add i64 %1691, 1
  %1745 = getelementptr inbounds nuw i8, ptr %1693, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %1745, i32 0, i32 3, i32 1)
  %1746 = getelementptr inbounds nuw i8, ptr %1693, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %1746, i32 0, i32 3, i32 1)
  %1747 = getelementptr inbounds nuw i8, ptr %1692, i64 128
  br label %1763

1748:                                             ; preds = %1687
  %1749 = getelementptr inbounds i8, ptr %1694, i64 %1685
  %1750 = getelementptr inbounds i8, ptr %1694, i64 -1
  %1751 = load i8, ptr %1750, align 1, !tbaa !34
  %1752 = getelementptr inbounds i8, ptr %1749, i64 -1
  %1753 = load i8, ptr %1752, align 1, !tbaa !34
  %1754 = icmp eq i8 %1751, %1753
  %1755 = sext i1 %1754 to i64
  %1756 = getelementptr inbounds i8, ptr %1694, i64 %1755
  %1757 = getelementptr inbounds i8, ptr %1749, i64 %1755
  %1758 = select i1 %1754, i64 5, i64 4
  %1759 = ptrtoint ptr %1695 to i64
  %1760 = sub i64 %1759, %21
  %1761 = trunc i64 %1760 to i32
  %1762 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %1698
  store i32 %1761, ptr %1762, align 4, !tbaa !23
  br label %.loopexit508

1763:                                             ; preds = %1743, %1736
  %1764 = phi i64 [ %1691, %1736 ], [ %1744, %1743 ]
  %1765 = phi ptr [ %1692, %1736 ], [ %1747, %1743 ]
  %1766 = icmp ult ptr %1741, %39
  br i1 %1766, label %1687, label %.loopexit490, !llvm.loop !35

.loopexit512:                                     ; preds = %1715, %1734
  %1767 = phi ptr [ %1694, %1734 ], [ %1695, %1715 ]
  %1768 = phi i64 [ %1722, %1734 ], [ %1698, %1715 ]
  %1769 = phi i64 [ %1723, %1734 ], [ %1701, %1715 ]
  %1770 = phi i64 [ %1726, %1734 ], [ %1709, %1715 ]
  %1771 = phi i32 [ %1719, %1734 ], [ %1690, %1715 ]
  %1772 = phi i32 [ %1725, %1734 ], [ %1703, %1715 ]
  %1773 = phi ptr [ %1695, %1734 ], [ %1696, %1715 ]
  %1774 = ptrtoint ptr %1767 to i64
  %1775 = sub i64 %1774, %21
  %1776 = trunc i64 %1775 to i32
  %1777 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %1768
  store i32 %1776, ptr %1777, align 4, !tbaa !23
  br label %1778

1778:                                             ; preds = %.loopexit512, %1734
  %1779 = phi i64 [ %1723, %1734 ], [ %1769, %.loopexit512 ]
  %1780 = phi i64 [ %1726, %1734 ], [ %1770, %.loopexit512 ]
  %1781 = phi i32 [ %1719, %1734 ], [ %1771, %.loopexit512 ]
  %1782 = phi i32 [ %1725, %1734 ], [ %1772, %.loopexit512 ]
  %1783 = phi ptr [ %1695, %1734 ], [ %1773, %.loopexit512 ]
  %1784 = getelementptr inbounds nuw i8, ptr %19, i64 %1780
  %1785 = ptrtoint ptr %1784 to i64
  %1786 = sub i64 %1779, %1785
  %1787 = trunc i64 %1786 to i32
  %1788 = add i32 %1787, 3
  %1789 = icmp ugt ptr %1783, %1672
  %1790 = icmp ugt i32 %1781, %35
  %1791 = and i1 %1790, %1789
  br i1 %1791, label %.preheader507, label %.loopexit508

.preheader507:                                    ; preds = %1778, %1800
  %1792 = phi ptr [ %1795, %1800 ], [ %1783, %1778 ]
  %1793 = phi i64 [ %1801, %1800 ], [ 4, %1778 ]
  %1794 = phi ptr [ %1797, %1800 ], [ %1784, %1778 ]
  %1795 = getelementptr inbounds i8, ptr %1792, i64 -1
  %1796 = load i8, ptr %1795, align 1, !tbaa !34
  %1797 = getelementptr inbounds i8, ptr %1794, i64 -1
  %1798 = load i8, ptr %1797, align 1, !tbaa !34
  %1799 = icmp eq i8 %1796, %1798
  br i1 %1799, label %1800, label %.loopexit508

1800:                                             ; preds = %.preheader507
  %1801 = add i64 %1793, 1
  %1802 = icmp ugt ptr %1795, %1672
  %1803 = icmp ugt ptr %1797, %37
  %1804 = and i1 %1802, %1803
  br i1 %1804, label %.preheader507, label %.loopexit508, !llvm.loop !36

.loopexit508:                                     ; preds = %1800, %.preheader507, %1778, %1748
  %1805 = phi i32 [ %1703, %1748 ], [ %1782, %1778 ], [ %1782, %.preheader507 ], [ %1782, %1800 ]
  %1806 = phi i32 [ %1675, %1748 ], [ %1674, %1778 ], [ %1674, %.preheader507 ], [ %1674, %1800 ]
  %1807 = phi i32 [ 1, %1748 ], [ %1788, %1778 ], [ %1788, %.preheader507 ], [ %1788, %1800 ]
  %1808 = phi ptr [ %1757, %1748 ], [ %1784, %1778 ], [ %1797, %1800 ], [ %1794, %.preheader507 ]
  %1809 = phi i64 [ %1758, %1748 ], [ 4, %1778 ], [ %1801, %1800 ], [ %1793, %.preheader507 ]
  %1810 = phi i32 [ %1674, %1748 ], [ %1787, %1778 ], [ %1787, %.preheader507 ], [ %1787, %1800 ]
  %1811 = phi ptr [ %1756, %1748 ], [ %1783, %1778 ], [ %1795, %1800 ], [ %1792, %.preheader507 ]
  %1812 = getelementptr inbounds nuw i8, ptr %1811, i64 %1809
  %1813 = getelementptr inbounds nuw i8, ptr %1808, i64 %1809
  %1814 = icmp ult ptr %1812, %1660
  br i1 %1814, label %1815, label %.loopexit506

1815:                                             ; preds = %.loopexit508
  %1816 = load i64, ptr %1813, align 1, !tbaa !22
  %1817 = load i64, ptr %1812, align 1, !tbaa !22
  %1818 = icmp eq i64 %1816, %1817
  br i1 %1818, label %.preheader505, label %1819

1819:                                             ; preds = %1815
  %1820 = xor i64 %1817, %1816
  %1821 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1820, i1 true)
  %1822 = lshr i64 %1821, 3
  br label %1876

.preheader505:                                    ; preds = %1815, %1828
  %1823 = phi ptr [ %1826, %1828 ], [ %1813, %1815 ]
  %1824 = phi ptr [ %1825, %1828 ], [ %1812, %1815 ]
  %1825 = getelementptr inbounds nuw i8, ptr %1824, i64 8
  %1826 = getelementptr inbounds nuw i8, ptr %1823, i64 8
  %1827 = icmp ult ptr %1825, %1660
  br i1 %1827, label %1828, label %.loopexit506

1828:                                             ; preds = %.preheader505
  %1829 = load i64, ptr %1826, align 1, !tbaa !22
  %1830 = load i64, ptr %1825, align 1, !tbaa !22
  %1831 = icmp eq i64 %1829, %1830
  br i1 %1831, label %.preheader505, label %1832

1832:                                             ; preds = %1828
  %1833 = xor i64 %1830, %1829
  %1834 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1833, i1 true)
  %1835 = lshr i64 %1834, 3
  %1836 = getelementptr inbounds nuw i8, ptr %1825, i64 %1835
  %1837 = ptrtoint ptr %1836 to i64
  %1838 = ptrtoint ptr %1812 to i64
  %1839 = sub i64 %1837, %1838
  br label %1876

.loopexit506:                                     ; preds = %.preheader505, %.loopexit508
  %1840 = phi ptr [ %1813, %.loopexit508 ], [ %1826, %.preheader505 ]
  %1841 = phi ptr [ %1812, %.loopexit508 ], [ %1825, %.preheader505 ]
  %1842 = icmp ult ptr %1841, %1661
  br i1 %1842, label %1843, label %1850

1843:                                             ; preds = %.loopexit506
  %1844 = load i32, ptr %1840, align 1, !tbaa !23
  %1845 = load i32, ptr %1841, align 1, !tbaa !23
  %1846 = icmp eq i32 %1844, %1845
  br i1 %1846, label %1847, label %1850

1847:                                             ; preds = %1843
  %1848 = getelementptr inbounds nuw i8, ptr %1841, i64 4
  %1849 = getelementptr inbounds nuw i8, ptr %1840, i64 4
  br label %1850

1850:                                             ; preds = %1847, %1843, %.loopexit506
  %1851 = phi ptr [ %1849, %1847 ], [ %1840, %1843 ], [ %1840, %.loopexit506 ]
  %1852 = phi ptr [ %1848, %1847 ], [ %1841, %1843 ], [ %1841, %.loopexit506 ]
  %1853 = icmp ult ptr %1852, %1662
  br i1 %1853, label %1854, label %1861

1854:                                             ; preds = %1850
  %1855 = load i16, ptr %1851, align 1, !tbaa !37
  %1856 = load i16, ptr %1852, align 1, !tbaa !37
  %1857 = icmp eq i16 %1855, %1856
  br i1 %1857, label %1858, label %1861

1858:                                             ; preds = %1854
  %1859 = getelementptr inbounds nuw i8, ptr %1852, i64 2
  %1860 = getelementptr inbounds nuw i8, ptr %1851, i64 2
  br label %1861

1861:                                             ; preds = %1858, %1854, %1850
  %1862 = phi ptr [ %1860, %1858 ], [ %1851, %1854 ], [ %1851, %1850 ]
  %1863 = phi ptr [ %1859, %1858 ], [ %1852, %1854 ], [ %1852, %1850 ]
  %1864 = icmp ult ptr %1863, %38
  br i1 %1864, label %1865, label %1871

1865:                                             ; preds = %1861
  %1866 = load i8, ptr %1862, align 1, !tbaa !34
  %1867 = load i8, ptr %1863, align 1, !tbaa !34
  %1868 = icmp eq i8 %1866, %1867
  %1869 = zext i1 %1868 to i64
  %1870 = getelementptr inbounds nuw i8, ptr %1863, i64 %1869
  br label %1871

1871:                                             ; preds = %1865, %1861
  %1872 = phi ptr [ %1863, %1861 ], [ %1870, %1865 ]
  %1873 = ptrtoint ptr %1872 to i64
  %1874 = ptrtoint ptr %1812 to i64
  %1875 = sub i64 %1873, %1874
  br label %1876

1876:                                             ; preds = %1871, %1832, %1819
  %1877 = phi i64 [ %1875, %1871 ], [ %1822, %1819 ], [ %1839, %1832 ]
  %1878 = add i64 %1877, %1809
  %1879 = ptrtoint ptr %1811 to i64
  %1880 = ptrtoint ptr %1672 to i64
  %1881 = sub i64 %1879, %1880
  %1882 = icmp ugt ptr %1811, %1663
  %1883 = load ptr, ptr %1664, align 8, !tbaa !39
  br i1 %1882, label %1906, label %1884

1884:                                             ; preds = %1876
  %1885 = load <2 x i64>, ptr %1672, align 1, !tbaa !34
  store <2 x i64> %1885, ptr %1883, align 1, !tbaa !34
  %1886 = icmp ugt i64 %1881, 16
  br i1 %1886, label %1887, label %2017

1887:                                             ; preds = %1884
  %1888 = load ptr, ptr %1664, align 8, !tbaa !39
  %1889 = getelementptr inbounds nuw i8, ptr %1888, i64 16
  %1890 = getelementptr inbounds nuw i8, ptr %1672, i64 16
  %1891 = getelementptr i8, ptr %1888, i64 %1881
  %1892 = load <2 x i64>, ptr %1890, align 1, !tbaa !34
  store <2 x i64> %1892, ptr %1889, align 1, !tbaa !34
  %1893 = icmp ult i64 %1881, 33
  br i1 %1893, label %2017, label %1894

1894:                                             ; preds = %1887
  %1895 = getelementptr inbounds nuw i8, ptr %1888, i64 32
  br label %1896

1896:                                             ; preds = %1896, %1894
  %1897 = phi ptr [ %1895, %1894 ], [ %1904, %1896 ]
  %1898 = phi ptr [ %1890, %1894 ], [ %1902, %1896 ]
  %1899 = getelementptr inbounds nuw i8, ptr %1898, i64 16
  %1900 = load <2 x i64>, ptr %1899, align 1, !tbaa !34
  store <2 x i64> %1900, ptr %1897, align 1, !tbaa !34
  %1901 = getelementptr inbounds nuw i8, ptr %1897, i64 16
  %1902 = getelementptr inbounds nuw i8, ptr %1898, i64 32
  %1903 = load <2 x i64>, ptr %1902, align 1, !tbaa !34
  store <2 x i64> %1903, ptr %1901, align 1, !tbaa !34
  %1904 = getelementptr inbounds nuw i8, ptr %1897, i64 32
  %1905 = icmp ult ptr %1904, %1891
  br i1 %1905, label %1896, label %.loopexit500, !llvm.loop !42

1906:                                             ; preds = %1876
  %1907 = icmp ugt ptr %1672, %1663
  br i1 %1907, label %.loopexit503, label %1908

1908:                                             ; preds = %1906
  %1909 = sub i64 %1665, %1880
  %1910 = getelementptr inbounds i8, ptr %1883, i64 %1909
  %1911 = load <2 x i64>, ptr %1672, align 1, !tbaa !34
  store <2 x i64> %1911, ptr %1883, align 1, !tbaa !34
  %1912 = icmp ult i64 %1909, 17
  br i1 %1912, label %.loopexit503, label %1913

1913:                                             ; preds = %1908
  %1914 = getelementptr inbounds nuw i8, ptr %1883, i64 16
  br label %1915

1915:                                             ; preds = %1915, %1913
  %1916 = phi ptr [ %1914, %1913 ], [ %1923, %1915 ]
  %1917 = phi ptr [ %1672, %1913 ], [ %1921, %1915 ]
  %1918 = getelementptr inbounds nuw i8, ptr %1917, i64 16
  %1919 = load <2 x i64>, ptr %1918, align 1, !tbaa !34
  store <2 x i64> %1919, ptr %1916, align 1, !tbaa !34
  %1920 = getelementptr inbounds nuw i8, ptr %1916, i64 16
  %1921 = getelementptr inbounds nuw i8, ptr %1917, i64 32
  %1922 = load <2 x i64>, ptr %1921, align 1, !tbaa !34
  store <2 x i64> %1922, ptr %1920, align 1, !tbaa !34
  %1923 = getelementptr inbounds nuw i8, ptr %1916, i64 32
  %1924 = icmp ult ptr %1923, %1910
  br i1 %1924, label %1915, label %.loopexit503, !llvm.loop !42

.loopexit503:                                     ; preds = %1915, %1908, %1906
  %1925 = phi ptr [ %1663, %1908 ], [ %1672, %1906 ], [ %1663, %1915 ]
  %1926 = phi ptr [ %1910, %1908 ], [ %1883, %1906 ], [ %1910, %1915 ]
  %1927 = icmp ult ptr %1925, %1811
  br i1 %1927, label %1928, label %.loopexit500

1928:                                             ; preds = %.loopexit503
  %1929 = ptrtoint ptr %1925 to i64
  %1930 = ptrtoint ptr %1926 to i64
  %1931 = sub i64 %1879, %1929
  %1932 = icmp ult i64 %1931, 4
  %1933 = sub i64 %1930, %1929
  %1934 = icmp ult i64 %1933, 32
  %1935 = select i1 %1932, i1 true, i1 %1934
  br i1 %1935, label %1971, label %1936

1936:                                             ; preds = %1928
  %1937 = icmp ult i64 %1931, 32
  br i1 %1937, label %1957, label %1938

1938:                                             ; preds = %1936
  %1939 = and i64 %1931, -32
  br label %1940

1940:                                             ; preds = %1940, %1938
  %1941 = phi i64 [ 0, %1938 ], [ %1948, %1940 ]
  %1942 = getelementptr i8, ptr %1926, i64 %1941
  %1943 = getelementptr i8, ptr %1925, i64 %1941
  %1944 = getelementptr i8, ptr %1943, i64 16
  %1945 = load <16 x i8>, ptr %1943, align 1, !tbaa !34
  %1946 = load <16 x i8>, ptr %1944, align 1, !tbaa !34
  %1947 = getelementptr i8, ptr %1942, i64 16
  store <16 x i8> %1945, ptr %1942, align 1, !tbaa !34
  store <16 x i8> %1946, ptr %1947, align 1, !tbaa !34
  %1948 = add nuw i64 %1941, 32
  %1949 = icmp eq i64 %1948, %1939
  br i1 %1949, label %1950, label %1940, !llvm.loop !68

1950:                                             ; preds = %1940
  %1951 = icmp eq i64 %1931, %1939
  br i1 %1951, label %.loopexit500, label %1952

1952:                                             ; preds = %1950
  %1953 = getelementptr i8, ptr %1926, i64 %1939
  %1954 = getelementptr i8, ptr %1925, i64 %1939
  %1955 = and i64 %1931, 28
  %1956 = icmp eq i64 %1955, 0
  br i1 %1956, label %1971, label %1957

1957:                                             ; preds = %1952, %1936
  %1958 = phi i64 [ %1939, %1952 ], [ 0, %1936 ]
  %1959 = and i64 %1931, -4
  br label %1960

1960:                                             ; preds = %1960, %1957
  %1961 = phi i64 [ %1958, %1957 ], [ %1965, %1960 ]
  %1962 = getelementptr i8, ptr %1926, i64 %1961
  %1963 = getelementptr i8, ptr %1925, i64 %1961
  %1964 = load <4 x i8>, ptr %1963, align 1, !tbaa !34
  store <4 x i8> %1964, ptr %1962, align 1, !tbaa !34
  %1965 = add nuw i64 %1961, 4
  %1966 = icmp eq i64 %1965, %1959
  br i1 %1966, label %1967, label %1960, !llvm.loop !69

1967:                                             ; preds = %1960
  %1968 = getelementptr i8, ptr %1926, i64 %1959
  %1969 = getelementptr i8, ptr %1925, i64 %1959
  %1970 = icmp eq i64 %1931, %1959
  br i1 %1970, label %.loopexit500, label %1971

1971:                                             ; preds = %1967, %1952, %1928
  %1972 = phi ptr [ %1926, %1928 ], [ %1953, %1952 ], [ %1968, %1967 ]
  %1973 = phi ptr [ %1925, %1928 ], [ %1954, %1952 ], [ %1969, %1967 ]
  %1974 = ptrtoint ptr %1973 to i64
  %1975 = sub i64 %1879, %1974
  %1976 = and i64 %1975, 7
  %1977 = icmp eq i64 %1976, 0
  br i1 %1977, label %.loopexit502, label %.preheader501

.preheader501:                                    ; preds = %1971, %.preheader501
  %1978 = phi ptr [ %1983, %.preheader501 ], [ %1972, %1971 ]
  %1979 = phi ptr [ %1981, %.preheader501 ], [ %1973, %1971 ]
  %1980 = phi i64 [ %1984, %.preheader501 ], [ 0, %1971 ]
  %1981 = getelementptr inbounds nuw i8, ptr %1979, i64 1
  %1982 = load i8, ptr %1979, align 1, !tbaa !34
  %1983 = getelementptr inbounds nuw i8, ptr %1978, i64 1
  store i8 %1982, ptr %1978, align 1, !tbaa !34
  %1984 = add nuw nsw i64 %1980, 1
  %1985 = icmp eq i64 %1984, %1976
  br i1 %1985, label %.loopexit502, label %.preheader501, !llvm.loop !70

.loopexit502:                                     ; preds = %.preheader501, %1971
  %1986 = phi ptr [ %1972, %1971 ], [ %1983, %.preheader501 ]
  %1987 = phi ptr [ %1973, %1971 ], [ %1981, %.preheader501 ]
  %1988 = sub i64 %1974, %1879
  %1989 = icmp ugt i64 %1988, -8
  br i1 %1989, label %.loopexit500, label %.preheader499

.preheader499:                                    ; preds = %.loopexit502, %.preheader499
  %1990 = phi ptr [ %2015, %.preheader499 ], [ %1986, %.loopexit502 ]
  %1991 = phi ptr [ %2013, %.preheader499 ], [ %1987, %.loopexit502 ]
  %1992 = getelementptr inbounds nuw i8, ptr %1991, i64 1
  %1993 = load i8, ptr %1991, align 1, !tbaa !34
  %1994 = getelementptr inbounds nuw i8, ptr %1990, i64 1
  store i8 %1993, ptr %1990, align 1, !tbaa !34
  %1995 = getelementptr inbounds nuw i8, ptr %1991, i64 2
  %1996 = load i8, ptr %1992, align 1, !tbaa !34
  %1997 = getelementptr inbounds nuw i8, ptr %1990, i64 2
  store i8 %1996, ptr %1994, align 1, !tbaa !34
  %1998 = getelementptr inbounds nuw i8, ptr %1991, i64 3
  %1999 = load i8, ptr %1995, align 1, !tbaa !34
  %2000 = getelementptr inbounds nuw i8, ptr %1990, i64 3
  store i8 %1999, ptr %1997, align 1, !tbaa !34
  %2001 = getelementptr inbounds nuw i8, ptr %1991, i64 4
  %2002 = load i8, ptr %1998, align 1, !tbaa !34
  %2003 = getelementptr inbounds nuw i8, ptr %1990, i64 4
  store i8 %2002, ptr %2000, align 1, !tbaa !34
  %2004 = getelementptr inbounds nuw i8, ptr %1991, i64 5
  %2005 = load i8, ptr %2001, align 1, !tbaa !34
  %2006 = getelementptr inbounds nuw i8, ptr %1990, i64 5
  store i8 %2005, ptr %2003, align 1, !tbaa !34
  %2007 = getelementptr inbounds nuw i8, ptr %1991, i64 6
  %2008 = load i8, ptr %2004, align 1, !tbaa !34
  %2009 = getelementptr inbounds nuw i8, ptr %1990, i64 6
  store i8 %2008, ptr %2006, align 1, !tbaa !34
  %2010 = getelementptr inbounds nuw i8, ptr %1991, i64 7
  %2011 = load i8, ptr %2007, align 1, !tbaa !34
  %2012 = getelementptr inbounds nuw i8, ptr %1990, i64 7
  store i8 %2011, ptr %2009, align 1, !tbaa !34
  %2013 = getelementptr inbounds nuw i8, ptr %1991, i64 8
  %2014 = load i8, ptr %2010, align 1, !tbaa !34
  %2015 = getelementptr inbounds nuw i8, ptr %1990, i64 8
  store i8 %2014, ptr %2012, align 1, !tbaa !34
  %2016 = icmp eq ptr %2013, %1811
  br i1 %2016, label %.loopexit500, label %.preheader499, !llvm.loop !71

2017:                                             ; preds = %1887, %1884
  %2018 = load ptr, ptr %1664, align 8, !tbaa !39
  %2019 = getelementptr inbounds nuw i8, ptr %2018, i64 %1881
  store ptr %2019, ptr %1664, align 8, !tbaa !39
  %2020 = load ptr, ptr %1667, align 8, !tbaa !50
  br label %2032

.loopexit500:                                     ; preds = %1896, %.preheader499, %.loopexit502, %1967, %1950, %.loopexit503
  %2021 = load ptr, ptr %1664, align 8, !tbaa !39
  %2022 = getelementptr inbounds nuw i8, ptr %2021, i64 %1881
  store ptr %2022, ptr %1664, align 8, !tbaa !39
  %2023 = icmp ugt i64 %1881, 65535
  %2024 = load ptr, ptr %1667, align 8, !tbaa !50
  br i1 %2023, label %2025, label %2032, !prof !51

2025:                                             ; preds = %.loopexit500
  store i32 1, ptr %1666, align 8, !tbaa !52
  %2026 = load ptr, ptr %1, align 8, !tbaa !53
  %2027 = ptrtoint ptr %2024 to i64
  %2028 = ptrtoint ptr %2026 to i64
  %2029 = sub i64 %2027, %2028
  %2030 = lshr exact i64 %2029, 3
  %2031 = trunc i64 %2030 to i32
  store i32 %2031, ptr %1668, align 4, !tbaa !54
  br label %2032

2032:                                             ; preds = %2025, %.loopexit500, %2017
  %2033 = phi ptr [ %2020, %2017 ], [ %2024, %2025 ], [ %2024, %.loopexit500 ]
  %2034 = trunc i64 %1881 to i16
  %2035 = getelementptr inbounds nuw i8, ptr %2033, i64 4
  store i16 %2034, ptr %2035, align 4, !tbaa !55
  store i32 %1807, ptr %2033, align 4, !tbaa !57
  %2036 = add i64 %1878, -3
  %2037 = icmp ugt i64 %2036, 65535
  br i1 %2037, label %2038, label %2045, !prof !58

2038:                                             ; preds = %2032
  store i32 2, ptr %1666, align 8, !tbaa !52
  %2039 = load ptr, ptr %1, align 8, !tbaa !53
  %2040 = ptrtoint ptr %2033 to i64
  %2041 = ptrtoint ptr %2039 to i64
  %2042 = sub i64 %2040, %2041
  %2043 = lshr exact i64 %2042, 3
  %2044 = trunc i64 %2043 to i32
  store i32 %2044, ptr %1668, align 4, !tbaa !54
  br label %2045

2045:                                             ; preds = %2038, %2032
  %2046 = trunc i64 %2036 to i16
  %2047 = getelementptr inbounds nuw i8, ptr %2033, i64 6
  store i16 %2046, ptr %2047, align 2, !tbaa !59
  %2048 = getelementptr inbounds nuw i8, ptr %2033, i64 8
  store ptr %2048, ptr %1667, align 8, !tbaa !50
  %2049 = getelementptr inbounds nuw i8, ptr %1811, i64 %1878
  %2050 = icmp ugt ptr %2049, %39
  br i1 %2050, label %.loopexit495, label %2051

2051:                                             ; preds = %2045
  %2052 = add i32 %1805, 2
  %2053 = zext i32 %1805 to i64
  %2054 = getelementptr inbounds nuw i8, ptr %59, i64 %2053
  %2055 = load i64, ptr %2054, align 1, !tbaa !22
  %2056 = mul i64 %2055, -3523014627193167104
  %2057 = lshr i64 %2056, %1659
  %2058 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2057
  store i32 %2052, ptr %2058, align 4, !tbaa !23
  %2059 = getelementptr inbounds i8, ptr %2049, i64 -2
  %2060 = ptrtoint ptr %2059 to i64
  %2061 = sub i64 %2060, %21
  %2062 = trunc i64 %2061 to i32
  %2063 = load i64, ptr %2059, align 1, !tbaa !22
  %2064 = mul i64 %2063, -3523014627193167104
  %2065 = lshr i64 %2064, %1659
  %2066 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2065
  store i32 %2062, ptr %2066, align 4, !tbaa !23
  %2067 = icmp eq i32 %1806, 0
  br i1 %2067, label %.loopexit495, label %.preheader494

.preheader494:                                    ; preds = %2051, %2171
  %2068 = phi ptr [ %2174, %2171 ], [ %2048, %2051 ]
  %2069 = phi ptr [ %2153, %2171 ], [ %2049, %2051 ]
  %2070 = phi i32 [ %2071, %2171 ], [ %1810, %2051 ]
  %2071 = phi i32 [ %2070, %2171 ], [ %1806, %2051 ]
  %2072 = load i32, ptr %2069, align 1, !tbaa !23
  %2073 = zext i32 %2071 to i64
  %2074 = sub nsw i64 0, %2073
  %2075 = getelementptr inbounds i8, ptr %2069, i64 %2074
  %2076 = load i32, ptr %2075, align 1, !tbaa !23
  %2077 = icmp eq i32 %2072, %2076
  br i1 %2077, label %2078, label %.loopexit495

2078:                                             ; preds = %.preheader494
  %2079 = getelementptr inbounds nuw i8, ptr %2069, i64 4
  %2080 = getelementptr inbounds i8, ptr %2079, i64 %2074
  %2081 = icmp ult ptr %2079, %1660
  br i1 %2081, label %2082, label %.loopexit493

2082:                                             ; preds = %2078
  %2083 = load i64, ptr %2080, align 1, !tbaa !22
  %2084 = load i64, ptr %2079, align 1, !tbaa !22
  %2085 = icmp eq i64 %2083, %2084
  br i1 %2085, label %.preheader492, label %2086

2086:                                             ; preds = %2082
  %2087 = xor i64 %2084, %2083
  %2088 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2087, i1 true)
  %2089 = lshr i64 %2088, 3
  br label %2143

.preheader492:                                    ; preds = %2082, %2095
  %2090 = phi ptr [ %2093, %2095 ], [ %2080, %2082 ]
  %2091 = phi ptr [ %2092, %2095 ], [ %2079, %2082 ]
  %2092 = getelementptr inbounds nuw i8, ptr %2091, i64 8
  %2093 = getelementptr inbounds nuw i8, ptr %2090, i64 8
  %2094 = icmp ult ptr %2092, %1660
  br i1 %2094, label %2095, label %.loopexit493

2095:                                             ; preds = %.preheader492
  %2096 = load i64, ptr %2093, align 1, !tbaa !22
  %2097 = load i64, ptr %2092, align 1, !tbaa !22
  %2098 = icmp eq i64 %2096, %2097
  br i1 %2098, label %.preheader492, label %2099

2099:                                             ; preds = %2095
  %2100 = xor i64 %2097, %2096
  %2101 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2100, i1 true)
  %2102 = lshr i64 %2101, 3
  %2103 = getelementptr inbounds nuw i8, ptr %2092, i64 %2102
  %2104 = ptrtoint ptr %2103 to i64
  %2105 = ptrtoint ptr %2079 to i64
  %2106 = sub i64 %2104, %2105
  br label %2143

.loopexit493:                                     ; preds = %.preheader492, %2078
  %2107 = phi ptr [ %2080, %2078 ], [ %2093, %.preheader492 ]
  %2108 = phi ptr [ %2079, %2078 ], [ %2092, %.preheader492 ]
  %2109 = icmp ult ptr %2108, %1661
  br i1 %2109, label %2110, label %2117

2110:                                             ; preds = %.loopexit493
  %2111 = load i32, ptr %2107, align 1, !tbaa !23
  %2112 = load i32, ptr %2108, align 1, !tbaa !23
  %2113 = icmp eq i32 %2111, %2112
  br i1 %2113, label %2114, label %2117

2114:                                             ; preds = %2110
  %2115 = getelementptr inbounds nuw i8, ptr %2108, i64 4
  %2116 = getelementptr inbounds nuw i8, ptr %2107, i64 4
  br label %2117

2117:                                             ; preds = %2114, %2110, %.loopexit493
  %2118 = phi ptr [ %2116, %2114 ], [ %2107, %2110 ], [ %2107, %.loopexit493 ]
  %2119 = phi ptr [ %2115, %2114 ], [ %2108, %2110 ], [ %2108, %.loopexit493 ]
  %2120 = icmp ult ptr %2119, %1662
  br i1 %2120, label %2121, label %2128

2121:                                             ; preds = %2117
  %2122 = load i16, ptr %2118, align 1, !tbaa !37
  %2123 = load i16, ptr %2119, align 1, !tbaa !37
  %2124 = icmp eq i16 %2122, %2123
  br i1 %2124, label %2125, label %2128

2125:                                             ; preds = %2121
  %2126 = getelementptr inbounds nuw i8, ptr %2119, i64 2
  %2127 = getelementptr inbounds nuw i8, ptr %2118, i64 2
  br label %2128

2128:                                             ; preds = %2125, %2121, %2117
  %2129 = phi ptr [ %2127, %2125 ], [ %2118, %2121 ], [ %2118, %2117 ]
  %2130 = phi ptr [ %2126, %2125 ], [ %2119, %2121 ], [ %2119, %2117 ]
  %2131 = icmp ult ptr %2130, %38
  br i1 %2131, label %2132, label %2138

2132:                                             ; preds = %2128
  %2133 = load i8, ptr %2129, align 1, !tbaa !34
  %2134 = load i8, ptr %2130, align 1, !tbaa !34
  %2135 = icmp eq i8 %2133, %2134
  %2136 = zext i1 %2135 to i64
  %2137 = getelementptr inbounds nuw i8, ptr %2130, i64 %2136
  br label %2138

2138:                                             ; preds = %2132, %2128
  %2139 = phi ptr [ %2130, %2128 ], [ %2137, %2132 ]
  %2140 = ptrtoint ptr %2139 to i64
  %2141 = ptrtoint ptr %2079 to i64
  %2142 = sub i64 %2140, %2141
  br label %2143

2143:                                             ; preds = %2138, %2099, %2086
  %2144 = phi i64 [ %2142, %2138 ], [ %2089, %2086 ], [ %2106, %2099 ]
  %2145 = ptrtoint ptr %2069 to i64
  %2146 = sub i64 %2145, %21
  %2147 = trunc i64 %2146 to i32
  %2148 = load i64, ptr %2069, align 1, !tbaa !22
  %2149 = mul i64 %2148, -3523014627193167104
  %2150 = lshr i64 %2149, %1659
  %2151 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2150
  store i32 %2147, ptr %2151, align 4, !tbaa !23
  %2152 = getelementptr i8, ptr %2069, i64 %2144
  %2153 = getelementptr i8, ptr %2152, i64 4
  %2154 = icmp ugt ptr %2069, %1663
  br i1 %2154, label %2159, label %2155

2155:                                             ; preds = %2143
  %2156 = load ptr, ptr %1664, align 8, !tbaa !39
  %2157 = load <2 x i64>, ptr %2069, align 1, !tbaa !34
  store <2 x i64> %2157, ptr %2156, align 1, !tbaa !34
  %2158 = load ptr, ptr %1667, align 8, !tbaa !50
  br label %2159

2159:                                             ; preds = %2155, %2143
  %2160 = phi ptr [ %2068, %2143 ], [ %2158, %2155 ]
  %2161 = getelementptr inbounds nuw i8, ptr %2160, i64 4
  store i16 0, ptr %2161, align 4, !tbaa !55
  store i32 1, ptr %2160, align 4, !tbaa !57
  %2162 = add i64 %2144, 1
  %2163 = icmp ugt i64 %2162, 65535
  br i1 %2163, label %2164, label %2171, !prof !58

2164:                                             ; preds = %2159
  store i32 2, ptr %1666, align 8, !tbaa !52
  %2165 = load ptr, ptr %1, align 8, !tbaa !53
  %2166 = ptrtoint ptr %2160 to i64
  %2167 = ptrtoint ptr %2165 to i64
  %2168 = sub i64 %2166, %2167
  %2169 = lshr exact i64 %2168, 3
  %2170 = trunc i64 %2169 to i32
  store i32 %2170, ptr %1668, align 4, !tbaa !54
  br label %2171

2171:                                             ; preds = %2164, %2159
  %2172 = trunc i64 %2162 to i16
  %2173 = getelementptr inbounds nuw i8, ptr %2160, i64 6
  store i16 %2172, ptr %2173, align 2, !tbaa !59
  %2174 = getelementptr inbounds nuw i8, ptr %2160, i64 8
  store ptr %2174, ptr %1667, align 8, !tbaa !50
  %2175 = icmp ugt ptr %2153, %39
  br i1 %2175, label %.loopexit495, label %.preheader494

.loopexit495:                                     ; preds = %2171, %.preheader494, %2051, %2045
  %2176 = phi i32 [ 0, %2051 ], [ %1806, %2045 ], [ %2071, %.preheader494 ], [ %2070, %2171 ]
  %2177 = phi i32 [ %1810, %2051 ], [ %1810, %2045 ], [ %2070, %.preheader494 ], [ %2071, %2171 ]
  %2178 = phi ptr [ %2049, %2051 ], [ %2049, %2045 ], [ %2069, %.preheader494 ], [ %2153, %2171 ]
  %2179 = getelementptr inbounds nuw i8, ptr %2178, i64 %17
  %2180 = getelementptr inbounds nuw i8, ptr %2179, i64 1
  %2181 = icmp ult ptr %2180, %39
  br i1 %2181, label %1669, label %.loopexit490

2182:                                             ; preds = %5
  switch i32 %8, label %2183 [
    i32 7, label %3934
    i32 5, label %2770
    i32 6, label %3352
  ]

2183:                                             ; preds = %2182
  br i1 %62, label %2184, label %.loopexit490

2184:                                             ; preds = %2183
  %2185 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %2186 = load i32, ptr %2185, align 4, !tbaa !21
  %2187 = sub i32 32, %2186
  %2188 = getelementptr inbounds i8, ptr %38, i64 -7
  %2189 = getelementptr inbounds i8, ptr %38, i64 -3
  %2190 = getelementptr inbounds i8, ptr %38, i64 -1
  %2191 = getelementptr inbounds i8, ptr %38, i64 -32
  %2192 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %2193 = ptrtoint ptr %2191 to i64
  %2194 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %2195 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %2196 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %2197

2197:                                             ; preds = %.loopexit564, %2184
  %2198 = phi ptr [ %61, %2184 ], [ %2768, %.loopexit564 ]
  %2199 = phi ptr [ %60, %2184 ], [ %2767, %.loopexit564 ]
  %2200 = phi ptr [ %3, %2184 ], [ %2766, %.loopexit564 ]
  %2201 = phi ptr [ %45, %2184 ], [ %2766, %.loopexit564 ]
  %2202 = phi i32 [ %58, %2184 ], [ %2765, %.loopexit564 ]
  %2203 = phi i32 [ %56, %2184 ], [ %2764, %.loopexit564 ]
  %2204 = freeze i32 %2202
  %2205 = getelementptr inbounds nuw i8, ptr %2201, i64 1
  %2206 = getelementptr inbounds nuw i8, ptr %2201, i64 128
  %2207 = load i32, ptr %2201, align 1, !tbaa !23
  %2208 = mul i32 %2207, -1640531535
  %2209 = lshr i32 %2208, %2187
  %2210 = zext i32 %2209 to i64
  %2211 = load i32, ptr %2205, align 1, !tbaa !23
  %2212 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2210
  %2213 = load i32, ptr %2212, align 4, !tbaa !23
  %2214 = zext i32 %2204 to i64
  %2215 = sub nsw i64 0, %2214
  %2216 = icmp eq i32 %2204, 0
  br i1 %2216, label %.preheader581, label %.preheader585

.preheader581:                                    ; preds = %2197, %2269
  %2217 = phi i64 [ %2246, %2269 ], [ %2210, %2197 ]
  %2218 = phi i32 [ %2260, %2269 ], [ %2211, %2197 ]
  %2219 = phi i32 [ %2259, %2269 ], [ %2213, %2197 ]
  %2220 = phi i64 [ %2270, %2269 ], [ %17, %2197 ]
  %2221 = phi ptr [ %2271, %2269 ], [ %2206, %2197 ]
  %2222 = phi ptr [ %2262, %2269 ], [ %2198, %2197 ]
  %2223 = phi ptr [ %2261, %2269 ], [ %2199, %2197 ]
  %2224 = phi ptr [ %2222, %2269 ], [ %2205, %2197 ]
  %2225 = phi ptr [ %2223, %2269 ], [ %2201, %2197 ]
  %2226 = mul i32 %2218, -1640531535
  %2227 = lshr i32 %2226, %2187
  %2228 = zext i32 %2227 to i64
  %2229 = ptrtoint ptr %2225 to i64
  %2230 = sub i64 %2229, %21
  %2231 = trunc i64 %2230 to i32
  %2232 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2217
  store i32 %2231, ptr %2232, align 4, !tbaa !23
  %2233 = load i32, ptr %2223, align 1, !tbaa !23
  %2234 = icmp ult i32 %2219, %35
  br i1 %2234, label %2241, label %2235

2235:                                             ; preds = %.preheader581
  %2236 = zext i32 %2219 to i64
  %2237 = getelementptr inbounds nuw i8, ptr %19, i64 %2236
  %2238 = load i32, ptr %2237, align 1, !tbaa !23
  %2239 = load i32, ptr %2225, align 1, !tbaa !23
  %2240 = icmp eq i32 %2239, %2238
  br i1 %2240, label %.loopexit582, label %2241

2241:                                             ; preds = %2235, %.preheader581
  %2242 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2228
  %2243 = load i32, ptr %2242, align 4, !tbaa !23
  %2244 = mul i32 %2233, -1640531535
  %2245 = lshr i32 %2244, %2187
  %2246 = zext i32 %2245 to i64
  %2247 = ptrtoint ptr %2224 to i64
  %2248 = sub i64 %2247, %21
  %2249 = trunc i64 %2248 to i32
  store i32 %2249, ptr %2242, align 4, !tbaa !23
  %2250 = icmp ult i32 %2243, %35
  br i1 %2250, label %2257, label %2251

2251:                                             ; preds = %2241
  %2252 = zext i32 %2243 to i64
  %2253 = getelementptr inbounds nuw i8, ptr %19, i64 %2252
  %2254 = load i32, ptr %2253, align 1, !tbaa !23
  %2255 = load i32, ptr %2224, align 1, !tbaa !23
  %2256 = icmp eq i32 %2255, %2254
  br i1 %2256, label %.loopexit583, label %2257

2257:                                             ; preds = %2251, %2241
  %2258 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2246
  %2259 = load i32, ptr %2258, align 4, !tbaa !23
  %2260 = load i32, ptr %2222, align 1, !tbaa !23
  %2261 = getelementptr inbounds nuw i8, ptr %2223, i64 %2220
  %2262 = getelementptr inbounds nuw i8, ptr %2222, i64 %2220
  %2263 = icmp ult ptr %2261, %2221
  br i1 %2263, label %2269, label %2264

2264:                                             ; preds = %2257
  %2265 = add i64 %2220, 1
  %2266 = getelementptr inbounds nuw i8, ptr %2222, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %2266, i32 0, i32 3, i32 1)
  %2267 = getelementptr inbounds nuw i8, ptr %2222, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %2267, i32 0, i32 3, i32 1)
  %2268 = getelementptr inbounds nuw i8, ptr %2221, i64 128
  br label %2269

2269:                                             ; preds = %2264, %2257
  %2270 = phi i64 [ %2220, %2257 ], [ %2265, %2264 ]
  %2271 = phi ptr [ %2221, %2257 ], [ %2268, %2264 ]
  %2272 = icmp ult ptr %2262, %39
  br i1 %2272, label %.preheader581, label %.loopexit490, !llvm.loop !35

.preheader585:                                    ; preds = %2197, %2351
  %2273 = phi i64 [ %2306, %2351 ], [ %2210, %2197 ]
  %2274 = phi i32 [ %2327, %2351 ], [ %2211, %2197 ]
  %2275 = phi i32 [ %2326, %2351 ], [ %2213, %2197 ]
  %2276 = phi i64 [ %2352, %2351 ], [ %17, %2197 ]
  %2277 = phi ptr [ %2353, %2351 ], [ %2206, %2197 ]
  %2278 = phi ptr [ %2329, %2351 ], [ %2198, %2197 ]
  %2279 = phi ptr [ %2328, %2351 ], [ %2199, %2197 ]
  %2280 = phi ptr [ %2278, %2351 ], [ %2205, %2197 ]
  %2281 = phi ptr [ %2279, %2351 ], [ %2201, %2197 ]
  %2282 = mul i32 %2274, -1640531535
  %2283 = lshr i32 %2282, %2187
  %2284 = zext i32 %2283 to i64
  %2285 = getelementptr inbounds i8, ptr %2279, i64 %2215
  %2286 = load i32, ptr %2285, align 1, !tbaa !23
  %2287 = ptrtoint ptr %2281 to i64
  %2288 = sub i64 %2287, %21
  %2289 = trunc i64 %2288 to i32
  %2290 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2273
  store i32 %2289, ptr %2290, align 4, !tbaa !23
  %2291 = load i32, ptr %2279, align 1, !tbaa !23
  %2292 = icmp eq i32 %2291, %2286
  br i1 %2292, label %2336, label %2293

2293:                                             ; preds = %.preheader585
  %2294 = icmp ult i32 %2275, %35
  br i1 %2294, label %2301, label %2295

2295:                                             ; preds = %2293
  %2296 = zext i32 %2275 to i64
  %2297 = getelementptr inbounds nuw i8, ptr %19, i64 %2296
  %2298 = load i32, ptr %2297, align 1, !tbaa !23
  %2299 = load i32, ptr %2281, align 1, !tbaa !23
  %2300 = icmp eq i32 %2299, %2298
  br i1 %2300, label %.loopexit582, label %2301

2301:                                             ; preds = %2295, %2293
  %2302 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2284
  %2303 = load i32, ptr %2302, align 4, !tbaa !23
  %2304 = mul i32 %2291, -1640531535
  %2305 = lshr i32 %2304, %2187
  %2306 = zext i32 %2305 to i64
  %2307 = ptrtoint ptr %2280 to i64
  %2308 = sub i64 %2307, %21
  %2309 = trunc i64 %2308 to i32
  store i32 %2309, ptr %2302, align 4, !tbaa !23
  %2310 = icmp ult i32 %2303, %35
  br i1 %2310, label %2324, label %2311

2311:                                             ; preds = %2301
  %2312 = zext i32 %2303 to i64
  %2313 = getelementptr inbounds nuw i8, ptr %19, i64 %2312
  %2314 = load i32, ptr %2313, align 1, !tbaa !23
  %2315 = load i32, ptr %2280, align 1, !tbaa !23
  %2316 = icmp eq i32 %2315, %2314
  br i1 %2316, label %.loopexit583, label %2324

.loopexit583:                                     ; preds = %2311, %2251
  %2317 = phi i32 [ %2243, %2251 ], [ %2303, %2311 ]
  %2318 = phi i64 [ %2246, %2251 ], [ %2306, %2311 ]
  %2319 = phi i32 [ %2249, %2251 ], [ %2309, %2311 ]
  %2320 = phi i64 [ %2220, %2251 ], [ %2276, %2311 ]
  %2321 = phi ptr [ %2223, %2251 ], [ %2279, %2311 ]
  %2322 = phi ptr [ %2224, %2251 ], [ %2280, %2311 ]
  %2323 = icmp ult i64 %2320, 5
  br i1 %2323, label %.loopexit582, label %2364

2324:                                             ; preds = %2311, %2301
  %2325 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2306
  %2326 = load i32, ptr %2325, align 4, !tbaa !23
  %2327 = load i32, ptr %2278, align 1, !tbaa !23
  %2328 = getelementptr inbounds nuw i8, ptr %2279, i64 %2276
  %2329 = getelementptr inbounds nuw i8, ptr %2278, i64 %2276
  %2330 = icmp ult ptr %2328, %2277
  br i1 %2330, label %2351, label %2331

2331:                                             ; preds = %2324
  %2332 = add i64 %2276, 1
  %2333 = getelementptr inbounds nuw i8, ptr %2278, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %2333, i32 0, i32 3, i32 1)
  %2334 = getelementptr inbounds nuw i8, ptr %2278, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %2334, i32 0, i32 3, i32 1)
  %2335 = getelementptr inbounds nuw i8, ptr %2277, i64 128
  br label %2351

2336:                                             ; preds = %.preheader585
  %2337 = getelementptr inbounds i8, ptr %2279, i64 %2215
  %2338 = getelementptr inbounds i8, ptr %2279, i64 -1
  %2339 = load i8, ptr %2338, align 1, !tbaa !34
  %2340 = getelementptr inbounds i8, ptr %2337, i64 -1
  %2341 = load i8, ptr %2340, align 1, !tbaa !34
  %2342 = icmp eq i8 %2339, %2341
  %2343 = sext i1 %2342 to i64
  %2344 = getelementptr inbounds i8, ptr %2279, i64 %2343
  %2345 = getelementptr inbounds i8, ptr %2337, i64 %2343
  %2346 = select i1 %2342, i64 5, i64 4
  %2347 = ptrtoint ptr %2280 to i64
  %2348 = sub i64 %2347, %21
  %2349 = trunc i64 %2348 to i32
  %2350 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2284
  store i32 %2349, ptr %2350, align 4, !tbaa !23
  br label %.loopexit577

2351:                                             ; preds = %2331, %2324
  %2352 = phi i64 [ %2276, %2324 ], [ %2332, %2331 ]
  %2353 = phi ptr [ %2277, %2324 ], [ %2335, %2331 ]
  %2354 = icmp ult ptr %2329, %39
  br i1 %2354, label %.preheader585, label %.loopexit490, !llvm.loop !35

.loopexit582:                                     ; preds = %2295, %2235, %.loopexit583
  %2355 = phi ptr [ %2321, %.loopexit583 ], [ %2224, %2235 ], [ %2280, %2295 ]
  %2356 = phi i64 [ %2318, %.loopexit583 ], [ %2228, %2235 ], [ %2284, %2295 ]
  %2357 = phi i32 [ %2317, %.loopexit583 ], [ %2219, %2235 ], [ %2275, %2295 ]
  %2358 = phi i32 [ %2319, %.loopexit583 ], [ %2231, %2235 ], [ %2289, %2295 ]
  %2359 = phi ptr [ %2322, %.loopexit583 ], [ %2225, %2235 ], [ %2281, %2295 ]
  %2360 = ptrtoint ptr %2355 to i64
  %2361 = sub i64 %2360, %21
  %2362 = trunc i64 %2361 to i32
  %2363 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2356
  store i32 %2362, ptr %2363, align 4, !tbaa !23
  br label %2364

2364:                                             ; preds = %.loopexit582, %.loopexit583
  %2365 = phi i32 [ %2317, %.loopexit583 ], [ %2357, %.loopexit582 ]
  %2366 = phi i32 [ %2319, %.loopexit583 ], [ %2358, %.loopexit582 ]
  %2367 = phi ptr [ %2322, %.loopexit583 ], [ %2359, %.loopexit582 ]
  %2368 = zext i32 %2365 to i64
  %2369 = getelementptr inbounds nuw i8, ptr %19, i64 %2368
  %2370 = ptrtoint ptr %2367 to i64
  %2371 = ptrtoint ptr %2369 to i64
  %2372 = sub i64 %2370, %2371
  %2373 = trunc i64 %2372 to i32
  %2374 = add i32 %2373, 3
  %2375 = icmp ugt ptr %2367, %2200
  %2376 = icmp ugt i32 %2365, %35
  %2377 = and i1 %2376, %2375
  br i1 %2377, label %.preheader576, label %.loopexit577

.preheader576:                                    ; preds = %2364, %2386
  %2378 = phi ptr [ %2381, %2386 ], [ %2367, %2364 ]
  %2379 = phi i64 [ %2387, %2386 ], [ 4, %2364 ]
  %2380 = phi ptr [ %2383, %2386 ], [ %2369, %2364 ]
  %2381 = getelementptr inbounds i8, ptr %2378, i64 -1
  %2382 = load i8, ptr %2381, align 1, !tbaa !34
  %2383 = getelementptr inbounds i8, ptr %2380, i64 -1
  %2384 = load i8, ptr %2383, align 1, !tbaa !34
  %2385 = icmp eq i8 %2382, %2384
  br i1 %2385, label %2386, label %.loopexit577

2386:                                             ; preds = %.preheader576
  %2387 = add i64 %2379, 1
  %2388 = icmp ugt ptr %2381, %2200
  %2389 = icmp ugt ptr %2383, %37
  %2390 = and i1 %2388, %2389
  br i1 %2390, label %.preheader576, label %.loopexit577, !llvm.loop !36

.loopexit577:                                     ; preds = %2386, %.preheader576, %2364, %2336
  %2391 = phi i32 [ %2289, %2336 ], [ %2366, %2364 ], [ %2366, %.preheader576 ], [ %2366, %2386 ]
  %2392 = phi i32 [ %2203, %2336 ], [ %2204, %2364 ], [ %2204, %.preheader576 ], [ %2204, %2386 ]
  %2393 = phi i32 [ 1, %2336 ], [ %2374, %2364 ], [ %2374, %.preheader576 ], [ %2374, %2386 ]
  %2394 = phi ptr [ %2345, %2336 ], [ %2369, %2364 ], [ %2383, %2386 ], [ %2380, %.preheader576 ]
  %2395 = phi i64 [ %2346, %2336 ], [ 4, %2364 ], [ %2387, %2386 ], [ %2379, %.preheader576 ]
  %2396 = phi i32 [ %2204, %2336 ], [ %2373, %2364 ], [ %2373, %.preheader576 ], [ %2373, %2386 ]
  %2397 = phi ptr [ %2344, %2336 ], [ %2367, %2364 ], [ %2381, %2386 ], [ %2378, %.preheader576 ]
  %2398 = getelementptr inbounds nuw i8, ptr %2397, i64 %2395
  %2399 = getelementptr inbounds nuw i8, ptr %2394, i64 %2395
  %2400 = icmp ult ptr %2398, %2188
  br i1 %2400, label %2401, label %.loopexit575

2401:                                             ; preds = %.loopexit577
  %2402 = load i64, ptr %2399, align 1, !tbaa !22
  %2403 = load i64, ptr %2398, align 1, !tbaa !22
  %2404 = icmp eq i64 %2402, %2403
  br i1 %2404, label %.preheader574, label %2405

2405:                                             ; preds = %2401
  %2406 = xor i64 %2403, %2402
  %2407 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2406, i1 true)
  %2408 = lshr i64 %2407, 3
  br label %2462

.preheader574:                                    ; preds = %2401, %2414
  %2409 = phi ptr [ %2412, %2414 ], [ %2399, %2401 ]
  %2410 = phi ptr [ %2411, %2414 ], [ %2398, %2401 ]
  %2411 = getelementptr inbounds nuw i8, ptr %2410, i64 8
  %2412 = getelementptr inbounds nuw i8, ptr %2409, i64 8
  %2413 = icmp ult ptr %2411, %2188
  br i1 %2413, label %2414, label %.loopexit575

2414:                                             ; preds = %.preheader574
  %2415 = load i64, ptr %2412, align 1, !tbaa !22
  %2416 = load i64, ptr %2411, align 1, !tbaa !22
  %2417 = icmp eq i64 %2415, %2416
  br i1 %2417, label %.preheader574, label %2418

2418:                                             ; preds = %2414
  %2419 = xor i64 %2416, %2415
  %2420 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2419, i1 true)
  %2421 = lshr i64 %2420, 3
  %2422 = getelementptr inbounds nuw i8, ptr %2411, i64 %2421
  %2423 = ptrtoint ptr %2422 to i64
  %2424 = ptrtoint ptr %2398 to i64
  %2425 = sub i64 %2423, %2424
  br label %2462

.loopexit575:                                     ; preds = %.preheader574, %.loopexit577
  %2426 = phi ptr [ %2399, %.loopexit577 ], [ %2412, %.preheader574 ]
  %2427 = phi ptr [ %2398, %.loopexit577 ], [ %2411, %.preheader574 ]
  %2428 = icmp ult ptr %2427, %2189
  br i1 %2428, label %2429, label %2436

2429:                                             ; preds = %.loopexit575
  %2430 = load i32, ptr %2426, align 1, !tbaa !23
  %2431 = load i32, ptr %2427, align 1, !tbaa !23
  %2432 = icmp eq i32 %2430, %2431
  br i1 %2432, label %2433, label %2436

2433:                                             ; preds = %2429
  %2434 = getelementptr inbounds nuw i8, ptr %2427, i64 4
  %2435 = getelementptr inbounds nuw i8, ptr %2426, i64 4
  br label %2436

2436:                                             ; preds = %2433, %2429, %.loopexit575
  %2437 = phi ptr [ %2435, %2433 ], [ %2426, %2429 ], [ %2426, %.loopexit575 ]
  %2438 = phi ptr [ %2434, %2433 ], [ %2427, %2429 ], [ %2427, %.loopexit575 ]
  %2439 = icmp ult ptr %2438, %2190
  br i1 %2439, label %2440, label %2447

2440:                                             ; preds = %2436
  %2441 = load i16, ptr %2437, align 1, !tbaa !37
  %2442 = load i16, ptr %2438, align 1, !tbaa !37
  %2443 = icmp eq i16 %2441, %2442
  br i1 %2443, label %2444, label %2447

2444:                                             ; preds = %2440
  %2445 = getelementptr inbounds nuw i8, ptr %2438, i64 2
  %2446 = getelementptr inbounds nuw i8, ptr %2437, i64 2
  br label %2447

2447:                                             ; preds = %2444, %2440, %2436
  %2448 = phi ptr [ %2446, %2444 ], [ %2437, %2440 ], [ %2437, %2436 ]
  %2449 = phi ptr [ %2445, %2444 ], [ %2438, %2440 ], [ %2438, %2436 ]
  %2450 = icmp ult ptr %2449, %38
  br i1 %2450, label %2451, label %2457

2451:                                             ; preds = %2447
  %2452 = load i8, ptr %2448, align 1, !tbaa !34
  %2453 = load i8, ptr %2449, align 1, !tbaa !34
  %2454 = icmp eq i8 %2452, %2453
  %2455 = zext i1 %2454 to i64
  %2456 = getelementptr inbounds nuw i8, ptr %2449, i64 %2455
  br label %2457

2457:                                             ; preds = %2451, %2447
  %2458 = phi ptr [ %2449, %2447 ], [ %2456, %2451 ]
  %2459 = ptrtoint ptr %2458 to i64
  %2460 = ptrtoint ptr %2398 to i64
  %2461 = sub i64 %2459, %2460
  br label %2462

2462:                                             ; preds = %2457, %2418, %2405
  %2463 = phi i64 [ %2461, %2457 ], [ %2408, %2405 ], [ %2425, %2418 ]
  %2464 = add i64 %2463, %2395
  %2465 = ptrtoint ptr %2397 to i64
  %2466 = ptrtoint ptr %2200 to i64
  %2467 = sub i64 %2465, %2466
  %2468 = icmp ugt ptr %2397, %2191
  %2469 = load ptr, ptr %2192, align 8, !tbaa !39
  br i1 %2468, label %2492, label %2470

2470:                                             ; preds = %2462
  %2471 = load <2 x i64>, ptr %2200, align 1, !tbaa !34
  store <2 x i64> %2471, ptr %2469, align 1, !tbaa !34
  %2472 = icmp ugt i64 %2467, 16
  br i1 %2472, label %2473, label %2603

2473:                                             ; preds = %2470
  %2474 = load ptr, ptr %2192, align 8, !tbaa !39
  %2475 = getelementptr inbounds nuw i8, ptr %2474, i64 16
  %2476 = getelementptr inbounds nuw i8, ptr %2200, i64 16
  %2477 = getelementptr i8, ptr %2474, i64 %2467
  %2478 = load <2 x i64>, ptr %2476, align 1, !tbaa !34
  store <2 x i64> %2478, ptr %2475, align 1, !tbaa !34
  %2479 = icmp ult i64 %2467, 33
  br i1 %2479, label %2603, label %2480

2480:                                             ; preds = %2473
  %2481 = getelementptr inbounds nuw i8, ptr %2474, i64 32
  br label %2482

2482:                                             ; preds = %2482, %2480
  %2483 = phi ptr [ %2481, %2480 ], [ %2490, %2482 ]
  %2484 = phi ptr [ %2476, %2480 ], [ %2488, %2482 ]
  %2485 = getelementptr inbounds nuw i8, ptr %2484, i64 16
  %2486 = load <2 x i64>, ptr %2485, align 1, !tbaa !34
  store <2 x i64> %2486, ptr %2483, align 1, !tbaa !34
  %2487 = getelementptr inbounds nuw i8, ptr %2483, i64 16
  %2488 = getelementptr inbounds nuw i8, ptr %2484, i64 32
  %2489 = load <2 x i64>, ptr %2488, align 1, !tbaa !34
  store <2 x i64> %2489, ptr %2487, align 1, !tbaa !34
  %2490 = getelementptr inbounds nuw i8, ptr %2483, i64 32
  %2491 = icmp ult ptr %2490, %2477
  br i1 %2491, label %2482, label %.loopexit569, !llvm.loop !42

2492:                                             ; preds = %2462
  %2493 = icmp ugt ptr %2200, %2191
  br i1 %2493, label %.loopexit572, label %2494

2494:                                             ; preds = %2492
  %2495 = sub i64 %2193, %2466
  %2496 = getelementptr inbounds i8, ptr %2469, i64 %2495
  %2497 = load <2 x i64>, ptr %2200, align 1, !tbaa !34
  store <2 x i64> %2497, ptr %2469, align 1, !tbaa !34
  %2498 = icmp ult i64 %2495, 17
  br i1 %2498, label %.loopexit572, label %2499

2499:                                             ; preds = %2494
  %2500 = getelementptr inbounds nuw i8, ptr %2469, i64 16
  br label %2501

2501:                                             ; preds = %2501, %2499
  %2502 = phi ptr [ %2500, %2499 ], [ %2509, %2501 ]
  %2503 = phi ptr [ %2200, %2499 ], [ %2507, %2501 ]
  %2504 = getelementptr inbounds nuw i8, ptr %2503, i64 16
  %2505 = load <2 x i64>, ptr %2504, align 1, !tbaa !34
  store <2 x i64> %2505, ptr %2502, align 1, !tbaa !34
  %2506 = getelementptr inbounds nuw i8, ptr %2502, i64 16
  %2507 = getelementptr inbounds nuw i8, ptr %2503, i64 32
  %2508 = load <2 x i64>, ptr %2507, align 1, !tbaa !34
  store <2 x i64> %2508, ptr %2506, align 1, !tbaa !34
  %2509 = getelementptr inbounds nuw i8, ptr %2502, i64 32
  %2510 = icmp ult ptr %2509, %2496
  br i1 %2510, label %2501, label %.loopexit572, !llvm.loop !42

.loopexit572:                                     ; preds = %2501, %2494, %2492
  %2511 = phi ptr [ %2191, %2494 ], [ %2200, %2492 ], [ %2191, %2501 ]
  %2512 = phi ptr [ %2496, %2494 ], [ %2469, %2492 ], [ %2496, %2501 ]
  %2513 = icmp ult ptr %2511, %2397
  br i1 %2513, label %2514, label %.loopexit569

2514:                                             ; preds = %.loopexit572
  %2515 = ptrtoint ptr %2511 to i64
  %2516 = ptrtoint ptr %2512 to i64
  %2517 = sub i64 %2465, %2515
  %2518 = icmp ult i64 %2517, 4
  %2519 = sub i64 %2516, %2515
  %2520 = icmp ult i64 %2519, 32
  %2521 = select i1 %2518, i1 true, i1 %2520
  br i1 %2521, label %2557, label %2522

2522:                                             ; preds = %2514
  %2523 = icmp ult i64 %2517, 32
  br i1 %2523, label %2543, label %2524

2524:                                             ; preds = %2522
  %2525 = and i64 %2517, -32
  br label %2526

2526:                                             ; preds = %2526, %2524
  %2527 = phi i64 [ 0, %2524 ], [ %2534, %2526 ]
  %2528 = getelementptr i8, ptr %2512, i64 %2527
  %2529 = getelementptr i8, ptr %2511, i64 %2527
  %2530 = getelementptr i8, ptr %2529, i64 16
  %2531 = load <16 x i8>, ptr %2529, align 1, !tbaa !34
  %2532 = load <16 x i8>, ptr %2530, align 1, !tbaa !34
  %2533 = getelementptr i8, ptr %2528, i64 16
  store <16 x i8> %2531, ptr %2528, align 1, !tbaa !34
  store <16 x i8> %2532, ptr %2533, align 1, !tbaa !34
  %2534 = add nuw i64 %2527, 32
  %2535 = icmp eq i64 %2534, %2525
  br i1 %2535, label %2536, label %2526, !llvm.loop !72

2536:                                             ; preds = %2526
  %2537 = icmp eq i64 %2517, %2525
  br i1 %2537, label %.loopexit569, label %2538

2538:                                             ; preds = %2536
  %2539 = getelementptr i8, ptr %2512, i64 %2525
  %2540 = getelementptr i8, ptr %2511, i64 %2525
  %2541 = and i64 %2517, 28
  %2542 = icmp eq i64 %2541, 0
  br i1 %2542, label %2557, label %2543

2543:                                             ; preds = %2538, %2522
  %2544 = phi i64 [ %2525, %2538 ], [ 0, %2522 ]
  %2545 = and i64 %2517, -4
  br label %2546

2546:                                             ; preds = %2546, %2543
  %2547 = phi i64 [ %2544, %2543 ], [ %2551, %2546 ]
  %2548 = getelementptr i8, ptr %2512, i64 %2547
  %2549 = getelementptr i8, ptr %2511, i64 %2547
  %2550 = load <4 x i8>, ptr %2549, align 1, !tbaa !34
  store <4 x i8> %2550, ptr %2548, align 1, !tbaa !34
  %2551 = add nuw i64 %2547, 4
  %2552 = icmp eq i64 %2551, %2545
  br i1 %2552, label %2553, label %2546, !llvm.loop !73

2553:                                             ; preds = %2546
  %2554 = getelementptr i8, ptr %2512, i64 %2545
  %2555 = getelementptr i8, ptr %2511, i64 %2545
  %2556 = icmp eq i64 %2517, %2545
  br i1 %2556, label %.loopexit569, label %2557

2557:                                             ; preds = %2553, %2538, %2514
  %2558 = phi ptr [ %2512, %2514 ], [ %2539, %2538 ], [ %2554, %2553 ]
  %2559 = phi ptr [ %2511, %2514 ], [ %2540, %2538 ], [ %2555, %2553 ]
  %2560 = ptrtoint ptr %2559 to i64
  %2561 = sub i64 %2465, %2560
  %2562 = and i64 %2561, 7
  %2563 = icmp eq i64 %2562, 0
  br i1 %2563, label %.loopexit571, label %.preheader570

.preheader570:                                    ; preds = %2557, %.preheader570
  %2564 = phi ptr [ %2569, %.preheader570 ], [ %2558, %2557 ]
  %2565 = phi ptr [ %2567, %.preheader570 ], [ %2559, %2557 ]
  %2566 = phi i64 [ %2570, %.preheader570 ], [ 0, %2557 ]
  %2567 = getelementptr inbounds nuw i8, ptr %2565, i64 1
  %2568 = load i8, ptr %2565, align 1, !tbaa !34
  %2569 = getelementptr inbounds nuw i8, ptr %2564, i64 1
  store i8 %2568, ptr %2564, align 1, !tbaa !34
  %2570 = add nuw nsw i64 %2566, 1
  %2571 = icmp eq i64 %2570, %2562
  br i1 %2571, label %.loopexit571, label %.preheader570, !llvm.loop !74

.loopexit571:                                     ; preds = %.preheader570, %2557
  %2572 = phi ptr [ %2558, %2557 ], [ %2569, %.preheader570 ]
  %2573 = phi ptr [ %2559, %2557 ], [ %2567, %.preheader570 ]
  %2574 = sub i64 %2560, %2465
  %2575 = icmp ugt i64 %2574, -8
  br i1 %2575, label %.loopexit569, label %.preheader568

.preheader568:                                    ; preds = %.loopexit571, %.preheader568
  %2576 = phi ptr [ %2601, %.preheader568 ], [ %2572, %.loopexit571 ]
  %2577 = phi ptr [ %2599, %.preheader568 ], [ %2573, %.loopexit571 ]
  %2578 = getelementptr inbounds nuw i8, ptr %2577, i64 1
  %2579 = load i8, ptr %2577, align 1, !tbaa !34
  %2580 = getelementptr inbounds nuw i8, ptr %2576, i64 1
  store i8 %2579, ptr %2576, align 1, !tbaa !34
  %2581 = getelementptr inbounds nuw i8, ptr %2577, i64 2
  %2582 = load i8, ptr %2578, align 1, !tbaa !34
  %2583 = getelementptr inbounds nuw i8, ptr %2576, i64 2
  store i8 %2582, ptr %2580, align 1, !tbaa !34
  %2584 = getelementptr inbounds nuw i8, ptr %2577, i64 3
  %2585 = load i8, ptr %2581, align 1, !tbaa !34
  %2586 = getelementptr inbounds nuw i8, ptr %2576, i64 3
  store i8 %2585, ptr %2583, align 1, !tbaa !34
  %2587 = getelementptr inbounds nuw i8, ptr %2577, i64 4
  %2588 = load i8, ptr %2584, align 1, !tbaa !34
  %2589 = getelementptr inbounds nuw i8, ptr %2576, i64 4
  store i8 %2588, ptr %2586, align 1, !tbaa !34
  %2590 = getelementptr inbounds nuw i8, ptr %2577, i64 5
  %2591 = load i8, ptr %2587, align 1, !tbaa !34
  %2592 = getelementptr inbounds nuw i8, ptr %2576, i64 5
  store i8 %2591, ptr %2589, align 1, !tbaa !34
  %2593 = getelementptr inbounds nuw i8, ptr %2577, i64 6
  %2594 = load i8, ptr %2590, align 1, !tbaa !34
  %2595 = getelementptr inbounds nuw i8, ptr %2576, i64 6
  store i8 %2594, ptr %2592, align 1, !tbaa !34
  %2596 = getelementptr inbounds nuw i8, ptr %2577, i64 7
  %2597 = load i8, ptr %2593, align 1, !tbaa !34
  %2598 = getelementptr inbounds nuw i8, ptr %2576, i64 7
  store i8 %2597, ptr %2595, align 1, !tbaa !34
  %2599 = getelementptr inbounds nuw i8, ptr %2577, i64 8
  %2600 = load i8, ptr %2596, align 1, !tbaa !34
  %2601 = getelementptr inbounds nuw i8, ptr %2576, i64 8
  store i8 %2600, ptr %2598, align 1, !tbaa !34
  %2602 = icmp eq ptr %2599, %2397
  br i1 %2602, label %.loopexit569, label %.preheader568, !llvm.loop !75

2603:                                             ; preds = %2473, %2470
  %2604 = load ptr, ptr %2192, align 8, !tbaa !39
  %2605 = getelementptr inbounds nuw i8, ptr %2604, i64 %2467
  store ptr %2605, ptr %2192, align 8, !tbaa !39
  %2606 = load ptr, ptr %2195, align 8, !tbaa !50
  br label %2618

.loopexit569:                                     ; preds = %2482, %.preheader568, %.loopexit571, %2553, %2536, %.loopexit572
  %2607 = load ptr, ptr %2192, align 8, !tbaa !39
  %2608 = getelementptr inbounds nuw i8, ptr %2607, i64 %2467
  store ptr %2608, ptr %2192, align 8, !tbaa !39
  %2609 = icmp ugt i64 %2467, 65535
  %2610 = load ptr, ptr %2195, align 8, !tbaa !50
  br i1 %2609, label %2611, label %2618, !prof !51

2611:                                             ; preds = %.loopexit569
  store i32 1, ptr %2194, align 8, !tbaa !52
  %2612 = load ptr, ptr %1, align 8, !tbaa !53
  %2613 = ptrtoint ptr %2610 to i64
  %2614 = ptrtoint ptr %2612 to i64
  %2615 = sub i64 %2613, %2614
  %2616 = lshr exact i64 %2615, 3
  %2617 = trunc i64 %2616 to i32
  store i32 %2617, ptr %2196, align 4, !tbaa !54
  br label %2618

2618:                                             ; preds = %2611, %.loopexit569, %2603
  %2619 = phi ptr [ %2606, %2603 ], [ %2610, %2611 ], [ %2610, %.loopexit569 ]
  %2620 = trunc i64 %2467 to i16
  %2621 = getelementptr inbounds nuw i8, ptr %2619, i64 4
  store i16 %2620, ptr %2621, align 4, !tbaa !55
  store i32 %2393, ptr %2619, align 4, !tbaa !57
  %2622 = add i64 %2464, -3
  %2623 = icmp ugt i64 %2622, 65535
  br i1 %2623, label %2624, label %2631, !prof !58

2624:                                             ; preds = %2618
  store i32 2, ptr %2194, align 8, !tbaa !52
  %2625 = load ptr, ptr %1, align 8, !tbaa !53
  %2626 = ptrtoint ptr %2619 to i64
  %2627 = ptrtoint ptr %2625 to i64
  %2628 = sub i64 %2626, %2627
  %2629 = lshr exact i64 %2628, 3
  %2630 = trunc i64 %2629 to i32
  store i32 %2630, ptr %2196, align 4, !tbaa !54
  br label %2631

2631:                                             ; preds = %2624, %2618
  %2632 = trunc i64 %2622 to i16
  %2633 = getelementptr inbounds nuw i8, ptr %2619, i64 6
  store i16 %2632, ptr %2633, align 2, !tbaa !59
  %2634 = getelementptr inbounds nuw i8, ptr %2619, i64 8
  store ptr %2634, ptr %2195, align 8, !tbaa !50
  %2635 = getelementptr inbounds nuw i8, ptr %2397, i64 %2464
  %2636 = icmp ugt ptr %2635, %39
  br i1 %2636, label %.loopexit564, label %2637

2637:                                             ; preds = %2631
  %2638 = add i32 %2391, 2
  %2639 = zext i32 %2391 to i64
  %2640 = getelementptr inbounds nuw i8, ptr %59, i64 %2639
  %2641 = load i32, ptr %2640, align 1, !tbaa !23
  %2642 = mul i32 %2641, -1640531535
  %2643 = lshr i32 %2642, %2187
  %2644 = zext i32 %2643 to i64
  %2645 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2644
  store i32 %2638, ptr %2645, align 4, !tbaa !23
  %2646 = getelementptr inbounds i8, ptr %2635, i64 -2
  %2647 = ptrtoint ptr %2646 to i64
  %2648 = sub i64 %2647, %21
  %2649 = trunc i64 %2648 to i32
  %2650 = load i32, ptr %2646, align 1, !tbaa !23
  %2651 = mul i32 %2650, -1640531535
  %2652 = lshr i32 %2651, %2187
  %2653 = zext i32 %2652 to i64
  %2654 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2653
  store i32 %2649, ptr %2654, align 4, !tbaa !23
  %2655 = icmp eq i32 %2392, 0
  br i1 %2655, label %.loopexit564, label %.preheader563

.preheader563:                                    ; preds = %2637, %2759
  %2656 = phi ptr [ %2762, %2759 ], [ %2634, %2637 ]
  %2657 = phi ptr [ %2741, %2759 ], [ %2635, %2637 ]
  %2658 = phi i32 [ %2659, %2759 ], [ %2396, %2637 ]
  %2659 = phi i32 [ %2658, %2759 ], [ %2392, %2637 ]
  %2660 = load i32, ptr %2657, align 1, !tbaa !23
  %2661 = zext i32 %2659 to i64
  %2662 = sub nsw i64 0, %2661
  %2663 = getelementptr inbounds i8, ptr %2657, i64 %2662
  %2664 = load i32, ptr %2663, align 1, !tbaa !23
  %2665 = icmp eq i32 %2660, %2664
  br i1 %2665, label %2666, label %.loopexit564

2666:                                             ; preds = %.preheader563
  %2667 = getelementptr inbounds nuw i8, ptr %2657, i64 4
  %2668 = getelementptr inbounds i8, ptr %2667, i64 %2662
  %2669 = icmp ult ptr %2667, %2188
  br i1 %2669, label %2670, label %.loopexit562

2670:                                             ; preds = %2666
  %2671 = load i64, ptr %2668, align 1, !tbaa !22
  %2672 = load i64, ptr %2667, align 1, !tbaa !22
  %2673 = icmp eq i64 %2671, %2672
  br i1 %2673, label %.preheader561, label %2674

2674:                                             ; preds = %2670
  %2675 = xor i64 %2672, %2671
  %2676 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2675, i1 true)
  %2677 = lshr i64 %2676, 3
  br label %2731

.preheader561:                                    ; preds = %2670, %2683
  %2678 = phi ptr [ %2681, %2683 ], [ %2668, %2670 ]
  %2679 = phi ptr [ %2680, %2683 ], [ %2667, %2670 ]
  %2680 = getelementptr inbounds nuw i8, ptr %2679, i64 8
  %2681 = getelementptr inbounds nuw i8, ptr %2678, i64 8
  %2682 = icmp ult ptr %2680, %2188
  br i1 %2682, label %2683, label %.loopexit562

2683:                                             ; preds = %.preheader561
  %2684 = load i64, ptr %2681, align 1, !tbaa !22
  %2685 = load i64, ptr %2680, align 1, !tbaa !22
  %2686 = icmp eq i64 %2684, %2685
  br i1 %2686, label %.preheader561, label %2687

2687:                                             ; preds = %2683
  %2688 = xor i64 %2685, %2684
  %2689 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2688, i1 true)
  %2690 = lshr i64 %2689, 3
  %2691 = getelementptr inbounds nuw i8, ptr %2680, i64 %2690
  %2692 = ptrtoint ptr %2691 to i64
  %2693 = ptrtoint ptr %2667 to i64
  %2694 = sub i64 %2692, %2693
  br label %2731

.loopexit562:                                     ; preds = %.preheader561, %2666
  %2695 = phi ptr [ %2668, %2666 ], [ %2681, %.preheader561 ]
  %2696 = phi ptr [ %2667, %2666 ], [ %2680, %.preheader561 ]
  %2697 = icmp ult ptr %2696, %2189
  br i1 %2697, label %2698, label %2705

2698:                                             ; preds = %.loopexit562
  %2699 = load i32, ptr %2695, align 1, !tbaa !23
  %2700 = load i32, ptr %2696, align 1, !tbaa !23
  %2701 = icmp eq i32 %2699, %2700
  br i1 %2701, label %2702, label %2705

2702:                                             ; preds = %2698
  %2703 = getelementptr inbounds nuw i8, ptr %2696, i64 4
  %2704 = getelementptr inbounds nuw i8, ptr %2695, i64 4
  br label %2705

2705:                                             ; preds = %2702, %2698, %.loopexit562
  %2706 = phi ptr [ %2704, %2702 ], [ %2695, %2698 ], [ %2695, %.loopexit562 ]
  %2707 = phi ptr [ %2703, %2702 ], [ %2696, %2698 ], [ %2696, %.loopexit562 ]
  %2708 = icmp ult ptr %2707, %2190
  br i1 %2708, label %2709, label %2716

2709:                                             ; preds = %2705
  %2710 = load i16, ptr %2706, align 1, !tbaa !37
  %2711 = load i16, ptr %2707, align 1, !tbaa !37
  %2712 = icmp eq i16 %2710, %2711
  br i1 %2712, label %2713, label %2716

2713:                                             ; preds = %2709
  %2714 = getelementptr inbounds nuw i8, ptr %2707, i64 2
  %2715 = getelementptr inbounds nuw i8, ptr %2706, i64 2
  br label %2716

2716:                                             ; preds = %2713, %2709, %2705
  %2717 = phi ptr [ %2715, %2713 ], [ %2706, %2709 ], [ %2706, %2705 ]
  %2718 = phi ptr [ %2714, %2713 ], [ %2707, %2709 ], [ %2707, %2705 ]
  %2719 = icmp ult ptr %2718, %38
  br i1 %2719, label %2720, label %2726

2720:                                             ; preds = %2716
  %2721 = load i8, ptr %2717, align 1, !tbaa !34
  %2722 = load i8, ptr %2718, align 1, !tbaa !34
  %2723 = icmp eq i8 %2721, %2722
  %2724 = zext i1 %2723 to i64
  %2725 = getelementptr inbounds nuw i8, ptr %2718, i64 %2724
  br label %2726

2726:                                             ; preds = %2720, %2716
  %2727 = phi ptr [ %2718, %2716 ], [ %2725, %2720 ]
  %2728 = ptrtoint ptr %2727 to i64
  %2729 = ptrtoint ptr %2667 to i64
  %2730 = sub i64 %2728, %2729
  br label %2731

2731:                                             ; preds = %2726, %2687, %2674
  %2732 = phi i64 [ %2730, %2726 ], [ %2677, %2674 ], [ %2694, %2687 ]
  %2733 = ptrtoint ptr %2657 to i64
  %2734 = sub i64 %2733, %21
  %2735 = trunc i64 %2734 to i32
  %2736 = mul i32 %2660, -1640531535
  %2737 = lshr i32 %2736, %2187
  %2738 = zext i32 %2737 to i64
  %2739 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2738
  store i32 %2735, ptr %2739, align 4, !tbaa !23
  %2740 = getelementptr i8, ptr %2657, i64 %2732
  %2741 = getelementptr i8, ptr %2740, i64 4
  %2742 = icmp ugt ptr %2657, %2191
  br i1 %2742, label %2747, label %2743

2743:                                             ; preds = %2731
  %2744 = load ptr, ptr %2192, align 8, !tbaa !39
  %2745 = load <2 x i64>, ptr %2657, align 1, !tbaa !34
  store <2 x i64> %2745, ptr %2744, align 1, !tbaa !34
  %2746 = load ptr, ptr %2195, align 8, !tbaa !50
  br label %2747

2747:                                             ; preds = %2743, %2731
  %2748 = phi ptr [ %2656, %2731 ], [ %2746, %2743 ]
  %2749 = getelementptr inbounds nuw i8, ptr %2748, i64 4
  store i16 0, ptr %2749, align 4, !tbaa !55
  store i32 1, ptr %2748, align 4, !tbaa !57
  %2750 = add i64 %2732, 1
  %2751 = icmp ugt i64 %2750, 65535
  br i1 %2751, label %2752, label %2759, !prof !58

2752:                                             ; preds = %2747
  store i32 2, ptr %2194, align 8, !tbaa !52
  %2753 = load ptr, ptr %1, align 8, !tbaa !53
  %2754 = ptrtoint ptr %2748 to i64
  %2755 = ptrtoint ptr %2753 to i64
  %2756 = sub i64 %2754, %2755
  %2757 = lshr exact i64 %2756, 3
  %2758 = trunc i64 %2757 to i32
  store i32 %2758, ptr %2196, align 4, !tbaa !54
  br label %2759

2759:                                             ; preds = %2752, %2747
  %2760 = trunc i64 %2750 to i16
  %2761 = getelementptr inbounds nuw i8, ptr %2748, i64 6
  store i16 %2760, ptr %2761, align 2, !tbaa !59
  %2762 = getelementptr inbounds nuw i8, ptr %2748, i64 8
  store ptr %2762, ptr %2195, align 8, !tbaa !50
  %2763 = icmp ugt ptr %2741, %39
  br i1 %2763, label %.loopexit564, label %.preheader563

.loopexit564:                                     ; preds = %2759, %.preheader563, %2637, %2631
  %2764 = phi i32 [ 0, %2637 ], [ %2392, %2631 ], [ %2659, %.preheader563 ], [ %2658, %2759 ]
  %2765 = phi i32 [ %2396, %2637 ], [ %2396, %2631 ], [ %2658, %.preheader563 ], [ %2659, %2759 ]
  %2766 = phi ptr [ %2635, %2637 ], [ %2635, %2631 ], [ %2657, %.preheader563 ], [ %2741, %2759 ]
  %2767 = getelementptr inbounds nuw i8, ptr %2766, i64 %17
  %2768 = getelementptr inbounds nuw i8, ptr %2767, i64 1
  %2769 = icmp ult ptr %2768, %39
  br i1 %2769, label %2197, label %.loopexit490

2770:                                             ; preds = %2182
  br i1 %62, label %2771, label %.loopexit490

2771:                                             ; preds = %2770
  %2772 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %2773 = load i32, ptr %2772, align 4, !tbaa !21
  %2774 = sub i32 64, %2773
  %2775 = zext nneg i32 %2774 to i64
  %2776 = getelementptr inbounds i8, ptr %38, i64 -7
  %2777 = getelementptr inbounds i8, ptr %38, i64 -3
  %2778 = getelementptr inbounds i8, ptr %38, i64 -1
  %2779 = getelementptr inbounds i8, ptr %38, i64 -32
  %2780 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %2781 = ptrtoint ptr %2779 to i64
  %2782 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %2783 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %2784 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %2785

2785:                                             ; preds = %.loopexit622, %2771
  %2786 = phi ptr [ %61, %2771 ], [ %3350, %.loopexit622 ]
  %2787 = phi ptr [ %60, %2771 ], [ %3349, %.loopexit622 ]
  %2788 = phi ptr [ %3, %2771 ], [ %3348, %.loopexit622 ]
  %2789 = phi ptr [ %45, %2771 ], [ %3348, %.loopexit622 ]
  %2790 = phi i32 [ %58, %2771 ], [ %3347, %.loopexit622 ]
  %2791 = phi i32 [ %56, %2771 ], [ %3346, %.loopexit622 ]
  %2792 = freeze i32 %2790
  %2793 = getelementptr inbounds nuw i8, ptr %2789, i64 1
  %2794 = getelementptr inbounds nuw i8, ptr %2789, i64 128
  %2795 = load i64, ptr %2789, align 1, !tbaa !22
  %2796 = mul i64 %2795, -3523014627271114752
  %2797 = lshr i64 %2796, %2775
  %2798 = load i64, ptr %2793, align 1, !tbaa !22
  %2799 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2797
  %2800 = load i32, ptr %2799, align 4, !tbaa !23
  %2801 = zext i32 %2792 to i64
  %2802 = sub nsw i64 0, %2801
  %2803 = icmp eq i32 %2792, 0
  br i1 %2803, label %.preheader639, label %.preheader643

.preheader639:                                    ; preds = %2785, %2854
  %2804 = phi i64 [ %2831, %2854 ], [ %2797, %2785 ]
  %2805 = phi i64 [ %2845, %2854 ], [ %2798, %2785 ]
  %2806 = phi i32 [ %2844, %2854 ], [ %2800, %2785 ]
  %2807 = phi i64 [ %2855, %2854 ], [ %17, %2785 ]
  %2808 = phi ptr [ %2856, %2854 ], [ %2794, %2785 ]
  %2809 = phi ptr [ %2847, %2854 ], [ %2786, %2785 ]
  %2810 = phi ptr [ %2846, %2854 ], [ %2787, %2785 ]
  %2811 = phi ptr [ %2809, %2854 ], [ %2793, %2785 ]
  %2812 = phi ptr [ %2810, %2854 ], [ %2789, %2785 ]
  %2813 = mul i64 %2805, -3523014627271114752
  %2814 = lshr i64 %2813, %2775
  %2815 = ptrtoint ptr %2812 to i64
  %2816 = sub i64 %2815, %21
  %2817 = trunc i64 %2816 to i32
  %2818 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2804
  store i32 %2817, ptr %2818, align 4, !tbaa !23
  %2819 = icmp ult i32 %2806, %35
  br i1 %2819, label %2826, label %2820

2820:                                             ; preds = %.preheader639
  %2821 = zext i32 %2806 to i64
  %2822 = getelementptr inbounds nuw i8, ptr %19, i64 %2821
  %2823 = load i32, ptr %2822, align 1, !tbaa !23
  %2824 = load i32, ptr %2812, align 1, !tbaa !23
  %2825 = icmp eq i32 %2824, %2823
  br i1 %2825, label %.loopexit640, label %2826

2826:                                             ; preds = %2820, %.preheader639
  %2827 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2814
  %2828 = load i32, ptr %2827, align 4, !tbaa !23
  %2829 = load i64, ptr %2810, align 1, !tbaa !22
  %2830 = mul i64 %2829, -3523014627271114752
  %2831 = lshr i64 %2830, %2775
  %2832 = ptrtoint ptr %2811 to i64
  %2833 = sub i64 %2832, %21
  %2834 = trunc i64 %2833 to i32
  store i32 %2834, ptr %2827, align 4, !tbaa !23
  %2835 = icmp ult i32 %2828, %35
  br i1 %2835, label %2842, label %2836

2836:                                             ; preds = %2826
  %2837 = zext i32 %2828 to i64
  %2838 = getelementptr inbounds nuw i8, ptr %19, i64 %2837
  %2839 = load i32, ptr %2838, align 1, !tbaa !23
  %2840 = load i32, ptr %2811, align 1, !tbaa !23
  %2841 = icmp eq i32 %2840, %2839
  br i1 %2841, label %.loopexit641, label %2842

2842:                                             ; preds = %2836, %2826
  %2843 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2831
  %2844 = load i32, ptr %2843, align 4, !tbaa !23
  %2845 = load i64, ptr %2809, align 1, !tbaa !22
  %2846 = getelementptr inbounds nuw i8, ptr %2810, i64 %2807
  %2847 = getelementptr inbounds nuw i8, ptr %2809, i64 %2807
  %2848 = icmp ult ptr %2846, %2808
  br i1 %2848, label %2854, label %2849

2849:                                             ; preds = %2842
  %2850 = add i64 %2807, 1
  %2851 = getelementptr inbounds nuw i8, ptr %2809, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %2851, i32 0, i32 3, i32 1)
  %2852 = getelementptr inbounds nuw i8, ptr %2809, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %2852, i32 0, i32 3, i32 1)
  %2853 = getelementptr inbounds nuw i8, ptr %2808, i64 128
  br label %2854

2854:                                             ; preds = %2849, %2842
  %2855 = phi i64 [ %2807, %2842 ], [ %2850, %2849 ]
  %2856 = phi ptr [ %2808, %2842 ], [ %2853, %2849 ]
  %2857 = icmp ult ptr %2847, %39
  br i1 %2857, label %.preheader639, label %.loopexit490, !llvm.loop !35

.preheader643:                                    ; preds = %2785, %2935
  %2858 = phi i64 [ %2890, %2935 ], [ %2797, %2785 ]
  %2859 = phi i64 [ %2911, %2935 ], [ %2798, %2785 ]
  %2860 = phi i32 [ %2910, %2935 ], [ %2800, %2785 ]
  %2861 = phi i64 [ %2936, %2935 ], [ %17, %2785 ]
  %2862 = phi ptr [ %2937, %2935 ], [ %2794, %2785 ]
  %2863 = phi ptr [ %2913, %2935 ], [ %2786, %2785 ]
  %2864 = phi ptr [ %2912, %2935 ], [ %2787, %2785 ]
  %2865 = phi ptr [ %2863, %2935 ], [ %2793, %2785 ]
  %2866 = phi ptr [ %2864, %2935 ], [ %2789, %2785 ]
  %2867 = mul i64 %2859, -3523014627271114752
  %2868 = lshr i64 %2867, %2775
  %2869 = getelementptr inbounds i8, ptr %2864, i64 %2802
  %2870 = load i32, ptr %2869, align 1, !tbaa !23
  %2871 = ptrtoint ptr %2866 to i64
  %2872 = sub i64 %2871, %21
  %2873 = trunc i64 %2872 to i32
  %2874 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2858
  store i32 %2873, ptr %2874, align 4, !tbaa !23
  %2875 = load i32, ptr %2864, align 1, !tbaa !23
  %2876 = icmp eq i32 %2875, %2870
  br i1 %2876, label %2920, label %2877

2877:                                             ; preds = %.preheader643
  %2878 = icmp ult i32 %2860, %35
  br i1 %2878, label %2885, label %2879

2879:                                             ; preds = %2877
  %2880 = zext i32 %2860 to i64
  %2881 = getelementptr inbounds nuw i8, ptr %19, i64 %2880
  %2882 = load i32, ptr %2881, align 1, !tbaa !23
  %2883 = load i32, ptr %2866, align 1, !tbaa !23
  %2884 = icmp eq i32 %2883, %2882
  br i1 %2884, label %.loopexit640, label %2885

2885:                                             ; preds = %2879, %2877
  %2886 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2868
  %2887 = load i32, ptr %2886, align 4, !tbaa !23
  %2888 = load i64, ptr %2864, align 1, !tbaa !22
  %2889 = mul i64 %2888, -3523014627271114752
  %2890 = lshr i64 %2889, %2775
  %2891 = ptrtoint ptr %2865 to i64
  %2892 = sub i64 %2891, %21
  %2893 = trunc i64 %2892 to i32
  store i32 %2893, ptr %2886, align 4, !tbaa !23
  %2894 = icmp ult i32 %2887, %35
  br i1 %2894, label %2908, label %2895

2895:                                             ; preds = %2885
  %2896 = zext i32 %2887 to i64
  %2897 = getelementptr inbounds nuw i8, ptr %19, i64 %2896
  %2898 = load i32, ptr %2897, align 1, !tbaa !23
  %2899 = load i32, ptr %2865, align 1, !tbaa !23
  %2900 = icmp eq i32 %2899, %2898
  br i1 %2900, label %.loopexit641, label %2908

.loopexit641:                                     ; preds = %2895, %2836
  %2901 = phi i32 [ %2828, %2836 ], [ %2887, %2895 ]
  %2902 = phi i64 [ %2831, %2836 ], [ %2890, %2895 ]
  %2903 = phi i32 [ %2834, %2836 ], [ %2893, %2895 ]
  %2904 = phi i64 [ %2807, %2836 ], [ %2861, %2895 ]
  %2905 = phi ptr [ %2810, %2836 ], [ %2864, %2895 ]
  %2906 = phi ptr [ %2811, %2836 ], [ %2865, %2895 ]
  %2907 = icmp ult i64 %2904, 5
  br i1 %2907, label %.loopexit640, label %2948

2908:                                             ; preds = %2895, %2885
  %2909 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2890
  %2910 = load i32, ptr %2909, align 4, !tbaa !23
  %2911 = load i64, ptr %2863, align 1, !tbaa !22
  %2912 = getelementptr inbounds nuw i8, ptr %2864, i64 %2861
  %2913 = getelementptr inbounds nuw i8, ptr %2863, i64 %2861
  %2914 = icmp ult ptr %2912, %2862
  br i1 %2914, label %2935, label %2915

2915:                                             ; preds = %2908
  %2916 = add i64 %2861, 1
  %2917 = getelementptr inbounds nuw i8, ptr %2863, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %2917, i32 0, i32 3, i32 1)
  %2918 = getelementptr inbounds nuw i8, ptr %2863, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %2918, i32 0, i32 3, i32 1)
  %2919 = getelementptr inbounds nuw i8, ptr %2862, i64 128
  br label %2935

2920:                                             ; preds = %.preheader643
  %2921 = getelementptr inbounds i8, ptr %2864, i64 %2802
  %2922 = getelementptr inbounds i8, ptr %2864, i64 -1
  %2923 = load i8, ptr %2922, align 1, !tbaa !34
  %2924 = getelementptr inbounds i8, ptr %2921, i64 -1
  %2925 = load i8, ptr %2924, align 1, !tbaa !34
  %2926 = icmp eq i8 %2923, %2925
  %2927 = sext i1 %2926 to i64
  %2928 = getelementptr inbounds i8, ptr %2864, i64 %2927
  %2929 = getelementptr inbounds i8, ptr %2921, i64 %2927
  %2930 = select i1 %2926, i64 5, i64 4
  %2931 = ptrtoint ptr %2865 to i64
  %2932 = sub i64 %2931, %21
  %2933 = trunc i64 %2932 to i32
  %2934 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2868
  store i32 %2933, ptr %2934, align 4, !tbaa !23
  br label %.loopexit635

2935:                                             ; preds = %2915, %2908
  %2936 = phi i64 [ %2861, %2908 ], [ %2916, %2915 ]
  %2937 = phi ptr [ %2862, %2908 ], [ %2919, %2915 ]
  %2938 = icmp ult ptr %2913, %39
  br i1 %2938, label %.preheader643, label %.loopexit490, !llvm.loop !35

.loopexit640:                                     ; preds = %2879, %2820, %.loopexit641
  %2939 = phi ptr [ %2905, %.loopexit641 ], [ %2811, %2820 ], [ %2865, %2879 ]
  %2940 = phi i64 [ %2902, %.loopexit641 ], [ %2814, %2820 ], [ %2868, %2879 ]
  %2941 = phi i32 [ %2901, %.loopexit641 ], [ %2806, %2820 ], [ %2860, %2879 ]
  %2942 = phi i32 [ %2903, %.loopexit641 ], [ %2817, %2820 ], [ %2873, %2879 ]
  %2943 = phi ptr [ %2906, %.loopexit641 ], [ %2812, %2820 ], [ %2866, %2879 ]
  %2944 = ptrtoint ptr %2939 to i64
  %2945 = sub i64 %2944, %21
  %2946 = trunc i64 %2945 to i32
  %2947 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2940
  store i32 %2946, ptr %2947, align 4, !tbaa !23
  br label %2948

2948:                                             ; preds = %.loopexit640, %.loopexit641
  %2949 = phi i32 [ %2901, %.loopexit641 ], [ %2941, %.loopexit640 ]
  %2950 = phi i32 [ %2903, %.loopexit641 ], [ %2942, %.loopexit640 ]
  %2951 = phi ptr [ %2906, %.loopexit641 ], [ %2943, %.loopexit640 ]
  %2952 = zext i32 %2949 to i64
  %2953 = getelementptr inbounds nuw i8, ptr %19, i64 %2952
  %2954 = ptrtoint ptr %2951 to i64
  %2955 = ptrtoint ptr %2953 to i64
  %2956 = sub i64 %2954, %2955
  %2957 = trunc i64 %2956 to i32
  %2958 = add i32 %2957, 3
  %2959 = icmp ugt ptr %2951, %2788
  %2960 = icmp ugt i32 %2949, %35
  %2961 = and i1 %2960, %2959
  br i1 %2961, label %.preheader634, label %.loopexit635

.preheader634:                                    ; preds = %2948, %2970
  %2962 = phi ptr [ %2965, %2970 ], [ %2951, %2948 ]
  %2963 = phi i64 [ %2971, %2970 ], [ 4, %2948 ]
  %2964 = phi ptr [ %2967, %2970 ], [ %2953, %2948 ]
  %2965 = getelementptr inbounds i8, ptr %2962, i64 -1
  %2966 = load i8, ptr %2965, align 1, !tbaa !34
  %2967 = getelementptr inbounds i8, ptr %2964, i64 -1
  %2968 = load i8, ptr %2967, align 1, !tbaa !34
  %2969 = icmp eq i8 %2966, %2968
  br i1 %2969, label %2970, label %.loopexit635

2970:                                             ; preds = %.preheader634
  %2971 = add i64 %2963, 1
  %2972 = icmp ugt ptr %2965, %2788
  %2973 = icmp ugt ptr %2967, %37
  %2974 = and i1 %2972, %2973
  br i1 %2974, label %.preheader634, label %.loopexit635, !llvm.loop !36

.loopexit635:                                     ; preds = %2970, %.preheader634, %2948, %2920
  %2975 = phi i32 [ %2873, %2920 ], [ %2950, %2948 ], [ %2950, %.preheader634 ], [ %2950, %2970 ]
  %2976 = phi i32 [ %2791, %2920 ], [ %2792, %2948 ], [ %2792, %.preheader634 ], [ %2792, %2970 ]
  %2977 = phi i32 [ 1, %2920 ], [ %2958, %2948 ], [ %2958, %.preheader634 ], [ %2958, %2970 ]
  %2978 = phi ptr [ %2929, %2920 ], [ %2953, %2948 ], [ %2967, %2970 ], [ %2964, %.preheader634 ]
  %2979 = phi i64 [ %2930, %2920 ], [ 4, %2948 ], [ %2971, %2970 ], [ %2963, %.preheader634 ]
  %2980 = phi i32 [ %2792, %2920 ], [ %2957, %2948 ], [ %2957, %.preheader634 ], [ %2957, %2970 ]
  %2981 = phi ptr [ %2928, %2920 ], [ %2951, %2948 ], [ %2965, %2970 ], [ %2962, %.preheader634 ]
  %2982 = getelementptr inbounds nuw i8, ptr %2981, i64 %2979
  %2983 = getelementptr inbounds nuw i8, ptr %2978, i64 %2979
  %2984 = icmp ult ptr %2982, %2776
  br i1 %2984, label %2985, label %.loopexit633

2985:                                             ; preds = %.loopexit635
  %2986 = load i64, ptr %2983, align 1, !tbaa !22
  %2987 = load i64, ptr %2982, align 1, !tbaa !22
  %2988 = icmp eq i64 %2986, %2987
  br i1 %2988, label %.preheader632, label %2989

2989:                                             ; preds = %2985
  %2990 = xor i64 %2987, %2986
  %2991 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2990, i1 true)
  %2992 = lshr i64 %2991, 3
  br label %3046

.preheader632:                                    ; preds = %2985, %2998
  %2993 = phi ptr [ %2996, %2998 ], [ %2983, %2985 ]
  %2994 = phi ptr [ %2995, %2998 ], [ %2982, %2985 ]
  %2995 = getelementptr inbounds nuw i8, ptr %2994, i64 8
  %2996 = getelementptr inbounds nuw i8, ptr %2993, i64 8
  %2997 = icmp ult ptr %2995, %2776
  br i1 %2997, label %2998, label %.loopexit633

2998:                                             ; preds = %.preheader632
  %2999 = load i64, ptr %2996, align 1, !tbaa !22
  %3000 = load i64, ptr %2995, align 1, !tbaa !22
  %3001 = icmp eq i64 %2999, %3000
  br i1 %3001, label %.preheader632, label %3002

3002:                                             ; preds = %2998
  %3003 = xor i64 %3000, %2999
  %3004 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3003, i1 true)
  %3005 = lshr i64 %3004, 3
  %3006 = getelementptr inbounds nuw i8, ptr %2995, i64 %3005
  %3007 = ptrtoint ptr %3006 to i64
  %3008 = ptrtoint ptr %2982 to i64
  %3009 = sub i64 %3007, %3008
  br label %3046

.loopexit633:                                     ; preds = %.preheader632, %.loopexit635
  %3010 = phi ptr [ %2983, %.loopexit635 ], [ %2996, %.preheader632 ]
  %3011 = phi ptr [ %2982, %.loopexit635 ], [ %2995, %.preheader632 ]
  %3012 = icmp ult ptr %3011, %2777
  br i1 %3012, label %3013, label %3020

3013:                                             ; preds = %.loopexit633
  %3014 = load i32, ptr %3010, align 1, !tbaa !23
  %3015 = load i32, ptr %3011, align 1, !tbaa !23
  %3016 = icmp eq i32 %3014, %3015
  br i1 %3016, label %3017, label %3020

3017:                                             ; preds = %3013
  %3018 = getelementptr inbounds nuw i8, ptr %3011, i64 4
  %3019 = getelementptr inbounds nuw i8, ptr %3010, i64 4
  br label %3020

3020:                                             ; preds = %3017, %3013, %.loopexit633
  %3021 = phi ptr [ %3019, %3017 ], [ %3010, %3013 ], [ %3010, %.loopexit633 ]
  %3022 = phi ptr [ %3018, %3017 ], [ %3011, %3013 ], [ %3011, %.loopexit633 ]
  %3023 = icmp ult ptr %3022, %2778
  br i1 %3023, label %3024, label %3031

3024:                                             ; preds = %3020
  %3025 = load i16, ptr %3021, align 1, !tbaa !37
  %3026 = load i16, ptr %3022, align 1, !tbaa !37
  %3027 = icmp eq i16 %3025, %3026
  br i1 %3027, label %3028, label %3031

3028:                                             ; preds = %3024
  %3029 = getelementptr inbounds nuw i8, ptr %3022, i64 2
  %3030 = getelementptr inbounds nuw i8, ptr %3021, i64 2
  br label %3031

3031:                                             ; preds = %3028, %3024, %3020
  %3032 = phi ptr [ %3030, %3028 ], [ %3021, %3024 ], [ %3021, %3020 ]
  %3033 = phi ptr [ %3029, %3028 ], [ %3022, %3024 ], [ %3022, %3020 ]
  %3034 = icmp ult ptr %3033, %38
  br i1 %3034, label %3035, label %3041

3035:                                             ; preds = %3031
  %3036 = load i8, ptr %3032, align 1, !tbaa !34
  %3037 = load i8, ptr %3033, align 1, !tbaa !34
  %3038 = icmp eq i8 %3036, %3037
  %3039 = zext i1 %3038 to i64
  %3040 = getelementptr inbounds nuw i8, ptr %3033, i64 %3039
  br label %3041

3041:                                             ; preds = %3035, %3031
  %3042 = phi ptr [ %3033, %3031 ], [ %3040, %3035 ]
  %3043 = ptrtoint ptr %3042 to i64
  %3044 = ptrtoint ptr %2982 to i64
  %3045 = sub i64 %3043, %3044
  br label %3046

3046:                                             ; preds = %3041, %3002, %2989
  %3047 = phi i64 [ %3045, %3041 ], [ %2992, %2989 ], [ %3009, %3002 ]
  %3048 = add i64 %3047, %2979
  %3049 = ptrtoint ptr %2981 to i64
  %3050 = ptrtoint ptr %2788 to i64
  %3051 = sub i64 %3049, %3050
  %3052 = icmp ugt ptr %2981, %2779
  %3053 = load ptr, ptr %2780, align 8, !tbaa !39
  br i1 %3052, label %3076, label %3054

3054:                                             ; preds = %3046
  %3055 = load <2 x i64>, ptr %2788, align 1, !tbaa !34
  store <2 x i64> %3055, ptr %3053, align 1, !tbaa !34
  %3056 = icmp ugt i64 %3051, 16
  br i1 %3056, label %3057, label %3187

3057:                                             ; preds = %3054
  %3058 = load ptr, ptr %2780, align 8, !tbaa !39
  %3059 = getelementptr inbounds nuw i8, ptr %3058, i64 16
  %3060 = getelementptr inbounds nuw i8, ptr %2788, i64 16
  %3061 = getelementptr i8, ptr %3058, i64 %3051
  %3062 = load <2 x i64>, ptr %3060, align 1, !tbaa !34
  store <2 x i64> %3062, ptr %3059, align 1, !tbaa !34
  %3063 = icmp ult i64 %3051, 33
  br i1 %3063, label %3187, label %3064

3064:                                             ; preds = %3057
  %3065 = getelementptr inbounds nuw i8, ptr %3058, i64 32
  br label %3066

3066:                                             ; preds = %3066, %3064
  %3067 = phi ptr [ %3065, %3064 ], [ %3074, %3066 ]
  %3068 = phi ptr [ %3060, %3064 ], [ %3072, %3066 ]
  %3069 = getelementptr inbounds nuw i8, ptr %3068, i64 16
  %3070 = load <2 x i64>, ptr %3069, align 1, !tbaa !34
  store <2 x i64> %3070, ptr %3067, align 1, !tbaa !34
  %3071 = getelementptr inbounds nuw i8, ptr %3067, i64 16
  %3072 = getelementptr inbounds nuw i8, ptr %3068, i64 32
  %3073 = load <2 x i64>, ptr %3072, align 1, !tbaa !34
  store <2 x i64> %3073, ptr %3071, align 1, !tbaa !34
  %3074 = getelementptr inbounds nuw i8, ptr %3067, i64 32
  %3075 = icmp ult ptr %3074, %3061
  br i1 %3075, label %3066, label %.loopexit627, !llvm.loop !42

3076:                                             ; preds = %3046
  %3077 = icmp ugt ptr %2788, %2779
  br i1 %3077, label %.loopexit630, label %3078

3078:                                             ; preds = %3076
  %3079 = sub i64 %2781, %3050
  %3080 = getelementptr inbounds i8, ptr %3053, i64 %3079
  %3081 = load <2 x i64>, ptr %2788, align 1, !tbaa !34
  store <2 x i64> %3081, ptr %3053, align 1, !tbaa !34
  %3082 = icmp ult i64 %3079, 17
  br i1 %3082, label %.loopexit630, label %3083

3083:                                             ; preds = %3078
  %3084 = getelementptr inbounds nuw i8, ptr %3053, i64 16
  br label %3085

3085:                                             ; preds = %3085, %3083
  %3086 = phi ptr [ %3084, %3083 ], [ %3093, %3085 ]
  %3087 = phi ptr [ %2788, %3083 ], [ %3091, %3085 ]
  %3088 = getelementptr inbounds nuw i8, ptr %3087, i64 16
  %3089 = load <2 x i64>, ptr %3088, align 1, !tbaa !34
  store <2 x i64> %3089, ptr %3086, align 1, !tbaa !34
  %3090 = getelementptr inbounds nuw i8, ptr %3086, i64 16
  %3091 = getelementptr inbounds nuw i8, ptr %3087, i64 32
  %3092 = load <2 x i64>, ptr %3091, align 1, !tbaa !34
  store <2 x i64> %3092, ptr %3090, align 1, !tbaa !34
  %3093 = getelementptr inbounds nuw i8, ptr %3086, i64 32
  %3094 = icmp ult ptr %3093, %3080
  br i1 %3094, label %3085, label %.loopexit630, !llvm.loop !42

.loopexit630:                                     ; preds = %3085, %3078, %3076
  %3095 = phi ptr [ %2779, %3078 ], [ %2788, %3076 ], [ %2779, %3085 ]
  %3096 = phi ptr [ %3080, %3078 ], [ %3053, %3076 ], [ %3080, %3085 ]
  %3097 = icmp ult ptr %3095, %2981
  br i1 %3097, label %3098, label %.loopexit627

3098:                                             ; preds = %.loopexit630
  %3099 = ptrtoint ptr %3095 to i64
  %3100 = ptrtoint ptr %3096 to i64
  %3101 = sub i64 %3049, %3099
  %3102 = icmp ult i64 %3101, 4
  %3103 = sub i64 %3100, %3099
  %3104 = icmp ult i64 %3103, 32
  %3105 = select i1 %3102, i1 true, i1 %3104
  br i1 %3105, label %3141, label %3106

3106:                                             ; preds = %3098
  %3107 = icmp ult i64 %3101, 32
  br i1 %3107, label %3127, label %3108

3108:                                             ; preds = %3106
  %3109 = and i64 %3101, -32
  br label %3110

3110:                                             ; preds = %3110, %3108
  %3111 = phi i64 [ 0, %3108 ], [ %3118, %3110 ]
  %3112 = getelementptr i8, ptr %3096, i64 %3111
  %3113 = getelementptr i8, ptr %3095, i64 %3111
  %3114 = getelementptr i8, ptr %3113, i64 16
  %3115 = load <16 x i8>, ptr %3113, align 1, !tbaa !34
  %3116 = load <16 x i8>, ptr %3114, align 1, !tbaa !34
  %3117 = getelementptr i8, ptr %3112, i64 16
  store <16 x i8> %3115, ptr %3112, align 1, !tbaa !34
  store <16 x i8> %3116, ptr %3117, align 1, !tbaa !34
  %3118 = add nuw i64 %3111, 32
  %3119 = icmp eq i64 %3118, %3109
  br i1 %3119, label %3120, label %3110, !llvm.loop !76

3120:                                             ; preds = %3110
  %3121 = icmp eq i64 %3101, %3109
  br i1 %3121, label %.loopexit627, label %3122

3122:                                             ; preds = %3120
  %3123 = getelementptr i8, ptr %3096, i64 %3109
  %3124 = getelementptr i8, ptr %3095, i64 %3109
  %3125 = and i64 %3101, 28
  %3126 = icmp eq i64 %3125, 0
  br i1 %3126, label %3141, label %3127

3127:                                             ; preds = %3122, %3106
  %3128 = phi i64 [ %3109, %3122 ], [ 0, %3106 ]
  %3129 = and i64 %3101, -4
  br label %3130

3130:                                             ; preds = %3130, %3127
  %3131 = phi i64 [ %3128, %3127 ], [ %3135, %3130 ]
  %3132 = getelementptr i8, ptr %3096, i64 %3131
  %3133 = getelementptr i8, ptr %3095, i64 %3131
  %3134 = load <4 x i8>, ptr %3133, align 1, !tbaa !34
  store <4 x i8> %3134, ptr %3132, align 1, !tbaa !34
  %3135 = add nuw i64 %3131, 4
  %3136 = icmp eq i64 %3135, %3129
  br i1 %3136, label %3137, label %3130, !llvm.loop !77

3137:                                             ; preds = %3130
  %3138 = getelementptr i8, ptr %3096, i64 %3129
  %3139 = getelementptr i8, ptr %3095, i64 %3129
  %3140 = icmp eq i64 %3101, %3129
  br i1 %3140, label %.loopexit627, label %3141

3141:                                             ; preds = %3137, %3122, %3098
  %3142 = phi ptr [ %3096, %3098 ], [ %3123, %3122 ], [ %3138, %3137 ]
  %3143 = phi ptr [ %3095, %3098 ], [ %3124, %3122 ], [ %3139, %3137 ]
  %3144 = ptrtoint ptr %3143 to i64
  %3145 = sub i64 %3049, %3144
  %3146 = and i64 %3145, 7
  %3147 = icmp eq i64 %3146, 0
  br i1 %3147, label %.loopexit629, label %.preheader628

.preheader628:                                    ; preds = %3141, %.preheader628
  %3148 = phi ptr [ %3153, %.preheader628 ], [ %3142, %3141 ]
  %3149 = phi ptr [ %3151, %.preheader628 ], [ %3143, %3141 ]
  %3150 = phi i64 [ %3154, %.preheader628 ], [ 0, %3141 ]
  %3151 = getelementptr inbounds nuw i8, ptr %3149, i64 1
  %3152 = load i8, ptr %3149, align 1, !tbaa !34
  %3153 = getelementptr inbounds nuw i8, ptr %3148, i64 1
  store i8 %3152, ptr %3148, align 1, !tbaa !34
  %3154 = add nuw nsw i64 %3150, 1
  %3155 = icmp eq i64 %3154, %3146
  br i1 %3155, label %.loopexit629, label %.preheader628, !llvm.loop !78

.loopexit629:                                     ; preds = %.preheader628, %3141
  %3156 = phi ptr [ %3142, %3141 ], [ %3153, %.preheader628 ]
  %3157 = phi ptr [ %3143, %3141 ], [ %3151, %.preheader628 ]
  %3158 = sub i64 %3144, %3049
  %3159 = icmp ugt i64 %3158, -8
  br i1 %3159, label %.loopexit627, label %.preheader626

.preheader626:                                    ; preds = %.loopexit629, %.preheader626
  %3160 = phi ptr [ %3185, %.preheader626 ], [ %3156, %.loopexit629 ]
  %3161 = phi ptr [ %3183, %.preheader626 ], [ %3157, %.loopexit629 ]
  %3162 = getelementptr inbounds nuw i8, ptr %3161, i64 1
  %3163 = load i8, ptr %3161, align 1, !tbaa !34
  %3164 = getelementptr inbounds nuw i8, ptr %3160, i64 1
  store i8 %3163, ptr %3160, align 1, !tbaa !34
  %3165 = getelementptr inbounds nuw i8, ptr %3161, i64 2
  %3166 = load i8, ptr %3162, align 1, !tbaa !34
  %3167 = getelementptr inbounds nuw i8, ptr %3160, i64 2
  store i8 %3166, ptr %3164, align 1, !tbaa !34
  %3168 = getelementptr inbounds nuw i8, ptr %3161, i64 3
  %3169 = load i8, ptr %3165, align 1, !tbaa !34
  %3170 = getelementptr inbounds nuw i8, ptr %3160, i64 3
  store i8 %3169, ptr %3167, align 1, !tbaa !34
  %3171 = getelementptr inbounds nuw i8, ptr %3161, i64 4
  %3172 = load i8, ptr %3168, align 1, !tbaa !34
  %3173 = getelementptr inbounds nuw i8, ptr %3160, i64 4
  store i8 %3172, ptr %3170, align 1, !tbaa !34
  %3174 = getelementptr inbounds nuw i8, ptr %3161, i64 5
  %3175 = load i8, ptr %3171, align 1, !tbaa !34
  %3176 = getelementptr inbounds nuw i8, ptr %3160, i64 5
  store i8 %3175, ptr %3173, align 1, !tbaa !34
  %3177 = getelementptr inbounds nuw i8, ptr %3161, i64 6
  %3178 = load i8, ptr %3174, align 1, !tbaa !34
  %3179 = getelementptr inbounds nuw i8, ptr %3160, i64 6
  store i8 %3178, ptr %3176, align 1, !tbaa !34
  %3180 = getelementptr inbounds nuw i8, ptr %3161, i64 7
  %3181 = load i8, ptr %3177, align 1, !tbaa !34
  %3182 = getelementptr inbounds nuw i8, ptr %3160, i64 7
  store i8 %3181, ptr %3179, align 1, !tbaa !34
  %3183 = getelementptr inbounds nuw i8, ptr %3161, i64 8
  %3184 = load i8, ptr %3180, align 1, !tbaa !34
  %3185 = getelementptr inbounds nuw i8, ptr %3160, i64 8
  store i8 %3184, ptr %3182, align 1, !tbaa !34
  %3186 = icmp eq ptr %3183, %2981
  br i1 %3186, label %.loopexit627, label %.preheader626, !llvm.loop !79

3187:                                             ; preds = %3057, %3054
  %3188 = load ptr, ptr %2780, align 8, !tbaa !39
  %3189 = getelementptr inbounds nuw i8, ptr %3188, i64 %3051
  store ptr %3189, ptr %2780, align 8, !tbaa !39
  %3190 = load ptr, ptr %2783, align 8, !tbaa !50
  br label %3202

.loopexit627:                                     ; preds = %3066, %.preheader626, %.loopexit629, %3137, %3120, %.loopexit630
  %3191 = load ptr, ptr %2780, align 8, !tbaa !39
  %3192 = getelementptr inbounds nuw i8, ptr %3191, i64 %3051
  store ptr %3192, ptr %2780, align 8, !tbaa !39
  %3193 = icmp ugt i64 %3051, 65535
  %3194 = load ptr, ptr %2783, align 8, !tbaa !50
  br i1 %3193, label %3195, label %3202, !prof !51

3195:                                             ; preds = %.loopexit627
  store i32 1, ptr %2782, align 8, !tbaa !52
  %3196 = load ptr, ptr %1, align 8, !tbaa !53
  %3197 = ptrtoint ptr %3194 to i64
  %3198 = ptrtoint ptr %3196 to i64
  %3199 = sub i64 %3197, %3198
  %3200 = lshr exact i64 %3199, 3
  %3201 = trunc i64 %3200 to i32
  store i32 %3201, ptr %2784, align 4, !tbaa !54
  br label %3202

3202:                                             ; preds = %3195, %.loopexit627, %3187
  %3203 = phi ptr [ %3190, %3187 ], [ %3194, %3195 ], [ %3194, %.loopexit627 ]
  %3204 = trunc i64 %3051 to i16
  %3205 = getelementptr inbounds nuw i8, ptr %3203, i64 4
  store i16 %3204, ptr %3205, align 4, !tbaa !55
  store i32 %2977, ptr %3203, align 4, !tbaa !57
  %3206 = add i64 %3048, -3
  %3207 = icmp ugt i64 %3206, 65535
  br i1 %3207, label %3208, label %3215, !prof !58

3208:                                             ; preds = %3202
  store i32 2, ptr %2782, align 8, !tbaa !52
  %3209 = load ptr, ptr %1, align 8, !tbaa !53
  %3210 = ptrtoint ptr %3203 to i64
  %3211 = ptrtoint ptr %3209 to i64
  %3212 = sub i64 %3210, %3211
  %3213 = lshr exact i64 %3212, 3
  %3214 = trunc i64 %3213 to i32
  store i32 %3214, ptr %2784, align 4, !tbaa !54
  br label %3215

3215:                                             ; preds = %3208, %3202
  %3216 = trunc i64 %3206 to i16
  %3217 = getelementptr inbounds nuw i8, ptr %3203, i64 6
  store i16 %3216, ptr %3217, align 2, !tbaa !59
  %3218 = getelementptr inbounds nuw i8, ptr %3203, i64 8
  store ptr %3218, ptr %2783, align 8, !tbaa !50
  %3219 = getelementptr inbounds nuw i8, ptr %2981, i64 %3048
  %3220 = icmp ugt ptr %3219, %39
  br i1 %3220, label %.loopexit622, label %3221

3221:                                             ; preds = %3215
  %3222 = add i32 %2975, 2
  %3223 = zext i32 %2975 to i64
  %3224 = getelementptr inbounds nuw i8, ptr %59, i64 %3223
  %3225 = load i64, ptr %3224, align 1, !tbaa !22
  %3226 = mul i64 %3225, -3523014627271114752
  %3227 = lshr i64 %3226, %2775
  %3228 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %3227
  store i32 %3222, ptr %3228, align 4, !tbaa !23
  %3229 = getelementptr inbounds i8, ptr %3219, i64 -2
  %3230 = ptrtoint ptr %3229 to i64
  %3231 = sub i64 %3230, %21
  %3232 = trunc i64 %3231 to i32
  %3233 = load i64, ptr %3229, align 1, !tbaa !22
  %3234 = mul i64 %3233, -3523014627271114752
  %3235 = lshr i64 %3234, %2775
  %3236 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %3235
  store i32 %3232, ptr %3236, align 4, !tbaa !23
  %3237 = icmp eq i32 %2976, 0
  br i1 %3237, label %.loopexit622, label %.preheader621

.preheader621:                                    ; preds = %3221, %3341
  %3238 = phi ptr [ %3344, %3341 ], [ %3218, %3221 ]
  %3239 = phi ptr [ %3323, %3341 ], [ %3219, %3221 ]
  %3240 = phi i32 [ %3241, %3341 ], [ %2980, %3221 ]
  %3241 = phi i32 [ %3240, %3341 ], [ %2976, %3221 ]
  %3242 = load i32, ptr %3239, align 1, !tbaa !23
  %3243 = zext i32 %3241 to i64
  %3244 = sub nsw i64 0, %3243
  %3245 = getelementptr inbounds i8, ptr %3239, i64 %3244
  %3246 = load i32, ptr %3245, align 1, !tbaa !23
  %3247 = icmp eq i32 %3242, %3246
  br i1 %3247, label %3248, label %.loopexit622

3248:                                             ; preds = %.preheader621
  %3249 = getelementptr inbounds nuw i8, ptr %3239, i64 4
  %3250 = getelementptr inbounds i8, ptr %3249, i64 %3244
  %3251 = icmp ult ptr %3249, %2776
  br i1 %3251, label %3252, label %.loopexit620

3252:                                             ; preds = %3248
  %3253 = load i64, ptr %3250, align 1, !tbaa !22
  %3254 = load i64, ptr %3249, align 1, !tbaa !22
  %3255 = icmp eq i64 %3253, %3254
  br i1 %3255, label %.preheader619, label %3256

3256:                                             ; preds = %3252
  %3257 = xor i64 %3254, %3253
  %3258 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3257, i1 true)
  %3259 = lshr i64 %3258, 3
  br label %3313

.preheader619:                                    ; preds = %3252, %3265
  %3260 = phi ptr [ %3263, %3265 ], [ %3250, %3252 ]
  %3261 = phi ptr [ %3262, %3265 ], [ %3249, %3252 ]
  %3262 = getelementptr inbounds nuw i8, ptr %3261, i64 8
  %3263 = getelementptr inbounds nuw i8, ptr %3260, i64 8
  %3264 = icmp ult ptr %3262, %2776
  br i1 %3264, label %3265, label %.loopexit620

3265:                                             ; preds = %.preheader619
  %3266 = load i64, ptr %3263, align 1, !tbaa !22
  %3267 = load i64, ptr %3262, align 1, !tbaa !22
  %3268 = icmp eq i64 %3266, %3267
  br i1 %3268, label %.preheader619, label %3269

3269:                                             ; preds = %3265
  %3270 = xor i64 %3267, %3266
  %3271 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3270, i1 true)
  %3272 = lshr i64 %3271, 3
  %3273 = getelementptr inbounds nuw i8, ptr %3262, i64 %3272
  %3274 = ptrtoint ptr %3273 to i64
  %3275 = ptrtoint ptr %3249 to i64
  %3276 = sub i64 %3274, %3275
  br label %3313

.loopexit620:                                     ; preds = %.preheader619, %3248
  %3277 = phi ptr [ %3250, %3248 ], [ %3263, %.preheader619 ]
  %3278 = phi ptr [ %3249, %3248 ], [ %3262, %.preheader619 ]
  %3279 = icmp ult ptr %3278, %2777
  br i1 %3279, label %3280, label %3287

3280:                                             ; preds = %.loopexit620
  %3281 = load i32, ptr %3277, align 1, !tbaa !23
  %3282 = load i32, ptr %3278, align 1, !tbaa !23
  %3283 = icmp eq i32 %3281, %3282
  br i1 %3283, label %3284, label %3287

3284:                                             ; preds = %3280
  %3285 = getelementptr inbounds nuw i8, ptr %3278, i64 4
  %3286 = getelementptr inbounds nuw i8, ptr %3277, i64 4
  br label %3287

3287:                                             ; preds = %3284, %3280, %.loopexit620
  %3288 = phi ptr [ %3286, %3284 ], [ %3277, %3280 ], [ %3277, %.loopexit620 ]
  %3289 = phi ptr [ %3285, %3284 ], [ %3278, %3280 ], [ %3278, %.loopexit620 ]
  %3290 = icmp ult ptr %3289, %2778
  br i1 %3290, label %3291, label %3298

3291:                                             ; preds = %3287
  %3292 = load i16, ptr %3288, align 1, !tbaa !37
  %3293 = load i16, ptr %3289, align 1, !tbaa !37
  %3294 = icmp eq i16 %3292, %3293
  br i1 %3294, label %3295, label %3298

3295:                                             ; preds = %3291
  %3296 = getelementptr inbounds nuw i8, ptr %3289, i64 2
  %3297 = getelementptr inbounds nuw i8, ptr %3288, i64 2
  br label %3298

3298:                                             ; preds = %3295, %3291, %3287
  %3299 = phi ptr [ %3297, %3295 ], [ %3288, %3291 ], [ %3288, %3287 ]
  %3300 = phi ptr [ %3296, %3295 ], [ %3289, %3291 ], [ %3289, %3287 ]
  %3301 = icmp ult ptr %3300, %38
  br i1 %3301, label %3302, label %3308

3302:                                             ; preds = %3298
  %3303 = load i8, ptr %3299, align 1, !tbaa !34
  %3304 = load i8, ptr %3300, align 1, !tbaa !34
  %3305 = icmp eq i8 %3303, %3304
  %3306 = zext i1 %3305 to i64
  %3307 = getelementptr inbounds nuw i8, ptr %3300, i64 %3306
  br label %3308

3308:                                             ; preds = %3302, %3298
  %3309 = phi ptr [ %3300, %3298 ], [ %3307, %3302 ]
  %3310 = ptrtoint ptr %3309 to i64
  %3311 = ptrtoint ptr %3249 to i64
  %3312 = sub i64 %3310, %3311
  br label %3313

3313:                                             ; preds = %3308, %3269, %3256
  %3314 = phi i64 [ %3312, %3308 ], [ %3259, %3256 ], [ %3276, %3269 ]
  %3315 = ptrtoint ptr %3239 to i64
  %3316 = sub i64 %3315, %21
  %3317 = trunc i64 %3316 to i32
  %3318 = load i64, ptr %3239, align 1, !tbaa !22
  %3319 = mul i64 %3318, -3523014627271114752
  %3320 = lshr i64 %3319, %2775
  %3321 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %3320
  store i32 %3317, ptr %3321, align 4, !tbaa !23
  %3322 = getelementptr i8, ptr %3239, i64 %3314
  %3323 = getelementptr i8, ptr %3322, i64 4
  %3324 = icmp ugt ptr %3239, %2779
  br i1 %3324, label %3329, label %3325

3325:                                             ; preds = %3313
  %3326 = load ptr, ptr %2780, align 8, !tbaa !39
  %3327 = load <2 x i64>, ptr %3239, align 1, !tbaa !34
  store <2 x i64> %3327, ptr %3326, align 1, !tbaa !34
  %3328 = load ptr, ptr %2783, align 8, !tbaa !50
  br label %3329

3329:                                             ; preds = %3325, %3313
  %3330 = phi ptr [ %3238, %3313 ], [ %3328, %3325 ]
  %3331 = getelementptr inbounds nuw i8, ptr %3330, i64 4
  store i16 0, ptr %3331, align 4, !tbaa !55
  store i32 1, ptr %3330, align 4, !tbaa !57
  %3332 = add i64 %3314, 1
  %3333 = icmp ugt i64 %3332, 65535
  br i1 %3333, label %3334, label %3341, !prof !58

3334:                                             ; preds = %3329
  store i32 2, ptr %2782, align 8, !tbaa !52
  %3335 = load ptr, ptr %1, align 8, !tbaa !53
  %3336 = ptrtoint ptr %3330 to i64
  %3337 = ptrtoint ptr %3335 to i64
  %3338 = sub i64 %3336, %3337
  %3339 = lshr exact i64 %3338, 3
  %3340 = trunc i64 %3339 to i32
  store i32 %3340, ptr %2784, align 4, !tbaa !54
  br label %3341

3341:                                             ; preds = %3334, %3329
  %3342 = trunc i64 %3332 to i16
  %3343 = getelementptr inbounds nuw i8, ptr %3330, i64 6
  store i16 %3342, ptr %3343, align 2, !tbaa !59
  %3344 = getelementptr inbounds nuw i8, ptr %3330, i64 8
  store ptr %3344, ptr %2783, align 8, !tbaa !50
  %3345 = icmp ugt ptr %3323, %39
  br i1 %3345, label %.loopexit622, label %.preheader621

.loopexit622:                                     ; preds = %3341, %.preheader621, %3221, %3215
  %3346 = phi i32 [ 0, %3221 ], [ %2976, %3215 ], [ %3241, %.preheader621 ], [ %3240, %3341 ]
  %3347 = phi i32 [ %2980, %3221 ], [ %2980, %3215 ], [ %3240, %.preheader621 ], [ %3241, %3341 ]
  %3348 = phi ptr [ %3219, %3221 ], [ %3219, %3215 ], [ %3239, %.preheader621 ], [ %3323, %3341 ]
  %3349 = getelementptr inbounds nuw i8, ptr %3348, i64 %17
  %3350 = getelementptr inbounds nuw i8, ptr %3349, i64 1
  %3351 = icmp ult ptr %3350, %39
  br i1 %3351, label %2785, label %.loopexit490

3352:                                             ; preds = %2182
  br i1 %62, label %3353, label %.loopexit490

3353:                                             ; preds = %3352
  %3354 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %3355 = load i32, ptr %3354, align 4, !tbaa !21
  %3356 = sub i32 64, %3355
  %3357 = zext nneg i32 %3356 to i64
  %3358 = getelementptr inbounds i8, ptr %38, i64 -7
  %3359 = getelementptr inbounds i8, ptr %38, i64 -3
  %3360 = getelementptr inbounds i8, ptr %38, i64 -1
  %3361 = getelementptr inbounds i8, ptr %38, i64 -32
  %3362 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %3363 = ptrtoint ptr %3361 to i64
  %3364 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %3365 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3366 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %3367

3367:                                             ; preds = %.loopexit651, %3353
  %3368 = phi ptr [ %61, %3353 ], [ %3932, %.loopexit651 ]
  %3369 = phi ptr [ %60, %3353 ], [ %3931, %.loopexit651 ]
  %3370 = phi ptr [ %3, %3353 ], [ %3930, %.loopexit651 ]
  %3371 = phi ptr [ %45, %3353 ], [ %3930, %.loopexit651 ]
  %3372 = phi i32 [ %58, %3353 ], [ %3929, %.loopexit651 ]
  %3373 = phi i32 [ %56, %3353 ], [ %3928, %.loopexit651 ]
  %3374 = freeze i32 %3372
  %3375 = getelementptr inbounds nuw i8, ptr %3371, i64 1
  %3376 = getelementptr inbounds nuw i8, ptr %3371, i64 128
  %3377 = load i64, ptr %3371, align 1, !tbaa !22
  %3378 = mul i64 %3377, -3523014627193847808
  %3379 = lshr i64 %3378, %3357
  %3380 = load i64, ptr %3375, align 1, !tbaa !22
  %3381 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %3379
  %3382 = load i32, ptr %3381, align 4, !tbaa !23
  %3383 = zext i32 %3374 to i64
  %3384 = sub nsw i64 0, %3383
  %3385 = icmp eq i32 %3374, 0
  br i1 %3385, label %.preheader668, label %.preheader672

.preheader668:                                    ; preds = %3367, %3436
  %3386 = phi i64 [ %3413, %3436 ], [ %3379, %3367 ]
  %3387 = phi i64 [ %3427, %3436 ], [ %3380, %3367 ]
  %3388 = phi i32 [ %3426, %3436 ], [ %3382, %3367 ]
  %3389 = phi i64 [ %3437, %3436 ], [ %17, %3367 ]
  %3390 = phi ptr [ %3438, %3436 ], [ %3376, %3367 ]
  %3391 = phi ptr [ %3429, %3436 ], [ %3368, %3367 ]
  %3392 = phi ptr [ %3428, %3436 ], [ %3369, %3367 ]
  %3393 = phi ptr [ %3391, %3436 ], [ %3375, %3367 ]
  %3394 = phi ptr [ %3392, %3436 ], [ %3371, %3367 ]
  %3395 = mul i64 %3387, -3523014627193847808
  %3396 = lshr i64 %3395, %3357
  %3397 = ptrtoint ptr %3394 to i64
  %3398 = sub i64 %3397, %21
  %3399 = trunc i64 %3398 to i32
  %3400 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %3386
  store i32 %3399, ptr %3400, align 4, !tbaa !23
  %3401 = icmp ult i32 %3388, %35
  br i1 %3401, label %3408, label %3402

3402:                                             ; preds = %.preheader668
  %3403 = zext i32 %3388 to i64
  %3404 = getelementptr inbounds nuw i8, ptr %19, i64 %3403
  %3405 = load i32, ptr %3404, align 1, !tbaa !23
  %3406 = load i32, ptr %3394, align 1, !tbaa !23
  %3407 = icmp eq i32 %3406, %3405
  br i1 %3407, label %.loopexit669, label %3408

3408:                                             ; preds = %3402, %.preheader668
  %3409 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %3396
  %3410 = load i32, ptr %3409, align 4, !tbaa !23
  %3411 = load i64, ptr %3392, align 1, !tbaa !22
  %3412 = mul i64 %3411, -3523014627193847808
  %3413 = lshr i64 %3412, %3357
  %3414 = ptrtoint ptr %3393 to i64
  %3415 = sub i64 %3414, %21
  %3416 = trunc i64 %3415 to i32
  store i32 %3416, ptr %3409, align 4, !tbaa !23
  %3417 = icmp ult i32 %3410, %35
  br i1 %3417, label %3424, label %3418

3418:                                             ; preds = %3408
  %3419 = zext i32 %3410 to i64
  %3420 = getelementptr inbounds nuw i8, ptr %19, i64 %3419
  %3421 = load i32, ptr %3420, align 1, !tbaa !23
  %3422 = load i32, ptr %3393, align 1, !tbaa !23
  %3423 = icmp eq i32 %3422, %3421
  br i1 %3423, label %.loopexit670, label %3424

3424:                                             ; preds = %3418, %3408
  %3425 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %3413
  %3426 = load i32, ptr %3425, align 4, !tbaa !23
  %3427 = load i64, ptr %3391, align 1, !tbaa !22
  %3428 = getelementptr inbounds nuw i8, ptr %3392, i64 %3389
  %3429 = getelementptr inbounds nuw i8, ptr %3391, i64 %3389
  %3430 = icmp ult ptr %3428, %3390
  br i1 %3430, label %3436, label %3431

3431:                                             ; preds = %3424
  %3432 = add i64 %3389, 1
  %3433 = getelementptr inbounds nuw i8, ptr %3391, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %3433, i32 0, i32 3, i32 1)
  %3434 = getelementptr inbounds nuw i8, ptr %3391, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %3434, i32 0, i32 3, i32 1)
  %3435 = getelementptr inbounds nuw i8, ptr %3390, i64 128
  br label %3436

3436:                                             ; preds = %3431, %3424
  %3437 = phi i64 [ %3389, %3424 ], [ %3432, %3431 ]
  %3438 = phi ptr [ %3390, %3424 ], [ %3435, %3431 ]
  %3439 = icmp ult ptr %3429, %39
  br i1 %3439, label %.preheader668, label %.loopexit490, !llvm.loop !35

.preheader672:                                    ; preds = %3367, %3517
  %3440 = phi i64 [ %3472, %3517 ], [ %3379, %3367 ]
  %3441 = phi i64 [ %3493, %3517 ], [ %3380, %3367 ]
  %3442 = phi i32 [ %3492, %3517 ], [ %3382, %3367 ]
  %3443 = phi i64 [ %3518, %3517 ], [ %17, %3367 ]
  %3444 = phi ptr [ %3519, %3517 ], [ %3376, %3367 ]
  %3445 = phi ptr [ %3495, %3517 ], [ %3368, %3367 ]
  %3446 = phi ptr [ %3494, %3517 ], [ %3369, %3367 ]
  %3447 = phi ptr [ %3445, %3517 ], [ %3375, %3367 ]
  %3448 = phi ptr [ %3446, %3517 ], [ %3371, %3367 ]
  %3449 = mul i64 %3441, -3523014627193847808
  %3450 = lshr i64 %3449, %3357
  %3451 = getelementptr inbounds i8, ptr %3446, i64 %3384
  %3452 = load i32, ptr %3451, align 1, !tbaa !23
  %3453 = ptrtoint ptr %3448 to i64
  %3454 = sub i64 %3453, %21
  %3455 = trunc i64 %3454 to i32
  %3456 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %3440
  store i32 %3455, ptr %3456, align 4, !tbaa !23
  %3457 = load i32, ptr %3446, align 1, !tbaa !23
  %3458 = icmp eq i32 %3457, %3452
  br i1 %3458, label %3502, label %3459

3459:                                             ; preds = %.preheader672
  %3460 = icmp ult i32 %3442, %35
  br i1 %3460, label %3467, label %3461

3461:                                             ; preds = %3459
  %3462 = zext i32 %3442 to i64
  %3463 = getelementptr inbounds nuw i8, ptr %19, i64 %3462
  %3464 = load i32, ptr %3463, align 1, !tbaa !23
  %3465 = load i32, ptr %3448, align 1, !tbaa !23
  %3466 = icmp eq i32 %3465, %3464
  br i1 %3466, label %.loopexit669, label %3467

3467:                                             ; preds = %3461, %3459
  %3468 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %3450
  %3469 = load i32, ptr %3468, align 4, !tbaa !23
  %3470 = load i64, ptr %3446, align 1, !tbaa !22
  %3471 = mul i64 %3470, -3523014627193847808
  %3472 = lshr i64 %3471, %3357
  %3473 = ptrtoint ptr %3447 to i64
  %3474 = sub i64 %3473, %21
  %3475 = trunc i64 %3474 to i32
  store i32 %3475, ptr %3468, align 4, !tbaa !23
  %3476 = icmp ult i32 %3469, %35
  br i1 %3476, label %3490, label %3477

3477:                                             ; preds = %3467
  %3478 = zext i32 %3469 to i64
  %3479 = getelementptr inbounds nuw i8, ptr %19, i64 %3478
  %3480 = load i32, ptr %3479, align 1, !tbaa !23
  %3481 = load i32, ptr %3447, align 1, !tbaa !23
  %3482 = icmp eq i32 %3481, %3480
  br i1 %3482, label %.loopexit670, label %3490

.loopexit670:                                     ; preds = %3477, %3418
  %3483 = phi i32 [ %3410, %3418 ], [ %3469, %3477 ]
  %3484 = phi i64 [ %3413, %3418 ], [ %3472, %3477 ]
  %3485 = phi i32 [ %3416, %3418 ], [ %3475, %3477 ]
  %3486 = phi i64 [ %3389, %3418 ], [ %3443, %3477 ]
  %3487 = phi ptr [ %3392, %3418 ], [ %3446, %3477 ]
  %3488 = phi ptr [ %3393, %3418 ], [ %3447, %3477 ]
  %3489 = icmp ult i64 %3486, 5
  br i1 %3489, label %.loopexit669, label %3530

3490:                                             ; preds = %3477, %3467
  %3491 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %3472
  %3492 = load i32, ptr %3491, align 4, !tbaa !23
  %3493 = load i64, ptr %3445, align 1, !tbaa !22
  %3494 = getelementptr inbounds nuw i8, ptr %3446, i64 %3443
  %3495 = getelementptr inbounds nuw i8, ptr %3445, i64 %3443
  %3496 = icmp ult ptr %3494, %3444
  br i1 %3496, label %3517, label %3497

3497:                                             ; preds = %3490
  %3498 = add i64 %3443, 1
  %3499 = getelementptr inbounds nuw i8, ptr %3445, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %3499, i32 0, i32 3, i32 1)
  %3500 = getelementptr inbounds nuw i8, ptr %3445, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %3500, i32 0, i32 3, i32 1)
  %3501 = getelementptr inbounds nuw i8, ptr %3444, i64 128
  br label %3517

3502:                                             ; preds = %.preheader672
  %3503 = getelementptr inbounds i8, ptr %3446, i64 %3384
  %3504 = getelementptr inbounds i8, ptr %3446, i64 -1
  %3505 = load i8, ptr %3504, align 1, !tbaa !34
  %3506 = getelementptr inbounds i8, ptr %3503, i64 -1
  %3507 = load i8, ptr %3506, align 1, !tbaa !34
  %3508 = icmp eq i8 %3505, %3507
  %3509 = sext i1 %3508 to i64
  %3510 = getelementptr inbounds i8, ptr %3446, i64 %3509
  %3511 = getelementptr inbounds i8, ptr %3503, i64 %3509
  %3512 = select i1 %3508, i64 5, i64 4
  %3513 = ptrtoint ptr %3447 to i64
  %3514 = sub i64 %3513, %21
  %3515 = trunc i64 %3514 to i32
  %3516 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %3450
  store i32 %3515, ptr %3516, align 4, !tbaa !23
  br label %.loopexit664

3517:                                             ; preds = %3497, %3490
  %3518 = phi i64 [ %3443, %3490 ], [ %3498, %3497 ]
  %3519 = phi ptr [ %3444, %3490 ], [ %3501, %3497 ]
  %3520 = icmp ult ptr %3495, %39
  br i1 %3520, label %.preheader672, label %.loopexit490, !llvm.loop !35

.loopexit669:                                     ; preds = %3461, %3402, %.loopexit670
  %3521 = phi ptr [ %3487, %.loopexit670 ], [ %3393, %3402 ], [ %3447, %3461 ]
  %3522 = phi i64 [ %3484, %.loopexit670 ], [ %3396, %3402 ], [ %3450, %3461 ]
  %3523 = phi i32 [ %3483, %.loopexit670 ], [ %3388, %3402 ], [ %3442, %3461 ]
  %3524 = phi i32 [ %3485, %.loopexit670 ], [ %3399, %3402 ], [ %3455, %3461 ]
  %3525 = phi ptr [ %3488, %.loopexit670 ], [ %3394, %3402 ], [ %3448, %3461 ]
  %3526 = ptrtoint ptr %3521 to i64
  %3527 = sub i64 %3526, %21
  %3528 = trunc i64 %3527 to i32
  %3529 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %3522
  store i32 %3528, ptr %3529, align 4, !tbaa !23
  br label %3530

3530:                                             ; preds = %.loopexit669, %.loopexit670
  %3531 = phi i32 [ %3483, %.loopexit670 ], [ %3523, %.loopexit669 ]
  %3532 = phi i32 [ %3485, %.loopexit670 ], [ %3524, %.loopexit669 ]
  %3533 = phi ptr [ %3488, %.loopexit670 ], [ %3525, %.loopexit669 ]
  %3534 = zext i32 %3531 to i64
  %3535 = getelementptr inbounds nuw i8, ptr %19, i64 %3534
  %3536 = ptrtoint ptr %3533 to i64
  %3537 = ptrtoint ptr %3535 to i64
  %3538 = sub i64 %3536, %3537
  %3539 = trunc i64 %3538 to i32
  %3540 = add i32 %3539, 3
  %3541 = icmp ugt ptr %3533, %3370
  %3542 = icmp ugt i32 %3531, %35
  %3543 = and i1 %3542, %3541
  br i1 %3543, label %.preheader663, label %.loopexit664

.preheader663:                                    ; preds = %3530, %3552
  %3544 = phi ptr [ %3547, %3552 ], [ %3533, %3530 ]
  %3545 = phi i64 [ %3553, %3552 ], [ 4, %3530 ]
  %3546 = phi ptr [ %3549, %3552 ], [ %3535, %3530 ]
  %3547 = getelementptr inbounds i8, ptr %3544, i64 -1
  %3548 = load i8, ptr %3547, align 1, !tbaa !34
  %3549 = getelementptr inbounds i8, ptr %3546, i64 -1
  %3550 = load i8, ptr %3549, align 1, !tbaa !34
  %3551 = icmp eq i8 %3548, %3550
  br i1 %3551, label %3552, label %.loopexit664

3552:                                             ; preds = %.preheader663
  %3553 = add i64 %3545, 1
  %3554 = icmp ugt ptr %3547, %3370
  %3555 = icmp ugt ptr %3549, %37
  %3556 = and i1 %3554, %3555
  br i1 %3556, label %.preheader663, label %.loopexit664, !llvm.loop !36

.loopexit664:                                     ; preds = %3552, %.preheader663, %3530, %3502
  %3557 = phi i32 [ %3455, %3502 ], [ %3532, %3530 ], [ %3532, %.preheader663 ], [ %3532, %3552 ]
  %3558 = phi i32 [ %3373, %3502 ], [ %3374, %3530 ], [ %3374, %.preheader663 ], [ %3374, %3552 ]
  %3559 = phi i32 [ 1, %3502 ], [ %3540, %3530 ], [ %3540, %.preheader663 ], [ %3540, %3552 ]
  %3560 = phi ptr [ %3511, %3502 ], [ %3535, %3530 ], [ %3549, %3552 ], [ %3546, %.preheader663 ]
  %3561 = phi i64 [ %3512, %3502 ], [ 4, %3530 ], [ %3553, %3552 ], [ %3545, %.preheader663 ]
  %3562 = phi i32 [ %3374, %3502 ], [ %3539, %3530 ], [ %3539, %.preheader663 ], [ %3539, %3552 ]
  %3563 = phi ptr [ %3510, %3502 ], [ %3533, %3530 ], [ %3547, %3552 ], [ %3544, %.preheader663 ]
  %3564 = getelementptr inbounds nuw i8, ptr %3563, i64 %3561
  %3565 = getelementptr inbounds nuw i8, ptr %3560, i64 %3561
  %3566 = icmp ult ptr %3564, %3358
  br i1 %3566, label %3567, label %.loopexit662

3567:                                             ; preds = %.loopexit664
  %3568 = load i64, ptr %3565, align 1, !tbaa !22
  %3569 = load i64, ptr %3564, align 1, !tbaa !22
  %3570 = icmp eq i64 %3568, %3569
  br i1 %3570, label %.preheader661, label %3571

3571:                                             ; preds = %3567
  %3572 = xor i64 %3569, %3568
  %3573 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3572, i1 true)
  %3574 = lshr i64 %3573, 3
  br label %3628

.preheader661:                                    ; preds = %3567, %3580
  %3575 = phi ptr [ %3578, %3580 ], [ %3565, %3567 ]
  %3576 = phi ptr [ %3577, %3580 ], [ %3564, %3567 ]
  %3577 = getelementptr inbounds nuw i8, ptr %3576, i64 8
  %3578 = getelementptr inbounds nuw i8, ptr %3575, i64 8
  %3579 = icmp ult ptr %3577, %3358
  br i1 %3579, label %3580, label %.loopexit662

3580:                                             ; preds = %.preheader661
  %3581 = load i64, ptr %3578, align 1, !tbaa !22
  %3582 = load i64, ptr %3577, align 1, !tbaa !22
  %3583 = icmp eq i64 %3581, %3582
  br i1 %3583, label %.preheader661, label %3584

3584:                                             ; preds = %3580
  %3585 = xor i64 %3582, %3581
  %3586 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3585, i1 true)
  %3587 = lshr i64 %3586, 3
  %3588 = getelementptr inbounds nuw i8, ptr %3577, i64 %3587
  %3589 = ptrtoint ptr %3588 to i64
  %3590 = ptrtoint ptr %3564 to i64
  %3591 = sub i64 %3589, %3590
  br label %3628

.loopexit662:                                     ; preds = %.preheader661, %.loopexit664
  %3592 = phi ptr [ %3565, %.loopexit664 ], [ %3578, %.preheader661 ]
  %3593 = phi ptr [ %3564, %.loopexit664 ], [ %3577, %.preheader661 ]
  %3594 = icmp ult ptr %3593, %3359
  br i1 %3594, label %3595, label %3602

3595:                                             ; preds = %.loopexit662
  %3596 = load i32, ptr %3592, align 1, !tbaa !23
  %3597 = load i32, ptr %3593, align 1, !tbaa !23
  %3598 = icmp eq i32 %3596, %3597
  br i1 %3598, label %3599, label %3602

3599:                                             ; preds = %3595
  %3600 = getelementptr inbounds nuw i8, ptr %3593, i64 4
  %3601 = getelementptr inbounds nuw i8, ptr %3592, i64 4
  br label %3602

3602:                                             ; preds = %3599, %3595, %.loopexit662
  %3603 = phi ptr [ %3601, %3599 ], [ %3592, %3595 ], [ %3592, %.loopexit662 ]
  %3604 = phi ptr [ %3600, %3599 ], [ %3593, %3595 ], [ %3593, %.loopexit662 ]
  %3605 = icmp ult ptr %3604, %3360
  br i1 %3605, label %3606, label %3613

3606:                                             ; preds = %3602
  %3607 = load i16, ptr %3603, align 1, !tbaa !37
  %3608 = load i16, ptr %3604, align 1, !tbaa !37
  %3609 = icmp eq i16 %3607, %3608
  br i1 %3609, label %3610, label %3613

3610:                                             ; preds = %3606
  %3611 = getelementptr inbounds nuw i8, ptr %3604, i64 2
  %3612 = getelementptr inbounds nuw i8, ptr %3603, i64 2
  br label %3613

3613:                                             ; preds = %3610, %3606, %3602
  %3614 = phi ptr [ %3612, %3610 ], [ %3603, %3606 ], [ %3603, %3602 ]
  %3615 = phi ptr [ %3611, %3610 ], [ %3604, %3606 ], [ %3604, %3602 ]
  %3616 = icmp ult ptr %3615, %38
  br i1 %3616, label %3617, label %3623

3617:                                             ; preds = %3613
  %3618 = load i8, ptr %3614, align 1, !tbaa !34
  %3619 = load i8, ptr %3615, align 1, !tbaa !34
  %3620 = icmp eq i8 %3618, %3619
  %3621 = zext i1 %3620 to i64
  %3622 = getelementptr inbounds nuw i8, ptr %3615, i64 %3621
  br label %3623

3623:                                             ; preds = %3617, %3613
  %3624 = phi ptr [ %3615, %3613 ], [ %3622, %3617 ]
  %3625 = ptrtoint ptr %3624 to i64
  %3626 = ptrtoint ptr %3564 to i64
  %3627 = sub i64 %3625, %3626
  br label %3628

3628:                                             ; preds = %3623, %3584, %3571
  %3629 = phi i64 [ %3627, %3623 ], [ %3574, %3571 ], [ %3591, %3584 ]
  %3630 = add i64 %3629, %3561
  %3631 = ptrtoint ptr %3563 to i64
  %3632 = ptrtoint ptr %3370 to i64
  %3633 = sub i64 %3631, %3632
  %3634 = icmp ugt ptr %3563, %3361
  %3635 = load ptr, ptr %3362, align 8, !tbaa !39
  br i1 %3634, label %3658, label %3636

3636:                                             ; preds = %3628
  %3637 = load <2 x i64>, ptr %3370, align 1, !tbaa !34
  store <2 x i64> %3637, ptr %3635, align 1, !tbaa !34
  %3638 = icmp ugt i64 %3633, 16
  br i1 %3638, label %3639, label %3769

3639:                                             ; preds = %3636
  %3640 = load ptr, ptr %3362, align 8, !tbaa !39
  %3641 = getelementptr inbounds nuw i8, ptr %3640, i64 16
  %3642 = getelementptr inbounds nuw i8, ptr %3370, i64 16
  %3643 = getelementptr i8, ptr %3640, i64 %3633
  %3644 = load <2 x i64>, ptr %3642, align 1, !tbaa !34
  store <2 x i64> %3644, ptr %3641, align 1, !tbaa !34
  %3645 = icmp ult i64 %3633, 33
  br i1 %3645, label %3769, label %3646

3646:                                             ; preds = %3639
  %3647 = getelementptr inbounds nuw i8, ptr %3640, i64 32
  br label %3648

3648:                                             ; preds = %3648, %3646
  %3649 = phi ptr [ %3647, %3646 ], [ %3656, %3648 ]
  %3650 = phi ptr [ %3642, %3646 ], [ %3654, %3648 ]
  %3651 = getelementptr inbounds nuw i8, ptr %3650, i64 16
  %3652 = load <2 x i64>, ptr %3651, align 1, !tbaa !34
  store <2 x i64> %3652, ptr %3649, align 1, !tbaa !34
  %3653 = getelementptr inbounds nuw i8, ptr %3649, i64 16
  %3654 = getelementptr inbounds nuw i8, ptr %3650, i64 32
  %3655 = load <2 x i64>, ptr %3654, align 1, !tbaa !34
  store <2 x i64> %3655, ptr %3653, align 1, !tbaa !34
  %3656 = getelementptr inbounds nuw i8, ptr %3649, i64 32
  %3657 = icmp ult ptr %3656, %3643
  br i1 %3657, label %3648, label %.loopexit656, !llvm.loop !42

3658:                                             ; preds = %3628
  %3659 = icmp ugt ptr %3370, %3361
  br i1 %3659, label %.loopexit659, label %3660

3660:                                             ; preds = %3658
  %3661 = sub i64 %3363, %3632
  %3662 = getelementptr inbounds i8, ptr %3635, i64 %3661
  %3663 = load <2 x i64>, ptr %3370, align 1, !tbaa !34
  store <2 x i64> %3663, ptr %3635, align 1, !tbaa !34
  %3664 = icmp ult i64 %3661, 17
  br i1 %3664, label %.loopexit659, label %3665

3665:                                             ; preds = %3660
  %3666 = getelementptr inbounds nuw i8, ptr %3635, i64 16
  br label %3667

3667:                                             ; preds = %3667, %3665
  %3668 = phi ptr [ %3666, %3665 ], [ %3675, %3667 ]
  %3669 = phi ptr [ %3370, %3665 ], [ %3673, %3667 ]
  %3670 = getelementptr inbounds nuw i8, ptr %3669, i64 16
  %3671 = load <2 x i64>, ptr %3670, align 1, !tbaa !34
  store <2 x i64> %3671, ptr %3668, align 1, !tbaa !34
  %3672 = getelementptr inbounds nuw i8, ptr %3668, i64 16
  %3673 = getelementptr inbounds nuw i8, ptr %3669, i64 32
  %3674 = load <2 x i64>, ptr %3673, align 1, !tbaa !34
  store <2 x i64> %3674, ptr %3672, align 1, !tbaa !34
  %3675 = getelementptr inbounds nuw i8, ptr %3668, i64 32
  %3676 = icmp ult ptr %3675, %3662
  br i1 %3676, label %3667, label %.loopexit659, !llvm.loop !42

.loopexit659:                                     ; preds = %3667, %3660, %3658
  %3677 = phi ptr [ %3361, %3660 ], [ %3370, %3658 ], [ %3361, %3667 ]
  %3678 = phi ptr [ %3662, %3660 ], [ %3635, %3658 ], [ %3662, %3667 ]
  %3679 = icmp ult ptr %3677, %3563
  br i1 %3679, label %3680, label %.loopexit656

3680:                                             ; preds = %.loopexit659
  %3681 = ptrtoint ptr %3677 to i64
  %3682 = ptrtoint ptr %3678 to i64
  %3683 = sub i64 %3631, %3681
  %3684 = icmp ult i64 %3683, 4
  %3685 = sub i64 %3682, %3681
  %3686 = icmp ult i64 %3685, 32
  %3687 = select i1 %3684, i1 true, i1 %3686
  br i1 %3687, label %3723, label %3688

3688:                                             ; preds = %3680
  %3689 = icmp ult i64 %3683, 32
  br i1 %3689, label %3709, label %3690

3690:                                             ; preds = %3688
  %3691 = and i64 %3683, -32
  br label %3692

3692:                                             ; preds = %3692, %3690
  %3693 = phi i64 [ 0, %3690 ], [ %3700, %3692 ]
  %3694 = getelementptr i8, ptr %3678, i64 %3693
  %3695 = getelementptr i8, ptr %3677, i64 %3693
  %3696 = getelementptr i8, ptr %3695, i64 16
  %3697 = load <16 x i8>, ptr %3695, align 1, !tbaa !34
  %3698 = load <16 x i8>, ptr %3696, align 1, !tbaa !34
  %3699 = getelementptr i8, ptr %3694, i64 16
  store <16 x i8> %3697, ptr %3694, align 1, !tbaa !34
  store <16 x i8> %3698, ptr %3699, align 1, !tbaa !34
  %3700 = add nuw i64 %3693, 32
  %3701 = icmp eq i64 %3700, %3691
  br i1 %3701, label %3702, label %3692, !llvm.loop !80

3702:                                             ; preds = %3692
  %3703 = icmp eq i64 %3683, %3691
  br i1 %3703, label %.loopexit656, label %3704

3704:                                             ; preds = %3702
  %3705 = getelementptr i8, ptr %3678, i64 %3691
  %3706 = getelementptr i8, ptr %3677, i64 %3691
  %3707 = and i64 %3683, 28
  %3708 = icmp eq i64 %3707, 0
  br i1 %3708, label %3723, label %3709

3709:                                             ; preds = %3704, %3688
  %3710 = phi i64 [ %3691, %3704 ], [ 0, %3688 ]
  %3711 = and i64 %3683, -4
  br label %3712

3712:                                             ; preds = %3712, %3709
  %3713 = phi i64 [ %3710, %3709 ], [ %3717, %3712 ]
  %3714 = getelementptr i8, ptr %3678, i64 %3713
  %3715 = getelementptr i8, ptr %3677, i64 %3713
  %3716 = load <4 x i8>, ptr %3715, align 1, !tbaa !34
  store <4 x i8> %3716, ptr %3714, align 1, !tbaa !34
  %3717 = add nuw i64 %3713, 4
  %3718 = icmp eq i64 %3717, %3711
  br i1 %3718, label %3719, label %3712, !llvm.loop !81

3719:                                             ; preds = %3712
  %3720 = getelementptr i8, ptr %3678, i64 %3711
  %3721 = getelementptr i8, ptr %3677, i64 %3711
  %3722 = icmp eq i64 %3683, %3711
  br i1 %3722, label %.loopexit656, label %3723

3723:                                             ; preds = %3719, %3704, %3680
  %3724 = phi ptr [ %3678, %3680 ], [ %3705, %3704 ], [ %3720, %3719 ]
  %3725 = phi ptr [ %3677, %3680 ], [ %3706, %3704 ], [ %3721, %3719 ]
  %3726 = ptrtoint ptr %3725 to i64
  %3727 = sub i64 %3631, %3726
  %3728 = and i64 %3727, 7
  %3729 = icmp eq i64 %3728, 0
  br i1 %3729, label %.loopexit658, label %.preheader657

.preheader657:                                    ; preds = %3723, %.preheader657
  %3730 = phi ptr [ %3735, %.preheader657 ], [ %3724, %3723 ]
  %3731 = phi ptr [ %3733, %.preheader657 ], [ %3725, %3723 ]
  %3732 = phi i64 [ %3736, %.preheader657 ], [ 0, %3723 ]
  %3733 = getelementptr inbounds nuw i8, ptr %3731, i64 1
  %3734 = load i8, ptr %3731, align 1, !tbaa !34
  %3735 = getelementptr inbounds nuw i8, ptr %3730, i64 1
  store i8 %3734, ptr %3730, align 1, !tbaa !34
  %3736 = add nuw nsw i64 %3732, 1
  %3737 = icmp eq i64 %3736, %3728
  br i1 %3737, label %.loopexit658, label %.preheader657, !llvm.loop !82

.loopexit658:                                     ; preds = %.preheader657, %3723
  %3738 = phi ptr [ %3724, %3723 ], [ %3735, %.preheader657 ]
  %3739 = phi ptr [ %3725, %3723 ], [ %3733, %.preheader657 ]
  %3740 = sub i64 %3726, %3631
  %3741 = icmp ugt i64 %3740, -8
  br i1 %3741, label %.loopexit656, label %.preheader655

.preheader655:                                    ; preds = %.loopexit658, %.preheader655
  %3742 = phi ptr [ %3767, %.preheader655 ], [ %3738, %.loopexit658 ]
  %3743 = phi ptr [ %3765, %.preheader655 ], [ %3739, %.loopexit658 ]
  %3744 = getelementptr inbounds nuw i8, ptr %3743, i64 1
  %3745 = load i8, ptr %3743, align 1, !tbaa !34
  %3746 = getelementptr inbounds nuw i8, ptr %3742, i64 1
  store i8 %3745, ptr %3742, align 1, !tbaa !34
  %3747 = getelementptr inbounds nuw i8, ptr %3743, i64 2
  %3748 = load i8, ptr %3744, align 1, !tbaa !34
  %3749 = getelementptr inbounds nuw i8, ptr %3742, i64 2
  store i8 %3748, ptr %3746, align 1, !tbaa !34
  %3750 = getelementptr inbounds nuw i8, ptr %3743, i64 3
  %3751 = load i8, ptr %3747, align 1, !tbaa !34
  %3752 = getelementptr inbounds nuw i8, ptr %3742, i64 3
  store i8 %3751, ptr %3749, align 1, !tbaa !34
  %3753 = getelementptr inbounds nuw i8, ptr %3743, i64 4
  %3754 = load i8, ptr %3750, align 1, !tbaa !34
  %3755 = getelementptr inbounds nuw i8, ptr %3742, i64 4
  store i8 %3754, ptr %3752, align 1, !tbaa !34
  %3756 = getelementptr inbounds nuw i8, ptr %3743, i64 5
  %3757 = load i8, ptr %3753, align 1, !tbaa !34
  %3758 = getelementptr inbounds nuw i8, ptr %3742, i64 5
  store i8 %3757, ptr %3755, align 1, !tbaa !34
  %3759 = getelementptr inbounds nuw i8, ptr %3743, i64 6
  %3760 = load i8, ptr %3756, align 1, !tbaa !34
  %3761 = getelementptr inbounds nuw i8, ptr %3742, i64 6
  store i8 %3760, ptr %3758, align 1, !tbaa !34
  %3762 = getelementptr inbounds nuw i8, ptr %3743, i64 7
  %3763 = load i8, ptr %3759, align 1, !tbaa !34
  %3764 = getelementptr inbounds nuw i8, ptr %3742, i64 7
  store i8 %3763, ptr %3761, align 1, !tbaa !34
  %3765 = getelementptr inbounds nuw i8, ptr %3743, i64 8
  %3766 = load i8, ptr %3762, align 1, !tbaa !34
  %3767 = getelementptr inbounds nuw i8, ptr %3742, i64 8
  store i8 %3766, ptr %3764, align 1, !tbaa !34
  %3768 = icmp eq ptr %3765, %3563
  br i1 %3768, label %.loopexit656, label %.preheader655, !llvm.loop !83

3769:                                             ; preds = %3639, %3636
  %3770 = load ptr, ptr %3362, align 8, !tbaa !39
  %3771 = getelementptr inbounds nuw i8, ptr %3770, i64 %3633
  store ptr %3771, ptr %3362, align 8, !tbaa !39
  %3772 = load ptr, ptr %3365, align 8, !tbaa !50
  br label %3784

.loopexit656:                                     ; preds = %3648, %.preheader655, %.loopexit658, %3719, %3702, %.loopexit659
  %3773 = load ptr, ptr %3362, align 8, !tbaa !39
  %3774 = getelementptr inbounds nuw i8, ptr %3773, i64 %3633
  store ptr %3774, ptr %3362, align 8, !tbaa !39
  %3775 = icmp ugt i64 %3633, 65535
  %3776 = load ptr, ptr %3365, align 8, !tbaa !50
  br i1 %3775, label %3777, label %3784, !prof !51

3777:                                             ; preds = %.loopexit656
  store i32 1, ptr %3364, align 8, !tbaa !52
  %3778 = load ptr, ptr %1, align 8, !tbaa !53
  %3779 = ptrtoint ptr %3776 to i64
  %3780 = ptrtoint ptr %3778 to i64
  %3781 = sub i64 %3779, %3780
  %3782 = lshr exact i64 %3781, 3
  %3783 = trunc i64 %3782 to i32
  store i32 %3783, ptr %3366, align 4, !tbaa !54
  br label %3784

3784:                                             ; preds = %3777, %.loopexit656, %3769
  %3785 = phi ptr [ %3772, %3769 ], [ %3776, %3777 ], [ %3776, %.loopexit656 ]
  %3786 = trunc i64 %3633 to i16
  %3787 = getelementptr inbounds nuw i8, ptr %3785, i64 4
  store i16 %3786, ptr %3787, align 4, !tbaa !55
  store i32 %3559, ptr %3785, align 4, !tbaa !57
  %3788 = add i64 %3630, -3
  %3789 = icmp ugt i64 %3788, 65535
  br i1 %3789, label %3790, label %3797, !prof !58

3790:                                             ; preds = %3784
  store i32 2, ptr %3364, align 8, !tbaa !52
  %3791 = load ptr, ptr %1, align 8, !tbaa !53
  %3792 = ptrtoint ptr %3785 to i64
  %3793 = ptrtoint ptr %3791 to i64
  %3794 = sub i64 %3792, %3793
  %3795 = lshr exact i64 %3794, 3
  %3796 = trunc i64 %3795 to i32
  store i32 %3796, ptr %3366, align 4, !tbaa !54
  br label %3797

3797:                                             ; preds = %3790, %3784
  %3798 = trunc i64 %3788 to i16
  %3799 = getelementptr inbounds nuw i8, ptr %3785, i64 6
  store i16 %3798, ptr %3799, align 2, !tbaa !59
  %3800 = getelementptr inbounds nuw i8, ptr %3785, i64 8
  store ptr %3800, ptr %3365, align 8, !tbaa !50
  %3801 = getelementptr inbounds nuw i8, ptr %3563, i64 %3630
  %3802 = icmp ugt ptr %3801, %39
  br i1 %3802, label %.loopexit651, label %3803

3803:                                             ; preds = %3797
  %3804 = add i32 %3557, 2
  %3805 = zext i32 %3557 to i64
  %3806 = getelementptr inbounds nuw i8, ptr %59, i64 %3805
  %3807 = load i64, ptr %3806, align 1, !tbaa !22
  %3808 = mul i64 %3807, -3523014627193847808
  %3809 = lshr i64 %3808, %3357
  %3810 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %3809
  store i32 %3804, ptr %3810, align 4, !tbaa !23
  %3811 = getelementptr inbounds i8, ptr %3801, i64 -2
  %3812 = ptrtoint ptr %3811 to i64
  %3813 = sub i64 %3812, %21
  %3814 = trunc i64 %3813 to i32
  %3815 = load i64, ptr %3811, align 1, !tbaa !22
  %3816 = mul i64 %3815, -3523014627193847808
  %3817 = lshr i64 %3816, %3357
  %3818 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %3817
  store i32 %3814, ptr %3818, align 4, !tbaa !23
  %3819 = icmp eq i32 %3558, 0
  br i1 %3819, label %.loopexit651, label %.preheader650

.preheader650:                                    ; preds = %3803, %3923
  %3820 = phi ptr [ %3926, %3923 ], [ %3800, %3803 ]
  %3821 = phi ptr [ %3905, %3923 ], [ %3801, %3803 ]
  %3822 = phi i32 [ %3823, %3923 ], [ %3562, %3803 ]
  %3823 = phi i32 [ %3822, %3923 ], [ %3558, %3803 ]
  %3824 = load i32, ptr %3821, align 1, !tbaa !23
  %3825 = zext i32 %3823 to i64
  %3826 = sub nsw i64 0, %3825
  %3827 = getelementptr inbounds i8, ptr %3821, i64 %3826
  %3828 = load i32, ptr %3827, align 1, !tbaa !23
  %3829 = icmp eq i32 %3824, %3828
  br i1 %3829, label %3830, label %.loopexit651

3830:                                             ; preds = %.preheader650
  %3831 = getelementptr inbounds nuw i8, ptr %3821, i64 4
  %3832 = getelementptr inbounds i8, ptr %3831, i64 %3826
  %3833 = icmp ult ptr %3831, %3358
  br i1 %3833, label %3834, label %.loopexit649

3834:                                             ; preds = %3830
  %3835 = load i64, ptr %3832, align 1, !tbaa !22
  %3836 = load i64, ptr %3831, align 1, !tbaa !22
  %3837 = icmp eq i64 %3835, %3836
  br i1 %3837, label %.preheader648, label %3838

3838:                                             ; preds = %3834
  %3839 = xor i64 %3836, %3835
  %3840 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3839, i1 true)
  %3841 = lshr i64 %3840, 3
  br label %3895

.preheader648:                                    ; preds = %3834, %3847
  %3842 = phi ptr [ %3845, %3847 ], [ %3832, %3834 ]
  %3843 = phi ptr [ %3844, %3847 ], [ %3831, %3834 ]
  %3844 = getelementptr inbounds nuw i8, ptr %3843, i64 8
  %3845 = getelementptr inbounds nuw i8, ptr %3842, i64 8
  %3846 = icmp ult ptr %3844, %3358
  br i1 %3846, label %3847, label %.loopexit649

3847:                                             ; preds = %.preheader648
  %3848 = load i64, ptr %3845, align 1, !tbaa !22
  %3849 = load i64, ptr %3844, align 1, !tbaa !22
  %3850 = icmp eq i64 %3848, %3849
  br i1 %3850, label %.preheader648, label %3851

3851:                                             ; preds = %3847
  %3852 = xor i64 %3849, %3848
  %3853 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3852, i1 true)
  %3854 = lshr i64 %3853, 3
  %3855 = getelementptr inbounds nuw i8, ptr %3844, i64 %3854
  %3856 = ptrtoint ptr %3855 to i64
  %3857 = ptrtoint ptr %3831 to i64
  %3858 = sub i64 %3856, %3857
  br label %3895

.loopexit649:                                     ; preds = %.preheader648, %3830
  %3859 = phi ptr [ %3832, %3830 ], [ %3845, %.preheader648 ]
  %3860 = phi ptr [ %3831, %3830 ], [ %3844, %.preheader648 ]
  %3861 = icmp ult ptr %3860, %3359
  br i1 %3861, label %3862, label %3869

3862:                                             ; preds = %.loopexit649
  %3863 = load i32, ptr %3859, align 1, !tbaa !23
  %3864 = load i32, ptr %3860, align 1, !tbaa !23
  %3865 = icmp eq i32 %3863, %3864
  br i1 %3865, label %3866, label %3869

3866:                                             ; preds = %3862
  %3867 = getelementptr inbounds nuw i8, ptr %3860, i64 4
  %3868 = getelementptr inbounds nuw i8, ptr %3859, i64 4
  br label %3869

3869:                                             ; preds = %3866, %3862, %.loopexit649
  %3870 = phi ptr [ %3868, %3866 ], [ %3859, %3862 ], [ %3859, %.loopexit649 ]
  %3871 = phi ptr [ %3867, %3866 ], [ %3860, %3862 ], [ %3860, %.loopexit649 ]
  %3872 = icmp ult ptr %3871, %3360
  br i1 %3872, label %3873, label %3880

3873:                                             ; preds = %3869
  %3874 = load i16, ptr %3870, align 1, !tbaa !37
  %3875 = load i16, ptr %3871, align 1, !tbaa !37
  %3876 = icmp eq i16 %3874, %3875
  br i1 %3876, label %3877, label %3880

3877:                                             ; preds = %3873
  %3878 = getelementptr inbounds nuw i8, ptr %3871, i64 2
  %3879 = getelementptr inbounds nuw i8, ptr %3870, i64 2
  br label %3880

3880:                                             ; preds = %3877, %3873, %3869
  %3881 = phi ptr [ %3879, %3877 ], [ %3870, %3873 ], [ %3870, %3869 ]
  %3882 = phi ptr [ %3878, %3877 ], [ %3871, %3873 ], [ %3871, %3869 ]
  %3883 = icmp ult ptr %3882, %38
  br i1 %3883, label %3884, label %3890

3884:                                             ; preds = %3880
  %3885 = load i8, ptr %3881, align 1, !tbaa !34
  %3886 = load i8, ptr %3882, align 1, !tbaa !34
  %3887 = icmp eq i8 %3885, %3886
  %3888 = zext i1 %3887 to i64
  %3889 = getelementptr inbounds nuw i8, ptr %3882, i64 %3888
  br label %3890

3890:                                             ; preds = %3884, %3880
  %3891 = phi ptr [ %3882, %3880 ], [ %3889, %3884 ]
  %3892 = ptrtoint ptr %3891 to i64
  %3893 = ptrtoint ptr %3831 to i64
  %3894 = sub i64 %3892, %3893
  br label %3895

3895:                                             ; preds = %3890, %3851, %3838
  %3896 = phi i64 [ %3894, %3890 ], [ %3841, %3838 ], [ %3858, %3851 ]
  %3897 = ptrtoint ptr %3821 to i64
  %3898 = sub i64 %3897, %21
  %3899 = trunc i64 %3898 to i32
  %3900 = load i64, ptr %3821, align 1, !tbaa !22
  %3901 = mul i64 %3900, -3523014627193847808
  %3902 = lshr i64 %3901, %3357
  %3903 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %3902
  store i32 %3899, ptr %3903, align 4, !tbaa !23
  %3904 = getelementptr i8, ptr %3821, i64 %3896
  %3905 = getelementptr i8, ptr %3904, i64 4
  %3906 = icmp ugt ptr %3821, %3361
  br i1 %3906, label %3911, label %3907

3907:                                             ; preds = %3895
  %3908 = load ptr, ptr %3362, align 8, !tbaa !39
  %3909 = load <2 x i64>, ptr %3821, align 1, !tbaa !34
  store <2 x i64> %3909, ptr %3908, align 1, !tbaa !34
  %3910 = load ptr, ptr %3365, align 8, !tbaa !50
  br label %3911

3911:                                             ; preds = %3907, %3895
  %3912 = phi ptr [ %3820, %3895 ], [ %3910, %3907 ]
  %3913 = getelementptr inbounds nuw i8, ptr %3912, i64 4
  store i16 0, ptr %3913, align 4, !tbaa !55
  store i32 1, ptr %3912, align 4, !tbaa !57
  %3914 = add i64 %3896, 1
  %3915 = icmp ugt i64 %3914, 65535
  br i1 %3915, label %3916, label %3923, !prof !58

3916:                                             ; preds = %3911
  store i32 2, ptr %3364, align 8, !tbaa !52
  %3917 = load ptr, ptr %1, align 8, !tbaa !53
  %3918 = ptrtoint ptr %3912 to i64
  %3919 = ptrtoint ptr %3917 to i64
  %3920 = sub i64 %3918, %3919
  %3921 = lshr exact i64 %3920, 3
  %3922 = trunc i64 %3921 to i32
  store i32 %3922, ptr %3366, align 4, !tbaa !54
  br label %3923

3923:                                             ; preds = %3916, %3911
  %3924 = trunc i64 %3914 to i16
  %3925 = getelementptr inbounds nuw i8, ptr %3912, i64 6
  store i16 %3924, ptr %3925, align 2, !tbaa !59
  %3926 = getelementptr inbounds nuw i8, ptr %3912, i64 8
  store ptr %3926, ptr %3365, align 8, !tbaa !50
  %3927 = icmp ugt ptr %3905, %39
  br i1 %3927, label %.loopexit651, label %.preheader650

.loopexit651:                                     ; preds = %3923, %.preheader650, %3803, %3797
  %3928 = phi i32 [ 0, %3803 ], [ %3558, %3797 ], [ %3823, %.preheader650 ], [ %3822, %3923 ]
  %3929 = phi i32 [ %3562, %3803 ], [ %3562, %3797 ], [ %3822, %.preheader650 ], [ %3823, %3923 ]
  %3930 = phi ptr [ %3801, %3803 ], [ %3801, %3797 ], [ %3821, %.preheader650 ], [ %3905, %3923 ]
  %3931 = getelementptr inbounds nuw i8, ptr %3930, i64 %17
  %3932 = getelementptr inbounds nuw i8, ptr %3931, i64 1
  %3933 = icmp ult ptr %3932, %39
  br i1 %3933, label %3367, label %.loopexit490

3934:                                             ; preds = %2182
  br i1 %62, label %3935, label %.loopexit490

3935:                                             ; preds = %3934
  %3936 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %3937 = load i32, ptr %3936, align 4, !tbaa !21
  %3938 = sub i32 64, %3937
  %3939 = zext nneg i32 %3938 to i64
  %3940 = getelementptr inbounds i8, ptr %38, i64 -7
  %3941 = getelementptr inbounds i8, ptr %38, i64 -3
  %3942 = getelementptr inbounds i8, ptr %38, i64 -1
  %3943 = getelementptr inbounds i8, ptr %38, i64 -32
  %3944 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %3945 = ptrtoint ptr %3943 to i64
  %3946 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %3947 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3948 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %3949

3949:                                             ; preds = %.loopexit593, %3935
  %3950 = phi ptr [ %61, %3935 ], [ %4514, %.loopexit593 ]
  %3951 = phi ptr [ %60, %3935 ], [ %4513, %.loopexit593 ]
  %3952 = phi ptr [ %3, %3935 ], [ %4512, %.loopexit593 ]
  %3953 = phi ptr [ %45, %3935 ], [ %4512, %.loopexit593 ]
  %3954 = phi i32 [ %58, %3935 ], [ %4511, %.loopexit593 ]
  %3955 = phi i32 [ %56, %3935 ], [ %4510, %.loopexit593 ]
  %3956 = freeze i32 %3954
  %3957 = getelementptr inbounds nuw i8, ptr %3953, i64 1
  %3958 = getelementptr inbounds nuw i8, ptr %3953, i64 128
  %3959 = load i64, ptr %3953, align 1, !tbaa !22
  %3960 = mul i64 %3959, -3523014627193167104
  %3961 = lshr i64 %3960, %3939
  %3962 = load i64, ptr %3957, align 1, !tbaa !22
  %3963 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %3961
  %3964 = load i32, ptr %3963, align 4, !tbaa !23
  %3965 = zext i32 %3956 to i64
  %3966 = sub nsw i64 0, %3965
  %3967 = icmp eq i32 %3956, 0
  br i1 %3967, label %.preheader610, label %.preheader614

.preheader610:                                    ; preds = %3949, %4018
  %3968 = phi i64 [ %3995, %4018 ], [ %3961, %3949 ]
  %3969 = phi i64 [ %4009, %4018 ], [ %3962, %3949 ]
  %3970 = phi i32 [ %4008, %4018 ], [ %3964, %3949 ]
  %3971 = phi i64 [ %4019, %4018 ], [ %17, %3949 ]
  %3972 = phi ptr [ %4020, %4018 ], [ %3958, %3949 ]
  %3973 = phi ptr [ %4011, %4018 ], [ %3950, %3949 ]
  %3974 = phi ptr [ %4010, %4018 ], [ %3951, %3949 ]
  %3975 = phi ptr [ %3973, %4018 ], [ %3957, %3949 ]
  %3976 = phi ptr [ %3974, %4018 ], [ %3953, %3949 ]
  %3977 = mul i64 %3969, -3523014627193167104
  %3978 = lshr i64 %3977, %3939
  %3979 = ptrtoint ptr %3976 to i64
  %3980 = sub i64 %3979, %21
  %3981 = trunc i64 %3980 to i32
  %3982 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %3968
  store i32 %3981, ptr %3982, align 4, !tbaa !23
  %3983 = icmp ult i32 %3970, %35
  br i1 %3983, label %3990, label %3984

3984:                                             ; preds = %.preheader610
  %3985 = zext i32 %3970 to i64
  %3986 = getelementptr inbounds nuw i8, ptr %19, i64 %3985
  %3987 = load i32, ptr %3986, align 1, !tbaa !23
  %3988 = load i32, ptr %3976, align 1, !tbaa !23
  %3989 = icmp eq i32 %3988, %3987
  br i1 %3989, label %.loopexit611, label %3990

3990:                                             ; preds = %3984, %.preheader610
  %3991 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %3978
  %3992 = load i32, ptr %3991, align 4, !tbaa !23
  %3993 = load i64, ptr %3974, align 1, !tbaa !22
  %3994 = mul i64 %3993, -3523014627193167104
  %3995 = lshr i64 %3994, %3939
  %3996 = ptrtoint ptr %3975 to i64
  %3997 = sub i64 %3996, %21
  %3998 = trunc i64 %3997 to i32
  store i32 %3998, ptr %3991, align 4, !tbaa !23
  %3999 = icmp ult i32 %3992, %35
  br i1 %3999, label %4006, label %4000

4000:                                             ; preds = %3990
  %4001 = zext i32 %3992 to i64
  %4002 = getelementptr inbounds nuw i8, ptr %19, i64 %4001
  %4003 = load i32, ptr %4002, align 1, !tbaa !23
  %4004 = load i32, ptr %3975, align 1, !tbaa !23
  %4005 = icmp eq i32 %4004, %4003
  br i1 %4005, label %.loopexit612, label %4006

4006:                                             ; preds = %4000, %3990
  %4007 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %3995
  %4008 = load i32, ptr %4007, align 4, !tbaa !23
  %4009 = load i64, ptr %3973, align 1, !tbaa !22
  %4010 = getelementptr inbounds nuw i8, ptr %3974, i64 %3971
  %4011 = getelementptr inbounds nuw i8, ptr %3973, i64 %3971
  %4012 = icmp ult ptr %4010, %3972
  br i1 %4012, label %4018, label %4013

4013:                                             ; preds = %4006
  %4014 = add i64 %3971, 1
  %4015 = getelementptr inbounds nuw i8, ptr %3973, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %4015, i32 0, i32 3, i32 1)
  %4016 = getelementptr inbounds nuw i8, ptr %3973, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %4016, i32 0, i32 3, i32 1)
  %4017 = getelementptr inbounds nuw i8, ptr %3972, i64 128
  br label %4018

4018:                                             ; preds = %4013, %4006
  %4019 = phi i64 [ %3971, %4006 ], [ %4014, %4013 ]
  %4020 = phi ptr [ %3972, %4006 ], [ %4017, %4013 ]
  %4021 = icmp ult ptr %4011, %39
  br i1 %4021, label %.preheader610, label %.loopexit490, !llvm.loop !35

.preheader614:                                    ; preds = %3949, %4099
  %4022 = phi i64 [ %4054, %4099 ], [ %3961, %3949 ]
  %4023 = phi i64 [ %4075, %4099 ], [ %3962, %3949 ]
  %4024 = phi i32 [ %4074, %4099 ], [ %3964, %3949 ]
  %4025 = phi i64 [ %4100, %4099 ], [ %17, %3949 ]
  %4026 = phi ptr [ %4101, %4099 ], [ %3958, %3949 ]
  %4027 = phi ptr [ %4077, %4099 ], [ %3950, %3949 ]
  %4028 = phi ptr [ %4076, %4099 ], [ %3951, %3949 ]
  %4029 = phi ptr [ %4027, %4099 ], [ %3957, %3949 ]
  %4030 = phi ptr [ %4028, %4099 ], [ %3953, %3949 ]
  %4031 = mul i64 %4023, -3523014627193167104
  %4032 = lshr i64 %4031, %3939
  %4033 = getelementptr inbounds i8, ptr %4028, i64 %3966
  %4034 = load i32, ptr %4033, align 1, !tbaa !23
  %4035 = ptrtoint ptr %4030 to i64
  %4036 = sub i64 %4035, %21
  %4037 = trunc i64 %4036 to i32
  %4038 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %4022
  store i32 %4037, ptr %4038, align 4, !tbaa !23
  %4039 = load i32, ptr %4028, align 1, !tbaa !23
  %4040 = icmp eq i32 %4039, %4034
  br i1 %4040, label %4084, label %4041

4041:                                             ; preds = %.preheader614
  %4042 = icmp ult i32 %4024, %35
  br i1 %4042, label %4049, label %4043

4043:                                             ; preds = %4041
  %4044 = zext i32 %4024 to i64
  %4045 = getelementptr inbounds nuw i8, ptr %19, i64 %4044
  %4046 = load i32, ptr %4045, align 1, !tbaa !23
  %4047 = load i32, ptr %4030, align 1, !tbaa !23
  %4048 = icmp eq i32 %4047, %4046
  br i1 %4048, label %.loopexit611, label %4049

4049:                                             ; preds = %4043, %4041
  %4050 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %4032
  %4051 = load i32, ptr %4050, align 4, !tbaa !23
  %4052 = load i64, ptr %4028, align 1, !tbaa !22
  %4053 = mul i64 %4052, -3523014627193167104
  %4054 = lshr i64 %4053, %3939
  %4055 = ptrtoint ptr %4029 to i64
  %4056 = sub i64 %4055, %21
  %4057 = trunc i64 %4056 to i32
  store i32 %4057, ptr %4050, align 4, !tbaa !23
  %4058 = icmp ult i32 %4051, %35
  br i1 %4058, label %4072, label %4059

4059:                                             ; preds = %4049
  %4060 = zext i32 %4051 to i64
  %4061 = getelementptr inbounds nuw i8, ptr %19, i64 %4060
  %4062 = load i32, ptr %4061, align 1, !tbaa !23
  %4063 = load i32, ptr %4029, align 1, !tbaa !23
  %4064 = icmp eq i32 %4063, %4062
  br i1 %4064, label %.loopexit612, label %4072

.loopexit612:                                     ; preds = %4059, %4000
  %4065 = phi i32 [ %3992, %4000 ], [ %4051, %4059 ]
  %4066 = phi i64 [ %3995, %4000 ], [ %4054, %4059 ]
  %4067 = phi i32 [ %3998, %4000 ], [ %4057, %4059 ]
  %4068 = phi i64 [ %3971, %4000 ], [ %4025, %4059 ]
  %4069 = phi ptr [ %3974, %4000 ], [ %4028, %4059 ]
  %4070 = phi ptr [ %3975, %4000 ], [ %4029, %4059 ]
  %4071 = icmp ult i64 %4068, 5
  br i1 %4071, label %.loopexit611, label %4112

4072:                                             ; preds = %4059, %4049
  %4073 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %4054
  %4074 = load i32, ptr %4073, align 4, !tbaa !23
  %4075 = load i64, ptr %4027, align 1, !tbaa !22
  %4076 = getelementptr inbounds nuw i8, ptr %4028, i64 %4025
  %4077 = getelementptr inbounds nuw i8, ptr %4027, i64 %4025
  %4078 = icmp ult ptr %4076, %4026
  br i1 %4078, label %4099, label %4079

4079:                                             ; preds = %4072
  %4080 = add i64 %4025, 1
  %4081 = getelementptr inbounds nuw i8, ptr %4027, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %4081, i32 0, i32 3, i32 1)
  %4082 = getelementptr inbounds nuw i8, ptr %4027, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %4082, i32 0, i32 3, i32 1)
  %4083 = getelementptr inbounds nuw i8, ptr %4026, i64 128
  br label %4099

4084:                                             ; preds = %.preheader614
  %4085 = getelementptr inbounds i8, ptr %4028, i64 %3966
  %4086 = getelementptr inbounds i8, ptr %4028, i64 -1
  %4087 = load i8, ptr %4086, align 1, !tbaa !34
  %4088 = getelementptr inbounds i8, ptr %4085, i64 -1
  %4089 = load i8, ptr %4088, align 1, !tbaa !34
  %4090 = icmp eq i8 %4087, %4089
  %4091 = sext i1 %4090 to i64
  %4092 = getelementptr inbounds i8, ptr %4028, i64 %4091
  %4093 = getelementptr inbounds i8, ptr %4085, i64 %4091
  %4094 = select i1 %4090, i64 5, i64 4
  %4095 = ptrtoint ptr %4029 to i64
  %4096 = sub i64 %4095, %21
  %4097 = trunc i64 %4096 to i32
  %4098 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %4032
  store i32 %4097, ptr %4098, align 4, !tbaa !23
  br label %.loopexit606

4099:                                             ; preds = %4079, %4072
  %4100 = phi i64 [ %4025, %4072 ], [ %4080, %4079 ]
  %4101 = phi ptr [ %4026, %4072 ], [ %4083, %4079 ]
  %4102 = icmp ult ptr %4077, %39
  br i1 %4102, label %.preheader614, label %.loopexit490, !llvm.loop !35

.loopexit611:                                     ; preds = %4043, %3984, %.loopexit612
  %4103 = phi ptr [ %4069, %.loopexit612 ], [ %3975, %3984 ], [ %4029, %4043 ]
  %4104 = phi i64 [ %4066, %.loopexit612 ], [ %3978, %3984 ], [ %4032, %4043 ]
  %4105 = phi i32 [ %4065, %.loopexit612 ], [ %3970, %3984 ], [ %4024, %4043 ]
  %4106 = phi i32 [ %4067, %.loopexit612 ], [ %3981, %3984 ], [ %4037, %4043 ]
  %4107 = phi ptr [ %4070, %.loopexit612 ], [ %3976, %3984 ], [ %4030, %4043 ]
  %4108 = ptrtoint ptr %4103 to i64
  %4109 = sub i64 %4108, %21
  %4110 = trunc i64 %4109 to i32
  %4111 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %4104
  store i32 %4110, ptr %4111, align 4, !tbaa !23
  br label %4112

4112:                                             ; preds = %.loopexit611, %.loopexit612
  %4113 = phi i32 [ %4065, %.loopexit612 ], [ %4105, %.loopexit611 ]
  %4114 = phi i32 [ %4067, %.loopexit612 ], [ %4106, %.loopexit611 ]
  %4115 = phi ptr [ %4070, %.loopexit612 ], [ %4107, %.loopexit611 ]
  %4116 = zext i32 %4113 to i64
  %4117 = getelementptr inbounds nuw i8, ptr %19, i64 %4116
  %4118 = ptrtoint ptr %4115 to i64
  %4119 = ptrtoint ptr %4117 to i64
  %4120 = sub i64 %4118, %4119
  %4121 = trunc i64 %4120 to i32
  %4122 = add i32 %4121, 3
  %4123 = icmp ugt ptr %4115, %3952
  %4124 = icmp ugt i32 %4113, %35
  %4125 = and i1 %4124, %4123
  br i1 %4125, label %.preheader605, label %.loopexit606

.preheader605:                                    ; preds = %4112, %4134
  %4126 = phi ptr [ %4129, %4134 ], [ %4115, %4112 ]
  %4127 = phi i64 [ %4135, %4134 ], [ 4, %4112 ]
  %4128 = phi ptr [ %4131, %4134 ], [ %4117, %4112 ]
  %4129 = getelementptr inbounds i8, ptr %4126, i64 -1
  %4130 = load i8, ptr %4129, align 1, !tbaa !34
  %4131 = getelementptr inbounds i8, ptr %4128, i64 -1
  %4132 = load i8, ptr %4131, align 1, !tbaa !34
  %4133 = icmp eq i8 %4130, %4132
  br i1 %4133, label %4134, label %.loopexit606

4134:                                             ; preds = %.preheader605
  %4135 = add i64 %4127, 1
  %4136 = icmp ugt ptr %4129, %3952
  %4137 = icmp ugt ptr %4131, %37
  %4138 = and i1 %4136, %4137
  br i1 %4138, label %.preheader605, label %.loopexit606, !llvm.loop !36

.loopexit606:                                     ; preds = %4134, %.preheader605, %4112, %4084
  %4139 = phi i32 [ %4037, %4084 ], [ %4114, %4112 ], [ %4114, %.preheader605 ], [ %4114, %4134 ]
  %4140 = phi i32 [ %3955, %4084 ], [ %3956, %4112 ], [ %3956, %.preheader605 ], [ %3956, %4134 ]
  %4141 = phi i32 [ 1, %4084 ], [ %4122, %4112 ], [ %4122, %.preheader605 ], [ %4122, %4134 ]
  %4142 = phi ptr [ %4093, %4084 ], [ %4117, %4112 ], [ %4131, %4134 ], [ %4128, %.preheader605 ]
  %4143 = phi i64 [ %4094, %4084 ], [ 4, %4112 ], [ %4135, %4134 ], [ %4127, %.preheader605 ]
  %4144 = phi i32 [ %3956, %4084 ], [ %4121, %4112 ], [ %4121, %.preheader605 ], [ %4121, %4134 ]
  %4145 = phi ptr [ %4092, %4084 ], [ %4115, %4112 ], [ %4129, %4134 ], [ %4126, %.preheader605 ]
  %4146 = getelementptr inbounds nuw i8, ptr %4145, i64 %4143
  %4147 = getelementptr inbounds nuw i8, ptr %4142, i64 %4143
  %4148 = icmp ult ptr %4146, %3940
  br i1 %4148, label %4149, label %.loopexit604

4149:                                             ; preds = %.loopexit606
  %4150 = load i64, ptr %4147, align 1, !tbaa !22
  %4151 = load i64, ptr %4146, align 1, !tbaa !22
  %4152 = icmp eq i64 %4150, %4151
  br i1 %4152, label %.preheader603, label %4153

4153:                                             ; preds = %4149
  %4154 = xor i64 %4151, %4150
  %4155 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %4154, i1 true)
  %4156 = lshr i64 %4155, 3
  br label %4210

.preheader603:                                    ; preds = %4149, %4162
  %4157 = phi ptr [ %4160, %4162 ], [ %4147, %4149 ]
  %4158 = phi ptr [ %4159, %4162 ], [ %4146, %4149 ]
  %4159 = getelementptr inbounds nuw i8, ptr %4158, i64 8
  %4160 = getelementptr inbounds nuw i8, ptr %4157, i64 8
  %4161 = icmp ult ptr %4159, %3940
  br i1 %4161, label %4162, label %.loopexit604

4162:                                             ; preds = %.preheader603
  %4163 = load i64, ptr %4160, align 1, !tbaa !22
  %4164 = load i64, ptr %4159, align 1, !tbaa !22
  %4165 = icmp eq i64 %4163, %4164
  br i1 %4165, label %.preheader603, label %4166

4166:                                             ; preds = %4162
  %4167 = xor i64 %4164, %4163
  %4168 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %4167, i1 true)
  %4169 = lshr i64 %4168, 3
  %4170 = getelementptr inbounds nuw i8, ptr %4159, i64 %4169
  %4171 = ptrtoint ptr %4170 to i64
  %4172 = ptrtoint ptr %4146 to i64
  %4173 = sub i64 %4171, %4172
  br label %4210

.loopexit604:                                     ; preds = %.preheader603, %.loopexit606
  %4174 = phi ptr [ %4147, %.loopexit606 ], [ %4160, %.preheader603 ]
  %4175 = phi ptr [ %4146, %.loopexit606 ], [ %4159, %.preheader603 ]
  %4176 = icmp ult ptr %4175, %3941
  br i1 %4176, label %4177, label %4184

4177:                                             ; preds = %.loopexit604
  %4178 = load i32, ptr %4174, align 1, !tbaa !23
  %4179 = load i32, ptr %4175, align 1, !tbaa !23
  %4180 = icmp eq i32 %4178, %4179
  br i1 %4180, label %4181, label %4184

4181:                                             ; preds = %4177
  %4182 = getelementptr inbounds nuw i8, ptr %4175, i64 4
  %4183 = getelementptr inbounds nuw i8, ptr %4174, i64 4
  br label %4184

4184:                                             ; preds = %4181, %4177, %.loopexit604
  %4185 = phi ptr [ %4183, %4181 ], [ %4174, %4177 ], [ %4174, %.loopexit604 ]
  %4186 = phi ptr [ %4182, %4181 ], [ %4175, %4177 ], [ %4175, %.loopexit604 ]
  %4187 = icmp ult ptr %4186, %3942
  br i1 %4187, label %4188, label %4195

4188:                                             ; preds = %4184
  %4189 = load i16, ptr %4185, align 1, !tbaa !37
  %4190 = load i16, ptr %4186, align 1, !tbaa !37
  %4191 = icmp eq i16 %4189, %4190
  br i1 %4191, label %4192, label %4195

4192:                                             ; preds = %4188
  %4193 = getelementptr inbounds nuw i8, ptr %4186, i64 2
  %4194 = getelementptr inbounds nuw i8, ptr %4185, i64 2
  br label %4195

4195:                                             ; preds = %4192, %4188, %4184
  %4196 = phi ptr [ %4194, %4192 ], [ %4185, %4188 ], [ %4185, %4184 ]
  %4197 = phi ptr [ %4193, %4192 ], [ %4186, %4188 ], [ %4186, %4184 ]
  %4198 = icmp ult ptr %4197, %38
  br i1 %4198, label %4199, label %4205

4199:                                             ; preds = %4195
  %4200 = load i8, ptr %4196, align 1, !tbaa !34
  %4201 = load i8, ptr %4197, align 1, !tbaa !34
  %4202 = icmp eq i8 %4200, %4201
  %4203 = zext i1 %4202 to i64
  %4204 = getelementptr inbounds nuw i8, ptr %4197, i64 %4203
  br label %4205

4205:                                             ; preds = %4199, %4195
  %4206 = phi ptr [ %4197, %4195 ], [ %4204, %4199 ]
  %4207 = ptrtoint ptr %4206 to i64
  %4208 = ptrtoint ptr %4146 to i64
  %4209 = sub i64 %4207, %4208
  br label %4210

4210:                                             ; preds = %4205, %4166, %4153
  %4211 = phi i64 [ %4209, %4205 ], [ %4156, %4153 ], [ %4173, %4166 ]
  %4212 = add i64 %4211, %4143
  %4213 = ptrtoint ptr %4145 to i64
  %4214 = ptrtoint ptr %3952 to i64
  %4215 = sub i64 %4213, %4214
  %4216 = icmp ugt ptr %4145, %3943
  %4217 = load ptr, ptr %3944, align 8, !tbaa !39
  br i1 %4216, label %4240, label %4218

4218:                                             ; preds = %4210
  %4219 = load <2 x i64>, ptr %3952, align 1, !tbaa !34
  store <2 x i64> %4219, ptr %4217, align 1, !tbaa !34
  %4220 = icmp ugt i64 %4215, 16
  br i1 %4220, label %4221, label %4351

4221:                                             ; preds = %4218
  %4222 = load ptr, ptr %3944, align 8, !tbaa !39
  %4223 = getelementptr inbounds nuw i8, ptr %4222, i64 16
  %4224 = getelementptr inbounds nuw i8, ptr %3952, i64 16
  %4225 = getelementptr i8, ptr %4222, i64 %4215
  %4226 = load <2 x i64>, ptr %4224, align 1, !tbaa !34
  store <2 x i64> %4226, ptr %4223, align 1, !tbaa !34
  %4227 = icmp ult i64 %4215, 33
  br i1 %4227, label %4351, label %4228

4228:                                             ; preds = %4221
  %4229 = getelementptr inbounds nuw i8, ptr %4222, i64 32
  br label %4230

4230:                                             ; preds = %4230, %4228
  %4231 = phi ptr [ %4229, %4228 ], [ %4238, %4230 ]
  %4232 = phi ptr [ %4224, %4228 ], [ %4236, %4230 ]
  %4233 = getelementptr inbounds nuw i8, ptr %4232, i64 16
  %4234 = load <2 x i64>, ptr %4233, align 1, !tbaa !34
  store <2 x i64> %4234, ptr %4231, align 1, !tbaa !34
  %4235 = getelementptr inbounds nuw i8, ptr %4231, i64 16
  %4236 = getelementptr inbounds nuw i8, ptr %4232, i64 32
  %4237 = load <2 x i64>, ptr %4236, align 1, !tbaa !34
  store <2 x i64> %4237, ptr %4235, align 1, !tbaa !34
  %4238 = getelementptr inbounds nuw i8, ptr %4231, i64 32
  %4239 = icmp ult ptr %4238, %4225
  br i1 %4239, label %4230, label %.loopexit598, !llvm.loop !42

4240:                                             ; preds = %4210
  %4241 = icmp ugt ptr %3952, %3943
  br i1 %4241, label %.loopexit601, label %4242

4242:                                             ; preds = %4240
  %4243 = sub i64 %3945, %4214
  %4244 = getelementptr inbounds i8, ptr %4217, i64 %4243
  %4245 = load <2 x i64>, ptr %3952, align 1, !tbaa !34
  store <2 x i64> %4245, ptr %4217, align 1, !tbaa !34
  %4246 = icmp ult i64 %4243, 17
  br i1 %4246, label %.loopexit601, label %4247

4247:                                             ; preds = %4242
  %4248 = getelementptr inbounds nuw i8, ptr %4217, i64 16
  br label %4249

4249:                                             ; preds = %4249, %4247
  %4250 = phi ptr [ %4248, %4247 ], [ %4257, %4249 ]
  %4251 = phi ptr [ %3952, %4247 ], [ %4255, %4249 ]
  %4252 = getelementptr inbounds nuw i8, ptr %4251, i64 16
  %4253 = load <2 x i64>, ptr %4252, align 1, !tbaa !34
  store <2 x i64> %4253, ptr %4250, align 1, !tbaa !34
  %4254 = getelementptr inbounds nuw i8, ptr %4250, i64 16
  %4255 = getelementptr inbounds nuw i8, ptr %4251, i64 32
  %4256 = load <2 x i64>, ptr %4255, align 1, !tbaa !34
  store <2 x i64> %4256, ptr %4254, align 1, !tbaa !34
  %4257 = getelementptr inbounds nuw i8, ptr %4250, i64 32
  %4258 = icmp ult ptr %4257, %4244
  br i1 %4258, label %4249, label %.loopexit601, !llvm.loop !42

.loopexit601:                                     ; preds = %4249, %4242, %4240
  %4259 = phi ptr [ %3943, %4242 ], [ %3952, %4240 ], [ %3943, %4249 ]
  %4260 = phi ptr [ %4244, %4242 ], [ %4217, %4240 ], [ %4244, %4249 ]
  %4261 = icmp ult ptr %4259, %4145
  br i1 %4261, label %4262, label %.loopexit598

4262:                                             ; preds = %.loopexit601
  %4263 = ptrtoint ptr %4259 to i64
  %4264 = ptrtoint ptr %4260 to i64
  %4265 = sub i64 %4213, %4263
  %4266 = icmp ult i64 %4265, 4
  %4267 = sub i64 %4264, %4263
  %4268 = icmp ult i64 %4267, 32
  %4269 = select i1 %4266, i1 true, i1 %4268
  br i1 %4269, label %4305, label %4270

4270:                                             ; preds = %4262
  %4271 = icmp ult i64 %4265, 32
  br i1 %4271, label %4291, label %4272

4272:                                             ; preds = %4270
  %4273 = and i64 %4265, -32
  br label %4274

4274:                                             ; preds = %4274, %4272
  %4275 = phi i64 [ 0, %4272 ], [ %4282, %4274 ]
  %4276 = getelementptr i8, ptr %4260, i64 %4275
  %4277 = getelementptr i8, ptr %4259, i64 %4275
  %4278 = getelementptr i8, ptr %4277, i64 16
  %4279 = load <16 x i8>, ptr %4277, align 1, !tbaa !34
  %4280 = load <16 x i8>, ptr %4278, align 1, !tbaa !34
  %4281 = getelementptr i8, ptr %4276, i64 16
  store <16 x i8> %4279, ptr %4276, align 1, !tbaa !34
  store <16 x i8> %4280, ptr %4281, align 1, !tbaa !34
  %4282 = add nuw i64 %4275, 32
  %4283 = icmp eq i64 %4282, %4273
  br i1 %4283, label %4284, label %4274, !llvm.loop !84

4284:                                             ; preds = %4274
  %4285 = icmp eq i64 %4265, %4273
  br i1 %4285, label %.loopexit598, label %4286

4286:                                             ; preds = %4284
  %4287 = getelementptr i8, ptr %4260, i64 %4273
  %4288 = getelementptr i8, ptr %4259, i64 %4273
  %4289 = and i64 %4265, 28
  %4290 = icmp eq i64 %4289, 0
  br i1 %4290, label %4305, label %4291

4291:                                             ; preds = %4286, %4270
  %4292 = phi i64 [ %4273, %4286 ], [ 0, %4270 ]
  %4293 = and i64 %4265, -4
  br label %4294

4294:                                             ; preds = %4294, %4291
  %4295 = phi i64 [ %4292, %4291 ], [ %4299, %4294 ]
  %4296 = getelementptr i8, ptr %4260, i64 %4295
  %4297 = getelementptr i8, ptr %4259, i64 %4295
  %4298 = load <4 x i8>, ptr %4297, align 1, !tbaa !34
  store <4 x i8> %4298, ptr %4296, align 1, !tbaa !34
  %4299 = add nuw i64 %4295, 4
  %4300 = icmp eq i64 %4299, %4293
  br i1 %4300, label %4301, label %4294, !llvm.loop !85

4301:                                             ; preds = %4294
  %4302 = getelementptr i8, ptr %4260, i64 %4293
  %4303 = getelementptr i8, ptr %4259, i64 %4293
  %4304 = icmp eq i64 %4265, %4293
  br i1 %4304, label %.loopexit598, label %4305

4305:                                             ; preds = %4301, %4286, %4262
  %4306 = phi ptr [ %4260, %4262 ], [ %4287, %4286 ], [ %4302, %4301 ]
  %4307 = phi ptr [ %4259, %4262 ], [ %4288, %4286 ], [ %4303, %4301 ]
  %4308 = ptrtoint ptr %4307 to i64
  %4309 = sub i64 %4213, %4308
  %4310 = and i64 %4309, 7
  %4311 = icmp eq i64 %4310, 0
  br i1 %4311, label %.loopexit600, label %.preheader599

.preheader599:                                    ; preds = %4305, %.preheader599
  %4312 = phi ptr [ %4317, %.preheader599 ], [ %4306, %4305 ]
  %4313 = phi ptr [ %4315, %.preheader599 ], [ %4307, %4305 ]
  %4314 = phi i64 [ %4318, %.preheader599 ], [ 0, %4305 ]
  %4315 = getelementptr inbounds nuw i8, ptr %4313, i64 1
  %4316 = load i8, ptr %4313, align 1, !tbaa !34
  %4317 = getelementptr inbounds nuw i8, ptr %4312, i64 1
  store i8 %4316, ptr %4312, align 1, !tbaa !34
  %4318 = add nuw nsw i64 %4314, 1
  %4319 = icmp eq i64 %4318, %4310
  br i1 %4319, label %.loopexit600, label %.preheader599, !llvm.loop !86

.loopexit600:                                     ; preds = %.preheader599, %4305
  %4320 = phi ptr [ %4306, %4305 ], [ %4317, %.preheader599 ]
  %4321 = phi ptr [ %4307, %4305 ], [ %4315, %.preheader599 ]
  %4322 = sub i64 %4308, %4213
  %4323 = icmp ugt i64 %4322, -8
  br i1 %4323, label %.loopexit598, label %.preheader597

.preheader597:                                    ; preds = %.loopexit600, %.preheader597
  %4324 = phi ptr [ %4349, %.preheader597 ], [ %4320, %.loopexit600 ]
  %4325 = phi ptr [ %4347, %.preheader597 ], [ %4321, %.loopexit600 ]
  %4326 = getelementptr inbounds nuw i8, ptr %4325, i64 1
  %4327 = load i8, ptr %4325, align 1, !tbaa !34
  %4328 = getelementptr inbounds nuw i8, ptr %4324, i64 1
  store i8 %4327, ptr %4324, align 1, !tbaa !34
  %4329 = getelementptr inbounds nuw i8, ptr %4325, i64 2
  %4330 = load i8, ptr %4326, align 1, !tbaa !34
  %4331 = getelementptr inbounds nuw i8, ptr %4324, i64 2
  store i8 %4330, ptr %4328, align 1, !tbaa !34
  %4332 = getelementptr inbounds nuw i8, ptr %4325, i64 3
  %4333 = load i8, ptr %4329, align 1, !tbaa !34
  %4334 = getelementptr inbounds nuw i8, ptr %4324, i64 3
  store i8 %4333, ptr %4331, align 1, !tbaa !34
  %4335 = getelementptr inbounds nuw i8, ptr %4325, i64 4
  %4336 = load i8, ptr %4332, align 1, !tbaa !34
  %4337 = getelementptr inbounds nuw i8, ptr %4324, i64 4
  store i8 %4336, ptr %4334, align 1, !tbaa !34
  %4338 = getelementptr inbounds nuw i8, ptr %4325, i64 5
  %4339 = load i8, ptr %4335, align 1, !tbaa !34
  %4340 = getelementptr inbounds nuw i8, ptr %4324, i64 5
  store i8 %4339, ptr %4337, align 1, !tbaa !34
  %4341 = getelementptr inbounds nuw i8, ptr %4325, i64 6
  %4342 = load i8, ptr %4338, align 1, !tbaa !34
  %4343 = getelementptr inbounds nuw i8, ptr %4324, i64 6
  store i8 %4342, ptr %4340, align 1, !tbaa !34
  %4344 = getelementptr inbounds nuw i8, ptr %4325, i64 7
  %4345 = load i8, ptr %4341, align 1, !tbaa !34
  %4346 = getelementptr inbounds nuw i8, ptr %4324, i64 7
  store i8 %4345, ptr %4343, align 1, !tbaa !34
  %4347 = getelementptr inbounds nuw i8, ptr %4325, i64 8
  %4348 = load i8, ptr %4344, align 1, !tbaa !34
  %4349 = getelementptr inbounds nuw i8, ptr %4324, i64 8
  store i8 %4348, ptr %4346, align 1, !tbaa !34
  %4350 = icmp eq ptr %4347, %4145
  br i1 %4350, label %.loopexit598, label %.preheader597, !llvm.loop !87

4351:                                             ; preds = %4221, %4218
  %4352 = load ptr, ptr %3944, align 8, !tbaa !39
  %4353 = getelementptr inbounds nuw i8, ptr %4352, i64 %4215
  store ptr %4353, ptr %3944, align 8, !tbaa !39
  %4354 = load ptr, ptr %3947, align 8, !tbaa !50
  br label %4366

.loopexit598:                                     ; preds = %4230, %.preheader597, %.loopexit600, %4301, %4284, %.loopexit601
  %4355 = load ptr, ptr %3944, align 8, !tbaa !39
  %4356 = getelementptr inbounds nuw i8, ptr %4355, i64 %4215
  store ptr %4356, ptr %3944, align 8, !tbaa !39
  %4357 = icmp ugt i64 %4215, 65535
  %4358 = load ptr, ptr %3947, align 8, !tbaa !50
  br i1 %4357, label %4359, label %4366, !prof !51

4359:                                             ; preds = %.loopexit598
  store i32 1, ptr %3946, align 8, !tbaa !52
  %4360 = load ptr, ptr %1, align 8, !tbaa !53
  %4361 = ptrtoint ptr %4358 to i64
  %4362 = ptrtoint ptr %4360 to i64
  %4363 = sub i64 %4361, %4362
  %4364 = lshr exact i64 %4363, 3
  %4365 = trunc i64 %4364 to i32
  store i32 %4365, ptr %3948, align 4, !tbaa !54
  br label %4366

4366:                                             ; preds = %4359, %.loopexit598, %4351
  %4367 = phi ptr [ %4354, %4351 ], [ %4358, %4359 ], [ %4358, %.loopexit598 ]
  %4368 = trunc i64 %4215 to i16
  %4369 = getelementptr inbounds nuw i8, ptr %4367, i64 4
  store i16 %4368, ptr %4369, align 4, !tbaa !55
  store i32 %4141, ptr %4367, align 4, !tbaa !57
  %4370 = add i64 %4212, -3
  %4371 = icmp ugt i64 %4370, 65535
  br i1 %4371, label %4372, label %4379, !prof !58

4372:                                             ; preds = %4366
  store i32 2, ptr %3946, align 8, !tbaa !52
  %4373 = load ptr, ptr %1, align 8, !tbaa !53
  %4374 = ptrtoint ptr %4367 to i64
  %4375 = ptrtoint ptr %4373 to i64
  %4376 = sub i64 %4374, %4375
  %4377 = lshr exact i64 %4376, 3
  %4378 = trunc i64 %4377 to i32
  store i32 %4378, ptr %3948, align 4, !tbaa !54
  br label %4379

4379:                                             ; preds = %4372, %4366
  %4380 = trunc i64 %4370 to i16
  %4381 = getelementptr inbounds nuw i8, ptr %4367, i64 6
  store i16 %4380, ptr %4381, align 2, !tbaa !59
  %4382 = getelementptr inbounds nuw i8, ptr %4367, i64 8
  store ptr %4382, ptr %3947, align 8, !tbaa !50
  %4383 = getelementptr inbounds nuw i8, ptr %4145, i64 %4212
  %4384 = icmp ugt ptr %4383, %39
  br i1 %4384, label %.loopexit593, label %4385

4385:                                             ; preds = %4379
  %4386 = add i32 %4139, 2
  %4387 = zext i32 %4139 to i64
  %4388 = getelementptr inbounds nuw i8, ptr %59, i64 %4387
  %4389 = load i64, ptr %4388, align 1, !tbaa !22
  %4390 = mul i64 %4389, -3523014627193167104
  %4391 = lshr i64 %4390, %3939
  %4392 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %4391
  store i32 %4386, ptr %4392, align 4, !tbaa !23
  %4393 = getelementptr inbounds i8, ptr %4383, i64 -2
  %4394 = ptrtoint ptr %4393 to i64
  %4395 = sub i64 %4394, %21
  %4396 = trunc i64 %4395 to i32
  %4397 = load i64, ptr %4393, align 1, !tbaa !22
  %4398 = mul i64 %4397, -3523014627193167104
  %4399 = lshr i64 %4398, %3939
  %4400 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %4399
  store i32 %4396, ptr %4400, align 4, !tbaa !23
  %4401 = icmp eq i32 %4140, 0
  br i1 %4401, label %.loopexit593, label %.preheader592

.preheader592:                                    ; preds = %4385, %4505
  %4402 = phi ptr [ %4508, %4505 ], [ %4382, %4385 ]
  %4403 = phi ptr [ %4487, %4505 ], [ %4383, %4385 ]
  %4404 = phi i32 [ %4405, %4505 ], [ %4144, %4385 ]
  %4405 = phi i32 [ %4404, %4505 ], [ %4140, %4385 ]
  %4406 = load i32, ptr %4403, align 1, !tbaa !23
  %4407 = zext i32 %4405 to i64
  %4408 = sub nsw i64 0, %4407
  %4409 = getelementptr inbounds i8, ptr %4403, i64 %4408
  %4410 = load i32, ptr %4409, align 1, !tbaa !23
  %4411 = icmp eq i32 %4406, %4410
  br i1 %4411, label %4412, label %.loopexit593

4412:                                             ; preds = %.preheader592
  %4413 = getelementptr inbounds nuw i8, ptr %4403, i64 4
  %4414 = getelementptr inbounds i8, ptr %4413, i64 %4408
  %4415 = icmp ult ptr %4413, %3940
  br i1 %4415, label %4416, label %.loopexit591

4416:                                             ; preds = %4412
  %4417 = load i64, ptr %4414, align 1, !tbaa !22
  %4418 = load i64, ptr %4413, align 1, !tbaa !22
  %4419 = icmp eq i64 %4417, %4418
  br i1 %4419, label %.preheader590, label %4420

4420:                                             ; preds = %4416
  %4421 = xor i64 %4418, %4417
  %4422 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %4421, i1 true)
  %4423 = lshr i64 %4422, 3
  br label %4477

.preheader590:                                    ; preds = %4416, %4429
  %4424 = phi ptr [ %4427, %4429 ], [ %4414, %4416 ]
  %4425 = phi ptr [ %4426, %4429 ], [ %4413, %4416 ]
  %4426 = getelementptr inbounds nuw i8, ptr %4425, i64 8
  %4427 = getelementptr inbounds nuw i8, ptr %4424, i64 8
  %4428 = icmp ult ptr %4426, %3940
  br i1 %4428, label %4429, label %.loopexit591

4429:                                             ; preds = %.preheader590
  %4430 = load i64, ptr %4427, align 1, !tbaa !22
  %4431 = load i64, ptr %4426, align 1, !tbaa !22
  %4432 = icmp eq i64 %4430, %4431
  br i1 %4432, label %.preheader590, label %4433

4433:                                             ; preds = %4429
  %4434 = xor i64 %4431, %4430
  %4435 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %4434, i1 true)
  %4436 = lshr i64 %4435, 3
  %4437 = getelementptr inbounds nuw i8, ptr %4426, i64 %4436
  %4438 = ptrtoint ptr %4437 to i64
  %4439 = ptrtoint ptr %4413 to i64
  %4440 = sub i64 %4438, %4439
  br label %4477

.loopexit591:                                     ; preds = %.preheader590, %4412
  %4441 = phi ptr [ %4414, %4412 ], [ %4427, %.preheader590 ]
  %4442 = phi ptr [ %4413, %4412 ], [ %4426, %.preheader590 ]
  %4443 = icmp ult ptr %4442, %3941
  br i1 %4443, label %4444, label %4451

4444:                                             ; preds = %.loopexit591
  %4445 = load i32, ptr %4441, align 1, !tbaa !23
  %4446 = load i32, ptr %4442, align 1, !tbaa !23
  %4447 = icmp eq i32 %4445, %4446
  br i1 %4447, label %4448, label %4451

4448:                                             ; preds = %4444
  %4449 = getelementptr inbounds nuw i8, ptr %4442, i64 4
  %4450 = getelementptr inbounds nuw i8, ptr %4441, i64 4
  br label %4451

4451:                                             ; preds = %4448, %4444, %.loopexit591
  %4452 = phi ptr [ %4450, %4448 ], [ %4441, %4444 ], [ %4441, %.loopexit591 ]
  %4453 = phi ptr [ %4449, %4448 ], [ %4442, %4444 ], [ %4442, %.loopexit591 ]
  %4454 = icmp ult ptr %4453, %3942
  br i1 %4454, label %4455, label %4462

4455:                                             ; preds = %4451
  %4456 = load i16, ptr %4452, align 1, !tbaa !37
  %4457 = load i16, ptr %4453, align 1, !tbaa !37
  %4458 = icmp eq i16 %4456, %4457
  br i1 %4458, label %4459, label %4462

4459:                                             ; preds = %4455
  %4460 = getelementptr inbounds nuw i8, ptr %4453, i64 2
  %4461 = getelementptr inbounds nuw i8, ptr %4452, i64 2
  br label %4462

4462:                                             ; preds = %4459, %4455, %4451
  %4463 = phi ptr [ %4461, %4459 ], [ %4452, %4455 ], [ %4452, %4451 ]
  %4464 = phi ptr [ %4460, %4459 ], [ %4453, %4455 ], [ %4453, %4451 ]
  %4465 = icmp ult ptr %4464, %38
  br i1 %4465, label %4466, label %4472

4466:                                             ; preds = %4462
  %4467 = load i8, ptr %4463, align 1, !tbaa !34
  %4468 = load i8, ptr %4464, align 1, !tbaa !34
  %4469 = icmp eq i8 %4467, %4468
  %4470 = zext i1 %4469 to i64
  %4471 = getelementptr inbounds nuw i8, ptr %4464, i64 %4470
  br label %4472

4472:                                             ; preds = %4466, %4462
  %4473 = phi ptr [ %4464, %4462 ], [ %4471, %4466 ]
  %4474 = ptrtoint ptr %4473 to i64
  %4475 = ptrtoint ptr %4413 to i64
  %4476 = sub i64 %4474, %4475
  br label %4477

4477:                                             ; preds = %4472, %4433, %4420
  %4478 = phi i64 [ %4476, %4472 ], [ %4423, %4420 ], [ %4440, %4433 ]
  %4479 = ptrtoint ptr %4403 to i64
  %4480 = sub i64 %4479, %21
  %4481 = trunc i64 %4480 to i32
  %4482 = load i64, ptr %4403, align 1, !tbaa !22
  %4483 = mul i64 %4482, -3523014627193167104
  %4484 = lshr i64 %4483, %3939
  %4485 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %4484
  store i32 %4481, ptr %4485, align 4, !tbaa !23
  %4486 = getelementptr i8, ptr %4403, i64 %4478
  %4487 = getelementptr i8, ptr %4486, i64 4
  %4488 = icmp ugt ptr %4403, %3943
  br i1 %4488, label %4493, label %4489

4489:                                             ; preds = %4477
  %4490 = load ptr, ptr %3944, align 8, !tbaa !39
  %4491 = load <2 x i64>, ptr %4403, align 1, !tbaa !34
  store <2 x i64> %4491, ptr %4490, align 1, !tbaa !34
  %4492 = load ptr, ptr %3947, align 8, !tbaa !50
  br label %4493

4493:                                             ; preds = %4489, %4477
  %4494 = phi ptr [ %4402, %4477 ], [ %4492, %4489 ]
  %4495 = getelementptr inbounds nuw i8, ptr %4494, i64 4
  store i16 0, ptr %4495, align 4, !tbaa !55
  store i32 1, ptr %4494, align 4, !tbaa !57
  %4496 = add i64 %4478, 1
  %4497 = icmp ugt i64 %4496, 65535
  br i1 %4497, label %4498, label %4505, !prof !58

4498:                                             ; preds = %4493
  store i32 2, ptr %3946, align 8, !tbaa !52
  %4499 = load ptr, ptr %1, align 8, !tbaa !53
  %4500 = ptrtoint ptr %4494 to i64
  %4501 = ptrtoint ptr %4499 to i64
  %4502 = sub i64 %4500, %4501
  %4503 = lshr exact i64 %4502, 3
  %4504 = trunc i64 %4503 to i32
  store i32 %4504, ptr %3948, align 4, !tbaa !54
  br label %4505

4505:                                             ; preds = %4498, %4493
  %4506 = trunc i64 %4496 to i16
  %4507 = getelementptr inbounds nuw i8, ptr %4494, i64 6
  store i16 %4506, ptr %4507, align 2, !tbaa !59
  %4508 = getelementptr inbounds nuw i8, ptr %4494, i64 8
  store ptr %4508, ptr %3947, align 8, !tbaa !50
  %4509 = icmp ugt ptr %4487, %39
  br i1 %4509, label %.loopexit593, label %.preheader592

.loopexit593:                                     ; preds = %4505, %.preheader592, %4385, %4379
  %4510 = phi i32 [ 0, %4385 ], [ %4140, %4379 ], [ %4405, %.preheader592 ], [ %4404, %4505 ]
  %4511 = phi i32 [ %4144, %4385 ], [ %4144, %4379 ], [ %4404, %.preheader592 ], [ %4405, %4505 ]
  %4512 = phi ptr [ %4383, %4385 ], [ %4383, %4379 ], [ %4403, %.preheader592 ], [ %4487, %4505 ]
  %4513 = getelementptr inbounds nuw i8, ptr %4512, i64 %17
  %4514 = getelementptr inbounds nuw i8, ptr %4513, i64 1
  %4515 = icmp ult ptr %4514, %39
  br i1 %4515, label %3949, label %.loopexit490

.loopexit490:                                     ; preds = %.loopexit651, %3517, %3436, %.loopexit622, %2935, %2854, %.loopexit593, %4099, %4018, %.loopexit564, %2351, %2269, %.loopexit541, %1235, %.loopexit518, %707, %.loopexit495, %1763, %.loopexit473, %177, %3934, %3352, %2770, %2183, %1654, %1126, %598, %64
  %4516 = phi i32 [ %58, %64 ], [ %58, %598 ], [ %58, %1126 ], [ %58, %1654 ], [ %58, %2183 ], [ %58, %2770 ], [ %58, %3352 ], [ %58, %3934 ], [ %3374, %3517 ], [ %83, %177 ], [ %593, %.loopexit473 ], [ %1674, %1763 ], [ %2177, %.loopexit495 ], [ %618, %707 ], [ %1121, %.loopexit518 ], [ %1146, %1235 ], [ %1649, %.loopexit541 ], [ 0, %2269 ], [ %2204, %2351 ], [ %2765, %.loopexit564 ], [ 0, %4018 ], [ %3956, %4099 ], [ %4511, %.loopexit593 ], [ 0, %2854 ], [ %2792, %2935 ], [ %3347, %.loopexit622 ], [ 0, %3436 ], [ %3929, %.loopexit651 ]
  %4517 = phi i32 [ %56, %64 ], [ %56, %598 ], [ %56, %1126 ], [ %56, %1654 ], [ %56, %2183 ], [ %56, %2770 ], [ %56, %3352 ], [ %56, %3934 ], [ %3373, %3517 ], [ %84, %177 ], [ %592, %.loopexit473 ], [ %1675, %1763 ], [ %2176, %.loopexit495 ], [ %619, %707 ], [ %1120, %.loopexit518 ], [ %1147, %1235 ], [ %1648, %.loopexit541 ], [ %2203, %2269 ], [ %2203, %2351 ], [ %2764, %.loopexit564 ], [ %3955, %4018 ], [ %3955, %4099 ], [ %4510, %.loopexit593 ], [ %2791, %2854 ], [ %2791, %2935 ], [ %3346, %.loopexit622 ], [ %3373, %3436 ], [ %3928, %.loopexit651 ]
  %4518 = phi ptr [ %3, %64 ], [ %3, %598 ], [ %3, %1126 ], [ %3, %1654 ], [ %3, %2183 ], [ %3, %2770 ], [ %3, %3352 ], [ %3, %3934 ], [ %3370, %3517 ], [ %81, %177 ], [ %594, %.loopexit473 ], [ %1672, %1763 ], [ %2178, %.loopexit495 ], [ %616, %707 ], [ %1122, %.loopexit518 ], [ %1144, %1235 ], [ %1650, %.loopexit541 ], [ %2200, %2269 ], [ %2200, %2351 ], [ %2766, %.loopexit564 ], [ %3952, %4018 ], [ %3952, %4099 ], [ %4512, %.loopexit593 ], [ %2788, %2854 ], [ %2788, %2935 ], [ %3348, %.loopexit622 ], [ %3370, %3436 ], [ %3930, %.loopexit651 ]
  %4519 = select i1 %57, i32 %40, i32 0
  %4520 = select i1 %55, i32 %42, i32 0
  %4521 = icmp ne i32 %4516, 0
  %4522 = select i1 %57, i1 %4521, i1 false
  %4523 = select i1 %4522, i32 %40, i32 %4520
  %4524 = select i1 %4521, i32 %4516, i32 %4519
  store i32 %4524, ptr %2, align 4, !tbaa !23
  %4525 = icmp eq i32 %4517, 0
  %4526 = select i1 %4525, i32 %4523, i32 %4517
  store i32 %4526, ptr %41, align 4, !tbaa !23
  %4527 = ptrtoint ptr %38 to i64
  %4528 = ptrtoint ptr %4518 to i64
  %4529 = sub i64 %4527, %4528
  ret i64 %4529
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_fast_dictMatchState(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %7 = load i32, ptr %6, align 8, !tbaa !27
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %11 = load i32, ptr %10, align 8, !tbaa !21
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
  %51 = load i32, ptr %50, align 8, !tbaa !21
  %52 = ptrtoint ptr %16 to i64
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %54 = load i32, ptr %53, align 8, !tbaa !90
  %55 = icmp eq i32 %54, 0
  switch i32 %7, label %56 [
    i32 7, label %2545
    i32 5, label %887
    i32 6, label %1716
  ]

56:                                               ; preds = %5
  br i1 %55, label %.loopexit308, label %57

57:                                               ; preds = %56
  %58 = zext nneg i32 %51 to i64
  %59 = shl i64 4, %58
  %60 = icmp ugt i32 %51, 61
  br i1 %60, label %.loopexit308, label %.preheader307

.preheader307:                                    ; preds = %57, %.preheader307
  %61 = phi i64 [ %63, %.preheader307 ], [ 0, %57 ]
  %62 = getelementptr inbounds nuw i8, ptr %30, i64 %61
  tail call void @llvm.prefetch.p0(ptr %62, i32 0, i32 2, i32 1)
  %63 = add i64 %61, 64
  %64 = icmp ult i64 %63, %59
  br i1 %64, label %.preheader307, label %.loopexit308, !llvm.loop !91

.loopexit308:                                     ; preds = %.preheader307, %57, %56
  %65 = getelementptr inbounds nuw i8, ptr %16, i64 2
  %66 = add nsw i64 %4, -8
  %67 = icmp slt i64 %66, %17
  br i1 %67, label %.loopexit305, label %68

68:                                               ; preds = %.loopexit308
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 %17
  %70 = and i64 %49, 4294967295
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = getelementptr inbounds nuw i8, ptr %3, i64 %72
  %74 = sub i32 32, %11
  %75 = sub i32 24, %51
  %76 = getelementptr inbounds i8, ptr %22, i64 -32
  %77 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %78 = ptrtoint ptr %76 to i64
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %80 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %82 = getelementptr inbounds i8, ptr %22, i64 -7
  %83 = getelementptr inbounds i8, ptr %22, i64 -3
  %84 = getelementptr inbounds i8, ptr %22, i64 -1
  %85 = zext i32 %42 to i64
  %86 = sub nsw i64 0, %85
  %87 = getelementptr inbounds i8, ptr %34, i64 %86
  br label %88

88:                                               ; preds = %.loopexit, %68
  %89 = phi ptr [ %69, %68 ], [ %885, %.loopexit ]
  %90 = phi ptr [ %73, %68 ], [ %884, %.loopexit ]
  %91 = phi ptr [ %3, %68 ], [ %884, %.loopexit ]
  %92 = phi i32 [ %24, %68 ], [ %883, %.loopexit ]
  %93 = phi i32 [ %26, %68 ], [ %882, %.loopexit ]
  %94 = load i32, ptr %90, align 1, !tbaa !23
  %95 = mul i32 %94, -1640531535
  %96 = lshr i32 %95, %75
  %97 = lshr i32 %96, 8
  %98 = zext nneg i32 %97 to i64
  %99 = getelementptr inbounds nuw [4 x i8], ptr %30, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !23
  %101 = xor i32 %96, %100
  %102 = getelementptr inbounds nuw i8, ptr %90, i64 256
  %invariant.op1983 = sub i32 1, %92
  br label %103

103:                                              ; preds = %778, %88
  %104 = phi ptr [ %102, %88 ], [ %780, %778 ]
  %105 = phi i64 [ %17, %88 ], [ %775, %778 ]
  %106 = phi i32 [ %101, %88 ], [ %785, %778 ]
  %107 = phi i32 [ %100, %88 ], [ %784, %778 ]
  %108 = phi i32 [ %95, %88 ], [ %123, %778 ]
  %109 = phi ptr [ %89, %88 ], [ %776, %778 ]
  %110 = phi ptr [ %90, %88 ], [ %109, %778 ]
  %111 = lshr i32 %108, %74
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !23
  %115 = and i32 %106, 255
  %116 = icmp eq i32 %115, 0
  %117 = ptrtoint ptr %110 to i64
  %118 = sub i64 %117, %52
  %119 = trunc i64 %118 to i32
  %120 = zext i32 %114 to i64
  %121 = getelementptr inbounds nuw i8, ptr %16, i64 %120
  %.reass611.reass.reass.reass.reass.reass = add i32 %119, %invariant.op1983
  %122 = load i32, ptr %109, align 1, !tbaa !23
  %123 = mul i32 %122, -1640531535
  %124 = lshr i32 %123, %75
  store i32 %119, ptr %113, align 4, !tbaa !23
  %125 = sub i32 %.reass611.reass.reass.reass.reass.reass, %19
  %126 = icmp ugt i32 %125, -4
  br i1 %126, label %310, label %127

127:                                              ; preds = %103
  %128 = icmp ult i32 %.reass611.reass.reass.reass.reass.reass, %19
  %129 = sub i32 %.reass611.reass.reass.reass.reass.reass, %42
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds nuw i8, ptr %34, i64 %130
  %132 = zext i32 %.reass611.reass.reass.reass.reass.reass to i64
  %133 = getelementptr inbounds nuw i8, ptr %16, i64 %132
  %134 = select i1 %128, ptr %131, ptr %133
  %135 = load i32, ptr %134, align 1, !tbaa !23
  %136 = getelementptr inbounds nuw i8, ptr %110, i64 1
  %137 = load i32, ptr %136, align 1, !tbaa !23
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %139, label %310

139:                                              ; preds = %127
  %140 = getelementptr inbounds nuw i8, ptr %110, i64 1
  %141 = select i1 %128, ptr %37, ptr %22
  %142 = getelementptr inbounds nuw i8, ptr %110, i64 5
  %143 = getelementptr inbounds nuw i8, ptr %134, i64 4
  %144 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %142, ptr noundef nonnull %143, ptr noundef %22, ptr noundef %141, ptr noundef %21)
  %145 = add i64 %144, 4
  %146 = ptrtoint ptr %140 to i64
  %147 = ptrtoint ptr %91 to i64
  %148 = sub i64 %146, %147
  %149 = icmp ugt ptr %140, %76
  %150 = load ptr, ptr %77, align 8, !tbaa !39
  br i1 %149, label %173, label %151

151:                                              ; preds = %139
  %152 = load <2 x i64>, ptr %91, align 1, !tbaa !34
  store <2 x i64> %152, ptr %150, align 1, !tbaa !34
  %153 = icmp ugt i64 %148, 16
  br i1 %153, label %154, label %289

154:                                              ; preds = %151
  %155 = load ptr, ptr %77, align 8, !tbaa !39
  %156 = getelementptr inbounds nuw i8, ptr %155, i64 16
  %157 = getelementptr inbounds nuw i8, ptr %91, i64 16
  %158 = getelementptr i8, ptr %155, i64 %148
  %159 = load <2 x i64>, ptr %157, align 1, !tbaa !34
  store <2 x i64> %159, ptr %156, align 1, !tbaa !34
  %160 = icmp ult i64 %148, 33
  br i1 %160, label %289, label %161

161:                                              ; preds = %154
  %162 = getelementptr inbounds nuw i8, ptr %155, i64 32
  br label %163

163:                                              ; preds = %163, %161
  %164 = phi ptr [ %162, %161 ], [ %171, %163 ]
  %165 = phi ptr [ %157, %161 ], [ %169, %163 ]
  %166 = getelementptr inbounds nuw i8, ptr %165, i64 16
  %167 = load <2 x i64>, ptr %166, align 1, !tbaa !34
  store <2 x i64> %167, ptr %164, align 1, !tbaa !34
  %168 = getelementptr inbounds nuw i8, ptr %164, i64 16
  %169 = getelementptr inbounds nuw i8, ptr %165, i64 32
  %170 = load <2 x i64>, ptr %169, align 1, !tbaa !34
  store <2 x i64> %170, ptr %168, align 1, !tbaa !34
  %171 = getelementptr inbounds nuw i8, ptr %164, i64 32
  %172 = icmp ult ptr %171, %158
  br i1 %172, label %163, label %.loopexit300, !llvm.loop !42

173:                                              ; preds = %139
  %174 = icmp ugt ptr %91, %76
  br i1 %174, label %.loopexit303, label %175

175:                                              ; preds = %173
  %176 = sub i64 %78, %147
  %177 = getelementptr inbounds i8, ptr %150, i64 %176
  %178 = load <2 x i64>, ptr %91, align 1, !tbaa !34
  store <2 x i64> %178, ptr %150, align 1, !tbaa !34
  %179 = icmp ult i64 %176, 17
  br i1 %179, label %.loopexit303, label %180

180:                                              ; preds = %175
  %181 = getelementptr inbounds nuw i8, ptr %150, i64 16
  br label %182

182:                                              ; preds = %182, %180
  %183 = phi ptr [ %181, %180 ], [ %190, %182 ]
  %184 = phi ptr [ %91, %180 ], [ %188, %182 ]
  %185 = getelementptr inbounds nuw i8, ptr %184, i64 16
  %186 = load <2 x i64>, ptr %185, align 1, !tbaa !34
  store <2 x i64> %186, ptr %183, align 1, !tbaa !34
  %187 = getelementptr inbounds nuw i8, ptr %183, i64 16
  %188 = getelementptr inbounds nuw i8, ptr %184, i64 32
  %189 = load <2 x i64>, ptr %188, align 1, !tbaa !34
  store <2 x i64> %189, ptr %187, align 1, !tbaa !34
  %190 = getelementptr inbounds nuw i8, ptr %183, i64 32
  %191 = icmp ult ptr %190, %177
  br i1 %191, label %182, label %.loopexit303, !llvm.loop !42

.loopexit303:                                     ; preds = %182, %175, %173
  %192 = phi ptr [ %76, %175 ], [ %91, %173 ], [ %76, %182 ]
  %193 = phi ptr [ %177, %175 ], [ %150, %173 ], [ %177, %182 ]
  %194 = icmp ult ptr %192, %140
  br i1 %194, label %195, label %.loopexit300

195:                                              ; preds = %.loopexit303
  %196 = ptrtoint ptr %192 to i64
  %197 = ptrtoint ptr %193 to i64
  %198 = sub i64 %117, %196
  %199 = add i64 %198, 1
  %200 = icmp ult i64 %199, 4
  %201 = sub i64 %197, %196
  %202 = icmp ult i64 %201, 32
  %203 = select i1 %200, i1 true, i1 %202
  br i1 %203, label %239, label %204

204:                                              ; preds = %195
  %205 = icmp ult i64 %199, 32
  br i1 %205, label %225, label %206

206:                                              ; preds = %204
  %207 = and i64 %199, -32
  br label %208

208:                                              ; preds = %208, %206
  %209 = phi i64 [ 0, %206 ], [ %216, %208 ]
  %210 = getelementptr i8, ptr %193, i64 %209
  %211 = getelementptr i8, ptr %192, i64 %209
  %212 = getelementptr i8, ptr %211, i64 16
  %213 = load <16 x i8>, ptr %211, align 1, !tbaa !34
  %214 = load <16 x i8>, ptr %212, align 1, !tbaa !34
  %215 = getelementptr i8, ptr %210, i64 16
  store <16 x i8> %213, ptr %210, align 1, !tbaa !34
  store <16 x i8> %214, ptr %215, align 1, !tbaa !34
  %216 = add nuw i64 %209, 32
  %217 = icmp eq i64 %216, %207
  br i1 %217, label %218, label %208, !llvm.loop !92

218:                                              ; preds = %208
  %219 = icmp eq i64 %199, %207
  br i1 %219, label %.loopexit300, label %220

220:                                              ; preds = %218
  %221 = getelementptr i8, ptr %193, i64 %207
  %222 = getelementptr i8, ptr %192, i64 %207
  %223 = and i64 %199, 28
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %239, label %225

225:                                              ; preds = %220, %204
  %226 = phi i64 [ %207, %220 ], [ 0, %204 ]
  %227 = and i64 %199, -4
  br label %228

228:                                              ; preds = %228, %225
  %229 = phi i64 [ %226, %225 ], [ %233, %228 ]
  %230 = getelementptr i8, ptr %193, i64 %229
  %231 = getelementptr i8, ptr %192, i64 %229
  %232 = load <4 x i8>, ptr %231, align 1, !tbaa !34
  store <4 x i8> %232, ptr %230, align 1, !tbaa !34
  %233 = add nuw i64 %229, 4
  %234 = icmp eq i64 %233, %227
  br i1 %234, label %235, label %228, !llvm.loop !93

235:                                              ; preds = %228
  %236 = getelementptr i8, ptr %193, i64 %227
  %237 = getelementptr i8, ptr %192, i64 %227
  %238 = icmp eq i64 %199, %227
  br i1 %238, label %.loopexit300, label %239

239:                                              ; preds = %235, %220, %195
  %240 = phi ptr [ %193, %195 ], [ %221, %220 ], [ %236, %235 ]
  %241 = phi ptr [ %192, %195 ], [ %222, %220 ], [ %237, %235 ]
  %242 = ptrtoint ptr %241 to i64
  %243 = sub i64 %117, %242
  %244 = add i64 %243, 1
  %245 = and i64 %244, 7
  %246 = and i64 %243, 7
  %247 = icmp eq i64 %246, 7
  br i1 %247, label %.preheader299.preheader, label %.preheader301.preheader

.preheader301.preheader:                          ; preds = %239
  %248 = ptrtoaddr ptr %240 to i64
  %min.iters.check1657 = icmp samesign ult i64 %245, 4
  %249 = sub i64 %248, %242
  %diff.check1655 = icmp ult i64 %249, 4
  %or.cond = select i1 %min.iters.check1657, i1 true, i1 %diff.check1655
  br i1 %or.cond, label %.preheader301.preheader1540, label %vector.ph1658

vector.ph1658:                                    ; preds = %.preheader301.preheader
  %n.vec1660 = and i64 %244, 4
  br label %vector.body1661

vector.body1661:                                  ; preds = %vector.body1661, %vector.ph1658
  %index1662 = phi i64 [ 0, %vector.ph1658 ], [ %index.next1666, %vector.body1661 ]
  %next.gep1663 = getelementptr i8, ptr %240, i64 %index1662
  %next.gep1664 = getelementptr i8, ptr %241, i64 %index1662
  %wide.load1665 = load <4 x i8>, ptr %next.gep1664, align 1, !tbaa !34
  store <4 x i8> %wide.load1665, ptr %next.gep1663, align 1, !tbaa !34
  %index.next1666 = add nuw i64 %index1662, 4
  %250 = icmp eq i64 %index.next1666, %n.vec1660
  br i1 %250, label %middle.block1667, label %vector.body1661, !llvm.loop !94

middle.block1667:                                 ; preds = %vector.body1661
  %251 = getelementptr i8, ptr %240, i64 4
  %252 = getelementptr i8, ptr %241, i64 4
  %cmp.n1668 = icmp eq i64 %245, 4
  br i1 %cmp.n1668, label %.loopexit302, label %.preheader301.preheader1540

.preheader301.preheader1540:                      ; preds = %middle.block1667, %.preheader301.preheader
  %.ph1541 = phi ptr [ %251, %middle.block1667 ], [ %240, %.preheader301.preheader ]
  %.ph1542 = phi ptr [ %252, %middle.block1667 ], [ %241, %.preheader301.preheader ]
  %.ph1543 = phi i64 [ 4, %middle.block1667 ], [ 0, %.preheader301.preheader ]
  br label %.preheader301

.preheader301:                                    ; preds = %.preheader301.preheader1540, %.preheader301
  %253 = phi ptr [ %258, %.preheader301 ], [ %.ph1541, %.preheader301.preheader1540 ]
  %254 = phi ptr [ %256, %.preheader301 ], [ %.ph1542, %.preheader301.preheader1540 ]
  %255 = phi i64 [ %259, %.preheader301 ], [ %.ph1543, %.preheader301.preheader1540 ]
  %256 = getelementptr inbounds nuw i8, ptr %254, i64 1
  %257 = load i8, ptr %254, align 1, !tbaa !34
  %258 = getelementptr inbounds nuw i8, ptr %253, i64 1
  store i8 %257, ptr %253, align 1, !tbaa !34
  %259 = add i64 %255, 1
  %260 = icmp eq i64 %259, %245
  br i1 %260, label %.loopexit302, label %.preheader301, !llvm.loop !95

.loopexit302:                                     ; preds = %.preheader301, %middle.block1667
  %.lcssa1448 = phi ptr [ %252, %middle.block1667 ], [ %256, %.preheader301 ]
  %.lcssa1447 = phi ptr [ %251, %middle.block1667 ], [ %258, %.preheader301 ]
  %261 = icmp ult i64 %243, 7
  br i1 %261, label %.loopexit300, label %.preheader299.preheader

.preheader299.preheader:                          ; preds = %.loopexit302, %239
  %.ph1538 = phi ptr [ %.lcssa1447, %.loopexit302 ], [ %240, %239 ]
  %.ph1539 = phi ptr [ %.lcssa1448, %.loopexit302 ], [ %241, %239 ]
  br label %.preheader299

.preheader299:                                    ; preds = %.preheader299.preheader, %.preheader299
  %262 = phi ptr [ %287, %.preheader299 ], [ %.ph1538, %.preheader299.preheader ]
  %263 = phi ptr [ %285, %.preheader299 ], [ %.ph1539, %.preheader299.preheader ]
  %264 = getelementptr inbounds nuw i8, ptr %263, i64 1
  %265 = load i8, ptr %263, align 1, !tbaa !34
  %266 = getelementptr inbounds nuw i8, ptr %262, i64 1
  store i8 %265, ptr %262, align 1, !tbaa !34
  %267 = getelementptr inbounds nuw i8, ptr %263, i64 2
  %268 = load i8, ptr %264, align 1, !tbaa !34
  %269 = getelementptr inbounds nuw i8, ptr %262, i64 2
  store i8 %268, ptr %266, align 1, !tbaa !34
  %270 = getelementptr inbounds nuw i8, ptr %263, i64 3
  %271 = load i8, ptr %267, align 1, !tbaa !34
  %272 = getelementptr inbounds nuw i8, ptr %262, i64 3
  store i8 %271, ptr %269, align 1, !tbaa !34
  %273 = getelementptr inbounds nuw i8, ptr %263, i64 4
  %274 = load i8, ptr %270, align 1, !tbaa !34
  %275 = getelementptr inbounds nuw i8, ptr %262, i64 4
  store i8 %274, ptr %272, align 1, !tbaa !34
  %276 = getelementptr inbounds nuw i8, ptr %263, i64 5
  %277 = load i8, ptr %273, align 1, !tbaa !34
  %278 = getelementptr inbounds nuw i8, ptr %262, i64 5
  store i8 %277, ptr %275, align 1, !tbaa !34
  %279 = getelementptr inbounds nuw i8, ptr %263, i64 6
  %280 = load i8, ptr %276, align 1, !tbaa !34
  %281 = getelementptr inbounds nuw i8, ptr %262, i64 6
  store i8 %280, ptr %278, align 1, !tbaa !34
  %282 = getelementptr inbounds nuw i8, ptr %263, i64 7
  %283 = load i8, ptr %279, align 1, !tbaa !34
  %284 = getelementptr inbounds nuw i8, ptr %262, i64 7
  store i8 %283, ptr %281, align 1, !tbaa !34
  %285 = getelementptr inbounds nuw i8, ptr %263, i64 8
  %286 = load i8, ptr %282, align 1, !tbaa !34
  %287 = getelementptr inbounds nuw i8, ptr %262, i64 8
  store i8 %286, ptr %284, align 1, !tbaa !34
  %288 = icmp eq ptr %282, %110
  br i1 %288, label %.loopexit300, label %.preheader299, !llvm.loop !96

289:                                              ; preds = %154, %151
  %290 = load ptr, ptr %77, align 8, !tbaa !39
  %291 = getelementptr inbounds nuw i8, ptr %290, i64 %148
  store ptr %291, ptr %77, align 8, !tbaa !39
  %292 = load ptr, ptr %80, align 8, !tbaa !50
  br label %304

.loopexit300:                                     ; preds = %163, %.preheader299, %.loopexit302, %235, %218, %.loopexit303
  %293 = load ptr, ptr %77, align 8, !tbaa !39
  %294 = getelementptr inbounds nuw i8, ptr %293, i64 %148
  store ptr %294, ptr %77, align 8, !tbaa !39
  %295 = icmp ugt i64 %148, 65535
  %296 = load ptr, ptr %80, align 8, !tbaa !50
  br i1 %295, label %297, label %304, !prof !51

297:                                              ; preds = %.loopexit300
  store i32 1, ptr %79, align 8, !tbaa !52
  %298 = load ptr, ptr %1, align 8, !tbaa !53
  %299 = ptrtoint ptr %296 to i64
  %300 = ptrtoint ptr %298 to i64
  %301 = sub i64 %299, %300
  %302 = lshr exact i64 %301, 3
  %303 = trunc i64 %302 to i32
  store i32 %303, ptr %81, align 4, !tbaa !54
  br label %304

304:                                              ; preds = %297, %.loopexit300, %289
  %305 = phi ptr [ %292, %289 ], [ %296, %297 ], [ %296, %.loopexit300 ]
  %306 = trunc i64 %148 to i16
  %307 = getelementptr inbounds nuw i8, ptr %305, i64 4
  store i16 %306, ptr %307, align 4, !tbaa !55
  store i32 1, ptr %305, align 4, !tbaa !57
  %308 = add i64 %144, 1
  %309 = icmp ugt i64 %308, 65535
  br i1 %309, label %786, label %799, !prof !58

310:                                              ; preds = %127, %103
  br i1 %116, label %311, label %511

311:                                              ; preds = %310
  %312 = lshr i32 %107, 8
  %313 = icmp ugt i32 %312, %32
  br i1 %313, label %314, label %511

314:                                              ; preds = %311
  %315 = zext nneg i32 %312 to i64
  %316 = getelementptr inbounds nuw i8, ptr %34, i64 %315
  %317 = load i32, ptr %316, align 1, !tbaa !23
  %318 = load i32, ptr %110, align 1, !tbaa !23
  %319 = icmp ne i32 %317, %318
  %320 = icmp ugt i32 %114, %19
  %321 = select i1 %319, i1 true, i1 %320
  br i1 %321, label %511, label %322

322:                                              ; preds = %314
  %323 = getelementptr inbounds nuw i8, ptr %34, i64 %315
  %324 = add i32 %312, %42
  %325 = sub i32 %119, %324
  %326 = getelementptr inbounds nuw i8, ptr %110, i64 4
  %327 = getelementptr inbounds nuw i8, ptr %323, i64 4
  %328 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %326, ptr noundef nonnull %327, ptr noundef %22, ptr noundef %37, ptr noundef %21)
  %329 = add i64 %328, 4
  %330 = icmp ugt ptr %110, %91
  br i1 %330, label %.preheader298, label %348

.preheader298:                                    ; preds = %322, %339
  %331 = phi ptr [ %334, %339 ], [ %110, %322 ]
  %332 = phi i64 [ %340, %339 ], [ %329, %322 ]
  %333 = phi ptr [ %336, %339 ], [ %323, %322 ]
  %334 = getelementptr inbounds i8, ptr %331, i64 -1
  %335 = load i8, ptr %334, align 1, !tbaa !34
  %336 = getelementptr inbounds i8, ptr %333, i64 -1
  %337 = load i8, ptr %336, align 1, !tbaa !34
  %338 = icmp eq i8 %335, %337
  br i1 %338, label %339, label %344

339:                                              ; preds = %.preheader298
  %340 = add i64 %332, 1
  %341 = icmp ugt ptr %334, %91
  %342 = icmp ugt ptr %336, %36
  %343 = and i1 %341, %342
  br i1 %343, label %.preheader298, label %344, !llvm.loop !97

344:                                              ; preds = %339, %.preheader298
  %345 = phi i64 [ %340, %339 ], [ %332, %.preheader298 ]
  %346 = phi ptr [ %334, %339 ], [ %331, %.preheader298 ]
  %347 = ptrtoint ptr %346 to i64
  br label %348

348:                                              ; preds = %344, %322
  %349 = phi i64 [ %347, %344 ], [ %117, %322 ]
  %350 = phi i64 [ %345, %344 ], [ %329, %322 ]
  %351 = phi ptr [ %346, %344 ], [ %110, %322 ]
  %352 = ptrtoint ptr %91 to i64
  %353 = sub i64 %349, %352
  %354 = add i32 %325, 3
  %355 = icmp ugt ptr %351, %76
  %356 = load ptr, ptr %77, align 8, !tbaa !39
  br i1 %355, label %379, label %357

357:                                              ; preds = %348
  %358 = load <2 x i64>, ptr %91, align 1, !tbaa !34
  store <2 x i64> %358, ptr %356, align 1, !tbaa !34
  %359 = icmp ugt i64 %353, 16
  br i1 %359, label %360, label %490

360:                                              ; preds = %357
  %361 = load ptr, ptr %77, align 8, !tbaa !39
  %362 = getelementptr inbounds nuw i8, ptr %361, i64 16
  %363 = getelementptr inbounds nuw i8, ptr %91, i64 16
  %364 = getelementptr i8, ptr %361, i64 %353
  %365 = load <2 x i64>, ptr %363, align 1, !tbaa !34
  store <2 x i64> %365, ptr %362, align 1, !tbaa !34
  %366 = icmp ult i64 %353, 33
  br i1 %366, label %490, label %367

367:                                              ; preds = %360
  %368 = getelementptr inbounds nuw i8, ptr %361, i64 32
  br label %369

369:                                              ; preds = %369, %367
  %370 = phi ptr [ %368, %367 ], [ %377, %369 ]
  %371 = phi ptr [ %363, %367 ], [ %375, %369 ]
  %372 = getelementptr inbounds nuw i8, ptr %371, i64 16
  %373 = load <2 x i64>, ptr %372, align 1, !tbaa !34
  store <2 x i64> %373, ptr %370, align 1, !tbaa !34
  %374 = getelementptr inbounds nuw i8, ptr %370, i64 16
  %375 = getelementptr inbounds nuw i8, ptr %371, i64 32
  %376 = load <2 x i64>, ptr %375, align 1, !tbaa !34
  store <2 x i64> %376, ptr %374, align 1, !tbaa !34
  %377 = getelementptr inbounds nuw i8, ptr %370, i64 32
  %378 = icmp ult ptr %377, %364
  br i1 %378, label %369, label %.loopexit293, !llvm.loop !42

379:                                              ; preds = %348
  %380 = icmp ugt ptr %91, %76
  br i1 %380, label %.loopexit296, label %381

381:                                              ; preds = %379
  %382 = sub i64 %78, %352
  %383 = getelementptr inbounds i8, ptr %356, i64 %382
  %384 = load <2 x i64>, ptr %91, align 1, !tbaa !34
  store <2 x i64> %384, ptr %356, align 1, !tbaa !34
  %385 = icmp ult i64 %382, 17
  br i1 %385, label %.loopexit296, label %386

386:                                              ; preds = %381
  %387 = getelementptr inbounds nuw i8, ptr %356, i64 16
  br label %388

388:                                              ; preds = %388, %386
  %389 = phi ptr [ %387, %386 ], [ %396, %388 ]
  %390 = phi ptr [ %91, %386 ], [ %394, %388 ]
  %391 = getelementptr inbounds nuw i8, ptr %390, i64 16
  %392 = load <2 x i64>, ptr %391, align 1, !tbaa !34
  store <2 x i64> %392, ptr %389, align 1, !tbaa !34
  %393 = getelementptr inbounds nuw i8, ptr %389, i64 16
  %394 = getelementptr inbounds nuw i8, ptr %390, i64 32
  %395 = load <2 x i64>, ptr %394, align 1, !tbaa !34
  store <2 x i64> %395, ptr %393, align 1, !tbaa !34
  %396 = getelementptr inbounds nuw i8, ptr %389, i64 32
  %397 = icmp ult ptr %396, %383
  br i1 %397, label %388, label %.loopexit296, !llvm.loop !42

.loopexit296:                                     ; preds = %388, %381, %379
  %398 = phi ptr [ %76, %381 ], [ %91, %379 ], [ %76, %388 ]
  %399 = phi ptr [ %383, %381 ], [ %356, %379 ], [ %383, %388 ]
  %400 = icmp ult ptr %398, %351
  br i1 %400, label %401, label %.loopexit293

401:                                              ; preds = %.loopexit296
  %402 = ptrtoint ptr %398 to i64
  %403 = ptrtoint ptr %399 to i64
  %404 = sub i64 %349, %402
  %405 = icmp ult i64 %404, 4
  %406 = sub i64 %403, %402
  %407 = icmp ult i64 %406, 32
  %408 = select i1 %405, i1 true, i1 %407
  br i1 %408, label %444, label %409

409:                                              ; preds = %401
  %410 = icmp ult i64 %404, 32
  br i1 %410, label %430, label %411

411:                                              ; preds = %409
  %412 = and i64 %404, -32
  br label %413

413:                                              ; preds = %413, %411
  %414 = phi i64 [ 0, %411 ], [ %421, %413 ]
  %415 = getelementptr i8, ptr %399, i64 %414
  %416 = getelementptr i8, ptr %398, i64 %414
  %417 = getelementptr i8, ptr %416, i64 16
  %418 = load <16 x i8>, ptr %416, align 1, !tbaa !34
  %419 = load <16 x i8>, ptr %417, align 1, !tbaa !34
  %420 = getelementptr i8, ptr %415, i64 16
  store <16 x i8> %418, ptr %415, align 1, !tbaa !34
  store <16 x i8> %419, ptr %420, align 1, !tbaa !34
  %421 = add nuw i64 %414, 32
  %422 = icmp eq i64 %421, %412
  br i1 %422, label %423, label %413, !llvm.loop !98

423:                                              ; preds = %413
  %424 = icmp eq i64 %404, %412
  br i1 %424, label %.loopexit293, label %425

425:                                              ; preds = %423
  %426 = getelementptr i8, ptr %399, i64 %412
  %427 = getelementptr i8, ptr %398, i64 %412
  %428 = and i64 %404, 28
  %429 = icmp eq i64 %428, 0
  br i1 %429, label %444, label %430

430:                                              ; preds = %425, %409
  %431 = phi i64 [ %412, %425 ], [ 0, %409 ]
  %432 = and i64 %404, -4
  br label %433

433:                                              ; preds = %433, %430
  %434 = phi i64 [ %431, %430 ], [ %438, %433 ]
  %435 = getelementptr i8, ptr %399, i64 %434
  %436 = getelementptr i8, ptr %398, i64 %434
  %437 = load <4 x i8>, ptr %436, align 1, !tbaa !34
  store <4 x i8> %437, ptr %435, align 1, !tbaa !34
  %438 = add nuw i64 %434, 4
  %439 = icmp eq i64 %438, %432
  br i1 %439, label %440, label %433, !llvm.loop !99

440:                                              ; preds = %433
  %441 = getelementptr i8, ptr %399, i64 %432
  %442 = getelementptr i8, ptr %398, i64 %432
  %443 = icmp eq i64 %404, %432
  br i1 %443, label %.loopexit293, label %444

444:                                              ; preds = %440, %425, %401
  %445 = phi ptr [ %399, %401 ], [ %426, %425 ], [ %441, %440 ]
  %446 = phi ptr [ %398, %401 ], [ %427, %425 ], [ %442, %440 ]
  %447 = ptrtoint ptr %446 to i64
  %448 = sub i64 %349, %447
  %449 = and i64 %448, 7
  %450 = icmp eq i64 %449, 0
  br i1 %450, label %.loopexit295, label %.preheader294

.preheader294:                                    ; preds = %444, %.preheader294
  %451 = phi ptr [ %456, %.preheader294 ], [ %445, %444 ]
  %452 = phi ptr [ %454, %.preheader294 ], [ %446, %444 ]
  %453 = phi i64 [ %457, %.preheader294 ], [ 0, %444 ]
  %454 = getelementptr inbounds nuw i8, ptr %452, i64 1
  %455 = load i8, ptr %452, align 1, !tbaa !34
  %456 = getelementptr inbounds nuw i8, ptr %451, i64 1
  store i8 %455, ptr %451, align 1, !tbaa !34
  %457 = add nuw nsw i64 %453, 1
  %458 = icmp eq i64 %457, %449
  br i1 %458, label %.loopexit295, label %.preheader294, !llvm.loop !100

.loopexit295:                                     ; preds = %.preheader294, %444
  %459 = phi ptr [ %445, %444 ], [ %456, %.preheader294 ]
  %460 = phi ptr [ %446, %444 ], [ %454, %.preheader294 ]
  %461 = sub i64 %447, %349
  %462 = icmp ugt i64 %461, -8
  br i1 %462, label %.loopexit293, label %.preheader292

.preheader292:                                    ; preds = %.loopexit295, %.preheader292
  %463 = phi ptr [ %488, %.preheader292 ], [ %459, %.loopexit295 ]
  %464 = phi ptr [ %486, %.preheader292 ], [ %460, %.loopexit295 ]
  %465 = getelementptr inbounds nuw i8, ptr %464, i64 1
  %466 = load i8, ptr %464, align 1, !tbaa !34
  %467 = getelementptr inbounds nuw i8, ptr %463, i64 1
  store i8 %466, ptr %463, align 1, !tbaa !34
  %468 = getelementptr inbounds nuw i8, ptr %464, i64 2
  %469 = load i8, ptr %465, align 1, !tbaa !34
  %470 = getelementptr inbounds nuw i8, ptr %463, i64 2
  store i8 %469, ptr %467, align 1, !tbaa !34
  %471 = getelementptr inbounds nuw i8, ptr %464, i64 3
  %472 = load i8, ptr %468, align 1, !tbaa !34
  %473 = getelementptr inbounds nuw i8, ptr %463, i64 3
  store i8 %472, ptr %470, align 1, !tbaa !34
  %474 = getelementptr inbounds nuw i8, ptr %464, i64 4
  %475 = load i8, ptr %471, align 1, !tbaa !34
  %476 = getelementptr inbounds nuw i8, ptr %463, i64 4
  store i8 %475, ptr %473, align 1, !tbaa !34
  %477 = getelementptr inbounds nuw i8, ptr %464, i64 5
  %478 = load i8, ptr %474, align 1, !tbaa !34
  %479 = getelementptr inbounds nuw i8, ptr %463, i64 5
  store i8 %478, ptr %476, align 1, !tbaa !34
  %480 = getelementptr inbounds nuw i8, ptr %464, i64 6
  %481 = load i8, ptr %477, align 1, !tbaa !34
  %482 = getelementptr inbounds nuw i8, ptr %463, i64 6
  store i8 %481, ptr %479, align 1, !tbaa !34
  %483 = getelementptr inbounds nuw i8, ptr %464, i64 7
  %484 = load i8, ptr %480, align 1, !tbaa !34
  %485 = getelementptr inbounds nuw i8, ptr %463, i64 7
  store i8 %484, ptr %482, align 1, !tbaa !34
  %486 = getelementptr inbounds nuw i8, ptr %464, i64 8
  %487 = load i8, ptr %483, align 1, !tbaa !34
  %488 = getelementptr inbounds nuw i8, ptr %463, i64 8
  store i8 %487, ptr %485, align 1, !tbaa !34
  %489 = icmp eq ptr %486, %351
  br i1 %489, label %.loopexit293, label %.preheader292, !llvm.loop !101

490:                                              ; preds = %360, %357
  %491 = load ptr, ptr %77, align 8, !tbaa !39
  %492 = getelementptr inbounds nuw i8, ptr %491, i64 %353
  store ptr %492, ptr %77, align 8, !tbaa !39
  %493 = load ptr, ptr %80, align 8, !tbaa !50
  br label %505

.loopexit293:                                     ; preds = %369, %.preheader292, %.loopexit295, %440, %423, %.loopexit296
  %494 = load ptr, ptr %77, align 8, !tbaa !39
  %495 = getelementptr inbounds nuw i8, ptr %494, i64 %353
  store ptr %495, ptr %77, align 8, !tbaa !39
  %496 = icmp ugt i64 %353, 65535
  %497 = load ptr, ptr %80, align 8, !tbaa !50
  br i1 %496, label %498, label %505, !prof !51

498:                                              ; preds = %.loopexit293
  store i32 1, ptr %79, align 8, !tbaa !52
  %499 = load ptr, ptr %1, align 8, !tbaa !53
  %500 = ptrtoint ptr %497 to i64
  %501 = ptrtoint ptr %499 to i64
  %502 = sub i64 %500, %501
  %503 = lshr exact i64 %502, 3
  %504 = trunc i64 %503 to i32
  store i32 %504, ptr %81, align 4, !tbaa !54
  br label %505

505:                                              ; preds = %498, %.loopexit293, %490
  %506 = phi ptr [ %493, %490 ], [ %497, %498 ], [ %497, %.loopexit293 ]
  %507 = trunc i64 %353 to i16
  %508 = getelementptr inbounds nuw i8, ptr %506, i64 4
  store i16 %507, ptr %508, align 4, !tbaa !55
  store i32 %354, ptr %506, align 4, !tbaa !57
  %509 = add i64 %350, -3
  %510 = icmp ugt i64 %509, 65535
  br i1 %510, label %786, label %799, !prof !58

511:                                              ; preds = %314, %311, %310
  %512 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %114, i32 %19, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %121) #6, !srcloc !32
  %513 = load i32, ptr %110, align 1, !tbaa !23
  %514 = load i32, ptr %512, align 1, !tbaa !23
  %515 = icmp eq i32 %513, %514
  br i1 %515, label %516, label %772

516:                                              ; preds = %511
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !33
  %517 = icmp ult i32 %114, %19
  br i1 %517, label %772, label %518

518:                                              ; preds = %516
  %519 = ptrtoint ptr %121 to i64
  %520 = sub i64 %117, %519
  %521 = trunc i64 %520 to i32
  %522 = getelementptr inbounds nuw i8, ptr %110, i64 4
  %523 = getelementptr inbounds nuw i8, ptr %121, i64 4
  %524 = icmp ult ptr %522, %82
  br i1 %524, label %525, label %.loopexit291

525:                                              ; preds = %518
  %526 = load i64, ptr %523, align 1, !tbaa !22
  %527 = load i64, ptr %522, align 1, !tbaa !22
  %528 = icmp eq i64 %526, %527
  br i1 %528, label %.preheader290, label %529

529:                                              ; preds = %525
  %530 = xor i64 %527, %526
  %531 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %530, i1 true)
  %532 = lshr i64 %531, 3
  br label %586

.preheader290:                                    ; preds = %525, %538
  %533 = phi ptr [ %536, %538 ], [ %523, %525 ]
  %534 = phi ptr [ %535, %538 ], [ %522, %525 ]
  %535 = getelementptr inbounds nuw i8, ptr %534, i64 8
  %536 = getelementptr inbounds nuw i8, ptr %533, i64 8
  %537 = icmp ult ptr %535, %82
  br i1 %537, label %538, label %.loopexit291

538:                                              ; preds = %.preheader290
  %539 = load i64, ptr %536, align 1, !tbaa !22
  %540 = load i64, ptr %535, align 1, !tbaa !22
  %541 = icmp eq i64 %539, %540
  br i1 %541, label %.preheader290, label %542

542:                                              ; preds = %538
  %543 = xor i64 %540, %539
  %544 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %543, i1 true)
  %545 = lshr i64 %544, 3
  %546 = getelementptr inbounds nuw i8, ptr %535, i64 %545
  %547 = ptrtoint ptr %546 to i64
  %548 = ptrtoint ptr %522 to i64
  %549 = sub i64 %547, %548
  br label %586

.loopexit291:                                     ; preds = %.preheader290, %518
  %550 = phi ptr [ %523, %518 ], [ %536, %.preheader290 ]
  %551 = phi ptr [ %522, %518 ], [ %535, %.preheader290 ]
  %552 = icmp ult ptr %551, %83
  br i1 %552, label %553, label %560

553:                                              ; preds = %.loopexit291
  %554 = load i32, ptr %550, align 1, !tbaa !23
  %555 = load i32, ptr %551, align 1, !tbaa !23
  %556 = icmp eq i32 %554, %555
  br i1 %556, label %557, label %560

557:                                              ; preds = %553
  %558 = getelementptr inbounds nuw i8, ptr %551, i64 4
  %559 = getelementptr inbounds nuw i8, ptr %550, i64 4
  br label %560

560:                                              ; preds = %557, %553, %.loopexit291
  %561 = phi ptr [ %559, %557 ], [ %550, %553 ], [ %550, %.loopexit291 ]
  %562 = phi ptr [ %558, %557 ], [ %551, %553 ], [ %551, %.loopexit291 ]
  %563 = icmp ult ptr %562, %84
  br i1 %563, label %564, label %571

564:                                              ; preds = %560
  %565 = load i16, ptr %561, align 1, !tbaa !37
  %566 = load i16, ptr %562, align 1, !tbaa !37
  %567 = icmp eq i16 %565, %566
  br i1 %567, label %568, label %571

568:                                              ; preds = %564
  %569 = getelementptr inbounds nuw i8, ptr %562, i64 2
  %570 = getelementptr inbounds nuw i8, ptr %561, i64 2
  br label %571

571:                                              ; preds = %568, %564, %560
  %572 = phi ptr [ %570, %568 ], [ %561, %564 ], [ %561, %560 ]
  %573 = phi ptr [ %569, %568 ], [ %562, %564 ], [ %562, %560 ]
  %574 = icmp ult ptr %573, %22
  br i1 %574, label %575, label %581

575:                                              ; preds = %571
  %576 = load i8, ptr %572, align 1, !tbaa !34
  %577 = load i8, ptr %573, align 1, !tbaa !34
  %578 = icmp eq i8 %576, %577
  %579 = zext i1 %578 to i64
  %580 = getelementptr inbounds nuw i8, ptr %573, i64 %579
  br label %581

581:                                              ; preds = %575, %571
  %582 = phi ptr [ %573, %571 ], [ %580, %575 ]
  %583 = ptrtoint ptr %582 to i64
  %584 = ptrtoint ptr %522 to i64
  %585 = sub i64 %583, %584
  br label %586

586:                                              ; preds = %581, %542, %529
  %587 = phi i64 [ %585, %581 ], [ %532, %529 ], [ %549, %542 ]
  %588 = add i64 %587, 4
  %589 = icmp ugt ptr %110, %91
  %590 = icmp ugt i32 %114, %19
  %591 = and i1 %589, %590
  br i1 %591, label %.preheader289, label %609

.preheader289:                                    ; preds = %586, %600
  %592 = phi ptr [ %595, %600 ], [ %110, %586 ]
  %593 = phi i64 [ %601, %600 ], [ %588, %586 ]
  %594 = phi ptr [ %597, %600 ], [ %121, %586 ]
  %595 = getelementptr inbounds i8, ptr %592, i64 -1
  %596 = load i8, ptr %595, align 1, !tbaa !34
  %597 = getelementptr inbounds i8, ptr %594, i64 -1
  %598 = load i8, ptr %597, align 1, !tbaa !34
  %599 = icmp eq i8 %596, %598
  br i1 %599, label %600, label %605

600:                                              ; preds = %.preheader289
  %601 = add i64 %593, 1
  %602 = icmp ugt ptr %595, %91
  %603 = icmp ugt ptr %597, %21
  %604 = and i1 %602, %603
  br i1 %604, label %.preheader289, label %605, !llvm.loop !102

605:                                              ; preds = %600, %.preheader289
  %606 = phi i64 [ %601, %600 ], [ %593, %.preheader289 ]
  %607 = phi ptr [ %595, %600 ], [ %592, %.preheader289 ]
  %608 = ptrtoint ptr %607 to i64
  br label %609

609:                                              ; preds = %605, %586
  %610 = phi i64 [ %608, %605 ], [ %117, %586 ]
  %611 = phi i64 [ %606, %605 ], [ %588, %586 ]
  %612 = phi ptr [ %607, %605 ], [ %110, %586 ]
  %613 = ptrtoint ptr %91 to i64
  %614 = sub i64 %610, %613
  %615 = add i32 %521, 3
  %616 = icmp ugt ptr %612, %76
  %617 = load ptr, ptr %77, align 8, !tbaa !39
  br i1 %616, label %640, label %618

618:                                              ; preds = %609
  %619 = load <2 x i64>, ptr %91, align 1, !tbaa !34
  store <2 x i64> %619, ptr %617, align 1, !tbaa !34
  %620 = icmp ugt i64 %614, 16
  br i1 %620, label %621, label %751

621:                                              ; preds = %618
  %622 = load ptr, ptr %77, align 8, !tbaa !39
  %623 = getelementptr inbounds nuw i8, ptr %622, i64 16
  %624 = getelementptr inbounds nuw i8, ptr %91, i64 16
  %625 = getelementptr i8, ptr %622, i64 %614
  %626 = load <2 x i64>, ptr %624, align 1, !tbaa !34
  store <2 x i64> %626, ptr %623, align 1, !tbaa !34
  %627 = icmp ult i64 %614, 33
  br i1 %627, label %751, label %628

628:                                              ; preds = %621
  %629 = getelementptr inbounds nuw i8, ptr %622, i64 32
  br label %630

630:                                              ; preds = %630, %628
  %631 = phi ptr [ %629, %628 ], [ %638, %630 ]
  %632 = phi ptr [ %624, %628 ], [ %636, %630 ]
  %633 = getelementptr inbounds nuw i8, ptr %632, i64 16
  %634 = load <2 x i64>, ptr %633, align 1, !tbaa !34
  store <2 x i64> %634, ptr %631, align 1, !tbaa !34
  %635 = getelementptr inbounds nuw i8, ptr %631, i64 16
  %636 = getelementptr inbounds nuw i8, ptr %632, i64 32
  %637 = load <2 x i64>, ptr %636, align 1, !tbaa !34
  store <2 x i64> %637, ptr %635, align 1, !tbaa !34
  %638 = getelementptr inbounds nuw i8, ptr %631, i64 32
  %639 = icmp ult ptr %638, %625
  br i1 %639, label %630, label %.loopexit284, !llvm.loop !42

640:                                              ; preds = %609
  %641 = icmp ugt ptr %91, %76
  br i1 %641, label %.loopexit287, label %642

642:                                              ; preds = %640
  %643 = sub i64 %78, %613
  %644 = getelementptr inbounds i8, ptr %617, i64 %643
  %645 = load <2 x i64>, ptr %91, align 1, !tbaa !34
  store <2 x i64> %645, ptr %617, align 1, !tbaa !34
  %646 = icmp ult i64 %643, 17
  br i1 %646, label %.loopexit287, label %647

647:                                              ; preds = %642
  %648 = getelementptr inbounds nuw i8, ptr %617, i64 16
  br label %649

649:                                              ; preds = %649, %647
  %650 = phi ptr [ %648, %647 ], [ %657, %649 ]
  %651 = phi ptr [ %91, %647 ], [ %655, %649 ]
  %652 = getelementptr inbounds nuw i8, ptr %651, i64 16
  %653 = load <2 x i64>, ptr %652, align 1, !tbaa !34
  store <2 x i64> %653, ptr %650, align 1, !tbaa !34
  %654 = getelementptr inbounds nuw i8, ptr %650, i64 16
  %655 = getelementptr inbounds nuw i8, ptr %651, i64 32
  %656 = load <2 x i64>, ptr %655, align 1, !tbaa !34
  store <2 x i64> %656, ptr %654, align 1, !tbaa !34
  %657 = getelementptr inbounds nuw i8, ptr %650, i64 32
  %658 = icmp ult ptr %657, %644
  br i1 %658, label %649, label %.loopexit287, !llvm.loop !42

.loopexit287:                                     ; preds = %649, %642, %640
  %659 = phi ptr [ %76, %642 ], [ %91, %640 ], [ %76, %649 ]
  %660 = phi ptr [ %644, %642 ], [ %617, %640 ], [ %644, %649 ]
  %661 = icmp ult ptr %659, %612
  br i1 %661, label %662, label %.loopexit284

662:                                              ; preds = %.loopexit287
  %663 = ptrtoint ptr %659 to i64
  %664 = ptrtoint ptr %660 to i64
  %665 = sub i64 %610, %663
  %666 = icmp ult i64 %665, 4
  %667 = sub i64 %664, %663
  %668 = icmp ult i64 %667, 32
  %669 = select i1 %666, i1 true, i1 %668
  br i1 %669, label %705, label %670

670:                                              ; preds = %662
  %671 = icmp ult i64 %665, 32
  br i1 %671, label %691, label %672

672:                                              ; preds = %670
  %673 = and i64 %665, -32
  br label %674

674:                                              ; preds = %674, %672
  %675 = phi i64 [ 0, %672 ], [ %682, %674 ]
  %676 = getelementptr i8, ptr %660, i64 %675
  %677 = getelementptr i8, ptr %659, i64 %675
  %678 = getelementptr i8, ptr %677, i64 16
  %679 = load <16 x i8>, ptr %677, align 1, !tbaa !34
  %680 = load <16 x i8>, ptr %678, align 1, !tbaa !34
  %681 = getelementptr i8, ptr %676, i64 16
  store <16 x i8> %679, ptr %676, align 1, !tbaa !34
  store <16 x i8> %680, ptr %681, align 1, !tbaa !34
  %682 = add nuw i64 %675, 32
  %683 = icmp eq i64 %682, %673
  br i1 %683, label %684, label %674, !llvm.loop !103

684:                                              ; preds = %674
  %685 = icmp eq i64 %665, %673
  br i1 %685, label %.loopexit284, label %686

686:                                              ; preds = %684
  %687 = getelementptr i8, ptr %660, i64 %673
  %688 = getelementptr i8, ptr %659, i64 %673
  %689 = and i64 %665, 28
  %690 = icmp eq i64 %689, 0
  br i1 %690, label %705, label %691

691:                                              ; preds = %686, %670
  %692 = phi i64 [ %673, %686 ], [ 0, %670 ]
  %693 = and i64 %665, -4
  br label %694

694:                                              ; preds = %694, %691
  %695 = phi i64 [ %692, %691 ], [ %699, %694 ]
  %696 = getelementptr i8, ptr %660, i64 %695
  %697 = getelementptr i8, ptr %659, i64 %695
  %698 = load <4 x i8>, ptr %697, align 1, !tbaa !34
  store <4 x i8> %698, ptr %696, align 1, !tbaa !34
  %699 = add nuw i64 %695, 4
  %700 = icmp eq i64 %699, %693
  br i1 %700, label %701, label %694, !llvm.loop !104

701:                                              ; preds = %694
  %702 = getelementptr i8, ptr %660, i64 %693
  %703 = getelementptr i8, ptr %659, i64 %693
  %704 = icmp eq i64 %665, %693
  br i1 %704, label %.loopexit284, label %705

705:                                              ; preds = %701, %686, %662
  %706 = phi ptr [ %660, %662 ], [ %687, %686 ], [ %702, %701 ]
  %707 = phi ptr [ %659, %662 ], [ %688, %686 ], [ %703, %701 ]
  %708 = ptrtoint ptr %707 to i64
  %709 = sub i64 %610, %708
  %710 = and i64 %709, 7
  %711 = icmp eq i64 %710, 0
  br i1 %711, label %.loopexit286, label %.preheader285

.preheader285:                                    ; preds = %705, %.preheader285
  %712 = phi ptr [ %717, %.preheader285 ], [ %706, %705 ]
  %713 = phi ptr [ %715, %.preheader285 ], [ %707, %705 ]
  %714 = phi i64 [ %718, %.preheader285 ], [ 0, %705 ]
  %715 = getelementptr inbounds nuw i8, ptr %713, i64 1
  %716 = load i8, ptr %713, align 1, !tbaa !34
  %717 = getelementptr inbounds nuw i8, ptr %712, i64 1
  store i8 %716, ptr %712, align 1, !tbaa !34
  %718 = add nuw nsw i64 %714, 1
  %719 = icmp eq i64 %718, %710
  br i1 %719, label %.loopexit286, label %.preheader285, !llvm.loop !105

.loopexit286:                                     ; preds = %.preheader285, %705
  %720 = phi ptr [ %706, %705 ], [ %717, %.preheader285 ]
  %721 = phi ptr [ %707, %705 ], [ %715, %.preheader285 ]
  %722 = sub i64 %708, %610
  %723 = icmp ugt i64 %722, -8
  br i1 %723, label %.loopexit284, label %.preheader

.preheader:                                       ; preds = %.loopexit286, %.preheader
  %724 = phi ptr [ %749, %.preheader ], [ %720, %.loopexit286 ]
  %725 = phi ptr [ %747, %.preheader ], [ %721, %.loopexit286 ]
  %726 = getelementptr inbounds nuw i8, ptr %725, i64 1
  %727 = load i8, ptr %725, align 1, !tbaa !34
  %728 = getelementptr inbounds nuw i8, ptr %724, i64 1
  store i8 %727, ptr %724, align 1, !tbaa !34
  %729 = getelementptr inbounds nuw i8, ptr %725, i64 2
  %730 = load i8, ptr %726, align 1, !tbaa !34
  %731 = getelementptr inbounds nuw i8, ptr %724, i64 2
  store i8 %730, ptr %728, align 1, !tbaa !34
  %732 = getelementptr inbounds nuw i8, ptr %725, i64 3
  %733 = load i8, ptr %729, align 1, !tbaa !34
  %734 = getelementptr inbounds nuw i8, ptr %724, i64 3
  store i8 %733, ptr %731, align 1, !tbaa !34
  %735 = getelementptr inbounds nuw i8, ptr %725, i64 4
  %736 = load i8, ptr %732, align 1, !tbaa !34
  %737 = getelementptr inbounds nuw i8, ptr %724, i64 4
  store i8 %736, ptr %734, align 1, !tbaa !34
  %738 = getelementptr inbounds nuw i8, ptr %725, i64 5
  %739 = load i8, ptr %735, align 1, !tbaa !34
  %740 = getelementptr inbounds nuw i8, ptr %724, i64 5
  store i8 %739, ptr %737, align 1, !tbaa !34
  %741 = getelementptr inbounds nuw i8, ptr %725, i64 6
  %742 = load i8, ptr %738, align 1, !tbaa !34
  %743 = getelementptr inbounds nuw i8, ptr %724, i64 6
  store i8 %742, ptr %740, align 1, !tbaa !34
  %744 = getelementptr inbounds nuw i8, ptr %725, i64 7
  %745 = load i8, ptr %741, align 1, !tbaa !34
  %746 = getelementptr inbounds nuw i8, ptr %724, i64 7
  store i8 %745, ptr %743, align 1, !tbaa !34
  %747 = getelementptr inbounds nuw i8, ptr %725, i64 8
  %748 = load i8, ptr %744, align 1, !tbaa !34
  %749 = getelementptr inbounds nuw i8, ptr %724, i64 8
  store i8 %748, ptr %746, align 1, !tbaa !34
  %750 = icmp eq ptr %747, %612
  br i1 %750, label %.loopexit284, label %.preheader, !llvm.loop !106

751:                                              ; preds = %621, %618
  %752 = load ptr, ptr %77, align 8, !tbaa !39
  %753 = getelementptr inbounds nuw i8, ptr %752, i64 %614
  store ptr %753, ptr %77, align 8, !tbaa !39
  %754 = load ptr, ptr %80, align 8, !tbaa !50
  br label %766

.loopexit284:                                     ; preds = %630, %.preheader, %.loopexit286, %701, %684, %.loopexit287
  %755 = load ptr, ptr %77, align 8, !tbaa !39
  %756 = getelementptr inbounds nuw i8, ptr %755, i64 %614
  store ptr %756, ptr %77, align 8, !tbaa !39
  %757 = icmp ugt i64 %614, 65535
  %758 = load ptr, ptr %80, align 8, !tbaa !50
  br i1 %757, label %759, label %766, !prof !51

759:                                              ; preds = %.loopexit284
  store i32 1, ptr %79, align 8, !tbaa !52
  %760 = load ptr, ptr %1, align 8, !tbaa !53
  %761 = ptrtoint ptr %758 to i64
  %762 = ptrtoint ptr %760 to i64
  %763 = sub i64 %761, %762
  %764 = lshr exact i64 %763, 3
  %765 = trunc i64 %764 to i32
  store i32 %765, ptr %81, align 4, !tbaa !54
  br label %766

766:                                              ; preds = %759, %.loopexit284, %751
  %767 = phi ptr [ %754, %751 ], [ %758, %759 ], [ %758, %.loopexit284 ]
  %768 = trunc i64 %614 to i16
  %769 = getelementptr inbounds nuw i8, ptr %767, i64 4
  store i16 %768, ptr %769, align 4, !tbaa !55
  store i32 %615, ptr %767, align 4, !tbaa !57
  %770 = add i64 %611, -3
  %771 = icmp ugt i64 %770, 65535
  br i1 %771, label %786, label %799, !prof !58

772:                                              ; preds = %516, %511
  %773 = icmp uge ptr %109, %104
  %774 = zext i1 %773 to i64
  %775 = add i64 %105, %774
  %776 = getelementptr inbounds nuw i8, ptr %109, i64 %775
  %777 = icmp ugt ptr %776, %23
  br i1 %777, label %.loopexit305, label %778

778:                                              ; preds = %772
  %779 = select i1 %773, i64 256, i64 0
  %780 = getelementptr inbounds nuw i8, ptr %104, i64 %779
  %781 = lshr i32 %124, 8
  %782 = zext nneg i32 %781 to i64
  %783 = getelementptr inbounds nuw [4 x i8], ptr %30, i64 %782
  %784 = load i32, ptr %783, align 4, !tbaa !23
  %785 = xor i32 %784, %124
  br label %103

786:                                              ; preds = %766, %505, %304
  %787 = phi ptr [ %305, %304 ], [ %506, %505 ], [ %767, %766 ]
  %788 = phi i64 [ %308, %304 ], [ %509, %505 ], [ %770, %766 ]
  %789 = phi i64 [ %145, %304 ], [ %350, %505 ], [ %611, %766 ]
  %790 = phi i32 [ %93, %304 ], [ %92, %505 ], [ %92, %766 ]
  %791 = phi i32 [ %92, %304 ], [ %325, %505 ], [ %521, %766 ]
  %792 = phi ptr [ %140, %304 ], [ %351, %505 ], [ %612, %766 ]
  store i32 2, ptr %79, align 8, !tbaa !52
  %793 = load ptr, ptr %1, align 8, !tbaa !53
  %794 = ptrtoint ptr %787 to i64
  %795 = ptrtoint ptr %793 to i64
  %796 = sub i64 %794, %795
  %797 = lshr exact i64 %796, 3
  %798 = trunc i64 %797 to i32
  store i32 %798, ptr %81, align 4, !tbaa !54
  br label %799

799:                                              ; preds = %786, %766, %505, %304
  %800 = phi i64 [ %308, %304 ], [ %509, %505 ], [ %770, %766 ], [ %788, %786 ]
  %801 = phi ptr [ %305, %304 ], [ %506, %505 ], [ %767, %766 ], [ %787, %786 ]
  %802 = phi i64 [ %145, %304 ], [ %350, %505 ], [ %611, %766 ], [ %789, %786 ]
  %803 = phi i32 [ %93, %304 ], [ %92, %505 ], [ %92, %766 ], [ %790, %786 ]
  %804 = phi i32 [ %92, %304 ], [ %325, %505 ], [ %521, %766 ], [ %791, %786 ]
  %805 = phi ptr [ %140, %304 ], [ %351, %505 ], [ %612, %766 ], [ %792, %786 ]
  %806 = trunc i64 %800 to i16
  %807 = getelementptr inbounds nuw i8, ptr %801, i64 6
  store i16 %806, ptr %807, align 2, !tbaa !59
  %808 = getelementptr inbounds nuw i8, ptr %801, i64 8
  store ptr %808, ptr %80, align 8, !tbaa !50
  %809 = getelementptr inbounds nuw i8, ptr %805, i64 %802
  %810 = icmp ugt ptr %809, %23
  br i1 %810, label %.loopexit, label %811

811:                                              ; preds = %799
  %812 = add i32 %119, 2
  %813 = and i64 %118, 4294967295
  %814 = getelementptr inbounds nuw i8, ptr %65, i64 %813
  %815 = load i32, ptr %814, align 1, !tbaa !23
  %816 = mul i32 %815, -1640531535
  %817 = lshr i32 %816, %74
  %818 = zext i32 %817 to i64
  %819 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %818
  store i32 %812, ptr %819, align 4, !tbaa !23
  %820 = getelementptr inbounds i8, ptr %809, i64 -2
  %821 = ptrtoint ptr %820 to i64
  %822 = sub i64 %821, %52
  %823 = trunc i64 %822 to i32
  %824 = load i32, ptr %820, align 1, !tbaa !23
  %825 = mul i32 %824, -1640531535
  %826 = lshr i32 %825, %74
  %827 = zext i32 %826 to i64
  %828 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %827
  store i32 %823, ptr %828, align 4, !tbaa !23
  br label %829

829:                                              ; preds = %870, %811
  %830 = phi ptr [ %808, %811 ], [ %873, %870 ]
  %831 = phi ptr [ %809, %811 ], [ %880, %870 ]
  %832 = phi i32 [ %804, %811 ], [ %833, %870 ]
  %833 = phi i32 [ %803, %811 ], [ %832, %870 ]
  %834 = ptrtoint ptr %831 to i64
  %835 = sub i64 %834, %52
  %836 = trunc i64 %835 to i32
  %837 = sub i32 %836, %833
  %838 = icmp ult i32 %837, %19
  %839 = zext i32 %837 to i64
  %840 = select i1 %838, ptr %87, ptr %16
  %841 = getelementptr inbounds nuw i8, ptr %840, i64 %839
  %842 = sub i32 %837, %19
  %843 = icmp ugt i32 %842, -4
  br i1 %843, label %.loopexit, label %844

844:                                              ; preds = %829
  %845 = load i32, ptr %841, align 1, !tbaa !23
  %846 = load i32, ptr %831, align 1, !tbaa !23
  %847 = icmp eq i32 %845, %846
  br i1 %847, label %848, label %.loopexit

848:                                              ; preds = %844
  %849 = select i1 %838, ptr %37, ptr %22
  %850 = getelementptr inbounds nuw i8, ptr %831, i64 4
  %851 = getelementptr inbounds nuw i8, ptr %841, i64 4
  %852 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %850, ptr noundef nonnull %851, ptr noundef %22, ptr noundef %849, ptr noundef %21)
  %853 = icmp ugt ptr %831, %76
  br i1 %853, label %858, label %854

854:                                              ; preds = %848
  %855 = load ptr, ptr %77, align 8, !tbaa !39
  %856 = load <2 x i64>, ptr %831, align 1, !tbaa !34
  store <2 x i64> %856, ptr %855, align 1, !tbaa !34
  %857 = load ptr, ptr %80, align 8, !tbaa !50
  br label %858

858:                                              ; preds = %854, %848
  %859 = phi ptr [ %830, %848 ], [ %857, %854 ]
  %860 = getelementptr inbounds nuw i8, ptr %859, i64 4
  store i16 0, ptr %860, align 4, !tbaa !55
  store i32 1, ptr %859, align 4, !tbaa !57
  %861 = add i64 %852, 1
  %862 = icmp ugt i64 %861, 65535
  br i1 %862, label %863, label %870, !prof !58

863:                                              ; preds = %858
  store i32 2, ptr %79, align 8, !tbaa !52
  %864 = load ptr, ptr %1, align 8, !tbaa !53
  %865 = ptrtoint ptr %859 to i64
  %866 = ptrtoint ptr %864 to i64
  %867 = sub i64 %865, %866
  %868 = lshr exact i64 %867, 3
  %869 = trunc i64 %868 to i32
  store i32 %869, ptr %81, align 4, !tbaa !54
  br label %870

870:                                              ; preds = %863, %858
  %871 = trunc i64 %861 to i16
  %872 = getelementptr inbounds nuw i8, ptr %859, i64 6
  store i16 %871, ptr %872, align 2, !tbaa !59
  %873 = getelementptr inbounds nuw i8, ptr %859, i64 8
  store ptr %873, ptr %80, align 8, !tbaa !50
  %874 = load i32, ptr %831, align 1, !tbaa !23
  %875 = mul i32 %874, -1640531535
  %876 = lshr i32 %875, %74
  %877 = zext i32 %876 to i64
  %878 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %877
  store i32 %836, ptr %878, align 4, !tbaa !23
  %879 = getelementptr i8, ptr %831, i64 %852
  %880 = getelementptr i8, ptr %879, i64 4
  %881 = icmp ugt ptr %880, %23
  br i1 %881, label %.loopexit, label %829

.loopexit:                                        ; preds = %870, %844, %829, %799
  %882 = phi i32 [ %803, %799 ], [ %833, %829 ], [ %833, %844 ], [ %832, %870 ]
  %883 = phi i32 [ %804, %799 ], [ %832, %829 ], [ %832, %844 ], [ %833, %870 ]
  %884 = phi ptr [ %809, %799 ], [ %831, %829 ], [ %831, %844 ], [ %880, %870 ]
  %885 = getelementptr inbounds nuw i8, ptr %884, i64 %17
  %886 = icmp ugt ptr %885, %23
  br i1 %886, label %.loopexit305, label %88

887:                                              ; preds = %5
  br i1 %55, label %.loopexit368, label %888

888:                                              ; preds = %887
  %889 = zext nneg i32 %51 to i64
  %890 = shl i64 4, %889
  %891 = icmp ugt i32 %51, 61
  br i1 %891, label %.loopexit368, label %.preheader367

.preheader367:                                    ; preds = %888, %.preheader367
  %892 = phi i64 [ %894, %.preheader367 ], [ 0, %888 ]
  %893 = getelementptr inbounds nuw i8, ptr %30, i64 %892
  tail call void @llvm.prefetch.p0(ptr %893, i32 0, i32 2, i32 1)
  %894 = add i64 %892, 64
  %895 = icmp ult i64 %894, %890
  br i1 %895, label %.preheader367, label %.loopexit368, !llvm.loop !91

.loopexit368:                                     ; preds = %.preheader367, %888, %887
  %896 = getelementptr inbounds nuw i8, ptr %16, i64 2
  %897 = add nsw i64 %4, -8
  %898 = icmp slt i64 %897, %17
  br i1 %898, label %.loopexit305, label %899

899:                                              ; preds = %.loopexit368
  %900 = getelementptr inbounds nuw i8, ptr %3, i64 %17
  %901 = and i64 %49, 4294967295
  %902 = icmp eq i64 %901, 0
  %903 = zext i1 %902 to i64
  %904 = getelementptr inbounds nuw i8, ptr %3, i64 %903
  %905 = sub i32 64, %11
  %906 = zext nneg i32 %905 to i64
  %907 = sub i32 56, %51
  %908 = zext nneg i32 %907 to i64
  %909 = getelementptr inbounds i8, ptr %22, i64 -32
  %910 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %911 = ptrtoint ptr %909 to i64
  %912 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %913 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %914 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %915 = getelementptr inbounds i8, ptr %22, i64 -7
  %916 = getelementptr inbounds i8, ptr %22, i64 -3
  %917 = getelementptr inbounds i8, ptr %22, i64 -1
  %918 = zext i32 %42 to i64
  %919 = sub nsw i64 0, %918
  %920 = getelementptr inbounds i8, ptr %34, i64 %919
  br label %921

921:                                              ; preds = %.loopexit339, %899
  %922 = phi ptr [ %900, %899 ], [ %1714, %.loopexit339 ]
  %923 = phi ptr [ %904, %899 ], [ %1713, %.loopexit339 ]
  %924 = phi ptr [ %3, %899 ], [ %1713, %.loopexit339 ]
  %925 = phi i32 [ %24, %899 ], [ %1712, %.loopexit339 ]
  %926 = phi i32 [ %26, %899 ], [ %1711, %.loopexit339 ]
  %927 = load i64, ptr %923, align 1, !tbaa !22
  %928 = mul i64 %927, -3523014627271114752
  %929 = lshr i64 %928, %908
  %930 = lshr i64 %929, 8
  %931 = getelementptr inbounds nuw [4 x i8], ptr %30, i64 %930
  %932 = load i32, ptr %931, align 4, !tbaa !23
  %933 = zext i32 %932 to i64
  %934 = xor i64 %929, %933
  %935 = getelementptr inbounds nuw i8, ptr %923, i64 256
  %invariant.op1981 = sub i32 1, %925
  br label %936

936:                                              ; preds = %1610, %921
  %937 = phi ptr [ %935, %921 ], [ %1612, %1610 ]
  %938 = phi i64 [ %17, %921 ], [ %1607, %1610 ]
  %939 = phi i64 [ %934, %921 ], [ %1617, %1610 ]
  %940 = phi i32 [ %932, %921 ], [ %1615, %1610 ]
  %941 = phi i64 [ %928, %921 ], [ %955, %1610 ]
  %942 = phi ptr [ %922, %921 ], [ %1608, %1610 ]
  %943 = phi ptr [ %923, %921 ], [ %942, %1610 ]
  %944 = lshr i64 %941, %906
  %945 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %944
  %946 = load i32, ptr %945, align 4, !tbaa !23
  %947 = and i64 %939, 255
  %948 = icmp eq i64 %947, 0
  %949 = ptrtoint ptr %943 to i64
  %950 = sub i64 %949, %52
  %951 = trunc i64 %950 to i32
  %952 = zext i32 %946 to i64
  %953 = getelementptr inbounds nuw i8, ptr %16, i64 %952
  %.reass603.reass.reass.reass.reass.reass = add i32 %951, %invariant.op1981
  %954 = load i64, ptr %942, align 1, !tbaa !22
  %955 = mul i64 %954, -3523014627271114752
  %956 = lshr i64 %955, %908
  store i32 %951, ptr %945, align 4, !tbaa !23
  %957 = sub i32 %.reass603.reass.reass.reass.reass.reass, %19
  %958 = icmp ugt i32 %957, -4
  br i1 %958, label %1142, label %959

959:                                              ; preds = %936
  %960 = icmp ult i32 %.reass603.reass.reass.reass.reass.reass, %19
  %961 = sub i32 %.reass603.reass.reass.reass.reass.reass, %42
  %962 = zext i32 %961 to i64
  %963 = getelementptr inbounds nuw i8, ptr %34, i64 %962
  %964 = zext i32 %.reass603.reass.reass.reass.reass.reass to i64
  %965 = getelementptr inbounds nuw i8, ptr %16, i64 %964
  %966 = select i1 %960, ptr %963, ptr %965
  %967 = load i32, ptr %966, align 1, !tbaa !23
  %968 = getelementptr inbounds nuw i8, ptr %943, i64 1
  %969 = load i32, ptr %968, align 1, !tbaa !23
  %970 = icmp eq i32 %967, %969
  br i1 %970, label %971, label %1142

971:                                              ; preds = %959
  %972 = getelementptr inbounds nuw i8, ptr %943, i64 1
  %973 = select i1 %960, ptr %37, ptr %22
  %974 = getelementptr inbounds nuw i8, ptr %943, i64 5
  %975 = getelementptr inbounds nuw i8, ptr %966, i64 4
  %976 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %974, ptr noundef nonnull %975, ptr noundef %22, ptr noundef %973, ptr noundef %21)
  %977 = add i64 %976, 4
  %978 = ptrtoint ptr %972 to i64
  %979 = ptrtoint ptr %924 to i64
  %980 = sub i64 %978, %979
  %981 = icmp ugt ptr %972, %909
  %982 = load ptr, ptr %910, align 8, !tbaa !39
  br i1 %981, label %1005, label %983

983:                                              ; preds = %971
  %984 = load <2 x i64>, ptr %924, align 1, !tbaa !34
  store <2 x i64> %984, ptr %982, align 1, !tbaa !34
  %985 = icmp ugt i64 %980, 16
  br i1 %985, label %986, label %1121

986:                                              ; preds = %983
  %987 = load ptr, ptr %910, align 8, !tbaa !39
  %988 = getelementptr inbounds nuw i8, ptr %987, i64 16
  %989 = getelementptr inbounds nuw i8, ptr %924, i64 16
  %990 = getelementptr i8, ptr %987, i64 %980
  %991 = load <2 x i64>, ptr %989, align 1, !tbaa !34
  store <2 x i64> %991, ptr %988, align 1, !tbaa !34
  %992 = icmp ult i64 %980, 33
  br i1 %992, label %1121, label %993

993:                                              ; preds = %986
  %994 = getelementptr inbounds nuw i8, ptr %987, i64 32
  br label %995

995:                                              ; preds = %995, %993
  %996 = phi ptr [ %994, %993 ], [ %1003, %995 ]
  %997 = phi ptr [ %989, %993 ], [ %1001, %995 ]
  %998 = getelementptr inbounds nuw i8, ptr %997, i64 16
  %999 = load <2 x i64>, ptr %998, align 1, !tbaa !34
  store <2 x i64> %999, ptr %996, align 1, !tbaa !34
  %1000 = getelementptr inbounds nuw i8, ptr %996, i64 16
  %1001 = getelementptr inbounds nuw i8, ptr %997, i64 32
  %1002 = load <2 x i64>, ptr %1001, align 1, !tbaa !34
  store <2 x i64> %1002, ptr %1000, align 1, !tbaa !34
  %1003 = getelementptr inbounds nuw i8, ptr %996, i64 32
  %1004 = icmp ult ptr %1003, %990
  br i1 %1004, label %995, label %.loopexit360, !llvm.loop !42

1005:                                             ; preds = %971
  %1006 = icmp ugt ptr %924, %909
  br i1 %1006, label %.loopexit363, label %1007

1007:                                             ; preds = %1005
  %1008 = sub i64 %911, %979
  %1009 = getelementptr inbounds i8, ptr %982, i64 %1008
  %1010 = load <2 x i64>, ptr %924, align 1, !tbaa !34
  store <2 x i64> %1010, ptr %982, align 1, !tbaa !34
  %1011 = icmp ult i64 %1008, 17
  br i1 %1011, label %.loopexit363, label %1012

1012:                                             ; preds = %1007
  %1013 = getelementptr inbounds nuw i8, ptr %982, i64 16
  br label %1014

1014:                                             ; preds = %1014, %1012
  %1015 = phi ptr [ %1013, %1012 ], [ %1022, %1014 ]
  %1016 = phi ptr [ %924, %1012 ], [ %1020, %1014 ]
  %1017 = getelementptr inbounds nuw i8, ptr %1016, i64 16
  %1018 = load <2 x i64>, ptr %1017, align 1, !tbaa !34
  store <2 x i64> %1018, ptr %1015, align 1, !tbaa !34
  %1019 = getelementptr inbounds nuw i8, ptr %1015, i64 16
  %1020 = getelementptr inbounds nuw i8, ptr %1016, i64 32
  %1021 = load <2 x i64>, ptr %1020, align 1, !tbaa !34
  store <2 x i64> %1021, ptr %1019, align 1, !tbaa !34
  %1022 = getelementptr inbounds nuw i8, ptr %1015, i64 32
  %1023 = icmp ult ptr %1022, %1009
  br i1 %1023, label %1014, label %.loopexit363, !llvm.loop !42

.loopexit363:                                     ; preds = %1014, %1007, %1005
  %1024 = phi ptr [ %909, %1007 ], [ %924, %1005 ], [ %909, %1014 ]
  %1025 = phi ptr [ %1009, %1007 ], [ %982, %1005 ], [ %1009, %1014 ]
  %1026 = icmp ult ptr %1024, %972
  br i1 %1026, label %1027, label %.loopexit360

1027:                                             ; preds = %.loopexit363
  %1028 = ptrtoint ptr %1024 to i64
  %1029 = ptrtoint ptr %1025 to i64
  %1030 = sub i64 %949, %1028
  %1031 = add i64 %1030, 1
  %1032 = icmp ult i64 %1031, 4
  %1033 = sub i64 %1029, %1028
  %1034 = icmp ult i64 %1033, 32
  %1035 = select i1 %1032, i1 true, i1 %1034
  br i1 %1035, label %1071, label %1036

1036:                                             ; preds = %1027
  %1037 = icmp ult i64 %1031, 32
  br i1 %1037, label %1057, label %1038

1038:                                             ; preds = %1036
  %1039 = and i64 %1031, -32
  br label %1040

1040:                                             ; preds = %1040, %1038
  %1041 = phi i64 [ 0, %1038 ], [ %1048, %1040 ]
  %1042 = getelementptr i8, ptr %1025, i64 %1041
  %1043 = getelementptr i8, ptr %1024, i64 %1041
  %1044 = getelementptr i8, ptr %1043, i64 16
  %1045 = load <16 x i8>, ptr %1043, align 1, !tbaa !34
  %1046 = load <16 x i8>, ptr %1044, align 1, !tbaa !34
  %1047 = getelementptr i8, ptr %1042, i64 16
  store <16 x i8> %1045, ptr %1042, align 1, !tbaa !34
  store <16 x i8> %1046, ptr %1047, align 1, !tbaa !34
  %1048 = add nuw i64 %1041, 32
  %1049 = icmp eq i64 %1048, %1039
  br i1 %1049, label %1050, label %1040, !llvm.loop !107

1050:                                             ; preds = %1040
  %1051 = icmp eq i64 %1031, %1039
  br i1 %1051, label %.loopexit360, label %1052

1052:                                             ; preds = %1050
  %1053 = getelementptr i8, ptr %1025, i64 %1039
  %1054 = getelementptr i8, ptr %1024, i64 %1039
  %1055 = and i64 %1031, 28
  %1056 = icmp eq i64 %1055, 0
  br i1 %1056, label %1071, label %1057

1057:                                             ; preds = %1052, %1036
  %1058 = phi i64 [ %1039, %1052 ], [ 0, %1036 ]
  %1059 = and i64 %1031, -4
  br label %1060

1060:                                             ; preds = %1060, %1057
  %1061 = phi i64 [ %1058, %1057 ], [ %1065, %1060 ]
  %1062 = getelementptr i8, ptr %1025, i64 %1061
  %1063 = getelementptr i8, ptr %1024, i64 %1061
  %1064 = load <4 x i8>, ptr %1063, align 1, !tbaa !34
  store <4 x i8> %1064, ptr %1062, align 1, !tbaa !34
  %1065 = add nuw i64 %1061, 4
  %1066 = icmp eq i64 %1065, %1059
  br i1 %1066, label %1067, label %1060, !llvm.loop !108

1067:                                             ; preds = %1060
  %1068 = getelementptr i8, ptr %1025, i64 %1059
  %1069 = getelementptr i8, ptr %1024, i64 %1059
  %1070 = icmp eq i64 %1031, %1059
  br i1 %1070, label %.loopexit360, label %1071

1071:                                             ; preds = %1067, %1052, %1027
  %1072 = phi ptr [ %1025, %1027 ], [ %1053, %1052 ], [ %1068, %1067 ]
  %1073 = phi ptr [ %1024, %1027 ], [ %1054, %1052 ], [ %1069, %1067 ]
  %1074 = ptrtoint ptr %1073 to i64
  %1075 = sub i64 %949, %1074
  %1076 = add i64 %1075, 1
  %1077 = and i64 %1076, 7
  %1078 = and i64 %1075, 7
  %1079 = icmp eq i64 %1078, 7
  br i1 %1079, label %.preheader359.preheader, label %.preheader361.preheader

.preheader361.preheader:                          ; preds = %1071
  %1080 = ptrtoaddr ptr %1072 to i64
  %min.iters.check1621 = icmp samesign ult i64 %1077, 4
  %1081 = sub i64 %1080, %1074
  %diff.check1619 = icmp ult i64 %1081, 4
  %or.cond1672 = select i1 %min.iters.check1621, i1 true, i1 %diff.check1619
  br i1 %or.cond1672, label %.preheader361.preheader1667, label %vector.ph1622

vector.ph1622:                                    ; preds = %.preheader361.preheader
  %n.vec1624 = and i64 %1076, 4
  br label %vector.body1625

vector.body1625:                                  ; preds = %vector.body1625, %vector.ph1622
  %index1626 = phi i64 [ 0, %vector.ph1622 ], [ %index.next1630, %vector.body1625 ]
  %next.gep1627 = getelementptr i8, ptr %1072, i64 %index1626
  %next.gep1628 = getelementptr i8, ptr %1073, i64 %index1626
  %wide.load1629 = load <4 x i8>, ptr %next.gep1628, align 1, !tbaa !34
  store <4 x i8> %wide.load1629, ptr %next.gep1627, align 1, !tbaa !34
  %index.next1630 = add nuw i64 %index1626, 4
  %1082 = icmp eq i64 %index.next1630, %n.vec1624
  br i1 %1082, label %middle.block1631, label %vector.body1625, !llvm.loop !109

middle.block1631:                                 ; preds = %vector.body1625
  %1083 = getelementptr i8, ptr %1072, i64 4
  %1084 = getelementptr i8, ptr %1073, i64 4
  %cmp.n1632 = icmp eq i64 %1077, 4
  br i1 %cmp.n1632, label %.loopexit362, label %.preheader361.preheader1667

.preheader361.preheader1667:                      ; preds = %middle.block1631, %.preheader361.preheader
  %.ph1668 = phi ptr [ %1083, %middle.block1631 ], [ %1072, %.preheader361.preheader ]
  %.ph1669 = phi ptr [ %1084, %middle.block1631 ], [ %1073, %.preheader361.preheader ]
  %.ph1670 = phi i64 [ 4, %middle.block1631 ], [ 0, %.preheader361.preheader ]
  br label %.preheader361

.preheader361:                                    ; preds = %.preheader361.preheader1667, %.preheader361
  %1085 = phi ptr [ %1090, %.preheader361 ], [ %.ph1668, %.preheader361.preheader1667 ]
  %1086 = phi ptr [ %1088, %.preheader361 ], [ %.ph1669, %.preheader361.preheader1667 ]
  %1087 = phi i64 [ %1091, %.preheader361 ], [ %.ph1670, %.preheader361.preheader1667 ]
  %1088 = getelementptr inbounds nuw i8, ptr %1086, i64 1
  %1089 = load i8, ptr %1086, align 1, !tbaa !34
  %1090 = getelementptr inbounds nuw i8, ptr %1085, i64 1
  store i8 %1089, ptr %1085, align 1, !tbaa !34
  %1091 = add i64 %1087, 1
  %1092 = icmp eq i64 %1091, %1077
  br i1 %1092, label %.loopexit362, label %.preheader361, !llvm.loop !110

.loopexit362:                                     ; preds = %.preheader361, %middle.block1631
  %.lcssa1546 = phi ptr [ %1084, %middle.block1631 ], [ %1088, %.preheader361 ]
  %.lcssa1545 = phi ptr [ %1083, %middle.block1631 ], [ %1090, %.preheader361 ]
  %1093 = icmp ult i64 %1075, 7
  br i1 %1093, label %.loopexit360, label %.preheader359.preheader

.preheader359.preheader:                          ; preds = %.loopexit362, %1071
  %.ph1665 = phi ptr [ %.lcssa1545, %.loopexit362 ], [ %1072, %1071 ]
  %.ph1666 = phi ptr [ %.lcssa1546, %.loopexit362 ], [ %1073, %1071 ]
  br label %.preheader359

.preheader359:                                    ; preds = %.preheader359.preheader, %.preheader359
  %1094 = phi ptr [ %1119, %.preheader359 ], [ %.ph1665, %.preheader359.preheader ]
  %1095 = phi ptr [ %1117, %.preheader359 ], [ %.ph1666, %.preheader359.preheader ]
  %1096 = getelementptr inbounds nuw i8, ptr %1095, i64 1
  %1097 = load i8, ptr %1095, align 1, !tbaa !34
  %1098 = getelementptr inbounds nuw i8, ptr %1094, i64 1
  store i8 %1097, ptr %1094, align 1, !tbaa !34
  %1099 = getelementptr inbounds nuw i8, ptr %1095, i64 2
  %1100 = load i8, ptr %1096, align 1, !tbaa !34
  %1101 = getelementptr inbounds nuw i8, ptr %1094, i64 2
  store i8 %1100, ptr %1098, align 1, !tbaa !34
  %1102 = getelementptr inbounds nuw i8, ptr %1095, i64 3
  %1103 = load i8, ptr %1099, align 1, !tbaa !34
  %1104 = getelementptr inbounds nuw i8, ptr %1094, i64 3
  store i8 %1103, ptr %1101, align 1, !tbaa !34
  %1105 = getelementptr inbounds nuw i8, ptr %1095, i64 4
  %1106 = load i8, ptr %1102, align 1, !tbaa !34
  %1107 = getelementptr inbounds nuw i8, ptr %1094, i64 4
  store i8 %1106, ptr %1104, align 1, !tbaa !34
  %1108 = getelementptr inbounds nuw i8, ptr %1095, i64 5
  %1109 = load i8, ptr %1105, align 1, !tbaa !34
  %1110 = getelementptr inbounds nuw i8, ptr %1094, i64 5
  store i8 %1109, ptr %1107, align 1, !tbaa !34
  %1111 = getelementptr inbounds nuw i8, ptr %1095, i64 6
  %1112 = load i8, ptr %1108, align 1, !tbaa !34
  %1113 = getelementptr inbounds nuw i8, ptr %1094, i64 6
  store i8 %1112, ptr %1110, align 1, !tbaa !34
  %1114 = getelementptr inbounds nuw i8, ptr %1095, i64 7
  %1115 = load i8, ptr %1111, align 1, !tbaa !34
  %1116 = getelementptr inbounds nuw i8, ptr %1094, i64 7
  store i8 %1115, ptr %1113, align 1, !tbaa !34
  %1117 = getelementptr inbounds nuw i8, ptr %1095, i64 8
  %1118 = load i8, ptr %1114, align 1, !tbaa !34
  %1119 = getelementptr inbounds nuw i8, ptr %1094, i64 8
  store i8 %1118, ptr %1116, align 1, !tbaa !34
  %1120 = icmp eq ptr %1114, %943
  br i1 %1120, label %.loopexit360, label %.preheader359, !llvm.loop !111

1121:                                             ; preds = %986, %983
  %1122 = load ptr, ptr %910, align 8, !tbaa !39
  %1123 = getelementptr inbounds nuw i8, ptr %1122, i64 %980
  store ptr %1123, ptr %910, align 8, !tbaa !39
  %1124 = load ptr, ptr %913, align 8, !tbaa !50
  br label %1136

.loopexit360:                                     ; preds = %995, %.preheader359, %.loopexit362, %1067, %1050, %.loopexit363
  %1125 = load ptr, ptr %910, align 8, !tbaa !39
  %1126 = getelementptr inbounds nuw i8, ptr %1125, i64 %980
  store ptr %1126, ptr %910, align 8, !tbaa !39
  %1127 = icmp ugt i64 %980, 65535
  %1128 = load ptr, ptr %913, align 8, !tbaa !50
  br i1 %1127, label %1129, label %1136, !prof !51

1129:                                             ; preds = %.loopexit360
  store i32 1, ptr %912, align 8, !tbaa !52
  %1130 = load ptr, ptr %1, align 8, !tbaa !53
  %1131 = ptrtoint ptr %1128 to i64
  %1132 = ptrtoint ptr %1130 to i64
  %1133 = sub i64 %1131, %1132
  %1134 = lshr exact i64 %1133, 3
  %1135 = trunc i64 %1134 to i32
  store i32 %1135, ptr %914, align 4, !tbaa !54
  br label %1136

1136:                                             ; preds = %1129, %.loopexit360, %1121
  %1137 = phi ptr [ %1124, %1121 ], [ %1128, %1129 ], [ %1128, %.loopexit360 ]
  %1138 = trunc i64 %980 to i16
  %1139 = getelementptr inbounds nuw i8, ptr %1137, i64 4
  store i16 %1138, ptr %1139, align 4, !tbaa !55
  store i32 1, ptr %1137, align 4, !tbaa !57
  %1140 = add i64 %976, 1
  %1141 = icmp ugt i64 %1140, 65535
  br i1 %1141, label %1618, label %1631, !prof !58

1142:                                             ; preds = %959, %936
  br i1 %948, label %1143, label %1343

1143:                                             ; preds = %1142
  %1144 = lshr i32 %940, 8
  %1145 = icmp ugt i32 %1144, %32
  br i1 %1145, label %1146, label %1343

1146:                                             ; preds = %1143
  %1147 = zext nneg i32 %1144 to i64
  %1148 = getelementptr inbounds nuw i8, ptr %34, i64 %1147
  %1149 = load i32, ptr %1148, align 1, !tbaa !23
  %1150 = load i32, ptr %943, align 1, !tbaa !23
  %1151 = icmp ne i32 %1149, %1150
  %1152 = icmp ugt i32 %946, %19
  %1153 = select i1 %1151, i1 true, i1 %1152
  br i1 %1153, label %1343, label %1154

1154:                                             ; preds = %1146
  %1155 = getelementptr inbounds nuw i8, ptr %34, i64 %1147
  %1156 = add i32 %1144, %42
  %1157 = sub i32 %951, %1156
  %1158 = getelementptr inbounds nuw i8, ptr %943, i64 4
  %1159 = getelementptr inbounds nuw i8, ptr %1155, i64 4
  %1160 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1158, ptr noundef nonnull %1159, ptr noundef %22, ptr noundef %37, ptr noundef %21)
  %1161 = add i64 %1160, 4
  %1162 = icmp ugt ptr %943, %924
  br i1 %1162, label %.preheader358, label %1180

.preheader358:                                    ; preds = %1154, %1171
  %1163 = phi ptr [ %1166, %1171 ], [ %943, %1154 ]
  %1164 = phi i64 [ %1172, %1171 ], [ %1161, %1154 ]
  %1165 = phi ptr [ %1168, %1171 ], [ %1155, %1154 ]
  %1166 = getelementptr inbounds i8, ptr %1163, i64 -1
  %1167 = load i8, ptr %1166, align 1, !tbaa !34
  %1168 = getelementptr inbounds i8, ptr %1165, i64 -1
  %1169 = load i8, ptr %1168, align 1, !tbaa !34
  %1170 = icmp eq i8 %1167, %1169
  br i1 %1170, label %1171, label %1176

1171:                                             ; preds = %.preheader358
  %1172 = add i64 %1164, 1
  %1173 = icmp ugt ptr %1166, %924
  %1174 = icmp ugt ptr %1168, %36
  %1175 = and i1 %1173, %1174
  br i1 %1175, label %.preheader358, label %1176, !llvm.loop !97

1176:                                             ; preds = %1171, %.preheader358
  %1177 = phi i64 [ %1172, %1171 ], [ %1164, %.preheader358 ]
  %1178 = phi ptr [ %1166, %1171 ], [ %1163, %.preheader358 ]
  %1179 = ptrtoint ptr %1178 to i64
  br label %1180

1180:                                             ; preds = %1176, %1154
  %1181 = phi i64 [ %1179, %1176 ], [ %949, %1154 ]
  %1182 = phi i64 [ %1177, %1176 ], [ %1161, %1154 ]
  %1183 = phi ptr [ %1178, %1176 ], [ %943, %1154 ]
  %1184 = ptrtoint ptr %924 to i64
  %1185 = sub i64 %1181, %1184
  %1186 = add i32 %1157, 3
  %1187 = icmp ugt ptr %1183, %909
  %1188 = load ptr, ptr %910, align 8, !tbaa !39
  br i1 %1187, label %1211, label %1189

1189:                                             ; preds = %1180
  %1190 = load <2 x i64>, ptr %924, align 1, !tbaa !34
  store <2 x i64> %1190, ptr %1188, align 1, !tbaa !34
  %1191 = icmp ugt i64 %1185, 16
  br i1 %1191, label %1192, label %1322

1192:                                             ; preds = %1189
  %1193 = load ptr, ptr %910, align 8, !tbaa !39
  %1194 = getelementptr inbounds nuw i8, ptr %1193, i64 16
  %1195 = getelementptr inbounds nuw i8, ptr %924, i64 16
  %1196 = getelementptr i8, ptr %1193, i64 %1185
  %1197 = load <2 x i64>, ptr %1195, align 1, !tbaa !34
  store <2 x i64> %1197, ptr %1194, align 1, !tbaa !34
  %1198 = icmp ult i64 %1185, 33
  br i1 %1198, label %1322, label %1199

1199:                                             ; preds = %1192
  %1200 = getelementptr inbounds nuw i8, ptr %1193, i64 32
  br label %1201

1201:                                             ; preds = %1201, %1199
  %1202 = phi ptr [ %1200, %1199 ], [ %1209, %1201 ]
  %1203 = phi ptr [ %1195, %1199 ], [ %1207, %1201 ]
  %1204 = getelementptr inbounds nuw i8, ptr %1203, i64 16
  %1205 = load <2 x i64>, ptr %1204, align 1, !tbaa !34
  store <2 x i64> %1205, ptr %1202, align 1, !tbaa !34
  %1206 = getelementptr inbounds nuw i8, ptr %1202, i64 16
  %1207 = getelementptr inbounds nuw i8, ptr %1203, i64 32
  %1208 = load <2 x i64>, ptr %1207, align 1, !tbaa !34
  store <2 x i64> %1208, ptr %1206, align 1, !tbaa !34
  %1209 = getelementptr inbounds nuw i8, ptr %1202, i64 32
  %1210 = icmp ult ptr %1209, %1196
  br i1 %1210, label %1201, label %.loopexit353, !llvm.loop !42

1211:                                             ; preds = %1180
  %1212 = icmp ugt ptr %924, %909
  br i1 %1212, label %.loopexit356, label %1213

1213:                                             ; preds = %1211
  %1214 = sub i64 %911, %1184
  %1215 = getelementptr inbounds i8, ptr %1188, i64 %1214
  %1216 = load <2 x i64>, ptr %924, align 1, !tbaa !34
  store <2 x i64> %1216, ptr %1188, align 1, !tbaa !34
  %1217 = icmp ult i64 %1214, 17
  br i1 %1217, label %.loopexit356, label %1218

1218:                                             ; preds = %1213
  %1219 = getelementptr inbounds nuw i8, ptr %1188, i64 16
  br label %1220

1220:                                             ; preds = %1220, %1218
  %1221 = phi ptr [ %1219, %1218 ], [ %1228, %1220 ]
  %1222 = phi ptr [ %924, %1218 ], [ %1226, %1220 ]
  %1223 = getelementptr inbounds nuw i8, ptr %1222, i64 16
  %1224 = load <2 x i64>, ptr %1223, align 1, !tbaa !34
  store <2 x i64> %1224, ptr %1221, align 1, !tbaa !34
  %1225 = getelementptr inbounds nuw i8, ptr %1221, i64 16
  %1226 = getelementptr inbounds nuw i8, ptr %1222, i64 32
  %1227 = load <2 x i64>, ptr %1226, align 1, !tbaa !34
  store <2 x i64> %1227, ptr %1225, align 1, !tbaa !34
  %1228 = getelementptr inbounds nuw i8, ptr %1221, i64 32
  %1229 = icmp ult ptr %1228, %1215
  br i1 %1229, label %1220, label %.loopexit356, !llvm.loop !42

.loopexit356:                                     ; preds = %1220, %1213, %1211
  %1230 = phi ptr [ %909, %1213 ], [ %924, %1211 ], [ %909, %1220 ]
  %1231 = phi ptr [ %1215, %1213 ], [ %1188, %1211 ], [ %1215, %1220 ]
  %1232 = icmp ult ptr %1230, %1183
  br i1 %1232, label %1233, label %.loopexit353

1233:                                             ; preds = %.loopexit356
  %1234 = ptrtoint ptr %1230 to i64
  %1235 = ptrtoint ptr %1231 to i64
  %1236 = sub i64 %1181, %1234
  %1237 = icmp ult i64 %1236, 4
  %1238 = sub i64 %1235, %1234
  %1239 = icmp ult i64 %1238, 32
  %1240 = select i1 %1237, i1 true, i1 %1239
  br i1 %1240, label %1276, label %1241

1241:                                             ; preds = %1233
  %1242 = icmp ult i64 %1236, 32
  br i1 %1242, label %1262, label %1243

1243:                                             ; preds = %1241
  %1244 = and i64 %1236, -32
  br label %1245

1245:                                             ; preds = %1245, %1243
  %1246 = phi i64 [ 0, %1243 ], [ %1253, %1245 ]
  %1247 = getelementptr i8, ptr %1231, i64 %1246
  %1248 = getelementptr i8, ptr %1230, i64 %1246
  %1249 = getelementptr i8, ptr %1248, i64 16
  %1250 = load <16 x i8>, ptr %1248, align 1, !tbaa !34
  %1251 = load <16 x i8>, ptr %1249, align 1, !tbaa !34
  %1252 = getelementptr i8, ptr %1247, i64 16
  store <16 x i8> %1250, ptr %1247, align 1, !tbaa !34
  store <16 x i8> %1251, ptr %1252, align 1, !tbaa !34
  %1253 = add nuw i64 %1246, 32
  %1254 = icmp eq i64 %1253, %1244
  br i1 %1254, label %1255, label %1245, !llvm.loop !112

1255:                                             ; preds = %1245
  %1256 = icmp eq i64 %1236, %1244
  br i1 %1256, label %.loopexit353, label %1257

1257:                                             ; preds = %1255
  %1258 = getelementptr i8, ptr %1231, i64 %1244
  %1259 = getelementptr i8, ptr %1230, i64 %1244
  %1260 = and i64 %1236, 28
  %1261 = icmp eq i64 %1260, 0
  br i1 %1261, label %1276, label %1262

1262:                                             ; preds = %1257, %1241
  %1263 = phi i64 [ %1244, %1257 ], [ 0, %1241 ]
  %1264 = and i64 %1236, -4
  br label %1265

1265:                                             ; preds = %1265, %1262
  %1266 = phi i64 [ %1263, %1262 ], [ %1270, %1265 ]
  %1267 = getelementptr i8, ptr %1231, i64 %1266
  %1268 = getelementptr i8, ptr %1230, i64 %1266
  %1269 = load <4 x i8>, ptr %1268, align 1, !tbaa !34
  store <4 x i8> %1269, ptr %1267, align 1, !tbaa !34
  %1270 = add nuw i64 %1266, 4
  %1271 = icmp eq i64 %1270, %1264
  br i1 %1271, label %1272, label %1265, !llvm.loop !113

1272:                                             ; preds = %1265
  %1273 = getelementptr i8, ptr %1231, i64 %1264
  %1274 = getelementptr i8, ptr %1230, i64 %1264
  %1275 = icmp eq i64 %1236, %1264
  br i1 %1275, label %.loopexit353, label %1276

1276:                                             ; preds = %1272, %1257, %1233
  %1277 = phi ptr [ %1231, %1233 ], [ %1258, %1257 ], [ %1273, %1272 ]
  %1278 = phi ptr [ %1230, %1233 ], [ %1259, %1257 ], [ %1274, %1272 ]
  %1279 = ptrtoint ptr %1278 to i64
  %1280 = sub i64 %1181, %1279
  %1281 = and i64 %1280, 7
  %1282 = icmp eq i64 %1281, 0
  br i1 %1282, label %.loopexit355, label %.preheader354

.preheader354:                                    ; preds = %1276, %.preheader354
  %1283 = phi ptr [ %1288, %.preheader354 ], [ %1277, %1276 ]
  %1284 = phi ptr [ %1286, %.preheader354 ], [ %1278, %1276 ]
  %1285 = phi i64 [ %1289, %.preheader354 ], [ 0, %1276 ]
  %1286 = getelementptr inbounds nuw i8, ptr %1284, i64 1
  %1287 = load i8, ptr %1284, align 1, !tbaa !34
  %1288 = getelementptr inbounds nuw i8, ptr %1283, i64 1
  store i8 %1287, ptr %1283, align 1, !tbaa !34
  %1289 = add nuw nsw i64 %1285, 1
  %1290 = icmp eq i64 %1289, %1281
  br i1 %1290, label %.loopexit355, label %.preheader354, !llvm.loop !114

.loopexit355:                                     ; preds = %.preheader354, %1276
  %1291 = phi ptr [ %1277, %1276 ], [ %1288, %.preheader354 ]
  %1292 = phi ptr [ %1278, %1276 ], [ %1286, %.preheader354 ]
  %1293 = sub i64 %1279, %1181
  %1294 = icmp ugt i64 %1293, -8
  br i1 %1294, label %.loopexit353, label %.preheader352

.preheader352:                                    ; preds = %.loopexit355, %.preheader352
  %1295 = phi ptr [ %1320, %.preheader352 ], [ %1291, %.loopexit355 ]
  %1296 = phi ptr [ %1318, %.preheader352 ], [ %1292, %.loopexit355 ]
  %1297 = getelementptr inbounds nuw i8, ptr %1296, i64 1
  %1298 = load i8, ptr %1296, align 1, !tbaa !34
  %1299 = getelementptr inbounds nuw i8, ptr %1295, i64 1
  store i8 %1298, ptr %1295, align 1, !tbaa !34
  %1300 = getelementptr inbounds nuw i8, ptr %1296, i64 2
  %1301 = load i8, ptr %1297, align 1, !tbaa !34
  %1302 = getelementptr inbounds nuw i8, ptr %1295, i64 2
  store i8 %1301, ptr %1299, align 1, !tbaa !34
  %1303 = getelementptr inbounds nuw i8, ptr %1296, i64 3
  %1304 = load i8, ptr %1300, align 1, !tbaa !34
  %1305 = getelementptr inbounds nuw i8, ptr %1295, i64 3
  store i8 %1304, ptr %1302, align 1, !tbaa !34
  %1306 = getelementptr inbounds nuw i8, ptr %1296, i64 4
  %1307 = load i8, ptr %1303, align 1, !tbaa !34
  %1308 = getelementptr inbounds nuw i8, ptr %1295, i64 4
  store i8 %1307, ptr %1305, align 1, !tbaa !34
  %1309 = getelementptr inbounds nuw i8, ptr %1296, i64 5
  %1310 = load i8, ptr %1306, align 1, !tbaa !34
  %1311 = getelementptr inbounds nuw i8, ptr %1295, i64 5
  store i8 %1310, ptr %1308, align 1, !tbaa !34
  %1312 = getelementptr inbounds nuw i8, ptr %1296, i64 6
  %1313 = load i8, ptr %1309, align 1, !tbaa !34
  %1314 = getelementptr inbounds nuw i8, ptr %1295, i64 6
  store i8 %1313, ptr %1311, align 1, !tbaa !34
  %1315 = getelementptr inbounds nuw i8, ptr %1296, i64 7
  %1316 = load i8, ptr %1312, align 1, !tbaa !34
  %1317 = getelementptr inbounds nuw i8, ptr %1295, i64 7
  store i8 %1316, ptr %1314, align 1, !tbaa !34
  %1318 = getelementptr inbounds nuw i8, ptr %1296, i64 8
  %1319 = load i8, ptr %1315, align 1, !tbaa !34
  %1320 = getelementptr inbounds nuw i8, ptr %1295, i64 8
  store i8 %1319, ptr %1317, align 1, !tbaa !34
  %1321 = icmp eq ptr %1318, %1183
  br i1 %1321, label %.loopexit353, label %.preheader352, !llvm.loop !115

1322:                                             ; preds = %1192, %1189
  %1323 = load ptr, ptr %910, align 8, !tbaa !39
  %1324 = getelementptr inbounds nuw i8, ptr %1323, i64 %1185
  store ptr %1324, ptr %910, align 8, !tbaa !39
  %1325 = load ptr, ptr %913, align 8, !tbaa !50
  br label %1337

.loopexit353:                                     ; preds = %1201, %.preheader352, %.loopexit355, %1272, %1255, %.loopexit356
  %1326 = load ptr, ptr %910, align 8, !tbaa !39
  %1327 = getelementptr inbounds nuw i8, ptr %1326, i64 %1185
  store ptr %1327, ptr %910, align 8, !tbaa !39
  %1328 = icmp ugt i64 %1185, 65535
  %1329 = load ptr, ptr %913, align 8, !tbaa !50
  br i1 %1328, label %1330, label %1337, !prof !51

1330:                                             ; preds = %.loopexit353
  store i32 1, ptr %912, align 8, !tbaa !52
  %1331 = load ptr, ptr %1, align 8, !tbaa !53
  %1332 = ptrtoint ptr %1329 to i64
  %1333 = ptrtoint ptr %1331 to i64
  %1334 = sub i64 %1332, %1333
  %1335 = lshr exact i64 %1334, 3
  %1336 = trunc i64 %1335 to i32
  store i32 %1336, ptr %914, align 4, !tbaa !54
  br label %1337

1337:                                             ; preds = %1330, %.loopexit353, %1322
  %1338 = phi ptr [ %1325, %1322 ], [ %1329, %1330 ], [ %1329, %.loopexit353 ]
  %1339 = trunc i64 %1185 to i16
  %1340 = getelementptr inbounds nuw i8, ptr %1338, i64 4
  store i16 %1339, ptr %1340, align 4, !tbaa !55
  store i32 %1186, ptr %1338, align 4, !tbaa !57
  %1341 = add i64 %1182, -3
  %1342 = icmp ugt i64 %1341, 65535
  br i1 %1342, label %1618, label %1631, !prof !58

1343:                                             ; preds = %1146, %1143, %1142
  %1344 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %946, i32 %19, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %953) #6, !srcloc !32
  %1345 = load i32, ptr %943, align 1, !tbaa !23
  %1346 = load i32, ptr %1344, align 1, !tbaa !23
  %1347 = icmp eq i32 %1345, %1346
  br i1 %1347, label %1348, label %1604

1348:                                             ; preds = %1343
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !33
  %1349 = icmp ult i32 %946, %19
  br i1 %1349, label %1604, label %1350

1350:                                             ; preds = %1348
  %1351 = ptrtoint ptr %953 to i64
  %1352 = sub i64 %949, %1351
  %1353 = trunc i64 %1352 to i32
  %1354 = getelementptr inbounds nuw i8, ptr %943, i64 4
  %1355 = getelementptr inbounds nuw i8, ptr %953, i64 4
  %1356 = icmp ult ptr %1354, %915
  br i1 %1356, label %1357, label %.loopexit351

1357:                                             ; preds = %1350
  %1358 = load i64, ptr %1355, align 1, !tbaa !22
  %1359 = load i64, ptr %1354, align 1, !tbaa !22
  %1360 = icmp eq i64 %1358, %1359
  br i1 %1360, label %.preheader350, label %1361

1361:                                             ; preds = %1357
  %1362 = xor i64 %1359, %1358
  %1363 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1362, i1 true)
  %1364 = lshr i64 %1363, 3
  br label %1418

.preheader350:                                    ; preds = %1357, %1370
  %1365 = phi ptr [ %1368, %1370 ], [ %1355, %1357 ]
  %1366 = phi ptr [ %1367, %1370 ], [ %1354, %1357 ]
  %1367 = getelementptr inbounds nuw i8, ptr %1366, i64 8
  %1368 = getelementptr inbounds nuw i8, ptr %1365, i64 8
  %1369 = icmp ult ptr %1367, %915
  br i1 %1369, label %1370, label %.loopexit351

1370:                                             ; preds = %.preheader350
  %1371 = load i64, ptr %1368, align 1, !tbaa !22
  %1372 = load i64, ptr %1367, align 1, !tbaa !22
  %1373 = icmp eq i64 %1371, %1372
  br i1 %1373, label %.preheader350, label %1374

1374:                                             ; preds = %1370
  %1375 = xor i64 %1372, %1371
  %1376 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1375, i1 true)
  %1377 = lshr i64 %1376, 3
  %1378 = getelementptr inbounds nuw i8, ptr %1367, i64 %1377
  %1379 = ptrtoint ptr %1378 to i64
  %1380 = ptrtoint ptr %1354 to i64
  %1381 = sub i64 %1379, %1380
  br label %1418

.loopexit351:                                     ; preds = %.preheader350, %1350
  %1382 = phi ptr [ %1355, %1350 ], [ %1368, %.preheader350 ]
  %1383 = phi ptr [ %1354, %1350 ], [ %1367, %.preheader350 ]
  %1384 = icmp ult ptr %1383, %916
  br i1 %1384, label %1385, label %1392

1385:                                             ; preds = %.loopexit351
  %1386 = load i32, ptr %1382, align 1, !tbaa !23
  %1387 = load i32, ptr %1383, align 1, !tbaa !23
  %1388 = icmp eq i32 %1386, %1387
  br i1 %1388, label %1389, label %1392

1389:                                             ; preds = %1385
  %1390 = getelementptr inbounds nuw i8, ptr %1383, i64 4
  %1391 = getelementptr inbounds nuw i8, ptr %1382, i64 4
  br label %1392

1392:                                             ; preds = %1389, %1385, %.loopexit351
  %1393 = phi ptr [ %1391, %1389 ], [ %1382, %1385 ], [ %1382, %.loopexit351 ]
  %1394 = phi ptr [ %1390, %1389 ], [ %1383, %1385 ], [ %1383, %.loopexit351 ]
  %1395 = icmp ult ptr %1394, %917
  br i1 %1395, label %1396, label %1403

1396:                                             ; preds = %1392
  %1397 = load i16, ptr %1393, align 1, !tbaa !37
  %1398 = load i16, ptr %1394, align 1, !tbaa !37
  %1399 = icmp eq i16 %1397, %1398
  br i1 %1399, label %1400, label %1403

1400:                                             ; preds = %1396
  %1401 = getelementptr inbounds nuw i8, ptr %1394, i64 2
  %1402 = getelementptr inbounds nuw i8, ptr %1393, i64 2
  br label %1403

1403:                                             ; preds = %1400, %1396, %1392
  %1404 = phi ptr [ %1402, %1400 ], [ %1393, %1396 ], [ %1393, %1392 ]
  %1405 = phi ptr [ %1401, %1400 ], [ %1394, %1396 ], [ %1394, %1392 ]
  %1406 = icmp ult ptr %1405, %22
  br i1 %1406, label %1407, label %1413

1407:                                             ; preds = %1403
  %1408 = load i8, ptr %1404, align 1, !tbaa !34
  %1409 = load i8, ptr %1405, align 1, !tbaa !34
  %1410 = icmp eq i8 %1408, %1409
  %1411 = zext i1 %1410 to i64
  %1412 = getelementptr inbounds nuw i8, ptr %1405, i64 %1411
  br label %1413

1413:                                             ; preds = %1407, %1403
  %1414 = phi ptr [ %1405, %1403 ], [ %1412, %1407 ]
  %1415 = ptrtoint ptr %1414 to i64
  %1416 = ptrtoint ptr %1354 to i64
  %1417 = sub i64 %1415, %1416
  br label %1418

1418:                                             ; preds = %1413, %1374, %1361
  %1419 = phi i64 [ %1417, %1413 ], [ %1364, %1361 ], [ %1381, %1374 ]
  %1420 = add i64 %1419, 4
  %1421 = icmp ugt ptr %943, %924
  %1422 = icmp ugt i32 %946, %19
  %1423 = and i1 %1421, %1422
  br i1 %1423, label %.preheader349, label %1441

.preheader349:                                    ; preds = %1418, %1432
  %1424 = phi ptr [ %1427, %1432 ], [ %943, %1418 ]
  %1425 = phi i64 [ %1433, %1432 ], [ %1420, %1418 ]
  %1426 = phi ptr [ %1429, %1432 ], [ %953, %1418 ]
  %1427 = getelementptr inbounds i8, ptr %1424, i64 -1
  %1428 = load i8, ptr %1427, align 1, !tbaa !34
  %1429 = getelementptr inbounds i8, ptr %1426, i64 -1
  %1430 = load i8, ptr %1429, align 1, !tbaa !34
  %1431 = icmp eq i8 %1428, %1430
  br i1 %1431, label %1432, label %1437

1432:                                             ; preds = %.preheader349
  %1433 = add i64 %1425, 1
  %1434 = icmp ugt ptr %1427, %924
  %1435 = icmp ugt ptr %1429, %21
  %1436 = and i1 %1434, %1435
  br i1 %1436, label %.preheader349, label %1437, !llvm.loop !102

1437:                                             ; preds = %1432, %.preheader349
  %1438 = phi i64 [ %1433, %1432 ], [ %1425, %.preheader349 ]
  %1439 = phi ptr [ %1427, %1432 ], [ %1424, %.preheader349 ]
  %1440 = ptrtoint ptr %1439 to i64
  br label %1441

1441:                                             ; preds = %1437, %1418
  %1442 = phi i64 [ %1440, %1437 ], [ %949, %1418 ]
  %1443 = phi i64 [ %1438, %1437 ], [ %1420, %1418 ]
  %1444 = phi ptr [ %1439, %1437 ], [ %943, %1418 ]
  %1445 = ptrtoint ptr %924 to i64
  %1446 = sub i64 %1442, %1445
  %1447 = add i32 %1353, 3
  %1448 = icmp ugt ptr %1444, %909
  %1449 = load ptr, ptr %910, align 8, !tbaa !39
  br i1 %1448, label %1472, label %1450

1450:                                             ; preds = %1441
  %1451 = load <2 x i64>, ptr %924, align 1, !tbaa !34
  store <2 x i64> %1451, ptr %1449, align 1, !tbaa !34
  %1452 = icmp ugt i64 %1446, 16
  br i1 %1452, label %1453, label %1583

1453:                                             ; preds = %1450
  %1454 = load ptr, ptr %910, align 8, !tbaa !39
  %1455 = getelementptr inbounds nuw i8, ptr %1454, i64 16
  %1456 = getelementptr inbounds nuw i8, ptr %924, i64 16
  %1457 = getelementptr i8, ptr %1454, i64 %1446
  %1458 = load <2 x i64>, ptr %1456, align 1, !tbaa !34
  store <2 x i64> %1458, ptr %1455, align 1, !tbaa !34
  %1459 = icmp ult i64 %1446, 33
  br i1 %1459, label %1583, label %1460

1460:                                             ; preds = %1453
  %1461 = getelementptr inbounds nuw i8, ptr %1454, i64 32
  br label %1462

1462:                                             ; preds = %1462, %1460
  %1463 = phi ptr [ %1461, %1460 ], [ %1470, %1462 ]
  %1464 = phi ptr [ %1456, %1460 ], [ %1468, %1462 ]
  %1465 = getelementptr inbounds nuw i8, ptr %1464, i64 16
  %1466 = load <2 x i64>, ptr %1465, align 1, !tbaa !34
  store <2 x i64> %1466, ptr %1463, align 1, !tbaa !34
  %1467 = getelementptr inbounds nuw i8, ptr %1463, i64 16
  %1468 = getelementptr inbounds nuw i8, ptr %1464, i64 32
  %1469 = load <2 x i64>, ptr %1468, align 1, !tbaa !34
  store <2 x i64> %1469, ptr %1467, align 1, !tbaa !34
  %1470 = getelementptr inbounds nuw i8, ptr %1463, i64 32
  %1471 = icmp ult ptr %1470, %1457
  br i1 %1471, label %1462, label %.loopexit344, !llvm.loop !42

1472:                                             ; preds = %1441
  %1473 = icmp ugt ptr %924, %909
  br i1 %1473, label %.loopexit347, label %1474

1474:                                             ; preds = %1472
  %1475 = sub i64 %911, %1445
  %1476 = getelementptr inbounds i8, ptr %1449, i64 %1475
  %1477 = load <2 x i64>, ptr %924, align 1, !tbaa !34
  store <2 x i64> %1477, ptr %1449, align 1, !tbaa !34
  %1478 = icmp ult i64 %1475, 17
  br i1 %1478, label %.loopexit347, label %1479

1479:                                             ; preds = %1474
  %1480 = getelementptr inbounds nuw i8, ptr %1449, i64 16
  br label %1481

1481:                                             ; preds = %1481, %1479
  %1482 = phi ptr [ %1480, %1479 ], [ %1489, %1481 ]
  %1483 = phi ptr [ %924, %1479 ], [ %1487, %1481 ]
  %1484 = getelementptr inbounds nuw i8, ptr %1483, i64 16
  %1485 = load <2 x i64>, ptr %1484, align 1, !tbaa !34
  store <2 x i64> %1485, ptr %1482, align 1, !tbaa !34
  %1486 = getelementptr inbounds nuw i8, ptr %1482, i64 16
  %1487 = getelementptr inbounds nuw i8, ptr %1483, i64 32
  %1488 = load <2 x i64>, ptr %1487, align 1, !tbaa !34
  store <2 x i64> %1488, ptr %1486, align 1, !tbaa !34
  %1489 = getelementptr inbounds nuw i8, ptr %1482, i64 32
  %1490 = icmp ult ptr %1489, %1476
  br i1 %1490, label %1481, label %.loopexit347, !llvm.loop !42

.loopexit347:                                     ; preds = %1481, %1474, %1472
  %1491 = phi ptr [ %909, %1474 ], [ %924, %1472 ], [ %909, %1481 ]
  %1492 = phi ptr [ %1476, %1474 ], [ %1449, %1472 ], [ %1476, %1481 ]
  %1493 = icmp ult ptr %1491, %1444
  br i1 %1493, label %1494, label %.loopexit344

1494:                                             ; preds = %.loopexit347
  %1495 = ptrtoint ptr %1491 to i64
  %1496 = ptrtoint ptr %1492 to i64
  %1497 = sub i64 %1442, %1495
  %1498 = icmp ult i64 %1497, 4
  %1499 = sub i64 %1496, %1495
  %1500 = icmp ult i64 %1499, 32
  %1501 = select i1 %1498, i1 true, i1 %1500
  br i1 %1501, label %1537, label %1502

1502:                                             ; preds = %1494
  %1503 = icmp ult i64 %1497, 32
  br i1 %1503, label %1523, label %1504

1504:                                             ; preds = %1502
  %1505 = and i64 %1497, -32
  br label %1506

1506:                                             ; preds = %1506, %1504
  %1507 = phi i64 [ 0, %1504 ], [ %1514, %1506 ]
  %1508 = getelementptr i8, ptr %1492, i64 %1507
  %1509 = getelementptr i8, ptr %1491, i64 %1507
  %1510 = getelementptr i8, ptr %1509, i64 16
  %1511 = load <16 x i8>, ptr %1509, align 1, !tbaa !34
  %1512 = load <16 x i8>, ptr %1510, align 1, !tbaa !34
  %1513 = getelementptr i8, ptr %1508, i64 16
  store <16 x i8> %1511, ptr %1508, align 1, !tbaa !34
  store <16 x i8> %1512, ptr %1513, align 1, !tbaa !34
  %1514 = add nuw i64 %1507, 32
  %1515 = icmp eq i64 %1514, %1505
  br i1 %1515, label %1516, label %1506, !llvm.loop !116

1516:                                             ; preds = %1506
  %1517 = icmp eq i64 %1497, %1505
  br i1 %1517, label %.loopexit344, label %1518

1518:                                             ; preds = %1516
  %1519 = getelementptr i8, ptr %1492, i64 %1505
  %1520 = getelementptr i8, ptr %1491, i64 %1505
  %1521 = and i64 %1497, 28
  %1522 = icmp eq i64 %1521, 0
  br i1 %1522, label %1537, label %1523

1523:                                             ; preds = %1518, %1502
  %1524 = phi i64 [ %1505, %1518 ], [ 0, %1502 ]
  %1525 = and i64 %1497, -4
  br label %1526

1526:                                             ; preds = %1526, %1523
  %1527 = phi i64 [ %1524, %1523 ], [ %1531, %1526 ]
  %1528 = getelementptr i8, ptr %1492, i64 %1527
  %1529 = getelementptr i8, ptr %1491, i64 %1527
  %1530 = load <4 x i8>, ptr %1529, align 1, !tbaa !34
  store <4 x i8> %1530, ptr %1528, align 1, !tbaa !34
  %1531 = add nuw i64 %1527, 4
  %1532 = icmp eq i64 %1531, %1525
  br i1 %1532, label %1533, label %1526, !llvm.loop !117

1533:                                             ; preds = %1526
  %1534 = getelementptr i8, ptr %1492, i64 %1525
  %1535 = getelementptr i8, ptr %1491, i64 %1525
  %1536 = icmp eq i64 %1497, %1525
  br i1 %1536, label %.loopexit344, label %1537

1537:                                             ; preds = %1533, %1518, %1494
  %1538 = phi ptr [ %1492, %1494 ], [ %1519, %1518 ], [ %1534, %1533 ]
  %1539 = phi ptr [ %1491, %1494 ], [ %1520, %1518 ], [ %1535, %1533 ]
  %1540 = ptrtoint ptr %1539 to i64
  %1541 = sub i64 %1442, %1540
  %1542 = and i64 %1541, 7
  %1543 = icmp eq i64 %1542, 0
  br i1 %1543, label %.loopexit346, label %.preheader345

.preheader345:                                    ; preds = %1537, %.preheader345
  %1544 = phi ptr [ %1549, %.preheader345 ], [ %1538, %1537 ]
  %1545 = phi ptr [ %1547, %.preheader345 ], [ %1539, %1537 ]
  %1546 = phi i64 [ %1550, %.preheader345 ], [ 0, %1537 ]
  %1547 = getelementptr inbounds nuw i8, ptr %1545, i64 1
  %1548 = load i8, ptr %1545, align 1, !tbaa !34
  %1549 = getelementptr inbounds nuw i8, ptr %1544, i64 1
  store i8 %1548, ptr %1544, align 1, !tbaa !34
  %1550 = add nuw nsw i64 %1546, 1
  %1551 = icmp eq i64 %1550, %1542
  br i1 %1551, label %.loopexit346, label %.preheader345, !llvm.loop !118

.loopexit346:                                     ; preds = %.preheader345, %1537
  %1552 = phi ptr [ %1538, %1537 ], [ %1549, %.preheader345 ]
  %1553 = phi ptr [ %1539, %1537 ], [ %1547, %.preheader345 ]
  %1554 = sub i64 %1540, %1442
  %1555 = icmp ugt i64 %1554, -8
  br i1 %1555, label %.loopexit344, label %.preheader343

.preheader343:                                    ; preds = %.loopexit346, %.preheader343
  %1556 = phi ptr [ %1581, %.preheader343 ], [ %1552, %.loopexit346 ]
  %1557 = phi ptr [ %1579, %.preheader343 ], [ %1553, %.loopexit346 ]
  %1558 = getelementptr inbounds nuw i8, ptr %1557, i64 1
  %1559 = load i8, ptr %1557, align 1, !tbaa !34
  %1560 = getelementptr inbounds nuw i8, ptr %1556, i64 1
  store i8 %1559, ptr %1556, align 1, !tbaa !34
  %1561 = getelementptr inbounds nuw i8, ptr %1557, i64 2
  %1562 = load i8, ptr %1558, align 1, !tbaa !34
  %1563 = getelementptr inbounds nuw i8, ptr %1556, i64 2
  store i8 %1562, ptr %1560, align 1, !tbaa !34
  %1564 = getelementptr inbounds nuw i8, ptr %1557, i64 3
  %1565 = load i8, ptr %1561, align 1, !tbaa !34
  %1566 = getelementptr inbounds nuw i8, ptr %1556, i64 3
  store i8 %1565, ptr %1563, align 1, !tbaa !34
  %1567 = getelementptr inbounds nuw i8, ptr %1557, i64 4
  %1568 = load i8, ptr %1564, align 1, !tbaa !34
  %1569 = getelementptr inbounds nuw i8, ptr %1556, i64 4
  store i8 %1568, ptr %1566, align 1, !tbaa !34
  %1570 = getelementptr inbounds nuw i8, ptr %1557, i64 5
  %1571 = load i8, ptr %1567, align 1, !tbaa !34
  %1572 = getelementptr inbounds nuw i8, ptr %1556, i64 5
  store i8 %1571, ptr %1569, align 1, !tbaa !34
  %1573 = getelementptr inbounds nuw i8, ptr %1557, i64 6
  %1574 = load i8, ptr %1570, align 1, !tbaa !34
  %1575 = getelementptr inbounds nuw i8, ptr %1556, i64 6
  store i8 %1574, ptr %1572, align 1, !tbaa !34
  %1576 = getelementptr inbounds nuw i8, ptr %1557, i64 7
  %1577 = load i8, ptr %1573, align 1, !tbaa !34
  %1578 = getelementptr inbounds nuw i8, ptr %1556, i64 7
  store i8 %1577, ptr %1575, align 1, !tbaa !34
  %1579 = getelementptr inbounds nuw i8, ptr %1557, i64 8
  %1580 = load i8, ptr %1576, align 1, !tbaa !34
  %1581 = getelementptr inbounds nuw i8, ptr %1556, i64 8
  store i8 %1580, ptr %1578, align 1, !tbaa !34
  %1582 = icmp eq ptr %1579, %1444
  br i1 %1582, label %.loopexit344, label %.preheader343, !llvm.loop !119

1583:                                             ; preds = %1453, %1450
  %1584 = load ptr, ptr %910, align 8, !tbaa !39
  %1585 = getelementptr inbounds nuw i8, ptr %1584, i64 %1446
  store ptr %1585, ptr %910, align 8, !tbaa !39
  %1586 = load ptr, ptr %913, align 8, !tbaa !50
  br label %1598

.loopexit344:                                     ; preds = %1462, %.preheader343, %.loopexit346, %1533, %1516, %.loopexit347
  %1587 = load ptr, ptr %910, align 8, !tbaa !39
  %1588 = getelementptr inbounds nuw i8, ptr %1587, i64 %1446
  store ptr %1588, ptr %910, align 8, !tbaa !39
  %1589 = icmp ugt i64 %1446, 65535
  %1590 = load ptr, ptr %913, align 8, !tbaa !50
  br i1 %1589, label %1591, label %1598, !prof !51

1591:                                             ; preds = %.loopexit344
  store i32 1, ptr %912, align 8, !tbaa !52
  %1592 = load ptr, ptr %1, align 8, !tbaa !53
  %1593 = ptrtoint ptr %1590 to i64
  %1594 = ptrtoint ptr %1592 to i64
  %1595 = sub i64 %1593, %1594
  %1596 = lshr exact i64 %1595, 3
  %1597 = trunc i64 %1596 to i32
  store i32 %1597, ptr %914, align 4, !tbaa !54
  br label %1598

1598:                                             ; preds = %1591, %.loopexit344, %1583
  %1599 = phi ptr [ %1586, %1583 ], [ %1590, %1591 ], [ %1590, %.loopexit344 ]
  %1600 = trunc i64 %1446 to i16
  %1601 = getelementptr inbounds nuw i8, ptr %1599, i64 4
  store i16 %1600, ptr %1601, align 4, !tbaa !55
  store i32 %1447, ptr %1599, align 4, !tbaa !57
  %1602 = add i64 %1443, -3
  %1603 = icmp ugt i64 %1602, 65535
  br i1 %1603, label %1618, label %1631, !prof !58

1604:                                             ; preds = %1348, %1343
  %1605 = icmp uge ptr %942, %937
  %1606 = zext i1 %1605 to i64
  %1607 = add i64 %938, %1606
  %1608 = getelementptr inbounds nuw i8, ptr %942, i64 %1607
  %1609 = icmp ugt ptr %1608, %23
  br i1 %1609, label %.loopexit305, label %1610

1610:                                             ; preds = %1604
  %1611 = select i1 %1605, i64 256, i64 0
  %1612 = getelementptr inbounds nuw i8, ptr %937, i64 %1611
  %1613 = lshr i64 %956, 8
  %1614 = getelementptr inbounds nuw [4 x i8], ptr %30, i64 %1613
  %1615 = load i32, ptr %1614, align 4, !tbaa !23
  %1616 = zext i32 %1615 to i64
  %1617 = xor i64 %956, %1616
  br label %936

1618:                                             ; preds = %1598, %1337, %1136
  %1619 = phi ptr [ %1137, %1136 ], [ %1338, %1337 ], [ %1599, %1598 ]
  %1620 = phi i64 [ %1140, %1136 ], [ %1341, %1337 ], [ %1602, %1598 ]
  %1621 = phi i64 [ %977, %1136 ], [ %1182, %1337 ], [ %1443, %1598 ]
  %1622 = phi i32 [ %926, %1136 ], [ %925, %1337 ], [ %925, %1598 ]
  %1623 = phi i32 [ %925, %1136 ], [ %1157, %1337 ], [ %1353, %1598 ]
  %1624 = phi ptr [ %972, %1136 ], [ %1183, %1337 ], [ %1444, %1598 ]
  store i32 2, ptr %912, align 8, !tbaa !52
  %1625 = load ptr, ptr %1, align 8, !tbaa !53
  %1626 = ptrtoint ptr %1619 to i64
  %1627 = ptrtoint ptr %1625 to i64
  %1628 = sub i64 %1626, %1627
  %1629 = lshr exact i64 %1628, 3
  %1630 = trunc i64 %1629 to i32
  store i32 %1630, ptr %914, align 4, !tbaa !54
  br label %1631

1631:                                             ; preds = %1618, %1598, %1337, %1136
  %1632 = phi i64 [ %1140, %1136 ], [ %1341, %1337 ], [ %1602, %1598 ], [ %1620, %1618 ]
  %1633 = phi ptr [ %1137, %1136 ], [ %1338, %1337 ], [ %1599, %1598 ], [ %1619, %1618 ]
  %1634 = phi i64 [ %977, %1136 ], [ %1182, %1337 ], [ %1443, %1598 ], [ %1621, %1618 ]
  %1635 = phi i32 [ %926, %1136 ], [ %925, %1337 ], [ %925, %1598 ], [ %1622, %1618 ]
  %1636 = phi i32 [ %925, %1136 ], [ %1157, %1337 ], [ %1353, %1598 ], [ %1623, %1618 ]
  %1637 = phi ptr [ %972, %1136 ], [ %1183, %1337 ], [ %1444, %1598 ], [ %1624, %1618 ]
  %1638 = trunc i64 %1632 to i16
  %1639 = getelementptr inbounds nuw i8, ptr %1633, i64 6
  store i16 %1638, ptr %1639, align 2, !tbaa !59
  %1640 = getelementptr inbounds nuw i8, ptr %1633, i64 8
  store ptr %1640, ptr %913, align 8, !tbaa !50
  %1641 = getelementptr inbounds nuw i8, ptr %1637, i64 %1634
  %1642 = icmp ugt ptr %1641, %23
  br i1 %1642, label %.loopexit339, label %1643

1643:                                             ; preds = %1631
  %1644 = add i32 %951, 2
  %1645 = and i64 %950, 4294967295
  %1646 = getelementptr inbounds nuw i8, ptr %896, i64 %1645
  %1647 = load i64, ptr %1646, align 1, !tbaa !22
  %1648 = mul i64 %1647, -3523014627271114752
  %1649 = lshr i64 %1648, %906
  %1650 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %1649
  store i32 %1644, ptr %1650, align 4, !tbaa !23
  %1651 = getelementptr inbounds i8, ptr %1641, i64 -2
  %1652 = ptrtoint ptr %1651 to i64
  %1653 = sub i64 %1652, %52
  %1654 = trunc i64 %1653 to i32
  %1655 = load i64, ptr %1651, align 1, !tbaa !22
  %1656 = mul i64 %1655, -3523014627271114752
  %1657 = lshr i64 %1656, %906
  %1658 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %1657
  store i32 %1654, ptr %1658, align 4, !tbaa !23
  br label %1659

1659:                                             ; preds = %1700, %1643
  %1660 = phi ptr [ %1640, %1643 ], [ %1703, %1700 ]
  %1661 = phi ptr [ %1641, %1643 ], [ %1709, %1700 ]
  %1662 = phi i32 [ %1636, %1643 ], [ %1663, %1700 ]
  %1663 = phi i32 [ %1635, %1643 ], [ %1662, %1700 ]
  %1664 = ptrtoint ptr %1661 to i64
  %1665 = sub i64 %1664, %52
  %1666 = trunc i64 %1665 to i32
  %1667 = sub i32 %1666, %1663
  %1668 = icmp ult i32 %1667, %19
  %1669 = zext i32 %1667 to i64
  %1670 = select i1 %1668, ptr %920, ptr %16
  %1671 = getelementptr inbounds nuw i8, ptr %1670, i64 %1669
  %1672 = sub i32 %1667, %19
  %1673 = icmp ugt i32 %1672, -4
  br i1 %1673, label %.loopexit339, label %1674

1674:                                             ; preds = %1659
  %1675 = load i32, ptr %1671, align 1, !tbaa !23
  %1676 = load i32, ptr %1661, align 1, !tbaa !23
  %1677 = icmp eq i32 %1675, %1676
  br i1 %1677, label %1678, label %.loopexit339

1678:                                             ; preds = %1674
  %1679 = select i1 %1668, ptr %37, ptr %22
  %1680 = getelementptr inbounds nuw i8, ptr %1661, i64 4
  %1681 = getelementptr inbounds nuw i8, ptr %1671, i64 4
  %1682 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1680, ptr noundef nonnull %1681, ptr noundef %22, ptr noundef %1679, ptr noundef %21)
  %1683 = icmp ugt ptr %1661, %909
  br i1 %1683, label %1688, label %1684

1684:                                             ; preds = %1678
  %1685 = load ptr, ptr %910, align 8, !tbaa !39
  %1686 = load <2 x i64>, ptr %1661, align 1, !tbaa !34
  store <2 x i64> %1686, ptr %1685, align 1, !tbaa !34
  %1687 = load ptr, ptr %913, align 8, !tbaa !50
  br label %1688

1688:                                             ; preds = %1684, %1678
  %1689 = phi ptr [ %1660, %1678 ], [ %1687, %1684 ]
  %1690 = getelementptr inbounds nuw i8, ptr %1689, i64 4
  store i16 0, ptr %1690, align 4, !tbaa !55
  store i32 1, ptr %1689, align 4, !tbaa !57
  %1691 = add i64 %1682, 1
  %1692 = icmp ugt i64 %1691, 65535
  br i1 %1692, label %1693, label %1700, !prof !58

1693:                                             ; preds = %1688
  store i32 2, ptr %912, align 8, !tbaa !52
  %1694 = load ptr, ptr %1, align 8, !tbaa !53
  %1695 = ptrtoint ptr %1689 to i64
  %1696 = ptrtoint ptr %1694 to i64
  %1697 = sub i64 %1695, %1696
  %1698 = lshr exact i64 %1697, 3
  %1699 = trunc i64 %1698 to i32
  store i32 %1699, ptr %914, align 4, !tbaa !54
  br label %1700

1700:                                             ; preds = %1693, %1688
  %1701 = trunc i64 %1691 to i16
  %1702 = getelementptr inbounds nuw i8, ptr %1689, i64 6
  store i16 %1701, ptr %1702, align 2, !tbaa !59
  %1703 = getelementptr inbounds nuw i8, ptr %1689, i64 8
  store ptr %1703, ptr %913, align 8, !tbaa !50
  %1704 = load i64, ptr %1661, align 1, !tbaa !22
  %1705 = mul i64 %1704, -3523014627271114752
  %1706 = lshr i64 %1705, %906
  %1707 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %1706
  store i32 %1666, ptr %1707, align 4, !tbaa !23
  %1708 = getelementptr i8, ptr %1661, i64 %1682
  %1709 = getelementptr i8, ptr %1708, i64 4
  %1710 = icmp ugt ptr %1709, %23
  br i1 %1710, label %.loopexit339, label %1659

.loopexit339:                                     ; preds = %1700, %1674, %1659, %1631
  %1711 = phi i32 [ %1635, %1631 ], [ %1663, %1659 ], [ %1663, %1674 ], [ %1662, %1700 ]
  %1712 = phi i32 [ %1636, %1631 ], [ %1662, %1659 ], [ %1662, %1674 ], [ %1663, %1700 ]
  %1713 = phi ptr [ %1641, %1631 ], [ %1661, %1659 ], [ %1661, %1674 ], [ %1709, %1700 ]
  %1714 = getelementptr inbounds nuw i8, ptr %1713, i64 %17
  %1715 = icmp ugt ptr %1714, %23
  br i1 %1715, label %.loopexit305, label %921

1716:                                             ; preds = %5
  br i1 %55, label %.loopexit398, label %1717

1717:                                             ; preds = %1716
  %1718 = zext nneg i32 %51 to i64
  %1719 = shl i64 4, %1718
  %1720 = icmp ugt i32 %51, 61
  br i1 %1720, label %.loopexit398, label %.preheader397

.preheader397:                                    ; preds = %1717, %.preheader397
  %1721 = phi i64 [ %1723, %.preheader397 ], [ 0, %1717 ]
  %1722 = getelementptr inbounds nuw i8, ptr %30, i64 %1721
  tail call void @llvm.prefetch.p0(ptr %1722, i32 0, i32 2, i32 1)
  %1723 = add i64 %1721, 64
  %1724 = icmp ult i64 %1723, %1719
  br i1 %1724, label %.preheader397, label %.loopexit398, !llvm.loop !91

.loopexit398:                                     ; preds = %.preheader397, %1717, %1716
  %1725 = getelementptr inbounds nuw i8, ptr %16, i64 2
  %1726 = add nsw i64 %4, -8
  %1727 = icmp slt i64 %1726, %17
  br i1 %1727, label %.loopexit305, label %1728

1728:                                             ; preds = %.loopexit398
  %1729 = getelementptr inbounds nuw i8, ptr %3, i64 %17
  %1730 = and i64 %49, 4294967295
  %1731 = icmp eq i64 %1730, 0
  %1732 = zext i1 %1731 to i64
  %1733 = getelementptr inbounds nuw i8, ptr %3, i64 %1732
  %1734 = sub i32 64, %11
  %1735 = zext nneg i32 %1734 to i64
  %1736 = sub i32 56, %51
  %1737 = zext nneg i32 %1736 to i64
  %1738 = getelementptr inbounds i8, ptr %22, i64 -32
  %1739 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %1740 = ptrtoint ptr %1738 to i64
  %1741 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %1742 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %1743 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %1744 = getelementptr inbounds i8, ptr %22, i64 -7
  %1745 = getelementptr inbounds i8, ptr %22, i64 -3
  %1746 = getelementptr inbounds i8, ptr %22, i64 -1
  %1747 = zext i32 %42 to i64
  %1748 = sub nsw i64 0, %1747
  %1749 = getelementptr inbounds i8, ptr %34, i64 %1748
  br label %1750

1750:                                             ; preds = %.loopexit369, %1728
  %1751 = phi ptr [ %1729, %1728 ], [ %2543, %.loopexit369 ]
  %1752 = phi ptr [ %1733, %1728 ], [ %2542, %.loopexit369 ]
  %1753 = phi ptr [ %3, %1728 ], [ %2542, %.loopexit369 ]
  %1754 = phi i32 [ %24, %1728 ], [ %2541, %.loopexit369 ]
  %1755 = phi i32 [ %26, %1728 ], [ %2540, %.loopexit369 ]
  %1756 = load i64, ptr %1752, align 1, !tbaa !22
  %1757 = mul i64 %1756, -3523014627193847808
  %1758 = lshr i64 %1757, %1737
  %1759 = lshr i64 %1758, 8
  %1760 = getelementptr inbounds nuw [4 x i8], ptr %30, i64 %1759
  %1761 = load i32, ptr %1760, align 4, !tbaa !23
  %1762 = zext i32 %1761 to i64
  %1763 = xor i64 %1758, %1762
  %1764 = getelementptr inbounds nuw i8, ptr %1752, i64 256
  %invariant.op = sub i32 1, %1754
  br label %1765

1765:                                             ; preds = %2439, %1750
  %1766 = phi ptr [ %1764, %1750 ], [ %2441, %2439 ]
  %1767 = phi i64 [ %17, %1750 ], [ %2436, %2439 ]
  %1768 = phi i64 [ %1763, %1750 ], [ %2446, %2439 ]
  %1769 = phi i32 [ %1761, %1750 ], [ %2444, %2439 ]
  %1770 = phi i64 [ %1757, %1750 ], [ %1784, %2439 ]
  %1771 = phi ptr [ %1751, %1750 ], [ %2437, %2439 ]
  %1772 = phi ptr [ %1752, %1750 ], [ %1771, %2439 ]
  %1773 = lshr i64 %1770, %1735
  %1774 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %1773
  %1775 = load i32, ptr %1774, align 4, !tbaa !23
  %1776 = and i64 %1768, 255
  %1777 = icmp eq i64 %1776, 0
  %1778 = ptrtoint ptr %1772 to i64
  %1779 = sub i64 %1778, %52
  %1780 = trunc i64 %1779 to i32
  %1781 = zext i32 %1775 to i64
  %1782 = getelementptr inbounds nuw i8, ptr %16, i64 %1781
  %.reass.reass.reass.reass.reass.reass = add i32 %1780, %invariant.op
  %1783 = load i64, ptr %1771, align 1, !tbaa !22
  %1784 = mul i64 %1783, -3523014627193847808
  %1785 = lshr i64 %1784, %1737
  store i32 %1780, ptr %1774, align 4, !tbaa !23
  %1786 = sub i32 %.reass.reass.reass.reass.reass.reass, %19
  %1787 = icmp ugt i32 %1786, -4
  br i1 %1787, label %1971, label %1788

1788:                                             ; preds = %1765
  %1789 = icmp ult i32 %.reass.reass.reass.reass.reass.reass, %19
  %1790 = sub i32 %.reass.reass.reass.reass.reass.reass, %42
  %1791 = zext i32 %1790 to i64
  %1792 = getelementptr inbounds nuw i8, ptr %34, i64 %1791
  %1793 = zext i32 %.reass.reass.reass.reass.reass.reass to i64
  %1794 = getelementptr inbounds nuw i8, ptr %16, i64 %1793
  %1795 = select i1 %1789, ptr %1792, ptr %1794
  %1796 = load i32, ptr %1795, align 1, !tbaa !23
  %1797 = getelementptr inbounds nuw i8, ptr %1772, i64 1
  %1798 = load i32, ptr %1797, align 1, !tbaa !23
  %1799 = icmp eq i32 %1796, %1798
  br i1 %1799, label %1800, label %1971

1800:                                             ; preds = %1788
  %1801 = getelementptr inbounds nuw i8, ptr %1772, i64 1
  %1802 = select i1 %1789, ptr %37, ptr %22
  %1803 = getelementptr inbounds nuw i8, ptr %1772, i64 5
  %1804 = getelementptr inbounds nuw i8, ptr %1795, i64 4
  %1805 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1803, ptr noundef nonnull %1804, ptr noundef %22, ptr noundef %1802, ptr noundef %21)
  %1806 = add i64 %1805, 4
  %1807 = ptrtoint ptr %1801 to i64
  %1808 = ptrtoint ptr %1753 to i64
  %1809 = sub i64 %1807, %1808
  %1810 = icmp ugt ptr %1801, %1738
  %1811 = load ptr, ptr %1739, align 8, !tbaa !39
  br i1 %1810, label %1834, label %1812

1812:                                             ; preds = %1800
  %1813 = load <2 x i64>, ptr %1753, align 1, !tbaa !34
  store <2 x i64> %1813, ptr %1811, align 1, !tbaa !34
  %1814 = icmp ugt i64 %1809, 16
  br i1 %1814, label %1815, label %1950

1815:                                             ; preds = %1812
  %1816 = load ptr, ptr %1739, align 8, !tbaa !39
  %1817 = getelementptr inbounds nuw i8, ptr %1816, i64 16
  %1818 = getelementptr inbounds nuw i8, ptr %1753, i64 16
  %1819 = getelementptr i8, ptr %1816, i64 %1809
  %1820 = load <2 x i64>, ptr %1818, align 1, !tbaa !34
  store <2 x i64> %1820, ptr %1817, align 1, !tbaa !34
  %1821 = icmp ult i64 %1809, 33
  br i1 %1821, label %1950, label %1822

1822:                                             ; preds = %1815
  %1823 = getelementptr inbounds nuw i8, ptr %1816, i64 32
  br label %1824

1824:                                             ; preds = %1824, %1822
  %1825 = phi ptr [ %1823, %1822 ], [ %1832, %1824 ]
  %1826 = phi ptr [ %1818, %1822 ], [ %1830, %1824 ]
  %1827 = getelementptr inbounds nuw i8, ptr %1826, i64 16
  %1828 = load <2 x i64>, ptr %1827, align 1, !tbaa !34
  store <2 x i64> %1828, ptr %1825, align 1, !tbaa !34
  %1829 = getelementptr inbounds nuw i8, ptr %1825, i64 16
  %1830 = getelementptr inbounds nuw i8, ptr %1826, i64 32
  %1831 = load <2 x i64>, ptr %1830, align 1, !tbaa !34
  store <2 x i64> %1831, ptr %1829, align 1, !tbaa !34
  %1832 = getelementptr inbounds nuw i8, ptr %1825, i64 32
  %1833 = icmp ult ptr %1832, %1819
  br i1 %1833, label %1824, label %.loopexit390, !llvm.loop !42

1834:                                             ; preds = %1800
  %1835 = icmp ugt ptr %1753, %1738
  br i1 %1835, label %.loopexit393, label %1836

1836:                                             ; preds = %1834
  %1837 = sub i64 %1740, %1808
  %1838 = getelementptr inbounds i8, ptr %1811, i64 %1837
  %1839 = load <2 x i64>, ptr %1753, align 1, !tbaa !34
  store <2 x i64> %1839, ptr %1811, align 1, !tbaa !34
  %1840 = icmp ult i64 %1837, 17
  br i1 %1840, label %.loopexit393, label %1841

1841:                                             ; preds = %1836
  %1842 = getelementptr inbounds nuw i8, ptr %1811, i64 16
  br label %1843

1843:                                             ; preds = %1843, %1841
  %1844 = phi ptr [ %1842, %1841 ], [ %1851, %1843 ]
  %1845 = phi ptr [ %1753, %1841 ], [ %1849, %1843 ]
  %1846 = getelementptr inbounds nuw i8, ptr %1845, i64 16
  %1847 = load <2 x i64>, ptr %1846, align 1, !tbaa !34
  store <2 x i64> %1847, ptr %1844, align 1, !tbaa !34
  %1848 = getelementptr inbounds nuw i8, ptr %1844, i64 16
  %1849 = getelementptr inbounds nuw i8, ptr %1845, i64 32
  %1850 = load <2 x i64>, ptr %1849, align 1, !tbaa !34
  store <2 x i64> %1850, ptr %1848, align 1, !tbaa !34
  %1851 = getelementptr inbounds nuw i8, ptr %1844, i64 32
  %1852 = icmp ult ptr %1851, %1838
  br i1 %1852, label %1843, label %.loopexit393, !llvm.loop !42

.loopexit393:                                     ; preds = %1843, %1836, %1834
  %1853 = phi ptr [ %1738, %1836 ], [ %1753, %1834 ], [ %1738, %1843 ]
  %1854 = phi ptr [ %1838, %1836 ], [ %1811, %1834 ], [ %1838, %1843 ]
  %1855 = icmp ult ptr %1853, %1801
  br i1 %1855, label %1856, label %.loopexit390

1856:                                             ; preds = %.loopexit393
  %1857 = ptrtoint ptr %1853 to i64
  %1858 = ptrtoint ptr %1854 to i64
  %1859 = sub i64 %1778, %1857
  %1860 = add i64 %1859, 1
  %1861 = icmp ult i64 %1860, 4
  %1862 = sub i64 %1858, %1857
  %1863 = icmp ult i64 %1862, 32
  %1864 = select i1 %1861, i1 true, i1 %1863
  br i1 %1864, label %1900, label %1865

1865:                                             ; preds = %1856
  %1866 = icmp ult i64 %1860, 32
  br i1 %1866, label %1886, label %1867

1867:                                             ; preds = %1865
  %1868 = and i64 %1860, -32
  br label %1869

1869:                                             ; preds = %1869, %1867
  %1870 = phi i64 [ 0, %1867 ], [ %1877, %1869 ]
  %1871 = getelementptr i8, ptr %1854, i64 %1870
  %1872 = getelementptr i8, ptr %1853, i64 %1870
  %1873 = getelementptr i8, ptr %1872, i64 16
  %1874 = load <16 x i8>, ptr %1872, align 1, !tbaa !34
  %1875 = load <16 x i8>, ptr %1873, align 1, !tbaa !34
  %1876 = getelementptr i8, ptr %1871, i64 16
  store <16 x i8> %1874, ptr %1871, align 1, !tbaa !34
  store <16 x i8> %1875, ptr %1876, align 1, !tbaa !34
  %1877 = add nuw i64 %1870, 32
  %1878 = icmp eq i64 %1877, %1868
  br i1 %1878, label %1879, label %1869, !llvm.loop !120

1879:                                             ; preds = %1869
  %1880 = icmp eq i64 %1860, %1868
  br i1 %1880, label %.loopexit390, label %1881

1881:                                             ; preds = %1879
  %1882 = getelementptr i8, ptr %1854, i64 %1868
  %1883 = getelementptr i8, ptr %1853, i64 %1868
  %1884 = and i64 %1860, 28
  %1885 = icmp eq i64 %1884, 0
  br i1 %1885, label %1900, label %1886

1886:                                             ; preds = %1881, %1865
  %1887 = phi i64 [ %1868, %1881 ], [ 0, %1865 ]
  %1888 = and i64 %1860, -4
  br label %1889

1889:                                             ; preds = %1889, %1886
  %1890 = phi i64 [ %1887, %1886 ], [ %1894, %1889 ]
  %1891 = getelementptr i8, ptr %1854, i64 %1890
  %1892 = getelementptr i8, ptr %1853, i64 %1890
  %1893 = load <4 x i8>, ptr %1892, align 1, !tbaa !34
  store <4 x i8> %1893, ptr %1891, align 1, !tbaa !34
  %1894 = add nuw i64 %1890, 4
  %1895 = icmp eq i64 %1894, %1888
  br i1 %1895, label %1896, label %1889, !llvm.loop !121

1896:                                             ; preds = %1889
  %1897 = getelementptr i8, ptr %1854, i64 %1888
  %1898 = getelementptr i8, ptr %1853, i64 %1888
  %1899 = icmp eq i64 %1860, %1888
  br i1 %1899, label %.loopexit390, label %1900

1900:                                             ; preds = %1896, %1881, %1856
  %1901 = phi ptr [ %1854, %1856 ], [ %1882, %1881 ], [ %1897, %1896 ]
  %1902 = phi ptr [ %1853, %1856 ], [ %1883, %1881 ], [ %1898, %1896 ]
  %1903 = ptrtoint ptr %1902 to i64
  %1904 = sub i64 %1778, %1903
  %1905 = add i64 %1904, 1
  %1906 = and i64 %1905, 7
  %1907 = and i64 %1904, 7
  %1908 = icmp eq i64 %1907, 7
  br i1 %1908, label %.preheader389.preheader, label %.preheader391.preheader

.preheader391.preheader:                          ; preds = %1900
  %1909 = ptrtoaddr ptr %1901 to i64
  %min.iters.check = icmp samesign ult i64 %1906, 4
  %1910 = sub i64 %1909, %1903
  %diff.check = icmp ult i64 %1910, 4
  %or.cond1673 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1673, label %.preheader391.preheader1730, label %vector.ph

vector.ph:                                        ; preds = %.preheader391.preheader
  %n.vec = and i64 %1905, 4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i8, ptr %1901, i64 %index
  %next.gep1615 = getelementptr i8, ptr %1902, i64 %index
  %wide.load = load <4 x i8>, ptr %next.gep1615, align 1, !tbaa !34
  store <4 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 4
  %1911 = icmp eq i64 %index.next, %n.vec
  br i1 %1911, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %1912 = getelementptr i8, ptr %1901, i64 4
  %1913 = getelementptr i8, ptr %1902, i64 4
  %cmp.n = icmp eq i64 %1906, 4
  br i1 %cmp.n, label %.loopexit392, label %.preheader391.preheader1730

.preheader391.preheader1730:                      ; preds = %middle.block, %.preheader391.preheader
  %.ph1731 = phi ptr [ %1912, %middle.block ], [ %1901, %.preheader391.preheader ]
  %.ph1732 = phi ptr [ %1913, %middle.block ], [ %1902, %.preheader391.preheader ]
  %.ph1733 = phi i64 [ 4, %middle.block ], [ 0, %.preheader391.preheader ]
  br label %.preheader391

.preheader391:                                    ; preds = %.preheader391.preheader1730, %.preheader391
  %1914 = phi ptr [ %1919, %.preheader391 ], [ %.ph1731, %.preheader391.preheader1730 ]
  %1915 = phi ptr [ %1917, %.preheader391 ], [ %.ph1732, %.preheader391.preheader1730 ]
  %1916 = phi i64 [ %1920, %.preheader391 ], [ %.ph1733, %.preheader391.preheader1730 ]
  %1917 = getelementptr inbounds nuw i8, ptr %1915, i64 1
  %1918 = load i8, ptr %1915, align 1, !tbaa !34
  %1919 = getelementptr inbounds nuw i8, ptr %1914, i64 1
  store i8 %1918, ptr %1914, align 1, !tbaa !34
  %1920 = add i64 %1916, 1
  %1921 = icmp eq i64 %1920, %1906
  br i1 %1921, label %.loopexit392, label %.preheader391, !llvm.loop !123

.loopexit392:                                     ; preds = %.preheader391, %middle.block
  %.lcssa1595 = phi ptr [ %1913, %middle.block ], [ %1917, %.preheader391 ]
  %.lcssa1594 = phi ptr [ %1912, %middle.block ], [ %1919, %.preheader391 ]
  %1922 = icmp ult i64 %1904, 7
  br i1 %1922, label %.loopexit390, label %.preheader389.preheader

.preheader389.preheader:                          ; preds = %.loopexit392, %1900
  %.ph1728 = phi ptr [ %.lcssa1594, %.loopexit392 ], [ %1901, %1900 ]
  %.ph1729 = phi ptr [ %.lcssa1595, %.loopexit392 ], [ %1902, %1900 ]
  br label %.preheader389

.preheader389:                                    ; preds = %.preheader389.preheader, %.preheader389
  %1923 = phi ptr [ %1948, %.preheader389 ], [ %.ph1728, %.preheader389.preheader ]
  %1924 = phi ptr [ %1946, %.preheader389 ], [ %.ph1729, %.preheader389.preheader ]
  %1925 = getelementptr inbounds nuw i8, ptr %1924, i64 1
  %1926 = load i8, ptr %1924, align 1, !tbaa !34
  %1927 = getelementptr inbounds nuw i8, ptr %1923, i64 1
  store i8 %1926, ptr %1923, align 1, !tbaa !34
  %1928 = getelementptr inbounds nuw i8, ptr %1924, i64 2
  %1929 = load i8, ptr %1925, align 1, !tbaa !34
  %1930 = getelementptr inbounds nuw i8, ptr %1923, i64 2
  store i8 %1929, ptr %1927, align 1, !tbaa !34
  %1931 = getelementptr inbounds nuw i8, ptr %1924, i64 3
  %1932 = load i8, ptr %1928, align 1, !tbaa !34
  %1933 = getelementptr inbounds nuw i8, ptr %1923, i64 3
  store i8 %1932, ptr %1930, align 1, !tbaa !34
  %1934 = getelementptr inbounds nuw i8, ptr %1924, i64 4
  %1935 = load i8, ptr %1931, align 1, !tbaa !34
  %1936 = getelementptr inbounds nuw i8, ptr %1923, i64 4
  store i8 %1935, ptr %1933, align 1, !tbaa !34
  %1937 = getelementptr inbounds nuw i8, ptr %1924, i64 5
  %1938 = load i8, ptr %1934, align 1, !tbaa !34
  %1939 = getelementptr inbounds nuw i8, ptr %1923, i64 5
  store i8 %1938, ptr %1936, align 1, !tbaa !34
  %1940 = getelementptr inbounds nuw i8, ptr %1924, i64 6
  %1941 = load i8, ptr %1937, align 1, !tbaa !34
  %1942 = getelementptr inbounds nuw i8, ptr %1923, i64 6
  store i8 %1941, ptr %1939, align 1, !tbaa !34
  %1943 = getelementptr inbounds nuw i8, ptr %1924, i64 7
  %1944 = load i8, ptr %1940, align 1, !tbaa !34
  %1945 = getelementptr inbounds nuw i8, ptr %1923, i64 7
  store i8 %1944, ptr %1942, align 1, !tbaa !34
  %1946 = getelementptr inbounds nuw i8, ptr %1924, i64 8
  %1947 = load i8, ptr %1943, align 1, !tbaa !34
  %1948 = getelementptr inbounds nuw i8, ptr %1923, i64 8
  store i8 %1947, ptr %1945, align 1, !tbaa !34
  %1949 = icmp eq ptr %1943, %1772
  br i1 %1949, label %.loopexit390, label %.preheader389, !llvm.loop !124

1950:                                             ; preds = %1815, %1812
  %1951 = load ptr, ptr %1739, align 8, !tbaa !39
  %1952 = getelementptr inbounds nuw i8, ptr %1951, i64 %1809
  store ptr %1952, ptr %1739, align 8, !tbaa !39
  %1953 = load ptr, ptr %1742, align 8, !tbaa !50
  br label %1965

.loopexit390:                                     ; preds = %1824, %.preheader389, %.loopexit392, %1896, %1879, %.loopexit393
  %1954 = load ptr, ptr %1739, align 8, !tbaa !39
  %1955 = getelementptr inbounds nuw i8, ptr %1954, i64 %1809
  store ptr %1955, ptr %1739, align 8, !tbaa !39
  %1956 = icmp ugt i64 %1809, 65535
  %1957 = load ptr, ptr %1742, align 8, !tbaa !50
  br i1 %1956, label %1958, label %1965, !prof !51

1958:                                             ; preds = %.loopexit390
  store i32 1, ptr %1741, align 8, !tbaa !52
  %1959 = load ptr, ptr %1, align 8, !tbaa !53
  %1960 = ptrtoint ptr %1957 to i64
  %1961 = ptrtoint ptr %1959 to i64
  %1962 = sub i64 %1960, %1961
  %1963 = lshr exact i64 %1962, 3
  %1964 = trunc i64 %1963 to i32
  store i32 %1964, ptr %1743, align 4, !tbaa !54
  br label %1965

1965:                                             ; preds = %1958, %.loopexit390, %1950
  %1966 = phi ptr [ %1953, %1950 ], [ %1957, %1958 ], [ %1957, %.loopexit390 ]
  %1967 = trunc i64 %1809 to i16
  %1968 = getelementptr inbounds nuw i8, ptr %1966, i64 4
  store i16 %1967, ptr %1968, align 4, !tbaa !55
  store i32 1, ptr %1966, align 4, !tbaa !57
  %1969 = add i64 %1805, 1
  %1970 = icmp ugt i64 %1969, 65535
  br i1 %1970, label %2447, label %2460, !prof !58

1971:                                             ; preds = %1788, %1765
  br i1 %1777, label %1972, label %2172

1972:                                             ; preds = %1971
  %1973 = lshr i32 %1769, 8
  %1974 = icmp ugt i32 %1973, %32
  br i1 %1974, label %1975, label %2172

1975:                                             ; preds = %1972
  %1976 = zext nneg i32 %1973 to i64
  %1977 = getelementptr inbounds nuw i8, ptr %34, i64 %1976
  %1978 = load i32, ptr %1977, align 1, !tbaa !23
  %1979 = load i32, ptr %1772, align 1, !tbaa !23
  %1980 = icmp ne i32 %1978, %1979
  %1981 = icmp ugt i32 %1775, %19
  %1982 = select i1 %1980, i1 true, i1 %1981
  br i1 %1982, label %2172, label %1983

1983:                                             ; preds = %1975
  %1984 = getelementptr inbounds nuw i8, ptr %34, i64 %1976
  %1985 = add i32 %1973, %42
  %1986 = sub i32 %1780, %1985
  %1987 = getelementptr inbounds nuw i8, ptr %1772, i64 4
  %1988 = getelementptr inbounds nuw i8, ptr %1984, i64 4
  %1989 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1987, ptr noundef nonnull %1988, ptr noundef %22, ptr noundef %37, ptr noundef %21)
  %1990 = add i64 %1989, 4
  %1991 = icmp ugt ptr %1772, %1753
  br i1 %1991, label %.preheader388, label %2009

.preheader388:                                    ; preds = %1983, %2000
  %1992 = phi ptr [ %1995, %2000 ], [ %1772, %1983 ]
  %1993 = phi i64 [ %2001, %2000 ], [ %1990, %1983 ]
  %1994 = phi ptr [ %1997, %2000 ], [ %1984, %1983 ]
  %1995 = getelementptr inbounds i8, ptr %1992, i64 -1
  %1996 = load i8, ptr %1995, align 1, !tbaa !34
  %1997 = getelementptr inbounds i8, ptr %1994, i64 -1
  %1998 = load i8, ptr %1997, align 1, !tbaa !34
  %1999 = icmp eq i8 %1996, %1998
  br i1 %1999, label %2000, label %2005

2000:                                             ; preds = %.preheader388
  %2001 = add i64 %1993, 1
  %2002 = icmp ugt ptr %1995, %1753
  %2003 = icmp ugt ptr %1997, %36
  %2004 = and i1 %2002, %2003
  br i1 %2004, label %.preheader388, label %2005, !llvm.loop !97

2005:                                             ; preds = %2000, %.preheader388
  %2006 = phi i64 [ %2001, %2000 ], [ %1993, %.preheader388 ]
  %2007 = phi ptr [ %1995, %2000 ], [ %1992, %.preheader388 ]
  %2008 = ptrtoint ptr %2007 to i64
  br label %2009

2009:                                             ; preds = %2005, %1983
  %2010 = phi i64 [ %2008, %2005 ], [ %1778, %1983 ]
  %2011 = phi i64 [ %2006, %2005 ], [ %1990, %1983 ]
  %2012 = phi ptr [ %2007, %2005 ], [ %1772, %1983 ]
  %2013 = ptrtoint ptr %1753 to i64
  %2014 = sub i64 %2010, %2013
  %2015 = add i32 %1986, 3
  %2016 = icmp ugt ptr %2012, %1738
  %2017 = load ptr, ptr %1739, align 8, !tbaa !39
  br i1 %2016, label %2040, label %2018

2018:                                             ; preds = %2009
  %2019 = load <2 x i64>, ptr %1753, align 1, !tbaa !34
  store <2 x i64> %2019, ptr %2017, align 1, !tbaa !34
  %2020 = icmp ugt i64 %2014, 16
  br i1 %2020, label %2021, label %2151

2021:                                             ; preds = %2018
  %2022 = load ptr, ptr %1739, align 8, !tbaa !39
  %2023 = getelementptr inbounds nuw i8, ptr %2022, i64 16
  %2024 = getelementptr inbounds nuw i8, ptr %1753, i64 16
  %2025 = getelementptr i8, ptr %2022, i64 %2014
  %2026 = load <2 x i64>, ptr %2024, align 1, !tbaa !34
  store <2 x i64> %2026, ptr %2023, align 1, !tbaa !34
  %2027 = icmp ult i64 %2014, 33
  br i1 %2027, label %2151, label %2028

2028:                                             ; preds = %2021
  %2029 = getelementptr inbounds nuw i8, ptr %2022, i64 32
  br label %2030

2030:                                             ; preds = %2030, %2028
  %2031 = phi ptr [ %2029, %2028 ], [ %2038, %2030 ]
  %2032 = phi ptr [ %2024, %2028 ], [ %2036, %2030 ]
  %2033 = getelementptr inbounds nuw i8, ptr %2032, i64 16
  %2034 = load <2 x i64>, ptr %2033, align 1, !tbaa !34
  store <2 x i64> %2034, ptr %2031, align 1, !tbaa !34
  %2035 = getelementptr inbounds nuw i8, ptr %2031, i64 16
  %2036 = getelementptr inbounds nuw i8, ptr %2032, i64 32
  %2037 = load <2 x i64>, ptr %2036, align 1, !tbaa !34
  store <2 x i64> %2037, ptr %2035, align 1, !tbaa !34
  %2038 = getelementptr inbounds nuw i8, ptr %2031, i64 32
  %2039 = icmp ult ptr %2038, %2025
  br i1 %2039, label %2030, label %.loopexit383, !llvm.loop !42

2040:                                             ; preds = %2009
  %2041 = icmp ugt ptr %1753, %1738
  br i1 %2041, label %.loopexit386, label %2042

2042:                                             ; preds = %2040
  %2043 = sub i64 %1740, %2013
  %2044 = getelementptr inbounds i8, ptr %2017, i64 %2043
  %2045 = load <2 x i64>, ptr %1753, align 1, !tbaa !34
  store <2 x i64> %2045, ptr %2017, align 1, !tbaa !34
  %2046 = icmp ult i64 %2043, 17
  br i1 %2046, label %.loopexit386, label %2047

2047:                                             ; preds = %2042
  %2048 = getelementptr inbounds nuw i8, ptr %2017, i64 16
  br label %2049

2049:                                             ; preds = %2049, %2047
  %2050 = phi ptr [ %2048, %2047 ], [ %2057, %2049 ]
  %2051 = phi ptr [ %1753, %2047 ], [ %2055, %2049 ]
  %2052 = getelementptr inbounds nuw i8, ptr %2051, i64 16
  %2053 = load <2 x i64>, ptr %2052, align 1, !tbaa !34
  store <2 x i64> %2053, ptr %2050, align 1, !tbaa !34
  %2054 = getelementptr inbounds nuw i8, ptr %2050, i64 16
  %2055 = getelementptr inbounds nuw i8, ptr %2051, i64 32
  %2056 = load <2 x i64>, ptr %2055, align 1, !tbaa !34
  store <2 x i64> %2056, ptr %2054, align 1, !tbaa !34
  %2057 = getelementptr inbounds nuw i8, ptr %2050, i64 32
  %2058 = icmp ult ptr %2057, %2044
  br i1 %2058, label %2049, label %.loopexit386, !llvm.loop !42

.loopexit386:                                     ; preds = %2049, %2042, %2040
  %2059 = phi ptr [ %1738, %2042 ], [ %1753, %2040 ], [ %1738, %2049 ]
  %2060 = phi ptr [ %2044, %2042 ], [ %2017, %2040 ], [ %2044, %2049 ]
  %2061 = icmp ult ptr %2059, %2012
  br i1 %2061, label %2062, label %.loopexit383

2062:                                             ; preds = %.loopexit386
  %2063 = ptrtoint ptr %2059 to i64
  %2064 = ptrtoint ptr %2060 to i64
  %2065 = sub i64 %2010, %2063
  %2066 = icmp ult i64 %2065, 4
  %2067 = sub i64 %2064, %2063
  %2068 = icmp ult i64 %2067, 32
  %2069 = select i1 %2066, i1 true, i1 %2068
  br i1 %2069, label %2105, label %2070

2070:                                             ; preds = %2062
  %2071 = icmp ult i64 %2065, 32
  br i1 %2071, label %2091, label %2072

2072:                                             ; preds = %2070
  %2073 = and i64 %2065, -32
  br label %2074

2074:                                             ; preds = %2074, %2072
  %2075 = phi i64 [ 0, %2072 ], [ %2082, %2074 ]
  %2076 = getelementptr i8, ptr %2060, i64 %2075
  %2077 = getelementptr i8, ptr %2059, i64 %2075
  %2078 = getelementptr i8, ptr %2077, i64 16
  %2079 = load <16 x i8>, ptr %2077, align 1, !tbaa !34
  %2080 = load <16 x i8>, ptr %2078, align 1, !tbaa !34
  %2081 = getelementptr i8, ptr %2076, i64 16
  store <16 x i8> %2079, ptr %2076, align 1, !tbaa !34
  store <16 x i8> %2080, ptr %2081, align 1, !tbaa !34
  %2082 = add nuw i64 %2075, 32
  %2083 = icmp eq i64 %2082, %2073
  br i1 %2083, label %2084, label %2074, !llvm.loop !125

2084:                                             ; preds = %2074
  %2085 = icmp eq i64 %2065, %2073
  br i1 %2085, label %.loopexit383, label %2086

2086:                                             ; preds = %2084
  %2087 = getelementptr i8, ptr %2060, i64 %2073
  %2088 = getelementptr i8, ptr %2059, i64 %2073
  %2089 = and i64 %2065, 28
  %2090 = icmp eq i64 %2089, 0
  br i1 %2090, label %2105, label %2091

2091:                                             ; preds = %2086, %2070
  %2092 = phi i64 [ %2073, %2086 ], [ 0, %2070 ]
  %2093 = and i64 %2065, -4
  br label %2094

2094:                                             ; preds = %2094, %2091
  %2095 = phi i64 [ %2092, %2091 ], [ %2099, %2094 ]
  %2096 = getelementptr i8, ptr %2060, i64 %2095
  %2097 = getelementptr i8, ptr %2059, i64 %2095
  %2098 = load <4 x i8>, ptr %2097, align 1, !tbaa !34
  store <4 x i8> %2098, ptr %2096, align 1, !tbaa !34
  %2099 = add nuw i64 %2095, 4
  %2100 = icmp eq i64 %2099, %2093
  br i1 %2100, label %2101, label %2094, !llvm.loop !126

2101:                                             ; preds = %2094
  %2102 = getelementptr i8, ptr %2060, i64 %2093
  %2103 = getelementptr i8, ptr %2059, i64 %2093
  %2104 = icmp eq i64 %2065, %2093
  br i1 %2104, label %.loopexit383, label %2105

2105:                                             ; preds = %2101, %2086, %2062
  %2106 = phi ptr [ %2060, %2062 ], [ %2087, %2086 ], [ %2102, %2101 ]
  %2107 = phi ptr [ %2059, %2062 ], [ %2088, %2086 ], [ %2103, %2101 ]
  %2108 = ptrtoint ptr %2107 to i64
  %2109 = sub i64 %2010, %2108
  %2110 = and i64 %2109, 7
  %2111 = icmp eq i64 %2110, 0
  br i1 %2111, label %.loopexit385, label %.preheader384

.preheader384:                                    ; preds = %2105, %.preheader384
  %2112 = phi ptr [ %2117, %.preheader384 ], [ %2106, %2105 ]
  %2113 = phi ptr [ %2115, %.preheader384 ], [ %2107, %2105 ]
  %2114 = phi i64 [ %2118, %.preheader384 ], [ 0, %2105 ]
  %2115 = getelementptr inbounds nuw i8, ptr %2113, i64 1
  %2116 = load i8, ptr %2113, align 1, !tbaa !34
  %2117 = getelementptr inbounds nuw i8, ptr %2112, i64 1
  store i8 %2116, ptr %2112, align 1, !tbaa !34
  %2118 = add nuw nsw i64 %2114, 1
  %2119 = icmp eq i64 %2118, %2110
  br i1 %2119, label %.loopexit385, label %.preheader384, !llvm.loop !127

.loopexit385:                                     ; preds = %.preheader384, %2105
  %2120 = phi ptr [ %2106, %2105 ], [ %2117, %.preheader384 ]
  %2121 = phi ptr [ %2107, %2105 ], [ %2115, %.preheader384 ]
  %2122 = sub i64 %2108, %2010
  %2123 = icmp ugt i64 %2122, -8
  br i1 %2123, label %.loopexit383, label %.preheader382

.preheader382:                                    ; preds = %.loopexit385, %.preheader382
  %2124 = phi ptr [ %2149, %.preheader382 ], [ %2120, %.loopexit385 ]
  %2125 = phi ptr [ %2147, %.preheader382 ], [ %2121, %.loopexit385 ]
  %2126 = getelementptr inbounds nuw i8, ptr %2125, i64 1
  %2127 = load i8, ptr %2125, align 1, !tbaa !34
  %2128 = getelementptr inbounds nuw i8, ptr %2124, i64 1
  store i8 %2127, ptr %2124, align 1, !tbaa !34
  %2129 = getelementptr inbounds nuw i8, ptr %2125, i64 2
  %2130 = load i8, ptr %2126, align 1, !tbaa !34
  %2131 = getelementptr inbounds nuw i8, ptr %2124, i64 2
  store i8 %2130, ptr %2128, align 1, !tbaa !34
  %2132 = getelementptr inbounds nuw i8, ptr %2125, i64 3
  %2133 = load i8, ptr %2129, align 1, !tbaa !34
  %2134 = getelementptr inbounds nuw i8, ptr %2124, i64 3
  store i8 %2133, ptr %2131, align 1, !tbaa !34
  %2135 = getelementptr inbounds nuw i8, ptr %2125, i64 4
  %2136 = load i8, ptr %2132, align 1, !tbaa !34
  %2137 = getelementptr inbounds nuw i8, ptr %2124, i64 4
  store i8 %2136, ptr %2134, align 1, !tbaa !34
  %2138 = getelementptr inbounds nuw i8, ptr %2125, i64 5
  %2139 = load i8, ptr %2135, align 1, !tbaa !34
  %2140 = getelementptr inbounds nuw i8, ptr %2124, i64 5
  store i8 %2139, ptr %2137, align 1, !tbaa !34
  %2141 = getelementptr inbounds nuw i8, ptr %2125, i64 6
  %2142 = load i8, ptr %2138, align 1, !tbaa !34
  %2143 = getelementptr inbounds nuw i8, ptr %2124, i64 6
  store i8 %2142, ptr %2140, align 1, !tbaa !34
  %2144 = getelementptr inbounds nuw i8, ptr %2125, i64 7
  %2145 = load i8, ptr %2141, align 1, !tbaa !34
  %2146 = getelementptr inbounds nuw i8, ptr %2124, i64 7
  store i8 %2145, ptr %2143, align 1, !tbaa !34
  %2147 = getelementptr inbounds nuw i8, ptr %2125, i64 8
  %2148 = load i8, ptr %2144, align 1, !tbaa !34
  %2149 = getelementptr inbounds nuw i8, ptr %2124, i64 8
  store i8 %2148, ptr %2146, align 1, !tbaa !34
  %2150 = icmp eq ptr %2147, %2012
  br i1 %2150, label %.loopexit383, label %.preheader382, !llvm.loop !128

2151:                                             ; preds = %2021, %2018
  %2152 = load ptr, ptr %1739, align 8, !tbaa !39
  %2153 = getelementptr inbounds nuw i8, ptr %2152, i64 %2014
  store ptr %2153, ptr %1739, align 8, !tbaa !39
  %2154 = load ptr, ptr %1742, align 8, !tbaa !50
  br label %2166

.loopexit383:                                     ; preds = %2030, %.preheader382, %.loopexit385, %2101, %2084, %.loopexit386
  %2155 = load ptr, ptr %1739, align 8, !tbaa !39
  %2156 = getelementptr inbounds nuw i8, ptr %2155, i64 %2014
  store ptr %2156, ptr %1739, align 8, !tbaa !39
  %2157 = icmp ugt i64 %2014, 65535
  %2158 = load ptr, ptr %1742, align 8, !tbaa !50
  br i1 %2157, label %2159, label %2166, !prof !51

2159:                                             ; preds = %.loopexit383
  store i32 1, ptr %1741, align 8, !tbaa !52
  %2160 = load ptr, ptr %1, align 8, !tbaa !53
  %2161 = ptrtoint ptr %2158 to i64
  %2162 = ptrtoint ptr %2160 to i64
  %2163 = sub i64 %2161, %2162
  %2164 = lshr exact i64 %2163, 3
  %2165 = trunc i64 %2164 to i32
  store i32 %2165, ptr %1743, align 4, !tbaa !54
  br label %2166

2166:                                             ; preds = %2159, %.loopexit383, %2151
  %2167 = phi ptr [ %2154, %2151 ], [ %2158, %2159 ], [ %2158, %.loopexit383 ]
  %2168 = trunc i64 %2014 to i16
  %2169 = getelementptr inbounds nuw i8, ptr %2167, i64 4
  store i16 %2168, ptr %2169, align 4, !tbaa !55
  store i32 %2015, ptr %2167, align 4, !tbaa !57
  %2170 = add i64 %2011, -3
  %2171 = icmp ugt i64 %2170, 65535
  br i1 %2171, label %2447, label %2460, !prof !58

2172:                                             ; preds = %1975, %1972, %1971
  %2173 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1775, i32 %19, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %1782) #6, !srcloc !32
  %2174 = load i32, ptr %1772, align 1, !tbaa !23
  %2175 = load i32, ptr %2173, align 1, !tbaa !23
  %2176 = icmp eq i32 %2174, %2175
  br i1 %2176, label %2177, label %2433

2177:                                             ; preds = %2172
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !33
  %2178 = icmp ult i32 %1775, %19
  br i1 %2178, label %2433, label %2179

2179:                                             ; preds = %2177
  %2180 = ptrtoint ptr %1782 to i64
  %2181 = sub i64 %1778, %2180
  %2182 = trunc i64 %2181 to i32
  %2183 = getelementptr inbounds nuw i8, ptr %1772, i64 4
  %2184 = getelementptr inbounds nuw i8, ptr %1782, i64 4
  %2185 = icmp ult ptr %2183, %1744
  br i1 %2185, label %2186, label %.loopexit381

2186:                                             ; preds = %2179
  %2187 = load i64, ptr %2184, align 1, !tbaa !22
  %2188 = load i64, ptr %2183, align 1, !tbaa !22
  %2189 = icmp eq i64 %2187, %2188
  br i1 %2189, label %.preheader380, label %2190

2190:                                             ; preds = %2186
  %2191 = xor i64 %2188, %2187
  %2192 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2191, i1 true)
  %2193 = lshr i64 %2192, 3
  br label %2247

.preheader380:                                    ; preds = %2186, %2199
  %2194 = phi ptr [ %2197, %2199 ], [ %2184, %2186 ]
  %2195 = phi ptr [ %2196, %2199 ], [ %2183, %2186 ]
  %2196 = getelementptr inbounds nuw i8, ptr %2195, i64 8
  %2197 = getelementptr inbounds nuw i8, ptr %2194, i64 8
  %2198 = icmp ult ptr %2196, %1744
  br i1 %2198, label %2199, label %.loopexit381

2199:                                             ; preds = %.preheader380
  %2200 = load i64, ptr %2197, align 1, !tbaa !22
  %2201 = load i64, ptr %2196, align 1, !tbaa !22
  %2202 = icmp eq i64 %2200, %2201
  br i1 %2202, label %.preheader380, label %2203

2203:                                             ; preds = %2199
  %2204 = xor i64 %2201, %2200
  %2205 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2204, i1 true)
  %2206 = lshr i64 %2205, 3
  %2207 = getelementptr inbounds nuw i8, ptr %2196, i64 %2206
  %2208 = ptrtoint ptr %2207 to i64
  %2209 = ptrtoint ptr %2183 to i64
  %2210 = sub i64 %2208, %2209
  br label %2247

.loopexit381:                                     ; preds = %.preheader380, %2179
  %2211 = phi ptr [ %2184, %2179 ], [ %2197, %.preheader380 ]
  %2212 = phi ptr [ %2183, %2179 ], [ %2196, %.preheader380 ]
  %2213 = icmp ult ptr %2212, %1745
  br i1 %2213, label %2214, label %2221

2214:                                             ; preds = %.loopexit381
  %2215 = load i32, ptr %2211, align 1, !tbaa !23
  %2216 = load i32, ptr %2212, align 1, !tbaa !23
  %2217 = icmp eq i32 %2215, %2216
  br i1 %2217, label %2218, label %2221

2218:                                             ; preds = %2214
  %2219 = getelementptr inbounds nuw i8, ptr %2212, i64 4
  %2220 = getelementptr inbounds nuw i8, ptr %2211, i64 4
  br label %2221

2221:                                             ; preds = %2218, %2214, %.loopexit381
  %2222 = phi ptr [ %2220, %2218 ], [ %2211, %2214 ], [ %2211, %.loopexit381 ]
  %2223 = phi ptr [ %2219, %2218 ], [ %2212, %2214 ], [ %2212, %.loopexit381 ]
  %2224 = icmp ult ptr %2223, %1746
  br i1 %2224, label %2225, label %2232

2225:                                             ; preds = %2221
  %2226 = load i16, ptr %2222, align 1, !tbaa !37
  %2227 = load i16, ptr %2223, align 1, !tbaa !37
  %2228 = icmp eq i16 %2226, %2227
  br i1 %2228, label %2229, label %2232

2229:                                             ; preds = %2225
  %2230 = getelementptr inbounds nuw i8, ptr %2223, i64 2
  %2231 = getelementptr inbounds nuw i8, ptr %2222, i64 2
  br label %2232

2232:                                             ; preds = %2229, %2225, %2221
  %2233 = phi ptr [ %2231, %2229 ], [ %2222, %2225 ], [ %2222, %2221 ]
  %2234 = phi ptr [ %2230, %2229 ], [ %2223, %2225 ], [ %2223, %2221 ]
  %2235 = icmp ult ptr %2234, %22
  br i1 %2235, label %2236, label %2242

2236:                                             ; preds = %2232
  %2237 = load i8, ptr %2233, align 1, !tbaa !34
  %2238 = load i8, ptr %2234, align 1, !tbaa !34
  %2239 = icmp eq i8 %2237, %2238
  %2240 = zext i1 %2239 to i64
  %2241 = getelementptr inbounds nuw i8, ptr %2234, i64 %2240
  br label %2242

2242:                                             ; preds = %2236, %2232
  %2243 = phi ptr [ %2234, %2232 ], [ %2241, %2236 ]
  %2244 = ptrtoint ptr %2243 to i64
  %2245 = ptrtoint ptr %2183 to i64
  %2246 = sub i64 %2244, %2245
  br label %2247

2247:                                             ; preds = %2242, %2203, %2190
  %2248 = phi i64 [ %2246, %2242 ], [ %2193, %2190 ], [ %2210, %2203 ]
  %2249 = add i64 %2248, 4
  %2250 = icmp ugt ptr %1772, %1753
  %2251 = icmp ugt i32 %1775, %19
  %2252 = and i1 %2250, %2251
  br i1 %2252, label %.preheader379, label %2270

.preheader379:                                    ; preds = %2247, %2261
  %2253 = phi ptr [ %2256, %2261 ], [ %1772, %2247 ]
  %2254 = phi i64 [ %2262, %2261 ], [ %2249, %2247 ]
  %2255 = phi ptr [ %2258, %2261 ], [ %1782, %2247 ]
  %2256 = getelementptr inbounds i8, ptr %2253, i64 -1
  %2257 = load i8, ptr %2256, align 1, !tbaa !34
  %2258 = getelementptr inbounds i8, ptr %2255, i64 -1
  %2259 = load i8, ptr %2258, align 1, !tbaa !34
  %2260 = icmp eq i8 %2257, %2259
  br i1 %2260, label %2261, label %2266

2261:                                             ; preds = %.preheader379
  %2262 = add i64 %2254, 1
  %2263 = icmp ugt ptr %2256, %1753
  %2264 = icmp ugt ptr %2258, %21
  %2265 = and i1 %2263, %2264
  br i1 %2265, label %.preheader379, label %2266, !llvm.loop !102

2266:                                             ; preds = %2261, %.preheader379
  %2267 = phi i64 [ %2262, %2261 ], [ %2254, %.preheader379 ]
  %2268 = phi ptr [ %2256, %2261 ], [ %2253, %.preheader379 ]
  %2269 = ptrtoint ptr %2268 to i64
  br label %2270

2270:                                             ; preds = %2266, %2247
  %2271 = phi i64 [ %2269, %2266 ], [ %1778, %2247 ]
  %2272 = phi i64 [ %2267, %2266 ], [ %2249, %2247 ]
  %2273 = phi ptr [ %2268, %2266 ], [ %1772, %2247 ]
  %2274 = ptrtoint ptr %1753 to i64
  %2275 = sub i64 %2271, %2274
  %2276 = add i32 %2182, 3
  %2277 = icmp ugt ptr %2273, %1738
  %2278 = load ptr, ptr %1739, align 8, !tbaa !39
  br i1 %2277, label %2301, label %2279

2279:                                             ; preds = %2270
  %2280 = load <2 x i64>, ptr %1753, align 1, !tbaa !34
  store <2 x i64> %2280, ptr %2278, align 1, !tbaa !34
  %2281 = icmp ugt i64 %2275, 16
  br i1 %2281, label %2282, label %2412

2282:                                             ; preds = %2279
  %2283 = load ptr, ptr %1739, align 8, !tbaa !39
  %2284 = getelementptr inbounds nuw i8, ptr %2283, i64 16
  %2285 = getelementptr inbounds nuw i8, ptr %1753, i64 16
  %2286 = getelementptr i8, ptr %2283, i64 %2275
  %2287 = load <2 x i64>, ptr %2285, align 1, !tbaa !34
  store <2 x i64> %2287, ptr %2284, align 1, !tbaa !34
  %2288 = icmp ult i64 %2275, 33
  br i1 %2288, label %2412, label %2289

2289:                                             ; preds = %2282
  %2290 = getelementptr inbounds nuw i8, ptr %2283, i64 32
  br label %2291

2291:                                             ; preds = %2291, %2289
  %2292 = phi ptr [ %2290, %2289 ], [ %2299, %2291 ]
  %2293 = phi ptr [ %2285, %2289 ], [ %2297, %2291 ]
  %2294 = getelementptr inbounds nuw i8, ptr %2293, i64 16
  %2295 = load <2 x i64>, ptr %2294, align 1, !tbaa !34
  store <2 x i64> %2295, ptr %2292, align 1, !tbaa !34
  %2296 = getelementptr inbounds nuw i8, ptr %2292, i64 16
  %2297 = getelementptr inbounds nuw i8, ptr %2293, i64 32
  %2298 = load <2 x i64>, ptr %2297, align 1, !tbaa !34
  store <2 x i64> %2298, ptr %2296, align 1, !tbaa !34
  %2299 = getelementptr inbounds nuw i8, ptr %2292, i64 32
  %2300 = icmp ult ptr %2299, %2286
  br i1 %2300, label %2291, label %.loopexit374, !llvm.loop !42

2301:                                             ; preds = %2270
  %2302 = icmp ugt ptr %1753, %1738
  br i1 %2302, label %.loopexit377, label %2303

2303:                                             ; preds = %2301
  %2304 = sub i64 %1740, %2274
  %2305 = getelementptr inbounds i8, ptr %2278, i64 %2304
  %2306 = load <2 x i64>, ptr %1753, align 1, !tbaa !34
  store <2 x i64> %2306, ptr %2278, align 1, !tbaa !34
  %2307 = icmp ult i64 %2304, 17
  br i1 %2307, label %.loopexit377, label %2308

2308:                                             ; preds = %2303
  %2309 = getelementptr inbounds nuw i8, ptr %2278, i64 16
  br label %2310

2310:                                             ; preds = %2310, %2308
  %2311 = phi ptr [ %2309, %2308 ], [ %2318, %2310 ]
  %2312 = phi ptr [ %1753, %2308 ], [ %2316, %2310 ]
  %2313 = getelementptr inbounds nuw i8, ptr %2312, i64 16
  %2314 = load <2 x i64>, ptr %2313, align 1, !tbaa !34
  store <2 x i64> %2314, ptr %2311, align 1, !tbaa !34
  %2315 = getelementptr inbounds nuw i8, ptr %2311, i64 16
  %2316 = getelementptr inbounds nuw i8, ptr %2312, i64 32
  %2317 = load <2 x i64>, ptr %2316, align 1, !tbaa !34
  store <2 x i64> %2317, ptr %2315, align 1, !tbaa !34
  %2318 = getelementptr inbounds nuw i8, ptr %2311, i64 32
  %2319 = icmp ult ptr %2318, %2305
  br i1 %2319, label %2310, label %.loopexit377, !llvm.loop !42

.loopexit377:                                     ; preds = %2310, %2303, %2301
  %2320 = phi ptr [ %1738, %2303 ], [ %1753, %2301 ], [ %1738, %2310 ]
  %2321 = phi ptr [ %2305, %2303 ], [ %2278, %2301 ], [ %2305, %2310 ]
  %2322 = icmp ult ptr %2320, %2273
  br i1 %2322, label %2323, label %.loopexit374

2323:                                             ; preds = %.loopexit377
  %2324 = ptrtoint ptr %2320 to i64
  %2325 = ptrtoint ptr %2321 to i64
  %2326 = sub i64 %2271, %2324
  %2327 = icmp ult i64 %2326, 4
  %2328 = sub i64 %2325, %2324
  %2329 = icmp ult i64 %2328, 32
  %2330 = select i1 %2327, i1 true, i1 %2329
  br i1 %2330, label %2366, label %2331

2331:                                             ; preds = %2323
  %2332 = icmp ult i64 %2326, 32
  br i1 %2332, label %2352, label %2333

2333:                                             ; preds = %2331
  %2334 = and i64 %2326, -32
  br label %2335

2335:                                             ; preds = %2335, %2333
  %2336 = phi i64 [ 0, %2333 ], [ %2343, %2335 ]
  %2337 = getelementptr i8, ptr %2321, i64 %2336
  %2338 = getelementptr i8, ptr %2320, i64 %2336
  %2339 = getelementptr i8, ptr %2338, i64 16
  %2340 = load <16 x i8>, ptr %2338, align 1, !tbaa !34
  %2341 = load <16 x i8>, ptr %2339, align 1, !tbaa !34
  %2342 = getelementptr i8, ptr %2337, i64 16
  store <16 x i8> %2340, ptr %2337, align 1, !tbaa !34
  store <16 x i8> %2341, ptr %2342, align 1, !tbaa !34
  %2343 = add nuw i64 %2336, 32
  %2344 = icmp eq i64 %2343, %2334
  br i1 %2344, label %2345, label %2335, !llvm.loop !129

2345:                                             ; preds = %2335
  %2346 = icmp eq i64 %2326, %2334
  br i1 %2346, label %.loopexit374, label %2347

2347:                                             ; preds = %2345
  %2348 = getelementptr i8, ptr %2321, i64 %2334
  %2349 = getelementptr i8, ptr %2320, i64 %2334
  %2350 = and i64 %2326, 28
  %2351 = icmp eq i64 %2350, 0
  br i1 %2351, label %2366, label %2352

2352:                                             ; preds = %2347, %2331
  %2353 = phi i64 [ %2334, %2347 ], [ 0, %2331 ]
  %2354 = and i64 %2326, -4
  br label %2355

2355:                                             ; preds = %2355, %2352
  %2356 = phi i64 [ %2353, %2352 ], [ %2360, %2355 ]
  %2357 = getelementptr i8, ptr %2321, i64 %2356
  %2358 = getelementptr i8, ptr %2320, i64 %2356
  %2359 = load <4 x i8>, ptr %2358, align 1, !tbaa !34
  store <4 x i8> %2359, ptr %2357, align 1, !tbaa !34
  %2360 = add nuw i64 %2356, 4
  %2361 = icmp eq i64 %2360, %2354
  br i1 %2361, label %2362, label %2355, !llvm.loop !130

2362:                                             ; preds = %2355
  %2363 = getelementptr i8, ptr %2321, i64 %2354
  %2364 = getelementptr i8, ptr %2320, i64 %2354
  %2365 = icmp eq i64 %2326, %2354
  br i1 %2365, label %.loopexit374, label %2366

2366:                                             ; preds = %2362, %2347, %2323
  %2367 = phi ptr [ %2321, %2323 ], [ %2348, %2347 ], [ %2363, %2362 ]
  %2368 = phi ptr [ %2320, %2323 ], [ %2349, %2347 ], [ %2364, %2362 ]
  %2369 = ptrtoint ptr %2368 to i64
  %2370 = sub i64 %2271, %2369
  %2371 = and i64 %2370, 7
  %2372 = icmp eq i64 %2371, 0
  br i1 %2372, label %.loopexit376, label %.preheader375

.preheader375:                                    ; preds = %2366, %.preheader375
  %2373 = phi ptr [ %2378, %.preheader375 ], [ %2367, %2366 ]
  %2374 = phi ptr [ %2376, %.preheader375 ], [ %2368, %2366 ]
  %2375 = phi i64 [ %2379, %.preheader375 ], [ 0, %2366 ]
  %2376 = getelementptr inbounds nuw i8, ptr %2374, i64 1
  %2377 = load i8, ptr %2374, align 1, !tbaa !34
  %2378 = getelementptr inbounds nuw i8, ptr %2373, i64 1
  store i8 %2377, ptr %2373, align 1, !tbaa !34
  %2379 = add nuw nsw i64 %2375, 1
  %2380 = icmp eq i64 %2379, %2371
  br i1 %2380, label %.loopexit376, label %.preheader375, !llvm.loop !131

.loopexit376:                                     ; preds = %.preheader375, %2366
  %2381 = phi ptr [ %2367, %2366 ], [ %2378, %.preheader375 ]
  %2382 = phi ptr [ %2368, %2366 ], [ %2376, %.preheader375 ]
  %2383 = sub i64 %2369, %2271
  %2384 = icmp ugt i64 %2383, -8
  br i1 %2384, label %.loopexit374, label %.preheader373

.preheader373:                                    ; preds = %.loopexit376, %.preheader373
  %2385 = phi ptr [ %2410, %.preheader373 ], [ %2381, %.loopexit376 ]
  %2386 = phi ptr [ %2408, %.preheader373 ], [ %2382, %.loopexit376 ]
  %2387 = getelementptr inbounds nuw i8, ptr %2386, i64 1
  %2388 = load i8, ptr %2386, align 1, !tbaa !34
  %2389 = getelementptr inbounds nuw i8, ptr %2385, i64 1
  store i8 %2388, ptr %2385, align 1, !tbaa !34
  %2390 = getelementptr inbounds nuw i8, ptr %2386, i64 2
  %2391 = load i8, ptr %2387, align 1, !tbaa !34
  %2392 = getelementptr inbounds nuw i8, ptr %2385, i64 2
  store i8 %2391, ptr %2389, align 1, !tbaa !34
  %2393 = getelementptr inbounds nuw i8, ptr %2386, i64 3
  %2394 = load i8, ptr %2390, align 1, !tbaa !34
  %2395 = getelementptr inbounds nuw i8, ptr %2385, i64 3
  store i8 %2394, ptr %2392, align 1, !tbaa !34
  %2396 = getelementptr inbounds nuw i8, ptr %2386, i64 4
  %2397 = load i8, ptr %2393, align 1, !tbaa !34
  %2398 = getelementptr inbounds nuw i8, ptr %2385, i64 4
  store i8 %2397, ptr %2395, align 1, !tbaa !34
  %2399 = getelementptr inbounds nuw i8, ptr %2386, i64 5
  %2400 = load i8, ptr %2396, align 1, !tbaa !34
  %2401 = getelementptr inbounds nuw i8, ptr %2385, i64 5
  store i8 %2400, ptr %2398, align 1, !tbaa !34
  %2402 = getelementptr inbounds nuw i8, ptr %2386, i64 6
  %2403 = load i8, ptr %2399, align 1, !tbaa !34
  %2404 = getelementptr inbounds nuw i8, ptr %2385, i64 6
  store i8 %2403, ptr %2401, align 1, !tbaa !34
  %2405 = getelementptr inbounds nuw i8, ptr %2386, i64 7
  %2406 = load i8, ptr %2402, align 1, !tbaa !34
  %2407 = getelementptr inbounds nuw i8, ptr %2385, i64 7
  store i8 %2406, ptr %2404, align 1, !tbaa !34
  %2408 = getelementptr inbounds nuw i8, ptr %2386, i64 8
  %2409 = load i8, ptr %2405, align 1, !tbaa !34
  %2410 = getelementptr inbounds nuw i8, ptr %2385, i64 8
  store i8 %2409, ptr %2407, align 1, !tbaa !34
  %2411 = icmp eq ptr %2408, %2273
  br i1 %2411, label %.loopexit374, label %.preheader373, !llvm.loop !132

2412:                                             ; preds = %2282, %2279
  %2413 = load ptr, ptr %1739, align 8, !tbaa !39
  %2414 = getelementptr inbounds nuw i8, ptr %2413, i64 %2275
  store ptr %2414, ptr %1739, align 8, !tbaa !39
  %2415 = load ptr, ptr %1742, align 8, !tbaa !50
  br label %2427

.loopexit374:                                     ; preds = %2291, %.preheader373, %.loopexit376, %2362, %2345, %.loopexit377
  %2416 = load ptr, ptr %1739, align 8, !tbaa !39
  %2417 = getelementptr inbounds nuw i8, ptr %2416, i64 %2275
  store ptr %2417, ptr %1739, align 8, !tbaa !39
  %2418 = icmp ugt i64 %2275, 65535
  %2419 = load ptr, ptr %1742, align 8, !tbaa !50
  br i1 %2418, label %2420, label %2427, !prof !51

2420:                                             ; preds = %.loopexit374
  store i32 1, ptr %1741, align 8, !tbaa !52
  %2421 = load ptr, ptr %1, align 8, !tbaa !53
  %2422 = ptrtoint ptr %2419 to i64
  %2423 = ptrtoint ptr %2421 to i64
  %2424 = sub i64 %2422, %2423
  %2425 = lshr exact i64 %2424, 3
  %2426 = trunc i64 %2425 to i32
  store i32 %2426, ptr %1743, align 4, !tbaa !54
  br label %2427

2427:                                             ; preds = %2420, %.loopexit374, %2412
  %2428 = phi ptr [ %2415, %2412 ], [ %2419, %2420 ], [ %2419, %.loopexit374 ]
  %2429 = trunc i64 %2275 to i16
  %2430 = getelementptr inbounds nuw i8, ptr %2428, i64 4
  store i16 %2429, ptr %2430, align 4, !tbaa !55
  store i32 %2276, ptr %2428, align 4, !tbaa !57
  %2431 = add i64 %2272, -3
  %2432 = icmp ugt i64 %2431, 65535
  br i1 %2432, label %2447, label %2460, !prof !58

2433:                                             ; preds = %2177, %2172
  %2434 = icmp uge ptr %1771, %1766
  %2435 = zext i1 %2434 to i64
  %2436 = add i64 %1767, %2435
  %2437 = getelementptr inbounds nuw i8, ptr %1771, i64 %2436
  %2438 = icmp ugt ptr %2437, %23
  br i1 %2438, label %.loopexit305, label %2439

2439:                                             ; preds = %2433
  %2440 = select i1 %2434, i64 256, i64 0
  %2441 = getelementptr inbounds nuw i8, ptr %1766, i64 %2440
  %2442 = lshr i64 %1785, 8
  %2443 = getelementptr inbounds nuw [4 x i8], ptr %30, i64 %2442
  %2444 = load i32, ptr %2443, align 4, !tbaa !23
  %2445 = zext i32 %2444 to i64
  %2446 = xor i64 %1785, %2445
  br label %1765

2447:                                             ; preds = %2427, %2166, %1965
  %2448 = phi ptr [ %1966, %1965 ], [ %2167, %2166 ], [ %2428, %2427 ]
  %2449 = phi i64 [ %1969, %1965 ], [ %2170, %2166 ], [ %2431, %2427 ]
  %2450 = phi i64 [ %1806, %1965 ], [ %2011, %2166 ], [ %2272, %2427 ]
  %2451 = phi i32 [ %1755, %1965 ], [ %1754, %2166 ], [ %1754, %2427 ]
  %2452 = phi i32 [ %1754, %1965 ], [ %1986, %2166 ], [ %2182, %2427 ]
  %2453 = phi ptr [ %1801, %1965 ], [ %2012, %2166 ], [ %2273, %2427 ]
  store i32 2, ptr %1741, align 8, !tbaa !52
  %2454 = load ptr, ptr %1, align 8, !tbaa !53
  %2455 = ptrtoint ptr %2448 to i64
  %2456 = ptrtoint ptr %2454 to i64
  %2457 = sub i64 %2455, %2456
  %2458 = lshr exact i64 %2457, 3
  %2459 = trunc i64 %2458 to i32
  store i32 %2459, ptr %1743, align 4, !tbaa !54
  br label %2460

2460:                                             ; preds = %2447, %2427, %2166, %1965
  %2461 = phi i64 [ %1969, %1965 ], [ %2170, %2166 ], [ %2431, %2427 ], [ %2449, %2447 ]
  %2462 = phi ptr [ %1966, %1965 ], [ %2167, %2166 ], [ %2428, %2427 ], [ %2448, %2447 ]
  %2463 = phi i64 [ %1806, %1965 ], [ %2011, %2166 ], [ %2272, %2427 ], [ %2450, %2447 ]
  %2464 = phi i32 [ %1755, %1965 ], [ %1754, %2166 ], [ %1754, %2427 ], [ %2451, %2447 ]
  %2465 = phi i32 [ %1754, %1965 ], [ %1986, %2166 ], [ %2182, %2427 ], [ %2452, %2447 ]
  %2466 = phi ptr [ %1801, %1965 ], [ %2012, %2166 ], [ %2273, %2427 ], [ %2453, %2447 ]
  %2467 = trunc i64 %2461 to i16
  %2468 = getelementptr inbounds nuw i8, ptr %2462, i64 6
  store i16 %2467, ptr %2468, align 2, !tbaa !59
  %2469 = getelementptr inbounds nuw i8, ptr %2462, i64 8
  store ptr %2469, ptr %1742, align 8, !tbaa !50
  %2470 = getelementptr inbounds nuw i8, ptr %2466, i64 %2463
  %2471 = icmp ugt ptr %2470, %23
  br i1 %2471, label %.loopexit369, label %2472

2472:                                             ; preds = %2460
  %2473 = add i32 %1780, 2
  %2474 = and i64 %1779, 4294967295
  %2475 = getelementptr inbounds nuw i8, ptr %1725, i64 %2474
  %2476 = load i64, ptr %2475, align 1, !tbaa !22
  %2477 = mul i64 %2476, -3523014627193847808
  %2478 = lshr i64 %2477, %1735
  %2479 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2478
  store i32 %2473, ptr %2479, align 4, !tbaa !23
  %2480 = getelementptr inbounds i8, ptr %2470, i64 -2
  %2481 = ptrtoint ptr %2480 to i64
  %2482 = sub i64 %2481, %52
  %2483 = trunc i64 %2482 to i32
  %2484 = load i64, ptr %2480, align 1, !tbaa !22
  %2485 = mul i64 %2484, -3523014627193847808
  %2486 = lshr i64 %2485, %1735
  %2487 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2486
  store i32 %2483, ptr %2487, align 4, !tbaa !23
  br label %2488

2488:                                             ; preds = %2529, %2472
  %2489 = phi ptr [ %2469, %2472 ], [ %2532, %2529 ]
  %2490 = phi ptr [ %2470, %2472 ], [ %2538, %2529 ]
  %2491 = phi i32 [ %2465, %2472 ], [ %2492, %2529 ]
  %2492 = phi i32 [ %2464, %2472 ], [ %2491, %2529 ]
  %2493 = ptrtoint ptr %2490 to i64
  %2494 = sub i64 %2493, %52
  %2495 = trunc i64 %2494 to i32
  %2496 = sub i32 %2495, %2492
  %2497 = icmp ult i32 %2496, %19
  %2498 = zext i32 %2496 to i64
  %2499 = select i1 %2497, ptr %1749, ptr %16
  %2500 = getelementptr inbounds nuw i8, ptr %2499, i64 %2498
  %2501 = sub i32 %2496, %19
  %2502 = icmp ugt i32 %2501, -4
  br i1 %2502, label %.loopexit369, label %2503

2503:                                             ; preds = %2488
  %2504 = load i32, ptr %2500, align 1, !tbaa !23
  %2505 = load i32, ptr %2490, align 1, !tbaa !23
  %2506 = icmp eq i32 %2504, %2505
  br i1 %2506, label %2507, label %.loopexit369

2507:                                             ; preds = %2503
  %2508 = select i1 %2497, ptr %37, ptr %22
  %2509 = getelementptr inbounds nuw i8, ptr %2490, i64 4
  %2510 = getelementptr inbounds nuw i8, ptr %2500, i64 4
  %2511 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %2509, ptr noundef nonnull %2510, ptr noundef %22, ptr noundef %2508, ptr noundef %21)
  %2512 = icmp ugt ptr %2490, %1738
  br i1 %2512, label %2517, label %2513

2513:                                             ; preds = %2507
  %2514 = load ptr, ptr %1739, align 8, !tbaa !39
  %2515 = load <2 x i64>, ptr %2490, align 1, !tbaa !34
  store <2 x i64> %2515, ptr %2514, align 1, !tbaa !34
  %2516 = load ptr, ptr %1742, align 8, !tbaa !50
  br label %2517

2517:                                             ; preds = %2513, %2507
  %2518 = phi ptr [ %2489, %2507 ], [ %2516, %2513 ]
  %2519 = getelementptr inbounds nuw i8, ptr %2518, i64 4
  store i16 0, ptr %2519, align 4, !tbaa !55
  store i32 1, ptr %2518, align 4, !tbaa !57
  %2520 = add i64 %2511, 1
  %2521 = icmp ugt i64 %2520, 65535
  br i1 %2521, label %2522, label %2529, !prof !58

2522:                                             ; preds = %2517
  store i32 2, ptr %1741, align 8, !tbaa !52
  %2523 = load ptr, ptr %1, align 8, !tbaa !53
  %2524 = ptrtoint ptr %2518 to i64
  %2525 = ptrtoint ptr %2523 to i64
  %2526 = sub i64 %2524, %2525
  %2527 = lshr exact i64 %2526, 3
  %2528 = trunc i64 %2527 to i32
  store i32 %2528, ptr %1743, align 4, !tbaa !54
  br label %2529

2529:                                             ; preds = %2522, %2517
  %2530 = trunc i64 %2520 to i16
  %2531 = getelementptr inbounds nuw i8, ptr %2518, i64 6
  store i16 %2530, ptr %2531, align 2, !tbaa !59
  %2532 = getelementptr inbounds nuw i8, ptr %2518, i64 8
  store ptr %2532, ptr %1742, align 8, !tbaa !50
  %2533 = load i64, ptr %2490, align 1, !tbaa !22
  %2534 = mul i64 %2533, -3523014627193847808
  %2535 = lshr i64 %2534, %1735
  %2536 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2535
  store i32 %2495, ptr %2536, align 4, !tbaa !23
  %2537 = getelementptr i8, ptr %2490, i64 %2511
  %2538 = getelementptr i8, ptr %2537, i64 4
  %2539 = icmp ugt ptr %2538, %23
  br i1 %2539, label %.loopexit369, label %2488

.loopexit369:                                     ; preds = %2529, %2503, %2488, %2460
  %2540 = phi i32 [ %2464, %2460 ], [ %2492, %2488 ], [ %2492, %2503 ], [ %2491, %2529 ]
  %2541 = phi i32 [ %2465, %2460 ], [ %2491, %2488 ], [ %2491, %2503 ], [ %2492, %2529 ]
  %2542 = phi ptr [ %2470, %2460 ], [ %2490, %2488 ], [ %2490, %2503 ], [ %2538, %2529 ]
  %2543 = getelementptr inbounds nuw i8, ptr %2542, i64 %17
  %2544 = icmp ugt ptr %2543, %23
  br i1 %2544, label %.loopexit305, label %1750

2545:                                             ; preds = %5
  br i1 %55, label %.loopexit338, label %2546

2546:                                             ; preds = %2545
  %2547 = zext nneg i32 %51 to i64
  %2548 = shl i64 4, %2547
  %2549 = icmp ugt i32 %51, 61
  br i1 %2549, label %.loopexit338, label %.preheader337

.preheader337:                                    ; preds = %2546, %.preheader337
  %2550 = phi i64 [ %2552, %.preheader337 ], [ 0, %2546 ]
  %2551 = getelementptr inbounds nuw i8, ptr %30, i64 %2550
  tail call void @llvm.prefetch.p0(ptr %2551, i32 0, i32 2, i32 1)
  %2552 = add i64 %2550, 64
  %2553 = icmp ult i64 %2552, %2548
  br i1 %2553, label %.preheader337, label %.loopexit338, !llvm.loop !91

.loopexit338:                                     ; preds = %.preheader337, %2546, %2545
  %2554 = getelementptr inbounds nuw i8, ptr %16, i64 2
  %2555 = add nsw i64 %4, -8
  %2556 = icmp slt i64 %2555, %17
  br i1 %2556, label %.loopexit305, label %2557

2557:                                             ; preds = %.loopexit338
  %2558 = getelementptr inbounds nuw i8, ptr %3, i64 %17
  %2559 = and i64 %49, 4294967295
  %2560 = icmp eq i64 %2559, 0
  %2561 = zext i1 %2560 to i64
  %2562 = getelementptr inbounds nuw i8, ptr %3, i64 %2561
  %2563 = sub i32 64, %11
  %2564 = zext nneg i32 %2563 to i64
  %2565 = sub i32 56, %51
  %2566 = zext nneg i32 %2565 to i64
  %2567 = getelementptr inbounds i8, ptr %22, i64 -32
  %2568 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %2569 = ptrtoint ptr %2567 to i64
  %2570 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %2571 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %2572 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %2573 = getelementptr inbounds i8, ptr %22, i64 -7
  %2574 = getelementptr inbounds i8, ptr %22, i64 -3
  %2575 = getelementptr inbounds i8, ptr %22, i64 -1
  %2576 = zext i32 %42 to i64
  %2577 = sub nsw i64 0, %2576
  %2578 = getelementptr inbounds i8, ptr %34, i64 %2577
  br label %2579

2579:                                             ; preds = %.loopexit309, %2557
  %2580 = phi ptr [ %2558, %2557 ], [ %3372, %.loopexit309 ]
  %2581 = phi ptr [ %2562, %2557 ], [ %3371, %.loopexit309 ]
  %2582 = phi ptr [ %3, %2557 ], [ %3371, %.loopexit309 ]
  %2583 = phi i32 [ %24, %2557 ], [ %3370, %.loopexit309 ]
  %2584 = phi i32 [ %26, %2557 ], [ %3369, %.loopexit309 ]
  %2585 = load i64, ptr %2581, align 1, !tbaa !22
  %2586 = mul i64 %2585, -3523014627193167104
  %2587 = lshr i64 %2586, %2566
  %2588 = lshr i64 %2587, 8
  %2589 = getelementptr inbounds nuw [4 x i8], ptr %30, i64 %2588
  %2590 = load i32, ptr %2589, align 4, !tbaa !23
  %2591 = zext i32 %2590 to i64
  %2592 = xor i64 %2587, %2591
  %2593 = getelementptr inbounds nuw i8, ptr %2581, i64 256
  %invariant.op1982 = sub i32 1, %2583
  br label %2594

2594:                                             ; preds = %3268, %2579
  %2595 = phi ptr [ %2593, %2579 ], [ %3270, %3268 ]
  %2596 = phi i64 [ %17, %2579 ], [ %3265, %3268 ]
  %2597 = phi i64 [ %2592, %2579 ], [ %3275, %3268 ]
  %2598 = phi i32 [ %2590, %2579 ], [ %3273, %3268 ]
  %2599 = phi i64 [ %2586, %2579 ], [ %2613, %3268 ]
  %2600 = phi ptr [ %2580, %2579 ], [ %3266, %3268 ]
  %2601 = phi ptr [ %2581, %2579 ], [ %2600, %3268 ]
  %2602 = lshr i64 %2599, %2564
  %2603 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2602
  %2604 = load i32, ptr %2603, align 4, !tbaa !23
  %2605 = and i64 %2597, 255
  %2606 = icmp eq i64 %2605, 0
  %2607 = ptrtoint ptr %2601 to i64
  %2608 = sub i64 %2607, %52
  %2609 = trunc i64 %2608 to i32
  %2610 = zext i32 %2604 to i64
  %2611 = getelementptr inbounds nuw i8, ptr %16, i64 %2610
  %.reass607.reass.reass.reass.reass.reass = add i32 %2609, %invariant.op1982
  %2612 = load i64, ptr %2600, align 1, !tbaa !22
  %2613 = mul i64 %2612, -3523014627193167104
  %2614 = lshr i64 %2613, %2566
  store i32 %2609, ptr %2603, align 4, !tbaa !23
  %2615 = sub i32 %.reass607.reass.reass.reass.reass.reass, %19
  %2616 = icmp ugt i32 %2615, -4
  br i1 %2616, label %2800, label %2617

2617:                                             ; preds = %2594
  %2618 = icmp ult i32 %.reass607.reass.reass.reass.reass.reass, %19
  %2619 = sub i32 %.reass607.reass.reass.reass.reass.reass, %42
  %2620 = zext i32 %2619 to i64
  %2621 = getelementptr inbounds nuw i8, ptr %34, i64 %2620
  %2622 = zext i32 %.reass607.reass.reass.reass.reass.reass to i64
  %2623 = getelementptr inbounds nuw i8, ptr %16, i64 %2622
  %2624 = select i1 %2618, ptr %2621, ptr %2623
  %2625 = load i32, ptr %2624, align 1, !tbaa !23
  %2626 = getelementptr inbounds nuw i8, ptr %2601, i64 1
  %2627 = load i32, ptr %2626, align 1, !tbaa !23
  %2628 = icmp eq i32 %2625, %2627
  br i1 %2628, label %2629, label %2800

2629:                                             ; preds = %2617
  %2630 = getelementptr inbounds nuw i8, ptr %2601, i64 1
  %2631 = select i1 %2618, ptr %37, ptr %22
  %2632 = getelementptr inbounds nuw i8, ptr %2601, i64 5
  %2633 = getelementptr inbounds nuw i8, ptr %2624, i64 4
  %2634 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %2632, ptr noundef nonnull %2633, ptr noundef %22, ptr noundef %2631, ptr noundef %21)
  %2635 = add i64 %2634, 4
  %2636 = ptrtoint ptr %2630 to i64
  %2637 = ptrtoint ptr %2582 to i64
  %2638 = sub i64 %2636, %2637
  %2639 = icmp ugt ptr %2630, %2567
  %2640 = load ptr, ptr %2568, align 8, !tbaa !39
  br i1 %2639, label %2663, label %2641

2641:                                             ; preds = %2629
  %2642 = load <2 x i64>, ptr %2582, align 1, !tbaa !34
  store <2 x i64> %2642, ptr %2640, align 1, !tbaa !34
  %2643 = icmp ugt i64 %2638, 16
  br i1 %2643, label %2644, label %2779

2644:                                             ; preds = %2641
  %2645 = load ptr, ptr %2568, align 8, !tbaa !39
  %2646 = getelementptr inbounds nuw i8, ptr %2645, i64 16
  %2647 = getelementptr inbounds nuw i8, ptr %2582, i64 16
  %2648 = getelementptr i8, ptr %2645, i64 %2638
  %2649 = load <2 x i64>, ptr %2647, align 1, !tbaa !34
  store <2 x i64> %2649, ptr %2646, align 1, !tbaa !34
  %2650 = icmp ult i64 %2638, 33
  br i1 %2650, label %2779, label %2651

2651:                                             ; preds = %2644
  %2652 = getelementptr inbounds nuw i8, ptr %2645, i64 32
  br label %2653

2653:                                             ; preds = %2653, %2651
  %2654 = phi ptr [ %2652, %2651 ], [ %2661, %2653 ]
  %2655 = phi ptr [ %2647, %2651 ], [ %2659, %2653 ]
  %2656 = getelementptr inbounds nuw i8, ptr %2655, i64 16
  %2657 = load <2 x i64>, ptr %2656, align 1, !tbaa !34
  store <2 x i64> %2657, ptr %2654, align 1, !tbaa !34
  %2658 = getelementptr inbounds nuw i8, ptr %2654, i64 16
  %2659 = getelementptr inbounds nuw i8, ptr %2655, i64 32
  %2660 = load <2 x i64>, ptr %2659, align 1, !tbaa !34
  store <2 x i64> %2660, ptr %2658, align 1, !tbaa !34
  %2661 = getelementptr inbounds nuw i8, ptr %2654, i64 32
  %2662 = icmp ult ptr %2661, %2648
  br i1 %2662, label %2653, label %.loopexit330, !llvm.loop !42

2663:                                             ; preds = %2629
  %2664 = icmp ugt ptr %2582, %2567
  br i1 %2664, label %.loopexit333, label %2665

2665:                                             ; preds = %2663
  %2666 = sub i64 %2569, %2637
  %2667 = getelementptr inbounds i8, ptr %2640, i64 %2666
  %2668 = load <2 x i64>, ptr %2582, align 1, !tbaa !34
  store <2 x i64> %2668, ptr %2640, align 1, !tbaa !34
  %2669 = icmp ult i64 %2666, 17
  br i1 %2669, label %.loopexit333, label %2670

2670:                                             ; preds = %2665
  %2671 = getelementptr inbounds nuw i8, ptr %2640, i64 16
  br label %2672

2672:                                             ; preds = %2672, %2670
  %2673 = phi ptr [ %2671, %2670 ], [ %2680, %2672 ]
  %2674 = phi ptr [ %2582, %2670 ], [ %2678, %2672 ]
  %2675 = getelementptr inbounds nuw i8, ptr %2674, i64 16
  %2676 = load <2 x i64>, ptr %2675, align 1, !tbaa !34
  store <2 x i64> %2676, ptr %2673, align 1, !tbaa !34
  %2677 = getelementptr inbounds nuw i8, ptr %2673, i64 16
  %2678 = getelementptr inbounds nuw i8, ptr %2674, i64 32
  %2679 = load <2 x i64>, ptr %2678, align 1, !tbaa !34
  store <2 x i64> %2679, ptr %2677, align 1, !tbaa !34
  %2680 = getelementptr inbounds nuw i8, ptr %2673, i64 32
  %2681 = icmp ult ptr %2680, %2667
  br i1 %2681, label %2672, label %.loopexit333, !llvm.loop !42

.loopexit333:                                     ; preds = %2672, %2665, %2663
  %2682 = phi ptr [ %2567, %2665 ], [ %2582, %2663 ], [ %2567, %2672 ]
  %2683 = phi ptr [ %2667, %2665 ], [ %2640, %2663 ], [ %2667, %2672 ]
  %2684 = icmp ult ptr %2682, %2630
  br i1 %2684, label %2685, label %.loopexit330

2685:                                             ; preds = %.loopexit333
  %2686 = ptrtoint ptr %2682 to i64
  %2687 = ptrtoint ptr %2683 to i64
  %2688 = sub i64 %2607, %2686
  %2689 = add i64 %2688, 1
  %2690 = icmp ult i64 %2689, 4
  %2691 = sub i64 %2687, %2686
  %2692 = icmp ult i64 %2691, 32
  %2693 = select i1 %2690, i1 true, i1 %2692
  br i1 %2693, label %2729, label %2694

2694:                                             ; preds = %2685
  %2695 = icmp ult i64 %2689, 32
  br i1 %2695, label %2715, label %2696

2696:                                             ; preds = %2694
  %2697 = and i64 %2689, -32
  br label %2698

2698:                                             ; preds = %2698, %2696
  %2699 = phi i64 [ 0, %2696 ], [ %2706, %2698 ]
  %2700 = getelementptr i8, ptr %2683, i64 %2699
  %2701 = getelementptr i8, ptr %2682, i64 %2699
  %2702 = getelementptr i8, ptr %2701, i64 16
  %2703 = load <16 x i8>, ptr %2701, align 1, !tbaa !34
  %2704 = load <16 x i8>, ptr %2702, align 1, !tbaa !34
  %2705 = getelementptr i8, ptr %2700, i64 16
  store <16 x i8> %2703, ptr %2700, align 1, !tbaa !34
  store <16 x i8> %2704, ptr %2705, align 1, !tbaa !34
  %2706 = add nuw i64 %2699, 32
  %2707 = icmp eq i64 %2706, %2697
  br i1 %2707, label %2708, label %2698, !llvm.loop !133

2708:                                             ; preds = %2698
  %2709 = icmp eq i64 %2689, %2697
  br i1 %2709, label %.loopexit330, label %2710

2710:                                             ; preds = %2708
  %2711 = getelementptr i8, ptr %2683, i64 %2697
  %2712 = getelementptr i8, ptr %2682, i64 %2697
  %2713 = and i64 %2689, 28
  %2714 = icmp eq i64 %2713, 0
  br i1 %2714, label %2729, label %2715

2715:                                             ; preds = %2710, %2694
  %2716 = phi i64 [ %2697, %2710 ], [ 0, %2694 ]
  %2717 = and i64 %2689, -4
  br label %2718

2718:                                             ; preds = %2718, %2715
  %2719 = phi i64 [ %2716, %2715 ], [ %2723, %2718 ]
  %2720 = getelementptr i8, ptr %2683, i64 %2719
  %2721 = getelementptr i8, ptr %2682, i64 %2719
  %2722 = load <4 x i8>, ptr %2721, align 1, !tbaa !34
  store <4 x i8> %2722, ptr %2720, align 1, !tbaa !34
  %2723 = add nuw i64 %2719, 4
  %2724 = icmp eq i64 %2723, %2717
  br i1 %2724, label %2725, label %2718, !llvm.loop !134

2725:                                             ; preds = %2718
  %2726 = getelementptr i8, ptr %2683, i64 %2717
  %2727 = getelementptr i8, ptr %2682, i64 %2717
  %2728 = icmp eq i64 %2689, %2717
  br i1 %2728, label %.loopexit330, label %2729

2729:                                             ; preds = %2725, %2710, %2685
  %2730 = phi ptr [ %2683, %2685 ], [ %2711, %2710 ], [ %2726, %2725 ]
  %2731 = phi ptr [ %2682, %2685 ], [ %2712, %2710 ], [ %2727, %2725 ]
  %2732 = ptrtoint ptr %2731 to i64
  %2733 = sub i64 %2607, %2732
  %2734 = add i64 %2733, 1
  %2735 = and i64 %2734, 7
  %2736 = and i64 %2733, 7
  %2737 = icmp eq i64 %2736, 7
  br i1 %2737, label %.preheader329.preheader, label %.preheader331.preheader

.preheader331.preheader:                          ; preds = %2729
  %2738 = ptrtoaddr ptr %2730 to i64
  %min.iters.check1639 = icmp samesign ult i64 %2735, 4
  %2739 = sub i64 %2738, %2732
  %diff.check1637 = icmp ult i64 %2739, 4
  %or.cond1674 = select i1 %min.iters.check1639, i1 true, i1 %diff.check1637
  br i1 %or.cond1674, label %.preheader331.preheader1604, label %vector.ph1640

vector.ph1640:                                    ; preds = %.preheader331.preheader
  %n.vec1642 = and i64 %2734, 4
  br label %vector.body1643

vector.body1643:                                  ; preds = %vector.body1643, %vector.ph1640
  %index1644 = phi i64 [ 0, %vector.ph1640 ], [ %index.next1648, %vector.body1643 ]
  %next.gep1645 = getelementptr i8, ptr %2730, i64 %index1644
  %next.gep1646 = getelementptr i8, ptr %2731, i64 %index1644
  %wide.load1647 = load <4 x i8>, ptr %next.gep1646, align 1, !tbaa !34
  store <4 x i8> %wide.load1647, ptr %next.gep1645, align 1, !tbaa !34
  %index.next1648 = add nuw i64 %index1644, 4
  %2740 = icmp eq i64 %index.next1648, %n.vec1642
  br i1 %2740, label %middle.block1649, label %vector.body1643, !llvm.loop !135

middle.block1649:                                 ; preds = %vector.body1643
  %2741 = getelementptr i8, ptr %2730, i64 4
  %2742 = getelementptr i8, ptr %2731, i64 4
  %cmp.n1650 = icmp eq i64 %2735, 4
  br i1 %cmp.n1650, label %.loopexit332, label %.preheader331.preheader1604

.preheader331.preheader1604:                      ; preds = %middle.block1649, %.preheader331.preheader
  %.ph1605 = phi ptr [ %2741, %middle.block1649 ], [ %2730, %.preheader331.preheader ]
  %.ph1606 = phi ptr [ %2742, %middle.block1649 ], [ %2731, %.preheader331.preheader ]
  %.ph1607 = phi i64 [ 4, %middle.block1649 ], [ 0, %.preheader331.preheader ]
  br label %.preheader331

.preheader331:                                    ; preds = %.preheader331.preheader1604, %.preheader331
  %2743 = phi ptr [ %2748, %.preheader331 ], [ %.ph1605, %.preheader331.preheader1604 ]
  %2744 = phi ptr [ %2746, %.preheader331 ], [ %.ph1606, %.preheader331.preheader1604 ]
  %2745 = phi i64 [ %2749, %.preheader331 ], [ %.ph1607, %.preheader331.preheader1604 ]
  %2746 = getelementptr inbounds nuw i8, ptr %2744, i64 1
  %2747 = load i8, ptr %2744, align 1, !tbaa !34
  %2748 = getelementptr inbounds nuw i8, ptr %2743, i64 1
  store i8 %2747, ptr %2743, align 1, !tbaa !34
  %2749 = add i64 %2745, 1
  %2750 = icmp eq i64 %2749, %2735
  br i1 %2750, label %.loopexit332, label %.preheader331, !llvm.loop !136

.loopexit332:                                     ; preds = %.preheader331, %middle.block1649
  %.lcssa1497 = phi ptr [ %2742, %middle.block1649 ], [ %2746, %.preheader331 ]
  %.lcssa1496 = phi ptr [ %2741, %middle.block1649 ], [ %2748, %.preheader331 ]
  %2751 = icmp ult i64 %2733, 7
  br i1 %2751, label %.loopexit330, label %.preheader329.preheader

.preheader329.preheader:                          ; preds = %.loopexit332, %2729
  %.ph1602 = phi ptr [ %.lcssa1496, %.loopexit332 ], [ %2730, %2729 ]
  %.ph1603 = phi ptr [ %.lcssa1497, %.loopexit332 ], [ %2731, %2729 ]
  br label %.preheader329

.preheader329:                                    ; preds = %.preheader329.preheader, %.preheader329
  %2752 = phi ptr [ %2777, %.preheader329 ], [ %.ph1602, %.preheader329.preheader ]
  %2753 = phi ptr [ %2775, %.preheader329 ], [ %.ph1603, %.preheader329.preheader ]
  %2754 = getelementptr inbounds nuw i8, ptr %2753, i64 1
  %2755 = load i8, ptr %2753, align 1, !tbaa !34
  %2756 = getelementptr inbounds nuw i8, ptr %2752, i64 1
  store i8 %2755, ptr %2752, align 1, !tbaa !34
  %2757 = getelementptr inbounds nuw i8, ptr %2753, i64 2
  %2758 = load i8, ptr %2754, align 1, !tbaa !34
  %2759 = getelementptr inbounds nuw i8, ptr %2752, i64 2
  store i8 %2758, ptr %2756, align 1, !tbaa !34
  %2760 = getelementptr inbounds nuw i8, ptr %2753, i64 3
  %2761 = load i8, ptr %2757, align 1, !tbaa !34
  %2762 = getelementptr inbounds nuw i8, ptr %2752, i64 3
  store i8 %2761, ptr %2759, align 1, !tbaa !34
  %2763 = getelementptr inbounds nuw i8, ptr %2753, i64 4
  %2764 = load i8, ptr %2760, align 1, !tbaa !34
  %2765 = getelementptr inbounds nuw i8, ptr %2752, i64 4
  store i8 %2764, ptr %2762, align 1, !tbaa !34
  %2766 = getelementptr inbounds nuw i8, ptr %2753, i64 5
  %2767 = load i8, ptr %2763, align 1, !tbaa !34
  %2768 = getelementptr inbounds nuw i8, ptr %2752, i64 5
  store i8 %2767, ptr %2765, align 1, !tbaa !34
  %2769 = getelementptr inbounds nuw i8, ptr %2753, i64 6
  %2770 = load i8, ptr %2766, align 1, !tbaa !34
  %2771 = getelementptr inbounds nuw i8, ptr %2752, i64 6
  store i8 %2770, ptr %2768, align 1, !tbaa !34
  %2772 = getelementptr inbounds nuw i8, ptr %2753, i64 7
  %2773 = load i8, ptr %2769, align 1, !tbaa !34
  %2774 = getelementptr inbounds nuw i8, ptr %2752, i64 7
  store i8 %2773, ptr %2771, align 1, !tbaa !34
  %2775 = getelementptr inbounds nuw i8, ptr %2753, i64 8
  %2776 = load i8, ptr %2772, align 1, !tbaa !34
  %2777 = getelementptr inbounds nuw i8, ptr %2752, i64 8
  store i8 %2776, ptr %2774, align 1, !tbaa !34
  %2778 = icmp eq ptr %2772, %2601
  br i1 %2778, label %.loopexit330, label %.preheader329, !llvm.loop !137

2779:                                             ; preds = %2644, %2641
  %2780 = load ptr, ptr %2568, align 8, !tbaa !39
  %2781 = getelementptr inbounds nuw i8, ptr %2780, i64 %2638
  store ptr %2781, ptr %2568, align 8, !tbaa !39
  %2782 = load ptr, ptr %2571, align 8, !tbaa !50
  br label %2794

.loopexit330:                                     ; preds = %2653, %.preheader329, %.loopexit332, %2725, %2708, %.loopexit333
  %2783 = load ptr, ptr %2568, align 8, !tbaa !39
  %2784 = getelementptr inbounds nuw i8, ptr %2783, i64 %2638
  store ptr %2784, ptr %2568, align 8, !tbaa !39
  %2785 = icmp ugt i64 %2638, 65535
  %2786 = load ptr, ptr %2571, align 8, !tbaa !50
  br i1 %2785, label %2787, label %2794, !prof !51

2787:                                             ; preds = %.loopexit330
  store i32 1, ptr %2570, align 8, !tbaa !52
  %2788 = load ptr, ptr %1, align 8, !tbaa !53
  %2789 = ptrtoint ptr %2786 to i64
  %2790 = ptrtoint ptr %2788 to i64
  %2791 = sub i64 %2789, %2790
  %2792 = lshr exact i64 %2791, 3
  %2793 = trunc i64 %2792 to i32
  store i32 %2793, ptr %2572, align 4, !tbaa !54
  br label %2794

2794:                                             ; preds = %2787, %.loopexit330, %2779
  %2795 = phi ptr [ %2782, %2779 ], [ %2786, %2787 ], [ %2786, %.loopexit330 ]
  %2796 = trunc i64 %2638 to i16
  %2797 = getelementptr inbounds nuw i8, ptr %2795, i64 4
  store i16 %2796, ptr %2797, align 4, !tbaa !55
  store i32 1, ptr %2795, align 4, !tbaa !57
  %2798 = add i64 %2634, 1
  %2799 = icmp ugt i64 %2798, 65535
  br i1 %2799, label %3276, label %3289, !prof !58

2800:                                             ; preds = %2617, %2594
  br i1 %2606, label %2801, label %3001

2801:                                             ; preds = %2800
  %2802 = lshr i32 %2598, 8
  %2803 = icmp ugt i32 %2802, %32
  br i1 %2803, label %2804, label %3001

2804:                                             ; preds = %2801
  %2805 = zext nneg i32 %2802 to i64
  %2806 = getelementptr inbounds nuw i8, ptr %34, i64 %2805
  %2807 = load i32, ptr %2806, align 1, !tbaa !23
  %2808 = load i32, ptr %2601, align 1, !tbaa !23
  %2809 = icmp ne i32 %2807, %2808
  %2810 = icmp ugt i32 %2604, %19
  %2811 = select i1 %2809, i1 true, i1 %2810
  br i1 %2811, label %3001, label %2812

2812:                                             ; preds = %2804
  %2813 = getelementptr inbounds nuw i8, ptr %34, i64 %2805
  %2814 = add i32 %2802, %42
  %2815 = sub i32 %2609, %2814
  %2816 = getelementptr inbounds nuw i8, ptr %2601, i64 4
  %2817 = getelementptr inbounds nuw i8, ptr %2813, i64 4
  %2818 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %2816, ptr noundef nonnull %2817, ptr noundef %22, ptr noundef %37, ptr noundef %21)
  %2819 = add i64 %2818, 4
  %2820 = icmp ugt ptr %2601, %2582
  br i1 %2820, label %.preheader328, label %2838

.preheader328:                                    ; preds = %2812, %2829
  %2821 = phi ptr [ %2824, %2829 ], [ %2601, %2812 ]
  %2822 = phi i64 [ %2830, %2829 ], [ %2819, %2812 ]
  %2823 = phi ptr [ %2826, %2829 ], [ %2813, %2812 ]
  %2824 = getelementptr inbounds i8, ptr %2821, i64 -1
  %2825 = load i8, ptr %2824, align 1, !tbaa !34
  %2826 = getelementptr inbounds i8, ptr %2823, i64 -1
  %2827 = load i8, ptr %2826, align 1, !tbaa !34
  %2828 = icmp eq i8 %2825, %2827
  br i1 %2828, label %2829, label %2834

2829:                                             ; preds = %.preheader328
  %2830 = add i64 %2822, 1
  %2831 = icmp ugt ptr %2824, %2582
  %2832 = icmp ugt ptr %2826, %36
  %2833 = and i1 %2831, %2832
  br i1 %2833, label %.preheader328, label %2834, !llvm.loop !97

2834:                                             ; preds = %2829, %.preheader328
  %2835 = phi i64 [ %2830, %2829 ], [ %2822, %.preheader328 ]
  %2836 = phi ptr [ %2824, %2829 ], [ %2821, %.preheader328 ]
  %2837 = ptrtoint ptr %2836 to i64
  br label %2838

2838:                                             ; preds = %2834, %2812
  %2839 = phi i64 [ %2837, %2834 ], [ %2607, %2812 ]
  %2840 = phi i64 [ %2835, %2834 ], [ %2819, %2812 ]
  %2841 = phi ptr [ %2836, %2834 ], [ %2601, %2812 ]
  %2842 = ptrtoint ptr %2582 to i64
  %2843 = sub i64 %2839, %2842
  %2844 = add i32 %2815, 3
  %2845 = icmp ugt ptr %2841, %2567
  %2846 = load ptr, ptr %2568, align 8, !tbaa !39
  br i1 %2845, label %2869, label %2847

2847:                                             ; preds = %2838
  %2848 = load <2 x i64>, ptr %2582, align 1, !tbaa !34
  store <2 x i64> %2848, ptr %2846, align 1, !tbaa !34
  %2849 = icmp ugt i64 %2843, 16
  br i1 %2849, label %2850, label %2980

2850:                                             ; preds = %2847
  %2851 = load ptr, ptr %2568, align 8, !tbaa !39
  %2852 = getelementptr inbounds nuw i8, ptr %2851, i64 16
  %2853 = getelementptr inbounds nuw i8, ptr %2582, i64 16
  %2854 = getelementptr i8, ptr %2851, i64 %2843
  %2855 = load <2 x i64>, ptr %2853, align 1, !tbaa !34
  store <2 x i64> %2855, ptr %2852, align 1, !tbaa !34
  %2856 = icmp ult i64 %2843, 33
  br i1 %2856, label %2980, label %2857

2857:                                             ; preds = %2850
  %2858 = getelementptr inbounds nuw i8, ptr %2851, i64 32
  br label %2859

2859:                                             ; preds = %2859, %2857
  %2860 = phi ptr [ %2858, %2857 ], [ %2867, %2859 ]
  %2861 = phi ptr [ %2853, %2857 ], [ %2865, %2859 ]
  %2862 = getelementptr inbounds nuw i8, ptr %2861, i64 16
  %2863 = load <2 x i64>, ptr %2862, align 1, !tbaa !34
  store <2 x i64> %2863, ptr %2860, align 1, !tbaa !34
  %2864 = getelementptr inbounds nuw i8, ptr %2860, i64 16
  %2865 = getelementptr inbounds nuw i8, ptr %2861, i64 32
  %2866 = load <2 x i64>, ptr %2865, align 1, !tbaa !34
  store <2 x i64> %2866, ptr %2864, align 1, !tbaa !34
  %2867 = getelementptr inbounds nuw i8, ptr %2860, i64 32
  %2868 = icmp ult ptr %2867, %2854
  br i1 %2868, label %2859, label %.loopexit323, !llvm.loop !42

2869:                                             ; preds = %2838
  %2870 = icmp ugt ptr %2582, %2567
  br i1 %2870, label %.loopexit326, label %2871

2871:                                             ; preds = %2869
  %2872 = sub i64 %2569, %2842
  %2873 = getelementptr inbounds i8, ptr %2846, i64 %2872
  %2874 = load <2 x i64>, ptr %2582, align 1, !tbaa !34
  store <2 x i64> %2874, ptr %2846, align 1, !tbaa !34
  %2875 = icmp ult i64 %2872, 17
  br i1 %2875, label %.loopexit326, label %2876

2876:                                             ; preds = %2871
  %2877 = getelementptr inbounds nuw i8, ptr %2846, i64 16
  br label %2878

2878:                                             ; preds = %2878, %2876
  %2879 = phi ptr [ %2877, %2876 ], [ %2886, %2878 ]
  %2880 = phi ptr [ %2582, %2876 ], [ %2884, %2878 ]
  %2881 = getelementptr inbounds nuw i8, ptr %2880, i64 16
  %2882 = load <2 x i64>, ptr %2881, align 1, !tbaa !34
  store <2 x i64> %2882, ptr %2879, align 1, !tbaa !34
  %2883 = getelementptr inbounds nuw i8, ptr %2879, i64 16
  %2884 = getelementptr inbounds nuw i8, ptr %2880, i64 32
  %2885 = load <2 x i64>, ptr %2884, align 1, !tbaa !34
  store <2 x i64> %2885, ptr %2883, align 1, !tbaa !34
  %2886 = getelementptr inbounds nuw i8, ptr %2879, i64 32
  %2887 = icmp ult ptr %2886, %2873
  br i1 %2887, label %2878, label %.loopexit326, !llvm.loop !42

.loopexit326:                                     ; preds = %2878, %2871, %2869
  %2888 = phi ptr [ %2567, %2871 ], [ %2582, %2869 ], [ %2567, %2878 ]
  %2889 = phi ptr [ %2873, %2871 ], [ %2846, %2869 ], [ %2873, %2878 ]
  %2890 = icmp ult ptr %2888, %2841
  br i1 %2890, label %2891, label %.loopexit323

2891:                                             ; preds = %.loopexit326
  %2892 = ptrtoint ptr %2888 to i64
  %2893 = ptrtoint ptr %2889 to i64
  %2894 = sub i64 %2839, %2892
  %2895 = icmp ult i64 %2894, 4
  %2896 = sub i64 %2893, %2892
  %2897 = icmp ult i64 %2896, 32
  %2898 = select i1 %2895, i1 true, i1 %2897
  br i1 %2898, label %2934, label %2899

2899:                                             ; preds = %2891
  %2900 = icmp ult i64 %2894, 32
  br i1 %2900, label %2920, label %2901

2901:                                             ; preds = %2899
  %2902 = and i64 %2894, -32
  br label %2903

2903:                                             ; preds = %2903, %2901
  %2904 = phi i64 [ 0, %2901 ], [ %2911, %2903 ]
  %2905 = getelementptr i8, ptr %2889, i64 %2904
  %2906 = getelementptr i8, ptr %2888, i64 %2904
  %2907 = getelementptr i8, ptr %2906, i64 16
  %2908 = load <16 x i8>, ptr %2906, align 1, !tbaa !34
  %2909 = load <16 x i8>, ptr %2907, align 1, !tbaa !34
  %2910 = getelementptr i8, ptr %2905, i64 16
  store <16 x i8> %2908, ptr %2905, align 1, !tbaa !34
  store <16 x i8> %2909, ptr %2910, align 1, !tbaa !34
  %2911 = add nuw i64 %2904, 32
  %2912 = icmp eq i64 %2911, %2902
  br i1 %2912, label %2913, label %2903, !llvm.loop !138

2913:                                             ; preds = %2903
  %2914 = icmp eq i64 %2894, %2902
  br i1 %2914, label %.loopexit323, label %2915

2915:                                             ; preds = %2913
  %2916 = getelementptr i8, ptr %2889, i64 %2902
  %2917 = getelementptr i8, ptr %2888, i64 %2902
  %2918 = and i64 %2894, 28
  %2919 = icmp eq i64 %2918, 0
  br i1 %2919, label %2934, label %2920

2920:                                             ; preds = %2915, %2899
  %2921 = phi i64 [ %2902, %2915 ], [ 0, %2899 ]
  %2922 = and i64 %2894, -4
  br label %2923

2923:                                             ; preds = %2923, %2920
  %2924 = phi i64 [ %2921, %2920 ], [ %2928, %2923 ]
  %2925 = getelementptr i8, ptr %2889, i64 %2924
  %2926 = getelementptr i8, ptr %2888, i64 %2924
  %2927 = load <4 x i8>, ptr %2926, align 1, !tbaa !34
  store <4 x i8> %2927, ptr %2925, align 1, !tbaa !34
  %2928 = add nuw i64 %2924, 4
  %2929 = icmp eq i64 %2928, %2922
  br i1 %2929, label %2930, label %2923, !llvm.loop !139

2930:                                             ; preds = %2923
  %2931 = getelementptr i8, ptr %2889, i64 %2922
  %2932 = getelementptr i8, ptr %2888, i64 %2922
  %2933 = icmp eq i64 %2894, %2922
  br i1 %2933, label %.loopexit323, label %2934

2934:                                             ; preds = %2930, %2915, %2891
  %2935 = phi ptr [ %2889, %2891 ], [ %2916, %2915 ], [ %2931, %2930 ]
  %2936 = phi ptr [ %2888, %2891 ], [ %2917, %2915 ], [ %2932, %2930 ]
  %2937 = ptrtoint ptr %2936 to i64
  %2938 = sub i64 %2839, %2937
  %2939 = and i64 %2938, 7
  %2940 = icmp eq i64 %2939, 0
  br i1 %2940, label %.loopexit325, label %.preheader324

.preheader324:                                    ; preds = %2934, %.preheader324
  %2941 = phi ptr [ %2946, %.preheader324 ], [ %2935, %2934 ]
  %2942 = phi ptr [ %2944, %.preheader324 ], [ %2936, %2934 ]
  %2943 = phi i64 [ %2947, %.preheader324 ], [ 0, %2934 ]
  %2944 = getelementptr inbounds nuw i8, ptr %2942, i64 1
  %2945 = load i8, ptr %2942, align 1, !tbaa !34
  %2946 = getelementptr inbounds nuw i8, ptr %2941, i64 1
  store i8 %2945, ptr %2941, align 1, !tbaa !34
  %2947 = add nuw nsw i64 %2943, 1
  %2948 = icmp eq i64 %2947, %2939
  br i1 %2948, label %.loopexit325, label %.preheader324, !llvm.loop !140

.loopexit325:                                     ; preds = %.preheader324, %2934
  %2949 = phi ptr [ %2935, %2934 ], [ %2946, %.preheader324 ]
  %2950 = phi ptr [ %2936, %2934 ], [ %2944, %.preheader324 ]
  %2951 = sub i64 %2937, %2839
  %2952 = icmp ugt i64 %2951, -8
  br i1 %2952, label %.loopexit323, label %.preheader322

.preheader322:                                    ; preds = %.loopexit325, %.preheader322
  %2953 = phi ptr [ %2978, %.preheader322 ], [ %2949, %.loopexit325 ]
  %2954 = phi ptr [ %2976, %.preheader322 ], [ %2950, %.loopexit325 ]
  %2955 = getelementptr inbounds nuw i8, ptr %2954, i64 1
  %2956 = load i8, ptr %2954, align 1, !tbaa !34
  %2957 = getelementptr inbounds nuw i8, ptr %2953, i64 1
  store i8 %2956, ptr %2953, align 1, !tbaa !34
  %2958 = getelementptr inbounds nuw i8, ptr %2954, i64 2
  %2959 = load i8, ptr %2955, align 1, !tbaa !34
  %2960 = getelementptr inbounds nuw i8, ptr %2953, i64 2
  store i8 %2959, ptr %2957, align 1, !tbaa !34
  %2961 = getelementptr inbounds nuw i8, ptr %2954, i64 3
  %2962 = load i8, ptr %2958, align 1, !tbaa !34
  %2963 = getelementptr inbounds nuw i8, ptr %2953, i64 3
  store i8 %2962, ptr %2960, align 1, !tbaa !34
  %2964 = getelementptr inbounds nuw i8, ptr %2954, i64 4
  %2965 = load i8, ptr %2961, align 1, !tbaa !34
  %2966 = getelementptr inbounds nuw i8, ptr %2953, i64 4
  store i8 %2965, ptr %2963, align 1, !tbaa !34
  %2967 = getelementptr inbounds nuw i8, ptr %2954, i64 5
  %2968 = load i8, ptr %2964, align 1, !tbaa !34
  %2969 = getelementptr inbounds nuw i8, ptr %2953, i64 5
  store i8 %2968, ptr %2966, align 1, !tbaa !34
  %2970 = getelementptr inbounds nuw i8, ptr %2954, i64 6
  %2971 = load i8, ptr %2967, align 1, !tbaa !34
  %2972 = getelementptr inbounds nuw i8, ptr %2953, i64 6
  store i8 %2971, ptr %2969, align 1, !tbaa !34
  %2973 = getelementptr inbounds nuw i8, ptr %2954, i64 7
  %2974 = load i8, ptr %2970, align 1, !tbaa !34
  %2975 = getelementptr inbounds nuw i8, ptr %2953, i64 7
  store i8 %2974, ptr %2972, align 1, !tbaa !34
  %2976 = getelementptr inbounds nuw i8, ptr %2954, i64 8
  %2977 = load i8, ptr %2973, align 1, !tbaa !34
  %2978 = getelementptr inbounds nuw i8, ptr %2953, i64 8
  store i8 %2977, ptr %2975, align 1, !tbaa !34
  %2979 = icmp eq ptr %2976, %2841
  br i1 %2979, label %.loopexit323, label %.preheader322, !llvm.loop !141

2980:                                             ; preds = %2850, %2847
  %2981 = load ptr, ptr %2568, align 8, !tbaa !39
  %2982 = getelementptr inbounds nuw i8, ptr %2981, i64 %2843
  store ptr %2982, ptr %2568, align 8, !tbaa !39
  %2983 = load ptr, ptr %2571, align 8, !tbaa !50
  br label %2995

.loopexit323:                                     ; preds = %2859, %.preheader322, %.loopexit325, %2930, %2913, %.loopexit326
  %2984 = load ptr, ptr %2568, align 8, !tbaa !39
  %2985 = getelementptr inbounds nuw i8, ptr %2984, i64 %2843
  store ptr %2985, ptr %2568, align 8, !tbaa !39
  %2986 = icmp ugt i64 %2843, 65535
  %2987 = load ptr, ptr %2571, align 8, !tbaa !50
  br i1 %2986, label %2988, label %2995, !prof !51

2988:                                             ; preds = %.loopexit323
  store i32 1, ptr %2570, align 8, !tbaa !52
  %2989 = load ptr, ptr %1, align 8, !tbaa !53
  %2990 = ptrtoint ptr %2987 to i64
  %2991 = ptrtoint ptr %2989 to i64
  %2992 = sub i64 %2990, %2991
  %2993 = lshr exact i64 %2992, 3
  %2994 = trunc i64 %2993 to i32
  store i32 %2994, ptr %2572, align 4, !tbaa !54
  br label %2995

2995:                                             ; preds = %2988, %.loopexit323, %2980
  %2996 = phi ptr [ %2983, %2980 ], [ %2987, %2988 ], [ %2987, %.loopexit323 ]
  %2997 = trunc i64 %2843 to i16
  %2998 = getelementptr inbounds nuw i8, ptr %2996, i64 4
  store i16 %2997, ptr %2998, align 4, !tbaa !55
  store i32 %2844, ptr %2996, align 4, !tbaa !57
  %2999 = add i64 %2840, -3
  %3000 = icmp ugt i64 %2999, 65535
  br i1 %3000, label %3276, label %3289, !prof !58

3001:                                             ; preds = %2804, %2801, %2800
  %3002 = tail call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %2604, i32 %19, ptr nonnull @ZSTD_match4Found_cmov.dummy, ptr readnone %2611) #6, !srcloc !32
  %3003 = load i32, ptr %2601, align 1, !tbaa !23
  %3004 = load i32, ptr %3002, align 1, !tbaa !23
  %3005 = icmp eq i32 %3003, %3004
  br i1 %3005, label %3006, label %3262

3006:                                             ; preds = %3001
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !33
  %3007 = icmp ult i32 %2604, %19
  br i1 %3007, label %3262, label %3008

3008:                                             ; preds = %3006
  %3009 = ptrtoint ptr %2611 to i64
  %3010 = sub i64 %2607, %3009
  %3011 = trunc i64 %3010 to i32
  %3012 = getelementptr inbounds nuw i8, ptr %2601, i64 4
  %3013 = getelementptr inbounds nuw i8, ptr %2611, i64 4
  %3014 = icmp ult ptr %3012, %2573
  br i1 %3014, label %3015, label %.loopexit321

3015:                                             ; preds = %3008
  %3016 = load i64, ptr %3013, align 1, !tbaa !22
  %3017 = load i64, ptr %3012, align 1, !tbaa !22
  %3018 = icmp eq i64 %3016, %3017
  br i1 %3018, label %.preheader320, label %3019

3019:                                             ; preds = %3015
  %3020 = xor i64 %3017, %3016
  %3021 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3020, i1 true)
  %3022 = lshr i64 %3021, 3
  br label %3076

.preheader320:                                    ; preds = %3015, %3028
  %3023 = phi ptr [ %3026, %3028 ], [ %3013, %3015 ]
  %3024 = phi ptr [ %3025, %3028 ], [ %3012, %3015 ]
  %3025 = getelementptr inbounds nuw i8, ptr %3024, i64 8
  %3026 = getelementptr inbounds nuw i8, ptr %3023, i64 8
  %3027 = icmp ult ptr %3025, %2573
  br i1 %3027, label %3028, label %.loopexit321

3028:                                             ; preds = %.preheader320
  %3029 = load i64, ptr %3026, align 1, !tbaa !22
  %3030 = load i64, ptr %3025, align 1, !tbaa !22
  %3031 = icmp eq i64 %3029, %3030
  br i1 %3031, label %.preheader320, label %3032

3032:                                             ; preds = %3028
  %3033 = xor i64 %3030, %3029
  %3034 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3033, i1 true)
  %3035 = lshr i64 %3034, 3
  %3036 = getelementptr inbounds nuw i8, ptr %3025, i64 %3035
  %3037 = ptrtoint ptr %3036 to i64
  %3038 = ptrtoint ptr %3012 to i64
  %3039 = sub i64 %3037, %3038
  br label %3076

.loopexit321:                                     ; preds = %.preheader320, %3008
  %3040 = phi ptr [ %3013, %3008 ], [ %3026, %.preheader320 ]
  %3041 = phi ptr [ %3012, %3008 ], [ %3025, %.preheader320 ]
  %3042 = icmp ult ptr %3041, %2574
  br i1 %3042, label %3043, label %3050

3043:                                             ; preds = %.loopexit321
  %3044 = load i32, ptr %3040, align 1, !tbaa !23
  %3045 = load i32, ptr %3041, align 1, !tbaa !23
  %3046 = icmp eq i32 %3044, %3045
  br i1 %3046, label %3047, label %3050

3047:                                             ; preds = %3043
  %3048 = getelementptr inbounds nuw i8, ptr %3041, i64 4
  %3049 = getelementptr inbounds nuw i8, ptr %3040, i64 4
  br label %3050

3050:                                             ; preds = %3047, %3043, %.loopexit321
  %3051 = phi ptr [ %3049, %3047 ], [ %3040, %3043 ], [ %3040, %.loopexit321 ]
  %3052 = phi ptr [ %3048, %3047 ], [ %3041, %3043 ], [ %3041, %.loopexit321 ]
  %3053 = icmp ult ptr %3052, %2575
  br i1 %3053, label %3054, label %3061

3054:                                             ; preds = %3050
  %3055 = load i16, ptr %3051, align 1, !tbaa !37
  %3056 = load i16, ptr %3052, align 1, !tbaa !37
  %3057 = icmp eq i16 %3055, %3056
  br i1 %3057, label %3058, label %3061

3058:                                             ; preds = %3054
  %3059 = getelementptr inbounds nuw i8, ptr %3052, i64 2
  %3060 = getelementptr inbounds nuw i8, ptr %3051, i64 2
  br label %3061

3061:                                             ; preds = %3058, %3054, %3050
  %3062 = phi ptr [ %3060, %3058 ], [ %3051, %3054 ], [ %3051, %3050 ]
  %3063 = phi ptr [ %3059, %3058 ], [ %3052, %3054 ], [ %3052, %3050 ]
  %3064 = icmp ult ptr %3063, %22
  br i1 %3064, label %3065, label %3071

3065:                                             ; preds = %3061
  %3066 = load i8, ptr %3062, align 1, !tbaa !34
  %3067 = load i8, ptr %3063, align 1, !tbaa !34
  %3068 = icmp eq i8 %3066, %3067
  %3069 = zext i1 %3068 to i64
  %3070 = getelementptr inbounds nuw i8, ptr %3063, i64 %3069
  br label %3071

3071:                                             ; preds = %3065, %3061
  %3072 = phi ptr [ %3063, %3061 ], [ %3070, %3065 ]
  %3073 = ptrtoint ptr %3072 to i64
  %3074 = ptrtoint ptr %3012 to i64
  %3075 = sub i64 %3073, %3074
  br label %3076

3076:                                             ; preds = %3071, %3032, %3019
  %3077 = phi i64 [ %3075, %3071 ], [ %3022, %3019 ], [ %3039, %3032 ]
  %3078 = add i64 %3077, 4
  %3079 = icmp ugt ptr %2601, %2582
  %3080 = icmp ugt i32 %2604, %19
  %3081 = and i1 %3079, %3080
  br i1 %3081, label %.preheader319, label %3099

.preheader319:                                    ; preds = %3076, %3090
  %3082 = phi ptr [ %3085, %3090 ], [ %2601, %3076 ]
  %3083 = phi i64 [ %3091, %3090 ], [ %3078, %3076 ]
  %3084 = phi ptr [ %3087, %3090 ], [ %2611, %3076 ]
  %3085 = getelementptr inbounds i8, ptr %3082, i64 -1
  %3086 = load i8, ptr %3085, align 1, !tbaa !34
  %3087 = getelementptr inbounds i8, ptr %3084, i64 -1
  %3088 = load i8, ptr %3087, align 1, !tbaa !34
  %3089 = icmp eq i8 %3086, %3088
  br i1 %3089, label %3090, label %3095

3090:                                             ; preds = %.preheader319
  %3091 = add i64 %3083, 1
  %3092 = icmp ugt ptr %3085, %2582
  %3093 = icmp ugt ptr %3087, %21
  %3094 = and i1 %3092, %3093
  br i1 %3094, label %.preheader319, label %3095, !llvm.loop !102

3095:                                             ; preds = %3090, %.preheader319
  %3096 = phi i64 [ %3091, %3090 ], [ %3083, %.preheader319 ]
  %3097 = phi ptr [ %3085, %3090 ], [ %3082, %.preheader319 ]
  %3098 = ptrtoint ptr %3097 to i64
  br label %3099

3099:                                             ; preds = %3095, %3076
  %3100 = phi i64 [ %3098, %3095 ], [ %2607, %3076 ]
  %3101 = phi i64 [ %3096, %3095 ], [ %3078, %3076 ]
  %3102 = phi ptr [ %3097, %3095 ], [ %2601, %3076 ]
  %3103 = ptrtoint ptr %2582 to i64
  %3104 = sub i64 %3100, %3103
  %3105 = add i32 %3011, 3
  %3106 = icmp ugt ptr %3102, %2567
  %3107 = load ptr, ptr %2568, align 8, !tbaa !39
  br i1 %3106, label %3130, label %3108

3108:                                             ; preds = %3099
  %3109 = load <2 x i64>, ptr %2582, align 1, !tbaa !34
  store <2 x i64> %3109, ptr %3107, align 1, !tbaa !34
  %3110 = icmp ugt i64 %3104, 16
  br i1 %3110, label %3111, label %3241

3111:                                             ; preds = %3108
  %3112 = load ptr, ptr %2568, align 8, !tbaa !39
  %3113 = getelementptr inbounds nuw i8, ptr %3112, i64 16
  %3114 = getelementptr inbounds nuw i8, ptr %2582, i64 16
  %3115 = getelementptr i8, ptr %3112, i64 %3104
  %3116 = load <2 x i64>, ptr %3114, align 1, !tbaa !34
  store <2 x i64> %3116, ptr %3113, align 1, !tbaa !34
  %3117 = icmp ult i64 %3104, 33
  br i1 %3117, label %3241, label %3118

3118:                                             ; preds = %3111
  %3119 = getelementptr inbounds nuw i8, ptr %3112, i64 32
  br label %3120

3120:                                             ; preds = %3120, %3118
  %3121 = phi ptr [ %3119, %3118 ], [ %3128, %3120 ]
  %3122 = phi ptr [ %3114, %3118 ], [ %3126, %3120 ]
  %3123 = getelementptr inbounds nuw i8, ptr %3122, i64 16
  %3124 = load <2 x i64>, ptr %3123, align 1, !tbaa !34
  store <2 x i64> %3124, ptr %3121, align 1, !tbaa !34
  %3125 = getelementptr inbounds nuw i8, ptr %3121, i64 16
  %3126 = getelementptr inbounds nuw i8, ptr %3122, i64 32
  %3127 = load <2 x i64>, ptr %3126, align 1, !tbaa !34
  store <2 x i64> %3127, ptr %3125, align 1, !tbaa !34
  %3128 = getelementptr inbounds nuw i8, ptr %3121, i64 32
  %3129 = icmp ult ptr %3128, %3115
  br i1 %3129, label %3120, label %.loopexit314, !llvm.loop !42

3130:                                             ; preds = %3099
  %3131 = icmp ugt ptr %2582, %2567
  br i1 %3131, label %.loopexit317, label %3132

3132:                                             ; preds = %3130
  %3133 = sub i64 %2569, %3103
  %3134 = getelementptr inbounds i8, ptr %3107, i64 %3133
  %3135 = load <2 x i64>, ptr %2582, align 1, !tbaa !34
  store <2 x i64> %3135, ptr %3107, align 1, !tbaa !34
  %3136 = icmp ult i64 %3133, 17
  br i1 %3136, label %.loopexit317, label %3137

3137:                                             ; preds = %3132
  %3138 = getelementptr inbounds nuw i8, ptr %3107, i64 16
  br label %3139

3139:                                             ; preds = %3139, %3137
  %3140 = phi ptr [ %3138, %3137 ], [ %3147, %3139 ]
  %3141 = phi ptr [ %2582, %3137 ], [ %3145, %3139 ]
  %3142 = getelementptr inbounds nuw i8, ptr %3141, i64 16
  %3143 = load <2 x i64>, ptr %3142, align 1, !tbaa !34
  store <2 x i64> %3143, ptr %3140, align 1, !tbaa !34
  %3144 = getelementptr inbounds nuw i8, ptr %3140, i64 16
  %3145 = getelementptr inbounds nuw i8, ptr %3141, i64 32
  %3146 = load <2 x i64>, ptr %3145, align 1, !tbaa !34
  store <2 x i64> %3146, ptr %3144, align 1, !tbaa !34
  %3147 = getelementptr inbounds nuw i8, ptr %3140, i64 32
  %3148 = icmp ult ptr %3147, %3134
  br i1 %3148, label %3139, label %.loopexit317, !llvm.loop !42

.loopexit317:                                     ; preds = %3139, %3132, %3130
  %3149 = phi ptr [ %2567, %3132 ], [ %2582, %3130 ], [ %2567, %3139 ]
  %3150 = phi ptr [ %3134, %3132 ], [ %3107, %3130 ], [ %3134, %3139 ]
  %3151 = icmp ult ptr %3149, %3102
  br i1 %3151, label %3152, label %.loopexit314

3152:                                             ; preds = %.loopexit317
  %3153 = ptrtoint ptr %3149 to i64
  %3154 = ptrtoint ptr %3150 to i64
  %3155 = sub i64 %3100, %3153
  %3156 = icmp ult i64 %3155, 4
  %3157 = sub i64 %3154, %3153
  %3158 = icmp ult i64 %3157, 32
  %3159 = select i1 %3156, i1 true, i1 %3158
  br i1 %3159, label %3195, label %3160

3160:                                             ; preds = %3152
  %3161 = icmp ult i64 %3155, 32
  br i1 %3161, label %3181, label %3162

3162:                                             ; preds = %3160
  %3163 = and i64 %3155, -32
  br label %3164

3164:                                             ; preds = %3164, %3162
  %3165 = phi i64 [ 0, %3162 ], [ %3172, %3164 ]
  %3166 = getelementptr i8, ptr %3150, i64 %3165
  %3167 = getelementptr i8, ptr %3149, i64 %3165
  %3168 = getelementptr i8, ptr %3167, i64 16
  %3169 = load <16 x i8>, ptr %3167, align 1, !tbaa !34
  %3170 = load <16 x i8>, ptr %3168, align 1, !tbaa !34
  %3171 = getelementptr i8, ptr %3166, i64 16
  store <16 x i8> %3169, ptr %3166, align 1, !tbaa !34
  store <16 x i8> %3170, ptr %3171, align 1, !tbaa !34
  %3172 = add nuw i64 %3165, 32
  %3173 = icmp eq i64 %3172, %3163
  br i1 %3173, label %3174, label %3164, !llvm.loop !142

3174:                                             ; preds = %3164
  %3175 = icmp eq i64 %3155, %3163
  br i1 %3175, label %.loopexit314, label %3176

3176:                                             ; preds = %3174
  %3177 = getelementptr i8, ptr %3150, i64 %3163
  %3178 = getelementptr i8, ptr %3149, i64 %3163
  %3179 = and i64 %3155, 28
  %3180 = icmp eq i64 %3179, 0
  br i1 %3180, label %3195, label %3181

3181:                                             ; preds = %3176, %3160
  %3182 = phi i64 [ %3163, %3176 ], [ 0, %3160 ]
  %3183 = and i64 %3155, -4
  br label %3184

3184:                                             ; preds = %3184, %3181
  %3185 = phi i64 [ %3182, %3181 ], [ %3189, %3184 ]
  %3186 = getelementptr i8, ptr %3150, i64 %3185
  %3187 = getelementptr i8, ptr %3149, i64 %3185
  %3188 = load <4 x i8>, ptr %3187, align 1, !tbaa !34
  store <4 x i8> %3188, ptr %3186, align 1, !tbaa !34
  %3189 = add nuw i64 %3185, 4
  %3190 = icmp eq i64 %3189, %3183
  br i1 %3190, label %3191, label %3184, !llvm.loop !143

3191:                                             ; preds = %3184
  %3192 = getelementptr i8, ptr %3150, i64 %3183
  %3193 = getelementptr i8, ptr %3149, i64 %3183
  %3194 = icmp eq i64 %3155, %3183
  br i1 %3194, label %.loopexit314, label %3195

3195:                                             ; preds = %3191, %3176, %3152
  %3196 = phi ptr [ %3150, %3152 ], [ %3177, %3176 ], [ %3192, %3191 ]
  %3197 = phi ptr [ %3149, %3152 ], [ %3178, %3176 ], [ %3193, %3191 ]
  %3198 = ptrtoint ptr %3197 to i64
  %3199 = sub i64 %3100, %3198
  %3200 = and i64 %3199, 7
  %3201 = icmp eq i64 %3200, 0
  br i1 %3201, label %.loopexit316, label %.preheader315

.preheader315:                                    ; preds = %3195, %.preheader315
  %3202 = phi ptr [ %3207, %.preheader315 ], [ %3196, %3195 ]
  %3203 = phi ptr [ %3205, %.preheader315 ], [ %3197, %3195 ]
  %3204 = phi i64 [ %3208, %.preheader315 ], [ 0, %3195 ]
  %3205 = getelementptr inbounds nuw i8, ptr %3203, i64 1
  %3206 = load i8, ptr %3203, align 1, !tbaa !34
  %3207 = getelementptr inbounds nuw i8, ptr %3202, i64 1
  store i8 %3206, ptr %3202, align 1, !tbaa !34
  %3208 = add nuw nsw i64 %3204, 1
  %3209 = icmp eq i64 %3208, %3200
  br i1 %3209, label %.loopexit316, label %.preheader315, !llvm.loop !144

.loopexit316:                                     ; preds = %.preheader315, %3195
  %3210 = phi ptr [ %3196, %3195 ], [ %3207, %.preheader315 ]
  %3211 = phi ptr [ %3197, %3195 ], [ %3205, %.preheader315 ]
  %3212 = sub i64 %3198, %3100
  %3213 = icmp ugt i64 %3212, -8
  br i1 %3213, label %.loopexit314, label %.preheader313

.preheader313:                                    ; preds = %.loopexit316, %.preheader313
  %3214 = phi ptr [ %3239, %.preheader313 ], [ %3210, %.loopexit316 ]
  %3215 = phi ptr [ %3237, %.preheader313 ], [ %3211, %.loopexit316 ]
  %3216 = getelementptr inbounds nuw i8, ptr %3215, i64 1
  %3217 = load i8, ptr %3215, align 1, !tbaa !34
  %3218 = getelementptr inbounds nuw i8, ptr %3214, i64 1
  store i8 %3217, ptr %3214, align 1, !tbaa !34
  %3219 = getelementptr inbounds nuw i8, ptr %3215, i64 2
  %3220 = load i8, ptr %3216, align 1, !tbaa !34
  %3221 = getelementptr inbounds nuw i8, ptr %3214, i64 2
  store i8 %3220, ptr %3218, align 1, !tbaa !34
  %3222 = getelementptr inbounds nuw i8, ptr %3215, i64 3
  %3223 = load i8, ptr %3219, align 1, !tbaa !34
  %3224 = getelementptr inbounds nuw i8, ptr %3214, i64 3
  store i8 %3223, ptr %3221, align 1, !tbaa !34
  %3225 = getelementptr inbounds nuw i8, ptr %3215, i64 4
  %3226 = load i8, ptr %3222, align 1, !tbaa !34
  %3227 = getelementptr inbounds nuw i8, ptr %3214, i64 4
  store i8 %3226, ptr %3224, align 1, !tbaa !34
  %3228 = getelementptr inbounds nuw i8, ptr %3215, i64 5
  %3229 = load i8, ptr %3225, align 1, !tbaa !34
  %3230 = getelementptr inbounds nuw i8, ptr %3214, i64 5
  store i8 %3229, ptr %3227, align 1, !tbaa !34
  %3231 = getelementptr inbounds nuw i8, ptr %3215, i64 6
  %3232 = load i8, ptr %3228, align 1, !tbaa !34
  %3233 = getelementptr inbounds nuw i8, ptr %3214, i64 6
  store i8 %3232, ptr %3230, align 1, !tbaa !34
  %3234 = getelementptr inbounds nuw i8, ptr %3215, i64 7
  %3235 = load i8, ptr %3231, align 1, !tbaa !34
  %3236 = getelementptr inbounds nuw i8, ptr %3214, i64 7
  store i8 %3235, ptr %3233, align 1, !tbaa !34
  %3237 = getelementptr inbounds nuw i8, ptr %3215, i64 8
  %3238 = load i8, ptr %3234, align 1, !tbaa !34
  %3239 = getelementptr inbounds nuw i8, ptr %3214, i64 8
  store i8 %3238, ptr %3236, align 1, !tbaa !34
  %3240 = icmp eq ptr %3237, %3102
  br i1 %3240, label %.loopexit314, label %.preheader313, !llvm.loop !145

3241:                                             ; preds = %3111, %3108
  %3242 = load ptr, ptr %2568, align 8, !tbaa !39
  %3243 = getelementptr inbounds nuw i8, ptr %3242, i64 %3104
  store ptr %3243, ptr %2568, align 8, !tbaa !39
  %3244 = load ptr, ptr %2571, align 8, !tbaa !50
  br label %3256

.loopexit314:                                     ; preds = %3120, %.preheader313, %.loopexit316, %3191, %3174, %.loopexit317
  %3245 = load ptr, ptr %2568, align 8, !tbaa !39
  %3246 = getelementptr inbounds nuw i8, ptr %3245, i64 %3104
  store ptr %3246, ptr %2568, align 8, !tbaa !39
  %3247 = icmp ugt i64 %3104, 65535
  %3248 = load ptr, ptr %2571, align 8, !tbaa !50
  br i1 %3247, label %3249, label %3256, !prof !51

3249:                                             ; preds = %.loopexit314
  store i32 1, ptr %2570, align 8, !tbaa !52
  %3250 = load ptr, ptr %1, align 8, !tbaa !53
  %3251 = ptrtoint ptr %3248 to i64
  %3252 = ptrtoint ptr %3250 to i64
  %3253 = sub i64 %3251, %3252
  %3254 = lshr exact i64 %3253, 3
  %3255 = trunc i64 %3254 to i32
  store i32 %3255, ptr %2572, align 4, !tbaa !54
  br label %3256

3256:                                             ; preds = %3249, %.loopexit314, %3241
  %3257 = phi ptr [ %3244, %3241 ], [ %3248, %3249 ], [ %3248, %.loopexit314 ]
  %3258 = trunc i64 %3104 to i16
  %3259 = getelementptr inbounds nuw i8, ptr %3257, i64 4
  store i16 %3258, ptr %3259, align 4, !tbaa !55
  store i32 %3105, ptr %3257, align 4, !tbaa !57
  %3260 = add i64 %3101, -3
  %3261 = icmp ugt i64 %3260, 65535
  br i1 %3261, label %3276, label %3289, !prof !58

3262:                                             ; preds = %3006, %3001
  %3263 = icmp uge ptr %2600, %2595
  %3264 = zext i1 %3263 to i64
  %3265 = add i64 %2596, %3264
  %3266 = getelementptr inbounds nuw i8, ptr %2600, i64 %3265
  %3267 = icmp ugt ptr %3266, %23
  br i1 %3267, label %.loopexit305, label %3268

3268:                                             ; preds = %3262
  %3269 = select i1 %3263, i64 256, i64 0
  %3270 = getelementptr inbounds nuw i8, ptr %2595, i64 %3269
  %3271 = lshr i64 %2614, 8
  %3272 = getelementptr inbounds nuw [4 x i8], ptr %30, i64 %3271
  %3273 = load i32, ptr %3272, align 4, !tbaa !23
  %3274 = zext i32 %3273 to i64
  %3275 = xor i64 %2614, %3274
  br label %2594

3276:                                             ; preds = %3256, %2995, %2794
  %3277 = phi ptr [ %2795, %2794 ], [ %2996, %2995 ], [ %3257, %3256 ]
  %3278 = phi i64 [ %2798, %2794 ], [ %2999, %2995 ], [ %3260, %3256 ]
  %3279 = phi i64 [ %2635, %2794 ], [ %2840, %2995 ], [ %3101, %3256 ]
  %3280 = phi i32 [ %2584, %2794 ], [ %2583, %2995 ], [ %2583, %3256 ]
  %3281 = phi i32 [ %2583, %2794 ], [ %2815, %2995 ], [ %3011, %3256 ]
  %3282 = phi ptr [ %2630, %2794 ], [ %2841, %2995 ], [ %3102, %3256 ]
  store i32 2, ptr %2570, align 8, !tbaa !52
  %3283 = load ptr, ptr %1, align 8, !tbaa !53
  %3284 = ptrtoint ptr %3277 to i64
  %3285 = ptrtoint ptr %3283 to i64
  %3286 = sub i64 %3284, %3285
  %3287 = lshr exact i64 %3286, 3
  %3288 = trunc i64 %3287 to i32
  store i32 %3288, ptr %2572, align 4, !tbaa !54
  br label %3289

3289:                                             ; preds = %3276, %3256, %2995, %2794
  %3290 = phi i64 [ %2798, %2794 ], [ %2999, %2995 ], [ %3260, %3256 ], [ %3278, %3276 ]
  %3291 = phi ptr [ %2795, %2794 ], [ %2996, %2995 ], [ %3257, %3256 ], [ %3277, %3276 ]
  %3292 = phi i64 [ %2635, %2794 ], [ %2840, %2995 ], [ %3101, %3256 ], [ %3279, %3276 ]
  %3293 = phi i32 [ %2584, %2794 ], [ %2583, %2995 ], [ %2583, %3256 ], [ %3280, %3276 ]
  %3294 = phi i32 [ %2583, %2794 ], [ %2815, %2995 ], [ %3011, %3256 ], [ %3281, %3276 ]
  %3295 = phi ptr [ %2630, %2794 ], [ %2841, %2995 ], [ %3102, %3256 ], [ %3282, %3276 ]
  %3296 = trunc i64 %3290 to i16
  %3297 = getelementptr inbounds nuw i8, ptr %3291, i64 6
  store i16 %3296, ptr %3297, align 2, !tbaa !59
  %3298 = getelementptr inbounds nuw i8, ptr %3291, i64 8
  store ptr %3298, ptr %2571, align 8, !tbaa !50
  %3299 = getelementptr inbounds nuw i8, ptr %3295, i64 %3292
  %3300 = icmp ugt ptr %3299, %23
  br i1 %3300, label %.loopexit309, label %3301

3301:                                             ; preds = %3289
  %3302 = add i32 %2609, 2
  %3303 = and i64 %2608, 4294967295
  %3304 = getelementptr inbounds nuw i8, ptr %2554, i64 %3303
  %3305 = load i64, ptr %3304, align 1, !tbaa !22
  %3306 = mul i64 %3305, -3523014627193167104
  %3307 = lshr i64 %3306, %2564
  %3308 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %3307
  store i32 %3302, ptr %3308, align 4, !tbaa !23
  %3309 = getelementptr inbounds i8, ptr %3299, i64 -2
  %3310 = ptrtoint ptr %3309 to i64
  %3311 = sub i64 %3310, %52
  %3312 = trunc i64 %3311 to i32
  %3313 = load i64, ptr %3309, align 1, !tbaa !22
  %3314 = mul i64 %3313, -3523014627193167104
  %3315 = lshr i64 %3314, %2564
  %3316 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %3315
  store i32 %3312, ptr %3316, align 4, !tbaa !23
  br label %3317

3317:                                             ; preds = %3358, %3301
  %3318 = phi ptr [ %3298, %3301 ], [ %3361, %3358 ]
  %3319 = phi ptr [ %3299, %3301 ], [ %3367, %3358 ]
  %3320 = phi i32 [ %3294, %3301 ], [ %3321, %3358 ]
  %3321 = phi i32 [ %3293, %3301 ], [ %3320, %3358 ]
  %3322 = ptrtoint ptr %3319 to i64
  %3323 = sub i64 %3322, %52
  %3324 = trunc i64 %3323 to i32
  %3325 = sub i32 %3324, %3321
  %3326 = icmp ult i32 %3325, %19
  %3327 = zext i32 %3325 to i64
  %3328 = select i1 %3326, ptr %2578, ptr %16
  %3329 = getelementptr inbounds nuw i8, ptr %3328, i64 %3327
  %3330 = sub i32 %3325, %19
  %3331 = icmp ugt i32 %3330, -4
  br i1 %3331, label %.loopexit309, label %3332

3332:                                             ; preds = %3317
  %3333 = load i32, ptr %3329, align 1, !tbaa !23
  %3334 = load i32, ptr %3319, align 1, !tbaa !23
  %3335 = icmp eq i32 %3333, %3334
  br i1 %3335, label %3336, label %.loopexit309

3336:                                             ; preds = %3332
  %3337 = select i1 %3326, ptr %37, ptr %22
  %3338 = getelementptr inbounds nuw i8, ptr %3319, i64 4
  %3339 = getelementptr inbounds nuw i8, ptr %3329, i64 4
  %3340 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %3338, ptr noundef nonnull %3339, ptr noundef %22, ptr noundef %3337, ptr noundef %21)
  %3341 = icmp ugt ptr %3319, %2567
  br i1 %3341, label %3346, label %3342

3342:                                             ; preds = %3336
  %3343 = load ptr, ptr %2568, align 8, !tbaa !39
  %3344 = load <2 x i64>, ptr %3319, align 1, !tbaa !34
  store <2 x i64> %3344, ptr %3343, align 1, !tbaa !34
  %3345 = load ptr, ptr %2571, align 8, !tbaa !50
  br label %3346

3346:                                             ; preds = %3342, %3336
  %3347 = phi ptr [ %3318, %3336 ], [ %3345, %3342 ]
  %3348 = getelementptr inbounds nuw i8, ptr %3347, i64 4
  store i16 0, ptr %3348, align 4, !tbaa !55
  store i32 1, ptr %3347, align 4, !tbaa !57
  %3349 = add i64 %3340, 1
  %3350 = icmp ugt i64 %3349, 65535
  br i1 %3350, label %3351, label %3358, !prof !58

3351:                                             ; preds = %3346
  store i32 2, ptr %2570, align 8, !tbaa !52
  %3352 = load ptr, ptr %1, align 8, !tbaa !53
  %3353 = ptrtoint ptr %3347 to i64
  %3354 = ptrtoint ptr %3352 to i64
  %3355 = sub i64 %3353, %3354
  %3356 = lshr exact i64 %3355, 3
  %3357 = trunc i64 %3356 to i32
  store i32 %3357, ptr %2572, align 4, !tbaa !54
  br label %3358

3358:                                             ; preds = %3351, %3346
  %3359 = trunc i64 %3349 to i16
  %3360 = getelementptr inbounds nuw i8, ptr %3347, i64 6
  store i16 %3359, ptr %3360, align 2, !tbaa !59
  %3361 = getelementptr inbounds nuw i8, ptr %3347, i64 8
  store ptr %3361, ptr %2571, align 8, !tbaa !50
  %3362 = load i64, ptr %3319, align 1, !tbaa !22
  %3363 = mul i64 %3362, -3523014627193167104
  %3364 = lshr i64 %3363, %2564
  %3365 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %3364
  store i32 %3324, ptr %3365, align 4, !tbaa !23
  %3366 = getelementptr i8, ptr %3319, i64 %3340
  %3367 = getelementptr i8, ptr %3366, i64 4
  %3368 = icmp ugt ptr %3367, %23
  br i1 %3368, label %.loopexit309, label %3317

.loopexit309:                                     ; preds = %3358, %3332, %3317, %3289
  %3369 = phi i32 [ %3293, %3289 ], [ %3321, %3317 ], [ %3321, %3332 ], [ %3320, %3358 ]
  %3370 = phi i32 [ %3294, %3289 ], [ %3320, %3317 ], [ %3320, %3332 ], [ %3321, %3358 ]
  %3371 = phi ptr [ %3299, %3289 ], [ %3319, %3317 ], [ %3319, %3332 ], [ %3367, %3358 ]
  %3372 = getelementptr inbounds nuw i8, ptr %3371, i64 %17
  %3373 = icmp ugt ptr %3372, %23
  br i1 %3373, label %.loopexit305, label %2579

.loopexit305:                                     ; preds = %.loopexit369, %2433, %.loopexit339, %1604, %.loopexit309, %3262, %.loopexit, %772, %.loopexit338, %.loopexit398, %.loopexit368, %.loopexit308
  %3374 = phi i32 [ %24, %.loopexit308 ], [ %24, %.loopexit368 ], [ %24, %.loopexit398 ], [ %24, %.loopexit338 ], [ %883, %.loopexit ], [ %2583, %3262 ], [ %3370, %.loopexit309 ], [ %925, %1604 ], [ %1712, %.loopexit339 ], [ %1754, %2433 ], [ %92, %772 ], [ %2541, %.loopexit369 ]
  %3375 = phi i32 [ %26, %.loopexit308 ], [ %26, %.loopexit368 ], [ %26, %.loopexit398 ], [ %26, %.loopexit338 ], [ %882, %.loopexit ], [ %2584, %3262 ], [ %3369, %.loopexit309 ], [ %926, %1604 ], [ %1711, %.loopexit339 ], [ %1755, %2433 ], [ %93, %772 ], [ %2540, %.loopexit369 ]
  %3376 = phi ptr [ %3, %.loopexit308 ], [ %3, %.loopexit368 ], [ %3, %.loopexit398 ], [ %3, %.loopexit338 ], [ %884, %.loopexit ], [ %2582, %3262 ], [ %3371, %.loopexit309 ], [ %924, %1604 ], [ %1713, %.loopexit339 ], [ %1753, %2433 ], [ %91, %772 ], [ %2542, %.loopexit369 ]
  store i32 %3374, ptr %2, align 4, !tbaa !23
  store i32 %3375, ptr %25, align 4, !tbaa !23
  %3377 = ptrtoint ptr %22 to i64
  %3378 = ptrtoint ptr %3376 to i64
  %3379 = sub i64 %3377, %3378
  ret i64 %3379
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_fast_extDict(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %7 = load i32, ptr %6, align 8, !tbaa !27
  %8 = add i32 %7, -5
  %9 = icmp ult i32 %8, 3
  %10 = select i1 %9, i32 %7, i32 4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %15 = load i32, ptr %14, align 8, !tbaa !21
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %17 = load i32, ptr %16, align 4, !tbaa !29
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 1)
  %19 = add i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %22 = load ptr, ptr %21, align 8, !tbaa !19
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %24 = load ptr, ptr %23, align 8, !tbaa !146
  %25 = ptrtoint ptr %3 to i64
  %26 = ptrtoint ptr %22 to i64
  %27 = sub i64 %25, %26
  %28 = add i64 %27, %4
  %29 = trunc i64 %28 to i32
  %30 = load i32, ptr %11, align 8, !tbaa !147
  %31 = getelementptr i8, ptr %0, i64 28
  %32 = load i32, ptr %31, align 4, !tbaa !148
  %33 = getelementptr i8, ptr %0, i64 40
  %34 = load i32, ptr %33, align 8, !tbaa !31
  %35 = shl nuw i32 1, %30
  %36 = sub i32 %29, %32
  %37 = icmp ugt i32 %36, %35
  %38 = sub i32 %29, %35
  %39 = icmp eq i32 %34, 0
  %40 = select i1 %39, i1 %37, i1 false
  %41 = select i1 %40, i32 %38, i32 %32
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds nuw i8, ptr %24, i64 %42
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %45 = load i32, ptr %44, align 8, !tbaa !30
  %46 = tail call i32 @llvm.umax.i32(i32 %45, i32 %41)
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds nuw i8, ptr %22, i64 %47
  %49 = getelementptr inbounds nuw i8, ptr %24, i64 %47
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %51 = getelementptr inbounds i8, ptr %50, i64 -8
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %53 = icmp ult i32 %41, %45
  br i1 %53, label %56, label %54

54:                                               ; preds = %5
  %55 = tail call i64 @ZSTD_compressBlock_fast(ptr noundef nonnull readonly %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %4)
  br label %ZSTD_compressBlock_fast_extDict_generic.exit

56:                                               ; preds = %5
  %57 = load i32, ptr %52, align 4, !tbaa !23
  %58 = load i32, ptr %2, align 4, !tbaa !23
  %59 = trunc i64 %27 to i32
  %60 = sub i32 %59, %41
  %61 = icmp ult i32 %57, %60
  %62 = select i1 %61, i32 0, i32 %57
  %63 = select i1 %61, i32 %57, i32 0
  %64 = icmp ult i32 %58, %60
  %65 = select i1 %64, i32 0, i32 %58
  %66 = select i1 %64, i32 %58, i32 0
  %67 = getelementptr inbounds nuw i8, ptr %22, i64 2
  %68 = add nuw nsw i64 %20, 1
  %69 = add nsw i64 %4, -8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %.loopexit44.i

71:                                               ; preds = %56
  %72 = getelementptr inbounds nuw i8, ptr %3, i64 %20
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 1
  %74 = sub i32 32, %15
  %75 = sub i32 64, %15
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %50, i64 -32
  %78 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %79 = ptrtoint ptr %77 to i64
  %80 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %82 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %.split.i

.split.i:                                         ; preds = %.loopexit.i, %71
  %83 = phi ptr [ %611, %.loopexit.i ], [ %73, %71 ]
  %84 = phi ptr [ %610, %.loopexit.i ], [ %72, %71 ]
  %85 = phi i32 [ %609, %.loopexit.i ], [ %66, %71 ]
  %86 = phi i32 [ %608, %.loopexit.i ], [ %63, %71 ]
  %87 = phi ptr [ %607, %.loopexit.i ], [ %3, %71 ]
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 1
  %89 = getelementptr inbounds nuw i8, ptr %87, i64 128
  switch i32 %10, label %.split.unreachabledefault.i [
    i32 7, label %104
    i32 5, label %90
    i32 6, label %97
    i32 4, label %111
  ]

90:                                               ; preds = %.split.i
  %91 = load i64, ptr %87, align 1, !tbaa !22
  %92 = mul i64 %91, -3523014627271114752
  %93 = lshr i64 %92, %76
  %94 = load i64, ptr %88, align 1, !tbaa !22
  %95 = mul i64 %94, -3523014627271114752
  %96 = lshr i64 %95, %76
  br label %120

97:                                               ; preds = %.split.i
  %98 = load i64, ptr %87, align 1, !tbaa !22
  %99 = mul i64 %98, -3523014627193847808
  %100 = lshr i64 %99, %76
  %101 = load i64, ptr %88, align 1, !tbaa !22
  %102 = mul i64 %101, -3523014627193847808
  %103 = lshr i64 %102, %76
  br label %120

104:                                              ; preds = %.split.i
  %105 = load i64, ptr %87, align 1, !tbaa !22
  %106 = mul i64 %105, -3523014627193167104
  %107 = lshr i64 %106, %76
  %108 = load i64, ptr %88, align 1, !tbaa !22
  %109 = mul i64 %108, -3523014627193167104
  %110 = lshr i64 %109, %76
  br label %120

.split.unreachabledefault.i:                      ; preds = %.split.i
  unreachable

default.unreachable185.i:                         ; preds = %488, %217, %184, %580
  unreachable

111:                                              ; preds = %.split.i
  %112 = load i32, ptr %87, align 1, !tbaa !23
  %113 = mul i32 %112, -1640531535
  %114 = lshr i32 %113, %74
  %115 = zext i32 %114 to i64
  %116 = load i32, ptr %88, align 1, !tbaa !23
  %117 = mul i32 %116, -1640531535
  %118 = lshr i32 %117, %74
  %119 = zext i32 %118 to i64
  br label %120

120:                                              ; preds = %111, %104, %97, %90
  %121 = phi i64 [ %115, %111 ], [ %93, %90 ], [ %100, %97 ], [ %107, %104 ]
  %122 = phi i64 [ %119, %111 ], [ %96, %90 ], [ %103, %97 ], [ %110, %104 ]
  %123 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %121
  %124 = load i32, ptr %123, align 4, !tbaa !23
  %125 = icmp ult i32 %124, %46
  %126 = select i1 %125, ptr %24, ptr %22
  %127 = icmp ne i32 %85, 0
  br label %128

128:                                              ; preds = %249, %120
  %129 = phi i64 [ %20, %120 ], [ %250, %249 ]
  %130 = phi ptr [ %89, %120 ], [ %251, %249 ]
  %131 = phi ptr [ %126, %120 ], [ %221, %249 ]
  %132 = phi i32 [ %124, %120 ], [ %219, %249 ]
  %133 = phi i64 [ %122, %120 ], [ %240, %249 ]
  %134 = phi i64 [ %121, %120 ], [ %206, %249 ]
  %135 = phi ptr [ %83, %120 ], [ %242, %249 ]
  %136 = phi ptr [ %84, %120 ], [ %241, %249 ]
  %137 = phi ptr [ %88, %120 ], [ %135, %249 ]
  %138 = phi ptr [ %87, %120 ], [ %136, %249 ]
  %139 = ptrtoint ptr %136 to i64
  %140 = sub i64 %139, %26
  %141 = trunc i64 %140 to i32
  %142 = sub i32 %141, %85
  %143 = icmp ult i32 %142, %46
  %144 = select i1 %143, ptr %24, ptr %22
  %145 = sub i32 %46, %142
  %146 = icmp ugt i32 %145, 3
  %147 = and i1 %127, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %128
  %149 = zext i32 %142 to i64
  %150 = getelementptr inbounds nuw i8, ptr %144, i64 %149
  %151 = load i32, ptr %150, align 1, !tbaa !23
  br label %155

152:                                              ; preds = %128
  %153 = load i32, ptr %136, align 1, !tbaa !23
  %154 = xor i32 %153, 1
  br label %155

155:                                              ; preds = %152, %148
  %156 = phi i32 [ %151, %148 ], [ %154, %152 ]
  %157 = ptrtoint ptr %138 to i64
  %158 = sub i64 %157, %26
  %159 = trunc i64 %158 to i32
  %160 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %134
  store i32 %159, ptr %160, align 4, !tbaa !23
  %161 = load i32, ptr %136, align 1, !tbaa !23
  %162 = icmp eq i32 %161, %156
  br i1 %162, label %163, label %176

163:                                              ; preds = %155
  %164 = zext i32 %142 to i64
  %165 = getelementptr inbounds nuw i8, ptr %144, i64 %164
  %166 = select i1 %143, ptr %49, ptr %50
  %167 = getelementptr inbounds i8, ptr %136, i64 -1
  %168 = load i8, ptr %167, align 1, !tbaa !34
  %169 = getelementptr inbounds i8, ptr %165, i64 -1
  %170 = load i8, ptr %169, align 1, !tbaa !34
  %171 = icmp eq i8 %168, %170
  %172 = sext i1 %171 to i64
  %173 = getelementptr inbounds i8, ptr %136, i64 %172
  %174 = getelementptr inbounds i8, ptr %165, i64 %172
  %175 = select i1 %171, i64 5, i64 4
  br label %.loopexit39.i

176:                                              ; preds = %155
  %177 = icmp ult i32 %132, %41
  br i1 %177, label %184, label %178

178:                                              ; preds = %176
  %179 = zext i32 %132 to i64
  %180 = getelementptr inbounds nuw i8, ptr %131, i64 %179
  %181 = load i32, ptr %180, align 1, !tbaa !23
  %182 = load i32, ptr %138, align 1, !tbaa !23
  %183 = icmp eq i32 %182, %181
  br i1 %183, label %266, label %184

184:                                              ; preds = %178, %176
  %185 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %133
  %186 = load i32, ptr %185, align 4, !tbaa !23
  %187 = icmp ult i32 %186, %46
  %188 = select i1 %187, ptr %24, ptr %22
  switch i32 %10, label %default.unreachable185.i [
    i32 7, label %201
    i32 5, label %193
    i32 6, label %197
    i32 4, label %189
  ]

189:                                              ; preds = %184
  %190 = mul i32 %161, -1640531535
  %191 = lshr i32 %190, %74
  %192 = zext i32 %191 to i64
  br label %205

193:                                              ; preds = %184
  %194 = load i64, ptr %136, align 1, !tbaa !22
  %195 = mul i64 %194, -3523014627271114752
  %196 = lshr i64 %195, %76
  br label %205

197:                                              ; preds = %184
  %198 = load i64, ptr %136, align 1, !tbaa !22
  %199 = mul i64 %198, -3523014627193847808
  %200 = lshr i64 %199, %76
  br label %205

201:                                              ; preds = %184
  %202 = load i64, ptr %136, align 1, !tbaa !22
  %203 = mul i64 %202, -3523014627193167104
  %204 = lshr i64 %203, %76
  br label %205

205:                                              ; preds = %201, %197, %193, %189
  %206 = phi i64 [ %192, %189 ], [ %196, %193 ], [ %200, %197 ], [ %204, %201 ]
  %207 = ptrtoint ptr %137 to i64
  %208 = sub i64 %207, %26
  %209 = trunc i64 %208 to i32
  store i32 %209, ptr %185, align 4, !tbaa !23
  %210 = icmp ult i32 %186, %41
  br i1 %210, label %217, label %211

211:                                              ; preds = %205
  %212 = zext i32 %186 to i64
  %213 = getelementptr inbounds nuw i8, ptr %188, i64 %212
  %214 = load i32, ptr %213, align 1, !tbaa !23
  %215 = load i32, ptr %137, align 1, !tbaa !23
  %216 = icmp eq i32 %215, %214
  br i1 %216, label %266, label %217

217:                                              ; preds = %211, %205
  %218 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %206
  %219 = load i32, ptr %218, align 4, !tbaa !23
  %220 = icmp ult i32 %219, %46
  %221 = select i1 %220, ptr %24, ptr %22
  switch i32 %10, label %default.unreachable185.i [
    i32 7, label %235
    i32 5, label %227
    i32 6, label %231
    i32 4, label %222
  ]

222:                                              ; preds = %217
  %223 = load i32, ptr %135, align 1, !tbaa !23
  %224 = mul i32 %223, -1640531535
  %225 = lshr i32 %224, %74
  %226 = zext i32 %225 to i64
  br label %239

227:                                              ; preds = %217
  %228 = load i64, ptr %135, align 1, !tbaa !22
  %229 = mul i64 %228, -3523014627271114752
  %230 = lshr i64 %229, %76
  br label %239

231:                                              ; preds = %217
  %232 = load i64, ptr %135, align 1, !tbaa !22
  %233 = mul i64 %232, -3523014627193847808
  %234 = lshr i64 %233, %76
  br label %239

235:                                              ; preds = %217
  %236 = load i64, ptr %135, align 1, !tbaa !22
  %237 = mul i64 %236, -3523014627193167104
  %238 = lshr i64 %237, %76
  br label %239

239:                                              ; preds = %235, %231, %227, %222
  %240 = phi i64 [ %226, %222 ], [ %230, %227 ], [ %234, %231 ], [ %238, %235 ]
  %241 = getelementptr inbounds nuw i8, ptr %136, i64 %129
  %242 = getelementptr inbounds nuw i8, ptr %135, i64 %129
  %243 = icmp ult ptr %241, %130
  br i1 %243, label %249, label %244

244:                                              ; preds = %239
  %245 = add i64 %129, 1
  %246 = getelementptr inbounds nuw i8, ptr %135, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %246, i32 0, i32 3, i32 1)
  %247 = getelementptr inbounds nuw i8, ptr %135, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %247, i32 0, i32 3, i32 1)
  %248 = getelementptr inbounds nuw i8, ptr %130, i64 128
  br label %249

249:                                              ; preds = %244, %239
  %250 = phi i64 [ %245, %244 ], [ %129, %239 ]
  %251 = phi ptr [ %248, %244 ], [ %130, %239 ]
  %252 = icmp ult ptr %242, %51
  br i1 %252, label %128, label %.loopexit44.i, !llvm.loop !149

.loopexit44.i:                                    ; preds = %.loopexit.i, %249, %56
  %253 = phi ptr [ %3, %56 ], [ %87, %249 ], [ %607, %.loopexit.i ]
  %254 = phi i32 [ %63, %56 ], [ %86, %249 ], [ %608, %.loopexit.i ]
  %255 = phi i32 [ %66, %56 ], [ %85, %249 ], [ %609, %.loopexit.i ]
  %256 = icmp ne i32 %65, 0
  %257 = icmp ne i32 %255, 0
  %258 = select i1 %256, i1 %257, i1 false
  %259 = select i1 %258, i32 %65, i32 %62
  %260 = select i1 %257, i32 %255, i32 %65
  store i32 %260, ptr %2, align 4, !tbaa !23
  %261 = icmp eq i32 %254, 0
  %262 = select i1 %261, i32 %259, i32 %254
  store i32 %262, ptr %52, align 4, !tbaa !23
  %263 = ptrtoint ptr %50 to i64
  %264 = ptrtoint ptr %253 to i64
  %265 = sub i64 %263, %264
  br label %ZSTD_compressBlock_fast_extDict_generic.exit

266:                                              ; preds = %211, %178
  %.pre-phi.i = phi i64 [ %212, %211 ], [ %179, %178 ]
  %267 = phi ptr [ %188, %211 ], [ %131, %178 ]
  %268 = phi i32 [ %186, %211 ], [ %132, %178 ]
  %269 = phi i64 [ %206, %211 ], [ %133, %178 ]
  %270 = phi i32 [ %209, %211 ], [ %159, %178 ]
  %271 = phi ptr [ %136, %211 ], [ %137, %178 ]
  %272 = phi ptr [ %137, %211 ], [ %138, %178 ]
  %273 = sub i32 %270, %268
  %274 = icmp ugt i32 %45, %268
  %275 = select i1 %274, ptr %43, ptr %48
  %276 = select i1 %274, ptr %49, ptr %50
  %277 = getelementptr inbounds nuw i8, ptr %267, i64 %.pre-phi.i
  %278 = add i32 %273, 3
  %279 = icmp ugt ptr %272, %87
  %280 = icmp ugt ptr %277, %275
  %281 = and i1 %280, %279
  br i1 %281, label %.preheader38.i, label %.loopexit39.i

.preheader38.i:                                   ; preds = %266, %290
  %282 = phi ptr [ %285, %290 ], [ %272, %266 ]
  %283 = phi i64 [ %291, %290 ], [ 4, %266 ]
  %284 = phi ptr [ %287, %290 ], [ %277, %266 ]
  %285 = getelementptr inbounds i8, ptr %282, i64 -1
  %286 = load i8, ptr %285, align 1, !tbaa !34
  %287 = getelementptr inbounds i8, ptr %284, i64 -1
  %288 = load i8, ptr %287, align 1, !tbaa !34
  %289 = icmp eq i8 %286, %288
  br i1 %289, label %290, label %.loopexit39.i

290:                                              ; preds = %.preheader38.i
  %291 = add i64 %283, 1
  %292 = icmp ugt ptr %285, %87
  %293 = icmp ugt ptr %287, %275
  %294 = and i1 %292, %293
  br i1 %294, label %.preheader38.i, label %.loopexit39.i, !llvm.loop !150

.loopexit39.i:                                    ; preds = %290, %.preheader38.i, %266, %163
  %295 = phi i32 [ 1, %163 ], [ %278, %266 ], [ %278, %.preheader38.i ], [ %278, %290 ]
  %296 = phi ptr [ %174, %163 ], [ %277, %266 ], [ %287, %290 ], [ %284, %.preheader38.i ]
  %297 = phi i64 [ %175, %163 ], [ 4, %266 ], [ %291, %290 ], [ %283, %.preheader38.i ]
  %298 = phi ptr [ %166, %163 ], [ %276, %266 ], [ %276, %.preheader38.i ], [ %276, %290 ]
  %299 = phi i64 [ %133, %163 ], [ %269, %266 ], [ %269, %.preheader38.i ], [ %269, %290 ]
  %300 = phi i32 [ %159, %163 ], [ %270, %266 ], [ %270, %.preheader38.i ], [ %270, %290 ]
  %301 = phi ptr [ %137, %163 ], [ %271, %266 ], [ %271, %.preheader38.i ], [ %271, %290 ]
  %302 = phi ptr [ %173, %163 ], [ %272, %266 ], [ %285, %290 ], [ %282, %.preheader38.i ]
  %303 = phi i32 [ %86, %163 ], [ %85, %266 ], [ %85, %.preheader38.i ], [ %85, %290 ]
  %304 = phi i32 [ %85, %163 ], [ %273, %266 ], [ %273, %.preheader38.i ], [ %273, %290 ]
  %305 = getelementptr inbounds nuw i8, ptr %302, i64 %297
  %306 = getelementptr inbounds nuw i8, ptr %296, i64 %297
  %307 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef %305, ptr noundef %306, ptr noundef %50, ptr noundef %298, ptr noundef nonnull %48)
  %308 = add i64 %307, %297
  %309 = ptrtoint ptr %302 to i64
  %310 = ptrtoint ptr %87 to i64
  %311 = sub i64 %309, %310
  %312 = icmp ugt ptr %302, %77
  %313 = load ptr, ptr %78, align 8, !tbaa !39
  br i1 %312, label %336, label %314

314:                                              ; preds = %.loopexit39.i
  %315 = load <2 x i64>, ptr %87, align 1, !tbaa !34
  store <2 x i64> %315, ptr %313, align 1, !tbaa !34
  %316 = icmp ugt i64 %311, 16
  br i1 %316, label %317, label %447

317:                                              ; preds = %314
  %318 = load ptr, ptr %78, align 8, !tbaa !39
  %319 = getelementptr inbounds nuw i8, ptr %318, i64 16
  %320 = getelementptr inbounds nuw i8, ptr %87, i64 16
  %321 = getelementptr i8, ptr %318, i64 %311
  %322 = load <2 x i64>, ptr %320, align 1, !tbaa !34
  store <2 x i64> %322, ptr %319, align 1, !tbaa !34
  %323 = icmp ult i64 %311, 33
  br i1 %323, label %447, label %324

324:                                              ; preds = %317
  %325 = getelementptr inbounds nuw i8, ptr %318, i64 32
  br label %326

326:                                              ; preds = %326, %324
  %327 = phi ptr [ %325, %324 ], [ %334, %326 ]
  %328 = phi ptr [ %320, %324 ], [ %332, %326 ]
  %329 = getelementptr inbounds nuw i8, ptr %328, i64 16
  %330 = load <2 x i64>, ptr %329, align 1, !tbaa !34
  store <2 x i64> %330, ptr %327, align 1, !tbaa !34
  %331 = getelementptr inbounds nuw i8, ptr %327, i64 16
  %332 = getelementptr inbounds nuw i8, ptr %328, i64 32
  %333 = load <2 x i64>, ptr %332, align 1, !tbaa !34
  store <2 x i64> %333, ptr %331, align 1, !tbaa !34
  %334 = getelementptr inbounds nuw i8, ptr %327, i64 32
  %335 = icmp ult ptr %334, %321
  br i1 %335, label %326, label %.loopexit33.i, !llvm.loop !42

336:                                              ; preds = %.loopexit39.i
  %337 = icmp ugt ptr %87, %77
  br i1 %337, label %.loopexit36.i, label %338

338:                                              ; preds = %336
  %339 = sub i64 %79, %310
  %340 = getelementptr inbounds i8, ptr %313, i64 %339
  %341 = load <2 x i64>, ptr %87, align 1, !tbaa !34
  store <2 x i64> %341, ptr %313, align 1, !tbaa !34
  %342 = icmp ult i64 %339, 17
  br i1 %342, label %.loopexit36.i, label %343

343:                                              ; preds = %338
  %344 = getelementptr inbounds nuw i8, ptr %313, i64 16
  br label %345

345:                                              ; preds = %345, %343
  %346 = phi ptr [ %344, %343 ], [ %353, %345 ]
  %347 = phi ptr [ %87, %343 ], [ %351, %345 ]
  %348 = getelementptr inbounds nuw i8, ptr %347, i64 16
  %349 = load <2 x i64>, ptr %348, align 1, !tbaa !34
  store <2 x i64> %349, ptr %346, align 1, !tbaa !34
  %350 = getelementptr inbounds nuw i8, ptr %346, i64 16
  %351 = getelementptr inbounds nuw i8, ptr %347, i64 32
  %352 = load <2 x i64>, ptr %351, align 1, !tbaa !34
  store <2 x i64> %352, ptr %350, align 1, !tbaa !34
  %353 = getelementptr inbounds nuw i8, ptr %346, i64 32
  %354 = icmp ult ptr %353, %340
  br i1 %354, label %345, label %.loopexit36.i, !llvm.loop !42

.loopexit36.i:                                    ; preds = %345, %338, %336
  %355 = phi ptr [ %77, %338 ], [ %87, %336 ], [ %77, %345 ]
  %356 = phi ptr [ %340, %338 ], [ %313, %336 ], [ %340, %345 ]
  %357 = icmp ult ptr %355, %302
  br i1 %357, label %358, label %.loopexit33.i

358:                                              ; preds = %.loopexit36.i
  %359 = ptrtoint ptr %355 to i64
  %360 = ptrtoint ptr %356 to i64
  %361 = sub i64 %309, %359
  %362 = icmp ult i64 %361, 4
  %363 = sub i64 %360, %359
  %364 = icmp ult i64 %363, 32
  %365 = select i1 %362, i1 true, i1 %364
  br i1 %365, label %401, label %366

366:                                              ; preds = %358
  %367 = icmp ult i64 %361, 32
  br i1 %367, label %387, label %368

368:                                              ; preds = %366
  %369 = and i64 %361, -32
  br label %370

370:                                              ; preds = %370, %368
  %371 = phi i64 [ 0, %368 ], [ %378, %370 ]
  %372 = getelementptr i8, ptr %356, i64 %371
  %373 = getelementptr i8, ptr %355, i64 %371
  %374 = getelementptr i8, ptr %373, i64 16
  %375 = load <16 x i8>, ptr %373, align 1, !tbaa !34
  %376 = load <16 x i8>, ptr %374, align 1, !tbaa !34
  %377 = getelementptr i8, ptr %372, i64 16
  store <16 x i8> %375, ptr %372, align 1, !tbaa !34
  store <16 x i8> %376, ptr %377, align 1, !tbaa !34
  %378 = add nuw i64 %371, 32
  %379 = icmp eq i64 %378, %369
  br i1 %379, label %380, label %370, !llvm.loop !151

380:                                              ; preds = %370
  %381 = icmp eq i64 %361, %369
  br i1 %381, label %.loopexit33.i, label %382

382:                                              ; preds = %380
  %383 = getelementptr i8, ptr %356, i64 %369
  %384 = getelementptr i8, ptr %355, i64 %369
  %385 = and i64 %361, 28
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %401, label %387

387:                                              ; preds = %382, %366
  %388 = phi i64 [ %369, %382 ], [ 0, %366 ]
  %389 = and i64 %361, -4
  br label %390

390:                                              ; preds = %390, %387
  %391 = phi i64 [ %388, %387 ], [ %395, %390 ]
  %392 = getelementptr i8, ptr %356, i64 %391
  %393 = getelementptr i8, ptr %355, i64 %391
  %394 = load <4 x i8>, ptr %393, align 1, !tbaa !34
  store <4 x i8> %394, ptr %392, align 1, !tbaa !34
  %395 = add nuw i64 %391, 4
  %396 = icmp eq i64 %395, %389
  br i1 %396, label %397, label %390, !llvm.loop !152

397:                                              ; preds = %390
  %398 = getelementptr i8, ptr %356, i64 %389
  %399 = getelementptr i8, ptr %355, i64 %389
  %400 = icmp eq i64 %361, %389
  br i1 %400, label %.loopexit33.i, label %401

401:                                              ; preds = %397, %382, %358
  %402 = phi ptr [ %356, %358 ], [ %383, %382 ], [ %398, %397 ]
  %403 = phi ptr [ %355, %358 ], [ %384, %382 ], [ %399, %397 ]
  %404 = ptrtoint ptr %403 to i64
  %405 = sub i64 %309, %404
  %406 = and i64 %405, 7
  %407 = icmp eq i64 %406, 0
  br i1 %407, label %.loopexit35.i, label %.preheader34.i

.preheader34.i:                                   ; preds = %401, %.preheader34.i
  %408 = phi ptr [ %413, %.preheader34.i ], [ %402, %401 ]
  %409 = phi ptr [ %411, %.preheader34.i ], [ %403, %401 ]
  %410 = phi i64 [ %414, %.preheader34.i ], [ 0, %401 ]
  %411 = getelementptr inbounds nuw i8, ptr %409, i64 1
  %412 = load i8, ptr %409, align 1, !tbaa !34
  %413 = getelementptr inbounds nuw i8, ptr %408, i64 1
  store i8 %412, ptr %408, align 1, !tbaa !34
  %414 = add nuw nsw i64 %410, 1
  %415 = icmp eq i64 %414, %406
  br i1 %415, label %.loopexit35.i, label %.preheader34.i, !llvm.loop !153

.loopexit35.i:                                    ; preds = %.preheader34.i, %401
  %416 = phi ptr [ %402, %401 ], [ %413, %.preheader34.i ]
  %417 = phi ptr [ %403, %401 ], [ %411, %.preheader34.i ]
  %418 = sub i64 %404, %309
  %419 = icmp ugt i64 %418, -8
  br i1 %419, label %.loopexit33.i, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit35.i, %.preheader.i
  %420 = phi ptr [ %445, %.preheader.i ], [ %416, %.loopexit35.i ]
  %421 = phi ptr [ %443, %.preheader.i ], [ %417, %.loopexit35.i ]
  %422 = getelementptr inbounds nuw i8, ptr %421, i64 1
  %423 = load i8, ptr %421, align 1, !tbaa !34
  %424 = getelementptr inbounds nuw i8, ptr %420, i64 1
  store i8 %423, ptr %420, align 1, !tbaa !34
  %425 = getelementptr inbounds nuw i8, ptr %421, i64 2
  %426 = load i8, ptr %422, align 1, !tbaa !34
  %427 = getelementptr inbounds nuw i8, ptr %420, i64 2
  store i8 %426, ptr %424, align 1, !tbaa !34
  %428 = getelementptr inbounds nuw i8, ptr %421, i64 3
  %429 = load i8, ptr %425, align 1, !tbaa !34
  %430 = getelementptr inbounds nuw i8, ptr %420, i64 3
  store i8 %429, ptr %427, align 1, !tbaa !34
  %431 = getelementptr inbounds nuw i8, ptr %421, i64 4
  %432 = load i8, ptr %428, align 1, !tbaa !34
  %433 = getelementptr inbounds nuw i8, ptr %420, i64 4
  store i8 %432, ptr %430, align 1, !tbaa !34
  %434 = getelementptr inbounds nuw i8, ptr %421, i64 5
  %435 = load i8, ptr %431, align 1, !tbaa !34
  %436 = getelementptr inbounds nuw i8, ptr %420, i64 5
  store i8 %435, ptr %433, align 1, !tbaa !34
  %437 = getelementptr inbounds nuw i8, ptr %421, i64 6
  %438 = load i8, ptr %434, align 1, !tbaa !34
  %439 = getelementptr inbounds nuw i8, ptr %420, i64 6
  store i8 %438, ptr %436, align 1, !tbaa !34
  %440 = getelementptr inbounds nuw i8, ptr %421, i64 7
  %441 = load i8, ptr %437, align 1, !tbaa !34
  %442 = getelementptr inbounds nuw i8, ptr %420, i64 7
  store i8 %441, ptr %439, align 1, !tbaa !34
  %443 = getelementptr inbounds nuw i8, ptr %421, i64 8
  %444 = load i8, ptr %440, align 1, !tbaa !34
  %445 = getelementptr inbounds nuw i8, ptr %420, i64 8
  store i8 %444, ptr %442, align 1, !tbaa !34
  %446 = icmp eq ptr %443, %302
  br i1 %446, label %.loopexit33.i, label %.preheader.i, !llvm.loop !154

447:                                              ; preds = %317, %314
  %448 = load ptr, ptr %78, align 8, !tbaa !39
  %449 = getelementptr inbounds nuw i8, ptr %448, i64 %311
  store ptr %449, ptr %78, align 8, !tbaa !39
  %450 = load ptr, ptr %81, align 8, !tbaa !50
  br label %462

.loopexit33.i:                                    ; preds = %326, %.preheader.i, %.loopexit35.i, %397, %380, %.loopexit36.i
  %451 = load ptr, ptr %78, align 8, !tbaa !39
  %452 = getelementptr inbounds nuw i8, ptr %451, i64 %311
  store ptr %452, ptr %78, align 8, !tbaa !39
  %453 = icmp ugt i64 %311, 65535
  %454 = load ptr, ptr %81, align 8, !tbaa !50
  br i1 %453, label %455, label %462, !prof !51

455:                                              ; preds = %.loopexit33.i
  store i32 1, ptr %80, align 8, !tbaa !52
  %456 = load ptr, ptr %1, align 8, !tbaa !53
  %457 = ptrtoint ptr %454 to i64
  %458 = ptrtoint ptr %456 to i64
  %459 = sub i64 %457, %458
  %460 = lshr exact i64 %459, 3
  %461 = trunc i64 %460 to i32
  store i32 %461, ptr %82, align 4, !tbaa !54
  br label %462

462:                                              ; preds = %455, %.loopexit33.i, %447
  %463 = phi ptr [ %450, %447 ], [ %454, %455 ], [ %454, %.loopexit33.i ]
  %464 = trunc i64 %311 to i16
  %465 = getelementptr inbounds nuw i8, ptr %463, i64 4
  store i16 %464, ptr %465, align 4, !tbaa !55
  store i32 %295, ptr %463, align 4, !tbaa !57
  %466 = add i64 %308, -3
  %467 = icmp ugt i64 %466, 65535
  br i1 %467, label %468, label %475, !prof !58

468:                                              ; preds = %462
  store i32 2, ptr %80, align 8, !tbaa !52
  %469 = load ptr, ptr %1, align 8, !tbaa !53
  %470 = ptrtoint ptr %463 to i64
  %471 = ptrtoint ptr %469 to i64
  %472 = sub i64 %470, %471
  %473 = lshr exact i64 %472, 3
  %474 = trunc i64 %473 to i32
  store i32 %474, ptr %82, align 4, !tbaa !54
  br label %475

475:                                              ; preds = %468, %462
  %476 = trunc i64 %466 to i16
  %477 = getelementptr inbounds nuw i8, ptr %463, i64 6
  store i16 %476, ptr %477, align 2, !tbaa !59
  %478 = getelementptr inbounds nuw i8, ptr %463, i64 8
  store ptr %478, ptr %81, align 8, !tbaa !50
  %479 = getelementptr inbounds nuw i8, ptr %302, i64 %308
  %480 = icmp ult ptr %301, %479
  br i1 %480, label %481, label %486

481:                                              ; preds = %475
  %482 = ptrtoint ptr %301 to i64
  %483 = sub i64 %482, %26
  %484 = trunc i64 %483 to i32
  %485 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %299
  store i32 %484, ptr %485, align 4, !tbaa !23
  br label %486

486:                                              ; preds = %481, %475
  %487 = icmp ugt ptr %479, %51
  br i1 %487, label %.loopexit.i, label %488

488:                                              ; preds = %486
  %489 = add i32 %300, 2
  %490 = zext i32 %300 to i64
  %491 = getelementptr inbounds nuw i8, ptr %67, i64 %490
  switch i32 %10, label %default.unreachable185.i [
    i32 7, label %510
    i32 5, label %492
    i32 6, label %501
    i32 4, label %519
  ]

492:                                              ; preds = %488
  %493 = load i64, ptr %491, align 1, !tbaa !22
  %494 = mul i64 %493, -3523014627271114752
  %495 = lshr i64 %494, %76
  %496 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %495
  store i32 %489, ptr %496, align 4, !tbaa !23
  %497 = getelementptr inbounds i8, ptr %479, i64 -2
  %498 = load i64, ptr %497, align 1, !tbaa !22
  %499 = mul i64 %498, -3523014627271114752
  %500 = lshr i64 %499, %76
  br label %530

501:                                              ; preds = %488
  %502 = load i64, ptr %491, align 1, !tbaa !22
  %503 = mul i64 %502, -3523014627193847808
  %504 = lshr i64 %503, %76
  %505 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %504
  store i32 %489, ptr %505, align 4, !tbaa !23
  %506 = getelementptr inbounds i8, ptr %479, i64 -2
  %507 = load i64, ptr %506, align 1, !tbaa !22
  %508 = mul i64 %507, -3523014627193847808
  %509 = lshr i64 %508, %76
  br label %530

510:                                              ; preds = %488
  %511 = load i64, ptr %491, align 1, !tbaa !22
  %512 = mul i64 %511, -3523014627193167104
  %513 = lshr i64 %512, %76
  %514 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %513
  store i32 %489, ptr %514, align 4, !tbaa !23
  %515 = getelementptr inbounds i8, ptr %479, i64 -2
  %516 = load i64, ptr %515, align 1, !tbaa !22
  %517 = mul i64 %516, -3523014627193167104
  %518 = lshr i64 %517, %76
  br label %530

519:                                              ; preds = %488
  %520 = load i32, ptr %491, align 1, !tbaa !23
  %521 = mul i32 %520, -1640531535
  %522 = lshr i32 %521, %74
  %523 = zext i32 %522 to i64
  %524 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %523
  store i32 %489, ptr %524, align 4, !tbaa !23
  %525 = getelementptr inbounds i8, ptr %479, i64 -2
  %526 = load i32, ptr %525, align 1, !tbaa !23
  %527 = mul i32 %526, -1640531535
  %528 = lshr i32 %527, %74
  %529 = zext i32 %528 to i64
  br label %530

530:                                              ; preds = %519, %510, %501, %492
  %531 = phi ptr [ %525, %519 ], [ %497, %492 ], [ %506, %501 ], [ %515, %510 ]
  %532 = phi i64 [ %529, %519 ], [ %500, %492 ], [ %509, %501 ], [ %518, %510 ]
  %533 = ptrtoint ptr %531 to i64
  %534 = sub i64 %533, %26
  %535 = trunc i64 %534 to i32
  %536 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %532
  store i32 %535, ptr %536, align 4, !tbaa !23
  br label %537

537:                                              ; preds = %601, %530
  %538 = phi ptr [ %583, %601 ], [ %478, %530 ]
  %539 = phi i32 [ %540, %601 ], [ %304, %530 ]
  %540 = phi i32 [ %539, %601 ], [ %303, %530 ]
  %541 = phi ptr [ %605, %601 ], [ %479, %530 ]
  %542 = ptrtoint ptr %541 to i64
  %543 = sub i64 %542, %26
  %544 = trunc i64 %543 to i32
  %545 = sub i32 %544, %540
  %546 = icmp ult i32 %545, %46
  %547 = zext i32 %545 to i64
  %548 = select i1 %546, ptr %24, ptr %22
  %549 = getelementptr inbounds nuw i8, ptr %548, i64 %547
  %550 = sub i32 %545, %46
  %551 = icmp ugt i32 %550, -4
  %552 = icmp eq i32 %540, 0
  %553 = select i1 %552, i1 true, i1 %551
  br i1 %553, label %.loopexit.i, label %554

554:                                              ; preds = %537
  %555 = load i32, ptr %549, align 1, !tbaa !23
  %556 = load i32, ptr %541, align 1, !tbaa !23
  %557 = icmp eq i32 %555, %556
  br i1 %557, label %558, label %.loopexit.i

558:                                              ; preds = %554
  %559 = select i1 %546, ptr %49, ptr %50
  %560 = getelementptr inbounds nuw i8, ptr %541, i64 4
  %561 = getelementptr inbounds nuw i8, ptr %549, i64 4
  %562 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %560, ptr noundef nonnull %561, ptr noundef %50, ptr noundef %559, ptr noundef nonnull %48)
  %563 = icmp ugt ptr %541, %77
  br i1 %563, label %568, label %564

564:                                              ; preds = %558
  %565 = load ptr, ptr %78, align 8, !tbaa !39
  %566 = load <2 x i64>, ptr %541, align 1, !tbaa !34
  store <2 x i64> %566, ptr %565, align 1, !tbaa !34
  %567 = load ptr, ptr %81, align 8, !tbaa !50
  br label %568

568:                                              ; preds = %564, %558
  %569 = phi ptr [ %538, %558 ], [ %567, %564 ]
  %570 = getelementptr inbounds nuw i8, ptr %569, i64 4
  store i16 0, ptr %570, align 4, !tbaa !55
  store i32 1, ptr %569, align 4, !tbaa !57
  %571 = add i64 %562, 1
  %572 = icmp ugt i64 %571, 65535
  br i1 %572, label %573, label %580, !prof !58

573:                                              ; preds = %568
  store i32 2, ptr %80, align 8, !tbaa !52
  %574 = load ptr, ptr %1, align 8, !tbaa !53
  %575 = ptrtoint ptr %569 to i64
  %576 = ptrtoint ptr %574 to i64
  %577 = sub i64 %575, %576
  %578 = lshr exact i64 %577, 3
  %579 = trunc i64 %578 to i32
  store i32 %579, ptr %82, align 4, !tbaa !54
  br label %580

580:                                              ; preds = %573, %568
  %581 = trunc i64 %571 to i16
  %582 = getelementptr inbounds nuw i8, ptr %569, i64 6
  store i16 %581, ptr %582, align 2, !tbaa !59
  %583 = getelementptr inbounds nuw i8, ptr %569, i64 8
  store ptr %583, ptr %81, align 8, !tbaa !50
  switch i32 %10, label %default.unreachable185.i [
    i32 7, label %597
    i32 5, label %589
    i32 6, label %593
    i32 4, label %584
  ]

584:                                              ; preds = %580
  %585 = load i32, ptr %541, align 1, !tbaa !23
  %586 = mul i32 %585, -1640531535
  %587 = lshr i32 %586, %74
  %588 = zext i32 %587 to i64
  br label %601

589:                                              ; preds = %580
  %590 = load i64, ptr %541, align 1, !tbaa !22
  %591 = mul i64 %590, -3523014627271114752
  %592 = lshr i64 %591, %76
  br label %601

593:                                              ; preds = %580
  %594 = load i64, ptr %541, align 1, !tbaa !22
  %595 = mul i64 %594, -3523014627193847808
  %596 = lshr i64 %595, %76
  br label %601

597:                                              ; preds = %580
  %598 = load i64, ptr %541, align 1, !tbaa !22
  %599 = mul i64 %598, -3523014627193167104
  %600 = lshr i64 %599, %76
  br label %601

601:                                              ; preds = %597, %593, %589, %584
  %602 = phi i64 [ %588, %584 ], [ %592, %589 ], [ %596, %593 ], [ %600, %597 ]
  %603 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %602
  store i32 %544, ptr %603, align 4, !tbaa !23
  %604 = getelementptr i8, ptr %541, i64 %562
  %605 = getelementptr i8, ptr %604, i64 4
  %606 = icmp ugt ptr %605, %51
  br i1 %606, label %.loopexit.i, label %537

.loopexit.i:                                      ; preds = %601, %554, %537, %486
  %607 = phi ptr [ %479, %486 ], [ %541, %537 ], [ %541, %554 ], [ %605, %601 ]
  %608 = phi i32 [ %303, %486 ], [ %540, %537 ], [ %540, %554 ], [ %539, %601 ]
  %609 = phi i32 [ %304, %486 ], [ %539, %537 ], [ %539, %554 ], [ %540, %601 ]
  %610 = getelementptr inbounds nuw i8, ptr %607, i64 %20
  %611 = getelementptr inbounds nuw i8, ptr %610, i64 1
  %612 = icmp ult ptr %611, %51
  br i1 %612, label %.split.i, label %.loopexit44.i

ZSTD_compressBlock_fast_extDict_generic.exit:     ; preds = %.loopexit44.i, %54
  %613 = phi i64 [ %55, %54 ], [ %265, %.loopexit44.i ]
  ret i64 %613
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @ZSTD_count_2segments(ptr noundef %0, ptr noundef %1, ptr noundef readnone captures(address) %2, ptr noundef %3, ptr noundef readonly captures(none) %4) unnamed_addr #4 {
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %6, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = icmp ult ptr %9, %2
  %11 = select i1 %10, ptr %9, ptr %2
  %12 = getelementptr inbounds i8, ptr %11, i64 -7
  %13 = icmp ult ptr %0, %12
  br i1 %13, label %14, label %.loopexit30

14:                                               ; preds = %5
  %15 = load i64, ptr %1, align 1, !tbaa !22
  %16 = load i64, ptr %0, align 1, !tbaa !22
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %.preheader29, label %18

18:                                               ; preds = %14
  %19 = xor i64 %16, %15
  %20 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %19, i1 true)
  %21 = lshr i64 %20, 3
  br label %77

.preheader29:                                     ; preds = %14, %27
  %22 = phi ptr [ %25, %27 ], [ %1, %14 ]
  %23 = phi ptr [ %24, %27 ], [ %0, %14 ]
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 8
  %26 = icmp ult ptr %24, %12
  br i1 %26, label %27, label %.loopexit30

27:                                               ; preds = %.preheader29
  %28 = load i64, ptr %25, align 1, !tbaa !22
  %29 = load i64, ptr %24, align 1, !tbaa !22
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %.preheader29, label %31

31:                                               ; preds = %27
  %32 = xor i64 %29, %28
  %33 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %32, i1 true)
  %34 = lshr i64 %33, 3
  %35 = getelementptr inbounds nuw i8, ptr %24, i64 %34
  %36 = ptrtoint ptr %35 to i64
  %37 = ptrtoint ptr %0 to i64
  %38 = sub i64 %36, %37
  br label %77

.loopexit30:                                      ; preds = %.preheader29, %5
  %39 = phi ptr [ %1, %5 ], [ %25, %.preheader29 ]
  %40 = phi ptr [ %0, %5 ], [ %24, %.preheader29 ]
  %41 = getelementptr inbounds i8, ptr %11, i64 -3
  %42 = icmp ult ptr %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %.loopexit30
  %44 = load i32, ptr %39, align 1, !tbaa !23
  %45 = load i32, ptr %40, align 1, !tbaa !23
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = getelementptr inbounds nuw i8, ptr %40, i64 4
  %49 = getelementptr inbounds nuw i8, ptr %39, i64 4
  br label %50

50:                                               ; preds = %47, %43, %.loopexit30
  %51 = phi ptr [ %49, %47 ], [ %39, %43 ], [ %39, %.loopexit30 ]
  %52 = phi ptr [ %48, %47 ], [ %40, %43 ], [ %40, %.loopexit30 ]
  %53 = getelementptr inbounds i8, ptr %11, i64 -1
  %54 = icmp ult ptr %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i16, ptr %51, align 1, !tbaa !37
  %57 = load i16, ptr %52, align 1, !tbaa !37
  %58 = icmp eq i16 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = getelementptr inbounds nuw i8, ptr %52, i64 2
  %61 = getelementptr inbounds nuw i8, ptr %51, i64 2
  br label %62

62:                                               ; preds = %59, %55, %50
  %63 = phi ptr [ %61, %59 ], [ %51, %55 ], [ %51, %50 ]
  %64 = phi ptr [ %60, %59 ], [ %52, %55 ], [ %52, %50 ]
  %65 = icmp ult ptr %64, %11
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i8, ptr %63, align 1, !tbaa !34
  %68 = load i8, ptr %64, align 1, !tbaa !34
  %69 = icmp eq i8 %67, %68
  %70 = zext i1 %69 to i64
  %71 = getelementptr inbounds nuw i8, ptr %64, i64 %70
  br label %72

72:                                               ; preds = %66, %62
  %73 = phi ptr [ %64, %62 ], [ %71, %66 ]
  %74 = ptrtoint ptr %73 to i64
  %75 = ptrtoint ptr %0 to i64
  %76 = sub i64 %74, %75
  br label %77

77:                                               ; preds = %72, %31, %18
  %78 = phi i64 [ %76, %72 ], [ %21, %18 ], [ %38, %31 ]
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 %78
  %80 = icmp eq ptr %79, %3
  br i1 %80, label %81, label %151

81:                                               ; preds = %77
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 %78
  %83 = getelementptr inbounds i8, ptr %2, i64 -7
  %84 = icmp ult ptr %82, %83
  br i1 %84, label %85, label %.loopexit

85:                                               ; preds = %81
  %86 = load i64, ptr %4, align 1, !tbaa !22
  %87 = load i64, ptr %82, align 1, !tbaa !22
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %.preheader, label %89

89:                                               ; preds = %85
  %90 = xor i64 %87, %86
  %91 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %90, i1 true)
  %92 = lshr i64 %91, 3
  br label %148

.preheader:                                       ; preds = %85, %98
  %93 = phi ptr [ %96, %98 ], [ %4, %85 ]
  %94 = phi ptr [ %95, %98 ], [ %82, %85 ]
  %95 = getelementptr inbounds nuw i8, ptr %94, i64 8
  %96 = getelementptr inbounds nuw i8, ptr %93, i64 8
  %97 = icmp ult ptr %95, %83
  br i1 %97, label %98, label %.loopexit

98:                                               ; preds = %.preheader
  %99 = load i64, ptr %96, align 1, !tbaa !22
  %100 = load i64, ptr %95, align 1, !tbaa !22
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %.preheader, label %102

102:                                              ; preds = %98
  %103 = xor i64 %100, %99
  %104 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %103, i1 true)
  %105 = lshr i64 %104, 3
  %106 = getelementptr inbounds nuw i8, ptr %95, i64 %105
  %107 = ptrtoint ptr %106 to i64
  %108 = ptrtoint ptr %82 to i64
  %109 = sub i64 %107, %108
  br label %148

.loopexit:                                        ; preds = %.preheader, %81
  %110 = phi ptr [ %4, %81 ], [ %96, %.preheader ]
  %111 = phi ptr [ %82, %81 ], [ %95, %.preheader ]
  %112 = getelementptr inbounds i8, ptr %2, i64 -3
  %113 = icmp ult ptr %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %.loopexit
  %115 = load i32, ptr %110, align 1, !tbaa !23
  %116 = load i32, ptr %111, align 1, !tbaa !23
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = getelementptr inbounds nuw i8, ptr %111, i64 4
  %120 = getelementptr inbounds nuw i8, ptr %110, i64 4
  br label %121

121:                                              ; preds = %118, %114, %.loopexit
  %122 = phi ptr [ %120, %118 ], [ %110, %114 ], [ %110, %.loopexit ]
  %123 = phi ptr [ %119, %118 ], [ %111, %114 ], [ %111, %.loopexit ]
  %124 = getelementptr inbounds i8, ptr %2, i64 -1
  %125 = icmp ult ptr %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load i16, ptr %122, align 1, !tbaa !37
  %128 = load i16, ptr %123, align 1, !tbaa !37
  %129 = icmp eq i16 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = getelementptr inbounds nuw i8, ptr %123, i64 2
  %132 = getelementptr inbounds nuw i8, ptr %122, i64 2
  br label %133

133:                                              ; preds = %130, %126, %121
  %134 = phi ptr [ %132, %130 ], [ %122, %126 ], [ %122, %121 ]
  %135 = phi ptr [ %131, %130 ], [ %123, %126 ], [ %123, %121 ]
  %136 = icmp ult ptr %135, %2
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load i8, ptr %134, align 1, !tbaa !34
  %139 = load i8, ptr %135, align 1, !tbaa !34
  %140 = icmp eq i8 %138, %139
  %141 = zext i1 %140 to i64
  %142 = getelementptr inbounds nuw i8, ptr %135, i64 %141
  br label %143

143:                                              ; preds = %137, %133
  %144 = phi ptr [ %135, %133 ], [ %142, %137 ]
  %145 = ptrtoint ptr %144 to i64
  %146 = ptrtoint ptr %82 to i64
  %147 = sub i64 %145, %146
  br label %148

148:                                              ; preds = %143, %102, %89
  %149 = phi i64 [ %147, %143 ], [ %92, %89 ], [ %109, %102 ]
  %150 = add i64 %149, %78
  br label %151

151:                                              ; preds = %148, %77
  %152 = phi i64 [ %150, %148 ], [ %78, %77 ]
  ret i64 %152
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind memory(none) }
attributes #7 = { nounwind }

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
!94 = distinct !{!94, !48, !44, !45}
!95 = distinct !{!95, !48, !44}
!96 = distinct !{!96, !25, !44}
!97 = distinct !{!97, !25}
!98 = distinct !{!98, !25, !44, !45}
!99 = distinct !{!99, !25, !44, !45}
!100 = distinct !{!100, !48}
!101 = distinct !{!101, !25, !44}
!102 = distinct !{!102, !25}
!103 = distinct !{!103, !25, !44, !45}
!104 = distinct !{!104, !25, !44, !45}
!105 = distinct !{!105, !48}
!106 = distinct !{!106, !25, !44}
!107 = distinct !{!107, !25, !44, !45}
!108 = distinct !{!108, !25, !44, !45}
!109 = distinct !{!109, !48, !44, !45}
!110 = distinct !{!110, !48, !44}
!111 = distinct !{!111, !25, !44}
!112 = distinct !{!112, !25, !44, !45}
!113 = distinct !{!113, !25, !44, !45}
!114 = distinct !{!114, !48}
!115 = distinct !{!115, !25, !44}
!116 = distinct !{!116, !25, !44, !45}
!117 = distinct !{!117, !25, !44, !45}
!118 = distinct !{!118, !48}
!119 = distinct !{!119, !25, !44}
!120 = distinct !{!120, !25, !44, !45}
!121 = distinct !{!121, !25, !44, !45}
!122 = distinct !{!122, !48, !44, !45}
!123 = distinct !{!123, !48, !44}
!124 = distinct !{!124, !25, !44}
!125 = distinct !{!125, !25, !44, !45}
!126 = distinct !{!126, !25, !44, !45}
!127 = distinct !{!127, !48}
!128 = distinct !{!128, !25, !44}
!129 = distinct !{!129, !25, !44, !45}
!130 = distinct !{!130, !25, !44, !45}
!131 = distinct !{!131, !48}
!132 = distinct !{!132, !25, !44}
!133 = distinct !{!133, !25, !44, !45}
!134 = distinct !{!134, !25, !44, !45}
!135 = distinct !{!135, !48, !44, !45}
!136 = distinct !{!136, !48, !44}
!137 = distinct !{!137, !25, !44}
!138 = distinct !{!138, !25, !44, !45}
!139 = distinct !{!139, !25, !44, !45}
!140 = distinct !{!140, !48}
!141 = distinct !{!141, !25, !44}
!142 = distinct !{!142, !25, !44, !45}
!143 = distinct !{!143, !25, !44, !45}
!144 = distinct !{!144, !48}
!145 = distinct !{!145, !25, !44}
!146 = !{!6, !8, i64 16}
!147 = !{!17, !12, i64 0}
!148 = !{!6, !12, i64 28}
!149 = distinct !{!149, !25}
!150 = distinct !{!150, !25}
!151 = distinct !{!151, !25, !44, !45}
!152 = distinct !{!152, !25, !44, !45}
!153 = distinct !{!153, !48}
!154 = distinct !{!154, !25, !44}
