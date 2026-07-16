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

103:                                              ; preds = %981, %27
  %104 = phi i32 [ %47, %27 ], [ %982, %981 ]
  %105 = phi i64 [ %45, %27 ], [ %983, %981 ]
  %106 = phi ptr [ %16, %27 ], [ %984, %981 ]
  %107 = phi ptr [ %5, %27 ], [ %985, %981 ]
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
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
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
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
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

146:                                              ; preds = %961, %132
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

147:                                              ; preds = %961, %143
  %148 = phi { i32, i1 } [ %976, %961 ], [ %141, %143 ]
  %149 = phi i64 [ %975, %961 ], [ %145, %143 ]
  %150 = phi ptr [ %970, %961 ], [ %137, %143 ]
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
  br label %981

160:                                              ; preds = %147
  %161 = and i32 %153, 16
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %958, label %163

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
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

179:                                              ; preds = %171
  %180 = extractvalue { i64, i1 } %176, 0, !nosanitize !16
  %181 = getelementptr inbounds nuw i8, ptr %135, i64 1
  %182 = add nuw nsw i32 %151, 8
  br label %183

183:                                              ; preds = %179, %169
  %184 = phi i32 [ %182, %179 ], [ %151, %169 ]
  %185 = phi i64 [ %180, %179 ], [ %149, %169 ]
  %186 = phi ptr [ %181, %179 ], [ %135, %169 ]
  %187 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %184, i32 %167), !nosanitize !16
  %188 = extractvalue { i32, i1 } %187, 1, !nosanitize !16
  br i1 %188, label %189, label %190, !prof !17, !nosanitize !16

189:                                              ; preds = %183
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
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
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
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
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
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

242:                                              ; preds = %941, %228
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

243:                                              ; preds = %941, %239
  %244 = phi { i32, i1 } [ %956, %941 ], [ %237, %239 ]
  %245 = phi i64 [ %955, %941 ], [ %241, %239 ]
  %246 = phi ptr [ %950, %941 ], [ %233, %239 ]
  %247 = extractvalue { i32, i1 } %244, 0
  %248 = load i8, ptr %246, align 2, !tbaa !38
  %249 = zext i8 %248 to i32
  %250 = and i32 %249, 16
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %938, label %252

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
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
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
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

279:                                              ; preds = %271
  %280 = extractvalue { i64, i1 } %276, 0, !nosanitize !16
  %281 = getelementptr inbounds nuw i8, ptr %231, i64 2
  %282 = add nuw nsw i32 %247, 16
  br label %283

283:                                              ; preds = %279, %268, %252
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
  %296 = ptrtoint ptr %106 to i64
  %297 = sub i64 %296, %62
  %298 = trunc i64 %297 to i32
  %299 = icmp ugt i32 %291, %298
  br i1 %299, label %300, label %855

300:                                              ; preds = %283
  %301 = sub nuw nsw i32 %291, %298
  %302 = icmp ugt i32 %301, %38
  br i1 %302, label %303, label %306

303:                                              ; preds = %300
  %304 = load i32, ptr %63, align 8, !tbaa !40
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %989

306:                                              ; preds = %303, %300
  br i1 %64, label %307, label %436

307:                                              ; preds = %306
  %308 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %36, i32 %301), !nosanitize !16
  %309 = extractvalue { i32, i1 } %308, 1, !nosanitize !16
  br i1 %309, label %310, label %311, !prof !17, !nosanitize !16

310:                                              ; preds = %307
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

311:                                              ; preds = %307
  %312 = extractvalue { i32, i1 } %308, 0, !nosanitize !16
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds nuw i8, ptr %42, i64 %313
  %315 = icmp ult i32 %301, %203
  br i1 %315, label %316, label %789

316:                                              ; preds = %311
  %317 = sub nuw nsw i32 %203, %301
  %318 = add i32 %71, %290
  %319 = add i32 %318, %255
  %320 = trunc i64 %296 to i32
  %321 = sub i32 %319, %320
  %322 = icmp ugt i32 %301, %321
  br i1 %322, label %323, label %399, !prof !41, !nosanitize !16

323:                                              ; preds = %316
  %324 = zext nneg i32 %301 to i64
  %325 = icmp samesign ult i32 %301, 4
  br i1 %325, label %375, label %326

326:                                              ; preds = %323
  %327 = trunc i64 %296 to i32
  %328 = add i32 %74, %327
  %329 = add i32 %76, %290
  %330 = add i32 %329, %255
  %331 = sub i32 %328, %330
  %332 = zext i32 %331 to i64
  %333 = add i64 %43, %332
  %334 = sub i64 %296, %333
  %335 = icmp ult i64 %334, 32
  br i1 %335, label %375, label %336

336:                                              ; preds = %326
  %337 = icmp samesign ult i32 %301, 32
  br i1 %337, label %359, label %338

338:                                              ; preds = %336
  %339 = and i64 %324, 28
  %340 = and i64 %324, 2147483616
  %341 = getelementptr i8, ptr %106, i64 %340
  %342 = trunc nuw nsw i64 %340 to i32
  %343 = sub nsw i32 %301, %342
  %344 = getelementptr i8, ptr %314, i64 %340
  br label %345

345:                                              ; preds = %345, %338
  %346 = phi i64 [ 0, %338 ], [ %353, %345 ]
  %347 = getelementptr i8, ptr %106, i64 %346
  %348 = getelementptr i8, ptr %314, i64 %346
  %349 = getelementptr i8, ptr %348, i64 16
  %350 = load <16 x i8>, ptr %348, align 1, !tbaa !33
  %351 = load <16 x i8>, ptr %349, align 1, !tbaa !33
  %352 = getelementptr i8, ptr %347, i64 16
  store <16 x i8> %350, ptr %347, align 1, !tbaa !33
  store <16 x i8> %351, ptr %352, align 1, !tbaa !33
  %353 = add nuw i64 %346, 32
  %354 = icmp eq i64 %353, %340
  br i1 %354, label %355, label %345, !llvm.loop !42

355:                                              ; preds = %345
  %356 = icmp eq i64 %340, %324
  br i1 %356, label %431, label %357

357:                                              ; preds = %355
  %358 = icmp eq i64 %339, 0
  br i1 %358, label %375, label %359, !prof !46

359:                                              ; preds = %357, %336
  %360 = phi i64 [ %340, %357 ], [ 0, %336 ]
  %361 = and i64 %324, 2147483644
  %362 = getelementptr i8, ptr %106, i64 %361
  %363 = trunc nuw nsw i64 %361 to i32
  %364 = sub nsw i32 %301, %363
  %365 = getelementptr i8, ptr %314, i64 %361
  br label %366

366:                                              ; preds = %366, %359
  %367 = phi i64 [ %360, %359 ], [ %371, %366 ]
  %368 = getelementptr i8, ptr %106, i64 %367
  %369 = getelementptr i8, ptr %314, i64 %367
  %370 = load <4 x i8>, ptr %369, align 1, !tbaa !33
  store <4 x i8> %370, ptr %368, align 1, !tbaa !33
  %371 = add nuw i64 %367, 4
  %372 = icmp eq i64 %371, %361
  br i1 %372, label %373, label %366, !llvm.loop !47

