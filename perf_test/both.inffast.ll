; ModuleID = '/home/amiralie1380/michigan/pl/zlib/inffast.c'
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
  %73 = sub i32 %70, %72
  %74 = add i32 %36, %1
  %75 = trunc i64 %17 to i32
  %76 = add i32 %19, %75
  %77 = zext i32 %40 to i64
  %78 = add i32 %36, %40
  %79 = add i32 %78, %1
  %80 = trunc i64 %17 to i32
  %81 = add i32 %19, %80
  %82 = add i32 %19, %68
  %83 = xor i32 %40, -1
  %84 = add i32 %82, %83
  %85 = sub i32 %84, %1
  %86 = add i32 %40, %1
  %87 = trunc i64 %17 to i32
  %88 = add i32 %19, %87
  %89 = icmp ult i32 %40, 4
  %90 = icmp ult i32 %40, 32
  %91 = and i64 %77, 28
  %92 = and i64 %77, 4294967264
  %93 = trunc nuw i64 %92 to i32
  %94 = sub i32 %40, %93
  %95 = getelementptr i8, ptr %42, i64 %92
  %96 = icmp eq i64 %92, %77
  %97 = icmp eq i64 %91, 0
  %98 = and i64 %77, 4294967292
  %99 = trunc nuw i64 %98 to i32
  %100 = sub i32 %40, %99
  %101 = getelementptr i8, ptr %42, i64 %98
  %102 = icmp eq i64 %98, %77
  br label %103

103:                                              ; preds = %987, %27
  %104 = phi i32 [ %47, %27 ], [ %988, %987 ]
  %105 = phi i64 [ %45, %27 ], [ %989, %987 ]
  %106 = phi ptr [ %16, %27 ], [ %990, %987 ]
  %107 = phi ptr [ %5, %27 ], [ %991, %987 ]
  %108 = icmp ult i32 %104, 15
  br i1 %108, label %109, label %132

109:                                              ; preds = %103
  %110 = load i8, ptr %107, align 1, !tbaa !33
  %111 = zext i8 %110 to i64
  %112 = zext nneg i32 %104 to i64
  %113 = shl nuw nsw i64 %111, %112
  %114 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %105, i64 %113), !nosanitize !16
  %115 = extractvalue { i64, i1 } %114, 1, !nosanitize !16
  br i1 %115, label %116, label %117, !prof !17, !nosanitize !16

116:                                              ; preds = %109
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !16
  unreachable, !nosanitize !16

117:                                              ; preds = %109
  %118 = extractvalue { i64, i1 } %114, 0, !nosanitize !16
  %119 = getelementptr inbounds nuw i8, ptr %107, i64 1
  %120 = add nuw nsw i32 %104, 8
  %121 = load i8, ptr %119, align 1, !tbaa !33
  %122 = zext i8 %121 to i64
  %123 = zext nneg i32 %120 to i64
  %124 = shl nuw nsw i64 %122, %123
  %125 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %118, i64 %124), !nosanitize !16
  %126 = extractvalue { i64, i1 } %125, 1, !nosanitize !16
  br i1 %126, label %127, label %128, !prof !17, !nosanitize !16

127:                                              ; preds = %117
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !16
  unreachable, !nosanitize !16

128:                                              ; preds = %117
  %129 = extractvalue { i64, i1 } %125, 0, !nosanitize !16
  %130 = getelementptr inbounds nuw i8, ptr %107, i64 2
  %131 = or disjoint i32 %104, 16
  br label %132

132:                                              ; preds = %128, %103
  %133 = phi i32 [ %131, %128 ], [ %104, %103 ]
  %134 = phi i64 [ %129, %128 ], [ %105, %103 ]
  %135 = phi ptr [ %130, %128 ], [ %107, %103 ]
  %136 = and i64 %134, %60
  %137 = getelementptr inbounds nuw [4 x i8], ptr %49, i64 %136
  %138 = getelementptr inbounds nuw i8, ptr %137, i64 1
  %139 = load i8, ptr %138, align 1, !tbaa !34
  %140 = zext i8 %139 to i32
  %141 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %133, i32 %140), !nosanitize !16
  %142 = extractvalue { i32, i1 } %141, 1, !nosanitize !16
  br i1 %142, label %146, label %143, !prof !37, !nosanitize !16

143:                                              ; preds = %132
  %144 = zext nneg i8 %139 to i64
  %145 = lshr i64 %134, %144
  br label %147

146:                                              ; preds = %132, %967
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

147:                                              ; preds = %143, %967
  %148 = phi { i32, i1 } [ %982, %967 ], [ %141, %143 ]
  %149 = phi i64 [ %981, %967 ], [ %145, %143 ]
  %150 = phi ptr [ %976, %967 ], [ %137, %143 ]
  %151 = extractvalue { i32, i1 } %148, 0
  %152 = load i8, ptr %150, align 2, !tbaa !38
  %153 = zext i8 %152 to i32
  %154 = icmp eq i8 %152, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %147
  %156 = getelementptr inbounds nuw i8, ptr %150, i64 2
  %157 = load i16, ptr %156, align 2, !tbaa !39
  %158 = trunc i16 %157 to i8
  %159 = getelementptr inbounds nuw i8, ptr %106, i64 1
  store i8 %158, ptr %106, align 1, !tbaa !33
  br label %987

160:                                              ; preds = %147
  %161 = and i32 %153, 16
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %964, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds nuw i8, ptr %150, i64 2
  %165 = load i16, ptr %164, align 2, !tbaa !39
  %166 = zext i16 %165 to i32
  %167 = and i32 %153, 15
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %199, label %169

169:                                              ; preds = %163
  %170 = icmp ult i32 %151, %167
  br i1 %170, label %171, label %183

171:                                              ; preds = %169
  %172 = load i8, ptr %135, align 1, !tbaa !33
  %173 = zext i8 %172 to i64
  %174 = zext nneg i32 %151 to i64
  %175 = shl nuw nsw i64 %173, %174
  %176 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %149, i64 %175), !nosanitize !16
  %177 = extractvalue { i64, i1 } %176, 1, !nosanitize !16
  br i1 %177, label %178, label %179, !prof !17, !nosanitize !16

178:                                              ; preds = %171
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !16
  unreachable, !nosanitize !16

179:                                              ; preds = %171
  %180 = extractvalue { i64, i1 } %176, 0, !nosanitize !16
  %181 = getelementptr inbounds nuw i8, ptr %135, i64 1
  %182 = add nuw nsw i32 %151, 8
  br label %183

183:                                              ; preds = %169, %179
  %184 = phi i32 [ %182, %179 ], [ %151, %169 ]
  %185 = phi i64 [ %180, %179 ], [ %149, %169 ]
  %186 = phi ptr [ %181, %179 ], [ %135, %169 ]
  %187 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %184, i32 %167), !nosanitize !16
  %188 = extractvalue { i32, i1 } %187, 1, !nosanitize !16
  br i1 %188, label %189, label %190, !prof !17, !nosanitize !16

189:                                              ; preds = %183
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

190:                                              ; preds = %183
  %191 = trunc i64 %185 to i32
  %192 = shl nsw i32 -1, %167
  %193 = xor i32 %192, -1
  %194 = and i32 %191, %193
  %195 = add nuw nsw i32 %194, %166
  %196 = extractvalue { i32, i1 } %187, 0, !nosanitize !16
  %197 = zext nneg i32 %167 to i64
  %198 = lshr i64 %185, %197
  br label %199

199:                                              ; preds = %190, %163
  %200 = phi i32 [ %196, %190 ], [ %151, %163 ]
  %201 = phi i64 [ %198, %190 ], [ %149, %163 ]
  %202 = phi ptr [ %186, %190 ], [ %135, %163 ]
  %203 = phi i32 [ %195, %190 ], [ %166, %163 ]
  %204 = icmp ult i32 %200, 15
  br i1 %204, label %205, label %228

205:                                              ; preds = %199
  %206 = load i8, ptr %202, align 1, !tbaa !33
  %207 = zext i8 %206 to i64
  %208 = zext nneg i32 %200 to i64
  %209 = shl nuw nsw i64 %207, %208
  %210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %201, i64 %209), !nosanitize !16
  %211 = extractvalue { i64, i1 } %210, 1, !nosanitize !16
  br i1 %211, label %212, label %213, !prof !17, !nosanitize !16

212:                                              ; preds = %205
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !16
  unreachable, !nosanitize !16

213:                                              ; preds = %205
  %214 = extractvalue { i64, i1 } %210, 0, !nosanitize !16
  %215 = getelementptr inbounds nuw i8, ptr %202, i64 1
  %216 = add nuw nsw i32 %200, 8
  %217 = load i8, ptr %215, align 1, !tbaa !33
  %218 = zext i8 %217 to i64
  %219 = zext nneg i32 %216 to i64
  %220 = shl nuw nsw i64 %218, %219
  %221 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %214, i64 %220), !nosanitize !16
  %222 = extractvalue { i64, i1 } %221, 1, !nosanitize !16
  br i1 %222, label %223, label %224, !prof !17, !nosanitize !16

