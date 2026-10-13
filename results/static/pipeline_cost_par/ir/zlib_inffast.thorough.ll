; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_inffast.thorough.mid.ll'
source_filename = "/mydata/zlib/inffast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @inflate_fast(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = load ptr, ptr %0, align 8, !tbaa !14
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !15
  %8 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %7, i32 5), !nosanitize !16
  %9 = extractvalue { i32, i1 } %8, 1, !nosanitize !16
  br i1 %9, label %10, label %11, !prof !17, !nosanitize !16

10:                                               ; preds = %2
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

11:                                               ; preds = %2
  %12 = extractvalue { i32, i1 } %8, 0, !nosanitize !16
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 %13
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  %17 = ptrtoint ptr %16 to i64
  %18 = ptrtoaddr ptr %16 to i64
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %20 = load i32, ptr %19, align 8, !tbaa !19
  %21 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1, i32 %20), !nosanitize !16
  %22 = extractvalue { i32, i1 } %21, 1, !nosanitize !16
  br i1 %22, label %23, label %24, !prof !17, !nosanitize !16

23:                                               ; preds = %11
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

24:                                               ; preds = %11
  %25 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %20, i32 257), !nosanitize !16
  %26 = extractvalue { i32, i1 } %25, 1, !nosanitize !16
  br i1 %26, label %27, label %28, !prof !17, !nosanitize !16

27:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

28:                                               ; preds = %24
  %29 = extractvalue { i32, i1 } %21, 0, !nosanitize !16
  %30 = zext i32 %29 to i64
  %31 = sub nsw i64 0, %30
  %32 = getelementptr inbounds i8, ptr %16, i64 %31
  %33 = extractvalue { i32, i1 } %25, 0, !nosanitize !16
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds nuw i8, ptr %16, i64 %34
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 60
  %37 = load i32, ptr %36, align 4, !tbaa !20
  %.fr = freeze i32 %37
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %39 = load i32, ptr %38, align 8, !tbaa !24
  %40 = getelementptr inbounds nuw i8, ptr %4, i64 68
  %41 = load i32, ptr %40, align 4, !tbaa !25
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %43 = load ptr, ptr %42, align 8, !tbaa !26
  %44 = ptrtoint ptr %43 to i64
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %46 = load i64, ptr %45, align 8, !tbaa !27
  %47 = getelementptr inbounds nuw i8, ptr %4, i64 88
  %48 = load i32, ptr %47, align 8, !tbaa !28
  %49 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %50 = load ptr, ptr %49, align 8, !tbaa !29
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %52 = load ptr, ptr %51, align 8, !tbaa !30
  %53 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %54 = load i32, ptr %53, align 8, !tbaa !31
  %55 = shl nsw i32 -1, %54
  %56 = xor i32 %55, -1
  %57 = getelementptr inbounds nuw i8, ptr %4, i64 124
  %58 = load i32, ptr %57, align 4, !tbaa !32
  %59 = shl nsw i32 -1, %58
  %60 = xor i32 %59, -1
  %61 = zext nneg i32 %56 to i64
  %62 = zext nneg i32 %60 to i64
  %63 = ptrtoint ptr %32 to i64
  %64 = getelementptr inbounds nuw i8, ptr %4, i64 7144
  %65 = icmp eq i32 %41, 0
  %66 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.fr, i32 %41)
  %67 = extractvalue { i32, i1 } %66, 1
  %68 = extractvalue { i32, i1 } %66, 0
  %69 = zext i32 %41 to i64
  %70 = icmp ult i32 %41, 32
  %71 = and i64 %69, 4294967264
  %72 = trunc nuw i64 %71 to i32
  %73 = sub i32 %41, %72
  %74 = getelementptr i8, ptr %43, i64 %71
  %75 = icmp eq i64 %71, %69
  %mv.h = icmp sgt i32 %.fr, -1
  %invariant.op866 = sub i64 1, %44
  %76 = add i32 %.fr, %1
  %77 = trunc i64 %17 to i32
  %78 = add i32 %20, %77
  %79 = xor i32 %1, -1
  %80 = add i32 %78, %79
  %81 = add i32 %.fr, %41
  %82 = add i32 %81, %1
  %83 = trunc i64 %17 to i32
  %84 = add i32 %20, %83
  %85 = add i32 %20, %77
  %86 = xor i32 %41, -1
  %87 = add i32 %85, %86
  %88 = sub i32 %87, %1
  %89 = add i32 %41, %1
  %90 = trunc i64 %17 to i32
  %91 = add i32 %20, %90
  %92 = add i32 %20, %77
  %93 = xor i32 %1, -1
  %94 = add i32 %92, %93
  br i1 %mv.h, label %.mv.ph.mv.fast.preheader, label %.mv.ph.preheader

.mv.ph.preheader:                                 ; preds = %28
  %95 = trunc i64 %18 to i32
  %96 = add i32 %20, %95
  br label %.mv.ph

.mv.ph.mv.fast.preheader:                         ; preds = %28
  %97 = trunc i64 %17 to i32
  %98 = add i32 %20, %97
  br label %.mv.ph.mv.fast

.mv.ph.mv.fast:                                   ; preds = %.mv.ph.mv.fast.preheader, %708
  %99 = phi i32 [ %709, %708 ], [ %48, %.mv.ph.mv.fast.preheader ]
  %100 = phi i64 [ %710, %708 ], [ %46, %.mv.ph.mv.fast.preheader ]
  %101 = phi ptr [ %711, %708 ], [ %16, %.mv.ph.mv.fast.preheader ]
  %102 = phi ptr [ %712, %708 ], [ %5, %.mv.ph.mv.fast.preheader ]
  %103 = icmp ult i32 %99, 15
  br i1 %103, label %104, label %125

104:                                              ; preds = %.mv.ph.mv.fast
  %105 = load i8, ptr %102, align 1, !tbaa !33
  %106 = zext i8 %105 to i64
  %107 = zext nneg i32 %99 to i64
  %108 = shl nuw nsw i64 %106, %107
  %109 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %100, i64 %108), !nosanitize !16
  %110 = extractvalue { i64, i1 } %109, 1, !nosanitize !16
  br i1 %110, label %.loopexit78, label %111, !prof !17, !nosanitize !16

111:                                              ; preds = %104
  %112 = extractvalue { i64, i1 } %109, 0, !nosanitize !16
  %113 = getelementptr inbounds nuw i8, ptr %102, i64 1
  %114 = add nuw nsw i32 %99, 8
  %115 = load i8, ptr %113, align 1, !tbaa !33
  %116 = zext i8 %115 to i64
  %117 = zext nneg i32 %114 to i64
  %118 = shl nuw nsw i64 %116, %117
  %119 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %112, i64 %118), !nosanitize !16
  %120 = extractvalue { i64, i1 } %119, 1, !nosanitize !16
  br i1 %120, label %.loopexit79, label %121, !prof !17, !nosanitize !16

121:                                              ; preds = %111
  %122 = extractvalue { i64, i1 } %119, 0, !nosanitize !16
  %123 = getelementptr inbounds nuw i8, ptr %102, i64 2
  %124 = or disjoint i32 %99, 16
  br label %125

125:                                              ; preds = %121, %.mv.ph.mv.fast
  %126 = phi i32 [ %124, %121 ], [ %99, %.mv.ph.mv.fast ]
  %127 = phi i64 [ %122, %121 ], [ %100, %.mv.ph.mv.fast ]
  %128 = phi ptr [ %123, %121 ], [ %102, %.mv.ph.mv.fast ]
  %129 = and i64 %127, %61
  %130 = getelementptr inbounds nuw [4 x i8], ptr %50, i64 %129
  %131 = getelementptr inbounds nuw i8, ptr %130, i64 1
  %132 = load i8, ptr %131, align 1, !tbaa !34
  %133 = zext i8 %132 to i32
  %134 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %126, i32 %133), !nosanitize !16
  %135 = extractvalue { i32, i1 } %134, 1, !nosanitize !16
  br i1 %135, label %.loopexit7, label %136, !prof !37, !nosanitize !16

136:                                              ; preds = %125
  %137 = zext nneg i8 %132 to i64
  %138 = lshr i64 %127, %137
  br label %139

139:                                              ; preds = %686, %136
  %140 = phi { i32, i1 } [ %701, %686 ], [ %134, %136 ]
  %141 = phi i64 [ %700, %686 ], [ %138, %136 ]
  %142 = phi ptr [ %695, %686 ], [ %130, %136 ]
  %143 = extractvalue { i32, i1 } %140, 0
  %144 = load i8, ptr %142, align 2, !tbaa !38
  %145 = zext i8 %144 to i32
  %146 = icmp eq i8 %144, 0
  br i1 %146, label %703, label %147

147:                                              ; preds = %139
  %148 = and i32 %145, 16
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %683, label %150

150:                                              ; preds = %147
  %151 = getelementptr inbounds nuw i8, ptr %142, i64 2
  %152 = load i16, ptr %151, align 2, !tbaa !39
  %153 = zext i16 %152 to i32
  %154 = and i32 %145, 15
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %184, label %156

156:                                              ; preds = %150
  %157 = icmp ult i32 %143, %154
  br i1 %157, label %158, label %169

158:                                              ; preds = %156
  %159 = load i8, ptr %128, align 1, !tbaa !33
  %160 = zext i8 %159 to i64
  %161 = zext nneg i32 %143 to i64
  %162 = shl nuw nsw i64 %160, %161
  %163 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %141, i64 %162), !nosanitize !16
  %164 = extractvalue { i64, i1 } %163, 1, !nosanitize !16
  br i1 %164, label %.loopexit81, label %165, !prof !17, !nosanitize !16

165:                                              ; preds = %158
  %166 = extractvalue { i64, i1 } %163, 0, !nosanitize !16
  %167 = getelementptr inbounds nuw i8, ptr %128, i64 1
  %168 = add nuw nsw i32 %143, 8
  br label %169

169:                                              ; preds = %165, %156
  %170 = phi i32 [ %168, %165 ], [ %143, %156 ]
  %171 = phi i64 [ %166, %165 ], [ %141, %156 ]
  %172 = phi ptr [ %167, %165 ], [ %128, %156 ]
  %173 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %170, i32 %154), !nosanitize !16
  %174 = extractvalue { i32, i1 } %173, 1, !nosanitize !16
  br i1 %174, label %.loopexit82, label %175, !prof !17, !nosanitize !16

175:                                              ; preds = %169
  %176 = trunc i64 %171 to i32
  %177 = shl nsw i32 -1, %154
  %178 = xor i32 %177, -1
  %179 = and i32 %176, %178
  %180 = add nuw nsw i32 %179, %153
  %181 = extractvalue { i32, i1 } %173, 0, !nosanitize !16
  %182 = zext nneg i32 %154 to i64
  %183 = lshr i64 %171, %182
  br label %184

184:                                              ; preds = %175, %150
  %185 = phi i32 [ %181, %175 ], [ %143, %150 ]
  %186 = phi i64 [ %183, %175 ], [ %141, %150 ]
  %187 = phi ptr [ %172, %175 ], [ %128, %150 ]
  %188 = phi i32 [ %180, %175 ], [ %153, %150 ]
  %189 = icmp ult i32 %185, 15
  br i1 %189, label %190, label %211

190:                                              ; preds = %184
  %191 = load i8, ptr %187, align 1, !tbaa !33
  %192 = zext i8 %191 to i64
  %193 = zext nneg i32 %185 to i64
  %194 = shl nuw nsw i64 %192, %193
  %195 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %186, i64 %194), !nosanitize !16
  %196 = extractvalue { i64, i1 } %195, 1, !nosanitize !16
  br i1 %196, label %.loopexit83, label %197, !prof !17, !nosanitize !16

197:                                              ; preds = %190
  %198 = extractvalue { i64, i1 } %195, 0, !nosanitize !16
  %199 = getelementptr inbounds nuw i8, ptr %187, i64 1
  %200 = add nuw nsw i32 %185, 8
  %201 = load i8, ptr %199, align 1, !tbaa !33
  %202 = zext i8 %201 to i64
  %203 = zext nneg i32 %200 to i64
  %204 = shl nuw nsw i64 %202, %203
  %205 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %198, i64 %204), !nosanitize !16
  %206 = extractvalue { i64, i1 } %205, 1, !nosanitize !16
  br i1 %206, label %.loopexit84, label %207, !prof !17, !nosanitize !16

207:                                              ; preds = %197
  %208 = extractvalue { i64, i1 } %205, 0, !nosanitize !16
  %209 = getelementptr inbounds nuw i8, ptr %187, i64 2
  %210 = or disjoint i32 %185, 16
  br label %211

211:                                              ; preds = %207, %184
  %212 = phi i32 [ %210, %207 ], [ %185, %184 ]
  %213 = phi i64 [ %208, %207 ], [ %186, %184 ]
  %214 = phi ptr [ %209, %207 ], [ %187, %184 ]
  %215 = and i64 %213, %62
  %216 = getelementptr inbounds nuw [4 x i8], ptr %52, i64 %215
  %217 = getelementptr inbounds nuw i8, ptr %216, i64 1
  %218 = load i8, ptr %217, align 1, !tbaa !34
  %219 = zext i8 %218 to i32
  %220 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %212, i32 %219), !nosanitize !16
  %221 = extractvalue { i32, i1 } %220, 1, !nosanitize !16
  br i1 %221, label %.loopexit6, label %222, !prof !37, !nosanitize !16

222:                                              ; preds = %211
  %223 = zext nneg i8 %218 to i64
  %224 = lshr i64 %213, %223
  br label %225

225:                                              ; preds = %666, %222
  %226 = phi { i32, i1 } [ %681, %666 ], [ %220, %222 ]
  %227 = phi i64 [ %680, %666 ], [ %224, %222 ]
  %228 = phi ptr [ %675, %666 ], [ %216, %222 ]
  %229 = extractvalue { i32, i1 } %226, 0
  %230 = load i8, ptr %228, align 2, !tbaa !38
  %231 = zext i8 %230 to i32
  %232 = and i32 %231, 16
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %663, label %234

234:                                              ; preds = %225
  %235 = getelementptr inbounds nuw i8, ptr %228, i64 2
  %236 = load i16, ptr %235, align 2, !tbaa !39
  %237 = zext i16 %236 to i32
  %238 = and i32 %231, 15
  %239 = icmp ult i32 %229, %238
  br i1 %239, label %240, label %263

240:                                              ; preds = %234
  %241 = getelementptr inbounds nuw i8, ptr %214, i64 1
  %242 = load i8, ptr %214, align 1, !tbaa !33
  %243 = zext i8 %242 to i64
  %244 = zext nneg i32 %229 to i64
  %245 = shl nuw nsw i64 %243, %244
  %246 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %227, i64 %245), !nosanitize !16
  %247 = extractvalue { i64, i1 } %246, 0, !nosanitize !16
  %248 = extractvalue { i64, i1 } %246, 1, !nosanitize !16
  br i1 %248, label %.loopexit86, label %249, !prof !17, !nosanitize !16

249:                                              ; preds = %240
  %250 = add nuw nsw i32 %229, 8
  %251 = icmp samesign ult i32 %250, %238
  br i1 %251, label %252, label %263

252:                                              ; preds = %249
  %253 = load i8, ptr %241, align 1, !tbaa !33
  %254 = zext i8 %253 to i64
  %255 = zext nneg i32 %250 to i64
  %256 = shl nuw nsw i64 %254, %255
  %257 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %247, i64 %256), !nosanitize !16
  %258 = extractvalue { i64, i1 } %257, 1, !nosanitize !16
  br i1 %258, label %.loopexit87, label %259, !prof !17, !nosanitize !16

259:                                              ; preds = %252
  %260 = extractvalue { i64, i1 } %257, 0, !nosanitize !16
  %261 = getelementptr inbounds nuw i8, ptr %214, i64 2
  %262 = add nuw nsw i32 %229, 16
  br label %263

263:                                              ; preds = %259, %249, %234
  %264 = phi i32 [ %262, %259 ], [ %250, %249 ], [ %229, %234 ]
  %265 = phi i64 [ %260, %259 ], [ %247, %249 ], [ %227, %234 ]
  %266 = phi ptr [ %261, %259 ], [ %241, %249 ], [ %214, %234 ]
  %267 = shl nsw i32 -1, %238
  %268 = xor i32 %267, -1
  %269 = trunc i64 %265 to i32
  %270 = and i32 %269, %268
  %271 = add nuw nsw i32 %270, %237
  %272 = zext nneg i32 %238 to i64
  %273 = lshr i64 %265, %272
  %274 = sub i32 %264, %238
  %275 = ptrtoint ptr %101 to i64
  %276 = sub i64 %275, %63
  %277 = trunc i64 %276 to i32
  %278 = icmp ugt i32 %271, %277
  br i1 %278, label %311, label %279

279:                                              ; preds = %263
  %280 = zext nneg i32 %271 to i64
  %281 = sub nsw i64 0, %280
  %282 = getelementptr inbounds i8, ptr %101, i64 %281
  br label %283

283:                                              ; preds = %296, %279
  %284 = phi ptr [ %101, %279 ], [ %298, %296 ]
  %285 = phi i32 [ %188, %279 ], [ %297, %296 ]
  %286 = phi ptr [ %282, %279 ], [ %299, %296 ]
  %287 = getelementptr inbounds nuw i8, ptr %286, i64 1
  %288 = load i8, ptr %286, align 1, !tbaa !33
  %289 = getelementptr inbounds nuw i8, ptr %284, i64 1
  store i8 %288, ptr %284, align 1, !tbaa !33
  %290 = getelementptr inbounds nuw i8, ptr %286, i64 2
  %291 = load i8, ptr %287, align 1, !tbaa !33
  %292 = getelementptr inbounds nuw i8, ptr %284, i64 2
  store i8 %291, ptr %289, align 1, !tbaa !33
  %293 = load i8, ptr %290, align 1, !tbaa !33
  store i8 %293, ptr %292, align 1, !tbaa !33
  %294 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %285, i32 3), !nosanitize !16
  %295 = extractvalue { i32, i1 } %294, 1, !nosanitize !16
  br i1 %295, label %.loopexit76, label %296, !prof !17, !nosanitize !16

296:                                              ; preds = %283
  %297 = extractvalue { i32, i1 } %294, 0, !nosanitize !16
  %298 = getelementptr inbounds nuw i8, ptr %284, i64 3
  %299 = getelementptr inbounds nuw i8, ptr %286, i64 3
  %300 = icmp ugt i32 %297, 2
  br i1 %300, label %283, label %301, !llvm.loop !40

301:                                              ; preds = %296
  %302 = icmp eq i32 %297, 0
  br i1 %302, label %708, label %303

303:                                              ; preds = %301
  %304 = load i8, ptr %299, align 1, !tbaa !33
  %305 = getelementptr inbounds nuw i8, ptr %284, i64 4
  store i8 %304, ptr %298, align 1, !tbaa !33
  %306 = icmp eq i32 %297, 2
  br i1 %306, label %307, label %708

307:                                              ; preds = %303
  %308 = getelementptr inbounds nuw i8, ptr %286, i64 4
  %309 = load i8, ptr %308, align 1, !tbaa !33
  %310 = getelementptr inbounds nuw i8, ptr %284, i64 5
  store i8 %309, ptr %305, align 1, !tbaa !33
  br label %708

311:                                              ; preds = %263
  %312 = sub nuw nsw i32 %271, %277
  %313 = icmp ugt i32 %312, %39
  br i1 %313, label %314, label %317

314:                                              ; preds = %311
  %315 = load i32, ptr %64, align 8, !tbaa !42
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %.loopexit5

