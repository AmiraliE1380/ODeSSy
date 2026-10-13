; ModuleID = 'results/static/pipeline_cost_par/ir/zstd_huf_compress.thorough.mid.ll'
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
  br label %2317

11:                                               ; preds = %6
  %12 = load i64, ptr %4, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 255
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %16 = icmp ult i64 %1, 8
  br i1 %16, label %2317, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %19 = getelementptr inbounds i8, ptr %18, i64 -8
  %20 = icmp eq i64 %1, 8
  br i1 %20, label %2317, label %21

21:                                               ; preds = %17
  %22 = and i64 %12, 255
  %23 = mul i64 %22, %3
  %24 = lshr i64 %23, 3
  %25 = add nuw nsw i64 %24, 8
  %26 = icmp ult i64 %1, %25
  %27 = icmp samesign ugt i32 %14, 11
  %28 = select i1 %26, i1 true, i1 %27
  %29 = trunc i64 %3 to i32
  br i1 %28, label %30, label %271

30:                                               ; preds = %21
  %31 = srem i32 %29, 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %87

33:                                               ; preds = %30
  %34 = icmp eq i32 %31, 1
  br i1 %34, label %.thread, label %36

35:                                               ; preds = %100, %97, %94
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

36:                                               ; preds = %33
  %37 = and i32 %31, 1
  %38 = shl i64 %3, 32
  %sext176 = add i64 %38, -4294967296
  %39 = ashr exact i64 %sext176, 32
  %40 = getelementptr inbounds i8, ptr %2, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !5
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !14
  %45 = shl i64 %3, 32
  %sext177 = add i64 %45, -8589934592
  %46 = ashr exact i64 %sext177, 32
  %47 = getelementptr inbounds i8, ptr %2, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !5
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !14
  %52 = add i64 %44, %51
  %53 = and i64 %44, -256
  %54 = and i64 %51, 255
  %55 = lshr i64 %53, %54
  %56 = and i64 %51, -256
  %57 = or i64 %55, %56
  %58 = add i64 %3, -2
  %59 = icmp eq i32 %37, 0
  br i1 %59, label %75, label %.thread

.thread:                                          ; preds = %33, %36
  %60 = phi i64 [ %52, %36 ], [ 0, %33 ]
  %61 = phi i64 [ %57, %36 ], [ 0, %33 ]
  %62 = phi i64 [ %58, %36 ], [ %3, %33 ]
  %63 = shl i64 %62, 32
  %sext178 = add i64 %63, -4294967296
  %64 = ashr exact i64 %sext178, 32
  %65 = getelementptr inbounds i8, ptr %2, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !5
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %67
  %69 = load i64, ptr %68, align 8, !tbaa !14
  %70 = and i64 %69, 255
  %71 = lshr i64 %61, %70
  %72 = and i64 %69, -256
  %73 = or i64 %71, %72
  %74 = add i64 %69, %60
  br label %75

75:                                               ; preds = %.thread, %36
  %76 = phi i64 [ %57, %36 ], [ %73, %.thread ]
  %77 = phi i64 [ %52, %36 ], [ %74, %.thread ]
  %78 = sub nsw i32 %29, %31
  %79 = and i64 %77, 255
  %80 = lshr i64 %79, 3
  %81 = sub nsw i64 64, %79
  %82 = lshr i64 %76, %81
  %83 = and i64 %77, 7
  store i64 %82, ptr %0, align 1, !tbaa !14
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 %80
  %85 = icmp ugt ptr %84, %19
  %86 = select i1 %85, ptr %19, ptr %84
  br label %87

87:                                               ; preds = %75, %30
  %88 = phi i64 [ 0, %30 ], [ %83, %75 ]
  %89 = phi ptr [ %0, %30 ], [ %86, %75 ]
  %90 = phi i64 [ 0, %30 ], [ %76, %75 ]
  %91 = phi i32 [ %29, %30 ], [ %78, %75 ]
  %92 = and i32 %91, 7
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %157, label %94

94:                                               ; preds = %87
  %95 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %91, i32 -2)
  %96 = extractvalue { i32, i1 } %95, 1, !nosanitize !46
  br i1 %96, label %35, label %97, !prof !49, !nosanitize !46

97:                                               ; preds = %94
  %98 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %91, i32 -3)
  %99 = extractvalue { i32, i1 } %98, 1, !nosanitize !46
  br i1 %99, label %35, label %100, !prof !49, !nosanitize !46

100:                                              ; preds = %97
  %101 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %91, i32 -4)
  %102 = extractvalue { i32, i1 } %101, 1, !nosanitize !46
  br i1 %102, label %35, label %103, !prof !49, !nosanitize !46

103:                                              ; preds = %100
  %104 = extractvalue { i32, i1 } %98, 0, !nosanitize !46
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, ptr %2, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !5
  %108 = zext i8 %107 to i64
  %109 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %108
  %110 = load i64, ptr %109, align 8, !tbaa !14
  %111 = extractvalue { i32, i1 } %95, 0, !nosanitize !46
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, ptr %2, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !5
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %115
  %117 = load i64, ptr %116, align 8, !tbaa !14
  %118 = sext i32 %91 to i64
  %119 = getelementptr i8, ptr %2, i64 %118
  %120 = getelementptr i8, ptr %119, i64 -1
  %121 = load i8, ptr %120, align 1, !tbaa !5
  %122 = zext i8 %121 to i64
  %123 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %122
  %124 = load i64, ptr %123, align 8, !tbaa !14
  %125 = and i64 %124, 255
  %126 = lshr i64 %90, %125
  %127 = or i64 %126, %124
  %128 = and i64 %117, 255
  %129 = lshr i64 %127, %128
  %130 = or i64 %129, %117
  %131 = and i64 %110, 255
  %132 = lshr i64 %130, %131
  %133 = or i64 %132, %110
  %134 = extractvalue { i32, i1 } %101, 0, !nosanitize !46
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, ptr %2, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !5
  %138 = zext i8 %137 to i64
  %139 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %138
  %140 = load i64, ptr %139, align 8, !tbaa !14
  %141 = and i64 %140, 255
  %142 = lshr i64 %133, %141
  %143 = and i64 %140, -256
  %144 = or i64 %142, %143
  %145 = add i64 %110, %88
  %146 = add i64 %145, %117
  %147 = add i64 %146, %124
  %148 = add i64 %147, %140
  %149 = and i64 %148, 255
  %150 = lshr i64 %149, 3
  %151 = sub nsw i64 64, %149
  %152 = lshr i64 %144, %151
  %153 = and i64 %148, 7
  store i64 %152, ptr %89, align 1, !tbaa !14
  %154 = getelementptr inbounds nuw i8, ptr %89, i64 %150
  %155 = icmp ugt ptr %154, %19
  %156 = select i1 %155, ptr %19, ptr %154
  br label %157

157:                                              ; preds = %103, %87
  %158 = phi i64 [ %88, %87 ], [ %153, %103 ]
  %159 = phi ptr [ %89, %87 ], [ %156, %103 ]
  %160 = phi i64 [ %90, %87 ], [ %144, %103 ]
  %161 = phi i32 [ %91, %87 ], [ %134, %103 ]
  %162 = getelementptr i8, ptr %2, i64 -8
  %163 = icmp sgt i32 %161, 0
  br i1 %163, label %164, label %.loopexit

164:                                              ; preds = %157
  %165 = zext nneg i32 %161 to i64
  %166 = getelementptr i8, ptr %2, i64 -1
  %167 = getelementptr i8, ptr %2, i64 -2
  %168 = getelementptr i8, ptr %2, i64 -3
  br label %169

169:                                              ; preds = %169, %164
  %170 = phi i64 [ %165, %164 ], [ %269, %169 ]
  %171 = phi i64 [ %160, %164 ], [ %259, %169 ]
  %172 = phi ptr [ %159, %164 ], [ %268, %169 ]
  %173 = phi i64 [ %158, %164 ], [ %265, %169 ]
  %174 = getelementptr i8, ptr %166, i64 %170
  %175 = load i8, ptr %174, align 1, !tbaa !5
  %176 = zext i8 %175 to i64
  %177 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %176
  %178 = load i64, ptr %177, align 8, !tbaa !14
  %179 = and i64 %178, 255
  %180 = lshr i64 %171, %179
  %181 = or i64 %180, %178
  %182 = add i64 %178, %173
  %183 = getelementptr i8, ptr %167, i64 %170
  %184 = load i8, ptr %183, align 1, !tbaa !5
  %185 = zext i8 %184 to i64
  %186 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %185
  %187 = load i64, ptr %186, align 8, !tbaa !14
  %188 = and i64 %187, 255
  %189 = lshr i64 %181, %188
  %190 = or i64 %189, %187
  %191 = add i64 %182, %187
  %192 = getelementptr i8, ptr %168, i64 %170
  %193 = load i8, ptr %192, align 1, !tbaa !5
  %194 = zext i8 %193 to i64
  %195 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %194
  %196 = load i64, ptr %195, align 8, !tbaa !14
  %197 = and i64 %196, 255
  %198 = lshr i64 %190, %197
  %199 = or i64 %198, %196
  %200 = add i64 %191, %196
  %201 = getelementptr i8, ptr %2, i64 %170
  %202 = getelementptr i8, ptr %201, i64 -4
  %203 = load i8, ptr %202, align 1, !tbaa !5
  %204 = zext i8 %203 to i64
  %205 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %204
  %206 = load i64, ptr %205, align 8, !tbaa !14
  %207 = and i64 %206, 255
  %208 = lshr i64 %199, %207
  %209 = and i64 %206, -256
  %210 = or i64 %208, %209
  %211 = add i64 %200, %206
  %212 = and i64 %211, 255
  %213 = lshr i64 %212, 3
  %214 = sub nsw i64 64, %212
  %215 = lshr i64 %210, %214
  %216 = and i64 %211, 7
  store i64 %215, ptr %172, align 1, !tbaa !14
  %217 = getelementptr inbounds nuw i8, ptr %172, i64 %213
  %218 = icmp ugt ptr %217, %19
  %219 = select i1 %218, ptr %19, ptr %217
  %220 = shl i64 %170, 32
  %sext50 = add i64 %220, -25769803776
  %221 = ashr exact i64 %sext50, 32
  %222 = getelementptr inbounds i8, ptr %2, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !5
  %224 = zext i8 %223 to i64
  %225 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %224
  %226 = load i64, ptr %225, align 8, !tbaa !14
  %sext51 = add i64 %220, -21474836480
  %227 = ashr exact i64 %sext51, 32
  %228 = getelementptr inbounds i8, ptr %2, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !5
  %230 = zext i8 %229 to i64
  %231 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %230
  %232 = load i64, ptr %231, align 8, !tbaa !14
  %233 = add i64 %232, %226
  %234 = and i64 %226, 255
  %235 = lshr i64 %232, %234
  %236 = or i64 %235, %226
  %sext52 = add i64 %220, -30064771072
  %237 = ashr exact i64 %sext52, 32
  %238 = getelementptr inbounds i8, ptr %2, i64 %237
  %239 = load i8, ptr %238, align 1, !tbaa !5
  %240 = zext i8 %239 to i64
  %241 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %240
  %242 = load i64, ptr %241, align 8, !tbaa !14
  %243 = and i64 %242, 255
  %244 = lshr i64 %236, %243
  %245 = or i64 %244, %242
  %246 = add i64 %233, %242
  %247 = getelementptr i8, ptr %162, i64 %170
  %248 = load i8, ptr %247, align 1, !tbaa !5
  %249 = zext i8 %248 to i64
  %250 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %249
  %251 = load i64, ptr %250, align 8, !tbaa !14
  %252 = and i64 %251, 255
  %253 = lshr i64 %245, %252
  %254 = and i64 %251, -256
  %255 = or i64 %253, %254
  %256 = add i64 %246, %251
  %257 = and i64 %256, 255
  %258 = lshr i64 %210, %257
  %259 = or i64 %255, %258
  %260 = add i64 %256, %216
  %261 = and i64 %260, 255
  %262 = lshr i64 %261, 3
  %263 = sub nsw i64 64, %261
  %264 = lshr i64 %259, %263
  %265 = and i64 %260, 7
  store i64 %264, ptr %219, align 1, !tbaa !14
  %266 = getelementptr inbounds nuw i8, ptr %219, i64 %262
  %267 = icmp ugt ptr %266, %19
  %268 = select i1 %267, ptr %19, ptr %266
  %269 = add nsw i64 %170, -8
  %270 = icmp samesign ugt i64 %170, 8
  br i1 %270, label %169, label %.loopexit, !llvm.loop !76

271:                                              ; preds = %21
  switch i32 %14, label %1882 [
    i32 11, label %272
    i32 10, label %555
    i32 9, label %835
    i32 8, label %1152
    i32 7, label %1500
  ]

272:                                              ; preds = %271
  %273 = srem i32 %29, 5
  %274 = icmp sgt i32 %273, 0
  br i1 %274, label %275, label %340

275:                                              ; preds = %272
  %276 = and i32 %273, 1
  %277 = icmp eq i32 %273, 1
  br i1 %277, label %.thread53, label %278

278:                                              ; preds = %275
  %279 = and i32 %273, 2147483646
  br label %280

280:                                              ; preds = %280, %278
  %281 = phi i32 [ %29, %278 ], [ %297, %280 ]
  %282 = phi i64 [ 0, %278 ], [ %307, %280 ]
  %283 = phi i64 [ 0, %278 ], [ %308, %280 ]
  %284 = phi i32 [ 0, %278 ], [ %309, %280 ]
  %285 = add i32 %281, -1
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, ptr %2, i64 %286
  %288 = load i8, ptr %287, align 1, !tbaa !5
  %289 = zext i8 %288 to i64
  %290 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %289
  %291 = load i64, ptr %290, align 8, !tbaa !14
  %292 = and i64 %291, 255
  %293 = lshr i64 %282, %292
  %294 = and i64 %291, -256
  %295 = or i64 %293, %294
  %296 = add i64 %291, %283
  %297 = add i32 %281, -2
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, ptr %2, i64 %298
  %300 = load i8, ptr %299, align 1, !tbaa !5
  %301 = zext i8 %300 to i64
  %302 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %301
  %303 = load i64, ptr %302, align 8, !tbaa !14
  %304 = and i64 %303, 255
  %305 = lshr i64 %295, %304
  %306 = and i64 %303, -256
  %307 = or i64 %305, %306
  %308 = add i64 %296, %303
  %309 = add i32 %284, 2
  %310 = icmp eq i32 %309, %279
  br i1 %310, label %312, label %280, !llvm.loop !77

311:                                              ; preds = %359, %356, %353, %350, %347
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

312:                                              ; preds = %280
  %313 = sub i32 %29, %279
  %314 = icmp eq i32 %276, 0
  br i1 %314, label %330, label %.thread53

.thread53:                                        ; preds = %275, %312
  %315 = phi i64 [ %308, %312 ], [ 0, %275 ]
  %316 = phi i64 [ %307, %312 ], [ 0, %275 ]
  %317 = phi i32 [ %313, %312 ], [ %29, %275 ]
  %318 = add i32 %317, -1
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, ptr %2, i64 %319
  %321 = load i8, ptr %320, align 1, !tbaa !5
  %322 = zext i8 %321 to i64
  %323 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %322
  %324 = load i64, ptr %323, align 8, !tbaa !14
  %325 = and i64 %324, 255
  %326 = lshr i64 %316, %325
  %327 = and i64 %324, -256
  %328 = or i64 %326, %327
  %329 = add i64 %324, %315
  br label %330

330:                                              ; preds = %.thread53, %312
  %331 = phi i64 [ %307, %312 ], [ %328, %.thread53 ]
  %332 = phi i64 [ %308, %312 ], [ %329, %.thread53 ]
  %333 = sub nsw i32 %29, %273
  %334 = and i64 %332, 255
  %335 = lshr i64 %334, 3
  %336 = sub nsw i64 64, %334
  %337 = lshr i64 %331, %336
  %338 = and i64 %332, 7
  store i64 %337, ptr %0, align 1, !tbaa !14
  %339 = getelementptr inbounds nuw i8, ptr %0, i64 %335
  br label %340

340:                                              ; preds = %330, %272
  %341 = phi i64 [ %338, %330 ], [ 0, %272 ]
  %342 = phi ptr [ %339, %330 ], [ %0, %272 ]
  %343 = phi i64 [ %331, %330 ], [ 0, %272 ]
  %344 = phi i32 [ %333, %330 ], [ %29, %272 ]
  %345 = srem i32 %344, 10
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %425, label %347

347:                                              ; preds = %340
  %348 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %344, i32 -1)
  %349 = extractvalue { i32, i1 } %348, 1, !nosanitize !46
  br i1 %349, label %311, label %350, !prof !49, !nosanitize !46

350:                                              ; preds = %347
  %351 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %344, i32 -2)
  %352 = extractvalue { i32, i1 } %351, 1, !nosanitize !46
  br i1 %352, label %311, label %353, !prof !49, !nosanitize !46

353:                                              ; preds = %350
  %354 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %344, i32 -3)
  %355 = extractvalue { i32, i1 } %354, 1, !nosanitize !46
  br i1 %355, label %311, label %356, !prof !49, !nosanitize !46

356:                                              ; preds = %353
  %357 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %344, i32 -4)
  %358 = extractvalue { i32, i1 } %357, 1, !nosanitize !46
  br i1 %358, label %311, label %359, !prof !49, !nosanitize !46

359:                                              ; preds = %356
  %360 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %344, i32 -5)
  %361 = extractvalue { i32, i1 } %360, 1, !nosanitize !46
  br i1 %361, label %311, label %362, !prof !49, !nosanitize !46

362:                                              ; preds = %359
  %363 = extractvalue { i32, i1 } %357, 0, !nosanitize !46
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i8, ptr %2, i64 %364
  %366 = load i8, ptr %365, align 1, !tbaa !5
  %367 = zext i8 %366 to i64
  %368 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %367
  %369 = load i64, ptr %368, align 8, !tbaa !14
  %370 = extractvalue { i32, i1 } %354, 0, !nosanitize !46
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, ptr %2, i64 %371
  %373 = load i8, ptr %372, align 1, !tbaa !5
  %374 = zext i8 %373 to i64
  %375 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %374
  %376 = load i64, ptr %375, align 8, !tbaa !14
  %377 = extractvalue { i32, i1 } %351, 0, !nosanitize !46
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8, ptr %2, i64 %378
  %380 = load i8, ptr %379, align 1, !tbaa !5
  %381 = zext i8 %380 to i64
  %382 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %381
  %383 = load i64, ptr %382, align 8, !tbaa !14
  %384 = extractvalue { i32, i1 } %348, 0, !nosanitize !46
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8, ptr %2, i64 %385
  %387 = load i8, ptr %386, align 1, !tbaa !5
  %388 = zext i8 %387 to i64
  %389 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %388
  %390 = load i64, ptr %389, align 8, !tbaa !14
  %391 = and i64 %390, 255
  %392 = lshr i64 %343, %391
  %393 = or i64 %392, %390
  %394 = and i64 %383, 255
  %395 = lshr i64 %393, %394
  %396 = or i64 %395, %383
  %397 = and i64 %376, 255
  %398 = lshr i64 %396, %397
  %399 = or i64 %398, %376
  %400 = and i64 %369, 255
  %401 = lshr i64 %399, %400
  %402 = or i64 %401, %369
  %403 = extractvalue { i32, i1 } %360, 0, !nosanitize !46
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8, ptr %2, i64 %404
  %406 = load i8, ptr %405, align 1, !tbaa !5
  %407 = zext i8 %406 to i64
  %408 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %407
  %409 = load i64, ptr %408, align 8, !tbaa !14
  %410 = and i64 %409, 255
  %411 = lshr i64 %402, %410
  %412 = and i64 %409, -256
  %413 = or i64 %411, %412
  %414 = add i64 %369, %341
  %415 = add i64 %414, %376
  %416 = add i64 %415, %383
  %417 = add i64 %416, %390
  %418 = add i64 %417, %409
  %419 = and i64 %418, 255
  %420 = lshr i64 %419, 3
  %421 = sub nsw i64 64, %419
  %422 = lshr i64 %413, %421
  %423 = and i64 %418, 7
  store i64 %422, ptr %342, align 1, !tbaa !14
  %424 = getelementptr inbounds nuw i8, ptr %342, i64 %420
  br label %425

425:                                              ; preds = %362, %340
  %426 = phi i64 [ %341, %340 ], [ %423, %362 ]
  %427 = phi ptr [ %342, %340 ], [ %424, %362 ]
  %428 = phi i64 [ %343, %340 ], [ %413, %362 ]
  %429 = phi i32 [ %344, %340 ], [ %403, %362 ]
  %430 = getelementptr i8, ptr %2, i64 -10
  %431 = icmp sgt i32 %429, 0
  br i1 %431, label %432, label %.loopexit

432:                                              ; preds = %425
  %433 = zext nneg i32 %429 to i64
  %434 = getelementptr i8, ptr %2, i64 -1
  %435 = getelementptr i8, ptr %2, i64 -2
  %436 = getelementptr i8, ptr %2, i64 -3
  %437 = getelementptr i8, ptr %2, i64 -4
  br label %438

438:                                              ; preds = %438, %432
  %439 = phi i64 [ %433, %432 ], [ %553, %438 ]
  %440 = phi i64 [ %428, %432 ], [ %545, %438 ]
  %441 = phi ptr [ %427, %432 ], [ %552, %438 ]
  %442 = phi i64 [ %426, %432 ], [ %551, %438 ]
  %443 = getelementptr i8, ptr %434, i64 %439
  %444 = load i8, ptr %443, align 1, !tbaa !5
  %445 = zext i8 %444 to i64
  %446 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %445
  %447 = load i64, ptr %446, align 8, !tbaa !14
  %448 = and i64 %447, 255
  %449 = lshr i64 %440, %448
  %450 = or i64 %449, %447
  %451 = add i64 %447, %442
  %452 = getelementptr i8, ptr %435, i64 %439
  %453 = load i8, ptr %452, align 1, !tbaa !5
  %454 = zext i8 %453 to i64
  %455 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %454
  %456 = load i64, ptr %455, align 8, !tbaa !14
  %457 = and i64 %456, 255
  %458 = lshr i64 %450, %457
  %459 = or i64 %458, %456
  %460 = add i64 %451, %456
  %461 = getelementptr i8, ptr %436, i64 %439
  %462 = load i8, ptr %461, align 1, !tbaa !5
  %463 = zext i8 %462 to i64
  %464 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %463
  %465 = load i64, ptr %464, align 8, !tbaa !14
  %466 = and i64 %465, 255
  %467 = lshr i64 %459, %466
  %468 = or i64 %467, %465
  %469 = add i64 %460, %465
  %470 = getelementptr i8, ptr %437, i64 %439
  %471 = load i8, ptr %470, align 1, !tbaa !5
  %472 = zext i8 %471 to i64
  %473 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %472
  %474 = load i64, ptr %473, align 8, !tbaa !14
  %475 = and i64 %474, 255
  %476 = lshr i64 %468, %475
  %477 = or i64 %476, %474
  %478 = add i64 %469, %474
  %479 = getelementptr i8, ptr %2, i64 %439
  %480 = getelementptr i8, ptr %479, i64 -5
  %481 = load i8, ptr %480, align 1, !tbaa !5
  %482 = zext i8 %481 to i64
  %483 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %482
  %484 = load i64, ptr %483, align 8, !tbaa !14
  %485 = and i64 %484, 255
  %486 = lshr i64 %477, %485
  %487 = and i64 %484, -256
  %488 = or i64 %486, %487
  %489 = add i64 %478, %484
  %490 = and i64 %489, 255
  %491 = lshr i64 %490, 3
  %492 = sub nsw i64 64, %490
  %493 = lshr i64 %488, %492
  %494 = and i64 %489, 7
  store i64 %493, ptr %441, align 1, !tbaa !14
  %495 = getelementptr inbounds nuw i8, ptr %441, i64 %491
  %496 = shl i64 %439, 32
  %sext38 = add i64 %496, -34359738368
  %497 = ashr exact i64 %sext38, 32
  %498 = getelementptr inbounds i8, ptr %2, i64 %497
  %499 = load i8, ptr %498, align 1, !tbaa !5
  %500 = zext i8 %499 to i64
  %501 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %500
  %502 = load i64, ptr %501, align 8, !tbaa !14
  %sext39 = add i64 %496, -30064771072
  %503 = ashr exact i64 %sext39, 32
  %504 = getelementptr inbounds i8, ptr %2, i64 %503
  %505 = load i8, ptr %504, align 1, !tbaa !5
  %506 = zext i8 %505 to i64
  %507 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %506
  %508 = load i64, ptr %507, align 8, !tbaa !14
  %sext40 = add i64 %496, -25769803776
  %509 = ashr exact i64 %sext40, 32
  %510 = getelementptr inbounds i8, ptr %2, i64 %509
  %511 = load i8, ptr %510, align 1, !tbaa !5
  %512 = zext i8 %511 to i64
  %513 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %512
  %514 = load i64, ptr %513, align 8, !tbaa !14
  %515 = and i64 %508, 255
  %516 = lshr i64 %514, %515
  %517 = or i64 %516, %508
  %518 = and i64 %502, 255
  %519 = lshr i64 %517, %518
  %520 = or i64 %519, %502
  %sext41 = add i64 %496, -38654705664
  %521 = ashr exact i64 %sext41, 32
  %522 = getelementptr inbounds i8, ptr %2, i64 %521
  %523 = load i8, ptr %522, align 1, !tbaa !5
  %524 = zext i8 %523 to i64
  %525 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %524
  %526 = load i64, ptr %525, align 8, !tbaa !14
  %527 = and i64 %526, 255
  %528 = lshr i64 %520, %527
  %529 = or i64 %528, %526
  %530 = getelementptr i8, ptr %430, i64 %439
  %531 = load i8, ptr %530, align 1, !tbaa !5
  %532 = zext i8 %531 to i64
  %533 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %532
  %534 = load i64, ptr %533, align 8, !tbaa !14
  %535 = and i64 %534, 255
  %536 = lshr i64 %529, %535
  %537 = and i64 %534, -256
  %538 = or i64 %536, %537
  %539 = add i64 %508, %502
  %540 = add i64 %539, %514
  %541 = add i64 %540, %526
  %542 = add i64 %541, %534
  %543 = and i64 %542, 255
  %544 = lshr i64 %488, %543
  %545 = or i64 %538, %544
  %546 = add i64 %542, %494
  %547 = and i64 %546, 255
  %548 = lshr i64 %547, 3
  %549 = sub nsw i64 64, %547
  %550 = lshr i64 %545, %549
  %551 = and i64 %546, 7
  store i64 %550, ptr %495, align 1, !tbaa !14
  %552 = getelementptr inbounds nuw i8, ptr %495, i64 %548
  %553 = add nsw i64 %439, -10
  %554 = icmp samesign ugt i64 %439, 10
  br i1 %554, label %438, label %.loopexit, !llvm.loop !76

555:                                              ; preds = %271
  %556 = srem i32 %29, 5
  %557 = icmp sgt i32 %556, 0
  br i1 %557, label %558, label %623

558:                                              ; preds = %555
  %559 = and i32 %556, 1
  %560 = icmp eq i32 %556, 1
  br i1 %560, label %.thread54, label %561

561:                                              ; preds = %558
  %562 = and i32 %556, 2147483646
  br label %563

563:                                              ; preds = %563, %561
  %564 = phi i32 [ %29, %561 ], [ %580, %563 ]
  %565 = phi i64 [ 0, %561 ], [ %590, %563 ]
  %566 = phi i64 [ 0, %561 ], [ %591, %563 ]
  %567 = phi i32 [ 0, %561 ], [ %592, %563 ]
  %568 = add i32 %564, -1
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i8, ptr %2, i64 %569
  %571 = load i8, ptr %570, align 1, !tbaa !5
  %572 = zext i8 %571 to i64
  %573 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %572
  %574 = load i64, ptr %573, align 8, !tbaa !14
  %575 = and i64 %574, 255
  %576 = lshr i64 %565, %575
  %577 = and i64 %574, -256
  %578 = or i64 %576, %577
  %579 = add i64 %574, %566
  %580 = add i32 %564, -2
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds i8, ptr %2, i64 %581
  %583 = load i8, ptr %582, align 1, !tbaa !5
  %584 = zext i8 %583 to i64
  %585 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %584
  %586 = load i64, ptr %585, align 8, !tbaa !14
  %587 = and i64 %586, 255
  %588 = lshr i64 %578, %587
  %589 = and i64 %586, -256
  %590 = or i64 %588, %589
  %591 = add i64 %579, %586
  %592 = add i32 %567, 2
  %593 = icmp eq i32 %592, %562
  br i1 %593, label %595, label %563, !llvm.loop !77

594:                                              ; preds = %642, %639, %636, %633, %630
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

595:                                              ; preds = %563
  %596 = sub i32 %29, %562
  %597 = icmp eq i32 %559, 0
  br i1 %597, label %613, label %.thread54

.thread54:                                        ; preds = %558, %595
  %598 = phi i64 [ %591, %595 ], [ 0, %558 ]
  %599 = phi i64 [ %590, %595 ], [ 0, %558 ]
  %600 = phi i32 [ %596, %595 ], [ %29, %558 ]
  %601 = add i32 %600, -1
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds i8, ptr %2, i64 %602
  %604 = load i8, ptr %603, align 1, !tbaa !5
  %605 = zext i8 %604 to i64
  %606 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %605
  %607 = load i64, ptr %606, align 8, !tbaa !14
  %608 = and i64 %607, 255
  %609 = lshr i64 %599, %608
  %610 = and i64 %607, -256
  %611 = or i64 %609, %610
  %612 = add i64 %607, %598
  br label %613

613:                                              ; preds = %.thread54, %595
  %614 = phi i64 [ %590, %595 ], [ %611, %.thread54 ]
  %615 = phi i64 [ %591, %595 ], [ %612, %.thread54 ]
  %616 = sub nsw i32 %29, %556
  %617 = and i64 %615, 255
  %618 = lshr i64 %617, 3
  %619 = sub nsw i64 64, %617
  %620 = lshr i64 %614, %619
  %621 = and i64 %615, 7
  store i64 %620, ptr %0, align 1, !tbaa !14
  %622 = getelementptr inbounds nuw i8, ptr %0, i64 %618
  br label %623

623:                                              ; preds = %613, %555
  %624 = phi i64 [ %621, %613 ], [ 0, %555 ]
  %625 = phi ptr [ %622, %613 ], [ %0, %555 ]
  %626 = phi i64 [ %614, %613 ], [ 0, %555 ]
  %627 = phi i32 [ %616, %613 ], [ %29, %555 ]
  %628 = srem i32 %627, 10
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %707, label %630

630:                                              ; preds = %623
  %631 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %627, i32 -1)
  %632 = extractvalue { i32, i1 } %631, 1, !nosanitize !46
  br i1 %632, label %594, label %633, !prof !49, !nosanitize !46

633:                                              ; preds = %630
  %634 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %627, i32 -2)
  %635 = extractvalue { i32, i1 } %634, 1, !nosanitize !46
  br i1 %635, label %594, label %636, !prof !49, !nosanitize !46

636:                                              ; preds = %633
  %637 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %627, i32 -3)
  %638 = extractvalue { i32, i1 } %637, 1, !nosanitize !46
  br i1 %638, label %594, label %639, !prof !49, !nosanitize !46

639:                                              ; preds = %636
  %640 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %627, i32 -4)
  %641 = extractvalue { i32, i1 } %640, 1, !nosanitize !46
  br i1 %641, label %594, label %642, !prof !49, !nosanitize !46

642:                                              ; preds = %639
  %643 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %627, i32 -5)
  %644 = extractvalue { i32, i1 } %643, 1, !nosanitize !46
  br i1 %644, label %594, label %645, !prof !49, !nosanitize !46

645:                                              ; preds = %642
  %646 = extractvalue { i32, i1 } %640, 0, !nosanitize !46
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds i8, ptr %2, i64 %647
  %649 = load i8, ptr %648, align 1, !tbaa !5
  %650 = zext i8 %649 to i64
  %651 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %650
  %652 = load i64, ptr %651, align 8, !tbaa !14
  %653 = extractvalue { i32, i1 } %637, 0, !nosanitize !46
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds i8, ptr %2, i64 %654
  %656 = load i8, ptr %655, align 1, !tbaa !5
  %657 = zext i8 %656 to i64
  %658 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %657
  %659 = load i64, ptr %658, align 8, !tbaa !14
  %660 = extractvalue { i32, i1 } %634, 0, !nosanitize !46
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds i8, ptr %2, i64 %661
  %663 = load i8, ptr %662, align 1, !tbaa !5
  %664 = zext i8 %663 to i64
  %665 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %664
  %666 = load i64, ptr %665, align 8, !tbaa !14
  %667 = extractvalue { i32, i1 } %631, 0, !nosanitize !46
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds i8, ptr %2, i64 %668
  %670 = load i8, ptr %669, align 1, !tbaa !5
  %671 = zext i8 %670 to i64
  %672 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %671
  %673 = load i64, ptr %672, align 8, !tbaa !14
  %674 = and i64 %673, 255
  %675 = lshr i64 %626, %674
  %676 = or i64 %675, %673
  %677 = and i64 %666, 255
  %678 = lshr i64 %676, %677
  %679 = or i64 %678, %666
  %680 = and i64 %659, 255
  %681 = lshr i64 %679, %680
  %682 = or i64 %681, %659
  %683 = and i64 %652, 255
  %684 = lshr i64 %682, %683
  %685 = or i64 %684, %652
  %686 = extractvalue { i32, i1 } %643, 0, !nosanitize !46
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds i8, ptr %2, i64 %687
  %689 = load i8, ptr %688, align 1, !tbaa !5
  %690 = zext i8 %689 to i64
  %691 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %690
  %692 = load i64, ptr %691, align 8, !tbaa !14
  %693 = and i64 %692, 255
  %694 = lshr i64 %685, %693
  %695 = or i64 %694, %692
  %696 = add i64 %652, %624
  %697 = add i64 %696, %659
  %698 = add i64 %697, %666
  %699 = add i64 %698, %673
  %700 = add i64 %699, %692
  %701 = and i64 %700, 255
  %702 = lshr i64 %701, 3
  %703 = sub nsw i64 64, %701
  %704 = lshr i64 %695, %703
  %705 = and i64 %700, 7
  store i64 %704, ptr %625, align 1, !tbaa !14
  %706 = getelementptr inbounds nuw i8, ptr %625, i64 %702
  br label %707

707:                                              ; preds = %645, %623
  %708 = phi i64 [ %624, %623 ], [ %705, %645 ]
  %709 = phi ptr [ %625, %623 ], [ %706, %645 ]
  %710 = phi i64 [ %626, %623 ], [ %695, %645 ]
  %711 = phi i32 [ %627, %623 ], [ %686, %645 ]
  %712 = getelementptr i8, ptr %2, i64 -10
  %713 = icmp sgt i32 %711, 0
  br i1 %713, label %714, label %.loopexit

