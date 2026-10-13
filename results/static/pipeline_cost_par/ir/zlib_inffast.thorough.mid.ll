; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_inffast.ll'
source_filename = "/mydata/zlib/inffast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.code = type { i8, i8, i16 }

@.str = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1

; Function Attrs: nounwind uwtable
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
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %18 = load i32, ptr %17, align 8, !tbaa !19
  %19 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1, i32 %18), !nosanitize !16
  %20 = extractvalue { i32, i1 } %19, 1, !nosanitize !16
  br i1 %20, label %21, label %22, !prof !17, !nosanitize !16

21:                                               ; preds = %11
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

22:                                               ; preds = %11
  %23 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %18, i32 257), !nosanitize !16
  %24 = extractvalue { i32, i1 } %23, 1, !nosanitize !16
  br i1 %24, label %25, label %26, !prof !17, !nosanitize !16

25:                                               ; preds = %22
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

26:                                               ; preds = %22
  %27 = extractvalue { i32, i1 } %19, 0, !nosanitize !16
  %28 = zext i32 %27 to i64
  %29 = sub nsw i64 0, %28
  %30 = getelementptr inbounds i8, ptr %16, i64 %29
  %31 = extractvalue { i32, i1 } %23, 0, !nosanitize !16
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds nuw i8, ptr %16, i64 %32
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 60
  %35 = load i32, ptr %34, align 4, !tbaa !20
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %37 = load i32, ptr %36, align 8, !tbaa !24
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 68
  %39 = load i32, ptr %38, align 4, !tbaa !25
  %40 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %41 = load ptr, ptr %40, align 8, !tbaa !26
  %42 = ptrtoint ptr %41 to i64
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %44 = load i64, ptr %43, align 8, !tbaa !27
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 88
  %46 = load i32, ptr %45, align 8, !tbaa !28
  %47 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %48 = load ptr, ptr %47, align 8, !tbaa !29
  %49 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %50 = load ptr, ptr %49, align 8, !tbaa !30
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %52 = load i32, ptr %51, align 8, !tbaa !31
  %53 = shl nsw i32 -1, %52
  %54 = xor i32 %53, -1
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 124
  %56 = load i32, ptr %55, align 4, !tbaa !32
  %57 = shl nsw i32 -1, %56
  %58 = xor i32 %57, -1
  %59 = zext nneg i32 %54 to i64
  %60 = zext nneg i32 %58 to i64
  %61 = ptrtoint ptr %30 to i64
  %62 = getelementptr inbounds nuw i8, ptr %4, i64 7144
  %63 = icmp eq i32 %39, 0
  %64 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %35, i32 %39)
  %65 = extractvalue { i32, i1 } %64, 1
  %66 = extractvalue { i32, i1 } %64, 0
  %67 = zext i32 %39 to i64
  %68 = icmp ult i32 %39, 32
  %69 = and i64 %67, 4294967264
  %70 = trunc nuw i64 %69 to i32
  %71 = sub i32 %39, %70
  %72 = getelementptr i8, ptr %41, i64 %69
  %73 = icmp eq i64 %69, %67
  %mv.h = icmp sge i32 %35, 0
  %mv.h.fr = freeze i1 %mv.h
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %26
  br label %74

74:                                               ; preds = %569, %.mv.ph.mv.fast
  %75 = phi i32 [ %46, %.mv.ph.mv.fast ], [ %570, %569 ]
  %76 = phi i64 [ %44, %.mv.ph.mv.fast ], [ %571, %569 ]
  %77 = phi ptr [ %16, %.mv.ph.mv.fast ], [ %572, %569 ]
  %78 = phi ptr [ %5, %.mv.ph.mv.fast ], [ %573, %569 ]
  %79 = icmp ult i32 %75, 15
  br i1 %79, label %80, label %101

80:                                               ; preds = %74
  %81 = load i8, ptr %78, align 1, !tbaa !33
  %82 = zext i8 %81 to i64
  %83 = zext nneg i32 %75 to i64
  %84 = shl nuw nsw i64 %82, %83
  %85 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %76, i64 %84), !nosanitize !16
  %86 = extractvalue { i64, i1 } %85, 1, !nosanitize !16
  br i1 %86, label %590, label %87, !prof !17, !nosanitize !16

87:                                               ; preds = %80
  %88 = extractvalue { i64, i1 } %85, 0, !nosanitize !16
  %89 = getelementptr inbounds nuw i8, ptr %78, i64 1
  %90 = add nuw nsw i32 %75, 8
  %91 = load i8, ptr %89, align 1, !tbaa !33
  %92 = zext i8 %91 to i64
  %93 = zext nneg i32 %90 to i64
  %94 = shl nuw nsw i64 %92, %93
  %95 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %88, i64 %94), !nosanitize !16
  %96 = extractvalue { i64, i1 } %95, 1, !nosanitize !16
  br i1 %96, label %601, label %97, !prof !17, !nosanitize !16

97:                                               ; preds = %87
  %98 = extractvalue { i64, i1 } %95, 0, !nosanitize !16
  %99 = getelementptr inbounds nuw i8, ptr %78, i64 2
  %100 = or disjoint i32 %75, 16
  br label %101

101:                                              ; preds = %97, %74
  %102 = phi i32 [ %100, %97 ], [ %75, %74 ]
  %103 = phi i64 [ %98, %97 ], [ %76, %74 ]
  %104 = phi ptr [ %99, %97 ], [ %78, %74 ]
  %105 = and i64 %103, %59
  %106 = getelementptr inbounds nuw %struct.code, ptr %48, i64 %105
  %107 = getelementptr inbounds nuw i8, ptr %106, i64 1
  %108 = load i8, ptr %107, align 1, !tbaa !34
  %109 = zext i8 %108 to i32
  %110 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %102, i32 %109), !nosanitize !16
  %111 = extractvalue { i32, i1 } %110, 1, !nosanitize !16
  br i1 %111, label %.loopexit8, label %112, !prof !37, !nosanitize !16

112:                                              ; preds = %101
  %113 = zext nneg i8 %108 to i64
  %114 = lshr i64 %103, %113
  br label %115

115:                                              ; preds = %547, %112
  %116 = phi { i32, i1 } [ %562, %547 ], [ %110, %112 ]
  %117 = phi i64 [ %561, %547 ], [ %114, %112 ]
  %118 = phi ptr [ %556, %547 ], [ %106, %112 ]
  %119 = extractvalue { i32, i1 } %116, 0
  %120 = load i8, ptr %118, align 2, !tbaa !38
  %121 = zext i8 %120 to i32
  %122 = icmp eq i8 %120, 0
  br i1 %122, label %564, label %123

123:                                              ; preds = %115
  %124 = and i32 %121, 16
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %544, label %126

126:                                              ; preds = %123
  %.lcssa25.mv.fast = phi i64 [ %117, %123 ]
  %.lcssa21.mv.fast = phi ptr [ %118, %123 ]
  %.lcssa17.mv.fast = phi i32 [ %119, %123 ]
  %.lcssa13.mv.fast = phi i32 [ %121, %123 ]
  %127 = getelementptr inbounds nuw i8, ptr %.lcssa21.mv.fast, i64 2
  %128 = load i16, ptr %127, align 2, !tbaa !39
  %129 = zext i16 %128 to i32
  %130 = and i32 %.lcssa13.mv.fast, 15
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %160, label %132

132:                                              ; preds = %126
  %133 = icmp ult i32 %.lcssa17.mv.fast, %130
  br i1 %133, label %134, label %145

134:                                              ; preds = %132
  %135 = load i8, ptr %104, align 1, !tbaa !33
  %136 = zext i8 %135 to i64
  %137 = zext nneg i32 %.lcssa17.mv.fast to i64
  %138 = shl nuw nsw i64 %136, %137
  %139 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.lcssa25.mv.fast, i64 %138), !nosanitize !16
  %140 = extractvalue { i64, i1 } %139, 1, !nosanitize !16
  br i1 %140, label %652, label %141, !prof !17, !nosanitize !16

141:                                              ; preds = %134
  %142 = extractvalue { i64, i1 } %139, 0, !nosanitize !16
  %143 = getelementptr inbounds nuw i8, ptr %104, i64 1
  %144 = add nuw nsw i32 %.lcssa17.mv.fast, 8
  br label %145

145:                                              ; preds = %141, %132
  %146 = phi i32 [ %144, %141 ], [ %.lcssa17.mv.fast, %132 ]
  %147 = phi i64 [ %142, %141 ], [ %.lcssa25.mv.fast, %132 ]
  %148 = phi ptr [ %143, %141 ], [ %104, %132 ]
  %149 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %146, i32 %130), !nosanitize !16
  %150 = extractvalue { i32, i1 } %149, 1, !nosanitize !16
  br i1 %150, label %663, label %151, !prof !17, !nosanitize !16

151:                                              ; preds = %145
  %152 = trunc i64 %147 to i32
  %153 = shl nsw i32 -1, %130
  %154 = xor i32 %153, -1
  %155 = and i32 %152, %154
  %156 = add nuw nsw i32 %155, %129
  %157 = extractvalue { i32, i1 } %149, 0, !nosanitize !16
  %158 = zext nneg i32 %130 to i64
  %159 = lshr i64 %147, %158
  br label %160

160:                                              ; preds = %151, %126
  %161 = phi i32 [ %157, %151 ], [ %.lcssa17.mv.fast, %126 ]
  %162 = phi i64 [ %159, %151 ], [ %.lcssa25.mv.fast, %126 ]
  %163 = phi ptr [ %148, %151 ], [ %104, %126 ]
  %164 = phi i32 [ %156, %151 ], [ %129, %126 ]
  %165 = icmp ult i32 %161, 15
  br i1 %165, label %166, label %187

166:                                              ; preds = %160
  %167 = load i8, ptr %163, align 1, !tbaa !33
  %168 = zext i8 %167 to i64
  %169 = zext nneg i32 %161 to i64
  %170 = shl nuw nsw i64 %168, %169
  %171 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %162, i64 %170), !nosanitize !16
  %172 = extractvalue { i64, i1 } %171, 1, !nosanitize !16
  br i1 %172, label %686, label %173, !prof !17, !nosanitize !16

173:                                              ; preds = %166
  %174 = extractvalue { i64, i1 } %171, 0, !nosanitize !16
  %175 = getelementptr inbounds nuw i8, ptr %163, i64 1
  %176 = add nuw nsw i32 %161, 8
  %177 = load i8, ptr %175, align 1, !tbaa !33
  %178 = zext i8 %177 to i64
  %179 = zext nneg i32 %176 to i64
  %180 = shl nuw nsw i64 %178, %179
  %181 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %174, i64 %180), !nosanitize !16
  %182 = extractvalue { i64, i1 } %181, 1, !nosanitize !16
  br i1 %182, label %697, label %183, !prof !17, !nosanitize !16

183:                                              ; preds = %173
  %184 = extractvalue { i64, i1 } %181, 0, !nosanitize !16
  %185 = getelementptr inbounds nuw i8, ptr %163, i64 2
  %186 = or disjoint i32 %161, 16
  br label %187

187:                                              ; preds = %183, %160
  %188 = phi i32 [ %186, %183 ], [ %161, %160 ]
  %189 = phi i64 [ %184, %183 ], [ %162, %160 ]
  %190 = phi ptr [ %185, %183 ], [ %163, %160 ]
  %191 = and i64 %189, %60
  %192 = getelementptr inbounds nuw %struct.code, ptr %50, i64 %191
  %193 = getelementptr inbounds nuw i8, ptr %192, i64 1
  %194 = load i8, ptr %193, align 1, !tbaa !34
  %195 = zext i8 %194 to i32
  %196 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %188, i32 %195), !nosanitize !16
  %197 = extractvalue { i32, i1 } %196, 1, !nosanitize !16
  br i1 %197, label %.loopexit9, label %198, !prof !37, !nosanitize !16

