; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_inffast.ll'
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

95:                                               ; preds = %741, %27
  %96 = phi i32 [ %47, %27 ], [ %742, %741 ]
  %97 = phi i64 [ %45, %27 ], [ %743, %741 ]
  %98 = phi ptr [ %16, %27 ], [ %744, %741 ]
  %99 = phi ptr [ %5, %27 ], [ %745, %741 ]
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

.loopexit49:                                      ; preds = %124, %721
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

138:                                              ; preds = %721, %135
  %139 = phi { i32, i1 } [ %736, %721 ], [ %133, %135 ]
  %140 = phi i64 [ %735, %721 ], [ %137, %135 ]
  %141 = phi ptr [ %730, %721 ], [ %129, %135 ]
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
  br label %741

151:                                              ; preds = %138
  %152 = and i32 %144, 16
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %718, label %154

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

.loopexit48:                                      ; preds = %219, %701
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

233:                                              ; preds = %701, %230
  %234 = phi { i32, i1 } [ %716, %701 ], [ %228, %230 ]
  %235 = phi i64 [ %715, %701 ], [ %232, %230 ]
  %236 = phi ptr [ %710, %701 ], [ %224, %230 ]
  %237 = extractvalue { i32, i1 } %234, 0
  %238 = load i8, ptr %236, align 2, !tbaa !38
  %239 = zext i8 %238 to i32
  %240 = and i32 %239, 16
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %698, label %242

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
  %284 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %274, i32 %246), !nosanitize !16
  %285 = extractvalue { i32, i1 } %284, 0, !nosanitize !16
  %286 = extractvalue { i32, i1 } %284, 1, !nosanitize !16
  br i1 %286, label %287, label %288, !prof !17, !nosanitize !16

287:                                              ; preds = %273
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

288:                                              ; preds = %273
  %289 = ptrtoint ptr %98 to i64
  %290 = sub i64 %289, %62
  %291 = trunc i64 %290 to i32
  %292 = icmp ugt i32 %281, %291
  br i1 %292, label %293, label %634

293:                                              ; preds = %288
  %294 = sub nuw nsw i32 %281, %291
  %295 = icmp ugt i32 %294, %38
  br i1 %295, label %296, label %299

296:                                              ; preds = %293
  %297 = load i32, ptr %63, align 8, !tbaa !40
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %.loopexit47

299:                                              ; preds = %296, %293
  br i1 %64, label %300, label %376

300:                                              ; preds = %299
  %301 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %36, i32 %294), !nosanitize !16
  %302 = extractvalue { i32, i1 } %301, 1, !nosanitize !16
  br i1 %302, label %303, label %304, !prof !17, !nosanitize !16

303:                                              ; preds = %300
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

304:                                              ; preds = %300
  %305 = extractvalue { i32, i1 } %301, 0, !nosanitize !16
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds nuw i8, ptr %42, i64 %306
  %308 = icmp ult i32 %294, %194
  br i1 %308, label %309, label %572

309:                                              ; preds = %304
  %310 = sub nuw nsw i32 %194, %294
  %311 = add i32 %78, %280
  %312 = add i32 %311, %245
  %313 = trunc i64 %289 to i32
  %314 = sub i32 %312, %313
  %.not539 = icmp ugt i32 %294, %314
  br i1 %.not539, label %iter.check, label %.split460.us, !prof !41, !nosanitize !16

iter.check:                                       ; preds = %309
  %315 = zext nneg i32 %294 to i64
  %min.iters.check = icmp samesign ult i32 %294, 4
  br i1 %min.iters.check, label %.split460.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %316 = trunc i64 %289 to i32
  %317 = add i32 %81, %316
  %318 = add i32 %83, %280
  %319 = add i32 %318, %245
  %320 = sub i32 %317, %319
  %321 = zext i32 %320 to i64
  %322 = add i64 %43, %321
  %323 = sub i64 %289, %322
  %diff.check = icmp ult i64 %323, 32
  br i1 %diff.check, label %.split460.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check829 = icmp samesign ult i32 %294, 32
  br i1 %min.iters.check829, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %315, 28
  %n.vec = and i64 %315, 2147483616
  %324 = getelementptr i8, ptr %98, i64 %n.vec
  %.cast = trunc nuw nsw i64 %n.vec to i32
  %325 = sub nsw i32 %294, %.cast
  %326 = getelementptr i8, ptr %307, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i8, ptr %98, i64 %index
  %next.gep830 = getelementptr i8, ptr %307, i64 %index
  %327 = getelementptr i8, ptr %next.gep830, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep830, align 1, !tbaa !33
  %wide.load831 = load <16 x i8>, ptr %327, align 1, !tbaa !33
  %328 = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !33
  store <16 x i8> %wide.load831, ptr %328, align 1, !tbaa !33
  %index.next = add nuw i64 %index, 32
  %329 = icmp eq i64 %index.next, %n.vec
  br i1 %329, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %315
  br i1 %cmp.n, label %.loopexit923, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.split460.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec835 = and i64 %315, 2147483644
  %330 = getelementptr i8, ptr %98, i64 %n.vec835
  %.cast836 = trunc nuw nsw i64 %n.vec835 to i32
  %331 = sub nsw i32 %294, %.cast836
  %332 = getelementptr i8, ptr %307, i64 %n.vec835
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index837 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next841, %vec.epilog.vector.body ]
  %next.gep838 = getelementptr i8, ptr %98, i64 %index837
  %next.gep839 = getelementptr i8, ptr %307, i64 %index837
  %wide.load840 = load <4 x i8>, ptr %next.gep839, align 1, !tbaa !33
  store <4 x i8> %wide.load840, ptr %next.gep838, align 1, !tbaa !33
  %index.next841 = add nuw i64 %index837, 4
  %333 = icmp eq i64 %index.next841, %n.vec835
  br i1 %333, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !47

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n842 = icmp eq i64 %n.vec835, %315
  br i1 %cmp.n842, label %.loopexit923, label %.split460.preheader

.split460.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %98, %iter.check ], [ %98, %vector.memcheck ], [ %324, %vec.epilog.iter.check ], [ %330, %vec.epilog.middle.block ]
  %.ph926 = phi i32 [ %294, %iter.check ], [ %294, %vector.memcheck ], [ %325, %vec.epilog.iter.check ], [ %331, %vec.epilog.middle.block ]
  %.ph927 = phi ptr [ %307, %iter.check ], [ %307, %vector.memcheck ], [ %326, %vec.epilog.iter.check ], [ %332, %vec.epilog.middle.block ]
  %334 = add i32 %.ph926, -1
  %xtraiter1085 = and i32 %.ph926, 7
  %lcmp.mod1086.not = icmp eq i32 %xtraiter1085, 0
  br i1 %lcmp.mod1086.not, label %.split460.prol.loopexit, label %.split460.prol

.split460.prol:                                   ; preds = %.split460.preheader, %.split460.prol
  %335 = phi ptr [ %339, %.split460.prol ], [ %.ph, %.split460.preheader ]
  %336 = phi i32 [ %340, %.split460.prol ], [ %.ph926, %.split460.preheader ]
  %337 = phi ptr [ %341, %.split460.prol ], [ %.ph927, %.split460.preheader ]
  %prol.iter1087 = phi i32 [ %prol.iter1087.next, %.split460.prol ], [ 0, %.split460.preheader ]
  %338 = load i8, ptr %337, align 1, !tbaa !33
  store i8 %338, ptr %335, align 1, !tbaa !33
  %339 = getelementptr inbounds nuw i8, ptr %335, i64 1
  %340 = add i32 %336, -1
  %341 = getelementptr inbounds nuw i8, ptr %337, i64 1
  %prol.iter1087.next = add i32 %prol.iter1087, 1
  %prol.iter1087.cmp.not = icmp eq i32 %prol.iter1087.next, %xtraiter1085
  br i1 %prol.iter1087.cmp.not, label %.split460.prol.loopexit, label %.split460.prol, !llvm.loop !48

