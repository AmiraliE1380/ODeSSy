; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/both.inffast.ll'
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
  %.neg58 = add i32 %36, %1
  %.reass = add i32 %.neg58, %invariant.op
  %89 = add i32 %69, %74
  br label %90

90:                                               ; preds = %936, %27
  %91 = phi i32 [ %47, %27 ], [ %937, %936 ]
  %92 = phi i64 [ %45, %27 ], [ %938, %936 ]
  %93 = phi ptr [ %16, %27 ], [ %939, %936 ]
  %94 = phi ptr [ %5, %27 ], [ %940, %936 ]
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
  br i1 %129, label %.loopexit87, label %130, !prof !37, !nosanitize !16

130:                                              ; preds = %119
  %131 = zext nneg i8 %126 to i64
  %132 = lshr i64 %121, %131
  br label %133

.loopexit87:                                      ; preds = %119, %916
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

133:                                              ; preds = %916, %130
  %134 = phi { i32, i1 } [ %931, %916 ], [ %128, %130 ]
  %135 = phi i64 [ %930, %916 ], [ %132, %130 ]
  %136 = phi ptr [ %925, %916 ], [ %124, %130 ]
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
  br label %936

146:                                              ; preds = %133
  %147 = and i32 %139, 16
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %913, label %149

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
  br i1 %224, label %.loopexit86, label %225, !prof !37, !nosanitize !16

225:                                              ; preds = %214
  %226 = zext nneg i8 %221 to i64
  %227 = lshr i64 %216, %226
  br label %228

.loopexit86:                                      ; preds = %214, %896
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

228:                                              ; preds = %896, %225
  %229 = phi { i32, i1 } [ %911, %896 ], [ %223, %225 ]
  %230 = phi i64 [ %910, %896 ], [ %227, %225 ]
  %231 = phi ptr [ %905, %896 ], [ %219, %225 ]
  %232 = extractvalue { i32, i1 } %229, 0
  %233 = load i8, ptr %231, align 2, !tbaa !38
  %234 = zext i8 %233 to i32
  %235 = and i32 %234, 16
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %893, label %237

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
  br i1 %287, label %288, label %814

288:                                              ; preds = %283
  %289 = sub nuw nsw i32 %276, %286
  %290 = icmp ugt i32 %289, %38
  br i1 %290, label %291, label %294

291:                                              ; preds = %288
  %292 = load i32, ptr %63, align 8, !tbaa !40
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %.loopexit85

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
  br i1 %303, label %304, label %752

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
  %315 = add i32 %.neg58, %306
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
  br i1 %339, label %.loopexit68, label %340

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
  br i1 %361, label %.loopexit68, label %362

362:                                              ; preds = %356, %340, %314, %311
  %363 = phi ptr [ %93, %311 ], [ %93, %314 ], [ %338, %340 ], [ %357, %356 ]
  %364 = phi i32 [ %289, %311 ], [ %289, %314 ], [ %343, %340 ], [ %359, %356 ]
  %365 = phi ptr [ %302, %311 ], [ %302, %314 ], [ %341, %340 ], [ %360, %356 ]
  %366 = add nsw i32 %364, -1
  %367 = and i32 %364, 7
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %.loopexit70, label %.preheader69

.preheader69:                                     ; preds = %362, %.preheader69
  %369 = phi ptr [ %373, %.preheader69 ], [ %363, %362 ]
  %370 = phi ptr [ %374, %.preheader69 ], [ %365, %362 ]
  %371 = phi i32 [ %375, %.preheader69 ], [ 0, %362 ]
  %372 = load i8, ptr %370, align 1, !tbaa !33
  store i8 %372, ptr %369, align 1, !tbaa !33
  %373 = getelementptr inbounds nuw i8, ptr %369, i64 1
  %374 = getelementptr inbounds nuw i8, ptr %370, i64 1
  %375 = add nuw nsw i32 %371, 1
  %376 = icmp eq i32 %375, %367
  br i1 %376, label %.loopexit70.loopexit, label %.preheader69, !llvm.loop !48

.loopexit70.loopexit:                             ; preds = %.preheader69
  %377 = and i32 %364, -8
  br label %.loopexit70

.loopexit70:                                      ; preds = %.loopexit70.loopexit, %362
  %378 = phi ptr [ poison, %362 ], [ %373, %.loopexit70.loopexit ]
  %379 = phi ptr [ %363, %362 ], [ %373, %.loopexit70.loopexit ]
  %380 = phi i32 [ %364, %362 ], [ %377, %.loopexit70.loopexit ]
  %381 = phi ptr [ %365, %362 ], [ %374, %.loopexit70.loopexit ]
  %382 = icmp ult i32 %366, 7
  br i1 %382, label %.loopexit68, label %.preheader67

383:                                              ; preds = %304
  %384 = load i8, ptr %302, align 1, !tbaa !33
  store i8 %384, ptr %93, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

.preheader67:                                     ; preds = %.loopexit70, %.preheader67
  %385 = phi ptr [ %410, %.preheader67 ], [ %379, %.loopexit70 ]
  %386 = phi i32 [ %411, %.preheader67 ], [ %380, %.loopexit70 ]
  %387 = phi ptr [ %412, %.preheader67 ], [ %381, %.loopexit70 ]
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
  br i1 %413, label %.loopexit68, label %.preheader67, !llvm.loop !50

.loopexit68:                                      ; preds = %.preheader67, %.loopexit70, %356, %337
  %414 = phi ptr [ %357, %356 ], [ %338, %337 ], [ %378, %.loopexit70 ], [ %410, %.preheader67 ]
  %415 = zext nneg i32 %276 to i64
  %416 = sub nsw i64 0, %415
  %417 = getelementptr inbounds i8, ptr %414, i64 %416
  br label %752

418:                                              ; preds = %294
  %419 = icmp ult i32 %40, %289
  br i1 %419, label %420, label %633

420:                                              ; preds = %418
  br i1 %66, label %.loopexit91, label %421, !prof !17, !nosanitize !16

.loopexit91:                                      ; preds = %420, %987, %970
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

421:                                              ; preds = %420
  %422 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %67, i32 %289), !nosanitize !16
  %423 = extractvalue { i32, i1 } %422, 1, !nosanitize !16
  br i1 %423, label %424, label %425, !prof !17, !nosanitize !16

424:                                              ; preds = %421
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

425:                                              ; preds = %421
  %426 = extractvalue { i32, i1 } %422, 0, !nosanitize !16
  %427 = zext i32 %426 to i64
  %428 = getelementptr inbounds nuw i8, ptr %42, i64 %427
  %429 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %289, i32 %40), !nosanitize !16
  %430 = extractvalue { i32, i1 } %429, 0, !nosanitize !16
  %431 = extractvalue { i32, i1 } %429, 1, !nosanitize !16
  br i1 %431, label %432, label %433, !prof !17, !nosanitize !16