198:                                              ; preds = %187
  %199 = zext nneg i8 %194 to i64
  %200 = lshr i64 %189, %199
  br label %201

201:                                              ; preds = %527, %198
  %202 = phi { i32, i1 } [ %542, %527 ], [ %196, %198 ]
  %203 = phi i64 [ %541, %527 ], [ %200, %198 ]
  %204 = phi ptr [ %536, %527 ], [ %192, %198 ]
  %205 = extractvalue { i32, i1 } %202, 0
  %206 = load i8, ptr %204, align 2, !tbaa !38
  %207 = zext i8 %206 to i32
  %208 = and i32 %207, 16
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %524, label %210

210:                                              ; preds = %201
  %.lcssa36.mv.fast = phi i64 [ %203, %201 ]
  %.lcssa33.mv.fast = phi ptr [ %204, %201 ]
  %.lcssa30.mv.fast = phi i32 [ %205, %201 ]
  %.lcssa.mv.fast = phi i32 [ %207, %201 ]
  %211 = getelementptr inbounds nuw i8, ptr %.lcssa33.mv.fast, i64 2
  %212 = load i16, ptr %211, align 2, !tbaa !39
  %213 = zext i16 %212 to i32
  %214 = and i32 %.lcssa.mv.fast, 15
  %215 = icmp ult i32 %.lcssa30.mv.fast, %214
  br i1 %215, label %216, label %239

216:                                              ; preds = %210
  %217 = getelementptr inbounds nuw i8, ptr %190, i64 1
  %218 = load i8, ptr %190, align 1, !tbaa !33
  %219 = zext i8 %218 to i64
  %220 = zext nneg i32 %.lcssa30.mv.fast to i64
  %221 = shl nuw nsw i64 %219, %220
  %222 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.lcssa36.mv.fast, i64 %221), !nosanitize !16
  %223 = extractvalue { i64, i1 } %222, 0, !nosanitize !16
  %224 = extractvalue { i64, i1 } %222, 1, !nosanitize !16
  br i1 %224, label %741, label %225, !prof !17, !nosanitize !16

225:                                              ; preds = %216
  %226 = add nuw nsw i32 %.lcssa30.mv.fast, 8
  %227 = icmp samesign ult i32 %226, %214
  br i1 %227, label %228, label %239

228:                                              ; preds = %225
  %229 = load i8, ptr %217, align 1, !tbaa !33
  %230 = zext i8 %229 to i64
  %231 = zext nneg i32 %226 to i64
  %232 = shl nuw nsw i64 %230, %231
  %233 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %223, i64 %232), !nosanitize !16
  %234 = extractvalue { i64, i1 } %233, 1, !nosanitize !16
  br i1 %234, label %752, label %235, !prof !17, !nosanitize !16

235:                                              ; preds = %228
  %236 = extractvalue { i64, i1 } %233, 0, !nosanitize !16
  %237 = getelementptr inbounds nuw i8, ptr %190, i64 2
  %238 = add nuw nsw i32 %.lcssa30.mv.fast, 16
  br label %239

239:                                              ; preds = %235, %225, %210
  %240 = phi i32 [ %238, %235 ], [ %226, %225 ], [ %.lcssa30.mv.fast, %210 ]
  %241 = phi i64 [ %236, %235 ], [ %223, %225 ], [ %.lcssa36.mv.fast, %210 ]
  %242 = phi ptr [ %237, %235 ], [ %217, %225 ], [ %190, %210 ]
  %243 = shl nsw i32 -1, %214
  %244 = xor i32 %243, -1
  %245 = trunc i64 %241 to i32
  %246 = and i32 %245, %244
  %247 = add nuw nsw i32 %246, %213
  %248 = zext nneg i32 %214 to i64
  %249 = lshr i64 %241, %248
  %250 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %240, i32 %214), !nosanitize !16
  %251 = extractvalue { i32, i1 } %250, 0, !nosanitize !16
  %252 = extractvalue { i32, i1 } %250, 1, !nosanitize !16
  br i1 false, label %771, label %253, !prof !17, !nosanitize !16

253:                                              ; preds = %239
  %254 = ptrtoint ptr %77 to i64
  %255 = sub i64 %254, %61
  %256 = trunc i64 %255 to i32
  %257 = icmp ugt i32 %247, %256
  br i1 %257, label %290, label %258

258:                                              ; preds = %253
  %259 = zext nneg i32 %247 to i64
  %260 = sub nsw i64 0, %259
  %261 = getelementptr inbounds i8, ptr %77, i64 %260
  br label %262

262:                                              ; preds = %275, %258
  %263 = phi ptr [ %77, %258 ], [ %277, %275 ]
  %264 = phi i32 [ %164, %258 ], [ %276, %275 ]
  %265 = phi ptr [ %261, %258 ], [ %278, %275 ]
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 1
  %267 = load i8, ptr %265, align 1, !tbaa !33
  %268 = getelementptr inbounds nuw i8, ptr %263, i64 1
  store i8 %267, ptr %263, align 1, !tbaa !33
  %269 = getelementptr inbounds nuw i8, ptr %265, i64 2
  %270 = load i8, ptr %266, align 1, !tbaa !33
  %271 = getelementptr inbounds nuw i8, ptr %263, i64 2
  store i8 %270, ptr %268, align 1, !tbaa !33
  %272 = load i8, ptr %269, align 1, !tbaa !33
  store i8 %272, ptr %271, align 1, !tbaa !33
  %273 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %264, i32 3), !nosanitize !16
  %274 = extractvalue { i32, i1 } %273, 1, !nosanitize !16
  br i1 %274, label %1035, label %275, !prof !17, !nosanitize !16

275:                                              ; preds = %262
  %276 = extractvalue { i32, i1 } %273, 0, !nosanitize !16
  %277 = getelementptr inbounds nuw i8, ptr %263, i64 3
  %278 = getelementptr inbounds nuw i8, ptr %265, i64 3
  %279 = icmp ugt i32 %276, 2
  br i1 %279, label %262, label %280, !llvm.loop !40

280:                                              ; preds = %275
  %.lcssa45.mv.fast = phi i32 [ %276, %275 ]
  %.lcssa44.mv.fast = phi ptr [ %277, %275 ]
  %.lcssa43.mv.fast = phi ptr [ %278, %275 ]
  %.lcssa42.mv.fast = phi ptr [ %263, %275 ]
  %.lcssa40.mv.fast = phi ptr [ %265, %275 ]
  %281 = icmp eq i32 %.lcssa45.mv.fast, 0
  br i1 %281, label %569, label %282

282:                                              ; preds = %280
  %283 = load i8, ptr %.lcssa43.mv.fast, align 1, !tbaa !33
  %284 = getelementptr inbounds nuw i8, ptr %.lcssa42.mv.fast, i64 4
  store i8 %283, ptr %.lcssa44.mv.fast, align 1, !tbaa !33
  %285 = icmp eq i32 %.lcssa45.mv.fast, 2
  br i1 %285, label %286, label %569

286:                                              ; preds = %282
  %287 = getelementptr inbounds nuw i8, ptr %.lcssa40.mv.fast, i64 4
  %288 = load i8, ptr %287, align 1, !tbaa !33
  %289 = getelementptr inbounds nuw i8, ptr %.lcssa42.mv.fast, i64 5
  store i8 %288, ptr %284, align 1, !tbaa !33
  br label %569

290:                                              ; preds = %253
  %291 = sub nuw nsw i32 %247, %256
  %292 = icmp ugt i32 %291, %37
  br i1 %292, label %293, label %296

293:                                              ; preds = %290
  %294 = load i32, ptr %62, align 8, !tbaa !42
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %.loopexit10

296:                                              ; preds = %293, %290
  br i1 %63, label %432, label %297

297:                                              ; preds = %296
  %298 = icmp ult i32 %39, %291
  br i1 %298, label %322, label %299

299:                                              ; preds = %297
  %300 = sub nuw i32 %39, %291
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds nuw i8, ptr %41, i64 %301
  %303 = icmp ult i32 %291, %164
  br i1 %303, label %304, label %458

304:                                              ; preds = %299
  %305 = sub nuw nsw i32 %164, %291
  br label %306

306:                                              ; preds = %313, %304
  %307 = phi ptr [ %77, %304 ], [ %314, %313 ]
  %308 = phi i32 [ %291, %304 ], [ %315, %313 ]
  %309 = phi ptr [ %302, %304 ], [ %316, %313 ]
  %310 = load i8, ptr %309, align 1, !tbaa !33
  store i8 %310, ptr %307, align 1, !tbaa !33
  %311 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %308, i32 1), !nosanitize !16
  %312 = extractvalue { i32, i1 } %311, 1, !nosanitize !16
  br i1 false, label %942, label %313, !prof !17, !nosanitize !16

313:                                              ; preds = %306
  %314 = getelementptr inbounds nuw i8, ptr %307, i64 1
  %315 = extractvalue { i32, i1 } %311, 0, !nosanitize !16
  %316 = getelementptr inbounds nuw i8, ptr %309, i64 1
  %317 = icmp eq i32 %315, 0
  br i1 %317, label %318, label %306, !llvm.loop !43

318:                                              ; preds = %313
  %.lcssa46.mv.fast = phi ptr [ %314, %313 ]
  %319 = zext nneg i32 %247 to i64
  %320 = sub nsw i64 0, %319
  %321 = getelementptr inbounds i8, ptr %.lcssa46.mv.fast, i64 %320
  br label %458

322:                                              ; preds = %297
  br i1 false, label %.loopexit11, label %323, !prof !17, !nosanitize !16

323:                                              ; preds = %322
  %324 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %66, i32 %291), !nosanitize !16
  %325 = extractvalue { i32, i1 } %324, 1, !nosanitize !16
  br i1 %325, label %819, label %326, !prof !17, !nosanitize !16

326:                                              ; preds = %323
  %327 = extractvalue { i32, i1 } %324, 0, !nosanitize !16
  %328 = zext i32 %327 to i64
  %329 = getelementptr inbounds nuw i8, ptr %41, i64 %328
  %330 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %291, i32 %39), !nosanitize !16
  %331 = extractvalue { i32, i1 } %330, 0, !nosanitize !16
  %332 = extractvalue { i32, i1 } %330, 1, !nosanitize !16
  br i1 false, label %827, label %333, !prof !17, !nosanitize !16

333:                                              ; preds = %326
  %334 = icmp ult i32 %331, %164
  br i1 %334, label %335, label %458

335:                                              ; preds = %333
  %336 = sub nuw i32 %164, %331
  br label %337

337:                                              ; preds = %345, %335
  %338 = phi i64 [ %350, %345 ], [ 0, %335 ]
  %339 = phi ptr [ %346, %345 ], [ %77, %335 ]
  %340 = phi i32 [ %347, %345 ], [ %331, %335 ]
  %341 = phi ptr [ %348, %345 ], [ %329, %335 ]
  %342 = load i8, ptr %341, align 1, !tbaa !33
  store i8 %342, ptr %339, align 1, !tbaa !33
  %343 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %340, i32 1), !nosanitize !16
  %344 = extractvalue { i32, i1 } %343, 1, !nosanitize !16
  br i1 false, label %840, label %345, !prof !17, !nosanitize !16

345:                                              ; preds = %337
  %346 = getelementptr inbounds nuw i8, ptr %339, i64 1
  %347 = extractvalue { i32, i1 } %343, 0, !nosanitize !16
  %348 = getelementptr inbounds nuw i8, ptr %341, i64 1
  %349 = icmp eq i32 %347, 0
  %350 = add i64 %338, 1
  br i1 %349, label %351, label %337, !llvm.loop !44