223:                                              ; preds = %213
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !16
  unreachable, !nosanitize !16

224:                                              ; preds = %213
  %225 = extractvalue { i64, i1 } %221, 0, !nosanitize !16
  %226 = getelementptr inbounds nuw i8, ptr %202, i64 2
  %227 = or disjoint i32 %200, 16
  br label %228

228:                                              ; preds = %224, %199
  %229 = phi i32 [ %227, %224 ], [ %200, %199 ]
  %230 = phi i64 [ %225, %224 ], [ %201, %199 ]
  %231 = phi ptr [ %226, %224 ], [ %202, %199 ]
  %232 = and i64 %230, %61
  %233 = getelementptr inbounds nuw [4 x i8], ptr %51, i64 %232
  %234 = getelementptr inbounds nuw i8, ptr %233, i64 1
  %235 = load i8, ptr %234, align 1, !tbaa !34
  %236 = zext i8 %235 to i32
  %237 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %229, i32 %236), !nosanitize !16
  %238 = extractvalue { i32, i1 } %237, 1, !nosanitize !16
  br i1 %238, label %242, label %239, !prof !37, !nosanitize !16

239:                                              ; preds = %228
  %240 = zext nneg i8 %235 to i64
  %241 = lshr i64 %230, %240
  br label %243

242:                                              ; preds = %228, %947
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

243:                                              ; preds = %239, %947
  %244 = phi { i32, i1 } [ %962, %947 ], [ %237, %239 ]
  %245 = phi i64 [ %961, %947 ], [ %241, %239 ]
  %246 = phi ptr [ %956, %947 ], [ %233, %239 ]
  %247 = extractvalue { i32, i1 } %244, 0
  %248 = load i8, ptr %246, align 2, !tbaa !38
  %249 = zext i8 %248 to i32
  %250 = and i32 %249, 16
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %944, label %252

252:                                              ; preds = %243
  %253 = getelementptr inbounds nuw i8, ptr %246, i64 2
  %254 = load i16, ptr %253, align 2, !tbaa !39
  %255 = zext i16 %254 to i32
  %256 = and i32 %249, 15
  %257 = icmp ult i32 %247, %256
  br i1 %257, label %258, label %283

258:                                              ; preds = %252
  %259 = getelementptr inbounds nuw i8, ptr %231, i64 1
  %260 = load i8, ptr %231, align 1, !tbaa !33
  %261 = zext i8 %260 to i64
  %262 = zext nneg i32 %247 to i64
  %263 = shl nuw nsw i64 %261, %262
  %264 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %245, i64 %263), !nosanitize !16
  %265 = extractvalue { i64, i1 } %264, 0, !nosanitize !16
  %266 = extractvalue { i64, i1 } %264, 1, !nosanitize !16
  br i1 %266, label %267, label %268, !prof !17, !nosanitize !16

267:                                              ; preds = %258
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !16
  unreachable, !nosanitize !16

268:                                              ; preds = %258
  %269 = add nuw nsw i32 %247, 8
  %270 = icmp samesign ult i32 %269, %256
  br i1 %270, label %271, label %283

271:                                              ; preds = %268
  %272 = load i8, ptr %259, align 1, !tbaa !33
  %273 = zext i8 %272 to i64
  %274 = zext nneg i32 %269 to i64
  %275 = shl nuw nsw i64 %273, %274
  %276 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %265, i64 %275), !nosanitize !16
  %277 = extractvalue { i64, i1 } %276, 1, !nosanitize !16
  br i1 %277, label %278, label %279, !prof !17, !nosanitize !16

278:                                              ; preds = %271
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !16
  unreachable, !nosanitize !16

279:                                              ; preds = %271
  %280 = extractvalue { i64, i1 } %276, 0, !nosanitize !16
  %281 = getelementptr inbounds nuw i8, ptr %231, i64 2
  %282 = add nuw nsw i32 %247, 16
  br label %283

283:                                              ; preds = %252, %279, %268
  %284 = phi i32 [ %282, %279 ], [ %269, %268 ], [ %247, %252 ]
  %285 = phi i64 [ %280, %279 ], [ %265, %268 ], [ %245, %252 ]
  %286 = phi ptr [ %281, %279 ], [ %259, %268 ], [ %231, %252 ]
  %287 = shl nsw i32 -1, %256
  %288 = xor i32 %287, -1
  %289 = trunc i64 %285 to i32
  %290 = and i32 %289, %288
  %291 = add nuw nsw i32 %290, %255
  %292 = zext nneg i32 %256 to i64
  %293 = lshr i64 %285, %292
  %294 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %284, i32 %256), !nosanitize !16
  %295 = extractvalue { i32, i1 } %294, 0, !nosanitize !16
  %296 = extractvalue { i32, i1 } %294, 1, !nosanitize !16
  br i1 %296, label %297, label %298, !prof !17, !nosanitize !16

297:                                              ; preds = %283
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

298:                                              ; preds = %283
  %299 = ptrtoint ptr %106 to i64
  %300 = sub i64 %299, %62
  %301 = trunc i64 %300 to i32
  %302 = icmp ugt i32 %291, %301
  br i1 %302, label %303, label %861

303:                                              ; preds = %298
  %304 = sub nuw nsw i32 %291, %301
  %305 = icmp ugt i32 %304, %38
  br i1 %305, label %306, label %309

306:                                              ; preds = %303
  %307 = load i32, ptr %63, align 8, !tbaa !40
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %995

309:                                              ; preds = %306, %303
  br i1 %64, label %310, label %439

310:                                              ; preds = %309
  %311 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %36, i32 %304), !nosanitize !16
  %312 = extractvalue { i32, i1 } %311, 1, !nosanitize !16
  br i1 %312, label %313, label %314, !prof !17, !nosanitize !16

313:                                              ; preds = %310
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

314:                                              ; preds = %310
  %315 = extractvalue { i32, i1 } %311, 0, !nosanitize !16
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds nuw i8, ptr %42, i64 %316
  %318 = icmp ult i32 %304, %203
  br i1 %318, label %319, label %795

319:                                              ; preds = %314
  %320 = sub nuw nsw i32 %203, %304
  %321 = add i32 %71, %290
  %322 = add i32 %321, %255
  %323 = trunc i64 %299 to i32
  %324 = sub i32 %322, %323
  %325 = icmp ugt i32 %304, %324
  br i1 %325, label %326, label %402, !prof !41, !nosanitize !16

326:                                              ; preds = %319
  %327 = zext nneg i32 %304 to i64
  %328 = icmp samesign ult i32 %304, 4
  br i1 %328, label %378, label %329

329:                                              ; preds = %326
  %330 = trunc i64 %299 to i32
  %331 = add i32 %74, %330
  %332 = add i32 %76, %290
  %333 = add i32 %332, %255
  %334 = sub i32 %331, %333
  %335 = zext i32 %334 to i64
  %336 = add i64 %43, %335
  %337 = sub i64 %299, %336
  %338 = icmp ult i64 %337, 32
  br i1 %338, label %378, label %339

339:                                              ; preds = %329
  %340 = icmp samesign ult i32 %304, 32
  br i1 %340, label %362, label %341

341:                                              ; preds = %339
  %342 = and i64 %327, 28
  %343 = and i64 %327, 2147483616
  %344 = getelementptr i8, ptr %106, i64 %343
  %345 = trunc nuw nsw i64 %343 to i32
  %346 = sub nsw i32 %304, %345
  %347 = getelementptr i8, ptr %317, i64 %343
  br label %348

348:                                              ; preds = %348, %341
  %349 = phi i64 [ 0, %341 ], [ %356, %348 ]
  %350 = getelementptr i8, ptr %106, i64 %349
  %351 = getelementptr i8, ptr %317, i64 %349
  %352 = getelementptr i8, ptr %351, i64 16
  %353 = load <16 x i8>, ptr %351, align 1, !tbaa !33
  %354 = load <16 x i8>, ptr %352, align 1, !tbaa !33
  %355 = getelementptr i8, ptr %350, i64 16
  store <16 x i8> %353, ptr %350, align 1, !tbaa !33
  store <16 x i8> %354, ptr %355, align 1, !tbaa !33
  %356 = add nuw i64 %349, 32
  %357 = icmp eq i64 %356, %343
  br i1 %357, label %358, label %348, !llvm.loop !42

358:                                              ; preds = %348
  %359 = icmp eq i64 %343, %327
  br i1 %359, label %434, label %360

360:                                              ; preds = %358
  %361 = icmp eq i64 %342, 0
  br i1 %361, label %378, label %362, !prof !46

