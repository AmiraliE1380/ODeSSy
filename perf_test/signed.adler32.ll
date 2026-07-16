; ModuleID = '/home/amiralie1380/michigan/pl/zlib/adler32.c'
source_filename = "/home/amiralie1380/michigan/pl/zlib/adler32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @adler32_z(i64 noundef %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = lshr i64 %0, 16
  %5 = and i64 %4, 65535
  %6 = and i64 %0, 65535
  %7 = icmp eq i64 %2, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = load i8, ptr %1, align 1, !tbaa !8
  %10 = zext i8 %9 to i64
  %11 = add nuw nsw i64 %6, %10
  %12 = icmp samesign ugt i64 %11, 65520
  %13 = add nsw i64 %11, -65521
  %14 = select i1 %12, i64 %13, i64 %11
  %15 = add nuw nsw i64 %14, %5
  %16 = icmp ugt i64 %15, 65520
  %17 = shl nsw i64 %15, 16
  %18 = add nsw i64 %17, -4293984256
  %19 = select i1 %16, i64 %18, i64 %17
  %20 = or i64 %19, %14
  br label %352

21:                                               ; preds = %3
  %22 = icmp eq ptr %1, null
  br i1 %22, label %352, label %23

23:                                               ; preds = %21
  %24 = icmp ult i64 %2, 16
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = icmp ugt i64 %2, 5551
  br i1 %26, label %90, label %192

27:                                               ; preds = %23
  %28 = icmp eq i64 %2, 0
  br i1 %28, label %81, label %29

29:                                               ; preds = %27
  %30 = and i64 %2, 3
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %29, %32
  %33 = phi i64 [ %43, %32 ], [ %5, %29 ]
  %34 = phi i64 [ %38, %32 ], [ %2, %29 ]
  %35 = phi ptr [ %39, %32 ], [ %1, %29 ]
  %36 = phi i64 [ %42, %32 ], [ %6, %29 ]
  %37 = phi i64 [ %44, %32 ], [ 0, %29 ]
  %38 = add i64 %34, -1
  %39 = getelementptr inbounds nuw i8, ptr %35, i64 1
  %40 = load i8, ptr %35, align 1, !tbaa !8
  %41 = zext i8 %40 to i64
  %42 = add i64 %36, %41
  %43 = add i64 %42, %33
  %44 = add i64 %37, 1
  %45 = icmp eq i64 %44, %30
  br i1 %45, label %46, label %32, !llvm.loop !9

46:                                               ; preds = %32, %29
  %47 = phi i64 [ poison, %29 ], [ %42, %32 ]
  %48 = phi i64 [ poison, %29 ], [ %43, %32 ]
  %49 = phi i64 [ %5, %29 ], [ %43, %32 ]
  %50 = phi i64 [ %2, %29 ], [ %38, %32 ]
  %51 = phi ptr [ %1, %29 ], [ %39, %32 ]
  %52 = phi i64 [ %6, %29 ], [ %42, %32 ]
  %53 = icmp ult i64 %2, 4
  br i1 %53, label %81, label %54

54:                                               ; preds = %46, %54
  %55 = phi i64 [ %79, %54 ], [ %49, %46 ]
  %56 = phi i64 [ %74, %54 ], [ %50, %46 ]
  %57 = phi ptr [ %75, %54 ], [ %51, %46 ]
  %58 = phi i64 [ %78, %54 ], [ %52, %46 ]
  %59 = getelementptr inbounds nuw i8, ptr %57, i64 1
  %60 = load i8, ptr %57, align 1, !tbaa !8
  %61 = zext i8 %60 to i64
  %62 = add i64 %58, %61
  %63 = add i64 %62, %55
  %64 = getelementptr inbounds nuw i8, ptr %57, i64 2
  %65 = load i8, ptr %59, align 1, !tbaa !8
  %66 = zext i8 %65 to i64
  %67 = add i64 %62, %66
  %68 = add i64 %67, %63
  %69 = getelementptr inbounds nuw i8, ptr %57, i64 3
  %70 = load i8, ptr %64, align 1, !tbaa !8
  %71 = zext i8 %70 to i64
  %72 = add i64 %67, %71
  %73 = add i64 %72, %68
  %74 = add i64 %56, -4
  %75 = getelementptr inbounds nuw i8, ptr %57, i64 4
  %76 = load i8, ptr %69, align 1, !tbaa !8
  %77 = zext i8 %76 to i64
  %78 = add i64 %72, %77
  %79 = add i64 %78, %73
  %80 = icmp eq i64 %74, 0
  br i1 %80, label %81, label %54, !llvm.loop !11

81:                                               ; preds = %46, %54, %27
  %82 = phi i64 [ %6, %27 ], [ %47, %46 ], [ %78, %54 ]
  %83 = phi i64 [ %5, %27 ], [ %48, %46 ], [ %79, %54 ]
  %84 = icmp ugt i64 %82, 65520
  %85 = add i64 %82, -65521
  %86 = select i1 %84, i64 %85, i64 %82
  %87 = urem i64 %83, 65521
  %88 = shl nuw nsw i64 %87, 16
  %89 = or i64 %88, %86
  br label %352

90:                                               ; preds = %25, %182
  %91 = phi i64 [ %186, %182 ], [ %5, %25 ]
  %92 = phi i64 [ %183, %182 ], [ %2, %25 ]
  %93 = phi ptr [ %184, %182 ], [ %1, %25 ]
  %94 = phi i64 [ %185, %182 ], [ %6, %25 ]
  br label %95