432:                                              ; preds = %425
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

433:                                              ; preds = %425
  %434 = icmp ult i32 %430, %189
  br i1 %434, label %435, label %752

435:                                              ; preds = %433
  %436 = sub nuw nsw i32 %189, %430
  %437 = trunc i64 %284 to i32
  %438 = add i32 %72, %437
  %439 = sub i32 %70, %438
  %440 = add i32 %439, %240
  %441 = add i32 %440, %275
  %442 = icmp ugt i32 %430, %441
  br i1 %442, label %443, label %518, !prof !41, !nosanitize !16

443:                                              ; preds = %435
  %444 = add i32 %1, %437
  %445 = sub i32 %89, %444
  %446 = add i32 %445, %240
  %447 = add i32 %446, %275
  %448 = zext i32 %447 to i64
  %449 = add nuw nsw i64 %448, 1
  %450 = icmp ult i32 %447, 3
  br i1 %450, label %497, label %451

451:                                              ; preds = %443
  %452 = add i32 %.reass, %437
  %453 = sub i32 %452, %276
  %454 = zext i32 %453 to i64
  %455 = add i64 %43, %454
  %456 = sub i64 %284, %455
  %457 = icmp ult i64 %456, 32
  br i1 %457, label %497, label %458

458:                                              ; preds = %451
  %459 = icmp ult i32 %447, 31
  br i1 %459, label %481, label %460

460:                                              ; preds = %458
  %461 = and i64 %449, 8589934560
  br label %462

462:                                              ; preds = %462, %460
  %463 = phi i64 [ 0, %460 ], [ %470, %462 ]
  %464 = getelementptr i8, ptr %93, i64 %463
  %465 = getelementptr i8, ptr %428, i64 %463
  %466 = getelementptr i8, ptr %465, i64 16
  %467 = load <16 x i8>, ptr %465, align 1, !tbaa !33
  %468 = load <16 x i8>, ptr %466, align 1, !tbaa !33
  %469 = getelementptr i8, ptr %464, i64 16
  store <16 x i8> %467, ptr %464, align 1, !tbaa !33
  store <16 x i8> %468, ptr %469, align 1, !tbaa !33
  %470 = add nuw i64 %463, 32
  %471 = icmp eq i64 %470, %461
  br i1 %471, label %472, label %462, !llvm.loop !51

472:                                              ; preds = %462
  %473 = getelementptr i8, ptr %93, i64 %461
  %474 = icmp eq i64 %449, %461
  br i1 %474, label %.loopexit76, label %475

475:                                              ; preds = %472
  %476 = getelementptr i8, ptr %428, i64 %461
  %477 = trunc i64 %461 to i32
  %478 = sub i32 %430, %477
  %479 = and i64 %449, 28
  %480 = icmp eq i64 %479, 0
  br i1 %480, label %497, label %481, !prof !46

481:                                              ; preds = %475, %458
  %482 = phi i64 [ %461, %475 ], [ 0, %458 ]
  %483 = and i64 %449, 8589934588
  br label %484

484:                                              ; preds = %484, %481
  %485 = phi i64 [ %482, %481 ], [ %489, %484 ]
  %486 = getelementptr i8, ptr %93, i64 %485
  %487 = getelementptr i8, ptr %428, i64 %485
  %488 = load <4 x i8>, ptr %487, align 1, !tbaa !33
  store <4 x i8> %488, ptr %486, align 1, !tbaa !33
  %489 = add nuw i64 %485, 4
  %490 = icmp eq i64 %489, %483
  br i1 %490, label %491, label %484, !llvm.loop !52

491:                                              ; preds = %484
  %492 = getelementptr i8, ptr %93, i64 %483
  %493 = trunc i64 %483 to i32
  %494 = sub i32 %430, %493
  %495 = getelementptr i8, ptr %428, i64 %483
  %496 = icmp eq i64 %449, %483
  br i1 %496, label %.loopexit76, label %497

497:                                              ; preds = %491, %475, %451, %443
  %498 = phi ptr [ %93, %443 ], [ %93, %451 ], [ %473, %475 ], [ %492, %491 ]
  %499 = phi i32 [ %430, %443 ], [ %430, %451 ], [ %478, %475 ], [ %494, %491 ]
  %500 = phi ptr [ %428, %443 ], [ %428, %451 ], [ %476, %475 ], [ %495, %491 ]
  %501 = add i32 %499, -1
  %502 = and i32 %499, 7
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %.loopexit78, label %.preheader77

.preheader77:                                     ; preds = %497, %.preheader77
  %504 = phi ptr [ %508, %.preheader77 ], [ %498, %497 ]
  %505 = phi ptr [ %509, %.preheader77 ], [ %500, %497 ]
  %506 = phi i32 [ %510, %.preheader77 ], [ 0, %497 ]
  %507 = load i8, ptr %505, align 1, !tbaa !33
  store i8 %507, ptr %504, align 1, !tbaa !33
  %508 = getelementptr inbounds nuw i8, ptr %504, i64 1
  %509 = getelementptr inbounds nuw i8, ptr %505, i64 1
  %510 = add nuw nsw i32 %506, 1
  %511 = icmp eq i32 %510, %502
  br i1 %511, label %.loopexit78.loopexit, label %.preheader77, !llvm.loop !53

.loopexit78.loopexit:                             ; preds = %.preheader77
  %512 = and i32 %499, -8
  br label %.loopexit78

.loopexit78:                                      ; preds = %.loopexit78.loopexit, %497
  %513 = phi ptr [ poison, %497 ], [ %508, %.loopexit78.loopexit ]
  %514 = phi ptr [ %498, %497 ], [ %508, %.loopexit78.loopexit ]
  %515 = phi i32 [ %499, %497 ], [ %512, %.loopexit78.loopexit ]
  %516 = phi ptr [ %500, %497 ], [ %509, %.loopexit78.loopexit ]
  %517 = icmp ult i32 %501, 7
  br i1 %517, label %.loopexit76, label %.preheader75

518:                                              ; preds = %435
  %519 = load i8, ptr %428, align 1, !tbaa !33
  store i8 %519, ptr %93, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