.split460.prol.loopexit:                          ; preds = %.split460.prol, %.split460.preheader
  %.lcssa972.unr = phi ptr [ poison, %.split460.preheader ], [ %339, %.split460.prol ]
  %.unr1088 = phi ptr [ %.ph, %.split460.preheader ], [ %339, %.split460.prol ]
  %.unr1089 = phi i32 [ %.ph926, %.split460.preheader ], [ %340, %.split460.prol ]
  %.unr1090 = phi ptr [ %.ph927, %.split460.preheader ], [ %341, %.split460.prol ]
  %342 = icmp ult i32 %334, 7
  br i1 %342, label %.loopexit923, label %.split460

.split460.us:                                     ; preds = %309
  %343 = load i8, ptr %307, align 1, !tbaa !33
  store i8 %343, ptr %98, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

.split460:                                        ; preds = %.split460.prol.loopexit, %.split460
  %344 = phi ptr [ %369, %.split460 ], [ %.unr1088, %.split460.prol.loopexit ]
  %345 = phi i32 [ %370, %.split460 ], [ %.unr1089, %.split460.prol.loopexit ]
  %346 = phi ptr [ %371, %.split460 ], [ %.unr1090, %.split460.prol.loopexit ]
  %347 = load i8, ptr %346, align 1, !tbaa !33
  store i8 %347, ptr %344, align 1, !tbaa !33
  %348 = getelementptr inbounds nuw i8, ptr %344, i64 1
  %349 = getelementptr inbounds nuw i8, ptr %346, i64 1
  %350 = load i8, ptr %349, align 1, !tbaa !33
  store i8 %350, ptr %348, align 1, !tbaa !33
  %351 = getelementptr inbounds nuw i8, ptr %344, i64 2
  %352 = getelementptr inbounds nuw i8, ptr %346, i64 2
  %353 = load i8, ptr %352, align 1, !tbaa !33
  store i8 %353, ptr %351, align 1, !tbaa !33
  %354 = getelementptr inbounds nuw i8, ptr %344, i64 3
  %355 = getelementptr inbounds nuw i8, ptr %346, i64 3
  %356 = load i8, ptr %355, align 1, !tbaa !33
  store i8 %356, ptr %354, align 1, !tbaa !33
  %357 = getelementptr inbounds nuw i8, ptr %344, i64 4
  %358 = getelementptr inbounds nuw i8, ptr %346, i64 4
  %359 = load i8, ptr %358, align 1, !tbaa !33
  store i8 %359, ptr %357, align 1, !tbaa !33
  %360 = getelementptr inbounds nuw i8, ptr %344, i64 5
  %361 = getelementptr inbounds nuw i8, ptr %346, i64 5
  %362 = load i8, ptr %361, align 1, !tbaa !33
  store i8 %362, ptr %360, align 1, !tbaa !33
  %363 = getelementptr inbounds nuw i8, ptr %344, i64 6
  %364 = getelementptr inbounds nuw i8, ptr %346, i64 6
  %365 = load i8, ptr %364, align 1, !tbaa !33
  store i8 %365, ptr %363, align 1, !tbaa !33
  %366 = getelementptr inbounds nuw i8, ptr %344, i64 7
  %367 = getelementptr inbounds nuw i8, ptr %346, i64 7
  %368 = load i8, ptr %367, align 1, !tbaa !33
  store i8 %368, ptr %366, align 1, !tbaa !33
  %369 = getelementptr inbounds nuw i8, ptr %344, i64 8
  %370 = add i32 %345, -8
  %371 = getelementptr inbounds nuw i8, ptr %346, i64 8
  %372 = icmp eq i32 %370, 0
  br i1 %372, label %.loopexit923, label %.split460, !llvm.loop !50

.loopexit923:                                     ; preds = %.split460.prol.loopexit, %.split460, %vec.epilog.middle.block, %middle.block
  %.lcssa723 = phi ptr [ %330, %vec.epilog.middle.block ], [ %324, %middle.block ], [ %.lcssa972.unr, %.split460.prol.loopexit ], [ %369, %.split460 ]
  %373 = zext nneg i32 %281 to i64
  %374 = sub nsw i64 0, %373
  %375 = getelementptr inbounds i8, ptr %.lcssa723, i64 %374
  br label %572

376:                                              ; preds = %299
  %377 = icmp ult i32 %40, %294
  br i1 %377, label %378, label %500

378:                                              ; preds = %376
  br i1 %66, label %.loopexit53, label %379, !prof !17, !nosanitize !16

.loopexit53:                                      ; preds = %378, %792, %775
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !16
  unreachable, !nosanitize !16

379:                                              ; preds = %378
  %380 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %67, i32 %294), !nosanitize !16
  %381 = extractvalue { i32, i1 } %380, 1, !nosanitize !16
  br i1 %381, label %382, label %383, !prof !17, !nosanitize !16

382:                                              ; preds = %379
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

383:                                              ; preds = %379
  %384 = extractvalue { i32, i1 } %380, 0, !nosanitize !16
  %385 = zext i32 %384 to i64
  %386 = getelementptr inbounds nuw i8, ptr %42, i64 %385
  %387 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %294, i32 %40), !nosanitize !16
  %388 = extractvalue { i32, i1 } %387, 0, !nosanitize !16
  %389 = extractvalue { i32, i1 } %387, 1, !nosanitize !16
  br i1 %389, label %390, label %391, !prof !17, !nosanitize !16

390:                                              ; preds = %383
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

391:                                              ; preds = %383
  %392 = icmp ult i32 %388, %194
  br i1 %392, label %393, label %572

393:                                              ; preds = %391
  %394 = sub nuw nsw i32 %194, %388
  %395 = add i32 %80, %280
  %396 = add i32 %395, %245
  %397 = trunc i64 %289 to i32
  %398 = sub i32 %396, %397
  %.not538 = icmp ugt i32 %388, %398
  br i1 %.not538, label %iter.check865, label %.split427.us, !prof !41, !nosanitize !16

iter.check865:                                    ; preds = %393
  %399 = add i32 %91, %280
  %400 = add i32 %399, %245
  %401 = sub i32 %400, %397
  %402 = zext i32 %401 to i64
  %403 = add nuw nsw i64 %402, 1
  %min.iters.check848 = icmp ult i32 %401, 3
  br i1 %min.iters.check848, label %.split427.preheader, label %vector.memcheck846

vector.memcheck846:                               ; preds = %iter.check865
  %404 = trunc i64 %289 to i32
  %405 = add i32 %85, %404
  %406 = add i32 %87, %280
  %407 = add i32 %406, %245
  %408 = sub i32 %405, %407
  %409 = zext i32 %408 to i64
  %410 = add i64 %43, %409
  %411 = sub i64 %289, %410
  %diff.check847 = icmp ult i64 %411, 32
  br i1 %diff.check847, label %.split427.preheader, label %vector.main.loop.iter.check849

vector.main.loop.iter.check849:                   ; preds = %vector.memcheck846
  %min.iters.check850 = icmp ult i32 %401, 31
  br i1 %min.iters.check850, label %vec.epilog.ph869, label %vector.ph851

