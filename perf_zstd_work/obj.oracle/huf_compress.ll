; ModuleID = '/mydata/ODeSSy/perf_zstd_work/obj.oracle/huf_compress.ll.mid'
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
  br label %2478

11:                                               ; preds = %6
  %12 = load i64, ptr %4, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 255
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %16 = icmp ult i64 %1, 8
  br i1 %16, label %2478, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %19 = getelementptr inbounds i8, ptr %18, i64 -8
  %20 = icmp eq i64 %1, 8
  br i1 %20, label %2478, label %21

21:                                               ; preds = %17
  %22 = and i64 %12, 255
  %23 = mul i64 %22, %3
  %24 = lshr i64 %23, 3
  %25 = add nuw nsw i64 %24, 8
  %26 = icmp ult i64 %1, %25
  %27 = icmp samesign ugt i32 %14, 11
  %28 = select i1 %26, i1 true, i1 %27
  %29 = trunc i64 %3 to i32
  br i1 %28, label %30, label %282

30:                                               ; preds = %21
  %31 = srem i32 %29, 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %86

33:                                               ; preds = %30
  %34 = icmp eq i32 %31, 1
  br i1 %34, label %.thread, label %35

.loopexit:                                        ; preds = %225, %222, %168, %99, %96, %93
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

35:                                               ; preds = %33
  %36 = and i32 %31, 1
  %37 = shl i64 %3, 32
  %sext = add i64 %37, -4294967296
  %38 = ashr exact i64 %sext, 32
  %39 = getelementptr inbounds i8, ptr %2, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !5
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !14
  %44 = shl i64 %3, 32
  %sext157 = add i64 %44, -8589934592
  %45 = ashr exact i64 %sext157, 32
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
  %sext158 = add i64 %62, -4294967296
  %63 = ashr exact i64 %sext158, 32
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
  br i1 %162, label %163, label %.loopexit28

163:                                              ; preds = %156
  %164 = zext nneg i32 %160 to i64
  %165 = getelementptr i8, ptr %2, i64 -1
  %166 = getelementptr i8, ptr %2, i64 -2
  %167 = getelementptr i8, ptr %2, i64 -3
  br label %168

168:                                              ; preds = %228, %163
  %169 = phi i64 [ %164, %163 ], [ %280, %228 ]
  %170 = phi i64 [ %159, %163 ], [ %270, %228 ]
  %171 = phi ptr [ %158, %163 ], [ %279, %228 ]
  %172 = phi i64 [ %157, %163 ], [ %276, %228 ]
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
  %212 = lshr i64 %211, 3
  %213 = sub nsw i64 64, %211
  %214 = lshr i64 %209, %213
  %215 = and i64 %210, 7
  store i64 %214, ptr %171, align 1, !tbaa !14
  %216 = getelementptr inbounds nuw i8, ptr %171, i64 %212
  %217 = icmp ugt ptr %216, %19
  %218 = select i1 %217, ptr %19, ptr %216
  %219 = trunc nsw i64 %200 to i32
  %220 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %219, i32 -1)
  %221 = extractvalue { i32, i1 } %220, 1, !nosanitize !46
  br i1 %221, label %.loopexit, label %222, !prof !49, !nosanitize !46

222:                                              ; preds = %168
  %223 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %219, i32 -2)
  %224 = extractvalue { i32, i1 } %223, 1, !nosanitize !46
  br i1 %224, label %.loopexit, label %225, !prof !49, !nosanitize !46

225:                                              ; preds = %222
  %226 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %219, i32 -3)
  %227 = extractvalue { i32, i1 } %226, 1, !nosanitize !46
  br i1 %227, label %.loopexit, label %228, !prof !49, !nosanitize !46

228:                                              ; preds = %225
  %229 = extractvalue { i32, i1 } %223, 0, !nosanitize !46
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, ptr %2, i64 %230
  %232 = load i8, ptr %231, align 1, !tbaa !5
  %233 = zext i8 %232 to i64
  %234 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %233
  %235 = load i64, ptr %234, align 8, !tbaa !14
  %236 = extractvalue { i32, i1 } %220, 0, !nosanitize !46
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8, ptr %2, i64 %237
  %239 = load i8, ptr %238, align 1, !tbaa !5
  %240 = zext i8 %239 to i64
  %241 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %240
  %242 = load i64, ptr %241, align 8, !tbaa !14
  %243 = add i64 %242, %235
  %244 = and i64 %235, 255
  %245 = lshr i64 %242, %244
  %246 = or i64 %245, %235
  %247 = extractvalue { i32, i1 } %226, 0, !nosanitize !46
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, ptr %2, i64 %248
  %250 = load i8, ptr %249, align 1, !tbaa !5
  %251 = zext i8 %250 to i64
  %252 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %251
  %253 = load i64, ptr %252, align 8, !tbaa !14
  %254 = and i64 %253, 255
  %255 = lshr i64 %246, %254
  %256 = or i64 %255, %253
  %257 = add i64 %243, %253
  %258 = getelementptr i8, ptr %161, i64 %169
  %259 = load i8, ptr %258, align 1, !tbaa !5
  %260 = zext i8 %259 to i64
  %261 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %260
  %262 = load i64, ptr %261, align 8, !tbaa !14
  %263 = and i64 %262, 255
  %264 = lshr i64 %256, %263
  %265 = and i64 %262, -256
  %266 = or i64 %264, %265
  %267 = add i64 %257, %262
  %268 = and i64 %267, 255
  %269 = lshr i64 %209, %268
  %270 = or i64 %266, %269
  %271 = add i64 %267, %215
  %272 = and i64 %271, 255
  %273 = lshr i64 %272, 3
  %274 = sub nsw i64 64, %272
  %275 = lshr i64 %270, %274
  %276 = and i64 %271, 7
  store i64 %275, ptr %218, align 1, !tbaa !14
  %277 = getelementptr inbounds nuw i8, ptr %218, i64 %273
  %278 = icmp ugt ptr %277, %19
  %279 = select i1 %278, ptr %19, ptr %277
  %280 = add nsw i64 %169, -8
  %281 = icmp sgt i64 %169, 8
  br i1 %281, label %168, label %.loopexit28, !llvm.loop !76

282:                                              ; preds = %21
  switch i32 %14, label %2008 [
    i32 11, label %283
    i32 10, label %585
    i32 9, label %884
    i32 8, label %1224
    i32 7, label %1599
  ]

283:                                              ; preds = %282
  %284 = srem i32 %29, 5
  %285 = icmp sgt i32 %284, 0
  br i1 %285, label %286, label %354

286:                                              ; preds = %283
  %287 = xor i32 %29, -2147483648
  %288 = add nsw i32 %284, -1
  %289 = icmp ugt i32 %287, %288
  br i1 %289, label %290, label %.loopexit31, !prof !77, !nosanitize !46

290:                                              ; preds = %286
  %291 = and i32 %284, 1
  %292 = icmp eq i32 %288, 0
  br i1 %292, label %.thread22, label %293

293:                                              ; preds = %290
  %294 = and i32 %284, 2147483646
  br label %295

295:                                              ; preds = %295, %293
  %296 = phi i32 [ %29, %293 ], [ %312, %295 ]
  %297 = phi i64 [ 0, %293 ], [ %322, %295 ]
  %298 = phi i64 [ 0, %293 ], [ %323, %295 ]
  %299 = phi i32 [ 0, %293 ], [ %324, %295 ]
  %300 = add i32 %296, -1
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, ptr %2, i64 %301
  %303 = load i8, ptr %302, align 1, !tbaa !5
  %304 = zext i8 %303 to i64
  %305 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %304
  %306 = load i64, ptr %305, align 8, !tbaa !14
  %307 = and i64 %306, 255
  %308 = lshr i64 %297, %307
  %309 = and i64 %306, -256
  %310 = or i64 %308, %309
  %311 = add i64 %306, %298
  %312 = add i32 %296, -2
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8, ptr %2, i64 %313
  %315 = load i8, ptr %314, align 1, !tbaa !5
  %316 = zext i8 %315 to i64
  %317 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %316
  %318 = load i64, ptr %317, align 8, !tbaa !14
  %319 = and i64 %318, 255
  %320 = lshr i64 %310, %319
  %321 = and i64 %318, -256
  %322 = or i64 %320, %321
  %323 = add i64 %311, %318
  %324 = add i32 %299, 2
  %325 = icmp eq i32 %324, %294
  br i1 %325, label %326, label %295, !llvm.loop !78

.loopexit31:                                      ; preds = %519, %516, %513, %452, %373, %370, %367, %364, %361, %286
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

326:                                              ; preds = %295
  %327 = sub i32 %29, %294
  %328 = icmp eq i32 %291, 0
  br i1 %328, label %344, label %.thread22

.thread22:                                        ; preds = %290, %326
  %329 = phi i64 [ %323, %326 ], [ 0, %290 ]
  %330 = phi i64 [ %322, %326 ], [ 0, %290 ]
  %331 = phi i32 [ %327, %326 ], [ %29, %290 ]
  %332 = add i32 %331, -1
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
  %343 = add i64 %338, %329
  br label %344

344:                                              ; preds = %.thread22, %326
  %345 = phi i64 [ %322, %326 ], [ %342, %.thread22 ]
  %346 = phi i64 [ %323, %326 ], [ %343, %.thread22 ]
  %347 = sub nsw i32 %29, %284
  %348 = and i64 %346, 255
  %349 = lshr i64 %348, 3
  %350 = sub nsw i64 64, %348
  %351 = lshr i64 %345, %350
  %352 = and i64 %346, 7
  store i64 %351, ptr %0, align 1, !tbaa !14
  %353 = getelementptr inbounds nuw i8, ptr %0, i64 %349
  br label %354

354:                                              ; preds = %344, %283
  %355 = phi i64 [ %352, %344 ], [ 0, %283 ]
  %356 = phi ptr [ %353, %344 ], [ %0, %283 ]
  %357 = phi i64 [ %345, %344 ], [ 0, %283 ]
  %358 = phi i32 [ %347, %344 ], [ %29, %283 ]
  %359 = srem i32 %358, 10
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %439, label %361

361:                                              ; preds = %354
  %362 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %358, i32 -1)
  %363 = extractvalue { i32, i1 } %362, 1, !nosanitize !46
  br i1 %363, label %.loopexit31, label %364, !prof !49, !nosanitize !46

364:                                              ; preds = %361
  %365 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %358, i32 -2)
  %366 = extractvalue { i32, i1 } %365, 1, !nosanitize !46
  br i1 %366, label %.loopexit31, label %367, !prof !49, !nosanitize !46

367:                                              ; preds = %364
  %368 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %358, i32 -3)
  %369 = extractvalue { i32, i1 } %368, 1, !nosanitize !46
  br i1 %369, label %.loopexit31, label %370, !prof !49, !nosanitize !46

370:                                              ; preds = %367
  %371 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %358, i32 -4)
  %372 = extractvalue { i32, i1 } %371, 1, !nosanitize !46
  br i1 %372, label %.loopexit31, label %373, !prof !49, !nosanitize !46

373:                                              ; preds = %370
  %374 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %358, i32 -5)
  %375 = extractvalue { i32, i1 } %374, 1, !nosanitize !46
  br i1 %375, label %.loopexit31, label %376, !prof !49, !nosanitize !46

376:                                              ; preds = %373
  %377 = extractvalue { i32, i1 } %371, 0, !nosanitize !46
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8, ptr %2, i64 %378
  %380 = load i8, ptr %379, align 1, !tbaa !5
  %381 = zext i8 %380 to i64
  %382 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %381
  %383 = load i64, ptr %382, align 8, !tbaa !14
  %384 = extractvalue { i32, i1 } %368, 0, !nosanitize !46
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8, ptr %2, i64 %385
  %387 = load i8, ptr %386, align 1, !tbaa !5
  %388 = zext i8 %387 to i64
  %389 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %388
  %390 = load i64, ptr %389, align 8, !tbaa !14
  %391 = extractvalue { i32, i1 } %365, 0, !nosanitize !46
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8, ptr %2, i64 %392
  %394 = load i8, ptr %393, align 1, !tbaa !5
  %395 = zext i8 %394 to i64
  %396 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %395
  %397 = load i64, ptr %396, align 8, !tbaa !14
  %398 = extractvalue { i32, i1 } %362, 0, !nosanitize !46
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8, ptr %2, i64 %399
  %401 = load i8, ptr %400, align 1, !tbaa !5
  %402 = zext i8 %401 to i64
  %403 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %402
  %404 = load i64, ptr %403, align 8, !tbaa !14
  %405 = and i64 %404, 255
  %406 = lshr i64 %357, %405
  %407 = or i64 %406, %404
  %408 = and i64 %397, 255
  %409 = lshr i64 %407, %408
  %410 = or i64 %409, %397
  %411 = and i64 %390, 255
  %412 = lshr i64 %410, %411
  %413 = or i64 %412, %390
  %414 = and i64 %383, 255
  %415 = lshr i64 %413, %414
  %416 = or i64 %415, %383
  %417 = extractvalue { i32, i1 } %374, 0, !nosanitize !46
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i8, ptr %2, i64 %418
  %420 = load i8, ptr %419, align 1, !tbaa !5
  %421 = zext i8 %420 to i64
  %422 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %421
  %423 = load i64, ptr %422, align 8, !tbaa !14
  %424 = and i64 %423, 255
  %425 = lshr i64 %416, %424
  %426 = and i64 %423, -256
  %427 = or i64 %425, %426
  %428 = add i64 %383, %355
  %429 = add i64 %428, %390
  %430 = add i64 %429, %397
  %431 = add i64 %430, %404
  %432 = add i64 %431, %423
  %433 = and i64 %432, 255
  %434 = lshr i64 %433, 3
  %435 = sub nsw i64 64, %433
  %436 = lshr i64 %427, %435
  %437 = and i64 %432, 7
  store i64 %436, ptr %356, align 1, !tbaa !14
  %438 = getelementptr inbounds nuw i8, ptr %356, i64 %434
  br label %439

439:                                              ; preds = %376, %354
  %440 = phi i64 [ %355, %354 ], [ %437, %376 ]
  %441 = phi ptr [ %356, %354 ], [ %438, %376 ]
  %442 = phi i64 [ %357, %354 ], [ %427, %376 ]
  %443 = phi i32 [ %358, %354 ], [ %417, %376 ]
  %444 = getelementptr i8, ptr %2, i64 -10
  %445 = icmp sgt i32 %443, 0
  br i1 %445, label %446, label %.loopexit28

446:                                              ; preds = %439
  %447 = zext nneg i32 %443 to i64
  %448 = getelementptr i8, ptr %2, i64 -1
  %449 = getelementptr i8, ptr %2, i64 -2
  %450 = getelementptr i8, ptr %2, i64 -3
  %451 = getelementptr i8, ptr %2, i64 -4
  br label %452

452:                                              ; preds = %522, %446
  %453 = phi i64 [ %447, %446 ], [ %583, %522 ]
  %454 = phi i64 [ %442, %446 ], [ %575, %522 ]
  %455 = phi ptr [ %441, %446 ], [ %582, %522 ]
  %456 = phi i64 [ %440, %446 ], [ %581, %522 ]
  %457 = getelementptr i8, ptr %448, i64 %453
  %458 = load i8, ptr %457, align 1, !tbaa !5
  %459 = zext i8 %458 to i64
  %460 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %459
  %461 = load i64, ptr %460, align 8, !tbaa !14
  %462 = and i64 %461, 255
  %463 = lshr i64 %454, %462
  %464 = or i64 %463, %461
  %465 = add i64 %461, %456
  %466 = getelementptr i8, ptr %449, i64 %453
  %467 = load i8, ptr %466, align 1, !tbaa !5
  %468 = zext i8 %467 to i64
  %469 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %468
  %470 = load i64, ptr %469, align 8, !tbaa !14
  %471 = and i64 %470, 255
  %472 = lshr i64 %464, %471
  %473 = or i64 %472, %470
  %474 = add i64 %465, %470
  %475 = getelementptr i8, ptr %450, i64 %453
  %476 = load i8, ptr %475, align 1, !tbaa !5
  %477 = zext i8 %476 to i64
  %478 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %477
  %479 = load i64, ptr %478, align 8, !tbaa !14
  %480 = and i64 %479, 255
  %481 = lshr i64 %473, %480
  %482 = or i64 %481, %479
  %483 = add i64 %474, %479
  %484 = getelementptr i8, ptr %451, i64 %453
  %485 = load i8, ptr %484, align 1, !tbaa !5
  %486 = zext i8 %485 to i64
  %487 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %486
  %488 = load i64, ptr %487, align 8, !tbaa !14
  %489 = and i64 %488, 255
  %490 = lshr i64 %482, %489
  %491 = or i64 %490, %488
  %492 = add i64 %483, %488
  %493 = add nsw i64 %453, -5
  %494 = getelementptr inbounds i8, ptr %2, i64 %493
  %495 = load i8, ptr %494, align 1, !tbaa !5
  %496 = zext i8 %495 to i64
  %497 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %496
  %498 = load i64, ptr %497, align 8, !tbaa !14
  %499 = and i64 %498, 255
  %500 = lshr i64 %491, %499
  %501 = and i64 %498, -256
  %502 = or i64 %500, %501
  %503 = add i64 %492, %498
  %504 = and i64 %503, 255
  %505 = lshr i64 %504, 3
  %506 = sub nsw i64 64, %504
  %507 = lshr i64 %502, %506
  %508 = and i64 %503, 7
  store i64 %507, ptr %455, align 1, !tbaa !14
  %509 = getelementptr inbounds nuw i8, ptr %455, i64 %505
  %510 = trunc nsw i64 %493 to i32
  %511 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %510, i32 -1)
  %512 = extractvalue { i32, i1 } %511, 1, !nosanitize !46
  br i1 %512, label %.loopexit31, label %513, !prof !49, !nosanitize !46

513:                                              ; preds = %452
  %514 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %510, i32 -2)
  %515 = extractvalue { i32, i1 } %514, 1, !nosanitize !46
  br i1 %515, label %.loopexit31, label %516, !prof !49, !nosanitize !46

516:                                              ; preds = %513
  %517 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %510, i32 -3)
  %518 = extractvalue { i32, i1 } %517, 1, !nosanitize !46
  br i1 %518, label %.loopexit31, label %519, !prof !49, !nosanitize !46

519:                                              ; preds = %516
  %520 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %510, i32 -4)
  %521 = extractvalue { i32, i1 } %520, 1, !nosanitize !46
  br i1 %521, label %.loopexit31, label %522, !prof !49, !nosanitize !46

522:                                              ; preds = %519
  %523 = extractvalue { i32, i1 } %517, 0, !nosanitize !46
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i8, ptr %2, i64 %524
  %526 = load i8, ptr %525, align 1, !tbaa !5
  %527 = zext i8 %526 to i64
  %528 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %527
  %529 = load i64, ptr %528, align 8, !tbaa !14
  %530 = extractvalue { i32, i1 } %514, 0, !nosanitize !46
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i8, ptr %2, i64 %531
  %533 = load i8, ptr %532, align 1, !tbaa !5
  %534 = zext i8 %533 to i64
  %535 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %534
  %536 = load i64, ptr %535, align 8, !tbaa !14
  %537 = extractvalue { i32, i1 } %511, 0, !nosanitize !46
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i8, ptr %2, i64 %538
  %540 = load i8, ptr %539, align 1, !tbaa !5
  %541 = zext i8 %540 to i64
  %542 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %541
  %543 = load i64, ptr %542, align 8, !tbaa !14
  %544 = and i64 %536, 255
  %545 = lshr i64 %543, %544
  %546 = or i64 %545, %536
  %547 = and i64 %529, 255
  %548 = lshr i64 %546, %547
  %549 = or i64 %548, %529
  %550 = extractvalue { i32, i1 } %520, 0, !nosanitize !46
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i8, ptr %2, i64 %551
  %553 = load i8, ptr %552, align 1, !tbaa !5
  %554 = zext i8 %553 to i64
  %555 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %554
  %556 = load i64, ptr %555, align 8, !tbaa !14
  %557 = and i64 %556, 255
  %558 = lshr i64 %549, %557
  %559 = or i64 %558, %556
  %560 = getelementptr i8, ptr %444, i64 %453
  %561 = load i8, ptr %560, align 1, !tbaa !5
  %562 = zext i8 %561 to i64
  %563 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %562
  %564 = load i64, ptr %563, align 8, !tbaa !14
  %565 = and i64 %564, 255
  %566 = lshr i64 %559, %565
  %567 = and i64 %564, -256
  %568 = or i64 %566, %567
  %569 = add i64 %536, %529
  %570 = add i64 %569, %543
  %571 = add i64 %570, %556
  %572 = add i64 %571, %564
  %573 = and i64 %572, 255
  %574 = lshr i64 %502, %573
  %575 = or i64 %568, %574
  %576 = add i64 %572, %508
  %577 = and i64 %576, 255
  %578 = lshr i64 %577, 3
  %579 = sub nsw i64 64, %577
  %580 = lshr i64 %575, %579
  %581 = and i64 %576, 7
  store i64 %580, ptr %509, align 1, !tbaa !14
  %582 = getelementptr inbounds nuw i8, ptr %509, i64 %578
  %583 = add nsw i64 %453, -10
  %584 = icmp sgt i64 %453, 10
  br i1 %584, label %452, label %.loopexit28, !llvm.loop !76

585:                                              ; preds = %282
  %586 = srem i32 %29, 5
  %587 = icmp sgt i32 %586, 0
  br i1 %587, label %588, label %656

588:                                              ; preds = %585
  %589 = xor i32 %29, -2147483648
  %590 = add nsw i32 %586, -1
  %591 = icmp ugt i32 %589, %590
  br i1 %591, label %592, label %.loopexit33, !prof !77, !nosanitize !46

592:                                              ; preds = %588
  %593 = and i32 %586, 1
  %594 = icmp eq i32 %590, 0
  br i1 %594, label %.thread23, label %595

595:                                              ; preds = %592
  %596 = and i32 %586, 2147483646
  br label %597

597:                                              ; preds = %597, %595
  %598 = phi i32 [ %29, %595 ], [ %614, %597 ]
  %599 = phi i64 [ 0, %595 ], [ %624, %597 ]
  %600 = phi i64 [ 0, %595 ], [ %625, %597 ]
  %601 = phi i32 [ 0, %595 ], [ %626, %597 ]
  %602 = add i32 %598, -1
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i8, ptr %2, i64 %603
  %605 = load i8, ptr %604, align 1, !tbaa !5
  %606 = zext i8 %605 to i64
  %607 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %606
  %608 = load i64, ptr %607, align 8, !tbaa !14
  %609 = and i64 %608, 255
  %610 = lshr i64 %599, %609
  %611 = and i64 %608, -256
  %612 = or i64 %610, %611
  %613 = add i64 %608, %600
  %614 = add i32 %598, -2
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds i8, ptr %2, i64 %615
  %617 = load i8, ptr %616, align 1, !tbaa !5
  %618 = zext i8 %617 to i64
  %619 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %618
  %620 = load i64, ptr %619, align 8, !tbaa !14
  %621 = and i64 %620, 255
  %622 = lshr i64 %612, %621
  %623 = and i64 %620, -256
  %624 = or i64 %622, %623
  %625 = add i64 %613, %620
  %626 = add i32 %601, 2
  %627 = icmp eq i32 %626, %596
  br i1 %627, label %628, label %597, !llvm.loop !78

.loopexit33:                                      ; preds = %819, %816, %813, %753, %675, %672, %669, %666, %663, %588
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

628:                                              ; preds = %597
  %629 = sub i32 %29, %596
  %630 = icmp eq i32 %593, 0
  br i1 %630, label %646, label %.thread23

.thread23:                                        ; preds = %592, %628
  %631 = phi i64 [ %625, %628 ], [ 0, %592 ]
  %632 = phi i64 [ %624, %628 ], [ 0, %592 ]
  %633 = phi i32 [ %629, %628 ], [ %29, %592 ]
  %634 = add i32 %633, -1
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
  %645 = add i64 %640, %631
  br label %646

646:                                              ; preds = %.thread23, %628
  %647 = phi i64 [ %624, %628 ], [ %644, %.thread23 ]
  %648 = phi i64 [ %625, %628 ], [ %645, %.thread23 ]
  %649 = sub nsw i32 %29, %586
  %650 = and i64 %648, 255
  %651 = lshr i64 %650, 3
  %652 = sub nsw i64 64, %650
  %653 = lshr i64 %647, %652
  %654 = and i64 %648, 7
  store i64 %653, ptr %0, align 1, !tbaa !14
  %655 = getelementptr inbounds nuw i8, ptr %0, i64 %651
  br label %656

656:                                              ; preds = %646, %585
  %657 = phi i64 [ %654, %646 ], [ 0, %585 ]
  %658 = phi ptr [ %655, %646 ], [ %0, %585 ]
  %659 = phi i64 [ %647, %646 ], [ 0, %585 ]
  %660 = phi i32 [ %649, %646 ], [ %29, %585 ]
  %661 = srem i32 %660, 10
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %740, label %663

663:                                              ; preds = %656
  %664 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %660, i32 -1)
  %665 = extractvalue { i32, i1 } %664, 1, !nosanitize !46
  br i1 %665, label %.loopexit33, label %666, !prof !49, !nosanitize !46

666:                                              ; preds = %663
  %667 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %660, i32 -2)
  %668 = extractvalue { i32, i1 } %667, 1, !nosanitize !46
  br i1 %668, label %.loopexit33, label %669, !prof !49, !nosanitize !46

669:                                              ; preds = %666
  %670 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %660, i32 -3)
  %671 = extractvalue { i32, i1 } %670, 1, !nosanitize !46
  br i1 %671, label %.loopexit33, label %672, !prof !49, !nosanitize !46

672:                                              ; preds = %669
  %673 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %660, i32 -4)
  %674 = extractvalue { i32, i1 } %673, 1, !nosanitize !46
  br i1 %674, label %.loopexit33, label %675, !prof !49, !nosanitize !46

675:                                              ; preds = %672
  %676 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %660, i32 -5)
  %677 = extractvalue { i32, i1 } %676, 1, !nosanitize !46
  br i1 %677, label %.loopexit33, label %678, !prof !49, !nosanitize !46

678:                                              ; preds = %675
  %679 = extractvalue { i32, i1 } %673, 0, !nosanitize !46
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds i8, ptr %2, i64 %680
  %682 = load i8, ptr %681, align 1, !tbaa !5
  %683 = zext i8 %682 to i64
  %684 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %683
  %685 = load i64, ptr %684, align 8, !tbaa !14
  %686 = extractvalue { i32, i1 } %670, 0, !nosanitize !46
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds i8, ptr %2, i64 %687
  %689 = load i8, ptr %688, align 1, !tbaa !5
  %690 = zext i8 %689 to i64
  %691 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %690
  %692 = load i64, ptr %691, align 8, !tbaa !14
  %693 = extractvalue { i32, i1 } %667, 0, !nosanitize !46
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds i8, ptr %2, i64 %694
  %696 = load i8, ptr %695, align 1, !tbaa !5
  %697 = zext i8 %696 to i64
  %698 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %697
  %699 = load i64, ptr %698, align 8, !tbaa !14
  %700 = extractvalue { i32, i1 } %664, 0, !nosanitize !46
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i8, ptr %2, i64 %701
  %703 = load i8, ptr %702, align 1, !tbaa !5
  %704 = zext i8 %703 to i64
  %705 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %704
  %706 = load i64, ptr %705, align 8, !tbaa !14
  %707 = and i64 %706, 255
  %708 = lshr i64 %659, %707
  %709 = or i64 %708, %706
  %710 = and i64 %699, 255
  %711 = lshr i64 %709, %710
  %712 = or i64 %711, %699
  %713 = and i64 %692, 255
  %714 = lshr i64 %712, %713
  %715 = or i64 %714, %692
  %716 = and i64 %685, 255
  %717 = lshr i64 %715, %716
  %718 = or i64 %717, %685
  %719 = extractvalue { i32, i1 } %676, 0, !nosanitize !46
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds i8, ptr %2, i64 %720
  %722 = load i8, ptr %721, align 1, !tbaa !5
  %723 = zext i8 %722 to i64
  %724 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %723
  %725 = load i64, ptr %724, align 8, !tbaa !14
  %726 = and i64 %725, 255
  %727 = lshr i64 %718, %726
  %728 = or i64 %727, %725
  %729 = add i64 %685, %657
  %730 = add i64 %729, %692
  %731 = add i64 %730, %699
  %732 = add i64 %731, %706
  %733 = add i64 %732, %725
  %734 = and i64 %733, 255
  %735 = lshr i64 %734, 3
  %736 = sub nsw i64 64, %734
  %737 = lshr i64 %728, %736
  %738 = and i64 %733, 7
  store i64 %737, ptr %658, align 1, !tbaa !14
  %739 = getelementptr inbounds nuw i8, ptr %658, i64 %735
  br label %740

740:                                              ; preds = %678, %656
  %741 = phi i64 [ %657, %656 ], [ %738, %678 ]
  %742 = phi ptr [ %658, %656 ], [ %739, %678 ]
  %743 = phi i64 [ %659, %656 ], [ %728, %678 ]
  %744 = phi i32 [ %660, %656 ], [ %719, %678 ]
  %745 = getelementptr i8, ptr %2, i64 -10
  %746 = icmp sgt i32 %744, 0
  br i1 %746, label %747, label %.loopexit28

747:                                              ; preds = %740
  %748 = zext nneg i32 %744 to i64
  %749 = getelementptr i8, ptr %2, i64 -1
  %750 = getelementptr i8, ptr %2, i64 -2
  %751 = getelementptr i8, ptr %2, i64 -3
  %752 = getelementptr i8, ptr %2, i64 -4
  br label %753

753:                                              ; preds = %822, %747
  %754 = phi i64 [ %748, %747 ], [ %882, %822 ]
  %755 = phi i64 [ %743, %747 ], [ %874, %822 ]
  %756 = phi ptr [ %742, %747 ], [ %881, %822 ]
  %757 = phi i64 [ %741, %747 ], [ %880, %822 ]
  %758 = getelementptr i8, ptr %749, i64 %754
  %759 = load i8, ptr %758, align 1, !tbaa !5
  %760 = zext i8 %759 to i64
  %761 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %760
  %762 = load i64, ptr %761, align 8, !tbaa !14
  %763 = and i64 %762, 255
  %764 = lshr i64 %755, %763
  %765 = or i64 %764, %762
  %766 = add i64 %762, %757
  %767 = getelementptr i8, ptr %750, i64 %754
  %768 = load i8, ptr %767, align 1, !tbaa !5
  %769 = zext i8 %768 to i64
  %770 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %769
  %771 = load i64, ptr %770, align 8, !tbaa !14
  %772 = and i64 %771, 255
  %773 = lshr i64 %765, %772
  %774 = or i64 %773, %771
  %775 = add i64 %766, %771
  %776 = getelementptr i8, ptr %751, i64 %754
  %777 = load i8, ptr %776, align 1, !tbaa !5
  %778 = zext i8 %777 to i64
  %779 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %778
  %780 = load i64, ptr %779, align 8, !tbaa !14
  %781 = and i64 %780, 255
  %782 = lshr i64 %774, %781
  %783 = or i64 %782, %780
  %784 = add i64 %775, %780
  %785 = getelementptr i8, ptr %752, i64 %754
  %786 = load i8, ptr %785, align 1, !tbaa !5
  %787 = zext i8 %786 to i64
  %788 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %787
  %789 = load i64, ptr %788, align 8, !tbaa !14
  %790 = and i64 %789, 255
  %791 = lshr i64 %783, %790
  %792 = or i64 %791, %789
  %793 = add i64 %784, %789
  %794 = add nsw i64 %754, -5
  %795 = getelementptr inbounds i8, ptr %2, i64 %794
  %796 = load i8, ptr %795, align 1, !tbaa !5
  %797 = zext i8 %796 to i64
  %798 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %797
  %799 = load i64, ptr %798, align 8, !tbaa !14
  %800 = and i64 %799, 255
  %801 = lshr i64 %792, %800
  %802 = or i64 %801, %799
  %803 = add i64 %793, %799
  %804 = and i64 %803, 255
  %805 = lshr i64 %804, 3
  %806 = sub nsw i64 64, %804
  %807 = lshr i64 %802, %806
  %808 = and i64 %803, 7
  store i64 %807, ptr %756, align 1, !tbaa !14
  %809 = getelementptr inbounds nuw i8, ptr %756, i64 %805
  %810 = trunc nsw i64 %794 to i32
  %811 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %810, i32 -1)
  %812 = extractvalue { i32, i1 } %811, 1, !nosanitize !46
  br i1 %812, label %.loopexit33, label %813, !prof !49, !nosanitize !46

