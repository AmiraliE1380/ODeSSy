; ModuleID = 'results/static/pipeline_cost_par/ir/zstd_zstd_preSplit.ll'
source_filename = "/mydata/zstd/lib/compress/zstd_preSplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_splitBlock_byChunks.records_fs = internal unnamed_addr constant [4 x ptr] [ptr @ZSTD_recordFingerprint_43, ptr @ZSTD_recordFingerprint_11, ptr @ZSTD_recordFingerprint_5, ptr @ZSTD_recordFingerprint_1], align 16
@ZSTD_splitBlock_byChunks.hashParams = internal unnamed_addr constant [4 x i32] [i32 8, i32 9, i32 10, i32 10], align 16

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_splitBlock(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %277

7:                                                ; preds = %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8208) %3, i8 0, i64 8208, i1 false)
  tail call void @HIST_add(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 512) #6
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 4104
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %10 = getelementptr inbounds i8, ptr %9, i64 -512
  tail call void @HIST_add(ptr noundef nonnull %8, ptr noundef nonnull %10, i64 noundef 512) #6
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 8200
  store i64 512, ptr %11, align 8, !tbaa !5
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 4096
  store i64 512, ptr %12, align 8, !tbaa !11
  %13 = load i32, ptr %3, align 4, !tbaa !12
  %14 = zext i32 %13 to i64
  %15 = load i32, ptr %8, align 4, !tbaa !12
  %16 = zext i32 %15 to i64
  %17 = sub nsw i64 %14, %16
  %18 = icmp slt i64 %17, 0
  %19 = shl nsw i64 %17, 9
  %20 = sub nsw i64 0, %19
  %21 = select i1 %18, i64 %20, i64 %19
  %22 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %21, i64 0
  br label %23

23:                                               ; preds = %23, %7
  %24 = phi i64 [ 0, %7 ], [ %52, %23 ]
  %25 = phi <2 x i64> [ %22, %7 ], [ %50, %23 ]
  %26 = phi <2 x i64> [ zeroinitializer, %7 ], [ %51, %23 ]
  %27 = or disjoint i64 %24, 1
  %28 = getelementptr inbounds nuw [1024 x i32], ptr %3, i64 0, i64 %27
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %30 = load <2 x i32>, ptr %28, align 4, !tbaa !12
  %31 = load <2 x i32>, ptr %29, align 4, !tbaa !12
  %32 = zext <2 x i32> %30 to <2 x i64>
  %33 = zext <2 x i32> %31 to <2 x i64>
  %34 = getelementptr inbounds nuw [1024 x i32], ptr %8, i64 0, i64 %27
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 8
  %36 = load <2 x i32>, ptr %34, align 4, !tbaa !12
  %37 = load <2 x i32>, ptr %35, align 4, !tbaa !12
  %38 = zext <2 x i32> %36 to <2 x i64>
  %39 = zext <2 x i32> %37 to <2 x i64>
  %40 = sub nsw <2 x i64> %32, %38
  %41 = sub nsw <2 x i64> %33, %39
  %42 = shl nsw <2 x i64> %40, splat (i64 9)
  %43 = shl nsw <2 x i64> %41, splat (i64 9)
  %44 = icmp slt <2 x i64> %40, zeroinitializer
  %45 = icmp slt <2 x i64> %41, zeroinitializer
  %46 = sub nsw <2 x i64> zeroinitializer, %42
  %47 = sub nsw <2 x i64> zeroinitializer, %43
  %48 = select <2 x i1> %44, <2 x i64> %46, <2 x i64> %42
  %49 = select <2 x i1> %45, <2 x i64> %47, <2 x i64> %43
  %50 = add <2 x i64> %48, %25
  %51 = add <2 x i64> %49, %26
  %52 = add nuw i64 %24, 4
  %53 = icmp eq i64 %52, 252
  br i1 %53, label %54, label %23, !llvm.loop !14

54:                                               ; preds = %23
  %55 = add <2 x i64> %51, %50
  %56 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %55)
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 1012
  %58 = load i32, ptr %57, align 4, !tbaa !12
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 5116
  %61 = load i32, ptr %60, align 4, !tbaa !12
  %62 = zext i32 %61 to i64
  %63 = sub nsw i64 %59, %62
  %64 = shl nsw i64 %63, 9
  %65 = icmp slt i64 %63, 0
  %66 = sub nsw i64 0, %64
  %67 = select i1 %65, i64 %66, i64 %64
  %68 = add i64 %67, %56
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 1016
  %70 = load i32, ptr %69, align 4, !tbaa !12
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds nuw i8, ptr %3, i64 5120
  %73 = load i32, ptr %72, align 4, !tbaa !12
  %74 = zext i32 %73 to i64
  %75 = sub nsw i64 %71, %74
  %76 = shl nsw i64 %75, 9
  %77 = icmp slt i64 %75, 0
  %78 = sub nsw i64 0, %76
  %79 = select i1 %77, i64 %78, i64 %76
  %80 = add i64 %79, %68
  %81 = getelementptr inbounds nuw i8, ptr %3, i64 1020
  %82 = load i32, ptr %81, align 4, !tbaa !12
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds nuw i8, ptr %3, i64 5124
  %85 = load i32, ptr %84, align 4, !tbaa !12
  %86 = zext i32 %85 to i64
  %87 = sub nsw i64 %83, %86
  %88 = shl nsw i64 %87, 9
  %89 = icmp slt i64 %87, 0
  %90 = sub nsw i64 0, %88
  %91 = select i1 %89, i64 %90, i64 %88
  %92 = add i64 %91, %80
  %93 = icmp ult i64 %92, 229376
  br i1 %93, label %434, label %94