362:                                              ; preds = %339, %360
  %363 = phi i64 [ %343, %360 ], [ 0, %339 ]
  %364 = and i64 %327, 2147483644
  %365 = getelementptr i8, ptr %106, i64 %364
  %366 = trunc nuw nsw i64 %364 to i32
  %367 = sub nsw i32 %304, %366
  %368 = getelementptr i8, ptr %317, i64 %364
  br label %369

369:                                              ; preds = %369, %362
  %370 = phi i64 [ %363, %362 ], [ %374, %369 ]
  %371 = getelementptr i8, ptr %106, i64 %370
  %372 = getelementptr i8, ptr %317, i64 %370
  %373 = load <4 x i8>, ptr %372, align 1, !tbaa !33
  store <4 x i8> %373, ptr %371, align 1, !tbaa !33
  %374 = add nuw i64 %370, 4
  %375 = icmp eq i64 %374, %364
  br i1 %375, label %376, label %369, !llvm.loop !47

376:                                              ; preds = %369
  %377 = icmp eq i64 %364, %327
  br i1 %377, label %434, label %378

378:                                              ; preds = %329, %326, %360, %376
  %379 = phi ptr [ %106, %326 ], [ %106, %329 ], [ %344, %360 ], [ %365, %376 ]
  %380 = phi i32 [ %304, %326 ], [ %304, %329 ], [ %346, %360 ], [ %367, %376 ]
  %381 = phi ptr [ %317, %326 ], [ %317, %329 ], [ %347, %360 ], [ %368, %376 ]
  %382 = add i32 %380, -1
  %383 = and i32 %380, 7
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %396, label %385

385:                                              ; preds = %378, %385
  %386 = phi ptr [ %391, %385 ], [ %379, %378 ]
  %387 = phi i32 [ %392, %385 ], [ %380, %378 ]
  %388 = phi ptr [ %393, %385 ], [ %381, %378 ]
  %389 = phi i32 [ %394, %385 ], [ 0, %378 ]
  %390 = load i8, ptr %388, align 1, !tbaa !33
  store i8 %390, ptr %386, align 1, !tbaa !33
  %391 = getelementptr inbounds nuw i8, ptr %386, i64 1
  %392 = add i32 %387, -1
  %393 = getelementptr inbounds nuw i8, ptr %388, i64 1
  %394 = add i32 %389, 1
  %395 = icmp eq i32 %394, %383
  br i1 %395, label %396, label %385, !llvm.loop !48

396:                                              ; preds = %385, %378
  %397 = phi ptr [ poison, %378 ], [ %391, %385 ]
  %398 = phi ptr [ %379, %378 ], [ %391, %385 ]
  %399 = phi i32 [ %380, %378 ], [ %392, %385 ]
  %400 = phi ptr [ %381, %378 ], [ %393, %385 ]
  %401 = icmp ult i32 %382, 7
  br i1 %401, label %434, label %404

402:                                              ; preds = %319
  %403 = load i8, ptr %317, align 1, !tbaa !33
  store i8 %403, ptr %106, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

404:                                              ; preds = %396, %404
  %405 = phi ptr [ %430, %404 ], [ %398, %396 ]
  %406 = phi i32 [ %431, %404 ], [ %399, %396 ]
  %407 = phi ptr [ %432, %404 ], [ %400, %396 ]
  %408 = load i8, ptr %407, align 1, !tbaa !33
  store i8 %408, ptr %405, align 1, !tbaa !33
  %409 = getelementptr inbounds nuw i8, ptr %405, i64 1
  %410 = getelementptr inbounds nuw i8, ptr %407, i64 1
  %411 = load i8, ptr %410, align 1, !tbaa !33
  store i8 %411, ptr %409, align 1, !tbaa !33
  %412 = getelementptr inbounds nuw i8, ptr %405, i64 2
  %413 = getelementptr inbounds nuw i8, ptr %407, i64 2
  %414 = load i8, ptr %413, align 1, !tbaa !33
  store i8 %414, ptr %412, align 1, !tbaa !33
  %415 = getelementptr inbounds nuw i8, ptr %405, i64 3
  %416 = getelementptr inbounds nuw i8, ptr %407, i64 3
  %417 = load i8, ptr %416, align 1, !tbaa !33
  store i8 %417, ptr %415, align 1, !tbaa !33
  %418 = getelementptr inbounds nuw i8, ptr %405, i64 4
  %419 = getelementptr inbounds nuw i8, ptr %407, i64 4
  %420 = load i8, ptr %419, align 1, !tbaa !33
  store i8 %420, ptr %418, align 1, !tbaa !33
  %421 = getelementptr inbounds nuw i8, ptr %405, i64 5
  %422 = getelementptr inbounds nuw i8, ptr %407, i64 5
  %423 = load i8, ptr %422, align 1, !tbaa !33
  store i8 %423, ptr %421, align 1, !tbaa !33
  %424 = getelementptr inbounds nuw i8, ptr %405, i64 6
  %425 = getelementptr inbounds nuw i8, ptr %407, i64 6
  %426 = load i8, ptr %425, align 1, !tbaa !33
  store i8 %426, ptr %424, align 1, !tbaa !33
  %427 = getelementptr inbounds nuw i8, ptr %405, i64 7
  %428 = getelementptr inbounds nuw i8, ptr %407, i64 7
  %429 = load i8, ptr %428, align 1, !tbaa !33
  store i8 %429, ptr %427, align 1, !tbaa !33
  %430 = getelementptr inbounds nuw i8, ptr %405, i64 8
  %431 = add i32 %406, -8
  %432 = getelementptr inbounds nuw i8, ptr %407, i64 8
  %433 = icmp eq i32 %431, 0
  br i1 %433, label %434, label %404, !llvm.loop !50

434:                                              ; preds = %396, %404, %376, %358
  %435 = phi ptr [ %365, %376 ], [ %344, %358 ], [ %397, %396 ], [ %430, %404 ]
  %436 = zext nneg i32 %291 to i64
  %437 = sub nsw i64 0, %436
  %438 = getelementptr inbounds i8, ptr %435, i64 %437
  br label %795

439:                                              ; preds = %309
  %440 = icmp ult i32 %40, %304
  br i1 %440, label %441, label %670

441:                                              ; preds = %439
  br i1 %66, label %442, label %443, !prof !17, !nosanitize !16

442:                                              ; preds = %441, %1040, %1023
  tail call void @llvm.ubsantrap(i8 0) #4, !nosanitize !16
  unreachable, !nosanitize !16

443:                                              ; preds = %441
  %444 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %67, i32 %304), !nosanitize !16
  %445 = extractvalue { i32, i1 } %444, 1, !nosanitize !16
  br i1 %445, label %446, label %447, !prof !17, !nosanitize !16

446:                                              ; preds = %443
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

447:                                              ; preds = %443
  %448 = extractvalue { i32, i1 } %444, 0, !nosanitize !16
  %449 = zext i32 %448 to i64
  %450 = getelementptr inbounds nuw i8, ptr %42, i64 %449
  %451 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %304, i32 %40), !nosanitize !16
  %452 = extractvalue { i32, i1 } %451, 0, !nosanitize !16
  %453 = extractvalue { i32, i1 } %451, 1, !nosanitize !16
  br i1 %453, label %454, label %455, !prof !17, !nosanitize !16

454:                                              ; preds = %447
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

455:                                              ; preds = %447
  %456 = icmp ult i32 %452, %203
  br i1 %456, label %457, label %795

457:                                              ; preds = %455
  %458 = sub nuw nsw i32 %203, %452
  %459 = add i32 %73, %290
  %460 = add i32 %459, %255
  %461 = trunc i64 %299 to i32
  %462 = sub i32 %460, %461
  %463 = icmp ugt i32 %452, %462
  br i1 %463, label %464, label %544, !prof !41, !nosanitize !16

464:                                              ; preds = %457
  %465 = add i32 %85, %290
  %466 = add i32 %465, %255
  %467 = sub i32 %466, %461
  %468 = zext i32 %467 to i64
  %469 = add nuw nsw i64 %468, 1
  %470 = icmp ult i32 %467, 3
  br i1 %470, label %520, label %471

471:                                              ; preds = %464
  %472 = trunc i64 %299 to i32
  %473 = add i32 %79, %472
  %474 = add i32 %81, %290
  %475 = add i32 %474, %255
  %476 = sub i32 %473, %475
  %477 = zext i32 %476 to i64
  %478 = add i64 %43, %477
  %479 = sub i64 %299, %478
  %480 = icmp ult i64 %479, 32
  br i1 %480, label %520, label %481

481:                                              ; preds = %471
  %482 = icmp ult i32 %467, 31
  br i1 %482, label %504, label %483

