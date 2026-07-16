; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/unsigned.inffast.or.ll'
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
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %19 = load i32, ptr %18, align 8, !tbaa !19
  %20 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1, i32 %19), !nosanitize !16
  %21 = extractvalue { i32, i1 } %20, 1, !nosanitize !16
  br i1 %21, label %22, label %23, !prof !17, !nosanitize !16

22:                                               ; preds = %11
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

23:                                               ; preds = %11
  %24 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %19, i32 257), !nosanitize !16
  %25 = extractvalue { i32, i1 } %24, 1, !nosanitize !16
  br i1 %25, label %26, label %27, !prof !17, !nosanitize !16

26:                                               ; preds = %23
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

27:                                               ; preds = %23
  %28 = extractvalue { i32, i1 } %20, 0, !nosanitize !16
  %29 = zext i32 %28 to i64
  %30 = sub nsw i64 0, %29
  %31 = getelementptr inbounds i8, ptr %16, i64 %30
  %32 = extractvalue { i32, i1 } %24, 0, !nosanitize !16
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds nuw i8, ptr %16, i64 %33
  %35 = getelementptr inbounds nuw i8, ptr %4, i64 60
  %36 = load i32, ptr %35, align 4, !tbaa !20
  %37 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %38 = load i32, ptr %37, align 8, !tbaa !24
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 68
  %40 = load i32, ptr %39, align 4, !tbaa !25
  %41 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %42 = load ptr, ptr %41, align 8, !tbaa !26
  %43 = ptrtoaddr ptr %42 to i64
  %44 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %45 = load i64, ptr %44, align 8, !tbaa !27
  %46 = getelementptr inbounds nuw i8, ptr %4, i64 88
  %47 = load i32, ptr %46, align 8, !tbaa !28
  %48 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %49 = load ptr, ptr %48, align 8, !tbaa !29
  %50 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %51 = load ptr, ptr %50, align 8, !tbaa !30
  %52 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %53 = load i32, ptr %52, align 8, !tbaa !31
  %54 = shl nsw i32 -1, %53
  %55 = xor i32 %54, -1
  %56 = getelementptr inbounds nuw i8, ptr %4, i64 124
  %57 = load i32, ptr %56, align 4, !tbaa !32
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = zext nneg i32 %55 to i64
  %61 = zext nneg i32 %59 to i64
  %62 = ptrtoint ptr %31 to i64
  %63 = getelementptr inbounds nuw i8, ptr %4, i64 7144
  %64 = icmp eq i32 %40, 0
  %65 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %36, i32 %40)
  %66 = extractvalue { i32, i1 } %65, 1
  %67 = extractvalue { i32, i1 } %65, 0
  %68 = trunc i64 %17 to i32
  %69 = add i32 %19, %68
  %70 = add i32 %69, -1
  %71 = sub i32 %70, %1
  %72 = add i32 %40, %1
  %73 = zext i32 %40 to i64
  %74 = xor i32 %40, -1
  %75 = icmp ult i32 %40, 4
  %76 = icmp ult i32 %40, 32
  %77 = and i64 %73, 28
  %78 = and i64 %73, 4294967264
  %79 = trunc nuw i64 %78 to i32
  %80 = sub i32 %40, %79
  %81 = getelementptr i8, ptr %42, i64 %78
  %82 = icmp eq i64 %78, %73
  %83 = icmp eq i64 %77, 0
  %84 = and i64 %73, 4294967292
  %85 = trunc nuw i64 %84 to i32
  %86 = sub i32 %40, %85
  %87 = getelementptr i8, ptr %42, i64 %84
  %88 = icmp eq i64 %84, %73
  %invariant.op = sub i32 %40, %69
  %.neg50 = add i32 %36, %1
  %.reass = add i32 %.neg50, %invariant.op
  %89 = add i32 %69, %74
  br label %90

90:                                               ; preds = %929, %27
  %91 = phi i32 [ %47, %27 ], [ %930, %929 ]
  %92 = phi i64 [ %45, %27 ], [ %931, %929 ]
  %93 = phi ptr [ %16, %27 ], [ %932, %929 ]
  %94 = phi ptr [ %5, %27 ], [ %933, %929 ]
  %95 = icmp ult i32 %91, 15
  br i1 %95, label %96, label %119

96:                                               ; preds = %90
  %97 = load i8, ptr %94, align 1, !tbaa !33
  %98 = zext i8 %97 to i64
  %99 = zext nneg i32 %91 to i64
  %100 = shl nuw nsw i64 %98, %99
  %101 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %92, i64 %100), !nosanitize !16
  %102 = extractvalue { i64, i1 } %101, 1, !nosanitize !16
  br i1 %102, label %103, label %104, !prof !17, !nosanitize !16

103:                                              ; preds = %96
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

104:                                              ; preds = %96
  %105 = extractvalue { i64, i1 } %101, 0, !nosanitize !16
  %106 = getelementptr inbounds nuw i8, ptr %94, i64 1
  %107 = add nuw nsw i32 %91, 8
  %108 = load i8, ptr %106, align 1, !tbaa !33
  %109 = zext i8 %108 to i64
  %110 = zext nneg i32 %107 to i64
  %111 = shl nuw nsw i64 %109, %110
  %112 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %105, i64 %111), !nosanitize !16
  %113 = extractvalue { i64, i1 } %112, 1, !nosanitize !16
  br i1 %113, label %114, label %115, !prof !17, !nosanitize !16

114:                                              ; preds = %104
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

115:                                              ; preds = %104
  %116 = extractvalue { i64, i1 } %112, 0, !nosanitize !16
  %117 = getelementptr inbounds nuw i8, ptr %94, i64 2
  %118 = or disjoint i32 %91, 16
  br label %119

119:                                              ; preds = %115, %90
  %120 = phi i32 [ %118, %115 ], [ %91, %90 ]
  %121 = phi i64 [ %116, %115 ], [ %92, %90 ]
  %122 = phi ptr [ %117, %115 ], [ %94, %90 ]
  %123 = and i64 %121, %60
  %124 = getelementptr inbounds nuw [4 x i8], ptr %49, i64 %123
  %125 = getelementptr inbounds nuw i8, ptr %124, i64 1
  %126 = load i8, ptr %125, align 1, !tbaa !34
  %127 = zext i8 %126 to i32
  %128 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %120, i32 %127), !nosanitize !16
  %129 = extractvalue { i32, i1 } %128, 1, !nosanitize !16
  br i1 %129, label %.loopexit79, label %130, !prof !37, !nosanitize !16

130:                                              ; preds = %119
  %131 = zext nneg i8 %126 to i64
  %132 = lshr i64 %121, %131
  br label %133

.loopexit79:                                      ; preds = %119, %909
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

133:                                              ; preds = %909, %130
  %134 = phi { i32, i1 } [ %924, %909 ], [ %128, %130 ]
  %135 = phi i64 [ %923, %909 ], [ %132, %130 ]
  %136 = phi ptr [ %918, %909 ], [ %124, %130 ]
  %137 = extractvalue { i32, i1 } %134, 0
  %138 = load i8, ptr %136, align 2, !tbaa !38
  %139 = zext i8 %138 to i32
  %140 = icmp eq i8 %138, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %133
  %142 = getelementptr inbounds nuw i8, ptr %136, i64 2
  %143 = load i16, ptr %142, align 2, !tbaa !39
  %144 = trunc i16 %143 to i8
  %145 = getelementptr inbounds nuw i8, ptr %93, i64 1
  store i8 %144, ptr %93, align 1, !tbaa !33
  br label %929

146:                                              ; preds = %133
  %147 = and i32 %139, 16
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %906, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds nuw i8, ptr %136, i64 2
  %151 = load i16, ptr %150, align 2, !tbaa !39
  %152 = zext i16 %151 to i32
  %153 = and i32 %139, 15
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %185, label %155

155:                                              ; preds = %149
  %156 = icmp ult i32 %137, %153
  br i1 %156, label %157, label %169

157:                                              ; preds = %155
  %158 = load i8, ptr %122, align 1, !tbaa !33
  %159 = zext i8 %158 to i64
  %160 = zext nneg i32 %137 to i64
  %161 = shl nuw nsw i64 %159, %160
  %162 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %135, i64 %161), !nosanitize !16
  %163 = extractvalue { i64, i1 } %162, 1, !nosanitize !16
  br i1 %163, label %164, label %165, !prof !17, !nosanitize !16

164:                                              ; preds = %157
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

165:                                              ; preds = %157
  %166 = extractvalue { i64, i1 } %162, 0, !nosanitize !16
  %167 = getelementptr inbounds nuw i8, ptr %122, i64 1
  %168 = add nuw nsw i32 %137, 8
  br label %169

169:                                              ; preds = %165, %155
  %170 = phi i32 [ %168, %165 ], [ %137, %155 ]
  %171 = phi i64 [ %166, %165 ], [ %135, %155 ]
  %172 = phi ptr [ %167, %165 ], [ %122, %155 ]
  %173 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %170, i32 %153), !nosanitize !16
  %174 = extractvalue { i32, i1 } %173, 1, !nosanitize !16
  br i1 %174, label %175, label %176, !prof !17, !nosanitize !16

175:                                              ; preds = %169
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

