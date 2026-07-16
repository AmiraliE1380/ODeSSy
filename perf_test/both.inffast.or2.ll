; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/both.inffast.or.ll'
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

90:                                               ; preds = %928, %27
  %91 = phi i32 [ %47, %27 ], [ %929, %928 ]
  %92 = phi i64 [ %45, %27 ], [ %930, %928 ]
  %93 = phi ptr [ %16, %27 ], [ %931, %928 ]
  %94 = phi ptr [ %5, %27 ], [ %932, %928 ]
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

.loopexit87:                                      ; preds = %119, %908
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

133:                                              ; preds = %908, %130
  %134 = phi { i32, i1 } [ %923, %908 ], [ %128, %130 ]
  %135 = phi i64 [ %922, %908 ], [ %132, %130 ]
  %136 = phi ptr [ %917, %908 ], [ %124, %130 ]
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
  br label %928

146:                                              ; preds = %133
  %147 = and i32 %139, 16
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %905, label %149

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

.loopexit86:                                      ; preds = %214, %888
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

228:                                              ; preds = %888, %225
  %229 = phi { i32, i1 } [ %903, %888 ], [ %223, %225 ]
  %230 = phi i64 [ %902, %888 ], [ %227, %225 ]
  %231 = phi ptr [ %897, %888 ], [ %219, %225 ]
  %232 = extractvalue { i32, i1 } %229, 0
  %233 = load i8, ptr %231, align 2, !tbaa !38
  %234 = zext i8 %233 to i32
  %235 = and i32 %234, 16
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %885, label %237

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
  br i1 %283, label %284, label %806

284:                                              ; preds = %268
  %285 = sub nuw nsw i32 %276, %282
  %286 = icmp ugt i32 %285, %38
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = load i32, ptr %63, align 8, !tbaa !40
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %.loopexit85

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
  br i1 %299, label %300, label %744

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
  %311 = add i32 %.neg58, %302
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
  br i1 %335, label %.loopexit68, label %336

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
  br i1 %357, label %.loopexit68, label %358

358:                                              ; preds = %352, %336, %310, %307
  %359 = phi ptr [ %93, %307 ], [ %93, %310 ], [ %334, %336 ], [ %353, %352 ]
  %360 = phi i32 [ %285, %307 ], [ %285, %310 ], [ %339, %336 ], [ %355, %352 ]
  %361 = phi ptr [ %298, %307 ], [ %298, %310 ], [ %337, %336 ], [ %356, %352 ]
  %362 = add nsw i32 %360, -1
  %363 = and i32 %360, 7
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %.loopexit70, label %.preheader69

.preheader69:                                     ; preds = %358, %.preheader69
  %365 = phi ptr [ %369, %.preheader69 ], [ %359, %358 ]
  %366 = phi ptr [ %370, %.preheader69 ], [ %361, %358 ]
  %367 = phi i32 [ %371, %.preheader69 ], [ 0, %358 ]
  %368 = load i8, ptr %366, align 1, !tbaa !33
  store i8 %368, ptr %365, align 1, !tbaa !33
  %369 = getelementptr inbounds nuw i8, ptr %365, i64 1
  %370 = getelementptr inbounds nuw i8, ptr %366, i64 1
  %371 = add nuw nsw i32 %367, 1
  %372 = icmp eq i32 %371, %363
  br i1 %372, label %.loopexit70.loopexit, label %.preheader69, !llvm.loop !48

.loopexit70.loopexit:                             ; preds = %.preheader69
  %373 = and i32 %360, -8
  br label %.loopexit70

.loopexit70:                                      ; preds = %.loopexit70.loopexit, %358
  %374 = phi ptr [ poison, %358 ], [ %369, %.loopexit70.loopexit ]
  %375 = phi ptr [ %359, %358 ], [ %369, %.loopexit70.loopexit ]
  %376 = phi i32 [ %360, %358 ], [ %373, %.loopexit70.loopexit ]
  %377 = phi ptr [ %361, %358 ], [ %370, %.loopexit70.loopexit ]
  %378 = icmp ult i32 %362, 7
  br i1 %378, label %.loopexit68, label %.preheader67

379:                                              ; preds = %300
  %380 = load i8, ptr %298, align 1, !tbaa !33
  store i8 %380, ptr %93, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

.preheader67:                                     ; preds = %.loopexit70, %.preheader67
  %381 = phi ptr [ %406, %.preheader67 ], [ %375, %.loopexit70 ]
  %382 = phi i32 [ %407, %.preheader67 ], [ %376, %.loopexit70 ]
  %383 = phi ptr [ %408, %.preheader67 ], [ %377, %.loopexit70 ]
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
  br i1 %409, label %.loopexit68, label %.preheader67, !llvm.loop !50

.loopexit68:                                      ; preds = %.preheader67, %.loopexit70, %352, %333
  %410 = phi ptr [ %353, %352 ], [ %334, %333 ], [ %374, %.loopexit70 ], [ %406, %.preheader67 ]
  %411 = zext nneg i32 %276 to i64
  %412 = sub nsw i64 0, %411
  %413 = getelementptr inbounds i8, ptr %410, i64 %412
  br label %744

414:                                              ; preds = %290
  %415 = icmp ult i32 %40, %285
  br i1 %415, label %416, label %625

416:                                              ; preds = %414
  br i1 %66, label %.loopexit91, label %417, !prof !17, !nosanitize !16

.loopexit91:                                      ; preds = %416, %974, %957
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

417:                                              ; preds = %416
  %418 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %67, i32 %285), !nosanitize !16
  %419 = extractvalue { i32, i1 } %418, 1, !nosanitize !16
  br i1 %419, label %420, label %421, !prof !17, !nosanitize !16

420:                                              ; preds = %417
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

421:                                              ; preds = %417
  %422 = extractvalue { i32, i1 } %418, 0, !nosanitize !16
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds nuw i8, ptr %42, i64 %423
  %425 = sub nsw i32 %285, %40
  %426 = icmp ult i32 %425, %189
  br i1 %426, label %427, label %744

427:                                              ; preds = %421
  %428 = sub nuw nsw i32 %189, %425
  %429 = trunc i64 %280 to i32
  %430 = add i32 %72, %429
  %431 = sub i32 %70, %430
  %432 = add i32 %431, %240
  %433 = add i32 %432, %275
  %434 = icmp ugt i32 %425, %433
  br i1 %434, label %435, label %510, !prof !41, !nosanitize !16

435:                                              ; preds = %427
  %436 = add i32 %1, %429
  %437 = sub i32 %89, %436
  %438 = add i32 %437, %240
  %439 = add i32 %438, %275
  %440 = zext i32 %439 to i64
  %441 = add nuw nsw i64 %440, 1
  %442 = icmp ult i32 %439, 3
  br i1 %442, label %489, label %443

