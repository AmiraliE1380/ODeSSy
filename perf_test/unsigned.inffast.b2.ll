; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/unsigned.inffast.ll'
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

90:                                               ; preds = %937, %27
  %91 = phi i32 [ %47, %27 ], [ %938, %937 ]
  %92 = phi i64 [ %45, %27 ], [ %939, %937 ]
  %93 = phi ptr [ %16, %27 ], [ %940, %937 ]
  %94 = phi ptr [ %5, %27 ], [ %941, %937 ]
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

.loopexit79:                                      ; preds = %119, %917
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

133:                                              ; preds = %917, %130
  %134 = phi { i32, i1 } [ %932, %917 ], [ %128, %130 ]
  %135 = phi i64 [ %931, %917 ], [ %132, %130 ]
  %136 = phi ptr [ %926, %917 ], [ %124, %130 ]
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
  br label %937

146:                                              ; preds = %133
  %147 = and i32 %139, 16
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %914, label %149

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

.loopexit78:                                      ; preds = %214, %897
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

228:                                              ; preds = %897, %225
  %229 = phi { i32, i1 } [ %912, %897 ], [ %223, %225 ]
  %230 = phi i64 [ %911, %897 ], [ %227, %225 ]
  %231 = phi ptr [ %906, %897 ], [ %219, %225 ]
  %232 = extractvalue { i32, i1 } %229, 0
  %233 = load i8, ptr %231, align 2, !tbaa !38
  %234 = zext i8 %233 to i32
  %235 = and i32 %234, 16
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %894, label %237

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
  %279 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %269, i32 %241), !nosanitize !16
  %280 = extractvalue { i32, i1 } %279, 0, !nosanitize !16
  %281 = extractvalue { i32, i1 } %279, 1, !nosanitize !16
  br i1 %281, label %282, label %283, !prof !17, !nosanitize !16

282:                                              ; preds = %268
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

283:                                              ; preds = %268
  %284 = ptrtoint ptr %93 to i64
  %285 = sub i64 %284, %62
  %286 = trunc i64 %285 to i32
  %287 = icmp ugt i32 %276, %286
  br i1 %287, label %288, label %815

288:                                              ; preds = %283
  %289 = sub nuw nsw i32 %276, %286
  %290 = icmp ugt i32 %289, %38
  br i1 %290, label %291, label %294

291:                                              ; preds = %288
  %292 = load i32, ptr %63, align 8, !tbaa !40
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %.loopexit77

294:                                              ; preds = %291, %288
  br i1 %64, label %295, label %418

295:                                              ; preds = %294
  %296 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %36, i32 %289), !nosanitize !16
  %297 = extractvalue { i32, i1 } %296, 1, !nosanitize !16
  br i1 %297, label %298, label %299, !prof !17, !nosanitize !16

298:                                              ; preds = %295
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

299:                                              ; preds = %295
  %300 = extractvalue { i32, i1 } %296, 0, !nosanitize !16
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds nuw i8, ptr %42, i64 %301
  %303 = icmp ult i32 %289, %189
  br i1 %303, label %304, label %753

304:                                              ; preds = %299
  %305 = sub nuw nsw i32 %189, %289
  %306 = trunc i64 %284 to i32
  %307 = sub i32 %71, %306
  %308 = add i32 %307, %240
  %309 = add i32 %308, %275
  %310 = icmp ugt i32 %289, %309
  br i1 %310, label %311, label %383, !prof !41, !nosanitize !16

311:                                              ; preds = %304
  %312 = zext nneg i32 %289 to i64
  %313 = icmp samesign ult i32 %289, 4
  br i1 %313, label %362, label %314

314:                                              ; preds = %311
  %315 = add i32 %.neg50, %306
  %316 = add i32 %69, %240
  %317 = add i32 %316, %275
  %318 = sub i32 %315, %317
  %319 = zext i32 %318 to i64
  %320 = add i64 %43, %319
  %321 = sub i64 %284, %320
  %322 = icmp ult i64 %321, 32
  br i1 %322, label %362, label %323

323:                                              ; preds = %314
  %324 = icmp samesign ult i32 %289, 32
  br i1 %324, label %346, label %325

325:                                              ; preds = %323
  %326 = and i64 %312, 2147483616
  br label %327

327:                                              ; preds = %327, %325
  %328 = phi i64 [ 0, %325 ], [ %335, %327 ]
  %329 = getelementptr i8, ptr %93, i64 %328
  %330 = getelementptr i8, ptr %302, i64 %328
  %331 = getelementptr i8, ptr %330, i64 16
  %332 = load <16 x i8>, ptr %330, align 1, !tbaa !33
  %333 = load <16 x i8>, ptr %331, align 1, !tbaa !33
  %334 = getelementptr i8, ptr %329, i64 16
  store <16 x i8> %332, ptr %329, align 1, !tbaa !33
  store <16 x i8> %333, ptr %334, align 1, !tbaa !33
  %335 = add nuw i64 %328, 32
  %336 = icmp eq i64 %335, %326
  br i1 %336, label %337, label %327, !llvm.loop !42

337:                                              ; preds = %327
  %338 = getelementptr i8, ptr %93, i64 %326
  %339 = icmp eq i64 %326, %312
  br i1 %339, label %.loopexit60, label %340

340:                                              ; preds = %337
  %341 = getelementptr i8, ptr %302, i64 %326
  %342 = trunc nuw nsw i64 %326 to i32
  %343 = sub nsw i32 %289, %342
  %344 = and i64 %312, 28
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %362, label %346, !prof !46

346:                                              ; preds = %340, %323
  %347 = phi i64 [ %326, %340 ], [ 0, %323 ]
  %348 = and i64 %312, 2147483644
  br label %349

349:                                              ; preds = %349, %346
  %350 = phi i64 [ %347, %346 ], [ %354, %349 ]
  %351 = getelementptr i8, ptr %93, i64 %350
  %352 = getelementptr i8, ptr %302, i64 %350
  %353 = load <4 x i8>, ptr %352, align 1, !tbaa !33
  store <4 x i8> %353, ptr %351, align 1, !tbaa !33
  %354 = add nuw i64 %350, 4
  %355 = icmp eq i64 %354, %348
  br i1 %355, label %356, label %349, !llvm.loop !47

356:                                              ; preds = %349
  %357 = getelementptr i8, ptr %93, i64 %348
  %358 = trunc nuw nsw i64 %348 to i32
  %359 = sub nsw i32 %289, %358
  %360 = getelementptr i8, ptr %302, i64 %348
  %361 = icmp eq i64 %348, %312
  br i1 %361, label %.loopexit60, label %362

362:                                              ; preds = %356, %340, %314, %311
  %363 = phi ptr [ %93, %311 ], [ %93, %314 ], [ %338, %340 ], [ %357, %356 ]
  %364 = phi i32 [ %289, %311 ], [ %289, %314 ], [ %343, %340 ], [ %359, %356 ]
  %365 = phi ptr [ %302, %311 ], [ %302, %314 ], [ %341, %340 ], [ %360, %356 ]
  %366 = add nsw i32 %364, -1
  %367 = and i32 %364, 7
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %.loopexit62, label %.preheader61