317:                                              ; preds = %314, %311
  br i1 %65, label %527, label %318

318:                                              ; preds = %317
  %319 = icmp ult i32 %41, %312
  br i1 %319, label %391, label %320

320:                                              ; preds = %318
  %321 = sub nuw i32 %41, %312
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds nuw i8, ptr %43, i64 %322
  %324 = icmp ult i32 %312, %188
  br i1 %324, label %iter.check1310, label %601

iter.check1310:                                   ; preds = %320
  %325 = add i32 %94, %270
  %326 = add i32 %325, %237
  %327 = trunc i64 %275 to i32
  %328 = sub i32 %326, %327
  %329 = zext i32 %328 to i64
  %330 = add nuw nsw i64 %329, 1
  %min.iters.check1291 = icmp ult i32 %328, 3
  br i1 %min.iters.check1291, label %vec.epilog.scalar.ph1311.preheader, label %vector.memcheck1289

vector.memcheck1289:                              ; preds = %iter.check1310
  %331 = trunc i64 %275 to i32
  %332 = add i32 %89, %331
  %333 = add i32 %91, %270
  %334 = add i32 %333, %237
  %335 = sub i32 %332, %334
  %336 = zext i32 %335 to i64
  %337 = add i64 %44, %336
  %338 = sub i64 %275, %337
  %diff.check1290 = icmp ult i64 %338, 32
  br i1 %diff.check1290, label %vec.epilog.scalar.ph1311.preheader, label %vector.main.loop.iter.check1292

vector.main.loop.iter.check1292:                  ; preds = %vector.memcheck1289
  %min.iters.check1293 = icmp ult i32 %328, 31
  br i1 %min.iters.check1293, label %vec.epilog.ph1314, label %vector.ph1294

vector.ph1294:                                    ; preds = %vector.main.loop.iter.check1292
  %n.mod.vf1295 = and i64 %330, 28
  %n.vec1296 = and i64 %330, 8589934560
  %339 = getelementptr i8, ptr %101, i64 %n.vec1296
  %.cast1297 = trunc i64 %n.vec1296 to i32
  %340 = sub i32 %312, %.cast1297
  %341 = getelementptr i8, ptr %323, i64 %n.vec1296
  br label %vector.body1298

vector.body1298:                                  ; preds = %vector.body1298, %vector.ph1294
  %index1299 = phi i64 [ 0, %vector.ph1294 ], [ %index.next1304, %vector.body1298 ]
  %next.gep1300 = getelementptr i8, ptr %101, i64 %index1299
  %next.gep1301 = getelementptr i8, ptr %323, i64 %index1299
  %342 = getelementptr i8, ptr %next.gep1301, i64 16
  %wide.load1302 = load <16 x i8>, ptr %next.gep1301, align 1, !tbaa !33
  %wide.load1303 = load <16 x i8>, ptr %342, align 1, !tbaa !33
  %343 = getelementptr i8, ptr %next.gep1300, i64 16
  store <16 x i8> %wide.load1302, ptr %next.gep1300, align 1, !tbaa !33
  store <16 x i8> %wide.load1303, ptr %343, align 1, !tbaa !33
  %index.next1304 = add nuw i64 %index1299, 32
  %344 = icmp eq i64 %index.next1304, %n.vec1296
  br i1 %344, label %middle.block1305, label %vector.body1298, !llvm.loop !43

middle.block1305:                                 ; preds = %vector.body1298
  %cmp.n1306 = icmp eq i64 %330, %n.vec1296
  br i1 %cmp.n1306, label %.loopexit1331, label %vec.epilog.iter.check1312

vec.epilog.iter.check1312:                        ; preds = %middle.block1305
  %min.epilog.iters.check1313 = icmp eq i64 %n.mod.vf1295, 0
  br i1 %min.epilog.iters.check1313, label %vec.epilog.scalar.ph1311.preheader, label %vec.epilog.ph1314, !prof !46

vec.epilog.ph1314:                                ; preds = %vector.main.loop.iter.check1292, %vec.epilog.iter.check1312
  %vec.epilog.resume.val1307 = phi i64 [ %n.vec1296, %vec.epilog.iter.check1312 ], [ 0, %vector.main.loop.iter.check1292 ]
  %n.vec1316 = and i64 %330, 8589934588
  %345 = getelementptr i8, ptr %101, i64 %n.vec1316
  %.cast1317 = trunc i64 %n.vec1316 to i32
  %346 = sub i32 %312, %.cast1317
  %347 = getelementptr i8, ptr %323, i64 %n.vec1316
  br label %vec.epilog.vector.body1318

vec.epilog.vector.body1318:                       ; preds = %vec.epilog.vector.body1318, %vec.epilog.ph1314
  %index1319 = phi i64 [ %vec.epilog.resume.val1307, %vec.epilog.ph1314 ], [ %index.next1323, %vec.epilog.vector.body1318 ]
  %next.gep1320 = getelementptr i8, ptr %101, i64 %index1319
  %next.gep1321 = getelementptr i8, ptr %323, i64 %index1319
  %wide.load1322 = load <4 x i8>, ptr %next.gep1321, align 1, !tbaa !33
  store <4 x i8> %wide.load1322, ptr %next.gep1320, align 1, !tbaa !33
  %index.next1323 = add nuw i64 %index1319, 4
  %348 = icmp eq i64 %index.next1323, %n.vec1316
  br i1 %348, label %vec.epilog.middle.block1324, label %vec.epilog.vector.body1318, !llvm.loop !47

vec.epilog.middle.block1324:                      ; preds = %vec.epilog.vector.body1318
  %cmp.n1325 = icmp eq i64 %330, %n.vec1316
  br i1 %cmp.n1325, label %.loopexit1331, label %vec.epilog.scalar.ph1311.preheader

vec.epilog.scalar.ph1311.preheader:               ; preds = %vector.memcheck1289, %iter.check1310, %vec.epilog.iter.check1312, %vec.epilog.middle.block1324
  %.ph1341 = phi ptr [ %101, %iter.check1310 ], [ %101, %vector.memcheck1289 ], [ %339, %vec.epilog.iter.check1312 ], [ %345, %vec.epilog.middle.block1324 ]
  %.ph1342 = phi i32 [ %312, %iter.check1310 ], [ %312, %vector.memcheck1289 ], [ %340, %vec.epilog.iter.check1312 ], [ %346, %vec.epilog.middle.block1324 ]
  %.ph1343 = phi ptr [ %323, %iter.check1310 ], [ %323, %vector.memcheck1289 ], [ %341, %vec.epilog.iter.check1312 ], [ %347, %vec.epilog.middle.block1324 ]
  %349 = add i32 %.ph1342, -1
  %xtraiter1600 = and i32 %.ph1342, 7
  %lcmp.mod1601.not = icmp eq i32 %xtraiter1600, 0
  br i1 %lcmp.mod1601.not, label %vec.epilog.scalar.ph1311.prol.loopexit, label %vec.epilog.scalar.ph1311.prol

vec.epilog.scalar.ph1311.prol:                    ; preds = %vec.epilog.scalar.ph1311.preheader, %vec.epilog.scalar.ph1311.prol
  %350 = phi ptr [ %354, %vec.epilog.scalar.ph1311.prol ], [ %.ph1341, %vec.epilog.scalar.ph1311.preheader ]
  %351 = phi i32 [ %355, %vec.epilog.scalar.ph1311.prol ], [ %.ph1342, %vec.epilog.scalar.ph1311.preheader ]
  %352 = phi ptr [ %356, %vec.epilog.scalar.ph1311.prol ], [ %.ph1343, %vec.epilog.scalar.ph1311.preheader ]
  %prol.iter1602 = phi i32 [ %prol.iter1602.next, %vec.epilog.scalar.ph1311.prol ], [ 0, %vec.epilog.scalar.ph1311.preheader ]
  %353 = load i8, ptr %352, align 1, !tbaa !33
  store i8 %353, ptr %350, align 1, !tbaa !33
  %354 = getelementptr inbounds nuw i8, ptr %350, i64 1
  %355 = add i32 %351, -1
  %356 = getelementptr inbounds nuw i8, ptr %352, i64 1
  %prol.iter1602.next = add i32 %prol.iter1602, 1
  %prol.iter1602.cmp.not = icmp eq i32 %prol.iter1602.next, %xtraiter1600
  br i1 %prol.iter1602.cmp.not, label %vec.epilog.scalar.ph1311.prol.loopexit, label %vec.epilog.scalar.ph1311.prol, !llvm.loop !48

vec.epilog.scalar.ph1311.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1311.prol, %vec.epilog.scalar.ph1311.preheader
  %.lcssa1380.unr = phi ptr [ poison, %vec.epilog.scalar.ph1311.preheader ], [ %354, %vec.epilog.scalar.ph1311.prol ]
  %.unr1603 = phi ptr [ %.ph1341, %vec.epilog.scalar.ph1311.preheader ], [ %354, %vec.epilog.scalar.ph1311.prol ]
  %.unr1604 = phi i32 [ %.ph1342, %vec.epilog.scalar.ph1311.preheader ], [ %355, %vec.epilog.scalar.ph1311.prol ]
  %.unr1605 = phi ptr [ %.ph1343, %vec.epilog.scalar.ph1311.preheader ], [ %356, %vec.epilog.scalar.ph1311.prol ]
  %357 = icmp ult i32 %349, 7
  br i1 %357, label %.loopexit1331, label %vec.epilog.scalar.ph1311

vec.epilog.scalar.ph1311:                         ; preds = %vec.epilog.scalar.ph1311.prol.loopexit, %vec.epilog.scalar.ph1311
  %358 = phi ptr [ %383, %vec.epilog.scalar.ph1311 ], [ %.unr1603, %vec.epilog.scalar.ph1311.prol.loopexit ]
  %359 = phi i32 [ %384, %vec.epilog.scalar.ph1311 ], [ %.unr1604, %vec.epilog.scalar.ph1311.prol.loopexit ]
  %360 = phi ptr [ %385, %vec.epilog.scalar.ph1311 ], [ %.unr1605, %vec.epilog.scalar.ph1311.prol.loopexit ]
  %361 = load i8, ptr %360, align 1, !tbaa !33
  store i8 %361, ptr %358, align 1, !tbaa !33
  %362 = getelementptr inbounds nuw i8, ptr %358, i64 1
  %363 = getelementptr inbounds nuw i8, ptr %360, i64 1
  %364 = load i8, ptr %363, align 1, !tbaa !33
  store i8 %364, ptr %362, align 1, !tbaa !33
  %365 = getelementptr inbounds nuw i8, ptr %358, i64 2
  %366 = getelementptr inbounds nuw i8, ptr %360, i64 2
  %367 = load i8, ptr %366, align 1, !tbaa !33
  store i8 %367, ptr %365, align 1, !tbaa !33
  %368 = getelementptr inbounds nuw i8, ptr %358, i64 3
  %369 = getelementptr inbounds nuw i8, ptr %360, i64 3
  %370 = load i8, ptr %369, align 1, !tbaa !33
  store i8 %370, ptr %368, align 1, !tbaa !33
  %371 = getelementptr inbounds nuw i8, ptr %358, i64 4
  %372 = getelementptr inbounds nuw i8, ptr %360, i64 4
  %373 = load i8, ptr %372, align 1, !tbaa !33
  store i8 %373, ptr %371, align 1, !tbaa !33
  %374 = getelementptr inbounds nuw i8, ptr %358, i64 5
  %375 = getelementptr inbounds nuw i8, ptr %360, i64 5
  %376 = load i8, ptr %375, align 1, !tbaa !33
  store i8 %376, ptr %374, align 1, !tbaa !33
  %377 = getelementptr inbounds nuw i8, ptr %358, i64 6
  %378 = getelementptr inbounds nuw i8, ptr %360, i64 6
  %379 = load i8, ptr %378, align 1, !tbaa !33
  store i8 %379, ptr %377, align 1, !tbaa !33
  %380 = getelementptr inbounds nuw i8, ptr %358, i64 7
  %381 = getelementptr inbounds nuw i8, ptr %360, i64 7
  %382 = load i8, ptr %381, align 1, !tbaa !33
  store i8 %382, ptr %380, align 1, !tbaa !33
  %383 = getelementptr inbounds nuw i8, ptr %358, i64 8
  %384 = add i32 %359, -8
  %385 = getelementptr inbounds nuw i8, ptr %360, i64 8
  %386 = icmp eq i32 %384, 0
  br i1 %386, label %.loopexit1331, label %vec.epilog.scalar.ph1311, !llvm.loop !50

.loopexit1331:                                    ; preds = %vec.epilog.scalar.ph1311.prol.loopexit, %vec.epilog.scalar.ph1311, %vec.epilog.middle.block1324, %middle.block1305
  %.lcssa930 = phi ptr [ %345, %vec.epilog.middle.block1324 ], [ %339, %middle.block1305 ], [ %.lcssa1380.unr, %vec.epilog.scalar.ph1311.prol.loopexit ], [ %383, %vec.epilog.scalar.ph1311 ]
  %387 = sub nuw nsw i32 %188, %312
  %388 = zext nneg i32 %271 to i64
  %389 = sub nsw i64 0, %388
  %390 = getelementptr inbounds i8, ptr %.lcssa930, i64 %389
  br label %601

391:                                              ; preds = %318
  %392 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %68, i32 %312), !nosanitize !16
  %393 = extractvalue { i32, i1 } %392, 1, !nosanitize !16
  br i1 %393, label %.loopexit89, label %394, !prof !17, !nosanitize !16

394:                                              ; preds = %391
  %395 = extractvalue { i32, i1 } %392, 0, !nosanitize !16
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds nuw i8, ptr %43, i64 %396
  %398 = sub nsw i32 %312, %41
  %399 = icmp ult i32 %398, %188
  br i1 %399, label %iter.check1268, label %601

iter.check1268:                                   ; preds = %394
  %400 = add i32 %88, %270
  %401 = add i32 %400, %237
  %402 = trunc i64 %275 to i32
  %403 = sub i32 %401, %402
  %404 = zext i32 %403 to i64
  %405 = add nuw nsw i64 %404, 1
  %min.iters.check1248 = icmp ult i32 %403, 3
  br i1 %min.iters.check1248, label %vec.epilog.scalar.ph1269.preheader, label %vector.memcheck1246

vector.memcheck1246:                              ; preds = %iter.check1268
  %406 = trunc i64 %275 to i32
  %407 = add i32 %82, %406
  %408 = add i32 %84, %270
  %409 = add i32 %408, %237
  %410 = sub i32 %407, %409
  %411 = zext i32 %410 to i64
  %412 = add i64 %44, %411
  %413 = sub i64 %275, %412
  %diff.check1247 = icmp ult i64 %413, 32
  br i1 %diff.check1247, label %vec.epilog.scalar.ph1269.preheader, label %vector.main.loop.iter.check1249

vector.main.loop.iter.check1249:                  ; preds = %vector.memcheck1246
  %min.iters.check1250 = icmp ult i32 %403, 31
  br i1 %min.iters.check1250, label %vec.epilog.ph1272, label %vector.ph1251

vector.ph1251:                                    ; preds = %vector.main.loop.iter.check1249
  %n.mod.vf1252 = and i64 %405, 28
  %n.vec1253 = and i64 %405, 8589934560
  %414 = getelementptr i8, ptr %101, i64 %n.vec1253
  %.cast1254 = trunc i64 %n.vec1253 to i32
  %415 = sub i32 %398, %.cast1254
  %416 = getelementptr i8, ptr %397, i64 %n.vec1253
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %vector.ph1251
  %index1256 = phi i64 [ 0, %vector.ph1251 ], [ %index.next1261, %vector.body1255 ]
  %next.gep1257 = getelementptr i8, ptr %101, i64 %index1256
  %next.gep1258 = getelementptr i8, ptr %397, i64 %index1256
  %417 = getelementptr i8, ptr %next.gep1258, i64 16
  %wide.load1259 = load <16 x i8>, ptr %next.gep1258, align 1, !tbaa !33
  %wide.load1260 = load <16 x i8>, ptr %417, align 1, !tbaa !33
  %418 = getelementptr i8, ptr %next.gep1257, i64 16
  store <16 x i8> %wide.load1259, ptr %next.gep1257, align 1, !tbaa !33
  store <16 x i8> %wide.load1260, ptr %418, align 1, !tbaa !33
  %index.next1261 = add nuw i64 %index1256, 32
  %419 = icmp eq i64 %index.next1261, %n.vec1253
  br i1 %419, label %middle.block1262, label %vector.body1255, !llvm.loop !51

middle.block1262:                                 ; preds = %vector.body1255
  %cmp.n1263 = icmp eq i64 %405, %n.vec1253
  %ind.escape1264 = add nsw i64 %n.vec1253, -1
  br i1 %cmp.n1263, label %.loopexit1330, label %vec.epilog.iter.check1270

vec.epilog.iter.check1270:                        ; preds = %middle.block1262
  %min.epilog.iters.check1271 = icmp eq i64 %n.mod.vf1252, 0
  br i1 %min.epilog.iters.check1271, label %vec.epilog.scalar.ph1269.preheader, label %vec.epilog.ph1272, !prof !46

vec.epilog.ph1272:                                ; preds = %vector.main.loop.iter.check1249, %vec.epilog.iter.check1270
  %vec.epilog.resume.val1265 = phi i64 [ %n.vec1253, %vec.epilog.iter.check1270 ], [ 0, %vector.main.loop.iter.check1249 ]
  %n.vec1274 = and i64 %405, 8589934588
  %420 = getelementptr i8, ptr %101, i64 %n.vec1274
  %.cast1275 = trunc i64 %n.vec1274 to i32
  %421 = sub i32 %398, %.cast1275
  %422 = getelementptr i8, ptr %397, i64 %n.vec1274
  br label %vec.epilog.vector.body1276

vec.epilog.vector.body1276:                       ; preds = %vec.epilog.vector.body1276, %vec.epilog.ph1272
  %index1277 = phi i64 [ %vec.epilog.resume.val1265, %vec.epilog.ph1272 ], [ %index.next1281, %vec.epilog.vector.body1276 ]
  %next.gep1278 = getelementptr i8, ptr %101, i64 %index1277
  %next.gep1279 = getelementptr i8, ptr %397, i64 %index1277
  %wide.load1280 = load <4 x i8>, ptr %next.gep1279, align 1, !tbaa !33
  store <4 x i8> %wide.load1280, ptr %next.gep1278, align 1, !tbaa !33
  %index.next1281 = add nuw i64 %index1277, 4
  %423 = icmp eq i64 %index.next1281, %n.vec1274
  br i1 %423, label %vec.epilog.middle.block1282, label %vec.epilog.vector.body1276, !llvm.loop !52

vec.epilog.middle.block1282:                      ; preds = %vec.epilog.vector.body1276
  %cmp.n1283 = icmp eq i64 %405, %n.vec1274
  %ind.escape1284 = add nsw i64 %n.vec1274, -1
  br i1 %cmp.n1283, label %.loopexit1330, label %vec.epilog.scalar.ph1269.preheader