714:                                              ; preds = %707
  %715 = zext nneg i32 %711 to i64
  %716 = getelementptr i8, ptr %2, i64 -1
  %717 = getelementptr i8, ptr %2, i64 -2
  %718 = getelementptr i8, ptr %2, i64 -3
  %719 = getelementptr i8, ptr %2, i64 -4
  br label %720

720:                                              ; preds = %720, %714
  %721 = phi i64 [ %715, %714 ], [ %833, %720 ]
  %722 = phi i64 [ %710, %714 ], [ %825, %720 ]
  %723 = phi ptr [ %709, %714 ], [ %832, %720 ]
  %724 = phi i64 [ %708, %714 ], [ %831, %720 ]
  %725 = getelementptr i8, ptr %716, i64 %721
  %726 = load i8, ptr %725, align 1, !tbaa !5
  %727 = zext i8 %726 to i64
  %728 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %727
  %729 = load i64, ptr %728, align 8, !tbaa !14
  %730 = and i64 %729, 255
  %731 = lshr i64 %722, %730
  %732 = or i64 %731, %729
  %733 = add i64 %729, %724
  %734 = getelementptr i8, ptr %717, i64 %721
  %735 = load i8, ptr %734, align 1, !tbaa !5
  %736 = zext i8 %735 to i64
  %737 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %736
  %738 = load i64, ptr %737, align 8, !tbaa !14
  %739 = and i64 %738, 255
  %740 = lshr i64 %732, %739
  %741 = or i64 %740, %738
  %742 = add i64 %733, %738
  %743 = getelementptr i8, ptr %718, i64 %721
  %744 = load i8, ptr %743, align 1, !tbaa !5
  %745 = zext i8 %744 to i64
  %746 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %745
  %747 = load i64, ptr %746, align 8, !tbaa !14
  %748 = and i64 %747, 255
  %749 = lshr i64 %741, %748
  %750 = or i64 %749, %747
  %751 = add i64 %742, %747
  %752 = getelementptr i8, ptr %719, i64 %721
  %753 = load i8, ptr %752, align 1, !tbaa !5
  %754 = zext i8 %753 to i64
  %755 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %754
  %756 = load i64, ptr %755, align 8, !tbaa !14
  %757 = and i64 %756, 255
  %758 = lshr i64 %750, %757
  %759 = or i64 %758, %756
  %760 = add i64 %751, %756
  %761 = getelementptr i8, ptr %2, i64 %721
  %762 = getelementptr i8, ptr %761, i64 -5
  %763 = load i8, ptr %762, align 1, !tbaa !5
  %764 = zext i8 %763 to i64
  %765 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %764
  %766 = load i64, ptr %765, align 8, !tbaa !14
  %767 = and i64 %766, 255
  %768 = lshr i64 %759, %767
  %769 = or i64 %768, %766
  %770 = add i64 %760, %766
  %771 = and i64 %770, 255
  %772 = lshr i64 %771, 3
  %773 = sub nsw i64 64, %771
  %774 = lshr i64 %769, %773
  %775 = and i64 %770, 7
  store i64 %774, ptr %723, align 1, !tbaa !14
  %776 = getelementptr inbounds nuw i8, ptr %723, i64 %772
  %777 = shl i64 %721, 32
  %sext34 = add i64 %777, -34359738368
  %778 = ashr exact i64 %sext34, 32
  %779 = getelementptr inbounds i8, ptr %2, i64 %778
  %780 = load i8, ptr %779, align 1, !tbaa !5
  %781 = zext i8 %780 to i64
  %782 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %781
  %783 = load i64, ptr %782, align 8, !tbaa !14
  %sext35 = add i64 %777, -30064771072
  %784 = ashr exact i64 %sext35, 32
  %785 = getelementptr inbounds i8, ptr %2, i64 %784
  %786 = load i8, ptr %785, align 1, !tbaa !5
  %787 = zext i8 %786 to i64
  %788 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %787
  %789 = load i64, ptr %788, align 8, !tbaa !14
  %sext36 = add i64 %777, -25769803776
  %790 = ashr exact i64 %sext36, 32
  %791 = getelementptr inbounds i8, ptr %2, i64 %790
  %792 = load i8, ptr %791, align 1, !tbaa !5
  %793 = zext i8 %792 to i64
  %794 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %793
  %795 = load i64, ptr %794, align 8, !tbaa !14
  %796 = and i64 %789, 255
  %797 = lshr i64 %795, %796
  %798 = or i64 %797, %789
  %799 = and i64 %783, 255
  %800 = lshr i64 %798, %799
  %801 = or i64 %800, %783
  %sext37 = add i64 %777, -38654705664
  %802 = ashr exact i64 %sext37, 32
  %803 = getelementptr inbounds i8, ptr %2, i64 %802
  %804 = load i8, ptr %803, align 1, !tbaa !5
  %805 = zext i8 %804 to i64
  %806 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %805
  %807 = load i64, ptr %806, align 8, !tbaa !14
  %808 = and i64 %807, 255
  %809 = lshr i64 %801, %808
  %810 = or i64 %809, %807
  %811 = getelementptr i8, ptr %712, i64 %721
  %812 = load i8, ptr %811, align 1, !tbaa !5
  %813 = zext i8 %812 to i64
  %814 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %813
  %815 = load i64, ptr %814, align 8, !tbaa !14
  %816 = and i64 %815, 255
  %817 = lshr i64 %810, %816
  %818 = add i64 %789, %783
  %819 = add i64 %818, %795
  %820 = add i64 %819, %807
  %821 = add i64 %820, %815
  %822 = and i64 %821, 255
  %823 = lshr i64 %769, %822
  %824 = or i64 %817, %823
  %825 = or i64 %824, %815
  %826 = add i64 %821, %775
  %827 = and i64 %826, 255
  %828 = lshr i64 %827, 3
  %829 = sub nsw i64 64, %827
  %830 = lshr i64 %825, %829
  %831 = and i64 %826, 7
  store i64 %830, ptr %776, align 1, !tbaa !14
  %832 = getelementptr inbounds nuw i8, ptr %776, i64 %828
  %833 = add nsw i64 %721, -10
  %834 = icmp samesign ugt i64 %721, 10
  br i1 %834, label %720, label %.loopexit, !llvm.loop !76

835:                                              ; preds = %271
  %836 = srem i32 %29, 6
  %837 = icmp sgt i32 %836, 0
  br i1 %837, label %838, label %903

838:                                              ; preds = %835
  %839 = and i32 %836, 1
  %840 = icmp eq i32 %836, 1
  br i1 %840, label %.thread55, label %841

841:                                              ; preds = %838
  %842 = and i32 %836, 2147483646
  br label %843

843:                                              ; preds = %843, %841
  %844 = phi i32 [ %29, %841 ], [ %860, %843 ]
  %845 = phi i64 [ 0, %841 ], [ %870, %843 ]
  %846 = phi i64 [ 0, %841 ], [ %871, %843 ]
  %847 = phi i32 [ 0, %841 ], [ %872, %843 ]
  %848 = add i32 %844, -1
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds i8, ptr %2, i64 %849
  %851 = load i8, ptr %850, align 1, !tbaa !5
  %852 = zext i8 %851 to i64
  %853 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %852
  %854 = load i64, ptr %853, align 8, !tbaa !14
  %855 = and i64 %854, 255
  %856 = lshr i64 %845, %855
  %857 = and i64 %854, -256
  %858 = or i64 %856, %857
  %859 = add i64 %854, %846
  %860 = add i32 %844, -2
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds i8, ptr %2, i64 %861
  %863 = load i8, ptr %862, align 1, !tbaa !5
  %864 = zext i8 %863 to i64
  %865 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %864
  %866 = load i64, ptr %865, align 8, !tbaa !14
  %867 = and i64 %866, 255
  %868 = lshr i64 %858, %867
  %869 = and i64 %866, -256
  %870 = or i64 %868, %869
  %871 = add i64 %859, %866
  %872 = add i32 %847, 2
  %873 = icmp eq i32 %872, %842
  br i1 %873, label %875, label %843, !llvm.loop !77

874:                                              ; preds = %925, %922, %919, %916, %913, %910
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

875:                                              ; preds = %843
  %876 = sub i32 %29, %842
  %877 = icmp eq i32 %839, 0
  br i1 %877, label %893, label %.thread55

.thread55:                                        ; preds = %838, %875
  %878 = phi i64 [ %871, %875 ], [ 0, %838 ]
  %879 = phi i64 [ %870, %875 ], [ 0, %838 ]
  %880 = phi i32 [ %876, %875 ], [ %29, %838 ]
  %881 = add i32 %880, -1
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds i8, ptr %2, i64 %882
  %884 = load i8, ptr %883, align 1, !tbaa !5
  %885 = zext i8 %884 to i64
  %886 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %885
  %887 = load i64, ptr %886, align 8, !tbaa !14
  %888 = and i64 %887, 255
  %889 = lshr i64 %879, %888
  %890 = and i64 %887, -256
  %891 = or i64 %889, %890
  %892 = add i64 %887, %878
  br label %893

893:                                              ; preds = %.thread55, %875
  %894 = phi i64 [ %870, %875 ], [ %891, %.thread55 ]
  %895 = phi i64 [ %871, %875 ], [ %892, %.thread55 ]
  %896 = sub nsw i32 %29, %836
  %897 = and i64 %895, 255
  %898 = lshr i64 %897, 3
  %899 = sub nsw i64 64, %897
  %900 = lshr i64 %894, %899
  %901 = and i64 %895, 7
  store i64 %900, ptr %0, align 1, !tbaa !14
  %902 = getelementptr inbounds nuw i8, ptr %0, i64 %898
  br label %903

903:                                              ; preds = %893, %835
  %904 = phi i64 [ %901, %893 ], [ 0, %835 ]
  %905 = phi ptr [ %902, %893 ], [ %0, %835 ]
  %906 = phi i64 [ %894, %893 ], [ 0, %835 ]
  %907 = phi i32 [ %896, %893 ], [ %29, %835 ]
  %908 = srem i32 %907, 12
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %1002, label %910

910:                                              ; preds = %903
  %911 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %907, i32 -1)
  %912 = extractvalue { i32, i1 } %911, 1, !nosanitize !46
  br i1 %912, label %874, label %913, !prof !49, !nosanitize !46

913:                                              ; preds = %910
  %914 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %907, i32 -2)
  %915 = extractvalue { i32, i1 } %914, 1, !nosanitize !46
  br i1 %915, label %874, label %916, !prof !49, !nosanitize !46

916:                                              ; preds = %913
  %917 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %907, i32 -3)
  %918 = extractvalue { i32, i1 } %917, 1, !nosanitize !46
  br i1 %918, label %874, label %919, !prof !49, !nosanitize !46

919:                                              ; preds = %916
  %920 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %907, i32 -4)
  %921 = extractvalue { i32, i1 } %920, 1, !nosanitize !46
  br i1 %921, label %874, label %922, !prof !49, !nosanitize !46

922:                                              ; preds = %919
  %923 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %907, i32 -5)
  %924 = extractvalue { i32, i1 } %923, 1, !nosanitize !46
  br i1 %924, label %874, label %925, !prof !49, !nosanitize !46

925:                                              ; preds = %922
  %926 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %907, i32 -6)
  %927 = extractvalue { i32, i1 } %926, 1, !nosanitize !46
  br i1 %927, label %874, label %928, !prof !49, !nosanitize !46

928:                                              ; preds = %925
  %929 = extractvalue { i32, i1 } %923, 0, !nosanitize !46
  %930 = sext i32 %929 to i64
  %931 = getelementptr inbounds i8, ptr %2, i64 %930
  %932 = load i8, ptr %931, align 1, !tbaa !5
  %933 = zext i8 %932 to i64
  %934 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %933
  %935 = load i64, ptr %934, align 8, !tbaa !14
  %936 = extractvalue { i32, i1 } %920, 0, !nosanitize !46
  %937 = sext i32 %936 to i64
  %938 = getelementptr inbounds i8, ptr %2, i64 %937
  %939 = load i8, ptr %938, align 1, !tbaa !5
  %940 = zext i8 %939 to i64
  %941 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %940
  %942 = load i64, ptr %941, align 8, !tbaa !14
  %943 = extractvalue { i32, i1 } %917, 0, !nosanitize !46
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds i8, ptr %2, i64 %944
  %946 = load i8, ptr %945, align 1, !tbaa !5
  %947 = zext i8 %946 to i64
  %948 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %947
  %949 = load i64, ptr %948, align 8, !tbaa !14
  %950 = extractvalue { i32, i1 } %914, 0, !nosanitize !46
  %951 = sext i32 %950 to i64
  %952 = getelementptr inbounds i8, ptr %2, i64 %951
  %953 = load i8, ptr %952, align 1, !tbaa !5
  %954 = zext i8 %953 to i64
  %955 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %954
  %956 = load i64, ptr %955, align 8, !tbaa !14
  %957 = extractvalue { i32, i1 } %911, 0, !nosanitize !46
  %958 = sext i32 %957 to i64
  %959 = getelementptr inbounds i8, ptr %2, i64 %958
  %960 = load i8, ptr %959, align 1, !tbaa !5
  %961 = zext i8 %960 to i64
  %962 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %961
  %963 = load i64, ptr %962, align 8, !tbaa !14
  %964 = and i64 %963, 255
  %965 = lshr i64 %906, %964
  %966 = or i64 %965, %963
  %967 = and i64 %956, 255
  %968 = lshr i64 %966, %967
  %969 = or i64 %968, %956
  %970 = and i64 %949, 255
  %971 = lshr i64 %969, %970
  %972 = or i64 %971, %949
  %973 = and i64 %942, 255
  %974 = lshr i64 %972, %973
  %975 = or i64 %974, %942
  %976 = and i64 %935, 255
  %977 = lshr i64 %975, %976
  %978 = or i64 %977, %935
  %979 = extractvalue { i32, i1 } %926, 0, !nosanitize !46
  %980 = sext i32 %979 to i64
  %981 = getelementptr inbounds i8, ptr %2, i64 %980
  %982 = load i8, ptr %981, align 1, !tbaa !5
  %983 = zext i8 %982 to i64
  %984 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %983
  %985 = load i64, ptr %984, align 8, !tbaa !14
  %986 = and i64 %985, 255
  %987 = lshr i64 %978, %986
  %988 = and i64 %985, -256
  %989 = or i64 %987, %988
  %990 = add i64 %935, %904
  %991 = add i64 %990, %942
  %992 = add i64 %991, %949
  %993 = add i64 %992, %956
  %994 = add i64 %993, %963
  %995 = add i64 %994, %985
  %996 = and i64 %995, 255
  %997 = lshr i64 %996, 3
  %998 = sub nsw i64 64, %996
  %999 = lshr i64 %989, %998
  %1000 = and i64 %995, 7
  store i64 %999, ptr %905, align 1, !tbaa !14
  %1001 = getelementptr inbounds nuw i8, ptr %905, i64 %997
  br label %1002

1002:                                             ; preds = %928, %903
  %1003 = phi i64 [ %904, %903 ], [ %1000, %928 ]
  %1004 = phi ptr [ %905, %903 ], [ %1001, %928 ]
  %1005 = phi i64 [ %906, %903 ], [ %989, %928 ]
  %1006 = phi i32 [ %907, %903 ], [ %979, %928 ]
  %1007 = getelementptr i8, ptr %2, i64 -12
  %1008 = icmp sgt i32 %1006, 0
  br i1 %1008, label %1009, label %.loopexit

1009:                                             ; preds = %1002
  %1010 = zext nneg i32 %1006 to i64
  %1011 = getelementptr i8, ptr %2, i64 -1
  %1012 = getelementptr i8, ptr %2, i64 -2
  %1013 = getelementptr i8, ptr %2, i64 -3
  %1014 = getelementptr i8, ptr %2, i64 -4
  %1015 = getelementptr i8, ptr %2, i64 -5
  br label %1016

1016:                                             ; preds = %1016, %1009
  %1017 = phi i64 [ %1010, %1009 ], [ %1150, %1016 ]
  %1018 = phi i64 [ %1005, %1009 ], [ %1142, %1016 ]
  %1019 = phi ptr [ %1004, %1009 ], [ %1149, %1016 ]
  %1020 = phi i64 [ %1003, %1009 ], [ %1148, %1016 ]
  %1021 = getelementptr i8, ptr %1011, i64 %1017
  %1022 = load i8, ptr %1021, align 1, !tbaa !5
  %1023 = zext i8 %1022 to i64
  %1024 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1023
  %1025 = load i64, ptr %1024, align 8, !tbaa !14
  %1026 = and i64 %1025, 255
  %1027 = lshr i64 %1018, %1026
  %1028 = or i64 %1027, %1025
  %1029 = add i64 %1025, %1020
  %1030 = getelementptr i8, ptr %1012, i64 %1017
  %1031 = load i8, ptr %1030, align 1, !tbaa !5
  %1032 = zext i8 %1031 to i64
  %1033 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1032
  %1034 = load i64, ptr %1033, align 8, !tbaa !14
  %1035 = and i64 %1034, 255
  %1036 = lshr i64 %1028, %1035
  %1037 = or i64 %1036, %1034
  %1038 = add i64 %1029, %1034
  %1039 = getelementptr i8, ptr %1013, i64 %1017
  %1040 = load i8, ptr %1039, align 1, !tbaa !5
  %1041 = zext i8 %1040 to i64
  %1042 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1041
  %1043 = load i64, ptr %1042, align 8, !tbaa !14
  %1044 = and i64 %1043, 255
  %1045 = lshr i64 %1037, %1044
  %1046 = or i64 %1045, %1043
  %1047 = add i64 %1038, %1043
  %1048 = getelementptr i8, ptr %1014, i64 %1017
  %1049 = load i8, ptr %1048, align 1, !tbaa !5
  %1050 = zext i8 %1049 to i64
  %1051 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1050
  %1052 = load i64, ptr %1051, align 8, !tbaa !14
  %1053 = and i64 %1052, 255
  %1054 = lshr i64 %1046, %1053
  %1055 = or i64 %1054, %1052
  %1056 = add i64 %1047, %1052
  %1057 = getelementptr i8, ptr %1015, i64 %1017
  %1058 = load i8, ptr %1057, align 1, !tbaa !5
  %1059 = zext i8 %1058 to i64
  %1060 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1059
  %1061 = load i64, ptr %1060, align 8, !tbaa !14
  %1062 = and i64 %1061, 255
  %1063 = lshr i64 %1055, %1062
  %1064 = or i64 %1063, %1061
  %1065 = add i64 %1056, %1061
  %1066 = getelementptr i8, ptr %2, i64 %1017
  %1067 = getelementptr i8, ptr %1066, i64 -6
  %1068 = load i8, ptr %1067, align 1, !tbaa !5
  %1069 = zext i8 %1068 to i64
  %1070 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1069
  %1071 = load i64, ptr %1070, align 8, !tbaa !14
  %1072 = and i64 %1071, 255
  %1073 = lshr i64 %1064, %1072
  %1074 = and i64 %1071, -256
  %1075 = or i64 %1073, %1074
  %1076 = add i64 %1065, %1071
  %1077 = and i64 %1076, 255
  %1078 = lshr i64 %1077, 3
  %1079 = sub nsw i64 64, %1077
  %1080 = lshr i64 %1075, %1079
  %1081 = and i64 %1076, 7
  store i64 %1080, ptr %1019, align 1, !tbaa !14
  %1082 = getelementptr inbounds nuw i8, ptr %1019, i64 %1078
  %1083 = shl i64 %1017, 32
  %sext29 = add i64 %1083, -42949672960
  %1084 = ashr exact i64 %sext29, 32
  %1085 = getelementptr inbounds i8, ptr %2, i64 %1084
  %1086 = load i8, ptr %1085, align 1, !tbaa !5
  %1087 = zext i8 %1086 to i64
  %1088 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1087
  %1089 = load i64, ptr %1088, align 8, !tbaa !14
  %sext30 = add i64 %1083, -38654705664
  %1090 = ashr exact i64 %sext30, 32
  %1091 = getelementptr inbounds i8, ptr %2, i64 %1090
  %1092 = load i8, ptr %1091, align 1, !tbaa !5
  %1093 = zext i8 %1092 to i64
  %1094 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1093
  %1095 = load i64, ptr %1094, align 8, !tbaa !14
  %sext31 = add i64 %1083, -34359738368
  %1096 = ashr exact i64 %sext31, 32
  %1097 = getelementptr inbounds i8, ptr %2, i64 %1096
  %1098 = load i8, ptr %1097, align 1, !tbaa !5
  %1099 = zext i8 %1098 to i64
  %1100 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1099
  %1101 = load i64, ptr %1100, align 8, !tbaa !14
  %sext32 = add i64 %1083, -30064771072
  %1102 = ashr exact i64 %sext32, 32
  %1103 = getelementptr inbounds i8, ptr %2, i64 %1102
  %1104 = load i8, ptr %1103, align 1, !tbaa !5
  %1105 = zext i8 %1104 to i64
  %1106 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1105
  %1107 = load i64, ptr %1106, align 8, !tbaa !14
  %1108 = and i64 %1101, 255
  %1109 = lshr i64 %1107, %1108
  %1110 = or i64 %1109, %1101
  %1111 = and i64 %1095, 255
  %1112 = lshr i64 %1110, %1111
  %1113 = or i64 %1112, %1095
  %1114 = and i64 %1089, 255
  %1115 = lshr i64 %1113, %1114
  %1116 = or i64 %1115, %1089
  %sext33 = add i64 %1083, -47244640256
  %1117 = ashr exact i64 %sext33, 32
  %1118 = getelementptr inbounds i8, ptr %2, i64 %1117
  %1119 = load i8, ptr %1118, align 1, !tbaa !5
  %1120 = zext i8 %1119 to i64
  %1121 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1120
  %1122 = load i64, ptr %1121, align 8, !tbaa !14
  %1123 = and i64 %1122, 255
  %1124 = lshr i64 %1116, %1123
  %1125 = or i64 %1124, %1122
  %1126 = getelementptr i8, ptr %1007, i64 %1017
  %1127 = load i8, ptr %1126, align 1, !tbaa !5
  %1128 = zext i8 %1127 to i64
  %1129 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1128
  %1130 = load i64, ptr %1129, align 8, !tbaa !14
  %1131 = and i64 %1130, 255
  %1132 = lshr i64 %1125, %1131
  %1133 = and i64 %1130, -256
  %1134 = add i64 %1095, %1089
  %1135 = add i64 %1134, %1101
  %1136 = add i64 %1135, %1107
  %1137 = add i64 %1136, %1122
  %1138 = add i64 %1137, %1130
  %1139 = and i64 %1138, 255
  %1140 = lshr i64 %1075, %1139
  %1141 = or i64 %1140, %1133
  %1142 = or i64 %1141, %1132
  %1143 = add i64 %1138, %1081
  %1144 = and i64 %1143, 255
  %1145 = lshr i64 %1144, 3
  %1146 = sub nsw i64 64, %1144
  %1147 = lshr i64 %1142, %1146
  %1148 = and i64 %1143, 7
  store i64 %1147, ptr %1082, align 1, !tbaa !14
  %1149 = getelementptr inbounds nuw i8, ptr %1082, i64 %1145
  %1150 = add nsw i64 %1017, -12
  %1151 = icmp samesign ugt i64 %1017, 12
  br i1 %1151, label %1016, label %.loopexit, !llvm.loop !76

1152:                                             ; preds = %271
  %1153 = srem i32 %29, 7
  %1154 = icmp sgt i32 %1153, 0
  br i1 %1154, label %1155, label %1220

1155:                                             ; preds = %1152
  %1156 = and i32 %1153, 1
  %1157 = icmp eq i32 %1153, 1
  br i1 %1157, label %.thread56, label %1158

1158:                                             ; preds = %1155
  %1159 = and i32 %1153, 2147483646
  br label %1160

1160:                                             ; preds = %1160, %1158
  %1161 = phi i32 [ %29, %1158 ], [ %1177, %1160 ]
  %1162 = phi i64 [ 0, %1158 ], [ %1187, %1160 ]
  %1163 = phi i64 [ 0, %1158 ], [ %1188, %1160 ]
  %1164 = phi i32 [ 0, %1158 ], [ %1189, %1160 ]
  %1165 = add i32 %1161, -1
  %1166 = sext i32 %1165 to i64
  %1167 = getelementptr inbounds i8, ptr %2, i64 %1166
  %1168 = load i8, ptr %1167, align 1, !tbaa !5
  %1169 = zext i8 %1168 to i64
  %1170 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1169
  %1171 = load i64, ptr %1170, align 8, !tbaa !14
  %1172 = and i64 %1171, 255
  %1173 = lshr i64 %1162, %1172
  %1174 = and i64 %1171, -256
  %1175 = or i64 %1173, %1174
  %1176 = add i64 %1171, %1163
  %1177 = add i32 %1161, -2
  %1178 = sext i32 %1177 to i64
  %1179 = getelementptr inbounds i8, ptr %2, i64 %1178
  %1180 = load i8, ptr %1179, align 1, !tbaa !5
  %1181 = zext i8 %1180 to i64
  %1182 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1181
  %1183 = load i64, ptr %1182, align 8, !tbaa !14
  %1184 = and i64 %1183, 255
  %1185 = lshr i64 %1175, %1184
  %1186 = and i64 %1183, -256
  %1187 = or i64 %1185, %1186
  %1188 = add i64 %1176, %1183
  %1189 = add i32 %1164, 2
  %1190 = icmp eq i32 %1189, %1159
  br i1 %1190, label %1192, label %1160, !llvm.loop !77

1191:                                             ; preds = %1242, %1239, %1236, %1233, %1230, %1227
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

1192:                                             ; preds = %1160
  %1193 = sub i32 %29, %1159
  %1194 = icmp eq i32 %1156, 0
  br i1 %1194, label %1210, label %.thread56

.thread56:                                        ; preds = %1155, %1192
  %1195 = phi i64 [ %1188, %1192 ], [ 0, %1155 ]
  %1196 = phi i64 [ %1187, %1192 ], [ 0, %1155 ]
  %1197 = phi i32 [ %1193, %1192 ], [ %29, %1155 ]
  %1198 = add i32 %1197, -1
  %1199 = sext i32 %1198 to i64
  %1200 = getelementptr inbounds i8, ptr %2, i64 %1199
  %1201 = load i8, ptr %1200, align 1, !tbaa !5
  %1202 = zext i8 %1201 to i64
  %1203 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1202
  %1204 = load i64, ptr %1203, align 8, !tbaa !14
  %1205 = and i64 %1204, 255
  %1206 = lshr i64 %1196, %1205
  %1207 = and i64 %1204, -256
  %1208 = or i64 %1206, %1207
  %1209 = add i64 %1204, %1195
  br label %1210

1210:                                             ; preds = %.thread56, %1192
  %1211 = phi i64 [ %1187, %1192 ], [ %1208, %.thread56 ]
  %1212 = phi i64 [ %1188, %1192 ], [ %1209, %.thread56 ]
  %1213 = sub nsw i32 %29, %1153
  %1214 = and i64 %1212, 255
  %1215 = lshr i64 %1214, 3
  %1216 = sub nsw i64 64, %1214
  %1217 = lshr i64 %1211, %1216
  %1218 = and i64 %1212, 7
  store i64 %1217, ptr %0, align 1, !tbaa !14
  %1219 = getelementptr inbounds nuw i8, ptr %0, i64 %1215
  br label %1220

1220:                                             ; preds = %1210, %1152
  %1221 = phi i64 [ %1218, %1210 ], [ 0, %1152 ]
  %1222 = phi ptr [ %1219, %1210 ], [ %0, %1152 ]
  %1223 = phi i64 [ %1211, %1210 ], [ 0, %1152 ]
  %1224 = phi i32 [ %1213, %1210 ], [ %29, %1152 ]
  %1225 = srem i32 %1224, 14
  %1226 = icmp eq i32 %1225, 0
  br i1 %1226, label %1330, label %1227

1227:                                             ; preds = %1220
  %1228 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1224, i32 -1)
  %1229 = extractvalue { i32, i1 } %1228, 1, !nosanitize !46
  br i1 %1229, label %1191, label %1230, !prof !49, !nosanitize !46

1230:                                             ; preds = %1227
  %1231 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1224, i32 -2)
  %1232 = extractvalue { i32, i1 } %1231, 1, !nosanitize !46
  br i1 %1232, label %1191, label %1233, !prof !49, !nosanitize !46

1233:                                             ; preds = %1230
  %1234 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1224, i32 -4)
  %1235 = extractvalue { i32, i1 } %1234, 1, !nosanitize !46
  br i1 %1235, label %1191, label %1236, !prof !49, !nosanitize !46

1236:                                             ; preds = %1233
  %1237 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1224, i32 -5)
  %1238 = extractvalue { i32, i1 } %1237, 1, !nosanitize !46
  br i1 %1238, label %1191, label %1239, !prof !49, !nosanitize !46

1239:                                             ; preds = %1236
  %1240 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1224, i32 -6)
  %1241 = extractvalue { i32, i1 } %1240, 1, !nosanitize !46
  br i1 %1241, label %1191, label %1242, !prof !49, !nosanitize !46

1242:                                             ; preds = %1239
  %1243 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1224, i32 -7)
  %1244 = extractvalue { i32, i1 } %1243, 1, !nosanitize !46
  br i1 %1244, label %1191, label %1245, !prof !49, !nosanitize !46

1245:                                             ; preds = %1242
  %1246 = extractvalue { i32, i1 } %1240, 0, !nosanitize !46
  %1247 = sext i32 %1246 to i64
  %1248 = getelementptr inbounds i8, ptr %2, i64 %1247
  %1249 = load i8, ptr %1248, align 1, !tbaa !5
  %1250 = zext i8 %1249 to i64
  %1251 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1250
  %1252 = load i64, ptr %1251, align 8, !tbaa !14
  %1253 = extractvalue { i32, i1 } %1237, 0, !nosanitize !46
  %1254 = sext i32 %1253 to i64
  %1255 = getelementptr inbounds i8, ptr %2, i64 %1254
  %1256 = load i8, ptr %1255, align 1, !tbaa !5
  %1257 = zext i8 %1256 to i64
  %1258 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1257
  %1259 = load i64, ptr %1258, align 8, !tbaa !14
  %1260 = extractvalue { i32, i1 } %1234, 0, !nosanitize !46
  %1261 = sext i32 %1260 to i64
  %1262 = getelementptr inbounds i8, ptr %2, i64 %1261
  %1263 = load i8, ptr %1262, align 1, !tbaa !5
  %1264 = zext i8 %1263 to i64
  %1265 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1264
  %1266 = load i64, ptr %1265, align 8, !tbaa !14
  %1267 = sext i32 %1224 to i64
  %1268 = getelementptr i8, ptr %2, i64 %1267
  %1269 = getelementptr i8, ptr %1268, i64 -3
  %1270 = load i8, ptr %1269, align 1, !tbaa !5
  %1271 = zext i8 %1270 to i64
  %1272 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1271
  %1273 = load i64, ptr %1272, align 8, !tbaa !14
  %1274 = extractvalue { i32, i1 } %1231, 0, !nosanitize !46
  %1275 = sext i32 %1274 to i64
  %1276 = getelementptr inbounds i8, ptr %2, i64 %1275
  %1277 = load i8, ptr %1276, align 1, !tbaa !5
  %1278 = zext i8 %1277 to i64
  %1279 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1278
  %1280 = load i64, ptr %1279, align 8, !tbaa !14
  %1281 = extractvalue { i32, i1 } %1228, 0, !nosanitize !46
  %1282 = sext i32 %1281 to i64
  %1283 = getelementptr inbounds i8, ptr %2, i64 %1282
  %1284 = load i8, ptr %1283, align 1, !tbaa !5
  %1285 = zext i8 %1284 to i64
  %1286 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1285
  %1287 = load i64, ptr %1286, align 8, !tbaa !14
  %1288 = and i64 %1287, 255
  %1289 = lshr i64 %1223, %1288
  %1290 = or i64 %1289, %1287
  %1291 = and i64 %1280, 255
  %1292 = lshr i64 %1290, %1291
  %1293 = or i64 %1292, %1280
  %1294 = and i64 %1273, 255
  %1295 = lshr i64 %1293, %1294
  %1296 = or i64 %1295, %1273
  %1297 = and i64 %1266, 255
  %1298 = lshr i64 %1296, %1297
  %1299 = or i64 %1298, %1266
  %1300 = and i64 %1259, 255
  %1301 = lshr i64 %1299, %1300
  %1302 = or i64 %1301, %1259
  %1303 = and i64 %1252, 255
  %1304 = lshr i64 %1302, %1303
  %1305 = or i64 %1304, %1252
  %1306 = extractvalue { i32, i1 } %1243, 0, !nosanitize !46
  %1307 = sext i32 %1306 to i64
  %1308 = getelementptr inbounds i8, ptr %2, i64 %1307
  %1309 = load i8, ptr %1308, align 1, !tbaa !5
  %1310 = zext i8 %1309 to i64
  %1311 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1310
  %1312 = load i64, ptr %1311, align 8, !tbaa !14
  %1313 = and i64 %1312, 255
  %1314 = lshr i64 %1305, %1313
  %1315 = and i64 %1312, -256
  %1316 = or i64 %1314, %1315
  %1317 = add i64 %1252, %1221
  %1318 = add i64 %1317, %1259
  %1319 = add i64 %1318, %1266
  %1320 = add i64 %1319, %1273
  %1321 = add i64 %1320, %1280
  %1322 = add i64 %1321, %1287
  %1323 = add i64 %1322, %1312
  %1324 = and i64 %1323, 255
  %1325 = lshr i64 %1324, 3
  %1326 = sub nsw i64 64, %1324
  %1327 = lshr i64 %1316, %1326
  %1328 = and i64 %1323, 7
  store i64 %1327, ptr %1222, align 1, !tbaa !14
  %1329 = getelementptr inbounds nuw i8, ptr %1222, i64 %1325
  br label %1330

1330:                                             ; preds = %1245, %1220
  %1331 = phi i64 [ %1221, %1220 ], [ %1328, %1245 ]
  %1332 = phi ptr [ %1222, %1220 ], [ %1329, %1245 ]
  %1333 = phi i64 [ %1223, %1220 ], [ %1316, %1245 ]
  %1334 = phi i32 [ %1224, %1220 ], [ %1306, %1245 ]
  %1335 = getelementptr i8, ptr %2, i64 -14
  %1336 = icmp sgt i32 %1334, 0
  br i1 %1336, label %1337, label %.loopexit

1337:                                             ; preds = %1330
  %1338 = zext nneg i32 %1334 to i64
  %1339 = getelementptr i8, ptr %2, i64 -1
  %1340 = getelementptr i8, ptr %2, i64 -2
  %1341 = getelementptr i8, ptr %2, i64 -3
  %1342 = getelementptr i8, ptr %2, i64 -4
  %1343 = getelementptr i8, ptr %2, i64 -5
  %1344 = getelementptr i8, ptr %2, i64 -6
  br label %1345