.preheader61:                                     ; preds = %362, %.preheader61
  %369 = phi ptr [ %373, %.preheader61 ], [ %363, %362 ]
  %370 = phi ptr [ %374, %.preheader61 ], [ %365, %362 ]
  %371 = phi i32 [ %375, %.preheader61 ], [ 0, %362 ]
  %372 = load i8, ptr %370, align 1, !tbaa !33
  store i8 %372, ptr %369, align 1, !tbaa !33
  %373 = getelementptr inbounds nuw i8, ptr %369, i64 1
  %374 = getelementptr inbounds nuw i8, ptr %370, i64 1
  %375 = add nuw nsw i32 %371, 1
  %376 = icmp eq i32 %375, %367
  br i1 %376, label %.loopexit62.loopexit, label %.preheader61, !llvm.loop !48

.loopexit62.loopexit:                             ; preds = %.preheader61
  %377 = and i32 %364, -8
  br label %.loopexit62

.loopexit62:                                      ; preds = %.loopexit62.loopexit, %362
  %378 = phi ptr [ poison, %362 ], [ %373, %.loopexit62.loopexit ]
  %379 = phi ptr [ %363, %362 ], [ %373, %.loopexit62.loopexit ]
  %380 = phi i32 [ %364, %362 ], [ %377, %.loopexit62.loopexit ]
  %381 = phi ptr [ %365, %362 ], [ %374, %.loopexit62.loopexit ]
  %382 = icmp ult i32 %366, 7
  br i1 %382, label %.loopexit60, label %.preheader59

383:                                              ; preds = %304
  %384 = load i8, ptr %302, align 1, !tbaa !33
  store i8 %384, ptr %93, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

.preheader59:                                     ; preds = %.loopexit62, %.preheader59
  %385 = phi ptr [ %410, %.preheader59 ], [ %379, %.loopexit62 ]
  %386 = phi i32 [ %411, %.preheader59 ], [ %380, %.loopexit62 ]
  %387 = phi ptr [ %412, %.preheader59 ], [ %381, %.loopexit62 ]
  %388 = load i8, ptr %387, align 1, !tbaa !33
  store i8 %388, ptr %385, align 1, !tbaa !33
  %389 = getelementptr inbounds nuw i8, ptr %385, i64 1
  %390 = getelementptr inbounds nuw i8, ptr %387, i64 1
  %391 = load i8, ptr %390, align 1, !tbaa !33
  store i8 %391, ptr %389, align 1, !tbaa !33
  %392 = getelementptr inbounds nuw i8, ptr %385, i64 2
  %393 = getelementptr inbounds nuw i8, ptr %387, i64 2
  %394 = load i8, ptr %393, align 1, !tbaa !33
  store i8 %394, ptr %392, align 1, !tbaa !33
  %395 = getelementptr inbounds nuw i8, ptr %385, i64 3
  %396 = getelementptr inbounds nuw i8, ptr %387, i64 3
  %397 = load i8, ptr %396, align 1, !tbaa !33
  store i8 %397, ptr %395, align 1, !tbaa !33
  %398 = getelementptr inbounds nuw i8, ptr %385, i64 4
  %399 = getelementptr inbounds nuw i8, ptr %387, i64 4
  %400 = load i8, ptr %399, align 1, !tbaa !33
  store i8 %400, ptr %398, align 1, !tbaa !33
  %401 = getelementptr inbounds nuw i8, ptr %385, i64 5
  %402 = getelementptr inbounds nuw i8, ptr %387, i64 5
  %403 = load i8, ptr %402, align 1, !tbaa !33
  store i8 %403, ptr %401, align 1, !tbaa !33
  %404 = getelementptr inbounds nuw i8, ptr %385, i64 6
  %405 = getelementptr inbounds nuw i8, ptr %387, i64 6
  %406 = load i8, ptr %405, align 1, !tbaa !33
  store i8 %406, ptr %404, align 1, !tbaa !33
  %407 = getelementptr inbounds nuw i8, ptr %385, i64 7
  %408 = getelementptr inbounds nuw i8, ptr %387, i64 7
  %409 = load i8, ptr %408, align 1, !tbaa !33
  store i8 %409, ptr %407, align 1, !tbaa !33
  %410 = getelementptr inbounds nuw i8, ptr %385, i64 8
  %411 = add i32 %386, -8
  %412 = getelementptr inbounds nuw i8, ptr %387, i64 8
  %413 = icmp eq i32 %411, 0
  br i1 %413, label %.loopexit60, label %.preheader59, !llvm.loop !50

.loopexit60:                                      ; preds = %.preheader59, %.loopexit62, %356, %337
  %414 = phi ptr [ %357, %356 ], [ %338, %337 ], [ %378, %.loopexit62 ], [ %410, %.preheader59 ]
  %415 = zext nneg i32 %276 to i64
  %416 = sub nsw i64 0, %415
  %417 = getelementptr inbounds i8, ptr %414, i64 %416
  br label %753

418:                                              ; preds = %294
  %419 = icmp ult i32 %40, %289
  br i1 %419, label %420, label %634

420:                                              ; preds = %418
  br i1 %66, label %421, label %422, !prof !17, !nosanitize !16

421:                                              ; preds = %420
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

422:                                              ; preds = %420
  %423 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %67, i32 %289), !nosanitize !16
  %424 = extractvalue { i32, i1 } %423, 1, !nosanitize !16
  br i1 %424, label %425, label %426, !prof !17, !nosanitize !16

425:                                              ; preds = %422
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

426:                                              ; preds = %422
  %427 = extractvalue { i32, i1 } %423, 0, !nosanitize !16
  %428 = zext i32 %427 to i64
  %429 = getelementptr inbounds nuw i8, ptr %42, i64 %428
  %430 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %289, i32 %40), !nosanitize !16
  %431 = extractvalue { i32, i1 } %430, 0, !nosanitize !16
  %432 = extractvalue { i32, i1 } %430, 1, !nosanitize !16
  br i1 %432, label %433, label %434, !prof !17, !nosanitize !16

433:                                              ; preds = %426
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

434:                                              ; preds = %426
  %435 = icmp ult i32 %431, %189
  br i1 %435, label %436, label %753

436:                                              ; preds = %434
  %437 = sub nuw nsw i32 %189, %431
  %438 = trunc i64 %284 to i32
  %439 = add i32 %72, %438
  %440 = sub i32 %70, %439
  %441 = add i32 %440, %240
  %442 = add i32 %441, %275
  %443 = icmp ugt i32 %431, %442
  br i1 %443, label %444, label %519, !prof !41, !nosanitize !16

444:                                              ; preds = %436
  %445 = add i32 %1, %438
  %446 = sub i32 %89, %445
  %447 = add i32 %446, %240
  %448 = add i32 %447, %275
  %449 = zext i32 %448 to i64
  %450 = add nuw nsw i64 %449, 1
  %451 = icmp ult i32 %448, 3
  br i1 %451, label %498, label %452

452:                                              ; preds = %444
  %453 = add i32 %.reass, %438
  %454 = sub i32 %453, %276
  %455 = zext i32 %454 to i64
  %456 = add i64 %43, %455
  %457 = sub i64 %284, %456
  %458 = icmp ult i64 %457, 32
  br i1 %458, label %498, label %459

459:                                              ; preds = %452
  %460 = icmp ult i32 %448, 31
  br i1 %460, label %482, label %461

461:                                              ; preds = %459
  %462 = and i64 %450, 8589934560
  br label %463