373:                                              ; preds = %366
  %374 = icmp eq i64 %361, %324
  br i1 %374, label %431, label %375

375:                                              ; preds = %373, %357, %326, %323
  %376 = phi ptr [ %106, %323 ], [ %106, %326 ], [ %341, %357 ], [ %362, %373 ]
  %377 = phi i32 [ %301, %323 ], [ %301, %326 ], [ %343, %357 ], [ %364, %373 ]
  %378 = phi ptr [ %314, %323 ], [ %314, %326 ], [ %344, %357 ], [ %365, %373 ]
  %379 = add i32 %377, -1
  %380 = and i32 %377, 7
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %393, label %382

382:                                              ; preds = %382, %375
  %383 = phi ptr [ %388, %382 ], [ %376, %375 ]
  %384 = phi i32 [ %389, %382 ], [ %377, %375 ]
  %385 = phi ptr [ %390, %382 ], [ %378, %375 ]
  %386 = phi i32 [ %391, %382 ], [ 0, %375 ]
  %387 = load i8, ptr %385, align 1, !tbaa !33
  store i8 %387, ptr %383, align 1, !tbaa !33
  %388 = getelementptr inbounds nuw i8, ptr %383, i64 1
  %389 = add i32 %384, -1
  %390 = getelementptr inbounds nuw i8, ptr %385, i64 1
  %391 = add i32 %386, 1
  %392 = icmp eq i32 %391, %380
  br i1 %392, label %393, label %382, !llvm.loop !48

393:                                              ; preds = %382, %375
  %394 = phi ptr [ poison, %375 ], [ %388, %382 ]
  %395 = phi ptr [ %376, %375 ], [ %388, %382 ]
  %396 = phi i32 [ %377, %375 ], [ %389, %382 ]
  %397 = phi ptr [ %378, %375 ], [ %390, %382 ]
  %398 = icmp ult i32 %379, 7
  br i1 %398, label %431, label %401

399:                                              ; preds = %316
  %400 = load i8, ptr %314, align 1, !tbaa !33
  store i8 %400, ptr %106, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

401:                                              ; preds = %401, %393
  %402 = phi ptr [ %427, %401 ], [ %395, %393 ]
  %403 = phi i32 [ %428, %401 ], [ %396, %393 ]
  %404 = phi ptr [ %429, %401 ], [ %397, %393 ]
  %405 = load i8, ptr %404, align 1, !tbaa !33
  store i8 %405, ptr %402, align 1, !tbaa !33
  %406 = getelementptr inbounds nuw i8, ptr %402, i64 1
  %407 = getelementptr inbounds nuw i8, ptr %404, i64 1
  %408 = load i8, ptr %407, align 1, !tbaa !33
  store i8 %408, ptr %406, align 1, !tbaa !33
  %409 = getelementptr inbounds nuw i8, ptr %402, i64 2
  %410 = getelementptr inbounds nuw i8, ptr %404, i64 2
  %411 = load i8, ptr %410, align 1, !tbaa !33
  store i8 %411, ptr %409, align 1, !tbaa !33
  %412 = getelementptr inbounds nuw i8, ptr %402, i64 3
  %413 = getelementptr inbounds nuw i8, ptr %404, i64 3
  %414 = load i8, ptr %413, align 1, !tbaa !33
  store i8 %414, ptr %412, align 1, !tbaa !33
  %415 = getelementptr inbounds nuw i8, ptr %402, i64 4
  %416 = getelementptr inbounds nuw i8, ptr %404, i64 4
  %417 = load i8, ptr %416, align 1, !tbaa !33
  store i8 %417, ptr %415, align 1, !tbaa !33
  %418 = getelementptr inbounds nuw i8, ptr %402, i64 5
  %419 = getelementptr inbounds nuw i8, ptr %404, i64 5
  %420 = load i8, ptr %419, align 1, !tbaa !33
  store i8 %420, ptr %418, align 1, !tbaa !33
  %421 = getelementptr inbounds nuw i8, ptr %402, i64 6
  %422 = getelementptr inbounds nuw i8, ptr %404, i64 6
  %423 = load i8, ptr %422, align 1, !tbaa !33
  store i8 %423, ptr %421, align 1, !tbaa !33
  %424 = getelementptr inbounds nuw i8, ptr %402, i64 7
  %425 = getelementptr inbounds nuw i8, ptr %404, i64 7
  %426 = load i8, ptr %425, align 1, !tbaa !33
  store i8 %426, ptr %424, align 1, !tbaa !33
  %427 = getelementptr inbounds nuw i8, ptr %402, i64 8
  %428 = add i32 %403, -8
  %429 = getelementptr inbounds nuw i8, ptr %404, i64 8
  %430 = icmp eq i32 %428, 0
  br i1 %430, label %431, label %401, !llvm.loop !50

431:                                              ; preds = %401, %393, %373, %355
  %432 = phi ptr [ %362, %373 ], [ %341, %355 ], [ %394, %393 ], [ %427, %401 ]
  %433 = zext nneg i32 %291 to i64
  %434 = sub nsw i64 0, %433
  %435 = getelementptr inbounds i8, ptr %432, i64 %434
  br label %789

436:                                              ; preds = %306
  %437 = icmp ult i32 %40, %301
  br i1 %437, label %438, label %664

438:                                              ; preds = %436
  br i1 %66, label %439, label %440, !prof !17, !nosanitize !16

439:                                              ; preds = %438
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

440:                                              ; preds = %438
  %441 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %67, i32 %301), !nosanitize !16
  %442 = extractvalue { i32, i1 } %441, 1, !nosanitize !16
  br i1 %442, label %443, label %444, !prof !17, !nosanitize !16

443:                                              ; preds = %440
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

444:                                              ; preds = %440
  %445 = extractvalue { i32, i1 } %441, 0, !nosanitize !16
  %446 = zext i32 %445 to i64
  %447 = getelementptr inbounds nuw i8, ptr %42, i64 %446
  %448 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %301, i32 %40), !nosanitize !16
  %449 = extractvalue { i32, i1 } %448, 0, !nosanitize !16
  %450 = icmp ult i32 %449, %203
  br i1 %450, label %451, label %789

451:                                              ; preds = %444
  %452 = sub nuw nsw i32 %203, %449
  %453 = add i32 %73, %290
  %454 = add i32 %453, %255
  %455 = trunc i64 %296 to i32
  %456 = sub i32 %454, %455
  %457 = icmp ugt i32 %449, %456
  br i1 %457, label %458, label %538, !prof !41, !nosanitize !16

458:                                              ; preds = %451
  %459 = add i32 %85, %290
  %460 = add i32 %459, %255
  %461 = sub i32 %460, %455
  %462 = zext i32 %461 to i64
  %463 = add nuw nsw i64 %462, 1
  %464 = icmp ult i32 %461, 3
  br i1 %464, label %514, label %465