176:                                              ; preds = %169
  %177 = trunc i64 %171 to i32
  %178 = shl nsw i32 -1, %153
  %179 = xor i32 %178, -1
  %180 = and i32 %177, %179
  %181 = add nuw nsw i32 %180, %152
  %182 = extractvalue { i32, i1 } %173, 0, !nosanitize !16
  %183 = zext nneg i32 %153 to i64
  %184 = lshr i64 %171, %183
  br label %185

185:                                              ; preds = %176, %149
  %186 = phi i32 [ %182, %176 ], [ %137, %149 ]
  %187 = phi i64 [ %184, %176 ], [ %135, %149 ]
  %188 = phi ptr [ %172, %176 ], [ %122, %149 ]
  %189 = phi i32 [ %181, %176 ], [ %152, %149 ]
  %190 = icmp ult i32 %186, 15
  br i1 %190, label %191, label %214

191:                                              ; preds = %185
  %192 = load i8, ptr %188, align 1, !tbaa !33
  %193 = zext i8 %192 to i64
  %194 = zext nneg i32 %186 to i64
  %195 = shl nuw nsw i64 %193, %194
  %196 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %187, i64 %195), !nosanitize !16
  %197 = extractvalue { i64, i1 } %196, 1, !nosanitize !16
  br i1 %197, label %198, label %199, !prof !17, !nosanitize !16

198:                                              ; preds = %191
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

199:                                              ; preds = %191
  %200 = extractvalue { i64, i1 } %196, 0, !nosanitize !16
  %201 = getelementptr inbounds nuw i8, ptr %188, i64 1
  %202 = add nuw nsw i32 %186, 8
  %203 = load i8, ptr %201, align 1, !tbaa !33
  %204 = zext i8 %203 to i64
  %205 = zext nneg i32 %202 to i64
  %206 = shl nuw nsw i64 %204, %205
  %207 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %200, i64 %206), !nosanitize !16
  %208 = extractvalue { i64, i1 } %207, 1, !nosanitize !16
  br i1 %208, label %209, label %210, !prof !17, !nosanitize !16

209:                                              ; preds = %199
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

210:                                              ; preds = %199
  %211 = extractvalue { i64, i1 } %207, 0, !nosanitize !16
  %212 = getelementptr inbounds nuw i8, ptr %188, i64 2
  %213 = or disjoint i32 %186, 16
  br label %214

214:                                              ; preds = %210, %185
  %215 = phi i32 [ %213, %210 ], [ %186, %185 ]
  %216 = phi i64 [ %211, %210 ], [ %187, %185 ]
  %217 = phi ptr [ %212, %210 ], [ %188, %185 ]
  %218 = and i64 %216, %61
  %219 = getelementptr inbounds nuw [4 x i8], ptr %51, i64 %218
  %220 = getelementptr inbounds nuw i8, ptr %219, i64 1
  %221 = load i8, ptr %220, align 1, !tbaa !34
  %222 = zext i8 %221 to i32
  %223 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %215, i32 %222), !nosanitize !16
  %224 = extractvalue { i32, i1 } %223, 1, !nosanitize !16
  br i1 %224, label %.loopexit78, label %225, !prof !37, !nosanitize !16

225:                                              ; preds = %214
  %226 = zext nneg i8 %221 to i64
  %227 = lshr i64 %216, %226
  br label %228

.loopexit78:                                      ; preds = %214, %889
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

228:                                              ; preds = %889, %225
  %229 = phi { i32, i1 } [ %904, %889 ], [ %223, %225 ]
  %230 = phi i64 [ %903, %889 ], [ %227, %225 ]
  %231 = phi ptr [ %898, %889 ], [ %219, %225 ]
  %232 = extractvalue { i32, i1 } %229, 0
  %233 = load i8, ptr %231, align 2, !tbaa !38
  %234 = zext i8 %233 to i32
  %235 = and i32 %234, 16
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %886, label %237

237:                                              ; preds = %228
  %238 = getelementptr inbounds nuw i8, ptr %231, i64 2
  %239 = load i16, ptr %238, align 2, !tbaa !39
  %240 = zext i16 %239 to i32
  %241 = and i32 %234, 15
  %242 = icmp ult i32 %232, %241
  br i1 %242, label %243, label %268

243:                                              ; preds = %237
  %244 = getelementptr inbounds nuw i8, ptr %217, i64 1
  %245 = load i8, ptr %217, align 1, !tbaa !33
  %246 = zext i8 %245 to i64
  %247 = zext nneg i32 %232 to i64
  %248 = shl nuw nsw i64 %246, %247
  %249 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %230, i64 %248), !nosanitize !16
  %250 = extractvalue { i64, i1 } %249, 0, !nosanitize !16
  %251 = extractvalue { i64, i1 } %249, 1, !nosanitize !16
  br i1 %251, label %252, label %253, !prof !17, !nosanitize !16

252:                                              ; preds = %243
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

253:                                              ; preds = %243
  %254 = add nuw nsw i32 %232, 8
  %255 = icmp samesign ult i32 %254, %241
  br i1 %255, label %256, label %268

256:                                              ; preds = %253
  %257 = load i8, ptr %244, align 1, !tbaa !33
  %258 = zext i8 %257 to i64
  %259 = zext nneg i32 %254 to i64
  %260 = shl nuw nsw i64 %258, %259
  %261 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %250, i64 %260), !nosanitize !16
  %262 = extractvalue { i64, i1 } %261, 1, !nosanitize !16
  br i1 %262, label %263, label %264, !prof !17, !nosanitize !16

263:                                              ; preds = %256
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

264:                                              ; preds = %256
  %265 = extractvalue { i64, i1 } %261, 0, !nosanitize !16
  %266 = getelementptr inbounds nuw i8, ptr %217, i64 2
  %267 = add nuw nsw i32 %232, 16
  br label %268

268:                                              ; preds = %264, %253, %237
  %269 = phi i32 [ %267, %264 ], [ %254, %253 ], [ %232, %237 ]
  %270 = phi i64 [ %265, %264 ], [ %250, %253 ], [ %230, %237 ]
  %271 = phi ptr [ %266, %264 ], [ %244, %253 ], [ %217, %237 ]
  %272 = shl nsw i32 -1, %241
  %273 = xor i32 %272, -1
  %274 = trunc i64 %270 to i32
  %275 = and i32 %274, %273
  %276 = add nuw nsw i32 %275, %240
  %277 = zext nneg i32 %241 to i64
  %278 = lshr i64 %270, %277
  %279 = sub i32 %269, %241
  %280 = ptrtoint ptr %93 to i64
  %281 = sub i64 %280, %62
  %282 = trunc i64 %281 to i32
  %283 = icmp ugt i32 %276, %282
  br i1 %283, label %284, label %807

284:                                              ; preds = %268
  %285 = sub nuw nsw i32 %276, %282
  %286 = icmp ugt i32 %285, %38
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = load i32, ptr %63, align 8, !tbaa !40
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %.loopexit77

290:                                              ; preds = %287, %284
  br i1 %64, label %291, label %414

291:                                              ; preds = %290
  %292 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %36, i32 %285), !nosanitize !16
  %293 = extractvalue { i32, i1 } %292, 1, !nosanitize !16
  br i1 %293, label %294, label %295, !prof !17, !nosanitize !16

294:                                              ; preds = %291
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

295:                                              ; preds = %291
  %296 = extractvalue { i32, i1 } %292, 0, !nosanitize !16
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds nuw i8, ptr %42, i64 %297
  %299 = icmp ult i32 %285, %189
  br i1 %299, label %300, label %745

300:                                              ; preds = %295
  %301 = sub nuw nsw i32 %189, %285
  %302 = trunc i64 %280 to i32
  %303 = sub i32 %71, %302
  %304 = add i32 %303, %240
  %305 = add i32 %304, %275
  %306 = icmp ugt i32 %285, %305
  br i1 %306, label %307, label %379, !prof !41, !nosanitize !16

307:                                              ; preds = %300
  %308 = zext nneg i32 %285 to i64
  %309 = icmp samesign ult i32 %285, 4
  br i1 %309, label %358, label %310

310:                                              ; preds = %307
  %311 = add i32 %.neg50, %302
  %312 = add i32 %69, %240
  %313 = add i32 %312, %275
  %314 = sub i32 %311, %313
  %315 = zext i32 %314 to i64
  %316 = add i64 %43, %315
  %317 = sub i64 %280, %316
  %318 = icmp ult i64 %317, 32
  br i1 %318, label %358, label %319

319:                                              ; preds = %310
  %320 = icmp samesign ult i32 %285, 32
  br i1 %320, label %342, label %321

321:                                              ; preds = %319
  %322 = and i64 %308, 2147483616
  br label %323

323:                                              ; preds = %323, %321
  %324 = phi i64 [ 0, %321 ], [ %331, %323 ]
  %325 = getelementptr i8, ptr %93, i64 %324
  %326 = getelementptr i8, ptr %298, i64 %324
  %327 = getelementptr i8, ptr %326, i64 16
  %328 = load <16 x i8>, ptr %326, align 1, !tbaa !33
  %329 = load <16 x i8>, ptr %327, align 1, !tbaa !33
  %330 = getelementptr i8, ptr %325, i64 16
  store <16 x i8> %328, ptr %325, align 1, !tbaa !33
  store <16 x i8> %329, ptr %330, align 1, !tbaa !33
  %331 = add nuw i64 %324, 32
  %332 = icmp eq i64 %331, %322
  br i1 %332, label %333, label %323, !llvm.loop !42