463:                                              ; preds = %463, %461
  %464 = phi i64 [ 0, %461 ], [ %471, %463 ]
  %465 = getelementptr i8, ptr %93, i64 %464
  %466 = getelementptr i8, ptr %429, i64 %464
  %467 = getelementptr i8, ptr %466, i64 16
  %468 = load <16 x i8>, ptr %466, align 1, !tbaa !33
  %469 = load <16 x i8>, ptr %467, align 1, !tbaa !33
  %470 = getelementptr i8, ptr %465, i64 16
  store <16 x i8> %468, ptr %465, align 1, !tbaa !33
  store <16 x i8> %469, ptr %470, align 1, !tbaa !33
  %471 = add nuw i64 %464, 32
  %472 = icmp eq i64 %471, %462
  br i1 %472, label %473, label %463, !llvm.loop !51

473:                                              ; preds = %463
  %474 = getelementptr i8, ptr %93, i64 %462
  %475 = icmp eq i64 %450, %462
  br i1 %475, label %.loopexit68, label %476

476:                                              ; preds = %473
  %477 = getelementptr i8, ptr %429, i64 %462
  %478 = trunc i64 %462 to i32
  %479 = sub i32 %431, %478
  %480 = and i64 %450, 28
  %481 = icmp eq i64 %480, 0
  br i1 %481, label %498, label %482, !prof !46

482:                                              ; preds = %476, %459
  %483 = phi i64 [ %462, %476 ], [ 0, %459 ]
  %484 = and i64 %450, 8589934588
  br label %485

485:                                              ; preds = %485, %482
  %486 = phi i64 [ %483, %482 ], [ %490, %485 ]
  %487 = getelementptr i8, ptr %93, i64 %486
  %488 = getelementptr i8, ptr %429, i64 %486
  %489 = load <4 x i8>, ptr %488, align 1, !tbaa !33
  store <4 x i8> %489, ptr %487, align 1, !tbaa !33
  %490 = add nuw i64 %486, 4
  %491 = icmp eq i64 %490, %484
  br i1 %491, label %492, label %485, !llvm.loop !52

492:                                              ; preds = %485
  %493 = getelementptr i8, ptr %93, i64 %484
  %494 = trunc i64 %484 to i32
  %495 = sub i32 %431, %494
  %496 = getelementptr i8, ptr %429, i64 %484
  %497 = icmp eq i64 %450, %484
  br i1 %497, label %.loopexit68, label %498

498:                                              ; preds = %492, %476, %452, %444
  %499 = phi ptr [ %93, %444 ], [ %93, %452 ], [ %474, %476 ], [ %493, %492 ]
  %500 = phi i32 [ %431, %444 ], [ %431, %452 ], [ %479, %476 ], [ %495, %492 ]
  %501 = phi ptr [ %429, %444 ], [ %429, %452 ], [ %477, %476 ], [ %496, %492 ]
  %502 = add i32 %500, -1
  %503 = and i32 %500, 7
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %.loopexit70, label %.preheader69

.preheader69:                                     ; preds = %498, %.preheader69
  %505 = phi ptr [ %509, %.preheader69 ], [ %499, %498 ]
  %506 = phi ptr [ %510, %.preheader69 ], [ %501, %498 ]
  %507 = phi i32 [ %511, %.preheader69 ], [ 0, %498 ]
  %508 = load i8, ptr %506, align 1, !tbaa !33
  store i8 %508, ptr %505, align 1, !tbaa !33
  %509 = getelementptr inbounds nuw i8, ptr %505, i64 1
  %510 = getelementptr inbounds nuw i8, ptr %506, i64 1
  %511 = add nuw nsw i32 %507, 1
  %512 = icmp eq i32 %511, %503
  br i1 %512, label %.loopexit70.loopexit, label %.preheader69, !llvm.loop !53

.loopexit70.loopexit:                             ; preds = %.preheader69
  %513 = and i32 %500, -8
  br label %.loopexit70

.loopexit70:                                      ; preds = %.loopexit70.loopexit, %498
  %514 = phi ptr [ poison, %498 ], [ %509, %.loopexit70.loopexit ]
  %515 = phi ptr [ %499, %498 ], [ %509, %.loopexit70.loopexit ]
  %516 = phi i32 [ %500, %498 ], [ %513, %.loopexit70.loopexit ]
  %517 = phi ptr [ %501, %498 ], [ %510, %.loopexit70.loopexit ]
  %518 = icmp ult i32 %502, 7
  br i1 %518, label %.loopexit68, label %.preheader67

519:                                              ; preds = %436
  %520 = load i8, ptr %429, align 1, !tbaa !33
  store i8 %520, ptr %93, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

.preheader67:                                     ; preds = %.loopexit70, %.preheader67
  %521 = phi ptr [ %546, %.preheader67 ], [ %515, %.loopexit70 ]
  %522 = phi i32 [ %547, %.preheader67 ], [ %516, %.loopexit70 ]
  %523 = phi ptr [ %548, %.preheader67 ], [ %517, %.loopexit70 ]
  %524 = load i8, ptr %523, align 1, !tbaa !33
  store i8 %524, ptr %521, align 1, !tbaa !33
  %525 = getelementptr inbounds nuw i8, ptr %521, i64 1
  %526 = getelementptr inbounds nuw i8, ptr %523, i64 1
  %527 = load i8, ptr %526, align 1, !tbaa !33
  store i8 %527, ptr %525, align 1, !tbaa !33
  %528 = getelementptr inbounds nuw i8, ptr %521, i64 2
  %529 = getelementptr inbounds nuw i8, ptr %523, i64 2
  %530 = load i8, ptr %529, align 1, !tbaa !33
  store i8 %530, ptr %528, align 1, !tbaa !33
  %531 = getelementptr inbounds nuw i8, ptr %521, i64 3
  %532 = getelementptr inbounds nuw i8, ptr %523, i64 3
  %533 = load i8, ptr %532, align 1, !tbaa !33
  store i8 %533, ptr %531, align 1, !tbaa !33
  %534 = getelementptr inbounds nuw i8, ptr %521, i64 4
  %535 = getelementptr inbounds nuw i8, ptr %523, i64 4
  %536 = load i8, ptr %535, align 1, !tbaa !33
  store i8 %536, ptr %534, align 1, !tbaa !33
  %537 = getelementptr inbounds nuw i8, ptr %521, i64 5
  %538 = getelementptr inbounds nuw i8, ptr %523, i64 5
  %539 = load i8, ptr %538, align 1, !tbaa !33
  store i8 %539, ptr %537, align 1, !tbaa !33
  %540 = getelementptr inbounds nuw i8, ptr %521, i64 6
  %541 = getelementptr inbounds nuw i8, ptr %523, i64 6
  %542 = load i8, ptr %541, align 1, !tbaa !33
  store i8 %542, ptr %540, align 1, !tbaa !33
  %543 = getelementptr inbounds nuw i8, ptr %521, i64 7
  %544 = getelementptr inbounds nuw i8, ptr %523, i64 7
  %545 = load i8, ptr %544, align 1, !tbaa !33
  store i8 %545, ptr %543, align 1, !tbaa !33
  %546 = getelementptr inbounds nuw i8, ptr %521, i64 8
  %547 = add i32 %522, -8
  %548 = getelementptr inbounds nuw i8, ptr %523, i64 8
  %549 = icmp eq i32 %547, 0
  br i1 %549, label %.loopexit68, label %.preheader67, !llvm.loop !54