94:                                               ; preds = %54
  %95 = getelementptr inbounds nuw i8, ptr %3, i64 2048
  %96 = lshr i64 %1, 1
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 %96
  %98 = getelementptr inbounds i8, ptr %97, i64 -256
  tail call void @HIST_add(ptr noundef nonnull %95, ptr noundef nonnull %98, i64 noundef 512) #6
  %99 = getelementptr inbounds nuw i8, ptr %3, i64 6144
  store i64 512, ptr %99, align 8, !tbaa !19
  %100 = load i32, ptr %95, align 4, !tbaa !12
  %101 = zext i32 %100 to i64
  %102 = load i64, ptr %12, align 8, !tbaa !19
  %103 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %101, i64 %102), !nosanitize !20
  %104 = extractvalue { i64, i1 } %103, 1, !nosanitize !20
  br i1 %104, label %157, label %105, !prof !21, !nosanitize !20

105:                                              ; preds = %94
  %106 = load i32, ptr %3, align 4, !tbaa !12
  %107 = zext i32 %106 to i64
  %108 = shl nuw nsw i64 %107, 9
  %109 = extractvalue { i64, i1 } %103, 0, !nosanitize !20
  %110 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %108, i64 %109), !nosanitize !20
  %111 = extractvalue { i64, i1 } %110, 1, !nosanitize !20
  br i1 %111, label %166, label %112, !prof !21, !nosanitize !20

112:                                              ; preds = %105
  %113 = extractvalue { i64, i1 } %110, 0, !nosanitize !20
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %113), !nosanitize !20
  %117 = extractvalue { i64, i1 } %116, 0, !nosanitize !20
  %118 = extractvalue { i64, i1 } %116, 1, !nosanitize !20
  br i1 false, label %174, label %119, !prof !21, !nosanitize !20

119:                                              ; preds = %115, %112
  %120 = phi i64 [ %113, %112 ], [ %117, %115 ]
  %mv.h22 = icmp sge i64 %102, 0
  %mv.h23 = icmp sle i64 %102, 2147483648
  %mv.h24 = and i1 %mv.h22, %mv.h23
  %mv.h.fr25 = freeze i1 %mv.h24
  br i1 %mv.h.fr25, label %.mv.ph26.mv.fast, label %.mv.ph26

.mv.ph26.mv.fast:                                 ; preds = %119
  br label %121

121:                                              ; preds = %144, %.mv.ph26.mv.fast
  %122 = phi i64 [ %147, %144 ], [ 1, %.mv.ph26.mv.fast ]
  %123 = phi i64 [ %146, %144 ], [ %120, %.mv.ph26.mv.fast ]
  %124 = getelementptr inbounds nuw [1024 x i32], ptr %95, i64 0, i64 %122
  %125 = load i32, ptr %124, align 4, !tbaa !12
  %126 = zext i32 %125 to i64
  %127 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %126, i64 %102), !nosanitize !20
  %128 = extractvalue { i64, i1 } %127, 1, !nosanitize !20
  br i1 false, label %.loopexit18, label %129, !prof !22, !nosanitize !20

129:                                              ; preds = %121
  %130 = getelementptr inbounds nuw [1024 x i32], ptr %3, i64 0, i64 %122
  %131 = load i32, ptr %130, align 4, !tbaa !12
  %132 = zext i32 %131 to i64
  %133 = shl nuw nsw i64 %132, 9
  %134 = extractvalue { i64, i1 } %127, 0, !nosanitize !20
  %135 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %133, i64 %134), !nosanitize !20
  %136 = extractvalue { i64, i1 } %135, 1, !nosanitize !20
  br i1 false, label %.loopexit19, label %137, !prof !22, !nosanitize !20

137:                                              ; preds = %129
  %138 = extractvalue { i64, i1 } %135, 0, !nosanitize !20
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %138), !nosanitize !20
  %142 = extractvalue { i64, i1 } %141, 0, !nosanitize !20
  %143 = extractvalue { i64, i1 } %141, 1, !nosanitize !20
  br i1 false, label %.loopexit20, label %144, !prof !22, !nosanitize !20

144:                                              ; preds = %140, %137
  %145 = phi i64 [ %142, %140 ], [ %138, %137 ]
  %146 = add i64 %145, %123
  %147 = add nuw nsw i64 %122, 1
  %148 = icmp eq i64 %147, 256
  br i1 %148, label %180, label %121, !llvm.loop !23