333:                                              ; preds = %323
  %334 = getelementptr i8, ptr %93, i64 %322
  %335 = icmp eq i64 %322, %308
  br i1 %335, label %.loopexit60, label %336

336:                                              ; preds = %333
  %337 = getelementptr i8, ptr %298, i64 %322
  %338 = trunc nuw nsw i64 %322 to i32
  %339 = sub nsw i32 %285, %338
  %340 = and i64 %308, 28
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %358, label %342, !prof !46

342:                                              ; preds = %336, %319
  %343 = phi i64 [ %322, %336 ], [ 0, %319 ]
  %344 = and i64 %308, 2147483644
  br label %345

345:                                              ; preds = %345, %342
  %346 = phi i64 [ %343, %342 ], [ %350, %345 ]
  %347 = getelementptr i8, ptr %93, i64 %346
  %348 = getelementptr i8, ptr %298, i64 %346
  %349 = load <4 x i8>, ptr %348, align 1, !tbaa !33
  store <4 x i8> %349, ptr %347, align 1, !tbaa !33
  %350 = add nuw i64 %346, 4
  %351 = icmp eq i64 %350, %344
  br i1 %351, label %352, label %345, !llvm.loop !47

352:                                              ; preds = %345
  %353 = getelementptr i8, ptr %93, i64 %344
  %354 = trunc nuw nsw i64 %344 to i32
  %355 = sub nsw i32 %285, %354
  %356 = getelementptr i8, ptr %298, i64 %344
  %357 = icmp eq i64 %344, %308
  br i1 %357, label %.loopexit60, label %358

358:                                              ; preds = %352, %336, %310, %307
  %359 = phi ptr [ %93, %307 ], [ %93, %310 ], [ %334, %336 ], [ %353, %352 ]
  %360 = phi i32 [ %285, %307 ], [ %285, %310 ], [ %339, %336 ], [ %355, %352 ]
  %361 = phi ptr [ %298, %307 ], [ %298, %310 ], [ %337, %336 ], [ %356, %352 ]
  %362 = add nsw i32 %360, -1
  %363 = and i32 %360, 7
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %.loopexit62, label %.preheader61

.preheader61:                                     ; preds = %358, %.preheader61
  %365 = phi ptr [ %369, %.preheader61 ], [ %359, %358 ]
  %366 = phi ptr [ %370, %.preheader61 ], [ %361, %358 ]
  %367 = phi i32 [ %371, %.preheader61 ], [ 0, %358 ]
  %368 = load i8, ptr %366, align 1, !tbaa !33
  store i8 %368, ptr %365, align 1, !tbaa !33
  %369 = getelementptr inbounds nuw i8, ptr %365, i64 1
  %370 = getelementptr inbounds nuw i8, ptr %366, i64 1
  %371 = add nuw nsw i32 %367, 1
  %372 = icmp eq i32 %371, %363
  br i1 %372, label %.loopexit62.loopexit, label %.preheader61, !llvm.loop !48

.loopexit62.loopexit:                             ; preds = %.preheader61
  %373 = and i32 %360, -8
  br label %.loopexit62

.loopexit62:                                      ; preds = %.loopexit62.loopexit, %358
  %374 = phi ptr [ poison, %358 ], [ %369, %.loopexit62.loopexit ]
  %375 = phi ptr [ %359, %358 ], [ %369, %.loopexit62.loopexit ]
  %376 = phi i32 [ %360, %358 ], [ %373, %.loopexit62.loopexit ]
  %377 = phi ptr [ %361, %358 ], [ %370, %.loopexit62.loopexit ]
  %378 = icmp ult i32 %362, 7
  br i1 %378, label %.loopexit60, label %.preheader59

379:                                              ; preds = %300
  %380 = load i8, ptr %298, align 1, !tbaa !33
  store i8 %380, ptr %93, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

.preheader59:                                     ; preds = %.loopexit62, %.preheader59
  %381 = phi ptr [ %406, %.preheader59 ], [ %375, %.loopexit62 ]
  %382 = phi i32 [ %407, %.preheader59 ], [ %376, %.loopexit62 ]
  %383 = phi ptr [ %408, %.preheader59 ], [ %377, %.loopexit62 ]
  %384 = load i8, ptr %383, align 1, !tbaa !33
  store i8 %384, ptr %381, align 1, !tbaa !33
  %385 = getelementptr inbounds nuw i8, ptr %381, i64 1
  %386 = getelementptr inbounds nuw i8, ptr %383, i64 1
  %387 = load i8, ptr %386, align 1, !tbaa !33
  store i8 %387, ptr %385, align 1, !tbaa !33
  %388 = getelementptr inbounds nuw i8, ptr %381, i64 2
  %389 = getelementptr inbounds nuw i8, ptr %383, i64 2
  %390 = load i8, ptr %389, align 1, !tbaa !33
  store i8 %390, ptr %388, align 1, !tbaa !33
  %391 = getelementptr inbounds nuw i8, ptr %381, i64 3
  %392 = getelementptr inbounds nuw i8, ptr %383, i64 3
  %393 = load i8, ptr %392, align 1, !tbaa !33
  store i8 %393, ptr %391, align 1, !tbaa !33
  %394 = getelementptr inbounds nuw i8, ptr %381, i64 4
  %395 = getelementptr inbounds nuw i8, ptr %383, i64 4
  %396 = load i8, ptr %395, align 1, !tbaa !33
  store i8 %396, ptr %394, align 1, !tbaa !33
  %397 = getelementptr inbounds nuw i8, ptr %381, i64 5
  %398 = getelementptr inbounds nuw i8, ptr %383, i64 5
  %399 = load i8, ptr %398, align 1, !tbaa !33
  store i8 %399, ptr %397, align 1, !tbaa !33
  %400 = getelementptr inbounds nuw i8, ptr %381, i64 6
  %401 = getelementptr inbounds nuw i8, ptr %383, i64 6
  %402 = load i8, ptr %401, align 1, !tbaa !33
  store i8 %402, ptr %400, align 1, !tbaa !33
  %403 = getelementptr inbounds nuw i8, ptr %381, i64 7
  %404 = getelementptr inbounds nuw i8, ptr %383, i64 7
  %405 = load i8, ptr %404, align 1, !tbaa !33
  store i8 %405, ptr %403, align 1, !tbaa !33
  %406 = getelementptr inbounds nuw i8, ptr %381, i64 8
  %407 = add i32 %382, -8
  %408 = getelementptr inbounds nuw i8, ptr %383, i64 8
  %409 = icmp eq i32 %407, 0
  br i1 %409, label %.loopexit60, label %.preheader59, !llvm.loop !50

.loopexit60:                                      ; preds = %.preheader59, %.loopexit62, %352, %333
  %410 = phi ptr [ %353, %352 ], [ %334, %333 ], [ %374, %.loopexit62 ], [ %406, %.preheader59 ]
  %411 = zext nneg i32 %276 to i64
  %412 = sub nsw i64 0, %411
  %413 = getelementptr inbounds i8, ptr %410, i64 %412
  br label %745

414:                                              ; preds = %290
  %415 = icmp ult i32 %40, %285
  br i1 %415, label %416, label %626

416:                                              ; preds = %414
  br i1 %66, label %417, label %418, !prof !17, !nosanitize !16

417:                                              ; preds = %416
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

418:                                              ; preds = %416
  %419 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %67, i32 %285), !nosanitize !16
  %420 = extractvalue { i32, i1 } %419, 1, !nosanitize !16
  br i1 %420, label %421, label %422, !prof !17, !nosanitize !16

421:                                              ; preds = %418
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

422:                                              ; preds = %418
  %423 = extractvalue { i32, i1 } %419, 0, !nosanitize !16
  %424 = zext i32 %423 to i64
  %425 = getelementptr inbounds nuw i8, ptr %42, i64 %424
  %426 = sub nsw i32 %285, %40
  %427 = icmp ult i32 %426, %189
  br i1 %427, label %428, label %745

428:                                              ; preds = %422
  %429 = sub nuw nsw i32 %189, %426
  %430 = trunc i64 %280 to i32
  %431 = add i32 %72, %430
  %432 = sub i32 %70, %431
  %433 = add i32 %432, %240
  %434 = add i32 %433, %275
  %435 = icmp ugt i32 %426, %434
  br i1 %435, label %436, label %511, !prof !41, !nosanitize !16

436:                                              ; preds = %428
  %437 = add i32 %1, %430
  %438 = sub i32 %89, %437
  %439 = add i32 %438, %240
  %440 = add i32 %439, %275
  %441 = zext i32 %440 to i64
  %442 = add nuw nsw i64 %441, 1
  %443 = icmp ult i32 %440, 3
  br i1 %443, label %490, label %444

444:                                              ; preds = %436
  %445 = add i32 %.reass, %430
  %446 = sub i32 %445, %276
  %447 = zext i32 %446 to i64
  %448 = add i64 %43, %447
  %449 = sub i64 %280, %448
  %450 = icmp ult i64 %449, 32
  br i1 %450, label %490, label %451

451:                                              ; preds = %444
  %452 = icmp ult i32 %440, 31
  br i1 %452, label %474, label %453