483:                                              ; preds = %481
  %484 = and i64 %469, 28
  %485 = and i64 %469, 8589934560
  %486 = getelementptr i8, ptr %106, i64 %485
  %487 = trunc i64 %485 to i32
  %488 = sub i32 %452, %487
  %489 = getelementptr i8, ptr %450, i64 %485
  br label %490

490:                                              ; preds = %490, %483
  %491 = phi i64 [ 0, %483 ], [ %498, %490 ]
  %492 = getelementptr i8, ptr %106, i64 %491
  %493 = getelementptr i8, ptr %450, i64 %491
  %494 = getelementptr i8, ptr %493, i64 16
  %495 = load <16 x i8>, ptr %493, align 1, !tbaa !33
  %496 = load <16 x i8>, ptr %494, align 1, !tbaa !33
  %497 = getelementptr i8, ptr %492, i64 16
  store <16 x i8> %495, ptr %492, align 1, !tbaa !33
  store <16 x i8> %496, ptr %497, align 1, !tbaa !33
  %498 = add nuw i64 %491, 32
  %499 = icmp eq i64 %498, %485
  br i1 %499, label %500, label %490, !llvm.loop !51

500:                                              ; preds = %490
  %501 = icmp eq i64 %469, %485
  br i1 %501, label %576, label %502

502:                                              ; preds = %500
  %503 = icmp eq i64 %484, 0
  br i1 %503, label %520, label %504, !prof !46

504:                                              ; preds = %481, %502
  %505 = phi i64 [ %485, %502 ], [ 0, %481 ]
  %506 = and i64 %469, 8589934588
  %507 = getelementptr i8, ptr %106, i64 %506
  %508 = trunc i64 %506 to i32
  %509 = sub i32 %452, %508
  %510 = getelementptr i8, ptr %450, i64 %506
  br label %511

511:                                              ; preds = %511, %504
  %512 = phi i64 [ %505, %504 ], [ %516, %511 ]
  %513 = getelementptr i8, ptr %106, i64 %512
  %514 = getelementptr i8, ptr %450, i64 %512
  %515 = load <4 x i8>, ptr %514, align 1, !tbaa !33
  store <4 x i8> %515, ptr %513, align 1, !tbaa !33
  %516 = add nuw i64 %512, 4
  %517 = icmp eq i64 %516, %506
  br i1 %517, label %518, label %511, !llvm.loop !52

518:                                              ; preds = %511
  %519 = icmp eq i64 %469, %506
  br i1 %519, label %576, label %520

520:                                              ; preds = %471, %464, %502, %518
  %521 = phi ptr [ %106, %464 ], [ %106, %471 ], [ %486, %502 ], [ %507, %518 ]
  %522 = phi i32 [ %452, %464 ], [ %452, %471 ], [ %488, %502 ], [ %509, %518 ]
  %523 = phi ptr [ %450, %464 ], [ %450, %471 ], [ %489, %502 ], [ %510, %518 ]
  %524 = add i32 %522, -1
  %525 = and i32 %522, 7
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %538, label %527

527:                                              ; preds = %520, %527
  %528 = phi ptr [ %533, %527 ], [ %521, %520 ]
  %529 = phi i32 [ %534, %527 ], [ %522, %520 ]
  %530 = phi ptr [ %535, %527 ], [ %523, %520 ]
  %531 = phi i32 [ %536, %527 ], [ 0, %520 ]
  %532 = load i8, ptr %530, align 1, !tbaa !33
  store i8 %532, ptr %528, align 1, !tbaa !33
  %533 = getelementptr inbounds nuw i8, ptr %528, i64 1
  %534 = add i32 %529, -1
  %535 = getelementptr inbounds nuw i8, ptr %530, i64 1
  %536 = add i32 %531, 1
  %537 = icmp eq i32 %536, %525
  br i1 %537, label %538, label %527, !llvm.loop !53

538:                                              ; preds = %527, %520
  %539 = phi ptr [ poison, %520 ], [ %533, %527 ]
  %540 = phi ptr [ %521, %520 ], [ %533, %527 ]
  %541 = phi i32 [ %522, %520 ], [ %534, %527 ]
  %542 = phi ptr [ %523, %520 ], [ %535, %527 ]
  %543 = icmp ult i32 %524, 7
  br i1 %543, label %576, label %546

544:                                              ; preds = %457
  %545 = load i8, ptr %450, align 1, !tbaa !33
  store i8 %545, ptr %106, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

546:                                              ; preds = %538, %546
  %547 = phi ptr [ %572, %546 ], [ %540, %538 ]
  %548 = phi i32 [ %573, %546 ], [ %541, %538 ]
  %549 = phi ptr [ %574, %546 ], [ %542, %538 ]
  %550 = load i8, ptr %549, align 1, !tbaa !33
  store i8 %550, ptr %547, align 1, !tbaa !33
  %551 = getelementptr inbounds nuw i8, ptr %547, i64 1
  %552 = getelementptr inbounds nuw i8, ptr %549, i64 1
  %553 = load i8, ptr %552, align 1, !tbaa !33
  store i8 %553, ptr %551, align 1, !tbaa !33
  %554 = getelementptr inbounds nuw i8, ptr %547, i64 2
  %555 = getelementptr inbounds nuw i8, ptr %549, i64 2
  %556 = load i8, ptr %555, align 1, !tbaa !33
  store i8 %556, ptr %554, align 1, !tbaa !33
  %557 = getelementptr inbounds nuw i8, ptr %547, i64 3
  %558 = getelementptr inbounds nuw i8, ptr %549, i64 3
  %559 = load i8, ptr %558, align 1, !tbaa !33
  store i8 %559, ptr %557, align 1, !tbaa !33
  %560 = getelementptr inbounds nuw i8, ptr %547, i64 4
  %561 = getelementptr inbounds nuw i8, ptr %549, i64 4
  %562 = load i8, ptr %561, align 1, !tbaa !33
  store i8 %562, ptr %560, align 1, !tbaa !33
  %563 = getelementptr inbounds nuw i8, ptr %547, i64 5
  %564 = getelementptr inbounds nuw i8, ptr %549, i64 5
  %565 = load i8, ptr %564, align 1, !tbaa !33
  store i8 %565, ptr %563, align 1, !tbaa !33
  %566 = getelementptr inbounds nuw i8, ptr %547, i64 6
  %567 = getelementptr inbounds nuw i8, ptr %549, i64 6
  %568 = load i8, ptr %567, align 1, !tbaa !33
  store i8 %568, ptr %566, align 1, !tbaa !33
  %569 = getelementptr inbounds nuw i8, ptr %547, i64 7
  %570 = getelementptr inbounds nuw i8, ptr %549, i64 7
  %571 = load i8, ptr %570, align 1, !tbaa !33
  store i8 %571, ptr %569, align 1, !tbaa !33
  %572 = getelementptr inbounds nuw i8, ptr %547, i64 8
  %573 = add i32 %548, -8
  %574 = getelementptr inbounds nuw i8, ptr %549, i64 8
  %575 = icmp eq i32 %573, 0
  br i1 %575, label %576, label %546, !llvm.loop !54

576:                                              ; preds = %538, %546, %518, %500
  %577 = phi ptr [ %507, %518 ], [ %486, %500 ], [ %539, %538 ], [ %572, %546 ]
  %578 = icmp ult i32 %40, %458
  br i1 %578, label %579, label %795

579:                                              ; preds = %576
  %580 = ptrtoaddr ptr %577 to i64
  %581 = sub i64 %580, %43
  %582 = icmp ult i64 %581, 32
  %583 = select i1 %89, i1 true, i1 %582
  br i1 %583, label %610, label %584

584:                                              ; preds = %579
  br i1 %90, label %599, label %585

585:                                              ; preds = %584
  %586 = getelementptr i8, ptr %577, i64 %92
  br label %587

587:                                              ; preds = %587, %585
  %588 = phi i64 [ 0, %585 ], [ %595, %587 ]
  %589 = getelementptr i8, ptr %577, i64 %588
  %590 = getelementptr i8, ptr %42, i64 %588
  %591 = getelementptr i8, ptr %590, i64 16
  %592 = load <16 x i8>, ptr %590, align 1, !tbaa !33
  %593 = load <16 x i8>, ptr %591, align 1, !tbaa !33
  %594 = getelementptr i8, ptr %589, i64 16
  store <16 x i8> %592, ptr %589, align 1, !tbaa !33
  store <16 x i8> %593, ptr %594, align 1, !tbaa !33
  %595 = add nuw i64 %588, 32
  %596 = icmp eq i64 %595, %92
  br i1 %596, label %597, label %587, !llvm.loop !55

597:                                              ; preds = %587
  br i1 %96, label %664, label %598

598:                                              ; preds = %597
  br i1 %97, label %610, label %599, !prof !46

599:                                              ; preds = %584, %598
  %600 = phi i64 [ %92, %598 ], [ 0, %584 ]
  %601 = getelementptr i8, ptr %577, i64 %98
  br label %602

