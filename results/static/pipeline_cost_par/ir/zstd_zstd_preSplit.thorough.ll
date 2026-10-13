; ModuleID = 'results/static/pipeline_cost_par/ir/zstd_zstd_preSplit.thorough.mid.ll'
source_filename = "/mydata/zstd/lib/compress/zstd_preSplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_splitBlock_byChunks.records_fs = internal unnamed_addr constant [4 x ptr] [ptr @ZSTD_recordFingerprint_43, ptr @ZSTD_recordFingerprint_11, ptr @ZSTD_recordFingerprint_5, ptr @ZSTD_recordFingerprint_1], align 16
@ZSTD_splitBlock_byChunks.hashParams = internal unnamed_addr constant [4 x i32] [i32 8, i32 9, i32 10, i32 10], align 16

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_splitBlock(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %285

7:                                                ; preds = %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8208) %3, i8 0, i64 8208, i1 false)
  tail call void @HIST_add(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 512) #7
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 4104
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %10 = getelementptr inbounds i8, ptr %9, i64 -512
  tail call void @HIST_add(ptr noundef nonnull %8, ptr noundef nonnull %10, i64 noundef 512) #7
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
  br i1 %93, label %.loopexit42, label %94

94:                                               ; preds = %54
  %95 = getelementptr inbounds nuw i8, ptr %3, i64 2048
  %96 = lshr i64 %1, 1
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 %96
  %98 = getelementptr inbounds i8, ptr %97, i64 -256
  tail call void @HIST_add(ptr noundef nonnull %95, ptr noundef nonnull %98, i64 noundef 512) #7
  %99 = getelementptr inbounds nuw i8, ptr %3, i64 6144
  store i64 512, ptr %99, align 8, !tbaa !19
  %100 = load i32, ptr %95, align 8, !tbaa !12
  %101 = zext i32 %100 to i64
  %102 = load i64, ptr %12, align 8, !tbaa !19
  %.fr = freeze i64 %102
  %103 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %101, i64 %.fr), !nosanitize !20
  %104 = extractvalue { i64, i1 } %103, 1, !nosanitize !20
  br i1 %104, label %.loopexit18, label %105, !prof !21, !nosanitize !20

105:                                              ; preds = %94
  %106 = load i32, ptr %3, align 4, !tbaa !12
  %107 = zext i32 %106 to i64
  %108 = shl nuw nsw i64 %107, 9
  %109 = extractvalue { i64, i1 } %103, 0, !nosanitize !20
  %110 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %108, i64 %109), !nosanitize !20
  %111 = extractvalue { i64, i1 } %110, 1, !nosanitize !20
  br i1 %111, label %.loopexit19, label %112, !prof !21, !nosanitize !20

112:                                              ; preds = %105
  %113 = extractvalue { i64, i1 } %110, 0, !nosanitize !20
  %spec.select = tail call i64 @llvm.abs.i64(i64 %113, i1 false)
  %mv.h24 = icmp ult i64 %.fr, 2147483649
  br i1 %mv.h24, label %vector.ph, label %.mv.ph26