1345:                                             ; preds = %1345, %1337
  %1346 = phi i64 [ %1338, %1337 ], [ %1498, %1345 ]
  %1347 = phi i64 [ %1333, %1337 ], [ %1490, %1345 ]
  %1348 = phi ptr [ %1332, %1337 ], [ %1497, %1345 ]
  %1349 = phi i64 [ %1331, %1337 ], [ %1496, %1345 ]
  %1350 = getelementptr i8, ptr %1339, i64 %1346
  %1351 = load i8, ptr %1350, align 1, !tbaa !5
  %1352 = zext i8 %1351 to i64
  %1353 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1352
  %1354 = load i64, ptr %1353, align 8, !tbaa !14
  %1355 = and i64 %1354, 255
  %1356 = lshr i64 %1347, %1355
  %1357 = or i64 %1356, %1354
  %1358 = add i64 %1354, %1349
  %1359 = getelementptr i8, ptr %1340, i64 %1346
  %1360 = load i8, ptr %1359, align 1, !tbaa !5
  %1361 = zext i8 %1360 to i64
  %1362 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1361
  %1363 = load i64, ptr %1362, align 8, !tbaa !14
  %1364 = and i64 %1363, 255
  %1365 = lshr i64 %1357, %1364
  %1366 = or i64 %1365, %1363
  %1367 = add i64 %1358, %1363
  %1368 = getelementptr i8, ptr %1341, i64 %1346
  %1369 = load i8, ptr %1368, align 1, !tbaa !5
  %1370 = zext i8 %1369 to i64
  %1371 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1370
  %1372 = load i64, ptr %1371, align 8, !tbaa !14
  %1373 = and i64 %1372, 255
  %1374 = lshr i64 %1366, %1373
  %1375 = or i64 %1374, %1372
  %1376 = add i64 %1367, %1372
  %1377 = getelementptr i8, ptr %1342, i64 %1346
  %1378 = load i8, ptr %1377, align 1, !tbaa !5
  %1379 = zext i8 %1378 to i64
  %1380 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1379
  %1381 = load i64, ptr %1380, align 8, !tbaa !14
  %1382 = and i64 %1381, 255
  %1383 = lshr i64 %1375, %1382
  %1384 = or i64 %1383, %1381
  %1385 = add i64 %1376, %1381
  %1386 = getelementptr i8, ptr %1343, i64 %1346
  %1387 = load i8, ptr %1386, align 1, !tbaa !5
  %1388 = zext i8 %1387 to i64
  %1389 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1388
  %1390 = load i64, ptr %1389, align 8, !tbaa !14
  %1391 = and i64 %1390, 255
  %1392 = lshr i64 %1384, %1391
  %1393 = or i64 %1392, %1390
  %1394 = add i64 %1385, %1390
  %1395 = getelementptr i8, ptr %1344, i64 %1346
  %1396 = load i8, ptr %1395, align 1, !tbaa !5
  %1397 = zext i8 %1396 to i64
  %1398 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1397
  %1399 = load i64, ptr %1398, align 8, !tbaa !14
  %1400 = and i64 %1399, 255
  %1401 = lshr i64 %1393, %1400
  %1402 = or i64 %1401, %1399
  %1403 = add i64 %1394, %1399
  %1404 = getelementptr i8, ptr %2, i64 %1346
  %1405 = getelementptr i8, ptr %1404, i64 -7
  %1406 = load i8, ptr %1405, align 1, !tbaa !5
  %1407 = zext i8 %1406 to i64
  %1408 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1407
  %1409 = load i64, ptr %1408, align 8, !tbaa !14
  %1410 = and i64 %1409, 255
  %1411 = lshr i64 %1402, %1410
  %1412 = and i64 %1409, -256
  %1413 = or i64 %1411, %1412
  %1414 = add i64 %1403, %1409
  %1415 = and i64 %1414, 255
  %1416 = lshr i64 %1415, 3
  %1417 = sub nsw i64 64, %1415
  %1418 = lshr i64 %1413, %1417
  %1419 = and i64 %1414, 7
  store i64 %1418, ptr %1348, align 1, !tbaa !14
  %1420 = getelementptr inbounds nuw i8, ptr %1348, i64 %1416
  %1421 = shl i64 %1346, 32
  %sext23 = add i64 %1421, -51539607552
  %1422 = ashr exact i64 %sext23, 32
  %1423 = getelementptr inbounds i8, ptr %2, i64 %1422
  %1424 = load i8, ptr %1423, align 1, !tbaa !5
  %1425 = zext i8 %1424 to i64
  %1426 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1425
  %1427 = load i64, ptr %1426, align 8, !tbaa !14
  %sext24 = add i64 %1421, -47244640256
  %1428 = ashr exact i64 %sext24, 32
  %1429 = getelementptr inbounds i8, ptr %2, i64 %1428
  %1430 = load i8, ptr %1429, align 1, !tbaa !5
  %1431 = zext i8 %1430 to i64
  %1432 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1431
  %1433 = load i64, ptr %1432, align 8, !tbaa !14
  %sext25 = add i64 %1421, -42949672960
  %1434 = ashr exact i64 %sext25, 32
  %1435 = getelementptr inbounds i8, ptr %2, i64 %1434
  %1436 = load i8, ptr %1435, align 1, !tbaa !5
  %1437 = zext i8 %1436 to i64
  %1438 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1437
  %1439 = load i64, ptr %1438, align 8, !tbaa !14
  %sext26 = add i64 %1421, -38654705664
  %1440 = ashr exact i64 %sext26, 32
  %1441 = getelementptr inbounds i8, ptr %2, i64 %1440
  %1442 = load i8, ptr %1441, align 1, !tbaa !5
  %1443 = zext i8 %1442 to i64
  %1444 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1443
  %1445 = load i64, ptr %1444, align 8, !tbaa !14
  %sext27 = add i64 %1421, -34359738368
  %1446 = ashr exact i64 %sext27, 32
  %1447 = getelementptr inbounds i8, ptr %2, i64 %1446
  %1448 = load i8, ptr %1447, align 1, !tbaa !5
  %1449 = zext i8 %1448 to i64
  %1450 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1449
  %1451 = load i64, ptr %1450, align 8, !tbaa !14
  %1452 = and i64 %1445, 255
  %1453 = lshr i64 %1451, %1452
  %1454 = or i64 %1453, %1445
  %1455 = and i64 %1439, 255
  %1456 = lshr i64 %1454, %1455
  %1457 = or i64 %1456, %1439
  %1458 = and i64 %1433, 255
  %1459 = lshr i64 %1457, %1458
  %1460 = or i64 %1459, %1433
  %1461 = and i64 %1427, 255
  %1462 = lshr i64 %1460, %1461
  %1463 = or i64 %1462, %1427
  %sext28 = add i64 %1421, -55834574848
  %1464 = ashr exact i64 %sext28, 32
  %1465 = getelementptr inbounds i8, ptr %2, i64 %1464
  %1466 = load i8, ptr %1465, align 1, !tbaa !5
  %1467 = zext i8 %1466 to i64
  %1468 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1467
  %1469 = load i64, ptr %1468, align 8, !tbaa !14
  %1470 = and i64 %1469, 255
  %1471 = lshr i64 %1463, %1470
  %1472 = or i64 %1471, %1469
  %1473 = getelementptr i8, ptr %1335, i64 %1346
  %1474 = load i8, ptr %1473, align 1, !tbaa !5
  %1475 = zext i8 %1474 to i64
  %1476 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1475
  %1477 = load i64, ptr %1476, align 8, !tbaa !14
  %1478 = and i64 %1477, 255
  %1479 = lshr i64 %1472, %1478
  %1480 = and i64 %1477, -256
  %1481 = add i64 %1433, %1427
  %1482 = add i64 %1481, %1439
  %1483 = add i64 %1482, %1445
  %1484 = add i64 %1483, %1451
  %1485 = add i64 %1484, %1469
  %1486 = add i64 %1485, %1477
  %1487 = and i64 %1486, 255
  %1488 = lshr i64 %1413, %1487
  %1489 = or i64 %1488, %1480
  %1490 = or i64 %1489, %1479
  %1491 = add i64 %1486, %1419
  %1492 = and i64 %1491, 255
  %1493 = lshr i64 %1492, 3
  %1494 = sub nsw i64 64, %1492
  %1495 = lshr i64 %1490, %1494
  %1496 = and i64 %1491, 7
  store i64 %1495, ptr %1420, align 1, !tbaa !14
  %1497 = getelementptr inbounds nuw i8, ptr %1420, i64 %1493
  %1498 = add nsw i64 %1346, -14
  %1499 = icmp samesign ugt i64 %1346, 14
  br i1 %1499, label %1345, label %.loopexit, !llvm.loop !76

1500:                                             ; preds = %271
  %1501 = srem i32 %29, 8
  %1502 = icmp sgt i32 %1501, 0
  br i1 %1502, label %1503, label %1568

1503:                                             ; preds = %1500
  %1504 = and i32 %1501, 1
  %1505 = icmp eq i32 %1501, 1
  br i1 %1505, label %.thread57, label %1506

1506:                                             ; preds = %1503
  %1507 = and i32 %1501, 2147483646
  br label %1508

1508:                                             ; preds = %1508, %1506
  %1509 = phi i32 [ %29, %1506 ], [ %1525, %1508 ]
  %1510 = phi i64 [ 0, %1506 ], [ %1535, %1508 ]
  %1511 = phi i64 [ 0, %1506 ], [ %1536, %1508 ]
  %1512 = phi i32 [ 0, %1506 ], [ %1537, %1508 ]
  %1513 = add i32 %1509, -1
  %1514 = sext i32 %1513 to i64
  %1515 = getelementptr inbounds i8, ptr %2, i64 %1514
  %1516 = load i8, ptr %1515, align 1, !tbaa !5
  %1517 = zext i8 %1516 to i64
  %1518 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1517
  %1519 = load i64, ptr %1518, align 8, !tbaa !14
  %1520 = and i64 %1519, 255
  %1521 = lshr i64 %1510, %1520
  %1522 = and i64 %1519, -256
  %1523 = or i64 %1521, %1522
  %1524 = add i64 %1519, %1511
  %1525 = add i32 %1509, -2
  %1526 = sext i32 %1525 to i64
  %1527 = getelementptr inbounds i8, ptr %2, i64 %1526
  %1528 = load i8, ptr %1527, align 1, !tbaa !5
  %1529 = zext i8 %1528 to i64
  %1530 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1529
  %1531 = load i64, ptr %1530, align 8, !tbaa !14
  %1532 = and i64 %1531, 255
  %1533 = lshr i64 %1523, %1532
  %1534 = and i64 %1531, -256
  %1535 = or i64 %1533, %1534
  %1536 = add i64 %1524, %1531
  %1537 = add i32 %1512, 2
  %1538 = icmp eq i32 %1537, %1507
  br i1 %1538, label %1540, label %1508, !llvm.loop !77

1539:                                             ; preds = %1593, %1590, %1587, %1584, %1581, %1578, %1575
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

1540:                                             ; preds = %1508
  %1541 = sub i32 %29, %1507
  %1542 = icmp eq i32 %1504, 0
  br i1 %1542, label %1558, label %.thread57

.thread57:                                        ; preds = %1503, %1540
  %1543 = phi i64 [ %1536, %1540 ], [ 0, %1503 ]
  %1544 = phi i64 [ %1535, %1540 ], [ 0, %1503 ]
  %1545 = phi i32 [ %1541, %1540 ], [ %29, %1503 ]
  %1546 = add i32 %1545, -1
  %1547 = sext i32 %1546 to i64
  %1548 = getelementptr inbounds i8, ptr %2, i64 %1547
  %1549 = load i8, ptr %1548, align 1, !tbaa !5
  %1550 = zext i8 %1549 to i64
  %1551 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1550
  %1552 = load i64, ptr %1551, align 8, !tbaa !14
  %1553 = and i64 %1552, 255
  %1554 = lshr i64 %1544, %1553
  %1555 = and i64 %1552, -256
  %1556 = or i64 %1554, %1555
  %1557 = add i64 %1552, %1543
  br label %1558

1558:                                             ; preds = %.thread57, %1540
  %1559 = phi i64 [ %1535, %1540 ], [ %1556, %.thread57 ]
  %1560 = phi i64 [ %1536, %1540 ], [ %1557, %.thread57 ]
  %1561 = sub nsw i32 %29, %1501
  %1562 = and i64 %1560, 255
  %1563 = lshr i64 %1562, 3
  %1564 = sub nsw i64 64, %1562
  %1565 = lshr i64 %1559, %1564
  %1566 = and i64 %1560, 7
  store i64 %1565, ptr %0, align 1, !tbaa !14
  %1567 = getelementptr inbounds nuw i8, ptr %0, i64 %1563
  br label %1568

1568:                                             ; preds = %1558, %1500
  %1569 = phi i64 [ %1566, %1558 ], [ 0, %1500 ]
  %1570 = phi ptr [ %1567, %1558 ], [ %0, %1500 ]
  %1571 = phi i64 [ %1559, %1558 ], [ 0, %1500 ]
  %1572 = phi i32 [ %1561, %1558 ], [ %29, %1500 ]
  %1573 = and i32 %1572, 15
  %1574 = icmp eq i32 %1573, 0
  br i1 %1574, label %1692, label %1575

1575:                                             ; preds = %1568
  %1576 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1572, i32 -2)
  %1577 = extractvalue { i32, i1 } %1576, 1, !nosanitize !46
  br i1 %1577, label %1539, label %1578, !prof !49, !nosanitize !46

1578:                                             ; preds = %1575
  %1579 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1572, i32 -3)
  %1580 = extractvalue { i32, i1 } %1579, 1, !nosanitize !46
  br i1 %1580, label %1539, label %1581, !prof !49, !nosanitize !46

1581:                                             ; preds = %1578
  %1582 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1572, i32 -4)
  %1583 = extractvalue { i32, i1 } %1582, 1, !nosanitize !46
  br i1 %1583, label %1539, label %1584, !prof !49, !nosanitize !46

1584:                                             ; preds = %1581
  %1585 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1572, i32 -5)
  %1586 = extractvalue { i32, i1 } %1585, 1, !nosanitize !46
  br i1 %1586, label %1539, label %1587, !prof !49, !nosanitize !46

1587:                                             ; preds = %1584
  %1588 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1572, i32 -6)
  %1589 = extractvalue { i32, i1 } %1588, 1, !nosanitize !46
  br i1 %1589, label %1539, label %1590, !prof !49, !nosanitize !46

1590:                                             ; preds = %1587
  %1591 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1572, i32 -7)
  %1592 = extractvalue { i32, i1 } %1591, 1, !nosanitize !46
  br i1 %1592, label %1539, label %1593, !prof !49, !nosanitize !46

1593:                                             ; preds = %1590
  %1594 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1572, i32 -8)
  %1595 = extractvalue { i32, i1 } %1594, 1, !nosanitize !46
  br i1 %1595, label %1539, label %1596, !prof !49, !nosanitize !46

1596:                                             ; preds = %1593
  %1597 = extractvalue { i32, i1 } %1591, 0, !nosanitize !46
  %1598 = sext i32 %1597 to i64
  %1599 = getelementptr inbounds i8, ptr %2, i64 %1598
  %1600 = load i8, ptr %1599, align 1, !tbaa !5
  %1601 = zext i8 %1600 to i64
  %1602 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1601
  %1603 = load i64, ptr %1602, align 8, !tbaa !14
  %1604 = extractvalue { i32, i1 } %1588, 0, !nosanitize !46
  %1605 = sext i32 %1604 to i64
  %1606 = getelementptr inbounds i8, ptr %2, i64 %1605
  %1607 = load i8, ptr %1606, align 1, !tbaa !5
  %1608 = zext i8 %1607 to i64
  %1609 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1608
  %1610 = load i64, ptr %1609, align 8, !tbaa !14
  %1611 = extractvalue { i32, i1 } %1585, 0, !nosanitize !46
  %1612 = sext i32 %1611 to i64
  %1613 = getelementptr inbounds i8, ptr %2, i64 %1612
  %1614 = load i8, ptr %1613, align 1, !tbaa !5
  %1615 = zext i8 %1614 to i64
  %1616 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1615
  %1617 = load i64, ptr %1616, align 8, !tbaa !14
  %1618 = extractvalue { i32, i1 } %1582, 0, !nosanitize !46
  %1619 = sext i32 %1618 to i64
  %1620 = getelementptr inbounds i8, ptr %2, i64 %1619
  %1621 = load i8, ptr %1620, align 1, !tbaa !5
  %1622 = zext i8 %1621 to i64
  %1623 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1622
  %1624 = load i64, ptr %1623, align 8, !tbaa !14
  %1625 = extractvalue { i32, i1 } %1579, 0, !nosanitize !46
  %1626 = sext i32 %1625 to i64
  %1627 = getelementptr inbounds i8, ptr %2, i64 %1626
  %1628 = load i8, ptr %1627, align 1, !tbaa !5
  %1629 = zext i8 %1628 to i64
  %1630 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1629
  %1631 = load i64, ptr %1630, align 8, !tbaa !14
  %1632 = extractvalue { i32, i1 } %1576, 0, !nosanitize !46
  %1633 = sext i32 %1632 to i64
  %1634 = getelementptr inbounds i8, ptr %2, i64 %1633
  %1635 = load i8, ptr %1634, align 1, !tbaa !5
  %1636 = zext i8 %1635 to i64
  %1637 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1636
  %1638 = load i64, ptr %1637, align 8, !tbaa !14
  %1639 = sext i32 %1572 to i64
  %1640 = getelementptr i8, ptr %2, i64 %1639
  %1641 = getelementptr i8, ptr %1640, i64 -1
  %1642 = load i8, ptr %1641, align 1, !tbaa !5
  %1643 = zext i8 %1642 to i64
  %1644 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1643
  %1645 = load i64, ptr %1644, align 8, !tbaa !14
  %1646 = and i64 %1645, 255
  %1647 = lshr i64 %1571, %1646
  %1648 = or i64 %1647, %1645
  %1649 = and i64 %1638, 255
  %1650 = lshr i64 %1648, %1649
  %1651 = or i64 %1650, %1638
  %1652 = and i64 %1631, 255
  %1653 = lshr i64 %1651, %1652
  %1654 = or i64 %1653, %1631
  %1655 = and i64 %1624, 255
  %1656 = lshr i64 %1654, %1655
  %1657 = or i64 %1656, %1624
  %1658 = and i64 %1617, 255
  %1659 = lshr i64 %1657, %1658
  %1660 = or i64 %1659, %1617
  %1661 = and i64 %1610, 255
  %1662 = lshr i64 %1660, %1661
  %1663 = or i64 %1662, %1610
  %1664 = and i64 %1603, 255
  %1665 = lshr i64 %1663, %1664
  %1666 = or i64 %1665, %1603
  %1667 = extractvalue { i32, i1 } %1594, 0, !nosanitize !46
  %1668 = sext i32 %1667 to i64
  %1669 = getelementptr inbounds i8, ptr %2, i64 %1668
  %1670 = load i8, ptr %1669, align 1, !tbaa !5
  %1671 = zext i8 %1670 to i64
  %1672 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1671
  %1673 = load i64, ptr %1672, align 8, !tbaa !14
  %1674 = and i64 %1673, 255
  %1675 = lshr i64 %1666, %1674
  %1676 = and i64 %1673, -256
  %1677 = or i64 %1675, %1676
  %1678 = add i64 %1603, %1569
  %1679 = add i64 %1678, %1610
  %1680 = add i64 %1679, %1617
  %1681 = add i64 %1680, %1624
  %1682 = add i64 %1681, %1631
  %1683 = add i64 %1682, %1638
  %1684 = add i64 %1683, %1645
  %1685 = add i64 %1684, %1673
  %1686 = and i64 %1685, 255
  %1687 = lshr i64 %1686, 3
  %1688 = sub nsw i64 64, %1686
  %1689 = lshr i64 %1677, %1688
  %1690 = and i64 %1685, 7
  store i64 %1689, ptr %1570, align 1, !tbaa !14
  %1691 = getelementptr inbounds nuw i8, ptr %1570, i64 %1687
  br label %1692

1692:                                             ; preds = %1596, %1568
  %1693 = phi i64 [ %1569, %1568 ], [ %1690, %1596 ]
  %1694 = phi ptr [ %1570, %1568 ], [ %1691, %1596 ]
  %1695 = phi i64 [ %1571, %1568 ], [ %1677, %1596 ]
  %1696 = phi i32 [ %1572, %1568 ], [ %1667, %1596 ]
  %1697 = getelementptr i8, ptr %2, i64 -16
  %1698 = icmp sgt i32 %1696, 0
  br i1 %1698, label %1699, label %.loopexit

1699:                                             ; preds = %1692
  %1700 = zext nneg i32 %1696 to i64
  %1701 = getelementptr i8, ptr %2, i64 -1
  %1702 = getelementptr i8, ptr %2, i64 -2
  %1703 = getelementptr i8, ptr %2, i64 -3
  %1704 = getelementptr i8, ptr %2, i64 -4
  %1705 = getelementptr i8, ptr %2, i64 -5
  %1706 = getelementptr i8, ptr %2, i64 -6
  %1707 = getelementptr i8, ptr %2, i64 -7
  br label %1708

1708:                                             ; preds = %1708, %1699
  %1709 = phi i64 [ %1700, %1699 ], [ %1880, %1708 ]
  %1710 = phi i64 [ %1695, %1699 ], [ %1872, %1708 ]
  %1711 = phi ptr [ %1694, %1699 ], [ %1879, %1708 ]
  %1712 = phi i64 [ %1693, %1699 ], [ %1878, %1708 ]
  %1713 = getelementptr i8, ptr %1701, i64 %1709
  %1714 = load i8, ptr %1713, align 1, !tbaa !5
  %1715 = zext i8 %1714 to i64
  %1716 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1715
  %1717 = load i64, ptr %1716, align 8, !tbaa !14
  %1718 = and i64 %1717, 255
  %1719 = lshr i64 %1710, %1718
  %1720 = or i64 %1719, %1717
  %1721 = add i64 %1717, %1712
  %1722 = getelementptr i8, ptr %1702, i64 %1709
  %1723 = load i8, ptr %1722, align 1, !tbaa !5
  %1724 = zext i8 %1723 to i64
  %1725 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1724
  %1726 = load i64, ptr %1725, align 8, !tbaa !14
  %1727 = and i64 %1726, 255
  %1728 = lshr i64 %1720, %1727
  %1729 = or i64 %1728, %1726
  %1730 = add i64 %1721, %1726
  %1731 = getelementptr i8, ptr %1703, i64 %1709
  %1732 = load i8, ptr %1731, align 1, !tbaa !5
  %1733 = zext i8 %1732 to i64
  %1734 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1733
  %1735 = load i64, ptr %1734, align 8, !tbaa !14
  %1736 = and i64 %1735, 255
  %1737 = lshr i64 %1729, %1736
  %1738 = or i64 %1737, %1735
  %1739 = add i64 %1730, %1735
  %1740 = getelementptr i8, ptr %1704, i64 %1709
  %1741 = load i8, ptr %1740, align 1, !tbaa !5
  %1742 = zext i8 %1741 to i64
  %1743 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1742
  %1744 = load i64, ptr %1743, align 8, !tbaa !14
  %1745 = and i64 %1744, 255
  %1746 = lshr i64 %1738, %1745
  %1747 = or i64 %1746, %1744
  %1748 = add i64 %1739, %1744
  %1749 = getelementptr i8, ptr %1705, i64 %1709
  %1750 = load i8, ptr %1749, align 1, !tbaa !5
  %1751 = zext i8 %1750 to i64
  %1752 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1751
  %1753 = load i64, ptr %1752, align 8, !tbaa !14
  %1754 = and i64 %1753, 255
  %1755 = lshr i64 %1747, %1754
  %1756 = or i64 %1755, %1753
  %1757 = add i64 %1748, %1753
  %1758 = getelementptr i8, ptr %1706, i64 %1709
  %1759 = load i8, ptr %1758, align 1, !tbaa !5
  %1760 = zext i8 %1759 to i64
  %1761 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1760
  %1762 = load i64, ptr %1761, align 8, !tbaa !14
  %1763 = and i64 %1762, 255
  %1764 = lshr i64 %1756, %1763
  %1765 = or i64 %1764, %1762
  %1766 = add i64 %1757, %1762
  %1767 = getelementptr i8, ptr %1707, i64 %1709
  %1768 = load i8, ptr %1767, align 1, !tbaa !5
  %1769 = zext i8 %1768 to i64
  %1770 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1769
  %1771 = load i64, ptr %1770, align 8, !tbaa !14
  %1772 = and i64 %1771, 255
  %1773 = lshr i64 %1765, %1772
  %1774 = or i64 %1773, %1771
  %1775 = add i64 %1766, %1771
  %1776 = getelementptr i8, ptr %2, i64 %1709
  %1777 = getelementptr i8, ptr %1776, i64 -8
  %1778 = load i8, ptr %1777, align 1, !tbaa !5
  %1779 = zext i8 %1778 to i64
  %1780 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1779
  %1781 = load i64, ptr %1780, align 8, !tbaa !14
  %1782 = and i64 %1781, 255
  %1783 = lshr i64 %1774, %1782
  %1784 = and i64 %1781, -256
  %1785 = or i64 %1783, %1784
  %1786 = add i64 %1775, %1781
  %1787 = and i64 %1786, 255
  %1788 = lshr i64 %1787, 3
  %1789 = sub nsw i64 64, %1787
  %1790 = lshr i64 %1785, %1789
  %1791 = and i64 %1786, 7
  store i64 %1790, ptr %1711, align 1, !tbaa !14
  %1792 = getelementptr inbounds nuw i8, ptr %1711, i64 %1788
  %1793 = shl i64 %1709, 32
  %sext = add i64 %1793, -60129542144
  %1794 = ashr exact i64 %sext, 32
  %1795 = getelementptr inbounds i8, ptr %2, i64 %1794
  %1796 = load i8, ptr %1795, align 1, !tbaa !5
  %1797 = zext i8 %1796 to i64
  %1798 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1797
  %1799 = load i64, ptr %1798, align 8, !tbaa !14
  %sext17 = add i64 %1793, -55834574848
  %1800 = ashr exact i64 %sext17, 32
  %1801 = getelementptr inbounds i8, ptr %2, i64 %1800
  %1802 = load i8, ptr %1801, align 1, !tbaa !5
  %1803 = zext i8 %1802 to i64
  %1804 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1803
  %1805 = load i64, ptr %1804, align 8, !tbaa !14
  %sext18 = add i64 %1793, -51539607552
  %1806 = ashr exact i64 %sext18, 32
  %1807 = getelementptr inbounds i8, ptr %2, i64 %1806
  %1808 = load i8, ptr %1807, align 1, !tbaa !5
  %1809 = zext i8 %1808 to i64
  %1810 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1809
  %1811 = load i64, ptr %1810, align 8, !tbaa !14
  %sext19 = add i64 %1793, -47244640256
  %1812 = ashr exact i64 %sext19, 32
  %1813 = getelementptr inbounds i8, ptr %2, i64 %1812
  %1814 = load i8, ptr %1813, align 1, !tbaa !5
  %1815 = zext i8 %1814 to i64
  %1816 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1815
  %1817 = load i64, ptr %1816, align 8, !tbaa !14
  %sext20 = add i64 %1793, -42949672960
  %1818 = ashr exact i64 %sext20, 32
  %1819 = getelementptr inbounds i8, ptr %2, i64 %1818
  %1820 = load i8, ptr %1819, align 1, !tbaa !5
  %1821 = zext i8 %1820 to i64
  %1822 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1821
  %1823 = load i64, ptr %1822, align 8, !tbaa !14
  %sext21 = add i64 %1793, -38654705664
  %1824 = ashr exact i64 %sext21, 32
  %1825 = getelementptr inbounds i8, ptr %2, i64 %1824
  %1826 = load i8, ptr %1825, align 1, !tbaa !5
  %1827 = zext i8 %1826 to i64
  %1828 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1827
  %1829 = load i64, ptr %1828, align 8, !tbaa !14
  %1830 = and i64 %1823, 255
  %1831 = lshr i64 %1829, %1830
  %1832 = or i64 %1831, %1823
  %1833 = and i64 %1817, 255
  %1834 = lshr i64 %1832, %1833
  %1835 = or i64 %1834, %1817
  %1836 = and i64 %1811, 255
  %1837 = lshr i64 %1835, %1836
  %1838 = or i64 %1837, %1811
  %1839 = and i64 %1805, 255
  %1840 = lshr i64 %1838, %1839
  %1841 = or i64 %1840, %1805
  %1842 = and i64 %1799, 255
  %1843 = lshr i64 %1841, %1842
  %1844 = or i64 %1843, %1799
  %sext22 = add i64 %1793, -64424509440
  %1845 = ashr exact i64 %sext22, 32
  %1846 = getelementptr inbounds i8, ptr %2, i64 %1845
  %1847 = load i8, ptr %1846, align 1, !tbaa !5
  %1848 = zext i8 %1847 to i64
  %1849 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1848
  %1850 = load i64, ptr %1849, align 8, !tbaa !14
  %1851 = and i64 %1850, 255
  %1852 = lshr i64 %1844, %1851
  %1853 = or i64 %1852, %1850
  %1854 = getelementptr i8, ptr %1697, i64 %1709
  %1855 = load i8, ptr %1854, align 1, !tbaa !5
  %1856 = zext i8 %1855 to i64
  %1857 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1856
  %1858 = load i64, ptr %1857, align 8, !tbaa !14
  %1859 = and i64 %1858, 255
  %1860 = lshr i64 %1853, %1859
  %1861 = and i64 %1858, -256
  %1862 = add i64 %1805, %1799
  %1863 = add i64 %1862, %1811
  %1864 = add i64 %1863, %1817
  %1865 = add i64 %1864, %1823
  %1866 = add i64 %1865, %1829
  %1867 = add i64 %1866, %1850
  %1868 = add i64 %1867, %1858
  %1869 = and i64 %1868, 255
  %1870 = lshr i64 %1785, %1869
  %1871 = or i64 %1870, %1861
  %1872 = or i64 %1871, %1860
  %1873 = add i64 %1868, %1791
  %1874 = and i64 %1873, 255
  %1875 = lshr i64 %1874, 3
  %1876 = sub nsw i64 64, %1874
  %1877 = lshr i64 %1872, %1876
  %1878 = and i64 %1873, 7
  store i64 %1877, ptr %1792, align 1, !tbaa !14
  %1879 = getelementptr inbounds nuw i8, ptr %1792, i64 %1875
  %1880 = add nsw i64 %1709, -16
  %1881 = icmp samesign ugt i64 %1709, 16
  br i1 %1881, label %1708, label %.loopexit, !llvm.loop !76

1882:                                             ; preds = %271
  %1883 = srem i32 %29, 9
  %1884 = icmp sgt i32 %1883, 0
  br i1 %1884, label %1885, label %1950

1885:                                             ; preds = %1882
  %1886 = and i32 %1883, 1
  %1887 = icmp eq i32 %1883, 1
  br i1 %1887, label %.thread58, label %1888

1888:                                             ; preds = %1885
  %1889 = and i32 %1883, 2147483646
  br label %1890

1890:                                             ; preds = %1890, %1888
  %1891 = phi i32 [ %29, %1888 ], [ %1907, %1890 ]
  %1892 = phi i64 [ 0, %1888 ], [ %1917, %1890 ]
  %1893 = phi i64 [ 0, %1888 ], [ %1918, %1890 ]
  %1894 = phi i32 [ 0, %1888 ], [ %1919, %1890 ]
  %1895 = add i32 %1891, -1
  %1896 = sext i32 %1895 to i64
  %1897 = getelementptr inbounds i8, ptr %2, i64 %1896
  %1898 = load i8, ptr %1897, align 1, !tbaa !5
  %1899 = zext i8 %1898 to i64
  %1900 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1899
  %1901 = load i64, ptr %1900, align 8, !tbaa !14
  %1902 = and i64 %1901, 255
  %1903 = lshr i64 %1892, %1902
  %1904 = and i64 %1901, -256
  %1905 = or i64 %1903, %1904
  %1906 = add i64 %1901, %1893
  %1907 = add i32 %1891, -2
  %1908 = sext i32 %1907 to i64
  %1909 = getelementptr inbounds i8, ptr %2, i64 %1908
  %1910 = load i8, ptr %1909, align 1, !tbaa !5
  %1911 = zext i8 %1910 to i64
  %1912 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1911
  %1913 = load i64, ptr %1912, align 8, !tbaa !14
  %1914 = and i64 %1913, 255
  %1915 = lshr i64 %1905, %1914
  %1916 = and i64 %1913, -256
  %1917 = or i64 %1915, %1916
  %1918 = add i64 %1906, %1913
  %1919 = add i32 %1894, 2
  %1920 = icmp eq i32 %1919, %1889
  br i1 %1920, label %1922, label %1890, !llvm.loop !77

1921:                                             ; preds = %1978, %1975, %1972, %1969, %1966, %1963, %1960, %1957
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

1922:                                             ; preds = %1890
  %1923 = sub i32 %29, %1889
  %1924 = icmp eq i32 %1886, 0
  br i1 %1924, label %1940, label %.thread58

.thread58:                                        ; preds = %1885, %1922
  %1925 = phi i64 [ %1918, %1922 ], [ 0, %1885 ]
  %1926 = phi i64 [ %1917, %1922 ], [ 0, %1885 ]
  %1927 = phi i32 [ %1923, %1922 ], [ %29, %1885 ]
  %1928 = add i32 %1927, -1
  %1929 = sext i32 %1928 to i64
  %1930 = getelementptr inbounds i8, ptr %2, i64 %1929
  %1931 = load i8, ptr %1930, align 1, !tbaa !5
  %1932 = zext i8 %1931 to i64
  %1933 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1932
  %1934 = load i64, ptr %1933, align 8, !tbaa !14
  %1935 = and i64 %1934, 255
  %1936 = lshr i64 %1926, %1935
  %1937 = and i64 %1934, -256
  %1938 = or i64 %1936, %1937
  %1939 = add i64 %1934, %1925
  br label %1940

1940:                                             ; preds = %.thread58, %1922
  %1941 = phi i64 [ %1917, %1922 ], [ %1938, %.thread58 ]
  %1942 = phi i64 [ %1918, %1922 ], [ %1939, %.thread58 ]
  %1943 = sub nsw i32 %29, %1883
  %1944 = and i64 %1942, 255
  %1945 = lshr i64 %1944, 3
  %1946 = sub nsw i64 64, %1944
  %1947 = lshr i64 %1941, %1946
  %1948 = and i64 %1942, 7
  store i64 %1947, ptr %0, align 1, !tbaa !14
  %1949 = getelementptr inbounds nuw i8, ptr %0, i64 %1945
  br label %1950

1950:                                             ; preds = %1940, %1882
  %1951 = phi i64 [ %1948, %1940 ], [ 0, %1882 ]
  %1952 = phi ptr [ %1949, %1940 ], [ %0, %1882 ]
  %1953 = phi i64 [ %1941, %1940 ], [ 0, %1882 ]
  %1954 = phi i32 [ %1943, %1940 ], [ %29, %1882 ]
  %1955 = srem i32 %1954, 18
  %1956 = icmp eq i32 %1955, 0
  br i1 %1956, label %2087, label %1957