602:                                              ; preds = %602, %599
  %603 = phi i64 [ %600, %599 ], [ %607, %602 ]
  %604 = getelementptr i8, ptr %577, i64 %603
  %605 = getelementptr i8, ptr %42, i64 %603
  %606 = load <4 x i8>, ptr %605, align 1, !tbaa !33
  store <4 x i8> %606, ptr %604, align 1, !tbaa !33
  %607 = add nuw i64 %603, 4
  %608 = icmp eq i64 %607, %98
  br i1 %608, label %609, label %602, !llvm.loop !56

609:                                              ; preds = %602
  br i1 %102, label %664, label %610

610:                                              ; preds = %579, %598, %609
  %611 = phi ptr [ %577, %579 ], [ %586, %598 ], [ %601, %609 ]
  %612 = phi i32 [ %40, %579 ], [ %94, %598 ], [ %100, %609 ]
  %613 = phi ptr [ %42, %579 ], [ %95, %598 ], [ %101, %609 ]
  %614 = add i32 %612, -1
  %615 = and i32 %612, 7
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %628, label %617

617:                                              ; preds = %610, %617
  %618 = phi ptr [ %623, %617 ], [ %611, %610 ]
  %619 = phi i32 [ %624, %617 ], [ %612, %610 ]
  %620 = phi ptr [ %625, %617 ], [ %613, %610 ]
  %621 = phi i32 [ %626, %617 ], [ 0, %610 ]
  %622 = load i8, ptr %620, align 1, !tbaa !33
  %623 = getelementptr inbounds nuw i8, ptr %618, i64 1
  store i8 %622, ptr %618, align 1, !tbaa !33
  %624 = add i32 %619, -1
  %625 = getelementptr inbounds nuw i8, ptr %620, i64 1
  %626 = add i32 %621, 1
  %627 = icmp eq i32 %626, %615
  br i1 %627, label %628, label %617, !llvm.loop !57

628:                                              ; preds = %617, %610
  %629 = phi ptr [ poison, %610 ], [ %623, %617 ]
  %630 = phi ptr [ %611, %610 ], [ %623, %617 ]
  %631 = phi i32 [ %612, %610 ], [ %624, %617 ]
  %632 = phi ptr [ %613, %610 ], [ %625, %617 ]
  %633 = icmp ult i32 %614, 7
  br i1 %633, label %664, label %634

634:                                              ; preds = %628, %634
  %635 = phi ptr [ %660, %634 ], [ %630, %628 ]
  %636 = phi i32 [ %661, %634 ], [ %631, %628 ]
  %637 = phi ptr [ %662, %634 ], [ %632, %628 ]
  %638 = load i8, ptr %637, align 1, !tbaa !33
  %639 = getelementptr inbounds nuw i8, ptr %635, i64 1
  store i8 %638, ptr %635, align 1, !tbaa !33
  %640 = getelementptr inbounds nuw i8, ptr %637, i64 1
  %641 = load i8, ptr %640, align 1, !tbaa !33
  %642 = getelementptr inbounds nuw i8, ptr %635, i64 2
  store i8 %641, ptr %639, align 1, !tbaa !33
  %643 = getelementptr inbounds nuw i8, ptr %637, i64 2
  %644 = load i8, ptr %643, align 1, !tbaa !33
  %645 = getelementptr inbounds nuw i8, ptr %635, i64 3
  store i8 %644, ptr %642, align 1, !tbaa !33
  %646 = getelementptr inbounds nuw i8, ptr %637, i64 3
  %647 = load i8, ptr %646, align 1, !tbaa !33
  %648 = getelementptr inbounds nuw i8, ptr %635, i64 4
  store i8 %647, ptr %645, align 1, !tbaa !33
  %649 = getelementptr inbounds nuw i8, ptr %637, i64 4
  %650 = load i8, ptr %649, align 1, !tbaa !33
  %651 = getelementptr inbounds nuw i8, ptr %635, i64 5
  store i8 %650, ptr %648, align 1, !tbaa !33
  %652 = getelementptr inbounds nuw i8, ptr %637, i64 5
  %653 = load i8, ptr %652, align 1, !tbaa !33
  %654 = getelementptr inbounds nuw i8, ptr %635, i64 6
  store i8 %653, ptr %651, align 1, !tbaa !33
  %655 = getelementptr inbounds nuw i8, ptr %637, i64 6
  %656 = load i8, ptr %655, align 1, !tbaa !33
  %657 = getelementptr inbounds nuw i8, ptr %635, i64 7
  store i8 %656, ptr %654, align 1, !tbaa !33
  %658 = getelementptr inbounds nuw i8, ptr %637, i64 7
  %659 = load i8, ptr %658, align 1, !tbaa !33
  %660 = getelementptr inbounds nuw i8, ptr %635, i64 8
  store i8 %659, ptr %657, align 1, !tbaa !33
  %661 = add i32 %636, -8
  %662 = getelementptr inbounds nuw i8, ptr %637, i64 8
  %663 = icmp eq i32 %661, 0
  br i1 %663, label %664, label %634, !llvm.loop !58

664:                                              ; preds = %628, %634, %609, %597
  %665 = phi ptr [ %601, %609 ], [ %586, %597 ], [ %629, %628 ], [ %660, %634 ]
  %666 = sub nuw nsw i32 %458, %40
  %667 = zext nneg i32 %291 to i64
  %668 = sub nsw i64 0, %667
  %669 = getelementptr inbounds i8, ptr %665, i64 %668
  br label %795

670:                                              ; preds = %439
  %671 = sub nuw i32 %40, %304
  %672 = zext i32 %671 to i64
  %673 = getelementptr inbounds nuw i8, ptr %42, i64 %672
  %674 = icmp ult i32 %304, %203
  br i1 %674, label %675, label %795

675:                                              ; preds = %670
  %676 = sub nuw nsw i32 %203, %304
  %677 = add i32 %71, %290
  %678 = add i32 %677, %255
  %679 = trunc i64 %299 to i32
  %680 = sub i32 %678, %679
  %681 = icmp ugt i32 %304, %680
  br i1 %681, label %682, label %758, !prof !41, !nosanitize !16

682:                                              ; preds = %675
  %683 = zext nneg i32 %304 to i64
  %684 = icmp samesign ult i32 %304, 4
  br i1 %684, label %734, label %685

685:                                              ; preds = %682
  %686 = trunc i64 %299 to i32
  %687 = add i32 %86, %686
  %688 = add i32 %88, %290
  %689 = add i32 %688, %255
  %690 = sub i32 %687, %689
  %691 = zext i32 %690 to i64
  %692 = add i64 %43, %691
  %693 = sub i64 %299, %692
  %694 = icmp ult i64 %693, 32
  br i1 %694, label %734, label %695

695:                                              ; preds = %685
  %696 = icmp samesign ult i32 %304, 32
  br i1 %696, label %718, label %697

697:                                              ; preds = %695
  %698 = and i64 %683, 28
  %699 = and i64 %683, 2147483616
  %700 = getelementptr i8, ptr %106, i64 %699
  %701 = trunc nuw nsw i64 %699 to i32
  %702 = sub nsw i32 %304, %701
  %703 = getelementptr i8, ptr %673, i64 %699
  br label %704

704:                                              ; preds = %704, %697
  %705 = phi i64 [ 0, %697 ], [ %712, %704 ]
  %706 = getelementptr i8, ptr %106, i64 %705
  %707 = getelementptr i8, ptr %673, i64 %705
  %708 = getelementptr i8, ptr %707, i64 16
  %709 = load <16 x i8>, ptr %707, align 1, !tbaa !33
  %710 = load <16 x i8>, ptr %708, align 1, !tbaa !33
  %711 = getelementptr i8, ptr %706, i64 16
  store <16 x i8> %709, ptr %706, align 1, !tbaa !33
  store <16 x i8> %710, ptr %711, align 1, !tbaa !33
  %712 = add nuw i64 %705, 32
  %713 = icmp eq i64 %712, %699
  br i1 %713, label %714, label %704, !llvm.loop !59

714:                                              ; preds = %704
  %715 = icmp eq i64 %699, %683
  br i1 %715, label %790, label %716

716:                                              ; preds = %714
  %717 = icmp eq i64 %698, 0
  br i1 %717, label %734, label %718, !prof !46

718:                                              ; preds = %695, %716
  %719 = phi i64 [ %699, %716 ], [ 0, %695 ]
  %720 = and i64 %683, 2147483644
  %721 = getelementptr i8, ptr %106, i64 %720
  %722 = trunc nuw nsw i64 %720 to i32
  %723 = sub nsw i32 %304, %722
  %724 = getelementptr i8, ptr %673, i64 %720
  br label %725