813:                                              ; preds = %753
  %814 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %810, i32 -2)
  %815 = extractvalue { i32, i1 } %814, 1, !nosanitize !46
  br i1 %815, label %.loopexit33, label %816, !prof !49, !nosanitize !46

816:                                              ; preds = %813
  %817 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %810, i32 -3)
  %818 = extractvalue { i32, i1 } %817, 1, !nosanitize !46
  br i1 %818, label %.loopexit33, label %819, !prof !49, !nosanitize !46

819:                                              ; preds = %816
  %820 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %810, i32 -4)
  %821 = extractvalue { i32, i1 } %820, 1, !nosanitize !46
  br i1 %821, label %.loopexit33, label %822, !prof !49, !nosanitize !46

822:                                              ; preds = %819
  %823 = extractvalue { i32, i1 } %817, 0, !nosanitize !46
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds i8, ptr %2, i64 %824
  %826 = load i8, ptr %825, align 1, !tbaa !5
  %827 = zext i8 %826 to i64
  %828 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %827
  %829 = load i64, ptr %828, align 8, !tbaa !14
  %830 = extractvalue { i32, i1 } %814, 0, !nosanitize !46
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds i8, ptr %2, i64 %831
  %833 = load i8, ptr %832, align 1, !tbaa !5
  %834 = zext i8 %833 to i64
  %835 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %834
  %836 = load i64, ptr %835, align 8, !tbaa !14
  %837 = extractvalue { i32, i1 } %811, 0, !nosanitize !46
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds i8, ptr %2, i64 %838
  %840 = load i8, ptr %839, align 1, !tbaa !5
  %841 = zext i8 %840 to i64
  %842 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %841
  %843 = load i64, ptr %842, align 8, !tbaa !14
  %844 = and i64 %836, 255
  %845 = lshr i64 %843, %844
  %846 = or i64 %845, %836
  %847 = and i64 %829, 255
  %848 = lshr i64 %846, %847
  %849 = or i64 %848, %829
  %850 = extractvalue { i32, i1 } %820, 0, !nosanitize !46
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds i8, ptr %2, i64 %851
  %853 = load i8, ptr %852, align 1, !tbaa !5
  %854 = zext i8 %853 to i64
  %855 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %854
  %856 = load i64, ptr %855, align 8, !tbaa !14
  %857 = and i64 %856, 255
  %858 = lshr i64 %849, %857
  %859 = or i64 %858, %856
  %860 = getelementptr i8, ptr %745, i64 %754
  %861 = load i8, ptr %860, align 1, !tbaa !5
  %862 = zext i8 %861 to i64
  %863 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %862
  %864 = load i64, ptr %863, align 8, !tbaa !14
  %865 = and i64 %864, 255
  %866 = lshr i64 %859, %865
  %867 = add i64 %836, %829
  %868 = add i64 %867, %843
  %869 = add i64 %868, %856
  %870 = add i64 %869, %864
  %871 = and i64 %870, 255
  %872 = lshr i64 %802, %871
  %873 = or i64 %866, %872
  %874 = or i64 %873, %864
  %875 = add i64 %870, %808
  %876 = and i64 %875, 255
  %877 = lshr i64 %876, 3
  %878 = sub nsw i64 64, %876
  %879 = lshr i64 %874, %878
  %880 = and i64 %875, 7
  store i64 %879, ptr %809, align 1, !tbaa !14
  %881 = getelementptr inbounds nuw i8, ptr %809, i64 %877
  %882 = add nsw i64 %754, -10
  %883 = icmp sgt i64 %754, 10
  br i1 %883, label %753, label %.loopexit28, !llvm.loop !76

884:                                              ; preds = %282
  %885 = srem i32 %29, 6
  %886 = icmp sgt i32 %885, 0
  br i1 %886, label %887, label %955

887:                                              ; preds = %884
  %888 = xor i32 %29, -2147483648
  %889 = add nsw i32 %885, -1
  %890 = icmp ugt i32 %888, %889
  br i1 %890, label %891, label %.loopexit35, !prof !77, !nosanitize !46

891:                                              ; preds = %887
  %892 = and i32 %885, 1
  %893 = icmp eq i32 %889, 0
  br i1 %893, label %.thread24, label %894

894:                                              ; preds = %891
  %895 = and i32 %885, 2147483646
  br label %896

896:                                              ; preds = %896, %894
  %897 = phi i32 [ %29, %894 ], [ %913, %896 ]
  %898 = phi i64 [ 0, %894 ], [ %923, %896 ]
  %899 = phi i64 [ 0, %894 ], [ %924, %896 ]
  %900 = phi i32 [ 0, %894 ], [ %925, %896 ]
  %901 = add i32 %897, -1
  %902 = sext i32 %901 to i64
  %903 = getelementptr inbounds i8, ptr %2, i64 %902
  %904 = load i8, ptr %903, align 1, !tbaa !5
  %905 = zext i8 %904 to i64
  %906 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %905
  %907 = load i64, ptr %906, align 8, !tbaa !14
  %908 = and i64 %907, 255
  %909 = lshr i64 %898, %908
  %910 = and i64 %907, -256
  %911 = or i64 %909, %910
  %912 = add i64 %907, %899
  %913 = add i32 %897, -2
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds i8, ptr %2, i64 %914
  %916 = load i8, ptr %915, align 1, !tbaa !5
  %917 = zext i8 %916 to i64
  %918 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %917
  %919 = load i64, ptr %918, align 8, !tbaa !14
  %920 = and i64 %919, 255
  %921 = lshr i64 %911, %920
  %922 = and i64 %919, -256
  %923 = or i64 %921, %922
  %924 = add i64 %912, %919
  %925 = add i32 %900, 2
  %926 = icmp eq i32 %925, %895
  br i1 %926, label %927, label %896, !llvm.loop !78

.loopexit35:                                      ; preds = %1147, %1144, %1141, %1138, %1068, %977, %974, %971, %968, %965, %962, %887
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

927:                                              ; preds = %896
  %928 = sub i32 %29, %895
  %929 = icmp eq i32 %892, 0
  br i1 %929, label %945, label %.thread24

.thread24:                                        ; preds = %891, %927
  %930 = phi i64 [ %924, %927 ], [ 0, %891 ]
  %931 = phi i64 [ %923, %927 ], [ 0, %891 ]
  %932 = phi i32 [ %928, %927 ], [ %29, %891 ]
  %933 = add i32 %932, -1
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
  %944 = add i64 %939, %930
  br label %945

945:                                              ; preds = %.thread24, %927
  %946 = phi i64 [ %923, %927 ], [ %943, %.thread24 ]
  %947 = phi i64 [ %924, %927 ], [ %944, %.thread24 ]
  %948 = sub nsw i32 %29, %885
  %949 = and i64 %947, 255
  %950 = lshr i64 %949, 3
  %951 = sub nsw i64 64, %949
  %952 = lshr i64 %946, %951
  %953 = and i64 %947, 7
  store i64 %952, ptr %0, align 1, !tbaa !14
  %954 = getelementptr inbounds nuw i8, ptr %0, i64 %950
  br label %955

955:                                              ; preds = %945, %884
  %956 = phi i64 [ %953, %945 ], [ 0, %884 ]
  %957 = phi ptr [ %954, %945 ], [ %0, %884 ]
  %958 = phi i64 [ %946, %945 ], [ 0, %884 ]
  %959 = phi i32 [ %948, %945 ], [ %29, %884 ]
  %960 = srem i32 %959, 12
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %1054, label %962

962:                                              ; preds = %955
  %963 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %959, i32 -1)
  %964 = extractvalue { i32, i1 } %963, 1, !nosanitize !46
  br i1 %964, label %.loopexit35, label %965, !prof !49, !nosanitize !46

965:                                              ; preds = %962
  %966 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %959, i32 -2)
  %967 = extractvalue { i32, i1 } %966, 1, !nosanitize !46
  br i1 %967, label %.loopexit35, label %968, !prof !49, !nosanitize !46

968:                                              ; preds = %965
  %969 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %959, i32 -3)
  %970 = extractvalue { i32, i1 } %969, 1, !nosanitize !46
  br i1 %970, label %.loopexit35, label %971, !prof !49, !nosanitize !46

971:                                              ; preds = %968
  %972 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %959, i32 -4)
  %973 = extractvalue { i32, i1 } %972, 1, !nosanitize !46
  br i1 %973, label %.loopexit35, label %974, !prof !49, !nosanitize !46

974:                                              ; preds = %971
  %975 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %959, i32 -5)
  %976 = extractvalue { i32, i1 } %975, 1, !nosanitize !46
  br i1 %976, label %.loopexit35, label %977, !prof !49, !nosanitize !46

977:                                              ; preds = %974
  %978 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %959, i32 -6)
  %979 = extractvalue { i32, i1 } %978, 1, !nosanitize !46
  br i1 %979, label %.loopexit35, label %980, !prof !49, !nosanitize !46

980:                                              ; preds = %977
  %981 = extractvalue { i32, i1 } %975, 0, !nosanitize !46
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds i8, ptr %2, i64 %982
  %984 = load i8, ptr %983, align 1, !tbaa !5
  %985 = zext i8 %984 to i64
  %986 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %985
  %987 = load i64, ptr %986, align 8, !tbaa !14
  %988 = extractvalue { i32, i1 } %972, 0, !nosanitize !46
  %989 = sext i32 %988 to i64
  %990 = getelementptr inbounds i8, ptr %2, i64 %989
  %991 = load i8, ptr %990, align 1, !tbaa !5
  %992 = zext i8 %991 to i64
  %993 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %992
  %994 = load i64, ptr %993, align 8, !tbaa !14
  %995 = extractvalue { i32, i1 } %969, 0, !nosanitize !46
  %996 = sext i32 %995 to i64
  %997 = getelementptr inbounds i8, ptr %2, i64 %996
  %998 = load i8, ptr %997, align 1, !tbaa !5
  %999 = zext i8 %998 to i64
  %1000 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %999
  %1001 = load i64, ptr %1000, align 8, !tbaa !14
  %1002 = extractvalue { i32, i1 } %966, 0, !nosanitize !46
  %1003 = sext i32 %1002 to i64
  %1004 = getelementptr inbounds i8, ptr %2, i64 %1003
  %1005 = load i8, ptr %1004, align 1, !tbaa !5
  %1006 = zext i8 %1005 to i64
  %1007 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1006
  %1008 = load i64, ptr %1007, align 8, !tbaa !14
  %1009 = extractvalue { i32, i1 } %963, 0, !nosanitize !46
  %1010 = sext i32 %1009 to i64
  %1011 = getelementptr inbounds i8, ptr %2, i64 %1010
  %1012 = load i8, ptr %1011, align 1, !tbaa !5
  %1013 = zext i8 %1012 to i64
  %1014 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1013
  %1015 = load i64, ptr %1014, align 8, !tbaa !14
  %1016 = and i64 %1015, 255
  %1017 = lshr i64 %958, %1016
  %1018 = or i64 %1017, %1015
  %1019 = and i64 %1008, 255
  %1020 = lshr i64 %1018, %1019
  %1021 = or i64 %1020, %1008
  %1022 = and i64 %1001, 255
  %1023 = lshr i64 %1021, %1022
  %1024 = or i64 %1023, %1001
  %1025 = and i64 %994, 255
  %1026 = lshr i64 %1024, %1025
  %1027 = or i64 %1026, %994
  %1028 = and i64 %987, 255
  %1029 = lshr i64 %1027, %1028
  %1030 = or i64 %1029, %987
  %1031 = extractvalue { i32, i1 } %978, 0, !nosanitize !46
  %1032 = sext i32 %1031 to i64
  %1033 = getelementptr inbounds i8, ptr %2, i64 %1032
  %1034 = load i8, ptr %1033, align 1, !tbaa !5
  %1035 = zext i8 %1034 to i64
  %1036 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1035
  %1037 = load i64, ptr %1036, align 8, !tbaa !14
  %1038 = and i64 %1037, 255
  %1039 = lshr i64 %1030, %1038
  %1040 = and i64 %1037, -256
  %1041 = or i64 %1039, %1040
  %1042 = add i64 %987, %956
  %1043 = add i64 %1042, %994
  %1044 = add i64 %1043, %1001
  %1045 = add i64 %1044, %1008
  %1046 = add i64 %1045, %1015
  %1047 = add i64 %1046, %1037
  %1048 = and i64 %1047, 255
  %1049 = lshr i64 %1048, 3
  %1050 = sub nsw i64 64, %1048
  %1051 = lshr i64 %1041, %1050
  %1052 = and i64 %1047, 7
  store i64 %1051, ptr %957, align 1, !tbaa !14
  %1053 = getelementptr inbounds nuw i8, ptr %957, i64 %1049
  br label %1054

1054:                                             ; preds = %980, %955
  %1055 = phi i64 [ %956, %955 ], [ %1052, %980 ]
  %1056 = phi ptr [ %957, %955 ], [ %1053, %980 ]
  %1057 = phi i64 [ %958, %955 ], [ %1041, %980 ]
  %1058 = phi i32 [ %959, %955 ], [ %1031, %980 ]
  %1059 = getelementptr i8, ptr %2, i64 -12
  %1060 = icmp sgt i32 %1058, 0
  br i1 %1060, label %1061, label %.loopexit28

1061:                                             ; preds = %1054
  %1062 = zext nneg i32 %1058 to i64
  %1063 = getelementptr i8, ptr %2, i64 -1
  %1064 = getelementptr i8, ptr %2, i64 -2
  %1065 = getelementptr i8, ptr %2, i64 -3
  %1066 = getelementptr i8, ptr %2, i64 -4
  %1067 = getelementptr i8, ptr %2, i64 -5
  br label %1068

1068:                                             ; preds = %1150, %1061
  %1069 = phi i64 [ %1062, %1061 ], [ %1222, %1150 ]
  %1070 = phi i64 [ %1057, %1061 ], [ %1214, %1150 ]
  %1071 = phi ptr [ %1056, %1061 ], [ %1221, %1150 ]
  %1072 = phi i64 [ %1055, %1061 ], [ %1220, %1150 ]
  %1073 = getelementptr i8, ptr %1063, i64 %1069
  %1074 = load i8, ptr %1073, align 1, !tbaa !5
  %1075 = zext i8 %1074 to i64
  %1076 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1075
  %1077 = load i64, ptr %1076, align 8, !tbaa !14
  %1078 = and i64 %1077, 255
  %1079 = lshr i64 %1070, %1078
  %1080 = or i64 %1079, %1077
  %1081 = add i64 %1077, %1072
  %1082 = getelementptr i8, ptr %1064, i64 %1069
  %1083 = load i8, ptr %1082, align 1, !tbaa !5
  %1084 = zext i8 %1083 to i64
  %1085 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1084
  %1086 = load i64, ptr %1085, align 8, !tbaa !14
  %1087 = and i64 %1086, 255
  %1088 = lshr i64 %1080, %1087
  %1089 = or i64 %1088, %1086
  %1090 = add i64 %1081, %1086
  %1091 = getelementptr i8, ptr %1065, i64 %1069
  %1092 = load i8, ptr %1091, align 1, !tbaa !5
  %1093 = zext i8 %1092 to i64
  %1094 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1093
  %1095 = load i64, ptr %1094, align 8, !tbaa !14
  %1096 = and i64 %1095, 255
  %1097 = lshr i64 %1089, %1096
  %1098 = or i64 %1097, %1095
  %1099 = add i64 %1090, %1095
  %1100 = getelementptr i8, ptr %1066, i64 %1069
  %1101 = load i8, ptr %1100, align 1, !tbaa !5
  %1102 = zext i8 %1101 to i64
  %1103 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1102
  %1104 = load i64, ptr %1103, align 8, !tbaa !14
  %1105 = and i64 %1104, 255
  %1106 = lshr i64 %1098, %1105
  %1107 = or i64 %1106, %1104
  %1108 = add i64 %1099, %1104
  %1109 = getelementptr i8, ptr %1067, i64 %1069
  %1110 = load i8, ptr %1109, align 1, !tbaa !5
  %1111 = zext i8 %1110 to i64
  %1112 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1111
  %1113 = load i64, ptr %1112, align 8, !tbaa !14
  %1114 = and i64 %1113, 255
  %1115 = lshr i64 %1107, %1114
  %1116 = or i64 %1115, %1113
  %1117 = add i64 %1108, %1113
  %1118 = add nsw i64 %1069, -6
  %1119 = getelementptr inbounds i8, ptr %2, i64 %1118
  %1120 = load i8, ptr %1119, align 1, !tbaa !5
  %1121 = zext i8 %1120 to i64
  %1122 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1121
  %1123 = load i64, ptr %1122, align 8, !tbaa !14
  %1124 = and i64 %1123, 255
  %1125 = lshr i64 %1116, %1124
  %1126 = and i64 %1123, -256
  %1127 = or i64 %1125, %1126
  %1128 = add i64 %1117, %1123
  %1129 = and i64 %1128, 255
  %1130 = lshr i64 %1129, 3
  %1131 = sub nsw i64 64, %1129
  %1132 = lshr i64 %1127, %1131
  %1133 = and i64 %1128, 7
  store i64 %1132, ptr %1071, align 1, !tbaa !14
  %1134 = getelementptr inbounds nuw i8, ptr %1071, i64 %1130
  %1135 = trunc nsw i64 %1118 to i32
  %1136 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1135, i32 -1)
  %1137 = extractvalue { i32, i1 } %1136, 1, !nosanitize !46
  br i1 %1137, label %.loopexit35, label %1138, !prof !49, !nosanitize !46

1138:                                             ; preds = %1068
  %1139 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1135, i32 -2)
  %1140 = extractvalue { i32, i1 } %1139, 1, !nosanitize !46
  br i1 %1140, label %.loopexit35, label %1141, !prof !49, !nosanitize !46

1141:                                             ; preds = %1138
  %1142 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1135, i32 -3)
  %1143 = extractvalue { i32, i1 } %1142, 1, !nosanitize !46
  br i1 %1143, label %.loopexit35, label %1144, !prof !49, !nosanitize !46

1144:                                             ; preds = %1141
  %1145 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1135, i32 -4)
  %1146 = extractvalue { i32, i1 } %1145, 1, !nosanitize !46
  br i1 %1146, label %.loopexit35, label %1147, !prof !49, !nosanitize !46

1147:                                             ; preds = %1144
  %1148 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1135, i32 -5)
  %1149 = extractvalue { i32, i1 } %1148, 1, !nosanitize !46
  br i1 %1149, label %.loopexit35, label %1150, !prof !49, !nosanitize !46

1150:                                             ; preds = %1147
  %1151 = extractvalue { i32, i1 } %1145, 0, !nosanitize !46
  %1152 = sext i32 %1151 to i64
  %1153 = getelementptr inbounds i8, ptr %2, i64 %1152
  %1154 = load i8, ptr %1153, align 1, !tbaa !5
  %1155 = zext i8 %1154 to i64
  %1156 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1155
  %1157 = load i64, ptr %1156, align 8, !tbaa !14
  %1158 = extractvalue { i32, i1 } %1142, 0, !nosanitize !46
  %1159 = sext i32 %1158 to i64
  %1160 = getelementptr inbounds i8, ptr %2, i64 %1159
  %1161 = load i8, ptr %1160, align 1, !tbaa !5
  %1162 = zext i8 %1161 to i64
  %1163 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1162
  %1164 = load i64, ptr %1163, align 8, !tbaa !14
  %1165 = extractvalue { i32, i1 } %1139, 0, !nosanitize !46
  %1166 = sext i32 %1165 to i64
  %1167 = getelementptr inbounds i8, ptr %2, i64 %1166
  %1168 = load i8, ptr %1167, align 1, !tbaa !5
  %1169 = zext i8 %1168 to i64
  %1170 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1169
  %1171 = load i64, ptr %1170, align 8, !tbaa !14
  %1172 = extractvalue { i32, i1 } %1136, 0, !nosanitize !46
  %1173 = sext i32 %1172 to i64
  %1174 = getelementptr inbounds i8, ptr %2, i64 %1173
  %1175 = load i8, ptr %1174, align 1, !tbaa !5
  %1176 = zext i8 %1175 to i64
  %1177 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1176
  %1178 = load i64, ptr %1177, align 8, !tbaa !14
  %1179 = and i64 %1171, 255
  %1180 = lshr i64 %1178, %1179
  %1181 = or i64 %1180, %1171
  %1182 = and i64 %1164, 255
  %1183 = lshr i64 %1181, %1182
  %1184 = or i64 %1183, %1164
  %1185 = and i64 %1157, 255
  %1186 = lshr i64 %1184, %1185
  %1187 = or i64 %1186, %1157
  %1188 = extractvalue { i32, i1 } %1148, 0, !nosanitize !46
  %1189 = sext i32 %1188 to i64
  %1190 = getelementptr inbounds i8, ptr %2, i64 %1189
  %1191 = load i8, ptr %1190, align 1, !tbaa !5
  %1192 = zext i8 %1191 to i64
  %1193 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1192
  %1194 = load i64, ptr %1193, align 8, !tbaa !14
  %1195 = and i64 %1194, 255
  %1196 = lshr i64 %1187, %1195
  %1197 = or i64 %1196, %1194
  %1198 = getelementptr i8, ptr %1059, i64 %1069
  %1199 = load i8, ptr %1198, align 1, !tbaa !5
  %1200 = zext i8 %1199 to i64
  %1201 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1200
  %1202 = load i64, ptr %1201, align 8, !tbaa !14
  %1203 = and i64 %1202, 255
  %1204 = lshr i64 %1197, %1203
  %1205 = and i64 %1202, -256
  %1206 = add i64 %1164, %1157
  %1207 = add i64 %1206, %1171
  %1208 = add i64 %1207, %1178
  %1209 = add i64 %1208, %1194
  %1210 = add i64 %1209, %1202
  %1211 = and i64 %1210, 255
  %1212 = lshr i64 %1127, %1211
  %1213 = or i64 %1212, %1205
  %1214 = or i64 %1213, %1204
  %1215 = add i64 %1210, %1133
  %1216 = and i64 %1215, 255
  %1217 = lshr i64 %1216, 3
  %1218 = sub nsw i64 64, %1216
  %1219 = lshr i64 %1214, %1218
  %1220 = and i64 %1215, 7
  store i64 %1219, ptr %1134, align 1, !tbaa !14
  %1221 = getelementptr inbounds nuw i8, ptr %1134, i64 %1217
  %1222 = add nsw i64 %1069, -12
  %1223 = icmp sgt i64 %1069, 12
  br i1 %1223, label %1068, label %.loopexit28, !llvm.loop !76

1224:                                             ; preds = %282
  %1225 = srem i32 %29, 7
  %1226 = icmp sgt i32 %1225, 0
  br i1 %1226, label %1227, label %1295

1227:                                             ; preds = %1224
  %1228 = xor i32 %29, -2147483648
  %1229 = add nsw i32 %1225, -1
  %1230 = icmp ugt i32 %1228, %1229
  br i1 %1230, label %1231, label %.loopexit37, !prof !77, !nosanitize !46

1231:                                             ; preds = %1227
  %1232 = and i32 %1225, 1
  %1233 = icmp eq i32 %1229, 0
  br i1 %1233, label %.thread25, label %1234

1234:                                             ; preds = %1231
  %1235 = and i32 %1225, 2147483646
  br label %1236

1236:                                             ; preds = %1236, %1234
  %1237 = phi i32 [ %29, %1234 ], [ %1253, %1236 ]
  %1238 = phi i64 [ 0, %1234 ], [ %1263, %1236 ]
  %1239 = phi i64 [ 0, %1234 ], [ %1264, %1236 ]
  %1240 = phi i32 [ 0, %1234 ], [ %1265, %1236 ]
  %1241 = add i32 %1237, -1
  %1242 = sext i32 %1241 to i64
  %1243 = getelementptr inbounds i8, ptr %2, i64 %1242
  %1244 = load i8, ptr %1243, align 1, !tbaa !5
  %1245 = zext i8 %1244 to i64
  %1246 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1245
  %1247 = load i64, ptr %1246, align 8, !tbaa !14
  %1248 = and i64 %1247, 255
  %1249 = lshr i64 %1238, %1248
  %1250 = and i64 %1247, -256
  %1251 = or i64 %1249, %1250
  %1252 = add i64 %1247, %1239
  %1253 = add i32 %1237, -2
  %1254 = sext i32 %1253 to i64
  %1255 = getelementptr inbounds i8, ptr %2, i64 %1254
  %1256 = load i8, ptr %1255, align 1, !tbaa !5
  %1257 = zext i8 %1256 to i64
  %1258 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1257
  %1259 = load i64, ptr %1258, align 8, !tbaa !14
  %1260 = and i64 %1259, 255
  %1261 = lshr i64 %1251, %1260
  %1262 = and i64 %1259, -256
  %1263 = or i64 %1261, %1262
  %1264 = add i64 %1252, %1259
  %1265 = add i32 %1240, 2
  %1266 = icmp eq i32 %1265, %1235
  br i1 %1266, label %1267, label %1236, !llvm.loop !78

.loopexit37:                                      ; preds = %1511, %1508, %1505, %1502, %1499, %1420, %1317, %1314, %1311, %1308, %1305, %1302, %1227
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

1267:                                             ; preds = %1236
  %1268 = sub i32 %29, %1235
  %1269 = icmp eq i32 %1232, 0
  br i1 %1269, label %1285, label %.thread25

.thread25:                                        ; preds = %1231, %1267
  %1270 = phi i64 [ %1264, %1267 ], [ 0, %1231 ]
  %1271 = phi i64 [ %1263, %1267 ], [ 0, %1231 ]
  %1272 = phi i32 [ %1268, %1267 ], [ %29, %1231 ]
  %1273 = add i32 %1272, -1
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
  %1284 = add i64 %1279, %1270
  br label %1285

1285:                                             ; preds = %.thread25, %1267
  %1286 = phi i64 [ %1263, %1267 ], [ %1283, %.thread25 ]
  %1287 = phi i64 [ %1264, %1267 ], [ %1284, %.thread25 ]
  %1288 = sub nsw i32 %29, %1225
  %1289 = and i64 %1287, 255
  %1290 = lshr i64 %1289, 3
  %1291 = sub nsw i64 64, %1289
  %1292 = lshr i64 %1286, %1291
  %1293 = and i64 %1287, 7
  store i64 %1292, ptr %0, align 1, !tbaa !14
  %1294 = getelementptr inbounds nuw i8, ptr %0, i64 %1290
  br label %1295

1295:                                             ; preds = %1285, %1224
  %1296 = phi i64 [ %1293, %1285 ], [ 0, %1224 ]
  %1297 = phi ptr [ %1294, %1285 ], [ %0, %1224 ]
  %1298 = phi i64 [ %1286, %1285 ], [ 0, %1224 ]
  %1299 = phi i32 [ %1288, %1285 ], [ %29, %1224 ]
  %1300 = srem i32 %1299, 14
  %1301 = icmp eq i32 %1300, 0
  br i1 %1301, label %1405, label %1302

1302:                                             ; preds = %1295
  %1303 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1299, i32 -1)
  %1304 = extractvalue { i32, i1 } %1303, 1, !nosanitize !46
  br i1 %1304, label %.loopexit37, label %1305, !prof !49, !nosanitize !46

1305:                                             ; preds = %1302
  %1306 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1299, i32 -2)
  %1307 = extractvalue { i32, i1 } %1306, 1, !nosanitize !46
  br i1 %1307, label %.loopexit37, label %1308, !prof !49, !nosanitize !46

1308:                                             ; preds = %1305
  %1309 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1299, i32 -4)
  %1310 = extractvalue { i32, i1 } %1309, 1, !nosanitize !46
  br i1 %1310, label %.loopexit37, label %1311, !prof !49, !nosanitize !46

1311:                                             ; preds = %1308
  %1312 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1299, i32 -5)
  %1313 = extractvalue { i32, i1 } %1312, 1, !nosanitize !46
  br i1 %1313, label %.loopexit37, label %1314, !prof !49, !nosanitize !46

1314:                                             ; preds = %1311
  %1315 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1299, i32 -6)
  %1316 = extractvalue { i32, i1 } %1315, 1, !nosanitize !46
  br i1 %1316, label %.loopexit37, label %1317, !prof !49, !nosanitize !46

1317:                                             ; preds = %1314
  %1318 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1299, i32 -7)
  %1319 = extractvalue { i32, i1 } %1318, 1, !nosanitize !46
  br i1 %1319, label %.loopexit37, label %1320, !prof !49, !nosanitize !46

1320:                                             ; preds = %1317
  %1321 = extractvalue { i32, i1 } %1315, 0, !nosanitize !46
  %1322 = sext i32 %1321 to i64
  %1323 = getelementptr inbounds i8, ptr %2, i64 %1322
  %1324 = load i8, ptr %1323, align 1, !tbaa !5
  %1325 = zext i8 %1324 to i64
  %1326 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1325
  %1327 = load i64, ptr %1326, align 8, !tbaa !14
  %1328 = extractvalue { i32, i1 } %1312, 0, !nosanitize !46
  %1329 = sext i32 %1328 to i64
  %1330 = getelementptr inbounds i8, ptr %2, i64 %1329
  %1331 = load i8, ptr %1330, align 1, !tbaa !5
  %1332 = zext i8 %1331 to i64
  %1333 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1332
  %1334 = load i64, ptr %1333, align 8, !tbaa !14
  %1335 = extractvalue { i32, i1 } %1309, 0, !nosanitize !46
  %1336 = sext i32 %1335 to i64
  %1337 = getelementptr inbounds i8, ptr %2, i64 %1336
  %1338 = load i8, ptr %1337, align 1, !tbaa !5
  %1339 = zext i8 %1338 to i64
  %1340 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1339
  %1341 = load i64, ptr %1340, align 8, !tbaa !14
  %1342 = sext i32 %1299 to i64
  %1343 = getelementptr i8, ptr %2, i64 %1342
  %1344 = getelementptr i8, ptr %1343, i64 -3
  %1345 = load i8, ptr %1344, align 1, !tbaa !5
  %1346 = zext i8 %1345 to i64
  %1347 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1346
  %1348 = load i64, ptr %1347, align 8, !tbaa !14
  %1349 = extractvalue { i32, i1 } %1306, 0, !nosanitize !46
  %1350 = sext i32 %1349 to i64
  %1351 = getelementptr inbounds i8, ptr %2, i64 %1350
  %1352 = load i8, ptr %1351, align 1, !tbaa !5
  %1353 = zext i8 %1352 to i64
  %1354 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1353
  %1355 = load i64, ptr %1354, align 8, !tbaa !14
  %1356 = extractvalue { i32, i1 } %1303, 0, !nosanitize !46
  %1357 = sext i32 %1356 to i64
  %1358 = getelementptr inbounds i8, ptr %2, i64 %1357
  %1359 = load i8, ptr %1358, align 1, !tbaa !5
  %1360 = zext i8 %1359 to i64
  %1361 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1360
  %1362 = load i64, ptr %1361, align 8, !tbaa !14
  %1363 = and i64 %1362, 255
  %1364 = lshr i64 %1298, %1363
  %1365 = or i64 %1364, %1362
  %1366 = and i64 %1355, 255
  %1367 = lshr i64 %1365, %1366
  %1368 = or i64 %1367, %1355
  %1369 = and i64 %1348, 255
  %1370 = lshr i64 %1368, %1369
  %1371 = or i64 %1370, %1348
  %1372 = and i64 %1341, 255
  %1373 = lshr i64 %1371, %1372
  %1374 = or i64 %1373, %1341
  %1375 = and i64 %1334, 255
  %1376 = lshr i64 %1374, %1375
  %1377 = or i64 %1376, %1334
  %1378 = and i64 %1327, 255
  %1379 = lshr i64 %1377, %1378
  %1380 = or i64 %1379, %1327
  %1381 = extractvalue { i32, i1 } %1318, 0, !nosanitize !46
  %1382 = sext i32 %1381 to i64
  %1383 = getelementptr inbounds i8, ptr %2, i64 %1382
  %1384 = load i8, ptr %1383, align 1, !tbaa !5
  %1385 = zext i8 %1384 to i64
  %1386 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1385
  %1387 = load i64, ptr %1386, align 8, !tbaa !14
  %1388 = and i64 %1387, 255
  %1389 = lshr i64 %1380, %1388
  %1390 = and i64 %1387, -256
  %1391 = or i64 %1389, %1390
  %1392 = add i64 %1327, %1296
  %1393 = add i64 %1392, %1334
  %1394 = add i64 %1393, %1341
  %1395 = add i64 %1394, %1348
  %1396 = add i64 %1395, %1355
  %1397 = add i64 %1396, %1362
  %1398 = add i64 %1397, %1387
  %1399 = and i64 %1398, 255
  %1400 = lshr i64 %1399, 3
  %1401 = sub nsw i64 64, %1399
  %1402 = lshr i64 %1391, %1401
  %1403 = and i64 %1398, 7
  store i64 %1402, ptr %1297, align 1, !tbaa !14
  %1404 = getelementptr inbounds nuw i8, ptr %1297, i64 %1400
  br label %1405