453:                                              ; preds = %451
  %454 = and i64 %442, 8589934560
  br label %455

455:                                              ; preds = %455, %453
  %456 = phi i64 [ 0, %453 ], [ %463, %455 ]
  %457 = getelementptr i8, ptr %93, i64 %456
  %458 = getelementptr i8, ptr %425, i64 %456
  %459 = getelementptr i8, ptr %458, i64 16
  %460 = load <16 x i8>, ptr %458, align 1, !tbaa !33
  %461 = load <16 x i8>, ptr %459, align 1, !tbaa !33
  %462 = getelementptr i8, ptr %457, i64 16
  store <16 x i8> %460, ptr %457, align 1, !tbaa !33
  store <16 x i8> %461, ptr %462, align 1, !tbaa !33
  %463 = add nuw i64 %456, 32
  %464 = icmp eq i64 %463, %454
  br i1 %464, label %465, label %455, !llvm.loop !51

465:                                              ; preds = %455
  %466 = getelementptr i8, ptr %93, i64 %454
  %467 = icmp eq i64 %442, %454
  br i1 %467, label %.loopexit68, label %468

468:                                              ; preds = %465
  %469 = getelementptr i8, ptr %425, i64 %454
  %470 = trunc i64 %454 to i32
  %471 = sub i32 %426, %470
  %472 = and i64 %442, 28
  %473 = icmp eq i64 %472, 0
  br i1 %473, label %490, label %474, !prof !46

474:                                              ; preds = %468, %451
  %475 = phi i64 [ %454, %468 ], [ 0, %451 ]
  %476 = and i64 %442, 8589934588
  br label %477

477:                                              ; preds = %477, %474
  %478 = phi i64 [ %475, %474 ], [ %482, %477 ]
  %479 = getelementptr i8, ptr %93, i64 %478
  %480 = getelementptr i8, ptr %425, i64 %478
  %481 = load <4 x i8>, ptr %480, align 1, !tbaa !33
  store <4 x i8> %481, ptr %479, align 1, !tbaa !33
  %482 = add nuw i64 %478, 4
  %483 = icmp eq i64 %482, %476
  br i1 %483, label %484, label %477, !llvm.loop !52

484:                                              ; preds = %477
  %485 = getelementptr i8, ptr %93, i64 %476
  %486 = trunc i64 %476 to i32
  %487 = sub i32 %426, %486
  %488 = getelementptr i8, ptr %425, i64 %476
  %489 = icmp eq i64 %442, %476
  br i1 %489, label %.loopexit68, label %490

490:                                              ; preds = %484, %468, %444, %436
  %491 = phi ptr [ %93, %436 ], [ %93, %444 ], [ %466, %468 ], [ %485, %484 ]
  %492 = phi i32 [ %426, %436 ], [ %426, %444 ], [ %471, %468 ], [ %487, %484 ]
  %493 = phi ptr [ %425, %436 ], [ %425, %444 ], [ %469, %468 ], [ %488, %484 ]
  %494 = add i32 %492, -1
  %495 = and i32 %492, 7
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %.loopexit70, label %.preheader69

.preheader69:                                     ; preds = %490, %.preheader69
  %497 = phi ptr [ %501, %.preheader69 ], [ %491, %490 ]
  %498 = phi ptr [ %502, %.preheader69 ], [ %493, %490 ]
  %499 = phi i32 [ %503, %.preheader69 ], [ 0, %490 ]
  %500 = load i8, ptr %498, align 1, !tbaa !33
  store i8 %500, ptr %497, align 1, !tbaa !33
  %501 = getelementptr inbounds nuw i8, ptr %497, i64 1
  %502 = getelementptr inbounds nuw i8, ptr %498, i64 1
  %503 = add nuw nsw i32 %499, 1
  %504 = icmp eq i32 %503, %495
  br i1 %504, label %.loopexit70.loopexit, label %.preheader69, !llvm.loop !53

.loopexit70.loopexit:                             ; preds = %.preheader69
  %505 = and i32 %492, -8
  br label %.loopexit70

.loopexit70:                                      ; preds = %.loopexit70.loopexit, %490
  %506 = phi ptr [ poison, %490 ], [ %501, %.loopexit70.loopexit ]
  %507 = phi ptr [ %491, %490 ], [ %501, %.loopexit70.loopexit ]
  %508 = phi i32 [ %492, %490 ], [ %505, %.loopexit70.loopexit ]
  %509 = phi ptr [ %493, %490 ], [ %502, %.loopexit70.loopexit ]
  %510 = icmp ult i32 %494, 7
  br i1 %510, label %.loopexit68, label %.preheader67

511:                                              ; preds = %428
  %512 = load i8, ptr %425, align 1, !tbaa !33
  store i8 %512, ptr %93, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

.preheader67:                                     ; preds = %.loopexit70, %.preheader67
  %513 = phi ptr [ %538, %.preheader67 ], [ %507, %.loopexit70 ]
  %514 = phi i32 [ %539, %.preheader67 ], [ %508, %.loopexit70 ]
  %515 = phi ptr [ %540, %.preheader67 ], [ %509, %.loopexit70 ]
  %516 = load i8, ptr %515, align 1, !tbaa !33
  store i8 %516, ptr %513, align 1, !tbaa !33
  %517 = getelementptr inbounds nuw i8, ptr %513, i64 1
  %518 = getelementptr inbounds nuw i8, ptr %515, i64 1
  %519 = load i8, ptr %518, align 1, !tbaa !33
  store i8 %519, ptr %517, align 1, !tbaa !33
  %520 = getelementptr inbounds nuw i8, ptr %513, i64 2
  %521 = getelementptr inbounds nuw i8, ptr %515, i64 2
  %522 = load i8, ptr %521, align 1, !tbaa !33
  store i8 %522, ptr %520, align 1, !tbaa !33
  %523 = getelementptr inbounds nuw i8, ptr %513, i64 3
  %524 = getelementptr inbounds nuw i8, ptr %515, i64 3
  %525 = load i8, ptr %524, align 1, !tbaa !33
  store i8 %525, ptr %523, align 1, !tbaa !33
  %526 = getelementptr inbounds nuw i8, ptr %513, i64 4
  %527 = getelementptr inbounds nuw i8, ptr %515, i64 4
  %528 = load i8, ptr %527, align 1, !tbaa !33
  store i8 %528, ptr %526, align 1, !tbaa !33
  %529 = getelementptr inbounds nuw i8, ptr %513, i64 5
  %530 = getelementptr inbounds nuw i8, ptr %515, i64 5
  %531 = load i8, ptr %530, align 1, !tbaa !33
  store i8 %531, ptr %529, align 1, !tbaa !33
  %532 = getelementptr inbounds nuw i8, ptr %513, i64 6
  %533 = getelementptr inbounds nuw i8, ptr %515, i64 6
  %534 = load i8, ptr %533, align 1, !tbaa !33
  store i8 %534, ptr %532, align 1, !tbaa !33
  %535 = getelementptr inbounds nuw i8, ptr %513, i64 7
  %536 = getelementptr inbounds nuw i8, ptr %515, i64 7
  %537 = load i8, ptr %536, align 1, !tbaa !33
  store i8 %537, ptr %535, align 1, !tbaa !33
  %538 = getelementptr inbounds nuw i8, ptr %513, i64 8
  %539 = add i32 %514, -8
  %540 = getelementptr inbounds nuw i8, ptr %515, i64 8
  %541 = icmp eq i32 %539, 0
  br i1 %541, label %.loopexit68, label %.preheader67, !llvm.loop !54

.loopexit68:                                      ; preds = %.preheader67, %.loopexit70, %484, %465
  %542 = phi ptr [ %485, %484 ], [ %466, %465 ], [ %506, %.loopexit70 ], [ %538, %.preheader67 ]
  %543 = icmp ult i32 %40, %429
  br i1 %543, label %544, label %745

544:                                              ; preds = %.loopexit68
  %545 = ptrtoaddr ptr %542 to i64
  %546 = sub i64 %545, %43
  %547 = icmp ult i64 %546, 32
  %548 = select i1 %75, i1 true, i1 %547
  br i1 %548, label %571, label %549

549:                                              ; preds = %544
  br i1 %76, label %.preheader689, label %.preheader551

.preheader551:                                    ; preds = %549, %.preheader551
  %550 = phi i64 [ %557, %.preheader551 ], [ 0, %549 ]
  %551 = getelementptr i8, ptr %542, i64 %550
  %552 = getelementptr i8, ptr %42, i64 %550
  %553 = getelementptr i8, ptr %552, i64 16
  %554 = load <16 x i8>, ptr %552, align 1, !tbaa !33
  %555 = load <16 x i8>, ptr %553, align 1, !tbaa !33
  %556 = getelementptr i8, ptr %551, i64 16
  store <16 x i8> %554, ptr %551, align 1, !tbaa !33
  store <16 x i8> %555, ptr %556, align 1, !tbaa !33
  %557 = add nuw nsw i64 %550, 32
  %558 = icmp eq i64 %557, %78
  br i1 %558, label %559, label %.preheader551, !llvm.loop !55

559:                                              ; preds = %.preheader551
  %560 = getelementptr i8, ptr %542, i64 %78
  br i1 %82, label %.loopexit64, label %561

561:                                              ; preds = %559
  br i1 %83, label %571, label %.preheader689, !prof !46