vec.epilog.scalar.ph1269.preheader:               ; preds = %vector.memcheck1246, %iter.check1268, %vec.epilog.iter.check1270, %vec.epilog.middle.block1282
  %.ph1337 = phi i64 [ 0, %iter.check1268 ], [ 0, %vector.memcheck1246 ], [ %n.vec1253, %vec.epilog.iter.check1270 ], [ %n.vec1274, %vec.epilog.middle.block1282 ]
  %.ph1338 = phi ptr [ %101, %iter.check1268 ], [ %101, %vector.memcheck1246 ], [ %414, %vec.epilog.iter.check1270 ], [ %420, %vec.epilog.middle.block1282 ]
  %.ph1339 = phi i32 [ %398, %iter.check1268 ], [ %398, %vector.memcheck1246 ], [ %415, %vec.epilog.iter.check1270 ], [ %421, %vec.epilog.middle.block1282 ]
  %.ph1340 = phi ptr [ %397, %iter.check1268 ], [ %397, %vector.memcheck1246 ], [ %416, %vec.epilog.iter.check1270 ], [ %422, %vec.epilog.middle.block1282 ]
  %424 = add i32 %.ph1339, -1
  %xtraiter1606 = and i32 %.ph1339, 3
  %lcmp.mod1607.not = icmp eq i32 %xtraiter1606, 0
  br i1 %lcmp.mod1607.not, label %vec.epilog.scalar.ph1269.prol.loopexit, label %vec.epilog.scalar.ph1269.prol

vec.epilog.scalar.ph1269.prol:                    ; preds = %vec.epilog.scalar.ph1269.preheader, %vec.epilog.scalar.ph1269.prol
  %425 = phi i64 [ %433, %vec.epilog.scalar.ph1269.prol ], [ %.ph1337, %vec.epilog.scalar.ph1269.preheader ]
  %426 = phi ptr [ %430, %vec.epilog.scalar.ph1269.prol ], [ %.ph1338, %vec.epilog.scalar.ph1269.preheader ]
  %427 = phi i32 [ %431, %vec.epilog.scalar.ph1269.prol ], [ %.ph1339, %vec.epilog.scalar.ph1269.preheader ]
  %428 = phi ptr [ %432, %vec.epilog.scalar.ph1269.prol ], [ %.ph1340, %vec.epilog.scalar.ph1269.preheader ]
  %prol.iter1608 = phi i32 [ %prol.iter1608.next, %vec.epilog.scalar.ph1269.prol ], [ 0, %vec.epilog.scalar.ph1269.preheader ]
  %429 = load i8, ptr %428, align 1, !tbaa !33
  store i8 %429, ptr %426, align 1, !tbaa !33
  %430 = getelementptr inbounds nuw i8, ptr %426, i64 1
  %431 = add i32 %427, -1
  %432 = getelementptr inbounds nuw i8, ptr %428, i64 1
  %433 = add nuw nsw i64 %425, 1
  %prol.iter1608.next = add i32 %prol.iter1608, 1
  %prol.iter1608.cmp.not = icmp eq i32 %prol.iter1608.next, %xtraiter1606
  br i1 %prol.iter1608.cmp.not, label %vec.epilog.scalar.ph1269.prol.loopexit, label %vec.epilog.scalar.ph1269.prol, !llvm.loop !53

vec.epilog.scalar.ph1269.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1269.prol, %vec.epilog.scalar.ph1269.preheader
  %.lcssa1382.unr = phi i64 [ poison, %vec.epilog.scalar.ph1269.preheader ], [ %425, %vec.epilog.scalar.ph1269.prol ]
  %.lcssa1381.unr = phi ptr [ poison, %vec.epilog.scalar.ph1269.preheader ], [ %430, %vec.epilog.scalar.ph1269.prol ]
  %.unr1609 = phi i64 [ %.ph1337, %vec.epilog.scalar.ph1269.preheader ], [ %433, %vec.epilog.scalar.ph1269.prol ]
  %.unr1610 = phi ptr [ %.ph1338, %vec.epilog.scalar.ph1269.preheader ], [ %430, %vec.epilog.scalar.ph1269.prol ]
  %.unr1611 = phi i32 [ %.ph1339, %vec.epilog.scalar.ph1269.preheader ], [ %431, %vec.epilog.scalar.ph1269.prol ]
  %.unr1612 = phi ptr [ %.ph1340, %vec.epilog.scalar.ph1269.preheader ], [ %432, %vec.epilog.scalar.ph1269.prol ]
  %434 = icmp ult i32 %424, 3
  br i1 %434, label %.loopexit1330, label %vec.epilog.scalar.ph1269

vec.epilog.scalar.ph1269:                         ; preds = %vec.epilog.scalar.ph1269.prol.loopexit, %vec.epilog.scalar.ph1269
  %435 = phi i64 [ %453, %vec.epilog.scalar.ph1269 ], [ %.unr1609, %vec.epilog.scalar.ph1269.prol.loopexit ]
  %436 = phi ptr [ %449, %vec.epilog.scalar.ph1269 ], [ %.unr1610, %vec.epilog.scalar.ph1269.prol.loopexit ]
  %437 = phi i32 [ %450, %vec.epilog.scalar.ph1269 ], [ %.unr1611, %vec.epilog.scalar.ph1269.prol.loopexit ]
  %438 = phi ptr [ %451, %vec.epilog.scalar.ph1269 ], [ %.unr1612, %vec.epilog.scalar.ph1269.prol.loopexit ]
  %439 = load i8, ptr %438, align 1, !tbaa !33
  store i8 %439, ptr %436, align 1, !tbaa !33
  %440 = getelementptr inbounds nuw i8, ptr %436, i64 1
  %441 = getelementptr inbounds nuw i8, ptr %438, i64 1
  %442 = load i8, ptr %441, align 1, !tbaa !33
  store i8 %442, ptr %440, align 1, !tbaa !33
  %443 = getelementptr inbounds nuw i8, ptr %436, i64 2
  %444 = getelementptr inbounds nuw i8, ptr %438, i64 2
  %445 = load i8, ptr %444, align 1, !tbaa !33
  store i8 %445, ptr %443, align 1, !tbaa !33
  %446 = getelementptr inbounds nuw i8, ptr %436, i64 3
  %447 = getelementptr inbounds nuw i8, ptr %438, i64 3
  %448 = load i8, ptr %447, align 1, !tbaa !33
  store i8 %448, ptr %446, align 1, !tbaa !33
  %449 = getelementptr inbounds nuw i8, ptr %436, i64 4
  %450 = add i32 %437, -4
  %451 = getelementptr inbounds nuw i8, ptr %438, i64 4
  %452 = icmp eq i32 %450, 0
  %453 = add nuw nsw i64 %435, 4
  br i1 %452, label %.loopexit1330.loopexit.unr-lcssa, label %vec.epilog.scalar.ph1269, !llvm.loop !54

.loopexit1330.loopexit.unr-lcssa:                 ; preds = %vec.epilog.scalar.ph1269
  %454 = add nuw nsw i64 %435, 3
  br label %.loopexit1330

.loopexit1330:                                    ; preds = %.loopexit1330.loopexit.unr-lcssa, %vec.epilog.scalar.ph1269.prol.loopexit, %vec.epilog.middle.block1282, %middle.block1262
  %.lcssa932 = phi i64 [ %ind.escape1284, %vec.epilog.middle.block1282 ], [ %ind.escape1264, %middle.block1262 ], [ %.lcssa1382.unr, %vec.epilog.scalar.ph1269.prol.loopexit ], [ %454, %.loopexit1330.loopexit.unr-lcssa ]
  %.lcssa931 = phi ptr [ %420, %vec.epilog.middle.block1282 ], [ %414, %middle.block1262 ], [ %.lcssa1381.unr, %vec.epilog.scalar.ph1269.prol.loopexit ], [ %449, %.loopexit1330.loopexit.unr-lcssa ]
  %455 = sub nuw nsw i32 %188, %398
  %456 = icmp ult i32 %41, %455
  br i1 %456, label %457, label %601

457:                                              ; preds = %.loopexit1330
  br i1 %70, label %472, label %458

458:                                              ; preds = %457
  %.reass867 = add i64 %invariant.op866, %275
  %459 = add i64 %.reass867, %.lcssa932
  %460 = icmp ult i64 %459, 32
  br i1 %460, label %472, label %.preheader869

.preheader869:                                    ; preds = %458, %.preheader869
  %461 = phi i64 [ %468, %.preheader869 ], [ 0, %458 ]
  %462 = getelementptr i8, ptr %.lcssa931, i64 %461
  %463 = getelementptr i8, ptr %43, i64 %461
  %464 = getelementptr i8, ptr %463, i64 16
  %465 = load <16 x i8>, ptr %463, align 1, !tbaa !33
  %466 = load <16 x i8>, ptr %464, align 1, !tbaa !33
  %467 = getelementptr i8, ptr %462, i64 16
  store <16 x i8> %465, ptr %462, align 1, !tbaa !33
  store <16 x i8> %466, ptr %467, align 1, !tbaa !33
  %468 = add nuw nsw i64 %461, 32
  %469 = icmp eq i64 %468, %71
  br i1 %469, label %470, label %.preheader869, !llvm.loop !55

470:                                              ; preds = %.preheader869
  %471 = getelementptr i8, ptr %.lcssa931, i64 %71
  br i1 %75, label %.loopexit2.mv.fast, label %472

472:                                              ; preds = %470, %458, %457
  %473 = phi ptr [ %.lcssa931, %458 ], [ %.lcssa931, %457 ], [ %471, %470 ]
  %474 = phi i32 [ %41, %458 ], [ %41, %457 ], [ %73, %470 ]
  %475 = phi ptr [ %43, %458 ], [ %43, %457 ], [ %74, %470 ]
  %476 = add i32 %474, -1
  %477 = and i32 %474, 7
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %.loopexit4.mv.fast, label %.preheader3.mv.fast

.preheader3.mv.fast:                              ; preds = %472, %.preheader3.mv.fast
  %479 = phi ptr [ %483, %.preheader3.mv.fast ], [ %473, %472 ]
  %480 = phi ptr [ %484, %.preheader3.mv.fast ], [ %475, %472 ]
  %481 = phi i32 [ %485, %.preheader3.mv.fast ], [ 0, %472 ]
  %482 = load i8, ptr %480, align 1, !tbaa !33
  %483 = getelementptr inbounds nuw i8, ptr %479, i64 1
  store i8 %482, ptr %479, align 1, !tbaa !33
  %484 = getelementptr inbounds nuw i8, ptr %480, i64 1
  %485 = add nuw nsw i32 %481, 1
  %486 = icmp eq i32 %485, %477
  br i1 %486, label %.loopexit4.mv.fast.loopexit, label %.preheader3.mv.fast, !llvm.loop !56

.loopexit4.mv.fast.loopexit:                      ; preds = %.preheader3.mv.fast
  %487 = and i32 %474, -8
  br label %.loopexit4.mv.fast

.loopexit4.mv.fast:                               ; preds = %.loopexit4.mv.fast.loopexit, %472
  %488 = phi ptr [ poison, %472 ], [ %483, %.loopexit4.mv.fast.loopexit ]
  %489 = phi ptr [ %473, %472 ], [ %483, %.loopexit4.mv.fast.loopexit ]
  %490 = phi i32 [ %474, %472 ], [ %487, %.loopexit4.mv.fast.loopexit ]
  %491 = phi ptr [ %475, %472 ], [ %484, %.loopexit4.mv.fast.loopexit ]
  %492 = icmp ult i32 %476, 7
  br i1 %492, label %.loopexit2.mv.fast, label %.preheader1.mv.fast

.preheader1.mv.fast:                              ; preds = %.loopexit4.mv.fast, %.preheader1.mv.fast
  %493 = phi ptr [ %518, %.preheader1.mv.fast ], [ %489, %.loopexit4.mv.fast ]
  %494 = phi i32 [ %519, %.preheader1.mv.fast ], [ %490, %.loopexit4.mv.fast ]
  %495 = phi ptr [ %520, %.preheader1.mv.fast ], [ %491, %.loopexit4.mv.fast ]
  %496 = load i8, ptr %495, align 1, !tbaa !33
  %497 = getelementptr inbounds nuw i8, ptr %493, i64 1
  store i8 %496, ptr %493, align 1, !tbaa !33
  %498 = getelementptr inbounds nuw i8, ptr %495, i64 1
  %499 = load i8, ptr %498, align 1, !tbaa !33
  %500 = getelementptr inbounds nuw i8, ptr %493, i64 2
  store i8 %499, ptr %497, align 1, !tbaa !33
  %501 = getelementptr inbounds nuw i8, ptr %495, i64 2
  %502 = load i8, ptr %501, align 1, !tbaa !33
  %503 = getelementptr inbounds nuw i8, ptr %493, i64 3
  store i8 %502, ptr %500, align 1, !tbaa !33
  %504 = getelementptr inbounds nuw i8, ptr %495, i64 3
  %505 = load i8, ptr %504, align 1, !tbaa !33
  %506 = getelementptr inbounds nuw i8, ptr %493, i64 4
  store i8 %505, ptr %503, align 1, !tbaa !33
  %507 = getelementptr inbounds nuw i8, ptr %495, i64 4
  %508 = load i8, ptr %507, align 1, !tbaa !33
  %509 = getelementptr inbounds nuw i8, ptr %493, i64 5
  store i8 %508, ptr %506, align 1, !tbaa !33
  %510 = getelementptr inbounds nuw i8, ptr %495, i64 5
  %511 = load i8, ptr %510, align 1, !tbaa !33
  %512 = getelementptr inbounds nuw i8, ptr %493, i64 6
  store i8 %511, ptr %509, align 1, !tbaa !33
  %513 = getelementptr inbounds nuw i8, ptr %495, i64 6
  %514 = load i8, ptr %513, align 1, !tbaa !33
  %515 = getelementptr inbounds nuw i8, ptr %493, i64 7
  store i8 %514, ptr %512, align 1, !tbaa !33
  %516 = getelementptr inbounds nuw i8, ptr %495, i64 7
  %517 = load i8, ptr %516, align 1, !tbaa !33
  %518 = getelementptr inbounds nuw i8, ptr %493, i64 8
  store i8 %517, ptr %515, align 1, !tbaa !33
  %519 = add i32 %494, -8
  %520 = getelementptr inbounds nuw i8, ptr %495, i64 8
  %521 = icmp eq i32 %519, 0
  br i1 %521, label %.loopexit2.mv.fast, label %.preheader1.mv.fast, !llvm.loop !57

.loopexit2.mv.fast:                               ; preds = %.preheader1.mv.fast, %.loopexit4.mv.fast, %470
  %522 = phi ptr [ %471, %470 ], [ %488, %.loopexit4.mv.fast ], [ %518, %.preheader1.mv.fast ]
  %523 = sub nuw nsw i32 %455, %41
  %524 = zext nneg i32 %271 to i64
  %525 = sub nsw i64 0, %524
  %526 = getelementptr inbounds i8, ptr %522, i64 %525
  br label %601

527:                                              ; preds = %317
  %528 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr, i32 %312), !nosanitize !16
  %529 = extractvalue { i32, i1 } %528, 1, !nosanitize !16
  br i1 %529, label %908, label %530, !prof !17, !nosanitize !16

530:                                              ; preds = %527
  %531 = extractvalue { i32, i1 } %528, 0, !nosanitize !16
  %532 = zext i32 %531 to i64
  %533 = getelementptr inbounds nuw i8, ptr %43, i64 %532
  %534 = icmp ult i32 %312, %188
  br i1 %534, label %iter.check1227, label %601

iter.check1227:                                   ; preds = %530
  %535 = add i32 %80, %270
  %536 = add i32 %535, %237
  %537 = trunc i64 %275 to i32
  %538 = sub i32 %536, %537
  %539 = zext i32 %538 to i64
  %540 = add nuw nsw i64 %539, 1
  %min.iters.check1208 = icmp ult i32 %538, 3
  br i1 %min.iters.check1208, label %vec.epilog.scalar.ph1228.preheader, label %vector.memcheck1206

vector.memcheck1206:                              ; preds = %iter.check1227
  %541 = trunc i64 %275 to i32
  %542 = add i32 %76, %541
  %543 = add i32 %98, %270
  %544 = add i32 %543, %237
  %545 = sub i32 %542, %544
  %546 = zext i32 %545 to i64
  %547 = add i64 %44, %546
  %548 = sub i64 %275, %547
  %diff.check1207 = icmp ult i64 %548, 32
  br i1 %diff.check1207, label %vec.epilog.scalar.ph1228.preheader, label %vector.main.loop.iter.check1209

vector.main.loop.iter.check1209:                  ; preds = %vector.memcheck1206
  %min.iters.check1210 = icmp ult i32 %538, 31
  br i1 %min.iters.check1210, label %vec.epilog.ph1231, label %vector.ph1211

vector.ph1211:                                    ; preds = %vector.main.loop.iter.check1209
  %n.mod.vf1212 = and i64 %540, 28
  %n.vec1213 = and i64 %540, 8589934560
  %549 = getelementptr i8, ptr %101, i64 %n.vec1213
  %.cast1214 = trunc i64 %n.vec1213 to i32
  %550 = sub i32 %312, %.cast1214
  %551 = getelementptr i8, ptr %533, i64 %n.vec1213
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %vector.ph1211
  %index1216 = phi i64 [ 0, %vector.ph1211 ], [ %index.next1221, %vector.body1215 ]
  %next.gep1217 = getelementptr i8, ptr %101, i64 %index1216
  %next.gep1218 = getelementptr i8, ptr %533, i64 %index1216
  %552 = getelementptr i8, ptr %next.gep1218, i64 16
  %wide.load1219 = load <16 x i8>, ptr %next.gep1218, align 1, !tbaa !33
  %wide.load1220 = load <16 x i8>, ptr %552, align 1, !tbaa !33
  %553 = getelementptr i8, ptr %next.gep1217, i64 16
  store <16 x i8> %wide.load1219, ptr %next.gep1217, align 1, !tbaa !33
  store <16 x i8> %wide.load1220, ptr %553, align 1, !tbaa !33
  %index.next1221 = add nuw i64 %index1216, 32
  %554 = icmp eq i64 %index.next1221, %n.vec1213
  br i1 %554, label %middle.block1222, label %vector.body1215, !llvm.loop !58

middle.block1222:                                 ; preds = %vector.body1215
  %cmp.n1223 = icmp eq i64 %540, %n.vec1213
  br i1 %cmp.n1223, label %.loopexit1329, label %vec.epilog.iter.check1229

vec.epilog.iter.check1229:                        ; preds = %middle.block1222
  %min.epilog.iters.check1230 = icmp eq i64 %n.mod.vf1212, 0
  br i1 %min.epilog.iters.check1230, label %vec.epilog.scalar.ph1228.preheader, label %vec.epilog.ph1231, !prof !46

vec.epilog.ph1231:                                ; preds = %vector.main.loop.iter.check1209, %vec.epilog.iter.check1229
  %vec.epilog.resume.val1224 = phi i64 [ %n.vec1213, %vec.epilog.iter.check1229 ], [ 0, %vector.main.loop.iter.check1209 ]
  %n.vec1233 = and i64 %540, 8589934588
  %555 = getelementptr i8, ptr %101, i64 %n.vec1233
  %.cast1234 = trunc i64 %n.vec1233 to i32
  %556 = sub i32 %312, %.cast1234
  %557 = getelementptr i8, ptr %533, i64 %n.vec1233
  br label %vec.epilog.vector.body1235

vec.epilog.vector.body1235:                       ; preds = %vec.epilog.vector.body1235, %vec.epilog.ph1231
  %index1236 = phi i64 [ %vec.epilog.resume.val1224, %vec.epilog.ph1231 ], [ %index.next1240, %vec.epilog.vector.body1235 ]
  %next.gep1237 = getelementptr i8, ptr %101, i64 %index1236
  %next.gep1238 = getelementptr i8, ptr %533, i64 %index1236
  %wide.load1239 = load <4 x i8>, ptr %next.gep1238, align 1, !tbaa !33
  store <4 x i8> %wide.load1239, ptr %next.gep1237, align 1, !tbaa !33
  %index.next1240 = add nuw i64 %index1236, 4
  %558 = icmp eq i64 %index.next1240, %n.vec1233
  br i1 %558, label %vec.epilog.middle.block1241, label %vec.epilog.vector.body1235, !llvm.loop !59