vector.ph:                                        ; preds = %112
  %114 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %spec.select, i64 0
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.fr, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ %114, %vector.ph ], [ %131, %vector.body ]
  %vec.phi107 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %132, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %115 = getelementptr inbounds nuw [4 x i8], ptr %95, i64 %offset.idx
  %116 = getelementptr inbounds nuw i8, ptr %115, i64 8
  %wide.load = load <2 x i32>, ptr %115, align 4, !tbaa !12
  %wide.load108 = load <2 x i32>, ptr %116, align 4, !tbaa !12
  %117 = zext <2 x i32> %wide.load to <2 x i64>
  %118 = zext <2 x i32> %wide.load108 to <2 x i64>
  %119 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %offset.idx
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 8
  %wide.load109 = load <2 x i32>, ptr %119, align 4, !tbaa !12
  %wide.load110 = load <2 x i32>, ptr %120, align 4, !tbaa !12
  %121 = zext <2 x i32> %wide.load109 to <2 x i64>
  %122 = zext <2 x i32> %wide.load110 to <2 x i64>
  %123 = shl nuw nsw <2 x i64> %121, splat (i64 9)
  %124 = shl nuw nsw <2 x i64> %122, splat (i64 9)
  %125 = mul nuw nsw <2 x i64> %broadcast.splat, %117
  %126 = mul nuw nsw <2 x i64> %broadcast.splat, %118
  %127 = sub nsw <2 x i64> %123, %125
  %128 = sub nsw <2 x i64> %124, %126
  %129 = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %127, i1 true)
  %130 = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %128, i1 true)
  %131 = add <2 x i64> %129, %vec.phi
  %132 = add <2 x i64> %130, %vec.phi107
  %index.next = add nuw i64 %index, 4
  %133 = icmp eq i64 %index.next, 252
  br i1 %133, label %.mv.ph26.mv.fast, label %vector.body, !llvm.loop !22

.mv.ph26.mv.fast:                                 ; preds = %vector.body
  %bin.rdx = add <2 x i64> %132, %131
  %134 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %135 = getelementptr inbounds nuw i8, ptr %3, i64 3060
  %136 = load i32, ptr %135, align 4, !tbaa !12
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds nuw i8, ptr %3, i64 1012
  %139 = load i32, ptr %138, align 4, !tbaa !12
  %140 = zext i32 %139 to i64
  %141 = shl nuw nsw i64 %140, 9
  %142 = mul nuw nsw i64 %.fr, %137
  %143 = sub nsw i64 %141, %142
  %spec.select27 = tail call i64 @llvm.abs.i64(i64 %143, i1 true)
  %144 = add i64 %spec.select27, %134
  %145 = getelementptr inbounds nuw i8, ptr %3, i64 3064
  %146 = load i32, ptr %145, align 4, !tbaa !12
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds nuw i8, ptr %3, i64 1016
  %149 = load i32, ptr %148, align 4, !tbaa !12
  %150 = zext i32 %149 to i64
  %151 = shl nuw nsw i64 %150, 9
  %152 = mul nuw nsw i64 %.fr, %147
  %153 = sub nsw i64 %151, %152
  %spec.select27.1 = tail call i64 @llvm.abs.i64(i64 %153, i1 true)
  %154 = add i64 %spec.select27.1, %144
  %155 = getelementptr inbounds nuw i8, ptr %3, i64 3068
  %156 = load i32, ptr %155, align 4, !tbaa !12
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds nuw i8, ptr %3, i64 1020
  %159 = load i32, ptr %158, align 4, !tbaa !12
  %160 = zext i32 %159 to i64
  %161 = shl nuw nsw i64 %160, 9
  %162 = mul nuw nsw i64 %.fr, %157
  %163 = sub nsw i64 %161, %162
  %spec.select27.2 = tail call i64 @llvm.abs.i64(i64 %163, i1 true)
  %164 = add i64 %spec.select27.2, %154
  br label %.loopexit34

.mv.ph26:                                         ; preds = %112, %180
  %165 = phi i64 [ %183, %180 ], [ 1, %112 ]
  %166 = phi i64 [ %182, %180 ], [ %spec.select, %112 ]
  %167 = getelementptr inbounds nuw [4 x i8], ptr %95, i64 %165
  %168 = load i32, ptr %167, align 4, !tbaa !12
  %169 = zext i32 %168 to i64
  %170 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %169, i64 %.fr), !nosanitize !20
  %171 = extractvalue { i64, i1 } %170, 1, !nosanitize !20
  br i1 %171, label %.loopexit18, label %172, !prof !23, !nosanitize !20

.loopexit18:                                      ; preds = %.mv.ph26, %94
  tail call void @llvm.ubsantrap(i8 12) #8, !nosanitize !20
  unreachable, !nosanitize !20