351:                                              ; preds = %345
  %.lcssa49.mv.fast = phi ptr [ %346, %345 ]
  %.lcssa48.mv.fast = phi i64 [ %338, %345 ]
  %352 = icmp ult i32 %39, %336
  br i1 %352, label %353, label %458

353:                                              ; preds = %351
  br i1 %68, label %372, label %354

354:                                              ; preds = %353
  %355 = sub i64 %254, %42
  %356 = add i64 %355, 1
  %357 = add i64 %.lcssa48.mv.fast, %356
  %358 = icmp ult i64 %357, 32
  br i1 %358, label %372, label %359

359:                                              ; preds = %354
  %360 = getelementptr i8, ptr %.lcssa49.mv.fast, i64 %69
  br label %361

361:                                              ; preds = %361, %359
  %362 = phi i64 [ 0, %359 ], [ %369, %361 ]
  %363 = getelementptr i8, ptr %.lcssa49.mv.fast, i64 %362
  %364 = getelementptr i8, ptr %41, i64 %362
  %365 = getelementptr i8, ptr %364, i64 16
  %366 = load <16 x i8>, ptr %364, align 1, !tbaa !33
  %367 = load <16 x i8>, ptr %365, align 1, !tbaa !33
  %368 = getelementptr i8, ptr %363, i64 16
  store <16 x i8> %366, ptr %363, align 1, !tbaa !33
  store <16 x i8> %367, ptr %368, align 1, !tbaa !33
  %369 = add nuw i64 %362, 32
  %370 = icmp eq i64 %369, %69
  br i1 %370, label %371, label %361, !llvm.loop !45

371:                                              ; preds = %361
  br i1 %73, label %426, label %372

372:                                              ; preds = %371, %354, %353
  %373 = phi ptr [ %.lcssa49.mv.fast, %354 ], [ %.lcssa49.mv.fast, %353 ], [ %360, %371 ]
  %374 = phi i32 [ %39, %354 ], [ %39, %353 ], [ %71, %371 ]
  %375 = phi ptr [ %41, %354 ], [ %41, %353 ], [ %72, %371 ]
  %376 = add i32 %374, -1
  %377 = and i32 %374, 7
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %390, label %.preheader3.mv.fast

379:                                              ; preds = %.preheader3.mv.fast, %379
  %380 = phi ptr [ %385, %379 ], [ %373, %.preheader3.mv.fast ]
  %381 = phi i32 [ %386, %379 ], [ %374, %.preheader3.mv.fast ]
  %382 = phi ptr [ %387, %379 ], [ %375, %.preheader3.mv.fast ]
  %383 = phi i32 [ %388, %379 ], [ 0, %.preheader3.mv.fast ]
  %384 = load i8, ptr %382, align 1, !tbaa !33
  %385 = getelementptr inbounds nuw i8, ptr %380, i64 1
  store i8 %384, ptr %380, align 1, !tbaa !33
  %386 = add i32 %381, -1
  %387 = getelementptr inbounds nuw i8, ptr %382, i64 1
  %388 = add i32 %383, 1
  %389 = icmp eq i32 %388, %377
  br i1 %389, label %.loopexit4.mv.fast, label %379, !llvm.loop !48

390:                                              ; preds = %.loopexit4.mv.fast, %372
  %391 = phi ptr [ poison, %372 ], [ %.lcssa52.mv.fast, %.loopexit4.mv.fast ]
  %392 = phi ptr [ %373, %372 ], [ %.lcssa52.mv.fast, %.loopexit4.mv.fast ]
  %393 = phi i32 [ %374, %372 ], [ %.lcssa51.mv.fast, %.loopexit4.mv.fast ]
  %394 = phi ptr [ %375, %372 ], [ %.lcssa50.mv.fast, %.loopexit4.mv.fast ]
  %395 = icmp ult i32 %376, 7
  br i1 %395, label %426, label %.preheader1.mv.fast

396:                                              ; preds = %.preheader1.mv.fast, %396
  %397 = phi ptr [ %422, %396 ], [ %392, %.preheader1.mv.fast ]
  %398 = phi i32 [ %423, %396 ], [ %393, %.preheader1.mv.fast ]
  %399 = phi ptr [ %424, %396 ], [ %394, %.preheader1.mv.fast ]
  %400 = load i8, ptr %399, align 1, !tbaa !33
  %401 = getelementptr inbounds nuw i8, ptr %397, i64 1
  store i8 %400, ptr %397, align 1, !tbaa !33
  %402 = getelementptr inbounds nuw i8, ptr %399, i64 1
  %403 = load i8, ptr %402, align 1, !tbaa !33
  %404 = getelementptr inbounds nuw i8, ptr %397, i64 2
  store i8 %403, ptr %401, align 1, !tbaa !33
  %405 = getelementptr inbounds nuw i8, ptr %399, i64 2
  %406 = load i8, ptr %405, align 1, !tbaa !33
  %407 = getelementptr inbounds nuw i8, ptr %397, i64 3
  store i8 %406, ptr %404, align 1, !tbaa !33
  %408 = getelementptr inbounds nuw i8, ptr %399, i64 3
  %409 = load i8, ptr %408, align 1, !tbaa !33
  %410 = getelementptr inbounds nuw i8, ptr %397, i64 4
  store i8 %409, ptr %407, align 1, !tbaa !33
  %411 = getelementptr inbounds nuw i8, ptr %399, i64 4
  %412 = load i8, ptr %411, align 1, !tbaa !33
  %413 = getelementptr inbounds nuw i8, ptr %397, i64 5
  store i8 %412, ptr %410, align 1, !tbaa !33
  %414 = getelementptr inbounds nuw i8, ptr %399, i64 5
  %415 = load i8, ptr %414, align 1, !tbaa !33
  %416 = getelementptr inbounds nuw i8, ptr %397, i64 6
  store i8 %415, ptr %413, align 1, !tbaa !33
  %417 = getelementptr inbounds nuw i8, ptr %399, i64 6
  %418 = load i8, ptr %417, align 1, !tbaa !33
  %419 = getelementptr inbounds nuw i8, ptr %397, i64 7
  store i8 %418, ptr %416, align 1, !tbaa !33
  %420 = getelementptr inbounds nuw i8, ptr %399, i64 7
  %421 = load i8, ptr %420, align 1, !tbaa !33
  %422 = getelementptr inbounds nuw i8, ptr %397, i64 8
  store i8 %421, ptr %419, align 1, !tbaa !33
  %423 = add i32 %398, -8
  %424 = getelementptr inbounds nuw i8, ptr %399, i64 8
  %425 = icmp eq i32 %423, 0
  br i1 %425, label %.loopexit2.mv.fast, label %396, !llvm.loop !50

426:                                              ; preds = %.loopexit2.mv.fast, %390, %371
  %427 = phi ptr [ %360, %371 ], [ %391, %390 ], [ %.lcssa53.mv.fast, %.loopexit2.mv.fast ]
  %428 = sub nuw i32 %336, %39
  %429 = zext nneg i32 %247 to i64
  %430 = sub nsw i64 0, %429
  %431 = getelementptr inbounds i8, ptr %427, i64 %430
  br label %458

432:                                              ; preds = %296
  %433 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %35, i32 %291), !nosanitize !16
  %434 = extractvalue { i32, i1 } %433, 1, !nosanitize !16
  br i1 %434, label %787, label %435, !prof !17, !nosanitize !16

435:                                              ; preds = %432
  %436 = extractvalue { i32, i1 } %433, 0, !nosanitize !16
  %437 = zext i32 %436 to i64
  %438 = getelementptr inbounds nuw i8, ptr %41, i64 %437
  %439 = icmp ult i32 %291, %164
  br i1 %439, label %440, label %458

440:                                              ; preds = %435
  %441 = sub nuw nsw i32 %164, %291
  br label %442

442:                                              ; preds = %449, %440
  %443 = phi ptr [ %77, %440 ], [ %450, %449 ]
  %444 = phi i32 [ %291, %440 ], [ %451, %449 ]
  %445 = phi ptr [ %438, %440 ], [ %452, %449 ]
  %446 = load i8, ptr %445, align 1, !tbaa !33
  store i8 %446, ptr %443, align 1, !tbaa !33
  %447 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %444, i32 1), !nosanitize !16
  %448 = extractvalue { i32, i1 } %447, 1, !nosanitize !16
  br i1 false, label %802, label %449, !prof !17, !nosanitize !16

449:                                              ; preds = %442
  %450 = getelementptr inbounds nuw i8, ptr %443, i64 1
  %451 = extractvalue { i32, i1 } %447, 0, !nosanitize !16
  %452 = getelementptr inbounds nuw i8, ptr %445, i64 1
  %453 = icmp eq i32 %451, 0
  br i1 %453, label %454, label %442, !llvm.loop !51

454:                                              ; preds = %449
  %.lcssa54.mv.fast = phi ptr [ %450, %449 ]
  %455 = zext nneg i32 %247 to i64
  %456 = sub nsw i64 0, %455
  %457 = getelementptr inbounds i8, ptr %.lcssa54.mv.fast, i64 %456
  br label %458

458:                                              ; preds = %454, %435, %426, %351, %333, %318, %299
  %459 = phi ptr [ %.lcssa54.mv.fast, %454 ], [ %77, %435 ], [ %427, %426 ], [ %.lcssa49.mv.fast, %351 ], [ %77, %333 ], [ %.lcssa46.mv.fast, %318 ], [ %77, %299 ]
  %460 = phi i32 [ %441, %454 ], [ %164, %435 ], [ %428, %426 ], [ %336, %351 ], [ %164, %333 ], [ %305, %318 ], [ %164, %299 ]
  %461 = phi ptr [ %457, %454 ], [ %438, %435 ], [ %431, %426 ], [ %41, %351 ], [ %329, %333 ], [ %321, %318 ], [ %302, %299 ]
  %462 = icmp ugt i32 %460, 2
  br i1 %462, label %463, label %511

463:                                              ; preds = %458
  %464 = add i32 %460, -3
  %465 = udiv i32 %464, 3
  %466 = and i32 %465, 1
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %479

468:                                              ; preds = %463
  %469 = getelementptr inbounds nuw i8, ptr %461, i64 1
  %470 = load i8, ptr %461, align 1, !tbaa !33
  %471 = getelementptr inbounds nuw i8, ptr %459, i64 1
  store i8 %470, ptr %459, align 1, !tbaa !33
  %472 = getelementptr inbounds nuw i8, ptr %461, i64 2
  %473 = load i8, ptr %469, align 1, !tbaa !33
  %474 = getelementptr inbounds nuw i8, ptr %459, i64 2
  store i8 %473, ptr %471, align 1, !tbaa !33
  %475 = load i8, ptr %472, align 1, !tbaa !33
  store i8 %475, ptr %474, align 1, !tbaa !33
  %476 = add i32 %460, -3
  %477 = getelementptr inbounds nuw i8, ptr %459, i64 3
  %478 = getelementptr inbounds nuw i8, ptr %461, i64 3
  br label %479

479:                                              ; preds = %468, %463
  %480 = phi ptr [ %461, %463 ], [ %478, %468 ]
  %481 = phi i32 [ %460, %463 ], [ %476, %468 ]
  %482 = phi ptr [ %459, %463 ], [ %477, %468 ]
  %483 = phi i32 [ poison, %463 ], [ %476, %468 ]
  %484 = phi ptr [ poison, %463 ], [ %477, %468 ]
  %485 = phi ptr [ poison, %463 ], [ %478, %468 ]
  %486 = icmp ult i32 %464, 3
  br i1 %486, label %511, label %.preheader.mv.fast