465:                                              ; preds = %458
  %466 = trunc i64 %296 to i32
  %467 = add i32 %79, %466
  %468 = add i32 %81, %290
  %469 = add i32 %468, %255
  %470 = sub i32 %467, %469
  %471 = zext i32 %470 to i64
  %472 = add i64 %43, %471
  %473 = sub i64 %296, %472
  %474 = icmp ult i64 %473, 32
  br i1 %474, label %514, label %475

475:                                              ; preds = %465
  %476 = icmp ult i32 %461, 31
  br i1 %476, label %498, label %477

477:                                              ; preds = %475
  %478 = and i64 %463, 28
  %479 = and i64 %463, 8589934560
  %480 = getelementptr i8, ptr %106, i64 %479
  %481 = trunc i64 %479 to i32
  %482 = sub i32 %449, %481
  %483 = getelementptr i8, ptr %447, i64 %479
  br label %484

484:                                              ; preds = %484, %477
  %485 = phi i64 [ 0, %477 ], [ %492, %484 ]
  %486 = getelementptr i8, ptr %106, i64 %485
  %487 = getelementptr i8, ptr %447, i64 %485
  %488 = getelementptr i8, ptr %487, i64 16
  %489 = load <16 x i8>, ptr %487, align 1, !tbaa !33
  %490 = load <16 x i8>, ptr %488, align 1, !tbaa !33
  %491 = getelementptr i8, ptr %486, i64 16
  store <16 x i8> %489, ptr %486, align 1, !tbaa !33
  store <16 x i8> %490, ptr %491, align 1, !tbaa !33
  %492 = add nuw i64 %485, 32
  %493 = icmp eq i64 %492, %479
  br i1 %493, label %494, label %484, !llvm.loop !51

494:                                              ; preds = %484
  %495 = icmp eq i64 %463, %479
  br i1 %495, label %570, label %496

496:                                              ; preds = %494
  %497 = icmp eq i64 %478, 0
  br i1 %497, label %514, label %498, !prof !46

498:                                              ; preds = %496, %475
  %499 = phi i64 [ %479, %496 ], [ 0, %475 ]
  %500 = and i64 %463, 8589934588
  %501 = getelementptr i8, ptr %106, i64 %500
  %502 = trunc i64 %500 to i32
  %503 = sub i32 %449, %502
  %504 = getelementptr i8, ptr %447, i64 %500
  br label %505

505:                                              ; preds = %505, %498
  %506 = phi i64 [ %499, %498 ], [ %510, %505 ]
  %507 = getelementptr i8, ptr %106, i64 %506
  %508 = getelementptr i8, ptr %447, i64 %506
  %509 = load <4 x i8>, ptr %508, align 1, !tbaa !33
  store <4 x i8> %509, ptr %507, align 1, !tbaa !33
  %510 = add nuw i64 %506, 4
  %511 = icmp eq i64 %510, %500
  br i1 %511, label %512, label %505, !llvm.loop !52

512:                                              ; preds = %505
  %513 = icmp eq i64 %463, %500
  br i1 %513, label %570, label %514

514:                                              ; preds = %512, %496, %465, %458
  %515 = phi ptr [ %106, %458 ], [ %106, %465 ], [ %480, %496 ], [ %501, %512 ]
  %516 = phi i32 [ %449, %458 ], [ %449, %465 ], [ %482, %496 ], [ %503, %512 ]
  %517 = phi ptr [ %447, %458 ], [ %447, %465 ], [ %483, %496 ], [ %504, %512 ]
  %518 = add i32 %516, -1
  %519 = and i32 %516, 7
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %532, label %521

521:                                              ; preds = %521, %514
  %522 = phi ptr [ %527, %521 ], [ %515, %514 ]
  %523 = phi i32 [ %528, %521 ], [ %516, %514 ]
  %524 = phi ptr [ %529, %521 ], [ %517, %514 ]
  %525 = phi i32 [ %530, %521 ], [ 0, %514 ]
  %526 = load i8, ptr %524, align 1, !tbaa !33
  store i8 %526, ptr %522, align 1, !tbaa !33
  %527 = getelementptr inbounds nuw i8, ptr %522, i64 1
  %528 = add i32 %523, -1
  %529 = getelementptr inbounds nuw i8, ptr %524, i64 1
  %530 = add i32 %525, 1
  %531 = icmp eq i32 %530, %519
  br i1 %531, label %532, label %521, !llvm.loop !53

532:                                              ; preds = %521, %514
  %533 = phi ptr [ poison, %514 ], [ %527, %521 ]
  %534 = phi ptr [ %515, %514 ], [ %527, %521 ]
  %535 = phi i32 [ %516, %514 ], [ %528, %521 ]
  %536 = phi ptr [ %517, %514 ], [ %529, %521 ]
  %537 = icmp ult i32 %518, 7
  br i1 %537, label %570, label %540

538:                                              ; preds = %451
  %539 = load i8, ptr %447, align 1, !tbaa !33
  store i8 %539, ptr %106, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

540:                                              ; preds = %540, %532
  %541 = phi ptr [ %566, %540 ], [ %534, %532 ]
  %542 = phi i32 [ %567, %540 ], [ %535, %532 ]
  %543 = phi ptr [ %568, %540 ], [ %536, %532 ]
  %544 = load i8, ptr %543, align 1, !tbaa !33
  store i8 %544, ptr %541, align 1, !tbaa !33
  %545 = getelementptr inbounds nuw i8, ptr %541, i64 1
  %546 = getelementptr inbounds nuw i8, ptr %543, i64 1
  %547 = load i8, ptr %546, align 1, !tbaa !33
  store i8 %547, ptr %545, align 1, !tbaa !33
  %548 = getelementptr inbounds nuw i8, ptr %541, i64 2
  %549 = getelementptr inbounds nuw i8, ptr %543, i64 2
  %550 = load i8, ptr %549, align 1, !tbaa !33
  store i8 %550, ptr %548, align 1, !tbaa !33
  %551 = getelementptr inbounds nuw i8, ptr %541, i64 3
  %552 = getelementptr inbounds nuw i8, ptr %543, i64 3
  %553 = load i8, ptr %552, align 1, !tbaa !33
  store i8 %553, ptr %551, align 1, !tbaa !33
  %554 = getelementptr inbounds nuw i8, ptr %541, i64 4
  %555 = getelementptr inbounds nuw i8, ptr %543, i64 4
  %556 = load i8, ptr %555, align 1, !tbaa !33
  store i8 %556, ptr %554, align 1, !tbaa !33
  %557 = getelementptr inbounds nuw i8, ptr %541, i64 5
  %558 = getelementptr inbounds nuw i8, ptr %543, i64 5
  %559 = load i8, ptr %558, align 1, !tbaa !33
  store i8 %559, ptr %557, align 1, !tbaa !33
  %560 = getelementptr inbounds nuw i8, ptr %541, i64 6
  %561 = getelementptr inbounds nuw i8, ptr %543, i64 6
  %562 = load i8, ptr %561, align 1, !tbaa !33
  store i8 %562, ptr %560, align 1, !tbaa !33
  %563 = getelementptr inbounds nuw i8, ptr %541, i64 7
  %564 = getelementptr inbounds nuw i8, ptr %543, i64 7
  %565 = load i8, ptr %564, align 1, !tbaa !33
  store i8 %565, ptr %563, align 1, !tbaa !33
  %566 = getelementptr inbounds nuw i8, ptr %541, i64 8
  %567 = add i32 %542, -8
  %568 = getelementptr inbounds nuw i8, ptr %543, i64 8
  %569 = icmp eq i32 %567, 0
  br i1 %569, label %570, label %540, !llvm.loop !54

