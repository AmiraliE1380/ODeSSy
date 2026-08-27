; ModuleID = '<stdin>'
source_filename = "/mydata/zstd/lib/compress/zstd_preSplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_splitBlock_byChunks.records_fs = internal unnamed_addr constant [4 x ptr] [ptr @ZSTD_recordFingerprint_43, ptr @ZSTD_recordFingerprint_11, ptr @ZSTD_recordFingerprint_5, ptr @ZSTD_recordFingerprint_1], align 16
@ZSTD_splitBlock_byChunks.hashParams = internal unnamed_addr constant [4 x i32] [i32 8, i32 9, i32 10, i32 10], align 16

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_splitBlock(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %209

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
  %13 = load i32, ptr %3, align 8, !tbaa !12
  %14 = zext i32 %13 to i64
  %15 = load i32, ptr %8, align 8, !tbaa !12
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
  %28 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %27
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %30 = load <2 x i32>, ptr %28, align 4, !tbaa !12
  %31 = load <2 x i32>, ptr %29, align 4, !tbaa !12
  %32 = zext <2 x i32> %30 to <2 x i64>
  %33 = zext <2 x i32> %31 to <2 x i64>
  %34 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %27
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
  %52 = add nuw nsw i64 %24, 4
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
  %80 = add i64 %68, %79
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
  %92 = add i64 %80, %91
  %93 = icmp ult i64 %92, 229376
  br i1 %93, label %.loopexit29, label %94

94:                                               ; preds = %54
  %95 = getelementptr inbounds nuw i8, ptr %3, i64 2048
  %96 = lshr i64 %1, 1
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 %96
  %98 = getelementptr inbounds i8, ptr %97, i64 -256
  tail call void @HIST_add(ptr noundef nonnull %95, ptr noundef nonnull %98, i64 noundef 512) #6
  %99 = getelementptr inbounds nuw i8, ptr %3, i64 6144
  store i64 512, ptr %99, align 8, !tbaa !19
  %100 = load i32, ptr %95, align 8, !tbaa !12
  %101 = zext i32 %100 to i64
  %102 = load i64, ptr %12, align 8, !tbaa !19
  %103 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %101, i64 %102), !nosanitize !20
  %104 = extractvalue { i64, i1 } %103, 1, !nosanitize !20
  br i1 %104, label %.loopexit20, label %105, !prof !21, !nosanitize !20

105:                                              ; preds = %94
  %106 = load i32, ptr %3, align 4, !tbaa !12
  %107 = zext i32 %106 to i64
  %108 = shl nuw nsw i64 %107, 9
  %109 = extractvalue { i64, i1 } %103, 0, !nosanitize !20
  %110 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %108, i64 %109), !nosanitize !20
  %111 = extractvalue { i64, i1 } %110, 1, !nosanitize !20
  br i1 %111, label %.loopexit21, label %112, !prof !21, !nosanitize !20

112:                                              ; preds = %105
  %113 = extractvalue { i64, i1 } %110, 0, !nosanitize !20
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %.preheader73.preheader

115:                                              ; preds = %112
  %116 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %113), !nosanitize !20
  %117 = extractvalue { i64, i1 } %116, 0, !nosanitize !20
  %118 = extractvalue { i64, i1 } %116, 1, !nosanitize !20
  br i1 %118, label %.loopexit22, label %.preheader73.preheader, !prof !21, !nosanitize !20

.preheader73.preheader:                           ; preds = %115, %112
  %.ph67 = phi i64 [ %113, %112 ], [ %117, %115 ]
  br label %.preheader73

.preheader73:                                     ; preds = %.preheader73.preheader, %141
  %119 = phi i64 [ %144, %141 ], [ 1, %.preheader73.preheader ]
  %120 = phi i64 [ %143, %141 ], [ %.ph67, %.preheader73.preheader ]
  %121 = getelementptr inbounds nuw [4 x i8], ptr %95, i64 %119
  %122 = load i32, ptr %121, align 4, !tbaa !12
  %123 = zext i32 %122 to i64
  %124 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %123, i64 %102), !nosanitize !20
  %125 = extractvalue { i64, i1 } %124, 1, !nosanitize !20
  br i1 %125, label %.loopexit20, label %126, !prof !22, !nosanitize !20