487:                                              ; preds = %.preheader.mv.fast, %487
  %488 = phi ptr [ %509, %487 ], [ %480, %.preheader.mv.fast ]
  %489 = phi i32 [ %507, %487 ], [ %481, %.preheader.mv.fast ]
  %490 = phi ptr [ %508, %487 ], [ %482, %.preheader.mv.fast ]
  %491 = getelementptr inbounds nuw i8, ptr %488, i64 1
  %492 = load i8, ptr %488, align 1, !tbaa !33
  %493 = getelementptr inbounds nuw i8, ptr %490, i64 1
  store i8 %492, ptr %490, align 1, !tbaa !33
  %494 = getelementptr inbounds nuw i8, ptr %488, i64 2
  %495 = load i8, ptr %491, align 1, !tbaa !33
  %496 = getelementptr inbounds nuw i8, ptr %490, i64 2
  store i8 %495, ptr %493, align 1, !tbaa !33
  %497 = load i8, ptr %494, align 1, !tbaa !33
  store i8 %497, ptr %496, align 1, !tbaa !33
  %498 = getelementptr inbounds nuw i8, ptr %490, i64 3
  %499 = getelementptr inbounds nuw i8, ptr %488, i64 3
  %500 = getelementptr inbounds nuw i8, ptr %488, i64 4
  %501 = load i8, ptr %499, align 1, !tbaa !33
  %502 = getelementptr inbounds nuw i8, ptr %490, i64 4
  store i8 %501, ptr %498, align 1, !tbaa !33
  %503 = getelementptr inbounds nuw i8, ptr %488, i64 5
  %504 = load i8, ptr %500, align 1, !tbaa !33
  %505 = getelementptr inbounds nuw i8, ptr %490, i64 5
  store i8 %504, ptr %502, align 1, !tbaa !33
  %506 = load i8, ptr %503, align 1, !tbaa !33
  store i8 %506, ptr %505, align 1, !tbaa !33
  %507 = add i32 %489, -6
  %508 = getelementptr inbounds nuw i8, ptr %490, i64 6
  %509 = getelementptr inbounds nuw i8, ptr %488, i64 6
  %510 = icmp ugt i32 %507, 2
  br i1 %510, label %487, label %.loopexit.mv.fast, !llvm.loop !52

511:                                              ; preds = %.loopexit.mv.fast, %479, %458
  %512 = phi ptr [ %459, %458 ], [ %484, %479 ], [ %.lcssa56.mv.fast, %.loopexit.mv.fast ]
  %513 = phi i32 [ %460, %458 ], [ %483, %479 ], [ %.lcssa57.mv.fast, %.loopexit.mv.fast ]
  %514 = phi ptr [ %461, %458 ], [ %485, %479 ], [ %.lcssa55.mv.fast, %.loopexit.mv.fast ]
  %515 = icmp eq i32 %513, 0
  br i1 %515, label %569, label %516

516:                                              ; preds = %511
  %517 = load i8, ptr %514, align 1, !tbaa !33
  %518 = getelementptr inbounds nuw i8, ptr %512, i64 1
  store i8 %517, ptr %512, align 1, !tbaa !33
  %519 = icmp eq i32 %513, 2
  br i1 %519, label %520, label %569

520:                                              ; preds = %516
  %521 = getelementptr inbounds nuw i8, ptr %514, i64 1
  %522 = load i8, ptr %521, align 1, !tbaa !33
  %523 = getelementptr inbounds nuw i8, ptr %512, i64 2
  store i8 %522, ptr %518, align 1, !tbaa !33
  br label %569

524:                                              ; preds = %201
  %525 = and i32 %207, 64
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %527, label %.loopexit5

527:                                              ; preds = %524
  %528 = shl nsw i32 -1, %207
  %529 = xor i32 %528, -1
  %530 = getelementptr inbounds nuw i8, ptr %204, i64 2
  %531 = load i16, ptr %530, align 2, !tbaa !39
  %532 = zext i16 %531 to i64
  %533 = getelementptr inbounds nuw %struct.code, ptr %50, i64 %532
  %534 = zext nneg i32 %529 to i64
  %535 = and i64 %203, %534
  %536 = getelementptr inbounds nuw %struct.code, ptr %533, i64 %535
  %537 = getelementptr inbounds nuw i8, ptr %536, i64 1
  %538 = load i8, ptr %537, align 1, !tbaa !34
  %539 = zext i8 %538 to i32
  %540 = zext nneg i8 %538 to i64
  %541 = lshr i64 %203, %540
  %542 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %205, i32 %539), !nosanitize !16
  %543 = extractvalue { i32, i1 } %542, 1, !nosanitize !16
  br i1 %543, label %.loopexit6, label %201, !prof !53, !nosanitize !16

544:                                              ; preds = %123
  %545 = and i32 %121, 64
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %1091

547:                                              ; preds = %544
  %548 = shl nsw i32 -1, %121
  %549 = xor i32 %548, -1
  %550 = getelementptr inbounds nuw i8, ptr %118, i64 2
  %551 = load i16, ptr %550, align 2, !tbaa !39
  %552 = zext i16 %551 to i64
  %553 = getelementptr inbounds nuw %struct.code, ptr %48, i64 %552
  %554 = zext nneg i32 %549 to i64
  %555 = and i64 %117, %554
  %556 = getelementptr inbounds nuw %struct.code, ptr %553, i64 %555
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 1
  %558 = load i8, ptr %557, align 1, !tbaa !34
  %559 = zext i8 %558 to i32
  %560 = zext nneg i8 %558 to i64
  %561 = lshr i64 %117, %560
  %562 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %119, i32 %559), !nosanitize !16
  %563 = extractvalue { i32, i1 } %562, 1, !nosanitize !16
  br i1 %563, label %.loopexit7, label %115, !prof !53, !nosanitize !16

564:                                              ; preds = %115
  %.lcssa24.mv.fast = phi i64 [ %117, %115 ]
  %.lcssa20.mv.fast = phi ptr [ %118, %115 ]
  %.lcssa16.mv.fast = phi i32 [ %119, %115 ]
  %565 = getelementptr inbounds nuw i8, ptr %.lcssa20.mv.fast, i64 2
  %566 = load i16, ptr %565, align 2, !tbaa !39
  %567 = trunc i16 %566 to i8
  %568 = getelementptr inbounds nuw i8, ptr %77, i64 1
  store i8 %567, ptr %77, align 1, !tbaa !33
  br label %569

569:                                              ; preds = %564, %520, %516, %511, %286, %282, %280
  %570 = phi i32 [ %.lcssa16.mv.fast, %564 ], [ %251, %520 ], [ %251, %516 ], [ %251, %511 ], [ %251, %286 ], [ %251, %282 ], [ %251, %280 ]
  %571 = phi i64 [ %.lcssa24.mv.fast, %564 ], [ %249, %520 ], [ %249, %516 ], [ %249, %511 ], [ %249, %286 ], [ %249, %282 ], [ %249, %280 ]
  %572 = phi ptr [ %568, %564 ], [ %523, %520 ], [ %518, %516 ], [ %512, %511 ], [ %289, %286 ], [ %284, %282 ], [ %.lcssa44.mv.fast, %280 ]
  %573 = phi ptr [ %104, %564 ], [ %242, %520 ], [ %242, %516 ], [ %242, %511 ], [ %242, %286 ], [ %242, %282 ], [ %242, %280 ]
  %574 = icmp ult ptr %573, %14
  %575 = icmp ult ptr %572, %33
  %576 = select i1 %574, i1 %575, i1 false
  br i1 %576, label %74, label %.loopexit12, !llvm.loop !54

.preheader.mv.fast:                               ; preds = %479
  br label %487

.loopexit.mv.fast:                                ; preds = %487
  %.lcssa57.mv.fast = phi i32 [ %507, %487 ]
  %.lcssa56.mv.fast = phi ptr [ %508, %487 ]
  %.lcssa55.mv.fast = phi ptr [ %509, %487 ]
  br label %511

.preheader1.mv.fast:                              ; preds = %390
  br label %396

.loopexit2.mv.fast:                               ; preds = %396
  %.lcssa53.mv.fast = phi ptr [ %422, %396 ]
  br label %426

.preheader3.mv.fast:                              ; preds = %372
  br label %379

.loopexit4.mv.fast:                               ; preds = %379
  %.lcssa52.mv.fast = phi ptr [ %385, %379 ]
  %.lcssa51.mv.fast = phi i32 [ %386, %379 ]
  %.lcssa50.mv.fast = phi ptr [ %387, %379 ]
  br label %390

.mv.ph:                                           ; preds = %26
  br label %577

577:                                              ; preds = %1094, %.mv.ph
  %578 = phi i32 [ %46, %.mv.ph ], [ %1095, %1094 ]
  %579 = phi i64 [ %44, %.mv.ph ], [ %1096, %1094 ]
  %580 = phi ptr [ %16, %.mv.ph ], [ %1097, %1094 ]
  %581 = phi ptr [ %5, %.mv.ph ], [ %1098, %1094 ]
  %582 = icmp ult i32 %578, 15
  br i1 %582, label %583, label %606

583:                                              ; preds = %577
  %584 = load i8, ptr %581, align 1, !tbaa !33
  %585 = zext i8 %584 to i64
  %586 = zext nneg i32 %578 to i64
  %587 = shl nuw nsw i64 %585, %586
  %588 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %579, i64 %587), !nosanitize !16
  %589 = extractvalue { i64, i1 } %588, 1, !nosanitize !16
  br i1 %589, label %590, label %591, !prof !17, !nosanitize !16

590:                                              ; preds = %80, %583
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

591:                                              ; preds = %583
  %592 = extractvalue { i64, i1 } %588, 0, !nosanitize !16
  %593 = getelementptr inbounds nuw i8, ptr %581, i64 1
  %594 = add nuw nsw i32 %578, 8
  %595 = load i8, ptr %593, align 1, !tbaa !33
  %596 = zext i8 %595 to i64
  %597 = zext nneg i32 %594 to i64
  %598 = shl nuw nsw i64 %596, %597
  %599 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %592, i64 %598), !nosanitize !16
  %600 = extractvalue { i64, i1 } %599, 1, !nosanitize !16
  br i1 %600, label %601, label %602, !prof !17, !nosanitize !16

601:                                              ; preds = %87, %591
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

602:                                              ; preds = %591
  %603 = extractvalue { i64, i1 } %599, 0, !nosanitize !16
  %604 = getelementptr inbounds nuw i8, ptr %581, i64 2
  %605 = or disjoint i32 %578, 16
  br label %606

606:                                              ; preds = %602, %577
  %607 = phi i32 [ %605, %602 ], [ %578, %577 ]
  %608 = phi i64 [ %603, %602 ], [ %579, %577 ]
  %609 = phi ptr [ %604, %602 ], [ %581, %577 ]
  %610 = and i64 %608, %59
  %611 = getelementptr inbounds nuw %struct.code, ptr %48, i64 %610
  %612 = getelementptr inbounds nuw i8, ptr %611, i64 1
  %613 = load i8, ptr %612, align 1, !tbaa !34
  %614 = zext i8 %613 to i32
  %615 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %607, i32 %614), !nosanitize !16
  %616 = extractvalue { i32, i1 } %615, 1, !nosanitize !16
  br i1 %616, label %.loopexit8, label %617, !prof !37, !nosanitize !16

617:                                              ; preds = %606
  %618 = zext nneg i8 %613 to i64
  %619 = lshr i64 %608, %618
  br label %621