vector.ph851:                                     ; preds = %vector.main.loop.iter.check849
  %n.mod.vf852 = and i64 %403, 28
  %n.vec853 = and i64 %403, 8589934560
  %412 = getelementptr i8, ptr %98, i64 %n.vec853
  %413 = getelementptr i8, ptr %386, i64 %n.vec853
  br label %vector.body854

vector.body854:                                   ; preds = %vector.body854, %vector.ph851
  %index855 = phi i64 [ 0, %vector.ph851 ], [ %index.next860, %vector.body854 ]
  %next.gep856 = getelementptr i8, ptr %98, i64 %index855
  %next.gep857 = getelementptr i8, ptr %386, i64 %index855
  %414 = getelementptr i8, ptr %next.gep857, i64 16
  %wide.load858 = load <16 x i8>, ptr %next.gep857, align 1, !tbaa !33
  %wide.load859 = load <16 x i8>, ptr %414, align 1, !tbaa !33
  %415 = getelementptr i8, ptr %next.gep856, i64 16
  store <16 x i8> %wide.load858, ptr %next.gep856, align 1, !tbaa !33
  store <16 x i8> %wide.load859, ptr %415, align 1, !tbaa !33
  %index.next860 = add nuw i64 %index855, 32
  %416 = icmp eq i64 %index.next860, %n.vec853
  br i1 %416, label %middle.block861, label %vector.body854, !llvm.loop !51

middle.block861:                                  ; preds = %vector.body854
  %cmp.n862 = icmp eq i64 %403, %n.vec853
  br i1 %cmp.n862, label %.loopexit924, label %vec.epilog.iter.check867

vec.epilog.iter.check867:                         ; preds = %middle.block861
  %min.epilog.iters.check868 = icmp eq i64 %n.mod.vf852, 0
  br i1 %min.epilog.iters.check868, label %.split427.preheader, label %vec.epilog.ph869, !prof !46

vec.epilog.ph869:                                 ; preds = %vector.main.loop.iter.check849, %vec.epilog.iter.check867
  %vec.epilog.resume.val863 = phi i64 [ %n.vec853, %vec.epilog.iter.check867 ], [ 0, %vector.main.loop.iter.check849 ]
  %n.vec871 = and i64 %403, 8589934588
  %417 = getelementptr i8, ptr %98, i64 %n.vec871
  %418 = getelementptr i8, ptr %386, i64 %n.vec871
  br label %vec.epilog.vector.body872

vec.epilog.vector.body872:                        ; preds = %vec.epilog.vector.body872, %vec.epilog.ph869
  %index873 = phi i64 [ %vec.epilog.resume.val863, %vec.epilog.ph869 ], [ %index.next877, %vec.epilog.vector.body872 ]
  %next.gep874 = getelementptr i8, ptr %98, i64 %index873
  %next.gep875 = getelementptr i8, ptr %386, i64 %index873
  %wide.load876 = load <4 x i8>, ptr %next.gep875, align 1, !tbaa !33
  store <4 x i8> %wide.load876, ptr %next.gep874, align 1, !tbaa !33
  %index.next877 = add nuw i64 %index873, 4
  %419 = icmp eq i64 %index.next877, %n.vec871
  br i1 %419, label %vec.epilog.middle.block878, label %vec.epilog.vector.body872, !llvm.loop !52

vec.epilog.middle.block878:                       ; preds = %vec.epilog.vector.body872
  %cmp.n879 = icmp eq i64 %403, %n.vec871
  br i1 %cmp.n879, label %.loopexit924, label %.split427.preheader

.split427.preheader:                              ; preds = %vector.memcheck846, %iter.check865, %vec.epilog.iter.check867, %vec.epilog.middle.block878
  %.ph928 = phi i64 [ 0, %iter.check865 ], [ 0, %vector.memcheck846 ], [ %n.vec853, %vec.epilog.iter.check867 ], [ %n.vec871, %vec.epilog.middle.block878 ]
  %.ph929 = phi ptr [ %98, %iter.check865 ], [ %98, %vector.memcheck846 ], [ %412, %vec.epilog.iter.check867 ], [ %417, %vec.epilog.middle.block878 ]
  %.ph930 = phi ptr [ %386, %iter.check865 ], [ %386, %vector.memcheck846 ], [ %413, %vec.epilog.iter.check867 ], [ %418, %vec.epilog.middle.block878 ]
  br label %.split427

.split427.us:                                     ; preds = %393
  %420 = load i8, ptr %386, align 1, !tbaa !33
  store i8 %420, ptr %98, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

.split427:                                        ; preds = %.split427.preheader, %.split427
  %421 = phi i64 [ %427, %.split427 ], [ %.ph928, %.split427.preheader ]
  %422 = phi ptr [ %425, %.split427 ], [ %.ph929, %.split427.preheader ]
  %423 = phi ptr [ %426, %.split427 ], [ %.ph930, %.split427.preheader ]
  %424 = load i8, ptr %423, align 1, !tbaa !33
  store i8 %424, ptr %422, align 1, !tbaa !33
  %425 = getelementptr inbounds nuw i8, ptr %422, i64 1
  %426 = getelementptr inbounds nuw i8, ptr %423, i64 1
  %427 = add nuw nsw i64 %421, 1
  %lftr.wideiv457 = trunc i64 %427 to i32
  %exitcond458 = icmp eq i32 %388, %lftr.wideiv457
  br i1 %exitcond458, label %.loopexit924, label %.split427, !llvm.loop !53

.loopexit924:                                     ; preds = %.split427, %vec.epilog.middle.block878, %middle.block861
  %.lcssa719 = phi ptr [ %417, %vec.epilog.middle.block878 ], [ %412, %middle.block861 ], [ %425, %.split427 ]
  %428 = zext i32 %398 to i64
  %429 = icmp ult i32 %40, %394
  br i1 %429, label %430, label %572

430:                                              ; preds = %.loopexit924
  br i1 %69, label %445, label %431

431:                                              ; preds = %430
  %.reass.reass = add i64 %289, %invariant.op
  %432 = add i64 %.reass.reass, %428
  %433 = icmp ult i64 %432, 32
  br i1 %433, label %445, label %.preheader684

.preheader684:                                    ; preds = %431, %.preheader684
  %434 = phi i64 [ %441, %.preheader684 ], [ 0, %431 ]
  %435 = getelementptr i8, ptr %.lcssa719, i64 %434
  %436 = getelementptr i8, ptr %42, i64 %434
  %437 = getelementptr i8, ptr %436, i64 16
  %438 = load <16 x i8>, ptr %436, align 1, !tbaa !33
  %439 = load <16 x i8>, ptr %437, align 1, !tbaa !33
  %440 = getelementptr i8, ptr %435, i64 16
  store <16 x i8> %438, ptr %435, align 1, !tbaa !33
  store <16 x i8> %439, ptr %440, align 1, !tbaa !33
  %441 = add nuw nsw i64 %434, 32
  %442 = icmp eq i64 %441, %70
  br i1 %442, label %443, label %.preheader684, !llvm.loop !54

443:                                              ; preds = %.preheader684
  %444 = getelementptr i8, ptr %.lcssa719, i64 %70
  br i1 %74, label %.loopexit44, label %445

445:                                              ; preds = %443, %431, %430
  %446 = phi ptr [ %.lcssa719, %431 ], [ %.lcssa719, %430 ], [ %444, %443 ]
  %447 = phi i32 [ %40, %431 ], [ %40, %430 ], [ %72, %443 ]
  %448 = phi ptr [ %42, %431 ], [ %42, %430 ], [ %73, %443 ]
  %449 = add i32 %447, -1
  %450 = and i32 %447, 7
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %.loopexit46, label %.preheader45