443:                                              ; preds = %435
  %444 = add i32 %.reass, %429
  %445 = sub i32 %444, %276
  %446 = zext i32 %445 to i64
  %447 = add i64 %43, %446
  %448 = sub i64 %280, %447
  %449 = icmp ult i64 %448, 32
  br i1 %449, label %489, label %450

450:                                              ; preds = %443
  %451 = icmp ult i32 %439, 31
  br i1 %451, label %473, label %452

452:                                              ; preds = %450
  %453 = and i64 %441, 8589934560
  br label %454

454:                                              ; preds = %454, %452
  %455 = phi i64 [ 0, %452 ], [ %462, %454 ]
  %456 = getelementptr i8, ptr %93, i64 %455
  %457 = getelementptr i8, ptr %424, i64 %455
  %458 = getelementptr i8, ptr %457, i64 16
  %459 = load <16 x i8>, ptr %457, align 1, !tbaa !33
  %460 = load <16 x i8>, ptr %458, align 1, !tbaa !33
  %461 = getelementptr i8, ptr %456, i64 16
  store <16 x i8> %459, ptr %456, align 1, !tbaa !33
  store <16 x i8> %460, ptr %461, align 1, !tbaa !33
  %462 = add nuw i64 %455, 32
  %463 = icmp eq i64 %462, %453
  br i1 %463, label %464, label %454, !llvm.loop !51

464:                                              ; preds = %454
  %465 = getelementptr i8, ptr %93, i64 %453
  %466 = icmp eq i64 %441, %453
  br i1 %466, label %.loopexit76, label %467

467:                                              ; preds = %464
  %468 = getelementptr i8, ptr %424, i64 %453
  %469 = trunc i64 %453 to i32
  %470 = sub i32 %425, %469
  %471 = and i64 %441, 28
  %472 = icmp eq i64 %471, 0
  br i1 %472, label %489, label %473, !prof !46

473:                                              ; preds = %467, %450
  %474 = phi i64 [ %453, %467 ], [ 0, %450 ]
  %475 = and i64 %441, 8589934588
  br label %476

476:                                              ; preds = %476, %473
  %477 = phi i64 [ %474, %473 ], [ %481, %476 ]
  %478 = getelementptr i8, ptr %93, i64 %477
  %479 = getelementptr i8, ptr %424, i64 %477
  %480 = load <4 x i8>, ptr %479, align 1, !tbaa !33
  store <4 x i8> %480, ptr %478, align 1, !tbaa !33
  %481 = add nuw i64 %477, 4
  %482 = icmp eq i64 %481, %475
  br i1 %482, label %483, label %476, !llvm.loop !52

483:                                              ; preds = %476
  %484 = getelementptr i8, ptr %93, i64 %475
  %485 = trunc i64 %475 to i32
  %486 = sub i32 %425, %485
  %487 = getelementptr i8, ptr %424, i64 %475
  %488 = icmp eq i64 %441, %475
  br i1 %488, label %.loopexit76, label %489

489:                                              ; preds = %483, %467, %443, %435
  %490 = phi ptr [ %93, %435 ], [ %93, %443 ], [ %465, %467 ], [ %484, %483 ]
  %491 = phi i32 [ %425, %435 ], [ %425, %443 ], [ %470, %467 ], [ %486, %483 ]
  %492 = phi ptr [ %424, %435 ], [ %424, %443 ], [ %468, %467 ], [ %487, %483 ]
  %493 = add i32 %491, -1
  %494 = and i32 %491, 7
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %.loopexit78, label %.preheader77

.preheader77:                                     ; preds = %489, %.preheader77
  %496 = phi ptr [ %500, %.preheader77 ], [ %490, %489 ]
  %497 = phi ptr [ %501, %.preheader77 ], [ %492, %489 ]
  %498 = phi i32 [ %502, %.preheader77 ], [ 0, %489 ]
  %499 = load i8, ptr %497, align 1, !tbaa !33
  store i8 %499, ptr %496, align 1, !tbaa !33
  %500 = getelementptr inbounds nuw i8, ptr %496, i64 1
  %501 = getelementptr inbounds nuw i8, ptr %497, i64 1
  %502 = add nuw nsw i32 %498, 1
  %503 = icmp eq i32 %502, %494
  br i1 %503, label %.loopexit78.loopexit, label %.preheader77, !llvm.loop !53

.loopexit78.loopexit:                             ; preds = %.preheader77
  %504 = and i32 %491, -8
  br label %.loopexit78

.loopexit78:                                      ; preds = %.loopexit78.loopexit, %489
  %505 = phi ptr [ poison, %489 ], [ %500, %.loopexit78.loopexit ]
  %506 = phi ptr [ %490, %489 ], [ %500, %.loopexit78.loopexit ]
  %507 = phi i32 [ %491, %489 ], [ %504, %.loopexit78.loopexit ]
  %508 = phi ptr [ %492, %489 ], [ %501, %.loopexit78.loopexit ]
  %509 = icmp ult i32 %493, 7
  br i1 %509, label %.loopexit76, label %.preheader75

510:                                              ; preds = %427
  %511 = load i8, ptr %424, align 1, !tbaa !33
  store i8 %511, ptr %93, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