.mv.ph26:                                         ; preds = %119
  br label %149

149:                                              ; preds = %175, %.mv.ph26
  %150 = phi i64 [ %178, %175 ], [ 1, %.mv.ph26 ]
  %151 = phi i64 [ %177, %175 ], [ %120, %.mv.ph26 ]
  %152 = getelementptr inbounds nuw [1024 x i32], ptr %95, i64 0, i64 %150
  %153 = load i32, ptr %152, align 4, !tbaa !12
  %154 = zext i32 %153 to i64
  %155 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %154, i64 %102), !nosanitize !20
  %156 = extractvalue { i64, i1 } %155, 1, !nosanitize !20
  br i1 %156, label %.loopexit18, label %158, !prof !22, !nosanitize !20

.loopexit18:                                      ; preds = %121, %149
  br label %157

157:                                              ; preds = %.loopexit18, %94
  tail call void @llvm.ubsantrap(i8 12) #7, !nosanitize !20
  unreachable, !nosanitize !20

158:                                              ; preds = %149
  %159 = getelementptr inbounds nuw [1024 x i32], ptr %3, i64 0, i64 %150
  %160 = load i32, ptr %159, align 4, !tbaa !12
  %161 = zext i32 %160 to i64
  %162 = shl nuw nsw i64 %161, 9
  %163 = extractvalue { i64, i1 } %155, 0, !nosanitize !20
  %164 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %162, i64 %163), !nosanitize !20
  %165 = extractvalue { i64, i1 } %164, 1, !nosanitize !20
  br i1 %165, label %.loopexit19, label %167, !prof !22, !nosanitize !20

.loopexit19:                                      ; preds = %129, %158
  br label %166

166:                                              ; preds = %.loopexit19, %105
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

167:                                              ; preds = %158
  %168 = extractvalue { i64, i1 } %164, 0, !nosanitize !20
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %168), !nosanitize !20
  %172 = extractvalue { i64, i1 } %171, 0, !nosanitize !20
  %173 = extractvalue { i64, i1 } %171, 1, !nosanitize !20
  br i1 false, label %.loopexit20, label %175, !prof !22, !nosanitize !20

.loopexit20:                                      ; preds = %140, %170
  br label %174

174:                                              ; preds = %.loopexit20, %115
  tail call void @llvm.ubsantrap(i8 13) #7, !nosanitize !20
  unreachable, !nosanitize !20

175:                                              ; preds = %170, %167
  %176 = phi i64 [ %172, %170 ], [ %168, %167 ]
  %177 = add i64 %176, %151
  %178 = add nuw nsw i64 %150, 1
  %179 = icmp eq i64 %178, 256
  br i1 %179, label %180, label %149, !llvm.loop !23

180:                                              ; preds = %144, %175
  %.lcssa21 = phi i64 [ %177, %175 ], [ %146, %144 ]
  %181 = load i64, ptr %11, align 8, !tbaa !19
  %182 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %101, i64 %181), !nosanitize !20
  %183 = extractvalue { i64, i1 } %182, 1, !nosanitize !20
  br i1 %183, label %236, label %184, !prof !21, !nosanitize !20

184:                                              ; preds = %180
  %185 = load i32, ptr %8, align 4, !tbaa !12
  %186 = zext i32 %185 to i64
  %187 = shl nuw nsw i64 %186, 9
  %188 = extractvalue { i64, i1 } %182, 0, !nosanitize !20
  %189 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %187, i64 %188), !nosanitize !20
  %190 = extractvalue { i64, i1 } %189, 1, !nosanitize !20
  br i1 %190, label %245, label %191, !prof !21, !nosanitize !20

191:                                              ; preds = %184
  %192 = extractvalue { i64, i1 } %189, 0, !nosanitize !20
  %193 = icmp slt i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %192), !nosanitize !20
  %196 = extractvalue { i64, i1 } %195, 0, !nosanitize !20
  %197 = extractvalue { i64, i1 } %195, 1, !nosanitize !20
  br i1 false, label %253, label %198, !prof !21, !nosanitize !20

198:                                              ; preds = %194, %191
  %199 = phi i64 [ %192, %191 ], [ %196, %194 ]
  %mv.h13 = icmp sge i64 %181, 0
  %mv.h14 = icmp sle i64 %181, 2147483648
  %mv.h15 = and i1 %mv.h13, %mv.h14
  %mv.h.fr16 = freeze i1 %mv.h15
  br i1 %mv.h.fr16, label %.mv.ph17.mv.fast, label %.mv.ph17

.mv.ph17.mv.fast:                                 ; preds = %198
  br label %200

