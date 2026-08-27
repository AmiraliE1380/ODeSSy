; ModuleID = '/mydata/ODeSSy/perf_zstd_work/ll/huf_compress.ll'
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
  br i1 %18, label %765, label %19

19:                                               ; preds = %6
  %20 = icmp ugt i32 %2, 255
  br i1 %20, label %765, label %21

21:                                               ; preds = %19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %14, i8 0, i64 4096, i1 false)
  %22 = getelementptr inbounds nuw i8, ptr %16, i64 4096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(768) %22, i8 0, i64 768, i1 false)
  %23 = add nuw nsw i32 %2, 1
  %24 = zext nneg i32 %23 to i64
  %25 = and i64 %24, 1
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %.loopexit76, label %27

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
  br i1 %53, label %.loopexit76, label %30, !llvm.loop !38

.loopexit76:                                      ; preds = %30, %21
  %54 = phi i64 [ 0, %21 ], [ %28, %30 ]
  %55 = icmp eq i64 %25, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %.loopexit76
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

67:                                               ; preds = %56, %.loopexit76
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
  br i1 %124, label %.preheader75, label %107, !llvm.loop !44

.preheader75:                                     ; preds = %107, %138
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

134:                                              ; preds = %.preheader75
  %135 = add nsw i32 %132, -1
  %136 = zext i16 %130 to i64
  %137 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %136
  tail call fastcc void @HUF_simpleQuickSort(ptr noundef nonnull %137, i32 noundef 0, i32 noundef %135)
  br label %138

138:                                              ; preds = %134, %.preheader75
  %139 = add nuw nsw i64 %125, 1
  %140 = icmp eq i64 %139, 191
  br i1 %140, label %141, label %.preheader75, !llvm.loop !45

141:                                              ; preds = %138
  %142 = icmp eq i32 %3, 0
  %143 = select i1 %142, i32 11, i32 %3
  %144 = zext nneg i32 %2 to i64
  %145 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !41
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %.lr.ph, label %.loopexit74

.lr.ph:                                           ; preds = %141
  %148 = add nsw i32 %2, -1
  %149 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %148, 0
  br label %152

.preheader72:                                     ; preds = %152
  %150 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %154, i32 -1)
  %151 = extractvalue { i32, i1 } %150, 1, !nosanitize !46
  br i1 %151, label %.loopexit67, label %152, !prof !47, !llvm.loop !48, !nosanitize !46

.loopexit67:                                      ; preds = %.preheader72, %266, %241, %.loopexit68, %169, %164
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

152:                                              ; preds = %.lr.ph, %.preheader72
  %153 = phi { i32, i1 } [ %149, %.lr.ph ], [ %150, %.preheader72 ]
  %154 = extractvalue { i32, i1 } %153, 0, !nosanitize !46
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [8 x i8], ptr %17, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !41
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %.preheader72, label %.loopexit74, !llvm.loop !48

.loopexit74:                                      ; preds = %152, %141
  %159 = phi i64 [ %144, %141 ], [ %155, %152 ]
  %160 = phi i32 [ %2, %141 ], [ %154, %152 ]
  %161 = phi i32 [ %146, %141 ], [ %157, %152 ]
  %162 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %160, i32 256), !nosanitize !46
  %163 = extractvalue { i32, i1 } %162, 1, !nosanitize !46
  br i1 %163, label %.loopexit64, label %164, !prof !49, !nosanitize !46

.loopexit64:                                      ; preds = %271, %249, %340, %.loopexit74
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !46
  unreachable, !nosanitize !46

164:                                              ; preds = %.loopexit74
  %165 = extractvalue { i32, i1 } %162, 0, !nosanitize !46
  %166 = add nsw i32 %165, -1
  %167 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %160, i32 -1)
  %168 = extractvalue { i32, i1 } %167, 1, !nosanitize !46
  br i1 %168, label %.loopexit67, label %169, !prof !49, !nosanitize !46

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
  br i1 %182, label %.loopexit67, label %183, !prof !49, !nosanitize !46

183:                                              ; preds = %169
  %184 = icmp sgt i32 %165, 257
  br i1 %184, label %185, label %213

185:                                              ; preds = %183
  %186 = zext nneg i32 %165 to i64
  %187 = add nsw i64 %186, -257
  %188 = and i64 %187, 7
  %189 = icmp samesign ult i32 %165, 265
  br i1 %189, label %.loopexit71, label %190

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
  br i1 %212, label %.loopexit71, label %199, !llvm.loop !51

213:                                              ; preds = %183
  store i32 -2147483648, ptr %14, align 4, !tbaa !41
  br label %.loopexit68

.loopexit71:                                      ; preds = %199, %185
  %214 = phi i64 [ 257, %185 ], [ %210, %199 ]
  %215 = icmp eq i64 %188, 0
  br i1 %215, label %.loopexit70, label %vector.ph

vector.ph:                                        ; preds = %.loopexit71
  %n.rnd.up = add nuw nsw i64 %188, 3
  %n.vec = and i64 %n.rnd.up, 12
  %trip.count.minus.1 = add nsw i64 %188, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue233, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue233 ]
  %offset.idx = add i64 %214, %index
  %broadcast.splatinsert226 = insertelement <4 x i64> poison, i64 %index, i64 0
  %broadcast.splat227 = shufflevector <4 x i64> %broadcast.splatinsert226, <4 x i64> poison, <4 x i32> zeroinitializer
  %vec.iv = or disjoint <4 x i64> %broadcast.splat227, <i64 0, i64 1, i64 2, i64 3>
  %216 = icmp ule <4 x i64> %vec.iv, %broadcast.splat
  %217 = extractelement <4 x i1> %216, i64 0
  br i1 %217, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %218 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %offset.idx
  store i32 1073741824, ptr %218, align 4, !tbaa !41
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %219 = extractelement <4 x i1> %216, i64 1
  br i1 %219, label %pred.store.if228, label %pred.store.continue229

pred.store.if228:                                 ; preds = %pred.store.continue
  %220 = getelementptr [8 x i8], ptr %17, i64 %offset.idx
  %221 = getelementptr i8, ptr %220, i64 8
  store i32 1073741824, ptr %221, align 4, !tbaa !41
  br label %pred.store.continue229

pred.store.continue229:                           ; preds = %pred.store.if228, %pred.store.continue
  %222 = extractelement <4 x i1> %216, i64 2
  br i1 %222, label %pred.store.if230, label %pred.store.continue231

pred.store.if230:                                 ; preds = %pred.store.continue229
  %223 = getelementptr [8 x i8], ptr %17, i64 %offset.idx
  %224 = getelementptr i8, ptr %223, i64 16
  store i32 1073741824, ptr %224, align 4, !tbaa !41
  br label %pred.store.continue231

pred.store.continue231:                           ; preds = %pred.store.if230, %pred.store.continue229
  %225 = extractelement <4 x i1> %216, i64 3
  br i1 %225, label %pred.store.if232, label %pred.store.continue233

pred.store.if232:                                 ; preds = %pred.store.continue231
  %226 = getelementptr [8 x i8], ptr %17, i64 %offset.idx
  %227 = getelementptr i8, ptr %226, i64 24
  store i32 1073741824, ptr %227, align 4, !tbaa !41
  br label %pred.store.continue233

pred.store.continue233:                           ; preds = %pred.store.if232, %pred.store.continue231
  %index.next = add nuw i64 %index, 4
  %228 = icmp eq i64 %index.next, %n.vec
  br i1 %228, label %.loopexit70, label %vector.body, !llvm.loop !52

.loopexit70:                                      ; preds = %pred.store.continue233, %.loopexit71
  store i32 -2147483648, ptr %14, align 4, !tbaa !41
  %229 = getelementptr i8, ptr %14, i64 12
  br label %230

230:                                              ; preds = %276, %.loopexit70
  %231 = phi i64 [ 257, %.loopexit70 ], [ %290, %276 ]
  %232 = phi i32 [ %181, %.loopexit70 ], [ %280, %276 ]
  %233 = phi i32 [ 256, %.loopexit70 ], [ %279, %276 ]
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds [8 x i8], ptr %17, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !41
  %237 = sext i32 %233 to i64
  %238 = getelementptr inbounds [8 x i8], ptr %17, i64 %237
  %239 = load i32, ptr %238, align 4, !tbaa !41
  %240 = icmp ult i32 %236, %239
  br i1 %240, label %241, label %249

241:                                              ; preds = %230
  %242 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %232, i32 -1)
  %243 = extractvalue { i32, i1 } %242, 1, !nosanitize !46
  br i1 %243, label %.loopexit67, label %244, !prof !49, !nosanitize !46

244:                                              ; preds = %241
  %245 = extractvalue { i32, i1 } %242, 0, !nosanitize !46
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [8 x i8], ptr %17, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !41
  br label %257

249:                                              ; preds = %230
  %250 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %233, i32 1), !nosanitize !46
  %251 = extractvalue { i32, i1 } %250, 1, !nosanitize !46
  br i1 %251, label %.loopexit64, label %252, !prof !49, !nosanitize !46

252:                                              ; preds = %249
  %253 = extractvalue { i32, i1 } %250, 0, !nosanitize !46
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [8 x i8], ptr %17, i64 %254
  %256 = load i32, ptr %255, align 4, !tbaa !41
  br label %257

257:                                              ; preds = %252, %244
  %258 = phi i32 [ %256, %252 ], [ %239, %244 ]
  %259 = phi i64 [ %254, %252 ], [ %237, %244 ]
  %260 = phi i32 [ %236, %252 ], [ %248, %244 ]
  %261 = phi i64 [ %234, %252 ], [ %246, %244 ]
  %262 = phi i32 [ %253, %252 ], [ %233, %244 ]
  %263 = phi i32 [ %232, %252 ], [ %245, %244 ]
  %264 = phi i32 [ %233, %252 ], [ %232, %244 ]
  %265 = icmp ult i32 %260, %258
  br i1 %265, label %266, label %271

266:                                              ; preds = %257
  %267 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %263, i32 -1)
  %268 = extractvalue { i32, i1 } %267, 1, !nosanitize !46
  br i1 %268, label %.loopexit67, label %269, !prof !49, !nosanitize !46

269:                                              ; preds = %266
  %270 = extractvalue { i32, i1 } %267, 0, !nosanitize !46
  br label %276

271:                                              ; preds = %257
  %272 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %262, i32 1), !nosanitize !46
  %273 = extractvalue { i32, i1 } %272, 1, !nosanitize !46
  br i1 %273, label %.loopexit64, label %274, !prof !49, !nosanitize !46

274:                                              ; preds = %271
  %275 = extractvalue { i32, i1 } %272, 0, !nosanitize !46
  br label %276

276:                                              ; preds = %274, %269
  %277 = phi i32 [ %258, %274 ], [ %260, %269 ]
  %278 = phi i64 [ %259, %274 ], [ %261, %269 ]
  %279 = phi i32 [ %275, %274 ], [ %262, %269 ]
  %280 = phi i32 [ %263, %274 ], [ %270, %269 ]
  %281 = sext i32 %264 to i64
  %282 = getelementptr inbounds [8 x i8], ptr %17, i64 %281
  %283 = load i32, ptr %282, align 4, !tbaa !41
  %284 = add i32 %283, %277
  %285 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %231
  store i32 %284, ptr %285, align 4, !tbaa !41
  %286 = trunc i64 %231 to i16
  %287 = shl nsw i64 %278, 3
  %288 = getelementptr i8, ptr %229, i64 %287
  store i16 %286, ptr %288, align 4, !tbaa !50
  %289 = getelementptr inbounds nuw i8, ptr %282, i64 4
  store i16 %286, ptr %289, align 4, !tbaa !50
  %290 = add nuw nsw i64 %231, 1
  %291 = icmp eq i64 %290, %186
  br i1 %291, label %.loopexit68, label %230, !llvm.loop !53

.loopexit68:                                      ; preds = %276, %213
  %292 = sext i32 %166 to i64
  %293 = shl nsw i64 %292, 3
  %294 = getelementptr i8, ptr %17, i64 %293
  %295 = getelementptr i8, ptr %294, i64 7
  store i8 0, ptr %295, align 1, !tbaa !54
  %296 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %165, i32 -2)
  %297 = extractvalue { i32, i1 } %296, 1, !nosanitize !46
  br i1 %297, label %.loopexit67, label %298, !prof !49, !nosanitize !46

298:                                              ; preds = %.loopexit68
  %299 = extractvalue { i32, i1 } %296, 0
  %300 = icmp sgt i32 %299, 255
  br i1 %300, label %301, label %.loopexit65

301:                                              ; preds = %298
  %302 = zext nneg i32 %299 to i64
  %303 = getelementptr inbounds nuw i8, ptr %14, i64 15
  br label %316

.loopexit65:                                      ; preds = %316, %298
  %304 = icmp slt i32 %160, 0
  br i1 %304, label %.loopexit65..loopexit63_crit_edge, label %305

.loopexit65..loopexit63_crit_edge:                ; preds = %.loopexit65
  %.pre = zext i32 %160 to i64
  br label %.loopexit63

305:                                              ; preds = %.loopexit65
  %306 = getelementptr inbounds nuw i8, ptr %14, i64 15
  %307 = zext nneg i32 %160 to i64
  %308 = getelementptr inbounds nuw i8, ptr %14, i64 12
  %309 = load i16, ptr %308, align 4, !tbaa !50
  %310 = zext i16 %309 to i64
  %311 = shl nuw nsw i64 %310, 3
  %312 = getelementptr inbounds nuw i8, ptr %306, i64 %311
  %313 = load i8, ptr %312, align 1, !tbaa !54
  %314 = add i8 %313, 1
  %315 = getelementptr inbounds nuw i8, ptr %14, i64 15
  store i8 %314, ptr %315, align 1, !tbaa !54
  %.not = icmp eq i32 %160, 0
  br i1 %.not, label %.loopexit63, label %.lr.ph219, !llvm.loop !55

.lr.ph219:                                        ; preds = %305
  br label %340, !llvm.loop !55

316:                                              ; preds = %316, %301
  %317 = phi i64 [ %302, %301 ], [ %327, %316 ]
  %318 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %317
  %319 = getelementptr inbounds nuw i8, ptr %318, i64 4
  %320 = load i16, ptr %319, align 4, !tbaa !50
  %321 = zext i16 %320 to i64
  %322 = shl nuw nsw i64 %321, 3
  %323 = getelementptr inbounds nuw i8, ptr %303, i64 %322
  %324 = load i8, ptr %323, align 1, !tbaa !54
  %325 = add i8 %324, 1
  %326 = getelementptr inbounds nuw i8, ptr %318, i64 7
  store i8 %325, ptr %326, align 1, !tbaa !54
  %327 = add nsw i64 %317, -1
  %328 = icmp samesign ugt i64 %317, 256
  br i1 %328, label %316, label %.loopexit65, !llvm.loop !56

329:                                              ; preds = %352
  %330 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %353
  %331 = getelementptr inbounds nuw i8, ptr %330, i64 4
  %332 = load i16, ptr %331, align 4, !tbaa !50
  %333 = zext i16 %332 to i64
  %334 = shl nuw nsw i64 %333, 3
  %335 = getelementptr inbounds nuw i8, ptr %306, i64 %334
  %336 = load i8, ptr %335, align 1, !tbaa !54
  %337 = add i8 %336, 1
  %338 = getelementptr inbounds nuw i8, ptr %330, i64 7
  store i8 %337, ptr %338, align 1, !tbaa !54
  %339 = icmp samesign ult i64 %353, %307
  br i1 %339, label %340, label %..loopexit63.loopexit_crit_edge220, !llvm.loop !55

340:                                              ; preds = %.lr.ph219, %329
  %341 = phi i64 [ 0, %.lr.ph219 ], [ %353, %329 ]
  %342 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %341
  %343 = getelementptr inbounds nuw i8, ptr %342, i64 12
  %344 = load i16, ptr %343, align 4, !tbaa !50
  %345 = zext i16 %344 to i64
  %346 = shl nuw nsw i64 %345, 3
  %347 = getelementptr inbounds nuw i8, ptr %306, i64 %346
  %348 = load i8, ptr %347, align 1, !tbaa !54
  %349 = add i8 %348, 1
  %350 = getelementptr inbounds nuw i8, ptr %342, i64 15
  store i8 %349, ptr %350, align 1, !tbaa !54
  %351 = icmp eq i64 %341, 2147483646
  br i1 %351, label %.loopexit64, label %352, !prof !49, !nosanitize !46

352:                                              ; preds = %340
  %353 = add nuw nsw i64 %341, 2
  %354 = trunc nuw nsw i64 %353 to i32
  %355 = icmp slt i32 %160, %354
  br i1 %355, label %..loopexit63.loopexit_crit_edge220, label %329, !llvm.loop !55

..loopexit63.loopexit_crit_edge220:               ; preds = %329, %352
  br label %.loopexit63, !llvm.loop !55

.loopexit63:                                      ; preds = %305, %..loopexit63.loopexit_crit_edge220, %.loopexit65..loopexit63_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.loopexit65..loopexit63_crit_edge ], [ %307, %..loopexit63.loopexit_crit_edge220 ], [ %307, %305 ]
  %356 = shl nuw nsw i64 %.pre-phi, 3
  %357 = getelementptr inbounds nuw i8, ptr %17, i64 %356
  %358 = getelementptr inbounds nuw i8, ptr %357, i64 7
  %359 = load i8, ptr %358, align 1, !tbaa !54
  %360 = zext i8 %359 to i32
  %361 = icmp ult i32 %143, %360
  br i1 %361, label %362, label %603

362:                                              ; preds = %.loopexit63
  %363 = sub nuw nsw i32 %360, %143
  %364 = shl nuw i32 1, %363
  %365 = sext i32 %160 to i64
  %366 = shl nsw i64 %365, 3
  %367 = getelementptr i8, ptr %17, i64 %366
  %368 = getelementptr i8, ptr %367, i64 7
  %369 = load i8, ptr %368, align 1, !tbaa !54
  %370 = zext i8 %369 to i32
  %371 = icmp samesign ult i32 %143, %370
  br i1 %371, label %372, label %.loopexit62

372:                                              ; preds = %362
  %373 = trunc nuw i32 %143 to i8
  %374 = getelementptr i8, ptr %16, i64 15
  store i8 %373, ptr %368, align 1, !tbaa !54
  %375 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %160, i32 -1)
  %376 = extractvalue { i32, i1 } %375, 1, !nosanitize !46
  br i1 %376, label %.loopexit49, label %.lr.ph221, !prof !57, !nosanitize !46

.loopexit62:                                      ; preds = %.lr.ph221, %362
  %377 = phi i32 [ %370, %362 ], [ %400, %.lr.ph221 ]
  %378 = phi i32 [ %160, %362 ], [ %391, %.lr.ph221 ]
  %379 = phi i32 [ 0, %362 ], [ %395, %.lr.ph221 ]
  %380 = icmp eq i32 %143, %377
  br i1 %380, label %381, label %.loopexit60

381:                                              ; preds = %.loopexit62
  %382 = getelementptr i8, ptr %14, i64 15
  %383 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %378, i32 -1)
  %384 = extractvalue { i32, i1 } %383, 1, !nosanitize !46
  br i1 %384, label %.loopexit49, label %.lr.ph222, !prof !57, !nosanitize !46

385:                                              ; preds = %.lr.ph221
  store i8 %373, ptr %398, align 1, !tbaa !54
  %386 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %391, i32 -1)
  %387 = extractvalue { i32, i1 } %386, 1, !nosanitize !46
  br i1 %387, label %.loopexit49, label %.lr.ph221, !prof !47, !llvm.loop !58, !nosanitize !46

.loopexit49:                                      ; preds = %385, %402, %.loopexit53, %.preheader48.preheader, %.preheader48, %372, %381
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

.lr.ph221:                                        ; preds = %372, %385
  %388 = phi { i32, i1 } [ %386, %385 ], [ %375, %372 ]
  %389 = phi i32 [ %395, %385 ], [ 0, %372 ]
  %390 = phi i32 [ %400, %385 ], [ %370, %372 ]
  %391 = extractvalue { i32, i1 } %388, 0, !nosanitize !46
  %392 = sub nsw i32 %360, %390
  %393 = shl nsw i32 -1, %392
  %394 = add i32 %389, %364
  %395 = add i32 %394, %393
  %396 = sext i32 %391 to i64
  %397 = shl nsw i64 %396, 3
  %398 = getelementptr i8, ptr %374, i64 %397
  %399 = load i8, ptr %398, align 1, !tbaa !54
  %400 = zext i8 %399 to i32
  %401 = icmp samesign ult i32 %143, %400
  br i1 %401, label %385, label %.loopexit62, !llvm.loop !58

402:                                              ; preds = %.lr.ph222
  %403 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %406, i32 -1)
  %404 = extractvalue { i32, i1 } %403, 1, !nosanitize !46
  br i1 %404, label %.loopexit49, label %.lr.ph222, !prof !47, !llvm.loop !59, !nosanitize !46

.lr.ph222:                                        ; preds = %381, %402
  %405 = phi { i32, i1 } [ %403, %402 ], [ %383, %381 ]
  %406 = extractvalue { i32, i1 } %405, 0, !nosanitize !46
  %407 = sext i32 %406 to i64
  %408 = shl nsw i64 %407, 3
  %409 = getelementptr i8, ptr %382, i64 %408
  %410 = load i8, ptr %409, align 1, !tbaa !54
  %411 = zext i8 %410 to i32
  %412 = icmp eq i32 %143, %411
  br i1 %412, label %402, label %.loopexit60, !llvm.loop !59

.loopexit60:                                      ; preds = %.lr.ph222, %.loopexit62
  %413 = phi i32 [ %378, %.loopexit62 ], [ %406, %.lr.ph222 ]
  %414 = ashr i32 %379, %363
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %9, i8 -16, i64 56, i1 false)
  %415 = icmp sgt i32 %413, -1
  br i1 %415, label %416, label %.loopexit58

416:                                              ; preds = %.loopexit60
  %417 = zext nneg i32 %413 to i64
  %418 = getelementptr inbounds nuw i8, ptr %14, i64 15
  %419 = and i64 %417, 1
  %420 = icmp eq i64 %419, 0
  br i1 %420, label %421, label %434

421:                                              ; preds = %416
  %422 = shl nuw nsw i64 %417, 3
  %423 = getelementptr inbounds nuw i8, ptr %418, i64 %422
  %424 = load i8, ptr %423, align 1, !tbaa !54
  %425 = zext i8 %424 to i32
  %426 = icmp samesign ugt i32 %143, %425
  br i1 %426, label %427, label %431

427:                                              ; preds = %421
  %428 = sub nuw nsw i32 %143, %425
  %429 = zext nneg i32 %428 to i64
  %430 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %429
  store i32 %413, ptr %430, align 4, !tbaa !19
  br label %431

431:                                              ; preds = %427, %421
  %432 = phi i32 [ %143, %421 ], [ %425, %427 ]
  %433 = add nsw i64 %417, -1
  br label %434

434:                                              ; preds = %431, %416
  %435 = phi i64 [ %417, %416 ], [ %433, %431 ]
  %436 = phi i32 [ %143, %416 ], [ %432, %431 ]
  %437 = icmp eq i32 %413, 0
  br i1 %437, label %.loopexit58, label %.preheader57

.loopexit58:                                      ; preds = %467, %434, %.loopexit60
  %438 = icmp sgt i32 %414, 0
  br i1 %438, label %439, label %.loopexit56

439:                                              ; preds = %.loopexit58
  %440 = getelementptr inbounds nuw i8, ptr %16, i64 15
  %441 = getelementptr inbounds nuw i8, ptr %14, i64 15
  br label %478

.preheader57:                                     ; preds = %434, %467
  %442 = phi i64 [ %469, %467 ], [ %435, %434 ]
  %443 = phi i32 [ %468, %467 ], [ %436, %434 ]
  %444 = shl nuw nsw i64 %442, 3
  %445 = getelementptr inbounds nuw i8, ptr %418, i64 %444
  %446 = load i8, ptr %445, align 1, !tbaa !54
  %447 = zext i8 %446 to i32
  %448 = icmp ugt i32 %443, %447
  br i1 %448, label %449, label %454

449:                                              ; preds = %.preheader57
  %450 = sub nsw i32 %143, %447
  %451 = zext i32 %450 to i64
  %452 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %451
  %453 = trunc nuw nsw i64 %442 to i32
  store i32 %453, ptr %452, align 4, !tbaa !19
  br label %454

454:                                              ; preds = %449, %.preheader57
  %455 = phi i32 [ %443, %.preheader57 ], [ %447, %449 ]
  %456 = add nsw i64 %442, -1
  %457 = shl nuw nsw i64 %456, 3
  %458 = getelementptr inbounds nuw i8, ptr %418, i64 %457
  %459 = load i8, ptr %458, align 1, !tbaa !54
  %460 = zext i8 %459 to i32
  %461 = icmp samesign ugt i32 %455, %460
  br i1 %461, label %462, label %467

462:                                              ; preds = %454
  %463 = sub nsw i32 %143, %460
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %464
  %466 = trunc nuw nsw i64 %456 to i32
  store i32 %466, ptr %465, align 4, !tbaa !19
  br label %467

467:                                              ; preds = %462, %454
  %468 = phi i32 [ %455, %454 ], [ %460, %462 ]
  %469 = add nsw i64 %442, -2
  %470 = icmp sgt i64 %442, 1
  br i1 %470, label %.preheader57, label %.loopexit58, !llvm.loop !60

.loopexit56:                                      ; preds = %551, %.loopexit58
  %471 = phi i32 [ %414, %.loopexit58 ], [ %524, %551 ]
  %472 = icmp slt i32 %471, 0
  br i1 %472, label %473, label %.loopexit51

473:                                              ; preds = %.loopexit56
  %474 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %475 = load i32, ptr %474, align 4
  %476 = getelementptr i8, ptr %16, i64 15
  %477 = getelementptr i8, ptr %14, i64 15
  br label %590

478:                                              ; preds = %551, %439
  %479 = phi i32 [ %524, %551 ], [ %414, %439 ]
  %480 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %479, i1 true)
  %481 = icmp eq i32 %480, 31
  br i1 %481, label %.loopexit54.preheader, label %482

482:                                              ; preds = %478
  %483 = sub nuw nsw i32 32, %480
  %484 = zext nneg i32 %483 to i64
  br label %485

485:                                              ; preds = %505, %482
  %486 = phi i64 [ %484, %482 ], [ %489, %505 ]
  %487 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %486
  %488 = load i32, ptr %487, align 4, !tbaa !19
  %489 = add nsw i64 %486, -1
  %490 = and i64 %489, 4294967295
  %491 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %490
  %492 = load i32, ptr %491, align 4, !tbaa !19
  %493 = icmp eq i32 %488, -252645136
  br i1 %493, label %505, label %494

494:                                              ; preds = %485
  %495 = icmp eq i32 %492, -252645136
  br i1 %495, label %508, label %496

496:                                              ; preds = %494
  %497 = zext i32 %488 to i64
  %498 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %497
  %499 = load i32, ptr %498, align 4, !tbaa !41
  %500 = zext i32 %492 to i64
  %501 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %500
  %502 = load i32, ptr %501, align 4, !tbaa !41
  %503 = shl i32 %502, 1
  %504 = icmp ugt i32 %499, %503
  br i1 %504, label %505, label %508

505:                                              ; preds = %496, %485
  %506 = and i64 %489, 4294967294
  %507 = icmp eq i64 %506, 0
  br i1 %507, label %.loopexit54.preheader, label %485, !llvm.loop !61

508:                                              ; preds = %496, %494
  %509 = trunc nuw i64 %486 to i32
  %510 = icmp ult i64 %486, 13
  br i1 %510, label %.loopexit54.preheader, label %.loopexit53

.loopexit54.preheader:                            ; preds = %505, %508, %478
  %.ph = phi i64 [ 1, %478 ], [ %486, %508 ], [ 1, %505 ]
  br label %.loopexit54

.loopexit54:                                      ; preds = %.loopexit54.preheader, %515
  %511 = phi i64 [ %516, %515 ], [ %.ph, %.loopexit54.preheader ]
  %512 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %511
  %513 = load i32, ptr %512, align 4, !tbaa !19
  %514 = icmp eq i32 %513, -252645136
  br i1 %514, label %515, label %518

515:                                              ; preds = %.loopexit54
  %516 = add nuw nsw i64 %511, 1
  %517 = icmp eq i64 %516, 13
  br i1 %517, label %.loopexit53, label %.loopexit54, !llvm.loop !62

518:                                              ; preds = %.loopexit54
  %519 = trunc nuw nsw i64 %511 to i32
  br label %.loopexit53

.loopexit53:                                      ; preds = %515, %518, %508
  %520 = phi i32 [ %509, %508 ], [ %519, %518 ], [ 13, %515 ]
  %521 = add nsw i32 %520, -1
  %522 = shl nuw i32 1, %521
  %523 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %479, i32 %522), !nosanitize !46
  %524 = extractvalue { i32, i1 } %523, 0, !nosanitize !46
  %525 = extractvalue { i32, i1 } %523, 1, !nosanitize !46
  br i1 %525, label %.loopexit49, label %526, !prof !49, !nosanitize !46

526:                                              ; preds = %.loopexit53
  %527 = zext nneg i32 %520 to i64
  %528 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %527
  %529 = load i32, ptr %528, align 4, !tbaa !19
  %530 = zext i32 %529 to i64
  %531 = shl nuw nsw i64 %530, 3
  %532 = getelementptr inbounds nuw i8, ptr %440, i64 %531
  %533 = load i8, ptr %532, align 1, !tbaa !54
  %534 = add i8 %533, 1
  store i8 %534, ptr %532, align 1, !tbaa !54
  %535 = zext nneg i32 %521 to i64
  %536 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %535
  %537 = load i32, ptr %536, align 4, !tbaa !19
  %538 = icmp eq i32 %537, -252645136
  %539 = select i1 %538, i32 %529, i32 %537
  store i32 %539, ptr %536, align 4
  %540 = icmp eq i32 %529, 0
  br i1 %540, label %551, label %541

541:                                              ; preds = %526
  %542 = add i32 %529, -1
  %543 = zext i32 %542 to i64
  %544 = shl nuw nsw i64 %543, 3
  %545 = getelementptr inbounds nuw i8, ptr %441, i64 %544
  %546 = load i8, ptr %545, align 1, !tbaa !54
  %547 = zext i8 %546 to i32
  %548 = sub nsw i32 %143, %520
  %549 = icmp eq i32 %548, %547
  %550 = select i1 %549, i32 %542, i32 -252645136
  br label %551

551:                                              ; preds = %541, %526
  %552 = phi i32 [ %550, %541 ], [ -252645136, %526 ]
  store i32 %552, ptr %528, align 4
  %553 = icmp sgt i32 %524, 0
  br i1 %553, label %478, label %.loopexit56, !llvm.loop !63

554:                                              ; preds = %594, %590
  %555 = phi i32 [ %591, %590 ], [ %595, %594 ]
  %556 = phi i32 [ %592, %590 ], [ %601, %594 ]
  %557 = icmp eq i32 %555, -252645136
  br i1 %557, label %558, label %594

558:                                              ; preds = %554
  %559 = sext i32 %593 to i64
  %560 = shl nsw i64 %559, 3
  %561 = getelementptr i8, ptr %477, i64 %560
  %562 = load i8, ptr %561, align 1, !tbaa !54
  %563 = zext i8 %562 to i32
  %564 = icmp eq i32 %143, %563
  br i1 %564, label %.preheader48.preheader, label %.loopexit50

.preheader48.preheader:                           ; preds = %558
  %565 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %593, i32 -1)
  %566 = extractvalue { i32, i1 } %565, 1, !nosanitize !46
  br i1 %566, label %.loopexit49, label %.lr.ph223, !prof !57, !nosanitize !46

.preheader48:                                     ; preds = %.lr.ph223
  %567 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %570, i32 -1)
  %568 = extractvalue { i32, i1 } %567, 1, !nosanitize !46
  br i1 %568, label %.loopexit49, label %.lr.ph223, !prof !47, !llvm.loop !64, !nosanitize !46

.lr.ph223:                                        ; preds = %.preheader48.preheader, %.preheader48
  %569 = phi { i32, i1 } [ %567, %.preheader48 ], [ %565, %.preheader48.preheader ]
  %570 = extractvalue { i32, i1 } %569, 0, !nosanitize !46
  %571 = sext i32 %570 to i64
  %572 = shl nsw i64 %571, 3
  %573 = getelementptr i8, ptr %477, i64 %572
  %574 = load i8, ptr %573, align 1, !tbaa !54
  %575 = zext i8 %574 to i32
  %576 = icmp eq i32 %143, %575
  br i1 %576, label %.preheader48, label %.loopexit50, !llvm.loop !64

.loopexit50:                                      ; preds = %.lr.ph223, %558
  %577 = phi i32 [ %593, %558 ], [ %570, %.lr.ph223 ]
  %578 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %577, i32 1), !nosanitize !46
  %579 = extractvalue { i32, i1 } %578, 1, !nosanitize !46
  br i1 %579, label %580, label %581, !prof !49, !nosanitize !46

580:                                              ; preds = %.loopexit50
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !46
  unreachable, !nosanitize !46

581:                                              ; preds = %.loopexit50
  %582 = extractvalue { i32, i1 } %578, 0, !nosanitize !46
  %583 = sext i32 %582 to i64
  %584 = shl nsw i64 %583, 3
  %585 = getelementptr i8, ptr %476, i64 %584
  %586 = load i8, ptr %585, align 1, !tbaa !54
  %587 = add i8 %586, -1
  store i8 %587, ptr %585, align 1, !tbaa !54
  %588 = add nuw nsw i32 %556, 1
  %589 = icmp slt i32 %556, -1
  br i1 %589, label %590, label %.loopexit51, !llvm.loop !65

590:                                              ; preds = %581, %473
  %591 = phi i32 [ %475, %473 ], [ %582, %581 ]
  %592 = phi i32 [ %471, %473 ], [ %588, %581 ]
  %593 = phi i32 [ %413, %473 ], [ %577, %581 ]
  br label %554

594:                                              ; preds = %554
  %595 = add i32 %555, 1
  %596 = zext i32 %595 to i64
  %597 = shl nuw nsw i64 %596, 3
  %598 = getelementptr inbounds nuw i8, ptr %476, i64 %597
  %599 = load i8, ptr %598, align 1, !tbaa !54
  %600 = add i8 %599, -1
  store i8 %600, ptr %598, align 1, !tbaa !54
  %601 = add nuw nsw i32 %556, 1
  %602 = icmp eq i32 %556, -1
  br i1 %602, label %.loopexit51, label %554, !llvm.loop !65

.loopexit51:                                      ; preds = %581, %594, %.loopexit56
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %603

603:                                              ; preds = %.loopexit51, %.loopexit63
  %604 = phi i32 [ %143, %.loopexit51 ], [ %360, %.loopexit63 ]
  %605 = icmp samesign ugt i32 %604, 12
  br i1 %605, label %765, label %606

606:                                              ; preds = %603
  %607 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %7, i8 0, i64 26, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %8, i8 0, i64 26, i1 false)
  br i1 %304, label %.loopexit47, label %608

608:                                              ; preds = %606
  %609 = getelementptr inbounds nuw i8, ptr %14, i64 15
  %610 = getelementptr i8, ptr %14, i64 23
  %611 = load i8, ptr %609, align 1, !tbaa !54
  %612 = zext i8 %611 to i64
  %613 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %612
  %614 = load i16, ptr %613, align 2, !tbaa !31
  %615 = add i16 %614, 1
  store i16 %615, ptr %613, align 2, !tbaa !31
  %.not234 = icmp eq i64 %.pre-phi, 0
  br i1 %.not234, label %.loopexit47, label %.lr.ph224, !llvm.loop !66

.lr.ph224:                                        ; preds = %608
  br label %633, !llvm.loop !66

..loopexit47.loopexit_crit_edge225:               ; preds = %623, %643
  br label %.loopexit47, !llvm.loop !66

.loopexit47:                                      ; preds = %608, %..loopexit47.loopexit_crit_edge225, %606
  %616 = icmp eq i32 %604, 0
  br i1 %616, label %.loopexit45, label %617

617:                                              ; preds = %.loopexit47
  %618 = zext nneg i32 %604 to i64
  %619 = and i64 %618, 3
  %620 = icmp ult i32 %604, 4
  br i1 %620, label %.loopexit46, label %621

621:                                              ; preds = %617
  %622 = and i64 %618, 12
  br label %647

623:                                              ; preds = %643
  %624 = shl nuw nsw i64 %644, 3
  %625 = getelementptr inbounds nuw i8, ptr %609, i64 %624
  %626 = load i8, ptr %625, align 1, !tbaa !54
  %627 = zext i8 %626 to i64
  %628 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %627
  %629 = load i16, ptr %628, align 2, !tbaa !31
  %630 = add i16 %629, 1
  store i16 %630, ptr %628, align 2, !tbaa !31
  %631 = icmp samesign ult i64 %644, %.pre-phi
  br i1 %631, label %633, label %..loopexit47.loopexit_crit_edge225, !llvm.loop !66

632:                                              ; preds = %633
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !46
  unreachable, !nosanitize !46

633:                                              ; preds = %.lr.ph224, %623
  %634 = phi i64 [ 0, %.lr.ph224 ], [ %624, %623 ]
  %635 = phi i64 [ 0, %.lr.ph224 ], [ %644, %623 ]
  %636 = getelementptr i8, ptr %610, i64 %634
  %637 = load i8, ptr %636, align 1, !tbaa !54
  %638 = zext i8 %637 to i64
  %639 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %638
  %640 = load i16, ptr %639, align 2, !tbaa !31
  %641 = add i16 %640, 1
  store i16 %641, ptr %639, align 2, !tbaa !31
  %642 = icmp eq i64 %635, 2147483646
  br i1 %642, label %632, label %643, !prof !49, !nosanitize !46

643:                                              ; preds = %633
  %644 = add nuw nsw i64 %635, 2
  %645 = trunc i64 %644 to i32
  %646 = icmp slt i32 %160, %645
  br i1 %646, label %..loopexit47.loopexit_crit_edge225, label %623, !llvm.loop !66

647:                                              ; preds = %647, %621
  %648 = phi i64 [ %618, %621 ], [ %670, %647 ]
  %649 = phi i16 [ 0, %621 ], [ %674, %647 ]
  %650 = phi i64 [ 0, %621 ], [ %675, %647 ]
  %651 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %648
  store i16 %649, ptr %651, align 2, !tbaa !31
  %652 = add nsw i64 %648, -1
  %653 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %648
  %654 = load i16, ptr %653, align 2, !tbaa !31
  %655 = add i16 %654, %649
  %656 = lshr i16 %655, 1
  %657 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %652
  store i16 %656, ptr %657, align 2, !tbaa !31
  %658 = add nsw i64 %648, -2
  %659 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %652
  %660 = load i16, ptr %659, align 2, !tbaa !31
  %661 = add i16 %660, %656
  %662 = lshr i16 %661, 1
  %663 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %658
  store i16 %662, ptr %663, align 2, !tbaa !31
  %664 = add nsw i64 %648, -3
  %665 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %658
  %666 = load i16, ptr %665, align 2, !tbaa !31
  %667 = add i16 %666, %662
  %668 = lshr i16 %667, 1
  %669 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %664
  store i16 %668, ptr %669, align 2, !tbaa !31
  %670 = add nsw i64 %648, -4
  %671 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %664
  %672 = load i16, ptr %671, align 2, !tbaa !31
  %673 = add i16 %672, %668
  %674 = lshr i16 %673, 1
  %675 = add i64 %650, 4
  %676 = icmp eq i64 %675, %622
  br i1 %676, label %.loopexit46, label %647, !llvm.loop !67

.loopexit46:                                      ; preds = %647, %617
  %677 = phi i64 [ %618, %617 ], [ %670, %647 ]
  %678 = phi i16 [ 0, %617 ], [ %674, %647 ]
  %679 = icmp eq i64 %619, 0
  br i1 %679, label %.loopexit45, label %.preheader44

.preheader44:                                     ; preds = %.loopexit46, %.preheader44
  %680 = phi i64 [ %684, %.preheader44 ], [ %677, %.loopexit46 ]
  %681 = phi i16 [ %688, %.preheader44 ], [ %678, %.loopexit46 ]
  %682 = phi i64 [ %689, %.preheader44 ], [ 0, %.loopexit46 ]
  %683 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %680
  store i16 %681, ptr %683, align 2, !tbaa !31
  %684 = add nsw i64 %680, -1
  %685 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %680
  %686 = load i16, ptr %685, align 2, !tbaa !31
  %687 = add i16 %686, %681
  %688 = lshr i16 %687, 1
  %689 = add nuw nsw i64 %682, 1
  %690 = icmp eq i64 %689, %619
  br i1 %690, label %.loopexit45, label %.preheader44, !llvm.loop !68

.loopexit45:                                      ; preds = %.preheader44, %.loopexit46, %.loopexit47
  %691 = and i64 %24, 3
  %692 = icmp ult i32 %2, 3
  br i1 %692, label %.loopexit43, label %693

693:                                              ; preds = %.loopexit45
  %694 = and i64 %24, 508
  br label %695

695:                                              ; preds = %695, %693
  %696 = phi i64 [ 0, %693 ], [ %726, %695 ]
  %697 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %696
  %698 = getelementptr inbounds nuw i8, ptr %697, i64 6
  %699 = load i8, ptr %698, align 2, !tbaa !43
  %700 = zext i8 %699 to i64
  %701 = getelementptr inbounds nuw [8 x i8], ptr %607, i64 %700
  %702 = getelementptr inbounds nuw i8, ptr %697, i64 7
  %703 = load i8, ptr %702, align 1, !tbaa !54
  %704 = zext i8 %703 to i64
  store i64 %704, ptr %701, align 8, !tbaa !14
  %705 = getelementptr inbounds nuw i8, ptr %697, i64 14
  %706 = load i8, ptr %705, align 2, !tbaa !43
  %707 = zext i8 %706 to i64
  %708 = getelementptr inbounds nuw [8 x i8], ptr %607, i64 %707
  %709 = getelementptr inbounds nuw i8, ptr %697, i64 15
  %710 = load i8, ptr %709, align 1, !tbaa !54
  %711 = zext i8 %710 to i64
  store i64 %711, ptr %708, align 8, !tbaa !14
  %712 = getelementptr inbounds nuw i8, ptr %697, i64 22
  %713 = load i8, ptr %712, align 2, !tbaa !43
  %714 = zext i8 %713 to i64
  %715 = getelementptr inbounds nuw [8 x i8], ptr %607, i64 %714
  %716 = getelementptr inbounds nuw i8, ptr %697, i64 23
  %717 = load i8, ptr %716, align 1, !tbaa !54
  %718 = zext i8 %717 to i64
  store i64 %718, ptr %715, align 8, !tbaa !14
  %719 = getelementptr inbounds nuw i8, ptr %697, i64 30
  %720 = load i8, ptr %719, align 2, !tbaa !43
  %721 = zext i8 %720 to i64
  %722 = getelementptr inbounds nuw [8 x i8], ptr %607, i64 %721
  %723 = getelementptr inbounds nuw i8, ptr %697, i64 31
  %724 = load i8, ptr %723, align 1, !tbaa !54
  %725 = zext i8 %724 to i64
  store i64 %725, ptr %722, align 8, !tbaa !14
  %726 = add nuw i64 %696, 4
  %727 = icmp eq i64 %726, %694
  br i1 %727, label %.loopexit43, label %695, !llvm.loop !69

.loopexit43:                                      ; preds = %695, %.loopexit45
  %728 = phi i64 [ 0, %.loopexit45 ], [ %694, %695 ]
  %729 = icmp eq i64 %691, 0
  br i1 %729, label %.loopexit.preheader, label %.preheader

.preheader:                                       ; preds = %.loopexit43, %.preheader
  %730 = phi i64 [ %740, %.preheader ], [ %728, %.loopexit43 ]
  %731 = phi i64 [ %741, %.preheader ], [ 0, %.loopexit43 ]
  %732 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %730
  %733 = getelementptr inbounds nuw i8, ptr %732, i64 6
  %734 = load i8, ptr %733, align 2, !tbaa !43
  %735 = zext i8 %734 to i64
  %736 = getelementptr inbounds nuw [8 x i8], ptr %607, i64 %735
  %737 = getelementptr inbounds nuw i8, ptr %732, i64 7
  %738 = load i8, ptr %737, align 1, !tbaa !54
  %739 = zext i8 %738 to i64
  store i64 %739, ptr %736, align 8, !tbaa !14
  %740 = add nuw nsw i64 %730, 1
  %741 = add nuw nsw i64 %731, 1
  %742 = icmp eq i64 %741, %691
  br i1 %742, label %.loopexit.preheader, label %.preheader, !llvm.loop !70

.loopexit.preheader:                              ; preds = %.preheader, %.loopexit43
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.preheader, %756
  %743 = phi i64 [ %757, %756 ], [ 0, %.loopexit.preheader ]
  %744 = getelementptr inbounds nuw [8 x i8], ptr %607, i64 %743
  %745 = load i64, ptr %744, align 8, !tbaa !14
  %746 = and i64 %745, 255
  %747 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %746
  %748 = load i16, ptr %747, align 2, !tbaa !31
  %749 = add i16 %748, 1
  store i16 %749, ptr %747, align 2, !tbaa !31
  %750 = icmp eq i64 %746, 0
  br i1 %750, label %756, label %751

751:                                              ; preds = %.loopexit
  %752 = zext i16 %748 to i64
  %753 = sub nsw i64 64, %746
  %754 = shl i64 %752, %753
  %755 = or i64 %754, %745
  store i64 %755, ptr %744, align 8, !tbaa !14
  br label %756

756:                                              ; preds = %751, %.loopexit
  %757 = add nuw nsw i64 %743, 1
  %758 = icmp eq i64 %757, %24
  br i1 %758, label %759, label %.loopexit, !llvm.loop !71

759:                                              ; preds = %756
  %760 = trunc nuw nsw i32 %604 to i8
  %761 = trunc nuw i32 %2 to i8
  store i8 %760, ptr %0, align 8
  %762 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %761, ptr %762, align 1
  %763 = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %763, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %764 = zext nneg i32 %604 to i64
  br label %765

765:                                              ; preds = %759, %603, %19, %6
  %766 = phi i64 [ %764, %759 ], [ -66, %6 ], [ -46, %19 ], [ -1, %603 ]
  ret i64 %766
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
  br label %2511

11:                                               ; preds = %6
  %12 = load i64, ptr %4, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 255
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %16 = icmp ult i64 %1, 8
  br i1 %16, label %2511, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %19 = getelementptr inbounds i8, ptr %18, i64 -8
  %20 = icmp eq i64 %1, 8
  br i1 %20, label %2511, label %21

21:                                               ; preds = %17
  %22 = and i64 %12, 255
  %23 = mul i64 %22, %3
  %24 = lshr i64 %23, 3
  %25 = add nuw nsw i64 %24, 8
  %26 = icmp ult i64 %1, %25
  %27 = icmp samesign ugt i32 %14, 11
  %28 = select i1 %26, i1 true, i1 %27
  %29 = trunc i64 %3 to i32
  br i1 %28, label %30, label %302

30:                                               ; preds = %21
  %31 = srem i32 %29, 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %103

33:                                               ; preds = %30
  %34 = xor i32 %29, -2147483648
  %35 = add nsw i32 %31, -1
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %.loopexit, !prof !76, !nosanitize !46

37:                                               ; preds = %33
  %38 = and i32 %31, 1
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %.thread, label %40

40:                                               ; preds = %37
  %41 = and i32 %31, 2147483646
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi i32 [ %29, %40 ], [ %59, %42 ]
  %44 = phi i64 [ 0, %40 ], [ %69, %42 ]
  %45 = phi i64 [ 0, %40 ], [ %70, %42 ]
  %46 = phi i32 [ 0, %40 ], [ %71, %42 ]
  %47 = add i32 %43, -1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !5
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %51
  %53 = load i64, ptr %52, align 8, !tbaa !14
  %54 = and i64 %53, 255
  %55 = lshr i64 %44, %54
  %56 = and i64 %53, -256
  %57 = or i64 %55, %56
  %58 = add i64 %53, %45
  %59 = add i32 %43, -2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %2, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !5
  %63 = zext i8 %62 to i64
  %64 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !14
  %66 = and i64 %65, 255
  %67 = lshr i64 %57, %66
  %68 = and i64 %65, -256
  %69 = or i64 %67, %68
  %70 = add i64 %58, %65
  %71 = add i32 %46, 2
  %72 = icmp eq i32 %71, %41
  br i1 %72, label %73, label %42, !llvm.loop !77

.loopexit:                                        ; preds = %245, %242, %188, %119, %116, %113, %110, %33
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

73:                                               ; preds = %42
  %74 = sub i32 %29, %41
  %75 = icmp eq i32 %38, 0
  br i1 %75, label %91, label %.thread

.thread:                                          ; preds = %37, %73
  %76 = phi i64 [ %70, %73 ], [ 0, %37 ]
  %77 = phi i64 [ %69, %73 ], [ 0, %37 ]
  %78 = phi i32 [ %74, %73 ], [ %29, %37 ]
  %79 = add i32 %78, -1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %2, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !5
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !14
  %86 = and i64 %85, 255
  %87 = lshr i64 %77, %86
  %88 = and i64 %85, -256
  %89 = or i64 %87, %88
  %90 = add i64 %85, %76
  br label %91

91:                                               ; preds = %.thread, %73
  %92 = phi i64 [ %69, %73 ], [ %89, %.thread ]
  %93 = phi i64 [ %70, %73 ], [ %90, %.thread ]
  %94 = sub nsw i32 %29, %31
  %95 = and i64 %93, 255
  %96 = lshr i64 %95, 3
  %97 = sub nsw i64 64, %95
  %98 = lshr i64 %92, %97
  %99 = and i64 %93, 7
  store i64 %98, ptr %0, align 1, !tbaa !14
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 %96
  %101 = icmp ugt ptr %100, %19
  %102 = select i1 %101, ptr %19, ptr %100
  br label %103

103:                                              ; preds = %91, %30
  %104 = phi i64 [ 0, %30 ], [ %99, %91 ]
  %105 = phi ptr [ %0, %30 ], [ %102, %91 ]
  %106 = phi i64 [ 0, %30 ], [ %92, %91 ]
  %107 = phi i32 [ %29, %30 ], [ %94, %91 ]
  %108 = and i32 %107, 7
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %176, label %110

110:                                              ; preds = %103
  %111 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %107, i32 -1)
  %112 = extractvalue { i32, i1 } %111, 1, !nosanitize !46
  br i1 %112, label %.loopexit, label %113, !prof !49, !nosanitize !46

113:                                              ; preds = %110
  %114 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %107, i32 -2)
  %115 = extractvalue { i32, i1 } %114, 1, !nosanitize !46
  br i1 %115, label %.loopexit, label %116, !prof !49, !nosanitize !46

116:                                              ; preds = %113
  %117 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %107, i32 -3)
  %118 = extractvalue { i32, i1 } %117, 1, !nosanitize !46
  br i1 %118, label %.loopexit, label %119, !prof !49, !nosanitize !46

119:                                              ; preds = %116
  %120 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %107, i32 -4)
  %121 = extractvalue { i32, i1 } %120, 1, !nosanitize !46
  br i1 %121, label %.loopexit, label %122, !prof !49, !nosanitize !46

122:                                              ; preds = %119
  %123 = extractvalue { i32, i1 } %117, 0, !nosanitize !46
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, ptr %2, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !5
  %127 = zext i8 %126 to i64
  %128 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %127
  %129 = load i64, ptr %128, align 8, !tbaa !14
  %130 = extractvalue { i32, i1 } %114, 0, !nosanitize !46
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, ptr %2, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !5
  %134 = zext i8 %133 to i64
  %135 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %134
  %136 = load i64, ptr %135, align 8, !tbaa !14
  %137 = extractvalue { i32, i1 } %111, 0, !nosanitize !46
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, ptr %2, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !5
  %141 = zext i8 %140 to i64
  %142 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %141
  %143 = load i64, ptr %142, align 8, !tbaa !14
  %144 = and i64 %143, 255
  %145 = lshr i64 %106, %144
  %146 = or i64 %145, %143
  %147 = and i64 %136, 255
  %148 = lshr i64 %146, %147
  %149 = or i64 %148, %136
  %150 = and i64 %129, 255
  %151 = lshr i64 %149, %150
  %152 = or i64 %151, %129
  %153 = extractvalue { i32, i1 } %120, 0, !nosanitize !46
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, ptr %2, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !5
  %157 = zext i8 %156 to i64
  %158 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %157
  %159 = load i64, ptr %158, align 8, !tbaa !14
  %160 = and i64 %159, 255
  %161 = lshr i64 %152, %160
  %162 = and i64 %159, -256
  %163 = or i64 %161, %162
  %164 = add i64 %129, %104
  %165 = add i64 %164, %136
  %166 = add i64 %165, %143
  %167 = add i64 %166, %159
  %168 = and i64 %167, 255
  %169 = lshr i64 %168, 3
  %170 = sub nsw i64 64, %168
  %171 = lshr i64 %163, %170
  %172 = and i64 %167, 7
  store i64 %171, ptr %105, align 1, !tbaa !14
  %173 = getelementptr inbounds nuw i8, ptr %105, i64 %169
  %174 = icmp ugt ptr %173, %19
  %175 = select i1 %174, ptr %19, ptr %173
  br label %176

176:                                              ; preds = %122, %103
  %177 = phi i64 [ %104, %103 ], [ %172, %122 ]
  %178 = phi ptr [ %105, %103 ], [ %175, %122 ]
  %179 = phi i64 [ %106, %103 ], [ %163, %122 ]
  %180 = phi i32 [ %107, %103 ], [ %153, %122 ]
  %181 = getelementptr i8, ptr %2, i64 -8
  %182 = icmp sgt i32 %180, 0
  br i1 %182, label %183, label %.loopexit30

183:                                              ; preds = %176
  %184 = zext nneg i32 %180 to i64
  %185 = getelementptr i8, ptr %2, i64 -1
  %186 = getelementptr i8, ptr %2, i64 -2
  %187 = getelementptr i8, ptr %2, i64 -3
  br label %188

188:                                              ; preds = %248, %183
  %189 = phi i64 [ %184, %183 ], [ %300, %248 ]
  %190 = phi i64 [ %179, %183 ], [ %290, %248 ]
  %191 = phi ptr [ %178, %183 ], [ %299, %248 ]
  %192 = phi i64 [ %177, %183 ], [ %296, %248 ]
  %193 = getelementptr i8, ptr %185, i64 %189
  %194 = load i8, ptr %193, align 1, !tbaa !5
  %195 = zext i8 %194 to i64
  %196 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %195
  %197 = load i64, ptr %196, align 8, !tbaa !14
  %198 = and i64 %197, 255
  %199 = lshr i64 %190, %198
  %200 = or i64 %199, %197
  %201 = add i64 %197, %192
  %202 = getelementptr i8, ptr %186, i64 %189
  %203 = load i8, ptr %202, align 1, !tbaa !5
  %204 = zext i8 %203 to i64
  %205 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %204
  %206 = load i64, ptr %205, align 8, !tbaa !14
  %207 = and i64 %206, 255
  %208 = lshr i64 %200, %207
  %209 = or i64 %208, %206
  %210 = add i64 %201, %206
  %211 = getelementptr i8, ptr %187, i64 %189
  %212 = load i8, ptr %211, align 1, !tbaa !5
  %213 = zext i8 %212 to i64
  %214 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %213
  %215 = load i64, ptr %214, align 8, !tbaa !14
  %216 = and i64 %215, 255
  %217 = lshr i64 %209, %216
  %218 = or i64 %217, %215
  %219 = add i64 %210, %215
  %220 = add nsw i64 %189, -4
  %221 = getelementptr inbounds i8, ptr %2, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !5
  %223 = zext i8 %222 to i64
  %224 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %223
  %225 = load i64, ptr %224, align 8, !tbaa !14
  %226 = and i64 %225, 255
  %227 = lshr i64 %218, %226
  %228 = and i64 %225, -256
  %229 = or i64 %227, %228
  %230 = add i64 %219, %225
  %231 = and i64 %230, 255
  %232 = lshr i64 %231, 3
  %233 = sub nsw i64 64, %231
  %234 = lshr i64 %229, %233
  %235 = and i64 %230, 7
  store i64 %234, ptr %191, align 1, !tbaa !14
  %236 = getelementptr inbounds nuw i8, ptr %191, i64 %232
  %237 = icmp ugt ptr %236, %19
  %238 = select i1 %237, ptr %19, ptr %236
  %239 = trunc nsw i64 %220 to i32
  %240 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %239, i32 -1)
  %241 = extractvalue { i32, i1 } %240, 1, !nosanitize !46
  br i1 %241, label %.loopexit, label %242, !prof !49, !nosanitize !46

242:                                              ; preds = %188
  %243 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %239, i32 -2)
  %244 = extractvalue { i32, i1 } %243, 1, !nosanitize !46
  br i1 %244, label %.loopexit, label %245, !prof !49, !nosanitize !46

245:                                              ; preds = %242
  %246 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %239, i32 -3)
  %247 = extractvalue { i32, i1 } %246, 1, !nosanitize !46
  br i1 %247, label %.loopexit, label %248, !prof !49, !nosanitize !46

248:                                              ; preds = %245
  %249 = extractvalue { i32, i1 } %243, 0, !nosanitize !46
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, ptr %2, i64 %250
  %252 = load i8, ptr %251, align 1, !tbaa !5
  %253 = zext i8 %252 to i64
  %254 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %253
  %255 = load i64, ptr %254, align 8, !tbaa !14
  %256 = extractvalue { i32, i1 } %240, 0, !nosanitize !46
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, ptr %2, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !5
  %260 = zext i8 %259 to i64
  %261 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %260
  %262 = load i64, ptr %261, align 8, !tbaa !14
  %263 = add i64 %262, %255
  %264 = and i64 %255, 255
  %265 = lshr i64 %262, %264
  %266 = or i64 %265, %255
  %267 = extractvalue { i32, i1 } %246, 0, !nosanitize !46
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, ptr %2, i64 %268
  %270 = load i8, ptr %269, align 1, !tbaa !5
  %271 = zext i8 %270 to i64
  %272 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %271
  %273 = load i64, ptr %272, align 8, !tbaa !14
  %274 = and i64 %273, 255
  %275 = lshr i64 %266, %274
  %276 = or i64 %275, %273
  %277 = add i64 %263, %273
  %278 = getelementptr i8, ptr %181, i64 %189
  %279 = load i8, ptr %278, align 1, !tbaa !5
  %280 = zext i8 %279 to i64
  %281 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %280
  %282 = load i64, ptr %281, align 8, !tbaa !14
  %283 = and i64 %282, 255
  %284 = lshr i64 %276, %283
  %285 = and i64 %282, -256
  %286 = or i64 %284, %285
  %287 = add i64 %277, %282
  %288 = and i64 %287, 255
  %289 = lshr i64 %229, %288
  %290 = or i64 %286, %289
  %291 = add i64 %287, %235
  %292 = and i64 %291, 255
  %293 = lshr i64 %292, 3
  %294 = sub nsw i64 64, %292
  %295 = lshr i64 %290, %294
  %296 = and i64 %291, 7
  store i64 %295, ptr %238, align 1, !tbaa !14
  %297 = getelementptr inbounds nuw i8, ptr %238, i64 %293
  %298 = icmp ugt ptr %297, %19
  %299 = select i1 %298, ptr %19, ptr %297
  %300 = add nsw i64 %189, -8
  %301 = icmp sgt i64 %189, 8
  br i1 %301, label %188, label %.loopexit30, !llvm.loop !78

302:                                              ; preds = %21
  switch i32 %14, label %2038 [
    i32 11, label %303
    i32 10, label %605
    i32 9, label %904
    i32 8, label %1244
    i32 7, label %1622
  ]

303:                                              ; preds = %302
  %304 = srem i32 %29, 5
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %306, label %374

306:                                              ; preds = %303
  %307 = xor i32 %29, -2147483648
  %308 = add nsw i32 %304, -1
  %309 = icmp ugt i32 %307, %308
  br i1 %309, label %310, label %.loopexit33, !prof !76, !nosanitize !46

310:                                              ; preds = %306
  %311 = and i32 %304, 1
  %312 = icmp eq i32 %308, 0
  br i1 %312, label %.thread24, label %313

313:                                              ; preds = %310
  %314 = and i32 %304, 2147483646
  br label %315

315:                                              ; preds = %315, %313
  %316 = phi i32 [ %29, %313 ], [ %332, %315 ]
  %317 = phi i64 [ 0, %313 ], [ %342, %315 ]
  %318 = phi i64 [ 0, %313 ], [ %343, %315 ]
  %319 = phi i32 [ 0, %313 ], [ %344, %315 ]
  %320 = add i32 %316, -1
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8, ptr %2, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !5
  %324 = zext i8 %323 to i64
  %325 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %324
  %326 = load i64, ptr %325, align 8, !tbaa !14
  %327 = and i64 %326, 255
  %328 = lshr i64 %317, %327
  %329 = and i64 %326, -256
  %330 = or i64 %328, %329
  %331 = add i64 %326, %318
  %332 = add i32 %316, -2
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i8, ptr %2, i64 %333
  %335 = load i8, ptr %334, align 1, !tbaa !5
  %336 = zext i8 %335 to i64
  %337 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %336
  %338 = load i64, ptr %337, align 8, !tbaa !14
  %339 = and i64 %338, 255
  %340 = lshr i64 %330, %339
  %341 = and i64 %338, -256
  %342 = or i64 %340, %341
  %343 = add i64 %331, %338
  %344 = add i32 %319, 2
  %345 = icmp eq i32 %344, %314
  br i1 %345, label %346, label %315, !llvm.loop !77

.loopexit33:                                      ; preds = %539, %536, %533, %472, %393, %390, %387, %384, %381, %306
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

346:                                              ; preds = %315
  %347 = sub i32 %29, %314
  %348 = icmp eq i32 %311, 0
  br i1 %348, label %364, label %.thread24

.thread24:                                        ; preds = %310, %346
  %349 = phi i64 [ %343, %346 ], [ 0, %310 ]
  %350 = phi i64 [ %342, %346 ], [ 0, %310 ]
  %351 = phi i32 [ %347, %346 ], [ %29, %310 ]
  %352 = add i32 %351, -1
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8, ptr %2, i64 %353
  %355 = load i8, ptr %354, align 1, !tbaa !5
  %356 = zext i8 %355 to i64
  %357 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %356
  %358 = load i64, ptr %357, align 8, !tbaa !14
  %359 = and i64 %358, 255
  %360 = lshr i64 %350, %359
  %361 = and i64 %358, -256
  %362 = or i64 %360, %361
  %363 = add i64 %358, %349
  br label %364

364:                                              ; preds = %.thread24, %346
  %365 = phi i64 [ %342, %346 ], [ %362, %.thread24 ]
  %366 = phi i64 [ %343, %346 ], [ %363, %.thread24 ]
  %367 = sub nsw i32 %29, %304
  %368 = and i64 %366, 255
  %369 = lshr i64 %368, 3
  %370 = sub nsw i64 64, %368
  %371 = lshr i64 %365, %370
  %372 = and i64 %366, 7
  store i64 %371, ptr %0, align 1, !tbaa !14
  %373 = getelementptr inbounds nuw i8, ptr %0, i64 %369
  br label %374

374:                                              ; preds = %364, %303
  %375 = phi i64 [ %372, %364 ], [ 0, %303 ]
  %376 = phi ptr [ %373, %364 ], [ %0, %303 ]
  %377 = phi i64 [ %365, %364 ], [ 0, %303 ]
  %378 = phi i32 [ %367, %364 ], [ %29, %303 ]
  %379 = srem i32 %378, 10
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %459, label %381

381:                                              ; preds = %374
  %382 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %378, i32 -1)
  %383 = extractvalue { i32, i1 } %382, 1, !nosanitize !46
  br i1 %383, label %.loopexit33, label %384, !prof !49, !nosanitize !46

384:                                              ; preds = %381
  %385 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %378, i32 -2)
  %386 = extractvalue { i32, i1 } %385, 1, !nosanitize !46
  br i1 %386, label %.loopexit33, label %387, !prof !49, !nosanitize !46

387:                                              ; preds = %384
  %388 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %378, i32 -3)
  %389 = extractvalue { i32, i1 } %388, 1, !nosanitize !46
  br i1 %389, label %.loopexit33, label %390, !prof !49, !nosanitize !46

390:                                              ; preds = %387
  %391 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %378, i32 -4)
  %392 = extractvalue { i32, i1 } %391, 1, !nosanitize !46
  br i1 %392, label %.loopexit33, label %393, !prof !49, !nosanitize !46

393:                                              ; preds = %390
  %394 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %378, i32 -5)
  %395 = extractvalue { i32, i1 } %394, 1, !nosanitize !46
  br i1 %395, label %.loopexit33, label %396, !prof !49, !nosanitize !46

396:                                              ; preds = %393
  %397 = extractvalue { i32, i1 } %391, 0, !nosanitize !46
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8, ptr %2, i64 %398
  %400 = load i8, ptr %399, align 1, !tbaa !5
  %401 = zext i8 %400 to i64
  %402 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %401
  %403 = load i64, ptr %402, align 8, !tbaa !14
  %404 = extractvalue { i32, i1 } %388, 0, !nosanitize !46
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8, ptr %2, i64 %405
  %407 = load i8, ptr %406, align 1, !tbaa !5
  %408 = zext i8 %407 to i64
  %409 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %408
  %410 = load i64, ptr %409, align 8, !tbaa !14
  %411 = extractvalue { i32, i1 } %385, 0, !nosanitize !46
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i8, ptr %2, i64 %412
  %414 = load i8, ptr %413, align 1, !tbaa !5
  %415 = zext i8 %414 to i64
  %416 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %415
  %417 = load i64, ptr %416, align 8, !tbaa !14
  %418 = extractvalue { i32, i1 } %382, 0, !nosanitize !46
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i8, ptr %2, i64 %419
  %421 = load i8, ptr %420, align 1, !tbaa !5
  %422 = zext i8 %421 to i64
  %423 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %422
  %424 = load i64, ptr %423, align 8, !tbaa !14
  %425 = and i64 %424, 255
  %426 = lshr i64 %377, %425
  %427 = or i64 %426, %424
  %428 = and i64 %417, 255
  %429 = lshr i64 %427, %428
  %430 = or i64 %429, %417
  %431 = and i64 %410, 255
  %432 = lshr i64 %430, %431
  %433 = or i64 %432, %410
  %434 = and i64 %403, 255
  %435 = lshr i64 %433, %434
  %436 = or i64 %435, %403
  %437 = extractvalue { i32, i1 } %394, 0, !nosanitize !46
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i8, ptr %2, i64 %438
  %440 = load i8, ptr %439, align 1, !tbaa !5
  %441 = zext i8 %440 to i64
  %442 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %441
  %443 = load i64, ptr %442, align 8, !tbaa !14
  %444 = and i64 %443, 255
  %445 = lshr i64 %436, %444
  %446 = and i64 %443, -256
  %447 = or i64 %445, %446
  %448 = add i64 %403, %375
  %449 = add i64 %448, %410
  %450 = add i64 %449, %417
  %451 = add i64 %450, %424
  %452 = add i64 %451, %443
  %453 = and i64 %452, 255
  %454 = lshr i64 %453, 3
  %455 = sub nsw i64 64, %453
  %456 = lshr i64 %447, %455
  %457 = and i64 %452, 7
  store i64 %456, ptr %376, align 1, !tbaa !14
  %458 = getelementptr inbounds nuw i8, ptr %376, i64 %454
  br label %459

459:                                              ; preds = %396, %374
  %460 = phi i64 [ %375, %374 ], [ %457, %396 ]
  %461 = phi ptr [ %376, %374 ], [ %458, %396 ]
  %462 = phi i64 [ %377, %374 ], [ %447, %396 ]
  %463 = phi i32 [ %378, %374 ], [ %437, %396 ]
  %464 = getelementptr i8, ptr %2, i64 -10
  %465 = icmp sgt i32 %463, 0
  br i1 %465, label %466, label %.loopexit30

466:                                              ; preds = %459
  %467 = zext nneg i32 %463 to i64
  %468 = getelementptr i8, ptr %2, i64 -1
  %469 = getelementptr i8, ptr %2, i64 -2
  %470 = getelementptr i8, ptr %2, i64 -3
  %471 = getelementptr i8, ptr %2, i64 -4
  br label %472

472:                                              ; preds = %542, %466
  %473 = phi i64 [ %467, %466 ], [ %603, %542 ]
  %474 = phi i64 [ %462, %466 ], [ %595, %542 ]
  %475 = phi ptr [ %461, %466 ], [ %602, %542 ]
  %476 = phi i64 [ %460, %466 ], [ %601, %542 ]
  %477 = getelementptr i8, ptr %468, i64 %473
  %478 = load i8, ptr %477, align 1, !tbaa !5
  %479 = zext i8 %478 to i64
  %480 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %479
  %481 = load i64, ptr %480, align 8, !tbaa !14
  %482 = and i64 %481, 255
  %483 = lshr i64 %474, %482
  %484 = or i64 %483, %481
  %485 = add i64 %481, %476
  %486 = getelementptr i8, ptr %469, i64 %473
  %487 = load i8, ptr %486, align 1, !tbaa !5
  %488 = zext i8 %487 to i64
  %489 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %488
  %490 = load i64, ptr %489, align 8, !tbaa !14
  %491 = and i64 %490, 255
  %492 = lshr i64 %484, %491
  %493 = or i64 %492, %490
  %494 = add i64 %485, %490
  %495 = getelementptr i8, ptr %470, i64 %473
  %496 = load i8, ptr %495, align 1, !tbaa !5
  %497 = zext i8 %496 to i64
  %498 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %497
  %499 = load i64, ptr %498, align 8, !tbaa !14
  %500 = and i64 %499, 255
  %501 = lshr i64 %493, %500
  %502 = or i64 %501, %499
  %503 = add i64 %494, %499
  %504 = getelementptr i8, ptr %471, i64 %473
  %505 = load i8, ptr %504, align 1, !tbaa !5
  %506 = zext i8 %505 to i64
  %507 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %506
  %508 = load i64, ptr %507, align 8, !tbaa !14
  %509 = and i64 %508, 255
  %510 = lshr i64 %502, %509
  %511 = or i64 %510, %508
  %512 = add i64 %503, %508
  %513 = add nsw i64 %473, -5
  %514 = getelementptr inbounds i8, ptr %2, i64 %513
  %515 = load i8, ptr %514, align 1, !tbaa !5
  %516 = zext i8 %515 to i64
  %517 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %516
  %518 = load i64, ptr %517, align 8, !tbaa !14
  %519 = and i64 %518, 255
  %520 = lshr i64 %511, %519
  %521 = and i64 %518, -256
  %522 = or i64 %520, %521
  %523 = add i64 %512, %518
  %524 = and i64 %523, 255
  %525 = lshr i64 %524, 3
  %526 = sub nsw i64 64, %524
  %527 = lshr i64 %522, %526
  %528 = and i64 %523, 7
  store i64 %527, ptr %475, align 1, !tbaa !14
  %529 = getelementptr inbounds nuw i8, ptr %475, i64 %525
  %530 = trunc nsw i64 %513 to i32
  %531 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %530, i32 -1)
  %532 = extractvalue { i32, i1 } %531, 1, !nosanitize !46
  br i1 %532, label %.loopexit33, label %533, !prof !49, !nosanitize !46

533:                                              ; preds = %472
  %534 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %530, i32 -2)
  %535 = extractvalue { i32, i1 } %534, 1, !nosanitize !46
  br i1 %535, label %.loopexit33, label %536, !prof !49, !nosanitize !46

536:                                              ; preds = %533
  %537 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %530, i32 -3)
  %538 = extractvalue { i32, i1 } %537, 1, !nosanitize !46
  br i1 %538, label %.loopexit33, label %539, !prof !49, !nosanitize !46

539:                                              ; preds = %536
  %540 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %530, i32 -4)
  %541 = extractvalue { i32, i1 } %540, 1, !nosanitize !46
  br i1 %541, label %.loopexit33, label %542, !prof !49, !nosanitize !46

542:                                              ; preds = %539
  %543 = extractvalue { i32, i1 } %537, 0, !nosanitize !46
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i8, ptr %2, i64 %544
  %546 = load i8, ptr %545, align 1, !tbaa !5
  %547 = zext i8 %546 to i64
  %548 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %547
  %549 = load i64, ptr %548, align 8, !tbaa !14
  %550 = extractvalue { i32, i1 } %534, 0, !nosanitize !46
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i8, ptr %2, i64 %551
  %553 = load i8, ptr %552, align 1, !tbaa !5
  %554 = zext i8 %553 to i64
  %555 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %554
  %556 = load i64, ptr %555, align 8, !tbaa !14
  %557 = extractvalue { i32, i1 } %531, 0, !nosanitize !46
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i8, ptr %2, i64 %558
  %560 = load i8, ptr %559, align 1, !tbaa !5
  %561 = zext i8 %560 to i64
  %562 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %561
  %563 = load i64, ptr %562, align 8, !tbaa !14
  %564 = and i64 %556, 255
  %565 = lshr i64 %563, %564
  %566 = or i64 %565, %556
  %567 = and i64 %549, 255
  %568 = lshr i64 %566, %567
  %569 = or i64 %568, %549
  %570 = extractvalue { i32, i1 } %540, 0, !nosanitize !46
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i8, ptr %2, i64 %571
  %573 = load i8, ptr %572, align 1, !tbaa !5
  %574 = zext i8 %573 to i64
  %575 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %574
  %576 = load i64, ptr %575, align 8, !tbaa !14
  %577 = and i64 %576, 255
  %578 = lshr i64 %569, %577
  %579 = or i64 %578, %576
  %580 = getelementptr i8, ptr %464, i64 %473
  %581 = load i8, ptr %580, align 1, !tbaa !5
  %582 = zext i8 %581 to i64
  %583 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %582
  %584 = load i64, ptr %583, align 8, !tbaa !14
  %585 = and i64 %584, 255
  %586 = lshr i64 %579, %585
  %587 = and i64 %584, -256
  %588 = or i64 %586, %587
  %589 = add i64 %556, %549
  %590 = add i64 %589, %563
  %591 = add i64 %590, %576
  %592 = add i64 %591, %584
  %593 = and i64 %592, 255
  %594 = lshr i64 %522, %593
  %595 = or i64 %588, %594
  %596 = add i64 %592, %528
  %597 = and i64 %596, 255
  %598 = lshr i64 %597, 3
  %599 = sub nsw i64 64, %597
  %600 = lshr i64 %595, %599
  %601 = and i64 %596, 7
  store i64 %600, ptr %529, align 1, !tbaa !14
  %602 = getelementptr inbounds nuw i8, ptr %529, i64 %598
  %603 = add nsw i64 %473, -10
  %604 = icmp sgt i64 %473, 10
  br i1 %604, label %472, label %.loopexit30, !llvm.loop !78

605:                                              ; preds = %302
  %606 = srem i32 %29, 5
  %607 = icmp sgt i32 %606, 0
  br i1 %607, label %608, label %676

608:                                              ; preds = %605
  %609 = xor i32 %29, -2147483648
  %610 = add nsw i32 %606, -1
  %611 = icmp ugt i32 %609, %610
  br i1 %611, label %612, label %.loopexit35, !prof !76, !nosanitize !46

612:                                              ; preds = %608
  %613 = and i32 %606, 1
  %614 = icmp eq i32 %610, 0
  br i1 %614, label %.thread25, label %615

615:                                              ; preds = %612
  %616 = and i32 %606, 2147483646
  br label %617

617:                                              ; preds = %617, %615
  %618 = phi i32 [ %29, %615 ], [ %634, %617 ]
  %619 = phi i64 [ 0, %615 ], [ %644, %617 ]
  %620 = phi i64 [ 0, %615 ], [ %645, %617 ]
  %621 = phi i32 [ 0, %615 ], [ %646, %617 ]
  %622 = add i32 %618, -1
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds i8, ptr %2, i64 %623
  %625 = load i8, ptr %624, align 1, !tbaa !5
  %626 = zext i8 %625 to i64
  %627 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %626
  %628 = load i64, ptr %627, align 8, !tbaa !14
  %629 = and i64 %628, 255
  %630 = lshr i64 %619, %629
  %631 = and i64 %628, -256
  %632 = or i64 %630, %631
  %633 = add i64 %628, %620
  %634 = add i32 %618, -2
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds i8, ptr %2, i64 %635
  %637 = load i8, ptr %636, align 1, !tbaa !5
  %638 = zext i8 %637 to i64
  %639 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %638
  %640 = load i64, ptr %639, align 8, !tbaa !14
  %641 = and i64 %640, 255
  %642 = lshr i64 %632, %641
  %643 = and i64 %640, -256
  %644 = or i64 %642, %643
  %645 = add i64 %633, %640
  %646 = add i32 %621, 2
  %647 = icmp eq i32 %646, %616
  br i1 %647, label %648, label %617, !llvm.loop !77

.loopexit35:                                      ; preds = %839, %836, %833, %773, %695, %692, %689, %686, %683, %608
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

648:                                              ; preds = %617
  %649 = sub i32 %29, %616
  %650 = icmp eq i32 %613, 0
  br i1 %650, label %666, label %.thread25

.thread25:                                        ; preds = %612, %648
  %651 = phi i64 [ %645, %648 ], [ 0, %612 ]
  %652 = phi i64 [ %644, %648 ], [ 0, %612 ]
  %653 = phi i32 [ %649, %648 ], [ %29, %612 ]
  %654 = add i32 %653, -1
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds i8, ptr %2, i64 %655
  %657 = load i8, ptr %656, align 1, !tbaa !5
  %658 = zext i8 %657 to i64
  %659 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %658
  %660 = load i64, ptr %659, align 8, !tbaa !14
  %661 = and i64 %660, 255
  %662 = lshr i64 %652, %661
  %663 = and i64 %660, -256
  %664 = or i64 %662, %663
  %665 = add i64 %660, %651
  br label %666

666:                                              ; preds = %.thread25, %648
  %667 = phi i64 [ %644, %648 ], [ %664, %.thread25 ]
  %668 = phi i64 [ %645, %648 ], [ %665, %.thread25 ]
  %669 = sub nsw i32 %29, %606
  %670 = and i64 %668, 255
  %671 = lshr i64 %670, 3
  %672 = sub nsw i64 64, %670
  %673 = lshr i64 %667, %672
  %674 = and i64 %668, 7
  store i64 %673, ptr %0, align 1, !tbaa !14
  %675 = getelementptr inbounds nuw i8, ptr %0, i64 %671
  br label %676

676:                                              ; preds = %666, %605
  %677 = phi i64 [ %674, %666 ], [ 0, %605 ]
  %678 = phi ptr [ %675, %666 ], [ %0, %605 ]
  %679 = phi i64 [ %667, %666 ], [ 0, %605 ]
  %680 = phi i32 [ %669, %666 ], [ %29, %605 ]
  %681 = srem i32 %680, 10
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %760, label %683

683:                                              ; preds = %676
  %684 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %680, i32 -1)
  %685 = extractvalue { i32, i1 } %684, 1, !nosanitize !46
  br i1 %685, label %.loopexit35, label %686, !prof !49, !nosanitize !46

686:                                              ; preds = %683
  %687 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %680, i32 -2)
  %688 = extractvalue { i32, i1 } %687, 1, !nosanitize !46
  br i1 %688, label %.loopexit35, label %689, !prof !49, !nosanitize !46

689:                                              ; preds = %686
  %690 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %680, i32 -3)
  %691 = extractvalue { i32, i1 } %690, 1, !nosanitize !46
  br i1 %691, label %.loopexit35, label %692, !prof !49, !nosanitize !46

692:                                              ; preds = %689
  %693 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %680, i32 -4)
  %694 = extractvalue { i32, i1 } %693, 1, !nosanitize !46
  br i1 %694, label %.loopexit35, label %695, !prof !49, !nosanitize !46

695:                                              ; preds = %692
  %696 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %680, i32 -5)
  %697 = extractvalue { i32, i1 } %696, 1, !nosanitize !46
  br i1 %697, label %.loopexit35, label %698, !prof !49, !nosanitize !46

698:                                              ; preds = %695
  %699 = extractvalue { i32, i1 } %693, 0, !nosanitize !46
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i8, ptr %2, i64 %700
  %702 = load i8, ptr %701, align 1, !tbaa !5
  %703 = zext i8 %702 to i64
  %704 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %703
  %705 = load i64, ptr %704, align 8, !tbaa !14
  %706 = extractvalue { i32, i1 } %690, 0, !nosanitize !46
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds i8, ptr %2, i64 %707
  %709 = load i8, ptr %708, align 1, !tbaa !5
  %710 = zext i8 %709 to i64
  %711 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %710
  %712 = load i64, ptr %711, align 8, !tbaa !14
  %713 = extractvalue { i32, i1 } %687, 0, !nosanitize !46
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds i8, ptr %2, i64 %714
  %716 = load i8, ptr %715, align 1, !tbaa !5
  %717 = zext i8 %716 to i64
  %718 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %717
  %719 = load i64, ptr %718, align 8, !tbaa !14
  %720 = extractvalue { i32, i1 } %684, 0, !nosanitize !46
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds i8, ptr %2, i64 %721
  %723 = load i8, ptr %722, align 1, !tbaa !5
  %724 = zext i8 %723 to i64
  %725 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %724
  %726 = load i64, ptr %725, align 8, !tbaa !14
  %727 = and i64 %726, 255
  %728 = lshr i64 %679, %727
  %729 = or i64 %728, %726
  %730 = and i64 %719, 255
  %731 = lshr i64 %729, %730
  %732 = or i64 %731, %719
  %733 = and i64 %712, 255
  %734 = lshr i64 %732, %733
  %735 = or i64 %734, %712
  %736 = and i64 %705, 255
  %737 = lshr i64 %735, %736
  %738 = or i64 %737, %705
  %739 = extractvalue { i32, i1 } %696, 0, !nosanitize !46
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds i8, ptr %2, i64 %740
  %742 = load i8, ptr %741, align 1, !tbaa !5
  %743 = zext i8 %742 to i64
  %744 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %743
  %745 = load i64, ptr %744, align 8, !tbaa !14
  %746 = and i64 %745, 255
  %747 = lshr i64 %738, %746
  %748 = or i64 %747, %745
  %749 = add i64 %705, %677
  %750 = add i64 %749, %712
  %751 = add i64 %750, %719
  %752 = add i64 %751, %726
  %753 = add i64 %752, %745
  %754 = and i64 %753, 255
  %755 = lshr i64 %754, 3
  %756 = sub nsw i64 64, %754
  %757 = lshr i64 %748, %756
  %758 = and i64 %753, 7
  store i64 %757, ptr %678, align 1, !tbaa !14
  %759 = getelementptr inbounds nuw i8, ptr %678, i64 %755
  br label %760

760:                                              ; preds = %698, %676
  %761 = phi i64 [ %677, %676 ], [ %758, %698 ]
  %762 = phi ptr [ %678, %676 ], [ %759, %698 ]
  %763 = phi i64 [ %679, %676 ], [ %748, %698 ]
  %764 = phi i32 [ %680, %676 ], [ %739, %698 ]
  %765 = getelementptr i8, ptr %2, i64 -10
  %766 = icmp sgt i32 %764, 0
  br i1 %766, label %767, label %.loopexit30

767:                                              ; preds = %760
  %768 = zext nneg i32 %764 to i64
  %769 = getelementptr i8, ptr %2, i64 -1
  %770 = getelementptr i8, ptr %2, i64 -2
  %771 = getelementptr i8, ptr %2, i64 -3
  %772 = getelementptr i8, ptr %2, i64 -4
  br label %773

773:                                              ; preds = %842, %767
  %774 = phi i64 [ %768, %767 ], [ %902, %842 ]
  %775 = phi i64 [ %763, %767 ], [ %894, %842 ]
  %776 = phi ptr [ %762, %767 ], [ %901, %842 ]
  %777 = phi i64 [ %761, %767 ], [ %900, %842 ]
  %778 = getelementptr i8, ptr %769, i64 %774
  %779 = load i8, ptr %778, align 1, !tbaa !5
  %780 = zext i8 %779 to i64
  %781 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %780
  %782 = load i64, ptr %781, align 8, !tbaa !14
  %783 = and i64 %782, 255
  %784 = lshr i64 %775, %783
  %785 = or i64 %784, %782
  %786 = add i64 %782, %777
  %787 = getelementptr i8, ptr %770, i64 %774
  %788 = load i8, ptr %787, align 1, !tbaa !5
  %789 = zext i8 %788 to i64
  %790 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %789
  %791 = load i64, ptr %790, align 8, !tbaa !14
  %792 = and i64 %791, 255
  %793 = lshr i64 %785, %792
  %794 = or i64 %793, %791
  %795 = add i64 %786, %791
  %796 = getelementptr i8, ptr %771, i64 %774
  %797 = load i8, ptr %796, align 1, !tbaa !5
  %798 = zext i8 %797 to i64
  %799 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %798
  %800 = load i64, ptr %799, align 8, !tbaa !14
  %801 = and i64 %800, 255
  %802 = lshr i64 %794, %801
  %803 = or i64 %802, %800
  %804 = add i64 %795, %800
  %805 = getelementptr i8, ptr %772, i64 %774
  %806 = load i8, ptr %805, align 1, !tbaa !5
  %807 = zext i8 %806 to i64
  %808 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %807
  %809 = load i64, ptr %808, align 8, !tbaa !14
  %810 = and i64 %809, 255
  %811 = lshr i64 %803, %810
  %812 = or i64 %811, %809
  %813 = add i64 %804, %809
  %814 = add nsw i64 %774, -5
  %815 = getelementptr inbounds i8, ptr %2, i64 %814
  %816 = load i8, ptr %815, align 1, !tbaa !5
  %817 = zext i8 %816 to i64
  %818 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %817
  %819 = load i64, ptr %818, align 8, !tbaa !14
  %820 = and i64 %819, 255
  %821 = lshr i64 %812, %820
  %822 = or i64 %821, %819
  %823 = add i64 %813, %819
  %824 = and i64 %823, 255
  %825 = lshr i64 %824, 3
  %826 = sub nsw i64 64, %824
  %827 = lshr i64 %822, %826
  %828 = and i64 %823, 7
  store i64 %827, ptr %776, align 1, !tbaa !14
  %829 = getelementptr inbounds nuw i8, ptr %776, i64 %825
  %830 = trunc nsw i64 %814 to i32
  %831 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %830, i32 -1)
  %832 = extractvalue { i32, i1 } %831, 1, !nosanitize !46
  br i1 %832, label %.loopexit35, label %833, !prof !49, !nosanitize !46

833:                                              ; preds = %773
  %834 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %830, i32 -2)
  %835 = extractvalue { i32, i1 } %834, 1, !nosanitize !46
  br i1 %835, label %.loopexit35, label %836, !prof !49, !nosanitize !46

836:                                              ; preds = %833
  %837 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %830, i32 -3)
  %838 = extractvalue { i32, i1 } %837, 1, !nosanitize !46
  br i1 %838, label %.loopexit35, label %839, !prof !49, !nosanitize !46

839:                                              ; preds = %836
  %840 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %830, i32 -4)
  %841 = extractvalue { i32, i1 } %840, 1, !nosanitize !46
  br i1 %841, label %.loopexit35, label %842, !prof !49, !nosanitize !46

842:                                              ; preds = %839
  %843 = extractvalue { i32, i1 } %837, 0, !nosanitize !46
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds i8, ptr %2, i64 %844
  %846 = load i8, ptr %845, align 1, !tbaa !5
  %847 = zext i8 %846 to i64
  %848 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %847
  %849 = load i64, ptr %848, align 8, !tbaa !14
  %850 = extractvalue { i32, i1 } %834, 0, !nosanitize !46
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds i8, ptr %2, i64 %851
  %853 = load i8, ptr %852, align 1, !tbaa !5
  %854 = zext i8 %853 to i64
  %855 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %854
  %856 = load i64, ptr %855, align 8, !tbaa !14
  %857 = extractvalue { i32, i1 } %831, 0, !nosanitize !46
  %858 = sext i32 %857 to i64
  %859 = getelementptr inbounds i8, ptr %2, i64 %858
  %860 = load i8, ptr %859, align 1, !tbaa !5
  %861 = zext i8 %860 to i64
  %862 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %861
  %863 = load i64, ptr %862, align 8, !tbaa !14
  %864 = and i64 %856, 255
  %865 = lshr i64 %863, %864
  %866 = or i64 %865, %856
  %867 = and i64 %849, 255
  %868 = lshr i64 %866, %867
  %869 = or i64 %868, %849
  %870 = extractvalue { i32, i1 } %840, 0, !nosanitize !46
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds i8, ptr %2, i64 %871
  %873 = load i8, ptr %872, align 1, !tbaa !5
  %874 = zext i8 %873 to i64
  %875 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %874
  %876 = load i64, ptr %875, align 8, !tbaa !14
  %877 = and i64 %876, 255
  %878 = lshr i64 %869, %877
  %879 = or i64 %878, %876
  %880 = getelementptr i8, ptr %765, i64 %774
  %881 = load i8, ptr %880, align 1, !tbaa !5
  %882 = zext i8 %881 to i64
  %883 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %882
  %884 = load i64, ptr %883, align 8, !tbaa !14
  %885 = and i64 %884, 255
  %886 = lshr i64 %879, %885
  %887 = add i64 %856, %849
  %888 = add i64 %887, %863
  %889 = add i64 %888, %876
  %890 = add i64 %889, %884
  %891 = and i64 %890, 255
  %892 = lshr i64 %822, %891
  %893 = or i64 %886, %892
  %894 = or i64 %893, %884
  %895 = add i64 %890, %828
  %896 = and i64 %895, 255
  %897 = lshr i64 %896, 3
  %898 = sub nsw i64 64, %896
  %899 = lshr i64 %894, %898
  %900 = and i64 %895, 7
  store i64 %899, ptr %829, align 1, !tbaa !14
  %901 = getelementptr inbounds nuw i8, ptr %829, i64 %897
  %902 = add nsw i64 %774, -10
  %903 = icmp sgt i64 %774, 10
  br i1 %903, label %773, label %.loopexit30, !llvm.loop !78

904:                                              ; preds = %302
  %905 = srem i32 %29, 6
  %906 = icmp sgt i32 %905, 0
  br i1 %906, label %907, label %975

907:                                              ; preds = %904
  %908 = xor i32 %29, -2147483648
  %909 = add nsw i32 %905, -1
  %910 = icmp ugt i32 %908, %909
  br i1 %910, label %911, label %.loopexit37, !prof !76, !nosanitize !46

911:                                              ; preds = %907
  %912 = and i32 %905, 1
  %913 = icmp eq i32 %909, 0
  br i1 %913, label %.thread26, label %914

914:                                              ; preds = %911
  %915 = and i32 %905, 2147483646
  br label %916

916:                                              ; preds = %916, %914
  %917 = phi i32 [ %29, %914 ], [ %933, %916 ]
  %918 = phi i64 [ 0, %914 ], [ %943, %916 ]
  %919 = phi i64 [ 0, %914 ], [ %944, %916 ]
  %920 = phi i32 [ 0, %914 ], [ %945, %916 ]
  %921 = add i32 %917, -1
  %922 = sext i32 %921 to i64
  %923 = getelementptr inbounds i8, ptr %2, i64 %922
  %924 = load i8, ptr %923, align 1, !tbaa !5
  %925 = zext i8 %924 to i64
  %926 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %925
  %927 = load i64, ptr %926, align 8, !tbaa !14
  %928 = and i64 %927, 255
  %929 = lshr i64 %918, %928
  %930 = and i64 %927, -256
  %931 = or i64 %929, %930
  %932 = add i64 %927, %919
  %933 = add i32 %917, -2
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds i8, ptr %2, i64 %934
  %936 = load i8, ptr %935, align 1, !tbaa !5
  %937 = zext i8 %936 to i64
  %938 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %937
  %939 = load i64, ptr %938, align 8, !tbaa !14
  %940 = and i64 %939, 255
  %941 = lshr i64 %931, %940
  %942 = and i64 %939, -256
  %943 = or i64 %941, %942
  %944 = add i64 %932, %939
  %945 = add i32 %920, 2
  %946 = icmp eq i32 %945, %915
  br i1 %946, label %947, label %916, !llvm.loop !77

.loopexit37:                                      ; preds = %1167, %1164, %1161, %1158, %1088, %997, %994, %991, %988, %985, %982, %907
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

947:                                              ; preds = %916
  %948 = sub i32 %29, %915
  %949 = icmp eq i32 %912, 0
  br i1 %949, label %965, label %.thread26

.thread26:                                        ; preds = %911, %947
  %950 = phi i64 [ %944, %947 ], [ 0, %911 ]
  %951 = phi i64 [ %943, %947 ], [ 0, %911 ]
  %952 = phi i32 [ %948, %947 ], [ %29, %911 ]
  %953 = add i32 %952, -1
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds i8, ptr %2, i64 %954
  %956 = load i8, ptr %955, align 1, !tbaa !5
  %957 = zext i8 %956 to i64
  %958 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %957
  %959 = load i64, ptr %958, align 8, !tbaa !14
  %960 = and i64 %959, 255
  %961 = lshr i64 %951, %960
  %962 = and i64 %959, -256
  %963 = or i64 %961, %962
  %964 = add i64 %959, %950
  br label %965

965:                                              ; preds = %.thread26, %947
  %966 = phi i64 [ %943, %947 ], [ %963, %.thread26 ]
  %967 = phi i64 [ %944, %947 ], [ %964, %.thread26 ]
  %968 = sub nsw i32 %29, %905
  %969 = and i64 %967, 255
  %970 = lshr i64 %969, 3
  %971 = sub nsw i64 64, %969
  %972 = lshr i64 %966, %971
  %973 = and i64 %967, 7
  store i64 %972, ptr %0, align 1, !tbaa !14
  %974 = getelementptr inbounds nuw i8, ptr %0, i64 %970
  br label %975

975:                                              ; preds = %965, %904
  %976 = phi i64 [ %973, %965 ], [ 0, %904 ]
  %977 = phi ptr [ %974, %965 ], [ %0, %904 ]
  %978 = phi i64 [ %966, %965 ], [ 0, %904 ]
  %979 = phi i32 [ %968, %965 ], [ %29, %904 ]
  %980 = srem i32 %979, 12
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %1074, label %982

982:                                              ; preds = %975
  %983 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %979, i32 -1)
  %984 = extractvalue { i32, i1 } %983, 1, !nosanitize !46
  br i1 %984, label %.loopexit37, label %985, !prof !49, !nosanitize !46

985:                                              ; preds = %982
  %986 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %979, i32 -2)
  %987 = extractvalue { i32, i1 } %986, 1, !nosanitize !46
  br i1 %987, label %.loopexit37, label %988, !prof !49, !nosanitize !46

988:                                              ; preds = %985
  %989 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %979, i32 -3)
  %990 = extractvalue { i32, i1 } %989, 1, !nosanitize !46
  br i1 %990, label %.loopexit37, label %991, !prof !49, !nosanitize !46

991:                                              ; preds = %988
  %992 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %979, i32 -4)
  %993 = extractvalue { i32, i1 } %992, 1, !nosanitize !46
  br i1 %993, label %.loopexit37, label %994, !prof !49, !nosanitize !46

994:                                              ; preds = %991
  %995 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %979, i32 -5)
  %996 = extractvalue { i32, i1 } %995, 1, !nosanitize !46
  br i1 %996, label %.loopexit37, label %997, !prof !49, !nosanitize !46

997:                                              ; preds = %994
  %998 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %979, i32 -6)
  %999 = extractvalue { i32, i1 } %998, 1, !nosanitize !46
  br i1 %999, label %.loopexit37, label %1000, !prof !49, !nosanitize !46

1000:                                             ; preds = %997
  %1001 = extractvalue { i32, i1 } %995, 0, !nosanitize !46
  %1002 = sext i32 %1001 to i64
  %1003 = getelementptr inbounds i8, ptr %2, i64 %1002
  %1004 = load i8, ptr %1003, align 1, !tbaa !5
  %1005 = zext i8 %1004 to i64
  %1006 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1005
  %1007 = load i64, ptr %1006, align 8, !tbaa !14
  %1008 = extractvalue { i32, i1 } %992, 0, !nosanitize !46
  %1009 = sext i32 %1008 to i64
  %1010 = getelementptr inbounds i8, ptr %2, i64 %1009
  %1011 = load i8, ptr %1010, align 1, !tbaa !5
  %1012 = zext i8 %1011 to i64
  %1013 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1012
  %1014 = load i64, ptr %1013, align 8, !tbaa !14
  %1015 = extractvalue { i32, i1 } %989, 0, !nosanitize !46
  %1016 = sext i32 %1015 to i64
  %1017 = getelementptr inbounds i8, ptr %2, i64 %1016
  %1018 = load i8, ptr %1017, align 1, !tbaa !5
  %1019 = zext i8 %1018 to i64
  %1020 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1019
  %1021 = load i64, ptr %1020, align 8, !tbaa !14
  %1022 = extractvalue { i32, i1 } %986, 0, !nosanitize !46
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds i8, ptr %2, i64 %1023
  %1025 = load i8, ptr %1024, align 1, !tbaa !5
  %1026 = zext i8 %1025 to i64
  %1027 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1026
  %1028 = load i64, ptr %1027, align 8, !tbaa !14
  %1029 = extractvalue { i32, i1 } %983, 0, !nosanitize !46
  %1030 = sext i32 %1029 to i64
  %1031 = getelementptr inbounds i8, ptr %2, i64 %1030
  %1032 = load i8, ptr %1031, align 1, !tbaa !5
  %1033 = zext i8 %1032 to i64
  %1034 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1033
  %1035 = load i64, ptr %1034, align 8, !tbaa !14
  %1036 = and i64 %1035, 255
  %1037 = lshr i64 %978, %1036
  %1038 = or i64 %1037, %1035
  %1039 = and i64 %1028, 255
  %1040 = lshr i64 %1038, %1039
  %1041 = or i64 %1040, %1028
  %1042 = and i64 %1021, 255
  %1043 = lshr i64 %1041, %1042
  %1044 = or i64 %1043, %1021
  %1045 = and i64 %1014, 255
  %1046 = lshr i64 %1044, %1045
  %1047 = or i64 %1046, %1014
  %1048 = and i64 %1007, 255
  %1049 = lshr i64 %1047, %1048
  %1050 = or i64 %1049, %1007
  %1051 = extractvalue { i32, i1 } %998, 0, !nosanitize !46
  %1052 = sext i32 %1051 to i64
  %1053 = getelementptr inbounds i8, ptr %2, i64 %1052
  %1054 = load i8, ptr %1053, align 1, !tbaa !5
  %1055 = zext i8 %1054 to i64
  %1056 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1055
  %1057 = load i64, ptr %1056, align 8, !tbaa !14
  %1058 = and i64 %1057, 255
  %1059 = lshr i64 %1050, %1058
  %1060 = and i64 %1057, -256
  %1061 = or i64 %1059, %1060
  %1062 = add i64 %1007, %976
  %1063 = add i64 %1062, %1014
  %1064 = add i64 %1063, %1021
  %1065 = add i64 %1064, %1028
  %1066 = add i64 %1065, %1035
  %1067 = add i64 %1066, %1057
  %1068 = and i64 %1067, 255
  %1069 = lshr i64 %1068, 3
  %1070 = sub nsw i64 64, %1068
  %1071 = lshr i64 %1061, %1070
  %1072 = and i64 %1067, 7
  store i64 %1071, ptr %977, align 1, !tbaa !14
  %1073 = getelementptr inbounds nuw i8, ptr %977, i64 %1069
  br label %1074

1074:                                             ; preds = %1000, %975
  %1075 = phi i64 [ %976, %975 ], [ %1072, %1000 ]
  %1076 = phi ptr [ %977, %975 ], [ %1073, %1000 ]
  %1077 = phi i64 [ %978, %975 ], [ %1061, %1000 ]
  %1078 = phi i32 [ %979, %975 ], [ %1051, %1000 ]
  %1079 = getelementptr i8, ptr %2, i64 -12
  %1080 = icmp sgt i32 %1078, 0
  br i1 %1080, label %1081, label %.loopexit30

1081:                                             ; preds = %1074
  %1082 = zext nneg i32 %1078 to i64
  %1083 = getelementptr i8, ptr %2, i64 -1
  %1084 = getelementptr i8, ptr %2, i64 -2
  %1085 = getelementptr i8, ptr %2, i64 -3
  %1086 = getelementptr i8, ptr %2, i64 -4
  %1087 = getelementptr i8, ptr %2, i64 -5
  br label %1088

1088:                                             ; preds = %1170, %1081
  %1089 = phi i64 [ %1082, %1081 ], [ %1242, %1170 ]
  %1090 = phi i64 [ %1077, %1081 ], [ %1234, %1170 ]
  %1091 = phi ptr [ %1076, %1081 ], [ %1241, %1170 ]
  %1092 = phi i64 [ %1075, %1081 ], [ %1240, %1170 ]
  %1093 = getelementptr i8, ptr %1083, i64 %1089
  %1094 = load i8, ptr %1093, align 1, !tbaa !5
  %1095 = zext i8 %1094 to i64
  %1096 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1095
  %1097 = load i64, ptr %1096, align 8, !tbaa !14
  %1098 = and i64 %1097, 255
  %1099 = lshr i64 %1090, %1098
  %1100 = or i64 %1099, %1097
  %1101 = add i64 %1097, %1092
  %1102 = getelementptr i8, ptr %1084, i64 %1089
  %1103 = load i8, ptr %1102, align 1, !tbaa !5
  %1104 = zext i8 %1103 to i64
  %1105 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1104
  %1106 = load i64, ptr %1105, align 8, !tbaa !14
  %1107 = and i64 %1106, 255
  %1108 = lshr i64 %1100, %1107
  %1109 = or i64 %1108, %1106
  %1110 = add i64 %1101, %1106
  %1111 = getelementptr i8, ptr %1085, i64 %1089
  %1112 = load i8, ptr %1111, align 1, !tbaa !5
  %1113 = zext i8 %1112 to i64
  %1114 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1113
  %1115 = load i64, ptr %1114, align 8, !tbaa !14
  %1116 = and i64 %1115, 255
  %1117 = lshr i64 %1109, %1116
  %1118 = or i64 %1117, %1115
  %1119 = add i64 %1110, %1115
  %1120 = getelementptr i8, ptr %1086, i64 %1089
  %1121 = load i8, ptr %1120, align 1, !tbaa !5
  %1122 = zext i8 %1121 to i64
  %1123 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1122
  %1124 = load i64, ptr %1123, align 8, !tbaa !14
  %1125 = and i64 %1124, 255
  %1126 = lshr i64 %1118, %1125
  %1127 = or i64 %1126, %1124
  %1128 = add i64 %1119, %1124
  %1129 = getelementptr i8, ptr %1087, i64 %1089
  %1130 = load i8, ptr %1129, align 1, !tbaa !5
  %1131 = zext i8 %1130 to i64
  %1132 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1131
  %1133 = load i64, ptr %1132, align 8, !tbaa !14
  %1134 = and i64 %1133, 255
  %1135 = lshr i64 %1127, %1134
  %1136 = or i64 %1135, %1133
  %1137 = add i64 %1128, %1133
  %1138 = add nsw i64 %1089, -6
  %1139 = getelementptr inbounds i8, ptr %2, i64 %1138
  %1140 = load i8, ptr %1139, align 1, !tbaa !5
  %1141 = zext i8 %1140 to i64
  %1142 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1141
  %1143 = load i64, ptr %1142, align 8, !tbaa !14
  %1144 = and i64 %1143, 255
  %1145 = lshr i64 %1136, %1144
  %1146 = and i64 %1143, -256
  %1147 = or i64 %1145, %1146
  %1148 = add i64 %1137, %1143
  %1149 = and i64 %1148, 255
  %1150 = lshr i64 %1149, 3
  %1151 = sub nsw i64 64, %1149
  %1152 = lshr i64 %1147, %1151
  %1153 = and i64 %1148, 7
  store i64 %1152, ptr %1091, align 1, !tbaa !14
  %1154 = getelementptr inbounds nuw i8, ptr %1091, i64 %1150
  %1155 = trunc nsw i64 %1138 to i32
  %1156 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1155, i32 -1)
  %1157 = extractvalue { i32, i1 } %1156, 1, !nosanitize !46
  br i1 %1157, label %.loopexit37, label %1158, !prof !49, !nosanitize !46

1158:                                             ; preds = %1088
  %1159 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1155, i32 -2)
  %1160 = extractvalue { i32, i1 } %1159, 1, !nosanitize !46
  br i1 %1160, label %.loopexit37, label %1161, !prof !49, !nosanitize !46

1161:                                             ; preds = %1158
  %1162 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1155, i32 -3)
  %1163 = extractvalue { i32, i1 } %1162, 1, !nosanitize !46
  br i1 %1163, label %.loopexit37, label %1164, !prof !49, !nosanitize !46

1164:                                             ; preds = %1161
  %1165 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1155, i32 -4)
  %1166 = extractvalue { i32, i1 } %1165, 1, !nosanitize !46
  br i1 %1166, label %.loopexit37, label %1167, !prof !49, !nosanitize !46

1167:                                             ; preds = %1164
  %1168 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1155, i32 -5)
  %1169 = extractvalue { i32, i1 } %1168, 1, !nosanitize !46
  br i1 %1169, label %.loopexit37, label %1170, !prof !49, !nosanitize !46

1170:                                             ; preds = %1167
  %1171 = extractvalue { i32, i1 } %1165, 0, !nosanitize !46
  %1172 = sext i32 %1171 to i64
  %1173 = getelementptr inbounds i8, ptr %2, i64 %1172
  %1174 = load i8, ptr %1173, align 1, !tbaa !5
  %1175 = zext i8 %1174 to i64
  %1176 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1175
  %1177 = load i64, ptr %1176, align 8, !tbaa !14
  %1178 = extractvalue { i32, i1 } %1162, 0, !nosanitize !46
  %1179 = sext i32 %1178 to i64
  %1180 = getelementptr inbounds i8, ptr %2, i64 %1179
  %1181 = load i8, ptr %1180, align 1, !tbaa !5
  %1182 = zext i8 %1181 to i64
  %1183 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1182
  %1184 = load i64, ptr %1183, align 8, !tbaa !14
  %1185 = extractvalue { i32, i1 } %1159, 0, !nosanitize !46
  %1186 = sext i32 %1185 to i64
  %1187 = getelementptr inbounds i8, ptr %2, i64 %1186
  %1188 = load i8, ptr %1187, align 1, !tbaa !5
  %1189 = zext i8 %1188 to i64
  %1190 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1189
  %1191 = load i64, ptr %1190, align 8, !tbaa !14
  %1192 = extractvalue { i32, i1 } %1156, 0, !nosanitize !46
  %1193 = sext i32 %1192 to i64
  %1194 = getelementptr inbounds i8, ptr %2, i64 %1193
  %1195 = load i8, ptr %1194, align 1, !tbaa !5
  %1196 = zext i8 %1195 to i64
  %1197 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1196
  %1198 = load i64, ptr %1197, align 8, !tbaa !14
  %1199 = and i64 %1191, 255
  %1200 = lshr i64 %1198, %1199
  %1201 = or i64 %1200, %1191
  %1202 = and i64 %1184, 255
  %1203 = lshr i64 %1201, %1202
  %1204 = or i64 %1203, %1184
  %1205 = and i64 %1177, 255
  %1206 = lshr i64 %1204, %1205
  %1207 = or i64 %1206, %1177
  %1208 = extractvalue { i32, i1 } %1168, 0, !nosanitize !46
  %1209 = sext i32 %1208 to i64
  %1210 = getelementptr inbounds i8, ptr %2, i64 %1209
  %1211 = load i8, ptr %1210, align 1, !tbaa !5
  %1212 = zext i8 %1211 to i64
  %1213 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1212
  %1214 = load i64, ptr %1213, align 8, !tbaa !14
  %1215 = and i64 %1214, 255
  %1216 = lshr i64 %1207, %1215
  %1217 = or i64 %1216, %1214
  %1218 = getelementptr i8, ptr %1079, i64 %1089
  %1219 = load i8, ptr %1218, align 1, !tbaa !5
  %1220 = zext i8 %1219 to i64
  %1221 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1220
  %1222 = load i64, ptr %1221, align 8, !tbaa !14
  %1223 = and i64 %1222, 255
  %1224 = lshr i64 %1217, %1223
  %1225 = and i64 %1222, -256
  %1226 = add i64 %1184, %1177
  %1227 = add i64 %1226, %1191
  %1228 = add i64 %1227, %1198
  %1229 = add i64 %1228, %1214
  %1230 = add i64 %1229, %1222
  %1231 = and i64 %1230, 255
  %1232 = lshr i64 %1147, %1231
  %1233 = or i64 %1232, %1225
  %1234 = or i64 %1233, %1224
  %1235 = add i64 %1230, %1153
  %1236 = and i64 %1235, 255
  %1237 = lshr i64 %1236, 3
  %1238 = sub nsw i64 64, %1236
  %1239 = lshr i64 %1234, %1238
  %1240 = and i64 %1235, 7
  store i64 %1239, ptr %1154, align 1, !tbaa !14
  %1241 = getelementptr inbounds nuw i8, ptr %1154, i64 %1237
  %1242 = add nsw i64 %1089, -12
  %1243 = icmp sgt i64 %1089, 12
  br i1 %1243, label %1088, label %.loopexit30, !llvm.loop !78

1244:                                             ; preds = %302
  %1245 = srem i32 %29, 7
  %1246 = icmp sgt i32 %1245, 0
  br i1 %1246, label %1247, label %1315

1247:                                             ; preds = %1244
  %1248 = xor i32 %29, -2147483648
  %1249 = add nsw i32 %1245, -1
  %1250 = icmp ugt i32 %1248, %1249
  br i1 %1250, label %1251, label %.loopexit39, !prof !76, !nosanitize !46

1251:                                             ; preds = %1247
  %1252 = and i32 %1245, 1
  %1253 = icmp eq i32 %1249, 0
  br i1 %1253, label %.thread27, label %1254

1254:                                             ; preds = %1251
  %1255 = and i32 %1245, 2147483646
  br label %1256

1256:                                             ; preds = %1256, %1254
  %1257 = phi i32 [ %29, %1254 ], [ %1273, %1256 ]
  %1258 = phi i64 [ 0, %1254 ], [ %1283, %1256 ]
  %1259 = phi i64 [ 0, %1254 ], [ %1284, %1256 ]
  %1260 = phi i32 [ 0, %1254 ], [ %1285, %1256 ]
  %1261 = add i32 %1257, -1
  %1262 = sext i32 %1261 to i64
  %1263 = getelementptr inbounds i8, ptr %2, i64 %1262
  %1264 = load i8, ptr %1263, align 1, !tbaa !5
  %1265 = zext i8 %1264 to i64
  %1266 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1265
  %1267 = load i64, ptr %1266, align 8, !tbaa !14
  %1268 = and i64 %1267, 255
  %1269 = lshr i64 %1258, %1268
  %1270 = and i64 %1267, -256
  %1271 = or i64 %1269, %1270
  %1272 = add i64 %1267, %1259
  %1273 = add i32 %1257, -2
  %1274 = sext i32 %1273 to i64
  %1275 = getelementptr inbounds i8, ptr %2, i64 %1274
  %1276 = load i8, ptr %1275, align 1, !tbaa !5
  %1277 = zext i8 %1276 to i64
  %1278 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1277
  %1279 = load i64, ptr %1278, align 8, !tbaa !14
  %1280 = and i64 %1279, 255
  %1281 = lshr i64 %1271, %1280
  %1282 = and i64 %1279, -256
  %1283 = or i64 %1281, %1282
  %1284 = add i64 %1272, %1279
  %1285 = add i32 %1260, 2
  %1286 = icmp eq i32 %1285, %1255
  br i1 %1286, label %1287, label %1256, !llvm.loop !77

.loopexit39:                                      ; preds = %1534, %1531, %1528, %1525, %1522, %1443, %1340, %1337, %1334, %1331, %1328, %1325, %1322, %1247
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

1287:                                             ; preds = %1256
  %1288 = sub i32 %29, %1255
  %1289 = icmp eq i32 %1252, 0
  br i1 %1289, label %1305, label %.thread27

.thread27:                                        ; preds = %1251, %1287
  %1290 = phi i64 [ %1284, %1287 ], [ 0, %1251 ]
  %1291 = phi i64 [ %1283, %1287 ], [ 0, %1251 ]
  %1292 = phi i32 [ %1288, %1287 ], [ %29, %1251 ]
  %1293 = add i32 %1292, -1
  %1294 = sext i32 %1293 to i64
  %1295 = getelementptr inbounds i8, ptr %2, i64 %1294
  %1296 = load i8, ptr %1295, align 1, !tbaa !5
  %1297 = zext i8 %1296 to i64
  %1298 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1297
  %1299 = load i64, ptr %1298, align 8, !tbaa !14
  %1300 = and i64 %1299, 255
  %1301 = lshr i64 %1291, %1300
  %1302 = and i64 %1299, -256
  %1303 = or i64 %1301, %1302
  %1304 = add i64 %1299, %1290
  br label %1305

1305:                                             ; preds = %.thread27, %1287
  %1306 = phi i64 [ %1283, %1287 ], [ %1303, %.thread27 ]
  %1307 = phi i64 [ %1284, %1287 ], [ %1304, %.thread27 ]
  %1308 = sub nsw i32 %29, %1245
  %1309 = and i64 %1307, 255
  %1310 = lshr i64 %1309, 3
  %1311 = sub nsw i64 64, %1309
  %1312 = lshr i64 %1306, %1311
  %1313 = and i64 %1307, 7
  store i64 %1312, ptr %0, align 1, !tbaa !14
  %1314 = getelementptr inbounds nuw i8, ptr %0, i64 %1310
  br label %1315

1315:                                             ; preds = %1305, %1244
  %1316 = phi i64 [ %1313, %1305 ], [ 0, %1244 ]
  %1317 = phi ptr [ %1314, %1305 ], [ %0, %1244 ]
  %1318 = phi i64 [ %1306, %1305 ], [ 0, %1244 ]
  %1319 = phi i32 [ %1308, %1305 ], [ %29, %1244 ]
  %1320 = srem i32 %1319, 14
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %1428, label %1322

1322:                                             ; preds = %1315
  %1323 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1319, i32 -1)
  %1324 = extractvalue { i32, i1 } %1323, 1, !nosanitize !46
  br i1 %1324, label %.loopexit39, label %1325, !prof !49, !nosanitize !46

1325:                                             ; preds = %1322
  %1326 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1319, i32 -2)
  %1327 = extractvalue { i32, i1 } %1326, 1, !nosanitize !46
  br i1 %1327, label %.loopexit39, label %1328, !prof !49, !nosanitize !46

1328:                                             ; preds = %1325
  %1329 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1319, i32 -3)
  %1330 = extractvalue { i32, i1 } %1329, 1, !nosanitize !46
  br i1 %1330, label %.loopexit39, label %1331, !prof !49, !nosanitize !46

1331:                                             ; preds = %1328
  %1332 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1319, i32 -4)
  %1333 = extractvalue { i32, i1 } %1332, 1, !nosanitize !46
  br i1 %1333, label %.loopexit39, label %1334, !prof !49, !nosanitize !46

1334:                                             ; preds = %1331
  %1335 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1319, i32 -5)
  %1336 = extractvalue { i32, i1 } %1335, 1, !nosanitize !46
  br i1 %1336, label %.loopexit39, label %1337, !prof !49, !nosanitize !46

1337:                                             ; preds = %1334
  %1338 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1319, i32 -6)
  %1339 = extractvalue { i32, i1 } %1338, 1, !nosanitize !46
  br i1 %1339, label %.loopexit39, label %1340, !prof !49, !nosanitize !46

1340:                                             ; preds = %1337
  %1341 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1319, i32 -7)
  %1342 = extractvalue { i32, i1 } %1341, 1, !nosanitize !46
  br i1 %1342, label %.loopexit39, label %1343, !prof !49, !nosanitize !46

1343:                                             ; preds = %1340
  %1344 = extractvalue { i32, i1 } %1338, 0, !nosanitize !46
  %1345 = sext i32 %1344 to i64
  %1346 = getelementptr inbounds i8, ptr %2, i64 %1345
  %1347 = load i8, ptr %1346, align 1, !tbaa !5
  %1348 = zext i8 %1347 to i64
  %1349 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1348
  %1350 = load i64, ptr %1349, align 8, !tbaa !14
  %1351 = extractvalue { i32, i1 } %1335, 0, !nosanitize !46
  %1352 = sext i32 %1351 to i64
  %1353 = getelementptr inbounds i8, ptr %2, i64 %1352
  %1354 = load i8, ptr %1353, align 1, !tbaa !5
  %1355 = zext i8 %1354 to i64
  %1356 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1355
  %1357 = load i64, ptr %1356, align 8, !tbaa !14
  %1358 = extractvalue { i32, i1 } %1332, 0, !nosanitize !46
  %1359 = sext i32 %1358 to i64
  %1360 = getelementptr inbounds i8, ptr %2, i64 %1359
  %1361 = load i8, ptr %1360, align 1, !tbaa !5
  %1362 = zext i8 %1361 to i64
  %1363 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1362
  %1364 = load i64, ptr %1363, align 8, !tbaa !14
  %1365 = extractvalue { i32, i1 } %1329, 0, !nosanitize !46
  %1366 = sext i32 %1365 to i64
  %1367 = getelementptr inbounds i8, ptr %2, i64 %1366
  %1368 = load i8, ptr %1367, align 1, !tbaa !5
  %1369 = zext i8 %1368 to i64
  %1370 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1369
  %1371 = load i64, ptr %1370, align 8, !tbaa !14
  %1372 = extractvalue { i32, i1 } %1326, 0, !nosanitize !46
  %1373 = sext i32 %1372 to i64
  %1374 = getelementptr inbounds i8, ptr %2, i64 %1373
  %1375 = load i8, ptr %1374, align 1, !tbaa !5
  %1376 = zext i8 %1375 to i64
  %1377 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1376
  %1378 = load i64, ptr %1377, align 8, !tbaa !14
  %1379 = extractvalue { i32, i1 } %1323, 0, !nosanitize !46
  %1380 = sext i32 %1379 to i64
  %1381 = getelementptr inbounds i8, ptr %2, i64 %1380
  %1382 = load i8, ptr %1381, align 1, !tbaa !5
  %1383 = zext i8 %1382 to i64
  %1384 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1383
  %1385 = load i64, ptr %1384, align 8, !tbaa !14
  %1386 = and i64 %1385, 255
  %1387 = lshr i64 %1318, %1386
  %1388 = or i64 %1387, %1385
  %1389 = and i64 %1378, 255
  %1390 = lshr i64 %1388, %1389
  %1391 = or i64 %1390, %1378
  %1392 = and i64 %1371, 255
  %1393 = lshr i64 %1391, %1392
  %1394 = or i64 %1393, %1371
  %1395 = and i64 %1364, 255
  %1396 = lshr i64 %1394, %1395
  %1397 = or i64 %1396, %1364
  %1398 = and i64 %1357, 255
  %1399 = lshr i64 %1397, %1398
  %1400 = or i64 %1399, %1357
  %1401 = and i64 %1350, 255
  %1402 = lshr i64 %1400, %1401
  %1403 = or i64 %1402, %1350
  %1404 = extractvalue { i32, i1 } %1341, 0, !nosanitize !46
  %1405 = sext i32 %1404 to i64
  %1406 = getelementptr inbounds i8, ptr %2, i64 %1405
  %1407 = load i8, ptr %1406, align 1, !tbaa !5
  %1408 = zext i8 %1407 to i64
  %1409 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1408
  %1410 = load i64, ptr %1409, align 8, !tbaa !14
  %1411 = and i64 %1410, 255
  %1412 = lshr i64 %1403, %1411
  %1413 = and i64 %1410, -256
  %1414 = or i64 %1412, %1413
  %1415 = add i64 %1350, %1316
  %1416 = add i64 %1415, %1357
  %1417 = add i64 %1416, %1364
  %1418 = add i64 %1417, %1371
  %1419 = add i64 %1418, %1378
  %1420 = add i64 %1419, %1385
  %1421 = add i64 %1420, %1410
  %1422 = and i64 %1421, 255
  %1423 = lshr i64 %1422, 3
  %1424 = sub nsw i64 64, %1422
  %1425 = lshr i64 %1414, %1424
  %1426 = and i64 %1421, 7
  store i64 %1425, ptr %1317, align 1, !tbaa !14
  %1427 = getelementptr inbounds nuw i8, ptr %1317, i64 %1423
  br label %1428

1428:                                             ; preds = %1343, %1315
  %1429 = phi i64 [ %1316, %1315 ], [ %1426, %1343 ]
  %1430 = phi ptr [ %1317, %1315 ], [ %1427, %1343 ]
  %1431 = phi i64 [ %1318, %1315 ], [ %1414, %1343 ]
  %1432 = phi i32 [ %1319, %1315 ], [ %1404, %1343 ]
  %1433 = getelementptr i8, ptr %2, i64 -14
  %1434 = icmp sgt i32 %1432, 0
  br i1 %1434, label %1435, label %.loopexit30

1435:                                             ; preds = %1428
  %1436 = zext nneg i32 %1432 to i64
  %1437 = getelementptr i8, ptr %2, i64 -1
  %1438 = getelementptr i8, ptr %2, i64 -2
  %1439 = getelementptr i8, ptr %2, i64 -3
  %1440 = getelementptr i8, ptr %2, i64 -4
  %1441 = getelementptr i8, ptr %2, i64 -5
  %1442 = getelementptr i8, ptr %2, i64 -6
  br label %1443

1443:                                             ; preds = %1537, %1435
  %1444 = phi i64 [ %1436, %1435 ], [ %1620, %1537 ]
  %1445 = phi i64 [ %1431, %1435 ], [ %1612, %1537 ]
  %1446 = phi ptr [ %1430, %1435 ], [ %1619, %1537 ]
  %1447 = phi i64 [ %1429, %1435 ], [ %1618, %1537 ]
  %1448 = getelementptr i8, ptr %1437, i64 %1444
  %1449 = load i8, ptr %1448, align 1, !tbaa !5
  %1450 = zext i8 %1449 to i64
  %1451 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1450
  %1452 = load i64, ptr %1451, align 8, !tbaa !14
  %1453 = and i64 %1452, 255
  %1454 = lshr i64 %1445, %1453
  %1455 = or i64 %1454, %1452
  %1456 = add i64 %1452, %1447
  %1457 = getelementptr i8, ptr %1438, i64 %1444
  %1458 = load i8, ptr %1457, align 1, !tbaa !5
  %1459 = zext i8 %1458 to i64
  %1460 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1459
  %1461 = load i64, ptr %1460, align 8, !tbaa !14
  %1462 = and i64 %1461, 255
  %1463 = lshr i64 %1455, %1462
  %1464 = or i64 %1463, %1461
  %1465 = add i64 %1456, %1461
  %1466 = getelementptr i8, ptr %1439, i64 %1444
  %1467 = load i8, ptr %1466, align 1, !tbaa !5
  %1468 = zext i8 %1467 to i64
  %1469 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1468
  %1470 = load i64, ptr %1469, align 8, !tbaa !14
  %1471 = and i64 %1470, 255
  %1472 = lshr i64 %1464, %1471
  %1473 = or i64 %1472, %1470
  %1474 = add i64 %1465, %1470
  %1475 = getelementptr i8, ptr %1440, i64 %1444
  %1476 = load i8, ptr %1475, align 1, !tbaa !5
  %1477 = zext i8 %1476 to i64
  %1478 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1477
  %1479 = load i64, ptr %1478, align 8, !tbaa !14
  %1480 = and i64 %1479, 255
  %1481 = lshr i64 %1473, %1480
  %1482 = or i64 %1481, %1479
  %1483 = add i64 %1474, %1479
  %1484 = getelementptr i8, ptr %1441, i64 %1444
  %1485 = load i8, ptr %1484, align 1, !tbaa !5
  %1486 = zext i8 %1485 to i64
  %1487 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1486
  %1488 = load i64, ptr %1487, align 8, !tbaa !14
  %1489 = and i64 %1488, 255
  %1490 = lshr i64 %1482, %1489
  %1491 = or i64 %1490, %1488
  %1492 = add i64 %1483, %1488
  %1493 = getelementptr i8, ptr %1442, i64 %1444
  %1494 = load i8, ptr %1493, align 1, !tbaa !5
  %1495 = zext i8 %1494 to i64
  %1496 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1495
  %1497 = load i64, ptr %1496, align 8, !tbaa !14
  %1498 = and i64 %1497, 255
  %1499 = lshr i64 %1491, %1498
  %1500 = or i64 %1499, %1497
  %1501 = add i64 %1492, %1497
  %1502 = add nsw i64 %1444, -7
  %1503 = getelementptr inbounds i8, ptr %2, i64 %1502
  %1504 = load i8, ptr %1503, align 1, !tbaa !5
  %1505 = zext i8 %1504 to i64
  %1506 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1505
  %1507 = load i64, ptr %1506, align 8, !tbaa !14
  %1508 = and i64 %1507, 255
  %1509 = lshr i64 %1500, %1508
  %1510 = and i64 %1507, -256
  %1511 = or i64 %1509, %1510
  %1512 = add i64 %1501, %1507
  %1513 = and i64 %1512, 255
  %1514 = lshr i64 %1513, 3
  %1515 = sub nsw i64 64, %1513
  %1516 = lshr i64 %1511, %1515
  %1517 = and i64 %1512, 7
  store i64 %1516, ptr %1446, align 1, !tbaa !14
  %1518 = getelementptr inbounds nuw i8, ptr %1446, i64 %1514
  %1519 = trunc nsw i64 %1502 to i32
  %1520 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1519, i32 -1)
  %1521 = extractvalue { i32, i1 } %1520, 1, !nosanitize !46
  br i1 %1521, label %.loopexit39, label %1522, !prof !49, !nosanitize !46

1522:                                             ; preds = %1443
  %1523 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1519, i32 -2)
  %1524 = extractvalue { i32, i1 } %1523, 1, !nosanitize !46
  br i1 %1524, label %.loopexit39, label %1525, !prof !49, !nosanitize !46

1525:                                             ; preds = %1522
  %1526 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1519, i32 -3)
  %1527 = extractvalue { i32, i1 } %1526, 1, !nosanitize !46
  br i1 %1527, label %.loopexit39, label %1528, !prof !49, !nosanitize !46

1528:                                             ; preds = %1525
  %1529 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1519, i32 -4)
  %1530 = extractvalue { i32, i1 } %1529, 1, !nosanitize !46
  br i1 %1530, label %.loopexit39, label %1531, !prof !49, !nosanitize !46

1531:                                             ; preds = %1528
  %1532 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1519, i32 -5)
  %1533 = extractvalue { i32, i1 } %1532, 1, !nosanitize !46
  br i1 %1533, label %.loopexit39, label %1534, !prof !49, !nosanitize !46

1534:                                             ; preds = %1531
  %1535 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1519, i32 -6)
  %1536 = extractvalue { i32, i1 } %1535, 1, !nosanitize !46
  br i1 %1536, label %.loopexit39, label %1537, !prof !49, !nosanitize !46

1537:                                             ; preds = %1534
  %1538 = extractvalue { i32, i1 } %1532, 0, !nosanitize !46
  %1539 = sext i32 %1538 to i64
  %1540 = getelementptr inbounds i8, ptr %2, i64 %1539
  %1541 = load i8, ptr %1540, align 1, !tbaa !5
  %1542 = zext i8 %1541 to i64
  %1543 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1542
  %1544 = load i64, ptr %1543, align 8, !tbaa !14
  %1545 = extractvalue { i32, i1 } %1529, 0, !nosanitize !46
  %1546 = sext i32 %1545 to i64
  %1547 = getelementptr inbounds i8, ptr %2, i64 %1546
  %1548 = load i8, ptr %1547, align 1, !tbaa !5
  %1549 = zext i8 %1548 to i64
  %1550 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1549
  %1551 = load i64, ptr %1550, align 8, !tbaa !14
  %1552 = extractvalue { i32, i1 } %1526, 0, !nosanitize !46
  %1553 = sext i32 %1552 to i64
  %1554 = getelementptr inbounds i8, ptr %2, i64 %1553
  %1555 = load i8, ptr %1554, align 1, !tbaa !5
  %1556 = zext i8 %1555 to i64
  %1557 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1556
  %1558 = load i64, ptr %1557, align 8, !tbaa !14
  %1559 = extractvalue { i32, i1 } %1523, 0, !nosanitize !46
  %1560 = sext i32 %1559 to i64
  %1561 = getelementptr inbounds i8, ptr %2, i64 %1560
  %1562 = load i8, ptr %1561, align 1, !tbaa !5
  %1563 = zext i8 %1562 to i64
  %1564 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1563
  %1565 = load i64, ptr %1564, align 8, !tbaa !14
  %1566 = extractvalue { i32, i1 } %1520, 0, !nosanitize !46
  %1567 = sext i32 %1566 to i64
  %1568 = getelementptr inbounds i8, ptr %2, i64 %1567
  %1569 = load i8, ptr %1568, align 1, !tbaa !5
  %1570 = zext i8 %1569 to i64
  %1571 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1570
  %1572 = load i64, ptr %1571, align 8, !tbaa !14
  %1573 = and i64 %1565, 255
  %1574 = lshr i64 %1572, %1573
  %1575 = or i64 %1574, %1565
  %1576 = and i64 %1558, 255
  %1577 = lshr i64 %1575, %1576
  %1578 = or i64 %1577, %1558
  %1579 = and i64 %1551, 255
  %1580 = lshr i64 %1578, %1579
  %1581 = or i64 %1580, %1551
  %1582 = and i64 %1544, 255
  %1583 = lshr i64 %1581, %1582
  %1584 = or i64 %1583, %1544
  %1585 = extractvalue { i32, i1 } %1535, 0, !nosanitize !46
  %1586 = sext i32 %1585 to i64
  %1587 = getelementptr inbounds i8, ptr %2, i64 %1586
  %1588 = load i8, ptr %1587, align 1, !tbaa !5
  %1589 = zext i8 %1588 to i64
  %1590 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1589
  %1591 = load i64, ptr %1590, align 8, !tbaa !14
  %1592 = and i64 %1591, 255
  %1593 = lshr i64 %1584, %1592
  %1594 = or i64 %1593, %1591
  %1595 = getelementptr i8, ptr %1433, i64 %1444
  %1596 = load i8, ptr %1595, align 1, !tbaa !5
  %1597 = zext i8 %1596 to i64
  %1598 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1597
  %1599 = load i64, ptr %1598, align 8, !tbaa !14
  %1600 = and i64 %1599, 255
  %1601 = lshr i64 %1594, %1600
  %1602 = and i64 %1599, -256
  %1603 = add i64 %1551, %1544
  %1604 = add i64 %1603, %1558
  %1605 = add i64 %1604, %1565
  %1606 = add i64 %1605, %1572
  %1607 = add i64 %1606, %1591
  %1608 = add i64 %1607, %1599
  %1609 = and i64 %1608, 255
  %1610 = lshr i64 %1511, %1609
  %1611 = or i64 %1610, %1602
  %1612 = or i64 %1611, %1601
  %1613 = add i64 %1608, %1517
  %1614 = and i64 %1613, 255
  %1615 = lshr i64 %1614, 3
  %1616 = sub nsw i64 64, %1614
  %1617 = lshr i64 %1612, %1616
  %1618 = and i64 %1613, 7
  store i64 %1617, ptr %1518, align 1, !tbaa !14
  %1619 = getelementptr inbounds nuw i8, ptr %1518, i64 %1615
  %1620 = add nsw i64 %1444, -14
  %1621 = icmp sgt i64 %1444, 14
  br i1 %1621, label %1443, label %.loopexit30, !llvm.loop !78

1622:                                             ; preds = %302
  %1623 = srem i32 %29, 8
  %1624 = icmp sgt i32 %1623, 0
  br i1 %1624, label %1625, label %1693

1625:                                             ; preds = %1622
  %1626 = xor i32 %29, -2147483648
  %1627 = add nsw i32 %1623, -1
  %1628 = icmp ugt i32 %1626, %1627
  br i1 %1628, label %1629, label %.loopexit41, !prof !76, !nosanitize !46

1629:                                             ; preds = %1625
  %1630 = and i32 %1623, 1
  %1631 = icmp eq i32 %1627, 0
  br i1 %1631, label %.thread28, label %1632

1632:                                             ; preds = %1629
  %1633 = and i32 %1623, 2147483646
  br label %1634

1634:                                             ; preds = %1634, %1632
  %1635 = phi i32 [ %29, %1632 ], [ %1651, %1634 ]
  %1636 = phi i64 [ 0, %1632 ], [ %1661, %1634 ]
  %1637 = phi i64 [ 0, %1632 ], [ %1662, %1634 ]
  %1638 = phi i32 [ 0, %1632 ], [ %1663, %1634 ]
  %1639 = add i32 %1635, -1
  %1640 = sext i32 %1639 to i64
  %1641 = getelementptr inbounds i8, ptr %2, i64 %1640
  %1642 = load i8, ptr %1641, align 1, !tbaa !5
  %1643 = zext i8 %1642 to i64
  %1644 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1643
  %1645 = load i64, ptr %1644, align 8, !tbaa !14
  %1646 = and i64 %1645, 255
  %1647 = lshr i64 %1636, %1646
  %1648 = and i64 %1645, -256
  %1649 = or i64 %1647, %1648
  %1650 = add i64 %1645, %1637
  %1651 = add i32 %1635, -2
  %1652 = sext i32 %1651 to i64
  %1653 = getelementptr inbounds i8, ptr %2, i64 %1652
  %1654 = load i8, ptr %1653, align 1, !tbaa !5
  %1655 = zext i8 %1654 to i64
  %1656 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1655
  %1657 = load i64, ptr %1656, align 8, !tbaa !14
  %1658 = and i64 %1657, 255
  %1659 = lshr i64 %1649, %1658
  %1660 = and i64 %1657, -256
  %1661 = or i64 %1659, %1660
  %1662 = add i64 %1650, %1657
  %1663 = add i32 %1638, 2
  %1664 = icmp eq i32 %1663, %1633
  br i1 %1664, label %1665, label %1634, !llvm.loop !77

.loopexit41:                                      ; preds = %1939, %1936, %1933, %1930, %1927, %1924, %1836, %1721, %1718, %1715, %1712, %1709, %1706, %1703, %1700, %1625
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

1665:                                             ; preds = %1634
  %1666 = sub i32 %29, %1633
  %1667 = icmp eq i32 %1630, 0
  br i1 %1667, label %1683, label %.thread28

.thread28:                                        ; preds = %1629, %1665
  %1668 = phi i64 [ %1662, %1665 ], [ 0, %1629 ]
  %1669 = phi i64 [ %1661, %1665 ], [ 0, %1629 ]
  %1670 = phi i32 [ %1666, %1665 ], [ %29, %1629 ]
  %1671 = add i32 %1670, -1
  %1672 = sext i32 %1671 to i64
  %1673 = getelementptr inbounds i8, ptr %2, i64 %1672
  %1674 = load i8, ptr %1673, align 1, !tbaa !5
  %1675 = zext i8 %1674 to i64
  %1676 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1675
  %1677 = load i64, ptr %1676, align 8, !tbaa !14
  %1678 = and i64 %1677, 255
  %1679 = lshr i64 %1669, %1678
  %1680 = and i64 %1677, -256
  %1681 = or i64 %1679, %1680
  %1682 = add i64 %1677, %1668
  br label %1683

1683:                                             ; preds = %.thread28, %1665
  %1684 = phi i64 [ %1661, %1665 ], [ %1681, %.thread28 ]
  %1685 = phi i64 [ %1662, %1665 ], [ %1682, %.thread28 ]
  %1686 = sub nsw i32 %29, %1623
  %1687 = and i64 %1685, 255
  %1688 = lshr i64 %1687, 3
  %1689 = sub nsw i64 64, %1687
  %1690 = lshr i64 %1684, %1689
  %1691 = and i64 %1685, 7
  store i64 %1690, ptr %0, align 1, !tbaa !14
  %1692 = getelementptr inbounds nuw i8, ptr %0, i64 %1688
  br label %1693

1693:                                             ; preds = %1683, %1622
  %1694 = phi i64 [ %1691, %1683 ], [ 0, %1622 ]
  %1695 = phi ptr [ %1692, %1683 ], [ %0, %1622 ]
  %1696 = phi i64 [ %1684, %1683 ], [ 0, %1622 ]
  %1697 = phi i32 [ %1686, %1683 ], [ %29, %1622 ]
  %1698 = and i32 %1697, 15
  %1699 = icmp eq i32 %1698, 0
  br i1 %1699, label %1820, label %1700

1700:                                             ; preds = %1693
  %1701 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1697, i32 -1)
  %1702 = extractvalue { i32, i1 } %1701, 1, !nosanitize !46
  br i1 %1702, label %.loopexit41, label %1703, !prof !49, !nosanitize !46

1703:                                             ; preds = %1700
  %1704 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1697, i32 -2)
  %1705 = extractvalue { i32, i1 } %1704, 1, !nosanitize !46
  br i1 %1705, label %.loopexit41, label %1706, !prof !49, !nosanitize !46

1706:                                             ; preds = %1703
  %1707 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1697, i32 -3)
  %1708 = extractvalue { i32, i1 } %1707, 1, !nosanitize !46
  br i1 %1708, label %.loopexit41, label %1709, !prof !49, !nosanitize !46

1709:                                             ; preds = %1706
  %1710 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1697, i32 -4)
  %1711 = extractvalue { i32, i1 } %1710, 1, !nosanitize !46
  br i1 %1711, label %.loopexit41, label %1712, !prof !49, !nosanitize !46

1712:                                             ; preds = %1709
  %1713 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1697, i32 -5)
  %1714 = extractvalue { i32, i1 } %1713, 1, !nosanitize !46
  br i1 %1714, label %.loopexit41, label %1715, !prof !49, !nosanitize !46

1715:                                             ; preds = %1712
  %1716 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1697, i32 -6)
  %1717 = extractvalue { i32, i1 } %1716, 1, !nosanitize !46
  br i1 %1717, label %.loopexit41, label %1718, !prof !49, !nosanitize !46

1718:                                             ; preds = %1715
  %1719 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1697, i32 -7)
  %1720 = extractvalue { i32, i1 } %1719, 1, !nosanitize !46
  br i1 %1720, label %.loopexit41, label %1721, !prof !49, !nosanitize !46

1721:                                             ; preds = %1718
  %1722 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1697, i32 -8)
  %1723 = extractvalue { i32, i1 } %1722, 1, !nosanitize !46
  br i1 %1723, label %.loopexit41, label %1724, !prof !49, !nosanitize !46

1724:                                             ; preds = %1721
  %1725 = extractvalue { i32, i1 } %1719, 0, !nosanitize !46
  %1726 = sext i32 %1725 to i64
  %1727 = getelementptr inbounds i8, ptr %2, i64 %1726
  %1728 = load i8, ptr %1727, align 1, !tbaa !5
  %1729 = zext i8 %1728 to i64
  %1730 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1729
  %1731 = load i64, ptr %1730, align 8, !tbaa !14
  %1732 = extractvalue { i32, i1 } %1716, 0, !nosanitize !46
  %1733 = sext i32 %1732 to i64
  %1734 = getelementptr inbounds i8, ptr %2, i64 %1733
  %1735 = load i8, ptr %1734, align 1, !tbaa !5
  %1736 = zext i8 %1735 to i64
  %1737 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1736
  %1738 = load i64, ptr %1737, align 8, !tbaa !14
  %1739 = extractvalue { i32, i1 } %1713, 0, !nosanitize !46
  %1740 = sext i32 %1739 to i64
  %1741 = getelementptr inbounds i8, ptr %2, i64 %1740
  %1742 = load i8, ptr %1741, align 1, !tbaa !5
  %1743 = zext i8 %1742 to i64
  %1744 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1743
  %1745 = load i64, ptr %1744, align 8, !tbaa !14
  %1746 = extractvalue { i32, i1 } %1710, 0, !nosanitize !46
  %1747 = sext i32 %1746 to i64
  %1748 = getelementptr inbounds i8, ptr %2, i64 %1747
  %1749 = load i8, ptr %1748, align 1, !tbaa !5
  %1750 = zext i8 %1749 to i64
  %1751 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1750
  %1752 = load i64, ptr %1751, align 8, !tbaa !14
  %1753 = extractvalue { i32, i1 } %1707, 0, !nosanitize !46
  %1754 = sext i32 %1753 to i64
  %1755 = getelementptr inbounds i8, ptr %2, i64 %1754
  %1756 = load i8, ptr %1755, align 1, !tbaa !5
  %1757 = zext i8 %1756 to i64
  %1758 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1757
  %1759 = load i64, ptr %1758, align 8, !tbaa !14
  %1760 = extractvalue { i32, i1 } %1704, 0, !nosanitize !46
  %1761 = sext i32 %1760 to i64
  %1762 = getelementptr inbounds i8, ptr %2, i64 %1761
  %1763 = load i8, ptr %1762, align 1, !tbaa !5
  %1764 = zext i8 %1763 to i64
  %1765 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1764
  %1766 = load i64, ptr %1765, align 8, !tbaa !14
  %1767 = extractvalue { i32, i1 } %1701, 0, !nosanitize !46
  %1768 = sext i32 %1767 to i64
  %1769 = getelementptr inbounds i8, ptr %2, i64 %1768
  %1770 = load i8, ptr %1769, align 1, !tbaa !5
  %1771 = zext i8 %1770 to i64
  %1772 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1771
  %1773 = load i64, ptr %1772, align 8, !tbaa !14
  %1774 = and i64 %1773, 255
  %1775 = lshr i64 %1696, %1774
  %1776 = or i64 %1775, %1773
  %1777 = and i64 %1766, 255
  %1778 = lshr i64 %1776, %1777
  %1779 = or i64 %1778, %1766
  %1780 = and i64 %1759, 255
  %1781 = lshr i64 %1779, %1780
  %1782 = or i64 %1781, %1759
  %1783 = and i64 %1752, 255
  %1784 = lshr i64 %1782, %1783
  %1785 = or i64 %1784, %1752
  %1786 = and i64 %1745, 255
  %1787 = lshr i64 %1785, %1786
  %1788 = or i64 %1787, %1745
  %1789 = and i64 %1738, 255
  %1790 = lshr i64 %1788, %1789
  %1791 = or i64 %1790, %1738
  %1792 = and i64 %1731, 255
  %1793 = lshr i64 %1791, %1792
  %1794 = or i64 %1793, %1731
  %1795 = extractvalue { i32, i1 } %1722, 0, !nosanitize !46
  %1796 = sext i32 %1795 to i64
  %1797 = getelementptr inbounds i8, ptr %2, i64 %1796
  %1798 = load i8, ptr %1797, align 1, !tbaa !5
  %1799 = zext i8 %1798 to i64
  %1800 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1799
  %1801 = load i64, ptr %1800, align 8, !tbaa !14
  %1802 = and i64 %1801, 255
  %1803 = lshr i64 %1794, %1802
  %1804 = and i64 %1801, -256
  %1805 = or i64 %1803, %1804
  %1806 = add i64 %1731, %1694
  %1807 = add i64 %1806, %1738
  %1808 = add i64 %1807, %1745
  %1809 = add i64 %1808, %1752
  %1810 = add i64 %1809, %1759
  %1811 = add i64 %1810, %1766
  %1812 = add i64 %1811, %1773
  %1813 = add i64 %1812, %1801
  %1814 = and i64 %1813, 255
  %1815 = lshr i64 %1814, 3
  %1816 = sub nsw i64 64, %1814
  %1817 = lshr i64 %1805, %1816
  %1818 = and i64 %1813, 7
  store i64 %1817, ptr %1695, align 1, !tbaa !14
  %1819 = getelementptr inbounds nuw i8, ptr %1695, i64 %1815
  br label %1820

1820:                                             ; preds = %1724, %1693
  %1821 = phi i64 [ %1694, %1693 ], [ %1818, %1724 ]
  %1822 = phi ptr [ %1695, %1693 ], [ %1819, %1724 ]
  %1823 = phi i64 [ %1696, %1693 ], [ %1805, %1724 ]
  %1824 = phi i32 [ %1697, %1693 ], [ %1795, %1724 ]
  %1825 = getelementptr i8, ptr %2, i64 -16
  %1826 = icmp sgt i32 %1824, 0
  br i1 %1826, label %1827, label %.loopexit30

1827:                                             ; preds = %1820
  %1828 = zext nneg i32 %1824 to i64
  %1829 = getelementptr i8, ptr %2, i64 -1
  %1830 = getelementptr i8, ptr %2, i64 -2
  %1831 = getelementptr i8, ptr %2, i64 -3
  %1832 = getelementptr i8, ptr %2, i64 -4
  %1833 = getelementptr i8, ptr %2, i64 -5
  %1834 = getelementptr i8, ptr %2, i64 -6
  %1835 = getelementptr i8, ptr %2, i64 -7
  br label %1836

1836:                                             ; preds = %1942, %1827
  %1837 = phi i64 [ %1828, %1827 ], [ %2036, %1942 ]
  %1838 = phi i64 [ %1823, %1827 ], [ %2028, %1942 ]
  %1839 = phi ptr [ %1822, %1827 ], [ %2035, %1942 ]
  %1840 = phi i64 [ %1821, %1827 ], [ %2034, %1942 ]
  %1841 = getelementptr i8, ptr %1829, i64 %1837
  %1842 = load i8, ptr %1841, align 1, !tbaa !5
  %1843 = zext i8 %1842 to i64
  %1844 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1843
  %1845 = load i64, ptr %1844, align 8, !tbaa !14
  %1846 = and i64 %1845, 255
  %1847 = lshr i64 %1838, %1846
  %1848 = or i64 %1847, %1845
  %1849 = add i64 %1845, %1840
  %1850 = getelementptr i8, ptr %1830, i64 %1837
  %1851 = load i8, ptr %1850, align 1, !tbaa !5
  %1852 = zext i8 %1851 to i64
  %1853 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1852
  %1854 = load i64, ptr %1853, align 8, !tbaa !14
  %1855 = and i64 %1854, 255
  %1856 = lshr i64 %1848, %1855
  %1857 = or i64 %1856, %1854
  %1858 = add i64 %1849, %1854
  %1859 = getelementptr i8, ptr %1831, i64 %1837
  %1860 = load i8, ptr %1859, align 1, !tbaa !5
  %1861 = zext i8 %1860 to i64
  %1862 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1861
  %1863 = load i64, ptr %1862, align 8, !tbaa !14
  %1864 = and i64 %1863, 255
  %1865 = lshr i64 %1857, %1864
  %1866 = or i64 %1865, %1863
  %1867 = add i64 %1858, %1863
  %1868 = getelementptr i8, ptr %1832, i64 %1837
  %1869 = load i8, ptr %1868, align 1, !tbaa !5
  %1870 = zext i8 %1869 to i64
  %1871 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1870
  %1872 = load i64, ptr %1871, align 8, !tbaa !14
  %1873 = and i64 %1872, 255
  %1874 = lshr i64 %1866, %1873
  %1875 = or i64 %1874, %1872
  %1876 = add i64 %1867, %1872
  %1877 = getelementptr i8, ptr %1833, i64 %1837
  %1878 = load i8, ptr %1877, align 1, !tbaa !5
  %1879 = zext i8 %1878 to i64
  %1880 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1879
  %1881 = load i64, ptr %1880, align 8, !tbaa !14
  %1882 = and i64 %1881, 255
  %1883 = lshr i64 %1875, %1882
  %1884 = or i64 %1883, %1881
  %1885 = add i64 %1876, %1881
  %1886 = getelementptr i8, ptr %1834, i64 %1837
  %1887 = load i8, ptr %1886, align 1, !tbaa !5
  %1888 = zext i8 %1887 to i64
  %1889 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1888
  %1890 = load i64, ptr %1889, align 8, !tbaa !14
  %1891 = and i64 %1890, 255
  %1892 = lshr i64 %1884, %1891
  %1893 = or i64 %1892, %1890
  %1894 = add i64 %1885, %1890
  %1895 = getelementptr i8, ptr %1835, i64 %1837
  %1896 = load i8, ptr %1895, align 1, !tbaa !5
  %1897 = zext i8 %1896 to i64
  %1898 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1897
  %1899 = load i64, ptr %1898, align 8, !tbaa !14
  %1900 = and i64 %1899, 255
  %1901 = lshr i64 %1893, %1900
  %1902 = or i64 %1901, %1899
  %1903 = add i64 %1894, %1899
  %1904 = add nsw i64 %1837, -8
  %1905 = getelementptr inbounds i8, ptr %2, i64 %1904
  %1906 = load i8, ptr %1905, align 1, !tbaa !5
  %1907 = zext i8 %1906 to i64
  %1908 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1907
  %1909 = load i64, ptr %1908, align 8, !tbaa !14
  %1910 = and i64 %1909, 255
  %1911 = lshr i64 %1902, %1910
  %1912 = and i64 %1909, -256
  %1913 = or i64 %1911, %1912
  %1914 = add i64 %1903, %1909
  %1915 = and i64 %1914, 255
  %1916 = lshr i64 %1915, 3
  %1917 = sub nsw i64 64, %1915
  %1918 = lshr i64 %1913, %1917
  %1919 = and i64 %1914, 7
  store i64 %1918, ptr %1839, align 1, !tbaa !14
  %1920 = getelementptr inbounds nuw i8, ptr %1839, i64 %1916
  %1921 = trunc nsw i64 %1904 to i32
  %1922 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1921, i32 -1)
  %1923 = extractvalue { i32, i1 } %1922, 1, !nosanitize !46
  br i1 %1923, label %.loopexit41, label %1924, !prof !49, !nosanitize !46

1924:                                             ; preds = %1836
  %1925 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1921, i32 -2)
  %1926 = extractvalue { i32, i1 } %1925, 1, !nosanitize !46
  br i1 %1926, label %.loopexit41, label %1927, !prof !49, !nosanitize !46

1927:                                             ; preds = %1924
  %1928 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1921, i32 -3)
  %1929 = extractvalue { i32, i1 } %1928, 1, !nosanitize !46
  br i1 %1929, label %.loopexit41, label %1930, !prof !49, !nosanitize !46

1930:                                             ; preds = %1927
  %1931 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1921, i32 -4)
  %1932 = extractvalue { i32, i1 } %1931, 1, !nosanitize !46
  br i1 %1932, label %.loopexit41, label %1933, !prof !49, !nosanitize !46

1933:                                             ; preds = %1930
  %1934 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1921, i32 -5)
  %1935 = extractvalue { i32, i1 } %1934, 1, !nosanitize !46
  br i1 %1935, label %.loopexit41, label %1936, !prof !49, !nosanitize !46

1936:                                             ; preds = %1933
  %1937 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1921, i32 -6)
  %1938 = extractvalue { i32, i1 } %1937, 1, !nosanitize !46
  br i1 %1938, label %.loopexit41, label %1939, !prof !49, !nosanitize !46

1939:                                             ; preds = %1936
  %1940 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1921, i32 -7)
  %1941 = extractvalue { i32, i1 } %1940, 1, !nosanitize !46
  br i1 %1941, label %.loopexit41, label %1942, !prof !49, !nosanitize !46

1942:                                             ; preds = %1939
  %1943 = extractvalue { i32, i1 } %1937, 0, !nosanitize !46
  %1944 = sext i32 %1943 to i64
  %1945 = getelementptr inbounds i8, ptr %2, i64 %1944
  %1946 = load i8, ptr %1945, align 1, !tbaa !5
  %1947 = zext i8 %1946 to i64
  %1948 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1947
  %1949 = load i64, ptr %1948, align 8, !tbaa !14
  %1950 = extractvalue { i32, i1 } %1934, 0, !nosanitize !46
  %1951 = sext i32 %1950 to i64
  %1952 = getelementptr inbounds i8, ptr %2, i64 %1951
  %1953 = load i8, ptr %1952, align 1, !tbaa !5
  %1954 = zext i8 %1953 to i64
  %1955 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1954
  %1956 = load i64, ptr %1955, align 8, !tbaa !14
  %1957 = extractvalue { i32, i1 } %1931, 0, !nosanitize !46
  %1958 = sext i32 %1957 to i64
  %1959 = getelementptr inbounds i8, ptr %2, i64 %1958
  %1960 = load i8, ptr %1959, align 1, !tbaa !5
  %1961 = zext i8 %1960 to i64
  %1962 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1961
  %1963 = load i64, ptr %1962, align 8, !tbaa !14
  %1964 = extractvalue { i32, i1 } %1928, 0, !nosanitize !46
  %1965 = sext i32 %1964 to i64
  %1966 = getelementptr inbounds i8, ptr %2, i64 %1965
  %1967 = load i8, ptr %1966, align 1, !tbaa !5
  %1968 = zext i8 %1967 to i64
  %1969 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1968
  %1970 = load i64, ptr %1969, align 8, !tbaa !14
  %1971 = extractvalue { i32, i1 } %1925, 0, !nosanitize !46
  %1972 = sext i32 %1971 to i64
  %1973 = getelementptr inbounds i8, ptr %2, i64 %1972
  %1974 = load i8, ptr %1973, align 1, !tbaa !5
  %1975 = zext i8 %1974 to i64
  %1976 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1975
  %1977 = load i64, ptr %1976, align 8, !tbaa !14
  %1978 = extractvalue { i32, i1 } %1922, 0, !nosanitize !46
  %1979 = sext i32 %1978 to i64
  %1980 = getelementptr inbounds i8, ptr %2, i64 %1979
  %1981 = load i8, ptr %1980, align 1, !tbaa !5
  %1982 = zext i8 %1981 to i64
  %1983 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1982
  %1984 = load i64, ptr %1983, align 8, !tbaa !14
  %1985 = and i64 %1977, 255
  %1986 = lshr i64 %1984, %1985
  %1987 = or i64 %1986, %1977
  %1988 = and i64 %1970, 255
  %1989 = lshr i64 %1987, %1988
  %1990 = or i64 %1989, %1970
  %1991 = and i64 %1963, 255
  %1992 = lshr i64 %1990, %1991
  %1993 = or i64 %1992, %1963
  %1994 = and i64 %1956, 255
  %1995 = lshr i64 %1993, %1994
  %1996 = or i64 %1995, %1956
  %1997 = and i64 %1949, 255
  %1998 = lshr i64 %1996, %1997
  %1999 = or i64 %1998, %1949
  %2000 = extractvalue { i32, i1 } %1940, 0, !nosanitize !46
  %2001 = sext i32 %2000 to i64
  %2002 = getelementptr inbounds i8, ptr %2, i64 %2001
  %2003 = load i8, ptr %2002, align 1, !tbaa !5
  %2004 = zext i8 %2003 to i64
  %2005 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2004
  %2006 = load i64, ptr %2005, align 8, !tbaa !14
  %2007 = and i64 %2006, 255
  %2008 = lshr i64 %1999, %2007
  %2009 = or i64 %2008, %2006
  %2010 = getelementptr i8, ptr %1825, i64 %1837
  %2011 = load i8, ptr %2010, align 1, !tbaa !5
  %2012 = zext i8 %2011 to i64
  %2013 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2012
  %2014 = load i64, ptr %2013, align 8, !tbaa !14
  %2015 = and i64 %2014, 255
  %2016 = lshr i64 %2009, %2015
  %2017 = and i64 %2014, -256
  %2018 = add i64 %1956, %1949
  %2019 = add i64 %2018, %1963
  %2020 = add i64 %2019, %1970
  %2021 = add i64 %2020, %1977
  %2022 = add i64 %2021, %1984
  %2023 = add i64 %2022, %2006
  %2024 = add i64 %2023, %2014
  %2025 = and i64 %2024, 255
  %2026 = lshr i64 %1913, %2025
  %2027 = or i64 %2026, %2017
  %2028 = or i64 %2027, %2016
  %2029 = add i64 %2024, %1919
  %2030 = and i64 %2029, 255
  %2031 = lshr i64 %2030, 3
  %2032 = sub nsw i64 64, %2030
  %2033 = lshr i64 %2028, %2032
  %2034 = and i64 %2029, 7
  store i64 %2033, ptr %1920, align 1, !tbaa !14
  %2035 = getelementptr inbounds nuw i8, ptr %1920, i64 %2031
  %2036 = add nsw i64 %1837, -16
  %2037 = icmp sgt i64 %1837, 16
  br i1 %2037, label %1836, label %.loopexit30, !llvm.loop !78

2038:                                             ; preds = %302
  %2039 = srem i32 %29, 9
  %2040 = icmp sgt i32 %2039, 0
  br i1 %2040, label %2041, label %2109

2041:                                             ; preds = %2038
  %2042 = xor i32 %29, -2147483648
  %2043 = add nsw i32 %2039, -1
  %2044 = icmp ugt i32 %2042, %2043
  br i1 %2044, label %2045, label %.loopexit31, !prof !76, !nosanitize !46

2045:                                             ; preds = %2041
  %2046 = and i32 %2039, 1
  %2047 = icmp eq i32 %2043, 0
  br i1 %2047, label %.thread29, label %2048

2048:                                             ; preds = %2045
  %2049 = and i32 %2039, 2147483646
  br label %2050

2050:                                             ; preds = %2050, %2048
  %2051 = phi i32 [ %29, %2048 ], [ %2067, %2050 ]
  %2052 = phi i64 [ 0, %2048 ], [ %2077, %2050 ]
  %2053 = phi i64 [ 0, %2048 ], [ %2078, %2050 ]
  %2054 = phi i32 [ 0, %2048 ], [ %2079, %2050 ]
  %2055 = add i32 %2051, -1
  %2056 = sext i32 %2055 to i64
  %2057 = getelementptr inbounds i8, ptr %2, i64 %2056
  %2058 = load i8, ptr %2057, align 1, !tbaa !5
  %2059 = zext i8 %2058 to i64
  %2060 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2059
  %2061 = load i64, ptr %2060, align 8, !tbaa !14
  %2062 = and i64 %2061, 255
  %2063 = lshr i64 %2052, %2062
  %2064 = and i64 %2061, -256
  %2065 = or i64 %2063, %2064
  %2066 = add i64 %2061, %2053
  %2067 = add i32 %2051, -2
  %2068 = sext i32 %2067 to i64
  %2069 = getelementptr inbounds i8, ptr %2, i64 %2068
  %2070 = load i8, ptr %2069, align 1, !tbaa !5
  %2071 = zext i8 %2070 to i64
  %2072 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2071
  %2073 = load i64, ptr %2072, align 8, !tbaa !14
  %2074 = and i64 %2073, 255
  %2075 = lshr i64 %2065, %2074
  %2076 = and i64 %2073, -256
  %2077 = or i64 %2075, %2076
  %2078 = add i64 %2066, %2073
  %2079 = add i32 %2054, 2
  %2080 = icmp eq i32 %2079, %2049
  br i1 %2080, label %2081, label %2050, !llvm.loop !77

.loopexit31:                                      ; preds = %2380, %2377, %2374, %2371, %2368, %2365, %2362, %2266, %2140, %2137, %2134, %2131, %2128, %2125, %2122, %2119, %2116, %2041
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

2081:                                             ; preds = %2050
  %2082 = sub i32 %29, %2049
  %2083 = icmp eq i32 %2046, 0
  br i1 %2083, label %2099, label %.thread29

.thread29:                                        ; preds = %2045, %2081
  %2084 = phi i64 [ %2078, %2081 ], [ 0, %2045 ]
  %2085 = phi i64 [ %2077, %2081 ], [ 0, %2045 ]
  %2086 = phi i32 [ %2082, %2081 ], [ %29, %2045 ]
  %2087 = add i32 %2086, -1
  %2088 = sext i32 %2087 to i64
  %2089 = getelementptr inbounds i8, ptr %2, i64 %2088
  %2090 = load i8, ptr %2089, align 1, !tbaa !5
  %2091 = zext i8 %2090 to i64
  %2092 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2091
  %2093 = load i64, ptr %2092, align 8, !tbaa !14
  %2094 = and i64 %2093, 255
  %2095 = lshr i64 %2085, %2094
  %2096 = and i64 %2093, -256
  %2097 = or i64 %2095, %2096
  %2098 = add i64 %2093, %2084
  br label %2099

2099:                                             ; preds = %.thread29, %2081
  %2100 = phi i64 [ %2077, %2081 ], [ %2097, %.thread29 ]
  %2101 = phi i64 [ %2078, %2081 ], [ %2098, %.thread29 ]
  %2102 = sub nsw i32 %29, %2039
  %2103 = and i64 %2101, 255
  %2104 = lshr i64 %2103, 3
  %2105 = sub nsw i64 64, %2103
  %2106 = lshr i64 %2100, %2105
  %2107 = and i64 %2101, 7
  store i64 %2106, ptr %0, align 1, !tbaa !14
  %2108 = getelementptr inbounds nuw i8, ptr %0, i64 %2104
  br label %2109

2109:                                             ; preds = %2099, %2038
  %2110 = phi i64 [ %2107, %2099 ], [ 0, %2038 ]
  %2111 = phi ptr [ %2108, %2099 ], [ %0, %2038 ]
  %2112 = phi i64 [ %2100, %2099 ], [ 0, %2038 ]
  %2113 = phi i32 [ %2102, %2099 ], [ %29, %2038 ]
  %2114 = srem i32 %2113, 18
  %2115 = icmp eq i32 %2114, 0
  br i1 %2115, label %2249, label %2116

2116:                                             ; preds = %2109
  %2117 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2113, i32 -1)
  %2118 = extractvalue { i32, i1 } %2117, 1, !nosanitize !46
  br i1 %2118, label %.loopexit31, label %2119, !prof !49, !nosanitize !46

2119:                                             ; preds = %2116
  %2120 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2113, i32 -2)
  %2121 = extractvalue { i32, i1 } %2120, 1, !nosanitize !46
  br i1 %2121, label %.loopexit31, label %2122, !prof !49, !nosanitize !46

2122:                                             ; preds = %2119
  %2123 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2113, i32 -3)
  %2124 = extractvalue { i32, i1 } %2123, 1, !nosanitize !46
  br i1 %2124, label %.loopexit31, label %2125, !prof !49, !nosanitize !46

2125:                                             ; preds = %2122
  %2126 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2113, i32 -4)
  %2127 = extractvalue { i32, i1 } %2126, 1, !nosanitize !46
  br i1 %2127, label %.loopexit31, label %2128, !prof !49, !nosanitize !46

2128:                                             ; preds = %2125
  %2129 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2113, i32 -5)
  %2130 = extractvalue { i32, i1 } %2129, 1, !nosanitize !46
  br i1 %2130, label %.loopexit31, label %2131, !prof !49, !nosanitize !46

2131:                                             ; preds = %2128
  %2132 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2113, i32 -6)
  %2133 = extractvalue { i32, i1 } %2132, 1, !nosanitize !46
  br i1 %2133, label %.loopexit31, label %2134, !prof !49, !nosanitize !46

2134:                                             ; preds = %2131
  %2135 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2113, i32 -7)
  %2136 = extractvalue { i32, i1 } %2135, 1, !nosanitize !46
  br i1 %2136, label %.loopexit31, label %2137, !prof !49, !nosanitize !46

2137:                                             ; preds = %2134
  %2138 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2113, i32 -8)
  %2139 = extractvalue { i32, i1 } %2138, 1, !nosanitize !46
  br i1 %2139, label %.loopexit31, label %2140, !prof !49, !nosanitize !46

2140:                                             ; preds = %2137
  %2141 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2113, i32 -9)
  %2142 = extractvalue { i32, i1 } %2141, 1, !nosanitize !46
  br i1 %2142, label %.loopexit31, label %2143, !prof !49, !nosanitize !46

2143:                                             ; preds = %2140
  %2144 = extractvalue { i32, i1 } %2138, 0, !nosanitize !46
  %2145 = sext i32 %2144 to i64
  %2146 = getelementptr inbounds i8, ptr %2, i64 %2145
  %2147 = load i8, ptr %2146, align 1, !tbaa !5
  %2148 = zext i8 %2147 to i64
  %2149 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2148
  %2150 = load i64, ptr %2149, align 8, !tbaa !14
  %2151 = extractvalue { i32, i1 } %2135, 0, !nosanitize !46
  %2152 = sext i32 %2151 to i64
  %2153 = getelementptr inbounds i8, ptr %2, i64 %2152
  %2154 = load i8, ptr %2153, align 1, !tbaa !5
  %2155 = zext i8 %2154 to i64
  %2156 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2155
  %2157 = load i64, ptr %2156, align 8, !tbaa !14
  %2158 = extractvalue { i32, i1 } %2132, 0, !nosanitize !46
  %2159 = sext i32 %2158 to i64
  %2160 = getelementptr inbounds i8, ptr %2, i64 %2159
  %2161 = load i8, ptr %2160, align 1, !tbaa !5
  %2162 = zext i8 %2161 to i64
  %2163 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2162
  %2164 = load i64, ptr %2163, align 8, !tbaa !14
  %2165 = extractvalue { i32, i1 } %2129, 0, !nosanitize !46
  %2166 = sext i32 %2165 to i64
  %2167 = getelementptr inbounds i8, ptr %2, i64 %2166
  %2168 = load i8, ptr %2167, align 1, !tbaa !5
  %2169 = zext i8 %2168 to i64
  %2170 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2169
  %2171 = load i64, ptr %2170, align 8, !tbaa !14
  %2172 = extractvalue { i32, i1 } %2126, 0, !nosanitize !46
  %2173 = sext i32 %2172 to i64
  %2174 = getelementptr inbounds i8, ptr %2, i64 %2173
  %2175 = load i8, ptr %2174, align 1, !tbaa !5
  %2176 = zext i8 %2175 to i64
  %2177 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2176
  %2178 = load i64, ptr %2177, align 8, !tbaa !14
  %2179 = extractvalue { i32, i1 } %2123, 0, !nosanitize !46
  %2180 = sext i32 %2179 to i64
  %2181 = getelementptr inbounds i8, ptr %2, i64 %2180
  %2182 = load i8, ptr %2181, align 1, !tbaa !5
  %2183 = zext i8 %2182 to i64
  %2184 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2183
  %2185 = load i64, ptr %2184, align 8, !tbaa !14
  %2186 = extractvalue { i32, i1 } %2120, 0, !nosanitize !46
  %2187 = sext i32 %2186 to i64
  %2188 = getelementptr inbounds i8, ptr %2, i64 %2187
  %2189 = load i8, ptr %2188, align 1, !tbaa !5
  %2190 = zext i8 %2189 to i64
  %2191 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2190
  %2192 = load i64, ptr %2191, align 8, !tbaa !14
  %2193 = extractvalue { i32, i1 } %2117, 0, !nosanitize !46
  %2194 = sext i32 %2193 to i64
  %2195 = getelementptr inbounds i8, ptr %2, i64 %2194
  %2196 = load i8, ptr %2195, align 1, !tbaa !5
  %2197 = zext i8 %2196 to i64
  %2198 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2197
  %2199 = load i64, ptr %2198, align 8, !tbaa !14
  %2200 = and i64 %2199, 255
  %2201 = lshr i64 %2112, %2200
  %2202 = or i64 %2201, %2199
  %2203 = and i64 %2192, 255
  %2204 = lshr i64 %2202, %2203
  %2205 = or i64 %2204, %2192
  %2206 = and i64 %2185, 255
  %2207 = lshr i64 %2205, %2206
  %2208 = or i64 %2207, %2185
  %2209 = and i64 %2178, 255
  %2210 = lshr i64 %2208, %2209
  %2211 = or i64 %2210, %2178
  %2212 = and i64 %2171, 255
  %2213 = lshr i64 %2211, %2212
  %2214 = or i64 %2213, %2171
  %2215 = and i64 %2164, 255
  %2216 = lshr i64 %2214, %2215
  %2217 = or i64 %2216, %2164
  %2218 = and i64 %2157, 255
  %2219 = lshr i64 %2217, %2218
  %2220 = or i64 %2219, %2157
  %2221 = and i64 %2150, 255
  %2222 = lshr i64 %2220, %2221
  %2223 = or i64 %2222, %2150
  %2224 = extractvalue { i32, i1 } %2141, 0, !nosanitize !46
  %2225 = sext i32 %2224 to i64
  %2226 = getelementptr inbounds i8, ptr %2, i64 %2225
  %2227 = load i8, ptr %2226, align 1, !tbaa !5
  %2228 = zext i8 %2227 to i64
  %2229 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2228
  %2230 = load i64, ptr %2229, align 8, !tbaa !14
  %2231 = and i64 %2230, 255
  %2232 = lshr i64 %2223, %2231
  %2233 = or i64 %2232, %2230
  %2234 = add i64 %2150, %2110
  %2235 = add i64 %2234, %2157
  %2236 = add i64 %2235, %2164
  %2237 = add i64 %2236, %2171
  %2238 = add i64 %2237, %2178
  %2239 = add i64 %2238, %2185
  %2240 = add i64 %2239, %2192
  %2241 = add i64 %2240, %2199
  %2242 = add i64 %2241, %2230
  %2243 = and i64 %2242, 255
  %2244 = lshr i64 %2243, 3
  %2245 = sub nsw i64 64, %2243
  %2246 = lshr i64 %2233, %2245
  %2247 = and i64 %2242, 7
  store i64 %2246, ptr %2111, align 1, !tbaa !14
  %2248 = getelementptr inbounds nuw i8, ptr %2111, i64 %2244
  br label %2249

2249:                                             ; preds = %2143, %2109
  %2250 = phi i64 [ %2110, %2109 ], [ %2247, %2143 ]
  %2251 = phi ptr [ %2111, %2109 ], [ %2248, %2143 ]
  %2252 = phi i64 [ %2112, %2109 ], [ %2233, %2143 ]
  %2253 = phi i32 [ %2113, %2109 ], [ %2224, %2143 ]
  %2254 = getelementptr i8, ptr %2, i64 -18
  %2255 = icmp sgt i32 %2253, 0
  br i1 %2255, label %2256, label %.loopexit30

2256:                                             ; preds = %2249
  %2257 = zext nneg i32 %2253 to i64
  %2258 = getelementptr i8, ptr %2, i64 -1
  %2259 = getelementptr i8, ptr %2, i64 -2
  %2260 = getelementptr i8, ptr %2, i64 -3
  %2261 = getelementptr i8, ptr %2, i64 -4
  %2262 = getelementptr i8, ptr %2, i64 -5
  %2263 = getelementptr i8, ptr %2, i64 -6
  %2264 = getelementptr i8, ptr %2, i64 -7
  %2265 = getelementptr i8, ptr %2, i64 -8
  br label %2266

2266:                                             ; preds = %2383, %2256
  %2267 = phi i64 [ %2257, %2256 ], [ %2487, %2383 ]
  %2268 = phi i64 [ %2252, %2256 ], [ %2479, %2383 ]
  %2269 = phi ptr [ %2251, %2256 ], [ %2486, %2383 ]
  %2270 = phi i64 [ %2250, %2256 ], [ %2485, %2383 ]
  %2271 = getelementptr i8, ptr %2258, i64 %2267
  %2272 = load i8, ptr %2271, align 1, !tbaa !5
  %2273 = zext i8 %2272 to i64
  %2274 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2273
  %2275 = load i64, ptr %2274, align 8, !tbaa !14
  %2276 = and i64 %2275, 255
  %2277 = lshr i64 %2268, %2276
  %2278 = or i64 %2277, %2275
  %2279 = add i64 %2275, %2270
  %2280 = getelementptr i8, ptr %2259, i64 %2267
  %2281 = load i8, ptr %2280, align 1, !tbaa !5
  %2282 = zext i8 %2281 to i64
  %2283 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2282
  %2284 = load i64, ptr %2283, align 8, !tbaa !14
  %2285 = and i64 %2284, 255
  %2286 = lshr i64 %2278, %2285
  %2287 = or i64 %2286, %2284
  %2288 = add i64 %2279, %2284
  %2289 = getelementptr i8, ptr %2260, i64 %2267
  %2290 = load i8, ptr %2289, align 1, !tbaa !5
  %2291 = zext i8 %2290 to i64
  %2292 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2291
  %2293 = load i64, ptr %2292, align 8, !tbaa !14
  %2294 = and i64 %2293, 255
  %2295 = lshr i64 %2287, %2294
  %2296 = or i64 %2295, %2293
  %2297 = add i64 %2288, %2293
  %2298 = getelementptr i8, ptr %2261, i64 %2267
  %2299 = load i8, ptr %2298, align 1, !tbaa !5
  %2300 = zext i8 %2299 to i64
  %2301 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2300
  %2302 = load i64, ptr %2301, align 8, !tbaa !14
  %2303 = and i64 %2302, 255
  %2304 = lshr i64 %2296, %2303
  %2305 = or i64 %2304, %2302
  %2306 = add i64 %2297, %2302
  %2307 = getelementptr i8, ptr %2262, i64 %2267
  %2308 = load i8, ptr %2307, align 1, !tbaa !5
  %2309 = zext i8 %2308 to i64
  %2310 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2309
  %2311 = load i64, ptr %2310, align 8, !tbaa !14
  %2312 = and i64 %2311, 255
  %2313 = lshr i64 %2305, %2312
  %2314 = or i64 %2313, %2311
  %2315 = add i64 %2306, %2311
  %2316 = getelementptr i8, ptr %2263, i64 %2267
  %2317 = load i8, ptr %2316, align 1, !tbaa !5
  %2318 = zext i8 %2317 to i64
  %2319 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2318
  %2320 = load i64, ptr %2319, align 8, !tbaa !14
  %2321 = and i64 %2320, 255
  %2322 = lshr i64 %2314, %2321
  %2323 = or i64 %2322, %2320
  %2324 = add i64 %2315, %2320
  %2325 = getelementptr i8, ptr %2264, i64 %2267
  %2326 = load i8, ptr %2325, align 1, !tbaa !5
  %2327 = zext i8 %2326 to i64
  %2328 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2327
  %2329 = load i64, ptr %2328, align 8, !tbaa !14
  %2330 = and i64 %2329, 255
  %2331 = lshr i64 %2323, %2330
  %2332 = or i64 %2331, %2329
  %2333 = add i64 %2324, %2329
  %2334 = getelementptr i8, ptr %2265, i64 %2267
  %2335 = load i8, ptr %2334, align 1, !tbaa !5
  %2336 = zext i8 %2335 to i64
  %2337 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2336
  %2338 = load i64, ptr %2337, align 8, !tbaa !14
  %2339 = and i64 %2338, 255
  %2340 = lshr i64 %2332, %2339
  %2341 = or i64 %2340, %2338
  %2342 = add i64 %2333, %2338
  %2343 = add nsw i64 %2267, -9
  %2344 = getelementptr inbounds i8, ptr %2, i64 %2343
  %2345 = load i8, ptr %2344, align 1, !tbaa !5
  %2346 = zext i8 %2345 to i64
  %2347 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2346
  %2348 = load i64, ptr %2347, align 8, !tbaa !14
  %2349 = and i64 %2348, 255
  %2350 = lshr i64 %2341, %2349
  %2351 = or i64 %2350, %2348
  %2352 = add i64 %2342, %2348
  %2353 = and i64 %2352, 255
  %2354 = lshr i64 %2353, 3
  %2355 = sub nsw i64 64, %2353
  %2356 = lshr i64 %2351, %2355
  %2357 = and i64 %2352, 7
  store i64 %2356, ptr %2269, align 1, !tbaa !14
  %2358 = getelementptr inbounds nuw i8, ptr %2269, i64 %2354
  %2359 = trunc nsw i64 %2343 to i32
  %2360 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2359, i32 -1)
  %2361 = extractvalue { i32, i1 } %2360, 1, !nosanitize !46
  br i1 %2361, label %.loopexit31, label %2362, !prof !49, !nosanitize !46

2362:                                             ; preds = %2266
  %2363 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2359, i32 -2)
  %2364 = extractvalue { i32, i1 } %2363, 1, !nosanitize !46
  br i1 %2364, label %.loopexit31, label %2365, !prof !49, !nosanitize !46

2365:                                             ; preds = %2362
  %2366 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2359, i32 -3)
  %2367 = extractvalue { i32, i1 } %2366, 1, !nosanitize !46
  br i1 %2367, label %.loopexit31, label %2368, !prof !49, !nosanitize !46

2368:                                             ; preds = %2365
  %2369 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2359, i32 -4)
  %2370 = extractvalue { i32, i1 } %2369, 1, !nosanitize !46
  br i1 %2370, label %.loopexit31, label %2371, !prof !49, !nosanitize !46

2371:                                             ; preds = %2368
  %2372 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2359, i32 -5)
  %2373 = extractvalue { i32, i1 } %2372, 1, !nosanitize !46
  br i1 %2373, label %.loopexit31, label %2374, !prof !49, !nosanitize !46

2374:                                             ; preds = %2371
  %2375 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2359, i32 -6)
  %2376 = extractvalue { i32, i1 } %2375, 1, !nosanitize !46
  br i1 %2376, label %.loopexit31, label %2377, !prof !49, !nosanitize !46

2377:                                             ; preds = %2374
  %2378 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2359, i32 -7)
  %2379 = extractvalue { i32, i1 } %2378, 1, !nosanitize !46
  br i1 %2379, label %.loopexit31, label %2380, !prof !49, !nosanitize !46

2380:                                             ; preds = %2377
  %2381 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2359, i32 -8)
  %2382 = extractvalue { i32, i1 } %2381, 1, !nosanitize !46
  br i1 %2382, label %.loopexit31, label %2383, !prof !49, !nosanitize !46

2383:                                             ; preds = %2380
  %2384 = extractvalue { i32, i1 } %2378, 0, !nosanitize !46
  %2385 = sext i32 %2384 to i64
  %2386 = getelementptr inbounds i8, ptr %2, i64 %2385
  %2387 = load i8, ptr %2386, align 1, !tbaa !5
  %2388 = zext i8 %2387 to i64
  %2389 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2388
  %2390 = load i64, ptr %2389, align 8, !tbaa !14
  %2391 = extractvalue { i32, i1 } %2375, 0, !nosanitize !46
  %2392 = sext i32 %2391 to i64
  %2393 = getelementptr inbounds i8, ptr %2, i64 %2392
  %2394 = load i8, ptr %2393, align 1, !tbaa !5
  %2395 = zext i8 %2394 to i64
  %2396 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2395
  %2397 = load i64, ptr %2396, align 8, !tbaa !14
  %2398 = extractvalue { i32, i1 } %2372, 0, !nosanitize !46
  %2399 = sext i32 %2398 to i64
  %2400 = getelementptr inbounds i8, ptr %2, i64 %2399
  %2401 = load i8, ptr %2400, align 1, !tbaa !5
  %2402 = zext i8 %2401 to i64
  %2403 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2402
  %2404 = load i64, ptr %2403, align 8, !tbaa !14
  %2405 = extractvalue { i32, i1 } %2369, 0, !nosanitize !46
  %2406 = sext i32 %2405 to i64
  %2407 = getelementptr inbounds i8, ptr %2, i64 %2406
  %2408 = load i8, ptr %2407, align 1, !tbaa !5
  %2409 = zext i8 %2408 to i64
  %2410 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2409
  %2411 = load i64, ptr %2410, align 8, !tbaa !14
  %2412 = extractvalue { i32, i1 } %2366, 0, !nosanitize !46
  %2413 = sext i32 %2412 to i64
  %2414 = getelementptr inbounds i8, ptr %2, i64 %2413
  %2415 = load i8, ptr %2414, align 1, !tbaa !5
  %2416 = zext i8 %2415 to i64
  %2417 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2416
  %2418 = load i64, ptr %2417, align 8, !tbaa !14
  %2419 = extractvalue { i32, i1 } %2363, 0, !nosanitize !46
  %2420 = sext i32 %2419 to i64
  %2421 = getelementptr inbounds i8, ptr %2, i64 %2420
  %2422 = load i8, ptr %2421, align 1, !tbaa !5
  %2423 = zext i8 %2422 to i64
  %2424 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2423
  %2425 = load i64, ptr %2424, align 8, !tbaa !14
  %2426 = extractvalue { i32, i1 } %2360, 0, !nosanitize !46
  %2427 = sext i32 %2426 to i64
  %2428 = getelementptr inbounds i8, ptr %2, i64 %2427
  %2429 = load i8, ptr %2428, align 1, !tbaa !5
  %2430 = zext i8 %2429 to i64
  %2431 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2430
  %2432 = load i64, ptr %2431, align 8, !tbaa !14
  %2433 = and i64 %2425, 255
  %2434 = lshr i64 %2432, %2433
  %2435 = or i64 %2434, %2425
  %2436 = and i64 %2418, 255
  %2437 = lshr i64 %2435, %2436
  %2438 = or i64 %2437, %2418
  %2439 = and i64 %2411, 255
  %2440 = lshr i64 %2438, %2439
  %2441 = or i64 %2440, %2411
  %2442 = and i64 %2404, 255
  %2443 = lshr i64 %2441, %2442
  %2444 = or i64 %2443, %2404
  %2445 = and i64 %2397, 255
  %2446 = lshr i64 %2444, %2445
  %2447 = or i64 %2446, %2397
  %2448 = and i64 %2390, 255
  %2449 = lshr i64 %2447, %2448
  %2450 = or i64 %2449, %2390
  %2451 = extractvalue { i32, i1 } %2381, 0, !nosanitize !46
  %2452 = sext i32 %2451 to i64
  %2453 = getelementptr inbounds i8, ptr %2, i64 %2452
  %2454 = load i8, ptr %2453, align 1, !tbaa !5
  %2455 = zext i8 %2454 to i64
  %2456 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2455
  %2457 = load i64, ptr %2456, align 8, !tbaa !14
  %2458 = and i64 %2457, 255
  %2459 = lshr i64 %2450, %2458
  %2460 = or i64 %2459, %2457
  %2461 = getelementptr i8, ptr %2254, i64 %2267
  %2462 = load i8, ptr %2461, align 1, !tbaa !5
  %2463 = zext i8 %2462 to i64
  %2464 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2463
  %2465 = load i64, ptr %2464, align 8, !tbaa !14
  %2466 = and i64 %2465, 255
  %2467 = lshr i64 %2460, %2466
  %2468 = add i64 %2397, %2390
  %2469 = add i64 %2468, %2404
  %2470 = add i64 %2469, %2411
  %2471 = add i64 %2470, %2418
  %2472 = add i64 %2471, %2425
  %2473 = add i64 %2472, %2432
  %2474 = add i64 %2473, %2457
  %2475 = add i64 %2474, %2465
  %2476 = and i64 %2475, 255
  %2477 = lshr i64 %2351, %2476
  %2478 = or i64 %2477, %2467
  %2479 = or i64 %2478, %2465
  %2480 = add i64 %2475, %2357
  %2481 = and i64 %2480, 255
  %2482 = lshr i64 %2481, 3
  %2483 = sub nsw i64 64, %2481
  %2484 = lshr i64 %2479, %2483
  %2485 = and i64 %2480, 7
  store i64 %2484, ptr %2358, align 1, !tbaa !14
  %2486 = getelementptr inbounds nuw i8, ptr %2358, i64 %2482
  %2487 = add nsw i64 %2267, -18
  %2488 = icmp sgt i64 %2267, 18
  br i1 %2488, label %2266, label %.loopexit30, !llvm.loop !78

.loopexit30:                                      ; preds = %1942, %1537, %1170, %842, %542, %2383, %248, %2249, %1820, %1428, %1074, %760, %459, %176
  %2489 = phi i64 [ %177, %176 ], [ %2250, %2249 ], [ %460, %459 ], [ %761, %760 ], [ %1075, %1074 ], [ %1429, %1428 ], [ %1821, %1820 ], [ %601, %542 ], [ %900, %842 ], [ %1240, %1170 ], [ %1618, %1537 ], [ %296, %248 ], [ %2485, %2383 ], [ %2034, %1942 ]
  %2490 = phi ptr [ %178, %176 ], [ %2251, %2249 ], [ %461, %459 ], [ %762, %760 ], [ %1076, %1074 ], [ %1430, %1428 ], [ %1822, %1820 ], [ %602, %542 ], [ %901, %842 ], [ %1241, %1170 ], [ %1619, %1537 ], [ %299, %248 ], [ %2486, %2383 ], [ %2035, %1942 ]
  %2491 = phi i64 [ %179, %176 ], [ %2252, %2249 ], [ %462, %459 ], [ %763, %760 ], [ %1077, %1074 ], [ %1431, %1428 ], [ %1823, %1820 ], [ %595, %542 ], [ %894, %842 ], [ %1234, %1170 ], [ %1612, %1537 ], [ %290, %248 ], [ %2479, %2383 ], [ %2028, %1942 ]
  %2492 = lshr i64 %2491, 1
  %2493 = or disjoint i64 %2492, -9223372036854775808
  %2494 = add nuw nsw i64 %2489, -9223372036854775807
  %2495 = and i64 %2494, 255
  %2496 = lshr i64 %2495, 3
  %2497 = sub nuw nsw i64 64, %2495
  %2498 = lshr i64 %2493, %2497
  store i64 %2498, ptr %2490, align 1, !tbaa !14
  %2499 = getelementptr inbounds nuw i8, ptr %2490, i64 %2496
  %2500 = icmp ugt ptr %2499, %19
  %2501 = select i1 %2500, ptr %19, ptr %2499
  %2502 = icmp ult ptr %2501, %19
  br i1 %2502, label %2503, label %2511

2503:                                             ; preds = %.loopexit30
  %2504 = and i64 %2494, 7
  %2505 = ptrtoint ptr %2501 to i64
  %2506 = ptrtoint ptr %0 to i64
  %2507 = icmp ne i64 %2504, 0
  %2508 = zext i1 %2507 to i64
  %2509 = sub i64 %2508, %2506
  %2510 = add i64 %2509, %2505
  br label %2511

2511:                                             ; preds = %2503, %.loopexit30, %17, %11, %9
  %2512 = phi i64 [ %10, %9 ], [ 0, %17 ], [ 0, %11 ], [ %2510, %2503 ], [ 0, %.loopexit30 ]
  ret i64 %2512
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

.preheader8:                                      ; preds = %9, %102
  %40 = phi i32 [ %104, %102 ], [ %1, %9 ]
  %41 = phi i32 [ %103, %102 ], [ %2, %9 ]
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
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = add nsw i32 %75, -1
  tail call fastcc void @HUF_simpleQuickSort(ptr noundef nonnull %0, i32 noundef %40, i32 noundef %90)
  %91 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %75, i32 1), !nosanitize !46
  %92 = extractvalue { i32, i1 } %91, 1, !nosanitize !46
  br i1 %92, label %93, label %94, !prof !49, !nosanitize !46

93:                                               ; preds = %96, %89
  tail call void @llvm.ubsantrap(i8 0) #18, !nosanitize !46
  unreachable, !nosanitize !46

94:                                               ; preds = %89
  %95 = extractvalue { i32, i1 } %91, 0, !nosanitize !46
  br label %102

96:                                               ; preds = %86
  %97 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %75, i32 1), !nosanitize !46
  %98 = extractvalue { i32, i1 } %97, 1, !nosanitize !46
  br i1 %98, label %93, label %99, !prof !49, !nosanitize !46

99:                                               ; preds = %96
  %100 = extractvalue { i32, i1 } %97, 0, !nosanitize !46
  tail call fastcc void @HUF_simpleQuickSort(ptr noundef nonnull %0, i32 noundef %100, i32 noundef %41)
  %101 = add nsw i32 %75, -1
  br label %102

102:                                              ; preds = %99, %94
  %103 = phi i32 [ %41, %94 ], [ %101, %99 ]
  %104 = phi i32 [ %95, %94 ], [ %40, %99 ]
  %105 = icmp slt i32 %104, %103
  br i1 %105, label %.preheader8, label %.loopexit, !llvm.loop !93

.loopexit:                                        ; preds = %102, %36, %12, %9
  ret void
}

; Function Attrs: nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define internal fastcc i64 @HUF_compress1X_usingCTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, ptr noundef readonly captures(none) %4) unnamed_addr #13 {
  %6 = load i64, ptr %4, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 255
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %10 = icmp ult i64 %1, 8
  br i1 %10, label %2505, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = icmp eq i64 %1, 8
  br i1 %14, label %2505, label %15

15:                                               ; preds = %11
  %16 = and i64 %6, 255
  %17 = mul i64 %16, %3
  %18 = lshr i64 %17, 3
  %19 = add nuw nsw i64 %18, 8
  %20 = icmp ult i64 %1, %19
  %21 = icmp samesign ugt i32 %8, 11
  %22 = select i1 %20, i1 true, i1 %21
  %23 = trunc i64 %3 to i32
  br i1 %22, label %24, label %296

24:                                               ; preds = %15
  %25 = srem i32 %23, 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %97

27:                                               ; preds = %24
  %28 = xor i32 %23, -2147483648
  %29 = add nsw i32 %25, -1
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %.loopexit, !prof !76, !nosanitize !46

31:                                               ; preds = %27
  %32 = and i32 %25, 1
  %33 = icmp eq i32 %29, 0
  br i1 %33, label %.thread, label %34

34:                                               ; preds = %31
  %35 = and i32 %25, 2147483646
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi i32 [ %23, %34 ], [ %53, %36 ]
  %38 = phi i64 [ 0, %34 ], [ %63, %36 ]
  %39 = phi i64 [ 0, %34 ], [ %64, %36 ]
  %40 = phi i32 [ 0, %34 ], [ %65, %36 ]
  %41 = add i32 %37, -1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !5
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !14
  %48 = and i64 %47, 255
  %49 = lshr i64 %38, %48
  %50 = and i64 %47, -256
  %51 = or i64 %49, %50
  %52 = add i64 %47, %39
  %53 = add i32 %37, -2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %2, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !5
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %57
  %59 = load i64, ptr %58, align 8, !tbaa !14
  %60 = and i64 %59, 255
  %61 = lshr i64 %51, %60
  %62 = and i64 %59, -256
  %63 = or i64 %61, %62
  %64 = add i64 %52, %59
  %65 = add i32 %40, 2
  %66 = icmp eq i32 %65, %35
  br i1 %66, label %67, label %36, !llvm.loop !77

.loopexit:                                        ; preds = %239, %236, %182, %113, %110, %107, %104, %27
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

67:                                               ; preds = %36
  %68 = sub i32 %23, %35
  %69 = icmp eq i32 %32, 0
  br i1 %69, label %85, label %.thread

.thread:                                          ; preds = %31, %67
  %70 = phi i64 [ %64, %67 ], [ 0, %31 ]
  %71 = phi i64 [ %63, %67 ], [ 0, %31 ]
  %72 = phi i32 [ %68, %67 ], [ %23, %31 ]
  %73 = add i32 %72, -1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, ptr %2, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !5
  %77 = zext i8 %76 to i64
  %78 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %77
  %79 = load i64, ptr %78, align 8, !tbaa !14
  %80 = and i64 %79, 255
  %81 = lshr i64 %71, %80
  %82 = and i64 %79, -256
  %83 = or i64 %81, %82
  %84 = add i64 %79, %70
  br label %85

85:                                               ; preds = %.thread, %67
  %86 = phi i64 [ %63, %67 ], [ %83, %.thread ]
  %87 = phi i64 [ %64, %67 ], [ %84, %.thread ]
  %88 = sub nsw i32 %23, %25
  %89 = and i64 %87, 255
  %90 = lshr i64 %89, 3
  %91 = sub nsw i64 64, %89
  %92 = lshr i64 %86, %91
  %93 = and i64 %87, 7
  store i64 %92, ptr %0, align 1, !tbaa !14
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 %90
  %95 = icmp ugt ptr %94, %13
  %96 = select i1 %95, ptr %13, ptr %94
  br label %97

97:                                               ; preds = %85, %24
  %98 = phi i64 [ 0, %24 ], [ %93, %85 ]
  %99 = phi ptr [ %0, %24 ], [ %96, %85 ]
  %100 = phi i64 [ 0, %24 ], [ %86, %85 ]
  %101 = phi i32 [ %23, %24 ], [ %88, %85 ]
  %102 = and i32 %101, 7
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %170, label %104

104:                                              ; preds = %97
  %105 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %101, i32 -1)
  %106 = extractvalue { i32, i1 } %105, 1, !nosanitize !46
  br i1 %106, label %.loopexit, label %107, !prof !49, !nosanitize !46

107:                                              ; preds = %104
  %108 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %101, i32 -2)
  %109 = extractvalue { i32, i1 } %108, 1, !nosanitize !46
  br i1 %109, label %.loopexit, label %110, !prof !49, !nosanitize !46

110:                                              ; preds = %107
  %111 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %101, i32 -3)
  %112 = extractvalue { i32, i1 } %111, 1, !nosanitize !46
  br i1 %112, label %.loopexit, label %113, !prof !49, !nosanitize !46

113:                                              ; preds = %110
  %114 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %101, i32 -4)
  %115 = extractvalue { i32, i1 } %114, 1, !nosanitize !46
  br i1 %115, label %.loopexit, label %116, !prof !49, !nosanitize !46

116:                                              ; preds = %113
  %117 = extractvalue { i32, i1 } %111, 0, !nosanitize !46
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %2, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !5
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %121
  %123 = load i64, ptr %122, align 8, !tbaa !14
  %124 = extractvalue { i32, i1 } %108, 0, !nosanitize !46
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, ptr %2, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !5
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %128
  %130 = load i64, ptr %129, align 8, !tbaa !14
  %131 = extractvalue { i32, i1 } %105, 0, !nosanitize !46
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, ptr %2, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !5
  %135 = zext i8 %134 to i64
  %136 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %135
  %137 = load i64, ptr %136, align 8, !tbaa !14
  %138 = and i64 %137, 255
  %139 = lshr i64 %100, %138
  %140 = or i64 %139, %137
  %141 = and i64 %130, 255
  %142 = lshr i64 %140, %141
  %143 = or i64 %142, %130
  %144 = and i64 %123, 255
  %145 = lshr i64 %143, %144
  %146 = or i64 %145, %123
  %147 = extractvalue { i32, i1 } %114, 0, !nosanitize !46
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, ptr %2, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !5
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %151
  %153 = load i64, ptr %152, align 8, !tbaa !14
  %154 = and i64 %153, 255
  %155 = lshr i64 %146, %154
  %156 = and i64 %153, -256
  %157 = or i64 %155, %156
  %158 = add i64 %123, %98
  %159 = add i64 %158, %130
  %160 = add i64 %159, %137
  %161 = add i64 %160, %153
  %162 = and i64 %161, 255
  %163 = lshr i64 %162, 3
  %164 = sub nsw i64 64, %162
  %165 = lshr i64 %157, %164
  %166 = and i64 %161, 7
  store i64 %165, ptr %99, align 1, !tbaa !14
  %167 = getelementptr inbounds nuw i8, ptr %99, i64 %163
  %168 = icmp ugt ptr %167, %13
  %169 = select i1 %168, ptr %13, ptr %167
  br label %170

170:                                              ; preds = %116, %97
  %171 = phi i64 [ %98, %97 ], [ %166, %116 ]
  %172 = phi ptr [ %99, %97 ], [ %169, %116 ]
  %173 = phi i64 [ %100, %97 ], [ %157, %116 ]
  %174 = phi i32 [ %101, %97 ], [ %147, %116 ]
  %175 = getelementptr i8, ptr %2, i64 -8
  %176 = icmp sgt i32 %174, 0
  br i1 %176, label %177, label %.loopexit30

177:                                              ; preds = %170
  %178 = zext nneg i32 %174 to i64
  %179 = getelementptr i8, ptr %2, i64 -1
  %180 = getelementptr i8, ptr %2, i64 -2
  %181 = getelementptr i8, ptr %2, i64 -3
  br label %182

182:                                              ; preds = %242, %177
  %183 = phi i64 [ %178, %177 ], [ %294, %242 ]
  %184 = phi i64 [ %173, %177 ], [ %284, %242 ]
  %185 = phi ptr [ %172, %177 ], [ %293, %242 ]
  %186 = phi i64 [ %171, %177 ], [ %290, %242 ]
  %187 = getelementptr i8, ptr %179, i64 %183
  %188 = load i8, ptr %187, align 1, !tbaa !5
  %189 = zext i8 %188 to i64
  %190 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %189
  %191 = load i64, ptr %190, align 8, !tbaa !14
  %192 = and i64 %191, 255
  %193 = lshr i64 %184, %192
  %194 = or i64 %193, %191
  %195 = add i64 %191, %186
  %196 = getelementptr i8, ptr %180, i64 %183
  %197 = load i8, ptr %196, align 1, !tbaa !5
  %198 = zext i8 %197 to i64
  %199 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %198
  %200 = load i64, ptr %199, align 8, !tbaa !14
  %201 = and i64 %200, 255
  %202 = lshr i64 %194, %201
  %203 = or i64 %202, %200
  %204 = add i64 %195, %200
  %205 = getelementptr i8, ptr %181, i64 %183
  %206 = load i8, ptr %205, align 1, !tbaa !5
  %207 = zext i8 %206 to i64
  %208 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %207
  %209 = load i64, ptr %208, align 8, !tbaa !14
  %210 = and i64 %209, 255
  %211 = lshr i64 %203, %210
  %212 = or i64 %211, %209
  %213 = add i64 %204, %209
  %214 = add nsw i64 %183, -4
  %215 = getelementptr inbounds i8, ptr %2, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !5
  %217 = zext i8 %216 to i64
  %218 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %217
  %219 = load i64, ptr %218, align 8, !tbaa !14
  %220 = and i64 %219, 255
  %221 = lshr i64 %212, %220
  %222 = and i64 %219, -256
  %223 = or i64 %221, %222
  %224 = add i64 %213, %219
  %225 = and i64 %224, 255
  %226 = lshr i64 %225, 3
  %227 = sub nsw i64 64, %225
  %228 = lshr i64 %223, %227
  %229 = and i64 %224, 7
  store i64 %228, ptr %185, align 1, !tbaa !14
  %230 = getelementptr inbounds nuw i8, ptr %185, i64 %226
  %231 = icmp ugt ptr %230, %13
  %232 = select i1 %231, ptr %13, ptr %230
  %233 = trunc nsw i64 %214 to i32
  %234 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %233, i32 -1)
  %235 = extractvalue { i32, i1 } %234, 1, !nosanitize !46
  br i1 %235, label %.loopexit, label %236, !prof !49, !nosanitize !46

236:                                              ; preds = %182
  %237 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %233, i32 -2)
  %238 = extractvalue { i32, i1 } %237, 1, !nosanitize !46
  br i1 %238, label %.loopexit, label %239, !prof !49, !nosanitize !46

239:                                              ; preds = %236
  %240 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %233, i32 -3)
  %241 = extractvalue { i32, i1 } %240, 1, !nosanitize !46
  br i1 %241, label %.loopexit, label %242, !prof !49, !nosanitize !46

242:                                              ; preds = %239
  %243 = extractvalue { i32, i1 } %237, 0, !nosanitize !46
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, ptr %2, i64 %244
  %246 = load i8, ptr %245, align 1, !tbaa !5
  %247 = zext i8 %246 to i64
  %248 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %247
  %249 = load i64, ptr %248, align 8, !tbaa !14
  %250 = extractvalue { i32, i1 } %234, 0, !nosanitize !46
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, ptr %2, i64 %251
  %253 = load i8, ptr %252, align 1, !tbaa !5
  %254 = zext i8 %253 to i64
  %255 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %254
  %256 = load i64, ptr %255, align 8, !tbaa !14
  %257 = add i64 %256, %249
  %258 = and i64 %249, 255
  %259 = lshr i64 %256, %258
  %260 = or i64 %259, %249
  %261 = extractvalue { i32, i1 } %240, 0, !nosanitize !46
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, ptr %2, i64 %262
  %264 = load i8, ptr %263, align 1, !tbaa !5
  %265 = zext i8 %264 to i64
  %266 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %265
  %267 = load i64, ptr %266, align 8, !tbaa !14
  %268 = and i64 %267, 255
  %269 = lshr i64 %260, %268
  %270 = or i64 %269, %267
  %271 = add i64 %257, %267
  %272 = getelementptr i8, ptr %175, i64 %183
  %273 = load i8, ptr %272, align 1, !tbaa !5
  %274 = zext i8 %273 to i64
  %275 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %274
  %276 = load i64, ptr %275, align 8, !tbaa !14
  %277 = and i64 %276, 255
  %278 = lshr i64 %270, %277
  %279 = and i64 %276, -256
  %280 = or i64 %278, %279
  %281 = add i64 %271, %276
  %282 = and i64 %281, 255
  %283 = lshr i64 %223, %282
  %284 = or i64 %280, %283
  %285 = add i64 %281, %229
  %286 = and i64 %285, 255
  %287 = lshr i64 %286, 3
  %288 = sub nsw i64 64, %286
  %289 = lshr i64 %284, %288
  %290 = and i64 %285, 7
  store i64 %289, ptr %232, align 1, !tbaa !14
  %291 = getelementptr inbounds nuw i8, ptr %232, i64 %287
  %292 = icmp ugt ptr %291, %13
  %293 = select i1 %292, ptr %13, ptr %291
  %294 = add nsw i64 %183, -8
  %295 = icmp sgt i64 %183, 8
  br i1 %295, label %182, label %.loopexit30, !llvm.loop !78

296:                                              ; preds = %15
  switch i32 %8, label %2032 [
    i32 11, label %297
    i32 10, label %599
    i32 9, label %898
    i32 8, label %1238
    i32 7, label %1616
  ]

297:                                              ; preds = %296
  %298 = srem i32 %23, 5
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %368

300:                                              ; preds = %297
  %301 = xor i32 %23, -2147483648
  %302 = add nsw i32 %298, -1
  %303 = icmp ugt i32 %301, %302
  br i1 %303, label %304, label %.loopexit33, !prof !76, !nosanitize !46

304:                                              ; preds = %300
  %305 = and i32 %298, 1
  %306 = icmp eq i32 %302, 0
  br i1 %306, label %.thread24, label %307

307:                                              ; preds = %304
  %308 = and i32 %298, 2147483646
  br label %309

309:                                              ; preds = %309, %307
  %310 = phi i32 [ %23, %307 ], [ %326, %309 ]
  %311 = phi i64 [ 0, %307 ], [ %336, %309 ]
  %312 = phi i64 [ 0, %307 ], [ %337, %309 ]
  %313 = phi i32 [ 0, %307 ], [ %338, %309 ]
  %314 = add i32 %310, -1
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, ptr %2, i64 %315
  %317 = load i8, ptr %316, align 1, !tbaa !5
  %318 = zext i8 %317 to i64
  %319 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %318
  %320 = load i64, ptr %319, align 8, !tbaa !14
  %321 = and i64 %320, 255
  %322 = lshr i64 %311, %321
  %323 = and i64 %320, -256
  %324 = or i64 %322, %323
  %325 = add i64 %320, %312
  %326 = add i32 %310, -2
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8, ptr %2, i64 %327
  %329 = load i8, ptr %328, align 1, !tbaa !5
  %330 = zext i8 %329 to i64
  %331 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %330
  %332 = load i64, ptr %331, align 8, !tbaa !14
  %333 = and i64 %332, 255
  %334 = lshr i64 %324, %333
  %335 = and i64 %332, -256
  %336 = or i64 %334, %335
  %337 = add i64 %325, %332
  %338 = add i32 %313, 2
  %339 = icmp eq i32 %338, %308
  br i1 %339, label %340, label %309, !llvm.loop !77

.loopexit33:                                      ; preds = %533, %530, %527, %466, %387, %384, %381, %378, %375, %300
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

340:                                              ; preds = %309
  %341 = sub i32 %23, %308
  %342 = icmp eq i32 %305, 0
  br i1 %342, label %358, label %.thread24

.thread24:                                        ; preds = %304, %340
  %343 = phi i64 [ %337, %340 ], [ 0, %304 ]
  %344 = phi i64 [ %336, %340 ], [ 0, %304 ]
  %345 = phi i32 [ %341, %340 ], [ %23, %304 ]
  %346 = add i32 %345, -1
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8, ptr %2, i64 %347
  %349 = load i8, ptr %348, align 1, !tbaa !5
  %350 = zext i8 %349 to i64
  %351 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %350
  %352 = load i64, ptr %351, align 8, !tbaa !14
  %353 = and i64 %352, 255
  %354 = lshr i64 %344, %353
  %355 = and i64 %352, -256
  %356 = or i64 %354, %355
  %357 = add i64 %352, %343
  br label %358

358:                                              ; preds = %.thread24, %340
  %359 = phi i64 [ %336, %340 ], [ %356, %.thread24 ]
  %360 = phi i64 [ %337, %340 ], [ %357, %.thread24 ]
  %361 = sub nsw i32 %23, %298
  %362 = and i64 %360, 255
  %363 = lshr i64 %362, 3
  %364 = sub nsw i64 64, %362
  %365 = lshr i64 %359, %364
  %366 = and i64 %360, 7
  store i64 %365, ptr %0, align 1, !tbaa !14
  %367 = getelementptr inbounds nuw i8, ptr %0, i64 %363
  br label %368

368:                                              ; preds = %358, %297
  %369 = phi i64 [ %366, %358 ], [ 0, %297 ]
  %370 = phi ptr [ %367, %358 ], [ %0, %297 ]
  %371 = phi i64 [ %359, %358 ], [ 0, %297 ]
  %372 = phi i32 [ %361, %358 ], [ %23, %297 ]
  %373 = srem i32 %372, 10
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %453, label %375

375:                                              ; preds = %368
  %376 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %372, i32 -1)
  %377 = extractvalue { i32, i1 } %376, 1, !nosanitize !46
  br i1 %377, label %.loopexit33, label %378, !prof !49, !nosanitize !46

378:                                              ; preds = %375
  %379 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %372, i32 -2)
  %380 = extractvalue { i32, i1 } %379, 1, !nosanitize !46
  br i1 %380, label %.loopexit33, label %381, !prof !49, !nosanitize !46

381:                                              ; preds = %378
  %382 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %372, i32 -3)
  %383 = extractvalue { i32, i1 } %382, 1, !nosanitize !46
  br i1 %383, label %.loopexit33, label %384, !prof !49, !nosanitize !46

384:                                              ; preds = %381
  %385 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %372, i32 -4)
  %386 = extractvalue { i32, i1 } %385, 1, !nosanitize !46
  br i1 %386, label %.loopexit33, label %387, !prof !49, !nosanitize !46

387:                                              ; preds = %384
  %388 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %372, i32 -5)
  %389 = extractvalue { i32, i1 } %388, 1, !nosanitize !46
  br i1 %389, label %.loopexit33, label %390, !prof !49, !nosanitize !46

390:                                              ; preds = %387
  %391 = extractvalue { i32, i1 } %385, 0, !nosanitize !46
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8, ptr %2, i64 %392
  %394 = load i8, ptr %393, align 1, !tbaa !5
  %395 = zext i8 %394 to i64
  %396 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %395
  %397 = load i64, ptr %396, align 8, !tbaa !14
  %398 = extractvalue { i32, i1 } %382, 0, !nosanitize !46
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8, ptr %2, i64 %399
  %401 = load i8, ptr %400, align 1, !tbaa !5
  %402 = zext i8 %401 to i64
  %403 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %402
  %404 = load i64, ptr %403, align 8, !tbaa !14
  %405 = extractvalue { i32, i1 } %379, 0, !nosanitize !46
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i8, ptr %2, i64 %406
  %408 = load i8, ptr %407, align 1, !tbaa !5
  %409 = zext i8 %408 to i64
  %410 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %409
  %411 = load i64, ptr %410, align 8, !tbaa !14
  %412 = extractvalue { i32, i1 } %376, 0, !nosanitize !46
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i8, ptr %2, i64 %413
  %415 = load i8, ptr %414, align 1, !tbaa !5
  %416 = zext i8 %415 to i64
  %417 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %416
  %418 = load i64, ptr %417, align 8, !tbaa !14
  %419 = and i64 %418, 255
  %420 = lshr i64 %371, %419
  %421 = or i64 %420, %418
  %422 = and i64 %411, 255
  %423 = lshr i64 %421, %422
  %424 = or i64 %423, %411
  %425 = and i64 %404, 255
  %426 = lshr i64 %424, %425
  %427 = or i64 %426, %404
  %428 = and i64 %397, 255
  %429 = lshr i64 %427, %428
  %430 = or i64 %429, %397
  %431 = extractvalue { i32, i1 } %388, 0, !nosanitize !46
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i8, ptr %2, i64 %432
  %434 = load i8, ptr %433, align 1, !tbaa !5
  %435 = zext i8 %434 to i64
  %436 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %435
  %437 = load i64, ptr %436, align 8, !tbaa !14
  %438 = and i64 %437, 255
  %439 = lshr i64 %430, %438
  %440 = and i64 %437, -256
  %441 = or i64 %439, %440
  %442 = add i64 %397, %369
  %443 = add i64 %442, %404
  %444 = add i64 %443, %411
  %445 = add i64 %444, %418
  %446 = add i64 %445, %437
  %447 = and i64 %446, 255
  %448 = lshr i64 %447, 3
  %449 = sub nsw i64 64, %447
  %450 = lshr i64 %441, %449
  %451 = and i64 %446, 7
  store i64 %450, ptr %370, align 1, !tbaa !14
  %452 = getelementptr inbounds nuw i8, ptr %370, i64 %448
  br label %453

453:                                              ; preds = %390, %368
  %454 = phi i64 [ %369, %368 ], [ %451, %390 ]
  %455 = phi ptr [ %370, %368 ], [ %452, %390 ]
  %456 = phi i64 [ %371, %368 ], [ %441, %390 ]
  %457 = phi i32 [ %372, %368 ], [ %431, %390 ]
  %458 = getelementptr i8, ptr %2, i64 -10
  %459 = icmp sgt i32 %457, 0
  br i1 %459, label %460, label %.loopexit30

460:                                              ; preds = %453
  %461 = zext nneg i32 %457 to i64
  %462 = getelementptr i8, ptr %2, i64 -1
  %463 = getelementptr i8, ptr %2, i64 -2
  %464 = getelementptr i8, ptr %2, i64 -3
  %465 = getelementptr i8, ptr %2, i64 -4
  br label %466

466:                                              ; preds = %536, %460
  %467 = phi i64 [ %461, %460 ], [ %597, %536 ]
  %468 = phi i64 [ %456, %460 ], [ %589, %536 ]
  %469 = phi ptr [ %455, %460 ], [ %596, %536 ]
  %470 = phi i64 [ %454, %460 ], [ %595, %536 ]
  %471 = getelementptr i8, ptr %462, i64 %467
  %472 = load i8, ptr %471, align 1, !tbaa !5
  %473 = zext i8 %472 to i64
  %474 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %473
  %475 = load i64, ptr %474, align 8, !tbaa !14
  %476 = and i64 %475, 255
  %477 = lshr i64 %468, %476
  %478 = or i64 %477, %475
  %479 = add i64 %475, %470
  %480 = getelementptr i8, ptr %463, i64 %467
  %481 = load i8, ptr %480, align 1, !tbaa !5
  %482 = zext i8 %481 to i64
  %483 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %482
  %484 = load i64, ptr %483, align 8, !tbaa !14
  %485 = and i64 %484, 255
  %486 = lshr i64 %478, %485
  %487 = or i64 %486, %484
  %488 = add i64 %479, %484
  %489 = getelementptr i8, ptr %464, i64 %467
  %490 = load i8, ptr %489, align 1, !tbaa !5
  %491 = zext i8 %490 to i64
  %492 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %491
  %493 = load i64, ptr %492, align 8, !tbaa !14
  %494 = and i64 %493, 255
  %495 = lshr i64 %487, %494
  %496 = or i64 %495, %493
  %497 = add i64 %488, %493
  %498 = getelementptr i8, ptr %465, i64 %467
  %499 = load i8, ptr %498, align 1, !tbaa !5
  %500 = zext i8 %499 to i64
  %501 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %500
  %502 = load i64, ptr %501, align 8, !tbaa !14
  %503 = and i64 %502, 255
  %504 = lshr i64 %496, %503
  %505 = or i64 %504, %502
  %506 = add i64 %497, %502
  %507 = add nsw i64 %467, -5
  %508 = getelementptr inbounds i8, ptr %2, i64 %507
  %509 = load i8, ptr %508, align 1, !tbaa !5
  %510 = zext i8 %509 to i64
  %511 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %510
  %512 = load i64, ptr %511, align 8, !tbaa !14
  %513 = and i64 %512, 255
  %514 = lshr i64 %505, %513
  %515 = and i64 %512, -256
  %516 = or i64 %514, %515
  %517 = add i64 %506, %512
  %518 = and i64 %517, 255
  %519 = lshr i64 %518, 3
  %520 = sub nsw i64 64, %518
  %521 = lshr i64 %516, %520
  %522 = and i64 %517, 7
  store i64 %521, ptr %469, align 1, !tbaa !14
  %523 = getelementptr inbounds nuw i8, ptr %469, i64 %519
  %524 = trunc nsw i64 %507 to i32
  %525 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %524, i32 -1)
  %526 = extractvalue { i32, i1 } %525, 1, !nosanitize !46
  br i1 %526, label %.loopexit33, label %527, !prof !49, !nosanitize !46

527:                                              ; preds = %466
  %528 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %524, i32 -2)
  %529 = extractvalue { i32, i1 } %528, 1, !nosanitize !46
  br i1 %529, label %.loopexit33, label %530, !prof !49, !nosanitize !46

530:                                              ; preds = %527
  %531 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %524, i32 -3)
  %532 = extractvalue { i32, i1 } %531, 1, !nosanitize !46
  br i1 %532, label %.loopexit33, label %533, !prof !49, !nosanitize !46

533:                                              ; preds = %530
  %534 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %524, i32 -4)
  %535 = extractvalue { i32, i1 } %534, 1, !nosanitize !46
  br i1 %535, label %.loopexit33, label %536, !prof !49, !nosanitize !46

536:                                              ; preds = %533
  %537 = extractvalue { i32, i1 } %531, 0, !nosanitize !46
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i8, ptr %2, i64 %538
  %540 = load i8, ptr %539, align 1, !tbaa !5
  %541 = zext i8 %540 to i64
  %542 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %541
  %543 = load i64, ptr %542, align 8, !tbaa !14
  %544 = extractvalue { i32, i1 } %528, 0, !nosanitize !46
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i8, ptr %2, i64 %545
  %547 = load i8, ptr %546, align 1, !tbaa !5
  %548 = zext i8 %547 to i64
  %549 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %548
  %550 = load i64, ptr %549, align 8, !tbaa !14
  %551 = extractvalue { i32, i1 } %525, 0, !nosanitize !46
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i8, ptr %2, i64 %552
  %554 = load i8, ptr %553, align 1, !tbaa !5
  %555 = zext i8 %554 to i64
  %556 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %555
  %557 = load i64, ptr %556, align 8, !tbaa !14
  %558 = and i64 %550, 255
  %559 = lshr i64 %557, %558
  %560 = or i64 %559, %550
  %561 = and i64 %543, 255
  %562 = lshr i64 %560, %561
  %563 = or i64 %562, %543
  %564 = extractvalue { i32, i1 } %534, 0, !nosanitize !46
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i8, ptr %2, i64 %565
  %567 = load i8, ptr %566, align 1, !tbaa !5
  %568 = zext i8 %567 to i64
  %569 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %568
  %570 = load i64, ptr %569, align 8, !tbaa !14
  %571 = and i64 %570, 255
  %572 = lshr i64 %563, %571
  %573 = or i64 %572, %570
  %574 = getelementptr i8, ptr %458, i64 %467
  %575 = load i8, ptr %574, align 1, !tbaa !5
  %576 = zext i8 %575 to i64
  %577 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %576
  %578 = load i64, ptr %577, align 8, !tbaa !14
  %579 = and i64 %578, 255
  %580 = lshr i64 %573, %579
  %581 = and i64 %578, -256
  %582 = or i64 %580, %581
  %583 = add i64 %550, %543
  %584 = add i64 %583, %557
  %585 = add i64 %584, %570
  %586 = add i64 %585, %578
  %587 = and i64 %586, 255
  %588 = lshr i64 %516, %587
  %589 = or i64 %582, %588
  %590 = add i64 %586, %522
  %591 = and i64 %590, 255
  %592 = lshr i64 %591, 3
  %593 = sub nsw i64 64, %591
  %594 = lshr i64 %589, %593
  %595 = and i64 %590, 7
  store i64 %594, ptr %523, align 1, !tbaa !14
  %596 = getelementptr inbounds nuw i8, ptr %523, i64 %592
  %597 = add nsw i64 %467, -10
  %598 = icmp sgt i64 %467, 10
  br i1 %598, label %466, label %.loopexit30, !llvm.loop !78

599:                                              ; preds = %296
  %600 = srem i32 %23, 5
  %601 = icmp sgt i32 %600, 0
  br i1 %601, label %602, label %670

602:                                              ; preds = %599
  %603 = xor i32 %23, -2147483648
  %604 = add nsw i32 %600, -1
  %605 = icmp ugt i32 %603, %604
  br i1 %605, label %606, label %.loopexit35, !prof !76, !nosanitize !46

606:                                              ; preds = %602
  %607 = and i32 %600, 1
  %608 = icmp eq i32 %604, 0
  br i1 %608, label %.thread25, label %609

609:                                              ; preds = %606
  %610 = and i32 %600, 2147483646
  br label %611

611:                                              ; preds = %611, %609
  %612 = phi i32 [ %23, %609 ], [ %628, %611 ]
  %613 = phi i64 [ 0, %609 ], [ %638, %611 ]
  %614 = phi i64 [ 0, %609 ], [ %639, %611 ]
  %615 = phi i32 [ 0, %609 ], [ %640, %611 ]
  %616 = add i32 %612, -1
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds i8, ptr %2, i64 %617
  %619 = load i8, ptr %618, align 1, !tbaa !5
  %620 = zext i8 %619 to i64
  %621 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %620
  %622 = load i64, ptr %621, align 8, !tbaa !14
  %623 = and i64 %622, 255
  %624 = lshr i64 %613, %623
  %625 = and i64 %622, -256
  %626 = or i64 %624, %625
  %627 = add i64 %622, %614
  %628 = add i32 %612, -2
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds i8, ptr %2, i64 %629
  %631 = load i8, ptr %630, align 1, !tbaa !5
  %632 = zext i8 %631 to i64
  %633 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %632
  %634 = load i64, ptr %633, align 8, !tbaa !14
  %635 = and i64 %634, 255
  %636 = lshr i64 %626, %635
  %637 = and i64 %634, -256
  %638 = or i64 %636, %637
  %639 = add i64 %627, %634
  %640 = add i32 %615, 2
  %641 = icmp eq i32 %640, %610
  br i1 %641, label %642, label %611, !llvm.loop !77

.loopexit35:                                      ; preds = %833, %830, %827, %767, %689, %686, %683, %680, %677, %602
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

642:                                              ; preds = %611
  %643 = sub i32 %23, %610
  %644 = icmp eq i32 %607, 0
  br i1 %644, label %660, label %.thread25

.thread25:                                        ; preds = %606, %642
  %645 = phi i64 [ %639, %642 ], [ 0, %606 ]
  %646 = phi i64 [ %638, %642 ], [ 0, %606 ]
  %647 = phi i32 [ %643, %642 ], [ %23, %606 ]
  %648 = add i32 %647, -1
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds i8, ptr %2, i64 %649
  %651 = load i8, ptr %650, align 1, !tbaa !5
  %652 = zext i8 %651 to i64
  %653 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %652
  %654 = load i64, ptr %653, align 8, !tbaa !14
  %655 = and i64 %654, 255
  %656 = lshr i64 %646, %655
  %657 = and i64 %654, -256
  %658 = or i64 %656, %657
  %659 = add i64 %654, %645
  br label %660

660:                                              ; preds = %.thread25, %642
  %661 = phi i64 [ %638, %642 ], [ %658, %.thread25 ]
  %662 = phi i64 [ %639, %642 ], [ %659, %.thread25 ]
  %663 = sub nsw i32 %23, %600
  %664 = and i64 %662, 255
  %665 = lshr i64 %664, 3
  %666 = sub nsw i64 64, %664
  %667 = lshr i64 %661, %666
  %668 = and i64 %662, 7
  store i64 %667, ptr %0, align 1, !tbaa !14
  %669 = getelementptr inbounds nuw i8, ptr %0, i64 %665
  br label %670

670:                                              ; preds = %660, %599
  %671 = phi i64 [ %668, %660 ], [ 0, %599 ]
  %672 = phi ptr [ %669, %660 ], [ %0, %599 ]
  %673 = phi i64 [ %661, %660 ], [ 0, %599 ]
  %674 = phi i32 [ %663, %660 ], [ %23, %599 ]
  %675 = srem i32 %674, 10
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %754, label %677

677:                                              ; preds = %670
  %678 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %674, i32 -1)
  %679 = extractvalue { i32, i1 } %678, 1, !nosanitize !46
  br i1 %679, label %.loopexit35, label %680, !prof !49, !nosanitize !46

680:                                              ; preds = %677
  %681 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %674, i32 -2)
  %682 = extractvalue { i32, i1 } %681, 1, !nosanitize !46
  br i1 %682, label %.loopexit35, label %683, !prof !49, !nosanitize !46

683:                                              ; preds = %680
  %684 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %674, i32 -3)
  %685 = extractvalue { i32, i1 } %684, 1, !nosanitize !46
  br i1 %685, label %.loopexit35, label %686, !prof !49, !nosanitize !46

686:                                              ; preds = %683
  %687 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %674, i32 -4)
  %688 = extractvalue { i32, i1 } %687, 1, !nosanitize !46
  br i1 %688, label %.loopexit35, label %689, !prof !49, !nosanitize !46

689:                                              ; preds = %686
  %690 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %674, i32 -5)
  %691 = extractvalue { i32, i1 } %690, 1, !nosanitize !46
  br i1 %691, label %.loopexit35, label %692, !prof !49, !nosanitize !46

692:                                              ; preds = %689
  %693 = extractvalue { i32, i1 } %687, 0, !nosanitize !46
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds i8, ptr %2, i64 %694
  %696 = load i8, ptr %695, align 1, !tbaa !5
  %697 = zext i8 %696 to i64
  %698 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %697
  %699 = load i64, ptr %698, align 8, !tbaa !14
  %700 = extractvalue { i32, i1 } %684, 0, !nosanitize !46
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i8, ptr %2, i64 %701
  %703 = load i8, ptr %702, align 1, !tbaa !5
  %704 = zext i8 %703 to i64
  %705 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %704
  %706 = load i64, ptr %705, align 8, !tbaa !14
  %707 = extractvalue { i32, i1 } %681, 0, !nosanitize !46
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds i8, ptr %2, i64 %708
  %710 = load i8, ptr %709, align 1, !tbaa !5
  %711 = zext i8 %710 to i64
  %712 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %711
  %713 = load i64, ptr %712, align 8, !tbaa !14
  %714 = extractvalue { i32, i1 } %678, 0, !nosanitize !46
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds i8, ptr %2, i64 %715
  %717 = load i8, ptr %716, align 1, !tbaa !5
  %718 = zext i8 %717 to i64
  %719 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %718
  %720 = load i64, ptr %719, align 8, !tbaa !14
  %721 = and i64 %720, 255
  %722 = lshr i64 %673, %721
  %723 = or i64 %722, %720
  %724 = and i64 %713, 255
  %725 = lshr i64 %723, %724
  %726 = or i64 %725, %713
  %727 = and i64 %706, 255
  %728 = lshr i64 %726, %727
  %729 = or i64 %728, %706
  %730 = and i64 %699, 255
  %731 = lshr i64 %729, %730
  %732 = or i64 %731, %699
  %733 = extractvalue { i32, i1 } %690, 0, !nosanitize !46
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds i8, ptr %2, i64 %734
  %736 = load i8, ptr %735, align 1, !tbaa !5
  %737 = zext i8 %736 to i64
  %738 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %737
  %739 = load i64, ptr %738, align 8, !tbaa !14
  %740 = and i64 %739, 255
  %741 = lshr i64 %732, %740
  %742 = or i64 %741, %739
  %743 = add i64 %699, %671
  %744 = add i64 %743, %706
  %745 = add i64 %744, %713
  %746 = add i64 %745, %720
  %747 = add i64 %746, %739
  %748 = and i64 %747, 255
  %749 = lshr i64 %748, 3
  %750 = sub nsw i64 64, %748
  %751 = lshr i64 %742, %750
  %752 = and i64 %747, 7
  store i64 %751, ptr %672, align 1, !tbaa !14
  %753 = getelementptr inbounds nuw i8, ptr %672, i64 %749
  br label %754

754:                                              ; preds = %692, %670
  %755 = phi i64 [ %671, %670 ], [ %752, %692 ]
  %756 = phi ptr [ %672, %670 ], [ %753, %692 ]
  %757 = phi i64 [ %673, %670 ], [ %742, %692 ]
  %758 = phi i32 [ %674, %670 ], [ %733, %692 ]
  %759 = getelementptr i8, ptr %2, i64 -10
  %760 = icmp sgt i32 %758, 0
  br i1 %760, label %761, label %.loopexit30

761:                                              ; preds = %754
  %762 = zext nneg i32 %758 to i64
  %763 = getelementptr i8, ptr %2, i64 -1
  %764 = getelementptr i8, ptr %2, i64 -2
  %765 = getelementptr i8, ptr %2, i64 -3
  %766 = getelementptr i8, ptr %2, i64 -4
  br label %767

767:                                              ; preds = %836, %761
  %768 = phi i64 [ %762, %761 ], [ %896, %836 ]
  %769 = phi i64 [ %757, %761 ], [ %888, %836 ]
  %770 = phi ptr [ %756, %761 ], [ %895, %836 ]
  %771 = phi i64 [ %755, %761 ], [ %894, %836 ]
  %772 = getelementptr i8, ptr %763, i64 %768
  %773 = load i8, ptr %772, align 1, !tbaa !5
  %774 = zext i8 %773 to i64
  %775 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %774
  %776 = load i64, ptr %775, align 8, !tbaa !14
  %777 = and i64 %776, 255
  %778 = lshr i64 %769, %777
  %779 = or i64 %778, %776
  %780 = add i64 %776, %771
  %781 = getelementptr i8, ptr %764, i64 %768
  %782 = load i8, ptr %781, align 1, !tbaa !5
  %783 = zext i8 %782 to i64
  %784 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %783
  %785 = load i64, ptr %784, align 8, !tbaa !14
  %786 = and i64 %785, 255
  %787 = lshr i64 %779, %786
  %788 = or i64 %787, %785
  %789 = add i64 %780, %785
  %790 = getelementptr i8, ptr %765, i64 %768
  %791 = load i8, ptr %790, align 1, !tbaa !5
  %792 = zext i8 %791 to i64
  %793 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %792
  %794 = load i64, ptr %793, align 8, !tbaa !14
  %795 = and i64 %794, 255
  %796 = lshr i64 %788, %795
  %797 = or i64 %796, %794
  %798 = add i64 %789, %794
  %799 = getelementptr i8, ptr %766, i64 %768
  %800 = load i8, ptr %799, align 1, !tbaa !5
  %801 = zext i8 %800 to i64
  %802 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %801
  %803 = load i64, ptr %802, align 8, !tbaa !14
  %804 = and i64 %803, 255
  %805 = lshr i64 %797, %804
  %806 = or i64 %805, %803
  %807 = add i64 %798, %803
  %808 = add nsw i64 %768, -5
  %809 = getelementptr inbounds i8, ptr %2, i64 %808
  %810 = load i8, ptr %809, align 1, !tbaa !5
  %811 = zext i8 %810 to i64
  %812 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %811
  %813 = load i64, ptr %812, align 8, !tbaa !14
  %814 = and i64 %813, 255
  %815 = lshr i64 %806, %814
  %816 = or i64 %815, %813
  %817 = add i64 %807, %813
  %818 = and i64 %817, 255
  %819 = lshr i64 %818, 3
  %820 = sub nsw i64 64, %818
  %821 = lshr i64 %816, %820
  %822 = and i64 %817, 7
  store i64 %821, ptr %770, align 1, !tbaa !14
  %823 = getelementptr inbounds nuw i8, ptr %770, i64 %819
  %824 = trunc nsw i64 %808 to i32
  %825 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %824, i32 -1)
  %826 = extractvalue { i32, i1 } %825, 1, !nosanitize !46
  br i1 %826, label %.loopexit35, label %827, !prof !49, !nosanitize !46

827:                                              ; preds = %767
  %828 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %824, i32 -2)
  %829 = extractvalue { i32, i1 } %828, 1, !nosanitize !46
  br i1 %829, label %.loopexit35, label %830, !prof !49, !nosanitize !46

830:                                              ; preds = %827
  %831 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %824, i32 -3)
  %832 = extractvalue { i32, i1 } %831, 1, !nosanitize !46
  br i1 %832, label %.loopexit35, label %833, !prof !49, !nosanitize !46

833:                                              ; preds = %830
  %834 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %824, i32 -4)
  %835 = extractvalue { i32, i1 } %834, 1, !nosanitize !46
  br i1 %835, label %.loopexit35, label %836, !prof !49, !nosanitize !46

836:                                              ; preds = %833
  %837 = extractvalue { i32, i1 } %831, 0, !nosanitize !46
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds i8, ptr %2, i64 %838
  %840 = load i8, ptr %839, align 1, !tbaa !5
  %841 = zext i8 %840 to i64
  %842 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %841
  %843 = load i64, ptr %842, align 8, !tbaa !14
  %844 = extractvalue { i32, i1 } %828, 0, !nosanitize !46
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds i8, ptr %2, i64 %845
  %847 = load i8, ptr %846, align 1, !tbaa !5
  %848 = zext i8 %847 to i64
  %849 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %848
  %850 = load i64, ptr %849, align 8, !tbaa !14
  %851 = extractvalue { i32, i1 } %825, 0, !nosanitize !46
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds i8, ptr %2, i64 %852
  %854 = load i8, ptr %853, align 1, !tbaa !5
  %855 = zext i8 %854 to i64
  %856 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %855
  %857 = load i64, ptr %856, align 8, !tbaa !14
  %858 = and i64 %850, 255
  %859 = lshr i64 %857, %858
  %860 = or i64 %859, %850
  %861 = and i64 %843, 255
  %862 = lshr i64 %860, %861
  %863 = or i64 %862, %843
  %864 = extractvalue { i32, i1 } %834, 0, !nosanitize !46
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds i8, ptr %2, i64 %865
  %867 = load i8, ptr %866, align 1, !tbaa !5
  %868 = zext i8 %867 to i64
  %869 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %868
  %870 = load i64, ptr %869, align 8, !tbaa !14
  %871 = and i64 %870, 255
  %872 = lshr i64 %863, %871
  %873 = or i64 %872, %870
  %874 = getelementptr i8, ptr %759, i64 %768
  %875 = load i8, ptr %874, align 1, !tbaa !5
  %876 = zext i8 %875 to i64
  %877 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %876
  %878 = load i64, ptr %877, align 8, !tbaa !14
  %879 = and i64 %878, 255
  %880 = lshr i64 %873, %879
  %881 = add i64 %850, %843
  %882 = add i64 %881, %857
  %883 = add i64 %882, %870
  %884 = add i64 %883, %878
  %885 = and i64 %884, 255
  %886 = lshr i64 %816, %885
  %887 = or i64 %886, %880
  %888 = or i64 %887, %878
  %889 = add i64 %884, %822
  %890 = and i64 %889, 255
  %891 = lshr i64 %890, 3
  %892 = sub nsw i64 64, %890
  %893 = lshr i64 %888, %892
  %894 = and i64 %889, 7
  store i64 %893, ptr %823, align 1, !tbaa !14
  %895 = getelementptr inbounds nuw i8, ptr %823, i64 %891
  %896 = add nsw i64 %768, -10
  %897 = icmp sgt i64 %768, 10
  br i1 %897, label %767, label %.loopexit30, !llvm.loop !78

898:                                              ; preds = %296
  %899 = srem i32 %23, 6
  %900 = icmp sgt i32 %899, 0
  br i1 %900, label %901, label %969

901:                                              ; preds = %898
  %902 = xor i32 %23, -2147483648
  %903 = add nsw i32 %899, -1
  %904 = icmp ugt i32 %902, %903
  br i1 %904, label %905, label %.loopexit37, !prof !76, !nosanitize !46

905:                                              ; preds = %901
  %906 = and i32 %899, 1
  %907 = icmp eq i32 %903, 0
  br i1 %907, label %.thread26, label %908

908:                                              ; preds = %905
  %909 = and i32 %899, 2147483646
  br label %910

910:                                              ; preds = %910, %908
  %911 = phi i32 [ %23, %908 ], [ %927, %910 ]
  %912 = phi i64 [ 0, %908 ], [ %937, %910 ]
  %913 = phi i64 [ 0, %908 ], [ %938, %910 ]
  %914 = phi i32 [ 0, %908 ], [ %939, %910 ]
  %915 = add i32 %911, -1
  %916 = sext i32 %915 to i64
  %917 = getelementptr inbounds i8, ptr %2, i64 %916
  %918 = load i8, ptr %917, align 1, !tbaa !5
  %919 = zext i8 %918 to i64
  %920 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %919
  %921 = load i64, ptr %920, align 8, !tbaa !14
  %922 = and i64 %921, 255
  %923 = lshr i64 %912, %922
  %924 = and i64 %921, -256
  %925 = or i64 %923, %924
  %926 = add i64 %921, %913
  %927 = add i32 %911, -2
  %928 = sext i32 %927 to i64
  %929 = getelementptr inbounds i8, ptr %2, i64 %928
  %930 = load i8, ptr %929, align 1, !tbaa !5
  %931 = zext i8 %930 to i64
  %932 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %931
  %933 = load i64, ptr %932, align 8, !tbaa !14
  %934 = and i64 %933, 255
  %935 = lshr i64 %925, %934
  %936 = and i64 %933, -256
  %937 = or i64 %935, %936
  %938 = add i64 %926, %933
  %939 = add i32 %914, 2
  %940 = icmp eq i32 %939, %909
  br i1 %940, label %941, label %910, !llvm.loop !77

.loopexit37:                                      ; preds = %1161, %1158, %1155, %1152, %1082, %991, %988, %985, %982, %979, %976, %901
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

941:                                              ; preds = %910
  %942 = sub i32 %23, %909
  %943 = icmp eq i32 %906, 0
  br i1 %943, label %959, label %.thread26

.thread26:                                        ; preds = %905, %941
  %944 = phi i64 [ %938, %941 ], [ 0, %905 ]
  %945 = phi i64 [ %937, %941 ], [ 0, %905 ]
  %946 = phi i32 [ %942, %941 ], [ %23, %905 ]
  %947 = add i32 %946, -1
  %948 = sext i32 %947 to i64
  %949 = getelementptr inbounds i8, ptr %2, i64 %948
  %950 = load i8, ptr %949, align 1, !tbaa !5
  %951 = zext i8 %950 to i64
  %952 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %951
  %953 = load i64, ptr %952, align 8, !tbaa !14
  %954 = and i64 %953, 255
  %955 = lshr i64 %945, %954
  %956 = and i64 %953, -256
  %957 = or i64 %955, %956
  %958 = add i64 %953, %944
  br label %959

959:                                              ; preds = %.thread26, %941
  %960 = phi i64 [ %937, %941 ], [ %957, %.thread26 ]
  %961 = phi i64 [ %938, %941 ], [ %958, %.thread26 ]
  %962 = sub nsw i32 %23, %899
  %963 = and i64 %961, 255
  %964 = lshr i64 %963, 3
  %965 = sub nsw i64 64, %963
  %966 = lshr i64 %960, %965
  %967 = and i64 %961, 7
  store i64 %966, ptr %0, align 1, !tbaa !14
  %968 = getelementptr inbounds nuw i8, ptr %0, i64 %964
  br label %969

969:                                              ; preds = %959, %898
  %970 = phi i64 [ %967, %959 ], [ 0, %898 ]
  %971 = phi ptr [ %968, %959 ], [ %0, %898 ]
  %972 = phi i64 [ %960, %959 ], [ 0, %898 ]
  %973 = phi i32 [ %962, %959 ], [ %23, %898 ]
  %974 = srem i32 %973, 12
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %1068, label %976

976:                                              ; preds = %969
  %977 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %973, i32 -1)
  %978 = extractvalue { i32, i1 } %977, 1, !nosanitize !46
  br i1 %978, label %.loopexit37, label %979, !prof !49, !nosanitize !46

979:                                              ; preds = %976
  %980 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %973, i32 -2)
  %981 = extractvalue { i32, i1 } %980, 1, !nosanitize !46
  br i1 %981, label %.loopexit37, label %982, !prof !49, !nosanitize !46

982:                                              ; preds = %979
  %983 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %973, i32 -3)
  %984 = extractvalue { i32, i1 } %983, 1, !nosanitize !46
  br i1 %984, label %.loopexit37, label %985, !prof !49, !nosanitize !46

985:                                              ; preds = %982
  %986 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %973, i32 -4)
  %987 = extractvalue { i32, i1 } %986, 1, !nosanitize !46
  br i1 %987, label %.loopexit37, label %988, !prof !49, !nosanitize !46

988:                                              ; preds = %985
  %989 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %973, i32 -5)
  %990 = extractvalue { i32, i1 } %989, 1, !nosanitize !46
  br i1 %990, label %.loopexit37, label %991, !prof !49, !nosanitize !46

991:                                              ; preds = %988
  %992 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %973, i32 -6)
  %993 = extractvalue { i32, i1 } %992, 1, !nosanitize !46
  br i1 %993, label %.loopexit37, label %994, !prof !49, !nosanitize !46

994:                                              ; preds = %991
  %995 = extractvalue { i32, i1 } %989, 0, !nosanitize !46
  %996 = sext i32 %995 to i64
  %997 = getelementptr inbounds i8, ptr %2, i64 %996
  %998 = load i8, ptr %997, align 1, !tbaa !5
  %999 = zext i8 %998 to i64
  %1000 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %999
  %1001 = load i64, ptr %1000, align 8, !tbaa !14
  %1002 = extractvalue { i32, i1 } %986, 0, !nosanitize !46
  %1003 = sext i32 %1002 to i64
  %1004 = getelementptr inbounds i8, ptr %2, i64 %1003
  %1005 = load i8, ptr %1004, align 1, !tbaa !5
  %1006 = zext i8 %1005 to i64
  %1007 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1006
  %1008 = load i64, ptr %1007, align 8, !tbaa !14
  %1009 = extractvalue { i32, i1 } %983, 0, !nosanitize !46
  %1010 = sext i32 %1009 to i64
  %1011 = getelementptr inbounds i8, ptr %2, i64 %1010
  %1012 = load i8, ptr %1011, align 1, !tbaa !5
  %1013 = zext i8 %1012 to i64
  %1014 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1013
  %1015 = load i64, ptr %1014, align 8, !tbaa !14
  %1016 = extractvalue { i32, i1 } %980, 0, !nosanitize !46
  %1017 = sext i32 %1016 to i64
  %1018 = getelementptr inbounds i8, ptr %2, i64 %1017
  %1019 = load i8, ptr %1018, align 1, !tbaa !5
  %1020 = zext i8 %1019 to i64
  %1021 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1020
  %1022 = load i64, ptr %1021, align 8, !tbaa !14
  %1023 = extractvalue { i32, i1 } %977, 0, !nosanitize !46
  %1024 = sext i32 %1023 to i64
  %1025 = getelementptr inbounds i8, ptr %2, i64 %1024
  %1026 = load i8, ptr %1025, align 1, !tbaa !5
  %1027 = zext i8 %1026 to i64
  %1028 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1027
  %1029 = load i64, ptr %1028, align 8, !tbaa !14
  %1030 = and i64 %1029, 255
  %1031 = lshr i64 %972, %1030
  %1032 = or i64 %1031, %1029
  %1033 = and i64 %1022, 255
  %1034 = lshr i64 %1032, %1033
  %1035 = or i64 %1034, %1022
  %1036 = and i64 %1015, 255
  %1037 = lshr i64 %1035, %1036
  %1038 = or i64 %1037, %1015
  %1039 = and i64 %1008, 255
  %1040 = lshr i64 %1038, %1039
  %1041 = or i64 %1040, %1008
  %1042 = and i64 %1001, 255
  %1043 = lshr i64 %1041, %1042
  %1044 = or i64 %1043, %1001
  %1045 = extractvalue { i32, i1 } %992, 0, !nosanitize !46
  %1046 = sext i32 %1045 to i64
  %1047 = getelementptr inbounds i8, ptr %2, i64 %1046
  %1048 = load i8, ptr %1047, align 1, !tbaa !5
  %1049 = zext i8 %1048 to i64
  %1050 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1049
  %1051 = load i64, ptr %1050, align 8, !tbaa !14
  %1052 = and i64 %1051, 255
  %1053 = lshr i64 %1044, %1052
  %1054 = and i64 %1051, -256
  %1055 = or i64 %1053, %1054
  %1056 = add i64 %1001, %970
  %1057 = add i64 %1056, %1008
  %1058 = add i64 %1057, %1015
  %1059 = add i64 %1058, %1022
  %1060 = add i64 %1059, %1029
  %1061 = add i64 %1060, %1051
  %1062 = and i64 %1061, 255
  %1063 = lshr i64 %1062, 3
  %1064 = sub nsw i64 64, %1062
  %1065 = lshr i64 %1055, %1064
  %1066 = and i64 %1061, 7
  store i64 %1065, ptr %971, align 1, !tbaa !14
  %1067 = getelementptr inbounds nuw i8, ptr %971, i64 %1063
  br label %1068

1068:                                             ; preds = %994, %969
  %1069 = phi i64 [ %970, %969 ], [ %1066, %994 ]
  %1070 = phi ptr [ %971, %969 ], [ %1067, %994 ]
  %1071 = phi i64 [ %972, %969 ], [ %1055, %994 ]
  %1072 = phi i32 [ %973, %969 ], [ %1045, %994 ]
  %1073 = getelementptr i8, ptr %2, i64 -12
  %1074 = icmp sgt i32 %1072, 0
  br i1 %1074, label %1075, label %.loopexit30

1075:                                             ; preds = %1068
  %1076 = zext nneg i32 %1072 to i64
  %1077 = getelementptr i8, ptr %2, i64 -1
  %1078 = getelementptr i8, ptr %2, i64 -2
  %1079 = getelementptr i8, ptr %2, i64 -3
  %1080 = getelementptr i8, ptr %2, i64 -4
  %1081 = getelementptr i8, ptr %2, i64 -5
  br label %1082

1082:                                             ; preds = %1164, %1075
  %1083 = phi i64 [ %1076, %1075 ], [ %1236, %1164 ]
  %1084 = phi i64 [ %1071, %1075 ], [ %1228, %1164 ]
  %1085 = phi ptr [ %1070, %1075 ], [ %1235, %1164 ]
  %1086 = phi i64 [ %1069, %1075 ], [ %1234, %1164 ]
  %1087 = getelementptr i8, ptr %1077, i64 %1083
  %1088 = load i8, ptr %1087, align 1, !tbaa !5
  %1089 = zext i8 %1088 to i64
  %1090 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1089
  %1091 = load i64, ptr %1090, align 8, !tbaa !14
  %1092 = and i64 %1091, 255
  %1093 = lshr i64 %1084, %1092
  %1094 = or i64 %1093, %1091
  %1095 = add i64 %1091, %1086
  %1096 = getelementptr i8, ptr %1078, i64 %1083
  %1097 = load i8, ptr %1096, align 1, !tbaa !5
  %1098 = zext i8 %1097 to i64
  %1099 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1098
  %1100 = load i64, ptr %1099, align 8, !tbaa !14
  %1101 = and i64 %1100, 255
  %1102 = lshr i64 %1094, %1101
  %1103 = or i64 %1102, %1100
  %1104 = add i64 %1095, %1100
  %1105 = getelementptr i8, ptr %1079, i64 %1083
  %1106 = load i8, ptr %1105, align 1, !tbaa !5
  %1107 = zext i8 %1106 to i64
  %1108 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1107
  %1109 = load i64, ptr %1108, align 8, !tbaa !14
  %1110 = and i64 %1109, 255
  %1111 = lshr i64 %1103, %1110
  %1112 = or i64 %1111, %1109
  %1113 = add i64 %1104, %1109
  %1114 = getelementptr i8, ptr %1080, i64 %1083
  %1115 = load i8, ptr %1114, align 1, !tbaa !5
  %1116 = zext i8 %1115 to i64
  %1117 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1116
  %1118 = load i64, ptr %1117, align 8, !tbaa !14
  %1119 = and i64 %1118, 255
  %1120 = lshr i64 %1112, %1119
  %1121 = or i64 %1120, %1118
  %1122 = add i64 %1113, %1118
  %1123 = getelementptr i8, ptr %1081, i64 %1083
  %1124 = load i8, ptr %1123, align 1, !tbaa !5
  %1125 = zext i8 %1124 to i64
  %1126 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1125
  %1127 = load i64, ptr %1126, align 8, !tbaa !14
  %1128 = and i64 %1127, 255
  %1129 = lshr i64 %1121, %1128
  %1130 = or i64 %1129, %1127
  %1131 = add i64 %1122, %1127
  %1132 = add nsw i64 %1083, -6
  %1133 = getelementptr inbounds i8, ptr %2, i64 %1132
  %1134 = load i8, ptr %1133, align 1, !tbaa !5
  %1135 = zext i8 %1134 to i64
  %1136 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1135
  %1137 = load i64, ptr %1136, align 8, !tbaa !14
  %1138 = and i64 %1137, 255
  %1139 = lshr i64 %1130, %1138
  %1140 = and i64 %1137, -256
  %1141 = or i64 %1139, %1140
  %1142 = add i64 %1131, %1137
  %1143 = and i64 %1142, 255
  %1144 = lshr i64 %1143, 3
  %1145 = sub nsw i64 64, %1143
  %1146 = lshr i64 %1141, %1145
  %1147 = and i64 %1142, 7
  store i64 %1146, ptr %1085, align 1, !tbaa !14
  %1148 = getelementptr inbounds nuw i8, ptr %1085, i64 %1144
  %1149 = trunc nsw i64 %1132 to i32
  %1150 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1149, i32 -1)
  %1151 = extractvalue { i32, i1 } %1150, 1, !nosanitize !46
  br i1 %1151, label %.loopexit37, label %1152, !prof !49, !nosanitize !46

1152:                                             ; preds = %1082
  %1153 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1149, i32 -2)
  %1154 = extractvalue { i32, i1 } %1153, 1, !nosanitize !46
  br i1 %1154, label %.loopexit37, label %1155, !prof !49, !nosanitize !46

1155:                                             ; preds = %1152
  %1156 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1149, i32 -3)
  %1157 = extractvalue { i32, i1 } %1156, 1, !nosanitize !46
  br i1 %1157, label %.loopexit37, label %1158, !prof !49, !nosanitize !46

1158:                                             ; preds = %1155
  %1159 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1149, i32 -4)
  %1160 = extractvalue { i32, i1 } %1159, 1, !nosanitize !46
  br i1 %1160, label %.loopexit37, label %1161, !prof !49, !nosanitize !46

1161:                                             ; preds = %1158
  %1162 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1149, i32 -5)
  %1163 = extractvalue { i32, i1 } %1162, 1, !nosanitize !46
  br i1 %1163, label %.loopexit37, label %1164, !prof !49, !nosanitize !46

1164:                                             ; preds = %1161
  %1165 = extractvalue { i32, i1 } %1159, 0, !nosanitize !46
  %1166 = sext i32 %1165 to i64
  %1167 = getelementptr inbounds i8, ptr %2, i64 %1166
  %1168 = load i8, ptr %1167, align 1, !tbaa !5
  %1169 = zext i8 %1168 to i64
  %1170 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1169
  %1171 = load i64, ptr %1170, align 8, !tbaa !14
  %1172 = extractvalue { i32, i1 } %1156, 0, !nosanitize !46
  %1173 = sext i32 %1172 to i64
  %1174 = getelementptr inbounds i8, ptr %2, i64 %1173
  %1175 = load i8, ptr %1174, align 1, !tbaa !5
  %1176 = zext i8 %1175 to i64
  %1177 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1176
  %1178 = load i64, ptr %1177, align 8, !tbaa !14
  %1179 = extractvalue { i32, i1 } %1153, 0, !nosanitize !46
  %1180 = sext i32 %1179 to i64
  %1181 = getelementptr inbounds i8, ptr %2, i64 %1180
  %1182 = load i8, ptr %1181, align 1, !tbaa !5
  %1183 = zext i8 %1182 to i64
  %1184 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1183
  %1185 = load i64, ptr %1184, align 8, !tbaa !14
  %1186 = extractvalue { i32, i1 } %1150, 0, !nosanitize !46
  %1187 = sext i32 %1186 to i64
  %1188 = getelementptr inbounds i8, ptr %2, i64 %1187
  %1189 = load i8, ptr %1188, align 1, !tbaa !5
  %1190 = zext i8 %1189 to i64
  %1191 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1190
  %1192 = load i64, ptr %1191, align 8, !tbaa !14
  %1193 = and i64 %1185, 255
  %1194 = lshr i64 %1192, %1193
  %1195 = or i64 %1194, %1185
  %1196 = and i64 %1178, 255
  %1197 = lshr i64 %1195, %1196
  %1198 = or i64 %1197, %1178
  %1199 = and i64 %1171, 255
  %1200 = lshr i64 %1198, %1199
  %1201 = or i64 %1200, %1171
  %1202 = extractvalue { i32, i1 } %1162, 0, !nosanitize !46
  %1203 = sext i32 %1202 to i64
  %1204 = getelementptr inbounds i8, ptr %2, i64 %1203
  %1205 = load i8, ptr %1204, align 1, !tbaa !5
  %1206 = zext i8 %1205 to i64
  %1207 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1206
  %1208 = load i64, ptr %1207, align 8, !tbaa !14
  %1209 = and i64 %1208, 255
  %1210 = lshr i64 %1201, %1209
  %1211 = or i64 %1210, %1208
  %1212 = getelementptr i8, ptr %1073, i64 %1083
  %1213 = load i8, ptr %1212, align 1, !tbaa !5
  %1214 = zext i8 %1213 to i64
  %1215 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1214
  %1216 = load i64, ptr %1215, align 8, !tbaa !14
  %1217 = and i64 %1216, 255
  %1218 = lshr i64 %1211, %1217
  %1219 = and i64 %1216, -256
  %1220 = add i64 %1178, %1171
  %1221 = add i64 %1220, %1185
  %1222 = add i64 %1221, %1192
  %1223 = add i64 %1222, %1208
  %1224 = add i64 %1223, %1216
  %1225 = and i64 %1224, 255
  %1226 = lshr i64 %1141, %1225
  %1227 = or i64 %1226, %1219
  %1228 = or i64 %1227, %1218
  %1229 = add i64 %1224, %1147
  %1230 = and i64 %1229, 255
  %1231 = lshr i64 %1230, 3
  %1232 = sub nsw i64 64, %1230
  %1233 = lshr i64 %1228, %1232
  %1234 = and i64 %1229, 7
  store i64 %1233, ptr %1148, align 1, !tbaa !14
  %1235 = getelementptr inbounds nuw i8, ptr %1148, i64 %1231
  %1236 = add nsw i64 %1083, -12
  %1237 = icmp sgt i64 %1083, 12
  br i1 %1237, label %1082, label %.loopexit30, !llvm.loop !78

1238:                                             ; preds = %296
  %1239 = srem i32 %23, 7
  %1240 = icmp sgt i32 %1239, 0
  br i1 %1240, label %1241, label %1309

1241:                                             ; preds = %1238
  %1242 = xor i32 %23, -2147483648
  %1243 = add nsw i32 %1239, -1
  %1244 = icmp ugt i32 %1242, %1243
  br i1 %1244, label %1245, label %.loopexit39, !prof !76, !nosanitize !46

1245:                                             ; preds = %1241
  %1246 = and i32 %1239, 1
  %1247 = icmp eq i32 %1243, 0
  br i1 %1247, label %.thread27, label %1248

1248:                                             ; preds = %1245
  %1249 = and i32 %1239, 2147483646
  br label %1250

1250:                                             ; preds = %1250, %1248
  %1251 = phi i32 [ %23, %1248 ], [ %1267, %1250 ]
  %1252 = phi i64 [ 0, %1248 ], [ %1277, %1250 ]
  %1253 = phi i64 [ 0, %1248 ], [ %1278, %1250 ]
  %1254 = phi i32 [ 0, %1248 ], [ %1279, %1250 ]
  %1255 = add i32 %1251, -1
  %1256 = sext i32 %1255 to i64
  %1257 = getelementptr inbounds i8, ptr %2, i64 %1256
  %1258 = load i8, ptr %1257, align 1, !tbaa !5
  %1259 = zext i8 %1258 to i64
  %1260 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1259
  %1261 = load i64, ptr %1260, align 8, !tbaa !14
  %1262 = and i64 %1261, 255
  %1263 = lshr i64 %1252, %1262
  %1264 = and i64 %1261, -256
  %1265 = or i64 %1263, %1264
  %1266 = add i64 %1261, %1253
  %1267 = add i32 %1251, -2
  %1268 = sext i32 %1267 to i64
  %1269 = getelementptr inbounds i8, ptr %2, i64 %1268
  %1270 = load i8, ptr %1269, align 1, !tbaa !5
  %1271 = zext i8 %1270 to i64
  %1272 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1271
  %1273 = load i64, ptr %1272, align 8, !tbaa !14
  %1274 = and i64 %1273, 255
  %1275 = lshr i64 %1265, %1274
  %1276 = and i64 %1273, -256
  %1277 = or i64 %1275, %1276
  %1278 = add i64 %1266, %1273
  %1279 = add i32 %1254, 2
  %1280 = icmp eq i32 %1279, %1249
  br i1 %1280, label %1281, label %1250, !llvm.loop !77

.loopexit39:                                      ; preds = %1528, %1525, %1522, %1519, %1516, %1437, %1334, %1331, %1328, %1325, %1322, %1319, %1316, %1241
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

1281:                                             ; preds = %1250
  %1282 = sub i32 %23, %1249
  %1283 = icmp eq i32 %1246, 0
  br i1 %1283, label %1299, label %.thread27

.thread27:                                        ; preds = %1245, %1281
  %1284 = phi i64 [ %1278, %1281 ], [ 0, %1245 ]
  %1285 = phi i64 [ %1277, %1281 ], [ 0, %1245 ]
  %1286 = phi i32 [ %1282, %1281 ], [ %23, %1245 ]
  %1287 = add i32 %1286, -1
  %1288 = sext i32 %1287 to i64
  %1289 = getelementptr inbounds i8, ptr %2, i64 %1288
  %1290 = load i8, ptr %1289, align 1, !tbaa !5
  %1291 = zext i8 %1290 to i64
  %1292 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1291
  %1293 = load i64, ptr %1292, align 8, !tbaa !14
  %1294 = and i64 %1293, 255
  %1295 = lshr i64 %1285, %1294
  %1296 = and i64 %1293, -256
  %1297 = or i64 %1295, %1296
  %1298 = add i64 %1293, %1284
  br label %1299

1299:                                             ; preds = %.thread27, %1281
  %1300 = phi i64 [ %1277, %1281 ], [ %1297, %.thread27 ]
  %1301 = phi i64 [ %1278, %1281 ], [ %1298, %.thread27 ]
  %1302 = sub nsw i32 %23, %1239
  %1303 = and i64 %1301, 255
  %1304 = lshr i64 %1303, 3
  %1305 = sub nsw i64 64, %1303
  %1306 = lshr i64 %1300, %1305
  %1307 = and i64 %1301, 7
  store i64 %1306, ptr %0, align 1, !tbaa !14
  %1308 = getelementptr inbounds nuw i8, ptr %0, i64 %1304
  br label %1309

1309:                                             ; preds = %1299, %1238
  %1310 = phi i64 [ %1307, %1299 ], [ 0, %1238 ]
  %1311 = phi ptr [ %1308, %1299 ], [ %0, %1238 ]
  %1312 = phi i64 [ %1300, %1299 ], [ 0, %1238 ]
  %1313 = phi i32 [ %1302, %1299 ], [ %23, %1238 ]
  %1314 = srem i32 %1313, 14
  %1315 = icmp eq i32 %1314, 0
  br i1 %1315, label %1422, label %1316

1316:                                             ; preds = %1309
  %1317 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1313, i32 -1)
  %1318 = extractvalue { i32, i1 } %1317, 1, !nosanitize !46
  br i1 %1318, label %.loopexit39, label %1319, !prof !49, !nosanitize !46

1319:                                             ; preds = %1316
  %1320 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1313, i32 -2)
  %1321 = extractvalue { i32, i1 } %1320, 1, !nosanitize !46
  br i1 %1321, label %.loopexit39, label %1322, !prof !49, !nosanitize !46

1322:                                             ; preds = %1319
  %1323 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1313, i32 -3)
  %1324 = extractvalue { i32, i1 } %1323, 1, !nosanitize !46
  br i1 %1324, label %.loopexit39, label %1325, !prof !49, !nosanitize !46

1325:                                             ; preds = %1322
  %1326 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1313, i32 -4)
  %1327 = extractvalue { i32, i1 } %1326, 1, !nosanitize !46
  br i1 %1327, label %.loopexit39, label %1328, !prof !49, !nosanitize !46

1328:                                             ; preds = %1325
  %1329 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1313, i32 -5)
  %1330 = extractvalue { i32, i1 } %1329, 1, !nosanitize !46
  br i1 %1330, label %.loopexit39, label %1331, !prof !49, !nosanitize !46

1331:                                             ; preds = %1328
  %1332 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1313, i32 -6)
  %1333 = extractvalue { i32, i1 } %1332, 1, !nosanitize !46
  br i1 %1333, label %.loopexit39, label %1334, !prof !49, !nosanitize !46

1334:                                             ; preds = %1331
  %1335 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1313, i32 -7)
  %1336 = extractvalue { i32, i1 } %1335, 1, !nosanitize !46
  br i1 %1336, label %.loopexit39, label %1337, !prof !49, !nosanitize !46

1337:                                             ; preds = %1334
  %1338 = extractvalue { i32, i1 } %1332, 0, !nosanitize !46
  %1339 = sext i32 %1338 to i64
  %1340 = getelementptr inbounds i8, ptr %2, i64 %1339
  %1341 = load i8, ptr %1340, align 1, !tbaa !5
  %1342 = zext i8 %1341 to i64
  %1343 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1342
  %1344 = load i64, ptr %1343, align 8, !tbaa !14
  %1345 = extractvalue { i32, i1 } %1329, 0, !nosanitize !46
  %1346 = sext i32 %1345 to i64
  %1347 = getelementptr inbounds i8, ptr %2, i64 %1346
  %1348 = load i8, ptr %1347, align 1, !tbaa !5
  %1349 = zext i8 %1348 to i64
  %1350 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1349
  %1351 = load i64, ptr %1350, align 8, !tbaa !14
  %1352 = extractvalue { i32, i1 } %1326, 0, !nosanitize !46
  %1353 = sext i32 %1352 to i64
  %1354 = getelementptr inbounds i8, ptr %2, i64 %1353
  %1355 = load i8, ptr %1354, align 1, !tbaa !5
  %1356 = zext i8 %1355 to i64
  %1357 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1356
  %1358 = load i64, ptr %1357, align 8, !tbaa !14
  %1359 = extractvalue { i32, i1 } %1323, 0, !nosanitize !46
  %1360 = sext i32 %1359 to i64
  %1361 = getelementptr inbounds i8, ptr %2, i64 %1360
  %1362 = load i8, ptr %1361, align 1, !tbaa !5
  %1363 = zext i8 %1362 to i64
  %1364 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1363
  %1365 = load i64, ptr %1364, align 8, !tbaa !14
  %1366 = extractvalue { i32, i1 } %1320, 0, !nosanitize !46
  %1367 = sext i32 %1366 to i64
  %1368 = getelementptr inbounds i8, ptr %2, i64 %1367
  %1369 = load i8, ptr %1368, align 1, !tbaa !5
  %1370 = zext i8 %1369 to i64
  %1371 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1370
  %1372 = load i64, ptr %1371, align 8, !tbaa !14
  %1373 = extractvalue { i32, i1 } %1317, 0, !nosanitize !46
  %1374 = sext i32 %1373 to i64
  %1375 = getelementptr inbounds i8, ptr %2, i64 %1374
  %1376 = load i8, ptr %1375, align 1, !tbaa !5
  %1377 = zext i8 %1376 to i64
  %1378 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1377
  %1379 = load i64, ptr %1378, align 8, !tbaa !14
  %1380 = and i64 %1379, 255
  %1381 = lshr i64 %1312, %1380
  %1382 = or i64 %1381, %1379
  %1383 = and i64 %1372, 255
  %1384 = lshr i64 %1382, %1383
  %1385 = or i64 %1384, %1372
  %1386 = and i64 %1365, 255
  %1387 = lshr i64 %1385, %1386
  %1388 = or i64 %1387, %1365
  %1389 = and i64 %1358, 255
  %1390 = lshr i64 %1388, %1389
  %1391 = or i64 %1390, %1358
  %1392 = and i64 %1351, 255
  %1393 = lshr i64 %1391, %1392
  %1394 = or i64 %1393, %1351
  %1395 = and i64 %1344, 255
  %1396 = lshr i64 %1394, %1395
  %1397 = or i64 %1396, %1344
  %1398 = extractvalue { i32, i1 } %1335, 0, !nosanitize !46
  %1399 = sext i32 %1398 to i64
  %1400 = getelementptr inbounds i8, ptr %2, i64 %1399
  %1401 = load i8, ptr %1400, align 1, !tbaa !5
  %1402 = zext i8 %1401 to i64
  %1403 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1402
  %1404 = load i64, ptr %1403, align 8, !tbaa !14
  %1405 = and i64 %1404, 255
  %1406 = lshr i64 %1397, %1405
  %1407 = and i64 %1404, -256
  %1408 = or i64 %1406, %1407
  %1409 = add i64 %1344, %1310
  %1410 = add i64 %1409, %1351
  %1411 = add i64 %1410, %1358
  %1412 = add i64 %1411, %1365
  %1413 = add i64 %1412, %1372
  %1414 = add i64 %1413, %1379
  %1415 = add i64 %1414, %1404
  %1416 = and i64 %1415, 255
  %1417 = lshr i64 %1416, 3
  %1418 = sub nsw i64 64, %1416
  %1419 = lshr i64 %1408, %1418
  %1420 = and i64 %1415, 7
  store i64 %1419, ptr %1311, align 1, !tbaa !14
  %1421 = getelementptr inbounds nuw i8, ptr %1311, i64 %1417
  br label %1422

1422:                                             ; preds = %1337, %1309
  %1423 = phi i64 [ %1310, %1309 ], [ %1420, %1337 ]
  %1424 = phi ptr [ %1311, %1309 ], [ %1421, %1337 ]
  %1425 = phi i64 [ %1312, %1309 ], [ %1408, %1337 ]
  %1426 = phi i32 [ %1313, %1309 ], [ %1398, %1337 ]
  %1427 = getelementptr i8, ptr %2, i64 -14
  %1428 = icmp sgt i32 %1426, 0
  br i1 %1428, label %1429, label %.loopexit30

1429:                                             ; preds = %1422
  %1430 = zext nneg i32 %1426 to i64
  %1431 = getelementptr i8, ptr %2, i64 -1
  %1432 = getelementptr i8, ptr %2, i64 -2
  %1433 = getelementptr i8, ptr %2, i64 -3
  %1434 = getelementptr i8, ptr %2, i64 -4
  %1435 = getelementptr i8, ptr %2, i64 -5
  %1436 = getelementptr i8, ptr %2, i64 -6
  br label %1437

1437:                                             ; preds = %1531, %1429
  %1438 = phi i64 [ %1430, %1429 ], [ %1614, %1531 ]
  %1439 = phi i64 [ %1425, %1429 ], [ %1606, %1531 ]
  %1440 = phi ptr [ %1424, %1429 ], [ %1613, %1531 ]
  %1441 = phi i64 [ %1423, %1429 ], [ %1612, %1531 ]
  %1442 = getelementptr i8, ptr %1431, i64 %1438
  %1443 = load i8, ptr %1442, align 1, !tbaa !5
  %1444 = zext i8 %1443 to i64
  %1445 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1444
  %1446 = load i64, ptr %1445, align 8, !tbaa !14
  %1447 = and i64 %1446, 255
  %1448 = lshr i64 %1439, %1447
  %1449 = or i64 %1448, %1446
  %1450 = add i64 %1446, %1441
  %1451 = getelementptr i8, ptr %1432, i64 %1438
  %1452 = load i8, ptr %1451, align 1, !tbaa !5
  %1453 = zext i8 %1452 to i64
  %1454 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1453
  %1455 = load i64, ptr %1454, align 8, !tbaa !14
  %1456 = and i64 %1455, 255
  %1457 = lshr i64 %1449, %1456
  %1458 = or i64 %1457, %1455
  %1459 = add i64 %1450, %1455
  %1460 = getelementptr i8, ptr %1433, i64 %1438
  %1461 = load i8, ptr %1460, align 1, !tbaa !5
  %1462 = zext i8 %1461 to i64
  %1463 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1462
  %1464 = load i64, ptr %1463, align 8, !tbaa !14
  %1465 = and i64 %1464, 255
  %1466 = lshr i64 %1458, %1465
  %1467 = or i64 %1466, %1464
  %1468 = add i64 %1459, %1464
  %1469 = getelementptr i8, ptr %1434, i64 %1438
  %1470 = load i8, ptr %1469, align 1, !tbaa !5
  %1471 = zext i8 %1470 to i64
  %1472 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1471
  %1473 = load i64, ptr %1472, align 8, !tbaa !14
  %1474 = and i64 %1473, 255
  %1475 = lshr i64 %1467, %1474
  %1476 = or i64 %1475, %1473
  %1477 = add i64 %1468, %1473
  %1478 = getelementptr i8, ptr %1435, i64 %1438
  %1479 = load i8, ptr %1478, align 1, !tbaa !5
  %1480 = zext i8 %1479 to i64
  %1481 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1480
  %1482 = load i64, ptr %1481, align 8, !tbaa !14
  %1483 = and i64 %1482, 255
  %1484 = lshr i64 %1476, %1483
  %1485 = or i64 %1484, %1482
  %1486 = add i64 %1477, %1482
  %1487 = getelementptr i8, ptr %1436, i64 %1438
  %1488 = load i8, ptr %1487, align 1, !tbaa !5
  %1489 = zext i8 %1488 to i64
  %1490 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1489
  %1491 = load i64, ptr %1490, align 8, !tbaa !14
  %1492 = and i64 %1491, 255
  %1493 = lshr i64 %1485, %1492
  %1494 = or i64 %1493, %1491
  %1495 = add i64 %1486, %1491
  %1496 = add nsw i64 %1438, -7
  %1497 = getelementptr inbounds i8, ptr %2, i64 %1496
  %1498 = load i8, ptr %1497, align 1, !tbaa !5
  %1499 = zext i8 %1498 to i64
  %1500 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1499
  %1501 = load i64, ptr %1500, align 8, !tbaa !14
  %1502 = and i64 %1501, 255
  %1503 = lshr i64 %1494, %1502
  %1504 = and i64 %1501, -256
  %1505 = or i64 %1503, %1504
  %1506 = add i64 %1495, %1501
  %1507 = and i64 %1506, 255
  %1508 = lshr i64 %1507, 3
  %1509 = sub nsw i64 64, %1507
  %1510 = lshr i64 %1505, %1509
  %1511 = and i64 %1506, 7
  store i64 %1510, ptr %1440, align 1, !tbaa !14
  %1512 = getelementptr inbounds nuw i8, ptr %1440, i64 %1508
  %1513 = trunc nsw i64 %1496 to i32
  %1514 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1513, i32 -1)
  %1515 = extractvalue { i32, i1 } %1514, 1, !nosanitize !46
  br i1 %1515, label %.loopexit39, label %1516, !prof !49, !nosanitize !46

1516:                                             ; preds = %1437
  %1517 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1513, i32 -2)
  %1518 = extractvalue { i32, i1 } %1517, 1, !nosanitize !46
  br i1 %1518, label %.loopexit39, label %1519, !prof !49, !nosanitize !46

1519:                                             ; preds = %1516
  %1520 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1513, i32 -3)
  %1521 = extractvalue { i32, i1 } %1520, 1, !nosanitize !46
  br i1 %1521, label %.loopexit39, label %1522, !prof !49, !nosanitize !46

1522:                                             ; preds = %1519
  %1523 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1513, i32 -4)
  %1524 = extractvalue { i32, i1 } %1523, 1, !nosanitize !46
  br i1 %1524, label %.loopexit39, label %1525, !prof !49, !nosanitize !46

1525:                                             ; preds = %1522
  %1526 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1513, i32 -5)
  %1527 = extractvalue { i32, i1 } %1526, 1, !nosanitize !46
  br i1 %1527, label %.loopexit39, label %1528, !prof !49, !nosanitize !46

1528:                                             ; preds = %1525
  %1529 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1513, i32 -6)
  %1530 = extractvalue { i32, i1 } %1529, 1, !nosanitize !46
  br i1 %1530, label %.loopexit39, label %1531, !prof !49, !nosanitize !46

1531:                                             ; preds = %1528
  %1532 = extractvalue { i32, i1 } %1526, 0, !nosanitize !46
  %1533 = sext i32 %1532 to i64
  %1534 = getelementptr inbounds i8, ptr %2, i64 %1533
  %1535 = load i8, ptr %1534, align 1, !tbaa !5
  %1536 = zext i8 %1535 to i64
  %1537 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1536
  %1538 = load i64, ptr %1537, align 8, !tbaa !14
  %1539 = extractvalue { i32, i1 } %1523, 0, !nosanitize !46
  %1540 = sext i32 %1539 to i64
  %1541 = getelementptr inbounds i8, ptr %2, i64 %1540
  %1542 = load i8, ptr %1541, align 1, !tbaa !5
  %1543 = zext i8 %1542 to i64
  %1544 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1543
  %1545 = load i64, ptr %1544, align 8, !tbaa !14
  %1546 = extractvalue { i32, i1 } %1520, 0, !nosanitize !46
  %1547 = sext i32 %1546 to i64
  %1548 = getelementptr inbounds i8, ptr %2, i64 %1547
  %1549 = load i8, ptr %1548, align 1, !tbaa !5
  %1550 = zext i8 %1549 to i64
  %1551 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1550
  %1552 = load i64, ptr %1551, align 8, !tbaa !14
  %1553 = extractvalue { i32, i1 } %1517, 0, !nosanitize !46
  %1554 = sext i32 %1553 to i64
  %1555 = getelementptr inbounds i8, ptr %2, i64 %1554
  %1556 = load i8, ptr %1555, align 1, !tbaa !5
  %1557 = zext i8 %1556 to i64
  %1558 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1557
  %1559 = load i64, ptr %1558, align 8, !tbaa !14
  %1560 = extractvalue { i32, i1 } %1514, 0, !nosanitize !46
  %1561 = sext i32 %1560 to i64
  %1562 = getelementptr inbounds i8, ptr %2, i64 %1561
  %1563 = load i8, ptr %1562, align 1, !tbaa !5
  %1564 = zext i8 %1563 to i64
  %1565 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1564
  %1566 = load i64, ptr %1565, align 8, !tbaa !14
  %1567 = and i64 %1559, 255
  %1568 = lshr i64 %1566, %1567
  %1569 = or i64 %1568, %1559
  %1570 = and i64 %1552, 255
  %1571 = lshr i64 %1569, %1570
  %1572 = or i64 %1571, %1552
  %1573 = and i64 %1545, 255
  %1574 = lshr i64 %1572, %1573
  %1575 = or i64 %1574, %1545
  %1576 = and i64 %1538, 255
  %1577 = lshr i64 %1575, %1576
  %1578 = or i64 %1577, %1538
  %1579 = extractvalue { i32, i1 } %1529, 0, !nosanitize !46
  %1580 = sext i32 %1579 to i64
  %1581 = getelementptr inbounds i8, ptr %2, i64 %1580
  %1582 = load i8, ptr %1581, align 1, !tbaa !5
  %1583 = zext i8 %1582 to i64
  %1584 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1583
  %1585 = load i64, ptr %1584, align 8, !tbaa !14
  %1586 = and i64 %1585, 255
  %1587 = lshr i64 %1578, %1586
  %1588 = or i64 %1587, %1585
  %1589 = getelementptr i8, ptr %1427, i64 %1438
  %1590 = load i8, ptr %1589, align 1, !tbaa !5
  %1591 = zext i8 %1590 to i64
  %1592 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1591
  %1593 = load i64, ptr %1592, align 8, !tbaa !14
  %1594 = and i64 %1593, 255
  %1595 = lshr i64 %1588, %1594
  %1596 = and i64 %1593, -256
  %1597 = add i64 %1545, %1538
  %1598 = add i64 %1597, %1552
  %1599 = add i64 %1598, %1559
  %1600 = add i64 %1599, %1566
  %1601 = add i64 %1600, %1585
  %1602 = add i64 %1601, %1593
  %1603 = and i64 %1602, 255
  %1604 = lshr i64 %1505, %1603
  %1605 = or i64 %1604, %1596
  %1606 = or i64 %1605, %1595
  %1607 = add i64 %1602, %1511
  %1608 = and i64 %1607, 255
  %1609 = lshr i64 %1608, 3
  %1610 = sub nsw i64 64, %1608
  %1611 = lshr i64 %1606, %1610
  %1612 = and i64 %1607, 7
  store i64 %1611, ptr %1512, align 1, !tbaa !14
  %1613 = getelementptr inbounds nuw i8, ptr %1512, i64 %1609
  %1614 = add nsw i64 %1438, -14
  %1615 = icmp sgt i64 %1438, 14
  br i1 %1615, label %1437, label %.loopexit30, !llvm.loop !78

1616:                                             ; preds = %296
  %1617 = srem i32 %23, 8
  %1618 = icmp sgt i32 %1617, 0
  br i1 %1618, label %1619, label %1687

1619:                                             ; preds = %1616
  %1620 = xor i32 %23, -2147483648
  %1621 = add nsw i32 %1617, -1
  %1622 = icmp ugt i32 %1620, %1621
  br i1 %1622, label %1623, label %.loopexit41, !prof !76, !nosanitize !46

1623:                                             ; preds = %1619
  %1624 = and i32 %1617, 1
  %1625 = icmp eq i32 %1621, 0
  br i1 %1625, label %.thread28, label %1626

1626:                                             ; preds = %1623
  %1627 = and i32 %1617, 2147483646
  br label %1628

1628:                                             ; preds = %1628, %1626
  %1629 = phi i32 [ %23, %1626 ], [ %1645, %1628 ]
  %1630 = phi i64 [ 0, %1626 ], [ %1655, %1628 ]
  %1631 = phi i64 [ 0, %1626 ], [ %1656, %1628 ]
  %1632 = phi i32 [ 0, %1626 ], [ %1657, %1628 ]
  %1633 = add i32 %1629, -1
  %1634 = sext i32 %1633 to i64
  %1635 = getelementptr inbounds i8, ptr %2, i64 %1634
  %1636 = load i8, ptr %1635, align 1, !tbaa !5
  %1637 = zext i8 %1636 to i64
  %1638 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1637
  %1639 = load i64, ptr %1638, align 8, !tbaa !14
  %1640 = and i64 %1639, 255
  %1641 = lshr i64 %1630, %1640
  %1642 = and i64 %1639, -256
  %1643 = or i64 %1641, %1642
  %1644 = add i64 %1639, %1631
  %1645 = add i32 %1629, -2
  %1646 = sext i32 %1645 to i64
  %1647 = getelementptr inbounds i8, ptr %2, i64 %1646
  %1648 = load i8, ptr %1647, align 1, !tbaa !5
  %1649 = zext i8 %1648 to i64
  %1650 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1649
  %1651 = load i64, ptr %1650, align 8, !tbaa !14
  %1652 = and i64 %1651, 255
  %1653 = lshr i64 %1643, %1652
  %1654 = and i64 %1651, -256
  %1655 = or i64 %1653, %1654
  %1656 = add i64 %1644, %1651
  %1657 = add i32 %1632, 2
  %1658 = icmp eq i32 %1657, %1627
  br i1 %1658, label %1659, label %1628, !llvm.loop !77

.loopexit41:                                      ; preds = %1933, %1930, %1927, %1924, %1921, %1918, %1830, %1715, %1712, %1709, %1706, %1703, %1700, %1697, %1694, %1619
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

1659:                                             ; preds = %1628
  %1660 = sub i32 %23, %1627
  %1661 = icmp eq i32 %1624, 0
  br i1 %1661, label %1677, label %.thread28

.thread28:                                        ; preds = %1623, %1659
  %1662 = phi i64 [ %1656, %1659 ], [ 0, %1623 ]
  %1663 = phi i64 [ %1655, %1659 ], [ 0, %1623 ]
  %1664 = phi i32 [ %1660, %1659 ], [ %23, %1623 ]
  %1665 = add i32 %1664, -1
  %1666 = sext i32 %1665 to i64
  %1667 = getelementptr inbounds i8, ptr %2, i64 %1666
  %1668 = load i8, ptr %1667, align 1, !tbaa !5
  %1669 = zext i8 %1668 to i64
  %1670 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1669
  %1671 = load i64, ptr %1670, align 8, !tbaa !14
  %1672 = and i64 %1671, 255
  %1673 = lshr i64 %1663, %1672
  %1674 = and i64 %1671, -256
  %1675 = or i64 %1673, %1674
  %1676 = add i64 %1671, %1662
  br label %1677

1677:                                             ; preds = %.thread28, %1659
  %1678 = phi i64 [ %1655, %1659 ], [ %1675, %.thread28 ]
  %1679 = phi i64 [ %1656, %1659 ], [ %1676, %.thread28 ]
  %1680 = sub nsw i32 %23, %1617
  %1681 = and i64 %1679, 255
  %1682 = lshr i64 %1681, 3
  %1683 = sub nsw i64 64, %1681
  %1684 = lshr i64 %1678, %1683
  %1685 = and i64 %1679, 7
  store i64 %1684, ptr %0, align 1, !tbaa !14
  %1686 = getelementptr inbounds nuw i8, ptr %0, i64 %1682
  br label %1687

1687:                                             ; preds = %1677, %1616
  %1688 = phi i64 [ %1685, %1677 ], [ 0, %1616 ]
  %1689 = phi ptr [ %1686, %1677 ], [ %0, %1616 ]
  %1690 = phi i64 [ %1678, %1677 ], [ 0, %1616 ]
  %1691 = phi i32 [ %1680, %1677 ], [ %23, %1616 ]
  %1692 = and i32 %1691, 15
  %1693 = icmp eq i32 %1692, 0
  br i1 %1693, label %1814, label %1694

1694:                                             ; preds = %1687
  %1695 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1691, i32 -1)
  %1696 = extractvalue { i32, i1 } %1695, 1, !nosanitize !46
  br i1 %1696, label %.loopexit41, label %1697, !prof !49, !nosanitize !46

1697:                                             ; preds = %1694
  %1698 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1691, i32 -2)
  %1699 = extractvalue { i32, i1 } %1698, 1, !nosanitize !46
  br i1 %1699, label %.loopexit41, label %1700, !prof !49, !nosanitize !46

1700:                                             ; preds = %1697
  %1701 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1691, i32 -3)
  %1702 = extractvalue { i32, i1 } %1701, 1, !nosanitize !46
  br i1 %1702, label %.loopexit41, label %1703, !prof !49, !nosanitize !46

1703:                                             ; preds = %1700
  %1704 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1691, i32 -4)
  %1705 = extractvalue { i32, i1 } %1704, 1, !nosanitize !46
  br i1 %1705, label %.loopexit41, label %1706, !prof !49, !nosanitize !46

1706:                                             ; preds = %1703
  %1707 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1691, i32 -5)
  %1708 = extractvalue { i32, i1 } %1707, 1, !nosanitize !46
  br i1 %1708, label %.loopexit41, label %1709, !prof !49, !nosanitize !46

1709:                                             ; preds = %1706
  %1710 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1691, i32 -6)
  %1711 = extractvalue { i32, i1 } %1710, 1, !nosanitize !46
  br i1 %1711, label %.loopexit41, label %1712, !prof !49, !nosanitize !46

1712:                                             ; preds = %1709
  %1713 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1691, i32 -7)
  %1714 = extractvalue { i32, i1 } %1713, 1, !nosanitize !46
  br i1 %1714, label %.loopexit41, label %1715, !prof !49, !nosanitize !46

1715:                                             ; preds = %1712
  %1716 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1691, i32 -8)
  %1717 = extractvalue { i32, i1 } %1716, 1, !nosanitize !46
  br i1 %1717, label %.loopexit41, label %1718, !prof !49, !nosanitize !46

1718:                                             ; preds = %1715
  %1719 = extractvalue { i32, i1 } %1713, 0, !nosanitize !46
  %1720 = sext i32 %1719 to i64
  %1721 = getelementptr inbounds i8, ptr %2, i64 %1720
  %1722 = load i8, ptr %1721, align 1, !tbaa !5
  %1723 = zext i8 %1722 to i64
  %1724 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1723
  %1725 = load i64, ptr %1724, align 8, !tbaa !14
  %1726 = extractvalue { i32, i1 } %1710, 0, !nosanitize !46
  %1727 = sext i32 %1726 to i64
  %1728 = getelementptr inbounds i8, ptr %2, i64 %1727
  %1729 = load i8, ptr %1728, align 1, !tbaa !5
  %1730 = zext i8 %1729 to i64
  %1731 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1730
  %1732 = load i64, ptr %1731, align 8, !tbaa !14
  %1733 = extractvalue { i32, i1 } %1707, 0, !nosanitize !46
  %1734 = sext i32 %1733 to i64
  %1735 = getelementptr inbounds i8, ptr %2, i64 %1734
  %1736 = load i8, ptr %1735, align 1, !tbaa !5
  %1737 = zext i8 %1736 to i64
  %1738 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1737
  %1739 = load i64, ptr %1738, align 8, !tbaa !14
  %1740 = extractvalue { i32, i1 } %1704, 0, !nosanitize !46
  %1741 = sext i32 %1740 to i64
  %1742 = getelementptr inbounds i8, ptr %2, i64 %1741
  %1743 = load i8, ptr %1742, align 1, !tbaa !5
  %1744 = zext i8 %1743 to i64
  %1745 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1744
  %1746 = load i64, ptr %1745, align 8, !tbaa !14
  %1747 = extractvalue { i32, i1 } %1701, 0, !nosanitize !46
  %1748 = sext i32 %1747 to i64
  %1749 = getelementptr inbounds i8, ptr %2, i64 %1748
  %1750 = load i8, ptr %1749, align 1, !tbaa !5
  %1751 = zext i8 %1750 to i64
  %1752 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1751
  %1753 = load i64, ptr %1752, align 8, !tbaa !14
  %1754 = extractvalue { i32, i1 } %1698, 0, !nosanitize !46
  %1755 = sext i32 %1754 to i64
  %1756 = getelementptr inbounds i8, ptr %2, i64 %1755
  %1757 = load i8, ptr %1756, align 1, !tbaa !5
  %1758 = zext i8 %1757 to i64
  %1759 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1758
  %1760 = load i64, ptr %1759, align 8, !tbaa !14
  %1761 = extractvalue { i32, i1 } %1695, 0, !nosanitize !46
  %1762 = sext i32 %1761 to i64
  %1763 = getelementptr inbounds i8, ptr %2, i64 %1762
  %1764 = load i8, ptr %1763, align 1, !tbaa !5
  %1765 = zext i8 %1764 to i64
  %1766 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1765
  %1767 = load i64, ptr %1766, align 8, !tbaa !14
  %1768 = and i64 %1767, 255
  %1769 = lshr i64 %1690, %1768
  %1770 = or i64 %1769, %1767
  %1771 = and i64 %1760, 255
  %1772 = lshr i64 %1770, %1771
  %1773 = or i64 %1772, %1760
  %1774 = and i64 %1753, 255
  %1775 = lshr i64 %1773, %1774
  %1776 = or i64 %1775, %1753
  %1777 = and i64 %1746, 255
  %1778 = lshr i64 %1776, %1777
  %1779 = or i64 %1778, %1746
  %1780 = and i64 %1739, 255
  %1781 = lshr i64 %1779, %1780
  %1782 = or i64 %1781, %1739
  %1783 = and i64 %1732, 255
  %1784 = lshr i64 %1782, %1783
  %1785 = or i64 %1784, %1732
  %1786 = and i64 %1725, 255
  %1787 = lshr i64 %1785, %1786
  %1788 = or i64 %1787, %1725
  %1789 = extractvalue { i32, i1 } %1716, 0, !nosanitize !46
  %1790 = sext i32 %1789 to i64
  %1791 = getelementptr inbounds i8, ptr %2, i64 %1790
  %1792 = load i8, ptr %1791, align 1, !tbaa !5
  %1793 = zext i8 %1792 to i64
  %1794 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1793
  %1795 = load i64, ptr %1794, align 8, !tbaa !14
  %1796 = and i64 %1795, 255
  %1797 = lshr i64 %1788, %1796
  %1798 = and i64 %1795, -256
  %1799 = or i64 %1797, %1798
  %1800 = add i64 %1725, %1688
  %1801 = add i64 %1800, %1732
  %1802 = add i64 %1801, %1739
  %1803 = add i64 %1802, %1746
  %1804 = add i64 %1803, %1753
  %1805 = add i64 %1804, %1760
  %1806 = add i64 %1805, %1767
  %1807 = add i64 %1806, %1795
  %1808 = and i64 %1807, 255
  %1809 = lshr i64 %1808, 3
  %1810 = sub nsw i64 64, %1808
  %1811 = lshr i64 %1799, %1810
  %1812 = and i64 %1807, 7
  store i64 %1811, ptr %1689, align 1, !tbaa !14
  %1813 = getelementptr inbounds nuw i8, ptr %1689, i64 %1809
  br label %1814

1814:                                             ; preds = %1718, %1687
  %1815 = phi i64 [ %1688, %1687 ], [ %1812, %1718 ]
  %1816 = phi ptr [ %1689, %1687 ], [ %1813, %1718 ]
  %1817 = phi i64 [ %1690, %1687 ], [ %1799, %1718 ]
  %1818 = phi i32 [ %1691, %1687 ], [ %1789, %1718 ]
  %1819 = getelementptr i8, ptr %2, i64 -16
  %1820 = icmp sgt i32 %1818, 0
  br i1 %1820, label %1821, label %.loopexit30

1821:                                             ; preds = %1814
  %1822 = zext nneg i32 %1818 to i64
  %1823 = getelementptr i8, ptr %2, i64 -1
  %1824 = getelementptr i8, ptr %2, i64 -2
  %1825 = getelementptr i8, ptr %2, i64 -3
  %1826 = getelementptr i8, ptr %2, i64 -4
  %1827 = getelementptr i8, ptr %2, i64 -5
  %1828 = getelementptr i8, ptr %2, i64 -6
  %1829 = getelementptr i8, ptr %2, i64 -7
  br label %1830

1830:                                             ; preds = %1936, %1821
  %1831 = phi i64 [ %1822, %1821 ], [ %2030, %1936 ]
  %1832 = phi i64 [ %1817, %1821 ], [ %2022, %1936 ]
  %1833 = phi ptr [ %1816, %1821 ], [ %2029, %1936 ]
  %1834 = phi i64 [ %1815, %1821 ], [ %2028, %1936 ]
  %1835 = getelementptr i8, ptr %1823, i64 %1831
  %1836 = load i8, ptr %1835, align 1, !tbaa !5
  %1837 = zext i8 %1836 to i64
  %1838 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1837
  %1839 = load i64, ptr %1838, align 8, !tbaa !14
  %1840 = and i64 %1839, 255
  %1841 = lshr i64 %1832, %1840
  %1842 = or i64 %1841, %1839
  %1843 = add i64 %1839, %1834
  %1844 = getelementptr i8, ptr %1824, i64 %1831
  %1845 = load i8, ptr %1844, align 1, !tbaa !5
  %1846 = zext i8 %1845 to i64
  %1847 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1846
  %1848 = load i64, ptr %1847, align 8, !tbaa !14
  %1849 = and i64 %1848, 255
  %1850 = lshr i64 %1842, %1849
  %1851 = or i64 %1850, %1848
  %1852 = add i64 %1843, %1848
  %1853 = getelementptr i8, ptr %1825, i64 %1831
  %1854 = load i8, ptr %1853, align 1, !tbaa !5
  %1855 = zext i8 %1854 to i64
  %1856 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1855
  %1857 = load i64, ptr %1856, align 8, !tbaa !14
  %1858 = and i64 %1857, 255
  %1859 = lshr i64 %1851, %1858
  %1860 = or i64 %1859, %1857
  %1861 = add i64 %1852, %1857
  %1862 = getelementptr i8, ptr %1826, i64 %1831
  %1863 = load i8, ptr %1862, align 1, !tbaa !5
  %1864 = zext i8 %1863 to i64
  %1865 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1864
  %1866 = load i64, ptr %1865, align 8, !tbaa !14
  %1867 = and i64 %1866, 255
  %1868 = lshr i64 %1860, %1867
  %1869 = or i64 %1868, %1866
  %1870 = add i64 %1861, %1866
  %1871 = getelementptr i8, ptr %1827, i64 %1831
  %1872 = load i8, ptr %1871, align 1, !tbaa !5
  %1873 = zext i8 %1872 to i64
  %1874 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1873
  %1875 = load i64, ptr %1874, align 8, !tbaa !14
  %1876 = and i64 %1875, 255
  %1877 = lshr i64 %1869, %1876
  %1878 = or i64 %1877, %1875
  %1879 = add i64 %1870, %1875
  %1880 = getelementptr i8, ptr %1828, i64 %1831
  %1881 = load i8, ptr %1880, align 1, !tbaa !5
  %1882 = zext i8 %1881 to i64
  %1883 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1882
  %1884 = load i64, ptr %1883, align 8, !tbaa !14
  %1885 = and i64 %1884, 255
  %1886 = lshr i64 %1878, %1885
  %1887 = or i64 %1886, %1884
  %1888 = add i64 %1879, %1884
  %1889 = getelementptr i8, ptr %1829, i64 %1831
  %1890 = load i8, ptr %1889, align 1, !tbaa !5
  %1891 = zext i8 %1890 to i64
  %1892 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1891
  %1893 = load i64, ptr %1892, align 8, !tbaa !14
  %1894 = and i64 %1893, 255
  %1895 = lshr i64 %1887, %1894
  %1896 = or i64 %1895, %1893
  %1897 = add i64 %1888, %1893
  %1898 = add nsw i64 %1831, -8
  %1899 = getelementptr inbounds i8, ptr %2, i64 %1898
  %1900 = load i8, ptr %1899, align 1, !tbaa !5
  %1901 = zext i8 %1900 to i64
  %1902 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1901
  %1903 = load i64, ptr %1902, align 8, !tbaa !14
  %1904 = and i64 %1903, 255
  %1905 = lshr i64 %1896, %1904
  %1906 = and i64 %1903, -256
  %1907 = or i64 %1905, %1906
  %1908 = add i64 %1897, %1903
  %1909 = and i64 %1908, 255
  %1910 = lshr i64 %1909, 3
  %1911 = sub nsw i64 64, %1909
  %1912 = lshr i64 %1907, %1911
  %1913 = and i64 %1908, 7
  store i64 %1912, ptr %1833, align 1, !tbaa !14
  %1914 = getelementptr inbounds nuw i8, ptr %1833, i64 %1910
  %1915 = trunc nsw i64 %1898 to i32
  %1916 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1915, i32 -1)
  %1917 = extractvalue { i32, i1 } %1916, 1, !nosanitize !46
  br i1 %1917, label %.loopexit41, label %1918, !prof !49, !nosanitize !46

1918:                                             ; preds = %1830
  %1919 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1915, i32 -2)
  %1920 = extractvalue { i32, i1 } %1919, 1, !nosanitize !46
  br i1 %1920, label %.loopexit41, label %1921, !prof !49, !nosanitize !46

1921:                                             ; preds = %1918
  %1922 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1915, i32 -3)
  %1923 = extractvalue { i32, i1 } %1922, 1, !nosanitize !46
  br i1 %1923, label %.loopexit41, label %1924, !prof !49, !nosanitize !46

1924:                                             ; preds = %1921
  %1925 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1915, i32 -4)
  %1926 = extractvalue { i32, i1 } %1925, 1, !nosanitize !46
  br i1 %1926, label %.loopexit41, label %1927, !prof !49, !nosanitize !46

1927:                                             ; preds = %1924
  %1928 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1915, i32 -5)
  %1929 = extractvalue { i32, i1 } %1928, 1, !nosanitize !46
  br i1 %1929, label %.loopexit41, label %1930, !prof !49, !nosanitize !46

1930:                                             ; preds = %1927
  %1931 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1915, i32 -6)
  %1932 = extractvalue { i32, i1 } %1931, 1, !nosanitize !46
  br i1 %1932, label %.loopexit41, label %1933, !prof !49, !nosanitize !46

1933:                                             ; preds = %1930
  %1934 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1915, i32 -7)
  %1935 = extractvalue { i32, i1 } %1934, 1, !nosanitize !46
  br i1 %1935, label %.loopexit41, label %1936, !prof !49, !nosanitize !46

1936:                                             ; preds = %1933
  %1937 = extractvalue { i32, i1 } %1931, 0, !nosanitize !46
  %1938 = sext i32 %1937 to i64
  %1939 = getelementptr inbounds i8, ptr %2, i64 %1938
  %1940 = load i8, ptr %1939, align 1, !tbaa !5
  %1941 = zext i8 %1940 to i64
  %1942 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1941
  %1943 = load i64, ptr %1942, align 8, !tbaa !14
  %1944 = extractvalue { i32, i1 } %1928, 0, !nosanitize !46
  %1945 = sext i32 %1944 to i64
  %1946 = getelementptr inbounds i8, ptr %2, i64 %1945
  %1947 = load i8, ptr %1946, align 1, !tbaa !5
  %1948 = zext i8 %1947 to i64
  %1949 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1948
  %1950 = load i64, ptr %1949, align 8, !tbaa !14
  %1951 = extractvalue { i32, i1 } %1925, 0, !nosanitize !46
  %1952 = sext i32 %1951 to i64
  %1953 = getelementptr inbounds i8, ptr %2, i64 %1952
  %1954 = load i8, ptr %1953, align 1, !tbaa !5
  %1955 = zext i8 %1954 to i64
  %1956 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1955
  %1957 = load i64, ptr %1956, align 8, !tbaa !14
  %1958 = extractvalue { i32, i1 } %1922, 0, !nosanitize !46
  %1959 = sext i32 %1958 to i64
  %1960 = getelementptr inbounds i8, ptr %2, i64 %1959
  %1961 = load i8, ptr %1960, align 1, !tbaa !5
  %1962 = zext i8 %1961 to i64
  %1963 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1962
  %1964 = load i64, ptr %1963, align 8, !tbaa !14
  %1965 = extractvalue { i32, i1 } %1919, 0, !nosanitize !46
  %1966 = sext i32 %1965 to i64
  %1967 = getelementptr inbounds i8, ptr %2, i64 %1966
  %1968 = load i8, ptr %1967, align 1, !tbaa !5
  %1969 = zext i8 %1968 to i64
  %1970 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1969
  %1971 = load i64, ptr %1970, align 8, !tbaa !14
  %1972 = extractvalue { i32, i1 } %1916, 0, !nosanitize !46
  %1973 = sext i32 %1972 to i64
  %1974 = getelementptr inbounds i8, ptr %2, i64 %1973
  %1975 = load i8, ptr %1974, align 1, !tbaa !5
  %1976 = zext i8 %1975 to i64
  %1977 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1976
  %1978 = load i64, ptr %1977, align 8, !tbaa !14
  %1979 = and i64 %1971, 255
  %1980 = lshr i64 %1978, %1979
  %1981 = or i64 %1980, %1971
  %1982 = and i64 %1964, 255
  %1983 = lshr i64 %1981, %1982
  %1984 = or i64 %1983, %1964
  %1985 = and i64 %1957, 255
  %1986 = lshr i64 %1984, %1985
  %1987 = or i64 %1986, %1957
  %1988 = and i64 %1950, 255
  %1989 = lshr i64 %1987, %1988
  %1990 = or i64 %1989, %1950
  %1991 = and i64 %1943, 255
  %1992 = lshr i64 %1990, %1991
  %1993 = or i64 %1992, %1943
  %1994 = extractvalue { i32, i1 } %1934, 0, !nosanitize !46
  %1995 = sext i32 %1994 to i64
  %1996 = getelementptr inbounds i8, ptr %2, i64 %1995
  %1997 = load i8, ptr %1996, align 1, !tbaa !5
  %1998 = zext i8 %1997 to i64
  %1999 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1998
  %2000 = load i64, ptr %1999, align 8, !tbaa !14
  %2001 = and i64 %2000, 255
  %2002 = lshr i64 %1993, %2001
  %2003 = or i64 %2002, %2000
  %2004 = getelementptr i8, ptr %1819, i64 %1831
  %2005 = load i8, ptr %2004, align 1, !tbaa !5
  %2006 = zext i8 %2005 to i64
  %2007 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2006
  %2008 = load i64, ptr %2007, align 8, !tbaa !14
  %2009 = and i64 %2008, 255
  %2010 = lshr i64 %2003, %2009
  %2011 = and i64 %2008, -256
  %2012 = add i64 %1950, %1943
  %2013 = add i64 %2012, %1957
  %2014 = add i64 %2013, %1964
  %2015 = add i64 %2014, %1971
  %2016 = add i64 %2015, %1978
  %2017 = add i64 %2016, %2000
  %2018 = add i64 %2017, %2008
  %2019 = and i64 %2018, 255
  %2020 = lshr i64 %1907, %2019
  %2021 = or i64 %2020, %2011
  %2022 = or i64 %2021, %2010
  %2023 = add i64 %2018, %1913
  %2024 = and i64 %2023, 255
  %2025 = lshr i64 %2024, 3
  %2026 = sub nsw i64 64, %2024
  %2027 = lshr i64 %2022, %2026
  %2028 = and i64 %2023, 7
  store i64 %2027, ptr %1914, align 1, !tbaa !14
  %2029 = getelementptr inbounds nuw i8, ptr %1914, i64 %2025
  %2030 = add nsw i64 %1831, -16
  %2031 = icmp sgt i64 %1831, 16
  br i1 %2031, label %1830, label %.loopexit30, !llvm.loop !78

2032:                                             ; preds = %296
  %2033 = srem i32 %23, 9
  %2034 = icmp sgt i32 %2033, 0
  br i1 %2034, label %2035, label %2103

2035:                                             ; preds = %2032
  %2036 = xor i32 %23, -2147483648
  %2037 = add nsw i32 %2033, -1
  %2038 = icmp ugt i32 %2036, %2037
  br i1 %2038, label %2039, label %.loopexit31, !prof !76, !nosanitize !46

2039:                                             ; preds = %2035
  %2040 = and i32 %2033, 1
  %2041 = icmp eq i32 %2037, 0
  br i1 %2041, label %.thread29, label %2042

2042:                                             ; preds = %2039
  %2043 = and i32 %2033, 2147483646
  br label %2044

2044:                                             ; preds = %2044, %2042
  %2045 = phi i32 [ %23, %2042 ], [ %2061, %2044 ]
  %2046 = phi i64 [ 0, %2042 ], [ %2071, %2044 ]
  %2047 = phi i64 [ 0, %2042 ], [ %2072, %2044 ]
  %2048 = phi i32 [ 0, %2042 ], [ %2073, %2044 ]
  %2049 = add i32 %2045, -1
  %2050 = sext i32 %2049 to i64
  %2051 = getelementptr inbounds i8, ptr %2, i64 %2050
  %2052 = load i8, ptr %2051, align 1, !tbaa !5
  %2053 = zext i8 %2052 to i64
  %2054 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2053
  %2055 = load i64, ptr %2054, align 8, !tbaa !14
  %2056 = and i64 %2055, 255
  %2057 = lshr i64 %2046, %2056
  %2058 = and i64 %2055, -256
  %2059 = or i64 %2057, %2058
  %2060 = add i64 %2055, %2047
  %2061 = add i32 %2045, -2
  %2062 = sext i32 %2061 to i64
  %2063 = getelementptr inbounds i8, ptr %2, i64 %2062
  %2064 = load i8, ptr %2063, align 1, !tbaa !5
  %2065 = zext i8 %2064 to i64
  %2066 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2065
  %2067 = load i64, ptr %2066, align 8, !tbaa !14
  %2068 = and i64 %2067, 255
  %2069 = lshr i64 %2059, %2068
  %2070 = and i64 %2067, -256
  %2071 = or i64 %2069, %2070
  %2072 = add i64 %2060, %2067
  %2073 = add i32 %2048, 2
  %2074 = icmp eq i32 %2073, %2043
  br i1 %2074, label %2075, label %2044, !llvm.loop !77

.loopexit31:                                      ; preds = %2374, %2371, %2368, %2365, %2362, %2359, %2356, %2260, %2134, %2131, %2128, %2125, %2122, %2119, %2116, %2113, %2110, %2035
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

2075:                                             ; preds = %2044
  %2076 = sub i32 %23, %2043
  %2077 = icmp eq i32 %2040, 0
  br i1 %2077, label %2093, label %.thread29

.thread29:                                        ; preds = %2039, %2075
  %2078 = phi i64 [ %2072, %2075 ], [ 0, %2039 ]
  %2079 = phi i64 [ %2071, %2075 ], [ 0, %2039 ]
  %2080 = phi i32 [ %2076, %2075 ], [ %23, %2039 ]
  %2081 = add i32 %2080, -1
  %2082 = sext i32 %2081 to i64
  %2083 = getelementptr inbounds i8, ptr %2, i64 %2082
  %2084 = load i8, ptr %2083, align 1, !tbaa !5
  %2085 = zext i8 %2084 to i64
  %2086 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2085
  %2087 = load i64, ptr %2086, align 8, !tbaa !14
  %2088 = and i64 %2087, 255
  %2089 = lshr i64 %2079, %2088
  %2090 = and i64 %2087, -256
  %2091 = or i64 %2089, %2090
  %2092 = add i64 %2087, %2078
  br label %2093

2093:                                             ; preds = %.thread29, %2075
  %2094 = phi i64 [ %2071, %2075 ], [ %2091, %.thread29 ]
  %2095 = phi i64 [ %2072, %2075 ], [ %2092, %.thread29 ]
  %2096 = sub nsw i32 %23, %2033
  %2097 = and i64 %2095, 255
  %2098 = lshr i64 %2097, 3
  %2099 = sub nsw i64 64, %2097
  %2100 = lshr i64 %2094, %2099
  %2101 = and i64 %2095, 7
  store i64 %2100, ptr %0, align 1, !tbaa !14
  %2102 = getelementptr inbounds nuw i8, ptr %0, i64 %2098
  br label %2103

2103:                                             ; preds = %2093, %2032
  %2104 = phi i64 [ %2101, %2093 ], [ 0, %2032 ]
  %2105 = phi ptr [ %2102, %2093 ], [ %0, %2032 ]
  %2106 = phi i64 [ %2094, %2093 ], [ 0, %2032 ]
  %2107 = phi i32 [ %2096, %2093 ], [ %23, %2032 ]
  %2108 = srem i32 %2107, 18
  %2109 = icmp eq i32 %2108, 0
  br i1 %2109, label %2243, label %2110

2110:                                             ; preds = %2103
  %2111 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2107, i32 -1)
  %2112 = extractvalue { i32, i1 } %2111, 1, !nosanitize !46
  br i1 %2112, label %.loopexit31, label %2113, !prof !49, !nosanitize !46

2113:                                             ; preds = %2110
  %2114 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2107, i32 -2)
  %2115 = extractvalue { i32, i1 } %2114, 1, !nosanitize !46
  br i1 %2115, label %.loopexit31, label %2116, !prof !49, !nosanitize !46

2116:                                             ; preds = %2113
  %2117 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2107, i32 -3)
  %2118 = extractvalue { i32, i1 } %2117, 1, !nosanitize !46
  br i1 %2118, label %.loopexit31, label %2119, !prof !49, !nosanitize !46

2119:                                             ; preds = %2116
  %2120 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2107, i32 -4)
  %2121 = extractvalue { i32, i1 } %2120, 1, !nosanitize !46
  br i1 %2121, label %.loopexit31, label %2122, !prof !49, !nosanitize !46

2122:                                             ; preds = %2119
  %2123 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2107, i32 -5)
  %2124 = extractvalue { i32, i1 } %2123, 1, !nosanitize !46
  br i1 %2124, label %.loopexit31, label %2125, !prof !49, !nosanitize !46

2125:                                             ; preds = %2122
  %2126 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2107, i32 -6)
  %2127 = extractvalue { i32, i1 } %2126, 1, !nosanitize !46
  br i1 %2127, label %.loopexit31, label %2128, !prof !49, !nosanitize !46

2128:                                             ; preds = %2125
  %2129 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2107, i32 -7)
  %2130 = extractvalue { i32, i1 } %2129, 1, !nosanitize !46
  br i1 %2130, label %.loopexit31, label %2131, !prof !49, !nosanitize !46

2131:                                             ; preds = %2128
  %2132 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2107, i32 -8)
  %2133 = extractvalue { i32, i1 } %2132, 1, !nosanitize !46
  br i1 %2133, label %.loopexit31, label %2134, !prof !49, !nosanitize !46

2134:                                             ; preds = %2131
  %2135 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2107, i32 -9)
  %2136 = extractvalue { i32, i1 } %2135, 1, !nosanitize !46
  br i1 %2136, label %.loopexit31, label %2137, !prof !49, !nosanitize !46

2137:                                             ; preds = %2134
  %2138 = extractvalue { i32, i1 } %2132, 0, !nosanitize !46
  %2139 = sext i32 %2138 to i64
  %2140 = getelementptr inbounds i8, ptr %2, i64 %2139
  %2141 = load i8, ptr %2140, align 1, !tbaa !5
  %2142 = zext i8 %2141 to i64
  %2143 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2142
  %2144 = load i64, ptr %2143, align 8, !tbaa !14
  %2145 = extractvalue { i32, i1 } %2129, 0, !nosanitize !46
  %2146 = sext i32 %2145 to i64
  %2147 = getelementptr inbounds i8, ptr %2, i64 %2146
  %2148 = load i8, ptr %2147, align 1, !tbaa !5
  %2149 = zext i8 %2148 to i64
  %2150 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2149
  %2151 = load i64, ptr %2150, align 8, !tbaa !14
  %2152 = extractvalue { i32, i1 } %2126, 0, !nosanitize !46
  %2153 = sext i32 %2152 to i64
  %2154 = getelementptr inbounds i8, ptr %2, i64 %2153
  %2155 = load i8, ptr %2154, align 1, !tbaa !5
  %2156 = zext i8 %2155 to i64
  %2157 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2156
  %2158 = load i64, ptr %2157, align 8, !tbaa !14
  %2159 = extractvalue { i32, i1 } %2123, 0, !nosanitize !46
  %2160 = sext i32 %2159 to i64
  %2161 = getelementptr inbounds i8, ptr %2, i64 %2160
  %2162 = load i8, ptr %2161, align 1, !tbaa !5
  %2163 = zext i8 %2162 to i64
  %2164 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2163
  %2165 = load i64, ptr %2164, align 8, !tbaa !14
  %2166 = extractvalue { i32, i1 } %2120, 0, !nosanitize !46
  %2167 = sext i32 %2166 to i64
  %2168 = getelementptr inbounds i8, ptr %2, i64 %2167
  %2169 = load i8, ptr %2168, align 1, !tbaa !5
  %2170 = zext i8 %2169 to i64
  %2171 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2170
  %2172 = load i64, ptr %2171, align 8, !tbaa !14
  %2173 = extractvalue { i32, i1 } %2117, 0, !nosanitize !46
  %2174 = sext i32 %2173 to i64
  %2175 = getelementptr inbounds i8, ptr %2, i64 %2174
  %2176 = load i8, ptr %2175, align 1, !tbaa !5
  %2177 = zext i8 %2176 to i64
  %2178 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2177
  %2179 = load i64, ptr %2178, align 8, !tbaa !14
  %2180 = extractvalue { i32, i1 } %2114, 0, !nosanitize !46
  %2181 = sext i32 %2180 to i64
  %2182 = getelementptr inbounds i8, ptr %2, i64 %2181
  %2183 = load i8, ptr %2182, align 1, !tbaa !5
  %2184 = zext i8 %2183 to i64
  %2185 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2184
  %2186 = load i64, ptr %2185, align 8, !tbaa !14
  %2187 = extractvalue { i32, i1 } %2111, 0, !nosanitize !46
  %2188 = sext i32 %2187 to i64
  %2189 = getelementptr inbounds i8, ptr %2, i64 %2188
  %2190 = load i8, ptr %2189, align 1, !tbaa !5
  %2191 = zext i8 %2190 to i64
  %2192 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2191
  %2193 = load i64, ptr %2192, align 8, !tbaa !14
  %2194 = and i64 %2193, 255
  %2195 = lshr i64 %2106, %2194
  %2196 = or i64 %2195, %2193
  %2197 = and i64 %2186, 255
  %2198 = lshr i64 %2196, %2197
  %2199 = or i64 %2198, %2186
  %2200 = and i64 %2179, 255
  %2201 = lshr i64 %2199, %2200
  %2202 = or i64 %2201, %2179
  %2203 = and i64 %2172, 255
  %2204 = lshr i64 %2202, %2203
  %2205 = or i64 %2204, %2172
  %2206 = and i64 %2165, 255
  %2207 = lshr i64 %2205, %2206
  %2208 = or i64 %2207, %2165
  %2209 = and i64 %2158, 255
  %2210 = lshr i64 %2208, %2209
  %2211 = or i64 %2210, %2158
  %2212 = and i64 %2151, 255
  %2213 = lshr i64 %2211, %2212
  %2214 = or i64 %2213, %2151
  %2215 = and i64 %2144, 255
  %2216 = lshr i64 %2214, %2215
  %2217 = or i64 %2216, %2144
  %2218 = extractvalue { i32, i1 } %2135, 0, !nosanitize !46
  %2219 = sext i32 %2218 to i64
  %2220 = getelementptr inbounds i8, ptr %2, i64 %2219
  %2221 = load i8, ptr %2220, align 1, !tbaa !5
  %2222 = zext i8 %2221 to i64
  %2223 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2222
  %2224 = load i64, ptr %2223, align 8, !tbaa !14
  %2225 = and i64 %2224, 255
  %2226 = lshr i64 %2217, %2225
  %2227 = or i64 %2226, %2224
  %2228 = add i64 %2144, %2104
  %2229 = add i64 %2228, %2151
  %2230 = add i64 %2229, %2158
  %2231 = add i64 %2230, %2165
  %2232 = add i64 %2231, %2172
  %2233 = add i64 %2232, %2179
  %2234 = add i64 %2233, %2186
  %2235 = add i64 %2234, %2193
  %2236 = add i64 %2235, %2224
  %2237 = and i64 %2236, 255
  %2238 = lshr i64 %2237, 3
  %2239 = sub nsw i64 64, %2237
  %2240 = lshr i64 %2227, %2239
  %2241 = and i64 %2236, 7
  store i64 %2240, ptr %2105, align 1, !tbaa !14
  %2242 = getelementptr inbounds nuw i8, ptr %2105, i64 %2238
  br label %2243

2243:                                             ; preds = %2137, %2103
  %2244 = phi i64 [ %2104, %2103 ], [ %2241, %2137 ]
  %2245 = phi ptr [ %2105, %2103 ], [ %2242, %2137 ]
  %2246 = phi i64 [ %2106, %2103 ], [ %2227, %2137 ]
  %2247 = phi i32 [ %2107, %2103 ], [ %2218, %2137 ]
  %2248 = getelementptr i8, ptr %2, i64 -18
  %2249 = icmp sgt i32 %2247, 0
  br i1 %2249, label %2250, label %.loopexit30

2250:                                             ; preds = %2243
  %2251 = zext nneg i32 %2247 to i64
  %2252 = getelementptr i8, ptr %2, i64 -1
  %2253 = getelementptr i8, ptr %2, i64 -2
  %2254 = getelementptr i8, ptr %2, i64 -3
  %2255 = getelementptr i8, ptr %2, i64 -4
  %2256 = getelementptr i8, ptr %2, i64 -5
  %2257 = getelementptr i8, ptr %2, i64 -6
  %2258 = getelementptr i8, ptr %2, i64 -7
  %2259 = getelementptr i8, ptr %2, i64 -8
  br label %2260

2260:                                             ; preds = %2377, %2250
  %2261 = phi i64 [ %2251, %2250 ], [ %2481, %2377 ]
  %2262 = phi i64 [ %2246, %2250 ], [ %2473, %2377 ]
  %2263 = phi ptr [ %2245, %2250 ], [ %2480, %2377 ]
  %2264 = phi i64 [ %2244, %2250 ], [ %2479, %2377 ]
  %2265 = getelementptr i8, ptr %2252, i64 %2261
  %2266 = load i8, ptr %2265, align 1, !tbaa !5
  %2267 = zext i8 %2266 to i64
  %2268 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2267
  %2269 = load i64, ptr %2268, align 8, !tbaa !14
  %2270 = and i64 %2269, 255
  %2271 = lshr i64 %2262, %2270
  %2272 = or i64 %2271, %2269
  %2273 = add i64 %2269, %2264
  %2274 = getelementptr i8, ptr %2253, i64 %2261
  %2275 = load i8, ptr %2274, align 1, !tbaa !5
  %2276 = zext i8 %2275 to i64
  %2277 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2276
  %2278 = load i64, ptr %2277, align 8, !tbaa !14
  %2279 = and i64 %2278, 255
  %2280 = lshr i64 %2272, %2279
  %2281 = or i64 %2280, %2278
  %2282 = add i64 %2273, %2278
  %2283 = getelementptr i8, ptr %2254, i64 %2261
  %2284 = load i8, ptr %2283, align 1, !tbaa !5
  %2285 = zext i8 %2284 to i64
  %2286 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2285
  %2287 = load i64, ptr %2286, align 8, !tbaa !14
  %2288 = and i64 %2287, 255
  %2289 = lshr i64 %2281, %2288
  %2290 = or i64 %2289, %2287
  %2291 = add i64 %2282, %2287
  %2292 = getelementptr i8, ptr %2255, i64 %2261
  %2293 = load i8, ptr %2292, align 1, !tbaa !5
  %2294 = zext i8 %2293 to i64
  %2295 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2294
  %2296 = load i64, ptr %2295, align 8, !tbaa !14
  %2297 = and i64 %2296, 255
  %2298 = lshr i64 %2290, %2297
  %2299 = or i64 %2298, %2296
  %2300 = add i64 %2291, %2296
  %2301 = getelementptr i8, ptr %2256, i64 %2261
  %2302 = load i8, ptr %2301, align 1, !tbaa !5
  %2303 = zext i8 %2302 to i64
  %2304 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2303
  %2305 = load i64, ptr %2304, align 8, !tbaa !14
  %2306 = and i64 %2305, 255
  %2307 = lshr i64 %2299, %2306
  %2308 = or i64 %2307, %2305
  %2309 = add i64 %2300, %2305
  %2310 = getelementptr i8, ptr %2257, i64 %2261
  %2311 = load i8, ptr %2310, align 1, !tbaa !5
  %2312 = zext i8 %2311 to i64
  %2313 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2312
  %2314 = load i64, ptr %2313, align 8, !tbaa !14
  %2315 = and i64 %2314, 255
  %2316 = lshr i64 %2308, %2315
  %2317 = or i64 %2316, %2314
  %2318 = add i64 %2309, %2314
  %2319 = getelementptr i8, ptr %2258, i64 %2261
  %2320 = load i8, ptr %2319, align 1, !tbaa !5
  %2321 = zext i8 %2320 to i64
  %2322 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2321
  %2323 = load i64, ptr %2322, align 8, !tbaa !14
  %2324 = and i64 %2323, 255
  %2325 = lshr i64 %2317, %2324
  %2326 = or i64 %2325, %2323
  %2327 = add i64 %2318, %2323
  %2328 = getelementptr i8, ptr %2259, i64 %2261
  %2329 = load i8, ptr %2328, align 1, !tbaa !5
  %2330 = zext i8 %2329 to i64
  %2331 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2330
  %2332 = load i64, ptr %2331, align 8, !tbaa !14
  %2333 = and i64 %2332, 255
  %2334 = lshr i64 %2326, %2333
  %2335 = or i64 %2334, %2332
  %2336 = add i64 %2327, %2332
  %2337 = add nsw i64 %2261, -9
  %2338 = getelementptr inbounds i8, ptr %2, i64 %2337
  %2339 = load i8, ptr %2338, align 1, !tbaa !5
  %2340 = zext i8 %2339 to i64
  %2341 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2340
  %2342 = load i64, ptr %2341, align 8, !tbaa !14
  %2343 = and i64 %2342, 255
  %2344 = lshr i64 %2335, %2343
  %2345 = or i64 %2344, %2342
  %2346 = add i64 %2336, %2342
  %2347 = and i64 %2346, 255
  %2348 = lshr i64 %2347, 3
  %2349 = sub nsw i64 64, %2347
  %2350 = lshr i64 %2345, %2349
  %2351 = and i64 %2346, 7
  store i64 %2350, ptr %2263, align 1, !tbaa !14
  %2352 = getelementptr inbounds nuw i8, ptr %2263, i64 %2348
  %2353 = trunc nsw i64 %2337 to i32
  %2354 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2353, i32 -1)
  %2355 = extractvalue { i32, i1 } %2354, 1, !nosanitize !46
  br i1 %2355, label %.loopexit31, label %2356, !prof !49, !nosanitize !46

2356:                                             ; preds = %2260
  %2357 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2353, i32 -2)
  %2358 = extractvalue { i32, i1 } %2357, 1, !nosanitize !46
  br i1 %2358, label %.loopexit31, label %2359, !prof !49, !nosanitize !46

2359:                                             ; preds = %2356
  %2360 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2353, i32 -3)
  %2361 = extractvalue { i32, i1 } %2360, 1, !nosanitize !46
  br i1 %2361, label %.loopexit31, label %2362, !prof !49, !nosanitize !46

2362:                                             ; preds = %2359
  %2363 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2353, i32 -4)
  %2364 = extractvalue { i32, i1 } %2363, 1, !nosanitize !46
  br i1 %2364, label %.loopexit31, label %2365, !prof !49, !nosanitize !46

2365:                                             ; preds = %2362
  %2366 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2353, i32 -5)
  %2367 = extractvalue { i32, i1 } %2366, 1, !nosanitize !46
  br i1 %2367, label %.loopexit31, label %2368, !prof !49, !nosanitize !46

2368:                                             ; preds = %2365
  %2369 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2353, i32 -6)
  %2370 = extractvalue { i32, i1 } %2369, 1, !nosanitize !46
  br i1 %2370, label %.loopexit31, label %2371, !prof !49, !nosanitize !46

2371:                                             ; preds = %2368
  %2372 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2353, i32 -7)
  %2373 = extractvalue { i32, i1 } %2372, 1, !nosanitize !46
  br i1 %2373, label %.loopexit31, label %2374, !prof !49, !nosanitize !46

2374:                                             ; preds = %2371
  %2375 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2353, i32 -8)
  %2376 = extractvalue { i32, i1 } %2375, 1, !nosanitize !46
  br i1 %2376, label %.loopexit31, label %2377, !prof !49, !nosanitize !46

2377:                                             ; preds = %2374
  %2378 = extractvalue { i32, i1 } %2372, 0, !nosanitize !46
  %2379 = sext i32 %2378 to i64
  %2380 = getelementptr inbounds i8, ptr %2, i64 %2379
  %2381 = load i8, ptr %2380, align 1, !tbaa !5
  %2382 = zext i8 %2381 to i64
  %2383 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2382
  %2384 = load i64, ptr %2383, align 8, !tbaa !14
  %2385 = extractvalue { i32, i1 } %2369, 0, !nosanitize !46
  %2386 = sext i32 %2385 to i64
  %2387 = getelementptr inbounds i8, ptr %2, i64 %2386
  %2388 = load i8, ptr %2387, align 1, !tbaa !5
  %2389 = zext i8 %2388 to i64
  %2390 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2389
  %2391 = load i64, ptr %2390, align 8, !tbaa !14
  %2392 = extractvalue { i32, i1 } %2366, 0, !nosanitize !46
  %2393 = sext i32 %2392 to i64
  %2394 = getelementptr inbounds i8, ptr %2, i64 %2393
  %2395 = load i8, ptr %2394, align 1, !tbaa !5
  %2396 = zext i8 %2395 to i64
  %2397 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2396
  %2398 = load i64, ptr %2397, align 8, !tbaa !14
  %2399 = extractvalue { i32, i1 } %2363, 0, !nosanitize !46
  %2400 = sext i32 %2399 to i64
  %2401 = getelementptr inbounds i8, ptr %2, i64 %2400
  %2402 = load i8, ptr %2401, align 1, !tbaa !5
  %2403 = zext i8 %2402 to i64
  %2404 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2403
  %2405 = load i64, ptr %2404, align 8, !tbaa !14
  %2406 = extractvalue { i32, i1 } %2360, 0, !nosanitize !46
  %2407 = sext i32 %2406 to i64
  %2408 = getelementptr inbounds i8, ptr %2, i64 %2407
  %2409 = load i8, ptr %2408, align 1, !tbaa !5
  %2410 = zext i8 %2409 to i64
  %2411 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2410
  %2412 = load i64, ptr %2411, align 8, !tbaa !14
  %2413 = extractvalue { i32, i1 } %2357, 0, !nosanitize !46
  %2414 = sext i32 %2413 to i64
  %2415 = getelementptr inbounds i8, ptr %2, i64 %2414
  %2416 = load i8, ptr %2415, align 1, !tbaa !5
  %2417 = zext i8 %2416 to i64
  %2418 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2417
  %2419 = load i64, ptr %2418, align 8, !tbaa !14
  %2420 = extractvalue { i32, i1 } %2354, 0, !nosanitize !46
  %2421 = sext i32 %2420 to i64
  %2422 = getelementptr inbounds i8, ptr %2, i64 %2421
  %2423 = load i8, ptr %2422, align 1, !tbaa !5
  %2424 = zext i8 %2423 to i64
  %2425 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2424
  %2426 = load i64, ptr %2425, align 8, !tbaa !14
  %2427 = and i64 %2419, 255
  %2428 = lshr i64 %2426, %2427
  %2429 = or i64 %2428, %2419
  %2430 = and i64 %2412, 255
  %2431 = lshr i64 %2429, %2430
  %2432 = or i64 %2431, %2412
  %2433 = and i64 %2405, 255
  %2434 = lshr i64 %2432, %2433
  %2435 = or i64 %2434, %2405
  %2436 = and i64 %2398, 255
  %2437 = lshr i64 %2435, %2436
  %2438 = or i64 %2437, %2398
  %2439 = and i64 %2391, 255
  %2440 = lshr i64 %2438, %2439
  %2441 = or i64 %2440, %2391
  %2442 = and i64 %2384, 255
  %2443 = lshr i64 %2441, %2442
  %2444 = or i64 %2443, %2384
  %2445 = extractvalue { i32, i1 } %2375, 0, !nosanitize !46
  %2446 = sext i32 %2445 to i64
  %2447 = getelementptr inbounds i8, ptr %2, i64 %2446
  %2448 = load i8, ptr %2447, align 1, !tbaa !5
  %2449 = zext i8 %2448 to i64
  %2450 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2449
  %2451 = load i64, ptr %2450, align 8, !tbaa !14
  %2452 = and i64 %2451, 255
  %2453 = lshr i64 %2444, %2452
  %2454 = or i64 %2453, %2451
  %2455 = getelementptr i8, ptr %2248, i64 %2261
  %2456 = load i8, ptr %2455, align 1, !tbaa !5
  %2457 = zext i8 %2456 to i64
  %2458 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2457
  %2459 = load i64, ptr %2458, align 8, !tbaa !14
  %2460 = and i64 %2459, 255
  %2461 = lshr i64 %2454, %2460
  %2462 = add i64 %2391, %2384
  %2463 = add i64 %2462, %2398
  %2464 = add i64 %2463, %2405
  %2465 = add i64 %2464, %2412
  %2466 = add i64 %2465, %2419
  %2467 = add i64 %2466, %2426
  %2468 = add i64 %2467, %2451
  %2469 = add i64 %2468, %2459
  %2470 = and i64 %2469, 255
  %2471 = lshr i64 %2345, %2470
  %2472 = or i64 %2471, %2461
  %2473 = or i64 %2472, %2459
  %2474 = add i64 %2469, %2351
  %2475 = and i64 %2474, 255
  %2476 = lshr i64 %2475, 3
  %2477 = sub nsw i64 64, %2475
  %2478 = lshr i64 %2473, %2477
  %2479 = and i64 %2474, 7
  store i64 %2478, ptr %2352, align 1, !tbaa !14
  %2480 = getelementptr inbounds nuw i8, ptr %2352, i64 %2476
  %2481 = add nsw i64 %2261, -18
  %2482 = icmp sgt i64 %2261, 18
  br i1 %2482, label %2260, label %.loopexit30, !llvm.loop !78

.loopexit30:                                      ; preds = %1936, %1531, %1164, %836, %536, %2377, %242, %2243, %1814, %1422, %1068, %754, %453, %170
  %2483 = phi i64 [ %171, %170 ], [ %2244, %2243 ], [ %454, %453 ], [ %755, %754 ], [ %1069, %1068 ], [ %1423, %1422 ], [ %1815, %1814 ], [ %595, %536 ], [ %894, %836 ], [ %1234, %1164 ], [ %1612, %1531 ], [ %290, %242 ], [ %2479, %2377 ], [ %2028, %1936 ]
  %2484 = phi ptr [ %172, %170 ], [ %2245, %2243 ], [ %455, %453 ], [ %756, %754 ], [ %1070, %1068 ], [ %1424, %1422 ], [ %1816, %1814 ], [ %596, %536 ], [ %895, %836 ], [ %1235, %1164 ], [ %1613, %1531 ], [ %293, %242 ], [ %2480, %2377 ], [ %2029, %1936 ]
  %2485 = phi i64 [ %173, %170 ], [ %2246, %2243 ], [ %456, %453 ], [ %757, %754 ], [ %1071, %1068 ], [ %1425, %1422 ], [ %1817, %1814 ], [ %589, %536 ], [ %888, %836 ], [ %1228, %1164 ], [ %1606, %1531 ], [ %284, %242 ], [ %2473, %2377 ], [ %2022, %1936 ]
  %2486 = lshr i64 %2485, 1
  %2487 = or disjoint i64 %2486, -9223372036854775808
  %2488 = add nuw nsw i64 %2483, -9223372036854775807
  %2489 = and i64 %2488, 255
  %2490 = lshr i64 %2489, 3
  %2491 = sub nuw nsw i64 64, %2489
  %2492 = lshr i64 %2487, %2491
  store i64 %2492, ptr %2484, align 1, !tbaa !14
  %2493 = getelementptr inbounds nuw i8, ptr %2484, i64 %2490
  %2494 = icmp ugt ptr %2493, %13
  %2495 = select i1 %2494, ptr %13, ptr %2493
  %2496 = icmp ult ptr %2495, %13
  br i1 %2496, label %2497, label %2505

2497:                                             ; preds = %.loopexit30
  %2498 = and i64 %2488, 7
  %2499 = ptrtoint ptr %2495 to i64
  %2500 = ptrtoint ptr %0 to i64
  %2501 = icmp ne i64 %2498, 0
  %2502 = zext i1 %2501 to i64
  %2503 = sub i64 %2502, %2500
  %2504 = add i64 %2503, %2499
  br label %2505

2505:                                             ; preds = %2497, %.loopexit30, %11, %5
  %2506 = phi i64 [ 0, %11 ], [ 0, %5 ], [ %2504, %2497 ], [ 0, %.loopexit30 ]
  ret i64 %2506
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
!52 = distinct !{!52, !18, !10, !11}
!53 = distinct !{!53, !9}
!54 = !{!42, !6, i64 7}
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
!76 = !{!"branch_weights", i32 1048575, i32 1}
!77 = distinct !{!77, !9}
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