.loopexit7:                                       ; preds = %547, %1074
  br label %620

.loopexit8:                                       ; preds = %101, %606
  br label %620

620:                                              ; preds = %.loopexit8, %.loopexit7
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

621:                                              ; preds = %1074, %617
  %622 = phi { i32, i1 } [ %1089, %1074 ], [ %615, %617 ]
  %623 = phi i64 [ %1088, %1074 ], [ %619, %617 ]
  %624 = phi ptr [ %1083, %1074 ], [ %611, %617 ]
  %625 = extractvalue { i32, i1 } %622, 0
  %626 = load i8, ptr %624, align 2, !tbaa !38
  %627 = zext i8 %626 to i32
  %628 = icmp eq i8 %626, 0
  br i1 %628, label %629, label %634

629:                                              ; preds = %621
  %.lcssa24 = phi i64 [ %623, %621 ]
  %.lcssa20 = phi ptr [ %624, %621 ]
  %.lcssa16 = phi i32 [ %625, %621 ]
  %630 = getelementptr inbounds nuw i8, ptr %.lcssa20, i64 2
  %631 = load i16, ptr %630, align 2, !tbaa !39
  %632 = trunc i16 %631 to i8
  %633 = getelementptr inbounds nuw i8, ptr %580, i64 1
  store i8 %632, ptr %580, align 1, !tbaa !33
  br label %1094

634:                                              ; preds = %621
  %635 = and i32 %627, 16
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %1071, label %637

637:                                              ; preds = %634
  %.lcssa25 = phi i64 [ %623, %634 ]
  %.lcssa21 = phi ptr [ %624, %634 ]
  %.lcssa17 = phi i32 [ %625, %634 ]
  %.lcssa13 = phi i32 [ %627, %634 ]
  %638 = getelementptr inbounds nuw i8, ptr %.lcssa21, i64 2
  %639 = load i16, ptr %638, align 2, !tbaa !39
  %640 = zext i16 %639 to i32
  %641 = and i32 %.lcssa13, 15
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %673, label %643

643:                                              ; preds = %637
  %644 = icmp ult i32 %.lcssa17, %641
  br i1 %644, label %645, label %657

645:                                              ; preds = %643
  %646 = load i8, ptr %609, align 1, !tbaa !33
  %647 = zext i8 %646 to i64
  %648 = zext nneg i32 %.lcssa17 to i64
  %649 = shl nuw nsw i64 %647, %648
  %650 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.lcssa25, i64 %649), !nosanitize !16
  %651 = extractvalue { i64, i1 } %650, 1, !nosanitize !16
  br i1 %651, label %652, label %653, !prof !17, !nosanitize !16

652:                                              ; preds = %134, %645
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

653:                                              ; preds = %645
  %654 = extractvalue { i64, i1 } %650, 0, !nosanitize !16
  %655 = getelementptr inbounds nuw i8, ptr %609, i64 1
  %656 = add nuw nsw i32 %.lcssa17, 8
  br label %657

657:                                              ; preds = %653, %643
  %658 = phi i32 [ %656, %653 ], [ %.lcssa17, %643 ]
  %659 = phi i64 [ %654, %653 ], [ %.lcssa25, %643 ]
  %660 = phi ptr [ %655, %653 ], [ %609, %643 ]
  %661 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %658, i32 %641), !nosanitize !16
  %662 = extractvalue { i32, i1 } %661, 1, !nosanitize !16
  br i1 %662, label %663, label %664, !prof !17, !nosanitize !16

663:                                              ; preds = %145, %657
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

664:                                              ; preds = %657
  %665 = trunc i64 %659 to i32
  %666 = shl nsw i32 -1, %641
  %667 = xor i32 %666, -1
  %668 = and i32 %665, %667
  %669 = add nuw nsw i32 %668, %640
  %670 = extractvalue { i32, i1 } %661, 0, !nosanitize !16
  %671 = zext nneg i32 %641 to i64
  %672 = lshr i64 %659, %671
  br label %673

673:                                              ; preds = %664, %637
  %674 = phi i32 [ %670, %664 ], [ %.lcssa17, %637 ]
  %675 = phi i64 [ %672, %664 ], [ %.lcssa25, %637 ]
  %676 = phi ptr [ %660, %664 ], [ %609, %637 ]
  %677 = phi i32 [ %669, %664 ], [ %640, %637 ]
  %678 = icmp ult i32 %674, 15
  br i1 %678, label %679, label %702

679:                                              ; preds = %673
  %680 = load i8, ptr %676, align 1, !tbaa !33
  %681 = zext i8 %680 to i64
  %682 = zext nneg i32 %674 to i64
  %683 = shl nuw nsw i64 %681, %682
  %684 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %675, i64 %683), !nosanitize !16
  %685 = extractvalue { i64, i1 } %684, 1, !nosanitize !16
  br i1 %685, label %686, label %687, !prof !17, !nosanitize !16

686:                                              ; preds = %166, %679
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

687:                                              ; preds = %679
  %688 = extractvalue { i64, i1 } %684, 0, !nosanitize !16
  %689 = getelementptr inbounds nuw i8, ptr %676, i64 1
  %690 = add nuw nsw i32 %674, 8
  %691 = load i8, ptr %689, align 1, !tbaa !33
  %692 = zext i8 %691 to i64
  %693 = zext nneg i32 %690 to i64
  %694 = shl nuw nsw i64 %692, %693
  %695 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %688, i64 %694), !nosanitize !16
  %696 = extractvalue { i64, i1 } %695, 1, !nosanitize !16
  br i1 %696, label %697, label %698, !prof !17, !nosanitize !16

697:                                              ; preds = %173, %687
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

698:                                              ; preds = %687
  %699 = extractvalue { i64, i1 } %695, 0, !nosanitize !16
  %700 = getelementptr inbounds nuw i8, ptr %676, i64 2
  %701 = or disjoint i32 %674, 16
  br label %702

702:                                              ; preds = %698, %673
  %703 = phi i32 [ %701, %698 ], [ %674, %673 ]
  %704 = phi i64 [ %699, %698 ], [ %675, %673 ]
  %705 = phi ptr [ %700, %698 ], [ %676, %673 ]
  %706 = and i64 %704, %60
  %707 = getelementptr inbounds nuw %struct.code, ptr %50, i64 %706
  %708 = getelementptr inbounds nuw i8, ptr %707, i64 1
  %709 = load i8, ptr %708, align 1, !tbaa !34
  %710 = zext i8 %709 to i32
  %711 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %703, i32 %710), !nosanitize !16
  %712 = extractvalue { i32, i1 } %711, 1, !nosanitize !16
  br i1 %712, label %.loopexit9, label %713, !prof !37, !nosanitize !16

713:                                              ; preds = %702
  %714 = zext nneg i8 %709 to i64
  %715 = lshr i64 %704, %714
  br label %717

.loopexit6:                                       ; preds = %527, %1054
  br label %716

.loopexit9:                                       ; preds = %187, %702
  br label %716

716:                                              ; preds = %.loopexit9, %.loopexit6
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

717:                                              ; preds = %1054, %713
  %718 = phi { i32, i1 } [ %1069, %1054 ], [ %711, %713 ]
  %719 = phi i64 [ %1068, %1054 ], [ %715, %713 ]
  %720 = phi ptr [ %1063, %1054 ], [ %707, %713 ]
  %721 = extractvalue { i32, i1 } %718, 0
  %722 = load i8, ptr %720, align 2, !tbaa !38
  %723 = zext i8 %722 to i32
  %724 = and i32 %723, 16
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %1051, label %726

726:                                              ; preds = %717
  %.lcssa36 = phi i64 [ %719, %717 ]
  %.lcssa33 = phi ptr [ %720, %717 ]
  %.lcssa30 = phi i32 [ %721, %717 ]
  %.lcssa = phi i32 [ %723, %717 ]
  %727 = getelementptr inbounds nuw i8, ptr %.lcssa33, i64 2
  %728 = load i16, ptr %727, align 2, !tbaa !39
  %729 = zext i16 %728 to i32
  %730 = and i32 %.lcssa, 15
  %731 = icmp ult i32 %.lcssa30, %730
  br i1 %731, label %732, label %757

732:                                              ; preds = %726
  %733 = getelementptr inbounds nuw i8, ptr %705, i64 1
  %734 = load i8, ptr %705, align 1, !tbaa !33
  %735 = zext i8 %734 to i64
  %736 = zext nneg i32 %.lcssa30 to i64
  %737 = shl nuw nsw i64 %735, %736
  %738 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.lcssa36, i64 %737), !nosanitize !16
  %739 = extractvalue { i64, i1 } %738, 0, !nosanitize !16
  %740 = extractvalue { i64, i1 } %738, 1, !nosanitize !16
  br i1 %740, label %741, label %742, !prof !17, !nosanitize !16

741:                                              ; preds = %216, %732
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

742:                                              ; preds = %732
  %743 = add nuw nsw i32 %.lcssa30, 8
  %744 = icmp samesign ult i32 %743, %730
  br i1 %744, label %745, label %757

745:                                              ; preds = %742
  %746 = load i8, ptr %733, align 1, !tbaa !33
  %747 = zext i8 %746 to i64
  %748 = zext nneg i32 %743 to i64
  %749 = shl nuw nsw i64 %747, %748
  %750 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %739, i64 %749), !nosanitize !16
  %751 = extractvalue { i64, i1 } %750, 1, !nosanitize !16
  br i1 %751, label %752, label %753, !prof !17, !nosanitize !16

752:                                              ; preds = %228, %745
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

753:                                              ; preds = %745
  %754 = extractvalue { i64, i1 } %750, 0, !nosanitize !16
  %755 = getelementptr inbounds nuw i8, ptr %705, i64 2
  %756 = add nuw nsw i32 %.lcssa30, 16
  br label %757

757:                                              ; preds = %753, %742, %726
  %758 = phi i32 [ %756, %753 ], [ %743, %742 ], [ %.lcssa30, %726 ]
  %759 = phi i64 [ %754, %753 ], [ %739, %742 ], [ %.lcssa36, %726 ]
  %760 = phi ptr [ %755, %753 ], [ %733, %742 ], [ %705, %726 ]
  %761 = shl nsw i32 -1, %730
  %762 = xor i32 %761, -1
  %763 = trunc i64 %759 to i32
  %764 = and i32 %763, %762
  %765 = add nuw nsw i32 %764, %729
  %766 = zext nneg i32 %730 to i64
  %767 = lshr i64 %759, %766
  %768 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %758, i32 %730), !nosanitize !16
  %769 = extractvalue { i32, i1 } %768, 0, !nosanitize !16
  %770 = extractvalue { i32, i1 } %768, 1, !nosanitize !16
  br i1 false, label %771, label %772, !prof !17, !nosanitize !16

771:                                              ; preds = %239, %757
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

772:                                              ; preds = %757
  %773 = ptrtoint ptr %580 to i64
  %774 = sub i64 %773, %61
  %775 = trunc i64 %774 to i32
  %776 = icmp ugt i32 %765, %775
  br i1 %776, label %777, label %1018

777:                                              ; preds = %772
  %778 = sub nuw nsw i32 %765, %775
  %779 = icmp ugt i32 %778, %37
  br i1 %779, label %780, label %783

780:                                              ; preds = %777
  %781 = load i32, ptr %62, align 8, !tbaa !42
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %783, label %.loopexit10

783:                                              ; preds = %780, %777
  br i1 %63, label %784, label %812

784:                                              ; preds = %783
  %785 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %35, i32 %778), !nosanitize !16
  %786 = extractvalue { i32, i1 } %785, 1, !nosanitize !16
  br i1 %786, label %787, label %788, !prof !17, !nosanitize !16