1405:                                             ; preds = %1320, %1295
  %1406 = phi i64 [ %1296, %1295 ], [ %1403, %1320 ]
  %1407 = phi ptr [ %1297, %1295 ], [ %1404, %1320 ]
  %1408 = phi i64 [ %1298, %1295 ], [ %1391, %1320 ]
  %1409 = phi i32 [ %1299, %1295 ], [ %1381, %1320 ]
  %1410 = getelementptr i8, ptr %2, i64 -14
  %1411 = icmp sgt i32 %1409, 0
  br i1 %1411, label %1412, label %.loopexit28

1412:                                             ; preds = %1405
  %1413 = zext nneg i32 %1409 to i64
  %1414 = getelementptr i8, ptr %2, i64 -1
  %1415 = getelementptr i8, ptr %2, i64 -2
  %1416 = getelementptr i8, ptr %2, i64 -3
  %1417 = getelementptr i8, ptr %2, i64 -4
  %1418 = getelementptr i8, ptr %2, i64 -5
  %1419 = getelementptr i8, ptr %2, i64 -6
  br label %1420

1420:                                             ; preds = %1514, %1412
  %1421 = phi i64 [ %1413, %1412 ], [ %1597, %1514 ]
  %1422 = phi i64 [ %1408, %1412 ], [ %1589, %1514 ]
  %1423 = phi ptr [ %1407, %1412 ], [ %1596, %1514 ]
  %1424 = phi i64 [ %1406, %1412 ], [ %1595, %1514 ]
  %1425 = getelementptr i8, ptr %1414, i64 %1421
  %1426 = load i8, ptr %1425, align 1, !tbaa !5
  %1427 = zext i8 %1426 to i64
  %1428 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1427
  %1429 = load i64, ptr %1428, align 8, !tbaa !14
  %1430 = and i64 %1429, 255
  %1431 = lshr i64 %1422, %1430
  %1432 = or i64 %1431, %1429
  %1433 = add i64 %1429, %1424
  %1434 = getelementptr i8, ptr %1415, i64 %1421
  %1435 = load i8, ptr %1434, align 1, !tbaa !5
  %1436 = zext i8 %1435 to i64
  %1437 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1436
  %1438 = load i64, ptr %1437, align 8, !tbaa !14
  %1439 = and i64 %1438, 255
  %1440 = lshr i64 %1432, %1439
  %1441 = or i64 %1440, %1438
  %1442 = add i64 %1433, %1438
  %1443 = getelementptr i8, ptr %1416, i64 %1421
  %1444 = load i8, ptr %1443, align 1, !tbaa !5
  %1445 = zext i8 %1444 to i64
  %1446 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1445
  %1447 = load i64, ptr %1446, align 8, !tbaa !14
  %1448 = and i64 %1447, 255
  %1449 = lshr i64 %1441, %1448
  %1450 = or i64 %1449, %1447
  %1451 = add i64 %1442, %1447
  %1452 = getelementptr i8, ptr %1417, i64 %1421
  %1453 = load i8, ptr %1452, align 1, !tbaa !5
  %1454 = zext i8 %1453 to i64
  %1455 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1454
  %1456 = load i64, ptr %1455, align 8, !tbaa !14
  %1457 = and i64 %1456, 255
  %1458 = lshr i64 %1450, %1457
  %1459 = or i64 %1458, %1456
  %1460 = add i64 %1451, %1456
  %1461 = getelementptr i8, ptr %1418, i64 %1421
  %1462 = load i8, ptr %1461, align 1, !tbaa !5
  %1463 = zext i8 %1462 to i64
  %1464 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1463
  %1465 = load i64, ptr %1464, align 8, !tbaa !14
  %1466 = and i64 %1465, 255
  %1467 = lshr i64 %1459, %1466
  %1468 = or i64 %1467, %1465
  %1469 = add i64 %1460, %1465
  %1470 = getelementptr i8, ptr %1419, i64 %1421
  %1471 = load i8, ptr %1470, align 1, !tbaa !5
  %1472 = zext i8 %1471 to i64
  %1473 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1472
  %1474 = load i64, ptr %1473, align 8, !tbaa !14
  %1475 = and i64 %1474, 255
  %1476 = lshr i64 %1468, %1475
  %1477 = or i64 %1476, %1474
  %1478 = add i64 %1469, %1474
  %1479 = add nsw i64 %1421, -7
  %1480 = getelementptr inbounds i8, ptr %2, i64 %1479
  %1481 = load i8, ptr %1480, align 1, !tbaa !5
  %1482 = zext i8 %1481 to i64
  %1483 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1482
  %1484 = load i64, ptr %1483, align 8, !tbaa !14
  %1485 = and i64 %1484, 255
  %1486 = lshr i64 %1477, %1485
  %1487 = and i64 %1484, -256
  %1488 = or i64 %1486, %1487
  %1489 = add i64 %1478, %1484
  %1490 = and i64 %1489, 255
  %1491 = lshr i64 %1490, 3
  %1492 = sub nsw i64 64, %1490
  %1493 = lshr i64 %1488, %1492
  %1494 = and i64 %1489, 7
  store i64 %1493, ptr %1423, align 1, !tbaa !14
  %1495 = getelementptr inbounds nuw i8, ptr %1423, i64 %1491
  %1496 = trunc nsw i64 %1479 to i32
  %1497 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1496, i32 -1)
  %1498 = extractvalue { i32, i1 } %1497, 1, !nosanitize !46
  br i1 %1498, label %.loopexit37, label %1499, !prof !49, !nosanitize !46

1499:                                             ; preds = %1420
  %1500 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1496, i32 -2)
  %1501 = extractvalue { i32, i1 } %1500, 1, !nosanitize !46
  br i1 %1501, label %.loopexit37, label %1502, !prof !49, !nosanitize !46

1502:                                             ; preds = %1499
  %1503 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1496, i32 -3)
  %1504 = extractvalue { i32, i1 } %1503, 1, !nosanitize !46
  br i1 %1504, label %.loopexit37, label %1505, !prof !49, !nosanitize !46

1505:                                             ; preds = %1502
  %1506 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1496, i32 -4)
  %1507 = extractvalue { i32, i1 } %1506, 1, !nosanitize !46
  br i1 %1507, label %.loopexit37, label %1508, !prof !49, !nosanitize !46

1508:                                             ; preds = %1505
  %1509 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1496, i32 -5)
  %1510 = extractvalue { i32, i1 } %1509, 1, !nosanitize !46
  br i1 %1510, label %.loopexit37, label %1511, !prof !49, !nosanitize !46

1511:                                             ; preds = %1508
  %1512 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1496, i32 -6)
  %1513 = extractvalue { i32, i1 } %1512, 1, !nosanitize !46
  br i1 %1513, label %.loopexit37, label %1514, !prof !49, !nosanitize !46

1514:                                             ; preds = %1511
  %1515 = extractvalue { i32, i1 } %1509, 0, !nosanitize !46
  %1516 = sext i32 %1515 to i64
  %1517 = getelementptr inbounds i8, ptr %2, i64 %1516
  %1518 = load i8, ptr %1517, align 1, !tbaa !5
  %1519 = zext i8 %1518 to i64
  %1520 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1519
  %1521 = load i64, ptr %1520, align 8, !tbaa !14
  %1522 = extractvalue { i32, i1 } %1506, 0, !nosanitize !46
  %1523 = sext i32 %1522 to i64
  %1524 = getelementptr inbounds i8, ptr %2, i64 %1523
  %1525 = load i8, ptr %1524, align 1, !tbaa !5
  %1526 = zext i8 %1525 to i64
  %1527 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1526
  %1528 = load i64, ptr %1527, align 8, !tbaa !14
  %1529 = extractvalue { i32, i1 } %1503, 0, !nosanitize !46
  %1530 = sext i32 %1529 to i64
  %1531 = getelementptr inbounds i8, ptr %2, i64 %1530
  %1532 = load i8, ptr %1531, align 1, !tbaa !5
  %1533 = zext i8 %1532 to i64
  %1534 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1533
  %1535 = load i64, ptr %1534, align 8, !tbaa !14
  %1536 = extractvalue { i32, i1 } %1500, 0, !nosanitize !46
  %1537 = sext i32 %1536 to i64
  %1538 = getelementptr inbounds i8, ptr %2, i64 %1537
  %1539 = load i8, ptr %1538, align 1, !tbaa !5
  %1540 = zext i8 %1539 to i64
  %1541 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1540
  %1542 = load i64, ptr %1541, align 8, !tbaa !14
  %1543 = extractvalue { i32, i1 } %1497, 0, !nosanitize !46
  %1544 = sext i32 %1543 to i64
  %1545 = getelementptr inbounds i8, ptr %2, i64 %1544
  %1546 = load i8, ptr %1545, align 1, !tbaa !5
  %1547 = zext i8 %1546 to i64
  %1548 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1547
  %1549 = load i64, ptr %1548, align 8, !tbaa !14
  %1550 = and i64 %1542, 255
  %1551 = lshr i64 %1549, %1550
  %1552 = or i64 %1551, %1542
  %1553 = and i64 %1535, 255
  %1554 = lshr i64 %1552, %1553
  %1555 = or i64 %1554, %1535
  %1556 = and i64 %1528, 255
  %1557 = lshr i64 %1555, %1556
  %1558 = or i64 %1557, %1528
  %1559 = and i64 %1521, 255
  %1560 = lshr i64 %1558, %1559
  %1561 = or i64 %1560, %1521
  %1562 = extractvalue { i32, i1 } %1512, 0, !nosanitize !46
  %1563 = sext i32 %1562 to i64
  %1564 = getelementptr inbounds i8, ptr %2, i64 %1563
  %1565 = load i8, ptr %1564, align 1, !tbaa !5
  %1566 = zext i8 %1565 to i64
  %1567 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1566
  %1568 = load i64, ptr %1567, align 8, !tbaa !14
  %1569 = and i64 %1568, 255
  %1570 = lshr i64 %1561, %1569
  %1571 = or i64 %1570, %1568
  %1572 = getelementptr i8, ptr %1410, i64 %1421
  %1573 = load i8, ptr %1572, align 1, !tbaa !5
  %1574 = zext i8 %1573 to i64
  %1575 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1574
  %1576 = load i64, ptr %1575, align 8, !tbaa !14
  %1577 = and i64 %1576, 255
  %1578 = lshr i64 %1571, %1577
  %1579 = and i64 %1576, -256
  %1580 = add i64 %1528, %1521
  %1581 = add i64 %1580, %1535
  %1582 = add i64 %1581, %1542
  %1583 = add i64 %1582, %1549
  %1584 = add i64 %1583, %1568
  %1585 = add i64 %1584, %1576
  %1586 = and i64 %1585, 255
  %1587 = lshr i64 %1488, %1586
  %1588 = or i64 %1587, %1579
  %1589 = or i64 %1588, %1578
  %1590 = add i64 %1585, %1494
  %1591 = and i64 %1590, 255
  %1592 = lshr i64 %1591, 3
  %1593 = sub nsw i64 64, %1591
  %1594 = lshr i64 %1589, %1593
  %1595 = and i64 %1590, 7
  store i64 %1594, ptr %1495, align 1, !tbaa !14
  %1596 = getelementptr inbounds nuw i8, ptr %1495, i64 %1592
  %1597 = add nsw i64 %1421, -14
  %1598 = icmp sgt i64 %1421, 14
  br i1 %1598, label %1420, label %.loopexit28, !llvm.loop !76

1599:                                             ; preds = %282
  %1600 = srem i32 %29, 8
  %1601 = icmp sgt i32 %1600, 0
  br i1 %1601, label %1602, label %1666

1602:                                             ; preds = %1599
  %1603 = and i32 %1600, 1
  %1604 = icmp eq i32 %1600, 1
  br i1 %1604, label %.thread26, label %1605

1605:                                             ; preds = %1602
  %1606 = and i32 %1600, 2147483646
  br label %1607

1607:                                             ; preds = %1607, %1605
  %1608 = phi i32 [ %29, %1605 ], [ %1624, %1607 ]
  %1609 = phi i64 [ 0, %1605 ], [ %1634, %1607 ]
  %1610 = phi i64 [ 0, %1605 ], [ %1635, %1607 ]
  %1611 = phi i32 [ 0, %1605 ], [ %1636, %1607 ]
  %1612 = add i32 %1608, -1
  %1613 = sext i32 %1612 to i64
  %1614 = getelementptr inbounds i8, ptr %2, i64 %1613
  %1615 = load i8, ptr %1614, align 1, !tbaa !5
  %1616 = zext i8 %1615 to i64
  %1617 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1616
  %1618 = load i64, ptr %1617, align 8, !tbaa !14
  %1619 = and i64 %1618, 255
  %1620 = lshr i64 %1609, %1619
  %1621 = and i64 %1618, -256
  %1622 = or i64 %1620, %1621
  %1623 = add i64 %1618, %1610
  %1624 = add i32 %1608, -2
  %1625 = sext i32 %1624 to i64
  %1626 = getelementptr inbounds i8, ptr %2, i64 %1625
  %1627 = load i8, ptr %1626, align 1, !tbaa !5
  %1628 = zext i8 %1627 to i64
  %1629 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1628
  %1630 = load i64, ptr %1629, align 8, !tbaa !14
  %1631 = and i64 %1630, 255
  %1632 = lshr i64 %1622, %1631
  %1633 = and i64 %1630, -256
  %1634 = or i64 %1632, %1633
  %1635 = add i64 %1623, %1630
  %1636 = add i32 %1611, 2
  %1637 = icmp eq i32 %1636, %1606
  br i1 %1637, label %1638, label %1607, !llvm.loop !78

.loopexit39:                                      ; preds = %1909, %1906, %1903, %1900, %1897, %1894, %1806, %1691, %1688, %1685, %1682, %1679, %1676, %1673
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

1638:                                             ; preds = %1607
  %1639 = sub i32 %29, %1606
  %1640 = icmp eq i32 %1603, 0
  br i1 %1640, label %1656, label %.thread26

.thread26:                                        ; preds = %1602, %1638
  %1641 = phi i64 [ %1635, %1638 ], [ 0, %1602 ]
  %1642 = phi i64 [ %1634, %1638 ], [ 0, %1602 ]
  %1643 = phi i32 [ %1639, %1638 ], [ %29, %1602 ]
  %1644 = add i32 %1643, -1
  %1645 = sext i32 %1644 to i64
  %1646 = getelementptr inbounds i8, ptr %2, i64 %1645
  %1647 = load i8, ptr %1646, align 1, !tbaa !5
  %1648 = zext i8 %1647 to i64
  %1649 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1648
  %1650 = load i64, ptr %1649, align 8, !tbaa !14
  %1651 = and i64 %1650, 255
  %1652 = lshr i64 %1642, %1651
  %1653 = and i64 %1650, -256
  %1654 = or i64 %1652, %1653
  %1655 = add i64 %1650, %1641
  br label %1656

1656:                                             ; preds = %.thread26, %1638
  %1657 = phi i64 [ %1634, %1638 ], [ %1654, %.thread26 ]
  %1658 = phi i64 [ %1635, %1638 ], [ %1655, %.thread26 ]
  %1659 = sub nsw i32 %29, %1600
  %1660 = and i64 %1658, 255
  %1661 = lshr i64 %1660, 3
  %1662 = sub nsw i64 64, %1660
  %1663 = lshr i64 %1657, %1662
  %1664 = and i64 %1658, 7
  store i64 %1663, ptr %0, align 1, !tbaa !14
  %1665 = getelementptr inbounds nuw i8, ptr %0, i64 %1661
  br label %1666

1666:                                             ; preds = %1656, %1599
  %1667 = phi i64 [ %1664, %1656 ], [ 0, %1599 ]
  %1668 = phi ptr [ %1665, %1656 ], [ %0, %1599 ]
  %1669 = phi i64 [ %1657, %1656 ], [ 0, %1599 ]
  %1670 = phi i32 [ %1659, %1656 ], [ %29, %1599 ]
  %1671 = and i32 %1670, 15
  %1672 = icmp eq i32 %1671, 0
  br i1 %1672, label %1790, label %1673

1673:                                             ; preds = %1666
  %1674 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1670, i32 -2)
  %1675 = extractvalue { i32, i1 } %1674, 1, !nosanitize !46
  br i1 %1675, label %.loopexit39, label %1676, !prof !49, !nosanitize !46

1676:                                             ; preds = %1673
  %1677 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1670, i32 -3)
  %1678 = extractvalue { i32, i1 } %1677, 1, !nosanitize !46
  br i1 %1678, label %.loopexit39, label %1679, !prof !49, !nosanitize !46

1679:                                             ; preds = %1676
  %1680 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1670, i32 -4)
  %1681 = extractvalue { i32, i1 } %1680, 1, !nosanitize !46
  br i1 %1681, label %.loopexit39, label %1682, !prof !49, !nosanitize !46

1682:                                             ; preds = %1679
  %1683 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1670, i32 -5)
  %1684 = extractvalue { i32, i1 } %1683, 1, !nosanitize !46
  br i1 %1684, label %.loopexit39, label %1685, !prof !49, !nosanitize !46

1685:                                             ; preds = %1682
  %1686 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1670, i32 -6)
  %1687 = extractvalue { i32, i1 } %1686, 1, !nosanitize !46
  br i1 %1687, label %.loopexit39, label %1688, !prof !49, !nosanitize !46

1688:                                             ; preds = %1685
  %1689 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1670, i32 -7)
  %1690 = extractvalue { i32, i1 } %1689, 1, !nosanitize !46
  br i1 %1690, label %.loopexit39, label %1691, !prof !49, !nosanitize !46

1691:                                             ; preds = %1688
  %1692 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1670, i32 -8)
  %1693 = extractvalue { i32, i1 } %1692, 1, !nosanitize !46
  br i1 %1693, label %.loopexit39, label %1694, !prof !49, !nosanitize !46

1694:                                             ; preds = %1691
  %1695 = extractvalue { i32, i1 } %1689, 0, !nosanitize !46
  %1696 = sext i32 %1695 to i64
  %1697 = getelementptr inbounds i8, ptr %2, i64 %1696
  %1698 = load i8, ptr %1697, align 1, !tbaa !5
  %1699 = zext i8 %1698 to i64
  %1700 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1699
  %1701 = load i64, ptr %1700, align 8, !tbaa !14
  %1702 = extractvalue { i32, i1 } %1686, 0, !nosanitize !46
  %1703 = sext i32 %1702 to i64
  %1704 = getelementptr inbounds i8, ptr %2, i64 %1703
  %1705 = load i8, ptr %1704, align 1, !tbaa !5
  %1706 = zext i8 %1705 to i64
  %1707 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1706
  %1708 = load i64, ptr %1707, align 8, !tbaa !14
  %1709 = extractvalue { i32, i1 } %1683, 0, !nosanitize !46
  %1710 = sext i32 %1709 to i64
  %1711 = getelementptr inbounds i8, ptr %2, i64 %1710
  %1712 = load i8, ptr %1711, align 1, !tbaa !5
  %1713 = zext i8 %1712 to i64
  %1714 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1713
  %1715 = load i64, ptr %1714, align 8, !tbaa !14
  %1716 = extractvalue { i32, i1 } %1680, 0, !nosanitize !46
  %1717 = sext i32 %1716 to i64
  %1718 = getelementptr inbounds i8, ptr %2, i64 %1717
  %1719 = load i8, ptr %1718, align 1, !tbaa !5
  %1720 = zext i8 %1719 to i64
  %1721 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1720
  %1722 = load i64, ptr %1721, align 8, !tbaa !14
  %1723 = extractvalue { i32, i1 } %1677, 0, !nosanitize !46
  %1724 = sext i32 %1723 to i64
  %1725 = getelementptr inbounds i8, ptr %2, i64 %1724
  %1726 = load i8, ptr %1725, align 1, !tbaa !5
  %1727 = zext i8 %1726 to i64
  %1728 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1727
  %1729 = load i64, ptr %1728, align 8, !tbaa !14
  %1730 = extractvalue { i32, i1 } %1674, 0, !nosanitize !46
  %1731 = sext i32 %1730 to i64
  %1732 = getelementptr inbounds i8, ptr %2, i64 %1731
  %1733 = load i8, ptr %1732, align 1, !tbaa !5
  %1734 = zext i8 %1733 to i64
  %1735 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1734
  %1736 = load i64, ptr %1735, align 8, !tbaa !14
  %1737 = sext i32 %1670 to i64
  %1738 = getelementptr i8, ptr %2, i64 %1737
  %1739 = getelementptr i8, ptr %1738, i64 -1
  %1740 = load i8, ptr %1739, align 1, !tbaa !5
  %1741 = zext i8 %1740 to i64
  %1742 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1741
  %1743 = load i64, ptr %1742, align 8, !tbaa !14
  %1744 = and i64 %1743, 255
  %1745 = lshr i64 %1669, %1744
  %1746 = or i64 %1745, %1743
  %1747 = and i64 %1736, 255
  %1748 = lshr i64 %1746, %1747
  %1749 = or i64 %1748, %1736
  %1750 = and i64 %1729, 255
  %1751 = lshr i64 %1749, %1750
  %1752 = or i64 %1751, %1729
  %1753 = and i64 %1722, 255
  %1754 = lshr i64 %1752, %1753
  %1755 = or i64 %1754, %1722
  %1756 = and i64 %1715, 255
  %1757 = lshr i64 %1755, %1756
  %1758 = or i64 %1757, %1715
  %1759 = and i64 %1708, 255
  %1760 = lshr i64 %1758, %1759
  %1761 = or i64 %1760, %1708
  %1762 = and i64 %1701, 255
  %1763 = lshr i64 %1761, %1762
  %1764 = or i64 %1763, %1701
  %1765 = extractvalue { i32, i1 } %1692, 0, !nosanitize !46
  %1766 = sext i32 %1765 to i64
  %1767 = getelementptr inbounds i8, ptr %2, i64 %1766
  %1768 = load i8, ptr %1767, align 1, !tbaa !5
  %1769 = zext i8 %1768 to i64
  %1770 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1769
  %1771 = load i64, ptr %1770, align 8, !tbaa !14
  %1772 = and i64 %1771, 255
  %1773 = lshr i64 %1764, %1772
  %1774 = and i64 %1771, -256
  %1775 = or i64 %1773, %1774
  %1776 = add i64 %1701, %1667
  %1777 = add i64 %1776, %1708
  %1778 = add i64 %1777, %1715
  %1779 = add i64 %1778, %1722
  %1780 = add i64 %1779, %1729
  %1781 = add i64 %1780, %1736
  %1782 = add i64 %1781, %1743
  %1783 = add i64 %1782, %1771
  %1784 = and i64 %1783, 255
  %1785 = lshr i64 %1784, 3
  %1786 = sub nsw i64 64, %1784
  %1787 = lshr i64 %1775, %1786
  %1788 = and i64 %1783, 7
  store i64 %1787, ptr %1668, align 1, !tbaa !14
  %1789 = getelementptr inbounds nuw i8, ptr %1668, i64 %1785
  br label %1790

1790:                                             ; preds = %1694, %1666
  %1791 = phi i64 [ %1667, %1666 ], [ %1788, %1694 ]
  %1792 = phi ptr [ %1668, %1666 ], [ %1789, %1694 ]
  %1793 = phi i64 [ %1669, %1666 ], [ %1775, %1694 ]
  %1794 = phi i32 [ %1670, %1666 ], [ %1765, %1694 ]
  %1795 = getelementptr i8, ptr %2, i64 -16
  %1796 = icmp sgt i32 %1794, 0
  br i1 %1796, label %1797, label %.loopexit28

1797:                                             ; preds = %1790
  %1798 = zext nneg i32 %1794 to i64
  %1799 = getelementptr i8, ptr %2, i64 -1
  %1800 = getelementptr i8, ptr %2, i64 -2
  %1801 = getelementptr i8, ptr %2, i64 -3
  %1802 = getelementptr i8, ptr %2, i64 -4
  %1803 = getelementptr i8, ptr %2, i64 -5
  %1804 = getelementptr i8, ptr %2, i64 -6
  %1805 = getelementptr i8, ptr %2, i64 -7
  br label %1806

1806:                                             ; preds = %1912, %1797
  %1807 = phi i64 [ %1798, %1797 ], [ %2006, %1912 ]
  %1808 = phi i64 [ %1793, %1797 ], [ %1998, %1912 ]
  %1809 = phi ptr [ %1792, %1797 ], [ %2005, %1912 ]
  %1810 = phi i64 [ %1791, %1797 ], [ %2004, %1912 ]
  %1811 = getelementptr i8, ptr %1799, i64 %1807
  %1812 = load i8, ptr %1811, align 1, !tbaa !5
  %1813 = zext i8 %1812 to i64
  %1814 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1813
  %1815 = load i64, ptr %1814, align 8, !tbaa !14
  %1816 = and i64 %1815, 255
  %1817 = lshr i64 %1808, %1816
  %1818 = or i64 %1817, %1815
  %1819 = add i64 %1815, %1810
  %1820 = getelementptr i8, ptr %1800, i64 %1807
  %1821 = load i8, ptr %1820, align 1, !tbaa !5
  %1822 = zext i8 %1821 to i64
  %1823 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1822
  %1824 = load i64, ptr %1823, align 8, !tbaa !14
  %1825 = and i64 %1824, 255
  %1826 = lshr i64 %1818, %1825
  %1827 = or i64 %1826, %1824
  %1828 = add i64 %1819, %1824
  %1829 = getelementptr i8, ptr %1801, i64 %1807
  %1830 = load i8, ptr %1829, align 1, !tbaa !5
  %1831 = zext i8 %1830 to i64
  %1832 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1831
  %1833 = load i64, ptr %1832, align 8, !tbaa !14
  %1834 = and i64 %1833, 255
  %1835 = lshr i64 %1827, %1834
  %1836 = or i64 %1835, %1833
  %1837 = add i64 %1828, %1833
  %1838 = getelementptr i8, ptr %1802, i64 %1807
  %1839 = load i8, ptr %1838, align 1, !tbaa !5
  %1840 = zext i8 %1839 to i64
  %1841 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1840
  %1842 = load i64, ptr %1841, align 8, !tbaa !14
  %1843 = and i64 %1842, 255
  %1844 = lshr i64 %1836, %1843
  %1845 = or i64 %1844, %1842
  %1846 = add i64 %1837, %1842
  %1847 = getelementptr i8, ptr %1803, i64 %1807
  %1848 = load i8, ptr %1847, align 1, !tbaa !5
  %1849 = zext i8 %1848 to i64
  %1850 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1849
  %1851 = load i64, ptr %1850, align 8, !tbaa !14
  %1852 = and i64 %1851, 255
  %1853 = lshr i64 %1845, %1852
  %1854 = or i64 %1853, %1851
  %1855 = add i64 %1846, %1851
  %1856 = getelementptr i8, ptr %1804, i64 %1807
  %1857 = load i8, ptr %1856, align 1, !tbaa !5
  %1858 = zext i8 %1857 to i64
  %1859 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1858
  %1860 = load i64, ptr %1859, align 8, !tbaa !14
  %1861 = and i64 %1860, 255
  %1862 = lshr i64 %1854, %1861
  %1863 = or i64 %1862, %1860
  %1864 = add i64 %1855, %1860
  %1865 = getelementptr i8, ptr %1805, i64 %1807
  %1866 = load i8, ptr %1865, align 1, !tbaa !5
  %1867 = zext i8 %1866 to i64
  %1868 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1867
  %1869 = load i64, ptr %1868, align 8, !tbaa !14
  %1870 = and i64 %1869, 255
  %1871 = lshr i64 %1863, %1870
  %1872 = or i64 %1871, %1869
  %1873 = add i64 %1864, %1869
  %1874 = add nsw i64 %1807, -8
  %1875 = getelementptr inbounds i8, ptr %2, i64 %1874
  %1876 = load i8, ptr %1875, align 1, !tbaa !5
  %1877 = zext i8 %1876 to i64
  %1878 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1877
  %1879 = load i64, ptr %1878, align 8, !tbaa !14
  %1880 = and i64 %1879, 255
  %1881 = lshr i64 %1872, %1880
  %1882 = and i64 %1879, -256
  %1883 = or i64 %1881, %1882
  %1884 = add i64 %1873, %1879
  %1885 = and i64 %1884, 255
  %1886 = lshr i64 %1885, 3
  %1887 = sub nsw i64 64, %1885
  %1888 = lshr i64 %1883, %1887
  %1889 = and i64 %1884, 7
  store i64 %1888, ptr %1809, align 1, !tbaa !14
  %1890 = getelementptr inbounds nuw i8, ptr %1809, i64 %1886
  %1891 = trunc nsw i64 %1874 to i32
  %1892 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1891, i32 -1)
  %1893 = extractvalue { i32, i1 } %1892, 1, !nosanitize !46
  br i1 %1893, label %.loopexit39, label %1894, !prof !49, !nosanitize !46

1894:                                             ; preds = %1806
  %1895 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1891, i32 -2)
  %1896 = extractvalue { i32, i1 } %1895, 1, !nosanitize !46
  br i1 %1896, label %.loopexit39, label %1897, !prof !49, !nosanitize !46

1897:                                             ; preds = %1894
  %1898 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1891, i32 -3)
  %1899 = extractvalue { i32, i1 } %1898, 1, !nosanitize !46
  br i1 %1899, label %.loopexit39, label %1900, !prof !49, !nosanitize !46

1900:                                             ; preds = %1897
  %1901 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1891, i32 -4)
  %1902 = extractvalue { i32, i1 } %1901, 1, !nosanitize !46
  br i1 %1902, label %.loopexit39, label %1903, !prof !49, !nosanitize !46

1903:                                             ; preds = %1900
  %1904 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1891, i32 -5)
  %1905 = extractvalue { i32, i1 } %1904, 1, !nosanitize !46
  br i1 %1905, label %.loopexit39, label %1906, !prof !49, !nosanitize !46

1906:                                             ; preds = %1903
  %1907 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1891, i32 -6)
  %1908 = extractvalue { i32, i1 } %1907, 1, !nosanitize !46
  br i1 %1908, label %.loopexit39, label %1909, !prof !49, !nosanitize !46

1909:                                             ; preds = %1906
  %1910 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1891, i32 -7)
  %1911 = extractvalue { i32, i1 } %1910, 1, !nosanitize !46
  br i1 %1911, label %.loopexit39, label %1912, !prof !49, !nosanitize !46