.loopexit20:                                      ; preds = %.preheader73, %94
  tail call void @llvm.ubsantrap(i8 12) #7, !nosanitize !20
  unreachable, !nosanitize !20

126:                                              ; preds = %.preheader73
  %127 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %119
  %128 = load i32, ptr %127, align 4, !tbaa !12
  %129 = zext i32 %128 to i64
  %130 = shl nuw nsw i64 %129, 9
  %131 = extractvalue { i64, i1 } %124, 0, !nosanitize !20
  %132 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %130, i64 %131), !nosanitize !20
  %133 = extractvalue { i64, i1 } %132, 1, !nosanitize !20
  br i1 %133, label %.loopexit21, label %134, !prof !22, !nosanitize !20

.loopexit21:                                      ; preds = %126, %105
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

134:                                              ; preds = %126
  %135 = extractvalue { i64, i1 } %132, 0, !nosanitize !20
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %135), !nosanitize !20
  %139 = extractvalue { i64, i1 } %138, 0, !nosanitize !20
  %140 = extractvalue { i64, i1 } %138, 1, !nosanitize !20
  br i1 %140, label %.loopexit22, label %141, !prof !22, !nosanitize !20

.loopexit22:                                      ; preds = %137, %115
  tail call void @llvm.ubsantrap(i8 13) #7, !nosanitize !20
  unreachable, !nosanitize !20

141:                                              ; preds = %137, %134
  %142 = phi i64 [ %139, %137 ], [ %135, %134 ]
  %143 = add i64 %142, %120
  %144 = add nuw nsw i64 %119, 1
  %145 = icmp eq i64 %144, 256
  br i1 %145, label %146, label %.preheader73, !llvm.loop !23

146:                                              ; preds = %141
  %147 = load i64, ptr %11, align 8, !tbaa !19
  %148 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %101, i64 %147), !nosanitize !20
  %149 = extractvalue { i64, i1 } %148, 1, !nosanitize !20
  br i1 %149, label %.loopexit, label %150, !prof !21, !nosanitize !20

150:                                              ; preds = %146
  %151 = load i32, ptr %8, align 4, !tbaa !12
  %152 = zext i32 %151 to i64
  %153 = shl nuw nsw i64 %152, 9
  %154 = extractvalue { i64, i1 } %148, 0, !nosanitize !20
  %155 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %153, i64 %154), !nosanitize !20
  %156 = extractvalue { i64, i1 } %155, 1, !nosanitize !20
  br i1 %156, label %.loopexit18, label %157, !prof !21, !nosanitize !20

157:                                              ; preds = %150
  %158 = extractvalue { i64, i1 } %155, 0, !nosanitize !20
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %.preheader72.preheader

160:                                              ; preds = %157
  %161 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %158), !nosanitize !20
  %162 = extractvalue { i64, i1 } %161, 0, !nosanitize !20
  %163 = extractvalue { i64, i1 } %161, 1, !nosanitize !20
  br i1 %163, label %.loopexit19, label %.preheader72.preheader, !prof !21, !nosanitize !20

.preheader72.preheader:                           ; preds = %160, %157
  %.ph = phi i64 [ %158, %157 ], [ %162, %160 ]
  br label %.preheader72

.preheader72:                                     ; preds = %.preheader72.preheader, %186
  %164 = phi i64 [ %189, %186 ], [ 1, %.preheader72.preheader ]
  %165 = phi i64 [ %188, %186 ], [ %.ph, %.preheader72.preheader ]
  %166 = getelementptr inbounds nuw [4 x i8], ptr %95, i64 %164
  %167 = load i32, ptr %166, align 4, !tbaa !12
  %168 = zext i32 %167 to i64
  %169 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %168, i64 %147), !nosanitize !20
  %170 = extractvalue { i64, i1 } %169, 1, !nosanitize !20
  br i1 %170, label %.loopexit, label %171, !prof !22, !nosanitize !20

.loopexit:                                        ; preds = %.preheader72, %146
  tail call void @llvm.ubsantrap(i8 12) #7, !nosanitize !20
  unreachable, !nosanitize !20