172:                                              ; preds = %.mv.ph26
  %173 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %165
  %174 = load i32, ptr %173, align 4, !tbaa !12
  %175 = zext i32 %174 to i64
  %176 = shl nuw nsw i64 %175, 9
  %177 = extractvalue { i64, i1 } %170, 0, !nosanitize !20
  %178 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %176, i64 %177), !nosanitize !20
  %179 = extractvalue { i64, i1 } %178, 1, !nosanitize !20
  br i1 %179, label %.loopexit19, label %180, !prof !23, !nosanitize !20

.loopexit19:                                      ; preds = %172, %105
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !20
  unreachable, !nosanitize !20

180:                                              ; preds = %172
  %181 = extractvalue { i64, i1 } %178, 0, !nosanitize !20
  %spec.select28 = tail call i64 @llvm.abs.i64(i64 %181, i1 false)
  %182 = add i64 %spec.select28, %166
  %183 = add nuw nsw i64 %165, 1
  %184 = icmp eq i64 %183, 256
  br i1 %184, label %.loopexit34, label %.mv.ph26, !llvm.loop !24

.loopexit34:                                      ; preds = %180, %.mv.ph26.mv.fast
  %.lcssa21 = phi i64 [ %164, %.mv.ph26.mv.fast ], [ %182, %180 ]
  %185 = load i64, ptr %11, align 8, !tbaa !19
  %.fr26 = freeze i64 %185
  %186 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %101, i64 %.fr26), !nosanitize !20
  %187 = extractvalue { i64, i1 } %186, 1, !nosanitize !20
  br i1 %187, label %.loopexit9, label %188, !prof !21, !nosanitize !20

188:                                              ; preds = %.loopexit34
  %189 = load i32, ptr %8, align 4, !tbaa !12
  %190 = zext i32 %189 to i64
  %191 = shl nuw nsw i64 %190, 9
  %192 = extractvalue { i64, i1 } %186, 0, !nosanitize !20
  %193 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %191, i64 %192), !nosanitize !20
  %194 = extractvalue { i64, i1 } %193, 1, !nosanitize !20
  br i1 %194, label %.loopexit10, label %195, !prof !21, !nosanitize !20

195:                                              ; preds = %188
  %196 = extractvalue { i64, i1 } %193, 0, !nosanitize !20
  %spec.select29 = tail call i64 @llvm.abs.i64(i64 %196, i1 false)
  %mv.h15 = icmp ult i64 %.fr26, 2147483649
  br i1 %mv.h15, label %vector.ph112, label %.mv.ph17

vector.ph112:                                     ; preds = %195
  %197 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %spec.select29, i64 0
  %broadcast.splatinsert113 = insertelement <2 x i64> poison, i64 %.fr26, i64 0
  %broadcast.splat114 = shufflevector <2 x i64> %broadcast.splatinsert113, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph112
  %index116 = phi i64 [ 0, %vector.ph112 ], [ %index.next124, %vector.body115 ]
  %vec.phi117 = phi <2 x i64> [ %197, %vector.ph112 ], [ %214, %vector.body115 ]
  %vec.phi118 = phi <2 x i64> [ zeroinitializer, %vector.ph112 ], [ %215, %vector.body115 ]
  %offset.idx119 = or disjoint i64 %index116, 1
  %198 = getelementptr inbounds nuw [4 x i8], ptr %95, i64 %offset.idx119
  %199 = getelementptr inbounds nuw i8, ptr %198, i64 8
  %wide.load120 = load <2 x i32>, ptr %198, align 4, !tbaa !12
  %wide.load121 = load <2 x i32>, ptr %199, align 4, !tbaa !12
  %200 = zext <2 x i32> %wide.load120 to <2 x i64>
  %201 = zext <2 x i32> %wide.load121 to <2 x i64>
  %202 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %offset.idx119
  %203 = getelementptr inbounds nuw i8, ptr %202, i64 8
  %wide.load122 = load <2 x i32>, ptr %202, align 4, !tbaa !12
  %wide.load123 = load <2 x i32>, ptr %203, align 4, !tbaa !12
  %204 = zext <2 x i32> %wide.load122 to <2 x i64>
  %205 = zext <2 x i32> %wide.load123 to <2 x i64>
  %206 = shl nuw nsw <2 x i64> %204, splat (i64 9)
  %207 = shl nuw nsw <2 x i64> %205, splat (i64 9)
  %208 = mul nuw nsw <2 x i64> %broadcast.splat114, %200
  %209 = mul nuw nsw <2 x i64> %broadcast.splat114, %201
  %210 = sub nsw <2 x i64> %206, %208
  %211 = sub nsw <2 x i64> %207, %209
  %212 = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %210, i1 true)
  %213 = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %211, i1 true)
  %214 = add <2 x i64> %212, %vec.phi117
  %215 = add <2 x i64> %213, %vec.phi118
  %index.next124 = add nuw i64 %index116, 4
  %216 = icmp eq i64 %index.next124, 252
  br i1 %216, label %.mv.ph17.mv.fast, label %vector.body115, !llvm.loop !25