.preheader75:                                     ; preds = %.loopexit78, %.preheader75
  %520 = phi ptr [ %545, %.preheader75 ], [ %514, %.loopexit78 ]
  %521 = phi i32 [ %546, %.preheader75 ], [ %515, %.loopexit78 ]
  %522 = phi ptr [ %547, %.preheader75 ], [ %516, %.loopexit78 ]
  %523 = load i8, ptr %522, align 1, !tbaa !33
  store i8 %523, ptr %520, align 1, !tbaa !33
  %524 = getelementptr inbounds nuw i8, ptr %520, i64 1
  %525 = getelementptr inbounds nuw i8, ptr %522, i64 1
  %526 = load i8, ptr %525, align 1, !tbaa !33
  store i8 %526, ptr %524, align 1, !tbaa !33
  %527 = getelementptr inbounds nuw i8, ptr %520, i64 2
  %528 = getelementptr inbounds nuw i8, ptr %522, i64 2
  %529 = load i8, ptr %528, align 1, !tbaa !33
  store i8 %529, ptr %527, align 1, !tbaa !33
  %530 = getelementptr inbounds nuw i8, ptr %520, i64 3
  %531 = getelementptr inbounds nuw i8, ptr %522, i64 3
  %532 = load i8, ptr %531, align 1, !tbaa !33
  store i8 %532, ptr %530, align 1, !tbaa !33
  %533 = getelementptr inbounds nuw i8, ptr %520, i64 4
  %534 = getelementptr inbounds nuw i8, ptr %522, i64 4
  %535 = load i8, ptr %534, align 1, !tbaa !33
  store i8 %535, ptr %533, align 1, !tbaa !33
  %536 = getelementptr inbounds nuw i8, ptr %520, i64 5
  %537 = getelementptr inbounds nuw i8, ptr %522, i64 5
  %538 = load i8, ptr %537, align 1, !tbaa !33
  store i8 %538, ptr %536, align 1, !tbaa !33
  %539 = getelementptr inbounds nuw i8, ptr %520, i64 6
  %540 = getelementptr inbounds nuw i8, ptr %522, i64 6
  %541 = load i8, ptr %540, align 1, !tbaa !33
  store i8 %541, ptr %539, align 1, !tbaa !33
  %542 = getelementptr inbounds nuw i8, ptr %520, i64 7
  %543 = getelementptr inbounds nuw i8, ptr %522, i64 7
  %544 = load i8, ptr %543, align 1, !tbaa !33
  store i8 %544, ptr %542, align 1, !tbaa !33
  %545 = getelementptr inbounds nuw i8, ptr %520, i64 8
  %546 = add i32 %521, -8
  %547 = getelementptr inbounds nuw i8, ptr %522, i64 8
  %548 = icmp eq i32 %546, 0
  br i1 %548, label %.loopexit76, label %.preheader75, !llvm.loop !54

.loopexit76:                                      ; preds = %.preheader75, %.loopexit78, %491, %472
  %549 = phi ptr [ %492, %491 ], [ %473, %472 ], [ %513, %.loopexit78 ], [ %545, %.preheader75 ]
  %550 = icmp ult i32 %40, %436
  br i1 %550, label %551, label %752

551:                                              ; preds = %.loopexit76
  %552 = ptrtoaddr ptr %549 to i64
  %553 = sub i64 %552, %43
  %554 = icmp ult i64 %553, 32
  %555 = select i1 %75, i1 true, i1 %554
  br i1 %555, label %578, label %556

556:                                              ; preds = %551
  br i1 %76, label %.preheader758, label %.preheader607

.preheader607:                                    ; preds = %556, %.preheader607
  %557 = phi i64 [ %564, %.preheader607 ], [ 0, %556 ]
  %558 = getelementptr i8, ptr %549, i64 %557
  %559 = getelementptr i8, ptr %42, i64 %557
  %560 = getelementptr i8, ptr %559, i64 16
  %561 = load <16 x i8>, ptr %559, align 1, !tbaa !33
  %562 = load <16 x i8>, ptr %560, align 1, !tbaa !33
  %563 = getelementptr i8, ptr %558, i64 16
  store <16 x i8> %561, ptr %558, align 1, !tbaa !33
  store <16 x i8> %562, ptr %563, align 1, !tbaa !33
  %564 = add nuw nsw i64 %557, 32
  %565 = icmp eq i64 %564, %78
  br i1 %565, label %566, label %.preheader607, !llvm.loop !55

566:                                              ; preds = %.preheader607
  %567 = getelementptr i8, ptr %549, i64 %78
  br i1 %82, label %.loopexit72, label %568

568:                                              ; preds = %566
  br i1 %83, label %578, label %.preheader758, !prof !46

.preheader758:                                    ; preds = %568, %556
  %.ph = phi i64 [ 0, %556 ], [ %78, %568 ]
  br label %569

569:                                              ; preds = %.preheader758, %569
  %570 = phi i64 [ %574, %569 ], [ %.ph, %.preheader758 ]
  %571 = getelementptr i8, ptr %549, i64 %570
  %572 = getelementptr i8, ptr %42, i64 %570
  %573 = load <4 x i8>, ptr %572, align 1, !tbaa !33
  store <4 x i8> %573, ptr %571, align 1, !tbaa !33
  %574 = add nuw i64 %570, 4
  %575 = icmp eq i64 %574, %84
  br i1 %575, label %576, label %569, !llvm.loop !56

576:                                              ; preds = %569
  %577 = getelementptr i8, ptr %549, i64 %84
  br i1 %88, label %.loopexit72, label %578

578:                                              ; preds = %576, %568, %551
  %579 = phi ptr [ %549, %551 ], [ %567, %568 ], [ %577, %576 ]
  %580 = phi i32 [ %40, %551 ], [ %80, %568 ], [ %86, %576 ]
  %581 = phi ptr [ %42, %551 ], [ %81, %568 ], [ %87, %576 ]
  %582 = add i32 %580, -1
  %583 = and i32 %580, 7
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %.loopexit74, label %.preheader73

.preheader73:                                     ; preds = %578, %.preheader73
  %585 = phi ptr [ %589, %.preheader73 ], [ %579, %578 ]
  %586 = phi ptr [ %590, %.preheader73 ], [ %581, %578 ]
  %587 = phi i32 [ %591, %.preheader73 ], [ 0, %578 ]
  %588 = load i8, ptr %586, align 1, !tbaa !33
  %589 = getelementptr inbounds nuw i8, ptr %585, i64 1
  store i8 %588, ptr %585, align 1, !tbaa !33
  %590 = getelementptr inbounds nuw i8, ptr %586, i64 1
  %591 = add nuw nsw i32 %587, 1
  %592 = icmp eq i32 %591, %583
  br i1 %592, label %.loopexit74.loopexit, label %.preheader73, !llvm.loop !57

.loopexit74.loopexit:                             ; preds = %.preheader73
  %593 = and i32 %580, -8
  br label %.loopexit74

.loopexit74:                                      ; preds = %.loopexit74.loopexit, %578
  %594 = phi ptr [ poison, %578 ], [ %589, %.loopexit74.loopexit ]
  %595 = phi ptr [ %579, %578 ], [ %589, %.loopexit74.loopexit ]
  %596 = phi i32 [ %580, %578 ], [ %593, %.loopexit74.loopexit ]
  %597 = phi ptr [ %581, %578 ], [ %590, %.loopexit74.loopexit ]
  %598 = icmp ult i32 %582, 7
  br i1 %598, label %.loopexit72, label %.preheader71