1912:                                             ; preds = %1909
  %1913 = extractvalue { i32, i1 } %1907, 0, !nosanitize !46
  %1914 = sext i32 %1913 to i64
  %1915 = getelementptr inbounds i8, ptr %2, i64 %1914
  %1916 = load i8, ptr %1915, align 1, !tbaa !5
  %1917 = zext i8 %1916 to i64
  %1918 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1917
  %1919 = load i64, ptr %1918, align 8, !tbaa !14
  %1920 = extractvalue { i32, i1 } %1904, 0, !nosanitize !46
  %1921 = sext i32 %1920 to i64
  %1922 = getelementptr inbounds i8, ptr %2, i64 %1921
  %1923 = load i8, ptr %1922, align 1, !tbaa !5
  %1924 = zext i8 %1923 to i64
  %1925 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1924
  %1926 = load i64, ptr %1925, align 8, !tbaa !14
  %1927 = extractvalue { i32, i1 } %1901, 0, !nosanitize !46
  %1928 = sext i32 %1927 to i64
  %1929 = getelementptr inbounds i8, ptr %2, i64 %1928
  %1930 = load i8, ptr %1929, align 1, !tbaa !5
  %1931 = zext i8 %1930 to i64
  %1932 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1931
  %1933 = load i64, ptr %1932, align 8, !tbaa !14
  %1934 = extractvalue { i32, i1 } %1898, 0, !nosanitize !46
  %1935 = sext i32 %1934 to i64
  %1936 = getelementptr inbounds i8, ptr %2, i64 %1935
  %1937 = load i8, ptr %1936, align 1, !tbaa !5
  %1938 = zext i8 %1937 to i64
  %1939 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1938
  %1940 = load i64, ptr %1939, align 8, !tbaa !14
  %1941 = extractvalue { i32, i1 } %1895, 0, !nosanitize !46
  %1942 = sext i32 %1941 to i64
  %1943 = getelementptr inbounds i8, ptr %2, i64 %1942
  %1944 = load i8, ptr %1943, align 1, !tbaa !5
  %1945 = zext i8 %1944 to i64
  %1946 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1945
  %1947 = load i64, ptr %1946, align 8, !tbaa !14
  %1948 = extractvalue { i32, i1 } %1892, 0, !nosanitize !46
  %1949 = sext i32 %1948 to i64
  %1950 = getelementptr inbounds i8, ptr %2, i64 %1949
  %1951 = load i8, ptr %1950, align 1, !tbaa !5
  %1952 = zext i8 %1951 to i64
  %1953 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1952
  %1954 = load i64, ptr %1953, align 8, !tbaa !14
  %1955 = and i64 %1947, 255
  %1956 = lshr i64 %1954, %1955
  %1957 = or i64 %1956, %1947
  %1958 = and i64 %1940, 255
  %1959 = lshr i64 %1957, %1958
  %1960 = or i64 %1959, %1940
  %1961 = and i64 %1933, 255
  %1962 = lshr i64 %1960, %1961
  %1963 = or i64 %1962, %1933
  %1964 = and i64 %1926, 255
  %1965 = lshr i64 %1963, %1964
  %1966 = or i64 %1965, %1926
  %1967 = and i64 %1919, 255
  %1968 = lshr i64 %1966, %1967
  %1969 = or i64 %1968, %1919
  %1970 = extractvalue { i32, i1 } %1910, 0, !nosanitize !46
  %1971 = sext i32 %1970 to i64
  %1972 = getelementptr inbounds i8, ptr %2, i64 %1971
  %1973 = load i8, ptr %1972, align 1, !tbaa !5
  %1974 = zext i8 %1973 to i64
  %1975 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1974
  %1976 = load i64, ptr %1975, align 8, !tbaa !14
  %1977 = and i64 %1976, 255
  %1978 = lshr i64 %1969, %1977
  %1979 = or i64 %1978, %1976
  %1980 = getelementptr i8, ptr %1795, i64 %1807
  %1981 = load i8, ptr %1980, align 1, !tbaa !5
  %1982 = zext i8 %1981 to i64
  %1983 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %1982
  %1984 = load i64, ptr %1983, align 8, !tbaa !14
  %1985 = and i64 %1984, 255
  %1986 = lshr i64 %1979, %1985
  %1987 = and i64 %1984, -256
  %1988 = add i64 %1926, %1919
  %1989 = add i64 %1988, %1933
  %1990 = add i64 %1989, %1940
  %1991 = add i64 %1990, %1947
  %1992 = add i64 %1991, %1954
  %1993 = add i64 %1992, %1976
  %1994 = add i64 %1993, %1984
  %1995 = and i64 %1994, 255
  %1996 = lshr i64 %1883, %1995
  %1997 = or i64 %1996, %1987
  %1998 = or i64 %1997, %1986
  %1999 = add i64 %1994, %1889
  %2000 = and i64 %1999, 255
  %2001 = lshr i64 %2000, 3
  %2002 = sub nsw i64 64, %2000
  %2003 = lshr i64 %1998, %2002
  %2004 = and i64 %1999, 7
  store i64 %2003, ptr %1890, align 1, !tbaa !14
  %2005 = getelementptr inbounds nuw i8, ptr %1890, i64 %2001
  %2006 = add nsw i64 %1807, -16
  %2007 = icmp sgt i64 %1807, 16
  br i1 %2007, label %1806, label %.loopexit28, !llvm.loop !76

2008:                                             ; preds = %282
  %2009 = srem i32 %29, 9
  %2010 = icmp sgt i32 %2009, 0
  br i1 %2010, label %2011, label %2079

2011:                                             ; preds = %2008
  %2012 = xor i32 %29, -2147483648
  %2013 = add nsw i32 %2009, -1
  %2014 = icmp ugt i32 %2012, %2013
  br i1 %2014, label %2015, label %.loopexit29, !prof !77, !nosanitize !46

2015:                                             ; preds = %2011
  %2016 = and i32 %2009, 1
  %2017 = icmp eq i32 %2013, 0
  br i1 %2017, label %.thread27, label %2018

2018:                                             ; preds = %2015
  %2019 = and i32 %2009, 2147483646
  br label %2020

2020:                                             ; preds = %2020, %2018
  %2021 = phi i32 [ %29, %2018 ], [ %2037, %2020 ]
  %2022 = phi i64 [ 0, %2018 ], [ %2047, %2020 ]
  %2023 = phi i64 [ 0, %2018 ], [ %2048, %2020 ]
  %2024 = phi i32 [ 0, %2018 ], [ %2049, %2020 ]
  %2025 = add i32 %2021, -1
  %2026 = sext i32 %2025 to i64
  %2027 = getelementptr inbounds i8, ptr %2, i64 %2026
  %2028 = load i8, ptr %2027, align 1, !tbaa !5
  %2029 = zext i8 %2028 to i64
  %2030 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2029
  %2031 = load i64, ptr %2030, align 8, !tbaa !14
  %2032 = and i64 %2031, 255
  %2033 = lshr i64 %2022, %2032
  %2034 = and i64 %2031, -256
  %2035 = or i64 %2033, %2034
  %2036 = add i64 %2031, %2023
  %2037 = add i32 %2021, -2
  %2038 = sext i32 %2037 to i64
  %2039 = getelementptr inbounds i8, ptr %2, i64 %2038
  %2040 = load i8, ptr %2039, align 1, !tbaa !5
  %2041 = zext i8 %2040 to i64
  %2042 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2041
  %2043 = load i64, ptr %2042, align 8, !tbaa !14
  %2044 = and i64 %2043, 255
  %2045 = lshr i64 %2035, %2044
  %2046 = and i64 %2043, -256
  %2047 = or i64 %2045, %2046
  %2048 = add i64 %2036, %2043
  %2049 = add i32 %2024, 2
  %2050 = icmp eq i32 %2049, %2019
  br i1 %2050, label %2051, label %2020, !llvm.loop !78

.loopexit29:                                      ; preds = %2347, %2344, %2341, %2338, %2335, %2332, %2329, %2233, %2107, %2104, %2101, %2098, %2095, %2092, %2089, %2086, %2011
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

2051:                                             ; preds = %2020
  %2052 = sub i32 %29, %2019
  %2053 = icmp eq i32 %2016, 0
  br i1 %2053, label %2069, label %.thread27

.thread27:                                        ; preds = %2015, %2051
  %2054 = phi i64 [ %2048, %2051 ], [ 0, %2015 ]
  %2055 = phi i64 [ %2047, %2051 ], [ 0, %2015 ]
  %2056 = phi i32 [ %2052, %2051 ], [ %29, %2015 ]
  %2057 = add i32 %2056, -1
  %2058 = sext i32 %2057 to i64
  %2059 = getelementptr inbounds i8, ptr %2, i64 %2058
  %2060 = load i8, ptr %2059, align 1, !tbaa !5
  %2061 = zext i8 %2060 to i64
  %2062 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2061
  %2063 = load i64, ptr %2062, align 8, !tbaa !14
  %2064 = and i64 %2063, 255
  %2065 = lshr i64 %2055, %2064
  %2066 = and i64 %2063, -256
  %2067 = or i64 %2065, %2066
  %2068 = add i64 %2063, %2054
  br label %2069

2069:                                             ; preds = %.thread27, %2051
  %2070 = phi i64 [ %2047, %2051 ], [ %2067, %.thread27 ]
  %2071 = phi i64 [ %2048, %2051 ], [ %2068, %.thread27 ]
  %2072 = sub nsw i32 %29, %2009
  %2073 = and i64 %2071, 255
  %2074 = lshr i64 %2073, 3
  %2075 = sub nsw i64 64, %2073
  %2076 = lshr i64 %2070, %2075
  %2077 = and i64 %2071, 7
  store i64 %2076, ptr %0, align 1, !tbaa !14
  %2078 = getelementptr inbounds nuw i8, ptr %0, i64 %2074
  br label %2079

2079:                                             ; preds = %2069, %2008
  %2080 = phi i64 [ %2077, %2069 ], [ 0, %2008 ]
  %2081 = phi ptr [ %2078, %2069 ], [ %0, %2008 ]
  %2082 = phi i64 [ %2070, %2069 ], [ 0, %2008 ]
  %2083 = phi i32 [ %2072, %2069 ], [ %29, %2008 ]
  %2084 = srem i32 %2083, 18
  %2085 = icmp eq i32 %2084, 0
  br i1 %2085, label %2216, label %2086

2086:                                             ; preds = %2079
  %2087 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2083, i32 -1)
  %2088 = extractvalue { i32, i1 } %2087, 1, !nosanitize !46
  br i1 %2088, label %.loopexit29, label %2089, !prof !49, !nosanitize !46

2089:                                             ; preds = %2086
  %2090 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2083, i32 -2)
  %2091 = extractvalue { i32, i1 } %2090, 1, !nosanitize !46
  br i1 %2091, label %.loopexit29, label %2092, !prof !49, !nosanitize !46

2092:                                             ; preds = %2089
  %2093 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2083, i32 -4)
  %2094 = extractvalue { i32, i1 } %2093, 1, !nosanitize !46
  br i1 %2094, label %.loopexit29, label %2095, !prof !49, !nosanitize !46

2095:                                             ; preds = %2092
  %2096 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2083, i32 -5)
  %2097 = extractvalue { i32, i1 } %2096, 1, !nosanitize !46
  br i1 %2097, label %.loopexit29, label %2098, !prof !49, !nosanitize !46

2098:                                             ; preds = %2095
  %2099 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2083, i32 -6)
  %2100 = extractvalue { i32, i1 } %2099, 1, !nosanitize !46
  br i1 %2100, label %.loopexit29, label %2101, !prof !49, !nosanitize !46

2101:                                             ; preds = %2098
  %2102 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2083, i32 -7)
  %2103 = extractvalue { i32, i1 } %2102, 1, !nosanitize !46
  br i1 %2103, label %.loopexit29, label %2104, !prof !49, !nosanitize !46

2104:                                             ; preds = %2101
  %2105 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2083, i32 -8)
  %2106 = extractvalue { i32, i1 } %2105, 1, !nosanitize !46
  br i1 %2106, label %.loopexit29, label %2107, !prof !49, !nosanitize !46

2107:                                             ; preds = %2104
  %2108 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2083, i32 -9)
  %2109 = extractvalue { i32, i1 } %2108, 1, !nosanitize !46
  br i1 %2109, label %.loopexit29, label %2110, !prof !49, !nosanitize !46

2110:                                             ; preds = %2107
  %2111 = extractvalue { i32, i1 } %2105, 0, !nosanitize !46
  %2112 = sext i32 %2111 to i64
  %2113 = getelementptr inbounds i8, ptr %2, i64 %2112
  %2114 = load i8, ptr %2113, align 1, !tbaa !5
  %2115 = zext i8 %2114 to i64
  %2116 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2115
  %2117 = load i64, ptr %2116, align 8, !tbaa !14
  %2118 = extractvalue { i32, i1 } %2102, 0, !nosanitize !46
  %2119 = sext i32 %2118 to i64
  %2120 = getelementptr inbounds i8, ptr %2, i64 %2119
  %2121 = load i8, ptr %2120, align 1, !tbaa !5
  %2122 = zext i8 %2121 to i64
  %2123 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2122
  %2124 = load i64, ptr %2123, align 8, !tbaa !14
  %2125 = extractvalue { i32, i1 } %2099, 0, !nosanitize !46
  %2126 = sext i32 %2125 to i64
  %2127 = getelementptr inbounds i8, ptr %2, i64 %2126
  %2128 = load i8, ptr %2127, align 1, !tbaa !5
  %2129 = zext i8 %2128 to i64
  %2130 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2129
  %2131 = load i64, ptr %2130, align 8, !tbaa !14
  %2132 = extractvalue { i32, i1 } %2096, 0, !nosanitize !46
  %2133 = sext i32 %2132 to i64
  %2134 = getelementptr inbounds i8, ptr %2, i64 %2133
  %2135 = load i8, ptr %2134, align 1, !tbaa !5
  %2136 = zext i8 %2135 to i64
  %2137 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2136
  %2138 = load i64, ptr %2137, align 8, !tbaa !14
  %2139 = extractvalue { i32, i1 } %2093, 0, !nosanitize !46
  %2140 = sext i32 %2139 to i64
  %2141 = getelementptr inbounds i8, ptr %2, i64 %2140
  %2142 = load i8, ptr %2141, align 1, !tbaa !5
  %2143 = zext i8 %2142 to i64
  %2144 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2143
  %2145 = load i64, ptr %2144, align 8, !tbaa !14
  %2146 = sext i32 %2083 to i64
  %2147 = getelementptr i8, ptr %2, i64 %2146
  %2148 = getelementptr i8, ptr %2147, i64 -3
  %2149 = load i8, ptr %2148, align 1, !tbaa !5
  %2150 = zext i8 %2149 to i64
  %2151 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2150
  %2152 = load i64, ptr %2151, align 8, !tbaa !14
  %2153 = extractvalue { i32, i1 } %2090, 0, !nosanitize !46
  %2154 = sext i32 %2153 to i64
  %2155 = getelementptr inbounds i8, ptr %2, i64 %2154
  %2156 = load i8, ptr %2155, align 1, !tbaa !5
  %2157 = zext i8 %2156 to i64
  %2158 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2157
  %2159 = load i64, ptr %2158, align 8, !tbaa !14
  %2160 = extractvalue { i32, i1 } %2087, 0, !nosanitize !46
  %2161 = sext i32 %2160 to i64
  %2162 = getelementptr inbounds i8, ptr %2, i64 %2161
  %2163 = load i8, ptr %2162, align 1, !tbaa !5
  %2164 = zext i8 %2163 to i64
  %2165 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2164
  %2166 = load i64, ptr %2165, align 8, !tbaa !14
  %2167 = and i64 %2166, 255
  %2168 = lshr i64 %2082, %2167
  %2169 = or i64 %2168, %2166
  %2170 = and i64 %2159, 255
  %2171 = lshr i64 %2169, %2170
  %2172 = or i64 %2171, %2159
  %2173 = and i64 %2152, 255
  %2174 = lshr i64 %2172, %2173
  %2175 = or i64 %2174, %2152
  %2176 = and i64 %2145, 255
  %2177 = lshr i64 %2175, %2176
  %2178 = or i64 %2177, %2145
  %2179 = and i64 %2138, 255
  %2180 = lshr i64 %2178, %2179
  %2181 = or i64 %2180, %2138
  %2182 = and i64 %2131, 255
  %2183 = lshr i64 %2181, %2182
  %2184 = or i64 %2183, %2131
  %2185 = and i64 %2124, 255
  %2186 = lshr i64 %2184, %2185
  %2187 = or i64 %2186, %2124
  %2188 = and i64 %2117, 255
  %2189 = lshr i64 %2187, %2188
  %2190 = or i64 %2189, %2117
  %2191 = extractvalue { i32, i1 } %2108, 0, !nosanitize !46
  %2192 = sext i32 %2191 to i64
  %2193 = getelementptr inbounds i8, ptr %2, i64 %2192
  %2194 = load i8, ptr %2193, align 1, !tbaa !5
  %2195 = zext i8 %2194 to i64
  %2196 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2195
  %2197 = load i64, ptr %2196, align 8, !tbaa !14
  %2198 = and i64 %2197, 255
  %2199 = lshr i64 %2190, %2198
  %2200 = or i64 %2199, %2197
  %2201 = add i64 %2117, %2080
  %2202 = add i64 %2201, %2124
  %2203 = add i64 %2202, %2131
  %2204 = add i64 %2203, %2138
  %2205 = add i64 %2204, %2145
  %2206 = add i64 %2205, %2152
  %2207 = add i64 %2206, %2159
  %2208 = add i64 %2207, %2166
  %2209 = add i64 %2208, %2197
  %2210 = and i64 %2209, 255
  %2211 = lshr i64 %2210, 3
  %2212 = sub nsw i64 64, %2210
  %2213 = lshr i64 %2200, %2212
  %2214 = and i64 %2209, 7
  store i64 %2213, ptr %2081, align 1, !tbaa !14
  %2215 = getelementptr inbounds nuw i8, ptr %2081, i64 %2211
  br label %2216

2216:                                             ; preds = %2110, %2079
  %2217 = phi i64 [ %2080, %2079 ], [ %2214, %2110 ]
  %2218 = phi ptr [ %2081, %2079 ], [ %2215, %2110 ]
  %2219 = phi i64 [ %2082, %2079 ], [ %2200, %2110 ]
  %2220 = phi i32 [ %2083, %2079 ], [ %2191, %2110 ]
  %2221 = getelementptr i8, ptr %2, i64 -18
  %2222 = icmp sgt i32 %2220, 0
  br i1 %2222, label %2223, label %.loopexit28

2223:                                             ; preds = %2216
  %2224 = zext nneg i32 %2220 to i64
  %2225 = getelementptr i8, ptr %2, i64 -1
  %2226 = getelementptr i8, ptr %2, i64 -2
  %2227 = getelementptr i8, ptr %2, i64 -3
  %2228 = getelementptr i8, ptr %2, i64 -4
  %2229 = getelementptr i8, ptr %2, i64 -5
  %2230 = getelementptr i8, ptr %2, i64 -6
  %2231 = getelementptr i8, ptr %2, i64 -7
  %2232 = getelementptr i8, ptr %2, i64 -8
  br label %2233

2233:                                             ; preds = %2350, %2223
  %2234 = phi i64 [ %2224, %2223 ], [ %2454, %2350 ]
  %2235 = phi i64 [ %2219, %2223 ], [ %2446, %2350 ]
  %2236 = phi ptr [ %2218, %2223 ], [ %2453, %2350 ]
  %2237 = phi i64 [ %2217, %2223 ], [ %2452, %2350 ]
  %2238 = getelementptr i8, ptr %2225, i64 %2234
  %2239 = load i8, ptr %2238, align 1, !tbaa !5
  %2240 = zext i8 %2239 to i64
  %2241 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2240
  %2242 = load i64, ptr %2241, align 8, !tbaa !14
  %2243 = and i64 %2242, 255
  %2244 = lshr i64 %2235, %2243
  %2245 = or i64 %2244, %2242
  %2246 = add i64 %2242, %2237
  %2247 = getelementptr i8, ptr %2226, i64 %2234
  %2248 = load i8, ptr %2247, align 1, !tbaa !5
  %2249 = zext i8 %2248 to i64
  %2250 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2249
  %2251 = load i64, ptr %2250, align 8, !tbaa !14
  %2252 = and i64 %2251, 255
  %2253 = lshr i64 %2245, %2252
  %2254 = or i64 %2253, %2251
  %2255 = add i64 %2246, %2251
  %2256 = getelementptr i8, ptr %2227, i64 %2234
  %2257 = load i8, ptr %2256, align 1, !tbaa !5
  %2258 = zext i8 %2257 to i64
  %2259 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2258
  %2260 = load i64, ptr %2259, align 8, !tbaa !14
  %2261 = and i64 %2260, 255
  %2262 = lshr i64 %2254, %2261
  %2263 = or i64 %2262, %2260
  %2264 = add i64 %2255, %2260
  %2265 = getelementptr i8, ptr %2228, i64 %2234
  %2266 = load i8, ptr %2265, align 1, !tbaa !5
  %2267 = zext i8 %2266 to i64
  %2268 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2267
  %2269 = load i64, ptr %2268, align 8, !tbaa !14
  %2270 = and i64 %2269, 255
  %2271 = lshr i64 %2263, %2270
  %2272 = or i64 %2271, %2269
  %2273 = add i64 %2264, %2269
  %2274 = getelementptr i8, ptr %2229, i64 %2234
  %2275 = load i8, ptr %2274, align 1, !tbaa !5
  %2276 = zext i8 %2275 to i64
  %2277 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2276
  %2278 = load i64, ptr %2277, align 8, !tbaa !14
  %2279 = and i64 %2278, 255
  %2280 = lshr i64 %2272, %2279
  %2281 = or i64 %2280, %2278
  %2282 = add i64 %2273, %2278
  %2283 = getelementptr i8, ptr %2230, i64 %2234
  %2284 = load i8, ptr %2283, align 1, !tbaa !5
  %2285 = zext i8 %2284 to i64
  %2286 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2285
  %2287 = load i64, ptr %2286, align 8, !tbaa !14
  %2288 = and i64 %2287, 255
  %2289 = lshr i64 %2281, %2288
  %2290 = or i64 %2289, %2287
  %2291 = add i64 %2282, %2287
  %2292 = getelementptr i8, ptr %2231, i64 %2234
  %2293 = load i8, ptr %2292, align 1, !tbaa !5
  %2294 = zext i8 %2293 to i64
  %2295 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2294
  %2296 = load i64, ptr %2295, align 8, !tbaa !14
  %2297 = and i64 %2296, 255
  %2298 = lshr i64 %2290, %2297
  %2299 = or i64 %2298, %2296
  %2300 = add i64 %2291, %2296
  %2301 = getelementptr i8, ptr %2232, i64 %2234
  %2302 = load i8, ptr %2301, align 1, !tbaa !5
  %2303 = zext i8 %2302 to i64
  %2304 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2303
  %2305 = load i64, ptr %2304, align 8, !tbaa !14
  %2306 = and i64 %2305, 255
  %2307 = lshr i64 %2299, %2306
  %2308 = or i64 %2307, %2305
  %2309 = add i64 %2300, %2305
  %2310 = add nsw i64 %2234, -9
  %2311 = getelementptr inbounds i8, ptr %2, i64 %2310
  %2312 = load i8, ptr %2311, align 1, !tbaa !5
  %2313 = zext i8 %2312 to i64
  %2314 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2313
  %2315 = load i64, ptr %2314, align 8, !tbaa !14
  %2316 = and i64 %2315, 255
  %2317 = lshr i64 %2308, %2316
  %2318 = or i64 %2317, %2315
  %2319 = add i64 %2309, %2315
  %2320 = and i64 %2319, 255
  %2321 = lshr i64 %2320, 3
  %2322 = sub nsw i64 64, %2320
  %2323 = lshr i64 %2318, %2322
  %2324 = and i64 %2319, 7
  store i64 %2323, ptr %2236, align 1, !tbaa !14
  %2325 = getelementptr inbounds nuw i8, ptr %2236, i64 %2321
  %2326 = trunc nsw i64 %2310 to i32
  %2327 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2326, i32 -1)
  %2328 = extractvalue { i32, i1 } %2327, 1, !nosanitize !46
  br i1 %2328, label %.loopexit29, label %2329, !prof !49, !nosanitize !46

2329:                                             ; preds = %2233
  %2330 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2326, i32 -2)
  %2331 = extractvalue { i32, i1 } %2330, 1, !nosanitize !46
  br i1 %2331, label %.loopexit29, label %2332, !prof !49, !nosanitize !46

2332:                                             ; preds = %2329
  %2333 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2326, i32 -3)
  %2334 = extractvalue { i32, i1 } %2333, 1, !nosanitize !46
  br i1 %2334, label %.loopexit29, label %2335, !prof !49, !nosanitize !46

2335:                                             ; preds = %2332
  %2336 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2326, i32 -4)
  %2337 = extractvalue { i32, i1 } %2336, 1, !nosanitize !46
  br i1 %2337, label %.loopexit29, label %2338, !prof !49, !nosanitize !46

2338:                                             ; preds = %2335
  %2339 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2326, i32 -5)
  %2340 = extractvalue { i32, i1 } %2339, 1, !nosanitize !46
  br i1 %2340, label %.loopexit29, label %2341, !prof !49, !nosanitize !46

2341:                                             ; preds = %2338
  %2342 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2326, i32 -6)
  %2343 = extractvalue { i32, i1 } %2342, 1, !nosanitize !46
  br i1 %2343, label %.loopexit29, label %2344, !prof !49, !nosanitize !46

2344:                                             ; preds = %2341
  %2345 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2326, i32 -7)
  %2346 = extractvalue { i32, i1 } %2345, 1, !nosanitize !46
  br i1 %2346, label %.loopexit29, label %2347, !prof !49, !nosanitize !46

2347:                                             ; preds = %2344
  %2348 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2326, i32 -8)
  %2349 = extractvalue { i32, i1 } %2348, 1, !nosanitize !46
  br i1 %2349, label %.loopexit29, label %2350, !prof !49, !nosanitize !46

2350:                                             ; preds = %2347
  %2351 = extractvalue { i32, i1 } %2345, 0, !nosanitize !46
  %2352 = sext i32 %2351 to i64
  %2353 = getelementptr inbounds i8, ptr %2, i64 %2352
  %2354 = load i8, ptr %2353, align 1, !tbaa !5
  %2355 = zext i8 %2354 to i64
  %2356 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2355
  %2357 = load i64, ptr %2356, align 8, !tbaa !14
  %2358 = extractvalue { i32, i1 } %2342, 0, !nosanitize !46
  %2359 = sext i32 %2358 to i64
  %2360 = getelementptr inbounds i8, ptr %2, i64 %2359
  %2361 = load i8, ptr %2360, align 1, !tbaa !5
  %2362 = zext i8 %2361 to i64
  %2363 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2362
  %2364 = load i64, ptr %2363, align 8, !tbaa !14
  %2365 = extractvalue { i32, i1 } %2339, 0, !nosanitize !46
  %2366 = sext i32 %2365 to i64
  %2367 = getelementptr inbounds i8, ptr %2, i64 %2366
  %2368 = load i8, ptr %2367, align 1, !tbaa !5
  %2369 = zext i8 %2368 to i64
  %2370 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2369
  %2371 = load i64, ptr %2370, align 8, !tbaa !14
  %2372 = extractvalue { i32, i1 } %2336, 0, !nosanitize !46
  %2373 = sext i32 %2372 to i64
  %2374 = getelementptr inbounds i8, ptr %2, i64 %2373
  %2375 = load i8, ptr %2374, align 1, !tbaa !5
  %2376 = zext i8 %2375 to i64
  %2377 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2376
  %2378 = load i64, ptr %2377, align 8, !tbaa !14
  %2379 = extractvalue { i32, i1 } %2333, 0, !nosanitize !46
  %2380 = sext i32 %2379 to i64
  %2381 = getelementptr inbounds i8, ptr %2, i64 %2380
  %2382 = load i8, ptr %2381, align 1, !tbaa !5
  %2383 = zext i8 %2382 to i64
  %2384 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2383
  %2385 = load i64, ptr %2384, align 8, !tbaa !14
  %2386 = extractvalue { i32, i1 } %2330, 0, !nosanitize !46
  %2387 = sext i32 %2386 to i64
  %2388 = getelementptr inbounds i8, ptr %2, i64 %2387
  %2389 = load i8, ptr %2388, align 1, !tbaa !5
  %2390 = zext i8 %2389 to i64
  %2391 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2390
  %2392 = load i64, ptr %2391, align 8, !tbaa !14
  %2393 = extractvalue { i32, i1 } %2327, 0, !nosanitize !46
  %2394 = sext i32 %2393 to i64
  %2395 = getelementptr inbounds i8, ptr %2, i64 %2394
  %2396 = load i8, ptr %2395, align 1, !tbaa !5
  %2397 = zext i8 %2396 to i64
  %2398 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2397
  %2399 = load i64, ptr %2398, align 8, !tbaa !14
  %2400 = and i64 %2392, 255
  %2401 = lshr i64 %2399, %2400
  %2402 = or i64 %2401, %2392
  %2403 = and i64 %2385, 255
  %2404 = lshr i64 %2402, %2403
  %2405 = or i64 %2404, %2385
  %2406 = and i64 %2378, 255
  %2407 = lshr i64 %2405, %2406
  %2408 = or i64 %2407, %2378
  %2409 = and i64 %2371, 255
  %2410 = lshr i64 %2408, %2409
  %2411 = or i64 %2410, %2371
  %2412 = and i64 %2364, 255
  %2413 = lshr i64 %2411, %2412
  %2414 = or i64 %2413, %2364
  %2415 = and i64 %2357, 255
  %2416 = lshr i64 %2414, %2415
  %2417 = or i64 %2416, %2357
  %2418 = extractvalue { i32, i1 } %2348, 0, !nosanitize !46
  %2419 = sext i32 %2418 to i64
  %2420 = getelementptr inbounds i8, ptr %2, i64 %2419
  %2421 = load i8, ptr %2420, align 1, !tbaa !5
  %2422 = zext i8 %2421 to i64
  %2423 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2422
  %2424 = load i64, ptr %2423, align 8, !tbaa !14
  %2425 = and i64 %2424, 255
  %2426 = lshr i64 %2417, %2425
  %2427 = or i64 %2426, %2424
  %2428 = getelementptr i8, ptr %2221, i64 %2234
  %2429 = load i8, ptr %2428, align 1, !tbaa !5
  %2430 = zext i8 %2429 to i64
  %2431 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %2430
  %2432 = load i64, ptr %2431, align 8, !tbaa !14
  %2433 = and i64 %2432, 255
  %2434 = lshr i64 %2427, %2433
  %2435 = add i64 %2364, %2357
  %2436 = add i64 %2435, %2371
  %2437 = add i64 %2436, %2378
  %2438 = add i64 %2437, %2385
  %2439 = add i64 %2438, %2392
  %2440 = add i64 %2439, %2399
  %2441 = add i64 %2440, %2424
  %2442 = add i64 %2441, %2432
  %2443 = and i64 %2442, 255
  %2444 = lshr i64 %2318, %2443
  %2445 = or i64 %2444, %2434
  %2446 = or i64 %2445, %2432
  %2447 = add i64 %2442, %2324
  %2448 = and i64 %2447, 255
  %2449 = lshr i64 %2448, 3
  %2450 = sub nsw i64 64, %2448
  %2451 = lshr i64 %2446, %2450
  %2452 = and i64 %2447, 7
  store i64 %2451, ptr %2325, align 1, !tbaa !14
  %2453 = getelementptr inbounds nuw i8, ptr %2325, i64 %2449
  %2454 = add nsw i64 %2234, -18
  %2455 = icmp sgt i64 %2234, 18
  br i1 %2455, label %2233, label %.loopexit28, !llvm.loop !76

.loopexit28:                                      ; preds = %1912, %1514, %1150, %822, %522, %2350, %228, %2216, %1790, %1405, %1054, %740, %439, %156
  %2456 = phi i64 [ %157, %156 ], [ %2217, %2216 ], [ %440, %439 ], [ %741, %740 ], [ %1055, %1054 ], [ %1406, %1405 ], [ %1791, %1790 ], [ %581, %522 ], [ %880, %822 ], [ %1220, %1150 ], [ %1595, %1514 ], [ %276, %228 ], [ %2452, %2350 ], [ %2004, %1912 ]
  %2457 = phi ptr [ %158, %156 ], [ %2218, %2216 ], [ %441, %439 ], [ %742, %740 ], [ %1056, %1054 ], [ %1407, %1405 ], [ %1792, %1790 ], [ %582, %522 ], [ %881, %822 ], [ %1221, %1150 ], [ %1596, %1514 ], [ %279, %228 ], [ %2453, %2350 ], [ %2005, %1912 ]
  %2458 = phi i64 [ %159, %156 ], [ %2219, %2216 ], [ %442, %439 ], [ %743, %740 ], [ %1057, %1054 ], [ %1408, %1405 ], [ %1793, %1790 ], [ %575, %522 ], [ %874, %822 ], [ %1214, %1150 ], [ %1589, %1514 ], [ %270, %228 ], [ %2446, %2350 ], [ %1998, %1912 ]
  %2459 = lshr i64 %2458, 1
  %2460 = or disjoint i64 %2459, -9223372036854775808
  %2461 = add nuw nsw i64 %2456, -9223372036854775807
  %2462 = and i64 %2461, 255
  %2463 = lshr i64 %2462, 3
  %2464 = sub nuw nsw i64 64, %2462
  %2465 = lshr i64 %2460, %2464
  store i64 %2465, ptr %2457, align 1, !tbaa !14
  %2466 = getelementptr inbounds nuw i8, ptr %2457, i64 %2463
  %2467 = icmp ugt ptr %2466, %19
  %2468 = select i1 %2467, ptr %19, ptr %2466
  %2469 = icmp ult ptr %2468, %19
  br i1 %2469, label %2470, label %2478

2470:                                             ; preds = %.loopexit28
  %2471 = and i64 %2461, 7
  %2472 = ptrtoint ptr %2468 to i64
  %2473 = ptrtoint ptr %0 to i64
  %2474 = icmp ne i64 %2471, 0
  %2475 = zext i1 %2474 to i64
  %2476 = sub i64 %2475, %2473
  %2477 = add i64 %2476, %2472
  br label %2478

2478:                                             ; preds = %2470, %.loopexit28, %17, %11, %9
  %2479 = phi i64 [ %10, %9 ], [ 0, %17 ], [ 0, %11 ], [ %2477, %2470 ], [ 0, %.loopexit28 ]
  ret i64 %2479
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
  br i1 %10, label %2464, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = icmp eq i64 %1, 8
  br i1 %14, label %2464, label %15

15:                                               ; preds = %11
  %16 = and i64 %6, 255
  %17 = mul i64 %16, %3
  %18 = lshr i64 %17, 3
  %19 = add nuw nsw i64 %18, 8
  %20 = icmp ult i64 %1, %19
  %21 = icmp samesign ugt i32 %8, 11
  %22 = select i1 %20, i1 true, i1 %21
  %23 = trunc i64 %3 to i32
  br i1 %22, label %24, label %276