200:                                              ; preds = %223, %.mv.ph17.mv.fast
  %201 = phi i64 [ %226, %223 ], [ 1, %.mv.ph17.mv.fast ]
  %202 = phi i64 [ %225, %223 ], [ %199, %.mv.ph17.mv.fast ]
  %203 = getelementptr inbounds nuw [1024 x i32], ptr %95, i64 0, i64 %201
  %204 = load i32, ptr %203, align 4, !tbaa !12
  %205 = zext i32 %204 to i64
  %206 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %205, i64 %181), !nosanitize !20
  %207 = extractvalue { i64, i1 } %206, 1, !nosanitize !20
  br i1 false, label %.loopexit9, label %208, !prof !22, !nosanitize !20

208:                                              ; preds = %200
  %209 = getelementptr inbounds nuw [1024 x i32], ptr %8, i64 0, i64 %201
  %210 = load i32, ptr %209, align 4, !tbaa !12
  %211 = zext i32 %210 to i64
  %212 = shl nuw nsw i64 %211, 9
  %213 = extractvalue { i64, i1 } %206, 0, !nosanitize !20
  %214 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %212, i64 %213), !nosanitize !20
  %215 = extractvalue { i64, i1 } %214, 1, !nosanitize !20
  br i1 false, label %.loopexit10, label %216, !prof !22, !nosanitize !20

216:                                              ; preds = %208
  %217 = extractvalue { i64, i1 } %214, 0, !nosanitize !20
  %218 = icmp slt i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %217), !nosanitize !20
  %221 = extractvalue { i64, i1 } %220, 0, !nosanitize !20
  %222 = extractvalue { i64, i1 } %220, 1, !nosanitize !20
  br i1 false, label %.loopexit11, label %223, !prof !22, !nosanitize !20

223:                                              ; preds = %219, %216
  %224 = phi i64 [ %221, %219 ], [ %217, %216 ]
  %225 = add i64 %224, %202
  %226 = add nuw nsw i64 %201, 1
  %227 = icmp eq i64 %226, 256
  br i1 %227, label %259, label %200, !llvm.loop !23

.mv.ph17:                                         ; preds = %198
  br label %228

228:                                              ; preds = %254, %.mv.ph17
  %229 = phi i64 [ %257, %254 ], [ 1, %.mv.ph17 ]
  %230 = phi i64 [ %256, %254 ], [ %199, %.mv.ph17 ]
  %231 = getelementptr inbounds nuw [1024 x i32], ptr %95, i64 0, i64 %229
  %232 = load i32, ptr %231, align 4, !tbaa !12
  %233 = zext i32 %232 to i64
  %234 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %233, i64 %181), !nosanitize !20
  %235 = extractvalue { i64, i1 } %234, 1, !nosanitize !20
  br i1 %235, label %.loopexit9, label %237, !prof !22, !nosanitize !20

.loopexit9:                                       ; preds = %200, %228
  br label %236

236:                                              ; preds = %.loopexit9, %180
  tail call void @llvm.ubsantrap(i8 12) #7, !nosanitize !20
  unreachable, !nosanitize !20

237:                                              ; preds = %228
  %238 = getelementptr inbounds nuw [1024 x i32], ptr %8, i64 0, i64 %229
  %239 = load i32, ptr %238, align 4, !tbaa !12
  %240 = zext i32 %239 to i64
  %241 = shl nuw nsw i64 %240, 9
  %242 = extractvalue { i64, i1 } %234, 0, !nosanitize !20
  %243 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %241, i64 %242), !nosanitize !20
  %244 = extractvalue { i64, i1 } %243, 1, !nosanitize !20
  br i1 %244, label %.loopexit10, label %246, !prof !22, !nosanitize !20

.loopexit10:                                      ; preds = %208, %237
  br label %245

245:                                              ; preds = %.loopexit10, %184
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

246:                                              ; preds = %237
  %247 = extractvalue { i64, i1 } %243, 0, !nosanitize !20
  %248 = icmp slt i64 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %246
  %250 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %247), !nosanitize !20
  %251 = extractvalue { i64, i1 } %250, 0, !nosanitize !20
  %252 = extractvalue { i64, i1 } %250, 1, !nosanitize !20
  br i1 false, label %.loopexit11, label %254, !prof !22, !nosanitize !20

.loopexit11:                                      ; preds = %219, %249
  br label %253

253:                                              ; preds = %.loopexit11, %194
  tail call void @llvm.ubsantrap(i8 13) #7, !nosanitize !20
  unreachable, !nosanitize !20

254:                                              ; preds = %249, %246
  %255 = phi i64 [ %251, %249 ], [ %247, %246 ]
  %256 = add i64 %255, %230
  %257 = add nuw nsw i64 %229, 1
  %258 = icmp eq i64 %257, 256
  br i1 %258, label %259, label %228, !llvm.loop !23

259:                                              ; preds = %223, %254
  %.lcssa12 = phi i64 [ %256, %254 ], [ %225, %223 ]
  %260 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.lcssa21, i64 %.lcssa12), !nosanitize !20
  %261 = extractvalue { i64, i1 } %260, 1, !nosanitize !20
  br i1 %261, label %262, label %263, !prof !21, !nosanitize !20

262:                                              ; preds = %259
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