.preheader75:                                     ; preds = %.loopexit78, %.preheader75
  %512 = phi ptr [ %537, %.preheader75 ], [ %506, %.loopexit78 ]
  %513 = phi i32 [ %538, %.preheader75 ], [ %507, %.loopexit78 ]
  %514 = phi ptr [ %539, %.preheader75 ], [ %508, %.loopexit78 ]
  %515 = load i8, ptr %514, align 1, !tbaa !33
  store i8 %515, ptr %512, align 1, !tbaa !33
  %516 = getelementptr inbounds nuw i8, ptr %512, i64 1
  %517 = getelementptr inbounds nuw i8, ptr %514, i64 1
  %518 = load i8, ptr %517, align 1, !tbaa !33
  store i8 %518, ptr %516, align 1, !tbaa !33
  %519 = getelementptr inbounds nuw i8, ptr %512, i64 2
  %520 = getelementptr inbounds nuw i8, ptr %514, i64 2
  %521 = load i8, ptr %520, align 1, !tbaa !33
  store i8 %521, ptr %519, align 1, !tbaa !33
  %522 = getelementptr inbounds nuw i8, ptr %512, i64 3
  %523 = getelementptr inbounds nuw i8, ptr %514, i64 3
  %524 = load i8, ptr %523, align 1, !tbaa !33
  store i8 %524, ptr %522, align 1, !tbaa !33
  %525 = getelementptr inbounds nuw i8, ptr %512, i64 4
  %526 = getelementptr inbounds nuw i8, ptr %514, i64 4
  %527 = load i8, ptr %526, align 1, !tbaa !33
  store i8 %527, ptr %525, align 1, !tbaa !33
  %528 = getelementptr inbounds nuw i8, ptr %512, i64 5
  %529 = getelementptr inbounds nuw i8, ptr %514, i64 5
  %530 = load i8, ptr %529, align 1, !tbaa !33
  store i8 %530, ptr %528, align 1, !tbaa !33
  %531 = getelementptr inbounds nuw i8, ptr %512, i64 6
  %532 = getelementptr inbounds nuw i8, ptr %514, i64 6
  %533 = load i8, ptr %532, align 1, !tbaa !33
  store i8 %533, ptr %531, align 1, !tbaa !33
  %534 = getelementptr inbounds nuw i8, ptr %512, i64 7
  %535 = getelementptr inbounds nuw i8, ptr %514, i64 7
  %536 = load i8, ptr %535, align 1, !tbaa !33
  store i8 %536, ptr %534, align 1, !tbaa !33
  %537 = getelementptr inbounds nuw i8, ptr %512, i64 8
  %538 = add i32 %513, -8
  %539 = getelementptr inbounds nuw i8, ptr %514, i64 8
  %540 = icmp eq i32 %538, 0
  br i1 %540, label %.loopexit76, label %.preheader75, !llvm.loop !54

.loopexit76:                                      ; preds = %.preheader75, %.loopexit78, %483, %464
  %541 = phi ptr [ %484, %483 ], [ %465, %464 ], [ %505, %.loopexit78 ], [ %537, %.preheader75 ]
  %542 = icmp ult i32 %40, %428
  br i1 %542, label %543, label %744

543:                                              ; preds = %.loopexit76
  %544 = ptrtoaddr ptr %541 to i64
  %545 = sub i64 %544, %43
  %546 = icmp ult i64 %545, 32
  %547 = select i1 %75, i1 true, i1 %546
  br i1 %547, label %570, label %548

548:                                              ; preds = %543
  br i1 %76, label %.preheader706, label %.preheader568

.preheader568:                                    ; preds = %548, %.preheader568
  %549 = phi i64 [ %556, %.preheader568 ], [ 0, %548 ]
  %550 = getelementptr i8, ptr %541, i64 %549
  %551 = getelementptr i8, ptr %42, i64 %549
  %552 = getelementptr i8, ptr %551, i64 16
  %553 = load <16 x i8>, ptr %551, align 1, !tbaa !33
  %554 = load <16 x i8>, ptr %552, align 1, !tbaa !33
  %555 = getelementptr i8, ptr %550, i64 16
  store <16 x i8> %553, ptr %550, align 1, !tbaa !33
  store <16 x i8> %554, ptr %555, align 1, !tbaa !33
  %556 = add nuw nsw i64 %549, 32
  %557 = icmp eq i64 %556, %78
  br i1 %557, label %558, label %.preheader568, !llvm.loop !55

558:                                              ; preds = %.preheader568
  %559 = getelementptr i8, ptr %541, i64 %78
  br i1 %82, label %.loopexit72, label %560

560:                                              ; preds = %558
  br i1 %83, label %570, label %.preheader706, !prof !46

.preheader706:                                    ; preds = %560, %548
  %.ph = phi i64 [ 0, %548 ], [ %78, %560 ]
  br label %561

561:                                              ; preds = %.preheader706, %561
  %562 = phi i64 [ %566, %561 ], [ %.ph, %.preheader706 ]
  %563 = getelementptr i8, ptr %541, i64 %562
  %564 = getelementptr i8, ptr %42, i64 %562
  %565 = load <4 x i8>, ptr %564, align 1, !tbaa !33
  store <4 x i8> %565, ptr %563, align 1, !tbaa !33
  %566 = add nuw i64 %562, 4
  %567 = icmp eq i64 %566, %84
  br i1 %567, label %568, label %561, !llvm.loop !56

568:                                              ; preds = %561
  %569 = getelementptr i8, ptr %541, i64 %84
  br i1 %88, label %.loopexit72, label %570

570:                                              ; preds = %568, %560, %543
  %571 = phi ptr [ %541, %543 ], [ %559, %560 ], [ %569, %568 ]
  %572 = phi i32 [ %40, %543 ], [ %80, %560 ], [ %86, %568 ]
  %573 = phi ptr [ %42, %543 ], [ %81, %560 ], [ %87, %568 ]
  %574 = add i32 %572, -1
  %575 = and i32 %572, 7
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %.loopexit74, label %.preheader73

.preheader73:                                     ; preds = %570, %.preheader73
  %577 = phi ptr [ %581, %.preheader73 ], [ %571, %570 ]
  %578 = phi ptr [ %582, %.preheader73 ], [ %573, %570 ]
  %579 = phi i32 [ %583, %.preheader73 ], [ 0, %570 ]
  %580 = load i8, ptr %578, align 1, !tbaa !33
  %581 = getelementptr inbounds nuw i8, ptr %577, i64 1
  store i8 %580, ptr %577, align 1, !tbaa !33
  %582 = getelementptr inbounds nuw i8, ptr %578, i64 1
  %583 = add nuw nsw i32 %579, 1
  %584 = icmp eq i32 %583, %575
  br i1 %584, label %.loopexit74.loopexit, label %.preheader73, !llvm.loop !57

.loopexit74.loopexit:                             ; preds = %.preheader73
  %585 = and i32 %572, -8
  br label %.loopexit74

.loopexit74:                                      ; preds = %.loopexit74.loopexit, %570
  %586 = phi ptr [ poison, %570 ], [ %581, %.loopexit74.loopexit ]
  %587 = phi ptr [ %571, %570 ], [ %581, %.loopexit74.loopexit ]
  %588 = phi i32 [ %572, %570 ], [ %585, %.loopexit74.loopexit ]
  %589 = phi ptr [ %573, %570 ], [ %582, %.loopexit74.loopexit ]
  %590 = icmp ult i32 %574, 7
  br i1 %590, label %.loopexit72, label %.preheader71