.preheader71:                                     ; preds = %.loopexit74, %.preheader71
  %599 = phi ptr [ %624, %.preheader71 ], [ %595, %.loopexit74 ]
  %600 = phi i32 [ %625, %.preheader71 ], [ %596, %.loopexit74 ]
  %601 = phi ptr [ %626, %.preheader71 ], [ %597, %.loopexit74 ]
  %602 = load i8, ptr %601, align 1, !tbaa !33
  %603 = getelementptr inbounds nuw i8, ptr %599, i64 1
  store i8 %602, ptr %599, align 1, !tbaa !33
  %604 = getelementptr inbounds nuw i8, ptr %601, i64 1
  %605 = load i8, ptr %604, align 1, !tbaa !33
  %606 = getelementptr inbounds nuw i8, ptr %599, i64 2
  store i8 %605, ptr %603, align 1, !tbaa !33
  %607 = getelementptr inbounds nuw i8, ptr %601, i64 2
  %608 = load i8, ptr %607, align 1, !tbaa !33
  %609 = getelementptr inbounds nuw i8, ptr %599, i64 3
  store i8 %608, ptr %606, align 1, !tbaa !33
  %610 = getelementptr inbounds nuw i8, ptr %601, i64 3
  %611 = load i8, ptr %610, align 1, !tbaa !33
  %612 = getelementptr inbounds nuw i8, ptr %599, i64 4
  store i8 %611, ptr %609, align 1, !tbaa !33
  %613 = getelementptr inbounds nuw i8, ptr %601, i64 4
  %614 = load i8, ptr %613, align 1, !tbaa !33
  %615 = getelementptr inbounds nuw i8, ptr %599, i64 5
  store i8 %614, ptr %612, align 1, !tbaa !33
  %616 = getelementptr inbounds nuw i8, ptr %601, i64 5
  %617 = load i8, ptr %616, align 1, !tbaa !33
  %618 = getelementptr inbounds nuw i8, ptr %599, i64 6
  store i8 %617, ptr %615, align 1, !tbaa !33
  %619 = getelementptr inbounds nuw i8, ptr %601, i64 6
  %620 = load i8, ptr %619, align 1, !tbaa !33
  %621 = getelementptr inbounds nuw i8, ptr %599, i64 7
  store i8 %620, ptr %618, align 1, !tbaa !33
  %622 = getelementptr inbounds nuw i8, ptr %601, i64 7
  %623 = load i8, ptr %622, align 1, !tbaa !33
  %624 = getelementptr inbounds nuw i8, ptr %599, i64 8
  store i8 %623, ptr %621, align 1, !tbaa !33
  %625 = add i32 %600, -8
  %626 = getelementptr inbounds nuw i8, ptr %601, i64 8
  %627 = icmp eq i32 %625, 0
  br i1 %627, label %.loopexit72, label %.preheader71, !llvm.loop !58

.loopexit72:                                      ; preds = %.preheader71, %.loopexit74, %576, %566
  %628 = phi ptr [ %577, %576 ], [ %567, %566 ], [ %594, %.loopexit74 ], [ %624, %.preheader71 ]
  %629 = sub nuw nsw i32 %436, %40
  %630 = zext nneg i32 %276 to i64
  %631 = sub nsw i64 0, %630
  %632 = getelementptr inbounds i8, ptr %628, i64 %631
  br label %752

633:                                              ; preds = %418
  %634 = sub nuw i32 %40, %289
  %635 = zext i32 %634 to i64
  %636 = getelementptr inbounds nuw i8, ptr %42, i64 %635
  %637 = icmp ult i32 %289, %189
  br i1 %637, label %638, label %752

638:                                              ; preds = %633
  %639 = sub nuw nsw i32 %189, %289
  %640 = trunc i64 %284 to i32
  %641 = sub i32 %71, %640
  %642 = add i32 %641, %240
  %643 = add i32 %642, %275
  %644 = icmp ugt i32 %289, %643
  br i1 %644, label %645, label %717, !prof !41, !nosanitize !16

645:                                              ; preds = %638
  %646 = zext nneg i32 %289 to i64
  %647 = icmp samesign ult i32 %289, 4
  br i1 %647, label %696, label %648

648:                                              ; preds = %645
  %649 = add i32 %72, %640
  %650 = add i32 %69, %240
  %651 = add i32 %650, %275
  %652 = sub i32 %649, %651
  %653 = zext i32 %652 to i64
  %654 = add i64 %43, %653
  %655 = sub i64 %284, %654
  %656 = icmp ult i64 %655, 32
  br i1 %656, label %696, label %657

657:                                              ; preds = %648
  %658 = icmp samesign ult i32 %289, 32
  br i1 %658, label %680, label %659

659:                                              ; preds = %657
  %660 = and i64 %646, 2147483616
  br label %661

661:                                              ; preds = %661, %659
  %662 = phi i64 [ 0, %659 ], [ %669, %661 ]
  %663 = getelementptr i8, ptr %93, i64 %662
  %664 = getelementptr i8, ptr %636, i64 %662
  %665 = getelementptr i8, ptr %664, i64 16
  %666 = load <16 x i8>, ptr %664, align 1, !tbaa !33
  %667 = load <16 x i8>, ptr %665, align 1, !tbaa !33
  %668 = getelementptr i8, ptr %663, i64 16
  store <16 x i8> %666, ptr %663, align 1, !tbaa !33
  store <16 x i8> %667, ptr %668, align 1, !tbaa !33
  %669 = add nuw i64 %662, 32
  %670 = icmp eq i64 %669, %660
  br i1 %670, label %671, label %661, !llvm.loop !59

671:                                              ; preds = %661
  %672 = getelementptr i8, ptr %93, i64 %660
  %673 = icmp eq i64 %660, %646
  br i1 %673, label %.loopexit80, label %674

674:                                              ; preds = %671
  %675 = getelementptr i8, ptr %636, i64 %660
  %676 = trunc nuw nsw i64 %660 to i32
  %677 = sub nsw i32 %289, %676
  %678 = and i64 %646, 28
  %679 = icmp eq i64 %678, 0
  br i1 %679, label %696, label %680, !prof !46

680:                                              ; preds = %674, %657
  %681 = phi i64 [ %660, %674 ], [ 0, %657 ]
  %682 = and i64 %646, 2147483644
  br label %683

683:                                              ; preds = %683, %680
  %684 = phi i64 [ %681, %680 ], [ %688, %683 ]
  %685 = getelementptr i8, ptr %93, i64 %684
  %686 = getelementptr i8, ptr %636, i64 %684
  %687 = load <4 x i8>, ptr %686, align 1, !tbaa !33
  store <4 x i8> %687, ptr %685, align 1, !tbaa !33
  %688 = add nuw i64 %684, 4
  %689 = icmp eq i64 %688, %682
  br i1 %689, label %690, label %683, !llvm.loop !60