1957:                                             ; preds = %1950
  %1958 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1954, i32 -1)
  %1959 = extractvalue { i32, i1 } %1958, 1, !nosanitize !46
  br i1 %1959, label %1921, label %1960, !prof !49, !nosanitize !46

1960:                                             ; preds = %1957
  %1961 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1954, i32 -2)
  %1962 = extractvalue { i32, i1 } %1961, 1, !nosanitize !46
  br i1 %1962, label %1921, label %1963, !prof !49, !nosanitize !46

1963:                                             ; preds = %1960
  %1964 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1954, i32 -4)
  %1965 = extractvalue { i32, i1 } %1964, 1, !nosanitize !46
  br i1 %1965, label %1921, label %1966, !prof !49, !nosanitize !46

1966:                                             ; preds = %1963
  %1967 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1954, i32 -5)
  %1968 = extractvalue { i32, i1 } %1967, 1, !nosanitize !46
  br i1 %1968, label %1921, label %1969, !prof !49, !nosanitize !46

1969:                                             ; preds = %1966
  %1970 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1954, i32 -6)
  %1971 = extractvalue { i32, i1 } %1970, 1, !nosanitize !46
  br i1 %1971, label %1921, label %1972, !prof !49, !nosanitize !46

1972:                                             ; preds = %1969
  %1973 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1954, i32 -7)
  %1974 = extractvalue { i32, i1 } %1973, 1, !nosanitize !46
  br i1 %1974, label %1921, label %1975, !prof !49, !nosanitize !46

1975:                                             ; preds = %1972
  %1976 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1954, i32 -8)
  %1977 = extractvalue { i32, i1 } %1976, 1, !nosanitize !46
  br i1 %1977, label %1921, label %1978, !prof !49, !nosanitize !46

1978:                                             ; preds = %1975
  %1979 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1954, i32 -9)
  %1980 = extractvalue { i32, i1 } %1979, 1, !nosanitize !46
  br i1 %1980, label %1921, label %1981, !prof !49, !nosanitize !46

1981:                                             ; preds = %1978
  %1982 = extractvalue { i32, i1 } %1976, 0, !nosanitize !46
  %1983 = sext i32 %1982 to i64
  %1984 = getelementptr inbounds i8, ptr %2, i64 %1983
  %1985 = load i8, ptr %1984, align 1, !tbaa !5
  %1986 = zext i8 %1985 to i64
  %1987 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1986
  %1988 = load i64, ptr %1987, align 8, !tbaa !14
  %1989 = extractvalue { i32, i1 } %1973, 0, !nosanitize !46
  %1990 = sext i32 %1989 to i64
  %1991 = getelementptr inbounds i8, ptr %2, i64 %1990
  %1992 = load i8, ptr %1991, align 1, !tbaa !5
  %1993 = zext i8 %1992 to i64
  %1994 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1993
  %1995 = load i64, ptr %1994, align 8, !tbaa !14
  %1996 = extractvalue { i32, i1 } %1970, 0, !nosanitize !46
  %1997 = sext i32 %1996 to i64
  %1998 = getelementptr inbounds i8, ptr %2, i64 %1997
  %1999 = load i8, ptr %1998, align 1, !tbaa !5
  %2000 = zext i8 %1999 to i64
  %2001 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2000
  %2002 = load i64, ptr %2001, align 8, !tbaa !14
  %2003 = extractvalue { i32, i1 } %1967, 0, !nosanitize !46
  %2004 = sext i32 %2003 to i64
  %2005 = getelementptr inbounds i8, ptr %2, i64 %2004
  %2006 = load i8, ptr %2005, align 1, !tbaa !5
  %2007 = zext i8 %2006 to i64
  %2008 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2007
  %2009 = load i64, ptr %2008, align 8, !tbaa !14
  %2010 = extractvalue { i32, i1 } %1964, 0, !nosanitize !46
  %2011 = sext i32 %2010 to i64
  %2012 = getelementptr inbounds i8, ptr %2, i64 %2011
  %2013 = load i8, ptr %2012, align 1, !tbaa !5
  %2014 = zext i8 %2013 to i64
  %2015 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2014
  %2016 = load i64, ptr %2015, align 8, !tbaa !14
  %2017 = sext i32 %1954 to i64
  %2018 = getelementptr i8, ptr %2, i64 %2017
  %2019 = getelementptr i8, ptr %2018, i64 -3
  %2020 = load i8, ptr %2019, align 1, !tbaa !5
  %2021 = zext i8 %2020 to i64
  %2022 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2021
  %2023 = load i64, ptr %2022, align 8, !tbaa !14
  %2024 = extractvalue { i32, i1 } %1961, 0, !nosanitize !46
  %2025 = sext i32 %2024 to i64
  %2026 = getelementptr inbounds i8, ptr %2, i64 %2025
  %2027 = load i8, ptr %2026, align 1, !tbaa !5
  %2028 = zext i8 %2027 to i64
  %2029 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2028
  %2030 = load i64, ptr %2029, align 8, !tbaa !14
  %2031 = extractvalue { i32, i1 } %1958, 0, !nosanitize !46
  %2032 = sext i32 %2031 to i64
  %2033 = getelementptr inbounds i8, ptr %2, i64 %2032
  %2034 = load i8, ptr %2033, align 1, !tbaa !5
  %2035 = zext i8 %2034 to i64
  %2036 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2035
  %2037 = load i64, ptr %2036, align 8, !tbaa !14
  %2038 = and i64 %2037, 255
  %2039 = lshr i64 %1953, %2038
  %2040 = or i64 %2039, %2037
  %2041 = and i64 %2030, 255
  %2042 = lshr i64 %2040, %2041
  %2043 = or i64 %2042, %2030
  %2044 = and i64 %2023, 255
  %2045 = lshr i64 %2043, %2044
  %2046 = or i64 %2045, %2023
  %2047 = and i64 %2016, 255
  %2048 = lshr i64 %2046, %2047
  %2049 = or i64 %2048, %2016
  %2050 = and i64 %2009, 255
  %2051 = lshr i64 %2049, %2050
  %2052 = or i64 %2051, %2009
  %2053 = and i64 %2002, 255
  %2054 = lshr i64 %2052, %2053
  %2055 = or i64 %2054, %2002
  %2056 = and i64 %1995, 255
  %2057 = lshr i64 %2055, %2056
  %2058 = or i64 %2057, %1995
  %2059 = and i64 %1988, 255
  %2060 = lshr i64 %2058, %2059
  %2061 = or i64 %2060, %1988
  %2062 = extractvalue { i32, i1 } %1979, 0, !nosanitize !46
  %2063 = sext i32 %2062 to i64
  %2064 = getelementptr inbounds i8, ptr %2, i64 %2063
  %2065 = load i8, ptr %2064, align 1, !tbaa !5
  %2066 = zext i8 %2065 to i64
  %2067 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2066
  %2068 = load i64, ptr %2067, align 8, !tbaa !14
  %2069 = and i64 %2068, 255
  %2070 = lshr i64 %2061, %2069
  %2071 = or i64 %2070, %2068
  %2072 = add i64 %1988, %1951
  %2073 = add i64 %2072, %1995
  %2074 = add i64 %2073, %2002
  %2075 = add i64 %2074, %2009
  %2076 = add i64 %2075, %2016
  %2077 = add i64 %2076, %2023
  %2078 = add i64 %2077, %2030
  %2079 = add i64 %2078, %2037
  %2080 = add i64 %2079, %2068
  %2081 = and i64 %2080, 255
  %2082 = lshr i64 %2081, 3
  %2083 = sub nsw i64 64, %2081
  %2084 = lshr i64 %2071, %2083
  %2085 = and i64 %2080, 7
  store i64 %2084, ptr %1952, align 1, !tbaa !14
  %2086 = getelementptr inbounds nuw i8, ptr %1952, i64 %2082
  br label %2087

2087:                                             ; preds = %1981, %1950
  %2088 = phi i64 [ %1951, %1950 ], [ %2085, %1981 ]
  %2089 = phi ptr [ %1952, %1950 ], [ %2086, %1981 ]
  %2090 = phi i64 [ %1953, %1950 ], [ %2071, %1981 ]
  %2091 = phi i32 [ %1954, %1950 ], [ %2062, %1981 ]
  %2092 = getelementptr i8, ptr %2, i64 -18
  %2093 = icmp sgt i32 %2091, 0
  br i1 %2093, label %2094, label %.loopexit

2094:                                             ; preds = %2087
  %2095 = zext nneg i32 %2091 to i64
  %2096 = getelementptr i8, ptr %2, i64 -1
  %2097 = getelementptr i8, ptr %2, i64 -2
  %2098 = getelementptr i8, ptr %2, i64 -3
  %2099 = getelementptr i8, ptr %2, i64 -4
  %2100 = getelementptr i8, ptr %2, i64 -5
  %2101 = getelementptr i8, ptr %2, i64 -6
  %2102 = getelementptr i8, ptr %2, i64 -7
  %2103 = getelementptr i8, ptr %2, i64 -8
  br label %2104

2104:                                             ; preds = %2104, %2094
  %2105 = phi i64 [ %2095, %2094 ], [ %2293, %2104 ]
  %2106 = phi i64 [ %2090, %2094 ], [ %2285, %2104 ]
  %2107 = phi ptr [ %2089, %2094 ], [ %2292, %2104 ]
  %2108 = phi i64 [ %2088, %2094 ], [ %2291, %2104 ]
  %2109 = getelementptr i8, ptr %2096, i64 %2105
  %2110 = load i8, ptr %2109, align 1, !tbaa !5
  %2111 = zext i8 %2110 to i64
  %2112 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2111
  %2113 = load i64, ptr %2112, align 8, !tbaa !14
  %2114 = and i64 %2113, 255
  %2115 = lshr i64 %2106, %2114
  %2116 = or i64 %2115, %2113
  %2117 = add i64 %2113, %2108
  %2118 = getelementptr i8, ptr %2097, i64 %2105
  %2119 = load i8, ptr %2118, align 1, !tbaa !5
  %2120 = zext i8 %2119 to i64
  %2121 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2120
  %2122 = load i64, ptr %2121, align 8, !tbaa !14
  %2123 = and i64 %2122, 255
  %2124 = lshr i64 %2116, %2123
  %2125 = or i64 %2124, %2122
  %2126 = add i64 %2117, %2122
  %2127 = getelementptr i8, ptr %2098, i64 %2105
  %2128 = load i8, ptr %2127, align 1, !tbaa !5
  %2129 = zext i8 %2128 to i64
  %2130 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2129
  %2131 = load i64, ptr %2130, align 8, !tbaa !14
  %2132 = and i64 %2131, 255
  %2133 = lshr i64 %2125, %2132
  %2134 = or i64 %2133, %2131
  %2135 = add i64 %2126, %2131
  %2136 = getelementptr i8, ptr %2099, i64 %2105
  %2137 = load i8, ptr %2136, align 1, !tbaa !5
  %2138 = zext i8 %2137 to i64
  %2139 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2138
  %2140 = load i64, ptr %2139, align 8, !tbaa !14
  %2141 = and i64 %2140, 255
  %2142 = lshr i64 %2134, %2141
  %2143 = or i64 %2142, %2140
  %2144 = add i64 %2135, %2140
  %2145 = getelementptr i8, ptr %2100, i64 %2105
  %2146 = load i8, ptr %2145, align 1, !tbaa !5
  %2147 = zext i8 %2146 to i64
  %2148 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2147
  %2149 = load i64, ptr %2148, align 8, !tbaa !14
  %2150 = and i64 %2149, 255
  %2151 = lshr i64 %2143, %2150
  %2152 = or i64 %2151, %2149
  %2153 = add i64 %2144, %2149
  %2154 = getelementptr i8, ptr %2101, i64 %2105
  %2155 = load i8, ptr %2154, align 1, !tbaa !5
  %2156 = zext i8 %2155 to i64
  %2157 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2156
  %2158 = load i64, ptr %2157, align 8, !tbaa !14
  %2159 = and i64 %2158, 255
  %2160 = lshr i64 %2152, %2159
  %2161 = or i64 %2160, %2158
  %2162 = add i64 %2153, %2158
  %2163 = getelementptr i8, ptr %2102, i64 %2105
  %2164 = load i8, ptr %2163, align 1, !tbaa !5
  %2165 = zext i8 %2164 to i64
  %2166 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2165
  %2167 = load i64, ptr %2166, align 8, !tbaa !14
  %2168 = and i64 %2167, 255
  %2169 = lshr i64 %2161, %2168
  %2170 = or i64 %2169, %2167
  %2171 = add i64 %2162, %2167
  %2172 = getelementptr i8, ptr %2103, i64 %2105
  %2173 = load i8, ptr %2172, align 1, !tbaa !5
  %2174 = zext i8 %2173 to i64
  %2175 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2174
  %2176 = load i64, ptr %2175, align 8, !tbaa !14
  %2177 = and i64 %2176, 255
  %2178 = lshr i64 %2170, %2177
  %2179 = or i64 %2178, %2176
  %2180 = add i64 %2171, %2176
  %2181 = getelementptr i8, ptr %2, i64 %2105
  %2182 = getelementptr i8, ptr %2181, i64 -9
  %2183 = load i8, ptr %2182, align 1, !tbaa !5
  %2184 = zext i8 %2183 to i64
  %2185 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2184
  %2186 = load i64, ptr %2185, align 8, !tbaa !14
  %2187 = and i64 %2186, 255
  %2188 = lshr i64 %2179, %2187
  %2189 = or i64 %2188, %2186
  %2190 = add i64 %2180, %2186
  %2191 = and i64 %2190, 255
  %2192 = lshr i64 %2191, 3
  %2193 = sub nsw i64 64, %2191
  %2194 = lshr i64 %2189, %2193
  %2195 = and i64 %2190, 7
  store i64 %2194, ptr %2107, align 1, !tbaa !14
  %2196 = getelementptr inbounds nuw i8, ptr %2107, i64 %2192
  %2197 = shl i64 %2105, 32
  %sext42 = add i64 %2197, -68719476736
  %2198 = ashr exact i64 %sext42, 32
  %2199 = getelementptr inbounds i8, ptr %2, i64 %2198
  %2200 = load i8, ptr %2199, align 1, !tbaa !5
  %2201 = zext i8 %2200 to i64
  %2202 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2201
  %2203 = load i64, ptr %2202, align 8, !tbaa !14
  %sext43 = add i64 %2197, -64424509440
  %2204 = ashr exact i64 %sext43, 32
  %2205 = getelementptr inbounds i8, ptr %2, i64 %2204
  %2206 = load i8, ptr %2205, align 1, !tbaa !5
  %2207 = zext i8 %2206 to i64
  %2208 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2207
  %2209 = load i64, ptr %2208, align 8, !tbaa !14
  %sext44 = add i64 %2197, -60129542144
  %2210 = ashr exact i64 %sext44, 32
  %2211 = getelementptr inbounds i8, ptr %2, i64 %2210
  %2212 = load i8, ptr %2211, align 1, !tbaa !5
  %2213 = zext i8 %2212 to i64
  %2214 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2213
  %2215 = load i64, ptr %2214, align 8, !tbaa !14
  %sext45 = add i64 %2197, -55834574848
  %2216 = ashr exact i64 %sext45, 32
  %2217 = getelementptr inbounds i8, ptr %2, i64 %2216
  %2218 = load i8, ptr %2217, align 1, !tbaa !5
  %2219 = zext i8 %2218 to i64
  %2220 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2219
  %2221 = load i64, ptr %2220, align 8, !tbaa !14
  %sext46 = add i64 %2197, -51539607552
  %2222 = ashr exact i64 %sext46, 32
  %2223 = getelementptr inbounds i8, ptr %2, i64 %2222
  %2224 = load i8, ptr %2223, align 1, !tbaa !5
  %2225 = zext i8 %2224 to i64
  %2226 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2225
  %2227 = load i64, ptr %2226, align 8, !tbaa !14
  %sext47 = add i64 %2197, -47244640256
  %2228 = ashr exact i64 %sext47, 32
  %2229 = getelementptr inbounds i8, ptr %2, i64 %2228
  %2230 = load i8, ptr %2229, align 1, !tbaa !5
  %2231 = zext i8 %2230 to i64
  %2232 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2231
  %2233 = load i64, ptr %2232, align 8, !tbaa !14
  %sext48 = add i64 %2197, -42949672960
  %2234 = ashr exact i64 %sext48, 32
  %2235 = getelementptr inbounds i8, ptr %2, i64 %2234
  %2236 = load i8, ptr %2235, align 1, !tbaa !5
  %2237 = zext i8 %2236 to i64
  %2238 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2237
  %2239 = load i64, ptr %2238, align 8, !tbaa !14
  %2240 = and i64 %2233, 255
  %2241 = lshr i64 %2239, %2240
  %2242 = or i64 %2241, %2233
  %2243 = and i64 %2227, 255
  %2244 = lshr i64 %2242, %2243
  %2245 = or i64 %2244, %2227
  %2246 = and i64 %2221, 255
  %2247 = lshr i64 %2245, %2246
  %2248 = or i64 %2247, %2221
  %2249 = and i64 %2215, 255
  %2250 = lshr i64 %2248, %2249
  %2251 = or i64 %2250, %2215
  %2252 = and i64 %2209, 255
  %2253 = lshr i64 %2251, %2252
  %2254 = or i64 %2253, %2209
  %2255 = and i64 %2203, 255
  %2256 = lshr i64 %2254, %2255
  %2257 = or i64 %2256, %2203
  %sext49 = add i64 %2197, -73014444032
  %2258 = ashr exact i64 %sext49, 32
  %2259 = getelementptr inbounds i8, ptr %2, i64 %2258
  %2260 = load i8, ptr %2259, align 1, !tbaa !5
  %2261 = zext i8 %2260 to i64
  %2262 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2261
  %2263 = load i64, ptr %2262, align 8, !tbaa !14
  %2264 = and i64 %2263, 255
  %2265 = lshr i64 %2257, %2264
  %2266 = or i64 %2265, %2263
  %2267 = getelementptr i8, ptr %2092, i64 %2105
  %2268 = load i8, ptr %2267, align 1, !tbaa !5
  %2269 = zext i8 %2268 to i64
  %2270 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2269
  %2271 = load i64, ptr %2270, align 8, !tbaa !14
  %2272 = and i64 %2271, 255
  %2273 = lshr i64 %2266, %2272
  %2274 = add i64 %2209, %2203
  %2275 = add i64 %2274, %2215
  %2276 = add i64 %2275, %2221
  %2277 = add i64 %2276, %2227
  %2278 = add i64 %2277, %2233
  %2279 = add i64 %2278, %2239
  %2280 = add i64 %2279, %2263
  %2281 = add i64 %2280, %2271
  %2282 = and i64 %2281, 255
  %2283 = lshr i64 %2189, %2282
  %2284 = or i64 %2283, %2273
  %2285 = or i64 %2284, %2271
  %2286 = add i64 %2281, %2195
  %2287 = and i64 %2286, 255
  %2288 = lshr i64 %2287, 3
  %2289 = sub nsw i64 64, %2287
  %2290 = lshr i64 %2285, %2289
  %2291 = and i64 %2286, 7
  store i64 %2290, ptr %2196, align 1, !tbaa !14
  %2292 = getelementptr inbounds nuw i8, ptr %2196, i64 %2288
  %2293 = add nsw i64 %2105, -18
  %2294 = icmp samesign ugt i64 %2105, 18
  br i1 %2294, label %2104, label %.loopexit, !llvm.loop !76

.loopexit:                                        ; preds = %1708, %1345, %1016, %720, %438, %2104, %169, %2087, %1692, %1330, %1002, %707, %425, %157
  %2295 = phi i64 [ %158, %157 ], [ %2088, %2087 ], [ %426, %425 ], [ %708, %707 ], [ %1003, %1002 ], [ %1331, %1330 ], [ %1693, %1692 ], [ %551, %438 ], [ %831, %720 ], [ %1148, %1016 ], [ %1496, %1345 ], [ %265, %169 ], [ %2291, %2104 ], [ %1878, %1708 ]
  %2296 = phi ptr [ %159, %157 ], [ %2089, %2087 ], [ %427, %425 ], [ %709, %707 ], [ %1004, %1002 ], [ %1332, %1330 ], [ %1694, %1692 ], [ %552, %438 ], [ %832, %720 ], [ %1149, %1016 ], [ %1497, %1345 ], [ %268, %169 ], [ %2292, %2104 ], [ %1879, %1708 ]
  %2297 = phi i64 [ %160, %157 ], [ %2090, %2087 ], [ %428, %425 ], [ %710, %707 ], [ %1005, %1002 ], [ %1333, %1330 ], [ %1695, %1692 ], [ %545, %438 ], [ %825, %720 ], [ %1142, %1016 ], [ %1490, %1345 ], [ %259, %169 ], [ %2285, %2104 ], [ %1872, %1708 ]
  %2298 = lshr i64 %2297, 1
  %2299 = or disjoint i64 %2298, -9223372036854775808
  %2300 = add nuw nsw i64 %2295, -9223372036854775807
  %2301 = and i64 %2300, 255
  %2302 = lshr i64 %2301, 3
  %2303 = sub nuw nsw i64 64, %2301
  %2304 = lshr i64 %2299, %2303
  store i64 %2304, ptr %2296, align 1, !tbaa !14
  %2305 = getelementptr inbounds nuw i8, ptr %2296, i64 %2302
  %2306 = icmp ugt ptr %2305, %19
  %2307 = select i1 %2306, ptr %19, ptr %2305
  %2308 = icmp ult ptr %2307, %19
  br i1 %2308, label %2309, label %2317

2309:                                             ; preds = %.loopexit
  %2310 = and i64 %2300, 7
  %2311 = ptrtoint ptr %2307 to i64
  %2312 = ptrtoint ptr %0 to i64
  %2313 = icmp ne i64 %2310, 0
  %2314 = zext i1 %2313 to i64
  %2315 = sub i64 %2314, %2312
  %2316 = add i64 %2315, %2311
  br label %2317

2317:                                             ; preds = %2309, %.loopexit, %17, %11, %9
  %2318 = phi i64 [ %10, %9 ], [ 0, %17 ], [ 0, %11 ], [ %2316, %2309 ], [ 0, %.loopexit ]
  ret i64 %2318
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
  br i1 %25, label %26, label %10, !llvm.loop !78

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
  br i1 %39, label %.loopexit, label %30, !llvm.loop !79

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
  br i1 %38, label %39, label %23, !llvm.loop !80

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
  br i1 %52, label %.loopexit16, label %43, !llvm.loop !81

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
  br i1 %93, label %.loopexit, label %67, !llvm.loop !82

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
  br i1 %130, label %131, label %.preheader, !llvm.loop !83

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
  br i1 %139, label %._crit_edge, label %.lr.ph, !prof !47, !llvm.loop !84, !nosanitize !46

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
  br i1 %152, label %153, label %138, !llvm.loop !84

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
  br i1 %166, label %.loopexit, label %94, !llvm.loop !82

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
  br i1 %24, label %234, label %25

25:                                               ; preds = %12
  %26 = icmp eq i64 %3, 0
  %27 = icmp eq i64 %1, 0
  %28 = or i1 %27, %26
  br i1 %28, label %234, label %29

29:                                               ; preds = %25
  %30 = icmp ugt i64 %3, 131072
  br i1 %30, label %234, label %31

31:                                               ; preds = %29
  %32 = icmp ugt i32 %5, 12
  br i1 %32, label %234, label %33

33:                                               ; preds = %31
  %34 = icmp ugt i32 %4, 255
  br i1 %34, label %234, label %35

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
  br label %234

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
  br i1 %65, label %66, label %234

66:                                               ; preds = %56, %51
  %67 = getelementptr inbounds nuw i8, ptr %22, i64 3080
  %68 = call i64 @HIST_count_wksp(ptr noundef %22, ptr noundef nonnull %13, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %67, i64 noundef 4096) #17
  %69 = icmp ult i64 %68, -119
  br i1 %69, label %70, label %234

70:                                               ; preds = %66
  %71 = icmp eq i64 %68, %3
  br i1 %71, label %72, label %74

72:                                               ; preds = %70
  %73 = load i8, ptr %2, align 1, !tbaa !5
  store i8 %73, ptr %0, align 1, !tbaa !5
  br label %234

74:                                               ; preds = %70
  %75 = lshr i64 %3, 7
  %76 = add nuw nsw i64 %75, 4
  %77 = icmp ugt i64 %68, %76
  br i1 %77, label %78, label %234

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
  br label %234

92:                                               ; preds = %.thread, %89, %86, %78
  %93 = load i32, ptr %13, align 4, !tbaa !19
  %94 = getelementptr inbounds nuw i8, ptr %22, i64 1024
  %95 = call i32 @HUF_optimalTableLog(i32 noundef %41, i64 noundef %3, i32 noundef %93, ptr noundef nonnull %67, i64 noundef 4864, ptr noundef nonnull %94, ptr noundef nonnull %20, i32 noundef %11)
  %96 = load i32, ptr %13, align 4, !tbaa !19
  %97 = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %94, ptr noundef nonnull %20, i32 noundef %96, i32 noundef %95, ptr noundef nonnull %67, i64 noundef 4864)
  %98 = icmp ult i64 %97, -119
  br i1 %98, label %99, label %234

99:                                               ; preds = %92
  %100 = trunc nuw nsw i64 %97 to i32
  %101 = load i32, ptr %13, align 4, !tbaa !19
  %102 = call i64 @HUF_writeCTable_wksp(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %94, i32 noundef %101, i32 noundef %100, ptr noundef nonnull %67, i64 noundef 748)
  %103 = icmp ult i64 %102, -119
  br i1 %103, label %104, label %234

104:                                              ; preds = %99
  br i1 %44, label %224, label %105

105:                                              ; preds = %104
  %106 = load i32, ptr %10, align 4, !tbaa !19
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %221, label %108

108:                                              ; preds = %105
  %109 = load i32, ptr %13, align 4, !tbaa !19
  %110 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %111 = icmp slt i32 %109, 0
  br i1 %111, label %219, label %112

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
  br i1 %141, label %142, label %120, !llvm.loop !85

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
  br i1 %150, label %._crit_edge, label %.lr.ph, !prof !47, !llvm.loop !86, !nosanitize !46

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
  br i1 %163, label %164, label %149, !llvm.loop !86

164:                                              ; preds = %.lr.ph
  %165 = lshr i64 %162, 3
  %166 = getelementptr inbounds nuw i8, ptr %20, i64 1032
  %switch = icmp ult i32 %109, 8
  br i1 %switch, label %.preheader, label %167

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
  br i1 %194, label %195, label %173, !llvm.loop !87

195:                                              ; preds = %173
  %196 = add <2 x i64> %192, %191
  %197 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %196)
  br label %.preheader

.preheader:                                       ; preds = %164, %195
  %.ph = phi i64 [ 0, %164 ], [ %172, %195 ]
  %.ph53 = phi i64 [ 0, %164 ], [ %197, %195 ]
  br label %198

198:                                              ; preds = %.preheader, %198
  %199 = phi i64 [ %204, %198 ], [ %.ph, %.preheader ]
  %200 = phi i64 [ %210, %198 ], [ %.ph53, %.preheader ]
  %201 = getelementptr inbounds nuw [8 x i8], ptr %166, i64 %199
  %202 = load i64, ptr %201, align 8, !tbaa !14
  %203 = and i64 %202, 255
  %204 = add nuw nsw i64 %199, 1
  %205 = trunc i64 %204 to i32
  %206 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %199
  %207 = load i32, ptr %206, align 4, !tbaa !19
  %208 = zext i32 %207 to i64
  %209 = mul nuw nsw i64 %203, %208
  %210 = add i64 %209, %200
  %211 = icmp slt i32 %109, %205
  br i1 %211, label %212, label %198, !llvm.loop !88

212:                                              ; preds = %198
  %213 = lshr i64 %210, 3
  %214 = add i64 %213, %102
  %215 = icmp ugt i64 %165, %214
  %216 = add nuw i64 %102, 12
  %217 = icmp ult i64 %216, %3
  %218 = and i1 %217, %215
  br i1 %218, label %227, label %219

219:                                              ; preds = %212, %108
  %220 = call fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %23, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef %9, i32 noundef %11)
  br label %234

221:                                              ; preds = %105
  %222 = add nuw i64 %102, 12
  %223 = icmp ult i64 %222, %3
  br i1 %223, label %227, label %234

224:                                              ; preds = %104
  %225 = add nuw i64 %102, 12
  %226 = icmp ult i64 %225, %3
  br i1 %226, label %228, label %234

227:                                              ; preds = %221, %212
  store i32 0, ptr %10, align 4, !tbaa !19
  br label %228

228:                                              ; preds = %227, %224
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 %102
  %230 = icmp eq ptr %9, null
  br i1 %230, label %232, label %231

231:                                              ; preds = %228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2056) %9, ptr noundef nonnull align 8 dereferenceable(2056) %94, i64 2056, i1 false)
  br label %232

232:                                              ; preds = %231, %228
  %233 = call fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %229, ptr noundef nonnull %23, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef nonnull %94, i32 noundef %11)
  br label %234

234:                                              ; preds = %232, %224, %221, %219, %99, %92, %90, %74, %72, %66, %56, %49, %33, %31, %29, %25, %12
  %235 = phi i64 [ %50, %49 ], [ %91, %90 ], [ %233, %232 ], [ %97, %92 ], [ 0, %74 ], [ 0, %56 ], [ -66, %12 ], [ 0, %25 ], [ -72, %29 ], [ -44, %31 ], [ -46, %33 ], [ %68, %66 ], [ 1, %72 ], [ 0, %221 ], [ 0, %224 ], [ %102, %99 ], [ %220, %219 ]
  ret i64 %235
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
  br i1 %5, label %.loopexit9, label %6, !prof !49, !nosanitize !46

.loopexit9:                                       ; preds = %263, %254, %3
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

6:                                                ; preds = %3
  %7 = extractvalue { i32, i1 } %4, 0, !nosanitize !46
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = icmp slt i32 %1, %2
  br i1 %10, label %.preheader7, label %.loopexit

11:                                               ; preds = %6
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds [8 x i8], ptr %0, i64 %12
  %14 = icmp slt i32 %7, 1
  br i1 %14, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %11
  %15 = add i32 %2, 1
  %16 = sub i32 %15, %1
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %18 = load <2 x i32>, ptr %17, align 4
  %19 = extractelement <2 x i32> %18, i64 0
  %20 = load i32, ptr %13, align 4, !tbaa !41
  %21 = icmp ult i32 %20, %19
  br i1 %21, label %22, label %25

22:                                               ; preds = %.preheader.preheader
  %23 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %24 = load i64, ptr %13, align 4
  store i64 %24, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %.preheader.preheader
  %26 = phi i64 [ 8, %.preheader.preheader ], [ 0, %22 ]
  %27 = getelementptr inbounds i8, ptr %13, i64 %26
  store <2 x i32> %18, ptr %27, align 4
  %exitcond = icmp eq i32 %16, 2
  br i1 %exitcond, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %25
  %28 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %29 = load <2 x i32>, ptr %28, align 4
  %30 = extractelement <2 x i32> %29, i64 0
  %31 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %32 = load i32, ptr %31, align 4, !tbaa !41
  %33 = icmp ult i32 %32, %30
  br i1 %33, label %34, label %42

34:                                               ; preds = %.preheader.1
  %35 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %36 = load i64, ptr %31, align 4
  store i64 %36, ptr %35, align 4
  %37 = load i32, ptr %13, align 4, !tbaa !41
  %38 = icmp ult i32 %37, %30
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %41 = load i64, ptr %13, align 4
  store i64 %41, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %34, %.preheader.1
  %43 = phi i64 [ 16, %.preheader.1 ], [ 0, %39 ], [ 8, %34 ]
  %44 = getelementptr inbounds i8, ptr %13, i64 %43
  store <2 x i32> %29, ptr %44, align 4
  %exitcond.1 = icmp eq i32 %16, 3
  br i1 %exitcond.1, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %42
  %45 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %46 = load <2 x i32>, ptr %45, align 4
  %47 = extractelement <2 x i32> %46, i64 0
  %48 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %49 = load i32, ptr %48, align 4, !tbaa !41
  %50 = icmp ult i32 %49, %47
  br i1 %50, label %51, label %65

51:                                               ; preds = %.preheader.2
  %52 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %53 = load i64, ptr %48, align 4
  store i64 %53, ptr %52, align 4
  %54 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %55 = load i32, ptr %54, align 4, !tbaa !41
  %56 = icmp ult i32 %55, %47
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %59 = load i64, ptr %54, align 4
  store i64 %59, ptr %58, align 4
  %60 = load i32, ptr %13, align 4, !tbaa !41
  %61 = icmp ult i32 %60, %47
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %64 = load i64, ptr %13, align 4
  store i64 %64, ptr %63, align 4
  br label %65

65:                                               ; preds = %62, %57, %51, %.preheader.2
  %66 = phi i64 [ 24, %.preheader.2 ], [ 8, %57 ], [ 16, %51 ], [ 0, %62 ]
  %67 = getelementptr inbounds i8, ptr %13, i64 %66
  store <2 x i32> %46, ptr %67, align 4
  %exitcond.2 = icmp eq i32 %16, 4
  br i1 %exitcond.2, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %65
  %68 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %69 = load <2 x i32>, ptr %68, align 4
  %70 = extractelement <2 x i32> %69, i64 0
  %71 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %72 = load i32, ptr %71, align 4, !tbaa !41
  %73 = icmp ult i32 %72, %70
  br i1 %73, label %74, label %94

74:                                               ; preds = %.preheader.3
  %75 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %76 = load i64, ptr %71, align 4
  store i64 %76, ptr %75, align 4
  %77 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %78 = load i32, ptr %77, align 4, !tbaa !41
  %79 = icmp ult i32 %78, %70
  br i1 %79, label %80, label %94

80:                                               ; preds = %74
  %81 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %82 = load i64, ptr %77, align 4
  store i64 %82, ptr %81, align 4
  %83 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %84 = load i32, ptr %83, align 4, !tbaa !41
  %85 = icmp ult i32 %84, %70
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %88 = load i64, ptr %83, align 4
  store i64 %88, ptr %87, align 4
  %89 = load i32, ptr %13, align 4, !tbaa !41
  %90 = icmp ult i32 %89, %70
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %93 = load i64, ptr %13, align 4
  store i64 %93, ptr %92, align 4
  br label %94