.preheader71:                                     ; preds = %.loopexit74, %.preheader71
  %591 = phi ptr [ %616, %.preheader71 ], [ %587, %.loopexit74 ]
  %592 = phi i32 [ %617, %.preheader71 ], [ %588, %.loopexit74 ]
  %593 = phi ptr [ %618, %.preheader71 ], [ %589, %.loopexit74 ]
  %594 = load i8, ptr %593, align 1, !tbaa !33
  %595 = getelementptr inbounds nuw i8, ptr %591, i64 1
  store i8 %594, ptr %591, align 1, !tbaa !33
  %596 = getelementptr inbounds nuw i8, ptr %593, i64 1
  %597 = load i8, ptr %596, align 1, !tbaa !33
  %598 = getelementptr inbounds nuw i8, ptr %591, i64 2
  store i8 %597, ptr %595, align 1, !tbaa !33
  %599 = getelementptr inbounds nuw i8, ptr %593, i64 2
  %600 = load i8, ptr %599, align 1, !tbaa !33
  %601 = getelementptr inbounds nuw i8, ptr %591, i64 3
  store i8 %600, ptr %598, align 1, !tbaa !33
  %602 = getelementptr inbounds nuw i8, ptr %593, i64 3
  %603 = load i8, ptr %602, align 1, !tbaa !33
  %604 = getelementptr inbounds nuw i8, ptr %591, i64 4
  store i8 %603, ptr %601, align 1, !tbaa !33
  %605 = getelementptr inbounds nuw i8, ptr %593, i64 4
  %606 = load i8, ptr %605, align 1, !tbaa !33
  %607 = getelementptr inbounds nuw i8, ptr %591, i64 5
  store i8 %606, ptr %604, align 1, !tbaa !33
  %608 = getelementptr inbounds nuw i8, ptr %593, i64 5
  %609 = load i8, ptr %608, align 1, !tbaa !33
  %610 = getelementptr inbounds nuw i8, ptr %591, i64 6
  store i8 %609, ptr %607, align 1, !tbaa !33
  %611 = getelementptr inbounds nuw i8, ptr %593, i64 6
  %612 = load i8, ptr %611, align 1, !tbaa !33
  %613 = getelementptr inbounds nuw i8, ptr %591, i64 7
  store i8 %612, ptr %610, align 1, !tbaa !33
  %614 = getelementptr inbounds nuw i8, ptr %593, i64 7
  %615 = load i8, ptr %614, align 1, !tbaa !33
  %616 = getelementptr inbounds nuw i8, ptr %591, i64 8
  store i8 %615, ptr %613, align 1, !tbaa !33
  %617 = add i32 %592, -8
  %618 = getelementptr inbounds nuw i8, ptr %593, i64 8
  %619 = icmp eq i32 %617, 0
  br i1 %619, label %.loopexit72, label %.preheader71, !llvm.loop !58

.loopexit72:                                      ; preds = %.preheader71, %.loopexit74, %568, %558
  %620 = phi ptr [ %569, %568 ], [ %559, %558 ], [ %586, %.loopexit74 ], [ %616, %.preheader71 ]
  %621 = sub nuw nsw i32 %428, %40
  %622 = zext nneg i32 %276 to i64
  %623 = sub nsw i64 0, %622
  %624 = getelementptr inbounds i8, ptr %620, i64 %623
  br label %744

625:                                              ; preds = %414
  %626 = sub nuw i32 %40, %285
  %627 = zext i32 %626 to i64
  %628 = getelementptr inbounds nuw i8, ptr %42, i64 %627
  %629 = icmp ult i32 %285, %189
  br i1 %629, label %630, label %744

630:                                              ; preds = %625
  %631 = sub nuw nsw i32 %189, %285
  %632 = trunc i64 %280 to i32
  %633 = sub i32 %71, %632
  %634 = add i32 %633, %240
  %635 = add i32 %634, %275
  %636 = icmp ugt i32 %285, %635
  br i1 %636, label %637, label %709, !prof !41, !nosanitize !16

637:                                              ; preds = %630
  %638 = zext nneg i32 %285 to i64
  %639 = icmp samesign ult i32 %285, 4
  br i1 %639, label %688, label %640

640:                                              ; preds = %637
  %641 = add i32 %72, %632
  %642 = add i32 %69, %240
  %643 = add i32 %642, %275
  %644 = sub i32 %641, %643
  %645 = zext i32 %644 to i64
  %646 = add i64 %43, %645
  %647 = sub i64 %280, %646
  %648 = icmp ult i64 %647, 32
  br i1 %648, label %688, label %649

649:                                              ; preds = %640
  %650 = icmp samesign ult i32 %285, 32
  br i1 %650, label %672, label %651

651:                                              ; preds = %649
  %652 = and i64 %638, 2147483616
  br label %653

653:                                              ; preds = %653, %651
  %654 = phi i64 [ 0, %651 ], [ %661, %653 ]
  %655 = getelementptr i8, ptr %93, i64 %654
  %656 = getelementptr i8, ptr %628, i64 %654
  %657 = getelementptr i8, ptr %656, i64 16
  %658 = load <16 x i8>, ptr %656, align 1, !tbaa !33
  %659 = load <16 x i8>, ptr %657, align 1, !tbaa !33
  %660 = getelementptr i8, ptr %655, i64 16
  store <16 x i8> %658, ptr %655, align 1, !tbaa !33
  store <16 x i8> %659, ptr %660, align 1, !tbaa !33
  %661 = add nuw i64 %654, 32
  %662 = icmp eq i64 %661, %652
  br i1 %662, label %663, label %653, !llvm.loop !59

663:                                              ; preds = %653
  %664 = getelementptr i8, ptr %93, i64 %652
  %665 = icmp eq i64 %652, %638
  br i1 %665, label %.loopexit80, label %666

666:                                              ; preds = %663
  %667 = getelementptr i8, ptr %628, i64 %652
  %668 = trunc nuw nsw i64 %652 to i32
  %669 = sub nsw i32 %285, %668
  %670 = and i64 %638, 28
  %671 = icmp eq i64 %670, 0
  br i1 %671, label %688, label %672, !prof !46

672:                                              ; preds = %666, %649
  %673 = phi i64 [ %652, %666 ], [ 0, %649 ]
  %674 = and i64 %638, 2147483644
  br label %675

675:                                              ; preds = %675, %672
  %676 = phi i64 [ %673, %672 ], [ %680, %675 ]
  %677 = getelementptr i8, ptr %93, i64 %676
  %678 = getelementptr i8, ptr %628, i64 %676
  %679 = load <4 x i8>, ptr %678, align 1, !tbaa !33
  store <4 x i8> %679, ptr %677, align 1, !tbaa !33
  %680 = add nuw i64 %676, 4
  %681 = icmp eq i64 %680, %674
  br i1 %681, label %682, label %675, !llvm.loop !60