.loopexit68:                                      ; preds = %.preheader67, %.loopexit70, %492, %473
  %550 = phi ptr [ %493, %492 ], [ %474, %473 ], [ %514, %.loopexit70 ], [ %546, %.preheader67 ]
  %551 = icmp ult i32 %40, %437
  br i1 %551, label %552, label %753

552:                                              ; preds = %.loopexit68
  %553 = ptrtoaddr ptr %550 to i64
  %554 = sub i64 %553, %43
  %555 = icmp ult i64 %554, 32
  %556 = select i1 %75, i1 true, i1 %555
  br i1 %556, label %579, label %557

557:                                              ; preds = %552
  br i1 %76, label %.preheader741, label %.preheader590

.preheader590:                                    ; preds = %557, %.preheader590
  %558 = phi i64 [ %565, %.preheader590 ], [ 0, %557 ]
  %559 = getelementptr i8, ptr %550, i64 %558
  %560 = getelementptr i8, ptr %42, i64 %558
  %561 = getelementptr i8, ptr %560, i64 16
  %562 = load <16 x i8>, ptr %560, align 1, !tbaa !33
  %563 = load <16 x i8>, ptr %561, align 1, !tbaa !33
  %564 = getelementptr i8, ptr %559, i64 16
  store <16 x i8> %562, ptr %559, align 1, !tbaa !33
  store <16 x i8> %563, ptr %564, align 1, !tbaa !33
  %565 = add nuw nsw i64 %558, 32
  %566 = icmp eq i64 %565, %78
  br i1 %566, label %567, label %.preheader590, !llvm.loop !55

567:                                              ; preds = %.preheader590
  %568 = getelementptr i8, ptr %550, i64 %78
  br i1 %82, label %.loopexit64, label %569

569:                                              ; preds = %567
  br i1 %83, label %579, label %.preheader741, !prof !46

.preheader741:                                    ; preds = %569, %557
  %.ph = phi i64 [ 0, %557 ], [ %78, %569 ]
  br label %570

570:                                              ; preds = %.preheader741, %570
  %571 = phi i64 [ %575, %570 ], [ %.ph, %.preheader741 ]
  %572 = getelementptr i8, ptr %550, i64 %571
  %573 = getelementptr i8, ptr %42, i64 %571
  %574 = load <4 x i8>, ptr %573, align 1, !tbaa !33
  store <4 x i8> %574, ptr %572, align 1, !tbaa !33
  %575 = add nuw i64 %571, 4
  %576 = icmp eq i64 %575, %84
  br i1 %576, label %577, label %570, !llvm.loop !56

577:                                              ; preds = %570
  %578 = getelementptr i8, ptr %550, i64 %84
  br i1 %88, label %.loopexit64, label %579

579:                                              ; preds = %577, %569, %552
  %580 = phi ptr [ %550, %552 ], [ %568, %569 ], [ %578, %577 ]
  %581 = phi i32 [ %40, %552 ], [ %80, %569 ], [ %86, %577 ]
  %582 = phi ptr [ %42, %552 ], [ %81, %569 ], [ %87, %577 ]
  %583 = add i32 %581, -1
  %584 = and i32 %581, 7
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %.loopexit66, label %.preheader65

.preheader65:                                     ; preds = %579, %.preheader65
  %586 = phi ptr [ %590, %.preheader65 ], [ %580, %579 ]
  %587 = phi ptr [ %591, %.preheader65 ], [ %582, %579 ]
  %588 = phi i32 [ %592, %.preheader65 ], [ 0, %579 ]
  %589 = load i8, ptr %587, align 1, !tbaa !33
  %590 = getelementptr inbounds nuw i8, ptr %586, i64 1
  store i8 %589, ptr %586, align 1, !tbaa !33
  %591 = getelementptr inbounds nuw i8, ptr %587, i64 1
  %592 = add nuw nsw i32 %588, 1
  %593 = icmp eq i32 %592, %584
  br i1 %593, label %.loopexit66.loopexit, label %.preheader65, !llvm.loop !57

.loopexit66.loopexit:                             ; preds = %.preheader65
  %594 = and i32 %581, -8
  br label %.loopexit66

.loopexit66:                                      ; preds = %.loopexit66.loopexit, %579
  %595 = phi ptr [ poison, %579 ], [ %590, %.loopexit66.loopexit ]
  %596 = phi ptr [ %580, %579 ], [ %590, %.loopexit66.loopexit ]
  %597 = phi i32 [ %581, %579 ], [ %594, %.loopexit66.loopexit ]
  %598 = phi ptr [ %582, %579 ], [ %591, %.loopexit66.loopexit ]
  %599 = icmp ult i32 %583, 7
  br i1 %599, label %.loopexit64, label %.preheader63

.preheader63:                                     ; preds = %.loopexit66, %.preheader63
  %600 = phi ptr [ %625, %.preheader63 ], [ %596, %.loopexit66 ]
  %601 = phi i32 [ %626, %.preheader63 ], [ %597, %.loopexit66 ]
  %602 = phi ptr [ %627, %.preheader63 ], [ %598, %.loopexit66 ]
  %603 = load i8, ptr %602, align 1, !tbaa !33
  %604 = getelementptr inbounds nuw i8, ptr %600, i64 1
  store i8 %603, ptr %600, align 1, !tbaa !33
  %605 = getelementptr inbounds nuw i8, ptr %602, i64 1
  %606 = load i8, ptr %605, align 1, !tbaa !33
  %607 = getelementptr inbounds nuw i8, ptr %600, i64 2
  store i8 %606, ptr %604, align 1, !tbaa !33
  %608 = getelementptr inbounds nuw i8, ptr %602, i64 2
  %609 = load i8, ptr %608, align 1, !tbaa !33
  %610 = getelementptr inbounds nuw i8, ptr %600, i64 3
  store i8 %609, ptr %607, align 1, !tbaa !33
  %611 = getelementptr inbounds nuw i8, ptr %602, i64 3
  %612 = load i8, ptr %611, align 1, !tbaa !33
  %613 = getelementptr inbounds nuw i8, ptr %600, i64 4
  store i8 %612, ptr %610, align 1, !tbaa !33
  %614 = getelementptr inbounds nuw i8, ptr %602, i64 4
  %615 = load i8, ptr %614, align 1, !tbaa !33
  %616 = getelementptr inbounds nuw i8, ptr %600, i64 5
  store i8 %615, ptr %613, align 1, !tbaa !33
  %617 = getelementptr inbounds nuw i8, ptr %602, i64 5
  %618 = load i8, ptr %617, align 1, !tbaa !33
  %619 = getelementptr inbounds nuw i8, ptr %600, i64 6
  store i8 %618, ptr %616, align 1, !tbaa !33
  %620 = getelementptr inbounds nuw i8, ptr %602, i64 6
  %621 = load i8, ptr %620, align 1, !tbaa !33
  %622 = getelementptr inbounds nuw i8, ptr %600, i64 7
  store i8 %621, ptr %619, align 1, !tbaa !33
  %623 = getelementptr inbounds nuw i8, ptr %602, i64 7
  %624 = load i8, ptr %623, align 1, !tbaa !33
  %625 = getelementptr inbounds nuw i8, ptr %600, i64 8
  store i8 %624, ptr %622, align 1, !tbaa !33
  %626 = add i32 %601, -8
  %627 = getelementptr inbounds nuw i8, ptr %602, i64 8
  %628 = icmp eq i32 %626, 0
  br i1 %628, label %.loopexit64, label %.preheader63, !llvm.loop !58