94:                                               ; preds = %91, %86, %80, %74, %.preheader.3
  %95 = phi i64 [ 32, %.preheader.3 ], [ 0, %91 ], [ 24, %74 ], [ 8, %86 ], [ 16, %80 ]
  %96 = getelementptr inbounds i8, ptr %13, i64 %95
  store <2 x i32> %69, ptr %96, align 4
  %exitcond.3 = icmp eq i32 %16, 5
  br i1 %exitcond.3, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %94
  %97 = getelementptr inbounds nuw i8, ptr %13, i64 40
  %98 = load <2 x i32>, ptr %97, align 4
  %99 = extractelement <2 x i32> %98, i64 0
  %100 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %101 = load i32, ptr %100, align 4, !tbaa !41
  %102 = icmp ult i32 %101, %99
  br i1 %102, label %103, label %129

103:                                              ; preds = %.preheader.4
  %104 = getelementptr inbounds nuw i8, ptr %13, i64 40
  %105 = load i64, ptr %100, align 4
  store i64 %105, ptr %104, align 4
  %106 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %107 = load i32, ptr %106, align 4, !tbaa !41
  %108 = icmp ult i32 %107, %99
  br i1 %108, label %109, label %129

109:                                              ; preds = %103
  %110 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %111 = load i64, ptr %106, align 4
  store i64 %111, ptr %110, align 4
  %112 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %113 = load i32, ptr %112, align 4, !tbaa !41
  %114 = icmp ult i32 %113, %99
  br i1 %114, label %115, label %129

115:                                              ; preds = %109
  %116 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %117 = load i64, ptr %112, align 4
  store i64 %117, ptr %116, align 4
  %118 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %119 = load i32, ptr %118, align 4, !tbaa !41
  %120 = icmp ult i32 %119, %99
  br i1 %120, label %121, label %129

121:                                              ; preds = %115
  %122 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %123 = load i64, ptr %118, align 4
  store i64 %123, ptr %122, align 4
  %124 = load i32, ptr %13, align 4, !tbaa !41
  %125 = icmp ult i32 %124, %99
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %128 = load i64, ptr %13, align 4
  store i64 %128, ptr %127, align 4
  br label %129

129:                                              ; preds = %126, %121, %115, %109, %103, %.preheader.4
  %130 = phi i64 [ 40, %.preheader.4 ], [ 16, %115 ], [ 32, %103 ], [ 0, %126 ], [ 24, %109 ], [ 8, %121 ]
  %131 = getelementptr inbounds i8, ptr %13, i64 %130
  store <2 x i32> %98, ptr %131, align 4
  %exitcond.4 = icmp eq i32 %16, 6
  br i1 %exitcond.4, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %129
  %132 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %133 = load <2 x i32>, ptr %132, align 4
  %134 = extractelement <2 x i32> %133, i64 0
  %135 = getelementptr inbounds nuw i8, ptr %13, i64 40
  %136 = load i32, ptr %135, align 4, !tbaa !41
  %137 = icmp ult i32 %136, %134
  br i1 %137, label %138, label %170

138:                                              ; preds = %.preheader.5
  %139 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %140 = load i64, ptr %135, align 4
  store i64 %140, ptr %139, align 4
  %141 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %142 = load i32, ptr %141, align 4, !tbaa !41
  %143 = icmp ult i32 %142, %134
  br i1 %143, label %144, label %170

144:                                              ; preds = %138
  %145 = getelementptr inbounds nuw i8, ptr %13, i64 40
  %146 = load i64, ptr %141, align 4
  store i64 %146, ptr %145, align 4
  %147 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %148 = load i32, ptr %147, align 4, !tbaa !41
  %149 = icmp ult i32 %148, %134
  br i1 %149, label %150, label %170

150:                                              ; preds = %144
  %151 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %152 = load i64, ptr %147, align 4
  store i64 %152, ptr %151, align 4
  %153 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %154 = load i32, ptr %153, align 4, !tbaa !41
  %155 = icmp ult i32 %154, %134
  br i1 %155, label %156, label %170

156:                                              ; preds = %150
  %157 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %158 = load i64, ptr %153, align 4
  store i64 %158, ptr %157, align 4
  %159 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %160 = load i32, ptr %159, align 4, !tbaa !41
  %161 = icmp ult i32 %160, %134
  br i1 %161, label %162, label %170

162:                                              ; preds = %156
  %163 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %164 = load i64, ptr %159, align 4
  store i64 %164, ptr %163, align 4
  %165 = load i32, ptr %13, align 4, !tbaa !41
  %166 = icmp ult i32 %165, %134
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %169 = load i64, ptr %13, align 4
  store i64 %169, ptr %168, align 4
  br label %170

170:                                              ; preds = %167, %162, %156, %150, %144, %138, %.preheader.5
  %171 = phi i64 [ 48, %.preheader.5 ], [ 8, %162 ], [ 40, %138 ], [ 16, %156 ], [ 32, %144 ], [ 0, %167 ], [ 24, %150 ]
  %172 = getelementptr inbounds i8, ptr %13, i64 %171
  store <2 x i32> %133, ptr %172, align 4
  %exitcond.5 = icmp eq i32 %16, 7
  br i1 %exitcond.5, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %170
  %173 = getelementptr inbounds nuw i8, ptr %13, i64 56
  %174 = load <2 x i32>, ptr %173, align 4
  %175 = extractelement <2 x i32> %174, i64 0
  %176 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %177 = load i32, ptr %176, align 4, !tbaa !41
  %178 = icmp ult i32 %177, %175
  br i1 %178, label %179, label %217

179:                                              ; preds = %.preheader.6
  %180 = getelementptr inbounds nuw i8, ptr %13, i64 56
  %181 = load i64, ptr %176, align 4
  store i64 %181, ptr %180, align 4
  %182 = getelementptr inbounds nuw i8, ptr %13, i64 40
  %183 = load i32, ptr %182, align 4, !tbaa !41
  %184 = icmp ult i32 %183, %175
  br i1 %184, label %185, label %217

185:                                              ; preds = %179
  %186 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %187 = load i64, ptr %182, align 4
  store i64 %187, ptr %186, align 4
  %188 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %189 = load i32, ptr %188, align 4, !tbaa !41
  %190 = icmp ult i32 %189, %175
  br i1 %190, label %191, label %217

191:                                              ; preds = %185
  %192 = getelementptr inbounds nuw i8, ptr %13, i64 40
  %193 = load i64, ptr %188, align 4
  store i64 %193, ptr %192, align 4
  %194 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %195 = load i32, ptr %194, align 4, !tbaa !41
  %196 = icmp ult i32 %195, %175
  br i1 %196, label %197, label %217

197:                                              ; preds = %191
  %198 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %199 = load i64, ptr %194, align 4
  store i64 %199, ptr %198, align 4
  %200 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %201 = load i32, ptr %200, align 4, !tbaa !41
  %202 = icmp ult i32 %201, %175
  br i1 %202, label %203, label %217

203:                                              ; preds = %197
  %204 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %205 = load i64, ptr %200, align 4
  store i64 %205, ptr %204, align 4
  %206 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %207 = load i32, ptr %206, align 4, !tbaa !41
  %208 = icmp ult i32 %207, %175
  br i1 %208, label %209, label %217

209:                                              ; preds = %203
  %210 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %211 = load i64, ptr %206, align 4
  store i64 %211, ptr %210, align 4
  %212 = load i32, ptr %13, align 4, !tbaa !41
  %213 = icmp ult i32 %212, %175
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %216 = load i64, ptr %13, align 4
  store i64 %216, ptr %215, align 4
  br label %217

217:                                              ; preds = %214, %209, %203, %197, %191, %185, %179, %.preheader.6
  %218 = phi i64 [ 56, %.preheader.6 ], [ 0, %214 ], [ 48, %179 ], [ 8, %209 ], [ 40, %185 ], [ 24, %197 ], [ 32, %191 ], [ 16, %203 ]
  %219 = getelementptr inbounds i8, ptr %13, i64 %218
  store <2 x i32> %174, ptr %219, align 4
  br label %.loopexit

.preheader7:                                      ; preds = %9, %279
  %220 = phi i32 [ %281, %279 ], [ %1, %9 ]
  %221 = phi i32 [ %280, %279 ], [ %2, %9 ]
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [8 x i8], ptr %0, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !41
  %225 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %220, i32 -1)
  %226 = extractvalue { i32, i1 } %225, 1, !nosanitize !46
  br i1 %226, label %227, label %228, !prof !49, !nosanitize !46

227:                                              ; preds = %.preheader7
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

228:                                              ; preds = %.preheader7
  %229 = extractvalue { i32, i1 } %225, 0, !nosanitize !46
  %230 = sext i32 %220 to i64
  br label %231

231:                                              ; preds = %246, %228
  %232 = phi i64 [ %230, %228 ], [ %248, %246 ]
  %233 = phi i32 [ %229, %228 ], [ %247, %246 ]
  %234 = getelementptr inbounds [8 x i8], ptr %0, i64 %232
  %235 = load i32, ptr %234, align 4, !tbaa !41
  %236 = icmp ugt i32 %235, %224
  br i1 %236, label %237, label %246

237:                                              ; preds = %231
  %238 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %233, i32 1), !nosanitize !46
  %239 = extractvalue { i32, i1 } %238, 1, !nosanitize !46
  br i1 %239, label %.loopexit6, label %240, !prof !49, !nosanitize !46

.loopexit6:                                       ; preds = %251, %237
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !46
  unreachable, !nosanitize !46

240:                                              ; preds = %237
  %241 = extractvalue { i32, i1 } %238, 0, !nosanitize !46
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [8 x i8], ptr %0, i64 %242
  %244 = load i64, ptr %243, align 4
  %245 = load i64, ptr %234, align 4
  store i64 %245, ptr %243, align 4
  store i64 %244, ptr %234, align 4
  br label %246

246:                                              ; preds = %240, %231
  %247 = phi i32 [ %241, %240 ], [ %233, %231 ]
  %248 = add nsw i64 %232, 1
  %249 = trunc i64 %248 to i32
  %250 = icmp eq i32 %221, %249
  br i1 %250, label %251, label %231, !llvm.loop !89

251:                                              ; preds = %246
  %252 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %247, i32 1), !nosanitize !46
  %253 = extractvalue { i32, i1 } %252, 1, !nosanitize !46
  br i1 %253, label %.loopexit6, label %254, !prof !49, !nosanitize !46

254:                                              ; preds = %251
  %255 = extractvalue { i32, i1 } %252, 0, !nosanitize !46
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [8 x i8], ptr %0, i64 %256
  %258 = load i64, ptr %257, align 4
  %259 = load i64, ptr %223, align 4
  store i64 %259, ptr %257, align 4
  store i64 %258, ptr %223, align 4
  %260 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %255, i32 %220), !nosanitize !46
  %261 = extractvalue { i32, i1 } %260, 0, !nosanitize !46
  %262 = extractvalue { i32, i1 } %260, 1, !nosanitize !46
  br i1 %262, label %.loopexit9, label %263, !prof !49, !nosanitize !46

263:                                              ; preds = %254
  %264 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %221, i32 %255), !nosanitize !46
  %265 = extractvalue { i32, i1 } %264, 1, !nosanitize !46
  br i1 %265, label %.loopexit9, label %266, !prof !49, !nosanitize !46

266:                                              ; preds = %263
  %267 = extractvalue { i32, i1 } %264, 0, !nosanitize !46
  %268 = icmp slt i32 %261, %267
  br i1 %268, label %269, label %273

269:                                              ; preds = %266
  %270 = add nsw i32 %255, -1
  tail call fastcc void @HUF_simpleQuickSort(ptr noundef nonnull %0, i32 noundef %220, i32 noundef %270)
  %271 = add i32 %255, 1
  br label %279

272:                                              ; preds = %273
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !46
  unreachable, !nosanitize !46

273:                                              ; preds = %266
  %274 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %255, i32 1), !nosanitize !46
  %275 = extractvalue { i32, i1 } %274, 1, !nosanitize !46
  br i1 %275, label %272, label %276, !prof !49, !nosanitize !46

276:                                              ; preds = %273
  %277 = extractvalue { i32, i1 } %274, 0, !nosanitize !46
  tail call fastcc void @HUF_simpleQuickSort(ptr noundef nonnull %0, i32 noundef %277, i32 noundef %221)
  %278 = add nsw i32 %255, -1
  br label %279

279:                                              ; preds = %276, %269
  %280 = phi i32 [ %221, %269 ], [ %278, %276 ]
  %281 = phi i32 [ %271, %269 ], [ %220, %276 ]
  %282 = icmp slt i32 %281, %280
  br i1 %282, label %.preheader7, label %.loopexit, !llvm.loop !90

.loopexit:                                        ; preds = %279, %25, %42, %65, %94, %129, %170, %217, %11, %9
  ret void
}

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define internal fastcc i64 @HUF_compress1X_usingCTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, ptr noundef readonly captures(none) %4) unnamed_addr #13 {
  %6 = load i64, ptr %4, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 255
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %10 = icmp ult i64 %1, 8
  br i1 %10, label %2311, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = icmp eq i64 %1, 8
  br i1 %14, label %2311, label %15

15:                                               ; preds = %11
  %16 = and i64 %6, 255
  %17 = mul i64 %16, %3
  %18 = lshr i64 %17, 3
  %19 = add nuw nsw i64 %18, 8
  %20 = icmp ult i64 %1, %19
  %21 = icmp samesign ugt i32 %8, 11
  %22 = select i1 %20, i1 true, i1 %21
  %23 = trunc i64 %3 to i32
  br i1 %22, label %24, label %265

24:                                               ; preds = %15
  %25 = srem i32 %23, 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %81

27:                                               ; preds = %24
  %28 = icmp eq i32 %25, 1
  br i1 %28, label %.thread, label %30

29:                                               ; preds = %94, %91, %88
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

30:                                               ; preds = %27
  %31 = and i32 %25, 1
  %32 = shl i64 %3, 32
  %sext176 = add i64 %32, -4294967296
  %33 = ashr exact i64 %sext176, 32
  %34 = getelementptr inbounds i8, ptr %2, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !5
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !14
  %39 = shl i64 %3, 32
  %sext177 = add i64 %39, -8589934592
  %40 = ashr exact i64 %sext177, 32
  %41 = getelementptr inbounds i8, ptr %2, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !5
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !14
  %46 = add i64 %38, %45
  %47 = and i64 %38, -256
  %48 = and i64 %45, 255
  %49 = lshr i64 %47, %48
  %50 = and i64 %45, -256
  %51 = or i64 %49, %50
  %52 = add i64 %3, -2
  %53 = icmp eq i32 %31, 0
  br i1 %53, label %69, label %.thread

.thread:                                          ; preds = %27, %30
  %54 = phi i64 [ %46, %30 ], [ 0, %27 ]
  %55 = phi i64 [ %51, %30 ], [ 0, %27 ]
  %56 = phi i64 [ %52, %30 ], [ %3, %27 ]
  %57 = shl i64 %56, 32
  %sext178 = add i64 %57, -4294967296
  %58 = ashr exact i64 %sext178, 32
  %59 = getelementptr inbounds i8, ptr %2, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !5
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !14
  %64 = and i64 %63, 255
  %65 = lshr i64 %55, %64
  %66 = and i64 %63, -256
  %67 = or i64 %65, %66
  %68 = add i64 %63, %54
  br label %69

69:                                               ; preds = %.thread, %30
  %70 = phi i64 [ %51, %30 ], [ %67, %.thread ]
  %71 = phi i64 [ %46, %30 ], [ %68, %.thread ]
  %72 = sub nsw i32 %23, %25
  %73 = and i64 %71, 255
  %74 = lshr i64 %73, 3
  %75 = sub nsw i64 64, %73
  %76 = lshr i64 %70, %75
  %77 = and i64 %71, 7
  store i64 %76, ptr %0, align 1, !tbaa !14
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 %74
  %79 = icmp ugt ptr %78, %13
  %80 = select i1 %79, ptr %13, ptr %78
  br label %81

81:                                               ; preds = %69, %24
  %82 = phi i64 [ 0, %24 ], [ %77, %69 ]
  %83 = phi ptr [ %0, %24 ], [ %80, %69 ]
  %84 = phi i64 [ 0, %24 ], [ %70, %69 ]
  %85 = phi i32 [ %23, %24 ], [ %72, %69 ]
  %86 = and i32 %85, 7
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %151, label %88

88:                                               ; preds = %81
  %89 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %85, i32 -2)
  %90 = extractvalue { i32, i1 } %89, 1, !nosanitize !46
  br i1 %90, label %29, label %91, !prof !49, !nosanitize !46

91:                                               ; preds = %88
  %92 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %85, i32 -3)
  %93 = extractvalue { i32, i1 } %92, 1, !nosanitize !46
  br i1 %93, label %29, label %94, !prof !49, !nosanitize !46

94:                                               ; preds = %91
  %95 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %85, i32 -4)
  %96 = extractvalue { i32, i1 } %95, 1, !nosanitize !46
  br i1 %96, label %29, label %97, !prof !49, !nosanitize !46

97:                                               ; preds = %94
  %98 = extractvalue { i32, i1 } %92, 0, !nosanitize !46
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, ptr %2, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !5
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %102
  %104 = load i64, ptr %103, align 8, !tbaa !14
  %105 = extractvalue { i32, i1 } %89, 0, !nosanitize !46
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, ptr %2, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !5
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %109
  %111 = load i64, ptr %110, align 8, !tbaa !14
  %112 = sext i32 %85 to i64
  %113 = getelementptr i8, ptr %2, i64 %112
  %114 = getelementptr i8, ptr %113, i64 -1
  %115 = load i8, ptr %114, align 1, !tbaa !5
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %116
  %118 = load i64, ptr %117, align 8, !tbaa !14
  %119 = and i64 %118, 255
  %120 = lshr i64 %84, %119
  %121 = or i64 %120, %118
  %122 = and i64 %111, 255
  %123 = lshr i64 %121, %122
  %124 = or i64 %123, %111
  %125 = and i64 %104, 255
  %126 = lshr i64 %124, %125
  %127 = or i64 %126, %104
  %128 = extractvalue { i32, i1 } %95, 0, !nosanitize !46
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, ptr %2, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !5
  %132 = zext i8 %131 to i64
  %133 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %132
  %134 = load i64, ptr %133, align 8, !tbaa !14
  %135 = and i64 %134, 255
  %136 = lshr i64 %127, %135
  %137 = and i64 %134, -256
  %138 = or i64 %136, %137
  %139 = add i64 %104, %82
  %140 = add i64 %139, %111
  %141 = add i64 %140, %118
  %142 = add i64 %141, %134
  %143 = and i64 %142, 255
  %144 = lshr i64 %143, 3
  %145 = sub nsw i64 64, %143
  %146 = lshr i64 %138, %145
  %147 = and i64 %142, 7
  store i64 %146, ptr %83, align 1, !tbaa !14
  %148 = getelementptr inbounds nuw i8, ptr %83, i64 %144
  %149 = icmp ugt ptr %148, %13
  %150 = select i1 %149, ptr %13, ptr %148
  br label %151

151:                                              ; preds = %97, %81
  %152 = phi i64 [ %82, %81 ], [ %147, %97 ]
  %153 = phi ptr [ %83, %81 ], [ %150, %97 ]
  %154 = phi i64 [ %84, %81 ], [ %138, %97 ]
  %155 = phi i32 [ %85, %81 ], [ %128, %97 ]
  %156 = getelementptr i8, ptr %2, i64 -8
  %157 = icmp sgt i32 %155, 0
  br i1 %157, label %158, label %.loopexit

158:                                              ; preds = %151
  %159 = zext nneg i32 %155 to i64
  %160 = getelementptr i8, ptr %2, i64 -1
  %161 = getelementptr i8, ptr %2, i64 -2
  %162 = getelementptr i8, ptr %2, i64 -3
  br label %163

163:                                              ; preds = %163, %158
  %164 = phi i64 [ %159, %158 ], [ %263, %163 ]
  %165 = phi i64 [ %154, %158 ], [ %253, %163 ]
  %166 = phi ptr [ %153, %158 ], [ %262, %163 ]
  %167 = phi i64 [ %152, %158 ], [ %259, %163 ]
  %168 = getelementptr i8, ptr %160, i64 %164
  %169 = load i8, ptr %168, align 1, !tbaa !5
  %170 = zext i8 %169 to i64
  %171 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %170
  %172 = load i64, ptr %171, align 8, !tbaa !14
  %173 = and i64 %172, 255
  %174 = lshr i64 %165, %173
  %175 = or i64 %174, %172
  %176 = add i64 %172, %167
  %177 = getelementptr i8, ptr %161, i64 %164
  %178 = load i8, ptr %177, align 1, !tbaa !5
  %179 = zext i8 %178 to i64
  %180 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %179
  %181 = load i64, ptr %180, align 8, !tbaa !14
  %182 = and i64 %181, 255
  %183 = lshr i64 %175, %182
  %184 = or i64 %183, %181
  %185 = add i64 %176, %181
  %186 = getelementptr i8, ptr %162, i64 %164
  %187 = load i8, ptr %186, align 1, !tbaa !5
  %188 = zext i8 %187 to i64
  %189 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %188
  %190 = load i64, ptr %189, align 8, !tbaa !14
  %191 = and i64 %190, 255
  %192 = lshr i64 %184, %191
  %193 = or i64 %192, %190
  %194 = add i64 %185, %190
  %195 = getelementptr i8, ptr %2, i64 %164
  %196 = getelementptr i8, ptr %195, i64 -4
  %197 = load i8, ptr %196, align 1, !tbaa !5
  %198 = zext i8 %197 to i64
  %199 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %198
  %200 = load i64, ptr %199, align 8, !tbaa !14
  %201 = and i64 %200, 255
  %202 = lshr i64 %193, %201
  %203 = and i64 %200, -256
  %204 = or i64 %202, %203
  %205 = add i64 %194, %200
  %206 = and i64 %205, 255
  %207 = lshr i64 %206, 3
  %208 = sub nsw i64 64, %206
  %209 = lshr i64 %204, %208
  %210 = and i64 %205, 7
  store i64 %209, ptr %166, align 1, !tbaa !14
  %211 = getelementptr inbounds nuw i8, ptr %166, i64 %207
  %212 = icmp ugt ptr %211, %13
  %213 = select i1 %212, ptr %13, ptr %211
  %214 = shl i64 %164, 32
  %sext50 = add i64 %214, -25769803776
  %215 = ashr exact i64 %sext50, 32
  %216 = getelementptr inbounds i8, ptr %2, i64 %215
  %217 = load i8, ptr %216, align 1, !tbaa !5
  %218 = zext i8 %217 to i64
  %219 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %218
  %220 = load i64, ptr %219, align 8, !tbaa !14
  %sext51 = add i64 %214, -21474836480
  %221 = ashr exact i64 %sext51, 32
  %222 = getelementptr inbounds i8, ptr %2, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !5
  %224 = zext i8 %223 to i64
  %225 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %224
  %226 = load i64, ptr %225, align 8, !tbaa !14
  %227 = add i64 %226, %220
  %228 = and i64 %220, 255
  %229 = lshr i64 %226, %228
  %230 = or i64 %229, %220
  %sext52 = add i64 %214, -30064771072
  %231 = ashr exact i64 %sext52, 32
  %232 = getelementptr inbounds i8, ptr %2, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !5
  %234 = zext i8 %233 to i64
  %235 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %234
  %236 = load i64, ptr %235, align 8, !tbaa !14
  %237 = and i64 %236, 255
  %238 = lshr i64 %230, %237
  %239 = or i64 %238, %236
  %240 = add i64 %227, %236
  %241 = getelementptr i8, ptr %156, i64 %164
  %242 = load i8, ptr %241, align 1, !tbaa !5
  %243 = zext i8 %242 to i64
  %244 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %243
  %245 = load i64, ptr %244, align 8, !tbaa !14
  %246 = and i64 %245, 255
  %247 = lshr i64 %239, %246
  %248 = and i64 %245, -256
  %249 = or i64 %247, %248
  %250 = add i64 %240, %245
  %251 = and i64 %250, 255
  %252 = lshr i64 %204, %251
  %253 = or i64 %249, %252
  %254 = add i64 %250, %210
  %255 = and i64 %254, 255
  %256 = lshr i64 %255, 3
  %257 = sub nsw i64 64, %255
  %258 = lshr i64 %253, %257
  %259 = and i64 %254, 7
  store i64 %258, ptr %213, align 1, !tbaa !14
  %260 = getelementptr inbounds nuw i8, ptr %213, i64 %256
  %261 = icmp ugt ptr %260, %13
  %262 = select i1 %261, ptr %13, ptr %260
  %263 = add nsw i64 %164, -8
  %264 = icmp samesign ugt i64 %164, 8
  br i1 %264, label %163, label %.loopexit, !llvm.loop !76

265:                                              ; preds = %15
  switch i32 %8, label %1876 [
    i32 11, label %266
    i32 10, label %549
    i32 9, label %829
    i32 8, label %1146
    i32 7, label %1494
  ]

266:                                              ; preds = %265
  %267 = srem i32 %23, 5
  %268 = icmp sgt i32 %267, 0
  br i1 %268, label %269, label %334

269:                                              ; preds = %266
  %270 = and i32 %267, 1
  %271 = icmp eq i32 %267, 1
  br i1 %271, label %.thread53, label %272

272:                                              ; preds = %269
  %273 = and i32 %267, 2147483646
  br label %274

274:                                              ; preds = %274, %272
  %275 = phi i32 [ %23, %272 ], [ %291, %274 ]
  %276 = phi i64 [ 0, %272 ], [ %301, %274 ]
  %277 = phi i64 [ 0, %272 ], [ %302, %274 ]
  %278 = phi i32 [ 0, %272 ], [ %303, %274 ]
  %279 = add i32 %275, -1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, ptr %2, i64 %280
  %282 = load i8, ptr %281, align 1, !tbaa !5
  %283 = zext i8 %282 to i64
  %284 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %283
  %285 = load i64, ptr %284, align 8, !tbaa !14
  %286 = and i64 %285, 255
  %287 = lshr i64 %276, %286
  %288 = and i64 %285, -256
  %289 = or i64 %287, %288
  %290 = add i64 %285, %277
  %291 = add i32 %275, -2
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, ptr %2, i64 %292
  %294 = load i8, ptr %293, align 1, !tbaa !5
  %295 = zext i8 %294 to i64
  %296 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %295
  %297 = load i64, ptr %296, align 8, !tbaa !14
  %298 = and i64 %297, 255
  %299 = lshr i64 %289, %298
  %300 = and i64 %297, -256
  %301 = or i64 %299, %300
  %302 = add i64 %290, %297
  %303 = add i32 %278, 2
  %304 = icmp eq i32 %303, %273
  br i1 %304, label %306, label %274, !llvm.loop !77

305:                                              ; preds = %353, %350, %347, %344, %341
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

306:                                              ; preds = %274
  %307 = sub i32 %23, %273
  %308 = icmp eq i32 %270, 0
  br i1 %308, label %324, label %.thread53

.thread53:                                        ; preds = %269, %306
  %309 = phi i64 [ %302, %306 ], [ 0, %269 ]
  %310 = phi i64 [ %301, %306 ], [ 0, %269 ]
  %311 = phi i32 [ %307, %306 ], [ %23, %269 ]
  %312 = add i32 %311, -1
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8, ptr %2, i64 %313
  %315 = load i8, ptr %314, align 1, !tbaa !5
  %316 = zext i8 %315 to i64
  %317 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %316
  %318 = load i64, ptr %317, align 8, !tbaa !14
  %319 = and i64 %318, 255
  %320 = lshr i64 %310, %319
  %321 = and i64 %318, -256
  %322 = or i64 %320, %321
  %323 = add i64 %318, %309
  br label %324

324:                                              ; preds = %.thread53, %306
  %325 = phi i64 [ %301, %306 ], [ %322, %.thread53 ]
  %326 = phi i64 [ %302, %306 ], [ %323, %.thread53 ]
  %327 = sub nsw i32 %23, %267
  %328 = and i64 %326, 255
  %329 = lshr i64 %328, 3
  %330 = sub nsw i64 64, %328
  %331 = lshr i64 %325, %330
  %332 = and i64 %326, 7
  store i64 %331, ptr %0, align 1, !tbaa !14
  %333 = getelementptr inbounds nuw i8, ptr %0, i64 %329
  br label %334

334:                                              ; preds = %324, %266
  %335 = phi i64 [ %332, %324 ], [ 0, %266 ]
  %336 = phi ptr [ %333, %324 ], [ %0, %266 ]
  %337 = phi i64 [ %325, %324 ], [ 0, %266 ]
  %338 = phi i32 [ %327, %324 ], [ %23, %266 ]
  %339 = srem i32 %338, 10
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %419, label %341

341:                                              ; preds = %334
  %342 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %338, i32 -1)
  %343 = extractvalue { i32, i1 } %342, 1, !nosanitize !46
  br i1 %343, label %305, label %344, !prof !49, !nosanitize !46

344:                                              ; preds = %341
  %345 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %338, i32 -2)
  %346 = extractvalue { i32, i1 } %345, 1, !nosanitize !46
  br i1 %346, label %305, label %347, !prof !49, !nosanitize !46

347:                                              ; preds = %344
  %348 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %338, i32 -3)
  %349 = extractvalue { i32, i1 } %348, 1, !nosanitize !46
  br i1 %349, label %305, label %350, !prof !49, !nosanitize !46

350:                                              ; preds = %347
  %351 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %338, i32 -4)
  %352 = extractvalue { i32, i1 } %351, 1, !nosanitize !46
  br i1 %352, label %305, label %353, !prof !49, !nosanitize !46

353:                                              ; preds = %350
  %354 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %338, i32 -5)
  %355 = extractvalue { i32, i1 } %354, 1, !nosanitize !46
  br i1 %355, label %305, label %356, !prof !49, !nosanitize !46

356:                                              ; preds = %353
  %357 = extractvalue { i32, i1 } %351, 0, !nosanitize !46
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i8, ptr %2, i64 %358
  %360 = load i8, ptr %359, align 1, !tbaa !5
  %361 = zext i8 %360 to i64
  %362 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %361
  %363 = load i64, ptr %362, align 8, !tbaa !14
  %364 = extractvalue { i32, i1 } %348, 0, !nosanitize !46
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8, ptr %2, i64 %365
  %367 = load i8, ptr %366, align 1, !tbaa !5
  %368 = zext i8 %367 to i64
  %369 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %368
  %370 = load i64, ptr %369, align 8, !tbaa !14
  %371 = extractvalue { i32, i1 } %345, 0, !nosanitize !46
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i8, ptr %2, i64 %372
  %374 = load i8, ptr %373, align 1, !tbaa !5
  %375 = zext i8 %374 to i64
  %376 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %375
  %377 = load i64, ptr %376, align 8, !tbaa !14
  %378 = extractvalue { i32, i1 } %342, 0, !nosanitize !46
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i8, ptr %2, i64 %379
  %381 = load i8, ptr %380, align 1, !tbaa !5
  %382 = zext i8 %381 to i64
  %383 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %382
  %384 = load i64, ptr %383, align 8, !tbaa !14
  %385 = and i64 %384, 255
  %386 = lshr i64 %337, %385
  %387 = or i64 %386, %384
  %388 = and i64 %377, 255
  %389 = lshr i64 %387, %388
  %390 = or i64 %389, %377
  %391 = and i64 %370, 255
  %392 = lshr i64 %390, %391
  %393 = or i64 %392, %370
  %394 = and i64 %363, 255
  %395 = lshr i64 %393, %394
  %396 = or i64 %395, %363
  %397 = extractvalue { i32, i1 } %354, 0, !nosanitize !46
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8, ptr %2, i64 %398
  %400 = load i8, ptr %399, align 1, !tbaa !5
  %401 = zext i8 %400 to i64
  %402 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %401
  %403 = load i64, ptr %402, align 8, !tbaa !14
  %404 = and i64 %403, 255
  %405 = lshr i64 %396, %404
  %406 = and i64 %403, -256
  %407 = or i64 %405, %406
  %408 = add i64 %363, %335
  %409 = add i64 %408, %370
  %410 = add i64 %409, %377
  %411 = add i64 %410, %384
  %412 = add i64 %411, %403
  %413 = and i64 %412, 255
  %414 = lshr i64 %413, 3
  %415 = sub nsw i64 64, %413
  %416 = lshr i64 %407, %415
  %417 = and i64 %412, 7
  store i64 %416, ptr %336, align 1, !tbaa !14
  %418 = getelementptr inbounds nuw i8, ptr %336, i64 %414
  br label %419

419:                                              ; preds = %356, %334
  %420 = phi i64 [ %335, %334 ], [ %417, %356 ]
  %421 = phi ptr [ %336, %334 ], [ %418, %356 ]
  %422 = phi i64 [ %337, %334 ], [ %407, %356 ]
  %423 = phi i32 [ %338, %334 ], [ %397, %356 ]
  %424 = getelementptr i8, ptr %2, i64 -10
  %425 = icmp sgt i32 %423, 0
  br i1 %425, label %426, label %.loopexit

426:                                              ; preds = %419
  %427 = zext nneg i32 %423 to i64
  %428 = getelementptr i8, ptr %2, i64 -1
  %429 = getelementptr i8, ptr %2, i64 -2
  %430 = getelementptr i8, ptr %2, i64 -3
  %431 = getelementptr i8, ptr %2, i64 -4
  br label %432