vec.epilog.middle.block1241:                      ; preds = %vec.epilog.vector.body1235
  %cmp.n1242 = icmp eq i64 %540, %n.vec1233
  br i1 %cmp.n1242, label %.loopexit1329, label %vec.epilog.scalar.ph1228.preheader

vec.epilog.scalar.ph1228.preheader:               ; preds = %vector.memcheck1206, %iter.check1227, %vec.epilog.iter.check1229, %vec.epilog.middle.block1241
  %.ph = phi ptr [ %101, %iter.check1227 ], [ %101, %vector.memcheck1206 ], [ %549, %vec.epilog.iter.check1229 ], [ %555, %vec.epilog.middle.block1241 ]
  %.ph1335 = phi i32 [ %312, %iter.check1227 ], [ %312, %vector.memcheck1206 ], [ %550, %vec.epilog.iter.check1229 ], [ %556, %vec.epilog.middle.block1241 ]
  %.ph1336 = phi ptr [ %533, %iter.check1227 ], [ %533, %vector.memcheck1206 ], [ %551, %vec.epilog.iter.check1229 ], [ %557, %vec.epilog.middle.block1241 ]
  %559 = add i32 %.ph1335, -1
  %xtraiter1613 = and i32 %.ph1335, 7
  %lcmp.mod1614.not = icmp eq i32 %xtraiter1613, 0
  br i1 %lcmp.mod1614.not, label %vec.epilog.scalar.ph1228.prol.loopexit, label %vec.epilog.scalar.ph1228.prol

vec.epilog.scalar.ph1228.prol:                    ; preds = %vec.epilog.scalar.ph1228.preheader, %vec.epilog.scalar.ph1228.prol
  %560 = phi ptr [ %564, %vec.epilog.scalar.ph1228.prol ], [ %.ph, %vec.epilog.scalar.ph1228.preheader ]
  %561 = phi i32 [ %565, %vec.epilog.scalar.ph1228.prol ], [ %.ph1335, %vec.epilog.scalar.ph1228.preheader ]
  %562 = phi ptr [ %566, %vec.epilog.scalar.ph1228.prol ], [ %.ph1336, %vec.epilog.scalar.ph1228.preheader ]
  %prol.iter1615 = phi i32 [ %prol.iter1615.next, %vec.epilog.scalar.ph1228.prol ], [ 0, %vec.epilog.scalar.ph1228.preheader ]
  %563 = load i8, ptr %562, align 1, !tbaa !33
  store i8 %563, ptr %560, align 1, !tbaa !33
  %564 = getelementptr inbounds nuw i8, ptr %560, i64 1
  %565 = add i32 %561, -1
  %566 = getelementptr inbounds nuw i8, ptr %562, i64 1
  %prol.iter1615.next = add i32 %prol.iter1615, 1
  %prol.iter1615.cmp.not = icmp eq i32 %prol.iter1615.next, %xtraiter1613
  br i1 %prol.iter1615.cmp.not, label %vec.epilog.scalar.ph1228.prol.loopexit, label %vec.epilog.scalar.ph1228.prol, !llvm.loop !60

vec.epilog.scalar.ph1228.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1228.prol, %vec.epilog.scalar.ph1228.preheader
  %.lcssa1386.unr = phi ptr [ poison, %vec.epilog.scalar.ph1228.preheader ], [ %564, %vec.epilog.scalar.ph1228.prol ]
  %.unr1616 = phi ptr [ %.ph, %vec.epilog.scalar.ph1228.preheader ], [ %564, %vec.epilog.scalar.ph1228.prol ]
  %.unr1617 = phi i32 [ %.ph1335, %vec.epilog.scalar.ph1228.preheader ], [ %565, %vec.epilog.scalar.ph1228.prol ]
  %.unr1618 = phi ptr [ %.ph1336, %vec.epilog.scalar.ph1228.preheader ], [ %566, %vec.epilog.scalar.ph1228.prol ]
  %567 = icmp ult i32 %559, 7
  br i1 %567, label %.loopexit1329, label %vec.epilog.scalar.ph1228

vec.epilog.scalar.ph1228:                         ; preds = %vec.epilog.scalar.ph1228.prol.loopexit, %vec.epilog.scalar.ph1228
  %568 = phi ptr [ %593, %vec.epilog.scalar.ph1228 ], [ %.unr1616, %vec.epilog.scalar.ph1228.prol.loopexit ]
  %569 = phi i32 [ %594, %vec.epilog.scalar.ph1228 ], [ %.unr1617, %vec.epilog.scalar.ph1228.prol.loopexit ]
  %570 = phi ptr [ %595, %vec.epilog.scalar.ph1228 ], [ %.unr1618, %vec.epilog.scalar.ph1228.prol.loopexit ]
  %571 = load i8, ptr %570, align 1, !tbaa !33
  store i8 %571, ptr %568, align 1, !tbaa !33
  %572 = getelementptr inbounds nuw i8, ptr %568, i64 1
  %573 = getelementptr inbounds nuw i8, ptr %570, i64 1
  %574 = load i8, ptr %573, align 1, !tbaa !33
  store i8 %574, ptr %572, align 1, !tbaa !33
  %575 = getelementptr inbounds nuw i8, ptr %568, i64 2
  %576 = getelementptr inbounds nuw i8, ptr %570, i64 2
  %577 = load i8, ptr %576, align 1, !tbaa !33
  store i8 %577, ptr %575, align 1, !tbaa !33
  %578 = getelementptr inbounds nuw i8, ptr %568, i64 3
  %579 = getelementptr inbounds nuw i8, ptr %570, i64 3
  %580 = load i8, ptr %579, align 1, !tbaa !33
  store i8 %580, ptr %578, align 1, !tbaa !33
  %581 = getelementptr inbounds nuw i8, ptr %568, i64 4
  %582 = getelementptr inbounds nuw i8, ptr %570, i64 4
  %583 = load i8, ptr %582, align 1, !tbaa !33
  store i8 %583, ptr %581, align 1, !tbaa !33
  %584 = getelementptr inbounds nuw i8, ptr %568, i64 5
  %585 = getelementptr inbounds nuw i8, ptr %570, i64 5
  %586 = load i8, ptr %585, align 1, !tbaa !33
  store i8 %586, ptr %584, align 1, !tbaa !33
  %587 = getelementptr inbounds nuw i8, ptr %568, i64 6
  %588 = getelementptr inbounds nuw i8, ptr %570, i64 6
  %589 = load i8, ptr %588, align 1, !tbaa !33
  store i8 %589, ptr %587, align 1, !tbaa !33
  %590 = getelementptr inbounds nuw i8, ptr %568, i64 7
  %591 = getelementptr inbounds nuw i8, ptr %570, i64 7
  %592 = load i8, ptr %591, align 1, !tbaa !33
  store i8 %592, ptr %590, align 1, !tbaa !33
  %593 = getelementptr inbounds nuw i8, ptr %568, i64 8
  %594 = add i32 %569, -8
  %595 = getelementptr inbounds nuw i8, ptr %570, i64 8
  %596 = icmp eq i32 %594, 0
  br i1 %596, label %.loopexit1329, label %vec.epilog.scalar.ph1228, !llvm.loop !61

.loopexit1329:                                    ; preds = %vec.epilog.scalar.ph1228.prol.loopexit, %vec.epilog.scalar.ph1228, %vec.epilog.middle.block1241, %middle.block1222
  %.lcssa936 = phi ptr [ %555, %vec.epilog.middle.block1241 ], [ %549, %middle.block1222 ], [ %.lcssa1386.unr, %vec.epilog.scalar.ph1228.prol.loopexit ], [ %593, %vec.epilog.scalar.ph1228 ]
  %597 = sub nuw nsw i32 %188, %312
  %598 = zext nneg i32 %271 to i64
  %599 = sub nsw i64 0, %598
  %600 = getelementptr inbounds i8, ptr %.lcssa936, i64 %599
  br label %601

601:                                              ; preds = %.loopexit1329, %530, %.loopexit2.mv.fast, %.loopexit1330, %394, %.loopexit1331, %320
  %602 = phi ptr [ %.lcssa936, %.loopexit1329 ], [ %101, %530 ], [ %522, %.loopexit2.mv.fast ], [ %.lcssa931, %.loopexit1330 ], [ %101, %394 ], [ %.lcssa930, %.loopexit1331 ], [ %101, %320 ]
  %603 = phi i32 [ %597, %.loopexit1329 ], [ %188, %530 ], [ %523, %.loopexit2.mv.fast ], [ %455, %.loopexit1330 ], [ %188, %394 ], [ %387, %.loopexit1331 ], [ %188, %320 ]
  %604 = phi ptr [ %600, %.loopexit1329 ], [ %533, %530 ], [ %526, %.loopexit2.mv.fast ], [ %43, %.loopexit1330 ], [ %397, %394 ], [ %390, %.loopexit1331 ], [ %323, %320 ]
  %605 = icmp ugt i32 %603, 2
  br i1 %605, label %606, label %.loopexit.mv.fast

606:                                              ; preds = %601
  %607 = add nsw i32 %603, -3
  %608 = udiv i32 %607, 3
  %609 = and i32 %608, 1
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %621

611:                                              ; preds = %606
  %612 = getelementptr inbounds nuw i8, ptr %604, i64 1
  %613 = load i8, ptr %604, align 1, !tbaa !33
  %614 = getelementptr inbounds nuw i8, ptr %602, i64 1
  store i8 %613, ptr %602, align 1, !tbaa !33
  %615 = getelementptr inbounds nuw i8, ptr %604, i64 2
  %616 = load i8, ptr %612, align 1, !tbaa !33
  %617 = getelementptr inbounds nuw i8, ptr %602, i64 2
  store i8 %616, ptr %614, align 1, !tbaa !33
  %618 = load i8, ptr %615, align 1, !tbaa !33
  store i8 %618, ptr %617, align 1, !tbaa !33
  %619 = getelementptr inbounds nuw i8, ptr %602, i64 3
  %620 = getelementptr inbounds nuw i8, ptr %604, i64 3
  br label %621

621:                                              ; preds = %611, %606
  %622 = phi ptr [ %604, %606 ], [ %620, %611 ]
  %623 = phi i32 [ %603, %606 ], [ %607, %611 ]
  %624 = phi ptr [ %602, %606 ], [ %619, %611 ]
  %625 = phi ptr [ poison, %606 ], [ %619, %611 ]
  %626 = phi ptr [ poison, %606 ], [ %620, %611 ]
  %627 = icmp ult i32 %607, 3
  br i1 %627, label %.loopexit.mv.fast, label %.preheader.mv.fast

.preheader.mv.fast:                               ; preds = %621, %.preheader.mv.fast
  %628 = phi ptr [ %649, %.preheader.mv.fast ], [ %622, %621 ]
  %629 = phi i32 [ %647, %.preheader.mv.fast ], [ %623, %621 ]
  %630 = phi ptr [ %648, %.preheader.mv.fast ], [ %624, %621 ]
  %631 = getelementptr inbounds nuw i8, ptr %628, i64 1
  %632 = load i8, ptr %628, align 1, !tbaa !33
  %633 = getelementptr inbounds nuw i8, ptr %630, i64 1
  store i8 %632, ptr %630, align 1, !tbaa !33
  %634 = getelementptr inbounds nuw i8, ptr %628, i64 2
  %635 = load i8, ptr %631, align 1, !tbaa !33
  %636 = getelementptr inbounds nuw i8, ptr %630, i64 2
  store i8 %635, ptr %633, align 1, !tbaa !33
  %637 = load i8, ptr %634, align 1, !tbaa !33
  store i8 %637, ptr %636, align 1, !tbaa !33
  %638 = getelementptr inbounds nuw i8, ptr %630, i64 3
  %639 = getelementptr inbounds nuw i8, ptr %628, i64 3
  %640 = getelementptr inbounds nuw i8, ptr %628, i64 4
  %641 = load i8, ptr %639, align 1, !tbaa !33
  %642 = getelementptr inbounds nuw i8, ptr %630, i64 4
  store i8 %641, ptr %638, align 1, !tbaa !33
  %643 = getelementptr inbounds nuw i8, ptr %628, i64 5
  %644 = load i8, ptr %640, align 1, !tbaa !33
  %645 = getelementptr inbounds nuw i8, ptr %630, i64 5
  store i8 %644, ptr %642, align 1, !tbaa !33
  %646 = load i8, ptr %643, align 1, !tbaa !33
  store i8 %646, ptr %645, align 1, !tbaa !33
  %647 = add i32 %629, -6
  %648 = getelementptr inbounds nuw i8, ptr %630, i64 6
  %649 = getelementptr inbounds nuw i8, ptr %628, i64 6
  %650 = icmp ugt i32 %647, 2
  br i1 %650, label %.preheader.mv.fast, label %.loopexit.mv.fast, !llvm.loop !62

.loopexit.mv.fast:                                ; preds = %.preheader.mv.fast, %621, %601
  %651 = phi ptr [ %602, %601 ], [ %625, %621 ], [ %648, %.preheader.mv.fast ]
  %652 = phi i32 [ %603, %601 ], [ %607, %621 ], [ %647, %.preheader.mv.fast ]
  %653 = phi ptr [ %604, %601 ], [ %626, %621 ], [ %649, %.preheader.mv.fast ]
  %654 = icmp eq i32 %652, 0
  br i1 %654, label %708, label %655

655:                                              ; preds = %.loopexit.mv.fast
  %656 = load i8, ptr %653, align 1, !tbaa !33
  %657 = getelementptr inbounds nuw i8, ptr %651, i64 1
  store i8 %656, ptr %651, align 1, !tbaa !33
  %658 = icmp eq i32 %652, 2
  br i1 %658, label %659, label %708

659:                                              ; preds = %655
  %660 = getelementptr inbounds nuw i8, ptr %653, i64 1
  %661 = load i8, ptr %660, align 1, !tbaa !33
  %662 = getelementptr inbounds nuw i8, ptr %651, i64 2
  store i8 %661, ptr %657, align 1, !tbaa !33
  br label %708

663:                                              ; preds = %225
  %664 = and i32 %231, 64
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %666, label %.loopexit5

666:                                              ; preds = %663
  %667 = shl nsw i32 -1, %231
  %668 = xor i32 %667, -1
  %669 = getelementptr inbounds nuw i8, ptr %228, i64 2
  %670 = load i16, ptr %669, align 2, !tbaa !39
  %671 = zext i16 %670 to i64
  %672 = getelementptr inbounds nuw [4 x i8], ptr %52, i64 %671
  %673 = zext nneg i32 %668 to i64
  %674 = and i64 %227, %673
  %675 = getelementptr inbounds nuw [4 x i8], ptr %672, i64 %674
  %676 = getelementptr inbounds nuw i8, ptr %675, i64 1
  %677 = load i8, ptr %676, align 1, !tbaa !34
  %678 = zext i8 %677 to i32
  %679 = zext nneg i8 %677 to i64
  %680 = lshr i64 %227, %679
  %681 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %229, i32 %678), !nosanitize !16
  %682 = extractvalue { i32, i1 } %681, 1, !nosanitize !16
  br i1 %682, label %.loopexit6, label %225, !prof !63, !nosanitize !16

683:                                              ; preds = %147
  %684 = and i32 %145, 64
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %686, label %.loopexit77

686:                                              ; preds = %683
  %687 = shl nsw i32 -1, %145
  %688 = xor i32 %687, -1
  %689 = getelementptr inbounds nuw i8, ptr %142, i64 2
  %690 = load i16, ptr %689, align 2, !tbaa !39
  %691 = zext i16 %690 to i64
  %692 = getelementptr inbounds nuw [4 x i8], ptr %50, i64 %691
  %693 = zext nneg i32 %688 to i64
  %694 = and i64 %141, %693
  %695 = getelementptr inbounds nuw [4 x i8], ptr %692, i64 %694
  %696 = getelementptr inbounds nuw i8, ptr %695, i64 1
  %697 = load i8, ptr %696, align 1, !tbaa !34
  %698 = zext i8 %697 to i32
  %699 = zext nneg i8 %697 to i64
  %700 = lshr i64 %141, %699
  %701 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %143, i32 %698), !nosanitize !16
  %702 = extractvalue { i32, i1 } %701, 1, !nosanitize !16
  br i1 %702, label %.loopexit7, label %139, !prof !63, !nosanitize !16

703:                                              ; preds = %139
  %704 = getelementptr inbounds nuw i8, ptr %142, i64 2
  %705 = load i16, ptr %704, align 2, !tbaa !39
  %706 = trunc i16 %705 to i8
  %707 = getelementptr inbounds nuw i8, ptr %101, i64 1
  store i8 %706, ptr %101, align 1, !tbaa !33
  br label %708

708:                                              ; preds = %703, %659, %655, %.loopexit.mv.fast, %307, %303, %301
  %709 = phi i32 [ %143, %703 ], [ %274, %659 ], [ %274, %655 ], [ %274, %.loopexit.mv.fast ], [ %274, %307 ], [ %274, %303 ], [ %274, %301 ]
  %710 = phi i64 [ %141, %703 ], [ %273, %659 ], [ %273, %655 ], [ %273, %.loopexit.mv.fast ], [ %273, %307 ], [ %273, %303 ], [ %273, %301 ]
  %711 = phi ptr [ %707, %703 ], [ %662, %659 ], [ %657, %655 ], [ %651, %.loopexit.mv.fast ], [ %310, %307 ], [ %305, %303 ], [ %298, %301 ]
  %712 = phi ptr [ %128, %703 ], [ %266, %659 ], [ %266, %655 ], [ %266, %.loopexit.mv.fast ], [ %266, %307 ], [ %266, %303 ], [ %266, %301 ]
  %713 = icmp ult ptr %712, %14
  %714 = icmp ult ptr %711, %35
  %715 = select i1 %713, i1 %714, i1 false
  br i1 %715, label %.mv.ph.mv.fast, label %.loopexit12, !llvm.loop !64

.mv.ph:                                           ; preds = %.mv.ph.preheader, %1326
  %716 = phi i32 [ %1327, %1326 ], [ %48, %.mv.ph.preheader ]
  %717 = phi i64 [ %1328, %1326 ], [ %46, %.mv.ph.preheader ]
  %718 = phi ptr [ %1329, %1326 ], [ %16, %.mv.ph.preheader ]
  %719 = phi ptr [ %1330, %1326 ], [ %5, %.mv.ph.preheader ]
  %720 = icmp ult i32 %716, 15
  br i1 %720, label %721, label %742

721:                                              ; preds = %.mv.ph
  %722 = load i8, ptr %719, align 1, !tbaa !33
  %723 = zext i8 %722 to i64
  %724 = zext nneg i32 %716 to i64
  %725 = shl nuw nsw i64 %723, %724
  %726 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %717, i64 %725), !nosanitize !16
  %727 = extractvalue { i64, i1 } %726, 1, !nosanitize !16
  br i1 %727, label %.loopexit78, label %728, !prof !17, !nosanitize !16

.loopexit78:                                      ; preds = %721, %104
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