.preheader689:                                    ; preds = %561, %549
  %.ph = phi i64 [ 0, %549 ], [ %78, %561 ]
  br label %562

562:                                              ; preds = %.preheader689, %562
  %563 = phi i64 [ %567, %562 ], [ %.ph, %.preheader689 ]
  %564 = getelementptr i8, ptr %542, i64 %563
  %565 = getelementptr i8, ptr %42, i64 %563
  %566 = load <4 x i8>, ptr %565, align 1, !tbaa !33
  store <4 x i8> %566, ptr %564, align 1, !tbaa !33
  %567 = add nuw i64 %563, 4
  %568 = icmp eq i64 %567, %84
  br i1 %568, label %569, label %562, !llvm.loop !56

569:                                              ; preds = %562
  %570 = getelementptr i8, ptr %542, i64 %84
  br i1 %88, label %.loopexit64, label %571

571:                                              ; preds = %569, %561, %544
  %572 = phi ptr [ %542, %544 ], [ %560, %561 ], [ %570, %569 ]
  %573 = phi i32 [ %40, %544 ], [ %80, %561 ], [ %86, %569 ]
  %574 = phi ptr [ %42, %544 ], [ %81, %561 ], [ %87, %569 ]
  %575 = add i32 %573, -1
  %576 = and i32 %573, 7
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %.loopexit66, label %.preheader65

.preheader65:                                     ; preds = %571, %.preheader65
  %578 = phi ptr [ %582, %.preheader65 ], [ %572, %571 ]
  %579 = phi ptr [ %583, %.preheader65 ], [ %574, %571 ]
  %580 = phi i32 [ %584, %.preheader65 ], [ 0, %571 ]
  %581 = load i8, ptr %579, align 1, !tbaa !33
  %582 = getelementptr inbounds nuw i8, ptr %578, i64 1
  store i8 %581, ptr %578, align 1, !tbaa !33
  %583 = getelementptr inbounds nuw i8, ptr %579, i64 1
  %584 = add nuw nsw i32 %580, 1
  %585 = icmp eq i32 %584, %576
  br i1 %585, label %.loopexit66.loopexit, label %.preheader65, !llvm.loop !57

.loopexit66.loopexit:                             ; preds = %.preheader65
  %586 = and i32 %573, -8
  br label %.loopexit66

.loopexit66:                                      ; preds = %.loopexit66.loopexit, %571
  %587 = phi ptr [ poison, %571 ], [ %582, %.loopexit66.loopexit ]
  %588 = phi ptr [ %572, %571 ], [ %582, %.loopexit66.loopexit ]
  %589 = phi i32 [ %573, %571 ], [ %586, %.loopexit66.loopexit ]
  %590 = phi ptr [ %574, %571 ], [ %583, %.loopexit66.loopexit ]
  %591 = icmp ult i32 %575, 7
  br i1 %591, label %.loopexit64, label %.preheader63

.preheader63:                                     ; preds = %.loopexit66, %.preheader63
  %592 = phi ptr [ %617, %.preheader63 ], [ %588, %.loopexit66 ]
  %593 = phi i32 [ %618, %.preheader63 ], [ %589, %.loopexit66 ]
  %594 = phi ptr [ %619, %.preheader63 ], [ %590, %.loopexit66 ]
  %595 = load i8, ptr %594, align 1, !tbaa !33
  %596 = getelementptr inbounds nuw i8, ptr %592, i64 1
  store i8 %595, ptr %592, align 1, !tbaa !33
  %597 = getelementptr inbounds nuw i8, ptr %594, i64 1
  %598 = load i8, ptr %597, align 1, !tbaa !33
  %599 = getelementptr inbounds nuw i8, ptr %592, i64 2
  store i8 %598, ptr %596, align 1, !tbaa !33
  %600 = getelementptr inbounds nuw i8, ptr %594, i64 2
  %601 = load i8, ptr %600, align 1, !tbaa !33
  %602 = getelementptr inbounds nuw i8, ptr %592, i64 3
  store i8 %601, ptr %599, align 1, !tbaa !33
  %603 = getelementptr inbounds nuw i8, ptr %594, i64 3
  %604 = load i8, ptr %603, align 1, !tbaa !33
  %605 = getelementptr inbounds nuw i8, ptr %592, i64 4
  store i8 %604, ptr %602, align 1, !tbaa !33
  %606 = getelementptr inbounds nuw i8, ptr %594, i64 4
  %607 = load i8, ptr %606, align 1, !tbaa !33
  %608 = getelementptr inbounds nuw i8, ptr %592, i64 5
  store i8 %607, ptr %605, align 1, !tbaa !33
  %609 = getelementptr inbounds nuw i8, ptr %594, i64 5
  %610 = load i8, ptr %609, align 1, !tbaa !33
  %611 = getelementptr inbounds nuw i8, ptr %592, i64 6
  store i8 %610, ptr %608, align 1, !tbaa !33
  %612 = getelementptr inbounds nuw i8, ptr %594, i64 6
  %613 = load i8, ptr %612, align 1, !tbaa !33
  %614 = getelementptr inbounds nuw i8, ptr %592, i64 7
  store i8 %613, ptr %611, align 1, !tbaa !33
  %615 = getelementptr inbounds nuw i8, ptr %594, i64 7
  %616 = load i8, ptr %615, align 1, !tbaa !33
  %617 = getelementptr inbounds nuw i8, ptr %592, i64 8
  store i8 %616, ptr %614, align 1, !tbaa !33
  %618 = add i32 %593, -8
  %619 = getelementptr inbounds nuw i8, ptr %594, i64 8
  %620 = icmp eq i32 %618, 0
  br i1 %620, label %.loopexit64, label %.preheader63, !llvm.loop !58

.loopexit64:                                      ; preds = %.preheader63, %.loopexit66, %569, %559
  %621 = phi ptr [ %570, %569 ], [ %560, %559 ], [ %587, %.loopexit66 ], [ %617, %.preheader63 ]
  %622 = sub nuw nsw i32 %429, %40
  %623 = zext nneg i32 %276 to i64
  %624 = sub nsw i64 0, %623
  %625 = getelementptr inbounds i8, ptr %621, i64 %624
  br label %745

626:                                              ; preds = %414
  %627 = sub nuw i32 %40, %285
  %628 = zext i32 %627 to i64
  %629 = getelementptr inbounds nuw i8, ptr %42, i64 %628
  %630 = icmp ult i32 %285, %189
  br i1 %630, label %631, label %745

631:                                              ; preds = %626
  %632 = sub nuw nsw i32 %189, %285
  %633 = trunc i64 %280 to i32
  %634 = sub i32 %71, %633
  %635 = add i32 %634, %240
  %636 = add i32 %635, %275
  %637 = icmp ugt i32 %285, %636
  br i1 %637, label %638, label %710, !prof !41, !nosanitize !16

638:                                              ; preds = %631
  %639 = zext nneg i32 %285 to i64
  %640 = icmp samesign ult i32 %285, 4
  br i1 %640, label %689, label %641

641:                                              ; preds = %638
  %642 = add i32 %72, %633
  %643 = add i32 %69, %240
  %644 = add i32 %643, %275
  %645 = sub i32 %642, %644
  %646 = zext i32 %645 to i64
  %647 = add i64 %43, %646
  %648 = sub i64 %280, %647
  %649 = icmp ult i64 %648, 32
  br i1 %649, label %689, label %650

650:                                              ; preds = %641
  %651 = icmp samesign ult i32 %285, 32
  br i1 %651, label %673, label %652

652:                                              ; preds = %650
  %653 = and i64 %639, 2147483616
  br label %654

654:                                              ; preds = %654, %652
  %655 = phi i64 [ 0, %652 ], [ %662, %654 ]
  %656 = getelementptr i8, ptr %93, i64 %655
  %657 = getelementptr i8, ptr %629, i64 %655
  %658 = getelementptr i8, ptr %657, i64 16
  %659 = load <16 x i8>, ptr %657, align 1, !tbaa !33
  %660 = load <16 x i8>, ptr %658, align 1, !tbaa !33
  %661 = getelementptr i8, ptr %656, i64 16
  store <16 x i8> %659, ptr %656, align 1, !tbaa !33
  store <16 x i8> %660, ptr %661, align 1, !tbaa !33
  %662 = add nuw i64 %655, 32
  %663 = icmp eq i64 %662, %653
  br i1 %663, label %664, label %654, !llvm.loop !59

664:                                              ; preds = %654
  %665 = getelementptr i8, ptr %93, i64 %653
  %666 = icmp eq i64 %653, %639
  br i1 %666, label %.loopexit72, label %667

667:                                              ; preds = %664
  %668 = getelementptr i8, ptr %629, i64 %653
  %669 = trunc nuw nsw i64 %653 to i32
  %670 = sub nsw i32 %285, %669
  %671 = and i64 %639, 28
  %672 = icmp eq i64 %671, 0
  br i1 %672, label %689, label %673, !prof !46

673:                                              ; preds = %667, %650
  %674 = phi i64 [ %653, %667 ], [ 0, %650 ]
  %675 = and i64 %639, 2147483644
  br label %676