432:                                              ; preds = %432, %426
  %433 = phi i64 [ %427, %426 ], [ %547, %432 ]
  %434 = phi i64 [ %422, %426 ], [ %539, %432 ]
  %435 = phi ptr [ %421, %426 ], [ %546, %432 ]
  %436 = phi i64 [ %420, %426 ], [ %545, %432 ]
  %437 = getelementptr i8, ptr %428, i64 %433
  %438 = load i8, ptr %437, align 1, !tbaa !5
  %439 = zext i8 %438 to i64
  %440 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %439
  %441 = load i64, ptr %440, align 8, !tbaa !14
  %442 = and i64 %441, 255
  %443 = lshr i64 %434, %442
  %444 = or i64 %443, %441
  %445 = add i64 %441, %436
  %446 = getelementptr i8, ptr %429, i64 %433
  %447 = load i8, ptr %446, align 1, !tbaa !5
  %448 = zext i8 %447 to i64
  %449 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %448
  %450 = load i64, ptr %449, align 8, !tbaa !14
  %451 = and i64 %450, 255
  %452 = lshr i64 %444, %451
  %453 = or i64 %452, %450
  %454 = add i64 %445, %450
  %455 = getelementptr i8, ptr %430, i64 %433
  %456 = load i8, ptr %455, align 1, !tbaa !5
  %457 = zext i8 %456 to i64
  %458 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %457
  %459 = load i64, ptr %458, align 8, !tbaa !14
  %460 = and i64 %459, 255
  %461 = lshr i64 %453, %460
  %462 = or i64 %461, %459
  %463 = add i64 %454, %459
  %464 = getelementptr i8, ptr %431, i64 %433
  %465 = load i8, ptr %464, align 1, !tbaa !5
  %466 = zext i8 %465 to i64
  %467 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %466
  %468 = load i64, ptr %467, align 8, !tbaa !14
  %469 = and i64 %468, 255
  %470 = lshr i64 %462, %469
  %471 = or i64 %470, %468
  %472 = add i64 %463, %468
  %473 = getelementptr i8, ptr %2, i64 %433
  %474 = getelementptr i8, ptr %473, i64 -5
  %475 = load i8, ptr %474, align 1, !tbaa !5
  %476 = zext i8 %475 to i64
  %477 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %476
  %478 = load i64, ptr %477, align 8, !tbaa !14
  %479 = and i64 %478, 255
  %480 = lshr i64 %471, %479
  %481 = and i64 %478, -256
  %482 = or i64 %480, %481
  %483 = add i64 %472, %478
  %484 = and i64 %483, 255
  %485 = lshr i64 %484, 3
  %486 = sub nsw i64 64, %484
  %487 = lshr i64 %482, %486
  %488 = and i64 %483, 7
  store i64 %487, ptr %435, align 1, !tbaa !14
  %489 = getelementptr inbounds nuw i8, ptr %435, i64 %485
  %490 = shl i64 %433, 32
  %sext38 = add i64 %490, -34359738368
  %491 = ashr exact i64 %sext38, 32
  %492 = getelementptr inbounds i8, ptr %2, i64 %491
  %493 = load i8, ptr %492, align 1, !tbaa !5
  %494 = zext i8 %493 to i64
  %495 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %494
  %496 = load i64, ptr %495, align 8, !tbaa !14
  %sext39 = add i64 %490, -30064771072
  %497 = ashr exact i64 %sext39, 32
  %498 = getelementptr inbounds i8, ptr %2, i64 %497
  %499 = load i8, ptr %498, align 1, !tbaa !5
  %500 = zext i8 %499 to i64
  %501 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %500
  %502 = load i64, ptr %501, align 8, !tbaa !14
  %sext40 = add i64 %490, -25769803776
  %503 = ashr exact i64 %sext40, 32
  %504 = getelementptr inbounds i8, ptr %2, i64 %503
  %505 = load i8, ptr %504, align 1, !tbaa !5
  %506 = zext i8 %505 to i64
  %507 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %506
  %508 = load i64, ptr %507, align 8, !tbaa !14
  %509 = and i64 %502, 255
  %510 = lshr i64 %508, %509
  %511 = or i64 %510, %502
  %512 = and i64 %496, 255
  %513 = lshr i64 %511, %512
  %514 = or i64 %513, %496
  %sext41 = add i64 %490, -38654705664
  %515 = ashr exact i64 %sext41, 32
  %516 = getelementptr inbounds i8, ptr %2, i64 %515
  %517 = load i8, ptr %516, align 1, !tbaa !5
  %518 = zext i8 %517 to i64
  %519 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %518
  %520 = load i64, ptr %519, align 8, !tbaa !14
  %521 = and i64 %520, 255
  %522 = lshr i64 %514, %521
  %523 = or i64 %522, %520
  %524 = getelementptr i8, ptr %424, i64 %433
  %525 = load i8, ptr %524, align 1, !tbaa !5
  %526 = zext i8 %525 to i64
  %527 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %526
  %528 = load i64, ptr %527, align 8, !tbaa !14
  %529 = and i64 %528, 255
  %530 = lshr i64 %523, %529
  %531 = and i64 %528, -256
  %532 = or i64 %530, %531
  %533 = add i64 %502, %496
  %534 = add i64 %533, %508
  %535 = add i64 %534, %520
  %536 = add i64 %535, %528
  %537 = and i64 %536, 255
  %538 = lshr i64 %482, %537
  %539 = or i64 %532, %538
  %540 = add i64 %536, %488
  %541 = and i64 %540, 255
  %542 = lshr i64 %541, 3
  %543 = sub nsw i64 64, %541
  %544 = lshr i64 %539, %543
  %545 = and i64 %540, 7
  store i64 %544, ptr %489, align 1, !tbaa !14
  %546 = getelementptr inbounds nuw i8, ptr %489, i64 %542
  %547 = add nsw i64 %433, -10
  %548 = icmp samesign ugt i64 %433, 10
  br i1 %548, label %432, label %.loopexit, !llvm.loop !76

549:                                              ; preds = %265
  %550 = srem i32 %23, 5
  %551 = icmp sgt i32 %550, 0
  br i1 %551, label %552, label %617

552:                                              ; preds = %549
  %553 = and i32 %550, 1
  %554 = icmp eq i32 %550, 1
  br i1 %554, label %.thread54, label %555

555:                                              ; preds = %552
  %556 = and i32 %550, 2147483646
  br label %557

557:                                              ; preds = %557, %555
  %558 = phi i32 [ %23, %555 ], [ %574, %557 ]
  %559 = phi i64 [ 0, %555 ], [ %584, %557 ]
  %560 = phi i64 [ 0, %555 ], [ %585, %557 ]
  %561 = phi i32 [ 0, %555 ], [ %586, %557 ]
  %562 = add i32 %558, -1
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i8, ptr %2, i64 %563
  %565 = load i8, ptr %564, align 1, !tbaa !5
  %566 = zext i8 %565 to i64
  %567 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %566
  %568 = load i64, ptr %567, align 8, !tbaa !14
  %569 = and i64 %568, 255
  %570 = lshr i64 %559, %569
  %571 = and i64 %568, -256
  %572 = or i64 %570, %571
  %573 = add i64 %568, %560
  %574 = add i32 %558, -2
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i8, ptr %2, i64 %575
  %577 = load i8, ptr %576, align 1, !tbaa !5
  %578 = zext i8 %577 to i64
  %579 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %578
  %580 = load i64, ptr %579, align 8, !tbaa !14
  %581 = and i64 %580, 255
  %582 = lshr i64 %572, %581
  %583 = and i64 %580, -256
  %584 = or i64 %582, %583
  %585 = add i64 %573, %580
  %586 = add i32 %561, 2
  %587 = icmp eq i32 %586, %556
  br i1 %587, label %589, label %557, !llvm.loop !77

588:                                              ; preds = %636, %633, %630, %627, %624
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

589:                                              ; preds = %557
  %590 = sub i32 %23, %556
  %591 = icmp eq i32 %553, 0
  br i1 %591, label %607, label %.thread54

.thread54:                                        ; preds = %552, %589
  %592 = phi i64 [ %585, %589 ], [ 0, %552 ]
  %593 = phi i64 [ %584, %589 ], [ 0, %552 ]
  %594 = phi i32 [ %590, %589 ], [ %23, %552 ]
  %595 = add i32 %594, -1
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i8, ptr %2, i64 %596
  %598 = load i8, ptr %597, align 1, !tbaa !5
  %599 = zext i8 %598 to i64
  %600 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %599
  %601 = load i64, ptr %600, align 8, !tbaa !14
  %602 = and i64 %601, 255
  %603 = lshr i64 %593, %602
  %604 = and i64 %601, -256
  %605 = or i64 %603, %604
  %606 = add i64 %601, %592
  br label %607

607:                                              ; preds = %.thread54, %589
  %608 = phi i64 [ %584, %589 ], [ %605, %.thread54 ]
  %609 = phi i64 [ %585, %589 ], [ %606, %.thread54 ]
  %610 = sub nsw i32 %23, %550
  %611 = and i64 %609, 255
  %612 = lshr i64 %611, 3
  %613 = sub nsw i64 64, %611
  %614 = lshr i64 %608, %613
  %615 = and i64 %609, 7
  store i64 %614, ptr %0, align 1, !tbaa !14
  %616 = getelementptr inbounds nuw i8, ptr %0, i64 %612
  br label %617

617:                                              ; preds = %607, %549
  %618 = phi i64 [ %615, %607 ], [ 0, %549 ]
  %619 = phi ptr [ %616, %607 ], [ %0, %549 ]
  %620 = phi i64 [ %608, %607 ], [ 0, %549 ]
  %621 = phi i32 [ %610, %607 ], [ %23, %549 ]
  %622 = srem i32 %621, 10
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %701, label %624

624:                                              ; preds = %617
  %625 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %621, i32 -1)
  %626 = extractvalue { i32, i1 } %625, 1, !nosanitize !46
  br i1 %626, label %588, label %627, !prof !49, !nosanitize !46

627:                                              ; preds = %624
  %628 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %621, i32 -2)
  %629 = extractvalue { i32, i1 } %628, 1, !nosanitize !46
  br i1 %629, label %588, label %630, !prof !49, !nosanitize !46

630:                                              ; preds = %627
  %631 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %621, i32 -3)
  %632 = extractvalue { i32, i1 } %631, 1, !nosanitize !46
  br i1 %632, label %588, label %633, !prof !49, !nosanitize !46

633:                                              ; preds = %630
  %634 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %621, i32 -4)
  %635 = extractvalue { i32, i1 } %634, 1, !nosanitize !46
  br i1 %635, label %588, label %636, !prof !49, !nosanitize !46

636:                                              ; preds = %633
  %637 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %621, i32 -5)
  %638 = extractvalue { i32, i1 } %637, 1, !nosanitize !46
  br i1 %638, label %588, label %639, !prof !49, !nosanitize !46

639:                                              ; preds = %636
  %640 = extractvalue { i32, i1 } %634, 0, !nosanitize !46
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds i8, ptr %2, i64 %641
  %643 = load i8, ptr %642, align 1, !tbaa !5
  %644 = zext i8 %643 to i64
  %645 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %644
  %646 = load i64, ptr %645, align 8, !tbaa !14
  %647 = extractvalue { i32, i1 } %631, 0, !nosanitize !46
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds i8, ptr %2, i64 %648
  %650 = load i8, ptr %649, align 1, !tbaa !5
  %651 = zext i8 %650 to i64
  %652 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %651
  %653 = load i64, ptr %652, align 8, !tbaa !14
  %654 = extractvalue { i32, i1 } %628, 0, !nosanitize !46
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds i8, ptr %2, i64 %655
  %657 = load i8, ptr %656, align 1, !tbaa !5
  %658 = zext i8 %657 to i64
  %659 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %658
  %660 = load i64, ptr %659, align 8, !tbaa !14
  %661 = extractvalue { i32, i1 } %625, 0, !nosanitize !46
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds i8, ptr %2, i64 %662
  %664 = load i8, ptr %663, align 1, !tbaa !5
  %665 = zext i8 %664 to i64
  %666 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %665
  %667 = load i64, ptr %666, align 8, !tbaa !14
  %668 = and i64 %667, 255
  %669 = lshr i64 %620, %668
  %670 = or i64 %669, %667
  %671 = and i64 %660, 255
  %672 = lshr i64 %670, %671
  %673 = or i64 %672, %660
  %674 = and i64 %653, 255
  %675 = lshr i64 %673, %674
  %676 = or i64 %675, %653
  %677 = and i64 %646, 255
  %678 = lshr i64 %676, %677
  %679 = or i64 %678, %646
  %680 = extractvalue { i32, i1 } %637, 0, !nosanitize !46
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds i8, ptr %2, i64 %681
  %683 = load i8, ptr %682, align 1, !tbaa !5
  %684 = zext i8 %683 to i64
  %685 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %684
  %686 = load i64, ptr %685, align 8, !tbaa !14
  %687 = and i64 %686, 255
  %688 = lshr i64 %679, %687
  %689 = or i64 %688, %686
  %690 = add i64 %646, %618
  %691 = add i64 %690, %653
  %692 = add i64 %691, %660
  %693 = add i64 %692, %667
  %694 = add i64 %693, %686
  %695 = and i64 %694, 255
  %696 = lshr i64 %695, 3
  %697 = sub nsw i64 64, %695
  %698 = lshr i64 %689, %697
  %699 = and i64 %694, 7
  store i64 %698, ptr %619, align 1, !tbaa !14
  %700 = getelementptr inbounds nuw i8, ptr %619, i64 %696
  br label %701

701:                                              ; preds = %639, %617
  %702 = phi i64 [ %618, %617 ], [ %699, %639 ]
  %703 = phi ptr [ %619, %617 ], [ %700, %639 ]
  %704 = phi i64 [ %620, %617 ], [ %689, %639 ]
  %705 = phi i32 [ %621, %617 ], [ %680, %639 ]
  %706 = getelementptr i8, ptr %2, i64 -10
  %707 = icmp sgt i32 %705, 0
  br i1 %707, label %708, label %.loopexit

708:                                              ; preds = %701
  %709 = zext nneg i32 %705 to i64
  %710 = getelementptr i8, ptr %2, i64 -1
  %711 = getelementptr i8, ptr %2, i64 -2
  %712 = getelementptr i8, ptr %2, i64 -3
  %713 = getelementptr i8, ptr %2, i64 -4
  br label %714

714:                                              ; preds = %714, %708
  %715 = phi i64 [ %709, %708 ], [ %827, %714 ]
  %716 = phi i64 [ %704, %708 ], [ %819, %714 ]
  %717 = phi ptr [ %703, %708 ], [ %826, %714 ]
  %718 = phi i64 [ %702, %708 ], [ %825, %714 ]
  %719 = getelementptr i8, ptr %710, i64 %715
  %720 = load i8, ptr %719, align 1, !tbaa !5
  %721 = zext i8 %720 to i64
  %722 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %721
  %723 = load i64, ptr %722, align 8, !tbaa !14
  %724 = and i64 %723, 255
  %725 = lshr i64 %716, %724
  %726 = or i64 %725, %723
  %727 = add i64 %723, %718
  %728 = getelementptr i8, ptr %711, i64 %715
  %729 = load i8, ptr %728, align 1, !tbaa !5
  %730 = zext i8 %729 to i64
  %731 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %730
  %732 = load i64, ptr %731, align 8, !tbaa !14
  %733 = and i64 %732, 255
  %734 = lshr i64 %726, %733
  %735 = or i64 %734, %732
  %736 = add i64 %727, %732
  %737 = getelementptr i8, ptr %712, i64 %715
  %738 = load i8, ptr %737, align 1, !tbaa !5
  %739 = zext i8 %738 to i64
  %740 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %739
  %741 = load i64, ptr %740, align 8, !tbaa !14
  %742 = and i64 %741, 255
  %743 = lshr i64 %735, %742
  %744 = or i64 %743, %741
  %745 = add i64 %736, %741
  %746 = getelementptr i8, ptr %713, i64 %715
  %747 = load i8, ptr %746, align 1, !tbaa !5
  %748 = zext i8 %747 to i64
  %749 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %748
  %750 = load i64, ptr %749, align 8, !tbaa !14
  %751 = and i64 %750, 255
  %752 = lshr i64 %744, %751
  %753 = or i64 %752, %750
  %754 = add i64 %745, %750
  %755 = getelementptr i8, ptr %2, i64 %715
  %756 = getelementptr i8, ptr %755, i64 -5
  %757 = load i8, ptr %756, align 1, !tbaa !5
  %758 = zext i8 %757 to i64
  %759 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %758
  %760 = load i64, ptr %759, align 8, !tbaa !14
  %761 = and i64 %760, 255
  %762 = lshr i64 %753, %761
  %763 = or i64 %762, %760
  %764 = add i64 %754, %760
  %765 = and i64 %764, 255
  %766 = lshr i64 %765, 3
  %767 = sub nsw i64 64, %765
  %768 = lshr i64 %763, %767
  %769 = and i64 %764, 7
  store i64 %768, ptr %717, align 1, !tbaa !14
  %770 = getelementptr inbounds nuw i8, ptr %717, i64 %766
  %771 = shl i64 %715, 32
  %sext34 = add i64 %771, -34359738368
  %772 = ashr exact i64 %sext34, 32
  %773 = getelementptr inbounds i8, ptr %2, i64 %772
  %774 = load i8, ptr %773, align 1, !tbaa !5
  %775 = zext i8 %774 to i64
  %776 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %775
  %777 = load i64, ptr %776, align 8, !tbaa !14
  %sext35 = add i64 %771, -30064771072
  %778 = ashr exact i64 %sext35, 32
  %779 = getelementptr inbounds i8, ptr %2, i64 %778
  %780 = load i8, ptr %779, align 1, !tbaa !5
  %781 = zext i8 %780 to i64
  %782 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %781
  %783 = load i64, ptr %782, align 8, !tbaa !14
  %sext36 = add i64 %771, -25769803776
  %784 = ashr exact i64 %sext36, 32
  %785 = getelementptr inbounds i8, ptr %2, i64 %784
  %786 = load i8, ptr %785, align 1, !tbaa !5
  %787 = zext i8 %786 to i64
  %788 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %787
  %789 = load i64, ptr %788, align 8, !tbaa !14
  %790 = and i64 %783, 255
  %791 = lshr i64 %789, %790
  %792 = or i64 %791, %783
  %793 = and i64 %777, 255
  %794 = lshr i64 %792, %793
  %795 = or i64 %794, %777
  %sext37 = add i64 %771, -38654705664
  %796 = ashr exact i64 %sext37, 32
  %797 = getelementptr inbounds i8, ptr %2, i64 %796
  %798 = load i8, ptr %797, align 1, !tbaa !5
  %799 = zext i8 %798 to i64
  %800 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %799
  %801 = load i64, ptr %800, align 8, !tbaa !14
  %802 = and i64 %801, 255
  %803 = lshr i64 %795, %802
  %804 = or i64 %803, %801
  %805 = getelementptr i8, ptr %706, i64 %715
  %806 = load i8, ptr %805, align 1, !tbaa !5
  %807 = zext i8 %806 to i64
  %808 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %807
  %809 = load i64, ptr %808, align 8, !tbaa !14
  %810 = and i64 %809, 255
  %811 = lshr i64 %804, %810
  %812 = add i64 %783, %777
  %813 = add i64 %812, %789
  %814 = add i64 %813, %801
  %815 = add i64 %814, %809
  %816 = and i64 %815, 255
  %817 = lshr i64 %763, %816
  %818 = or i64 %817, %811
  %819 = or i64 %818, %809
  %820 = add i64 %815, %769
  %821 = and i64 %820, 255
  %822 = lshr i64 %821, 3
  %823 = sub nsw i64 64, %821
  %824 = lshr i64 %819, %823
  %825 = and i64 %820, 7
  store i64 %824, ptr %770, align 1, !tbaa !14
  %826 = getelementptr inbounds nuw i8, ptr %770, i64 %822
  %827 = add nsw i64 %715, -10
  %828 = icmp samesign ugt i64 %715, 10
  br i1 %828, label %714, label %.loopexit, !llvm.loop !76

829:                                              ; preds = %265
  %830 = srem i32 %23, 6
  %831 = icmp sgt i32 %830, 0
  br i1 %831, label %832, label %897

832:                                              ; preds = %829
  %833 = and i32 %830, 1
  %834 = icmp eq i32 %830, 1
  br i1 %834, label %.thread55, label %835

835:                                              ; preds = %832
  %836 = and i32 %830, 2147483646
  br label %837

837:                                              ; preds = %837, %835
  %838 = phi i32 [ %23, %835 ], [ %854, %837 ]
  %839 = phi i64 [ 0, %835 ], [ %864, %837 ]
  %840 = phi i64 [ 0, %835 ], [ %865, %837 ]
  %841 = phi i32 [ 0, %835 ], [ %866, %837 ]
  %842 = add i32 %838, -1
  %843 = sext i32 %842 to i64
  %844 = getelementptr inbounds i8, ptr %2, i64 %843
  %845 = load i8, ptr %844, align 1, !tbaa !5
  %846 = zext i8 %845 to i64
  %847 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %846
  %848 = load i64, ptr %847, align 8, !tbaa !14
  %849 = and i64 %848, 255
  %850 = lshr i64 %839, %849
  %851 = and i64 %848, -256
  %852 = or i64 %850, %851
  %853 = add i64 %848, %840
  %854 = add i32 %838, -2
  %855 = sext i32 %854 to i64
  %856 = getelementptr inbounds i8, ptr %2, i64 %855
  %857 = load i8, ptr %856, align 1, !tbaa !5
  %858 = zext i8 %857 to i64
  %859 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %858
  %860 = load i64, ptr %859, align 8, !tbaa !14
  %861 = and i64 %860, 255
  %862 = lshr i64 %852, %861
  %863 = and i64 %860, -256
  %864 = or i64 %862, %863
  %865 = add i64 %853, %860
  %866 = add i32 %841, 2
  %867 = icmp eq i32 %866, %836
  br i1 %867, label %869, label %837, !llvm.loop !77

868:                                              ; preds = %919, %916, %913, %910, %907, %904
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

869:                                              ; preds = %837
  %870 = sub i32 %23, %836
  %871 = icmp eq i32 %833, 0
  br i1 %871, label %887, label %.thread55

.thread55:                                        ; preds = %832, %869
  %872 = phi i64 [ %865, %869 ], [ 0, %832 ]
  %873 = phi i64 [ %864, %869 ], [ 0, %832 ]
  %874 = phi i32 [ %870, %869 ], [ %23, %832 ]
  %875 = add i32 %874, -1
  %876 = sext i32 %875 to i64
  %877 = getelementptr inbounds i8, ptr %2, i64 %876
  %878 = load i8, ptr %877, align 1, !tbaa !5
  %879 = zext i8 %878 to i64
  %880 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %879
  %881 = load i64, ptr %880, align 8, !tbaa !14
  %882 = and i64 %881, 255
  %883 = lshr i64 %873, %882
  %884 = and i64 %881, -256
  %885 = or i64 %883, %884
  %886 = add i64 %881, %872
  br label %887

887:                                              ; preds = %.thread55, %869
  %888 = phi i64 [ %864, %869 ], [ %885, %.thread55 ]
  %889 = phi i64 [ %865, %869 ], [ %886, %.thread55 ]
  %890 = sub nsw i32 %23, %830
  %891 = and i64 %889, 255
  %892 = lshr i64 %891, 3
  %893 = sub nsw i64 64, %891
  %894 = lshr i64 %888, %893
  %895 = and i64 %889, 7
  store i64 %894, ptr %0, align 1, !tbaa !14
  %896 = getelementptr inbounds nuw i8, ptr %0, i64 %892
  br label %897

897:                                              ; preds = %887, %829
  %898 = phi i64 [ %895, %887 ], [ 0, %829 ]
  %899 = phi ptr [ %896, %887 ], [ %0, %829 ]
  %900 = phi i64 [ %888, %887 ], [ 0, %829 ]
  %901 = phi i32 [ %890, %887 ], [ %23, %829 ]
  %902 = srem i32 %901, 12
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %996, label %904

904:                                              ; preds = %897
  %905 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %901, i32 -1)
  %906 = extractvalue { i32, i1 } %905, 1, !nosanitize !46
  br i1 %906, label %868, label %907, !prof !49, !nosanitize !46

907:                                              ; preds = %904
  %908 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %901, i32 -2)
  %909 = extractvalue { i32, i1 } %908, 1, !nosanitize !46
  br i1 %909, label %868, label %910, !prof !49, !nosanitize !46

910:                                              ; preds = %907
  %911 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %901, i32 -3)
  %912 = extractvalue { i32, i1 } %911, 1, !nosanitize !46
  br i1 %912, label %868, label %913, !prof !49, !nosanitize !46

913:                                              ; preds = %910
  %914 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %901, i32 -4)
  %915 = extractvalue { i32, i1 } %914, 1, !nosanitize !46
  br i1 %915, label %868, label %916, !prof !49, !nosanitize !46

916:                                              ; preds = %913
  %917 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %901, i32 -5)
  %918 = extractvalue { i32, i1 } %917, 1, !nosanitize !46
  br i1 %918, label %868, label %919, !prof !49, !nosanitize !46

919:                                              ; preds = %916
  %920 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %901, i32 -6)
  %921 = extractvalue { i32, i1 } %920, 1, !nosanitize !46
  br i1 %921, label %868, label %922, !prof !49, !nosanitize !46

922:                                              ; preds = %919
  %923 = extractvalue { i32, i1 } %917, 0, !nosanitize !46
  %924 = sext i32 %923 to i64
  %925 = getelementptr inbounds i8, ptr %2, i64 %924
  %926 = load i8, ptr %925, align 1, !tbaa !5
  %927 = zext i8 %926 to i64
  %928 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %927
  %929 = load i64, ptr %928, align 8, !tbaa !14
  %930 = extractvalue { i32, i1 } %914, 0, !nosanitize !46
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds i8, ptr %2, i64 %931
  %933 = load i8, ptr %932, align 1, !tbaa !5
  %934 = zext i8 %933 to i64
  %935 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %934
  %936 = load i64, ptr %935, align 8, !tbaa !14
  %937 = extractvalue { i32, i1 } %911, 0, !nosanitize !46
  %938 = sext i32 %937 to i64
  %939 = getelementptr inbounds i8, ptr %2, i64 %938
  %940 = load i8, ptr %939, align 1, !tbaa !5
  %941 = zext i8 %940 to i64
  %942 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %941
  %943 = load i64, ptr %942, align 8, !tbaa !14
  %944 = extractvalue { i32, i1 } %908, 0, !nosanitize !46
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds i8, ptr %2, i64 %945
  %947 = load i8, ptr %946, align 1, !tbaa !5
  %948 = zext i8 %947 to i64
  %949 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %948
  %950 = load i64, ptr %949, align 8, !tbaa !14
  %951 = extractvalue { i32, i1 } %905, 0, !nosanitize !46
  %952 = sext i32 %951 to i64
  %953 = getelementptr inbounds i8, ptr %2, i64 %952
  %954 = load i8, ptr %953, align 1, !tbaa !5
  %955 = zext i8 %954 to i64
  %956 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %955
  %957 = load i64, ptr %956, align 8, !tbaa !14
  %958 = and i64 %957, 255
  %959 = lshr i64 %900, %958
  %960 = or i64 %959, %957
  %961 = and i64 %950, 255
  %962 = lshr i64 %960, %961
  %963 = or i64 %962, %950
  %964 = and i64 %943, 255
  %965 = lshr i64 %963, %964
  %966 = or i64 %965, %943
  %967 = and i64 %936, 255
  %968 = lshr i64 %966, %967
  %969 = or i64 %968, %936
  %970 = and i64 %929, 255
  %971 = lshr i64 %969, %970
  %972 = or i64 %971, %929
  %973 = extractvalue { i32, i1 } %920, 0, !nosanitize !46
  %974 = sext i32 %973 to i64
  %975 = getelementptr inbounds i8, ptr %2, i64 %974
  %976 = load i8, ptr %975, align 1, !tbaa !5
  %977 = zext i8 %976 to i64
  %978 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %977
  %979 = load i64, ptr %978, align 8, !tbaa !14
  %980 = and i64 %979, 255
  %981 = lshr i64 %972, %980
  %982 = and i64 %979, -256
  %983 = or i64 %981, %982
  %984 = add i64 %929, %898
  %985 = add i64 %984, %936
  %986 = add i64 %985, %943
  %987 = add i64 %986, %950
  %988 = add i64 %987, %957
  %989 = add i64 %988, %979
  %990 = and i64 %989, 255
  %991 = lshr i64 %990, 3
  %992 = sub nsw i64 64, %990
  %993 = lshr i64 %983, %992
  %994 = and i64 %989, 7
  store i64 %993, ptr %899, align 1, !tbaa !14
  %995 = getelementptr inbounds nuw i8, ptr %899, i64 %991
  br label %996

996:                                              ; preds = %922, %897
  %997 = phi i64 [ %898, %897 ], [ %994, %922 ]
  %998 = phi ptr [ %899, %897 ], [ %995, %922 ]
  %999 = phi i64 [ %900, %897 ], [ %983, %922 ]
  %1000 = phi i32 [ %901, %897 ], [ %973, %922 ]
  %1001 = getelementptr i8, ptr %2, i64 -12
  %1002 = icmp sgt i32 %1000, 0
  br i1 %1002, label %1003, label %.loopexit

1003:                                             ; preds = %996
  %1004 = zext nneg i32 %1000 to i64
  %1005 = getelementptr i8, ptr %2, i64 -1
  %1006 = getelementptr i8, ptr %2, i64 -2
  %1007 = getelementptr i8, ptr %2, i64 -3
  %1008 = getelementptr i8, ptr %2, i64 -4
  %1009 = getelementptr i8, ptr %2, i64 -5
  br label %1010

1010:                                             ; preds = %1010, %1003
  %1011 = phi i64 [ %1004, %1003 ], [ %1144, %1010 ]
  %1012 = phi i64 [ %999, %1003 ], [ %1136, %1010 ]
  %1013 = phi ptr [ %998, %1003 ], [ %1143, %1010 ]
  %1014 = phi i64 [ %997, %1003 ], [ %1142, %1010 ]
  %1015 = getelementptr i8, ptr %1005, i64 %1011
  %1016 = load i8, ptr %1015, align 1, !tbaa !5
  %1017 = zext i8 %1016 to i64
  %1018 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1017
  %1019 = load i64, ptr %1018, align 8, !tbaa !14
  %1020 = and i64 %1019, 255
  %1021 = lshr i64 %1012, %1020
  %1022 = or i64 %1021, %1019
  %1023 = add i64 %1019, %1014
  %1024 = getelementptr i8, ptr %1006, i64 %1011
  %1025 = load i8, ptr %1024, align 1, !tbaa !5
  %1026 = zext i8 %1025 to i64
  %1027 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1026
  %1028 = load i64, ptr %1027, align 8, !tbaa !14
  %1029 = and i64 %1028, 255
  %1030 = lshr i64 %1022, %1029
  %1031 = or i64 %1030, %1028
  %1032 = add i64 %1023, %1028
  %1033 = getelementptr i8, ptr %1007, i64 %1011
  %1034 = load i8, ptr %1033, align 1, !tbaa !5
  %1035 = zext i8 %1034 to i64
  %1036 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1035
  %1037 = load i64, ptr %1036, align 8, !tbaa !14
  %1038 = and i64 %1037, 255
  %1039 = lshr i64 %1031, %1038
  %1040 = or i64 %1039, %1037
  %1041 = add i64 %1032, %1037
  %1042 = getelementptr i8, ptr %1008, i64 %1011
  %1043 = load i8, ptr %1042, align 1, !tbaa !5
  %1044 = zext i8 %1043 to i64
  %1045 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1044
  %1046 = load i64, ptr %1045, align 8, !tbaa !14
  %1047 = and i64 %1046, 255
  %1048 = lshr i64 %1040, %1047
  %1049 = or i64 %1048, %1046
  %1050 = add i64 %1041, %1046
  %1051 = getelementptr i8, ptr %1009, i64 %1011
  %1052 = load i8, ptr %1051, align 1, !tbaa !5
  %1053 = zext i8 %1052 to i64
  %1054 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1053
  %1055 = load i64, ptr %1054, align 8, !tbaa !14
  %1056 = and i64 %1055, 255
  %1057 = lshr i64 %1049, %1056
  %1058 = or i64 %1057, %1055
  %1059 = add i64 %1050, %1055
  %1060 = getelementptr i8, ptr %2, i64 %1011
  %1061 = getelementptr i8, ptr %1060, i64 -6
  %1062 = load i8, ptr %1061, align 1, !tbaa !5
  %1063 = zext i8 %1062 to i64
  %1064 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1063
  %1065 = load i64, ptr %1064, align 8, !tbaa !14
  %1066 = and i64 %1065, 255
  %1067 = lshr i64 %1058, %1066
  %1068 = and i64 %1065, -256
  %1069 = or i64 %1067, %1068
  %1070 = add i64 %1059, %1065
  %1071 = and i64 %1070, 255
  %1072 = lshr i64 %1071, 3
  %1073 = sub nsw i64 64, %1071
  %1074 = lshr i64 %1069, %1073
  %1075 = and i64 %1070, 7
  store i64 %1074, ptr %1013, align 1, !tbaa !14
  %1076 = getelementptr inbounds nuw i8, ptr %1013, i64 %1072
  %1077 = shl i64 %1011, 32
  %sext29 = add i64 %1077, -42949672960
  %1078 = ashr exact i64 %sext29, 32
  %1079 = getelementptr inbounds i8, ptr %2, i64 %1078
  %1080 = load i8, ptr %1079, align 1, !tbaa !5
  %1081 = zext i8 %1080 to i64
  %1082 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1081
  %1083 = load i64, ptr %1082, align 8, !tbaa !14
  %sext30 = add i64 %1077, -38654705664
  %1084 = ashr exact i64 %sext30, 32
  %1085 = getelementptr inbounds i8, ptr %2, i64 %1084
  %1086 = load i8, ptr %1085, align 1, !tbaa !5
  %1087 = zext i8 %1086 to i64
  %1088 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1087
  %1089 = load i64, ptr %1088, align 8, !tbaa !14
  %sext31 = add i64 %1077, -34359738368
  %1090 = ashr exact i64 %sext31, 32
  %1091 = getelementptr inbounds i8, ptr %2, i64 %1090
  %1092 = load i8, ptr %1091, align 1, !tbaa !5
  %1093 = zext i8 %1092 to i64
  %1094 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1093
  %1095 = load i64, ptr %1094, align 8, !tbaa !14
  %sext32 = add i64 %1077, -30064771072
  %1096 = ashr exact i64 %sext32, 32
  %1097 = getelementptr inbounds i8, ptr %2, i64 %1096
  %1098 = load i8, ptr %1097, align 1, !tbaa !5
  %1099 = zext i8 %1098 to i64
  %1100 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1099
  %1101 = load i64, ptr %1100, align 8, !tbaa !14
  %1102 = and i64 %1095, 255
  %1103 = lshr i64 %1101, %1102
  %1104 = or i64 %1103, %1095
  %1105 = and i64 %1089, 255
  %1106 = lshr i64 %1104, %1105
  %1107 = or i64 %1106, %1089
  %1108 = and i64 %1083, 255
  %1109 = lshr i64 %1107, %1108
  %1110 = or i64 %1109, %1083
  %sext33 = add i64 %1077, -47244640256
  %1111 = ashr exact i64 %sext33, 32
  %1112 = getelementptr inbounds i8, ptr %2, i64 %1111
  %1113 = load i8, ptr %1112, align 1, !tbaa !5
  %1114 = zext i8 %1113 to i64
  %1115 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1114
  %1116 = load i64, ptr %1115, align 8, !tbaa !14
  %1117 = and i64 %1116, 255
  %1118 = lshr i64 %1110, %1117
  %1119 = or i64 %1118, %1116
  %1120 = getelementptr i8, ptr %1001, i64 %1011
  %1121 = load i8, ptr %1120, align 1, !tbaa !5
  %1122 = zext i8 %1121 to i64
  %1123 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1122
  %1124 = load i64, ptr %1123, align 8, !tbaa !14
  %1125 = and i64 %1124, 255
  %1126 = lshr i64 %1119, %1125
  %1127 = and i64 %1124, -256
  %1128 = add i64 %1089, %1083
  %1129 = add i64 %1128, %1095
  %1130 = add i64 %1129, %1101
  %1131 = add i64 %1130, %1116
  %1132 = add i64 %1131, %1124
  %1133 = and i64 %1132, 255
  %1134 = lshr i64 %1069, %1133
  %1135 = or i64 %1134, %1127
  %1136 = or i64 %1135, %1126
  %1137 = add i64 %1132, %1075
  %1138 = and i64 %1137, 255
  %1139 = lshr i64 %1138, 3
  %1140 = sub nsw i64 64, %1138
  %1141 = lshr i64 %1136, %1140
  %1142 = and i64 %1137, 7
  store i64 %1141, ptr %1076, align 1, !tbaa !14
  %1143 = getelementptr inbounds nuw i8, ptr %1076, i64 %1139
  %1144 = add nsw i64 %1011, -12
  %1145 = icmp samesign ugt i64 %1011, 12
  br i1 %1145, label %1010, label %.loopexit, !llvm.loop !76