95:                                               ; preds = %95, %90
  %96 = phi i64 [ %94, %90 ], [ %177, %95 ]
  %97 = phi ptr [ %93, %90 ], [ %179, %95 ]
  %98 = phi i64 [ %91, %90 ], [ %178, %95 ]
  %99 = phi i32 [ 347, %90 ], [ %180, %95 ]
  %100 = load i8, ptr %97, align 1, !tbaa !8
  %101 = zext i8 %100 to i64
  %102 = add i64 %96, %101
  %103 = add i64 %102, %98
  %104 = getelementptr inbounds nuw i8, ptr %97, i64 1
  %105 = load i8, ptr %104, align 1, !tbaa !8
  %106 = zext i8 %105 to i64
  %107 = add i64 %102, %106
  %108 = add i64 %103, %107
  %109 = getelementptr inbounds nuw i8, ptr %97, i64 2
  %110 = load i8, ptr %109, align 1, !tbaa !8
  %111 = zext i8 %110 to i64
  %112 = add i64 %107, %111
  %113 = add i64 %108, %112
  %114 = getelementptr inbounds nuw i8, ptr %97, i64 3
  %115 = load i8, ptr %114, align 1, !tbaa !8
  %116 = zext i8 %115 to i64
  %117 = add i64 %112, %116
  %118 = add i64 %113, %117
  %119 = getelementptr inbounds nuw i8, ptr %97, i64 4
  %120 = load i8, ptr %119, align 1, !tbaa !8
  %121 = zext i8 %120 to i64
  %122 = add i64 %117, %121
  %123 = add i64 %118, %122
  %124 = getelementptr inbounds nuw i8, ptr %97, i64 5
  %125 = load i8, ptr %124, align 1, !tbaa !8
  %126 = zext i8 %125 to i64
  %127 = add i64 %122, %126
  %128 = add i64 %123, %127
  %129 = getelementptr inbounds nuw i8, ptr %97, i64 6
  %130 = load i8, ptr %129, align 1, !tbaa !8
  %131 = zext i8 %130 to i64
  %132 = add i64 %127, %131
  %133 = add i64 %128, %132
  %134 = getelementptr inbounds nuw i8, ptr %97, i64 7
  %135 = load i8, ptr %134, align 1, !tbaa !8
  %136 = zext i8 %135 to i64
  %137 = add i64 %132, %136
  %138 = add i64 %133, %137
  %139 = getelementptr inbounds nuw i8, ptr %97, i64 8
  %140 = load i8, ptr %139, align 1, !tbaa !8
  %141 = zext i8 %140 to i64
  %142 = add i64 %137, %141
  %143 = add i64 %138, %142
  %144 = getelementptr inbounds nuw i8, ptr %97, i64 9
  %145 = load i8, ptr %144, align 1, !tbaa !8
  %146 = zext i8 %145 to i64
  %147 = add i64 %142, %146
  %148 = add i64 %143, %147
  %149 = getelementptr inbounds nuw i8, ptr %97, i64 10
  %150 = load i8, ptr %149, align 1, !tbaa !8
  %151 = zext i8 %150 to i64
  %152 = add i64 %147, %151
  %153 = add i64 %148, %152
  %154 = getelementptr inbounds nuw i8, ptr %97, i64 11
  %155 = load i8, ptr %154, align 1, !tbaa !8
  %156 = zext i8 %155 to i64
  %157 = add i64 %152, %156
  %158 = add i64 %153, %157
  %159 = getelementptr inbounds nuw i8, ptr %97, i64 12
  %160 = load i8, ptr %159, align 1, !tbaa !8
  %161 = zext i8 %160 to i64
  %162 = add i64 %157, %161
  %163 = add i64 %158, %162
  %164 = getelementptr inbounds nuw i8, ptr %97, i64 13
  %165 = load i8, ptr %164, align 1, !tbaa !8
  %166 = zext i8 %165 to i64
  %167 = add i64 %162, %166
  %168 = add i64 %163, %167
  %169 = getelementptr inbounds nuw i8, ptr %97, i64 14
  %170 = load i8, ptr %169, align 1, !tbaa !8
  %171 = zext i8 %170 to i64
  %172 = add i64 %167, %171
  %173 = add i64 %168, %172
  %174 = getelementptr inbounds nuw i8, ptr %97, i64 15
  %175 = load i8, ptr %174, align 1, !tbaa !8
  %176 = zext i8 %175 to i64
  %177 = add i64 %172, %176
  %178 = add i64 %173, %177
  %179 = getelementptr inbounds nuw i8, ptr %97, i64 16
  %180 = add nsw i32 %99, -1
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %95, !llvm.loop !13

182:                                              ; preds = %95
  %183 = add i64 %92, -5552
  %184 = getelementptr i8, ptr %93, i64 5552
  %185 = urem i64 %177, 65521
  %186 = urem i64 %178, 65521
  %187 = icmp ugt i64 %183, 5551
  br i1 %187, label %90, label %188, !llvm.loop !14

188:                                              ; preds = %182
  %189 = icmp eq i64 %183, 0
  br i1 %189, label %347, label %190

190:                                              ; preds = %188
  %191 = icmp samesign ugt i64 %183, 15
  br i1 %191, label %192, label %199

192:                                              ; preds = %25, %190
  %193 = phi i64 [ %5, %25 ], [ %186, %190 ]
  %194 = phi i64 [ %2, %25 ], [ %183, %190 ]
  %195 = phi ptr [ %1, %25 ], [ %184, %190 ]
  %196 = phi i64 [ %6, %25 ], [ %185, %190 ]
  br label %228

