; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/signed.adler32.ll'
source_filename = "/home/amiralie1380/michigan/pl/zlib/adler32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @adler32_z(i64 noundef %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = lshr i64 %0, 16
  %5 = and i64 %4, 65535
  %6 = and i64 %0, 65535
  %7 = icmp eq i64 %2, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = load i8, ptr %1, align 1, !tbaa !8
  %10 = zext i8 %9 to i64
  %11 = add nuw nsw i64 %6, %10
  %12 = icmp samesign ugt i64 %11, 65520
  %13 = add nsw i64 %11, -65521
  %14 = select i1 %12, i64 %13, i64 %11
  %15 = add nuw nsw i64 %14, %5
  %16 = icmp ugt i64 %15, 65520
  %17 = shl nsw i64 %15, 16
  %18 = add nsw i64 %17, -4293984256
  %19 = select i1 %16, i64 %18, i64 %17
  %20 = or i64 %19, %14
  br label %424

21:                                               ; preds = %3
  %22 = icmp eq ptr %1, null
  br i1 %22, label %424, label %23

23:                                               ; preds = %21
  %24 = icmp ult i64 %2, 16
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = icmp ugt i64 %2, 5551
  br i1 %26, label %.preheader10, label %.preheader100

.preheader100:                                    ; preds = %228, %25
  %.ph = phi i64 [ %224, %228 ], [ %5, %25 ]
  %.ph101 = phi i64 [ %221, %228 ], [ %2, %25 ]
  %.ph102 = phi ptr [ %222, %228 ], [ %1, %25 ]
  %.ph103 = phi i64 [ %223, %228 ], [ %6, %25 ]
  br label %282

27:                                               ; preds = %23
  %28 = icmp eq i64 %2, 0
  br i1 %28, label %.loopexit, label %29

29:                                               ; preds = %27
  %30 = and i64 %2, 3
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %.loopexit5, label %.preheader4

.preheader4:                                      ; preds = %29, %.preheader4
  %32 = phi i64 [ %40, %.preheader4 ], [ %5, %29 ]
  %33 = phi ptr [ %36, %.preheader4 ], [ %1, %29 ]
  %34 = phi i64 [ %39, %.preheader4 ], [ %6, %29 ]
  %35 = phi i64 [ %41, %.preheader4 ], [ 0, %29 ]
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 1
  %37 = load i8, ptr %33, align 1, !tbaa !8
  %38 = zext i8 %37 to i64
  %39 = add i64 %34, %38
  %40 = add i64 %39, %32
  %41 = add nuw nsw i64 %35, 1
  %42 = icmp eq i64 %41, %30
  br i1 %42, label %.loopexit5.loopexit, label %.preheader4, !llvm.loop !9

.loopexit5.loopexit:                              ; preds = %.preheader4
  %43 = and i64 %2, 12
  %scevgep53 = getelementptr i8, ptr %1, i64 %30
  br label %.loopexit5

.loopexit5:                                       ; preds = %.loopexit5.loopexit, %29
  %44 = phi i64 [ poison, %29 ], [ %39, %.loopexit5.loopexit ]
  %45 = phi i64 [ poison, %29 ], [ %40, %.loopexit5.loopexit ]
  %46 = phi i64 [ %5, %29 ], [ %40, %.loopexit5.loopexit ]
  %47 = phi i64 [ %2, %29 ], [ %43, %.loopexit5.loopexit ]
  %48 = phi ptr [ %1, %29 ], [ %scevgep53, %.loopexit5.loopexit ]
  %49 = phi i64 [ %6, %29 ], [ %39, %.loopexit5.loopexit ]
  %50 = icmp samesign ult i64 %2, 4
  br i1 %50, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit5
  %51 = add nsw i64 %47, -4
  %52 = and i64 %51, 4
  %lcmp.mod118.not.not = icmp eq i64 %52, 0
  br i1 %lcmp.mod118.not.not, label %.preheader.prol, label %.preheader.prol.loopexit

.preheader.prol:                                  ; preds = %.preheader.preheader
  %53 = getelementptr inbounds nuw i8, ptr %48, i64 1
  %54 = load i8, ptr %48, align 1, !tbaa !8
  %55 = zext i8 %54 to i64
  %56 = add i64 %49, %55
  %57 = add i64 %56, %46
  %58 = getelementptr inbounds nuw i8, ptr %48, i64 2
  %59 = load i8, ptr %53, align 1, !tbaa !8
  %60 = zext i8 %59 to i64
  %61 = add i64 %56, %60
  %62 = add i64 %57, %61
  %63 = getelementptr inbounds nuw i8, ptr %48, i64 3
  %64 = load i8, ptr %58, align 1, !tbaa !8
  %65 = zext i8 %64 to i64
  %66 = add i64 %61, %65
  %67 = add i64 %62, %66
  %68 = add nsw i64 %47, -4
  %69 = getelementptr inbounds nuw i8, ptr %48, i64 4
  %70 = load i8, ptr %63, align 1, !tbaa !8
  %71 = zext i8 %70 to i64
  %72 = add i64 %66, %71
  %73 = add i64 %67, %72
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.lcssa93.unr = phi i64 [ poison, %.preheader.preheader ], [ %72, %.preheader.prol ]
  %.lcssa.unr = phi i64 [ poison, %.preheader.preheader ], [ %73, %.preheader.prol ]
  %.unr119 = phi i64 [ %46, %.preheader.preheader ], [ %73, %.preheader.prol ]
  %.unr120 = phi i64 [ %47, %.preheader.preheader ], [ %68, %.preheader.prol ]
  %.unr121 = phi ptr [ %48, %.preheader.preheader ], [ %69, %.preheader.prol ]
  %.unr122 = phi i64 [ %49, %.preheader.preheader ], [ %72, %.preheader.prol ]
  %74 = icmp ult i64 %51, 4
  br i1 %74, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %75 = phi i64 [ %119, %.preheader ], [ %.unr119, %.preheader.prol.loopexit ]
  %76 = phi i64 [ %114, %.preheader ], [ %.unr120, %.preheader.prol.loopexit ]
  %77 = phi ptr [ %115, %.preheader ], [ %.unr121, %.preheader.prol.loopexit ]
  %78 = phi i64 [ %118, %.preheader ], [ %.unr122, %.preheader.prol.loopexit ]
  %79 = getelementptr inbounds nuw i8, ptr %77, i64 1
  %80 = load i8, ptr %77, align 1, !tbaa !8
  %81 = zext i8 %80 to i64
  %82 = add i64 %78, %81
  %83 = add i64 %82, %75
  %84 = getelementptr inbounds nuw i8, ptr %77, i64 2
  %85 = load i8, ptr %79, align 1, !tbaa !8
  %86 = zext i8 %85 to i64
  %87 = add i64 %82, %86
  %88 = add i64 %83, %87
  %89 = getelementptr inbounds nuw i8, ptr %77, i64 3
  %90 = load i8, ptr %84, align 1, !tbaa !8
  %91 = zext i8 %90 to i64
  %92 = add i64 %87, %91
  %93 = add i64 %88, %92
  %94 = getelementptr inbounds nuw i8, ptr %77, i64 4
  %95 = load i8, ptr %89, align 1, !tbaa !8
  %96 = zext i8 %95 to i64
  %97 = add i64 %92, %96
  %98 = add i64 %93, %97
  %99 = getelementptr inbounds nuw i8, ptr %77, i64 5
  %100 = load i8, ptr %94, align 1, !tbaa !8
  %101 = zext i8 %100 to i64
  %102 = add i64 %97, %101
  %103 = add i64 %102, %98
  %104 = getelementptr inbounds nuw i8, ptr %77, i64 6
  %105 = load i8, ptr %99, align 1, !tbaa !8
  %106 = zext i8 %105 to i64
  %107 = add i64 %102, %106
  %108 = add i64 %103, %107
  %109 = getelementptr inbounds nuw i8, ptr %77, i64 7
  %110 = load i8, ptr %104, align 1, !tbaa !8
  %111 = zext i8 %110 to i64
  %112 = add i64 %107, %111
  %113 = add i64 %108, %112
  %114 = add i64 %76, -8
  %115 = getelementptr inbounds nuw i8, ptr %77, i64 8
  %116 = load i8, ptr %109, align 1, !tbaa !8
  %117 = zext i8 %116 to i64
  %118 = add i64 %112, %117
  %119 = add i64 %113, %118
  %120 = icmp eq i64 %114, 0
  br i1 %120, label %.loopexit, label %.preheader, !llvm.loop !11

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %.loopexit5, %27
  %121 = phi i64 [ %6, %27 ], [ %44, %.loopexit5 ], [ %.lcssa93.unr, %.preheader.prol.loopexit ], [ %118, %.preheader ]
  %122 = phi i64 [ %5, %27 ], [ %45, %.loopexit5 ], [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %119, %.preheader ]
  %123 = icmp ugt i64 %121, 65520
  %124 = add i64 %121, -65521
  %125 = select i1 %123, i64 %124, i64 %121
  %126 = urem i64 %122, 65521
  %127 = shl nuw nsw i64 %126, 16
  %128 = or i64 %127, %125
  br label %424