682:                                              ; preds = %675
  %683 = getelementptr i8, ptr %93, i64 %674
  %684 = trunc nuw nsw i64 %674 to i32
  %685 = sub nsw i32 %285, %684
  %686 = getelementptr i8, ptr %628, i64 %674
  %687 = icmp eq i64 %674, %638
  br i1 %687, label %.loopexit80, label %688

688:                                              ; preds = %682, %666, %640, %637
  %689 = phi ptr [ %93, %637 ], [ %93, %640 ], [ %664, %666 ], [ %683, %682 ]
  %690 = phi i32 [ %285, %637 ], [ %285, %640 ], [ %669, %666 ], [ %685, %682 ]
  %691 = phi ptr [ %628, %637 ], [ %628, %640 ], [ %667, %666 ], [ %686, %682 ]
  %692 = add nsw i32 %690, -1
  %693 = and i32 %690, 7
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %.loopexit82, label %.preheader81

.preheader81:                                     ; preds = %688, %.preheader81
  %695 = phi ptr [ %699, %.preheader81 ], [ %689, %688 ]
  %696 = phi ptr [ %700, %.preheader81 ], [ %691, %688 ]
  %697 = phi i32 [ %701, %.preheader81 ], [ 0, %688 ]
  %698 = load i8, ptr %696, align 1, !tbaa !33
  store i8 %698, ptr %695, align 1, !tbaa !33
  %699 = getelementptr inbounds nuw i8, ptr %695, i64 1
  %700 = getelementptr inbounds nuw i8, ptr %696, i64 1
  %701 = add nuw nsw i32 %697, 1
  %702 = icmp eq i32 %701, %693
  br i1 %702, label %.loopexit82.loopexit, label %.preheader81, !llvm.loop !61

.loopexit82.loopexit:                             ; preds = %.preheader81
  %703 = and i32 %690, -8
  br label %.loopexit82

.loopexit82:                                      ; preds = %.loopexit82.loopexit, %688
  %704 = phi ptr [ poison, %688 ], [ %699, %.loopexit82.loopexit ]
  %705 = phi ptr [ %689, %688 ], [ %699, %.loopexit82.loopexit ]
  %706 = phi i32 [ %690, %688 ], [ %703, %.loopexit82.loopexit ]
  %707 = phi ptr [ %691, %688 ], [ %700, %.loopexit82.loopexit ]
  %708 = icmp ult i32 %692, 7
  br i1 %708, label %.loopexit80, label %.preheader79

709:                                              ; preds = %630
  %710 = load i8, ptr %628, align 1, !tbaa !33
  store i8 %710, ptr %93, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

.preheader79:                                     ; preds = %.loopexit82, %.preheader79
  %711 = phi ptr [ %736, %.preheader79 ], [ %705, %.loopexit82 ]
  %712 = phi i32 [ %737, %.preheader79 ], [ %706, %.loopexit82 ]
  %713 = phi ptr [ %738, %.preheader79 ], [ %707, %.loopexit82 ]
  %714 = load i8, ptr %713, align 1, !tbaa !33
  store i8 %714, ptr %711, align 1, !tbaa !33
  %715 = getelementptr inbounds nuw i8, ptr %711, i64 1
  %716 = getelementptr inbounds nuw i8, ptr %713, i64 1
  %717 = load i8, ptr %716, align 1, !tbaa !33
  store i8 %717, ptr %715, align 1, !tbaa !33
  %718 = getelementptr inbounds nuw i8, ptr %711, i64 2
  %719 = getelementptr inbounds nuw i8, ptr %713, i64 2
  %720 = load i8, ptr %719, align 1, !tbaa !33
  store i8 %720, ptr %718, align 1, !tbaa !33
  %721 = getelementptr inbounds nuw i8, ptr %711, i64 3
  %722 = getelementptr inbounds nuw i8, ptr %713, i64 3
  %723 = load i8, ptr %722, align 1, !tbaa !33
  store i8 %723, ptr %721, align 1, !tbaa !33
  %724 = getelementptr inbounds nuw i8, ptr %711, i64 4
  %725 = getelementptr inbounds nuw i8, ptr %713, i64 4
  %726 = load i8, ptr %725, align 1, !tbaa !33
  store i8 %726, ptr %724, align 1, !tbaa !33
  %727 = getelementptr inbounds nuw i8, ptr %711, i64 5
  %728 = getelementptr inbounds nuw i8, ptr %713, i64 5
  %729 = load i8, ptr %728, align 1, !tbaa !33
  store i8 %729, ptr %727, align 1, !tbaa !33
  %730 = getelementptr inbounds nuw i8, ptr %711, i64 6
  %731 = getelementptr inbounds nuw i8, ptr %713, i64 6
  %732 = load i8, ptr %731, align 1, !tbaa !33
  store i8 %732, ptr %730, align 1, !tbaa !33
  %733 = getelementptr inbounds nuw i8, ptr %711, i64 7
  %734 = getelementptr inbounds nuw i8, ptr %713, i64 7
  %735 = load i8, ptr %734, align 1, !tbaa !33
  store i8 %735, ptr %733, align 1, !tbaa !33
  %736 = getelementptr inbounds nuw i8, ptr %711, i64 8
  %737 = add i32 %712, -8
  %738 = getelementptr inbounds nuw i8, ptr %713, i64 8
  %739 = icmp eq i32 %737, 0
  br i1 %739, label %.loopexit80, label %.preheader79, !llvm.loop !62

.loopexit80:                                      ; preds = %.preheader79, %.loopexit82, %682, %663
  %740 = phi ptr [ %683, %682 ], [ %664, %663 ], [ %704, %.loopexit82 ], [ %736, %.preheader79 ]
  %741 = zext nneg i32 %276 to i64
  %742 = sub nsw i64 0, %741
  %743 = getelementptr inbounds i8, ptr %740, i64 %742
  br label %744

744:                                              ; preds = %.loopexit80, %625, %.loopexit72, %.loopexit76, %421, %.loopexit68, %295
  %745 = phi ptr [ %410, %.loopexit68 ], [ %93, %295 ], [ %620, %.loopexit72 ], [ %541, %.loopexit76 ], [ %93, %421 ], [ %740, %.loopexit80 ], [ %93, %625 ]
  %746 = phi i32 [ %301, %.loopexit68 ], [ %189, %295 ], [ %621, %.loopexit72 ], [ %428, %.loopexit76 ], [ %189, %421 ], [ %631, %.loopexit80 ], [ %189, %625 ]
  %747 = phi ptr [ %413, %.loopexit68 ], [ %298, %295 ], [ %624, %.loopexit72 ], [ %42, %.loopexit76 ], [ %424, %421 ], [ %743, %.loopexit80 ], [ %628, %625 ]
  %748 = icmp ugt i32 %746, 2
  br i1 %748, label %749, label %.loopexit

