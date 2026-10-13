; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_inffast.light.mid.ll'
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
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
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
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

23:                                               ; preds = %11
  %24 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %19, i32 257), !nosanitize !16
  %25 = extractvalue { i32, i1 } %24, 1, !nosanitize !16
  br i1 %25, label %26, label %27, !prof !17, !nosanitize !16

26:                                               ; preds = %23
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
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
  %43 = ptrtoint ptr %42 to i64
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
  %68 = zext i32 %40 to i64
  %69 = icmp ult i32 %40, 32
  %70 = and i64 %68, 4294967264
  %71 = trunc nuw i64 %70 to i32
  %72 = sub i32 %40, %71
  %73 = getelementptr i8, ptr %42, i64 %70
  %74 = icmp eq i64 %70, %68
  %75 = trunc i64 %17 to i32
  %76 = add i32 %19, %75
  %77 = add i32 %76, -1
  %78 = sub i32 %77, %1
  %79 = add i32 %40, %1
  %80 = sub i32 %77, %79
  %81 = add i32 %36, %1
  %82 = trunc i64 %17 to i32
  %83 = add i32 %19, %82
  %84 = add i32 %36, %40
  %85 = add i32 %84, %1
  %86 = trunc i64 %17 to i32
  %87 = add i32 %19, %86
  %88 = add i32 %19, %75
  %89 = xor i32 %40, -1
  %90 = add i32 %88, %89
  %91 = sub i32 %90, %1
  %92 = add i32 %40, %1
  %93 = trunc i64 %17 to i32
  %94 = add i32 %19, %93
  %invariant.op = sub i64 1, %43
  br label %95

95:                                               ; preds = %737, %27
  %96 = phi i32 [ %47, %27 ], [ %738, %737 ]
  %97 = phi i64 [ %45, %27 ], [ %739, %737 ]
  %98 = phi ptr [ %16, %27 ], [ %740, %737 ]
  %99 = phi ptr [ %5, %27 ], [ %741, %737 ]
  %100 = icmp ult i32 %96, 15
  br i1 %100, label %101, label %124

101:                                              ; preds = %95
  %102 = load i8, ptr %99, align 1, !tbaa !33
  %103 = zext i8 %102 to i64
  %104 = zext nneg i32 %96 to i64
  %105 = shl nuw nsw i64 %103, %104
  %106 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %97, i64 %105), !nosanitize !16
  %107 = extractvalue { i64, i1 } %106, 1, !nosanitize !16
  br i1 %107, label %108, label %109, !prof !17, !nosanitize !16

108:                                              ; preds = %101
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !16
  unreachable, !nosanitize !16

109:                                              ; preds = %101
  %110 = extractvalue { i64, i1 } %106, 0, !nosanitize !16
  %111 = getelementptr inbounds nuw i8, ptr %99, i64 1
  %112 = add nuw nsw i32 %96, 8
  %113 = load i8, ptr %111, align 1, !tbaa !33
  %114 = zext i8 %113 to i64
  %115 = zext nneg i32 %112 to i64
  %116 = shl nuw nsw i64 %114, %115
  %117 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %110, i64 %116), !nosanitize !16
  %118 = extractvalue { i64, i1 } %117, 1, !nosanitize !16
  br i1 %118, label %119, label %120, !prof !17, !nosanitize !16

119:                                              ; preds = %109
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !16
  unreachable, !nosanitize !16

120:                                              ; preds = %109
  %121 = extractvalue { i64, i1 } %117, 0, !nosanitize !16
  %122 = getelementptr inbounds nuw i8, ptr %99, i64 2
  %123 = or disjoint i32 %96, 16
  br label %124

124:                                              ; preds = %120, %95
  %125 = phi i32 [ %123, %120 ], [ %96, %95 ]
  %126 = phi i64 [ %121, %120 ], [ %97, %95 ]
  %127 = phi ptr [ %122, %120 ], [ %99, %95 ]
  %128 = and i64 %126, %60
  %129 = getelementptr inbounds nuw [4 x i8], ptr %49, i64 %128
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 1
  %131 = load i8, ptr %130, align 1, !tbaa !34
  %132 = zext i8 %131 to i32
  %133 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %125, i32 %132), !nosanitize !16
  %134 = extractvalue { i32, i1 } %133, 1, !nosanitize !16
  br i1 %134, label %.loopexit49, label %135, !prof !37, !nosanitize !16

135:                                              ; preds = %124
  %136 = zext nneg i8 %131 to i64
  %137 = lshr i64 %126, %136
  br label %138

.loopexit49:                                      ; preds = %124, %717
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

138:                                              ; preds = %717, %135
  %139 = phi { i32, i1 } [ %732, %717 ], [ %133, %135 ]
  %140 = phi i64 [ %731, %717 ], [ %137, %135 ]
  %141 = phi ptr [ %726, %717 ], [ %129, %135 ]
  %142 = extractvalue { i32, i1 } %139, 0
  %143 = load i8, ptr %141, align 2, !tbaa !38
  %144 = zext i8 %143 to i32
  %145 = icmp eq i8 %143, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %138
  %147 = getelementptr inbounds nuw i8, ptr %141, i64 2
  %148 = load i16, ptr %147, align 2, !tbaa !39
  %149 = trunc i16 %148 to i8
  %150 = getelementptr inbounds nuw i8, ptr %98, i64 1
  store i8 %149, ptr %98, align 1, !tbaa !33
  br label %737

151:                                              ; preds = %138
  %152 = and i32 %144, 16
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %714, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds nuw i8, ptr %141, i64 2
  %156 = load i16, ptr %155, align 2, !tbaa !39
  %157 = zext i16 %156 to i32
  %158 = and i32 %144, 15
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %190, label %160

160:                                              ; preds = %154
  %161 = icmp ult i32 %142, %158
  br i1 %161, label %162, label %174

162:                                              ; preds = %160
  %163 = load i8, ptr %127, align 1, !tbaa !33
  %164 = zext i8 %163 to i64
  %165 = zext nneg i32 %142 to i64
  %166 = shl nuw nsw i64 %164, %165
  %167 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %140, i64 %166), !nosanitize !16
  %168 = extractvalue { i64, i1 } %167, 1, !nosanitize !16
  br i1 %168, label %169, label %170, !prof !17, !nosanitize !16

169:                                              ; preds = %162
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !16
  unreachable, !nosanitize !16

170:                                              ; preds = %162
  %171 = extractvalue { i64, i1 } %167, 0, !nosanitize !16
  %172 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %173 = add nuw nsw i32 %142, 8
  br label %174

174:                                              ; preds = %170, %160
  %175 = phi i32 [ %173, %170 ], [ %142, %160 ]
  %176 = phi i64 [ %171, %170 ], [ %140, %160 ]
  %177 = phi ptr [ %172, %170 ], [ %127, %160 ]
  %178 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %175, i32 %158), !nosanitize !16
  %179 = extractvalue { i32, i1 } %178, 1, !nosanitize !16
  br i1 %179, label %180, label %181, !prof !17, !nosanitize !16

180:                                              ; preds = %174
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

181:                                              ; preds = %174
  %182 = trunc i64 %176 to i32
  %183 = shl nsw i32 -1, %158
  %184 = xor i32 %183, -1
  %185 = and i32 %182, %184
  %186 = add nuw nsw i32 %185, %157
  %187 = extractvalue { i32, i1 } %178, 0, !nosanitize !16
  %188 = zext nneg i32 %158 to i64
  %189 = lshr i64 %176, %188
  br label %190

190:                                              ; preds = %181, %154
  %191 = phi i32 [ %187, %181 ], [ %142, %154 ]
  %192 = phi i64 [ %189, %181 ], [ %140, %154 ]
  %193 = phi ptr [ %177, %181 ], [ %127, %154 ]
  %194 = phi i32 [ %186, %181 ], [ %157, %154 ]
  %195 = icmp ult i32 %191, 15
  br i1 %195, label %196, label %219

196:                                              ; preds = %190
  %197 = load i8, ptr %193, align 1, !tbaa !33
  %198 = zext i8 %197 to i64
  %199 = zext nneg i32 %191 to i64
  %200 = shl nuw nsw i64 %198, %199
  %201 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %192, i64 %200), !nosanitize !16
  %202 = extractvalue { i64, i1 } %201, 1, !nosanitize !16
  br i1 %202, label %203, label %204, !prof !17, !nosanitize !16

203:                                              ; preds = %196
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !16
  unreachable, !nosanitize !16

204:                                              ; preds = %196
  %205 = extractvalue { i64, i1 } %201, 0, !nosanitize !16
  %206 = getelementptr inbounds nuw i8, ptr %193, i64 1
  %207 = add nuw nsw i32 %191, 8
  %208 = load i8, ptr %206, align 1, !tbaa !33
  %209 = zext i8 %208 to i64
  %210 = zext nneg i32 %207 to i64
  %211 = shl nuw nsw i64 %209, %210
  %212 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %205, i64 %211), !nosanitize !16
  %213 = extractvalue { i64, i1 } %212, 1, !nosanitize !16
  br i1 %213, label %214, label %215, !prof !17, !nosanitize !16