.loopexit64:                                      ; preds = %.preheader63, %.loopexit66, %577, %567
  %629 = phi ptr [ %578, %577 ], [ %568, %567 ], [ %595, %.loopexit66 ], [ %625, %.preheader63 ]
  %630 = sub nuw nsw i32 %437, %40
  %631 = zext nneg i32 %276 to i64
  %632 = sub nsw i64 0, %631
  %633 = getelementptr inbounds i8, ptr %629, i64 %632
  br label %753

634:                                              ; preds = %418
  %635 = sub nuw i32 %40, %289
  %636 = zext i32 %635 to i64
  %637 = getelementptr inbounds nuw i8, ptr %42, i64 %636
  %638 = icmp ult i32 %289, %189
  br i1 %638, label %639, label %753

639:                                              ; preds = %634
  %640 = sub nuw nsw i32 %189, %289
  %641 = trunc i64 %284 to i32
  %642 = sub i32 %71, %641
  %643 = add i32 %642, %240
  %644 = add i32 %643, %275
  %645 = icmp ugt i32 %289, %644
  br i1 %645, label %646, label %718, !prof !41, !nosanitize !16

646:                                              ; preds = %639
  %647 = zext nneg i32 %289 to i64
  %648 = icmp samesign ult i32 %289, 4
  br i1 %648, label %697, label %649

649:                                              ; preds = %646
  %650 = add i32 %72, %641
  %651 = add i32 %69, %240
  %652 = add i32 %651, %275
  %653 = sub i32 %650, %652
  %654 = zext i32 %653 to i64
  %655 = add i64 %43, %654
  %656 = sub i64 %284, %655
  %657 = icmp ult i64 %656, 32
  br i1 %657, label %697, label %658

658:                                              ; preds = %649
  %659 = icmp samesign ult i32 %289, 32
  br i1 %659, label %681, label %660

660:                                              ; preds = %658
  %661 = and i64 %647, 2147483616
  br label %662

662:                                              ; preds = %662, %660
  %663 = phi i64 [ 0, %660 ], [ %670, %662 ]
  %664 = getelementptr i8, ptr %93, i64 %663
  %665 = getelementptr i8, ptr %637, i64 %663
  %666 = getelementptr i8, ptr %665, i64 16
  %667 = load <16 x i8>, ptr %665, align 1, !tbaa !33
  %668 = load <16 x i8>, ptr %666, align 1, !tbaa !33
  %669 = getelementptr i8, ptr %664, i64 16
  store <16 x i8> %667, ptr %664, align 1, !tbaa !33
  store <16 x i8> %668, ptr %669, align 1, !tbaa !33
  %670 = add nuw i64 %663, 32
  %671 = icmp eq i64 %670, %661
  br i1 %671, label %672, label %662, !llvm.loop !59

672:                                              ; preds = %662
  %673 = getelementptr i8, ptr %93, i64 %661
  %674 = icmp eq i64 %661, %647
  br i1 %674, label %.loopexit72, label %675

675:                                              ; preds = %672
  %676 = getelementptr i8, ptr %637, i64 %661
  %677 = trunc nuw nsw i64 %661 to i32
  %678 = sub nsw i32 %289, %677
  %679 = and i64 %647, 28
  %680 = icmp eq i64 %679, 0
  br i1 %680, label %697, label %681, !prof !46

681:                                              ; preds = %675, %658
  %682 = phi i64 [ %661, %675 ], [ 0, %658 ]
  %683 = and i64 %647, 2147483644
  br label %684

684:                                              ; preds = %684, %681
  %685 = phi i64 [ %682, %681 ], [ %689, %684 ]
  %686 = getelementptr i8, ptr %93, i64 %685
  %687 = getelementptr i8, ptr %637, i64 %685
  %688 = load <4 x i8>, ptr %687, align 1, !tbaa !33
  store <4 x i8> %688, ptr %686, align 1, !tbaa !33
  %689 = add nuw i64 %685, 4
  %690 = icmp eq i64 %689, %683
  br i1 %690, label %691, label %684, !llvm.loop !60

691:                                              ; preds = %684
  %692 = getelementptr i8, ptr %93, i64 %683
  %693 = trunc nuw nsw i64 %683 to i32
  %694 = sub nsw i32 %289, %693
  %695 = getelementptr i8, ptr %637, i64 %683
  %696 = icmp eq i64 %683, %647
  br i1 %696, label %.loopexit72, label %697

697:                                              ; preds = %691, %675, %649, %646
  %698 = phi ptr [ %93, %646 ], [ %93, %649 ], [ %673, %675 ], [ %692, %691 ]
  %699 = phi i32 [ %289, %646 ], [ %289, %649 ], [ %678, %675 ], [ %694, %691 ]
  %700 = phi ptr [ %637, %646 ], [ %637, %649 ], [ %676, %675 ], [ %695, %691 ]
  %701 = add nsw i32 %699, -1
  %702 = and i32 %699, 7
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %.loopexit74, label %.preheader73

.preheader73:                                     ; preds = %697, %.preheader73
  %704 = phi ptr [ %708, %.preheader73 ], [ %698, %697 ]
  %705 = phi ptr [ %709, %.preheader73 ], [ %700, %697 ]
  %706 = phi i32 [ %710, %.preheader73 ], [ 0, %697 ]
  %707 = load i8, ptr %705, align 1, !tbaa !33
  store i8 %707, ptr %704, align 1, !tbaa !33
  %708 = getelementptr inbounds nuw i8, ptr %704, i64 1
  %709 = getelementptr inbounds nuw i8, ptr %705, i64 1
  %710 = add nuw nsw i32 %706, 1
  %711 = icmp eq i32 %710, %702
  br i1 %711, label %.loopexit74.loopexit, label %.preheader73, !llvm.loop !61

.loopexit74.loopexit:                             ; preds = %.preheader73
  %712 = and i32 %699, -8
  br label %.loopexit74

.loopexit74:                                      ; preds = %.loopexit74.loopexit, %697
  %713 = phi ptr [ poison, %697 ], [ %708, %.loopexit74.loopexit ]
  %714 = phi ptr [ %698, %697 ], [ %708, %.loopexit74.loopexit ]
  %715 = phi i32 [ %699, %697 ], [ %712, %.loopexit74.loopexit ]
  %716 = phi ptr [ %700, %697 ], [ %709, %.loopexit74.loopexit ]
  %717 = icmp ult i32 %701, 7
  br i1 %717, label %.loopexit72, label %.preheader71

718:                                              ; preds = %639
  %719 = load i8, ptr %637, align 1, !tbaa !33
  store i8 %719, ptr %93, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