749:                                              ; preds = %744
  %750 = add nsw i32 %746, -3
  %751 = udiv i32 %750, 3
  %752 = and i32 %751, 1
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %754, label %764

754:                                              ; preds = %749
  %755 = getelementptr inbounds nuw i8, ptr %747, i64 1
  %756 = load i8, ptr %747, align 1, !tbaa !33
  %757 = getelementptr inbounds nuw i8, ptr %745, i64 1
  store i8 %756, ptr %745, align 1, !tbaa !33
  %758 = getelementptr inbounds nuw i8, ptr %747, i64 2
  %759 = load i8, ptr %755, align 1, !tbaa !33
  %760 = getelementptr inbounds nuw i8, ptr %745, i64 2
  store i8 %759, ptr %757, align 1, !tbaa !33
  %761 = load i8, ptr %758, align 1, !tbaa !33
  store i8 %761, ptr %760, align 1, !tbaa !33
  %762 = getelementptr inbounds nuw i8, ptr %745, i64 3
  %763 = getelementptr inbounds nuw i8, ptr %747, i64 3
  br label %764

764:                                              ; preds = %754, %749
  %765 = phi ptr [ %747, %749 ], [ %763, %754 ]
  %766 = phi i32 [ %746, %749 ], [ %750, %754 ]
  %767 = phi ptr [ %745, %749 ], [ %762, %754 ]
  %768 = phi ptr [ poison, %749 ], [ %762, %754 ]
  %769 = phi ptr [ poison, %749 ], [ %763, %754 ]
  %770 = icmp ult i32 %750, 3
  br i1 %770, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %764, %.preheader
  %771 = phi ptr [ %792, %.preheader ], [ %765, %764 ]
  %772 = phi i32 [ %790, %.preheader ], [ %766, %764 ]
  %773 = phi ptr [ %791, %.preheader ], [ %767, %764 ]
  %774 = getelementptr inbounds nuw i8, ptr %771, i64 1
  %775 = load i8, ptr %771, align 1, !tbaa !33
  %776 = getelementptr inbounds nuw i8, ptr %773, i64 1
  store i8 %775, ptr %773, align 1, !tbaa !33
  %777 = getelementptr inbounds nuw i8, ptr %771, i64 2
  %778 = load i8, ptr %774, align 1, !tbaa !33
  %779 = getelementptr inbounds nuw i8, ptr %773, i64 2
  store i8 %778, ptr %776, align 1, !tbaa !33
  %780 = load i8, ptr %777, align 1, !tbaa !33
  store i8 %780, ptr %779, align 1, !tbaa !33
  %781 = getelementptr inbounds nuw i8, ptr %773, i64 3
  %782 = getelementptr inbounds nuw i8, ptr %771, i64 3
  %783 = getelementptr inbounds nuw i8, ptr %771, i64 4
  %784 = load i8, ptr %782, align 1, !tbaa !33
  %785 = getelementptr inbounds nuw i8, ptr %773, i64 4
  store i8 %784, ptr %781, align 1, !tbaa !33
  %786 = getelementptr inbounds nuw i8, ptr %771, i64 5
  %787 = load i8, ptr %783, align 1, !tbaa !33
  %788 = getelementptr inbounds nuw i8, ptr %773, i64 5
  store i8 %787, ptr %785, align 1, !tbaa !33
  %789 = load i8, ptr %786, align 1, !tbaa !33
  store i8 %789, ptr %788, align 1, !tbaa !33
  %790 = add i32 %772, -6
  %791 = getelementptr inbounds nuw i8, ptr %773, i64 6
  %792 = getelementptr inbounds nuw i8, ptr %771, i64 6
  %793 = icmp ugt i32 %790, 2
  br i1 %793, label %.preheader, label %.loopexit, !llvm.loop !63

.loopexit:                                        ; preds = %.preheader, %764, %744
  %794 = phi ptr [ %745, %744 ], [ %768, %764 ], [ %791, %.preheader ]
  %795 = phi i32 [ %746, %744 ], [ %750, %764 ], [ %790, %.preheader ]
  %796 = phi ptr [ %747, %744 ], [ %769, %764 ], [ %792, %.preheader ]
  %797 = icmp eq i32 %795, 0
  br i1 %797, label %928, label %798

798:                                              ; preds = %.loopexit
  %799 = load i8, ptr %796, align 1, !tbaa !33
  %800 = getelementptr inbounds nuw i8, ptr %794, i64 1
  store i8 %799, ptr %794, align 1, !tbaa !33
  %801 = icmp eq i32 %795, 2
  br i1 %801, label %802, label %928

802:                                              ; preds = %798
  %803 = getelementptr inbounds nuw i8, ptr %796, i64 1
  %804 = load i8, ptr %803, align 1, !tbaa !33
  %805 = getelementptr inbounds nuw i8, ptr %794, i64 2
  store i8 %804, ptr %800, align 1, !tbaa !33
  br label %928

806:                                              ; preds = %268
  %807 = zext nneg i32 %276 to i64
  %808 = sub nsw i64 0, %807
  %809 = getelementptr inbounds i8, ptr %93, i64 %808
  %810 = udiv i32 %189, 3
  %811 = add nsw i32 %189, -3
  %812 = tail call i32 @llvm.umin.i32(i32 %811, i32 2)
  %813 = xor i32 %812, -1
  %814 = add nsw i32 %189, %813
  %815 = udiv i32 %814, 3
  %816 = icmp samesign ugt i32 %810, %815
  br i1 %816, label %817, label %837, !prof !41, !nosanitize !16

817:                                              ; preds = %806
  %818 = and i32 %815, 1
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %820, label %830

820:                                              ; preds = %817
  %821 = getelementptr inbounds nuw i8, ptr %809, i64 1
  %822 = load i8, ptr %809, align 1, !tbaa !33
  %823 = getelementptr inbounds nuw i8, ptr %93, i64 1
  store i8 %822, ptr %93, align 1, !tbaa !33
  %824 = getelementptr inbounds nuw i8, ptr %809, i64 2
  %825 = load i8, ptr %821, align 1, !tbaa !33
  %826 = getelementptr inbounds nuw i8, ptr %93, i64 2
  store i8 %825, ptr %823, align 1, !tbaa !33
  %827 = load i8, ptr %824, align 1, !tbaa !33
  store i8 %827, ptr %826, align 1, !tbaa !33
  %828 = getelementptr inbounds nuw i8, ptr %93, i64 3
  %829 = getelementptr inbounds nuw i8, ptr %809, i64 3
  br label %830