214:                                              ; preds = %204
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !16
  unreachable, !nosanitize !16

215:                                              ; preds = %204
  %216 = extractvalue { i64, i1 } %212, 0, !nosanitize !16
  %217 = getelementptr inbounds nuw i8, ptr %193, i64 2
  %218 = or disjoint i32 %191, 16
  br label %219

219:                                              ; preds = %215, %190
  %220 = phi i32 [ %218, %215 ], [ %191, %190 ]
  %221 = phi i64 [ %216, %215 ], [ %192, %190 ]
  %222 = phi ptr [ %217, %215 ], [ %193, %190 ]
  %223 = and i64 %221, %61
  %224 = getelementptr inbounds nuw [4 x i8], ptr %51, i64 %223
  %225 = getelementptr inbounds nuw i8, ptr %224, i64 1
  %226 = load i8, ptr %225, align 1, !tbaa !34
  %227 = zext i8 %226 to i32
  %228 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %220, i32 %227), !nosanitize !16
  %229 = extractvalue { i32, i1 } %228, 1, !nosanitize !16
  br i1 %229, label %.loopexit48, label %230, !prof !37, !nosanitize !16

230:                                              ; preds = %219
  %231 = zext nneg i8 %226 to i64
  %232 = lshr i64 %221, %231
  br label %233

.loopexit48:                                      ; preds = %219, %697
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

233:                                              ; preds = %697, %230
  %234 = phi { i32, i1 } [ %712, %697 ], [ %228, %230 ]
  %235 = phi i64 [ %711, %697 ], [ %232, %230 ]
  %236 = phi ptr [ %706, %697 ], [ %224, %230 ]
  %237 = extractvalue { i32, i1 } %234, 0
  %238 = load i8, ptr %236, align 2, !tbaa !38
  %239 = zext i8 %238 to i32
  %240 = and i32 %239, 16
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %694, label %242

242:                                              ; preds = %233
  %243 = getelementptr inbounds nuw i8, ptr %236, i64 2
  %244 = load i16, ptr %243, align 2, !tbaa !39
  %245 = zext i16 %244 to i32
  %246 = and i32 %239, 15
  %247 = icmp ult i32 %237, %246
  br i1 %247, label %248, label %273

248:                                              ; preds = %242
  %249 = getelementptr inbounds nuw i8, ptr %222, i64 1
  %250 = load i8, ptr %222, align 1, !tbaa !33
  %251 = zext i8 %250 to i64
  %252 = zext nneg i32 %237 to i64
  %253 = shl nuw nsw i64 %251, %252
  %254 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %235, i64 %253), !nosanitize !16
  %255 = extractvalue { i64, i1 } %254, 0, !nosanitize !16
  %256 = extractvalue { i64, i1 } %254, 1, !nosanitize !16
  br i1 %256, label %257, label %258, !prof !17, !nosanitize !16

257:                                              ; preds = %248
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !16
  unreachable, !nosanitize !16

258:                                              ; preds = %248
  %259 = add nuw nsw i32 %237, 8
  %260 = icmp samesign ult i32 %259, %246
  br i1 %260, label %261, label %273

261:                                              ; preds = %258
  %262 = load i8, ptr %249, align 1, !tbaa !33
  %263 = zext i8 %262 to i64
  %264 = zext nneg i32 %259 to i64
  %265 = shl nuw nsw i64 %263, %264
  %266 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %255, i64 %265), !nosanitize !16
  %267 = extractvalue { i64, i1 } %266, 1, !nosanitize !16
  br i1 %267, label %268, label %269, !prof !17, !nosanitize !16

268:                                              ; preds = %261
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !16
  unreachable, !nosanitize !16

269:                                              ; preds = %261
  %270 = extractvalue { i64, i1 } %266, 0, !nosanitize !16
  %271 = getelementptr inbounds nuw i8, ptr %222, i64 2
  %272 = add nuw nsw i32 %237, 16
  br label %273

273:                                              ; preds = %269, %258, %242
  %274 = phi i32 [ %272, %269 ], [ %259, %258 ], [ %237, %242 ]
  %275 = phi i64 [ %270, %269 ], [ %255, %258 ], [ %235, %242 ]
  %276 = phi ptr [ %271, %269 ], [ %249, %258 ], [ %222, %242 ]
  %277 = shl nsw i32 -1, %246
  %278 = xor i32 %277, -1
  %279 = trunc i64 %275 to i32
  %280 = and i32 %279, %278
  %281 = add nuw nsw i32 %280, %245
  %282 = zext nneg i32 %246 to i64
  %283 = lshr i64 %275, %282
  %284 = sub i32 %274, %246
  %285 = ptrtoint ptr %98 to i64
  %286 = sub i64 %285, %62
  %287 = trunc i64 %286 to i32
  %288 = icmp ugt i32 %281, %287
  br i1 %288, label %289, label %630

289:                                              ; preds = %273
  %290 = sub nuw nsw i32 %281, %287
  %291 = icmp ugt i32 %290, %38
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  %293 = load i32, ptr %63, align 8, !tbaa !40
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %.loopexit47

295:                                              ; preds = %292, %289
  br i1 %64, label %296, label %372

296:                                              ; preds = %295
  %297 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %36, i32 %290), !nosanitize !16
  %298 = extractvalue { i32, i1 } %297, 1, !nosanitize !16
  br i1 %298, label %299, label %300, !prof !17, !nosanitize !16

299:                                              ; preds = %296
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

300:                                              ; preds = %296
  %301 = extractvalue { i32, i1 } %297, 0, !nosanitize !16
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds nuw i8, ptr %42, i64 %302
  %304 = icmp ult i32 %290, %194
  br i1 %304, label %305, label %568

305:                                              ; preds = %300
  %306 = sub nuw nsw i32 %194, %290
  %307 = add i32 %78, %280
  %308 = add i32 %307, %245
  %309 = trunc i64 %285 to i32
  %310 = sub i32 %308, %309
  %.not522 = icmp ugt i32 %290, %310
  br i1 %.not522, label %iter.check, label %.split444.us, !prof !41, !nosanitize !16

iter.check:                                       ; preds = %305
  %311 = zext nneg i32 %290 to i64
  %min.iters.check = icmp samesign ult i32 %290, 4
  br i1 %min.iters.check, label %.split444.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %312 = trunc i64 %285 to i32
  %313 = add i32 %81, %312
  %314 = add i32 %83, %280
  %315 = add i32 %314, %245
  %316 = sub i32 %313, %315
  %317 = zext i32 %316 to i64
  %318 = add i64 %43, %317
  %319 = sub i64 %285, %318
  %diff.check = icmp ult i64 %319, 32
  br i1 %diff.check, label %.split444.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check800 = icmp samesign ult i32 %290, 32
  br i1 %min.iters.check800, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %311, 28
  %n.vec = and i64 %311, 2147483616
  %320 = getelementptr i8, ptr %98, i64 %n.vec
  %.cast = trunc nuw nsw i64 %n.vec to i32
  %321 = sub nsw i32 %290, %.cast
  %322 = getelementptr i8, ptr %303, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i8, ptr %98, i64 %index
  %next.gep801 = getelementptr i8, ptr %303, i64 %index
  %323 = getelementptr i8, ptr %next.gep801, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep801, align 1, !tbaa !33
  %wide.load802 = load <16 x i8>, ptr %323, align 1, !tbaa !33
  %324 = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !33
  store <16 x i8> %wide.load802, ptr %324, align 1, !tbaa !33
  %index.next = add nuw i64 %index, 32
  %325 = icmp eq i64 %index.next, %n.vec
  br i1 %325, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %311
  br i1 %cmp.n, label %.loopexit894, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.split444.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec806 = and i64 %311, 2147483644
  %326 = getelementptr i8, ptr %98, i64 %n.vec806
  %.cast807 = trunc nuw nsw i64 %n.vec806 to i32
  %327 = sub nsw i32 %290, %.cast807
  %328 = getelementptr i8, ptr %303, i64 %n.vec806
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index808 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next812, %vec.epilog.vector.body ]
  %next.gep809 = getelementptr i8, ptr %98, i64 %index808
  %next.gep810 = getelementptr i8, ptr %303, i64 %index808
  %wide.load811 = load <4 x i8>, ptr %next.gep810, align 1, !tbaa !33
  store <4 x i8> %wide.load811, ptr %next.gep809, align 1, !tbaa !33
  %index.next812 = add nuw i64 %index808, 4
  %329 = icmp eq i64 %index.next812, %n.vec806
  br i1 %329, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !47

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n813 = icmp eq i64 %n.vec806, %311
  br i1 %cmp.n813, label %.loopexit894, label %.split444.preheader

.split444.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %98, %iter.check ], [ %98, %vector.memcheck ], [ %320, %vec.epilog.iter.check ], [ %326, %vec.epilog.middle.block ]
  %.ph897 = phi i32 [ %290, %iter.check ], [ %290, %vector.memcheck ], [ %321, %vec.epilog.iter.check ], [ %327, %vec.epilog.middle.block ]
  %.ph898 = phi ptr [ %303, %iter.check ], [ %303, %vector.memcheck ], [ %322, %vec.epilog.iter.check ], [ %328, %vec.epilog.middle.block ]
  %330 = add i32 %.ph897, -1
  %xtraiter1050 = and i32 %.ph897, 7
  %lcmp.mod1051.not = icmp eq i32 %xtraiter1050, 0
  br i1 %lcmp.mod1051.not, label %.split444.prol.loopexit, label %.split444.prol