24:                                               ; preds = %15
  %25 = srem i32 %23, 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %80

27:                                               ; preds = %24
  %28 = icmp eq i32 %25, 1
  br i1 %28, label %.thread, label %29

.loopexit:                                        ; preds = %219, %216, %162, %93, %90, %87
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

29:                                               ; preds = %27
  %30 = and i32 %25, 1
  %31 = shl i64 %3, 32
  %sext = add i64 %31, -4294967296
  %32 = ashr exact i64 %sext, 32
  %33 = getelementptr inbounds i8, ptr %2, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !5
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !14
  %38 = shl i64 %3, 32
  %sext153 = add i64 %38, -8589934592
  %39 = ashr exact i64 %sext153, 32
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
  %sext154 = add i64 %56, -4294967296
  %57 = ashr exact i64 %sext154, 32
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
  br i1 %156, label %157, label %.loopexit26

157:                                              ; preds = %150
  %158 = zext nneg i32 %154 to i64
  %159 = getelementptr i8, ptr %2, i64 -1
  %160 = getelementptr i8, ptr %2, i64 -2
  %161 = getelementptr i8, ptr %2, i64 -3
  br label %162

162:                                              ; preds = %222, %157
  %163 = phi i64 [ %158, %157 ], [ %274, %222 ]
  %164 = phi i64 [ %153, %157 ], [ %264, %222 ]
  %165 = phi ptr [ %152, %157 ], [ %273, %222 ]
  %166 = phi i64 [ %151, %157 ], [ %270, %222 ]
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
  %206 = lshr i64 %205, 3
  %207 = sub nsw i64 64, %205
  %208 = lshr i64 %203, %207
  %209 = and i64 %204, 7
  store i64 %208, ptr %165, align 1, !tbaa !14
  %210 = getelementptr inbounds nuw i8, ptr %165, i64 %206
  %211 = icmp ugt ptr %210, %13
  %212 = select i1 %211, ptr %13, ptr %210
  %213 = trunc nsw i64 %194 to i32
  %214 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %213, i32 -1)
  %215 = extractvalue { i32, i1 } %214, 1, !nosanitize !46
  br i1 %215, label %.loopexit, label %216, !prof !49, !nosanitize !46

216:                                              ; preds = %162
  %217 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %213, i32 -2)
  %218 = extractvalue { i32, i1 } %217, 1, !nosanitize !46
  br i1 %218, label %.loopexit, label %219, !prof !49, !nosanitize !46

219:                                              ; preds = %216
  %220 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %213, i32 -3)
  %221 = extractvalue { i32, i1 } %220, 1, !nosanitize !46
  br i1 %221, label %.loopexit, label %222, !prof !49, !nosanitize !46

222:                                              ; preds = %219
  %223 = extractvalue { i32, i1 } %217, 0, !nosanitize !46
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, ptr %2, i64 %224
  %226 = load i8, ptr %225, align 1, !tbaa !5
  %227 = zext i8 %226 to i64
  %228 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %227
  %229 = load i64, ptr %228, align 8, !tbaa !14
  %230 = extractvalue { i32, i1 } %214, 0, !nosanitize !46
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, ptr %2, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !5
  %234 = zext i8 %233 to i64
  %235 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %234
  %236 = load i64, ptr %235, align 8, !tbaa !14
  %237 = add i64 %236, %229
  %238 = and i64 %229, 255
  %239 = lshr i64 %236, %238
  %240 = or i64 %239, %229
  %241 = extractvalue { i32, i1 } %220, 0, !nosanitize !46
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, ptr %2, i64 %242
  %244 = load i8, ptr %243, align 1, !tbaa !5
  %245 = zext i8 %244 to i64
  %246 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %245
  %247 = load i64, ptr %246, align 8, !tbaa !14
  %248 = and i64 %247, 255
  %249 = lshr i64 %240, %248
  %250 = or i64 %249, %247
  %251 = add i64 %237, %247
  %252 = getelementptr i8, ptr %155, i64 %163
  %253 = load i8, ptr %252, align 1, !tbaa !5
  %254 = zext i8 %253 to i64
  %255 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %254
  %256 = load i64, ptr %255, align 8, !tbaa !14
  %257 = and i64 %256, 255
  %258 = lshr i64 %250, %257
  %259 = and i64 %256, -256
  %260 = or i64 %258, %259
  %261 = add i64 %251, %256
  %262 = and i64 %261, 255
  %263 = lshr i64 %203, %262
  %264 = or i64 %260, %263
  %265 = add i64 %261, %209
  %266 = and i64 %265, 255
  %267 = lshr i64 %266, 3
  %268 = sub nsw i64 64, %266
  %269 = lshr i64 %264, %268
  %270 = and i64 %265, 7
  store i64 %269, ptr %212, align 1, !tbaa !14
  %271 = getelementptr inbounds nuw i8, ptr %212, i64 %267
  %272 = icmp ugt ptr %271, %13
  %273 = select i1 %272, ptr %13, ptr %271
  %274 = add nsw i64 %163, -8
  %275 = icmp sgt i64 %163, 8
  br i1 %275, label %162, label %.loopexit26, !llvm.loop !76

276:                                              ; preds = %15
  switch i32 %8, label %1994 [
    i32 11, label %277
    i32 10, label %575
    i32 9, label %870
    i32 8, label %1210
    i32 7, label %1585
  ]

277:                                              ; preds = %276
  %278 = srem i32 %23, 5
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %344

280:                                              ; preds = %277
  %281 = and i32 %278, 1
  %282 = icmp eq i32 %278, 1
  br i1 %282, label %.thread20, label %283

283:                                              ; preds = %280
  %284 = and i32 %278, 2147483646
  br label %285

285:                                              ; preds = %285, %283
  %286 = phi i32 [ %23, %283 ], [ %302, %285 ]
  %287 = phi i64 [ 0, %283 ], [ %312, %285 ]
  %288 = phi i64 [ 0, %283 ], [ %313, %285 ]
  %289 = phi i32 [ 0, %283 ], [ %314, %285 ]
  %290 = add i32 %286, -1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8, ptr %2, i64 %291
  %293 = load i8, ptr %292, align 1, !tbaa !5
  %294 = zext i8 %293 to i64
  %295 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %294
  %296 = load i64, ptr %295, align 8, !tbaa !14
  %297 = and i64 %296, 255
  %298 = lshr i64 %287, %297
  %299 = and i64 %296, -256
  %300 = or i64 %298, %299
  %301 = add i64 %296, %288
  %302 = add i32 %286, -2
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, ptr %2, i64 %303
  %305 = load i8, ptr %304, align 1, !tbaa !5
  %306 = zext i8 %305 to i64
  %307 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %306
  %308 = load i64, ptr %307, align 8, !tbaa !14
  %309 = and i64 %308, 255
  %310 = lshr i64 %300, %309
  %311 = and i64 %308, -256
  %312 = or i64 %310, %311
  %313 = add i64 %301, %308
  %314 = add i32 %289, 2
  %315 = icmp eq i32 %314, %284
  br i1 %315, label %316, label %285, !llvm.loop !78

.loopexit29:                                      ; preds = %509, %506, %503, %442, %363, %360, %357, %354, %351
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

316:                                              ; preds = %285
  %317 = sub i32 %23, %284
  %318 = icmp eq i32 %281, 0
  br i1 %318, label %334, label %.thread20

.thread20:                                        ; preds = %280, %316
  %319 = phi i64 [ %313, %316 ], [ 0, %280 ]
  %320 = phi i64 [ %312, %316 ], [ 0, %280 ]
  %321 = phi i32 [ %317, %316 ], [ %23, %280 ]
  %322 = add i32 %321, -1
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8, ptr %2, i64 %323
  %325 = load i8, ptr %324, align 1, !tbaa !5
  %326 = zext i8 %325 to i64
  %327 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %326
  %328 = load i64, ptr %327, align 8, !tbaa !14
  %329 = and i64 %328, 255
  %330 = lshr i64 %320, %329
  %331 = and i64 %328, -256
  %332 = or i64 %330, %331
  %333 = add i64 %328, %319
  br label %334

334:                                              ; preds = %.thread20, %316
  %335 = phi i64 [ %312, %316 ], [ %332, %.thread20 ]
  %336 = phi i64 [ %313, %316 ], [ %333, %.thread20 ]
  %337 = sub nsw i32 %23, %278
  %338 = and i64 %336, 255
  %339 = lshr i64 %338, 3
  %340 = sub nsw i64 64, %338
  %341 = lshr i64 %335, %340
  %342 = and i64 %336, 7
  store i64 %341, ptr %0, align 1, !tbaa !14
  %343 = getelementptr inbounds nuw i8, ptr %0, i64 %339
  br label %344

344:                                              ; preds = %334, %277
  %345 = phi i64 [ %342, %334 ], [ 0, %277 ]
  %346 = phi ptr [ %343, %334 ], [ %0, %277 ]
  %347 = phi i64 [ %335, %334 ], [ 0, %277 ]
  %348 = phi i32 [ %337, %334 ], [ %23, %277 ]
  %349 = srem i32 %348, 10
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %429, label %351

351:                                              ; preds = %344
  %352 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %348, i32 -1)
  %353 = extractvalue { i32, i1 } %352, 1, !nosanitize !46
  br i1 %353, label %.loopexit29, label %354, !prof !49, !nosanitize !46

354:                                              ; preds = %351
  %355 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %348, i32 -2)
  %356 = extractvalue { i32, i1 } %355, 1, !nosanitize !46
  br i1 %356, label %.loopexit29, label %357, !prof !49, !nosanitize !46

357:                                              ; preds = %354
  %358 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %348, i32 -3)
  %359 = extractvalue { i32, i1 } %358, 1, !nosanitize !46
  br i1 %359, label %.loopexit29, label %360, !prof !49, !nosanitize !46

360:                                              ; preds = %357
  %361 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %348, i32 -4)
  %362 = extractvalue { i32, i1 } %361, 1, !nosanitize !46
  br i1 %362, label %.loopexit29, label %363, !prof !49, !nosanitize !46

363:                                              ; preds = %360
  %364 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %348, i32 -5)
  %365 = extractvalue { i32, i1 } %364, 1, !nosanitize !46
  br i1 %365, label %.loopexit29, label %366, !prof !49, !nosanitize !46

366:                                              ; preds = %363
  %367 = extractvalue { i32, i1 } %361, 0, !nosanitize !46
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i8, ptr %2, i64 %368
  %370 = load i8, ptr %369, align 1, !tbaa !5
  %371 = zext i8 %370 to i64
  %372 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %371
  %373 = load i64, ptr %372, align 8, !tbaa !14
  %374 = extractvalue { i32, i1 } %358, 0, !nosanitize !46
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i8, ptr %2, i64 %375
  %377 = load i8, ptr %376, align 1, !tbaa !5
  %378 = zext i8 %377 to i64
  %379 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %378
  %380 = load i64, ptr %379, align 8, !tbaa !14
  %381 = extractvalue { i32, i1 } %355, 0, !nosanitize !46
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i8, ptr %2, i64 %382
  %384 = load i8, ptr %383, align 1, !tbaa !5
  %385 = zext i8 %384 to i64
  %386 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %385
  %387 = load i64, ptr %386, align 8, !tbaa !14
  %388 = extractvalue { i32, i1 } %352, 0, !nosanitize !46
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8, ptr %2, i64 %389
  %391 = load i8, ptr %390, align 1, !tbaa !5
  %392 = zext i8 %391 to i64
  %393 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %392
  %394 = load i64, ptr %393, align 8, !tbaa !14
  %395 = and i64 %394, 255
  %396 = lshr i64 %347, %395
  %397 = or i64 %396, %394
  %398 = and i64 %387, 255
  %399 = lshr i64 %397, %398
  %400 = or i64 %399, %387
  %401 = and i64 %380, 255
  %402 = lshr i64 %400, %401
  %403 = or i64 %402, %380
  %404 = and i64 %373, 255
  %405 = lshr i64 %403, %404
  %406 = or i64 %405, %373
  %407 = extractvalue { i32, i1 } %364, 0, !nosanitize !46
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i8, ptr %2, i64 %408
  %410 = load i8, ptr %409, align 1, !tbaa !5
  %411 = zext i8 %410 to i64
  %412 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %411
  %413 = load i64, ptr %412, align 8, !tbaa !14
  %414 = and i64 %413, 255
  %415 = lshr i64 %406, %414
  %416 = and i64 %413, -256
  %417 = or i64 %415, %416
  %418 = add i64 %373, %345
  %419 = add i64 %418, %380
  %420 = add i64 %419, %387
  %421 = add i64 %420, %394
  %422 = add i64 %421, %413
  %423 = and i64 %422, 255
  %424 = lshr i64 %423, 3
  %425 = sub nsw i64 64, %423
  %426 = lshr i64 %417, %425
  %427 = and i64 %422, 7
  store i64 %426, ptr %346, align 1, !tbaa !14
  %428 = getelementptr inbounds nuw i8, ptr %346, i64 %424
  br label %429

429:                                              ; preds = %366, %344
  %430 = phi i64 [ %345, %344 ], [ %427, %366 ]
  %431 = phi ptr [ %346, %344 ], [ %428, %366 ]
  %432 = phi i64 [ %347, %344 ], [ %417, %366 ]
  %433 = phi i32 [ %348, %344 ], [ %407, %366 ]
  %434 = getelementptr i8, ptr %2, i64 -10
  %435 = icmp sgt i32 %433, 0
  br i1 %435, label %436, label %.loopexit26

436:                                              ; preds = %429
  %437 = zext nneg i32 %433 to i64
  %438 = getelementptr i8, ptr %2, i64 -1
  %439 = getelementptr i8, ptr %2, i64 -2
  %440 = getelementptr i8, ptr %2, i64 -3
  %441 = getelementptr i8, ptr %2, i64 -4
  br label %442

442:                                              ; preds = %512, %436
  %443 = phi i64 [ %437, %436 ], [ %573, %512 ]
  %444 = phi i64 [ %432, %436 ], [ %565, %512 ]
  %445 = phi ptr [ %431, %436 ], [ %572, %512 ]
  %446 = phi i64 [ %430, %436 ], [ %571, %512 ]
  %447 = getelementptr i8, ptr %438, i64 %443
  %448 = load i8, ptr %447, align 1, !tbaa !5
  %449 = zext i8 %448 to i64
  %450 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %449
  %451 = load i64, ptr %450, align 8, !tbaa !14
  %452 = and i64 %451, 255
  %453 = lshr i64 %444, %452
  %454 = or i64 %453, %451
  %455 = add i64 %451, %446
  %456 = getelementptr i8, ptr %439, i64 %443
  %457 = load i8, ptr %456, align 1, !tbaa !5
  %458 = zext i8 %457 to i64
  %459 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %458
  %460 = load i64, ptr %459, align 8, !tbaa !14
  %461 = and i64 %460, 255
  %462 = lshr i64 %454, %461
  %463 = or i64 %462, %460
  %464 = add i64 %455, %460
  %465 = getelementptr i8, ptr %440, i64 %443
  %466 = load i8, ptr %465, align 1, !tbaa !5
  %467 = zext i8 %466 to i64
  %468 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %467
  %469 = load i64, ptr %468, align 8, !tbaa !14
  %470 = and i64 %469, 255
  %471 = lshr i64 %463, %470
  %472 = or i64 %471, %469
  %473 = add i64 %464, %469
  %474 = getelementptr i8, ptr %441, i64 %443
  %475 = load i8, ptr %474, align 1, !tbaa !5
  %476 = zext i8 %475 to i64
  %477 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %476
  %478 = load i64, ptr %477, align 8, !tbaa !14
  %479 = and i64 %478, 255
  %480 = lshr i64 %472, %479
  %481 = or i64 %480, %478
  %482 = add i64 %473, %478
  %483 = add nsw i64 %443, -5
  %484 = getelementptr inbounds i8, ptr %2, i64 %483
  %485 = load i8, ptr %484, align 1, !tbaa !5
  %486 = zext i8 %485 to i64
  %487 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %486
  %488 = load i64, ptr %487, align 8, !tbaa !14
  %489 = and i64 %488, 255
  %490 = lshr i64 %481, %489
  %491 = and i64 %488, -256
  %492 = or i64 %490, %491
  %493 = add i64 %482, %488
  %494 = and i64 %493, 255
  %495 = lshr i64 %494, 3
  %496 = sub nsw i64 64, %494
  %497 = lshr i64 %492, %496
  %498 = and i64 %493, 7
  store i64 %497, ptr %445, align 1, !tbaa !14
  %499 = getelementptr inbounds nuw i8, ptr %445, i64 %495
  %500 = trunc nsw i64 %483 to i32
  %501 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %500, i32 -1)
  %502 = extractvalue { i32, i1 } %501, 1, !nosanitize !46
  br i1 %502, label %.loopexit29, label %503, !prof !49, !nosanitize !46

503:                                              ; preds = %442
  %504 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %500, i32 -2)
  %505 = extractvalue { i32, i1 } %504, 1, !nosanitize !46
  br i1 %505, label %.loopexit29, label %506, !prof !49, !nosanitize !46

506:                                              ; preds = %503
  %507 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %500, i32 -3)
  %508 = extractvalue { i32, i1 } %507, 1, !nosanitize !46
  br i1 %508, label %.loopexit29, label %509, !prof !49, !nosanitize !46

509:                                              ; preds = %506
  %510 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %500, i32 -4)
  %511 = extractvalue { i32, i1 } %510, 1, !nosanitize !46
  br i1 %511, label %.loopexit29, label %512, !prof !49, !nosanitize !46

512:                                              ; preds = %509
  %513 = extractvalue { i32, i1 } %507, 0, !nosanitize !46
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i8, ptr %2, i64 %514
  %516 = load i8, ptr %515, align 1, !tbaa !5
  %517 = zext i8 %516 to i64
  %518 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %517
  %519 = load i64, ptr %518, align 8, !tbaa !14
  %520 = extractvalue { i32, i1 } %504, 0, !nosanitize !46
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i8, ptr %2, i64 %521
  %523 = load i8, ptr %522, align 1, !tbaa !5
  %524 = zext i8 %523 to i64
  %525 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %524
  %526 = load i64, ptr %525, align 8, !tbaa !14
  %527 = extractvalue { i32, i1 } %501, 0, !nosanitize !46
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds i8, ptr %2, i64 %528
  %530 = load i8, ptr %529, align 1, !tbaa !5
  %531 = zext i8 %530 to i64
  %532 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %531
  %533 = load i64, ptr %532, align 8, !tbaa !14
  %534 = and i64 %526, 255
  %535 = lshr i64 %533, %534
  %536 = or i64 %535, %526
  %537 = and i64 %519, 255
  %538 = lshr i64 %536, %537
  %539 = or i64 %538, %519
  %540 = extractvalue { i32, i1 } %510, 0, !nosanitize !46
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i8, ptr %2, i64 %541
  %543 = load i8, ptr %542, align 1, !tbaa !5
  %544 = zext i8 %543 to i64
  %545 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %544
  %546 = load i64, ptr %545, align 8, !tbaa !14
  %547 = and i64 %546, 255
  %548 = lshr i64 %539, %547
  %549 = or i64 %548, %546
  %550 = getelementptr i8, ptr %434, i64 %443
  %551 = load i8, ptr %550, align 1, !tbaa !5
  %552 = zext i8 %551 to i64
  %553 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %552
  %554 = load i64, ptr %553, align 8, !tbaa !14
  %555 = and i64 %554, 255
  %556 = lshr i64 %549, %555
  %557 = and i64 %554, -256
  %558 = or i64 %556, %557
  %559 = add i64 %526, %519
  %560 = add i64 %559, %533
  %561 = add i64 %560, %546
  %562 = add i64 %561, %554
  %563 = and i64 %562, 255
  %564 = lshr i64 %492, %563
  %565 = or i64 %558, %564
  %566 = add i64 %562, %498
  %567 = and i64 %566, 255
  %568 = lshr i64 %567, 3
  %569 = sub nsw i64 64, %567
  %570 = lshr i64 %565, %569
  %571 = and i64 %566, 7
  store i64 %570, ptr %499, align 1, !tbaa !14
  %572 = getelementptr inbounds nuw i8, ptr %499, i64 %568
  %573 = add nsw i64 %443, -10
  %574 = icmp sgt i64 %443, 10
  br i1 %574, label %442, label %.loopexit26, !llvm.loop !76

575:                                              ; preds = %276
  %576 = srem i32 %23, 5
  %577 = icmp sgt i32 %576, 0
  br i1 %577, label %578, label %642

578:                                              ; preds = %575
  %579 = and i32 %576, 1
  %580 = icmp eq i32 %576, 1
  br i1 %580, label %.thread21, label %581

581:                                              ; preds = %578
  %582 = and i32 %576, 2147483646
  br label %583

583:                                              ; preds = %583, %581
  %584 = phi i32 [ %23, %581 ], [ %600, %583 ]
  %585 = phi i64 [ 0, %581 ], [ %610, %583 ]
  %586 = phi i64 [ 0, %581 ], [ %611, %583 ]
  %587 = phi i32 [ 0, %581 ], [ %612, %583 ]
  %588 = add i32 %584, -1
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i8, ptr %2, i64 %589
  %591 = load i8, ptr %590, align 1, !tbaa !5
  %592 = zext i8 %591 to i64
  %593 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %592
  %594 = load i64, ptr %593, align 8, !tbaa !14
  %595 = and i64 %594, 255
  %596 = lshr i64 %585, %595
  %597 = and i64 %594, -256
  %598 = or i64 %596, %597
  %599 = add i64 %594, %586
  %600 = add i32 %584, -2
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i8, ptr %2, i64 %601
  %603 = load i8, ptr %602, align 1, !tbaa !5
  %604 = zext i8 %603 to i64
  %605 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %604
  %606 = load i64, ptr %605, align 8, !tbaa !14
  %607 = and i64 %606, 255
  %608 = lshr i64 %598, %607
  %609 = and i64 %606, -256
  %610 = or i64 %608, %609
  %611 = add i64 %599, %606
  %612 = add i32 %587, 2
  %613 = icmp eq i32 %612, %582
  br i1 %613, label %614, label %583, !llvm.loop !78

.loopexit31:                                      ; preds = %805, %802, %799, %739, %661, %658, %655, %652, %649
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

614:                                              ; preds = %583
  %615 = sub i32 %23, %582
  %616 = icmp eq i32 %579, 0
  br i1 %616, label %632, label %.thread21

.thread21:                                        ; preds = %578, %614
  %617 = phi i64 [ %611, %614 ], [ 0, %578 ]
  %618 = phi i64 [ %610, %614 ], [ 0, %578 ]
  %619 = phi i32 [ %615, %614 ], [ %23, %578 ]
  %620 = add i32 %619, -1
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds i8, ptr %2, i64 %621
  %623 = load i8, ptr %622, align 1, !tbaa !5
  %624 = zext i8 %623 to i64
  %625 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %624
  %626 = load i64, ptr %625, align 8, !tbaa !14
  %627 = and i64 %626, 255
  %628 = lshr i64 %618, %627
  %629 = and i64 %626, -256
  %630 = or i64 %628, %629
  %631 = add i64 %626, %617
  br label %632

632:                                              ; preds = %.thread21, %614
  %633 = phi i64 [ %610, %614 ], [ %630, %.thread21 ]
  %634 = phi i64 [ %611, %614 ], [ %631, %.thread21 ]
  %635 = sub nsw i32 %23, %576
  %636 = and i64 %634, 255
  %637 = lshr i64 %636, 3
  %638 = sub nsw i64 64, %636
  %639 = lshr i64 %633, %638
  %640 = and i64 %634, 7
  store i64 %639, ptr %0, align 1, !tbaa !14
  %641 = getelementptr inbounds nuw i8, ptr %0, i64 %637
  br label %642

642:                                              ; preds = %632, %575
  %643 = phi i64 [ %640, %632 ], [ 0, %575 ]
  %644 = phi ptr [ %641, %632 ], [ %0, %575 ]
  %645 = phi i64 [ %633, %632 ], [ 0, %575 ]
  %646 = phi i32 [ %635, %632 ], [ %23, %575 ]
  %647 = srem i32 %646, 10
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %726, label %649

649:                                              ; preds = %642
  %650 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %646, i32 -1)
  %651 = extractvalue { i32, i1 } %650, 1, !nosanitize !46
  br i1 %651, label %.loopexit31, label %652, !prof !49, !nosanitize !46

652:                                              ; preds = %649
  %653 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %646, i32 -2)
  %654 = extractvalue { i32, i1 } %653, 1, !nosanitize !46
  br i1 %654, label %.loopexit31, label %655, !prof !49, !nosanitize !46

655:                                              ; preds = %652
  %656 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %646, i32 -3)
  %657 = extractvalue { i32, i1 } %656, 1, !nosanitize !46
  br i1 %657, label %.loopexit31, label %658, !prof !49, !nosanitize !46

658:                                              ; preds = %655
  %659 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %646, i32 -4)
  %660 = extractvalue { i32, i1 } %659, 1, !nosanitize !46
  br i1 %660, label %.loopexit31, label %661, !prof !49, !nosanitize !46

661:                                              ; preds = %658
  %662 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %646, i32 -5)
  %663 = extractvalue { i32, i1 } %662, 1, !nosanitize !46
  br i1 %663, label %.loopexit31, label %664, !prof !49, !nosanitize !46

664:                                              ; preds = %661
  %665 = extractvalue { i32, i1 } %659, 0, !nosanitize !46
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds i8, ptr %2, i64 %666
  %668 = load i8, ptr %667, align 1, !tbaa !5
  %669 = zext i8 %668 to i64
  %670 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %669
  %671 = load i64, ptr %670, align 8, !tbaa !14
  %672 = extractvalue { i32, i1 } %656, 0, !nosanitize !46
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds i8, ptr %2, i64 %673
  %675 = load i8, ptr %674, align 1, !tbaa !5
  %676 = zext i8 %675 to i64
  %677 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %676
  %678 = load i64, ptr %677, align 8, !tbaa !14
  %679 = extractvalue { i32, i1 } %653, 0, !nosanitize !46
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds i8, ptr %2, i64 %680
  %682 = load i8, ptr %681, align 1, !tbaa !5
  %683 = zext i8 %682 to i64
  %684 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %683
  %685 = load i64, ptr %684, align 8, !tbaa !14
  %686 = extractvalue { i32, i1 } %650, 0, !nosanitize !46
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds i8, ptr %2, i64 %687
  %689 = load i8, ptr %688, align 1, !tbaa !5
  %690 = zext i8 %689 to i64
  %691 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %690
  %692 = load i64, ptr %691, align 8, !tbaa !14
  %693 = and i64 %692, 255
  %694 = lshr i64 %645, %693
  %695 = or i64 %694, %692
  %696 = and i64 %685, 255
  %697 = lshr i64 %695, %696
  %698 = or i64 %697, %685
  %699 = and i64 %678, 255
  %700 = lshr i64 %698, %699
  %701 = or i64 %700, %678
  %702 = and i64 %671, 255
  %703 = lshr i64 %701, %702
  %704 = or i64 %703, %671
  %705 = extractvalue { i32, i1 } %662, 0, !nosanitize !46
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds i8, ptr %2, i64 %706
  %708 = load i8, ptr %707, align 1, !tbaa !5
  %709 = zext i8 %708 to i64
  %710 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %709
  %711 = load i64, ptr %710, align 8, !tbaa !14
  %712 = and i64 %711, 255
  %713 = lshr i64 %704, %712
  %714 = or i64 %713, %711
  %715 = add i64 %671, %643
  %716 = add i64 %715, %678
  %717 = add i64 %716, %685
  %718 = add i64 %717, %692
  %719 = add i64 %718, %711
  %720 = and i64 %719, 255
  %721 = lshr i64 %720, 3
  %722 = sub nsw i64 64, %720
  %723 = lshr i64 %714, %722
  %724 = and i64 %719, 7
  store i64 %723, ptr %644, align 1, !tbaa !14
  %725 = getelementptr inbounds nuw i8, ptr %644, i64 %721
  br label %726

726:                                              ; preds = %664, %642
  %727 = phi i64 [ %643, %642 ], [ %724, %664 ]
  %728 = phi ptr [ %644, %642 ], [ %725, %664 ]
  %729 = phi i64 [ %645, %642 ], [ %714, %664 ]
  %730 = phi i32 [ %646, %642 ], [ %705, %664 ]
  %731 = getelementptr i8, ptr %2, i64 -10
  %732 = icmp sgt i32 %730, 0
  br i1 %732, label %733, label %.loopexit26

733:                                              ; preds = %726
  %734 = zext nneg i32 %730 to i64
  %735 = getelementptr i8, ptr %2, i64 -1
  %736 = getelementptr i8, ptr %2, i64 -2
  %737 = getelementptr i8, ptr %2, i64 -3
  %738 = getelementptr i8, ptr %2, i64 -4
  br label %739

739:                                              ; preds = %808, %733
  %740 = phi i64 [ %734, %733 ], [ %868, %808 ]
  %741 = phi i64 [ %729, %733 ], [ %860, %808 ]
  %742 = phi ptr [ %728, %733 ], [ %867, %808 ]
  %743 = phi i64 [ %727, %733 ], [ %866, %808 ]
  %744 = getelementptr i8, ptr %735, i64 %740
  %745 = load i8, ptr %744, align 1, !tbaa !5
  %746 = zext i8 %745 to i64
  %747 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %746
  %748 = load i64, ptr %747, align 8, !tbaa !14
  %749 = and i64 %748, 255
  %750 = lshr i64 %741, %749
  %751 = or i64 %750, %748
  %752 = add i64 %748, %743
  %753 = getelementptr i8, ptr %736, i64 %740
  %754 = load i8, ptr %753, align 1, !tbaa !5
  %755 = zext i8 %754 to i64
  %756 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %755
  %757 = load i64, ptr %756, align 8, !tbaa !14
  %758 = and i64 %757, 255
  %759 = lshr i64 %751, %758
  %760 = or i64 %759, %757
  %761 = add i64 %752, %757
  %762 = getelementptr i8, ptr %737, i64 %740
  %763 = load i8, ptr %762, align 1, !tbaa !5
  %764 = zext i8 %763 to i64
  %765 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %764
  %766 = load i64, ptr %765, align 8, !tbaa !14
  %767 = and i64 %766, 255
  %768 = lshr i64 %760, %767
  %769 = or i64 %768, %766
  %770 = add i64 %761, %766
  %771 = getelementptr i8, ptr %738, i64 %740
  %772 = load i8, ptr %771, align 1, !tbaa !5
  %773 = zext i8 %772 to i64
  %774 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %773
  %775 = load i64, ptr %774, align 8, !tbaa !14
  %776 = and i64 %775, 255
  %777 = lshr i64 %769, %776
  %778 = or i64 %777, %775
  %779 = add i64 %770, %775
  %780 = add nsw i64 %740, -5
  %781 = getelementptr inbounds i8, ptr %2, i64 %780
  %782 = load i8, ptr %781, align 1, !tbaa !5
  %783 = zext i8 %782 to i64
  %784 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %783
  %785 = load i64, ptr %784, align 8, !tbaa !14
  %786 = and i64 %785, 255
  %787 = lshr i64 %778, %786
  %788 = or i64 %787, %785
  %789 = add i64 %779, %785
  %790 = and i64 %789, 255
  %791 = lshr i64 %790, 3
  %792 = sub nsw i64 64, %790
  %793 = lshr i64 %788, %792
  %794 = and i64 %789, 7
  store i64 %793, ptr %742, align 1, !tbaa !14
  %795 = getelementptr inbounds nuw i8, ptr %742, i64 %791
  %796 = trunc nsw i64 %780 to i32
  %797 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %796, i32 -1)
  %798 = extractvalue { i32, i1 } %797, 1, !nosanitize !46
  br i1 %798, label %.loopexit31, label %799, !prof !49, !nosanitize !46

799:                                              ; preds = %739
  %800 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %796, i32 -2)
  %801 = extractvalue { i32, i1 } %800, 1, !nosanitize !46
  br i1 %801, label %.loopexit31, label %802, !prof !49, !nosanitize !46

802:                                              ; preds = %799
  %803 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %796, i32 -3)
  %804 = extractvalue { i32, i1 } %803, 1, !nosanitize !46
  br i1 %804, label %.loopexit31, label %805, !prof !49, !nosanitize !46

805:                                              ; preds = %802
  %806 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %796, i32 -4)
  %807 = extractvalue { i32, i1 } %806, 1, !nosanitize !46
  br i1 %807, label %.loopexit31, label %808, !prof !49, !nosanitize !46