570:                                              ; preds = %540, %532, %512, %494
  %571 = phi ptr [ %501, %512 ], [ %480, %494 ], [ %533, %532 ], [ %566, %540 ]
  %572 = icmp ult i32 %40, %452
  br i1 %572, label %573, label %789

573:                                              ; preds = %570
  %574 = ptrtoaddr ptr %571 to i64
  %575 = sub i64 %574, %43
  %576 = icmp ult i64 %575, 32
  %577 = select i1 %89, i1 true, i1 %576
  br i1 %577, label %604, label %578

578:                                              ; preds = %573
  br i1 %90, label %593, label %579

579:                                              ; preds = %578
  %580 = getelementptr i8, ptr %571, i64 %92
  br label %581

581:                                              ; preds = %581, %579
  %582 = phi i64 [ 0, %579 ], [ %589, %581 ]
  %583 = getelementptr i8, ptr %571, i64 %582
  %584 = getelementptr i8, ptr %42, i64 %582
  %585 = getelementptr i8, ptr %584, i64 16
  %586 = load <16 x i8>, ptr %584, align 1, !tbaa !33
  %587 = load <16 x i8>, ptr %585, align 1, !tbaa !33
  %588 = getelementptr i8, ptr %583, i64 16
  store <16 x i8> %586, ptr %583, align 1, !tbaa !33
  store <16 x i8> %587, ptr %588, align 1, !tbaa !33
  %589 = add nuw i64 %582, 32
  %590 = icmp eq i64 %589, %92
  br i1 %590, label %591, label %581, !llvm.loop !55

591:                                              ; preds = %581
  br i1 %96, label %658, label %592

592:                                              ; preds = %591
  br i1 %97, label %604, label %593, !prof !46

593:                                              ; preds = %592, %578
  %594 = phi i64 [ %92, %592 ], [ 0, %578 ]
  %595 = getelementptr i8, ptr %571, i64 %98
  br label %596

596:                                              ; preds = %596, %593
  %597 = phi i64 [ %594, %593 ], [ %601, %596 ]
  %598 = getelementptr i8, ptr %571, i64 %597
  %599 = getelementptr i8, ptr %42, i64 %597
  %600 = load <4 x i8>, ptr %599, align 1, !tbaa !33
  store <4 x i8> %600, ptr %598, align 1, !tbaa !33
  %601 = add nuw i64 %597, 4
  %602 = icmp eq i64 %601, %98
  br i1 %602, label %603, label %596, !llvm.loop !56

603:                                              ; preds = %596
  br i1 %102, label %658, label %604

604:                                              ; preds = %603, %592, %573
  %605 = phi ptr [ %571, %573 ], [ %580, %592 ], [ %595, %603 ]
  %606 = phi i32 [ %40, %573 ], [ %94, %592 ], [ %100, %603 ]
  %607 = phi ptr [ %42, %573 ], [ %95, %592 ], [ %101, %603 ]
  %608 = add i32 %606, -1
  %609 = and i32 %606, 7
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %622, label %611

611:                                              ; preds = %611, %604
  %612 = phi ptr [ %617, %611 ], [ %605, %604 ]
  %613 = phi i32 [ %618, %611 ], [ %606, %604 ]
  %614 = phi ptr [ %619, %611 ], [ %607, %604 ]
  %615 = phi i32 [ %620, %611 ], [ 0, %604 ]
  %616 = load i8, ptr %614, align 1, !tbaa !33
  %617 = getelementptr inbounds nuw i8, ptr %612, i64 1
  store i8 %616, ptr %612, align 1, !tbaa !33
  %618 = add i32 %613, -1
  %619 = getelementptr inbounds nuw i8, ptr %614, i64 1
  %620 = add i32 %615, 1
  %621 = icmp eq i32 %620, %609
  br i1 %621, label %622, label %611, !llvm.loop !57

622:                                              ; preds = %611, %604
  %623 = phi ptr [ poison, %604 ], [ %617, %611 ]
  %624 = phi ptr [ %605, %604 ], [ %617, %611 ]
  %625 = phi i32 [ %606, %604 ], [ %618, %611 ]
  %626 = phi ptr [ %607, %604 ], [ %619, %611 ]
  %627 = icmp ult i32 %608, 7
  br i1 %627, label %658, label %628

628:                                              ; preds = %628, %622
  %629 = phi ptr [ %654, %628 ], [ %624, %622 ]
  %630 = phi i32 [ %655, %628 ], [ %625, %622 ]
  %631 = phi ptr [ %656, %628 ], [ %626, %622 ]
  %632 = load i8, ptr %631, align 1, !tbaa !33
  %633 = getelementptr inbounds nuw i8, ptr %629, i64 1
  store i8 %632, ptr %629, align 1, !tbaa !33
  %634 = getelementptr inbounds nuw i8, ptr %631, i64 1
  %635 = load i8, ptr %634, align 1, !tbaa !33
  %636 = getelementptr inbounds nuw i8, ptr %629, i64 2
  store i8 %635, ptr %633, align 1, !tbaa !33
  %637 = getelementptr inbounds nuw i8, ptr %631, i64 2
  %638 = load i8, ptr %637, align 1, !tbaa !33
  %639 = getelementptr inbounds nuw i8, ptr %629, i64 3
  store i8 %638, ptr %636, align 1, !tbaa !33
  %640 = getelementptr inbounds nuw i8, ptr %631, i64 3
  %641 = load i8, ptr %640, align 1, !tbaa !33
  %642 = getelementptr inbounds nuw i8, ptr %629, i64 4
  store i8 %641, ptr %639, align 1, !tbaa !33
  %643 = getelementptr inbounds nuw i8, ptr %631, i64 4
  %644 = load i8, ptr %643, align 1, !tbaa !33
  %645 = getelementptr inbounds nuw i8, ptr %629, i64 5
  store i8 %644, ptr %642, align 1, !tbaa !33
  %646 = getelementptr inbounds nuw i8, ptr %631, i64 5
  %647 = load i8, ptr %646, align 1, !tbaa !33
  %648 = getelementptr inbounds nuw i8, ptr %629, i64 6
  store i8 %647, ptr %645, align 1, !tbaa !33
  %649 = getelementptr inbounds nuw i8, ptr %631, i64 6
  %650 = load i8, ptr %649, align 1, !tbaa !33
  %651 = getelementptr inbounds nuw i8, ptr %629, i64 7
  store i8 %650, ptr %648, align 1, !tbaa !33
  %652 = getelementptr inbounds nuw i8, ptr %631, i64 7
  %653 = load i8, ptr %652, align 1, !tbaa !33
  %654 = getelementptr inbounds nuw i8, ptr %629, i64 8
  store i8 %653, ptr %651, align 1, !tbaa !33
  %655 = add i32 %630, -8
  %656 = getelementptr inbounds nuw i8, ptr %631, i64 8
  %657 = icmp eq i32 %655, 0
  br i1 %657, label %658, label %628, !llvm.loop !58