.split444.prol:                                   ; preds = %.split444.preheader, %.split444.prol
  %331 = phi ptr [ %335, %.split444.prol ], [ %.ph, %.split444.preheader ]
  %332 = phi i32 [ %336, %.split444.prol ], [ %.ph897, %.split444.preheader ]
  %333 = phi ptr [ %337, %.split444.prol ], [ %.ph898, %.split444.preheader ]
  %prol.iter1052 = phi i32 [ %prol.iter1052.next, %.split444.prol ], [ 0, %.split444.preheader ]
  %334 = load i8, ptr %333, align 1, !tbaa !33
  store i8 %334, ptr %331, align 1, !tbaa !33
  %335 = getelementptr inbounds nuw i8, ptr %331, i64 1
  %336 = add i32 %332, -1
  %337 = getelementptr inbounds nuw i8, ptr %333, i64 1
  %prol.iter1052.next = add i32 %prol.iter1052, 1
  %prol.iter1052.cmp.not = icmp eq i32 %prol.iter1052.next, %xtraiter1050
  br i1 %prol.iter1052.cmp.not, label %.split444.prol.loopexit, label %.split444.prol, !llvm.loop !48

.split444.prol.loopexit:                          ; preds = %.split444.prol, %.split444.preheader
  %.lcssa943.unr = phi ptr [ poison, %.split444.preheader ], [ %335, %.split444.prol ]
  %.unr1053 = phi ptr [ %.ph, %.split444.preheader ], [ %335, %.split444.prol ]
  %.unr1054 = phi i32 [ %.ph897, %.split444.preheader ], [ %336, %.split444.prol ]
  %.unr1055 = phi ptr [ %.ph898, %.split444.preheader ], [ %337, %.split444.prol ]
  %338 = icmp ult i32 %330, 7
  br i1 %338, label %.loopexit894, label %.split444

.split444.us:                                     ; preds = %305
  %339 = load i8, ptr %303, align 1, !tbaa !33
  store i8 %339, ptr %98, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

.split444:                                        ; preds = %.split444.prol.loopexit, %.split444
  %340 = phi ptr [ %365, %.split444 ], [ %.unr1053, %.split444.prol.loopexit ]
  %341 = phi i32 [ %366, %.split444 ], [ %.unr1054, %.split444.prol.loopexit ]
  %342 = phi ptr [ %367, %.split444 ], [ %.unr1055, %.split444.prol.loopexit ]
  %343 = load i8, ptr %342, align 1, !tbaa !33
  store i8 %343, ptr %340, align 1, !tbaa !33
  %344 = getelementptr inbounds nuw i8, ptr %340, i64 1
  %345 = getelementptr inbounds nuw i8, ptr %342, i64 1
  %346 = load i8, ptr %345, align 1, !tbaa !33
  store i8 %346, ptr %344, align 1, !tbaa !33
  %347 = getelementptr inbounds nuw i8, ptr %340, i64 2
  %348 = getelementptr inbounds nuw i8, ptr %342, i64 2
  %349 = load i8, ptr %348, align 1, !tbaa !33
  store i8 %349, ptr %347, align 1, !tbaa !33
  %350 = getelementptr inbounds nuw i8, ptr %340, i64 3
  %351 = getelementptr inbounds nuw i8, ptr %342, i64 3
  %352 = load i8, ptr %351, align 1, !tbaa !33
  store i8 %352, ptr %350, align 1, !tbaa !33
  %353 = getelementptr inbounds nuw i8, ptr %340, i64 4
  %354 = getelementptr inbounds nuw i8, ptr %342, i64 4
  %355 = load i8, ptr %354, align 1, !tbaa !33
  store i8 %355, ptr %353, align 1, !tbaa !33
  %356 = getelementptr inbounds nuw i8, ptr %340, i64 5
  %357 = getelementptr inbounds nuw i8, ptr %342, i64 5
  %358 = load i8, ptr %357, align 1, !tbaa !33
  store i8 %358, ptr %356, align 1, !tbaa !33
  %359 = getelementptr inbounds nuw i8, ptr %340, i64 6
  %360 = getelementptr inbounds nuw i8, ptr %342, i64 6
  %361 = load i8, ptr %360, align 1, !tbaa !33
  store i8 %361, ptr %359, align 1, !tbaa !33
  %362 = getelementptr inbounds nuw i8, ptr %340, i64 7
  %363 = getelementptr inbounds nuw i8, ptr %342, i64 7
  %364 = load i8, ptr %363, align 1, !tbaa !33
  store i8 %364, ptr %362, align 1, !tbaa !33
  %365 = getelementptr inbounds nuw i8, ptr %340, i64 8
  %366 = add i32 %341, -8
  %367 = getelementptr inbounds nuw i8, ptr %342, i64 8
  %368 = icmp eq i32 %366, 0
  br i1 %368, label %.loopexit894, label %.split444, !llvm.loop !50

.loopexit894:                                     ; preds = %.split444.prol.loopexit, %.split444, %vec.epilog.middle.block, %middle.block
  %.lcssa700 = phi ptr [ %326, %vec.epilog.middle.block ], [ %320, %middle.block ], [ %.lcssa943.unr, %.split444.prol.loopexit ], [ %365, %.split444 ]
  %369 = zext nneg i32 %281 to i64
  %370 = sub nsw i64 0, %369
  %371 = getelementptr inbounds i8, ptr %.lcssa700, i64 %370
  br label %568

372:                                              ; preds = %295
  %373 = icmp ult i32 %40, %290
  br i1 %373, label %374, label %496

374:                                              ; preds = %372
  br i1 %66, label %.loopexit53, label %375, !prof !17, !nosanitize !16

.loopexit53:                                      ; preds = %374, %788, %771
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !16
  unreachable, !nosanitize !16

375:                                              ; preds = %374
  %376 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %67, i32 %290), !nosanitize !16
  %377 = extractvalue { i32, i1 } %376, 1, !nosanitize !16
  br i1 %377, label %378, label %379, !prof !17, !nosanitize !16

378:                                              ; preds = %375
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

379:                                              ; preds = %375
  %380 = extractvalue { i32, i1 } %376, 0, !nosanitize !16
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds nuw i8, ptr %42, i64 %381
  %383 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %290, i32 %40), !nosanitize !16
  %384 = extractvalue { i32, i1 } %383, 0, !nosanitize !16
  %385 = extractvalue { i32, i1 } %383, 1, !nosanitize !16
  br i1 %385, label %386, label %387, !prof !17, !nosanitize !16

386:                                              ; preds = %379
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

387:                                              ; preds = %379
  %388 = icmp ult i32 %384, %194
  br i1 %388, label %389, label %568

389:                                              ; preds = %387
  %390 = sub nuw nsw i32 %194, %384
  %391 = add i32 %80, %280
  %392 = add i32 %391, %245
  %393 = trunc i64 %285 to i32
  %394 = sub i32 %392, %393
  %.not521 = icmp ugt i32 %384, %394
  br i1 %.not521, label %iter.check836, label %.split412.us, !prof !41, !nosanitize !16

iter.check836:                                    ; preds = %389
  %395 = add i32 %91, %280
  %396 = add i32 %395, %245
  %397 = sub i32 %396, %393
  %398 = zext i32 %397 to i64
  %399 = add nuw nsw i64 %398, 1
  %min.iters.check819 = icmp ult i32 %397, 3
  br i1 %min.iters.check819, label %.split412.preheader, label %vector.memcheck817

vector.memcheck817:                               ; preds = %iter.check836
  %400 = trunc i64 %285 to i32
  %401 = add i32 %85, %400
  %402 = add i32 %87, %280
  %403 = add i32 %402, %245
  %404 = sub i32 %401, %403
  %405 = zext i32 %404 to i64
  %406 = add i64 %43, %405
  %407 = sub i64 %285, %406
  %diff.check818 = icmp ult i64 %407, 32
  br i1 %diff.check818, label %.split412.preheader, label %vector.main.loop.iter.check820

vector.main.loop.iter.check820:                   ; preds = %vector.memcheck817
  %min.iters.check821 = icmp ult i32 %397, 31
  br i1 %min.iters.check821, label %vec.epilog.ph840, label %vector.ph822

vector.ph822:                                     ; preds = %vector.main.loop.iter.check820
  %n.mod.vf823 = and i64 %399, 28
  %n.vec824 = and i64 %399, 8589934560
  %408 = getelementptr i8, ptr %98, i64 %n.vec824
  %409 = getelementptr i8, ptr %382, i64 %n.vec824
  br label %vector.body825