690:                                              ; preds = %683
  %691 = getelementptr i8, ptr %93, i64 %682
  %692 = trunc nuw nsw i64 %682 to i32
  %693 = sub nsw i32 %289, %692
  %694 = getelementptr i8, ptr %636, i64 %682
  %695 = icmp eq i64 %682, %646
  br i1 %695, label %.loopexit80, label %696

696:                                              ; preds = %690, %674, %648, %645
  %697 = phi ptr [ %93, %645 ], [ %93, %648 ], [ %672, %674 ], [ %691, %690 ]
  %698 = phi i32 [ %289, %645 ], [ %289, %648 ], [ %677, %674 ], [ %693, %690 ]
  %699 = phi ptr [ %636, %645 ], [ %636, %648 ], [ %675, %674 ], [ %694, %690 ]
  %700 = add nsw i32 %698, -1
  %701 = and i32 %698, 7
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %.loopexit82, label %.preheader81

.preheader81:                                     ; preds = %696, %.preheader81
  %703 = phi ptr [ %707, %.preheader81 ], [ %697, %696 ]
  %704 = phi ptr [ %708, %.preheader81 ], [ %699, %696 ]
  %705 = phi i32 [ %709, %.preheader81 ], [ 0, %696 ]
  %706 = load i8, ptr %704, align 1, !tbaa !33
  store i8 %706, ptr %703, align 1, !tbaa !33
  %707 = getelementptr inbounds nuw i8, ptr %703, i64 1
  %708 = getelementptr inbounds nuw i8, ptr %704, i64 1
  %709 = add nuw nsw i32 %705, 1
  %710 = icmp eq i32 %709, %701
  br i1 %710, label %.loopexit82.loopexit, label %.preheader81, !llvm.loop !61

.loopexit82.loopexit:                             ; preds = %.preheader81
  %711 = and i32 %698, -8
  br label %.loopexit82

.loopexit82:                                      ; preds = %.loopexit82.loopexit, %696
  %712 = phi ptr [ poison, %696 ], [ %707, %.loopexit82.loopexit ]
  %713 = phi ptr [ %697, %696 ], [ %707, %.loopexit82.loopexit ]
  %714 = phi i32 [ %698, %696 ], [ %711, %.loopexit82.loopexit ]
  %715 = phi ptr [ %699, %696 ], [ %708, %.loopexit82.loopexit ]
  %716 = icmp ult i32 %700, 7
  br i1 %716, label %.loopexit80, label %.preheader79

717:                                              ; preds = %638
  %718 = load i8, ptr %636, align 1, !tbaa !33
  store i8 %718, ptr %93, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

.preheader79:                                     ; preds = %.loopexit82, %.preheader79
  %719 = phi ptr [ %744, %.preheader79 ], [ %713, %.loopexit82 ]
  %720 = phi i32 [ %745, %.preheader79 ], [ %714, %.loopexit82 ]
  %721 = phi ptr [ %746, %.preheader79 ], [ %715, %.loopexit82 ]
  %722 = load i8, ptr %721, align 1, !tbaa !33
  store i8 %722, ptr %719, align 1, !tbaa !33
  %723 = getelementptr inbounds nuw i8, ptr %719, i64 1
  %724 = getelementptr inbounds nuw i8, ptr %721, i64 1
  %725 = load i8, ptr %724, align 1, !tbaa !33
  store i8 %725, ptr %723, align 1, !tbaa !33
  %726 = getelementptr inbounds nuw i8, ptr %719, i64 2
  %727 = getelementptr inbounds nuw i8, ptr %721, i64 2
  %728 = load i8, ptr %727, align 1, !tbaa !33
  store i8 %728, ptr %726, align 1, !tbaa !33
  %729 = getelementptr inbounds nuw i8, ptr %719, i64 3
  %730 = getelementptr inbounds nuw i8, ptr %721, i64 3
  %731 = load i8, ptr %730, align 1, !tbaa !33
  store i8 %731, ptr %729, align 1, !tbaa !33
  %732 = getelementptr inbounds nuw i8, ptr %719, i64 4
  %733 = getelementptr inbounds nuw i8, ptr %721, i64 4
  %734 = load i8, ptr %733, align 1, !tbaa !33
  store i8 %734, ptr %732, align 1, !tbaa !33
  %735 = getelementptr inbounds nuw i8, ptr %719, i64 5
  %736 = getelementptr inbounds nuw i8, ptr %721, i64 5
  %737 = load i8, ptr %736, align 1, !tbaa !33
  store i8 %737, ptr %735, align 1, !tbaa !33
  %738 = getelementptr inbounds nuw i8, ptr %719, i64 6
  %739 = getelementptr inbounds nuw i8, ptr %721, i64 6
  %740 = load i8, ptr %739, align 1, !tbaa !33
  store i8 %740, ptr %738, align 1, !tbaa !33
  %741 = getelementptr inbounds nuw i8, ptr %719, i64 7
  %742 = getelementptr inbounds nuw i8, ptr %721, i64 7
  %743 = load i8, ptr %742, align 1, !tbaa !33
  store i8 %743, ptr %741, align 1, !tbaa !33
  %744 = getelementptr inbounds nuw i8, ptr %719, i64 8
  %745 = add i32 %720, -8
  %746 = getelementptr inbounds nuw i8, ptr %721, i64 8
  %747 = icmp eq i32 %745, 0
  br i1 %747, label %.loopexit80, label %.preheader79, !llvm.loop !62

.loopexit80:                                      ; preds = %.preheader79, %.loopexit82, %690, %671
  %748 = phi ptr [ %691, %690 ], [ %672, %671 ], [ %712, %.loopexit82 ], [ %744, %.preheader79 ]
  %749 = zext nneg i32 %276 to i64
  %750 = sub nsw i64 0, %749
  %751 = getelementptr inbounds i8, ptr %748, i64 %750
  br label %752

752:                                              ; preds = %.loopexit80, %633, %.loopexit72, %.loopexit76, %433, %.loopexit68, %299
  %753 = phi ptr [ %414, %.loopexit68 ], [ %93, %299 ], [ %628, %.loopexit72 ], [ %549, %.loopexit76 ], [ %93, %433 ], [ %748, %.loopexit80 ], [ %93, %633 ]
  %754 = phi i32 [ %305, %.loopexit68 ], [ %189, %299 ], [ %629, %.loopexit72 ], [ %436, %.loopexit76 ], [ %189, %433 ], [ %639, %.loopexit80 ], [ %189, %633 ]
  %755 = phi ptr [ %417, %.loopexit68 ], [ %302, %299 ], [ %632, %.loopexit72 ], [ %42, %.loopexit76 ], [ %428, %433 ], [ %751, %.loopexit80 ], [ %636, %633 ]
  %756 = icmp ugt i32 %754, 2
  br i1 %756, label %757, label %.loopexit

