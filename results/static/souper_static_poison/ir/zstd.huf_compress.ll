; ModuleID = '/mydata/zstd/lib/compress/huf_compress.c'
source_filename = "/mydata/zstd/lib/compress/huf_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HUF_WriteCTableWksp = type { %struct.HUF_CompressWeightsWksp, [13 x i8], [255 x i8] }
%struct.HUF_CompressWeightsWksp = type { [59 x i32], [41 x i32], [13 x i32], [13 x i16] }
%struct.nodeElt_s = type { i32, i16, i8, i8 }
%struct.HUF_buildCTable_wksp_tables = type { [512 x %struct.nodeElt_s], [192 x %struct.rankPos] }
%struct.rankPos = type { i16, i16 }
%struct.HUF_compress_tables_t = type { [256 x i32], [257 x i64], %union.anon }
%union.anon = type { %struct.HUF_buildCTable_wksp_tables }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @HUF_readCTableHeader(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  ret i64 %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_writeCTable_wksp(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 {
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds i64, ptr %2, i64 1
  %10 = ptrtoint ptr %5 to i64
  %11 = sub i64 0, %10
  %12 = and i64 %11, 3
  %13 = icmp ugt i64 %12, %6
  %14 = getelementptr inbounds i8, ptr %5, i64 %12
  %15 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %12)
  %16 = select i1 %13, ptr null, ptr %14
  %17 = icmp ult i64 %15, 748
  br i1 %17, label %472, label %18

18:                                               ; preds = %7
  %19 = icmp ugt i32 %3, 255
  br i1 %19, label %472, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 1
  store i8 0, ptr %21, align 4, !tbaa !5
  %22 = add i32 %4, 1
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %76

24:                                               ; preds = %20
  %25 = zext i32 %22 to i64
  %26 = add nsw i64 %25, -1
  %27 = icmp ult i32 %22, 9
  br i1 %27, label %74, label %28

28:                                               ; preds = %24
  %29 = icmp ult i32 %22, 17
  br i1 %29, label %51, label %30

30:                                               ; preds = %28
  %31 = and i64 %26, -16
  %32 = insertelement <16 x i32> poison, i32 %22, i64 0
  %33 = shufflevector <16 x i32> %32, <16 x i32> poison, <16 x i32> zeroinitializer
  %34 = or disjoint i64 %31, 1
  br label %35

35:                                               ; preds = %35, %30
  %36 = phi i64 [ 0, %30 ], [ %42, %35 ]
  %37 = phi <16 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>, %30 ], [ %43, %35 ]
  %38 = or disjoint i64 %36, 1
  %39 = sub <16 x i32> %33, %37
  %40 = trunc <16 x i32> %39 to <16 x i8>
  %41 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 1, i64 %38
  store <16 x i8> %40, ptr %41, align 1, !tbaa !5
  %42 = add nuw i64 %36, 16
  %43 = add <16 x i32> %37, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %44 = icmp eq i64 %42, %31
  br i1 %44, label %45, label %35, !llvm.loop !8

45:                                               ; preds = %35
  %46 = icmp eq i64 %26, %31
  br i1 %46, label %76, label %47

47:                                               ; preds = %45
  %48 = or disjoint i64 %31, 1
  %49 = and i64 %26, 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %74, label %51

51:                                               ; preds = %28, %47
  %52 = phi i64 [ %34, %47 ], [ 1, %28 ]
  %53 = phi i64 [ %31, %47 ], [ 0, %28 ]
  %54 = and i64 %26, -8
  %55 = or disjoint i64 %54, 1
  %56 = trunc i64 %52 to i32
  %57 = insertelement <8 x i32> poison, i32 %56, i64 0
  %58 = shufflevector <8 x i32> %57, <8 x i32> poison, <8 x i32> zeroinitializer
  %59 = add <8 x i32> %58, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %60 = insertelement <8 x i32> poison, i32 %22, i64 0
  %61 = shufflevector <8 x i32> %60, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %62

62:                                               ; preds = %62, %51
  %63 = phi i64 [ %53, %51 ], [ %69, %62 ]
  %64 = phi <8 x i32> [ %59, %51 ], [ %70, %62 ]
  %65 = or disjoint i64 %63, 1
  %66 = sub <8 x i32> %61, %64
  %67 = trunc <8 x i32> %66 to <8 x i8>
  %68 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 1, i64 %65
  store <8 x i8> %67, ptr %68, align 1, !tbaa !5
  %69 = add nuw i64 %63, 8
  %70 = add <8 x i32> %64, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %71 = icmp eq i64 %69, %54
  br i1 %71, label %72, label %62, !llvm.loop !12

72:                                               ; preds = %62
  %73 = icmp eq i64 %26, %54
  br i1 %73, label %76, label %74

74:                                               ; preds = %24, %47, %72
  %75 = phi i64 [ 1, %24 ], [ %48, %47 ], [ %55, %72 ]
  br label %84

76:                                               ; preds = %84, %45, %72, %20
  %77 = icmp eq i32 %3, 0
  br i1 %77, label %140, label %78

78:                                               ; preds = %76
  %79 = zext nneg i32 %3 to i64
  %80 = and i64 %79, 3
  %81 = icmp ult i32 %3, 4
  br i1 %81, label %125, label %82

82:                                               ; preds = %78
  %83 = and i64 %79, 252
  br label %92

84:                                               ; preds = %74, %84
  %85 = phi i64 [ %90, %84 ], [ %75, %74 ]
  %86 = trunc i64 %85 to i32
  %87 = sub i32 %22, %86
  %88 = trunc i32 %87 to i8
  %89 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 1, i64 %85
  store i8 %88, ptr %89, align 1, !tbaa !5
  %90 = add nuw nsw i64 %85, 1
  %91 = icmp eq i64 %90, %25
  br i1 %91, label %76, label %84, !llvm.loop !13

92:                                               ; preds = %92, %82
  %93 = phi i64 [ 0, %82 ], [ %122, %92 ]
  %94 = phi i64 [ 0, %82 ], [ %123, %92 ]
  %95 = getelementptr inbounds i64, ptr %9, i64 %93
  %96 = load i64, ptr %95, align 8, !tbaa !14
  %97 = and i64 %96, 255
  %98 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 1, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !5
  %100 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %93
  store i8 %99, ptr %100, align 1, !tbaa !5
  %101 = or disjoint i64 %93, 1
  %102 = getelementptr inbounds i64, ptr %9, i64 %101
  %103 = load i64, ptr %102, align 8, !tbaa !14
  %104 = and i64 %103, 255
  %105 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 1, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !5
  %107 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %101
  store i8 %106, ptr %107, align 1, !tbaa !5
  %108 = or disjoint i64 %93, 2
  %109 = getelementptr inbounds i64, ptr %9, i64 %108
  %110 = load i64, ptr %109, align 8, !tbaa !14
  %111 = and i64 %110, 255
  %112 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 1, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !5
  %114 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %108
  store i8 %113, ptr %114, align 1, !tbaa !5
  %115 = or disjoint i64 %93, 3
  %116 = getelementptr inbounds i64, ptr %9, i64 %115
  %117 = load i64, ptr %116, align 8, !tbaa !14
  %118 = and i64 %117, 255
  %119 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 1, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !5
  %121 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %115
  store i8 %120, ptr %121, align 1, !tbaa !5
  %122 = add nuw nsw i64 %93, 4
  %123 = add i64 %94, 4
  %124 = icmp eq i64 %123, %83
  br i1 %124, label %125, label %92, !llvm.loop !16

125:                                              ; preds = %92, %78
  %126 = phi i64 [ 0, %78 ], [ %122, %92 ]
  %127 = icmp eq i64 %80, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %125, %128
  %129 = phi i64 [ %137, %128 ], [ %126, %125 ]
  %130 = phi i64 [ %138, %128 ], [ 0, %125 ]
  %131 = getelementptr inbounds i64, ptr %9, i64 %129
  %132 = load i64, ptr %131, align 8, !tbaa !14
  %133 = and i64 %132, 255
  %134 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 1, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !5
  %136 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %129
  store i8 %135, ptr %136, align 1, !tbaa !5
  %137 = add nuw nsw i64 %129, 1
  %138 = add i64 %130, 1
  %139 = icmp eq i64 %138, %80
  br i1 %139, label %140, label %128, !llvm.loop !17

140:                                              ; preds = %125, %128, %76
  %141 = icmp eq i64 %1, 0
  br i1 %141, label %472, label %142

142:                                              ; preds = %140
  %143 = getelementptr i8, ptr %0, i64 1
  %144 = add i64 %1, -1
  %145 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2
  %146 = zext nneg i32 %3 to i64
  %147 = getelementptr inbounds i8, ptr %0, i64 %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 12, ptr %8, align 4, !tbaa !19
  %148 = ptrtoint ptr %16 to i64
  %149 = sub i64 0, %148
  %150 = and i64 %149, 3
  %151 = getelementptr inbounds i8, ptr %16, i64 %150
  %152 = icmp eq i64 %150, 0
  br i1 %152, label %153, label %187

153:                                              ; preds = %142
  %154 = icmp ult i32 %3, 2
  br i1 %154, label %189, label %155

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.HUF_CompressWeightsWksp, ptr %151, i64 0, i32 2
  %157 = call i32 @HIST_count_simple(ptr noundef nonnull %156, ptr noundef nonnull %8, ptr noundef nonnull %145, i64 noundef %146) #12
  %158 = icmp eq i32 %157, %3
  %159 = icmp eq i32 %157, 1
  %160 = or i1 %158, %159
  br i1 %160, label %189, label %161

161:                                              ; preds = %155
  %162 = load i32, ptr %8, align 4, !tbaa !19
  %163 = call i32 @FSE_optimalTableLog(i32 noundef 6, i64 noundef %146, i32 noundef %162) #12
  %164 = getelementptr inbounds %struct.HUF_CompressWeightsWksp, ptr %151, i64 0, i32 3
  %165 = load i32, ptr %8, align 4, !tbaa !19
  %166 = call i64 @FSE_normalizeCount(ptr noundef nonnull %164, i32 noundef %163, ptr noundef nonnull %156, i64 noundef %146, i32 noundef %165, i32 noundef 0) #12
  %167 = icmp ult i64 %166, -119
  br i1 %167, label %168, label %187

168:                                              ; preds = %161
  %169 = ptrtoint ptr %147 to i64
  %170 = ptrtoint ptr %143 to i64
  %171 = load i32, ptr %8, align 4, !tbaa !19
  %172 = call i64 @FSE_writeNCount(ptr noundef nonnull %143, i64 noundef %144, ptr noundef nonnull %164, i32 noundef %171, i32 noundef %163) #12
  %173 = icmp ult i64 %172, -119
  %174 = getelementptr inbounds i8, ptr %143, i64 %172
  br i1 %173, label %175, label %187

175:                                              ; preds = %168
  %176 = load i32, ptr %8, align 4, !tbaa !19
  %177 = getelementptr inbounds %struct.HUF_CompressWeightsWksp, ptr %151, i64 0, i32 1
  %178 = call i64 @FSE_buildCTable_wksp(ptr noundef %151, ptr noundef nonnull %164, i32 noundef %176, i32 noundef %163, ptr noundef nonnull %177, i64 noundef 164) #12
  %179 = icmp ult i64 %178, -119
  br i1 %179, label %180, label %187

180:                                              ; preds = %175
  %181 = ptrtoint ptr %174 to i64
  %182 = sub i64 %169, %181
  %183 = call i64 @FSE_compress_usingCTable(ptr noundef nonnull %174, i64 noundef %182, ptr noundef nonnull %145, i64 noundef %146, ptr noundef %151) #12
  %184 = icmp ult i64 %183, -119
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = icmp eq i64 %183, 0
  br i1 %186, label %189, label %190

187:                                              ; preds = %175, %168, %161, %142, %180
  %188 = phi i64 [ %183, %180 ], [ -1, %142 ], [ %166, %161 ], [ %172, %168 ], [ %178, %175 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %472

189:                                              ; preds = %185, %155, %153
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %204

190:                                              ; preds = %185
  %191 = getelementptr inbounds i8, ptr %174, i64 %183
  %192 = ptrtoint ptr %191 to i64
  %193 = sub i64 %192, %170
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %194 = icmp ult i64 %193, -119
  br i1 %194, label %195, label %472

195:                                              ; preds = %190
  %196 = icmp ugt i64 %193, 1
  %197 = lshr i32 %3, 1
  %198 = zext nneg i32 %197 to i64
  %199 = icmp ult i64 %193, %198
  %200 = and i1 %196, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %195
  %202 = trunc i64 %193 to i8
  store i8 %202, ptr %0, align 1, !tbaa !5
  %203 = add nuw nsw i64 %193, 1
  br label %472

204:                                              ; preds = %195, %189
  %205 = icmp ugt i32 %3, 128
  br i1 %205, label %472, label %206

206:                                              ; preds = %204
  %207 = add nuw nsw i32 %3, 1
  %208 = lshr i32 %207, 1
  %209 = add nuw nsw i32 %208, 1
  %210 = zext nneg i32 %209 to i64
  %211 = icmp ugt i64 %210, %1
  br i1 %211, label %472, label %212

212:                                              ; preds = %206
  %213 = trunc i32 %3 to i8
  %214 = add nuw i8 %213, 127
  store i8 %214, ptr %0, align 1, !tbaa !5
  %215 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %146
  store i8 0, ptr %215, align 1, !tbaa !5
  br i1 %77, label %472, label %216

216:                                              ; preds = %212
  %217 = add nsw i64 %146, -1
  %218 = lshr i64 %217, 1
  %219 = add nuw i64 %218, 1
  %220 = icmp ult i32 %3, 15
  br i1 %220, label %457, label %221

221:                                              ; preds = %216
  %222 = add nsw i64 %146, -1
  %223 = lshr i64 %222, 1
  %224 = getelementptr i8, ptr %0, i64 %223
  %225 = getelementptr i8, ptr %224, i64 2
  %226 = getelementptr i8, ptr %16, i64 493
  %227 = and i64 %222, -2
  %228 = getelementptr i8, ptr %16, i64 %227
  %229 = getelementptr i8, ptr %228, i64 495
  %230 = icmp ult ptr %143, %229
  %231 = icmp ult ptr %226, %225
  %232 = and i1 %230, %231
  br i1 %232, label %457, label %233

233:                                              ; preds = %221
  %234 = icmp ult i32 %3, 31
  br i1 %234, label %379, label %235

235:                                              ; preds = %233
  %236 = and i64 %219, -16
  br label %237

237:                                              ; preds = %237, %235
  %238 = phi i64 [ 0, %235 ], [ %371, %237 ]
  %239 = shl i64 %238, 1
  %240 = or disjoint i64 %239, 2
  %241 = or disjoint i64 %239, 4
  %242 = or disjoint i64 %239, 6
  %243 = or disjoint i64 %239, 8
  %244 = or disjoint i64 %239, 10
  %245 = or disjoint i64 %239, 12
  %246 = or disjoint i64 %239, 14
  %247 = or disjoint i64 %239, 16
  %248 = or disjoint i64 %239, 18
  %249 = or disjoint i64 %239, 20
  %250 = or disjoint i64 %239, 22
  %251 = or disjoint i64 %239, 24
  %252 = or disjoint i64 %239, 26
  %253 = or disjoint i64 %239, 28
  %254 = or disjoint i64 %239, 30
  %255 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %239
  %256 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %240
  %257 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %241
  %258 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %242
  %259 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %243
  %260 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %244
  %261 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %245
  %262 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %246
  %263 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %247
  %264 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %248
  %265 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %249
  %266 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %250
  %267 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %251
  %268 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %252
  %269 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %253
  %270 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %254
  %271 = load i8, ptr %255, align 1, !tbaa !5, !alias.scope !21
  %272 = load i8, ptr %256, align 1, !tbaa !5, !alias.scope !21
  %273 = load i8, ptr %257, align 1, !tbaa !5, !alias.scope !21
  %274 = load i8, ptr %258, align 1, !tbaa !5, !alias.scope !21
  %275 = load i8, ptr %259, align 1, !tbaa !5, !alias.scope !21
  %276 = load i8, ptr %260, align 1, !tbaa !5, !alias.scope !21
  %277 = load i8, ptr %261, align 1, !tbaa !5, !alias.scope !21
  %278 = load i8, ptr %262, align 1, !tbaa !5, !alias.scope !21
  %279 = load i8, ptr %263, align 1, !tbaa !5, !alias.scope !21
  %280 = load i8, ptr %264, align 1, !tbaa !5, !alias.scope !21
  %281 = load i8, ptr %265, align 1, !tbaa !5, !alias.scope !21
  %282 = load i8, ptr %266, align 1, !tbaa !5, !alias.scope !21
  %283 = load i8, ptr %267, align 1, !tbaa !5, !alias.scope !21
  %284 = load i8, ptr %268, align 1, !tbaa !5, !alias.scope !21
  %285 = load i8, ptr %269, align 1, !tbaa !5, !alias.scope !21
  %286 = load i8, ptr %270, align 1, !tbaa !5, !alias.scope !21
  %287 = insertelement <16 x i8> poison, i8 %271, i64 0
  %288 = insertelement <16 x i8> %287, i8 %272, i64 1
  %289 = insertelement <16 x i8> %288, i8 %273, i64 2
  %290 = insertelement <16 x i8> %289, i8 %274, i64 3
  %291 = insertelement <16 x i8> %290, i8 %275, i64 4
  %292 = insertelement <16 x i8> %291, i8 %276, i64 5
  %293 = insertelement <16 x i8> %292, i8 %277, i64 6
  %294 = insertelement <16 x i8> %293, i8 %278, i64 7
  %295 = insertelement <16 x i8> %294, i8 %279, i64 8
  %296 = insertelement <16 x i8> %295, i8 %280, i64 9
  %297 = insertelement <16 x i8> %296, i8 %281, i64 10
  %298 = insertelement <16 x i8> %297, i8 %282, i64 11
  %299 = insertelement <16 x i8> %298, i8 %283, i64 12
  %300 = insertelement <16 x i8> %299, i8 %284, i64 13
  %301 = insertelement <16 x i8> %300, i8 %285, i64 14
  %302 = insertelement <16 x i8> %301, i8 %286, i64 15
  %303 = shl <16 x i8> %302, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>
  %304 = or disjoint i64 %239, 1
  %305 = or disjoint i64 %239, 3
  %306 = or disjoint i64 %239, 5
  %307 = or disjoint i64 %239, 7
  %308 = or disjoint i64 %239, 9
  %309 = or disjoint i64 %239, 11
  %310 = or disjoint i64 %239, 13
  %311 = or disjoint i64 %239, 15
  %312 = or disjoint i64 %239, 17
  %313 = or disjoint i64 %239, 19
  %314 = or disjoint i64 %239, 21
  %315 = or disjoint i64 %239, 23
  %316 = or disjoint i64 %239, 25
  %317 = or disjoint i64 %239, 27
  %318 = or disjoint i64 %239, 29
  %319 = or disjoint i64 %239, 31
  %320 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %304
  %321 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %305
  %322 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %306
  %323 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %307
  %324 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %308
  %325 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %309
  %326 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %310
  %327 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %311
  %328 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %312
  %329 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %313
  %330 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %314
  %331 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %315
  %332 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %316
  %333 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %317
  %334 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %318
  %335 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %319
  %336 = load i8, ptr %320, align 1, !tbaa !5, !alias.scope !21
  %337 = load i8, ptr %321, align 1, !tbaa !5, !alias.scope !21
  %338 = load i8, ptr %322, align 1, !tbaa !5, !alias.scope !21
  %339 = load i8, ptr %323, align 1, !tbaa !5, !alias.scope !21
  %340 = load i8, ptr %324, align 1, !tbaa !5, !alias.scope !21
  %341 = load i8, ptr %325, align 1, !tbaa !5, !alias.scope !21
  %342 = load i8, ptr %326, align 1, !tbaa !5, !alias.scope !21
  %343 = load i8, ptr %327, align 1, !tbaa !5, !alias.scope !21
  %344 = load i8, ptr %328, align 1, !tbaa !5, !alias.scope !21
  %345 = load i8, ptr %329, align 1, !tbaa !5, !alias.scope !21
  %346 = load i8, ptr %330, align 1, !tbaa !5, !alias.scope !21
  %347 = load i8, ptr %331, align 1, !tbaa !5, !alias.scope !21
  %348 = load i8, ptr %332, align 1, !tbaa !5, !alias.scope !21
  %349 = load i8, ptr %333, align 1, !tbaa !5, !alias.scope !21
  %350 = load i8, ptr %334, align 1, !tbaa !5, !alias.scope !21
  %351 = load i8, ptr %335, align 1, !tbaa !5, !alias.scope !21
  %352 = insertelement <16 x i8> poison, i8 %336, i64 0
  %353 = insertelement <16 x i8> %352, i8 %337, i64 1
  %354 = insertelement <16 x i8> %353, i8 %338, i64 2
  %355 = insertelement <16 x i8> %354, i8 %339, i64 3
  %356 = insertelement <16 x i8> %355, i8 %340, i64 4
  %357 = insertelement <16 x i8> %356, i8 %341, i64 5
  %358 = insertelement <16 x i8> %357, i8 %342, i64 6
  %359 = insertelement <16 x i8> %358, i8 %343, i64 7
  %360 = insertelement <16 x i8> %359, i8 %344, i64 8
  %361 = insertelement <16 x i8> %360, i8 %345, i64 9
  %362 = insertelement <16 x i8> %361, i8 %346, i64 10
  %363 = insertelement <16 x i8> %362, i8 %347, i64 11
  %364 = insertelement <16 x i8> %363, i8 %348, i64 12
  %365 = insertelement <16 x i8> %364, i8 %349, i64 13
  %366 = insertelement <16 x i8> %365, i8 %350, i64 14
  %367 = insertelement <16 x i8> %366, i8 %351, i64 15
  %368 = add <16 x i8> %303, %367
  %369 = and i64 %238, 9223372036854775792
  %370 = getelementptr i8, ptr %143, i64 %369
  store <16 x i8> %368, ptr %370, align 1, !tbaa !5, !alias.scope !24, !noalias !21
  %371 = add nuw i64 %238, 16
  %372 = icmp eq i64 %371, %236
  br i1 %372, label %373, label %237, !llvm.loop !26

373:                                              ; preds = %237
  %374 = icmp eq i64 %219, %236
  br i1 %374, label %472, label %375

375:                                              ; preds = %373
  %376 = shl i64 %236, 1
  %377 = and i64 %219, 8
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %457, label %379

379:                                              ; preds = %233, %375
  %380 = phi i64 [ %236, %375 ], [ 0, %233 ]
  %381 = and i64 %219, -8
  %382 = shl i64 %381, 1
  br label %383

383:                                              ; preds = %383, %379
  %384 = phi i64 [ %380, %379 ], [ %453, %383 ]
  %385 = shl i64 %384, 1
  %386 = or disjoint i64 %385, 2
  %387 = or disjoint i64 %385, 4
  %388 = or disjoint i64 %385, 6
  %389 = or disjoint i64 %385, 8
  %390 = or disjoint i64 %385, 10
  %391 = or disjoint i64 %385, 12
  %392 = or disjoint i64 %385, 14
  %393 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %385
  %394 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %386
  %395 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %387
  %396 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %388
  %397 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %389
  %398 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %390
  %399 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %391
  %400 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %392
  %401 = load i8, ptr %393, align 1, !tbaa !5, !alias.scope !27
  %402 = load i8, ptr %394, align 1, !tbaa !5, !alias.scope !27
  %403 = load i8, ptr %395, align 1, !tbaa !5, !alias.scope !27
  %404 = load i8, ptr %396, align 1, !tbaa !5, !alias.scope !27
  %405 = load i8, ptr %397, align 1, !tbaa !5, !alias.scope !27
  %406 = load i8, ptr %398, align 1, !tbaa !5, !alias.scope !27
  %407 = load i8, ptr %399, align 1, !tbaa !5, !alias.scope !27
  %408 = load i8, ptr %400, align 1, !tbaa !5, !alias.scope !27
  %409 = insertelement <8 x i8> poison, i8 %401, i64 0
  %410 = insertelement <8 x i8> %409, i8 %402, i64 1
  %411 = insertelement <8 x i8> %410, i8 %403, i64 2
  %412 = insertelement <8 x i8> %411, i8 %404, i64 3
  %413 = insertelement <8 x i8> %412, i8 %405, i64 4
  %414 = insertelement <8 x i8> %413, i8 %406, i64 5
  %415 = insertelement <8 x i8> %414, i8 %407, i64 6
  %416 = insertelement <8 x i8> %415, i8 %408, i64 7
  %417 = shl <8 x i8> %416, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>
  %418 = or disjoint i64 %385, 1
  %419 = or disjoint i64 %385, 3
  %420 = or disjoint i64 %385, 5
  %421 = or disjoint i64 %385, 7
  %422 = or disjoint i64 %385, 9
  %423 = or disjoint i64 %385, 11
  %424 = or disjoint i64 %385, 13
  %425 = or disjoint i64 %385, 15
  %426 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %418
  %427 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %419
  %428 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %420
  %429 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %421
  %430 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %422
  %431 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %423
  %432 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %424
  %433 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %425
  %434 = load i8, ptr %426, align 1, !tbaa !5, !alias.scope !27
  %435 = load i8, ptr %427, align 1, !tbaa !5, !alias.scope !27
  %436 = load i8, ptr %428, align 1, !tbaa !5, !alias.scope !27
  %437 = load i8, ptr %429, align 1, !tbaa !5, !alias.scope !27
  %438 = load i8, ptr %430, align 1, !tbaa !5, !alias.scope !27
  %439 = load i8, ptr %431, align 1, !tbaa !5, !alias.scope !27
  %440 = load i8, ptr %432, align 1, !tbaa !5, !alias.scope !27
  %441 = load i8, ptr %433, align 1, !tbaa !5, !alias.scope !27
  %442 = insertelement <8 x i8> poison, i8 %434, i64 0
  %443 = insertelement <8 x i8> %442, i8 %435, i64 1
  %444 = insertelement <8 x i8> %443, i8 %436, i64 2
  %445 = insertelement <8 x i8> %444, i8 %437, i64 3
  %446 = insertelement <8 x i8> %445, i8 %438, i64 4
  %447 = insertelement <8 x i8> %446, i8 %439, i64 5
  %448 = insertelement <8 x i8> %447, i8 %440, i64 6
  %449 = insertelement <8 x i8> %448, i8 %441, i64 7
  %450 = add <8 x i8> %417, %449
  %451 = and i64 %384, 9223372036854775800
  %452 = getelementptr i8, ptr %143, i64 %451
  store <8 x i8> %450, ptr %452, align 1, !tbaa !5, !alias.scope !30, !noalias !27
  %453 = add nuw i64 %384, 8
  %454 = icmp eq i64 %453, %381
  br i1 %454, label %455, label %383, !llvm.loop !32

455:                                              ; preds = %383
  %456 = icmp eq i64 %219, %381
  br i1 %456, label %472, label %457

457:                                              ; preds = %221, %216, %375, %455
  %458 = phi i64 [ 0, %216 ], [ 0, %221 ], [ %376, %375 ], [ %382, %455 ]
  br label %459

459:                                              ; preds = %457, %459
  %460 = phi i64 [ %470, %459 ], [ %458, %457 ]
  %461 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %460
  %462 = load i8, ptr %461, align 1, !tbaa !5
  %463 = shl i8 %462, 4
  %464 = or disjoint i64 %460, 1
  %465 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %16, i64 0, i32 2, i64 %464
  %466 = load i8, ptr %465, align 1, !tbaa !5
  %467 = add i8 %463, %466
  %468 = lshr exact i64 %460, 1
  %469 = getelementptr i8, ptr %143, i64 %468
  store i8 %467, ptr %469, align 1, !tbaa !5
  %470 = add nuw nsw i64 %460, 2
  %471 = icmp ult i64 %470, %146
  br i1 %471, label %459, label %472, !llvm.loop !33

472:                                              ; preds = %459, %373, %455, %212, %187, %190, %201, %206, %204, %140, %18, %7
  %473 = phi i64 [ -1, %7 ], [ -46, %18 ], [ -70, %140 ], [ -1, %204 ], [ -70, %206 ], [ %188, %187 ], [ %193, %190 ], [ %203, %201 ], [ %210, %212 ], [ %210, %455 ], [ %210, %373 ], [ %210, %459 ]
  ret i64 %473
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_readCTable(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, i64 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #2 {
  %6 = alloca [256 x i8], align 16
  %7 = alloca [13 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [14 x i16], align 16
  %11 = alloca [14 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store i32 0, ptr %9, align 4, !tbaa !19
  %12 = getelementptr inbounds i64, ptr %0, i64 1
  %13 = call i64 @HUF_readStats(ptr noundef nonnull %6, i64 noundef 256, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %2, i64 noundef %3) #12
  %14 = icmp ult i64 %13, -119
  br i1 %14, label %15, label %199

15:                                               ; preds = %5
  %16 = load i32, ptr %7, align 16, !tbaa !19
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, ptr %4, align 4, !tbaa !19
  %19 = load i32, ptr %8, align 4, !tbaa !19
  %20 = icmp ugt i32 %19, 12
  br i1 %20, label %199, label %21

21:                                               ; preds = %15
  %22 = load i32, ptr %9, align 4, !tbaa !19
  %23 = load i32, ptr %1, align 4, !tbaa !19
  %24 = add i32 %23, 1
  %25 = icmp ugt i32 %22, %24
  br i1 %25, label %199, label %26

26:                                               ; preds = %21
  %27 = add i32 %22, -1
  store i32 %27, ptr %1, align 4, !tbaa !19
  %28 = trunc i32 %19 to i8
  %29 = trunc i32 %27 to i8
  store i8 %28, ptr %0, align 8
  %30 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds i8, ptr %0, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %31, i8 0, i64 6, i1 false)
  %32 = icmp eq i32 %19, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %26
  %34 = zext nneg i32 %19 to i64
  %35 = and i64 %34, 1
  %36 = icmp eq i32 %19, 1
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = and i64 %34, 14
  br label %78

39:                                               ; preds = %78, %33
  %40 = phi i64 [ 1, %33 ], [ %95, %78 ]
  %41 = phi i32 [ 0, %33 ], [ %94, %78 ]
  %42 = icmp eq i64 %35, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds [13 x i32], ptr %7, i64 0, i64 %40
  store i32 %41, ptr %44, align 4, !tbaa !19
  br label %45

45:                                               ; preds = %43, %39, %26
  %46 = icmp eq i32 %22, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  br label %144

48:                                               ; preds = %45
  %49 = add nuw nsw i8 %28, 1
  %50 = zext i32 %22 to i64
  %51 = icmp ult i32 %22, 4
  br i1 %51, label %76, label %52

52:                                               ; preds = %48
  %53 = and i64 %50, 4294967292
  %54 = insertelement <2 x i8> poison, i8 %49, i64 0
  %55 = shufflevector <2 x i8> %54, <2 x i8> poison, <2 x i32> zeroinitializer
  br label %56

56:                                               ; preds = %56, %52
  %57 = phi i64 [ 0, %52 ], [ %72, %56 ]
  %58 = getelementptr inbounds [256 x i8], ptr %6, i64 0, i64 %57
  %59 = getelementptr inbounds i8, ptr %58, i64 2
  %60 = load <2 x i8>, ptr %58, align 4, !tbaa !5
  %61 = load <2 x i8>, ptr %59, align 2, !tbaa !5
  %62 = icmp eq <2 x i8> %60, zeroinitializer
  %63 = icmp eq <2 x i8> %61, zeroinitializer
  %64 = sub <2 x i8> %55, %60
  %65 = sub <2 x i8> %55, %61
  %66 = getelementptr inbounds i64, ptr %12, i64 %57
  %67 = select <2 x i1> %62, <2 x i8> zeroinitializer, <2 x i8> %64
  %68 = select <2 x i1> %63, <2 x i8> zeroinitializer, <2 x i8> %65
  %69 = zext <2 x i8> %67 to <2 x i64>
  %70 = zext <2 x i8> %68 to <2 x i64>
  %71 = getelementptr inbounds i64, ptr %66, i64 2
  store <2 x i64> %69, ptr %66, align 8, !tbaa !14
  store <2 x i64> %70, ptr %71, align 8, !tbaa !14
  %72 = add nuw i64 %57, 4
  %73 = icmp eq i64 %72, %53
  br i1 %73, label %74, label %56, !llvm.loop !34

74:                                               ; preds = %56
  %75 = icmp eq i64 %53, %50
  br i1 %75, label %109, label %76

76:                                               ; preds = %48, %74
  %77 = phi i64 [ 0, %48 ], [ %53, %74 ]
  br label %98

78:                                               ; preds = %78, %37
  %79 = phi i64 [ 1, %37 ], [ %95, %78 ]
  %80 = phi i32 [ 0, %37 ], [ %94, %78 ]
  %81 = phi i64 [ 0, %37 ], [ %96, %78 ]
  %82 = getelementptr inbounds [13 x i32], ptr %7, i64 0, i64 %79
  %83 = load i32, ptr %82, align 4, !tbaa !19
  %84 = trunc i64 %79 to i32
  %85 = add nsw i32 %84, -1
  %86 = shl i32 %83, %85
  %87 = add i32 %86, %80
  store i32 %80, ptr %82, align 4, !tbaa !19
  %88 = add nuw nsw i64 %79, 1
  %89 = getelementptr inbounds [13 x i32], ptr %7, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !19
  %91 = trunc i64 %88 to i32
  %92 = add i32 %91, -1
  %93 = shl i32 %90, %92
  %94 = add i32 %93, %87
  store i32 %87, ptr %89, align 4, !tbaa !19
  %95 = add nuw nsw i64 %79, 2
  %96 = add i64 %81, 2
  %97 = icmp eq i64 %96, %38
  br i1 %97, label %39, label %78, !llvm.loop !35

98:                                               ; preds = %76, %98
  %99 = phi i64 [ %107, %98 ], [ %77, %76 ]
  %100 = getelementptr inbounds [256 x i8], ptr %6, i64 0, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !5
  %102 = icmp eq i8 %101, 0
  %103 = sub i8 %49, %101
  %104 = getelementptr inbounds i64, ptr %12, i64 %99
  %105 = select i1 %102, i8 0, i8 %103
  %106 = zext i8 %105 to i64
  store i64 %106, ptr %104, align 8, !tbaa !14
  %107 = add nuw nsw i64 %99, 1
  %108 = icmp eq i64 %107, %50
  br i1 %108, label %109, label %98, !llvm.loop !36

109:                                              ; preds = %98, %74
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  br i1 %46, label %144, label %110

110:                                              ; preds = %109
  %111 = and i64 %50, 1
  %112 = icmp eq i32 %22, 1
  br i1 %112, label %134, label %113

113:                                              ; preds = %110
  %114 = and i64 %50, 4294967294
  br label %115

115:                                              ; preds = %115, %113
  %116 = phi i64 [ 0, %113 ], [ %131, %115 ]
  %117 = phi i64 [ 0, %113 ], [ %132, %115 ]
  %118 = getelementptr inbounds i64, ptr %12, i64 %116
  %119 = load i64, ptr %118, align 8, !tbaa !14
  %120 = and i64 %119, 255
  %121 = getelementptr inbounds [14 x i16], ptr %10, i64 0, i64 %120
  %122 = load i16, ptr %121, align 2, !tbaa !37
  %123 = add i16 %122, 1
  store i16 %123, ptr %121, align 2, !tbaa !37
  %124 = or disjoint i64 %116, 1
  %125 = getelementptr inbounds i64, ptr %12, i64 %124
  %126 = load i64, ptr %125, align 8, !tbaa !14
  %127 = and i64 %126, 255
  %128 = getelementptr inbounds [14 x i16], ptr %10, i64 0, i64 %127
  %129 = load i16, ptr %128, align 2, !tbaa !37
  %130 = add i16 %129, 1
  store i16 %130, ptr %128, align 2, !tbaa !37
  %131 = add nuw nsw i64 %116, 2
  %132 = add i64 %117, 2
  %133 = icmp eq i64 %132, %114
  br i1 %133, label %134, label %115, !llvm.loop !39

134:                                              ; preds = %115, %110
  %135 = phi i64 [ 0, %110 ], [ %131, %115 ]
  %136 = icmp eq i64 %111, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds i64, ptr %12, i64 %135
  %139 = load i64, ptr %138, align 8, !tbaa !14
  %140 = and i64 %139, 255
  %141 = getelementptr inbounds [14 x i16], ptr %10, i64 0, i64 %140
  %142 = load i16, ptr %141, align 2, !tbaa !37
  %143 = add i16 %142, 1
  store i16 %143, ptr %141, align 2, !tbaa !37
  br label %144

144:                                              ; preds = %137, %134, %47, %109
  %145 = add nuw nsw i32 %19, 1
  %146 = zext nneg i32 %145 to i64
  %147 = getelementptr inbounds [14 x i16], ptr %11, i64 0, i64 %146
  store i16 0, ptr %147, align 2, !tbaa !37
  br i1 %32, label %160, label %148

148:                                              ; preds = %144
  %149 = zext nneg i32 %19 to i64
  %150 = and i32 %19, 1
  %151 = icmp eq i32 %19, 1
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = and i32 %19, 14
  br label %163

154:                                              ; preds = %163, %148
  %155 = phi i64 [ %149, %148 ], [ %178, %163 ]
  %156 = phi i16 [ 0, %148 ], [ %177, %163 ]
  %157 = icmp eq i32 %150, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds [14 x i16], ptr %11, i64 0, i64 %155
  store i16 %156, ptr %159, align 2, !tbaa !37
  br label %160

160:                                              ; preds = %158, %154, %144
  br i1 %46, label %198, label %161

161:                                              ; preds = %160
  %162 = zext i32 %22 to i64
  br label %181

163:                                              ; preds = %163, %152
  %164 = phi i64 [ %149, %152 ], [ %178, %163 ]
  %165 = phi i16 [ 0, %152 ], [ %177, %163 ]
  %166 = phi i32 [ 0, %152 ], [ %179, %163 ]
  %167 = getelementptr inbounds [14 x i16], ptr %11, i64 0, i64 %164
  store i16 %165, ptr %167, align 2, !tbaa !37
  %168 = getelementptr inbounds [14 x i16], ptr %10, i64 0, i64 %164
  %169 = load i16, ptr %168, align 2, !tbaa !37
  %170 = add i16 %169, %165
  %171 = lshr i16 %170, 1
  %172 = add nsw i64 %164, -1
  %173 = getelementptr inbounds [14 x i16], ptr %11, i64 0, i64 %172
  store i16 %171, ptr %173, align 2, !tbaa !37
  %174 = getelementptr inbounds [14 x i16], ptr %10, i64 0, i64 %172
  %175 = load i16, ptr %174, align 2, !tbaa !37
  %176 = add i16 %175, %171
  %177 = lshr i16 %176, 1
  %178 = add nsw i64 %164, -2
  %179 = add i32 %166, 2
  %180 = icmp eq i32 %179, %153
  br i1 %180, label %154, label %163, !llvm.loop !40

181:                                              ; preds = %161, %195
  %182 = phi i64 [ 0, %161 ], [ %196, %195 ]
  %183 = getelementptr inbounds i64, ptr %12, i64 %182
  %184 = load i64, ptr %183, align 8, !tbaa !14
  %185 = and i64 %184, 255
  %186 = getelementptr inbounds [14 x i16], ptr %11, i64 0, i64 %185
  %187 = load i16, ptr %186, align 2, !tbaa !37
  %188 = add i16 %187, 1
  store i16 %188, ptr %186, align 2, !tbaa !37
  %189 = icmp eq i64 %185, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %181
  %191 = zext i16 %187 to i64
  %192 = sub nsw i64 64, %185
  %193 = shl i64 %191, %192
  %194 = or i64 %193, %184
  store i64 %194, ptr %183, align 8, !tbaa !14
  br label %195

195:                                              ; preds = %181, %190
  %196 = add nuw nsw i64 %182, 1
  %197 = icmp eq i64 %196, %162
  br i1 %197, label %198, label %181, !llvm.loop !41

198:                                              ; preds = %195, %160
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #12
  br label %199

199:                                              ; preds = %21, %15, %5, %198
  %200 = phi i64 [ %13, %198 ], [ %13, %5 ], [ -44, %15 ], [ -48, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #12
  ret i64 %200
}

declare i64 @HUF_readStats(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @HUF_getNbBitsFromCTable(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 8
  %6 = and i32 %5, 255
  %7 = icmp ult i32 %6, %1
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds i64, ptr %0, i64 1
  %10 = zext nneg i32 %1 to i64
  %11 = getelementptr inbounds i64, ptr %9, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !14
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 255
  br label %15

15:                                               ; preds = %2, %8
  %16 = phi i32 [ %14, %8 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_buildCTable_wksp(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #2 {
  %7 = alloca [13 x i16], align 16
  %8 = alloca [13 x i16], align 16
  %9 = alloca [14 x i32], align 16
  %10 = ptrtoint ptr %4 to i64
  %11 = sub i64 0, %10
  %12 = and i64 %11, 3
  %13 = icmp ugt i64 %12, %5
  %14 = getelementptr inbounds i8, ptr %4, i64 %12
  %15 = tail call i64 @llvm.usub.sat.i64(i64 %5, i64 %12)
  %16 = select i1 %13, ptr null, ptr %14
  %17 = getelementptr inbounds %struct.nodeElt_s, ptr %16, i64 1
  %18 = icmp ult i64 %15, 4864
  br i1 %18, label %725, label %19

19:                                               ; preds = %6
  %20 = icmp ugt i32 %2, 255
  br i1 %20, label %725, label %21

21:                                               ; preds = %19
  %22 = icmp eq i32 %3, 0
  %23 = getelementptr inbounds %struct.HUF_buildCTable_wksp_tables, ptr %16, i64 0, i32 1
  %24 = add nuw nsw i32 %2, 1
  %25 = zext nneg i32 %24 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4864) %16, i8 0, i64 4864, i1 false)
  %26 = and i64 %25, 1
  %27 = icmp eq i32 %2, 0
  br i1 %27, label %57, label %28

28:                                               ; preds = %21
  %29 = and i64 %25, 510
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i64 [ 0, %28 ], [ %54, %30 ]
  %32 = phi i64 [ 0, %28 ], [ %55, %30 ]
  %33 = getelementptr inbounds i32, ptr %1, i64 %31
  %34 = load i32, ptr %33, align 4, !tbaa !19
  %35 = icmp ult i32 %34, 165
  %36 = tail call i32 @llvm.ctlz.i32(i32 %34, i1 true), !range !42
  %37 = sub nuw nsw i32 189, %36
  %38 = select i1 %35, i32 %34, i32 %37
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds %struct.rankPos, ptr %23, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !43
  %42 = add i16 %41, 1
  store i16 %42, ptr %40, align 2, !tbaa !43
  %43 = or disjoint i64 %31, 1
  %44 = getelementptr inbounds i32, ptr %1, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !19
  %46 = icmp ult i32 %45, 165
  %47 = tail call i32 @llvm.ctlz.i32(i32 %45, i1 true), !range !42
  %48 = sub nuw nsw i32 189, %47
  %49 = select i1 %46, i32 %45, i32 %48
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds %struct.rankPos, ptr %23, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !43
  %53 = add i16 %52, 1
  store i16 %53, ptr %51, align 2, !tbaa !43
  %54 = add nuw nsw i64 %31, 2
  %55 = add i64 %32, 2
  %56 = icmp eq i64 %55, %29
  br i1 %56, label %57, label %30, !llvm.loop !45

57:                                               ; preds = %30, %21
  %58 = phi i64 [ 0, %21 ], [ %54, %30 ]
  %59 = icmp eq i64 %26, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds i32, ptr %1, i64 %58
  %62 = load i32, ptr %61, align 4, !tbaa !19
  %63 = icmp ult i32 %62, 165
  %64 = tail call i32 @llvm.ctlz.i32(i32 %62, i1 true), !range !42
  %65 = sub nuw nsw i32 189, %64
  %66 = select i1 %63, i32 %62, i32 %65
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds %struct.rankPos, ptr %23, i64 %67
  %69 = load i16, ptr %68, align 2, !tbaa !43
  %70 = add i16 %69, 1
  store i16 %70, ptr %68, align 2, !tbaa !43
  br label %71

71:                                               ; preds = %57, %60
  %72 = getelementptr inbounds %struct.HUF_buildCTable_wksp_tables, ptr %16, i64 0, i32 1, i64 191
  %73 = load i16, ptr %72, align 2, !tbaa !43
  br label %76

74:                                               ; preds = %76
  %75 = getelementptr %struct.HUF_buildCTable_wksp_tables, ptr %16, i64 0, i32 1, i64 1, i32 1
  br label %91

76:                                               ; preds = %85, %71
  %77 = phi i16 [ %73, %71 ], [ %89, %85 ]
  %78 = phi i64 [ 191, %71 ], [ %86, %85 ]
  %79 = add nsw i64 %78, -1
  %80 = getelementptr inbounds %struct.rankPos, ptr %23, i64 %79
  %81 = load i16, ptr %80, align 2, !tbaa !43
  %82 = add i16 %81, %77
  store i16 %82, ptr %80, align 2, !tbaa !43
  %83 = getelementptr inbounds %struct.rankPos, ptr %23, i64 %79, i32 1
  store i16 %82, ptr %83, align 2, !tbaa !46
  %84 = icmp eq i64 %79, 0
  br i1 %84, label %74, label %85, !llvm.loop !47

85:                                               ; preds = %76
  %86 = add nsw i64 %78, -2
  %87 = getelementptr inbounds %struct.rankPos, ptr %23, i64 %86
  %88 = load i16, ptr %87, align 2, !tbaa !43
  %89 = add i16 %88, %82
  store i16 %89, ptr %87, align 2, !tbaa !43
  %90 = getelementptr inbounds %struct.rankPos, ptr %23, i64 %86, i32 1
  store i16 %89, ptr %90, align 2, !tbaa !46
  br label %76

91:                                               ; preds = %91, %74
  %92 = phi i64 [ 0, %74 ], [ %107, %91 ]
  %93 = getelementptr inbounds i32, ptr %1, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !19
  %95 = icmp ult i32 %94, 165
  %96 = tail call i32 @llvm.ctlz.i32(i32 %94, i1 true), !range !42
  %97 = sub nuw nsw i32 189, %96
  %98 = select i1 %95, i32 %94, i32 %97
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr %struct.rankPos, ptr %75, i64 %99
  %101 = load i16, ptr %100, align 2, !tbaa !46
  %102 = add i16 %101, 1
  store i16 %102, ptr %100, align 2, !tbaa !46
  %103 = zext i16 %101 to i64
  %104 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %103
  store i32 %94, ptr %104, align 4, !tbaa !48
  %105 = trunc i64 %92 to i8
  %106 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %103, i32 2
  store i8 %105, ptr %106, align 2, !tbaa !50
  %107 = add nuw nsw i64 %92, 1
  %108 = icmp eq i64 %107, %25
  br i1 %108, label %109, label %91, !llvm.loop !51

109:                                              ; preds = %91, %123
  %110 = phi i64 [ %124, %123 ], [ 165, %91 ]
  %111 = getelementptr inbounds %struct.rankPos, ptr %23, i64 %110
  %112 = getelementptr inbounds %struct.rankPos, ptr %23, i64 %110, i32 1
  %113 = load i16, ptr %112, align 2, !tbaa !46
  %114 = zext i16 %113 to i32
  %115 = load i16, ptr %111, align 2, !tbaa !43
  %116 = zext i16 %115 to i32
  %117 = sub nsw i32 %114, %116
  %118 = icmp sgt i32 %117, 1
  br i1 %118, label %119, label %123

119:                                              ; preds = %109
  %120 = add nsw i32 %117, -1
  %121 = zext i16 %115 to i64
  %122 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %121
  tail call fastcc void @HUF_simpleQuickSort(ptr noundef nonnull %122, i32 noundef 0, i32 noundef %120)
  br label %123

123:                                              ; preds = %119, %109
  %124 = add nuw nsw i64 %110, 1
  %125 = icmp eq i64 %124, 191
  br i1 %125, label %126, label %109, !llvm.loop !52

126:                                              ; preds = %123
  %127 = select i1 %22, i32 11, i32 %3
  %128 = zext nneg i32 %2 to i64
  %129 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !48
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %126, %137
  %133 = phi i32 [ %138, %137 ], [ %2, %126 ]
  %134 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %133, i32 -1)
  %135 = extractvalue { i32, i1 } %134, 1, !nosanitize !53
  br i1 %135, label %136, label %137, !nosanitize !53

136:                                              ; preds = %132, %246, %221, %271, %155, %150
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !53
  unreachable, !nosanitize !53

137:                                              ; preds = %132
  %138 = extractvalue { i32, i1 } %134, 0, !nosanitize !53
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !48
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %132, label %143, !llvm.loop !54

143:                                              ; preds = %137, %126
  %144 = phi i32 [ %2, %126 ], [ %138, %137 ]
  %145 = phi i64 [ %128, %126 ], [ %139, %137 ]
  %146 = phi i32 [ %130, %126 ], [ %141, %137 ]
  %147 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %144, i32 256), !nosanitize !53
  %148 = extractvalue { i32, i1 } %147, 1, !nosanitize !53
  br i1 %148, label %149, label %150, !nosanitize !53

149:                                              ; preds = %251, %229, %306, %143
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !53
  unreachable, !nosanitize !53

150:                                              ; preds = %143
  %151 = extractvalue { i32, i1 } %147, 0, !nosanitize !53
  %152 = add nsw i32 %151, -1
  %153 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %144, i32 -1)
  %154 = extractvalue { i32, i1 } %153, 1, !nosanitize !53
  br i1 %154, label %136, label %155, !nosanitize !53

155:                                              ; preds = %150
  %156 = extractvalue { i32, i1 } %153, 0, !nosanitize !53
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !48
  %160 = add i32 %159, %146
  %161 = getelementptr inbounds %struct.nodeElt_s, ptr %16, i64 257
  store i32 %160, ptr %161, align 4, !tbaa !48
  %162 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %157, i32 1
  store i16 256, ptr %162, align 4, !tbaa !55
  %163 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %145, i32 1
  store i16 256, ptr %163, align 4, !tbaa !55
  %164 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %144, i32 -2)
  %165 = extractvalue { i32, i1 } %164, 0, !nosanitize !53
  %166 = extractvalue { i32, i1 } %164, 1, !nosanitize !53
  br i1 %166, label %136, label %167, !nosanitize !53

167:                                              ; preds = %155
  %168 = icmp sgt i32 %151, 257
  br i1 %168, label %170, label %169

169:                                              ; preds = %167
  store i32 -2147483648, ptr %16, align 4, !tbaa !48
  br label %271

170:                                              ; preds = %167
  %171 = zext nneg i32 %151 to i64
  %172 = add nsw i64 %171, -257
  %173 = add nsw i64 %171, -258
  %174 = and i64 %172, 7
  %175 = icmp ult i64 %173, 7
  br i1 %175, label %199, label %176

176:                                              ; preds = %170
  %177 = and i64 %172, -8
  %178 = getelementptr %struct.nodeElt_s, ptr %17, i64 1
  %179 = getelementptr %struct.nodeElt_s, ptr %17, i64 2
  %180 = getelementptr %struct.nodeElt_s, ptr %17, i64 3
  %181 = getelementptr %struct.nodeElt_s, ptr %17, i64 4
  %182 = getelementptr %struct.nodeElt_s, ptr %17, i64 5
  %183 = getelementptr %struct.nodeElt_s, ptr %17, i64 6
  %184 = getelementptr %struct.nodeElt_s, ptr %17, i64 7
  br label %185

185:                                              ; preds = %185, %176
  %186 = phi i64 [ 257, %176 ], [ %196, %185 ]
  %187 = phi i64 [ 0, %176 ], [ %197, %185 ]
  %188 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %186
  store i32 1073741824, ptr %188, align 4, !tbaa !48
  %189 = getelementptr %struct.nodeElt_s, ptr %178, i64 %186
  store i32 1073741824, ptr %189, align 4, !tbaa !48
  %190 = getelementptr %struct.nodeElt_s, ptr %179, i64 %186
  store i32 1073741824, ptr %190, align 4, !tbaa !48
  %191 = getelementptr %struct.nodeElt_s, ptr %180, i64 %186
  store i32 1073741824, ptr %191, align 4, !tbaa !48
  %192 = getelementptr %struct.nodeElt_s, ptr %181, i64 %186
  store i32 1073741824, ptr %192, align 4, !tbaa !48
  %193 = getelementptr %struct.nodeElt_s, ptr %182, i64 %186
  store i32 1073741824, ptr %193, align 4, !tbaa !48
  %194 = getelementptr %struct.nodeElt_s, ptr %183, i64 %186
  store i32 1073741824, ptr %194, align 4, !tbaa !48
  %195 = getelementptr %struct.nodeElt_s, ptr %184, i64 %186
  store i32 1073741824, ptr %195, align 4, !tbaa !48
  %196 = add nuw nsw i64 %186, 8
  %197 = add i64 %187, 8
  %198 = icmp eq i64 %197, %177
  br i1 %198, label %199, label %185, !llvm.loop !56

199:                                              ; preds = %185, %170
  %200 = phi i64 [ 257, %170 ], [ %196, %185 ]
  %201 = icmp eq i64 %174, 0
  br i1 %201, label %209, label %202

202:                                              ; preds = %199, %202
  %203 = phi i64 [ %206, %202 ], [ %200, %199 ]
  %204 = phi i64 [ %207, %202 ], [ 0, %199 ]
  %205 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %203
  store i32 1073741824, ptr %205, align 4, !tbaa !48
  %206 = add nuw nsw i64 %203, 1
  %207 = add i64 %204, 1
  %208 = icmp eq i64 %207, %174
  br i1 %208, label %209, label %202, !llvm.loop !57

209:                                              ; preds = %202, %199
  store i32 -2147483648, ptr %16, align 4, !tbaa !48
  br label %210

210:                                              ; preds = %256, %209
  %211 = phi i64 [ 257, %209 ], [ %269, %256 ]
  %212 = phi i32 [ %165, %209 ], [ %260, %256 ]
  %213 = phi i32 [ 256, %209 ], [ %259, %256 ]
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %214
  %216 = load i32, ptr %215, align 4, !tbaa !48
  %217 = sext i32 %213 to i64
  %218 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !48
  %220 = icmp ult i32 %216, %219
  br i1 %220, label %221, label %229

221:                                              ; preds = %210
  %222 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %212, i32 -1)
  %223 = extractvalue { i32, i1 } %222, 1, !nosanitize !53
  br i1 %223, label %136, label %224, !nosanitize !53

224:                                              ; preds = %221
  %225 = extractvalue { i32, i1 } %222, 0, !nosanitize !53
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %226
  %228 = load i32, ptr %227, align 4, !tbaa !48
  br label %237

229:                                              ; preds = %210
  %230 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %213, i32 1), !nosanitize !53
  %231 = extractvalue { i32, i1 } %230, 1, !nosanitize !53
  br i1 %231, label %149, label %232, !nosanitize !53

232:                                              ; preds = %229
  %233 = extractvalue { i32, i1 } %230, 0, !nosanitize !53
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !48
  br label %237

237:                                              ; preds = %232, %224
  %238 = phi i32 [ %236, %232 ], [ %219, %224 ]
  %239 = phi i64 [ %234, %232 ], [ %217, %224 ]
  %240 = phi i32 [ %216, %232 ], [ %228, %224 ]
  %241 = phi i64 [ %214, %232 ], [ %226, %224 ]
  %242 = phi i32 [ %233, %232 ], [ %213, %224 ]
  %243 = phi i32 [ %212, %232 ], [ %225, %224 ]
  %244 = phi i32 [ %213, %232 ], [ %212, %224 ]
  %245 = icmp ult i32 %240, %238
  br i1 %245, label %246, label %251

246:                                              ; preds = %237
  %247 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %243, i32 -1)
  %248 = extractvalue { i32, i1 } %247, 1, !nosanitize !53
  br i1 %248, label %136, label %249, !nosanitize !53

249:                                              ; preds = %246
  %250 = extractvalue { i32, i1 } %247, 0, !nosanitize !53
  br label %256

251:                                              ; preds = %237
  %252 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %242, i32 1), !nosanitize !53
  %253 = extractvalue { i32, i1 } %252, 1, !nosanitize !53
  br i1 %253, label %149, label %254, !nosanitize !53

254:                                              ; preds = %251
  %255 = extractvalue { i32, i1 } %252, 0, !nosanitize !53
  br label %256

256:                                              ; preds = %254, %249
  %257 = phi i32 [ %238, %254 ], [ %240, %249 ]
  %258 = phi i64 [ %239, %254 ], [ %241, %249 ]
  %259 = phi i32 [ %255, %254 ], [ %242, %249 ]
  %260 = phi i32 [ %243, %254 ], [ %250, %249 ]
  %261 = sext i32 %244 to i64
  %262 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %261
  %263 = load i32, ptr %262, align 4, !tbaa !48
  %264 = add i32 %263, %257
  %265 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %211
  store i32 %264, ptr %265, align 4, !tbaa !48
  %266 = trunc i64 %211 to i16
  %267 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %258, i32 1
  store i16 %266, ptr %267, align 4, !tbaa !55
  %268 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %261, i32 1
  store i16 %266, ptr %268, align 4, !tbaa !55
  %269 = add nuw nsw i64 %211, 1
  %270 = icmp eq i64 %269, %171
  br i1 %270, label %271, label %210, !llvm.loop !58

271:                                              ; preds = %256, %169
  %272 = sext i32 %152 to i64
  %273 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %272, i32 3
  store i8 0, ptr %273, align 1, !tbaa !59
  %274 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %151, i32 -2)
  %275 = extractvalue { i32, i1 } %274, 1, !nosanitize !53
  br i1 %275, label %136, label %276, !nosanitize !53

276:                                              ; preds = %271
  %277 = extractvalue { i32, i1 } %274, 0
  %278 = icmp sgt i32 %277, 255
  br i1 %278, label %279, label %281

279:                                              ; preds = %276
  %280 = zext nneg i32 %277 to i64
  br label %285

281:                                              ; preds = %285, %276
  %282 = icmp slt i32 %144, 0
  br i1 %282, label %320, label %283

283:                                              ; preds = %281
  %284 = zext nneg i32 %144 to i64
  br label %296

285:                                              ; preds = %285, %279
  %286 = phi i64 [ %280, %279 ], [ %294, %285 ]
  %287 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %286, i32 1
  %288 = load i16, ptr %287, align 4, !tbaa !55
  %289 = zext i16 %288 to i64
  %290 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %289, i32 3
  %291 = load i8, ptr %290, align 1, !tbaa !59
  %292 = add i8 %291, 1
  %293 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %286, i32 3
  store i8 %292, ptr %293, align 1, !tbaa !59
  %294 = add nsw i64 %286, -1
  %295 = icmp ugt i64 %286, 256
  br i1 %295, label %285, label %281, !llvm.loop !60

296:                                              ; preds = %316, %283
  %297 = phi i64 [ 0, %283 ], [ %317, %316 ]
  %298 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %297, i32 1
  %299 = load i16, ptr %298, align 4, !tbaa !55
  %300 = zext i16 %299 to i64
  %301 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %300, i32 3
  %302 = load i8, ptr %301, align 1, !tbaa !59
  %303 = add i8 %302, 1
  %304 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %297, i32 3
  store i8 %303, ptr %304, align 1, !tbaa !59
  %305 = icmp ult i64 %297, %284
  br i1 %305, label %306, label %320, !llvm.loop !61

306:                                              ; preds = %296
  %307 = or disjoint i64 %297, 1
  %308 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %307, i32 1
  %309 = load i16, ptr %308, align 4, !tbaa !55
  %310 = zext i16 %309 to i64
  %311 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %310, i32 3
  %312 = load i8, ptr %311, align 1, !tbaa !59
  %313 = add i8 %312, 1
  %314 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %307, i32 3
  store i8 %313, ptr %314, align 1, !tbaa !59
  %315 = icmp eq i64 %307, 2147483647
  br i1 %315, label %149, label %316, !nosanitize !53

316:                                              ; preds = %306
  %317 = add nuw nsw i64 %297, 2
  %318 = trunc i64 %317 to i32
  %319 = icmp slt i32 %144, %318
  br i1 %319, label %320, label %296, !llvm.loop !61

320:                                              ; preds = %296, %316, %281
  %321 = zext i32 %144 to i64
  %322 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %321, i32 3
  %323 = load i8, ptr %322, align 1, !tbaa !59
  %324 = zext i8 %323 to i32
  %325 = icmp ult i32 %127, %324
  br i1 %325, label %326, label %559

326:                                              ; preds = %320
  %327 = sub nsw i32 %324, %127
  %328 = shl nuw i32 1, %327
  %329 = sext i32 %144 to i64
  %330 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %329, i32 3
  %331 = load i8, ptr %330, align 1, !tbaa !59
  %332 = zext i8 %331 to i32
  %333 = icmp ult i32 %127, %332
  br i1 %333, label %334, label %336

334:                                              ; preds = %326
  %335 = trunc i32 %127 to i8
  br label %341

336:                                              ; preds = %349, %326
  %337 = phi i32 [ %332, %326 ], [ %358, %349 ]
  %338 = phi i32 [ %144, %326 ], [ %350, %349 ]
  %339 = phi i32 [ 0, %326 ], [ %354, %349 ]
  %340 = icmp eq i32 %127, %337
  br i1 %340, label %360, label %371

341:                                              ; preds = %349, %334
  %342 = phi i32 [ %332, %334 ], [ %358, %349 ]
  %343 = phi ptr [ %330, %334 ], [ %356, %349 ]
  %344 = phi i32 [ 0, %334 ], [ %354, %349 ]
  %345 = phi i32 [ %144, %334 ], [ %350, %349 ]
  store i8 %335, ptr %343, align 1, !tbaa !59
  %346 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %345, i32 -1)
  %347 = extractvalue { i32, i1 } %346, 1, !nosanitize !53
  br i1 %347, label %348, label %349, !nosanitize !53

348:                                              ; preds = %341, %360, %478, %521
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !53
  unreachable, !nosanitize !53

349:                                              ; preds = %341
  %350 = extractvalue { i32, i1 } %346, 0, !nosanitize !53
  %351 = sub nsw i32 %324, %342
  %352 = shl nsw i32 -1, %351
  %353 = add i32 %344, %328
  %354 = add i32 %353, %352
  %355 = sext i32 %350 to i64
  %356 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %355, i32 3
  %357 = load i8, ptr %356, align 1, !tbaa !59
  %358 = zext i8 %357 to i32
  %359 = icmp ult i32 %127, %358
  br i1 %359, label %341, label %336, !llvm.loop !62

360:                                              ; preds = %336, %364
  %361 = phi i32 [ %365, %364 ], [ %338, %336 ]
  %362 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %361, i32 -1)
  %363 = extractvalue { i32, i1 } %362, 1, !nosanitize !53
  br i1 %363, label %348, label %364, !nosanitize !53

364:                                              ; preds = %360
  %365 = extractvalue { i32, i1 } %362, 0, !nosanitize !53
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %366, i32 3
  %368 = load i8, ptr %367, align 1, !tbaa !59
  %369 = zext i8 %368 to i32
  %370 = icmp eq i32 %127, %369
  br i1 %370, label %360, label %371, !llvm.loop !63

371:                                              ; preds = %364, %336
  %372 = phi i32 [ %338, %336 ], [ %365, %364 ]
  %373 = ashr i32 %339, %327
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %9, i8 -16, i64 56, i1 false)
  %374 = icmp sgt i32 %372, -1
  br i1 %374, label %375, label %395

375:                                              ; preds = %371
  %376 = zext nneg i32 %372 to i64
  %377 = and i64 %376, 1
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %379, label %391

379:                                              ; preds = %375
  %380 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %376, i32 3
  %381 = load i8, ptr %380, align 1, !tbaa !59
  %382 = zext i8 %381 to i32
  %383 = icmp ugt i32 %127, %382
  br i1 %383, label %384, label %388

384:                                              ; preds = %379
  %385 = sub nsw i32 %127, %382
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds [14 x i32], ptr %9, i64 0, i64 %386
  store i32 %372, ptr %387, align 4, !tbaa !19
  br label %388

388:                                              ; preds = %384, %379
  %389 = phi i32 [ %127, %379 ], [ %382, %384 ]
  %390 = add nsw i64 %376, -1
  br label %391

391:                                              ; preds = %388, %375
  %392 = phi i64 [ %376, %375 ], [ %390, %388 ]
  %393 = phi i32 [ %127, %375 ], [ %389, %388 ]
  %394 = icmp eq i32 %372, 0
  br i1 %394, label %395, label %397

395:                                              ; preds = %391, %421, %371
  %396 = icmp sgt i32 %373, 0
  br i1 %396, label %431, label %425

397:                                              ; preds = %391, %421
  %398 = phi i64 [ %423, %421 ], [ %392, %391 ]
  %399 = phi i32 [ %422, %421 ], [ %393, %391 ]
  %400 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %398, i32 3
  %401 = load i8, ptr %400, align 1, !tbaa !59
  %402 = zext i8 %401 to i32
  %403 = icmp ugt i32 %399, %402
  br i1 %403, label %404, label %409

404:                                              ; preds = %397
  %405 = sub nsw i32 %127, %402
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds [14 x i32], ptr %9, i64 0, i64 %406
  %408 = trunc i64 %398 to i32
  store i32 %408, ptr %407, align 4, !tbaa !19
  br label %409

409:                                              ; preds = %404, %397
  %410 = phi i32 [ %399, %397 ], [ %402, %404 ]
  %411 = getelementptr inbounds %struct.nodeElt_s, ptr %16, i64 %398, i32 3
  %412 = load i8, ptr %411, align 1, !tbaa !59
  %413 = zext i8 %412 to i32
  %414 = icmp ugt i32 %410, %413
  br i1 %414, label %415, label %421

415:                                              ; preds = %409
  %416 = sub nsw i32 %127, %413
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds [14 x i32], ptr %9, i64 0, i64 %417
  %419 = trunc i64 %398 to i32
  %420 = add i32 %419, -1
  store i32 %420, ptr %418, align 4, !tbaa !19
  br label %421

421:                                              ; preds = %415, %409
  %422 = phi i32 [ %410, %409 ], [ %413, %415 ]
  %423 = add nsw i64 %398, -2
  %424 = icmp sgt i64 %398, 1
  br i1 %424, label %397, label %395, !llvm.loop !64

425:                                              ; preds = %508, %395
  %426 = phi i32 [ %373, %395 ], [ %483, %508 ]
  %427 = icmp slt i32 %426, 0
  br i1 %427, label %428, label %558

428:                                              ; preds = %425
  %429 = getelementptr inbounds [14 x i32], ptr %9, i64 0, i64 1
  %430 = load i32, ptr %429, align 4, !tbaa !19
  br label %545

431:                                              ; preds = %395, %508
  %432 = phi i32 [ %483, %508 ], [ %373, %395 ]
  %433 = tail call i32 @llvm.ctlz.i32(i32 %432, i1 true), !range !42
  %434 = icmp eq i32 %433, 31
  br i1 %434, label %464, label %435

435:                                              ; preds = %431
  %436 = sub nuw nsw i32 32, %433
  %437 = zext nneg i32 %436 to i64
  br label %438

438:                                              ; preds = %458, %435
  %439 = phi i64 [ %437, %435 ], [ %442, %458 ]
  %440 = getelementptr inbounds [14 x i32], ptr %9, i64 0, i64 %439
  %441 = load i32, ptr %440, align 4, !tbaa !19
  %442 = add nsw i64 %439, -1
  %443 = and i64 %442, 4294967295
  %444 = getelementptr inbounds [14 x i32], ptr %9, i64 0, i64 %443
  %445 = load i32, ptr %444, align 4, !tbaa !19
  %446 = icmp eq i32 %441, -252645136
  br i1 %446, label %458, label %447

447:                                              ; preds = %438
  %448 = icmp eq i32 %445, -252645136
  br i1 %448, label %461, label %449

449:                                              ; preds = %447
  %450 = zext i32 %441 to i64
  %451 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %450
  %452 = load i32, ptr %451, align 4, !tbaa !48
  %453 = zext i32 %445 to i64
  %454 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %453
  %455 = load i32, ptr %454, align 4, !tbaa !48
  %456 = shl i32 %455, 1
  %457 = icmp ugt i32 %452, %456
  br i1 %457, label %458, label %461

458:                                              ; preds = %449, %438
  %459 = and i64 %442, 4294967294
  %460 = icmp eq i64 %459, 0
  br i1 %460, label %464, label %438, !llvm.loop !65

461:                                              ; preds = %449, %447
  %462 = trunc i64 %439 to i32
  %463 = icmp ult i32 %462, 13
  br i1 %463, label %464, label %478

464:                                              ; preds = %458, %461, %431
  %465 = phi i64 [ %439, %461 ], [ 1, %431 ], [ 1, %458 ]
  %466 = and i64 %465, 4294967295
  br label %467

467:                                              ; preds = %472, %464
  %468 = phi i64 [ %466, %464 ], [ %473, %472 ]
  %469 = getelementptr inbounds [14 x i32], ptr %9, i64 0, i64 %468
  %470 = load i32, ptr %469, align 4, !tbaa !19
  %471 = icmp eq i32 %470, -252645136
  br i1 %471, label %472, label %476

472:                                              ; preds = %467
  %473 = add nuw nsw i64 %468, 1
  %474 = and i64 %473, 4294967295
  %475 = icmp eq i64 %474, 13
  br i1 %475, label %478, label %467, !llvm.loop !66

476:                                              ; preds = %467
  %477 = trunc i64 %468 to i32
  br label %478

478:                                              ; preds = %472, %476, %461
  %479 = phi i32 [ %462, %461 ], [ %477, %476 ], [ 13, %472 ]
  %480 = add nsw i32 %479, -1
  %481 = shl nuw i32 1, %480
  %482 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %432, i32 %481), !nosanitize !53
  %483 = extractvalue { i32, i1 } %482, 0, !nosanitize !53
  %484 = extractvalue { i32, i1 } %482, 1, !nosanitize !53
  br i1 %484, label %348, label %485, !nosanitize !53

485:                                              ; preds = %478
  %486 = zext nneg i32 %479 to i64
  %487 = getelementptr inbounds [14 x i32], ptr %9, i64 0, i64 %486
  %488 = load i32, ptr %487, align 4, !tbaa !19
  %489 = zext i32 %488 to i64
  %490 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %489, i32 3
  %491 = load i8, ptr %490, align 1, !tbaa !59
  %492 = add i8 %491, 1
  store i8 %492, ptr %490, align 1, !tbaa !59
  %493 = zext nneg i32 %480 to i64
  %494 = getelementptr inbounds [14 x i32], ptr %9, i64 0, i64 %493
  %495 = load i32, ptr %494, align 4, !tbaa !19
  %496 = icmp eq i32 %495, -252645136
  %497 = select i1 %496, i32 %488, i32 %495
  store i32 %497, ptr %494, align 4
  %498 = icmp eq i32 %488, 0
  br i1 %498, label %508, label %499

499:                                              ; preds = %485
  %500 = add i32 %488, -1
  %501 = zext i32 %500 to i64
  %502 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %501, i32 3
  %503 = load i8, ptr %502, align 1, !tbaa !59
  %504 = zext i8 %503 to i32
  %505 = sub nsw i32 %127, %479
  %506 = icmp eq i32 %505, %504
  %507 = select i1 %506, i32 %500, i32 -252645136
  br label %508

508:                                              ; preds = %499, %485
  %509 = phi i32 [ %507, %499 ], [ -252645136, %485 ]
  store i32 %509, ptr %487, align 4
  %510 = icmp sgt i32 %483, 0
  br i1 %510, label %431, label %425, !llvm.loop !67

511:                                              ; preds = %550, %545
  %512 = phi i32 [ %546, %545 ], [ %551, %550 ]
  %513 = phi i32 [ %547, %545 ], [ %556, %550 ]
  %514 = icmp eq i32 %512, -252645136
  br i1 %514, label %515, label %550

515:                                              ; preds = %511
  %516 = sext i32 %548 to i64
  %517 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %516, i32 3
  %518 = load i8, ptr %517, align 1, !tbaa !59
  %519 = zext i8 %518 to i32
  %520 = icmp eq i32 %127, %519
  br i1 %520, label %521, label %532

521:                                              ; preds = %515, %525
  %522 = phi i32 [ %526, %525 ], [ %548, %515 ]
  %523 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %522, i32 -1)
  %524 = extractvalue { i32, i1 } %523, 1, !nosanitize !53
  br i1 %524, label %348, label %525, !nosanitize !53

525:                                              ; preds = %521
  %526 = extractvalue { i32, i1 } %523, 0, !nosanitize !53
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %527, i32 3
  %529 = load i8, ptr %528, align 1, !tbaa !59
  %530 = zext i8 %529 to i32
  %531 = icmp eq i32 %127, %530
  br i1 %531, label %521, label %532, !llvm.loop !68

532:                                              ; preds = %525, %515
  %533 = phi i32 [ %548, %515 ], [ %526, %525 ]
  %534 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %533, i32 1), !nosanitize !53
  %535 = extractvalue { i32, i1 } %534, 1, !nosanitize !53
  br i1 %535, label %536, label %537, !nosanitize !53

536:                                              ; preds = %532
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !53
  unreachable, !nosanitize !53

537:                                              ; preds = %532
  %538 = extractvalue { i32, i1 } %534, 0, !nosanitize !53
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %539, i32 3
  %541 = load i8, ptr %540, align 1, !tbaa !59
  %542 = add i8 %541, -1
  store i8 %542, ptr %540, align 1, !tbaa !59
  %543 = add nsw i32 %513, 1
  %544 = icmp slt i32 %513, -1
  br i1 %544, label %545, label %558, !llvm.loop !69

545:                                              ; preds = %537, %428
  %546 = phi i32 [ %430, %428 ], [ %538, %537 ]
  %547 = phi i32 [ %426, %428 ], [ %543, %537 ]
  %548 = phi i32 [ %372, %428 ], [ %533, %537 ]
  %549 = tail call i32 @llvm.smax.i32(i32 %547, i32 -1)
  br label %511

550:                                              ; preds = %511
  %551 = add i32 %512, 1
  %552 = zext i32 %551 to i64
  %553 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %552, i32 3
  %554 = load i8, ptr %553, align 1, !tbaa !59
  %555 = add i8 %554, -1
  store i8 %555, ptr %553, align 1, !tbaa !59
  %556 = add i32 %513, 1
  %557 = icmp eq i32 %513, %549
  br i1 %557, label %558, label %511, !llvm.loop !69

558:                                              ; preds = %537, %550, %425
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #12
  br label %559

559:                                              ; preds = %320, %558
  %560 = phi i32 [ %127, %558 ], [ %324, %320 ]
  %561 = icmp ugt i32 %560, 12
  br i1 %561, label %725, label %562

562:                                              ; preds = %559
  %563 = getelementptr inbounds i64, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %7) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %7, i8 0, i64 26, i1 false)
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %8) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %8, i8 0, i64 26, i1 false)
  br i1 %282, label %566, label %564

564:                                              ; preds = %562
  %565 = zext nneg i32 %144 to i64
  br label %574

566:                                              ; preds = %574, %593, %562
  %567 = icmp eq i32 %560, 0
  br i1 %567, label %643, label %568

568:                                              ; preds = %566
  %569 = zext nneg i32 %560 to i64
  %570 = and i64 %569, 3
  %571 = icmp ult i32 %560, 4
  br i1 %571, label %627, label %572

572:                                              ; preds = %568
  %573 = and i64 %569, 12
  br label %597

574:                                              ; preds = %593, %564
  %575 = phi i64 [ 0, %564 ], [ %594, %593 ]
  %576 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %575, i32 3
  %577 = load i8, ptr %576, align 1, !tbaa !59
  %578 = zext i8 %577 to i64
  %579 = getelementptr inbounds [13 x i16], ptr %7, i64 0, i64 %578
  %580 = load i16, ptr %579, align 2, !tbaa !37
  %581 = add i16 %580, 1
  store i16 %581, ptr %579, align 2, !tbaa !37
  %582 = icmp ult i64 %575, %565
  br i1 %582, label %584, label %566, !llvm.loop !70

583:                                              ; preds = %584
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !53
  unreachable, !nosanitize !53

584:                                              ; preds = %574
  %585 = or disjoint i64 %575, 1
  %586 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %585, i32 3
  %587 = load i8, ptr %586, align 1, !tbaa !59
  %588 = zext i8 %587 to i64
  %589 = getelementptr inbounds [13 x i16], ptr %7, i64 0, i64 %588
  %590 = load i16, ptr %589, align 2, !tbaa !37
  %591 = add i16 %590, 1
  store i16 %591, ptr %589, align 2, !tbaa !37
  %592 = icmp eq i64 %585, 2147483647
  br i1 %592, label %583, label %593, !nosanitize !53

593:                                              ; preds = %584
  %594 = add nuw nsw i64 %575, 2
  %595 = trunc i64 %594 to i32
  %596 = icmp slt i32 %144, %595
  br i1 %596, label %566, label %574, !llvm.loop !70

597:                                              ; preds = %597, %572
  %598 = phi i64 [ %569, %572 ], [ %620, %597 ]
  %599 = phi i16 [ 0, %572 ], [ %624, %597 ]
  %600 = phi i64 [ 0, %572 ], [ %625, %597 ]
  %601 = getelementptr inbounds [13 x i16], ptr %8, i64 0, i64 %598
  store i16 %599, ptr %601, align 2, !tbaa !37
  %602 = add nsw i64 %598, -1
  %603 = getelementptr inbounds [13 x i16], ptr %7, i64 0, i64 %598
  %604 = load i16, ptr %603, align 2, !tbaa !37
  %605 = add i16 %604, %599
  %606 = lshr i16 %605, 1
  %607 = getelementptr inbounds [13 x i16], ptr %8, i64 0, i64 %602
  store i16 %606, ptr %607, align 2, !tbaa !37
  %608 = add nsw i64 %598, -2
  %609 = getelementptr inbounds [13 x i16], ptr %7, i64 0, i64 %602
  %610 = load i16, ptr %609, align 2, !tbaa !37
  %611 = add i16 %610, %606
  %612 = lshr i16 %611, 1
  %613 = getelementptr inbounds [13 x i16], ptr %8, i64 0, i64 %608
  store i16 %612, ptr %613, align 2, !tbaa !37
  %614 = add nsw i64 %598, -3
  %615 = getelementptr inbounds [13 x i16], ptr %7, i64 0, i64 %608
  %616 = load i16, ptr %615, align 2, !tbaa !37
  %617 = add i16 %616, %612
  %618 = lshr i16 %617, 1
  %619 = getelementptr inbounds [13 x i16], ptr %8, i64 0, i64 %614
  store i16 %618, ptr %619, align 2, !tbaa !37
  %620 = add nsw i64 %598, -4
  %621 = getelementptr inbounds [13 x i16], ptr %7, i64 0, i64 %614
  %622 = load i16, ptr %621, align 2, !tbaa !37
  %623 = add i16 %622, %618
  %624 = lshr i16 %623, 1
  %625 = add i64 %600, 4
  %626 = icmp eq i64 %625, %573
  br i1 %626, label %627, label %597, !llvm.loop !71

627:                                              ; preds = %597, %568
  %628 = phi i64 [ %569, %568 ], [ %620, %597 ]
  %629 = phi i16 [ 0, %568 ], [ %624, %597 ]
  %630 = icmp eq i64 %570, 0
  br i1 %630, label %643, label %631

631:                                              ; preds = %627, %631
  %632 = phi i64 [ %636, %631 ], [ %628, %627 ]
  %633 = phi i16 [ %640, %631 ], [ %629, %627 ]
  %634 = phi i64 [ %641, %631 ], [ 0, %627 ]
  %635 = getelementptr inbounds [13 x i16], ptr %8, i64 0, i64 %632
  store i16 %633, ptr %635, align 2, !tbaa !37
  %636 = add nsw i64 %632, -1
  %637 = getelementptr inbounds [13 x i16], ptr %7, i64 0, i64 %632
  %638 = load i16, ptr %637, align 2, !tbaa !37
  %639 = add i16 %638, %633
  %640 = lshr i16 %639, 1
  %641 = add i64 %634, 1
  %642 = icmp eq i64 %641, %570
  br i1 %642, label %643, label %631, !llvm.loop !72

643:                                              ; preds = %627, %631, %566
  %644 = and i64 %25, 3
  %645 = icmp ult i32 %2, 3
  br i1 %645, label %685, label %646

646:                                              ; preds = %643
  %647 = and i64 %25, 508
  br label %648

648:                                              ; preds = %648, %646
  %649 = phi i64 [ 0, %646 ], [ %682, %648 ]
  %650 = phi i64 [ 0, %646 ], [ %683, %648 ]
  %651 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %649, i32 2
  %652 = load i8, ptr %651, align 2, !tbaa !50
  %653 = zext i8 %652 to i64
  %654 = getelementptr inbounds i64, ptr %563, i64 %653
  %655 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %649, i32 3
  %656 = load i8, ptr %655, align 1, !tbaa !59
  %657 = zext i8 %656 to i64
  store i64 %657, ptr %654, align 8, !tbaa !14
  %658 = or disjoint i64 %649, 1
  %659 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %658, i32 2
  %660 = load i8, ptr %659, align 2, !tbaa !50
  %661 = zext i8 %660 to i64
  %662 = getelementptr inbounds i64, ptr %563, i64 %661
  %663 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %658, i32 3
  %664 = load i8, ptr %663, align 1, !tbaa !59
  %665 = zext i8 %664 to i64
  store i64 %665, ptr %662, align 8, !tbaa !14
  %666 = or disjoint i64 %649, 2
  %667 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %666, i32 2
  %668 = load i8, ptr %667, align 2, !tbaa !50
  %669 = zext i8 %668 to i64
  %670 = getelementptr inbounds i64, ptr %563, i64 %669
  %671 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %666, i32 3
  %672 = load i8, ptr %671, align 1, !tbaa !59
  %673 = zext i8 %672 to i64
  store i64 %673, ptr %670, align 8, !tbaa !14
  %674 = or disjoint i64 %649, 3
  %675 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %674, i32 2
  %676 = load i8, ptr %675, align 2, !tbaa !50
  %677 = zext i8 %676 to i64
  %678 = getelementptr inbounds i64, ptr %563, i64 %677
  %679 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %674, i32 3
  %680 = load i8, ptr %679, align 1, !tbaa !59
  %681 = zext i8 %680 to i64
  store i64 %681, ptr %678, align 8, !tbaa !14
  %682 = add nuw nsw i64 %649, 4
  %683 = add i64 %650, 4
  %684 = icmp eq i64 %683, %647
  br i1 %684, label %685, label %648, !llvm.loop !73

685:                                              ; preds = %648, %643
  %686 = phi i64 [ 0, %643 ], [ %682, %648 ]
  %687 = icmp eq i64 %644, 0
  br i1 %687, label %701, label %688

688:                                              ; preds = %685, %688
  %689 = phi i64 [ %698, %688 ], [ %686, %685 ]
  %690 = phi i64 [ %699, %688 ], [ 0, %685 ]
  %691 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %689, i32 2
  %692 = load i8, ptr %691, align 2, !tbaa !50
  %693 = zext i8 %692 to i64
  %694 = getelementptr inbounds i64, ptr %563, i64 %693
  %695 = getelementptr inbounds %struct.nodeElt_s, ptr %17, i64 %689, i32 3
  %696 = load i8, ptr %695, align 1, !tbaa !59
  %697 = zext i8 %696 to i64
  store i64 %697, ptr %694, align 8, !tbaa !14
  %698 = add nuw nsw i64 %689, 1
  %699 = add i64 %690, 1
  %700 = icmp eq i64 %699, %644
  br i1 %700, label %701, label %688, !llvm.loop !74

701:                                              ; preds = %688, %685
  br label %702

702:                                              ; preds = %701, %716
  %703 = phi i64 [ %717, %716 ], [ 0, %701 ]
  %704 = getelementptr inbounds i64, ptr %563, i64 %703
  %705 = load i64, ptr %704, align 8, !tbaa !14
  %706 = and i64 %705, 255
  %707 = getelementptr inbounds [13 x i16], ptr %8, i64 0, i64 %706
  %708 = load i16, ptr %707, align 2, !tbaa !37
  %709 = add i16 %708, 1
  store i16 %709, ptr %707, align 2, !tbaa !37
  %710 = icmp eq i64 %706, 0
  br i1 %710, label %716, label %711

711:                                              ; preds = %702
  %712 = zext i16 %708 to i64
  %713 = sub nsw i64 64, %706
  %714 = shl i64 %712, %713
  %715 = or i64 %714, %705
  store i64 %715, ptr %704, align 8, !tbaa !14
  br label %716

716:                                              ; preds = %711, %702
  %717 = add nuw nsw i64 %703, 1
  %718 = icmp eq i64 %717, %25
  br i1 %718, label %719, label %702, !llvm.loop !75

719:                                              ; preds = %716
  %720 = trunc i32 %560 to i8
  %721 = trunc i32 %2 to i8
  store i8 %720, ptr %0, align 8
  %722 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %721, ptr %722, align 1
  %723 = getelementptr inbounds i8, ptr %0, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %723, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %7) #12
  %724 = zext nneg i32 %560 to i64
  br label %725

725:                                              ; preds = %559, %19, %6, %719
  %726 = phi i64 [ %724, %719 ], [ -66, %6 ], [ -46, %19 ], [ -1, %559 ]
  ret i64 %726
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_estimateCompressedSize(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds i64, ptr %0, i64 1
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %39, label %6

6:                                                ; preds = %3
  %7 = zext nneg i32 %2 to i64
  br label %8

8:                                                ; preds = %24, %6
  %9 = phi i64 [ 0, %6 ], [ %28, %24 ]
  %10 = phi i64 [ 0, %6 ], [ %34, %24 ]
  %11 = getelementptr inbounds i64, ptr %4, i64 %9
  %12 = load i64, ptr %11, align 8, !tbaa !14
  %13 = and i64 %12, 255
  %14 = or disjoint i64 %9, 1
  %15 = getelementptr inbounds i32, ptr %1, i64 %9
  %16 = load i32, ptr %15, align 4, !tbaa !19
  %17 = zext i32 %16 to i64
  %18 = mul nuw nsw i64 %13, %17
  %19 = add i64 %18, %10
  %20 = icmp ult i64 %9, %7
  br i1 %20, label %22, label %36, !llvm.loop !76

21:                                               ; preds = %22
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !53
  unreachable, !nosanitize !53

22:                                               ; preds = %8
  %23 = icmp eq i64 %14, 2147483647
  br i1 %23, label %21, label %24, !nosanitize !53

24:                                               ; preds = %22
  %25 = getelementptr inbounds i64, ptr %4, i64 %14
  %26 = load i64, ptr %25, align 8, !tbaa !14
  %27 = and i64 %26, 255
  %28 = add nuw nsw i64 %9, 2
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds i32, ptr %1, i64 %14
  %31 = load i32, ptr %30, align 4, !tbaa !19
  %32 = zext i32 %31 to i64
  %33 = mul nuw nsw i64 %27, %32
  %34 = add i64 %33, %19
  %35 = icmp sgt i32 %29, %2
  br i1 %35, label %36, label %8, !llvm.loop !76

36:                                               ; preds = %24, %8
  %37 = phi i64 [ %19, %8 ], [ %34, %24 ]
  %38 = lshr i64 %37, 3
  br label %39

39:                                               ; preds = %36, %3
  %40 = phi i64 [ 0, %3 ], [ %38, %36 ]
  ret i64 %40
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @HUF_validateCTable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i32
  %6 = lshr i32 %5, 8
  %7 = getelementptr inbounds i64, ptr %0, i64 1
  %8 = and i32 %6, 255
  %9 = icmp ult i32 %8, %2
  br i1 %9, label %68, label %10

10:                                               ; preds = %3
  %11 = add nuw nsw i32 %2, 1
  %12 = zext nneg i32 %11 to i64
  %13 = icmp ult i32 %2, 3
  br i1 %13, label %46, label %14

14:                                               ; preds = %10
  %15 = and i64 %12, 2147483644
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %40, %16 ]
  %18 = phi <2 x i32> [ zeroinitializer, %14 ], [ %38, %16 ]
  %19 = phi <2 x i32> [ zeroinitializer, %14 ], [ %39, %16 ]
  %20 = getelementptr inbounds i32, ptr %1, i64 %17
  %21 = getelementptr inbounds i32, ptr %20, i64 2
  %22 = load <2 x i32>, ptr %20, align 4, !tbaa !19
  %23 = load <2 x i32>, ptr %21, align 4, !tbaa !19
  %24 = getelementptr inbounds i64, ptr %7, i64 %17
  %25 = getelementptr inbounds i64, ptr %24, i64 2
  %26 = load <2 x i64>, ptr %24, align 8, !tbaa !14
  %27 = load <2 x i64>, ptr %25, align 8, !tbaa !14
  %28 = and <2 x i64> %26, <i64 255, i64 255>
  %29 = and <2 x i64> %27, <i64 255, i64 255>
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
  %40 = add nuw i64 %17, 4
  %41 = icmp eq i64 %40, %15
  br i1 %41, label %42, label %16, !llvm.loop !77

42:                                               ; preds = %16
  %43 = or <2 x i32> %39, %38
  %44 = tail call i32 @llvm.vector.reduce.or.v2i32(<2 x i32> %43)
  %45 = icmp eq i64 %15, %12
  br i1 %45, label %64, label %46

46:                                               ; preds = %10, %42
  %47 = phi i64 [ 0, %10 ], [ %15, %42 ]
  %48 = phi i32 [ 0, %10 ], [ %44, %42 ]
  br label %49

49:                                               ; preds = %46, %49
  %50 = phi i64 [ %57, %49 ], [ %47, %46 ]
  %51 = phi i32 [ %62, %49 ], [ %48, %46 ]
  %52 = getelementptr inbounds i32, ptr %1, i64 %50
  %53 = load i32, ptr %52, align 4, !tbaa !19
  %54 = getelementptr inbounds i64, ptr %7, i64 %50
  %55 = load i64, ptr %54, align 8, !tbaa !14
  %56 = and i64 %55, 255
  %57 = add nuw nsw i64 %50, 1
  %58 = icmp ne i32 %53, 0
  %59 = icmp eq i64 %56, 0
  %60 = and i1 %58, %59
  %61 = zext i1 %60 to i32
  %62 = or i32 %51, %61
  %63 = icmp eq i64 %57, %12
  br i1 %63, label %64, label %49, !llvm.loop !78

64:                                               ; preds = %49, %42
  %65 = phi i32 [ %44, %42 ], [ %62, %49 ]
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  br label %68

68:                                               ; preds = %3, %64
  %69 = phi i32 [ %67, %64 ], [ 0, %3 ]
  ret i32 %69
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @HUF_compressBound(i64 noundef %0) local_unnamed_addr #9 {
  %2 = lshr i64 %0, 8
  %3 = add i64 %0, 137
  %4 = add i64 %3, %2
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_compress1X_usingCTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i32 noundef %5) unnamed_addr #2 {
  %7 = and i32 %5, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  br label %2534

11:                                               ; preds = %6
  %12 = load i64, ptr %4, align 8
  %13 = getelementptr inbounds i64, ptr %4, i64 1
  %14 = icmp ult i64 %1, 8
  br i1 %14, label %2534, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %0, i64 %1
  %17 = getelementptr inbounds i8, ptr %16, i64 -8
  %18 = icmp eq i64 %1, 8
  br i1 %18, label %2534, label %19

19:                                               ; preds = %15
  %20 = and i64 %12, 255
  %21 = mul i64 %20, %3
  %22 = lshr i64 %21, 3
  %23 = add nuw nsw i64 %22, 8
  %24 = icmp ugt i64 %23, %1
  %25 = and i64 %12, 252
  %26 = icmp ugt i64 %25, 11
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %28, label %304

28:                                               ; preds = %19
  %29 = trunc i64 %3 to i32
  %30 = srem i32 %29, 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %105

32:                                               ; preds = %28
  %33 = xor i32 %29, -2147483648
  %34 = add nsw i32 %30, -1
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %72, !nosanitize !53

36:                                               ; preds = %32
  %37 = and i32 %30, 1
  %38 = icmp eq i32 %34, 0
  br i1 %38, label %73, label %39

39:                                               ; preds = %36
  %40 = and i32 %30, 2147483646
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i32 [ %29, %39 ], [ %58, %41 ]
  %43 = phi i64 [ 0, %39 ], [ %68, %41 ]
  %44 = phi i64 [ 0, %39 ], [ %69, %41 ]
  %45 = phi i32 [ 0, %39 ], [ %70, %41 ]
  %46 = add i32 %42, -1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %2, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !5
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds i64, ptr %13, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !14
  %53 = and i64 %52, 255
  %54 = lshr i64 %43, %53
  %55 = and i64 %52, -256
  %56 = or i64 %54, %55
  %57 = add i64 %52, %44
  %58 = add i32 %42, -2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %2, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !5
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds i64, ptr %13, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !14
  %65 = and i64 %64, 255
  %66 = lshr i64 %56, %65
  %67 = and i64 %64, -256
  %68 = or i64 %66, %67
  %69 = add i64 %64, %57
  %70 = add i32 %45, 2
  %71 = icmp eq i32 %70, %40
  br i1 %71, label %73, label %41, !llvm.loop !79

72:                                               ; preds = %247, %244, %190, %32, %121, %118, %115, %112
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !53
  unreachable, !nosanitize !53

73:                                               ; preds = %41, %36
  %74 = phi i64 [ undef, %36 ], [ %68, %41 ]
  %75 = phi i64 [ undef, %36 ], [ %69, %41 ]
  %76 = phi i32 [ %29, %36 ], [ %58, %41 ]
  %77 = phi i64 [ 0, %36 ], [ %68, %41 ]
  %78 = phi i64 [ 0, %36 ], [ %69, %41 ]
  %79 = icmp eq i32 %37, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %73
  %81 = add i32 %76, -1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %2, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !5
  %85 = zext i8 %84 to i64
  %86 = getelementptr inbounds i64, ptr %13, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !14
  %88 = and i64 %87, 255
  %89 = lshr i64 %77, %88
  %90 = and i64 %87, -256
  %91 = or i64 %89, %90
  %92 = add i64 %87, %78
  br label %93

93:                                               ; preds = %73, %80
  %94 = phi i64 [ %74, %73 ], [ %91, %80 ]
  %95 = phi i64 [ %75, %73 ], [ %92, %80 ]
  %96 = sub nsw i32 %29, %30
  %97 = and i64 %95, 255
  %98 = lshr i64 %97, 3
  %99 = sub nsw i64 64, %97
  %100 = lshr i64 %94, %99
  %101 = and i64 %95, 7
  store i64 %100, ptr %0, align 1, !tbaa !14
  %102 = getelementptr inbounds i8, ptr %0, i64 %98
  %103 = icmp ugt ptr %102, %17
  %104 = select i1 %103, ptr %17, ptr %102
  br label %105

105:                                              ; preds = %93, %28
  %106 = phi i64 [ 0, %28 ], [ %101, %93 ]
  %107 = phi ptr [ %0, %28 ], [ %104, %93 ]
  %108 = phi i64 [ 0, %28 ], [ %94, %93 ]
  %109 = phi i32 [ %29, %28 ], [ %96, %93 ]
  %110 = and i32 %109, 7
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %178, label %112

112:                                              ; preds = %105
  %113 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %109, i32 -1)
  %114 = extractvalue { i32, i1 } %113, 1, !nosanitize !53
  br i1 %114, label %72, label %115, !nosanitize !53

115:                                              ; preds = %112
  %116 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %109, i32 -2)
  %117 = extractvalue { i32, i1 } %116, 1, !nosanitize !53
  br i1 %117, label %72, label %118, !nosanitize !53

118:                                              ; preds = %115
  %119 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %109, i32 -3)
  %120 = extractvalue { i32, i1 } %119, 1, !nosanitize !53
  br i1 %120, label %72, label %121, !nosanitize !53

121:                                              ; preds = %118
  %122 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %109, i32 -4)
  %123 = extractvalue { i32, i1 } %122, 1, !nosanitize !53
  br i1 %123, label %72, label %124, !nosanitize !53

124:                                              ; preds = %121
  %125 = extractvalue { i32, i1 } %119, 0, !nosanitize !53
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, ptr %2, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !5
  %129 = zext i8 %128 to i64
  %130 = getelementptr inbounds i64, ptr %13, i64 %129
  %131 = load i64, ptr %130, align 8, !tbaa !14
  %132 = extractvalue { i32, i1 } %116, 0, !nosanitize !53
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, ptr %2, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !5
  %136 = zext i8 %135 to i64
  %137 = getelementptr inbounds i64, ptr %13, i64 %136
  %138 = load i64, ptr %137, align 8, !tbaa !14
  %139 = extractvalue { i32, i1 } %113, 0, !nosanitize !53
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, ptr %2, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !5
  %143 = zext i8 %142 to i64
  %144 = getelementptr inbounds i64, ptr %13, i64 %143
  %145 = load i64, ptr %144, align 8, !tbaa !14
  %146 = and i64 %145, 255
  %147 = lshr i64 %108, %146
  %148 = or i64 %147, %145
  %149 = and i64 %138, 255
  %150 = lshr i64 %148, %149
  %151 = or i64 %150, %138
  %152 = and i64 %131, 255
  %153 = lshr i64 %151, %152
  %154 = or i64 %153, %131
  %155 = extractvalue { i32, i1 } %122, 0, !nosanitize !53
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, ptr %2, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !5
  %159 = zext i8 %158 to i64
  %160 = getelementptr inbounds i64, ptr %13, i64 %159
  %161 = load i64, ptr %160, align 8, !tbaa !14
  %162 = and i64 %161, 255
  %163 = lshr i64 %154, %162
  %164 = and i64 %161, -256
  %165 = or i64 %163, %164
  %166 = add i64 %131, %106
  %167 = add i64 %166, %138
  %168 = add i64 %167, %145
  %169 = add i64 %168, %161
  %170 = and i64 %169, 255
  %171 = lshr i64 %170, 3
  %172 = sub nsw i64 64, %170
  %173 = lshr i64 %165, %172
  %174 = and i64 %169, 7
  store i64 %173, ptr %107, align 1, !tbaa !14
  %175 = getelementptr inbounds i8, ptr %107, i64 %171
  %176 = icmp ugt ptr %175, %17
  %177 = select i1 %176, ptr %17, ptr %175
  br label %178

178:                                              ; preds = %124, %105
  %179 = phi i64 [ %106, %105 ], [ %174, %124 ]
  %180 = phi ptr [ %107, %105 ], [ %177, %124 ]
  %181 = phi i64 [ %108, %105 ], [ %165, %124 ]
  %182 = phi i32 [ %109, %105 ], [ %155, %124 ]
  %183 = getelementptr i8, ptr %2, i64 -8
  %184 = icmp sgt i32 %182, 0
  br i1 %184, label %185, label %2511

185:                                              ; preds = %178
  %186 = zext nneg i32 %182 to i64
  %187 = getelementptr i8, ptr %2, i64 -1
  %188 = getelementptr i8, ptr %2, i64 -2
  %189 = getelementptr i8, ptr %2, i64 -3
  br label %190

190:                                              ; preds = %250, %185
  %191 = phi i64 [ %186, %185 ], [ %302, %250 ]
  %192 = phi i64 [ %181, %185 ], [ %292, %250 ]
  %193 = phi ptr [ %180, %185 ], [ %301, %250 ]
  %194 = phi i64 [ %179, %185 ], [ %298, %250 ]
  %195 = getelementptr i8, ptr %187, i64 %191
  %196 = load i8, ptr %195, align 1, !tbaa !5
  %197 = zext i8 %196 to i64
  %198 = getelementptr inbounds i64, ptr %13, i64 %197
  %199 = load i64, ptr %198, align 8, !tbaa !14
  %200 = and i64 %199, 255
  %201 = lshr i64 %192, %200
  %202 = or i64 %201, %199
  %203 = add i64 %199, %194
  %204 = getelementptr i8, ptr %188, i64 %191
  %205 = load i8, ptr %204, align 1, !tbaa !5
  %206 = zext i8 %205 to i64
  %207 = getelementptr inbounds i64, ptr %13, i64 %206
  %208 = load i64, ptr %207, align 8, !tbaa !14
  %209 = and i64 %208, 255
  %210 = lshr i64 %202, %209
  %211 = or i64 %210, %208
  %212 = add i64 %203, %208
  %213 = getelementptr i8, ptr %189, i64 %191
  %214 = load i8, ptr %213, align 1, !tbaa !5
  %215 = zext i8 %214 to i64
  %216 = getelementptr inbounds i64, ptr %13, i64 %215
  %217 = load i64, ptr %216, align 8, !tbaa !14
  %218 = and i64 %217, 255
  %219 = lshr i64 %211, %218
  %220 = or i64 %219, %217
  %221 = add i64 %212, %217
  %222 = add nsw i64 %191, -4
  %223 = getelementptr inbounds i8, ptr %2, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !5
  %225 = zext i8 %224 to i64
  %226 = getelementptr inbounds i64, ptr %13, i64 %225
  %227 = load i64, ptr %226, align 8, !tbaa !14
  %228 = and i64 %227, 255
  %229 = lshr i64 %220, %228
  %230 = and i64 %227, -256
  %231 = or i64 %229, %230
  %232 = add i64 %221, %227
  %233 = and i64 %232, 255
  %234 = lshr i64 %233, 3
  %235 = sub nsw i64 64, %233
  %236 = lshr i64 %231, %235
  %237 = and i64 %232, 7
  store i64 %236, ptr %193, align 1, !tbaa !14
  %238 = getelementptr inbounds i8, ptr %193, i64 %234
  %239 = icmp ugt ptr %238, %17
  %240 = select i1 %239, ptr %17, ptr %238
  %241 = trunc i64 %222 to i32
  %242 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %241, i32 -1)
  %243 = extractvalue { i32, i1 } %242, 1, !nosanitize !53
  br i1 %243, label %72, label %244, !nosanitize !53

244:                                              ; preds = %190
  %245 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %241, i32 -2)
  %246 = extractvalue { i32, i1 } %245, 1, !nosanitize !53
  br i1 %246, label %72, label %247, !nosanitize !53

247:                                              ; preds = %244
  %248 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %241, i32 -3)
  %249 = extractvalue { i32, i1 } %248, 1, !nosanitize !53
  br i1 %249, label %72, label %250, !nosanitize !53

250:                                              ; preds = %247
  %251 = extractvalue { i32, i1 } %245, 0, !nosanitize !53
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, ptr %2, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !5
  %255 = zext i8 %254 to i64
  %256 = getelementptr inbounds i64, ptr %13, i64 %255
  %257 = load i64, ptr %256, align 8, !tbaa !14
  %258 = extractvalue { i32, i1 } %242, 0, !nosanitize !53
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, ptr %2, i64 %259
  %261 = load i8, ptr %260, align 1, !tbaa !5
  %262 = zext i8 %261 to i64
  %263 = getelementptr inbounds i64, ptr %13, i64 %262
  %264 = load i64, ptr %263, align 8, !tbaa !14
  %265 = add i64 %264, %257
  %266 = and i64 %257, 255
  %267 = lshr i64 %264, %266
  %268 = or i64 %267, %257
  %269 = extractvalue { i32, i1 } %248, 0, !nosanitize !53
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, ptr %2, i64 %270
  %272 = load i8, ptr %271, align 1, !tbaa !5
  %273 = zext i8 %272 to i64
  %274 = getelementptr inbounds i64, ptr %13, i64 %273
  %275 = load i64, ptr %274, align 8, !tbaa !14
  %276 = and i64 %275, 255
  %277 = lshr i64 %268, %276
  %278 = or i64 %277, %275
  %279 = add i64 %265, %275
  %280 = getelementptr i8, ptr %183, i64 %191
  %281 = load i8, ptr %280, align 1, !tbaa !5
  %282 = zext i8 %281 to i64
  %283 = getelementptr inbounds i64, ptr %13, i64 %282
  %284 = load i64, ptr %283, align 8, !tbaa !14
  %285 = and i64 %284, 255
  %286 = lshr i64 %278, %285
  %287 = and i64 %284, -256
  %288 = or i64 %286, %287
  %289 = add i64 %279, %284
  %290 = and i64 %289, 255
  %291 = lshr i64 %231, %290
  %292 = or i64 %288, %291
  %293 = add i64 %289, %237
  %294 = and i64 %293, 255
  %295 = lshr i64 %294, 3
  %296 = sub nsw i64 64, %294
  %297 = lshr i64 %292, %296
  %298 = and i64 %293, 7
  store i64 %297, ptr %240, align 1, !tbaa !14
  %299 = getelementptr inbounds i8, ptr %240, i64 %295
  %300 = icmp ugt ptr %299, %17
  %301 = select i1 %300, ptr %17, ptr %299
  %302 = add nsw i64 %191, -8
  %303 = icmp sgt i64 %191, 8
  br i1 %303, label %190, label %2511, !llvm.loop !80

304:                                              ; preds = %19
  %305 = trunc i64 %12 to i8
  %306 = trunc i64 %3 to i32
  switch i8 %305, label %2057 [
    i8 11, label %307
    i8 10, label %612
    i8 9, label %914
    i8 8, label %1257
    i8 7, label %1638
  ]

307:                                              ; preds = %304
  %308 = srem i32 %306, 5
  %309 = icmp sgt i32 %308, 0
  br i1 %309, label %310, label %381

310:                                              ; preds = %307
  %311 = xor i32 %306, -2147483648
  %312 = add nsw i32 %308, -1
  %313 = icmp ugt i32 %311, %312
  br i1 %313, label %314, label %350, !nosanitize !53

314:                                              ; preds = %310
  %315 = and i32 %308, 1
  %316 = icmp eq i32 %312, 0
  br i1 %316, label %351, label %317

317:                                              ; preds = %314
  %318 = and i32 %308, 2147483646
  br label %319

319:                                              ; preds = %319, %317
  %320 = phi i32 [ %306, %317 ], [ %336, %319 ]
  %321 = phi i64 [ 0, %317 ], [ %346, %319 ]
  %322 = phi i64 [ 0, %317 ], [ %347, %319 ]
  %323 = phi i32 [ 0, %317 ], [ %348, %319 ]
  %324 = add i32 %320, -1
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, ptr %2, i64 %325
  %327 = load i8, ptr %326, align 1, !tbaa !5
  %328 = zext i8 %327 to i64
  %329 = getelementptr inbounds i64, ptr %13, i64 %328
  %330 = load i64, ptr %329, align 8, !tbaa !14
  %331 = and i64 %330, 255
  %332 = lshr i64 %321, %331
  %333 = and i64 %330, -256
  %334 = or i64 %332, %333
  %335 = add i64 %330, %322
  %336 = add i32 %320, -2
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i8, ptr %2, i64 %337
  %339 = load i8, ptr %338, align 1, !tbaa !5
  %340 = zext i8 %339 to i64
  %341 = getelementptr inbounds i64, ptr %13, i64 %340
  %342 = load i64, ptr %341, align 8, !tbaa !14
  %343 = and i64 %342, 255
  %344 = lshr i64 %334, %343
  %345 = and i64 %342, -256
  %346 = or i64 %344, %345
  %347 = add i64 %342, %335
  %348 = add i32 %323, 2
  %349 = icmp eq i32 %348, %318
  br i1 %349, label %351, label %319, !llvm.loop !79

350:                                              ; preds = %546, %543, %540, %479, %310, %400, %397, %394, %391, %388
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !53
  unreachable, !nosanitize !53

351:                                              ; preds = %319, %314
  %352 = phi i64 [ undef, %314 ], [ %346, %319 ]
  %353 = phi i64 [ undef, %314 ], [ %347, %319 ]
  %354 = phi i32 [ %306, %314 ], [ %336, %319 ]
  %355 = phi i64 [ 0, %314 ], [ %346, %319 ]
  %356 = phi i64 [ 0, %314 ], [ %347, %319 ]
  %357 = icmp eq i32 %315, 0
  br i1 %357, label %371, label %358

358:                                              ; preds = %351
  %359 = add i32 %354, -1
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i8, ptr %2, i64 %360
  %362 = load i8, ptr %361, align 1, !tbaa !5
  %363 = zext i8 %362 to i64
  %364 = getelementptr inbounds i64, ptr %13, i64 %363
  %365 = load i64, ptr %364, align 8, !tbaa !14
  %366 = and i64 %365, 255
  %367 = lshr i64 %355, %366
  %368 = and i64 %365, -256
  %369 = or i64 %367, %368
  %370 = add i64 %365, %356
  br label %371

371:                                              ; preds = %351, %358
  %372 = phi i64 [ %352, %351 ], [ %369, %358 ]
  %373 = phi i64 [ %353, %351 ], [ %370, %358 ]
  %374 = sub nsw i32 %306, %308
  %375 = and i64 %373, 255
  %376 = lshr i64 %375, 3
  %377 = sub nsw i64 64, %375
  %378 = lshr i64 %372, %377
  %379 = and i64 %373, 7
  store i64 %378, ptr %0, align 1, !tbaa !14
  %380 = getelementptr inbounds i8, ptr %0, i64 %376
  br label %381

381:                                              ; preds = %371, %307
  %382 = phi i64 [ %379, %371 ], [ 0, %307 ]
  %383 = phi ptr [ %380, %371 ], [ %0, %307 ]
  %384 = phi i64 [ %372, %371 ], [ 0, %307 ]
  %385 = phi i32 [ %374, %371 ], [ %306, %307 ]
  %386 = srem i32 %385, 10
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %466, label %388

388:                                              ; preds = %381
  %389 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %385, i32 -1)
  %390 = extractvalue { i32, i1 } %389, 1, !nosanitize !53
  br i1 %390, label %350, label %391, !nosanitize !53

391:                                              ; preds = %388
  %392 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %385, i32 -2)
  %393 = extractvalue { i32, i1 } %392, 1, !nosanitize !53
  br i1 %393, label %350, label %394, !nosanitize !53

394:                                              ; preds = %391
  %395 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %385, i32 -3)
  %396 = extractvalue { i32, i1 } %395, 1, !nosanitize !53
  br i1 %396, label %350, label %397, !nosanitize !53

397:                                              ; preds = %394
  %398 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %385, i32 -4)
  %399 = extractvalue { i32, i1 } %398, 1, !nosanitize !53
  br i1 %399, label %350, label %400, !nosanitize !53

400:                                              ; preds = %397
  %401 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %385, i32 -5)
  %402 = extractvalue { i32, i1 } %401, 1, !nosanitize !53
  br i1 %402, label %350, label %403, !nosanitize !53

403:                                              ; preds = %400
  %404 = extractvalue { i32, i1 } %398, 0, !nosanitize !53
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8, ptr %2, i64 %405
  %407 = load i8, ptr %406, align 1, !tbaa !5
  %408 = zext i8 %407 to i64
  %409 = getelementptr inbounds i64, ptr %13, i64 %408
  %410 = load i64, ptr %409, align 8, !tbaa !14
  %411 = extractvalue { i32, i1 } %395, 0, !nosanitize !53
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i8, ptr %2, i64 %412
  %414 = load i8, ptr %413, align 1, !tbaa !5
  %415 = zext i8 %414 to i64
  %416 = getelementptr inbounds i64, ptr %13, i64 %415
  %417 = load i64, ptr %416, align 8, !tbaa !14
  %418 = extractvalue { i32, i1 } %392, 0, !nosanitize !53
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i8, ptr %2, i64 %419
  %421 = load i8, ptr %420, align 1, !tbaa !5
  %422 = zext i8 %421 to i64
  %423 = getelementptr inbounds i64, ptr %13, i64 %422
  %424 = load i64, ptr %423, align 8, !tbaa !14
  %425 = extractvalue { i32, i1 } %389, 0, !nosanitize !53
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i8, ptr %2, i64 %426
  %428 = load i8, ptr %427, align 1, !tbaa !5
  %429 = zext i8 %428 to i64
  %430 = getelementptr inbounds i64, ptr %13, i64 %429
  %431 = load i64, ptr %430, align 8, !tbaa !14
  %432 = and i64 %431, 255
  %433 = lshr i64 %384, %432
  %434 = or i64 %433, %431
  %435 = and i64 %424, 255
  %436 = lshr i64 %434, %435
  %437 = or i64 %436, %424
  %438 = and i64 %417, 255
  %439 = lshr i64 %437, %438
  %440 = or i64 %439, %417
  %441 = and i64 %410, 255
  %442 = lshr i64 %440, %441
  %443 = or i64 %442, %410
  %444 = extractvalue { i32, i1 } %401, 0, !nosanitize !53
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i8, ptr %2, i64 %445
  %447 = load i8, ptr %446, align 1, !tbaa !5
  %448 = zext i8 %447 to i64
  %449 = getelementptr inbounds i64, ptr %13, i64 %448
  %450 = load i64, ptr %449, align 8, !tbaa !14
  %451 = and i64 %450, 255
  %452 = lshr i64 %443, %451
  %453 = and i64 %450, -256
  %454 = or i64 %452, %453
  %455 = add i64 %410, %382
  %456 = add i64 %455, %417
  %457 = add i64 %456, %424
  %458 = add i64 %457, %431
  %459 = add i64 %458, %450
  %460 = and i64 %459, 255
  %461 = lshr i64 %460, 3
  %462 = sub nsw i64 64, %460
  %463 = lshr i64 %454, %462
  %464 = and i64 %459, 7
  store i64 %463, ptr %383, align 1, !tbaa !14
  %465 = getelementptr inbounds i8, ptr %383, i64 %461
  br label %466

466:                                              ; preds = %403, %381
  %467 = phi i64 [ %382, %381 ], [ %464, %403 ]
  %468 = phi ptr [ %383, %381 ], [ %465, %403 ]
  %469 = phi i64 [ %384, %381 ], [ %454, %403 ]
  %470 = phi i32 [ %385, %381 ], [ %444, %403 ]
  %471 = getelementptr i8, ptr %2, i64 -10
  %472 = icmp sgt i32 %470, 0
  br i1 %472, label %473, label %2511

473:                                              ; preds = %466
  %474 = zext nneg i32 %470 to i64
  %475 = getelementptr i8, ptr %2, i64 -1
  %476 = getelementptr i8, ptr %2, i64 -2
  %477 = getelementptr i8, ptr %2, i64 -3
  %478 = getelementptr i8, ptr %2, i64 -4
  br label %479

479:                                              ; preds = %549, %473
  %480 = phi i64 [ %474, %473 ], [ %610, %549 ]
  %481 = phi i64 [ %469, %473 ], [ %602, %549 ]
  %482 = phi ptr [ %468, %473 ], [ %609, %549 ]
  %483 = phi i64 [ %467, %473 ], [ %608, %549 ]
  %484 = getelementptr i8, ptr %475, i64 %480
  %485 = load i8, ptr %484, align 1, !tbaa !5
  %486 = zext i8 %485 to i64
  %487 = getelementptr inbounds i64, ptr %13, i64 %486
  %488 = load i64, ptr %487, align 8, !tbaa !14
  %489 = and i64 %488, 255
  %490 = lshr i64 %481, %489
  %491 = or i64 %490, %488
  %492 = add i64 %488, %483
  %493 = getelementptr i8, ptr %476, i64 %480
  %494 = load i8, ptr %493, align 1, !tbaa !5
  %495 = zext i8 %494 to i64
  %496 = getelementptr inbounds i64, ptr %13, i64 %495
  %497 = load i64, ptr %496, align 8, !tbaa !14
  %498 = and i64 %497, 255
  %499 = lshr i64 %491, %498
  %500 = or i64 %499, %497
  %501 = add i64 %492, %497
  %502 = getelementptr i8, ptr %477, i64 %480
  %503 = load i8, ptr %502, align 1, !tbaa !5
  %504 = zext i8 %503 to i64
  %505 = getelementptr inbounds i64, ptr %13, i64 %504
  %506 = load i64, ptr %505, align 8, !tbaa !14
  %507 = and i64 %506, 255
  %508 = lshr i64 %500, %507
  %509 = or i64 %508, %506
  %510 = add i64 %501, %506
  %511 = getelementptr i8, ptr %478, i64 %480
  %512 = load i8, ptr %511, align 1, !tbaa !5
  %513 = zext i8 %512 to i64
  %514 = getelementptr inbounds i64, ptr %13, i64 %513
  %515 = load i64, ptr %514, align 8, !tbaa !14
  %516 = and i64 %515, 255
  %517 = lshr i64 %509, %516
  %518 = or i64 %517, %515
  %519 = add i64 %510, %515
  %520 = add nsw i64 %480, -5
  %521 = getelementptr inbounds i8, ptr %2, i64 %520
  %522 = load i8, ptr %521, align 1, !tbaa !5
  %523 = zext i8 %522 to i64
  %524 = getelementptr inbounds i64, ptr %13, i64 %523
  %525 = load i64, ptr %524, align 8, !tbaa !14
  %526 = and i64 %525, 255
  %527 = lshr i64 %518, %526
  %528 = and i64 %525, -256
  %529 = or i64 %527, %528
  %530 = add i64 %519, %525
  %531 = and i64 %530, 255
  %532 = lshr i64 %531, 3
  %533 = sub nsw i64 64, %531
  %534 = lshr i64 %529, %533
  %535 = and i64 %530, 7
  store i64 %534, ptr %482, align 1, !tbaa !14
  %536 = getelementptr inbounds i8, ptr %482, i64 %532
  %537 = trunc i64 %520 to i32
  %538 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %537, i32 -1)
  %539 = extractvalue { i32, i1 } %538, 1, !nosanitize !53
  br i1 %539, label %350, label %540, !nosanitize !53

540:                                              ; preds = %479
  %541 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %537, i32 -2)
  %542 = extractvalue { i32, i1 } %541, 1, !nosanitize !53
  br i1 %542, label %350, label %543, !nosanitize !53

543:                                              ; preds = %540
  %544 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %537, i32 -3)
  %545 = extractvalue { i32, i1 } %544, 1, !nosanitize !53
  br i1 %545, label %350, label %546, !nosanitize !53

546:                                              ; preds = %543
  %547 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %537, i32 -4)
  %548 = extractvalue { i32, i1 } %547, 1, !nosanitize !53
  br i1 %548, label %350, label %549, !nosanitize !53

549:                                              ; preds = %546
  %550 = extractvalue { i32, i1 } %544, 0, !nosanitize !53
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i8, ptr %2, i64 %551
  %553 = load i8, ptr %552, align 1, !tbaa !5
  %554 = zext i8 %553 to i64
  %555 = getelementptr inbounds i64, ptr %13, i64 %554
  %556 = load i64, ptr %555, align 8, !tbaa !14
  %557 = extractvalue { i32, i1 } %541, 0, !nosanitize !53
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i8, ptr %2, i64 %558
  %560 = load i8, ptr %559, align 1, !tbaa !5
  %561 = zext i8 %560 to i64
  %562 = getelementptr inbounds i64, ptr %13, i64 %561
  %563 = load i64, ptr %562, align 8, !tbaa !14
  %564 = extractvalue { i32, i1 } %538, 0, !nosanitize !53
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i8, ptr %2, i64 %565
  %567 = load i8, ptr %566, align 1, !tbaa !5
  %568 = zext i8 %567 to i64
  %569 = getelementptr inbounds i64, ptr %13, i64 %568
  %570 = load i64, ptr %569, align 8, !tbaa !14
  %571 = and i64 %563, 255
  %572 = lshr i64 %570, %571
  %573 = or i64 %572, %563
  %574 = and i64 %556, 255
  %575 = lshr i64 %573, %574
  %576 = or i64 %575, %556
  %577 = extractvalue { i32, i1 } %547, 0, !nosanitize !53
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i8, ptr %2, i64 %578
  %580 = load i8, ptr %579, align 1, !tbaa !5
  %581 = zext i8 %580 to i64
  %582 = getelementptr inbounds i64, ptr %13, i64 %581
  %583 = load i64, ptr %582, align 8, !tbaa !14
  %584 = and i64 %583, 255
  %585 = lshr i64 %576, %584
  %586 = or i64 %585, %583
  %587 = getelementptr i8, ptr %471, i64 %480
  %588 = load i8, ptr %587, align 1, !tbaa !5
  %589 = zext i8 %588 to i64
  %590 = getelementptr inbounds i64, ptr %13, i64 %589
  %591 = load i64, ptr %590, align 8, !tbaa !14
  %592 = and i64 %591, 255
  %593 = lshr i64 %586, %592
  %594 = and i64 %591, -256
  %595 = or i64 %593, %594
  %596 = add i64 %563, %556
  %597 = add i64 %596, %570
  %598 = add i64 %597, %583
  %599 = add i64 %598, %591
  %600 = and i64 %599, 255
  %601 = lshr i64 %529, %600
  %602 = or i64 %595, %601
  %603 = add i64 %599, %535
  %604 = and i64 %603, 255
  %605 = lshr i64 %604, 3
  %606 = sub nsw i64 64, %604
  %607 = lshr i64 %602, %606
  %608 = and i64 %603, 7
  store i64 %607, ptr %536, align 1, !tbaa !14
  %609 = getelementptr inbounds i8, ptr %536, i64 %605
  %610 = add nsw i64 %480, -10
  %611 = icmp sgt i64 %480, 10
  br i1 %611, label %479, label %2511, !llvm.loop !80

612:                                              ; preds = %304
  %613 = srem i32 %306, 5
  %614 = icmp sgt i32 %613, 0
  br i1 %614, label %615, label %686

615:                                              ; preds = %612
  %616 = xor i32 %306, -2147483648
  %617 = add nsw i32 %613, -1
  %618 = icmp ugt i32 %616, %617
  br i1 %618, label %619, label %655, !nosanitize !53

619:                                              ; preds = %615
  %620 = and i32 %613, 1
  %621 = icmp eq i32 %617, 0
  br i1 %621, label %656, label %622

622:                                              ; preds = %619
  %623 = and i32 %613, 2147483646
  br label %624

624:                                              ; preds = %624, %622
  %625 = phi i32 [ %306, %622 ], [ %641, %624 ]
  %626 = phi i64 [ 0, %622 ], [ %651, %624 ]
  %627 = phi i64 [ 0, %622 ], [ %652, %624 ]
  %628 = phi i32 [ 0, %622 ], [ %653, %624 ]
  %629 = add i32 %625, -1
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds i8, ptr %2, i64 %630
  %632 = load i8, ptr %631, align 1, !tbaa !5
  %633 = zext i8 %632 to i64
  %634 = getelementptr inbounds i64, ptr %13, i64 %633
  %635 = load i64, ptr %634, align 8, !tbaa !14
  %636 = and i64 %635, 255
  %637 = lshr i64 %626, %636
  %638 = and i64 %635, -256
  %639 = or i64 %637, %638
  %640 = add i64 %635, %627
  %641 = add i32 %625, -2
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds i8, ptr %2, i64 %642
  %644 = load i8, ptr %643, align 1, !tbaa !5
  %645 = zext i8 %644 to i64
  %646 = getelementptr inbounds i64, ptr %13, i64 %645
  %647 = load i64, ptr %646, align 8, !tbaa !14
  %648 = and i64 %647, 255
  %649 = lshr i64 %639, %648
  %650 = and i64 %647, -256
  %651 = or i64 %649, %650
  %652 = add i64 %647, %640
  %653 = add i32 %628, 2
  %654 = icmp eq i32 %653, %623
  br i1 %654, label %656, label %624, !llvm.loop !79

655:                                              ; preds = %849, %846, %843, %783, %615, %705, %702, %699, %696, %693
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !53
  unreachable, !nosanitize !53

656:                                              ; preds = %624, %619
  %657 = phi i64 [ undef, %619 ], [ %651, %624 ]
  %658 = phi i64 [ undef, %619 ], [ %652, %624 ]
  %659 = phi i32 [ %306, %619 ], [ %641, %624 ]
  %660 = phi i64 [ 0, %619 ], [ %651, %624 ]
  %661 = phi i64 [ 0, %619 ], [ %652, %624 ]
  %662 = icmp eq i32 %620, 0
  br i1 %662, label %676, label %663

663:                                              ; preds = %656
  %664 = add i32 %659, -1
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds i8, ptr %2, i64 %665
  %667 = load i8, ptr %666, align 1, !tbaa !5
  %668 = zext i8 %667 to i64
  %669 = getelementptr inbounds i64, ptr %13, i64 %668
  %670 = load i64, ptr %669, align 8, !tbaa !14
  %671 = and i64 %670, 255
  %672 = lshr i64 %660, %671
  %673 = and i64 %670, -256
  %674 = or i64 %672, %673
  %675 = add i64 %670, %661
  br label %676

676:                                              ; preds = %656, %663
  %677 = phi i64 [ %657, %656 ], [ %674, %663 ]
  %678 = phi i64 [ %658, %656 ], [ %675, %663 ]
  %679 = sub nsw i32 %306, %613
  %680 = and i64 %678, 255
  %681 = lshr i64 %680, 3
  %682 = sub nsw i64 64, %680
  %683 = lshr i64 %677, %682
  %684 = and i64 %678, 7
  store i64 %683, ptr %0, align 1, !tbaa !14
  %685 = getelementptr inbounds i8, ptr %0, i64 %681
  br label %686

686:                                              ; preds = %676, %612
  %687 = phi i64 [ %684, %676 ], [ 0, %612 ]
  %688 = phi ptr [ %685, %676 ], [ %0, %612 ]
  %689 = phi i64 [ %677, %676 ], [ 0, %612 ]
  %690 = phi i32 [ %679, %676 ], [ %306, %612 ]
  %691 = srem i32 %690, 10
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %770, label %693

693:                                              ; preds = %686
  %694 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %690, i32 -1)
  %695 = extractvalue { i32, i1 } %694, 1, !nosanitize !53
  br i1 %695, label %655, label %696, !nosanitize !53

696:                                              ; preds = %693
  %697 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %690, i32 -2)
  %698 = extractvalue { i32, i1 } %697, 1, !nosanitize !53
  br i1 %698, label %655, label %699, !nosanitize !53

699:                                              ; preds = %696
  %700 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %690, i32 -3)
  %701 = extractvalue { i32, i1 } %700, 1, !nosanitize !53
  br i1 %701, label %655, label %702, !nosanitize !53

702:                                              ; preds = %699
  %703 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %690, i32 -4)
  %704 = extractvalue { i32, i1 } %703, 1, !nosanitize !53
  br i1 %704, label %655, label %705, !nosanitize !53

705:                                              ; preds = %702
  %706 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %690, i32 -5)
  %707 = extractvalue { i32, i1 } %706, 1, !nosanitize !53
  br i1 %707, label %655, label %708, !nosanitize !53

708:                                              ; preds = %705
  %709 = extractvalue { i32, i1 } %703, 0, !nosanitize !53
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds i8, ptr %2, i64 %710
  %712 = load i8, ptr %711, align 1, !tbaa !5
  %713 = zext i8 %712 to i64
  %714 = getelementptr inbounds i64, ptr %13, i64 %713
  %715 = load i64, ptr %714, align 8, !tbaa !14
  %716 = extractvalue { i32, i1 } %700, 0, !nosanitize !53
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds i8, ptr %2, i64 %717
  %719 = load i8, ptr %718, align 1, !tbaa !5
  %720 = zext i8 %719 to i64
  %721 = getelementptr inbounds i64, ptr %13, i64 %720
  %722 = load i64, ptr %721, align 8, !tbaa !14
  %723 = extractvalue { i32, i1 } %697, 0, !nosanitize !53
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds i8, ptr %2, i64 %724
  %726 = load i8, ptr %725, align 1, !tbaa !5
  %727 = zext i8 %726 to i64
  %728 = getelementptr inbounds i64, ptr %13, i64 %727
  %729 = load i64, ptr %728, align 8, !tbaa !14
  %730 = extractvalue { i32, i1 } %694, 0, !nosanitize !53
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds i8, ptr %2, i64 %731
  %733 = load i8, ptr %732, align 1, !tbaa !5
  %734 = zext i8 %733 to i64
  %735 = getelementptr inbounds i64, ptr %13, i64 %734
  %736 = load i64, ptr %735, align 8, !tbaa !14
  %737 = and i64 %736, 255
  %738 = lshr i64 %689, %737
  %739 = or i64 %738, %736
  %740 = and i64 %729, 255
  %741 = lshr i64 %739, %740
  %742 = or i64 %741, %729
  %743 = and i64 %722, 255
  %744 = lshr i64 %742, %743
  %745 = or i64 %744, %722
  %746 = and i64 %715, 255
  %747 = lshr i64 %745, %746
  %748 = or i64 %747, %715
  %749 = extractvalue { i32, i1 } %706, 0, !nosanitize !53
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds i8, ptr %2, i64 %750
  %752 = load i8, ptr %751, align 1, !tbaa !5
  %753 = zext i8 %752 to i64
  %754 = getelementptr inbounds i64, ptr %13, i64 %753
  %755 = load i64, ptr %754, align 8, !tbaa !14
  %756 = and i64 %755, 255
  %757 = lshr i64 %748, %756
  %758 = or i64 %757, %755
  %759 = add i64 %715, %687
  %760 = add i64 %759, %722
  %761 = add i64 %760, %729
  %762 = add i64 %761, %736
  %763 = add i64 %762, %755
  %764 = and i64 %763, 255
  %765 = lshr i64 %764, 3
  %766 = sub nsw i64 64, %764
  %767 = lshr i64 %758, %766
  %768 = and i64 %763, 7
  store i64 %767, ptr %688, align 1, !tbaa !14
  %769 = getelementptr inbounds i8, ptr %688, i64 %765
  br label %770

770:                                              ; preds = %708, %686
  %771 = phi i64 [ %687, %686 ], [ %768, %708 ]
  %772 = phi ptr [ %688, %686 ], [ %769, %708 ]
  %773 = phi i64 [ %689, %686 ], [ %758, %708 ]
  %774 = phi i32 [ %690, %686 ], [ %749, %708 ]
  %775 = getelementptr i8, ptr %2, i64 -10
  %776 = icmp sgt i32 %774, 0
  br i1 %776, label %777, label %2511

777:                                              ; preds = %770
  %778 = zext nneg i32 %774 to i64
  %779 = getelementptr i8, ptr %2, i64 -1
  %780 = getelementptr i8, ptr %2, i64 -2
  %781 = getelementptr i8, ptr %2, i64 -3
  %782 = getelementptr i8, ptr %2, i64 -4
  br label %783

783:                                              ; preds = %852, %777
  %784 = phi i64 [ %778, %777 ], [ %912, %852 ]
  %785 = phi i64 [ %773, %777 ], [ %904, %852 ]
  %786 = phi ptr [ %772, %777 ], [ %911, %852 ]
  %787 = phi i64 [ %771, %777 ], [ %910, %852 ]
  %788 = getelementptr i8, ptr %779, i64 %784
  %789 = load i8, ptr %788, align 1, !tbaa !5
  %790 = zext i8 %789 to i64
  %791 = getelementptr inbounds i64, ptr %13, i64 %790
  %792 = load i64, ptr %791, align 8, !tbaa !14
  %793 = and i64 %792, 255
  %794 = lshr i64 %785, %793
  %795 = or i64 %794, %792
  %796 = add i64 %792, %787
  %797 = getelementptr i8, ptr %780, i64 %784
  %798 = load i8, ptr %797, align 1, !tbaa !5
  %799 = zext i8 %798 to i64
  %800 = getelementptr inbounds i64, ptr %13, i64 %799
  %801 = load i64, ptr %800, align 8, !tbaa !14
  %802 = and i64 %801, 255
  %803 = lshr i64 %795, %802
  %804 = or i64 %803, %801
  %805 = add i64 %796, %801
  %806 = getelementptr i8, ptr %781, i64 %784
  %807 = load i8, ptr %806, align 1, !tbaa !5
  %808 = zext i8 %807 to i64
  %809 = getelementptr inbounds i64, ptr %13, i64 %808
  %810 = load i64, ptr %809, align 8, !tbaa !14
  %811 = and i64 %810, 255
  %812 = lshr i64 %804, %811
  %813 = or i64 %812, %810
  %814 = add i64 %805, %810
  %815 = getelementptr i8, ptr %782, i64 %784
  %816 = load i8, ptr %815, align 1, !tbaa !5
  %817 = zext i8 %816 to i64
  %818 = getelementptr inbounds i64, ptr %13, i64 %817
  %819 = load i64, ptr %818, align 8, !tbaa !14
  %820 = and i64 %819, 255
  %821 = lshr i64 %813, %820
  %822 = or i64 %821, %819
  %823 = add i64 %814, %819
  %824 = add nsw i64 %784, -5
  %825 = getelementptr inbounds i8, ptr %2, i64 %824
  %826 = load i8, ptr %825, align 1, !tbaa !5
  %827 = zext i8 %826 to i64
  %828 = getelementptr inbounds i64, ptr %13, i64 %827
  %829 = load i64, ptr %828, align 8, !tbaa !14
  %830 = and i64 %829, 255
  %831 = lshr i64 %822, %830
  %832 = or i64 %831, %829
  %833 = add i64 %823, %829
  %834 = and i64 %833, 255
  %835 = lshr i64 %834, 3
  %836 = sub nsw i64 64, %834
  %837 = lshr i64 %832, %836
  %838 = and i64 %833, 7
  store i64 %837, ptr %786, align 1, !tbaa !14
  %839 = getelementptr inbounds i8, ptr %786, i64 %835
  %840 = trunc i64 %824 to i32
  %841 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %840, i32 -1)
  %842 = extractvalue { i32, i1 } %841, 1, !nosanitize !53
  br i1 %842, label %655, label %843, !nosanitize !53

843:                                              ; preds = %783
  %844 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %840, i32 -2)
  %845 = extractvalue { i32, i1 } %844, 1, !nosanitize !53
  br i1 %845, label %655, label %846, !nosanitize !53

846:                                              ; preds = %843
  %847 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %840, i32 -3)
  %848 = extractvalue { i32, i1 } %847, 1, !nosanitize !53
  br i1 %848, label %655, label %849, !nosanitize !53

849:                                              ; preds = %846
  %850 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %840, i32 -4)
  %851 = extractvalue { i32, i1 } %850, 1, !nosanitize !53
  br i1 %851, label %655, label %852, !nosanitize !53

852:                                              ; preds = %849
  %853 = extractvalue { i32, i1 } %847, 0, !nosanitize !53
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds i8, ptr %2, i64 %854
  %856 = load i8, ptr %855, align 1, !tbaa !5
  %857 = zext i8 %856 to i64
  %858 = getelementptr inbounds i64, ptr %13, i64 %857
  %859 = load i64, ptr %858, align 8, !tbaa !14
  %860 = extractvalue { i32, i1 } %844, 0, !nosanitize !53
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds i8, ptr %2, i64 %861
  %863 = load i8, ptr %862, align 1, !tbaa !5
  %864 = zext i8 %863 to i64
  %865 = getelementptr inbounds i64, ptr %13, i64 %864
  %866 = load i64, ptr %865, align 8, !tbaa !14
  %867 = extractvalue { i32, i1 } %841, 0, !nosanitize !53
  %868 = sext i32 %867 to i64
  %869 = getelementptr inbounds i8, ptr %2, i64 %868
  %870 = load i8, ptr %869, align 1, !tbaa !5
  %871 = zext i8 %870 to i64
  %872 = getelementptr inbounds i64, ptr %13, i64 %871
  %873 = load i64, ptr %872, align 8, !tbaa !14
  %874 = and i64 %866, 255
  %875 = lshr i64 %873, %874
  %876 = or i64 %875, %866
  %877 = and i64 %859, 255
  %878 = lshr i64 %876, %877
  %879 = or i64 %878, %859
  %880 = extractvalue { i32, i1 } %850, 0, !nosanitize !53
  %881 = sext i32 %880 to i64
  %882 = getelementptr inbounds i8, ptr %2, i64 %881
  %883 = load i8, ptr %882, align 1, !tbaa !5
  %884 = zext i8 %883 to i64
  %885 = getelementptr inbounds i64, ptr %13, i64 %884
  %886 = load i64, ptr %885, align 8, !tbaa !14
  %887 = and i64 %886, 255
  %888 = lshr i64 %879, %887
  %889 = or i64 %888, %886
  %890 = getelementptr i8, ptr %775, i64 %784
  %891 = load i8, ptr %890, align 1, !tbaa !5
  %892 = zext i8 %891 to i64
  %893 = getelementptr inbounds i64, ptr %13, i64 %892
  %894 = load i64, ptr %893, align 8, !tbaa !14
  %895 = and i64 %894, 255
  %896 = lshr i64 %889, %895
  %897 = add i64 %866, %859
  %898 = add i64 %897, %873
  %899 = add i64 %898, %886
  %900 = add i64 %899, %894
  %901 = and i64 %900, 255
  %902 = lshr i64 %832, %901
  %903 = or i64 %902, %896
  %904 = or i64 %903, %894
  %905 = add i64 %900, %838
  %906 = and i64 %905, 255
  %907 = lshr i64 %906, 3
  %908 = sub nsw i64 64, %906
  %909 = lshr i64 %904, %908
  %910 = and i64 %905, 7
  store i64 %909, ptr %839, align 1, !tbaa !14
  %911 = getelementptr inbounds i8, ptr %839, i64 %907
  %912 = add nsw i64 %784, -10
  %913 = icmp sgt i64 %784, 10
  br i1 %913, label %783, label %2511, !llvm.loop !80

914:                                              ; preds = %304
  %915 = srem i32 %306, 6
  %916 = icmp sgt i32 %915, 0
  br i1 %916, label %917, label %988

917:                                              ; preds = %914
  %918 = xor i32 %306, -2147483648
  %919 = add nsw i32 %915, -1
  %920 = icmp ugt i32 %918, %919
  br i1 %920, label %921, label %957, !nosanitize !53

921:                                              ; preds = %917
  %922 = and i32 %915, 1
  %923 = icmp eq i32 %919, 0
  br i1 %923, label %958, label %924

924:                                              ; preds = %921
  %925 = and i32 %915, 2147483646
  br label %926

926:                                              ; preds = %926, %924
  %927 = phi i32 [ %306, %924 ], [ %943, %926 ]
  %928 = phi i64 [ 0, %924 ], [ %953, %926 ]
  %929 = phi i64 [ 0, %924 ], [ %954, %926 ]
  %930 = phi i32 [ 0, %924 ], [ %955, %926 ]
  %931 = add i32 %927, -1
  %932 = sext i32 %931 to i64
  %933 = getelementptr inbounds i8, ptr %2, i64 %932
  %934 = load i8, ptr %933, align 1, !tbaa !5
  %935 = zext i8 %934 to i64
  %936 = getelementptr inbounds i64, ptr %13, i64 %935
  %937 = load i64, ptr %936, align 8, !tbaa !14
  %938 = and i64 %937, 255
  %939 = lshr i64 %928, %938
  %940 = and i64 %937, -256
  %941 = or i64 %939, %940
  %942 = add i64 %937, %929
  %943 = add i32 %927, -2
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds i8, ptr %2, i64 %944
  %946 = load i8, ptr %945, align 1, !tbaa !5
  %947 = zext i8 %946 to i64
  %948 = getelementptr inbounds i64, ptr %13, i64 %947
  %949 = load i64, ptr %948, align 8, !tbaa !14
  %950 = and i64 %949, 255
  %951 = lshr i64 %941, %950
  %952 = and i64 %949, -256
  %953 = or i64 %951, %952
  %954 = add i64 %949, %942
  %955 = add i32 %930, 2
  %956 = icmp eq i32 %955, %925
  br i1 %956, label %958, label %926, !llvm.loop !79

957:                                              ; preds = %1180, %1177, %1174, %1171, %1101, %917, %1010, %1007, %1004, %1001, %998, %995
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !53
  unreachable, !nosanitize !53

958:                                              ; preds = %926, %921
  %959 = phi i64 [ undef, %921 ], [ %953, %926 ]
  %960 = phi i64 [ undef, %921 ], [ %954, %926 ]
  %961 = phi i32 [ %306, %921 ], [ %943, %926 ]
  %962 = phi i64 [ 0, %921 ], [ %953, %926 ]
  %963 = phi i64 [ 0, %921 ], [ %954, %926 ]
  %964 = icmp eq i32 %922, 0
  br i1 %964, label %978, label %965

965:                                              ; preds = %958
  %966 = add i32 %961, -1
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds i8, ptr %2, i64 %967
  %969 = load i8, ptr %968, align 1, !tbaa !5
  %970 = zext i8 %969 to i64
  %971 = getelementptr inbounds i64, ptr %13, i64 %970
  %972 = load i64, ptr %971, align 8, !tbaa !14
  %973 = and i64 %972, 255
  %974 = lshr i64 %962, %973
  %975 = and i64 %972, -256
  %976 = or i64 %974, %975
  %977 = add i64 %972, %963
  br label %978

978:                                              ; preds = %958, %965
  %979 = phi i64 [ %959, %958 ], [ %976, %965 ]
  %980 = phi i64 [ %960, %958 ], [ %977, %965 ]
  %981 = sub nsw i32 %306, %915
  %982 = and i64 %980, 255
  %983 = lshr i64 %982, 3
  %984 = sub nsw i64 64, %982
  %985 = lshr i64 %979, %984
  %986 = and i64 %980, 7
  store i64 %985, ptr %0, align 1, !tbaa !14
  %987 = getelementptr inbounds i8, ptr %0, i64 %983
  br label %988

988:                                              ; preds = %978, %914
  %989 = phi i64 [ %986, %978 ], [ 0, %914 ]
  %990 = phi ptr [ %987, %978 ], [ %0, %914 ]
  %991 = phi i64 [ %979, %978 ], [ 0, %914 ]
  %992 = phi i32 [ %981, %978 ], [ %306, %914 ]
  %993 = srem i32 %992, 12
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1087, label %995

995:                                              ; preds = %988
  %996 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %992, i32 -1)
  %997 = extractvalue { i32, i1 } %996, 1, !nosanitize !53
  br i1 %997, label %957, label %998, !nosanitize !53

998:                                              ; preds = %995
  %999 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %992, i32 -2)
  %1000 = extractvalue { i32, i1 } %999, 1, !nosanitize !53
  br i1 %1000, label %957, label %1001, !nosanitize !53

1001:                                             ; preds = %998
  %1002 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %992, i32 -3)
  %1003 = extractvalue { i32, i1 } %1002, 1, !nosanitize !53
  br i1 %1003, label %957, label %1004, !nosanitize !53

1004:                                             ; preds = %1001
  %1005 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %992, i32 -4)
  %1006 = extractvalue { i32, i1 } %1005, 1, !nosanitize !53
  br i1 %1006, label %957, label %1007, !nosanitize !53

1007:                                             ; preds = %1004
  %1008 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %992, i32 -5)
  %1009 = extractvalue { i32, i1 } %1008, 1, !nosanitize !53
  br i1 %1009, label %957, label %1010, !nosanitize !53

1010:                                             ; preds = %1007
  %1011 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %992, i32 -6)
  %1012 = extractvalue { i32, i1 } %1011, 1, !nosanitize !53
  br i1 %1012, label %957, label %1013, !nosanitize !53

1013:                                             ; preds = %1010
  %1014 = extractvalue { i32, i1 } %1008, 0, !nosanitize !53
  %1015 = sext i32 %1014 to i64
  %1016 = getelementptr inbounds i8, ptr %2, i64 %1015
  %1017 = load i8, ptr %1016, align 1, !tbaa !5
  %1018 = zext i8 %1017 to i64
  %1019 = getelementptr inbounds i64, ptr %13, i64 %1018
  %1020 = load i64, ptr %1019, align 8, !tbaa !14
  %1021 = extractvalue { i32, i1 } %1005, 0, !nosanitize !53
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds i8, ptr %2, i64 %1022
  %1024 = load i8, ptr %1023, align 1, !tbaa !5
  %1025 = zext i8 %1024 to i64
  %1026 = getelementptr inbounds i64, ptr %13, i64 %1025
  %1027 = load i64, ptr %1026, align 8, !tbaa !14
  %1028 = extractvalue { i32, i1 } %1002, 0, !nosanitize !53
  %1029 = sext i32 %1028 to i64
  %1030 = getelementptr inbounds i8, ptr %2, i64 %1029
  %1031 = load i8, ptr %1030, align 1, !tbaa !5
  %1032 = zext i8 %1031 to i64
  %1033 = getelementptr inbounds i64, ptr %13, i64 %1032
  %1034 = load i64, ptr %1033, align 8, !tbaa !14
  %1035 = extractvalue { i32, i1 } %999, 0, !nosanitize !53
  %1036 = sext i32 %1035 to i64
  %1037 = getelementptr inbounds i8, ptr %2, i64 %1036
  %1038 = load i8, ptr %1037, align 1, !tbaa !5
  %1039 = zext i8 %1038 to i64
  %1040 = getelementptr inbounds i64, ptr %13, i64 %1039
  %1041 = load i64, ptr %1040, align 8, !tbaa !14
  %1042 = extractvalue { i32, i1 } %996, 0, !nosanitize !53
  %1043 = sext i32 %1042 to i64
  %1044 = getelementptr inbounds i8, ptr %2, i64 %1043
  %1045 = load i8, ptr %1044, align 1, !tbaa !5
  %1046 = zext i8 %1045 to i64
  %1047 = getelementptr inbounds i64, ptr %13, i64 %1046
  %1048 = load i64, ptr %1047, align 8, !tbaa !14
  %1049 = and i64 %1048, 255
  %1050 = lshr i64 %991, %1049
  %1051 = or i64 %1050, %1048
  %1052 = and i64 %1041, 255
  %1053 = lshr i64 %1051, %1052
  %1054 = or i64 %1053, %1041
  %1055 = and i64 %1034, 255
  %1056 = lshr i64 %1054, %1055
  %1057 = or i64 %1056, %1034
  %1058 = and i64 %1027, 255
  %1059 = lshr i64 %1057, %1058
  %1060 = or i64 %1059, %1027
  %1061 = and i64 %1020, 255
  %1062 = lshr i64 %1060, %1061
  %1063 = or i64 %1062, %1020
  %1064 = extractvalue { i32, i1 } %1011, 0, !nosanitize !53
  %1065 = sext i32 %1064 to i64
  %1066 = getelementptr inbounds i8, ptr %2, i64 %1065
  %1067 = load i8, ptr %1066, align 1, !tbaa !5
  %1068 = zext i8 %1067 to i64
  %1069 = getelementptr inbounds i64, ptr %13, i64 %1068
  %1070 = load i64, ptr %1069, align 8, !tbaa !14
  %1071 = and i64 %1070, 255
  %1072 = lshr i64 %1063, %1071
  %1073 = and i64 %1070, -256
  %1074 = or i64 %1072, %1073
  %1075 = add i64 %1020, %989
  %1076 = add i64 %1075, %1027
  %1077 = add i64 %1076, %1034
  %1078 = add i64 %1077, %1041
  %1079 = add i64 %1078, %1048
  %1080 = add i64 %1079, %1070
  %1081 = and i64 %1080, 255
  %1082 = lshr i64 %1081, 3
  %1083 = sub nsw i64 64, %1081
  %1084 = lshr i64 %1074, %1083
  %1085 = and i64 %1080, 7
  store i64 %1084, ptr %990, align 1, !tbaa !14
  %1086 = getelementptr inbounds i8, ptr %990, i64 %1082
  br label %1087

1087:                                             ; preds = %1013, %988
  %1088 = phi i64 [ %989, %988 ], [ %1085, %1013 ]
  %1089 = phi ptr [ %990, %988 ], [ %1086, %1013 ]
  %1090 = phi i64 [ %991, %988 ], [ %1074, %1013 ]
  %1091 = phi i32 [ %992, %988 ], [ %1064, %1013 ]
  %1092 = getelementptr i8, ptr %2, i64 -12
  %1093 = icmp sgt i32 %1091, 0
  br i1 %1093, label %1094, label %2511

1094:                                             ; preds = %1087
  %1095 = zext nneg i32 %1091 to i64
  %1096 = getelementptr i8, ptr %2, i64 -1
  %1097 = getelementptr i8, ptr %2, i64 -2
  %1098 = getelementptr i8, ptr %2, i64 -3
  %1099 = getelementptr i8, ptr %2, i64 -4
  %1100 = getelementptr i8, ptr %2, i64 -5
  br label %1101

1101:                                             ; preds = %1183, %1094
  %1102 = phi i64 [ %1095, %1094 ], [ %1255, %1183 ]
  %1103 = phi i64 [ %1090, %1094 ], [ %1247, %1183 ]
  %1104 = phi ptr [ %1089, %1094 ], [ %1254, %1183 ]
  %1105 = phi i64 [ %1088, %1094 ], [ %1253, %1183 ]
  %1106 = getelementptr i8, ptr %1096, i64 %1102
  %1107 = load i8, ptr %1106, align 1, !tbaa !5
  %1108 = zext i8 %1107 to i64
  %1109 = getelementptr inbounds i64, ptr %13, i64 %1108
  %1110 = load i64, ptr %1109, align 8, !tbaa !14
  %1111 = and i64 %1110, 255
  %1112 = lshr i64 %1103, %1111
  %1113 = or i64 %1112, %1110
  %1114 = add i64 %1110, %1105
  %1115 = getelementptr i8, ptr %1097, i64 %1102
  %1116 = load i8, ptr %1115, align 1, !tbaa !5
  %1117 = zext i8 %1116 to i64
  %1118 = getelementptr inbounds i64, ptr %13, i64 %1117
  %1119 = load i64, ptr %1118, align 8, !tbaa !14
  %1120 = and i64 %1119, 255
  %1121 = lshr i64 %1113, %1120
  %1122 = or i64 %1121, %1119
  %1123 = add i64 %1114, %1119
  %1124 = getelementptr i8, ptr %1098, i64 %1102
  %1125 = load i8, ptr %1124, align 1, !tbaa !5
  %1126 = zext i8 %1125 to i64
  %1127 = getelementptr inbounds i64, ptr %13, i64 %1126
  %1128 = load i64, ptr %1127, align 8, !tbaa !14
  %1129 = and i64 %1128, 255
  %1130 = lshr i64 %1122, %1129
  %1131 = or i64 %1130, %1128
  %1132 = add i64 %1123, %1128
  %1133 = getelementptr i8, ptr %1099, i64 %1102
  %1134 = load i8, ptr %1133, align 1, !tbaa !5
  %1135 = zext i8 %1134 to i64
  %1136 = getelementptr inbounds i64, ptr %13, i64 %1135
  %1137 = load i64, ptr %1136, align 8, !tbaa !14
  %1138 = and i64 %1137, 255
  %1139 = lshr i64 %1131, %1138
  %1140 = or i64 %1139, %1137
  %1141 = add i64 %1132, %1137
  %1142 = getelementptr i8, ptr %1100, i64 %1102
  %1143 = load i8, ptr %1142, align 1, !tbaa !5
  %1144 = zext i8 %1143 to i64
  %1145 = getelementptr inbounds i64, ptr %13, i64 %1144
  %1146 = load i64, ptr %1145, align 8, !tbaa !14
  %1147 = and i64 %1146, 255
  %1148 = lshr i64 %1140, %1147
  %1149 = or i64 %1148, %1146
  %1150 = add i64 %1141, %1146
  %1151 = add nsw i64 %1102, -6
  %1152 = getelementptr inbounds i8, ptr %2, i64 %1151
  %1153 = load i8, ptr %1152, align 1, !tbaa !5
  %1154 = zext i8 %1153 to i64
  %1155 = getelementptr inbounds i64, ptr %13, i64 %1154
  %1156 = load i64, ptr %1155, align 8, !tbaa !14
  %1157 = and i64 %1156, 255
  %1158 = lshr i64 %1149, %1157
  %1159 = and i64 %1156, -256
  %1160 = or i64 %1158, %1159
  %1161 = add i64 %1150, %1156
  %1162 = and i64 %1161, 255
  %1163 = lshr i64 %1162, 3
  %1164 = sub nsw i64 64, %1162
  %1165 = lshr i64 %1160, %1164
  %1166 = and i64 %1161, 7
  store i64 %1165, ptr %1104, align 1, !tbaa !14
  %1167 = getelementptr inbounds i8, ptr %1104, i64 %1163
  %1168 = trunc i64 %1151 to i32
  %1169 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1168, i32 -1)
  %1170 = extractvalue { i32, i1 } %1169, 1, !nosanitize !53
  br i1 %1170, label %957, label %1171, !nosanitize !53

1171:                                             ; preds = %1101
  %1172 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1168, i32 -2)
  %1173 = extractvalue { i32, i1 } %1172, 1, !nosanitize !53
  br i1 %1173, label %957, label %1174, !nosanitize !53

1174:                                             ; preds = %1171
  %1175 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1168, i32 -3)
  %1176 = extractvalue { i32, i1 } %1175, 1, !nosanitize !53
  br i1 %1176, label %957, label %1177, !nosanitize !53

1177:                                             ; preds = %1174
  %1178 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1168, i32 -4)
  %1179 = extractvalue { i32, i1 } %1178, 1, !nosanitize !53
  br i1 %1179, label %957, label %1180, !nosanitize !53

1180:                                             ; preds = %1177
  %1181 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1168, i32 -5)
  %1182 = extractvalue { i32, i1 } %1181, 1, !nosanitize !53
  br i1 %1182, label %957, label %1183, !nosanitize !53

1183:                                             ; preds = %1180
  %1184 = extractvalue { i32, i1 } %1178, 0, !nosanitize !53
  %1185 = sext i32 %1184 to i64
  %1186 = getelementptr inbounds i8, ptr %2, i64 %1185
  %1187 = load i8, ptr %1186, align 1, !tbaa !5
  %1188 = zext i8 %1187 to i64
  %1189 = getelementptr inbounds i64, ptr %13, i64 %1188
  %1190 = load i64, ptr %1189, align 8, !tbaa !14
  %1191 = extractvalue { i32, i1 } %1175, 0, !nosanitize !53
  %1192 = sext i32 %1191 to i64
  %1193 = getelementptr inbounds i8, ptr %2, i64 %1192
  %1194 = load i8, ptr %1193, align 1, !tbaa !5
  %1195 = zext i8 %1194 to i64
  %1196 = getelementptr inbounds i64, ptr %13, i64 %1195
  %1197 = load i64, ptr %1196, align 8, !tbaa !14
  %1198 = extractvalue { i32, i1 } %1172, 0, !nosanitize !53
  %1199 = sext i32 %1198 to i64
  %1200 = getelementptr inbounds i8, ptr %2, i64 %1199
  %1201 = load i8, ptr %1200, align 1, !tbaa !5
  %1202 = zext i8 %1201 to i64
  %1203 = getelementptr inbounds i64, ptr %13, i64 %1202
  %1204 = load i64, ptr %1203, align 8, !tbaa !14
  %1205 = extractvalue { i32, i1 } %1169, 0, !nosanitize !53
  %1206 = sext i32 %1205 to i64
  %1207 = getelementptr inbounds i8, ptr %2, i64 %1206
  %1208 = load i8, ptr %1207, align 1, !tbaa !5
  %1209 = zext i8 %1208 to i64
  %1210 = getelementptr inbounds i64, ptr %13, i64 %1209
  %1211 = load i64, ptr %1210, align 8, !tbaa !14
  %1212 = and i64 %1204, 255
  %1213 = lshr i64 %1211, %1212
  %1214 = or i64 %1213, %1204
  %1215 = and i64 %1197, 255
  %1216 = lshr i64 %1214, %1215
  %1217 = or i64 %1216, %1197
  %1218 = and i64 %1190, 255
  %1219 = lshr i64 %1217, %1218
  %1220 = or i64 %1219, %1190
  %1221 = extractvalue { i32, i1 } %1181, 0, !nosanitize !53
  %1222 = sext i32 %1221 to i64
  %1223 = getelementptr inbounds i8, ptr %2, i64 %1222
  %1224 = load i8, ptr %1223, align 1, !tbaa !5
  %1225 = zext i8 %1224 to i64
  %1226 = getelementptr inbounds i64, ptr %13, i64 %1225
  %1227 = load i64, ptr %1226, align 8, !tbaa !14
  %1228 = and i64 %1227, 255
  %1229 = lshr i64 %1220, %1228
  %1230 = or i64 %1229, %1227
  %1231 = getelementptr i8, ptr %1092, i64 %1102
  %1232 = load i8, ptr %1231, align 1, !tbaa !5
  %1233 = zext i8 %1232 to i64
  %1234 = getelementptr inbounds i64, ptr %13, i64 %1233
  %1235 = load i64, ptr %1234, align 8, !tbaa !14
  %1236 = and i64 %1235, 255
  %1237 = lshr i64 %1230, %1236
  %1238 = and i64 %1235, -256
  %1239 = add i64 %1197, %1190
  %1240 = add i64 %1239, %1204
  %1241 = add i64 %1240, %1211
  %1242 = add i64 %1241, %1227
  %1243 = add i64 %1242, %1235
  %1244 = and i64 %1243, 255
  %1245 = lshr i64 %1160, %1244
  %1246 = or i64 %1245, %1238
  %1247 = or i64 %1246, %1237
  %1248 = add i64 %1243, %1166
  %1249 = and i64 %1248, 255
  %1250 = lshr i64 %1249, 3
  %1251 = sub nsw i64 64, %1249
  %1252 = lshr i64 %1247, %1251
  %1253 = and i64 %1248, 7
  store i64 %1252, ptr %1167, align 1, !tbaa !14
  %1254 = getelementptr inbounds i8, ptr %1167, i64 %1250
  %1255 = add nsw i64 %1102, -12
  %1256 = icmp sgt i64 %1102, 12
  br i1 %1256, label %1101, label %2511, !llvm.loop !80

1257:                                             ; preds = %304
  %1258 = srem i32 %306, 7
  %1259 = icmp sgt i32 %1258, 0
  br i1 %1259, label %1260, label %1331

1260:                                             ; preds = %1257
  %1261 = xor i32 %306, -2147483648
  %1262 = add nsw i32 %1258, -1
  %1263 = icmp ugt i32 %1261, %1262
  br i1 %1263, label %1264, label %1300, !nosanitize !53

1264:                                             ; preds = %1260
  %1265 = and i32 %1258, 1
  %1266 = icmp eq i32 %1262, 0
  br i1 %1266, label %1301, label %1267

1267:                                             ; preds = %1264
  %1268 = and i32 %1258, 2147483646
  br label %1269

1269:                                             ; preds = %1269, %1267
  %1270 = phi i32 [ %306, %1267 ], [ %1286, %1269 ]
  %1271 = phi i64 [ 0, %1267 ], [ %1296, %1269 ]
  %1272 = phi i64 [ 0, %1267 ], [ %1297, %1269 ]
  %1273 = phi i32 [ 0, %1267 ], [ %1298, %1269 ]
  %1274 = add i32 %1270, -1
  %1275 = sext i32 %1274 to i64
  %1276 = getelementptr inbounds i8, ptr %2, i64 %1275
  %1277 = load i8, ptr %1276, align 1, !tbaa !5
  %1278 = zext i8 %1277 to i64
  %1279 = getelementptr inbounds i64, ptr %13, i64 %1278
  %1280 = load i64, ptr %1279, align 8, !tbaa !14
  %1281 = and i64 %1280, 255
  %1282 = lshr i64 %1271, %1281
  %1283 = and i64 %1280, -256
  %1284 = or i64 %1282, %1283
  %1285 = add i64 %1280, %1272
  %1286 = add i32 %1270, -2
  %1287 = sext i32 %1286 to i64
  %1288 = getelementptr inbounds i8, ptr %2, i64 %1287
  %1289 = load i8, ptr %1288, align 1, !tbaa !5
  %1290 = zext i8 %1289 to i64
  %1291 = getelementptr inbounds i64, ptr %13, i64 %1290
  %1292 = load i64, ptr %1291, align 8, !tbaa !14
  %1293 = and i64 %1292, 255
  %1294 = lshr i64 %1284, %1293
  %1295 = and i64 %1292, -256
  %1296 = or i64 %1294, %1295
  %1297 = add i64 %1292, %1285
  %1298 = add i32 %1273, 2
  %1299 = icmp eq i32 %1298, %1268
  br i1 %1299, label %1301, label %1269, !llvm.loop !79

1300:                                             ; preds = %1550, %1547, %1544, %1541, %1538, %1459, %1260, %1356, %1353, %1350, %1347, %1344, %1341, %1338
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !53
  unreachable, !nosanitize !53

1301:                                             ; preds = %1269, %1264
  %1302 = phi i64 [ undef, %1264 ], [ %1296, %1269 ]
  %1303 = phi i64 [ undef, %1264 ], [ %1297, %1269 ]
  %1304 = phi i32 [ %306, %1264 ], [ %1286, %1269 ]
  %1305 = phi i64 [ 0, %1264 ], [ %1296, %1269 ]
  %1306 = phi i64 [ 0, %1264 ], [ %1297, %1269 ]
  %1307 = icmp eq i32 %1265, 0
  br i1 %1307, label %1321, label %1308

1308:                                             ; preds = %1301
  %1309 = add i32 %1304, -1
  %1310 = sext i32 %1309 to i64
  %1311 = getelementptr inbounds i8, ptr %2, i64 %1310
  %1312 = load i8, ptr %1311, align 1, !tbaa !5
  %1313 = zext i8 %1312 to i64
  %1314 = getelementptr inbounds i64, ptr %13, i64 %1313
  %1315 = load i64, ptr %1314, align 8, !tbaa !14
  %1316 = and i64 %1315, 255
  %1317 = lshr i64 %1305, %1316
  %1318 = and i64 %1315, -256
  %1319 = or i64 %1317, %1318
  %1320 = add i64 %1315, %1306
  br label %1321

1321:                                             ; preds = %1301, %1308
  %1322 = phi i64 [ %1302, %1301 ], [ %1319, %1308 ]
  %1323 = phi i64 [ %1303, %1301 ], [ %1320, %1308 ]
  %1324 = sub nsw i32 %306, %1258
  %1325 = and i64 %1323, 255
  %1326 = lshr i64 %1325, 3
  %1327 = sub nsw i64 64, %1325
  %1328 = lshr i64 %1322, %1327
  %1329 = and i64 %1323, 7
  store i64 %1328, ptr %0, align 1, !tbaa !14
  %1330 = getelementptr inbounds i8, ptr %0, i64 %1326
  br label %1331

1331:                                             ; preds = %1321, %1257
  %1332 = phi i64 [ %1329, %1321 ], [ 0, %1257 ]
  %1333 = phi ptr [ %1330, %1321 ], [ %0, %1257 ]
  %1334 = phi i64 [ %1322, %1321 ], [ 0, %1257 ]
  %1335 = phi i32 [ %1324, %1321 ], [ %306, %1257 ]
  %1336 = srem i32 %1335, 14
  %1337 = icmp eq i32 %1336, 0
  br i1 %1337, label %1444, label %1338

1338:                                             ; preds = %1331
  %1339 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1335, i32 -1)
  %1340 = extractvalue { i32, i1 } %1339, 1, !nosanitize !53
  br i1 %1340, label %1300, label %1341, !nosanitize !53

1341:                                             ; preds = %1338
  %1342 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1335, i32 -2)
  %1343 = extractvalue { i32, i1 } %1342, 1, !nosanitize !53
  br i1 %1343, label %1300, label %1344, !nosanitize !53

1344:                                             ; preds = %1341
  %1345 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1335, i32 -3)
  %1346 = extractvalue { i32, i1 } %1345, 1, !nosanitize !53
  br i1 %1346, label %1300, label %1347, !nosanitize !53

1347:                                             ; preds = %1344
  %1348 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1335, i32 -4)
  %1349 = extractvalue { i32, i1 } %1348, 1, !nosanitize !53
  br i1 %1349, label %1300, label %1350, !nosanitize !53

1350:                                             ; preds = %1347
  %1351 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1335, i32 -5)
  %1352 = extractvalue { i32, i1 } %1351, 1, !nosanitize !53
  br i1 %1352, label %1300, label %1353, !nosanitize !53

1353:                                             ; preds = %1350
  %1354 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1335, i32 -6)
  %1355 = extractvalue { i32, i1 } %1354, 1, !nosanitize !53
  br i1 %1355, label %1300, label %1356, !nosanitize !53

1356:                                             ; preds = %1353
  %1357 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1335, i32 -7)
  %1358 = extractvalue { i32, i1 } %1357, 1, !nosanitize !53
  br i1 %1358, label %1300, label %1359, !nosanitize !53

1359:                                             ; preds = %1356
  %1360 = extractvalue { i32, i1 } %1354, 0, !nosanitize !53
  %1361 = sext i32 %1360 to i64
  %1362 = getelementptr inbounds i8, ptr %2, i64 %1361
  %1363 = load i8, ptr %1362, align 1, !tbaa !5
  %1364 = zext i8 %1363 to i64
  %1365 = getelementptr inbounds i64, ptr %13, i64 %1364
  %1366 = load i64, ptr %1365, align 8, !tbaa !14
  %1367 = extractvalue { i32, i1 } %1351, 0, !nosanitize !53
  %1368 = sext i32 %1367 to i64
  %1369 = getelementptr inbounds i8, ptr %2, i64 %1368
  %1370 = load i8, ptr %1369, align 1, !tbaa !5
  %1371 = zext i8 %1370 to i64
  %1372 = getelementptr inbounds i64, ptr %13, i64 %1371
  %1373 = load i64, ptr %1372, align 8, !tbaa !14
  %1374 = extractvalue { i32, i1 } %1348, 0, !nosanitize !53
  %1375 = sext i32 %1374 to i64
  %1376 = getelementptr inbounds i8, ptr %2, i64 %1375
  %1377 = load i8, ptr %1376, align 1, !tbaa !5
  %1378 = zext i8 %1377 to i64
  %1379 = getelementptr inbounds i64, ptr %13, i64 %1378
  %1380 = load i64, ptr %1379, align 8, !tbaa !14
  %1381 = extractvalue { i32, i1 } %1345, 0, !nosanitize !53
  %1382 = sext i32 %1381 to i64
  %1383 = getelementptr inbounds i8, ptr %2, i64 %1382
  %1384 = load i8, ptr %1383, align 1, !tbaa !5
  %1385 = zext i8 %1384 to i64
  %1386 = getelementptr inbounds i64, ptr %13, i64 %1385
  %1387 = load i64, ptr %1386, align 8, !tbaa !14
  %1388 = extractvalue { i32, i1 } %1342, 0, !nosanitize !53
  %1389 = sext i32 %1388 to i64
  %1390 = getelementptr inbounds i8, ptr %2, i64 %1389
  %1391 = load i8, ptr %1390, align 1, !tbaa !5
  %1392 = zext i8 %1391 to i64
  %1393 = getelementptr inbounds i64, ptr %13, i64 %1392
  %1394 = load i64, ptr %1393, align 8, !tbaa !14
  %1395 = extractvalue { i32, i1 } %1339, 0, !nosanitize !53
  %1396 = sext i32 %1395 to i64
  %1397 = getelementptr inbounds i8, ptr %2, i64 %1396
  %1398 = load i8, ptr %1397, align 1, !tbaa !5
  %1399 = zext i8 %1398 to i64
  %1400 = getelementptr inbounds i64, ptr %13, i64 %1399
  %1401 = load i64, ptr %1400, align 8, !tbaa !14
  %1402 = and i64 %1401, 255
  %1403 = lshr i64 %1334, %1402
  %1404 = or i64 %1403, %1401
  %1405 = and i64 %1394, 255
  %1406 = lshr i64 %1404, %1405
  %1407 = or i64 %1406, %1394
  %1408 = and i64 %1387, 255
  %1409 = lshr i64 %1407, %1408
  %1410 = or i64 %1409, %1387
  %1411 = and i64 %1380, 255
  %1412 = lshr i64 %1410, %1411
  %1413 = or i64 %1412, %1380
  %1414 = and i64 %1373, 255
  %1415 = lshr i64 %1413, %1414
  %1416 = or i64 %1415, %1373
  %1417 = and i64 %1366, 255
  %1418 = lshr i64 %1416, %1417
  %1419 = or i64 %1418, %1366
  %1420 = extractvalue { i32, i1 } %1357, 0, !nosanitize !53
  %1421 = sext i32 %1420 to i64
  %1422 = getelementptr inbounds i8, ptr %2, i64 %1421
  %1423 = load i8, ptr %1422, align 1, !tbaa !5
  %1424 = zext i8 %1423 to i64
  %1425 = getelementptr inbounds i64, ptr %13, i64 %1424
  %1426 = load i64, ptr %1425, align 8, !tbaa !14
  %1427 = and i64 %1426, 255
  %1428 = lshr i64 %1419, %1427
  %1429 = and i64 %1426, -256
  %1430 = or i64 %1428, %1429
  %1431 = add i64 %1366, %1332
  %1432 = add i64 %1431, %1373
  %1433 = add i64 %1432, %1380
  %1434 = add i64 %1433, %1387
  %1435 = add i64 %1434, %1394
  %1436 = add i64 %1435, %1401
  %1437 = add i64 %1436, %1426
  %1438 = and i64 %1437, 255
  %1439 = lshr i64 %1438, 3
  %1440 = sub nsw i64 64, %1438
  %1441 = lshr i64 %1430, %1440
  %1442 = and i64 %1437, 7
  store i64 %1441, ptr %1333, align 1, !tbaa !14
  %1443 = getelementptr inbounds i8, ptr %1333, i64 %1439
  br label %1444

1444:                                             ; preds = %1359, %1331
  %1445 = phi i64 [ %1332, %1331 ], [ %1442, %1359 ]
  %1446 = phi ptr [ %1333, %1331 ], [ %1443, %1359 ]
  %1447 = phi i64 [ %1334, %1331 ], [ %1430, %1359 ]
  %1448 = phi i32 [ %1335, %1331 ], [ %1420, %1359 ]
  %1449 = getelementptr i8, ptr %2, i64 -14
  %1450 = icmp sgt i32 %1448, 0
  br i1 %1450, label %1451, label %2511

1451:                                             ; preds = %1444
  %1452 = zext nneg i32 %1448 to i64
  %1453 = getelementptr i8, ptr %2, i64 -1
  %1454 = getelementptr i8, ptr %2, i64 -2
  %1455 = getelementptr i8, ptr %2, i64 -3
  %1456 = getelementptr i8, ptr %2, i64 -4
  %1457 = getelementptr i8, ptr %2, i64 -5
  %1458 = getelementptr i8, ptr %2, i64 -6
  br label %1459

1459:                                             ; preds = %1553, %1451
  %1460 = phi i64 [ %1452, %1451 ], [ %1636, %1553 ]
  %1461 = phi i64 [ %1447, %1451 ], [ %1628, %1553 ]
  %1462 = phi ptr [ %1446, %1451 ], [ %1635, %1553 ]
  %1463 = phi i64 [ %1445, %1451 ], [ %1634, %1553 ]
  %1464 = getelementptr i8, ptr %1453, i64 %1460
  %1465 = load i8, ptr %1464, align 1, !tbaa !5
  %1466 = zext i8 %1465 to i64
  %1467 = getelementptr inbounds i64, ptr %13, i64 %1466
  %1468 = load i64, ptr %1467, align 8, !tbaa !14
  %1469 = and i64 %1468, 255
  %1470 = lshr i64 %1461, %1469
  %1471 = or i64 %1470, %1468
  %1472 = add i64 %1468, %1463
  %1473 = getelementptr i8, ptr %1454, i64 %1460
  %1474 = load i8, ptr %1473, align 1, !tbaa !5
  %1475 = zext i8 %1474 to i64
  %1476 = getelementptr inbounds i64, ptr %13, i64 %1475
  %1477 = load i64, ptr %1476, align 8, !tbaa !14
  %1478 = and i64 %1477, 255
  %1479 = lshr i64 %1471, %1478
  %1480 = or i64 %1479, %1477
  %1481 = add i64 %1472, %1477
  %1482 = getelementptr i8, ptr %1455, i64 %1460
  %1483 = load i8, ptr %1482, align 1, !tbaa !5
  %1484 = zext i8 %1483 to i64
  %1485 = getelementptr inbounds i64, ptr %13, i64 %1484
  %1486 = load i64, ptr %1485, align 8, !tbaa !14
  %1487 = and i64 %1486, 255
  %1488 = lshr i64 %1480, %1487
  %1489 = or i64 %1488, %1486
  %1490 = add i64 %1481, %1486
  %1491 = getelementptr i8, ptr %1456, i64 %1460
  %1492 = load i8, ptr %1491, align 1, !tbaa !5
  %1493 = zext i8 %1492 to i64
  %1494 = getelementptr inbounds i64, ptr %13, i64 %1493
  %1495 = load i64, ptr %1494, align 8, !tbaa !14
  %1496 = and i64 %1495, 255
  %1497 = lshr i64 %1489, %1496
  %1498 = or i64 %1497, %1495
  %1499 = add i64 %1490, %1495
  %1500 = getelementptr i8, ptr %1457, i64 %1460
  %1501 = load i8, ptr %1500, align 1, !tbaa !5
  %1502 = zext i8 %1501 to i64
  %1503 = getelementptr inbounds i64, ptr %13, i64 %1502
  %1504 = load i64, ptr %1503, align 8, !tbaa !14
  %1505 = and i64 %1504, 255
  %1506 = lshr i64 %1498, %1505
  %1507 = or i64 %1506, %1504
  %1508 = add i64 %1499, %1504
  %1509 = getelementptr i8, ptr %1458, i64 %1460
  %1510 = load i8, ptr %1509, align 1, !tbaa !5
  %1511 = zext i8 %1510 to i64
  %1512 = getelementptr inbounds i64, ptr %13, i64 %1511
  %1513 = load i64, ptr %1512, align 8, !tbaa !14
  %1514 = and i64 %1513, 255
  %1515 = lshr i64 %1507, %1514
  %1516 = or i64 %1515, %1513
  %1517 = add i64 %1508, %1513
  %1518 = add nsw i64 %1460, -7
  %1519 = getelementptr inbounds i8, ptr %2, i64 %1518
  %1520 = load i8, ptr %1519, align 1, !tbaa !5
  %1521 = zext i8 %1520 to i64
  %1522 = getelementptr inbounds i64, ptr %13, i64 %1521
  %1523 = load i64, ptr %1522, align 8, !tbaa !14
  %1524 = and i64 %1523, 255
  %1525 = lshr i64 %1516, %1524
  %1526 = and i64 %1523, -256
  %1527 = or i64 %1525, %1526
  %1528 = add i64 %1517, %1523
  %1529 = and i64 %1528, 255
  %1530 = lshr i64 %1529, 3
  %1531 = sub nsw i64 64, %1529
  %1532 = lshr i64 %1527, %1531
  %1533 = and i64 %1528, 7
  store i64 %1532, ptr %1462, align 1, !tbaa !14
  %1534 = getelementptr inbounds i8, ptr %1462, i64 %1530
  %1535 = trunc i64 %1518 to i32
  %1536 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1535, i32 -1)
  %1537 = extractvalue { i32, i1 } %1536, 1, !nosanitize !53
  br i1 %1537, label %1300, label %1538, !nosanitize !53

1538:                                             ; preds = %1459
  %1539 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1535, i32 -2)
  %1540 = extractvalue { i32, i1 } %1539, 1, !nosanitize !53
  br i1 %1540, label %1300, label %1541, !nosanitize !53

1541:                                             ; preds = %1538
  %1542 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1535, i32 -3)
  %1543 = extractvalue { i32, i1 } %1542, 1, !nosanitize !53
  br i1 %1543, label %1300, label %1544, !nosanitize !53

1544:                                             ; preds = %1541
  %1545 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1535, i32 -4)
  %1546 = extractvalue { i32, i1 } %1545, 1, !nosanitize !53
  br i1 %1546, label %1300, label %1547, !nosanitize !53

1547:                                             ; preds = %1544
  %1548 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1535, i32 -5)
  %1549 = extractvalue { i32, i1 } %1548, 1, !nosanitize !53
  br i1 %1549, label %1300, label %1550, !nosanitize !53

1550:                                             ; preds = %1547
  %1551 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1535, i32 -6)
  %1552 = extractvalue { i32, i1 } %1551, 1, !nosanitize !53
  br i1 %1552, label %1300, label %1553, !nosanitize !53

1553:                                             ; preds = %1550
  %1554 = extractvalue { i32, i1 } %1548, 0, !nosanitize !53
  %1555 = sext i32 %1554 to i64
  %1556 = getelementptr inbounds i8, ptr %2, i64 %1555
  %1557 = load i8, ptr %1556, align 1, !tbaa !5
  %1558 = zext i8 %1557 to i64
  %1559 = getelementptr inbounds i64, ptr %13, i64 %1558
  %1560 = load i64, ptr %1559, align 8, !tbaa !14
  %1561 = extractvalue { i32, i1 } %1545, 0, !nosanitize !53
  %1562 = sext i32 %1561 to i64
  %1563 = getelementptr inbounds i8, ptr %2, i64 %1562
  %1564 = load i8, ptr %1563, align 1, !tbaa !5
  %1565 = zext i8 %1564 to i64
  %1566 = getelementptr inbounds i64, ptr %13, i64 %1565
  %1567 = load i64, ptr %1566, align 8, !tbaa !14
  %1568 = extractvalue { i32, i1 } %1542, 0, !nosanitize !53
  %1569 = sext i32 %1568 to i64
  %1570 = getelementptr inbounds i8, ptr %2, i64 %1569
  %1571 = load i8, ptr %1570, align 1, !tbaa !5
  %1572 = zext i8 %1571 to i64
  %1573 = getelementptr inbounds i64, ptr %13, i64 %1572
  %1574 = load i64, ptr %1573, align 8, !tbaa !14
  %1575 = extractvalue { i32, i1 } %1539, 0, !nosanitize !53
  %1576 = sext i32 %1575 to i64
  %1577 = getelementptr inbounds i8, ptr %2, i64 %1576
  %1578 = load i8, ptr %1577, align 1, !tbaa !5
  %1579 = zext i8 %1578 to i64
  %1580 = getelementptr inbounds i64, ptr %13, i64 %1579
  %1581 = load i64, ptr %1580, align 8, !tbaa !14
  %1582 = extractvalue { i32, i1 } %1536, 0, !nosanitize !53
  %1583 = sext i32 %1582 to i64
  %1584 = getelementptr inbounds i8, ptr %2, i64 %1583
  %1585 = load i8, ptr %1584, align 1, !tbaa !5
  %1586 = zext i8 %1585 to i64
  %1587 = getelementptr inbounds i64, ptr %13, i64 %1586
  %1588 = load i64, ptr %1587, align 8, !tbaa !14
  %1589 = and i64 %1581, 255
  %1590 = lshr i64 %1588, %1589
  %1591 = or i64 %1590, %1581
  %1592 = and i64 %1574, 255
  %1593 = lshr i64 %1591, %1592
  %1594 = or i64 %1593, %1574
  %1595 = and i64 %1567, 255
  %1596 = lshr i64 %1594, %1595
  %1597 = or i64 %1596, %1567
  %1598 = and i64 %1560, 255
  %1599 = lshr i64 %1597, %1598
  %1600 = or i64 %1599, %1560
  %1601 = extractvalue { i32, i1 } %1551, 0, !nosanitize !53
  %1602 = sext i32 %1601 to i64
  %1603 = getelementptr inbounds i8, ptr %2, i64 %1602
  %1604 = load i8, ptr %1603, align 1, !tbaa !5
  %1605 = zext i8 %1604 to i64
  %1606 = getelementptr inbounds i64, ptr %13, i64 %1605
  %1607 = load i64, ptr %1606, align 8, !tbaa !14
  %1608 = and i64 %1607, 255
  %1609 = lshr i64 %1600, %1608
  %1610 = or i64 %1609, %1607
  %1611 = getelementptr i8, ptr %1449, i64 %1460
  %1612 = load i8, ptr %1611, align 1, !tbaa !5
  %1613 = zext i8 %1612 to i64
  %1614 = getelementptr inbounds i64, ptr %13, i64 %1613
  %1615 = load i64, ptr %1614, align 8, !tbaa !14
  %1616 = and i64 %1615, 255
  %1617 = lshr i64 %1610, %1616
  %1618 = and i64 %1615, -256
  %1619 = add i64 %1567, %1560
  %1620 = add i64 %1619, %1574
  %1621 = add i64 %1620, %1581
  %1622 = add i64 %1621, %1588
  %1623 = add i64 %1622, %1607
  %1624 = add i64 %1623, %1615
  %1625 = and i64 %1624, 255
  %1626 = lshr i64 %1527, %1625
  %1627 = or i64 %1626, %1618
  %1628 = or i64 %1627, %1617
  %1629 = add i64 %1624, %1533
  %1630 = and i64 %1629, 255
  %1631 = lshr i64 %1630, 3
  %1632 = sub nsw i64 64, %1630
  %1633 = lshr i64 %1628, %1632
  %1634 = and i64 %1629, 7
  store i64 %1633, ptr %1534, align 1, !tbaa !14
  %1635 = getelementptr inbounds i8, ptr %1534, i64 %1631
  %1636 = add nsw i64 %1460, -14
  %1637 = icmp sgt i64 %1460, 14
  br i1 %1637, label %1459, label %2511, !llvm.loop !80

1638:                                             ; preds = %304
  %1639 = srem i32 %306, 8
  %1640 = icmp sgt i32 %1639, 0
  br i1 %1640, label %1641, label %1712

1641:                                             ; preds = %1638
  %1642 = xor i32 %306, -2147483648
  %1643 = add nsw i32 %1639, -1
  %1644 = icmp ugt i32 %1642, %1643
  br i1 %1644, label %1645, label %1681, !nosanitize !53

1645:                                             ; preds = %1641
  %1646 = and i32 %1639, 1
  %1647 = icmp eq i32 %1643, 0
  br i1 %1647, label %1682, label %1648

1648:                                             ; preds = %1645
  %1649 = and i32 %1639, 2147483646
  br label %1650

1650:                                             ; preds = %1650, %1648
  %1651 = phi i32 [ %306, %1648 ], [ %1667, %1650 ]
  %1652 = phi i64 [ 0, %1648 ], [ %1677, %1650 ]
  %1653 = phi i64 [ 0, %1648 ], [ %1678, %1650 ]
  %1654 = phi i32 [ 0, %1648 ], [ %1679, %1650 ]
  %1655 = add i32 %1651, -1
  %1656 = sext i32 %1655 to i64
  %1657 = getelementptr inbounds i8, ptr %2, i64 %1656
  %1658 = load i8, ptr %1657, align 1, !tbaa !5
  %1659 = zext i8 %1658 to i64
  %1660 = getelementptr inbounds i64, ptr %13, i64 %1659
  %1661 = load i64, ptr %1660, align 8, !tbaa !14
  %1662 = and i64 %1661, 255
  %1663 = lshr i64 %1652, %1662
  %1664 = and i64 %1661, -256
  %1665 = or i64 %1663, %1664
  %1666 = add i64 %1661, %1653
  %1667 = add i32 %1651, -2
  %1668 = sext i32 %1667 to i64
  %1669 = getelementptr inbounds i8, ptr %2, i64 %1668
  %1670 = load i8, ptr %1669, align 1, !tbaa !5
  %1671 = zext i8 %1670 to i64
  %1672 = getelementptr inbounds i64, ptr %13, i64 %1671
  %1673 = load i64, ptr %1672, align 8, !tbaa !14
  %1674 = and i64 %1673, 255
  %1675 = lshr i64 %1665, %1674
  %1676 = and i64 %1673, -256
  %1677 = or i64 %1675, %1676
  %1678 = add i64 %1673, %1666
  %1679 = add i32 %1654, 2
  %1680 = icmp eq i32 %1679, %1649
  br i1 %1680, label %1682, label %1650, !llvm.loop !79

1681:                                             ; preds = %1958, %1955, %1952, %1949, %1946, %1943, %1855, %1641, %1740, %1737, %1734, %1731, %1728, %1725, %1722, %1719
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !53
  unreachable, !nosanitize !53

1682:                                             ; preds = %1650, %1645
  %1683 = phi i64 [ undef, %1645 ], [ %1677, %1650 ]
  %1684 = phi i64 [ undef, %1645 ], [ %1678, %1650 ]
  %1685 = phi i32 [ %306, %1645 ], [ %1667, %1650 ]
  %1686 = phi i64 [ 0, %1645 ], [ %1677, %1650 ]
  %1687 = phi i64 [ 0, %1645 ], [ %1678, %1650 ]
  %1688 = icmp eq i32 %1646, 0
  br i1 %1688, label %1702, label %1689

1689:                                             ; preds = %1682
  %1690 = add i32 %1685, -1
  %1691 = sext i32 %1690 to i64
  %1692 = getelementptr inbounds i8, ptr %2, i64 %1691
  %1693 = load i8, ptr %1692, align 1, !tbaa !5
  %1694 = zext i8 %1693 to i64
  %1695 = getelementptr inbounds i64, ptr %13, i64 %1694
  %1696 = load i64, ptr %1695, align 8, !tbaa !14
  %1697 = and i64 %1696, 255
  %1698 = lshr i64 %1686, %1697
  %1699 = and i64 %1696, -256
  %1700 = or i64 %1698, %1699
  %1701 = add i64 %1696, %1687
  br label %1702

1702:                                             ; preds = %1682, %1689
  %1703 = phi i64 [ %1683, %1682 ], [ %1700, %1689 ]
  %1704 = phi i64 [ %1684, %1682 ], [ %1701, %1689 ]
  %1705 = sub nsw i32 %306, %1639
  %1706 = and i64 %1704, 255
  %1707 = lshr i64 %1706, 3
  %1708 = sub nsw i64 64, %1706
  %1709 = lshr i64 %1703, %1708
  %1710 = and i64 %1704, 7
  store i64 %1709, ptr %0, align 1, !tbaa !14
  %1711 = getelementptr inbounds i8, ptr %0, i64 %1707
  br label %1712

1712:                                             ; preds = %1702, %1638
  %1713 = phi i64 [ %1710, %1702 ], [ 0, %1638 ]
  %1714 = phi ptr [ %1711, %1702 ], [ %0, %1638 ]
  %1715 = phi i64 [ %1703, %1702 ], [ 0, %1638 ]
  %1716 = phi i32 [ %1705, %1702 ], [ %306, %1638 ]
  %1717 = and i32 %1716, 15
  %1718 = icmp eq i32 %1717, 0
  br i1 %1718, label %1839, label %1719

1719:                                             ; preds = %1712
  %1720 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1716, i32 -1)
  %1721 = extractvalue { i32, i1 } %1720, 1, !nosanitize !53
  br i1 %1721, label %1681, label %1722, !nosanitize !53

1722:                                             ; preds = %1719
  %1723 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1716, i32 -2)
  %1724 = extractvalue { i32, i1 } %1723, 1, !nosanitize !53
  br i1 %1724, label %1681, label %1725, !nosanitize !53

1725:                                             ; preds = %1722
  %1726 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1716, i32 -3)
  %1727 = extractvalue { i32, i1 } %1726, 1, !nosanitize !53
  br i1 %1727, label %1681, label %1728, !nosanitize !53

1728:                                             ; preds = %1725
  %1729 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1716, i32 -4)
  %1730 = extractvalue { i32, i1 } %1729, 1, !nosanitize !53
  br i1 %1730, label %1681, label %1731, !nosanitize !53

1731:                                             ; preds = %1728
  %1732 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1716, i32 -5)
  %1733 = extractvalue { i32, i1 } %1732, 1, !nosanitize !53
  br i1 %1733, label %1681, label %1734, !nosanitize !53

1734:                                             ; preds = %1731
  %1735 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1716, i32 -6)
  %1736 = extractvalue { i32, i1 } %1735, 1, !nosanitize !53
  br i1 %1736, label %1681, label %1737, !nosanitize !53

1737:                                             ; preds = %1734
  %1738 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1716, i32 -7)
  %1739 = extractvalue { i32, i1 } %1738, 1, !nosanitize !53
  br i1 %1739, label %1681, label %1740, !nosanitize !53

1740:                                             ; preds = %1737
  %1741 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1716, i32 -8)
  %1742 = extractvalue { i32, i1 } %1741, 1, !nosanitize !53
  br i1 %1742, label %1681, label %1743, !nosanitize !53

1743:                                             ; preds = %1740
  %1744 = extractvalue { i32, i1 } %1738, 0, !nosanitize !53
  %1745 = sext i32 %1744 to i64
  %1746 = getelementptr inbounds i8, ptr %2, i64 %1745
  %1747 = load i8, ptr %1746, align 1, !tbaa !5
  %1748 = zext i8 %1747 to i64
  %1749 = getelementptr inbounds i64, ptr %13, i64 %1748
  %1750 = load i64, ptr %1749, align 8, !tbaa !14
  %1751 = extractvalue { i32, i1 } %1735, 0, !nosanitize !53
  %1752 = sext i32 %1751 to i64
  %1753 = getelementptr inbounds i8, ptr %2, i64 %1752
  %1754 = load i8, ptr %1753, align 1, !tbaa !5
  %1755 = zext i8 %1754 to i64
  %1756 = getelementptr inbounds i64, ptr %13, i64 %1755
  %1757 = load i64, ptr %1756, align 8, !tbaa !14
  %1758 = extractvalue { i32, i1 } %1732, 0, !nosanitize !53
  %1759 = sext i32 %1758 to i64
  %1760 = getelementptr inbounds i8, ptr %2, i64 %1759
  %1761 = load i8, ptr %1760, align 1, !tbaa !5
  %1762 = zext i8 %1761 to i64
  %1763 = getelementptr inbounds i64, ptr %13, i64 %1762
  %1764 = load i64, ptr %1763, align 8, !tbaa !14
  %1765 = extractvalue { i32, i1 } %1729, 0, !nosanitize !53
  %1766 = sext i32 %1765 to i64
  %1767 = getelementptr inbounds i8, ptr %2, i64 %1766
  %1768 = load i8, ptr %1767, align 1, !tbaa !5
  %1769 = zext i8 %1768 to i64
  %1770 = getelementptr inbounds i64, ptr %13, i64 %1769
  %1771 = load i64, ptr %1770, align 8, !tbaa !14
  %1772 = extractvalue { i32, i1 } %1726, 0, !nosanitize !53
  %1773 = sext i32 %1772 to i64
  %1774 = getelementptr inbounds i8, ptr %2, i64 %1773
  %1775 = load i8, ptr %1774, align 1, !tbaa !5
  %1776 = zext i8 %1775 to i64
  %1777 = getelementptr inbounds i64, ptr %13, i64 %1776
  %1778 = load i64, ptr %1777, align 8, !tbaa !14
  %1779 = extractvalue { i32, i1 } %1723, 0, !nosanitize !53
  %1780 = sext i32 %1779 to i64
  %1781 = getelementptr inbounds i8, ptr %2, i64 %1780
  %1782 = load i8, ptr %1781, align 1, !tbaa !5
  %1783 = zext i8 %1782 to i64
  %1784 = getelementptr inbounds i64, ptr %13, i64 %1783
  %1785 = load i64, ptr %1784, align 8, !tbaa !14
  %1786 = extractvalue { i32, i1 } %1720, 0, !nosanitize !53
  %1787 = sext i32 %1786 to i64
  %1788 = getelementptr inbounds i8, ptr %2, i64 %1787
  %1789 = load i8, ptr %1788, align 1, !tbaa !5
  %1790 = zext i8 %1789 to i64
  %1791 = getelementptr inbounds i64, ptr %13, i64 %1790
  %1792 = load i64, ptr %1791, align 8, !tbaa !14
  %1793 = and i64 %1792, 255
  %1794 = lshr i64 %1715, %1793
  %1795 = or i64 %1794, %1792
  %1796 = and i64 %1785, 255
  %1797 = lshr i64 %1795, %1796
  %1798 = or i64 %1797, %1785
  %1799 = and i64 %1778, 255
  %1800 = lshr i64 %1798, %1799
  %1801 = or i64 %1800, %1778
  %1802 = and i64 %1771, 255
  %1803 = lshr i64 %1801, %1802
  %1804 = or i64 %1803, %1771
  %1805 = and i64 %1764, 255
  %1806 = lshr i64 %1804, %1805
  %1807 = or i64 %1806, %1764
  %1808 = and i64 %1757, 255
  %1809 = lshr i64 %1807, %1808
  %1810 = or i64 %1809, %1757
  %1811 = and i64 %1750, 255
  %1812 = lshr i64 %1810, %1811
  %1813 = or i64 %1812, %1750
  %1814 = extractvalue { i32, i1 } %1741, 0, !nosanitize !53
  %1815 = sext i32 %1814 to i64
  %1816 = getelementptr inbounds i8, ptr %2, i64 %1815
  %1817 = load i8, ptr %1816, align 1, !tbaa !5
  %1818 = zext i8 %1817 to i64
  %1819 = getelementptr inbounds i64, ptr %13, i64 %1818
  %1820 = load i64, ptr %1819, align 8, !tbaa !14
  %1821 = and i64 %1820, 255
  %1822 = lshr i64 %1813, %1821
  %1823 = and i64 %1820, -256
  %1824 = or i64 %1822, %1823
  %1825 = add i64 %1750, %1713
  %1826 = add i64 %1825, %1757
  %1827 = add i64 %1826, %1764
  %1828 = add i64 %1827, %1771
  %1829 = add i64 %1828, %1778
  %1830 = add i64 %1829, %1785
  %1831 = add i64 %1830, %1792
  %1832 = add i64 %1831, %1820
  %1833 = and i64 %1832, 255
  %1834 = lshr i64 %1833, 3
  %1835 = sub nsw i64 64, %1833
  %1836 = lshr i64 %1824, %1835
  %1837 = and i64 %1832, 7
  store i64 %1836, ptr %1714, align 1, !tbaa !14
  %1838 = getelementptr inbounds i8, ptr %1714, i64 %1834
  br label %1839

1839:                                             ; preds = %1743, %1712
  %1840 = phi i64 [ %1713, %1712 ], [ %1837, %1743 ]
  %1841 = phi ptr [ %1714, %1712 ], [ %1838, %1743 ]
  %1842 = phi i64 [ %1715, %1712 ], [ %1824, %1743 ]
  %1843 = phi i32 [ %1716, %1712 ], [ %1814, %1743 ]
  %1844 = getelementptr i8, ptr %2, i64 -16
  %1845 = icmp sgt i32 %1843, 0
  br i1 %1845, label %1846, label %2511

1846:                                             ; preds = %1839
  %1847 = zext nneg i32 %1843 to i64
  %1848 = getelementptr i8, ptr %2, i64 -1
  %1849 = getelementptr i8, ptr %2, i64 -2
  %1850 = getelementptr i8, ptr %2, i64 -3
  %1851 = getelementptr i8, ptr %2, i64 -4
  %1852 = getelementptr i8, ptr %2, i64 -5
  %1853 = getelementptr i8, ptr %2, i64 -6
  %1854 = getelementptr i8, ptr %2, i64 -7
  br label %1855

1855:                                             ; preds = %1961, %1846
  %1856 = phi i64 [ %1847, %1846 ], [ %2055, %1961 ]
  %1857 = phi i64 [ %1842, %1846 ], [ %2047, %1961 ]
  %1858 = phi ptr [ %1841, %1846 ], [ %2054, %1961 ]
  %1859 = phi i64 [ %1840, %1846 ], [ %2053, %1961 ]
  %1860 = getelementptr i8, ptr %1848, i64 %1856
  %1861 = load i8, ptr %1860, align 1, !tbaa !5
  %1862 = zext i8 %1861 to i64
  %1863 = getelementptr inbounds i64, ptr %13, i64 %1862
  %1864 = load i64, ptr %1863, align 8, !tbaa !14
  %1865 = and i64 %1864, 255
  %1866 = lshr i64 %1857, %1865
  %1867 = or i64 %1866, %1864
  %1868 = add i64 %1864, %1859
  %1869 = getelementptr i8, ptr %1849, i64 %1856
  %1870 = load i8, ptr %1869, align 1, !tbaa !5
  %1871 = zext i8 %1870 to i64
  %1872 = getelementptr inbounds i64, ptr %13, i64 %1871
  %1873 = load i64, ptr %1872, align 8, !tbaa !14
  %1874 = and i64 %1873, 255
  %1875 = lshr i64 %1867, %1874
  %1876 = or i64 %1875, %1873
  %1877 = add i64 %1868, %1873
  %1878 = getelementptr i8, ptr %1850, i64 %1856
  %1879 = load i8, ptr %1878, align 1, !tbaa !5
  %1880 = zext i8 %1879 to i64
  %1881 = getelementptr inbounds i64, ptr %13, i64 %1880
  %1882 = load i64, ptr %1881, align 8, !tbaa !14
  %1883 = and i64 %1882, 255
  %1884 = lshr i64 %1876, %1883
  %1885 = or i64 %1884, %1882
  %1886 = add i64 %1877, %1882
  %1887 = getelementptr i8, ptr %1851, i64 %1856
  %1888 = load i8, ptr %1887, align 1, !tbaa !5
  %1889 = zext i8 %1888 to i64
  %1890 = getelementptr inbounds i64, ptr %13, i64 %1889
  %1891 = load i64, ptr %1890, align 8, !tbaa !14
  %1892 = and i64 %1891, 255
  %1893 = lshr i64 %1885, %1892
  %1894 = or i64 %1893, %1891
  %1895 = add i64 %1886, %1891
  %1896 = getelementptr i8, ptr %1852, i64 %1856
  %1897 = load i8, ptr %1896, align 1, !tbaa !5
  %1898 = zext i8 %1897 to i64
  %1899 = getelementptr inbounds i64, ptr %13, i64 %1898
  %1900 = load i64, ptr %1899, align 8, !tbaa !14
  %1901 = and i64 %1900, 255
  %1902 = lshr i64 %1894, %1901
  %1903 = or i64 %1902, %1900
  %1904 = add i64 %1895, %1900
  %1905 = getelementptr i8, ptr %1853, i64 %1856
  %1906 = load i8, ptr %1905, align 1, !tbaa !5
  %1907 = zext i8 %1906 to i64
  %1908 = getelementptr inbounds i64, ptr %13, i64 %1907
  %1909 = load i64, ptr %1908, align 8, !tbaa !14
  %1910 = and i64 %1909, 255
  %1911 = lshr i64 %1903, %1910
  %1912 = or i64 %1911, %1909
  %1913 = add i64 %1904, %1909
  %1914 = getelementptr i8, ptr %1854, i64 %1856
  %1915 = load i8, ptr %1914, align 1, !tbaa !5
  %1916 = zext i8 %1915 to i64
  %1917 = getelementptr inbounds i64, ptr %13, i64 %1916
  %1918 = load i64, ptr %1917, align 8, !tbaa !14
  %1919 = and i64 %1918, 255
  %1920 = lshr i64 %1912, %1919
  %1921 = or i64 %1920, %1918
  %1922 = add i64 %1913, %1918
  %1923 = add nsw i64 %1856, -8
  %1924 = getelementptr inbounds i8, ptr %2, i64 %1923
  %1925 = load i8, ptr %1924, align 1, !tbaa !5
  %1926 = zext i8 %1925 to i64
  %1927 = getelementptr inbounds i64, ptr %13, i64 %1926
  %1928 = load i64, ptr %1927, align 8, !tbaa !14
  %1929 = and i64 %1928, 255
  %1930 = lshr i64 %1921, %1929
  %1931 = and i64 %1928, -256
  %1932 = or i64 %1930, %1931
  %1933 = add i64 %1922, %1928
  %1934 = and i64 %1933, 255
  %1935 = lshr i64 %1934, 3
  %1936 = sub nsw i64 64, %1934
  %1937 = lshr i64 %1932, %1936
  %1938 = and i64 %1933, 7
  store i64 %1937, ptr %1858, align 1, !tbaa !14
  %1939 = getelementptr inbounds i8, ptr %1858, i64 %1935
  %1940 = trunc i64 %1923 to i32
  %1941 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1940, i32 -1)
  %1942 = extractvalue { i32, i1 } %1941, 1, !nosanitize !53
  br i1 %1942, label %1681, label %1943, !nosanitize !53

1943:                                             ; preds = %1855
  %1944 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1940, i32 -2)
  %1945 = extractvalue { i32, i1 } %1944, 1, !nosanitize !53
  br i1 %1945, label %1681, label %1946, !nosanitize !53

1946:                                             ; preds = %1943
  %1947 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1940, i32 -3)
  %1948 = extractvalue { i32, i1 } %1947, 1, !nosanitize !53
  br i1 %1948, label %1681, label %1949, !nosanitize !53

1949:                                             ; preds = %1946
  %1950 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1940, i32 -4)
  %1951 = extractvalue { i32, i1 } %1950, 1, !nosanitize !53
  br i1 %1951, label %1681, label %1952, !nosanitize !53

1952:                                             ; preds = %1949
  %1953 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1940, i32 -5)
  %1954 = extractvalue { i32, i1 } %1953, 1, !nosanitize !53
  br i1 %1954, label %1681, label %1955, !nosanitize !53

1955:                                             ; preds = %1952
  %1956 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1940, i32 -6)
  %1957 = extractvalue { i32, i1 } %1956, 1, !nosanitize !53
  br i1 %1957, label %1681, label %1958, !nosanitize !53

1958:                                             ; preds = %1955
  %1959 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1940, i32 -7)
  %1960 = extractvalue { i32, i1 } %1959, 1, !nosanitize !53
  br i1 %1960, label %1681, label %1961, !nosanitize !53

1961:                                             ; preds = %1958
  %1962 = extractvalue { i32, i1 } %1956, 0, !nosanitize !53
  %1963 = sext i32 %1962 to i64
  %1964 = getelementptr inbounds i8, ptr %2, i64 %1963
  %1965 = load i8, ptr %1964, align 1, !tbaa !5
  %1966 = zext i8 %1965 to i64
  %1967 = getelementptr inbounds i64, ptr %13, i64 %1966
  %1968 = load i64, ptr %1967, align 8, !tbaa !14
  %1969 = extractvalue { i32, i1 } %1953, 0, !nosanitize !53
  %1970 = sext i32 %1969 to i64
  %1971 = getelementptr inbounds i8, ptr %2, i64 %1970
  %1972 = load i8, ptr %1971, align 1, !tbaa !5
  %1973 = zext i8 %1972 to i64
  %1974 = getelementptr inbounds i64, ptr %13, i64 %1973
  %1975 = load i64, ptr %1974, align 8, !tbaa !14
  %1976 = extractvalue { i32, i1 } %1950, 0, !nosanitize !53
  %1977 = sext i32 %1976 to i64
  %1978 = getelementptr inbounds i8, ptr %2, i64 %1977
  %1979 = load i8, ptr %1978, align 1, !tbaa !5
  %1980 = zext i8 %1979 to i64
  %1981 = getelementptr inbounds i64, ptr %13, i64 %1980
  %1982 = load i64, ptr %1981, align 8, !tbaa !14
  %1983 = extractvalue { i32, i1 } %1947, 0, !nosanitize !53
  %1984 = sext i32 %1983 to i64
  %1985 = getelementptr inbounds i8, ptr %2, i64 %1984
  %1986 = load i8, ptr %1985, align 1, !tbaa !5
  %1987 = zext i8 %1986 to i64
  %1988 = getelementptr inbounds i64, ptr %13, i64 %1987
  %1989 = load i64, ptr %1988, align 8, !tbaa !14
  %1990 = extractvalue { i32, i1 } %1944, 0, !nosanitize !53
  %1991 = sext i32 %1990 to i64
  %1992 = getelementptr inbounds i8, ptr %2, i64 %1991
  %1993 = load i8, ptr %1992, align 1, !tbaa !5
  %1994 = zext i8 %1993 to i64
  %1995 = getelementptr inbounds i64, ptr %13, i64 %1994
  %1996 = load i64, ptr %1995, align 8, !tbaa !14
  %1997 = extractvalue { i32, i1 } %1941, 0, !nosanitize !53
  %1998 = sext i32 %1997 to i64
  %1999 = getelementptr inbounds i8, ptr %2, i64 %1998
  %2000 = load i8, ptr %1999, align 1, !tbaa !5
  %2001 = zext i8 %2000 to i64
  %2002 = getelementptr inbounds i64, ptr %13, i64 %2001
  %2003 = load i64, ptr %2002, align 8, !tbaa !14
  %2004 = and i64 %1996, 255
  %2005 = lshr i64 %2003, %2004
  %2006 = or i64 %2005, %1996
  %2007 = and i64 %1989, 255
  %2008 = lshr i64 %2006, %2007
  %2009 = or i64 %2008, %1989
  %2010 = and i64 %1982, 255
  %2011 = lshr i64 %2009, %2010
  %2012 = or i64 %2011, %1982
  %2013 = and i64 %1975, 255
  %2014 = lshr i64 %2012, %2013
  %2015 = or i64 %2014, %1975
  %2016 = and i64 %1968, 255
  %2017 = lshr i64 %2015, %2016
  %2018 = or i64 %2017, %1968
  %2019 = extractvalue { i32, i1 } %1959, 0, !nosanitize !53
  %2020 = sext i32 %2019 to i64
  %2021 = getelementptr inbounds i8, ptr %2, i64 %2020
  %2022 = load i8, ptr %2021, align 1, !tbaa !5
  %2023 = zext i8 %2022 to i64
  %2024 = getelementptr inbounds i64, ptr %13, i64 %2023
  %2025 = load i64, ptr %2024, align 8, !tbaa !14
  %2026 = and i64 %2025, 255
  %2027 = lshr i64 %2018, %2026
  %2028 = or i64 %2027, %2025
  %2029 = getelementptr i8, ptr %1844, i64 %1856
  %2030 = load i8, ptr %2029, align 1, !tbaa !5
  %2031 = zext i8 %2030 to i64
  %2032 = getelementptr inbounds i64, ptr %13, i64 %2031
  %2033 = load i64, ptr %2032, align 8, !tbaa !14
  %2034 = and i64 %2033, 255
  %2035 = lshr i64 %2028, %2034
  %2036 = and i64 %2033, -256
  %2037 = add i64 %1975, %1968
  %2038 = add i64 %2037, %1982
  %2039 = add i64 %2038, %1989
  %2040 = add i64 %2039, %1996
  %2041 = add i64 %2040, %2003
  %2042 = add i64 %2041, %2025
  %2043 = add i64 %2042, %2033
  %2044 = and i64 %2043, 255
  %2045 = lshr i64 %1932, %2044
  %2046 = or i64 %2045, %2036
  %2047 = or i64 %2046, %2035
  %2048 = add i64 %2043, %1938
  %2049 = and i64 %2048, 255
  %2050 = lshr i64 %2049, 3
  %2051 = sub nsw i64 64, %2049
  %2052 = lshr i64 %2047, %2051
  %2053 = and i64 %2048, 7
  store i64 %2052, ptr %1939, align 1, !tbaa !14
  %2054 = getelementptr inbounds i8, ptr %1939, i64 %2050
  %2055 = add nsw i64 %1856, -16
  %2056 = icmp sgt i64 %1856, 16
  br i1 %2056, label %1855, label %2511, !llvm.loop !80

2057:                                             ; preds = %304
  %2058 = srem i32 %306, 9
  %2059 = icmp sgt i32 %2058, 0
  br i1 %2059, label %2060, label %2131

2060:                                             ; preds = %2057
  %2061 = xor i32 %306, -2147483648
  %2062 = add nsw i32 %2058, -1
  %2063 = icmp ugt i32 %2061, %2062
  br i1 %2063, label %2064, label %2100, !nosanitize !53

2064:                                             ; preds = %2060
  %2065 = and i32 %2058, 1
  %2066 = icmp eq i32 %2062, 0
  br i1 %2066, label %2101, label %2067

2067:                                             ; preds = %2064
  %2068 = and i32 %2058, 2147483646
  br label %2069

2069:                                             ; preds = %2069, %2067
  %2070 = phi i32 [ %306, %2067 ], [ %2086, %2069 ]
  %2071 = phi i64 [ 0, %2067 ], [ %2096, %2069 ]
  %2072 = phi i64 [ 0, %2067 ], [ %2097, %2069 ]
  %2073 = phi i32 [ 0, %2067 ], [ %2098, %2069 ]
  %2074 = add i32 %2070, -1
  %2075 = sext i32 %2074 to i64
  %2076 = getelementptr inbounds i8, ptr %2, i64 %2075
  %2077 = load i8, ptr %2076, align 1, !tbaa !5
  %2078 = zext i8 %2077 to i64
  %2079 = getelementptr inbounds i64, ptr %13, i64 %2078
  %2080 = load i64, ptr %2079, align 8, !tbaa !14
  %2081 = and i64 %2080, 255
  %2082 = lshr i64 %2071, %2081
  %2083 = and i64 %2080, -256
  %2084 = or i64 %2082, %2083
  %2085 = add i64 %2080, %2072
  %2086 = add i32 %2070, -2
  %2087 = sext i32 %2086 to i64
  %2088 = getelementptr inbounds i8, ptr %2, i64 %2087
  %2089 = load i8, ptr %2088, align 1, !tbaa !5
  %2090 = zext i8 %2089 to i64
  %2091 = getelementptr inbounds i64, ptr %13, i64 %2090
  %2092 = load i64, ptr %2091, align 8, !tbaa !14
  %2093 = and i64 %2092, 255
  %2094 = lshr i64 %2084, %2093
  %2095 = and i64 %2092, -256
  %2096 = or i64 %2094, %2095
  %2097 = add i64 %2092, %2085
  %2098 = add i32 %2073, 2
  %2099 = icmp eq i32 %2098, %2068
  br i1 %2099, label %2101, label %2069, !llvm.loop !79

2100:                                             ; preds = %2402, %2399, %2396, %2393, %2390, %2387, %2384, %2288, %2060, %2162, %2159, %2156, %2153, %2150, %2147, %2144, %2141, %2138
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !53
  unreachable, !nosanitize !53

2101:                                             ; preds = %2069, %2064
  %2102 = phi i64 [ undef, %2064 ], [ %2096, %2069 ]
  %2103 = phi i64 [ undef, %2064 ], [ %2097, %2069 ]
  %2104 = phi i32 [ %306, %2064 ], [ %2086, %2069 ]
  %2105 = phi i64 [ 0, %2064 ], [ %2096, %2069 ]
  %2106 = phi i64 [ 0, %2064 ], [ %2097, %2069 ]
  %2107 = icmp eq i32 %2065, 0
  br i1 %2107, label %2121, label %2108

2108:                                             ; preds = %2101
  %2109 = add i32 %2104, -1
  %2110 = sext i32 %2109 to i64
  %2111 = getelementptr inbounds i8, ptr %2, i64 %2110
  %2112 = load i8, ptr %2111, align 1, !tbaa !5
  %2113 = zext i8 %2112 to i64
  %2114 = getelementptr inbounds i64, ptr %13, i64 %2113
  %2115 = load i64, ptr %2114, align 8, !tbaa !14
  %2116 = and i64 %2115, 255
  %2117 = lshr i64 %2105, %2116
  %2118 = and i64 %2115, -256
  %2119 = or i64 %2117, %2118
  %2120 = add i64 %2115, %2106
  br label %2121

2121:                                             ; preds = %2101, %2108
  %2122 = phi i64 [ %2102, %2101 ], [ %2119, %2108 ]
  %2123 = phi i64 [ %2103, %2101 ], [ %2120, %2108 ]
  %2124 = sub nsw i32 %306, %2058
  %2125 = and i64 %2123, 255
  %2126 = lshr i64 %2125, 3
  %2127 = sub nsw i64 64, %2125
  %2128 = lshr i64 %2122, %2127
  %2129 = and i64 %2123, 7
  store i64 %2128, ptr %0, align 1, !tbaa !14
  %2130 = getelementptr inbounds i8, ptr %0, i64 %2126
  br label %2131

2131:                                             ; preds = %2121, %2057
  %2132 = phi i64 [ %2129, %2121 ], [ 0, %2057 ]
  %2133 = phi ptr [ %2130, %2121 ], [ %0, %2057 ]
  %2134 = phi i64 [ %2122, %2121 ], [ 0, %2057 ]
  %2135 = phi i32 [ %2124, %2121 ], [ %306, %2057 ]
  %2136 = srem i32 %2135, 18
  %2137 = icmp eq i32 %2136, 0
  br i1 %2137, label %2271, label %2138

2138:                                             ; preds = %2131
  %2139 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2135, i32 -1)
  %2140 = extractvalue { i32, i1 } %2139, 1, !nosanitize !53
  br i1 %2140, label %2100, label %2141, !nosanitize !53

2141:                                             ; preds = %2138
  %2142 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2135, i32 -2)
  %2143 = extractvalue { i32, i1 } %2142, 1, !nosanitize !53
  br i1 %2143, label %2100, label %2144, !nosanitize !53

2144:                                             ; preds = %2141
  %2145 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2135, i32 -3)
  %2146 = extractvalue { i32, i1 } %2145, 1, !nosanitize !53
  br i1 %2146, label %2100, label %2147, !nosanitize !53

2147:                                             ; preds = %2144
  %2148 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2135, i32 -4)
  %2149 = extractvalue { i32, i1 } %2148, 1, !nosanitize !53
  br i1 %2149, label %2100, label %2150, !nosanitize !53

2150:                                             ; preds = %2147
  %2151 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2135, i32 -5)
  %2152 = extractvalue { i32, i1 } %2151, 1, !nosanitize !53
  br i1 %2152, label %2100, label %2153, !nosanitize !53

2153:                                             ; preds = %2150
  %2154 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2135, i32 -6)
  %2155 = extractvalue { i32, i1 } %2154, 1, !nosanitize !53
  br i1 %2155, label %2100, label %2156, !nosanitize !53

2156:                                             ; preds = %2153
  %2157 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2135, i32 -7)
  %2158 = extractvalue { i32, i1 } %2157, 1, !nosanitize !53
  br i1 %2158, label %2100, label %2159, !nosanitize !53

2159:                                             ; preds = %2156
  %2160 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2135, i32 -8)
  %2161 = extractvalue { i32, i1 } %2160, 1, !nosanitize !53
  br i1 %2161, label %2100, label %2162, !nosanitize !53

2162:                                             ; preds = %2159
  %2163 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2135, i32 -9)
  %2164 = extractvalue { i32, i1 } %2163, 1, !nosanitize !53
  br i1 %2164, label %2100, label %2165, !nosanitize !53

2165:                                             ; preds = %2162
  %2166 = extractvalue { i32, i1 } %2160, 0, !nosanitize !53
  %2167 = sext i32 %2166 to i64
  %2168 = getelementptr inbounds i8, ptr %2, i64 %2167
  %2169 = load i8, ptr %2168, align 1, !tbaa !5
  %2170 = zext i8 %2169 to i64
  %2171 = getelementptr inbounds i64, ptr %13, i64 %2170
  %2172 = load i64, ptr %2171, align 8, !tbaa !14
  %2173 = extractvalue { i32, i1 } %2157, 0, !nosanitize !53
  %2174 = sext i32 %2173 to i64
  %2175 = getelementptr inbounds i8, ptr %2, i64 %2174
  %2176 = load i8, ptr %2175, align 1, !tbaa !5
  %2177 = zext i8 %2176 to i64
  %2178 = getelementptr inbounds i64, ptr %13, i64 %2177
  %2179 = load i64, ptr %2178, align 8, !tbaa !14
  %2180 = extractvalue { i32, i1 } %2154, 0, !nosanitize !53
  %2181 = sext i32 %2180 to i64
  %2182 = getelementptr inbounds i8, ptr %2, i64 %2181
  %2183 = load i8, ptr %2182, align 1, !tbaa !5
  %2184 = zext i8 %2183 to i64
  %2185 = getelementptr inbounds i64, ptr %13, i64 %2184
  %2186 = load i64, ptr %2185, align 8, !tbaa !14
  %2187 = extractvalue { i32, i1 } %2151, 0, !nosanitize !53
  %2188 = sext i32 %2187 to i64
  %2189 = getelementptr inbounds i8, ptr %2, i64 %2188
  %2190 = load i8, ptr %2189, align 1, !tbaa !5
  %2191 = zext i8 %2190 to i64
  %2192 = getelementptr inbounds i64, ptr %13, i64 %2191
  %2193 = load i64, ptr %2192, align 8, !tbaa !14
  %2194 = extractvalue { i32, i1 } %2148, 0, !nosanitize !53
  %2195 = sext i32 %2194 to i64
  %2196 = getelementptr inbounds i8, ptr %2, i64 %2195
  %2197 = load i8, ptr %2196, align 1, !tbaa !5
  %2198 = zext i8 %2197 to i64
  %2199 = getelementptr inbounds i64, ptr %13, i64 %2198
  %2200 = load i64, ptr %2199, align 8, !tbaa !14
  %2201 = extractvalue { i32, i1 } %2145, 0, !nosanitize !53
  %2202 = sext i32 %2201 to i64
  %2203 = getelementptr inbounds i8, ptr %2, i64 %2202
  %2204 = load i8, ptr %2203, align 1, !tbaa !5
  %2205 = zext i8 %2204 to i64
  %2206 = getelementptr inbounds i64, ptr %13, i64 %2205
  %2207 = load i64, ptr %2206, align 8, !tbaa !14
  %2208 = extractvalue { i32, i1 } %2142, 0, !nosanitize !53
  %2209 = sext i32 %2208 to i64
  %2210 = getelementptr inbounds i8, ptr %2, i64 %2209
  %2211 = load i8, ptr %2210, align 1, !tbaa !5
  %2212 = zext i8 %2211 to i64
  %2213 = getelementptr inbounds i64, ptr %13, i64 %2212
  %2214 = load i64, ptr %2213, align 8, !tbaa !14
  %2215 = extractvalue { i32, i1 } %2139, 0, !nosanitize !53
  %2216 = sext i32 %2215 to i64
  %2217 = getelementptr inbounds i8, ptr %2, i64 %2216
  %2218 = load i8, ptr %2217, align 1, !tbaa !5
  %2219 = zext i8 %2218 to i64
  %2220 = getelementptr inbounds i64, ptr %13, i64 %2219
  %2221 = load i64, ptr %2220, align 8, !tbaa !14
  %2222 = and i64 %2221, 255
  %2223 = lshr i64 %2134, %2222
  %2224 = or i64 %2223, %2221
  %2225 = and i64 %2214, 255
  %2226 = lshr i64 %2224, %2225
  %2227 = or i64 %2226, %2214
  %2228 = and i64 %2207, 255
  %2229 = lshr i64 %2227, %2228
  %2230 = or i64 %2229, %2207
  %2231 = and i64 %2200, 255
  %2232 = lshr i64 %2230, %2231
  %2233 = or i64 %2232, %2200
  %2234 = and i64 %2193, 255
  %2235 = lshr i64 %2233, %2234
  %2236 = or i64 %2235, %2193
  %2237 = and i64 %2186, 255
  %2238 = lshr i64 %2236, %2237
  %2239 = or i64 %2238, %2186
  %2240 = and i64 %2179, 255
  %2241 = lshr i64 %2239, %2240
  %2242 = or i64 %2241, %2179
  %2243 = and i64 %2172, 255
  %2244 = lshr i64 %2242, %2243
  %2245 = or i64 %2244, %2172
  %2246 = extractvalue { i32, i1 } %2163, 0, !nosanitize !53
  %2247 = sext i32 %2246 to i64
  %2248 = getelementptr inbounds i8, ptr %2, i64 %2247
  %2249 = load i8, ptr %2248, align 1, !tbaa !5
  %2250 = zext i8 %2249 to i64
  %2251 = getelementptr inbounds i64, ptr %13, i64 %2250
  %2252 = load i64, ptr %2251, align 8, !tbaa !14
  %2253 = and i64 %2252, 255
  %2254 = lshr i64 %2245, %2253
  %2255 = or i64 %2254, %2252
  %2256 = add i64 %2172, %2132
  %2257 = add i64 %2256, %2179
  %2258 = add i64 %2257, %2186
  %2259 = add i64 %2258, %2193
  %2260 = add i64 %2259, %2200
  %2261 = add i64 %2260, %2207
  %2262 = add i64 %2261, %2214
  %2263 = add i64 %2262, %2221
  %2264 = add i64 %2263, %2252
  %2265 = and i64 %2264, 255
  %2266 = lshr i64 %2265, 3
  %2267 = sub nsw i64 64, %2265
  %2268 = lshr i64 %2255, %2267
  %2269 = and i64 %2264, 7
  store i64 %2268, ptr %2133, align 1, !tbaa !14
  %2270 = getelementptr inbounds i8, ptr %2133, i64 %2266
  br label %2271

2271:                                             ; preds = %2165, %2131
  %2272 = phi i64 [ %2132, %2131 ], [ %2269, %2165 ]
  %2273 = phi ptr [ %2133, %2131 ], [ %2270, %2165 ]
  %2274 = phi i64 [ %2134, %2131 ], [ %2255, %2165 ]
  %2275 = phi i32 [ %2135, %2131 ], [ %2246, %2165 ]
  %2276 = getelementptr i8, ptr %2, i64 -18
  %2277 = icmp sgt i32 %2275, 0
  br i1 %2277, label %2278, label %2511

2278:                                             ; preds = %2271
  %2279 = zext nneg i32 %2275 to i64
  %2280 = getelementptr i8, ptr %2, i64 -1
  %2281 = getelementptr i8, ptr %2, i64 -2
  %2282 = getelementptr i8, ptr %2, i64 -3
  %2283 = getelementptr i8, ptr %2, i64 -4
  %2284 = getelementptr i8, ptr %2, i64 -5
  %2285 = getelementptr i8, ptr %2, i64 -6
  %2286 = getelementptr i8, ptr %2, i64 -7
  %2287 = getelementptr i8, ptr %2, i64 -8
  br label %2288

2288:                                             ; preds = %2405, %2278
  %2289 = phi i64 [ %2279, %2278 ], [ %2509, %2405 ]
  %2290 = phi i64 [ %2274, %2278 ], [ %2501, %2405 ]
  %2291 = phi ptr [ %2273, %2278 ], [ %2508, %2405 ]
  %2292 = phi i64 [ %2272, %2278 ], [ %2507, %2405 ]
  %2293 = getelementptr i8, ptr %2280, i64 %2289
  %2294 = load i8, ptr %2293, align 1, !tbaa !5
  %2295 = zext i8 %2294 to i64
  %2296 = getelementptr inbounds i64, ptr %13, i64 %2295
  %2297 = load i64, ptr %2296, align 8, !tbaa !14
  %2298 = and i64 %2297, 255
  %2299 = lshr i64 %2290, %2298
  %2300 = or i64 %2299, %2297
  %2301 = add i64 %2297, %2292
  %2302 = getelementptr i8, ptr %2281, i64 %2289
  %2303 = load i8, ptr %2302, align 1, !tbaa !5
  %2304 = zext i8 %2303 to i64
  %2305 = getelementptr inbounds i64, ptr %13, i64 %2304
  %2306 = load i64, ptr %2305, align 8, !tbaa !14
  %2307 = and i64 %2306, 255
  %2308 = lshr i64 %2300, %2307
  %2309 = or i64 %2308, %2306
  %2310 = add i64 %2301, %2306
  %2311 = getelementptr i8, ptr %2282, i64 %2289
  %2312 = load i8, ptr %2311, align 1, !tbaa !5
  %2313 = zext i8 %2312 to i64
  %2314 = getelementptr inbounds i64, ptr %13, i64 %2313
  %2315 = load i64, ptr %2314, align 8, !tbaa !14
  %2316 = and i64 %2315, 255
  %2317 = lshr i64 %2309, %2316
  %2318 = or i64 %2317, %2315
  %2319 = add i64 %2310, %2315
  %2320 = getelementptr i8, ptr %2283, i64 %2289
  %2321 = load i8, ptr %2320, align 1, !tbaa !5
  %2322 = zext i8 %2321 to i64
  %2323 = getelementptr inbounds i64, ptr %13, i64 %2322
  %2324 = load i64, ptr %2323, align 8, !tbaa !14
  %2325 = and i64 %2324, 255
  %2326 = lshr i64 %2318, %2325
  %2327 = or i64 %2326, %2324
  %2328 = add i64 %2319, %2324
  %2329 = getelementptr i8, ptr %2284, i64 %2289
  %2330 = load i8, ptr %2329, align 1, !tbaa !5
  %2331 = zext i8 %2330 to i64
  %2332 = getelementptr inbounds i64, ptr %13, i64 %2331
  %2333 = load i64, ptr %2332, align 8, !tbaa !14
  %2334 = and i64 %2333, 255
  %2335 = lshr i64 %2327, %2334
  %2336 = or i64 %2335, %2333
  %2337 = add i64 %2328, %2333
  %2338 = getelementptr i8, ptr %2285, i64 %2289
  %2339 = load i8, ptr %2338, align 1, !tbaa !5
  %2340 = zext i8 %2339 to i64
  %2341 = getelementptr inbounds i64, ptr %13, i64 %2340
  %2342 = load i64, ptr %2341, align 8, !tbaa !14
  %2343 = and i64 %2342, 255
  %2344 = lshr i64 %2336, %2343
  %2345 = or i64 %2344, %2342
  %2346 = add i64 %2337, %2342
  %2347 = getelementptr i8, ptr %2286, i64 %2289
  %2348 = load i8, ptr %2347, align 1, !tbaa !5
  %2349 = zext i8 %2348 to i64
  %2350 = getelementptr inbounds i64, ptr %13, i64 %2349
  %2351 = load i64, ptr %2350, align 8, !tbaa !14
  %2352 = and i64 %2351, 255
  %2353 = lshr i64 %2345, %2352
  %2354 = or i64 %2353, %2351
  %2355 = add i64 %2346, %2351
  %2356 = getelementptr i8, ptr %2287, i64 %2289
  %2357 = load i8, ptr %2356, align 1, !tbaa !5
  %2358 = zext i8 %2357 to i64
  %2359 = getelementptr inbounds i64, ptr %13, i64 %2358
  %2360 = load i64, ptr %2359, align 8, !tbaa !14
  %2361 = and i64 %2360, 255
  %2362 = lshr i64 %2354, %2361
  %2363 = or i64 %2362, %2360
  %2364 = add i64 %2355, %2360
  %2365 = add nsw i64 %2289, -9
  %2366 = getelementptr inbounds i8, ptr %2, i64 %2365
  %2367 = load i8, ptr %2366, align 1, !tbaa !5
  %2368 = zext i8 %2367 to i64
  %2369 = getelementptr inbounds i64, ptr %13, i64 %2368
  %2370 = load i64, ptr %2369, align 8, !tbaa !14
  %2371 = and i64 %2370, 255
  %2372 = lshr i64 %2363, %2371
  %2373 = or i64 %2372, %2370
  %2374 = add i64 %2364, %2370
  %2375 = and i64 %2374, 255
  %2376 = lshr i64 %2375, 3
  %2377 = sub nsw i64 64, %2375
  %2378 = lshr i64 %2373, %2377
  %2379 = and i64 %2374, 7
  store i64 %2378, ptr %2291, align 1, !tbaa !14
  %2380 = getelementptr inbounds i8, ptr %2291, i64 %2376
  %2381 = trunc i64 %2365 to i32
  %2382 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2381, i32 -1)
  %2383 = extractvalue { i32, i1 } %2382, 1, !nosanitize !53
  br i1 %2383, label %2100, label %2384, !nosanitize !53

2384:                                             ; preds = %2288
  %2385 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2381, i32 -2)
  %2386 = extractvalue { i32, i1 } %2385, 1, !nosanitize !53
  br i1 %2386, label %2100, label %2387, !nosanitize !53

2387:                                             ; preds = %2384
  %2388 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2381, i32 -3)
  %2389 = extractvalue { i32, i1 } %2388, 1, !nosanitize !53
  br i1 %2389, label %2100, label %2390, !nosanitize !53

2390:                                             ; preds = %2387
  %2391 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2381, i32 -4)
  %2392 = extractvalue { i32, i1 } %2391, 1, !nosanitize !53
  br i1 %2392, label %2100, label %2393, !nosanitize !53

2393:                                             ; preds = %2390
  %2394 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2381, i32 -5)
  %2395 = extractvalue { i32, i1 } %2394, 1, !nosanitize !53
  br i1 %2395, label %2100, label %2396, !nosanitize !53

2396:                                             ; preds = %2393
  %2397 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2381, i32 -6)
  %2398 = extractvalue { i32, i1 } %2397, 1, !nosanitize !53
  br i1 %2398, label %2100, label %2399, !nosanitize !53

2399:                                             ; preds = %2396
  %2400 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2381, i32 -7)
  %2401 = extractvalue { i32, i1 } %2400, 1, !nosanitize !53
  br i1 %2401, label %2100, label %2402, !nosanitize !53

2402:                                             ; preds = %2399
  %2403 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2381, i32 -8)
  %2404 = extractvalue { i32, i1 } %2403, 1, !nosanitize !53
  br i1 %2404, label %2100, label %2405, !nosanitize !53

2405:                                             ; preds = %2402
  %2406 = extractvalue { i32, i1 } %2400, 0, !nosanitize !53
  %2407 = sext i32 %2406 to i64
  %2408 = getelementptr inbounds i8, ptr %2, i64 %2407
  %2409 = load i8, ptr %2408, align 1, !tbaa !5
  %2410 = zext i8 %2409 to i64
  %2411 = getelementptr inbounds i64, ptr %13, i64 %2410
  %2412 = load i64, ptr %2411, align 8, !tbaa !14
  %2413 = extractvalue { i32, i1 } %2397, 0, !nosanitize !53
  %2414 = sext i32 %2413 to i64
  %2415 = getelementptr inbounds i8, ptr %2, i64 %2414
  %2416 = load i8, ptr %2415, align 1, !tbaa !5
  %2417 = zext i8 %2416 to i64
  %2418 = getelementptr inbounds i64, ptr %13, i64 %2417
  %2419 = load i64, ptr %2418, align 8, !tbaa !14
  %2420 = extractvalue { i32, i1 } %2394, 0, !nosanitize !53
  %2421 = sext i32 %2420 to i64
  %2422 = getelementptr inbounds i8, ptr %2, i64 %2421
  %2423 = load i8, ptr %2422, align 1, !tbaa !5
  %2424 = zext i8 %2423 to i64
  %2425 = getelementptr inbounds i64, ptr %13, i64 %2424
  %2426 = load i64, ptr %2425, align 8, !tbaa !14
  %2427 = extractvalue { i32, i1 } %2391, 0, !nosanitize !53
  %2428 = sext i32 %2427 to i64
  %2429 = getelementptr inbounds i8, ptr %2, i64 %2428
  %2430 = load i8, ptr %2429, align 1, !tbaa !5
  %2431 = zext i8 %2430 to i64
  %2432 = getelementptr inbounds i64, ptr %13, i64 %2431
  %2433 = load i64, ptr %2432, align 8, !tbaa !14
  %2434 = extractvalue { i32, i1 } %2388, 0, !nosanitize !53
  %2435 = sext i32 %2434 to i64
  %2436 = getelementptr inbounds i8, ptr %2, i64 %2435
  %2437 = load i8, ptr %2436, align 1, !tbaa !5
  %2438 = zext i8 %2437 to i64
  %2439 = getelementptr inbounds i64, ptr %13, i64 %2438
  %2440 = load i64, ptr %2439, align 8, !tbaa !14
  %2441 = extractvalue { i32, i1 } %2385, 0, !nosanitize !53
  %2442 = sext i32 %2441 to i64
  %2443 = getelementptr inbounds i8, ptr %2, i64 %2442
  %2444 = load i8, ptr %2443, align 1, !tbaa !5
  %2445 = zext i8 %2444 to i64
  %2446 = getelementptr inbounds i64, ptr %13, i64 %2445
  %2447 = load i64, ptr %2446, align 8, !tbaa !14
  %2448 = extractvalue { i32, i1 } %2382, 0, !nosanitize !53
  %2449 = sext i32 %2448 to i64
  %2450 = getelementptr inbounds i8, ptr %2, i64 %2449
  %2451 = load i8, ptr %2450, align 1, !tbaa !5
  %2452 = zext i8 %2451 to i64
  %2453 = getelementptr inbounds i64, ptr %13, i64 %2452
  %2454 = load i64, ptr %2453, align 8, !tbaa !14
  %2455 = and i64 %2447, 255
  %2456 = lshr i64 %2454, %2455
  %2457 = or i64 %2456, %2447
  %2458 = and i64 %2440, 255
  %2459 = lshr i64 %2457, %2458
  %2460 = or i64 %2459, %2440
  %2461 = and i64 %2433, 255
  %2462 = lshr i64 %2460, %2461
  %2463 = or i64 %2462, %2433
  %2464 = and i64 %2426, 255
  %2465 = lshr i64 %2463, %2464
  %2466 = or i64 %2465, %2426
  %2467 = and i64 %2419, 255
  %2468 = lshr i64 %2466, %2467
  %2469 = or i64 %2468, %2419
  %2470 = and i64 %2412, 255
  %2471 = lshr i64 %2469, %2470
  %2472 = or i64 %2471, %2412
  %2473 = extractvalue { i32, i1 } %2403, 0, !nosanitize !53
  %2474 = sext i32 %2473 to i64
  %2475 = getelementptr inbounds i8, ptr %2, i64 %2474
  %2476 = load i8, ptr %2475, align 1, !tbaa !5
  %2477 = zext i8 %2476 to i64
  %2478 = getelementptr inbounds i64, ptr %13, i64 %2477
  %2479 = load i64, ptr %2478, align 8, !tbaa !14
  %2480 = and i64 %2479, 255
  %2481 = lshr i64 %2472, %2480
  %2482 = or i64 %2481, %2479
  %2483 = getelementptr i8, ptr %2276, i64 %2289
  %2484 = load i8, ptr %2483, align 1, !tbaa !5
  %2485 = zext i8 %2484 to i64
  %2486 = getelementptr inbounds i64, ptr %13, i64 %2485
  %2487 = load i64, ptr %2486, align 8, !tbaa !14
  %2488 = and i64 %2487, 255
  %2489 = lshr i64 %2482, %2488
  %2490 = add i64 %2419, %2412
  %2491 = add i64 %2490, %2426
  %2492 = add i64 %2491, %2433
  %2493 = add i64 %2492, %2440
  %2494 = add i64 %2493, %2447
  %2495 = add i64 %2494, %2454
  %2496 = add i64 %2495, %2479
  %2497 = add i64 %2496, %2487
  %2498 = and i64 %2497, 255
  %2499 = lshr i64 %2373, %2498
  %2500 = or i64 %2499, %2489
  %2501 = or i64 %2500, %2487
  %2502 = add i64 %2497, %2379
  %2503 = and i64 %2502, 255
  %2504 = lshr i64 %2503, 3
  %2505 = sub nsw i64 64, %2503
  %2506 = lshr i64 %2501, %2505
  %2507 = and i64 %2502, 7
  store i64 %2506, ptr %2380, align 1, !tbaa !14
  %2508 = getelementptr inbounds i8, ptr %2380, i64 %2504
  %2509 = add nsw i64 %2289, -18
  %2510 = icmp sgt i64 %2289, 18
  br i1 %2510, label %2288, label %2511, !llvm.loop !80

2511:                                             ; preds = %1961, %1553, %1183, %852, %549, %2405, %250, %2271, %1839, %1444, %1087, %770, %466, %178
  %2512 = phi i64 [ %179, %178 ], [ %2272, %2271 ], [ %467, %466 ], [ %771, %770 ], [ %1088, %1087 ], [ %1445, %1444 ], [ %1840, %1839 ], [ %298, %250 ], [ %2507, %2405 ], [ %608, %549 ], [ %910, %852 ], [ %1253, %1183 ], [ %1634, %1553 ], [ %2053, %1961 ]
  %2513 = phi ptr [ %180, %178 ], [ %2273, %2271 ], [ %468, %466 ], [ %772, %770 ], [ %1089, %1087 ], [ %1446, %1444 ], [ %1841, %1839 ], [ %301, %250 ], [ %2508, %2405 ], [ %609, %549 ], [ %911, %852 ], [ %1254, %1183 ], [ %1635, %1553 ], [ %2054, %1961 ]
  %2514 = phi i64 [ %181, %178 ], [ %2274, %2271 ], [ %469, %466 ], [ %773, %770 ], [ %1090, %1087 ], [ %1447, %1444 ], [ %1842, %1839 ], [ %292, %250 ], [ %2501, %2405 ], [ %602, %549 ], [ %904, %852 ], [ %1247, %1183 ], [ %1628, %1553 ], [ %2047, %1961 ]
  %2515 = lshr i64 %2514, 1
  %2516 = or disjoint i64 %2515, -9223372036854775808
  %2517 = add nuw nsw i64 %2512, -9223372036854775807
  %2518 = and i64 %2517, 255
  %2519 = lshr i64 %2518, 3
  %2520 = sub nuw nsw i64 64, %2518
  %2521 = lshr i64 %2516, %2520
  store i64 %2521, ptr %2513, align 1, !tbaa !14
  %2522 = getelementptr inbounds i8, ptr %2513, i64 %2519
  %2523 = icmp ugt ptr %2522, %17
  %2524 = select i1 %2523, ptr %17, ptr %2522
  %2525 = icmp ult ptr %2524, %17
  br i1 %2525, label %2526, label %2534

2526:                                             ; preds = %2511
  %2527 = and i64 %2517, 7
  %2528 = ptrtoint ptr %2524 to i64
  %2529 = ptrtoint ptr %0 to i64
  %2530 = icmp ne i64 %2527, 0
  %2531 = zext i1 %2530 to i64
  %2532 = sub i64 %2531, %2529
  %2533 = add i64 %2532, %2528
  br label %2534

2534:                                             ; preds = %2526, %2511, %15, %11, %9
  %2535 = phi i64 [ %10, %9 ], [ 0, %15 ], [ 0, %11 ], [ %2533, %2526 ], [ 0, %2511 ]
  ret i64 %2535
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_compress4X_usingCTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = tail call fastcc i64 @HUF_compress4X_usingCTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @HUF_compress4X_usingCTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #2 {
  %7 = add i64 %3, 3
  %8 = lshr i64 %7, 2
  %9 = getelementptr inbounds i8, ptr %2, i64 %3
  %10 = icmp ult i64 %1, 17
  %11 = icmp ult i64 %3, 12
  %12 = or i1 %10, %11
  br i1 %12, label %66, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds i8, ptr %0, i64 %1
  %15 = getelementptr inbounds i8, ptr %0, i64 6
  %16 = ptrtoint ptr %14 to i64
  %17 = add nsw i64 %1, -6
  %18 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef nonnull %15, i64 noundef %17, ptr noundef %2, i64 noundef %8, ptr noundef %4, i32 noundef %5)
  %19 = icmp ult i64 %18, -119
  br i1 %19, label %20, label %66

20:                                               ; preds = %13
  %21 = add i64 %18, -65536
  %22 = icmp ult i64 %21, -65535
  br i1 %22, label %66, label %23

23:                                               ; preds = %20
  %24 = trunc i64 %18 to i16
  store i16 %24, ptr %0, align 1, !tbaa !37
  %25 = getelementptr inbounds i8, ptr %15, i64 %18
  %26 = getelementptr inbounds i8, ptr %2, i64 %8
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %16, %27
  %29 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef nonnull %25, i64 noundef %28, ptr noundef %26, i64 noundef %8, ptr noundef %4, i32 noundef %5)
  %30 = icmp ult i64 %29, -119
  br i1 %30, label %31, label %66

31:                                               ; preds = %23
  %32 = add i64 %29, -65536
  %33 = icmp ult i64 %32, -65535
  br i1 %33, label %66, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, ptr %0, i64 2
  %36 = trunc i64 %29 to i16
  store i16 %36, ptr %35, align 1, !tbaa !37
  %37 = getelementptr inbounds i8, ptr %25, i64 %29
  %38 = getelementptr inbounds i8, ptr %26, i64 %8
  %39 = ptrtoint ptr %37 to i64
  %40 = sub i64 %16, %39
  %41 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef nonnull %37, i64 noundef %40, ptr noundef %38, i64 noundef %8, ptr noundef %4, i32 noundef %5)
  %42 = icmp ult i64 %41, -119
  br i1 %42, label %43, label %66

43:                                               ; preds = %34
  %44 = add i64 %41, -65536
  %45 = icmp ult i64 %44, -65535
  br i1 %45, label %66, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds i8, ptr %0, i64 4
  %48 = trunc i64 %41 to i16
  store i16 %48, ptr %47, align 1, !tbaa !37
  %49 = getelementptr inbounds i8, ptr %37, i64 %41
  %50 = getelementptr inbounds i8, ptr %38, i64 %8
  %51 = ptrtoint ptr %49 to i64
  %52 = sub i64 %16, %51
  %53 = ptrtoint ptr %9 to i64
  %54 = ptrtoint ptr %50 to i64
  %55 = sub i64 %53, %54
  %56 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef nonnull %49, i64 noundef %52, ptr noundef %50, i64 noundef %55, ptr noundef %4, i32 noundef %5)
  %57 = icmp ult i64 %56, -119
  br i1 %57, label %58, label %66

58:                                               ; preds = %46
  %59 = add i64 %56, -65536
  %60 = icmp ult i64 %59, -65535
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds i8, ptr %49, i64 %56
  %63 = ptrtoint ptr %62 to i64
  %64 = ptrtoint ptr %0 to i64
  %65 = sub i64 %63, %64
  br label %66

66:                                               ; preds = %58, %46, %43, %34, %31, %23, %20, %13, %6, %61
  %67 = phi i64 [ %65, %61 ], [ 0, %6 ], [ 0, %20 ], [ %18, %13 ], [ 0, %31 ], [ %29, %23 ], [ 0, %43 ], [ %41, %34 ], [ 0, %58 ], [ %56, %46 ]
  ret i64 %67
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @HUF_cardinality(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = add i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %43, label %5

5:                                                ; preds = %2
  %6 = zext i32 %3 to i64
  %7 = icmp ult i32 %3, 8
  br i1 %7, label %30, label %8

8:                                                ; preds = %5
  %9 = and i64 %6, 4294967288
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i64 [ 0, %8 ], [ %24, %10 ]
  %12 = phi <4 x i32> [ zeroinitializer, %8 ], [ %22, %10 ]
  %13 = phi <4 x i32> [ zeroinitializer, %8 ], [ %23, %10 ]
  %14 = getelementptr inbounds i32, ptr %0, i64 %11
  %15 = getelementptr inbounds i32, ptr %14, i64 4
  %16 = load <4 x i32>, ptr %14, align 4, !tbaa !19
  %17 = load <4 x i32>, ptr %15, align 4, !tbaa !19
  %18 = icmp ne <4 x i32> %16, zeroinitializer
  %19 = icmp ne <4 x i32> %17, zeroinitializer
  %20 = zext <4 x i1> %18 to <4 x i32>
  %21 = zext <4 x i1> %19 to <4 x i32>
  %22 = add <4 x i32> %12, %20
  %23 = add <4 x i32> %13, %21
  %24 = add nuw i64 %11, 8
  %25 = icmp eq i64 %24, %9
  br i1 %25, label %26, label %10, !llvm.loop !81

26:                                               ; preds = %10
  %27 = add <4 x i32> %23, %22
  %28 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %27)
  %29 = icmp eq i64 %9, %6
  br i1 %29, label %43, label %30

30:                                               ; preds = %5, %26
  %31 = phi i64 [ 0, %5 ], [ %9, %26 ]
  %32 = phi i32 [ 0, %5 ], [ %28, %26 ]
  br label %33

33:                                               ; preds = %30, %33
  %34 = phi i64 [ %41, %33 ], [ %31, %30 ]
  %35 = phi i32 [ %40, %33 ], [ %32, %30 ]
  %36 = getelementptr inbounds i32, ptr %0, i64 %34
  %37 = load i32, ptr %36, align 4, !tbaa !19
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = add i32 %35, %39
  %41 = add nuw nsw i64 %34, 1
  %42 = icmp eq i64 %41, %6
  br i1 %42, label %43, label %33, !llvm.loop !82

43:                                               ; preds = %33, %26, %2
  %44 = phi i32 [ 0, %2 ], [ %28, %26 ], [ %40, %33 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @HUF_minTableLog(i32 noundef %0) local_unnamed_addr #9 {
  %2 = tail call i32 @llvm.ctlz.i32(i32 %0, i1 true), !range !42
  %3 = sub nuw nsw i32 32, %2
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @HUF_optimalTableLog(i32 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, ptr nocapture noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7) local_unnamed_addr #2 {
  %9 = and i32 %7, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call i32 @FSE_optimalTableLog_internal(i32 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef 1) #12
  br label %153

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8, ptr %3, i64 748
  %15 = add i64 %4, -748
  %16 = add i32 %2, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %66, label %18

18:                                               ; preds = %13
  %19 = zext i32 %16 to i64
  %20 = icmp ult i32 %16, 8
  br i1 %20, label %43, label %21

21:                                               ; preds = %18
  %22 = and i64 %19, 4294967288
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i64 [ 0, %21 ], [ %37, %23 ]
  %25 = phi <4 x i32> [ zeroinitializer, %21 ], [ %35, %23 ]
  %26 = phi <4 x i32> [ zeroinitializer, %21 ], [ %36, %23 ]
  %27 = getelementptr inbounds i32, ptr %6, i64 %24
  %28 = getelementptr inbounds i32, ptr %27, i64 4
  %29 = load <4 x i32>, ptr %27, align 4, !tbaa !19
  %30 = load <4 x i32>, ptr %28, align 4, !tbaa !19
  %31 = icmp ne <4 x i32> %29, zeroinitializer
  %32 = icmp ne <4 x i32> %30, zeroinitializer
  %33 = zext <4 x i1> %31 to <4 x i32>
  %34 = zext <4 x i1> %32 to <4 x i32>
  %35 = add <4 x i32> %25, %33
  %36 = add <4 x i32> %26, %34
  %37 = add nuw i64 %24, 8
  %38 = icmp eq i64 %37, %22
  br i1 %38, label %39, label %23, !llvm.loop !83

39:                                               ; preds = %23
  %40 = add <4 x i32> %36, %35
  %41 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %40)
  %42 = icmp eq i64 %22, %19
  br i1 %42, label %56, label %43

43:                                               ; preds = %18, %39
  %44 = phi i64 [ 0, %18 ], [ %22, %39 ]
  %45 = phi i32 [ 0, %18 ], [ %41, %39 ]
  br label %46

46:                                               ; preds = %43, %46
  %47 = phi i64 [ %54, %46 ], [ %44, %43 ]
  %48 = phi i32 [ %53, %46 ], [ %45, %43 ]
  %49 = getelementptr inbounds i32, ptr %6, i64 %47
  %50 = load i32, ptr %49, align 4, !tbaa !19
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = add i32 %48, %52
  %54 = add nuw nsw i64 %47, 1
  %55 = icmp eq i64 %54, %19
  br i1 %55, label %56, label %46, !llvm.loop !84

56:                                               ; preds = %46, %39
  %57 = phi i32 [ %41, %39 ], [ %53, %46 ]
  %58 = tail call i32 @llvm.ctlz.i32(i32 %57, i1 true), !range !42
  %59 = sub nuw nsw i32 32, %58
  %60 = icmp ugt i32 %59, %0
  br i1 %60, label %153, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds i64, ptr %5, i64 1
  %63 = icmp slt i32 %2, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = zext nneg i32 %2 to i64
  br label %95

66:                                               ; preds = %13, %61
  %67 = phi i32 [ %59, %61 ], [ undef, %13 ]
  br label %68

68:                                               ; preds = %66, %90
  %69 = phi i32 [ %93, %90 ], [ %67, %66 ]
  %70 = phi i32 [ %92, %90 ], [ %0, %66 ]
  %71 = phi i64 [ %91, %90 ], [ -2, %66 ]
  %72 = tail call i64 @HUF_buildCTable_wksp(ptr noundef %5, ptr noundef %6, i32 noundef %2, i32 noundef %69, ptr noundef %3, i64 noundef %4), !range !85
  %73 = icmp ult i64 %72, -119
  br i1 %73, label %74, label %90

74:                                               ; preds = %68
  %75 = zext i32 %69 to i64
  %76 = icmp ult i64 %72, %75
  %77 = icmp ugt i32 %69, %67
  %78 = and i1 %76, %77
  br i1 %78, label %153, label %79

79:                                               ; preds = %74
  %80 = trunc i64 %72 to i32
  %81 = tail call i64 @HUF_writeCTable_wksp(ptr noundef nonnull %14, i64 noundef %15, ptr noundef %5, i32 noundef %2, i32 noundef %80, ptr noundef %3, i64 noundef %4)
  %82 = icmp ult i64 %81, -119
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = add nuw i64 %71, 1
  %85 = icmp ugt i64 %81, %84
  br i1 %85, label %153, label %86

86:                                               ; preds = %83
  %87 = icmp ult i64 %81, %71
  %88 = tail call i64 @llvm.umin.i64(i64 %81, i64 %71)
  %89 = select i1 %87, i32 %69, i32 %70
  br label %90

90:                                               ; preds = %86, %79, %68
  %91 = phi i64 [ %71, %79 ], [ %88, %86 ], [ %71, %68 ]
  %92 = phi i32 [ %70, %79 ], [ %89, %86 ], [ %70, %68 ]
  %93 = add i32 %69, 1
  %94 = icmp ugt i32 %93, %0
  br i1 %94, label %153, label %68, !llvm.loop !86

95:                                               ; preds = %64, %148
  %96 = phi i32 [ %151, %148 ], [ %59, %64 ]
  %97 = phi i32 [ %150, %148 ], [ %0, %64 ]
  %98 = phi i64 [ %149, %148 ], [ -2, %64 ]
  %99 = tail call i64 @HUF_buildCTable_wksp(ptr noundef %5, ptr noundef %6, i32 noundef %2, i32 noundef %96, ptr noundef %3, i64 noundef %4), !range !85
  %100 = icmp ult i64 %99, -119
  br i1 %100, label %101, label %148

101:                                              ; preds = %95
  %102 = zext i32 %96 to i64
  %103 = icmp ult i64 %99, %102
  %104 = icmp ugt i32 %96, %59
  %105 = and i1 %103, %104
  br i1 %105, label %153, label %106

106:                                              ; preds = %101
  %107 = trunc i64 %99 to i32
  %108 = tail call i64 @HUF_writeCTable_wksp(ptr noundef nonnull %14, i64 noundef %15, ptr noundef %5, i32 noundef %2, i32 noundef %107, ptr noundef %3, i64 noundef %4)
  %109 = icmp ult i64 %108, -119
  br i1 %109, label %110, label %148

110:                                              ; preds = %106, %126
  %111 = phi i64 [ %130, %126 ], [ 0, %106 ]
  %112 = phi i64 [ %136, %126 ], [ 0, %106 ]
  %113 = getelementptr inbounds i64, ptr %62, i64 %111
  %114 = load i64, ptr %113, align 8, !tbaa !14
  %115 = and i64 %114, 255
  %116 = or disjoint i64 %111, 1
  %117 = getelementptr inbounds i32, ptr %6, i64 %111
  %118 = load i32, ptr %117, align 4, !tbaa !19
  %119 = zext i32 %118 to i64
  %120 = mul nuw nsw i64 %115, %119
  %121 = add i64 %120, %112
  %122 = icmp ult i64 %111, %65
  br i1 %122, label %124, label %138, !llvm.loop !76

123:                                              ; preds = %124
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !53
  unreachable, !nosanitize !53

124:                                              ; preds = %110
  %125 = icmp eq i64 %116, 2147483647
  br i1 %125, label %123, label %126, !nosanitize !53

126:                                              ; preds = %124
  %127 = getelementptr inbounds i64, ptr %62, i64 %116
  %128 = load i64, ptr %127, align 8, !tbaa !14
  %129 = and i64 %128, 255
  %130 = add nuw nsw i64 %111, 2
  %131 = trunc i64 %130 to i32
  %132 = getelementptr inbounds i32, ptr %6, i64 %116
  %133 = load i32, ptr %132, align 4, !tbaa !19
  %134 = zext i32 %133 to i64
  %135 = mul nuw nsw i64 %129, %134
  %136 = add i64 %135, %121
  %137 = icmp sgt i32 %131, %2
  br i1 %137, label %138, label %110, !llvm.loop !76

138:                                              ; preds = %126, %110
  %139 = phi i64 [ %121, %110 ], [ %136, %126 ]
  %140 = lshr i64 %139, 3
  %141 = add i64 %140, %108
  %142 = add nuw i64 %98, 1
  %143 = icmp ugt i64 %141, %142
  br i1 %143, label %153, label %144

144:                                              ; preds = %138
  %145 = icmp ult i64 %141, %98
  %146 = tail call i64 @llvm.umin.i64(i64 %141, i64 %98)
  %147 = select i1 %145, i32 %96, i32 %97
  br label %148

148:                                              ; preds = %95, %144, %106
  %149 = phi i64 [ %98, %106 ], [ %146, %144 ], [ %98, %95 ]
  %150 = phi i32 [ %97, %106 ], [ %147, %144 ], [ %97, %95 ]
  %151 = add i32 %96, 1
  %152 = icmp ugt i32 %151, %0
  br i1 %152, label %153, label %95, !llvm.loop !86

153:                                              ; preds = %138, %148, %101, %83, %90, %74, %56, %11
  %154 = phi i32 [ %12, %11 ], [ %0, %56 ], [ %70, %83 ], [ %92, %90 ], [ %70, %74 ], [ %97, %138 ], [ %150, %148 ], [ %97, %101 ]
  ret i32 %154
}

declare i32 @FSE_optimalTableLog_internal(i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_compress1X_repeat(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10) local_unnamed_addr #2 {
  %12 = tail call fastcc i64 @HUF_compress_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 0, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10)
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @HUF_compress_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11) unnamed_addr #2 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %4, ptr %13, align 4, !tbaa !19
  %16 = ptrtoint ptr %7 to i64
  %17 = sub i64 0, %16
  %18 = and i64 %17, 7
  %19 = icmp ugt i64 %18, %8
  %20 = getelementptr inbounds i8, ptr %7, i64 %18
  %21 = tail call i64 @llvm.usub.sat.i64(i64 %8, i64 %18)
  %22 = select i1 %19, ptr null, ptr %20
  %23 = getelementptr inbounds i8, ptr %0, i64 %1
  %24 = icmp ult i64 %21, 7944
  br i1 %24, label %200, label %25

25:                                               ; preds = %12
  %26 = icmp eq i64 %3, 0
  %27 = icmp eq i64 %1, 0
  %28 = or i1 %27, %26
  br i1 %28, label %200, label %29

29:                                               ; preds = %25
  %30 = icmp ugt i64 %3, 131072
  br i1 %30, label %200, label %31

31:                                               ; preds = %29
  %32 = icmp ugt i32 %5, 12
  br i1 %32, label %200, label %33

33:                                               ; preds = %31
  %34 = icmp ugt i32 %4, 255
  br i1 %34, label %200, label %35

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
  br label %200

51:                                               ; preds = %46, %38
  %52 = and i32 %11, 8
  %53 = icmp ne i32 %52, 0
  %54 = icmp ugt i64 %3, 40959
  %55 = and i1 %54, %53
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #12
  store i32 %39, ptr %14, align 4, !tbaa !19
  %57 = call i32 @HIST_count_simple(ptr noundef %22, ptr noundef nonnull %14, ptr noundef %2, i64 noundef 4096) #12
  %58 = zext i32 %57 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #12
  %59 = load i32, ptr %13, align 4, !tbaa !19
  store i32 %59, ptr %15, align 4, !tbaa !19
  %60 = getelementptr inbounds i8, ptr %2, i64 %3
  %61 = getelementptr inbounds i8, ptr %60, i64 -4096
  %62 = call i32 @HIST_count_simple(ptr noundef %22, ptr noundef nonnull %15, ptr noundef nonnull %61, i64 noundef 4096) #12
  %63 = zext i32 %62 to i64
  %64 = add nuw nsw i64 %63, %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #12
  %65 = icmp ugt i64 %64, 68
  br i1 %65, label %66, label %200

66:                                               ; preds = %56, %51
  %67 = getelementptr inbounds %struct.HUF_compress_tables_t, ptr %22, i64 0, i32 2
  %68 = call i64 @HIST_count_wksp(ptr noundef %22, ptr noundef nonnull %13, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %67, i64 noundef 4096) #12
  %69 = icmp ult i64 %68, -119
  br i1 %69, label %70, label %200

70:                                               ; preds = %66
  %71 = icmp eq i64 %68, %3
  br i1 %71, label %72, label %74

72:                                               ; preds = %70
  %73 = load i8, ptr %2, align 1, !tbaa !5
  store i8 %73, ptr %0, align 1, !tbaa !5
  br label %200

74:                                               ; preds = %70
  %75 = lshr i64 %3, 7
  %76 = add nuw nsw i64 %75, 4
  %77 = icmp ugt i64 %68, %76
  br i1 %77, label %78, label %200

78:                                               ; preds = %74
  br i1 %44, label %94, label %79

79:                                               ; preds = %78
  %80 = load i32, ptr %10, align 4, !tbaa !19
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32, ptr %13, align 4, !tbaa !19
  %84 = call i32 @HUF_validateCTable(ptr noundef %9, ptr noundef %22, i32 noundef %83), !range !87
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  store i32 0, ptr %10, align 4, !tbaa !19
  br label %87

87:                                               ; preds = %86, %79
  %88 = phi i32 [ 0, %86 ], [ %80, %79 ]
  %89 = icmp eq i32 %88, 0
  %90 = or i1 %45, %89
  br i1 %90, label %94, label %92

91:                                               ; preds = %82
  br i1 %45, label %94, label %92

92:                                               ; preds = %87, %91
  %93 = call fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %23, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef %9, i32 noundef %11)
  br label %200

94:                                               ; preds = %91, %78, %87
  %95 = load i32, ptr %13, align 4, !tbaa !19
  %96 = getelementptr inbounds %struct.HUF_compress_tables_t, ptr %22, i64 0, i32 1
  %97 = call i32 @HUF_optimalTableLog(i32 noundef %41, i64 noundef %3, i32 noundef %95, ptr noundef nonnull %67, i64 noundef 4864, ptr noundef nonnull %96, ptr noundef %22, i32 noundef %11)
  %98 = load i32, ptr %13, align 4, !tbaa !19
  %99 = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %96, ptr noundef %22, i32 noundef %98, i32 noundef %97, ptr noundef nonnull %67, i64 noundef 4864), !range !85
  %100 = icmp ult i64 %99, -119
  br i1 %100, label %101, label %200

101:                                              ; preds = %94
  %102 = trunc i64 %99 to i32
  %103 = load i32, ptr %13, align 4, !tbaa !19
  %104 = call i64 @HUF_writeCTable_wksp(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %96, i32 noundef %103, i32 noundef %102, ptr noundef nonnull %67, i64 noundef 748)
  %105 = icmp ult i64 %104, -119
  br i1 %105, label %106, label %200

106:                                              ; preds = %101
  br i1 %44, label %190, label %107

107:                                              ; preds = %106
  %108 = load i32, ptr %10, align 4, !tbaa !19
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %187, label %110

110:                                              ; preds = %107
  %111 = load i32, ptr %13, align 4, !tbaa !19
  %112 = getelementptr inbounds i64, ptr %9, i64 1
  %113 = icmp slt i32 %111, 0
  br i1 %113, label %185, label %114

114:                                              ; preds = %110
  %115 = zext nneg i32 %111 to i64
  br label %116

116:                                              ; preds = %132, %114
  %117 = phi i64 [ 0, %114 ], [ %136, %132 ]
  %118 = phi i64 [ 0, %114 ], [ %142, %132 ]
  %119 = getelementptr inbounds i64, ptr %112, i64 %117
  %120 = load i64, ptr %119, align 8, !tbaa !14
  %121 = and i64 %120, 255
  %122 = or disjoint i64 %117, 1
  %123 = getelementptr inbounds i32, ptr %22, i64 %117
  %124 = load i32, ptr %123, align 4, !tbaa !19
  %125 = zext i32 %124 to i64
  %126 = mul nuw nsw i64 %121, %125
  %127 = add i64 %126, %118
  %128 = icmp ult i64 %117, %115
  br i1 %128, label %130, label %144, !llvm.loop !76

129:                                              ; preds = %130
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !53
  unreachable, !nosanitize !53

130:                                              ; preds = %116
  %131 = icmp eq i64 %122, 2147483647
  br i1 %131, label %129, label %132, !nosanitize !53

132:                                              ; preds = %130
  %133 = getelementptr inbounds i64, ptr %112, i64 %122
  %134 = load i64, ptr %133, align 8, !tbaa !14
  %135 = and i64 %134, 255
  %136 = add nuw nsw i64 %117, 2
  %137 = trunc i64 %136 to i32
  %138 = getelementptr inbounds i32, ptr %22, i64 %122
  %139 = load i32, ptr %138, align 4, !tbaa !19
  %140 = zext i32 %139 to i64
  %141 = mul nuw nsw i64 %135, %140
  %142 = add i64 %141, %127
  %143 = icmp slt i32 %111, %137
  br i1 %143, label %144, label %116, !llvm.loop !76

144:                                              ; preds = %132, %116
  %145 = phi i64 [ %127, %116 ], [ %142, %132 ]
  %146 = lshr i64 %145, 3
  %147 = getelementptr inbounds %struct.HUF_compress_tables_t, ptr %22, i64 0, i32 1, i64 1
  %148 = zext nneg i32 %111 to i64
  br label %149

149:                                              ; preds = %165, %144
  %150 = phi i64 [ 0, %144 ], [ %169, %165 ]
  %151 = phi i64 [ 0, %144 ], [ %175, %165 ]
  %152 = getelementptr inbounds i64, ptr %147, i64 %150
  %153 = load i64, ptr %152, align 8, !tbaa !14
  %154 = and i64 %153, 255
  %155 = or disjoint i64 %150, 1
  %156 = getelementptr inbounds i32, ptr %22, i64 %150
  %157 = load i32, ptr %156, align 4, !tbaa !19
  %158 = zext i32 %157 to i64
  %159 = mul nuw nsw i64 %154, %158
  %160 = add i64 %159, %151
  %161 = icmp ult i64 %150, %148
  br i1 %161, label %163, label %177, !llvm.loop !76

162:                                              ; preds = %163
  call void @llvm.ubsantrap(i8 0) #13, !nosanitize !53
  unreachable, !nosanitize !53

163:                                              ; preds = %149
  %164 = icmp eq i64 %155, 2147483647
  br i1 %164, label %162, label %165, !nosanitize !53

165:                                              ; preds = %163
  %166 = getelementptr inbounds i64, ptr %147, i64 %155
  %167 = load i64, ptr %166, align 8, !tbaa !14
  %168 = and i64 %167, 255
  %169 = add nuw nsw i64 %150, 2
  %170 = trunc i64 %169 to i32
  %171 = getelementptr inbounds i32, ptr %22, i64 %155
  %172 = load i32, ptr %171, align 4, !tbaa !19
  %173 = zext i32 %172 to i64
  %174 = mul nuw nsw i64 %168, %173
  %175 = add i64 %174, %160
  %176 = icmp slt i32 %111, %170
  br i1 %176, label %177, label %149, !llvm.loop !76

177:                                              ; preds = %165, %149
  %178 = phi i64 [ %160, %149 ], [ %175, %165 ]
  %179 = lshr i64 %178, 3
  %180 = add i64 %179, %104
  %181 = icmp ugt i64 %146, %180
  %182 = add i64 %104, 12
  %183 = icmp ult i64 %182, %3
  %184 = and i1 %183, %181
  br i1 %184, label %193, label %185

185:                                              ; preds = %110, %177
  %186 = call fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %23, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef %9, i32 noundef %11)
  br label %200

187:                                              ; preds = %107
  %188 = add nuw i64 %104, 12
  %189 = icmp ult i64 %188, %3
  br i1 %189, label %193, label %200

190:                                              ; preds = %106
  %191 = add nuw i64 %104, 12
  %192 = icmp ult i64 %191, %3
  br i1 %192, label %194, label %200

193:                                              ; preds = %177, %187
  store i32 0, ptr %10, align 4, !tbaa !19
  br label %194

194:                                              ; preds = %190, %193
  %195 = getelementptr inbounds i8, ptr %0, i64 %104
  %196 = icmp eq ptr %9, null
  br i1 %196, label %198, label %197

197:                                              ; preds = %194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2056) %9, ptr noundef nonnull align 8 dereferenceable(2056) %96, i64 2056, i1 false)
  br label %198

198:                                              ; preds = %197, %194
  %199 = call fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %195, ptr noundef nonnull %23, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef nonnull %96, i32 noundef %11)
  br label %200

200:                                              ; preds = %187, %190, %101, %185, %66, %72, %33, %31, %29, %25, %12, %56, %94, %74, %198, %92, %49
  %201 = phi i64 [ %50, %49 ], [ %93, %92 ], [ %199, %198 ], [ %99, %94 ], [ 0, %74 ], [ 0, %56 ], [ -66, %12 ], [ 0, %25 ], [ -72, %29 ], [ -44, %31 ], [ -46, %33 ], [ %68, %66 ], [ 1, %72 ], [ 0, %187 ], [ 0, %190 ], [ %104, %101 ], [ %186, %185 ]
  ret i64 %201
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_compress4X_repeat(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10) local_unnamed_addr #2 {
  %12 = tail call fastcc i64 @HUF_compress_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 1, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10)
  ret i64 %12
}

declare i32 @HIST_count_simple(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare i32 @FSE_optimalTableLog(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare i64 @FSE_normalizeCount(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i64 @FSE_writeNCount(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i64 @FSE_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare i64 @FSE_compress_usingCTable(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @HUF_simpleQuickSort(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2, i32 %1), !nosanitize !53
  %5 = extractvalue { i32, i1 } %4, 1, !nosanitize !53
  br i1 %5, label %6, label %7, !nosanitize !53

6:                                                ; preds = %88, %79, %3
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !53
  unreachable, !nosanitize !53

7:                                                ; preds = %3
  %8 = extractvalue { i32, i1 } %4, 0, !nosanitize !53
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = icmp slt i32 %1, %2
  br i1 %11, label %43, label %111

12:                                               ; preds = %33
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !53
  unreachable, !nosanitize !53

13:                                               ; preds = %7
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds %struct.nodeElt_s, ptr %0, i64 %14
  %16 = icmp slt i32 %8, 1
  br i1 %16, label %111, label %17

17:                                               ; preds = %13, %39
  %18 = phi i64 [ %40, %39 ], [ 1, %13 ]
  %19 = getelementptr inbounds %struct.nodeElt_s, ptr %15, i64 %18
  %20 = load <2 x i32>, ptr %19, align 4
  %21 = extractelement <2 x i32> %20, i64 0
  br label %22

22:                                               ; preds = %17, %29
  %23 = phi i64 [ %18, %17 ], [ %24, %29 ]
  %24 = add nsw i64 %23, -1
  %25 = and i64 %24, 4294967295
  %26 = getelementptr inbounds %struct.nodeElt_s, ptr %15, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !48
  %28 = icmp ult i32 %27, %21
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.nodeElt_s, ptr %15, i64 %23
  %31 = load i64, ptr %26, align 4
  store i64 %31, ptr %30, align 4
  %32 = icmp sgt i64 %23, 1
  br i1 %32, label %22, label %33, !llvm.loop !88

33:                                               ; preds = %22, %29
  %34 = phi i64 [ %23, %22 ], [ 0, %29 ]
  %35 = shl i64 %34, 32
  %36 = ashr exact i64 %35, 32
  %37 = getelementptr inbounds %struct.nodeElt_s, ptr %15, i64 %36
  store <2 x i32> %20, ptr %37, align 4
  %38 = icmp eq i64 %18, 2147483647
  br i1 %38, label %12, label %39, !nosanitize !53

39:                                               ; preds = %33
  %40 = add nuw nsw i64 %18, 1
  %41 = trunc i64 %40 to i32
  %42 = icmp slt i32 %8, %41
  br i1 %42, label %111, label %17, !llvm.loop !89

43:                                               ; preds = %10, %107
  %44 = phi i32 [ %109, %107 ], [ %1, %10 ]
  %45 = phi i32 [ %108, %107 ], [ %2, %10 ]
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.nodeElt_s, ptr %0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !48
  %49 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %44, i32 -1)
  %50 = extractvalue { i32, i1 } %49, 1, !nosanitize !53
  br i1 %50, label %51, label %52, !nosanitize !53

51:                                               ; preds = %43
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !53
  unreachable, !nosanitize !53

52:                                               ; preds = %43
  %53 = extractvalue { i32, i1 } %49, 0, !nosanitize !53
  %54 = sext i32 %44 to i64
  br label %55

55:                                               ; preds = %71, %52
  %56 = phi i64 [ %54, %52 ], [ %73, %71 ]
  %57 = phi i32 [ %53, %52 ], [ %72, %71 ]
  %58 = getelementptr inbounds %struct.nodeElt_s, ptr %0, i64 %56
  %59 = load i32, ptr %58, align 4, !tbaa !48
  %60 = icmp ugt i32 %59, %48
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %57, i32 1), !nosanitize !53
  %63 = extractvalue { i32, i1 } %62, 1, !nosanitize !53
  br i1 %63, label %64, label %65, !nosanitize !53

64:                                               ; preds = %76, %61
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !53
  unreachable, !nosanitize !53

65:                                               ; preds = %61
  %66 = extractvalue { i32, i1 } %62, 0, !nosanitize !53
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.nodeElt_s, ptr %0, i64 %67
  %69 = load i64, ptr %68, align 4
  %70 = load i64, ptr %58, align 4
  store i64 %70, ptr %68, align 4
  store i64 %69, ptr %58, align 4
  br label %71

71:                                               ; preds = %65, %55
  %72 = phi i32 [ %66, %65 ], [ %57, %55 ]
  %73 = add nsw i64 %56, 1
  %74 = trunc i64 %73 to i32
  %75 = icmp eq i32 %45, %74
  br i1 %75, label %76, label %55, !llvm.loop !90

76:                                               ; preds = %71
  %77 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %72, i32 1), !nosanitize !53
  %78 = extractvalue { i32, i1 } %77, 1, !nosanitize !53
  br i1 %78, label %64, label %79, !nosanitize !53

79:                                               ; preds = %76
  %80 = extractvalue { i32, i1 } %77, 0, !nosanitize !53
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.nodeElt_s, ptr %0, i64 %81
  %83 = load i64, ptr %82, align 4
  %84 = load i64, ptr %47, align 4
  store i64 %84, ptr %82, align 4
  store i64 %83, ptr %47, align 4
  %85 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %80, i32 %44), !nosanitize !53
  %86 = extractvalue { i32, i1 } %85, 0, !nosanitize !53
  %87 = extractvalue { i32, i1 } %85, 1, !nosanitize !53
  br i1 %87, label %6, label %88, !nosanitize !53

88:                                               ; preds = %79
  %89 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %45, i32 %80), !nosanitize !53
  %90 = extractvalue { i32, i1 } %89, 1, !nosanitize !53
  br i1 %90, label %6, label %91, !nosanitize !53

91:                                               ; preds = %88
  %92 = extractvalue { i32, i1 } %89, 0, !nosanitize !53
  %93 = icmp slt i32 %86, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = add nsw i32 %80, -1
  tail call fastcc void @HUF_simpleQuickSort(ptr noundef nonnull %0, i32 noundef %44, i32 noundef %95)
  %96 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %80, i32 1), !nosanitize !53
  %97 = extractvalue { i32, i1 } %96, 1, !nosanitize !53
  br i1 %97, label %98, label %99, !nosanitize !53

98:                                               ; preds = %101, %94
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !53
  unreachable, !nosanitize !53

99:                                               ; preds = %94
  %100 = extractvalue { i32, i1 } %96, 0, !nosanitize !53
  br label %107

101:                                              ; preds = %91
  %102 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %80, i32 1), !nosanitize !53
  %103 = extractvalue { i32, i1 } %102, 1, !nosanitize !53
  br i1 %103, label %98, label %104, !nosanitize !53

104:                                              ; preds = %101
  %105 = extractvalue { i32, i1 } %102, 0, !nosanitize !53
  tail call fastcc void @HUF_simpleQuickSort(ptr noundef nonnull %0, i32 noundef %105, i32 noundef %45)
  %106 = add nsw i32 %80, -1
  br label %107

107:                                              ; preds = %104, %99
  %108 = phi i32 [ %45, %99 ], [ %106, %104 ]
  %109 = phi i32 [ %100, %99 ], [ %44, %104 ]
  %110 = icmp slt i32 %109, %108
  br i1 %110, label %43, label %111, !llvm.loop !91

111:                                              ; preds = %107, %39, %10, %13
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @HUF_compress1X_usingCTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #10 {
  %6 = load i64, ptr %4, align 8
  %7 = getelementptr inbounds i64, ptr %4, i64 1
  %8 = icmp ult i64 %1, 8
  br i1 %8, label %2552, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %0, i64 %1
  %11 = getelementptr inbounds i8, ptr %10, i64 -8
  %12 = icmp eq i64 %1, 8
  br i1 %12, label %2552, label %13

13:                                               ; preds = %9
  %14 = and i64 %6, 255
  %15 = mul i64 %14, %3
  %16 = lshr i64 %15, 3
  %17 = add nuw nsw i64 %16, 8
  %18 = icmp ugt i64 %17, %1
  %19 = and i64 %6, 252
  %20 = icmp ugt i64 %19, 11
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %281

22:                                               ; preds = %13
  %23 = trunc i64 %3 to i32
  %24 = srem i32 %23, 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %82

26:                                               ; preds = %22
  %27 = xor i32 %23, -2147483648
  %28 = add nsw i32 %24, -1
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %31, label %30, !nosanitize !53

30:                                               ; preds = %26, %41, %56, %167, %221, %224, %89, %92, %95, %98
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !53
  unreachable, !nosanitize !53

31:                                               ; preds = %26
  %32 = add i32 %23, -1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %2, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !5
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds i64, ptr %7, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !14
  %39 = and i64 %38, -256
  %40 = icmp eq i32 %24, 1
  br i1 %40, label %70, label %41, !llvm.loop !79

41:                                               ; preds = %31
  br i1 %29, label %42, label %30, !nosanitize !53

42:                                               ; preds = %41
  %43 = add i32 %23, -2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %2, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !5
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds i64, ptr %7, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !14
  %50 = and i64 %49, 255
  %51 = lshr i64 %39, %50
  %52 = and i64 %49, -256
  %53 = or i64 %51, %52
  %54 = add i64 %49, %38
  %55 = icmp sgt i32 %24, 2
  br i1 %55, label %56, label %70, !llvm.loop !79

56:                                               ; preds = %42
  br i1 %29, label %57, label %30, !nosanitize !53

57:                                               ; preds = %56
  %58 = add i32 %23, -3
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %2, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !5
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds i64, ptr %7, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !14
  %65 = and i64 %64, 255
  %66 = lshr i64 %53, %65
  %67 = and i64 %64, -256
  %68 = or i64 %66, %67
  %69 = add i64 %64, %54
  br label %70

70:                                               ; preds = %57, %42, %31
  %71 = phi i32 [ %32, %31 ], [ %43, %42 ], [ %58, %57 ]
  %72 = phi i64 [ %39, %31 ], [ %53, %42 ], [ %68, %57 ]
  %73 = phi i64 [ %38, %31 ], [ %54, %42 ], [ %69, %57 ]
  %74 = and i64 %73, 255
  %75 = lshr i64 %74, 3
  %76 = sub nsw i64 64, %74
  %77 = lshr i64 %72, %76
  %78 = and i64 %73, 7
  store i64 %77, ptr %0, align 1, !tbaa !14
  %79 = getelementptr inbounds i8, ptr %0, i64 %75
  %80 = icmp ugt ptr %79, %11
  %81 = select i1 %80, ptr %11, ptr %79
  br label %82

82:                                               ; preds = %70, %22
  %83 = phi i64 [ 0, %22 ], [ %78, %70 ]
  %84 = phi ptr [ %0, %22 ], [ %81, %70 ]
  %85 = phi i64 [ 0, %22 ], [ %72, %70 ]
  %86 = phi i32 [ %23, %22 ], [ %71, %70 ]
  %87 = and i32 %86, 7
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %155, label %89

89:                                               ; preds = %82
  %90 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %86, i32 -1)
  %91 = extractvalue { i32, i1 } %90, 1, !nosanitize !53
  br i1 %91, label %30, label %92, !nosanitize !53

92:                                               ; preds = %89
  %93 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %86, i32 -2)
  %94 = extractvalue { i32, i1 } %93, 1, !nosanitize !53
  br i1 %94, label %30, label %95, !nosanitize !53

95:                                               ; preds = %92
  %96 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %86, i32 -3)
  %97 = extractvalue { i32, i1 } %96, 1, !nosanitize !53
  br i1 %97, label %30, label %98, !nosanitize !53

98:                                               ; preds = %95
  %99 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %86, i32 -4)
  %100 = extractvalue { i32, i1 } %99, 1, !nosanitize !53
  br i1 %100, label %30, label %101, !nosanitize !53

101:                                              ; preds = %98
  %102 = extractvalue { i32, i1 } %96, 0, !nosanitize !53
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, ptr %2, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !5
  %106 = zext i8 %105 to i64
  %107 = getelementptr inbounds i64, ptr %7, i64 %106
  %108 = load i64, ptr %107, align 8, !tbaa !14
  %109 = extractvalue { i32, i1 } %93, 0, !nosanitize !53
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, ptr %2, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !5
  %113 = zext i8 %112 to i64
  %114 = getelementptr inbounds i64, ptr %7, i64 %113
  %115 = load i64, ptr %114, align 8, !tbaa !14
  %116 = extractvalue { i32, i1 } %90, 0, !nosanitize !53
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, ptr %2, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !5
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds i64, ptr %7, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !14
  %123 = add i64 %122, %83
  %124 = add i64 %115, %123
  %125 = add i64 %108, %124
  %126 = and i64 %122, 255
  %127 = lshr i64 %85, %126
  %128 = or i64 %127, %122
  %129 = and i64 %115, 255
  %130 = lshr i64 %128, %129
  %131 = or i64 %130, %115
  %132 = and i64 %108, 255
  %133 = lshr i64 %131, %132
  %134 = or i64 %133, %108
  %135 = extractvalue { i32, i1 } %99, 0, !nosanitize !53
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, ptr %2, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !5
  %139 = zext i8 %138 to i64
  %140 = getelementptr inbounds i64, ptr %7, i64 %139
  %141 = load i64, ptr %140, align 8, !tbaa !14
  %142 = and i64 %141, 255
  %143 = lshr i64 %134, %142
  %144 = and i64 %141, -256
  %145 = or i64 %143, %144
  %146 = add i64 %141, %125
  %147 = and i64 %146, 255
  %148 = lshr i64 %147, 3
  %149 = sub nsw i64 64, %147
  %150 = lshr i64 %145, %149
  %151 = and i64 %146, 7
  store i64 %150, ptr %84, align 1, !tbaa !14
  %152 = getelementptr inbounds i8, ptr %84, i64 %148
  %153 = icmp ugt ptr %152, %11
  %154 = select i1 %153, ptr %11, ptr %152
  br label %155

155:                                              ; preds = %101, %82
  %156 = phi i64 [ %83, %82 ], [ %151, %101 ]
  %157 = phi ptr [ %84, %82 ], [ %154, %101 ]
  %158 = phi i64 [ %85, %82 ], [ %145, %101 ]
  %159 = phi i32 [ %86, %82 ], [ %135, %101 ]
  %160 = getelementptr i8, ptr %2, i64 -8
  %161 = icmp sgt i32 %159, 0
  br i1 %161, label %162, label %2529

162:                                              ; preds = %155
  %163 = zext nneg i32 %159 to i64
  %164 = getelementptr i8, ptr %2, i64 -1
  %165 = getelementptr i8, ptr %2, i64 -2
  %166 = getelementptr i8, ptr %2, i64 -3
  br label %167

167:                                              ; preds = %162, %227
  %168 = phi i64 [ %163, %162 ], [ %279, %227 ]
  %169 = phi i64 [ %158, %162 ], [ %269, %227 ]
  %170 = phi ptr [ %157, %162 ], [ %278, %227 ]
  %171 = phi i64 [ %156, %162 ], [ %275, %227 ]
  %172 = getelementptr i8, ptr %164, i64 %168
  %173 = load i8, ptr %172, align 1, !tbaa !5
  %174 = zext i8 %173 to i64
  %175 = getelementptr inbounds i64, ptr %7, i64 %174
  %176 = load i64, ptr %175, align 8, !tbaa !14
  %177 = and i64 %176, 255
  %178 = lshr i64 %169, %177
  %179 = or i64 %178, %176
  %180 = add i64 %176, %171
  %181 = getelementptr i8, ptr %165, i64 %168
  %182 = load i8, ptr %181, align 1, !tbaa !5
  %183 = zext i8 %182 to i64
  %184 = getelementptr inbounds i64, ptr %7, i64 %183
  %185 = load i64, ptr %184, align 8, !tbaa !14
  %186 = and i64 %185, 255
  %187 = lshr i64 %179, %186
  %188 = or i64 %187, %185
  %189 = add i64 %185, %180
  %190 = getelementptr i8, ptr %166, i64 %168
  %191 = load i8, ptr %190, align 1, !tbaa !5
  %192 = zext i8 %191 to i64
  %193 = getelementptr inbounds i64, ptr %7, i64 %192
  %194 = load i64, ptr %193, align 8, !tbaa !14
  %195 = and i64 %194, 255
  %196 = lshr i64 %188, %195
  %197 = or i64 %196, %194
  %198 = add i64 %194, %189
  %199 = add nsw i64 %168, -4
  %200 = getelementptr inbounds i8, ptr %2, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !5
  %202 = zext i8 %201 to i64
  %203 = getelementptr inbounds i64, ptr %7, i64 %202
  %204 = load i64, ptr %203, align 8, !tbaa !14
  %205 = and i64 %204, 255
  %206 = lshr i64 %197, %205
  %207 = and i64 %204, -256
  %208 = or i64 %206, %207
  %209 = add i64 %204, %198
  %210 = and i64 %209, 255
  %211 = lshr i64 %210, 3
  %212 = sub nsw i64 64, %210
  %213 = lshr i64 %208, %212
  %214 = and i64 %209, 7
  store i64 %213, ptr %170, align 1, !tbaa !14
  %215 = getelementptr inbounds i8, ptr %170, i64 %211
  %216 = icmp ugt ptr %215, %11
  %217 = select i1 %216, ptr %11, ptr %215
  %218 = trunc i64 %199 to i32
  %219 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %218, i32 -1)
  %220 = extractvalue { i32, i1 } %219, 1, !nosanitize !53
  br i1 %220, label %30, label %221, !nosanitize !53

221:                                              ; preds = %167
  %222 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %218, i32 -2)
  %223 = extractvalue { i32, i1 } %222, 1, !nosanitize !53
  br i1 %223, label %30, label %224, !nosanitize !53

224:                                              ; preds = %221
  %225 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %218, i32 -3)
  %226 = extractvalue { i32, i1 } %225, 1, !nosanitize !53
  br i1 %226, label %30, label %227, !nosanitize !53

227:                                              ; preds = %224
  %228 = extractvalue { i32, i1 } %222, 0, !nosanitize !53
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, ptr %2, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !5
  %232 = zext i8 %231 to i64
  %233 = getelementptr inbounds i64, ptr %7, i64 %232
  %234 = load i64, ptr %233, align 8, !tbaa !14
  %235 = extractvalue { i32, i1 } %219, 0, !nosanitize !53
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, ptr %2, i64 %236
  %238 = load i8, ptr %237, align 1, !tbaa !5
  %239 = zext i8 %238 to i64
  %240 = getelementptr inbounds i64, ptr %7, i64 %239
  %241 = load i64, ptr %240, align 8, !tbaa !14
  %242 = add i64 %234, %241
  %243 = and i64 %234, 255
  %244 = lshr i64 %241, %243
  %245 = or i64 %244, %234
  %246 = extractvalue { i32, i1 } %225, 0, !nosanitize !53
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, ptr %2, i64 %247
  %249 = load i8, ptr %248, align 1, !tbaa !5
  %250 = zext i8 %249 to i64
  %251 = getelementptr inbounds i64, ptr %7, i64 %250
  %252 = load i64, ptr %251, align 8, !tbaa !14
  %253 = and i64 %252, 255
  %254 = lshr i64 %245, %253
  %255 = or i64 %254, %252
  %256 = add i64 %252, %242
  %257 = getelementptr i8, ptr %160, i64 %168
  %258 = load i8, ptr %257, align 1, !tbaa !5
  %259 = zext i8 %258 to i64
  %260 = getelementptr inbounds i64, ptr %7, i64 %259
  %261 = load i64, ptr %260, align 8, !tbaa !14
  %262 = and i64 %261, 255
  %263 = lshr i64 %255, %262
  %264 = and i64 %261, -256
  %265 = or i64 %263, %264
  %266 = add i64 %261, %256
  %267 = and i64 %266, 255
  %268 = lshr i64 %208, %267
  %269 = or i64 %265, %268
  %270 = add i64 %266, %214
  %271 = and i64 %270, 255
  %272 = lshr i64 %271, 3
  %273 = sub nsw i64 64, %271
  %274 = lshr i64 %269, %273
  %275 = and i64 %270, 7
  store i64 %274, ptr %217, align 1, !tbaa !14
  %276 = getelementptr inbounds i8, ptr %217, i64 %272
  %277 = icmp ugt ptr %276, %11
  %278 = select i1 %277, ptr %11, ptr %276
  %279 = add nsw i64 %168, -8
  %280 = icmp sgt i64 %168, 8
  br i1 %280, label %167, label %2529, !llvm.loop !80

281:                                              ; preds = %13
  %282 = trunc i64 %6 to i8
  %283 = trunc i64 %3 to i32
  switch i8 %282, label %2114 [
    i8 11, label %284
    i8 10, label %587
    i8 9, label %887
    i8 8, label %1243
    i8 7, label %1652
  ]

284:                                              ; preds = %281
  %285 = srem i32 %283, 5
  %286 = icmp sgt i32 %285, 0
  br i1 %286, label %287, label %356

287:                                              ; preds = %284
  %288 = xor i32 %283, -2147483648
  %289 = add nsw i32 %285, -1
  %290 = icmp ugt i32 %288, %289
  br i1 %290, label %292, label %291, !nosanitize !53

291:                                              ; preds = %287, %302, %317, %332, %454, %515, %518, %521, %363, %366, %369, %372, %375
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !53
  unreachable, !nosanitize !53

292:                                              ; preds = %287
  %293 = add i32 %283, -1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8, ptr %2, i64 %294
  %296 = load i8, ptr %295, align 1, !tbaa !5
  %297 = zext i8 %296 to i64
  %298 = getelementptr inbounds i64, ptr %7, i64 %297
  %299 = load i64, ptr %298, align 8, !tbaa !14
  %300 = and i64 %299, -256
  %301 = icmp eq i32 %285, 1
  br i1 %301, label %346, label %302, !llvm.loop !79

302:                                              ; preds = %292
  br i1 %290, label %303, label %291, !nosanitize !53

303:                                              ; preds = %302
  %304 = add i32 %283, -2
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8, ptr %2, i64 %305
  %307 = load i8, ptr %306, align 1, !tbaa !5
  %308 = zext i8 %307 to i64
  %309 = getelementptr inbounds i64, ptr %7, i64 %308
  %310 = load i64, ptr %309, align 8, !tbaa !14
  %311 = and i64 %310, 255
  %312 = lshr i64 %300, %311
  %313 = and i64 %310, -256
  %314 = or i64 %312, %313
  %315 = add i64 %310, %299
  %316 = icmp sgt i32 %285, 2
  br i1 %316, label %317, label %346, !llvm.loop !79

317:                                              ; preds = %303
  br i1 %290, label %318, label %291, !nosanitize !53

318:                                              ; preds = %317
  %319 = add i32 %283, -3
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8, ptr %2, i64 %320
  %322 = load i8, ptr %321, align 1, !tbaa !5
  %323 = zext i8 %322 to i64
  %324 = getelementptr inbounds i64, ptr %7, i64 %323
  %325 = load i64, ptr %324, align 8, !tbaa !14
  %326 = and i64 %325, 255
  %327 = lshr i64 %314, %326
  %328 = and i64 %325, -256
  %329 = or i64 %327, %328
  %330 = add i64 %325, %315
  %331 = icmp eq i32 %285, 3
  br i1 %331, label %346, label %332, !llvm.loop !79

332:                                              ; preds = %318
  br i1 %290, label %333, label %291, !nosanitize !53

333:                                              ; preds = %332
  %334 = add i32 %283, -4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8, ptr %2, i64 %335
  %337 = load i8, ptr %336, align 1, !tbaa !5
  %338 = zext i8 %337 to i64
  %339 = getelementptr inbounds i64, ptr %7, i64 %338
  %340 = load i64, ptr %339, align 8, !tbaa !14
  %341 = and i64 %340, 255
  %342 = lshr i64 %329, %341
  %343 = and i64 %340, -256
  %344 = or i64 %342, %343
  %345 = add i64 %340, %330
  br label %346, !llvm.loop !79

346:                                              ; preds = %333, %318, %303, %292
  %347 = phi i32 [ %293, %292 ], [ %304, %303 ], [ %319, %318 ], [ %334, %333 ]
  %348 = phi i64 [ %300, %292 ], [ %314, %303 ], [ %329, %318 ], [ %344, %333 ]
  %349 = phi i64 [ %299, %292 ], [ %315, %303 ], [ %330, %318 ], [ %345, %333 ]
  %350 = and i64 %349, 255
  %351 = lshr i64 %350, 3
  %352 = sub nsw i64 64, %350
  %353 = lshr i64 %348, %352
  %354 = and i64 %349, 7
  store i64 %353, ptr %0, align 1, !tbaa !14
  %355 = getelementptr inbounds i8, ptr %0, i64 %351
  br label %356

356:                                              ; preds = %346, %284
  %357 = phi i64 [ %354, %346 ], [ 0, %284 ]
  %358 = phi ptr [ %355, %346 ], [ %0, %284 ]
  %359 = phi i64 [ %348, %346 ], [ 0, %284 ]
  %360 = phi i32 [ %347, %346 ], [ %283, %284 ]
  %361 = srem i32 %360, 10
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %441, label %363

363:                                              ; preds = %356
  %364 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %360, i32 -1)
  %365 = extractvalue { i32, i1 } %364, 1, !nosanitize !53
  br i1 %365, label %291, label %366, !nosanitize !53

366:                                              ; preds = %363
  %367 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %360, i32 -2)
  %368 = extractvalue { i32, i1 } %367, 1, !nosanitize !53
  br i1 %368, label %291, label %369, !nosanitize !53

369:                                              ; preds = %366
  %370 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %360, i32 -3)
  %371 = extractvalue { i32, i1 } %370, 1, !nosanitize !53
  br i1 %371, label %291, label %372, !nosanitize !53

372:                                              ; preds = %369
  %373 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %360, i32 -4)
  %374 = extractvalue { i32, i1 } %373, 1, !nosanitize !53
  br i1 %374, label %291, label %375, !nosanitize !53

375:                                              ; preds = %372
  %376 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %360, i32 -5)
  %377 = extractvalue { i32, i1 } %376, 1, !nosanitize !53
  br i1 %377, label %291, label %378, !nosanitize !53

378:                                              ; preds = %375
  %379 = extractvalue { i32, i1 } %373, 0, !nosanitize !53
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i8, ptr %2, i64 %380
  %382 = load i8, ptr %381, align 1, !tbaa !5
  %383 = zext i8 %382 to i64
  %384 = getelementptr inbounds i64, ptr %7, i64 %383
  %385 = load i64, ptr %384, align 8, !tbaa !14
  %386 = extractvalue { i32, i1 } %370, 0, !nosanitize !53
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i8, ptr %2, i64 %387
  %389 = load i8, ptr %388, align 1, !tbaa !5
  %390 = zext i8 %389 to i64
  %391 = getelementptr inbounds i64, ptr %7, i64 %390
  %392 = load i64, ptr %391, align 8, !tbaa !14
  %393 = extractvalue { i32, i1 } %367, 0, !nosanitize !53
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i8, ptr %2, i64 %394
  %396 = load i8, ptr %395, align 1, !tbaa !5
  %397 = zext i8 %396 to i64
  %398 = getelementptr inbounds i64, ptr %7, i64 %397
  %399 = load i64, ptr %398, align 8, !tbaa !14
  %400 = extractvalue { i32, i1 } %364, 0, !nosanitize !53
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i8, ptr %2, i64 %401
  %403 = load i8, ptr %402, align 1, !tbaa !5
  %404 = zext i8 %403 to i64
  %405 = getelementptr inbounds i64, ptr %7, i64 %404
  %406 = load i64, ptr %405, align 8, !tbaa !14
  %407 = add i64 %406, %357
  %408 = add i64 %399, %407
  %409 = add i64 %392, %408
  %410 = add i64 %385, %409
  %411 = and i64 %406, 255
  %412 = lshr i64 %359, %411
  %413 = or i64 %412, %406
  %414 = and i64 %399, 255
  %415 = lshr i64 %413, %414
  %416 = or i64 %415, %399
  %417 = and i64 %392, 255
  %418 = lshr i64 %416, %417
  %419 = or i64 %418, %392
  %420 = and i64 %385, 255
  %421 = lshr i64 %419, %420
  %422 = or i64 %421, %385
  %423 = extractvalue { i32, i1 } %376, 0, !nosanitize !53
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i8, ptr %2, i64 %424
  %426 = load i8, ptr %425, align 1, !tbaa !5
  %427 = zext i8 %426 to i64
  %428 = getelementptr inbounds i64, ptr %7, i64 %427
  %429 = load i64, ptr %428, align 8, !tbaa !14
  %430 = and i64 %429, 255
  %431 = lshr i64 %422, %430
  %432 = and i64 %429, -256
  %433 = or i64 %431, %432
  %434 = add i64 %429, %410
  %435 = and i64 %434, 255
  %436 = lshr i64 %435, 3
  %437 = sub nsw i64 64, %435
  %438 = lshr i64 %433, %437
  %439 = and i64 %434, 7
  store i64 %438, ptr %358, align 1, !tbaa !14
  %440 = getelementptr inbounds i8, ptr %358, i64 %436
  br label %441

441:                                              ; preds = %378, %356
  %442 = phi i64 [ %357, %356 ], [ %439, %378 ]
  %443 = phi ptr [ %358, %356 ], [ %440, %378 ]
  %444 = phi i64 [ %359, %356 ], [ %433, %378 ]
  %445 = phi i32 [ %360, %356 ], [ %423, %378 ]
  %446 = getelementptr i8, ptr %2, i64 -10
  %447 = icmp sgt i32 %445, 0
  br i1 %447, label %448, label %2529

448:                                              ; preds = %441
  %449 = zext nneg i32 %445 to i64
  %450 = getelementptr i8, ptr %2, i64 -1
  %451 = getelementptr i8, ptr %2, i64 -2
  %452 = getelementptr i8, ptr %2, i64 -3
  %453 = getelementptr i8, ptr %2, i64 -4
  br label %454

454:                                              ; preds = %448, %524
  %455 = phi i64 [ %449, %448 ], [ %585, %524 ]
  %456 = phi i64 [ %444, %448 ], [ %577, %524 ]
  %457 = phi ptr [ %443, %448 ], [ %584, %524 ]
  %458 = phi i64 [ %442, %448 ], [ %583, %524 ]
  %459 = getelementptr i8, ptr %450, i64 %455
  %460 = load i8, ptr %459, align 1, !tbaa !5
  %461 = zext i8 %460 to i64
  %462 = getelementptr inbounds i64, ptr %7, i64 %461
  %463 = load i64, ptr %462, align 8, !tbaa !14
  %464 = and i64 %463, 255
  %465 = lshr i64 %456, %464
  %466 = or i64 %465, %463
  %467 = add i64 %463, %458
  %468 = getelementptr i8, ptr %451, i64 %455
  %469 = load i8, ptr %468, align 1, !tbaa !5
  %470 = zext i8 %469 to i64
  %471 = getelementptr inbounds i64, ptr %7, i64 %470
  %472 = load i64, ptr %471, align 8, !tbaa !14
  %473 = and i64 %472, 255
  %474 = lshr i64 %466, %473
  %475 = or i64 %474, %472
  %476 = add i64 %472, %467
  %477 = getelementptr i8, ptr %452, i64 %455
  %478 = load i8, ptr %477, align 1, !tbaa !5
  %479 = zext i8 %478 to i64
  %480 = getelementptr inbounds i64, ptr %7, i64 %479
  %481 = load i64, ptr %480, align 8, !tbaa !14
  %482 = and i64 %481, 255
  %483 = lshr i64 %475, %482
  %484 = or i64 %483, %481
  %485 = add i64 %481, %476
  %486 = getelementptr i8, ptr %453, i64 %455
  %487 = load i8, ptr %486, align 1, !tbaa !5
  %488 = zext i8 %487 to i64
  %489 = getelementptr inbounds i64, ptr %7, i64 %488
  %490 = load i64, ptr %489, align 8, !tbaa !14
  %491 = and i64 %490, 255
  %492 = lshr i64 %484, %491
  %493 = or i64 %492, %490
  %494 = add i64 %490, %485
  %495 = add nsw i64 %455, -5
  %496 = getelementptr inbounds i8, ptr %2, i64 %495
  %497 = load i8, ptr %496, align 1, !tbaa !5
  %498 = zext i8 %497 to i64
  %499 = getelementptr inbounds i64, ptr %7, i64 %498
  %500 = load i64, ptr %499, align 8, !tbaa !14
  %501 = and i64 %500, 255
  %502 = lshr i64 %493, %501
  %503 = and i64 %500, -256
  %504 = or i64 %502, %503
  %505 = add i64 %500, %494
  %506 = and i64 %505, 255
  %507 = lshr i64 %506, 3
  %508 = sub nsw i64 64, %506
  %509 = lshr i64 %504, %508
  %510 = and i64 %505, 7
  store i64 %509, ptr %457, align 1, !tbaa !14
  %511 = getelementptr inbounds i8, ptr %457, i64 %507
  %512 = trunc i64 %495 to i32
  %513 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %512, i32 -1)
  %514 = extractvalue { i32, i1 } %513, 1, !nosanitize !53
  br i1 %514, label %291, label %515, !nosanitize !53

515:                                              ; preds = %454
  %516 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %512, i32 -2)
  %517 = extractvalue { i32, i1 } %516, 1, !nosanitize !53
  br i1 %517, label %291, label %518, !nosanitize !53

518:                                              ; preds = %515
  %519 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %512, i32 -3)
  %520 = extractvalue { i32, i1 } %519, 1, !nosanitize !53
  br i1 %520, label %291, label %521, !nosanitize !53

521:                                              ; preds = %518
  %522 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %512, i32 -4)
  %523 = extractvalue { i32, i1 } %522, 1, !nosanitize !53
  br i1 %523, label %291, label %524, !nosanitize !53

524:                                              ; preds = %521
  %525 = extractvalue { i32, i1 } %519, 0, !nosanitize !53
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i8, ptr %2, i64 %526
  %528 = load i8, ptr %527, align 1, !tbaa !5
  %529 = zext i8 %528 to i64
  %530 = getelementptr inbounds i64, ptr %7, i64 %529
  %531 = load i64, ptr %530, align 8, !tbaa !14
  %532 = extractvalue { i32, i1 } %516, 0, !nosanitize !53
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i8, ptr %2, i64 %533
  %535 = load i8, ptr %534, align 1, !tbaa !5
  %536 = zext i8 %535 to i64
  %537 = getelementptr inbounds i64, ptr %7, i64 %536
  %538 = load i64, ptr %537, align 8, !tbaa !14
  %539 = extractvalue { i32, i1 } %513, 0, !nosanitize !53
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i8, ptr %2, i64 %540
  %542 = load i8, ptr %541, align 1, !tbaa !5
  %543 = zext i8 %542 to i64
  %544 = getelementptr inbounds i64, ptr %7, i64 %543
  %545 = load i64, ptr %544, align 8, !tbaa !14
  %546 = add i64 %538, %545
  %547 = add i64 %531, %546
  %548 = and i64 %538, 255
  %549 = lshr i64 %545, %548
  %550 = or i64 %549, %538
  %551 = and i64 %531, 255
  %552 = lshr i64 %550, %551
  %553 = or i64 %552, %531
  %554 = extractvalue { i32, i1 } %522, 0, !nosanitize !53
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds i8, ptr %2, i64 %555
  %557 = load i8, ptr %556, align 1, !tbaa !5
  %558 = zext i8 %557 to i64
  %559 = getelementptr inbounds i64, ptr %7, i64 %558
  %560 = load i64, ptr %559, align 8, !tbaa !14
  %561 = and i64 %560, 255
  %562 = lshr i64 %553, %561
  %563 = or i64 %562, %560
  %564 = add i64 %560, %547
  %565 = getelementptr i8, ptr %446, i64 %455
  %566 = load i8, ptr %565, align 1, !tbaa !5
  %567 = zext i8 %566 to i64
  %568 = getelementptr inbounds i64, ptr %7, i64 %567
  %569 = load i64, ptr %568, align 8, !tbaa !14
  %570 = and i64 %569, 255
  %571 = lshr i64 %563, %570
  %572 = and i64 %569, -256
  %573 = or i64 %571, %572
  %574 = add i64 %569, %564
  %575 = and i64 %574, 255
  %576 = lshr i64 %504, %575
  %577 = or i64 %573, %576
  %578 = add i64 %574, %510
  %579 = and i64 %578, 255
  %580 = lshr i64 %579, 3
  %581 = sub nsw i64 64, %579
  %582 = lshr i64 %577, %581
  %583 = and i64 %578, 7
  store i64 %582, ptr %511, align 1, !tbaa !14
  %584 = getelementptr inbounds i8, ptr %511, i64 %580
  %585 = add nsw i64 %455, -10
  %586 = icmp sgt i64 %455, 10
  br i1 %586, label %454, label %2529, !llvm.loop !80

587:                                              ; preds = %281
  %588 = srem i32 %283, 5
  %589 = icmp sgt i32 %588, 0
  br i1 %589, label %590, label %659

590:                                              ; preds = %587
  %591 = xor i32 %283, -2147483648
  %592 = add nsw i32 %588, -1
  %593 = icmp ugt i32 %591, %592
  br i1 %593, label %595, label %594, !nosanitize !53

594:                                              ; preds = %590, %605, %620, %635, %756, %816, %819, %822, %666, %669, %672, %675, %678
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !53
  unreachable, !nosanitize !53

595:                                              ; preds = %590
  %596 = add i32 %283, -1
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i8, ptr %2, i64 %597
  %599 = load i8, ptr %598, align 1, !tbaa !5
  %600 = zext i8 %599 to i64
  %601 = getelementptr inbounds i64, ptr %7, i64 %600
  %602 = load i64, ptr %601, align 8, !tbaa !14
  %603 = and i64 %602, -256
  %604 = icmp eq i32 %588, 1
  br i1 %604, label %649, label %605, !llvm.loop !79

605:                                              ; preds = %595
  br i1 %593, label %606, label %594, !nosanitize !53

606:                                              ; preds = %605
  %607 = add i32 %283, -2
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds i8, ptr %2, i64 %608
  %610 = load i8, ptr %609, align 1, !tbaa !5
  %611 = zext i8 %610 to i64
  %612 = getelementptr inbounds i64, ptr %7, i64 %611
  %613 = load i64, ptr %612, align 8, !tbaa !14
  %614 = and i64 %613, 255
  %615 = lshr i64 %603, %614
  %616 = and i64 %613, -256
  %617 = or i64 %615, %616
  %618 = add i64 %613, %602
  %619 = icmp sgt i32 %588, 2
  br i1 %619, label %620, label %649, !llvm.loop !79

620:                                              ; preds = %606
  br i1 %593, label %621, label %594, !nosanitize !53

621:                                              ; preds = %620
  %622 = add i32 %283, -3
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds i8, ptr %2, i64 %623
  %625 = load i8, ptr %624, align 1, !tbaa !5
  %626 = zext i8 %625 to i64
  %627 = getelementptr inbounds i64, ptr %7, i64 %626
  %628 = load i64, ptr %627, align 8, !tbaa !14
  %629 = and i64 %628, 255
  %630 = lshr i64 %617, %629
  %631 = and i64 %628, -256
  %632 = or i64 %630, %631
  %633 = add i64 %628, %618
  %634 = icmp eq i32 %588, 3
  br i1 %634, label %649, label %635, !llvm.loop !79

635:                                              ; preds = %621
  br i1 %593, label %636, label %594, !nosanitize !53

636:                                              ; preds = %635
  %637 = add i32 %283, -4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds i8, ptr %2, i64 %638
  %640 = load i8, ptr %639, align 1, !tbaa !5
  %641 = zext i8 %640 to i64
  %642 = getelementptr inbounds i64, ptr %7, i64 %641
  %643 = load i64, ptr %642, align 8, !tbaa !14
  %644 = and i64 %643, 255
  %645 = lshr i64 %632, %644
  %646 = and i64 %643, -256
  %647 = or i64 %645, %646
  %648 = add i64 %643, %633
  br label %649, !llvm.loop !79

649:                                              ; preds = %636, %621, %606, %595
  %650 = phi i32 [ %596, %595 ], [ %607, %606 ], [ %622, %621 ], [ %637, %636 ]
  %651 = phi i64 [ %603, %595 ], [ %617, %606 ], [ %632, %621 ], [ %647, %636 ]
  %652 = phi i64 [ %602, %595 ], [ %618, %606 ], [ %633, %621 ], [ %648, %636 ]
  %653 = and i64 %652, 255
  %654 = lshr i64 %653, 3
  %655 = sub nsw i64 64, %653
  %656 = lshr i64 %651, %655
  %657 = and i64 %652, 7
  store i64 %656, ptr %0, align 1, !tbaa !14
  %658 = getelementptr inbounds i8, ptr %0, i64 %654
  br label %659

659:                                              ; preds = %649, %587
  %660 = phi i64 [ %657, %649 ], [ 0, %587 ]
  %661 = phi ptr [ %658, %649 ], [ %0, %587 ]
  %662 = phi i64 [ %651, %649 ], [ 0, %587 ]
  %663 = phi i32 [ %650, %649 ], [ %283, %587 ]
  %664 = srem i32 %663, 10
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %743, label %666

666:                                              ; preds = %659
  %667 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %663, i32 -1)
  %668 = extractvalue { i32, i1 } %667, 1, !nosanitize !53
  br i1 %668, label %594, label %669, !nosanitize !53

669:                                              ; preds = %666
  %670 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %663, i32 -2)
  %671 = extractvalue { i32, i1 } %670, 1, !nosanitize !53
  br i1 %671, label %594, label %672, !nosanitize !53

672:                                              ; preds = %669
  %673 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %663, i32 -3)
  %674 = extractvalue { i32, i1 } %673, 1, !nosanitize !53
  br i1 %674, label %594, label %675, !nosanitize !53

675:                                              ; preds = %672
  %676 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %663, i32 -4)
  %677 = extractvalue { i32, i1 } %676, 1, !nosanitize !53
  br i1 %677, label %594, label %678, !nosanitize !53

678:                                              ; preds = %675
  %679 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %663, i32 -5)
  %680 = extractvalue { i32, i1 } %679, 1, !nosanitize !53
  br i1 %680, label %594, label %681, !nosanitize !53

681:                                              ; preds = %678
  %682 = extractvalue { i32, i1 } %676, 0, !nosanitize !53
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds i8, ptr %2, i64 %683
  %685 = load i8, ptr %684, align 1, !tbaa !5
  %686 = zext i8 %685 to i64
  %687 = getelementptr inbounds i64, ptr %7, i64 %686
  %688 = load i64, ptr %687, align 8, !tbaa !14
  %689 = extractvalue { i32, i1 } %673, 0, !nosanitize !53
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds i8, ptr %2, i64 %690
  %692 = load i8, ptr %691, align 1, !tbaa !5
  %693 = zext i8 %692 to i64
  %694 = getelementptr inbounds i64, ptr %7, i64 %693
  %695 = load i64, ptr %694, align 8, !tbaa !14
  %696 = extractvalue { i32, i1 } %670, 0, !nosanitize !53
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds i8, ptr %2, i64 %697
  %699 = load i8, ptr %698, align 1, !tbaa !5
  %700 = zext i8 %699 to i64
  %701 = getelementptr inbounds i64, ptr %7, i64 %700
  %702 = load i64, ptr %701, align 8, !tbaa !14
  %703 = extractvalue { i32, i1 } %667, 0, !nosanitize !53
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds i8, ptr %2, i64 %704
  %706 = load i8, ptr %705, align 1, !tbaa !5
  %707 = zext i8 %706 to i64
  %708 = getelementptr inbounds i64, ptr %7, i64 %707
  %709 = load i64, ptr %708, align 8, !tbaa !14
  %710 = add i64 %709, %660
  %711 = add i64 %702, %710
  %712 = add i64 %695, %711
  %713 = add i64 %688, %712
  %714 = and i64 %709, 255
  %715 = lshr i64 %662, %714
  %716 = or i64 %715, %709
  %717 = and i64 %702, 255
  %718 = lshr i64 %716, %717
  %719 = or i64 %718, %702
  %720 = and i64 %695, 255
  %721 = lshr i64 %719, %720
  %722 = or i64 %721, %695
  %723 = and i64 %688, 255
  %724 = lshr i64 %722, %723
  %725 = or i64 %724, %688
  %726 = extractvalue { i32, i1 } %679, 0, !nosanitize !53
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds i8, ptr %2, i64 %727
  %729 = load i8, ptr %728, align 1, !tbaa !5
  %730 = zext i8 %729 to i64
  %731 = getelementptr inbounds i64, ptr %7, i64 %730
  %732 = load i64, ptr %731, align 8, !tbaa !14
  %733 = and i64 %732, 255
  %734 = lshr i64 %725, %733
  %735 = or i64 %734, %732
  %736 = add i64 %732, %713
  %737 = and i64 %736, 255
  %738 = lshr i64 %737, 3
  %739 = sub nsw i64 64, %737
  %740 = lshr i64 %735, %739
  %741 = and i64 %736, 7
  store i64 %740, ptr %661, align 1, !tbaa !14
  %742 = getelementptr inbounds i8, ptr %661, i64 %738
  br label %743

743:                                              ; preds = %681, %659
  %744 = phi i64 [ %660, %659 ], [ %741, %681 ]
  %745 = phi ptr [ %661, %659 ], [ %742, %681 ]
  %746 = phi i64 [ %662, %659 ], [ %735, %681 ]
  %747 = phi i32 [ %663, %659 ], [ %726, %681 ]
  %748 = getelementptr i8, ptr %2, i64 -10
  %749 = icmp sgt i32 %747, 0
  br i1 %749, label %750, label %2529

750:                                              ; preds = %743
  %751 = zext nneg i32 %747 to i64
  %752 = getelementptr i8, ptr %2, i64 -1
  %753 = getelementptr i8, ptr %2, i64 -2
  %754 = getelementptr i8, ptr %2, i64 -3
  %755 = getelementptr i8, ptr %2, i64 -4
  br label %756

756:                                              ; preds = %750, %825
  %757 = phi i64 [ %751, %750 ], [ %885, %825 ]
  %758 = phi i64 [ %746, %750 ], [ %877, %825 ]
  %759 = phi ptr [ %745, %750 ], [ %884, %825 ]
  %760 = phi i64 [ %744, %750 ], [ %883, %825 ]
  %761 = getelementptr i8, ptr %752, i64 %757
  %762 = load i8, ptr %761, align 1, !tbaa !5
  %763 = zext i8 %762 to i64
  %764 = getelementptr inbounds i64, ptr %7, i64 %763
  %765 = load i64, ptr %764, align 8, !tbaa !14
  %766 = and i64 %765, 255
  %767 = lshr i64 %758, %766
  %768 = or i64 %767, %765
  %769 = add i64 %765, %760
  %770 = getelementptr i8, ptr %753, i64 %757
  %771 = load i8, ptr %770, align 1, !tbaa !5
  %772 = zext i8 %771 to i64
  %773 = getelementptr inbounds i64, ptr %7, i64 %772
  %774 = load i64, ptr %773, align 8, !tbaa !14
  %775 = and i64 %774, 255
  %776 = lshr i64 %768, %775
  %777 = or i64 %776, %774
  %778 = add i64 %774, %769
  %779 = getelementptr i8, ptr %754, i64 %757
  %780 = load i8, ptr %779, align 1, !tbaa !5
  %781 = zext i8 %780 to i64
  %782 = getelementptr inbounds i64, ptr %7, i64 %781
  %783 = load i64, ptr %782, align 8, !tbaa !14
  %784 = and i64 %783, 255
  %785 = lshr i64 %777, %784
  %786 = or i64 %785, %783
  %787 = add i64 %783, %778
  %788 = getelementptr i8, ptr %755, i64 %757
  %789 = load i8, ptr %788, align 1, !tbaa !5
  %790 = zext i8 %789 to i64
  %791 = getelementptr inbounds i64, ptr %7, i64 %790
  %792 = load i64, ptr %791, align 8, !tbaa !14
  %793 = and i64 %792, 255
  %794 = lshr i64 %786, %793
  %795 = or i64 %794, %792
  %796 = add i64 %792, %787
  %797 = add nsw i64 %757, -5
  %798 = getelementptr inbounds i8, ptr %2, i64 %797
  %799 = load i8, ptr %798, align 1, !tbaa !5
  %800 = zext i8 %799 to i64
  %801 = getelementptr inbounds i64, ptr %7, i64 %800
  %802 = load i64, ptr %801, align 8, !tbaa !14
  %803 = and i64 %802, 255
  %804 = lshr i64 %795, %803
  %805 = or i64 %804, %802
  %806 = add i64 %802, %796
  %807 = and i64 %806, 255
  %808 = lshr i64 %807, 3
  %809 = sub nsw i64 64, %807
  %810 = lshr i64 %805, %809
  %811 = and i64 %806, 7
  store i64 %810, ptr %759, align 1, !tbaa !14
  %812 = getelementptr inbounds i8, ptr %759, i64 %808
  %813 = trunc i64 %797 to i32
  %814 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %813, i32 -1)
  %815 = extractvalue { i32, i1 } %814, 1, !nosanitize !53
  br i1 %815, label %594, label %816, !nosanitize !53

816:                                              ; preds = %756
  %817 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %813, i32 -2)
  %818 = extractvalue { i32, i1 } %817, 1, !nosanitize !53
  br i1 %818, label %594, label %819, !nosanitize !53

819:                                              ; preds = %816
  %820 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %813, i32 -3)
  %821 = extractvalue { i32, i1 } %820, 1, !nosanitize !53
  br i1 %821, label %594, label %822, !nosanitize !53

822:                                              ; preds = %819
  %823 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %813, i32 -4)
  %824 = extractvalue { i32, i1 } %823, 1, !nosanitize !53
  br i1 %824, label %594, label %825, !nosanitize !53

825:                                              ; preds = %822
  %826 = extractvalue { i32, i1 } %820, 0, !nosanitize !53
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds i8, ptr %2, i64 %827
  %829 = load i8, ptr %828, align 1, !tbaa !5
  %830 = zext i8 %829 to i64
  %831 = getelementptr inbounds i64, ptr %7, i64 %830
  %832 = load i64, ptr %831, align 8, !tbaa !14
  %833 = extractvalue { i32, i1 } %817, 0, !nosanitize !53
  %834 = sext i32 %833 to i64
  %835 = getelementptr inbounds i8, ptr %2, i64 %834
  %836 = load i8, ptr %835, align 1, !tbaa !5
  %837 = zext i8 %836 to i64
  %838 = getelementptr inbounds i64, ptr %7, i64 %837
  %839 = load i64, ptr %838, align 8, !tbaa !14
  %840 = extractvalue { i32, i1 } %814, 0, !nosanitize !53
  %841 = sext i32 %840 to i64
  %842 = getelementptr inbounds i8, ptr %2, i64 %841
  %843 = load i8, ptr %842, align 1, !tbaa !5
  %844 = zext i8 %843 to i64
  %845 = getelementptr inbounds i64, ptr %7, i64 %844
  %846 = load i64, ptr %845, align 8, !tbaa !14
  %847 = add i64 %839, %846
  %848 = add i64 %832, %847
  %849 = and i64 %839, 255
  %850 = lshr i64 %846, %849
  %851 = or i64 %850, %839
  %852 = and i64 %832, 255
  %853 = lshr i64 %851, %852
  %854 = or i64 %853, %832
  %855 = extractvalue { i32, i1 } %823, 0, !nosanitize !53
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds i8, ptr %2, i64 %856
  %858 = load i8, ptr %857, align 1, !tbaa !5
  %859 = zext i8 %858 to i64
  %860 = getelementptr inbounds i64, ptr %7, i64 %859
  %861 = load i64, ptr %860, align 8, !tbaa !14
  %862 = and i64 %861, 255
  %863 = lshr i64 %854, %862
  %864 = or i64 %863, %861
  %865 = add i64 %861, %848
  %866 = getelementptr i8, ptr %748, i64 %757
  %867 = load i8, ptr %866, align 1, !tbaa !5
  %868 = zext i8 %867 to i64
  %869 = getelementptr inbounds i64, ptr %7, i64 %868
  %870 = load i64, ptr %869, align 8, !tbaa !14
  %871 = and i64 %870, 255
  %872 = lshr i64 %864, %871
  %873 = add i64 %870, %865
  %874 = and i64 %873, 255
  %875 = lshr i64 %805, %874
  %876 = or i64 %872, %875
  %877 = or i64 %876, %870
  %878 = add i64 %873, %811
  %879 = and i64 %878, 255
  %880 = lshr i64 %879, 3
  %881 = sub nsw i64 64, %879
  %882 = lshr i64 %877, %881
  %883 = and i64 %878, 7
  store i64 %882, ptr %812, align 1, !tbaa !14
  %884 = getelementptr inbounds i8, ptr %812, i64 %880
  %885 = add nsw i64 %757, -10
  %886 = icmp sgt i64 %757, 10
  br i1 %886, label %756, label %2529, !llvm.loop !80

887:                                              ; preds = %281
  %888 = srem i32 %283, 6
  %889 = icmp sgt i32 %888, 0
  br i1 %889, label %890, label %974

890:                                              ; preds = %887
  %891 = xor i32 %283, -2147483648
  %892 = add nsw i32 %888, -1
  %893 = icmp ugt i32 %891, %892
  br i1 %893, label %895, label %894, !nosanitize !53

894:                                              ; preds = %890, %905, %920, %935, %950, %1087, %1157, %1160, %1163, %1166, %981, %984, %987, %990, %993, %996
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !53
  unreachable, !nosanitize !53

895:                                              ; preds = %890
  %896 = add i32 %283, -1
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds i8, ptr %2, i64 %897
  %899 = load i8, ptr %898, align 1, !tbaa !5
  %900 = zext i8 %899 to i64
  %901 = getelementptr inbounds i64, ptr %7, i64 %900
  %902 = load i64, ptr %901, align 8, !tbaa !14
  %903 = and i64 %902, -256
  %904 = icmp eq i32 %888, 1
  br i1 %904, label %964, label %905, !llvm.loop !79

905:                                              ; preds = %895
  br i1 %893, label %906, label %894, !nosanitize !53

906:                                              ; preds = %905
  %907 = add i32 %283, -2
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds i8, ptr %2, i64 %908
  %910 = load i8, ptr %909, align 1, !tbaa !5
  %911 = zext i8 %910 to i64
  %912 = getelementptr inbounds i64, ptr %7, i64 %911
  %913 = load i64, ptr %912, align 8, !tbaa !14
  %914 = and i64 %913, 255
  %915 = lshr i64 %903, %914
  %916 = and i64 %913, -256
  %917 = or i64 %915, %916
  %918 = add i64 %913, %902
  %919 = icmp sgt i32 %888, 2
  br i1 %919, label %920, label %964, !llvm.loop !79

920:                                              ; preds = %906
  br i1 %893, label %921, label %894, !nosanitize !53

921:                                              ; preds = %920
  %922 = add i32 %283, -3
  %923 = sext i32 %922 to i64
  %924 = getelementptr inbounds i8, ptr %2, i64 %923
  %925 = load i8, ptr %924, align 1, !tbaa !5
  %926 = zext i8 %925 to i64
  %927 = getelementptr inbounds i64, ptr %7, i64 %926
  %928 = load i64, ptr %927, align 8, !tbaa !14
  %929 = and i64 %928, 255
  %930 = lshr i64 %917, %929
  %931 = and i64 %928, -256
  %932 = or i64 %930, %931
  %933 = add i64 %928, %918
  %934 = icmp eq i32 %888, 3
  br i1 %934, label %964, label %935, !llvm.loop !79

935:                                              ; preds = %921
  br i1 %893, label %936, label %894, !nosanitize !53

936:                                              ; preds = %935
  %937 = add i32 %283, -4
  %938 = sext i32 %937 to i64
  %939 = getelementptr inbounds i8, ptr %2, i64 %938
  %940 = load i8, ptr %939, align 1, !tbaa !5
  %941 = zext i8 %940 to i64
  %942 = getelementptr inbounds i64, ptr %7, i64 %941
  %943 = load i64, ptr %942, align 8, !tbaa !14
  %944 = and i64 %943, 255
  %945 = lshr i64 %932, %944
  %946 = and i64 %943, -256
  %947 = or i64 %945, %946
  %948 = add i64 %943, %933
  %949 = icmp sgt i32 %888, 4
  br i1 %949, label %950, label %964, !llvm.loop !79

950:                                              ; preds = %936
  br i1 %893, label %951, label %894, !nosanitize !53

951:                                              ; preds = %950
  %952 = add i32 %283, -5
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds i8, ptr %2, i64 %953
  %955 = load i8, ptr %954, align 1, !tbaa !5
  %956 = zext i8 %955 to i64
  %957 = getelementptr inbounds i64, ptr %7, i64 %956
  %958 = load i64, ptr %957, align 8, !tbaa !14
  %959 = and i64 %958, 255
  %960 = lshr i64 %947, %959
  %961 = and i64 %958, -256
  %962 = or i64 %960, %961
  %963 = add i64 %958, %948
  br label %964, !llvm.loop !79

964:                                              ; preds = %951, %936, %921, %906, %895
  %965 = phi i32 [ %896, %895 ], [ %907, %906 ], [ %922, %921 ], [ %937, %936 ], [ %952, %951 ]
  %966 = phi i64 [ %903, %895 ], [ %917, %906 ], [ %932, %921 ], [ %947, %936 ], [ %962, %951 ]
  %967 = phi i64 [ %902, %895 ], [ %918, %906 ], [ %933, %921 ], [ %948, %936 ], [ %963, %951 ]
  %968 = and i64 %967, 255
  %969 = lshr i64 %968, 3
  %970 = sub nsw i64 64, %968
  %971 = lshr i64 %966, %970
  %972 = and i64 %967, 7
  store i64 %971, ptr %0, align 1, !tbaa !14
  %973 = getelementptr inbounds i8, ptr %0, i64 %969
  br label %974

974:                                              ; preds = %964, %887
  %975 = phi i64 [ %972, %964 ], [ 0, %887 ]
  %976 = phi ptr [ %973, %964 ], [ %0, %887 ]
  %977 = phi i64 [ %966, %964 ], [ 0, %887 ]
  %978 = phi i32 [ %965, %964 ], [ %283, %887 ]
  %979 = srem i32 %978, 12
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %1073, label %981

981:                                              ; preds = %974
  %982 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %978, i32 -1)
  %983 = extractvalue { i32, i1 } %982, 1, !nosanitize !53
  br i1 %983, label %894, label %984, !nosanitize !53

984:                                              ; preds = %981
  %985 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %978, i32 -2)
  %986 = extractvalue { i32, i1 } %985, 1, !nosanitize !53
  br i1 %986, label %894, label %987, !nosanitize !53

987:                                              ; preds = %984
  %988 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %978, i32 -3)
  %989 = extractvalue { i32, i1 } %988, 1, !nosanitize !53
  br i1 %989, label %894, label %990, !nosanitize !53

990:                                              ; preds = %987
  %991 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %978, i32 -4)
  %992 = extractvalue { i32, i1 } %991, 1, !nosanitize !53
  br i1 %992, label %894, label %993, !nosanitize !53

993:                                              ; preds = %990
  %994 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %978, i32 -5)
  %995 = extractvalue { i32, i1 } %994, 1, !nosanitize !53
  br i1 %995, label %894, label %996, !nosanitize !53

996:                                              ; preds = %993
  %997 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %978, i32 -6)
  %998 = extractvalue { i32, i1 } %997, 1, !nosanitize !53
  br i1 %998, label %894, label %999, !nosanitize !53

999:                                              ; preds = %996
  %1000 = extractvalue { i32, i1 } %994, 0, !nosanitize !53
  %1001 = sext i32 %1000 to i64
  %1002 = getelementptr inbounds i8, ptr %2, i64 %1001
  %1003 = load i8, ptr %1002, align 1, !tbaa !5
  %1004 = zext i8 %1003 to i64
  %1005 = getelementptr inbounds i64, ptr %7, i64 %1004
  %1006 = load i64, ptr %1005, align 8, !tbaa !14
  %1007 = extractvalue { i32, i1 } %991, 0, !nosanitize !53
  %1008 = sext i32 %1007 to i64
  %1009 = getelementptr inbounds i8, ptr %2, i64 %1008
  %1010 = load i8, ptr %1009, align 1, !tbaa !5
  %1011 = zext i8 %1010 to i64
  %1012 = getelementptr inbounds i64, ptr %7, i64 %1011
  %1013 = load i64, ptr %1012, align 8, !tbaa !14
  %1014 = extractvalue { i32, i1 } %988, 0, !nosanitize !53
  %1015 = sext i32 %1014 to i64
  %1016 = getelementptr inbounds i8, ptr %2, i64 %1015
  %1017 = load i8, ptr %1016, align 1, !tbaa !5
  %1018 = zext i8 %1017 to i64
  %1019 = getelementptr inbounds i64, ptr %7, i64 %1018
  %1020 = load i64, ptr %1019, align 8, !tbaa !14
  %1021 = extractvalue { i32, i1 } %985, 0, !nosanitize !53
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds i8, ptr %2, i64 %1022
  %1024 = load i8, ptr %1023, align 1, !tbaa !5
  %1025 = zext i8 %1024 to i64
  %1026 = getelementptr inbounds i64, ptr %7, i64 %1025
  %1027 = load i64, ptr %1026, align 8, !tbaa !14
  %1028 = extractvalue { i32, i1 } %982, 0, !nosanitize !53
  %1029 = sext i32 %1028 to i64
  %1030 = getelementptr inbounds i8, ptr %2, i64 %1029
  %1031 = load i8, ptr %1030, align 1, !tbaa !5
  %1032 = zext i8 %1031 to i64
  %1033 = getelementptr inbounds i64, ptr %7, i64 %1032
  %1034 = load i64, ptr %1033, align 8, !tbaa !14
  %1035 = add i64 %1034, %975
  %1036 = add i64 %1027, %1035
  %1037 = add i64 %1020, %1036
  %1038 = add i64 %1013, %1037
  %1039 = add i64 %1006, %1038
  %1040 = and i64 %1034, 255
  %1041 = lshr i64 %977, %1040
  %1042 = or i64 %1041, %1034
  %1043 = and i64 %1027, 255
  %1044 = lshr i64 %1042, %1043
  %1045 = or i64 %1044, %1027
  %1046 = and i64 %1020, 255
  %1047 = lshr i64 %1045, %1046
  %1048 = or i64 %1047, %1020
  %1049 = and i64 %1013, 255
  %1050 = lshr i64 %1048, %1049
  %1051 = or i64 %1050, %1013
  %1052 = and i64 %1006, 255
  %1053 = lshr i64 %1051, %1052
  %1054 = or i64 %1053, %1006
  %1055 = extractvalue { i32, i1 } %997, 0, !nosanitize !53
  %1056 = sext i32 %1055 to i64
  %1057 = getelementptr inbounds i8, ptr %2, i64 %1056
  %1058 = load i8, ptr %1057, align 1, !tbaa !5
  %1059 = zext i8 %1058 to i64
  %1060 = getelementptr inbounds i64, ptr %7, i64 %1059
  %1061 = load i64, ptr %1060, align 8, !tbaa !14
  %1062 = and i64 %1061, 255
  %1063 = lshr i64 %1054, %1062
  %1064 = and i64 %1061, -256
  %1065 = or i64 %1063, %1064
  %1066 = add i64 %1061, %1039
  %1067 = and i64 %1066, 255
  %1068 = lshr i64 %1067, 3
  %1069 = sub nsw i64 64, %1067
  %1070 = lshr i64 %1065, %1069
  %1071 = and i64 %1066, 7
  store i64 %1070, ptr %976, align 1, !tbaa !14
  %1072 = getelementptr inbounds i8, ptr %976, i64 %1068
  br label %1073

1073:                                             ; preds = %999, %974
  %1074 = phi i64 [ %975, %974 ], [ %1071, %999 ]
  %1075 = phi ptr [ %976, %974 ], [ %1072, %999 ]
  %1076 = phi i64 [ %977, %974 ], [ %1065, %999 ]
  %1077 = phi i32 [ %978, %974 ], [ %1055, %999 ]
  %1078 = getelementptr i8, ptr %2, i64 -12
  %1079 = icmp sgt i32 %1077, 0
  br i1 %1079, label %1080, label %2529

1080:                                             ; preds = %1073
  %1081 = zext nneg i32 %1077 to i64
  %1082 = getelementptr i8, ptr %2, i64 -1
  %1083 = getelementptr i8, ptr %2, i64 -2
  %1084 = getelementptr i8, ptr %2, i64 -3
  %1085 = getelementptr i8, ptr %2, i64 -4
  %1086 = getelementptr i8, ptr %2, i64 -5
  br label %1087

1087:                                             ; preds = %1080, %1169
  %1088 = phi i64 [ %1081, %1080 ], [ %1241, %1169 ]
  %1089 = phi i64 [ %1076, %1080 ], [ %1233, %1169 ]
  %1090 = phi ptr [ %1075, %1080 ], [ %1240, %1169 ]
  %1091 = phi i64 [ %1074, %1080 ], [ %1239, %1169 ]
  %1092 = getelementptr i8, ptr %1082, i64 %1088
  %1093 = load i8, ptr %1092, align 1, !tbaa !5
  %1094 = zext i8 %1093 to i64
  %1095 = getelementptr inbounds i64, ptr %7, i64 %1094
  %1096 = load i64, ptr %1095, align 8, !tbaa !14
  %1097 = and i64 %1096, 255
  %1098 = lshr i64 %1089, %1097
  %1099 = or i64 %1098, %1096
  %1100 = add i64 %1096, %1091
  %1101 = getelementptr i8, ptr %1083, i64 %1088
  %1102 = load i8, ptr %1101, align 1, !tbaa !5
  %1103 = zext i8 %1102 to i64
  %1104 = getelementptr inbounds i64, ptr %7, i64 %1103
  %1105 = load i64, ptr %1104, align 8, !tbaa !14
  %1106 = and i64 %1105, 255
  %1107 = lshr i64 %1099, %1106
  %1108 = or i64 %1107, %1105
  %1109 = add i64 %1105, %1100
  %1110 = getelementptr i8, ptr %1084, i64 %1088
  %1111 = load i8, ptr %1110, align 1, !tbaa !5
  %1112 = zext i8 %1111 to i64
  %1113 = getelementptr inbounds i64, ptr %7, i64 %1112
  %1114 = load i64, ptr %1113, align 8, !tbaa !14
  %1115 = and i64 %1114, 255
  %1116 = lshr i64 %1108, %1115
  %1117 = or i64 %1116, %1114
  %1118 = add i64 %1114, %1109
  %1119 = getelementptr i8, ptr %1085, i64 %1088
  %1120 = load i8, ptr %1119, align 1, !tbaa !5
  %1121 = zext i8 %1120 to i64
  %1122 = getelementptr inbounds i64, ptr %7, i64 %1121
  %1123 = load i64, ptr %1122, align 8, !tbaa !14
  %1124 = and i64 %1123, 255
  %1125 = lshr i64 %1117, %1124
  %1126 = or i64 %1125, %1123
  %1127 = add i64 %1123, %1118
  %1128 = getelementptr i8, ptr %1086, i64 %1088
  %1129 = load i8, ptr %1128, align 1, !tbaa !5
  %1130 = zext i8 %1129 to i64
  %1131 = getelementptr inbounds i64, ptr %7, i64 %1130
  %1132 = load i64, ptr %1131, align 8, !tbaa !14
  %1133 = and i64 %1132, 255
  %1134 = lshr i64 %1126, %1133
  %1135 = or i64 %1134, %1132
  %1136 = add i64 %1132, %1127
  %1137 = add nsw i64 %1088, -6
  %1138 = getelementptr inbounds i8, ptr %2, i64 %1137
  %1139 = load i8, ptr %1138, align 1, !tbaa !5
  %1140 = zext i8 %1139 to i64
  %1141 = getelementptr inbounds i64, ptr %7, i64 %1140
  %1142 = load i64, ptr %1141, align 8, !tbaa !14
  %1143 = and i64 %1142, 255
  %1144 = lshr i64 %1135, %1143
  %1145 = and i64 %1142, -256
  %1146 = or i64 %1144, %1145
  %1147 = add i64 %1142, %1136
  %1148 = and i64 %1147, 255
  %1149 = lshr i64 %1148, 3
  %1150 = sub nsw i64 64, %1148
  %1151 = lshr i64 %1146, %1150
  %1152 = and i64 %1147, 7
  store i64 %1151, ptr %1090, align 1, !tbaa !14
  %1153 = getelementptr inbounds i8, ptr %1090, i64 %1149
  %1154 = trunc i64 %1137 to i32
  %1155 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1154, i32 -1)
  %1156 = extractvalue { i32, i1 } %1155, 1, !nosanitize !53
  br i1 %1156, label %894, label %1157, !nosanitize !53

1157:                                             ; preds = %1087
  %1158 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1154, i32 -2)
  %1159 = extractvalue { i32, i1 } %1158, 1, !nosanitize !53
  br i1 %1159, label %894, label %1160, !nosanitize !53

1160:                                             ; preds = %1157
  %1161 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1154, i32 -3)
  %1162 = extractvalue { i32, i1 } %1161, 1, !nosanitize !53
  br i1 %1162, label %894, label %1163, !nosanitize !53

1163:                                             ; preds = %1160
  %1164 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1154, i32 -4)
  %1165 = extractvalue { i32, i1 } %1164, 1, !nosanitize !53
  br i1 %1165, label %894, label %1166, !nosanitize !53

1166:                                             ; preds = %1163
  %1167 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1154, i32 -5)
  %1168 = extractvalue { i32, i1 } %1167, 1, !nosanitize !53
  br i1 %1168, label %894, label %1169, !nosanitize !53

1169:                                             ; preds = %1166
  %1170 = extractvalue { i32, i1 } %1164, 0, !nosanitize !53
  %1171 = sext i32 %1170 to i64
  %1172 = getelementptr inbounds i8, ptr %2, i64 %1171
  %1173 = load i8, ptr %1172, align 1, !tbaa !5
  %1174 = zext i8 %1173 to i64
  %1175 = getelementptr inbounds i64, ptr %7, i64 %1174
  %1176 = load i64, ptr %1175, align 8, !tbaa !14
  %1177 = extractvalue { i32, i1 } %1161, 0, !nosanitize !53
  %1178 = sext i32 %1177 to i64
  %1179 = getelementptr inbounds i8, ptr %2, i64 %1178
  %1180 = load i8, ptr %1179, align 1, !tbaa !5
  %1181 = zext i8 %1180 to i64
  %1182 = getelementptr inbounds i64, ptr %7, i64 %1181
  %1183 = load i64, ptr %1182, align 8, !tbaa !14
  %1184 = extractvalue { i32, i1 } %1158, 0, !nosanitize !53
  %1185 = sext i32 %1184 to i64
  %1186 = getelementptr inbounds i8, ptr %2, i64 %1185
  %1187 = load i8, ptr %1186, align 1, !tbaa !5
  %1188 = zext i8 %1187 to i64
  %1189 = getelementptr inbounds i64, ptr %7, i64 %1188
  %1190 = load i64, ptr %1189, align 8, !tbaa !14
  %1191 = extractvalue { i32, i1 } %1155, 0, !nosanitize !53
  %1192 = sext i32 %1191 to i64
  %1193 = getelementptr inbounds i8, ptr %2, i64 %1192
  %1194 = load i8, ptr %1193, align 1, !tbaa !5
  %1195 = zext i8 %1194 to i64
  %1196 = getelementptr inbounds i64, ptr %7, i64 %1195
  %1197 = load i64, ptr %1196, align 8, !tbaa !14
  %1198 = add i64 %1190, %1197
  %1199 = add i64 %1183, %1198
  %1200 = add i64 %1176, %1199
  %1201 = and i64 %1190, 255
  %1202 = lshr i64 %1197, %1201
  %1203 = or i64 %1202, %1190
  %1204 = and i64 %1183, 255
  %1205 = lshr i64 %1203, %1204
  %1206 = or i64 %1205, %1183
  %1207 = and i64 %1176, 255
  %1208 = lshr i64 %1206, %1207
  %1209 = or i64 %1208, %1176
  %1210 = extractvalue { i32, i1 } %1167, 0, !nosanitize !53
  %1211 = sext i32 %1210 to i64
  %1212 = getelementptr inbounds i8, ptr %2, i64 %1211
  %1213 = load i8, ptr %1212, align 1, !tbaa !5
  %1214 = zext i8 %1213 to i64
  %1215 = getelementptr inbounds i64, ptr %7, i64 %1214
  %1216 = load i64, ptr %1215, align 8, !tbaa !14
  %1217 = and i64 %1216, 255
  %1218 = lshr i64 %1209, %1217
  %1219 = or i64 %1218, %1216
  %1220 = add i64 %1216, %1200
  %1221 = getelementptr i8, ptr %1078, i64 %1088
  %1222 = load i8, ptr %1221, align 1, !tbaa !5
  %1223 = zext i8 %1222 to i64
  %1224 = getelementptr inbounds i64, ptr %7, i64 %1223
  %1225 = load i64, ptr %1224, align 8, !tbaa !14
  %1226 = and i64 %1225, 255
  %1227 = lshr i64 %1219, %1226
  %1228 = and i64 %1225, -256
  %1229 = or i64 %1227, %1228
  %1230 = add i64 %1225, %1220
  %1231 = and i64 %1230, 255
  %1232 = lshr i64 %1146, %1231
  %1233 = or i64 %1229, %1232
  %1234 = add i64 %1230, %1152
  %1235 = and i64 %1234, 255
  %1236 = lshr i64 %1235, 3
  %1237 = sub nsw i64 64, %1235
  %1238 = lshr i64 %1233, %1237
  %1239 = and i64 %1234, 7
  store i64 %1238, ptr %1153, align 1, !tbaa !14
  %1240 = getelementptr inbounds i8, ptr %1153, i64 %1236
  %1241 = add nsw i64 %1088, -12
  %1242 = icmp sgt i64 %1088, 12
  br i1 %1242, label %1087, label %2529, !llvm.loop !80

1243:                                             ; preds = %281
  %1244 = srem i32 %283, 7
  %1245 = icmp sgt i32 %1244, 0
  br i1 %1245, label %1246, label %1345

1246:                                             ; preds = %1243
  %1247 = xor i32 %283, -2147483648
  %1248 = add nsw i32 %1244, -1
  %1249 = icmp ugt i32 %1247, %1248
  br i1 %1249, label %1251, label %1250, !nosanitize !53

1250:                                             ; preds = %1246, %1261, %1276, %1291, %1306, %1321, %1473, %1552, %1555, %1558, %1561, %1564, %1352, %1355, %1358, %1361, %1364, %1367, %1370
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !53
  unreachable, !nosanitize !53

1251:                                             ; preds = %1246
  %1252 = add i32 %283, -1
  %1253 = sext i32 %1252 to i64
  %1254 = getelementptr inbounds i8, ptr %2, i64 %1253
  %1255 = load i8, ptr %1254, align 1, !tbaa !5
  %1256 = zext i8 %1255 to i64
  %1257 = getelementptr inbounds i64, ptr %7, i64 %1256
  %1258 = load i64, ptr %1257, align 8, !tbaa !14
  %1259 = and i64 %1258, -256
  %1260 = icmp eq i32 %1244, 1
  br i1 %1260, label %1335, label %1261, !llvm.loop !79

1261:                                             ; preds = %1251
  br i1 %1249, label %1262, label %1250, !nosanitize !53

1262:                                             ; preds = %1261
  %1263 = add i32 %283, -2
  %1264 = sext i32 %1263 to i64
  %1265 = getelementptr inbounds i8, ptr %2, i64 %1264
  %1266 = load i8, ptr %1265, align 1, !tbaa !5
  %1267 = zext i8 %1266 to i64
  %1268 = getelementptr inbounds i64, ptr %7, i64 %1267
  %1269 = load i64, ptr %1268, align 8, !tbaa !14
  %1270 = and i64 %1269, 255
  %1271 = lshr i64 %1259, %1270
  %1272 = and i64 %1269, -256
  %1273 = or i64 %1271, %1272
  %1274 = add i64 %1269, %1258
  %1275 = icmp sgt i32 %1244, 2
  br i1 %1275, label %1276, label %1335, !llvm.loop !79

1276:                                             ; preds = %1262
  br i1 %1249, label %1277, label %1250, !nosanitize !53

1277:                                             ; preds = %1276
  %1278 = add i32 %283, -3
  %1279 = sext i32 %1278 to i64
  %1280 = getelementptr inbounds i8, ptr %2, i64 %1279
  %1281 = load i8, ptr %1280, align 1, !tbaa !5
  %1282 = zext i8 %1281 to i64
  %1283 = getelementptr inbounds i64, ptr %7, i64 %1282
  %1284 = load i64, ptr %1283, align 8, !tbaa !14
  %1285 = and i64 %1284, 255
  %1286 = lshr i64 %1273, %1285
  %1287 = and i64 %1284, -256
  %1288 = or i64 %1286, %1287
  %1289 = add i64 %1284, %1274
  %1290 = icmp eq i32 %1244, 3
  br i1 %1290, label %1335, label %1291, !llvm.loop !79

1291:                                             ; preds = %1277
  br i1 %1249, label %1292, label %1250, !nosanitize !53

1292:                                             ; preds = %1291
  %1293 = add i32 %283, -4
  %1294 = sext i32 %1293 to i64
  %1295 = getelementptr inbounds i8, ptr %2, i64 %1294
  %1296 = load i8, ptr %1295, align 1, !tbaa !5
  %1297 = zext i8 %1296 to i64
  %1298 = getelementptr inbounds i64, ptr %7, i64 %1297
  %1299 = load i64, ptr %1298, align 8, !tbaa !14
  %1300 = and i64 %1299, 255
  %1301 = lshr i64 %1288, %1300
  %1302 = and i64 %1299, -256
  %1303 = or i64 %1301, %1302
  %1304 = add i64 %1299, %1289
  %1305 = icmp sgt i32 %1244, 4
  br i1 %1305, label %1306, label %1335, !llvm.loop !79

1306:                                             ; preds = %1292
  br i1 %1249, label %1307, label %1250, !nosanitize !53

1307:                                             ; preds = %1306
  %1308 = add i32 %283, -5
  %1309 = sext i32 %1308 to i64
  %1310 = getelementptr inbounds i8, ptr %2, i64 %1309
  %1311 = load i8, ptr %1310, align 1, !tbaa !5
  %1312 = zext i8 %1311 to i64
  %1313 = getelementptr inbounds i64, ptr %7, i64 %1312
  %1314 = load i64, ptr %1313, align 8, !tbaa !14
  %1315 = and i64 %1314, 255
  %1316 = lshr i64 %1303, %1315
  %1317 = and i64 %1314, -256
  %1318 = or i64 %1316, %1317
  %1319 = add i64 %1314, %1304
  %1320 = icmp eq i32 %1244, 5
  br i1 %1320, label %1335, label %1321, !llvm.loop !79

1321:                                             ; preds = %1307
  br i1 %1249, label %1322, label %1250, !nosanitize !53

1322:                                             ; preds = %1321
  %1323 = add i32 %283, -6
  %1324 = sext i32 %1323 to i64
  %1325 = getelementptr inbounds i8, ptr %2, i64 %1324
  %1326 = load i8, ptr %1325, align 1, !tbaa !5
  %1327 = zext i8 %1326 to i64
  %1328 = getelementptr inbounds i64, ptr %7, i64 %1327
  %1329 = load i64, ptr %1328, align 8, !tbaa !14
  %1330 = and i64 %1329, 255
  %1331 = lshr i64 %1318, %1330
  %1332 = and i64 %1329, -256
  %1333 = or i64 %1331, %1332
  %1334 = add i64 %1329, %1319
  br label %1335, !llvm.loop !79

1335:                                             ; preds = %1322, %1307, %1292, %1277, %1262, %1251
  %1336 = phi i32 [ %1252, %1251 ], [ %1263, %1262 ], [ %1278, %1277 ], [ %1293, %1292 ], [ %1308, %1307 ], [ %1323, %1322 ]
  %1337 = phi i64 [ %1259, %1251 ], [ %1273, %1262 ], [ %1288, %1277 ], [ %1303, %1292 ], [ %1318, %1307 ], [ %1333, %1322 ]
  %1338 = phi i64 [ %1258, %1251 ], [ %1274, %1262 ], [ %1289, %1277 ], [ %1304, %1292 ], [ %1319, %1307 ], [ %1334, %1322 ]
  %1339 = and i64 %1338, 255
  %1340 = lshr i64 %1339, 3
  %1341 = sub nsw i64 64, %1339
  %1342 = lshr i64 %1337, %1341
  %1343 = and i64 %1338, 7
  store i64 %1342, ptr %0, align 1, !tbaa !14
  %1344 = getelementptr inbounds i8, ptr %0, i64 %1340
  br label %1345

1345:                                             ; preds = %1335, %1243
  %1346 = phi i64 [ %1343, %1335 ], [ 0, %1243 ]
  %1347 = phi ptr [ %1344, %1335 ], [ %0, %1243 ]
  %1348 = phi i64 [ %1337, %1335 ], [ 0, %1243 ]
  %1349 = phi i32 [ %1336, %1335 ], [ %283, %1243 ]
  %1350 = srem i32 %1349, 14
  %1351 = icmp eq i32 %1350, 0
  br i1 %1351, label %1458, label %1352

1352:                                             ; preds = %1345
  %1353 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1349, i32 -1)
  %1354 = extractvalue { i32, i1 } %1353, 1, !nosanitize !53
  br i1 %1354, label %1250, label %1355, !nosanitize !53

1355:                                             ; preds = %1352
  %1356 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1349, i32 -2)
  %1357 = extractvalue { i32, i1 } %1356, 1, !nosanitize !53
  br i1 %1357, label %1250, label %1358, !nosanitize !53

1358:                                             ; preds = %1355
  %1359 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1349, i32 -3)
  %1360 = extractvalue { i32, i1 } %1359, 1, !nosanitize !53
  br i1 %1360, label %1250, label %1361, !nosanitize !53

1361:                                             ; preds = %1358
  %1362 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1349, i32 -4)
  %1363 = extractvalue { i32, i1 } %1362, 1, !nosanitize !53
  br i1 %1363, label %1250, label %1364, !nosanitize !53

1364:                                             ; preds = %1361
  %1365 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1349, i32 -5)
  %1366 = extractvalue { i32, i1 } %1365, 1, !nosanitize !53
  br i1 %1366, label %1250, label %1367, !nosanitize !53

1367:                                             ; preds = %1364
  %1368 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1349, i32 -6)
  %1369 = extractvalue { i32, i1 } %1368, 1, !nosanitize !53
  br i1 %1369, label %1250, label %1370, !nosanitize !53

1370:                                             ; preds = %1367
  %1371 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1349, i32 -7)
  %1372 = extractvalue { i32, i1 } %1371, 1, !nosanitize !53
  br i1 %1372, label %1250, label %1373, !nosanitize !53

1373:                                             ; preds = %1370
  %1374 = extractvalue { i32, i1 } %1368, 0, !nosanitize !53
  %1375 = sext i32 %1374 to i64
  %1376 = getelementptr inbounds i8, ptr %2, i64 %1375
  %1377 = load i8, ptr %1376, align 1, !tbaa !5
  %1378 = zext i8 %1377 to i64
  %1379 = getelementptr inbounds i64, ptr %7, i64 %1378
  %1380 = load i64, ptr %1379, align 8, !tbaa !14
  %1381 = extractvalue { i32, i1 } %1365, 0, !nosanitize !53
  %1382 = sext i32 %1381 to i64
  %1383 = getelementptr inbounds i8, ptr %2, i64 %1382
  %1384 = load i8, ptr %1383, align 1, !tbaa !5
  %1385 = zext i8 %1384 to i64
  %1386 = getelementptr inbounds i64, ptr %7, i64 %1385
  %1387 = load i64, ptr %1386, align 8, !tbaa !14
  %1388 = extractvalue { i32, i1 } %1362, 0, !nosanitize !53
  %1389 = sext i32 %1388 to i64
  %1390 = getelementptr inbounds i8, ptr %2, i64 %1389
  %1391 = load i8, ptr %1390, align 1, !tbaa !5
  %1392 = zext i8 %1391 to i64
  %1393 = getelementptr inbounds i64, ptr %7, i64 %1392
  %1394 = load i64, ptr %1393, align 8, !tbaa !14
  %1395 = extractvalue { i32, i1 } %1359, 0, !nosanitize !53
  %1396 = sext i32 %1395 to i64
  %1397 = getelementptr inbounds i8, ptr %2, i64 %1396
  %1398 = load i8, ptr %1397, align 1, !tbaa !5
  %1399 = zext i8 %1398 to i64
  %1400 = getelementptr inbounds i64, ptr %7, i64 %1399
  %1401 = load i64, ptr %1400, align 8, !tbaa !14
  %1402 = extractvalue { i32, i1 } %1356, 0, !nosanitize !53
  %1403 = sext i32 %1402 to i64
  %1404 = getelementptr inbounds i8, ptr %2, i64 %1403
  %1405 = load i8, ptr %1404, align 1, !tbaa !5
  %1406 = zext i8 %1405 to i64
  %1407 = getelementptr inbounds i64, ptr %7, i64 %1406
  %1408 = load i64, ptr %1407, align 8, !tbaa !14
  %1409 = extractvalue { i32, i1 } %1353, 0, !nosanitize !53
  %1410 = sext i32 %1409 to i64
  %1411 = getelementptr inbounds i8, ptr %2, i64 %1410
  %1412 = load i8, ptr %1411, align 1, !tbaa !5
  %1413 = zext i8 %1412 to i64
  %1414 = getelementptr inbounds i64, ptr %7, i64 %1413
  %1415 = load i64, ptr %1414, align 8, !tbaa !14
  %1416 = add i64 %1415, %1346
  %1417 = add i64 %1408, %1416
  %1418 = add i64 %1401, %1417
  %1419 = add i64 %1394, %1418
  %1420 = add i64 %1387, %1419
  %1421 = add i64 %1380, %1420
  %1422 = and i64 %1415, 255
  %1423 = lshr i64 %1348, %1422
  %1424 = or i64 %1423, %1415
  %1425 = and i64 %1408, 255
  %1426 = lshr i64 %1424, %1425
  %1427 = or i64 %1426, %1408
  %1428 = and i64 %1401, 255
  %1429 = lshr i64 %1427, %1428
  %1430 = or i64 %1429, %1401
  %1431 = and i64 %1394, 255
  %1432 = lshr i64 %1430, %1431
  %1433 = or i64 %1432, %1394
  %1434 = and i64 %1387, 255
  %1435 = lshr i64 %1433, %1434
  %1436 = or i64 %1435, %1387
  %1437 = and i64 %1380, 255
  %1438 = lshr i64 %1436, %1437
  %1439 = or i64 %1438, %1380
  %1440 = extractvalue { i32, i1 } %1371, 0, !nosanitize !53
  %1441 = sext i32 %1440 to i64
  %1442 = getelementptr inbounds i8, ptr %2, i64 %1441
  %1443 = load i8, ptr %1442, align 1, !tbaa !5
  %1444 = zext i8 %1443 to i64
  %1445 = getelementptr inbounds i64, ptr %7, i64 %1444
  %1446 = load i64, ptr %1445, align 8, !tbaa !14
  %1447 = and i64 %1446, 255
  %1448 = lshr i64 %1439, %1447
  %1449 = and i64 %1446, -256
  %1450 = or i64 %1448, %1449
  %1451 = add i64 %1446, %1421
  %1452 = and i64 %1451, 255
  %1453 = lshr i64 %1452, 3
  %1454 = sub nsw i64 64, %1452
  %1455 = lshr i64 %1450, %1454
  %1456 = and i64 %1451, 7
  store i64 %1455, ptr %1347, align 1, !tbaa !14
  %1457 = getelementptr inbounds i8, ptr %1347, i64 %1453
  br label %1458

1458:                                             ; preds = %1373, %1345
  %1459 = phi i64 [ %1346, %1345 ], [ %1456, %1373 ]
  %1460 = phi ptr [ %1347, %1345 ], [ %1457, %1373 ]
  %1461 = phi i64 [ %1348, %1345 ], [ %1450, %1373 ]
  %1462 = phi i32 [ %1349, %1345 ], [ %1440, %1373 ]
  %1463 = getelementptr i8, ptr %2, i64 -14
  %1464 = icmp sgt i32 %1462, 0
  br i1 %1464, label %1465, label %2529

1465:                                             ; preds = %1458
  %1466 = zext nneg i32 %1462 to i64
  %1467 = getelementptr i8, ptr %2, i64 -1
  %1468 = getelementptr i8, ptr %2, i64 -2
  %1469 = getelementptr i8, ptr %2, i64 -3
  %1470 = getelementptr i8, ptr %2, i64 -4
  %1471 = getelementptr i8, ptr %2, i64 -5
  %1472 = getelementptr i8, ptr %2, i64 -6
  br label %1473

1473:                                             ; preds = %1465, %1567
  %1474 = phi i64 [ %1466, %1465 ], [ %1650, %1567 ]
  %1475 = phi i64 [ %1461, %1465 ], [ %1642, %1567 ]
  %1476 = phi ptr [ %1460, %1465 ], [ %1649, %1567 ]
  %1477 = phi i64 [ %1459, %1465 ], [ %1648, %1567 ]
  %1478 = getelementptr i8, ptr %1467, i64 %1474
  %1479 = load i8, ptr %1478, align 1, !tbaa !5
  %1480 = zext i8 %1479 to i64
  %1481 = getelementptr inbounds i64, ptr %7, i64 %1480
  %1482 = load i64, ptr %1481, align 8, !tbaa !14
  %1483 = and i64 %1482, 255
  %1484 = lshr i64 %1475, %1483
  %1485 = or i64 %1484, %1482
  %1486 = add i64 %1482, %1477
  %1487 = getelementptr i8, ptr %1468, i64 %1474
  %1488 = load i8, ptr %1487, align 1, !tbaa !5
  %1489 = zext i8 %1488 to i64
  %1490 = getelementptr inbounds i64, ptr %7, i64 %1489
  %1491 = load i64, ptr %1490, align 8, !tbaa !14
  %1492 = and i64 %1491, 255
  %1493 = lshr i64 %1485, %1492
  %1494 = or i64 %1493, %1491
  %1495 = add i64 %1491, %1486
  %1496 = getelementptr i8, ptr %1469, i64 %1474
  %1497 = load i8, ptr %1496, align 1, !tbaa !5
  %1498 = zext i8 %1497 to i64
  %1499 = getelementptr inbounds i64, ptr %7, i64 %1498
  %1500 = load i64, ptr %1499, align 8, !tbaa !14
  %1501 = and i64 %1500, 255
  %1502 = lshr i64 %1494, %1501
  %1503 = or i64 %1502, %1500
  %1504 = add i64 %1500, %1495
  %1505 = getelementptr i8, ptr %1470, i64 %1474
  %1506 = load i8, ptr %1505, align 1, !tbaa !5
  %1507 = zext i8 %1506 to i64
  %1508 = getelementptr inbounds i64, ptr %7, i64 %1507
  %1509 = load i64, ptr %1508, align 8, !tbaa !14
  %1510 = and i64 %1509, 255
  %1511 = lshr i64 %1503, %1510
  %1512 = or i64 %1511, %1509
  %1513 = add i64 %1509, %1504
  %1514 = getelementptr i8, ptr %1471, i64 %1474
  %1515 = load i8, ptr %1514, align 1, !tbaa !5
  %1516 = zext i8 %1515 to i64
  %1517 = getelementptr inbounds i64, ptr %7, i64 %1516
  %1518 = load i64, ptr %1517, align 8, !tbaa !14
  %1519 = and i64 %1518, 255
  %1520 = lshr i64 %1512, %1519
  %1521 = or i64 %1520, %1518
  %1522 = add i64 %1518, %1513
  %1523 = getelementptr i8, ptr %1472, i64 %1474
  %1524 = load i8, ptr %1523, align 1, !tbaa !5
  %1525 = zext i8 %1524 to i64
  %1526 = getelementptr inbounds i64, ptr %7, i64 %1525
  %1527 = load i64, ptr %1526, align 8, !tbaa !14
  %1528 = and i64 %1527, 255
  %1529 = lshr i64 %1521, %1528
  %1530 = or i64 %1529, %1527
  %1531 = add i64 %1527, %1522
  %1532 = add nsw i64 %1474, -7
  %1533 = getelementptr inbounds i8, ptr %2, i64 %1532
  %1534 = load i8, ptr %1533, align 1, !tbaa !5
  %1535 = zext i8 %1534 to i64
  %1536 = getelementptr inbounds i64, ptr %7, i64 %1535
  %1537 = load i64, ptr %1536, align 8, !tbaa !14
  %1538 = and i64 %1537, 255
  %1539 = lshr i64 %1530, %1538
  %1540 = and i64 %1537, -256
  %1541 = or i64 %1539, %1540
  %1542 = add i64 %1537, %1531
  %1543 = and i64 %1542, 255
  %1544 = lshr i64 %1543, 3
  %1545 = sub nsw i64 64, %1543
  %1546 = lshr i64 %1541, %1545
  %1547 = and i64 %1542, 7
  store i64 %1546, ptr %1476, align 1, !tbaa !14
  %1548 = getelementptr inbounds i8, ptr %1476, i64 %1544
  %1549 = trunc i64 %1532 to i32
  %1550 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1549, i32 -1)
  %1551 = extractvalue { i32, i1 } %1550, 1, !nosanitize !53
  br i1 %1551, label %1250, label %1552, !nosanitize !53

1552:                                             ; preds = %1473
  %1553 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1549, i32 -2)
  %1554 = extractvalue { i32, i1 } %1553, 1, !nosanitize !53
  br i1 %1554, label %1250, label %1555, !nosanitize !53

1555:                                             ; preds = %1552
  %1556 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1549, i32 -3)
  %1557 = extractvalue { i32, i1 } %1556, 1, !nosanitize !53
  br i1 %1557, label %1250, label %1558, !nosanitize !53

1558:                                             ; preds = %1555
  %1559 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1549, i32 -4)
  %1560 = extractvalue { i32, i1 } %1559, 1, !nosanitize !53
  br i1 %1560, label %1250, label %1561, !nosanitize !53

1561:                                             ; preds = %1558
  %1562 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1549, i32 -5)
  %1563 = extractvalue { i32, i1 } %1562, 1, !nosanitize !53
  br i1 %1563, label %1250, label %1564, !nosanitize !53

1564:                                             ; preds = %1561
  %1565 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1549, i32 -6)
  %1566 = extractvalue { i32, i1 } %1565, 1, !nosanitize !53
  br i1 %1566, label %1250, label %1567, !nosanitize !53

1567:                                             ; preds = %1564
  %1568 = extractvalue { i32, i1 } %1562, 0, !nosanitize !53
  %1569 = sext i32 %1568 to i64
  %1570 = getelementptr inbounds i8, ptr %2, i64 %1569
  %1571 = load i8, ptr %1570, align 1, !tbaa !5
  %1572 = zext i8 %1571 to i64
  %1573 = getelementptr inbounds i64, ptr %7, i64 %1572
  %1574 = load i64, ptr %1573, align 8, !tbaa !14
  %1575 = extractvalue { i32, i1 } %1559, 0, !nosanitize !53
  %1576 = sext i32 %1575 to i64
  %1577 = getelementptr inbounds i8, ptr %2, i64 %1576
  %1578 = load i8, ptr %1577, align 1, !tbaa !5
  %1579 = zext i8 %1578 to i64
  %1580 = getelementptr inbounds i64, ptr %7, i64 %1579
  %1581 = load i64, ptr %1580, align 8, !tbaa !14
  %1582 = extractvalue { i32, i1 } %1556, 0, !nosanitize !53
  %1583 = sext i32 %1582 to i64
  %1584 = getelementptr inbounds i8, ptr %2, i64 %1583
  %1585 = load i8, ptr %1584, align 1, !tbaa !5
  %1586 = zext i8 %1585 to i64
  %1587 = getelementptr inbounds i64, ptr %7, i64 %1586
  %1588 = load i64, ptr %1587, align 8, !tbaa !14
  %1589 = extractvalue { i32, i1 } %1553, 0, !nosanitize !53
  %1590 = sext i32 %1589 to i64
  %1591 = getelementptr inbounds i8, ptr %2, i64 %1590
  %1592 = load i8, ptr %1591, align 1, !tbaa !5
  %1593 = zext i8 %1592 to i64
  %1594 = getelementptr inbounds i64, ptr %7, i64 %1593
  %1595 = load i64, ptr %1594, align 8, !tbaa !14
  %1596 = extractvalue { i32, i1 } %1550, 0, !nosanitize !53
  %1597 = sext i32 %1596 to i64
  %1598 = getelementptr inbounds i8, ptr %2, i64 %1597
  %1599 = load i8, ptr %1598, align 1, !tbaa !5
  %1600 = zext i8 %1599 to i64
  %1601 = getelementptr inbounds i64, ptr %7, i64 %1600
  %1602 = load i64, ptr %1601, align 8, !tbaa !14
  %1603 = add i64 %1595, %1602
  %1604 = add i64 %1588, %1603
  %1605 = add i64 %1581, %1604
  %1606 = add i64 %1574, %1605
  %1607 = and i64 %1595, 255
  %1608 = lshr i64 %1602, %1607
  %1609 = or i64 %1608, %1595
  %1610 = and i64 %1588, 255
  %1611 = lshr i64 %1609, %1610
  %1612 = or i64 %1611, %1588
  %1613 = and i64 %1581, 255
  %1614 = lshr i64 %1612, %1613
  %1615 = or i64 %1614, %1581
  %1616 = and i64 %1574, 255
  %1617 = lshr i64 %1615, %1616
  %1618 = or i64 %1617, %1574
  %1619 = extractvalue { i32, i1 } %1565, 0, !nosanitize !53
  %1620 = sext i32 %1619 to i64
  %1621 = getelementptr inbounds i8, ptr %2, i64 %1620
  %1622 = load i8, ptr %1621, align 1, !tbaa !5
  %1623 = zext i8 %1622 to i64
  %1624 = getelementptr inbounds i64, ptr %7, i64 %1623
  %1625 = load i64, ptr %1624, align 8, !tbaa !14
  %1626 = and i64 %1625, 255
  %1627 = lshr i64 %1618, %1626
  %1628 = or i64 %1627, %1625
  %1629 = add i64 %1625, %1606
  %1630 = getelementptr i8, ptr %1463, i64 %1474
  %1631 = load i8, ptr %1630, align 1, !tbaa !5
  %1632 = zext i8 %1631 to i64
  %1633 = getelementptr inbounds i64, ptr %7, i64 %1632
  %1634 = load i64, ptr %1633, align 8, !tbaa !14
  %1635 = and i64 %1634, 255
  %1636 = lshr i64 %1628, %1635
  %1637 = and i64 %1634, -256
  %1638 = or i64 %1636, %1637
  %1639 = add i64 %1634, %1629
  %1640 = and i64 %1639, 255
  %1641 = lshr i64 %1541, %1640
  %1642 = or i64 %1638, %1641
  %1643 = add i64 %1639, %1547
  %1644 = and i64 %1643, 255
  %1645 = lshr i64 %1644, 3
  %1646 = sub nsw i64 64, %1644
  %1647 = lshr i64 %1642, %1646
  %1648 = and i64 %1643, 7
  store i64 %1647, ptr %1548, align 1, !tbaa !14
  %1649 = getelementptr inbounds i8, ptr %1548, i64 %1645
  %1650 = add nsw i64 %1474, -14
  %1651 = icmp sgt i64 %1474, 14
  br i1 %1651, label %1473, label %2529, !llvm.loop !80

1652:                                             ; preds = %281
  %1653 = srem i32 %283, 8
  %1654 = icmp sgt i32 %1653, 0
  br i1 %1654, label %1655, label %1769

1655:                                             ; preds = %1652
  %1656 = xor i32 %283, -2147483648
  %1657 = add nsw i32 %1653, -1
  %1658 = icmp ugt i32 %1656, %1657
  br i1 %1658, label %1660, label %1659, !nosanitize !53

1659:                                             ; preds = %1655, %1670, %1685, %1700, %1715, %1730, %1745, %1912, %2000, %2003, %2006, %2009, %2012, %2015, %1776, %1779, %1782, %1785, %1788, %1791, %1794, %1797
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !53
  unreachable, !nosanitize !53

1660:                                             ; preds = %1655
  %1661 = add i32 %283, -1
  %1662 = sext i32 %1661 to i64
  %1663 = getelementptr inbounds i8, ptr %2, i64 %1662
  %1664 = load i8, ptr %1663, align 1, !tbaa !5
  %1665 = zext i8 %1664 to i64
  %1666 = getelementptr inbounds i64, ptr %7, i64 %1665
  %1667 = load i64, ptr %1666, align 8, !tbaa !14
  %1668 = and i64 %1667, -256
  %1669 = icmp eq i32 %1653, 1
  br i1 %1669, label %1759, label %1670, !llvm.loop !79

1670:                                             ; preds = %1660
  br i1 %1658, label %1671, label %1659, !nosanitize !53

1671:                                             ; preds = %1670
  %1672 = add i32 %283, -2
  %1673 = sext i32 %1672 to i64
  %1674 = getelementptr inbounds i8, ptr %2, i64 %1673
  %1675 = load i8, ptr %1674, align 1, !tbaa !5
  %1676 = zext i8 %1675 to i64
  %1677 = getelementptr inbounds i64, ptr %7, i64 %1676
  %1678 = load i64, ptr %1677, align 8, !tbaa !14
  %1679 = and i64 %1678, 255
  %1680 = lshr i64 %1668, %1679
  %1681 = and i64 %1678, -256
  %1682 = or i64 %1680, %1681
  %1683 = add i64 %1678, %1667
  %1684 = icmp sgt i32 %1653, 2
  br i1 %1684, label %1685, label %1759, !llvm.loop !79

1685:                                             ; preds = %1671
  br i1 %1658, label %1686, label %1659, !nosanitize !53

1686:                                             ; preds = %1685
  %1687 = add i32 %283, -3
  %1688 = sext i32 %1687 to i64
  %1689 = getelementptr inbounds i8, ptr %2, i64 %1688
  %1690 = load i8, ptr %1689, align 1, !tbaa !5
  %1691 = zext i8 %1690 to i64
  %1692 = getelementptr inbounds i64, ptr %7, i64 %1691
  %1693 = load i64, ptr %1692, align 8, !tbaa !14
  %1694 = and i64 %1693, 255
  %1695 = lshr i64 %1682, %1694
  %1696 = and i64 %1693, -256
  %1697 = or i64 %1695, %1696
  %1698 = add i64 %1693, %1683
  %1699 = icmp eq i32 %1653, 3
  br i1 %1699, label %1759, label %1700, !llvm.loop !79

1700:                                             ; preds = %1686
  br i1 %1658, label %1701, label %1659, !nosanitize !53

1701:                                             ; preds = %1700
  %1702 = add i32 %283, -4
  %1703 = sext i32 %1702 to i64
  %1704 = getelementptr inbounds i8, ptr %2, i64 %1703
  %1705 = load i8, ptr %1704, align 1, !tbaa !5
  %1706 = zext i8 %1705 to i64
  %1707 = getelementptr inbounds i64, ptr %7, i64 %1706
  %1708 = load i64, ptr %1707, align 8, !tbaa !14
  %1709 = and i64 %1708, 255
  %1710 = lshr i64 %1697, %1709
  %1711 = and i64 %1708, -256
  %1712 = or i64 %1710, %1711
  %1713 = add i64 %1708, %1698
  %1714 = icmp sgt i32 %1653, 4
  br i1 %1714, label %1715, label %1759, !llvm.loop !79

1715:                                             ; preds = %1701
  br i1 %1658, label %1716, label %1659, !nosanitize !53

1716:                                             ; preds = %1715
  %1717 = add i32 %283, -5
  %1718 = sext i32 %1717 to i64
  %1719 = getelementptr inbounds i8, ptr %2, i64 %1718
  %1720 = load i8, ptr %1719, align 1, !tbaa !5
  %1721 = zext i8 %1720 to i64
  %1722 = getelementptr inbounds i64, ptr %7, i64 %1721
  %1723 = load i64, ptr %1722, align 8, !tbaa !14
  %1724 = and i64 %1723, 255
  %1725 = lshr i64 %1712, %1724
  %1726 = and i64 %1723, -256
  %1727 = or i64 %1725, %1726
  %1728 = add i64 %1723, %1713
  %1729 = icmp eq i32 %1653, 5
  br i1 %1729, label %1759, label %1730, !llvm.loop !79

1730:                                             ; preds = %1716
  br i1 %1658, label %1731, label %1659, !nosanitize !53

1731:                                             ; preds = %1730
  %1732 = add i32 %283, -6
  %1733 = sext i32 %1732 to i64
  %1734 = getelementptr inbounds i8, ptr %2, i64 %1733
  %1735 = load i8, ptr %1734, align 1, !tbaa !5
  %1736 = zext i8 %1735 to i64
  %1737 = getelementptr inbounds i64, ptr %7, i64 %1736
  %1738 = load i64, ptr %1737, align 8, !tbaa !14
  %1739 = and i64 %1738, 255
  %1740 = lshr i64 %1727, %1739
  %1741 = and i64 %1738, -256
  %1742 = or i64 %1740, %1741
  %1743 = add i64 %1738, %1728
  %1744 = icmp sgt i32 %1653, 6
  br i1 %1744, label %1745, label %1759, !llvm.loop !79

1745:                                             ; preds = %1731
  br i1 %1658, label %1746, label %1659, !nosanitize !53

1746:                                             ; preds = %1745
  %1747 = add i32 %283, -7
  %1748 = sext i32 %1747 to i64
  %1749 = getelementptr inbounds i8, ptr %2, i64 %1748
  %1750 = load i8, ptr %1749, align 1, !tbaa !5
  %1751 = zext i8 %1750 to i64
  %1752 = getelementptr inbounds i64, ptr %7, i64 %1751
  %1753 = load i64, ptr %1752, align 8, !tbaa !14
  %1754 = and i64 %1753, 255
  %1755 = lshr i64 %1742, %1754
  %1756 = and i64 %1753, -256
  %1757 = or i64 %1755, %1756
  %1758 = add i64 %1753, %1743
  br label %1759

1759:                                             ; preds = %1746, %1731, %1716, %1701, %1686, %1671, %1660
  %1760 = phi i32 [ %1661, %1660 ], [ %1672, %1671 ], [ %1687, %1686 ], [ %1702, %1701 ], [ %1717, %1716 ], [ %1732, %1731 ], [ %1747, %1746 ]
  %1761 = phi i64 [ %1668, %1660 ], [ %1682, %1671 ], [ %1697, %1686 ], [ %1712, %1701 ], [ %1727, %1716 ], [ %1742, %1731 ], [ %1757, %1746 ]
  %1762 = phi i64 [ %1667, %1660 ], [ %1683, %1671 ], [ %1698, %1686 ], [ %1713, %1701 ], [ %1728, %1716 ], [ %1743, %1731 ], [ %1758, %1746 ]
  %1763 = and i64 %1762, 255
  %1764 = lshr i64 %1763, 3
  %1765 = sub nsw i64 64, %1763
  %1766 = lshr i64 %1761, %1765
  %1767 = and i64 %1762, 7
  store i64 %1766, ptr %0, align 1, !tbaa !14
  %1768 = getelementptr inbounds i8, ptr %0, i64 %1764
  br label %1769

1769:                                             ; preds = %1759, %1652
  %1770 = phi i64 [ %1767, %1759 ], [ 0, %1652 ]
  %1771 = phi ptr [ %1768, %1759 ], [ %0, %1652 ]
  %1772 = phi i64 [ %1761, %1759 ], [ 0, %1652 ]
  %1773 = phi i32 [ %1760, %1759 ], [ %283, %1652 ]
  %1774 = and i32 %1773, 15
  %1775 = icmp eq i32 %1774, 0
  br i1 %1775, label %1896, label %1776

1776:                                             ; preds = %1769
  %1777 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1773, i32 -1)
  %1778 = extractvalue { i32, i1 } %1777, 1, !nosanitize !53
  br i1 %1778, label %1659, label %1779, !nosanitize !53

1779:                                             ; preds = %1776
  %1780 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1773, i32 -2)
  %1781 = extractvalue { i32, i1 } %1780, 1, !nosanitize !53
  br i1 %1781, label %1659, label %1782, !nosanitize !53

1782:                                             ; preds = %1779
  %1783 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1773, i32 -3)
  %1784 = extractvalue { i32, i1 } %1783, 1, !nosanitize !53
  br i1 %1784, label %1659, label %1785, !nosanitize !53

1785:                                             ; preds = %1782
  %1786 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1773, i32 -4)
  %1787 = extractvalue { i32, i1 } %1786, 1, !nosanitize !53
  br i1 %1787, label %1659, label %1788, !nosanitize !53

1788:                                             ; preds = %1785
  %1789 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1773, i32 -5)
  %1790 = extractvalue { i32, i1 } %1789, 1, !nosanitize !53
  br i1 %1790, label %1659, label %1791, !nosanitize !53

1791:                                             ; preds = %1788
  %1792 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1773, i32 -6)
  %1793 = extractvalue { i32, i1 } %1792, 1, !nosanitize !53
  br i1 %1793, label %1659, label %1794, !nosanitize !53

1794:                                             ; preds = %1791
  %1795 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1773, i32 -7)
  %1796 = extractvalue { i32, i1 } %1795, 1, !nosanitize !53
  br i1 %1796, label %1659, label %1797, !nosanitize !53

1797:                                             ; preds = %1794
  %1798 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1773, i32 -8)
  %1799 = extractvalue { i32, i1 } %1798, 1, !nosanitize !53
  br i1 %1799, label %1659, label %1800, !nosanitize !53

1800:                                             ; preds = %1797
  %1801 = extractvalue { i32, i1 } %1795, 0, !nosanitize !53
  %1802 = sext i32 %1801 to i64
  %1803 = getelementptr inbounds i8, ptr %2, i64 %1802
  %1804 = load i8, ptr %1803, align 1, !tbaa !5
  %1805 = zext i8 %1804 to i64
  %1806 = getelementptr inbounds i64, ptr %7, i64 %1805
  %1807 = load i64, ptr %1806, align 8, !tbaa !14
  %1808 = extractvalue { i32, i1 } %1792, 0, !nosanitize !53
  %1809 = sext i32 %1808 to i64
  %1810 = getelementptr inbounds i8, ptr %2, i64 %1809
  %1811 = load i8, ptr %1810, align 1, !tbaa !5
  %1812 = zext i8 %1811 to i64
  %1813 = getelementptr inbounds i64, ptr %7, i64 %1812
  %1814 = load i64, ptr %1813, align 8, !tbaa !14
  %1815 = extractvalue { i32, i1 } %1789, 0, !nosanitize !53
  %1816 = sext i32 %1815 to i64
  %1817 = getelementptr inbounds i8, ptr %2, i64 %1816
  %1818 = load i8, ptr %1817, align 1, !tbaa !5
  %1819 = zext i8 %1818 to i64
  %1820 = getelementptr inbounds i64, ptr %7, i64 %1819
  %1821 = load i64, ptr %1820, align 8, !tbaa !14
  %1822 = extractvalue { i32, i1 } %1786, 0, !nosanitize !53
  %1823 = sext i32 %1822 to i64
  %1824 = getelementptr inbounds i8, ptr %2, i64 %1823
  %1825 = load i8, ptr %1824, align 1, !tbaa !5
  %1826 = zext i8 %1825 to i64
  %1827 = getelementptr inbounds i64, ptr %7, i64 %1826
  %1828 = load i64, ptr %1827, align 8, !tbaa !14
  %1829 = extractvalue { i32, i1 } %1783, 0, !nosanitize !53
  %1830 = sext i32 %1829 to i64
  %1831 = getelementptr inbounds i8, ptr %2, i64 %1830
  %1832 = load i8, ptr %1831, align 1, !tbaa !5
  %1833 = zext i8 %1832 to i64
  %1834 = getelementptr inbounds i64, ptr %7, i64 %1833
  %1835 = load i64, ptr %1834, align 8, !tbaa !14
  %1836 = extractvalue { i32, i1 } %1780, 0, !nosanitize !53
  %1837 = sext i32 %1836 to i64
  %1838 = getelementptr inbounds i8, ptr %2, i64 %1837
  %1839 = load i8, ptr %1838, align 1, !tbaa !5
  %1840 = zext i8 %1839 to i64
  %1841 = getelementptr inbounds i64, ptr %7, i64 %1840
  %1842 = load i64, ptr %1841, align 8, !tbaa !14
  %1843 = extractvalue { i32, i1 } %1777, 0, !nosanitize !53
  %1844 = sext i32 %1843 to i64
  %1845 = getelementptr inbounds i8, ptr %2, i64 %1844
  %1846 = load i8, ptr %1845, align 1, !tbaa !5
  %1847 = zext i8 %1846 to i64
  %1848 = getelementptr inbounds i64, ptr %7, i64 %1847
  %1849 = load i64, ptr %1848, align 8, !tbaa !14
  %1850 = add i64 %1849, %1770
  %1851 = add i64 %1842, %1850
  %1852 = add i64 %1835, %1851
  %1853 = add i64 %1828, %1852
  %1854 = add i64 %1821, %1853
  %1855 = add i64 %1814, %1854
  %1856 = add i64 %1807, %1855
  %1857 = and i64 %1849, 255
  %1858 = lshr i64 %1772, %1857
  %1859 = or i64 %1858, %1849
  %1860 = and i64 %1842, 255
  %1861 = lshr i64 %1859, %1860
  %1862 = or i64 %1861, %1842
  %1863 = and i64 %1835, 255
  %1864 = lshr i64 %1862, %1863
  %1865 = or i64 %1864, %1835
  %1866 = and i64 %1828, 255
  %1867 = lshr i64 %1865, %1866
  %1868 = or i64 %1867, %1828
  %1869 = and i64 %1821, 255
  %1870 = lshr i64 %1868, %1869
  %1871 = or i64 %1870, %1821
  %1872 = and i64 %1814, 255
  %1873 = lshr i64 %1871, %1872
  %1874 = or i64 %1873, %1814
  %1875 = and i64 %1807, 255
  %1876 = lshr i64 %1874, %1875
  %1877 = or i64 %1876, %1807
  %1878 = extractvalue { i32, i1 } %1798, 0, !nosanitize !53
  %1879 = sext i32 %1878 to i64
  %1880 = getelementptr inbounds i8, ptr %2, i64 %1879
  %1881 = load i8, ptr %1880, align 1, !tbaa !5
  %1882 = zext i8 %1881 to i64
  %1883 = getelementptr inbounds i64, ptr %7, i64 %1882
  %1884 = load i64, ptr %1883, align 8, !tbaa !14
  %1885 = and i64 %1884, 255
  %1886 = lshr i64 %1877, %1885
  %1887 = and i64 %1884, -256
  %1888 = or i64 %1886, %1887
  %1889 = add i64 %1884, %1856
  %1890 = and i64 %1889, 255
  %1891 = lshr i64 %1890, 3
  %1892 = sub nsw i64 64, %1890
  %1893 = lshr i64 %1888, %1892
  %1894 = and i64 %1889, 7
  store i64 %1893, ptr %1771, align 1, !tbaa !14
  %1895 = getelementptr inbounds i8, ptr %1771, i64 %1891
  br label %1896

1896:                                             ; preds = %1800, %1769
  %1897 = phi i64 [ %1770, %1769 ], [ %1894, %1800 ]
  %1898 = phi ptr [ %1771, %1769 ], [ %1895, %1800 ]
  %1899 = phi i64 [ %1772, %1769 ], [ %1888, %1800 ]
  %1900 = phi i32 [ %1773, %1769 ], [ %1878, %1800 ]
  %1901 = getelementptr i8, ptr %2, i64 -16
  %1902 = icmp sgt i32 %1900, 0
  br i1 %1902, label %1903, label %2529

1903:                                             ; preds = %1896
  %1904 = zext nneg i32 %1900 to i64
  %1905 = getelementptr i8, ptr %2, i64 -1
  %1906 = getelementptr i8, ptr %2, i64 -2
  %1907 = getelementptr i8, ptr %2, i64 -3
  %1908 = getelementptr i8, ptr %2, i64 -4
  %1909 = getelementptr i8, ptr %2, i64 -5
  %1910 = getelementptr i8, ptr %2, i64 -6
  %1911 = getelementptr i8, ptr %2, i64 -7
  br label %1912

1912:                                             ; preds = %1903, %2018
  %1913 = phi i64 [ %1904, %1903 ], [ %2112, %2018 ]
  %1914 = phi i64 [ %1899, %1903 ], [ %2104, %2018 ]
  %1915 = phi ptr [ %1898, %1903 ], [ %2111, %2018 ]
  %1916 = phi i64 [ %1897, %1903 ], [ %2110, %2018 ]
  %1917 = getelementptr i8, ptr %1905, i64 %1913
  %1918 = load i8, ptr %1917, align 1, !tbaa !5
  %1919 = zext i8 %1918 to i64
  %1920 = getelementptr inbounds i64, ptr %7, i64 %1919
  %1921 = load i64, ptr %1920, align 8, !tbaa !14
  %1922 = and i64 %1921, 255
  %1923 = lshr i64 %1914, %1922
  %1924 = or i64 %1923, %1921
  %1925 = add i64 %1921, %1916
  %1926 = getelementptr i8, ptr %1906, i64 %1913
  %1927 = load i8, ptr %1926, align 1, !tbaa !5
  %1928 = zext i8 %1927 to i64
  %1929 = getelementptr inbounds i64, ptr %7, i64 %1928
  %1930 = load i64, ptr %1929, align 8, !tbaa !14
  %1931 = and i64 %1930, 255
  %1932 = lshr i64 %1924, %1931
  %1933 = or i64 %1932, %1930
  %1934 = add i64 %1930, %1925
  %1935 = getelementptr i8, ptr %1907, i64 %1913
  %1936 = load i8, ptr %1935, align 1, !tbaa !5
  %1937 = zext i8 %1936 to i64
  %1938 = getelementptr inbounds i64, ptr %7, i64 %1937
  %1939 = load i64, ptr %1938, align 8, !tbaa !14
  %1940 = and i64 %1939, 255
  %1941 = lshr i64 %1933, %1940
  %1942 = or i64 %1941, %1939
  %1943 = add i64 %1939, %1934
  %1944 = getelementptr i8, ptr %1908, i64 %1913
  %1945 = load i8, ptr %1944, align 1, !tbaa !5
  %1946 = zext i8 %1945 to i64
  %1947 = getelementptr inbounds i64, ptr %7, i64 %1946
  %1948 = load i64, ptr %1947, align 8, !tbaa !14
  %1949 = and i64 %1948, 255
  %1950 = lshr i64 %1942, %1949
  %1951 = or i64 %1950, %1948
  %1952 = add i64 %1948, %1943
  %1953 = getelementptr i8, ptr %1909, i64 %1913
  %1954 = load i8, ptr %1953, align 1, !tbaa !5
  %1955 = zext i8 %1954 to i64
  %1956 = getelementptr inbounds i64, ptr %7, i64 %1955
  %1957 = load i64, ptr %1956, align 8, !tbaa !14
  %1958 = and i64 %1957, 255
  %1959 = lshr i64 %1951, %1958
  %1960 = or i64 %1959, %1957
  %1961 = add i64 %1957, %1952
  %1962 = getelementptr i8, ptr %1910, i64 %1913
  %1963 = load i8, ptr %1962, align 1, !tbaa !5
  %1964 = zext i8 %1963 to i64
  %1965 = getelementptr inbounds i64, ptr %7, i64 %1964
  %1966 = load i64, ptr %1965, align 8, !tbaa !14
  %1967 = and i64 %1966, 255
  %1968 = lshr i64 %1960, %1967
  %1969 = or i64 %1968, %1966
  %1970 = add i64 %1966, %1961
  %1971 = getelementptr i8, ptr %1911, i64 %1913
  %1972 = load i8, ptr %1971, align 1, !tbaa !5
  %1973 = zext i8 %1972 to i64
  %1974 = getelementptr inbounds i64, ptr %7, i64 %1973
  %1975 = load i64, ptr %1974, align 8, !tbaa !14
  %1976 = and i64 %1975, 255
  %1977 = lshr i64 %1969, %1976
  %1978 = or i64 %1977, %1975
  %1979 = add i64 %1975, %1970
  %1980 = add nsw i64 %1913, -8
  %1981 = getelementptr inbounds i8, ptr %2, i64 %1980
  %1982 = load i8, ptr %1981, align 1, !tbaa !5
  %1983 = zext i8 %1982 to i64
  %1984 = getelementptr inbounds i64, ptr %7, i64 %1983
  %1985 = load i64, ptr %1984, align 8, !tbaa !14
  %1986 = and i64 %1985, 255
  %1987 = lshr i64 %1978, %1986
  %1988 = and i64 %1985, -256
  %1989 = or i64 %1987, %1988
  %1990 = add i64 %1985, %1979
  %1991 = and i64 %1990, 255
  %1992 = lshr i64 %1991, 3
  %1993 = sub nsw i64 64, %1991
  %1994 = lshr i64 %1989, %1993
  %1995 = and i64 %1990, 7
  store i64 %1994, ptr %1915, align 1, !tbaa !14
  %1996 = getelementptr inbounds i8, ptr %1915, i64 %1992
  %1997 = trunc i64 %1980 to i32
  %1998 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1997, i32 -1)
  %1999 = extractvalue { i32, i1 } %1998, 1, !nosanitize !53
  br i1 %1999, label %1659, label %2000, !nosanitize !53

2000:                                             ; preds = %1912
  %2001 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1997, i32 -2)
  %2002 = extractvalue { i32, i1 } %2001, 1, !nosanitize !53
  br i1 %2002, label %1659, label %2003, !nosanitize !53

2003:                                             ; preds = %2000
  %2004 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1997, i32 -3)
  %2005 = extractvalue { i32, i1 } %2004, 1, !nosanitize !53
  br i1 %2005, label %1659, label %2006, !nosanitize !53

2006:                                             ; preds = %2003
  %2007 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1997, i32 -4)
  %2008 = extractvalue { i32, i1 } %2007, 1, !nosanitize !53
  br i1 %2008, label %1659, label %2009, !nosanitize !53

2009:                                             ; preds = %2006
  %2010 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1997, i32 -5)
  %2011 = extractvalue { i32, i1 } %2010, 1, !nosanitize !53
  br i1 %2011, label %1659, label %2012, !nosanitize !53

2012:                                             ; preds = %2009
  %2013 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1997, i32 -6)
  %2014 = extractvalue { i32, i1 } %2013, 1, !nosanitize !53
  br i1 %2014, label %1659, label %2015, !nosanitize !53

2015:                                             ; preds = %2012
  %2016 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1997, i32 -7)
  %2017 = extractvalue { i32, i1 } %2016, 1, !nosanitize !53
  br i1 %2017, label %1659, label %2018, !nosanitize !53

2018:                                             ; preds = %2015
  %2019 = extractvalue { i32, i1 } %2013, 0, !nosanitize !53
  %2020 = sext i32 %2019 to i64
  %2021 = getelementptr inbounds i8, ptr %2, i64 %2020
  %2022 = load i8, ptr %2021, align 1, !tbaa !5
  %2023 = zext i8 %2022 to i64
  %2024 = getelementptr inbounds i64, ptr %7, i64 %2023
  %2025 = load i64, ptr %2024, align 8, !tbaa !14
  %2026 = extractvalue { i32, i1 } %2010, 0, !nosanitize !53
  %2027 = sext i32 %2026 to i64
  %2028 = getelementptr inbounds i8, ptr %2, i64 %2027
  %2029 = load i8, ptr %2028, align 1, !tbaa !5
  %2030 = zext i8 %2029 to i64
  %2031 = getelementptr inbounds i64, ptr %7, i64 %2030
  %2032 = load i64, ptr %2031, align 8, !tbaa !14
  %2033 = extractvalue { i32, i1 } %2007, 0, !nosanitize !53
  %2034 = sext i32 %2033 to i64
  %2035 = getelementptr inbounds i8, ptr %2, i64 %2034
  %2036 = load i8, ptr %2035, align 1, !tbaa !5
  %2037 = zext i8 %2036 to i64
  %2038 = getelementptr inbounds i64, ptr %7, i64 %2037
  %2039 = load i64, ptr %2038, align 8, !tbaa !14
  %2040 = extractvalue { i32, i1 } %2004, 0, !nosanitize !53
  %2041 = sext i32 %2040 to i64
  %2042 = getelementptr inbounds i8, ptr %2, i64 %2041
  %2043 = load i8, ptr %2042, align 1, !tbaa !5
  %2044 = zext i8 %2043 to i64
  %2045 = getelementptr inbounds i64, ptr %7, i64 %2044
  %2046 = load i64, ptr %2045, align 8, !tbaa !14
  %2047 = extractvalue { i32, i1 } %2001, 0, !nosanitize !53
  %2048 = sext i32 %2047 to i64
  %2049 = getelementptr inbounds i8, ptr %2, i64 %2048
  %2050 = load i8, ptr %2049, align 1, !tbaa !5
  %2051 = zext i8 %2050 to i64
  %2052 = getelementptr inbounds i64, ptr %7, i64 %2051
  %2053 = load i64, ptr %2052, align 8, !tbaa !14
  %2054 = extractvalue { i32, i1 } %1998, 0, !nosanitize !53
  %2055 = sext i32 %2054 to i64
  %2056 = getelementptr inbounds i8, ptr %2, i64 %2055
  %2057 = load i8, ptr %2056, align 1, !tbaa !5
  %2058 = zext i8 %2057 to i64
  %2059 = getelementptr inbounds i64, ptr %7, i64 %2058
  %2060 = load i64, ptr %2059, align 8, !tbaa !14
  %2061 = add i64 %2053, %2060
  %2062 = add i64 %2046, %2061
  %2063 = add i64 %2039, %2062
  %2064 = add i64 %2032, %2063
  %2065 = add i64 %2025, %2064
  %2066 = and i64 %2053, 255
  %2067 = lshr i64 %2060, %2066
  %2068 = or i64 %2067, %2053
  %2069 = and i64 %2046, 255
  %2070 = lshr i64 %2068, %2069
  %2071 = or i64 %2070, %2046
  %2072 = and i64 %2039, 255
  %2073 = lshr i64 %2071, %2072
  %2074 = or i64 %2073, %2039
  %2075 = and i64 %2032, 255
  %2076 = lshr i64 %2074, %2075
  %2077 = or i64 %2076, %2032
  %2078 = and i64 %2025, 255
  %2079 = lshr i64 %2077, %2078
  %2080 = or i64 %2079, %2025
  %2081 = extractvalue { i32, i1 } %2016, 0, !nosanitize !53
  %2082 = sext i32 %2081 to i64
  %2083 = getelementptr inbounds i8, ptr %2, i64 %2082
  %2084 = load i8, ptr %2083, align 1, !tbaa !5
  %2085 = zext i8 %2084 to i64
  %2086 = getelementptr inbounds i64, ptr %7, i64 %2085
  %2087 = load i64, ptr %2086, align 8, !tbaa !14
  %2088 = and i64 %2087, 255
  %2089 = lshr i64 %2080, %2088
  %2090 = or i64 %2089, %2087
  %2091 = add i64 %2087, %2065
  %2092 = getelementptr i8, ptr %1901, i64 %1913
  %2093 = load i8, ptr %2092, align 1, !tbaa !5
  %2094 = zext i8 %2093 to i64
  %2095 = getelementptr inbounds i64, ptr %7, i64 %2094
  %2096 = load i64, ptr %2095, align 8, !tbaa !14
  %2097 = and i64 %2096, 255
  %2098 = lshr i64 %2090, %2097
  %2099 = and i64 %2096, -256
  %2100 = or i64 %2098, %2099
  %2101 = add i64 %2096, %2091
  %2102 = and i64 %2101, 255
  %2103 = lshr i64 %1989, %2102
  %2104 = or i64 %2100, %2103
  %2105 = add i64 %2101, %1995
  %2106 = and i64 %2105, 255
  %2107 = lshr i64 %2106, 3
  %2108 = sub nsw i64 64, %2106
  %2109 = lshr i64 %2104, %2108
  %2110 = and i64 %2105, 7
  store i64 %2109, ptr %1996, align 1, !tbaa !14
  %2111 = getelementptr inbounds i8, ptr %1996, i64 %2107
  %2112 = add nsw i64 %1913, -16
  %2113 = icmp sgt i64 %1913, 16
  br i1 %2113, label %1912, label %2529, !llvm.loop !80

2114:                                             ; preds = %281
  %2115 = srem i32 %283, 9
  %2116 = icmp sgt i32 %2115, 0
  br i1 %2116, label %2117, label %2149

2117:                                             ; preds = %2114
  %2118 = xor i32 %283, -2147483648
  %2119 = add nsw i32 %2115, -1
  %2120 = icmp ugt i32 %2118, %2119
  br label %2121

2121:                                             ; preds = %2117, %2127
  %2122 = phi i32 [ %2140, %2127 ], [ %2115, %2117 ]
  %2123 = phi i32 [ %2128, %2127 ], [ %283, %2117 ]
  %2124 = phi i64 [ %2138, %2127 ], [ 0, %2117 ]
  %2125 = phi i64 [ %2139, %2127 ], [ 0, %2117 ]
  br i1 %2120, label %2127, label %2126, !nosanitize !53

2126:                                             ; preds = %2121, %2306, %2402, %2405, %2408, %2411, %2414, %2417, %2420, %2156, %2159, %2162, %2165, %2168, %2171, %2174, %2177, %2180
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !53
  unreachable, !nosanitize !53

2127:                                             ; preds = %2121
  %2128 = add i32 %2123, -1
  %2129 = sext i32 %2128 to i64
  %2130 = getelementptr inbounds i8, ptr %2, i64 %2129
  %2131 = load i8, ptr %2130, align 1, !tbaa !5
  %2132 = zext i8 %2131 to i64
  %2133 = getelementptr inbounds i64, ptr %7, i64 %2132
  %2134 = load i64, ptr %2133, align 8, !tbaa !14
  %2135 = and i64 %2134, 255
  %2136 = lshr i64 %2124, %2135
  %2137 = and i64 %2134, -256
  %2138 = or i64 %2136, %2137
  %2139 = add i64 %2134, %2125
  %2140 = add nsw i32 %2122, -1
  %2141 = icmp sgt i32 %2122, 1
  br i1 %2141, label %2121, label %2142, !llvm.loop !79

2142:                                             ; preds = %2127
  %2143 = and i64 %2139, 255
  %2144 = lshr i64 %2143, 3
  %2145 = sub nsw i64 64, %2143
  %2146 = lshr i64 %2138, %2145
  %2147 = and i64 %2139, 7
  store i64 %2146, ptr %0, align 1, !tbaa !14
  %2148 = getelementptr inbounds i8, ptr %0, i64 %2144
  br label %2149

2149:                                             ; preds = %2142, %2114
  %2150 = phi i64 [ %2147, %2142 ], [ 0, %2114 ]
  %2151 = phi ptr [ %2148, %2142 ], [ %0, %2114 ]
  %2152 = phi i64 [ %2138, %2142 ], [ 0, %2114 ]
  %2153 = phi i32 [ %2128, %2142 ], [ %283, %2114 ]
  %2154 = srem i32 %2153, 18
  %2155 = icmp eq i32 %2154, 0
  br i1 %2155, label %2289, label %2156

2156:                                             ; preds = %2149
  %2157 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2153, i32 -1)
  %2158 = extractvalue { i32, i1 } %2157, 1, !nosanitize !53
  br i1 %2158, label %2126, label %2159, !nosanitize !53

2159:                                             ; preds = %2156
  %2160 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2153, i32 -2)
  %2161 = extractvalue { i32, i1 } %2160, 1, !nosanitize !53
  br i1 %2161, label %2126, label %2162, !nosanitize !53

2162:                                             ; preds = %2159
  %2163 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2153, i32 -3)
  %2164 = extractvalue { i32, i1 } %2163, 1, !nosanitize !53
  br i1 %2164, label %2126, label %2165, !nosanitize !53

2165:                                             ; preds = %2162
  %2166 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2153, i32 -4)
  %2167 = extractvalue { i32, i1 } %2166, 1, !nosanitize !53
  br i1 %2167, label %2126, label %2168, !nosanitize !53

2168:                                             ; preds = %2165
  %2169 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2153, i32 -5)
  %2170 = extractvalue { i32, i1 } %2169, 1, !nosanitize !53
  br i1 %2170, label %2126, label %2171, !nosanitize !53

2171:                                             ; preds = %2168
  %2172 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2153, i32 -6)
  %2173 = extractvalue { i32, i1 } %2172, 1, !nosanitize !53
  br i1 %2173, label %2126, label %2174, !nosanitize !53

2174:                                             ; preds = %2171
  %2175 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2153, i32 -7)
  %2176 = extractvalue { i32, i1 } %2175, 1, !nosanitize !53
  br i1 %2176, label %2126, label %2177, !nosanitize !53

2177:                                             ; preds = %2174
  %2178 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2153, i32 -8)
  %2179 = extractvalue { i32, i1 } %2178, 1, !nosanitize !53
  br i1 %2179, label %2126, label %2180, !nosanitize !53

2180:                                             ; preds = %2177
  %2181 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2153, i32 -9)
  %2182 = extractvalue { i32, i1 } %2181, 1, !nosanitize !53
  br i1 %2182, label %2126, label %2183, !nosanitize !53

2183:                                             ; preds = %2180
  %2184 = extractvalue { i32, i1 } %2178, 0, !nosanitize !53
  %2185 = sext i32 %2184 to i64
  %2186 = getelementptr inbounds i8, ptr %2, i64 %2185
  %2187 = load i8, ptr %2186, align 1, !tbaa !5
  %2188 = zext i8 %2187 to i64
  %2189 = getelementptr inbounds i64, ptr %7, i64 %2188
  %2190 = load i64, ptr %2189, align 8, !tbaa !14
  %2191 = extractvalue { i32, i1 } %2175, 0, !nosanitize !53
  %2192 = sext i32 %2191 to i64
  %2193 = getelementptr inbounds i8, ptr %2, i64 %2192
  %2194 = load i8, ptr %2193, align 1, !tbaa !5
  %2195 = zext i8 %2194 to i64
  %2196 = getelementptr inbounds i64, ptr %7, i64 %2195
  %2197 = load i64, ptr %2196, align 8, !tbaa !14
  %2198 = extractvalue { i32, i1 } %2172, 0, !nosanitize !53
  %2199 = sext i32 %2198 to i64
  %2200 = getelementptr inbounds i8, ptr %2, i64 %2199
  %2201 = load i8, ptr %2200, align 1, !tbaa !5
  %2202 = zext i8 %2201 to i64
  %2203 = getelementptr inbounds i64, ptr %7, i64 %2202
  %2204 = load i64, ptr %2203, align 8, !tbaa !14
  %2205 = extractvalue { i32, i1 } %2169, 0, !nosanitize !53
  %2206 = sext i32 %2205 to i64
  %2207 = getelementptr inbounds i8, ptr %2, i64 %2206
  %2208 = load i8, ptr %2207, align 1, !tbaa !5
  %2209 = zext i8 %2208 to i64
  %2210 = getelementptr inbounds i64, ptr %7, i64 %2209
  %2211 = load i64, ptr %2210, align 8, !tbaa !14
  %2212 = extractvalue { i32, i1 } %2166, 0, !nosanitize !53
  %2213 = sext i32 %2212 to i64
  %2214 = getelementptr inbounds i8, ptr %2, i64 %2213
  %2215 = load i8, ptr %2214, align 1, !tbaa !5
  %2216 = zext i8 %2215 to i64
  %2217 = getelementptr inbounds i64, ptr %7, i64 %2216
  %2218 = load i64, ptr %2217, align 8, !tbaa !14
  %2219 = extractvalue { i32, i1 } %2163, 0, !nosanitize !53
  %2220 = sext i32 %2219 to i64
  %2221 = getelementptr inbounds i8, ptr %2, i64 %2220
  %2222 = load i8, ptr %2221, align 1, !tbaa !5
  %2223 = zext i8 %2222 to i64
  %2224 = getelementptr inbounds i64, ptr %7, i64 %2223
  %2225 = load i64, ptr %2224, align 8, !tbaa !14
  %2226 = extractvalue { i32, i1 } %2160, 0, !nosanitize !53
  %2227 = sext i32 %2226 to i64
  %2228 = getelementptr inbounds i8, ptr %2, i64 %2227
  %2229 = load i8, ptr %2228, align 1, !tbaa !5
  %2230 = zext i8 %2229 to i64
  %2231 = getelementptr inbounds i64, ptr %7, i64 %2230
  %2232 = load i64, ptr %2231, align 8, !tbaa !14
  %2233 = extractvalue { i32, i1 } %2157, 0, !nosanitize !53
  %2234 = sext i32 %2233 to i64
  %2235 = getelementptr inbounds i8, ptr %2, i64 %2234
  %2236 = load i8, ptr %2235, align 1, !tbaa !5
  %2237 = zext i8 %2236 to i64
  %2238 = getelementptr inbounds i64, ptr %7, i64 %2237
  %2239 = load i64, ptr %2238, align 8, !tbaa !14
  %2240 = add i64 %2239, %2150
  %2241 = add i64 %2232, %2240
  %2242 = add i64 %2225, %2241
  %2243 = add i64 %2218, %2242
  %2244 = add i64 %2211, %2243
  %2245 = add i64 %2204, %2244
  %2246 = add i64 %2197, %2245
  %2247 = add i64 %2190, %2246
  %2248 = and i64 %2239, 255
  %2249 = lshr i64 %2152, %2248
  %2250 = or i64 %2249, %2239
  %2251 = and i64 %2232, 255
  %2252 = lshr i64 %2250, %2251
  %2253 = or i64 %2252, %2232
  %2254 = and i64 %2225, 255
  %2255 = lshr i64 %2253, %2254
  %2256 = or i64 %2255, %2225
  %2257 = and i64 %2218, 255
  %2258 = lshr i64 %2256, %2257
  %2259 = or i64 %2258, %2218
  %2260 = and i64 %2211, 255
  %2261 = lshr i64 %2259, %2260
  %2262 = or i64 %2261, %2211
  %2263 = and i64 %2204, 255
  %2264 = lshr i64 %2262, %2263
  %2265 = or i64 %2264, %2204
  %2266 = and i64 %2197, 255
  %2267 = lshr i64 %2265, %2266
  %2268 = or i64 %2267, %2197
  %2269 = and i64 %2190, 255
  %2270 = lshr i64 %2268, %2269
  %2271 = or i64 %2270, %2190
  %2272 = extractvalue { i32, i1 } %2181, 0, !nosanitize !53
  %2273 = sext i32 %2272 to i64
  %2274 = getelementptr inbounds i8, ptr %2, i64 %2273
  %2275 = load i8, ptr %2274, align 1, !tbaa !5
  %2276 = zext i8 %2275 to i64
  %2277 = getelementptr inbounds i64, ptr %7, i64 %2276
  %2278 = load i64, ptr %2277, align 8, !tbaa !14
  %2279 = and i64 %2278, 255
  %2280 = lshr i64 %2271, %2279
  %2281 = or i64 %2280, %2278
  %2282 = add i64 %2278, %2247
  %2283 = and i64 %2282, 255
  %2284 = lshr i64 %2283, 3
  %2285 = sub nsw i64 64, %2283
  %2286 = lshr i64 %2281, %2285
  %2287 = and i64 %2282, 7
  store i64 %2286, ptr %2151, align 1, !tbaa !14
  %2288 = getelementptr inbounds i8, ptr %2151, i64 %2284
  br label %2289

2289:                                             ; preds = %2183, %2149
  %2290 = phi i64 [ %2150, %2149 ], [ %2287, %2183 ]
  %2291 = phi ptr [ %2151, %2149 ], [ %2288, %2183 ]
  %2292 = phi i64 [ %2152, %2149 ], [ %2281, %2183 ]
  %2293 = phi i32 [ %2153, %2149 ], [ %2272, %2183 ]
  %2294 = getelementptr i8, ptr %2, i64 -18
  %2295 = icmp sgt i32 %2293, 0
  br i1 %2295, label %2296, label %2529

2296:                                             ; preds = %2289
  %2297 = zext nneg i32 %2293 to i64
  %2298 = getelementptr i8, ptr %2, i64 -1
  %2299 = getelementptr i8, ptr %2, i64 -2
  %2300 = getelementptr i8, ptr %2, i64 -3
  %2301 = getelementptr i8, ptr %2, i64 -4
  %2302 = getelementptr i8, ptr %2, i64 -5
  %2303 = getelementptr i8, ptr %2, i64 -6
  %2304 = getelementptr i8, ptr %2, i64 -7
  %2305 = getelementptr i8, ptr %2, i64 -8
  br label %2306

2306:                                             ; preds = %2296, %2423
  %2307 = phi i64 [ %2297, %2296 ], [ %2527, %2423 ]
  %2308 = phi i64 [ %2292, %2296 ], [ %2519, %2423 ]
  %2309 = phi ptr [ %2291, %2296 ], [ %2526, %2423 ]
  %2310 = phi i64 [ %2290, %2296 ], [ %2525, %2423 ]
  %2311 = getelementptr i8, ptr %2298, i64 %2307
  %2312 = load i8, ptr %2311, align 1, !tbaa !5
  %2313 = zext i8 %2312 to i64
  %2314 = getelementptr inbounds i64, ptr %7, i64 %2313
  %2315 = load i64, ptr %2314, align 8, !tbaa !14
  %2316 = and i64 %2315, 255
  %2317 = lshr i64 %2308, %2316
  %2318 = or i64 %2317, %2315
  %2319 = add i64 %2315, %2310
  %2320 = getelementptr i8, ptr %2299, i64 %2307
  %2321 = load i8, ptr %2320, align 1, !tbaa !5
  %2322 = zext i8 %2321 to i64
  %2323 = getelementptr inbounds i64, ptr %7, i64 %2322
  %2324 = load i64, ptr %2323, align 8, !tbaa !14
  %2325 = and i64 %2324, 255
  %2326 = lshr i64 %2318, %2325
  %2327 = or i64 %2326, %2324
  %2328 = add i64 %2324, %2319
  %2329 = getelementptr i8, ptr %2300, i64 %2307
  %2330 = load i8, ptr %2329, align 1, !tbaa !5
  %2331 = zext i8 %2330 to i64
  %2332 = getelementptr inbounds i64, ptr %7, i64 %2331
  %2333 = load i64, ptr %2332, align 8, !tbaa !14
  %2334 = and i64 %2333, 255
  %2335 = lshr i64 %2327, %2334
  %2336 = or i64 %2335, %2333
  %2337 = add i64 %2333, %2328
  %2338 = getelementptr i8, ptr %2301, i64 %2307
  %2339 = load i8, ptr %2338, align 1, !tbaa !5
  %2340 = zext i8 %2339 to i64
  %2341 = getelementptr inbounds i64, ptr %7, i64 %2340
  %2342 = load i64, ptr %2341, align 8, !tbaa !14
  %2343 = and i64 %2342, 255
  %2344 = lshr i64 %2336, %2343
  %2345 = or i64 %2344, %2342
  %2346 = add i64 %2342, %2337
  %2347 = getelementptr i8, ptr %2302, i64 %2307
  %2348 = load i8, ptr %2347, align 1, !tbaa !5
  %2349 = zext i8 %2348 to i64
  %2350 = getelementptr inbounds i64, ptr %7, i64 %2349
  %2351 = load i64, ptr %2350, align 8, !tbaa !14
  %2352 = and i64 %2351, 255
  %2353 = lshr i64 %2345, %2352
  %2354 = or i64 %2353, %2351
  %2355 = add i64 %2351, %2346
  %2356 = getelementptr i8, ptr %2303, i64 %2307
  %2357 = load i8, ptr %2356, align 1, !tbaa !5
  %2358 = zext i8 %2357 to i64
  %2359 = getelementptr inbounds i64, ptr %7, i64 %2358
  %2360 = load i64, ptr %2359, align 8, !tbaa !14
  %2361 = and i64 %2360, 255
  %2362 = lshr i64 %2354, %2361
  %2363 = or i64 %2362, %2360
  %2364 = add i64 %2360, %2355
  %2365 = getelementptr i8, ptr %2304, i64 %2307
  %2366 = load i8, ptr %2365, align 1, !tbaa !5
  %2367 = zext i8 %2366 to i64
  %2368 = getelementptr inbounds i64, ptr %7, i64 %2367
  %2369 = load i64, ptr %2368, align 8, !tbaa !14
  %2370 = and i64 %2369, 255
  %2371 = lshr i64 %2363, %2370
  %2372 = or i64 %2371, %2369
  %2373 = add i64 %2369, %2364
  %2374 = getelementptr i8, ptr %2305, i64 %2307
  %2375 = load i8, ptr %2374, align 1, !tbaa !5
  %2376 = zext i8 %2375 to i64
  %2377 = getelementptr inbounds i64, ptr %7, i64 %2376
  %2378 = load i64, ptr %2377, align 8, !tbaa !14
  %2379 = and i64 %2378, 255
  %2380 = lshr i64 %2372, %2379
  %2381 = or i64 %2380, %2378
  %2382 = add i64 %2378, %2373
  %2383 = add nsw i64 %2307, -9
  %2384 = getelementptr inbounds i8, ptr %2, i64 %2383
  %2385 = load i8, ptr %2384, align 1, !tbaa !5
  %2386 = zext i8 %2385 to i64
  %2387 = getelementptr inbounds i64, ptr %7, i64 %2386
  %2388 = load i64, ptr %2387, align 8, !tbaa !14
  %2389 = and i64 %2388, 255
  %2390 = lshr i64 %2381, %2389
  %2391 = or i64 %2390, %2388
  %2392 = add i64 %2388, %2382
  %2393 = and i64 %2392, 255
  %2394 = lshr i64 %2393, 3
  %2395 = sub nsw i64 64, %2393
  %2396 = lshr i64 %2391, %2395
  %2397 = and i64 %2392, 7
  store i64 %2396, ptr %2309, align 1, !tbaa !14
  %2398 = getelementptr inbounds i8, ptr %2309, i64 %2394
  %2399 = trunc i64 %2383 to i32
  %2400 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2399, i32 -1)
  %2401 = extractvalue { i32, i1 } %2400, 1, !nosanitize !53
  br i1 %2401, label %2126, label %2402, !nosanitize !53

2402:                                             ; preds = %2306
  %2403 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2399, i32 -2)
  %2404 = extractvalue { i32, i1 } %2403, 1, !nosanitize !53
  br i1 %2404, label %2126, label %2405, !nosanitize !53

2405:                                             ; preds = %2402
  %2406 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2399, i32 -3)
  %2407 = extractvalue { i32, i1 } %2406, 1, !nosanitize !53
  br i1 %2407, label %2126, label %2408, !nosanitize !53

2408:                                             ; preds = %2405
  %2409 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2399, i32 -4)
  %2410 = extractvalue { i32, i1 } %2409, 1, !nosanitize !53
  br i1 %2410, label %2126, label %2411, !nosanitize !53

2411:                                             ; preds = %2408
  %2412 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2399, i32 -5)
  %2413 = extractvalue { i32, i1 } %2412, 1, !nosanitize !53
  br i1 %2413, label %2126, label %2414, !nosanitize !53

2414:                                             ; preds = %2411
  %2415 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2399, i32 -6)
  %2416 = extractvalue { i32, i1 } %2415, 1, !nosanitize !53
  br i1 %2416, label %2126, label %2417, !nosanitize !53

2417:                                             ; preds = %2414
  %2418 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2399, i32 -7)
  %2419 = extractvalue { i32, i1 } %2418, 1, !nosanitize !53
  br i1 %2419, label %2126, label %2420, !nosanitize !53

2420:                                             ; preds = %2417
  %2421 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2399, i32 -8)
  %2422 = extractvalue { i32, i1 } %2421, 1, !nosanitize !53
  br i1 %2422, label %2126, label %2423, !nosanitize !53

2423:                                             ; preds = %2420
  %2424 = extractvalue { i32, i1 } %2418, 0, !nosanitize !53
  %2425 = sext i32 %2424 to i64
  %2426 = getelementptr inbounds i8, ptr %2, i64 %2425
  %2427 = load i8, ptr %2426, align 1, !tbaa !5
  %2428 = zext i8 %2427 to i64
  %2429 = getelementptr inbounds i64, ptr %7, i64 %2428
  %2430 = load i64, ptr %2429, align 8, !tbaa !14
  %2431 = extractvalue { i32, i1 } %2415, 0, !nosanitize !53
  %2432 = sext i32 %2431 to i64
  %2433 = getelementptr inbounds i8, ptr %2, i64 %2432
  %2434 = load i8, ptr %2433, align 1, !tbaa !5
  %2435 = zext i8 %2434 to i64
  %2436 = getelementptr inbounds i64, ptr %7, i64 %2435
  %2437 = load i64, ptr %2436, align 8, !tbaa !14
  %2438 = extractvalue { i32, i1 } %2412, 0, !nosanitize !53
  %2439 = sext i32 %2438 to i64
  %2440 = getelementptr inbounds i8, ptr %2, i64 %2439
  %2441 = load i8, ptr %2440, align 1, !tbaa !5
  %2442 = zext i8 %2441 to i64
  %2443 = getelementptr inbounds i64, ptr %7, i64 %2442
  %2444 = load i64, ptr %2443, align 8, !tbaa !14
  %2445 = extractvalue { i32, i1 } %2409, 0, !nosanitize !53
  %2446 = sext i32 %2445 to i64
  %2447 = getelementptr inbounds i8, ptr %2, i64 %2446
  %2448 = load i8, ptr %2447, align 1, !tbaa !5
  %2449 = zext i8 %2448 to i64
  %2450 = getelementptr inbounds i64, ptr %7, i64 %2449
  %2451 = load i64, ptr %2450, align 8, !tbaa !14
  %2452 = extractvalue { i32, i1 } %2406, 0, !nosanitize !53
  %2453 = sext i32 %2452 to i64
  %2454 = getelementptr inbounds i8, ptr %2, i64 %2453
  %2455 = load i8, ptr %2454, align 1, !tbaa !5
  %2456 = zext i8 %2455 to i64
  %2457 = getelementptr inbounds i64, ptr %7, i64 %2456
  %2458 = load i64, ptr %2457, align 8, !tbaa !14
  %2459 = extractvalue { i32, i1 } %2403, 0, !nosanitize !53
  %2460 = sext i32 %2459 to i64
  %2461 = getelementptr inbounds i8, ptr %2, i64 %2460
  %2462 = load i8, ptr %2461, align 1, !tbaa !5
  %2463 = zext i8 %2462 to i64
  %2464 = getelementptr inbounds i64, ptr %7, i64 %2463
  %2465 = load i64, ptr %2464, align 8, !tbaa !14
  %2466 = extractvalue { i32, i1 } %2400, 0, !nosanitize !53
  %2467 = sext i32 %2466 to i64
  %2468 = getelementptr inbounds i8, ptr %2, i64 %2467
  %2469 = load i8, ptr %2468, align 1, !tbaa !5
  %2470 = zext i8 %2469 to i64
  %2471 = getelementptr inbounds i64, ptr %7, i64 %2470
  %2472 = load i64, ptr %2471, align 8, !tbaa !14
  %2473 = add i64 %2465, %2472
  %2474 = add i64 %2458, %2473
  %2475 = add i64 %2451, %2474
  %2476 = add i64 %2444, %2475
  %2477 = add i64 %2437, %2476
  %2478 = add i64 %2430, %2477
  %2479 = and i64 %2465, 255
  %2480 = lshr i64 %2472, %2479
  %2481 = or i64 %2480, %2465
  %2482 = and i64 %2458, 255
  %2483 = lshr i64 %2481, %2482
  %2484 = or i64 %2483, %2458
  %2485 = and i64 %2451, 255
  %2486 = lshr i64 %2484, %2485
  %2487 = or i64 %2486, %2451
  %2488 = and i64 %2444, 255
  %2489 = lshr i64 %2487, %2488
  %2490 = or i64 %2489, %2444
  %2491 = and i64 %2437, 255
  %2492 = lshr i64 %2490, %2491
  %2493 = or i64 %2492, %2437
  %2494 = and i64 %2430, 255
  %2495 = lshr i64 %2493, %2494
  %2496 = or i64 %2495, %2430
  %2497 = extractvalue { i32, i1 } %2421, 0, !nosanitize !53
  %2498 = sext i32 %2497 to i64
  %2499 = getelementptr inbounds i8, ptr %2, i64 %2498
  %2500 = load i8, ptr %2499, align 1, !tbaa !5
  %2501 = zext i8 %2500 to i64
  %2502 = getelementptr inbounds i64, ptr %7, i64 %2501
  %2503 = load i64, ptr %2502, align 8, !tbaa !14
  %2504 = and i64 %2503, 255
  %2505 = lshr i64 %2496, %2504
  %2506 = or i64 %2505, %2503
  %2507 = add i64 %2503, %2478
  %2508 = getelementptr i8, ptr %2294, i64 %2307
  %2509 = load i8, ptr %2508, align 1, !tbaa !5
  %2510 = zext i8 %2509 to i64
  %2511 = getelementptr inbounds i64, ptr %7, i64 %2510
  %2512 = load i64, ptr %2511, align 8, !tbaa !14
  %2513 = and i64 %2512, 255
  %2514 = lshr i64 %2506, %2513
  %2515 = add i64 %2512, %2507
  %2516 = and i64 %2515, 255
  %2517 = lshr i64 %2391, %2516
  %2518 = or i64 %2514, %2517
  %2519 = or i64 %2518, %2512
  %2520 = add i64 %2515, %2397
  %2521 = and i64 %2520, 255
  %2522 = lshr i64 %2521, 3
  %2523 = sub nsw i64 64, %2521
  %2524 = lshr i64 %2519, %2523
  %2525 = and i64 %2520, 7
  store i64 %2524, ptr %2398, align 1, !tbaa !14
  %2526 = getelementptr inbounds i8, ptr %2398, i64 %2522
  %2527 = add nsw i64 %2307, -18
  %2528 = icmp sgt i64 %2307, 18
  br i1 %2528, label %2306, label %2529, !llvm.loop !80

2529:                                             ; preds = %2018, %1567, %1169, %825, %524, %2423, %227, %1896, %1458, %1073, %743, %441, %2289, %155
  %2530 = phi i64 [ %156, %155 ], [ %2290, %2289 ], [ %442, %441 ], [ %744, %743 ], [ %1074, %1073 ], [ %1459, %1458 ], [ %1897, %1896 ], [ %275, %227 ], [ %2525, %2423 ], [ %583, %524 ], [ %883, %825 ], [ %1239, %1169 ], [ %1648, %1567 ], [ %2110, %2018 ]
  %2531 = phi ptr [ %157, %155 ], [ %2291, %2289 ], [ %443, %441 ], [ %745, %743 ], [ %1075, %1073 ], [ %1460, %1458 ], [ %1898, %1896 ], [ %278, %227 ], [ %2526, %2423 ], [ %584, %524 ], [ %884, %825 ], [ %1240, %1169 ], [ %1649, %1567 ], [ %2111, %2018 ]
  %2532 = phi i64 [ %158, %155 ], [ %2292, %2289 ], [ %444, %441 ], [ %746, %743 ], [ %1076, %1073 ], [ %1461, %1458 ], [ %1899, %1896 ], [ %269, %227 ], [ %2519, %2423 ], [ %577, %524 ], [ %877, %825 ], [ %1233, %1169 ], [ %1642, %1567 ], [ %2104, %2018 ]
  %2533 = lshr i64 %2532, 1
  %2534 = or disjoint i64 %2533, -9223372036854775808
  %2535 = add nuw nsw i64 %2530, -9223372036854775807
  %2536 = and i64 %2535, 255
  %2537 = lshr i64 %2536, 3
  %2538 = sub nuw nsw i64 64, %2536
  %2539 = lshr i64 %2534, %2538
  store i64 %2539, ptr %2531, align 1, !tbaa !14
  %2540 = getelementptr inbounds i8, ptr %2531, i64 %2537
  %2541 = icmp ugt ptr %2540, %11
  %2542 = select i1 %2541, ptr %11, ptr %2540
  %2543 = icmp ult ptr %2542, %11
  br i1 %2543, label %2544, label %2552

2544:                                             ; preds = %2529
  %2545 = and i64 %2535, 7
  %2546 = ptrtoint ptr %2542 to i64
  %2547 = ptrtoint ptr %0 to i64
  %2548 = icmp ne i64 %2545, 0
  %2549 = zext i1 %2548 to i64
  %2550 = sub i64 %2549, %2547
  %2551 = add i64 %2550, %2546
  br label %2552

2552:                                             ; preds = %2544, %2529, %5, %9
  %2553 = phi i64 [ 0, %9 ], [ 0, %5 ], [ %2551, %2544 ], [ 0, %2529 ]
  ret i64 %2553
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) unnamed_addr #2 {
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
  %23 = getelementptr inbounds i8, ptr %1, i64 %18
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

declare i64 @HIST_count_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v2i32(<2 x i32>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold noreturn nounwind }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
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
!27 = !{!28}
!28 = distinct !{!28, !29}
!29 = distinct !{!29, !"LVerDomain"}
!30 = !{!31}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !9, !10, !11}
!33 = distinct !{!33, !9, !10}
!34 = distinct !{!34, !9, !10, !11}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9, !11, !10}
!37 = !{!38, !38, i64 0}
!38 = !{!"short", !6, i64 0}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = !{i32 0, i32 33}
!43 = !{!44, !38, i64 0}
!44 = !{!"", !38, i64 0, !38, i64 2}
!45 = distinct !{!45, !9}
!46 = !{!44, !38, i64 2}
!47 = distinct !{!47, !9}
!48 = !{!49, !20, i64 0}
!49 = !{!"nodeElt_s", !20, i64 0, !38, i64 4, !6, i64 6, !6, i64 7}
!50 = !{!49, !6, i64 6}
!51 = distinct !{!51, !9}
!52 = distinct !{!52, !9}
!53 = !{}
!54 = distinct !{!54, !9}
!55 = !{!49, !38, i64 4}
!56 = distinct !{!56, !9}
!57 = distinct !{!57, !18}
!58 = distinct !{!58, !9}
!59 = !{!49, !6, i64 7}
!60 = distinct !{!60, !9}
!61 = distinct !{!61, !9}
!62 = distinct !{!62, !9}
!63 = distinct !{!63, !9}
!64 = distinct !{!64, !9}
!65 = distinct !{!65, !9}
!66 = distinct !{!66, !9}
!67 = distinct !{!67, !9}
!68 = distinct !{!68, !9}
!69 = distinct !{!69, !9}
!70 = distinct !{!70, !9}
!71 = distinct !{!71, !9}
!72 = distinct !{!72, !18}
!73 = distinct !{!73, !9}
!74 = distinct !{!74, !18}
!75 = distinct !{!75, !9}
!76 = distinct !{!76, !9}
!77 = distinct !{!77, !9, !10, !11}
!78 = distinct !{!78, !9, !11, !10}
!79 = distinct !{!79, !9}
!80 = distinct !{!80, !9}
!81 = distinct !{!81, !9, !10, !11}
!82 = distinct !{!82, !9, !11, !10}
!83 = distinct !{!83, !9, !10, !11}
!84 = distinct !{!84, !9, !11, !10}
!85 = !{i64 -66, i64 13}
!86 = distinct !{!86, !9}
!87 = !{i32 0, i32 2}
!88 = distinct !{!88, !9}
!89 = distinct !{!89, !9}
!90 = distinct !{!90, !9}
!91 = distinct !{!91, !9}