197:                                              ; preds = %228
  %198 = icmp eq i64 %233, 0
  br i1 %198, label %342, label %199

199:                                              ; preds = %190, %197
  %200 = phi i64 [ %186, %190 ], [ %312, %197 ]
  %201 = phi i64 [ %183, %190 ], [ %233, %197 ]
  %202 = phi ptr [ %184, %190 ], [ %313, %197 ]
  %203 = phi i64 [ %185, %190 ], [ %311, %197 ]
  %204 = and i64 %201, 3
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %220, label %206

206:                                              ; preds = %199, %206
  %207 = phi i64 [ %217, %206 ], [ %200, %199 ]
  %208 = phi i64 [ %212, %206 ], [ %201, %199 ]
  %209 = phi ptr [ %213, %206 ], [ %202, %199 ]
  %210 = phi i64 [ %216, %206 ], [ %203, %199 ]
  %211 = phi i64 [ %218, %206 ], [ 0, %199 ]
  %212 = add i64 %208, -1
  %213 = getelementptr inbounds nuw i8, ptr %209, i64 1
  %214 = load i8, ptr %209, align 1, !tbaa !8
  %215 = zext i8 %214 to i64
  %216 = add i64 %210, %215
  %217 = add i64 %216, %207
  %218 = add i64 %211, 1
  %219 = icmp eq i64 %218, %204
  br i1 %219, label %220, label %206, !llvm.loop !15

220:                                              ; preds = %206, %199
  %221 = phi i64 [ poison, %199 ], [ %216, %206 ]
  %222 = phi i64 [ poison, %199 ], [ %217, %206 ]
  %223 = phi i64 [ %200, %199 ], [ %217, %206 ]
  %224 = phi i64 [ %201, %199 ], [ %212, %206 ]
  %225 = phi ptr [ %202, %199 ], [ %213, %206 ]
  %226 = phi i64 [ %203, %199 ], [ %216, %206 ]
  %227 = icmp ult i64 %201, 4
  br i1 %227, label %342, label %315

228:                                              ; preds = %192, %228
  %229 = phi i64 [ %312, %228 ], [ %193, %192 ]
  %230 = phi i64 [ %233, %228 ], [ %194, %192 ]
  %231 = phi ptr [ %313, %228 ], [ %195, %192 ]
  %232 = phi i64 [ %311, %228 ], [ %196, %192 ]
  %233 = add nsw i64 %230, -16
  %234 = load i8, ptr %231, align 1, !tbaa !8
  %235 = zext i8 %234 to i64
  %236 = add i64 %232, %235
  %237 = add i64 %236, %229
  %238 = getelementptr inbounds nuw i8, ptr %231, i64 1
  %239 = load i8, ptr %238, align 1, !tbaa !8
  %240 = zext i8 %239 to i64
  %241 = add i64 %236, %240
  %242 = add i64 %237, %241
  %243 = getelementptr inbounds nuw i8, ptr %231, i64 2
  %244 = load i8, ptr %243, align 1, !tbaa !8
  %245 = zext i8 %244 to i64
  %246 = add i64 %241, %245
  %247 = add i64 %242, %246
  %248 = getelementptr inbounds nuw i8, ptr %231, i64 3
  %249 = load i8, ptr %248, align 1, !tbaa !8
  %250 = zext i8 %249 to i64
  %251 = add i64 %246, %250
  %252 = add i64 %247, %251
  %253 = getelementptr inbounds nuw i8, ptr %231, i64 4
  %254 = load i8, ptr %253, align 1, !tbaa !8
  %255 = zext i8 %254 to i64
  %256 = add i64 %251, %255
  %257 = add i64 %252, %256
  %258 = getelementptr inbounds nuw i8, ptr %231, i64 5
  %259 = load i8, ptr %258, align 1, !tbaa !8
  %260 = zext i8 %259 to i64
  %261 = add i64 %256, %260
  %262 = add i64 %257, %261
  %263 = getelementptr inbounds nuw i8, ptr %231, i64 6
  %264 = load i8, ptr %263, align 1, !tbaa !8
  %265 = zext i8 %264 to i64
  %266 = add i64 %261, %265
  %267 = add i64 %262, %266
  %268 = getelementptr inbounds nuw i8, ptr %231, i64 7
  %269 = load i8, ptr %268, align 1, !tbaa !8
  %270 = zext i8 %269 to i64
  %271 = add i64 %266, %270
  %272 = add i64 %267, %271
  %273 = getelementptr inbounds nuw i8, ptr %231, i64 8
  %274 = load i8, ptr %273, align 1, !tbaa !8
  %275 = zext i8 %274 to i64
  %276 = add i64 %271, %275
  %277 = add i64 %272, %276
  %278 = getelementptr inbounds nuw i8, ptr %231, i64 9
  %279 = load i8, ptr %278, align 1, !tbaa !8
  %280 = zext i8 %279 to i64
  %281 = add i64 %276, %280
  %282 = add i64 %277, %281
  %283 = getelementptr inbounds nuw i8, ptr %231, i64 10
  %284 = load i8, ptr %283, align 1, !tbaa !8
  %285 = zext i8 %284 to i64
  %286 = add i64 %281, %285
  %287 = add i64 %282, %286
  %288 = getelementptr inbounds nuw i8, ptr %231, i64 11
  %289 = load i8, ptr %288, align 1, !tbaa !8
  %290 = zext i8 %289 to i64
  %291 = add i64 %286, %290
  %292 = add i64 %287, %291
  %293 = getelementptr inbounds nuw i8, ptr %231, i64 12
  %294 = load i8, ptr %293, align 1, !tbaa !8
  %295 = zext i8 %294 to i64
  %296 = add i64 %291, %295
  %297 = add i64 %292, %296
  %298 = getelementptr inbounds nuw i8, ptr %231, i64 13
  %299 = load i8, ptr %298, align 1, !tbaa !8
  %300 = zext i8 %299 to i64
  %301 = add i64 %296, %300
  %302 = add i64 %297, %301
  %303 = getelementptr inbounds nuw i8, ptr %231, i64 14
  %304 = load i8, ptr %303, align 1, !tbaa !8
  %305 = zext i8 %304 to i64
  %306 = add i64 %301, %305
  %307 = add i64 %302, %306
  %308 = getelementptr inbounds nuw i8, ptr %231, i64 15
  %309 = load i8, ptr %308, align 1, !tbaa !8
  %310 = zext i8 %309 to i64
  %311 = add i64 %306, %310
  %312 = add i64 %307, %311
  %313 = getelementptr inbounds nuw i8, ptr %231, i64 16
  %314 = icmp ugt i64 %233, 15
  br i1 %314, label %228, label %197, !llvm.loop !16