vector.body825:                                   ; preds = %vector.body825, %vector.ph822
  %index826 = phi i64 [ 0, %vector.ph822 ], [ %index.next831, %vector.body825 ]
  %next.gep827 = getelementptr i8, ptr %98, i64 %index826
  %next.gep828 = getelementptr i8, ptr %382, i64 %index826
  %410 = getelementptr i8, ptr %next.gep828, i64 16
  %wide.load829 = load <16 x i8>, ptr %next.gep828, align 1, !tbaa !33
  %wide.load830 = load <16 x i8>, ptr %410, align 1, !tbaa !33
  %411 = getelementptr i8, ptr %next.gep827, i64 16
  store <16 x i8> %wide.load829, ptr %next.gep827, align 1, !tbaa !33
  store <16 x i8> %wide.load830, ptr %411, align 1, !tbaa !33
  %index.next831 = add nuw i64 %index826, 32
  %412 = icmp eq i64 %index.next831, %n.vec824
  br i1 %412, label %middle.block832, label %vector.body825, !llvm.loop !51

middle.block832:                                  ; preds = %vector.body825
  %cmp.n833 = icmp eq i64 %399, %n.vec824
  br i1 %cmp.n833, label %.loopexit895, label %vec.epilog.iter.check838

vec.epilog.iter.check838:                         ; preds = %middle.block832
  %min.epilog.iters.check839 = icmp eq i64 %n.mod.vf823, 0
  br i1 %min.epilog.iters.check839, label %.split412.preheader, label %vec.epilog.ph840, !prof !46

vec.epilog.ph840:                                 ; preds = %vector.main.loop.iter.check820, %vec.epilog.iter.check838
  %vec.epilog.resume.val834 = phi i64 [ %n.vec824, %vec.epilog.iter.check838 ], [ 0, %vector.main.loop.iter.check820 ]
  %n.vec842 = and i64 %399, 8589934588
  %413 = getelementptr i8, ptr %98, i64 %n.vec842
  %414 = getelementptr i8, ptr %382, i64 %n.vec842
  br label %vec.epilog.vector.body843

vec.epilog.vector.body843:                        ; preds = %vec.epilog.vector.body843, %vec.epilog.ph840
  %index844 = phi i64 [ %vec.epilog.resume.val834, %vec.epilog.ph840 ], [ %index.next848, %vec.epilog.vector.body843 ]
  %next.gep845 = getelementptr i8, ptr %98, i64 %index844
  %next.gep846 = getelementptr i8, ptr %382, i64 %index844
  %wide.load847 = load <4 x i8>, ptr %next.gep846, align 1, !tbaa !33
  store <4 x i8> %wide.load847, ptr %next.gep845, align 1, !tbaa !33
  %index.next848 = add nuw i64 %index844, 4
  %415 = icmp eq i64 %index.next848, %n.vec842
  br i1 %415, label %vec.epilog.middle.block849, label %vec.epilog.vector.body843, !llvm.loop !52

vec.epilog.middle.block849:                       ; preds = %vec.epilog.vector.body843
  %cmp.n850 = icmp eq i64 %399, %n.vec842
  br i1 %cmp.n850, label %.loopexit895, label %.split412.preheader

.split412.preheader:                              ; preds = %vector.memcheck817, %iter.check836, %vec.epilog.iter.check838, %vec.epilog.middle.block849
  %.ph899 = phi i64 [ 0, %iter.check836 ], [ 0, %vector.memcheck817 ], [ %n.vec824, %vec.epilog.iter.check838 ], [ %n.vec842, %vec.epilog.middle.block849 ]
  %.ph900 = phi ptr [ %98, %iter.check836 ], [ %98, %vector.memcheck817 ], [ %408, %vec.epilog.iter.check838 ], [ %413, %vec.epilog.middle.block849 ]
  %.ph901 = phi ptr [ %382, %iter.check836 ], [ %382, %vector.memcheck817 ], [ %409, %vec.epilog.iter.check838 ], [ %414, %vec.epilog.middle.block849 ]
  br label %.split412

.split412.us:                                     ; preds = %389
  %416 = load i8, ptr %382, align 1, !tbaa !33
  store i8 %416, ptr %98, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

.split412:                                        ; preds = %.split412.preheader, %.split412
  %417 = phi i64 [ %423, %.split412 ], [ %.ph899, %.split412.preheader ]
  %418 = phi ptr [ %421, %.split412 ], [ %.ph900, %.split412.preheader ]
  %419 = phi ptr [ %422, %.split412 ], [ %.ph901, %.split412.preheader ]
  %420 = load i8, ptr %419, align 1, !tbaa !33
  store i8 %420, ptr %418, align 1, !tbaa !33
  %421 = getelementptr inbounds nuw i8, ptr %418, i64 1
  %422 = getelementptr inbounds nuw i8, ptr %419, i64 1
  %423 = add nuw nsw i64 %417, 1
  %lftr.wideiv441 = trunc i64 %423 to i32
  %exitcond442 = icmp eq i32 %384, %lftr.wideiv441
  br i1 %exitcond442, label %.loopexit895, label %.split412, !llvm.loop !53

.loopexit895:                                     ; preds = %.split412, %vec.epilog.middle.block849, %middle.block832
  %.lcssa696 = phi ptr [ %413, %vec.epilog.middle.block849 ], [ %408, %middle.block832 ], [ %421, %.split412 ]
  %424 = zext i32 %394 to i64
  %425 = icmp ult i32 %40, %390
  br i1 %425, label %426, label %568

426:                                              ; preds = %.loopexit895
  br i1 %69, label %441, label %427

427:                                              ; preds = %426
  %.reass.reass = add i64 %285, %invariant.op
  %428 = add i64 %.reass.reass, %424
  %429 = icmp ult i64 %428, 32
  br i1 %429, label %441, label %.preheader661

.preheader661:                                    ; preds = %427, %.preheader661
  %430 = phi i64 [ %437, %.preheader661 ], [ 0, %427 ]
  %431 = getelementptr i8, ptr %.lcssa696, i64 %430
  %432 = getelementptr i8, ptr %42, i64 %430
  %433 = getelementptr i8, ptr %432, i64 16
  %434 = load <16 x i8>, ptr %432, align 1, !tbaa !33
  %435 = load <16 x i8>, ptr %433, align 1, !tbaa !33
  %436 = getelementptr i8, ptr %431, i64 16
  store <16 x i8> %434, ptr %431, align 1, !tbaa !33
  store <16 x i8> %435, ptr %436, align 1, !tbaa !33
  %437 = add nuw nsw i64 %430, 32
  %438 = icmp eq i64 %437, %70
  br i1 %438, label %439, label %.preheader661, !llvm.loop !54

439:                                              ; preds = %.preheader661
  %440 = getelementptr i8, ptr %.lcssa696, i64 %70
  br i1 %74, label %.loopexit44, label %441

441:                                              ; preds = %439, %427, %426
  %442 = phi ptr [ %.lcssa696, %427 ], [ %.lcssa696, %426 ], [ %440, %439 ]
  %443 = phi i32 [ %40, %427 ], [ %40, %426 ], [ %72, %439 ]
  %444 = phi ptr [ %42, %427 ], [ %42, %426 ], [ %73, %439 ]
  %445 = add i32 %443, -1
  %446 = and i32 %443, 7
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %.loopexit46, label %.preheader45

.preheader45:                                     ; preds = %441, %.preheader45
  %448 = phi ptr [ %452, %.preheader45 ], [ %442, %441 ]
  %449 = phi ptr [ %453, %.preheader45 ], [ %444, %441 ]
  %450 = phi i32 [ %454, %.preheader45 ], [ 0, %441 ]
  %451 = load i8, ptr %449, align 1, !tbaa !33
  %452 = getelementptr inbounds nuw i8, ptr %448, i64 1
  store i8 %451, ptr %448, align 1, !tbaa !33
  %453 = getelementptr inbounds nuw i8, ptr %449, i64 1
  %454 = add nuw nsw i32 %450, 1
  %455 = icmp eq i32 %454, %446
  br i1 %455, label %.loopexit46.loopexit, label %.preheader45, !llvm.loop !55

.loopexit46.loopexit:                             ; preds = %.preheader45
  %456 = and i32 %443, -8
  br label %.loopexit46

.loopexit46:                                      ; preds = %.loopexit46.loopexit, %441
  %457 = phi ptr [ poison, %441 ], [ %452, %.loopexit46.loopexit ]
  %458 = phi ptr [ %442, %441 ], [ %452, %.loopexit46.loopexit ]
  %459 = phi i32 [ %443, %441 ], [ %456, %.loopexit46.loopexit ]
  %460 = phi ptr [ %444, %441 ], [ %453, %.loopexit46.loopexit ]
  %461 = icmp ult i32 %445, 7
  br i1 %461, label %.loopexit44, label %.preheader43