.preheader10:                                     ; preds = %25, %220
  %129 = phi i64 [ %224, %220 ], [ %5, %25 ]
  %130 = phi i64 [ %221, %220 ], [ %2, %25 ]
  %131 = phi ptr [ %222, %220 ], [ %1, %25 ]
  %132 = phi i64 [ %223, %220 ], [ %6, %25 ]
  br label %133

133:                                              ; preds = %133, %.preheader10
  %134 = phi i64 [ %132, %.preheader10 ], [ %215, %133 ]
  %135 = phi ptr [ %131, %.preheader10 ], [ %217, %133 ]
  %136 = phi i64 [ %129, %.preheader10 ], [ %216, %133 ]
  %137 = phi i32 [ 347, %.preheader10 ], [ %218, %133 ]
  %138 = load i8, ptr %135, align 1, !tbaa !8
  %139 = zext i8 %138 to i64
  %140 = add i64 %134, %139
  %141 = add i64 %140, %136
  %142 = getelementptr inbounds nuw i8, ptr %135, i64 1
  %143 = load i8, ptr %142, align 1, !tbaa !8
  %144 = zext i8 %143 to i64
  %145 = add i64 %140, %144
  %146 = add i64 %141, %145
  %147 = getelementptr inbounds nuw i8, ptr %135, i64 2
  %148 = load i8, ptr %147, align 1, !tbaa !8
  %149 = zext i8 %148 to i64
  %150 = add i64 %145, %149
  %151 = add i64 %146, %150
  %152 = getelementptr inbounds nuw i8, ptr %135, i64 3
  %153 = load i8, ptr %152, align 1, !tbaa !8
  %154 = zext i8 %153 to i64
  %155 = add i64 %150, %154
  %156 = add i64 %151, %155
  %157 = getelementptr inbounds nuw i8, ptr %135, i64 4
  %158 = load i8, ptr %157, align 1, !tbaa !8
  %159 = zext i8 %158 to i64
  %160 = add i64 %155, %159
  %161 = add i64 %156, %160
  %162 = getelementptr inbounds nuw i8, ptr %135, i64 5
  %163 = load i8, ptr %162, align 1, !tbaa !8
  %164 = zext i8 %163 to i64
  %165 = add i64 %160, %164
  %166 = add i64 %161, %165
  %167 = getelementptr inbounds nuw i8, ptr %135, i64 6
  %168 = load i8, ptr %167, align 1, !tbaa !8
  %169 = zext i8 %168 to i64
  %170 = add i64 %165, %169
  %171 = add i64 %166, %170
  %172 = getelementptr inbounds nuw i8, ptr %135, i64 7
  %173 = load i8, ptr %172, align 1, !tbaa !8
  %174 = zext i8 %173 to i64
  %175 = add i64 %170, %174
  %176 = add i64 %171, %175
  %177 = getelementptr inbounds nuw i8, ptr %135, i64 8
  %178 = load i8, ptr %177, align 1, !tbaa !8
  %179 = zext i8 %178 to i64
  %180 = add i64 %175, %179
  %181 = add i64 %176, %180
  %182 = getelementptr inbounds nuw i8, ptr %135, i64 9
  %183 = load i8, ptr %182, align 1, !tbaa !8
  %184 = zext i8 %183 to i64
  %185 = add i64 %180, %184
  %186 = add i64 %181, %185
  %187 = getelementptr inbounds nuw i8, ptr %135, i64 10
  %188 = load i8, ptr %187, align 1, !tbaa !8
  %189 = zext i8 %188 to i64
  %190 = add i64 %185, %189
  %191 = add i64 %186, %190
  %192 = getelementptr inbounds nuw i8, ptr %135, i64 11
  %193 = load i8, ptr %192, align 1, !tbaa !8
  %194 = zext i8 %193 to i64
  %195 = add i64 %190, %194
  %196 = add i64 %191, %195
  %197 = getelementptr inbounds nuw i8, ptr %135, i64 12
  %198 = load i8, ptr %197, align 1, !tbaa !8
  %199 = zext i8 %198 to i64
  %200 = add i64 %195, %199
  %201 = add i64 %196, %200
  %202 = getelementptr inbounds nuw i8, ptr %135, i64 13
  %203 = load i8, ptr %202, align 1, !tbaa !8
  %204 = zext i8 %203 to i64
  %205 = add i64 %200, %204
  %206 = add i64 %201, %205
  %207 = getelementptr inbounds nuw i8, ptr %135, i64 14
  %208 = load i8, ptr %207, align 1, !tbaa !8
  %209 = zext i8 %208 to i64
  %210 = add i64 %205, %209
  %211 = add i64 %206, %210
  %212 = getelementptr inbounds nuw i8, ptr %135, i64 15
  %213 = load i8, ptr %212, align 1, !tbaa !8
  %214 = zext i8 %213 to i64
  %215 = add i64 %210, %214
  %216 = add i64 %211, %215
  %217 = getelementptr inbounds nuw i8, ptr %135, i64 16
  %218 = add nsw i32 %137, -1
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %133, !llvm.loop !13

220:                                              ; preds = %133
  %221 = add i64 %130, -5552
  %222 = getelementptr i8, ptr %131, i64 5552
  %223 = urem i64 %215, 65521
  %224 = urem i64 %216, 65521
  %225 = icmp ugt i64 %221, 5551
  br i1 %225, label %.preheader10, label %226, !llvm.loop !14

226:                                              ; preds = %220
  %227 = icmp eq i64 %221, 0
  br i1 %227, label %419, label %228

228:                                              ; preds = %226
  %229 = icmp samesign ugt i64 %221, 15
  br i1 %229, label %.preheader100, label %232

230:                                              ; preds = %282
  %231 = icmp eq i64 %287, 0
  br i1 %231, label %.loopexit7, label %232