728:                                              ; preds = %721
  %729 = extractvalue { i64, i1 } %726, 0, !nosanitize !16
  %730 = getelementptr inbounds nuw i8, ptr %719, i64 1
  %731 = add nuw nsw i32 %716, 8
  %732 = load i8, ptr %730, align 1, !tbaa !33
  %733 = zext i8 %732 to i64
  %734 = zext nneg i32 %731 to i64
  %735 = shl nuw nsw i64 %733, %734
  %736 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %729, i64 %735), !nosanitize !16
  %737 = extractvalue { i64, i1 } %736, 1, !nosanitize !16
  br i1 %737, label %.loopexit79, label %738, !prof !17, !nosanitize !16

.loopexit79:                                      ; preds = %728, %111
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

738:                                              ; preds = %728
  %739 = extractvalue { i64, i1 } %736, 0, !nosanitize !16
  %740 = getelementptr inbounds nuw i8, ptr %719, i64 2
  %741 = or disjoint i32 %716, 16
  br label %742

742:                                              ; preds = %738, %.mv.ph
  %743 = phi i32 [ %741, %738 ], [ %716, %.mv.ph ]
  %744 = phi i64 [ %739, %738 ], [ %717, %.mv.ph ]
  %745 = phi ptr [ %740, %738 ], [ %719, %.mv.ph ]
  %746 = and i64 %744, %61
  %747 = getelementptr inbounds nuw [4 x i8], ptr %50, i64 %746
  %748 = getelementptr inbounds nuw i8, ptr %747, i64 1
  %749 = load i8, ptr %748, align 1, !tbaa !34
  %750 = zext i8 %749 to i32
  %751 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %743, i32 %750), !nosanitize !16
  %752 = extractvalue { i32, i1 } %751, 1, !nosanitize !16
  br i1 %752, label %.loopexit7, label %753, !prof !37, !nosanitize !16

753:                                              ; preds = %742
  %754 = zext nneg i8 %749 to i64
  %755 = lshr i64 %744, %754
  br label %756

.loopexit7:                                       ; preds = %742, %1307, %125, %686
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

756:                                              ; preds = %1307, %753
  %757 = phi { i32, i1 } [ %1322, %1307 ], [ %751, %753 ]
  %758 = phi i64 [ %1321, %1307 ], [ %755, %753 ]
  %759 = phi ptr [ %1316, %1307 ], [ %747, %753 ]
  %760 = extractvalue { i32, i1 } %757, 0
  %761 = load i8, ptr %759, align 2, !tbaa !38
  %762 = zext i8 %761 to i32
  %763 = icmp eq i8 %761, 0
  br i1 %763, label %764, label %769

764:                                              ; preds = %756
  %765 = getelementptr inbounds nuw i8, ptr %759, i64 2
  %766 = load i16, ptr %765, align 2, !tbaa !39
  %767 = trunc i16 %766 to i8
  %768 = getelementptr inbounds nuw i8, ptr %718, i64 1
  store i8 %767, ptr %718, align 1, !tbaa !33
  br label %1326

769:                                              ; preds = %756
  %770 = and i32 %762, 16
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %1304, label %772

772:                                              ; preds = %769
  %773 = getelementptr inbounds nuw i8, ptr %759, i64 2
  %774 = load i16, ptr %773, align 2, !tbaa !39
  %775 = zext i16 %774 to i32
  %776 = and i32 %762, 15
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %806, label %778

778:                                              ; preds = %772
  %779 = icmp ult i32 %760, %776
  br i1 %779, label %780, label %791

780:                                              ; preds = %778
  %781 = load i8, ptr %745, align 1, !tbaa !33
  %782 = zext i8 %781 to i64
  %783 = zext nneg i32 %760 to i64
  %784 = shl nuw nsw i64 %782, %783
  %785 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %758, i64 %784), !nosanitize !16
  %786 = extractvalue { i64, i1 } %785, 1, !nosanitize !16
  br i1 %786, label %.loopexit81, label %787, !prof !17, !nosanitize !16

.loopexit81:                                      ; preds = %780, %158
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

787:                                              ; preds = %780
  %788 = extractvalue { i64, i1 } %785, 0, !nosanitize !16
  %789 = getelementptr inbounds nuw i8, ptr %745, i64 1
  %790 = add nuw nsw i32 %760, 8
  br label %791

791:                                              ; preds = %787, %778
  %792 = phi i32 [ %790, %787 ], [ %760, %778 ]
  %793 = phi i64 [ %788, %787 ], [ %758, %778 ]
  %794 = phi ptr [ %789, %787 ], [ %745, %778 ]
  %795 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %792, i32 %776), !nosanitize !16
  %796 = extractvalue { i32, i1 } %795, 1, !nosanitize !16
  br i1 %796, label %.loopexit82, label %797, !prof !17, !nosanitize !16

.loopexit82:                                      ; preds = %791, %169
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

797:                                              ; preds = %791
  %798 = trunc i64 %793 to i32
  %799 = shl nsw i32 -1, %776
  %800 = xor i32 %799, -1
  %801 = and i32 %798, %800
  %802 = add nuw nsw i32 %801, %775
  %803 = extractvalue { i32, i1 } %795, 0, !nosanitize !16
  %804 = zext nneg i32 %776 to i64
  %805 = lshr i64 %793, %804
  br label %806

806:                                              ; preds = %797, %772
  %807 = phi i32 [ %803, %797 ], [ %760, %772 ]
  %808 = phi i64 [ %805, %797 ], [ %758, %772 ]
  %809 = phi ptr [ %794, %797 ], [ %745, %772 ]
  %810 = phi i32 [ %802, %797 ], [ %775, %772 ]
  %811 = icmp ult i32 %807, 15
  br i1 %811, label %812, label %833

812:                                              ; preds = %806
  %813 = load i8, ptr %809, align 1, !tbaa !33
  %814 = zext i8 %813 to i64
  %815 = zext nneg i32 %807 to i64
  %816 = shl nuw nsw i64 %814, %815
  %817 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %808, i64 %816), !nosanitize !16
  %818 = extractvalue { i64, i1 } %817, 1, !nosanitize !16
  br i1 %818, label %.loopexit83, label %819, !prof !17, !nosanitize !16

.loopexit83:                                      ; preds = %812, %190
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

819:                                              ; preds = %812
  %820 = extractvalue { i64, i1 } %817, 0, !nosanitize !16
  %821 = getelementptr inbounds nuw i8, ptr %809, i64 1
  %822 = add nuw nsw i32 %807, 8
  %823 = load i8, ptr %821, align 1, !tbaa !33
  %824 = zext i8 %823 to i64
  %825 = zext nneg i32 %822 to i64
  %826 = shl nuw nsw i64 %824, %825
  %827 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %820, i64 %826), !nosanitize !16
  %828 = extractvalue { i64, i1 } %827, 1, !nosanitize !16
  br i1 %828, label %.loopexit84, label %829, !prof !17, !nosanitize !16

.loopexit84:                                      ; preds = %819, %197
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

829:                                              ; preds = %819
  %830 = extractvalue { i64, i1 } %827, 0, !nosanitize !16
  %831 = getelementptr inbounds nuw i8, ptr %809, i64 2
  %832 = or disjoint i32 %807, 16
  br label %833

833:                                              ; preds = %829, %806
  %834 = phi i32 [ %832, %829 ], [ %807, %806 ]
  %835 = phi i64 [ %830, %829 ], [ %808, %806 ]
  %836 = phi ptr [ %831, %829 ], [ %809, %806 ]
  %837 = and i64 %835, %62
  %838 = getelementptr inbounds nuw [4 x i8], ptr %52, i64 %837
  %839 = getelementptr inbounds nuw i8, ptr %838, i64 1
  %840 = load i8, ptr %839, align 1, !tbaa !34
  %841 = zext i8 %840 to i32
  %842 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %834, i32 %841), !nosanitize !16
  %843 = extractvalue { i32, i1 } %842, 1, !nosanitize !16
  br i1 %843, label %.loopexit6, label %844, !prof !37, !nosanitize !16

844:                                              ; preds = %833
  %845 = zext nneg i8 %840 to i64
  %846 = lshr i64 %835, %845
  br label %847

.loopexit6:                                       ; preds = %833, %1287, %211, %666
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

847:                                              ; preds = %1287, %844
  %848 = phi { i32, i1 } [ %1302, %1287 ], [ %842, %844 ]
  %849 = phi i64 [ %1301, %1287 ], [ %846, %844 ]
  %850 = phi ptr [ %1296, %1287 ], [ %838, %844 ]
  %851 = extractvalue { i32, i1 } %848, 0
  %852 = load i8, ptr %850, align 2, !tbaa !38
  %853 = zext i8 %852 to i32
  %854 = and i32 %853, 16
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %1284, label %856

856:                                              ; preds = %847
  %857 = getelementptr inbounds nuw i8, ptr %850, i64 2
  %858 = load i16, ptr %857, align 2, !tbaa !39
  %859 = zext i16 %858 to i32
  %860 = and i32 %853, 15
  %861 = icmp ult i32 %851, %860
  br i1 %861, label %862, label %885

862:                                              ; preds = %856
  %863 = getelementptr inbounds nuw i8, ptr %836, i64 1
  %864 = load i8, ptr %836, align 1, !tbaa !33
  %865 = zext i8 %864 to i64
  %866 = zext nneg i32 %851 to i64
  %867 = shl nuw nsw i64 %865, %866
  %868 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %849, i64 %867), !nosanitize !16
  %869 = extractvalue { i64, i1 } %868, 0, !nosanitize !16
  %870 = extractvalue { i64, i1 } %868, 1, !nosanitize !16
  br i1 %870, label %.loopexit86, label %871, !prof !17, !nosanitize !16

.loopexit86:                                      ; preds = %862, %240
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

871:                                              ; preds = %862
  %872 = add nuw nsw i32 %851, 8
  %873 = icmp samesign ult i32 %872, %860
  br i1 %873, label %874, label %885

874:                                              ; preds = %871
  %875 = load i8, ptr %863, align 1, !tbaa !33
  %876 = zext i8 %875 to i64
  %877 = zext nneg i32 %872 to i64
  %878 = shl nuw nsw i64 %876, %877
  %879 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %869, i64 %878), !nosanitize !16
  %880 = extractvalue { i64, i1 } %879, 1, !nosanitize !16
  br i1 %880, label %.loopexit87, label %881, !prof !17, !nosanitize !16

.loopexit87:                                      ; preds = %874, %252
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

881:                                              ; preds = %874
  %882 = extractvalue { i64, i1 } %879, 0, !nosanitize !16
  %883 = getelementptr inbounds nuw i8, ptr %836, i64 2
  %884 = add nuw nsw i32 %851, 16
  br label %885

885:                                              ; preds = %881, %871, %856
  %886 = phi i32 [ %884, %881 ], [ %872, %871 ], [ %851, %856 ]
  %887 = phi i64 [ %882, %881 ], [ %869, %871 ], [ %849, %856 ]
  %888 = phi ptr [ %883, %881 ], [ %863, %871 ], [ %836, %856 ]
  %889 = shl nsw i32 -1, %860
  %890 = xor i32 %889, -1
  %891 = trunc i64 %887 to i32
  %892 = and i32 %891, %890
  %893 = add nuw nsw i32 %892, %859
  %894 = zext nneg i32 %860 to i64
  %895 = lshr i64 %887, %894
  %896 = sub i32 %886, %860
  %897 = ptrtoint ptr %718 to i64
  %898 = sub i64 %897, %63
  %899 = trunc i64 %898 to i32
  %900 = icmp ugt i32 %893, %899
  br i1 %900, label %901, label %1252

901:                                              ; preds = %885
  %902 = sub nuw nsw i32 %893, %899
  %903 = icmp ugt i32 %902, %39
  br i1 %903, label %904, label %907

904:                                              ; preds = %901
  %905 = load i32, ptr %64, align 8, !tbaa !42
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %907, label %.loopexit5

907:                                              ; preds = %904, %901
  br i1 %65, label %909, label %980

908:                                              ; preds = %527
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

909:                                              ; preds = %907
  %910 = sub nuw i32 %.fr, %902
  %911 = zext i32 %910 to i64
  %912 = getelementptr inbounds nuw i8, ptr %43, i64 %911
  %913 = icmp ult i32 %902, %810
  br i1 %913, label %iter.check, label %1190

iter.check:                                       ; preds = %909
  %914 = add i32 %80, %892
  %915 = add i32 %914, %859
  %916 = trunc i64 %897 to i32
  %917 = sub i32 %915, %916
  %918 = zext i32 %917 to i64
  %919 = add nuw nsw i64 %918, 1
  %min.iters.check = icmp ult i32 %917, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %920 = trunc i64 %897 to i32
  %921 = add i32 %76, %920
  %922 = add i32 %96, %892
  %923 = add i32 %922, %859
  %924 = sub i32 %921, %923
  %925 = zext i32 %924 to i64
  %926 = add i64 %44, %925
  %927 = sub i64 %897, %926
  %diff.check = icmp ult i64 %927, 32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1107 = icmp ult i32 %917, 31
  br i1 %min.iters.check1107, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %919, 28
  %n.vec = and i64 %919, 8589934560
  %928 = getelementptr i8, ptr %718, i64 %n.vec
  %.cast = trunc i64 %n.vec to i32
  %929 = sub i32 %902, %.cast
  %930 = getelementptr i8, ptr %912, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i8, ptr %718, i64 %index
  %next.gep1108 = getelementptr i8, ptr %912, i64 %index
  %931 = getelementptr i8, ptr %next.gep1108, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep1108, align 1, !tbaa !33
  %wide.load1109 = load <16 x i8>, ptr %931, align 1, !tbaa !33
  %932 = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !33
  store <16 x i8> %wide.load1109, ptr %932, align 1, !tbaa !33
  %index.next = add nuw i64 %index, 32
  %933 = icmp eq i64 %index.next, %n.vec
  br i1 %933, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %919, %n.vec
  br i1 %cmp.n, label %.loopexit1332, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1113 = and i64 %919, 8589934588
  %934 = getelementptr i8, ptr %718, i64 %n.vec1113
  %.cast1114 = trunc i64 %n.vec1113 to i32
  %935 = sub i32 %902, %.cast1114
  %936 = getelementptr i8, ptr %912, i64 %n.vec1113
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1115 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1119, %vec.epilog.vector.body ]
  %next.gep1116 = getelementptr i8, ptr %718, i64 %index1115
  %next.gep1117 = getelementptr i8, ptr %912, i64 %index1115
  %wide.load1118 = load <4 x i8>, ptr %next.gep1117, align 1, !tbaa !33
  store <4 x i8> %wide.load1118, ptr %next.gep1116, align 1, !tbaa !33
  %index.next1119 = add nuw i64 %index1115, 4
  %937 = icmp eq i64 %index.next1119, %n.vec1113
  br i1 %937, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1120 = icmp eq i64 %919, %n.vec1113
  br i1 %cmp.n1120, label %.loopexit1332, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph1451 = phi ptr [ %718, %iter.check ], [ %718, %vector.memcheck ], [ %928, %vec.epilog.iter.check ], [ %934, %vec.epilog.middle.block ]
  %.ph1452 = phi i32 [ %902, %iter.check ], [ %902, %vector.memcheck ], [ %929, %vec.epilog.iter.check ], [ %935, %vec.epilog.middle.block ]
  %.ph1453 = phi ptr [ %912, %iter.check ], [ %912, %vector.memcheck ], [ %930, %vec.epilog.iter.check ], [ %936, %vec.epilog.middle.block ]
  %938 = add i32 %.ph1452, -1
  %xtraiter1594 = and i32 %.ph1452, 7
  %lcmp.mod1595.not = icmp eq i32 %xtraiter1594, 0
  br i1 %lcmp.mod1595.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %939 = phi ptr [ %943, %vec.epilog.scalar.ph.prol ], [ %.ph1451, %vec.epilog.scalar.ph.preheader ]
  %940 = phi i32 [ %944, %vec.epilog.scalar.ph.prol ], [ %.ph1452, %vec.epilog.scalar.ph.preheader ]
  %941 = phi ptr [ %945, %vec.epilog.scalar.ph.prol ], [ %.ph1453, %vec.epilog.scalar.ph.preheader ]
  %prol.iter1596 = phi i32 [ %prol.iter1596.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %942 = load i8, ptr %941, align 1, !tbaa !33
  store i8 %942, ptr %939, align 1, !tbaa !33
  %943 = getelementptr inbounds nuw i8, ptr %939, i64 1
  %944 = add i32 %940, -1
  %945 = getelementptr inbounds nuw i8, ptr %941, i64 1
  %prol.iter1596.next = add i32 %prol.iter1596, 1
  %prol.iter1596.cmp.not = icmp eq i32 %prol.iter1596.next, %xtraiter1594
  br i1 %prol.iter1596.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !67

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa1520.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %943, %vec.epilog.scalar.ph.prol ]
  %.unr1597 = phi ptr [ %.ph1451, %vec.epilog.scalar.ph.preheader ], [ %943, %vec.epilog.scalar.ph.prol ]
  %.unr1598 = phi i32 [ %.ph1452, %vec.epilog.scalar.ph.preheader ], [ %944, %vec.epilog.scalar.ph.prol ]
  %.unr1599 = phi ptr [ %.ph1453, %vec.epilog.scalar.ph.preheader ], [ %945, %vec.epilog.scalar.ph.prol ]
  %946 = icmp ult i32 %938, 7
  br i1 %946, label %.loopexit1332, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %947 = phi ptr [ %972, %vec.epilog.scalar.ph ], [ %.unr1597, %vec.epilog.scalar.ph.prol.loopexit ]
  %948 = phi i32 [ %973, %vec.epilog.scalar.ph ], [ %.unr1598, %vec.epilog.scalar.ph.prol.loopexit ]
  %949 = phi ptr [ %974, %vec.epilog.scalar.ph ], [ %.unr1599, %vec.epilog.scalar.ph.prol.loopexit ]
  %950 = load i8, ptr %949, align 1, !tbaa !33
  store i8 %950, ptr %947, align 1, !tbaa !33
  %951 = getelementptr inbounds nuw i8, ptr %947, i64 1
  %952 = getelementptr inbounds nuw i8, ptr %949, i64 1
  %953 = load i8, ptr %952, align 1, !tbaa !33
  store i8 %953, ptr %951, align 1, !tbaa !33
  %954 = getelementptr inbounds nuw i8, ptr %947, i64 2
  %955 = getelementptr inbounds nuw i8, ptr %949, i64 2
  %956 = load i8, ptr %955, align 1, !tbaa !33
  store i8 %956, ptr %954, align 1, !tbaa !33
  %957 = getelementptr inbounds nuw i8, ptr %947, i64 3
  %958 = getelementptr inbounds nuw i8, ptr %949, i64 3
  %959 = load i8, ptr %958, align 1, !tbaa !33
  store i8 %959, ptr %957, align 1, !tbaa !33
  %960 = getelementptr inbounds nuw i8, ptr %947, i64 4
  %961 = getelementptr inbounds nuw i8, ptr %949, i64 4
  %962 = load i8, ptr %961, align 1, !tbaa !33
  store i8 %962, ptr %960, align 1, !tbaa !33
  %963 = getelementptr inbounds nuw i8, ptr %947, i64 5
  %964 = getelementptr inbounds nuw i8, ptr %949, i64 5
  %965 = load i8, ptr %964, align 1, !tbaa !33
  store i8 %965, ptr %963, align 1, !tbaa !33
  %966 = getelementptr inbounds nuw i8, ptr %947, i64 6
  %967 = getelementptr inbounds nuw i8, ptr %949, i64 6
  %968 = load i8, ptr %967, align 1, !tbaa !33
  store i8 %968, ptr %966, align 1, !tbaa !33
  %969 = getelementptr inbounds nuw i8, ptr %947, i64 7
  %970 = getelementptr inbounds nuw i8, ptr %949, i64 7
  %971 = load i8, ptr %970, align 1, !tbaa !33
  store i8 %971, ptr %969, align 1, !tbaa !33
  %972 = getelementptr inbounds nuw i8, ptr %947, i64 8
  %973 = add i32 %948, -8
  %974 = getelementptr inbounds nuw i8, ptr %949, i64 8
  %975 = icmp eq i32 %973, 0
  br i1 %975, label %.loopexit1332, label %vec.epilog.scalar.ph, !llvm.loop !68