315:                                              ; preds = %220, %315
  %316 = phi i64 [ %340, %315 ], [ %223, %220 ]
  %317 = phi i64 [ %335, %315 ], [ %224, %220 ]
  %318 = phi ptr [ %336, %315 ], [ %225, %220 ]
  %319 = phi i64 [ %339, %315 ], [ %226, %220 ]
  %320 = getelementptr inbounds nuw i8, ptr %318, i64 1
  %321 = load i8, ptr %318, align 1, !tbaa !8
  %322 = zext i8 %321 to i64
  %323 = add i64 %319, %322
  %324 = add i64 %323, %316
  %325 = getelementptr inbounds nuw i8, ptr %318, i64 2
  %326 = load i8, ptr %320, align 1, !tbaa !8
  %327 = zext i8 %326 to i64
  %328 = add i64 %323, %327
  %329 = add i64 %328, %324
  %330 = getelementptr inbounds nuw i8, ptr %318, i64 3
  %331 = load i8, ptr %325, align 1, !tbaa !8
  %332 = zext i8 %331 to i64
  %333 = add i64 %328, %332
  %334 = add i64 %333, %329
  %335 = add i64 %317, -4
  %336 = getelementptr inbounds nuw i8, ptr %318, i64 4
  %337 = load i8, ptr %330, align 1, !tbaa !8
  %338 = zext i8 %337 to i64
  %339 = add i64 %333, %338
  %340 = add i64 %339, %334
  %341 = icmp eq i64 %335, 0
  br i1 %341, label %342, label %315, !llvm.loop !17

342:                                              ; preds = %220, %315, %197
  %343 = phi i64 [ %311, %197 ], [ %221, %220 ], [ %339, %315 ]
  %344 = phi i64 [ %312, %197 ], [ %222, %220 ], [ %340, %315 ]
  %345 = urem i64 %343, 65521
  %346 = urem i64 %344, 65521
  br label %347

347:                                              ; preds = %342, %188
  %348 = phi i64 [ %345, %342 ], [ %185, %188 ]
  %349 = phi i64 [ %346, %342 ], [ %186, %188 ]
  %350 = shl nuw nsw i64 %349, 16
  %351 = or disjoint i64 %350, %348
  br label %352