263:                                              ; preds = %259
  %264 = extractvalue { i64, i1 } %260, 0, !nosanitize !20
  %265 = icmp slt i64 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %263
  %267 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %264), !nosanitize !20
  %268 = extractvalue { i64, i1 } %267, 0, !nosanitize !20
  %269 = extractvalue { i64, i1 } %267, 1, !nosanitize !20
  br i1 %269, label %270, label %271, !prof !21, !nosanitize !20

270:                                              ; preds = %266
  tail call void @llvm.ubsantrap(i8 13) #7, !nosanitize !20
  unreachable, !nosanitize !20

271:                                              ; preds = %266, %263
  %272 = phi i64 [ %268, %266 ], [ %264, %263 ]
  %273 = icmp ult i64 %272, 87381
  %274 = icmp ugt i64 %.lcssa21, %.lcssa12
  %275 = select i1 %274, i64 32768, i64 98304
  %276 = select i1 %273, i64 65536, i64 %275
  br label %434

277:                                              ; preds = %5
  %278 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 -1)
  %279 = extractvalue { i32, i1 } %278, 1, !nosanitize !20
  br i1 %279, label %280, label %281, !prof !21, !nosanitize !20

280:                                              ; preds = %277
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

281:                                              ; preds = %277
  %282 = extractvalue { i32, i1 } %278, 0, !nosanitize !20
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [4 x ptr], ptr @ZSTD_splitBlock_byChunks.records_fs, i64 0, i64 %283
  %285 = load ptr, ptr %284, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8208) %3, i8 0, i64 8208, i1 false)
  tail call void %285(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 8192) #6
  %286 = add i64 %1, -8192
  %287 = icmp ult i64 %286, 8192
  br i1 %287, label %434, label %288

288:                                              ; preds = %281
  %289 = getelementptr inbounds nuw i8, ptr %3, i64 4104
  %290 = getelementptr inbounds [4 x i32], ptr @ZSTD_splitBlock_byChunks.hashParams, i64 0, i64 %283
  %291 = getelementptr inbounds nuw i8, ptr %3, i64 4096
  %292 = getelementptr inbounds nuw i8, ptr %3, i64 8200
  br label %293

293:                                              ; preds = %427, %288
  %294 = phi i64 [ 8192, %288 ], [ %432, %427 ]
  %295 = phi i32 [ 3, %288 ], [ %431, %427 ]
  %296 = getelementptr inbounds nuw i8, ptr %0, i64 %294
  tail call void %285(ptr noundef nonnull %289, ptr noundef %296, i64 noundef 8192) #6
  %297 = load i32, ptr %290, align 4, !tbaa !12
  %298 = load i64, ptr %291, align 8, !tbaa !19
  %299 = load i64, ptr %292, align 8, !tbaa !19
  %300 = zext nneg i32 %297 to i64
  %301 = load i32, ptr %3, align 4, !tbaa !12
  %302 = zext i32 %301 to i64
  %303 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %302, i64 %299), !nosanitize !20
  %304 = extractvalue { i64, i1 } %303, 0, !nosanitize !20
  %305 = extractvalue { i64, i1 } %303, 1, !nosanitize !20
  br i1 %305, label %365, label %306, !prof !21, !nosanitize !20

306:                                              ; preds = %293
  %307 = load i32, ptr %289, align 4, !tbaa !12
  %308 = zext i32 %307 to i64
  %309 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %308, i64 %298), !nosanitize !20
  %310 = extractvalue { i64, i1 } %309, 1, !nosanitize !20
  br i1 %310, label %365, label %311, !prof !21, !nosanitize !20

311:                                              ; preds = %306
  %312 = extractvalue { i64, i1 } %309, 0, !nosanitize !20
  %313 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %304, i64 %312), !nosanitize !20
  %314 = extractvalue { i64, i1 } %313, 1, !nosanitize !20
  br i1 %314, label %376, label %315, !prof !21, !nosanitize !20

315:                                              ; preds = %311
  %316 = extractvalue { i64, i1 } %313, 0, !nosanitize !20
  %317 = icmp slt i64 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %315
  %319 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %316), !nosanitize !20
  %320 = extractvalue { i64, i1 } %319, 0, !nosanitize !20
  %321 = extractvalue { i64, i1 } %319, 1, !nosanitize !20
  br i1 %321, label %384, label %322, !prof !21, !nosanitize !20

322:                                              ; preds = %318, %315
  %323 = phi i64 [ %316, %315 ], [ %320, %318 ]
  %mv.h = icmp sge i64 %298, 0
  %mv.h3 = icmp sle i64 %298, 2147483648
  %mv.h4 = and i1 %mv.h, %mv.h3
  %mv.h5 = icmp sge i64 %299, 0
  %mv.h6 = and i1 %mv.h4, %mv.h5
  %mv.h7 = icmp sle i64 %299, 2147483648
  %mv.h8 = and i1 %mv.h6, %mv.h7
  %mv.h.fr = freeze i1 %mv.h8
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %322
  br label %324