232:                                              ; preds = %230, %228
  %233 = phi i64 [ %224, %228 ], [ %366, %230 ]
  %234 = phi i64 [ %221, %228 ], [ %287, %230 ]
  %235 = phi ptr [ %222, %228 ], [ %367, %230 ]
  %236 = phi i64 [ %223, %228 ], [ %365, %230 ]
  %237 = and i64 %234, 3
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %.loopexit9, label %.preheader8

.preheader8:                                      ; preds = %232, %.preheader8
  %239 = phi i64 [ %247, %.preheader8 ], [ %233, %232 ]
  %240 = phi ptr [ %243, %.preheader8 ], [ %235, %232 ]
  %241 = phi i64 [ %246, %.preheader8 ], [ %236, %232 ]
  %242 = phi i64 [ %248, %.preheader8 ], [ 0, %232 ]
  %243 = getelementptr inbounds nuw i8, ptr %240, i64 1
  %244 = load i8, ptr %240, align 1, !tbaa !8
  %245 = zext i8 %244 to i64
  %246 = add i64 %241, %245
  %247 = add i64 %246, %239
  %248 = add nuw nsw i64 %242, 1
  %249 = icmp eq i64 %248, %237
  br i1 %249, label %.loopexit9.loopexit, label %.preheader8, !llvm.loop !15

.loopexit9.loopexit:                              ; preds = %.preheader8
  %250 = and i64 %234, 12
  %scevgep = getelementptr i8, ptr %235, i64 %237
  br label %.loopexit9

.loopexit9:                                       ; preds = %.loopexit9.loopexit, %232
  %251 = phi i64 [ poison, %232 ], [ %246, %.loopexit9.loopexit ]
  %252 = phi i64 [ poison, %232 ], [ %247, %.loopexit9.loopexit ]
  %253 = phi i64 [ %233, %232 ], [ %247, %.loopexit9.loopexit ]
  %254 = phi i64 [ %234, %232 ], [ %250, %.loopexit9.loopexit ]
  %255 = phi ptr [ %235, %232 ], [ %scevgep, %.loopexit9.loopexit ]
  %256 = phi i64 [ %236, %232 ], [ %246, %.loopexit9.loopexit ]
  %257 = icmp samesign ult i64 %234, 4
  br i1 %257, label %.loopexit7, label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.loopexit9
  %258 = add nsw i64 %254, -4
  %259 = and i64 %258, 4
  %lcmp.mod.not.not = icmp eq i64 %259, 0
  br i1 %lcmp.mod.not.not, label %.preheader6.prol, label %.preheader6.prol.loopexit

.preheader6.prol:                                 ; preds = %.preheader6.preheader
  %260 = getelementptr inbounds nuw i8, ptr %255, i64 1
  %261 = load i8, ptr %255, align 1, !tbaa !8
  %262 = zext i8 %261 to i64
  %263 = add i64 %256, %262
  %264 = add i64 %263, %253
  %265 = getelementptr inbounds nuw i8, ptr %255, i64 2
  %266 = load i8, ptr %260, align 1, !tbaa !8
  %267 = zext i8 %266 to i64
  %268 = add i64 %263, %267
  %269 = add i64 %264, %268
  %270 = getelementptr inbounds nuw i8, ptr %255, i64 3
  %271 = load i8, ptr %265, align 1, !tbaa !8
  %272 = zext i8 %271 to i64
  %273 = add i64 %268, %272
  %274 = add i64 %269, %273
  %275 = add nsw i64 %254, -4
  %276 = getelementptr inbounds nuw i8, ptr %255, i64 4
  %277 = load i8, ptr %270, align 1, !tbaa !8
  %278 = zext i8 %277 to i64
  %279 = add i64 %273, %278
  %280 = add i64 %274, %279
  br label %.preheader6.prol.loopexit

.preheader6.prol.loopexit:                        ; preds = %.preheader6.prol, %.preheader6.preheader
  %.lcssa97.unr = phi i64 [ poison, %.preheader6.preheader ], [ %279, %.preheader6.prol ]
  %.lcssa96.unr = phi i64 [ poison, %.preheader6.preheader ], [ %280, %.preheader6.prol ]
  %.unr = phi i64 [ %253, %.preheader6.preheader ], [ %280, %.preheader6.prol ]
  %.unr114 = phi i64 [ %254, %.preheader6.preheader ], [ %275, %.preheader6.prol ]
  %.unr115 = phi ptr [ %255, %.preheader6.preheader ], [ %276, %.preheader6.prol ]
  %.unr116 = phi i64 [ %256, %.preheader6.preheader ], [ %279, %.preheader6.prol ]
  %281 = icmp ult i64 %258, 4
  br i1 %281, label %.loopexit7, label %.preheader6

282:                                              ; preds = %.preheader100, %282
  %283 = phi i64 [ %366, %282 ], [ %.ph, %.preheader100 ]
  %284 = phi i64 [ %287, %282 ], [ %.ph101, %.preheader100 ]
  %285 = phi ptr [ %367, %282 ], [ %.ph102, %.preheader100 ]
  %286 = phi i64 [ %365, %282 ], [ %.ph103, %.preheader100 ]
  %287 = add nsw i64 %284, -16
  %288 = load i8, ptr %285, align 1, !tbaa !8
  %289 = zext i8 %288 to i64
  %290 = add i64 %286, %289
  %291 = add i64 %290, %283
  %292 = getelementptr inbounds nuw i8, ptr %285, i64 1
  %293 = load i8, ptr %292, align 1, !tbaa !8
  %294 = zext i8 %293 to i64
  %295 = add i64 %290, %294
  %296 = add i64 %291, %295
  %297 = getelementptr inbounds nuw i8, ptr %285, i64 2
  %298 = load i8, ptr %297, align 1, !tbaa !8
  %299 = zext i8 %298 to i64
  %300 = add i64 %295, %299
  %301 = add i64 %296, %300
  %302 = getelementptr inbounds nuw i8, ptr %285, i64 3
  %303 = load i8, ptr %302, align 1, !tbaa !8
  %304 = zext i8 %303 to i64
  %305 = add i64 %300, %304
  %306 = add i64 %301, %305
  %307 = getelementptr inbounds nuw i8, ptr %285, i64 4
  %308 = load i8, ptr %307, align 1, !tbaa !8
  %309 = zext i8 %308 to i64
  %310 = add i64 %305, %309
  %311 = add i64 %306, %310
  %312 = getelementptr inbounds nuw i8, ptr %285, i64 5
  %313 = load i8, ptr %312, align 1, !tbaa !8
  %314 = zext i8 %313 to i64
  %315 = add i64 %310, %314
  %316 = add i64 %311, %315
  %317 = getelementptr inbounds nuw i8, ptr %285, i64 6
  %318 = load i8, ptr %317, align 1, !tbaa !8
  %319 = zext i8 %318 to i64
  %320 = add i64 %315, %319
  %321 = add i64 %316, %320
  %322 = getelementptr inbounds nuw i8, ptr %285, i64 7
  %323 = load i8, ptr %322, align 1, !tbaa !8
  %324 = zext i8 %323 to i64
  %325 = add i64 %320, %324
  %326 = add i64 %321, %325
  %327 = getelementptr inbounds nuw i8, ptr %285, i64 8
  %328 = load i8, ptr %327, align 1, !tbaa !8
  %329 = zext i8 %328 to i64
  %330 = add i64 %325, %329
  %331 = add i64 %326, %330
  %332 = getelementptr inbounds nuw i8, ptr %285, i64 9
  %333 = load i8, ptr %332, align 1, !tbaa !8
  %334 = zext i8 %333 to i64
  %335 = add i64 %330, %334
  %336 = add i64 %331, %335
  %337 = getelementptr inbounds nuw i8, ptr %285, i64 10
  %338 = load i8, ptr %337, align 1, !tbaa !8
  %339 = zext i8 %338 to i64
  %340 = add i64 %335, %339
  %341 = add i64 %336, %340
  %342 = getelementptr inbounds nuw i8, ptr %285, i64 11
  %343 = load i8, ptr %342, align 1, !tbaa !8
  %344 = zext i8 %343 to i64
  %345 = add i64 %340, %344
  %346 = add i64 %341, %345
  %347 = getelementptr inbounds nuw i8, ptr %285, i64 12
  %348 = load i8, ptr %347, align 1, !tbaa !8
  %349 = zext i8 %348 to i64
  %350 = add i64 %345, %349
  %351 = add i64 %346, %350
  %352 = getelementptr inbounds nuw i8, ptr %285, i64 13
  %353 = load i8, ptr %352, align 1, !tbaa !8
  %354 = zext i8 %353 to i64
  %355 = add i64 %350, %354
  %356 = add i64 %351, %355
  %357 = getelementptr inbounds nuw i8, ptr %285, i64 14
  %358 = load i8, ptr %357, align 1, !tbaa !8
  %359 = zext i8 %358 to i64
  %360 = add i64 %355, %359
  %361 = add i64 %356, %360
  %362 = getelementptr inbounds nuw i8, ptr %285, i64 15
  %363 = load i8, ptr %362, align 1, !tbaa !8
  %364 = zext i8 %363 to i64
  %365 = add i64 %360, %364
  %366 = add i64 %361, %365
  %367 = getelementptr inbounds nuw i8, ptr %285, i64 16
  %368 = icmp ugt i64 %287, 15
  br i1 %368, label %282, label %230, !llvm.loop !16