757:                                              ; preds = %752
  %758 = add nsw i32 %754, -3
  %759 = udiv i32 %758, 3
  %760 = and i32 %759, 1
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %762, label %772

762:                                              ; preds = %757
  %763 = getelementptr inbounds nuw i8, ptr %755, i64 1
  %764 = load i8, ptr %755, align 1, !tbaa !33
  %765 = getelementptr inbounds nuw i8, ptr %753, i64 1
  store i8 %764, ptr %753, align 1, !tbaa !33
  %766 = getelementptr inbounds nuw i8, ptr %755, i64 2
  %767 = load i8, ptr %763, align 1, !tbaa !33
  %768 = getelementptr inbounds nuw i8, ptr %753, i64 2
  store i8 %767, ptr %765, align 1, !tbaa !33
  %769 = load i8, ptr %766, align 1, !tbaa !33
  store i8 %769, ptr %768, align 1, !tbaa !33
  %770 = getelementptr inbounds nuw i8, ptr %753, i64 3
  %771 = getelementptr inbounds nuw i8, ptr %755, i64 3
  br label %772

772:                                              ; preds = %762, %757
  %773 = phi ptr [ %755, %757 ], [ %771, %762 ]
  %774 = phi i32 [ %754, %757 ], [ %758, %762 ]
  %775 = phi ptr [ %753, %757 ], [ %770, %762 ]
  %776 = phi ptr [ poison, %757 ], [ %770, %762 ]
  %777 = phi ptr [ poison, %757 ], [ %771, %762 ]
  %778 = icmp ult i32 %758, 3
  br i1 %778, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %772, %.preheader
  %779 = phi ptr [ %800, %.preheader ], [ %773, %772 ]
  %780 = phi i32 [ %798, %.preheader ], [ %774, %772 ]
  %781 = phi ptr [ %799, %.preheader ], [ %775, %772 ]
  %782 = getelementptr inbounds nuw i8, ptr %779, i64 1
  %783 = load i8, ptr %779, align 1, !tbaa !33
  %784 = getelementptr inbounds nuw i8, ptr %781, i64 1
  store i8 %783, ptr %781, align 1, !tbaa !33
  %785 = getelementptr inbounds nuw i8, ptr %779, i64 2
  %786 = load i8, ptr %782, align 1, !tbaa !33
  %787 = getelementptr inbounds nuw i8, ptr %781, i64 2
  store i8 %786, ptr %784, align 1, !tbaa !33
  %788 = load i8, ptr %785, align 1, !tbaa !33
  store i8 %788, ptr %787, align 1, !tbaa !33
  %789 = getelementptr inbounds nuw i8, ptr %781, i64 3
  %790 = getelementptr inbounds nuw i8, ptr %779, i64 3
  %791 = getelementptr inbounds nuw i8, ptr %779, i64 4
  %792 = load i8, ptr %790, align 1, !tbaa !33
  %793 = getelementptr inbounds nuw i8, ptr %781, i64 4
  store i8 %792, ptr %789, align 1, !tbaa !33
  %794 = getelementptr inbounds nuw i8, ptr %779, i64 5
  %795 = load i8, ptr %791, align 1, !tbaa !33
  %796 = getelementptr inbounds nuw i8, ptr %781, i64 5
  store i8 %795, ptr %793, align 1, !tbaa !33
  %797 = load i8, ptr %794, align 1, !tbaa !33
  store i8 %797, ptr %796, align 1, !tbaa !33
  %798 = add i32 %780, -6
  %799 = getelementptr inbounds nuw i8, ptr %781, i64 6
  %800 = getelementptr inbounds nuw i8, ptr %779, i64 6
  %801 = icmp ugt i32 %798, 2
  br i1 %801, label %.preheader, label %.loopexit, !llvm.loop !63

.loopexit:                                        ; preds = %.preheader, %772, %752
  %802 = phi ptr [ %753, %752 ], [ %776, %772 ], [ %799, %.preheader ]
  %803 = phi i32 [ %754, %752 ], [ %758, %772 ], [ %798, %.preheader ]
  %804 = phi ptr [ %755, %752 ], [ %777, %772 ], [ %800, %.preheader ]
  %805 = icmp eq i32 %803, 0
  br i1 %805, label %936, label %806

806:                                              ; preds = %.loopexit
  %807 = load i8, ptr %804, align 1, !tbaa !33
  %808 = getelementptr inbounds nuw i8, ptr %802, i64 1
  store i8 %807, ptr %802, align 1, !tbaa !33
  %809 = icmp eq i32 %803, 2
  br i1 %809, label %810, label %936

810:                                              ; preds = %806
  %811 = getelementptr inbounds nuw i8, ptr %804, i64 1
  %812 = load i8, ptr %811, align 1, !tbaa !33
  %813 = getelementptr inbounds nuw i8, ptr %802, i64 2
  store i8 %812, ptr %808, align 1, !tbaa !33
  br label %936

814:                                              ; preds = %283
  %815 = zext nneg i32 %276 to i64
  %816 = sub nsw i64 0, %815
  %817 = getelementptr inbounds i8, ptr %93, i64 %816
  %818 = udiv i32 %189, 3
  %819 = add nsw i32 %189, -3
  %820 = tail call i32 @llvm.umin.i32(i32 %819, i32 2)
  %821 = xor i32 %820, -1
  %822 = add nsw i32 %189, %821
  %823 = udiv i32 %822, 3
  %824 = icmp samesign ugt i32 %818, %823
  br i1 %824, label %825, label %845, !prof !41, !nosanitize !16

825:                                              ; preds = %814
  %826 = and i32 %823, 1
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %828, label %838

828:                                              ; preds = %825
  %829 = getelementptr inbounds nuw i8, ptr %817, i64 1
  %830 = load i8, ptr %817, align 1, !tbaa !33
  %831 = getelementptr inbounds nuw i8, ptr %93, i64 1
  store i8 %830, ptr %93, align 1, !tbaa !33
  %832 = getelementptr inbounds nuw i8, ptr %817, i64 2
  %833 = load i8, ptr %829, align 1, !tbaa !33
  %834 = getelementptr inbounds nuw i8, ptr %93, i64 2
  store i8 %833, ptr %831, align 1, !tbaa !33
  %835 = load i8, ptr %832, align 1, !tbaa !33
  store i8 %835, ptr %834, align 1, !tbaa !33
  %836 = getelementptr inbounds nuw i8, ptr %93, i64 3
  %837 = getelementptr inbounds nuw i8, ptr %817, i64 3
  br label %838