171:                                              ; preds = %.preheader72
  %172 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %164
  %173 = load i32, ptr %172, align 4, !tbaa !12
  %174 = zext i32 %173 to i64
  %175 = shl nuw nsw i64 %174, 9
  %176 = extractvalue { i64, i1 } %169, 0, !nosanitize !20
  %177 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %175, i64 %176), !nosanitize !20
  %178 = extractvalue { i64, i1 } %177, 1, !nosanitize !20
  br i1 %178, label %.loopexit18, label %179, !prof !22, !nosanitize !20

.loopexit18:                                      ; preds = %171, %150
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

179:                                              ; preds = %171
  %180 = extractvalue { i64, i1 } %177, 0, !nosanitize !20
  %181 = icmp slt i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %180), !nosanitize !20
  %184 = extractvalue { i64, i1 } %183, 0, !nosanitize !20
  %185 = extractvalue { i64, i1 } %183, 1, !nosanitize !20
  br i1 %185, label %.loopexit19, label %186, !prof !22, !nosanitize !20

.loopexit19:                                      ; preds = %182, %160
  tail call void @llvm.ubsantrap(i8 13) #7, !nosanitize !20
  unreachable, !nosanitize !20

186:                                              ; preds = %182, %179
  %187 = phi i64 [ %184, %182 ], [ %180, %179 ]
  %188 = add i64 %187, %165
  %189 = add nuw nsw i64 %164, 1
  %190 = icmp eq i64 %189, 256
  br i1 %190, label %191, label %.preheader72, !llvm.loop !23

191:                                              ; preds = %186
  %192 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %143, i64 %188), !nosanitize !20
  %193 = extractvalue { i64, i1 } %192, 1, !nosanitize !20
  br i1 %193, label %194, label %195, !prof !21, !nosanitize !20

194:                                              ; preds = %191
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

195:                                              ; preds = %191
  %196 = extractvalue { i64, i1 } %192, 0, !nosanitize !20
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %196), !nosanitize !20
  %200 = extractvalue { i64, i1 } %199, 0, !nosanitize !20
  %201 = extractvalue { i64, i1 } %199, 1, !nosanitize !20
  br i1 %201, label %202, label %203, !prof !21, !nosanitize !20

202:                                              ; preds = %198
  tail call void @llvm.ubsantrap(i8 13) #7, !nosanitize !20
  unreachable, !nosanitize !20

203:                                              ; preds = %198, %195
  %204 = phi i64 [ %200, %198 ], [ %196, %195 ]
  %205 = icmp ult i64 %204, 87381
  %206 = icmp ugt i64 %143, %188
  %207 = select i1 %206, i64 32768, i64 98304
  %208 = select i1 %205, i64 65536, i64 %207
  br label %.loopexit29

209:                                              ; preds = %5
  %210 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 -1)
  %211 = extractvalue { i32, i1 } %210, 1, !nosanitize !20
  br i1 %211, label %212, label %213, !prof !21, !nosanitize !20

212:                                              ; preds = %209
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

213:                                              ; preds = %209
  %214 = extractvalue { i32, i1 } %210, 0, !nosanitize !20
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [8 x i8], ptr @ZSTD_splitBlock_byChunks.records_fs, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8208) %3, i8 0, i64 8208, i1 false)
  tail call void %217(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 8192) #6
  %218 = add i64 %1, -8192
  %219 = icmp ult i64 %218, 8192
  br i1 %219, label %.loopexit29, label %220

220:                                              ; preds = %213
  %221 = getelementptr inbounds nuw i8, ptr %3, i64 4104
  %222 = getelementptr inbounds [4 x i8], ptr @ZSTD_splitBlock_byChunks.hashParams, i64 %215
  %223 = getelementptr inbounds nuw i8, ptr %3, i64 4096
  %224 = getelementptr inbounds nuw i8, ptr %3, i64 8200
  br label %225

225:                                              ; preds = %320, %220
  %226 = phi i64 [ 8192, %220 ], [ %325, %320 ]
  %227 = phi i32 [ 3, %220 ], [ %324, %320 ]
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 %226
  tail call void %217(ptr noundef nonnull %221, ptr noundef %228, i64 noundef 8192) #6
  %229 = load i32, ptr %222, align 4, !tbaa !12
  %230 = load i64, ptr %223, align 8, !tbaa !19
  %231 = load i64, ptr %224, align 8, !tbaa !19
  %232 = zext nneg i32 %229 to i64
  %233 = load i32, ptr %3, align 8, !tbaa !12
  %234 = zext i32 %233 to i64
  %235 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %234, i64 %231), !nosanitize !20
  %236 = extractvalue { i64, i1 } %235, 0, !nosanitize !20
  %237 = extractvalue { i64, i1 } %235, 1, !nosanitize !20
  br i1 %237, label %.loopexit23, label %238, !prof !21, !nosanitize !20

