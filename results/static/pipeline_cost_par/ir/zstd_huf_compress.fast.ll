; ModuleID = 'results/static/pipeline_cost_par/ir/zstd_huf_compress.fast.mid.ll'
source_filename = "/mydata/zstd/lib/compress/huf_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @HUF_readCTableHeader(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  ret i64 %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_writeCTable_wksp(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 {
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %10 = ptrtoint ptr %5 to i64
  %11 = sub i64 0, %10
  %12 = and i64 %11, 3
  %13 = icmp ult i64 %6, %12
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 %12
  %15 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %12)
  %16 = select i1 %13, ptr null, ptr %14
  %17 = icmp ult i64 %15, 748
  br i1 %17, label %.loopexit, label %18

18:                                               ; preds = %7
  %19 = icmp ugt i32 %3, 255
  br i1 %19, label %.loopexit, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds nuw i8, ptr %16, i64 480
  store i8 0, ptr %21, align 4, !tbaa !5
  %22 = add i32 %4, 1
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %.loopexit18

24:                                               ; preds = %20
  %25 = zext i32 %22 to i64
  %26 = add nsw i64 %25, -1
  %27 = icmp ult i32 %22, 5
  br i1 %27, label %.preheader37, label %28

.preheader37:                                     ; preds = %70, %46, %24
  %.ph38 = phi i64 [ %71, %70 ], [ %47, %46 ], [ 1, %24 ]
  br label %81

28:                                               ; preds = %24
  %29 = icmp ult i32 %22, 17
  br i1 %29, label %50, label %30

30:                                               ; preds = %28
  %31 = and i64 %26, -16
  %32 = insertelement <16 x i32> poison, i32 %22, i64 0
  %33 = shufflevector <16 x i32> %32, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %34

34:                                               ; preds = %34, %30
  %35 = phi i64 [ 0, %30 ], [ %41, %34 ]
  %36 = phi <16 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>, %30 ], [ %42, %34 ]
  %37 = sub <16 x i32> %33, %36
  %38 = trunc <16 x i32> %37 to <16 x i8>
  %39 = getelementptr inbounds nuw i8, ptr %21, i64 %35
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 1
  store <16 x i8> %38, ptr %40, align 1, !tbaa !5
  %41 = add nuw nsw i64 %35, 16
  %42 = add <16 x i32> %36, splat (i32 16)
  %43 = icmp eq i64 %41, %31
  br i1 %43, label %44, label %34, !llvm.loop !8

44:                                               ; preds = %34
  %45 = icmp eq i64 %26, %31
  br i1 %45, label %.loopexit18, label %46

46:                                               ; preds = %44
  %47 = or disjoint i64 %31, 1
  %48 = and i64 %26, 12
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %.preheader37, label %50

50:                                               ; preds = %46, %28
  %51 = phi i64 [ %31, %46 ], [ 0, %28 ]
  %52 = phi i64 [ %47, %46 ], [ 1, %28 ]
  %53 = and i64 %26, -4
  %54 = insertelement <4 x i32> poison, i32 %22, i64 0
  %55 = shufflevector <4 x i32> %54, <4 x i32> poison, <4 x i32> zeroinitializer
  %56 = trunc nuw i64 %52 to i32
  %57 = insertelement <4 x i32> poison, i32 %56, i64 0
  %58 = shufflevector <4 x i32> %57, <4 x i32> poison, <4 x i32> zeroinitializer
  %59 = add <4 x i32> %58, <i32 0, i32 1, i32 2, i32 3>
  br label %60

60:                                               ; preds = %60, %50
  %61 = phi i64 [ %51, %50 ], [ %67, %60 ]
  %62 = phi <4 x i32> [ %59, %50 ], [ %68, %60 ]
  %63 = sub <4 x i32> %55, %62
  %64 = trunc <4 x i32> %63 to <4 x i8>
  %65 = getelementptr inbounds nuw i8, ptr %21, i64 %61
  %66 = getelementptr inbounds nuw i8, ptr %65, i64 1
  store <4 x i8> %64, ptr %66, align 1, !tbaa !5
  %67 = add nuw i64 %61, 4
  %68 = add <4 x i32> %62, splat (i32 4)
  %69 = icmp eq i64 %67, %53
  br i1 %69, label %70, label %60, !llvm.loop !12

70:                                               ; preds = %60
  %71 = or disjoint i64 %53, 1
  %72 = icmp eq i64 %26, %53
  br i1 %72, label %.loopexit18, label %.preheader37

.loopexit18:                                      ; preds = %81, %70, %44, %20
  %73 = icmp eq i32 %3, 0
  br i1 %73, label %.loopexit16, label %74

74:                                               ; preds = %.loopexit18
  %75 = getelementptr inbounds nuw i8, ptr %14, i64 493
  %76 = zext nneg i32 %3 to i64
  %77 = and i64 %76, 3
  %78 = icmp samesign ult i32 %3, 4
  br i1 %78, label %.loopexit17, label %79

79:                                               ; preds = %74
  %80 = and i64 %76, 252
  br label %89

81:                                               ; preds = %.preheader37, %81
  %82 = phi i64 [ %87, %81 ], [ %.ph38, %.preheader37 ]
  %83 = trunc i64 %82 to i32
  %84 = sub i32 %22, %83
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds nuw i8, ptr %21, i64 %82
  store i8 %85, ptr %86, align 1, !tbaa !5
  %87 = add nuw nsw i64 %82, 1
  %88 = icmp eq i64 %87, %25
  br i1 %88, label %.loopexit18, label %81, !llvm.loop !13

89:                                               ; preds = %89, %79
  %90 = phi i64 [ 0, %79 ], [ %118, %89 ]
  %91 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %90
  %92 = load i64, ptr %91, align 8, !tbaa !14
  %93 = and i64 %92, 255
  %94 = getelementptr inbounds nuw i8, ptr %21, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !5
  %96 = getelementptr inbounds nuw i8, ptr %75, i64 %90
  store i8 %95, ptr %96, align 1, !tbaa !5
  %97 = or disjoint i64 %90, 1
  %98 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %97
  %99 = load i64, ptr %98, align 8, !tbaa !14
  %100 = and i64 %99, 255
  %101 = getelementptr inbounds nuw i8, ptr %21, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !5
  %103 = getelementptr inbounds nuw i8, ptr %75, i64 %97
  store i8 %102, ptr %103, align 1, !tbaa !5
  %104 = or disjoint i64 %90, 2
  %105 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !14
  %107 = and i64 %106, 255
  %108 = getelementptr inbounds nuw i8, ptr %21, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !5
  %110 = getelementptr inbounds nuw i8, ptr %75, i64 %104
  store i8 %109, ptr %110, align 1, !tbaa !5
  %111 = or disjoint i64 %90, 3
  %112 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %111
  %113 = load i64, ptr %112, align 8, !tbaa !14
  %114 = and i64 %113, 255
  %115 = getelementptr inbounds nuw i8, ptr %21, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !5
  %117 = getelementptr inbounds nuw i8, ptr %75, i64 %111
  store i8 %116, ptr %117, align 1, !tbaa !5
  %118 = add nuw i64 %90, 4
  %119 = icmp eq i64 %118, %80
  br i1 %119, label %.loopexit17, label %89, !llvm.loop !16

.loopexit17:                                      ; preds = %89, %74
  %120 = phi i64 [ 0, %74 ], [ %80, %89 ]
  %121 = icmp eq i64 %77, 0
  br i1 %121, label %.loopexit16, label %.preheader

.preheader:                                       ; preds = %.loopexit17, %.preheader
  %122 = phi i64 [ %130, %.preheader ], [ %120, %.loopexit17 ]
  %123 = phi i64 [ %131, %.preheader ], [ 0, %.loopexit17 ]
  %124 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %122
  %125 = load i64, ptr %124, align 8, !tbaa !14
  %126 = and i64 %125, 255
  %127 = getelementptr inbounds nuw i8, ptr %21, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !5
  %129 = getelementptr inbounds nuw i8, ptr %75, i64 %122
  store i8 %128, ptr %129, align 1, !tbaa !5
  %130 = add nuw nsw i64 %122, 1
  %131 = add nuw nsw i64 %123, 1
  %132 = icmp eq i64 %131, %77
  br i1 %132, label %.loopexit16, label %.preheader, !llvm.loop !17

.loopexit16:                                      ; preds = %.preheader, %.loopexit17, %.loopexit18
  %133 = icmp eq i64 %1, 0
  br i1 %133, label %.loopexit, label %134

134:                                              ; preds = %.loopexit16
  %135 = getelementptr i8, ptr %0, i64 1
  %136 = add i64 %1, -1
  %137 = getelementptr i8, ptr %16, i64 493
  %138 = zext nneg i32 %3 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i32 12, ptr %8, align 4, !tbaa !19
  %139 = ptrtoint ptr %16 to i64
  %140 = sub i64 0, %139
  %141 = and i64 %140, 3
  %142 = getelementptr inbounds nuw i8, ptr %16, i64 %141
  %143 = icmp eq i64 %141, 0
  br i1 %143, label %144, label %173

144:                                              ; preds = %134
  %145 = icmp samesign ult i32 %3, 2
  br i1 %145, label %175, label %146

146:                                              ; preds = %144
  %147 = getelementptr inbounds nuw i8, ptr %142, i64 400
  %148 = call i32 @HIST_count_simple(ptr noundef nonnull %147, ptr noundef nonnull %8, ptr noundef nonnull %137, i64 noundef range(i64 0, 256) %138) #17
  %149 = icmp eq i32 %3, %148
  %150 = icmp eq i32 %148, 1
  %151 = or i1 %149, %150
  br i1 %151, label %175, label %152

152:                                              ; preds = %146
  %153 = load i32, ptr %8, align 4, !tbaa !19
  %154 = call i32 @FSE_optimalTableLog(i32 noundef 6, i64 noundef range(i64 0, 256) %138, i32 noundef %153) #17
  %155 = getelementptr inbounds nuw i8, ptr %142, i64 452
  %156 = load i32, ptr %8, align 4, !tbaa !19
  %157 = call i64 @FSE_normalizeCount(ptr noundef nonnull %155, i32 noundef %154, ptr noundef nonnull %147, i64 noundef range(i64 0, 256) %138, i32 noundef %156, i32 noundef 0) #17
  %158 = icmp ult i64 %157, -119
  br i1 %158, label %159, label %173

159:                                              ; preds = %152
  %160 = load i32, ptr %8, align 4, !tbaa !19
  %161 = call i64 @FSE_writeNCount(ptr noundef nonnull %135, i64 noundef range(i64 0, -1) %136, ptr noundef nonnull %155, i32 noundef %160, i32 noundef %154) #17
  %162 = icmp ult i64 %161, -119
  %163 = getelementptr inbounds nuw i8, ptr %135, i64 %161
  br i1 %162, label %164, label %173

164:                                              ; preds = %159
  %165 = load i32, ptr %8, align 4, !tbaa !19
  %166 = getelementptr inbounds nuw i8, ptr %142, i64 236
  %167 = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %142, ptr noundef nonnull %155, i32 noundef %165, i32 noundef %154, ptr noundef nonnull %166, i64 noundef 164) #17
  %168 = icmp ult i64 %167, -119
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = sub nsw i64 %136, %161
  %171 = call i64 @FSE_compress_usingCTable(ptr noundef nonnull %163, i64 noundef %170, ptr noundef nonnull %137, i64 noundef range(i64 0, 256) %138, ptr noundef nonnull %142) #17
  %172 = icmp ult i64 %171, -119
  br i1 %172, label %176, label %173

173:                                              ; preds = %169, %164, %159, %152, %134
  %174 = phi i64 [ %171, %169 ], [ -1, %134 ], [ %157, %152 ], [ %161, %159 ], [ %167, %164 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.loopexit

175:                                              ; preds = %146, %144
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %190

176:                                              ; preds = %169
  %177 = icmp eq i64 %171, 0
  %178 = add nuw nsw i64 %171, %161
  %179 = select i1 %177, i64 0, i64 %178
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %180 = icmp ult i64 %179, -119
  br i1 %180, label %181, label %.loopexit

181:                                              ; preds = %176
  %182 = icmp ugt i64 %179, 1
  %183 = lshr i32 %3, 1
  %184 = zext nneg i32 %183 to i64
  %185 = icmp ult i64 %179, %184
  %186 = and i1 %182, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = trunc nuw nsw i64 %179 to i8
  store i8 %188, ptr %0, align 1, !tbaa !5
  %189 = add nuw nsw i64 %179, 1
  br label %.loopexit

190:                                              ; preds = %181, %175
  %191 = icmp samesign ugt i32 %3, 128
  br i1 %191, label %.loopexit, label %192

192:                                              ; preds = %190
  %193 = add nuw nsw i32 %3, 1
  %194 = lshr i32 %193, 1
  %195 = add nuw nsw i32 %194, 1
  %196 = zext nneg i32 %195 to i64
  %197 = icmp ult i64 %1, %196
  br i1 %197, label %.loopexit, label %198

198:                                              ; preds = %192
  %199 = trunc nuw i32 %3 to i8
  %200 = add nuw i8 %199, 127
  store i8 %200, ptr %0, align 1, !tbaa !5
  %201 = getelementptr inbounds nuw i8, ptr %137, i64 %138
  store i8 0, ptr %201, align 1, !tbaa !5
  br i1 %73, label %.loopexit, label %202

202:                                              ; preds = %198
  %203 = add nsw i64 %138, -1
  %204 = lshr i64 %203, 1
  %205 = add nuw nsw i64 %204, 1
  %206 = icmp samesign ult i32 %3, 7
  br i1 %206, label %.preheader36, label %207

207:                                              ; preds = %202
  %208 = getelementptr i8, ptr %0, i64 %204
  %209 = getelementptr i8, ptr %208, i64 2
  %210 = and i64 %203, -2
  %211 = getelementptr i8, ptr %16, i64 %210
  %212 = getelementptr i8, ptr %211, i64 495
  %213 = icmp ult ptr %135, %212
  %214 = icmp ult ptr %137, %209
  %215 = and i1 %214, %213
  br i1 %215, label %.preheader36, label %216

216:                                              ; preds = %207
  %217 = icmp samesign ult i32 %3, 31
  br i1 %217, label %330, label %218

218:                                              ; preds = %216
  %219 = and i64 %205, 9223372036854775792
  br label %220

220:                                              ; preds = %220, %218
  %221 = phi i64 [ 0, %218 ], [ %322, %220 ]
  %222 = shl nuw i64 %221, 1
  %223 = getelementptr inbounds nuw i8, ptr %137, i64 %222
  %224 = getelementptr inbounds nuw i8, ptr %223, i64 2
  %225 = getelementptr inbounds nuw i8, ptr %223, i64 4
  %226 = getelementptr inbounds nuw i8, ptr %223, i64 6
  %227 = getelementptr inbounds nuw i8, ptr %223, i64 8
  %228 = getelementptr inbounds nuw i8, ptr %223, i64 10
  %229 = getelementptr inbounds nuw i8, ptr %223, i64 12
  %230 = getelementptr inbounds nuw i8, ptr %223, i64 14
  %231 = getelementptr inbounds nuw i8, ptr %223, i64 16
  %232 = getelementptr inbounds nuw i8, ptr %223, i64 18
  %233 = getelementptr inbounds nuw i8, ptr %223, i64 20
  %234 = getelementptr inbounds nuw i8, ptr %223, i64 22
  %235 = getelementptr inbounds nuw i8, ptr %223, i64 24
  %236 = getelementptr inbounds nuw i8, ptr %223, i64 26
  %237 = getelementptr inbounds nuw i8, ptr %223, i64 28
  %238 = getelementptr inbounds nuw i8, ptr %223, i64 30
  %239 = load i8, ptr %223, align 1, !tbaa !5, !alias.scope !21
  %240 = load i8, ptr %224, align 1, !tbaa !5, !alias.scope !21
  %241 = load i8, ptr %225, align 1, !tbaa !5, !alias.scope !21
  %242 = load i8, ptr %226, align 1, !tbaa !5, !alias.scope !21
  %243 = load i8, ptr %227, align 1, !tbaa !5, !alias.scope !21
  %244 = load i8, ptr %228, align 1, !tbaa !5, !alias.scope !21
  %245 = load i8, ptr %229, align 1, !tbaa !5, !alias.scope !21
  %246 = load i8, ptr %230, align 1, !tbaa !5, !alias.scope !21
  %247 = load i8, ptr %231, align 1, !tbaa !5, !alias.scope !21
  %248 = load i8, ptr %232, align 1, !tbaa !5, !alias.scope !21
  %249 = load i8, ptr %233, align 1, !tbaa !5, !alias.scope !21
  %250 = load i8, ptr %234, align 1, !tbaa !5, !alias.scope !21
  %251 = load i8, ptr %235, align 1, !tbaa !5, !alias.scope !21
  %252 = load i8, ptr %236, align 1, !tbaa !5, !alias.scope !21
  %253 = load i8, ptr %237, align 1, !tbaa !5, !alias.scope !21
  %254 = load i8, ptr %238, align 1, !tbaa !5, !alias.scope !21
  %255 = insertelement <16 x i8> poison, i8 %239, i64 0
  %256 = insertelement <16 x i8> %255, i8 %240, i64 1
  %257 = insertelement <16 x i8> %256, i8 %241, i64 2
  %258 = insertelement <16 x i8> %257, i8 %242, i64 3
  %259 = insertelement <16 x i8> %258, i8 %243, i64 4
  %260 = insertelement <16 x i8> %259, i8 %244, i64 5
  %261 = insertelement <16 x i8> %260, i8 %245, i64 6
  %262 = insertelement <16 x i8> %261, i8 %246, i64 7
  %263 = insertelement <16 x i8> %262, i8 %247, i64 8
  %264 = insertelement <16 x i8> %263, i8 %248, i64 9
  %265 = insertelement <16 x i8> %264, i8 %249, i64 10
  %266 = insertelement <16 x i8> %265, i8 %250, i64 11
  %267 = insertelement <16 x i8> %266, i8 %251, i64 12
  %268 = insertelement <16 x i8> %267, i8 %252, i64 13
  %269 = insertelement <16 x i8> %268, i8 %253, i64 14
  %270 = insertelement <16 x i8> %269, i8 %254, i64 15
  %271 = shl <16 x i8> %270, splat (i8 4)
  %272 = getelementptr inbounds nuw i8, ptr %223, i64 1
  %273 = getelementptr inbounds nuw i8, ptr %223, i64 3
  %274 = getelementptr inbounds nuw i8, ptr %223, i64 5
  %275 = getelementptr inbounds nuw i8, ptr %223, i64 7
  %276 = getelementptr inbounds nuw i8, ptr %223, i64 9
  %277 = getelementptr inbounds nuw i8, ptr %223, i64 11
  %278 = getelementptr inbounds nuw i8, ptr %223, i64 13
  %279 = getelementptr inbounds nuw i8, ptr %223, i64 15
  %280 = getelementptr inbounds nuw i8, ptr %223, i64 17
  %281 = getelementptr inbounds nuw i8, ptr %223, i64 19
  %282 = getelementptr inbounds nuw i8, ptr %223, i64 21
  %283 = getelementptr inbounds nuw i8, ptr %223, i64 23
  %284 = getelementptr inbounds nuw i8, ptr %223, i64 25
  %285 = getelementptr inbounds nuw i8, ptr %223, i64 27
  %286 = getelementptr inbounds nuw i8, ptr %223, i64 29
  %287 = getelementptr inbounds nuw i8, ptr %223, i64 31
  %288 = load i8, ptr %272, align 1, !tbaa !5, !alias.scope !21
  %289 = load i8, ptr %273, align 1, !tbaa !5, !alias.scope !21
  %290 = load i8, ptr %274, align 1, !tbaa !5, !alias.scope !21
  %291 = load i8, ptr %275, align 1, !tbaa !5, !alias.scope !21
  %292 = load i8, ptr %276, align 1, !tbaa !5, !alias.scope !21
  %293 = load i8, ptr %277, align 1, !tbaa !5, !alias.scope !21
  %294 = load i8, ptr %278, align 1, !tbaa !5, !alias.scope !21
  %295 = load i8, ptr %279, align 1, !tbaa !5, !alias.scope !21
  %296 = load i8, ptr %280, align 1, !tbaa !5, !alias.scope !21
  %297 = load i8, ptr %281, align 1, !tbaa !5, !alias.scope !21
  %298 = load i8, ptr %282, align 1, !tbaa !5, !alias.scope !21
  %299 = load i8, ptr %283, align 1, !tbaa !5, !alias.scope !21
  %300 = load i8, ptr %284, align 1, !tbaa !5, !alias.scope !21
  %301 = load i8, ptr %285, align 1, !tbaa !5, !alias.scope !21
  %302 = load i8, ptr %286, align 1, !tbaa !5, !alias.scope !21
  %303 = load i8, ptr %287, align 1, !tbaa !5, !alias.scope !21
  %304 = insertelement <16 x i8> poison, i8 %288, i64 0
  %305 = insertelement <16 x i8> %304, i8 %289, i64 1
  %306 = insertelement <16 x i8> %305, i8 %290, i64 2
  %307 = insertelement <16 x i8> %306, i8 %291, i64 3
  %308 = insertelement <16 x i8> %307, i8 %292, i64 4
  %309 = insertelement <16 x i8> %308, i8 %293, i64 5
  %310 = insertelement <16 x i8> %309, i8 %294, i64 6
  %311 = insertelement <16 x i8> %310, i8 %295, i64 7
  %312 = insertelement <16 x i8> %311, i8 %296, i64 8
  %313 = insertelement <16 x i8> %312, i8 %297, i64 9
  %314 = insertelement <16 x i8> %313, i8 %298, i64 10
  %315 = insertelement <16 x i8> %314, i8 %299, i64 11
  %316 = insertelement <16 x i8> %315, i8 %300, i64 12
  %317 = insertelement <16 x i8> %316, i8 %301, i64 13
  %318 = insertelement <16 x i8> %317, i8 %302, i64 14
  %319 = insertelement <16 x i8> %318, i8 %303, i64 15
  %320 = add <16 x i8> %319, %271
  %321 = getelementptr inbounds nuw i8, ptr %135, i64 %221
  store <16 x i8> %320, ptr %321, align 1, !tbaa !5, !alias.scope !24, !noalias !21
  %322 = add nuw nsw i64 %221, 16
  %323 = icmp eq i64 %322, %219
  br i1 %323, label %324, label %220, !llvm.loop !26

324:                                              ; preds = %220
  %325 = icmp eq i64 %205, %219
  br i1 %325, label %.loopexit, label %326

326:                                              ; preds = %324
  %327 = shl nuw nsw i64 %219, 1
  %328 = and i64 %205, 12
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %.preheader36, label %330

330:                                              ; preds = %326, %216
  %331 = phi i64 [ %219, %326 ], [ 0, %216 ]
  %332 = and i64 %205, 9223372036854775804
  br label %333

333:                                              ; preds = %333, %330
  %334 = phi i64 [ %331, %330 ], [ %364, %333 ]
  %335 = shl i64 %334, 1
  %336 = getelementptr inbounds nuw i8, ptr %137, i64 %335
  %337 = getelementptr inbounds nuw i8, ptr %336, i64 2
  %338 = getelementptr inbounds nuw i8, ptr %336, i64 4
  %339 = getelementptr inbounds nuw i8, ptr %336, i64 6
  %340 = load i8, ptr %336, align 1, !tbaa !5, !alias.scope !21
  %341 = load i8, ptr %337, align 1, !tbaa !5, !alias.scope !21
  %342 = load i8, ptr %338, align 1, !tbaa !5, !alias.scope !21
  %343 = load i8, ptr %339, align 1, !tbaa !5, !alias.scope !21
  %344 = insertelement <4 x i8> poison, i8 %340, i64 0
  %345 = insertelement <4 x i8> %344, i8 %341, i64 1
  %346 = insertelement <4 x i8> %345, i8 %342, i64 2
  %347 = insertelement <4 x i8> %346, i8 %343, i64 3
  %348 = shl <4 x i8> %347, splat (i8 4)
  %349 = getelementptr inbounds nuw i8, ptr %336, i64 1
  %350 = getelementptr inbounds nuw i8, ptr %336, i64 3
  %351 = getelementptr inbounds nuw i8, ptr %336, i64 5
  %352 = getelementptr inbounds nuw i8, ptr %336, i64 7
  %353 = load i8, ptr %349, align 1, !tbaa !5, !alias.scope !21
  %354 = load i8, ptr %350, align 1, !tbaa !5, !alias.scope !21
  %355 = load i8, ptr %351, align 1, !tbaa !5, !alias.scope !21
  %356 = load i8, ptr %352, align 1, !tbaa !5, !alias.scope !21
  %357 = insertelement <4 x i8> poison, i8 %353, i64 0
  %358 = insertelement <4 x i8> %357, i8 %354, i64 1
  %359 = insertelement <4 x i8> %358, i8 %355, i64 2
  %360 = insertelement <4 x i8> %359, i8 %356, i64 3
  %361 = add <4 x i8> %360, %348
  %362 = and i64 %334, 9223372036854775804
  %363 = getelementptr inbounds nuw i8, ptr %135, i64 %362
  store <4 x i8> %361, ptr %363, align 1, !tbaa !5, !alias.scope !24, !noalias !21
  %364 = add nuw i64 %334, 4
  %365 = icmp eq i64 %364, %332
  br i1 %365, label %366, label %333, !llvm.loop !27

366:                                              ; preds = %333
  %367 = shl nuw nsw i64 %332, 1
  %368 = icmp eq i64 %205, %332
  br i1 %368, label %.loopexit, label %.preheader36

.preheader36:                                     ; preds = %366, %326, %207, %202
  %.ph = phi i64 [ %367, %366 ], [ %327, %326 ], [ 0, %207 ], [ 0, %202 ]
  br label %369

369:                                              ; preds = %.preheader36, %369
  %370 = phi i64 [ %379, %369 ], [ %.ph, %.preheader36 ]
  %371 = getelementptr inbounds nuw i8, ptr %137, i64 %370
  %372 = load i8, ptr %371, align 1, !tbaa !5
  %373 = shl i8 %372, 4
  %374 = getelementptr inbounds nuw i8, ptr %371, i64 1
  %375 = load i8, ptr %374, align 1, !tbaa !5
  %376 = add i8 %373, %375
  %377 = lshr exact i64 %370, 1
  %378 = getelementptr inbounds nuw i8, ptr %135, i64 %377
  store i8 %376, ptr %378, align 1, !tbaa !5
  %379 = add nuw nsw i64 %370, 2
  %380 = icmp samesign ult i64 %379, %138
  br i1 %380, label %369, label %.loopexit, !llvm.loop !28

.loopexit:                                        ; preds = %369, %366, %324, %198, %192, %190, %187, %176, %173, %.loopexit16, %18, %7
  %381 = phi i64 [ -1, %7 ], [ -46, %18 ], [ -70, %.loopexit16 ], [ -1, %190 ], [ -70, %192 ], [ %174, %173 ], [ %178, %176 ], [ %189, %187 ], [ %196, %198 ], [ %196, %366 ], [ %196, %324 ], [ %196, %369 ]
  ret i64 %381
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_readCTable(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef writeonly captures(none) %4) local_unnamed_addr #2 {
  %6 = alloca [256 x i8], align 16
  %7 = alloca [13 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [14 x i16], align 16
  %11 = alloca [14 x i16], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i32 0, ptr %8, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 0, ptr %9, align 4, !tbaa !19
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = call i64 @HUF_readStats(ptr noundef nonnull %6, i64 noundef 256, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %2, i64 noundef %3) #17
  %14 = icmp ult i64 %13, -119
  br i1 %14, label %15, label %270

15:                                               ; preds = %5
  %16 = load i32, ptr %7, align 16, !tbaa !19
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, ptr %4, align 4, !tbaa !19
  %19 = load i32, ptr %8, align 4, !tbaa !19
  %20 = icmp ugt i32 %19, 12
  br i1 %20, label %270, label %21

21:                                               ; preds = %15
  %22 = load i32, ptr %9, align 4, !tbaa !19
  %23 = load i32, ptr %1, align 4, !tbaa !19
  %24 = add i32 %23, 1
  %25 = icmp ugt i32 %22, %24
  br i1 %25, label %270, label %26

26:                                               ; preds = %21
  %27 = add i32 %22, -1
  store i32 %27, ptr %1, align 4, !tbaa !19
  %28 = trunc nuw nsw i32 %19 to i8
  %29 = trunc i32 %27 to i8
  store i8 %28, ptr %0, align 8
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %31, i8 0, i64 6, i1 false)
  %32 = icmp eq i32 %19, 0
  %33 = icmp ult i32 %19, 2
  br i1 %33, label %.loopexit8, label %34

34:                                               ; preds = %26
  %35 = and i32 %19, 14
  %36 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %37 = load i32, ptr %36, align 4, !tbaa !19
  store i32 0, ptr %36, align 4, !tbaa !19
  %38 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %39 = load i32, ptr %38, align 8, !tbaa !19
  store i32 %37, ptr %38, align 8, !tbaa !19
  %40 = icmp eq i32 %35, 2
  br i1 %40, label %.loopexit8, label %72

.loopexit8:                                       ; preds = %34, %72, %82, %92, %102, %112, %26
  %41 = icmp eq i32 %22, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %.loopexit8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  br label %193

43:                                               ; preds = %.loopexit8
  %44 = add nuw nsw i8 %28, 1
  %45 = zext i32 %22 to i64
  %46 = icmp ult i32 %22, 4
  br i1 %46, label %.preheader, label %47

.preheader:                                       ; preds = %69, %43
  %.ph = phi i64 [ %48, %69 ], [ 0, %43 ]
  br label %120

47:                                               ; preds = %43
  %48 = and i64 %45, 4294967292
  %49 = insertelement <2 x i8> poison, i8 %44, i64 0
  %50 = shufflevector <2 x i8> %49, <2 x i8> poison, <2 x i32> zeroinitializer
  br label %51

51:                                               ; preds = %51, %47
  %52 = phi i64 [ 0, %47 ], [ %67, %51 ]
  %53 = getelementptr inbounds nuw i8, ptr %6, i64 %52
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 2
  %55 = load <2 x i8>, ptr %53, align 4, !tbaa !5
  %56 = load <2 x i8>, ptr %54, align 2, !tbaa !5
  %57 = icmp eq <2 x i8> %55, zeroinitializer
  %58 = icmp eq <2 x i8> %56, zeroinitializer
  %59 = sub <2 x i8> %50, %55
  %60 = sub <2 x i8> %50, %56
  %61 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %52
  %62 = select <2 x i1> %57, <2 x i8> zeroinitializer, <2 x i8> %59
  %63 = select <2 x i1> %58, <2 x i8> zeroinitializer, <2 x i8> %60
  %64 = zext <2 x i8> %62 to <2 x i64>
  %65 = zext <2 x i8> %63 to <2 x i64>
  %66 = getelementptr inbounds nuw i8, ptr %61, i64 16
  store <2 x i64> %64, ptr %61, align 8, !tbaa !14
  store <2 x i64> %65, ptr %66, align 8, !tbaa !14
  %67 = add nuw nsw i64 %52, 4
  %68 = icmp eq i64 %67, %48
  br i1 %68, label %69, label %51, !llvm.loop !29

69:                                               ; preds = %51
  %70 = icmp eq i64 %48, %45
  br i1 %70, label %.thread, label %.preheader

.thread:                                          ; preds = %69
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  %71 = and i64 %45, 1
  br label %134

72:                                               ; preds = %34
  %73 = shl i32 %39, 1
  %74 = add i32 %73, %37
  %75 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %76 = load i32, ptr %75, align 4, !tbaa !19
  %77 = shl i32 %76, 2
  %78 = add i32 %77, %74
  store i32 %74, ptr %75, align 4, !tbaa !19
  %79 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %80 = load i32, ptr %79, align 16, !tbaa !19
  store i32 %78, ptr %79, align 16, !tbaa !19
  %81 = icmp eq i32 %35, 4
  br i1 %81, label %.loopexit8, label %82

82:                                               ; preds = %72
  %83 = shl i32 %80, 3
  %84 = add i32 %83, %78
  %85 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %86 = load i32, ptr %85, align 4, !tbaa !19
  %87 = shl i32 %86, 4
  %88 = add i32 %87, %84
  store i32 %84, ptr %85, align 4, !tbaa !19
  %89 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %90 = load i32, ptr %89, align 8, !tbaa !19
  store i32 %88, ptr %89, align 8, !tbaa !19
  %91 = icmp eq i32 %35, 6
  br i1 %91, label %.loopexit8, label %92

92:                                               ; preds = %82
  %93 = shl i32 %90, 5
  %94 = add i32 %93, %88
  %95 = getelementptr inbounds nuw i8, ptr %7, i64 28
  %96 = load i32, ptr %95, align 4, !tbaa !19
  %97 = shl i32 %96, 6
  %98 = add i32 %97, %94
  store i32 %94, ptr %95, align 4, !tbaa !19
  %99 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %100 = load i32, ptr %99, align 16, !tbaa !19
  store i32 %98, ptr %99, align 16, !tbaa !19
  %101 = icmp eq i32 %35, 8
  br i1 %101, label %.loopexit8, label %102

102:                                              ; preds = %92
  %103 = shl i32 %100, 7
  %104 = add i32 %103, %98
  %105 = getelementptr inbounds nuw i8, ptr %7, i64 36
  %106 = load i32, ptr %105, align 4, !tbaa !19
  %107 = shl i32 %106, 8
  %108 = add i32 %107, %104
  store i32 %104, ptr %105, align 4, !tbaa !19
  %109 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %110 = load i32, ptr %109, align 8, !tbaa !19
  store i32 %108, ptr %109, align 8, !tbaa !19
  %111 = icmp eq i32 %35, 10
  br i1 %111, label %.loopexit8, label %112

112:                                              ; preds = %102
  %113 = shl i32 %110, 9
  %114 = add i32 %113, %108
  %115 = getelementptr inbounds nuw i8, ptr %7, i64 44
  %116 = load i32, ptr %115, align 4, !tbaa !19
  %117 = shl i32 %116, 10
  %118 = add i32 %117, %114
  store i32 %114, ptr %115, align 4, !tbaa !19
  %119 = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i32 %118, ptr %119, align 16, !tbaa !19
  br label %.loopexit8

120:                                              ; preds = %.preheader, %120
  %121 = phi i64 [ %129, %120 ], [ %.ph, %.preheader ]
  %122 = getelementptr inbounds nuw i8, ptr %6, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !5
  %124 = icmp eq i8 %123, 0
  %125 = sub i8 %44, %123
  %126 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %121
  %127 = select i1 %124, i8 0, i8 %125
  %128 = zext i8 %127 to i64
  store i64 %128, ptr %126, align 8, !tbaa !14
  %129 = add nuw nsw i64 %121, 1
  %130 = icmp eq i64 %129, %45
  br i1 %130, label %131, label %120, !llvm.loop !30

131:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  %132 = and i64 %45, 1
  %133 = icmp eq i32 %22, 1
  br i1 %133, label %.loopexit7, label %134

134:                                              ; preds = %.thread, %131
  %135 = phi i64 [ %71, %.thread ], [ %132, %131 ]
  %136 = and i64 %45, 4294967294
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %138 = add nsw i64 %45, -2
  %139 = lshr i64 %138, 1
  %140 = add nuw i64 %139, 1
  %141 = icmp eq i64 %139, 0
  br i1 %141, label %.epil.preheader, label %.new

.new:                                             ; preds = %134
  %unroll_iter = and i64 %140, -2
  br label %142

142:                                              ; preds = %142, %.new
  %143 = phi i64 [ 0, %.new ], [ %169, %142 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %142 ]
  %144 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %143
  %145 = load i64, ptr %144, align 8, !tbaa !14
  %146 = and i64 %145, 255
  %147 = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %146
  %148 = load i16, ptr %147, align 2, !tbaa !31
  %149 = add i16 %148, 1
  store i16 %149, ptr %147, align 2, !tbaa !31
  %150 = getelementptr inbounds nuw [8 x i8], ptr %137, i64 %143
  %151 = load i64, ptr %150, align 8, !tbaa !14
  %152 = and i64 %151, 255
  %153 = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %152
  %154 = load i16, ptr %153, align 2, !tbaa !31
  %155 = add i16 %154, 1
  store i16 %155, ptr %153, align 2, !tbaa !31
  %156 = or disjoint i64 %143, 2
  %157 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %156
  %158 = load i64, ptr %157, align 8, !tbaa !14
  %159 = and i64 %158, 255
  %160 = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %159
  %161 = load i16, ptr %160, align 2, !tbaa !31
  %162 = add i16 %161, 1
  store i16 %162, ptr %160, align 2, !tbaa !31
  %163 = getelementptr inbounds nuw [8 x i8], ptr %137, i64 %156
  %164 = load i64, ptr %163, align 8, !tbaa !14
  %165 = and i64 %164, 255
  %166 = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %165
  %167 = load i16, ptr %166, align 2, !tbaa !31
  %168 = add i16 %167, 1
  store i16 %168, ptr %166, align 2, !tbaa !31
  %169 = add nuw i64 %143, 4
  %niter.next.1 = add nuw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit7.loopexit.unr-lcssa, label %142, !llvm.loop !33

.loopexit7.loopexit.unr-lcssa:                    ; preds = %142
  %170 = and i64 %138, 2
  %lcmp.mod.not.not = icmp eq i64 %170, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %.loopexit7

.epil.preheader:                                  ; preds = %.loopexit7.loopexit.unr-lcssa, %134
  %.epil.init = phi i64 [ 0, %134 ], [ %169, %.loopexit7.loopexit.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %140 to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %171 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %.epil.init
  %172 = load i64, ptr %171, align 8, !tbaa !14
  %173 = and i64 %172, 255
  %174 = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %173
  %175 = load i16, ptr %174, align 2, !tbaa !31
  %176 = add i16 %175, 1
  store i16 %176, ptr %174, align 2, !tbaa !31
  %177 = getelementptr inbounds nuw [8 x i8], ptr %137, i64 %.epil.init
  %178 = load i64, ptr %177, align 8, !tbaa !14
  %179 = and i64 %178, 255
  %180 = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %179
  %181 = load i16, ptr %180, align 2, !tbaa !31
  %182 = add i16 %181, 1
  store i16 %182, ptr %180, align 2, !tbaa !31
  br label %.loopexit7

.loopexit7:                                       ; preds = %.epil.preheader, %.loopexit7.loopexit.unr-lcssa, %131
  %183 = phi i64 [ %132, %131 ], [ %135, %.loopexit7.loopexit.unr-lcssa ], [ %135, %.epil.preheader ]
  %184 = phi i64 [ 0, %131 ], [ %136, %.loopexit7.loopexit.unr-lcssa ], [ %136, %.epil.preheader ]
  %185 = icmp eq i64 %183, 0
  br i1 %185, label %193, label %186

186:                                              ; preds = %.loopexit7
  %187 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %184
  %188 = load i64, ptr %187, align 8, !tbaa !14
  %189 = and i64 %188, 255
  %190 = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %189
  %191 = load i16, ptr %190, align 2, !tbaa !31
  %192 = add i16 %191, 1
  store i16 %192, ptr %190, align 2, !tbaa !31
  br label %193

193:                                              ; preds = %186, %.loopexit7, %42
  %194 = zext nneg i32 %19 to i64
  %195 = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %194
  %196 = getelementptr inbounds nuw i8, ptr %195, i64 2
  store i16 0, ptr %196, align 2, !tbaa !31
  br i1 %32, label %223, label %197

197:                                              ; preds = %193
  %198 = and i32 %19, 1
  %199 = icmp eq i32 %19, 1
  br i1 %199, label %.thread6, label %200

200:                                              ; preds = %197
  %201 = add nsw i32 %19, -2
  %202 = lshr i32 %201, 1
  %203 = add nuw i32 %202, 1
  %204 = icmp eq i32 %202, 0
  br i1 %204, label %.epil.preheader30, label %.new29

.new29:                                           ; preds = %200
  %unroll_iter42 = and i32 %203, -2
  br label %226

.unr-lcssa:                                       ; preds = %226
  %205 = and i32 %201, 2
  %lcmp.mod38.not.not = icmp eq i32 %205, 0
  br i1 %lcmp.mod38.not.not, label %.epil.preheader30, label %218

.epil.preheader30:                                ; preds = %.unr-lcssa, %200
  %.epil.init33 = phi i64 [ %194, %200 ], [ %252, %.unr-lcssa ]
  %.epil.init35 = phi i16 [ 0, %200 ], [ %251, %.unr-lcssa ]
  %lcmp.mod41 = trunc i32 %203 to i1
  call void @llvm.assume(i1 %lcmp.mod41)
  %206 = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %.epil.init33
  store i16 %.epil.init35, ptr %206, align 2, !tbaa !31
  %207 = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %.epil.init33
  %208 = load i16, ptr %207, align 2, !tbaa !31
  %209 = add i16 %208, %.epil.init35
  %210 = lshr i16 %209, 1
  %211 = add nsw i64 %.epil.init33, -1
  %212 = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %211
  store i16 %210, ptr %212, align 2, !tbaa !31
  %213 = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %211
  %214 = load i16, ptr %213, align 2, !tbaa !31
  %215 = add i16 %214, %210
  %216 = lshr i16 %215, 1
  %217 = add nsw i64 %.epil.init33, -2
  br label %218

218:                                              ; preds = %.unr-lcssa, %.epil.preheader30
  %.lcssa27 = phi i16 [ %251, %.unr-lcssa ], [ %216, %.epil.preheader30 ]
  %.lcssa = phi i64 [ %252, %.unr-lcssa ], [ %217, %.epil.preheader30 ]
  %219 = icmp eq i32 %198, 0
  br i1 %219, label %223, label %.thread6

.thread6:                                         ; preds = %197, %218
  %220 = phi i16 [ %.lcssa27, %218 ], [ 0, %197 ]
  %221 = phi i64 [ %.lcssa, %218 ], [ 1, %197 ]
  %222 = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %221
  store i16 %220, ptr %222, align 2, !tbaa !31
  br label %223

223:                                              ; preds = %.thread6, %218, %193
  br i1 %41, label %.loopexit, label %224

224:                                              ; preds = %223
  %225 = zext i32 %22 to i64
  br label %253

226:                                              ; preds = %226, %.new29
  %227 = phi i64 [ %194, %.new29 ], [ %252, %226 ]
  %228 = phi i16 [ 0, %.new29 ], [ %251, %226 ]
  %niter43 = phi i32 [ 0, %.new29 ], [ %niter43.next.1, %226 ]
  %229 = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %227
  store i16 %228, ptr %229, align 2, !tbaa !31
  %230 = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %227
  %231 = load i16, ptr %230, align 2, !tbaa !31
  %232 = add i16 %231, %228
  %233 = lshr i16 %232, 1
  %234 = add nsw i64 %227, -1
  %235 = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %234
  store i16 %233, ptr %235, align 2, !tbaa !31
  %236 = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %234
  %237 = load i16, ptr %236, align 2, !tbaa !31
  %238 = add i16 %237, %233
  %239 = lshr i16 %238, 1
  %240 = add nsw i64 %227, -2
  %241 = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %240
  store i16 %239, ptr %241, align 2, !tbaa !31
  %242 = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %240
  %243 = load i16, ptr %242, align 2, !tbaa !31
  %244 = add i16 %243, %239
  %245 = lshr i16 %244, 1
  %246 = add nsw i64 %227, -3
  %247 = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %246
  store i16 %245, ptr %247, align 2, !tbaa !31
  %248 = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %246
  %249 = load i16, ptr %248, align 2, !tbaa !31
  %250 = add i16 %249, %245
  %251 = lshr i16 %250, 1
  %252 = add nsw i64 %227, -4
  %niter43.next.1 = add i32 %niter43, 2
  %niter43.ncmp.1 = icmp eq i32 %niter43.next.1, %unroll_iter42
  br i1 %niter43.ncmp.1, label %.unr-lcssa, label %226, !llvm.loop !34

253:                                              ; preds = %267, %224
  %254 = phi i64 [ 0, %224 ], [ %268, %267 ]
  %255 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %254
  %256 = load i64, ptr %255, align 8, !tbaa !14
  %257 = and i64 %256, 255
  %258 = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %257
  %259 = load i16, ptr %258, align 2, !tbaa !31
  %260 = add i16 %259, 1
  store i16 %260, ptr %258, align 2, !tbaa !31
  %261 = icmp eq i64 %257, 0
  br i1 %261, label %267, label %262

262:                                              ; preds = %253
  %263 = zext i16 %259 to i64
  %264 = sub nsw i64 64, %257
  %265 = shl i64 %263, %264
  %266 = or i64 %265, %256
  store i64 %266, ptr %255, align 8, !tbaa !14
  br label %267

267:                                              ; preds = %262, %253
  %268 = add nuw nsw i64 %254, 1
  %269 = icmp eq i64 %268, %225
  br i1 %269, label %.loopexit, label %253, !llvm.loop !35

.loopexit:                                        ; preds = %267, %223
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %270

270:                                              ; preds = %.loopexit, %21, %15, %5
  %271 = phi i64 [ %13, %.loopexit ], [ %13, %5 ], [ -44, %15 ], [ -48, %21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i64 %271
}

declare i64 @HUF_readStats(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 256) i32 @HUF_getNbBitsFromCTable(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 8
  %6 = and i32 %5, 255
  %7 = icmp ugt i32 %1, %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = zext nneg i32 %1 to i64
  %11 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !14
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 255
  br label %15

15:                                               ; preds = %8, %2
  %16 = phi i32 [ %14, %8 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i64 -66, 13) i64 @HUF_buildCTable_wksp(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 {
  %7 = alloca [13 x i16], align 16
  %8 = alloca [13 x i16], align 16
  %9 = alloca [14 x i32], align 16
  %10 = ptrtoint ptr %4 to i64
  %11 = sub i64 0, %10
  %12 = and i64 %11, 3
  %13 = icmp ult i64 %5, %12
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 %12
  %15 = tail call i64 @llvm.usub.sat.i64(i64 %5, i64 %12)
  %16 = select i1 %13, ptr null, ptr %14
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %18 = icmp ult i64 %15, 4864
  br i1 %18, label %759, label %19

19:                                               ; preds = %6
  %20 = icmp ugt i32 %2, 255
  br i1 %20, label %759, label %21

21:                                               ; preds = %19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %14, i8 0, i64 4096, i1 false)
  %22 = getelementptr inbounds nuw i8, ptr %16, i64 4096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(768) %22, i8 0, i64 768, i1 false)
  %23 = add nuw nsw i32 %2, 1
  %24 = zext nneg i32 %23 to i64
  %25 = and i64 %24, 1
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %.loopexit74, label %27

27:                                               ; preds = %21
  %28 = and i64 %24, 510
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %30

30:                                               ; preds = %30, %27
  %31 = phi i64 [ 0, %27 ], [ %52, %30 ]
  %32 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !19
  %34 = icmp ult i32 %33, 165
  %35 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %33, i1 true)
  %36 = sub nuw nsw i32 189, %35
  %37 = select i1 %34, i32 %33, i32 %36
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !36
  %41 = add i16 %40, 1
  store i16 %41, ptr %39, align 2, !tbaa !36
  %42 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %31
  %43 = load i32, ptr %42, align 4, !tbaa !19
  %44 = icmp ult i32 %43, 165
  %45 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %43, i1 true)
  %46 = sub nuw nsw i32 189, %45
  %47 = select i1 %44, i32 %43, i32 %46
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %48
  %50 = load i16, ptr %49, align 2, !tbaa !36
  %51 = add i16 %50, 1
  store i16 %51, ptr %49, align 2, !tbaa !36
  %52 = add nuw nsw i64 %31, 2
  %53 = icmp eq i64 %52, %28
  br i1 %53, label %.loopexit74, label %30, !llvm.loop !38

.loopexit74:                                      ; preds = %30, %21
  %54 = phi i64 [ 0, %21 ], [ %28, %30 ]
  %55 = icmp eq i64 %25, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %.loopexit74
  %57 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %54
  %58 = load i32, ptr %57, align 4, !tbaa !19
  %59 = icmp ult i32 %58, 165
  %60 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %58, i1 true)
  %61 = sub nuw nsw i32 189, %60
  %62 = select i1 %59, i32 %58, i32 %61
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %63
  %65 = load i16, ptr %64, align 2, !tbaa !36
  %66 = add i16 %65, 1
  store i16 %66, ptr %64, align 2, !tbaa !36
  br label %67

67:                                               ; preds = %56, %.loopexit74
  %68 = getelementptr inbounds nuw i8, ptr %14, i64 4860
  %69 = load i16, ptr %68, align 2, !tbaa !36
  %70 = getelementptr i8, ptr %16, i64 4856
  %71 = load i16, ptr %70, align 2, !tbaa !36
  %72 = add i16 %71, %69
  store i16 %72, ptr %70, align 2, !tbaa !36
  %73 = getelementptr i8, ptr %14, i64 4858
  store i16 %72, ptr %73, align 2, !tbaa !39
  %74 = getelementptr i8, ptr %16, i64 4852
  %75 = load i16, ptr %74, align 2, !tbaa !36
  %76 = add i16 %75, %72
  store i16 %76, ptr %74, align 2, !tbaa !36
  %77 = getelementptr i8, ptr %14, i64 4854
  store i16 %76, ptr %77, align 2, !tbaa !39
  %78 = getelementptr inbounds nuw i8, ptr %16, i64 4848
  %79 = load i16, ptr %78, align 2, !tbaa !36
  %80 = add i16 %79, %76
  store i16 %80, ptr %78, align 2, !tbaa !36
  %81 = getelementptr inbounds nuw i8, ptr %14, i64 4850
  store i16 %80, ptr %81, align 2, !tbaa !39
  br label %84

82:                                               ; preds = %84
  %83 = getelementptr inbounds nuw i8, ptr %16, i64 4102
  br label %107

84:                                               ; preds = %67, %84
  %85 = phi i16 [ %80, %67 ], [ %100, %84 ]
  %86 = phi i64 [ 191, %67 ], [ %87, %84 ]
  %87 = add nsw i64 %86, -4
  %88 = getelementptr [4 x i8], ptr %22, i64 %87
  %89 = load i16, ptr %88, align 2, !tbaa !36
  %90 = getelementptr i8, ptr %88, i64 -4
  %91 = load i16, ptr %90, align 2, !tbaa !36
  %92 = getelementptr i8, ptr %88, i64 -8
  %93 = load i16, ptr %92, align 2, !tbaa !36
  %94 = add nsw i64 %86, -7
  %95 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %94
  %96 = load i16, ptr %95, align 2, !tbaa !36
  %97 = add i16 %89, %85
  %98 = add i16 %91, %97
  %99 = add i16 %93, %98
  %100 = add i16 %96, %99
  %101 = insertelement <8 x i16> poison, i16 %100, i64 0
  %102 = insertelement <8 x i16> %101, i16 %99, i64 1
  %103 = insertelement <8 x i16> %102, i16 %98, i64 2
  %104 = insertelement <8 x i16> %103, i16 %97, i64 3
  %105 = shufflevector <8 x i16> %104, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %105, ptr %95, align 2, !tbaa !31
  %106 = icmp eq i64 %94, 0
  br i1 %106, label %82, label %84, !llvm.loop !40

107:                                              ; preds = %107, %82
  %108 = phi i64 [ 0, %82 ], [ %123, %107 ]
  %109 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !19
  %111 = icmp ult i32 %110, 165
  %112 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %110, i1 true)
  %113 = sub nuw nsw i32 189, %112
  %114 = select i1 %111, i32 %110, i32 %113
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds nuw [4 x i8], ptr %83, i64 %115
  %117 = load i16, ptr %116, align 2, !tbaa !39
  %118 = add i16 %117, 1
  store i16 %118, ptr %116, align 2, !tbaa !39
  %119 = zext i16 %117 to i64
  %120 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %119
  store i32 %110, ptr %120, align 4, !tbaa !41
  %121 = trunc i64 %108 to i8
  %122 = getelementptr inbounds nuw i8, ptr %120, i64 6
  store i8 %121, ptr %122, align 2, !tbaa !43
  %123 = add nuw nsw i64 %108, 1
  %124 = icmp eq i64 %123, %24
  br i1 %124, label %.preheader73, label %107, !llvm.loop !44

.preheader73:                                     ; preds = %107, %138
  %125 = phi i64 [ %139, %138 ], [ 165, %107 ]
  %126 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %125
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 2
  %128 = load i16, ptr %127, align 2, !tbaa !39
  %129 = zext i16 %128 to i32
  %130 = load i16, ptr %126, align 2, !tbaa !36
  %131 = zext i16 %130 to i32
  %132 = sub nsw i32 %129, %131
  %133 = icmp sgt i32 %132, 1
  br i1 %133, label %134, label %138

134:                                              ; preds = %.preheader73
  %135 = add nsw i32 %132, -1
  %136 = zext i16 %130 to i64
  %137 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %136
  tail call fastcc void @HUF_simpleQuickSort(ptr noundef nonnull %137, i32 noundef 0, i32 noundef %135)
  br label %138

138:                                              ; preds = %134, %.preheader73
  %139 = add nuw nsw i64 %125, 1
  %140 = icmp eq i64 %139, 191
  br i1 %140, label %141, label %.preheader73, !llvm.loop !45

141:                                              ; preds = %138
  %142 = icmp eq i32 %3, 0
  %143 = select i1 %142, i32 11, i32 %3
  %144 = zext nneg i32 %2 to i64
  %145 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !41
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %.lr.ph, label %.loopexit72

.lr.ph:                                           ; preds = %141
  %148 = add nsw i32 %2, -1
  %149 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %148, 0
  br label %152

.preheader70:                                     ; preds = %152
  %150 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %154, i32 -1)
  %151 = extractvalue { i32, i1 } %150, 1, !nosanitize !46
  br i1 %151, label %.loopexit66, label %152, !prof !47, !llvm.loop !48, !nosanitize !46

.loopexit66:                                      ; preds = %.preheader70, %269, %244, %169, %164
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

152:                                              ; preds = %.lr.ph, %.preheader70
  %153 = phi { i32, i1 } [ %149, %.lr.ph ], [ %150, %.preheader70 ]
  %154 = extractvalue { i32, i1 } %153, 0, !nosanitize !46
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [8 x i8], ptr %17, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !41
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %.preheader70, label %.loopexit72, !llvm.loop !48

.loopexit72:                                      ; preds = %152, %141
  %159 = phi i64 [ %144, %141 ], [ %155, %152 ]
  %160 = phi i32 [ %2, %141 ], [ %154, %152 ]
  %161 = phi i32 [ %146, %141 ], [ %157, %152 ]
  %162 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %160, i32 256), !nosanitize !46
  %163 = extractvalue { i32, i1 } %162, 1, !nosanitize !46
  br i1 %163, label %.loopexit65, label %164, !prof !49, !nosanitize !46

.loopexit65:                                      ; preds = %274, %252, %.loopexit72
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !46
  unreachable, !nosanitize !46

164:                                              ; preds = %.loopexit72
  %165 = extractvalue { i32, i1 } %162, 0, !nosanitize !46
  %166 = add nsw i32 %165, -1
  %167 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %160, i32 -1)
  %168 = extractvalue { i32, i1 } %167, 1, !nosanitize !46
  br i1 %168, label %.loopexit66, label %169, !prof !49, !nosanitize !46

169:                                              ; preds = %164
  %170 = extractvalue { i32, i1 } %167, 0, !nosanitize !46
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [8 x i8], ptr %17, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !41
  %174 = add i32 %173, %161
  %175 = getelementptr inbounds nuw i8, ptr %14, i64 2056
  store i32 %174, ptr %175, align 4, !tbaa !41
  %176 = getelementptr inbounds nuw i8, ptr %172, i64 4
  store i16 256, ptr %176, align 4, !tbaa !50
  %177 = shl nsw i64 %159, 3
  %178 = getelementptr i8, ptr %17, i64 %177
  %179 = getelementptr i8, ptr %178, i64 4
  store i16 256, ptr %179, align 4, !tbaa !50
  %180 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %160, i32 -2)
  %181 = extractvalue { i32, i1 } %180, 0, !nosanitize !46
  %182 = extractvalue { i32, i1 } %180, 1, !nosanitize !46
  br i1 %182, label %.loopexit66, label %183, !prof !49, !nosanitize !46

183:                                              ; preds = %169
  %184 = icmp sgt i32 %165, 257
  br i1 %184, label %185, label %.thread

185:                                              ; preds = %183
  %186 = zext nneg i32 %165 to i64
  %187 = add nsw i64 %186, -257
  %188 = and i64 %187, 7
  %189 = icmp samesign ult i32 %165, 265
  br i1 %189, label %.loopexit69, label %190

190:                                              ; preds = %185
  %191 = and i64 %187, -8
  %192 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %193 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %194 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %195 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %196 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %197 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %198 = getelementptr inbounds nuw i8, ptr %14, i64 64
  br label %199

199:                                              ; preds = %199, %190
  %200 = phi i64 [ 257, %190 ], [ %210, %199 ]
  %201 = phi i64 [ 0, %190 ], [ %211, %199 ]
  %202 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %200
  store i32 1073741824, ptr %202, align 4, !tbaa !41
  %203 = getelementptr inbounds nuw [8 x i8], ptr %192, i64 %200
  store i32 1073741824, ptr %203, align 4, !tbaa !41
  %204 = getelementptr inbounds nuw [8 x i8], ptr %193, i64 %200
  store i32 1073741824, ptr %204, align 4, !tbaa !41
  %205 = getelementptr inbounds nuw [8 x i8], ptr %194, i64 %200
  store i32 1073741824, ptr %205, align 4, !tbaa !41
  %206 = getelementptr inbounds nuw [8 x i8], ptr %195, i64 %200
  store i32 1073741824, ptr %206, align 4, !tbaa !41
  %207 = getelementptr inbounds nuw [8 x i8], ptr %196, i64 %200
  store i32 1073741824, ptr %207, align 4, !tbaa !41
  %208 = getelementptr inbounds nuw [8 x i8], ptr %197, i64 %200
  store i32 1073741824, ptr %208, align 4, !tbaa !41
  %209 = getelementptr inbounds nuw [8 x i8], ptr %198, i64 %200
  store i32 1073741824, ptr %209, align 4, !tbaa !41
  %210 = add nuw nsw i64 %200, 8
  %211 = add nuw nsw i64 %201, 8
  %212 = icmp eq i64 %211, %191
  br i1 %212, label %.loopexit69, label %199, !llvm.loop !51

.thread:                                          ; preds = %183
  store i32 -2147483648, ptr %14, align 4, !tbaa !41
  %213 = sext i32 %166 to i64
  %214 = shl nsw i64 %213, 3
  %215 = getelementptr i8, ptr %17, i64 %214
  %216 = getelementptr i8, ptr %215, i64 7
  store i8 0, ptr %216, align 1, !tbaa !52
  br label %.loopexit64

.loopexit69:                                      ; preds = %199, %185
  %217 = phi i64 [ 257, %185 ], [ %210, %199 ]
  %218 = icmp eq i64 %188, 0
  br i1 %218, label %.loopexit68, label %vector.ph

vector.ph:                                        ; preds = %.loopexit69
  %n.rnd.up = add nuw nsw i64 %188, 3
  %n.vec = and i64 %n.rnd.up, 12
  %trip.count.minus.1 = add nsw i64 %188, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue227, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue227 ]
  %offset.idx = add i64 %217, %index
  %broadcast.splatinsert220 = insertelement <4 x i64> poison, i64 %index, i64 0
  %broadcast.splat221 = shufflevector <4 x i64> %broadcast.splatinsert220, <4 x i64> poison, <4 x i32> zeroinitializer
  %vec.iv = or disjoint <4 x i64> %broadcast.splat221, <i64 0, i64 1, i64 2, i64 3>
  %219 = icmp ule <4 x i64> %vec.iv, %broadcast.splat
  %220 = extractelement <4 x i1> %219, i64 0
  br i1 %220, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %221 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %offset.idx
  store i32 1073741824, ptr %221, align 4, !tbaa !41
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %222 = extractelement <4 x i1> %219, i64 1
  br i1 %222, label %pred.store.if222, label %pred.store.continue223

pred.store.if222:                                 ; preds = %pred.store.continue
  %223 = getelementptr [8 x i8], ptr %17, i64 %offset.idx
  %224 = getelementptr i8, ptr %223, i64 8
  store i32 1073741824, ptr %224, align 4, !tbaa !41
  br label %pred.store.continue223

pred.store.continue223:                           ; preds = %pred.store.if222, %pred.store.continue
  %225 = extractelement <4 x i1> %219, i64 2
  br i1 %225, label %pred.store.if224, label %pred.store.continue225

pred.store.if224:                                 ; preds = %pred.store.continue223
  %226 = getelementptr [8 x i8], ptr %17, i64 %offset.idx
  %227 = getelementptr i8, ptr %226, i64 16
  store i32 1073741824, ptr %227, align 4, !tbaa !41
  br label %pred.store.continue225

pred.store.continue225:                           ; preds = %pred.store.if224, %pred.store.continue223
  %228 = extractelement <4 x i1> %219, i64 3
  br i1 %228, label %pred.store.if226, label %pred.store.continue227

pred.store.if226:                                 ; preds = %pred.store.continue225
  %229 = getelementptr [8 x i8], ptr %17, i64 %offset.idx
  %230 = getelementptr i8, ptr %229, i64 24
  store i32 1073741824, ptr %230, align 4, !tbaa !41
  br label %pred.store.continue227

pred.store.continue227:                           ; preds = %pred.store.if226, %pred.store.continue225
  %index.next = add nuw i64 %index, 4
  %231 = icmp eq i64 %index.next, %n.vec
  br i1 %231, label %.loopexit68, label %vector.body, !llvm.loop !53

.loopexit68:                                      ; preds = %pred.store.continue227, %.loopexit69
  store i32 -2147483648, ptr %14, align 4, !tbaa !41
  %232 = getelementptr i8, ptr %14, i64 12
  br label %233

233:                                              ; preds = %279, %.loopexit68
  %234 = phi i64 [ 257, %.loopexit68 ], [ %293, %279 ]
  %235 = phi i32 [ %181, %.loopexit68 ], [ %283, %279 ]
  %236 = phi i32 [ 256, %.loopexit68 ], [ %282, %279 ]
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds [8 x i8], ptr %17, i64 %237
  %239 = load i32, ptr %238, align 4, !tbaa !41
  %240 = sext i32 %236 to i64
  %241 = getelementptr inbounds [8 x i8], ptr %17, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !41
  %243 = icmp ult i32 %239, %242
  br i1 %243, label %244, label %252

244:                                              ; preds = %233
  %245 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %235, i32 -1)
  %246 = extractvalue { i32, i1 } %245, 1, !nosanitize !46
  br i1 %246, label %.loopexit66, label %247, !prof !49, !nosanitize !46

247:                                              ; preds = %244
  %248 = extractvalue { i32, i1 } %245, 0, !nosanitize !46
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [8 x i8], ptr %17, i64 %249
  %251 = load i32, ptr %250, align 4, !tbaa !41
  br label %260

252:                                              ; preds = %233
  %253 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %236, i32 1), !nosanitize !46
  %254 = extractvalue { i32, i1 } %253, 1, !nosanitize !46
  br i1 %254, label %.loopexit65, label %255, !prof !49, !nosanitize !46

255:                                              ; preds = %252
  %256 = extractvalue { i32, i1 } %253, 0, !nosanitize !46
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [8 x i8], ptr %17, i64 %257
  %259 = load i32, ptr %258, align 4, !tbaa !41
  br label %260

260:                                              ; preds = %255, %247
  %261 = phi i32 [ %259, %255 ], [ %242, %247 ]
  %262 = phi i64 [ %257, %255 ], [ %240, %247 ]
  %263 = phi i32 [ %239, %255 ], [ %251, %247 ]
  %264 = phi i64 [ %237, %255 ], [ %249, %247 ]
  %265 = phi i32 [ %256, %255 ], [ %236, %247 ]
  %266 = phi i32 [ %235, %255 ], [ %248, %247 ]
  %267 = phi i32 [ %236, %255 ], [ %235, %247 ]
  %268 = icmp ult i32 %263, %261
  br i1 %268, label %269, label %274

269:                                              ; preds = %260
  %270 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %266, i32 -1)
  %271 = extractvalue { i32, i1 } %270, 1, !nosanitize !46
  br i1 %271, label %.loopexit66, label %272, !prof !49, !nosanitize !46

272:                                              ; preds = %269
  %273 = extractvalue { i32, i1 } %270, 0, !nosanitize !46
  br label %279

274:                                              ; preds = %260
  %275 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %265, i32 1), !nosanitize !46
  %276 = extractvalue { i32, i1 } %275, 1, !nosanitize !46
  br i1 %276, label %.loopexit65, label %277, !prof !49, !nosanitize !46

277:                                              ; preds = %274
  %278 = extractvalue { i32, i1 } %275, 0, !nosanitize !46
  br label %279

279:                                              ; preds = %277, %272
  %280 = phi i32 [ %261, %277 ], [ %263, %272 ]
  %281 = phi i64 [ %262, %277 ], [ %264, %272 ]
  %282 = phi i32 [ %278, %277 ], [ %265, %272 ]
  %283 = phi i32 [ %266, %277 ], [ %273, %272 ]
  %284 = sext i32 %267 to i64
  %285 = getelementptr inbounds [8 x i8], ptr %17, i64 %284
  %286 = load i32, ptr %285, align 4, !tbaa !41
  %287 = add i32 %286, %280
  %288 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %234
  store i32 %287, ptr %288, align 4, !tbaa !41
  %289 = trunc i64 %234 to i16
  %290 = shl nsw i64 %281, 3
  %291 = getelementptr i8, ptr %232, i64 %290
  store i16 %289, ptr %291, align 4, !tbaa !50
  %292 = getelementptr inbounds nuw i8, ptr %285, i64 4
  store i16 %289, ptr %292, align 4, !tbaa !50
  %293 = add nuw nsw i64 %234, 1
  %294 = icmp eq i64 %293, %186
  br i1 %294, label %295, label %233, !llvm.loop !54

295:                                              ; preds = %279
  %296 = sext i32 %166 to i64
  %297 = shl nsw i64 %296, 3
  %298 = getelementptr i8, ptr %17, i64 %297
  %299 = getelementptr i8, ptr %298, i64 7
  store i8 0, ptr %299, align 1, !tbaa !52
  %300 = add nsw i32 %165, -2
  %301 = zext nneg i32 %300 to i64
  %302 = getelementptr inbounds nuw i8, ptr %14, i64 15
  br label %315

.loopexit64:                                      ; preds = %315, %.thread
  %303 = icmp slt i32 %160, 0
  br i1 %303, label %.loopexit64..loopexit63_crit_edge, label %304

.loopexit64..loopexit63_crit_edge:                ; preds = %.loopexit64
  %.pre = zext i32 %160 to i64
  br label %.loopexit63

304:                                              ; preds = %.loopexit64
  %305 = getelementptr inbounds nuw i8, ptr %14, i64 15
  %306 = zext nneg i32 %160 to i64
  %307 = getelementptr inbounds nuw i8, ptr %14, i64 12
  %308 = load i16, ptr %307, align 4, !tbaa !50
  %309 = zext i16 %308 to i64
  %310 = shl nuw nsw i64 %309, 3
  %311 = getelementptr inbounds nuw i8, ptr %305, i64 %310
  %312 = load i8, ptr %311, align 1, !tbaa !52
  %313 = add i8 %312, 1
  %314 = getelementptr inbounds nuw i8, ptr %14, i64 15
  store i8 %313, ptr %314, align 1, !tbaa !52
  %.not = icmp eq i32 %160, 0
  br i1 %.not, label %.loopexit63, label %.lr.ph213, !llvm.loop !55

.lr.ph213:                                        ; preds = %304
  br label %339, !llvm.loop !55

315:                                              ; preds = %315, %295
  %316 = phi i64 [ %301, %295 ], [ %326, %315 ]
  %317 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %316
  %318 = getelementptr inbounds nuw i8, ptr %317, i64 4
  %319 = load i16, ptr %318, align 4, !tbaa !50
  %320 = zext i16 %319 to i64
  %321 = shl nuw nsw i64 %320, 3
  %322 = getelementptr inbounds nuw i8, ptr %302, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !52
  %324 = add i8 %323, 1
  %325 = getelementptr inbounds nuw i8, ptr %317, i64 7
  store i8 %324, ptr %325, align 1, !tbaa !52
  %326 = add nsw i64 %316, -1
  %327 = icmp samesign ugt i64 %316, 256
  br i1 %327, label %315, label %.loopexit64, !llvm.loop !56

328:                                              ; preds = %339
  %329 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %350
  %330 = getelementptr inbounds nuw i8, ptr %329, i64 4
  %331 = load i16, ptr %330, align 4, !tbaa !50
  %332 = zext i16 %331 to i64
  %333 = shl nuw nsw i64 %332, 3
  %334 = getelementptr inbounds nuw i8, ptr %305, i64 %333
  %335 = load i8, ptr %334, align 1, !tbaa !52
  %336 = add i8 %335, 1
  %337 = getelementptr inbounds nuw i8, ptr %329, i64 7
  store i8 %336, ptr %337, align 1, !tbaa !52
  %338 = icmp samesign ult i64 %350, %306
  br i1 %338, label %339, label %..loopexit63.loopexit_crit_edge214, !llvm.loop !55

339:                                              ; preds = %.lr.ph213, %328
  %340 = phi i64 [ 0, %.lr.ph213 ], [ %350, %328 ]
  %341 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %340
  %342 = getelementptr inbounds nuw i8, ptr %341, i64 12
  %343 = load i16, ptr %342, align 4, !tbaa !50
  %344 = zext i16 %343 to i64
  %345 = shl nuw nsw i64 %344, 3
  %346 = getelementptr inbounds nuw i8, ptr %305, i64 %345
  %347 = load i8, ptr %346, align 1, !tbaa !52
  %348 = add i8 %347, 1
  %349 = getelementptr inbounds nuw i8, ptr %341, i64 15
  store i8 %348, ptr %349, align 1, !tbaa !52
  %350 = add nuw nsw i64 %340, 2
  %351 = trunc nuw i64 %350 to i32
  %352 = icmp slt i32 %160, %351
  br i1 %352, label %..loopexit63.loopexit_crit_edge214, label %328, !llvm.loop !55

..loopexit63.loopexit_crit_edge214:               ; preds = %328, %339
  br label %.loopexit63, !llvm.loop !55

.loopexit63:                                      ; preds = %304, %..loopexit63.loopexit_crit_edge214, %.loopexit64..loopexit63_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.loopexit64..loopexit63_crit_edge ], [ %306, %..loopexit63.loopexit_crit_edge214 ], [ %306, %304 ]
  %353 = shl nuw nsw i64 %.pre-phi, 3
  %354 = getelementptr inbounds nuw i8, ptr %17, i64 %353
  %355 = getelementptr inbounds nuw i8, ptr %354, i64 7
  %356 = load i8, ptr %355, align 1, !tbaa !52
  %357 = zext i8 %356 to i32
  %358 = icmp ult i32 %143, %357
  br i1 %358, label %359, label %600

359:                                              ; preds = %.loopexit63
  %360 = sub nuw nsw i32 %357, %143
  %361 = shl nuw i32 1, %360
  %362 = sext i32 %160 to i64
  %363 = shl nsw i64 %362, 3
  %364 = getelementptr i8, ptr %17, i64 %363
  %365 = getelementptr i8, ptr %364, i64 7
  %366 = load i8, ptr %365, align 1, !tbaa !52
  %367 = zext i8 %366 to i32
  %368 = icmp samesign ult i32 %143, %367
  br i1 %368, label %369, label %.loopexit62

369:                                              ; preds = %359
  %370 = trunc nuw i32 %143 to i8
  %371 = getelementptr i8, ptr %16, i64 15
  store i8 %370, ptr %365, align 1, !tbaa !52
  %372 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %160, i32 -1)
  %373 = extractvalue { i32, i1 } %372, 1, !nosanitize !46
  br i1 %373, label %.loopexit49, label %.lr.ph215, !prof !57, !nosanitize !46

.loopexit62:                                      ; preds = %.lr.ph215, %359
  %374 = phi i32 [ %367, %359 ], [ %397, %.lr.ph215 ]
  %375 = phi i32 [ %160, %359 ], [ %388, %.lr.ph215 ]
  %376 = phi i32 [ 0, %359 ], [ %392, %.lr.ph215 ]
  %377 = icmp eq i32 %143, %374
  br i1 %377, label %378, label %.loopexit60

378:                                              ; preds = %.loopexit62
  %379 = getelementptr i8, ptr %14, i64 15
  %380 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %375, i32 -1)
  %381 = extractvalue { i32, i1 } %380, 1, !nosanitize !46
  br i1 %381, label %.loopexit49, label %.lr.ph216, !prof !57, !nosanitize !46

382:                                              ; preds = %.lr.ph215
  store i8 %370, ptr %395, align 1, !tbaa !52
  %383 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %388, i32 -1)
  %384 = extractvalue { i32, i1 } %383, 1, !nosanitize !46
  br i1 %384, label %.loopexit49, label %.lr.ph215, !prof !47, !llvm.loop !58, !nosanitize !46

.loopexit49:                                      ; preds = %382, %399, %.loopexit53, %.preheader48.preheader, %.preheader48, %369, %378
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

.lr.ph215:                                        ; preds = %369, %382
  %385 = phi { i32, i1 } [ %383, %382 ], [ %372, %369 ]
  %386 = phi i32 [ %392, %382 ], [ 0, %369 ]
  %387 = phi i32 [ %397, %382 ], [ %367, %369 ]
  %388 = extractvalue { i32, i1 } %385, 0, !nosanitize !46
  %389 = sub nsw i32 %357, %387
  %390 = shl nsw i32 -1, %389
  %391 = add i32 %386, %361
  %392 = add i32 %391, %390
  %393 = sext i32 %388 to i64
  %394 = shl nsw i64 %393, 3
  %395 = getelementptr i8, ptr %371, i64 %394
  %396 = load i8, ptr %395, align 1, !tbaa !52
  %397 = zext i8 %396 to i32
  %398 = icmp samesign ult i32 %143, %397
  br i1 %398, label %382, label %.loopexit62, !llvm.loop !58

399:                                              ; preds = %.lr.ph216
  %400 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %403, i32 -1)
  %401 = extractvalue { i32, i1 } %400, 1, !nosanitize !46
  br i1 %401, label %.loopexit49, label %.lr.ph216, !prof !47, !llvm.loop !59, !nosanitize !46

.lr.ph216:                                        ; preds = %378, %399
  %402 = phi { i32, i1 } [ %400, %399 ], [ %380, %378 ]
  %403 = extractvalue { i32, i1 } %402, 0, !nosanitize !46
  %404 = sext i32 %403 to i64
  %405 = shl nsw i64 %404, 3
  %406 = getelementptr i8, ptr %379, i64 %405
  %407 = load i8, ptr %406, align 1, !tbaa !52
  %408 = zext i8 %407 to i32
  %409 = icmp eq i32 %143, %408
  br i1 %409, label %399, label %.loopexit60, !llvm.loop !59

.loopexit60:                                      ; preds = %.lr.ph216, %.loopexit62
  %410 = phi i32 [ %375, %.loopexit62 ], [ %403, %.lr.ph216 ]
  %411 = ashr i32 %376, %360
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %9, i8 -16, i64 56, i1 false)
  %412 = icmp sgt i32 %410, -1
  br i1 %412, label %413, label %.loopexit58

413:                                              ; preds = %.loopexit60
  %414 = zext nneg i32 %410 to i64
  %415 = getelementptr inbounds nuw i8, ptr %14, i64 15
  %416 = and i64 %414, 1
  %417 = icmp eq i64 %416, 0
  br i1 %417, label %418, label %431

418:                                              ; preds = %413
  %419 = shl nuw nsw i64 %414, 3
  %420 = getelementptr inbounds nuw i8, ptr %415, i64 %419
  %421 = load i8, ptr %420, align 1, !tbaa !52
  %422 = zext i8 %421 to i32
  %423 = icmp samesign ugt i32 %143, %422
  br i1 %423, label %424, label %428

424:                                              ; preds = %418
  %425 = sub nuw nsw i32 %143, %422
  %426 = zext nneg i32 %425 to i64
  %427 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %426
  store i32 %410, ptr %427, align 4, !tbaa !19
  br label %428

428:                                              ; preds = %424, %418
  %429 = phi i32 [ %143, %418 ], [ %422, %424 ]
  %430 = add nsw i64 %414, -1
  br label %431

431:                                              ; preds = %428, %413
  %432 = phi i64 [ %414, %413 ], [ %430, %428 ]
  %433 = phi i32 [ %143, %413 ], [ %429, %428 ]
  %434 = icmp eq i32 %410, 0
  br i1 %434, label %.loopexit58, label %.preheader57

.loopexit58:                                      ; preds = %464, %431, %.loopexit60
  %435 = icmp sgt i32 %411, 0
  br i1 %435, label %436, label %.loopexit56

436:                                              ; preds = %.loopexit58
  %437 = getelementptr inbounds nuw i8, ptr %16, i64 15
  %438 = getelementptr inbounds nuw i8, ptr %14, i64 15
  br label %475

.preheader57:                                     ; preds = %431, %464
  %439 = phi i64 [ %466, %464 ], [ %432, %431 ]
  %440 = phi i32 [ %465, %464 ], [ %433, %431 ]
  %441 = shl nuw nsw i64 %439, 3
  %442 = getelementptr inbounds nuw i8, ptr %415, i64 %441
  %443 = load i8, ptr %442, align 1, !tbaa !52
  %444 = zext i8 %443 to i32
  %445 = icmp ugt i32 %440, %444
  br i1 %445, label %446, label %451

446:                                              ; preds = %.preheader57
  %447 = sub nsw i32 %143, %444
  %448 = zext i32 %447 to i64
  %449 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %448
  %450 = trunc nuw nsw i64 %439 to i32
  store i32 %450, ptr %449, align 4, !tbaa !19
  br label %451

451:                                              ; preds = %446, %.preheader57
  %452 = phi i32 [ %440, %.preheader57 ], [ %444, %446 ]
  %453 = add nsw i64 %439, -1
  %454 = shl nuw nsw i64 %453, 3
  %455 = getelementptr inbounds nuw i8, ptr %415, i64 %454
  %456 = load i8, ptr %455, align 1, !tbaa !52
  %457 = zext i8 %456 to i32
  %458 = icmp samesign ugt i32 %452, %457
  br i1 %458, label %459, label %464

459:                                              ; preds = %451
  %460 = sub nsw i32 %143, %457
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %461
  %463 = trunc nuw nsw i64 %453 to i32
  store i32 %463, ptr %462, align 4, !tbaa !19
  br label %464

464:                                              ; preds = %459, %451
  %465 = phi i32 [ %452, %451 ], [ %457, %459 ]
  %466 = add nsw i64 %439, -2
  %467 = icmp sgt i64 %439, 1
  br i1 %467, label %.preheader57, label %.loopexit58, !llvm.loop !60

.loopexit56:                                      ; preds = %548, %.loopexit58
  %468 = phi i32 [ %411, %.loopexit58 ], [ %521, %548 ]
  %469 = icmp slt i32 %468, 0
  br i1 %469, label %470, label %.loopexit51

470:                                              ; preds = %.loopexit56
  %471 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %472 = load i32, ptr %471, align 4
  %473 = getelementptr i8, ptr %16, i64 15
  %474 = getelementptr i8, ptr %14, i64 15
  br label %587

475:                                              ; preds = %548, %436
  %476 = phi i32 [ %521, %548 ], [ %411, %436 ]
  %477 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %476, i1 true)
  %478 = icmp eq i32 %477, 31
  br i1 %478, label %.loopexit54.preheader, label %479

479:                                              ; preds = %475
  %480 = sub nuw nsw i32 32, %477
  %481 = zext nneg i32 %480 to i64
  br label %482

482:                                              ; preds = %502, %479
  %483 = phi i64 [ %481, %479 ], [ %486, %502 ]
  %484 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %483
  %485 = load i32, ptr %484, align 4, !tbaa !19
  %486 = add nsw i64 %483, -1
  %487 = and i64 %486, 4294967295
  %488 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %487
  %489 = load i32, ptr %488, align 4, !tbaa !19
  %490 = icmp eq i32 %485, -252645136
  br i1 %490, label %502, label %491

491:                                              ; preds = %482
  %492 = icmp eq i32 %489, -252645136
  br i1 %492, label %505, label %493

493:                                              ; preds = %491
  %494 = zext i32 %485 to i64
  %495 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %494
  %496 = load i32, ptr %495, align 4, !tbaa !41
  %497 = zext i32 %489 to i64
  %498 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %497
  %499 = load i32, ptr %498, align 4, !tbaa !41
  %500 = shl i32 %499, 1
  %501 = icmp ugt i32 %496, %500
  br i1 %501, label %502, label %505

502:                                              ; preds = %493, %482
  %503 = and i64 %486, 4294967294
  %504 = icmp eq i64 %503, 0
  br i1 %504, label %.loopexit54.preheader, label %482, !llvm.loop !61

505:                                              ; preds = %493, %491
  %506 = trunc nuw i64 %483 to i32
  %507 = icmp ult i64 %483, 13
  br i1 %507, label %.loopexit54.preheader, label %.loopexit53

.loopexit54.preheader:                            ; preds = %502, %505, %475
  %.ph = phi i64 [ 1, %475 ], [ %483, %505 ], [ 1, %502 ]
  br label %.loopexit54

.loopexit54:                                      ; preds = %.loopexit54.preheader, %512
  %508 = phi i64 [ %513, %512 ], [ %.ph, %.loopexit54.preheader ]
  %509 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %508
  %510 = load i32, ptr %509, align 4, !tbaa !19
  %511 = icmp eq i32 %510, -252645136
  br i1 %511, label %512, label %515

512:                                              ; preds = %.loopexit54
  %513 = add nuw nsw i64 %508, 1
  %514 = icmp eq i64 %513, 13
  br i1 %514, label %.loopexit53, label %.loopexit54, !llvm.loop !62

515:                                              ; preds = %.loopexit54
  %516 = trunc nuw nsw i64 %508 to i32
  br label %.loopexit53

.loopexit53:                                      ; preds = %512, %515, %505
  %517 = phi i32 [ %506, %505 ], [ %516, %515 ], [ 13, %512 ]
  %518 = add nsw i32 %517, -1
  %519 = shl nuw i32 1, %518
  %520 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %476, i32 %519), !nosanitize !46
  %521 = extractvalue { i32, i1 } %520, 0, !nosanitize !46
  %522 = extractvalue { i32, i1 } %520, 1, !nosanitize !46
  br i1 %522, label %.loopexit49, label %523, !prof !49, !nosanitize !46

523:                                              ; preds = %.loopexit53
  %524 = zext nneg i32 %517 to i64
  %525 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %524
  %526 = load i32, ptr %525, align 4, !tbaa !19
  %527 = zext i32 %526 to i64
  %528 = shl nuw nsw i64 %527, 3
  %529 = getelementptr inbounds nuw i8, ptr %437, i64 %528
  %530 = load i8, ptr %529, align 1, !tbaa !52
  %531 = add i8 %530, 1
  store i8 %531, ptr %529, align 1, !tbaa !52
  %532 = zext nneg i32 %518 to i64
  %533 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %532
  %534 = load i32, ptr %533, align 4, !tbaa !19
  %535 = icmp eq i32 %534, -252645136
  %536 = select i1 %535, i32 %526, i32 %534
  store i32 %536, ptr %533, align 4
  %537 = icmp eq i32 %526, 0
  br i1 %537, label %548, label %538

538:                                              ; preds = %523
  %539 = add i32 %526, -1
  %540 = zext i32 %539 to i64
  %541 = shl nuw nsw i64 %540, 3
  %542 = getelementptr inbounds nuw i8, ptr %438, i64 %541
  %543 = load i8, ptr %542, align 1, !tbaa !52
  %544 = zext i8 %543 to i32
  %545 = sub nsw i32 %143, %517
  %546 = icmp eq i32 %545, %544
  %547 = select i1 %546, i32 %539, i32 -252645136
  br label %548

548:                                              ; preds = %538, %523
  %549 = phi i32 [ %547, %538 ], [ -252645136, %523 ]
  store i32 %549, ptr %525, align 4
  %550 = icmp sgt i32 %521, 0
  br i1 %550, label %475, label %.loopexit56, !llvm.loop !63

551:                                              ; preds = %591, %587
  %552 = phi i32 [ %588, %587 ], [ %592, %591 ]
  %553 = phi i32 [ %589, %587 ], [ %598, %591 ]
  %554 = icmp eq i32 %552, -252645136
  br i1 %554, label %555, label %591

555:                                              ; preds = %551
  %556 = sext i32 %590 to i64
  %557 = shl nsw i64 %556, 3
  %558 = getelementptr i8, ptr %474, i64 %557
  %559 = load i8, ptr %558, align 1, !tbaa !52
  %560 = zext i8 %559 to i32
  %561 = icmp eq i32 %143, %560
  br i1 %561, label %.preheader48.preheader, label %.loopexit50

.preheader48.preheader:                           ; preds = %555
  %562 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %590, i32 -1)
  %563 = extractvalue { i32, i1 } %562, 1, !nosanitize !46
  br i1 %563, label %.loopexit49, label %.lr.ph217, !prof !57, !nosanitize !46

.preheader48:                                     ; preds = %.lr.ph217
  %564 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %567, i32 -1)
  %565 = extractvalue { i32, i1 } %564, 1, !nosanitize !46
  br i1 %565, label %.loopexit49, label %.lr.ph217, !prof !47, !llvm.loop !64, !nosanitize !46

.lr.ph217:                                        ; preds = %.preheader48.preheader, %.preheader48
  %566 = phi { i32, i1 } [ %564, %.preheader48 ], [ %562, %.preheader48.preheader ]
  %567 = extractvalue { i32, i1 } %566, 0, !nosanitize !46
  %568 = sext i32 %567 to i64
  %569 = shl nsw i64 %568, 3
  %570 = getelementptr i8, ptr %474, i64 %569
  %571 = load i8, ptr %570, align 1, !tbaa !52
  %572 = zext i8 %571 to i32
  %573 = icmp eq i32 %143, %572
  br i1 %573, label %.preheader48, label %.loopexit50, !llvm.loop !64

.loopexit50:                                      ; preds = %.lr.ph217, %555
  %574 = phi i32 [ %590, %555 ], [ %567, %.lr.ph217 ]
  %575 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %574, i32 1), !nosanitize !46
  %576 = extractvalue { i32, i1 } %575, 1, !nosanitize !46
  br i1 %576, label %577, label %578, !prof !49, !nosanitize !46

577:                                              ; preds = %.loopexit50
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !46
  unreachable, !nosanitize !46

578:                                              ; preds = %.loopexit50
  %579 = extractvalue { i32, i1 } %575, 0, !nosanitize !46
  %580 = sext i32 %579 to i64
  %581 = shl nsw i64 %580, 3
  %582 = getelementptr i8, ptr %473, i64 %581
  %583 = load i8, ptr %582, align 1, !tbaa !52
  %584 = add i8 %583, -1
  store i8 %584, ptr %582, align 1, !tbaa !52
  %585 = add nuw nsw i32 %553, 1
  %586 = icmp slt i32 %553, -1
  br i1 %586, label %587, label %.loopexit51, !llvm.loop !65

587:                                              ; preds = %578, %470
  %588 = phi i32 [ %472, %470 ], [ %579, %578 ]
  %589 = phi i32 [ %468, %470 ], [ %585, %578 ]
  %590 = phi i32 [ %410, %470 ], [ %574, %578 ]
  br label %551

591:                                              ; preds = %551
  %592 = add i32 %552, 1
  %593 = zext i32 %592 to i64
  %594 = shl nuw nsw i64 %593, 3
  %595 = getelementptr inbounds nuw i8, ptr %473, i64 %594
  %596 = load i8, ptr %595, align 1, !tbaa !52
  %597 = add i8 %596, -1
  store i8 %597, ptr %595, align 1, !tbaa !52
  %598 = add nuw nsw i32 %553, 1
  %599 = icmp eq i32 %553, -1
  br i1 %599, label %.loopexit51, label %551, !llvm.loop !65

.loopexit51:                                      ; preds = %578, %591, %.loopexit56
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %600

600:                                              ; preds = %.loopexit51, %.loopexit63
  %601 = phi i32 [ %143, %.loopexit51 ], [ %357, %.loopexit63 ]
  %602 = icmp samesign ugt i32 %601, 12
  br i1 %602, label %759, label %603

603:                                              ; preds = %600
  %604 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %7, i8 0, i64 26, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %8, i8 0, i64 26, i1 false)
  br i1 %303, label %.loopexit47, label %605

605:                                              ; preds = %603
  %606 = getelementptr inbounds nuw i8, ptr %14, i64 15
  %607 = getelementptr i8, ptr %14, i64 23
  %608 = load i8, ptr %606, align 1, !tbaa !52
  %609 = zext i8 %608 to i64
  %610 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %609
  %611 = load i16, ptr %610, align 2, !tbaa !31
  %612 = add i16 %611, 1
  store i16 %612, ptr %610, align 2, !tbaa !31
  %.not228 = icmp eq i64 %.pre-phi, 0
  br i1 %.not228, label %.loopexit47, label %.lr.ph218, !llvm.loop !66

.lr.ph218:                                        ; preds = %605
  br label %629, !llvm.loop !66

..loopexit47.loopexit_crit_edge219:               ; preds = %620, %629
  br label %.loopexit47, !llvm.loop !66

.loopexit47:                                      ; preds = %605, %..loopexit47.loopexit_crit_edge219, %603
  %613 = icmp eq i32 %601, 0
  br i1 %613, label %.loopexit45, label %614

614:                                              ; preds = %.loopexit47
  %615 = zext nneg i32 %601 to i64
  %616 = and i64 %615, 3
  %617 = icmp ult i32 %601, 4
  br i1 %617, label %.loopexit46, label %618

618:                                              ; preds = %614
  %619 = and i64 %615, 12
  br label %641

620:                                              ; preds = %629
  %621 = shl nuw nsw i64 %638, 3
  %622 = getelementptr inbounds nuw i8, ptr %606, i64 %621
  %623 = load i8, ptr %622, align 1, !tbaa !52
  %624 = zext i8 %623 to i64
  %625 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %624
  %626 = load i16, ptr %625, align 2, !tbaa !31
  %627 = add i16 %626, 1
  store i16 %627, ptr %625, align 2, !tbaa !31
  %628 = icmp samesign ult i64 %638, %.pre-phi
  br i1 %628, label %629, label %..loopexit47.loopexit_crit_edge219, !llvm.loop !66

629:                                              ; preds = %.lr.ph218, %620
  %630 = phi i64 [ 0, %.lr.ph218 ], [ %621, %620 ]
  %631 = phi i64 [ 0, %.lr.ph218 ], [ %638, %620 ]
  %632 = getelementptr i8, ptr %607, i64 %630
  %633 = load i8, ptr %632, align 1, !tbaa !52
  %634 = zext i8 %633 to i64
  %635 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %634
  %636 = load i16, ptr %635, align 2, !tbaa !31
  %637 = add i16 %636, 1
  store i16 %637, ptr %635, align 2, !tbaa !31
  %638 = add nuw nsw i64 %631, 2
  %639 = trunc i64 %638 to i32
  %640 = icmp slt i32 %160, %639
  br i1 %640, label %..loopexit47.loopexit_crit_edge219, label %620, !llvm.loop !66

641:                                              ; preds = %641, %618
  %642 = phi i64 [ %615, %618 ], [ %664, %641 ]
  %643 = phi i16 [ 0, %618 ], [ %668, %641 ]
  %644 = phi i64 [ 0, %618 ], [ %669, %641 ]
  %645 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %642
  store i16 %643, ptr %645, align 2, !tbaa !31
  %646 = add nsw i64 %642, -1
  %647 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %642
  %648 = load i16, ptr %647, align 2, !tbaa !31
  %649 = add i16 %648, %643
  %650 = lshr i16 %649, 1
  %651 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %646
  store i16 %650, ptr %651, align 2, !tbaa !31
  %652 = add nsw i64 %642, -2
  %653 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %646
  %654 = load i16, ptr %653, align 2, !tbaa !31
  %655 = add i16 %654, %650
  %656 = lshr i16 %655, 1
  %657 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %652
  store i16 %656, ptr %657, align 2, !tbaa !31
  %658 = add nsw i64 %642, -3
  %659 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %652
  %660 = load i16, ptr %659, align 2, !tbaa !31
  %661 = add i16 %660, %656
  %662 = lshr i16 %661, 1
  %663 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %658
  store i16 %662, ptr %663, align 2, !tbaa !31
  %664 = add nsw i64 %642, -4
  %665 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %658
  %666 = load i16, ptr %665, align 2, !tbaa !31
  %667 = add i16 %666, %662
  %668 = lshr i16 %667, 1
  %669 = add i64 %644, 4
  %670 = icmp eq i64 %669, %619
  br i1 %670, label %.loopexit46, label %641, !llvm.loop !67

.loopexit46:                                      ; preds = %641, %614
  %671 = phi i64 [ %615, %614 ], [ %664, %641 ]
  %672 = phi i16 [ 0, %614 ], [ %668, %641 ]
  %673 = icmp eq i64 %616, 0
  br i1 %673, label %.loopexit45, label %.preheader44

.preheader44:                                     ; preds = %.loopexit46, %.preheader44
  %674 = phi i64 [ %678, %.preheader44 ], [ %671, %.loopexit46 ]
  %675 = phi i16 [ %682, %.preheader44 ], [ %672, %.loopexit46 ]
  %676 = phi i64 [ %683, %.preheader44 ], [ 0, %.loopexit46 ]
  %677 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %674
  store i16 %675, ptr %677, align 2, !tbaa !31
  %678 = add nsw i64 %674, -1
  %679 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %674
  %680 = load i16, ptr %679, align 2, !tbaa !31
  %681 = add i16 %680, %675
  %682 = lshr i16 %681, 1
  %683 = add nuw nsw i64 %676, 1
  %684 = icmp eq i64 %683, %616
  br i1 %684, label %.loopexit45, label %.preheader44, !llvm.loop !68

.loopexit45:                                      ; preds = %.preheader44, %.loopexit46, %.loopexit47
  %685 = and i64 %24, 3
  %686 = icmp ult i32 %2, 3
  br i1 %686, label %.loopexit43, label %687

687:                                              ; preds = %.loopexit45
  %688 = and i64 %24, 508
  br label %689

689:                                              ; preds = %689, %687
  %690 = phi i64 [ 0, %687 ], [ %720, %689 ]
  %691 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %690
  %692 = getelementptr inbounds nuw i8, ptr %691, i64 6
  %693 = load i8, ptr %692, align 2, !tbaa !43
  %694 = zext i8 %693 to i64
  %695 = getelementptr inbounds nuw [8 x i8], ptr %604, i64 %694
  %696 = getelementptr inbounds nuw i8, ptr %691, i64 7
  %697 = load i8, ptr %696, align 1, !tbaa !52
  %698 = zext i8 %697 to i64
  store i64 %698, ptr %695, align 8, !tbaa !14
  %699 = getelementptr inbounds nuw i8, ptr %691, i64 14
  %700 = load i8, ptr %699, align 2, !tbaa !43
  %701 = zext i8 %700 to i64
  %702 = getelementptr inbounds nuw [8 x i8], ptr %604, i64 %701
  %703 = getelementptr inbounds nuw i8, ptr %691, i64 15
  %704 = load i8, ptr %703, align 1, !tbaa !52
  %705 = zext i8 %704 to i64
  store i64 %705, ptr %702, align 8, !tbaa !14
  %706 = getelementptr inbounds nuw i8, ptr %691, i64 22
  %707 = load i8, ptr %706, align 2, !tbaa !43
  %708 = zext i8 %707 to i64
  %709 = getelementptr inbounds nuw [8 x i8], ptr %604, i64 %708
  %710 = getelementptr inbounds nuw i8, ptr %691, i64 23
  %711 = load i8, ptr %710, align 1, !tbaa !52
  %712 = zext i8 %711 to i64
  store i64 %712, ptr %709, align 8, !tbaa !14
  %713 = getelementptr inbounds nuw i8, ptr %691, i64 30
  %714 = load i8, ptr %713, align 2, !tbaa !43
  %715 = zext i8 %714 to i64
  %716 = getelementptr inbounds nuw [8 x i8], ptr %604, i64 %715
  %717 = getelementptr inbounds nuw i8, ptr %691, i64 31
  %718 = load i8, ptr %717, align 1, !tbaa !52
  %719 = zext i8 %718 to i64
  store i64 %719, ptr %716, align 8, !tbaa !14
  %720 = add nuw i64 %690, 4
  %721 = icmp eq i64 %720, %688
  br i1 %721, label %.loopexit43, label %689, !llvm.loop !69

.loopexit43:                                      ; preds = %689, %.loopexit45
  %722 = phi i64 [ 0, %.loopexit45 ], [ %688, %689 ]
  %723 = icmp eq i64 %685, 0
  br i1 %723, label %.loopexit.preheader, label %.preheader

.preheader:                                       ; preds = %.loopexit43, %.preheader
  %724 = phi i64 [ %734, %.preheader ], [ %722, %.loopexit43 ]
  %725 = phi i64 [ %735, %.preheader ], [ 0, %.loopexit43 ]
  %726 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %724
  %727 = getelementptr inbounds nuw i8, ptr %726, i64 6
  %728 = load i8, ptr %727, align 2, !tbaa !43
  %729 = zext i8 %728 to i64
  %730 = getelementptr inbounds nuw [8 x i8], ptr %604, i64 %729
  %731 = getelementptr inbounds nuw i8, ptr %726, i64 7
  %732 = load i8, ptr %731, align 1, !tbaa !52
  %733 = zext i8 %732 to i64
  store i64 %733, ptr %730, align 8, !tbaa !14
  %734 = add nuw nsw i64 %724, 1
  %735 = add nuw nsw i64 %725, 1
  %736 = icmp eq i64 %735, %685
  br i1 %736, label %.loopexit.preheader, label %.preheader, !llvm.loop !70

.loopexit.preheader:                              ; preds = %.preheader, %.loopexit43
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.preheader, %750
  %737 = phi i64 [ %751, %750 ], [ 0, %.loopexit.preheader ]
  %738 = getelementptr inbounds nuw [8 x i8], ptr %604, i64 %737
  %739 = load i64, ptr %738, align 8, !tbaa !14
  %740 = and i64 %739, 255
  %741 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %740
  %742 = load i16, ptr %741, align 2, !tbaa !31
  %743 = add i16 %742, 1
  store i16 %743, ptr %741, align 2, !tbaa !31
  %744 = icmp eq i64 %740, 0
  br i1 %744, label %750, label %745

745:                                              ; preds = %.loopexit
  %746 = zext i16 %742 to i64
  %747 = sub nsw i64 64, %740
  %748 = shl i64 %746, %747
  %749 = or i64 %748, %739
  store i64 %749, ptr %738, align 8, !tbaa !14
  br label %750

750:                                              ; preds = %745, %.loopexit
  %751 = add nuw nsw i64 %737, 1
  %752 = icmp eq i64 %751, %24
  br i1 %752, label %753, label %.loopexit, !llvm.loop !71

753:                                              ; preds = %750
  %754 = trunc nuw nsw i32 %601 to i8
  %755 = trunc nuw i32 %2 to i8
  store i8 %754, ptr %0, align 8
  %756 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %755, ptr %756, align 1
  %757 = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %757, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %758 = zext nneg i32 %601 to i64
  br label %759

759:                                              ; preds = %753, %600, %19, %6
  %760 = phi i64 [ %758, %753 ], [ -66, %6 ], [ -46, %19 ], [ -1, %600 ]
  ret i64 %760
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local range(i64 0, 2305843009213693952) i64 @HUF_estimateCompressedSize(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %60, label %6

6:                                                ; preds = %3
  switch i32 %2, label %7 [
    i32 2147483647, label %39
    i32 5, label %39
    i32 4, label %39
    i32 3, label %39
    i32 2, label %39
    i32 1, label %39
    i32 0, label %39
  ]

7:                                                ; preds = %6
  %8 = add nuw i32 %2, 1
  %9 = zext i32 %8 to i64
  %10 = and i64 %9, 3
  %11 = icmp eq i64 %10, 0
  %12 = select i1 %11, i64 4, i64 %10
  %13 = sub nuw nsw i64 %9, %12
  br label %14

14:                                               ; preds = %14, %7
  %15 = phi i64 [ 0, %7 ], [ %34, %14 ]
  %16 = phi <2 x i64> [ zeroinitializer, %7 ], [ %32, %14 ]
  %17 = phi <2 x i64> [ zeroinitializer, %7 ], [ %33, %14 ]
  %18 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %15
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %20 = load <2 x i64>, ptr %18, align 8, !tbaa !14
  %21 = load <2 x i64>, ptr %19, align 8, !tbaa !14
  %22 = and <2 x i64> %20, splat (i64 255)
  %23 = and <2 x i64> %21, splat (i64 255)
  %24 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %15
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %26 = load <2 x i32>, ptr %24, align 4, !tbaa !19
  %27 = load <2 x i32>, ptr %25, align 4, !tbaa !19
  %28 = zext <2 x i32> %26 to <2 x i64>
  %29 = zext <2 x i32> %27 to <2 x i64>
  %30 = mul nuw nsw <2 x i64> %22, %28
  %31 = mul nuw nsw <2 x i64> %23, %29
  %32 = add <2 x i64> %30, %16
  %33 = add <2 x i64> %31, %17
  %34 = add nuw i64 %15, 4
  %35 = icmp eq i64 %34, %13
  br i1 %35, label %36, label %14, !llvm.loop !72

36:                                               ; preds = %14
  %37 = add <2 x i64> %33, %32
  %38 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %37)
  br label %39

39:                                               ; preds = %36, %6, %6, %6, %6, %6, %6, %6
  %40 = phi i64 [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ %13, %36 ]
  %41 = phi i64 [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ %38, %36 ]
  %42 = icmp eq i64 %40, 2147483647
  br i1 %42, label %._crit_edge, label %.lr.ph, !prof !57, !nosanitize !46

43:                                               ; preds = %.lr.ph
  %44 = icmp eq i64 %50, 2147483647
  br i1 %44, label %._crit_edge, label %.lr.ph, !prof !47, !llvm.loop !73, !nosanitize !46

._crit_edge:                                      ; preds = %43, %39
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !46
  unreachable, !nosanitize !46

.lr.ph:                                           ; preds = %39, %43
  %45 = phi i64 [ %56, %43 ], [ %41, %39 ]
  %46 = phi i64 [ %50, %43 ], [ %40, %39 ]
  %47 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !14
  %49 = and i64 %48, 255
  %50 = add nuw nsw i64 %46, 1
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %46
  %53 = load i32, ptr %52, align 4, !tbaa !19
  %54 = zext i32 %53 to i64
  %55 = mul nuw nsw i64 %49, %54
  %56 = add i64 %55, %45
  %57 = icmp slt i32 %2, %51
  br i1 %57, label %58, label %43, !llvm.loop !73

58:                                               ; preds = %.lr.ph
  %59 = lshr i64 %56, 3
  br label %60

60:                                               ; preds = %58, %3
  %61 = phi i64 [ 0, %3 ], [ %59, %58 ]
  ret i64 %61
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @HUF_validateCTable(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i32
  %6 = lshr i32 %5, 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = and i32 %6, 255
  %9 = icmp ult i32 %8, %2
  br i1 %9, label %64, label %10

10:                                               ; preds = %3
  %11 = add nuw nsw i32 %2, 1
  %12 = zext nneg i32 %11 to i64
  %13 = icmp samesign ult i32 %2, 3
  br i1 %13, label %.preheader, label %14

14:                                               ; preds = %10
  %15 = and i64 %12, 2147483644
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %40, %16 ]
  %18 = phi <2 x i32> [ zeroinitializer, %14 ], [ %38, %16 ]
  %19 = phi <2 x i32> [ zeroinitializer, %14 ], [ %39, %16 ]
  %20 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %17
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %22 = load <2 x i32>, ptr %20, align 4, !tbaa !19
  %23 = load <2 x i32>, ptr %21, align 4, !tbaa !19
  %24 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %17
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 16
  %26 = load <2 x i64>, ptr %24, align 8, !tbaa !14
  %27 = load <2 x i64>, ptr %25, align 8, !tbaa !14
  %28 = and <2 x i64> %26, splat (i64 255)
  %29 = and <2 x i64> %27, splat (i64 255)
  %30 = icmp ne <2 x i32> %22, zeroinitializer
  %31 = icmp ne <2 x i32> %23, zeroinitializer
  %32 = icmp eq <2 x i64> %28, zeroinitializer
  %33 = icmp eq <2 x i64> %29, zeroinitializer
  %34 = and <2 x i1> %30, %32
  %35 = and <2 x i1> %31, %33
  %36 = zext <2 x i1> %34 to <2 x i32>
  %37 = zext <2 x i1> %35 to <2 x i32>
  %38 = or <2 x i32> %18, %36
  %39 = or <2 x i32> %19, %37
  %40 = add nuw nsw i64 %17, 4
  %41 = icmp eq i64 %40, %15
  br i1 %41, label %42, label %16, !llvm.loop !74

42:                                               ; preds = %16
  %43 = or <2 x i32> %39, %38
  %44 = tail call i32 @llvm.vector.reduce.or.v2i32(<2 x i32> %43)
  %45 = icmp eq i64 %15, %12
  br i1 %45, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %42, %10
  %.ph = phi i64 [ %15, %42 ], [ 0, %10 ]
  %.ph11 = phi i32 [ %44, %42 ], [ 0, %10 ]
  br label %46

46:                                               ; preds = %.preheader, %46
  %47 = phi i64 [ %54, %46 ], [ %.ph, %.preheader ]
  %48 = phi i32 [ %59, %46 ], [ %.ph11, %.preheader ]
  %49 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %47
  %50 = load i32, ptr %49, align 4, !tbaa !19
  %51 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %47
  %52 = load i64, ptr %51, align 8, !tbaa !14
  %53 = and i64 %52, 255
  %54 = add nuw nsw i64 %47, 1
  %55 = icmp ne i32 %50, 0
  %56 = icmp eq i64 %53, 0
  %57 = and i1 %55, %56
  %58 = zext i1 %57 to i32
  %59 = or i32 %48, %58
  %60 = icmp eq i64 %54, %12
  br i1 %60, label %.loopexit, label %46, !llvm.loop !75

.loopexit:                                        ; preds = %46, %42
  %61 = phi i32 [ %44, %42 ], [ %59, %46 ]
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  br label %64

64:                                               ; preds = %.loopexit, %3
  %65 = phi i32 [ %63, %.loopexit ], [ 0, %3 ]
  ret i32 %65
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @HUF_compressBound(i64 noundef %0) local_unnamed_addr #10 {
  %2 = lshr i64 %0, 8
  %3 = add i64 %0, 137
  %4 = add i64 %3, %2
  ret i64 %4
}

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define dso_local i64 @HUF_compress1X_usingCTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #11 {
  %7 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  ret i64 %7
}

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define internal fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i32 noundef %5) unnamed_addr #11 {
  %7 = and i32 %5, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  br label %2365

11:                                               ; preds = %6
  %12 = load i64, ptr %4, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 255
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %16 = icmp ult i64 %1, 8
  br i1 %16, label %2365, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %19 = getelementptr inbounds i8, ptr %18, i64 -8
  %20 = icmp eq i64 %1, 8
  br i1 %20, label %2365, label %21

21:                                               ; preds = %17
  %22 = and i64 %12, 255
  %23 = mul i64 %22, %3
  %24 = lshr i64 %23, 3
  %25 = add nuw nsw i64 %24, 8
  %26 = icmp ult i64 %1, %25
  %27 = icmp samesign ugt i32 %14, 11
  %28 = select i1 %26, i1 true, i1 %27
  %29 = trunc i64 %3 to i32
  br i1 %28, label %30, label %275

30:                                               ; preds = %21
  %31 = srem i32 %29, 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %86

33:                                               ; preds = %30
  %34 = icmp eq i32 %31, 1
  br i1 %34, label %.thread, label %35

.loopexit:                                        ; preds = %168, %99, %96, %93
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

35:                                               ; preds = %33
  %36 = and i32 %31, 1
  %37 = shl i64 %3, 32
  %sext186 = add i64 %37, -4294967296
  %38 = ashr exact i64 %sext186, 32
  %39 = getelementptr inbounds i8, ptr %2, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !5
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !14
  %44 = shl i64 %3, 32
  %sext187 = add i64 %44, -8589934592
  %45 = ashr exact i64 %sext187, 32
  %46 = getelementptr inbounds i8, ptr %2, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !5
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !14
  %51 = add i64 %43, %50
  %52 = and i64 %43, -256
  %53 = and i64 %50, 255
  %54 = lshr i64 %52, %53
  %55 = and i64 %50, -256
  %56 = or i64 %54, %55
  %57 = add i64 %3, -2
  %58 = icmp eq i32 %36, 0
  br i1 %58, label %74, label %.thread

.thread:                                          ; preds = %33, %35
  %59 = phi i64 [ %51, %35 ], [ 0, %33 ]
  %60 = phi i64 [ %56, %35 ], [ 0, %33 ]
  %61 = phi i64 [ %57, %35 ], [ %3, %33 ]
  %62 = shl i64 %61, 32
  %sext188 = add i64 %62, -4294967296
  %63 = ashr exact i64 %sext188, 32
  %64 = getelementptr inbounds i8, ptr %2, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !5
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !14
  %69 = and i64 %68, 255
  %70 = lshr i64 %60, %69
  %71 = and i64 %68, -256
  %72 = or i64 %70, %71
  %73 = add i64 %68, %59
  br label %74

74:                                               ; preds = %.thread, %35
  %75 = phi i64 [ %56, %35 ], [ %72, %.thread ]
  %76 = phi i64 [ %51, %35 ], [ %73, %.thread ]
  %77 = sub nsw i32 %29, %31
  %78 = and i64 %76, 255
  %79 = lshr i64 %78, 3
  %80 = sub nsw i64 64, %78
  %81 = lshr i64 %75, %80
  %82 = and i64 %76, 7
  store i64 %81, ptr %0, align 1, !tbaa !14
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 %79
  %84 = icmp ugt ptr %83, %19
  %85 = select i1 %84, ptr %19, ptr %83
  br label %86

86:                                               ; preds = %74, %30
  %87 = phi i64 [ 0, %30 ], [ %82, %74 ]
  %88 = phi ptr [ %0, %30 ], [ %85, %74 ]
  %89 = phi i64 [ 0, %30 ], [ %75, %74 ]
  %90 = phi i32 [ %29, %30 ], [ %77, %74 ]
  %91 = and i32 %90, 7
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %156, label %93

93:                                               ; preds = %86
  %94 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %90, i32 -2)
  %95 = extractvalue { i32, i1 } %94, 1, !nosanitize !46
  br i1 %95, label %.loopexit, label %96, !prof !49, !nosanitize !46

96:                                               ; preds = %93
  %97 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %90, i32 -3)
  %98 = extractvalue { i32, i1 } %97, 1, !nosanitize !46
  br i1 %98, label %.loopexit, label %99, !prof !49, !nosanitize !46

99:                                               ; preds = %96
  %100 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %90, i32 -4)
  %101 = extractvalue { i32, i1 } %100, 1, !nosanitize !46
  br i1 %101, label %.loopexit, label %102, !prof !49, !nosanitize !46

102:                                              ; preds = %99
  %103 = extractvalue { i32, i1 } %97, 0, !nosanitize !46
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, ptr %2, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !5
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %107
  %109 = load i64, ptr %108, align 8, !tbaa !14
  %110 = extractvalue { i32, i1 } %94, 0, !nosanitize !46
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, ptr %2, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !5
  %114 = zext i8 %113 to i64
  %115 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !14
  %117 = sext i32 %90 to i64
  %118 = getelementptr i8, ptr %2, i64 %117
  %119 = getelementptr i8, ptr %118, i64 -1
  %120 = load i8, ptr %119, align 1, !tbaa !5
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %121
  %123 = load i64, ptr %122, align 8, !tbaa !14
  %124 = and i64 %123, 255
  %125 = lshr i64 %89, %124
  %126 = or i64 %125, %123
  %127 = and i64 %116, 255
  %128 = lshr i64 %126, %127
  %129 = or i64 %128, %116
  %130 = and i64 %109, 255
  %131 = lshr i64 %129, %130
  %132 = or i64 %131, %109
  %133 = extractvalue { i32, i1 } %100, 0, !nosanitize !46
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, ptr %2, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !5
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %137
  %139 = load i64, ptr %138, align 8, !tbaa !14
  %140 = and i64 %139, 255
  %141 = lshr i64 %132, %140
  %142 = and i64 %139, -256
  %143 = or i64 %141, %142
  %144 = add i64 %109, %87
  %145 = add i64 %144, %116
  %146 = add i64 %145, %123
  %147 = add i64 %146, %139
  %148 = and i64 %147, 255
  %149 = lshr i64 %148, 3
  %150 = sub nsw i64 64, %148
  %151 = lshr i64 %143, %150
  %152 = and i64 %147, 7
  store i64 %151, ptr %88, align 1, !tbaa !14
  %153 = getelementptr inbounds nuw i8, ptr %88, i64 %149
  %154 = icmp ugt ptr %153, %19
  %155 = select i1 %154, ptr %19, ptr %153
  br label %156

156:                                              ; preds = %102, %86
  %157 = phi i64 [ %87, %86 ], [ %152, %102 ]
  %158 = phi ptr [ %88, %86 ], [ %155, %102 ]
  %159 = phi i64 [ %89, %86 ], [ %143, %102 ]
  %160 = phi i32 [ %90, %86 ], [ %133, %102 ]
  %161 = getelementptr i8, ptr %2, i64 -8
  %162 = icmp sgt i32 %160, 0
  br i1 %162, label %163, label %.loopexit57

163:                                              ; preds = %156
  %164 = zext nneg i32 %160 to i64
  %165 = getelementptr i8, ptr %2, i64 -1
  %166 = getelementptr i8, ptr %2, i64 -2
  %167 = getelementptr i8, ptr %2, i64 -3
  br label %168

168:                                              ; preds = %217, %163
  %169 = phi i64 [ %164, %163 ], [ %273, %217 ]
  %170 = phi i64 [ %159, %163 ], [ %263, %217 ]
  %171 = phi ptr [ %158, %163 ], [ %272, %217 ]
  %172 = phi i64 [ %157, %163 ], [ %269, %217 ]
  %173 = getelementptr i8, ptr %165, i64 %169
  %174 = load i8, ptr %173, align 1, !tbaa !5
  %175 = zext i8 %174 to i64
  %176 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %175
  %177 = load i64, ptr %176, align 8, !tbaa !14
  %178 = and i64 %177, 255
  %179 = lshr i64 %170, %178
  %180 = or i64 %179, %177
  %181 = add i64 %177, %172
  %182 = getelementptr i8, ptr %166, i64 %169
  %183 = load i8, ptr %182, align 1, !tbaa !5
  %184 = zext i8 %183 to i64
  %185 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %184
  %186 = load i64, ptr %185, align 8, !tbaa !14
  %187 = and i64 %186, 255
  %188 = lshr i64 %180, %187
  %189 = or i64 %188, %186
  %190 = add i64 %181, %186
  %191 = getelementptr i8, ptr %167, i64 %169
  %192 = load i8, ptr %191, align 1, !tbaa !5
  %193 = zext i8 %192 to i64
  %194 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %193
  %195 = load i64, ptr %194, align 8, !tbaa !14
  %196 = and i64 %195, 255
  %197 = lshr i64 %189, %196
  %198 = or i64 %197, %195
  %199 = add i64 %190, %195
  %200 = add nsw i64 %169, -4
  %201 = getelementptr inbounds i8, ptr %2, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !5
  %203 = zext i8 %202 to i64
  %204 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %203
  %205 = load i64, ptr %204, align 8, !tbaa !14
  %206 = and i64 %205, 255
  %207 = lshr i64 %198, %206
  %208 = and i64 %205, -256
  %209 = or i64 %207, %208
  %210 = add i64 %199, %205
  %211 = and i64 %210, 255
  %212 = sub nsw i64 64, %211
  %213 = lshr i64 %209, %212
  store i64 %213, ptr %171, align 1, !tbaa !14
  %214 = trunc nsw i64 %200 to i32
  %215 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %214, i32 -1)
  %216 = extractvalue { i32, i1 } %215, 1, !nosanitize !46
  br i1 %216, label %.loopexit, label %217, !prof !49, !nosanitize !46

217:                                              ; preds = %168
  %218 = lshr i64 %211, 3
  %219 = getelementptr inbounds nuw i8, ptr %171, i64 %218
  %220 = icmp ugt ptr %219, %19
  %221 = select i1 %220, ptr %19, ptr %219
  %222 = and i64 %210, 7
  %223 = shl i64 %169, 32
  %sext49 = add i64 %223, -25769803776
  %224 = ashr exact i64 %sext49, 32
  %225 = getelementptr inbounds i8, ptr %2, i64 %224
  %226 = load i8, ptr %225, align 1, !tbaa !5
  %227 = zext i8 %226 to i64
  %228 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %227
  %229 = load i64, ptr %228, align 8, !tbaa !14
  %230 = extractvalue { i32, i1 } %215, 0, !nosanitize !46
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, ptr %2, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !5
  %234 = zext i8 %233 to i64
  %235 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %234
  %236 = load i64, ptr %235, align 8, !tbaa !14
  %237 = add i64 %236, %229
  %238 = and i64 %229, 255
  %239 = lshr i64 %236, %238
  %240 = or i64 %239, %229
  %sext50 = add i64 %223, -30064771072
  %241 = ashr exact i64 %sext50, 32
  %242 = getelementptr inbounds i8, ptr %2, i64 %241
  %243 = load i8, ptr %242, align 1, !tbaa !5
  %244 = zext i8 %243 to i64
  %245 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %244
  %246 = load i64, ptr %245, align 8, !tbaa !14
  %247 = and i64 %246, 255
  %248 = lshr i64 %240, %247
  %249 = or i64 %248, %246
  %250 = add i64 %237, %246
  %251 = getelementptr i8, ptr %161, i64 %169
  %252 = load i8, ptr %251, align 1, !tbaa !5
  %253 = zext i8 %252 to i64
  %254 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %253
  %255 = load i64, ptr %254, align 8, !tbaa !14
  %256 = and i64 %255, 255
  %257 = lshr i64 %249, %256
  %258 = and i64 %255, -256
  %259 = or i64 %257, %258
  %260 = add i64 %250, %255
  %261 = and i64 %260, 255
  %262 = lshr i64 %209, %261
  %263 = or i64 %259, %262
  %264 = add i64 %260, %222
  %265 = and i64 %264, 255
  %266 = lshr i64 %265, 3
  %267 = sub nsw i64 64, %265
  %268 = lshr i64 %263, %267
  %269 = and i64 %264, 7
  store i64 %268, ptr %221, align 1, !tbaa !14
  %270 = getelementptr inbounds nuw i8, ptr %221, i64 %266
  %271 = icmp ugt ptr %270, %19
  %272 = select i1 %271, ptr %19, ptr %270
  %273 = add nsw i64 %169, -8
  %274 = icmp sgt i64 %169, 8
  br i1 %274, label %168, label %.loopexit57, !llvm.loop !76

275:                                              ; preds = %21
  switch i32 %14, label %1922 [
    i32 11, label %276
    i32 10, label %567
    i32 9, label %855
    i32 8, label %1180
    i32 7, label %1536
  ]

276:                                              ; preds = %275
  %277 = srem i32 %29, 5
  %278 = icmp sgt i32 %277, 0
  br i1 %278, label %279, label %347

279:                                              ; preds = %276
  %280 = xor i32 %29, -2147483648
  %281 = add nsw i32 %277, -1
  %282 = icmp ugt i32 %280, %281
  br i1 %282, label %283, label %.loopexit60, !prof !77, !nosanitize !46

283:                                              ; preds = %279
  %284 = and i32 %277, 1
  %285 = icmp eq i32 %281, 0
  br i1 %285, label %.thread51, label %286

286:                                              ; preds = %283
  %287 = and i32 %277, 2147483646
  br label %288

288:                                              ; preds = %288, %286
  %289 = phi i32 [ %29, %286 ], [ %305, %288 ]
  %290 = phi i64 [ 0, %286 ], [ %315, %288 ]
  %291 = phi i64 [ 0, %286 ], [ %316, %288 ]
  %292 = phi i32 [ 0, %286 ], [ %317, %288 ]
  %293 = add i32 %289, -1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8, ptr %2, i64 %294
  %296 = load i8, ptr %295, align 1, !tbaa !5
  %297 = zext i8 %296 to i64
  %298 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %297
  %299 = load i64, ptr %298, align 8, !tbaa !14
  %300 = and i64 %299, 255
  %301 = lshr i64 %290, %300
  %302 = and i64 %299, -256
  %303 = or i64 %301, %302
  %304 = add i64 %299, %291
  %305 = add i32 %289, -2
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8, ptr %2, i64 %306
  %308 = load i8, ptr %307, align 1, !tbaa !5
  %309 = zext i8 %308 to i64
  %310 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %309
  %311 = load i64, ptr %310, align 8, !tbaa !14
  %312 = and i64 %311, 255
  %313 = lshr i64 %303, %312
  %314 = and i64 %311, -256
  %315 = or i64 %313, %314
  %316 = add i64 %304, %311
  %317 = add i32 %292, 2
  %318 = icmp eq i32 %317, %287
  br i1 %318, label %319, label %288, !llvm.loop !78

.loopexit60:                                      ; preds = %445, %366, %363, %360, %357, %354, %279
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

319:                                              ; preds = %288
  %320 = sub i32 %29, %287
  %321 = icmp eq i32 %284, 0
  br i1 %321, label %337, label %.thread51

.thread51:                                        ; preds = %283, %319
  %322 = phi i64 [ %316, %319 ], [ 0, %283 ]
  %323 = phi i64 [ %315, %319 ], [ 0, %283 ]
  %324 = phi i32 [ %320, %319 ], [ %29, %283 ]
  %325 = add i32 %324, -1
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i8, ptr %2, i64 %326
  %328 = load i8, ptr %327, align 1, !tbaa !5
  %329 = zext i8 %328 to i64
  %330 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %329
  %331 = load i64, ptr %330, align 8, !tbaa !14
  %332 = and i64 %331, 255
  %333 = lshr i64 %323, %332
  %334 = and i64 %331, -256
  %335 = or i64 %333, %334
  %336 = add i64 %331, %322
  br label %337

337:                                              ; preds = %.thread51, %319
  %338 = phi i64 [ %315, %319 ], [ %335, %.thread51 ]
  %339 = phi i64 [ %316, %319 ], [ %336, %.thread51 ]
  %340 = sub nsw i32 %29, %277
  %341 = and i64 %339, 255
  %342 = lshr i64 %341, 3
  %343 = sub nsw i64 64, %341
  %344 = lshr i64 %338, %343
  %345 = and i64 %339, 7
  store i64 %344, ptr %0, align 1, !tbaa !14
  %346 = getelementptr inbounds nuw i8, ptr %0, i64 %342
  br label %347

347:                                              ; preds = %337, %276
  %348 = phi i64 [ %345, %337 ], [ 0, %276 ]
  %349 = phi ptr [ %346, %337 ], [ %0, %276 ]
  %350 = phi i64 [ %338, %337 ], [ 0, %276 ]
  %351 = phi i32 [ %340, %337 ], [ %29, %276 ]
  %352 = srem i32 %351, 10
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %432, label %354

354:                                              ; preds = %347
  %355 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %351, i32 -1)
  %356 = extractvalue { i32, i1 } %355, 1, !nosanitize !46
  br i1 %356, label %.loopexit60, label %357, !prof !49, !nosanitize !46

357:                                              ; preds = %354
  %358 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %351, i32 -2)
  %359 = extractvalue { i32, i1 } %358, 1, !nosanitize !46
  br i1 %359, label %.loopexit60, label %360, !prof !49, !nosanitize !46

360:                                              ; preds = %357
  %361 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %351, i32 -3)
  %362 = extractvalue { i32, i1 } %361, 1, !nosanitize !46
  br i1 %362, label %.loopexit60, label %363, !prof !49, !nosanitize !46

363:                                              ; preds = %360
  %364 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %351, i32 -4)
  %365 = extractvalue { i32, i1 } %364, 1, !nosanitize !46
  br i1 %365, label %.loopexit60, label %366, !prof !49, !nosanitize !46

366:                                              ; preds = %363
  %367 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %351, i32 -5)
  %368 = extractvalue { i32, i1 } %367, 1, !nosanitize !46
  br i1 %368, label %.loopexit60, label %369, !prof !49, !nosanitize !46

369:                                              ; preds = %366
  %370 = extractvalue { i32, i1 } %364, 0, !nosanitize !46
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, ptr %2, i64 %371
  %373 = load i8, ptr %372, align 1, !tbaa !5
  %374 = zext i8 %373 to i64
  %375 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %374
  %376 = load i64, ptr %375, align 8, !tbaa !14
  %377 = extractvalue { i32, i1 } %361, 0, !nosanitize !46
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8, ptr %2, i64 %378
  %380 = load i8, ptr %379, align 1, !tbaa !5
  %381 = zext i8 %380 to i64
  %382 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %381
  %383 = load i64, ptr %382, align 8, !tbaa !14
  %384 = extractvalue { i32, i1 } %358, 0, !nosanitize !46
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8, ptr %2, i64 %385
  %387 = load i8, ptr %386, align 1, !tbaa !5
  %388 = zext i8 %387 to i64
  %389 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %388
  %390 = load i64, ptr %389, align 8, !tbaa !14
  %391 = extractvalue { i32, i1 } %355, 0, !nosanitize !46
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8, ptr %2, i64 %392
  %394 = load i8, ptr %393, align 1, !tbaa !5
  %395 = zext i8 %394 to i64
  %396 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %395
  %397 = load i64, ptr %396, align 8, !tbaa !14
  %398 = and i64 %397, 255
  %399 = lshr i64 %350, %398
  %400 = or i64 %399, %397
  %401 = and i64 %390, 255
  %402 = lshr i64 %400, %401
  %403 = or i64 %402, %390
  %404 = and i64 %383, 255
  %405 = lshr i64 %403, %404
  %406 = or i64 %405, %383
  %407 = and i64 %376, 255
  %408 = lshr i64 %406, %407
  %409 = or i64 %408, %376
  %410 = extractvalue { i32, i1 } %367, 0, !nosanitize !46
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i8, ptr %2, i64 %411
  %413 = load i8, ptr %412, align 1, !tbaa !5
  %414 = zext i8 %413 to i64
  %415 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %414
  %416 = load i64, ptr %415, align 8, !tbaa !14
  %417 = and i64 %416, 255
  %418 = lshr i64 %409, %417
  %419 = and i64 %416, -256
  %420 = or i64 %418, %419
  %421 = add i64 %376, %348
  %422 = add i64 %421, %383
  %423 = add i64 %422, %390
  %424 = add i64 %423, %397
  %425 = add i64 %424, %416
  %426 = and i64 %425, 255
  %427 = lshr i64 %426, 3
  %428 = sub nsw i64 64, %426
  %429 = lshr i64 %420, %428
  %430 = and i64 %425, 7
  store i64 %429, ptr %349, align 1, !tbaa !14
  %431 = getelementptr inbounds nuw i8, ptr %349, i64 %427
  br label %432

432:                                              ; preds = %369, %347
  %433 = phi i64 [ %348, %347 ], [ %430, %369 ]
  %434 = phi ptr [ %349, %347 ], [ %431, %369 ]
  %435 = phi i64 [ %350, %347 ], [ %420, %369 ]
  %436 = phi i32 [ %351, %347 ], [ %410, %369 ]
  %437 = getelementptr i8, ptr %2, i64 -10
  %438 = icmp sgt i32 %436, 0
  br i1 %438, label %439, label %.loopexit57

439:                                              ; preds = %432
  %440 = zext nneg i32 %436 to i64
  %441 = getelementptr i8, ptr %2, i64 -1
  %442 = getelementptr i8, ptr %2, i64 -2
  %443 = getelementptr i8, ptr %2, i64 -3
  %444 = getelementptr i8, ptr %2, i64 -4
  br label %445

445:                                              ; preds = %503, %439
  %446 = phi i64 [ %440, %439 ], [ %565, %503 ]
  %447 = phi i64 [ %435, %439 ], [ %557, %503 ]
  %448 = phi ptr [ %434, %439 ], [ %564, %503 ]
  %449 = phi i64 [ %433, %439 ], [ %563, %503 ]
  %450 = getelementptr i8, ptr %441, i64 %446
  %451 = load i8, ptr %450, align 1, !tbaa !5
  %452 = zext i8 %451 to i64
  %453 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %452
  %454 = load i64, ptr %453, align 8, !tbaa !14
  %455 = and i64 %454, 255
  %456 = lshr i64 %447, %455
  %457 = or i64 %456, %454
  %458 = add i64 %454, %449
  %459 = getelementptr i8, ptr %442, i64 %446
  %460 = load i8, ptr %459, align 1, !tbaa !5
  %461 = zext i8 %460 to i64
  %462 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %461
  %463 = load i64, ptr %462, align 8, !tbaa !14
  %464 = and i64 %463, 255
  %465 = lshr i64 %457, %464
  %466 = or i64 %465, %463
  %467 = add i64 %458, %463
  %468 = getelementptr i8, ptr %443, i64 %446
  %469 = load i8, ptr %468, align 1, !tbaa !5
  %470 = zext i8 %469 to i64
  %471 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %470
  %472 = load i64, ptr %471, align 8, !tbaa !14
  %473 = and i64 %472, 255
  %474 = lshr i64 %466, %473
  %475 = or i64 %474, %472
  %476 = add i64 %467, %472
  %477 = getelementptr i8, ptr %444, i64 %446
  %478 = load i8, ptr %477, align 1, !tbaa !5
  %479 = zext i8 %478 to i64
  %480 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %479
  %481 = load i64, ptr %480, align 8, !tbaa !14
  %482 = and i64 %481, 255
  %483 = lshr i64 %475, %482
  %484 = or i64 %483, %481
  %485 = add i64 %476, %481
  %486 = add nsw i64 %446, -5
  %487 = getelementptr inbounds i8, ptr %2, i64 %486
  %488 = load i8, ptr %487, align 1, !tbaa !5
  %489 = zext i8 %488 to i64
  %490 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %489
  %491 = load i64, ptr %490, align 8, !tbaa !14
  %492 = and i64 %491, 255
  %493 = lshr i64 %484, %492
  %494 = and i64 %491, -256
  %495 = or i64 %493, %494
  %496 = add i64 %485, %491
  %497 = and i64 %496, 255
  %498 = sub nsw i64 64, %497
  %499 = lshr i64 %495, %498
  store i64 %499, ptr %448, align 1, !tbaa !14
  %500 = trunc nsw i64 %486 to i32
  %501 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %500, i32 -1)
  %502 = extractvalue { i32, i1 } %501, 1, !nosanitize !46
  br i1 %502, label %.loopexit60, label %503, !prof !49, !nosanitize !46

503:                                              ; preds = %445
  %504 = lshr i64 %497, 3
  %505 = getelementptr inbounds nuw i8, ptr %448, i64 %504
  %506 = and i64 %496, 7
  %507 = shl i64 %446, 32
  %sext39 = add i64 %507, -34359738368
  %508 = ashr exact i64 %sext39, 32
  %509 = getelementptr inbounds i8, ptr %2, i64 %508
  %510 = load i8, ptr %509, align 1, !tbaa !5
  %511 = zext i8 %510 to i64
  %512 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %511
  %513 = load i64, ptr %512, align 8, !tbaa !14
  %sext40 = add i64 %507, -30064771072
  %514 = ashr exact i64 %sext40, 32
  %515 = getelementptr inbounds i8, ptr %2, i64 %514
  %516 = load i8, ptr %515, align 1, !tbaa !5
  %517 = zext i8 %516 to i64
  %518 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %517
  %519 = load i64, ptr %518, align 8, !tbaa !14
  %520 = extractvalue { i32, i1 } %501, 0, !nosanitize !46
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i8, ptr %2, i64 %521
  %523 = load i8, ptr %522, align 1, !tbaa !5
  %524 = zext i8 %523 to i64
  %525 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %524
  %526 = load i64, ptr %525, align 8, !tbaa !14
  %527 = and i64 %519, 255
  %528 = lshr i64 %526, %527
  %529 = or i64 %528, %519
  %530 = and i64 %513, 255
  %531 = lshr i64 %529, %530
  %532 = or i64 %531, %513
  %sext41 = add i64 %507, -38654705664
  %533 = ashr exact i64 %sext41, 32
  %534 = getelementptr inbounds i8, ptr %2, i64 %533
  %535 = load i8, ptr %534, align 1, !tbaa !5
  %536 = zext i8 %535 to i64
  %537 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %536
  %538 = load i64, ptr %537, align 8, !tbaa !14
  %539 = and i64 %538, 255
  %540 = lshr i64 %532, %539
  %541 = or i64 %540, %538
  %542 = getelementptr i8, ptr %437, i64 %446
  %543 = load i8, ptr %542, align 1, !tbaa !5
  %544 = zext i8 %543 to i64
  %545 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %544
  %546 = load i64, ptr %545, align 8, !tbaa !14
  %547 = and i64 %546, 255
  %548 = lshr i64 %541, %547
  %549 = and i64 %546, -256
  %550 = or i64 %548, %549
  %551 = add i64 %519, %513
  %552 = add i64 %551, %526
  %553 = add i64 %552, %538
  %554 = add i64 %553, %546
  %555 = and i64 %554, 255
  %556 = lshr i64 %495, %555
  %557 = or i64 %550, %556
  %558 = add i64 %554, %506
  %559 = and i64 %558, 255
  %560 = lshr i64 %559, 3
  %561 = sub nsw i64 64, %559
  %562 = lshr i64 %557, %561
  %563 = and i64 %558, 7
  store i64 %562, ptr %505, align 1, !tbaa !14
  %564 = getelementptr inbounds nuw i8, ptr %505, i64 %560
  %565 = add nsw i64 %446, -10
  %566 = icmp sgt i64 %446, 10
  br i1 %566, label %445, label %.loopexit57, !llvm.loop !76

567:                                              ; preds = %275
  %568 = srem i32 %29, 5
  %569 = icmp sgt i32 %568, 0
  br i1 %569, label %570, label %638

570:                                              ; preds = %567
  %571 = xor i32 %29, -2147483648
  %572 = add nsw i32 %568, -1
  %573 = icmp ugt i32 %571, %572
  br i1 %573, label %574, label %.loopexit62, !prof !77, !nosanitize !46

574:                                              ; preds = %570
  %575 = and i32 %568, 1
  %576 = icmp eq i32 %572, 0
  br i1 %576, label %.thread52, label %577

577:                                              ; preds = %574
  %578 = and i32 %568, 2147483646
  br label %579

579:                                              ; preds = %579, %577
  %580 = phi i32 [ %29, %577 ], [ %596, %579 ]
  %581 = phi i64 [ 0, %577 ], [ %606, %579 ]
  %582 = phi i64 [ 0, %577 ], [ %607, %579 ]
  %583 = phi i32 [ 0, %577 ], [ %608, %579 ]
  %584 = add i32 %580, -1
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds i8, ptr %2, i64 %585
  %587 = load i8, ptr %586, align 1, !tbaa !5
  %588 = zext i8 %587 to i64
  %589 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %588
  %590 = load i64, ptr %589, align 8, !tbaa !14
  %591 = and i64 %590, 255
  %592 = lshr i64 %581, %591
  %593 = and i64 %590, -256
  %594 = or i64 %592, %593
  %595 = add i64 %590, %582
  %596 = add i32 %580, -2
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i8, ptr %2, i64 %597
  %599 = load i8, ptr %598, align 1, !tbaa !5
  %600 = zext i8 %599 to i64
  %601 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %600
  %602 = load i64, ptr %601, align 8, !tbaa !14
  %603 = and i64 %602, 255
  %604 = lshr i64 %594, %603
  %605 = and i64 %602, -256
  %606 = or i64 %604, %605
  %607 = add i64 %595, %602
  %608 = add i32 %583, 2
  %609 = icmp eq i32 %608, %578
  br i1 %609, label %610, label %579, !llvm.loop !78

.loopexit62:                                      ; preds = %735, %657, %654, %651, %648, %645, %570
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

610:                                              ; preds = %579
  %611 = sub i32 %29, %578
  %612 = icmp eq i32 %575, 0
  br i1 %612, label %628, label %.thread52

.thread52:                                        ; preds = %574, %610
  %613 = phi i64 [ %607, %610 ], [ 0, %574 ]
  %614 = phi i64 [ %606, %610 ], [ 0, %574 ]
  %615 = phi i32 [ %611, %610 ], [ %29, %574 ]
  %616 = add i32 %615, -1
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds i8, ptr %2, i64 %617
  %619 = load i8, ptr %618, align 1, !tbaa !5
  %620 = zext i8 %619 to i64
  %621 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %620
  %622 = load i64, ptr %621, align 8, !tbaa !14
  %623 = and i64 %622, 255
  %624 = lshr i64 %614, %623
  %625 = and i64 %622, -256
  %626 = or i64 %624, %625
  %627 = add i64 %622, %613
  br label %628

628:                                              ; preds = %.thread52, %610
  %629 = phi i64 [ %606, %610 ], [ %626, %.thread52 ]
  %630 = phi i64 [ %607, %610 ], [ %627, %.thread52 ]
  %631 = sub nsw i32 %29, %568
  %632 = and i64 %630, 255
  %633 = lshr i64 %632, 3
  %634 = sub nsw i64 64, %632
  %635 = lshr i64 %629, %634
  %636 = and i64 %630, 7
  store i64 %635, ptr %0, align 1, !tbaa !14
  %637 = getelementptr inbounds nuw i8, ptr %0, i64 %633
  br label %638

638:                                              ; preds = %628, %567
  %639 = phi i64 [ %636, %628 ], [ 0, %567 ]
  %640 = phi ptr [ %637, %628 ], [ %0, %567 ]
  %641 = phi i64 [ %629, %628 ], [ 0, %567 ]
  %642 = phi i32 [ %631, %628 ], [ %29, %567 ]
  %643 = srem i32 %642, 10
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %722, label %645

645:                                              ; preds = %638
  %646 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %642, i32 -1)
  %647 = extractvalue { i32, i1 } %646, 1, !nosanitize !46
  br i1 %647, label %.loopexit62, label %648, !prof !49, !nosanitize !46

648:                                              ; preds = %645
  %649 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %642, i32 -2)
  %650 = extractvalue { i32, i1 } %649, 1, !nosanitize !46
  br i1 %650, label %.loopexit62, label %651, !prof !49, !nosanitize !46

651:                                              ; preds = %648
  %652 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %642, i32 -3)
  %653 = extractvalue { i32, i1 } %652, 1, !nosanitize !46
  br i1 %653, label %.loopexit62, label %654, !prof !49, !nosanitize !46

654:                                              ; preds = %651
  %655 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %642, i32 -4)
  %656 = extractvalue { i32, i1 } %655, 1, !nosanitize !46
  br i1 %656, label %.loopexit62, label %657, !prof !49, !nosanitize !46

657:                                              ; preds = %654
  %658 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %642, i32 -5)
  %659 = extractvalue { i32, i1 } %658, 1, !nosanitize !46
  br i1 %659, label %.loopexit62, label %660, !prof !49, !nosanitize !46

660:                                              ; preds = %657
  %661 = extractvalue { i32, i1 } %655, 0, !nosanitize !46
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds i8, ptr %2, i64 %662
  %664 = load i8, ptr %663, align 1, !tbaa !5
  %665 = zext i8 %664 to i64
  %666 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %665
  %667 = load i64, ptr %666, align 8, !tbaa !14
  %668 = extractvalue { i32, i1 } %652, 0, !nosanitize !46
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds i8, ptr %2, i64 %669
  %671 = load i8, ptr %670, align 1, !tbaa !5
  %672 = zext i8 %671 to i64
  %673 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %672
  %674 = load i64, ptr %673, align 8, !tbaa !14
  %675 = extractvalue { i32, i1 } %649, 0, !nosanitize !46
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds i8, ptr %2, i64 %676
  %678 = load i8, ptr %677, align 1, !tbaa !5
  %679 = zext i8 %678 to i64
  %680 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %679
  %681 = load i64, ptr %680, align 8, !tbaa !14
  %682 = extractvalue { i32, i1 } %646, 0, !nosanitize !46
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds i8, ptr %2, i64 %683
  %685 = load i8, ptr %684, align 1, !tbaa !5
  %686 = zext i8 %685 to i64
  %687 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %686
  %688 = load i64, ptr %687, align 8, !tbaa !14
  %689 = and i64 %688, 255
  %690 = lshr i64 %641, %689
  %691 = or i64 %690, %688
  %692 = and i64 %681, 255
  %693 = lshr i64 %691, %692
  %694 = or i64 %693, %681
  %695 = and i64 %674, 255
  %696 = lshr i64 %694, %695
  %697 = or i64 %696, %674
  %698 = and i64 %667, 255
  %699 = lshr i64 %697, %698
  %700 = or i64 %699, %667
  %701 = extractvalue { i32, i1 } %658, 0, !nosanitize !46
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds i8, ptr %2, i64 %702
  %704 = load i8, ptr %703, align 1, !tbaa !5
  %705 = zext i8 %704 to i64
  %706 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %705
  %707 = load i64, ptr %706, align 8, !tbaa !14
  %708 = and i64 %707, 255
  %709 = lshr i64 %700, %708
  %710 = or i64 %709, %707
  %711 = add i64 %667, %639
  %712 = add i64 %711, %674
  %713 = add i64 %712, %681
  %714 = add i64 %713, %688
  %715 = add i64 %714, %707
  %716 = and i64 %715, 255
  %717 = lshr i64 %716, 3
  %718 = sub nsw i64 64, %716
  %719 = lshr i64 %710, %718
  %720 = and i64 %715, 7
  store i64 %719, ptr %640, align 1, !tbaa !14
  %721 = getelementptr inbounds nuw i8, ptr %640, i64 %717
  br label %722

722:                                              ; preds = %660, %638
  %723 = phi i64 [ %639, %638 ], [ %720, %660 ]
  %724 = phi ptr [ %640, %638 ], [ %721, %660 ]
  %725 = phi i64 [ %641, %638 ], [ %710, %660 ]
  %726 = phi i32 [ %642, %638 ], [ %701, %660 ]
  %727 = getelementptr i8, ptr %2, i64 -10
  %728 = icmp sgt i32 %726, 0
  br i1 %728, label %729, label %.loopexit57

729:                                              ; preds = %722
  %730 = zext nneg i32 %726 to i64
  %731 = getelementptr i8, ptr %2, i64 -1
  %732 = getelementptr i8, ptr %2, i64 -2
  %733 = getelementptr i8, ptr %2, i64 -3
  %734 = getelementptr i8, ptr %2, i64 -4
  br label %735

735:                                              ; preds = %792, %729
  %736 = phi i64 [ %730, %729 ], [ %853, %792 ]
  %737 = phi i64 [ %725, %729 ], [ %845, %792 ]
  %738 = phi ptr [ %724, %729 ], [ %852, %792 ]
  %739 = phi i64 [ %723, %729 ], [ %851, %792 ]
  %740 = getelementptr i8, ptr %731, i64 %736
  %741 = load i8, ptr %740, align 1, !tbaa !5
  %742 = zext i8 %741 to i64
  %743 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %742
  %744 = load i64, ptr %743, align 8, !tbaa !14
  %745 = and i64 %744, 255
  %746 = lshr i64 %737, %745
  %747 = or i64 %746, %744
  %748 = add i64 %744, %739
  %749 = getelementptr i8, ptr %732, i64 %736
  %750 = load i8, ptr %749, align 1, !tbaa !5
  %751 = zext i8 %750 to i64
  %752 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %751
  %753 = load i64, ptr %752, align 8, !tbaa !14
  %754 = and i64 %753, 255
  %755 = lshr i64 %747, %754
  %756 = or i64 %755, %753
  %757 = add i64 %748, %753
  %758 = getelementptr i8, ptr %733, i64 %736
  %759 = load i8, ptr %758, align 1, !tbaa !5
  %760 = zext i8 %759 to i64
  %761 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %760
  %762 = load i64, ptr %761, align 8, !tbaa !14
  %763 = and i64 %762, 255
  %764 = lshr i64 %756, %763
  %765 = or i64 %764, %762
  %766 = add i64 %757, %762
  %767 = getelementptr i8, ptr %734, i64 %736
  %768 = load i8, ptr %767, align 1, !tbaa !5
  %769 = zext i8 %768 to i64
  %770 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %769
  %771 = load i64, ptr %770, align 8, !tbaa !14
  %772 = and i64 %771, 255
  %773 = lshr i64 %765, %772
  %774 = or i64 %773, %771
  %775 = add i64 %766, %771
  %776 = add nsw i64 %736, -5
  %777 = getelementptr inbounds i8, ptr %2, i64 %776
  %778 = load i8, ptr %777, align 1, !tbaa !5
  %779 = zext i8 %778 to i64
  %780 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %779
  %781 = load i64, ptr %780, align 8, !tbaa !14
  %782 = and i64 %781, 255
  %783 = lshr i64 %774, %782
  %784 = or i64 %783, %781
  %785 = add i64 %775, %781
  %786 = and i64 %785, 255
  %787 = sub nsw i64 64, %786
  %788 = lshr i64 %784, %787
  store i64 %788, ptr %738, align 1, !tbaa !14
  %789 = trunc nsw i64 %776 to i32
  %790 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %789, i32 -1)
  %791 = extractvalue { i32, i1 } %790, 1, !nosanitize !46
  br i1 %791, label %.loopexit62, label %792, !prof !49, !nosanitize !46

792:                                              ; preds = %735
  %793 = lshr i64 %786, 3
  %794 = getelementptr inbounds nuw i8, ptr %738, i64 %793
  %795 = and i64 %785, 7
  %796 = shl i64 %736, 32
  %sext36 = add i64 %796, -34359738368
  %797 = ashr exact i64 %sext36, 32
  %798 = getelementptr inbounds i8, ptr %2, i64 %797
  %799 = load i8, ptr %798, align 1, !tbaa !5
  %800 = zext i8 %799 to i64
  %801 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %800
  %802 = load i64, ptr %801, align 8, !tbaa !14
  %sext37 = add i64 %796, -30064771072
  %803 = ashr exact i64 %sext37, 32
  %804 = getelementptr inbounds i8, ptr %2, i64 %803
  %805 = load i8, ptr %804, align 1, !tbaa !5
  %806 = zext i8 %805 to i64
  %807 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %806
  %808 = load i64, ptr %807, align 8, !tbaa !14
  %809 = extractvalue { i32, i1 } %790, 0, !nosanitize !46
  %810 = sext i32 %809 to i64
  %811 = getelementptr inbounds i8, ptr %2, i64 %810
  %812 = load i8, ptr %811, align 1, !tbaa !5
  %813 = zext i8 %812 to i64
  %814 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %813
  %815 = load i64, ptr %814, align 8, !tbaa !14
  %816 = and i64 %808, 255
  %817 = lshr i64 %815, %816
  %818 = or i64 %817, %808
  %819 = and i64 %802, 255
  %820 = lshr i64 %818, %819
  %821 = or i64 %820, %802
  %sext38 = add i64 %796, -38654705664
  %822 = ashr exact i64 %sext38, 32
  %823 = getelementptr inbounds i8, ptr %2, i64 %822
  %824 = load i8, ptr %823, align 1, !tbaa !5
  %825 = zext i8 %824 to i64
  %826 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %825
  %827 = load i64, ptr %826, align 8, !tbaa !14
  %828 = and i64 %827, 255
  %829 = lshr i64 %821, %828
  %830 = or i64 %829, %827
  %831 = getelementptr i8, ptr %727, i64 %736
  %832 = load i8, ptr %831, align 1, !tbaa !5
  %833 = zext i8 %832 to i64
  %834 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %833
  %835 = load i64, ptr %834, align 8, !tbaa !14
  %836 = and i64 %835, 255
  %837 = lshr i64 %830, %836
  %838 = add i64 %808, %802
  %839 = add i64 %838, %815
  %840 = add i64 %839, %827
  %841 = add i64 %840, %835
  %842 = and i64 %841, 255
  %843 = lshr i64 %784, %842
  %844 = or i64 %837, %843
  %845 = or i64 %844, %835
  %846 = add i64 %841, %795
  %847 = and i64 %846, 255
  %848 = lshr i64 %847, 3
  %849 = sub nsw i64 64, %847
  %850 = lshr i64 %845, %849
  %851 = and i64 %846, 7
  store i64 %850, ptr %794, align 1, !tbaa !14
  %852 = getelementptr inbounds nuw i8, ptr %794, i64 %848
  %853 = add nsw i64 %736, -10
  %854 = icmp sgt i64 %736, 10
  br i1 %854, label %735, label %.loopexit57, !llvm.loop !76

855:                                              ; preds = %275
  %856 = srem i32 %29, 6
  %857 = icmp sgt i32 %856, 0
  br i1 %857, label %858, label %926

858:                                              ; preds = %855
  %859 = xor i32 %29, -2147483648
  %860 = add nsw i32 %856, -1
  %861 = icmp ugt i32 %859, %860
  br i1 %861, label %862, label %.loopexit64, !prof !77, !nosanitize !46

862:                                              ; preds = %858
  %863 = and i32 %856, 1
  %864 = icmp eq i32 %860, 0
  br i1 %864, label %.thread53, label %865

865:                                              ; preds = %862
  %866 = and i32 %856, 2147483646
  br label %867

867:                                              ; preds = %867, %865
  %868 = phi i32 [ %29, %865 ], [ %884, %867 ]
  %869 = phi i64 [ 0, %865 ], [ %894, %867 ]
  %870 = phi i64 [ 0, %865 ], [ %895, %867 ]
  %871 = phi i32 [ 0, %865 ], [ %896, %867 ]
  %872 = add i32 %868, -1
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds i8, ptr %2, i64 %873
  %875 = load i8, ptr %874, align 1, !tbaa !5
  %876 = zext i8 %875 to i64
  %877 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %876
  %878 = load i64, ptr %877, align 8, !tbaa !14
  %879 = and i64 %878, 255
  %880 = lshr i64 %869, %879
  %881 = and i64 %878, -256
  %882 = or i64 %880, %881
  %883 = add i64 %878, %870
  %884 = add i32 %868, -2
  %885 = sext i32 %884 to i64
  %886 = getelementptr inbounds i8, ptr %2, i64 %885
  %887 = load i8, ptr %886, align 1, !tbaa !5
  %888 = zext i8 %887 to i64
  %889 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %888
  %890 = load i64, ptr %889, align 8, !tbaa !14
  %891 = and i64 %890, 255
  %892 = lshr i64 %882, %891
  %893 = and i64 %890, -256
  %894 = or i64 %892, %893
  %895 = add i64 %883, %890
  %896 = add i32 %871, 2
  %897 = icmp eq i32 %896, %866
  br i1 %897, label %898, label %867, !llvm.loop !78

.loopexit64:                                      ; preds = %1039, %948, %945, %942, %939, %936, %933, %858
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

898:                                              ; preds = %867
  %899 = sub i32 %29, %866
  %900 = icmp eq i32 %863, 0
  br i1 %900, label %916, label %.thread53

.thread53:                                        ; preds = %862, %898
  %901 = phi i64 [ %895, %898 ], [ 0, %862 ]
  %902 = phi i64 [ %894, %898 ], [ 0, %862 ]
  %903 = phi i32 [ %899, %898 ], [ %29, %862 ]
  %904 = add i32 %903, -1
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds i8, ptr %2, i64 %905
  %907 = load i8, ptr %906, align 1, !tbaa !5
  %908 = zext i8 %907 to i64
  %909 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %908
  %910 = load i64, ptr %909, align 8, !tbaa !14
  %911 = and i64 %910, 255
  %912 = lshr i64 %902, %911
  %913 = and i64 %910, -256
  %914 = or i64 %912, %913
  %915 = add i64 %910, %901
  br label %916

916:                                              ; preds = %.thread53, %898
  %917 = phi i64 [ %894, %898 ], [ %914, %.thread53 ]
  %918 = phi i64 [ %895, %898 ], [ %915, %.thread53 ]
  %919 = sub nsw i32 %29, %856
  %920 = and i64 %918, 255
  %921 = lshr i64 %920, 3
  %922 = sub nsw i64 64, %920
  %923 = lshr i64 %917, %922
  %924 = and i64 %918, 7
  store i64 %923, ptr %0, align 1, !tbaa !14
  %925 = getelementptr inbounds nuw i8, ptr %0, i64 %921
  br label %926

926:                                              ; preds = %916, %855
  %927 = phi i64 [ %924, %916 ], [ 0, %855 ]
  %928 = phi ptr [ %925, %916 ], [ %0, %855 ]
  %929 = phi i64 [ %917, %916 ], [ 0, %855 ]
  %930 = phi i32 [ %919, %916 ], [ %29, %855 ]
  %931 = srem i32 %930, 12
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %1025, label %933

933:                                              ; preds = %926
  %934 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %930, i32 -1)
  %935 = extractvalue { i32, i1 } %934, 1, !nosanitize !46
  br i1 %935, label %.loopexit64, label %936, !prof !49, !nosanitize !46

936:                                              ; preds = %933
  %937 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %930, i32 -2)
  %938 = extractvalue { i32, i1 } %937, 1, !nosanitize !46
  br i1 %938, label %.loopexit64, label %939, !prof !49, !nosanitize !46

939:                                              ; preds = %936
  %940 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %930, i32 -3)
  %941 = extractvalue { i32, i1 } %940, 1, !nosanitize !46
  br i1 %941, label %.loopexit64, label %942, !prof !49, !nosanitize !46

942:                                              ; preds = %939
  %943 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %930, i32 -4)
  %944 = extractvalue { i32, i1 } %943, 1, !nosanitize !46
  br i1 %944, label %.loopexit64, label %945, !prof !49, !nosanitize !46

945:                                              ; preds = %942
  %946 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %930, i32 -5)
  %947 = extractvalue { i32, i1 } %946, 1, !nosanitize !46
  br i1 %947, label %.loopexit64, label %948, !prof !49, !nosanitize !46

948:                                              ; preds = %945
  %949 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %930, i32 -6)
  %950 = extractvalue { i32, i1 } %949, 1, !nosanitize !46
  br i1 %950, label %.loopexit64, label %951, !prof !49, !nosanitize !46

951:                                              ; preds = %948
  %952 = extractvalue { i32, i1 } %946, 0, !nosanitize !46
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds i8, ptr %2, i64 %953
  %955 = load i8, ptr %954, align 1, !tbaa !5
  %956 = zext i8 %955 to i64
  %957 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %956
  %958 = load i64, ptr %957, align 8, !tbaa !14
  %959 = extractvalue { i32, i1 } %943, 0, !nosanitize !46
  %960 = sext i32 %959 to i64
  %961 = getelementptr inbounds i8, ptr %2, i64 %960
  %962 = load i8, ptr %961, align 1, !tbaa !5
  %963 = zext i8 %962 to i64
  %964 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %963
  %965 = load i64, ptr %964, align 8, !tbaa !14
  %966 = extractvalue { i32, i1 } %940, 0, !nosanitize !46
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds i8, ptr %2, i64 %967
  %969 = load i8, ptr %968, align 1, !tbaa !5
  %970 = zext i8 %969 to i64
  %971 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %970
  %972 = load i64, ptr %971, align 8, !tbaa !14
  %973 = extractvalue { i32, i1 } %937, 0, !nosanitize !46
  %974 = sext i32 %973 to i64
  %975 = getelementptr inbounds i8, ptr %2, i64 %974
  %976 = load i8, ptr %975, align 1, !tbaa !5
  %977 = zext i8 %976 to i64
  %978 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %977
  %979 = load i64, ptr %978, align 8, !tbaa !14
  %980 = extractvalue { i32, i1 } %934, 0, !nosanitize !46
  %981 = sext i32 %980 to i64
  %982 = getelementptr inbounds i8, ptr %2, i64 %981
  %983 = load i8, ptr %982, align 1, !tbaa !5
  %984 = zext i8 %983 to i64
  %985 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %984
  %986 = load i64, ptr %985, align 8, !tbaa !14
  %987 = and i64 %986, 255
  %988 = lshr i64 %929, %987
  %989 = or i64 %988, %986
  %990 = and i64 %979, 255
  %991 = lshr i64 %989, %990
  %992 = or i64 %991, %979
  %993 = and i64 %972, 255
  %994 = lshr i64 %992, %993
  %995 = or i64 %994, %972
  %996 = and i64 %965, 255
  %997 = lshr i64 %995, %996
  %998 = or i64 %997, %965
  %999 = and i64 %958, 255
  %1000 = lshr i64 %998, %999
  %1001 = or i64 %1000, %958
  %1002 = extractvalue { i32, i1 } %949, 0, !nosanitize !46
  %1003 = sext i32 %1002 to i64
  %1004 = getelementptr inbounds i8, ptr %2, i64 %1003
  %1005 = load i8, ptr %1004, align 1, !tbaa !5
  %1006 = zext i8 %1005 to i64
  %1007 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1006
  %1008 = load i64, ptr %1007, align 8, !tbaa !14
  %1009 = and i64 %1008, 255
  %1010 = lshr i64 %1001, %1009
  %1011 = and i64 %1008, -256
  %1012 = or i64 %1010, %1011
  %1013 = add i64 %958, %927
  %1014 = add i64 %1013, %965
  %1015 = add i64 %1014, %972
  %1016 = add i64 %1015, %979
  %1017 = add i64 %1016, %986
  %1018 = add i64 %1017, %1008
  %1019 = and i64 %1018, 255
  %1020 = lshr i64 %1019, 3
  %1021 = sub nsw i64 64, %1019
  %1022 = lshr i64 %1012, %1021
  %1023 = and i64 %1018, 7
  store i64 %1022, ptr %928, align 1, !tbaa !14
  %1024 = getelementptr inbounds nuw i8, ptr %928, i64 %1020
  br label %1025

1025:                                             ; preds = %951, %926
  %1026 = phi i64 [ %927, %926 ], [ %1023, %951 ]
  %1027 = phi ptr [ %928, %926 ], [ %1024, %951 ]
  %1028 = phi i64 [ %929, %926 ], [ %1012, %951 ]
  %1029 = phi i32 [ %930, %926 ], [ %1002, %951 ]
  %1030 = getelementptr i8, ptr %2, i64 -12
  %1031 = icmp sgt i32 %1029, 0
  br i1 %1031, label %1032, label %.loopexit57

1032:                                             ; preds = %1025
  %1033 = zext nneg i32 %1029 to i64
  %1034 = getelementptr i8, ptr %2, i64 -1
  %1035 = getelementptr i8, ptr %2, i64 -2
  %1036 = getelementptr i8, ptr %2, i64 -3
  %1037 = getelementptr i8, ptr %2, i64 -4
  %1038 = getelementptr i8, ptr %2, i64 -5
  br label %1039

1039:                                             ; preds = %1106, %1032
  %1040 = phi i64 [ %1033, %1032 ], [ %1178, %1106 ]
  %1041 = phi i64 [ %1028, %1032 ], [ %1170, %1106 ]
  %1042 = phi ptr [ %1027, %1032 ], [ %1177, %1106 ]
  %1043 = phi i64 [ %1026, %1032 ], [ %1176, %1106 ]
  %1044 = getelementptr i8, ptr %1034, i64 %1040
  %1045 = load i8, ptr %1044, align 1, !tbaa !5
  %1046 = zext i8 %1045 to i64
  %1047 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1046
  %1048 = load i64, ptr %1047, align 8, !tbaa !14
  %1049 = and i64 %1048, 255
  %1050 = lshr i64 %1041, %1049
  %1051 = or i64 %1050, %1048
  %1052 = add i64 %1048, %1043
  %1053 = getelementptr i8, ptr %1035, i64 %1040
  %1054 = load i8, ptr %1053, align 1, !tbaa !5
  %1055 = zext i8 %1054 to i64
  %1056 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1055
  %1057 = load i64, ptr %1056, align 8, !tbaa !14
  %1058 = and i64 %1057, 255
  %1059 = lshr i64 %1051, %1058
  %1060 = or i64 %1059, %1057
  %1061 = add i64 %1052, %1057
  %1062 = getelementptr i8, ptr %1036, i64 %1040
  %1063 = load i8, ptr %1062, align 1, !tbaa !5
  %1064 = zext i8 %1063 to i64
  %1065 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1064
  %1066 = load i64, ptr %1065, align 8, !tbaa !14
  %1067 = and i64 %1066, 255
  %1068 = lshr i64 %1060, %1067
  %1069 = or i64 %1068, %1066
  %1070 = add i64 %1061, %1066
  %1071 = getelementptr i8, ptr %1037, i64 %1040
  %1072 = load i8, ptr %1071, align 1, !tbaa !5
  %1073 = zext i8 %1072 to i64
  %1074 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1073
  %1075 = load i64, ptr %1074, align 8, !tbaa !14
  %1076 = and i64 %1075, 255
  %1077 = lshr i64 %1069, %1076
  %1078 = or i64 %1077, %1075
  %1079 = add i64 %1070, %1075
  %1080 = getelementptr i8, ptr %1038, i64 %1040
  %1081 = load i8, ptr %1080, align 1, !tbaa !5
  %1082 = zext i8 %1081 to i64
  %1083 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1082
  %1084 = load i64, ptr %1083, align 8, !tbaa !14
  %1085 = and i64 %1084, 255
  %1086 = lshr i64 %1078, %1085
  %1087 = or i64 %1086, %1084
  %1088 = add i64 %1079, %1084
  %1089 = add nsw i64 %1040, -6
  %1090 = getelementptr inbounds i8, ptr %2, i64 %1089
  %1091 = load i8, ptr %1090, align 1, !tbaa !5
  %1092 = zext i8 %1091 to i64
  %1093 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1092
  %1094 = load i64, ptr %1093, align 8, !tbaa !14
  %1095 = and i64 %1094, 255
  %1096 = lshr i64 %1087, %1095
  %1097 = and i64 %1094, -256
  %1098 = or i64 %1096, %1097
  %1099 = add i64 %1088, %1094
  %1100 = and i64 %1099, 255
  %1101 = sub nsw i64 64, %1100
  %1102 = lshr i64 %1098, %1101
  store i64 %1102, ptr %1042, align 1, !tbaa !14
  %1103 = trunc nsw i64 %1089 to i32
  %1104 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1103, i32 -1)
  %1105 = extractvalue { i32, i1 } %1104, 1, !nosanitize !46
  br i1 %1105, label %.loopexit64, label %1106, !prof !49, !nosanitize !46

1106:                                             ; preds = %1039
  %1107 = lshr i64 %1100, 3
  %1108 = getelementptr inbounds nuw i8, ptr %1042, i64 %1107
  %1109 = and i64 %1099, 7
  %1110 = shl i64 %1040, 32
  %sext32 = add i64 %1110, -42949672960
  %1111 = ashr exact i64 %sext32, 32
  %1112 = getelementptr inbounds i8, ptr %2, i64 %1111
  %1113 = load i8, ptr %1112, align 1, !tbaa !5
  %1114 = zext i8 %1113 to i64
  %1115 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1114
  %1116 = load i64, ptr %1115, align 8, !tbaa !14
  %sext33 = add i64 %1110, -38654705664
  %1117 = ashr exact i64 %sext33, 32
  %1118 = getelementptr inbounds i8, ptr %2, i64 %1117
  %1119 = load i8, ptr %1118, align 1, !tbaa !5
  %1120 = zext i8 %1119 to i64
  %1121 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1120
  %1122 = load i64, ptr %1121, align 8, !tbaa !14
  %sext34 = add i64 %1110, -34359738368
  %1123 = ashr exact i64 %sext34, 32
  %1124 = getelementptr inbounds i8, ptr %2, i64 %1123
  %1125 = load i8, ptr %1124, align 1, !tbaa !5
  %1126 = zext i8 %1125 to i64
  %1127 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1126
  %1128 = load i64, ptr %1127, align 8, !tbaa !14
  %1129 = extractvalue { i32, i1 } %1104, 0, !nosanitize !46
  %1130 = sext i32 %1129 to i64
  %1131 = getelementptr inbounds i8, ptr %2, i64 %1130
  %1132 = load i8, ptr %1131, align 1, !tbaa !5
  %1133 = zext i8 %1132 to i64
  %1134 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1133
  %1135 = load i64, ptr %1134, align 8, !tbaa !14
  %1136 = and i64 %1128, 255
  %1137 = lshr i64 %1135, %1136
  %1138 = or i64 %1137, %1128
  %1139 = and i64 %1122, 255
  %1140 = lshr i64 %1138, %1139
  %1141 = or i64 %1140, %1122
  %1142 = and i64 %1116, 255
  %1143 = lshr i64 %1141, %1142
  %1144 = or i64 %1143, %1116
  %sext35 = add i64 %1110, -47244640256
  %1145 = ashr exact i64 %sext35, 32
  %1146 = getelementptr inbounds i8, ptr %2, i64 %1145
  %1147 = load i8, ptr %1146, align 1, !tbaa !5
  %1148 = zext i8 %1147 to i64
  %1149 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1148
  %1150 = load i64, ptr %1149, align 8, !tbaa !14
  %1151 = and i64 %1150, 255
  %1152 = lshr i64 %1144, %1151
  %1153 = or i64 %1152, %1150
  %1154 = getelementptr i8, ptr %1030, i64 %1040
  %1155 = load i8, ptr %1154, align 1, !tbaa !5
  %1156 = zext i8 %1155 to i64
  %1157 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1156
  %1158 = load i64, ptr %1157, align 8, !tbaa !14
  %1159 = and i64 %1158, 255
  %1160 = lshr i64 %1153, %1159
  %1161 = and i64 %1158, -256
  %1162 = add i64 %1122, %1116
  %1163 = add i64 %1162, %1128
  %1164 = add i64 %1163, %1135
  %1165 = add i64 %1164, %1150
  %1166 = add i64 %1165, %1158
  %1167 = and i64 %1166, 255
  %1168 = lshr i64 %1098, %1167
  %1169 = or i64 %1168, %1161
  %1170 = or i64 %1169, %1160
  %1171 = add i64 %1166, %1109
  %1172 = and i64 %1171, 255
  %1173 = lshr i64 %1172, 3
  %1174 = sub nsw i64 64, %1172
  %1175 = lshr i64 %1170, %1174
  %1176 = and i64 %1171, 7
  store i64 %1175, ptr %1108, align 1, !tbaa !14
  %1177 = getelementptr inbounds nuw i8, ptr %1108, i64 %1173
  %1178 = add nsw i64 %1040, -12
  %1179 = icmp sgt i64 %1040, 12
  br i1 %1179, label %1039, label %.loopexit57, !llvm.loop !76

1180:                                             ; preds = %275
  %1181 = srem i32 %29, 7
  %1182 = icmp sgt i32 %1181, 0
  br i1 %1182, label %1183, label %1251

1183:                                             ; preds = %1180
  %1184 = xor i32 %29, -2147483648
  %1185 = add nsw i32 %1181, -1
  %1186 = icmp ugt i32 %1184, %1185
  br i1 %1186, label %1187, label %.loopexit66, !prof !77, !nosanitize !46

1187:                                             ; preds = %1183
  %1188 = and i32 %1181, 1
  %1189 = icmp eq i32 %1185, 0
  br i1 %1189, label %.thread54, label %1190

1190:                                             ; preds = %1187
  %1191 = and i32 %1181, 2147483646
  br label %1192

1192:                                             ; preds = %1192, %1190
  %1193 = phi i32 [ %29, %1190 ], [ %1209, %1192 ]
  %1194 = phi i64 [ 0, %1190 ], [ %1219, %1192 ]
  %1195 = phi i64 [ 0, %1190 ], [ %1220, %1192 ]
  %1196 = phi i32 [ 0, %1190 ], [ %1221, %1192 ]
  %1197 = add i32 %1193, -1
  %1198 = sext i32 %1197 to i64
  %1199 = getelementptr inbounds i8, ptr %2, i64 %1198
  %1200 = load i8, ptr %1199, align 1, !tbaa !5
  %1201 = zext i8 %1200 to i64
  %1202 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1201
  %1203 = load i64, ptr %1202, align 8, !tbaa !14
  %1204 = and i64 %1203, 255
  %1205 = lshr i64 %1194, %1204
  %1206 = and i64 %1203, -256
  %1207 = or i64 %1205, %1206
  %1208 = add i64 %1203, %1195
  %1209 = add i32 %1193, -2
  %1210 = sext i32 %1209 to i64
  %1211 = getelementptr inbounds i8, ptr %2, i64 %1210
  %1212 = load i8, ptr %1211, align 1, !tbaa !5
  %1213 = zext i8 %1212 to i64
  %1214 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1213
  %1215 = load i64, ptr %1214, align 8, !tbaa !14
  %1216 = and i64 %1215, 255
  %1217 = lshr i64 %1207, %1216
  %1218 = and i64 %1215, -256
  %1219 = or i64 %1217, %1218
  %1220 = add i64 %1208, %1215
  %1221 = add i32 %1196, 2
  %1222 = icmp eq i32 %1221, %1191
  br i1 %1222, label %1223, label %1192, !llvm.loop !78

.loopexit66:                                      ; preds = %1376, %1273, %1270, %1267, %1264, %1261, %1258, %1183
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

1223:                                             ; preds = %1192
  %1224 = sub i32 %29, %1191
  %1225 = icmp eq i32 %1188, 0
  br i1 %1225, label %1241, label %.thread54

.thread54:                                        ; preds = %1187, %1223
  %1226 = phi i64 [ %1220, %1223 ], [ 0, %1187 ]
  %1227 = phi i64 [ %1219, %1223 ], [ 0, %1187 ]
  %1228 = phi i32 [ %1224, %1223 ], [ %29, %1187 ]
  %1229 = add i32 %1228, -1
  %1230 = sext i32 %1229 to i64
  %1231 = getelementptr inbounds i8, ptr %2, i64 %1230
  %1232 = load i8, ptr %1231, align 1, !tbaa !5
  %1233 = zext i8 %1232 to i64
  %1234 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1233
  %1235 = load i64, ptr %1234, align 8, !tbaa !14
  %1236 = and i64 %1235, 255
  %1237 = lshr i64 %1227, %1236
  %1238 = and i64 %1235, -256
  %1239 = or i64 %1237, %1238
  %1240 = add i64 %1235, %1226
  br label %1241

1241:                                             ; preds = %.thread54, %1223
  %1242 = phi i64 [ %1219, %1223 ], [ %1239, %.thread54 ]
  %1243 = phi i64 [ %1220, %1223 ], [ %1240, %.thread54 ]
  %1244 = sub nsw i32 %29, %1181
  %1245 = and i64 %1243, 255
  %1246 = lshr i64 %1245, 3
  %1247 = sub nsw i64 64, %1245
  %1248 = lshr i64 %1242, %1247
  %1249 = and i64 %1243, 7
  store i64 %1248, ptr %0, align 1, !tbaa !14
  %1250 = getelementptr inbounds nuw i8, ptr %0, i64 %1246
  br label %1251

1251:                                             ; preds = %1241, %1180
  %1252 = phi i64 [ %1249, %1241 ], [ 0, %1180 ]
  %1253 = phi ptr [ %1250, %1241 ], [ %0, %1180 ]
  %1254 = phi i64 [ %1242, %1241 ], [ 0, %1180 ]
  %1255 = phi i32 [ %1244, %1241 ], [ %29, %1180 ]
  %1256 = srem i32 %1255, 14
  %1257 = icmp eq i32 %1256, 0
  br i1 %1257, label %1361, label %1258

1258:                                             ; preds = %1251
  %1259 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1255, i32 -1)
  %1260 = extractvalue { i32, i1 } %1259, 1, !nosanitize !46
  br i1 %1260, label %.loopexit66, label %1261, !prof !49, !nosanitize !46

1261:                                             ; preds = %1258
  %1262 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1255, i32 -2)
  %1263 = extractvalue { i32, i1 } %1262, 1, !nosanitize !46
  br i1 %1263, label %.loopexit66, label %1264, !prof !49, !nosanitize !46

1264:                                             ; preds = %1261
  %1265 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1255, i32 -4)
  %1266 = extractvalue { i32, i1 } %1265, 1, !nosanitize !46
  br i1 %1266, label %.loopexit66, label %1267, !prof !49, !nosanitize !46

1267:                                             ; preds = %1264
  %1268 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1255, i32 -5)
  %1269 = extractvalue { i32, i1 } %1268, 1, !nosanitize !46
  br i1 %1269, label %.loopexit66, label %1270, !prof !49, !nosanitize !46

1270:                                             ; preds = %1267
  %1271 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1255, i32 -6)
  %1272 = extractvalue { i32, i1 } %1271, 1, !nosanitize !46
  br i1 %1272, label %.loopexit66, label %1273, !prof !49, !nosanitize !46

1273:                                             ; preds = %1270
  %1274 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1255, i32 -7)
  %1275 = extractvalue { i32, i1 } %1274, 1, !nosanitize !46
  br i1 %1275, label %.loopexit66, label %1276, !prof !49, !nosanitize !46

1276:                                             ; preds = %1273
  %1277 = extractvalue { i32, i1 } %1271, 0, !nosanitize !46
  %1278 = sext i32 %1277 to i64
  %1279 = getelementptr inbounds i8, ptr %2, i64 %1278
  %1280 = load i8, ptr %1279, align 1, !tbaa !5
  %1281 = zext i8 %1280 to i64
  %1282 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1281
  %1283 = load i64, ptr %1282, align 8, !tbaa !14
  %1284 = extractvalue { i32, i1 } %1268, 0, !nosanitize !46
  %1285 = sext i32 %1284 to i64
  %1286 = getelementptr inbounds i8, ptr %2, i64 %1285
  %1287 = load i8, ptr %1286, align 1, !tbaa !5
  %1288 = zext i8 %1287 to i64
  %1289 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1288
  %1290 = load i64, ptr %1289, align 8, !tbaa !14
  %1291 = extractvalue { i32, i1 } %1265, 0, !nosanitize !46
  %1292 = sext i32 %1291 to i64
  %1293 = getelementptr inbounds i8, ptr %2, i64 %1292
  %1294 = load i8, ptr %1293, align 1, !tbaa !5
  %1295 = zext i8 %1294 to i64
  %1296 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1295
  %1297 = load i64, ptr %1296, align 8, !tbaa !14
  %1298 = sext i32 %1255 to i64
  %1299 = getelementptr i8, ptr %2, i64 %1298
  %1300 = getelementptr i8, ptr %1299, i64 -3
  %1301 = load i8, ptr %1300, align 1, !tbaa !5
  %1302 = zext i8 %1301 to i64
  %1303 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1302
  %1304 = load i64, ptr %1303, align 8, !tbaa !14
  %1305 = extractvalue { i32, i1 } %1262, 0, !nosanitize !46
  %1306 = sext i32 %1305 to i64
  %1307 = getelementptr inbounds i8, ptr %2, i64 %1306
  %1308 = load i8, ptr %1307, align 1, !tbaa !5
  %1309 = zext i8 %1308 to i64
  %1310 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1309
  %1311 = load i64, ptr %1310, align 8, !tbaa !14
  %1312 = extractvalue { i32, i1 } %1259, 0, !nosanitize !46
  %1313 = sext i32 %1312 to i64
  %1314 = getelementptr inbounds i8, ptr %2, i64 %1313
  %1315 = load i8, ptr %1314, align 1, !tbaa !5
  %1316 = zext i8 %1315 to i64
  %1317 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1316
  %1318 = load i64, ptr %1317, align 8, !tbaa !14
  %1319 = and i64 %1318, 255
  %1320 = lshr i64 %1254, %1319
  %1321 = or i64 %1320, %1318
  %1322 = and i64 %1311, 255
  %1323 = lshr i64 %1321, %1322
  %1324 = or i64 %1323, %1311
  %1325 = and i64 %1304, 255
  %1326 = lshr i64 %1324, %1325
  %1327 = or i64 %1326, %1304
  %1328 = and i64 %1297, 255
  %1329 = lshr i64 %1327, %1328
  %1330 = or i64 %1329, %1297
  %1331 = and i64 %1290, 255
  %1332 = lshr i64 %1330, %1331
  %1333 = or i64 %1332, %1290
  %1334 = and i64 %1283, 255
  %1335 = lshr i64 %1333, %1334
  %1336 = or i64 %1335, %1283
  %1337 = extractvalue { i32, i1 } %1274, 0, !nosanitize !46
  %1338 = sext i32 %1337 to i64
  %1339 = getelementptr inbounds i8, ptr %2, i64 %1338
  %1340 = load i8, ptr %1339, align 1, !tbaa !5
  %1341 = zext i8 %1340 to i64
  %1342 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1341
  %1343 = load i64, ptr %1342, align 8, !tbaa !14
  %1344 = and i64 %1343, 255
  %1345 = lshr i64 %1336, %1344
  %1346 = and i64 %1343, -256
  %1347 = or i64 %1345, %1346
  %1348 = add i64 %1283, %1252
  %1349 = add i64 %1348, %1290
  %1350 = add i64 %1349, %1297
  %1351 = add i64 %1350, %1304
  %1352 = add i64 %1351, %1311
  %1353 = add i64 %1352, %1318
  %1354 = add i64 %1353, %1343
  %1355 = and i64 %1354, 255
  %1356 = lshr i64 %1355, 3
  %1357 = sub nsw i64 64, %1355
  %1358 = lshr i64 %1347, %1357
  %1359 = and i64 %1354, 7
  store i64 %1358, ptr %1253, align 1, !tbaa !14
  %1360 = getelementptr inbounds nuw i8, ptr %1253, i64 %1356
  br label %1361

1361:                                             ; preds = %1276, %1251
  %1362 = phi i64 [ %1252, %1251 ], [ %1359, %1276 ]
  %1363 = phi ptr [ %1253, %1251 ], [ %1360, %1276 ]
  %1364 = phi i64 [ %1254, %1251 ], [ %1347, %1276 ]
  %1365 = phi i32 [ %1255, %1251 ], [ %1337, %1276 ]
  %1366 = getelementptr i8, ptr %2, i64 -14
  %1367 = icmp sgt i32 %1365, 0
  br i1 %1367, label %1368, label %.loopexit57

1368:                                             ; preds = %1361
  %1369 = zext nneg i32 %1365 to i64
  %1370 = getelementptr i8, ptr %2, i64 -1
  %1371 = getelementptr i8, ptr %2, i64 -2
  %1372 = getelementptr i8, ptr %2, i64 -3
  %1373 = getelementptr i8, ptr %2, i64 -4
  %1374 = getelementptr i8, ptr %2, i64 -5
  %1375 = getelementptr i8, ptr %2, i64 -6
  br label %1376

1376:                                             ; preds = %1452, %1368
  %1377 = phi i64 [ %1369, %1368 ], [ %1534, %1452 ]
  %1378 = phi i64 [ %1364, %1368 ], [ %1526, %1452 ]
  %1379 = phi ptr [ %1363, %1368 ], [ %1533, %1452 ]
  %1380 = phi i64 [ %1362, %1368 ], [ %1532, %1452 ]
  %1381 = getelementptr i8, ptr %1370, i64 %1377
  %1382 = load i8, ptr %1381, align 1, !tbaa !5
  %1383 = zext i8 %1382 to i64
  %1384 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1383
  %1385 = load i64, ptr %1384, align 8, !tbaa !14
  %1386 = and i64 %1385, 255
  %1387 = lshr i64 %1378, %1386
  %1388 = or i64 %1387, %1385
  %1389 = add i64 %1385, %1380
  %1390 = getelementptr i8, ptr %1371, i64 %1377
  %1391 = load i8, ptr %1390, align 1, !tbaa !5
  %1392 = zext i8 %1391 to i64
  %1393 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1392
  %1394 = load i64, ptr %1393, align 8, !tbaa !14
  %1395 = and i64 %1394, 255
  %1396 = lshr i64 %1388, %1395
  %1397 = or i64 %1396, %1394
  %1398 = add i64 %1389, %1394
  %1399 = getelementptr i8, ptr %1372, i64 %1377
  %1400 = load i8, ptr %1399, align 1, !tbaa !5
  %1401 = zext i8 %1400 to i64
  %1402 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1401
  %1403 = load i64, ptr %1402, align 8, !tbaa !14
  %1404 = and i64 %1403, 255
  %1405 = lshr i64 %1397, %1404
  %1406 = or i64 %1405, %1403
  %1407 = add i64 %1398, %1403
  %1408 = getelementptr i8, ptr %1373, i64 %1377
  %1409 = load i8, ptr %1408, align 1, !tbaa !5
  %1410 = zext i8 %1409 to i64
  %1411 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1410
  %1412 = load i64, ptr %1411, align 8, !tbaa !14
  %1413 = and i64 %1412, 255
  %1414 = lshr i64 %1406, %1413
  %1415 = or i64 %1414, %1412
  %1416 = add i64 %1407, %1412
  %1417 = getelementptr i8, ptr %1374, i64 %1377
  %1418 = load i8, ptr %1417, align 1, !tbaa !5
  %1419 = zext i8 %1418 to i64
  %1420 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1419
  %1421 = load i64, ptr %1420, align 8, !tbaa !14
  %1422 = and i64 %1421, 255
  %1423 = lshr i64 %1415, %1422
  %1424 = or i64 %1423, %1421
  %1425 = add i64 %1416, %1421
  %1426 = getelementptr i8, ptr %1375, i64 %1377
  %1427 = load i8, ptr %1426, align 1, !tbaa !5
  %1428 = zext i8 %1427 to i64
  %1429 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1428
  %1430 = load i64, ptr %1429, align 8, !tbaa !14
  %1431 = and i64 %1430, 255
  %1432 = lshr i64 %1424, %1431
  %1433 = or i64 %1432, %1430
  %1434 = add i64 %1425, %1430
  %1435 = add nsw i64 %1377, -7
  %1436 = getelementptr inbounds i8, ptr %2, i64 %1435
  %1437 = load i8, ptr %1436, align 1, !tbaa !5
  %1438 = zext i8 %1437 to i64
  %1439 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1438
  %1440 = load i64, ptr %1439, align 8, !tbaa !14
  %1441 = and i64 %1440, 255
  %1442 = lshr i64 %1433, %1441
  %1443 = and i64 %1440, -256
  %1444 = or i64 %1442, %1443
  %1445 = add i64 %1434, %1440
  %1446 = and i64 %1445, 255
  %1447 = sub nsw i64 64, %1446
  %1448 = lshr i64 %1444, %1447
  store i64 %1448, ptr %1379, align 1, !tbaa !14
  %1449 = trunc nsw i64 %1435 to i32
  %1450 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1449, i32 -1)
  %1451 = extractvalue { i32, i1 } %1450, 1, !nosanitize !46
  br i1 %1451, label %.loopexit66, label %1452, !prof !49, !nosanitize !46

1452:                                             ; preds = %1376
  %1453 = lshr i64 %1446, 3
  %1454 = getelementptr inbounds nuw i8, ptr %1379, i64 %1453
  %1455 = and i64 %1445, 7
  %1456 = shl i64 %1377, 32
  %sext27 = add i64 %1456, -51539607552
  %1457 = ashr exact i64 %sext27, 32
  %1458 = getelementptr inbounds i8, ptr %2, i64 %1457
  %1459 = load i8, ptr %1458, align 1, !tbaa !5
  %1460 = zext i8 %1459 to i64
  %1461 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1460
  %1462 = load i64, ptr %1461, align 8, !tbaa !14
  %sext28 = add i64 %1456, -47244640256
  %1463 = ashr exact i64 %sext28, 32
  %1464 = getelementptr inbounds i8, ptr %2, i64 %1463
  %1465 = load i8, ptr %1464, align 1, !tbaa !5
  %1466 = zext i8 %1465 to i64
  %1467 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1466
  %1468 = load i64, ptr %1467, align 8, !tbaa !14
  %sext29 = add i64 %1456, -42949672960
  %1469 = ashr exact i64 %sext29, 32
  %1470 = getelementptr inbounds i8, ptr %2, i64 %1469
  %1471 = load i8, ptr %1470, align 1, !tbaa !5
  %1472 = zext i8 %1471 to i64
  %1473 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1472
  %1474 = load i64, ptr %1473, align 8, !tbaa !14
  %sext30 = add i64 %1456, -38654705664
  %1475 = ashr exact i64 %sext30, 32
  %1476 = getelementptr inbounds i8, ptr %2, i64 %1475
  %1477 = load i8, ptr %1476, align 1, !tbaa !5
  %1478 = zext i8 %1477 to i64
  %1479 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1478
  %1480 = load i64, ptr %1479, align 8, !tbaa !14
  %1481 = extractvalue { i32, i1 } %1450, 0, !nosanitize !46
  %1482 = sext i32 %1481 to i64
  %1483 = getelementptr inbounds i8, ptr %2, i64 %1482
  %1484 = load i8, ptr %1483, align 1, !tbaa !5
  %1485 = zext i8 %1484 to i64
  %1486 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1485
  %1487 = load i64, ptr %1486, align 8, !tbaa !14
  %1488 = and i64 %1480, 255
  %1489 = lshr i64 %1487, %1488
  %1490 = or i64 %1489, %1480
  %1491 = and i64 %1474, 255
  %1492 = lshr i64 %1490, %1491
  %1493 = or i64 %1492, %1474
  %1494 = and i64 %1468, 255
  %1495 = lshr i64 %1493, %1494
  %1496 = or i64 %1495, %1468
  %1497 = and i64 %1462, 255
  %1498 = lshr i64 %1496, %1497
  %1499 = or i64 %1498, %1462
  %sext31 = add i64 %1456, -55834574848
  %1500 = ashr exact i64 %sext31, 32
  %1501 = getelementptr inbounds i8, ptr %2, i64 %1500
  %1502 = load i8, ptr %1501, align 1, !tbaa !5
  %1503 = zext i8 %1502 to i64
  %1504 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1503
  %1505 = load i64, ptr %1504, align 8, !tbaa !14
  %1506 = and i64 %1505, 255
  %1507 = lshr i64 %1499, %1506
  %1508 = or i64 %1507, %1505
  %1509 = getelementptr i8, ptr %1366, i64 %1377
  %1510 = load i8, ptr %1509, align 1, !tbaa !5
  %1511 = zext i8 %1510 to i64
  %1512 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1511
  %1513 = load i64, ptr %1512, align 8, !tbaa !14
  %1514 = and i64 %1513, 255
  %1515 = lshr i64 %1508, %1514
  %1516 = and i64 %1513, -256
  %1517 = add i64 %1468, %1462
  %1518 = add i64 %1517, %1474
  %1519 = add i64 %1518, %1480
  %1520 = add i64 %1519, %1487
  %1521 = add i64 %1520, %1505
  %1522 = add i64 %1521, %1513
  %1523 = and i64 %1522, 255
  %1524 = lshr i64 %1444, %1523
  %1525 = or i64 %1524, %1516
  %1526 = or i64 %1525, %1515
  %1527 = add i64 %1522, %1455
  %1528 = and i64 %1527, 255
  %1529 = lshr i64 %1528, 3
  %1530 = sub nsw i64 64, %1528
  %1531 = lshr i64 %1526, %1530
  %1532 = and i64 %1527, 7
  store i64 %1531, ptr %1454, align 1, !tbaa !14
  %1533 = getelementptr inbounds nuw i8, ptr %1454, i64 %1529
  %1534 = add nsw i64 %1377, -14
  %1535 = icmp sgt i64 %1377, 14
  br i1 %1535, label %1376, label %.loopexit57, !llvm.loop !76

1536:                                             ; preds = %275
  %1537 = srem i32 %29, 8
  %1538 = icmp sgt i32 %1537, 0
  br i1 %1538, label %1539, label %1603

1539:                                             ; preds = %1536
  %1540 = and i32 %1537, 1
  %1541 = icmp eq i32 %1537, 1
  br i1 %1541, label %.thread55, label %1542

1542:                                             ; preds = %1539
  %1543 = and i32 %1537, 2147483646
  br label %1544

1544:                                             ; preds = %1544, %1542
  %1545 = phi i32 [ %29, %1542 ], [ %1561, %1544 ]
  %1546 = phi i64 [ 0, %1542 ], [ %1571, %1544 ]
  %1547 = phi i64 [ 0, %1542 ], [ %1572, %1544 ]
  %1548 = phi i32 [ 0, %1542 ], [ %1573, %1544 ]
  %1549 = add i32 %1545, -1
  %1550 = sext i32 %1549 to i64
  %1551 = getelementptr inbounds i8, ptr %2, i64 %1550
  %1552 = load i8, ptr %1551, align 1, !tbaa !5
  %1553 = zext i8 %1552 to i64
  %1554 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1553
  %1555 = load i64, ptr %1554, align 8, !tbaa !14
  %1556 = and i64 %1555, 255
  %1557 = lshr i64 %1546, %1556
  %1558 = and i64 %1555, -256
  %1559 = or i64 %1557, %1558
  %1560 = add i64 %1555, %1547
  %1561 = add i32 %1545, -2
  %1562 = sext i32 %1561 to i64
  %1563 = getelementptr inbounds i8, ptr %2, i64 %1562
  %1564 = load i8, ptr %1563, align 1, !tbaa !5
  %1565 = zext i8 %1564 to i64
  %1566 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1565
  %1567 = load i64, ptr %1566, align 8, !tbaa !14
  %1568 = and i64 %1567, 255
  %1569 = lshr i64 %1559, %1568
  %1570 = and i64 %1567, -256
  %1571 = or i64 %1569, %1570
  %1572 = add i64 %1560, %1567
  %1573 = add i32 %1548, 2
  %1574 = icmp eq i32 %1573, %1543
  br i1 %1574, label %1575, label %1544, !llvm.loop !78

.loopexit68:                                      ; preds = %1743, %1628, %1625, %1622, %1619, %1616, %1613, %1610
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

1575:                                             ; preds = %1544
  %1576 = sub i32 %29, %1543
  %1577 = icmp eq i32 %1540, 0
  br i1 %1577, label %1593, label %.thread55

.thread55:                                        ; preds = %1539, %1575
  %1578 = phi i64 [ %1572, %1575 ], [ 0, %1539 ]
  %1579 = phi i64 [ %1571, %1575 ], [ 0, %1539 ]
  %1580 = phi i32 [ %1576, %1575 ], [ %29, %1539 ]
  %1581 = add i32 %1580, -1
  %1582 = sext i32 %1581 to i64
  %1583 = getelementptr inbounds i8, ptr %2, i64 %1582
  %1584 = load i8, ptr %1583, align 1, !tbaa !5
  %1585 = zext i8 %1584 to i64
  %1586 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1585
  %1587 = load i64, ptr %1586, align 8, !tbaa !14
  %1588 = and i64 %1587, 255
  %1589 = lshr i64 %1579, %1588
  %1590 = and i64 %1587, -256
  %1591 = or i64 %1589, %1590
  %1592 = add i64 %1587, %1578
  br label %1593

1593:                                             ; preds = %.thread55, %1575
  %1594 = phi i64 [ %1571, %1575 ], [ %1591, %.thread55 ]
  %1595 = phi i64 [ %1572, %1575 ], [ %1592, %.thread55 ]
  %1596 = sub nsw i32 %29, %1537
  %1597 = and i64 %1595, 255
  %1598 = lshr i64 %1597, 3
  %1599 = sub nsw i64 64, %1597
  %1600 = lshr i64 %1594, %1599
  %1601 = and i64 %1595, 7
  store i64 %1600, ptr %0, align 1, !tbaa !14
  %1602 = getelementptr inbounds nuw i8, ptr %0, i64 %1598
  br label %1603

1603:                                             ; preds = %1593, %1536
  %1604 = phi i64 [ %1601, %1593 ], [ 0, %1536 ]
  %1605 = phi ptr [ %1602, %1593 ], [ %0, %1536 ]
  %1606 = phi i64 [ %1594, %1593 ], [ 0, %1536 ]
  %1607 = phi i32 [ %1596, %1593 ], [ %29, %1536 ]
  %1608 = and i32 %1607, 15
  %1609 = icmp eq i32 %1608, 0
  br i1 %1609, label %1727, label %1610

1610:                                             ; preds = %1603
  %1611 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1607, i32 -2)
  %1612 = extractvalue { i32, i1 } %1611, 1, !nosanitize !46
  br i1 %1612, label %.loopexit68, label %1613, !prof !49, !nosanitize !46

1613:                                             ; preds = %1610
  %1614 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1607, i32 -3)
  %1615 = extractvalue { i32, i1 } %1614, 1, !nosanitize !46
  br i1 %1615, label %.loopexit68, label %1616, !prof !49, !nosanitize !46

1616:                                             ; preds = %1613
  %1617 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1607, i32 -4)
  %1618 = extractvalue { i32, i1 } %1617, 1, !nosanitize !46
  br i1 %1618, label %.loopexit68, label %1619, !prof !49, !nosanitize !46

1619:                                             ; preds = %1616
  %1620 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1607, i32 -5)
  %1621 = extractvalue { i32, i1 } %1620, 1, !nosanitize !46
  br i1 %1621, label %.loopexit68, label %1622, !prof !49, !nosanitize !46

1622:                                             ; preds = %1619
  %1623 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1607, i32 -6)
  %1624 = extractvalue { i32, i1 } %1623, 1, !nosanitize !46
  br i1 %1624, label %.loopexit68, label %1625, !prof !49, !nosanitize !46

1625:                                             ; preds = %1622
  %1626 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1607, i32 -7)
  %1627 = extractvalue { i32, i1 } %1626, 1, !nosanitize !46
  br i1 %1627, label %.loopexit68, label %1628, !prof !49, !nosanitize !46

1628:                                             ; preds = %1625
  %1629 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1607, i32 -8)
  %1630 = extractvalue { i32, i1 } %1629, 1, !nosanitize !46
  br i1 %1630, label %.loopexit68, label %1631, !prof !49, !nosanitize !46

1631:                                             ; preds = %1628
  %1632 = extractvalue { i32, i1 } %1626, 0, !nosanitize !46
  %1633 = sext i32 %1632 to i64
  %1634 = getelementptr inbounds i8, ptr %2, i64 %1633
  %1635 = load i8, ptr %1634, align 1, !tbaa !5
  %1636 = zext i8 %1635 to i64
  %1637 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1636
  %1638 = load i64, ptr %1637, align 8, !tbaa !14
  %1639 = extractvalue { i32, i1 } %1623, 0, !nosanitize !46
  %1640 = sext i32 %1639 to i64
  %1641 = getelementptr inbounds i8, ptr %2, i64 %1640
  %1642 = load i8, ptr %1641, align 1, !tbaa !5
  %1643 = zext i8 %1642 to i64
  %1644 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1643
  %1645 = load i64, ptr %1644, align 8, !tbaa !14
  %1646 = extractvalue { i32, i1 } %1620, 0, !nosanitize !46
  %1647 = sext i32 %1646 to i64
  %1648 = getelementptr inbounds i8, ptr %2, i64 %1647
  %1649 = load i8, ptr %1648, align 1, !tbaa !5
  %1650 = zext i8 %1649 to i64
  %1651 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1650
  %1652 = load i64, ptr %1651, align 8, !tbaa !14
  %1653 = extractvalue { i32, i1 } %1617, 0, !nosanitize !46
  %1654 = sext i32 %1653 to i64
  %1655 = getelementptr inbounds i8, ptr %2, i64 %1654
  %1656 = load i8, ptr %1655, align 1, !tbaa !5
  %1657 = zext i8 %1656 to i64
  %1658 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1657
  %1659 = load i64, ptr %1658, align 8, !tbaa !14
  %1660 = extractvalue { i32, i1 } %1614, 0, !nosanitize !46
  %1661 = sext i32 %1660 to i64
  %1662 = getelementptr inbounds i8, ptr %2, i64 %1661
  %1663 = load i8, ptr %1662, align 1, !tbaa !5
  %1664 = zext i8 %1663 to i64
  %1665 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1664
  %1666 = load i64, ptr %1665, align 8, !tbaa !14
  %1667 = extractvalue { i32, i1 } %1611, 0, !nosanitize !46
  %1668 = sext i32 %1667 to i64
  %1669 = getelementptr inbounds i8, ptr %2, i64 %1668
  %1670 = load i8, ptr %1669, align 1, !tbaa !5
  %1671 = zext i8 %1670 to i64
  %1672 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1671
  %1673 = load i64, ptr %1672, align 8, !tbaa !14
  %1674 = sext i32 %1607 to i64
  %1675 = getelementptr i8, ptr %2, i64 %1674
  %1676 = getelementptr i8, ptr %1675, i64 -1
  %1677 = load i8, ptr %1676, align 1, !tbaa !5
  %1678 = zext i8 %1677 to i64
  %1679 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1678
  %1680 = load i64, ptr %1679, align 8, !tbaa !14
  %1681 = and i64 %1680, 255
  %1682 = lshr i64 %1606, %1681
  %1683 = or i64 %1682, %1680
  %1684 = and i64 %1673, 255
  %1685 = lshr i64 %1683, %1684
  %1686 = or i64 %1685, %1673
  %1687 = and i64 %1666, 255
  %1688 = lshr i64 %1686, %1687
  %1689 = or i64 %1688, %1666
  %1690 = and i64 %1659, 255
  %1691 = lshr i64 %1689, %1690
  %1692 = or i64 %1691, %1659
  %1693 = and i64 %1652, 255
  %1694 = lshr i64 %1692, %1693
  %1695 = or i64 %1694, %1652
  %1696 = and i64 %1645, 255
  %1697 = lshr i64 %1695, %1696
  %1698 = or i64 %1697, %1645
  %1699 = and i64 %1638, 255
  %1700 = lshr i64 %1698, %1699
  %1701 = or i64 %1700, %1638
  %1702 = extractvalue { i32, i1 } %1629, 0, !nosanitize !46
  %1703 = sext i32 %1702 to i64
  %1704 = getelementptr inbounds i8, ptr %2, i64 %1703
  %1705 = load i8, ptr %1704, align 1, !tbaa !5
  %1706 = zext i8 %1705 to i64
  %1707 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1706
  %1708 = load i64, ptr %1707, align 8, !tbaa !14
  %1709 = and i64 %1708, 255
  %1710 = lshr i64 %1701, %1709
  %1711 = and i64 %1708, -256
  %1712 = or i64 %1710, %1711
  %1713 = add i64 %1638, %1604
  %1714 = add i64 %1713, %1645
  %1715 = add i64 %1714, %1652
  %1716 = add i64 %1715, %1659
  %1717 = add i64 %1716, %1666
  %1718 = add i64 %1717, %1673
  %1719 = add i64 %1718, %1680
  %1720 = add i64 %1719, %1708
  %1721 = and i64 %1720, 255
  %1722 = lshr i64 %1721, 3
  %1723 = sub nsw i64 64, %1721
  %1724 = lshr i64 %1712, %1723
  %1725 = and i64 %1720, 7
  store i64 %1724, ptr %1605, align 1, !tbaa !14
  %1726 = getelementptr inbounds nuw i8, ptr %1605, i64 %1722
  br label %1727

1727:                                             ; preds = %1631, %1603
  %1728 = phi i64 [ %1604, %1603 ], [ %1725, %1631 ]
  %1729 = phi ptr [ %1605, %1603 ], [ %1726, %1631 ]
  %1730 = phi i64 [ %1606, %1603 ], [ %1712, %1631 ]
  %1731 = phi i32 [ %1607, %1603 ], [ %1702, %1631 ]
  %1732 = getelementptr i8, ptr %2, i64 -16
  %1733 = icmp sgt i32 %1731, 0
  br i1 %1733, label %1734, label %.loopexit57

1734:                                             ; preds = %1727
  %1735 = zext nneg i32 %1731 to i64
  %1736 = getelementptr i8, ptr %2, i64 -1
  %1737 = getelementptr i8, ptr %2, i64 -2
  %1738 = getelementptr i8, ptr %2, i64 -3
  %1739 = getelementptr i8, ptr %2, i64 -4
  %1740 = getelementptr i8, ptr %2, i64 -5
  %1741 = getelementptr i8, ptr %2, i64 -6
  %1742 = getelementptr i8, ptr %2, i64 -7
  br label %1743

1743:                                             ; preds = %1828, %1734
  %1744 = phi i64 [ %1735, %1734 ], [ %1920, %1828 ]
  %1745 = phi i64 [ %1730, %1734 ], [ %1912, %1828 ]
  %1746 = phi ptr [ %1729, %1734 ], [ %1919, %1828 ]
  %1747 = phi i64 [ %1728, %1734 ], [ %1918, %1828 ]
  %1748 = getelementptr i8, ptr %1736, i64 %1744
  %1749 = load i8, ptr %1748, align 1, !tbaa !5
  %1750 = zext i8 %1749 to i64
  %1751 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1750
  %1752 = load i64, ptr %1751, align 8, !tbaa !14
  %1753 = and i64 %1752, 255
  %1754 = lshr i64 %1745, %1753
  %1755 = or i64 %1754, %1752
  %1756 = add i64 %1752, %1747
  %1757 = getelementptr i8, ptr %1737, i64 %1744
  %1758 = load i8, ptr %1757, align 1, !tbaa !5
  %1759 = zext i8 %1758 to i64
  %1760 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1759
  %1761 = load i64, ptr %1760, align 8, !tbaa !14
  %1762 = and i64 %1761, 255
  %1763 = lshr i64 %1755, %1762
  %1764 = or i64 %1763, %1761
  %1765 = add i64 %1756, %1761
  %1766 = getelementptr i8, ptr %1738, i64 %1744
  %1767 = load i8, ptr %1766, align 1, !tbaa !5
  %1768 = zext i8 %1767 to i64
  %1769 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1768
  %1770 = load i64, ptr %1769, align 8, !tbaa !14
  %1771 = and i64 %1770, 255
  %1772 = lshr i64 %1764, %1771
  %1773 = or i64 %1772, %1770
  %1774 = add i64 %1765, %1770
  %1775 = getelementptr i8, ptr %1739, i64 %1744
  %1776 = load i8, ptr %1775, align 1, !tbaa !5
  %1777 = zext i8 %1776 to i64
  %1778 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1777
  %1779 = load i64, ptr %1778, align 8, !tbaa !14
  %1780 = and i64 %1779, 255
  %1781 = lshr i64 %1773, %1780
  %1782 = or i64 %1781, %1779
  %1783 = add i64 %1774, %1779
  %1784 = getelementptr i8, ptr %1740, i64 %1744
  %1785 = load i8, ptr %1784, align 1, !tbaa !5
  %1786 = zext i8 %1785 to i64
  %1787 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1786
  %1788 = load i64, ptr %1787, align 8, !tbaa !14
  %1789 = and i64 %1788, 255
  %1790 = lshr i64 %1782, %1789
  %1791 = or i64 %1790, %1788
  %1792 = add i64 %1783, %1788
  %1793 = getelementptr i8, ptr %1741, i64 %1744
  %1794 = load i8, ptr %1793, align 1, !tbaa !5
  %1795 = zext i8 %1794 to i64
  %1796 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1795
  %1797 = load i64, ptr %1796, align 8, !tbaa !14
  %1798 = and i64 %1797, 255
  %1799 = lshr i64 %1791, %1798
  %1800 = or i64 %1799, %1797
  %1801 = add i64 %1792, %1797
  %1802 = getelementptr i8, ptr %1742, i64 %1744
  %1803 = load i8, ptr %1802, align 1, !tbaa !5
  %1804 = zext i8 %1803 to i64
  %1805 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1804
  %1806 = load i64, ptr %1805, align 8, !tbaa !14
  %1807 = and i64 %1806, 255
  %1808 = lshr i64 %1800, %1807
  %1809 = or i64 %1808, %1806
  %1810 = add i64 %1801, %1806
  %1811 = add nsw i64 %1744, -8
  %1812 = getelementptr inbounds i8, ptr %2, i64 %1811
  %1813 = load i8, ptr %1812, align 1, !tbaa !5
  %1814 = zext i8 %1813 to i64
  %1815 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1814
  %1816 = load i64, ptr %1815, align 8, !tbaa !14
  %1817 = and i64 %1816, 255
  %1818 = lshr i64 %1809, %1817
  %1819 = and i64 %1816, -256
  %1820 = or i64 %1818, %1819
  %1821 = add i64 %1810, %1816
  %1822 = and i64 %1821, 255
  %1823 = sub nsw i64 64, %1822
  %1824 = lshr i64 %1820, %1823
  store i64 %1824, ptr %1746, align 1, !tbaa !14
  %1825 = trunc nsw i64 %1811 to i32
  %1826 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1825, i32 -1)
  %1827 = extractvalue { i32, i1 } %1826, 1, !nosanitize !46
  br i1 %1827, label %.loopexit68, label %1828, !prof !49, !nosanitize !46

1828:                                             ; preds = %1743
  %1829 = lshr i64 %1822, 3
  %1830 = getelementptr inbounds nuw i8, ptr %1746, i64 %1829
  %1831 = and i64 %1821, 7
  %1832 = shl i64 %1744, 32
  %sext = add i64 %1832, -60129542144
  %1833 = ashr exact i64 %sext, 32
  %1834 = getelementptr inbounds i8, ptr %2, i64 %1833
  %1835 = load i8, ptr %1834, align 1, !tbaa !5
  %1836 = zext i8 %1835 to i64
  %1837 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1836
  %1838 = load i64, ptr %1837, align 8, !tbaa !14
  %sext22 = add i64 %1832, -55834574848
  %1839 = ashr exact i64 %sext22, 32
  %1840 = getelementptr inbounds i8, ptr %2, i64 %1839
  %1841 = load i8, ptr %1840, align 1, !tbaa !5
  %1842 = zext i8 %1841 to i64
  %1843 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1842
  %1844 = load i64, ptr %1843, align 8, !tbaa !14
  %sext23 = add i64 %1832, -51539607552
  %1845 = ashr exact i64 %sext23, 32
  %1846 = getelementptr inbounds i8, ptr %2, i64 %1845
  %1847 = load i8, ptr %1846, align 1, !tbaa !5
  %1848 = zext i8 %1847 to i64
  %1849 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1848
  %1850 = load i64, ptr %1849, align 8, !tbaa !14
  %sext24 = add i64 %1832, -47244640256
  %1851 = ashr exact i64 %sext24, 32
  %1852 = getelementptr inbounds i8, ptr %2, i64 %1851
  %1853 = load i8, ptr %1852, align 1, !tbaa !5
  %1854 = zext i8 %1853 to i64
  %1855 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1854
  %1856 = load i64, ptr %1855, align 8, !tbaa !14
  %sext25 = add i64 %1832, -42949672960
  %1857 = ashr exact i64 %sext25, 32
  %1858 = getelementptr inbounds i8, ptr %2, i64 %1857
  %1859 = load i8, ptr %1858, align 1, !tbaa !5
  %1860 = zext i8 %1859 to i64
  %1861 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1860
  %1862 = load i64, ptr %1861, align 8, !tbaa !14
  %1863 = extractvalue { i32, i1 } %1826, 0, !nosanitize !46
  %1864 = sext i32 %1863 to i64
  %1865 = getelementptr inbounds i8, ptr %2, i64 %1864
  %1866 = load i8, ptr %1865, align 1, !tbaa !5
  %1867 = zext i8 %1866 to i64
  %1868 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1867
  %1869 = load i64, ptr %1868, align 8, !tbaa !14
  %1870 = and i64 %1862, 255
  %1871 = lshr i64 %1869, %1870
  %1872 = or i64 %1871, %1862
  %1873 = and i64 %1856, 255
  %1874 = lshr i64 %1872, %1873
  %1875 = or i64 %1874, %1856
  %1876 = and i64 %1850, 255
  %1877 = lshr i64 %1875, %1876
  %1878 = or i64 %1877, %1850
  %1879 = and i64 %1844, 255
  %1880 = lshr i64 %1878, %1879
  %1881 = or i64 %1880, %1844
  %1882 = and i64 %1838, 255
  %1883 = lshr i64 %1881, %1882
  %1884 = or i64 %1883, %1838
  %sext26 = add i64 %1832, -64424509440
  %1885 = ashr exact i64 %sext26, 32
  %1886 = getelementptr inbounds i8, ptr %2, i64 %1885
  %1887 = load i8, ptr %1886, align 1, !tbaa !5
  %1888 = zext i8 %1887 to i64
  %1889 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1888
  %1890 = load i64, ptr %1889, align 8, !tbaa !14
  %1891 = and i64 %1890, 255
  %1892 = lshr i64 %1884, %1891
  %1893 = or i64 %1892, %1890
  %1894 = getelementptr i8, ptr %1732, i64 %1744
  %1895 = load i8, ptr %1894, align 1, !tbaa !5
  %1896 = zext i8 %1895 to i64
  %1897 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1896
  %1898 = load i64, ptr %1897, align 8, !tbaa !14
  %1899 = and i64 %1898, 255
  %1900 = lshr i64 %1893, %1899
  %1901 = and i64 %1898, -256
  %1902 = add i64 %1844, %1838
  %1903 = add i64 %1902, %1850
  %1904 = add i64 %1903, %1856
  %1905 = add i64 %1904, %1862
  %1906 = add i64 %1905, %1869
  %1907 = add i64 %1906, %1890
  %1908 = add i64 %1907, %1898
  %1909 = and i64 %1908, 255
  %1910 = lshr i64 %1820, %1909
  %1911 = or i64 %1910, %1901
  %1912 = or i64 %1911, %1900
  %1913 = add i64 %1908, %1831
  %1914 = and i64 %1913, 255
  %1915 = lshr i64 %1914, 3
  %1916 = sub nsw i64 64, %1914
  %1917 = lshr i64 %1912, %1916
  %1918 = and i64 %1913, 7
  store i64 %1917, ptr %1830, align 1, !tbaa !14
  %1919 = getelementptr inbounds nuw i8, ptr %1830, i64 %1915
  %1920 = add nsw i64 %1744, -16
  %1921 = icmp sgt i64 %1744, 16
  br i1 %1921, label %1743, label %.loopexit57, !llvm.loop !76

1922:                                             ; preds = %275
  %1923 = srem i32 %29, 9
  %1924 = icmp sgt i32 %1923, 0
  br i1 %1924, label %1925, label %1993

1925:                                             ; preds = %1922
  %1926 = xor i32 %29, -2147483648
  %1927 = add nsw i32 %1923, -1
  %1928 = icmp ugt i32 %1926, %1927
  br i1 %1928, label %1929, label %.loopexit58, !prof !77, !nosanitize !46

1929:                                             ; preds = %1925
  %1930 = and i32 %1923, 1
  %1931 = icmp eq i32 %1927, 0
  br i1 %1931, label %.thread56, label %1932

1932:                                             ; preds = %1929
  %1933 = and i32 %1923, 2147483646
  br label %1934

1934:                                             ; preds = %1934, %1932
  %1935 = phi i32 [ %29, %1932 ], [ %1951, %1934 ]
  %1936 = phi i64 [ 0, %1932 ], [ %1961, %1934 ]
  %1937 = phi i64 [ 0, %1932 ], [ %1962, %1934 ]
  %1938 = phi i32 [ 0, %1932 ], [ %1963, %1934 ]
  %1939 = add i32 %1935, -1
  %1940 = sext i32 %1939 to i64
  %1941 = getelementptr inbounds i8, ptr %2, i64 %1940
  %1942 = load i8, ptr %1941, align 1, !tbaa !5
  %1943 = zext i8 %1942 to i64
  %1944 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1943
  %1945 = load i64, ptr %1944, align 8, !tbaa !14
  %1946 = and i64 %1945, 255
  %1947 = lshr i64 %1936, %1946
  %1948 = and i64 %1945, -256
  %1949 = or i64 %1947, %1948
  %1950 = add i64 %1945, %1937
  %1951 = add i32 %1935, -2
  %1952 = sext i32 %1951 to i64
  %1953 = getelementptr inbounds i8, ptr %2, i64 %1952
  %1954 = load i8, ptr %1953, align 1, !tbaa !5
  %1955 = zext i8 %1954 to i64
  %1956 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1955
  %1957 = load i64, ptr %1956, align 8, !tbaa !14
  %1958 = and i64 %1957, 255
  %1959 = lshr i64 %1949, %1958
  %1960 = and i64 %1957, -256
  %1961 = or i64 %1959, %1960
  %1962 = add i64 %1950, %1957
  %1963 = add i32 %1938, 2
  %1964 = icmp eq i32 %1963, %1933
  br i1 %1964, label %1965, label %1934, !llvm.loop !78

.loopexit58:                                      ; preds = %2147, %2021, %2018, %2015, %2012, %2009, %2006, %2003, %2000, %1925
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

1965:                                             ; preds = %1934
  %1966 = sub i32 %29, %1933
  %1967 = icmp eq i32 %1930, 0
  br i1 %1967, label %1983, label %.thread56

.thread56:                                        ; preds = %1929, %1965
  %1968 = phi i64 [ %1962, %1965 ], [ 0, %1929 ]
  %1969 = phi i64 [ %1961, %1965 ], [ 0, %1929 ]
  %1970 = phi i32 [ %1966, %1965 ], [ %29, %1929 ]
  %1971 = add i32 %1970, -1
  %1972 = sext i32 %1971 to i64
  %1973 = getelementptr inbounds i8, ptr %2, i64 %1972
  %1974 = load i8, ptr %1973, align 1, !tbaa !5
  %1975 = zext i8 %1974 to i64
  %1976 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1975
  %1977 = load i64, ptr %1976, align 8, !tbaa !14
  %1978 = and i64 %1977, 255
  %1979 = lshr i64 %1969, %1978
  %1980 = and i64 %1977, -256
  %1981 = or i64 %1979, %1980
  %1982 = add i64 %1977, %1968
  br label %1983

1983:                                             ; preds = %.thread56, %1965
  %1984 = phi i64 [ %1961, %1965 ], [ %1981, %.thread56 ]
  %1985 = phi i64 [ %1962, %1965 ], [ %1982, %.thread56 ]
  %1986 = sub nsw i32 %29, %1923
  %1987 = and i64 %1985, 255
  %1988 = lshr i64 %1987, 3
  %1989 = sub nsw i64 64, %1987
  %1990 = lshr i64 %1984, %1989
  %1991 = and i64 %1985, 7
  store i64 %1990, ptr %0, align 1, !tbaa !14
  %1992 = getelementptr inbounds nuw i8, ptr %0, i64 %1988
  br label %1993

1993:                                             ; preds = %1983, %1922
  %1994 = phi i64 [ %1991, %1983 ], [ 0, %1922 ]
  %1995 = phi ptr [ %1992, %1983 ], [ %0, %1922 ]
  %1996 = phi i64 [ %1984, %1983 ], [ 0, %1922 ]
  %1997 = phi i32 [ %1986, %1983 ], [ %29, %1922 ]
  %1998 = srem i32 %1997, 18
  %1999 = icmp eq i32 %1998, 0
  br i1 %1999, label %2130, label %2000

2000:                                             ; preds = %1993
  %2001 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1997, i32 -1)
  %2002 = extractvalue { i32, i1 } %2001, 1, !nosanitize !46
  br i1 %2002, label %.loopexit58, label %2003, !prof !49, !nosanitize !46

2003:                                             ; preds = %2000
  %2004 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1997, i32 -2)
  %2005 = extractvalue { i32, i1 } %2004, 1, !nosanitize !46
  br i1 %2005, label %.loopexit58, label %2006, !prof !49, !nosanitize !46

2006:                                             ; preds = %2003
  %2007 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1997, i32 -4)
  %2008 = extractvalue { i32, i1 } %2007, 1, !nosanitize !46
  br i1 %2008, label %.loopexit58, label %2009, !prof !49, !nosanitize !46

2009:                                             ; preds = %2006
  %2010 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1997, i32 -5)
  %2011 = extractvalue { i32, i1 } %2010, 1, !nosanitize !46
  br i1 %2011, label %.loopexit58, label %2012, !prof !49, !nosanitize !46

2012:                                             ; preds = %2009
  %2013 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1997, i32 -6)
  %2014 = extractvalue { i32, i1 } %2013, 1, !nosanitize !46
  br i1 %2014, label %.loopexit58, label %2015, !prof !49, !nosanitize !46

2015:                                             ; preds = %2012
  %2016 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1997, i32 -7)
  %2017 = extractvalue { i32, i1 } %2016, 1, !nosanitize !46
  br i1 %2017, label %.loopexit58, label %2018, !prof !49, !nosanitize !46

2018:                                             ; preds = %2015
  %2019 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1997, i32 -8)
  %2020 = extractvalue { i32, i1 } %2019, 1, !nosanitize !46
  br i1 %2020, label %.loopexit58, label %2021, !prof !49, !nosanitize !46

2021:                                             ; preds = %2018
  %2022 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1997, i32 -9)
  %2023 = extractvalue { i32, i1 } %2022, 1, !nosanitize !46
  br i1 %2023, label %.loopexit58, label %2024, !prof !49, !nosanitize !46

2024:                                             ; preds = %2021
  %2025 = extractvalue { i32, i1 } %2019, 0, !nosanitize !46
  %2026 = sext i32 %2025 to i64
  %2027 = getelementptr inbounds i8, ptr %2, i64 %2026
  %2028 = load i8, ptr %2027, align 1, !tbaa !5
  %2029 = zext i8 %2028 to i64
  %2030 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2029
  %2031 = load i64, ptr %2030, align 8, !tbaa !14
  %2032 = extractvalue { i32, i1 } %2016, 0, !nosanitize !46
  %2033 = sext i32 %2032 to i64
  %2034 = getelementptr inbounds i8, ptr %2, i64 %2033
  %2035 = load i8, ptr %2034, align 1, !tbaa !5
  %2036 = zext i8 %2035 to i64
  %2037 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2036
  %2038 = load i64, ptr %2037, align 8, !tbaa !14
  %2039 = extractvalue { i32, i1 } %2013, 0, !nosanitize !46
  %2040 = sext i32 %2039 to i64
  %2041 = getelementptr inbounds i8, ptr %2, i64 %2040
  %2042 = load i8, ptr %2041, align 1, !tbaa !5
  %2043 = zext i8 %2042 to i64
  %2044 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2043
  %2045 = load i64, ptr %2044, align 8, !tbaa !14
  %2046 = extractvalue { i32, i1 } %2010, 0, !nosanitize !46
  %2047 = sext i32 %2046 to i64
  %2048 = getelementptr inbounds i8, ptr %2, i64 %2047
  %2049 = load i8, ptr %2048, align 1, !tbaa !5
  %2050 = zext i8 %2049 to i64
  %2051 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2050
  %2052 = load i64, ptr %2051, align 8, !tbaa !14
  %2053 = extractvalue { i32, i1 } %2007, 0, !nosanitize !46
  %2054 = sext i32 %2053 to i64
  %2055 = getelementptr inbounds i8, ptr %2, i64 %2054
  %2056 = load i8, ptr %2055, align 1, !tbaa !5
  %2057 = zext i8 %2056 to i64
  %2058 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2057
  %2059 = load i64, ptr %2058, align 8, !tbaa !14
  %2060 = sext i32 %1997 to i64
  %2061 = getelementptr i8, ptr %2, i64 %2060
  %2062 = getelementptr i8, ptr %2061, i64 -3
  %2063 = load i8, ptr %2062, align 1, !tbaa !5
  %2064 = zext i8 %2063 to i64
  %2065 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2064
  %2066 = load i64, ptr %2065, align 8, !tbaa !14
  %2067 = extractvalue { i32, i1 } %2004, 0, !nosanitize !46
  %2068 = sext i32 %2067 to i64
  %2069 = getelementptr inbounds i8, ptr %2, i64 %2068
  %2070 = load i8, ptr %2069, align 1, !tbaa !5
  %2071 = zext i8 %2070 to i64
  %2072 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2071
  %2073 = load i64, ptr %2072, align 8, !tbaa !14
  %2074 = extractvalue { i32, i1 } %2001, 0, !nosanitize !46
  %2075 = sext i32 %2074 to i64
  %2076 = getelementptr inbounds i8, ptr %2, i64 %2075
  %2077 = load i8, ptr %2076, align 1, !tbaa !5
  %2078 = zext i8 %2077 to i64
  %2079 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2078
  %2080 = load i64, ptr %2079, align 8, !tbaa !14
  %2081 = and i64 %2080, 255
  %2082 = lshr i64 %1996, %2081
  %2083 = or i64 %2082, %2080
  %2084 = and i64 %2073, 255
  %2085 = lshr i64 %2083, %2084
  %2086 = or i64 %2085, %2073
  %2087 = and i64 %2066, 255
  %2088 = lshr i64 %2086, %2087
  %2089 = or i64 %2088, %2066
  %2090 = and i64 %2059, 255
  %2091 = lshr i64 %2089, %2090
  %2092 = or i64 %2091, %2059
  %2093 = and i64 %2052, 255
  %2094 = lshr i64 %2092, %2093
  %2095 = or i64 %2094, %2052
  %2096 = and i64 %2045, 255
  %2097 = lshr i64 %2095, %2096
  %2098 = or i64 %2097, %2045
  %2099 = and i64 %2038, 255
  %2100 = lshr i64 %2098, %2099
  %2101 = or i64 %2100, %2038
  %2102 = and i64 %2031, 255
  %2103 = lshr i64 %2101, %2102
  %2104 = or i64 %2103, %2031
  %2105 = extractvalue { i32, i1 } %2022, 0, !nosanitize !46
  %2106 = sext i32 %2105 to i64
  %2107 = getelementptr inbounds i8, ptr %2, i64 %2106
  %2108 = load i8, ptr %2107, align 1, !tbaa !5
  %2109 = zext i8 %2108 to i64
  %2110 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2109
  %2111 = load i64, ptr %2110, align 8, !tbaa !14
  %2112 = and i64 %2111, 255
  %2113 = lshr i64 %2104, %2112
  %2114 = or i64 %2113, %2111
  %2115 = add i64 %2031, %1994
  %2116 = add i64 %2115, %2038
  %2117 = add i64 %2116, %2045
  %2118 = add i64 %2117, %2052
  %2119 = add i64 %2118, %2059
  %2120 = add i64 %2119, %2066
  %2121 = add i64 %2120, %2073
  %2122 = add i64 %2121, %2080
  %2123 = add i64 %2122, %2111
  %2124 = and i64 %2123, 255
  %2125 = lshr i64 %2124, 3
  %2126 = sub nsw i64 64, %2124
  %2127 = lshr i64 %2114, %2126
  %2128 = and i64 %2123, 7
  store i64 %2127, ptr %1995, align 1, !tbaa !14
  %2129 = getelementptr inbounds nuw i8, ptr %1995, i64 %2125
  br label %2130

2130:                                             ; preds = %2024, %1993
  %2131 = phi i64 [ %1994, %1993 ], [ %2128, %2024 ]
  %2132 = phi ptr [ %1995, %1993 ], [ %2129, %2024 ]
  %2133 = phi i64 [ %1996, %1993 ], [ %2114, %2024 ]
  %2134 = phi i32 [ %1997, %1993 ], [ %2105, %2024 ]
  %2135 = getelementptr i8, ptr %2, i64 -18
  %2136 = icmp sgt i32 %2134, 0
  br i1 %2136, label %2137, label %.loopexit57

2137:                                             ; preds = %2130
  %2138 = zext nneg i32 %2134 to i64
  %2139 = getelementptr i8, ptr %2, i64 -1
  %2140 = getelementptr i8, ptr %2, i64 -2
  %2141 = getelementptr i8, ptr %2, i64 -3
  %2142 = getelementptr i8, ptr %2, i64 -4
  %2143 = getelementptr i8, ptr %2, i64 -5
  %2144 = getelementptr i8, ptr %2, i64 -6
  %2145 = getelementptr i8, ptr %2, i64 -7
  %2146 = getelementptr i8, ptr %2, i64 -8
  br label %2147

2147:                                             ; preds = %2240, %2137
  %2148 = phi i64 [ %2138, %2137 ], [ %2341, %2240 ]
  %2149 = phi i64 [ %2133, %2137 ], [ %2333, %2240 ]
  %2150 = phi ptr [ %2132, %2137 ], [ %2340, %2240 ]
  %2151 = phi i64 [ %2131, %2137 ], [ %2339, %2240 ]
  %2152 = getelementptr i8, ptr %2139, i64 %2148
  %2153 = load i8, ptr %2152, align 1, !tbaa !5
  %2154 = zext i8 %2153 to i64
  %2155 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2154
  %2156 = load i64, ptr %2155, align 8, !tbaa !14
  %2157 = and i64 %2156, 255
  %2158 = lshr i64 %2149, %2157
  %2159 = or i64 %2158, %2156
  %2160 = add i64 %2156, %2151
  %2161 = getelementptr i8, ptr %2140, i64 %2148
  %2162 = load i8, ptr %2161, align 1, !tbaa !5
  %2163 = zext i8 %2162 to i64
  %2164 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2163
  %2165 = load i64, ptr %2164, align 8, !tbaa !14
  %2166 = and i64 %2165, 255
  %2167 = lshr i64 %2159, %2166
  %2168 = or i64 %2167, %2165
  %2169 = add i64 %2160, %2165
  %2170 = getelementptr i8, ptr %2141, i64 %2148
  %2171 = load i8, ptr %2170, align 1, !tbaa !5
  %2172 = zext i8 %2171 to i64
  %2173 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2172
  %2174 = load i64, ptr %2173, align 8, !tbaa !14
  %2175 = and i64 %2174, 255
  %2176 = lshr i64 %2168, %2175
  %2177 = or i64 %2176, %2174
  %2178 = add i64 %2169, %2174
  %2179 = getelementptr i8, ptr %2142, i64 %2148
  %2180 = load i8, ptr %2179, align 1, !tbaa !5
  %2181 = zext i8 %2180 to i64
  %2182 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2181
  %2183 = load i64, ptr %2182, align 8, !tbaa !14
  %2184 = and i64 %2183, 255
  %2185 = lshr i64 %2177, %2184
  %2186 = or i64 %2185, %2183
  %2187 = add i64 %2178, %2183
  %2188 = getelementptr i8, ptr %2143, i64 %2148
  %2189 = load i8, ptr %2188, align 1, !tbaa !5
  %2190 = zext i8 %2189 to i64
  %2191 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2190
  %2192 = load i64, ptr %2191, align 8, !tbaa !14
  %2193 = and i64 %2192, 255
  %2194 = lshr i64 %2186, %2193
  %2195 = or i64 %2194, %2192
  %2196 = add i64 %2187, %2192
  %2197 = getelementptr i8, ptr %2144, i64 %2148
  %2198 = load i8, ptr %2197, align 1, !tbaa !5
  %2199 = zext i8 %2198 to i64
  %2200 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2199
  %2201 = load i64, ptr %2200, align 8, !tbaa !14
  %2202 = and i64 %2201, 255
  %2203 = lshr i64 %2195, %2202
  %2204 = or i64 %2203, %2201
  %2205 = add i64 %2196, %2201
  %2206 = getelementptr i8, ptr %2145, i64 %2148
  %2207 = load i8, ptr %2206, align 1, !tbaa !5
  %2208 = zext i8 %2207 to i64
  %2209 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2208
  %2210 = load i64, ptr %2209, align 8, !tbaa !14
  %2211 = and i64 %2210, 255
  %2212 = lshr i64 %2204, %2211
  %2213 = or i64 %2212, %2210
  %2214 = add i64 %2205, %2210
  %2215 = getelementptr i8, ptr %2146, i64 %2148
  %2216 = load i8, ptr %2215, align 1, !tbaa !5
  %2217 = zext i8 %2216 to i64
  %2218 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2217
  %2219 = load i64, ptr %2218, align 8, !tbaa !14
  %2220 = and i64 %2219, 255
  %2221 = lshr i64 %2213, %2220
  %2222 = or i64 %2221, %2219
  %2223 = add i64 %2214, %2219
  %2224 = add nsw i64 %2148, -9
  %2225 = getelementptr inbounds i8, ptr %2, i64 %2224
  %2226 = load i8, ptr %2225, align 1, !tbaa !5
  %2227 = zext i8 %2226 to i64
  %2228 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2227
  %2229 = load i64, ptr %2228, align 8, !tbaa !14
  %2230 = and i64 %2229, 255
  %2231 = lshr i64 %2222, %2230
  %2232 = or i64 %2231, %2229
  %2233 = add i64 %2223, %2229
  %2234 = and i64 %2233, 255
  %2235 = sub nsw i64 64, %2234
  %2236 = lshr i64 %2232, %2235
  store i64 %2236, ptr %2150, align 1, !tbaa !14
  %2237 = trunc nsw i64 %2224 to i32
  %2238 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2237, i32 -1)
  %2239 = extractvalue { i32, i1 } %2238, 1, !nosanitize !46
  br i1 %2239, label %.loopexit58, label %2240, !prof !49, !nosanitize !46

2240:                                             ; preds = %2147
  %2241 = lshr i64 %2234, 3
  %2242 = getelementptr inbounds nuw i8, ptr %2150, i64 %2241
  %2243 = and i64 %2233, 7
  %2244 = shl i64 %2148, 32
  %sext42 = add i64 %2244, -68719476736
  %2245 = ashr exact i64 %sext42, 32
  %2246 = getelementptr inbounds i8, ptr %2, i64 %2245
  %2247 = load i8, ptr %2246, align 1, !tbaa !5
  %2248 = zext i8 %2247 to i64
  %2249 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2248
  %2250 = load i64, ptr %2249, align 8, !tbaa !14
  %sext43 = add i64 %2244, -64424509440
  %2251 = ashr exact i64 %sext43, 32
  %2252 = getelementptr inbounds i8, ptr %2, i64 %2251
  %2253 = load i8, ptr %2252, align 1, !tbaa !5
  %2254 = zext i8 %2253 to i64
  %2255 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2254
  %2256 = load i64, ptr %2255, align 8, !tbaa !14
  %sext44 = add i64 %2244, -60129542144
  %2257 = ashr exact i64 %sext44, 32
  %2258 = getelementptr inbounds i8, ptr %2, i64 %2257
  %2259 = load i8, ptr %2258, align 1, !tbaa !5
  %2260 = zext i8 %2259 to i64
  %2261 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2260
  %2262 = load i64, ptr %2261, align 8, !tbaa !14
  %sext45 = add i64 %2244, -55834574848
  %2263 = ashr exact i64 %sext45, 32
  %2264 = getelementptr inbounds i8, ptr %2, i64 %2263
  %2265 = load i8, ptr %2264, align 1, !tbaa !5
  %2266 = zext i8 %2265 to i64
  %2267 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2266
  %2268 = load i64, ptr %2267, align 8, !tbaa !14
  %sext46 = add i64 %2244, -51539607552
  %2269 = ashr exact i64 %sext46, 32
  %2270 = getelementptr inbounds i8, ptr %2, i64 %2269
  %2271 = load i8, ptr %2270, align 1, !tbaa !5
  %2272 = zext i8 %2271 to i64
  %2273 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2272
  %2274 = load i64, ptr %2273, align 8, !tbaa !14
  %sext47 = add i64 %2244, -47244640256
  %2275 = ashr exact i64 %sext47, 32
  %2276 = getelementptr inbounds i8, ptr %2, i64 %2275
  %2277 = load i8, ptr %2276, align 1, !tbaa !5
  %2278 = zext i8 %2277 to i64
  %2279 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2278
  %2280 = load i64, ptr %2279, align 8, !tbaa !14
  %2281 = extractvalue { i32, i1 } %2238, 0, !nosanitize !46
  %2282 = sext i32 %2281 to i64
  %2283 = getelementptr inbounds i8, ptr %2, i64 %2282
  %2284 = load i8, ptr %2283, align 1, !tbaa !5
  %2285 = zext i8 %2284 to i64
  %2286 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2285
  %2287 = load i64, ptr %2286, align 8, !tbaa !14
  %2288 = and i64 %2280, 255
  %2289 = lshr i64 %2287, %2288
  %2290 = or i64 %2289, %2280
  %2291 = and i64 %2274, 255
  %2292 = lshr i64 %2290, %2291
  %2293 = or i64 %2292, %2274
  %2294 = and i64 %2268, 255
  %2295 = lshr i64 %2293, %2294
  %2296 = or i64 %2295, %2268
  %2297 = and i64 %2262, 255
  %2298 = lshr i64 %2296, %2297
  %2299 = or i64 %2298, %2262
  %2300 = and i64 %2256, 255
  %2301 = lshr i64 %2299, %2300
  %2302 = or i64 %2301, %2256
  %2303 = and i64 %2250, 255
  %2304 = lshr i64 %2302, %2303
  %2305 = or i64 %2304, %2250
  %sext48 = add i64 %2244, -73014444032
  %2306 = ashr exact i64 %sext48, 32
  %2307 = getelementptr inbounds i8, ptr %2, i64 %2306
  %2308 = load i8, ptr %2307, align 1, !tbaa !5
  %2309 = zext i8 %2308 to i64
  %2310 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2309
  %2311 = load i64, ptr %2310, align 8, !tbaa !14
  %2312 = and i64 %2311, 255
  %2313 = lshr i64 %2305, %2312
  %2314 = or i64 %2313, %2311
  %2315 = getelementptr i8, ptr %2135, i64 %2148
  %2316 = load i8, ptr %2315, align 1, !tbaa !5
  %2317 = zext i8 %2316 to i64
  %2318 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2317
  %2319 = load i64, ptr %2318, align 8, !tbaa !14
  %2320 = and i64 %2319, 255
  %2321 = lshr i64 %2314, %2320
  %2322 = add i64 %2256, %2250
  %2323 = add i64 %2322, %2262
  %2324 = add i64 %2323, %2268
  %2325 = add i64 %2324, %2274
  %2326 = add i64 %2325, %2280
  %2327 = add i64 %2326, %2287
  %2328 = add i64 %2327, %2311
  %2329 = add i64 %2328, %2319
  %2330 = and i64 %2329, 255
  %2331 = lshr i64 %2232, %2330
  %2332 = or i64 %2331, %2321
  %2333 = or i64 %2332, %2319
  %2334 = add i64 %2329, %2243
  %2335 = and i64 %2334, 255
  %2336 = lshr i64 %2335, 3
  %2337 = sub nsw i64 64, %2335
  %2338 = lshr i64 %2333, %2337
  %2339 = and i64 %2334, 7
  store i64 %2338, ptr %2242, align 1, !tbaa !14
  %2340 = getelementptr inbounds nuw i8, ptr %2242, i64 %2336
  %2341 = add nsw i64 %2148, -18
  %2342 = icmp sgt i64 %2148, 18
  br i1 %2342, label %2147, label %.loopexit57, !llvm.loop !76

.loopexit57:                                      ; preds = %1828, %1452, %1106, %792, %503, %2240, %217, %2130, %1727, %1361, %1025, %722, %432, %156
  %2343 = phi i64 [ %157, %156 ], [ %2131, %2130 ], [ %433, %432 ], [ %723, %722 ], [ %1026, %1025 ], [ %1362, %1361 ], [ %1728, %1727 ], [ %563, %503 ], [ %851, %792 ], [ %1176, %1106 ], [ %1532, %1452 ], [ %269, %217 ], [ %2339, %2240 ], [ %1918, %1828 ]
  %2344 = phi ptr [ %158, %156 ], [ %2132, %2130 ], [ %434, %432 ], [ %724, %722 ], [ %1027, %1025 ], [ %1363, %1361 ], [ %1729, %1727 ], [ %564, %503 ], [ %852, %792 ], [ %1177, %1106 ], [ %1533, %1452 ], [ %272, %217 ], [ %2340, %2240 ], [ %1919, %1828 ]
  %2345 = phi i64 [ %159, %156 ], [ %2133, %2130 ], [ %435, %432 ], [ %725, %722 ], [ %1028, %1025 ], [ %1364, %1361 ], [ %1730, %1727 ], [ %557, %503 ], [ %845, %792 ], [ %1170, %1106 ], [ %1526, %1452 ], [ %263, %217 ], [ %2333, %2240 ], [ %1912, %1828 ]
  %2346 = lshr i64 %2345, 1
  %2347 = or disjoint i64 %2346, -9223372036854775808
  %2348 = add nuw nsw i64 %2343, -9223372036854775807
  %2349 = and i64 %2348, 255
  %2350 = lshr i64 %2349, 3
  %2351 = sub nuw nsw i64 64, %2349
  %2352 = lshr i64 %2347, %2351
  store i64 %2352, ptr %2344, align 1, !tbaa !14
  %2353 = getelementptr inbounds nuw i8, ptr %2344, i64 %2350
  %2354 = icmp ugt ptr %2353, %19
  %2355 = select i1 %2354, ptr %19, ptr %2353
  %2356 = icmp ult ptr %2355, %19
  br i1 %2356, label %2357, label %2365

2357:                                             ; preds = %.loopexit57
  %2358 = and i64 %2348, 7
  %2359 = ptrtoint ptr %2355 to i64
  %2360 = ptrtoint ptr %0 to i64
  %2361 = icmp ne i64 %2358, 0
  %2362 = zext i1 %2361 to i64
  %2363 = sub i64 %2362, %2360
  %2364 = add i64 %2363, %2359
  br label %2365

2365:                                             ; preds = %2357, %.loopexit57, %17, %11, %9
  %2366 = phi i64 [ %10, %9 ], [ 0, %17 ], [ 0, %11 ], [ %2364, %2357 ], [ 0, %.loopexit57 ]
  ret i64 %2366
}

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define dso_local range(i64 -119, 262147) i64 @HUF_compress4X_usingCTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #11 {
  %7 = tail call fastcc i64 @HUF_compress4X_usingCTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  ret i64 %7
}

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define internal fastcc range(i64 -119, 262147) i64 @HUF_compress4X_usingCTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #11 {
  %7 = add i64 %3, 3
  %8 = lshr i64 %7, 2
  %9 = icmp ult i64 %1, 17
  %10 = icmp ult i64 %3, 12
  %11 = or i1 %9, %10
  br i1 %11, label %61, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %14 = add i64 %1, -6
  %15 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef nonnull %13, i64 noundef %14, ptr noundef %2, i64 noundef %8, ptr noundef %4, i32 noundef %5)
  %16 = icmp ult i64 %15, -119
  br i1 %16, label %17, label %61

17:                                               ; preds = %12
  %18 = add i64 %15, -65536
  %19 = icmp ult i64 %18, -65535
  br i1 %19, label %61, label %20

20:                                               ; preds = %17
  %21 = trunc nuw i64 %15 to i16
  store i16 %21, ptr %0, align 1, !tbaa !31
  %22 = getelementptr inbounds nuw i8, ptr %13, i64 %15
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 %8
  %24 = sub i64 %14, %15
  %25 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef nonnull %22, i64 noundef %24, ptr noundef %23, i64 noundef %8, ptr noundef %4, i32 noundef %5)
  %26 = icmp ult i64 %25, -119
  br i1 %26, label %27, label %61

27:                                               ; preds = %20
  %28 = add i64 %25, -65536
  %29 = icmp ult i64 %28, -65535
  br i1 %29, label %61, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %32 = trunc nuw i64 %25 to i16
  store i16 %32, ptr %31, align 1, !tbaa !31
  %33 = getelementptr inbounds nuw i8, ptr %22, i64 %25
  %34 = getelementptr inbounds nuw i8, ptr %23, i64 %8
  %35 = add nuw nsw i64 %25, %15
  %36 = sub i64 %14, %35
  %37 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef nonnull %33, i64 noundef %36, ptr noundef %34, i64 noundef %8, ptr noundef %4, i32 noundef %5)
  %38 = icmp ult i64 %37, -119
  br i1 %38, label %39, label %61

39:                                               ; preds = %30
  %40 = add i64 %37, -65536
  %41 = icmp ult i64 %40, -65535
  br i1 %41, label %61, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %44 = trunc nuw i64 %37 to i16
  store i16 %44, ptr %43, align 1, !tbaa !31
  %45 = getelementptr inbounds nuw i8, ptr %33, i64 %37
  %46 = getelementptr inbounds nuw i8, ptr %34, i64 %8
  %47 = add nuw nsw i64 %35, %37
  %48 = sub i64 %14, %47
  %49 = mul i64 %8, -3
  %50 = add i64 %49, %3
  %51 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef nonnull %45, i64 noundef %48, ptr noundef %46, i64 noundef %50, ptr noundef %4, i32 noundef %5)
  %52 = icmp ult i64 %51, -119
  br i1 %52, label %53, label %61

53:                                               ; preds = %42
  %54 = add i64 %51, -65536
  %55 = icmp ult i64 %54, -65535
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = add nuw nsw i64 %15, 6
  %58 = add nuw nsw i64 %57, %25
  %59 = add nuw nsw i64 %58, %37
  %60 = add nuw nsw i64 %59, %51
  br label %61

61:                                               ; preds = %56, %53, %42, %39, %30, %27, %20, %17, %12, %6
  %62 = phi i64 [ %60, %56 ], [ 0, %6 ], [ 0, %17 ], [ %15, %12 ], [ 0, %27 ], [ %25, %20 ], [ 0, %39 ], [ %37, %30 ], [ 0, %53 ], [ %51, %42 ]
  ret i64 %62
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @HUF_cardinality(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = add i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %.loopexit, label %5

5:                                                ; preds = %2
  %6 = zext i32 %3 to i64
  %7 = icmp ult i32 %3, 8
  br i1 %7, label %.preheader, label %8

8:                                                ; preds = %5
  %9 = and i64 %6, 4294967288
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i64 [ 0, %8 ], [ %24, %10 ]
  %12 = phi <4 x i32> [ zeroinitializer, %8 ], [ %22, %10 ]
  %13 = phi <4 x i32> [ zeroinitializer, %8 ], [ %23, %10 ]
  %14 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %11
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %16 = load <4 x i32>, ptr %14, align 4, !tbaa !19
  %17 = load <4 x i32>, ptr %15, align 4, !tbaa !19
  %18 = icmp ne <4 x i32> %16, zeroinitializer
  %19 = icmp ne <4 x i32> %17, zeroinitializer
  %20 = zext <4 x i1> %18 to <4 x i32>
  %21 = zext <4 x i1> %19 to <4 x i32>
  %22 = add <4 x i32> %12, %20
  %23 = add <4 x i32> %13, %21
  %24 = add nuw nsw i64 %11, 8
  %25 = icmp eq i64 %24, %9
  br i1 %25, label %26, label %10, !llvm.loop !79

26:                                               ; preds = %10
  %27 = add <4 x i32> %23, %22
  %28 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %27)
  %29 = icmp eq i64 %9, %6
  br i1 %29, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %26, %5
  %.ph = phi i64 [ %9, %26 ], [ 0, %5 ]
  %.ph11 = phi i32 [ %28, %26 ], [ 0, %5 ]
  br label %30

30:                                               ; preds = %.preheader, %30
  %31 = phi i64 [ %38, %30 ], [ %.ph, %.preheader ]
  %32 = phi i32 [ %37, %30 ], [ %.ph11, %.preheader ]
  %33 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %31
  %34 = load i32, ptr %33, align 4, !tbaa !19
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = add i32 %32, %36
  %38 = add nuw nsw i64 %31, 1
  %39 = icmp eq i64 %38, %6
  br i1 %39, label %.loopexit, label %30, !llvm.loop !80

.loopexit:                                        ; preds = %30, %26, %2
  %40 = phi i32 [ 0, %2 ], [ %28, %26 ], [ %37, %30 ]
  ret i32 %40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 1, 33) i32 @HUF_minTableLog(i32 noundef %0) local_unnamed_addr #10 {
  %2 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %0, i1 true)
  %3 = sub nuw nsw i32 32, %2
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @HUF_optimalTableLog(i32 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef captures(none) %5, ptr noundef readonly captures(none) %6, i32 noundef %7) local_unnamed_addr #2 {
  %9 = and i32 %7, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call i32 @FSE_optimalTableLog_internal(i32 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef 1) #17
  br label %.loopexit

13:                                               ; preds = %8
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 748
  %15 = add i64 %4, -748
  %16 = add i32 %2, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %65, label %18

18:                                               ; preds = %13
  %19 = zext i32 %16 to i64
  %20 = icmp ult i32 %16, 8
  br i1 %20, label %.preheader63, label %21

21:                                               ; preds = %18
  %22 = and i64 %19, 4294967288
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i64 [ 0, %21 ], [ %37, %23 ]
  %25 = phi <4 x i32> [ zeroinitializer, %21 ], [ %35, %23 ]
  %26 = phi <4 x i32> [ zeroinitializer, %21 ], [ %36, %23 ]
  %27 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %24
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 16
  %29 = load <4 x i32>, ptr %27, align 4, !tbaa !19
  %30 = load <4 x i32>, ptr %28, align 4, !tbaa !19
  %31 = icmp ne <4 x i32> %29, zeroinitializer
  %32 = icmp ne <4 x i32> %30, zeroinitializer
  %33 = zext <4 x i1> %31 to <4 x i32>
  %34 = zext <4 x i1> %32 to <4 x i32>
  %35 = add <4 x i32> %25, %33
  %36 = add <4 x i32> %26, %34
  %37 = add nuw nsw i64 %24, 8
  %38 = icmp eq i64 %37, %22
  br i1 %38, label %39, label %23, !llvm.loop !81

39:                                               ; preds = %23
  %40 = add <4 x i32> %36, %35
  %41 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %40)
  %42 = icmp eq i64 %22, %19
  br i1 %42, label %.loopexit16, label %.preheader63

.preheader63:                                     ; preds = %39, %18
  %.ph64 = phi i64 [ %22, %39 ], [ 0, %18 ]
  %.ph65 = phi i32 [ %41, %39 ], [ 0, %18 ]
  br label %43

43:                                               ; preds = %.preheader63, %43
  %44 = phi i64 [ %51, %43 ], [ %.ph64, %.preheader63 ]
  %45 = phi i32 [ %50, %43 ], [ %.ph65, %.preheader63 ]
  %46 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %44
  %47 = load i32, ptr %46, align 4, !tbaa !19
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = add i32 %45, %49
  %51 = add nuw nsw i64 %44, 1
  %52 = icmp eq i64 %51, %19
  br i1 %52, label %.loopexit16, label %43, !llvm.loop !82

.loopexit16:                                      ; preds = %43, %39
  %53 = phi i32 [ %41, %39 ], [ %50, %43 ]
  %54 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %53, i1 true)
  %55 = sub nuw nsw i32 32, %54
  %56 = icmp ugt i32 %55, %0
  br i1 %56, label %.loopexit, label %57

57:                                               ; preds = %.loopexit16
  %58 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %59 = icmp slt i32 %2, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = and i64 %19, 3
  %62 = icmp eq i64 %61, 0
  %63 = select i1 %62, i64 4, i64 %61
  %64 = sub nsw i64 %19, %63
  br label %94

65:                                               ; preds = %57, %13
  %66 = phi i32 [ %55, %57 ], [ poison, %13 ]
  br label %67

67:                                               ; preds = %89, %65
  %68 = phi i32 [ %92, %89 ], [ %66, %65 ]
  %69 = phi i32 [ %91, %89 ], [ %0, %65 ]
  %70 = phi i64 [ %90, %89 ], [ -2, %65 ]
  %71 = tail call i64 @HUF_buildCTable_wksp(ptr noundef %5, ptr noundef %6, i32 noundef %2, i32 noundef %68, ptr noundef %3, i64 noundef %4)
  %72 = icmp ult i64 %71, -119
  br i1 %72, label %73, label %89

73:                                               ; preds = %67
  %74 = zext i32 %68 to i64
  %75 = icmp samesign ult i64 %71, %74
  %76 = icmp ugt i32 %68, %66
  %77 = and i1 %76, %75
  br i1 %77, label %.loopexit, label %78

78:                                               ; preds = %73
  %79 = trunc nuw nsw i64 %71 to i32
  %80 = tail call i64 @HUF_writeCTable_wksp(ptr noundef nonnull %14, i64 noundef %15, ptr noundef %5, i32 noundef %2, i32 noundef %79, ptr noundef %3, i64 noundef %4)
  %81 = icmp ult i64 %80, -119
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = add nuw i64 %70, 1
  %84 = icmp ugt i64 %80, %83
  br i1 %84, label %.loopexit, label %85

85:                                               ; preds = %82
  %86 = icmp ult i64 %80, %70
  %87 = tail call i64 @llvm.umin.i64(i64 %80, i64 %70)
  %88 = select i1 %86, i32 %68, i32 %69
  br label %89

89:                                               ; preds = %85, %78, %67
  %90 = phi i64 [ %70, %78 ], [ %87, %85 ], [ %70, %67 ]
  %91 = phi i32 [ %69, %78 ], [ %88, %85 ], [ %69, %67 ]
  %92 = add i32 %68, 1
  %93 = icmp ugt i32 %92, %0
  br i1 %93, label %.loopexit, label %67, !llvm.loop !83

94:                                               ; preds = %162, %60
  %95 = phi i32 [ %165, %162 ], [ %55, %60 ]
  %96 = phi i32 [ %164, %162 ], [ %0, %60 ]
  %97 = phi i64 [ %163, %162 ], [ -2, %60 ]
  %98 = tail call i64 @HUF_buildCTable_wksp(ptr noundef %5, ptr noundef %6, i32 noundef %2, i32 noundef %95, ptr noundef %3, i64 noundef %4)
  %99 = icmp ult i64 %98, -119
  br i1 %99, label %100, label %162

100:                                              ; preds = %94
  %101 = zext i32 %95 to i64
  %102 = icmp samesign ult i64 %98, %101
  %103 = icmp ugt i32 %95, %55
  %104 = and i1 %103, %102
  br i1 %104, label %.loopexit, label %105

105:                                              ; preds = %100
  %106 = trunc nuw nsw i64 %98 to i32
  %107 = tail call i64 @HUF_writeCTable_wksp(ptr noundef nonnull %14, i64 noundef %15, ptr noundef %5, i32 noundef %2, i32 noundef %106, ptr noundef %3, i64 noundef %4)
  %108 = icmp ult i64 %107, -119
  br i1 %108, label %109, label %162

109:                                              ; preds = %105
  switch i32 %2, label %.preheader [
    i32 2147483647, label %134
    i32 3, label %134
    i32 2, label %134
    i32 1, label %134
    i32 0, label %134
  ]

.preheader:                                       ; preds = %109, %.preheader
  %110 = phi i64 [ %129, %.preheader ], [ 0, %109 ]
  %111 = phi <2 x i64> [ %127, %.preheader ], [ zeroinitializer, %109 ]
  %112 = phi <2 x i64> [ %128, %.preheader ], [ zeroinitializer, %109 ]
  %113 = getelementptr inbounds nuw [8 x i8], ptr %58, i64 %110
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 16
  %115 = load <2 x i64>, ptr %113, align 8, !tbaa !14
  %116 = load <2 x i64>, ptr %114, align 8, !tbaa !14
  %117 = and <2 x i64> %115, splat (i64 255)
  %118 = and <2 x i64> %116, splat (i64 255)
  %119 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %110
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 8
  %121 = load <2 x i32>, ptr %119, align 4, !tbaa !19
  %122 = load <2 x i32>, ptr %120, align 4, !tbaa !19
  %123 = zext <2 x i32> %121 to <2 x i64>
  %124 = zext <2 x i32> %122 to <2 x i64>
  %125 = mul nuw nsw <2 x i64> %117, %123
  %126 = mul nuw nsw <2 x i64> %118, %124
  %127 = add <2 x i64> %125, %111
  %128 = add <2 x i64> %126, %112
  %129 = add nuw i64 %110, 4
  %130 = icmp eq i64 %129, %64
  br i1 %130, label %131, label %.preheader, !llvm.loop !84

131:                                              ; preds = %.preheader
  %132 = add <2 x i64> %128, %127
  %133 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %132)
  br label %134

134:                                              ; preds = %131, %109, %109, %109, %109, %109
  %135 = phi i64 [ 0, %109 ], [ 0, %109 ], [ 0, %109 ], [ 0, %109 ], [ 0, %109 ], [ %64, %131 ]
  %136 = phi i64 [ 0, %109 ], [ 0, %109 ], [ 0, %109 ], [ 0, %109 ], [ 0, %109 ], [ %133, %131 ]
  %137 = icmp eq i64 %135, 2147483647
  br i1 %137, label %._crit_edge, label %.lr.ph, !prof !57, !nosanitize !46

138:                                              ; preds = %.lr.ph
  %139 = icmp eq i64 %145, 2147483647
  br i1 %139, label %._crit_edge, label %.lr.ph, !prof !47, !llvm.loop !85, !nosanitize !46

._crit_edge:                                      ; preds = %134, %138
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !46
  unreachable, !nosanitize !46

.lr.ph:                                           ; preds = %134, %138
  %140 = phi i64 [ %151, %138 ], [ %136, %134 ]
  %141 = phi i64 [ %145, %138 ], [ %135, %134 ]
  %142 = getelementptr inbounds nuw [8 x i8], ptr %58, i64 %141
  %143 = load i64, ptr %142, align 8, !tbaa !14
  %144 = and i64 %143, 255
  %145 = add nuw nsw i64 %141, 1
  %146 = trunc i64 %145 to i32
  %147 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %141
  %148 = load i32, ptr %147, align 4, !tbaa !19
  %149 = zext i32 %148 to i64
  %150 = mul nuw nsw i64 %144, %149
  %151 = add i64 %150, %140
  %152 = icmp slt i32 %2, %146
  br i1 %152, label %153, label %138, !llvm.loop !85

153:                                              ; preds = %.lr.ph
  %154 = lshr i64 %151, 3
  %155 = add i64 %154, %107
  %156 = add nuw i64 %97, 1
  %157 = icmp ugt i64 %155, %156
  br i1 %157, label %.loopexit, label %158

158:                                              ; preds = %153
  %159 = icmp ult i64 %155, %97
  %160 = tail call i64 @llvm.umin.i64(i64 %155, i64 %97)
  %161 = select i1 %159, i32 %95, i32 %96
  br label %162

162:                                              ; preds = %158, %105, %94
  %163 = phi i64 [ %97, %105 ], [ %160, %158 ], [ %97, %94 ]
  %164 = phi i32 [ %96, %105 ], [ %161, %158 ], [ %96, %94 ]
  %165 = add i32 %95, 1
  %166 = icmp ugt i32 %165, %0
  br i1 %166, label %.loopexit, label %94, !llvm.loop !83

.loopexit:                                        ; preds = %162, %153, %100, %89, %82, %73, %.loopexit16, %11
  %167 = phi i32 [ %12, %11 ], [ %0, %.loopexit16 ], [ %69, %82 ], [ %69, %73 ], [ %91, %89 ], [ %96, %100 ], [ %164, %162 ], [ %96, %153 ]
  ret i32 %167
}

declare i32 @FSE_optimalTableLog_internal(i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_compress1X_repeat(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef captures(address_is_null) %9, i32 noundef %10) local_unnamed_addr #2 {
  %12 = tail call fastcc i64 @HUF_compress_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 0, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10)
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @HUF_compress_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 2) %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, ptr noundef captures(address_is_null) %10, i32 noundef %11) unnamed_addr #2 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %4, ptr %13, align 4, !tbaa !19
  %16 = ptrtoint ptr %7 to i64
  %17 = sub i64 0, %16
  %18 = and i64 %17, 7
  %19 = icmp ult i64 %8, %18
  %20 = getelementptr inbounds nuw i8, ptr %7, i64 %18
  %21 = tail call i64 @llvm.usub.sat.i64(i64 %8, i64 %18)
  %22 = select i1 %19, ptr null, ptr %20
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %24 = icmp ult i64 %21, 7944
  br i1 %24, label %239, label %25

25:                                               ; preds = %12
  %26 = icmp eq i64 %3, 0
  %27 = icmp eq i64 %1, 0
  %28 = or i1 %27, %26
  br i1 %28, label %239, label %29

29:                                               ; preds = %25
  %30 = icmp ugt i64 %3, 131072
  br i1 %30, label %239, label %31

31:                                               ; preds = %29
  %32 = icmp ugt i32 %5, 12
  br i1 %32, label %239, label %33

33:                                               ; preds = %31
  %34 = icmp ugt i32 %4, 255
  br i1 %34, label %239, label %35

35:                                               ; preds = %33
  %36 = icmp eq i32 %4, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  store i32 255, ptr %13, align 4, !tbaa !19
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ 255, %37 ], [ %4, %35 ]
  %40 = icmp eq i32 %5, 0
  %41 = select i1 %40, i32 11, i32 %5
  %42 = and i32 %11, 4
  %43 = icmp eq i32 %42, 0
  %44 = icmp eq ptr %10, null
  %45 = or i1 %44, %43
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = load i32, ptr %10, align 4, !tbaa !19
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = tail call fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %23, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef %9, i32 noundef %11)
  br label %239

51:                                               ; preds = %46, %38
  %52 = and i32 %11, 8
  %53 = icmp ne i32 %52, 0
  %54 = icmp samesign ugt i64 %3, 40959
  %55 = and i1 %54, %53
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store i32 %39, ptr %14, align 4, !tbaa !19
  %57 = call i32 @HIST_count_simple(ptr noundef %22, ptr noundef nonnull %14, ptr noundef %2, i64 noundef 4096) #17
  %58 = zext i32 %57 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %59 = load i32, ptr %13, align 4, !tbaa !19
  store i32 %59, ptr %15, align 4, !tbaa !19
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %61 = getelementptr inbounds i8, ptr %60, i64 -4096
  %62 = call i32 @HIST_count_simple(ptr noundef %22, ptr noundef nonnull %15, ptr noundef nonnull %61, i64 noundef 4096) #17
  %63 = zext i32 %62 to i64
  %64 = add nuw nsw i64 %63, %58
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %65 = icmp samesign ugt i64 %64, 68
  br i1 %65, label %66, label %239

66:                                               ; preds = %56, %51
  %67 = getelementptr inbounds nuw i8, ptr %22, i64 3080
  %68 = call i64 @HIST_count_wksp(ptr noundef %22, ptr noundef nonnull %13, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %67, i64 noundef 4096) #17
  %69 = icmp ult i64 %68, -119
  br i1 %69, label %70, label %239

70:                                               ; preds = %66
  %71 = icmp eq i64 %68, %3
  br i1 %71, label %72, label %74

72:                                               ; preds = %70
  %73 = load i8, ptr %2, align 1, !tbaa !5
  store i8 %73, ptr %0, align 1, !tbaa !5
  br label %239

74:                                               ; preds = %70
  %75 = lshr i64 %3, 7
  %76 = add nuw nsw i64 %75, 4
  %77 = icmp ugt i64 %68, %76
  br i1 %77, label %78, label %239

78:                                               ; preds = %74
  br i1 %44, label %92, label %79

79:                                               ; preds = %78
  %80 = load i32, ptr %10, align 4, !tbaa !19
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, ptr %13, align 4, !tbaa !19
  %84 = call i32 @HUF_validateCTable(ptr noundef %9, ptr noundef nonnull %20, i32 noundef %83)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %.thread, label %89

.thread:                                          ; preds = %82
  store i32 0, ptr %10, align 4, !tbaa !19
  br label %92

86:                                               ; preds = %79
  %87 = icmp eq i32 %80, 0
  %88 = or i1 %45, %87
  br i1 %88, label %92, label %90

89:                                               ; preds = %82
  br i1 %45, label %92, label %90

90:                                               ; preds = %89, %86
  %91 = call fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %23, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef %9, i32 noundef %11)
  br label %239

92:                                               ; preds = %.thread, %89, %86, %78
  %93 = load i32, ptr %13, align 4, !tbaa !19
  %94 = getelementptr inbounds nuw i8, ptr %22, i64 1024
  %95 = call i32 @HUF_optimalTableLog(i32 noundef %41, i64 noundef %3, i32 noundef %93, ptr noundef nonnull %67, i64 noundef 4864, ptr noundef nonnull %94, ptr noundef nonnull %20, i32 noundef %11)
  %96 = load i32, ptr %13, align 4, !tbaa !19
  %97 = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %94, ptr noundef nonnull %20, i32 noundef %96, i32 noundef %95, ptr noundef nonnull %67, i64 noundef 4864)
  %98 = icmp ult i64 %97, -119
  br i1 %98, label %99, label %239

99:                                               ; preds = %92
  %100 = trunc nuw nsw i64 %97 to i32
  %101 = load i32, ptr %13, align 4, !tbaa !19
  %102 = call i64 @HUF_writeCTable_wksp(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %94, i32 noundef %101, i32 noundef %100, ptr noundef nonnull %67, i64 noundef 748)
  %103 = icmp ult i64 %102, -119
  br i1 %103, label %104, label %239

104:                                              ; preds = %99
  br i1 %44, label %229, label %105

105:                                              ; preds = %104
  %106 = load i32, ptr %10, align 4, !tbaa !19
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %226, label %108

108:                                              ; preds = %105
  %109 = load i32, ptr %13, align 4, !tbaa !19
  %110 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %111 = icmp slt i32 %109, 0
  br i1 %111, label %224, label %112

112:                                              ; preds = %108
  %113 = zext nneg i32 %109 to i64
  switch i32 %109, label %114 [
    i32 2147483647, label %145
    i32 3, label %145
    i32 2, label %145
    i32 1, label %145
    i32 0, label %145
  ]

114:                                              ; preds = %112
  %115 = add nuw nsw i64 %113, 1
  %116 = and i64 %115, 3
  %117 = icmp eq i64 %116, 0
  %118 = select i1 %117, i64 4, i64 %116
  %119 = sub nsw i64 %115, %118
  br label %120

120:                                              ; preds = %120, %114
  %121 = phi i64 [ 0, %114 ], [ %140, %120 ]
  %122 = phi <2 x i64> [ zeroinitializer, %114 ], [ %138, %120 ]
  %123 = phi <2 x i64> [ zeroinitializer, %114 ], [ %139, %120 ]
  %124 = getelementptr inbounds nuw [8 x i8], ptr %110, i64 %121
  %125 = getelementptr inbounds nuw i8, ptr %124, i64 16
  %126 = load <2 x i64>, ptr %124, align 8, !tbaa !14
  %127 = load <2 x i64>, ptr %125, align 8, !tbaa !14
  %128 = and <2 x i64> %126, splat (i64 255)
  %129 = and <2 x i64> %127, splat (i64 255)
  %130 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %121
  %131 = getelementptr inbounds nuw i8, ptr %130, i64 8
  %132 = load <2 x i32>, ptr %130, align 4, !tbaa !19
  %133 = load <2 x i32>, ptr %131, align 4, !tbaa !19
  %134 = zext <2 x i32> %132 to <2 x i64>
  %135 = zext <2 x i32> %133 to <2 x i64>
  %136 = mul nuw nsw <2 x i64> %128, %134
  %137 = mul nuw nsw <2 x i64> %129, %135
  %138 = add <2 x i64> %136, %122
  %139 = add <2 x i64> %137, %123
  %140 = add nuw i64 %121, 4
  %141 = icmp eq i64 %140, %119
  br i1 %141, label %142, label %120, !llvm.loop !86

142:                                              ; preds = %120
  %143 = add <2 x i64> %139, %138
  %144 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %143)
  br label %145

145:                                              ; preds = %142, %112, %112, %112, %112, %112
  %146 = phi i64 [ 0, %112 ], [ 0, %112 ], [ 0, %112 ], [ 0, %112 ], [ 0, %112 ], [ %119, %142 ]
  %147 = phi i64 [ 0, %112 ], [ 0, %112 ], [ 0, %112 ], [ 0, %112 ], [ 0, %112 ], [ %144, %142 ]
  %148 = icmp eq i64 %146, 2147483647
  br i1 %148, label %._crit_edge, label %.lr.ph, !prof !57, !nosanitize !46

149:                                              ; preds = %.lr.ph
  %150 = icmp eq i64 %156, 2147483647
  br i1 %150, label %._crit_edge, label %.lr.ph, !prof !47, !llvm.loop !87, !nosanitize !46

._crit_edge:                                      ; preds = %149, %145
  call void @llvm.ubsantrap(i8 0) #18, !nosanitize !46
  unreachable, !nosanitize !46

.lr.ph:                                           ; preds = %145, %149
  %151 = phi i64 [ %162, %149 ], [ %147, %145 ]
  %152 = phi i64 [ %156, %149 ], [ %146, %145 ]
  %153 = getelementptr inbounds nuw [8 x i8], ptr %110, i64 %152
  %154 = load i64, ptr %153, align 8, !tbaa !14
  %155 = and i64 %154, 255
  %156 = add nuw nsw i64 %152, 1
  %157 = trunc i64 %156 to i32
  %158 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %152
  %159 = load i32, ptr %158, align 4, !tbaa !19
  %160 = zext i32 %159 to i64
  %161 = mul nuw nsw i64 %155, %160
  %162 = add i64 %161, %151
  %163 = icmp slt i32 %109, %157
  br i1 %163, label %164, label %149, !llvm.loop !87

164:                                              ; preds = %.lr.ph
  %165 = lshr i64 %162, 3
  %166 = getelementptr inbounds nuw i8, ptr %20, i64 1032
  %switch = icmp ult i32 %109, 8
  br i1 %switch, label %198, label %167

167:                                              ; preds = %164
  %168 = add nuw nsw i64 %113, 1
  %169 = and i64 %168, 3
  %170 = icmp eq i64 %169, 0
  %171 = select i1 %170, i64 4, i64 %169
  %172 = sub nuw nsw i64 %168, %171
  br label %173

173:                                              ; preds = %173, %167
  %174 = phi i64 [ 0, %167 ], [ %193, %173 ]
  %175 = phi <2 x i64> [ zeroinitializer, %167 ], [ %191, %173 ]
  %176 = phi <2 x i64> [ zeroinitializer, %167 ], [ %192, %173 ]
  %177 = getelementptr inbounds nuw [8 x i8], ptr %166, i64 %174
  %178 = getelementptr inbounds nuw i8, ptr %177, i64 16
  %179 = load <2 x i64>, ptr %177, align 8, !tbaa !14
  %180 = load <2 x i64>, ptr %178, align 8, !tbaa !14
  %181 = and <2 x i64> %179, splat (i64 255)
  %182 = and <2 x i64> %180, splat (i64 255)
  %183 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %174
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 8
  %185 = load <2 x i32>, ptr %183, align 4, !tbaa !19
  %186 = load <2 x i32>, ptr %184, align 4, !tbaa !19
  %187 = zext <2 x i32> %185 to <2 x i64>
  %188 = zext <2 x i32> %186 to <2 x i64>
  %189 = mul nuw nsw <2 x i64> %181, %187
  %190 = mul nuw nsw <2 x i64> %182, %188
  %191 = add <2 x i64> %189, %175
  %192 = add <2 x i64> %190, %176
  %193 = add nuw i64 %174, 4
  %194 = icmp eq i64 %193, %172
  br i1 %194, label %195, label %173, !llvm.loop !88

195:                                              ; preds = %173
  %196 = add <2 x i64> %192, %191
  %197 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %196)
  br label %198

198:                                              ; preds = %164, %195
  %199 = phi i64 [ %172, %195 ], [ 0, %164 ]
  %200 = phi i64 [ %197, %195 ], [ 0, %164 ]
  %201 = icmp eq i64 %199, 2147483647
  br i1 %201, label %._crit_edge57, label %.lr.ph56, !prof !57, !nosanitize !46

202:                                              ; preds = %.lr.ph56
  %203 = icmp eq i64 %209, 2147483647
  br i1 %203, label %._crit_edge57, label %.lr.ph56, !prof !47, !llvm.loop !89, !nosanitize !46

._crit_edge57:                                    ; preds = %202, %198
  call void @llvm.ubsantrap(i8 0) #18, !nosanitize !46
  unreachable, !nosanitize !46

.lr.ph56:                                         ; preds = %198, %202
  %204 = phi i64 [ %215, %202 ], [ %200, %198 ]
  %205 = phi i64 [ %209, %202 ], [ %199, %198 ]
  %206 = getelementptr inbounds nuw [8 x i8], ptr %166, i64 %205
  %207 = load i64, ptr %206, align 8, !tbaa !14
  %208 = and i64 %207, 255
  %209 = add nuw nsw i64 %205, 1
  %210 = trunc i64 %209 to i32
  %211 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %205
  %212 = load i32, ptr %211, align 4, !tbaa !19
  %213 = zext i32 %212 to i64
  %214 = mul nuw nsw i64 %208, %213
  %215 = add i64 %214, %204
  %216 = icmp slt i32 %109, %210
  br i1 %216, label %217, label %202, !llvm.loop !89

217:                                              ; preds = %.lr.ph56
  %218 = lshr i64 %215, 3
  %219 = add i64 %218, %102
  %220 = icmp ugt i64 %165, %219
  %221 = add nuw i64 %102, 12
  %222 = icmp ult i64 %221, %3
  %223 = and i1 %222, %220
  br i1 %223, label %232, label %224

224:                                              ; preds = %217, %108
  %225 = call fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %23, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef %9, i32 noundef %11)
  br label %239

226:                                              ; preds = %105
  %227 = add nuw i64 %102, 12
  %228 = icmp ult i64 %227, %3
  br i1 %228, label %232, label %239

229:                                              ; preds = %104
  %230 = add nuw i64 %102, 12
  %231 = icmp ult i64 %230, %3
  br i1 %231, label %233, label %239

232:                                              ; preds = %226, %217
  store i32 0, ptr %10, align 4, !tbaa !19
  br label %233

233:                                              ; preds = %232, %229
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 %102
  %235 = icmp eq ptr %9, null
  br i1 %235, label %237, label %236

236:                                              ; preds = %233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2056) %9, ptr noundef nonnull align 8 dereferenceable(2056) %94, i64 2056, i1 false)
  br label %237

237:                                              ; preds = %236, %233
  %238 = call fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %234, ptr noundef nonnull %23, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef nonnull %94, i32 noundef %11)
  br label %239

239:                                              ; preds = %237, %229, %226, %224, %99, %92, %90, %74, %72, %66, %56, %49, %33, %31, %29, %25, %12
  %240 = phi i64 [ %50, %49 ], [ %91, %90 ], [ %238, %237 ], [ %97, %92 ], [ 0, %74 ], [ 0, %56 ], [ -66, %12 ], [ 0, %25 ], [ -72, %29 ], [ -44, %31 ], [ -46, %33 ], [ %68, %66 ], [ 1, %72 ], [ 0, %226 ], [ 0, %229 ], [ %102, %99 ], [ %225, %224 ]
  ret i64 %240
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_compress4X_repeat(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef captures(address_is_null) %9, i32 noundef %10) local_unnamed_addr #2 {
  %12 = tail call fastcc i64 @HUF_compress_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 1, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10)
  ret i64 %12
}

declare i32 @HIST_count_simple(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @FSE_optimalTableLog(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare i64 @FSE_normalizeCount(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i64 @FSE_writeNCount(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i64 @FSE_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @FSE_compress_usingCTable(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @HUF_simpleQuickSort(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #12 {
  %4 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2, i32 %1), !nosanitize !46
  %5 = extractvalue { i32, i1 } %4, 1, !nosanitize !46
  br i1 %5, label %.loopexit10, label %6, !prof !49, !nosanitize !46

.loopexit10:                                      ; preds = %83, %74, %3
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

6:                                                ; preds = %3
  %7 = extractvalue { i32, i1 } %4, 0, !nosanitize !46
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = icmp slt i32 %1, %2
  br i1 %10, label %.preheader8, label %.loopexit

11:                                               ; preds = %30
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !46
  unreachable, !nosanitize !46

12:                                               ; preds = %6
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds [8 x i8], ptr %0, i64 %13
  %15 = icmp slt i32 %7, 1
  br i1 %15, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %12, %36
  %16 = phi i64 [ %37, %36 ], [ 1, %12 ]
  %17 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %16
  %18 = load <2 x i32>, ptr %17, align 4
  %19 = extractelement <2 x i32> %18, i64 0
  br label %20

20:                                               ; preds = %26, %.preheader
  %21 = phi i64 [ %16, %.preheader ], [ %22, %26 ]
  %22 = add nsw i64 %21, -1
  %23 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !41
  %25 = icmp ult i32 %24, %19
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %21
  %28 = load i64, ptr %23, align 4
  store i64 %28, ptr %27, align 4
  %29 = icmp sgt i64 %21, 1
  br i1 %29, label %20, label %30, !llvm.loop !90

30:                                               ; preds = %26, %20
  %31 = phi i64 [ %21, %20 ], [ 0, %26 ]
  %32 = shl i64 %31, 32
  %33 = ashr exact i64 %32, 29
  %34 = getelementptr inbounds i8, ptr %14, i64 %33
  store <2 x i32> %18, ptr %34, align 4
  %35 = icmp eq i64 %16, 2147483647
  br i1 %35, label %11, label %36, !prof !49, !nosanitize !46

36:                                               ; preds = %30
  %37 = add nuw nsw i64 %16, 1
  %38 = trunc i64 %37 to i32
  %39 = icmp slt i32 %7, %38
  br i1 %39, label %.loopexit, label %.preheader, !llvm.loop !91

.preheader8:                                      ; preds = %9, %99
  %40 = phi i32 [ %101, %99 ], [ %1, %9 ]
  %41 = phi i32 [ %100, %99 ], [ %2, %9 ]
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i8], ptr %0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !41
  %45 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %40, i32 -1)
  %46 = extractvalue { i32, i1 } %45, 1, !nosanitize !46
  br i1 %46, label %47, label %48, !prof !49, !nosanitize !46

47:                                               ; preds = %.preheader8
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

48:                                               ; preds = %.preheader8
  %49 = extractvalue { i32, i1 } %45, 0, !nosanitize !46
  %50 = sext i32 %40 to i64
  br label %51

51:                                               ; preds = %66, %48
  %52 = phi i64 [ %50, %48 ], [ %68, %66 ]
  %53 = phi i32 [ %49, %48 ], [ %67, %66 ]
  %54 = getelementptr inbounds [8 x i8], ptr %0, i64 %52
  %55 = load i32, ptr %54, align 4, !tbaa !41
  %56 = icmp ugt i32 %55, %44
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %53, i32 1), !nosanitize !46
  %59 = extractvalue { i32, i1 } %58, 1, !nosanitize !46
  br i1 %59, label %.loopexit7, label %60, !prof !49, !nosanitize !46

.loopexit7:                                       ; preds = %71, %57
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !46
  unreachable, !nosanitize !46

60:                                               ; preds = %57
  %61 = extractvalue { i32, i1 } %58, 0, !nosanitize !46
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x i8], ptr %0, i64 %62
  %64 = load i64, ptr %63, align 4
  %65 = load i64, ptr %54, align 4
  store i64 %65, ptr %63, align 4
  store i64 %64, ptr %54, align 4
  br label %66

66:                                               ; preds = %60, %51
  %67 = phi i32 [ %61, %60 ], [ %53, %51 ]
  %68 = add nsw i64 %52, 1
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %41, %69
  br i1 %70, label %71, label %51, !llvm.loop !92

71:                                               ; preds = %66
  %72 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %67, i32 1), !nosanitize !46
  %73 = extractvalue { i32, i1 } %72, 1, !nosanitize !46
  br i1 %73, label %.loopexit7, label %74, !prof !49, !nosanitize !46

74:                                               ; preds = %71
  %75 = extractvalue { i32, i1 } %72, 0, !nosanitize !46
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [8 x i8], ptr %0, i64 %76
  %78 = load i64, ptr %77, align 4
  %79 = load i64, ptr %43, align 4
  store i64 %79, ptr %77, align 4
  store i64 %78, ptr %43, align 4
  %80 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %75, i32 %40), !nosanitize !46
  %81 = extractvalue { i32, i1 } %80, 0, !nosanitize !46
  %82 = extractvalue { i32, i1 } %80, 1, !nosanitize !46
  br i1 %82, label %.loopexit10, label %83, !prof !49, !nosanitize !46

83:                                               ; preds = %74
  %84 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %41, i32 %75), !nosanitize !46
  %85 = extractvalue { i32, i1 } %84, 1, !nosanitize !46
  br i1 %85, label %.loopexit10, label %86, !prof !49, !nosanitize !46

86:                                               ; preds = %83
  %87 = extractvalue { i32, i1 } %84, 0, !nosanitize !46
  %88 = icmp slt i32 %81, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = add nsw i32 %75, -1
  tail call fastcc void @HUF_simpleQuickSort(ptr noundef nonnull %0, i32 noundef %40, i32 noundef %90)
  %91 = add i32 %75, 1
  br label %99

92:                                               ; preds = %93
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !46
  unreachable, !nosanitize !46

93:                                               ; preds = %86
  %94 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %75, i32 1), !nosanitize !46
  %95 = extractvalue { i32, i1 } %94, 1, !nosanitize !46
  br i1 %95, label %92, label %96, !prof !49, !nosanitize !46

96:                                               ; preds = %93
  %97 = extractvalue { i32, i1 } %94, 0, !nosanitize !46
  tail call fastcc void @HUF_simpleQuickSort(ptr noundef nonnull %0, i32 noundef %97, i32 noundef %41)
  %98 = add nsw i32 %75, -1
  br label %99

99:                                               ; preds = %96, %89
  %100 = phi i32 [ %41, %89 ], [ %98, %96 ]
  %101 = phi i32 [ %91, %89 ], [ %40, %96 ]
  %102 = icmp slt i32 %101, %100
  br i1 %102, label %.preheader8, label %.loopexit, !llvm.loop !93

.loopexit:                                        ; preds = %99, %36, %12, %9
  ret void
}

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define internal fastcc i64 @HUF_compress1X_usingCTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, ptr noundef readonly captures(none) %4) unnamed_addr #13 {
  %6 = load i64, ptr %4, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 255
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %10 = icmp ult i64 %1, 8
  br i1 %10, label %2359, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = icmp eq i64 %1, 8
  br i1 %14, label %2359, label %15

15:                                               ; preds = %11
  %16 = and i64 %6, 255
  %17 = mul i64 %16, %3
  %18 = lshr i64 %17, 3
  %19 = add nuw nsw i64 %18, 8
  %20 = icmp ult i64 %1, %19
  %21 = icmp samesign ugt i32 %8, 11
  %22 = select i1 %20, i1 true, i1 %21
  %23 = trunc i64 %3 to i32
  br i1 %22, label %24, label %269

24:                                               ; preds = %15
  %25 = srem i32 %23, 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %80

27:                                               ; preds = %24
  %28 = icmp eq i32 %25, 1
  br i1 %28, label %.thread, label %29

.loopexit:                                        ; preds = %162, %93, %90, %87
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

29:                                               ; preds = %27
  %30 = and i32 %25, 1
  %31 = shl i64 %3, 32
  %sext186 = add i64 %31, -4294967296
  %32 = ashr exact i64 %sext186, 32
  %33 = getelementptr inbounds i8, ptr %2, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !5
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !14
  %38 = shl i64 %3, 32
  %sext187 = add i64 %38, -8589934592
  %39 = ashr exact i64 %sext187, 32
  %40 = getelementptr inbounds i8, ptr %2, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !5
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !14
  %45 = add i64 %37, %44
  %46 = and i64 %37, -256
  %47 = and i64 %44, 255
  %48 = lshr i64 %46, %47
  %49 = and i64 %44, -256
  %50 = or i64 %48, %49
  %51 = add i64 %3, -2
  %52 = icmp eq i32 %30, 0
  br i1 %52, label %68, label %.thread

.thread:                                          ; preds = %27, %29
  %53 = phi i64 [ %45, %29 ], [ 0, %27 ]
  %54 = phi i64 [ %50, %29 ], [ 0, %27 ]
  %55 = phi i64 [ %51, %29 ], [ %3, %27 ]
  %56 = shl i64 %55, 32
  %sext188 = add i64 %56, -4294967296
  %57 = ashr exact i64 %sext188, 32
  %58 = getelementptr inbounds i8, ptr %2, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !5
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !14
  %63 = and i64 %62, 255
  %64 = lshr i64 %54, %63
  %65 = and i64 %62, -256
  %66 = or i64 %64, %65
  %67 = add i64 %62, %53
  br label %68

68:                                               ; preds = %.thread, %29
  %69 = phi i64 [ %50, %29 ], [ %66, %.thread ]
  %70 = phi i64 [ %45, %29 ], [ %67, %.thread ]
  %71 = sub nsw i32 %23, %25
  %72 = and i64 %70, 255
  %73 = lshr i64 %72, 3
  %74 = sub nsw i64 64, %72
  %75 = lshr i64 %69, %74
  %76 = and i64 %70, 7
  store i64 %75, ptr %0, align 1, !tbaa !14
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 %73
  %78 = icmp ugt ptr %77, %13
  %79 = select i1 %78, ptr %13, ptr %77
  br label %80

80:                                               ; preds = %68, %24
  %81 = phi i64 [ 0, %24 ], [ %76, %68 ]
  %82 = phi ptr [ %0, %24 ], [ %79, %68 ]
  %83 = phi i64 [ 0, %24 ], [ %69, %68 ]
  %84 = phi i32 [ %23, %24 ], [ %71, %68 ]
  %85 = and i32 %84, 7
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %150, label %87

87:                                               ; preds = %80
  %88 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %84, i32 -2)
  %89 = extractvalue { i32, i1 } %88, 1, !nosanitize !46
  br i1 %89, label %.loopexit, label %90, !prof !49, !nosanitize !46

90:                                               ; preds = %87
  %91 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %84, i32 -3)
  %92 = extractvalue { i32, i1 } %91, 1, !nosanitize !46
  br i1 %92, label %.loopexit, label %93, !prof !49, !nosanitize !46

93:                                               ; preds = %90
  %94 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %84, i32 -4)
  %95 = extractvalue { i32, i1 } %94, 1, !nosanitize !46
  br i1 %95, label %.loopexit, label %96, !prof !49, !nosanitize !46

96:                                               ; preds = %93
  %97 = extractvalue { i32, i1 } %91, 0, !nosanitize !46
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, ptr %2, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !5
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %101
  %103 = load i64, ptr %102, align 8, !tbaa !14
  %104 = extractvalue { i32, i1 } %88, 0, !nosanitize !46
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, ptr %2, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !5
  %108 = zext i8 %107 to i64
  %109 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %108
  %110 = load i64, ptr %109, align 8, !tbaa !14
  %111 = sext i32 %84 to i64
  %112 = getelementptr i8, ptr %2, i64 %111
  %113 = getelementptr i8, ptr %112, i64 -1
  %114 = load i8, ptr %113, align 1, !tbaa !5
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %115
  %117 = load i64, ptr %116, align 8, !tbaa !14
  %118 = and i64 %117, 255
  %119 = lshr i64 %83, %118
  %120 = or i64 %119, %117
  %121 = and i64 %110, 255
  %122 = lshr i64 %120, %121
  %123 = or i64 %122, %110
  %124 = and i64 %103, 255
  %125 = lshr i64 %123, %124
  %126 = or i64 %125, %103
  %127 = extractvalue { i32, i1 } %94, 0, !nosanitize !46
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, ptr %2, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !5
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %131
  %133 = load i64, ptr %132, align 8, !tbaa !14
  %134 = and i64 %133, 255
  %135 = lshr i64 %126, %134
  %136 = and i64 %133, -256
  %137 = or i64 %135, %136
  %138 = add i64 %103, %81
  %139 = add i64 %138, %110
  %140 = add i64 %139, %117
  %141 = add i64 %140, %133
  %142 = and i64 %141, 255
  %143 = lshr i64 %142, 3
  %144 = sub nsw i64 64, %142
  %145 = lshr i64 %137, %144
  %146 = and i64 %141, 7
  store i64 %145, ptr %82, align 1, !tbaa !14
  %147 = getelementptr inbounds nuw i8, ptr %82, i64 %143
  %148 = icmp ugt ptr %147, %13
  %149 = select i1 %148, ptr %13, ptr %147
  br label %150

150:                                              ; preds = %96, %80
  %151 = phi i64 [ %81, %80 ], [ %146, %96 ]
  %152 = phi ptr [ %82, %80 ], [ %149, %96 ]
  %153 = phi i64 [ %83, %80 ], [ %137, %96 ]
  %154 = phi i32 [ %84, %80 ], [ %127, %96 ]
  %155 = getelementptr i8, ptr %2, i64 -8
  %156 = icmp sgt i32 %154, 0
  br i1 %156, label %157, label %.loopexit57

157:                                              ; preds = %150
  %158 = zext nneg i32 %154 to i64
  %159 = getelementptr i8, ptr %2, i64 -1
  %160 = getelementptr i8, ptr %2, i64 -2
  %161 = getelementptr i8, ptr %2, i64 -3
  br label %162

162:                                              ; preds = %211, %157
  %163 = phi i64 [ %158, %157 ], [ %267, %211 ]
  %164 = phi i64 [ %153, %157 ], [ %257, %211 ]
  %165 = phi ptr [ %152, %157 ], [ %266, %211 ]
  %166 = phi i64 [ %151, %157 ], [ %263, %211 ]
  %167 = getelementptr i8, ptr %159, i64 %163
  %168 = load i8, ptr %167, align 1, !tbaa !5
  %169 = zext i8 %168 to i64
  %170 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %169
  %171 = load i64, ptr %170, align 8, !tbaa !14
  %172 = and i64 %171, 255
  %173 = lshr i64 %164, %172
  %174 = or i64 %173, %171
  %175 = add i64 %171, %166
  %176 = getelementptr i8, ptr %160, i64 %163
  %177 = load i8, ptr %176, align 1, !tbaa !5
  %178 = zext i8 %177 to i64
  %179 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %178
  %180 = load i64, ptr %179, align 8, !tbaa !14
  %181 = and i64 %180, 255
  %182 = lshr i64 %174, %181
  %183 = or i64 %182, %180
  %184 = add i64 %175, %180
  %185 = getelementptr i8, ptr %161, i64 %163
  %186 = load i8, ptr %185, align 1, !tbaa !5
  %187 = zext i8 %186 to i64
  %188 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %187
  %189 = load i64, ptr %188, align 8, !tbaa !14
  %190 = and i64 %189, 255
  %191 = lshr i64 %183, %190
  %192 = or i64 %191, %189
  %193 = add i64 %184, %189
  %194 = add nsw i64 %163, -4
  %195 = getelementptr inbounds i8, ptr %2, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !5
  %197 = zext i8 %196 to i64
  %198 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %197
  %199 = load i64, ptr %198, align 8, !tbaa !14
  %200 = and i64 %199, 255
  %201 = lshr i64 %192, %200
  %202 = and i64 %199, -256
  %203 = or i64 %201, %202
  %204 = add i64 %193, %199
  %205 = and i64 %204, 255
  %206 = sub nsw i64 64, %205
  %207 = lshr i64 %203, %206
  store i64 %207, ptr %165, align 1, !tbaa !14
  %208 = trunc nsw i64 %194 to i32
  %209 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %208, i32 -1)
  %210 = extractvalue { i32, i1 } %209, 1, !nosanitize !46
  br i1 %210, label %.loopexit, label %211, !prof !49, !nosanitize !46

211:                                              ; preds = %162
  %212 = lshr i64 %205, 3
  %213 = getelementptr inbounds nuw i8, ptr %165, i64 %212
  %214 = icmp ugt ptr %213, %13
  %215 = select i1 %214, ptr %13, ptr %213
  %216 = and i64 %204, 7
  %217 = shl i64 %163, 32
  %sext49 = add i64 %217, -25769803776
  %218 = ashr exact i64 %sext49, 32
  %219 = getelementptr inbounds i8, ptr %2, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !5
  %221 = zext i8 %220 to i64
  %222 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %221
  %223 = load i64, ptr %222, align 8, !tbaa !14
  %224 = extractvalue { i32, i1 } %209, 0, !nosanitize !46
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, ptr %2, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !5
  %228 = zext i8 %227 to i64
  %229 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %228
  %230 = load i64, ptr %229, align 8, !tbaa !14
  %231 = add i64 %230, %223
  %232 = and i64 %223, 255
  %233 = lshr i64 %230, %232
  %234 = or i64 %233, %223
  %sext50 = add i64 %217, -30064771072
  %235 = ashr exact i64 %sext50, 32
  %236 = getelementptr inbounds i8, ptr %2, i64 %235
  %237 = load i8, ptr %236, align 1, !tbaa !5
  %238 = zext i8 %237 to i64
  %239 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %238
  %240 = load i64, ptr %239, align 8, !tbaa !14
  %241 = and i64 %240, 255
  %242 = lshr i64 %234, %241
  %243 = or i64 %242, %240
  %244 = add i64 %231, %240
  %245 = getelementptr i8, ptr %155, i64 %163
  %246 = load i8, ptr %245, align 1, !tbaa !5
  %247 = zext i8 %246 to i64
  %248 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %247
  %249 = load i64, ptr %248, align 8, !tbaa !14
  %250 = and i64 %249, 255
  %251 = lshr i64 %243, %250
  %252 = and i64 %249, -256
  %253 = or i64 %251, %252
  %254 = add i64 %244, %249
  %255 = and i64 %254, 255
  %256 = lshr i64 %203, %255
  %257 = or i64 %253, %256
  %258 = add i64 %254, %216
  %259 = and i64 %258, 255
  %260 = lshr i64 %259, 3
  %261 = sub nsw i64 64, %259
  %262 = lshr i64 %257, %261
  %263 = and i64 %258, 7
  store i64 %262, ptr %215, align 1, !tbaa !14
  %264 = getelementptr inbounds nuw i8, ptr %215, i64 %260
  %265 = icmp ugt ptr %264, %13
  %266 = select i1 %265, ptr %13, ptr %264
  %267 = add nsw i64 %163, -8
  %268 = icmp sgt i64 %163, 8
  br i1 %268, label %162, label %.loopexit57, !llvm.loop !76

269:                                              ; preds = %15
  switch i32 %8, label %1916 [
    i32 11, label %270
    i32 10, label %561
    i32 9, label %849
    i32 8, label %1174
    i32 7, label %1530
  ]

270:                                              ; preds = %269
  %271 = srem i32 %23, 5
  %272 = icmp sgt i32 %271, 0
  br i1 %272, label %273, label %341

273:                                              ; preds = %270
  %274 = xor i32 %23, -2147483648
  %275 = add nsw i32 %271, -1
  %276 = icmp ugt i32 %274, %275
  br i1 %276, label %277, label %.loopexit60, !prof !77, !nosanitize !46

277:                                              ; preds = %273
  %278 = and i32 %271, 1
  %279 = icmp eq i32 %275, 0
  br i1 %279, label %.thread51, label %280

280:                                              ; preds = %277
  %281 = and i32 %271, 2147483646
  br label %282

282:                                              ; preds = %282, %280
  %283 = phi i32 [ %23, %280 ], [ %299, %282 ]
  %284 = phi i64 [ 0, %280 ], [ %309, %282 ]
  %285 = phi i64 [ 0, %280 ], [ %310, %282 ]
  %286 = phi i32 [ 0, %280 ], [ %311, %282 ]
  %287 = add i32 %283, -1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, ptr %2, i64 %288
  %290 = load i8, ptr %289, align 1, !tbaa !5
  %291 = zext i8 %290 to i64
  %292 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %291
  %293 = load i64, ptr %292, align 8, !tbaa !14
  %294 = and i64 %293, 255
  %295 = lshr i64 %284, %294
  %296 = and i64 %293, -256
  %297 = or i64 %295, %296
  %298 = add i64 %293, %285
  %299 = add i32 %283, -2
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, ptr %2, i64 %300
  %302 = load i8, ptr %301, align 1, !tbaa !5
  %303 = zext i8 %302 to i64
  %304 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %303
  %305 = load i64, ptr %304, align 8, !tbaa !14
  %306 = and i64 %305, 255
  %307 = lshr i64 %297, %306
  %308 = and i64 %305, -256
  %309 = or i64 %307, %308
  %310 = add i64 %298, %305
  %311 = add i32 %286, 2
  %312 = icmp eq i32 %311, %281
  br i1 %312, label %313, label %282, !llvm.loop !78

.loopexit60:                                      ; preds = %439, %360, %357, %354, %351, %348, %273
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

313:                                              ; preds = %282
  %314 = sub i32 %23, %281
  %315 = icmp eq i32 %278, 0
  br i1 %315, label %331, label %.thread51

.thread51:                                        ; preds = %277, %313
  %316 = phi i64 [ %310, %313 ], [ 0, %277 ]
  %317 = phi i64 [ %309, %313 ], [ 0, %277 ]
  %318 = phi i32 [ %314, %313 ], [ %23, %277 ]
  %319 = add i32 %318, -1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8, ptr %2, i64 %320
  %322 = load i8, ptr %321, align 1, !tbaa !5
  %323 = zext i8 %322 to i64
  %324 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %323
  %325 = load i64, ptr %324, align 8, !tbaa !14
  %326 = and i64 %325, 255
  %327 = lshr i64 %317, %326
  %328 = and i64 %325, -256
  %329 = or i64 %327, %328
  %330 = add i64 %325, %316
  br label %331

331:                                              ; preds = %.thread51, %313
  %332 = phi i64 [ %309, %313 ], [ %329, %.thread51 ]
  %333 = phi i64 [ %310, %313 ], [ %330, %.thread51 ]
  %334 = sub nsw i32 %23, %271
  %335 = and i64 %333, 255
  %336 = lshr i64 %335, 3
  %337 = sub nsw i64 64, %335
  %338 = lshr i64 %332, %337
  %339 = and i64 %333, 7
  store i64 %338, ptr %0, align 1, !tbaa !14
  %340 = getelementptr inbounds nuw i8, ptr %0, i64 %336
  br label %341

341:                                              ; preds = %331, %270
  %342 = phi i64 [ %339, %331 ], [ 0, %270 ]
  %343 = phi ptr [ %340, %331 ], [ %0, %270 ]
  %344 = phi i64 [ %332, %331 ], [ 0, %270 ]
  %345 = phi i32 [ %334, %331 ], [ %23, %270 ]
  %346 = srem i32 %345, 10
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %426, label %348

348:                                              ; preds = %341
  %349 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %345, i32 -1)
  %350 = extractvalue { i32, i1 } %349, 1, !nosanitize !46
  br i1 %350, label %.loopexit60, label %351, !prof !49, !nosanitize !46

351:                                              ; preds = %348
  %352 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %345, i32 -2)
  %353 = extractvalue { i32, i1 } %352, 1, !nosanitize !46
  br i1 %353, label %.loopexit60, label %354, !prof !49, !nosanitize !46

354:                                              ; preds = %351
  %355 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %345, i32 -3)
  %356 = extractvalue { i32, i1 } %355, 1, !nosanitize !46
  br i1 %356, label %.loopexit60, label %357, !prof !49, !nosanitize !46

357:                                              ; preds = %354
  %358 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %345, i32 -4)
  %359 = extractvalue { i32, i1 } %358, 1, !nosanitize !46
  br i1 %359, label %.loopexit60, label %360, !prof !49, !nosanitize !46

360:                                              ; preds = %357
  %361 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %345, i32 -5)
  %362 = extractvalue { i32, i1 } %361, 1, !nosanitize !46
  br i1 %362, label %.loopexit60, label %363, !prof !49, !nosanitize !46

363:                                              ; preds = %360
  %364 = extractvalue { i32, i1 } %358, 0, !nosanitize !46
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8, ptr %2, i64 %365
  %367 = load i8, ptr %366, align 1, !tbaa !5
  %368 = zext i8 %367 to i64
  %369 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %368
  %370 = load i64, ptr %369, align 8, !tbaa !14
  %371 = extractvalue { i32, i1 } %355, 0, !nosanitize !46
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i8, ptr %2, i64 %372
  %374 = load i8, ptr %373, align 1, !tbaa !5
  %375 = zext i8 %374 to i64
  %376 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %375
  %377 = load i64, ptr %376, align 8, !tbaa !14
  %378 = extractvalue { i32, i1 } %352, 0, !nosanitize !46
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i8, ptr %2, i64 %379
  %381 = load i8, ptr %380, align 1, !tbaa !5
  %382 = zext i8 %381 to i64
  %383 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %382
  %384 = load i64, ptr %383, align 8, !tbaa !14
  %385 = extractvalue { i32, i1 } %349, 0, !nosanitize !46
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i8, ptr %2, i64 %386
  %388 = load i8, ptr %387, align 1, !tbaa !5
  %389 = zext i8 %388 to i64
  %390 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %389
  %391 = load i64, ptr %390, align 8, !tbaa !14
  %392 = and i64 %391, 255
  %393 = lshr i64 %344, %392
  %394 = or i64 %393, %391
  %395 = and i64 %384, 255
  %396 = lshr i64 %394, %395
  %397 = or i64 %396, %384
  %398 = and i64 %377, 255
  %399 = lshr i64 %397, %398
  %400 = or i64 %399, %377
  %401 = and i64 %370, 255
  %402 = lshr i64 %400, %401
  %403 = or i64 %402, %370
  %404 = extractvalue { i32, i1 } %361, 0, !nosanitize !46
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8, ptr %2, i64 %405
  %407 = load i8, ptr %406, align 1, !tbaa !5
  %408 = zext i8 %407 to i64
  %409 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %408
  %410 = load i64, ptr %409, align 8, !tbaa !14
  %411 = and i64 %410, 255
  %412 = lshr i64 %403, %411
  %413 = and i64 %410, -256
  %414 = or i64 %412, %413
  %415 = add i64 %370, %342
  %416 = add i64 %415, %377
  %417 = add i64 %416, %384
  %418 = add i64 %417, %391
  %419 = add i64 %418, %410
  %420 = and i64 %419, 255
  %421 = lshr i64 %420, 3
  %422 = sub nsw i64 64, %420
  %423 = lshr i64 %414, %422
  %424 = and i64 %419, 7
  store i64 %423, ptr %343, align 1, !tbaa !14
  %425 = getelementptr inbounds nuw i8, ptr %343, i64 %421
  br label %426

426:                                              ; preds = %363, %341
  %427 = phi i64 [ %342, %341 ], [ %424, %363 ]
  %428 = phi ptr [ %343, %341 ], [ %425, %363 ]
  %429 = phi i64 [ %344, %341 ], [ %414, %363 ]
  %430 = phi i32 [ %345, %341 ], [ %404, %363 ]
  %431 = getelementptr i8, ptr %2, i64 -10
  %432 = icmp sgt i32 %430, 0
  br i1 %432, label %433, label %.loopexit57

433:                                              ; preds = %426
  %434 = zext nneg i32 %430 to i64
  %435 = getelementptr i8, ptr %2, i64 -1
  %436 = getelementptr i8, ptr %2, i64 -2
  %437 = getelementptr i8, ptr %2, i64 -3
  %438 = getelementptr i8, ptr %2, i64 -4
  br label %439

439:                                              ; preds = %497, %433
  %440 = phi i64 [ %434, %433 ], [ %559, %497 ]
  %441 = phi i64 [ %429, %433 ], [ %551, %497 ]
  %442 = phi ptr [ %428, %433 ], [ %558, %497 ]
  %443 = phi i64 [ %427, %433 ], [ %557, %497 ]
  %444 = getelementptr i8, ptr %435, i64 %440
  %445 = load i8, ptr %444, align 1, !tbaa !5
  %446 = zext i8 %445 to i64
  %447 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %446
  %448 = load i64, ptr %447, align 8, !tbaa !14
  %449 = and i64 %448, 255
  %450 = lshr i64 %441, %449
  %451 = or i64 %450, %448
  %452 = add i64 %448, %443
  %453 = getelementptr i8, ptr %436, i64 %440
  %454 = load i8, ptr %453, align 1, !tbaa !5
  %455 = zext i8 %454 to i64
  %456 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %455
  %457 = load i64, ptr %456, align 8, !tbaa !14
  %458 = and i64 %457, 255
  %459 = lshr i64 %451, %458
  %460 = or i64 %459, %457
  %461 = add i64 %452, %457
  %462 = getelementptr i8, ptr %437, i64 %440
  %463 = load i8, ptr %462, align 1, !tbaa !5
  %464 = zext i8 %463 to i64
  %465 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %464
  %466 = load i64, ptr %465, align 8, !tbaa !14
  %467 = and i64 %466, 255
  %468 = lshr i64 %460, %467
  %469 = or i64 %468, %466
  %470 = add i64 %461, %466
  %471 = getelementptr i8, ptr %438, i64 %440
  %472 = load i8, ptr %471, align 1, !tbaa !5
  %473 = zext i8 %472 to i64
  %474 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %473
  %475 = load i64, ptr %474, align 8, !tbaa !14
  %476 = and i64 %475, 255
  %477 = lshr i64 %469, %476
  %478 = or i64 %477, %475
  %479 = add i64 %470, %475
  %480 = add nsw i64 %440, -5
  %481 = getelementptr inbounds i8, ptr %2, i64 %480
  %482 = load i8, ptr %481, align 1, !tbaa !5
  %483 = zext i8 %482 to i64
  %484 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %483
  %485 = load i64, ptr %484, align 8, !tbaa !14
  %486 = and i64 %485, 255
  %487 = lshr i64 %478, %486
  %488 = and i64 %485, -256
  %489 = or i64 %487, %488
  %490 = add i64 %479, %485
  %491 = and i64 %490, 255
  %492 = sub nsw i64 64, %491
  %493 = lshr i64 %489, %492
  store i64 %493, ptr %442, align 1, !tbaa !14
  %494 = trunc nsw i64 %480 to i32
  %495 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %494, i32 -1)
  %496 = extractvalue { i32, i1 } %495, 1, !nosanitize !46
  br i1 %496, label %.loopexit60, label %497, !prof !49, !nosanitize !46

497:                                              ; preds = %439
  %498 = lshr i64 %491, 3
  %499 = getelementptr inbounds nuw i8, ptr %442, i64 %498
  %500 = and i64 %490, 7
  %501 = shl i64 %440, 32
  %sext39 = add i64 %501, -34359738368
  %502 = ashr exact i64 %sext39, 32
  %503 = getelementptr inbounds i8, ptr %2, i64 %502
  %504 = load i8, ptr %503, align 1, !tbaa !5
  %505 = zext i8 %504 to i64
  %506 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %505
  %507 = load i64, ptr %506, align 8, !tbaa !14
  %sext40 = add i64 %501, -30064771072
  %508 = ashr exact i64 %sext40, 32
  %509 = getelementptr inbounds i8, ptr %2, i64 %508
  %510 = load i8, ptr %509, align 1, !tbaa !5
  %511 = zext i8 %510 to i64
  %512 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %511
  %513 = load i64, ptr %512, align 8, !tbaa !14
  %514 = extractvalue { i32, i1 } %495, 0, !nosanitize !46
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i8, ptr %2, i64 %515
  %517 = load i8, ptr %516, align 1, !tbaa !5
  %518 = zext i8 %517 to i64
  %519 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %518
  %520 = load i64, ptr %519, align 8, !tbaa !14
  %521 = and i64 %513, 255
  %522 = lshr i64 %520, %521
  %523 = or i64 %522, %513
  %524 = and i64 %507, 255
  %525 = lshr i64 %523, %524
  %526 = or i64 %525, %507
  %sext41 = add i64 %501, -38654705664
  %527 = ashr exact i64 %sext41, 32
  %528 = getelementptr inbounds i8, ptr %2, i64 %527
  %529 = load i8, ptr %528, align 1, !tbaa !5
  %530 = zext i8 %529 to i64
  %531 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %530
  %532 = load i64, ptr %531, align 8, !tbaa !14
  %533 = and i64 %532, 255
  %534 = lshr i64 %526, %533
  %535 = or i64 %534, %532
  %536 = getelementptr i8, ptr %431, i64 %440
  %537 = load i8, ptr %536, align 1, !tbaa !5
  %538 = zext i8 %537 to i64
  %539 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %538
  %540 = load i64, ptr %539, align 8, !tbaa !14
  %541 = and i64 %540, 255
  %542 = lshr i64 %535, %541
  %543 = and i64 %540, -256
  %544 = or i64 %542, %543
  %545 = add i64 %513, %507
  %546 = add i64 %545, %520
  %547 = add i64 %546, %532
  %548 = add i64 %547, %540
  %549 = and i64 %548, 255
  %550 = lshr i64 %489, %549
  %551 = or i64 %544, %550
  %552 = add i64 %548, %500
  %553 = and i64 %552, 255
  %554 = lshr i64 %553, 3
  %555 = sub nsw i64 64, %553
  %556 = lshr i64 %551, %555
  %557 = and i64 %552, 7
  store i64 %556, ptr %499, align 1, !tbaa !14
  %558 = getelementptr inbounds nuw i8, ptr %499, i64 %554
  %559 = add nsw i64 %440, -10
  %560 = icmp sgt i64 %440, 10
  br i1 %560, label %439, label %.loopexit57, !llvm.loop !76

561:                                              ; preds = %269
  %562 = srem i32 %23, 5
  %563 = icmp sgt i32 %562, 0
  br i1 %563, label %564, label %632

564:                                              ; preds = %561
  %565 = xor i32 %23, -2147483648
  %566 = add nsw i32 %562, -1
  %567 = icmp ugt i32 %565, %566
  br i1 %567, label %568, label %.loopexit62, !prof !77, !nosanitize !46

568:                                              ; preds = %564
  %569 = and i32 %562, 1
  %570 = icmp eq i32 %566, 0
  br i1 %570, label %.thread52, label %571

571:                                              ; preds = %568
  %572 = and i32 %562, 2147483646
  br label %573

573:                                              ; preds = %573, %571
  %574 = phi i32 [ %23, %571 ], [ %590, %573 ]
  %575 = phi i64 [ 0, %571 ], [ %600, %573 ]
  %576 = phi i64 [ 0, %571 ], [ %601, %573 ]
  %577 = phi i32 [ 0, %571 ], [ %602, %573 ]
  %578 = add i32 %574, -1
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i8, ptr %2, i64 %579
  %581 = load i8, ptr %580, align 1, !tbaa !5
  %582 = zext i8 %581 to i64
  %583 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %582
  %584 = load i64, ptr %583, align 8, !tbaa !14
  %585 = and i64 %584, 255
  %586 = lshr i64 %575, %585
  %587 = and i64 %584, -256
  %588 = or i64 %586, %587
  %589 = add i64 %584, %576
  %590 = add i32 %574, -2
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i8, ptr %2, i64 %591
  %593 = load i8, ptr %592, align 1, !tbaa !5
  %594 = zext i8 %593 to i64
  %595 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %594
  %596 = load i64, ptr %595, align 8, !tbaa !14
  %597 = and i64 %596, 255
  %598 = lshr i64 %588, %597
  %599 = and i64 %596, -256
  %600 = or i64 %598, %599
  %601 = add i64 %589, %596
  %602 = add i32 %577, 2
  %603 = icmp eq i32 %602, %572
  br i1 %603, label %604, label %573, !llvm.loop !78

.loopexit62:                                      ; preds = %729, %651, %648, %645, %642, %639, %564
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

604:                                              ; preds = %573
  %605 = sub i32 %23, %572
  %606 = icmp eq i32 %569, 0
  br i1 %606, label %622, label %.thread52

.thread52:                                        ; preds = %568, %604
  %607 = phi i64 [ %601, %604 ], [ 0, %568 ]
  %608 = phi i64 [ %600, %604 ], [ 0, %568 ]
  %609 = phi i32 [ %605, %604 ], [ %23, %568 ]
  %610 = add i32 %609, -1
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds i8, ptr %2, i64 %611
  %613 = load i8, ptr %612, align 1, !tbaa !5
  %614 = zext i8 %613 to i64
  %615 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %614
  %616 = load i64, ptr %615, align 8, !tbaa !14
  %617 = and i64 %616, 255
  %618 = lshr i64 %608, %617
  %619 = and i64 %616, -256
  %620 = or i64 %618, %619
  %621 = add i64 %616, %607
  br label %622

622:                                              ; preds = %.thread52, %604
  %623 = phi i64 [ %600, %604 ], [ %620, %.thread52 ]
  %624 = phi i64 [ %601, %604 ], [ %621, %.thread52 ]
  %625 = sub nsw i32 %23, %562
  %626 = and i64 %624, 255
  %627 = lshr i64 %626, 3
  %628 = sub nsw i64 64, %626
  %629 = lshr i64 %623, %628
  %630 = and i64 %624, 7
  store i64 %629, ptr %0, align 1, !tbaa !14
  %631 = getelementptr inbounds nuw i8, ptr %0, i64 %627
  br label %632

632:                                              ; preds = %622, %561
  %633 = phi i64 [ %630, %622 ], [ 0, %561 ]
  %634 = phi ptr [ %631, %622 ], [ %0, %561 ]
  %635 = phi i64 [ %623, %622 ], [ 0, %561 ]
  %636 = phi i32 [ %625, %622 ], [ %23, %561 ]
  %637 = srem i32 %636, 10
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %716, label %639

639:                                              ; preds = %632
  %640 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %636, i32 -1)
  %641 = extractvalue { i32, i1 } %640, 1, !nosanitize !46
  br i1 %641, label %.loopexit62, label %642, !prof !49, !nosanitize !46

642:                                              ; preds = %639
  %643 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %636, i32 -2)
  %644 = extractvalue { i32, i1 } %643, 1, !nosanitize !46
  br i1 %644, label %.loopexit62, label %645, !prof !49, !nosanitize !46

645:                                              ; preds = %642
  %646 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %636, i32 -3)
  %647 = extractvalue { i32, i1 } %646, 1, !nosanitize !46
  br i1 %647, label %.loopexit62, label %648, !prof !49, !nosanitize !46

648:                                              ; preds = %645
  %649 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %636, i32 -4)
  %650 = extractvalue { i32, i1 } %649, 1, !nosanitize !46
  br i1 %650, label %.loopexit62, label %651, !prof !49, !nosanitize !46

651:                                              ; preds = %648
  %652 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %636, i32 -5)
  %653 = extractvalue { i32, i1 } %652, 1, !nosanitize !46
  br i1 %653, label %.loopexit62, label %654, !prof !49, !nosanitize !46

654:                                              ; preds = %651
  %655 = extractvalue { i32, i1 } %649, 0, !nosanitize !46
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds i8, ptr %2, i64 %656
  %658 = load i8, ptr %657, align 1, !tbaa !5
  %659 = zext i8 %658 to i64
  %660 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %659
  %661 = load i64, ptr %660, align 8, !tbaa !14
  %662 = extractvalue { i32, i1 } %646, 0, !nosanitize !46
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds i8, ptr %2, i64 %663
  %665 = load i8, ptr %664, align 1, !tbaa !5
  %666 = zext i8 %665 to i64
  %667 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %666
  %668 = load i64, ptr %667, align 8, !tbaa !14
  %669 = extractvalue { i32, i1 } %643, 0, !nosanitize !46
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds i8, ptr %2, i64 %670
  %672 = load i8, ptr %671, align 1, !tbaa !5
  %673 = zext i8 %672 to i64
  %674 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %673
  %675 = load i64, ptr %674, align 8, !tbaa !14
  %676 = extractvalue { i32, i1 } %640, 0, !nosanitize !46
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds i8, ptr %2, i64 %677
  %679 = load i8, ptr %678, align 1, !tbaa !5
  %680 = zext i8 %679 to i64
  %681 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %680
  %682 = load i64, ptr %681, align 8, !tbaa !14
  %683 = and i64 %682, 255
  %684 = lshr i64 %635, %683
  %685 = or i64 %684, %682
  %686 = and i64 %675, 255
  %687 = lshr i64 %685, %686
  %688 = or i64 %687, %675
  %689 = and i64 %668, 255
  %690 = lshr i64 %688, %689
  %691 = or i64 %690, %668
  %692 = and i64 %661, 255
  %693 = lshr i64 %691, %692
  %694 = or i64 %693, %661
  %695 = extractvalue { i32, i1 } %652, 0, !nosanitize !46
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds i8, ptr %2, i64 %696
  %698 = load i8, ptr %697, align 1, !tbaa !5
  %699 = zext i8 %698 to i64
  %700 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %699
  %701 = load i64, ptr %700, align 8, !tbaa !14
  %702 = and i64 %701, 255
  %703 = lshr i64 %694, %702
  %704 = or i64 %703, %701
  %705 = add i64 %661, %633
  %706 = add i64 %705, %668
  %707 = add i64 %706, %675
  %708 = add i64 %707, %682
  %709 = add i64 %708, %701
  %710 = and i64 %709, 255
  %711 = lshr i64 %710, 3
  %712 = sub nsw i64 64, %710
  %713 = lshr i64 %704, %712
  %714 = and i64 %709, 7
  store i64 %713, ptr %634, align 1, !tbaa !14
  %715 = getelementptr inbounds nuw i8, ptr %634, i64 %711
  br label %716

716:                                              ; preds = %654, %632
  %717 = phi i64 [ %633, %632 ], [ %714, %654 ]
  %718 = phi ptr [ %634, %632 ], [ %715, %654 ]
  %719 = phi i64 [ %635, %632 ], [ %704, %654 ]
  %720 = phi i32 [ %636, %632 ], [ %695, %654 ]
  %721 = getelementptr i8, ptr %2, i64 -10
  %722 = icmp sgt i32 %720, 0
  br i1 %722, label %723, label %.loopexit57

723:                                              ; preds = %716
  %724 = zext nneg i32 %720 to i64
  %725 = getelementptr i8, ptr %2, i64 -1
  %726 = getelementptr i8, ptr %2, i64 -2
  %727 = getelementptr i8, ptr %2, i64 -3
  %728 = getelementptr i8, ptr %2, i64 -4
  br label %729

729:                                              ; preds = %786, %723
  %730 = phi i64 [ %724, %723 ], [ %847, %786 ]
  %731 = phi i64 [ %719, %723 ], [ %839, %786 ]
  %732 = phi ptr [ %718, %723 ], [ %846, %786 ]
  %733 = phi i64 [ %717, %723 ], [ %845, %786 ]
  %734 = getelementptr i8, ptr %725, i64 %730
  %735 = load i8, ptr %734, align 1, !tbaa !5
  %736 = zext i8 %735 to i64
  %737 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %736
  %738 = load i64, ptr %737, align 8, !tbaa !14
  %739 = and i64 %738, 255
  %740 = lshr i64 %731, %739
  %741 = or i64 %740, %738
  %742 = add i64 %738, %733
  %743 = getelementptr i8, ptr %726, i64 %730
  %744 = load i8, ptr %743, align 1, !tbaa !5
  %745 = zext i8 %744 to i64
  %746 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %745
  %747 = load i64, ptr %746, align 8, !tbaa !14
  %748 = and i64 %747, 255
  %749 = lshr i64 %741, %748
  %750 = or i64 %749, %747
  %751 = add i64 %742, %747
  %752 = getelementptr i8, ptr %727, i64 %730
  %753 = load i8, ptr %752, align 1, !tbaa !5
  %754 = zext i8 %753 to i64
  %755 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %754
  %756 = load i64, ptr %755, align 8, !tbaa !14
  %757 = and i64 %756, 255
  %758 = lshr i64 %750, %757
  %759 = or i64 %758, %756
  %760 = add i64 %751, %756
  %761 = getelementptr i8, ptr %728, i64 %730
  %762 = load i8, ptr %761, align 1, !tbaa !5
  %763 = zext i8 %762 to i64
  %764 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %763
  %765 = load i64, ptr %764, align 8, !tbaa !14
  %766 = and i64 %765, 255
  %767 = lshr i64 %759, %766
  %768 = or i64 %767, %765
  %769 = add i64 %760, %765
  %770 = add nsw i64 %730, -5
  %771 = getelementptr inbounds i8, ptr %2, i64 %770
  %772 = load i8, ptr %771, align 1, !tbaa !5
  %773 = zext i8 %772 to i64
  %774 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %773
  %775 = load i64, ptr %774, align 8, !tbaa !14
  %776 = and i64 %775, 255
  %777 = lshr i64 %768, %776
  %778 = or i64 %777, %775
  %779 = add i64 %769, %775
  %780 = and i64 %779, 255
  %781 = sub nsw i64 64, %780
  %782 = lshr i64 %778, %781
  store i64 %782, ptr %732, align 1, !tbaa !14
  %783 = trunc nsw i64 %770 to i32
  %784 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %783, i32 -1)
  %785 = extractvalue { i32, i1 } %784, 1, !nosanitize !46
  br i1 %785, label %.loopexit62, label %786, !prof !49, !nosanitize !46

786:                                              ; preds = %729
  %787 = lshr i64 %780, 3
  %788 = getelementptr inbounds nuw i8, ptr %732, i64 %787
  %789 = and i64 %779, 7
  %790 = shl i64 %730, 32
  %sext36 = add i64 %790, -34359738368
  %791 = ashr exact i64 %sext36, 32
  %792 = getelementptr inbounds i8, ptr %2, i64 %791
  %793 = load i8, ptr %792, align 1, !tbaa !5
  %794 = zext i8 %793 to i64
  %795 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %794
  %796 = load i64, ptr %795, align 8, !tbaa !14
  %sext37 = add i64 %790, -30064771072
  %797 = ashr exact i64 %sext37, 32
  %798 = getelementptr inbounds i8, ptr %2, i64 %797
  %799 = load i8, ptr %798, align 1, !tbaa !5
  %800 = zext i8 %799 to i64
  %801 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %800
  %802 = load i64, ptr %801, align 8, !tbaa !14
  %803 = extractvalue { i32, i1 } %784, 0, !nosanitize !46
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds i8, ptr %2, i64 %804
  %806 = load i8, ptr %805, align 1, !tbaa !5
  %807 = zext i8 %806 to i64
  %808 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %807
  %809 = load i64, ptr %808, align 8, !tbaa !14
  %810 = and i64 %802, 255
  %811 = lshr i64 %809, %810
  %812 = or i64 %811, %802
  %813 = and i64 %796, 255
  %814 = lshr i64 %812, %813
  %815 = or i64 %814, %796
  %sext38 = add i64 %790, -38654705664
  %816 = ashr exact i64 %sext38, 32
  %817 = getelementptr inbounds i8, ptr %2, i64 %816
  %818 = load i8, ptr %817, align 1, !tbaa !5
  %819 = zext i8 %818 to i64
  %820 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %819
  %821 = load i64, ptr %820, align 8, !tbaa !14
  %822 = and i64 %821, 255
  %823 = lshr i64 %815, %822
  %824 = or i64 %823, %821
  %825 = getelementptr i8, ptr %721, i64 %730
  %826 = load i8, ptr %825, align 1, !tbaa !5
  %827 = zext i8 %826 to i64
  %828 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %827
  %829 = load i64, ptr %828, align 8, !tbaa !14
  %830 = and i64 %829, 255
  %831 = lshr i64 %824, %830
  %832 = add i64 %802, %796
  %833 = add i64 %832, %809
  %834 = add i64 %833, %821
  %835 = add i64 %834, %829
  %836 = and i64 %835, 255
  %837 = lshr i64 %778, %836
  %838 = or i64 %837, %831
  %839 = or i64 %838, %829
  %840 = add i64 %835, %789
  %841 = and i64 %840, 255
  %842 = lshr i64 %841, 3
  %843 = sub nsw i64 64, %841
  %844 = lshr i64 %839, %843
  %845 = and i64 %840, 7
  store i64 %844, ptr %788, align 1, !tbaa !14
  %846 = getelementptr inbounds nuw i8, ptr %788, i64 %842
  %847 = add nsw i64 %730, -10
  %848 = icmp sgt i64 %730, 10
  br i1 %848, label %729, label %.loopexit57, !llvm.loop !76

849:                                              ; preds = %269
  %850 = srem i32 %23, 6
  %851 = icmp sgt i32 %850, 0
  br i1 %851, label %852, label %920

852:                                              ; preds = %849
  %853 = xor i32 %23, -2147483648
  %854 = add nsw i32 %850, -1
  %855 = icmp ugt i32 %853, %854
  br i1 %855, label %856, label %.loopexit64, !prof !77, !nosanitize !46

856:                                              ; preds = %852
  %857 = and i32 %850, 1
  %858 = icmp eq i32 %854, 0
  br i1 %858, label %.thread53, label %859

859:                                              ; preds = %856
  %860 = and i32 %850, 2147483646
  br label %861

861:                                              ; preds = %861, %859
  %862 = phi i32 [ %23, %859 ], [ %878, %861 ]
  %863 = phi i64 [ 0, %859 ], [ %888, %861 ]
  %864 = phi i64 [ 0, %859 ], [ %889, %861 ]
  %865 = phi i32 [ 0, %859 ], [ %890, %861 ]
  %866 = add i32 %862, -1
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds i8, ptr %2, i64 %867
  %869 = load i8, ptr %868, align 1, !tbaa !5
  %870 = zext i8 %869 to i64
  %871 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %870
  %872 = load i64, ptr %871, align 8, !tbaa !14
  %873 = and i64 %872, 255
  %874 = lshr i64 %863, %873
  %875 = and i64 %872, -256
  %876 = or i64 %874, %875
  %877 = add i64 %872, %864
  %878 = add i32 %862, -2
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds i8, ptr %2, i64 %879
  %881 = load i8, ptr %880, align 1, !tbaa !5
  %882 = zext i8 %881 to i64
  %883 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %882
  %884 = load i64, ptr %883, align 8, !tbaa !14
  %885 = and i64 %884, 255
  %886 = lshr i64 %876, %885
  %887 = and i64 %884, -256
  %888 = or i64 %886, %887
  %889 = add i64 %877, %884
  %890 = add i32 %865, 2
  %891 = icmp eq i32 %890, %860
  br i1 %891, label %892, label %861, !llvm.loop !78

.loopexit64:                                      ; preds = %1033, %942, %939, %936, %933, %930, %927, %852
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

892:                                              ; preds = %861
  %893 = sub i32 %23, %860
  %894 = icmp eq i32 %857, 0
  br i1 %894, label %910, label %.thread53

.thread53:                                        ; preds = %856, %892
  %895 = phi i64 [ %889, %892 ], [ 0, %856 ]
  %896 = phi i64 [ %888, %892 ], [ 0, %856 ]
  %897 = phi i32 [ %893, %892 ], [ %23, %856 ]
  %898 = add i32 %897, -1
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds i8, ptr %2, i64 %899
  %901 = load i8, ptr %900, align 1, !tbaa !5
  %902 = zext i8 %901 to i64
  %903 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %902
  %904 = load i64, ptr %903, align 8, !tbaa !14
  %905 = and i64 %904, 255
  %906 = lshr i64 %896, %905
  %907 = and i64 %904, -256
  %908 = or i64 %906, %907
  %909 = add i64 %904, %895
  br label %910

910:                                              ; preds = %.thread53, %892
  %911 = phi i64 [ %888, %892 ], [ %908, %.thread53 ]
  %912 = phi i64 [ %889, %892 ], [ %909, %.thread53 ]
  %913 = sub nsw i32 %23, %850
  %914 = and i64 %912, 255
  %915 = lshr i64 %914, 3
  %916 = sub nsw i64 64, %914
  %917 = lshr i64 %911, %916
  %918 = and i64 %912, 7
  store i64 %917, ptr %0, align 1, !tbaa !14
  %919 = getelementptr inbounds nuw i8, ptr %0, i64 %915
  br label %920

920:                                              ; preds = %910, %849
  %921 = phi i64 [ %918, %910 ], [ 0, %849 ]
  %922 = phi ptr [ %919, %910 ], [ %0, %849 ]
  %923 = phi i64 [ %911, %910 ], [ 0, %849 ]
  %924 = phi i32 [ %913, %910 ], [ %23, %849 ]
  %925 = srem i32 %924, 12
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %1019, label %927

927:                                              ; preds = %920
  %928 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %924, i32 -1)
  %929 = extractvalue { i32, i1 } %928, 1, !nosanitize !46
  br i1 %929, label %.loopexit64, label %930, !prof !49, !nosanitize !46

930:                                              ; preds = %927
  %931 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %924, i32 -2)
  %932 = extractvalue { i32, i1 } %931, 1, !nosanitize !46
  br i1 %932, label %.loopexit64, label %933, !prof !49, !nosanitize !46

933:                                              ; preds = %930
  %934 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %924, i32 -3)
  %935 = extractvalue { i32, i1 } %934, 1, !nosanitize !46
  br i1 %935, label %.loopexit64, label %936, !prof !49, !nosanitize !46

936:                                              ; preds = %933
  %937 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %924, i32 -4)
  %938 = extractvalue { i32, i1 } %937, 1, !nosanitize !46
  br i1 %938, label %.loopexit64, label %939, !prof !49, !nosanitize !46

939:                                              ; preds = %936
  %940 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %924, i32 -5)
  %941 = extractvalue { i32, i1 } %940, 1, !nosanitize !46
  br i1 %941, label %.loopexit64, label %942, !prof !49, !nosanitize !46

942:                                              ; preds = %939
  %943 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %924, i32 -6)
  %944 = extractvalue { i32, i1 } %943, 1, !nosanitize !46
  br i1 %944, label %.loopexit64, label %945, !prof !49, !nosanitize !46

945:                                              ; preds = %942
  %946 = extractvalue { i32, i1 } %940, 0, !nosanitize !46
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds i8, ptr %2, i64 %947
  %949 = load i8, ptr %948, align 1, !tbaa !5
  %950 = zext i8 %949 to i64
  %951 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %950
  %952 = load i64, ptr %951, align 8, !tbaa !14
  %953 = extractvalue { i32, i1 } %937, 0, !nosanitize !46
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds i8, ptr %2, i64 %954
  %956 = load i8, ptr %955, align 1, !tbaa !5
  %957 = zext i8 %956 to i64
  %958 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %957
  %959 = load i64, ptr %958, align 8, !tbaa !14
  %960 = extractvalue { i32, i1 } %934, 0, !nosanitize !46
  %961 = sext i32 %960 to i64
  %962 = getelementptr inbounds i8, ptr %2, i64 %961
  %963 = load i8, ptr %962, align 1, !tbaa !5
  %964 = zext i8 %963 to i64
  %965 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %964
  %966 = load i64, ptr %965, align 8, !tbaa !14
  %967 = extractvalue { i32, i1 } %931, 0, !nosanitize !46
  %968 = sext i32 %967 to i64
  %969 = getelementptr inbounds i8, ptr %2, i64 %968
  %970 = load i8, ptr %969, align 1, !tbaa !5
  %971 = zext i8 %970 to i64
  %972 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %971
  %973 = load i64, ptr %972, align 8, !tbaa !14
  %974 = extractvalue { i32, i1 } %928, 0, !nosanitize !46
  %975 = sext i32 %974 to i64
  %976 = getelementptr inbounds i8, ptr %2, i64 %975
  %977 = load i8, ptr %976, align 1, !tbaa !5
  %978 = zext i8 %977 to i64
  %979 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %978
  %980 = load i64, ptr %979, align 8, !tbaa !14
  %981 = and i64 %980, 255
  %982 = lshr i64 %923, %981
  %983 = or i64 %982, %980
  %984 = and i64 %973, 255
  %985 = lshr i64 %983, %984
  %986 = or i64 %985, %973
  %987 = and i64 %966, 255
  %988 = lshr i64 %986, %987
  %989 = or i64 %988, %966
  %990 = and i64 %959, 255
  %991 = lshr i64 %989, %990
  %992 = or i64 %991, %959
  %993 = and i64 %952, 255
  %994 = lshr i64 %992, %993
  %995 = or i64 %994, %952
  %996 = extractvalue { i32, i1 } %943, 0, !nosanitize !46
  %997 = sext i32 %996 to i64
  %998 = getelementptr inbounds i8, ptr %2, i64 %997
  %999 = load i8, ptr %998, align 1, !tbaa !5
  %1000 = zext i8 %999 to i64
  %1001 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1000
  %1002 = load i64, ptr %1001, align 8, !tbaa !14
  %1003 = and i64 %1002, 255
  %1004 = lshr i64 %995, %1003
  %1005 = and i64 %1002, -256
  %1006 = or i64 %1004, %1005
  %1007 = add i64 %952, %921
  %1008 = add i64 %1007, %959
  %1009 = add i64 %1008, %966
  %1010 = add i64 %1009, %973
  %1011 = add i64 %1010, %980
  %1012 = add i64 %1011, %1002
  %1013 = and i64 %1012, 255
  %1014 = lshr i64 %1013, 3
  %1015 = sub nsw i64 64, %1013
  %1016 = lshr i64 %1006, %1015
  %1017 = and i64 %1012, 7
  store i64 %1016, ptr %922, align 1, !tbaa !14
  %1018 = getelementptr inbounds nuw i8, ptr %922, i64 %1014
  br label %1019

1019:                                             ; preds = %945, %920
  %1020 = phi i64 [ %921, %920 ], [ %1017, %945 ]
  %1021 = phi ptr [ %922, %920 ], [ %1018, %945 ]
  %1022 = phi i64 [ %923, %920 ], [ %1006, %945 ]
  %1023 = phi i32 [ %924, %920 ], [ %996, %945 ]
  %1024 = getelementptr i8, ptr %2, i64 -12
  %1025 = icmp sgt i32 %1023, 0
  br i1 %1025, label %1026, label %.loopexit57

1026:                                             ; preds = %1019
  %1027 = zext nneg i32 %1023 to i64
  %1028 = getelementptr i8, ptr %2, i64 -1
  %1029 = getelementptr i8, ptr %2, i64 -2
  %1030 = getelementptr i8, ptr %2, i64 -3
  %1031 = getelementptr i8, ptr %2, i64 -4
  %1032 = getelementptr i8, ptr %2, i64 -5
  br label %1033

1033:                                             ; preds = %1100, %1026
  %1034 = phi i64 [ %1027, %1026 ], [ %1172, %1100 ]
  %1035 = phi i64 [ %1022, %1026 ], [ %1164, %1100 ]
  %1036 = phi ptr [ %1021, %1026 ], [ %1171, %1100 ]
  %1037 = phi i64 [ %1020, %1026 ], [ %1170, %1100 ]
  %1038 = getelementptr i8, ptr %1028, i64 %1034
  %1039 = load i8, ptr %1038, align 1, !tbaa !5
  %1040 = zext i8 %1039 to i64
  %1041 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1040
  %1042 = load i64, ptr %1041, align 8, !tbaa !14
  %1043 = and i64 %1042, 255
  %1044 = lshr i64 %1035, %1043
  %1045 = or i64 %1044, %1042
  %1046 = add i64 %1042, %1037
  %1047 = getelementptr i8, ptr %1029, i64 %1034
  %1048 = load i8, ptr %1047, align 1, !tbaa !5
  %1049 = zext i8 %1048 to i64
  %1050 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1049
  %1051 = load i64, ptr %1050, align 8, !tbaa !14
  %1052 = and i64 %1051, 255
  %1053 = lshr i64 %1045, %1052
  %1054 = or i64 %1053, %1051
  %1055 = add i64 %1046, %1051
  %1056 = getelementptr i8, ptr %1030, i64 %1034
  %1057 = load i8, ptr %1056, align 1, !tbaa !5
  %1058 = zext i8 %1057 to i64
  %1059 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1058
  %1060 = load i64, ptr %1059, align 8, !tbaa !14
  %1061 = and i64 %1060, 255
  %1062 = lshr i64 %1054, %1061
  %1063 = or i64 %1062, %1060
  %1064 = add i64 %1055, %1060
  %1065 = getelementptr i8, ptr %1031, i64 %1034
  %1066 = load i8, ptr %1065, align 1, !tbaa !5
  %1067 = zext i8 %1066 to i64
  %1068 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1067
  %1069 = load i64, ptr %1068, align 8, !tbaa !14
  %1070 = and i64 %1069, 255
  %1071 = lshr i64 %1063, %1070
  %1072 = or i64 %1071, %1069
  %1073 = add i64 %1064, %1069
  %1074 = getelementptr i8, ptr %1032, i64 %1034
  %1075 = load i8, ptr %1074, align 1, !tbaa !5
  %1076 = zext i8 %1075 to i64
  %1077 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1076
  %1078 = load i64, ptr %1077, align 8, !tbaa !14
  %1079 = and i64 %1078, 255
  %1080 = lshr i64 %1072, %1079
  %1081 = or i64 %1080, %1078
  %1082 = add i64 %1073, %1078
  %1083 = add nsw i64 %1034, -6
  %1084 = getelementptr inbounds i8, ptr %2, i64 %1083
  %1085 = load i8, ptr %1084, align 1, !tbaa !5
  %1086 = zext i8 %1085 to i64
  %1087 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1086
  %1088 = load i64, ptr %1087, align 8, !tbaa !14
  %1089 = and i64 %1088, 255
  %1090 = lshr i64 %1081, %1089
  %1091 = and i64 %1088, -256
  %1092 = or i64 %1090, %1091
  %1093 = add i64 %1082, %1088
  %1094 = and i64 %1093, 255
  %1095 = sub nsw i64 64, %1094
  %1096 = lshr i64 %1092, %1095
  store i64 %1096, ptr %1036, align 1, !tbaa !14
  %1097 = trunc nsw i64 %1083 to i32
  %1098 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1097, i32 -1)
  %1099 = extractvalue { i32, i1 } %1098, 1, !nosanitize !46
  br i1 %1099, label %.loopexit64, label %1100, !prof !49, !nosanitize !46

1100:                                             ; preds = %1033
  %1101 = lshr i64 %1094, 3
  %1102 = getelementptr inbounds nuw i8, ptr %1036, i64 %1101
  %1103 = and i64 %1093, 7
  %1104 = shl i64 %1034, 32
  %sext32 = add i64 %1104, -42949672960
  %1105 = ashr exact i64 %sext32, 32
  %1106 = getelementptr inbounds i8, ptr %2, i64 %1105
  %1107 = load i8, ptr %1106, align 1, !tbaa !5
  %1108 = zext i8 %1107 to i64
  %1109 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1108
  %1110 = load i64, ptr %1109, align 8, !tbaa !14
  %sext33 = add i64 %1104, -38654705664
  %1111 = ashr exact i64 %sext33, 32
  %1112 = getelementptr inbounds i8, ptr %2, i64 %1111
  %1113 = load i8, ptr %1112, align 1, !tbaa !5
  %1114 = zext i8 %1113 to i64
  %1115 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1114
  %1116 = load i64, ptr %1115, align 8, !tbaa !14
  %sext34 = add i64 %1104, -34359738368
  %1117 = ashr exact i64 %sext34, 32
  %1118 = getelementptr inbounds i8, ptr %2, i64 %1117
  %1119 = load i8, ptr %1118, align 1, !tbaa !5
  %1120 = zext i8 %1119 to i64
  %1121 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1120
  %1122 = load i64, ptr %1121, align 8, !tbaa !14
  %1123 = extractvalue { i32, i1 } %1098, 0, !nosanitize !46
  %1124 = sext i32 %1123 to i64
  %1125 = getelementptr inbounds i8, ptr %2, i64 %1124
  %1126 = load i8, ptr %1125, align 1, !tbaa !5
  %1127 = zext i8 %1126 to i64
  %1128 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1127
  %1129 = load i64, ptr %1128, align 8, !tbaa !14
  %1130 = and i64 %1122, 255
  %1131 = lshr i64 %1129, %1130
  %1132 = or i64 %1131, %1122
  %1133 = and i64 %1116, 255
  %1134 = lshr i64 %1132, %1133
  %1135 = or i64 %1134, %1116
  %1136 = and i64 %1110, 255
  %1137 = lshr i64 %1135, %1136
  %1138 = or i64 %1137, %1110
  %sext35 = add i64 %1104, -47244640256
  %1139 = ashr exact i64 %sext35, 32
  %1140 = getelementptr inbounds i8, ptr %2, i64 %1139
  %1141 = load i8, ptr %1140, align 1, !tbaa !5
  %1142 = zext i8 %1141 to i64
  %1143 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1142
  %1144 = load i64, ptr %1143, align 8, !tbaa !14
  %1145 = and i64 %1144, 255
  %1146 = lshr i64 %1138, %1145
  %1147 = or i64 %1146, %1144
  %1148 = getelementptr i8, ptr %1024, i64 %1034
  %1149 = load i8, ptr %1148, align 1, !tbaa !5
  %1150 = zext i8 %1149 to i64
  %1151 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1150
  %1152 = load i64, ptr %1151, align 8, !tbaa !14
  %1153 = and i64 %1152, 255
  %1154 = lshr i64 %1147, %1153
  %1155 = and i64 %1152, -256
  %1156 = add i64 %1116, %1110
  %1157 = add i64 %1156, %1122
  %1158 = add i64 %1157, %1129
  %1159 = add i64 %1158, %1144
  %1160 = add i64 %1159, %1152
  %1161 = and i64 %1160, 255
  %1162 = lshr i64 %1092, %1161
  %1163 = or i64 %1162, %1155
  %1164 = or i64 %1163, %1154
  %1165 = add i64 %1160, %1103
  %1166 = and i64 %1165, 255
  %1167 = lshr i64 %1166, 3
  %1168 = sub nsw i64 64, %1166
  %1169 = lshr i64 %1164, %1168
  %1170 = and i64 %1165, 7
  store i64 %1169, ptr %1102, align 1, !tbaa !14
  %1171 = getelementptr inbounds nuw i8, ptr %1102, i64 %1167
  %1172 = add nsw i64 %1034, -12
  %1173 = icmp sgt i64 %1034, 12
  br i1 %1173, label %1033, label %.loopexit57, !llvm.loop !76

1174:                                             ; preds = %269
  %1175 = srem i32 %23, 7
  %1176 = icmp sgt i32 %1175, 0
  br i1 %1176, label %1177, label %1245

1177:                                             ; preds = %1174
  %1178 = xor i32 %23, -2147483648
  %1179 = add nsw i32 %1175, -1
  %1180 = icmp ugt i32 %1178, %1179
  br i1 %1180, label %1181, label %.loopexit66, !prof !77, !nosanitize !46

1181:                                             ; preds = %1177
  %1182 = and i32 %1175, 1
  %1183 = icmp eq i32 %1179, 0
  br i1 %1183, label %.thread54, label %1184

1184:                                             ; preds = %1181
  %1185 = and i32 %1175, 2147483646
  br label %1186

1186:                                             ; preds = %1186, %1184
  %1187 = phi i32 [ %23, %1184 ], [ %1203, %1186 ]
  %1188 = phi i64 [ 0, %1184 ], [ %1213, %1186 ]
  %1189 = phi i64 [ 0, %1184 ], [ %1214, %1186 ]
  %1190 = phi i32 [ 0, %1184 ], [ %1215, %1186 ]
  %1191 = add i32 %1187, -1
  %1192 = sext i32 %1191 to i64
  %1193 = getelementptr inbounds i8, ptr %2, i64 %1192
  %1194 = load i8, ptr %1193, align 1, !tbaa !5
  %1195 = zext i8 %1194 to i64
  %1196 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1195
  %1197 = load i64, ptr %1196, align 8, !tbaa !14
  %1198 = and i64 %1197, 255
  %1199 = lshr i64 %1188, %1198
  %1200 = and i64 %1197, -256
  %1201 = or i64 %1199, %1200
  %1202 = add i64 %1197, %1189
  %1203 = add i32 %1187, -2
  %1204 = sext i32 %1203 to i64
  %1205 = getelementptr inbounds i8, ptr %2, i64 %1204
  %1206 = load i8, ptr %1205, align 1, !tbaa !5
  %1207 = zext i8 %1206 to i64
  %1208 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1207
  %1209 = load i64, ptr %1208, align 8, !tbaa !14
  %1210 = and i64 %1209, 255
  %1211 = lshr i64 %1201, %1210
  %1212 = and i64 %1209, -256
  %1213 = or i64 %1211, %1212
  %1214 = add i64 %1202, %1209
  %1215 = add i32 %1190, 2
  %1216 = icmp eq i32 %1215, %1185
  br i1 %1216, label %1217, label %1186, !llvm.loop !78

.loopexit66:                                      ; preds = %1370, %1267, %1264, %1261, %1258, %1255, %1252, %1177
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

1217:                                             ; preds = %1186
  %1218 = sub i32 %23, %1185
  %1219 = icmp eq i32 %1182, 0
  br i1 %1219, label %1235, label %.thread54

.thread54:                                        ; preds = %1181, %1217
  %1220 = phi i64 [ %1214, %1217 ], [ 0, %1181 ]
  %1221 = phi i64 [ %1213, %1217 ], [ 0, %1181 ]
  %1222 = phi i32 [ %1218, %1217 ], [ %23, %1181 ]
  %1223 = add i32 %1222, -1
  %1224 = sext i32 %1223 to i64
  %1225 = getelementptr inbounds i8, ptr %2, i64 %1224
  %1226 = load i8, ptr %1225, align 1, !tbaa !5
  %1227 = zext i8 %1226 to i64
  %1228 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1227
  %1229 = load i64, ptr %1228, align 8, !tbaa !14
  %1230 = and i64 %1229, 255
  %1231 = lshr i64 %1221, %1230
  %1232 = and i64 %1229, -256
  %1233 = or i64 %1231, %1232
  %1234 = add i64 %1229, %1220
  br label %1235

1235:                                             ; preds = %.thread54, %1217
  %1236 = phi i64 [ %1213, %1217 ], [ %1233, %.thread54 ]
  %1237 = phi i64 [ %1214, %1217 ], [ %1234, %.thread54 ]
  %1238 = sub nsw i32 %23, %1175
  %1239 = and i64 %1237, 255
  %1240 = lshr i64 %1239, 3
  %1241 = sub nsw i64 64, %1239
  %1242 = lshr i64 %1236, %1241
  %1243 = and i64 %1237, 7
  store i64 %1242, ptr %0, align 1, !tbaa !14
  %1244 = getelementptr inbounds nuw i8, ptr %0, i64 %1240
  br label %1245

1245:                                             ; preds = %1235, %1174
  %1246 = phi i64 [ %1243, %1235 ], [ 0, %1174 ]
  %1247 = phi ptr [ %1244, %1235 ], [ %0, %1174 ]
  %1248 = phi i64 [ %1236, %1235 ], [ 0, %1174 ]
  %1249 = phi i32 [ %1238, %1235 ], [ %23, %1174 ]
  %1250 = srem i32 %1249, 14
  %1251 = icmp eq i32 %1250, 0
  br i1 %1251, label %1355, label %1252

1252:                                             ; preds = %1245
  %1253 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1249, i32 -1)
  %1254 = extractvalue { i32, i1 } %1253, 1, !nosanitize !46
  br i1 %1254, label %.loopexit66, label %1255, !prof !49, !nosanitize !46

1255:                                             ; preds = %1252
  %1256 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1249, i32 -2)
  %1257 = extractvalue { i32, i1 } %1256, 1, !nosanitize !46
  br i1 %1257, label %.loopexit66, label %1258, !prof !49, !nosanitize !46

1258:                                             ; preds = %1255
  %1259 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1249, i32 -4)
  %1260 = extractvalue { i32, i1 } %1259, 1, !nosanitize !46
  br i1 %1260, label %.loopexit66, label %1261, !prof !49, !nosanitize !46

1261:                                             ; preds = %1258
  %1262 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1249, i32 -5)
  %1263 = extractvalue { i32, i1 } %1262, 1, !nosanitize !46
  br i1 %1263, label %.loopexit66, label %1264, !prof !49, !nosanitize !46

1264:                                             ; preds = %1261
  %1265 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1249, i32 -6)
  %1266 = extractvalue { i32, i1 } %1265, 1, !nosanitize !46
  br i1 %1266, label %.loopexit66, label %1267, !prof !49, !nosanitize !46

1267:                                             ; preds = %1264
  %1268 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1249, i32 -7)
  %1269 = extractvalue { i32, i1 } %1268, 1, !nosanitize !46
  br i1 %1269, label %.loopexit66, label %1270, !prof !49, !nosanitize !46

1270:                                             ; preds = %1267
  %1271 = extractvalue { i32, i1 } %1265, 0, !nosanitize !46
  %1272 = sext i32 %1271 to i64
  %1273 = getelementptr inbounds i8, ptr %2, i64 %1272
  %1274 = load i8, ptr %1273, align 1, !tbaa !5
  %1275 = zext i8 %1274 to i64
  %1276 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1275
  %1277 = load i64, ptr %1276, align 8, !tbaa !14
  %1278 = extractvalue { i32, i1 } %1262, 0, !nosanitize !46
  %1279 = sext i32 %1278 to i64
  %1280 = getelementptr inbounds i8, ptr %2, i64 %1279
  %1281 = load i8, ptr %1280, align 1, !tbaa !5
  %1282 = zext i8 %1281 to i64
  %1283 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1282
  %1284 = load i64, ptr %1283, align 8, !tbaa !14
  %1285 = extractvalue { i32, i1 } %1259, 0, !nosanitize !46
  %1286 = sext i32 %1285 to i64
  %1287 = getelementptr inbounds i8, ptr %2, i64 %1286
  %1288 = load i8, ptr %1287, align 1, !tbaa !5
  %1289 = zext i8 %1288 to i64
  %1290 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1289
  %1291 = load i64, ptr %1290, align 8, !tbaa !14
  %1292 = sext i32 %1249 to i64
  %1293 = getelementptr i8, ptr %2, i64 %1292
  %1294 = getelementptr i8, ptr %1293, i64 -3
  %1295 = load i8, ptr %1294, align 1, !tbaa !5
  %1296 = zext i8 %1295 to i64
  %1297 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1296
  %1298 = load i64, ptr %1297, align 8, !tbaa !14
  %1299 = extractvalue { i32, i1 } %1256, 0, !nosanitize !46
  %1300 = sext i32 %1299 to i64
  %1301 = getelementptr inbounds i8, ptr %2, i64 %1300
  %1302 = load i8, ptr %1301, align 1, !tbaa !5
  %1303 = zext i8 %1302 to i64
  %1304 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1303
  %1305 = load i64, ptr %1304, align 8, !tbaa !14
  %1306 = extractvalue { i32, i1 } %1253, 0, !nosanitize !46
  %1307 = sext i32 %1306 to i64
  %1308 = getelementptr inbounds i8, ptr %2, i64 %1307
  %1309 = load i8, ptr %1308, align 1, !tbaa !5
  %1310 = zext i8 %1309 to i64
  %1311 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1310
  %1312 = load i64, ptr %1311, align 8, !tbaa !14
  %1313 = and i64 %1312, 255
  %1314 = lshr i64 %1248, %1313
  %1315 = or i64 %1314, %1312
  %1316 = and i64 %1305, 255
  %1317 = lshr i64 %1315, %1316
  %1318 = or i64 %1317, %1305
  %1319 = and i64 %1298, 255
  %1320 = lshr i64 %1318, %1319
  %1321 = or i64 %1320, %1298
  %1322 = and i64 %1291, 255
  %1323 = lshr i64 %1321, %1322
  %1324 = or i64 %1323, %1291
  %1325 = and i64 %1284, 255
  %1326 = lshr i64 %1324, %1325
  %1327 = or i64 %1326, %1284
  %1328 = and i64 %1277, 255
  %1329 = lshr i64 %1327, %1328
  %1330 = or i64 %1329, %1277
  %1331 = extractvalue { i32, i1 } %1268, 0, !nosanitize !46
  %1332 = sext i32 %1331 to i64
  %1333 = getelementptr inbounds i8, ptr %2, i64 %1332
  %1334 = load i8, ptr %1333, align 1, !tbaa !5
  %1335 = zext i8 %1334 to i64
  %1336 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1335
  %1337 = load i64, ptr %1336, align 8, !tbaa !14
  %1338 = and i64 %1337, 255
  %1339 = lshr i64 %1330, %1338
  %1340 = and i64 %1337, -256
  %1341 = or i64 %1339, %1340
  %1342 = add i64 %1277, %1246
  %1343 = add i64 %1342, %1284
  %1344 = add i64 %1343, %1291
  %1345 = add i64 %1344, %1298
  %1346 = add i64 %1345, %1305
  %1347 = add i64 %1346, %1312
  %1348 = add i64 %1347, %1337
  %1349 = and i64 %1348, 255
  %1350 = lshr i64 %1349, 3
  %1351 = sub nsw i64 64, %1349
  %1352 = lshr i64 %1341, %1351
  %1353 = and i64 %1348, 7
  store i64 %1352, ptr %1247, align 1, !tbaa !14
  %1354 = getelementptr inbounds nuw i8, ptr %1247, i64 %1350
  br label %1355

1355:                                             ; preds = %1270, %1245
  %1356 = phi i64 [ %1246, %1245 ], [ %1353, %1270 ]
  %1357 = phi ptr [ %1247, %1245 ], [ %1354, %1270 ]
  %1358 = phi i64 [ %1248, %1245 ], [ %1341, %1270 ]
  %1359 = phi i32 [ %1249, %1245 ], [ %1331, %1270 ]
  %1360 = getelementptr i8, ptr %2, i64 -14
  %1361 = icmp sgt i32 %1359, 0
  br i1 %1361, label %1362, label %.loopexit57

1362:                                             ; preds = %1355
  %1363 = zext nneg i32 %1359 to i64
  %1364 = getelementptr i8, ptr %2, i64 -1
  %1365 = getelementptr i8, ptr %2, i64 -2
  %1366 = getelementptr i8, ptr %2, i64 -3
  %1367 = getelementptr i8, ptr %2, i64 -4
  %1368 = getelementptr i8, ptr %2, i64 -5
  %1369 = getelementptr i8, ptr %2, i64 -6
  br label %1370

1370:                                             ; preds = %1446, %1362
  %1371 = phi i64 [ %1363, %1362 ], [ %1528, %1446 ]
  %1372 = phi i64 [ %1358, %1362 ], [ %1520, %1446 ]
  %1373 = phi ptr [ %1357, %1362 ], [ %1527, %1446 ]
  %1374 = phi i64 [ %1356, %1362 ], [ %1526, %1446 ]
  %1375 = getelementptr i8, ptr %1364, i64 %1371
  %1376 = load i8, ptr %1375, align 1, !tbaa !5
  %1377 = zext i8 %1376 to i64
  %1378 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1377
  %1379 = load i64, ptr %1378, align 8, !tbaa !14
  %1380 = and i64 %1379, 255
  %1381 = lshr i64 %1372, %1380
  %1382 = or i64 %1381, %1379
  %1383 = add i64 %1379, %1374
  %1384 = getelementptr i8, ptr %1365, i64 %1371
  %1385 = load i8, ptr %1384, align 1, !tbaa !5
  %1386 = zext i8 %1385 to i64
  %1387 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1386
  %1388 = load i64, ptr %1387, align 8, !tbaa !14
  %1389 = and i64 %1388, 255
  %1390 = lshr i64 %1382, %1389
  %1391 = or i64 %1390, %1388
  %1392 = add i64 %1383, %1388
  %1393 = getelementptr i8, ptr %1366, i64 %1371
  %1394 = load i8, ptr %1393, align 1, !tbaa !5
  %1395 = zext i8 %1394 to i64
  %1396 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1395
  %1397 = load i64, ptr %1396, align 8, !tbaa !14
  %1398 = and i64 %1397, 255
  %1399 = lshr i64 %1391, %1398
  %1400 = or i64 %1399, %1397
  %1401 = add i64 %1392, %1397
  %1402 = getelementptr i8, ptr %1367, i64 %1371
  %1403 = load i8, ptr %1402, align 1, !tbaa !5
  %1404 = zext i8 %1403 to i64
  %1405 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1404
  %1406 = load i64, ptr %1405, align 8, !tbaa !14
  %1407 = and i64 %1406, 255
  %1408 = lshr i64 %1400, %1407
  %1409 = or i64 %1408, %1406
  %1410 = add i64 %1401, %1406
  %1411 = getelementptr i8, ptr %1368, i64 %1371
  %1412 = load i8, ptr %1411, align 1, !tbaa !5
  %1413 = zext i8 %1412 to i64
  %1414 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1413
  %1415 = load i64, ptr %1414, align 8, !tbaa !14
  %1416 = and i64 %1415, 255
  %1417 = lshr i64 %1409, %1416
  %1418 = or i64 %1417, %1415
  %1419 = add i64 %1410, %1415
  %1420 = getelementptr i8, ptr %1369, i64 %1371
  %1421 = load i8, ptr %1420, align 1, !tbaa !5
  %1422 = zext i8 %1421 to i64
  %1423 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1422
  %1424 = load i64, ptr %1423, align 8, !tbaa !14
  %1425 = and i64 %1424, 255
  %1426 = lshr i64 %1418, %1425
  %1427 = or i64 %1426, %1424
  %1428 = add i64 %1419, %1424
  %1429 = add nsw i64 %1371, -7
  %1430 = getelementptr inbounds i8, ptr %2, i64 %1429
  %1431 = load i8, ptr %1430, align 1, !tbaa !5
  %1432 = zext i8 %1431 to i64
  %1433 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1432
  %1434 = load i64, ptr %1433, align 8, !tbaa !14
  %1435 = and i64 %1434, 255
  %1436 = lshr i64 %1427, %1435
  %1437 = and i64 %1434, -256
  %1438 = or i64 %1436, %1437
  %1439 = add i64 %1428, %1434
  %1440 = and i64 %1439, 255
  %1441 = sub nsw i64 64, %1440
  %1442 = lshr i64 %1438, %1441
  store i64 %1442, ptr %1373, align 1, !tbaa !14
  %1443 = trunc nsw i64 %1429 to i32
  %1444 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1443, i32 -1)
  %1445 = extractvalue { i32, i1 } %1444, 1, !nosanitize !46
  br i1 %1445, label %.loopexit66, label %1446, !prof !49, !nosanitize !46

1446:                                             ; preds = %1370
  %1447 = lshr i64 %1440, 3
  %1448 = getelementptr inbounds nuw i8, ptr %1373, i64 %1447
  %1449 = and i64 %1439, 7
  %1450 = shl i64 %1371, 32
  %sext27 = add i64 %1450, -51539607552
  %1451 = ashr exact i64 %sext27, 32
  %1452 = getelementptr inbounds i8, ptr %2, i64 %1451
  %1453 = load i8, ptr %1452, align 1, !tbaa !5
  %1454 = zext i8 %1453 to i64
  %1455 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1454
  %1456 = load i64, ptr %1455, align 8, !tbaa !14
  %sext28 = add i64 %1450, -47244640256
  %1457 = ashr exact i64 %sext28, 32
  %1458 = getelementptr inbounds i8, ptr %2, i64 %1457
  %1459 = load i8, ptr %1458, align 1, !tbaa !5
  %1460 = zext i8 %1459 to i64
  %1461 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1460
  %1462 = load i64, ptr %1461, align 8, !tbaa !14
  %sext29 = add i64 %1450, -42949672960
  %1463 = ashr exact i64 %sext29, 32
  %1464 = getelementptr inbounds i8, ptr %2, i64 %1463
  %1465 = load i8, ptr %1464, align 1, !tbaa !5
  %1466 = zext i8 %1465 to i64
  %1467 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1466
  %1468 = load i64, ptr %1467, align 8, !tbaa !14
  %sext30 = add i64 %1450, -38654705664
  %1469 = ashr exact i64 %sext30, 32
  %1470 = getelementptr inbounds i8, ptr %2, i64 %1469
  %1471 = load i8, ptr %1470, align 1, !tbaa !5
  %1472 = zext i8 %1471 to i64
  %1473 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1472
  %1474 = load i64, ptr %1473, align 8, !tbaa !14
  %1475 = extractvalue { i32, i1 } %1444, 0, !nosanitize !46
  %1476 = sext i32 %1475 to i64
  %1477 = getelementptr inbounds i8, ptr %2, i64 %1476
  %1478 = load i8, ptr %1477, align 1, !tbaa !5
  %1479 = zext i8 %1478 to i64
  %1480 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1479
  %1481 = load i64, ptr %1480, align 8, !tbaa !14
  %1482 = and i64 %1474, 255
  %1483 = lshr i64 %1481, %1482
  %1484 = or i64 %1483, %1474
  %1485 = and i64 %1468, 255
  %1486 = lshr i64 %1484, %1485
  %1487 = or i64 %1486, %1468
  %1488 = and i64 %1462, 255
  %1489 = lshr i64 %1487, %1488
  %1490 = or i64 %1489, %1462
  %1491 = and i64 %1456, 255
  %1492 = lshr i64 %1490, %1491
  %1493 = or i64 %1492, %1456
  %sext31 = add i64 %1450, -55834574848
  %1494 = ashr exact i64 %sext31, 32
  %1495 = getelementptr inbounds i8, ptr %2, i64 %1494
  %1496 = load i8, ptr %1495, align 1, !tbaa !5
  %1497 = zext i8 %1496 to i64
  %1498 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1497
  %1499 = load i64, ptr %1498, align 8, !tbaa !14
  %1500 = and i64 %1499, 255
  %1501 = lshr i64 %1493, %1500
  %1502 = or i64 %1501, %1499
  %1503 = getelementptr i8, ptr %1360, i64 %1371
  %1504 = load i8, ptr %1503, align 1, !tbaa !5
  %1505 = zext i8 %1504 to i64
  %1506 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1505
  %1507 = load i64, ptr %1506, align 8, !tbaa !14
  %1508 = and i64 %1507, 255
  %1509 = lshr i64 %1502, %1508
  %1510 = and i64 %1507, -256
  %1511 = add i64 %1462, %1456
  %1512 = add i64 %1511, %1468
  %1513 = add i64 %1512, %1474
  %1514 = add i64 %1513, %1481
  %1515 = add i64 %1514, %1499
  %1516 = add i64 %1515, %1507
  %1517 = and i64 %1516, 255
  %1518 = lshr i64 %1438, %1517
  %1519 = or i64 %1518, %1510
  %1520 = or i64 %1519, %1509
  %1521 = add i64 %1516, %1449
  %1522 = and i64 %1521, 255
  %1523 = lshr i64 %1522, 3
  %1524 = sub nsw i64 64, %1522
  %1525 = lshr i64 %1520, %1524
  %1526 = and i64 %1521, 7
  store i64 %1525, ptr %1448, align 1, !tbaa !14
  %1527 = getelementptr inbounds nuw i8, ptr %1448, i64 %1523
  %1528 = add nsw i64 %1371, -14
  %1529 = icmp sgt i64 %1371, 14
  br i1 %1529, label %1370, label %.loopexit57, !llvm.loop !76

1530:                                             ; preds = %269
  %1531 = srem i32 %23, 8
  %1532 = icmp sgt i32 %1531, 0
  br i1 %1532, label %1533, label %1597

1533:                                             ; preds = %1530
  %1534 = and i32 %1531, 1
  %1535 = icmp eq i32 %1531, 1
  br i1 %1535, label %.thread55, label %1536

1536:                                             ; preds = %1533
  %1537 = and i32 %1531, 2147483646
  br label %1538

1538:                                             ; preds = %1538, %1536
  %1539 = phi i32 [ %23, %1536 ], [ %1555, %1538 ]
  %1540 = phi i64 [ 0, %1536 ], [ %1565, %1538 ]
  %1541 = phi i64 [ 0, %1536 ], [ %1566, %1538 ]
  %1542 = phi i32 [ 0, %1536 ], [ %1567, %1538 ]
  %1543 = add i32 %1539, -1
  %1544 = sext i32 %1543 to i64
  %1545 = getelementptr inbounds i8, ptr %2, i64 %1544
  %1546 = load i8, ptr %1545, align 1, !tbaa !5
  %1547 = zext i8 %1546 to i64
  %1548 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1547
  %1549 = load i64, ptr %1548, align 8, !tbaa !14
  %1550 = and i64 %1549, 255
  %1551 = lshr i64 %1540, %1550
  %1552 = and i64 %1549, -256
  %1553 = or i64 %1551, %1552
  %1554 = add i64 %1549, %1541
  %1555 = add i32 %1539, -2
  %1556 = sext i32 %1555 to i64
  %1557 = getelementptr inbounds i8, ptr %2, i64 %1556
  %1558 = load i8, ptr %1557, align 1, !tbaa !5
  %1559 = zext i8 %1558 to i64
  %1560 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1559
  %1561 = load i64, ptr %1560, align 8, !tbaa !14
  %1562 = and i64 %1561, 255
  %1563 = lshr i64 %1553, %1562
  %1564 = and i64 %1561, -256
  %1565 = or i64 %1563, %1564
  %1566 = add i64 %1554, %1561
  %1567 = add i32 %1542, 2
  %1568 = icmp eq i32 %1567, %1537
  br i1 %1568, label %1569, label %1538, !llvm.loop !78

.loopexit68:                                      ; preds = %1737, %1622, %1619, %1616, %1613, %1610, %1607, %1604
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

1569:                                             ; preds = %1538
  %1570 = sub i32 %23, %1537
  %1571 = icmp eq i32 %1534, 0
  br i1 %1571, label %1587, label %.thread55

.thread55:                                        ; preds = %1533, %1569
  %1572 = phi i64 [ %1566, %1569 ], [ 0, %1533 ]
  %1573 = phi i64 [ %1565, %1569 ], [ 0, %1533 ]
  %1574 = phi i32 [ %1570, %1569 ], [ %23, %1533 ]
  %1575 = add i32 %1574, -1
  %1576 = sext i32 %1575 to i64
  %1577 = getelementptr inbounds i8, ptr %2, i64 %1576
  %1578 = load i8, ptr %1577, align 1, !tbaa !5
  %1579 = zext i8 %1578 to i64
  %1580 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1579
  %1581 = load i64, ptr %1580, align 8, !tbaa !14
  %1582 = and i64 %1581, 255
  %1583 = lshr i64 %1573, %1582
  %1584 = and i64 %1581, -256
  %1585 = or i64 %1583, %1584
  %1586 = add i64 %1581, %1572
  br label %1587

1587:                                             ; preds = %.thread55, %1569
  %1588 = phi i64 [ %1565, %1569 ], [ %1585, %.thread55 ]
  %1589 = phi i64 [ %1566, %1569 ], [ %1586, %.thread55 ]
  %1590 = sub nsw i32 %23, %1531
  %1591 = and i64 %1589, 255
  %1592 = lshr i64 %1591, 3
  %1593 = sub nsw i64 64, %1591
  %1594 = lshr i64 %1588, %1593
  %1595 = and i64 %1589, 7
  store i64 %1594, ptr %0, align 1, !tbaa !14
  %1596 = getelementptr inbounds nuw i8, ptr %0, i64 %1592
  br label %1597

1597:                                             ; preds = %1587, %1530
  %1598 = phi i64 [ %1595, %1587 ], [ 0, %1530 ]
  %1599 = phi ptr [ %1596, %1587 ], [ %0, %1530 ]
  %1600 = phi i64 [ %1588, %1587 ], [ 0, %1530 ]
  %1601 = phi i32 [ %1590, %1587 ], [ %23, %1530 ]
  %1602 = and i32 %1601, 15
  %1603 = icmp eq i32 %1602, 0
  br i1 %1603, label %1721, label %1604

1604:                                             ; preds = %1597
  %1605 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1601, i32 -2)
  %1606 = extractvalue { i32, i1 } %1605, 1, !nosanitize !46
  br i1 %1606, label %.loopexit68, label %1607, !prof !49, !nosanitize !46

1607:                                             ; preds = %1604
  %1608 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1601, i32 -3)
  %1609 = extractvalue { i32, i1 } %1608, 1, !nosanitize !46
  br i1 %1609, label %.loopexit68, label %1610, !prof !49, !nosanitize !46

1610:                                             ; preds = %1607
  %1611 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1601, i32 -4)
  %1612 = extractvalue { i32, i1 } %1611, 1, !nosanitize !46
  br i1 %1612, label %.loopexit68, label %1613, !prof !49, !nosanitize !46

1613:                                             ; preds = %1610
  %1614 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1601, i32 -5)
  %1615 = extractvalue { i32, i1 } %1614, 1, !nosanitize !46
  br i1 %1615, label %.loopexit68, label %1616, !prof !49, !nosanitize !46

1616:                                             ; preds = %1613
  %1617 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1601, i32 -6)
  %1618 = extractvalue { i32, i1 } %1617, 1, !nosanitize !46
  br i1 %1618, label %.loopexit68, label %1619, !prof !49, !nosanitize !46

1619:                                             ; preds = %1616
  %1620 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1601, i32 -7)
  %1621 = extractvalue { i32, i1 } %1620, 1, !nosanitize !46
  br i1 %1621, label %.loopexit68, label %1622, !prof !49, !nosanitize !46

1622:                                             ; preds = %1619
  %1623 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1601, i32 -8)
  %1624 = extractvalue { i32, i1 } %1623, 1, !nosanitize !46
  br i1 %1624, label %.loopexit68, label %1625, !prof !49, !nosanitize !46

1625:                                             ; preds = %1622
  %1626 = extractvalue { i32, i1 } %1620, 0, !nosanitize !46
  %1627 = sext i32 %1626 to i64
  %1628 = getelementptr inbounds i8, ptr %2, i64 %1627
  %1629 = load i8, ptr %1628, align 1, !tbaa !5
  %1630 = zext i8 %1629 to i64
  %1631 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1630
  %1632 = load i64, ptr %1631, align 8, !tbaa !14
  %1633 = extractvalue { i32, i1 } %1617, 0, !nosanitize !46
  %1634 = sext i32 %1633 to i64
  %1635 = getelementptr inbounds i8, ptr %2, i64 %1634
  %1636 = load i8, ptr %1635, align 1, !tbaa !5
  %1637 = zext i8 %1636 to i64
  %1638 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1637
  %1639 = load i64, ptr %1638, align 8, !tbaa !14
  %1640 = extractvalue { i32, i1 } %1614, 0, !nosanitize !46
  %1641 = sext i32 %1640 to i64
  %1642 = getelementptr inbounds i8, ptr %2, i64 %1641
  %1643 = load i8, ptr %1642, align 1, !tbaa !5
  %1644 = zext i8 %1643 to i64
  %1645 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1644
  %1646 = load i64, ptr %1645, align 8, !tbaa !14
  %1647 = extractvalue { i32, i1 } %1611, 0, !nosanitize !46
  %1648 = sext i32 %1647 to i64
  %1649 = getelementptr inbounds i8, ptr %2, i64 %1648
  %1650 = load i8, ptr %1649, align 1, !tbaa !5
  %1651 = zext i8 %1650 to i64
  %1652 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1651
  %1653 = load i64, ptr %1652, align 8, !tbaa !14
  %1654 = extractvalue { i32, i1 } %1608, 0, !nosanitize !46
  %1655 = sext i32 %1654 to i64
  %1656 = getelementptr inbounds i8, ptr %2, i64 %1655
  %1657 = load i8, ptr %1656, align 1, !tbaa !5
  %1658 = zext i8 %1657 to i64
  %1659 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1658
  %1660 = load i64, ptr %1659, align 8, !tbaa !14
  %1661 = extractvalue { i32, i1 } %1605, 0, !nosanitize !46
  %1662 = sext i32 %1661 to i64
  %1663 = getelementptr inbounds i8, ptr %2, i64 %1662
  %1664 = load i8, ptr %1663, align 1, !tbaa !5
  %1665 = zext i8 %1664 to i64
  %1666 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1665
  %1667 = load i64, ptr %1666, align 8, !tbaa !14
  %1668 = sext i32 %1601 to i64
  %1669 = getelementptr i8, ptr %2, i64 %1668
  %1670 = getelementptr i8, ptr %1669, i64 -1
  %1671 = load i8, ptr %1670, align 1, !tbaa !5
  %1672 = zext i8 %1671 to i64
  %1673 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1672
  %1674 = load i64, ptr %1673, align 8, !tbaa !14
  %1675 = and i64 %1674, 255
  %1676 = lshr i64 %1600, %1675
  %1677 = or i64 %1676, %1674
  %1678 = and i64 %1667, 255
  %1679 = lshr i64 %1677, %1678
  %1680 = or i64 %1679, %1667
  %1681 = and i64 %1660, 255
  %1682 = lshr i64 %1680, %1681
  %1683 = or i64 %1682, %1660
  %1684 = and i64 %1653, 255
  %1685 = lshr i64 %1683, %1684
  %1686 = or i64 %1685, %1653
  %1687 = and i64 %1646, 255
  %1688 = lshr i64 %1686, %1687
  %1689 = or i64 %1688, %1646
  %1690 = and i64 %1639, 255
  %1691 = lshr i64 %1689, %1690
  %1692 = or i64 %1691, %1639
  %1693 = and i64 %1632, 255
  %1694 = lshr i64 %1692, %1693
  %1695 = or i64 %1694, %1632
  %1696 = extractvalue { i32, i1 } %1623, 0, !nosanitize !46
  %1697 = sext i32 %1696 to i64
  %1698 = getelementptr inbounds i8, ptr %2, i64 %1697
  %1699 = load i8, ptr %1698, align 1, !tbaa !5
  %1700 = zext i8 %1699 to i64
  %1701 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1700
  %1702 = load i64, ptr %1701, align 8, !tbaa !14
  %1703 = and i64 %1702, 255
  %1704 = lshr i64 %1695, %1703
  %1705 = and i64 %1702, -256
  %1706 = or i64 %1704, %1705
  %1707 = add i64 %1632, %1598
  %1708 = add i64 %1707, %1639
  %1709 = add i64 %1708, %1646
  %1710 = add i64 %1709, %1653
  %1711 = add i64 %1710, %1660
  %1712 = add i64 %1711, %1667
  %1713 = add i64 %1712, %1674
  %1714 = add i64 %1713, %1702
  %1715 = and i64 %1714, 255
  %1716 = lshr i64 %1715, 3
  %1717 = sub nsw i64 64, %1715
  %1718 = lshr i64 %1706, %1717
  %1719 = and i64 %1714, 7
  store i64 %1718, ptr %1599, align 1, !tbaa !14
  %1720 = getelementptr inbounds nuw i8, ptr %1599, i64 %1716
  br label %1721

1721:                                             ; preds = %1625, %1597
  %1722 = phi i64 [ %1598, %1597 ], [ %1719, %1625 ]
  %1723 = phi ptr [ %1599, %1597 ], [ %1720, %1625 ]
  %1724 = phi i64 [ %1600, %1597 ], [ %1706, %1625 ]
  %1725 = phi i32 [ %1601, %1597 ], [ %1696, %1625 ]
  %1726 = getelementptr i8, ptr %2, i64 -16
  %1727 = icmp sgt i32 %1725, 0
  br i1 %1727, label %1728, label %.loopexit57

1728:                                             ; preds = %1721
  %1729 = zext nneg i32 %1725 to i64
  %1730 = getelementptr i8, ptr %2, i64 -1
  %1731 = getelementptr i8, ptr %2, i64 -2
  %1732 = getelementptr i8, ptr %2, i64 -3
  %1733 = getelementptr i8, ptr %2, i64 -4
  %1734 = getelementptr i8, ptr %2, i64 -5
  %1735 = getelementptr i8, ptr %2, i64 -6
  %1736 = getelementptr i8, ptr %2, i64 -7
  br label %1737

1737:                                             ; preds = %1822, %1728
  %1738 = phi i64 [ %1729, %1728 ], [ %1914, %1822 ]
  %1739 = phi i64 [ %1724, %1728 ], [ %1906, %1822 ]
  %1740 = phi ptr [ %1723, %1728 ], [ %1913, %1822 ]
  %1741 = phi i64 [ %1722, %1728 ], [ %1912, %1822 ]
  %1742 = getelementptr i8, ptr %1730, i64 %1738
  %1743 = load i8, ptr %1742, align 1, !tbaa !5
  %1744 = zext i8 %1743 to i64
  %1745 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1744
  %1746 = load i64, ptr %1745, align 8, !tbaa !14
  %1747 = and i64 %1746, 255
  %1748 = lshr i64 %1739, %1747
  %1749 = or i64 %1748, %1746
  %1750 = add i64 %1746, %1741
  %1751 = getelementptr i8, ptr %1731, i64 %1738
  %1752 = load i8, ptr %1751, align 1, !tbaa !5
  %1753 = zext i8 %1752 to i64
  %1754 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1753
  %1755 = load i64, ptr %1754, align 8, !tbaa !14
  %1756 = and i64 %1755, 255
  %1757 = lshr i64 %1749, %1756
  %1758 = or i64 %1757, %1755
  %1759 = add i64 %1750, %1755
  %1760 = getelementptr i8, ptr %1732, i64 %1738
  %1761 = load i8, ptr %1760, align 1, !tbaa !5
  %1762 = zext i8 %1761 to i64
  %1763 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1762
  %1764 = load i64, ptr %1763, align 8, !tbaa !14
  %1765 = and i64 %1764, 255
  %1766 = lshr i64 %1758, %1765
  %1767 = or i64 %1766, %1764
  %1768 = add i64 %1759, %1764
  %1769 = getelementptr i8, ptr %1733, i64 %1738
  %1770 = load i8, ptr %1769, align 1, !tbaa !5
  %1771 = zext i8 %1770 to i64
  %1772 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1771
  %1773 = load i64, ptr %1772, align 8, !tbaa !14
  %1774 = and i64 %1773, 255
  %1775 = lshr i64 %1767, %1774
  %1776 = or i64 %1775, %1773
  %1777 = add i64 %1768, %1773
  %1778 = getelementptr i8, ptr %1734, i64 %1738
  %1779 = load i8, ptr %1778, align 1, !tbaa !5
  %1780 = zext i8 %1779 to i64
  %1781 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1780
  %1782 = load i64, ptr %1781, align 8, !tbaa !14
  %1783 = and i64 %1782, 255
  %1784 = lshr i64 %1776, %1783
  %1785 = or i64 %1784, %1782
  %1786 = add i64 %1777, %1782
  %1787 = getelementptr i8, ptr %1735, i64 %1738
  %1788 = load i8, ptr %1787, align 1, !tbaa !5
  %1789 = zext i8 %1788 to i64
  %1790 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1789
  %1791 = load i64, ptr %1790, align 8, !tbaa !14
  %1792 = and i64 %1791, 255
  %1793 = lshr i64 %1785, %1792
  %1794 = or i64 %1793, %1791
  %1795 = add i64 %1786, %1791
  %1796 = getelementptr i8, ptr %1736, i64 %1738
  %1797 = load i8, ptr %1796, align 1, !tbaa !5
  %1798 = zext i8 %1797 to i64
  %1799 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1798
  %1800 = load i64, ptr %1799, align 8, !tbaa !14
  %1801 = and i64 %1800, 255
  %1802 = lshr i64 %1794, %1801
  %1803 = or i64 %1802, %1800
  %1804 = add i64 %1795, %1800
  %1805 = add nsw i64 %1738, -8
  %1806 = getelementptr inbounds i8, ptr %2, i64 %1805
  %1807 = load i8, ptr %1806, align 1, !tbaa !5
  %1808 = zext i8 %1807 to i64
  %1809 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1808
  %1810 = load i64, ptr %1809, align 8, !tbaa !14
  %1811 = and i64 %1810, 255
  %1812 = lshr i64 %1803, %1811
  %1813 = and i64 %1810, -256
  %1814 = or i64 %1812, %1813
  %1815 = add i64 %1804, %1810
  %1816 = and i64 %1815, 255
  %1817 = sub nsw i64 64, %1816
  %1818 = lshr i64 %1814, %1817
  store i64 %1818, ptr %1740, align 1, !tbaa !14
  %1819 = trunc nsw i64 %1805 to i32
  %1820 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1819, i32 -1)
  %1821 = extractvalue { i32, i1 } %1820, 1, !nosanitize !46
  br i1 %1821, label %.loopexit68, label %1822, !prof !49, !nosanitize !46

1822:                                             ; preds = %1737
  %1823 = lshr i64 %1816, 3
  %1824 = getelementptr inbounds nuw i8, ptr %1740, i64 %1823
  %1825 = and i64 %1815, 7
  %1826 = shl i64 %1738, 32
  %sext = add i64 %1826, -60129542144
  %1827 = ashr exact i64 %sext, 32
  %1828 = getelementptr inbounds i8, ptr %2, i64 %1827
  %1829 = load i8, ptr %1828, align 1, !tbaa !5
  %1830 = zext i8 %1829 to i64
  %1831 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1830
  %1832 = load i64, ptr %1831, align 8, !tbaa !14
  %sext22 = add i64 %1826, -55834574848
  %1833 = ashr exact i64 %sext22, 32
  %1834 = getelementptr inbounds i8, ptr %2, i64 %1833
  %1835 = load i8, ptr %1834, align 1, !tbaa !5
  %1836 = zext i8 %1835 to i64
  %1837 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1836
  %1838 = load i64, ptr %1837, align 8, !tbaa !14
  %sext23 = add i64 %1826, -51539607552
  %1839 = ashr exact i64 %sext23, 32
  %1840 = getelementptr inbounds i8, ptr %2, i64 %1839
  %1841 = load i8, ptr %1840, align 1, !tbaa !5
  %1842 = zext i8 %1841 to i64
  %1843 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1842
  %1844 = load i64, ptr %1843, align 8, !tbaa !14
  %sext24 = add i64 %1826, -47244640256
  %1845 = ashr exact i64 %sext24, 32
  %1846 = getelementptr inbounds i8, ptr %2, i64 %1845
  %1847 = load i8, ptr %1846, align 1, !tbaa !5
  %1848 = zext i8 %1847 to i64
  %1849 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1848
  %1850 = load i64, ptr %1849, align 8, !tbaa !14
  %sext25 = add i64 %1826, -42949672960
  %1851 = ashr exact i64 %sext25, 32
  %1852 = getelementptr inbounds i8, ptr %2, i64 %1851
  %1853 = load i8, ptr %1852, align 1, !tbaa !5
  %1854 = zext i8 %1853 to i64
  %1855 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1854
  %1856 = load i64, ptr %1855, align 8, !tbaa !14
  %1857 = extractvalue { i32, i1 } %1820, 0, !nosanitize !46
  %1858 = sext i32 %1857 to i64
  %1859 = getelementptr inbounds i8, ptr %2, i64 %1858
  %1860 = load i8, ptr %1859, align 1, !tbaa !5
  %1861 = zext i8 %1860 to i64
  %1862 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1861
  %1863 = load i64, ptr %1862, align 8, !tbaa !14
  %1864 = and i64 %1856, 255
  %1865 = lshr i64 %1863, %1864
  %1866 = or i64 %1865, %1856
  %1867 = and i64 %1850, 255
  %1868 = lshr i64 %1866, %1867
  %1869 = or i64 %1868, %1850
  %1870 = and i64 %1844, 255
  %1871 = lshr i64 %1869, %1870
  %1872 = or i64 %1871, %1844
  %1873 = and i64 %1838, 255
  %1874 = lshr i64 %1872, %1873
  %1875 = or i64 %1874, %1838
  %1876 = and i64 %1832, 255
  %1877 = lshr i64 %1875, %1876
  %1878 = or i64 %1877, %1832
  %sext26 = add i64 %1826, -64424509440
  %1879 = ashr exact i64 %sext26, 32
  %1880 = getelementptr inbounds i8, ptr %2, i64 %1879
  %1881 = load i8, ptr %1880, align 1, !tbaa !5
  %1882 = zext i8 %1881 to i64
  %1883 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1882
  %1884 = load i64, ptr %1883, align 8, !tbaa !14
  %1885 = and i64 %1884, 255
  %1886 = lshr i64 %1878, %1885
  %1887 = or i64 %1886, %1884
  %1888 = getelementptr i8, ptr %1726, i64 %1738
  %1889 = load i8, ptr %1888, align 1, !tbaa !5
  %1890 = zext i8 %1889 to i64
  %1891 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1890
  %1892 = load i64, ptr %1891, align 8, !tbaa !14
  %1893 = and i64 %1892, 255
  %1894 = lshr i64 %1887, %1893
  %1895 = and i64 %1892, -256
  %1896 = add i64 %1838, %1832
  %1897 = add i64 %1896, %1844
  %1898 = add i64 %1897, %1850
  %1899 = add i64 %1898, %1856
  %1900 = add i64 %1899, %1863
  %1901 = add i64 %1900, %1884
  %1902 = add i64 %1901, %1892
  %1903 = and i64 %1902, 255
  %1904 = lshr i64 %1814, %1903
  %1905 = or i64 %1904, %1895
  %1906 = or i64 %1905, %1894
  %1907 = add i64 %1902, %1825
  %1908 = and i64 %1907, 255
  %1909 = lshr i64 %1908, 3
  %1910 = sub nsw i64 64, %1908
  %1911 = lshr i64 %1906, %1910
  %1912 = and i64 %1907, 7
  store i64 %1911, ptr %1824, align 1, !tbaa !14
  %1913 = getelementptr inbounds nuw i8, ptr %1824, i64 %1909
  %1914 = add nsw i64 %1738, -16
  %1915 = icmp sgt i64 %1738, 16
  br i1 %1915, label %1737, label %.loopexit57, !llvm.loop !76

1916:                                             ; preds = %269
  %1917 = srem i32 %23, 9
  %1918 = icmp sgt i32 %1917, 0
  br i1 %1918, label %1919, label %1987

1919:                                             ; preds = %1916
  %1920 = xor i32 %23, -2147483648
  %1921 = add nsw i32 %1917, -1
  %1922 = icmp ugt i32 %1920, %1921
  br i1 %1922, label %1923, label %.loopexit58, !prof !77, !nosanitize !46

1923:                                             ; preds = %1919
  %1924 = and i32 %1917, 1
  %1925 = icmp eq i32 %1921, 0
  br i1 %1925, label %.thread56, label %1926

1926:                                             ; preds = %1923
  %1927 = and i32 %1917, 2147483646
  br label %1928

1928:                                             ; preds = %1928, %1926
  %1929 = phi i32 [ %23, %1926 ], [ %1945, %1928 ]
  %1930 = phi i64 [ 0, %1926 ], [ %1955, %1928 ]
  %1931 = phi i64 [ 0, %1926 ], [ %1956, %1928 ]
  %1932 = phi i32 [ 0, %1926 ], [ %1957, %1928 ]
  %1933 = add i32 %1929, -1
  %1934 = sext i32 %1933 to i64
  %1935 = getelementptr inbounds i8, ptr %2, i64 %1934
  %1936 = load i8, ptr %1935, align 1, !tbaa !5
  %1937 = zext i8 %1936 to i64
  %1938 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1937
  %1939 = load i64, ptr %1938, align 8, !tbaa !14
  %1940 = and i64 %1939, 255
  %1941 = lshr i64 %1930, %1940
  %1942 = and i64 %1939, -256
  %1943 = or i64 %1941, %1942
  %1944 = add i64 %1939, %1931
  %1945 = add i32 %1929, -2
  %1946 = sext i32 %1945 to i64
  %1947 = getelementptr inbounds i8, ptr %2, i64 %1946
  %1948 = load i8, ptr %1947, align 1, !tbaa !5
  %1949 = zext i8 %1948 to i64
  %1950 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1949
  %1951 = load i64, ptr %1950, align 8, !tbaa !14
  %1952 = and i64 %1951, 255
  %1953 = lshr i64 %1943, %1952
  %1954 = and i64 %1951, -256
  %1955 = or i64 %1953, %1954
  %1956 = add i64 %1944, %1951
  %1957 = add i32 %1932, 2
  %1958 = icmp eq i32 %1957, %1927
  br i1 %1958, label %1959, label %1928, !llvm.loop !78

.loopexit58:                                      ; preds = %2141, %2015, %2012, %2009, %2006, %2003, %2000, %1997, %1994, %1919
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

1959:                                             ; preds = %1928
  %1960 = sub i32 %23, %1927
  %1961 = icmp eq i32 %1924, 0
  br i1 %1961, label %1977, label %.thread56

.thread56:                                        ; preds = %1923, %1959
  %1962 = phi i64 [ %1956, %1959 ], [ 0, %1923 ]
  %1963 = phi i64 [ %1955, %1959 ], [ 0, %1923 ]
  %1964 = phi i32 [ %1960, %1959 ], [ %23, %1923 ]
  %1965 = add i32 %1964, -1
  %1966 = sext i32 %1965 to i64
  %1967 = getelementptr inbounds i8, ptr %2, i64 %1966
  %1968 = load i8, ptr %1967, align 1, !tbaa !5
  %1969 = zext i8 %1968 to i64
  %1970 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1969
  %1971 = load i64, ptr %1970, align 8, !tbaa !14
  %1972 = and i64 %1971, 255
  %1973 = lshr i64 %1963, %1972
  %1974 = and i64 %1971, -256
  %1975 = or i64 %1973, %1974
  %1976 = add i64 %1971, %1962
  br label %1977

1977:                                             ; preds = %.thread56, %1959
  %1978 = phi i64 [ %1955, %1959 ], [ %1975, %.thread56 ]
  %1979 = phi i64 [ %1956, %1959 ], [ %1976, %.thread56 ]
  %1980 = sub nsw i32 %23, %1917
  %1981 = and i64 %1979, 255
  %1982 = lshr i64 %1981, 3
  %1983 = sub nsw i64 64, %1981
  %1984 = lshr i64 %1978, %1983
  %1985 = and i64 %1979, 7
  store i64 %1984, ptr %0, align 1, !tbaa !14
  %1986 = getelementptr inbounds nuw i8, ptr %0, i64 %1982
  br label %1987

1987:                                             ; preds = %1977, %1916
  %1988 = phi i64 [ %1985, %1977 ], [ 0, %1916 ]
  %1989 = phi ptr [ %1986, %1977 ], [ %0, %1916 ]
  %1990 = phi i64 [ %1978, %1977 ], [ 0, %1916 ]
  %1991 = phi i32 [ %1980, %1977 ], [ %23, %1916 ]
  %1992 = srem i32 %1991, 18
  %1993 = icmp eq i32 %1992, 0
  br i1 %1993, label %2124, label %1994

1994:                                             ; preds = %1987
  %1995 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1991, i32 -1)
  %1996 = extractvalue { i32, i1 } %1995, 1, !nosanitize !46
  br i1 %1996, label %.loopexit58, label %1997, !prof !49, !nosanitize !46

1997:                                             ; preds = %1994
  %1998 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1991, i32 -2)
  %1999 = extractvalue { i32, i1 } %1998, 1, !nosanitize !46
  br i1 %1999, label %.loopexit58, label %2000, !prof !49, !nosanitize !46

2000:                                             ; preds = %1997
  %2001 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1991, i32 -4)
  %2002 = extractvalue { i32, i1 } %2001, 1, !nosanitize !46
  br i1 %2002, label %.loopexit58, label %2003, !prof !49, !nosanitize !46

2003:                                             ; preds = %2000
  %2004 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1991, i32 -5)
  %2005 = extractvalue { i32, i1 } %2004, 1, !nosanitize !46
  br i1 %2005, label %.loopexit58, label %2006, !prof !49, !nosanitize !46

2006:                                             ; preds = %2003
  %2007 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1991, i32 -6)
  %2008 = extractvalue { i32, i1 } %2007, 1, !nosanitize !46
  br i1 %2008, label %.loopexit58, label %2009, !prof !49, !nosanitize !46

2009:                                             ; preds = %2006
  %2010 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1991, i32 -7)
  %2011 = extractvalue { i32, i1 } %2010, 1, !nosanitize !46
  br i1 %2011, label %.loopexit58, label %2012, !prof !49, !nosanitize !46

2012:                                             ; preds = %2009
  %2013 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1991, i32 -8)
  %2014 = extractvalue { i32, i1 } %2013, 1, !nosanitize !46
  br i1 %2014, label %.loopexit58, label %2015, !prof !49, !nosanitize !46

2015:                                             ; preds = %2012
  %2016 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1991, i32 -9)
  %2017 = extractvalue { i32, i1 } %2016, 1, !nosanitize !46
  br i1 %2017, label %.loopexit58, label %2018, !prof !49, !nosanitize !46

2018:                                             ; preds = %2015
  %2019 = extractvalue { i32, i1 } %2013, 0, !nosanitize !46
  %2020 = sext i32 %2019 to i64
  %2021 = getelementptr inbounds i8, ptr %2, i64 %2020
  %2022 = load i8, ptr %2021, align 1, !tbaa !5
  %2023 = zext i8 %2022 to i64
  %2024 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2023
  %2025 = load i64, ptr %2024, align 8, !tbaa !14
  %2026 = extractvalue { i32, i1 } %2010, 0, !nosanitize !46
  %2027 = sext i32 %2026 to i64
  %2028 = getelementptr inbounds i8, ptr %2, i64 %2027
  %2029 = load i8, ptr %2028, align 1, !tbaa !5
  %2030 = zext i8 %2029 to i64
  %2031 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2030
  %2032 = load i64, ptr %2031, align 8, !tbaa !14
  %2033 = extractvalue { i32, i1 } %2007, 0, !nosanitize !46
  %2034 = sext i32 %2033 to i64
  %2035 = getelementptr inbounds i8, ptr %2, i64 %2034
  %2036 = load i8, ptr %2035, align 1, !tbaa !5
  %2037 = zext i8 %2036 to i64
  %2038 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2037
  %2039 = load i64, ptr %2038, align 8, !tbaa !14
  %2040 = extractvalue { i32, i1 } %2004, 0, !nosanitize !46
  %2041 = sext i32 %2040 to i64
  %2042 = getelementptr inbounds i8, ptr %2, i64 %2041
  %2043 = load i8, ptr %2042, align 1, !tbaa !5
  %2044 = zext i8 %2043 to i64
  %2045 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2044
  %2046 = load i64, ptr %2045, align 8, !tbaa !14
  %2047 = extractvalue { i32, i1 } %2001, 0, !nosanitize !46
  %2048 = sext i32 %2047 to i64
  %2049 = getelementptr inbounds i8, ptr %2, i64 %2048
  %2050 = load i8, ptr %2049, align 1, !tbaa !5
  %2051 = zext i8 %2050 to i64
  %2052 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2051
  %2053 = load i64, ptr %2052, align 8, !tbaa !14
  %2054 = sext i32 %1991 to i64
  %2055 = getelementptr i8, ptr %2, i64 %2054
  %2056 = getelementptr i8, ptr %2055, i64 -3
  %2057 = load i8, ptr %2056, align 1, !tbaa !5
  %2058 = zext i8 %2057 to i64
  %2059 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2058
  %2060 = load i64, ptr %2059, align 8, !tbaa !14
  %2061 = extractvalue { i32, i1 } %1998, 0, !nosanitize !46
  %2062 = sext i32 %2061 to i64
  %2063 = getelementptr inbounds i8, ptr %2, i64 %2062
  %2064 = load i8, ptr %2063, align 1, !tbaa !5
  %2065 = zext i8 %2064 to i64
  %2066 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2065
  %2067 = load i64, ptr %2066, align 8, !tbaa !14
  %2068 = extractvalue { i32, i1 } %1995, 0, !nosanitize !46
  %2069 = sext i32 %2068 to i64
  %2070 = getelementptr inbounds i8, ptr %2, i64 %2069
  %2071 = load i8, ptr %2070, align 1, !tbaa !5
  %2072 = zext i8 %2071 to i64
  %2073 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2072
  %2074 = load i64, ptr %2073, align 8, !tbaa !14
  %2075 = and i64 %2074, 255
  %2076 = lshr i64 %1990, %2075
  %2077 = or i64 %2076, %2074
  %2078 = and i64 %2067, 255
  %2079 = lshr i64 %2077, %2078
  %2080 = or i64 %2079, %2067
  %2081 = and i64 %2060, 255
  %2082 = lshr i64 %2080, %2081
  %2083 = or i64 %2082, %2060
  %2084 = and i64 %2053, 255
  %2085 = lshr i64 %2083, %2084
  %2086 = or i64 %2085, %2053
  %2087 = and i64 %2046, 255
  %2088 = lshr i64 %2086, %2087
  %2089 = or i64 %2088, %2046
  %2090 = and i64 %2039, 255
  %2091 = lshr i64 %2089, %2090
  %2092 = or i64 %2091, %2039
  %2093 = and i64 %2032, 255
  %2094 = lshr i64 %2092, %2093
  %2095 = or i64 %2094, %2032
  %2096 = and i64 %2025, 255
  %2097 = lshr i64 %2095, %2096
  %2098 = or i64 %2097, %2025
  %2099 = extractvalue { i32, i1 } %2016, 0, !nosanitize !46
  %2100 = sext i32 %2099 to i64
  %2101 = getelementptr inbounds i8, ptr %2, i64 %2100
  %2102 = load i8, ptr %2101, align 1, !tbaa !5
  %2103 = zext i8 %2102 to i64
  %2104 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2103
  %2105 = load i64, ptr %2104, align 8, !tbaa !14
  %2106 = and i64 %2105, 255
  %2107 = lshr i64 %2098, %2106
  %2108 = or i64 %2107, %2105
  %2109 = add i64 %2025, %1988
  %2110 = add i64 %2109, %2032
  %2111 = add i64 %2110, %2039
  %2112 = add i64 %2111, %2046
  %2113 = add i64 %2112, %2053
  %2114 = add i64 %2113, %2060
  %2115 = add i64 %2114, %2067
  %2116 = add i64 %2115, %2074
  %2117 = add i64 %2116, %2105
  %2118 = and i64 %2117, 255
  %2119 = lshr i64 %2118, 3
  %2120 = sub nsw i64 64, %2118
  %2121 = lshr i64 %2108, %2120
  %2122 = and i64 %2117, 7
  store i64 %2121, ptr %1989, align 1, !tbaa !14
  %2123 = getelementptr inbounds nuw i8, ptr %1989, i64 %2119
  br label %2124

2124:                                             ; preds = %2018, %1987
  %2125 = phi i64 [ %1988, %1987 ], [ %2122, %2018 ]
  %2126 = phi ptr [ %1989, %1987 ], [ %2123, %2018 ]
  %2127 = phi i64 [ %1990, %1987 ], [ %2108, %2018 ]
  %2128 = phi i32 [ %1991, %1987 ], [ %2099, %2018 ]
  %2129 = getelementptr i8, ptr %2, i64 -18
  %2130 = icmp sgt i32 %2128, 0
  br i1 %2130, label %2131, label %.loopexit57

2131:                                             ; preds = %2124
  %2132 = zext nneg i32 %2128 to i64
  %2133 = getelementptr i8, ptr %2, i64 -1
  %2134 = getelementptr i8, ptr %2, i64 -2
  %2135 = getelementptr i8, ptr %2, i64 -3
  %2136 = getelementptr i8, ptr %2, i64 -4
  %2137 = getelementptr i8, ptr %2, i64 -5
  %2138 = getelementptr i8, ptr %2, i64 -6
  %2139 = getelementptr i8, ptr %2, i64 -7
  %2140 = getelementptr i8, ptr %2, i64 -8
  br label %2141

2141:                                             ; preds = %2234, %2131
  %2142 = phi i64 [ %2132, %2131 ], [ %2335, %2234 ]
  %2143 = phi i64 [ %2127, %2131 ], [ %2327, %2234 ]
  %2144 = phi ptr [ %2126, %2131 ], [ %2334, %2234 ]
  %2145 = phi i64 [ %2125, %2131 ], [ %2333, %2234 ]
  %2146 = getelementptr i8, ptr %2133, i64 %2142
  %2147 = load i8, ptr %2146, align 1, !tbaa !5
  %2148 = zext i8 %2147 to i64
  %2149 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2148
  %2150 = load i64, ptr %2149, align 8, !tbaa !14
  %2151 = and i64 %2150, 255
  %2152 = lshr i64 %2143, %2151
  %2153 = or i64 %2152, %2150
  %2154 = add i64 %2150, %2145
  %2155 = getelementptr i8, ptr %2134, i64 %2142
  %2156 = load i8, ptr %2155, align 1, !tbaa !5
  %2157 = zext i8 %2156 to i64
  %2158 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2157
  %2159 = load i64, ptr %2158, align 8, !tbaa !14
  %2160 = and i64 %2159, 255
  %2161 = lshr i64 %2153, %2160
  %2162 = or i64 %2161, %2159
  %2163 = add i64 %2154, %2159
  %2164 = getelementptr i8, ptr %2135, i64 %2142
  %2165 = load i8, ptr %2164, align 1, !tbaa !5
  %2166 = zext i8 %2165 to i64
  %2167 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2166
  %2168 = load i64, ptr %2167, align 8, !tbaa !14
  %2169 = and i64 %2168, 255
  %2170 = lshr i64 %2162, %2169
  %2171 = or i64 %2170, %2168
  %2172 = add i64 %2163, %2168
  %2173 = getelementptr i8, ptr %2136, i64 %2142
  %2174 = load i8, ptr %2173, align 1, !tbaa !5
  %2175 = zext i8 %2174 to i64
  %2176 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2175
  %2177 = load i64, ptr %2176, align 8, !tbaa !14
  %2178 = and i64 %2177, 255
  %2179 = lshr i64 %2171, %2178
  %2180 = or i64 %2179, %2177
  %2181 = add i64 %2172, %2177
  %2182 = getelementptr i8, ptr %2137, i64 %2142
  %2183 = load i8, ptr %2182, align 1, !tbaa !5
  %2184 = zext i8 %2183 to i64
  %2185 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2184
  %2186 = load i64, ptr %2185, align 8, !tbaa !14
  %2187 = and i64 %2186, 255
  %2188 = lshr i64 %2180, %2187
  %2189 = or i64 %2188, %2186
  %2190 = add i64 %2181, %2186
  %2191 = getelementptr i8, ptr %2138, i64 %2142
  %2192 = load i8, ptr %2191, align 1, !tbaa !5
  %2193 = zext i8 %2192 to i64
  %2194 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2193
  %2195 = load i64, ptr %2194, align 8, !tbaa !14
  %2196 = and i64 %2195, 255
  %2197 = lshr i64 %2189, %2196
  %2198 = or i64 %2197, %2195
  %2199 = add i64 %2190, %2195
  %2200 = getelementptr i8, ptr %2139, i64 %2142
  %2201 = load i8, ptr %2200, align 1, !tbaa !5
  %2202 = zext i8 %2201 to i64
  %2203 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2202
  %2204 = load i64, ptr %2203, align 8, !tbaa !14
  %2205 = and i64 %2204, 255
  %2206 = lshr i64 %2198, %2205
  %2207 = or i64 %2206, %2204
  %2208 = add i64 %2199, %2204
  %2209 = getelementptr i8, ptr %2140, i64 %2142
  %2210 = load i8, ptr %2209, align 1, !tbaa !5
  %2211 = zext i8 %2210 to i64
  %2212 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2211
  %2213 = load i64, ptr %2212, align 8, !tbaa !14
  %2214 = and i64 %2213, 255
  %2215 = lshr i64 %2207, %2214
  %2216 = or i64 %2215, %2213
  %2217 = add i64 %2208, %2213
  %2218 = add nsw i64 %2142, -9
  %2219 = getelementptr inbounds i8, ptr %2, i64 %2218
  %2220 = load i8, ptr %2219, align 1, !tbaa !5
  %2221 = zext i8 %2220 to i64
  %2222 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2221
  %2223 = load i64, ptr %2222, align 8, !tbaa !14
  %2224 = and i64 %2223, 255
  %2225 = lshr i64 %2216, %2224
  %2226 = or i64 %2225, %2223
  %2227 = add i64 %2217, %2223
  %2228 = and i64 %2227, 255
  %2229 = sub nsw i64 64, %2228
  %2230 = lshr i64 %2226, %2229
  store i64 %2230, ptr %2144, align 1, !tbaa !14
  %2231 = trunc nsw i64 %2218 to i32
  %2232 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2231, i32 -1)
  %2233 = extractvalue { i32, i1 } %2232, 1, !nosanitize !46
  br i1 %2233, label %.loopexit58, label %2234, !prof !49, !nosanitize !46

2234:                                             ; preds = %2141
  %2235 = lshr i64 %2228, 3
  %2236 = getelementptr inbounds nuw i8, ptr %2144, i64 %2235
  %2237 = and i64 %2227, 7
  %2238 = shl i64 %2142, 32
  %sext42 = add i64 %2238, -68719476736
  %2239 = ashr exact i64 %sext42, 32
  %2240 = getelementptr inbounds i8, ptr %2, i64 %2239
  %2241 = load i8, ptr %2240, align 1, !tbaa !5
  %2242 = zext i8 %2241 to i64
  %2243 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2242
  %2244 = load i64, ptr %2243, align 8, !tbaa !14
  %sext43 = add i64 %2238, -64424509440
  %2245 = ashr exact i64 %sext43, 32
  %2246 = getelementptr inbounds i8, ptr %2, i64 %2245
  %2247 = load i8, ptr %2246, align 1, !tbaa !5
  %2248 = zext i8 %2247 to i64
  %2249 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2248
  %2250 = load i64, ptr %2249, align 8, !tbaa !14
  %sext44 = add i64 %2238, -60129542144
  %2251 = ashr exact i64 %sext44, 32
  %2252 = getelementptr inbounds i8, ptr %2, i64 %2251
  %2253 = load i8, ptr %2252, align 1, !tbaa !5
  %2254 = zext i8 %2253 to i64
  %2255 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2254
  %2256 = load i64, ptr %2255, align 8, !tbaa !14
  %sext45 = add i64 %2238, -55834574848
  %2257 = ashr exact i64 %sext45, 32
  %2258 = getelementptr inbounds i8, ptr %2, i64 %2257
  %2259 = load i8, ptr %2258, align 1, !tbaa !5
  %2260 = zext i8 %2259 to i64
  %2261 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2260
  %2262 = load i64, ptr %2261, align 8, !tbaa !14
  %sext46 = add i64 %2238, -51539607552
  %2263 = ashr exact i64 %sext46, 32
  %2264 = getelementptr inbounds i8, ptr %2, i64 %2263
  %2265 = load i8, ptr %2264, align 1, !tbaa !5
  %2266 = zext i8 %2265 to i64
  %2267 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2266
  %2268 = load i64, ptr %2267, align 8, !tbaa !14
  %sext47 = add i64 %2238, -47244640256
  %2269 = ashr exact i64 %sext47, 32
  %2270 = getelementptr inbounds i8, ptr %2, i64 %2269
  %2271 = load i8, ptr %2270, align 1, !tbaa !5
  %2272 = zext i8 %2271 to i64
  %2273 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2272
  %2274 = load i64, ptr %2273, align 8, !tbaa !14
  %2275 = extractvalue { i32, i1 } %2232, 0, !nosanitize !46
  %2276 = sext i32 %2275 to i64
  %2277 = getelementptr inbounds i8, ptr %2, i64 %2276
  %2278 = load i8, ptr %2277, align 1, !tbaa !5
  %2279 = zext i8 %2278 to i64
  %2280 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2279
  %2281 = load i64, ptr %2280, align 8, !tbaa !14
  %2282 = and i64 %2274, 255
  %2283 = lshr i64 %2281, %2282
  %2284 = or i64 %2283, %2274
  %2285 = and i64 %2268, 255
  %2286 = lshr i64 %2284, %2285
  %2287 = or i64 %2286, %2268
  %2288 = and i64 %2262, 255
  %2289 = lshr i64 %2287, %2288
  %2290 = or i64 %2289, %2262
  %2291 = and i64 %2256, 255
  %2292 = lshr i64 %2290, %2291
  %2293 = or i64 %2292, %2256
  %2294 = and i64 %2250, 255
  %2295 = lshr i64 %2293, %2294
  %2296 = or i64 %2295, %2250
  %2297 = and i64 %2244, 255
  %2298 = lshr i64 %2296, %2297
  %2299 = or i64 %2298, %2244
  %sext48 = add i64 %2238, -73014444032
  %2300 = ashr exact i64 %sext48, 32
  %2301 = getelementptr inbounds i8, ptr %2, i64 %2300
  %2302 = load i8, ptr %2301, align 1, !tbaa !5
  %2303 = zext i8 %2302 to i64
  %2304 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2303
  %2305 = load i64, ptr %2304, align 8, !tbaa !14
  %2306 = and i64 %2305, 255
  %2307 = lshr i64 %2299, %2306
  %2308 = or i64 %2307, %2305
  %2309 = getelementptr i8, ptr %2129, i64 %2142
  %2310 = load i8, ptr %2309, align 1, !tbaa !5
  %2311 = zext i8 %2310 to i64
  %2312 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2311
  %2313 = load i64, ptr %2312, align 8, !tbaa !14
  %2314 = and i64 %2313, 255
  %2315 = lshr i64 %2308, %2314
  %2316 = add i64 %2250, %2244
  %2317 = add i64 %2316, %2256
  %2318 = add i64 %2317, %2262
  %2319 = add i64 %2318, %2268
  %2320 = add i64 %2319, %2274
  %2321 = add i64 %2320, %2281
  %2322 = add i64 %2321, %2305
  %2323 = add i64 %2322, %2313
  %2324 = and i64 %2323, 255
  %2325 = lshr i64 %2226, %2324
  %2326 = or i64 %2325, %2315
  %2327 = or i64 %2326, %2313
  %2328 = add i64 %2323, %2237
  %2329 = and i64 %2328, 255
  %2330 = lshr i64 %2329, 3
  %2331 = sub nsw i64 64, %2329
  %2332 = lshr i64 %2327, %2331
  %2333 = and i64 %2328, 7
  store i64 %2332, ptr %2236, align 1, !tbaa !14
  %2334 = getelementptr inbounds nuw i8, ptr %2236, i64 %2330
  %2335 = add nsw i64 %2142, -18
  %2336 = icmp sgt i64 %2142, 18
  br i1 %2336, label %2141, label %.loopexit57, !llvm.loop !76

.loopexit57:                                      ; preds = %1822, %1446, %1100, %786, %497, %2234, %211, %2124, %1721, %1355, %1019, %716, %426, %150
  %2337 = phi i64 [ %151, %150 ], [ %2125, %2124 ], [ %427, %426 ], [ %717, %716 ], [ %1020, %1019 ], [ %1356, %1355 ], [ %1722, %1721 ], [ %557, %497 ], [ %845, %786 ], [ %1170, %1100 ], [ %1526, %1446 ], [ %263, %211 ], [ %2333, %2234 ], [ %1912, %1822 ]
  %2338 = phi ptr [ %152, %150 ], [ %2126, %2124 ], [ %428, %426 ], [ %718, %716 ], [ %1021, %1019 ], [ %1357, %1355 ], [ %1723, %1721 ], [ %558, %497 ], [ %846, %786 ], [ %1171, %1100 ], [ %1527, %1446 ], [ %266, %211 ], [ %2334, %2234 ], [ %1913, %1822 ]
  %2339 = phi i64 [ %153, %150 ], [ %2127, %2124 ], [ %429, %426 ], [ %719, %716 ], [ %1022, %1019 ], [ %1358, %1355 ], [ %1724, %1721 ], [ %551, %497 ], [ %839, %786 ], [ %1164, %1100 ], [ %1520, %1446 ], [ %257, %211 ], [ %2327, %2234 ], [ %1906, %1822 ]
  %2340 = lshr i64 %2339, 1
  %2341 = or disjoint i64 %2340, -9223372036854775808
  %2342 = add nuw nsw i64 %2337, -9223372036854775807
  %2343 = and i64 %2342, 255
  %2344 = lshr i64 %2343, 3
  %2345 = sub nuw nsw i64 64, %2343
  %2346 = lshr i64 %2341, %2345
  store i64 %2346, ptr %2338, align 1, !tbaa !14
  %2347 = getelementptr inbounds nuw i8, ptr %2338, i64 %2344
  %2348 = icmp ugt ptr %2347, %13
  %2349 = select i1 %2348, ptr %13, ptr %2347
  %2350 = icmp ult ptr %2349, %13
  br i1 %2350, label %2351, label %2359

2351:                                             ; preds = %.loopexit57
  %2352 = and i64 %2342, 7
  %2353 = ptrtoint ptr %2349 to i64
  %2354 = ptrtoint ptr %0 to i64
  %2355 = icmp ne i64 %2352, 0
  %2356 = zext i1 %2355 to i64
  %2357 = sub i64 %2356, %2354
  %2358 = add i64 %2357, %2353
  br label %2359

2359:                                             ; preds = %2351, %.loopexit57, %11, %5
  %2360 = phi i64 [ 0, %11 ], [ 0, %5 ], [ %2358, %2351 ], [ 0, %.loopexit57 ]
  ret i64 %2360
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #14

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define internal fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef range(i64 1, 131073) %4, i32 noundef range(i32 0, 2) %5, ptr noundef %6, i32 noundef %7) unnamed_addr #11 {
  %9 = icmp eq i32 %5, 0
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %1 to i64
  %12 = sub i64 %10, %11
  br i1 %9, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef %1, i64 noundef %12, ptr noundef %3, i64 noundef %4, ptr noundef %6, i32 noundef %7)
  br label %17

15:                                               ; preds = %8
  %16 = tail call fastcc i64 @HUF_compress4X_usingCTable_internal(ptr noundef %1, i64 noundef %12, ptr noundef %3, i64 noundef %4, ptr noundef %6, i32 noundef %7)
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i64 [ %14, %13 ], [ %16, %15 ]
  %19 = icmp ult i64 %18, -119
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = icmp eq i64 %18, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 %18
  %24 = ptrtoint ptr %23 to i64
  %25 = ptrtoint ptr %0 to i64
  %26 = sub i64 %24, %25
  %27 = add nsw i64 %4, -1
  %28 = icmp ult i64 %26, %27
  %29 = select i1 %28, i64 %26, i64 0
  br label %30

30:                                               ; preds = %22, %20, %17
  %31 = phi i64 [ %18, %17 ], [ 0, %20 ], [ %29, %22 ]
  ret i64 %31
}

declare i64 @HIST_count_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v2i32(<2 x i32>) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind memory(write, argmem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind memory(write, argmem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10, !11}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = distinct !{!12, !9, !10, !11}
!13 = distinct !{!13, !9, !11, !10}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !6, i64 0}
!21 = !{!22}
!22 = distinct !{!22, !23}
!23 = distinct !{!23, !"LVerDomain"}
!24 = !{!25}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !9, !10, !11}
!27 = distinct !{!27, !9, !10, !11}
!28 = distinct !{!28, !9, !10}
!29 = distinct !{!29, !9, !10, !11}
!30 = distinct !{!30, !9, !11, !10}
!31 = !{!32, !32, i64 0}
!32 = !{!"short", !6, i64 0}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = !{!37, !32, i64 0}
!37 = !{!"", !32, i64 0, !32, i64 2}
!38 = distinct !{!38, !9}
!39 = !{!37, !32, i64 2}
!40 = distinct !{!40, !9}
!41 = !{!42, !20, i64 0}
!42 = !{!"nodeElt_s", !20, i64 0, !32, i64 4, !6, i64 6, !6, i64 7}
!43 = !{!42, !6, i64 6}
!44 = distinct !{!44, !9}
!45 = distinct !{!45, !9}
!46 = !{}
!47 = !{!"branch_weights", i32 127, i32 134217473}
!48 = distinct !{!48, !9}
!49 = !{!"branch_weights", i32 1, i32 1048575}
!50 = !{!42, !32, i64 4}
!51 = distinct !{!51, !9}
!52 = !{!42, !6, i64 7}
!53 = distinct !{!53, !18, !10, !11}
!54 = distinct !{!54, !9}
!55 = distinct !{!55, !9}
!56 = distinct !{!56, !9}
!57 = !{!"branch_weights", i32 1, i32 127}
!58 = distinct !{!58, !9}
!59 = distinct !{!59, !9}
!60 = distinct !{!60, !9}
!61 = distinct !{!61, !9}
!62 = distinct !{!62, !9}
!63 = distinct !{!63, !9}
!64 = distinct !{!64, !9}
!65 = distinct !{!65, !9}
!66 = distinct !{!66, !9}
!67 = distinct !{!67, !9}
!68 = distinct !{!68, !18}
!69 = distinct !{!69, !9}
!70 = distinct !{!70, !18}
!71 = distinct !{!71, !9}
!72 = distinct !{!72, !9, !10, !11}
!73 = distinct !{!73, !9, !10}
!74 = distinct !{!74, !9, !10, !11}
!75 = distinct !{!75, !9, !11, !10}
!76 = distinct !{!76, !9}
!77 = !{!"branch_weights", i32 1048575, i32 1}
!78 = distinct !{!78, !9}
!79 = distinct !{!79, !9, !10, !11}
!80 = distinct !{!80, !9, !11, !10}
!81 = distinct !{!81, !9, !10, !11}
!82 = distinct !{!82, !9, !11, !10}
!83 = distinct !{!83, !9}
!84 = distinct !{!84, !9, !10, !11}
!85 = distinct !{!85, !9, !10}
!86 = distinct !{!86, !9, !10, !11}
!87 = distinct !{!87, !9, !10}
!88 = distinct !{!88, !9, !10, !11}
!89 = distinct !{!89, !9, !10}
!90 = distinct !{!90, !9}
!91 = distinct !{!91, !9}
!92 = distinct !{!92, !9}
!93 = distinct !{!93, !9}