658:                                              ; preds = %628, %622, %603, %591
  %659 = phi ptr [ %595, %603 ], [ %580, %591 ], [ %623, %622 ], [ %654, %628 ]
  %660 = sub nuw nsw i32 %452, %40
  %661 = zext nneg i32 %291 to i64
  %662 = sub nsw i64 0, %661
  %663 = getelementptr inbounds i8, ptr %659, i64 %662
  br label %789

664:                                              ; preds = %436
  %665 = sub nuw i32 %40, %301
  %666 = zext i32 %665 to i64
  %667 = getelementptr inbounds nuw i8, ptr %42, i64 %666
  %668 = icmp ult i32 %301, %203
  br i1 %668, label %669, label %789

669:                                              ; preds = %664
  %670 = sub nuw nsw i32 %203, %301
  %671 = add i32 %71, %290
  %672 = add i32 %671, %255
  %673 = trunc i64 %296 to i32
  %674 = sub i32 %672, %673
  %675 = icmp ugt i32 %301, %674
  br i1 %675, label %676, label %752, !prof !41, !nosanitize !16

676:                                              ; preds = %669
  %677 = zext nneg i32 %301 to i64
  %678 = icmp samesign ult i32 %301, 4
  br i1 %678, label %728, label %679

679:                                              ; preds = %676
  %680 = trunc i64 %296 to i32
  %681 = add i32 %86, %680
  %682 = add i32 %88, %290
  %683 = add i32 %682, %255
  %684 = sub i32 %681, %683
  %685 = zext i32 %684 to i64
  %686 = add i64 %43, %685
  %687 = sub i64 %296, %686
  %688 = icmp ult i64 %687, 32
  br i1 %688, label %728, label %689

689:                                              ; preds = %679
  %690 = icmp samesign ult i32 %301, 32
  br i1 %690, label %712, label %691

691:                                              ; preds = %689
  %692 = and i64 %677, 28
  %693 = and i64 %677, 2147483616
  %694 = getelementptr i8, ptr %106, i64 %693
  %695 = trunc nuw nsw i64 %693 to i32
  %696 = sub nsw i32 %301, %695
  %697 = getelementptr i8, ptr %667, i64 %693
  br label %698

698:                                              ; preds = %698, %691
  %699 = phi i64 [ 0, %691 ], [ %706, %698 ]
  %700 = getelementptr i8, ptr %106, i64 %699
  %701 = getelementptr i8, ptr %667, i64 %699
  %702 = getelementptr i8, ptr %701, i64 16
  %703 = load <16 x i8>, ptr %701, align 1, !tbaa !33
  %704 = load <16 x i8>, ptr %702, align 1, !tbaa !33
  %705 = getelementptr i8, ptr %700, i64 16
  store <16 x i8> %703, ptr %700, align 1, !tbaa !33
  store <16 x i8> %704, ptr %705, align 1, !tbaa !33
  %706 = add nuw i64 %699, 32
  %707 = icmp eq i64 %706, %693
  br i1 %707, label %708, label %698, !llvm.loop !59

708:                                              ; preds = %698
  %709 = icmp eq i64 %693, %677
  br i1 %709, label %784, label %710

710:                                              ; preds = %708
  %711 = icmp eq i64 %692, 0
  br i1 %711, label %728, label %712, !prof !46

712:                                              ; preds = %710, %689
  %713 = phi i64 [ %693, %710 ], [ 0, %689 ]
  %714 = and i64 %677, 2147483644
  %715 = getelementptr i8, ptr %106, i64 %714
  %716 = trunc nuw nsw i64 %714 to i32
  %717 = sub nsw i32 %301, %716
  %718 = getelementptr i8, ptr %667, i64 %714
  br label %719

719:                                              ; preds = %719, %712
  %720 = phi i64 [ %713, %712 ], [ %724, %719 ]
  %721 = getelementptr i8, ptr %106, i64 %720
  %722 = getelementptr i8, ptr %667, i64 %720
  %723 = load <4 x i8>, ptr %722, align 1, !tbaa !33
  store <4 x i8> %723, ptr %721, align 1, !tbaa !33
  %724 = add nuw i64 %720, 4
  %725 = icmp eq i64 %724, %714
  br i1 %725, label %726, label %719, !llvm.loop !60

726:                                              ; preds = %719
  %727 = icmp eq i64 %714, %677
  br i1 %727, label %784, label %728

728:                                              ; preds = %726, %710, %679, %676
  %729 = phi ptr [ %106, %676 ], [ %106, %679 ], [ %694, %710 ], [ %715, %726 ]
  %730 = phi i32 [ %301, %676 ], [ %301, %679 ], [ %696, %710 ], [ %717, %726 ]
  %731 = phi ptr [ %667, %676 ], [ %667, %679 ], [ %697, %710 ], [ %718, %726 ]
  %732 = add i32 %730, -1
  %733 = and i32 %730, 7
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %746, label %735

735:                                              ; preds = %735, %728
  %736 = phi ptr [ %741, %735 ], [ %729, %728 ]
  %737 = phi i32 [ %742, %735 ], [ %730, %728 ]
  %738 = phi ptr [ %743, %735 ], [ %731, %728 ]
  %739 = phi i32 [ %744, %735 ], [ 0, %728 ]
  %740 = load i8, ptr %738, align 1, !tbaa !33
  store i8 %740, ptr %736, align 1, !tbaa !33
  %741 = getelementptr inbounds nuw i8, ptr %736, i64 1
  %742 = add i32 %737, -1
  %743 = getelementptr inbounds nuw i8, ptr %738, i64 1
  %744 = add i32 %739, 1
  %745 = icmp eq i32 %744, %733
  br i1 %745, label %746, label %735, !llvm.loop !61

746:                                              ; preds = %735, %728
  %747 = phi ptr [ poison, %728 ], [ %741, %735 ]
  %748 = phi ptr [ %729, %728 ], [ %741, %735 ]
  %749 = phi i32 [ %730, %728 ], [ %742, %735 ]
  %750 = phi ptr [ %731, %728 ], [ %743, %735 ]
  %751 = icmp ult i32 %732, 7
  br i1 %751, label %784, label %754

752:                                              ; preds = %669
  %753 = load i8, ptr %667, align 1, !tbaa !33
  store i8 %753, ptr %106, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