.mv.ph17.mv.fast:                                 ; preds = %vector.body115
  %bin.rdx126 = add <2 x i64> %215, %214
  %217 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx126)
  %218 = getelementptr inbounds nuw i8, ptr %3, i64 3060
  %219 = load i32, ptr %218, align 4, !tbaa !12
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds nuw i8, ptr %3, i64 5116
  %222 = load i32, ptr %221, align 4, !tbaa !12
  %223 = zext i32 %222 to i64
  %224 = shl nuw nsw i64 %223, 9
  %225 = mul nuw nsw i64 %.fr26, %220
  %226 = sub nsw i64 %224, %225
  %spec.select30 = tail call i64 @llvm.abs.i64(i64 %226, i1 true)
  %227 = add i64 %spec.select30, %217
  %228 = getelementptr inbounds nuw i8, ptr %3, i64 3064
  %229 = load i32, ptr %228, align 4, !tbaa !12
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds nuw i8, ptr %3, i64 5120
  %232 = load i32, ptr %231, align 4, !tbaa !12
  %233 = zext i32 %232 to i64
  %234 = shl nuw nsw i64 %233, 9
  %235 = mul nuw nsw i64 %.fr26, %230
  %236 = sub nsw i64 %234, %235
  %spec.select30.1 = tail call i64 @llvm.abs.i64(i64 %236, i1 true)
  %237 = add i64 %spec.select30.1, %227
  %238 = getelementptr inbounds nuw i8, ptr %3, i64 3068
  %239 = load i32, ptr %238, align 4, !tbaa !12
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds nuw i8, ptr %3, i64 5124
  %242 = load i32, ptr %241, align 4, !tbaa !12
  %243 = zext i32 %242 to i64
  %244 = shl nuw nsw i64 %243, 9
  %245 = mul nuw nsw i64 %.fr26, %240
  %246 = sub nsw i64 %244, %245
  %spec.select30.2 = tail call i64 @llvm.abs.i64(i64 %246, i1 true)
  %247 = add i64 %spec.select30.2, %237
  br label %.loopexit32

.mv.ph17:                                         ; preds = %195, %263
  %248 = phi i64 [ %266, %263 ], [ 1, %195 ]
  %249 = phi i64 [ %265, %263 ], [ %spec.select29, %195 ]
  %250 = getelementptr inbounds nuw [4 x i8], ptr %95, i64 %248
  %251 = load i32, ptr %250, align 4, !tbaa !12
  %252 = zext i32 %251 to i64
  %253 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %252, i64 %.fr26), !nosanitize !20
  %254 = extractvalue { i64, i1 } %253, 1, !nosanitize !20
  br i1 %254, label %.loopexit9, label %255, !prof !23, !nosanitize !20

.loopexit9:                                       ; preds = %.mv.ph17, %.loopexit34
  tail call void @llvm.ubsantrap(i8 12) #8, !nosanitize !20
  unreachable, !nosanitize !20