.preheader45:                                     ; preds = %445, %.preheader45
  %452 = phi ptr [ %456, %.preheader45 ], [ %446, %445 ]
  %453 = phi ptr [ %457, %.preheader45 ], [ %448, %445 ]
  %454 = phi i32 [ %458, %.preheader45 ], [ 0, %445 ]
  %455 = load i8, ptr %453, align 1, !tbaa !33
  %456 = getelementptr inbounds nuw i8, ptr %452, i64 1
  store i8 %455, ptr %452, align 1, !tbaa !33
  %457 = getelementptr inbounds nuw i8, ptr %453, i64 1
  %458 = add nuw nsw i32 %454, 1
  %459 = icmp eq i32 %458, %450
  br i1 %459, label %.loopexit46.loopexit, label %.preheader45, !llvm.loop !55

.loopexit46.loopexit:                             ; preds = %.preheader45
  %460 = and i32 %447, -8
  br label %.loopexit46

.loopexit46:                                      ; preds = %.loopexit46.loopexit, %445
  %461 = phi ptr [ poison, %445 ], [ %456, %.loopexit46.loopexit ]
  %462 = phi ptr [ %446, %445 ], [ %456, %.loopexit46.loopexit ]
  %463 = phi i32 [ %447, %445 ], [ %460, %.loopexit46.loopexit ]
  %464 = phi ptr [ %448, %445 ], [ %457, %.loopexit46.loopexit ]
  %465 = icmp ult i32 %449, 7
  br i1 %465, label %.loopexit44, label %.preheader43

.preheader43:                                     ; preds = %.loopexit46, %.preheader43
  %466 = phi ptr [ %491, %.preheader43 ], [ %462, %.loopexit46 ]
  %467 = phi i32 [ %492, %.preheader43 ], [ %463, %.loopexit46 ]
  %468 = phi ptr [ %493, %.preheader43 ], [ %464, %.loopexit46 ]
  %469 = load i8, ptr %468, align 1, !tbaa !33
  %470 = getelementptr inbounds nuw i8, ptr %466, i64 1
  store i8 %469, ptr %466, align 1, !tbaa !33
  %471 = getelementptr inbounds nuw i8, ptr %468, i64 1
  %472 = load i8, ptr %471, align 1, !tbaa !33
  %473 = getelementptr inbounds nuw i8, ptr %466, i64 2
  store i8 %472, ptr %470, align 1, !tbaa !33
  %474 = getelementptr inbounds nuw i8, ptr %468, i64 2
  %475 = load i8, ptr %474, align 1, !tbaa !33
  %476 = getelementptr inbounds nuw i8, ptr %466, i64 3
  store i8 %475, ptr %473, align 1, !tbaa !33
  %477 = getelementptr inbounds nuw i8, ptr %468, i64 3
  %478 = load i8, ptr %477, align 1, !tbaa !33
  %479 = getelementptr inbounds nuw i8, ptr %466, i64 4
  store i8 %478, ptr %476, align 1, !tbaa !33
  %480 = getelementptr inbounds nuw i8, ptr %468, i64 4
  %481 = load i8, ptr %480, align 1, !tbaa !33
  %482 = getelementptr inbounds nuw i8, ptr %466, i64 5
  store i8 %481, ptr %479, align 1, !tbaa !33
  %483 = getelementptr inbounds nuw i8, ptr %468, i64 5
  %484 = load i8, ptr %483, align 1, !tbaa !33
  %485 = getelementptr inbounds nuw i8, ptr %466, i64 6
  store i8 %484, ptr %482, align 1, !tbaa !33
  %486 = getelementptr inbounds nuw i8, ptr %468, i64 6
  %487 = load i8, ptr %486, align 1, !tbaa !33
  %488 = getelementptr inbounds nuw i8, ptr %466, i64 7
  store i8 %487, ptr %485, align 1, !tbaa !33
  %489 = getelementptr inbounds nuw i8, ptr %468, i64 7
  %490 = load i8, ptr %489, align 1, !tbaa !33
  %491 = getelementptr inbounds nuw i8, ptr %466, i64 8
  store i8 %490, ptr %488, align 1, !tbaa !33
  %492 = add i32 %467, -8
  %493 = getelementptr inbounds nuw i8, ptr %468, i64 8
  %494 = icmp eq i32 %492, 0
  br i1 %494, label %.loopexit44, label %.preheader43, !llvm.loop !56

.loopexit44:                                      ; preds = %.preheader43, %.loopexit46, %443
  %495 = phi ptr [ %444, %443 ], [ %461, %.loopexit46 ], [ %491, %.preheader43 ]
  %496 = sub nuw nsw i32 %394, %40
  %497 = zext nneg i32 %281 to i64
  %498 = sub nsw i64 0, %497
  %499 = getelementptr inbounds i8, ptr %495, i64 %498
  br label %572

500:                                              ; preds = %376
  %501 = sub nuw i32 %40, %294
  %502 = zext i32 %501 to i64
  %503 = getelementptr inbounds nuw i8, ptr %42, i64 %502
  %504 = icmp ult i32 %294, %194
  br i1 %504, label %505, label %572

505:                                              ; preds = %500
  %506 = sub nuw nsw i32 %194, %294
  %507 = add i32 %78, %280
  %508 = add i32 %507, %245
  %509 = trunc i64 %289 to i32
  %510 = sub i32 %508, %509
  %.not537 = icmp ugt i32 %294, %510
  br i1 %.not537, label %iter.check904, label %.split389.us, !prof !41, !nosanitize !16

iter.check904:                                    ; preds = %505
  %511 = zext nneg i32 %294 to i64
  %min.iters.check885 = icmp samesign ult i32 %294, 4
  br i1 %min.iters.check885, label %.split389.preheader, label %vector.memcheck883

vector.memcheck883:                               ; preds = %iter.check904
  %512 = trunc i64 %289 to i32
  %513 = add i32 %92, %512
  %514 = add i32 %94, %280
  %515 = add i32 %514, %245
  %516 = sub i32 %513, %515
  %517 = zext i32 %516 to i64
  %518 = add i64 %43, %517
  %519 = sub i64 %289, %518
  %diff.check884 = icmp ult i64 %519, 32
  br i1 %diff.check884, label %.split389.preheader, label %vector.main.loop.iter.check886

vector.main.loop.iter.check886:                   ; preds = %vector.memcheck883
  %min.iters.check887 = icmp samesign ult i32 %294, 32
  br i1 %min.iters.check887, label %vec.epilog.ph908, label %vector.ph888

vector.ph888:                                     ; preds = %vector.main.loop.iter.check886
  %n.mod.vf889 = and i64 %511, 28
  %n.vec890 = and i64 %511, 2147483616
  %520 = getelementptr i8, ptr %98, i64 %n.vec890
  %.cast891 = trunc nuw nsw i64 %n.vec890 to i32
  %521 = sub nsw i32 %294, %.cast891
  %522 = getelementptr i8, ptr %503, i64 %n.vec890
  br label %vector.body892

vector.body892:                                   ; preds = %vector.body892, %vector.ph888
  %index893 = phi i64 [ 0, %vector.ph888 ], [ %index.next898, %vector.body892 ]
  %next.gep894 = getelementptr i8, ptr %98, i64 %index893
  %next.gep895 = getelementptr i8, ptr %503, i64 %index893
  %523 = getelementptr i8, ptr %next.gep895, i64 16
  %wide.load896 = load <16 x i8>, ptr %next.gep895, align 1, !tbaa !33
  %wide.load897 = load <16 x i8>, ptr %523, align 1, !tbaa !33
  %524 = getelementptr i8, ptr %next.gep894, i64 16
  store <16 x i8> %wide.load896, ptr %next.gep894, align 1, !tbaa !33
  store <16 x i8> %wide.load897, ptr %524, align 1, !tbaa !33
  %index.next898 = add nuw i64 %index893, 32
  %525 = icmp eq i64 %index.next898, %n.vec890
  br i1 %525, label %middle.block899, label %vector.body892, !llvm.loop !57