1146:                                             ; preds = %265
  %1147 = srem i32 %23, 7
  %1148 = icmp sgt i32 %1147, 0
  br i1 %1148, label %1149, label %1214

1149:                                             ; preds = %1146
  %1150 = and i32 %1147, 1
  %1151 = icmp eq i32 %1147, 1
  br i1 %1151, label %.thread56, label %1152

1152:                                             ; preds = %1149
  %1153 = and i32 %1147, 2147483646
  br label %1154

1154:                                             ; preds = %1154, %1152
  %1155 = phi i32 [ %23, %1152 ], [ %1171, %1154 ]
  %1156 = phi i64 [ 0, %1152 ], [ %1181, %1154 ]
  %1157 = phi i64 [ 0, %1152 ], [ %1182, %1154 ]
  %1158 = phi i32 [ 0, %1152 ], [ %1183, %1154 ]
  %1159 = add i32 %1155, -1
  %1160 = sext i32 %1159 to i64
  %1161 = getelementptr inbounds i8, ptr %2, i64 %1160
  %1162 = load i8, ptr %1161, align 1, !tbaa !5
  %1163 = zext i8 %1162 to i64
  %1164 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1163
  %1165 = load i64, ptr %1164, align 8, !tbaa !14
  %1166 = and i64 %1165, 255
  %1167 = lshr i64 %1156, %1166
  %1168 = and i64 %1165, -256
  %1169 = or i64 %1167, %1168
  %1170 = add i64 %1165, %1157
  %1171 = add i32 %1155, -2
  %1172 = sext i32 %1171 to i64
  %1173 = getelementptr inbounds i8, ptr %2, i64 %1172
  %1174 = load i8, ptr %1173, align 1, !tbaa !5
  %1175 = zext i8 %1174 to i64
  %1176 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1175
  %1177 = load i64, ptr %1176, align 8, !tbaa !14
  %1178 = and i64 %1177, 255
  %1179 = lshr i64 %1169, %1178
  %1180 = and i64 %1177, -256
  %1181 = or i64 %1179, %1180
  %1182 = add i64 %1170, %1177
  %1183 = add i32 %1158, 2
  %1184 = icmp eq i32 %1183, %1153
  br i1 %1184, label %1186, label %1154, !llvm.loop !77

1185:                                             ; preds = %1236, %1233, %1230, %1227, %1224, %1221
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

1186:                                             ; preds = %1154
  %1187 = sub i32 %23, %1153
  %1188 = icmp eq i32 %1150, 0
  br i1 %1188, label %1204, label %.thread56

.thread56:                                        ; preds = %1149, %1186
  %1189 = phi i64 [ %1182, %1186 ], [ 0, %1149 ]
  %1190 = phi i64 [ %1181, %1186 ], [ 0, %1149 ]
  %1191 = phi i32 [ %1187, %1186 ], [ %23, %1149 ]
  %1192 = add i32 %1191, -1
  %1193 = sext i32 %1192 to i64
  %1194 = getelementptr inbounds i8, ptr %2, i64 %1193
  %1195 = load i8, ptr %1194, align 1, !tbaa !5
  %1196 = zext i8 %1195 to i64
  %1197 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1196
  %1198 = load i64, ptr %1197, align 8, !tbaa !14
  %1199 = and i64 %1198, 255
  %1200 = lshr i64 %1190, %1199
  %1201 = and i64 %1198, -256
  %1202 = or i64 %1200, %1201
  %1203 = add i64 %1198, %1189
  br label %1204

1204:                                             ; preds = %.thread56, %1186
  %1205 = phi i64 [ %1181, %1186 ], [ %1202, %.thread56 ]
  %1206 = phi i64 [ %1182, %1186 ], [ %1203, %.thread56 ]
  %1207 = sub nsw i32 %23, %1147
  %1208 = and i64 %1206, 255
  %1209 = lshr i64 %1208, 3
  %1210 = sub nsw i64 64, %1208
  %1211 = lshr i64 %1205, %1210
  %1212 = and i64 %1206, 7
  store i64 %1211, ptr %0, align 1, !tbaa !14
  %1213 = getelementptr inbounds nuw i8, ptr %0, i64 %1209
  br label %1214

1214:                                             ; preds = %1204, %1146
  %1215 = phi i64 [ %1212, %1204 ], [ 0, %1146 ]
  %1216 = phi ptr [ %1213, %1204 ], [ %0, %1146 ]
  %1217 = phi i64 [ %1205, %1204 ], [ 0, %1146 ]
  %1218 = phi i32 [ %1207, %1204 ], [ %23, %1146 ]
  %1219 = srem i32 %1218, 14
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %1324, label %1221

1221:                                             ; preds = %1214
  %1222 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1218, i32 -1)
  %1223 = extractvalue { i32, i1 } %1222, 1, !nosanitize !46
  br i1 %1223, label %1185, label %1224, !prof !49, !nosanitize !46

1224:                                             ; preds = %1221
  %1225 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1218, i32 -2)
  %1226 = extractvalue { i32, i1 } %1225, 1, !nosanitize !46
  br i1 %1226, label %1185, label %1227, !prof !49, !nosanitize !46

1227:                                             ; preds = %1224
  %1228 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1218, i32 -4)
  %1229 = extractvalue { i32, i1 } %1228, 1, !nosanitize !46
  br i1 %1229, label %1185, label %1230, !prof !49, !nosanitize !46

1230:                                             ; preds = %1227
  %1231 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1218, i32 -5)
  %1232 = extractvalue { i32, i1 } %1231, 1, !nosanitize !46
  br i1 %1232, label %1185, label %1233, !prof !49, !nosanitize !46

1233:                                             ; preds = %1230
  %1234 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1218, i32 -6)
  %1235 = extractvalue { i32, i1 } %1234, 1, !nosanitize !46
  br i1 %1235, label %1185, label %1236, !prof !49, !nosanitize !46

1236:                                             ; preds = %1233
  %1237 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1218, i32 -7)
  %1238 = extractvalue { i32, i1 } %1237, 1, !nosanitize !46
  br i1 %1238, label %1185, label %1239, !prof !49, !nosanitize !46

1239:                                             ; preds = %1236
  %1240 = extractvalue { i32, i1 } %1234, 0, !nosanitize !46
  %1241 = sext i32 %1240 to i64
  %1242 = getelementptr inbounds i8, ptr %2, i64 %1241
  %1243 = load i8, ptr %1242, align 1, !tbaa !5
  %1244 = zext i8 %1243 to i64
  %1245 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1244
  %1246 = load i64, ptr %1245, align 8, !tbaa !14
  %1247 = extractvalue { i32, i1 } %1231, 0, !nosanitize !46
  %1248 = sext i32 %1247 to i64
  %1249 = getelementptr inbounds i8, ptr %2, i64 %1248
  %1250 = load i8, ptr %1249, align 1, !tbaa !5
  %1251 = zext i8 %1250 to i64
  %1252 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1251
  %1253 = load i64, ptr %1252, align 8, !tbaa !14
  %1254 = extractvalue { i32, i1 } %1228, 0, !nosanitize !46
  %1255 = sext i32 %1254 to i64
  %1256 = getelementptr inbounds i8, ptr %2, i64 %1255
  %1257 = load i8, ptr %1256, align 1, !tbaa !5
  %1258 = zext i8 %1257 to i64
  %1259 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1258
  %1260 = load i64, ptr %1259, align 8, !tbaa !14
  %1261 = sext i32 %1218 to i64
  %1262 = getelementptr i8, ptr %2, i64 %1261
  %1263 = getelementptr i8, ptr %1262, i64 -3
  %1264 = load i8, ptr %1263, align 1, !tbaa !5
  %1265 = zext i8 %1264 to i64
  %1266 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1265
  %1267 = load i64, ptr %1266, align 8, !tbaa !14
  %1268 = extractvalue { i32, i1 } %1225, 0, !nosanitize !46
  %1269 = sext i32 %1268 to i64
  %1270 = getelementptr inbounds i8, ptr %2, i64 %1269
  %1271 = load i8, ptr %1270, align 1, !tbaa !5
  %1272 = zext i8 %1271 to i64
  %1273 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1272
  %1274 = load i64, ptr %1273, align 8, !tbaa !14
  %1275 = extractvalue { i32, i1 } %1222, 0, !nosanitize !46
  %1276 = sext i32 %1275 to i64
  %1277 = getelementptr inbounds i8, ptr %2, i64 %1276
  %1278 = load i8, ptr %1277, align 1, !tbaa !5
  %1279 = zext i8 %1278 to i64
  %1280 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1279
  %1281 = load i64, ptr %1280, align 8, !tbaa !14
  %1282 = and i64 %1281, 255
  %1283 = lshr i64 %1217, %1282
  %1284 = or i64 %1283, %1281
  %1285 = and i64 %1274, 255
  %1286 = lshr i64 %1284, %1285
  %1287 = or i64 %1286, %1274
  %1288 = and i64 %1267, 255
  %1289 = lshr i64 %1287, %1288
  %1290 = or i64 %1289, %1267
  %1291 = and i64 %1260, 255
  %1292 = lshr i64 %1290, %1291
  %1293 = or i64 %1292, %1260
  %1294 = and i64 %1253, 255
  %1295 = lshr i64 %1293, %1294
  %1296 = or i64 %1295, %1253
  %1297 = and i64 %1246, 255
  %1298 = lshr i64 %1296, %1297
  %1299 = or i64 %1298, %1246
  %1300 = extractvalue { i32, i1 } %1237, 0, !nosanitize !46
  %1301 = sext i32 %1300 to i64
  %1302 = getelementptr inbounds i8, ptr %2, i64 %1301
  %1303 = load i8, ptr %1302, align 1, !tbaa !5
  %1304 = zext i8 %1303 to i64
  %1305 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1304
  %1306 = load i64, ptr %1305, align 8, !tbaa !14
  %1307 = and i64 %1306, 255
  %1308 = lshr i64 %1299, %1307
  %1309 = and i64 %1306, -256
  %1310 = or i64 %1308, %1309
  %1311 = add i64 %1246, %1215
  %1312 = add i64 %1311, %1253
  %1313 = add i64 %1312, %1260
  %1314 = add i64 %1313, %1267
  %1315 = add i64 %1314, %1274
  %1316 = add i64 %1315, %1281
  %1317 = add i64 %1316, %1306
  %1318 = and i64 %1317, 255
  %1319 = lshr i64 %1318, 3
  %1320 = sub nsw i64 64, %1318
  %1321 = lshr i64 %1310, %1320
  %1322 = and i64 %1317, 7
  store i64 %1321, ptr %1216, align 1, !tbaa !14
  %1323 = getelementptr inbounds nuw i8, ptr %1216, i64 %1319
  br label %1324

1324:                                             ; preds = %1239, %1214
  %1325 = phi i64 [ %1215, %1214 ], [ %1322, %1239 ]
  %1326 = phi ptr [ %1216, %1214 ], [ %1323, %1239 ]
  %1327 = phi i64 [ %1217, %1214 ], [ %1310, %1239 ]
  %1328 = phi i32 [ %1218, %1214 ], [ %1300, %1239 ]
  %1329 = getelementptr i8, ptr %2, i64 -14
  %1330 = icmp sgt i32 %1328, 0
  br i1 %1330, label %1331, label %.loopexit

1331:                                             ; preds = %1324
  %1332 = zext nneg i32 %1328 to i64
  %1333 = getelementptr i8, ptr %2, i64 -1
  %1334 = getelementptr i8, ptr %2, i64 -2
  %1335 = getelementptr i8, ptr %2, i64 -3
  %1336 = getelementptr i8, ptr %2, i64 -4
  %1337 = getelementptr i8, ptr %2, i64 -5
  %1338 = getelementptr i8, ptr %2, i64 -6
  br label %1339

1339:                                             ; preds = %1339, %1331
  %1340 = phi i64 [ %1332, %1331 ], [ %1492, %1339 ]
  %1341 = phi i64 [ %1327, %1331 ], [ %1484, %1339 ]
  %1342 = phi ptr [ %1326, %1331 ], [ %1491, %1339 ]
  %1343 = phi i64 [ %1325, %1331 ], [ %1490, %1339 ]
  %1344 = getelementptr i8, ptr %1333, i64 %1340
  %1345 = load i8, ptr %1344, align 1, !tbaa !5
  %1346 = zext i8 %1345 to i64
  %1347 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1346
  %1348 = load i64, ptr %1347, align 8, !tbaa !14
  %1349 = and i64 %1348, 255
  %1350 = lshr i64 %1341, %1349
  %1351 = or i64 %1350, %1348
  %1352 = add i64 %1348, %1343
  %1353 = getelementptr i8, ptr %1334, i64 %1340
  %1354 = load i8, ptr %1353, align 1, !tbaa !5
  %1355 = zext i8 %1354 to i64
  %1356 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1355
  %1357 = load i64, ptr %1356, align 8, !tbaa !14
  %1358 = and i64 %1357, 255
  %1359 = lshr i64 %1351, %1358
  %1360 = or i64 %1359, %1357
  %1361 = add i64 %1352, %1357
  %1362 = getelementptr i8, ptr %1335, i64 %1340
  %1363 = load i8, ptr %1362, align 1, !tbaa !5
  %1364 = zext i8 %1363 to i64
  %1365 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1364
  %1366 = load i64, ptr %1365, align 8, !tbaa !14
  %1367 = and i64 %1366, 255
  %1368 = lshr i64 %1360, %1367
  %1369 = or i64 %1368, %1366
  %1370 = add i64 %1361, %1366
  %1371 = getelementptr i8, ptr %1336, i64 %1340
  %1372 = load i8, ptr %1371, align 1, !tbaa !5
  %1373 = zext i8 %1372 to i64
  %1374 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1373
  %1375 = load i64, ptr %1374, align 8, !tbaa !14
  %1376 = and i64 %1375, 255
  %1377 = lshr i64 %1369, %1376
  %1378 = or i64 %1377, %1375
  %1379 = add i64 %1370, %1375
  %1380 = getelementptr i8, ptr %1337, i64 %1340
  %1381 = load i8, ptr %1380, align 1, !tbaa !5
  %1382 = zext i8 %1381 to i64
  %1383 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1382
  %1384 = load i64, ptr %1383, align 8, !tbaa !14
  %1385 = and i64 %1384, 255
  %1386 = lshr i64 %1378, %1385
  %1387 = or i64 %1386, %1384
  %1388 = add i64 %1379, %1384
  %1389 = getelementptr i8, ptr %1338, i64 %1340
  %1390 = load i8, ptr %1389, align 1, !tbaa !5
  %1391 = zext i8 %1390 to i64
  %1392 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1391
  %1393 = load i64, ptr %1392, align 8, !tbaa !14
  %1394 = and i64 %1393, 255
  %1395 = lshr i64 %1387, %1394
  %1396 = or i64 %1395, %1393
  %1397 = add i64 %1388, %1393
  %1398 = getelementptr i8, ptr %2, i64 %1340
  %1399 = getelementptr i8, ptr %1398, i64 -7
  %1400 = load i8, ptr %1399, align 1, !tbaa !5
  %1401 = zext i8 %1400 to i64
  %1402 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1401
  %1403 = load i64, ptr %1402, align 8, !tbaa !14
  %1404 = and i64 %1403, 255
  %1405 = lshr i64 %1396, %1404
  %1406 = and i64 %1403, -256
  %1407 = or i64 %1405, %1406
  %1408 = add i64 %1397, %1403
  %1409 = and i64 %1408, 255
  %1410 = lshr i64 %1409, 3
  %1411 = sub nsw i64 64, %1409
  %1412 = lshr i64 %1407, %1411
  %1413 = and i64 %1408, 7
  store i64 %1412, ptr %1342, align 1, !tbaa !14
  %1414 = getelementptr inbounds nuw i8, ptr %1342, i64 %1410
  %1415 = shl i64 %1340, 32
  %sext23 = add i64 %1415, -51539607552
  %1416 = ashr exact i64 %sext23, 32
  %1417 = getelementptr inbounds i8, ptr %2, i64 %1416
  %1418 = load i8, ptr %1417, align 1, !tbaa !5
  %1419 = zext i8 %1418 to i64
  %1420 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1419
  %1421 = load i64, ptr %1420, align 8, !tbaa !14
  %sext24 = add i64 %1415, -47244640256
  %1422 = ashr exact i64 %sext24, 32
  %1423 = getelementptr inbounds i8, ptr %2, i64 %1422
  %1424 = load i8, ptr %1423, align 1, !tbaa !5
  %1425 = zext i8 %1424 to i64
  %1426 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1425
  %1427 = load i64, ptr %1426, align 8, !tbaa !14
  %sext25 = add i64 %1415, -42949672960
  %1428 = ashr exact i64 %sext25, 32
  %1429 = getelementptr inbounds i8, ptr %2, i64 %1428
  %1430 = load i8, ptr %1429, align 1, !tbaa !5
  %1431 = zext i8 %1430 to i64
  %1432 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1431
  %1433 = load i64, ptr %1432, align 8, !tbaa !14
  %sext26 = add i64 %1415, -38654705664
  %1434 = ashr exact i64 %sext26, 32
  %1435 = getelementptr inbounds i8, ptr %2, i64 %1434
  %1436 = load i8, ptr %1435, align 1, !tbaa !5
  %1437 = zext i8 %1436 to i64
  %1438 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1437
  %1439 = load i64, ptr %1438, align 8, !tbaa !14
  %sext27 = add i64 %1415, -34359738368
  %1440 = ashr exact i64 %sext27, 32
  %1441 = getelementptr inbounds i8, ptr %2, i64 %1440
  %1442 = load i8, ptr %1441, align 1, !tbaa !5
  %1443 = zext i8 %1442 to i64
  %1444 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1443
  %1445 = load i64, ptr %1444, align 8, !tbaa !14
  %1446 = and i64 %1439, 255
  %1447 = lshr i64 %1445, %1446
  %1448 = or i64 %1447, %1439
  %1449 = and i64 %1433, 255
  %1450 = lshr i64 %1448, %1449
  %1451 = or i64 %1450, %1433
  %1452 = and i64 %1427, 255
  %1453 = lshr i64 %1451, %1452
  %1454 = or i64 %1453, %1427
  %1455 = and i64 %1421, 255
  %1456 = lshr i64 %1454, %1455
  %1457 = or i64 %1456, %1421
  %sext28 = add i64 %1415, -55834574848
  %1458 = ashr exact i64 %sext28, 32
  %1459 = getelementptr inbounds i8, ptr %2, i64 %1458
  %1460 = load i8, ptr %1459, align 1, !tbaa !5
  %1461 = zext i8 %1460 to i64
  %1462 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1461
  %1463 = load i64, ptr %1462, align 8, !tbaa !14
  %1464 = and i64 %1463, 255
  %1465 = lshr i64 %1457, %1464
  %1466 = or i64 %1465, %1463
  %1467 = getelementptr i8, ptr %1329, i64 %1340
  %1468 = load i8, ptr %1467, align 1, !tbaa !5
  %1469 = zext i8 %1468 to i64
  %1470 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1469
  %1471 = load i64, ptr %1470, align 8, !tbaa !14
  %1472 = and i64 %1471, 255
  %1473 = lshr i64 %1466, %1472
  %1474 = and i64 %1471, -256
  %1475 = add i64 %1427, %1421
  %1476 = add i64 %1475, %1433
  %1477 = add i64 %1476, %1439
  %1478 = add i64 %1477, %1445
  %1479 = add i64 %1478, %1463
  %1480 = add i64 %1479, %1471
  %1481 = and i64 %1480, 255
  %1482 = lshr i64 %1407, %1481
  %1483 = or i64 %1482, %1474
  %1484 = or i64 %1483, %1473
  %1485 = add i64 %1480, %1413
  %1486 = and i64 %1485, 255
  %1487 = lshr i64 %1486, 3
  %1488 = sub nsw i64 64, %1486
  %1489 = lshr i64 %1484, %1488
  %1490 = and i64 %1485, 7
  store i64 %1489, ptr %1414, align 1, !tbaa !14
  %1491 = getelementptr inbounds nuw i8, ptr %1414, i64 %1487
  %1492 = add nsw i64 %1340, -14
  %1493 = icmp samesign ugt i64 %1340, 14
  br i1 %1493, label %1339, label %.loopexit, !llvm.loop !76

1494:                                             ; preds = %265
  %1495 = srem i32 %23, 8
  %1496 = icmp sgt i32 %1495, 0
  br i1 %1496, label %1497, label %1562

1497:                                             ; preds = %1494
  %1498 = and i32 %1495, 1
  %1499 = icmp eq i32 %1495, 1
  br i1 %1499, label %.thread57, label %1500

1500:                                             ; preds = %1497
  %1501 = and i32 %1495, 2147483646
  br label %1502

1502:                                             ; preds = %1502, %1500
  %1503 = phi i32 [ %23, %1500 ], [ %1519, %1502 ]
  %1504 = phi i64 [ 0, %1500 ], [ %1529, %1502 ]
  %1505 = phi i64 [ 0, %1500 ], [ %1530, %1502 ]
  %1506 = phi i32 [ 0, %1500 ], [ %1531, %1502 ]
  %1507 = add i32 %1503, -1
  %1508 = sext i32 %1507 to i64
  %1509 = getelementptr inbounds i8, ptr %2, i64 %1508
  %1510 = load i8, ptr %1509, align 1, !tbaa !5
  %1511 = zext i8 %1510 to i64
  %1512 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1511
  %1513 = load i64, ptr %1512, align 8, !tbaa !14
  %1514 = and i64 %1513, 255
  %1515 = lshr i64 %1504, %1514
  %1516 = and i64 %1513, -256
  %1517 = or i64 %1515, %1516
  %1518 = add i64 %1513, %1505
  %1519 = add i32 %1503, -2
  %1520 = sext i32 %1519 to i64
  %1521 = getelementptr inbounds i8, ptr %2, i64 %1520
  %1522 = load i8, ptr %1521, align 1, !tbaa !5
  %1523 = zext i8 %1522 to i64
  %1524 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1523
  %1525 = load i64, ptr %1524, align 8, !tbaa !14
  %1526 = and i64 %1525, 255
  %1527 = lshr i64 %1517, %1526
  %1528 = and i64 %1525, -256
  %1529 = or i64 %1527, %1528
  %1530 = add i64 %1518, %1525
  %1531 = add i32 %1506, 2
  %1532 = icmp eq i32 %1531, %1501
  br i1 %1532, label %1534, label %1502, !llvm.loop !77

1533:                                             ; preds = %1587, %1584, %1581, %1578, %1575, %1572, %1569
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

1534:                                             ; preds = %1502
  %1535 = sub i32 %23, %1501
  %1536 = icmp eq i32 %1498, 0
  br i1 %1536, label %1552, label %.thread57

.thread57:                                        ; preds = %1497, %1534
  %1537 = phi i64 [ %1530, %1534 ], [ 0, %1497 ]
  %1538 = phi i64 [ %1529, %1534 ], [ 0, %1497 ]
  %1539 = phi i32 [ %1535, %1534 ], [ %23, %1497 ]
  %1540 = add i32 %1539, -1
  %1541 = sext i32 %1540 to i64
  %1542 = getelementptr inbounds i8, ptr %2, i64 %1541
  %1543 = load i8, ptr %1542, align 1, !tbaa !5
  %1544 = zext i8 %1543 to i64
  %1545 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1544
  %1546 = load i64, ptr %1545, align 8, !tbaa !14
  %1547 = and i64 %1546, 255
  %1548 = lshr i64 %1538, %1547
  %1549 = and i64 %1546, -256
  %1550 = or i64 %1548, %1549
  %1551 = add i64 %1546, %1537
  br label %1552

1552:                                             ; preds = %.thread57, %1534
  %1553 = phi i64 [ %1529, %1534 ], [ %1550, %.thread57 ]
  %1554 = phi i64 [ %1530, %1534 ], [ %1551, %.thread57 ]
  %1555 = sub nsw i32 %23, %1495
  %1556 = and i64 %1554, 255
  %1557 = lshr i64 %1556, 3
  %1558 = sub nsw i64 64, %1556
  %1559 = lshr i64 %1553, %1558
  %1560 = and i64 %1554, 7
  store i64 %1559, ptr %0, align 1, !tbaa !14
  %1561 = getelementptr inbounds nuw i8, ptr %0, i64 %1557
  br label %1562

1562:                                             ; preds = %1552, %1494
  %1563 = phi i64 [ %1560, %1552 ], [ 0, %1494 ]
  %1564 = phi ptr [ %1561, %1552 ], [ %0, %1494 ]
  %1565 = phi i64 [ %1553, %1552 ], [ 0, %1494 ]
  %1566 = phi i32 [ %1555, %1552 ], [ %23, %1494 ]
  %1567 = and i32 %1566, 15
  %1568 = icmp eq i32 %1567, 0
  br i1 %1568, label %1686, label %1569

1569:                                             ; preds = %1562
  %1570 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1566, i32 -2)
  %1571 = extractvalue { i32, i1 } %1570, 1, !nosanitize !46
  br i1 %1571, label %1533, label %1572, !prof !49, !nosanitize !46

1572:                                             ; preds = %1569
  %1573 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1566, i32 -3)
  %1574 = extractvalue { i32, i1 } %1573, 1, !nosanitize !46
  br i1 %1574, label %1533, label %1575, !prof !49, !nosanitize !46

1575:                                             ; preds = %1572
  %1576 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1566, i32 -4)
  %1577 = extractvalue { i32, i1 } %1576, 1, !nosanitize !46
  br i1 %1577, label %1533, label %1578, !prof !49, !nosanitize !46

1578:                                             ; preds = %1575
  %1579 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1566, i32 -5)
  %1580 = extractvalue { i32, i1 } %1579, 1, !nosanitize !46
  br i1 %1580, label %1533, label %1581, !prof !49, !nosanitize !46

1581:                                             ; preds = %1578
  %1582 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1566, i32 -6)
  %1583 = extractvalue { i32, i1 } %1582, 1, !nosanitize !46
  br i1 %1583, label %1533, label %1584, !prof !49, !nosanitize !46

1584:                                             ; preds = %1581
  %1585 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1566, i32 -7)
  %1586 = extractvalue { i32, i1 } %1585, 1, !nosanitize !46
  br i1 %1586, label %1533, label %1587, !prof !49, !nosanitize !46

1587:                                             ; preds = %1584
  %1588 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1566, i32 -8)
  %1589 = extractvalue { i32, i1 } %1588, 1, !nosanitize !46
  br i1 %1589, label %1533, label %1590, !prof !49, !nosanitize !46

1590:                                             ; preds = %1587
  %1591 = extractvalue { i32, i1 } %1585, 0, !nosanitize !46
  %1592 = sext i32 %1591 to i64
  %1593 = getelementptr inbounds i8, ptr %2, i64 %1592
  %1594 = load i8, ptr %1593, align 1, !tbaa !5
  %1595 = zext i8 %1594 to i64
  %1596 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1595
  %1597 = load i64, ptr %1596, align 8, !tbaa !14
  %1598 = extractvalue { i32, i1 } %1582, 0, !nosanitize !46
  %1599 = sext i32 %1598 to i64
  %1600 = getelementptr inbounds i8, ptr %2, i64 %1599
  %1601 = load i8, ptr %1600, align 1, !tbaa !5
  %1602 = zext i8 %1601 to i64
  %1603 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1602
  %1604 = load i64, ptr %1603, align 8, !tbaa !14
  %1605 = extractvalue { i32, i1 } %1579, 0, !nosanitize !46
  %1606 = sext i32 %1605 to i64
  %1607 = getelementptr inbounds i8, ptr %2, i64 %1606
  %1608 = load i8, ptr %1607, align 1, !tbaa !5
  %1609 = zext i8 %1608 to i64
  %1610 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1609
  %1611 = load i64, ptr %1610, align 8, !tbaa !14
  %1612 = extractvalue { i32, i1 } %1576, 0, !nosanitize !46
  %1613 = sext i32 %1612 to i64
  %1614 = getelementptr inbounds i8, ptr %2, i64 %1613
  %1615 = load i8, ptr %1614, align 1, !tbaa !5
  %1616 = zext i8 %1615 to i64
  %1617 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1616
  %1618 = load i64, ptr %1617, align 8, !tbaa !14
  %1619 = extractvalue { i32, i1 } %1573, 0, !nosanitize !46
  %1620 = sext i32 %1619 to i64
  %1621 = getelementptr inbounds i8, ptr %2, i64 %1620
  %1622 = load i8, ptr %1621, align 1, !tbaa !5
  %1623 = zext i8 %1622 to i64
  %1624 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1623
  %1625 = load i64, ptr %1624, align 8, !tbaa !14
  %1626 = extractvalue { i32, i1 } %1570, 0, !nosanitize !46
  %1627 = sext i32 %1626 to i64
  %1628 = getelementptr inbounds i8, ptr %2, i64 %1627
  %1629 = load i8, ptr %1628, align 1, !tbaa !5
  %1630 = zext i8 %1629 to i64
  %1631 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1630
  %1632 = load i64, ptr %1631, align 8, !tbaa !14
  %1633 = sext i32 %1566 to i64
  %1634 = getelementptr i8, ptr %2, i64 %1633
  %1635 = getelementptr i8, ptr %1634, i64 -1
  %1636 = load i8, ptr %1635, align 1, !tbaa !5
  %1637 = zext i8 %1636 to i64
  %1638 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1637
  %1639 = load i64, ptr %1638, align 8, !tbaa !14
  %1640 = and i64 %1639, 255
  %1641 = lshr i64 %1565, %1640
  %1642 = or i64 %1641, %1639
  %1643 = and i64 %1632, 255
  %1644 = lshr i64 %1642, %1643
  %1645 = or i64 %1644, %1632
  %1646 = and i64 %1625, 255
  %1647 = lshr i64 %1645, %1646
  %1648 = or i64 %1647, %1625
  %1649 = and i64 %1618, 255
  %1650 = lshr i64 %1648, %1649
  %1651 = or i64 %1650, %1618
  %1652 = and i64 %1611, 255
  %1653 = lshr i64 %1651, %1652
  %1654 = or i64 %1653, %1611
  %1655 = and i64 %1604, 255
  %1656 = lshr i64 %1654, %1655
  %1657 = or i64 %1656, %1604
  %1658 = and i64 %1597, 255
  %1659 = lshr i64 %1657, %1658
  %1660 = or i64 %1659, %1597
  %1661 = extractvalue { i32, i1 } %1588, 0, !nosanitize !46
  %1662 = sext i32 %1661 to i64
  %1663 = getelementptr inbounds i8, ptr %2, i64 %1662
  %1664 = load i8, ptr %1663, align 1, !tbaa !5
  %1665 = zext i8 %1664 to i64
  %1666 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1665
  %1667 = load i64, ptr %1666, align 8, !tbaa !14
  %1668 = and i64 %1667, 255
  %1669 = lshr i64 %1660, %1668
  %1670 = and i64 %1667, -256
  %1671 = or i64 %1669, %1670
  %1672 = add i64 %1597, %1563
  %1673 = add i64 %1672, %1604
  %1674 = add i64 %1673, %1611
  %1675 = add i64 %1674, %1618
  %1676 = add i64 %1675, %1625
  %1677 = add i64 %1676, %1632
  %1678 = add i64 %1677, %1639
  %1679 = add i64 %1678, %1667
  %1680 = and i64 %1679, 255
  %1681 = lshr i64 %1680, 3
  %1682 = sub nsw i64 64, %1680
  %1683 = lshr i64 %1671, %1682
  %1684 = and i64 %1679, 7
  store i64 %1683, ptr %1564, align 1, !tbaa !14
  %1685 = getelementptr inbounds nuw i8, ptr %1564, i64 %1681
  br label %1686

1686:                                             ; preds = %1590, %1562
  %1687 = phi i64 [ %1563, %1562 ], [ %1684, %1590 ]
  %1688 = phi ptr [ %1564, %1562 ], [ %1685, %1590 ]
  %1689 = phi i64 [ %1565, %1562 ], [ %1671, %1590 ]
  %1690 = phi i32 [ %1566, %1562 ], [ %1661, %1590 ]
  %1691 = getelementptr i8, ptr %2, i64 -16
  %1692 = icmp sgt i32 %1690, 0
  br i1 %1692, label %1693, label %.loopexit

1693:                                             ; preds = %1686
  %1694 = zext nneg i32 %1690 to i64
  %1695 = getelementptr i8, ptr %2, i64 -1
  %1696 = getelementptr i8, ptr %2, i64 -2
  %1697 = getelementptr i8, ptr %2, i64 -3
  %1698 = getelementptr i8, ptr %2, i64 -4
  %1699 = getelementptr i8, ptr %2, i64 -5
  %1700 = getelementptr i8, ptr %2, i64 -6
  %1701 = getelementptr i8, ptr %2, i64 -7
  br label %1702