.preheader71:                                     ; preds = %.loopexit74, %.preheader71
  %720 = phi ptr [ %745, %.preheader71 ], [ %714, %.loopexit74 ]
  %721 = phi i32 [ %746, %.preheader71 ], [ %715, %.loopexit74 ]
  %722 = phi ptr [ %747, %.preheader71 ], [ %716, %.loopexit74 ]
  %723 = load i8, ptr %722, align 1, !tbaa !33
  store i8 %723, ptr %720, align 1, !tbaa !33
  %724 = getelementptr inbounds nuw i8, ptr %720, i64 1
  %725 = getelementptr inbounds nuw i8, ptr %722, i64 1
  %726 = load i8, ptr %725, align 1, !tbaa !33
  store i8 %726, ptr %724, align 1, !tbaa !33
  %727 = getelementptr inbounds nuw i8, ptr %720, i64 2
  %728 = getelementptr inbounds nuw i8, ptr %722, i64 2
  %729 = load i8, ptr %728, align 1, !tbaa !33
  store i8 %729, ptr %727, align 1, !tbaa !33
  %730 = getelementptr inbounds nuw i8, ptr %720, i64 3
  %731 = getelementptr inbounds nuw i8, ptr %722, i64 3
  %732 = load i8, ptr %731, align 1, !tbaa !33
  store i8 %732, ptr %730, align 1, !tbaa !33
  %733 = getelementptr inbounds nuw i8, ptr %720, i64 4
  %734 = getelementptr inbounds nuw i8, ptr %722, i64 4
  %735 = load i8, ptr %734, align 1, !tbaa !33
  store i8 %735, ptr %733, align 1, !tbaa !33
  %736 = getelementptr inbounds nuw i8, ptr %720, i64 5
  %737 = getelementptr inbounds nuw i8, ptr %722, i64 5
  %738 = load i8, ptr %737, align 1, !tbaa !33
  store i8 %738, ptr %736, align 1, !tbaa !33
  %739 = getelementptr inbounds nuw i8, ptr %720, i64 6
  %740 = getelementptr inbounds nuw i8, ptr %722, i64 6
  %741 = load i8, ptr %740, align 1, !tbaa !33
  store i8 %741, ptr %739, align 1, !tbaa !33
  %742 = getelementptr inbounds nuw i8, ptr %720, i64 7
  %743 = getelementptr inbounds nuw i8, ptr %722, i64 7
  %744 = load i8, ptr %743, align 1, !tbaa !33
  store i8 %744, ptr %742, align 1, !tbaa !33
  %745 = getelementptr inbounds nuw i8, ptr %720, i64 8
  %746 = add i32 %721, -8
  %747 = getelementptr inbounds nuw i8, ptr %722, i64 8
  %748 = icmp eq i32 %746, 0
  br i1 %748, label %.loopexit72, label %.preheader71, !llvm.loop !62

.loopexit72:                                      ; preds = %.preheader71, %.loopexit74, %691, %672
  %749 = phi ptr [ %692, %691 ], [ %673, %672 ], [ %713, %.loopexit74 ], [ %745, %.preheader71 ]
  %750 = zext nneg i32 %276 to i64
  %751 = sub nsw i64 0, %750
  %752 = getelementptr inbounds i8, ptr %749, i64 %751
  br label %753

753:                                              ; preds = %.loopexit72, %634, %.loopexit64, %.loopexit68, %434, %.loopexit60, %299
  %754 = phi ptr [ %414, %.loopexit60 ], [ %93, %299 ], [ %629, %.loopexit64 ], [ %550, %.loopexit68 ], [ %93, %434 ], [ %749, %.loopexit72 ], [ %93, %634 ]
  %755 = phi i32 [ %305, %.loopexit60 ], [ %189, %299 ], [ %630, %.loopexit64 ], [ %437, %.loopexit68 ], [ %189, %434 ], [ %640, %.loopexit72 ], [ %189, %634 ]
  %756 = phi ptr [ %417, %.loopexit60 ], [ %302, %299 ], [ %633, %.loopexit64 ], [ %42, %.loopexit68 ], [ %429, %434 ], [ %752, %.loopexit72 ], [ %637, %634 ]
  %757 = icmp ugt i32 %755, 2
  br i1 %757, label %758, label %.loopexit

758:                                              ; preds = %753
  %759 = add nsw i32 %755, -3
  %760 = udiv i32 %759, 3
  %761 = and i32 %760, 1
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %763, label %773

763:                                              ; preds = %758
  %764 = getelementptr inbounds nuw i8, ptr %756, i64 1
  %765 = load i8, ptr %756, align 1, !tbaa !33
  %766 = getelementptr inbounds nuw i8, ptr %754, i64 1
  store i8 %765, ptr %754, align 1, !tbaa !33
  %767 = getelementptr inbounds nuw i8, ptr %756, i64 2
  %768 = load i8, ptr %764, align 1, !tbaa !33
  %769 = getelementptr inbounds nuw i8, ptr %754, i64 2
  store i8 %768, ptr %766, align 1, !tbaa !33
  %770 = load i8, ptr %767, align 1, !tbaa !33
  store i8 %770, ptr %769, align 1, !tbaa !33
  %771 = getelementptr inbounds nuw i8, ptr %754, i64 3
  %772 = getelementptr inbounds nuw i8, ptr %756, i64 3
  br label %773

773:                                              ; preds = %763, %758
  %774 = phi ptr [ %756, %758 ], [ %772, %763 ]
  %775 = phi i32 [ %755, %758 ], [ %759, %763 ]
  %776 = phi ptr [ %754, %758 ], [ %771, %763 ]
  %777 = phi ptr [ poison, %758 ], [ %771, %763 ]
  %778 = phi ptr [ poison, %758 ], [ %772, %763 ]
  %779 = icmp ult i32 %759, 3
  br i1 %779, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %773, %.preheader
  %780 = phi ptr [ %801, %.preheader ], [ %774, %773 ]
  %781 = phi i32 [ %799, %.preheader ], [ %775, %773 ]
  %782 = phi ptr [ %800, %.preheader ], [ %776, %773 ]
  %783 = getelementptr inbounds nuw i8, ptr %780, i64 1
  %784 = load i8, ptr %780, align 1, !tbaa !33
  %785 = getelementptr inbounds nuw i8, ptr %782, i64 1
  store i8 %784, ptr %782, align 1, !tbaa !33
  %786 = getelementptr inbounds nuw i8, ptr %780, i64 2
  %787 = load i8, ptr %783, align 1, !tbaa !33
  %788 = getelementptr inbounds nuw i8, ptr %782, i64 2
  store i8 %787, ptr %785, align 1, !tbaa !33
  %789 = load i8, ptr %786, align 1, !tbaa !33
  store i8 %789, ptr %788, align 1, !tbaa !33
  %790 = getelementptr inbounds nuw i8, ptr %782, i64 3
  %791 = getelementptr inbounds nuw i8, ptr %780, i64 3
  %792 = getelementptr inbounds nuw i8, ptr %780, i64 4
  %793 = load i8, ptr %791, align 1, !tbaa !33
  %794 = getelementptr inbounds nuw i8, ptr %782, i64 4
  store i8 %793, ptr %790, align 1, !tbaa !33
  %795 = getelementptr inbounds nuw i8, ptr %780, i64 5
  %796 = load i8, ptr %792, align 1, !tbaa !33
  %797 = getelementptr inbounds nuw i8, ptr %782, i64 5
  store i8 %796, ptr %794, align 1, !tbaa !33
  %798 = load i8, ptr %795, align 1, !tbaa !33
  store i8 %798, ptr %797, align 1, !tbaa !33
  %799 = add i32 %781, -6
  %800 = getelementptr inbounds nuw i8, ptr %782, i64 6
  %801 = getelementptr inbounds nuw i8, ptr %780, i64 6
  %802 = icmp ugt i32 %799, 2
  br i1 %802, label %.preheader, label %.loopexit, !llvm.loop !63