838:                                              ; preds = %828, %825
  %839 = phi ptr [ %93, %825 ], [ %836, %828 ]
  %840 = phi i32 [ %189, %825 ], [ %819, %828 ]
  %841 = phi ptr [ %817, %825 ], [ %837, %828 ]
  %842 = phi ptr [ poison, %825 ], [ %836, %828 ]
  %843 = phi ptr [ poison, %825 ], [ %837, %828 ]
  %844 = icmp ult i32 %822, 3
  br i1 %844, label %.loopexit84, label %.preheader83

845:                                              ; preds = %814
  %846 = getelementptr inbounds nuw i8, ptr %817, i64 1
  %847 = load i8, ptr %817, align 1, !tbaa !33
  %848 = getelementptr inbounds nuw i8, ptr %93, i64 1
  store i8 %847, ptr %93, align 1, !tbaa !33
  %849 = getelementptr inbounds nuw i8, ptr %817, i64 2
  %850 = load i8, ptr %846, align 1, !tbaa !33
  %851 = getelementptr inbounds nuw i8, ptr %93, i64 2
  store i8 %850, ptr %848, align 1, !tbaa !33
  %852 = load i8, ptr %849, align 1, !tbaa !33
  store i8 %852, ptr %851, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

.preheader83:                                     ; preds = %838, %.preheader83
  %853 = phi ptr [ %873, %.preheader83 ], [ %839, %838 ]
  %854 = phi i32 [ %872, %.preheader83 ], [ %840, %838 ]
  %855 = phi ptr [ %874, %.preheader83 ], [ %841, %838 ]
  %856 = getelementptr inbounds nuw i8, ptr %855, i64 1
  %857 = load i8, ptr %855, align 1, !tbaa !33
  %858 = getelementptr inbounds nuw i8, ptr %853, i64 1
  store i8 %857, ptr %853, align 1, !tbaa !33
  %859 = getelementptr inbounds nuw i8, ptr %855, i64 2
  %860 = load i8, ptr %856, align 1, !tbaa !33
  %861 = getelementptr inbounds nuw i8, ptr %853, i64 2
  store i8 %860, ptr %858, align 1, !tbaa !33
  %862 = load i8, ptr %859, align 1, !tbaa !33
  store i8 %862, ptr %861, align 1, !tbaa !33
  %863 = getelementptr inbounds nuw i8, ptr %853, i64 3
  %864 = getelementptr inbounds nuw i8, ptr %855, i64 3
  %865 = getelementptr inbounds nuw i8, ptr %855, i64 4
  %866 = load i8, ptr %864, align 1, !tbaa !33
  %867 = getelementptr inbounds nuw i8, ptr %853, i64 4
  store i8 %866, ptr %863, align 1, !tbaa !33
  %868 = getelementptr inbounds nuw i8, ptr %855, i64 5
  %869 = load i8, ptr %865, align 1, !tbaa !33
  %870 = getelementptr inbounds nuw i8, ptr %853, i64 5
  store i8 %869, ptr %867, align 1, !tbaa !33
  %871 = load i8, ptr %868, align 1, !tbaa !33
  store i8 %871, ptr %870, align 1, !tbaa !33
  %872 = add i32 %854, -6
  %873 = getelementptr inbounds nuw i8, ptr %853, i64 6
  %874 = getelementptr inbounds nuw i8, ptr %855, i64 6
  %875 = icmp ugt i32 %872, 2
  br i1 %875, label %.preheader83, label %.loopexit84.loopexit, !llvm.loop !64

.loopexit84.loopexit:                             ; preds = %.preheader83
  %876 = getelementptr inbounds nuw i8, ptr %853, i64 3
  %877 = getelementptr inbounds nuw i8, ptr %855, i64 3
  br label %.loopexit84

.loopexit84:                                      ; preds = %.loopexit84.loopexit, %838
  %878 = phi ptr [ %93, %838 ], [ %876, %.loopexit84.loopexit ]
  %879 = phi ptr [ %817, %838 ], [ %877, %.loopexit84.loopexit ]
  %880 = phi ptr [ %842, %838 ], [ %873, %.loopexit84.loopexit ]
  %881 = phi ptr [ %843, %838 ], [ %874, %.loopexit84.loopexit ]
  %882 = mul nsw i32 %823, -3
  %883 = add nsw i32 %882, %819
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %936, label %885

885:                                              ; preds = %.loopexit84
  %886 = load i8, ptr %881, align 1, !tbaa !33
  %887 = getelementptr inbounds nuw i8, ptr %878, i64 4
  store i8 %886, ptr %880, align 1, !tbaa !33
  %888 = icmp eq i32 %883, 2
  br i1 %888, label %889, label %936

889:                                              ; preds = %885
  %890 = getelementptr inbounds nuw i8, ptr %879, i64 4
  %891 = load i8, ptr %890, align 1, !tbaa !33
  %892 = getelementptr inbounds nuw i8, ptr %878, i64 5
  store i8 %891, ptr %887, align 1, !tbaa !33
  br label %936

893:                                              ; preds = %228
  %894 = and i32 %234, 64
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %896, label %.loopexit85

896:                                              ; preds = %893
  %897 = shl nsw i32 -1, %234
  %898 = xor i32 %897, -1
  %899 = getelementptr inbounds nuw i8, ptr %231, i64 2
  %900 = load i16, ptr %899, align 2, !tbaa !39
  %901 = zext i16 %900 to i64
  %902 = getelementptr inbounds nuw [4 x i8], ptr %51, i64 %901
  %903 = zext nneg i32 %898 to i64
  %904 = and i64 %230, %903
  %905 = getelementptr inbounds nuw [4 x i8], ptr %902, i64 %904
  %906 = getelementptr inbounds nuw i8, ptr %905, i64 1
  %907 = load i8, ptr %906, align 1, !tbaa !34
  %908 = zext i8 %907 to i32
  %909 = zext nneg i8 %907 to i64
  %910 = lshr i64 %230, %909
  %911 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %232, i32 %908), !nosanitize !16
  %912 = extractvalue { i32, i1 } %911, 1, !nosanitize !16
  br i1 %912, label %.loopexit86, label %228, !prof !65, !nosanitize !16

913:                                              ; preds = %146
  %914 = and i32 %139, 64
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %916, label %933

916:                                              ; preds = %913
  %917 = shl nsw i32 -1, %139
  %918 = xor i32 %917, -1
  %919 = getelementptr inbounds nuw i8, ptr %136, i64 2
  %920 = load i16, ptr %919, align 2, !tbaa !39
  %921 = zext i16 %920 to i64
  %922 = getelementptr inbounds nuw [4 x i8], ptr %49, i64 %921
  %923 = zext nneg i32 %918 to i64
  %924 = and i64 %135, %923
  %925 = getelementptr inbounds nuw [4 x i8], ptr %922, i64 %924
  %926 = getelementptr inbounds nuw i8, ptr %925, i64 1
  %927 = load i8, ptr %926, align 1, !tbaa !34
  %928 = zext i8 %927 to i32
  %929 = zext nneg i8 %927 to i64
  %930 = lshr i64 %135, %929
  %931 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %137, i32 %928), !nosanitize !16
  %932 = extractvalue { i32, i1 } %931, 1, !nosanitize !16
  br i1 %932, label %.loopexit87, label %133, !prof !65, !nosanitize !16