808:                                              ; preds = %805
  %809 = extractvalue { i32, i1 } %803, 0, !nosanitize !46
  %810 = sext i32 %809 to i64
  %811 = getelementptr inbounds i8, ptr %2, i64 %810
  %812 = load i8, ptr %811, align 1, !tbaa !5
  %813 = zext i8 %812 to i64
  %814 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %813
  %815 = load i64, ptr %814, align 8, !tbaa !14
  %816 = extractvalue { i32, i1 } %800, 0, !nosanitize !46
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds i8, ptr %2, i64 %817
  %819 = load i8, ptr %818, align 1, !tbaa !5
  %820 = zext i8 %819 to i64
  %821 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %820
  %822 = load i64, ptr %821, align 8, !tbaa !14
  %823 = extractvalue { i32, i1 } %797, 0, !nosanitize !46
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds i8, ptr %2, i64 %824
  %826 = load i8, ptr %825, align 1, !tbaa !5
  %827 = zext i8 %826 to i64
  %828 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %827
  %829 = load i64, ptr %828, align 8, !tbaa !14
  %830 = and i64 %822, 255
  %831 = lshr i64 %829, %830
  %832 = or i64 %831, %822
  %833 = and i64 %815, 255
  %834 = lshr i64 %832, %833
  %835 = or i64 %834, %815
  %836 = extractvalue { i32, i1 } %806, 0, !nosanitize !46
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds i8, ptr %2, i64 %837
  %839 = load i8, ptr %838, align 1, !tbaa !5
  %840 = zext i8 %839 to i64
  %841 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %840
  %842 = load i64, ptr %841, align 8, !tbaa !14
  %843 = and i64 %842, 255
  %844 = lshr i64 %835, %843
  %845 = or i64 %844, %842
  %846 = getelementptr i8, ptr %731, i64 %740
  %847 = load i8, ptr %846, align 1, !tbaa !5
  %848 = zext i8 %847 to i64
  %849 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %848
  %850 = load i64, ptr %849, align 8, !tbaa !14
  %851 = and i64 %850, 255
  %852 = lshr i64 %845, %851
  %853 = add i64 %822, %815
  %854 = add i64 %853, %829
  %855 = add i64 %854, %842
  %856 = add i64 %855, %850
  %857 = and i64 %856, 255
  %858 = lshr i64 %788, %857
  %859 = or i64 %858, %852
  %860 = or i64 %859, %850
  %861 = add i64 %856, %794
  %862 = and i64 %861, 255
  %863 = lshr i64 %862, 3
  %864 = sub nsw i64 64, %862
  %865 = lshr i64 %860, %864
  %866 = and i64 %861, 7
  store i64 %865, ptr %795, align 1, !tbaa !14
  %867 = getelementptr inbounds nuw i8, ptr %795, i64 %863
  %868 = add nsw i64 %740, -10
  %869 = icmp sgt i64 %740, 10
  br i1 %869, label %739, label %.loopexit26, !llvm.loop !76

870:                                              ; preds = %276
  %871 = srem i32 %23, 6
  %872 = icmp sgt i32 %871, 0
  br i1 %872, label %873, label %941

873:                                              ; preds = %870
  %874 = xor i32 %23, -2147483648
  %875 = add nsw i32 %871, -1
  %876 = icmp ugt i32 %874, %875
  br i1 %876, label %877, label %.loopexit33, !prof !77, !nosanitize !46

877:                                              ; preds = %873
  %878 = and i32 %871, 1
  %879 = icmp eq i32 %875, 0
  br i1 %879, label %.thread22, label %880

880:                                              ; preds = %877
  %881 = and i32 %871, 2147483646
  br label %882

882:                                              ; preds = %882, %880
  %883 = phi i32 [ %23, %880 ], [ %899, %882 ]
  %884 = phi i64 [ 0, %880 ], [ %909, %882 ]
  %885 = phi i64 [ 0, %880 ], [ %910, %882 ]
  %886 = phi i32 [ 0, %880 ], [ %911, %882 ]
  %887 = add i32 %883, -1
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds i8, ptr %2, i64 %888
  %890 = load i8, ptr %889, align 1, !tbaa !5
  %891 = zext i8 %890 to i64
  %892 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %891
  %893 = load i64, ptr %892, align 8, !tbaa !14
  %894 = and i64 %893, 255
  %895 = lshr i64 %884, %894
  %896 = and i64 %893, -256
  %897 = or i64 %895, %896
  %898 = add i64 %893, %885
  %899 = add i32 %883, -2
  %900 = sext i32 %899 to i64
  %901 = getelementptr inbounds i8, ptr %2, i64 %900
  %902 = load i8, ptr %901, align 1, !tbaa !5
  %903 = zext i8 %902 to i64
  %904 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %903
  %905 = load i64, ptr %904, align 8, !tbaa !14
  %906 = and i64 %905, 255
  %907 = lshr i64 %897, %906
  %908 = and i64 %905, -256
  %909 = or i64 %907, %908
  %910 = add i64 %898, %905
  %911 = add i32 %886, 2
  %912 = icmp eq i32 %911, %881
  br i1 %912, label %913, label %882, !llvm.loop !78

.loopexit33:                                      ; preds = %1133, %1130, %1127, %1124, %1054, %963, %960, %957, %954, %951, %948, %873
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

913:                                              ; preds = %882
  %914 = sub i32 %23, %881
  %915 = icmp eq i32 %878, 0
  br i1 %915, label %931, label %.thread22

.thread22:                                        ; preds = %877, %913
  %916 = phi i64 [ %910, %913 ], [ 0, %877 ]
  %917 = phi i64 [ %909, %913 ], [ 0, %877 ]
  %918 = phi i32 [ %914, %913 ], [ %23, %877 ]
  %919 = add i32 %918, -1
  %920 = sext i32 %919 to i64
  %921 = getelementptr inbounds i8, ptr %2, i64 %920
  %922 = load i8, ptr %921, align 1, !tbaa !5
  %923 = zext i8 %922 to i64
  %924 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %923
  %925 = load i64, ptr %924, align 8, !tbaa !14
  %926 = and i64 %925, 255
  %927 = lshr i64 %917, %926
  %928 = and i64 %925, -256
  %929 = or i64 %927, %928
  %930 = add i64 %925, %916
  br label %931

931:                                              ; preds = %.thread22, %913
  %932 = phi i64 [ %909, %913 ], [ %929, %.thread22 ]
  %933 = phi i64 [ %910, %913 ], [ %930, %.thread22 ]
  %934 = sub nsw i32 %23, %871
  %935 = and i64 %933, 255
  %936 = lshr i64 %935, 3
  %937 = sub nsw i64 64, %935
  %938 = lshr i64 %932, %937
  %939 = and i64 %933, 7
  store i64 %938, ptr %0, align 1, !tbaa !14
  %940 = getelementptr inbounds nuw i8, ptr %0, i64 %936
  br label %941

941:                                              ; preds = %931, %870
  %942 = phi i64 [ %939, %931 ], [ 0, %870 ]
  %943 = phi ptr [ %940, %931 ], [ %0, %870 ]
  %944 = phi i64 [ %932, %931 ], [ 0, %870 ]
  %945 = phi i32 [ %934, %931 ], [ %23, %870 ]
  %946 = srem i32 %945, 12
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %1040, label %948

948:                                              ; preds = %941
  %949 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %945, i32 -1)
  %950 = extractvalue { i32, i1 } %949, 1, !nosanitize !46
  br i1 %950, label %.loopexit33, label %951, !prof !49, !nosanitize !46

951:                                              ; preds = %948
  %952 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %945, i32 -2)
  %953 = extractvalue { i32, i1 } %952, 1, !nosanitize !46
  br i1 %953, label %.loopexit33, label %954, !prof !49, !nosanitize !46

954:                                              ; preds = %951
  %955 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %945, i32 -3)
  %956 = extractvalue { i32, i1 } %955, 1, !nosanitize !46
  br i1 %956, label %.loopexit33, label %957, !prof !49, !nosanitize !46

957:                                              ; preds = %954
  %958 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %945, i32 -4)
  %959 = extractvalue { i32, i1 } %958, 1, !nosanitize !46
  br i1 %959, label %.loopexit33, label %960, !prof !49, !nosanitize !46

960:                                              ; preds = %957
  %961 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %945, i32 -5)
  %962 = extractvalue { i32, i1 } %961, 1, !nosanitize !46
  br i1 %962, label %.loopexit33, label %963, !prof !49, !nosanitize !46

963:                                              ; preds = %960
  %964 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %945, i32 -6)
  %965 = extractvalue { i32, i1 } %964, 1, !nosanitize !46
  br i1 %965, label %.loopexit33, label %966, !prof !49, !nosanitize !46

966:                                              ; preds = %963
  %967 = extractvalue { i32, i1 } %961, 0, !nosanitize !46
  %968 = sext i32 %967 to i64
  %969 = getelementptr inbounds i8, ptr %2, i64 %968
  %970 = load i8, ptr %969, align 1, !tbaa !5
  %971 = zext i8 %970 to i64
  %972 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %971
  %973 = load i64, ptr %972, align 8, !tbaa !14
  %974 = extractvalue { i32, i1 } %958, 0, !nosanitize !46
  %975 = sext i32 %974 to i64
  %976 = getelementptr inbounds i8, ptr %2, i64 %975
  %977 = load i8, ptr %976, align 1, !tbaa !5
  %978 = zext i8 %977 to i64
  %979 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %978
  %980 = load i64, ptr %979, align 8, !tbaa !14
  %981 = extractvalue { i32, i1 } %955, 0, !nosanitize !46
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds i8, ptr %2, i64 %982
  %984 = load i8, ptr %983, align 1, !tbaa !5
  %985 = zext i8 %984 to i64
  %986 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %985
  %987 = load i64, ptr %986, align 8, !tbaa !14
  %988 = extractvalue { i32, i1 } %952, 0, !nosanitize !46
  %989 = sext i32 %988 to i64
  %990 = getelementptr inbounds i8, ptr %2, i64 %989
  %991 = load i8, ptr %990, align 1, !tbaa !5
  %992 = zext i8 %991 to i64
  %993 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %992
  %994 = load i64, ptr %993, align 8, !tbaa !14
  %995 = extractvalue { i32, i1 } %949, 0, !nosanitize !46
  %996 = sext i32 %995 to i64
  %997 = getelementptr inbounds i8, ptr %2, i64 %996
  %998 = load i8, ptr %997, align 1, !tbaa !5
  %999 = zext i8 %998 to i64
  %1000 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %999
  %1001 = load i64, ptr %1000, align 8, !tbaa !14
  %1002 = and i64 %1001, 255
  %1003 = lshr i64 %944, %1002
  %1004 = or i64 %1003, %1001
  %1005 = and i64 %994, 255
  %1006 = lshr i64 %1004, %1005
  %1007 = or i64 %1006, %994
  %1008 = and i64 %987, 255
  %1009 = lshr i64 %1007, %1008
  %1010 = or i64 %1009, %987
  %1011 = and i64 %980, 255
  %1012 = lshr i64 %1010, %1011
  %1013 = or i64 %1012, %980
  %1014 = and i64 %973, 255
  %1015 = lshr i64 %1013, %1014
  %1016 = or i64 %1015, %973
  %1017 = extractvalue { i32, i1 } %964, 0, !nosanitize !46
  %1018 = sext i32 %1017 to i64
  %1019 = getelementptr inbounds i8, ptr %2, i64 %1018
  %1020 = load i8, ptr %1019, align 1, !tbaa !5
  %1021 = zext i8 %1020 to i64
  %1022 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1021
  %1023 = load i64, ptr %1022, align 8, !tbaa !14
  %1024 = and i64 %1023, 255
  %1025 = lshr i64 %1016, %1024
  %1026 = and i64 %1023, -256
  %1027 = or i64 %1025, %1026
  %1028 = add i64 %973, %942
  %1029 = add i64 %1028, %980
  %1030 = add i64 %1029, %987
  %1031 = add i64 %1030, %994
  %1032 = add i64 %1031, %1001
  %1033 = add i64 %1032, %1023
  %1034 = and i64 %1033, 255
  %1035 = lshr i64 %1034, 3
  %1036 = sub nsw i64 64, %1034
  %1037 = lshr i64 %1027, %1036
  %1038 = and i64 %1033, 7
  store i64 %1037, ptr %943, align 1, !tbaa !14
  %1039 = getelementptr inbounds nuw i8, ptr %943, i64 %1035
  br label %1040

1040:                                             ; preds = %966, %941
  %1041 = phi i64 [ %942, %941 ], [ %1038, %966 ]
  %1042 = phi ptr [ %943, %941 ], [ %1039, %966 ]
  %1043 = phi i64 [ %944, %941 ], [ %1027, %966 ]
  %1044 = phi i32 [ %945, %941 ], [ %1017, %966 ]
  %1045 = getelementptr i8, ptr %2, i64 -12
  %1046 = icmp sgt i32 %1044, 0
  br i1 %1046, label %1047, label %.loopexit26

1047:                                             ; preds = %1040
  %1048 = zext nneg i32 %1044 to i64
  %1049 = getelementptr i8, ptr %2, i64 -1
  %1050 = getelementptr i8, ptr %2, i64 -2
  %1051 = getelementptr i8, ptr %2, i64 -3
  %1052 = getelementptr i8, ptr %2, i64 -4
  %1053 = getelementptr i8, ptr %2, i64 -5
  br label %1054

1054:                                             ; preds = %1136, %1047
  %1055 = phi i64 [ %1048, %1047 ], [ %1208, %1136 ]
  %1056 = phi i64 [ %1043, %1047 ], [ %1200, %1136 ]
  %1057 = phi ptr [ %1042, %1047 ], [ %1207, %1136 ]
  %1058 = phi i64 [ %1041, %1047 ], [ %1206, %1136 ]
  %1059 = getelementptr i8, ptr %1049, i64 %1055
  %1060 = load i8, ptr %1059, align 1, !tbaa !5
  %1061 = zext i8 %1060 to i64
  %1062 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1061
  %1063 = load i64, ptr %1062, align 8, !tbaa !14
  %1064 = and i64 %1063, 255
  %1065 = lshr i64 %1056, %1064
  %1066 = or i64 %1065, %1063
  %1067 = add i64 %1063, %1058
  %1068 = getelementptr i8, ptr %1050, i64 %1055
  %1069 = load i8, ptr %1068, align 1, !tbaa !5
  %1070 = zext i8 %1069 to i64
  %1071 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1070
  %1072 = load i64, ptr %1071, align 8, !tbaa !14
  %1073 = and i64 %1072, 255
  %1074 = lshr i64 %1066, %1073
  %1075 = or i64 %1074, %1072
  %1076 = add i64 %1067, %1072
  %1077 = getelementptr i8, ptr %1051, i64 %1055
  %1078 = load i8, ptr %1077, align 1, !tbaa !5
  %1079 = zext i8 %1078 to i64
  %1080 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1079
  %1081 = load i64, ptr %1080, align 8, !tbaa !14
  %1082 = and i64 %1081, 255
  %1083 = lshr i64 %1075, %1082
  %1084 = or i64 %1083, %1081
  %1085 = add i64 %1076, %1081
  %1086 = getelementptr i8, ptr %1052, i64 %1055
  %1087 = load i8, ptr %1086, align 1, !tbaa !5
  %1088 = zext i8 %1087 to i64
  %1089 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1088
  %1090 = load i64, ptr %1089, align 8, !tbaa !14
  %1091 = and i64 %1090, 255
  %1092 = lshr i64 %1084, %1091
  %1093 = or i64 %1092, %1090
  %1094 = add i64 %1085, %1090
  %1095 = getelementptr i8, ptr %1053, i64 %1055
  %1096 = load i8, ptr %1095, align 1, !tbaa !5
  %1097 = zext i8 %1096 to i64
  %1098 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1097
  %1099 = load i64, ptr %1098, align 8, !tbaa !14
  %1100 = and i64 %1099, 255
  %1101 = lshr i64 %1093, %1100
  %1102 = or i64 %1101, %1099
  %1103 = add i64 %1094, %1099
  %1104 = add nsw i64 %1055, -6
  %1105 = getelementptr inbounds i8, ptr %2, i64 %1104
  %1106 = load i8, ptr %1105, align 1, !tbaa !5
  %1107 = zext i8 %1106 to i64
  %1108 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1107
  %1109 = load i64, ptr %1108, align 8, !tbaa !14
  %1110 = and i64 %1109, 255
  %1111 = lshr i64 %1102, %1110
  %1112 = and i64 %1109, -256
  %1113 = or i64 %1111, %1112
  %1114 = add i64 %1103, %1109
  %1115 = and i64 %1114, 255
  %1116 = lshr i64 %1115, 3
  %1117 = sub nsw i64 64, %1115
  %1118 = lshr i64 %1113, %1117
  %1119 = and i64 %1114, 7
  store i64 %1118, ptr %1057, align 1, !tbaa !14
  %1120 = getelementptr inbounds nuw i8, ptr %1057, i64 %1116
  %1121 = trunc nsw i64 %1104 to i32
  %1122 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1121, i32 -1)
  %1123 = extractvalue { i32, i1 } %1122, 1, !nosanitize !46
  br i1 %1123, label %.loopexit33, label %1124, !prof !49, !nosanitize !46

1124:                                             ; preds = %1054
  %1125 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1121, i32 -2)
  %1126 = extractvalue { i32, i1 } %1125, 1, !nosanitize !46
  br i1 %1126, label %.loopexit33, label %1127, !prof !49, !nosanitize !46

1127:                                             ; preds = %1124
  %1128 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1121, i32 -3)
  %1129 = extractvalue { i32, i1 } %1128, 1, !nosanitize !46
  br i1 %1129, label %.loopexit33, label %1130, !prof !49, !nosanitize !46

1130:                                             ; preds = %1127
  %1131 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1121, i32 -4)
  %1132 = extractvalue { i32, i1 } %1131, 1, !nosanitize !46
  br i1 %1132, label %.loopexit33, label %1133, !prof !49, !nosanitize !46

1133:                                             ; preds = %1130
  %1134 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1121, i32 -5)
  %1135 = extractvalue { i32, i1 } %1134, 1, !nosanitize !46
  br i1 %1135, label %.loopexit33, label %1136, !prof !49, !nosanitize !46

1136:                                             ; preds = %1133
  %1137 = extractvalue { i32, i1 } %1131, 0, !nosanitize !46
  %1138 = sext i32 %1137 to i64
  %1139 = getelementptr inbounds i8, ptr %2, i64 %1138
  %1140 = load i8, ptr %1139, align 1, !tbaa !5
  %1141 = zext i8 %1140 to i64
  %1142 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1141
  %1143 = load i64, ptr %1142, align 8, !tbaa !14
  %1144 = extractvalue { i32, i1 } %1128, 0, !nosanitize !46
  %1145 = sext i32 %1144 to i64
  %1146 = getelementptr inbounds i8, ptr %2, i64 %1145
  %1147 = load i8, ptr %1146, align 1, !tbaa !5
  %1148 = zext i8 %1147 to i64
  %1149 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1148
  %1150 = load i64, ptr %1149, align 8, !tbaa !14
  %1151 = extractvalue { i32, i1 } %1125, 0, !nosanitize !46
  %1152 = sext i32 %1151 to i64
  %1153 = getelementptr inbounds i8, ptr %2, i64 %1152
  %1154 = load i8, ptr %1153, align 1, !tbaa !5
  %1155 = zext i8 %1154 to i64
  %1156 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1155
  %1157 = load i64, ptr %1156, align 8, !tbaa !14
  %1158 = extractvalue { i32, i1 } %1122, 0, !nosanitize !46
  %1159 = sext i32 %1158 to i64
  %1160 = getelementptr inbounds i8, ptr %2, i64 %1159
  %1161 = load i8, ptr %1160, align 1, !tbaa !5
  %1162 = zext i8 %1161 to i64
  %1163 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1162
  %1164 = load i64, ptr %1163, align 8, !tbaa !14
  %1165 = and i64 %1157, 255
  %1166 = lshr i64 %1164, %1165
  %1167 = or i64 %1166, %1157
  %1168 = and i64 %1150, 255
  %1169 = lshr i64 %1167, %1168
  %1170 = or i64 %1169, %1150
  %1171 = and i64 %1143, 255
  %1172 = lshr i64 %1170, %1171
  %1173 = or i64 %1172, %1143
  %1174 = extractvalue { i32, i1 } %1134, 0, !nosanitize !46
  %1175 = sext i32 %1174 to i64
  %1176 = getelementptr inbounds i8, ptr %2, i64 %1175
  %1177 = load i8, ptr %1176, align 1, !tbaa !5
  %1178 = zext i8 %1177 to i64
  %1179 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1178
  %1180 = load i64, ptr %1179, align 8, !tbaa !14
  %1181 = and i64 %1180, 255
  %1182 = lshr i64 %1173, %1181
  %1183 = or i64 %1182, %1180
  %1184 = getelementptr i8, ptr %1045, i64 %1055
  %1185 = load i8, ptr %1184, align 1, !tbaa !5
  %1186 = zext i8 %1185 to i64
  %1187 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1186
  %1188 = load i64, ptr %1187, align 8, !tbaa !14
  %1189 = and i64 %1188, 255
  %1190 = lshr i64 %1183, %1189
  %1191 = and i64 %1188, -256
  %1192 = add i64 %1150, %1143
  %1193 = add i64 %1192, %1157
  %1194 = add i64 %1193, %1164
  %1195 = add i64 %1194, %1180
  %1196 = add i64 %1195, %1188
  %1197 = and i64 %1196, 255
  %1198 = lshr i64 %1113, %1197
  %1199 = or i64 %1198, %1191
  %1200 = or i64 %1199, %1190
  %1201 = add i64 %1196, %1119
  %1202 = and i64 %1201, 255
  %1203 = lshr i64 %1202, 3
  %1204 = sub nsw i64 64, %1202
  %1205 = lshr i64 %1200, %1204
  %1206 = and i64 %1201, 7
  store i64 %1205, ptr %1120, align 1, !tbaa !14
  %1207 = getelementptr inbounds nuw i8, ptr %1120, i64 %1203
  %1208 = add nsw i64 %1055, -12
  %1209 = icmp sgt i64 %1055, 12
  br i1 %1209, label %1054, label %.loopexit26, !llvm.loop !76

1210:                                             ; preds = %276
  %1211 = srem i32 %23, 7
  %1212 = icmp sgt i32 %1211, 0
  br i1 %1212, label %1213, label %1281

1213:                                             ; preds = %1210
  %1214 = xor i32 %23, -2147483648
  %1215 = add nsw i32 %1211, -1
  %1216 = icmp ugt i32 %1214, %1215
  br i1 %1216, label %1217, label %.loopexit35, !prof !77, !nosanitize !46

1217:                                             ; preds = %1213
  %1218 = and i32 %1211, 1
  %1219 = icmp eq i32 %1215, 0
  br i1 %1219, label %.thread23, label %1220

1220:                                             ; preds = %1217
  %1221 = and i32 %1211, 2147483646
  br label %1222

1222:                                             ; preds = %1222, %1220
  %1223 = phi i32 [ %23, %1220 ], [ %1239, %1222 ]
  %1224 = phi i64 [ 0, %1220 ], [ %1249, %1222 ]
  %1225 = phi i64 [ 0, %1220 ], [ %1250, %1222 ]
  %1226 = phi i32 [ 0, %1220 ], [ %1251, %1222 ]
  %1227 = add i32 %1223, -1
  %1228 = sext i32 %1227 to i64
  %1229 = getelementptr inbounds i8, ptr %2, i64 %1228
  %1230 = load i8, ptr %1229, align 1, !tbaa !5
  %1231 = zext i8 %1230 to i64
  %1232 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1231
  %1233 = load i64, ptr %1232, align 8, !tbaa !14
  %1234 = and i64 %1233, 255
  %1235 = lshr i64 %1224, %1234
  %1236 = and i64 %1233, -256
  %1237 = or i64 %1235, %1236
  %1238 = add i64 %1233, %1225
  %1239 = add i32 %1223, -2
  %1240 = sext i32 %1239 to i64
  %1241 = getelementptr inbounds i8, ptr %2, i64 %1240
  %1242 = load i8, ptr %1241, align 1, !tbaa !5
  %1243 = zext i8 %1242 to i64
  %1244 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1243
  %1245 = load i64, ptr %1244, align 8, !tbaa !14
  %1246 = and i64 %1245, 255
  %1247 = lshr i64 %1237, %1246
  %1248 = and i64 %1245, -256
  %1249 = or i64 %1247, %1248
  %1250 = add i64 %1238, %1245
  %1251 = add i32 %1226, 2
  %1252 = icmp eq i32 %1251, %1221
  br i1 %1252, label %1253, label %1222, !llvm.loop !78

.loopexit35:                                      ; preds = %1497, %1494, %1491, %1488, %1485, %1406, %1303, %1300, %1297, %1294, %1291, %1288, %1213
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

1253:                                             ; preds = %1222
  %1254 = sub i32 %23, %1221
  %1255 = icmp eq i32 %1218, 0
  br i1 %1255, label %1271, label %.thread23

.thread23:                                        ; preds = %1217, %1253
  %1256 = phi i64 [ %1250, %1253 ], [ 0, %1217 ]
  %1257 = phi i64 [ %1249, %1253 ], [ 0, %1217 ]
  %1258 = phi i32 [ %1254, %1253 ], [ %23, %1217 ]
  %1259 = add i32 %1258, -1
  %1260 = sext i32 %1259 to i64
  %1261 = getelementptr inbounds i8, ptr %2, i64 %1260
  %1262 = load i8, ptr %1261, align 1, !tbaa !5
  %1263 = zext i8 %1262 to i64
  %1264 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1263
  %1265 = load i64, ptr %1264, align 8, !tbaa !14
  %1266 = and i64 %1265, 255
  %1267 = lshr i64 %1257, %1266
  %1268 = and i64 %1265, -256
  %1269 = or i64 %1267, %1268
  %1270 = add i64 %1265, %1256
  br label %1271

1271:                                             ; preds = %.thread23, %1253
  %1272 = phi i64 [ %1249, %1253 ], [ %1269, %.thread23 ]
  %1273 = phi i64 [ %1250, %1253 ], [ %1270, %.thread23 ]
  %1274 = sub nsw i32 %23, %1211
  %1275 = and i64 %1273, 255
  %1276 = lshr i64 %1275, 3
  %1277 = sub nsw i64 64, %1275
  %1278 = lshr i64 %1272, %1277
  %1279 = and i64 %1273, 7
  store i64 %1278, ptr %0, align 1, !tbaa !14
  %1280 = getelementptr inbounds nuw i8, ptr %0, i64 %1276
  br label %1281

1281:                                             ; preds = %1271, %1210
  %1282 = phi i64 [ %1279, %1271 ], [ 0, %1210 ]
  %1283 = phi ptr [ %1280, %1271 ], [ %0, %1210 ]
  %1284 = phi i64 [ %1272, %1271 ], [ 0, %1210 ]
  %1285 = phi i32 [ %1274, %1271 ], [ %23, %1210 ]
  %1286 = srem i32 %1285, 14
  %1287 = icmp eq i32 %1286, 0
  br i1 %1287, label %1391, label %1288

1288:                                             ; preds = %1281
  %1289 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1285, i32 -1)
  %1290 = extractvalue { i32, i1 } %1289, 1, !nosanitize !46
  br i1 %1290, label %.loopexit35, label %1291, !prof !49, !nosanitize !46

1291:                                             ; preds = %1288
  %1292 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1285, i32 -2)
  %1293 = extractvalue { i32, i1 } %1292, 1, !nosanitize !46
  br i1 %1293, label %.loopexit35, label %1294, !prof !49, !nosanitize !46

1294:                                             ; preds = %1291
  %1295 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1285, i32 -4)
  %1296 = extractvalue { i32, i1 } %1295, 1, !nosanitize !46
  br i1 %1296, label %.loopexit35, label %1297, !prof !49, !nosanitize !46

1297:                                             ; preds = %1294
  %1298 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1285, i32 -5)
  %1299 = extractvalue { i32, i1 } %1298, 1, !nosanitize !46
  br i1 %1299, label %.loopexit35, label %1300, !prof !49, !nosanitize !46

1300:                                             ; preds = %1297
  %1301 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1285, i32 -6)
  %1302 = extractvalue { i32, i1 } %1301, 1, !nosanitize !46
  br i1 %1302, label %.loopexit35, label %1303, !prof !49, !nosanitize !46

1303:                                             ; preds = %1300
  %1304 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1285, i32 -7)
  %1305 = extractvalue { i32, i1 } %1304, 1, !nosanitize !46
  br i1 %1305, label %.loopexit35, label %1306, !prof !49, !nosanitize !46

1306:                                             ; preds = %1303
  %1307 = extractvalue { i32, i1 } %1301, 0, !nosanitize !46
  %1308 = sext i32 %1307 to i64
  %1309 = getelementptr inbounds i8, ptr %2, i64 %1308
  %1310 = load i8, ptr %1309, align 1, !tbaa !5
  %1311 = zext i8 %1310 to i64
  %1312 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1311
  %1313 = load i64, ptr %1312, align 8, !tbaa !14
  %1314 = extractvalue { i32, i1 } %1298, 0, !nosanitize !46
  %1315 = sext i32 %1314 to i64
  %1316 = getelementptr inbounds i8, ptr %2, i64 %1315
  %1317 = load i8, ptr %1316, align 1, !tbaa !5
  %1318 = zext i8 %1317 to i64
  %1319 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1318
  %1320 = load i64, ptr %1319, align 8, !tbaa !14
  %1321 = extractvalue { i32, i1 } %1295, 0, !nosanitize !46
  %1322 = sext i32 %1321 to i64
  %1323 = getelementptr inbounds i8, ptr %2, i64 %1322
  %1324 = load i8, ptr %1323, align 1, !tbaa !5
  %1325 = zext i8 %1324 to i64
  %1326 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1325
  %1327 = load i64, ptr %1326, align 8, !tbaa !14
  %1328 = sext i32 %1285 to i64
  %1329 = getelementptr i8, ptr %2, i64 %1328
  %1330 = getelementptr i8, ptr %1329, i64 -3
  %1331 = load i8, ptr %1330, align 1, !tbaa !5
  %1332 = zext i8 %1331 to i64
  %1333 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1332
  %1334 = load i64, ptr %1333, align 8, !tbaa !14
  %1335 = extractvalue { i32, i1 } %1292, 0, !nosanitize !46
  %1336 = sext i32 %1335 to i64
  %1337 = getelementptr inbounds i8, ptr %2, i64 %1336
  %1338 = load i8, ptr %1337, align 1, !tbaa !5
  %1339 = zext i8 %1338 to i64
  %1340 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1339
  %1341 = load i64, ptr %1340, align 8, !tbaa !14
  %1342 = extractvalue { i32, i1 } %1289, 0, !nosanitize !46
  %1343 = sext i32 %1342 to i64
  %1344 = getelementptr inbounds i8, ptr %2, i64 %1343
  %1345 = load i8, ptr %1344, align 1, !tbaa !5
  %1346 = zext i8 %1345 to i64
  %1347 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1346
  %1348 = load i64, ptr %1347, align 8, !tbaa !14
  %1349 = and i64 %1348, 255
  %1350 = lshr i64 %1284, %1349
  %1351 = or i64 %1350, %1348
  %1352 = and i64 %1341, 255
  %1353 = lshr i64 %1351, %1352
  %1354 = or i64 %1353, %1341
  %1355 = and i64 %1334, 255
  %1356 = lshr i64 %1354, %1355
  %1357 = or i64 %1356, %1334
  %1358 = and i64 %1327, 255
  %1359 = lshr i64 %1357, %1358
  %1360 = or i64 %1359, %1327
  %1361 = and i64 %1320, 255
  %1362 = lshr i64 %1360, %1361
  %1363 = or i64 %1362, %1320
  %1364 = and i64 %1313, 255
  %1365 = lshr i64 %1363, %1364
  %1366 = or i64 %1365, %1313
  %1367 = extractvalue { i32, i1 } %1304, 0, !nosanitize !46
  %1368 = sext i32 %1367 to i64
  %1369 = getelementptr inbounds i8, ptr %2, i64 %1368
  %1370 = load i8, ptr %1369, align 1, !tbaa !5
  %1371 = zext i8 %1370 to i64
  %1372 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1371
  %1373 = load i64, ptr %1372, align 8, !tbaa !14
  %1374 = and i64 %1373, 255
  %1375 = lshr i64 %1366, %1374
  %1376 = and i64 %1373, -256
  %1377 = or i64 %1375, %1376
  %1378 = add i64 %1313, %1282
  %1379 = add i64 %1378, %1320
  %1380 = add i64 %1379, %1327
  %1381 = add i64 %1380, %1334
  %1382 = add i64 %1381, %1341
  %1383 = add i64 %1382, %1348
  %1384 = add i64 %1383, %1373
  %1385 = and i64 %1384, 255
  %1386 = lshr i64 %1385, 3
  %1387 = sub nsw i64 64, %1385
  %1388 = lshr i64 %1377, %1387
  %1389 = and i64 %1384, 7
  store i64 %1388, ptr %1283, align 1, !tbaa !14
  %1390 = getelementptr inbounds nuw i8, ptr %1283, i64 %1386
  br label %1391