830:                                              ; preds = %820, %817
  %831 = phi ptr [ %93, %817 ], [ %828, %820 ]
  %832 = phi i32 [ %189, %817 ], [ %811, %820 ]
  %833 = phi ptr [ %809, %817 ], [ %829, %820 ]
  %834 = phi ptr [ poison, %817 ], [ %828, %820 ]
  %835 = phi ptr [ poison, %817 ], [ %829, %820 ]
  %836 = icmp ult i32 %814, 3
  br i1 %836, label %.loopexit84, label %.preheader83

837:                                              ; preds = %806
  %838 = getelementptr inbounds nuw i8, ptr %809, i64 1
  %839 = load i8, ptr %809, align 1, !tbaa !33
  %840 = getelementptr inbounds nuw i8, ptr %93, i64 1
  store i8 %839, ptr %93, align 1, !tbaa !33
  %841 = getelementptr inbounds nuw i8, ptr %809, i64 2
  %842 = load i8, ptr %838, align 1, !tbaa !33
  %843 = getelementptr inbounds nuw i8, ptr %93, i64 2
  store i8 %842, ptr %840, align 1, !tbaa !33
  %844 = load i8, ptr %841, align 1, !tbaa !33
  store i8 %844, ptr %843, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

.preheader83:                                     ; preds = %830, %.preheader83
  %845 = phi ptr [ %865, %.preheader83 ], [ %831, %830 ]
  %846 = phi i32 [ %864, %.preheader83 ], [ %832, %830 ]
  %847 = phi ptr [ %866, %.preheader83 ], [ %833, %830 ]
  %848 = getelementptr inbounds nuw i8, ptr %847, i64 1
  %849 = load i8, ptr %847, align 1, !tbaa !33
  %850 = getelementptr inbounds nuw i8, ptr %845, i64 1
  store i8 %849, ptr %845, align 1, !tbaa !33
  %851 = getelementptr inbounds nuw i8, ptr %847, i64 2
  %852 = load i8, ptr %848, align 1, !tbaa !33
  %853 = getelementptr inbounds nuw i8, ptr %845, i64 2
  store i8 %852, ptr %850, align 1, !tbaa !33
  %854 = load i8, ptr %851, align 1, !tbaa !33
  store i8 %854, ptr %853, align 1, !tbaa !33
  %855 = getelementptr inbounds nuw i8, ptr %845, i64 3
  %856 = getelementptr inbounds nuw i8, ptr %847, i64 3
  %857 = getelementptr inbounds nuw i8, ptr %847, i64 4
  %858 = load i8, ptr %856, align 1, !tbaa !33
  %859 = getelementptr inbounds nuw i8, ptr %845, i64 4
  store i8 %858, ptr %855, align 1, !tbaa !33
  %860 = getelementptr inbounds nuw i8, ptr %847, i64 5
  %861 = load i8, ptr %857, align 1, !tbaa !33
  %862 = getelementptr inbounds nuw i8, ptr %845, i64 5
  store i8 %861, ptr %859, align 1, !tbaa !33
  %863 = load i8, ptr %860, align 1, !tbaa !33
  store i8 %863, ptr %862, align 1, !tbaa !33
  %864 = add i32 %846, -6
  %865 = getelementptr inbounds nuw i8, ptr %845, i64 6
  %866 = getelementptr inbounds nuw i8, ptr %847, i64 6
  %867 = icmp ugt i32 %864, 2
  br i1 %867, label %.preheader83, label %.loopexit84.loopexit, !llvm.loop !64

.loopexit84.loopexit:                             ; preds = %.preheader83
  %868 = getelementptr inbounds nuw i8, ptr %845, i64 3
  %869 = getelementptr inbounds nuw i8, ptr %847, i64 3
  br label %.loopexit84

.loopexit84:                                      ; preds = %.loopexit84.loopexit, %830
  %870 = phi ptr [ %93, %830 ], [ %868, %.loopexit84.loopexit ]
  %871 = phi ptr [ %809, %830 ], [ %869, %.loopexit84.loopexit ]
  %872 = phi ptr [ %834, %830 ], [ %865, %.loopexit84.loopexit ]
  %873 = phi ptr [ %835, %830 ], [ %866, %.loopexit84.loopexit ]
  %874 = mul nsw i32 %815, -3
  %875 = add nsw i32 %874, %811
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %928, label %877

877:                                              ; preds = %.loopexit84
  %878 = load i8, ptr %873, align 1, !tbaa !33
  %879 = getelementptr inbounds nuw i8, ptr %870, i64 4
  store i8 %878, ptr %872, align 1, !tbaa !33
  %880 = icmp eq i32 %875, 2
  br i1 %880, label %881, label %928

881:                                              ; preds = %877
  %882 = getelementptr inbounds nuw i8, ptr %871, i64 4
  %883 = load i8, ptr %882, align 1, !tbaa !33
  %884 = getelementptr inbounds nuw i8, ptr %870, i64 5
  store i8 %883, ptr %879, align 1, !tbaa !33
  br label %928

885:                                              ; preds = %228
  %886 = and i32 %234, 64
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %888, label %.loopexit85

888:                                              ; preds = %885
  %889 = shl nsw i32 -1, %234
  %890 = xor i32 %889, -1
  %891 = getelementptr inbounds nuw i8, ptr %231, i64 2
  %892 = load i16, ptr %891, align 2, !tbaa !39
  %893 = zext i16 %892 to i64
  %894 = getelementptr inbounds nuw [4 x i8], ptr %51, i64 %893
  %895 = zext nneg i32 %890 to i64
  %896 = and i64 %230, %895
  %897 = getelementptr inbounds nuw [4 x i8], ptr %894, i64 %896
  %898 = getelementptr inbounds nuw i8, ptr %897, i64 1
  %899 = load i8, ptr %898, align 1, !tbaa !34
  %900 = zext i8 %899 to i32
  %901 = zext nneg i8 %899 to i64
  %902 = lshr i64 %230, %901
  %903 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %232, i32 %900), !nosanitize !16
  %904 = extractvalue { i32, i1 } %903, 1, !nosanitize !16
  br i1 %904, label %.loopexit86, label %228, !prof !65, !nosanitize !16

905:                                              ; preds = %146
  %906 = and i32 %139, 64
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %908, label %925