.loopexit1332:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa1042 = phi ptr [ %934, %vec.epilog.middle.block ], [ %928, %middle.block ], [ %.lcssa1520.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %972, %vec.epilog.scalar.ph ]
  %976 = sub nuw nsw i32 %810, %902
  %977 = zext nneg i32 %893 to i64
  %978 = sub nsw i64 0, %977
  %979 = getelementptr inbounds i8, ptr %.lcssa1042, i64 %978
  br label %1190

980:                                              ; preds = %907
  %981 = icmp ult i32 %41, %902
  br i1 %981, label %982, label %1119

982:                                              ; preds = %980
  br i1 %67, label %.loopexit11, label %983, !prof !17, !nosanitize !16

.loopexit11:                                      ; preds = %982, %1374, %1357
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

983:                                              ; preds = %982
  %984 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %68, i32 %902), !nosanitize !16
  %985 = extractvalue { i32, i1 } %984, 1, !nosanitize !16
  br i1 %985, label %.loopexit89, label %986, !prof !17, !nosanitize !16

.loopexit89:                                      ; preds = %983, %391
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

986:                                              ; preds = %983
  %987 = extractvalue { i32, i1 } %984, 0, !nosanitize !16
  %988 = zext i32 %987 to i64
  %989 = getelementptr inbounds nuw i8, ptr %43, i64 %988
  %990 = sub nsw i32 %902, %41
  %991 = icmp ult i32 %990, %810
  br i1 %991, label %iter.check1145, label %1190

iter.check1145:                                   ; preds = %986
  %992 = add i32 %88, %892
  %993 = add i32 %992, %859
  %994 = trunc i64 %897 to i32
  %995 = sub i32 %993, %994
  %996 = zext i32 %995 to i64
  %997 = add nuw nsw i64 %996, 1
  %min.iters.check1126 = icmp ult i32 %995, 3
  br i1 %min.iters.check1126, label %vec.epilog.scalar.ph1146.preheader, label %vector.memcheck1124

vector.memcheck1124:                              ; preds = %iter.check1145
  %998 = trunc i64 %897 to i32
  %999 = add i32 %82, %998
  %1000 = add i32 %84, %892
  %1001 = add i32 %1000, %859
  %1002 = sub i32 %999, %1001
  %1003 = zext i32 %1002 to i64
  %1004 = add i64 %44, %1003
  %1005 = sub i64 %897, %1004
  %diff.check1125 = icmp ult i64 %1005, 32
  br i1 %diff.check1125, label %vec.epilog.scalar.ph1146.preheader, label %vector.main.loop.iter.check1127

vector.main.loop.iter.check1127:                  ; preds = %vector.memcheck1124
  %min.iters.check1128 = icmp ult i32 %995, 31
  br i1 %min.iters.check1128, label %vec.epilog.ph1149, label %vector.ph1129

vector.ph1129:                                    ; preds = %vector.main.loop.iter.check1127
  %n.mod.vf1130 = and i64 %997, 28
  %n.vec1131 = and i64 %997, 8589934560
  %1006 = getelementptr i8, ptr %718, i64 %n.vec1131
  %.cast1132 = trunc i64 %n.vec1131 to i32
  %1007 = sub i32 %990, %.cast1132
  %1008 = getelementptr i8, ptr %989, i64 %n.vec1131
  br label %vector.body1133

vector.body1133:                                  ; preds = %vector.body1133, %vector.ph1129
  %index1134 = phi i64 [ 0, %vector.ph1129 ], [ %index.next1139, %vector.body1133 ]
  %next.gep1135 = getelementptr i8, ptr %718, i64 %index1134
  %next.gep1136 = getelementptr i8, ptr %989, i64 %index1134
  %1009 = getelementptr i8, ptr %next.gep1136, i64 16
  %wide.load1137 = load <16 x i8>, ptr %next.gep1136, align 1, !tbaa !33
  %wide.load1138 = load <16 x i8>, ptr %1009, align 1, !tbaa !33
  %1010 = getelementptr i8, ptr %next.gep1135, i64 16
  store <16 x i8> %wide.load1137, ptr %next.gep1135, align 1, !tbaa !33
  store <16 x i8> %wide.load1138, ptr %1010, align 1, !tbaa !33
  %index.next1139 = add nuw i64 %index1134, 32
  %1011 = icmp eq i64 %index.next1139, %n.vec1131
  br i1 %1011, label %middle.block1140, label %vector.body1133, !llvm.loop !69

middle.block1140:                                 ; preds = %vector.body1133
  %cmp.n1141 = icmp eq i64 %997, %n.vec1131
  %ind.escape = add nsw i64 %n.vec1131, -1
  br i1 %cmp.n1141, label %.loopexit1333, label %vec.epilog.iter.check1147

vec.epilog.iter.check1147:                        ; preds = %middle.block1140
  %min.epilog.iters.check1148 = icmp eq i64 %n.mod.vf1130, 0
  br i1 %min.epilog.iters.check1148, label %vec.epilog.scalar.ph1146.preheader, label %vec.epilog.ph1149, !prof !46

vec.epilog.ph1149:                                ; preds = %vector.main.loop.iter.check1127, %vec.epilog.iter.check1147
  %vec.epilog.resume.val1142 = phi i64 [ %n.vec1131, %vec.epilog.iter.check1147 ], [ 0, %vector.main.loop.iter.check1127 ]
  %n.vec1151 = and i64 %997, 8589934588
  %1012 = getelementptr i8, ptr %718, i64 %n.vec1151
  %.cast1152 = trunc i64 %n.vec1151 to i32
  %1013 = sub i32 %990, %.cast1152
  %1014 = getelementptr i8, ptr %989, i64 %n.vec1151
  br label %vec.epilog.vector.body1153

vec.epilog.vector.body1153:                       ; preds = %vec.epilog.vector.body1153, %vec.epilog.ph1149
  %index1154 = phi i64 [ %vec.epilog.resume.val1142, %vec.epilog.ph1149 ], [ %index.next1158, %vec.epilog.vector.body1153 ]
  %next.gep1155 = getelementptr i8, ptr %718, i64 %index1154
  %next.gep1156 = getelementptr i8, ptr %989, i64 %index1154
  %wide.load1157 = load <4 x i8>, ptr %next.gep1156, align 1, !tbaa !33
  store <4 x i8> %wide.load1157, ptr %next.gep1155, align 1, !tbaa !33
  %index.next1158 = add nuw i64 %index1154, 4
  %1015 = icmp eq i64 %index.next1158, %n.vec1151
  br i1 %1015, label %vec.epilog.middle.block1159, label %vec.epilog.vector.body1153, !llvm.loop !70

vec.epilog.middle.block1159:                      ; preds = %vec.epilog.vector.body1153
  %cmp.n1160 = icmp eq i64 %997, %n.vec1151
  %ind.escape1161 = add nsw i64 %n.vec1151, -1
  br i1 %cmp.n1160, label %.loopexit1333, label %vec.epilog.scalar.ph1146.preheader

vec.epilog.scalar.ph1146.preheader:               ; preds = %vector.memcheck1124, %iter.check1145, %vec.epilog.iter.check1147, %vec.epilog.middle.block1159
  %.ph1454 = phi i64 [ 0, %iter.check1145 ], [ 0, %vector.memcheck1124 ], [ %n.vec1131, %vec.epilog.iter.check1147 ], [ %n.vec1151, %vec.epilog.middle.block1159 ]
  %.ph1455 = phi ptr [ %718, %iter.check1145 ], [ %718, %vector.memcheck1124 ], [ %1006, %vec.epilog.iter.check1147 ], [ %1012, %vec.epilog.middle.block1159 ]
  %.ph1456 = phi i32 [ %990, %iter.check1145 ], [ %990, %vector.memcheck1124 ], [ %1007, %vec.epilog.iter.check1147 ], [ %1013, %vec.epilog.middle.block1159 ]
  %.ph1457 = phi ptr [ %989, %iter.check1145 ], [ %989, %vector.memcheck1124 ], [ %1008, %vec.epilog.iter.check1147 ], [ %1014, %vec.epilog.middle.block1159 ]
  %1016 = add i32 %.ph1456, -1
  %xtraiter1587 = and i32 %.ph1456, 3
  %lcmp.mod1588.not = icmp eq i32 %xtraiter1587, 0
  br i1 %lcmp.mod1588.not, label %vec.epilog.scalar.ph1146.prol.loopexit, label %vec.epilog.scalar.ph1146.prol

vec.epilog.scalar.ph1146.prol:                    ; preds = %vec.epilog.scalar.ph1146.preheader, %vec.epilog.scalar.ph1146.prol
  %1017 = phi i64 [ %1025, %vec.epilog.scalar.ph1146.prol ], [ %.ph1454, %vec.epilog.scalar.ph1146.preheader ]
  %1018 = phi ptr [ %1022, %vec.epilog.scalar.ph1146.prol ], [ %.ph1455, %vec.epilog.scalar.ph1146.preheader ]
  %1019 = phi i32 [ %1023, %vec.epilog.scalar.ph1146.prol ], [ %.ph1456, %vec.epilog.scalar.ph1146.preheader ]
  %1020 = phi ptr [ %1024, %vec.epilog.scalar.ph1146.prol ], [ %.ph1457, %vec.epilog.scalar.ph1146.preheader ]
  %prol.iter1589 = phi i32 [ %prol.iter1589.next, %vec.epilog.scalar.ph1146.prol ], [ 0, %vec.epilog.scalar.ph1146.preheader ]
  %1021 = load i8, ptr %1020, align 1, !tbaa !33
  store i8 %1021, ptr %1018, align 1, !tbaa !33
  %1022 = getelementptr inbounds nuw i8, ptr %1018, i64 1
  %1023 = add i32 %1019, -1
  %1024 = getelementptr inbounds nuw i8, ptr %1020, i64 1
  %1025 = add nuw nsw i64 %1017, 1
  %prol.iter1589.next = add i32 %prol.iter1589, 1
  %prol.iter1589.cmp.not = icmp eq i32 %prol.iter1589.next, %xtraiter1587
  br i1 %prol.iter1589.cmp.not, label %vec.epilog.scalar.ph1146.prol.loopexit, label %vec.epilog.scalar.ph1146.prol, !llvm.loop !71

vec.epilog.scalar.ph1146.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1146.prol, %vec.epilog.scalar.ph1146.preheader
  %.lcssa1516.unr = phi i64 [ poison, %vec.epilog.scalar.ph1146.preheader ], [ %1017, %vec.epilog.scalar.ph1146.prol ]
  %.lcssa1515.unr = phi ptr [ poison, %vec.epilog.scalar.ph1146.preheader ], [ %1022, %vec.epilog.scalar.ph1146.prol ]
  %.unr1590 = phi i64 [ %.ph1454, %vec.epilog.scalar.ph1146.preheader ], [ %1025, %vec.epilog.scalar.ph1146.prol ]
  %.unr1591 = phi ptr [ %.ph1455, %vec.epilog.scalar.ph1146.preheader ], [ %1022, %vec.epilog.scalar.ph1146.prol ]
  %.unr1592 = phi i32 [ %.ph1456, %vec.epilog.scalar.ph1146.preheader ], [ %1023, %vec.epilog.scalar.ph1146.prol ]
  %.unr1593 = phi ptr [ %.ph1457, %vec.epilog.scalar.ph1146.preheader ], [ %1024, %vec.epilog.scalar.ph1146.prol ]
  %1026 = icmp ult i32 %1016, 3
  br i1 %1026, label %.loopexit1333, label %vec.epilog.scalar.ph1146

vec.epilog.scalar.ph1146:                         ; preds = %vec.epilog.scalar.ph1146.prol.loopexit, %vec.epilog.scalar.ph1146
  %1027 = phi i64 [ %1045, %vec.epilog.scalar.ph1146 ], [ %.unr1590, %vec.epilog.scalar.ph1146.prol.loopexit ]
  %1028 = phi ptr [ %1041, %vec.epilog.scalar.ph1146 ], [ %.unr1591, %vec.epilog.scalar.ph1146.prol.loopexit ]
  %1029 = phi i32 [ %1042, %vec.epilog.scalar.ph1146 ], [ %.unr1592, %vec.epilog.scalar.ph1146.prol.loopexit ]
  %1030 = phi ptr [ %1043, %vec.epilog.scalar.ph1146 ], [ %.unr1593, %vec.epilog.scalar.ph1146.prol.loopexit ]
  %1031 = load i8, ptr %1030, align 1, !tbaa !33
  store i8 %1031, ptr %1028, align 1, !tbaa !33
  %1032 = getelementptr inbounds nuw i8, ptr %1028, i64 1
  %1033 = getelementptr inbounds nuw i8, ptr %1030, i64 1
  %1034 = load i8, ptr %1033, align 1, !tbaa !33
  store i8 %1034, ptr %1032, align 1, !tbaa !33
  %1035 = getelementptr inbounds nuw i8, ptr %1028, i64 2
  %1036 = getelementptr inbounds nuw i8, ptr %1030, i64 2
  %1037 = load i8, ptr %1036, align 1, !tbaa !33
  store i8 %1037, ptr %1035, align 1, !tbaa !33
  %1038 = getelementptr inbounds nuw i8, ptr %1028, i64 3
  %1039 = getelementptr inbounds nuw i8, ptr %1030, i64 3
  %1040 = load i8, ptr %1039, align 1, !tbaa !33
  store i8 %1040, ptr %1038, align 1, !tbaa !33
  %1041 = getelementptr inbounds nuw i8, ptr %1028, i64 4
  %1042 = add i32 %1029, -4
  %1043 = getelementptr inbounds nuw i8, ptr %1030, i64 4
  %1044 = icmp eq i32 %1042, 0
  %1045 = add nuw nsw i64 %1027, 4
  br i1 %1044, label %.loopexit1333.loopexit.unr-lcssa, label %vec.epilog.scalar.ph1146, !llvm.loop !72

.loopexit1333.loopexit.unr-lcssa:                 ; preds = %vec.epilog.scalar.ph1146
  %1046 = add nuw nsw i64 %1027, 3
  br label %.loopexit1333

.loopexit1333:                                    ; preds = %.loopexit1333.loopexit.unr-lcssa, %vec.epilog.scalar.ph1146.prol.loopexit, %vec.epilog.middle.block1159, %middle.block1140
  %.lcssa1038 = phi i64 [ %ind.escape1161, %vec.epilog.middle.block1159 ], [ %ind.escape, %middle.block1140 ], [ %.lcssa1516.unr, %vec.epilog.scalar.ph1146.prol.loopexit ], [ %1046, %.loopexit1333.loopexit.unr-lcssa ]
  %.lcssa1037 = phi ptr [ %1012, %vec.epilog.middle.block1159 ], [ %1006, %middle.block1140 ], [ %.lcssa1515.unr, %vec.epilog.scalar.ph1146.prol.loopexit ], [ %1041, %.loopexit1333.loopexit.unr-lcssa ]
  %1047 = sub nuw nsw i32 %810, %990
  %1048 = icmp ult i32 %41, %1047
  br i1 %1048, label %1049, label %1190

1049:                                             ; preds = %.loopexit1333
  br i1 %70, label %1064, label %1050

1050:                                             ; preds = %1049
  %.reass = add i64 %invariant.op866, %897
  %1051 = add i64 %.reass, %.lcssa1038
  %1052 = icmp ult i64 %1051, 32
  br i1 %1052, label %1064, label %.preheader876

.preheader876:                                    ; preds = %1050, %.preheader876
  %1053 = phi i64 [ %1060, %.preheader876 ], [ 0, %1050 ]
  %1054 = getelementptr i8, ptr %.lcssa1037, i64 %1053
  %1055 = getelementptr i8, ptr %43, i64 %1053
  %1056 = getelementptr i8, ptr %1055, i64 16
  %1057 = load <16 x i8>, ptr %1055, align 1, !tbaa !33
  %1058 = load <16 x i8>, ptr %1056, align 1, !tbaa !33
  %1059 = getelementptr i8, ptr %1054, i64 16
  store <16 x i8> %1057, ptr %1054, align 1, !tbaa !33
  store <16 x i8> %1058, ptr %1059, align 1, !tbaa !33
  %1060 = add nuw nsw i64 %1053, 32
  %1061 = icmp eq i64 %1060, %71
  br i1 %1061, label %1062, label %.preheader876, !llvm.loop !55

1062:                                             ; preds = %.preheader876
  %1063 = getelementptr i8, ptr %.lcssa1037, i64 %71
  br i1 %75, label %.loopexit2, label %1064

1064:                                             ; preds = %1062, %1050, %1049
  %1065 = phi ptr [ %.lcssa1037, %1050 ], [ %.lcssa1037, %1049 ], [ %1063, %1062 ]
  %1066 = phi i32 [ %41, %1050 ], [ %41, %1049 ], [ %73, %1062 ]
  %1067 = phi ptr [ %43, %1050 ], [ %43, %1049 ], [ %74, %1062 ]
  %1068 = add i32 %1066, -1
  %1069 = and i32 %1066, 7
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %.loopexit4, label %.preheader3

.preheader3:                                      ; preds = %1064, %.preheader3
  %1071 = phi ptr [ %1075, %.preheader3 ], [ %1065, %1064 ]
  %1072 = phi ptr [ %1076, %.preheader3 ], [ %1067, %1064 ]
  %1073 = phi i32 [ %1077, %.preheader3 ], [ 0, %1064 ]
  %1074 = load i8, ptr %1072, align 1, !tbaa !33
  %1075 = getelementptr inbounds nuw i8, ptr %1071, i64 1
  store i8 %1074, ptr %1071, align 1, !tbaa !33
  %1076 = getelementptr inbounds nuw i8, ptr %1072, i64 1
  %1077 = add nuw nsw i32 %1073, 1
  %1078 = icmp eq i32 %1077, %1069
  br i1 %1078, label %.loopexit4.loopexit, label %.preheader3, !llvm.loop !56

.loopexit4.loopexit:                              ; preds = %.preheader3
  %1079 = and i32 %1066, -8
  br label %.loopexit4

.loopexit4:                                       ; preds = %.loopexit4.loopexit, %1064
  %1080 = phi ptr [ poison, %1064 ], [ %1075, %.loopexit4.loopexit ]
  %1081 = phi ptr [ %1065, %1064 ], [ %1075, %.loopexit4.loopexit ]
  %1082 = phi i32 [ %1066, %1064 ], [ %1079, %.loopexit4.loopexit ]
  %1083 = phi ptr [ %1067, %1064 ], [ %1076, %.loopexit4.loopexit ]
  %1084 = icmp ult i32 %1068, 7
  br i1 %1084, label %.loopexit2, label %.preheader1