1391:                                             ; preds = %1306, %1281
  %1392 = phi i64 [ %1282, %1281 ], [ %1389, %1306 ]
  %1393 = phi ptr [ %1283, %1281 ], [ %1390, %1306 ]
  %1394 = phi i64 [ %1284, %1281 ], [ %1377, %1306 ]
  %1395 = phi i32 [ %1285, %1281 ], [ %1367, %1306 ]
  %1396 = getelementptr i8, ptr %2, i64 -14
  %1397 = icmp sgt i32 %1395, 0
  br i1 %1397, label %1398, label %.loopexit26

1398:                                             ; preds = %1391
  %1399 = zext nneg i32 %1395 to i64
  %1400 = getelementptr i8, ptr %2, i64 -1
  %1401 = getelementptr i8, ptr %2, i64 -2
  %1402 = getelementptr i8, ptr %2, i64 -3
  %1403 = getelementptr i8, ptr %2, i64 -4
  %1404 = getelementptr i8, ptr %2, i64 -5
  %1405 = getelementptr i8, ptr %2, i64 -6
  br label %1406

1406:                                             ; preds = %1500, %1398
  %1407 = phi i64 [ %1399, %1398 ], [ %1583, %1500 ]
  %1408 = phi i64 [ %1394, %1398 ], [ %1575, %1500 ]
  %1409 = phi ptr [ %1393, %1398 ], [ %1582, %1500 ]
  %1410 = phi i64 [ %1392, %1398 ], [ %1581, %1500 ]
  %1411 = getelementptr i8, ptr %1400, i64 %1407
  %1412 = load i8, ptr %1411, align 1, !tbaa !5
  %1413 = zext i8 %1412 to i64
  %1414 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1413
  %1415 = load i64, ptr %1414, align 8, !tbaa !14
  %1416 = and i64 %1415, 255
  %1417 = lshr i64 %1408, %1416
  %1418 = or i64 %1417, %1415
  %1419 = add i64 %1415, %1410
  %1420 = getelementptr i8, ptr %1401, i64 %1407
  %1421 = load i8, ptr %1420, align 1, !tbaa !5
  %1422 = zext i8 %1421 to i64
  %1423 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1422
  %1424 = load i64, ptr %1423, align 8, !tbaa !14
  %1425 = and i64 %1424, 255
  %1426 = lshr i64 %1418, %1425
  %1427 = or i64 %1426, %1424
  %1428 = add i64 %1419, %1424
  %1429 = getelementptr i8, ptr %1402, i64 %1407
  %1430 = load i8, ptr %1429, align 1, !tbaa !5
  %1431 = zext i8 %1430 to i64
  %1432 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1431
  %1433 = load i64, ptr %1432, align 8, !tbaa !14
  %1434 = and i64 %1433, 255
  %1435 = lshr i64 %1427, %1434
  %1436 = or i64 %1435, %1433
  %1437 = add i64 %1428, %1433
  %1438 = getelementptr i8, ptr %1403, i64 %1407
  %1439 = load i8, ptr %1438, align 1, !tbaa !5
  %1440 = zext i8 %1439 to i64
  %1441 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1440
  %1442 = load i64, ptr %1441, align 8, !tbaa !14
  %1443 = and i64 %1442, 255
  %1444 = lshr i64 %1436, %1443
  %1445 = or i64 %1444, %1442
  %1446 = add i64 %1437, %1442
  %1447 = getelementptr i8, ptr %1404, i64 %1407
  %1448 = load i8, ptr %1447, align 1, !tbaa !5
  %1449 = zext i8 %1448 to i64
  %1450 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1449
  %1451 = load i64, ptr %1450, align 8, !tbaa !14
  %1452 = and i64 %1451, 255
  %1453 = lshr i64 %1445, %1452
  %1454 = or i64 %1453, %1451
  %1455 = add i64 %1446, %1451
  %1456 = getelementptr i8, ptr %1405, i64 %1407
  %1457 = load i8, ptr %1456, align 1, !tbaa !5
  %1458 = zext i8 %1457 to i64
  %1459 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1458
  %1460 = load i64, ptr %1459, align 8, !tbaa !14
  %1461 = and i64 %1460, 255
  %1462 = lshr i64 %1454, %1461
  %1463 = or i64 %1462, %1460
  %1464 = add i64 %1455, %1460
  %1465 = add nsw i64 %1407, -7
  %1466 = getelementptr inbounds i8, ptr %2, i64 %1465
  %1467 = load i8, ptr %1466, align 1, !tbaa !5
  %1468 = zext i8 %1467 to i64
  %1469 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1468
  %1470 = load i64, ptr %1469, align 8, !tbaa !14
  %1471 = and i64 %1470, 255
  %1472 = lshr i64 %1463, %1471
  %1473 = and i64 %1470, -256
  %1474 = or i64 %1472, %1473
  %1475 = add i64 %1464, %1470
  %1476 = and i64 %1475, 255
  %1477 = lshr i64 %1476, 3
  %1478 = sub nsw i64 64, %1476
  %1479 = lshr i64 %1474, %1478
  %1480 = and i64 %1475, 7
  store i64 %1479, ptr %1409, align 1, !tbaa !14
  %1481 = getelementptr inbounds nuw i8, ptr %1409, i64 %1477
  %1482 = trunc nsw i64 %1465 to i32
  %1483 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1482, i32 -1)
  %1484 = extractvalue { i32, i1 } %1483, 1, !nosanitize !46
  br i1 %1484, label %.loopexit35, label %1485, !prof !49, !nosanitize !46

1485:                                             ; preds = %1406
  %1486 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1482, i32 -2)
  %1487 = extractvalue { i32, i1 } %1486, 1, !nosanitize !46
  br i1 %1487, label %.loopexit35, label %1488, !prof !49, !nosanitize !46

1488:                                             ; preds = %1485
  %1489 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1482, i32 -3)
  %1490 = extractvalue { i32, i1 } %1489, 1, !nosanitize !46
  br i1 %1490, label %.loopexit35, label %1491, !prof !49, !nosanitize !46

1491:                                             ; preds = %1488
  %1492 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1482, i32 -4)
  %1493 = extractvalue { i32, i1 } %1492, 1, !nosanitize !46
  br i1 %1493, label %.loopexit35, label %1494, !prof !49, !nosanitize !46

1494:                                             ; preds = %1491
  %1495 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1482, i32 -5)
  %1496 = extractvalue { i32, i1 } %1495, 1, !nosanitize !46
  br i1 %1496, label %.loopexit35, label %1497, !prof !49, !nosanitize !46

1497:                                             ; preds = %1494
  %1498 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1482, i32 -6)
  %1499 = extractvalue { i32, i1 } %1498, 1, !nosanitize !46
  br i1 %1499, label %.loopexit35, label %1500, !prof !49, !nosanitize !46

1500:                                             ; preds = %1497
  %1501 = extractvalue { i32, i1 } %1495, 0, !nosanitize !46
  %1502 = sext i32 %1501 to i64
  %1503 = getelementptr inbounds i8, ptr %2, i64 %1502
  %1504 = load i8, ptr %1503, align 1, !tbaa !5
  %1505 = zext i8 %1504 to i64
  %1506 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1505
  %1507 = load i64, ptr %1506, align 8, !tbaa !14
  %1508 = extractvalue { i32, i1 } %1492, 0, !nosanitize !46
  %1509 = sext i32 %1508 to i64
  %1510 = getelementptr inbounds i8, ptr %2, i64 %1509
  %1511 = load i8, ptr %1510, align 1, !tbaa !5
  %1512 = zext i8 %1511 to i64
  %1513 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1512
  %1514 = load i64, ptr %1513, align 8, !tbaa !14
  %1515 = extractvalue { i32, i1 } %1489, 0, !nosanitize !46
  %1516 = sext i32 %1515 to i64
  %1517 = getelementptr inbounds i8, ptr %2, i64 %1516
  %1518 = load i8, ptr %1517, align 1, !tbaa !5
  %1519 = zext i8 %1518 to i64
  %1520 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1519
  %1521 = load i64, ptr %1520, align 8, !tbaa !14
  %1522 = extractvalue { i32, i1 } %1486, 0, !nosanitize !46
  %1523 = sext i32 %1522 to i64
  %1524 = getelementptr inbounds i8, ptr %2, i64 %1523
  %1525 = load i8, ptr %1524, align 1, !tbaa !5
  %1526 = zext i8 %1525 to i64
  %1527 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1526
  %1528 = load i64, ptr %1527, align 8, !tbaa !14
  %1529 = extractvalue { i32, i1 } %1483, 0, !nosanitize !46
  %1530 = sext i32 %1529 to i64
  %1531 = getelementptr inbounds i8, ptr %2, i64 %1530
  %1532 = load i8, ptr %1531, align 1, !tbaa !5
  %1533 = zext i8 %1532 to i64
  %1534 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1533
  %1535 = load i64, ptr %1534, align 8, !tbaa !14
  %1536 = and i64 %1528, 255
  %1537 = lshr i64 %1535, %1536
  %1538 = or i64 %1537, %1528
  %1539 = and i64 %1521, 255
  %1540 = lshr i64 %1538, %1539
  %1541 = or i64 %1540, %1521
  %1542 = and i64 %1514, 255
  %1543 = lshr i64 %1541, %1542
  %1544 = or i64 %1543, %1514
  %1545 = and i64 %1507, 255
  %1546 = lshr i64 %1544, %1545
  %1547 = or i64 %1546, %1507
  %1548 = extractvalue { i32, i1 } %1498, 0, !nosanitize !46
  %1549 = sext i32 %1548 to i64
  %1550 = getelementptr inbounds i8, ptr %2, i64 %1549
  %1551 = load i8, ptr %1550, align 1, !tbaa !5
  %1552 = zext i8 %1551 to i64
  %1553 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1552
  %1554 = load i64, ptr %1553, align 8, !tbaa !14
  %1555 = and i64 %1554, 255
  %1556 = lshr i64 %1547, %1555
  %1557 = or i64 %1556, %1554
  %1558 = getelementptr i8, ptr %1396, i64 %1407
  %1559 = load i8, ptr %1558, align 1, !tbaa !5
  %1560 = zext i8 %1559 to i64
  %1561 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1560
  %1562 = load i64, ptr %1561, align 8, !tbaa !14
  %1563 = and i64 %1562, 255
  %1564 = lshr i64 %1557, %1563
  %1565 = and i64 %1562, -256
  %1566 = add i64 %1514, %1507
  %1567 = add i64 %1566, %1521
  %1568 = add i64 %1567, %1528
  %1569 = add i64 %1568, %1535
  %1570 = add i64 %1569, %1554
  %1571 = add i64 %1570, %1562
  %1572 = and i64 %1571, 255
  %1573 = lshr i64 %1474, %1572
  %1574 = or i64 %1573, %1565
  %1575 = or i64 %1574, %1564
  %1576 = add i64 %1571, %1480
  %1577 = and i64 %1576, 255
  %1578 = lshr i64 %1577, 3
  %1579 = sub nsw i64 64, %1577
  %1580 = lshr i64 %1575, %1579
  %1581 = and i64 %1576, 7
  store i64 %1580, ptr %1481, align 1, !tbaa !14
  %1582 = getelementptr inbounds nuw i8, ptr %1481, i64 %1578
  %1583 = add nsw i64 %1407, -14
  %1584 = icmp sgt i64 %1407, 14
  br i1 %1584, label %1406, label %.loopexit26, !llvm.loop !76

1585:                                             ; preds = %276
  %1586 = srem i32 %23, 8
  %1587 = icmp sgt i32 %1586, 0
  br i1 %1587, label %1588, label %1652

1588:                                             ; preds = %1585
  %1589 = and i32 %1586, 1
  %1590 = icmp eq i32 %1586, 1
  br i1 %1590, label %.thread24, label %1591

1591:                                             ; preds = %1588
  %1592 = and i32 %1586, 2147483646
  br label %1593

1593:                                             ; preds = %1593, %1591
  %1594 = phi i32 [ %23, %1591 ], [ %1610, %1593 ]
  %1595 = phi i64 [ 0, %1591 ], [ %1620, %1593 ]
  %1596 = phi i64 [ 0, %1591 ], [ %1621, %1593 ]
  %1597 = phi i32 [ 0, %1591 ], [ %1622, %1593 ]
  %1598 = add i32 %1594, -1
  %1599 = sext i32 %1598 to i64
  %1600 = getelementptr inbounds i8, ptr %2, i64 %1599
  %1601 = load i8, ptr %1600, align 1, !tbaa !5
  %1602 = zext i8 %1601 to i64
  %1603 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1602
  %1604 = load i64, ptr %1603, align 8, !tbaa !14
  %1605 = and i64 %1604, 255
  %1606 = lshr i64 %1595, %1605
  %1607 = and i64 %1604, -256
  %1608 = or i64 %1606, %1607
  %1609 = add i64 %1604, %1596
  %1610 = add i32 %1594, -2
  %1611 = sext i32 %1610 to i64
  %1612 = getelementptr inbounds i8, ptr %2, i64 %1611
  %1613 = load i8, ptr %1612, align 1, !tbaa !5
  %1614 = zext i8 %1613 to i64
  %1615 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1614
  %1616 = load i64, ptr %1615, align 8, !tbaa !14
  %1617 = and i64 %1616, 255
  %1618 = lshr i64 %1608, %1617
  %1619 = and i64 %1616, -256
  %1620 = or i64 %1618, %1619
  %1621 = add i64 %1609, %1616
  %1622 = add i32 %1597, 2
  %1623 = icmp eq i32 %1622, %1592
  br i1 %1623, label %1624, label %1593, !llvm.loop !78

.loopexit37:                                      ; preds = %1895, %1892, %1889, %1886, %1883, %1880, %1792, %1677, %1674, %1671, %1668, %1665, %1662, %1659
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

1624:                                             ; preds = %1593
  %1625 = sub i32 %23, %1592
  %1626 = icmp eq i32 %1589, 0
  br i1 %1626, label %1642, label %.thread24

.thread24:                                        ; preds = %1588, %1624
  %1627 = phi i64 [ %1621, %1624 ], [ 0, %1588 ]
  %1628 = phi i64 [ %1620, %1624 ], [ 0, %1588 ]
  %1629 = phi i32 [ %1625, %1624 ], [ %23, %1588 ]
  %1630 = add i32 %1629, -1
  %1631 = sext i32 %1630 to i64
  %1632 = getelementptr inbounds i8, ptr %2, i64 %1631
  %1633 = load i8, ptr %1632, align 1, !tbaa !5
  %1634 = zext i8 %1633 to i64
  %1635 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1634
  %1636 = load i64, ptr %1635, align 8, !tbaa !14
  %1637 = and i64 %1636, 255
  %1638 = lshr i64 %1628, %1637
  %1639 = and i64 %1636, -256
  %1640 = or i64 %1638, %1639
  %1641 = add i64 %1636, %1627
  br label %1642

1642:                                             ; preds = %.thread24, %1624
  %1643 = phi i64 [ %1620, %1624 ], [ %1640, %.thread24 ]
  %1644 = phi i64 [ %1621, %1624 ], [ %1641, %.thread24 ]
  %1645 = sub nsw i32 %23, %1586
  %1646 = and i64 %1644, 255
  %1647 = lshr i64 %1646, 3
  %1648 = sub nsw i64 64, %1646
  %1649 = lshr i64 %1643, %1648
  %1650 = and i64 %1644, 7
  store i64 %1649, ptr %0, align 1, !tbaa !14
  %1651 = getelementptr inbounds nuw i8, ptr %0, i64 %1647
  br label %1652

1652:                                             ; preds = %1642, %1585
  %1653 = phi i64 [ %1650, %1642 ], [ 0, %1585 ]
  %1654 = phi ptr [ %1651, %1642 ], [ %0, %1585 ]
  %1655 = phi i64 [ %1643, %1642 ], [ 0, %1585 ]
  %1656 = phi i32 [ %1645, %1642 ], [ %23, %1585 ]
  %1657 = and i32 %1656, 15
  %1658 = icmp eq i32 %1657, 0
  br i1 %1658, label %1776, label %1659

1659:                                             ; preds = %1652
  %1660 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1656, i32 -2)
  %1661 = extractvalue { i32, i1 } %1660, 1, !nosanitize !46
  br i1 %1661, label %.loopexit37, label %1662, !prof !49, !nosanitize !46

1662:                                             ; preds = %1659
  %1663 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1656, i32 -3)
  %1664 = extractvalue { i32, i1 } %1663, 1, !nosanitize !46
  br i1 %1664, label %.loopexit37, label %1665, !prof !49, !nosanitize !46

1665:                                             ; preds = %1662
  %1666 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1656, i32 -4)
  %1667 = extractvalue { i32, i1 } %1666, 1, !nosanitize !46
  br i1 %1667, label %.loopexit37, label %1668, !prof !49, !nosanitize !46

1668:                                             ; preds = %1665
  %1669 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1656, i32 -5)
  %1670 = extractvalue { i32, i1 } %1669, 1, !nosanitize !46
  br i1 %1670, label %.loopexit37, label %1671, !prof !49, !nosanitize !46

1671:                                             ; preds = %1668
  %1672 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1656, i32 -6)
  %1673 = extractvalue { i32, i1 } %1672, 1, !nosanitize !46
  br i1 %1673, label %.loopexit37, label %1674, !prof !49, !nosanitize !46

1674:                                             ; preds = %1671
  %1675 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1656, i32 -7)
  %1676 = extractvalue { i32, i1 } %1675, 1, !nosanitize !46
  br i1 %1676, label %.loopexit37, label %1677, !prof !49, !nosanitize !46

1677:                                             ; preds = %1674
  %1678 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1656, i32 -8)
  %1679 = extractvalue { i32, i1 } %1678, 1, !nosanitize !46
  br i1 %1679, label %.loopexit37, label %1680, !prof !49, !nosanitize !46

1680:                                             ; preds = %1677
  %1681 = extractvalue { i32, i1 } %1675, 0, !nosanitize !46
  %1682 = sext i32 %1681 to i64
  %1683 = getelementptr inbounds i8, ptr %2, i64 %1682
  %1684 = load i8, ptr %1683, align 1, !tbaa !5
  %1685 = zext i8 %1684 to i64
  %1686 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1685
  %1687 = load i64, ptr %1686, align 8, !tbaa !14
  %1688 = extractvalue { i32, i1 } %1672, 0, !nosanitize !46
  %1689 = sext i32 %1688 to i64
  %1690 = getelementptr inbounds i8, ptr %2, i64 %1689
  %1691 = load i8, ptr %1690, align 1, !tbaa !5
  %1692 = zext i8 %1691 to i64
  %1693 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1692
  %1694 = load i64, ptr %1693, align 8, !tbaa !14
  %1695 = extractvalue { i32, i1 } %1669, 0, !nosanitize !46
  %1696 = sext i32 %1695 to i64
  %1697 = getelementptr inbounds i8, ptr %2, i64 %1696
  %1698 = load i8, ptr %1697, align 1, !tbaa !5
  %1699 = zext i8 %1698 to i64
  %1700 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1699
  %1701 = load i64, ptr %1700, align 8, !tbaa !14
  %1702 = extractvalue { i32, i1 } %1666, 0, !nosanitize !46
  %1703 = sext i32 %1702 to i64
  %1704 = getelementptr inbounds i8, ptr %2, i64 %1703
  %1705 = load i8, ptr %1704, align 1, !tbaa !5
  %1706 = zext i8 %1705 to i64
  %1707 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1706
  %1708 = load i64, ptr %1707, align 8, !tbaa !14
  %1709 = extractvalue { i32, i1 } %1663, 0, !nosanitize !46
  %1710 = sext i32 %1709 to i64
  %1711 = getelementptr inbounds i8, ptr %2, i64 %1710
  %1712 = load i8, ptr %1711, align 1, !tbaa !5
  %1713 = zext i8 %1712 to i64
  %1714 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1713
  %1715 = load i64, ptr %1714, align 8, !tbaa !14
  %1716 = extractvalue { i32, i1 } %1660, 0, !nosanitize !46
  %1717 = sext i32 %1716 to i64
  %1718 = getelementptr inbounds i8, ptr %2, i64 %1717
  %1719 = load i8, ptr %1718, align 1, !tbaa !5
  %1720 = zext i8 %1719 to i64
  %1721 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1720
  %1722 = load i64, ptr %1721, align 8, !tbaa !14
  %1723 = sext i32 %1656 to i64
  %1724 = getelementptr i8, ptr %2, i64 %1723
  %1725 = getelementptr i8, ptr %1724, i64 -1
  %1726 = load i8, ptr %1725, align 1, !tbaa !5
  %1727 = zext i8 %1726 to i64
  %1728 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1727
  %1729 = load i64, ptr %1728, align 8, !tbaa !14
  %1730 = and i64 %1729, 255
  %1731 = lshr i64 %1655, %1730
  %1732 = or i64 %1731, %1729
  %1733 = and i64 %1722, 255
  %1734 = lshr i64 %1732, %1733
  %1735 = or i64 %1734, %1722
  %1736 = and i64 %1715, 255
  %1737 = lshr i64 %1735, %1736
  %1738 = or i64 %1737, %1715
  %1739 = and i64 %1708, 255
  %1740 = lshr i64 %1738, %1739
  %1741 = or i64 %1740, %1708
  %1742 = and i64 %1701, 255
  %1743 = lshr i64 %1741, %1742
  %1744 = or i64 %1743, %1701
  %1745 = and i64 %1694, 255
  %1746 = lshr i64 %1744, %1745
  %1747 = or i64 %1746, %1694
  %1748 = and i64 %1687, 255
  %1749 = lshr i64 %1747, %1748
  %1750 = or i64 %1749, %1687
  %1751 = extractvalue { i32, i1 } %1678, 0, !nosanitize !46
  %1752 = sext i32 %1751 to i64
  %1753 = getelementptr inbounds i8, ptr %2, i64 %1752
  %1754 = load i8, ptr %1753, align 1, !tbaa !5
  %1755 = zext i8 %1754 to i64
  %1756 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1755
  %1757 = load i64, ptr %1756, align 8, !tbaa !14
  %1758 = and i64 %1757, 255
  %1759 = lshr i64 %1750, %1758
  %1760 = and i64 %1757, -256
  %1761 = or i64 %1759, %1760
  %1762 = add i64 %1687, %1653
  %1763 = add i64 %1762, %1694
  %1764 = add i64 %1763, %1701
  %1765 = add i64 %1764, %1708
  %1766 = add i64 %1765, %1715
  %1767 = add i64 %1766, %1722
  %1768 = add i64 %1767, %1729
  %1769 = add i64 %1768, %1757
  %1770 = and i64 %1769, 255
  %1771 = lshr i64 %1770, 3
  %1772 = sub nsw i64 64, %1770
  %1773 = lshr i64 %1761, %1772
  %1774 = and i64 %1769, 7
  store i64 %1773, ptr %1654, align 1, !tbaa !14
  %1775 = getelementptr inbounds nuw i8, ptr %1654, i64 %1771
  br label %1776

1776:                                             ; preds = %1680, %1652
  %1777 = phi i64 [ %1653, %1652 ], [ %1774, %1680 ]
  %1778 = phi ptr [ %1654, %1652 ], [ %1775, %1680 ]
  %1779 = phi i64 [ %1655, %1652 ], [ %1761, %1680 ]
  %1780 = phi i32 [ %1656, %1652 ], [ %1751, %1680 ]
  %1781 = getelementptr i8, ptr %2, i64 -16
  %1782 = icmp sgt i32 %1780, 0
  br i1 %1782, label %1783, label %.loopexit26

1783:                                             ; preds = %1776
  %1784 = zext nneg i32 %1780 to i64
  %1785 = getelementptr i8, ptr %2, i64 -1
  %1786 = getelementptr i8, ptr %2, i64 -2
  %1787 = getelementptr i8, ptr %2, i64 -3
  %1788 = getelementptr i8, ptr %2, i64 -4
  %1789 = getelementptr i8, ptr %2, i64 -5
  %1790 = getelementptr i8, ptr %2, i64 -6
  %1791 = getelementptr i8, ptr %2, i64 -7
  br label %1792

1792:                                             ; preds = %1898, %1783
  %1793 = phi i64 [ %1784, %1783 ], [ %1992, %1898 ]
  %1794 = phi i64 [ %1779, %1783 ], [ %1984, %1898 ]
  %1795 = phi ptr [ %1778, %1783 ], [ %1991, %1898 ]
  %1796 = phi i64 [ %1777, %1783 ], [ %1990, %1898 ]
  %1797 = getelementptr i8, ptr %1785, i64 %1793
  %1798 = load i8, ptr %1797, align 1, !tbaa !5
  %1799 = zext i8 %1798 to i64
  %1800 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1799
  %1801 = load i64, ptr %1800, align 8, !tbaa !14
  %1802 = and i64 %1801, 255
  %1803 = lshr i64 %1794, %1802
  %1804 = or i64 %1803, %1801
  %1805 = add i64 %1801, %1796
  %1806 = getelementptr i8, ptr %1786, i64 %1793
  %1807 = load i8, ptr %1806, align 1, !tbaa !5
  %1808 = zext i8 %1807 to i64
  %1809 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1808
  %1810 = load i64, ptr %1809, align 8, !tbaa !14
  %1811 = and i64 %1810, 255
  %1812 = lshr i64 %1804, %1811
  %1813 = or i64 %1812, %1810
  %1814 = add i64 %1805, %1810
  %1815 = getelementptr i8, ptr %1787, i64 %1793
  %1816 = load i8, ptr %1815, align 1, !tbaa !5
  %1817 = zext i8 %1816 to i64
  %1818 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1817
  %1819 = load i64, ptr %1818, align 8, !tbaa !14
  %1820 = and i64 %1819, 255
  %1821 = lshr i64 %1813, %1820
  %1822 = or i64 %1821, %1819
  %1823 = add i64 %1814, %1819
  %1824 = getelementptr i8, ptr %1788, i64 %1793
  %1825 = load i8, ptr %1824, align 1, !tbaa !5
  %1826 = zext i8 %1825 to i64
  %1827 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1826
  %1828 = load i64, ptr %1827, align 8, !tbaa !14
  %1829 = and i64 %1828, 255
  %1830 = lshr i64 %1822, %1829
  %1831 = or i64 %1830, %1828
  %1832 = add i64 %1823, %1828
  %1833 = getelementptr i8, ptr %1789, i64 %1793
  %1834 = load i8, ptr %1833, align 1, !tbaa !5
  %1835 = zext i8 %1834 to i64
  %1836 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1835
  %1837 = load i64, ptr %1836, align 8, !tbaa !14
  %1838 = and i64 %1837, 255
  %1839 = lshr i64 %1831, %1838
  %1840 = or i64 %1839, %1837
  %1841 = add i64 %1832, %1837
  %1842 = getelementptr i8, ptr %1790, i64 %1793
  %1843 = load i8, ptr %1842, align 1, !tbaa !5
  %1844 = zext i8 %1843 to i64
  %1845 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1844
  %1846 = load i64, ptr %1845, align 8, !tbaa !14
  %1847 = and i64 %1846, 255
  %1848 = lshr i64 %1840, %1847
  %1849 = or i64 %1848, %1846
  %1850 = add i64 %1841, %1846
  %1851 = getelementptr i8, ptr %1791, i64 %1793
  %1852 = load i8, ptr %1851, align 1, !tbaa !5
  %1853 = zext i8 %1852 to i64
  %1854 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1853
  %1855 = load i64, ptr %1854, align 8, !tbaa !14
  %1856 = and i64 %1855, 255
  %1857 = lshr i64 %1849, %1856
  %1858 = or i64 %1857, %1855
  %1859 = add i64 %1850, %1855
  %1860 = add nsw i64 %1793, -8
  %1861 = getelementptr inbounds i8, ptr %2, i64 %1860
  %1862 = load i8, ptr %1861, align 1, !tbaa !5
  %1863 = zext i8 %1862 to i64
  %1864 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1863
  %1865 = load i64, ptr %1864, align 8, !tbaa !14
  %1866 = and i64 %1865, 255
  %1867 = lshr i64 %1858, %1866
  %1868 = and i64 %1865, -256
  %1869 = or i64 %1867, %1868
  %1870 = add i64 %1859, %1865
  %1871 = and i64 %1870, 255
  %1872 = lshr i64 %1871, 3
  %1873 = sub nsw i64 64, %1871
  %1874 = lshr i64 %1869, %1873
  %1875 = and i64 %1870, 7
  store i64 %1874, ptr %1795, align 1, !tbaa !14
  %1876 = getelementptr inbounds nuw i8, ptr %1795, i64 %1872
  %1877 = trunc nsw i64 %1860 to i32
  %1878 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1877, i32 -1)
  %1879 = extractvalue { i32, i1 } %1878, 1, !nosanitize !46
  br i1 %1879, label %.loopexit37, label %1880, !prof !49, !nosanitize !46

1880:                                             ; preds = %1792
  %1881 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1877, i32 -2)
  %1882 = extractvalue { i32, i1 } %1881, 1, !nosanitize !46
  br i1 %1882, label %.loopexit37, label %1883, !prof !49, !nosanitize !46

1883:                                             ; preds = %1880
  %1884 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1877, i32 -3)
  %1885 = extractvalue { i32, i1 } %1884, 1, !nosanitize !46
  br i1 %1885, label %.loopexit37, label %1886, !prof !49, !nosanitize !46

1886:                                             ; preds = %1883
  %1887 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1877, i32 -4)
  %1888 = extractvalue { i32, i1 } %1887, 1, !nosanitize !46
  br i1 %1888, label %.loopexit37, label %1889, !prof !49, !nosanitize !46

1889:                                             ; preds = %1886
  %1890 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1877, i32 -5)
  %1891 = extractvalue { i32, i1 } %1890, 1, !nosanitize !46
  br i1 %1891, label %.loopexit37, label %1892, !prof !49, !nosanitize !46

1892:                                             ; preds = %1889
  %1893 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1877, i32 -6)
  %1894 = extractvalue { i32, i1 } %1893, 1, !nosanitize !46
  br i1 %1894, label %.loopexit37, label %1895, !prof !49, !nosanitize !46

1895:                                             ; preds = %1892
  %1896 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1877, i32 -7)
  %1897 = extractvalue { i32, i1 } %1896, 1, !nosanitize !46
  br i1 %1897, label %.loopexit37, label %1898, !prof !49, !nosanitize !46