255:                                              ; preds = %.mv.ph17
  %256 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %248
  %257 = load i32, ptr %256, align 4, !tbaa !12
  %258 = zext i32 %257 to i64
  %259 = shl nuw nsw i64 %258, 9
  %260 = extractvalue { i64, i1 } %253, 0, !nosanitize !20
  %261 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %259, i64 %260), !nosanitize !20
  %262 = extractvalue { i64, i1 } %261, 1, !nosanitize !20
  br i1 %262, label %.loopexit10, label %263, !prof !23, !nosanitize !20

.loopexit10:                                      ; preds = %255, %188
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !20
  unreachable, !nosanitize !20

263:                                              ; preds = %255
  %264 = extractvalue { i64, i1 } %261, 0, !nosanitize !20
  %spec.select31 = tail call i64 @llvm.abs.i64(i64 %264, i1 false)
  %265 = add i64 %spec.select31, %249
  %266 = add nuw nsw i64 %248, 1
  %267 = icmp eq i64 %266, 256
  br i1 %267, label %.loopexit32, label %.mv.ph17, !llvm.loop !24

.loopexit32:                                      ; preds = %263, %.mv.ph17.mv.fast
  %.lcssa12 = phi i64 [ %247, %.mv.ph17.mv.fast ], [ %265, %263 ]
  %268 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.lcssa21, i64 %.lcssa12), !nosanitize !20
  %269 = extractvalue { i64, i1 } %268, 1, !nosanitize !20
  br i1 %269, label %270, label %271, !prof !21, !nosanitize !20

270:                                              ; preds = %.loopexit32
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !20
  unreachable, !nosanitize !20

271:                                              ; preds = %.loopexit32
  %272 = extractvalue { i64, i1 } %268, 0, !nosanitize !20
  %273 = icmp slt i64 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %271
  %275 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %272), !nosanitize !20
  %276 = extractvalue { i64, i1 } %275, 0, !nosanitize !20
  %277 = extractvalue { i64, i1 } %275, 1, !nosanitize !20
  br i1 %277, label %278, label %279, !prof !21, !nosanitize !20

278:                                              ; preds = %274
  tail call void @llvm.ubsantrap(i8 13) #8, !nosanitize !20
  unreachable, !nosanitize !20

279:                                              ; preds = %274, %271
  %280 = phi i64 [ %276, %274 ], [ %272, %271 ]
  %281 = icmp ult i64 %280, 87381
  %282 = icmp ugt i64 %.lcssa21, %.lcssa12
  %283 = select i1 %282, i64 32768, i64 98304
  %284 = select i1 %281, i64 65536, i64 %283
  br label %.loopexit42

285:                                              ; preds = %5
  %286 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 -1)
  %287 = extractvalue { i32, i1 } %286, 1, !nosanitize !20
  br i1 %287, label %288, label %289, !prof !21, !nosanitize !20

288:                                              ; preds = %285
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !20
  unreachable, !nosanitize !20

289:                                              ; preds = %285
  %290 = extractvalue { i32, i1 } %286, 0, !nosanitize !20
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [8 x i8], ptr @ZSTD_splitBlock_byChunks.records_fs, i64 %291
  %293 = load ptr, ptr %292, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8208) %3, i8 0, i64 8208, i1 false)
  tail call void %293(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 8192) #7
  %294 = add i64 %1, -8192
  %295 = icmp ult i64 %294, 8192
  br i1 %295, label %.loopexit42, label %296

296:                                              ; preds = %289
  %297 = getelementptr inbounds nuw i8, ptr %3, i64 4104
  %298 = getelementptr inbounds [4 x i8], ptr @ZSTD_splitBlock_byChunks.hashParams, i64 %291
  %299 = getelementptr inbounds nuw i8, ptr %3, i64 4096
  %300 = getelementptr inbounds nuw i8, ptr %3, i64 8200
  br label %301