725:                                              ; preds = %725, %718
  %726 = phi i64 [ %719, %718 ], [ %730, %725 ]
  %727 = getelementptr i8, ptr %106, i64 %726
  %728 = getelementptr i8, ptr %673, i64 %726
  %729 = load <4 x i8>, ptr %728, align 1, !tbaa !33
  store <4 x i8> %729, ptr %727, align 1, !tbaa !33
  %730 = add nuw i64 %726, 4
  %731 = icmp eq i64 %730, %720
  br i1 %731, label %732, label %725, !llvm.loop !60

732:                                              ; preds = %725
  %733 = icmp eq i64 %720, %683
  br i1 %733, label %790, label %734

734:                                              ; preds = %685, %682, %716, %732
  %735 = phi ptr [ %106, %682 ], [ %106, %685 ], [ %700, %716 ], [ %721, %732 ]
  %736 = phi i32 [ %304, %682 ], [ %304, %685 ], [ %702, %716 ], [ %723, %732 ]
  %737 = phi ptr [ %673, %682 ], [ %673, %685 ], [ %703, %716 ], [ %724, %732 ]
  %738 = add i32 %736, -1
  %739 = and i32 %736, 7
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %752, label %741

741:                                              ; preds = %734, %741
  %742 = phi ptr [ %747, %741 ], [ %735, %734 ]
  %743 = phi i32 [ %748, %741 ], [ %736, %734 ]
  %744 = phi ptr [ %749, %741 ], [ %737, %734 ]
  %745 = phi i32 [ %750, %741 ], [ 0, %734 ]
  %746 = load i8, ptr %744, align 1, !tbaa !33
  store i8 %746, ptr %742, align 1, !tbaa !33
  %747 = getelementptr inbounds nuw i8, ptr %742, i64 1
  %748 = add i32 %743, -1
  %749 = getelementptr inbounds nuw i8, ptr %744, i64 1
  %750 = add i32 %745, 1
  %751 = icmp eq i32 %750, %739
  br i1 %751, label %752, label %741, !llvm.loop !61

752:                                              ; preds = %741, %734
  %753 = phi ptr [ poison, %734 ], [ %747, %741 ]
  %754 = phi ptr [ %735, %734 ], [ %747, %741 ]
  %755 = phi i32 [ %736, %734 ], [ %748, %741 ]
  %756 = phi ptr [ %737, %734 ], [ %749, %741 ]
  %757 = icmp ult i32 %738, 7
  br i1 %757, label %790, label %760

758:                                              ; preds = %675
  %759 = load i8, ptr %673, align 1, !tbaa !33
  store i8 %759, ptr %106, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

760:                                              ; preds = %752, %760
  %761 = phi ptr [ %786, %760 ], [ %754, %752 ]
  %762 = phi i32 [ %787, %760 ], [ %755, %752 ]
  %763 = phi ptr [ %788, %760 ], [ %756, %752 ]
  %764 = load i8, ptr %763, align 1, !tbaa !33
  store i8 %764, ptr %761, align 1, !tbaa !33
  %765 = getelementptr inbounds nuw i8, ptr %761, i64 1
  %766 = getelementptr inbounds nuw i8, ptr %763, i64 1
  %767 = load i8, ptr %766, align 1, !tbaa !33
  store i8 %767, ptr %765, align 1, !tbaa !33
  %768 = getelementptr inbounds nuw i8, ptr %761, i64 2
  %769 = getelementptr inbounds nuw i8, ptr %763, i64 2
  %770 = load i8, ptr %769, align 1, !tbaa !33
  store i8 %770, ptr %768, align 1, !tbaa !33
  %771 = getelementptr inbounds nuw i8, ptr %761, i64 3
  %772 = getelementptr inbounds nuw i8, ptr %763, i64 3
  %773 = load i8, ptr %772, align 1, !tbaa !33
  store i8 %773, ptr %771, align 1, !tbaa !33
  %774 = getelementptr inbounds nuw i8, ptr %761, i64 4
  %775 = getelementptr inbounds nuw i8, ptr %763, i64 4
  %776 = load i8, ptr %775, align 1, !tbaa !33
  store i8 %776, ptr %774, align 1, !tbaa !33
  %777 = getelementptr inbounds nuw i8, ptr %761, i64 5
  %778 = getelementptr inbounds nuw i8, ptr %763, i64 5
  %779 = load i8, ptr %778, align 1, !tbaa !33
  store i8 %779, ptr %777, align 1, !tbaa !33
  %780 = getelementptr inbounds nuw i8, ptr %761, i64 6
  %781 = getelementptr inbounds nuw i8, ptr %763, i64 6
  %782 = load i8, ptr %781, align 1, !tbaa !33
  store i8 %782, ptr %780, align 1, !tbaa !33
  %783 = getelementptr inbounds nuw i8, ptr %761, i64 7
  %784 = getelementptr inbounds nuw i8, ptr %763, i64 7
  %785 = load i8, ptr %784, align 1, !tbaa !33
  store i8 %785, ptr %783, align 1, !tbaa !33
  %786 = getelementptr inbounds nuw i8, ptr %761, i64 8
  %787 = add i32 %762, -8
  %788 = getelementptr inbounds nuw i8, ptr %763, i64 8
  %789 = icmp eq i32 %787, 0
  br i1 %789, label %790, label %760, !llvm.loop !62

790:                                              ; preds = %752, %760, %732, %714
  %791 = phi ptr [ %721, %732 ], [ %700, %714 ], [ %753, %752 ], [ %786, %760 ]
  %792 = zext nneg i32 %291 to i64
  %793 = sub nsw i64 0, %792
  %794 = getelementptr inbounds i8, ptr %791, i64 %793
  br label %795

795:                                              ; preds = %576, %664, %455, %790, %670, %314, %434
  %796 = phi ptr [ %435, %434 ], [ %106, %314 ], [ %665, %664 ], [ %577, %576 ], [ %106, %455 ], [ %791, %790 ], [ %106, %670 ]
  %797 = phi i32 [ %320, %434 ], [ %203, %314 ], [ %666, %664 ], [ %458, %576 ], [ %203, %455 ], [ %676, %790 ], [ %203, %670 ]
  %798 = phi ptr [ %438, %434 ], [ %317, %314 ], [ %669, %664 ], [ %42, %576 ], [ %450, %455 ], [ %794, %790 ], [ %673, %670 ]
  %799 = icmp ugt i32 %797, 2
  br i1 %799, label %800, label %848

800:                                              ; preds = %795
  %801 = add i32 %797, -3
  %802 = udiv i32 %801, 3
  %803 = and i32 %802, 1
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %805, label %816

805:                                              ; preds = %800
  %806 = getelementptr inbounds nuw i8, ptr %798, i64 1
  %807 = load i8, ptr %798, align 1, !tbaa !33
  %808 = getelementptr inbounds nuw i8, ptr %796, i64 1
  store i8 %807, ptr %796, align 1, !tbaa !33
  %809 = getelementptr inbounds nuw i8, ptr %798, i64 2
  %810 = load i8, ptr %806, align 1, !tbaa !33
  %811 = getelementptr inbounds nuw i8, ptr %796, i64 2
  store i8 %810, ptr %808, align 1, !tbaa !33
  %812 = load i8, ptr %809, align 1, !tbaa !33
  store i8 %812, ptr %811, align 1, !tbaa !33
  %813 = add i32 %797, -3
  %814 = getelementptr inbounds nuw i8, ptr %796, i64 3
  %815 = getelementptr inbounds nuw i8, ptr %798, i64 3
  br label %816

816:                                              ; preds = %805, %800
  %817 = phi ptr [ %798, %800 ], [ %815, %805 ]
  %818 = phi i32 [ %797, %800 ], [ %813, %805 ]
  %819 = phi ptr [ %796, %800 ], [ %814, %805 ]
  %820 = phi i32 [ poison, %800 ], [ %813, %805 ]
  %821 = phi ptr [ poison, %800 ], [ %814, %805 ]
  %822 = phi ptr [ poison, %800 ], [ %815, %805 ]
  %823 = icmp ult i32 %801, 3
  br i1 %823, label %848, label %824