.loopexit:                                        ; preds = %.preheader, %773, %753
  %803 = phi ptr [ %754, %753 ], [ %777, %773 ], [ %800, %.preheader ]
  %804 = phi i32 [ %755, %753 ], [ %759, %773 ], [ %799, %.preheader ]
  %805 = phi ptr [ %756, %753 ], [ %778, %773 ], [ %801, %.preheader ]
  %806 = icmp eq i32 %804, 0
  br i1 %806, label %937, label %807

807:                                              ; preds = %.loopexit
  %808 = load i8, ptr %805, align 1, !tbaa !33
  %809 = getelementptr inbounds nuw i8, ptr %803, i64 1
  store i8 %808, ptr %803, align 1, !tbaa !33
  %810 = icmp eq i32 %804, 2
  br i1 %810, label %811, label %937

811:                                              ; preds = %807
  %812 = getelementptr inbounds nuw i8, ptr %805, i64 1
  %813 = load i8, ptr %812, align 1, !tbaa !33
  %814 = getelementptr inbounds nuw i8, ptr %803, i64 2
  store i8 %813, ptr %809, align 1, !tbaa !33
  br label %937

815:                                              ; preds = %283
  %816 = zext nneg i32 %276 to i64
  %817 = sub nsw i64 0, %816
  %818 = getelementptr inbounds i8, ptr %93, i64 %817
  %819 = udiv i32 %189, 3
  %820 = add nsw i32 %189, -3
  %821 = tail call i32 @llvm.umin.i32(i32 %820, i32 2)
  %822 = xor i32 %821, -1
  %823 = add nsw i32 %189, %822
  %824 = udiv i32 %823, 3
  %825 = icmp samesign ugt i32 %819, %824
  br i1 %825, label %826, label %846, !prof !41, !nosanitize !16

826:                                              ; preds = %815
  %827 = and i32 %824, 1
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %829, label %839

829:                                              ; preds = %826
  %830 = getelementptr inbounds nuw i8, ptr %818, i64 1
  %831 = load i8, ptr %818, align 1, !tbaa !33
  %832 = getelementptr inbounds nuw i8, ptr %93, i64 1
  store i8 %831, ptr %93, align 1, !tbaa !33
  %833 = getelementptr inbounds nuw i8, ptr %818, i64 2
  %834 = load i8, ptr %830, align 1, !tbaa !33
  %835 = getelementptr inbounds nuw i8, ptr %93, i64 2
  store i8 %834, ptr %832, align 1, !tbaa !33
  %836 = load i8, ptr %833, align 1, !tbaa !33
  store i8 %836, ptr %835, align 1, !tbaa !33
  %837 = getelementptr inbounds nuw i8, ptr %93, i64 3
  %838 = getelementptr inbounds nuw i8, ptr %818, i64 3
  br label %839

839:                                              ; preds = %829, %826
  %840 = phi ptr [ %93, %826 ], [ %837, %829 ]
  %841 = phi i32 [ %189, %826 ], [ %820, %829 ]
  %842 = phi ptr [ %818, %826 ], [ %838, %829 ]
  %843 = phi ptr [ poison, %826 ], [ %837, %829 ]
  %844 = phi ptr [ poison, %826 ], [ %838, %829 ]
  %845 = icmp ult i32 %823, 3
  br i1 %845, label %.loopexit76, label %.preheader75

846:                                              ; preds = %815
  %847 = getelementptr inbounds nuw i8, ptr %818, i64 1
  %848 = load i8, ptr %818, align 1, !tbaa !33
  %849 = getelementptr inbounds nuw i8, ptr %93, i64 1
  store i8 %848, ptr %93, align 1, !tbaa !33
  %850 = getelementptr inbounds nuw i8, ptr %818, i64 2
  %851 = load i8, ptr %847, align 1, !tbaa !33
  %852 = getelementptr inbounds nuw i8, ptr %93, i64 2
  store i8 %851, ptr %849, align 1, !tbaa !33
  %853 = load i8, ptr %850, align 1, !tbaa !33
  store i8 %853, ptr %852, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

.preheader75:                                     ; preds = %839, %.preheader75
  %854 = phi ptr [ %874, %.preheader75 ], [ %840, %839 ]
  %855 = phi i32 [ %873, %.preheader75 ], [ %841, %839 ]
  %856 = phi ptr [ %875, %.preheader75 ], [ %842, %839 ]
  %857 = getelementptr inbounds nuw i8, ptr %856, i64 1
  %858 = load i8, ptr %856, align 1, !tbaa !33
  %859 = getelementptr inbounds nuw i8, ptr %854, i64 1
  store i8 %858, ptr %854, align 1, !tbaa !33
  %860 = getelementptr inbounds nuw i8, ptr %856, i64 2
  %861 = load i8, ptr %857, align 1, !tbaa !33
  %862 = getelementptr inbounds nuw i8, ptr %854, i64 2
  store i8 %861, ptr %859, align 1, !tbaa !33
  %863 = load i8, ptr %860, align 1, !tbaa !33
  store i8 %863, ptr %862, align 1, !tbaa !33
  %864 = getelementptr inbounds nuw i8, ptr %854, i64 3
  %865 = getelementptr inbounds nuw i8, ptr %856, i64 3
  %866 = getelementptr inbounds nuw i8, ptr %856, i64 4
  %867 = load i8, ptr %865, align 1, !tbaa !33
  %868 = getelementptr inbounds nuw i8, ptr %854, i64 4
  store i8 %867, ptr %864, align 1, !tbaa !33
  %869 = getelementptr inbounds nuw i8, ptr %856, i64 5
  %870 = load i8, ptr %866, align 1, !tbaa !33
  %871 = getelementptr inbounds nuw i8, ptr %854, i64 5
  store i8 %870, ptr %868, align 1, !tbaa !33
  %872 = load i8, ptr %869, align 1, !tbaa !33
  store i8 %872, ptr %871, align 1, !tbaa !33
  %873 = add i32 %855, -6
  %874 = getelementptr inbounds nuw i8, ptr %854, i64 6
  %875 = getelementptr inbounds nuw i8, ptr %856, i64 6
  %876 = icmp ugt i32 %873, 2
  br i1 %876, label %.preheader75, label %.loopexit76.loopexit, !llvm.loop !64

.loopexit76.loopexit:                             ; preds = %.preheader75
  %877 = getelementptr inbounds nuw i8, ptr %854, i64 3
  %878 = getelementptr inbounds nuw i8, ptr %856, i64 3
  br label %.loopexit76

.loopexit76:                                      ; preds = %.loopexit76.loopexit, %839
  %879 = phi ptr [ %93, %839 ], [ %877, %.loopexit76.loopexit ]
  %880 = phi ptr [ %818, %839 ], [ %878, %.loopexit76.loopexit ]
  %881 = phi ptr [ %843, %839 ], [ %874, %.loopexit76.loopexit ]
  %882 = phi ptr [ %844, %839 ], [ %875, %.loopexit76.loopexit ]
  %883 = mul nsw i32 %824, -3
  %884 = add nsw i32 %883, %820
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %937, label %886