.preheader1:                                      ; preds = %.loopexit4, %.preheader1
  %1085 = phi ptr [ %1110, %.preheader1 ], [ %1081, %.loopexit4 ]
  %1086 = phi i32 [ %1111, %.preheader1 ], [ %1082, %.loopexit4 ]
  %1087 = phi ptr [ %1112, %.preheader1 ], [ %1083, %.loopexit4 ]
  %1088 = load i8, ptr %1087, align 1, !tbaa !33
  %1089 = getelementptr inbounds nuw i8, ptr %1085, i64 1
  store i8 %1088, ptr %1085, align 1, !tbaa !33
  %1090 = getelementptr inbounds nuw i8, ptr %1087, i64 1
  %1091 = load i8, ptr %1090, align 1, !tbaa !33
  %1092 = getelementptr inbounds nuw i8, ptr %1085, i64 2
  store i8 %1091, ptr %1089, align 1, !tbaa !33
  %1093 = getelementptr inbounds nuw i8, ptr %1087, i64 2
  %1094 = load i8, ptr %1093, align 1, !tbaa !33
  %1095 = getelementptr inbounds nuw i8, ptr %1085, i64 3
  store i8 %1094, ptr %1092, align 1, !tbaa !33
  %1096 = getelementptr inbounds nuw i8, ptr %1087, i64 3
  %1097 = load i8, ptr %1096, align 1, !tbaa !33
  %1098 = getelementptr inbounds nuw i8, ptr %1085, i64 4
  store i8 %1097, ptr %1095, align 1, !tbaa !33
  %1099 = getelementptr inbounds nuw i8, ptr %1087, i64 4
  %1100 = load i8, ptr %1099, align 1, !tbaa !33
  %1101 = getelementptr inbounds nuw i8, ptr %1085, i64 5
  store i8 %1100, ptr %1098, align 1, !tbaa !33
  %1102 = getelementptr inbounds nuw i8, ptr %1087, i64 5
  %1103 = load i8, ptr %1102, align 1, !tbaa !33
  %1104 = getelementptr inbounds nuw i8, ptr %1085, i64 6
  store i8 %1103, ptr %1101, align 1, !tbaa !33
  %1105 = getelementptr inbounds nuw i8, ptr %1087, i64 6
  %1106 = load i8, ptr %1105, align 1, !tbaa !33
  %1107 = getelementptr inbounds nuw i8, ptr %1085, i64 7
  store i8 %1106, ptr %1104, align 1, !tbaa !33
  %1108 = getelementptr inbounds nuw i8, ptr %1087, i64 7
  %1109 = load i8, ptr %1108, align 1, !tbaa !33
  %1110 = getelementptr inbounds nuw i8, ptr %1085, i64 8
  store i8 %1109, ptr %1107, align 1, !tbaa !33
  %1111 = add i32 %1086, -8
  %1112 = getelementptr inbounds nuw i8, ptr %1087, i64 8
  %1113 = icmp eq i32 %1111, 0
  br i1 %1113, label %.loopexit2, label %.preheader1, !llvm.loop !57

.loopexit2:                                       ; preds = %.preheader1, %.loopexit4, %1062
  %1114 = phi ptr [ %1063, %1062 ], [ %1080, %.loopexit4 ], [ %1110, %.preheader1 ]
  %1115 = sub nuw nsw i32 %1047, %41
  %1116 = zext nneg i32 %893 to i64
  %1117 = sub nsw i64 0, %1116
  %1118 = getelementptr inbounds i8, ptr %1114, i64 %1117
  br label %1190

1119:                                             ; preds = %980
  %1120 = sub nuw i32 %41, %902
  %1121 = zext i32 %1120 to i64
  %1122 = getelementptr inbounds nuw i8, ptr %43, i64 %1121
  %1123 = icmp ult i32 %902, %810
  br i1 %1123, label %iter.check1187, label %1190

iter.check1187:                                   ; preds = %1119
  %1124 = add i32 %94, %892
  %1125 = add i32 %1124, %859
  %1126 = trunc i64 %897 to i32
  %1127 = sub i32 %1125, %1126
  %1128 = zext i32 %1127 to i64
  %1129 = add nuw nsw i64 %1128, 1
  %min.iters.check1168 = icmp ult i32 %1127, 3
  br i1 %min.iters.check1168, label %vec.epilog.scalar.ph1188.preheader, label %vector.memcheck1166

vector.memcheck1166:                              ; preds = %iter.check1187
  %1130 = trunc i64 %897 to i32
  %1131 = add i32 %89, %1130
  %1132 = add i32 %91, %892
  %1133 = add i32 %1132, %859
  %1134 = sub i32 %1131, %1133
  %1135 = zext i32 %1134 to i64
  %1136 = add i64 %44, %1135
  %1137 = sub i64 %897, %1136
  %diff.check1167 = icmp ult i64 %1137, 32
  br i1 %diff.check1167, label %vec.epilog.scalar.ph1188.preheader, label %vector.main.loop.iter.check1169

vector.main.loop.iter.check1169:                  ; preds = %vector.memcheck1166
  %min.iters.check1170 = icmp ult i32 %1127, 31
  br i1 %min.iters.check1170, label %vec.epilog.ph1191, label %vector.ph1171

vector.ph1171:                                    ; preds = %vector.main.loop.iter.check1169
  %n.mod.vf1172 = and i64 %1129, 28
  %n.vec1173 = and i64 %1129, 8589934560
  %1138 = getelementptr i8, ptr %718, i64 %n.vec1173
  %.cast1174 = trunc i64 %n.vec1173 to i32
  %1139 = sub i32 %902, %.cast1174
  %1140 = getelementptr i8, ptr %1122, i64 %n.vec1173
  br label %vector.body1175

vector.body1175:                                  ; preds = %vector.body1175, %vector.ph1171
  %index1176 = phi i64 [ 0, %vector.ph1171 ], [ %index.next1181, %vector.body1175 ]
  %next.gep1177 = getelementptr i8, ptr %718, i64 %index1176
  %next.gep1178 = getelementptr i8, ptr %1122, i64 %index1176
  %1141 = getelementptr i8, ptr %next.gep1178, i64 16
  %wide.load1179 = load <16 x i8>, ptr %next.gep1178, align 1, !tbaa !33
  %wide.load1180 = load <16 x i8>, ptr %1141, align 1, !tbaa !33
  %1142 = getelementptr i8, ptr %next.gep1177, i64 16
  store <16 x i8> %wide.load1179, ptr %next.gep1177, align 1, !tbaa !33
  store <16 x i8> %wide.load1180, ptr %1142, align 1, !tbaa !33
  %index.next1181 = add nuw i64 %index1176, 32
  %1143 = icmp eq i64 %index.next1181, %n.vec1173
  br i1 %1143, label %middle.block1182, label %vector.body1175, !llvm.loop !73

middle.block1182:                                 ; preds = %vector.body1175
  %cmp.n1183 = icmp eq i64 %1129, %n.vec1173
  br i1 %cmp.n1183, label %.loopexit1334, label %vec.epilog.iter.check1189

vec.epilog.iter.check1189:                        ; preds = %middle.block1182
  %min.epilog.iters.check1190 = icmp eq i64 %n.mod.vf1172, 0
  br i1 %min.epilog.iters.check1190, label %vec.epilog.scalar.ph1188.preheader, label %vec.epilog.ph1191, !prof !46

vec.epilog.ph1191:                                ; preds = %vector.main.loop.iter.check1169, %vec.epilog.iter.check1189
  %vec.epilog.resume.val1184 = phi i64 [ %n.vec1173, %vec.epilog.iter.check1189 ], [ 0, %vector.main.loop.iter.check1169 ]
  %n.vec1193 = and i64 %1129, 8589934588
  %1144 = getelementptr i8, ptr %718, i64 %n.vec1193
  %.cast1194 = trunc i64 %n.vec1193 to i32
  %1145 = sub i32 %902, %.cast1194
  %1146 = getelementptr i8, ptr %1122, i64 %n.vec1193
  br label %vec.epilog.vector.body1195

vec.epilog.vector.body1195:                       ; preds = %vec.epilog.vector.body1195, %vec.epilog.ph1191
  %index1196 = phi i64 [ %vec.epilog.resume.val1184, %vec.epilog.ph1191 ], [ %index.next1200, %vec.epilog.vector.body1195 ]
  %next.gep1197 = getelementptr i8, ptr %718, i64 %index1196
  %next.gep1198 = getelementptr i8, ptr %1122, i64 %index1196
  %wide.load1199 = load <4 x i8>, ptr %next.gep1198, align 1, !tbaa !33
  store <4 x i8> %wide.load1199, ptr %next.gep1197, align 1, !tbaa !33
  %index.next1200 = add nuw i64 %index1196, 4
  %1147 = icmp eq i64 %index.next1200, %n.vec1193
  br i1 %1147, label %vec.epilog.middle.block1201, label %vec.epilog.vector.body1195, !llvm.loop !74

vec.epilog.middle.block1201:                      ; preds = %vec.epilog.vector.body1195
  %cmp.n1202 = icmp eq i64 %1129, %n.vec1193
  br i1 %cmp.n1202, label %.loopexit1334, label %vec.epilog.scalar.ph1188.preheader

vec.epilog.scalar.ph1188.preheader:               ; preds = %vector.memcheck1166, %iter.check1187, %vec.epilog.iter.check1189, %vec.epilog.middle.block1201
  %.ph1458 = phi ptr [ %718, %iter.check1187 ], [ %718, %vector.memcheck1166 ], [ %1138, %vec.epilog.iter.check1189 ], [ %1144, %vec.epilog.middle.block1201 ]
  %.ph1459 = phi i32 [ %902, %iter.check1187 ], [ %902, %vector.memcheck1166 ], [ %1139, %vec.epilog.iter.check1189 ], [ %1145, %vec.epilog.middle.block1201 ]
  %.ph1460 = phi ptr [ %1122, %iter.check1187 ], [ %1122, %vector.memcheck1166 ], [ %1140, %vec.epilog.iter.check1189 ], [ %1146, %vec.epilog.middle.block1201 ]
  %1148 = add i32 %.ph1459, -1
  %xtraiter = and i32 %.ph1459, 7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph1188.prol.loopexit, label %vec.epilog.scalar.ph1188.prol

vec.epilog.scalar.ph1188.prol:                    ; preds = %vec.epilog.scalar.ph1188.preheader, %vec.epilog.scalar.ph1188.prol
  %1149 = phi ptr [ %1153, %vec.epilog.scalar.ph1188.prol ], [ %.ph1458, %vec.epilog.scalar.ph1188.preheader ]
  %1150 = phi i32 [ %1154, %vec.epilog.scalar.ph1188.prol ], [ %.ph1459, %vec.epilog.scalar.ph1188.preheader ]
  %1151 = phi ptr [ %1155, %vec.epilog.scalar.ph1188.prol ], [ %.ph1460, %vec.epilog.scalar.ph1188.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph1188.prol ], [ 0, %vec.epilog.scalar.ph1188.preheader ]
  %1152 = load i8, ptr %1151, align 1, !tbaa !33
  store i8 %1152, ptr %1149, align 1, !tbaa !33
  %1153 = getelementptr inbounds nuw i8, ptr %1149, i64 1
  %1154 = add i32 %1150, -1
  %1155 = getelementptr inbounds nuw i8, ptr %1151, i64 1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph1188.prol.loopexit, label %vec.epilog.scalar.ph1188.prol, !llvm.loop !75

vec.epilog.scalar.ph1188.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1188.prol, %vec.epilog.scalar.ph1188.preheader
  %.lcssa1514.unr = phi ptr [ poison, %vec.epilog.scalar.ph1188.preheader ], [ %1153, %vec.epilog.scalar.ph1188.prol ]
  %.unr = phi ptr [ %.ph1458, %vec.epilog.scalar.ph1188.preheader ], [ %1153, %vec.epilog.scalar.ph1188.prol ]
  %.unr1585 = phi i32 [ %.ph1459, %vec.epilog.scalar.ph1188.preheader ], [ %1154, %vec.epilog.scalar.ph1188.prol ]
  %.unr1586 = phi ptr [ %.ph1460, %vec.epilog.scalar.ph1188.preheader ], [ %1155, %vec.epilog.scalar.ph1188.prol ]
  %1156 = icmp ult i32 %1148, 7
  br i1 %1156, label %.loopexit1334, label %vec.epilog.scalar.ph1188

vec.epilog.scalar.ph1188:                         ; preds = %vec.epilog.scalar.ph1188.prol.loopexit, %vec.epilog.scalar.ph1188
  %1157 = phi ptr [ %1182, %vec.epilog.scalar.ph1188 ], [ %.unr, %vec.epilog.scalar.ph1188.prol.loopexit ]
  %1158 = phi i32 [ %1183, %vec.epilog.scalar.ph1188 ], [ %.unr1585, %vec.epilog.scalar.ph1188.prol.loopexit ]
  %1159 = phi ptr [ %1184, %vec.epilog.scalar.ph1188 ], [ %.unr1586, %vec.epilog.scalar.ph1188.prol.loopexit ]
  %1160 = load i8, ptr %1159, align 1, !tbaa !33
  store i8 %1160, ptr %1157, align 1, !tbaa !33
  %1161 = getelementptr inbounds nuw i8, ptr %1157, i64 1
  %1162 = getelementptr inbounds nuw i8, ptr %1159, i64 1
  %1163 = load i8, ptr %1162, align 1, !tbaa !33
  store i8 %1163, ptr %1161, align 1, !tbaa !33
  %1164 = getelementptr inbounds nuw i8, ptr %1157, i64 2
  %1165 = getelementptr inbounds nuw i8, ptr %1159, i64 2
  %1166 = load i8, ptr %1165, align 1, !tbaa !33
  store i8 %1166, ptr %1164, align 1, !tbaa !33
  %1167 = getelementptr inbounds nuw i8, ptr %1157, i64 3
  %1168 = getelementptr inbounds nuw i8, ptr %1159, i64 3
  %1169 = load i8, ptr %1168, align 1, !tbaa !33
  store i8 %1169, ptr %1167, align 1, !tbaa !33
  %1170 = getelementptr inbounds nuw i8, ptr %1157, i64 4
  %1171 = getelementptr inbounds nuw i8, ptr %1159, i64 4
  %1172 = load i8, ptr %1171, align 1, !tbaa !33
  store i8 %1172, ptr %1170, align 1, !tbaa !33
  %1173 = getelementptr inbounds nuw i8, ptr %1157, i64 5
  %1174 = getelementptr inbounds nuw i8, ptr %1159, i64 5
  %1175 = load i8, ptr %1174, align 1, !tbaa !33
  store i8 %1175, ptr %1173, align 1, !tbaa !33
  %1176 = getelementptr inbounds nuw i8, ptr %1157, i64 6
  %1177 = getelementptr inbounds nuw i8, ptr %1159, i64 6
  %1178 = load i8, ptr %1177, align 1, !tbaa !33
  store i8 %1178, ptr %1176, align 1, !tbaa !33
  %1179 = getelementptr inbounds nuw i8, ptr %1157, i64 7
  %1180 = getelementptr inbounds nuw i8, ptr %1159, i64 7
  %1181 = load i8, ptr %1180, align 1, !tbaa !33
  store i8 %1181, ptr %1179, align 1, !tbaa !33
  %1182 = getelementptr inbounds nuw i8, ptr %1157, i64 8
  %1183 = add i32 %1158, -8
  %1184 = getelementptr inbounds nuw i8, ptr %1159, i64 8
  %1185 = icmp eq i32 %1183, 0
  br i1 %1185, label %.loopexit1334, label %vec.epilog.scalar.ph1188, !llvm.loop !76

.loopexit1334:                                    ; preds = %vec.epilog.scalar.ph1188.prol.loopexit, %vec.epilog.scalar.ph1188, %vec.epilog.middle.block1201, %middle.block1182
  %.lcssa1036 = phi ptr [ %1144, %vec.epilog.middle.block1201 ], [ %1138, %middle.block1182 ], [ %.lcssa1514.unr, %vec.epilog.scalar.ph1188.prol.loopexit ], [ %1182, %vec.epilog.scalar.ph1188 ]
  %1186 = sub nuw nsw i32 %810, %902
  %1187 = zext nneg i32 %893 to i64
  %1188 = sub nsw i64 0, %1187
  %1189 = getelementptr inbounds i8, ptr %.lcssa1036, i64 %1188
  br label %1190

1190:                                             ; preds = %.loopexit1334, %1119, %.loopexit2, %.loopexit1333, %986, %.loopexit1332, %909
  %1191 = phi ptr [ %.lcssa1042, %.loopexit1332 ], [ %718, %909 ], [ %1114, %.loopexit2 ], [ %.lcssa1037, %.loopexit1333 ], [ %718, %986 ], [ %.lcssa1036, %.loopexit1334 ], [ %718, %1119 ]
  %1192 = phi i32 [ %976, %.loopexit1332 ], [ %810, %909 ], [ %1115, %.loopexit2 ], [ %1047, %.loopexit1333 ], [ %810, %986 ], [ %1186, %.loopexit1334 ], [ %810, %1119 ]
  %1193 = phi ptr [ %979, %.loopexit1332 ], [ %912, %909 ], [ %1118, %.loopexit2 ], [ %43, %.loopexit1333 ], [ %989, %986 ], [ %1189, %.loopexit1334 ], [ %1122, %1119 ]
  %1194 = icmp ugt i32 %1192, 2
  br i1 %1194, label %1195, label %.loopexit

1195:                                             ; preds = %1190
  %1196 = add nsw i32 %1192, -3
  %1197 = udiv i32 %1196, 3
  %1198 = and i32 %1197, 1
  %1199 = icmp eq i32 %1198, 0
  br i1 %1199, label %1200, label %1210

1200:                                             ; preds = %1195
  %1201 = getelementptr inbounds nuw i8, ptr %1193, i64 1
  %1202 = load i8, ptr %1193, align 1, !tbaa !33
  %1203 = getelementptr inbounds nuw i8, ptr %1191, i64 1
  store i8 %1202, ptr %1191, align 1, !tbaa !33
  %1204 = getelementptr inbounds nuw i8, ptr %1193, i64 2
  %1205 = load i8, ptr %1201, align 1, !tbaa !33
  %1206 = getelementptr inbounds nuw i8, ptr %1191, i64 2
  store i8 %1205, ptr %1203, align 1, !tbaa !33
  %1207 = load i8, ptr %1204, align 1, !tbaa !33
  store i8 %1207, ptr %1206, align 1, !tbaa !33
  %1208 = getelementptr inbounds nuw i8, ptr %1191, i64 3
  %1209 = getelementptr inbounds nuw i8, ptr %1193, i64 3
  br label %1210