754:                                              ; preds = %754, %746
  %755 = phi ptr [ %780, %754 ], [ %748, %746 ]
  %756 = phi i32 [ %781, %754 ], [ %749, %746 ]
  %757 = phi ptr [ %782, %754 ], [ %750, %746 ]
  %758 = load i8, ptr %757, align 1, !tbaa !33
  store i8 %758, ptr %755, align 1, !tbaa !33
  %759 = getelementptr inbounds nuw i8, ptr %755, i64 1
  %760 = getelementptr inbounds nuw i8, ptr %757, i64 1
  %761 = load i8, ptr %760, align 1, !tbaa !33
  store i8 %761, ptr %759, align 1, !tbaa !33
  %762 = getelementptr inbounds nuw i8, ptr %755, i64 2
  %763 = getelementptr inbounds nuw i8, ptr %757, i64 2
  %764 = load i8, ptr %763, align 1, !tbaa !33
  store i8 %764, ptr %762, align 1, !tbaa !33
  %765 = getelementptr inbounds nuw i8, ptr %755, i64 3
  %766 = getelementptr inbounds nuw i8, ptr %757, i64 3
  %767 = load i8, ptr %766, align 1, !tbaa !33
  store i8 %767, ptr %765, align 1, !tbaa !33
  %768 = getelementptr inbounds nuw i8, ptr %755, i64 4
  %769 = getelementptr inbounds nuw i8, ptr %757, i64 4
  %770 = load i8, ptr %769, align 1, !tbaa !33
  store i8 %770, ptr %768, align 1, !tbaa !33
  %771 = getelementptr inbounds nuw i8, ptr %755, i64 5
  %772 = getelementptr inbounds nuw i8, ptr %757, i64 5
  %773 = load i8, ptr %772, align 1, !tbaa !33
  store i8 %773, ptr %771, align 1, !tbaa !33
  %774 = getelementptr inbounds nuw i8, ptr %755, i64 6
  %775 = getelementptr inbounds nuw i8, ptr %757, i64 6
  %776 = load i8, ptr %775, align 1, !tbaa !33
  store i8 %776, ptr %774, align 1, !tbaa !33
  %777 = getelementptr inbounds nuw i8, ptr %755, i64 7
  %778 = getelementptr inbounds nuw i8, ptr %757, i64 7
  %779 = load i8, ptr %778, align 1, !tbaa !33
  store i8 %779, ptr %777, align 1, !tbaa !33
  %780 = getelementptr inbounds nuw i8, ptr %755, i64 8
  %781 = add i32 %756, -8
  %782 = getelementptr inbounds nuw i8, ptr %757, i64 8
  %783 = icmp eq i32 %781, 0
  br i1 %783, label %784, label %754, !llvm.loop !62

784:                                              ; preds = %754, %746, %726, %708
  %785 = phi ptr [ %715, %726 ], [ %694, %708 ], [ %747, %746 ], [ %780, %754 ]
  %786 = zext nneg i32 %291 to i64
  %787 = sub nsw i64 0, %786
  %788 = getelementptr inbounds i8, ptr %785, i64 %787
  br label %789

789:                                              ; preds = %784, %664, %658, %570, %444, %431, %311
  %790 = phi ptr [ %432, %431 ], [ %106, %311 ], [ %659, %658 ], [ %571, %570 ], [ %106, %444 ], [ %785, %784 ], [ %106, %664 ]
  %791 = phi i32 [ %317, %431 ], [ %203, %311 ], [ %660, %658 ], [ %452, %570 ], [ %203, %444 ], [ %670, %784 ], [ %203, %664 ]
  %792 = phi ptr [ %435, %431 ], [ %314, %311 ], [ %663, %658 ], [ %42, %570 ], [ %447, %444 ], [ %788, %784 ], [ %667, %664 ]
  %793 = icmp ugt i32 %791, 2
  br i1 %793, label %794, label %842

794:                                              ; preds = %789
  %795 = add i32 %791, -3
  %796 = udiv i32 %795, 3
  %797 = and i32 %796, 1
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %799, label %810

799:                                              ; preds = %794
  %800 = getelementptr inbounds nuw i8, ptr %792, i64 1
  %801 = load i8, ptr %792, align 1, !tbaa !33
  %802 = getelementptr inbounds nuw i8, ptr %790, i64 1
  store i8 %801, ptr %790, align 1, !tbaa !33
  %803 = getelementptr inbounds nuw i8, ptr %792, i64 2
  %804 = load i8, ptr %800, align 1, !tbaa !33
  %805 = getelementptr inbounds nuw i8, ptr %790, i64 2
  store i8 %804, ptr %802, align 1, !tbaa !33
  %806 = load i8, ptr %803, align 1, !tbaa !33
  store i8 %806, ptr %805, align 1, !tbaa !33
  %807 = add i32 %791, -3
  %808 = getelementptr inbounds nuw i8, ptr %790, i64 3
  %809 = getelementptr inbounds nuw i8, ptr %792, i64 3
  br label %810

810:                                              ; preds = %799, %794
  %811 = phi ptr [ %792, %794 ], [ %809, %799 ]
  %812 = phi i32 [ %791, %794 ], [ %807, %799 ]
  %813 = phi ptr [ %790, %794 ], [ %808, %799 ]
  %814 = phi i32 [ poison, %794 ], [ %807, %799 ]
  %815 = phi ptr [ poison, %794 ], [ %808, %799 ]
  %816 = phi ptr [ poison, %794 ], [ %809, %799 ]
  %817 = icmp ult i32 %795, 3
  br i1 %817, label %842, label %818

818:                                              ; preds = %818, %810
  %819 = phi ptr [ %840, %818 ], [ %811, %810 ]
  %820 = phi i32 [ %838, %818 ], [ %812, %810 ]
  %821 = phi ptr [ %839, %818 ], [ %813, %810 ]
  %822 = getelementptr inbounds nuw i8, ptr %819, i64 1
  %823 = load i8, ptr %819, align 1, !tbaa !33
  %824 = getelementptr inbounds nuw i8, ptr %821, i64 1
  store i8 %823, ptr %821, align 1, !tbaa !33
  %825 = getelementptr inbounds nuw i8, ptr %819, i64 2
  %826 = load i8, ptr %822, align 1, !tbaa !33
  %827 = getelementptr inbounds nuw i8, ptr %821, i64 2
  store i8 %826, ptr %824, align 1, !tbaa !33
  %828 = load i8, ptr %825, align 1, !tbaa !33
  store i8 %828, ptr %827, align 1, !tbaa !33
  %829 = getelementptr inbounds nuw i8, ptr %821, i64 3
  %830 = getelementptr inbounds nuw i8, ptr %819, i64 3
  %831 = getelementptr inbounds nuw i8, ptr %819, i64 4
  %832 = load i8, ptr %830, align 1, !tbaa !33
  %833 = getelementptr inbounds nuw i8, ptr %821, i64 4
  store i8 %832, ptr %829, align 1, !tbaa !33
  %834 = getelementptr inbounds nuw i8, ptr %819, i64 5
  %835 = load i8, ptr %831, align 1, !tbaa !33
  %836 = getelementptr inbounds nuw i8, ptr %821, i64 5
  store i8 %835, ptr %833, align 1, !tbaa !33
  %837 = load i8, ptr %834, align 1, !tbaa !33
  store i8 %837, ptr %836, align 1, !tbaa !33
  %838 = add i32 %820, -6
  %839 = getelementptr inbounds nuw i8, ptr %821, i64 6
  %840 = getelementptr inbounds nuw i8, ptr %819, i64 6
  %841 = icmp ugt i32 %838, 2
  br i1 %841, label %818, label %842, !llvm.loop !63