886:                                              ; preds = %.loopexit76
  %887 = load i8, ptr %882, align 1, !tbaa !33
  %888 = getelementptr inbounds nuw i8, ptr %879, i64 4
  store i8 %887, ptr %881, align 1, !tbaa !33
  %889 = icmp eq i32 %884, 2
  br i1 %889, label %890, label %937

890:                                              ; preds = %886
  %891 = getelementptr inbounds nuw i8, ptr %880, i64 4
  %892 = load i8, ptr %891, align 1, !tbaa !33
  %893 = getelementptr inbounds nuw i8, ptr %879, i64 5
  store i8 %892, ptr %888, align 1, !tbaa !33
  br label %937

894:                                              ; preds = %228
  %895 = and i32 %234, 64
  %896 = icmp eq i32 %895, 0
  br i1 %896, label %897, label %.loopexit77

897:                                              ; preds = %894
  %898 = shl nsw i32 -1, %234
  %899 = xor i32 %898, -1
  %900 = getelementptr inbounds nuw i8, ptr %231, i64 2
  %901 = load i16, ptr %900, align 2, !tbaa !39
  %902 = zext i16 %901 to i64
  %903 = getelementptr inbounds nuw [4 x i8], ptr %51, i64 %902
  %904 = zext nneg i32 %899 to i64
  %905 = and i64 %230, %904
  %906 = getelementptr inbounds nuw [4 x i8], ptr %903, i64 %905
  %907 = getelementptr inbounds nuw i8, ptr %906, i64 1
  %908 = load i8, ptr %907, align 1, !tbaa !34
  %909 = zext i8 %908 to i32
  %910 = zext nneg i8 %908 to i64
  %911 = lshr i64 %230, %910
  %912 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %232, i32 %909), !nosanitize !16
  %913 = extractvalue { i32, i1 } %912, 1, !nosanitize !16
  br i1 %913, label %.loopexit78, label %228, !prof !65, !nosanitize !16

914:                                              ; preds = %146
  %915 = and i32 %139, 64
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %917, label %934

917:                                              ; preds = %914
  %918 = shl nsw i32 -1, %139
  %919 = xor i32 %918, -1
  %920 = getelementptr inbounds nuw i8, ptr %136, i64 2
  %921 = load i16, ptr %920, align 2, !tbaa !39
  %922 = zext i16 %921 to i64
  %923 = getelementptr inbounds nuw [4 x i8], ptr %49, i64 %922
  %924 = zext nneg i32 %919 to i64
  %925 = and i64 %135, %924
  %926 = getelementptr inbounds nuw [4 x i8], ptr %923, i64 %925
  %927 = getelementptr inbounds nuw i8, ptr %926, i64 1
  %928 = load i8, ptr %927, align 1, !tbaa !34
  %929 = zext i8 %928 to i32
  %930 = zext nneg i8 %928 to i64
  %931 = lshr i64 %135, %930
  %932 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %137, i32 %929), !nosanitize !16
  %933 = extractvalue { i32, i1 } %932, 1, !nosanitize !16
  br i1 %933, label %.loopexit79, label %133, !prof !65, !nosanitize !16

934:                                              ; preds = %914
  %935 = and i32 %139, 32
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %.loopexit77, label %950

937:                                              ; preds = %890, %886, %.loopexit76, %811, %807, %.loopexit, %141
  %938 = phi i32 [ %137, %141 ], [ %280, %811 ], [ %280, %807 ], [ %280, %.loopexit ], [ %280, %890 ], [ %280, %886 ], [ %280, %.loopexit76 ]
  %939 = phi i64 [ %135, %141 ], [ %278, %811 ], [ %278, %807 ], [ %278, %.loopexit ], [ %278, %890 ], [ %278, %886 ], [ %278, %.loopexit76 ]
  %940 = phi ptr [ %145, %141 ], [ %814, %811 ], [ %809, %807 ], [ %803, %.loopexit ], [ %893, %890 ], [ %888, %886 ], [ %881, %.loopexit76 ]
  %941 = phi ptr [ %122, %141 ], [ %271, %811 ], [ %271, %807 ], [ %271, %.loopexit ], [ %271, %890 ], [ %271, %886 ], [ %271, %.loopexit76 ]
  %942 = icmp ult ptr %941, %14
  %943 = icmp ult ptr %940, %34
  %944 = select i1 %942, i1 %943, i1 false
  br i1 %944, label %90, label %.loopexit83, !llvm.loop !66

.loopexit77:                                      ; preds = %291, %894, %934
  %945 = phi ptr [ @.str.2, %934 ], [ @.str.1, %894 ], [ @.str, %291 ]
  %946 = phi i32 [ %137, %934 ], [ %232, %894 ], [ %280, %291 ]
  %947 = phi i64 [ %135, %934 ], [ %230, %894 ], [ %278, %291 ]
  %948 = phi ptr [ %122, %934 ], [ %217, %894 ], [ %271, %291 ]
  %949 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %945, ptr %949, align 8, !tbaa !67
  br label %950

950:                                              ; preds = %.loopexit77, %934
  %951 = phi i32 [ 16191, %934 ], [ 16209, %.loopexit77 ]
  %952 = phi i32 [ %137, %934 ], [ %946, %.loopexit77 ]
  %953 = phi i64 [ %135, %934 ], [ %947, %.loopexit77 ]
  %954 = phi ptr [ %122, %934 ], [ %948, %.loopexit77 ]
  %955 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %951, ptr %955, align 8, !tbaa !68
  br label %.loopexit83

.loopexit83:                                      ; preds = %937, %950
  %956 = phi i32 [ %952, %950 ], [ %938, %937 ]
  %957 = phi i64 [ %953, %950 ], [ %939, %937 ]
  %958 = phi ptr [ %93, %950 ], [ %940, %937 ]
  %959 = phi ptr [ %954, %950 ], [ %941, %937 ]
  %960 = and i32 %956, -8
  %961 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %956, i32 %960), !nosanitize !16
  %962 = extractvalue { i32, i1 } %961, 1, !nosanitize !16
  br i1 %962, label %963, label %964, !prof !17, !nosanitize !16

963:                                              ; preds = %.loopexit83
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

964:                                              ; preds = %.loopexit83
  %965 = lshr i32 %956, 3
  %966 = zext nneg i32 %965 to i64
  %967 = sub nsw i64 0, %966
  %968 = getelementptr inbounds i8, ptr %959, i64 %967
  store ptr %968, ptr %0, align 8, !tbaa !14
  store ptr %958, ptr %15, align 8, !tbaa !18
  %969 = ptrtoint ptr %14 to i64
  %970 = ptrtoint ptr %968 to i64
  %971 = sub i64 %969, %970
  %972 = trunc i64 %971 to i32
  %973 = add i32 %972, 5
  store i32 %973, ptr %6, align 8, !tbaa !15
  %974 = ptrtoint ptr %34 to i64
  %975 = ptrtoint ptr %958 to i64
  %976 = sub i64 %974, %975
  %977 = extractvalue { i32, i1 } %961, 0, !nosanitize !16
  %978 = shl nsw i32 -1, %977
  %979 = xor i32 %978, -1
  %980 = zext nneg i32 %979 to i64
  %981 = and i64 %957, %980
  %982 = trunc i64 %976 to i32
  %983 = add i32 %982, 257
  store i32 %983, ptr %18, align 8, !tbaa !19
  store i64 %981, ptr %44, align 8, !tbaa !27
  store i32 %977, ptr %46, align 8, !tbaa !28
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