301:                                              ; preds = %416, %296
  %302 = phi i64 [ 8192, %296 ], [ %421, %416 ]
  %303 = phi i32 [ 3, %296 ], [ %420, %416 ]
  %304 = getelementptr inbounds nuw i8, ptr %0, i64 %302
  tail call void %293(ptr noundef nonnull %297, ptr noundef %304, i64 noundef 8192) #7
  %305 = load i32, ptr %298, align 4, !tbaa !12
  %306 = load i64, ptr %299, align 8, !tbaa !19
  %307 = load i64, ptr %300, align 8, !tbaa !19
  %308 = zext nneg i32 %305 to i64
  %309 = load i32, ptr %3, align 8, !tbaa !12
  %310 = zext i32 %309 to i64
  %311 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %310, i64 %307), !nosanitize !20
  %312 = extractvalue { i64, i1 } %311, 0, !nosanitize !20
  %313 = extractvalue { i64, i1 } %311, 1, !nosanitize !20
  br i1 %313, label %.loopexit, label %314, !prof !21, !nosanitize !20

314:                                              ; preds = %301
  %315 = load i32, ptr %297, align 4, !tbaa !12
  %316 = zext i32 %315 to i64
  %317 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %316, i64 %306), !nosanitize !20
  %318 = extractvalue { i64, i1 } %317, 1, !nosanitize !20
  br i1 %318, label %.loopexit, label %319, !prof !21, !nosanitize !20

319:                                              ; preds = %314
  %320 = extractvalue { i64, i1 } %317, 0, !nosanitize !20
  %321 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %312, i64 %320), !nosanitize !20
  %322 = extractvalue { i64, i1 } %321, 1, !nosanitize !20
  br i1 %322, label %.loopexit1, label %323, !prof !21, !nosanitize !20

323:                                              ; preds = %319
  %324 = extractvalue { i64, i1 } %321, 0, !nosanitize !20
  %325 = icmp slt i64 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %323
  %327 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %324), !nosanitize !20
  %328 = extractvalue { i64, i1 } %327, 0, !nosanitize !20
  %329 = extractvalue { i64, i1 } %327, 1, !nosanitize !20
  br i1 %329, label %.loopexit2, label %330, !prof !21, !nosanitize !20

330:                                              ; preds = %326, %323
  %331 = phi i64 [ %324, %323 ], [ %328, %326 ]
  %mv.h4 = icmp ult i64 %306, 2147483649
  %332 = icmp ult i64 %307, 2147483649
  %mv.h8 = and i1 %mv.h4, %332
  %mv.h.fr = freeze i1 %mv.h8
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %330, %349
  %333 = phi i64 [ %352, %349 ], [ 1, %330 ]
  %334 = phi i64 [ %351, %349 ], [ %331, %330 ]
  %335 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %333
  %336 = load i32, ptr %335, align 4, !tbaa !12
  %337 = zext i32 %336 to i64
  %338 = mul i64 %307, %337
  %339 = getelementptr inbounds nuw [4 x i8], ptr %297, i64 %333
  %340 = load i32, ptr %339, align 4, !tbaa !12
  %341 = zext i32 %340 to i64
  %342 = mul i64 %306, %341
  %343 = sub i64 %338, %342
  %344 = icmp slt i64 %343, 0
  br i1 %344, label %345, label %349

345:                                              ; preds = %.mv.ph.mv.fast
  %346 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %343), !nosanitize !20
  %347 = extractvalue { i64, i1 } %346, 0, !nosanitize !20
  %348 = extractvalue { i64, i1 } %346, 1, !nosanitize !20
  br i1 %348, label %.loopexit2, label %349, !prof !23, !nosanitize !20

349:                                              ; preds = %345, %.mv.ph.mv.fast
  %350 = phi i64 [ %347, %345 ], [ %343, %.mv.ph.mv.fast ]
  %351 = add i64 %350, %334
  %352 = add i64 %333, 1
  %353 = lshr i64 %352, %308
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %.mv.ph.mv.fast, label %.loopexit36, !llvm.loop !24