842:                                              ; preds = %818, %810, %789
  %843 = phi ptr [ %790, %789 ], [ %815, %810 ], [ %839, %818 ]
  %844 = phi i32 [ %791, %789 ], [ %814, %810 ], [ %838, %818 ]
  %845 = phi ptr [ %792, %789 ], [ %816, %810 ], [ %840, %818 ]
  %846 = icmp eq i32 %844, 0
  br i1 %846, label %981, label %847

847:                                              ; preds = %842
  %848 = load i8, ptr %845, align 1, !tbaa !33
  %849 = getelementptr inbounds nuw i8, ptr %843, i64 1
  store i8 %848, ptr %843, align 1, !tbaa !33
  %850 = icmp eq i32 %844, 2
  br i1 %850, label %851, label %981

851:                                              ; preds = %847
  %852 = getelementptr inbounds nuw i8, ptr %845, i64 1
  %853 = load i8, ptr %852, align 1, !tbaa !33
  %854 = getelementptr inbounds nuw i8, ptr %843, i64 2
  store i8 %853, ptr %849, align 1, !tbaa !33
  br label %981

855:                                              ; preds = %283
  %856 = zext nneg i32 %291 to i64
  %857 = sub nsw i64 0, %856
  %858 = getelementptr inbounds i8, ptr %106, i64 %857
  %859 = udiv i32 %203, 3
  %860 = add nsw i32 %203, -3
  %861 = tail call i32 @llvm.umin.i32(i32 %860, i32 2)
  %862 = xor i32 %861, -1
  %863 = add nsw i32 %203, %862
  %864 = udiv i32 %863, 3
  %865 = icmp samesign ugt i32 %859, %864
  br i1 %865, label %866, label %887, !prof !41, !nosanitize !16

866:                                              ; preds = %855
  %867 = and i32 %864, 1
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %869, label %880

869:                                              ; preds = %866
  %870 = getelementptr inbounds nuw i8, ptr %858, i64 1
  %871 = load i8, ptr %858, align 1, !tbaa !33
  %872 = getelementptr inbounds nuw i8, ptr %106, i64 1
  store i8 %871, ptr %106, align 1, !tbaa !33
  %873 = getelementptr inbounds nuw i8, ptr %858, i64 2
  %874 = load i8, ptr %870, align 1, !tbaa !33
  %875 = getelementptr inbounds nuw i8, ptr %106, i64 2
  store i8 %874, ptr %872, align 1, !tbaa !33
  %876 = load i8, ptr %873, align 1, !tbaa !33
  store i8 %876, ptr %875, align 1, !tbaa !33
  %877 = add nsw i32 %203, -3
  %878 = getelementptr inbounds nuw i8, ptr %106, i64 3
  %879 = getelementptr inbounds nuw i8, ptr %858, i64 3
  br label %880

880:                                              ; preds = %869, %866
  %881 = phi ptr [ %106, %866 ], [ %878, %869 ]
  %882 = phi i32 [ %203, %866 ], [ %877, %869 ]
  %883 = phi ptr [ %858, %866 ], [ %879, %869 ]
  %884 = phi ptr [ poison, %866 ], [ %878, %869 ]
  %885 = phi ptr [ poison, %866 ], [ %879, %869 ]
  %886 = icmp ult i32 %863, 3
  br i1 %886, label %922, label %895

887:                                              ; preds = %855
  %888 = getelementptr inbounds nuw i8, ptr %858, i64 1
  %889 = load i8, ptr %858, align 1, !tbaa !33
  %890 = getelementptr inbounds nuw i8, ptr %106, i64 1
  store i8 %889, ptr %106, align 1, !tbaa !33
  %891 = getelementptr inbounds nuw i8, ptr %858, i64 2
  %892 = load i8, ptr %888, align 1, !tbaa !33
  %893 = getelementptr inbounds nuw i8, ptr %106, i64 2
  store i8 %892, ptr %890, align 1, !tbaa !33
  %894 = load i8, ptr %891, align 1, !tbaa !33
  store i8 %894, ptr %893, align 1, !tbaa !33
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

895:                                              ; preds = %895, %880
  %896 = phi ptr [ %916, %895 ], [ %881, %880 ]
  %897 = phi i32 [ %915, %895 ], [ %882, %880 ]
  %898 = phi ptr [ %917, %895 ], [ %883, %880 ]
  %899 = getelementptr inbounds nuw i8, ptr %898, i64 1
  %900 = load i8, ptr %898, align 1, !tbaa !33
  %901 = getelementptr inbounds nuw i8, ptr %896, i64 1
  store i8 %900, ptr %896, align 1, !tbaa !33
  %902 = getelementptr inbounds nuw i8, ptr %898, i64 2
  %903 = load i8, ptr %899, align 1, !tbaa !33
  %904 = getelementptr inbounds nuw i8, ptr %896, i64 2
  store i8 %903, ptr %901, align 1, !tbaa !33
  %905 = load i8, ptr %902, align 1, !tbaa !33
  store i8 %905, ptr %904, align 1, !tbaa !33
  %906 = getelementptr inbounds nuw i8, ptr %896, i64 3
  %907 = getelementptr inbounds nuw i8, ptr %898, i64 3
  %908 = getelementptr inbounds nuw i8, ptr %898, i64 4
  %909 = load i8, ptr %907, align 1, !tbaa !33
  %910 = getelementptr inbounds nuw i8, ptr %896, i64 4
  store i8 %909, ptr %906, align 1, !tbaa !33
  %911 = getelementptr inbounds nuw i8, ptr %898, i64 5
  %912 = load i8, ptr %908, align 1, !tbaa !33
  %913 = getelementptr inbounds nuw i8, ptr %896, i64 5
  store i8 %912, ptr %910, align 1, !tbaa !33
  %914 = load i8, ptr %911, align 1, !tbaa !33
  store i8 %914, ptr %913, align 1, !tbaa !33
  %915 = add i32 %897, -6
  %916 = getelementptr inbounds nuw i8, ptr %896, i64 6
  %917 = getelementptr inbounds nuw i8, ptr %898, i64 6
  %918 = icmp ugt i32 %915, 2
  br i1 %918, label %895, label %919, !llvm.loop !64

919:                                              ; preds = %895
  %920 = getelementptr inbounds nuw i8, ptr %896, i64 3
  %921 = getelementptr inbounds nuw i8, ptr %898, i64 3
  br label %922

922:                                              ; preds = %919, %880
  %923 = phi ptr [ %106, %880 ], [ %920, %919 ]
  %924 = phi ptr [ %858, %880 ], [ %921, %919 ]
  %925 = phi ptr [ %884, %880 ], [ %916, %919 ]
  %926 = phi ptr [ %885, %880 ], [ %917, %919 ]
  %927 = mul i32 %864, -3
  %928 = add i32 %927, %860
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %981, label %930