1210:                                             ; preds = %1200, %1195
  %1211 = phi ptr [ %1193, %1195 ], [ %1209, %1200 ]
  %1212 = phi i32 [ %1192, %1195 ], [ %1196, %1200 ]
  %1213 = phi ptr [ %1191, %1195 ], [ %1208, %1200 ]
  %1214 = phi ptr [ poison, %1195 ], [ %1208, %1200 ]
  %1215 = phi ptr [ poison, %1195 ], [ %1209, %1200 ]
  %1216 = icmp ult i32 %1196, 3
  br i1 %1216, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %1210, %.preheader
  %1217 = phi ptr [ %1238, %.preheader ], [ %1211, %1210 ]
  %1218 = phi i32 [ %1236, %.preheader ], [ %1212, %1210 ]
  %1219 = phi ptr [ %1237, %.preheader ], [ %1213, %1210 ]
  %1220 = getelementptr inbounds nuw i8, ptr %1217, i64 1
  %1221 = load i8, ptr %1217, align 1, !tbaa !33
  %1222 = getelementptr inbounds nuw i8, ptr %1219, i64 1
  store i8 %1221, ptr %1219, align 1, !tbaa !33
  %1223 = getelementptr inbounds nuw i8, ptr %1217, i64 2
  %1224 = load i8, ptr %1220, align 1, !tbaa !33
  %1225 = getelementptr inbounds nuw i8, ptr %1219, i64 2
  store i8 %1224, ptr %1222, align 1, !tbaa !33
  %1226 = load i8, ptr %1223, align 1, !tbaa !33
  store i8 %1226, ptr %1225, align 1, !tbaa !33
  %1227 = getelementptr inbounds nuw i8, ptr %1219, i64 3
  %1228 = getelementptr inbounds nuw i8, ptr %1217, i64 3
  %1229 = getelementptr inbounds nuw i8, ptr %1217, i64 4
  %1230 = load i8, ptr %1228, align 1, !tbaa !33
  %1231 = getelementptr inbounds nuw i8, ptr %1219, i64 4
  store i8 %1230, ptr %1227, align 1, !tbaa !33
  %1232 = getelementptr inbounds nuw i8, ptr %1217, i64 5
  %1233 = load i8, ptr %1229, align 1, !tbaa !33
  %1234 = getelementptr inbounds nuw i8, ptr %1219, i64 5
  store i8 %1233, ptr %1231, align 1, !tbaa !33
  %1235 = load i8, ptr %1232, align 1, !tbaa !33
  store i8 %1235, ptr %1234, align 1, !tbaa !33
  %1236 = add i32 %1218, -6
  %1237 = getelementptr inbounds nuw i8, ptr %1219, i64 6
  %1238 = getelementptr inbounds nuw i8, ptr %1217, i64 6
  %1239 = icmp ugt i32 %1236, 2
  br i1 %1239, label %.preheader, label %.loopexit, !llvm.loop !62

.loopexit:                                        ; preds = %.preheader, %1210, %1190
  %1240 = phi ptr [ %1191, %1190 ], [ %1214, %1210 ], [ %1237, %.preheader ]
  %1241 = phi i32 [ %1192, %1190 ], [ %1196, %1210 ], [ %1236, %.preheader ]
  %1242 = phi ptr [ %1193, %1190 ], [ %1215, %1210 ], [ %1238, %.preheader ]
  %1243 = icmp eq i32 %1241, 0
  br i1 %1243, label %1326, label %1244

1244:                                             ; preds = %.loopexit
  %1245 = load i8, ptr %1242, align 1, !tbaa !33
  %1246 = getelementptr inbounds nuw i8, ptr %1240, i64 1
  store i8 %1245, ptr %1240, align 1, !tbaa !33
  %1247 = icmp eq i32 %1241, 2
  br i1 %1247, label %1248, label %1326

1248:                                             ; preds = %1244
  %1249 = getelementptr inbounds nuw i8, ptr %1242, i64 1
  %1250 = load i8, ptr %1249, align 1, !tbaa !33
  %1251 = getelementptr inbounds nuw i8, ptr %1240, i64 2
  store i8 %1250, ptr %1246, align 1, !tbaa !33
  br label %1326

1252:                                             ; preds = %885
  %1253 = zext nneg i32 %893 to i64
  %1254 = sub nsw i64 0, %1253
  %1255 = getelementptr inbounds i8, ptr %718, i64 %1254
  br label %1256

1256:                                             ; preds = %1269, %1252
  %1257 = phi ptr [ %718, %1252 ], [ %1271, %1269 ]
  %1258 = phi i32 [ %810, %1252 ], [ %1270, %1269 ]
  %1259 = phi ptr [ %1255, %1252 ], [ %1272, %1269 ]
  %1260 = getelementptr inbounds nuw i8, ptr %1259, i64 1
  %1261 = load i8, ptr %1259, align 1, !tbaa !33
  %1262 = getelementptr inbounds nuw i8, ptr %1257, i64 1
  store i8 %1261, ptr %1257, align 1, !tbaa !33
  %1263 = getelementptr inbounds nuw i8, ptr %1259, i64 2
  %1264 = load i8, ptr %1260, align 1, !tbaa !33
  %1265 = getelementptr inbounds nuw i8, ptr %1257, i64 2
  store i8 %1264, ptr %1262, align 1, !tbaa !33
  %1266 = load i8, ptr %1263, align 1, !tbaa !33
  store i8 %1266, ptr %1265, align 1, !tbaa !33
  %1267 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1258, i32 3), !nosanitize !16
  %1268 = extractvalue { i32, i1 } %1267, 1, !nosanitize !16
  br i1 %1268, label %.loopexit76, label %1269, !prof !17, !nosanitize !16

.loopexit76:                                      ; preds = %1256, %283
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

1269:                                             ; preds = %1256
  %1270 = extractvalue { i32, i1 } %1267, 0, !nosanitize !16
  %1271 = getelementptr inbounds nuw i8, ptr %1257, i64 3
  %1272 = getelementptr inbounds nuw i8, ptr %1259, i64 3
  %1273 = icmp ugt i32 %1270, 2
  br i1 %1273, label %1256, label %1274, !llvm.loop !40

1274:                                             ; preds = %1269
  %1275 = icmp eq i32 %1270, 0
  br i1 %1275, label %1326, label %1276

1276:                                             ; preds = %1274
  %1277 = load i8, ptr %1272, align 1, !tbaa !33
  %1278 = getelementptr inbounds nuw i8, ptr %1257, i64 4
  store i8 %1277, ptr %1271, align 1, !tbaa !33
  %1279 = icmp eq i32 %1270, 2
  br i1 %1279, label %1280, label %1326

1280:                                             ; preds = %1276
  %1281 = getelementptr inbounds nuw i8, ptr %1259, i64 4
  %1282 = load i8, ptr %1281, align 1, !tbaa !33
  %1283 = getelementptr inbounds nuw i8, ptr %1257, i64 5
  store i8 %1282, ptr %1278, align 1, !tbaa !33
  br label %1326

1284:                                             ; preds = %847
  %1285 = and i32 %853, 64
  %1286 = icmp eq i32 %1285, 0
  br i1 %1286, label %1287, label %.loopexit5

1287:                                             ; preds = %1284
  %1288 = shl nsw i32 -1, %853
  %1289 = xor i32 %1288, -1
  %1290 = getelementptr inbounds nuw i8, ptr %850, i64 2
  %1291 = load i16, ptr %1290, align 2, !tbaa !39
  %1292 = zext i16 %1291 to i64
  %1293 = getelementptr inbounds nuw [4 x i8], ptr %52, i64 %1292
  %1294 = zext nneg i32 %1289 to i64
  %1295 = and i64 %849, %1294
  %1296 = getelementptr inbounds nuw [4 x i8], ptr %1293, i64 %1295
  %1297 = getelementptr inbounds nuw i8, ptr %1296, i64 1
  %1298 = load i8, ptr %1297, align 1, !tbaa !34
  %1299 = zext i8 %1298 to i32
  %1300 = zext nneg i8 %1298 to i64
  %1301 = lshr i64 %849, %1300
  %1302 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %851, i32 %1299), !nosanitize !16
  %1303 = extractvalue { i32, i1 } %1302, 1, !nosanitize !16
  br i1 %1303, label %.loopexit6, label %847, !prof !63, !nosanitize !16

1304:                                             ; preds = %769
  %1305 = and i32 %762, 64
  %1306 = icmp eq i32 %1305, 0
  br i1 %1306, label %1307, label %.loopexit77

1307:                                             ; preds = %1304
  %1308 = shl nsw i32 -1, %762
  %1309 = xor i32 %1308, -1
  %1310 = getelementptr inbounds nuw i8, ptr %759, i64 2
  %1311 = load i16, ptr %1310, align 2, !tbaa !39
  %1312 = zext i16 %1311 to i64
  %1313 = getelementptr inbounds nuw [4 x i8], ptr %50, i64 %1312
  %1314 = zext nneg i32 %1309 to i64
  %1315 = and i64 %758, %1314
  %1316 = getelementptr inbounds nuw [4 x i8], ptr %1313, i64 %1315
  %1317 = getelementptr inbounds nuw i8, ptr %1316, i64 1
  %1318 = load i8, ptr %1317, align 1, !tbaa !34
  %1319 = zext i8 %1318 to i32
  %1320 = zext nneg i8 %1318 to i64
  %1321 = lshr i64 %758, %1320
  %1322 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %760, i32 %1319), !nosanitize !16
  %1323 = extractvalue { i32, i1 } %1322, 1, !nosanitize !16
  br i1 %1323, label %.loopexit7, label %756, !prof !63, !nosanitize !16

.loopexit77:                                      ; preds = %1304, %683
  %.lcssa148 = phi ptr [ %128, %683 ], [ %745, %1304 ]
  %.lcssa125 = phi ptr [ %101, %683 ], [ %718, %1304 ]
  %.lcssa26 = phi i64 [ %141, %683 ], [ %758, %1304 ]
  %.lcssa18 = phi i32 [ %143, %683 ], [ %760, %1304 ]
  %.lcssa14 = phi i32 [ %145, %683 ], [ %762, %1304 ]
  %1324 = and i32 %.lcssa14, 32
  %1325 = icmp eq i32 %1324, 0
  br i1 %1325, label %.loopexit5, label %1340

1326:                                             ; preds = %1280, %1276, %1274, %1248, %1244, %.loopexit, %764
  %1327 = phi i32 [ %760, %764 ], [ %896, %1248 ], [ %896, %1244 ], [ %896, %.loopexit ], [ %896, %1280 ], [ %896, %1276 ], [ %896, %1274 ]
  %1328 = phi i64 [ %758, %764 ], [ %895, %1248 ], [ %895, %1244 ], [ %895, %.loopexit ], [ %895, %1280 ], [ %895, %1276 ], [ %895, %1274 ]
  %1329 = phi ptr [ %768, %764 ], [ %1251, %1248 ], [ %1246, %1244 ], [ %1240, %.loopexit ], [ %1283, %1280 ], [ %1278, %1276 ], [ %1271, %1274 ]
  %1330 = phi ptr [ %745, %764 ], [ %888, %1248 ], [ %888, %1244 ], [ %888, %.loopexit ], [ %888, %1280 ], [ %888, %1276 ], [ %888, %1274 ]
  %1331 = icmp ult ptr %1330, %14
  %1332 = icmp ult ptr %1329, %35
  %1333 = select i1 %1331, i1 %1332, i1 false
  br i1 %1333, label %.mv.ph, label %.loopexit12, !llvm.loop !64

.loopexit5:                                       ; preds = %904, %1284, %314, %663, %.loopexit77
  %1334 = phi ptr [ %.lcssa125, %.loopexit77 ], [ %101, %663 ], [ %101, %314 ], [ %718, %1284 ], [ %718, %904 ]
  %1335 = phi ptr [ @.str.2, %.loopexit77 ], [ @.str.1, %663 ], [ @.str, %314 ], [ @.str.1, %1284 ], [ @.str, %904 ]
  %1336 = phi i32 [ %.lcssa18, %.loopexit77 ], [ %229, %663 ], [ %274, %314 ], [ %851, %1284 ], [ %896, %904 ]
  %1337 = phi i64 [ %.lcssa26, %.loopexit77 ], [ %227, %663 ], [ %273, %314 ], [ %849, %1284 ], [ %895, %904 ]
  %1338 = phi ptr [ %.lcssa148, %.loopexit77 ], [ %214, %663 ], [ %266, %314 ], [ %836, %1284 ], [ %888, %904 ]
  %1339 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1335, ptr %1339, align 8, !tbaa !77
  br label %1340

1340:                                             ; preds = %.loopexit5, %.loopexit77
  %1341 = phi ptr [ %.lcssa125, %.loopexit77 ], [ %1334, %.loopexit5 ]
  %1342 = phi i32 [ 16191, %.loopexit77 ], [ 16209, %.loopexit5 ]
  %1343 = phi i32 [ %.lcssa18, %.loopexit77 ], [ %1336, %.loopexit5 ]
  %1344 = phi i64 [ %.lcssa26, %.loopexit77 ], [ %1337, %.loopexit5 ]
  %1345 = phi ptr [ %.lcssa148, %.loopexit77 ], [ %1338, %.loopexit5 ]
  %1346 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %1342, ptr %1346, align 8, !tbaa !78
  br label %.loopexit12

.loopexit12:                                      ; preds = %1326, %708, %1340
  %1347 = phi i32 [ %1343, %1340 ], [ %709, %708 ], [ %1327, %1326 ]
  %1348 = phi i64 [ %1344, %1340 ], [ %710, %708 ], [ %1328, %1326 ]
  %1349 = phi ptr [ %1341, %1340 ], [ %711, %708 ], [ %1329, %1326 ]
  %1350 = phi ptr [ %1345, %1340 ], [ %712, %708 ], [ %1330, %1326 ]
  %1351 = lshr i32 %1347, 3
  %1352 = zext nneg i32 %1351 to i64
  %1353 = sub nsw i64 0, %1352
  %1354 = getelementptr inbounds i8, ptr %1350, i64 %1353
  store ptr %1354, ptr %0, align 8, !tbaa !14
  store ptr %1349, ptr %15, align 8, !tbaa !18
  %1355 = icmp ult ptr %1354, %14
  br i1 %1355, label %1357, label %1363

1356:                                             ; preds = %1380, %1363
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

1357:                                             ; preds = %.loopexit12
  %1358 = ptrtoint ptr %14 to i64
  %1359 = ptrtoint ptr %1354 to i64
  %1360 = sub i64 %1358, %1359
  %1361 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1360, i64 5), !nosanitize !16
  %1362 = extractvalue { i64, i1 } %1361, 1, !nosanitize !16
  br i1 %1362, label %.loopexit11, label %1369, !prof !17, !nosanitize !16

1363:                                             ; preds = %.loopexit12
  %1364 = ptrtoint ptr %1354 to i64
  %1365 = ptrtoint ptr %14 to i64
  %1366 = sub i64 %1364, %1365
  %1367 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 5, i64 %1366), !nosanitize !16
  %1368 = extractvalue { i64, i1 } %1367, 1, !nosanitize !16
  br i1 %1368, label %1356, label %1369, !prof !17, !nosanitize !16

1369:                                             ; preds = %1363, %1357
  %1370 = phi { i64, i1 } [ %1361, %1357 ], [ %1367, %1363 ]
  %1371 = extractvalue { i64, i1 } %1370, 0
  %1372 = trunc i64 %1371 to i32
  store i32 %1372, ptr %6, align 8, !tbaa !15
  %1373 = icmp ult ptr %1349, %35
  br i1 %1373, label %1374, label %1380

1374:                                             ; preds = %1369
  %1375 = ptrtoint ptr %35 to i64
  %1376 = ptrtoint ptr %1349 to i64
  %1377 = sub i64 %1375, %1376
  %1378 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1377, i64 257), !nosanitize !16
  %1379 = extractvalue { i64, i1 } %1378, 1, !nosanitize !16
  br i1 %1379, label %.loopexit11, label %1386, !prof !17, !nosanitize !16

1380:                                             ; preds = %1369
  %1381 = ptrtoint ptr %1349 to i64
  %1382 = ptrtoint ptr %35 to i64
  %1383 = sub i64 %1381, %1382
  %1384 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 257, i64 %1383), !nosanitize !16
  %1385 = extractvalue { i64, i1 } %1384, 1, !nosanitize !16
  br i1 %1385, label %1356, label %1386, !prof !17, !nosanitize !16

1386:                                             ; preds = %1380, %1374
  %1387 = phi { i64, i1 } [ %1378, %1374 ], [ %1384, %1380 ]
  %1388 = extractvalue { i64, i1 } %1387, 0
  %1389 = and i32 %1347, 7
  %1390 = shl nsw i32 -1, %1389
  %1391 = xor i32 %1390, -1
  %1392 = zext nneg i32 %1391 to i64
  %1393 = and i64 %1348, %1392
  %1394 = trunc i64 %1388 to i32
  store i32 %1394, ptr %19, align 8, !tbaa !19
  store i64 %1393, ptr %45, align 8, !tbaa !27
  store i32 %1389, ptr %47, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #1

attributes #0 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { nomerge noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !13, i64 56}
!6 = !{!"z_stream_s", !7, i64 0, !11, i64 8, !12, i64 16, !7, i64 24, !11, i64 32, !12, i64 40, !7, i64 48, !13, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !11, i64 88, !12, i64 96, !12, i64 104}
!7 = !{!"p1 omnipotent char", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!"p1 _ZTS14internal_state", !8, i64 0}
!14 = !{!6, !7, i64 0}
!15 = !{!6, !11, i64 8}
!16 = !{}
!17 = !{!"branch_weights", i32 1, i32 1048575}
!18 = !{!6, !7, i64 24}
!19 = !{!6, !11, i64 32}
!20 = !{!21, !11, i64 60}
!21 = !{!"inflate_state", !22, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !12, i64 32, !12, i64 40, !23, i64 48, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !7, i64 72, !12, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !8, i64 104, !8, i64 112, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !8, i64 144, !9, i64 152, !9, i64 792, !9, i64 1368, !11, i64 7144, !11, i64 7148, !11, i64 7152}
!22 = !{!"p1 _ZTS10z_stream_s", !8, i64 0}
!23 = !{!"p1 _ZTS11gz_header_s", !8, i64 0}
!24 = !{!21, !11, i64 64}
!25 = !{!21, !11, i64 68}
!26 = !{!21, !7, i64 72}
!27 = !{!21, !12, i64 80}
!28 = !{!21, !11, i64 88}
!29 = !{!21, !8, i64 104}
!30 = !{!21, !8, i64 112}
!31 = !{!21, !11, i64 120}
!32 = !{!21, !11, i64 124}
!33 = !{!9, !9, i64 0}
!34 = !{!35, !9, i64 1}
!35 = !{!"", !9, i64 0, !9, i64 1, !36, i64 2}
!36 = !{!"short", !9, i64 0}
!37 = !{!"branch_weights", i32 1, i32 127}
!38 = !{!35, !9, i64 0}
!39 = !{!35, !36, i64 2}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!21, !11, i64 7144}
!43 = distinct !{!43, !41, !44, !45}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!"branch_weights", i32 4, i32 28}
!47 = distinct !{!47, !41, !44, !45}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = distinct !{!50, !41, !44}
!51 = distinct !{!51, !41, !44, !45}
!52 = distinct !{!52, !41, !44, !45}
!53 = distinct !{!53, !49}
!54 = distinct !{!54, !41, !44}
!55 = distinct !{!55, !41, !44, !45}
!56 = distinct !{!56, !49}
!57 = distinct !{!57, !41, !44}
!58 = distinct !{!58, !41, !44, !45}
!59 = distinct !{!59, !41, !44, !45}
!60 = distinct !{!60, !49}
!61 = distinct !{!61, !41, !44}
!62 = distinct !{!62, !41}
!63 = !{!"branch_weights", i32 127, i32 134217473}
!64 = distinct !{!64, !41}
!65 = distinct !{!65, !41, !44, !45}
!66 = distinct !{!66, !41, !44, !45}
!67 = distinct !{!67, !49}
!68 = distinct !{!68, !41, !44}
!69 = distinct !{!69, !41, !44, !45}
!70 = distinct !{!70, !41, !44, !45}
!71 = distinct !{!71, !49}
!72 = distinct !{!72, !41, !44}
!73 = distinct !{!73, !41, !44, !45}
!74 = distinct !{!74, !41, !44, !45}
!75 = distinct !{!75, !49}
!76 = distinct !{!76, !41, !44}
!77 = !{!6, !7, i64 48}
!78 = !{!21, !11, i64 8}