787:                                              ; preds = %432, %784
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

788:                                              ; preds = %784
  %789 = extractvalue { i32, i1 } %785, 0, !nosanitize !16
  %790 = zext i32 %789 to i64
  %791 = getelementptr inbounds nuw i8, ptr %41, i64 %790
  %792 = icmp ult i32 %778, %677
  br i1 %792, label %793, label %952

793:                                              ; preds = %788
  %794 = sub nuw nsw i32 %677, %778
  br label %795

795:                                              ; preds = %803, %793
  %796 = phi ptr [ %580, %793 ], [ %804, %803 ]
  %797 = phi i32 [ %778, %793 ], [ %805, %803 ]
  %798 = phi ptr [ %791, %793 ], [ %806, %803 ]
  %799 = load i8, ptr %798, align 1, !tbaa !33
  store i8 %799, ptr %796, align 1, !tbaa !33
  %800 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %797, i32 1), !nosanitize !16
  %801 = extractvalue { i32, i1 } %800, 1, !nosanitize !16
  br i1 false, label %802, label %803, !prof !17, !nosanitize !16

802:                                              ; preds = %442, %795
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

803:                                              ; preds = %795
  %804 = getelementptr inbounds nuw i8, ptr %796, i64 1
  %805 = extractvalue { i32, i1 } %800, 0, !nosanitize !16
  %806 = getelementptr inbounds nuw i8, ptr %798, i64 1
  %807 = icmp eq i32 %805, 0
  br i1 %807, label %808, label %795, !llvm.loop !51

808:                                              ; preds = %803
  %.lcssa54 = phi ptr [ %804, %803 ]
  %809 = zext nneg i32 %765 to i64
  %810 = sub nsw i64 0, %809
  %811 = getelementptr inbounds i8, ptr %.lcssa54, i64 %810
  br label %952

812:                                              ; preds = %783
  %813 = icmp ult i32 %39, %778
  br i1 %813, label %814, label %928

814:                                              ; preds = %812
  br i1 %65, label %.loopexit11, label %816, !prof !17, !nosanitize !16

.loopexit11:                                      ; preds = %322, %814
  br label %815

815:                                              ; preds = %.loopexit11, %1149, %1132
  tail call void @llvm.ubsantrap(i8 0) #3, !nosanitize !16
  unreachable, !nosanitize !16

816:                                              ; preds = %814
  %817 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %66, i32 %778), !nosanitize !16
  %818 = extractvalue { i32, i1 } %817, 1, !nosanitize !16
  br i1 %818, label %819, label %820, !prof !17, !nosanitize !16

819:                                              ; preds = %323, %816
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

820:                                              ; preds = %816
  %821 = extractvalue { i32, i1 } %817, 0, !nosanitize !16
  %822 = zext i32 %821 to i64
  %823 = getelementptr inbounds nuw i8, ptr %41, i64 %822
  %824 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %778, i32 %39), !nosanitize !16
  %825 = extractvalue { i32, i1 } %824, 0, !nosanitize !16
  %826 = extractvalue { i32, i1 } %824, 1, !nosanitize !16
  br i1 false, label %827, label %828, !prof !17, !nosanitize !16

827:                                              ; preds = %326, %820
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

828:                                              ; preds = %820
  %829 = icmp ult i32 %825, %677
  br i1 %829, label %830, label %952

830:                                              ; preds = %828
  %831 = sub nuw i32 %677, %825
  br label %832

832:                                              ; preds = %841, %830
  %833 = phi i64 [ %846, %841 ], [ 0, %830 ]
  %834 = phi ptr [ %842, %841 ], [ %580, %830 ]
  %835 = phi i32 [ %843, %841 ], [ %825, %830 ]
  %836 = phi ptr [ %844, %841 ], [ %823, %830 ]
  %837 = load i8, ptr %836, align 1, !tbaa !33
  store i8 %837, ptr %834, align 1, !tbaa !33
  %838 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %835, i32 1), !nosanitize !16
  %839 = extractvalue { i32, i1 } %838, 1, !nosanitize !16
  br i1 false, label %840, label %841, !prof !17, !nosanitize !16

840:                                              ; preds = %337, %832
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

841:                                              ; preds = %832
  %842 = getelementptr inbounds nuw i8, ptr %834, i64 1
  %843 = extractvalue { i32, i1 } %838, 0, !nosanitize !16
  %844 = getelementptr inbounds nuw i8, ptr %836, i64 1
  %845 = icmp eq i32 %843, 0
  %846 = add i64 %833, 1
  br i1 %845, label %847, label %832, !llvm.loop !44

847:                                              ; preds = %841
  %.lcssa49 = phi ptr [ %842, %841 ]
  %.lcssa48 = phi i64 [ %833, %841 ]
  %848 = icmp ult i32 %39, %831
  br i1 %848, label %849, label %952

849:                                              ; preds = %847
  br i1 %68, label %868, label %850

850:                                              ; preds = %849
  %851 = sub i64 %773, %42
  %852 = add i64 %851, 1
  %853 = add i64 %.lcssa48, %852
  %854 = icmp ult i64 %853, 32
  br i1 %854, label %868, label %855

855:                                              ; preds = %850
  %856 = getelementptr i8, ptr %.lcssa49, i64 %69
  br label %857

857:                                              ; preds = %857, %855
  %858 = phi i64 [ 0, %855 ], [ %865, %857 ]
  %859 = getelementptr i8, ptr %.lcssa49, i64 %858
  %860 = getelementptr i8, ptr %41, i64 %858
  %861 = getelementptr i8, ptr %860, i64 16
  %862 = load <16 x i8>, ptr %860, align 1, !tbaa !33
  %863 = load <16 x i8>, ptr %861, align 1, !tbaa !33
  %864 = getelementptr i8, ptr %859, i64 16
  store <16 x i8> %862, ptr %859, align 1, !tbaa !33
  store <16 x i8> %863, ptr %864, align 1, !tbaa !33
  %865 = add nuw i64 %858, 32
  %866 = icmp eq i64 %865, %69
  br i1 %866, label %867, label %857, !llvm.loop !45

867:                                              ; preds = %857
  br i1 %73, label %922, label %868

868:                                              ; preds = %867, %850, %849
  %869 = phi ptr [ %.lcssa49, %850 ], [ %.lcssa49, %849 ], [ %856, %867 ]
  %870 = phi i32 [ %39, %850 ], [ %39, %849 ], [ %71, %867 ]
  %871 = phi ptr [ %41, %850 ], [ %41, %849 ], [ %72, %867 ]
  %872 = add i32 %870, -1
  %873 = and i32 %870, 7
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %886, label %.preheader3

.preheader3:                                      ; preds = %868
  br label %875

875:                                              ; preds = %.preheader3, %875
  %876 = phi ptr [ %881, %875 ], [ %869, %.preheader3 ]
  %877 = phi i32 [ %882, %875 ], [ %870, %.preheader3 ]
  %878 = phi ptr [ %883, %875 ], [ %871, %.preheader3 ]
  %879 = phi i32 [ %884, %875 ], [ 0, %.preheader3 ]
  %880 = load i8, ptr %878, align 1, !tbaa !33
  %881 = getelementptr inbounds nuw i8, ptr %876, i64 1
  store i8 %880, ptr %876, align 1, !tbaa !33
  %882 = add i32 %877, -1
  %883 = getelementptr inbounds nuw i8, ptr %878, i64 1
  %884 = add i32 %879, 1
  %885 = icmp eq i32 %884, %873
  br i1 %885, label %.loopexit4, label %875, !llvm.loop !48

.loopexit4:                                       ; preds = %875
  %.lcssa52 = phi ptr [ %881, %875 ]
  %.lcssa51 = phi i32 [ %882, %875 ]
  %.lcssa50 = phi ptr [ %883, %875 ]
  br label %886

886:                                              ; preds = %.loopexit4, %868
  %887 = phi ptr [ poison, %868 ], [ %.lcssa52, %.loopexit4 ]
  %888 = phi ptr [ %869, %868 ], [ %.lcssa52, %.loopexit4 ]
  %889 = phi i32 [ %870, %868 ], [ %.lcssa51, %.loopexit4 ]
  %890 = phi ptr [ %871, %868 ], [ %.lcssa50, %.loopexit4 ]
  %891 = icmp ult i32 %872, 7
  br i1 %891, label %922, label %.preheader1

.preheader1:                                      ; preds = %886
  br label %892

892:                                              ; preds = %.preheader1, %892
  %893 = phi ptr [ %918, %892 ], [ %888, %.preheader1 ]
  %894 = phi i32 [ %919, %892 ], [ %889, %.preheader1 ]
  %895 = phi ptr [ %920, %892 ], [ %890, %.preheader1 ]
  %896 = load i8, ptr %895, align 1, !tbaa !33
  %897 = getelementptr inbounds nuw i8, ptr %893, i64 1
  store i8 %896, ptr %893, align 1, !tbaa !33
  %898 = getelementptr inbounds nuw i8, ptr %895, i64 1
  %899 = load i8, ptr %898, align 1, !tbaa !33
  %900 = getelementptr inbounds nuw i8, ptr %893, i64 2
  store i8 %899, ptr %897, align 1, !tbaa !33
  %901 = getelementptr inbounds nuw i8, ptr %895, i64 2
  %902 = load i8, ptr %901, align 1, !tbaa !33
  %903 = getelementptr inbounds nuw i8, ptr %893, i64 3
  store i8 %902, ptr %900, align 1, !tbaa !33
  %904 = getelementptr inbounds nuw i8, ptr %895, i64 3
  %905 = load i8, ptr %904, align 1, !tbaa !33
  %906 = getelementptr inbounds nuw i8, ptr %893, i64 4
  store i8 %905, ptr %903, align 1, !tbaa !33
  %907 = getelementptr inbounds nuw i8, ptr %895, i64 4
  %908 = load i8, ptr %907, align 1, !tbaa !33
  %909 = getelementptr inbounds nuw i8, ptr %893, i64 5
  store i8 %908, ptr %906, align 1, !tbaa !33
  %910 = getelementptr inbounds nuw i8, ptr %895, i64 5
  %911 = load i8, ptr %910, align 1, !tbaa !33
  %912 = getelementptr inbounds nuw i8, ptr %893, i64 6
  store i8 %911, ptr %909, align 1, !tbaa !33
  %913 = getelementptr inbounds nuw i8, ptr %895, i64 6
  %914 = load i8, ptr %913, align 1, !tbaa !33
  %915 = getelementptr inbounds nuw i8, ptr %893, i64 7
  store i8 %914, ptr %912, align 1, !tbaa !33
  %916 = getelementptr inbounds nuw i8, ptr %895, i64 7
  %917 = load i8, ptr %916, align 1, !tbaa !33
  %918 = getelementptr inbounds nuw i8, ptr %893, i64 8
  store i8 %917, ptr %915, align 1, !tbaa !33
  %919 = add i32 %894, -8
  %920 = getelementptr inbounds nuw i8, ptr %895, i64 8
  %921 = icmp eq i32 %919, 0
  br i1 %921, label %.loopexit2, label %892, !llvm.loop !50

.loopexit2:                                       ; preds = %892
  %.lcssa53 = phi ptr [ %918, %892 ]
  br label %922

922:                                              ; preds = %.loopexit2, %886, %867
  %923 = phi ptr [ %856, %867 ], [ %887, %886 ], [ %.lcssa53, %.loopexit2 ]
  %924 = sub nuw i32 %831, %39
  %925 = zext nneg i32 %765 to i64
  %926 = sub nsw i64 0, %925
  %927 = getelementptr inbounds i8, ptr %923, i64 %926
  br label %952