930:                                              ; preds = %922
  %931 = load i8, ptr %926, align 1, !tbaa !33
  %932 = getelementptr inbounds nuw i8, ptr %923, i64 4
  store i8 %931, ptr %925, align 1, !tbaa !33
  %933 = icmp eq i32 %928, 2
  br i1 %933, label %934, label %981

934:                                              ; preds = %930
  %935 = getelementptr inbounds nuw i8, ptr %924, i64 4
  %936 = load i8, ptr %935, align 1, !tbaa !33
  %937 = getelementptr inbounds nuw i8, ptr %923, i64 5
  store i8 %936, ptr %932, align 1, !tbaa !33
  br label %981

938:                                              ; preds = %243
  %939 = and i32 %249, 64
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %941, label %989

941:                                              ; preds = %938
  %942 = shl nsw i32 -1, %249
  %943 = xor i32 %942, -1
  %944 = getelementptr inbounds nuw i8, ptr %246, i64 2
  %945 = load i16, ptr %944, align 2, !tbaa !39
  %946 = zext i16 %945 to i64
  %947 = getelementptr inbounds nuw [4 x i8], ptr %51, i64 %946
  %948 = zext nneg i32 %943 to i64
  %949 = and i64 %245, %948
  %950 = getelementptr inbounds nuw [4 x i8], ptr %947, i64 %949
  %951 = getelementptr inbounds nuw i8, ptr %950, i64 1
  %952 = load i8, ptr %951, align 1, !tbaa !34
  %953 = zext i8 %952 to i32
  %954 = zext nneg i8 %952 to i64
  %955 = lshr i64 %245, %954
  %956 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %247, i32 %953), !nosanitize !16
  %957 = extractvalue { i32, i1 } %956, 1, !nosanitize !16
  br i1 %957, label %242, label %243, !prof !65, !nosanitize !16

958:                                              ; preds = %160
  %959 = and i32 %153, 64
  %960 = icmp eq i32 %959, 0
  br i1 %960, label %961, label %978

961:                                              ; preds = %958
  %962 = shl nsw i32 -1, %153
  %963 = xor i32 %962, -1
  %964 = getelementptr inbounds nuw i8, ptr %150, i64 2
  %965 = load i16, ptr %964, align 2, !tbaa !39
  %966 = zext i16 %965 to i64
  %967 = getelementptr inbounds nuw [4 x i8], ptr %49, i64 %966
  %968 = zext nneg i32 %963 to i64
  %969 = and i64 %149, %968
  %970 = getelementptr inbounds nuw [4 x i8], ptr %967, i64 %969
  %971 = getelementptr inbounds nuw i8, ptr %970, i64 1
  %972 = load i8, ptr %971, align 1, !tbaa !34
  %973 = zext i8 %972 to i32
  %974 = zext nneg i8 %972 to i64
  %975 = lshr i64 %149, %974
  %976 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %151, i32 %973), !nosanitize !16
  %977 = extractvalue { i32, i1 } %976, 1, !nosanitize !16
  br i1 %977, label %146, label %147, !prof !65, !nosanitize !16

978:                                              ; preds = %958
  %979 = and i32 %153, 32
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %989, label %995

981:                                              ; preds = %934, %930, %922, %851, %847, %842, %155
  %982 = phi i32 [ %151, %155 ], [ %295, %851 ], [ %295, %847 ], [ %295, %842 ], [ %295, %934 ], [ %295, %930 ], [ %295, %922 ]
  %983 = phi i64 [ %149, %155 ], [ %293, %851 ], [ %293, %847 ], [ %293, %842 ], [ %293, %934 ], [ %293, %930 ], [ %293, %922 ]
  %984 = phi ptr [ %159, %155 ], [ %854, %851 ], [ %849, %847 ], [ %843, %842 ], [ %937, %934 ], [ %932, %930 ], [ %925, %922 ]
  %985 = phi ptr [ %135, %155 ], [ %286, %851 ], [ %286, %847 ], [ %286, %842 ], [ %286, %934 ], [ %286, %930 ], [ %286, %922 ]
  %986 = icmp ult ptr %985, %14
  %987 = icmp ult ptr %984, %34
  %988 = select i1 %986, i1 %987, i1 false
  br i1 %988, label %103, label %1001, !llvm.loop !66

989:                                              ; preds = %978, %938, %303
  %990 = phi ptr [ @.str.2, %978 ], [ @.str.1, %938 ], [ @.str, %303 ]
  %991 = phi i32 [ %151, %978 ], [ %247, %938 ], [ %295, %303 ]
  %992 = phi i64 [ %149, %978 ], [ %245, %938 ], [ %293, %303 ]
  %993 = phi ptr [ %135, %978 ], [ %231, %938 ], [ %286, %303 ]
  %994 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %990, ptr %994, align 8, !tbaa !67
  br label %995

995:                                              ; preds = %989, %978
  %996 = phi i32 [ 16191, %978 ], [ 16209, %989 ]
  %997 = phi i32 [ %151, %978 ], [ %991, %989 ]
  %998 = phi i64 [ %149, %978 ], [ %992, %989 ]
  %999 = phi ptr [ %135, %978 ], [ %993, %989 ]
  %1000 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %996, ptr %1000, align 8, !tbaa !68
  br label %1001

1001:                                             ; preds = %995, %981
  %1002 = phi i32 [ %997, %995 ], [ %982, %981 ]
  %1003 = phi i64 [ %998, %995 ], [ %983, %981 ]
  %1004 = phi ptr [ %106, %995 ], [ %984, %981 ]
  %1005 = phi ptr [ %999, %995 ], [ %985, %981 ]
  %1006 = and i32 %1002, -8
  %1007 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1002, i32 %1006), !nosanitize !16
  %1008 = lshr i32 %1002, 3
  %1009 = zext nneg i32 %1008 to i64
  %1010 = sub nsw i64 0, %1009
  %1011 = getelementptr inbounds i8, ptr %1005, i64 %1010
  store ptr %1011, ptr %0, align 8, !tbaa !14
  store ptr %1004, ptr %15, align 8, !tbaa !18
  %1012 = ptrtoint ptr %14 to i64
  %1013 = ptrtoint ptr %1011 to i64
  %1014 = sub i64 %1012, %1013
  %1015 = trunc i64 %1014 to i32
  %1016 = add i32 %1015, 5
  store i32 %1016, ptr %6, align 8, !tbaa !15
  %1017 = ptrtoint ptr %34 to i64
  %1018 = ptrtoint ptr %1004 to i64
  %1019 = sub i64 %1017, %1018
  %1020 = extractvalue { i32, i1 } %1007, 0, !nosanitize !16
  %1021 = shl nsw i32 -1, %1020
  %1022 = xor i32 %1021, -1
  %1023 = zext nneg i32 %1022 to i64
  %1024 = and i64 %1003, %1023
  %1025 = trunc i64 %1019 to i32
  %1026 = add i32 %1025, 257
  store i32 %1026, ptr %18, align 8, !tbaa !19
  store i64 %1024, ptr %44, align 8, !tbaa !27
  store i32 %1020, ptr %46, align 8, !tbaa !28
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

attributes #0 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