324:                                              ; preds = %350, %.mv.ph.mv.fast
  %325 = phi i64 [ %353, %350 ], [ 1, %.mv.ph.mv.fast ]
  %326 = phi i64 [ %352, %350 ], [ %323, %.mv.ph.mv.fast ]
  %327 = getelementptr inbounds nuw [1024 x i32], ptr %3, i64 0, i64 %325
  %328 = load i32, ptr %327, align 4, !tbaa !12
  %329 = zext i32 %328 to i64
  %330 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %329, i64 %299), !nosanitize !20
  %331 = extractvalue { i64, i1 } %330, 0, !nosanitize !20
  %332 = extractvalue { i64, i1 } %330, 1, !nosanitize !20
  br i1 false, label %.loopexit, label %333, !prof !22, !nosanitize !20

333:                                              ; preds = %324
  %334 = getelementptr inbounds nuw [1024 x i32], ptr %289, i64 0, i64 %325
  %335 = load i32, ptr %334, align 4, !tbaa !12
  %336 = zext i32 %335 to i64
  %337 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %336, i64 %298), !nosanitize !20
  %338 = extractvalue { i64, i1 } %337, 1, !nosanitize !20
  br i1 false, label %.loopexit, label %339, !prof !22, !nosanitize !20

339:                                              ; preds = %333
  %340 = extractvalue { i64, i1 } %337, 0, !nosanitize !20
  %341 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %331, i64 %340), !nosanitize !20
  %342 = extractvalue { i64, i1 } %341, 1, !nosanitize !20
  br i1 false, label %.loopexit1, label %343, !prof !22, !nosanitize !20

343:                                              ; preds = %339
  %344 = extractvalue { i64, i1 } %341, 0, !nosanitize !20
  %345 = icmp slt i64 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %343
  %347 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %344), !nosanitize !20
  %348 = extractvalue { i64, i1 } %347, 0, !nosanitize !20
  %349 = extractvalue { i64, i1 } %347, 1, !nosanitize !20
  br i1 %349, label %.loopexit2, label %350, !prof !22, !nosanitize !20

350:                                              ; preds = %346, %343
  %351 = phi i64 [ %348, %346 ], [ %344, %343 ]
  %352 = add i64 %351, %326
  %353 = add i64 %325, 1
  %354 = lshr i64 %353, %300
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %324, label %391, !llvm.loop !23

.mv.ph:                                           ; preds = %322
  br label %356

356:                                              ; preds = %385, %.mv.ph
  %357 = phi i64 [ %388, %385 ], [ 1, %.mv.ph ]
  %358 = phi i64 [ %387, %385 ], [ %323, %.mv.ph ]
  %359 = getelementptr inbounds nuw [1024 x i32], ptr %3, i64 0, i64 %357
  %360 = load i32, ptr %359, align 4, !tbaa !12
  %361 = zext i32 %360 to i64
  %362 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %361, i64 %299), !nosanitize !20
  %363 = extractvalue { i64, i1 } %362, 0, !nosanitize !20
  %364 = extractvalue { i64, i1 } %362, 1, !nosanitize !20
  br i1 %364, label %.loopexit, label %366, !prof !22, !nosanitize !20

.loopexit:                                        ; preds = %333, %324, %356, %366
  br label %365

365:                                              ; preds = %.loopexit, %306, %293
  tail call void @llvm.ubsantrap(i8 12) #7, !nosanitize !20
  unreachable, !nosanitize !20

366:                                              ; preds = %356
  %367 = getelementptr inbounds nuw [1024 x i32], ptr %289, i64 0, i64 %357
  %368 = load i32, ptr %367, align 4, !tbaa !12
  %369 = zext i32 %368 to i64
  %370 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %369, i64 %298), !nosanitize !20
  %371 = extractvalue { i64, i1 } %370, 1, !nosanitize !20
  br i1 %371, label %.loopexit, label %372, !prof !22, !nosanitize !20

372:                                              ; preds = %366
  %373 = extractvalue { i64, i1 } %370, 0, !nosanitize !20
  %374 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %363, i64 %373), !nosanitize !20
  %375 = extractvalue { i64, i1 } %374, 1, !nosanitize !20
  br i1 %375, label %.loopexit1, label %377, !prof !22, !nosanitize !20

.loopexit1:                                       ; preds = %339, %372
  br label %376

376:                                              ; preds = %.loopexit1, %311
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

377:                                              ; preds = %372
  %378 = extractvalue { i64, i1 } %374, 0, !nosanitize !20
  %379 = icmp slt i64 %378, 0
  br i1 %379, label %380, label %385

380:                                              ; preds = %377
  %381 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %378), !nosanitize !20
  %382 = extractvalue { i64, i1 } %381, 0, !nosanitize !20
  %383 = extractvalue { i64, i1 } %381, 1, !nosanitize !20
  br i1 %383, label %.loopexit2, label %385, !prof !22, !nosanitize !20

.loopexit2:                                       ; preds = %346, %380
  br label %384