928:                                              ; preds = %812
  %929 = sub nuw i32 %39, %778
  %930 = zext i32 %929 to i64
  %931 = getelementptr inbounds nuw i8, ptr %41, i64 %930
  %932 = icmp ult i32 %778, %677
  br i1 %932, label %933, label %952

933:                                              ; preds = %928
  %934 = sub nuw nsw i32 %677, %778
  br label %935

935:                                              ; preds = %943, %933
  %936 = phi ptr [ %580, %933 ], [ %944, %943 ]
  %937 = phi i32 [ %778, %933 ], [ %945, %943 ]
  %938 = phi ptr [ %931, %933 ], [ %946, %943 ]
  %939 = load i8, ptr %938, align 1, !tbaa !33
  store i8 %939, ptr %936, align 1, !tbaa !33
  %940 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %937, i32 1), !nosanitize !16
  %941 = extractvalue { i32, i1 } %940, 1, !nosanitize !16
  br i1 false, label %942, label %943, !prof !17, !nosanitize !16

942:                                              ; preds = %306, %935
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

943:                                              ; preds = %935
  %944 = getelementptr inbounds nuw i8, ptr %936, i64 1
  %945 = extractvalue { i32, i1 } %940, 0, !nosanitize !16
  %946 = getelementptr inbounds nuw i8, ptr %938, i64 1
  %947 = icmp eq i32 %945, 0
  br i1 %947, label %948, label %935, !llvm.loop !43

948:                                              ; preds = %943
  %.lcssa46 = phi ptr [ %944, %943 ]
  %949 = zext nneg i32 %765 to i64
  %950 = sub nsw i64 0, %949
  %951 = getelementptr inbounds i8, ptr %.lcssa46, i64 %950
  br label %952

952:                                              ; preds = %948, %928, %922, %847, %828, %808, %788
  %953 = phi ptr [ %.lcssa54, %808 ], [ %580, %788 ], [ %923, %922 ], [ %.lcssa49, %847 ], [ %580, %828 ], [ %.lcssa46, %948 ], [ %580, %928 ]
  %954 = phi i32 [ %794, %808 ], [ %677, %788 ], [ %924, %922 ], [ %831, %847 ], [ %677, %828 ], [ %934, %948 ], [ %677, %928 ]
  %955 = phi ptr [ %811, %808 ], [ %791, %788 ], [ %927, %922 ], [ %41, %847 ], [ %823, %828 ], [ %951, %948 ], [ %931, %928 ]
  %956 = icmp ugt i32 %954, 2
  br i1 %956, label %957, label %1005

957:                                              ; preds = %952
  %958 = add i32 %954, -3
  %959 = udiv i32 %958, 3
  %960 = and i32 %959, 1
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %962, label %973

962:                                              ; preds = %957
  %963 = getelementptr inbounds nuw i8, ptr %955, i64 1
  %964 = load i8, ptr %955, align 1, !tbaa !33
  %965 = getelementptr inbounds nuw i8, ptr %953, i64 1
  store i8 %964, ptr %953, align 1, !tbaa !33
  %966 = getelementptr inbounds nuw i8, ptr %955, i64 2
  %967 = load i8, ptr %963, align 1, !tbaa !33
  %968 = getelementptr inbounds nuw i8, ptr %953, i64 2
  store i8 %967, ptr %965, align 1, !tbaa !33
  %969 = load i8, ptr %966, align 1, !tbaa !33
  store i8 %969, ptr %968, align 1, !tbaa !33
  %970 = add i32 %954, -3
  %971 = getelementptr inbounds nuw i8, ptr %953, i64 3
  %972 = getelementptr inbounds nuw i8, ptr %955, i64 3
  br label %973

973:                                              ; preds = %962, %957
  %974 = phi ptr [ %955, %957 ], [ %972, %962 ]
  %975 = phi i32 [ %954, %957 ], [ %970, %962 ]
  %976 = phi ptr [ %953, %957 ], [ %971, %962 ]
  %977 = phi i32 [ poison, %957 ], [ %970, %962 ]
  %978 = phi ptr [ poison, %957 ], [ %971, %962 ]
  %979 = phi ptr [ poison, %957 ], [ %972, %962 ]
  %980 = icmp ult i32 %958, 3
  br i1 %980, label %1005, label %.preheader

.preheader:                                       ; preds = %973
  br label %981

981:                                              ; preds = %.preheader, %981
  %982 = phi ptr [ %1003, %981 ], [ %974, %.preheader ]
  %983 = phi i32 [ %1001, %981 ], [ %975, %.preheader ]
  %984 = phi ptr [ %1002, %981 ], [ %976, %.preheader ]
  %985 = getelementptr inbounds nuw i8, ptr %982, i64 1
  %986 = load i8, ptr %982, align 1, !tbaa !33
  %987 = getelementptr inbounds nuw i8, ptr %984, i64 1
  store i8 %986, ptr %984, align 1, !tbaa !33
  %988 = getelementptr inbounds nuw i8, ptr %982, i64 2
  %989 = load i8, ptr %985, align 1, !tbaa !33
  %990 = getelementptr inbounds nuw i8, ptr %984, i64 2
  store i8 %989, ptr %987, align 1, !tbaa !33
  %991 = load i8, ptr %988, align 1, !tbaa !33
  store i8 %991, ptr %990, align 1, !tbaa !33
  %992 = getelementptr inbounds nuw i8, ptr %984, i64 3
  %993 = getelementptr inbounds nuw i8, ptr %982, i64 3
  %994 = getelementptr inbounds nuw i8, ptr %982, i64 4
  %995 = load i8, ptr %993, align 1, !tbaa !33
  %996 = getelementptr inbounds nuw i8, ptr %984, i64 4
  store i8 %995, ptr %992, align 1, !tbaa !33
  %997 = getelementptr inbounds nuw i8, ptr %982, i64 5
  %998 = load i8, ptr %994, align 1, !tbaa !33
  %999 = getelementptr inbounds nuw i8, ptr %984, i64 5
  store i8 %998, ptr %996, align 1, !tbaa !33
  %1000 = load i8, ptr %997, align 1, !tbaa !33
  store i8 %1000, ptr %999, align 1, !tbaa !33
  %1001 = add i32 %983, -6
  %1002 = getelementptr inbounds nuw i8, ptr %984, i64 6
  %1003 = getelementptr inbounds nuw i8, ptr %982, i64 6
  %1004 = icmp ugt i32 %1001, 2
  br i1 %1004, label %981, label %.loopexit, !llvm.loop !52

.loopexit:                                        ; preds = %981
  %.lcssa57 = phi i32 [ %1001, %981 ]
  %.lcssa56 = phi ptr [ %1002, %981 ]
  %.lcssa55 = phi ptr [ %1003, %981 ]
  br label %1005

1005:                                             ; preds = %.loopexit, %973, %952
  %1006 = phi ptr [ %953, %952 ], [ %978, %973 ], [ %.lcssa56, %.loopexit ]
  %1007 = phi i32 [ %954, %952 ], [ %977, %973 ], [ %.lcssa57, %.loopexit ]
  %1008 = phi ptr [ %955, %952 ], [ %979, %973 ], [ %.lcssa55, %.loopexit ]
  %1009 = icmp eq i32 %1007, 0
  br i1 %1009, label %1094, label %1010

1010:                                             ; preds = %1005
  %1011 = load i8, ptr %1008, align 1, !tbaa !33
  %1012 = getelementptr inbounds nuw i8, ptr %1006, i64 1
  store i8 %1011, ptr %1006, align 1, !tbaa !33
  %1013 = icmp eq i32 %1007, 2
  br i1 %1013, label %1014, label %1094

1014:                                             ; preds = %1010
  %1015 = getelementptr inbounds nuw i8, ptr %1008, i64 1
  %1016 = load i8, ptr %1015, align 1, !tbaa !33
  %1017 = getelementptr inbounds nuw i8, ptr %1006, i64 2
  store i8 %1016, ptr %1012, align 1, !tbaa !33
  br label %1094

1018:                                             ; preds = %772
  %1019 = zext nneg i32 %765 to i64
  %1020 = sub nsw i64 0, %1019
  %1021 = getelementptr inbounds i8, ptr %580, i64 %1020
  br label %1022

1022:                                             ; preds = %1036, %1018
  %1023 = phi ptr [ %580, %1018 ], [ %1038, %1036 ]
  %1024 = phi i32 [ %677, %1018 ], [ %1037, %1036 ]
  %1025 = phi ptr [ %1021, %1018 ], [ %1039, %1036 ]
  %1026 = getelementptr inbounds nuw i8, ptr %1025, i64 1
  %1027 = load i8, ptr %1025, align 1, !tbaa !33
  %1028 = getelementptr inbounds nuw i8, ptr %1023, i64 1
  store i8 %1027, ptr %1023, align 1, !tbaa !33
  %1029 = getelementptr inbounds nuw i8, ptr %1025, i64 2
  %1030 = load i8, ptr %1026, align 1, !tbaa !33
  %1031 = getelementptr inbounds nuw i8, ptr %1023, i64 2
  store i8 %1030, ptr %1028, align 1, !tbaa !33
  %1032 = load i8, ptr %1029, align 1, !tbaa !33
  store i8 %1032, ptr %1031, align 1, !tbaa !33
  %1033 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1024, i32 3), !nosanitize !16
  %1034 = extractvalue { i32, i1 } %1033, 1, !nosanitize !16
  br i1 %1034, label %1035, label %1036, !prof !17, !nosanitize !16

1035:                                             ; preds = %262, %1022
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

1036:                                             ; preds = %1022
  %1037 = extractvalue { i32, i1 } %1033, 0, !nosanitize !16
  %1038 = getelementptr inbounds nuw i8, ptr %1023, i64 3
  %1039 = getelementptr inbounds nuw i8, ptr %1025, i64 3
  %1040 = icmp ugt i32 %1037, 2
  br i1 %1040, label %1022, label %1041, !llvm.loop !40

1041:                                             ; preds = %1036
  %.lcssa45 = phi i32 [ %1037, %1036 ]
  %.lcssa44 = phi ptr [ %1038, %1036 ]
  %.lcssa43 = phi ptr [ %1039, %1036 ]
  %.lcssa42 = phi ptr [ %1023, %1036 ]
  %.lcssa40 = phi ptr [ %1025, %1036 ]
  %1042 = icmp eq i32 %.lcssa45, 0
  br i1 %1042, label %1094, label %1043

1043:                                             ; preds = %1041
  %1044 = load i8, ptr %.lcssa43, align 1, !tbaa !33
  %1045 = getelementptr inbounds nuw i8, ptr %.lcssa42, i64 4
  store i8 %1044, ptr %.lcssa44, align 1, !tbaa !33
  %1046 = icmp eq i32 %.lcssa45, 2
  br i1 %1046, label %1047, label %1094

1047:                                             ; preds = %1043
  %1048 = getelementptr inbounds nuw i8, ptr %.lcssa40, i64 4
  %1049 = load i8, ptr %1048, align 1, !tbaa !33
  %1050 = getelementptr inbounds nuw i8, ptr %.lcssa42, i64 5
  store i8 %1049, ptr %1045, align 1, !tbaa !33
  br label %1094

1051:                                             ; preds = %717
  %1052 = and i32 %723, 64
  %1053 = icmp eq i32 %1052, 0
  br i1 %1053, label %1054, label %.loopexit5