676:                                              ; preds = %676, %673
  %677 = phi i64 [ %674, %673 ], [ %681, %676 ]
  %678 = getelementptr i8, ptr %93, i64 %677
  %679 = getelementptr i8, ptr %629, i64 %677
  %680 = load <4 x i8>, ptr %679, align 1, !tbaa !33
  store <4 x i8> %680, ptr %678, align 1, !tbaa !33
  %681 = add nuw i64 %677, 4
  %682 = icmp eq i64 %681, %675
  br i1 %682, label %683, label %676, !llvm.loop !60

683:                                              ; preds = %676
  %684 = getelementptr i8, ptr %93, i64 %675
  %685 = trunc nuw nsw i64 %675 to i32
  %686 = sub nsw i32 %285, %685
  %687 = getelementptr i8, ptr %629, i64 %675
  %688 = icmp eq i64 %675, %639
  br i1 %688, label %.loopexit72, label %689

689:                                              ; preds = %683, %667, %641, %638
  %690 = phi ptr [ %93, %638 ], [ %93, %641 ], [ %665, %667 ], [ %684, %683 ]
  %691 = phi i32 [ %285, %638 ], [ %285, %641 ], [ %670, %667 ], [ %686, %683 ]
  %692 = phi ptr [ %629, %638 ], [ %629, %641 ], [ %668, %667 ], [ %687, %683 ]
  %693 = add nsw i32 %691, -1
  %694 = and i32 %691, 7
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %.loopexit74, label %.preheader73

.preheader73:                                     ; preds = %689, %.preheader73
  %696 = phi ptr [ %700, %.preheader73 ], [ %690, %689 ]
  %697 = phi ptr [ %701, %.preheader73 ], [ %692, %689 ]
  %698 = phi i32 [ %702, %.preheader73 ], [ 0, %689 ]
  %699 = load i8, ptr %697, align 1, !tbaa !33
  store i8 %699, ptr %696, align 1, !tbaa !33
  %700 = getelementptr inbounds nuw i8, ptr %696, i64 1
  %701 = getelementptr inbounds nuw i8, ptr %697, i64 1
  %702 = add nuw nsw i32 %698, 1
  %703 = icmp eq i32 %702, %694
  br i1 %703, label %.loopexit74.loopexit, label %.preheader73, !llvm.loop !61

.loopexit74.loopexit:                             ; preds = %.preheader73
  %704 = and i32 %691, -8
  br label %.loopexit74

.loopexit74:                                      ; preds = %.loopexit74.loopexit, %689
  %705 = phi ptr [ poison, %689 ], [ %700, %.loopexit74.loopexit ]
  %706 = phi ptr [ %690, %689 ], [ %700, %.loopexit74.loopexit ]
  %707 = phi i32 [ %691, %689 ], [ %704, %.loopexit74.loopexit ]
  %708 = phi ptr [ %692, %689 ], [ %701, %.loopexit74.loopexit ]
  %709 = icmp ult i32 %693, 7
  br i1 %709, label %.loopexit72, label %.preheader71

710:                                              ; preds = %631
  %711 = load i8, ptr %629, align 1, !tbaa !33
  store i8 %711, ptr %93, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

.preheader71:                                     ; preds = %.loopexit74, %.preheader71
  %712 = phi ptr [ %737, %.preheader71 ], [ %706, %.loopexit74 ]
  %713 = phi i32 [ %738, %.preheader71 ], [ %707, %.loopexit74 ]
  %714 = phi ptr [ %739, %.preheader71 ], [ %708, %.loopexit74 ]
  %715 = load i8, ptr %714, align 1, !tbaa !33
  store i8 %715, ptr %712, align 1, !tbaa !33
  %716 = getelementptr inbounds nuw i8, ptr %712, i64 1
  %717 = getelementptr inbounds nuw i8, ptr %714, i64 1
  %718 = load i8, ptr %717, align 1, !tbaa !33
  store i8 %718, ptr %716, align 1, !tbaa !33
  %719 = getelementptr inbounds nuw i8, ptr %712, i64 2
  %720 = getelementptr inbounds nuw i8, ptr %714, i64 2
  %721 = load i8, ptr %720, align 1, !tbaa !33
  store i8 %721, ptr %719, align 1, !tbaa !33
  %722 = getelementptr inbounds nuw i8, ptr %712, i64 3
  %723 = getelementptr inbounds nuw i8, ptr %714, i64 3
  %724 = load i8, ptr %723, align 1, !tbaa !33
  store i8 %724, ptr %722, align 1, !tbaa !33
  %725 = getelementptr inbounds nuw i8, ptr %712, i64 4
  %726 = getelementptr inbounds nuw i8, ptr %714, i64 4
  %727 = load i8, ptr %726, align 1, !tbaa !33
  store i8 %727, ptr %725, align 1, !tbaa !33
  %728 = getelementptr inbounds nuw i8, ptr %712, i64 5
  %729 = getelementptr inbounds nuw i8, ptr %714, i64 5
  %730 = load i8, ptr %729, align 1, !tbaa !33
  store i8 %730, ptr %728, align 1, !tbaa !33
  %731 = getelementptr inbounds nuw i8, ptr %712, i64 6
  %732 = getelementptr inbounds nuw i8, ptr %714, i64 6
  %733 = load i8, ptr %732, align 1, !tbaa !33
  store i8 %733, ptr %731, align 1, !tbaa !33
  %734 = getelementptr inbounds nuw i8, ptr %712, i64 7
  %735 = getelementptr inbounds nuw i8, ptr %714, i64 7
  %736 = load i8, ptr %735, align 1, !tbaa !33
  store i8 %736, ptr %734, align 1, !tbaa !33
  %737 = getelementptr inbounds nuw i8, ptr %712, i64 8
  %738 = add i32 %713, -8
  %739 = getelementptr inbounds nuw i8, ptr %714, i64 8
  %740 = icmp eq i32 %738, 0
  br i1 %740, label %.loopexit72, label %.preheader71, !llvm.loop !62

.loopexit72:                                      ; preds = %.preheader71, %.loopexit74, %683, %664
  %741 = phi ptr [ %684, %683 ], [ %665, %664 ], [ %705, %.loopexit74 ], [ %737, %.preheader71 ]
  %742 = zext nneg i32 %276 to i64
  %743 = sub nsw i64 0, %742
  %744 = getelementptr inbounds i8, ptr %741, i64 %743
  br label %745

745:                                              ; preds = %.loopexit72, %626, %.loopexit64, %.loopexit68, %422, %.loopexit60, %295
  %746 = phi ptr [ %410, %.loopexit60 ], [ %93, %295 ], [ %621, %.loopexit64 ], [ %542, %.loopexit68 ], [ %93, %422 ], [ %741, %.loopexit72 ], [ %93, %626 ]
  %747 = phi i32 [ %301, %.loopexit60 ], [ %189, %295 ], [ %622, %.loopexit64 ], [ %429, %.loopexit68 ], [ %189, %422 ], [ %632, %.loopexit72 ], [ %189, %626 ]
  %748 = phi ptr [ %413, %.loopexit60 ], [ %298, %295 ], [ %625, %.loopexit64 ], [ %42, %.loopexit68 ], [ %425, %422 ], [ %744, %.loopexit72 ], [ %629, %626 ]
  %749 = icmp ugt i32 %747, 2
  br i1 %749, label %750, label %.loopexit

750:                                              ; preds = %745
  %751 = add nsw i32 %747, -3
  %752 = udiv i32 %751, 3
  %753 = and i32 %752, 1
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %755, label %765

755:                                              ; preds = %750
  %756 = getelementptr inbounds nuw i8, ptr %748, i64 1
  %757 = load i8, ptr %748, align 1, !tbaa !33
  %758 = getelementptr inbounds nuw i8, ptr %746, i64 1
  store i8 %757, ptr %746, align 1, !tbaa !33
  %759 = getelementptr inbounds nuw i8, ptr %748, i64 2
  %760 = load i8, ptr %756, align 1, !tbaa !33
  %761 = getelementptr inbounds nuw i8, ptr %746, i64 2
  store i8 %760, ptr %758, align 1, !tbaa !33
  %762 = load i8, ptr %759, align 1, !tbaa !33
  store i8 %762, ptr %761, align 1, !tbaa !33
  %763 = getelementptr inbounds nuw i8, ptr %746, i64 3
  %764 = getelementptr inbounds nuw i8, ptr %748, i64 3
  br label %765