824:                                              ; preds = %816, %824
  %825 = phi ptr [ %846, %824 ], [ %817, %816 ]
  %826 = phi i32 [ %844, %824 ], [ %818, %816 ]
  %827 = phi ptr [ %845, %824 ], [ %819, %816 ]
  %828 = getelementptr inbounds nuw i8, ptr %825, i64 1
  %829 = load i8, ptr %825, align 1, !tbaa !33
  %830 = getelementptr inbounds nuw i8, ptr %827, i64 1
  store i8 %829, ptr %827, align 1, !tbaa !33
  %831 = getelementptr inbounds nuw i8, ptr %825, i64 2
  %832 = load i8, ptr %828, align 1, !tbaa !33
  %833 = getelementptr inbounds nuw i8, ptr %827, i64 2
  store i8 %832, ptr %830, align 1, !tbaa !33
  %834 = load i8, ptr %831, align 1, !tbaa !33
  store i8 %834, ptr %833, align 1, !tbaa !33
  %835 = getelementptr inbounds nuw i8, ptr %827, i64 3
  %836 = getelementptr inbounds nuw i8, ptr %825, i64 3
  %837 = getelementptr inbounds nuw i8, ptr %825, i64 4
  %838 = load i8, ptr %836, align 1, !tbaa !33
  %839 = getelementptr inbounds nuw i8, ptr %827, i64 4
  store i8 %838, ptr %835, align 1, !tbaa !33
  %840 = getelementptr inbounds nuw i8, ptr %825, i64 5
  %841 = load i8, ptr %837, align 1, !tbaa !33
  %842 = getelementptr inbounds nuw i8, ptr %827, i64 5
  store i8 %841, ptr %839, align 1, !tbaa !33
  %843 = load i8, ptr %840, align 1, !tbaa !33
  store i8 %843, ptr %842, align 1, !tbaa !33
  %844 = add i32 %826, -6
  %845 = getelementptr inbounds nuw i8, ptr %827, i64 6
  %846 = getelementptr inbounds nuw i8, ptr %825, i64 6
  %847 = icmp ugt i32 %844, 2
  br i1 %847, label %824, label %848, !llvm.loop !63

848:                                              ; preds = %816, %824, %795
  %849 = phi ptr [ %796, %795 ], [ %821, %816 ], [ %845, %824 ]
  %850 = phi i32 [ %797, %795 ], [ %820, %816 ], [ %844, %824 ]
  %851 = phi ptr [ %798, %795 ], [ %822, %816 ], [ %846, %824 ]
  %852 = icmp eq i32 %850, 0
  br i1 %852, label %987, label %853

853:                                              ; preds = %848
  %854 = load i8, ptr %851, align 1, !tbaa !33
  %855 = getelementptr inbounds nuw i8, ptr %849, i64 1
  store i8 %854, ptr %849, align 1, !tbaa !33
  %856 = icmp eq i32 %850, 2
  br i1 %856, label %857, label %987

857:                                              ; preds = %853
  %858 = getelementptr inbounds nuw i8, ptr %851, i64 1
  %859 = load i8, ptr %858, align 1, !tbaa !33
  %860 = getelementptr inbounds nuw i8, ptr %849, i64 2
  store i8 %859, ptr %855, align 1, !tbaa !33
  br label %987

861:                                              ; preds = %298
  %862 = zext nneg i32 %291 to i64
  %863 = sub nsw i64 0, %862
  %864 = getelementptr inbounds i8, ptr %106, i64 %863
  %865 = udiv i32 %203, 3
  %866 = add nsw i32 %203, -3
  %867 = tail call i32 @llvm.umin.i32(i32 %866, i32 2)
  %868 = xor i32 %867, -1
  %869 = add nsw i32 %203, %868
  %870 = udiv i32 %869, 3
  %871 = icmp samesign ugt i32 %865, %870
  br i1 %871, label %872, label %893, !prof !41, !nosanitize !16

872:                                              ; preds = %861
  %873 = and i32 %870, 1
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %875, label %886

875:                                              ; preds = %872
  %876 = getelementptr inbounds nuw i8, ptr %864, i64 1
  %877 = load i8, ptr %864, align 1, !tbaa !33
  %878 = getelementptr inbounds nuw i8, ptr %106, i64 1
  store i8 %877, ptr %106, align 1, !tbaa !33
  %879 = getelementptr inbounds nuw i8, ptr %864, i64 2
  %880 = load i8, ptr %876, align 1, !tbaa !33
  %881 = getelementptr inbounds nuw i8, ptr %106, i64 2
  store i8 %880, ptr %878, align 1, !tbaa !33
  %882 = load i8, ptr %879, align 1, !tbaa !33
  store i8 %882, ptr %881, align 1, !tbaa !33
  %883 = add nsw i32 %203, -3
  %884 = getelementptr inbounds nuw i8, ptr %106, i64 3
  %885 = getelementptr inbounds nuw i8, ptr %864, i64 3
  br label %886

886:                                              ; preds = %875, %872
  %887 = phi ptr [ %106, %872 ], [ %884, %875 ]
  %888 = phi i32 [ %203, %872 ], [ %883, %875 ]
  %889 = phi ptr [ %864, %872 ], [ %885, %875 ]
  %890 = phi ptr [ poison, %872 ], [ %884, %875 ]
  %891 = phi ptr [ poison, %872 ], [ %885, %875 ]
  %892 = icmp ult i32 %869, 3
  br i1 %892, label %928, label %901

893:                                              ; preds = %861
  %894 = getelementptr inbounds nuw i8, ptr %864, i64 1
  %895 = load i8, ptr %864, align 1, !tbaa !33
  %896 = getelementptr inbounds nuw i8, ptr %106, i64 1
  store i8 %895, ptr %106, align 1, !tbaa !33
  %897 = getelementptr inbounds nuw i8, ptr %864, i64 2
  %898 = load i8, ptr %894, align 1, !tbaa !33
  %899 = getelementptr inbounds nuw i8, ptr %106, i64 2
  store i8 %898, ptr %896, align 1, !tbaa !33
  %900 = load i8, ptr %897, align 1, !tbaa !33
  store i8 %900, ptr %899, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

901:                                              ; preds = %886, %901
  %902 = phi ptr [ %922, %901 ], [ %887, %886 ]
  %903 = phi i32 [ %921, %901 ], [ %888, %886 ]
  %904 = phi ptr [ %923, %901 ], [ %889, %886 ]
  %905 = getelementptr inbounds nuw i8, ptr %904, i64 1
  %906 = load i8, ptr %904, align 1, !tbaa !33
  %907 = getelementptr inbounds nuw i8, ptr %902, i64 1
  store i8 %906, ptr %902, align 1, !tbaa !33
  %908 = getelementptr inbounds nuw i8, ptr %904, i64 2
  %909 = load i8, ptr %905, align 1, !tbaa !33
  %910 = getelementptr inbounds nuw i8, ptr %902, i64 2
  store i8 %909, ptr %907, align 1, !tbaa !33
  %911 = load i8, ptr %908, align 1, !tbaa !33
  store i8 %911, ptr %910, align 1, !tbaa !33
  %912 = getelementptr inbounds nuw i8, ptr %902, i64 3
  %913 = getelementptr inbounds nuw i8, ptr %904, i64 3
  %914 = getelementptr inbounds nuw i8, ptr %904, i64 4
  %915 = load i8, ptr %913, align 1, !tbaa !33
  %916 = getelementptr inbounds nuw i8, ptr %902, i64 4
  store i8 %915, ptr %912, align 1, !tbaa !33
  %917 = getelementptr inbounds nuw i8, ptr %904, i64 5
  %918 = load i8, ptr %914, align 1, !tbaa !33
  %919 = getelementptr inbounds nuw i8, ptr %902, i64 5
  store i8 %918, ptr %916, align 1, !tbaa !33
  %920 = load i8, ptr %917, align 1, !tbaa !33
  store i8 %920, ptr %919, align 1, !tbaa !33
  %921 = add i32 %903, -6
  %922 = getelementptr inbounds nuw i8, ptr %902, i64 6
  %923 = getelementptr inbounds nuw i8, ptr %904, i64 6
  %924 = icmp ugt i32 %921, 2
  br i1 %924, label %901, label %925, !llvm.loop !64

925:                                              ; preds = %901
  %926 = getelementptr inbounds nuw i8, ptr %902, i64 3
  %927 = getelementptr inbounds nuw i8, ptr %904, i64 3
  br label %928

928:                                              ; preds = %886, %925
  %929 = phi ptr [ %106, %886 ], [ %926, %925 ]
  %930 = phi ptr [ %864, %886 ], [ %927, %925 ]
  %931 = phi ptr [ %890, %886 ], [ %922, %925 ]
  %932 = phi ptr [ %891, %886 ], [ %923, %925 ]
  %933 = mul i32 %870, -3
  %934 = add i32 %933, %866
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %987, label %936

936:                                              ; preds = %928
  %937 = load i8, ptr %932, align 1, !tbaa !33
  %938 = getelementptr inbounds nuw i8, ptr %929, i64 4
  store i8 %937, ptr %931, align 1, !tbaa !33
  %939 = icmp eq i32 %934, 2
  br i1 %939, label %940, label %987

940:                                              ; preds = %936
  %941 = getelementptr inbounds nuw i8, ptr %930, i64 4
  %942 = load i8, ptr %941, align 1, !tbaa !33
  %943 = getelementptr inbounds nuw i8, ptr %929, i64 5
  store i8 %942, ptr %938, align 1, !tbaa !33
  br label %987