1054:                                             ; preds = %1051
  %1055 = shl nsw i32 -1, %723
  %1056 = xor i32 %1055, -1
  %1057 = getelementptr inbounds nuw i8, ptr %720, i64 2
  %1058 = load i16, ptr %1057, align 2, !tbaa !39
  %1059 = zext i16 %1058 to i64
  %1060 = getelementptr inbounds nuw %struct.code, ptr %50, i64 %1059
  %1061 = zext nneg i32 %1056 to i64
  %1062 = and i64 %719, %1061
  %1063 = getelementptr inbounds nuw %struct.code, ptr %1060, i64 %1062
  %1064 = getelementptr inbounds nuw i8, ptr %1063, i64 1
  %1065 = load i8, ptr %1064, align 1, !tbaa !34
  %1066 = zext i8 %1065 to i32
  %1067 = zext nneg i8 %1065 to i64
  %1068 = lshr i64 %719, %1067
  %1069 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %721, i32 %1066), !nosanitize !16
  %1070 = extractvalue { i32, i1 } %1069, 1, !nosanitize !16
  br i1 %1070, label %.loopexit6, label %717, !prof !53, !nosanitize !16

1071:                                             ; preds = %634
  %1072 = and i32 %627, 64
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1074, label %1091

1074:                                             ; preds = %1071
  %1075 = shl nsw i32 -1, %627
  %1076 = xor i32 %1075, -1
  %1077 = getelementptr inbounds nuw i8, ptr %624, i64 2
  %1078 = load i16, ptr %1077, align 2, !tbaa !39
  %1079 = zext i16 %1078 to i64
  %1080 = getelementptr inbounds nuw %struct.code, ptr %48, i64 %1079
  %1081 = zext nneg i32 %1076 to i64
  %1082 = and i64 %623, %1081
  %1083 = getelementptr inbounds nuw %struct.code, ptr %1080, i64 %1082
  %1084 = getelementptr inbounds nuw i8, ptr %1083, i64 1
  %1085 = load i8, ptr %1084, align 1, !tbaa !34
  %1086 = zext i8 %1085 to i32
  %1087 = zext nneg i8 %1085 to i64
  %1088 = lshr i64 %623, %1087
  %1089 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %625, i32 %1086), !nosanitize !16
  %1090 = extractvalue { i32, i1 } %1089, 1, !nosanitize !16
  br i1 %1090, label %.loopexit7, label %621, !prof !53, !nosanitize !16

1091:                                             ; preds = %544, %1071
  %.lcssa148 = phi ptr [ %609, %1071 ], [ %104, %544 ]
  %.lcssa125 = phi ptr [ %580, %1071 ], [ %77, %544 ]
  %.lcssa26 = phi i64 [ %623, %1071 ], [ %117, %544 ]
  %.lcssa18 = phi i32 [ %625, %1071 ], [ %119, %544 ]
  %.lcssa14 = phi i32 [ %627, %1071 ], [ %121, %544 ]
  %1092 = and i32 %.lcssa14, 32
  %1093 = icmp eq i32 %1092, 0
  br i1 %1093, label %1102, label %1109

1094:                                             ; preds = %1047, %1043, %1041, %1014, %1010, %1005, %629
  %1095 = phi i32 [ %.lcssa16, %629 ], [ %769, %1014 ], [ %769, %1010 ], [ %769, %1005 ], [ %769, %1047 ], [ %769, %1043 ], [ %769, %1041 ]
  %1096 = phi i64 [ %.lcssa24, %629 ], [ %767, %1014 ], [ %767, %1010 ], [ %767, %1005 ], [ %767, %1047 ], [ %767, %1043 ], [ %767, %1041 ]
  %1097 = phi ptr [ %633, %629 ], [ %1017, %1014 ], [ %1012, %1010 ], [ %1006, %1005 ], [ %1050, %1047 ], [ %1045, %1043 ], [ %.lcssa44, %1041 ]
  %1098 = phi ptr [ %609, %629 ], [ %760, %1014 ], [ %760, %1010 ], [ %760, %1005 ], [ %760, %1047 ], [ %760, %1043 ], [ %760, %1041 ]
  %1099 = icmp ult ptr %1098, %14
  %1100 = icmp ult ptr %1097, %33
  %1101 = select i1 %1099, i1 %1100, i1 false
  br i1 %1101, label %577, label %.loopexit12, !llvm.loop !54

.loopexit5:                                       ; preds = %524, %1051
  %.lcssa123 = phi ptr [ %580, %1051 ], [ %77, %524 ]
  %.lcssa101 = phi ptr [ %705, %1051 ], [ %190, %524 ]
  %.lcssa37 = phi i64 [ %719, %1051 ], [ %203, %524 ]
  %.lcssa31 = phi i32 [ %721, %1051 ], [ %205, %524 ]
  br label %1102

.loopexit10:                                      ; preds = %293, %780
  %.lcssa115 = phi ptr [ %580, %780 ], [ %77, %293 ]
  %.lcssa80 = phi ptr [ %760, %780 ], [ %242, %293 ]
  %.lcssa70 = phi i64 [ %767, %780 ], [ %249, %293 ]
  %.lcssa60 = phi i32 [ %769, %780 ], [ %251, %293 ]
  br label %1102

1102:                                             ; preds = %.loopexit10, %.loopexit5, %1091
  %1103 = phi ptr [ %.lcssa125, %1091 ], [ %.lcssa123, %.loopexit5 ], [ %.lcssa115, %.loopexit10 ]
  %1104 = phi ptr [ @.str.2, %1091 ], [ @.str.1, %.loopexit5 ], [ @.str, %.loopexit10 ]
  %1105 = phi i32 [ %.lcssa18, %1091 ], [ %.lcssa31, %.loopexit5 ], [ %.lcssa60, %.loopexit10 ]
  %1106 = phi i64 [ %.lcssa26, %1091 ], [ %.lcssa37, %.loopexit5 ], [ %.lcssa70, %.loopexit10 ]
  %1107 = phi ptr [ %.lcssa148, %1091 ], [ %.lcssa101, %.loopexit5 ], [ %.lcssa80, %.loopexit10 ]
  %1108 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1104, ptr %1108, align 8, !tbaa !55
  br label %1109

1109:                                             ; preds = %1102, %1091
  %1110 = phi ptr [ %.lcssa125, %1091 ], [ %1103, %1102 ]
  %1111 = phi i32 [ 16191, %1091 ], [ 16209, %1102 ]
  %1112 = phi i32 [ %.lcssa18, %1091 ], [ %1105, %1102 ]
  %1113 = phi i64 [ %.lcssa26, %1091 ], [ %1106, %1102 ]
  %1114 = phi ptr [ %.lcssa148, %1091 ], [ %1107, %1102 ]
  %1115 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %1111, ptr %1115, align 8, !tbaa !56
  br label %1116

.loopexit12:                                      ; preds = %569, %1094
  %.lcssa154 = phi i32 [ %1095, %1094 ], [ %570, %569 ]
  %.lcssa153 = phi i64 [ %1096, %1094 ], [ %571, %569 ]
  %.lcssa152 = phi ptr [ %1097, %1094 ], [ %572, %569 ]
  %.lcssa151 = phi ptr [ %1098, %1094 ], [ %573, %569 ]
  br label %1116

1116:                                             ; preds = %.loopexit12, %1109
  %1117 = phi i32 [ %1112, %1109 ], [ %.lcssa154, %.loopexit12 ]
  %1118 = phi i64 [ %1113, %1109 ], [ %.lcssa153, %.loopexit12 ]
  %1119 = phi ptr [ %1110, %1109 ], [ %.lcssa152, %.loopexit12 ]
  %1120 = phi ptr [ %1114, %1109 ], [ %.lcssa151, %.loopexit12 ]
  %1121 = lshr i32 %1117, 3
  %1122 = zext nneg i32 %1121 to i64
  %1123 = sub nsw i64 0, %1122
  %1124 = getelementptr inbounds i8, ptr %1120, i64 %1123
  %1125 = and i32 %1117, -8
  %1126 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1117, i32 %1125), !nosanitize !16
  %1127 = extractvalue { i32, i1 } %1126, 1, !nosanitize !16
  br i1 false, label %1128, label %1130, !prof !17, !nosanitize !16

1128:                                             ; preds = %1116
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

1129:                                             ; preds = %1155, %1138
  tail call void @llvm.ubsantrap(i8 21) #3, !nosanitize !16
  unreachable, !nosanitize !16

1130:                                             ; preds = %1116
  store ptr %1124, ptr %0, align 8, !tbaa !14
  store ptr %1119, ptr %15, align 8, !tbaa !18
  %1131 = icmp ult ptr %1124, %14
  br i1 %1131, label %1132, label %1138

1132:                                             ; preds = %1130
  %1133 = ptrtoint ptr %14 to i64
  %1134 = ptrtoint ptr %1124 to i64
  %1135 = sub i64 %1133, %1134
  %1136 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1135, i64 5), !nosanitize !16
  %1137 = extractvalue { i64, i1 } %1136, 1, !nosanitize !16
  br i1 %1137, label %815, label %1144, !prof !17, !nosanitize !16

1138:                                             ; preds = %1130
  %1139 = ptrtoint ptr %1124 to i64
  %1140 = ptrtoint ptr %14 to i64
  %1141 = sub i64 %1139, %1140
  %1142 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 5, i64 %1141), !nosanitize !16
  %1143 = extractvalue { i64, i1 } %1142, 1, !nosanitize !16
  br i1 %1143, label %1129, label %1144, !prof !17, !nosanitize !16

1144:                                             ; preds = %1138, %1132
  %1145 = phi { i64, i1 } [ %1136, %1132 ], [ %1142, %1138 ]
  %1146 = extractvalue { i64, i1 } %1145, 0
  %1147 = trunc i64 %1146 to i32
  store i32 %1147, ptr %6, align 8, !tbaa !15
  %1148 = icmp ult ptr %1119, %33
  br i1 %1148, label %1149, label %1155

1149:                                             ; preds = %1144
  %1150 = ptrtoint ptr %33 to i64
  %1151 = ptrtoint ptr %1119 to i64
  %1152 = sub i64 %1150, %1151
  %1153 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1152, i64 257), !nosanitize !16
  %1154 = extractvalue { i64, i1 } %1153, 1, !nosanitize !16
  br i1 %1154, label %815, label %1161, !prof !17, !nosanitize !16

1155:                                             ; preds = %1144
  %1156 = ptrtoint ptr %1119 to i64
  %1157 = ptrtoint ptr %33 to i64
  %1158 = sub i64 %1156, %1157
  %1159 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 257, i64 %1158), !nosanitize !16
  %1160 = extractvalue { i64, i1 } %1159, 1, !nosanitize !16
  br i1 %1160, label %1129, label %1161, !prof !17, !nosanitize !16

1161:                                             ; preds = %1155, %1149
  %1162 = phi { i64, i1 } [ %1153, %1149 ], [ %1159, %1155 ]
  %1163 = extractvalue { i64, i1 } %1162, 0
  %1164 = extractvalue { i32, i1 } %1126, 0, !nosanitize !16
  %1165 = shl nsw i32 -1, %1164
  %1166 = xor i32 %1165, -1
  %1167 = zext nneg i32 %1166 to i64
  %1168 = and i64 %1118, %1167
  %1169 = trunc i64 %1163 to i32
  store i32 %1169, ptr %17, align 8, !tbaa !19
  store i64 %1168, ptr %43, align 8, !tbaa !27
  store i32 %1164, ptr %45, align 8, !tbaa !28
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
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !41}
!45 = distinct !{!45, !41, !46, !47}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = distinct !{!50, !41, !46}
!51 = distinct !{!51, !41}
!52 = distinct !{!52, !41}
!53 = !{!"branch_weights", i32 127, i32 134217473}
!54 = distinct !{!54, !41}
!55 = !{!6, !7, i64 48}
!56 = !{!21, !11, i64 8}