765:                                              ; preds = %755, %750
  %766 = phi ptr [ %748, %750 ], [ %764, %755 ]
  %767 = phi i32 [ %747, %750 ], [ %751, %755 ]
  %768 = phi ptr [ %746, %750 ], [ %763, %755 ]
  %769 = phi ptr [ poison, %750 ], [ %763, %755 ]
  %770 = phi ptr [ poison, %750 ], [ %764, %755 ]
  %771 = icmp ult i32 %751, 3
  br i1 %771, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %765, %.preheader
  %772 = phi ptr [ %793, %.preheader ], [ %766, %765 ]
  %773 = phi i32 [ %791, %.preheader ], [ %767, %765 ]
  %774 = phi ptr [ %792, %.preheader ], [ %768, %765 ]
  %775 = getelementptr inbounds nuw i8, ptr %772, i64 1
  %776 = load i8, ptr %772, align 1, !tbaa !33
  %777 = getelementptr inbounds nuw i8, ptr %774, i64 1
  store i8 %776, ptr %774, align 1, !tbaa !33
  %778 = getelementptr inbounds nuw i8, ptr %772, i64 2
  %779 = load i8, ptr %775, align 1, !tbaa !33
  %780 = getelementptr inbounds nuw i8, ptr %774, i64 2
  store i8 %779, ptr %777, align 1, !tbaa !33
  %781 = load i8, ptr %778, align 1, !tbaa !33
  store i8 %781, ptr %780, align 1, !tbaa !33
  %782 = getelementptr inbounds nuw i8, ptr %774, i64 3
  %783 = getelementptr inbounds nuw i8, ptr %772, i64 3
  %784 = getelementptr inbounds nuw i8, ptr %772, i64 4
  %785 = load i8, ptr %783, align 1, !tbaa !33
  %786 = getelementptr inbounds nuw i8, ptr %774, i64 4
  store i8 %785, ptr %782, align 1, !tbaa !33
  %787 = getelementptr inbounds nuw i8, ptr %772, i64 5
  %788 = load i8, ptr %784, align 1, !tbaa !33
  %789 = getelementptr inbounds nuw i8, ptr %774, i64 5
  store i8 %788, ptr %786, align 1, !tbaa !33
  %790 = load i8, ptr %787, align 1, !tbaa !33
  store i8 %790, ptr %789, align 1, !tbaa !33
  %791 = add i32 %773, -6
  %792 = getelementptr inbounds nuw i8, ptr %774, i64 6
  %793 = getelementptr inbounds nuw i8, ptr %772, i64 6
  %794 = icmp ugt i32 %791, 2
  br i1 %794, label %.preheader, label %.loopexit, !llvm.loop !63

.loopexit:                                        ; preds = %.preheader, %765, %745
  %795 = phi ptr [ %746, %745 ], [ %769, %765 ], [ %792, %.preheader ]
  %796 = phi i32 [ %747, %745 ], [ %751, %765 ], [ %791, %.preheader ]
  %797 = phi ptr [ %748, %745 ], [ %770, %765 ], [ %793, %.preheader ]
  %798 = icmp eq i32 %796, 0
  br i1 %798, label %929, label %799

799:                                              ; preds = %.loopexit
  %800 = load i8, ptr %797, align 1, !tbaa !33
  %801 = getelementptr inbounds nuw i8, ptr %795, i64 1
  store i8 %800, ptr %795, align 1, !tbaa !33
  %802 = icmp eq i32 %796, 2
  br i1 %802, label %803, label %929

803:                                              ; preds = %799
  %804 = getelementptr inbounds nuw i8, ptr %797, i64 1
  %805 = load i8, ptr %804, align 1, !tbaa !33
  %806 = getelementptr inbounds nuw i8, ptr %795, i64 2
  store i8 %805, ptr %801, align 1, !tbaa !33
  br label %929

807:                                              ; preds = %268
  %808 = zext nneg i32 %276 to i64
  %809 = sub nsw i64 0, %808
  %810 = getelementptr inbounds i8, ptr %93, i64 %809
  %811 = udiv i32 %189, 3
  %812 = add nsw i32 %189, -3
  %813 = tail call i32 @llvm.umin.i32(i32 %812, i32 2)
  %814 = xor i32 %813, -1
  %815 = add nsw i32 %189, %814
  %816 = udiv i32 %815, 3
  %817 = icmp samesign ugt i32 %811, %816
  br i1 %817, label %818, label %838, !prof !41, !nosanitize !16

818:                                              ; preds = %807
  %819 = and i32 %816, 1
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %821, label %831

821:                                              ; preds = %818
  %822 = getelementptr inbounds nuw i8, ptr %810, i64 1
  %823 = load i8, ptr %810, align 1, !tbaa !33
  %824 = getelementptr inbounds nuw i8, ptr %93, i64 1
  store i8 %823, ptr %93, align 1, !tbaa !33
  %825 = getelementptr inbounds nuw i8, ptr %810, i64 2
  %826 = load i8, ptr %822, align 1, !tbaa !33
  %827 = getelementptr inbounds nuw i8, ptr %93, i64 2
  store i8 %826, ptr %824, align 1, !tbaa !33
  %828 = load i8, ptr %825, align 1, !tbaa !33
  store i8 %828, ptr %827, align 1, !tbaa !33
  %829 = getelementptr inbounds nuw i8, ptr %93, i64 3
  %830 = getelementptr inbounds nuw i8, ptr %810, i64 3
  br label %831

831:                                              ; preds = %821, %818
  %832 = phi ptr [ %93, %818 ], [ %829, %821 ]
  %833 = phi i32 [ %189, %818 ], [ %812, %821 ]
  %834 = phi ptr [ %810, %818 ], [ %830, %821 ]
  %835 = phi ptr [ poison, %818 ], [ %829, %821 ]
  %836 = phi ptr [ poison, %818 ], [ %830, %821 ]
  %837 = icmp ult i32 %815, 3
  br i1 %837, label %.loopexit76, label %.preheader75

838:                                              ; preds = %807
  %839 = getelementptr inbounds nuw i8, ptr %810, i64 1
  %840 = load i8, ptr %810, align 1, !tbaa !33
  %841 = getelementptr inbounds nuw i8, ptr %93, i64 1
  store i8 %840, ptr %93, align 1, !tbaa !33
  %842 = getelementptr inbounds nuw i8, ptr %810, i64 2
  %843 = load i8, ptr %839, align 1, !tbaa !33
  %844 = getelementptr inbounds nuw i8, ptr %93, i64 2
  store i8 %843, ptr %841, align 1, !tbaa !33
  %845 = load i8, ptr %842, align 1, !tbaa !33
  store i8 %845, ptr %844, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

.preheader75:                                     ; preds = %831, %.preheader75
  %846 = phi ptr [ %866, %.preheader75 ], [ %832, %831 ]
  %847 = phi i32 [ %865, %.preheader75 ], [ %833, %831 ]
  %848 = phi ptr [ %867, %.preheader75 ], [ %834, %831 ]
  %849 = getelementptr inbounds nuw i8, ptr %848, i64 1
  %850 = load i8, ptr %848, align 1, !tbaa !33
  %851 = getelementptr inbounds nuw i8, ptr %846, i64 1
  store i8 %850, ptr %846, align 1, !tbaa !33
  %852 = getelementptr inbounds nuw i8, ptr %848, i64 2
  %853 = load i8, ptr %849, align 1, !tbaa !33
  %854 = getelementptr inbounds nuw i8, ptr %846, i64 2
  store i8 %853, ptr %851, align 1, !tbaa !33
  %855 = load i8, ptr %852, align 1, !tbaa !33
  store i8 %855, ptr %854, align 1, !tbaa !33
  %856 = getelementptr inbounds nuw i8, ptr %846, i64 3
  %857 = getelementptr inbounds nuw i8, ptr %848, i64 3
  %858 = getelementptr inbounds nuw i8, ptr %848, i64 4
  %859 = load i8, ptr %857, align 1, !tbaa !33
  %860 = getelementptr inbounds nuw i8, ptr %846, i64 4
  store i8 %859, ptr %856, align 1, !tbaa !33
  %861 = getelementptr inbounds nuw i8, ptr %848, i64 5
  %862 = load i8, ptr %858, align 1, !tbaa !33
  %863 = getelementptr inbounds nuw i8, ptr %846, i64 5
  store i8 %862, ptr %860, align 1, !tbaa !33
  %864 = load i8, ptr %861, align 1, !tbaa !33
  store i8 %864, ptr %863, align 1, !tbaa !33
  %865 = add i32 %847, -6
  %866 = getelementptr inbounds nuw i8, ptr %846, i64 6
  %867 = getelementptr inbounds nuw i8, ptr %848, i64 6
  %868 = icmp ugt i32 %865, 2
  br i1 %868, label %.preheader75, label %.loopexit76.loopexit, !llvm.loop !64

.loopexit76.loopexit:                             ; preds = %.preheader75
  %869 = getelementptr inbounds nuw i8, ptr %846, i64 3
  %870 = getelementptr inbounds nuw i8, ptr %848, i64 3
  br label %.loopexit76

.loopexit76:                                      ; preds = %.loopexit76.loopexit, %831
  %871 = phi ptr [ %93, %831 ], [ %869, %.loopexit76.loopexit ]
  %872 = phi ptr [ %810, %831 ], [ %870, %.loopexit76.loopexit ]
  %873 = phi ptr [ %835, %831 ], [ %866, %.loopexit76.loopexit ]
  %874 = phi ptr [ %836, %831 ], [ %867, %.loopexit76.loopexit ]
  %875 = mul nsw i32 %816, -3
  %876 = add nsw i32 %875, %812
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %929, label %878

878:                                              ; preds = %.loopexit76
  %879 = load i8, ptr %874, align 1, !tbaa !33
  %880 = getelementptr inbounds nuw i8, ptr %871, i64 4
  store i8 %879, ptr %873, align 1, !tbaa !33
  %881 = icmp eq i32 %876, 2
  br i1 %881, label %882, label %929

882:                                              ; preds = %878
  %883 = getelementptr inbounds nuw i8, ptr %872, i64 4
  %884 = load i8, ptr %883, align 1, !tbaa !33
  %885 = getelementptr inbounds nuw i8, ptr %871, i64 5
  store i8 %884, ptr %880, align 1, !tbaa !33
  br label %929