908:                                              ; preds = %905
  %909 = shl nsw i32 -1, %139
  %910 = xor i32 %909, -1
  %911 = getelementptr inbounds nuw i8, ptr %136, i64 2
  %912 = load i16, ptr %911, align 2, !tbaa !39
  %913 = zext i16 %912 to i64
  %914 = getelementptr inbounds nuw [4 x i8], ptr %49, i64 %913
  %915 = zext nneg i32 %910 to i64
  %916 = and i64 %135, %915
  %917 = getelementptr inbounds nuw [4 x i8], ptr %914, i64 %916
  %918 = getelementptr inbounds nuw i8, ptr %917, i64 1
  %919 = load i8, ptr %918, align 1, !tbaa !34
  %920 = zext i8 %919 to i32
  %921 = zext nneg i8 %919 to i64
  %922 = lshr i64 %135, %921
  %923 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %137, i32 %920), !nosanitize !16
  %924 = extractvalue { i32, i1 } %923, 1, !nosanitize !16
  br i1 %924, label %.loopexit87, label %133, !prof !65, !nosanitize !16

925:                                              ; preds = %905
  %926 = and i32 %139, 32
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %.loopexit85, label %941

928:                                              ; preds = %881, %877, %.loopexit84, %802, %798, %.loopexit, %141
  %929 = phi i32 [ %137, %141 ], [ %279, %802 ], [ %279, %798 ], [ %279, %.loopexit ], [ %279, %881 ], [ %279, %877 ], [ %279, %.loopexit84 ]
  %930 = phi i64 [ %135, %141 ], [ %278, %802 ], [ %278, %798 ], [ %278, %.loopexit ], [ %278, %881 ], [ %278, %877 ], [ %278, %.loopexit84 ]
  %931 = phi ptr [ %145, %141 ], [ %805, %802 ], [ %800, %798 ], [ %794, %.loopexit ], [ %884, %881 ], [ %879, %877 ], [ %872, %.loopexit84 ]
  %932 = phi ptr [ %122, %141 ], [ %271, %802 ], [ %271, %798 ], [ %271, %.loopexit ], [ %271, %881 ], [ %271, %877 ], [ %271, %.loopexit84 ]
  %933 = icmp ult ptr %932, %14
  %934 = icmp ult ptr %931, %34
  %935 = select i1 %933, i1 %934, i1 false
  br i1 %935, label %90, label %.loopexit92, !llvm.loop !66

.loopexit85:                                      ; preds = %287, %885, %925
  %936 = phi ptr [ @.str.2, %925 ], [ @.str.1, %885 ], [ @.str, %287 ]
  %937 = phi i32 [ %137, %925 ], [ %232, %885 ], [ %279, %287 ]
  %938 = phi i64 [ %135, %925 ], [ %230, %885 ], [ %278, %287 ]
  %939 = phi ptr [ %122, %925 ], [ %217, %885 ], [ %271, %287 ]
  %940 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %936, ptr %940, align 8, !tbaa !67
  br label %941

941:                                              ; preds = %.loopexit85, %925
  %942 = phi i32 [ 16191, %925 ], [ 16209, %.loopexit85 ]
  %943 = phi i32 [ %137, %925 ], [ %937, %.loopexit85 ]
  %944 = phi i64 [ %135, %925 ], [ %938, %.loopexit85 ]
  %945 = phi ptr [ %122, %925 ], [ %939, %.loopexit85 ]
  %946 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %942, ptr %946, align 8, !tbaa !68
  br label %.loopexit92

.loopexit92:                                      ; preds = %928, %941
  %947 = phi i32 [ %943, %941 ], [ %929, %928 ]
  %948 = phi i64 [ %944, %941 ], [ %930, %928 ]
  %949 = phi ptr [ %93, %941 ], [ %931, %928 ]
  %950 = phi ptr [ %945, %941 ], [ %932, %928 ]
  %951 = lshr i32 %947, 3
  %952 = zext nneg i32 %951 to i64
  %953 = sub nsw i64 0, %952
  %954 = getelementptr inbounds i8, ptr %950, i64 %953
  store ptr %954, ptr %0, align 8, !tbaa !14
  store ptr %949, ptr %15, align 8, !tbaa !18
  %955 = icmp ult ptr %954, %14
  br i1 %955, label %957, label %963

956:                                              ; preds = %980, %963
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

957:                                              ; preds = %.loopexit92
  %958 = ptrtoint ptr %14 to i64
  %959 = ptrtoint ptr %954 to i64
  %960 = sub i64 %958, %959
  %961 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %960, i64 5), !nosanitize !16
  %962 = extractvalue { i64, i1 } %961, 1, !nosanitize !16
  br i1 %962, label %.loopexit91, label %969, !prof !17, !nosanitize !16

963:                                              ; preds = %.loopexit92
  %964 = ptrtoint ptr %954 to i64
  %965 = ptrtoint ptr %14 to i64
  %966 = sub i64 %964, %965
  %967 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 5, i64 %966), !nosanitize !16
  %968 = extractvalue { i64, i1 } %967, 1, !nosanitize !16
  br i1 %968, label %956, label %969, !prof !17, !nosanitize !16

969:                                              ; preds = %963, %957
  %970 = phi { i64, i1 } [ %961, %957 ], [ %967, %963 ]
  %971 = extractvalue { i64, i1 } %970, 0
  %972 = trunc i64 %971 to i32
  store i32 %972, ptr %6, align 8, !tbaa !15
  %973 = icmp ult ptr %949, %34
  br i1 %973, label %974, label %980

974:                                              ; preds = %969
  %975 = ptrtoint ptr %34 to i64
  %976 = ptrtoint ptr %949 to i64
  %977 = sub i64 %975, %976
  %978 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %977, i64 257), !nosanitize !16
  %979 = extractvalue { i64, i1 } %978, 1, !nosanitize !16
  br i1 %979, label %.loopexit91, label %986, !prof !17, !nosanitize !16

980:                                              ; preds = %969
  %981 = ptrtoint ptr %949 to i64
  %982 = ptrtoint ptr %34 to i64
  %983 = sub i64 %981, %982
  %984 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 257, i64 %983), !nosanitize !16
  %985 = extractvalue { i64, i1 } %984, 1, !nosanitize !16
  br i1 %985, label %956, label %986, !prof !17, !nosanitize !16

986:                                              ; preds = %980, %974
  %987 = phi { i64, i1 } [ %978, %974 ], [ %984, %980 ]
  %988 = extractvalue { i64, i1 } %987, 0
  %989 = and i32 %947, 7
  %990 = shl nsw i32 -1, %989
  %991 = xor i32 %990, -1
  %992 = zext nneg i32 %991 to i64
  %993 = and i64 %948, %992
  %994 = trunc i64 %988 to i32
  store i32 %994, ptr %18, align 8, !tbaa !19
  store i64 %993, ptr %44, align 8, !tbaa !27
  store i32 %989, ptr %46, align 8, !tbaa !28
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