384:                                              ; preds = %.loopexit2, %318
  tail call void @llvm.ubsantrap(i8 13) #7, !nosanitize !20
  unreachable, !nosanitize !20

385:                                              ; preds = %380, %377
  %386 = phi i64 [ %382, %380 ], [ %378, %377 ]
  %387 = add i64 %386, %358
  %388 = add i64 %357, 1
  %389 = lshr i64 %388, %300
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %356, label %391, !llvm.loop !23

391:                                              ; preds = %350, %385
  %.lcssa = phi i64 [ %387, %385 ], [ %352, %350 ]
  %392 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %295, i32 14), !nosanitize !20
  %393 = extractvalue { i32, i1 } %392, 1, !nosanitize !20
  br i1 false, label %394, label %395, !prof !21, !nosanitize !20

394:                                              ; preds = %391
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !20
  unreachable, !nosanitize !20

395:                                              ; preds = %391
  %396 = extractvalue { i32, i1 } %392, 0, !nosanitize !20
  %397 = sext i32 %396 to i64
  %398 = mul i64 %298, %397
  %399 = mul i64 %398, %299
  %400 = lshr i64 %399, 4
  %401 = icmp ult i64 %.lcssa, %400
  br i1 %401, label %402, label %434

402:                                              ; preds = %402, %395
  %403 = phi i64 [ %425, %402 ], [ 0, %395 ]
  %404 = getelementptr inbounds nuw [1024 x i32], ptr %289, i64 0, i64 %403
  %405 = getelementptr inbounds nuw i8, ptr %404, i64 16
  %406 = load <4 x i32>, ptr %404, align 4, !tbaa !12
  %407 = load <4 x i32>, ptr %405, align 4, !tbaa !12
  %408 = getelementptr inbounds nuw [1024 x i32], ptr %3, i64 0, i64 %403
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 16
  %410 = load <4 x i32>, ptr %408, align 4, !tbaa !12
  %411 = load <4 x i32>, ptr %409, align 4, !tbaa !12
  %412 = add <4 x i32> %410, %406
  %413 = add <4 x i32> %411, %407
  store <4 x i32> %412, ptr %408, align 4, !tbaa !12
  store <4 x i32> %413, ptr %409, align 4, !tbaa !12
  %414 = or disjoint i64 %403, 8
  %415 = getelementptr inbounds nuw [1024 x i32], ptr %289, i64 0, i64 %414
  %416 = getelementptr inbounds nuw i8, ptr %415, i64 16
  %417 = load <4 x i32>, ptr %415, align 4, !tbaa !12
  %418 = load <4 x i32>, ptr %416, align 4, !tbaa !12
  %419 = getelementptr inbounds nuw [1024 x i32], ptr %3, i64 0, i64 %414
  %420 = getelementptr inbounds nuw i8, ptr %419, i64 16
  %421 = load <4 x i32>, ptr %419, align 4, !tbaa !12
  %422 = load <4 x i32>, ptr %420, align 4, !tbaa !12
  %423 = add <4 x i32> %421, %417
  %424 = add <4 x i32> %422, %418
  store <4 x i32> %423, ptr %419, align 4, !tbaa !12
  store <4 x i32> %424, ptr %420, align 4, !tbaa !12
  %425 = add nuw nsw i64 %403, 16
  %426 = icmp eq i64 %425, 1024
  br i1 %426, label %427, label %402, !llvm.loop !26

427:                                              ; preds = %402
  %428 = add i64 %299, %298
  store i64 %428, ptr %291, align 8, !tbaa !19
  %429 = icmp sgt i32 %295, 0
  %430 = sext i1 %429 to i32
  %431 = add nsw i32 %295, %430
  %432 = add i64 %294, 8192
  %433 = icmp ugt i64 %432, %286
  br i1 %433, label %434, label %293, !llvm.loop !27

434:                                              ; preds = %427, %395, %281, %271, %54
  %435 = phi i64 [ %276, %271 ], [ %1, %54 ], [ %1, %281 ], [ %294, %395 ], [ %1, %427 ]
  ret i64 %435
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #1