238:                                              ; preds = %225
  %239 = load i32, ptr %221, align 4, !tbaa !12
  %240 = zext i32 %239 to i64
  %241 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %240, i64 %230), !nosanitize !20
  %242 = extractvalue { i64, i1 } %241, 1, !nosanitize !20
  br i1 %242, label %.loopexit23, label %243, !prof !21, !nosanitize !20

243:                                              ; preds = %238
  %244 = extractvalue { i64, i1 } %241, 0, !nosanitize !20
  %245 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %236, i64 %244), !nosanitize !20
  %246 = extractvalue { i64, i1 } %245, 1, !nosanitize !20
  br i1 %246, label %.loopexit24, label %247, !prof !21, !nosanitize !20

247:                                              ; preds = %243
  %248 = extractvalue { i64, i1 } %245, 0, !nosanitize !20
  %249 = icmp slt i64 %248, 0
  br i1 %249, label %250, label %.preheader78.preheader

250:                                              ; preds = %247
  %251 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %248), !nosanitize !20
  %252 = extractvalue { i64, i1 } %251, 0, !nosanitize !20
  %253 = extractvalue { i64, i1 } %251, 1, !nosanitize !20
  br i1 %253, label %.loopexit25, label %.preheader78.preheader, !prof !21, !nosanitize !20

.preheader78.preheader:                           ; preds = %250, %247
  %.ph71 = phi i64 [ %248, %247 ], [ %252, %250 ]
  br label %.preheader78

.preheader78:                                     ; preds = %.preheader78.preheader, %279
  %254 = phi i64 [ %282, %279 ], [ 1, %.preheader78.preheader ]
  %255 = phi i64 [ %281, %279 ], [ %.ph71, %.preheader78.preheader ]
  %256 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %254
  %257 = load i32, ptr %256, align 4, !tbaa !12
  %258 = zext i32 %257 to i64
  %259 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %258, i64 %231), !nosanitize !20
  %260 = extractvalue { i64, i1 } %259, 0, !nosanitize !20
  %261 = extractvalue { i64, i1 } %259, 1, !nosanitize !20
  br i1 %261, label %.loopexit23, label %262, !prof !22, !nosanitize !20

.loopexit23:                                      ; preds = %238, %225, %262, %.preheader78
  tail call void @llvm.ubsantrap(i8 12) #7, !nosanitize !20
  unreachable, !nosanitize !20

262:                                              ; preds = %.preheader78
  %263 = getelementptr inbounds nuw [4 x i8], ptr %221, i64 %254
  %264 = load i32, ptr %263, align 4, !tbaa !12
  %265 = zext i32 %264 to i64
  %266 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %265, i64 %230), !nosanitize !20
  %267 = extractvalue { i64, i1 } %266, 1, !nosanitize !20
  br i1 %267, label %.loopexit23, label %268, !prof !22, !nosanitize !20

268:                                              ; preds = %262
  %269 = extractvalue { i64, i1 } %266, 0, !nosanitize !20
  %270 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %260, i64 %269), !nosanitize !20
  %271 = extractvalue { i64, i1 } %270, 1, !nosanitize !20
  br i1 %271, label %.loopexit24, label %272, !prof !22, !nosanitize !20

.loopexit24:                                      ; preds = %243, %268
  tail call void @llvm.ubsantrap(i8 21) #7, !nosanitize !20
  unreachable, !nosanitize !20

272:                                              ; preds = %268
  %273 = extractvalue { i64, i1 } %270, 0, !nosanitize !20
  %274 = icmp slt i64 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %272
  %276 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %273), !nosanitize !20
  %277 = extractvalue { i64, i1 } %276, 0, !nosanitize !20
  %278 = extractvalue { i64, i1 } %276, 1, !nosanitize !20
  br i1 %278, label %.loopexit25, label %279, !prof !22, !nosanitize !20