middle.block899:                                  ; preds = %vector.body892
  %cmp.n900 = icmp eq i64 %n.vec890, %511
  br i1 %cmp.n900, label %.loopexit925, label %vec.epilog.iter.check906

vec.epilog.iter.check906:                         ; preds = %middle.block899
  %min.epilog.iters.check907 = icmp eq i64 %n.mod.vf889, 0
  br i1 %min.epilog.iters.check907, label %.split389.preheader, label %vec.epilog.ph908, !prof !46

vec.epilog.ph908:                                 ; preds = %vector.main.loop.iter.check886, %vec.epilog.iter.check906
  %vec.epilog.resume.val901 = phi i64 [ %n.vec890, %vec.epilog.iter.check906 ], [ 0, %vector.main.loop.iter.check886 ]
  %n.vec910 = and i64 %511, 2147483644
  %526 = getelementptr i8, ptr %98, i64 %n.vec910
  %.cast911 = trunc nuw nsw i64 %n.vec910 to i32
  %527 = sub nsw i32 %294, %.cast911
  %528 = getelementptr i8, ptr %503, i64 %n.vec910
  br label %vec.epilog.vector.body912

vec.epilog.vector.body912:                        ; preds = %vec.epilog.vector.body912, %vec.epilog.ph908
  %index913 = phi i64 [ %vec.epilog.resume.val901, %vec.epilog.ph908 ], [ %index.next917, %vec.epilog.vector.body912 ]
  %next.gep914 = getelementptr i8, ptr %98, i64 %index913
  %next.gep915 = getelementptr i8, ptr %503, i64 %index913
  %wide.load916 = load <4 x i8>, ptr %next.gep915, align 1, !tbaa !33
  store <4 x i8> %wide.load916, ptr %next.gep914, align 1, !tbaa !33
  %index.next917 = add nuw i64 %index913, 4
  %529 = icmp eq i64 %index.next917, %n.vec910
  br i1 %529, label %vec.epilog.middle.block918, label %vec.epilog.vector.body912, !llvm.loop !58

vec.epilog.middle.block918:                       ; preds = %vec.epilog.vector.body912
  %cmp.n919 = icmp eq i64 %n.vec910, %511
  br i1 %cmp.n919, label %.loopexit925, label %.split389.preheader

.split389.preheader:                              ; preds = %vector.memcheck883, %iter.check904, %vec.epilog.iter.check906, %vec.epilog.middle.block918
  %.ph931 = phi ptr [ %98, %iter.check904 ], [ %98, %vector.memcheck883 ], [ %520, %vec.epilog.iter.check906 ], [ %526, %vec.epilog.middle.block918 ]
  %.ph932 = phi i32 [ %294, %iter.check904 ], [ %294, %vector.memcheck883 ], [ %521, %vec.epilog.iter.check906 ], [ %527, %vec.epilog.middle.block918 ]
  %.ph933 = phi ptr [ %503, %iter.check904 ], [ %503, %vector.memcheck883 ], [ %522, %vec.epilog.iter.check906 ], [ %528, %vec.epilog.middle.block918 ]
  %530 = add i32 %.ph932, -1
  %xtraiter1080 = and i32 %.ph932, 7
  %lcmp.mod1081.not = icmp eq i32 %xtraiter1080, 0
  br i1 %lcmp.mod1081.not, label %.split389.prol.loopexit, label %.split389.prol

.split389.prol:                                   ; preds = %.split389.preheader, %.split389.prol
  %531 = phi ptr [ %535, %.split389.prol ], [ %.ph931, %.split389.preheader ]
  %532 = phi i32 [ %536, %.split389.prol ], [ %.ph932, %.split389.preheader ]
  %533 = phi ptr [ %537, %.split389.prol ], [ %.ph933, %.split389.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.split389.prol ], [ 0, %.split389.preheader ]
  %534 = load i8, ptr %533, align 1, !tbaa !33
  store i8 %534, ptr %531, align 1, !tbaa !33
  %535 = getelementptr inbounds nuw i8, ptr %531, i64 1
  %536 = add i32 %532, -1
  %537 = getelementptr inbounds nuw i8, ptr %533, i64 1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1080
  br i1 %prol.iter.cmp.not, label %.split389.prol.loopexit, label %.split389.prol, !llvm.loop !59

.split389.prol.loopexit:                          ; preds = %.split389.prol, %.split389.preheader
  %.lcssa967.unr = phi ptr [ poison, %.split389.preheader ], [ %535, %.split389.prol ]
  %.unr1082 = phi ptr [ %.ph931, %.split389.preheader ], [ %535, %.split389.prol ]
  %.unr1083 = phi i32 [ %.ph932, %.split389.preheader ], [ %536, %.split389.prol ]
  %.unr1084 = phi ptr [ %.ph933, %.split389.preheader ], [ %537, %.split389.prol ]
  %538 = icmp ult i32 %530, 7
  br i1 %538, label %.loopexit925, label %.split389

.split389.us:                                     ; preds = %505
  %539 = load i8, ptr %503, align 1, !tbaa !33
  store i8 %539, ptr %98, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

.split389:                                        ; preds = %.split389.prol.loopexit, %.split389
  %540 = phi ptr [ %565, %.split389 ], [ %.unr1082, %.split389.prol.loopexit ]
  %541 = phi i32 [ %566, %.split389 ], [ %.unr1083, %.split389.prol.loopexit ]
  %542 = phi ptr [ %567, %.split389 ], [ %.unr1084, %.split389.prol.loopexit ]
  %543 = load i8, ptr %542, align 1, !tbaa !33
  store i8 %543, ptr %540, align 1, !tbaa !33
  %544 = getelementptr inbounds nuw i8, ptr %540, i64 1
  %545 = getelementptr inbounds nuw i8, ptr %542, i64 1
  %546 = load i8, ptr %545, align 1, !tbaa !33
  store i8 %546, ptr %544, align 1, !tbaa !33
  %547 = getelementptr inbounds nuw i8, ptr %540, i64 2
  %548 = getelementptr inbounds nuw i8, ptr %542, i64 2
  %549 = load i8, ptr %548, align 1, !tbaa !33
  store i8 %549, ptr %547, align 1, !tbaa !33
  %550 = getelementptr inbounds nuw i8, ptr %540, i64 3
  %551 = getelementptr inbounds nuw i8, ptr %542, i64 3
  %552 = load i8, ptr %551, align 1, !tbaa !33
  store i8 %552, ptr %550, align 1, !tbaa !33
  %553 = getelementptr inbounds nuw i8, ptr %540, i64 4
  %554 = getelementptr inbounds nuw i8, ptr %542, i64 4
  %555 = load i8, ptr %554, align 1, !tbaa !33
  store i8 %555, ptr %553, align 1, !tbaa !33
  %556 = getelementptr inbounds nuw i8, ptr %540, i64 5
  %557 = getelementptr inbounds nuw i8, ptr %542, i64 5
  %558 = load i8, ptr %557, align 1, !tbaa !33
  store i8 %558, ptr %556, align 1, !tbaa !33
  %559 = getelementptr inbounds nuw i8, ptr %540, i64 6
  %560 = getelementptr inbounds nuw i8, ptr %542, i64 6
  %561 = load i8, ptr %560, align 1, !tbaa !33
  store i8 %561, ptr %559, align 1, !tbaa !33
  %562 = getelementptr inbounds nuw i8, ptr %540, i64 7
  %563 = getelementptr inbounds nuw i8, ptr %542, i64 7
  %564 = load i8, ptr %563, align 1, !tbaa !33
  store i8 %564, ptr %562, align 1, !tbaa !33
  %565 = getelementptr inbounds nuw i8, ptr %540, i64 8
  %566 = add i32 %541, -8
  %567 = getelementptr inbounds nuw i8, ptr %542, i64 8
  %568 = icmp eq i32 %566, 0
  br i1 %568, label %.loopexit925, label %.split389, !llvm.loop !60