declare void @HIST_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ZSTD_recordFingerprint_43(ptr noundef captures(none) initializes((0, 1024), (4096, 4104)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 4096
  store i64 0, ptr %4, align 8, !tbaa !19
  %5 = add i64 %2, -1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %7, %3
  %8 = phi i64 [ %15, %7 ], [ 0, %3 ]
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !28
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds nuw [1024 x i32], ptr %0, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !12
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4, !tbaa !12
  %15 = add i64 %8, 43
  %16 = icmp ult i64 %15, %5
  br i1 %16, label %7, label %17, !llvm.loop !29

17:                                               ; preds = %7, %3
  %18 = udiv i64 %5, 43
  store i64 %18, ptr %4, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ZSTD_recordFingerprint_11(ptr noundef captures(none) initializes((0, 2048)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %0, i8 0, i64 2048, i1 false)
  %4 = add i64 %2, -1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %6, %3
  %7 = phi i64 [ %17, %6 ], [ 0, %3 ]
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %9 = load i16, ptr %8, align 1, !tbaa !30
  %10 = zext i16 %9 to i64
  %11 = mul nuw nsw i64 %10, 2654435769
  %12 = lshr i64 %11, 23
  %13 = and i64 %12, 511
  %14 = getelementptr inbounds nuw [1024 x i32], ptr %0, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !12
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4, !tbaa !12
  %17 = add i64 %7, 11
  %18 = icmp ult i64 %17, %4
  br i1 %18, label %6, label %19, !llvm.loop !29

19:                                               ; preds = %6, %3
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %21 = udiv i64 %4, 11
  store i64 %21, ptr %20, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ZSTD_recordFingerprint_5(ptr noundef captures(none) initializes((0, 4104)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #5 {
  %4 = add i64 %2, -1
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %0, i8 0, i64 4104, i1 false)
  br i1 %5, label %19, label %6

6:                                                ; preds = %6, %3
  %7 = phi i64 [ %17, %6 ], [ 0, %3 ]
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %9 = load i16, ptr %8, align 1, !tbaa !30
  %10 = zext i16 %9 to i64
  %11 = mul nuw nsw i64 %10, 2654435769
  %12 = lshr i64 %11, 22
  %13 = and i64 %12, 1023
  %14 = getelementptr inbounds nuw [1024 x i32], ptr %0, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !12
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4, !tbaa !12
  %17 = add i64 %7, 5
  %18 = icmp ult i64 %17, %4
  br i1 %18, label %6, label %19, !llvm.loop !29

19:                                               ; preds = %6, %3
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %21 = udiv i64 %4, 5
  store i64 %21, ptr %20, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ZSTD_recordFingerprint_1(ptr noundef captures(none) initializes((0, 4104)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #5 {
  %4 = add i64 %2, -1
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %0, i8 0, i64 4104, i1 false)
  br i1 %5, label %49, label %6

6:                                                ; preds = %3
  %7 = and i64 %4, 1
  %8 = icmp eq i64 %2, 2
  br i1 %8, label %36, label %9

9:                                                ; preds = %6
  %10 = and i64 %4, -2
  %11 = getelementptr i8, ptr %1, i64 1
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i64 [ 0, %9 ], [ %33, %12 ]
  %14 = phi i64 [ 0, %9 ], [ %34, %12 ]
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 %13
  %16 = load i16, ptr %15, align 1, !tbaa !30
  %17 = zext i16 %16 to i64
  %18 = mul nuw nsw i64 %17, 2654435769
  %19 = lshr i64 %18, 22
  %20 = and i64 %19, 1023
  %21 = getelementptr inbounds nuw [1024 x i32], ptr %0, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !12
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4, !tbaa !12
  %24 = getelementptr i8, ptr %11, i64 %13
  %25 = load i16, ptr %24, align 1, !tbaa !30
  %26 = zext i16 %25 to i64
  %27 = mul nuw nsw i64 %26, 2654435769
  %28 = lshr i64 %27, 22
  %29 = and i64 %28, 1023
  %30 = getelementptr inbounds nuw [1024 x i32], ptr %0, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !12
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4, !tbaa !12
  %33 = add nuw i64 %13, 2
  %34 = add i64 %14, 2
  %35 = icmp eq i64 %34, %10
  br i1 %35, label %36, label %12, !llvm.loop !29

36:                                               ; preds = %12, %6
  %37 = phi i64 [ 0, %6 ], [ %33, %12 ]
  %38 = icmp eq i64 %7, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 %37
  %41 = load i16, ptr %40, align 1, !tbaa !30
  %42 = zext i16 %41 to i64
  %43 = mul nuw nsw i64 %42, 2654435769
  %44 = lshr i64 %43, 22
  %45 = and i64 %44, 1023
  %46 = getelementptr inbounds nuw [1024 x i32], ptr %0, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !12
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4, !tbaa !12
  br label %49

49:                                               ; preds = %39, %36, %3
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 4096
  store i64 %4, ptr %50, align 8, !tbaa !19
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !10, i64 8200}
!6 = !{!"", !7, i64 0, !7, i64 4104}
!7 = !{!"", !8, i64 0, !10, i64 4096}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !10, i64 4096}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = distinct !{!14, !15, !16, !17, !18}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.peeled.count", i32 1}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!7, !10, i64 4096}
!20 = !{}
!21 = !{!"branch_weights", i32 1, i32 1048575}
!22 = !{!"branch_weights", i32 1, i32 1048574}
!23 = distinct !{!23, !15, !16}
!24 = !{!25, !25, i64 0}
!25 = !{!"any pointer", !8, i64 0}
!26 = distinct !{!26, !15, !17, !18}
!27 = distinct !{!27, !15}
!28 = !{!8, !8, i64 0}
!29 = distinct !{!29, !15}
!30 = !{!31, !31, i64 0}
!31 = !{!"short", !8, i64 0}