.loopexit25:                                      ; preds = %250, %275
  tail call void @llvm.ubsantrap(i8 13) #7, !nosanitize !20
  unreachable, !nosanitize !20

279:                                              ; preds = %275, %272
  %280 = phi i64 [ %277, %275 ], [ %273, %272 ]
  %281 = add i64 %280, %255
  %282 = add i64 %254, 1
  %283 = lshr i64 %282, %232
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %.preheader78, label %285, !llvm.loop !23

285:                                              ; preds = %279
  %286 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %227, i32 14), !nosanitize !20
  %287 = extractvalue { i32, i1 } %286, 1, !nosanitize !20
  br i1 %287, label %288, label %289, !prof !21, !nosanitize !20

288:                                              ; preds = %285
  tail call void @llvm.ubsantrap(i8 0) #7, !nosanitize !20
  unreachable, !nosanitize !20

289:                                              ; preds = %285
  %290 = extractvalue { i32, i1 } %286, 0, !nosanitize !20
  %291 = sext i32 %290 to i64
  %292 = mul i64 %230, %291
  %293 = mul i64 %292, %231
  %294 = lshr i64 %293, 4
  %295 = icmp ult i64 %281, %294
  br i1 %295, label %.preheader, label %.loopexit29

.preheader:                                       ; preds = %289, %.preheader
  %296 = phi i64 [ %318, %.preheader ], [ 0, %289 ]
  %297 = getelementptr inbounds nuw [4 x i8], ptr %221, i64 %296
  %298 = getelementptr inbounds nuw i8, ptr %297, i64 16
  %299 = load <4 x i32>, ptr %297, align 4, !tbaa !12
  %300 = load <4 x i32>, ptr %298, align 4, !tbaa !12
  %301 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %296
  %302 = getelementptr inbounds nuw i8, ptr %301, i64 16
  %303 = load <4 x i32>, ptr %301, align 4, !tbaa !12
  %304 = load <4 x i32>, ptr %302, align 4, !tbaa !12
  %305 = add <4 x i32> %303, %299
  %306 = add <4 x i32> %304, %300
  store <4 x i32> %305, ptr %301, align 4, !tbaa !12
  store <4 x i32> %306, ptr %302, align 4, !tbaa !12
  %307 = or disjoint i64 %296, 8
  %308 = getelementptr inbounds nuw [4 x i8], ptr %221, i64 %307
  %309 = getelementptr inbounds nuw i8, ptr %308, i64 16
  %310 = load <4 x i32>, ptr %308, align 4, !tbaa !12
  %311 = load <4 x i32>, ptr %309, align 4, !tbaa !12
  %312 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %307
  %313 = getelementptr inbounds nuw i8, ptr %312, i64 16
  %314 = load <4 x i32>, ptr %312, align 4, !tbaa !12
  %315 = load <4 x i32>, ptr %313, align 4, !tbaa !12
  %316 = add <4 x i32> %314, %310
  %317 = add <4 x i32> %315, %311
  store <4 x i32> %316, ptr %312, align 4, !tbaa !12
  store <4 x i32> %317, ptr %313, align 4, !tbaa !12
  %318 = add nuw nsw i64 %296, 16
  %319 = icmp eq i64 %318, 1024
  br i1 %319, label %320, label %.preheader, !llvm.loop !26

320:                                              ; preds = %.preheader
  %321 = add i64 %231, %230
  store i64 %321, ptr %223, align 8, !tbaa !19
  %322 = icmp sgt i32 %227, 0
  %323 = sext i1 %322 to i32
  %324 = add nsw i32 %227, %323
  %325 = add i64 %226, 8192
  %326 = icmp ugt i64 %325, %218
  br i1 %326, label %.loopexit29, label %225, !llvm.loop !27

.loopexit29:                                      ; preds = %320, %289, %213, %203, %54
  %327 = phi i64 [ %208, %203 ], [ %1, %54 ], [ %1, %213 ], [ %226, %289 ], [ %1, %320 ]
  ret i64 %327
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #1