.preheader6:                                      ; preds = %.preheader6.prol.loopexit, %.preheader6
  %369 = phi i64 [ %413, %.preheader6 ], [ %.unr, %.preheader6.prol.loopexit ]
  %370 = phi i64 [ %408, %.preheader6 ], [ %.unr114, %.preheader6.prol.loopexit ]
  %371 = phi ptr [ %409, %.preheader6 ], [ %.unr115, %.preheader6.prol.loopexit ]
  %372 = phi i64 [ %412, %.preheader6 ], [ %.unr116, %.preheader6.prol.loopexit ]
  %373 = getelementptr inbounds nuw i8, ptr %371, i64 1
  %374 = load i8, ptr %371, align 1, !tbaa !8
  %375 = zext i8 %374 to i64
  %376 = add i64 %372, %375
  %377 = add i64 %376, %369
  %378 = getelementptr inbounds nuw i8, ptr %371, i64 2
  %379 = load i8, ptr %373, align 1, !tbaa !8
  %380 = zext i8 %379 to i64
  %381 = add i64 %376, %380
  %382 = add i64 %377, %381
  %383 = getelementptr inbounds nuw i8, ptr %371, i64 3
  %384 = load i8, ptr %378, align 1, !tbaa !8
  %385 = zext i8 %384 to i64
  %386 = add i64 %381, %385
  %387 = add i64 %382, %386
  %388 = getelementptr inbounds nuw i8, ptr %371, i64 4
  %389 = load i8, ptr %383, align 1, !tbaa !8
  %390 = zext i8 %389 to i64
  %391 = add i64 %386, %390
  %392 = add i64 %387, %391
  %393 = getelementptr inbounds nuw i8, ptr %371, i64 5
  %394 = load i8, ptr %388, align 1, !tbaa !8
  %395 = zext i8 %394 to i64
  %396 = add i64 %391, %395
  %397 = add i64 %396, %392
  %398 = getelementptr inbounds nuw i8, ptr %371, i64 6
  %399 = load i8, ptr %393, align 1, !tbaa !8
  %400 = zext i8 %399 to i64
  %401 = add i64 %396, %400
  %402 = add i64 %397, %401
  %403 = getelementptr inbounds nuw i8, ptr %371, i64 7
  %404 = load i8, ptr %398, align 1, !tbaa !8
  %405 = zext i8 %404 to i64
  %406 = add i64 %401, %405
  %407 = add i64 %402, %406
  %408 = add i64 %370, -8
  %409 = getelementptr inbounds nuw i8, ptr %371, i64 8
  %410 = load i8, ptr %403, align 1, !tbaa !8
  %411 = zext i8 %410 to i64
  %412 = add i64 %406, %411
  %413 = add i64 %407, %412
  %414 = icmp eq i64 %408, 0
  br i1 %414, label %.loopexit7, label %.preheader6, !llvm.loop !17

.loopexit7:                                       ; preds = %.preheader6.prol.loopexit, %.preheader6, %.loopexit9, %230
  %415 = phi i64 [ %365, %230 ], [ %251, %.loopexit9 ], [ %.lcssa97.unr, %.preheader6.prol.loopexit ], [ %412, %.preheader6 ]
  %416 = phi i64 [ %366, %230 ], [ %252, %.loopexit9 ], [ %.lcssa96.unr, %.preheader6.prol.loopexit ], [ %413, %.preheader6 ]
  %417 = urem i64 %415, 65521
  %418 = urem i64 %416, 65521
  br label %419

419:                                              ; preds = %.loopexit7, %226
  %420 = phi i64 [ %417, %.loopexit7 ], [ %223, %226 ]
  %421 = phi i64 [ %418, %.loopexit7 ], [ %224, %226 ]
  %422 = shl nuw nsw i64 %421, 16
  %423 = or disjoint i64 %422, %420
  br label %424