.preheader43:                                     ; preds = %.loopexit46, %.preheader43
  %462 = phi ptr [ %487, %.preheader43 ], [ %458, %.loopexit46 ]
  %463 = phi i32 [ %488, %.preheader43 ], [ %459, %.loopexit46 ]
  %464 = phi ptr [ %489, %.preheader43 ], [ %460, %.loopexit46 ]
  %465 = load i8, ptr %464, align 1, !tbaa !33
  %466 = getelementptr inbounds nuw i8, ptr %462, i64 1
  store i8 %465, ptr %462, align 1, !tbaa !33
  %467 = getelementptr inbounds nuw i8, ptr %464, i64 1
  %468 = load i8, ptr %467, align 1, !tbaa !33
  %469 = getelementptr inbounds nuw i8, ptr %462, i64 2
  store i8 %468, ptr %466, align 1, !tbaa !33
  %470 = getelementptr inbounds nuw i8, ptr %464, i64 2
  %471 = load i8, ptr %470, align 1, !tbaa !33
  %472 = getelementptr inbounds nuw i8, ptr %462, i64 3
  store i8 %471, ptr %469, align 1, !tbaa !33
  %473 = getelementptr inbounds nuw i8, ptr %464, i64 3
  %474 = load i8, ptr %473, align 1, !tbaa !33
  %475 = getelementptr inbounds nuw i8, ptr %462, i64 4
  store i8 %474, ptr %472, align 1, !tbaa !33
  %476 = getelementptr inbounds nuw i8, ptr %464, i64 4
  %477 = load i8, ptr %476, align 1, !tbaa !33
  %478 = getelementptr inbounds nuw i8, ptr %462, i64 5
  store i8 %477, ptr %475, align 1, !tbaa !33
  %479 = getelementptr inbounds nuw i8, ptr %464, i64 5
  %480 = load i8, ptr %479, align 1, !tbaa !33
  %481 = getelementptr inbounds nuw i8, ptr %462, i64 6
  store i8 %480, ptr %478, align 1, !tbaa !33
  %482 = getelementptr inbounds nuw i8, ptr %464, i64 6
  %483 = load i8, ptr %482, align 1, !tbaa !33
  %484 = getelementptr inbounds nuw i8, ptr %462, i64 7
  store i8 %483, ptr %481, align 1, !tbaa !33
  %485 = getelementptr inbounds nuw i8, ptr %464, i64 7
  %486 = load i8, ptr %485, align 1, !tbaa !33
  %487 = getelementptr inbounds nuw i8, ptr %462, i64 8
  store i8 %486, ptr %484, align 1, !tbaa !33
  %488 = add i32 %463, -8
  %489 = getelementptr inbounds nuw i8, ptr %464, i64 8
  %490 = icmp eq i32 %488, 0
  br i1 %490, label %.loopexit44, label %.preheader43, !llvm.loop !56

.loopexit44:                                      ; preds = %.preheader43, %.loopexit46, %439
  %491 = phi ptr [ %440, %439 ], [ %457, %.loopexit46 ], [ %487, %.preheader43 ]
  %492 = sub nuw nsw i32 %390, %40
  %493 = zext nneg i32 %281 to i64
  %494 = sub nsw i64 0, %493
  %495 = getelementptr inbounds i8, ptr %491, i64 %494
  br label %568

496:                                              ; preds = %372
  %497 = sub nuw i32 %40, %290
  %498 = zext i32 %497 to i64
  %499 = getelementptr inbounds nuw i8, ptr %42, i64 %498
  %500 = icmp ult i32 %290, %194
  br i1 %500, label %501, label %568

501:                                              ; preds = %496
  %502 = sub nuw nsw i32 %194, %290
  %503 = add i32 %78, %280
  %504 = add i32 %503, %245
  %505 = trunc i64 %285 to i32
  %506 = sub i32 %504, %505
  %.not520 = icmp ugt i32 %290, %506
  br i1 %.not520, label %iter.check875, label %.split375.us, !prof !41, !nosanitize !16

iter.check875:                                    ; preds = %501
  %507 = zext nneg i32 %290 to i64
  %min.iters.check856 = icmp samesign ult i32 %290, 4
  br i1 %min.iters.check856, label %.split375.preheader, label %vector.memcheck854

vector.memcheck854:                               ; preds = %iter.check875
  %508 = trunc i64 %285 to i32
  %509 = add i32 %92, %508
  %510 = add i32 %94, %280
  %511 = add i32 %510, %245
  %512 = sub i32 %509, %511
  %513 = zext i32 %512 to i64
  %514 = add i64 %43, %513
  %515 = sub i64 %285, %514
  %diff.check855 = icmp ult i64 %515, 32
  br i1 %diff.check855, label %.split375.preheader, label %vector.main.loop.iter.check857

vector.main.loop.iter.check857:                   ; preds = %vector.memcheck854
  %min.iters.check858 = icmp samesign ult i32 %290, 32
  br i1 %min.iters.check858, label %vec.epilog.ph879, label %vector.ph859

vector.ph859:                                     ; preds = %vector.main.loop.iter.check857
  %n.mod.vf860 = and i64 %507, 28
  %n.vec861 = and i64 %507, 2147483616
  %516 = getelementptr i8, ptr %98, i64 %n.vec861
  %.cast862 = trunc nuw nsw i64 %n.vec861 to i32
  %517 = sub nsw i32 %290, %.cast862
  %518 = getelementptr i8, ptr %499, i64 %n.vec861
  br label %vector.body863

vector.body863:                                   ; preds = %vector.body863, %vector.ph859
  %index864 = phi i64 [ 0, %vector.ph859 ], [ %index.next869, %vector.body863 ]
  %next.gep865 = getelementptr i8, ptr %98, i64 %index864
  %next.gep866 = getelementptr i8, ptr %499, i64 %index864
  %519 = getelementptr i8, ptr %next.gep866, i64 16
  %wide.load867 = load <16 x i8>, ptr %next.gep866, align 1, !tbaa !33
  %wide.load868 = load <16 x i8>, ptr %519, align 1, !tbaa !33
  %520 = getelementptr i8, ptr %next.gep865, i64 16
  store <16 x i8> %wide.load867, ptr %next.gep865, align 1, !tbaa !33
  store <16 x i8> %wide.load868, ptr %520, align 1, !tbaa !33
  %index.next869 = add nuw i64 %index864, 32
  %521 = icmp eq i64 %index.next869, %n.vec861
  br i1 %521, label %middle.block870, label %vector.body863, !llvm.loop !57

middle.block870:                                  ; preds = %vector.body863
  %cmp.n871 = icmp eq i64 %n.vec861, %507
  br i1 %cmp.n871, label %.loopexit896, label %vec.epilog.iter.check877

vec.epilog.iter.check877:                         ; preds = %middle.block870
  %min.epilog.iters.check878 = icmp eq i64 %n.mod.vf860, 0
  br i1 %min.epilog.iters.check878, label %.split375.preheader, label %vec.epilog.ph879, !prof !46

vec.epilog.ph879:                                 ; preds = %vector.main.loop.iter.check857, %vec.epilog.iter.check877
  %vec.epilog.resume.val872 = phi i64 [ %n.vec861, %vec.epilog.iter.check877 ], [ 0, %vector.main.loop.iter.check857 ]
  %n.vec881 = and i64 %507, 2147483644
  %522 = getelementptr i8, ptr %98, i64 %n.vec881
  %.cast882 = trunc nuw nsw i64 %n.vec881 to i32
  %523 = sub nsw i32 %290, %.cast882
  %524 = getelementptr i8, ptr %499, i64 %n.vec881
  br label %vec.epilog.vector.body883

vec.epilog.vector.body883:                        ; preds = %vec.epilog.vector.body883, %vec.epilog.ph879
  %index884 = phi i64 [ %vec.epilog.resume.val872, %vec.epilog.ph879 ], [ %index.next888, %vec.epilog.vector.body883 ]
  %next.gep885 = getelementptr i8, ptr %98, i64 %index884
  %next.gep886 = getelementptr i8, ptr %499, i64 %index884
  %wide.load887 = load <4 x i8>, ptr %next.gep886, align 1, !tbaa !33
  store <4 x i8> %wide.load887, ptr %next.gep885, align 1, !tbaa !33
  %index.next888 = add nuw i64 %index884, 4
  %525 = icmp eq i64 %index.next888, %n.vec881
  br i1 %525, label %vec.epilog.middle.block889, label %vec.epilog.vector.body883, !llvm.loop !58

vec.epilog.middle.block889:                       ; preds = %vec.epilog.vector.body883
  %cmp.n890 = icmp eq i64 %n.vec881, %507
  br i1 %cmp.n890, label %.loopexit896, label %.split375.preheader

.split375.preheader:                              ; preds = %vector.memcheck854, %iter.check875, %vec.epilog.iter.check877, %vec.epilog.middle.block889
  %.ph902 = phi ptr [ %98, %iter.check875 ], [ %98, %vector.memcheck854 ], [ %516, %vec.epilog.iter.check877 ], [ %522, %vec.epilog.middle.block889 ]
  %.ph903 = phi i32 [ %290, %iter.check875 ], [ %290, %vector.memcheck854 ], [ %517, %vec.epilog.iter.check877 ], [ %523, %vec.epilog.middle.block889 ]
  %.ph904 = phi ptr [ %499, %iter.check875 ], [ %499, %vector.memcheck854 ], [ %518, %vec.epilog.iter.check877 ], [ %524, %vec.epilog.middle.block889 ]
  %526 = add i32 %.ph903, -1
  %xtraiter1045 = and i32 %.ph903, 7
  %lcmp.mod1046.not = icmp eq i32 %xtraiter1045, 0
  br i1 %lcmp.mod1046.not, label %.split375.prol.loopexit, label %.split375.prol