declare void @HIST_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ZSTD_recordFingerprint_43(ptr noundef captures(none) initializes((0, 1024), (4096, 4104)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 4096
  store i64 0, ptr %4, align 8, !tbaa !19
  %5 = add i64 %2, -1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %3, %.preheader
  %7 = phi i64 [ %14, %.preheader ], [ 0, %3 ]
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !28
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !12
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !12
  %14 = add i64 %7, 43
  %15 = icmp ult i64 %14, %5
  br i1 %15, label %.preheader, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %.preheader, %3
  %16 = udiv i64 %5, 43
  store i64 %16, ptr %4, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ZSTD_recordFingerprint_11(ptr noundef captures(none) initializes((0, 2048)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %0, i8 0, i64 2048, i1 false)
  %4 = add i64 %2, -1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %3, %.preheader
  %6 = phi i64 [ %16, %.preheader ], [ 0, %3 ]
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 %6
  %8 = load i16, ptr %7, align 1, !tbaa !30
  %9 = zext i16 %8 to i64
  %10 = mul nuw nsw i64 %9, 2654435769
  %11 = lshr i64 %10, 23
  %12 = and i64 %11, 511
  %13 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !12
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !12
  %16 = add i64 %6, 11
  %17 = icmp ult i64 %16, %4
  br i1 %17, label %.preheader, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %.preheader, %3
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %19 = udiv i64 %4, 11
  store i64 %19, ptr %18, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ZSTD_recordFingerprint_5(ptr noundef captures(none) initializes((0, 4104)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #5 {
  %4 = add i64 %2, -1
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %0, i8 0, i64 4104, i1 false)
  br i1 %5, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %3, %.preheader
  %6 = phi i64 [ %16, %.preheader ], [ 0, %3 ]
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 %6
  %8 = load i16, ptr %7, align 1, !tbaa !30
  %9 = zext i16 %8 to i64
  %10 = mul nuw nsw i64 %9, 2654435769
  %11 = lshr i64 %10, 22
  %12 = and i64 %11, 1023
  %13 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !12
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !12
  %16 = add i64 %6, 5
  %17 = icmp ult i64 %16, %4
  br i1 %17, label %.preheader, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %.preheader, %3
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %19 = udiv i64 %4, 5
  store i64 %19, ptr %18, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ZSTD_recordFingerprint_1(ptr noundef captures(none) initializes((0, 4104)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #5 {
  %4 = add i64 %2, -1
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %0, i8 0, i64 4104, i1 false)
  br i1 %5, label %46, label %6

6:                                                ; preds = %3
  %7 = and i64 %4, 1
  %8 = icmp eq i64 %2, 2
  br i1 %8, label %.thread, label %9

9:                                                ; preds = %6
  %10 = and i64 %4, -2
  %11 = getelementptr i8, ptr %1, i64 1
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i64 [ 0, %9 ], [ %32, %12 ]
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 %13
  %15 = load i16, ptr %14, align 1, !tbaa !30
  %16 = zext i16 %15 to i64
  %17 = mul nuw nsw i64 %16, 2654435769
  %18 = lshr i64 %17, 22
  %19 = and i64 %18, 1023
  %20 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !12
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !12
  %23 = getelementptr i8, ptr %11, i64 %13
  %24 = load i16, ptr %23, align 1, !tbaa !30
  %25 = zext i16 %24 to i64
  %26 = mul nuw nsw i64 %25, 2654435769
  %27 = lshr i64 %26, 22
  %28 = and i64 %27, 1023
  %29 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !12
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4, !tbaa !12
  %32 = add i64 %13, 2
  %33 = icmp eq i64 %32, %10
  br i1 %33, label %34, label %12, !llvm.loop !29

34:                                               ; preds = %12
  %35 = icmp eq i64 %7, 0
  br i1 %35, label %46, label %.thread

.thread:                                          ; preds = %34, %6
  %36 = phi i64 [ %10, %34 ], [ 0, %6 ]
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 %36
  %38 = load i16, ptr %37, align 1, !tbaa !30
  %39 = zext i16 %38 to i64
  %40 = mul nuw nsw i64 %39, 2654435769
  %41 = lshr i64 %40, 22
  %42 = and i64 %41, 1023
  %43 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !12
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4, !tbaa !12
  br label %46

46:                                               ; preds = %.thread, %34, %3
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 4096
  store i64 %4, ptr %47, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