.mv.ph:                                           ; preds = %330, %380
  %355 = phi i64 [ %383, %380 ], [ 1, %330 ]
  %356 = phi i64 [ %382, %380 ], [ %331, %330 ]
  %357 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %355
  %358 = load i32, ptr %357, align 4, !tbaa !12
  %359 = zext i32 %358 to i64
  %360 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %359, i64 %307), !nosanitize !20
  %361 = extractvalue { i64, i1 } %360, 0, !nosanitize !20
  %362 = extractvalue { i64, i1 } %360, 1, !nosanitize !20
  br i1 %362, label %.loopexit, label %363, !prof !23, !nosanitize !20

.loopexit:                                        ; preds = %314, %301, %.mv.ph, %363
  tail call void @llvm.ubsantrap(i8 12) #8, !nosanitize !20
  unreachable, !nosanitize !20

363:                                              ; preds = %.mv.ph
  %364 = getelementptr inbounds nuw [4 x i8], ptr %297, i64 %355
  %365 = load i32, ptr %364, align 4, !tbaa !12
  %366 = zext i32 %365 to i64
  %367 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %366, i64 %306), !nosanitize !20
  %368 = extractvalue { i64, i1 } %367, 1, !nosanitize !20
  br i1 %368, label %.loopexit, label %369, !prof !23, !nosanitize !20

369:                                              ; preds = %363
  %370 = extractvalue { i64, i1 } %367, 0, !nosanitize !20
  %371 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %361, i64 %370), !nosanitize !20
  %372 = extractvalue { i64, i1 } %371, 1, !nosanitize !20
  br i1 %372, label %.loopexit1, label %373, !prof !23, !nosanitize !20

.loopexit1:                                       ; preds = %319, %369
  tail call void @llvm.ubsantrap(i8 21) #8, !nosanitize !20
  unreachable, !nosanitize !20

373:                                              ; preds = %369
  %374 = extractvalue { i64, i1 } %371, 0, !nosanitize !20
  %375 = icmp slt i64 %374, 0
  br i1 %375, label %376, label %380

376:                                              ; preds = %373
  %377 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %374), !nosanitize !20
  %378 = extractvalue { i64, i1 } %377, 0, !nosanitize !20
  %379 = extractvalue { i64, i1 } %377, 1, !nosanitize !20
  br i1 %379, label %.loopexit2, label %380, !prof !23, !nosanitize !20

.loopexit2:                                       ; preds = %326, %376, %345
  tail call void @llvm.ubsantrap(i8 13) #8, !nosanitize !20
  unreachable, !nosanitize !20

380:                                              ; preds = %376, %373
  %381 = phi i64 [ %378, %376 ], [ %374, %373 ]
  %382 = add i64 %381, %356
  %383 = add i64 %355, 1
  %384 = lshr i64 %383, %308
  %385 = icmp eq i64 %384, 0
  br i1 %385, label %.mv.ph, label %.loopexit36, !llvm.loop !24

.loopexit36:                                      ; preds = %380, %349
  %.lcssa = phi i64 [ %351, %349 ], [ %382, %380 ]
  %386 = add i32 %303, 14
  %387 = sext i32 %386 to i64
  %388 = mul i64 %306, %387
  %389 = mul i64 %388, %307
  %390 = lshr i64 %389, 4
  %391 = icmp ult i64 %.lcssa, %390
  br i1 %391, label %.preheader, label %.loopexit42