.split375.prol:                                   ; preds = %.split375.preheader, %.split375.prol
  %527 = phi ptr [ %531, %.split375.prol ], [ %.ph902, %.split375.preheader ]
  %528 = phi i32 [ %532, %.split375.prol ], [ %.ph903, %.split375.preheader ]
  %529 = phi ptr [ %533, %.split375.prol ], [ %.ph904, %.split375.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.split375.prol ], [ 0, %.split375.preheader ]
  %530 = load i8, ptr %529, align 1, !tbaa !33
  store i8 %530, ptr %527, align 1, !tbaa !33
  %531 = getelementptr inbounds nuw i8, ptr %527, i64 1
  %532 = add i32 %528, -1
  %533 = getelementptr inbounds nuw i8, ptr %529, i64 1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1045
  br i1 %prol.iter.cmp.not, label %.split375.prol.loopexit, label %.split375.prol, !llvm.loop !59

.split375.prol.loopexit:                          ; preds = %.split375.prol, %.split375.preheader
  %.lcssa938.unr = phi ptr [ poison, %.split375.preheader ], [ %531, %.split375.prol ]
  %.unr1047 = phi ptr [ %.ph902, %.split375.preheader ], [ %531, %.split375.prol ]
  %.unr1048 = phi i32 [ %.ph903, %.split375.preheader ], [ %532, %.split375.prol ]
  %.unr1049 = phi ptr [ %.ph904, %.split375.preheader ], [ %533, %.split375.prol ]
  %534 = icmp ult i32 %526, 7
  br i1 %534, label %.loopexit896, label %.split375

.split375.us:                                     ; preds = %501
  %535 = load i8, ptr %499, align 1, !tbaa !33
  store i8 %535, ptr %98, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

.split375:                                        ; preds = %.split375.prol.loopexit, %.split375
  %536 = phi ptr [ %561, %.split375 ], [ %.unr1047, %.split375.prol.loopexit ]
  %537 = phi i32 [ %562, %.split375 ], [ %.unr1048, %.split375.prol.loopexit ]
  %538 = phi ptr [ %563, %.split375 ], [ %.unr1049, %.split375.prol.loopexit ]
  %539 = load i8, ptr %538, align 1, !tbaa !33
  store i8 %539, ptr %536, align 1, !tbaa !33
  %540 = getelementptr inbounds nuw i8, ptr %536, i64 1
  %541 = getelementptr inbounds nuw i8, ptr %538, i64 1
  %542 = load i8, ptr %541, align 1, !tbaa !33
  store i8 %542, ptr %540, align 1, !tbaa !33
  %543 = getelementptr inbounds nuw i8, ptr %536, i64 2
  %544 = getelementptr inbounds nuw i8, ptr %538, i64 2
  %545 = load i8, ptr %544, align 1, !tbaa !33
  store i8 %545, ptr %543, align 1, !tbaa !33
  %546 = getelementptr inbounds nuw i8, ptr %536, i64 3
  %547 = getelementptr inbounds nuw i8, ptr %538, i64 3
  %548 = load i8, ptr %547, align 1, !tbaa !33
  store i8 %548, ptr %546, align 1, !tbaa !33
  %549 = getelementptr inbounds nuw i8, ptr %536, i64 4
  %550 = getelementptr inbounds nuw i8, ptr %538, i64 4
  %551 = load i8, ptr %550, align 1, !tbaa !33
  store i8 %551, ptr %549, align 1, !tbaa !33
  %552 = getelementptr inbounds nuw i8, ptr %536, i64 5
  %553 = getelementptr inbounds nuw i8, ptr %538, i64 5
  %554 = load i8, ptr %553, align 1, !tbaa !33
  store i8 %554, ptr %552, align 1, !tbaa !33
  %555 = getelementptr inbounds nuw i8, ptr %536, i64 6
  %556 = getelementptr inbounds nuw i8, ptr %538, i64 6
  %557 = load i8, ptr %556, align 1, !tbaa !33
  store i8 %557, ptr %555, align 1, !tbaa !33
  %558 = getelementptr inbounds nuw i8, ptr %536, i64 7
  %559 = getelementptr inbounds nuw i8, ptr %538, i64 7
  %560 = load i8, ptr %559, align 1, !tbaa !33
  store i8 %560, ptr %558, align 1, !tbaa !33
  %561 = getelementptr inbounds nuw i8, ptr %536, i64 8
  %562 = add i32 %537, -8
  %563 = getelementptr inbounds nuw i8, ptr %538, i64 8
  %564 = icmp eq i32 %562, 0
  br i1 %564, label %.loopexit896, label %.split375, !llvm.loop !60

.loopexit896:                                     ; preds = %.split375.prol.loopexit, %.split375, %vec.epilog.middle.block889, %middle.block870
  %.lcssa695 = phi ptr [ %522, %vec.epilog.middle.block889 ], [ %516, %middle.block870 ], [ %.lcssa938.unr, %.split375.prol.loopexit ], [ %561, %.split375 ]
  %565 = zext nneg i32 %281 to i64
  %566 = sub nsw i64 0, %565
  %567 = getelementptr inbounds i8, ptr %.lcssa695, i64 %566
  br label %568

568:                                              ; preds = %.loopexit896, %496, %.loopexit44, %.loopexit895, %387, %.loopexit894, %300
  %569 = phi ptr [ %.lcssa700, %.loopexit894 ], [ %98, %300 ], [ %491, %.loopexit44 ], [ %.lcssa696, %.loopexit895 ], [ %98, %387 ], [ %.lcssa695, %.loopexit896 ], [ %98, %496 ]
  %570 = phi i32 [ %306, %.loopexit894 ], [ %194, %300 ], [ %492, %.loopexit44 ], [ %390, %.loopexit895 ], [ %194, %387 ], [ %502, %.loopexit896 ], [ %194, %496 ]
  %571 = phi ptr [ %371, %.loopexit894 ], [ %303, %300 ], [ %495, %.loopexit44 ], [ %42, %.loopexit895 ], [ %382, %387 ], [ %567, %.loopexit896 ], [ %499, %496 ]
  %572 = icmp ugt i32 %570, 2
  br i1 %572, label %573, label %.loopexit

573:                                              ; preds = %568
  %574 = add nsw i32 %570, -3
  %575 = udiv i32 %574, 3
  %576 = and i32 %575, 1
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %578, label %588

578:                                              ; preds = %573
  %579 = getelementptr inbounds nuw i8, ptr %571, i64 1
  %580 = load i8, ptr %571, align 1, !tbaa !33
  %581 = getelementptr inbounds nuw i8, ptr %569, i64 1
  store i8 %580, ptr %569, align 1, !tbaa !33
  %582 = getelementptr inbounds nuw i8, ptr %571, i64 2
  %583 = load i8, ptr %579, align 1, !tbaa !33
  %584 = getelementptr inbounds nuw i8, ptr %569, i64 2
  store i8 %583, ptr %581, align 1, !tbaa !33
  %585 = load i8, ptr %582, align 1, !tbaa !33
  store i8 %585, ptr %584, align 1, !tbaa !33
  %586 = getelementptr inbounds nuw i8, ptr %569, i64 3
  %587 = getelementptr inbounds nuw i8, ptr %571, i64 3
  br label %588

588:                                              ; preds = %578, %573
  %589 = phi ptr [ %571, %573 ], [ %587, %578 ]
  %590 = phi i32 [ %570, %573 ], [ %574, %578 ]
  %591 = phi ptr [ %569, %573 ], [ %586, %578 ]
  %592 = phi ptr [ poison, %573 ], [ %586, %578 ]
  %593 = phi ptr [ poison, %573 ], [ %587, %578 ]
  %594 = icmp ult i32 %574, 3
  br i1 %594, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %588, %.preheader
  %595 = phi ptr [ %616, %.preheader ], [ %589, %588 ]
  %596 = phi i32 [ %614, %.preheader ], [ %590, %588 ]
  %597 = phi ptr [ %615, %.preheader ], [ %591, %588 ]
  %598 = getelementptr inbounds nuw i8, ptr %595, i64 1
  %599 = load i8, ptr %595, align 1, !tbaa !33
  %600 = getelementptr inbounds nuw i8, ptr %597, i64 1
  store i8 %599, ptr %597, align 1, !tbaa !33
  %601 = getelementptr inbounds nuw i8, ptr %595, i64 2
  %602 = load i8, ptr %598, align 1, !tbaa !33
  %603 = getelementptr inbounds nuw i8, ptr %597, i64 2
  store i8 %602, ptr %600, align 1, !tbaa !33
  %604 = load i8, ptr %601, align 1, !tbaa !33
  store i8 %604, ptr %603, align 1, !tbaa !33
  %605 = getelementptr inbounds nuw i8, ptr %597, i64 3
  %606 = getelementptr inbounds nuw i8, ptr %595, i64 3
  %607 = getelementptr inbounds nuw i8, ptr %595, i64 4
  %608 = load i8, ptr %606, align 1, !tbaa !33
  %609 = getelementptr inbounds nuw i8, ptr %597, i64 4
  store i8 %608, ptr %605, align 1, !tbaa !33
  %610 = getelementptr inbounds nuw i8, ptr %595, i64 5
  %611 = load i8, ptr %607, align 1, !tbaa !33
  %612 = getelementptr inbounds nuw i8, ptr %597, i64 5
  store i8 %611, ptr %609, align 1, !tbaa !33
  %613 = load i8, ptr %610, align 1, !tbaa !33
  store i8 %613, ptr %612, align 1, !tbaa !33
  %614 = add i32 %596, -6
  %615 = getelementptr inbounds nuw i8, ptr %597, i64 6
  %616 = getelementptr inbounds nuw i8, ptr %595, i64 6
  %617 = icmp ugt i32 %614, 2
  br i1 %617, label %.preheader, label %.loopexit, !llvm.loop !61