.loopexit925:                                     ; preds = %.split389.prol.loopexit, %.split389, %vec.epilog.middle.block918, %middle.block899
  %.lcssa718 = phi ptr [ %526, %vec.epilog.middle.block918 ], [ %520, %middle.block899 ], [ %.lcssa967.unr, %.split389.prol.loopexit ], [ %565, %.split389 ]
  %569 = zext nneg i32 %281 to i64
  %570 = sub nsw i64 0, %569
  %571 = getelementptr inbounds i8, ptr %.lcssa718, i64 %570
  br label %572

572:                                              ; preds = %.loopexit925, %500, %.loopexit44, %.loopexit924, %391, %.loopexit923, %304
  %573 = phi ptr [ %.lcssa723, %.loopexit923 ], [ %98, %304 ], [ %495, %.loopexit44 ], [ %.lcssa719, %.loopexit924 ], [ %98, %391 ], [ %.lcssa718, %.loopexit925 ], [ %98, %500 ]
  %574 = phi i32 [ %310, %.loopexit923 ], [ %194, %304 ], [ %496, %.loopexit44 ], [ %394, %.loopexit924 ], [ %194, %391 ], [ %506, %.loopexit925 ], [ %194, %500 ]
  %575 = phi ptr [ %375, %.loopexit923 ], [ %307, %304 ], [ %499, %.loopexit44 ], [ %42, %.loopexit924 ], [ %386, %391 ], [ %571, %.loopexit925 ], [ %503, %500 ]
  %576 = icmp ugt i32 %574, 2
  br i1 %576, label %577, label %.loopexit

577:                                              ; preds = %572
  %578 = add nsw i32 %574, -3
  %579 = udiv i32 %578, 3
  %580 = and i32 %579, 1
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %582, label %592

582:                                              ; preds = %577
  %583 = getelementptr inbounds nuw i8, ptr %575, i64 1
  %584 = load i8, ptr %575, align 1, !tbaa !33
  %585 = getelementptr inbounds nuw i8, ptr %573, i64 1
  store i8 %584, ptr %573, align 1, !tbaa !33
  %586 = getelementptr inbounds nuw i8, ptr %575, i64 2
  %587 = load i8, ptr %583, align 1, !tbaa !33
  %588 = getelementptr inbounds nuw i8, ptr %573, i64 2
  store i8 %587, ptr %585, align 1, !tbaa !33
  %589 = load i8, ptr %586, align 1, !tbaa !33
  store i8 %589, ptr %588, align 1, !tbaa !33
  %590 = getelementptr inbounds nuw i8, ptr %573, i64 3
  %591 = getelementptr inbounds nuw i8, ptr %575, i64 3
  br label %592

592:                                              ; preds = %582, %577
  %593 = phi ptr [ %575, %577 ], [ %591, %582 ]
  %594 = phi i32 [ %574, %577 ], [ %578, %582 ]
  %595 = phi ptr [ %573, %577 ], [ %590, %582 ]
  %596 = phi ptr [ poison, %577 ], [ %590, %582 ]
  %597 = phi ptr [ poison, %577 ], [ %591, %582 ]
  %598 = icmp ult i32 %578, 3
  br i1 %598, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %592, %.preheader
  %599 = phi ptr [ %620, %.preheader ], [ %593, %592 ]
  %600 = phi i32 [ %618, %.preheader ], [ %594, %592 ]
  %601 = phi ptr [ %619, %.preheader ], [ %595, %592 ]
  %602 = getelementptr inbounds nuw i8, ptr %599, i64 1
  %603 = load i8, ptr %599, align 1, !tbaa !33
  %604 = getelementptr inbounds nuw i8, ptr %601, i64 1
  store i8 %603, ptr %601, align 1, !tbaa !33
  %605 = getelementptr inbounds nuw i8, ptr %599, i64 2
  %606 = load i8, ptr %602, align 1, !tbaa !33
  %607 = getelementptr inbounds nuw i8, ptr %601, i64 2
  store i8 %606, ptr %604, align 1, !tbaa !33
  %608 = load i8, ptr %605, align 1, !tbaa !33
  store i8 %608, ptr %607, align 1, !tbaa !33
  %609 = getelementptr inbounds nuw i8, ptr %601, i64 3
  %610 = getelementptr inbounds nuw i8, ptr %599, i64 3
  %611 = getelementptr inbounds nuw i8, ptr %599, i64 4
  %612 = load i8, ptr %610, align 1, !tbaa !33
  %613 = getelementptr inbounds nuw i8, ptr %601, i64 4
  store i8 %612, ptr %609, align 1, !tbaa !33
  %614 = getelementptr inbounds nuw i8, ptr %599, i64 5
  %615 = load i8, ptr %611, align 1, !tbaa !33
  %616 = getelementptr inbounds nuw i8, ptr %601, i64 5
  store i8 %615, ptr %613, align 1, !tbaa !33
  %617 = load i8, ptr %614, align 1, !tbaa !33
  store i8 %617, ptr %616, align 1, !tbaa !33
  %618 = add i32 %600, -6
  %619 = getelementptr inbounds nuw i8, ptr %601, i64 6
  %620 = getelementptr inbounds nuw i8, ptr %599, i64 6
  %621 = icmp ugt i32 %618, 2
  br i1 %621, label %.preheader, label %.loopexit, !llvm.loop !61

.loopexit:                                        ; preds = %.preheader, %592, %572
  %622 = phi ptr [ %573, %572 ], [ %596, %592 ], [ %619, %.preheader ]
  %623 = phi i32 [ %574, %572 ], [ %578, %592 ], [ %618, %.preheader ]
  %624 = phi ptr [ %575, %572 ], [ %597, %592 ], [ %620, %.preheader ]
  %625 = icmp eq i32 %623, 0
  br i1 %625, label %741, label %626

626:                                              ; preds = %.loopexit
  %627 = load i8, ptr %624, align 1, !tbaa !33
  %628 = getelementptr inbounds nuw i8, ptr %622, i64 1
  store i8 %627, ptr %622, align 1, !tbaa !33
  %629 = icmp eq i32 %623, 2
  br i1 %629, label %630, label %741

630:                                              ; preds = %626
  %631 = getelementptr inbounds nuw i8, ptr %624, i64 1
  %632 = load i8, ptr %631, align 1, !tbaa !33
  %633 = getelementptr inbounds nuw i8, ptr %622, i64 2
  store i8 %632, ptr %628, align 1, !tbaa !33
  br label %741

634:                                              ; preds = %288
  %635 = zext nneg i32 %281 to i64
  %636 = sub nsw i64 0, %635
  %637 = getelementptr inbounds i8, ptr %98, i64 %636
  %638 = udiv i32 %194, 3
  %639 = add nsw i32 %194, -3
  %umin = tail call i32 @llvm.umin.i32(i32 %639, i32 2)
  %640 = xor i32 %umin, -1
  %641 = add nsw i32 %194, %640
  %642 = udiv i32 %641, 3
  %.not = icmp samesign ugt i32 %638, %642
  br i1 %.not, label %.split.preheader, label %.split.us, !prof !41, !nosanitize !16