1702:                                             ; preds = %1702, %1693
  %1703 = phi i64 [ %1694, %1693 ], [ %1874, %1702 ]
  %1704 = phi i64 [ %1689, %1693 ], [ %1866, %1702 ]
  %1705 = phi ptr [ %1688, %1693 ], [ %1873, %1702 ]
  %1706 = phi i64 [ %1687, %1693 ], [ %1872, %1702 ]
  %1707 = getelementptr i8, ptr %1695, i64 %1703
  %1708 = load i8, ptr %1707, align 1, !tbaa !5
  %1709 = zext i8 %1708 to i64
  %1710 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1709
  %1711 = load i64, ptr %1710, align 8, !tbaa !14
  %1712 = and i64 %1711, 255
  %1713 = lshr i64 %1704, %1712
  %1714 = or i64 %1713, %1711
  %1715 = add i64 %1711, %1706
  %1716 = getelementptr i8, ptr %1696, i64 %1703
  %1717 = load i8, ptr %1716, align 1, !tbaa !5
  %1718 = zext i8 %1717 to i64
  %1719 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1718
  %1720 = load i64, ptr %1719, align 8, !tbaa !14
  %1721 = and i64 %1720, 255
  %1722 = lshr i64 %1714, %1721
  %1723 = or i64 %1722, %1720
  %1724 = add i64 %1715, %1720
  %1725 = getelementptr i8, ptr %1697, i64 %1703
  %1726 = load i8, ptr %1725, align 1, !tbaa !5
  %1727 = zext i8 %1726 to i64
  %1728 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1727
  %1729 = load i64, ptr %1728, align 8, !tbaa !14
  %1730 = and i64 %1729, 255
  %1731 = lshr i64 %1723, %1730
  %1732 = or i64 %1731, %1729
  %1733 = add i64 %1724, %1729
  %1734 = getelementptr i8, ptr %1698, i64 %1703
  %1735 = load i8, ptr %1734, align 1, !tbaa !5
  %1736 = zext i8 %1735 to i64
  %1737 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1736
  %1738 = load i64, ptr %1737, align 8, !tbaa !14
  %1739 = and i64 %1738, 255
  %1740 = lshr i64 %1732, %1739
  %1741 = or i64 %1740, %1738
  %1742 = add i64 %1733, %1738
  %1743 = getelementptr i8, ptr %1699, i64 %1703
  %1744 = load i8, ptr %1743, align 1, !tbaa !5
  %1745 = zext i8 %1744 to i64
  %1746 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1745
  %1747 = load i64, ptr %1746, align 8, !tbaa !14
  %1748 = and i64 %1747, 255
  %1749 = lshr i64 %1741, %1748
  %1750 = or i64 %1749, %1747
  %1751 = add i64 %1742, %1747
  %1752 = getelementptr i8, ptr %1700, i64 %1703
  %1753 = load i8, ptr %1752, align 1, !tbaa !5
  %1754 = zext i8 %1753 to i64
  %1755 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1754
  %1756 = load i64, ptr %1755, align 8, !tbaa !14
  %1757 = and i64 %1756, 255
  %1758 = lshr i64 %1750, %1757
  %1759 = or i64 %1758, %1756
  %1760 = add i64 %1751, %1756
  %1761 = getelementptr i8, ptr %1701, i64 %1703
  %1762 = load i8, ptr %1761, align 1, !tbaa !5
  %1763 = zext i8 %1762 to i64
  %1764 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1763
  %1765 = load i64, ptr %1764, align 8, !tbaa !14
  %1766 = and i64 %1765, 255
  %1767 = lshr i64 %1759, %1766
  %1768 = or i64 %1767, %1765
  %1769 = add i64 %1760, %1765
  %1770 = getelementptr i8, ptr %2, i64 %1703
  %1771 = getelementptr i8, ptr %1770, i64 -8
  %1772 = load i8, ptr %1771, align 1, !tbaa !5
  %1773 = zext i8 %1772 to i64
  %1774 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1773
  %1775 = load i64, ptr %1774, align 8, !tbaa !14
  %1776 = and i64 %1775, 255
  %1777 = lshr i64 %1768, %1776
  %1778 = and i64 %1775, -256
  %1779 = or i64 %1777, %1778
  %1780 = add i64 %1769, %1775
  %1781 = and i64 %1780, 255
  %1782 = lshr i64 %1781, 3
  %1783 = sub nsw i64 64, %1781
  %1784 = lshr i64 %1779, %1783
  %1785 = and i64 %1780, 7
  store i64 %1784, ptr %1705, align 1, !tbaa !14
  %1786 = getelementptr inbounds nuw i8, ptr %1705, i64 %1782
  %1787 = shl i64 %1703, 32
  %sext = add i64 %1787, -60129542144
  %1788 = ashr exact i64 %sext, 32
  %1789 = getelementptr inbounds i8, ptr %2, i64 %1788
  %1790 = load i8, ptr %1789, align 1, !tbaa !5
  %1791 = zext i8 %1790 to i64
  %1792 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1791
  %1793 = load i64, ptr %1792, align 8, !tbaa !14
  %sext17 = add i64 %1787, -55834574848
  %1794 = ashr exact i64 %sext17, 32
  %1795 = getelementptr inbounds i8, ptr %2, i64 %1794
  %1796 = load i8, ptr %1795, align 1, !tbaa !5
  %1797 = zext i8 %1796 to i64
  %1798 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1797
  %1799 = load i64, ptr %1798, align 8, !tbaa !14
  %sext18 = add i64 %1787, -51539607552
  %1800 = ashr exact i64 %sext18, 32
  %1801 = getelementptr inbounds i8, ptr %2, i64 %1800
  %1802 = load i8, ptr %1801, align 1, !tbaa !5
  %1803 = zext i8 %1802 to i64
  %1804 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1803
  %1805 = load i64, ptr %1804, align 8, !tbaa !14
  %sext19 = add i64 %1787, -47244640256
  %1806 = ashr exact i64 %sext19, 32
  %1807 = getelementptr inbounds i8, ptr %2, i64 %1806
  %1808 = load i8, ptr %1807, align 1, !tbaa !5
  %1809 = zext i8 %1808 to i64
  %1810 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1809
  %1811 = load i64, ptr %1810, align 8, !tbaa !14
  %sext20 = add i64 %1787, -42949672960
  %1812 = ashr exact i64 %sext20, 32
  %1813 = getelementptr inbounds i8, ptr %2, i64 %1812
  %1814 = load i8, ptr %1813, align 1, !tbaa !5
  %1815 = zext i8 %1814 to i64
  %1816 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1815
  %1817 = load i64, ptr %1816, align 8, !tbaa !14
  %sext21 = add i64 %1787, -38654705664
  %1818 = ashr exact i64 %sext21, 32
  %1819 = getelementptr inbounds i8, ptr %2, i64 %1818
  %1820 = load i8, ptr %1819, align 1, !tbaa !5
  %1821 = zext i8 %1820 to i64
  %1822 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1821
  %1823 = load i64, ptr %1822, align 8, !tbaa !14
  %1824 = and i64 %1817, 255
  %1825 = lshr i64 %1823, %1824
  %1826 = or i64 %1825, %1817
  %1827 = and i64 %1811, 255
  %1828 = lshr i64 %1826, %1827
  %1829 = or i64 %1828, %1811
  %1830 = and i64 %1805, 255
  %1831 = lshr i64 %1829, %1830
  %1832 = or i64 %1831, %1805
  %1833 = and i64 %1799, 255
  %1834 = lshr i64 %1832, %1833
  %1835 = or i64 %1834, %1799
  %1836 = and i64 %1793, 255
  %1837 = lshr i64 %1835, %1836
  %1838 = or i64 %1837, %1793
  %sext22 = add i64 %1787, -64424509440
  %1839 = ashr exact i64 %sext22, 32
  %1840 = getelementptr inbounds i8, ptr %2, i64 %1839
  %1841 = load i8, ptr %1840, align 1, !tbaa !5
  %1842 = zext i8 %1841 to i64
  %1843 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1842
  %1844 = load i64, ptr %1843, align 8, !tbaa !14
  %1845 = and i64 %1844, 255
  %1846 = lshr i64 %1838, %1845
  %1847 = or i64 %1846, %1844
  %1848 = getelementptr i8, ptr %1691, i64 %1703
  %1849 = load i8, ptr %1848, align 1, !tbaa !5
  %1850 = zext i8 %1849 to i64
  %1851 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1850
  %1852 = load i64, ptr %1851, align 8, !tbaa !14
  %1853 = and i64 %1852, 255
  %1854 = lshr i64 %1847, %1853
  %1855 = and i64 %1852, -256
  %1856 = add i64 %1799, %1793
  %1857 = add i64 %1856, %1805
  %1858 = add i64 %1857, %1811
  %1859 = add i64 %1858, %1817
  %1860 = add i64 %1859, %1823
  %1861 = add i64 %1860, %1844
  %1862 = add i64 %1861, %1852
  %1863 = and i64 %1862, 255
  %1864 = lshr i64 %1779, %1863
  %1865 = or i64 %1864, %1855
  %1866 = or i64 %1865, %1854
  %1867 = add i64 %1862, %1785
  %1868 = and i64 %1867, 255
  %1869 = lshr i64 %1868, 3
  %1870 = sub nsw i64 64, %1868
  %1871 = lshr i64 %1866, %1870
  %1872 = and i64 %1867, 7
  store i64 %1871, ptr %1786, align 1, !tbaa !14
  %1873 = getelementptr inbounds nuw i8, ptr %1786, i64 %1869
  %1874 = add nsw i64 %1703, -16
  %1875 = icmp samesign ugt i64 %1703, 16
  br i1 %1875, label %1702, label %.loopexit, !llvm.loop !76

1876:                                             ; preds = %265
  %1877 = srem i32 %23, 9
  %1878 = icmp sgt i32 %1877, 0
  br i1 %1878, label %1879, label %1944

1879:                                             ; preds = %1876
  %1880 = and i32 %1877, 1
  %1881 = icmp eq i32 %1877, 1
  br i1 %1881, label %.thread58, label %1882

1882:                                             ; preds = %1879
  %1883 = and i32 %1877, 2147483646
  br label %1884

1884:                                             ; preds = %1884, %1882
  %1885 = phi i32 [ %23, %1882 ], [ %1901, %1884 ]
  %1886 = phi i64 [ 0, %1882 ], [ %1911, %1884 ]
  %1887 = phi i64 [ 0, %1882 ], [ %1912, %1884 ]
  %1888 = phi i32 [ 0, %1882 ], [ %1913, %1884 ]
  %1889 = add i32 %1885, -1
  %1890 = sext i32 %1889 to i64
  %1891 = getelementptr inbounds i8, ptr %2, i64 %1890
  %1892 = load i8, ptr %1891, align 1, !tbaa !5
  %1893 = zext i8 %1892 to i64
  %1894 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1893
  %1895 = load i64, ptr %1894, align 8, !tbaa !14
  %1896 = and i64 %1895, 255
  %1897 = lshr i64 %1886, %1896
  %1898 = and i64 %1895, -256
  %1899 = or i64 %1897, %1898
  %1900 = add i64 %1895, %1887
  %1901 = add i32 %1885, -2
  %1902 = sext i32 %1901 to i64
  %1903 = getelementptr inbounds i8, ptr %2, i64 %1902
  %1904 = load i8, ptr %1903, align 1, !tbaa !5
  %1905 = zext i8 %1904 to i64
  %1906 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1905
  %1907 = load i64, ptr %1906, align 8, !tbaa !14
  %1908 = and i64 %1907, 255
  %1909 = lshr i64 %1899, %1908
  %1910 = and i64 %1907, -256
  %1911 = or i64 %1909, %1910
  %1912 = add i64 %1900, %1907
  %1913 = add i32 %1888, 2
  %1914 = icmp eq i32 %1913, %1883
  br i1 %1914, label %1916, label %1884, !llvm.loop !77

1915:                                             ; preds = %1972, %1969, %1966, %1963, %1960, %1957, %1954, %1951
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

1916:                                             ; preds = %1884
  %1917 = sub i32 %23, %1883
  %1918 = icmp eq i32 %1880, 0
  br i1 %1918, label %1934, label %.thread58

.thread58:                                        ; preds = %1879, %1916
  %1919 = phi i64 [ %1912, %1916 ], [ 0, %1879 ]
  %1920 = phi i64 [ %1911, %1916 ], [ 0, %1879 ]
  %1921 = phi i32 [ %1917, %1916 ], [ %23, %1879 ]
  %1922 = add i32 %1921, -1
  %1923 = sext i32 %1922 to i64
  %1924 = getelementptr inbounds i8, ptr %2, i64 %1923
  %1925 = load i8, ptr %1924, align 1, !tbaa !5
  %1926 = zext i8 %1925 to i64
  %1927 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1926
  %1928 = load i64, ptr %1927, align 8, !tbaa !14
  %1929 = and i64 %1928, 255
  %1930 = lshr i64 %1920, %1929
  %1931 = and i64 %1928, -256
  %1932 = or i64 %1930, %1931
  %1933 = add i64 %1928, %1919
  br label %1934

1934:                                             ; preds = %.thread58, %1916
  %1935 = phi i64 [ %1911, %1916 ], [ %1932, %.thread58 ]
  %1936 = phi i64 [ %1912, %1916 ], [ %1933, %.thread58 ]
  %1937 = sub nsw i32 %23, %1877
  %1938 = and i64 %1936, 255
  %1939 = lshr i64 %1938, 3
  %1940 = sub nsw i64 64, %1938
  %1941 = lshr i64 %1935, %1940
  %1942 = and i64 %1936, 7
  store i64 %1941, ptr %0, align 1, !tbaa !14
  %1943 = getelementptr inbounds nuw i8, ptr %0, i64 %1939
  br label %1944

1944:                                             ; preds = %1934, %1876
  %1945 = phi i64 [ %1942, %1934 ], [ 0, %1876 ]
  %1946 = phi ptr [ %1943, %1934 ], [ %0, %1876 ]
  %1947 = phi i64 [ %1935, %1934 ], [ 0, %1876 ]
  %1948 = phi i32 [ %1937, %1934 ], [ %23, %1876 ]
  %1949 = srem i32 %1948, 18
  %1950 = icmp eq i32 %1949, 0
  br i1 %1950, label %2081, label %1951

1951:                                             ; preds = %1944
  %1952 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1948, i32 -1)
  %1953 = extractvalue { i32, i1 } %1952, 1, !nosanitize !46
  br i1 %1953, label %1915, label %1954, !prof !49, !nosanitize !46

1954:                                             ; preds = %1951
  %1955 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1948, i32 -2)
  %1956 = extractvalue { i32, i1 } %1955, 1, !nosanitize !46
  br i1 %1956, label %1915, label %1957, !prof !49, !nosanitize !46

1957:                                             ; preds = %1954
  %1958 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1948, i32 -4)
  %1959 = extractvalue { i32, i1 } %1958, 1, !nosanitize !46
  br i1 %1959, label %1915, label %1960, !prof !49, !nosanitize !46

1960:                                             ; preds = %1957
  %1961 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1948, i32 -5)
  %1962 = extractvalue { i32, i1 } %1961, 1, !nosanitize !46
  br i1 %1962, label %1915, label %1963, !prof !49, !nosanitize !46

1963:                                             ; preds = %1960
  %1964 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1948, i32 -6)
  %1965 = extractvalue { i32, i1 } %1964, 1, !nosanitize !46
  br i1 %1965, label %1915, label %1966, !prof !49, !nosanitize !46

1966:                                             ; preds = %1963
  %1967 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1948, i32 -7)
  %1968 = extractvalue { i32, i1 } %1967, 1, !nosanitize !46
  br i1 %1968, label %1915, label %1969, !prof !49, !nosanitize !46

1969:                                             ; preds = %1966
  %1970 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1948, i32 -8)
  %1971 = extractvalue { i32, i1 } %1970, 1, !nosanitize !46
  br i1 %1971, label %1915, label %1972, !prof !49, !nosanitize !46

1972:                                             ; preds = %1969
  %1973 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1948, i32 -9)
  %1974 = extractvalue { i32, i1 } %1973, 1, !nosanitize !46
  br i1 %1974, label %1915, label %1975, !prof !49, !nosanitize !46

1975:                                             ; preds = %1972
  %1976 = extractvalue { i32, i1 } %1970, 0, !nosanitize !46
  %1977 = sext i32 %1976 to i64
  %1978 = getelementptr inbounds i8, ptr %2, i64 %1977
  %1979 = load i8, ptr %1978, align 1, !tbaa !5
  %1980 = zext i8 %1979 to i64
  %1981 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1980
  %1982 = load i64, ptr %1981, align 8, !tbaa !14
  %1983 = extractvalue { i32, i1 } %1967, 0, !nosanitize !46
  %1984 = sext i32 %1983 to i64
  %1985 = getelementptr inbounds i8, ptr %2, i64 %1984
  %1986 = load i8, ptr %1985, align 1, !tbaa !5
  %1987 = zext i8 %1986 to i64
  %1988 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1987
  %1989 = load i64, ptr %1988, align 8, !tbaa !14
  %1990 = extractvalue { i32, i1 } %1964, 0, !nosanitize !46
  %1991 = sext i32 %1990 to i64
  %1992 = getelementptr inbounds i8, ptr %2, i64 %1991
  %1993 = load i8, ptr %1992, align 1, !tbaa !5
  %1994 = zext i8 %1993 to i64
  %1995 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1994
  %1996 = load i64, ptr %1995, align 8, !tbaa !14
  %1997 = extractvalue { i32, i1 } %1961, 0, !nosanitize !46
  %1998 = sext i32 %1997 to i64
  %1999 = getelementptr inbounds i8, ptr %2, i64 %1998
  %2000 = load i8, ptr %1999, align 1, !tbaa !5
  %2001 = zext i8 %2000 to i64
  %2002 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2001
  %2003 = load i64, ptr %2002, align 8, !tbaa !14
  %2004 = extractvalue { i32, i1 } %1958, 0, !nosanitize !46
  %2005 = sext i32 %2004 to i64
  %2006 = getelementptr inbounds i8, ptr %2, i64 %2005
  %2007 = load i8, ptr %2006, align 1, !tbaa !5
  %2008 = zext i8 %2007 to i64
  %2009 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2008
  %2010 = load i64, ptr %2009, align 8, !tbaa !14
  %2011 = sext i32 %1948 to i64
  %2012 = getelementptr i8, ptr %2, i64 %2011
  %2013 = getelementptr i8, ptr %2012, i64 -3
  %2014 = load i8, ptr %2013, align 1, !tbaa !5
  %2015 = zext i8 %2014 to i64
  %2016 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2015
  %2017 = load i64, ptr %2016, align 8, !tbaa !14
  %2018 = extractvalue { i32, i1 } %1955, 0, !nosanitize !46
  %2019 = sext i32 %2018 to i64
  %2020 = getelementptr inbounds i8, ptr %2, i64 %2019
  %2021 = load i8, ptr %2020, align 1, !tbaa !5
  %2022 = zext i8 %2021 to i64
  %2023 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2022
  %2024 = load i64, ptr %2023, align 8, !tbaa !14
  %2025 = extractvalue { i32, i1 } %1952, 0, !nosanitize !46
  %2026 = sext i32 %2025 to i64
  %2027 = getelementptr inbounds i8, ptr %2, i64 %2026
  %2028 = load i8, ptr %2027, align 1, !tbaa !5
  %2029 = zext i8 %2028 to i64
  %2030 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2029
  %2031 = load i64, ptr %2030, align 8, !tbaa !14
  %2032 = and i64 %2031, 255
  %2033 = lshr i64 %1947, %2032
  %2034 = or i64 %2033, %2031
  %2035 = and i64 %2024, 255
  %2036 = lshr i64 %2034, %2035
  %2037 = or i64 %2036, %2024
  %2038 = and i64 %2017, 255
  %2039 = lshr i64 %2037, %2038
  %2040 = or i64 %2039, %2017
  %2041 = and i64 %2010, 255
  %2042 = lshr i64 %2040, %2041
  %2043 = or i64 %2042, %2010
  %2044 = and i64 %2003, 255
  %2045 = lshr i64 %2043, %2044
  %2046 = or i64 %2045, %2003
  %2047 = and i64 %1996, 255
  %2048 = lshr i64 %2046, %2047
  %2049 = or i64 %2048, %1996
  %2050 = and i64 %1989, 255
  %2051 = lshr i64 %2049, %2050
  %2052 = or i64 %2051, %1989
  %2053 = and i64 %1982, 255
  %2054 = lshr i64 %2052, %2053
  %2055 = or i64 %2054, %1982
  %2056 = extractvalue { i32, i1 } %1973, 0, !nosanitize !46
  %2057 = sext i32 %2056 to i64
  %2058 = getelementptr inbounds i8, ptr %2, i64 %2057
  %2059 = load i8, ptr %2058, align 1, !tbaa !5
  %2060 = zext i8 %2059 to i64
  %2061 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2060
  %2062 = load i64, ptr %2061, align 8, !tbaa !14
  %2063 = and i64 %2062, 255
  %2064 = lshr i64 %2055, %2063
  %2065 = or i64 %2064, %2062
  %2066 = add i64 %1982, %1945
  %2067 = add i64 %2066, %1989
  %2068 = add i64 %2067, %1996
  %2069 = add i64 %2068, %2003
  %2070 = add i64 %2069, %2010
  %2071 = add i64 %2070, %2017
  %2072 = add i64 %2071, %2024
  %2073 = add i64 %2072, %2031
  %2074 = add i64 %2073, %2062
  %2075 = and i64 %2074, 255
  %2076 = lshr i64 %2075, 3
  %2077 = sub nsw i64 64, %2075
  %2078 = lshr i64 %2065, %2077
  %2079 = and i64 %2074, 7
  store i64 %2078, ptr %1946, align 1, !tbaa !14
  %2080 = getelementptr inbounds nuw i8, ptr %1946, i64 %2076
  br label %2081

2081:                                             ; preds = %1975, %1944
  %2082 = phi i64 [ %1945, %1944 ], [ %2079, %1975 ]
  %2083 = phi ptr [ %1946, %1944 ], [ %2080, %1975 ]
  %2084 = phi i64 [ %1947, %1944 ], [ %2065, %1975 ]
  %2085 = phi i32 [ %1948, %1944 ], [ %2056, %1975 ]
  %2086 = getelementptr i8, ptr %2, i64 -18
  %2087 = icmp sgt i32 %2085, 0
  br i1 %2087, label %2088, label %.loopexit

2088:                                             ; preds = %2081
  %2089 = zext nneg i32 %2085 to i64
  %2090 = getelementptr i8, ptr %2, i64 -1
  %2091 = getelementptr i8, ptr %2, i64 -2
  %2092 = getelementptr i8, ptr %2, i64 -3
  %2093 = getelementptr i8, ptr %2, i64 -4
  %2094 = getelementptr i8, ptr %2, i64 -5
  %2095 = getelementptr i8, ptr %2, i64 -6
  %2096 = getelementptr i8, ptr %2, i64 -7
  %2097 = getelementptr i8, ptr %2, i64 -8
  br label %2098

2098:                                             ; preds = %2098, %2088
  %2099 = phi i64 [ %2089, %2088 ], [ %2287, %2098 ]
  %2100 = phi i64 [ %2084, %2088 ], [ %2279, %2098 ]
  %2101 = phi ptr [ %2083, %2088 ], [ %2286, %2098 ]
  %2102 = phi i64 [ %2082, %2088 ], [ %2285, %2098 ]
  %2103 = getelementptr i8, ptr %2090, i64 %2099
  %2104 = load i8, ptr %2103, align 1, !tbaa !5
  %2105 = zext i8 %2104 to i64
  %2106 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2105
  %2107 = load i64, ptr %2106, align 8, !tbaa !14
  %2108 = and i64 %2107, 255
  %2109 = lshr i64 %2100, %2108
  %2110 = or i64 %2109, %2107
  %2111 = add i64 %2107, %2102
  %2112 = getelementptr i8, ptr %2091, i64 %2099
  %2113 = load i8, ptr %2112, align 1, !tbaa !5
  %2114 = zext i8 %2113 to i64
  %2115 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2114
  %2116 = load i64, ptr %2115, align 8, !tbaa !14
  %2117 = and i64 %2116, 255
  %2118 = lshr i64 %2110, %2117
  %2119 = or i64 %2118, %2116
  %2120 = add i64 %2111, %2116
  %2121 = getelementptr i8, ptr %2092, i64 %2099
  %2122 = load i8, ptr %2121, align 1, !tbaa !5
  %2123 = zext i8 %2122 to i64
  %2124 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2123
  %2125 = load i64, ptr %2124, align 8, !tbaa !14
  %2126 = and i64 %2125, 255
  %2127 = lshr i64 %2119, %2126
  %2128 = or i64 %2127, %2125
  %2129 = add i64 %2120, %2125
  %2130 = getelementptr i8, ptr %2093, i64 %2099
  %2131 = load i8, ptr %2130, align 1, !tbaa !5
  %2132 = zext i8 %2131 to i64
  %2133 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2132
  %2134 = load i64, ptr %2133, align 8, !tbaa !14
  %2135 = and i64 %2134, 255
  %2136 = lshr i64 %2128, %2135
  %2137 = or i64 %2136, %2134
  %2138 = add i64 %2129, %2134
  %2139 = getelementptr i8, ptr %2094, i64 %2099
  %2140 = load i8, ptr %2139, align 1, !tbaa !5
  %2141 = zext i8 %2140 to i64
  %2142 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2141
  %2143 = load i64, ptr %2142, align 8, !tbaa !14
  %2144 = and i64 %2143, 255
  %2145 = lshr i64 %2137, %2144
  %2146 = or i64 %2145, %2143
  %2147 = add i64 %2138, %2143
  %2148 = getelementptr i8, ptr %2095, i64 %2099
  %2149 = load i8, ptr %2148, align 1, !tbaa !5
  %2150 = zext i8 %2149 to i64
  %2151 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2150
  %2152 = load i64, ptr %2151, align 8, !tbaa !14
  %2153 = and i64 %2152, 255
  %2154 = lshr i64 %2146, %2153
  %2155 = or i64 %2154, %2152
  %2156 = add i64 %2147, %2152
  %2157 = getelementptr i8, ptr %2096, i64 %2099
  %2158 = load i8, ptr %2157, align 1, !tbaa !5
  %2159 = zext i8 %2158 to i64
  %2160 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2159
  %2161 = load i64, ptr %2160, align 8, !tbaa !14
  %2162 = and i64 %2161, 255
  %2163 = lshr i64 %2155, %2162
  %2164 = or i64 %2163, %2161
  %2165 = add i64 %2156, %2161
  %2166 = getelementptr i8, ptr %2097, i64 %2099
  %2167 = load i8, ptr %2166, align 1, !tbaa !5
  %2168 = zext i8 %2167 to i64
  %2169 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2168
  %2170 = load i64, ptr %2169, align 8, !tbaa !14
  %2171 = and i64 %2170, 255
  %2172 = lshr i64 %2164, %2171
  %2173 = or i64 %2172, %2170
  %2174 = add i64 %2165, %2170
  %2175 = getelementptr i8, ptr %2, i64 %2099
  %2176 = getelementptr i8, ptr %2175, i64 -9
  %2177 = load i8, ptr %2176, align 1, !tbaa !5
  %2178 = zext i8 %2177 to i64
  %2179 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2178
  %2180 = load i64, ptr %2179, align 8, !tbaa !14
  %2181 = and i64 %2180, 255
  %2182 = lshr i64 %2173, %2181
  %2183 = or i64 %2182, %2180
  %2184 = add i64 %2174, %2180
  %2185 = and i64 %2184, 255
  %2186 = lshr i64 %2185, 3
  %2187 = sub nsw i64 64, %2185
  %2188 = lshr i64 %2183, %2187
  %2189 = and i64 %2184, 7
  store i64 %2188, ptr %2101, align 1, !tbaa !14
  %2190 = getelementptr inbounds nuw i8, ptr %2101, i64 %2186
  %2191 = shl i64 %2099, 32
  %sext42 = add i64 %2191, -68719476736
  %2192 = ashr exact i64 %sext42, 32
  %2193 = getelementptr inbounds i8, ptr %2, i64 %2192
  %2194 = load i8, ptr %2193, align 1, !tbaa !5
  %2195 = zext i8 %2194 to i64
  %2196 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2195
  %2197 = load i64, ptr %2196, align 8, !tbaa !14
  %sext43 = add i64 %2191, -64424509440
  %2198 = ashr exact i64 %sext43, 32
  %2199 = getelementptr inbounds i8, ptr %2, i64 %2198
  %2200 = load i8, ptr %2199, align 1, !tbaa !5
  %2201 = zext i8 %2200 to i64
  %2202 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2201
  %2203 = load i64, ptr %2202, align 8, !tbaa !14
  %sext44 = add i64 %2191, -60129542144
  %2204 = ashr exact i64 %sext44, 32
  %2205 = getelementptr inbounds i8, ptr %2, i64 %2204
  %2206 = load i8, ptr %2205, align 1, !tbaa !5
  %2207 = zext i8 %2206 to i64
  %2208 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2207
  %2209 = load i64, ptr %2208, align 8, !tbaa !14
  %sext45 = add i64 %2191, -55834574848
  %2210 = ashr exact i64 %sext45, 32
  %2211 = getelementptr inbounds i8, ptr %2, i64 %2210
  %2212 = load i8, ptr %2211, align 1, !tbaa !5
  %2213 = zext i8 %2212 to i64
  %2214 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2213
  %2215 = load i64, ptr %2214, align 8, !tbaa !14
  %sext46 = add i64 %2191, -51539607552
  %2216 = ashr exact i64 %sext46, 32
  %2217 = getelementptr inbounds i8, ptr %2, i64 %2216
  %2218 = load i8, ptr %2217, align 1, !tbaa !5
  %2219 = zext i8 %2218 to i64
  %2220 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2219
  %2221 = load i64, ptr %2220, align 8, !tbaa !14
  %sext47 = add i64 %2191, -47244640256
  %2222 = ashr exact i64 %sext47, 32
  %2223 = getelementptr inbounds i8, ptr %2, i64 %2222
  %2224 = load i8, ptr %2223, align 1, !tbaa !5
  %2225 = zext i8 %2224 to i64
  %2226 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2225
  %2227 = load i64, ptr %2226, align 8, !tbaa !14
  %sext48 = add i64 %2191, -42949672960
  %2228 = ashr exact i64 %sext48, 32
  %2229 = getelementptr inbounds i8, ptr %2, i64 %2228
  %2230 = load i8, ptr %2229, align 1, !tbaa !5
  %2231 = zext i8 %2230 to i64
  %2232 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2231
  %2233 = load i64, ptr %2232, align 8, !tbaa !14
  %2234 = and i64 %2227, 255
  %2235 = lshr i64 %2233, %2234
  %2236 = or i64 %2235, %2227
  %2237 = and i64 %2221, 255
  %2238 = lshr i64 %2236, %2237
  %2239 = or i64 %2238, %2221
  %2240 = and i64 %2215, 255
  %2241 = lshr i64 %2239, %2240
  %2242 = or i64 %2241, %2215
  %2243 = and i64 %2209, 255
  %2244 = lshr i64 %2242, %2243
  %2245 = or i64 %2244, %2209
  %2246 = and i64 %2203, 255
  %2247 = lshr i64 %2245, %2246
  %2248 = or i64 %2247, %2203
  %2249 = and i64 %2197, 255
  %2250 = lshr i64 %2248, %2249
  %2251 = or i64 %2250, %2197
  %sext49 = add i64 %2191, -73014444032
  %2252 = ashr exact i64 %sext49, 32
  %2253 = getelementptr inbounds i8, ptr %2, i64 %2252
  %2254 = load i8, ptr %2253, align 1, !tbaa !5
  %2255 = zext i8 %2254 to i64
  %2256 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2255
  %2257 = load i64, ptr %2256, align 8, !tbaa !14
  %2258 = and i64 %2257, 255
  %2259 = lshr i64 %2251, %2258
  %2260 = or i64 %2259, %2257
  %2261 = getelementptr i8, ptr %2086, i64 %2099
  %2262 = load i8, ptr %2261, align 1, !tbaa !5
  %2263 = zext i8 %2262 to i64
  %2264 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2263
  %2265 = load i64, ptr %2264, align 8, !tbaa !14
  %2266 = and i64 %2265, 255
  %2267 = lshr i64 %2260, %2266
  %2268 = add i64 %2203, %2197
  %2269 = add i64 %2268, %2209
  %2270 = add i64 %2269, %2215
  %2271 = add i64 %2270, %2221
  %2272 = add i64 %2271, %2227
  %2273 = add i64 %2272, %2233
  %2274 = add i64 %2273, %2257
  %2275 = add i64 %2274, %2265
  %2276 = and i64 %2275, 255
  %2277 = lshr i64 %2183, %2276
  %2278 = or i64 %2277, %2267
  %2279 = or i64 %2278, %2265
  %2280 = add i64 %2275, %2189
  %2281 = and i64 %2280, 255
  %2282 = lshr i64 %2281, 3
  %2283 = sub nsw i64 64, %2281
  %2284 = lshr i64 %2279, %2283
  %2285 = and i64 %2280, 7
  store i64 %2284, ptr %2190, align 1, !tbaa !14
  %2286 = getelementptr inbounds nuw i8, ptr %2190, i64 %2282
  %2287 = add nsw i64 %2099, -18
  %2288 = icmp samesign ugt i64 %2099, 18
  br i1 %2288, label %2098, label %.loopexit, !llvm.loop !76

.loopexit:                                        ; preds = %1702, %1339, %1010, %714, %432, %2098, %163, %2081, %1686, %1324, %996, %701, %419, %151
  %2289 = phi i64 [ %152, %151 ], [ %2082, %2081 ], [ %420, %419 ], [ %702, %701 ], [ %997, %996 ], [ %1325, %1324 ], [ %1687, %1686 ], [ %545, %432 ], [ %825, %714 ], [ %1142, %1010 ], [ %1490, %1339 ], [ %259, %163 ], [ %2285, %2098 ], [ %1872, %1702 ]
  %2290 = phi ptr [ %153, %151 ], [ %2083, %2081 ], [ %421, %419 ], [ %703, %701 ], [ %998, %996 ], [ %1326, %1324 ], [ %1688, %1686 ], [ %546, %432 ], [ %826, %714 ], [ %1143, %1010 ], [ %1491, %1339 ], [ %262, %163 ], [ %2286, %2098 ], [ %1873, %1702 ]
  %2291 = phi i64 [ %154, %151 ], [ %2084, %2081 ], [ %422, %419 ], [ %704, %701 ], [ %999, %996 ], [ %1327, %1324 ], [ %1689, %1686 ], [ %539, %432 ], [ %819, %714 ], [ %1136, %1010 ], [ %1484, %1339 ], [ %253, %163 ], [ %2279, %2098 ], [ %1866, %1702 ]
  %2292 = lshr i64 %2291, 1
  %2293 = or disjoint i64 %2292, -9223372036854775808
  %2294 = add nuw nsw i64 %2289, -9223372036854775807
  %2295 = and i64 %2294, 255
  %2296 = lshr i64 %2295, 3
  %2297 = sub nuw nsw i64 64, %2295
  %2298 = lshr i64 %2293, %2297
  store i64 %2298, ptr %2290, align 1, !tbaa !14
  %2299 = getelementptr inbounds nuw i8, ptr %2290, i64 %2296
  %2300 = icmp ugt ptr %2299, %13
  %2301 = select i1 %2300, ptr %13, ptr %2299
  %2302 = icmp ult ptr %2301, %13
  br i1 %2302, label %2303, label %2311

2303:                                             ; preds = %.loopexit
  %2304 = and i64 %2294, 7
  %2305 = ptrtoint ptr %2301 to i64
  %2306 = ptrtoint ptr %0 to i64
  %2307 = icmp ne i64 %2304, 0
  %2308 = zext i1 %2307 to i64
  %2309 = sub i64 %2308, %2306
  %2310 = add i64 %2309, %2305
  br label %2311

2311:                                             ; preds = %2303, %.loopexit, %11, %5
  %2312 = phi i64 [ 0, %11 ], [ 0, %5 ], [ %2310, %2303 ], [ 0, %.loopexit ]
  ret i64 %2312
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
!77 = distinct !{!77, !9}
!78 = distinct !{!78, !9, !10, !11}
!79 = distinct !{!79, !9, !11, !10}
!80 = distinct !{!80, !9, !10, !11}
!81 = distinct !{!81, !9, !11, !10}
!82 = distinct !{!82, !9}
!83 = distinct !{!83, !9, !10, !11}
!84 = distinct !{!84, !9, !10}
!85 = distinct !{!85, !9, !10, !11}
!86 = distinct !{!86, !9, !10}
!87 = distinct !{!87, !9, !10, !11}
!88 = distinct !{!88, !9, !10}
!89 = distinct !{!89, !9}
!90 = distinct !{!90, !9}