.loopexit:                                        ; preds = %.preheader, %588, %568
  %618 = phi ptr [ %569, %568 ], [ %592, %588 ], [ %615, %.preheader ]
  %619 = phi i32 [ %570, %568 ], [ %574, %588 ], [ %614, %.preheader ]
  %620 = phi ptr [ %571, %568 ], [ %593, %588 ], [ %616, %.preheader ]
  %621 = icmp eq i32 %619, 0
  br i1 %621, label %737, label %622

622:                                              ; preds = %.loopexit
  %623 = load i8, ptr %620, align 1, !tbaa !33
  %624 = getelementptr inbounds nuw i8, ptr %618, i64 1
  store i8 %623, ptr %618, align 1, !tbaa !33
  %625 = icmp eq i32 %619, 2
  br i1 %625, label %626, label %737

626:                                              ; preds = %622
  %627 = getelementptr inbounds nuw i8, ptr %620, i64 1
  %628 = load i8, ptr %627, align 1, !tbaa !33
  %629 = getelementptr inbounds nuw i8, ptr %618, i64 2
  store i8 %628, ptr %624, align 1, !tbaa !33
  br label %737

630:                                              ; preds = %273
  %631 = zext nneg i32 %281 to i64
  %632 = sub nsw i64 0, %631
  %633 = getelementptr inbounds i8, ptr %98, i64 %632
  %634 = udiv i32 %194, 3
  %635 = add nsw i32 %194, -3
  %umin = tail call i32 @llvm.umin.i32(i32 %635, i32 2)
  %636 = xor i32 %umin, -1
  %637 = add nsw i32 %194, %636
  %638 = udiv i32 %637, 3
  %.not = icmp samesign ugt i32 %634, %638
  br i1 %.not, label %.split.preheader, label %.split.us, !prof !41, !nosanitize !16

.split.preheader:                                 ; preds = %630
  %639 = and i32 %638, 1
  %lcmp.mod.not.not = icmp eq i32 %639, 0
  br i1 %lcmp.mod.not.not, label %.split.prol, label %.split.prol.loopexit

.split.prol:                                      ; preds = %.split.preheader
  %640 = getelementptr inbounds nuw i8, ptr %633, i64 1
  %641 = load i8, ptr %633, align 1, !tbaa !33
  %642 = getelementptr inbounds nuw i8, ptr %98, i64 1
  store i8 %641, ptr %98, align 1, !tbaa !33
  %643 = getelementptr inbounds nuw i8, ptr %633, i64 2
  %644 = load i8, ptr %640, align 1, !tbaa !33
  %645 = getelementptr inbounds nuw i8, ptr %98, i64 2
  store i8 %644, ptr %642, align 1, !tbaa !33
  %646 = load i8, ptr %643, align 1, !tbaa !33
  store i8 %646, ptr %645, align 1, !tbaa !33
  %647 = add nsw i32 %194, -3
  %648 = getelementptr inbounds nuw i8, ptr %98, i64 3
  %649 = getelementptr inbounds nuw i8, ptr %633, i64 3
  br label %.split.prol.loopexit

.split.prol.loopexit:                             ; preds = %.split.prol, %.split.preheader
  %.unr = phi ptr [ %98, %.split.preheader ], [ %648, %.split.prol ]
  %.unr1043 = phi i32 [ %194, %.split.preheader ], [ %647, %.split.prol ]
  %.unr1044 = phi ptr [ %633, %.split.preheader ], [ %649, %.split.prol ]
  %.lcssa935.unr = phi ptr [ poison, %.split.preheader ], [ %648, %.split.prol ]
  %.lcssa934.unr = phi ptr [ poison, %.split.preheader ], [ %649, %.split.prol ]
  %650 = icmp ult i32 %637, 3
  br i1 %650, label %683, label %.split

.split.us:                                        ; preds = %630
  %651 = getelementptr inbounds nuw i8, ptr %633, i64 1
  %652 = load i8, ptr %633, align 1, !tbaa !33
  %653 = getelementptr inbounds nuw i8, ptr %98, i64 1
  store i8 %652, ptr %98, align 1, !tbaa !33
  %654 = getelementptr inbounds nuw i8, ptr %633, i64 2
  %655 = load i8, ptr %651, align 1, !tbaa !33
  %656 = getelementptr inbounds nuw i8, ptr %98, i64 2
  store i8 %655, ptr %653, align 1, !tbaa !33
  %657 = load i8, ptr %654, align 1, !tbaa !33
  store i8 %657, ptr %656, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

.split:                                           ; preds = %.split.prol.loopexit, %.split
  %658 = phi ptr [ %678, %.split ], [ %.unr, %.split.prol.loopexit ]
  %659 = phi i32 [ %677, %.split ], [ %.unr1043, %.split.prol.loopexit ]
  %660 = phi ptr [ %679, %.split ], [ %.unr1044, %.split.prol.loopexit ]
  %661 = getelementptr inbounds nuw i8, ptr %660, i64 1
  %662 = load i8, ptr %660, align 1, !tbaa !33
  %663 = getelementptr inbounds nuw i8, ptr %658, i64 1
  store i8 %662, ptr %658, align 1, !tbaa !33
  %664 = getelementptr inbounds nuw i8, ptr %660, i64 2
  %665 = load i8, ptr %661, align 1, !tbaa !33
  %666 = getelementptr inbounds nuw i8, ptr %658, i64 2
  store i8 %665, ptr %663, align 1, !tbaa !33
  %667 = load i8, ptr %664, align 1, !tbaa !33
  store i8 %667, ptr %666, align 1, !tbaa !33
  %668 = getelementptr inbounds nuw i8, ptr %658, i64 3
  %669 = getelementptr inbounds nuw i8, ptr %660, i64 3
  %670 = getelementptr inbounds nuw i8, ptr %660, i64 4
  %671 = load i8, ptr %669, align 1, !tbaa !33
  %672 = getelementptr inbounds nuw i8, ptr %658, i64 4
  store i8 %671, ptr %668, align 1, !tbaa !33
  %673 = getelementptr inbounds nuw i8, ptr %660, i64 5
  %674 = load i8, ptr %670, align 1, !tbaa !33
  %675 = getelementptr inbounds nuw i8, ptr %658, i64 5
  store i8 %674, ptr %672, align 1, !tbaa !33
  %676 = load i8, ptr %673, align 1, !tbaa !33
  store i8 %676, ptr %675, align 1, !tbaa !33
  %677 = add i32 %659, -6
  %678 = getelementptr inbounds nuw i8, ptr %658, i64 6
  %679 = getelementptr inbounds nuw i8, ptr %660, i64 6
  %680 = icmp ugt i32 %677, 2
  br i1 %680, label %.split, label %.unr-lcssa, !llvm.loop !62

.unr-lcssa:                                       ; preds = %.split
  %681 = getelementptr inbounds nuw i8, ptr %658, i64 3
  %682 = getelementptr inbounds nuw i8, ptr %660, i64 3
  br label %683

683:                                              ; preds = %.split.prol.loopexit, %.unr-lcssa
  %.lcssa937 = phi ptr [ %98, %.split.prol.loopexit ], [ %681, %.unr-lcssa ]
  %.lcssa936 = phi ptr [ %633, %.split.prol.loopexit ], [ %682, %.unr-lcssa ]
  %.lcssa935 = phi ptr [ %.lcssa935.unr, %.split.prol.loopexit ], [ %678, %.unr-lcssa ]
  %.lcssa934 = phi ptr [ %.lcssa934.unr, %.split.prol.loopexit ], [ %679, %.unr-lcssa ]
  %.neg = mul i32 %638, -3
  %684 = add i32 %.neg, %635
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %737, label %686

686:                                              ; preds = %683
  %687 = load i8, ptr %.lcssa934, align 1, !tbaa !33
  %688 = getelementptr inbounds nuw i8, ptr %.lcssa937, i64 4
  store i8 %687, ptr %.lcssa935, align 1, !tbaa !33
  %689 = icmp eq i32 %684, 2
  br i1 %689, label %690, label %737

690:                                              ; preds = %686
  %691 = getelementptr inbounds nuw i8, ptr %.lcssa936, i64 4
  %692 = load i8, ptr %691, align 1, !tbaa !33
  %693 = getelementptr inbounds nuw i8, ptr %.lcssa937, i64 5
  store i8 %692, ptr %688, align 1, !tbaa !33
  br label %737

694:                                              ; preds = %233
  %695 = and i32 %239, 64
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %697, label %.loopexit47