886:                                              ; preds = %228
  %887 = and i32 %234, 64
  %888 = icmp eq i32 %887, 0
  br i1 %888, label %889, label %.loopexit77

889:                                              ; preds = %886
  %890 = shl nsw i32 -1, %234
  %891 = xor i32 %890, -1
  %892 = getelementptr inbounds nuw i8, ptr %231, i64 2
  %893 = load i16, ptr %892, align 2, !tbaa !39
  %894 = zext i16 %893 to i64
  %895 = getelementptr inbounds nuw [4 x i8], ptr %51, i64 %894
  %896 = zext nneg i32 %891 to i64
  %897 = and i64 %230, %896
  %898 = getelementptr inbounds nuw [4 x i8], ptr %895, i64 %897
  %899 = getelementptr inbounds nuw i8, ptr %898, i64 1
  %900 = load i8, ptr %899, align 1, !tbaa !34
  %901 = zext i8 %900 to i32
  %902 = zext nneg i8 %900 to i64
  %903 = lshr i64 %230, %902
  %904 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %232, i32 %901), !nosanitize !16
  %905 = extractvalue { i32, i1 } %904, 1, !nosanitize !16
  br i1 %905, label %.loopexit78, label %228, !prof !65, !nosanitize !16

906:                                              ; preds = %146
  %907 = and i32 %139, 64
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %909, label %926

909:                                              ; preds = %906
  %910 = shl nsw i32 -1, %139
  %911 = xor i32 %910, -1
  %912 = getelementptr inbounds nuw i8, ptr %136, i64 2
  %913 = load i16, ptr %912, align 2, !tbaa !39
  %914 = zext i16 %913 to i64
  %915 = getelementptr inbounds nuw [4 x i8], ptr %49, i64 %914
  %916 = zext nneg i32 %911 to i64
  %917 = and i64 %135, %916
  %918 = getelementptr inbounds nuw [4 x i8], ptr %915, i64 %917
  %919 = getelementptr inbounds nuw i8, ptr %918, i64 1
  %920 = load i8, ptr %919, align 1, !tbaa !34
  %921 = zext i8 %920 to i32
  %922 = zext nneg i8 %920 to i64
  %923 = lshr i64 %135, %922
  %924 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %137, i32 %921), !nosanitize !16
  %925 = extractvalue { i32, i1 } %924, 1, !nosanitize !16
  br i1 %925, label %.loopexit79, label %133, !prof !65, !nosanitize !16

926:                                              ; preds = %906
  %927 = and i32 %139, 32
  %928 = icmp eq i32 %927, 0
  br i1 %928, label %.loopexit77, label %942

929:                                              ; preds = %882, %878, %.loopexit76, %803, %799, %.loopexit, %141
  %930 = phi i32 [ %137, %141 ], [ %279, %803 ], [ %279, %799 ], [ %279, %.loopexit ], [ %279, %882 ], [ %279, %878 ], [ %279, %.loopexit76 ]
  %931 = phi i64 [ %135, %141 ], [ %278, %803 ], [ %278, %799 ], [ %278, %.loopexit ], [ %278, %882 ], [ %278, %878 ], [ %278, %.loopexit76 ]
  %932 = phi ptr [ %145, %141 ], [ %806, %803 ], [ %801, %799 ], [ %795, %.loopexit ], [ %885, %882 ], [ %880, %878 ], [ %873, %.loopexit76 ]
  %933 = phi ptr [ %122, %141 ], [ %271, %803 ], [ %271, %799 ], [ %271, %.loopexit ], [ %271, %882 ], [ %271, %878 ], [ %271, %.loopexit76 ]
  %934 = icmp ult ptr %933, %14
  %935 = icmp ult ptr %932, %34
  %936 = select i1 %934, i1 %935, i1 false
  br i1 %936, label %90, label %.loopexit83, !llvm.loop !66

.loopexit77:                                      ; preds = %287, %886, %926
  %937 = phi ptr [ @.str.2, %926 ], [ @.str.1, %886 ], [ @.str, %287 ]
  %938 = phi i32 [ %137, %926 ], [ %232, %886 ], [ %279, %287 ]
  %939 = phi i64 [ %135, %926 ], [ %230, %886 ], [ %278, %287 ]
  %940 = phi ptr [ %122, %926 ], [ %217, %886 ], [ %271, %287 ]
  %941 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %937, ptr %941, align 8, !tbaa !67
  br label %942

942:                                              ; preds = %.loopexit77, %926
  %943 = phi i32 [ 16191, %926 ], [ 16209, %.loopexit77 ]
  %944 = phi i32 [ %137, %926 ], [ %938, %.loopexit77 ]
  %945 = phi i64 [ %135, %926 ], [ %939, %.loopexit77 ]
  %946 = phi ptr [ %122, %926 ], [ %940, %.loopexit77 ]
  %947 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %943, ptr %947, align 8, !tbaa !68
  br label %.loopexit83

.loopexit83:                                      ; preds = %929, %942
  %948 = phi i32 [ %944, %942 ], [ %930, %929 ]
  %949 = phi i64 [ %945, %942 ], [ %931, %929 ]
  %950 = phi ptr [ %93, %942 ], [ %932, %929 ]
  %951 = phi ptr [ %946, %942 ], [ %933, %929 ]
  %952 = lshr i32 %948, 3
  %953 = zext nneg i32 %952 to i64
  %954 = sub nsw i64 0, %953
  %955 = getelementptr inbounds i8, ptr %951, i64 %954
  store ptr %955, ptr %0, align 8, !tbaa !14
  store ptr %950, ptr %15, align 8, !tbaa !18
  %956 = ptrtoint ptr %14 to i64
  %957 = ptrtoint ptr %955 to i64
  %958 = sub i64 %956, %957
  %959 = trunc i64 %958 to i32
  %960 = add i32 %959, 5
  store i32 %960, ptr %6, align 8, !tbaa !15
  %961 = ptrtoint ptr %34 to i64
  %962 = ptrtoint ptr %950 to i64
  %963 = sub i64 %961, %962
  %964 = and i32 %948, 7
  %965 = shl nsw i32 -1, %964
  %966 = xor i32 %965, -1
  %967 = zext nneg i32 %966 to i64
  %968 = and i64 %949, %967
  %969 = trunc i64 %963 to i32
  %970 = add i32 %969, 257
  store i32 %970, ptr %18, align 8, !tbaa !19
  store i64 %968, ptr %44, align 8, !tbaa !27
  store i32 %964, ptr %46, align 8, !tbaa !28
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
declare i32 @llvm.umin.i32(i32, i32) #1

attributes #0 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { nomerge noreturn nounwind }

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
!16 = !{}
!17 = !{!"branch_weights", i32 1, i32 1048575}
!18 = !{!9, !10, i64 24}
!19 = !{!9, !5, i64 32}
!20 = !{!21, !5, i64 60}
!21 = !{!"inflate_state", !22, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !12, i64 32, !12, i64 40, !23, i64 48, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !10, i64 72, !12, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !11, i64 104, !11, i64 112, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !11, i64 144, !6, i64 152, !6, i64 792, !6, i64 1368, !5, i64 7144, !5, i64 7148, !5, i64 7152}
!22 = !{!"p1 _ZTS10z_stream_s", !11, i64 0}
!23 = !{!"p1 _ZTS11gz_header_s", !11, i64 0}
!24 = !{!21, !5, i64 64}
!25 = !{!21, !5, i64 68}
!26 = !{!21, !10, i64 72}
!27 = !{!21, !12, i64 80}
!28 = !{!21, !5, i64 88}
!29 = !{!21, !11, i64 104}
!30 = !{!21, !11, i64 112}
!31 = !{!21, !5, i64 120}
!32 = !{!21, !5, i64 124}
!33 = !{!6, !6, i64 0}
!34 = !{!35, !6, i64 1}
!35 = !{!"", !6, i64 0, !6, i64 1, !36, i64 2}
!36 = !{!"short", !6, i64 0}
!37 = !{!"branch_weights", i32 1, i32 127}
!38 = !{!35, !6, i64 0}
!39 = !{!35, !36, i64 2}
!40 = !{!21, !5, i64 7144}
!41 = !{!"branch_weights", i32 1048575, i32 1}
!42 = distinct !{!42, !43, !44, !45}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!"branch_weights", i32 4, i32 28}
!47 = distinct !{!47, !43, !44, !45}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = distinct !{!50, !43, !44}
!51 = distinct !{!51, !43, !44, !45}
!52 = distinct !{!52, !43, !44, !45}
!53 = distinct !{!53, !49}
!54 = distinct !{!54, !43, !44}
!55 = distinct !{!55, !43, !44, !45}
!56 = distinct !{!56, !43, !44, !45}
!57 = distinct !{!57, !49}
!58 = distinct !{!58, !43, !44}
!59 = distinct !{!59, !43, !44, !45}
!60 = distinct !{!60, !43, !44, !45}
!61 = distinct !{!61, !49}
!62 = distinct !{!62, !43, !44}
!63 = distinct !{!63, !43}
!64 = distinct !{!64, !43}
!65 = !{!"branch_weights", i32 127, i32 134217473}
!66 = distinct !{!66, !43}
!67 = !{!9, !10, i64 48}
!68 = !{!21, !5, i64 8}