.split.preheader:                                 ; preds = %634
  %643 = and i32 %642, 1
  %lcmp.mod.not.not = icmp eq i32 %643, 0
  br i1 %lcmp.mod.not.not, label %.split.prol, label %.split.prol.loopexit

.split.prol:                                      ; preds = %.split.preheader
  %644 = getelementptr inbounds nuw i8, ptr %637, i64 1
  %645 = load i8, ptr %637, align 1, !tbaa !33
  %646 = getelementptr inbounds nuw i8, ptr %98, i64 1
  store i8 %645, ptr %98, align 1, !tbaa !33
  %647 = getelementptr inbounds nuw i8, ptr %637, i64 2
  %648 = load i8, ptr %644, align 1, !tbaa !33
  %649 = getelementptr inbounds nuw i8, ptr %98, i64 2
  store i8 %648, ptr %646, align 1, !tbaa !33
  %650 = load i8, ptr %647, align 1, !tbaa !33
  store i8 %650, ptr %649, align 1, !tbaa !33
  %651 = add nsw i32 %194, -3
  %652 = getelementptr inbounds nuw i8, ptr %98, i64 3
  %653 = getelementptr inbounds nuw i8, ptr %637, i64 3
  br label %.split.prol.loopexit

.split.prol.loopexit:                             ; preds = %.split.prol, %.split.preheader
  %.unr = phi ptr [ %98, %.split.preheader ], [ %652, %.split.prol ]
  %.unr1078 = phi i32 [ %194, %.split.preheader ], [ %651, %.split.prol ]
  %.unr1079 = phi ptr [ %637, %.split.preheader ], [ %653, %.split.prol ]
  %.lcssa964.unr = phi ptr [ poison, %.split.preheader ], [ %652, %.split.prol ]
  %.lcssa963.unr = phi ptr [ poison, %.split.preheader ], [ %653, %.split.prol ]
  %654 = icmp ult i32 %641, 3
  br i1 %654, label %687, label %.split

.split.us:                                        ; preds = %634
  %655 = getelementptr inbounds nuw i8, ptr %637, i64 1
  %656 = load i8, ptr %637, align 1, !tbaa !33
  %657 = getelementptr inbounds nuw i8, ptr %98, i64 1
  store i8 %656, ptr %98, align 1, !tbaa !33
  %658 = getelementptr inbounds nuw i8, ptr %637, i64 2
  %659 = load i8, ptr %655, align 1, !tbaa !33
  %660 = getelementptr inbounds nuw i8, ptr %98, i64 2
  store i8 %659, ptr %657, align 1, !tbaa !33
  %661 = load i8, ptr %658, align 1, !tbaa !33
  store i8 %661, ptr %660, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

.split:                                           ; preds = %.split.prol.loopexit, %.split
  %662 = phi ptr [ %682, %.split ], [ %.unr, %.split.prol.loopexit ]
  %663 = phi i32 [ %681, %.split ], [ %.unr1078, %.split.prol.loopexit ]
  %664 = phi ptr [ %683, %.split ], [ %.unr1079, %.split.prol.loopexit ]
  %665 = getelementptr inbounds nuw i8, ptr %664, i64 1
  %666 = load i8, ptr %664, align 1, !tbaa !33
  %667 = getelementptr inbounds nuw i8, ptr %662, i64 1
  store i8 %666, ptr %662, align 1, !tbaa !33
  %668 = getelementptr inbounds nuw i8, ptr %664, i64 2
  %669 = load i8, ptr %665, align 1, !tbaa !33
  %670 = getelementptr inbounds nuw i8, ptr %662, i64 2
  store i8 %669, ptr %667, align 1, !tbaa !33
  %671 = load i8, ptr %668, align 1, !tbaa !33
  store i8 %671, ptr %670, align 1, !tbaa !33
  %672 = getelementptr inbounds nuw i8, ptr %662, i64 3
  %673 = getelementptr inbounds nuw i8, ptr %664, i64 3
  %674 = getelementptr inbounds nuw i8, ptr %664, i64 4
  %675 = load i8, ptr %673, align 1, !tbaa !33
  %676 = getelementptr inbounds nuw i8, ptr %662, i64 4
  store i8 %675, ptr %672, align 1, !tbaa !33
  %677 = getelementptr inbounds nuw i8, ptr %664, i64 5
  %678 = load i8, ptr %674, align 1, !tbaa !33
  %679 = getelementptr inbounds nuw i8, ptr %662, i64 5
  store i8 %678, ptr %676, align 1, !tbaa !33
  %680 = load i8, ptr %677, align 1, !tbaa !33
  store i8 %680, ptr %679, align 1, !tbaa !33
  %681 = add i32 %663, -6
  %682 = getelementptr inbounds nuw i8, ptr %662, i64 6
  %683 = getelementptr inbounds nuw i8, ptr %664, i64 6
  %684 = icmp ugt i32 %681, 2
  br i1 %684, label %.split, label %.unr-lcssa, !llvm.loop !62

.unr-lcssa:                                       ; preds = %.split
  %685 = getelementptr inbounds nuw i8, ptr %662, i64 3
  %686 = getelementptr inbounds nuw i8, ptr %664, i64 3
  br label %687

687:                                              ; preds = %.split.prol.loopexit, %.unr-lcssa
  %.lcssa966 = phi ptr [ %98, %.split.prol.loopexit ], [ %685, %.unr-lcssa ]
  %.lcssa965 = phi ptr [ %637, %.split.prol.loopexit ], [ %686, %.unr-lcssa ]
  %.lcssa964 = phi ptr [ %.lcssa964.unr, %.split.prol.loopexit ], [ %682, %.unr-lcssa ]
  %.lcssa963 = phi ptr [ %.lcssa963.unr, %.split.prol.loopexit ], [ %683, %.unr-lcssa ]
  %.neg = mul i32 %642, -3
  %688 = add i32 %.neg, %639
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %741, label %690

690:                                              ; preds = %687
  %691 = load i8, ptr %.lcssa963, align 1, !tbaa !33
  %692 = getelementptr inbounds nuw i8, ptr %.lcssa966, i64 4
  store i8 %691, ptr %.lcssa964, align 1, !tbaa !33
  %693 = icmp eq i32 %688, 2
  br i1 %693, label %694, label %741

694:                                              ; preds = %690
  %695 = getelementptr inbounds nuw i8, ptr %.lcssa965, i64 4
  %696 = load i8, ptr %695, align 1, !tbaa !33
  %697 = getelementptr inbounds nuw i8, ptr %.lcssa966, i64 5
  store i8 %696, ptr %692, align 1, !tbaa !33
  br label %741

698:                                              ; preds = %233
  %699 = and i32 %239, 64
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %701, label %.loopexit47

701:                                              ; preds = %698
  %702 = shl nsw i32 -1, %239
  %703 = xor i32 %702, -1
  %704 = getelementptr inbounds nuw i8, ptr %236, i64 2
  %705 = load i16, ptr %704, align 2, !tbaa !39
  %706 = zext i16 %705 to i64
  %707 = getelementptr inbounds nuw [4 x i8], ptr %51, i64 %706
  %708 = zext nneg i32 %703 to i64
  %709 = and i64 %235, %708
  %710 = getelementptr inbounds nuw [4 x i8], ptr %707, i64 %709
  %711 = getelementptr inbounds nuw i8, ptr %710, i64 1
  %712 = load i8, ptr %711, align 1, !tbaa !34
  %713 = zext i8 %712 to i32
  %714 = zext nneg i8 %712 to i64
  %715 = lshr i64 %235, %714
  %716 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %237, i32 %713), !nosanitize !16
  %717 = extractvalue { i32, i1 } %716, 1, !nosanitize !16
  br i1 %717, label %.loopexit48, label %233, !prof !63, !nosanitize !16