944:                                              ; preds = %243
  %945 = and i32 %249, 64
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %947, label %995

947:                                              ; preds = %944
  %948 = shl nsw i32 -1, %249
  %949 = xor i32 %948, -1
  %950 = getelementptr inbounds nuw i8, ptr %246, i64 2
  %951 = load i16, ptr %950, align 2, !tbaa !39
  %952 = zext i16 %951 to i64
  %953 = getelementptr inbounds nuw [4 x i8], ptr %51, i64 %952
  %954 = zext nneg i32 %949 to i64
  %955 = and i64 %245, %954
  %956 = getelementptr inbounds nuw [4 x i8], ptr %953, i64 %955
  %957 = getelementptr inbounds nuw i8, ptr %956, i64 1
  %958 = load i8, ptr %957, align 1, !tbaa !34
  %959 = zext i8 %958 to i32
  %960 = zext nneg i8 %958 to i64
  %961 = lshr i64 %245, %960
  %962 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %247, i32 %959), !nosanitize !16
  %963 = extractvalue { i32, i1 } %962, 1, !nosanitize !16
  br i1 %963, label %242, label %243, !prof !65, !nosanitize !16

964:                                              ; preds = %160
  %965 = and i32 %153, 64
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %967, label %984

967:                                              ; preds = %964
  %968 = shl nsw i32 -1, %153
  %969 = xor i32 %968, -1
  %970 = getelementptr inbounds nuw i8, ptr %150, i64 2
  %971 = load i16, ptr %970, align 2, !tbaa !39
  %972 = zext i16 %971 to i64
  %973 = getelementptr inbounds nuw [4 x i8], ptr %49, i64 %972
  %974 = zext nneg i32 %969 to i64
  %975 = and i64 %149, %974
  %976 = getelementptr inbounds nuw [4 x i8], ptr %973, i64 %975
  %977 = getelementptr inbounds nuw i8, ptr %976, i64 1
  %978 = load i8, ptr %977, align 1, !tbaa !34
  %979 = zext i8 %978 to i32
  %980 = zext nneg i8 %978 to i64
  %981 = lshr i64 %149, %980
  %982 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %151, i32 %979), !nosanitize !16
  %983 = extractvalue { i32, i1 } %982, 1, !nosanitize !16
  br i1 %983, label %146, label %147, !prof !65, !nosanitize !16

984:                                              ; preds = %964
  %985 = and i32 %153, 32
  %986 = icmp eq i32 %985, 0
  br i1 %986, label %995, label %1001

987:                                              ; preds = %155, %928, %940, %936, %848, %857, %853
  %988 = phi i32 [ %151, %155 ], [ %295, %857 ], [ %295, %853 ], [ %295, %848 ], [ %295, %940 ], [ %295, %936 ], [ %295, %928 ]
  %989 = phi i64 [ %149, %155 ], [ %293, %857 ], [ %293, %853 ], [ %293, %848 ], [ %293, %940 ], [ %293, %936 ], [ %293, %928 ]
  %990 = phi ptr [ %159, %155 ], [ %860, %857 ], [ %855, %853 ], [ %849, %848 ], [ %943, %940 ], [ %938, %936 ], [ %931, %928 ]
  %991 = phi ptr [ %135, %155 ], [ %286, %857 ], [ %286, %853 ], [ %286, %848 ], [ %286, %940 ], [ %286, %936 ], [ %286, %928 ]
  %992 = icmp ult ptr %991, %14
  %993 = icmp ult ptr %990, %34
  %994 = select i1 %992, i1 %993, i1 false
  br i1 %994, label %103, label %1007, !llvm.loop !66

995:                                              ; preds = %306, %944, %984
  %996 = phi ptr [ @.str.2, %984 ], [ @.str.1, %944 ], [ @.str, %306 ]
  %997 = phi i32 [ %151, %984 ], [ %247, %944 ], [ %295, %306 ]
  %998 = phi i64 [ %149, %984 ], [ %245, %944 ], [ %293, %306 ]
  %999 = phi ptr [ %135, %984 ], [ %231, %944 ], [ %286, %306 ]
  %1000 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %996, ptr %1000, align 8, !tbaa !67
  br label %1001

1001:                                             ; preds = %995, %984
  %1002 = phi i32 [ 16191, %984 ], [ 16209, %995 ]
  %1003 = phi i32 [ %151, %984 ], [ %997, %995 ]
  %1004 = phi i64 [ %149, %984 ], [ %998, %995 ]
  %1005 = phi ptr [ %135, %984 ], [ %999, %995 ]
  %1006 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %1002, ptr %1006, align 8, !tbaa !68
  br label %1007

1007:                                             ; preds = %987, %1001
  %1008 = phi i32 [ %1003, %1001 ], [ %988, %987 ]
  %1009 = phi i64 [ %1004, %1001 ], [ %989, %987 ]
  %1010 = phi ptr [ %106, %1001 ], [ %990, %987 ]
  %1011 = phi ptr [ %1005, %1001 ], [ %991, %987 ]
  %1012 = lshr i32 %1008, 3
  %1013 = zext nneg i32 %1012 to i64
  %1014 = sub nsw i64 0, %1013
  %1015 = getelementptr inbounds i8, ptr %1011, i64 %1014
  %1016 = and i32 %1008, -8
  %1017 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1008, i32 %1016), !nosanitize !16
  %1018 = extractvalue { i32, i1 } %1017, 1, !nosanitize !16
  br i1 %1018, label %1019, label %1021, !prof !17, !nosanitize !16

1019:                                             ; preds = %1007
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

1020:                                             ; preds = %1046, %1029
  tail call void @llvm.ubsantrap(i8 21) #4, !nosanitize !16
  unreachable, !nosanitize !16

1021:                                             ; preds = %1007
  store ptr %1015, ptr %0, align 8, !tbaa !14
  store ptr %1010, ptr %15, align 8, !tbaa !18
  %1022 = icmp ult ptr %1015, %14
  br i1 %1022, label %1023, label %1029

1023:                                             ; preds = %1021
  %1024 = ptrtoint ptr %14 to i64
  %1025 = ptrtoint ptr %1015 to i64
  %1026 = sub i64 %1024, %1025
  %1027 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1026, i64 5), !nosanitize !16
  %1028 = extractvalue { i64, i1 } %1027, 1, !nosanitize !16
  br i1 %1028, label %442, label %1035, !prof !17, !nosanitize !16

1029:                                             ; preds = %1021
  %1030 = ptrtoint ptr %1015 to i64
  %1031 = ptrtoint ptr %14 to i64
  %1032 = sub i64 %1030, %1031
  %1033 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 5, i64 %1032), !nosanitize !16
  %1034 = extractvalue { i64, i1 } %1033, 1, !nosanitize !16
  br i1 %1034, label %1020, label %1035, !prof !17, !nosanitize !16

1035:                                             ; preds = %1029, %1023
  %1036 = phi { i64, i1 } [ %1027, %1023 ], [ %1033, %1029 ]
  %1037 = extractvalue { i64, i1 } %1036, 0
  %1038 = trunc i64 %1037 to i32
  store i32 %1038, ptr %6, align 8, !tbaa !15
  %1039 = icmp ult ptr %1010, %34
  br i1 %1039, label %1040, label %1046

1040:                                             ; preds = %1035
  %1041 = ptrtoint ptr %34 to i64
  %1042 = ptrtoint ptr %1010 to i64
  %1043 = sub i64 %1041, %1042
  %1044 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1043, i64 257), !nosanitize !16
  %1045 = extractvalue { i64, i1 } %1044, 1, !nosanitize !16
  br i1 %1045, label %442, label %1052, !prof !17, !nosanitize !16

1046:                                             ; preds = %1035
  %1047 = ptrtoint ptr %1010 to i64
  %1048 = ptrtoint ptr %34 to i64
  %1049 = sub i64 %1047, %1048
  %1050 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 257, i64 %1049), !nosanitize !16
  %1051 = extractvalue { i64, i1 } %1050, 1, !nosanitize !16
  br i1 %1051, label %1020, label %1052, !prof !17, !nosanitize !16

1052:                                             ; preds = %1046, %1040
  %1053 = phi { i64, i1 } [ %1044, %1040 ], [ %1050, %1046 ]
  %1054 = extractvalue { i64, i1 } %1053, 0
  %1055 = extractvalue { i32, i1 } %1017, 0, !nosanitize !16
  %1056 = shl nsw i32 -1, %1055
  %1057 = xor i32 %1056, -1
  %1058 = zext nneg i32 %1057 to i64
  %1059 = and i64 %1009, %1058
  %1060 = trunc i64 %1054 to i32
  store i32 %1060, ptr %18, align 8, !tbaa !19
  store i64 %1059, ptr %44, align 8, !tbaa !27
  store i32 %1055, ptr %46, align 8, !tbaa !28
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