697:                                              ; preds = %694
  %698 = shl nsw i32 -1, %239
  %699 = xor i32 %698, -1
  %700 = getelementptr inbounds nuw i8, ptr %236, i64 2
  %701 = load i16, ptr %700, align 2, !tbaa !39
  %702 = zext i16 %701 to i64
  %703 = getelementptr inbounds nuw [4 x i8], ptr %51, i64 %702
  %704 = zext nneg i32 %699 to i64
  %705 = and i64 %235, %704
  %706 = getelementptr inbounds nuw [4 x i8], ptr %703, i64 %705
  %707 = getelementptr inbounds nuw i8, ptr %706, i64 1
  %708 = load i8, ptr %707, align 1, !tbaa !34
  %709 = zext i8 %708 to i32
  %710 = zext nneg i8 %708 to i64
  %711 = lshr i64 %235, %710
  %712 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %237, i32 %709), !nosanitize !16
  %713 = extractvalue { i32, i1 } %712, 1, !nosanitize !16
  br i1 %713, label %.loopexit48, label %233, !prof !63, !nosanitize !16

714:                                              ; preds = %151
  %715 = and i32 %144, 64
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %717, label %734

717:                                              ; preds = %714
  %718 = shl nsw i32 -1, %144
  %719 = xor i32 %718, -1
  %720 = getelementptr inbounds nuw i8, ptr %141, i64 2
  %721 = load i16, ptr %720, align 2, !tbaa !39
  %722 = zext i16 %721 to i64
  %723 = getelementptr inbounds nuw [4 x i8], ptr %49, i64 %722
  %724 = zext nneg i32 %719 to i64
  %725 = and i64 %140, %724
  %726 = getelementptr inbounds nuw [4 x i8], ptr %723, i64 %725
  %727 = getelementptr inbounds nuw i8, ptr %726, i64 1
  %728 = load i8, ptr %727, align 1, !tbaa !34
  %729 = zext i8 %728 to i32
  %730 = zext nneg i8 %728 to i64
  %731 = lshr i64 %140, %730
  %732 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %142, i32 %729), !nosanitize !16
  %733 = extractvalue { i32, i1 } %732, 1, !nosanitize !16
  br i1 %733, label %.loopexit49, label %138, !prof !63, !nosanitize !16

734:                                              ; preds = %714
  %735 = and i32 %144, 32
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %.loopexit47, label %750

737:                                              ; preds = %690, %686, %683, %626, %622, %.loopexit, %146
  %738 = phi i32 [ %142, %146 ], [ %284, %626 ], [ %284, %622 ], [ %284, %.loopexit ], [ %284, %690 ], [ %284, %686 ], [ %284, %683 ]
  %739 = phi i64 [ %140, %146 ], [ %283, %626 ], [ %283, %622 ], [ %283, %.loopexit ], [ %283, %690 ], [ %283, %686 ], [ %283, %683 ]
  %740 = phi ptr [ %150, %146 ], [ %629, %626 ], [ %624, %622 ], [ %618, %.loopexit ], [ %693, %690 ], [ %688, %686 ], [ %.lcssa935, %683 ]
  %741 = phi ptr [ %127, %146 ], [ %276, %626 ], [ %276, %622 ], [ %276, %.loopexit ], [ %276, %690 ], [ %276, %686 ], [ %276, %683 ]
  %742 = icmp ult ptr %741, %14
  %743 = icmp ult ptr %740, %34
  %744 = select i1 %742, i1 %743, i1 false
  br i1 %744, label %95, label %.loopexit54, !llvm.loop !64

.loopexit47:                                      ; preds = %292, %694, %734
  %745 = phi ptr [ @.str.2, %734 ], [ @.str.1, %694 ], [ @.str, %292 ]
  %746 = phi i32 [ %142, %734 ], [ %237, %694 ], [ %284, %292 ]
  %747 = phi i64 [ %140, %734 ], [ %235, %694 ], [ %283, %292 ]
  %748 = phi ptr [ %127, %734 ], [ %222, %694 ], [ %276, %292 ]
  %749 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %745, ptr %749, align 8, !tbaa !65
  br label %750

750:                                              ; preds = %.loopexit47, %734
  %751 = phi i32 [ 16191, %734 ], [ 16209, %.loopexit47 ]
  %752 = phi i32 [ %142, %734 ], [ %746, %.loopexit47 ]
  %753 = phi i64 [ %140, %734 ], [ %747, %.loopexit47 ]
  %754 = phi ptr [ %127, %734 ], [ %748, %.loopexit47 ]
  %755 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %751, ptr %755, align 8, !tbaa !66
  br label %.loopexit54

.loopexit54:                                      ; preds = %737, %750
  %756 = phi i32 [ %752, %750 ], [ %738, %737 ]
  %757 = phi i64 [ %753, %750 ], [ %739, %737 ]
  %758 = phi ptr [ %98, %750 ], [ %740, %737 ]
  %759 = phi ptr [ %754, %750 ], [ %741, %737 ]
  %760 = lshr i32 %756, 3
  %761 = zext nneg i32 %760 to i64
  %762 = sub nsw i64 0, %761
  %763 = getelementptr inbounds i8, ptr %759, i64 %762
  %764 = and i32 %756, -8
  %765 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %756, i32 %764), !nosanitize !16
  %766 = extractvalue { i32, i1 } %765, 1, !nosanitize !16
  br i1 %766, label %767, label %769, !prof !17, !nosanitize !16

767:                                              ; preds = %.loopexit54
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

768:                                              ; preds = %794, %777
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

769:                                              ; preds = %.loopexit54
  store ptr %763, ptr %0, align 8, !tbaa !14
  store ptr %758, ptr %15, align 8, !tbaa !18
  %770 = icmp ult ptr %763, %14
  br i1 %770, label %771, label %777

771:                                              ; preds = %769
  %772 = ptrtoint ptr %14 to i64
  %773 = ptrtoint ptr %763 to i64
  %774 = sub i64 %772, %773
  %775 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %774, i64 5), !nosanitize !16
  %776 = extractvalue { i64, i1 } %775, 1, !nosanitize !16
  br i1 %776, label %.loopexit53, label %783, !prof !17, !nosanitize !16

777:                                              ; preds = %769
  %778 = ptrtoint ptr %763 to i64
  %779 = ptrtoint ptr %14 to i64
  %780 = sub i64 %778, %779
  %781 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 5, i64 %780), !nosanitize !16
  %782 = extractvalue { i64, i1 } %781, 1, !nosanitize !16
  br i1 %782, label %768, label %783, !prof !17, !nosanitize !16

783:                                              ; preds = %777, %771
  %784 = phi { i64, i1 } [ %775, %771 ], [ %781, %777 ]
  %785 = extractvalue { i64, i1 } %784, 0
  %786 = trunc i64 %785 to i32
  store i32 %786, ptr %6, align 8, !tbaa !15
  %787 = icmp ult ptr %758, %34
  br i1 %787, label %788, label %794

788:                                              ; preds = %783
  %789 = ptrtoint ptr %34 to i64
  %790 = ptrtoint ptr %758 to i64
  %791 = sub i64 %789, %790
  %792 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %791, i64 257), !nosanitize !16
  %793 = extractvalue { i64, i1 } %792, 1, !nosanitize !16
  br i1 %793, label %.loopexit53, label %800, !prof !17, !nosanitize !16

794:                                              ; preds = %783
  %795 = ptrtoint ptr %758 to i64
  %796 = ptrtoint ptr %34 to i64
  %797 = sub i64 %795, %796
  %798 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 257, i64 %797), !nosanitize !16
  %799 = extractvalue { i64, i1 } %798, 1, !nosanitize !16
  br i1 %799, label %768, label %800, !prof !17, !nosanitize !16

800:                                              ; preds = %794, %788
  %801 = phi { i64, i1 } [ %792, %788 ], [ %798, %794 ]
  %802 = extractvalue { i64, i1 } %801, 0
  %803 = extractvalue { i32, i1 } %765, 0, !nosanitize !16
  %804 = shl nsw i32 -1, %803
  %805 = xor i32 %804, -1
  %806 = zext nneg i32 %805 to i64
  %807 = and i64 %757, %806
  %808 = trunc i64 %802 to i32
  store i32 %808, ptr %18, align 8, !tbaa !19
  store i64 %807, ptr %44, align 8, !tbaa !27
  store i32 %803, ptr %46, align 8, !tbaa !28
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nomerge noreturn nounwind }

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
!40 = !{!21, !11, i64 7144}
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
!53 = distinct !{!53, !43, !44}
!54 = distinct !{!54, !43, !44, !45}
!55 = distinct !{!55, !49}
!56 = distinct !{!56, !43, !44}
!57 = distinct !{!57, !43, !44, !45}
!58 = distinct !{!58, !43, !44, !45}
!59 = distinct !{!59, !49}
!60 = distinct !{!60, !43, !44}
!61 = distinct !{!61, !43}
!62 = distinct !{!62, !43}
!63 = !{!"branch_weights", i32 127, i32 134217473}
!64 = distinct !{!64, !43}
!65 = !{!6, !7, i64 48}
!66 = !{!21, !11, i64 8}