1898:                                             ; preds = %1895
  %1899 = extractvalue { i32, i1 } %1893, 0, !nosanitize !46
  %1900 = sext i32 %1899 to i64
  %1901 = getelementptr inbounds i8, ptr %2, i64 %1900
  %1902 = load i8, ptr %1901, align 1, !tbaa !5
  %1903 = zext i8 %1902 to i64
  %1904 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1903
  %1905 = load i64, ptr %1904, align 8, !tbaa !14
  %1906 = extractvalue { i32, i1 } %1890, 0, !nosanitize !46
  %1907 = sext i32 %1906 to i64
  %1908 = getelementptr inbounds i8, ptr %2, i64 %1907
  %1909 = load i8, ptr %1908, align 1, !tbaa !5
  %1910 = zext i8 %1909 to i64
  %1911 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1910
  %1912 = load i64, ptr %1911, align 8, !tbaa !14
  %1913 = extractvalue { i32, i1 } %1887, 0, !nosanitize !46
  %1914 = sext i32 %1913 to i64
  %1915 = getelementptr inbounds i8, ptr %2, i64 %1914
  %1916 = load i8, ptr %1915, align 1, !tbaa !5
  %1917 = zext i8 %1916 to i64
  %1918 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1917
  %1919 = load i64, ptr %1918, align 8, !tbaa !14
  %1920 = extractvalue { i32, i1 } %1884, 0, !nosanitize !46
  %1921 = sext i32 %1920 to i64
  %1922 = getelementptr inbounds i8, ptr %2, i64 %1921
  %1923 = load i8, ptr %1922, align 1, !tbaa !5
  %1924 = zext i8 %1923 to i64
  %1925 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1924
  %1926 = load i64, ptr %1925, align 8, !tbaa !14
  %1927 = extractvalue { i32, i1 } %1881, 0, !nosanitize !46
  %1928 = sext i32 %1927 to i64
  %1929 = getelementptr inbounds i8, ptr %2, i64 %1928
  %1930 = load i8, ptr %1929, align 1, !tbaa !5
  %1931 = zext i8 %1930 to i64
  %1932 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1931
  %1933 = load i64, ptr %1932, align 8, !tbaa !14
  %1934 = extractvalue { i32, i1 } %1878, 0, !nosanitize !46
  %1935 = sext i32 %1934 to i64
  %1936 = getelementptr inbounds i8, ptr %2, i64 %1935
  %1937 = load i8, ptr %1936, align 1, !tbaa !5
  %1938 = zext i8 %1937 to i64
  %1939 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1938
  %1940 = load i64, ptr %1939, align 8, !tbaa !14
  %1941 = and i64 %1933, 255
  %1942 = lshr i64 %1940, %1941
  %1943 = or i64 %1942, %1933
  %1944 = and i64 %1926, 255
  %1945 = lshr i64 %1943, %1944
  %1946 = or i64 %1945, %1926
  %1947 = and i64 %1919, 255
  %1948 = lshr i64 %1946, %1947
  %1949 = or i64 %1948, %1919
  %1950 = and i64 %1912, 255
  %1951 = lshr i64 %1949, %1950
  %1952 = or i64 %1951, %1912
  %1953 = and i64 %1905, 255
  %1954 = lshr i64 %1952, %1953
  %1955 = or i64 %1954, %1905
  %1956 = extractvalue { i32, i1 } %1896, 0, !nosanitize !46
  %1957 = sext i32 %1956 to i64
  %1958 = getelementptr inbounds i8, ptr %2, i64 %1957
  %1959 = load i8, ptr %1958, align 1, !tbaa !5
  %1960 = zext i8 %1959 to i64
  %1961 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1960
  %1962 = load i64, ptr %1961, align 8, !tbaa !14
  %1963 = and i64 %1962, 255
  %1964 = lshr i64 %1955, %1963
  %1965 = or i64 %1964, %1962
  %1966 = getelementptr i8, ptr %1781, i64 %1793
  %1967 = load i8, ptr %1966, align 1, !tbaa !5
  %1968 = zext i8 %1967 to i64
  %1969 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %1968
  %1970 = load i64, ptr %1969, align 8, !tbaa !14
  %1971 = and i64 %1970, 255
  %1972 = lshr i64 %1965, %1971
  %1973 = and i64 %1970, -256
  %1974 = add i64 %1912, %1905
  %1975 = add i64 %1974, %1919
  %1976 = add i64 %1975, %1926
  %1977 = add i64 %1976, %1933
  %1978 = add i64 %1977, %1940
  %1979 = add i64 %1978, %1962
  %1980 = add i64 %1979, %1970
  %1981 = and i64 %1980, 255
  %1982 = lshr i64 %1869, %1981
  %1983 = or i64 %1982, %1973
  %1984 = or i64 %1983, %1972
  %1985 = add i64 %1980, %1875
  %1986 = and i64 %1985, 255
  %1987 = lshr i64 %1986, 3
  %1988 = sub nsw i64 64, %1986
  %1989 = lshr i64 %1984, %1988
  %1990 = and i64 %1985, 7
  store i64 %1989, ptr %1876, align 1, !tbaa !14
  %1991 = getelementptr inbounds nuw i8, ptr %1876, i64 %1987
  %1992 = add nsw i64 %1793, -16
  %1993 = icmp sgt i64 %1793, 16
  br i1 %1993, label %1792, label %.loopexit26, !llvm.loop !76

1994:                                             ; preds = %276
  %1995 = srem i32 %23, 9
  %1996 = icmp sgt i32 %1995, 0
  br i1 %1996, label %1997, label %2065

1997:                                             ; preds = %1994
  %1998 = xor i32 %23, -2147483648
  %1999 = add nsw i32 %1995, -1
  %2000 = icmp ugt i32 %1998, %1999
  br i1 %2000, label %2001, label %.loopexit27, !prof !77, !nosanitize !46

2001:                                             ; preds = %1997
  %2002 = and i32 %1995, 1
  %2003 = icmp eq i32 %1999, 0
  br i1 %2003, label %.thread25, label %2004

2004:                                             ; preds = %2001
  %2005 = and i32 %1995, 2147483646
  br label %2006

2006:                                             ; preds = %2006, %2004
  %2007 = phi i32 [ %23, %2004 ], [ %2023, %2006 ]
  %2008 = phi i64 [ 0, %2004 ], [ %2033, %2006 ]
  %2009 = phi i64 [ 0, %2004 ], [ %2034, %2006 ]
  %2010 = phi i32 [ 0, %2004 ], [ %2035, %2006 ]
  %2011 = add i32 %2007, -1
  %2012 = sext i32 %2011 to i64
  %2013 = getelementptr inbounds i8, ptr %2, i64 %2012
  %2014 = load i8, ptr %2013, align 1, !tbaa !5
  %2015 = zext i8 %2014 to i64
  %2016 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2015
  %2017 = load i64, ptr %2016, align 8, !tbaa !14
  %2018 = and i64 %2017, 255
  %2019 = lshr i64 %2008, %2018
  %2020 = and i64 %2017, -256
  %2021 = or i64 %2019, %2020
  %2022 = add i64 %2017, %2009
  %2023 = add i32 %2007, -2
  %2024 = sext i32 %2023 to i64
  %2025 = getelementptr inbounds i8, ptr %2, i64 %2024
  %2026 = load i8, ptr %2025, align 1, !tbaa !5
  %2027 = zext i8 %2026 to i64
  %2028 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2027
  %2029 = load i64, ptr %2028, align 8, !tbaa !14
  %2030 = and i64 %2029, 255
  %2031 = lshr i64 %2021, %2030
  %2032 = and i64 %2029, -256
  %2033 = or i64 %2031, %2032
  %2034 = add i64 %2022, %2029
  %2035 = add i32 %2010, 2
  %2036 = icmp eq i32 %2035, %2005
  br i1 %2036, label %2037, label %2006, !llvm.loop !78

.loopexit27:                                      ; preds = %2333, %2330, %2327, %2324, %2321, %2318, %2315, %2219, %2093, %2090, %2087, %2084, %2081, %2078, %2075, %2072, %1997
  tail call void @llvm.ubsantrap(i8 21) #18, !nosanitize !46
  unreachable, !nosanitize !46

2037:                                             ; preds = %2006
  %2038 = sub i32 %23, %2005
  %2039 = icmp eq i32 %2002, 0
  br i1 %2039, label %2055, label %.thread25

.thread25:                                        ; preds = %2001, %2037
  %2040 = phi i64 [ %2034, %2037 ], [ 0, %2001 ]
  %2041 = phi i64 [ %2033, %2037 ], [ 0, %2001 ]
  %2042 = phi i32 [ %2038, %2037 ], [ %23, %2001 ]
  %2043 = add i32 %2042, -1
  %2044 = sext i32 %2043 to i64
  %2045 = getelementptr inbounds i8, ptr %2, i64 %2044
  %2046 = load i8, ptr %2045, align 1, !tbaa !5
  %2047 = zext i8 %2046 to i64
  %2048 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2047
  %2049 = load i64, ptr %2048, align 8, !tbaa !14
  %2050 = and i64 %2049, 255
  %2051 = lshr i64 %2041, %2050
  %2052 = and i64 %2049, -256
  %2053 = or i64 %2051, %2052
  %2054 = add i64 %2049, %2040
  br label %2055

2055:                                             ; preds = %.thread25, %2037
  %2056 = phi i64 [ %2033, %2037 ], [ %2053, %.thread25 ]
  %2057 = phi i64 [ %2034, %2037 ], [ %2054, %.thread25 ]
  %2058 = sub nsw i32 %23, %1995
  %2059 = and i64 %2057, 255
  %2060 = lshr i64 %2059, 3
  %2061 = sub nsw i64 64, %2059
  %2062 = lshr i64 %2056, %2061
  %2063 = and i64 %2057, 7
  store i64 %2062, ptr %0, align 1, !tbaa !14
  %2064 = getelementptr inbounds nuw i8, ptr %0, i64 %2060
  br label %2065

2065:                                             ; preds = %2055, %1994
  %2066 = phi i64 [ %2063, %2055 ], [ 0, %1994 ]
  %2067 = phi ptr [ %2064, %2055 ], [ %0, %1994 ]
  %2068 = phi i64 [ %2056, %2055 ], [ 0, %1994 ]
  %2069 = phi i32 [ %2058, %2055 ], [ %23, %1994 ]
  %2070 = srem i32 %2069, 18
  %2071 = icmp eq i32 %2070, 0
  br i1 %2071, label %2202, label %2072

2072:                                             ; preds = %2065
  %2073 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2069, i32 -1)
  %2074 = extractvalue { i32, i1 } %2073, 1, !nosanitize !46
  br i1 %2074, label %.loopexit27, label %2075, !prof !49, !nosanitize !46

2075:                                             ; preds = %2072
  %2076 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2069, i32 -2)
  %2077 = extractvalue { i32, i1 } %2076, 1, !nosanitize !46
  br i1 %2077, label %.loopexit27, label %2078, !prof !49, !nosanitize !46

2078:                                             ; preds = %2075
  %2079 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2069, i32 -4)
  %2080 = extractvalue { i32, i1 } %2079, 1, !nosanitize !46
  br i1 %2080, label %.loopexit27, label %2081, !prof !49, !nosanitize !46

2081:                                             ; preds = %2078
  %2082 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2069, i32 -5)
  %2083 = extractvalue { i32, i1 } %2082, 1, !nosanitize !46
  br i1 %2083, label %.loopexit27, label %2084, !prof !49, !nosanitize !46

2084:                                             ; preds = %2081
  %2085 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2069, i32 -6)
  %2086 = extractvalue { i32, i1 } %2085, 1, !nosanitize !46
  br i1 %2086, label %.loopexit27, label %2087, !prof !49, !nosanitize !46

2087:                                             ; preds = %2084
  %2088 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2069, i32 -7)
  %2089 = extractvalue { i32, i1 } %2088, 1, !nosanitize !46
  br i1 %2089, label %.loopexit27, label %2090, !prof !49, !nosanitize !46

2090:                                             ; preds = %2087
  %2091 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2069, i32 -8)
  %2092 = extractvalue { i32, i1 } %2091, 1, !nosanitize !46
  br i1 %2092, label %.loopexit27, label %2093, !prof !49, !nosanitize !46

2093:                                             ; preds = %2090
  %2094 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2069, i32 -9)
  %2095 = extractvalue { i32, i1 } %2094, 1, !nosanitize !46
  br i1 %2095, label %.loopexit27, label %2096, !prof !49, !nosanitize !46

2096:                                             ; preds = %2093
  %2097 = extractvalue { i32, i1 } %2091, 0, !nosanitize !46
  %2098 = sext i32 %2097 to i64
  %2099 = getelementptr inbounds i8, ptr %2, i64 %2098
  %2100 = load i8, ptr %2099, align 1, !tbaa !5
  %2101 = zext i8 %2100 to i64
  %2102 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2101
  %2103 = load i64, ptr %2102, align 8, !tbaa !14
  %2104 = extractvalue { i32, i1 } %2088, 0, !nosanitize !46
  %2105 = sext i32 %2104 to i64
  %2106 = getelementptr inbounds i8, ptr %2, i64 %2105
  %2107 = load i8, ptr %2106, align 1, !tbaa !5
  %2108 = zext i8 %2107 to i64
  %2109 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2108
  %2110 = load i64, ptr %2109, align 8, !tbaa !14
  %2111 = extractvalue { i32, i1 } %2085, 0, !nosanitize !46
  %2112 = sext i32 %2111 to i64
  %2113 = getelementptr inbounds i8, ptr %2, i64 %2112
  %2114 = load i8, ptr %2113, align 1, !tbaa !5
  %2115 = zext i8 %2114 to i64
  %2116 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2115
  %2117 = load i64, ptr %2116, align 8, !tbaa !14
  %2118 = extractvalue { i32, i1 } %2082, 0, !nosanitize !46
  %2119 = sext i32 %2118 to i64
  %2120 = getelementptr inbounds i8, ptr %2, i64 %2119
  %2121 = load i8, ptr %2120, align 1, !tbaa !5
  %2122 = zext i8 %2121 to i64
  %2123 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2122
  %2124 = load i64, ptr %2123, align 8, !tbaa !14
  %2125 = extractvalue { i32, i1 } %2079, 0, !nosanitize !46
  %2126 = sext i32 %2125 to i64
  %2127 = getelementptr inbounds i8, ptr %2, i64 %2126
  %2128 = load i8, ptr %2127, align 1, !tbaa !5
  %2129 = zext i8 %2128 to i64
  %2130 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2129
  %2131 = load i64, ptr %2130, align 8, !tbaa !14
  %2132 = sext i32 %2069 to i64
  %2133 = getelementptr i8, ptr %2, i64 %2132
  %2134 = getelementptr i8, ptr %2133, i64 -3
  %2135 = load i8, ptr %2134, align 1, !tbaa !5
  %2136 = zext i8 %2135 to i64
  %2137 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2136
  %2138 = load i64, ptr %2137, align 8, !tbaa !14
  %2139 = extractvalue { i32, i1 } %2076, 0, !nosanitize !46
  %2140 = sext i32 %2139 to i64
  %2141 = getelementptr inbounds i8, ptr %2, i64 %2140
  %2142 = load i8, ptr %2141, align 1, !tbaa !5
  %2143 = zext i8 %2142 to i64
  %2144 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2143
  %2145 = load i64, ptr %2144, align 8, !tbaa !14
  %2146 = extractvalue { i32, i1 } %2073, 0, !nosanitize !46
  %2147 = sext i32 %2146 to i64
  %2148 = getelementptr inbounds i8, ptr %2, i64 %2147
  %2149 = load i8, ptr %2148, align 1, !tbaa !5
  %2150 = zext i8 %2149 to i64
  %2151 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2150
  %2152 = load i64, ptr %2151, align 8, !tbaa !14
  %2153 = and i64 %2152, 255
  %2154 = lshr i64 %2068, %2153
  %2155 = or i64 %2154, %2152
  %2156 = and i64 %2145, 255
  %2157 = lshr i64 %2155, %2156
  %2158 = or i64 %2157, %2145
  %2159 = and i64 %2138, 255
  %2160 = lshr i64 %2158, %2159
  %2161 = or i64 %2160, %2138
  %2162 = and i64 %2131, 255
  %2163 = lshr i64 %2161, %2162
  %2164 = or i64 %2163, %2131
  %2165 = and i64 %2124, 255
  %2166 = lshr i64 %2164, %2165
  %2167 = or i64 %2166, %2124
  %2168 = and i64 %2117, 255
  %2169 = lshr i64 %2167, %2168
  %2170 = or i64 %2169, %2117
  %2171 = and i64 %2110, 255
  %2172 = lshr i64 %2170, %2171
  %2173 = or i64 %2172, %2110
  %2174 = and i64 %2103, 255
  %2175 = lshr i64 %2173, %2174
  %2176 = or i64 %2175, %2103
  %2177 = extractvalue { i32, i1 } %2094, 0, !nosanitize !46
  %2178 = sext i32 %2177 to i64
  %2179 = getelementptr inbounds i8, ptr %2, i64 %2178
  %2180 = load i8, ptr %2179, align 1, !tbaa !5
  %2181 = zext i8 %2180 to i64
  %2182 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2181
  %2183 = load i64, ptr %2182, align 8, !tbaa !14
  %2184 = and i64 %2183, 255
  %2185 = lshr i64 %2176, %2184
  %2186 = or i64 %2185, %2183
  %2187 = add i64 %2103, %2066
  %2188 = add i64 %2187, %2110
  %2189 = add i64 %2188, %2117
  %2190 = add i64 %2189, %2124
  %2191 = add i64 %2190, %2131
  %2192 = add i64 %2191, %2138
  %2193 = add i64 %2192, %2145
  %2194 = add i64 %2193, %2152
  %2195 = add i64 %2194, %2183
  %2196 = and i64 %2195, 255
  %2197 = lshr i64 %2196, 3
  %2198 = sub nsw i64 64, %2196
  %2199 = lshr i64 %2186, %2198
  %2200 = and i64 %2195, 7
  store i64 %2199, ptr %2067, align 1, !tbaa !14
  %2201 = getelementptr inbounds nuw i8, ptr %2067, i64 %2197
  br label %2202

2202:                                             ; preds = %2096, %2065
  %2203 = phi i64 [ %2066, %2065 ], [ %2200, %2096 ]
  %2204 = phi ptr [ %2067, %2065 ], [ %2201, %2096 ]
  %2205 = phi i64 [ %2068, %2065 ], [ %2186, %2096 ]
  %2206 = phi i32 [ %2069, %2065 ], [ %2177, %2096 ]
  %2207 = getelementptr i8, ptr %2, i64 -18
  %2208 = icmp sgt i32 %2206, 0
  br i1 %2208, label %2209, label %.loopexit26

2209:                                             ; preds = %2202
  %2210 = zext nneg i32 %2206 to i64
  %2211 = getelementptr i8, ptr %2, i64 -1
  %2212 = getelementptr i8, ptr %2, i64 -2
  %2213 = getelementptr i8, ptr %2, i64 -3
  %2214 = getelementptr i8, ptr %2, i64 -4
  %2215 = getelementptr i8, ptr %2, i64 -5
  %2216 = getelementptr i8, ptr %2, i64 -6
  %2217 = getelementptr i8, ptr %2, i64 -7
  %2218 = getelementptr i8, ptr %2, i64 -8
  br label %2219

2219:                                             ; preds = %2336, %2209
  %2220 = phi i64 [ %2210, %2209 ], [ %2440, %2336 ]
  %2221 = phi i64 [ %2205, %2209 ], [ %2432, %2336 ]
  %2222 = phi ptr [ %2204, %2209 ], [ %2439, %2336 ]
  %2223 = phi i64 [ %2203, %2209 ], [ %2438, %2336 ]
  %2224 = getelementptr i8, ptr %2211, i64 %2220
  %2225 = load i8, ptr %2224, align 1, !tbaa !5
  %2226 = zext i8 %2225 to i64
  %2227 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2226
  %2228 = load i64, ptr %2227, align 8, !tbaa !14
  %2229 = and i64 %2228, 255
  %2230 = lshr i64 %2221, %2229
  %2231 = or i64 %2230, %2228
  %2232 = add i64 %2228, %2223
  %2233 = getelementptr i8, ptr %2212, i64 %2220
  %2234 = load i8, ptr %2233, align 1, !tbaa !5
  %2235 = zext i8 %2234 to i64
  %2236 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2235
  %2237 = load i64, ptr %2236, align 8, !tbaa !14
  %2238 = and i64 %2237, 255
  %2239 = lshr i64 %2231, %2238
  %2240 = or i64 %2239, %2237
  %2241 = add i64 %2232, %2237
  %2242 = getelementptr i8, ptr %2213, i64 %2220
  %2243 = load i8, ptr %2242, align 1, !tbaa !5
  %2244 = zext i8 %2243 to i64
  %2245 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2244
  %2246 = load i64, ptr %2245, align 8, !tbaa !14
  %2247 = and i64 %2246, 255
  %2248 = lshr i64 %2240, %2247
  %2249 = or i64 %2248, %2246
  %2250 = add i64 %2241, %2246
  %2251 = getelementptr i8, ptr %2214, i64 %2220
  %2252 = load i8, ptr %2251, align 1, !tbaa !5
  %2253 = zext i8 %2252 to i64
  %2254 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2253
  %2255 = load i64, ptr %2254, align 8, !tbaa !14
  %2256 = and i64 %2255, 255
  %2257 = lshr i64 %2249, %2256
  %2258 = or i64 %2257, %2255
  %2259 = add i64 %2250, %2255
  %2260 = getelementptr i8, ptr %2215, i64 %2220
  %2261 = load i8, ptr %2260, align 1, !tbaa !5
  %2262 = zext i8 %2261 to i64
  %2263 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2262
  %2264 = load i64, ptr %2263, align 8, !tbaa !14
  %2265 = and i64 %2264, 255
  %2266 = lshr i64 %2258, %2265
  %2267 = or i64 %2266, %2264
  %2268 = add i64 %2259, %2264
  %2269 = getelementptr i8, ptr %2216, i64 %2220
  %2270 = load i8, ptr %2269, align 1, !tbaa !5
  %2271 = zext i8 %2270 to i64
  %2272 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2271
  %2273 = load i64, ptr %2272, align 8, !tbaa !14
  %2274 = and i64 %2273, 255
  %2275 = lshr i64 %2267, %2274
  %2276 = or i64 %2275, %2273
  %2277 = add i64 %2268, %2273
  %2278 = getelementptr i8, ptr %2217, i64 %2220
  %2279 = load i8, ptr %2278, align 1, !tbaa !5
  %2280 = zext i8 %2279 to i64
  %2281 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2280
  %2282 = load i64, ptr %2281, align 8, !tbaa !14
  %2283 = and i64 %2282, 255
  %2284 = lshr i64 %2276, %2283
  %2285 = or i64 %2284, %2282
  %2286 = add i64 %2277, %2282
  %2287 = getelementptr i8, ptr %2218, i64 %2220
  %2288 = load i8, ptr %2287, align 1, !tbaa !5
  %2289 = zext i8 %2288 to i64
  %2290 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2289
  %2291 = load i64, ptr %2290, align 8, !tbaa !14
  %2292 = and i64 %2291, 255
  %2293 = lshr i64 %2285, %2292
  %2294 = or i64 %2293, %2291
  %2295 = add i64 %2286, %2291
  %2296 = add nsw i64 %2220, -9
  %2297 = getelementptr inbounds i8, ptr %2, i64 %2296
  %2298 = load i8, ptr %2297, align 1, !tbaa !5
  %2299 = zext i8 %2298 to i64
  %2300 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2299
  %2301 = load i64, ptr %2300, align 8, !tbaa !14
  %2302 = and i64 %2301, 255
  %2303 = lshr i64 %2294, %2302
  %2304 = or i64 %2303, %2301
  %2305 = add i64 %2295, %2301
  %2306 = and i64 %2305, 255
  %2307 = lshr i64 %2306, 3
  %2308 = sub nsw i64 64, %2306
  %2309 = lshr i64 %2304, %2308
  %2310 = and i64 %2305, 7
  store i64 %2309, ptr %2222, align 1, !tbaa !14
  %2311 = getelementptr inbounds nuw i8, ptr %2222, i64 %2307
  %2312 = trunc nsw i64 %2296 to i32
  %2313 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2312, i32 -1)
  %2314 = extractvalue { i32, i1 } %2313, 1, !nosanitize !46
  br i1 %2314, label %.loopexit27, label %2315, !prof !49, !nosanitize !46

2315:                                             ; preds = %2219
  %2316 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2312, i32 -2)
  %2317 = extractvalue { i32, i1 } %2316, 1, !nosanitize !46
  br i1 %2317, label %.loopexit27, label %2318, !prof !49, !nosanitize !46

2318:                                             ; preds = %2315
  %2319 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2312, i32 -3)
  %2320 = extractvalue { i32, i1 } %2319, 1, !nosanitize !46
  br i1 %2320, label %.loopexit27, label %2321, !prof !49, !nosanitize !46

2321:                                             ; preds = %2318
  %2322 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2312, i32 -4)
  %2323 = extractvalue { i32, i1 } %2322, 1, !nosanitize !46
  br i1 %2323, label %.loopexit27, label %2324, !prof !49, !nosanitize !46

2324:                                             ; preds = %2321
  %2325 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2312, i32 -5)
  %2326 = extractvalue { i32, i1 } %2325, 1, !nosanitize !46
  br i1 %2326, label %.loopexit27, label %2327, !prof !49, !nosanitize !46

2327:                                             ; preds = %2324
  %2328 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2312, i32 -6)
  %2329 = extractvalue { i32, i1 } %2328, 1, !nosanitize !46
  br i1 %2329, label %.loopexit27, label %2330, !prof !49, !nosanitize !46

2330:                                             ; preds = %2327
  %2331 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2312, i32 -7)
  %2332 = extractvalue { i32, i1 } %2331, 1, !nosanitize !46
  br i1 %2332, label %.loopexit27, label %2333, !prof !49, !nosanitize !46

2333:                                             ; preds = %2330
  %2334 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2312, i32 -8)
  %2335 = extractvalue { i32, i1 } %2334, 1, !nosanitize !46
  br i1 %2335, label %.loopexit27, label %2336, !prof !49, !nosanitize !46

2336:                                             ; preds = %2333
  %2337 = extractvalue { i32, i1 } %2331, 0, !nosanitize !46
  %2338 = sext i32 %2337 to i64
  %2339 = getelementptr inbounds i8, ptr %2, i64 %2338
  %2340 = load i8, ptr %2339, align 1, !tbaa !5
  %2341 = zext i8 %2340 to i64
  %2342 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2341
  %2343 = load i64, ptr %2342, align 8, !tbaa !14
  %2344 = extractvalue { i32, i1 } %2328, 0, !nosanitize !46
  %2345 = sext i32 %2344 to i64
  %2346 = getelementptr inbounds i8, ptr %2, i64 %2345
  %2347 = load i8, ptr %2346, align 1, !tbaa !5
  %2348 = zext i8 %2347 to i64
  %2349 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2348
  %2350 = load i64, ptr %2349, align 8, !tbaa !14
  %2351 = extractvalue { i32, i1 } %2325, 0, !nosanitize !46
  %2352 = sext i32 %2351 to i64
  %2353 = getelementptr inbounds i8, ptr %2, i64 %2352
  %2354 = load i8, ptr %2353, align 1, !tbaa !5
  %2355 = zext i8 %2354 to i64
  %2356 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2355
  %2357 = load i64, ptr %2356, align 8, !tbaa !14
  %2358 = extractvalue { i32, i1 } %2322, 0, !nosanitize !46
  %2359 = sext i32 %2358 to i64
  %2360 = getelementptr inbounds i8, ptr %2, i64 %2359
  %2361 = load i8, ptr %2360, align 1, !tbaa !5
  %2362 = zext i8 %2361 to i64
  %2363 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2362
  %2364 = load i64, ptr %2363, align 8, !tbaa !14
  %2365 = extractvalue { i32, i1 } %2319, 0, !nosanitize !46
  %2366 = sext i32 %2365 to i64
  %2367 = getelementptr inbounds i8, ptr %2, i64 %2366
  %2368 = load i8, ptr %2367, align 1, !tbaa !5
  %2369 = zext i8 %2368 to i64
  %2370 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2369
  %2371 = load i64, ptr %2370, align 8, !tbaa !14
  %2372 = extractvalue { i32, i1 } %2316, 0, !nosanitize !46
  %2373 = sext i32 %2372 to i64
  %2374 = getelementptr inbounds i8, ptr %2, i64 %2373
  %2375 = load i8, ptr %2374, align 1, !tbaa !5
  %2376 = zext i8 %2375 to i64
  %2377 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2376
  %2378 = load i64, ptr %2377, align 8, !tbaa !14
  %2379 = extractvalue { i32, i1 } %2313, 0, !nosanitize !46
  %2380 = sext i32 %2379 to i64
  %2381 = getelementptr inbounds i8, ptr %2, i64 %2380
  %2382 = load i8, ptr %2381, align 1, !tbaa !5
  %2383 = zext i8 %2382 to i64
  %2384 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2383
  %2385 = load i64, ptr %2384, align 8, !tbaa !14
  %2386 = and i64 %2378, 255
  %2387 = lshr i64 %2385, %2386
  %2388 = or i64 %2387, %2378
  %2389 = and i64 %2371, 255
  %2390 = lshr i64 %2388, %2389
  %2391 = or i64 %2390, %2371
  %2392 = and i64 %2364, 255
  %2393 = lshr i64 %2391, %2392
  %2394 = or i64 %2393, %2364
  %2395 = and i64 %2357, 255
  %2396 = lshr i64 %2394, %2395
  %2397 = or i64 %2396, %2357
  %2398 = and i64 %2350, 255
  %2399 = lshr i64 %2397, %2398
  %2400 = or i64 %2399, %2350
  %2401 = and i64 %2343, 255
  %2402 = lshr i64 %2400, %2401
  %2403 = or i64 %2402, %2343
  %2404 = extractvalue { i32, i1 } %2334, 0, !nosanitize !46
  %2405 = sext i32 %2404 to i64
  %2406 = getelementptr inbounds i8, ptr %2, i64 %2405
  %2407 = load i8, ptr %2406, align 1, !tbaa !5
  %2408 = zext i8 %2407 to i64
  %2409 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2408
  %2410 = load i64, ptr %2409, align 8, !tbaa !14
  %2411 = and i64 %2410, 255
  %2412 = lshr i64 %2403, %2411
  %2413 = or i64 %2412, %2410
  %2414 = getelementptr i8, ptr %2207, i64 %2220
  %2415 = load i8, ptr %2414, align 1, !tbaa !5
  %2416 = zext i8 %2415 to i64
  %2417 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2416
  %2418 = load i64, ptr %2417, align 8, !tbaa !14
  %2419 = and i64 %2418, 255
  %2420 = lshr i64 %2413, %2419
  %2421 = add i64 %2350, %2343
  %2422 = add i64 %2421, %2357
  %2423 = add i64 %2422, %2364
  %2424 = add i64 %2423, %2371
  %2425 = add i64 %2424, %2378
  %2426 = add i64 %2425, %2385
  %2427 = add i64 %2426, %2410
  %2428 = add i64 %2427, %2418
  %2429 = and i64 %2428, 255
  %2430 = lshr i64 %2304, %2429
  %2431 = or i64 %2430, %2420
  %2432 = or i64 %2431, %2418
  %2433 = add i64 %2428, %2310
  %2434 = and i64 %2433, 255
  %2435 = lshr i64 %2434, 3
  %2436 = sub nsw i64 64, %2434
  %2437 = lshr i64 %2432, %2436
  %2438 = and i64 %2433, 7
  store i64 %2437, ptr %2311, align 1, !tbaa !14
  %2439 = getelementptr inbounds nuw i8, ptr %2311, i64 %2435
  %2440 = add nsw i64 %2220, -18
  %2441 = icmp sgt i64 %2220, 18
  br i1 %2441, label %2219, label %.loopexit26, !llvm.loop !76

.loopexit26:                                      ; preds = %1898, %1500, %1136, %808, %512, %2336, %222, %2202, %1776, %1391, %1040, %726, %429, %150
  %2442 = phi i64 [ %151, %150 ], [ %2203, %2202 ], [ %430, %429 ], [ %727, %726 ], [ %1041, %1040 ], [ %1392, %1391 ], [ %1777, %1776 ], [ %571, %512 ], [ %866, %808 ], [ %1206, %1136 ], [ %1581, %1500 ], [ %270, %222 ], [ %2438, %2336 ], [ %1990, %1898 ]
  %2443 = phi ptr [ %152, %150 ], [ %2204, %2202 ], [ %431, %429 ], [ %728, %726 ], [ %1042, %1040 ], [ %1393, %1391 ], [ %1778, %1776 ], [ %572, %512 ], [ %867, %808 ], [ %1207, %1136 ], [ %1582, %1500 ], [ %273, %222 ], [ %2439, %2336 ], [ %1991, %1898 ]
  %2444 = phi i64 [ %153, %150 ], [ %2205, %2202 ], [ %432, %429 ], [ %729, %726 ], [ %1043, %1040 ], [ %1394, %1391 ], [ %1779, %1776 ], [ %565, %512 ], [ %860, %808 ], [ %1200, %1136 ], [ %1575, %1500 ], [ %264, %222 ], [ %2432, %2336 ], [ %1984, %1898 ]
  %2445 = lshr i64 %2444, 1
  %2446 = or disjoint i64 %2445, -9223372036854775808
  %2447 = add nuw nsw i64 %2442, -9223372036854775807
  %2448 = and i64 %2447, 255
  %2449 = lshr i64 %2448, 3
  %2450 = sub nuw nsw i64 64, %2448
  %2451 = lshr i64 %2446, %2450
  store i64 %2451, ptr %2443, align 1, !tbaa !14
  %2452 = getelementptr inbounds nuw i8, ptr %2443, i64 %2449
  %2453 = icmp ugt ptr %2452, %13
  %2454 = select i1 %2453, ptr %13, ptr %2452
  %2455 = icmp ult ptr %2454, %13
  br i1 %2455, label %2456, label %2464

2456:                                             ; preds = %.loopexit26
  %2457 = and i64 %2447, 7
  %2458 = ptrtoint ptr %2454 to i64
  %2459 = ptrtoint ptr %0 to i64
  %2460 = icmp ne i64 %2457, 0
  %2461 = zext i1 %2460 to i64
  %2462 = sub i64 %2461, %2459
  %2463 = add i64 %2462, %2458
  br label %2464

2464:                                             ; preds = %2456, %.loopexit26, %11, %5
  %2465 = phi i64 [ 0, %11 ], [ 0, %5 ], [ %2463, %2456 ], [ 0, %.loopexit26 ]
  ret i64 %2465
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