.preheader:                                       ; preds = %.loopexit36, %.preheader
  %392 = phi i64 [ %414, %.preheader ], [ 0, %.loopexit36 ]
  %393 = getelementptr inbounds nuw [4 x i8], ptr %297, i64 %392
  %394 = getelementptr inbounds nuw i8, ptr %393, i64 16
  %395 = load <4 x i32>, ptr %393, align 4, !tbaa !12
  %396 = load <4 x i32>, ptr %394, align 4, !tbaa !12
  %397 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %392
  %398 = getelementptr inbounds nuw i8, ptr %397, i64 16
  %399 = load <4 x i32>, ptr %397, align 4, !tbaa !12
  %400 = load <4 x i32>, ptr %398, align 4, !tbaa !12
  %401 = add <4 x i32> %399, %395
  %402 = add <4 x i32> %400, %396
  store <4 x i32> %401, ptr %397, align 4, !tbaa !12
  store <4 x i32> %402, ptr %398, align 4, !tbaa !12
  %403 = or disjoint i64 %392, 8
  %404 = getelementptr inbounds nuw [4 x i8], ptr %297, i64 %403
  %405 = getelementptr inbounds nuw i8, ptr %404, i64 16
  %406 = load <4 x i32>, ptr %404, align 4, !tbaa !12
  %407 = load <4 x i32>, ptr %405, align 4, !tbaa !12
  %408 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %403
  %409 = getelementptr inbounds nuw i8, ptr %408, i64 16
  %410 = load <4 x i32>, ptr %408, align 4, !tbaa !12
  %411 = load <4 x i32>, ptr %409, align 4, !tbaa !12
  %412 = add <4 x i32> %410, %406
  %413 = add <4 x i32> %411, %407
  store <4 x i32> %412, ptr %408, align 4, !tbaa !12
  store <4 x i32> %413, ptr %409, align 4, !tbaa !12
  %414 = add nuw nsw i64 %392, 16
  %415 = icmp eq i64 %414, 1024
  br i1 %415, label %416, label %.preheader, !llvm.loop !28

416:                                              ; preds = %.preheader
  %417 = add i64 %307, %306
  store i64 %417, ptr %299, align 8, !tbaa !19
  %418 = icmp sgt i32 %303, 0
  %419 = sext i1 %418 to i32
  %420 = add nsw i32 %303, %419
  %421 = add i64 %302, 8192
  %422 = icmp ugt i64 %421, %294
  br i1 %422, label %.loopexit42, label %301, !llvm.loop !29

.loopexit42:                                      ; preds = %416, %.loopexit36, %289, %279, %54
  %423 = phi i64 [ %284, %279 ], [ %1, %54 ], [ %1, %289 ], [ %1, %416 ], [ %302, %.loopexit36 ]
  ret i64 %423
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
  %9 = load i8, ptr %8, align 1, !tbaa !30
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !12
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !12
  %14 = add i64 %7, 43
  %15 = icmp ult i64 %14, %5
  br i1 %15, label %.preheader, label %.loopexit, !llvm.loop !31

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
  %8 = load i16, ptr %7, align 1, !tbaa !32
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
  br i1 %17, label %.preheader, label %.loopexit, !llvm.loop !31

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
  %8 = load i16, ptr %7, align 1, !tbaa !32
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
  br i1 %17, label %.preheader, label %.loopexit, !llvm.loop !31

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
  %15 = load i16, ptr %14, align 1, !tbaa !32
  %16 = zext i16 %15 to i64
  %17 = mul nuw nsw i64 %16, 2654435769
  %18 = lshr i64 %17, 22
  %19 = and i64 %18, 1023
  %20 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !12
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !12
  %23 = getelementptr i8, ptr %11, i64 %13
  %24 = load i16, ptr %23, align 1, !tbaa !32
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
  br i1 %33, label %34, label %12, !llvm.loop !31

34:                                               ; preds = %12
  %35 = icmp eq i64 %7, 0
  br i1 %35, label %46, label %.thread

.thread:                                          ; preds = %6, %34
  %36 = phi i64 [ %10, %34 ], [ 0, %6 ]
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 %36
  %38 = load i16, ptr %37, align 1, !tbaa !32
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.abs.v2i64(<2 x i64>, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
!22 = distinct !{!22, !15, !16, !17, !18}
!23 = !{!"branch_weights", i32 1, i32 1048574}
!24 = distinct !{!24, !15, !16}
!25 = distinct !{!25, !15, !16, !17, !18}
!26 = !{!27, !27, i64 0}
!27 = !{!"any pointer", !8, i64 0}
!28 = distinct !{!28, !15, !17, !18}
!29 = distinct !{!29, !15}
!30 = !{!8, !8, i64 0}
!31 = distinct !{!31, !15}
!32 = !{!33, !33, i64 0}
!33 = !{!"short", !8, i64 0}