352:                                              ; preds = %21, %347, %81, %8
  %353 = phi i64 [ %20, %8 ], [ %351, %347 ], [ %89, %81 ], [ 1, %21 ]
  ret i64 %353
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @adler32(i64 noundef %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = zext i32 %2 to i64
  %5 = lshr i64 %0, 16
  %6 = and i64 %5, 65535
  %7 = and i64 %0, 65535
  %8 = icmp eq i32 %2, 1
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = load i8, ptr %1, align 1, !tbaa !8
  %11 = zext i8 %10 to i64
  %12 = add nuw nsw i64 %7, %11
  %13 = icmp samesign ugt i64 %12, 65520
  %14 = add nsw i64 %12, -65521
  %15 = select i1 %13, i64 %14, i64 %12
  %16 = add nuw nsw i64 %15, %6
  %17 = icmp ugt i64 %16, 65520
  %18 = shl nsw i64 %16, 16
  %19 = add nsw i64 %18, -4293984256
  %20 = select i1 %17, i64 %19, i64 %18
  %21 = or i64 %20, %15
  br label %353

22:                                               ; preds = %3
  %23 = icmp eq ptr %1, null
  br i1 %23, label %353, label %24

24:                                               ; preds = %22
  %25 = icmp ult i32 %2, 16
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  %27 = icmp ugt i32 %2, 5551
  br i1 %27, label %96, label %28

28:                                               ; preds = %196, %26
  %29 = phi i64 [ %6, %26 ], [ %192, %196 ]
  %30 = phi i64 [ %4, %26 ], [ %189, %196 ]
  %31 = phi ptr [ %1, %26 ], [ %190, %196 ]
  %32 = phi i64 [ %7, %26 ], [ %191, %196 ]
  br label %229

33:                                               ; preds = %24
  %34 = icmp eq i32 %2, 0
  br i1 %34, label %87, label %35

35:                                               ; preds = %33
  %36 = and i64 %4, 3
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %35, %38
  %39 = phi i64 [ %49, %38 ], [ %6, %35 ]
  %40 = phi i64 [ %44, %38 ], [ %4, %35 ]
  %41 = phi ptr [ %45, %38 ], [ %1, %35 ]
  %42 = phi i64 [ %48, %38 ], [ %7, %35 ]
  %43 = phi i64 [ %50, %38 ], [ 0, %35 ]
  %44 = add nsw i64 %40, -1
  %45 = getelementptr inbounds nuw i8, ptr %41, i64 1
  %46 = load i8, ptr %41, align 1, !tbaa !8
  %47 = zext i8 %46 to i64
  %48 = add i64 %42, %47
  %49 = add i64 %48, %39
  %50 = add i64 %43, 1
  %51 = icmp eq i64 %50, %36
  br i1 %51, label %52, label %38, !llvm.loop !18

52:                                               ; preds = %38, %35
  %53 = phi i64 [ poison, %35 ], [ %48, %38 ]
  %54 = phi i64 [ poison, %35 ], [ %49, %38 ]
  %55 = phi i64 [ %6, %35 ], [ %49, %38 ]
  %56 = phi i64 [ %4, %35 ], [ %44, %38 ]
  %57 = phi ptr [ %1, %35 ], [ %45, %38 ]
  %58 = phi i64 [ %7, %35 ], [ %48, %38 ]
  %59 = icmp ult i32 %2, 4
  br i1 %59, label %87, label %60

60:                                               ; preds = %52, %60
  %61 = phi i64 [ %85, %60 ], [ %55, %52 ]
  %62 = phi i64 [ %80, %60 ], [ %56, %52 ]
  %63 = phi ptr [ %81, %60 ], [ %57, %52 ]
  %64 = phi i64 [ %84, %60 ], [ %58, %52 ]
  %65 = getelementptr inbounds nuw i8, ptr %63, i64 1
  %66 = load i8, ptr %63, align 1, !tbaa !8
  %67 = zext i8 %66 to i64
  %68 = add i64 %64, %67
  %69 = add i64 %68, %61
  %70 = getelementptr inbounds nuw i8, ptr %63, i64 2
  %71 = load i8, ptr %65, align 1, !tbaa !8
  %72 = zext i8 %71 to i64
  %73 = add i64 %68, %72
  %74 = add i64 %73, %69
  %75 = getelementptr inbounds nuw i8, ptr %63, i64 3
  %76 = load i8, ptr %70, align 1, !tbaa !8
  %77 = zext i8 %76 to i64
  %78 = add i64 %73, %77
  %79 = add i64 %78, %74
  %80 = add nsw i64 %62, -4
  %81 = getelementptr inbounds nuw i8, ptr %63, i64 4
  %82 = load i8, ptr %75, align 1, !tbaa !8
  %83 = zext i8 %82 to i64
  %84 = add i64 %78, %83
  %85 = add i64 %84, %79
  %86 = icmp eq i64 %80, 0
  br i1 %86, label %87, label %60, !llvm.loop !11

87:                                               ; preds = %52, %60, %33
  %88 = phi i64 [ %7, %33 ], [ %53, %52 ], [ %84, %60 ]
  %89 = phi i64 [ %6, %33 ], [ %54, %52 ], [ %85, %60 ]
  %90 = icmp ugt i64 %88, 65520
  %91 = add i64 %88, -65521
  %92 = select i1 %90, i64 %91, i64 %88
  %93 = urem i64 %89, 65521
  %94 = shl nuw nsw i64 %93, 16
  %95 = or i64 %94, %92
  br label %353

96:                                               ; preds = %26, %188
  %97 = phi i64 [ %192, %188 ], [ %6, %26 ]
  %98 = phi i64 [ %189, %188 ], [ %4, %26 ]
  %99 = phi ptr [ %190, %188 ], [ %1, %26 ]
  %100 = phi i64 [ %191, %188 ], [ %7, %26 ]
  br label %101

101:                                              ; preds = %101, %96
  %102 = phi i64 [ %100, %96 ], [ %183, %101 ]
  %103 = phi ptr [ %99, %96 ], [ %185, %101 ]
  %104 = phi i64 [ %97, %96 ], [ %184, %101 ]
  %105 = phi i32 [ 347, %96 ], [ %186, %101 ]
  %106 = load i8, ptr %103, align 1, !tbaa !8
  %107 = zext i8 %106 to i64
  %108 = add i64 %102, %107
  %109 = add i64 %108, %104
  %110 = getelementptr inbounds nuw i8, ptr %103, i64 1
  %111 = load i8, ptr %110, align 1, !tbaa !8
  %112 = zext i8 %111 to i64
  %113 = add i64 %108, %112
  %114 = add i64 %109, %113
  %115 = getelementptr inbounds nuw i8, ptr %103, i64 2
  %116 = load i8, ptr %115, align 1, !tbaa !8
  %117 = zext i8 %116 to i64
  %118 = add i64 %113, %117
  %119 = add i64 %114, %118
  %120 = getelementptr inbounds nuw i8, ptr %103, i64 3
  %121 = load i8, ptr %120, align 1, !tbaa !8
  %122 = zext i8 %121 to i64
  %123 = add i64 %118, %122
  %124 = add i64 %119, %123
  %125 = getelementptr inbounds nuw i8, ptr %103, i64 4
  %126 = load i8, ptr %125, align 1, !tbaa !8
  %127 = zext i8 %126 to i64
  %128 = add i64 %123, %127
  %129 = add i64 %124, %128
  %130 = getelementptr inbounds nuw i8, ptr %103, i64 5
  %131 = load i8, ptr %130, align 1, !tbaa !8
  %132 = zext i8 %131 to i64
  %133 = add i64 %128, %132
  %134 = add i64 %129, %133
  %135 = getelementptr inbounds nuw i8, ptr %103, i64 6
  %136 = load i8, ptr %135, align 1, !tbaa !8
  %137 = zext i8 %136 to i64
  %138 = add i64 %133, %137
  %139 = add i64 %134, %138
  %140 = getelementptr inbounds nuw i8, ptr %103, i64 7
  %141 = load i8, ptr %140, align 1, !tbaa !8
  %142 = zext i8 %141 to i64
  %143 = add i64 %138, %142
  %144 = add i64 %139, %143
  %145 = getelementptr inbounds nuw i8, ptr %103, i64 8
  %146 = load i8, ptr %145, align 1, !tbaa !8
  %147 = zext i8 %146 to i64
  %148 = add i64 %143, %147
  %149 = add i64 %144, %148
  %150 = getelementptr inbounds nuw i8, ptr %103, i64 9
  %151 = load i8, ptr %150, align 1, !tbaa !8
  %152 = zext i8 %151 to i64
  %153 = add i64 %148, %152
  %154 = add i64 %149, %153
  %155 = getelementptr inbounds nuw i8, ptr %103, i64 10
  %156 = load i8, ptr %155, align 1, !tbaa !8
  %157 = zext i8 %156 to i64
  %158 = add i64 %153, %157
  %159 = add i64 %154, %158
  %160 = getelementptr inbounds nuw i8, ptr %103, i64 11
  %161 = load i8, ptr %160, align 1, !tbaa !8
  %162 = zext i8 %161 to i64
  %163 = add i64 %158, %162
  %164 = add i64 %159, %163
  %165 = getelementptr inbounds nuw i8, ptr %103, i64 12
  %166 = load i8, ptr %165, align 1, !tbaa !8
  %167 = zext i8 %166 to i64
  %168 = add i64 %163, %167
  %169 = add i64 %164, %168
  %170 = getelementptr inbounds nuw i8, ptr %103, i64 13
  %171 = load i8, ptr %170, align 1, !tbaa !8
  %172 = zext i8 %171 to i64
  %173 = add i64 %168, %172
  %174 = add i64 %169, %173
  %175 = getelementptr inbounds nuw i8, ptr %103, i64 14
  %176 = load i8, ptr %175, align 1, !tbaa !8
  %177 = zext i8 %176 to i64
  %178 = add i64 %173, %177
  %179 = add i64 %174, %178
  %180 = getelementptr inbounds nuw i8, ptr %103, i64 15
  %181 = load i8, ptr %180, align 1, !tbaa !8
  %182 = zext i8 %181 to i64
  %183 = add i64 %178, %182
  %184 = add i64 %179, %183
  %185 = getelementptr inbounds nuw i8, ptr %103, i64 16
  %186 = add nsw i32 %105, -1
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %101, !llvm.loop !13

188:                                              ; preds = %101
  %189 = add i64 %98, -5552
  %190 = getelementptr i8, ptr %99, i64 5552
  %191 = urem i64 %183, 65521
  %192 = urem i64 %184, 65521
  %193 = icmp ugt i64 %189, 5551
  br i1 %193, label %96, label %194, !llvm.loop !14

194:                                              ; preds = %188
  %195 = icmp eq i64 %189, 0
  br i1 %195, label %348, label %196

196:                                              ; preds = %194
  %197 = icmp samesign ugt i64 %189, 15
  br i1 %197, label %28, label %198

198:                                              ; preds = %227, %196
  %199 = phi i64 [ %192, %196 ], [ %313, %227 ]
  %200 = phi i64 [ %189, %196 ], [ %234, %227 ]
  %201 = phi ptr [ %190, %196 ], [ %314, %227 ]
  %202 = phi i64 [ %191, %196 ], [ %312, %227 ]
  %203 = and i64 %200, 3
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %219, label %205

205:                                              ; preds = %198, %205
  %206 = phi i64 [ %216, %205 ], [ %199, %198 ]
  %207 = phi i64 [ %211, %205 ], [ %200, %198 ]
  %208 = phi ptr [ %212, %205 ], [ %201, %198 ]
  %209 = phi i64 [ %215, %205 ], [ %202, %198 ]
  %210 = phi i64 [ %217, %205 ], [ 0, %198 ]
  %211 = add i64 %207, -1
  %212 = getelementptr inbounds nuw i8, ptr %208, i64 1
  %213 = load i8, ptr %208, align 1, !tbaa !8
  %214 = zext i8 %213 to i64
  %215 = add i64 %209, %214
  %216 = add i64 %215, %206
  %217 = add i64 %210, 1
  %218 = icmp eq i64 %217, %203
  br i1 %218, label %219, label %205, !llvm.loop !19

219:                                              ; preds = %205, %198
  %220 = phi i64 [ poison, %198 ], [ %215, %205 ]
  %221 = phi i64 [ poison, %198 ], [ %216, %205 ]
  %222 = phi i64 [ %199, %198 ], [ %216, %205 ]
  %223 = phi i64 [ %200, %198 ], [ %211, %205 ]
  %224 = phi ptr [ %201, %198 ], [ %212, %205 ]
  %225 = phi i64 [ %202, %198 ], [ %215, %205 ]
  %226 = icmp ult i64 %200, 4
  br i1 %226, label %343, label %316

227:                                              ; preds = %229
  %228 = icmp eq i64 %234, 0
  br i1 %228, label %343, label %198

229:                                              ; preds = %28, %229
  %230 = phi i64 [ %313, %229 ], [ %29, %28 ]
  %231 = phi i64 [ %234, %229 ], [ %30, %28 ]
  %232 = phi ptr [ %314, %229 ], [ %31, %28 ]
  %233 = phi i64 [ %312, %229 ], [ %32, %28 ]
  %234 = add nsw i64 %231, -16
  %235 = load i8, ptr %232, align 1, !tbaa !8
  %236 = zext i8 %235 to i64
  %237 = add i64 %233, %236
  %238 = add i64 %237, %230
  %239 = getelementptr inbounds nuw i8, ptr %232, i64 1
  %240 = load i8, ptr %239, align 1, !tbaa !8
  %241 = zext i8 %240 to i64
  %242 = add i64 %237, %241
  %243 = add i64 %238, %242
  %244 = getelementptr inbounds nuw i8, ptr %232, i64 2
  %245 = load i8, ptr %244, align 1, !tbaa !8
  %246 = zext i8 %245 to i64
  %247 = add i64 %242, %246
  %248 = add i64 %243, %247
  %249 = getelementptr inbounds nuw i8, ptr %232, i64 3
  %250 = load i8, ptr %249, align 1, !tbaa !8
  %251 = zext i8 %250 to i64
  %252 = add i64 %247, %251
  %253 = add i64 %248, %252
  %254 = getelementptr inbounds nuw i8, ptr %232, i64 4
  %255 = load i8, ptr %254, align 1, !tbaa !8
  %256 = zext i8 %255 to i64
  %257 = add i64 %252, %256
  %258 = add i64 %253, %257
  %259 = getelementptr inbounds nuw i8, ptr %232, i64 5
  %260 = load i8, ptr %259, align 1, !tbaa !8
  %261 = zext i8 %260 to i64
  %262 = add i64 %257, %261
  %263 = add i64 %258, %262
  %264 = getelementptr inbounds nuw i8, ptr %232, i64 6
  %265 = load i8, ptr %264, align 1, !tbaa !8
  %266 = zext i8 %265 to i64
  %267 = add i64 %262, %266
  %268 = add i64 %263, %267
  %269 = getelementptr inbounds nuw i8, ptr %232, i64 7
  %270 = load i8, ptr %269, align 1, !tbaa !8
  %271 = zext i8 %270 to i64
  %272 = add i64 %267, %271
  %273 = add i64 %268, %272
  %274 = getelementptr inbounds nuw i8, ptr %232, i64 8
  %275 = load i8, ptr %274, align 1, !tbaa !8
  %276 = zext i8 %275 to i64
  %277 = add i64 %272, %276
  %278 = add i64 %273, %277
  %279 = getelementptr inbounds nuw i8, ptr %232, i64 9
  %280 = load i8, ptr %279, align 1, !tbaa !8
  %281 = zext i8 %280 to i64
  %282 = add i64 %277, %281
  %283 = add i64 %278, %282
  %284 = getelementptr inbounds nuw i8, ptr %232, i64 10
  %285 = load i8, ptr %284, align 1, !tbaa !8
  %286 = zext i8 %285 to i64
  %287 = add i64 %282, %286
  %288 = add i64 %283, %287
  %289 = getelementptr inbounds nuw i8, ptr %232, i64 11
  %290 = load i8, ptr %289, align 1, !tbaa !8
  %291 = zext i8 %290 to i64
  %292 = add i64 %287, %291
  %293 = add i64 %288, %292
  %294 = getelementptr inbounds nuw i8, ptr %232, i64 12
  %295 = load i8, ptr %294, align 1, !tbaa !8
  %296 = zext i8 %295 to i64
  %297 = add i64 %292, %296
  %298 = add i64 %293, %297
  %299 = getelementptr inbounds nuw i8, ptr %232, i64 13
  %300 = load i8, ptr %299, align 1, !tbaa !8
  %301 = zext i8 %300 to i64
  %302 = add i64 %297, %301
  %303 = add i64 %298, %302
  %304 = getelementptr inbounds nuw i8, ptr %232, i64 14
  %305 = load i8, ptr %304, align 1, !tbaa !8
  %306 = zext i8 %305 to i64
  %307 = add i64 %302, %306
  %308 = add i64 %303, %307
  %309 = getelementptr inbounds nuw i8, ptr %232, i64 15
  %310 = load i8, ptr %309, align 1, !tbaa !8
  %311 = zext i8 %310 to i64
  %312 = add i64 %307, %311
  %313 = add i64 %308, %312
  %314 = getelementptr inbounds nuw i8, ptr %232, i64 16
  %315 = icmp ugt i64 %234, 15
  br i1 %315, label %229, label %227, !llvm.loop !16

316:                                              ; preds = %219, %316
  %317 = phi i64 [ %341, %316 ], [ %222, %219 ]
  %318 = phi i64 [ %336, %316 ], [ %223, %219 ]
  %319 = phi ptr [ %337, %316 ], [ %224, %219 ]
  %320 = phi i64 [ %340, %316 ], [ %225, %219 ]
  %321 = getelementptr inbounds nuw i8, ptr %319, i64 1
  %322 = load i8, ptr %319, align 1, !tbaa !8
  %323 = zext i8 %322 to i64
  %324 = add i64 %320, %323
  %325 = add i64 %324, %317
  %326 = getelementptr inbounds nuw i8, ptr %319, i64 2
  %327 = load i8, ptr %321, align 1, !tbaa !8
  %328 = zext i8 %327 to i64
  %329 = add i64 %324, %328
  %330 = add i64 %329, %325
  %331 = getelementptr inbounds nuw i8, ptr %319, i64 3
  %332 = load i8, ptr %326, align 1, !tbaa !8
  %333 = zext i8 %332 to i64
  %334 = add i64 %329, %333
  %335 = add i64 %334, %330
  %336 = add i64 %318, -4
  %337 = getelementptr inbounds nuw i8, ptr %319, i64 4
  %338 = load i8, ptr %331, align 1, !tbaa !8
  %339 = zext i8 %338 to i64
  %340 = add i64 %334, %339
  %341 = add i64 %340, %335
  %342 = icmp eq i64 %336, 0
  br i1 %342, label %343, label %316, !llvm.loop !17

343:                                              ; preds = %219, %316, %227
  %344 = phi i64 [ %312, %227 ], [ %220, %219 ], [ %340, %316 ]
  %345 = phi i64 [ %313, %227 ], [ %221, %219 ], [ %341, %316 ]
  %346 = urem i64 %344, 65521
  %347 = urem i64 %345, 65521
  br label %348

348:                                              ; preds = %343, %194
  %349 = phi i64 [ %346, %343 ], [ %191, %194 ]
  %350 = phi i64 [ %347, %343 ], [ %192, %194 ]
  %351 = shl nuw nsw i64 %350, 16
  %352 = or disjoint i64 %351, %349
  br label %353

353:                                              ; preds = %9, %22, %87, %348
  %354 = phi i64 [ %21, %9 ], [ %352, %348 ], [ %95, %87 ], [ 1, %22 ]
  ret i64 %354
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @adler32_combine(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp slt i64 %2, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = urem i64 %2, 65521
  %7 = and i64 %0, 65535
  %8 = mul nuw nsw i64 %6, %7
  %9 = trunc nuw i64 %8 to i32
  %10 = urem i32 %9, 65521
  %11 = zext nneg i32 %10 to i64
  %12 = and i64 %1, 65535
  %13 = add nuw nsw i64 %7, 65520
  %14 = add nuw nsw i64 %13, %12
  %15 = lshr i64 %0, 16
  %16 = and i64 %15, 65535
  %17 = lshr i64 %1, 16
  %18 = and i64 %17, 65535
  %19 = add nuw nsw i64 %16, 65521
  %20 = add nuw nsw i64 %19, %18
  %21 = sub nuw nsw i64 %20, %6
  %22 = add nuw nsw i64 %21, %11
  %23 = icmp samesign ugt i64 %14, 65520
  %24 = add nsw i64 %14, -65521
  %25 = select i1 %23, i64 %24, i64 65520
  %26 = icmp samesign ugt i64 %25, 65520
  %27 = add nsw i64 %25, -65521
  %28 = select i1 %26, i64 %27, i64 %25
  %29 = icmp samesign ugt i64 %22, 131041
  %30 = add nsw i64 %22, -131042
  %31 = select i1 %29, i64 %30, i64 %22
  %32 = icmp ugt i64 %31, 65520
  %33 = shl nsw i64 %31, 16
  %34 = add nsw i64 %33, -4293984256
  %35 = select i1 %32, i64 %34, i64 %33
  %36 = or i64 %35, %28
  br label %37

37:                                               ; preds = %3, %5
  %38 = phi i64 [ %36, %5 ], [ 4294967295, %3 ]
  ret i64 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @adler32_combine64(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp slt i64 %2, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = urem i64 %2, 65521
  %7 = and i64 %0, 65535
  %8 = mul nuw nsw i64 %6, %7
  %9 = trunc nuw i64 %8 to i32
  %10 = urem i32 %9, 65521
  %11 = zext nneg i32 %10 to i64
  %12 = and i64 %1, 65535
  %13 = add nuw nsw i64 %7, 65520
  %14 = add nuw nsw i64 %13, %12
  %15 = lshr i64 %0, 16
  %16 = and i64 %15, 65535
  %17 = lshr i64 %1, 16
  %18 = and i64 %17, 65535
  %19 = add nuw nsw i64 %16, 65521
  %20 = add nuw nsw i64 %19, %18
  %21 = sub nuw nsw i64 %20, %6
  %22 = add nuw nsw i64 %21, %11
  %23 = icmp samesign ugt i64 %14, 65520
  %24 = add nsw i64 %14, -65521
  %25 = select i1 %23, i64 %24, i64 65520
  %26 = icmp samesign ugt i64 %25, 65520
  %27 = add nsw i64 %25, -65521
  %28 = select i1 %26, i64 %27, i64 %25
  %29 = icmp samesign ugt i64 %22, 131041
  %30 = add nsw i64 %22, -131042
  %31 = select i1 %29, i64 %30, i64 %22
  %32 = icmp ugt i64 %31, 65520
  %33 = shl nsw i64 %31, 16
  %34 = add nsw i64 %33, -4293984256
  %35 = select i1 %32, i64 %34, i64 %33
  %36 = or i64 %35, %28
  br label %37

37:                                               ; preds = %3, %5
  %38 = phi i64 [ %36, %5 ], [ 4294967295, %3 ]
  ret i64 %38
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