424:                                              ; preds = %419, %.loopexit, %21, %8
  %425 = phi i64 [ %20, %8 ], [ %423, %419 ], [ %128, %.loopexit ], [ 1, %21 ]
  ret i64 %425
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @adler32(i64 noundef %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = zext i32 %2 to i64
  %5 = lshr i64 %0, 16
  %6 = and i64 %5, 65535
  %7 = and i64 %0, 65535
  %8 = icmp eq i32 %2, 1
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = load i8, ptr %1, align 1, !tbaa !8
  %11 = zext i8 %10 to i64
  %12 = add nuw nsw i64 %7, %11
  %13 = icmp samesign ugt i64 %12, 65520
  %14 = add nsw i64 %12, -65521
  %15 = select i1 %13, i64 %14, i64 %12
  %16 = add nuw nsw i64 %15, %6
  %17 = icmp ugt i64 %16, 65520
  %18 = shl nsw i64 %16, 16
  %19 = add nsw i64 %18, -4293984256
  %20 = select i1 %17, i64 %19, i64 %18
  %21 = or i64 %20, %15
  br label %425

22:                                               ; preds = %3
  %23 = icmp eq ptr %1, null
  br i1 %23, label %425, label %24

24:                                               ; preds = %22
  %25 = icmp ult i32 %2, 16
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = icmp ugt i32 %2, 5551
  br i1 %27, label %.preheader10, label %.preheader100

.preheader100:                                    ; preds = %229, %26
  %.ph = phi i64 [ %225, %229 ], [ %6, %26 ]
  %.ph101 = phi i64 [ %222, %229 ], [ %4, %26 ]
  %.ph102 = phi ptr [ %223, %229 ], [ %1, %26 ]
  %.ph103 = phi i64 [ %224, %229 ], [ %7, %26 ]
  br label %283

28:                                               ; preds = %24
  %29 = icmp eq i32 %2, 0
  br i1 %29, label %.loopexit, label %30

30:                                               ; preds = %28
  %31 = and i64 %4, 3
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %.loopexit5, label %.preheader4

.preheader4:                                      ; preds = %30, %.preheader4
  %33 = phi i64 [ %41, %.preheader4 ], [ %6, %30 ]
  %34 = phi ptr [ %37, %.preheader4 ], [ %1, %30 ]
  %35 = phi i64 [ %40, %.preheader4 ], [ %7, %30 ]
  %36 = phi i64 [ %42, %.preheader4 ], [ 0, %30 ]
  %37 = getelementptr inbounds nuw i8, ptr %34, i64 1
  %38 = load i8, ptr %34, align 1, !tbaa !8
  %39 = zext i8 %38 to i64
  %40 = add i64 %35, %39
  %41 = add i64 %40, %33
  %42 = add nuw nsw i64 %36, 1
  %43 = icmp eq i64 %42, %31
  br i1 %43, label %.loopexit5.loopexit, label %.preheader4, !llvm.loop !18

.loopexit5.loopexit:                              ; preds = %.preheader4
  %44 = and i64 %4, 12
  %scevgep53 = getelementptr i8, ptr %1, i64 %31
  br label %.loopexit5

.loopexit5:                                       ; preds = %.loopexit5.loopexit, %30
  %45 = phi i64 [ poison, %30 ], [ %40, %.loopexit5.loopexit ]
  %46 = phi i64 [ poison, %30 ], [ %41, %.loopexit5.loopexit ]
  %47 = phi i64 [ %6, %30 ], [ %41, %.loopexit5.loopexit ]
  %48 = phi i64 [ %4, %30 ], [ %44, %.loopexit5.loopexit ]
  %49 = phi ptr [ %1, %30 ], [ %scevgep53, %.loopexit5.loopexit ]
  %50 = phi i64 [ %7, %30 ], [ %40, %.loopexit5.loopexit ]
  %51 = icmp samesign ult i32 %2, 4
  br i1 %51, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit5
  %52 = add nsw i64 %48, -4
  %53 = and i64 %52, 4
  %lcmp.mod118.not.not = icmp eq i64 %53, 0
  br i1 %lcmp.mod118.not.not, label %.preheader.prol, label %.preheader.prol.loopexit

.preheader.prol:                                  ; preds = %.preheader.preheader
  %54 = getelementptr inbounds nuw i8, ptr %49, i64 1
  %55 = load i8, ptr %49, align 1, !tbaa !8
  %56 = zext i8 %55 to i64
  %57 = add i64 %50, %56
  %58 = add i64 %57, %47
  %59 = getelementptr inbounds nuw i8, ptr %49, i64 2
  %60 = load i8, ptr %54, align 1, !tbaa !8
  %61 = zext i8 %60 to i64
  %62 = add i64 %57, %61
  %63 = add i64 %58, %62
  %64 = getelementptr inbounds nuw i8, ptr %49, i64 3
  %65 = load i8, ptr %59, align 1, !tbaa !8
  %66 = zext i8 %65 to i64
  %67 = add i64 %62, %66
  %68 = add i64 %63, %67
  %69 = add nsw i64 %48, -4
  %70 = getelementptr inbounds nuw i8, ptr %49, i64 4
  %71 = load i8, ptr %64, align 1, !tbaa !8
  %72 = zext i8 %71 to i64
  %73 = add i64 %67, %72
  %74 = add i64 %68, %73
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.lcssa93.unr = phi i64 [ poison, %.preheader.preheader ], [ %73, %.preheader.prol ]
  %.lcssa.unr = phi i64 [ poison, %.preheader.preheader ], [ %74, %.preheader.prol ]
  %.unr119 = phi i64 [ %47, %.preheader.preheader ], [ %74, %.preheader.prol ]
  %.unr120 = phi i64 [ %48, %.preheader.preheader ], [ %69, %.preheader.prol ]
  %.unr121 = phi ptr [ %49, %.preheader.preheader ], [ %70, %.preheader.prol ]
  %.unr122 = phi i64 [ %50, %.preheader.preheader ], [ %73, %.preheader.prol ]
  %75 = icmp ult i64 %52, 4
  br i1 %75, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %76 = phi i64 [ %120, %.preheader ], [ %.unr119, %.preheader.prol.loopexit ]
  %77 = phi i64 [ %115, %.preheader ], [ %.unr120, %.preheader.prol.loopexit ]
  %78 = phi ptr [ %116, %.preheader ], [ %.unr121, %.preheader.prol.loopexit ]
  %79 = phi i64 [ %119, %.preheader ], [ %.unr122, %.preheader.prol.loopexit ]
  %80 = getelementptr inbounds nuw i8, ptr %78, i64 1
  %81 = load i8, ptr %78, align 1, !tbaa !8
  %82 = zext i8 %81 to i64
  %83 = add i64 %79, %82
  %84 = add i64 %83, %76
  %85 = getelementptr inbounds nuw i8, ptr %78, i64 2
  %86 = load i8, ptr %80, align 1, !tbaa !8
  %87 = zext i8 %86 to i64
  %88 = add i64 %83, %87
  %89 = add i64 %84, %88
  %90 = getelementptr inbounds nuw i8, ptr %78, i64 3
  %91 = load i8, ptr %85, align 1, !tbaa !8
  %92 = zext i8 %91 to i64
  %93 = add i64 %88, %92
  %94 = add i64 %89, %93
  %95 = getelementptr inbounds nuw i8, ptr %78, i64 4
  %96 = load i8, ptr %90, align 1, !tbaa !8
  %97 = zext i8 %96 to i64
  %98 = add i64 %93, %97
  %99 = add i64 %94, %98
  %100 = getelementptr inbounds nuw i8, ptr %78, i64 5
  %101 = load i8, ptr %95, align 1, !tbaa !8
  %102 = zext i8 %101 to i64
  %103 = add i64 %98, %102
  %104 = add i64 %103, %99
  %105 = getelementptr inbounds nuw i8, ptr %78, i64 6
  %106 = load i8, ptr %100, align 1, !tbaa !8
  %107 = zext i8 %106 to i64
  %108 = add i64 %103, %107
  %109 = add i64 %104, %108
  %110 = getelementptr inbounds nuw i8, ptr %78, i64 7
  %111 = load i8, ptr %105, align 1, !tbaa !8
  %112 = zext i8 %111 to i64
  %113 = add i64 %108, %112
  %114 = add i64 %109, %113
  %115 = add nsw i64 %77, -8
  %116 = getelementptr inbounds nuw i8, ptr %78, i64 8
  %117 = load i8, ptr %110, align 1, !tbaa !8
  %118 = zext i8 %117 to i64
  %119 = add i64 %113, %118
  %120 = add i64 %114, %119
  %121 = icmp eq i64 %115, 0
  br i1 %121, label %.loopexit, label %.preheader, !llvm.loop !11

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %.loopexit5, %28
  %122 = phi i64 [ %7, %28 ], [ %45, %.loopexit5 ], [ %.lcssa93.unr, %.preheader.prol.loopexit ], [ %119, %.preheader ]
  %123 = phi i64 [ %6, %28 ], [ %46, %.loopexit5 ], [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %120, %.preheader ]
  %124 = icmp ugt i64 %122, 65520
  %125 = add i64 %122, -65521
  %126 = select i1 %124, i64 %125, i64 %122
  %127 = urem i64 %123, 65521
  %128 = shl nuw nsw i64 %127, 16
  %129 = or i64 %128, %126
  br label %425

.preheader10:                                     ; preds = %26, %221
  %130 = phi i64 [ %225, %221 ], [ %6, %26 ]
  %131 = phi i64 [ %222, %221 ], [ %4, %26 ]
  %132 = phi ptr [ %223, %221 ], [ %1, %26 ]
  %133 = phi i64 [ %224, %221 ], [ %7, %26 ]
  br label %134

134:                                              ; preds = %134, %.preheader10
  %135 = phi i64 [ %133, %.preheader10 ], [ %216, %134 ]
  %136 = phi ptr [ %132, %.preheader10 ], [ %218, %134 ]
  %137 = phi i64 [ %130, %.preheader10 ], [ %217, %134 ]
  %138 = phi i32 [ 347, %.preheader10 ], [ %219, %134 ]
  %139 = load i8, ptr %136, align 1, !tbaa !8
  %140 = zext i8 %139 to i64
  %141 = add i64 %135, %140
  %142 = add i64 %141, %137
  %143 = getelementptr inbounds nuw i8, ptr %136, i64 1
  %144 = load i8, ptr %143, align 1, !tbaa !8
  %145 = zext i8 %144 to i64
  %146 = add i64 %141, %145
  %147 = add i64 %142, %146
  %148 = getelementptr inbounds nuw i8, ptr %136, i64 2
  %149 = load i8, ptr %148, align 1, !tbaa !8
  %150 = zext i8 %149 to i64
  %151 = add i64 %146, %150
  %152 = add i64 %147, %151
  %153 = getelementptr inbounds nuw i8, ptr %136, i64 3
  %154 = load i8, ptr %153, align 1, !tbaa !8
  %155 = zext i8 %154 to i64
  %156 = add i64 %151, %155
  %157 = add i64 %152, %156
  %158 = getelementptr inbounds nuw i8, ptr %136, i64 4
  %159 = load i8, ptr %158, align 1, !tbaa !8
  %160 = zext i8 %159 to i64
  %161 = add i64 %156, %160
  %162 = add i64 %157, %161
  %163 = getelementptr inbounds nuw i8, ptr %136, i64 5
  %164 = load i8, ptr %163, align 1, !tbaa !8
  %165 = zext i8 %164 to i64
  %166 = add i64 %161, %165
  %167 = add i64 %162, %166
  %168 = getelementptr inbounds nuw i8, ptr %136, i64 6
  %169 = load i8, ptr %168, align 1, !tbaa !8
  %170 = zext i8 %169 to i64
  %171 = add i64 %166, %170
  %172 = add i64 %167, %171
  %173 = getelementptr inbounds nuw i8, ptr %136, i64 7
  %174 = load i8, ptr %173, align 1, !tbaa !8
  %175 = zext i8 %174 to i64
  %176 = add i64 %171, %175
  %177 = add i64 %172, %176
  %178 = getelementptr inbounds nuw i8, ptr %136, i64 8
  %179 = load i8, ptr %178, align 1, !tbaa !8
  %180 = zext i8 %179 to i64
  %181 = add i64 %176, %180
  %182 = add i64 %177, %181
  %183 = getelementptr inbounds nuw i8, ptr %136, i64 9
  %184 = load i8, ptr %183, align 1, !tbaa !8
  %185 = zext i8 %184 to i64
  %186 = add i64 %181, %185
  %187 = add i64 %182, %186
  %188 = getelementptr inbounds nuw i8, ptr %136, i64 10
  %189 = load i8, ptr %188, align 1, !tbaa !8
  %190 = zext i8 %189 to i64
  %191 = add i64 %186, %190
  %192 = add i64 %187, %191
  %193 = getelementptr inbounds nuw i8, ptr %136, i64 11
  %194 = load i8, ptr %193, align 1, !tbaa !8
  %195 = zext i8 %194 to i64
  %196 = add i64 %191, %195
  %197 = add i64 %192, %196
  %198 = getelementptr inbounds nuw i8, ptr %136, i64 12
  %199 = load i8, ptr %198, align 1, !tbaa !8
  %200 = zext i8 %199 to i64
  %201 = add i64 %196, %200
  %202 = add i64 %197, %201
  %203 = getelementptr inbounds nuw i8, ptr %136, i64 13
  %204 = load i8, ptr %203, align 1, !tbaa !8
  %205 = zext i8 %204 to i64
  %206 = add i64 %201, %205
  %207 = add i64 %202, %206
  %208 = getelementptr inbounds nuw i8, ptr %136, i64 14
  %209 = load i8, ptr %208, align 1, !tbaa !8
  %210 = zext i8 %209 to i64
  %211 = add i64 %206, %210
  %212 = add i64 %207, %211
  %213 = getelementptr inbounds nuw i8, ptr %136, i64 15
  %214 = load i8, ptr %213, align 1, !tbaa !8
  %215 = zext i8 %214 to i64
  %216 = add i64 %211, %215
  %217 = add i64 %212, %216
  %218 = getelementptr inbounds nuw i8, ptr %136, i64 16
  %219 = add nsw i32 %138, -1
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %134, !llvm.loop !13

221:                                              ; preds = %134
  %222 = add i64 %131, -5552
  %223 = getelementptr i8, ptr %132, i64 5552
  %224 = urem i64 %216, 65521
  %225 = urem i64 %217, 65521
  %226 = icmp ugt i64 %222, 5551
  br i1 %226, label %.preheader10, label %227, !llvm.loop !14

227:                                              ; preds = %221
  %228 = icmp eq i64 %222, 0
  br i1 %228, label %420, label %229

229:                                              ; preds = %227
  %230 = icmp samesign ugt i64 %222, 15
  br i1 %230, label %.preheader100, label %231

231:                                              ; preds = %281, %229
  %232 = phi i64 [ %225, %229 ], [ %367, %281 ]
  %233 = phi i64 [ %222, %229 ], [ %288, %281 ]
  %234 = phi ptr [ %223, %229 ], [ %368, %281 ]
  %235 = phi i64 [ %224, %229 ], [ %366, %281 ]
  %236 = and i64 %233, 3
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %.loopexit9, label %.preheader8

.preheader8:                                      ; preds = %231, %.preheader8
  %238 = phi i64 [ %246, %.preheader8 ], [ %232, %231 ]
  %239 = phi ptr [ %242, %.preheader8 ], [ %234, %231 ]
  %240 = phi i64 [ %245, %.preheader8 ], [ %235, %231 ]
  %241 = phi i64 [ %247, %.preheader8 ], [ 0, %231 ]
  %242 = getelementptr inbounds nuw i8, ptr %239, i64 1
  %243 = load i8, ptr %239, align 1, !tbaa !8
  %244 = zext i8 %243 to i64
  %245 = add i64 %240, %244
  %246 = add i64 %245, %238
  %247 = add nuw nsw i64 %241, 1
  %248 = icmp eq i64 %247, %236
  br i1 %248, label %.loopexit9.loopexit, label %.preheader8, !llvm.loop !19

.loopexit9.loopexit:                              ; preds = %.preheader8
  %249 = and i64 %233, 12
  %scevgep = getelementptr i8, ptr %234, i64 %236
  br label %.loopexit9

.loopexit9:                                       ; preds = %.loopexit9.loopexit, %231
  %250 = phi i64 [ poison, %231 ], [ %245, %.loopexit9.loopexit ]
  %251 = phi i64 [ poison, %231 ], [ %246, %.loopexit9.loopexit ]
  %252 = phi i64 [ %232, %231 ], [ %246, %.loopexit9.loopexit ]
  %253 = phi i64 [ %233, %231 ], [ %249, %.loopexit9.loopexit ]
  %254 = phi ptr [ %234, %231 ], [ %scevgep, %.loopexit9.loopexit ]
  %255 = phi i64 [ %235, %231 ], [ %245, %.loopexit9.loopexit ]
  %256 = icmp samesign ult i64 %233, 4
  br i1 %256, label %.loopexit7, label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.loopexit9
  %257 = add nsw i64 %253, -4
  %258 = and i64 %257, 4
  %lcmp.mod.not.not = icmp eq i64 %258, 0
  br i1 %lcmp.mod.not.not, label %.preheader6.prol, label %.preheader6.prol.loopexit

.preheader6.prol:                                 ; preds = %.preheader6.preheader
  %259 = getelementptr inbounds nuw i8, ptr %254, i64 1
  %260 = load i8, ptr %254, align 1, !tbaa !8
  %261 = zext i8 %260 to i64
  %262 = add i64 %255, %261
  %263 = add i64 %262, %252
  %264 = getelementptr inbounds nuw i8, ptr %254, i64 2
  %265 = load i8, ptr %259, align 1, !tbaa !8
  %266 = zext i8 %265 to i64
  %267 = add i64 %262, %266
  %268 = add i64 %263, %267
  %269 = getelementptr inbounds nuw i8, ptr %254, i64 3
  %270 = load i8, ptr %264, align 1, !tbaa !8
  %271 = zext i8 %270 to i64
  %272 = add i64 %267, %271
  %273 = add i64 %268, %272
  %274 = add nsw i64 %253, -4
  %275 = getelementptr inbounds nuw i8, ptr %254, i64 4
  %276 = load i8, ptr %269, align 1, !tbaa !8
  %277 = zext i8 %276 to i64
  %278 = add i64 %272, %277
  %279 = add i64 %273, %278
  br label %.preheader6.prol.loopexit

.preheader6.prol.loopexit:                        ; preds = %.preheader6.prol, %.preheader6.preheader
  %.lcssa97.unr = phi i64 [ poison, %.preheader6.preheader ], [ %278, %.preheader6.prol ]
  %.lcssa96.unr = phi i64 [ poison, %.preheader6.preheader ], [ %279, %.preheader6.prol ]
  %.unr = phi i64 [ %252, %.preheader6.preheader ], [ %279, %.preheader6.prol ]
  %.unr114 = phi i64 [ %253, %.preheader6.preheader ], [ %274, %.preheader6.prol ]
  %.unr115 = phi ptr [ %254, %.preheader6.preheader ], [ %275, %.preheader6.prol ]
  %.unr116 = phi i64 [ %255, %.preheader6.preheader ], [ %278, %.preheader6.prol ]
  %280 = icmp ult i64 %257, 4
  br i1 %280, label %.loopexit7, label %.preheader6

281:                                              ; preds = %283
  %282 = icmp eq i64 %288, 0
  br i1 %282, label %.loopexit7, label %231

283:                                              ; preds = %.preheader100, %283
  %284 = phi i64 [ %367, %283 ], [ %.ph, %.preheader100 ]
  %285 = phi i64 [ %288, %283 ], [ %.ph101, %.preheader100 ]
  %286 = phi ptr [ %368, %283 ], [ %.ph102, %.preheader100 ]
  %287 = phi i64 [ %366, %283 ], [ %.ph103, %.preheader100 ]
  %288 = add nsw i64 %285, -16
  %289 = load i8, ptr %286, align 1, !tbaa !8
  %290 = zext i8 %289 to i64
  %291 = add i64 %287, %290
  %292 = add i64 %291, %284
  %293 = getelementptr inbounds nuw i8, ptr %286, i64 1
  %294 = load i8, ptr %293, align 1, !tbaa !8
  %295 = zext i8 %294 to i64
  %296 = add i64 %291, %295
  %297 = add i64 %292, %296
  %298 = getelementptr inbounds nuw i8, ptr %286, i64 2
  %299 = load i8, ptr %298, align 1, !tbaa !8
  %300 = zext i8 %299 to i64
  %301 = add i64 %296, %300
  %302 = add i64 %297, %301
  %303 = getelementptr inbounds nuw i8, ptr %286, i64 3
  %304 = load i8, ptr %303, align 1, !tbaa !8
  %305 = zext i8 %304 to i64
  %306 = add i64 %301, %305
  %307 = add i64 %302, %306
  %308 = getelementptr inbounds nuw i8, ptr %286, i64 4
  %309 = load i8, ptr %308, align 1, !tbaa !8
  %310 = zext i8 %309 to i64
  %311 = add i64 %306, %310
  %312 = add i64 %307, %311
  %313 = getelementptr inbounds nuw i8, ptr %286, i64 5
  %314 = load i8, ptr %313, align 1, !tbaa !8
  %315 = zext i8 %314 to i64
  %316 = add i64 %311, %315
  %317 = add i64 %312, %316
  %318 = getelementptr inbounds nuw i8, ptr %286, i64 6
  %319 = load i8, ptr %318, align 1, !tbaa !8
  %320 = zext i8 %319 to i64
  %321 = add i64 %316, %320
  %322 = add i64 %317, %321
  %323 = getelementptr inbounds nuw i8, ptr %286, i64 7
  %324 = load i8, ptr %323, align 1, !tbaa !8
  %325 = zext i8 %324 to i64
  %326 = add i64 %321, %325
  %327 = add i64 %322, %326
  %328 = getelementptr inbounds nuw i8, ptr %286, i64 8
  %329 = load i8, ptr %328, align 1, !tbaa !8
  %330 = zext i8 %329 to i64
  %331 = add i64 %326, %330
  %332 = add i64 %327, %331
  %333 = getelementptr inbounds nuw i8, ptr %286, i64 9
  %334 = load i8, ptr %333, align 1, !tbaa !8
  %335 = zext i8 %334 to i64
  %336 = add i64 %331, %335
  %337 = add i64 %332, %336
  %338 = getelementptr inbounds nuw i8, ptr %286, i64 10
  %339 = load i8, ptr %338, align 1, !tbaa !8
  %340 = zext i8 %339 to i64
  %341 = add i64 %336, %340
  %342 = add i64 %337, %341
  %343 = getelementptr inbounds nuw i8, ptr %286, i64 11
  %344 = load i8, ptr %343, align 1, !tbaa !8
  %345 = zext i8 %344 to i64
  %346 = add i64 %341, %345
  %347 = add i64 %342, %346
  %348 = getelementptr inbounds nuw i8, ptr %286, i64 12
  %349 = load i8, ptr %348, align 1, !tbaa !8
  %350 = zext i8 %349 to i64
  %351 = add i64 %346, %350
  %352 = add i64 %347, %351
  %353 = getelementptr inbounds nuw i8, ptr %286, i64 13
  %354 = load i8, ptr %353, align 1, !tbaa !8
  %355 = zext i8 %354 to i64
  %356 = add i64 %351, %355
  %357 = add i64 %352, %356
  %358 = getelementptr inbounds nuw i8, ptr %286, i64 14
  %359 = load i8, ptr %358, align 1, !tbaa !8
  %360 = zext i8 %359 to i64
  %361 = add i64 %356, %360
  %362 = add i64 %357, %361
  %363 = getelementptr inbounds nuw i8, ptr %286, i64 15
  %364 = load i8, ptr %363, align 1, !tbaa !8
  %365 = zext i8 %364 to i64
  %366 = add i64 %361, %365
  %367 = add i64 %362, %366
  %368 = getelementptr inbounds nuw i8, ptr %286, i64 16
  %369 = icmp ugt i64 %288, 15
  br i1 %369, label %283, label %281, !llvm.loop !16

.preheader6:                                      ; preds = %.preheader6.prol.loopexit, %.preheader6
  %370 = phi i64 [ %414, %.preheader6 ], [ %.unr, %.preheader6.prol.loopexit ]
  %371 = phi i64 [ %409, %.preheader6 ], [ %.unr114, %.preheader6.prol.loopexit ]
  %372 = phi ptr [ %410, %.preheader6 ], [ %.unr115, %.preheader6.prol.loopexit ]
  %373 = phi i64 [ %413, %.preheader6 ], [ %.unr116, %.preheader6.prol.loopexit ]
  %374 = getelementptr inbounds nuw i8, ptr %372, i64 1
  %375 = load i8, ptr %372, align 1, !tbaa !8
  %376 = zext i8 %375 to i64
  %377 = add i64 %373, %376
  %378 = add i64 %377, %370
  %379 = getelementptr inbounds nuw i8, ptr %372, i64 2
  %380 = load i8, ptr %374, align 1, !tbaa !8
  %381 = zext i8 %380 to i64
  %382 = add i64 %377, %381
  %383 = add i64 %378, %382
  %384 = getelementptr inbounds nuw i8, ptr %372, i64 3
  %385 = load i8, ptr %379, align 1, !tbaa !8
  %386 = zext i8 %385 to i64
  %387 = add i64 %382, %386
  %388 = add i64 %383, %387
  %389 = getelementptr inbounds nuw i8, ptr %372, i64 4
  %390 = load i8, ptr %384, align 1, !tbaa !8
  %391 = zext i8 %390 to i64
  %392 = add i64 %387, %391
  %393 = add i64 %388, %392
  %394 = getelementptr inbounds nuw i8, ptr %372, i64 5
  %395 = load i8, ptr %389, align 1, !tbaa !8
  %396 = zext i8 %395 to i64
  %397 = add i64 %392, %396
  %398 = add i64 %397, %393
  %399 = getelementptr inbounds nuw i8, ptr %372, i64 6
  %400 = load i8, ptr %394, align 1, !tbaa !8
  %401 = zext i8 %400 to i64
  %402 = add i64 %397, %401
  %403 = add i64 %398, %402
  %404 = getelementptr inbounds nuw i8, ptr %372, i64 7
  %405 = load i8, ptr %399, align 1, !tbaa !8
  %406 = zext i8 %405 to i64
  %407 = add i64 %402, %406
  %408 = add i64 %403, %407
  %409 = add i64 %371, -8
  %410 = getelementptr inbounds nuw i8, ptr %372, i64 8
  %411 = load i8, ptr %404, align 1, !tbaa !8
  %412 = zext i8 %411 to i64
  %413 = add i64 %407, %412
  %414 = add i64 %408, %413
  %415 = icmp eq i64 %409, 0
  br i1 %415, label %.loopexit7, label %.preheader6, !llvm.loop !17

.loopexit7:                                       ; preds = %.preheader6.prol.loopexit, %.preheader6, %281, %.loopexit9
  %416 = phi i64 [ %366, %281 ], [ %250, %.loopexit9 ], [ %.lcssa97.unr, %.preheader6.prol.loopexit ], [ %413, %.preheader6 ]
  %417 = phi i64 [ %367, %281 ], [ %251, %.loopexit9 ], [ %.lcssa96.unr, %.preheader6.prol.loopexit ], [ %414, %.preheader6 ]
  %418 = urem i64 %416, 65521
  %419 = urem i64 %417, 65521
  br label %420

420:                                              ; preds = %.loopexit7, %227
  %421 = phi i64 [ %418, %.loopexit7 ], [ %224, %227 ]
  %422 = phi i64 [ %419, %.loopexit7 ], [ %225, %227 ]
  %423 = shl nuw nsw i64 %422, 16
  %424 = or disjoint i64 %423, %421
  br label %425

425:                                              ; preds = %420, %.loopexit, %22, %9
  %426 = phi i64 [ %21, %9 ], [ %424, %420 ], [ %129, %.loopexit ], [ 1, %22 ]
  ret i64 %426
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @adler32_combine(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp slt i64 %2, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = urem i64 %2, 65521
  %7 = and i64 %0, 65535
  %8 = mul nuw nsw i64 %6, %7
  %9 = trunc nuw i64 %8 to i32
  %10 = urem i32 %9, 65521
  %11 = zext nneg i32 %10 to i64
  %12 = and i64 %1, 65535
  %13 = add nuw nsw i64 %7, 65520
  %14 = add nuw nsw i64 %13, %12
  %15 = lshr i64 %0, 16
  %16 = and i64 %15, 65535
  %17 = lshr i64 %1, 16
  %18 = and i64 %17, 65535
  %19 = add nuw nsw i64 %16, 65521
  %20 = add nuw nsw i64 %19, %18
  %21 = sub nuw nsw i64 %20, %6
  %22 = add nuw nsw i64 %21, %11
  %23 = icmp samesign ugt i64 %14, 65520
  %24 = add nsw i64 %14, -65521
  %25 = select i1 %23, i64 %24, i64 65520
  %26 = icmp samesign ugt i64 %25, 65520
  %27 = add nsw i64 %25, -65521
  %28 = select i1 %26, i64 %27, i64 %25
  %29 = icmp samesign ugt i64 %22, 131041
  %30 = add nsw i64 %22, -131042
  %31 = select i1 %29, i64 %30, i64 %22
  %32 = icmp ugt i64 %31, 65520
  %33 = shl nsw i64 %31, 16
  %34 = add nsw i64 %33, -4293984256
  %35 = select i1 %32, i64 %34, i64 %33
  %36 = or i64 %35, %28
  br label %37

37:                                               ; preds = %5, %3
  %38 = phi i64 [ %36, %5 ], [ 4294967295, %3 ]
  ret i64 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @adler32_combine64(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp slt i64 %2, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = urem i64 %2, 65521
  %7 = and i64 %0, 65535
  %8 = mul nuw nsw i64 %6, %7
  %9 = trunc nuw i64 %8 to i32
  %10 = urem i32 %9, 65521
  %11 = zext nneg i32 %10 to i64
  %12 = and i64 %1, 65535
  %13 = add nuw nsw i64 %7, 65520
  %14 = add nuw nsw i64 %13, %12
  %15 = lshr i64 %0, 16
  %16 = and i64 %15, 65535
  %17 = lshr i64 %1, 16
  %18 = and i64 %17, 65535
  %19 = add nuw nsw i64 %16, 65521
  %20 = add nuw nsw i64 %19, %18
  %21 = sub nuw nsw i64 %20, %6
  %22 = add nuw nsw i64 %21, %11
  %23 = icmp samesign ugt i64 %14, 65520
  %24 = add nsw i64 %14, -65521
  %25 = select i1 %23, i64 %24, i64 65520
  %26 = icmp samesign ugt i64 %25, 65520
  %27 = add nsw i64 %25, -65521
  %28 = select i1 %26, i64 %27, i64 %25
  %29 = icmp samesign ugt i64 %22, 131041
  %30 = add nsw i64 %22, -131042
  %31 = select i1 %29, i64 %30, i64 %22
  %32 = icmp ugt i64 %31, 65520
  %33 = shl nsw i64 %31, 16
  %34 = add nsw i64 %33, -4293984256
  %35 = select i1 %32, i64 %34, i64 %33
  %36 = or i64 %35, %28
  br label %37

37:                                               ; preds = %5, %3
  %38 = phi i64 [ %36, %5 ], [ 4294967295, %3 ]
  ret i64 %38
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