718:                                              ; preds = %151
  %719 = and i32 %144, 64
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %721, label %738

721:                                              ; preds = %718
  %722 = shl nsw i32 -1, %144
  %723 = xor i32 %722, -1
  %724 = getelementptr inbounds nuw i8, ptr %141, i64 2
  %725 = load i16, ptr %724, align 2, !tbaa !39
  %726 = zext i16 %725 to i64
  %727 = getelementptr inbounds nuw [4 x i8], ptr %49, i64 %726
  %728 = zext nneg i32 %723 to i64
  %729 = and i64 %140, %728
  %730 = getelementptr inbounds nuw [4 x i8], ptr %727, i64 %729
  %731 = getelementptr inbounds nuw i8, ptr %730, i64 1
  %732 = load i8, ptr %731, align 1, !tbaa !34
  %733 = zext i8 %732 to i32
  %734 = zext nneg i8 %732 to i64
  %735 = lshr i64 %140, %734
  %736 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %142, i32 %733), !nosanitize !16
  %737 = extractvalue { i32, i1 } %736, 1, !nosanitize !16
  br i1 %737, label %.loopexit49, label %138, !prof !63, !nosanitize !16

738:                                              ; preds = %718
  %739 = and i32 %144, 32
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %.loopexit47, label %754

741:                                              ; preds = %694, %690, %687, %630, %626, %.loopexit, %146
  %742 = phi i32 [ %142, %146 ], [ %285, %630 ], [ %285, %626 ], [ %285, %.loopexit ], [ %285, %694 ], [ %285, %690 ], [ %285, %687 ]
  %743 = phi i64 [ %140, %146 ], [ %283, %630 ], [ %283, %626 ], [ %283, %.loopexit ], [ %283, %694 ], [ %283, %690 ], [ %283, %687 ]
  %744 = phi ptr [ %150, %146 ], [ %633, %630 ], [ %628, %626 ], [ %622, %.loopexit ], [ %697, %694 ], [ %692, %690 ], [ %.lcssa964, %687 ]
  %745 = phi ptr [ %127, %146 ], [ %276, %630 ], [ %276, %626 ], [ %276, %.loopexit ], [ %276, %694 ], [ %276, %690 ], [ %276, %687 ]
  %746 = icmp ult ptr %745, %14
  %747 = icmp ult ptr %744, %34
  %748 = select i1 %746, i1 %747, i1 false
  br i1 %748, label %95, label %.loopexit54, !llvm.loop !64

.loopexit47:                                      ; preds = %296, %698, %738
  %749 = phi ptr [ @.str.2, %738 ], [ @.str.1, %698 ], [ @.str, %296 ]
  %750 = phi i32 [ %142, %738 ], [ %237, %698 ], [ %285, %296 ]
  %751 = phi i64 [ %140, %738 ], [ %235, %698 ], [ %283, %296 ]
  %752 = phi ptr [ %127, %738 ], [ %222, %698 ], [ %276, %296 ]
  %753 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %749, ptr %753, align 8, !tbaa !65
  br label %754

754:                                              ; preds = %.loopexit47, %738
  %755 = phi i32 [ 16191, %738 ], [ 16209, %.loopexit47 ]
  %756 = phi i32 [ %142, %738 ], [ %750, %.loopexit47 ]
  %757 = phi i64 [ %140, %738 ], [ %751, %.loopexit47 ]
  %758 = phi ptr [ %127, %738 ], [ %752, %.loopexit47 ]
  %759 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %755, ptr %759, align 8, !tbaa !66
  br label %.loopexit54

.loopexit54:                                      ; preds = %741, %754
  %760 = phi i32 [ %756, %754 ], [ %742, %741 ]
  %761 = phi i64 [ %757, %754 ], [ %743, %741 ]
  %762 = phi ptr [ %98, %754 ], [ %744, %741 ]
  %763 = phi ptr [ %758, %754 ], [ %745, %741 ]
  %764 = lshr i32 %760, 3
  %765 = zext nneg i32 %764 to i64
  %766 = sub nsw i64 0, %765
  %767 = getelementptr inbounds i8, ptr %763, i64 %766
  %768 = and i32 %760, -8
  %769 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %760, i32 %768), !nosanitize !16
  %770 = extractvalue { i32, i1 } %769, 1, !nosanitize !16
  br i1 %770, label %771, label %773, !prof !17, !nosanitize !16

771:                                              ; preds = %.loopexit54
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

772:                                              ; preds = %798, %781
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

773:                                              ; preds = %.loopexit54
  store ptr %767, ptr %0, align 8, !tbaa !14
  store ptr %762, ptr %15, align 8, !tbaa !18
  %774 = icmp ult ptr %767, %14
  br i1 %774, label %775, label %781

775:                                              ; preds = %773
  %776 = ptrtoint ptr %14 to i64
  %777 = ptrtoint ptr %767 to i64
  %778 = sub i64 %776, %777
  %779 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %778, i64 5), !nosanitize !16
  %780 = extractvalue { i64, i1 } %779, 1, !nosanitize !16
  br i1 %780, label %.loopexit53, label %787, !prof !17, !nosanitize !16

781:                                              ; preds = %773
  %782 = ptrtoint ptr %767 to i64
  %783 = ptrtoint ptr %14 to i64
  %784 = sub i64 %782, %783
  %785 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 5, i64 %784), !nosanitize !16
  %786 = extractvalue { i64, i1 } %785, 1, !nosanitize !16
  br i1 %786, label %772, label %787, !prof !17, !nosanitize !16

787:                                              ; preds = %781, %775
  %788 = phi { i64, i1 } [ %779, %775 ], [ %785, %781 ]
  %789 = extractvalue { i64, i1 } %788, 0
  %790 = trunc i64 %789 to i32
  store i32 %790, ptr %6, align 8, !tbaa !15
  %791 = icmp ult ptr %762, %34
  br i1 %791, label %792, label %798

792:                                              ; preds = %787
  %793 = ptrtoint ptr %34 to i64
  %794 = ptrtoint ptr %762 to i64
  %795 = sub i64 %793, %794
  %796 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %795, i64 257), !nosanitize !16
  %797 = extractvalue { i64, i1 } %796, 1, !nosanitize !16
  br i1 %797, label %.loopexit53, label %804, !prof !17, !nosanitize !16

798:                                              ; preds = %787
  %799 = ptrtoint ptr %762 to i64
  %800 = ptrtoint ptr %34 to i64
  %801 = sub i64 %799, %800
  %802 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 257, i64 %801), !nosanitize !16
  %803 = extractvalue { i64, i1 } %802, 1, !nosanitize !16
  br i1 %803, label %772, label %804, !prof !17, !nosanitize !16

804:                                              ; preds = %798, %792
  %805 = phi { i64, i1 } [ %796, %792 ], [ %802, %798 ]
  %806 = extractvalue { i64, i1 } %805, 0
  %807 = extractvalue { i32, i1 } %769, 0, !nosanitize !16
  %808 = shl nsw i32 -1, %807
  %809 = xor i32 %808, -1
  %810 = zext nneg i32 %809 to i64
  %811 = and i64 %761, %810
  %812 = trunc i64 %806 to i32
  store i32 %812, ptr %18, align 8, !tbaa !19
  store i64 %811, ptr %44, align 8, !tbaa !27
  store i32 %807, ptr %46, align 8, !tbaa !28
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