933:                                              ; preds = %913
  %934 = and i32 %139, 32
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %.loopexit85, label %949

936:                                              ; preds = %889, %885, %.loopexit84, %810, %806, %.loopexit, %141
  %937 = phi i32 [ %137, %141 ], [ %280, %810 ], [ %280, %806 ], [ %280, %.loopexit ], [ %280, %889 ], [ %280, %885 ], [ %280, %.loopexit84 ]
  %938 = phi i64 [ %135, %141 ], [ %278, %810 ], [ %278, %806 ], [ %278, %.loopexit ], [ %278, %889 ], [ %278, %885 ], [ %278, %.loopexit84 ]
  %939 = phi ptr [ %145, %141 ], [ %813, %810 ], [ %808, %806 ], [ %802, %.loopexit ], [ %892, %889 ], [ %887, %885 ], [ %880, %.loopexit84 ]
  %940 = phi ptr [ %122, %141 ], [ %271, %810 ], [ %271, %806 ], [ %271, %.loopexit ], [ %271, %889 ], [ %271, %885 ], [ %271, %.loopexit84 ]
  %941 = icmp ult ptr %940, %14
  %942 = icmp ult ptr %939, %34
  %943 = select i1 %941, i1 %942, i1 false
  br i1 %943, label %90, label %.loopexit92, !llvm.loop !66

.loopexit85:                                      ; preds = %291, %893, %933
  %944 = phi ptr [ @.str.2, %933 ], [ @.str.1, %893 ], [ @.str, %291 ]
  %945 = phi i32 [ %137, %933 ], [ %232, %893 ], [ %280, %291 ]
  %946 = phi i64 [ %135, %933 ], [ %230, %893 ], [ %278, %291 ]
  %947 = phi ptr [ %122, %933 ], [ %217, %893 ], [ %271, %291 ]
  %948 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %944, ptr %948, align 8, !tbaa !67
  br label %949

949:                                              ; preds = %.loopexit85, %933
  %950 = phi i32 [ 16191, %933 ], [ 16209, %.loopexit85 ]
  %951 = phi i32 [ %137, %933 ], [ %945, %.loopexit85 ]
  %952 = phi i64 [ %135, %933 ], [ %946, %.loopexit85 ]
  %953 = phi ptr [ %122, %933 ], [ %947, %.loopexit85 ]
  %954 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %950, ptr %954, align 8, !tbaa !68
  br label %.loopexit92

.loopexit92:                                      ; preds = %936, %949
  %955 = phi i32 [ %951, %949 ], [ %937, %936 ]
  %956 = phi i64 [ %952, %949 ], [ %938, %936 ]
  %957 = phi ptr [ %93, %949 ], [ %939, %936 ]
  %958 = phi ptr [ %953, %949 ], [ %940, %936 ]
  %959 = lshr i32 %955, 3
  %960 = zext nneg i32 %959 to i64
  %961 = sub nsw i64 0, %960
  %962 = getelementptr inbounds i8, ptr %958, i64 %961
  %963 = and i32 %955, -8
  %964 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %955, i32 %963), !nosanitize !16
  %965 = extractvalue { i32, i1 } %964, 1, !nosanitize !16
  br i1 %965, label %966, label %968, !prof !17, !nosanitize !16

966:                                              ; preds = %.loopexit92
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

967:                                              ; preds = %993, %976
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

968:                                              ; preds = %.loopexit92
  store ptr %962, ptr %0, align 8, !tbaa !14
  store ptr %957, ptr %15, align 8, !tbaa !18
  %969 = icmp ult ptr %962, %14
  br i1 %969, label %970, label %976

970:                                              ; preds = %968
  %971 = ptrtoint ptr %14 to i64
  %972 = ptrtoint ptr %962 to i64
  %973 = sub i64 %971, %972
  %974 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %973, i64 5), !nosanitize !16
  %975 = extractvalue { i64, i1 } %974, 1, !nosanitize !16
  br i1 %975, label %.loopexit91, label %982, !prof !17, !nosanitize !16

976:                                              ; preds = %968
  %977 = ptrtoint ptr %962 to i64
  %978 = ptrtoint ptr %14 to i64
  %979 = sub i64 %977, %978
  %980 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 5, i64 %979), !nosanitize !16
  %981 = extractvalue { i64, i1 } %980, 1, !nosanitize !16
  br i1 %981, label %967, label %982, !prof !17, !nosanitize !16

982:                                              ; preds = %976, %970
  %983 = phi { i64, i1 } [ %974, %970 ], [ %980, %976 ]
  %984 = extractvalue { i64, i1 } %983, 0
  %985 = trunc i64 %984 to i32
  store i32 %985, ptr %6, align 8, !tbaa !15
  %986 = icmp ult ptr %957, %34
  br i1 %986, label %987, label %993

987:                                              ; preds = %982
  %988 = ptrtoint ptr %34 to i64
  %989 = ptrtoint ptr %957 to i64
  %990 = sub i64 %988, %989
  %991 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %990, i64 257), !nosanitize !16
  %992 = extractvalue { i64, i1 } %991, 1, !nosanitize !16
  br i1 %992, label %.loopexit91, label %999, !prof !17, !nosanitize !16

993:                                              ; preds = %982
  %994 = ptrtoint ptr %957 to i64
  %995 = ptrtoint ptr %34 to i64
  %996 = sub i64 %994, %995
  %997 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 257, i64 %996), !nosanitize !16
  %998 = extractvalue { i64, i1 } %997, 1, !nosanitize !16
  br i1 %998, label %967, label %999, !prof !17, !nosanitize !16

999:                                              ; preds = %993, %987
  %1000 = phi { i64, i1 } [ %991, %987 ], [ %997, %993 ]
  %1001 = extractvalue { i64, i1 } %1000, 0
  %1002 = extractvalue { i32, i1 } %964, 0, !nosanitize !16
  %1003 = shl nsw i32 -1, %1002
  %1004 = xor i32 %1003, -1
  %1005 = zext nneg i32 %1004 to i64
  %1006 = and i64 %956, %1005
  %1007 = trunc i64 %1001 to i32
  store i32 %1007, ptr %18, align 8, !tbaa !19
  store i64 %1006, ptr %44, align 8, !tbaa !27
  store i32 %1002, ptr %46, align 8, !tbaa !28
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
