; ModuleID = '/mydata/ODeSSy/perf_zstd_work/obj.oracle/huf_decompress.ll.mid'
source_filename = "/mydata/zstd/lib/decompress/huf_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.algo_time_t = type { i32, i32 }
%struct.BIT_DStream_t = type { i64, i32, ptr, ptr, ptr }
%struct.HUF_DecompressFastArgs = type { [4 x ptr], [4 x ptr], [4 x i64], ptr, ptr, ptr, [4 x ptr] }

@algoTime = internal unnamed_addr constant [16 x [2 x %struct.algo_time_t]] [[2 x %struct.algo_time_t] [%struct.algo_time_t zeroinitializer, %struct.algo_time_t { i32 1, i32 1 }], [2 x %struct.algo_time_t] [%struct.algo_time_t zeroinitializer, %struct.algo_time_t { i32 1, i32 1 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 150, i32 216 }, %struct.algo_time_t { i32 381, i32 119 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 170, i32 205 }, %struct.algo_time_t { i32 514, i32 112 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 177, i32 199 }, %struct.algo_time_t { i32 539, i32 110 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 197, i32 194 }, %struct.algo_time_t { i32 644, i32 107 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 221, i32 192 }, %struct.algo_time_t { i32 735, i32 107 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 256, i32 189 }, %struct.algo_time_t { i32 881, i32 106 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 359, i32 188 }, %struct.algo_time_t { i32 1167, i32 109 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 582, i32 187 }, %struct.algo_time_t { i32 1570, i32 114 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 688, i32 187 }, %struct.algo_time_t { i32 1712, i32 122 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 825, i32 186 }, %struct.algo_time_t { i32 1965, i32 136 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 976, i32 185 }, %struct.algo_time_t { i32 2131, i32 150 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 1180, i32 186 }, %struct.algo_time_t { i32 2070, i32 175 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 1377, i32 185 }, %struct.algo_time_t { i32 1731, i32 202 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 1412, i32 185 }, %struct.algo_time_t { i32 1695, i32 202 }]], align 16
@BIT_reloadDStream.zeroFilled = internal constant i64 0, align 8

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_readDTableX1_wksp(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i32 0, ptr %7, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i32 0, ptr %8, align 4, !tbaa !5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %10 = icmp ult i64 %4, 1492
  br i1 %10, label %.loopexit39, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 1236
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %14 = call i64 @HUF_readStats_wksp(ptr noundef nonnull %12, i64 noundef 256, ptr noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %13, i64 noundef 876, i32 noundef %5) #17
  %15 = icmp ult i64 %14, -119
  br i1 %15, label %16, label %.loopexit39

16:                                               ; preds = %11
  %17 = load i32, ptr %0, align 4
  %18 = trunc i32 %17 to i8
  %19 = lshr i32 %17, 24
  %20 = trunc nuw i32 %19 to i8
  %21 = and i32 %17, 255
  %22 = add nuw nsw i32 %21, 1
  %23 = call i32 @llvm.umin.i32(i32 %22, i32 11)
  %24 = load i32, ptr %8, align 4, !tbaa !5
  %25 = load i32, ptr %7, align 4, !tbaa !5
  %26 = icmp ugt i32 %25, %23
  br i1 %26, label %108, label %27

27:                                               ; preds = %16
  %28 = icmp samesign ult i32 %25, %23
  br i1 %28, label %29, label %110

29:                                               ; preds = %27
  %30 = sub nuw nsw i32 %23, %25
  %31 = icmp eq i32 %24, 0
  br i1 %31, label %.loopexit48, label %32

32:                                               ; preds = %29
  %33 = trunc nuw nsw i32 %30 to i8
  %34 = zext i32 %24 to i64
  %35 = icmp ult i32 %24, 8
  br i1 %35, label %.preheader129, label %36

.preheader129:                                    ; preds = %75, %58, %32
  %.ph = phi i64 [ %63, %75 ], [ %39, %58 ], [ 0, %32 ]
  br label %81

36:                                               ; preds = %32
  %37 = icmp ult i32 %24, 32
  br i1 %37, label %61, label %38

38:                                               ; preds = %36
  %39 = and i64 %34, 4294967264
  %40 = insertelement <16 x i8> poison, i8 %33, i64 0
  %41 = shufflevector <16 x i8> %40, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %42

42:                                               ; preds = %42, %38
  %43 = phi i64 [ 0, %38 ], [ %54, %42 ]
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 %43
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 16
  %46 = load <16 x i8>, ptr %44, align 1, !tbaa !9
  %47 = load <16 x i8>, ptr %45, align 1, !tbaa !9
  %48 = icmp eq <16 x i8> %46, zeroinitializer
  %49 = icmp eq <16 x i8> %47, zeroinitializer
  %50 = select <16 x i1> %48, <16 x i8> zeroinitializer, <16 x i8> %41
  %51 = select <16 x i1> %49, <16 x i8> zeroinitializer, <16 x i8> %41
  %52 = add <16 x i8> %50, %46
  %53 = add <16 x i8> %51, %47
  store <16 x i8> %52, ptr %44, align 1, !tbaa !9
  store <16 x i8> %53, ptr %45, align 1, !tbaa !9
  %54 = add nuw nsw i64 %43, 32
  %55 = icmp eq i64 %54, %39
  br i1 %55, label %56, label %42, !llvm.loop !10

56:                                               ; preds = %42
  %57 = icmp eq i64 %39, %34
  br i1 %57, label %.loopexit48, label %58

58:                                               ; preds = %56
  %59 = and i64 %34, 24
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %.preheader129, label %61

61:                                               ; preds = %58, %36
  %62 = phi i64 [ %39, %58 ], [ 0, %36 ]
  %63 = and i64 %34, 4294967288
  %64 = insertelement <8 x i8> poison, i8 %33, i64 0
  %65 = shufflevector <8 x i8> %64, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %66

66:                                               ; preds = %66, %61
  %67 = phi i64 [ %62, %61 ], [ %73, %66 ]
  %68 = getelementptr inbounds nuw i8, ptr %12, i64 %67
  %69 = load <8 x i8>, ptr %68, align 1, !tbaa !9
  %70 = icmp eq <8 x i8> %69, zeroinitializer
  %71 = select <8 x i1> %70, <8 x i8> zeroinitializer, <8 x i8> %65
  %72 = add <8 x i8> %71, %69
  store <8 x i8> %72, ptr %68, align 1, !tbaa !9
  %73 = add nuw i64 %67, 8
  %74 = icmp eq i64 %73, %63
  br i1 %74, label %75, label %66, !llvm.loop !14

75:                                               ; preds = %66
  %76 = icmp eq i64 %63, %34
  br i1 %76, label %.loopexit48, label %.preheader129

.loopexit48:                                      ; preds = %81, %75, %56, %29
  %77 = icmp eq i32 %25, 0
  br i1 %77, label %.loopexit47, label %78

78:                                               ; preds = %.loopexit48
  %79 = zext nneg i32 %23 to i64
  %80 = zext nneg i32 %30 to i64
  br label %99

81:                                               ; preds = %.preheader129, %81
  %82 = phi i64 [ %88, %81 ], [ %.ph, %.preheader129 ]
  %83 = getelementptr inbounds nuw i8, ptr %12, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !9
  %85 = icmp eq i8 %84, 0
  %86 = select i1 %85, i8 0, i8 %33
  %87 = add i8 %86, %84
  store i8 %87, ptr %83, align 1, !tbaa !9
  %88 = add nuw nsw i64 %82, 1
  %89 = icmp eq i64 %88, %34
  br i1 %89, label %.loopexit48, label %81, !llvm.loop !15

.loopexit47:                                      ; preds = %99, %.loopexit48
  %90 = shl nuw nsw i32 %30, 2
  %91 = zext nneg i32 %90 to i64
  %92 = xor i32 %25, -1
  %93 = add nsw i32 %23, %92
  %94 = zext i32 %93 to i64
  %95 = shl nuw nsw i64 %94, 2
  %96 = sub nsw i64 %91, %95
  %97 = getelementptr i8, ptr %3, i64 %96
  %98 = add nuw nsw i64 %95, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %97, i8 0, i64 %98, i1 false), !tbaa !5
  br label %110

99:                                               ; preds = %99, %78
  %100 = phi i64 [ %79, %78 ], [ %105, %99 ]
  %101 = sub nuw nsw i64 %100, %80
  %102 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !5
  %104 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %100
  store i32 %103, ptr %104, align 4, !tbaa !5
  %105 = add nsw i64 %100, -1
  %106 = trunc i64 %105 to i32
  %107 = icmp ult i32 %30, %106
  br i1 %107, label %99, label %.loopexit47, !llvm.loop !16

108:                                              ; preds = %16
  %109 = icmp ugt i32 %25, %22
  br i1 %109, label %.loopexit39, label %110

.loopexit28:                                      ; preds = %192, %452, %.loopexit29, %379, %374, %359, %354, %344, %334, %329, %317, %312, %.loopexit, %391
  call void @llvm.ubsantrap(i8 0) #18, !nosanitize !17
  unreachable, !nosanitize !17

110:                                              ; preds = %27, %.loopexit47, %108
  %111 = phi i32 [ %25, %108 ], [ %23, %.loopexit47 ], [ %23, %27 ]
  %112 = trunc i32 %111 to i8
  store i8 %18, ptr %0, align 4
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %113, align 1
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %112, ptr %114, align 2
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %20, ptr %115, align 1
  %116 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %24, i32 -4)
  %117 = extractvalue { i32, i1 } %116, 1, !nosanitize !17
  br i1 %117, label %118, label %119, !prof !18, !nosanitize !17

118:                                              ; preds = %110
  call void @llvm.ubsantrap(i8 21) #18, !nosanitize !17
  unreachable, !nosanitize !17

119:                                              ; preds = %110
  %120 = extractvalue { i32, i1 } %116, 0, !nosanitize !17
  %121 = add nuw nsw i32 %111, 1
  %122 = getelementptr inbounds nuw i8, ptr %3, i64 52
  %123 = zext nneg i32 %121 to i64
  %124 = and i64 %123, 3
  %125 = icmp samesign ult i32 %111, 3
  br i1 %125, label %.loopexit46, label %126

126:                                              ; preds = %119
  %127 = and i64 %123, 2147483644
  br label %144

.loopexit46:                                      ; preds = %144, %119
  %128 = phi i64 [ 0, %119 ], [ %127, %144 ]
  %129 = phi i32 [ 0, %119 ], [ %166, %144 ]
  %130 = icmp eq i64 %124, 0
  br i1 %130, label %.loopexit45, label %.preheader44

.preheader44:                                     ; preds = %.loopexit46, %.preheader44
  %131 = phi i64 [ %137, %.preheader44 ], [ %128, %.loopexit46 ]
  %132 = phi i32 [ %138, %.preheader44 ], [ %129, %.loopexit46 ]
  %133 = phi i64 [ %139, %.preheader44 ], [ 0, %.loopexit46 ]
  %134 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %131
  %135 = load i32, ptr %134, align 4, !tbaa !5
  %136 = getelementptr inbounds nuw [4 x i8], ptr %122, i64 %131
  store i32 %132, ptr %136, align 4, !tbaa !5
  %137 = add nuw nsw i64 %131, 1
  %138 = add i32 %135, %132
  %139 = add nuw nsw i64 %133, 1
  %140 = icmp eq i64 %139, %124
  br i1 %140, label %.loopexit45, label %.preheader44, !llvm.loop !19

.loopexit45:                                      ; preds = %.preheader44, %.loopexit46
  %141 = icmp slt i32 %120, 0
  br i1 %141, label %.loopexit43, label %142

142:                                              ; preds = %.loopexit45
  %143 = getelementptr inbounds nuw i8, ptr %3, i64 980
  br label %192

144:                                              ; preds = %144, %126
  %145 = phi i64 [ 0, %126 ], [ %165, %144 ]
  %146 = phi i32 [ 0, %126 ], [ %166, %144 ]
  %147 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %145
  %148 = load i32, ptr %147, align 4, !tbaa !5
  %149 = getelementptr inbounds nuw [4 x i8], ptr %122, i64 %145
  store i32 %146, ptr %149, align 4, !tbaa !5
  %150 = or disjoint i64 %145, 1
  %151 = add i32 %148, %146
  %152 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %150
  %153 = load i32, ptr %152, align 4, !tbaa !5
  %154 = getelementptr inbounds nuw [4 x i8], ptr %122, i64 %150
  store i32 %151, ptr %154, align 4, !tbaa !5
  %155 = or disjoint i64 %145, 2
  %156 = add i32 %153, %151
  %157 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %155
  %158 = load i32, ptr %157, align 4, !tbaa !5
  %159 = getelementptr inbounds nuw [4 x i8], ptr %122, i64 %155
  store i32 %156, ptr %159, align 4, !tbaa !5
  %160 = or disjoint i64 %145, 3
  %161 = add i32 %158, %156
  %162 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %160
  %163 = load i32, ptr %162, align 4, !tbaa !5
  %164 = getelementptr inbounds nuw [4 x i8], ptr %122, i64 %160
  store i32 %161, ptr %164, align 4, !tbaa !5
  %165 = add nuw i64 %145, 4
  %166 = add i32 %163, %161
  %167 = icmp eq i64 %165, %127
  br i1 %167, label %.loopexit46, label %144

.loopexit43:                                      ; preds = %234, %.loopexit45
  %168 = phi i32 [ 0, %.loopexit45 ], [ %236, %234 ]
  %169 = icmp slt i32 %168, %24
  br i1 %169, label %170, label %.loopexit41

170:                                              ; preds = %.loopexit43
  %171 = getelementptr inbounds nuw i8, ptr %3, i64 980
  %172 = zext nneg i32 %168 to i64
  %173 = zext nneg i32 %24 to i64
  %174 = sub nsw i64 %173, %172
  %175 = and i64 %174, 1
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %188, label %177

177:                                              ; preds = %170
  %178 = getelementptr inbounds nuw i8, ptr %12, i64 %172
  %179 = load i8, ptr %178, align 1, !tbaa !9
  %180 = zext i8 %179 to i64
  %181 = trunc i32 %168 to i8
  %182 = getelementptr inbounds nuw [4 x i8], ptr %122, i64 %180
  %183 = load i32, ptr %182, align 4, !tbaa !5
  %184 = add i32 %183, 1
  store i32 %184, ptr %182, align 4, !tbaa !5
  %185 = zext i32 %183 to i64
  %186 = getelementptr inbounds nuw i8, ptr %171, i64 %185
  store i8 %181, ptr %186, align 1, !tbaa !9
  %187 = add nuw nsw i64 %172, 1
  br label %188

188:                                              ; preds = %177, %170
  %189 = phi i64 [ %172, %170 ], [ %187, %177 ]
  %190 = add nsw i64 %173, -1
  %191 = icmp eq i64 %190, %172
  br i1 %191, label %.loopexit41, label %.preheader40

192:                                              ; preds = %234, %142
  %193 = phi i64 [ 0, %142 ], [ %235, %234 ]
  %194 = getelementptr inbounds nuw i8, ptr %12, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !9
  %196 = zext i8 %195 to i64
  %197 = trunc i64 %193 to i8
  %198 = getelementptr inbounds nuw [4 x i8], ptr %122, i64 %196
  %199 = load i32, ptr %198, align 4, !tbaa !5
  %200 = add i32 %199, 1
  store i32 %200, ptr %198, align 4, !tbaa !5
  %201 = zext i32 %199 to i64
  %202 = getelementptr inbounds nuw i8, ptr %143, i64 %201
  store i8 %197, ptr %202, align 1, !tbaa !9
  %203 = or disjoint i64 %193, 1
  %204 = getelementptr inbounds nuw i8, ptr %12, i64 %203
  %205 = load i8, ptr %204, align 1, !tbaa !9
  %206 = zext i8 %205 to i64
  %207 = trunc i64 %203 to i8
  %208 = getelementptr inbounds nuw [4 x i8], ptr %122, i64 %206
  %209 = load i32, ptr %208, align 4, !tbaa !5
  %210 = add i32 %209, 1
  store i32 %210, ptr %208, align 4, !tbaa !5
  %211 = zext i32 %209 to i64
  %212 = getelementptr inbounds nuw i8, ptr %143, i64 %211
  store i8 %207, ptr %212, align 1, !tbaa !9
  %213 = or disjoint i64 %193, 2
  %214 = getelementptr inbounds nuw i8, ptr %12, i64 %213
  %215 = load i8, ptr %214, align 1, !tbaa !9
  %216 = zext i8 %215 to i64
  %217 = trunc i64 %213 to i8
  %218 = getelementptr inbounds nuw [4 x i8], ptr %122, i64 %216
  %219 = load i32, ptr %218, align 4, !tbaa !5
  %220 = add i32 %219, 1
  store i32 %220, ptr %218, align 4, !tbaa !5
  %221 = zext i32 %219 to i64
  %222 = getelementptr inbounds nuw i8, ptr %143, i64 %221
  store i8 %217, ptr %222, align 1, !tbaa !9
  %223 = or disjoint i64 %193, 3
  %224 = getelementptr inbounds nuw i8, ptr %12, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !9
  %226 = zext i8 %225 to i64
  %227 = trunc i64 %223 to i8
  %228 = getelementptr inbounds nuw [4 x i8], ptr %122, i64 %226
  %229 = load i32, ptr %228, align 4, !tbaa !5
  %230 = add i32 %229, 1
  store i32 %230, ptr %228, align 4, !tbaa !5
  %231 = zext i32 %229 to i64
  %232 = getelementptr inbounds nuw i8, ptr %143, i64 %231
  store i8 %227, ptr %232, align 1, !tbaa !9
  %233 = icmp eq i64 %193, 2147483644
  br i1 %233, label %.loopexit28, label %234, !prof !18, !nosanitize !17

234:                                              ; preds = %192
  %235 = add nuw nsw i64 %193, 4
  %236 = trunc i64 %235 to i32
  %237 = icmp slt i32 %120, %236
  br i1 %237, label %.loopexit43, label %192, !llvm.loop !21

.preheader40:                                     ; preds = %188, %.preheader40
  %238 = phi i64 [ %258, %.preheader40 ], [ %189, %188 ]
  %239 = getelementptr inbounds i8, ptr %12, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !9
  %241 = zext i8 %240 to i64
  %242 = trunc i64 %238 to i8
  %243 = getelementptr inbounds nuw [4 x i8], ptr %122, i64 %241
  %244 = load i32, ptr %243, align 4, !tbaa !5
  %245 = add i32 %244, 1
  store i32 %245, ptr %243, align 4, !tbaa !5
  %246 = zext i32 %244 to i64
  %247 = getelementptr inbounds nuw i8, ptr %171, i64 %246
  store i8 %242, ptr %247, align 1, !tbaa !9
  %248 = add nuw nsw i64 %238, 1
  %249 = getelementptr inbounds i8, ptr %12, i64 %248
  %250 = load i8, ptr %249, align 1, !tbaa !9
  %251 = zext i8 %250 to i64
  %252 = trunc i64 %248 to i8
  %253 = getelementptr inbounds nuw [4 x i8], ptr %122, i64 %251
  %254 = load i32, ptr %253, align 4, !tbaa !5
  %255 = add i32 %254, 1
  store i32 %255, ptr %253, align 4, !tbaa !5
  %256 = zext i32 %254 to i64
  %257 = getelementptr inbounds nuw i8, ptr %171, i64 %256
  store i8 %252, ptr %257, align 1, !tbaa !9
  %258 = add nuw nsw i64 %238, 2
  %259 = icmp eq i64 %258, %173
  br i1 %259, label %.loopexit41, label %.preheader40, !llvm.loop !22

.loopexit41:                                      ; preds = %.preheader40, %.loopexit43, %188
  %260 = load i32, ptr %3, align 4, !tbaa !5
  %261 = getelementptr inbounds nuw i8, ptr %3, i64 980
  br label %262

262:                                              ; preds = %456, %.loopexit41
  %263 = phi i64 [ 1, %.loopexit41 ], [ %458, %456 ]
  %264 = phi i32 [ %260, %.loopexit41 ], [ %446, %456 ]
  %265 = phi i32 [ 0, %.loopexit41 ], [ %457, %456 ]
  %266 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %263
  %267 = load i32, ptr %266, align 4, !tbaa !5
  %268 = trunc nuw i64 %263 to i32
  %269 = shl nuw i32 1, %268
  %270 = ashr exact i32 %269, 1
  %271 = sub i32 %121, %268
  %272 = trunc i32 %271 to i8
  %273 = icmp sgt i32 %267, 0
  %274 = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %270)
  %275 = icmp eq i32 %274, 1
  br i1 %275, label %.split, label %294

.split:                                           ; preds = %262
  %276 = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %270, i1 true)
  switch i32 %276, label %294 [
    i32 0, label %290
    i32 1, label %287
    i32 2, label %282
    i32 3, label %277
  ]

277:                                              ; preds = %.split
  br i1 %273, label %278, label %.loopexit29

278:                                              ; preds = %277
  %279 = and i32 %271, 255
  %280 = zext nneg i32 %279 to i64
  %281 = sext i32 %265 to i64
  br label %374

282:                                              ; preds = %.split
  br i1 %273, label %283, label %.loopexit29

283:                                              ; preds = %282
  %284 = and i32 %271, 255
  %285 = zext nneg i32 %284 to i64
  %286 = sext i32 %265 to i64
  br label %354

287:                                              ; preds = %.split
  br i1 %273, label %288, label %.loopexit29

288:                                              ; preds = %287
  %289 = sext i32 %265 to i64
  br label %329

290:                                              ; preds = %.split
  br i1 %273, label %291, label %.loopexit29

291:                                              ; preds = %290
  %292 = sext i32 %265 to i64
  %293 = sub i32 2147483647, %265
  br label %312

294:                                              ; preds = %.split, %262
  br i1 %273, label %295, label %.loopexit29

295:                                              ; preds = %294
  %296 = and i32 %271, 255
  %297 = zext nneg i32 %296 to i64
  %298 = icmp sgt i32 %270, 0
  %299 = sext i32 %270 to i64
  %300 = sext i32 %265 to i64
  %301 = add nsw i64 %299, -1
  %302 = lshr i64 %301, 4
  %303 = add nuw nsw i64 %302, 1
  %304 = and i64 %303, 3
  %305 = icmp ult i32 %270, 49
  %306 = and i64 %303, 2305843009213693948
  %307 = icmp eq i64 %304, 0
  br label %391

308:                                              ; preds = %317
  %309 = add nuw nsw i32 %314, 1
  %310 = add nsw i64 %313, 1
  %311 = icmp eq i32 %309, %267
  br i1 %311, label %.loopexit29, label %312, !llvm.loop !23

312:                                              ; preds = %308, %291
  %313 = phi i64 [ %292, %291 ], [ %310, %308 ]
  %314 = phi i32 [ 0, %291 ], [ %309, %308 ]
  %315 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %264, i32 %314), !nosanitize !17
  %316 = extractvalue { i32, i1 } %315, 1, !nosanitize !17
  br i1 %316, label %.loopexit28, label %317, !prof !18, !nosanitize !17

317:                                              ; preds = %312
  %318 = extractvalue { i32, i1 } %315, 0, !nosanitize !17
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, ptr %261, i64 %319
  %321 = load i8, ptr %320, align 1, !tbaa !9
  %322 = getelementptr inbounds [2 x i8], ptr %9, i64 %313
  store i8 %272, ptr %322, align 1, !tbaa !9
  %323 = getelementptr inbounds nuw i8, ptr %322, i64 1
  store i8 %321, ptr %323, align 1, !tbaa !9
  %324 = icmp eq i32 %314, %293
  br i1 %324, label %.loopexit28, label %308, !prof !18, !nosanitize !17

325:                                              ; preds = %344
  %326 = add nuw nsw i32 %331, 1
  %327 = add nsw i64 %330, 2
  %328 = icmp eq i32 %326, %267
  br i1 %328, label %.loopexit29, label %329, !llvm.loop !24

329:                                              ; preds = %325, %288
  %330 = phi i64 [ %289, %288 ], [ %327, %325 ]
  %331 = phi i32 [ 0, %288 ], [ %326, %325 ]
  %332 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %264, i32 %331), !nosanitize !17
  %333 = extractvalue { i32, i1 } %332, 1, !nosanitize !17
  br i1 %333, label %.loopexit28, label %334, !prof !18, !nosanitize !17

334:                                              ; preds = %329
  %335 = extractvalue { i32, i1 } %332, 0, !nosanitize !17
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8, ptr %261, i64 %336
  %338 = load i8, ptr %337, align 1, !tbaa !9
  %339 = getelementptr inbounds [2 x i8], ptr %9, i64 %330
  store i8 %272, ptr %339, align 1, !tbaa !9
  %340 = getelementptr inbounds nuw i8, ptr %339, i64 1
  store i8 %338, ptr %340, align 1, !tbaa !9
  %341 = trunc nsw i64 %330 to i32
  %342 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %341, i32 1), !nosanitize !17
  %343 = extractvalue { i32, i1 } %342, 1, !nosanitize !17
  br i1 %343, label %.loopexit28, label %344, !prof !18, !nosanitize !17

344:                                              ; preds = %334
  %345 = extractvalue { i32, i1 } %342, 0, !nosanitize !17
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [2 x i8], ptr %9, i64 %346
  store i8 %272, ptr %347, align 1, !tbaa !9
  %348 = getelementptr inbounds nuw i8, ptr %347, i64 1
  store i8 %338, ptr %348, align 1, !tbaa !9
  %349 = icmp sgt i64 %330, 2147483645
  br i1 %349, label %.loopexit28, label %325, !prof !18, !nosanitize !17

350:                                              ; preds = %359
  %351 = add nuw nsw i32 %356, 1
  %352 = add nsw i64 %355, 4
  %353 = icmp eq i32 %351, %267
  br i1 %353, label %.loopexit29, label %354, !llvm.loop !25

354:                                              ; preds = %350, %283
  %355 = phi i64 [ %286, %283 ], [ %352, %350 ]
  %356 = phi i32 [ 0, %283 ], [ %351, %350 ]
  %357 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %264, i32 %356), !nosanitize !17
  %358 = extractvalue { i32, i1 } %357, 1, !nosanitize !17
  br i1 %358, label %.loopexit28, label %359, !prof !18, !nosanitize !17

359:                                              ; preds = %354
  %360 = extractvalue { i32, i1 } %357, 0, !nosanitize !17
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i8, ptr %261, i64 %361
  %363 = load i8, ptr %362, align 1, !tbaa !9
  %364 = zext i8 %363 to i64
  %365 = shl nuw nsw i64 %364, 8
  %366 = or disjoint i64 %365, %285
  %367 = mul nuw i64 %366, 281479271743489
  %368 = getelementptr inbounds [2 x i8], ptr %9, i64 %355
  store i64 %367, ptr %368, align 1, !tbaa !26
  %369 = icmp sgt i64 %355, 2147483643
  br i1 %369, label %.loopexit28, label %350, !prof !18, !nosanitize !17

370:                                              ; preds = %379
  %371 = add nuw nsw i32 %376, 1
  %372 = add nsw i64 %375, 8
  %373 = icmp eq i32 %371, %267
  br i1 %373, label %.loopexit29, label %374, !llvm.loop !28

374:                                              ; preds = %370, %278
  %375 = phi i64 [ %281, %278 ], [ %372, %370 ]
  %376 = phi i32 [ 0, %278 ], [ %371, %370 ]
  %377 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %264, i32 %376), !nosanitize !17
  %378 = extractvalue { i32, i1 } %377, 1, !nosanitize !17
  br i1 %378, label %.loopexit28, label %379, !prof !18, !nosanitize !17

379:                                              ; preds = %374
  %380 = extractvalue { i32, i1 } %377, 0, !nosanitize !17
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i8, ptr %261, i64 %381
  %383 = load i8, ptr %382, align 1, !tbaa !9
  %384 = zext i8 %383 to i64
  %385 = shl nuw nsw i64 %384, 8
  %386 = or disjoint i64 %385, %280
  %387 = mul nuw i64 %386, 281479271743489
  %388 = getelementptr inbounds [2 x i8], ptr %9, i64 %375
  store i64 %387, ptr %388, align 1, !tbaa !26
  %389 = getelementptr inbounds nuw i8, ptr %388, i64 8
  store i64 %387, ptr %389, align 1, !tbaa !26
  %390 = icmp sgt i64 %375, 2147483639
  br i1 %390, label %.loopexit28, label %370, !prof !18, !nosanitize !17

391:                                              ; preds = %441, %295
  %392 = phi i64 [ %300, %295 ], [ %442, %441 ]
  %393 = phi i32 [ 0, %295 ], [ %443, %441 ]
  %394 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %264, i32 %393), !nosanitize !17
  %395 = extractvalue { i32, i1 } %394, 1, !nosanitize !17
  br i1 %395, label %.loopexit28, label %396, !prof !18, !nosanitize !17

396:                                              ; preds = %391
  %397 = extractvalue { i32, i1 } %394, 0, !nosanitize !17
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8, ptr %261, i64 %398
  %400 = load i8, ptr %399, align 1, !tbaa !9
  %401 = zext i8 %400 to i64
  %402 = shl nuw nsw i64 %401, 8
  %403 = or disjoint i64 %402, %297
  %404 = mul nuw i64 %403, 281479271743489
  br i1 %298, label %405, label %.loopexit

405:                                              ; preds = %396
  %406 = getelementptr inbounds [2 x i8], ptr %9, i64 %392
  br i1 %305, label %.loopexit27, label %.preheader26

.preheader26:                                     ; preds = %405, %.preheader26
  %407 = phi i64 [ %425, %.preheader26 ], [ 0, %405 ]
  %408 = phi i64 [ %426, %.preheader26 ], [ 0, %405 ]
  %409 = getelementptr inbounds nuw [2 x i8], ptr %406, i64 %407
  store i64 %404, ptr %409, align 1, !tbaa !26
  %410 = getelementptr inbounds nuw i8, ptr %409, i64 8
  store i64 %404, ptr %410, align 1, !tbaa !26
  %411 = getelementptr inbounds nuw i8, ptr %409, i64 16
  store i64 %404, ptr %411, align 1, !tbaa !26
  %412 = getelementptr inbounds nuw i8, ptr %409, i64 24
  store i64 %404, ptr %412, align 1, !tbaa !26
  %413 = getelementptr inbounds nuw i8, ptr %409, i64 32
  store i64 %404, ptr %413, align 1, !tbaa !26
  %414 = getelementptr inbounds nuw i8, ptr %409, i64 40
  store i64 %404, ptr %414, align 1, !tbaa !26
  %415 = getelementptr inbounds nuw i8, ptr %409, i64 48
  store i64 %404, ptr %415, align 1, !tbaa !26
  %416 = getelementptr inbounds nuw i8, ptr %409, i64 56
  store i64 %404, ptr %416, align 1, !tbaa !26
  %417 = getelementptr inbounds nuw i8, ptr %409, i64 64
  store i64 %404, ptr %417, align 1, !tbaa !26
  %418 = getelementptr inbounds nuw i8, ptr %409, i64 72
  store i64 %404, ptr %418, align 1, !tbaa !26
  %419 = getelementptr inbounds nuw i8, ptr %409, i64 80
  store i64 %404, ptr %419, align 1, !tbaa !26
  %420 = getelementptr inbounds nuw i8, ptr %409, i64 88
  store i64 %404, ptr %420, align 1, !tbaa !26
  %421 = getelementptr inbounds nuw i8, ptr %409, i64 96
  store i64 %404, ptr %421, align 1, !tbaa !26
  %422 = getelementptr inbounds nuw i8, ptr %409, i64 104
  store i64 %404, ptr %422, align 1, !tbaa !26
  %423 = getelementptr inbounds nuw i8, ptr %409, i64 112
  store i64 %404, ptr %423, align 1, !tbaa !26
  %424 = getelementptr inbounds nuw i8, ptr %409, i64 120
  store i64 %404, ptr %424, align 1, !tbaa !26
  %425 = add nuw nsw i64 %407, 64
  %426 = add nuw nsw i64 %408, 4
  %427 = icmp eq i64 %426, %306
  br i1 %427, label %.loopexit27, label %.preheader26, !llvm.loop !29

.loopexit27:                                      ; preds = %.preheader26, %405
  %428 = phi i64 [ 0, %405 ], [ %425, %.preheader26 ]
  br i1 %307, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit27, %.preheader
  %429 = phi i64 [ %435, %.preheader ], [ %428, %.loopexit27 ]
  %430 = phi i64 [ %436, %.preheader ], [ 0, %.loopexit27 ]
  %431 = getelementptr inbounds nuw [2 x i8], ptr %406, i64 %429
  store i64 %404, ptr %431, align 1, !tbaa !26
  %432 = getelementptr inbounds nuw i8, ptr %431, i64 8
  store i64 %404, ptr %432, align 1, !tbaa !26
  %433 = getelementptr inbounds nuw i8, ptr %431, i64 16
  store i64 %404, ptr %433, align 1, !tbaa !26
  %434 = getelementptr inbounds nuw i8, ptr %431, i64 24
  store i64 %404, ptr %434, align 1, !tbaa !26
  %435 = add nuw nsw i64 %429, 16
  %436 = add nuw nsw i64 %430, 1
  %437 = icmp eq i64 %436, %304
  br i1 %437, label %.loopexit, label %.preheader, !llvm.loop !30

.loopexit:                                        ; preds = %.preheader, %.loopexit27, %396
  %438 = trunc nsw i64 %392 to i32
  %439 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %438, i32 %270), !nosanitize !17
  %440 = extractvalue { i32, i1 } %439, 1, !nosanitize !17
  br i1 %440, label %.loopexit28, label %441, !prof !18, !nosanitize !17

441:                                              ; preds = %.loopexit
  %442 = add i64 %392, %299
  %443 = add nuw nsw i32 %393, 1
  %444 = icmp eq i32 %443, %267
  br i1 %444, label %.loopexit29, label %391, !llvm.loop !31

.loopexit29:                                      ; preds = %370, %350, %325, %308, %441, %294, %290, %287, %282, %277
  %445 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %264, i32 %267), !nosanitize !17
  %446 = extractvalue { i32, i1 } %445, 0, !nosanitize !17
  %447 = extractvalue { i32, i1 } %445, 1, !nosanitize !17
  br i1 %447, label %.loopexit28, label %448, !prof !18, !nosanitize !17

448:                                              ; preds = %.loopexit29
  %449 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %267, i32 %270), !nosanitize !17
  %450 = extractvalue { i32, i1 } %449, 1, !nosanitize !17
  br i1 %450, label %451, label %452, !prof !18, !nosanitize !17

451:                                              ; preds = %448
  call void @llvm.ubsantrap(i8 12) #18, !nosanitize !17
  unreachable, !nosanitize !17

452:                                              ; preds = %448
  %453 = extractvalue { i32, i1 } %449, 0, !nosanitize !17
  %454 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %265, i32 %453), !nosanitize !17
  %455 = extractvalue { i32, i1 } %454, 1, !nosanitize !17
  br i1 %455, label %.loopexit28, label %456, !prof !18, !nosanitize !17

456:                                              ; preds = %452
  %457 = extractvalue { i32, i1 } %454, 0, !nosanitize !17
  %458 = add nuw nsw i64 %263, 1
  %459 = icmp eq i64 %458, %123
  br i1 %459, label %.loopexit39, label %262, !llvm.loop !32

.loopexit39:                                      ; preds = %456, %108, %11, %6
  %460 = phi i64 [ -44, %6 ], [ %14, %11 ], [ -44, %108 ], [ %14, %456 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret i64 %460
}

declare i64 @HUF_readStats_wksp(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_readDTableX2_wksp(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = ptrtoint ptr %3 to i64
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %10 = load i32, ptr %0, align 4
  %11 = trunc i32 %10 to i8
  %12 = lshr i32 %10, 24
  %13 = trunc nuw i32 %12 to i8
  %14 = and i32 %10, 255
  %15 = getelementptr i8, ptr %0, i64 4
  %16 = icmp ult i64 %4, 2124
  br i1 %16, label %1092, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 676
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 680
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 624
  %21 = icmp samesign ugt i32 %14, 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %20, i8 0, i64 112, i1 false)
  br i1 %21, label %1092, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 992
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 1248
  %25 = call i64 @HUF_readStats_wksp(ptr noundef nonnull %23, i64 noundef 256, ptr noundef nonnull %20, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %24, i64 noundef 876, i32 noundef %5) #17
  %26 = icmp ult i64 %25, -119
  br i1 %26, label %27, label %1092

27:                                               ; preds = %22
  %28 = load i32, ptr %8, align 4, !tbaa !5
  %29 = icmp ugt i32 %28, %14
  br i1 %29, label %1092, label %30

30:                                               ; preds = %27
  %31 = add nuw nsw i32 %28, 1
  br label %32

32:                                               ; preds = %32, %30
  %indvars.iv = phi i32 [ %indvars.iv.next, %32 ], [ -1, %30 ]
  %33 = phi i32 [ %42, %32 ], [ 1, %30 ]
  %34 = phi i32 [ %41, %32 ], [ %31, %30 ]
  %35 = phi i32 [ %40, %32 ], [ %28, %30 ]
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !5
  %39 = icmp eq i32 %38, 0
  %40 = add i32 %35, -1
  %41 = add i32 %34, -1
  %42 = add i32 %33, 1
  %indvars.iv.next = add i32 %indvars.iv, -2
  br i1 %39, label %32, label %43, !llvm.loop !33

43:                                               ; preds = %32
  %44 = icmp samesign ult i32 %28, 12
  %45 = icmp eq i32 %14, 12
  %46 = select i1 %44, i1 %45, i1 false
  %47 = select i1 %46, i32 11, i32 %14
  %48 = add i32 %35, 1
  %49 = icmp ugt i32 %48, 1
  br i1 %49, label %50, label %.loopexit85

50:                                               ; preds = %43
  %51 = zext i32 %34 to i64
  %52 = add nsw i64 %51, -1
  %53 = and i64 %52, 3
  %54 = add i32 %34, -2
  %55 = icmp ult i32 %54, 3
  br i1 %55, label %.loopexit86, label %56

56:                                               ; preds = %50
  %57 = and i64 %52, -4
  br label %58

58:                                               ; preds = %58, %56
  %59 = phi i64 [ 1, %56 ], [ %81, %58 ]
  %60 = phi i32 [ 0, %56 ], [ %79, %58 ]
  %61 = phi i64 [ 0, %56 ], [ %82, %58 ]
  %62 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %59
  %63 = load i32, ptr %62, align 4, !tbaa !5
  %64 = add i32 %63, %60
  %65 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %59
  store i32 %60, ptr %65, align 4, !tbaa !5
  %66 = add nuw nsw i64 %59, 1
  %67 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !5
  %69 = add i32 %68, %64
  %70 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %66
  store i32 %64, ptr %70, align 4, !tbaa !5
  %71 = add nuw nsw i64 %59, 2
  %72 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !5
  %74 = add i32 %73, %69
  %75 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %71
  store i32 %69, ptr %75, align 4, !tbaa !5
  %76 = add nuw nsw i64 %59, 3
  %77 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !5
  %79 = add i32 %78, %74
  %80 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %76
  store i32 %74, ptr %80, align 4, !tbaa !5
  %81 = add nuw nsw i64 %59, 4
  %82 = add nuw i64 %61, 4
  %83 = icmp eq i64 %82, %57
  br i1 %83, label %.loopexit86, label %58, !llvm.loop !34

.loopexit86:                                      ; preds = %58, %50
  %84 = phi i32 [ poison, %50 ], [ %79, %58 ]
  %85 = phi i64 [ 1, %50 ], [ %81, %58 ]
  %86 = phi i32 [ 0, %50 ], [ %79, %58 ]
  %87 = icmp eq i64 %53, 0
  br i1 %87, label %.loopexit85, label %.preheader84

.preheader84:                                     ; preds = %.loopexit86, %.preheader84
  %88 = phi i64 [ %95, %.preheader84 ], [ %85, %.loopexit86 ]
  %89 = phi i32 [ %93, %.preheader84 ], [ %86, %.loopexit86 ]
  %90 = phi i64 [ %96, %.preheader84 ], [ 0, %.loopexit86 ]
  %91 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %88
  %92 = load i32, ptr %91, align 4, !tbaa !5
  %93 = add i32 %92, %89
  %94 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %88
  store i32 %89, ptr %94, align 4, !tbaa !5
  %95 = add nuw nsw i64 %88, 1
  %96 = add nuw nsw i64 %90, 1
  %97 = icmp eq i64 %96, %53
  br i1 %97, label %.loopexit85, label %.preheader84, !llvm.loop !35

.loopexit85:                                      ; preds = %.preheader84, %.loopexit86, %43
  %98 = phi i32 [ 0, %43 ], [ %84, %.loopexit86 ], [ %93, %.preheader84 ]
  store i32 %98, ptr %19, align 4, !tbaa !5
  %99 = zext i32 %48 to i64
  %100 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %99
  store i32 %98, ptr %100, align 4, !tbaa !5
  %101 = load i32, ptr %9, align 4, !tbaa !5
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %145, label %103

103:                                              ; preds = %.loopexit85
  %104 = getelementptr inbounds nuw i8, ptr %3, i64 736
  %105 = zext i32 %101 to i64
  %106 = and i64 %105, 1
  %107 = icmp eq i32 %101, 1
  br i1 %107, label %.loopexit83, label %108

108:                                              ; preds = %103
  %109 = and i64 %105, 4294967294
  br label %110

110:                                              ; preds = %110, %108
  %111 = phi i64 [ 0, %108 ], [ %131, %110 ]
  %112 = getelementptr inbounds nuw i8, ptr %23, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !9
  %114 = zext i8 %113 to i64
  %115 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !5
  %117 = add i32 %116, 1
  store i32 %117, ptr %115, align 4, !tbaa !5
  %118 = trunc i64 %111 to i8
  %119 = zext i32 %116 to i64
  %120 = getelementptr inbounds nuw i8, ptr %104, i64 %119
  store i8 %118, ptr %120, align 1, !tbaa !36
  %121 = or disjoint i64 %111, 1
  %122 = getelementptr inbounds nuw i8, ptr %23, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !9
  %124 = zext i8 %123 to i64
  %125 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !5
  %127 = add i32 %126, 1
  store i32 %127, ptr %125, align 4, !tbaa !5
  %128 = trunc i64 %121 to i8
  %129 = zext i32 %126 to i64
  %130 = getelementptr inbounds nuw i8, ptr %104, i64 %129
  store i8 %128, ptr %130, align 1, !tbaa !36
  %131 = add nuw i64 %111, 2
  %132 = icmp eq i64 %131, %109
  br i1 %132, label %.loopexit83, label %110, !llvm.loop !38

.loopexit83:                                      ; preds = %110, %103
  %133 = phi i64 [ 0, %103 ], [ %109, %110 ]
  %134 = icmp eq i64 %106, 0
  br i1 %134, label %145, label %135

135:                                              ; preds = %.loopexit83
  %136 = getelementptr inbounds nuw i8, ptr %23, i64 %133
  %137 = load i8, ptr %136, align 1, !tbaa !9
  %138 = zext i8 %137 to i64
  %139 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !5
  %141 = add i32 %140, 1
  store i32 %141, ptr %139, align 4, !tbaa !5
  %142 = trunc i64 %133 to i8
  %143 = zext i32 %140 to i64
  %144 = getelementptr inbounds nuw i8, ptr %104, i64 %143
  store i8 %142, ptr %144, align 1, !tbaa !36
  br label %145

145:                                              ; preds = %135, %.loopexit83, %.loopexit85
  store i32 0, ptr %19, align 4, !tbaa !5
  %146 = xor i32 %28, -1
  %147 = add nsw i32 %47, %146
  br i1 %49, label %148, label %187

148:                                              ; preds = %145
  %149 = zext i32 %34 to i64
  %150 = add nsw i64 %149, -1
  %151 = and i64 %150, 1
  %152 = icmp eq i32 %34, 2
  br i1 %152, label %.loopexit82, label %153

153:                                              ; preds = %148
  %154 = and i64 %150, -2
  br label %155

155:                                              ; preds = %155, %153
  %156 = phi i64 [ 1, %153 ], [ %174, %155 ]
  %157 = phi i32 [ 0, %153 ], [ %172, %155 ]
  %158 = phi i64 [ 0, %153 ], [ %175, %155 ]
  %159 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %156
  %160 = load i32, ptr %159, align 4, !tbaa !5
  %161 = trunc nuw i64 %156 to i32
  %162 = add i32 %147, %161
  %163 = shl i32 %160, %162
  %164 = add i32 %163, %157
  %165 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %156
  store i32 %157, ptr %165, align 4, !tbaa !5
  %166 = add nuw nsw i64 %156, 1
  %167 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !5
  %169 = trunc nuw i64 %166 to i32
  %170 = add i32 %147, %169
  %171 = shl i32 %168, %170
  %172 = add i32 %171, %164
  %173 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %166
  store i32 %164, ptr %173, align 4, !tbaa !5
  %174 = add nuw nsw i64 %156, 2
  %175 = add nuw i64 %158, 2
  %176 = icmp eq i64 %175, %154
  br i1 %176, label %.loopexit82, label %155, !llvm.loop !39

.loopexit82:                                      ; preds = %155, %148
  %177 = phi i64 [ 1, %148 ], [ %174, %155 ]
  %178 = phi i32 [ 0, %148 ], [ %172, %155 ]
  %179 = icmp eq i64 %151, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %.loopexit82
  %181 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %177
  store i32 %178, ptr %181, align 4, !tbaa !5
  br label %182

182:                                              ; preds = %180, %.loopexit82
  %183 = sub i32 %31, %35
  %184 = add nuw nsw i32 %47, 1
  %185 = sub i32 %184, %183
  %186 = icmp ult i32 %183, %185
  br i1 %186, label %189, label %.loopexit81

187:                                              ; preds = %145
  %188 = sub nsw i32 %31, %35
  br label %.loopexit81

189:                                              ; preds = %182
  %190 = zext i32 %33 to i64
  %191 = icmp ult i64 %150, 8
  %192 = and i64 %150, -8
  %193 = or disjoint i64 %192, 1
  %194 = icmp eq i64 %150, %192
  %195 = add i32 %47, %indvars.iv
  br label %196

196:                                              ; preds = %.loopexit78, %189
  %197 = phi i64 [ 0, %189 ], [ %247, %.loopexit78 ]
  %198 = phi i64 [ %190, %189 ], [ %246, %.loopexit78 ]
  %199 = getelementptr inbounds nuw [52 x i8], ptr %3, i64 %198
  %200 = trunc i64 %198 to i32
  %201 = or i64 %197, %190
  %202 = icmp eq i64 %201, 0
  %or.cond = select i1 %191, i1 true, i1 %202
  br i1 %or.cond, label %220, label %203

203:                                              ; preds = %196
  %204 = insertelement <4 x i32> poison, i32 %200, i64 0
  %205 = shufflevector <4 x i32> %204, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %206

206:                                              ; preds = %206, %203
  %207 = phi i64 [ 0, %203 ], [ %217, %206 ]
  %208 = or disjoint i64 %207, 1
  %209 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %208
  %210 = getelementptr inbounds nuw i8, ptr %209, i64 16
  %211 = load <4 x i32>, ptr %209, align 4, !tbaa !5
  %212 = load <4 x i32>, ptr %210, align 4, !tbaa !5
  %213 = lshr <4 x i32> %211, %205
  %214 = lshr <4 x i32> %212, %205
  %215 = getelementptr inbounds nuw [4 x i8], ptr %199, i64 %208
  %216 = getelementptr inbounds nuw i8, ptr %215, i64 16
  store <4 x i32> %213, ptr %215, align 4, !tbaa !5
  store <4 x i32> %214, ptr %216, align 4, !tbaa !5
  %217 = add nuw i64 %207, 8
  %218 = icmp eq i64 %217, %192
  br i1 %218, label %219, label %206, !llvm.loop !40

219:                                              ; preds = %206
  br i1 %194, label %.loopexit78, label %220

220:                                              ; preds = %219, %196
  %221 = phi i64 [ %193, %219 ], [ 1, %196 ]
  %222 = sub nsw i64 %149, %221
  %223 = and i64 %222, 3
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %.loopexit80, label %.preheader79

.preheader79:                                     ; preds = %220, %.preheader79
  %225 = phi i64 [ %231, %.preheader79 ], [ %221, %220 ]
  %226 = phi i64 [ %232, %.preheader79 ], [ 0, %220 ]
  %227 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %225
  %228 = load i32, ptr %227, align 4, !tbaa !5
  %229 = lshr i32 %228, %200
  %230 = getelementptr inbounds nuw [4 x i8], ptr %199, i64 %225
  store i32 %229, ptr %230, align 4, !tbaa !5
  %231 = add nuw nsw i64 %225, 1
  %232 = add nuw nsw i64 %226, 1
  %233 = icmp eq i64 %232, %223
  br i1 %233, label %.loopexit80, label %.preheader79, !llvm.loop !41

.loopexit80:                                      ; preds = %.preheader79, %220
  %234 = phi i64 [ %221, %220 ], [ %231, %.preheader79 ]
  %235 = sub nsw i64 %221, %149
  %236 = icmp ugt i64 %235, -4
  br i1 %236, label %.loopexit78, label %.preheader77.preheader

.preheader77.preheader:                           ; preds = %.loopexit80
  %237 = insertelement <4 x i32> poison, i32 %200, i64 0
  %238 = shufflevector <4 x i32> %237, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.preheader77

.preheader77:                                     ; preds = %.preheader77.preheader, %.preheader77
  %239 = phi i64 [ %244, %.preheader77 ], [ %234, %.preheader77.preheader ]
  %240 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %239
  %241 = getelementptr inbounds nuw [4 x i8], ptr %199, i64 %239
  %242 = load <4 x i32>, ptr %240, align 4, !tbaa !5
  %243 = lshr <4 x i32> %242, %238
  store <4 x i32> %243, ptr %241, align 4, !tbaa !5
  %244 = add nuw nsw i64 %239, 4
  %245 = icmp eq i64 %244, %149
  br i1 %245, label %.loopexit78, label %.preheader77, !llvm.loop !42

.loopexit78:                                      ; preds = %.preheader77, %.loopexit80, %219
  %246 = add nuw nsw i64 %198, 1
  %247 = add nuw nsw i64 %197, 1
  %lftr.wideiv = trunc i64 %247 to i32
  %exitcond = icmp eq i32 %195, %lftr.wideiv
  br i1 %exitcond, label %.loopexit81, label %196, !llvm.loop !43

.loopexit81:                                      ; preds = %.loopexit78, %187, %182
  %248 = phi i32 [ %183, %182 ], [ %188, %187 ], [ %183, %.loopexit78 ]
  %249 = getelementptr i8, ptr %3, i64 736
  %250 = sub nsw i32 %31, %47
  %251 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %35, i32 1), !nosanitize !17
  %252 = extractvalue { i32, i1 } %251, 0, !nosanitize !17
  %253 = extractvalue { i32, i1 } %251, 1, !nosanitize !17
  br i1 %253, label %.loopexit72, label %254, !prof !18, !nosanitize !17

254:                                              ; preds = %.loopexit81
  %255 = icmp sgt i32 %252, 1
  br i1 %255, label %256, label %.loopexit76

256:                                              ; preds = %254
  %257 = zext nneg i32 %252 to i64
  %258 = add i64 %7, 735
  %259 = add i64 %7, 735
  %260 = add i64 %7, 735
  %261 = add i64 %7, 735
  br label %262

.loopexit72:                                      ; preds = %.loopexit61, %697, %.loopexit81
  call void @llvm.ubsantrap(i8 0) #18, !nosanitize !17
  unreachable, !nosanitize !17

262:                                              ; preds = %.loopexit63, %256
  %263 = phi i64 [ 1, %256 ], [ %266, %.loopexit63 ]
  %264 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !5
  %266 = add nuw nsw i64 %263, 1
  %267 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %266
  %268 = load i32, ptr %267, align 4, !tbaa !5
  %269 = trunc nuw nsw i64 %263 to i32
  %270 = sub i32 %31, %269
  %271 = sub i32 %47, %270
  %272 = icmp ult i32 %271, %248
  %273 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %263
  %274 = load i32, ptr %273, align 4, !tbaa !5
  br i1 %272, label %.split1, label %275

275:                                              ; preds = %262
  %276 = and i32 %271, 31
  %277 = shl nuw i32 1, %276
  %278 = icmp eq i32 %265, %268
  br i1 %278, label %.loopexit63, label %279

279:                                              ; preds = %275
  %280 = add i32 %270, %250
  %281 = call i32 @llvm.smax.i32(i32 %280, i32 1)
  %282 = zext i32 %270 to i64
  %283 = getelementptr inbounds nuw [52 x i8], ptr %3, i64 %282
  %284 = icmp sgt i32 %280, 1
  %285 = shl i32 %270, 16
  %286 = add i32 %285, 16777216
  %287 = zext nneg i32 %281 to i64
  %288 = getelementptr inbounds nuw [4 x i8], ptr %283, i64 %287
  %289 = icmp slt i32 %281, %252
  %290 = add i32 %270, %31
  br i1 %289, label %291, label %699

291:                                              ; preds = %279
  %292 = sext i32 %265 to i64
  br label %293

293:                                              ; preds = %692, %291
  %294 = phi i64 [ %292, %291 ], [ %693, %692 ]
  %295 = phi i32 [ %274, %291 ], [ %695, %692 ]
  %296 = sext i32 %295 to i64
  %297 = getelementptr [4 x i8], ptr %15, i64 %296
  %298 = getelementptr inbounds i8, ptr %249, i64 %294
  %299 = load i8, ptr %298, align 1, !tbaa !36
  %300 = zext i8 %299 to i32
  br i1 %284, label %301, label %.loopexit59

301:                                              ; preds = %293
  %302 = or disjoint i32 %286, %300
  %303 = zext i32 %302 to i64
  %304 = mul nuw i64 %303, 4294967297
  %305 = load i32, ptr %288, align 4, !tbaa !5
  switch i32 %277, label %309 [
    i32 2, label %308
    i32 4, label %306
  ]

306:                                              ; preds = %301
  store i64 %304, ptr %297, align 2
  %307 = getelementptr inbounds nuw i8, ptr %297, i64 8
  store i64 %304, ptr %307, align 2
  br label %.loopexit59

308:                                              ; preds = %301
  store i64 %304, ptr %297, align 2
  br label %.loopexit59

309:                                              ; preds = %301
  %310 = icmp sgt i32 %305, 0
  br i1 %310, label %311, label %.loopexit59

311:                                              ; preds = %309
  %312 = zext nneg i32 %305 to i64
  store i64 %304, ptr %297, align 2
  %313 = getelementptr inbounds nuw i8, ptr %297, i64 8
  store i64 %304, ptr %313, align 2
  %314 = getelementptr inbounds nuw i8, ptr %297, i64 16
  store i64 %304, ptr %314, align 2
  %315 = getelementptr inbounds nuw i8, ptr %297, i64 24
  store i64 %304, ptr %315, align 2
  %316 = icmp ugt i32 %305, 8
  br i1 %316, label %.lr.ph228, label %.loopexit59, !llvm.loop !44

.lr.ph228:                                        ; preds = %311
  br label %324, !llvm.loop !44

317:                                              ; preds = %332
  %318 = getelementptr inbounds nuw [4 x i8], ptr %297, i64 %333
  store i64 %304, ptr %318, align 2
  %319 = getelementptr inbounds nuw i8, ptr %318, i64 8
  store i64 %304, ptr %319, align 2
  %320 = getelementptr inbounds nuw i8, ptr %318, i64 16
  store i64 %304, ptr %320, align 2
  %321 = getelementptr inbounds nuw i8, ptr %318, i64 24
  store i64 %304, ptr %321, align 2
  %322 = or disjoint i64 %333, 8
  %323 = icmp samesign ult i64 %322, %312
  br i1 %323, label %324, label %..loopexit59.loopexit_crit_edge229, !llvm.loop !44

324:                                              ; preds = %.lr.ph228, %317
  %325 = phi i64 [ 0, %.lr.ph228 ], [ %333, %317 ]
  %326 = getelementptr inbounds nuw [4 x i8], ptr %297, i64 %325
  %327 = getelementptr inbounds nuw i8, ptr %326, i64 32
  store i64 %304, ptr %327, align 2
  %328 = getelementptr inbounds nuw i8, ptr %326, i64 40
  store i64 %304, ptr %328, align 2
  %329 = getelementptr inbounds nuw i8, ptr %326, i64 48
  store i64 %304, ptr %329, align 2
  %330 = getelementptr inbounds nuw i8, ptr %326, i64 56
  store i64 %304, ptr %330, align 2
  %331 = icmp eq i64 %325, 2147483632
  br i1 %331, label %.loopexit60, label %332, !prof !18, !nosanitize !17

332:                                              ; preds = %324
  %333 = add nuw nsw i64 %325, 16
  %334 = trunc i64 %333 to i32
  %335 = icmp sgt i32 %305, %334
  br i1 %335, label %317, label %..loopexit59.loopexit_crit_edge229, !llvm.loop !44

..loopexit59.loopexit_crit_edge229:               ; preds = %317, %332
  br label %.loopexit59, !llvm.loop !44

.loopexit59:                                      ; preds = %311, %..loopexit59.loopexit_crit_edge229, %309, %308, %306, %293
  %336 = or disjoint i32 %300, 33554432
  br label %.split

.split:                                           ; preds = %.loopexit46, %.loopexit59
  %337 = phi i64 [ %287, %.loopexit59 ], [ %338, %.loopexit46 ]
  %338 = add nuw nsw i64 %337, 1
  %339 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %337
  %340 = load i32, ptr %339, align 4, !tbaa !5
  %341 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %338
  %342 = load i32, ptr %341, align 4, !tbaa !5
  %343 = trunc nsw i64 %337 to i32
  %344 = sub i32 %290, %343
  %345 = getelementptr inbounds nuw [4 x i8], ptr %283, i64 %337
  %346 = load i32, ptr %345, align 4, !tbaa !5
  %347 = zext i32 %346 to i64
  %348 = getelementptr [4 x i8], ptr %297, i64 %347
  %349 = sext i32 %340 to i64
  %350 = getelementptr i8, ptr %249, i64 %349
  %351 = sext i32 %342 to i64
  %352 = getelementptr i8, ptr %249, i64 %351
  %353 = sub i32 %47, %344
  %354 = and i32 %353, 31
  %355 = shl nuw i32 1, %354
  %356 = icmp eq i32 %340, %342
  switch i32 %354, label %640 [
    i32 0, label %559
    i32 1, label %470
    i32 2, label %406
    i32 3, label %357
  ]

357:                                              ; preds = %.split
  br i1 %356, label %.loopexit46, label %358

358:                                              ; preds = %357
  %359 = shl i32 %344, 16
  %360 = add i32 %359, %336
  %361 = sub nsw i64 %351, %349
  %362 = and i64 %361, 1
  %363 = icmp eq i64 %362, 0
  br i1 %363, label %376, label %364

364:                                              ; preds = %358
  %365 = load i8, ptr %350, align 1, !tbaa !36
  %366 = zext i8 %365 to i32
  %367 = shl nuw nsw i32 %366, 8
  %368 = or disjoint i32 %367, %360
  %369 = zext i32 %368 to i64
  %370 = mul nuw i64 %369, 4294967297
  store i64 %370, ptr %348, align 2
  %371 = getelementptr inbounds nuw i8, ptr %348, i64 8
  store i64 %370, ptr %371, align 2
  %372 = getelementptr inbounds nuw i8, ptr %348, i64 16
  store i64 %370, ptr %372, align 2
  %373 = getelementptr inbounds nuw i8, ptr %348, i64 24
  store i64 %370, ptr %373, align 2
  %374 = getelementptr inbounds nuw i8, ptr %348, i64 32
  %375 = getelementptr inbounds nuw i8, ptr %350, i64 1
  br label %376

376:                                              ; preds = %364, %358
  %377 = phi ptr [ %348, %358 ], [ %374, %364 ]
  %378 = phi ptr [ %350, %358 ], [ %375, %364 ]
  %379 = add nsw i64 %351, -1
  %380 = icmp eq i64 %379, %349
  br i1 %380, label %.loopexit46, label %.preheader53

.preheader53:                                     ; preds = %376, %.preheader53
  %381 = phi ptr [ %403, %.preheader53 ], [ %377, %376 ]
  %382 = phi ptr [ %404, %.preheader53 ], [ %378, %376 ]
  %383 = load i8, ptr %382, align 1, !tbaa !36
  %384 = zext i8 %383 to i32
  %385 = shl nuw nsw i32 %384, 8
  %386 = or disjoint i32 %385, %360
  %387 = zext i32 %386 to i64
  %388 = mul nuw i64 %387, 4294967297
  store i64 %388, ptr %381, align 2
  %389 = getelementptr inbounds nuw i8, ptr %381, i64 8
  store i64 %388, ptr %389, align 2
  %390 = getelementptr inbounds nuw i8, ptr %381, i64 16
  store i64 %388, ptr %390, align 2
  %391 = getelementptr inbounds nuw i8, ptr %381, i64 24
  store i64 %388, ptr %391, align 2
  %392 = getelementptr inbounds nuw i8, ptr %381, i64 32
  %393 = getelementptr inbounds nuw i8, ptr %382, i64 1
  %394 = load i8, ptr %393, align 1, !tbaa !36
  %395 = zext i8 %394 to i32
  %396 = shl nuw nsw i32 %395, 8
  %397 = or disjoint i32 %396, %360
  %398 = zext i32 %397 to i64
  %399 = mul nuw i64 %398, 4294967297
  store i64 %399, ptr %392, align 2
  %400 = getelementptr inbounds nuw i8, ptr %381, i64 40
  store i64 %399, ptr %400, align 2
  %401 = getelementptr inbounds nuw i8, ptr %381, i64 48
  store i64 %399, ptr %401, align 2
  %402 = getelementptr inbounds nuw i8, ptr %381, i64 56
  store i64 %399, ptr %402, align 2
  %403 = getelementptr inbounds nuw i8, ptr %381, i64 64
  %404 = getelementptr inbounds nuw i8, ptr %382, i64 2
  %405 = icmp eq ptr %404, %352
  br i1 %405, label %.loopexit46, label %.preheader53, !llvm.loop !45

406:                                              ; preds = %.split
  br i1 %356, label %.loopexit46, label %407

407:                                              ; preds = %406
  %408 = shl i32 %344, 16
  %409 = add i32 %408, %336
  %410 = sub nsw i64 %351, %349
  %411 = and i64 %410, 3
  %412 = icmp eq i64 %411, 0
  br i1 %412, label %.loopexit52, label %.preheader51

.preheader51:                                     ; preds = %407, %.preheader51
  %413 = phi ptr [ %423, %.preheader51 ], [ %348, %407 ]
  %414 = phi ptr [ %424, %.preheader51 ], [ %350, %407 ]
  %415 = phi i64 [ %425, %.preheader51 ], [ 0, %407 ]
  %416 = load i8, ptr %414, align 1, !tbaa !36
  %417 = zext i8 %416 to i32
  %418 = shl nuw nsw i32 %417, 8
  %419 = or disjoint i32 %418, %409
  %420 = zext i32 %419 to i64
  %421 = mul nuw i64 %420, 4294967297
  store i64 %421, ptr %413, align 2
  %422 = getelementptr inbounds nuw i8, ptr %413, i64 8
  store i64 %421, ptr %422, align 2
  %423 = getelementptr inbounds nuw i8, ptr %413, i64 16
  %424 = getelementptr inbounds nuw i8, ptr %414, i64 1
  %425 = add nuw nsw i64 %415, 1
  %426 = icmp eq i64 %425, %411
  br i1 %426, label %.loopexit52, label %.preheader51, !llvm.loop !46

.loopexit52:                                      ; preds = %.preheader51, %407
  %427 = phi ptr [ %348, %407 ], [ %423, %.preheader51 ]
  %428 = phi ptr [ %350, %407 ], [ %424, %.preheader51 ]
  %429 = sub nsw i64 %349, %351
  %430 = icmp ugt i64 %429, -4
  br i1 %430, label %.loopexit46, label %.preheader49

.preheader49:                                     ; preds = %.loopexit52, %.preheader49
  %431 = phi ptr [ %467, %.preheader49 ], [ %427, %.loopexit52 ]
  %432 = phi ptr [ %468, %.preheader49 ], [ %428, %.loopexit52 ]
  %433 = load i8, ptr %432, align 1, !tbaa !36
  %434 = zext i8 %433 to i32
  %435 = shl nuw nsw i32 %434, 8
  %436 = or disjoint i32 %435, %409
  %437 = zext i32 %436 to i64
  %438 = mul nuw i64 %437, 4294967297
  store i64 %438, ptr %431, align 2
  %439 = getelementptr inbounds nuw i8, ptr %431, i64 8
  store i64 %438, ptr %439, align 2
  %440 = getelementptr inbounds nuw i8, ptr %431, i64 16
  %441 = getelementptr inbounds nuw i8, ptr %432, i64 1
  %442 = load i8, ptr %441, align 1, !tbaa !36
  %443 = zext i8 %442 to i32
  %444 = shl nuw nsw i32 %443, 8
  %445 = or disjoint i32 %444, %409
  %446 = zext i32 %445 to i64
  %447 = mul nuw i64 %446, 4294967297
  store i64 %447, ptr %440, align 2
  %448 = getelementptr inbounds nuw i8, ptr %431, i64 24
  store i64 %447, ptr %448, align 2
  %449 = getelementptr inbounds nuw i8, ptr %431, i64 32
  %450 = getelementptr inbounds nuw i8, ptr %432, i64 2
  %451 = load i8, ptr %450, align 1, !tbaa !36
  %452 = zext i8 %451 to i32
  %453 = shl nuw nsw i32 %452, 8
  %454 = or disjoint i32 %453, %409
  %455 = zext i32 %454 to i64
  %456 = mul nuw i64 %455, 4294967297
  store i64 %456, ptr %449, align 2
  %457 = getelementptr inbounds nuw i8, ptr %431, i64 40
  store i64 %456, ptr %457, align 2
  %458 = getelementptr inbounds nuw i8, ptr %431, i64 48
  %459 = getelementptr inbounds nuw i8, ptr %432, i64 3
  %460 = load i8, ptr %459, align 1, !tbaa !36
  %461 = zext i8 %460 to i32
  %462 = shl nuw nsw i32 %461, 8
  %463 = or disjoint i32 %462, %409
  %464 = zext i32 %463 to i64
  %465 = mul nuw i64 %464, 4294967297
  store i64 %465, ptr %458, align 2
  %466 = getelementptr inbounds nuw i8, ptr %431, i64 56
  store i64 %465, ptr %466, align 2
  %467 = getelementptr inbounds nuw i8, ptr %431, i64 64
  %468 = getelementptr inbounds nuw i8, ptr %432, i64 4
  %469 = icmp eq ptr %468, %352
  br i1 %469, label %.loopexit46, label %.preheader49, !llvm.loop !47

470:                                              ; preds = %.split
  br i1 %356, label %.loopexit46, label %471

471:                                              ; preds = %470
  %472 = shl i32 %344, 16
  %473 = add i32 %472, %336
  %474 = sub nsw i64 %351, %349
  %475 = icmp ult i64 %474, 8
  br i1 %475, label %.preheader234, label %476

476:                                              ; preds = %471
  %477 = add nsw i64 %347, %296
  %478 = shl nsw i64 %477, 2
  %479 = shl nsw i64 %474, 3
  %480 = getelementptr i8, ptr %15, i64 %479
  %481 = getelementptr i8, ptr %480, i64 %478
  %482 = icmp ult ptr %348, %352
  %483 = icmp ult ptr %350, %481
  %484 = and i1 %482, %483
  br i1 %484, label %.preheader234, label %485

485:                                              ; preds = %476
  %486 = and i64 %474, -4
  %487 = insertelement <2 x i32> poison, i32 %473, i64 0
  %488 = shufflevector <2 x i32> %487, <2 x i32> poison, <2 x i32> zeroinitializer
  %489 = getelementptr i8, ptr %348, i64 16
  br label %490

490:                                              ; preds = %490, %485
  %491 = phi i64 [ 0, %485 ], [ %507, %490 ]
  %492 = shl i64 %491, 3
  %493 = getelementptr i8, ptr %348, i64 %492
  %494 = getelementptr i8, ptr %489, i64 %492
  %495 = getelementptr i8, ptr %350, i64 %491
  %496 = getelementptr i8, ptr %495, i64 2
  %497 = load <2 x i8>, ptr %495, align 1, !tbaa !36, !alias.scope !48
  %498 = load <2 x i8>, ptr %496, align 1, !tbaa !36, !alias.scope !48
  %499 = zext <2 x i8> %497 to <2 x i32>
  %500 = zext <2 x i8> %498 to <2 x i32>
  %501 = shl nuw nsw <2 x i32> %499, splat (i32 8)
  %502 = shl nuw nsw <2 x i32> %500, splat (i32 8)
  %503 = or disjoint <2 x i32> %501, %488
  %504 = or disjoint <2 x i32> %502, %488
  %505 = shufflevector <2 x i32> %503, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %505, ptr %493, align 2
  %506 = shufflevector <2 x i32> %504, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %506, ptr %494, align 2
  %507 = add nuw i64 %491, 4
  %508 = icmp eq i64 %507, %486
  br i1 %508, label %509, label %490, !llvm.loop !51

509:                                              ; preds = %490
  %510 = shl nsw i64 %486, 3
  %511 = getelementptr i8, ptr %348, i64 %510
  %512 = getelementptr i8, ptr %350, i64 %486
  %513 = icmp eq i64 %474, %486
  br i1 %513, label %.loopexit46, label %.preheader234

.preheader234:                                    ; preds = %509, %476, %471
  %.ph235 = phi ptr [ %511, %509 ], [ %348, %471 ], [ %348, %476 ]
  %.ph236 = phi ptr [ %512, %509 ], [ %350, %471 ], [ %350, %476 ]
  %514 = add i64 %7, %351
  %.ph236269 = ptrtoint ptr %.ph236 to i64
  %515 = sub i64 %514, %.ph236269
  %516 = add i64 %258, %351
  %517 = sub i64 %516, %.ph236269
  %xtraiter = and i64 %515, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader234, %.prol.preheader
  %518 = phi ptr [ %525, %.prol.preheader ], [ %.ph235, %.preheader234 ]
  %519 = phi ptr [ %526, %.prol.preheader ], [ %.ph236, %.preheader234 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader234 ]
  %520 = load i8, ptr %519, align 1, !tbaa !36
  %521 = zext i8 %520 to i32
  %522 = shl nuw nsw i32 %521, 8
  %523 = or disjoint i32 %522, %473
  store i32 %523, ptr %518, align 2
  %524 = getelementptr inbounds nuw i8, ptr %518, i64 4
  store i32 %523, ptr %524, align 2
  %525 = getelementptr inbounds nuw i8, ptr %518, i64 8
  %526 = getelementptr inbounds nuw i8, ptr %519, i64 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !52

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader234
  %.unr = phi ptr [ %.ph235, %.preheader234 ], [ %525, %.prol.preheader ]
  %.unr270 = phi ptr [ %.ph236, %.preheader234 ], [ %526, %.prol.preheader ]
  %527 = icmp ult i64 %517, 3
  br i1 %527, label %.loopexit46, label %.preheader234.new

.preheader234.new:                                ; preds = %.prol.loopexit, %.preheader234.new
  %528 = phi ptr [ %556, %.preheader234.new ], [ %.unr, %.prol.loopexit ]
  %529 = phi ptr [ %557, %.preheader234.new ], [ %.unr270, %.prol.loopexit ]
  %530 = load i8, ptr %529, align 1, !tbaa !36
  %531 = zext i8 %530 to i32
  %532 = shl nuw nsw i32 %531, 8
  %533 = or disjoint i32 %532, %473
  store i32 %533, ptr %528, align 2
  %534 = getelementptr inbounds nuw i8, ptr %528, i64 4
  store i32 %533, ptr %534, align 2
  %535 = getelementptr inbounds nuw i8, ptr %528, i64 8
  %536 = getelementptr inbounds nuw i8, ptr %529, i64 1
  %537 = load i8, ptr %536, align 1, !tbaa !36
  %538 = zext i8 %537 to i32
  %539 = shl nuw nsw i32 %538, 8
  %540 = or disjoint i32 %539, %473
  store i32 %540, ptr %535, align 2
  %541 = getelementptr inbounds nuw i8, ptr %528, i64 12
  store i32 %540, ptr %541, align 2
  %542 = getelementptr inbounds nuw i8, ptr %528, i64 16
  %543 = getelementptr inbounds nuw i8, ptr %529, i64 2
  %544 = load i8, ptr %543, align 1, !tbaa !36
  %545 = zext i8 %544 to i32
  %546 = shl nuw nsw i32 %545, 8
  %547 = or disjoint i32 %546, %473
  store i32 %547, ptr %542, align 2
  %548 = getelementptr inbounds nuw i8, ptr %528, i64 20
  store i32 %547, ptr %548, align 2
  %549 = getelementptr inbounds nuw i8, ptr %528, i64 24
  %550 = getelementptr inbounds nuw i8, ptr %529, i64 3
  %551 = load i8, ptr %550, align 1, !tbaa !36
  %552 = zext i8 %551 to i32
  %553 = shl nuw nsw i32 %552, 8
  %554 = or disjoint i32 %553, %473
  store i32 %554, ptr %549, align 2
  %555 = getelementptr inbounds nuw i8, ptr %528, i64 28
  store i32 %554, ptr %555, align 2
  %556 = getelementptr inbounds nuw i8, ptr %528, i64 32
  %557 = getelementptr inbounds nuw i8, ptr %529, i64 4
  %558 = icmp eq ptr %557, %352
  br i1 %558, label %.loopexit46, label %.preheader234.new, !llvm.loop !53

559:                                              ; preds = %.split
  br i1 %356, label %.loopexit46, label %560

560:                                              ; preds = %559
  %561 = shl i32 %344, 16
  %562 = add i32 %561, %336
  %563 = sub nsw i64 %351, %349
  %564 = icmp ult i64 %563, 8
  br i1 %564, label %.preheader230, label %565

565:                                              ; preds = %560
  %566 = sub nsw i64 %296, %349
  %567 = add nsw i64 %566, %351
  %568 = add nsw i64 %567, %347
  %569 = shl nsw i64 %568, 2
  %570 = getelementptr i8, ptr %15, i64 %569
  %571 = icmp ult ptr %348, %352
  %572 = icmp ult ptr %350, %570
  %573 = and i1 %571, %572
  br i1 %573, label %.preheader230, label %574

574:                                              ; preds = %565
  %575 = and i64 %563, -8
  %576 = insertelement <4 x i32> poison, i32 %562, i64 0
  %577 = shufflevector <4 x i32> %576, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %578

578:                                              ; preds = %578, %574
  %579 = phi i64 [ 0, %574 ], [ %593, %578 ]
  %580 = shl i64 %579, 2
  %581 = getelementptr i8, ptr %348, i64 %580
  %582 = getelementptr i8, ptr %350, i64 %579
  %583 = getelementptr i8, ptr %582, i64 4
  %584 = load <4 x i8>, ptr %582, align 1, !tbaa !36, !alias.scope !54
  %585 = load <4 x i8>, ptr %583, align 1, !tbaa !36, !alias.scope !54
  %586 = zext <4 x i8> %584 to <4 x i32>
  %587 = zext <4 x i8> %585 to <4 x i32>
  %588 = shl nuw nsw <4 x i32> %586, splat (i32 8)
  %589 = shl nuw nsw <4 x i32> %587, splat (i32 8)
  %590 = or disjoint <4 x i32> %588, %577
  %591 = or disjoint <4 x i32> %589, %577
  %592 = getelementptr i8, ptr %581, i64 16
  store <4 x i32> %590, ptr %581, align 2, !alias.scope !57, !noalias !54
  store <4 x i32> %591, ptr %592, align 2, !alias.scope !57, !noalias !54
  %593 = add nuw i64 %579, 8
  %594 = icmp eq i64 %593, %575
  br i1 %594, label %595, label %578, !llvm.loop !59

595:                                              ; preds = %578
  %596 = shl nsw i64 %575, 2
  %597 = getelementptr i8, ptr %348, i64 %596
  %598 = getelementptr i8, ptr %350, i64 %575
  %599 = icmp eq i64 %563, %575
  br i1 %599, label %.loopexit46, label %.preheader230

.preheader230:                                    ; preds = %595, %565, %560
  %.ph231 = phi ptr [ %597, %595 ], [ %348, %560 ], [ %348, %565 ]
  %.ph232 = phi ptr [ %598, %595 ], [ %350, %560 ], [ %350, %565 ]
  %600 = add i64 %7, %351
  %.ph232273 = ptrtoint ptr %.ph232 to i64
  %601 = sub i64 %600, %.ph232273
  %602 = add i64 %259, %351
  %603 = sub i64 %602, %.ph232273
  %xtraiter274 = and i64 %601, 3
  %lcmp.mod275.not = icmp eq i64 %xtraiter274, 0
  br i1 %lcmp.mod275.not, label %.prol.loopexit272, label %.prol.preheader271

.prol.preheader271:                               ; preds = %.preheader230, %.prol.preheader271
  %604 = phi ptr [ %610, %.prol.preheader271 ], [ %.ph231, %.preheader230 ]
  %605 = phi ptr [ %611, %.prol.preheader271 ], [ %.ph232, %.preheader230 ]
  %prol.iter276 = phi i64 [ %prol.iter276.next, %.prol.preheader271 ], [ 0, %.preheader230 ]
  %606 = load i8, ptr %605, align 1, !tbaa !36
  %607 = zext i8 %606 to i32
  %608 = shl nuw nsw i32 %607, 8
  %609 = or disjoint i32 %608, %562
  %610 = getelementptr inbounds nuw i8, ptr %604, i64 4
  store i32 %609, ptr %604, align 2
  %611 = getelementptr inbounds nuw i8, ptr %605, i64 1
  %prol.iter276.next = add i64 %prol.iter276, 1
  %prol.iter276.cmp.not = icmp eq i64 %prol.iter276.next, %xtraiter274
  br i1 %prol.iter276.cmp.not, label %.prol.loopexit272, label %.prol.preheader271, !llvm.loop !60

.prol.loopexit272:                                ; preds = %.prol.preheader271, %.preheader230
  %.unr277 = phi ptr [ %.ph231, %.preheader230 ], [ %610, %.prol.preheader271 ]
  %.unr278 = phi ptr [ %.ph232, %.preheader230 ], [ %611, %.prol.preheader271 ]
  %612 = icmp ult i64 %603, 3
  br i1 %612, label %.loopexit46, label %.preheader230.new

.preheader230.new:                                ; preds = %.prol.loopexit272, %.preheader230.new
  %613 = phi ptr [ %637, %.preheader230.new ], [ %.unr277, %.prol.loopexit272 ]
  %614 = phi ptr [ %638, %.preheader230.new ], [ %.unr278, %.prol.loopexit272 ]
  %615 = load i8, ptr %614, align 1, !tbaa !36
  %616 = zext i8 %615 to i32
  %617 = shl nuw nsw i32 %616, 8
  %618 = or disjoint i32 %617, %562
  %619 = getelementptr inbounds nuw i8, ptr %613, i64 4
  store i32 %618, ptr %613, align 2
  %620 = getelementptr inbounds nuw i8, ptr %614, i64 1
  %621 = load i8, ptr %620, align 1, !tbaa !36
  %622 = zext i8 %621 to i32
  %623 = shl nuw nsw i32 %622, 8
  %624 = or disjoint i32 %623, %562
  %625 = getelementptr inbounds nuw i8, ptr %613, i64 8
  store i32 %624, ptr %619, align 2
  %626 = getelementptr inbounds nuw i8, ptr %614, i64 2
  %627 = load i8, ptr %626, align 1, !tbaa !36
  %628 = zext i8 %627 to i32
  %629 = shl nuw nsw i32 %628, 8
  %630 = or disjoint i32 %629, %562
  %631 = getelementptr inbounds nuw i8, ptr %613, i64 12
  store i32 %630, ptr %625, align 2
  %632 = getelementptr inbounds nuw i8, ptr %614, i64 3
  %633 = load i8, ptr %632, align 1, !tbaa !36
  %634 = zext i8 %633 to i32
  %635 = shl nuw nsw i32 %634, 8
  %636 = or disjoint i32 %635, %562
  %637 = getelementptr inbounds nuw i8, ptr %613, i64 16
  store i32 %636, ptr %631, align 2
  %638 = getelementptr inbounds nuw i8, ptr %614, i64 4
  %639 = icmp eq ptr %638, %352
  br i1 %639, label %.loopexit46, label %.preheader230.new, !llvm.loop !61

640:                                              ; preds = %.split
  br i1 %356, label %.loopexit46, label %641

641:                                              ; preds = %640
  %642 = shl i32 %344, 16
  %643 = zext i32 %355 to i64
  %644 = shl nuw nsw i64 %643, 2
  %645 = add i32 %642, %336
  %646 = add nsw i64 %644, -32
  %647 = lshr i64 %646, 5
  %648 = add nuw nsw i64 %647, 1
  %649 = and i64 %648, 3
  %650 = and i64 %646, 96
  %651 = icmp eq i64 %650, 96
  %652 = icmp ult i64 %646, 96
  br label %653

653:                                              ; preds = %.loopexit, %641
  %654 = phi ptr [ %348, %641 ], [ %662, %.loopexit ]
  %655 = phi ptr [ %350, %641 ], [ %689, %.loopexit ]
  %656 = load i8, ptr %655, align 1, !tbaa !36
  %657 = zext i8 %656 to i32
  %658 = shl nuw nsw i32 %657, 8
  %659 = or disjoint i32 %658, %645
  %660 = zext i32 %659 to i64
  %661 = mul nuw i64 %660, 4294967297
  %662 = getelementptr inbounds nuw i8, ptr %654, i64 %644
  br i1 %651, label %.preheader.preheader, label %.preheader44

.preheader44:                                     ; preds = %653, %.preheader44
  %663 = phi ptr [ %668, %.preheader44 ], [ %654, %653 ]
  %664 = phi i64 [ %669, %.preheader44 ], [ 0, %653 ]
  store i64 %661, ptr %663, align 2
  %665 = getelementptr inbounds nuw i8, ptr %663, i64 8
  store i64 %661, ptr %665, align 2
  %666 = getelementptr inbounds nuw i8, ptr %663, i64 16
  store i64 %661, ptr %666, align 2
  %667 = getelementptr inbounds nuw i8, ptr %663, i64 24
  store i64 %661, ptr %667, align 2
  %668 = getelementptr inbounds nuw i8, ptr %663, i64 32
  %669 = add i64 %664, 1
  %670 = icmp eq i64 %669, %649
  br i1 %670, label %.loopexit45, label %.preheader44, !llvm.loop !62

.loopexit45:                                      ; preds = %.preheader44
  br i1 %652, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %653, %.loopexit45
  %.ph = phi ptr [ %654, %653 ], [ %668, %.loopexit45 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %671 = phi ptr [ %687, %.preheader ], [ %.ph, %.preheader.preheader ]
  store i64 %661, ptr %671, align 2
  %672 = getelementptr inbounds nuw i8, ptr %671, i64 8
  store i64 %661, ptr %672, align 2
  %673 = getelementptr inbounds nuw i8, ptr %671, i64 16
  store i64 %661, ptr %673, align 2
  %674 = getelementptr inbounds nuw i8, ptr %671, i64 24
  store i64 %661, ptr %674, align 2
  %675 = getelementptr inbounds nuw i8, ptr %671, i64 32
  store i64 %661, ptr %675, align 2
  %676 = getelementptr inbounds nuw i8, ptr %671, i64 40
  store i64 %661, ptr %676, align 2
  %677 = getelementptr inbounds nuw i8, ptr %671, i64 48
  store i64 %661, ptr %677, align 2
  %678 = getelementptr inbounds nuw i8, ptr %671, i64 56
  store i64 %661, ptr %678, align 2
  %679 = getelementptr inbounds nuw i8, ptr %671, i64 64
  store i64 %661, ptr %679, align 2
  %680 = getelementptr inbounds nuw i8, ptr %671, i64 72
  store i64 %661, ptr %680, align 2
  %681 = getelementptr inbounds nuw i8, ptr %671, i64 80
  store i64 %661, ptr %681, align 2
  %682 = getelementptr inbounds nuw i8, ptr %671, i64 88
  store i64 %661, ptr %682, align 2
  %683 = getelementptr inbounds nuw i8, ptr %671, i64 96
  store i64 %661, ptr %683, align 2
  %684 = getelementptr inbounds nuw i8, ptr %671, i64 104
  store i64 %661, ptr %684, align 2
  %685 = getelementptr inbounds nuw i8, ptr %671, i64 112
  store i64 %661, ptr %685, align 2
  %686 = getelementptr inbounds nuw i8, ptr %671, i64 120
  store i64 %661, ptr %686, align 2
  %687 = getelementptr inbounds nuw i8, ptr %671, i64 128
  %688 = icmp eq ptr %687, %662
  br i1 %688, label %.loopexit, label %.preheader, !llvm.loop !63

.loopexit:                                        ; preds = %.preheader, %.loopexit45
  %689 = getelementptr inbounds nuw i8, ptr %655, i64 1
  %690 = icmp eq ptr %689, %352
  br i1 %690, label %.loopexit46, label %653, !llvm.loop !64

.loopexit46:                                      ; preds = %.preheader53, %.preheader49, %.prol.loopexit, %.preheader234.new, %.prol.loopexit272, %.preheader230.new, %.loopexit, %640, %595, %559, %509, %470, %.loopexit52, %406, %376, %357
  %691 = icmp eq i64 %338, %257
  br i1 %691, label %697, label %.split, !llvm.loop !65

692:                                              ; preds = %697
  %693 = add nsw i64 %294, 1
  %694 = trunc nsw i64 %693 to i32
  %695 = add i32 %295, %277
  %696 = icmp eq i32 %268, %694
  br i1 %696, label %.loopexit63, label %293, !llvm.loop !66

697:                                              ; preds = %.loopexit46
  %698 = icmp eq i64 %294, 2147483647
  br i1 %698, label %.loopexit72, label %692, !prof !18, !nosanitize !17

699:                                              ; preds = %279
  br i1 %284, label %700, label %.loopexit63

700:                                              ; preds = %699
  %701 = sext i32 %265 to i64
  br label %702

702:                                              ; preds = %745, %700
  %703 = phi i64 [ %701, %700 ], [ %746, %745 ]
  %704 = phi i32 [ %274, %700 ], [ %748, %745 ]
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds [4 x i8], ptr %15, i64 %705
  %707 = getelementptr inbounds i8, ptr %249, i64 %703
  %708 = load i8, ptr %707, align 1, !tbaa !36
  %709 = zext i8 %708 to i32
  %710 = or disjoint i32 %286, %709
  %711 = zext i32 %710 to i64
  %712 = mul nuw i64 %711, 4294967297
  %713 = load i32, ptr %288, align 4, !tbaa !5
  switch i32 %277, label %717 [
    i32 2, label %716
    i32 4, label %714
  ]

714:                                              ; preds = %702
  store i64 %712, ptr %706, align 2
  %715 = getelementptr inbounds nuw i8, ptr %706, i64 8
  store i64 %712, ptr %715, align 2
  br label %.loopexit61

716:                                              ; preds = %702
  store i64 %712, ptr %706, align 2
  br label %.loopexit61

717:                                              ; preds = %702
  %718 = icmp sgt i32 %713, 0
  br i1 %718, label %719, label %.loopexit61

719:                                              ; preds = %717
  %720 = zext nneg i32 %713 to i64
  store i64 %712, ptr %706, align 2
  %721 = getelementptr inbounds nuw i8, ptr %706, i64 8
  store i64 %712, ptr %721, align 2
  %722 = getelementptr inbounds nuw i8, ptr %706, i64 16
  store i64 %712, ptr %722, align 2
  %723 = getelementptr inbounds nuw i8, ptr %706, i64 24
  store i64 %712, ptr %723, align 2
  %724 = icmp ugt i32 %713, 8
  br i1 %724, label %.lr.ph, label %.loopexit61, !llvm.loop !44

.lr.ph:                                           ; preds = %719
  br label %732, !llvm.loop !44

725:                                              ; preds = %740
  %726 = getelementptr inbounds nuw [4 x i8], ptr %706, i64 %741
  store i64 %712, ptr %726, align 2
  %727 = getelementptr inbounds nuw i8, ptr %726, i64 8
  store i64 %712, ptr %727, align 2
  %728 = getelementptr inbounds nuw i8, ptr %726, i64 16
  store i64 %712, ptr %728, align 2
  %729 = getelementptr inbounds nuw i8, ptr %726, i64 24
  store i64 %712, ptr %729, align 2
  %730 = or disjoint i64 %741, 8
  %731 = icmp samesign ult i64 %730, %720
  br i1 %731, label %732, label %..loopexit61.loopexit_crit_edge227, !llvm.loop !44

732:                                              ; preds = %.lr.ph, %725
  %733 = phi i64 [ 0, %.lr.ph ], [ %741, %725 ]
  %734 = getelementptr inbounds nuw [4 x i8], ptr %706, i64 %733
  %735 = getelementptr inbounds nuw i8, ptr %734, i64 32
  store i64 %712, ptr %735, align 2
  %736 = getelementptr inbounds nuw i8, ptr %734, i64 40
  store i64 %712, ptr %736, align 2
  %737 = getelementptr inbounds nuw i8, ptr %734, i64 48
  store i64 %712, ptr %737, align 2
  %738 = getelementptr inbounds nuw i8, ptr %734, i64 56
  store i64 %712, ptr %738, align 2
  %739 = icmp eq i64 %733, 2147483632
  br i1 %739, label %.loopexit60, label %740, !prof !18, !nosanitize !17

740:                                              ; preds = %732
  %741 = add nuw nsw i64 %733, 16
  %742 = trunc i64 %741 to i32
  %743 = icmp sgt i32 %713, %742
  br i1 %743, label %725, label %..loopexit61.loopexit_crit_edge227, !llvm.loop !44

..loopexit61.loopexit_crit_edge227:               ; preds = %725, %740
  br label %.loopexit61, !llvm.loop !44

.loopexit61:                                      ; preds = %719, %..loopexit61.loopexit_crit_edge227, %717, %716, %714
  %744 = icmp eq i64 %703, 2147483647
  br i1 %744, label %.loopexit72, label %745, !prof !18, !nosanitize !17

745:                                              ; preds = %.loopexit61
  %746 = add nsw i64 %703, 1
  %747 = trunc nsw i64 %746 to i32
  %748 = add i32 %704, %277
  %749 = icmp eq i32 %268, %747
  br i1 %749, label %.loopexit63, label %702, !llvm.loop !66

.loopexit60:                                      ; preds = %732, %324
  call void @llvm.ubsantrap(i8 0) #18, !nosanitize !17
  unreachable, !nosanitize !17

.split1:                                          ; preds = %262
  %750 = zext i32 %274 to i64
  %751 = getelementptr [4 x i8], ptr %15, i64 %750
  %752 = sext i32 %265 to i64
  %753 = getelementptr i8, ptr %249, i64 %752
  %754 = sext i32 %268 to i64
  %755 = getelementptr i8, ptr %249, i64 %754
  %756 = and i32 %271, 31
  %757 = shl nuw i32 1, %756
  %758 = icmp eq i32 %265, %268
  switch i32 %756, label %1037 [
    i32 0, label %945
    i32 1, label %864
    i32 2, label %805
    i32 3, label %759
  ]

759:                                              ; preds = %.split1
  br i1 %758, label %.loopexit63, label %760

760:                                              ; preds = %759
  %761 = shl i32 %270, 16
  %762 = add i32 %761, 16777216
  %763 = sub nsw i64 %754, %752
  %764 = and i64 %763, 1
  %765 = icmp eq i64 %764, 0
  br i1 %765, label %777, label %766

766:                                              ; preds = %760
  %767 = load i8, ptr %753, align 1, !tbaa !36
  %768 = zext i8 %767 to i32
  %769 = or disjoint i32 %762, %768
  %770 = zext i32 %769 to i64
  %771 = mul nuw i64 %770, 4294967297
  store i64 %771, ptr %751, align 2
  %772 = getelementptr inbounds nuw i8, ptr %751, i64 8
  store i64 %771, ptr %772, align 2
  %773 = getelementptr inbounds nuw i8, ptr %751, i64 16
  store i64 %771, ptr %773, align 2
  %774 = getelementptr inbounds nuw i8, ptr %751, i64 24
  store i64 %771, ptr %774, align 2
  %775 = getelementptr inbounds nuw i8, ptr %751, i64 32
  %776 = getelementptr inbounds nuw i8, ptr %753, i64 1
  br label %777

777:                                              ; preds = %766, %760
  %778 = phi ptr [ %751, %760 ], [ %775, %766 ]
  %779 = phi ptr [ %753, %760 ], [ %776, %766 ]
  %780 = add nsw i64 %754, -1
  %781 = icmp eq i64 %780, %752
  br i1 %781, label %.loopexit63, label %.preheader70

.preheader70:                                     ; preds = %777, %.preheader70
  %782 = phi ptr [ %802, %.preheader70 ], [ %778, %777 ]
  %783 = phi ptr [ %803, %.preheader70 ], [ %779, %777 ]
  %784 = load i8, ptr %783, align 1, !tbaa !36
  %785 = zext i8 %784 to i32
  %786 = or disjoint i32 %762, %785
  %787 = zext i32 %786 to i64
  %788 = mul nuw i64 %787, 4294967297
  store i64 %788, ptr %782, align 2
  %789 = getelementptr inbounds nuw i8, ptr %782, i64 8
  store i64 %788, ptr %789, align 2
  %790 = getelementptr inbounds nuw i8, ptr %782, i64 16
  store i64 %788, ptr %790, align 2
  %791 = getelementptr inbounds nuw i8, ptr %782, i64 24
  store i64 %788, ptr %791, align 2
  %792 = getelementptr inbounds nuw i8, ptr %782, i64 32
  %793 = getelementptr inbounds nuw i8, ptr %783, i64 1
  %794 = load i8, ptr %793, align 1, !tbaa !36
  %795 = zext i8 %794 to i32
  %796 = or disjoint i32 %762, %795
  %797 = zext i32 %796 to i64
  %798 = mul nuw i64 %797, 4294967297
  store i64 %798, ptr %792, align 2
  %799 = getelementptr inbounds nuw i8, ptr %782, i64 40
  store i64 %798, ptr %799, align 2
  %800 = getelementptr inbounds nuw i8, ptr %782, i64 48
  store i64 %798, ptr %800, align 2
  %801 = getelementptr inbounds nuw i8, ptr %782, i64 56
  store i64 %798, ptr %801, align 2
  %802 = getelementptr inbounds nuw i8, ptr %782, i64 64
  %803 = getelementptr inbounds nuw i8, ptr %783, i64 2
  %804 = icmp eq ptr %803, %755
  br i1 %804, label %.loopexit63, label %.preheader70, !llvm.loop !45

805:                                              ; preds = %.split1
  br i1 %758, label %.loopexit63, label %806

806:                                              ; preds = %805
  %807 = shl i32 %270, 16
  %808 = add i32 %807, 16777216
  %809 = sub nsw i64 %754, %752
  %810 = and i64 %809, 3
  %811 = icmp eq i64 %810, 0
  br i1 %811, label %.loopexit69, label %.preheader68

.preheader68:                                     ; preds = %806, %.preheader68
  %812 = phi ptr [ %821, %.preheader68 ], [ %751, %806 ]
  %813 = phi ptr [ %822, %.preheader68 ], [ %753, %806 ]
  %814 = phi i64 [ %823, %.preheader68 ], [ 0, %806 ]
  %815 = load i8, ptr %813, align 1, !tbaa !36
  %816 = zext i8 %815 to i32
  %817 = or disjoint i32 %808, %816
  %818 = zext i32 %817 to i64
  %819 = mul nuw i64 %818, 4294967297
  store i64 %819, ptr %812, align 2
  %820 = getelementptr inbounds nuw i8, ptr %812, i64 8
  store i64 %819, ptr %820, align 2
  %821 = getelementptr inbounds nuw i8, ptr %812, i64 16
  %822 = getelementptr inbounds nuw i8, ptr %813, i64 1
  %823 = add nuw nsw i64 %814, 1
  %824 = icmp eq i64 %823, %810
  br i1 %824, label %.loopexit69, label %.preheader68, !llvm.loop !67

.loopexit69:                                      ; preds = %.preheader68, %806
  %825 = phi ptr [ %751, %806 ], [ %821, %.preheader68 ]
  %826 = phi ptr [ %753, %806 ], [ %822, %.preheader68 ]
  %827 = sub nsw i64 %752, %754
  %828 = icmp ugt i64 %827, -4
  br i1 %828, label %.loopexit63, label %.preheader66

.preheader66:                                     ; preds = %.loopexit69, %.preheader66
  %829 = phi ptr [ %861, %.preheader66 ], [ %825, %.loopexit69 ]
  %830 = phi ptr [ %862, %.preheader66 ], [ %826, %.loopexit69 ]
  %831 = load i8, ptr %830, align 1, !tbaa !36
  %832 = zext i8 %831 to i32
  %833 = or disjoint i32 %808, %832
  %834 = zext i32 %833 to i64
  %835 = mul nuw i64 %834, 4294967297
  store i64 %835, ptr %829, align 2
  %836 = getelementptr inbounds nuw i8, ptr %829, i64 8
  store i64 %835, ptr %836, align 2
  %837 = getelementptr inbounds nuw i8, ptr %829, i64 16
  %838 = getelementptr inbounds nuw i8, ptr %830, i64 1
  %839 = load i8, ptr %838, align 1, !tbaa !36
  %840 = zext i8 %839 to i32
  %841 = or disjoint i32 %808, %840
  %842 = zext i32 %841 to i64
  %843 = mul nuw i64 %842, 4294967297
  store i64 %843, ptr %837, align 2
  %844 = getelementptr inbounds nuw i8, ptr %829, i64 24
  store i64 %843, ptr %844, align 2
  %845 = getelementptr inbounds nuw i8, ptr %829, i64 32
  %846 = getelementptr inbounds nuw i8, ptr %830, i64 2
  %847 = load i8, ptr %846, align 1, !tbaa !36
  %848 = zext i8 %847 to i32
  %849 = or disjoint i32 %808, %848
  %850 = zext i32 %849 to i64
  %851 = mul nuw i64 %850, 4294967297
  store i64 %851, ptr %845, align 2
  %852 = getelementptr inbounds nuw i8, ptr %829, i64 40
  store i64 %851, ptr %852, align 2
  %853 = getelementptr inbounds nuw i8, ptr %829, i64 48
  %854 = getelementptr inbounds nuw i8, ptr %830, i64 3
  %855 = load i8, ptr %854, align 1, !tbaa !36
  %856 = zext i8 %855 to i32
  %857 = or disjoint i32 %808, %856
  %858 = zext i32 %857 to i64
  %859 = mul nuw i64 %858, 4294967297
  store i64 %859, ptr %853, align 2
  %860 = getelementptr inbounds nuw i8, ptr %829, i64 56
  store i64 %859, ptr %860, align 2
  %861 = getelementptr inbounds nuw i8, ptr %829, i64 64
  %862 = getelementptr inbounds nuw i8, ptr %830, i64 4
  %863 = icmp eq ptr %862, %755
  br i1 %863, label %.loopexit63, label %.preheader66, !llvm.loop !47

864:                                              ; preds = %.split1
  br i1 %758, label %.loopexit63, label %865

865:                                              ; preds = %864
  %866 = shl i32 %270, 16
  %867 = add i32 %866, 16777216
  %868 = sub nsw i64 %754, %752
  %869 = icmp ult i64 %868, 8
  br i1 %869, label %.preheader246, label %870

870:                                              ; preds = %865
  %871 = shl nuw nsw i64 %750, 2
  %872 = shl nsw i64 %868, 3
  %873 = getelementptr i8, ptr %15, i64 %872
  %874 = getelementptr i8, ptr %873, i64 %871
  %875 = icmp ult ptr %751, %755
  %876 = icmp ult ptr %753, %874
  %877 = and i1 %875, %876
  br i1 %877, label %.preheader246, label %878

878:                                              ; preds = %870
  %879 = and i64 %868, -4
  %880 = insertelement <2 x i32> poison, i32 %867, i64 0
  %881 = shufflevector <2 x i32> %880, <2 x i32> poison, <2 x i32> zeroinitializer
  %882 = getelementptr i8, ptr %751, i64 16
  br label %883

883:                                              ; preds = %883, %878
  %884 = phi i64 [ 0, %878 ], [ %898, %883 ]
  %885 = shl i64 %884, 3
  %886 = getelementptr i8, ptr %751, i64 %885
  %887 = getelementptr i8, ptr %882, i64 %885
  %888 = getelementptr i8, ptr %753, i64 %884
  %889 = getelementptr i8, ptr %888, i64 2
  %890 = load <2 x i8>, ptr %888, align 1, !tbaa !36, !alias.scope !68
  %891 = load <2 x i8>, ptr %889, align 1, !tbaa !36, !alias.scope !68
  %892 = zext <2 x i8> %890 to <2 x i32>
  %893 = zext <2 x i8> %891 to <2 x i32>
  %894 = or disjoint <2 x i32> %881, %892
  %895 = or disjoint <2 x i32> %881, %893
  %896 = shufflevector <2 x i32> %894, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %896, ptr %886, align 2
  %897 = shufflevector <2 x i32> %895, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %897, ptr %887, align 2
  %898 = add nuw i64 %884, 4
  %899 = icmp eq i64 %898, %879
  br i1 %899, label %900, label %883, !llvm.loop !71

900:                                              ; preds = %883
  %901 = shl nsw i64 %879, 3
  %902 = getelementptr i8, ptr %751, i64 %901
  %903 = getelementptr i8, ptr %753, i64 %879
  %904 = icmp eq i64 %868, %879
  br i1 %904, label %.loopexit63, label %.preheader246

.preheader246:                                    ; preds = %900, %870, %865
  %.ph247 = phi ptr [ %902, %900 ], [ %751, %865 ], [ %751, %870 ]
  %.ph248 = phi ptr [ %903, %900 ], [ %753, %865 ], [ %753, %870 ]
  %905 = add i64 %7, %754
  %.ph248281 = ptrtoint ptr %.ph248 to i64
  %906 = sub i64 %905, %.ph248281
  %907 = add i64 %260, %754
  %908 = sub i64 %907, %.ph248281
  %xtraiter282 = and i64 %906, 3
  %lcmp.mod283.not = icmp eq i64 %xtraiter282, 0
  br i1 %lcmp.mod283.not, label %.prol.loopexit280, label %.prol.preheader279

.prol.preheader279:                               ; preds = %.preheader246, %.prol.preheader279
  %909 = phi ptr [ %915, %.prol.preheader279 ], [ %.ph247, %.preheader246 ]
  %910 = phi ptr [ %916, %.prol.preheader279 ], [ %.ph248, %.preheader246 ]
  %prol.iter284 = phi i64 [ %prol.iter284.next, %.prol.preheader279 ], [ 0, %.preheader246 ]
  %911 = load i8, ptr %910, align 1, !tbaa !36
  %912 = zext i8 %911 to i32
  %913 = or disjoint i32 %867, %912
  store i32 %913, ptr %909, align 2
  %914 = getelementptr inbounds nuw i8, ptr %909, i64 4
  store i32 %913, ptr %914, align 2
  %915 = getelementptr inbounds nuw i8, ptr %909, i64 8
  %916 = getelementptr inbounds nuw i8, ptr %910, i64 1
  %prol.iter284.next = add i64 %prol.iter284, 1
  %prol.iter284.cmp.not = icmp eq i64 %prol.iter284.next, %xtraiter282
  br i1 %prol.iter284.cmp.not, label %.prol.loopexit280, label %.prol.preheader279, !llvm.loop !72

.prol.loopexit280:                                ; preds = %.prol.preheader279, %.preheader246
  %.unr285 = phi ptr [ %.ph247, %.preheader246 ], [ %915, %.prol.preheader279 ]
  %.unr286 = phi ptr [ %.ph248, %.preheader246 ], [ %916, %.prol.preheader279 ]
  %917 = icmp ult i64 %908, 3
  br i1 %917, label %.loopexit63, label %.preheader246.new

.preheader246.new:                                ; preds = %.prol.loopexit280, %.preheader246.new
  %918 = phi ptr [ %942, %.preheader246.new ], [ %.unr285, %.prol.loopexit280 ]
  %919 = phi ptr [ %943, %.preheader246.new ], [ %.unr286, %.prol.loopexit280 ]
  %920 = load i8, ptr %919, align 1, !tbaa !36
  %921 = zext i8 %920 to i32
  %922 = or disjoint i32 %867, %921
  store i32 %922, ptr %918, align 2
  %923 = getelementptr inbounds nuw i8, ptr %918, i64 4
  store i32 %922, ptr %923, align 2
  %924 = getelementptr inbounds nuw i8, ptr %918, i64 8
  %925 = getelementptr inbounds nuw i8, ptr %919, i64 1
  %926 = load i8, ptr %925, align 1, !tbaa !36
  %927 = zext i8 %926 to i32
  %928 = or disjoint i32 %867, %927
  store i32 %928, ptr %924, align 2
  %929 = getelementptr inbounds nuw i8, ptr %918, i64 12
  store i32 %928, ptr %929, align 2
  %930 = getelementptr inbounds nuw i8, ptr %918, i64 16
  %931 = getelementptr inbounds nuw i8, ptr %919, i64 2
  %932 = load i8, ptr %931, align 1, !tbaa !36
  %933 = zext i8 %932 to i32
  %934 = or disjoint i32 %867, %933
  store i32 %934, ptr %930, align 2
  %935 = getelementptr inbounds nuw i8, ptr %918, i64 20
  store i32 %934, ptr %935, align 2
  %936 = getelementptr inbounds nuw i8, ptr %918, i64 24
  %937 = getelementptr inbounds nuw i8, ptr %919, i64 3
  %938 = load i8, ptr %937, align 1, !tbaa !36
  %939 = zext i8 %938 to i32
  %940 = or disjoint i32 %867, %939
  store i32 %940, ptr %936, align 2
  %941 = getelementptr inbounds nuw i8, ptr %918, i64 28
  store i32 %940, ptr %941, align 2
  %942 = getelementptr inbounds nuw i8, ptr %918, i64 32
  %943 = getelementptr inbounds nuw i8, ptr %919, i64 4
  %944 = icmp eq ptr %943, %755
  br i1 %944, label %.loopexit63, label %.preheader246.new, !llvm.loop !73

945:                                              ; preds = %.split1
  br i1 %758, label %.loopexit63, label %946

946:                                              ; preds = %945
  %947 = shl i32 %270, 16
  %948 = add i32 %947, 16777216
  %949 = sub nsw i64 %754, %752
  %950 = icmp ult i64 %949, 8
  br i1 %950, label %.preheader242, label %951

951:                                              ; preds = %946
  %952 = add nsw i64 %949, %750
  %953 = shl nsw i64 %952, 2
  %954 = getelementptr i8, ptr %15, i64 %953
  %955 = icmp ult ptr %751, %755
  %956 = icmp ult ptr %753, %954
  %957 = and i1 %955, %956
  br i1 %957, label %.preheader242, label %958

958:                                              ; preds = %951
  %959 = and i64 %949, -8
  %960 = insertelement <4 x i32> poison, i32 %948, i64 0
  %961 = shufflevector <4 x i32> %960, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %962

962:                                              ; preds = %962, %958
  %963 = phi i64 [ 0, %958 ], [ %975, %962 ]
  %964 = shl i64 %963, 2
  %965 = getelementptr i8, ptr %751, i64 %964
  %966 = getelementptr i8, ptr %753, i64 %963
  %967 = getelementptr i8, ptr %966, i64 4
  %968 = load <4 x i8>, ptr %966, align 1, !tbaa !36, !alias.scope !74
  %969 = load <4 x i8>, ptr %967, align 1, !tbaa !36, !alias.scope !74
  %970 = zext <4 x i8> %968 to <4 x i32>
  %971 = zext <4 x i8> %969 to <4 x i32>
  %972 = or disjoint <4 x i32> %961, %970
  %973 = or disjoint <4 x i32> %961, %971
  %974 = getelementptr i8, ptr %965, i64 16
  store <4 x i32> %972, ptr %965, align 2, !alias.scope !77, !noalias !74
  store <4 x i32> %973, ptr %974, align 2, !alias.scope !77, !noalias !74
  %975 = add nuw i64 %963, 8
  %976 = icmp eq i64 %975, %959
  br i1 %976, label %977, label %962, !llvm.loop !79

977:                                              ; preds = %962
  %978 = shl nsw i64 %959, 2
  %979 = getelementptr i8, ptr %751, i64 %978
  %980 = getelementptr i8, ptr %753, i64 %959
  %981 = icmp eq i64 %949, %959
  br i1 %981, label %.loopexit63, label %.preheader242

.preheader242:                                    ; preds = %977, %951, %946
  %.ph243 = phi ptr [ %979, %977 ], [ %751, %946 ], [ %751, %951 ]
  %.ph244 = phi ptr [ %980, %977 ], [ %753, %946 ], [ %753, %951 ]
  %982 = add i64 %7, %754
  %.ph244289 = ptrtoint ptr %.ph244 to i64
  %983 = sub i64 %982, %.ph244289
  %984 = add i64 %261, %754
  %985 = sub i64 %984, %.ph244289
  %xtraiter290 = and i64 %983, 7
  %lcmp.mod291.not = icmp eq i64 %xtraiter290, 0
  br i1 %lcmp.mod291.not, label %.prol.loopexit288, label %.prol.preheader287

.prol.preheader287:                               ; preds = %.preheader242, %.prol.preheader287
  %986 = phi ptr [ %991, %.prol.preheader287 ], [ %.ph243, %.preheader242 ]
  %987 = phi ptr [ %992, %.prol.preheader287 ], [ %.ph244, %.preheader242 ]
  %prol.iter292 = phi i64 [ %prol.iter292.next, %.prol.preheader287 ], [ 0, %.preheader242 ]
  %988 = load i8, ptr %987, align 1, !tbaa !36
  %989 = zext i8 %988 to i32
  %990 = or disjoint i32 %948, %989
  %991 = getelementptr inbounds nuw i8, ptr %986, i64 4
  store i32 %990, ptr %986, align 2
  %992 = getelementptr inbounds nuw i8, ptr %987, i64 1
  %prol.iter292.next = add i64 %prol.iter292, 1
  %prol.iter292.cmp.not = icmp eq i64 %prol.iter292.next, %xtraiter290
  br i1 %prol.iter292.cmp.not, label %.prol.loopexit288, label %.prol.preheader287, !llvm.loop !80

.prol.loopexit288:                                ; preds = %.prol.preheader287, %.preheader242
  %.unr293 = phi ptr [ %.ph243, %.preheader242 ], [ %991, %.prol.preheader287 ]
  %.unr294 = phi ptr [ %.ph244, %.preheader242 ], [ %992, %.prol.preheader287 ]
  %993 = icmp ult i64 %985, 7
  br i1 %993, label %.loopexit63, label %.preheader242.new

.preheader242.new:                                ; preds = %.prol.loopexit288, %.preheader242.new
  %994 = phi ptr [ %1034, %.preheader242.new ], [ %.unr293, %.prol.loopexit288 ]
  %995 = phi ptr [ %1035, %.preheader242.new ], [ %.unr294, %.prol.loopexit288 ]
  %996 = load i8, ptr %995, align 1, !tbaa !36
  %997 = zext i8 %996 to i32
  %998 = or disjoint i32 %948, %997
  %999 = getelementptr inbounds nuw i8, ptr %994, i64 4
  store i32 %998, ptr %994, align 2
  %1000 = getelementptr inbounds nuw i8, ptr %995, i64 1
  %1001 = load i8, ptr %1000, align 1, !tbaa !36
  %1002 = zext i8 %1001 to i32
  %1003 = or disjoint i32 %948, %1002
  %1004 = getelementptr inbounds nuw i8, ptr %994, i64 8
  store i32 %1003, ptr %999, align 2
  %1005 = getelementptr inbounds nuw i8, ptr %995, i64 2
  %1006 = load i8, ptr %1005, align 1, !tbaa !36
  %1007 = zext i8 %1006 to i32
  %1008 = or disjoint i32 %948, %1007
  %1009 = getelementptr inbounds nuw i8, ptr %994, i64 12
  store i32 %1008, ptr %1004, align 2
  %1010 = getelementptr inbounds nuw i8, ptr %995, i64 3
  %1011 = load i8, ptr %1010, align 1, !tbaa !36
  %1012 = zext i8 %1011 to i32
  %1013 = or disjoint i32 %948, %1012
  %1014 = getelementptr inbounds nuw i8, ptr %994, i64 16
  store i32 %1013, ptr %1009, align 2
  %1015 = getelementptr inbounds nuw i8, ptr %995, i64 4
  %1016 = load i8, ptr %1015, align 1, !tbaa !36
  %1017 = zext i8 %1016 to i32
  %1018 = or disjoint i32 %948, %1017
  %1019 = getelementptr inbounds nuw i8, ptr %994, i64 20
  store i32 %1018, ptr %1014, align 2
  %1020 = getelementptr inbounds nuw i8, ptr %995, i64 5
  %1021 = load i8, ptr %1020, align 1, !tbaa !36
  %1022 = zext i8 %1021 to i32
  %1023 = or disjoint i32 %948, %1022
  %1024 = getelementptr inbounds nuw i8, ptr %994, i64 24
  store i32 %1023, ptr %1019, align 2
  %1025 = getelementptr inbounds nuw i8, ptr %995, i64 6
  %1026 = load i8, ptr %1025, align 1, !tbaa !36
  %1027 = zext i8 %1026 to i32
  %1028 = or disjoint i32 %948, %1027
  %1029 = getelementptr inbounds nuw i8, ptr %994, i64 28
  store i32 %1028, ptr %1024, align 2
  %1030 = getelementptr inbounds nuw i8, ptr %995, i64 7
  %1031 = load i8, ptr %1030, align 1, !tbaa !36
  %1032 = zext i8 %1031 to i32
  %1033 = or disjoint i32 %948, %1032
  %1034 = getelementptr inbounds nuw i8, ptr %994, i64 32
  store i32 %1033, ptr %1029, align 2
  %1035 = getelementptr inbounds nuw i8, ptr %995, i64 8
  %1036 = icmp eq ptr %1035, %755
  br i1 %1036, label %.loopexit63, label %.preheader242.new, !llvm.loop !81

1037:                                             ; preds = %.split1
  br i1 %758, label %.loopexit63, label %1038

1038:                                             ; preds = %1037
  %1039 = shl i32 %270, 16
  %1040 = add i32 %1039, 16777216
  %1041 = zext i32 %757 to i64
  %1042 = shl nuw nsw i64 %1041, 2
  %1043 = add nsw i64 %1042, -32
  %1044 = lshr i64 %1043, 5
  %1045 = add nuw nsw i64 %1044, 1
  %1046 = and i64 %1045, 3
  %1047 = and i64 %1043, 96
  %1048 = icmp eq i64 %1047, 96
  %1049 = icmp ult i64 %1043, 96
  br label %1050

1050:                                             ; preds = %.loopexit56, %1038
  %1051 = phi ptr [ %751, %1038 ], [ %1058, %.loopexit56 ]
  %1052 = phi ptr [ %753, %1038 ], [ %1085, %.loopexit56 ]
  %1053 = load i8, ptr %1052, align 1, !tbaa !36
  %1054 = zext i8 %1053 to i32
  %1055 = or disjoint i32 %1040, %1054
  %1056 = zext i32 %1055 to i64
  %1057 = mul nuw i64 %1056, 4294967297
  %1058 = getelementptr inbounds nuw i8, ptr %1051, i64 %1042
  br i1 %1048, label %.preheader55.preheader, label %.preheader57

.preheader57:                                     ; preds = %1050, %.preheader57
  %1059 = phi ptr [ %1064, %.preheader57 ], [ %1051, %1050 ]
  %1060 = phi i64 [ %1065, %.preheader57 ], [ 0, %1050 ]
  store i64 %1057, ptr %1059, align 2
  %1061 = getelementptr inbounds nuw i8, ptr %1059, i64 8
  store i64 %1057, ptr %1061, align 2
  %1062 = getelementptr inbounds nuw i8, ptr %1059, i64 16
  store i64 %1057, ptr %1062, align 2
  %1063 = getelementptr inbounds nuw i8, ptr %1059, i64 24
  store i64 %1057, ptr %1063, align 2
  %1064 = getelementptr inbounds nuw i8, ptr %1059, i64 32
  %1065 = add i64 %1060, 1
  %1066 = icmp eq i64 %1065, %1046
  br i1 %1066, label %.loopexit58, label %.preheader57, !llvm.loop !82

.loopexit58:                                      ; preds = %.preheader57
  br i1 %1049, label %.loopexit56, label %.preheader55.preheader

.preheader55.preheader:                           ; preds = %1050, %.loopexit58
  %.ph240 = phi ptr [ %1051, %1050 ], [ %1064, %.loopexit58 ]
  br label %.preheader55

.preheader55:                                     ; preds = %.preheader55.preheader, %.preheader55
  %1067 = phi ptr [ %1083, %.preheader55 ], [ %.ph240, %.preheader55.preheader ]
  store i64 %1057, ptr %1067, align 2
  %1068 = getelementptr inbounds nuw i8, ptr %1067, i64 8
  store i64 %1057, ptr %1068, align 2
  %1069 = getelementptr inbounds nuw i8, ptr %1067, i64 16
  store i64 %1057, ptr %1069, align 2
  %1070 = getelementptr inbounds nuw i8, ptr %1067, i64 24
  store i64 %1057, ptr %1070, align 2
  %1071 = getelementptr inbounds nuw i8, ptr %1067, i64 32
  store i64 %1057, ptr %1071, align 2
  %1072 = getelementptr inbounds nuw i8, ptr %1067, i64 40
  store i64 %1057, ptr %1072, align 2
  %1073 = getelementptr inbounds nuw i8, ptr %1067, i64 48
  store i64 %1057, ptr %1073, align 2
  %1074 = getelementptr inbounds nuw i8, ptr %1067, i64 56
  store i64 %1057, ptr %1074, align 2
  %1075 = getelementptr inbounds nuw i8, ptr %1067, i64 64
  store i64 %1057, ptr %1075, align 2
  %1076 = getelementptr inbounds nuw i8, ptr %1067, i64 72
  store i64 %1057, ptr %1076, align 2
  %1077 = getelementptr inbounds nuw i8, ptr %1067, i64 80
  store i64 %1057, ptr %1077, align 2
  %1078 = getelementptr inbounds nuw i8, ptr %1067, i64 88
  store i64 %1057, ptr %1078, align 2
  %1079 = getelementptr inbounds nuw i8, ptr %1067, i64 96
  store i64 %1057, ptr %1079, align 2
  %1080 = getelementptr inbounds nuw i8, ptr %1067, i64 104
  store i64 %1057, ptr %1080, align 2
  %1081 = getelementptr inbounds nuw i8, ptr %1067, i64 112
  store i64 %1057, ptr %1081, align 2
  %1082 = getelementptr inbounds nuw i8, ptr %1067, i64 120
  store i64 %1057, ptr %1082, align 2
  %1083 = getelementptr inbounds nuw i8, ptr %1067, i64 128
  %1084 = icmp eq ptr %1083, %1058
  br i1 %1084, label %.loopexit56, label %.preheader55, !llvm.loop !63

.loopexit56:                                      ; preds = %.preheader55, %.loopexit58
  %1085 = getelementptr inbounds nuw i8, ptr %1052, i64 1
  %1086 = icmp eq ptr %1085, %755
  br i1 %1086, label %.loopexit63, label %1050, !llvm.loop !64

.loopexit63:                                      ; preds = %745, %692, %.preheader70, %.preheader66, %.prol.loopexit280, %.preheader246.new, %.prol.loopexit288, %.preheader242.new, %.loopexit56, %699, %1037, %977, %945, %900, %864, %.loopexit69, %805, %777, %759, %275
  %1087 = icmp eq i64 %266, %257
  br i1 %1087, label %.loopexit76, label %262, !llvm.loop !83

.loopexit76:                                      ; preds = %.loopexit63, %254
  %1088 = trunc nuw nsw i32 %47 to i8
  store i8 %11, ptr %0, align 4
  %1089 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %1089, align 1
  %1090 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %1088, ptr %1090, align 2
  %1091 = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %13, ptr %1091, align 1
  br label %1092

1092:                                             ; preds = %.loopexit76, %27, %22, %17, %6
  %1093 = phi i64 [ %25, %.loopexit76 ], [ -1, %6 ], [ -44, %17 ], [ %25, %22 ], [ -44, %27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret i64 %1093
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_decompress1X2_DCtx_wksp(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = tail call i64 @HUF_readDTableX2_wksp(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7)
  %10 = icmp ult i64 %9, -119
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = icmp ult i64 %9, %4
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 %9
  %15 = sub nuw i64 %4, %9
  %16 = tail call fastcc i64 @HUF_decompress1X2_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %14, i64 noundef %15, ptr noundef %0, i32 noundef %7)
  br label %17

17:                                               ; preds = %13, %11, %8
  %18 = phi i64 [ %16, %13 ], [ %9, %8 ], [ -72, %11 ]
  ret i64 %18
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @HUF_decompress1X2_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef readonly captures(none) %4, i32 noundef %5) unnamed_addr #6 {
  %7 = and i32 %5, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc i64 @HUF_decompress1X2_usingDTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  br label %461

11:                                               ; preds = %6
  %12 = icmp eq i64 %3, 0
  br i1 %12, label %461, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %15 = icmp ugt i64 %3, 7
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %2, i64 %3
  %18 = getelementptr i8, ptr %17, i64 -1
  %19 = load i8, ptr %18, align 1, !tbaa !9
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %461, label %71

21:                                               ; preds = %13
  %22 = load i8, ptr %2, align 1, !tbaa !9
  %23 = zext i8 %22 to i64
  switch i64 %3, label %65 [
    i64 7, label %24
    i64 6, label %30
    i64 5, label %37
    i64 4, label %44
    i64 3, label %51
    i64 2, label %58
  ]

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %26 = load i8, ptr %25, align 1, !tbaa !9
  %27 = zext i8 %26 to i64
  %28 = shl nuw nsw i64 %27, 48
  %29 = or disjoint i64 %28, %23
  br label %30

30:                                               ; preds = %24, %21
  %31 = phi i64 [ %23, %21 ], [ %29, %24 ]
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %33 = load i8, ptr %32, align 1, !tbaa !9
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 40
  %36 = add nuw nsw i64 %35, %31
  br label %37

37:                                               ; preds = %30, %21
  %38 = phi i64 [ %23, %21 ], [ %36, %30 ]
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %40 = load i8, ptr %39, align 1, !tbaa !9
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 32
  %43 = add nuw nsw i64 %42, %38
  br label %44

44:                                               ; preds = %37, %21
  %45 = phi i64 [ %23, %21 ], [ %43, %37 ]
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %47 = load i8, ptr %46, align 1, !tbaa !9
  %48 = zext i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 24
  %50 = add nuw nsw i64 %49, %45
  br label %51

51:                                               ; preds = %44, %21
  %52 = phi i64 [ %23, %21 ], [ %50, %44 ]
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %54 = load i8, ptr %53, align 1, !tbaa !9
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, 16
  %57 = add nuw nsw i64 %56, %52
  br label %58

58:                                               ; preds = %51, %21
  %59 = phi i64 [ %23, %21 ], [ %57, %51 ]
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %61 = load i8, ptr %60, align 1, !tbaa !9
  %62 = zext i8 %61 to i64
  %63 = shl nuw nsw i64 %62, 8
  %64 = add nuw nsw i64 %63, %59
  br label %65

65:                                               ; preds = %58, %21
  %66 = phi i64 [ %23, %21 ], [ %64, %58 ]
  %67 = getelementptr i8, ptr %2, i64 %3
  %68 = getelementptr i8, ptr %67, i64 -1
  %69 = load i8, ptr %68, align 1, !tbaa !9
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %461, label %88

71:                                               ; preds = %16
  %72 = add nsw i64 %3, -8
  %73 = getelementptr inbounds i8, ptr %2, i64 %72
  %74 = load i64, ptr %73, align 1, !tbaa !26
  %75 = zext i8 %19 to i32
  %76 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %75, i1 true)
  %77 = xor i32 %76, 31
  %78 = sub nuw nsw i32 8, %77
  %79 = icmp ult i64 %3, -119
  br i1 %79, label %80, label %461

80:                                               ; preds = %71
  %81 = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 %81
  %83 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %84 = load i32, ptr %4, align 4
  %85 = lshr i32 %84, 16
  %86 = ptrtoint ptr %82 to i64
  %87 = icmp sgt i64 %1, 7
  br i1 %87, label %102, label %311

88:                                               ; preds = %65
  %89 = zext i8 %69 to i32
  %90 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %89, i1 true)
  %91 = trunc nuw nsw i64 %3 to i32
  %92 = shl nuw nsw i32 %91, 3
  %93 = sub nsw i32 %90, %92
  %94 = add nsw i32 %93, 41
  %95 = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 %95
  %97 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %98 = load i32, ptr %4, align 4
  %99 = lshr i32 %98, 16
  %100 = ptrtoint ptr %96 to i64
  %101 = icmp sgt i64 %1, 7
  br i1 %101, label %102, label %.loopexit30

102:                                              ; preds = %88, %80
  %103 = phi i64 [ %100, %88 ], [ %86, %80 ]
  %104 = phi i32 [ %99, %88 ], [ %85, %80 ]
  %105 = phi i32 [ %98, %88 ], [ %84, %80 ]
  %106 = phi ptr [ %97, %88 ], [ %83, %80 ]
  %107 = phi ptr [ %96, %88 ], [ %82, %80 ]
  %108 = phi i32 [ %94, %88 ], [ %78, %80 ]
  %109 = phi i64 [ %66, %88 ], [ %74, %80 ]
  %110 = phi i64 [ 0, %88 ], [ %72, %80 ]
  %111 = and i32 %105, 16515072
  %112 = icmp samesign ult i32 %111, 786432
  %113 = sub nsw i32 0, %104
  %114 = and i32 %113, 63
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds nuw i8, ptr %4, i64 4
  br i1 %112, label %119, label %117

117:                                              ; preds = %102
  %118 = getelementptr inbounds i8, ptr %107, i64 -7
  br label %223

119:                                              ; preds = %102
  %120 = getelementptr inbounds i8, ptr %107, i64 -9
  br label %121

121:                                              ; preds = %151, %119
  %122 = phi ptr [ %0, %119 ], [ %221, %151 ]
  %123 = phi i64 [ %110, %119 ], [ %146, %151 ]
  %124 = phi i64 [ %109, %119 ], [ %148, %151 ]
  %125 = phi i32 [ %108, %119 ], [ %217, %151 ]
  %126 = icmp slt i64 %123, 8
  br i1 %126, label %131, label %127

127:                                              ; preds = %121
  %128 = lshr i32 %125, 3
  %129 = zext nneg i32 %128 to i64
  %130 = and i32 %125, 7
  br label %142

131:                                              ; preds = %121
  %132 = icmp eq i64 %123, 0
  br i1 %132, label %.loopexit30, label %133

133:                                              ; preds = %131
  %134 = lshr i32 %125, 3
  %135 = zext nneg i32 %134 to i64
  %136 = icmp sge i64 %123, %135
  %137 = tail call i64 @llvm.smin.i64(i64 %123, i64 %135)
  %138 = trunc i64 %137 to i32
  %139 = and i64 %137, 4294967295
  %140 = shl i32 %138, 3
  %141 = sub i32 %125, %140
  br label %142

142:                                              ; preds = %133, %127
  %143 = phi i32 [ %141, %133 ], [ %130, %127 ]
  %144 = phi i64 [ %139, %133 ], [ %129, %127 ]
  %145 = phi i1 [ %136, %133 ], [ true, %127 ]
  %146 = sub nsw i64 %123, %144
  %147 = getelementptr inbounds i8, ptr %2, i64 %146
  %148 = load i64, ptr %147, align 1, !tbaa !26
  %149 = icmp ult ptr %122, %120
  %150 = and i1 %149, %145
  br i1 %150, label %151, label %.loopexit30.loopexit.split.loop.exit

151:                                              ; preds = %142
  %152 = and i32 %143, 63
  %153 = zext nneg i32 %152 to i64
  %154 = shl i64 %148, %153
  %155 = lshr i64 %154, %115
  %156 = getelementptr inbounds nuw [4 x i8], ptr %116, i64 %155
  %157 = load i16, ptr %156, align 2
  store i16 %157, ptr %122, align 1
  %158 = getelementptr inbounds nuw i8, ptr %156, i64 2
  %159 = load i8, ptr %158, align 2, !tbaa !84
  %160 = zext i8 %159 to i32
  %161 = add i32 %143, %160
  %162 = getelementptr inbounds nuw i8, ptr %156, i64 3
  %163 = load i8, ptr %162, align 1, !tbaa !87
  %164 = zext i8 %163 to i64
  %165 = getelementptr inbounds nuw i8, ptr %122, i64 %164
  %166 = and i32 %161, 63
  %167 = zext nneg i32 %166 to i64
  %168 = shl i64 %148, %167
  %169 = lshr i64 %168, %115
  %170 = getelementptr inbounds nuw [4 x i8], ptr %116, i64 %169
  %171 = load i16, ptr %170, align 2
  store i16 %171, ptr %165, align 1
  %172 = getelementptr inbounds nuw i8, ptr %170, i64 2
  %173 = load i8, ptr %172, align 2, !tbaa !84
  %174 = zext i8 %173 to i32
  %175 = add i32 %161, %174
  %176 = getelementptr inbounds nuw i8, ptr %170, i64 3
  %177 = load i8, ptr %176, align 1, !tbaa !87
  %178 = zext i8 %177 to i64
  %179 = getelementptr inbounds nuw i8, ptr %165, i64 %178
  %180 = and i32 %175, 63
  %181 = zext nneg i32 %180 to i64
  %182 = shl i64 %148, %181
  %183 = lshr i64 %182, %115
  %184 = getelementptr inbounds nuw [4 x i8], ptr %116, i64 %183
  %185 = load i16, ptr %184, align 2
  store i16 %185, ptr %179, align 1
  %186 = getelementptr inbounds nuw i8, ptr %184, i64 2
  %187 = load i8, ptr %186, align 2, !tbaa !84
  %188 = zext i8 %187 to i32
  %189 = add i32 %175, %188
  %190 = getelementptr inbounds nuw i8, ptr %184, i64 3
  %191 = load i8, ptr %190, align 1, !tbaa !87
  %192 = zext i8 %191 to i64
  %193 = getelementptr inbounds nuw i8, ptr %179, i64 %192
  %194 = and i32 %189, 63
  %195 = zext nneg i32 %194 to i64
  %196 = shl i64 %148, %195
  %197 = lshr i64 %196, %115
  %198 = getelementptr inbounds nuw [4 x i8], ptr %116, i64 %197
  %199 = load i16, ptr %198, align 2
  store i16 %199, ptr %193, align 1
  %200 = getelementptr inbounds nuw i8, ptr %198, i64 2
  %201 = load i8, ptr %200, align 2, !tbaa !84
  %202 = zext i8 %201 to i32
  %203 = add i32 %189, %202
  %204 = getelementptr inbounds nuw i8, ptr %198, i64 3
  %205 = load i8, ptr %204, align 1, !tbaa !87
  %206 = zext i8 %205 to i64
  %207 = getelementptr inbounds nuw i8, ptr %193, i64 %206
  %208 = and i32 %203, 63
  %209 = zext nneg i32 %208 to i64
  %210 = shl i64 %148, %209
  %211 = lshr i64 %210, %115
  %212 = getelementptr inbounds nuw [4 x i8], ptr %116, i64 %211
  %213 = load i16, ptr %212, align 2
  store i16 %213, ptr %207, align 1
  %214 = getelementptr inbounds nuw i8, ptr %212, i64 2
  %215 = load i8, ptr %214, align 2, !tbaa !84
  %216 = zext i8 %215 to i32
  %217 = add i32 %203, %216
  %218 = getelementptr inbounds nuw i8, ptr %212, i64 3
  %219 = load i8, ptr %218, align 1, !tbaa !87
  %220 = zext i8 %219 to i64
  %221 = getelementptr inbounds nuw i8, ptr %207, i64 %220
  %222 = icmp ugt i32 %217, 64
  br i1 %222, label %.loopexit30, label %121, !prof !88, !llvm.loop !89

223:                                              ; preds = %253, %117
  %224 = phi ptr [ %0, %117 ], [ %309, %253 ]
  %225 = phi i64 [ %110, %117 ], [ %248, %253 ]
  %226 = phi i64 [ %109, %117 ], [ %250, %253 ]
  %227 = phi i32 [ %108, %117 ], [ %305, %253 ]
  %228 = icmp slt i64 %225, 8
  br i1 %228, label %233, label %229

229:                                              ; preds = %223
  %230 = lshr i32 %227, 3
  %231 = zext nneg i32 %230 to i64
  %232 = and i32 %227, 7
  br label %244

233:                                              ; preds = %223
  %234 = icmp eq i64 %225, 0
  br i1 %234, label %.loopexit30, label %235

235:                                              ; preds = %233
  %236 = lshr i32 %227, 3
  %237 = zext nneg i32 %236 to i64
  %238 = icmp sge i64 %225, %237
  %239 = tail call i64 @llvm.smin.i64(i64 %225, i64 %237)
  %240 = trunc i64 %239 to i32
  %241 = and i64 %239, 4294967295
  %242 = shl i32 %240, 3
  %243 = sub i32 %227, %242
  br label %244

244:                                              ; preds = %235, %229
  %245 = phi i32 [ %243, %235 ], [ %232, %229 ]
  %246 = phi i64 [ %241, %235 ], [ %231, %229 ]
  %247 = phi i1 [ %238, %235 ], [ true, %229 ]
  %248 = sub nsw i64 %225, %246
  %249 = getelementptr inbounds i8, ptr %2, i64 %248
  %250 = load i64, ptr %249, align 1, !tbaa !26
  %251 = icmp ult ptr %224, %118
  %252 = and i1 %251, %247
  br i1 %252, label %253, label %.loopexit30.loopexit118.split.loop.exit

253:                                              ; preds = %244
  %254 = and i32 %245, 63
  %255 = zext nneg i32 %254 to i64
  %256 = shl i64 %250, %255
  %257 = lshr i64 %256, %115
  %258 = getelementptr inbounds nuw [4 x i8], ptr %116, i64 %257
  %259 = load i16, ptr %258, align 2
  store i16 %259, ptr %224, align 1
  %260 = getelementptr inbounds nuw i8, ptr %258, i64 2
  %261 = load i8, ptr %260, align 2, !tbaa !84
  %262 = zext i8 %261 to i32
  %263 = add i32 %245, %262
  %264 = getelementptr inbounds nuw i8, ptr %258, i64 3
  %265 = load i8, ptr %264, align 1, !tbaa !87
  %266 = zext i8 %265 to i64
  %267 = getelementptr inbounds nuw i8, ptr %224, i64 %266
  %268 = and i32 %263, 63
  %269 = zext nneg i32 %268 to i64
  %270 = shl i64 %250, %269
  %271 = lshr i64 %270, %115
  %272 = getelementptr inbounds nuw [4 x i8], ptr %116, i64 %271
  %273 = load i16, ptr %272, align 2
  store i16 %273, ptr %267, align 1
  %274 = getelementptr inbounds nuw i8, ptr %272, i64 2
  %275 = load i8, ptr %274, align 2, !tbaa !84
  %276 = zext i8 %275 to i32
  %277 = add i32 %263, %276
  %278 = getelementptr inbounds nuw i8, ptr %272, i64 3
  %279 = load i8, ptr %278, align 1, !tbaa !87
  %280 = zext i8 %279 to i64
  %281 = getelementptr inbounds nuw i8, ptr %267, i64 %280
  %282 = and i32 %277, 63
  %283 = zext nneg i32 %282 to i64
  %284 = shl i64 %250, %283
  %285 = lshr i64 %284, %115
  %286 = getelementptr inbounds nuw [4 x i8], ptr %116, i64 %285
  %287 = load i16, ptr %286, align 2
  store i16 %287, ptr %281, align 1
  %288 = getelementptr inbounds nuw i8, ptr %286, i64 2
  %289 = load i8, ptr %288, align 2, !tbaa !84
  %290 = zext i8 %289 to i32
  %291 = add i32 %277, %290
  %292 = getelementptr inbounds nuw i8, ptr %286, i64 3
  %293 = load i8, ptr %292, align 1, !tbaa !87
  %294 = zext i8 %293 to i64
  %295 = getelementptr inbounds nuw i8, ptr %281, i64 %294
  %296 = and i32 %291, 63
  %297 = zext nneg i32 %296 to i64
  %298 = shl i64 %250, %297
  %299 = lshr i64 %298, %115
  %300 = getelementptr inbounds nuw [4 x i8], ptr %116, i64 %299
  %301 = load i16, ptr %300, align 2
  store i16 %301, ptr %295, align 1
  %302 = getelementptr inbounds nuw i8, ptr %300, i64 2
  %303 = load i8, ptr %302, align 2, !tbaa !84
  %304 = zext i8 %303 to i32
  %305 = add i32 %291, %304
  %306 = getelementptr inbounds nuw i8, ptr %300, i64 3
  %307 = load i8, ptr %306, align 1, !tbaa !87
  %308 = zext i8 %307 to i64
  %309 = getelementptr inbounds nuw i8, ptr %295, i64 %308
  %310 = icmp ugt i32 %305, 64
  br i1 %310, label %.loopexit30, label %223, !prof !88, !llvm.loop !90

311:                                              ; preds = %80
  %312 = icmp slt i64 %3, 16
  br i1 %312, label %320, label %313

313:                                              ; preds = %311
  %314 = lshr i32 %78, 3
  %315 = zext nneg i32 %314 to i64
  %316 = sub nsw i64 0, %315
  %317 = getelementptr inbounds i8, ptr %73, i64 %316
  %318 = and i32 %78, 7
  %319 = load i64, ptr %317, align 1, !tbaa !26
  br label %.loopexit30

320:                                              ; preds = %311
  %321 = icmp eq i64 %72, 0
  br i1 %321, label %.loopexit30, label %322

322:                                              ; preds = %320
  %323 = lshr i32 %78, 3
  %324 = zext nneg i32 %323 to i64
  %325 = tail call i64 @llvm.smin.i64(i64 %72, i64 %324)
  %326 = trunc i64 %325 to i32
  %327 = and i64 %325, 4294967295
  %328 = sub nsw i64 0, %327
  %329 = getelementptr inbounds i8, ptr %73, i64 %328
  %330 = shl i32 %326, 3
  %331 = sub i32 %78, %330
  %332 = load i64, ptr %329, align 1, !tbaa !26
  br label %.loopexit30

.loopexit30.loopexit.split.loop.exit:             ; preds = %142
  %333 = getelementptr inbounds i8, ptr %2, i64 %146
  br label %.loopexit30

.loopexit30.loopexit118.split.loop.exit:          ; preds = %244
  %334 = getelementptr inbounds i8, ptr %2, i64 %248
  br label %.loopexit30

.loopexit30:                                      ; preds = %253, %233, %151, %131, %.loopexit30.loopexit118.split.loop.exit, %.loopexit30.loopexit.split.loop.exit, %322, %320, %313, %88
  %335 = phi i64 [ %86, %322 ], [ %86, %313 ], [ %86, %320 ], [ %100, %88 ], [ %103, %.loopexit30.loopexit.split.loop.exit ], [ %103, %151 ], [ %103, %.loopexit30.loopexit118.split.loop.exit ], [ %103, %131 ], [ %103, %233 ], [ %103, %253 ]
  %336 = phi i32 [ %85, %322 ], [ %85, %313 ], [ %85, %320 ], [ %99, %88 ], [ %104, %.loopexit30.loopexit.split.loop.exit ], [ %104, %151 ], [ %104, %.loopexit30.loopexit118.split.loop.exit ], [ %104, %131 ], [ %104, %233 ], [ %104, %253 ]
  %337 = phi ptr [ %83, %322 ], [ %83, %313 ], [ %83, %320 ], [ %97, %88 ], [ %106, %.loopexit30.loopexit.split.loop.exit ], [ %106, %151 ], [ %106, %.loopexit30.loopexit118.split.loop.exit ], [ %106, %131 ], [ %106, %233 ], [ %106, %253 ]
  %338 = phi ptr [ %82, %322 ], [ %82, %313 ], [ %82, %320 ], [ %96, %88 ], [ %107, %.loopexit30.loopexit.split.loop.exit ], [ %107, %151 ], [ %107, %.loopexit30.loopexit118.split.loop.exit ], [ %107, %131 ], [ %107, %233 ], [ %107, %253 ]
  %339 = phi i32 [ %331, %322 ], [ %318, %313 ], [ %78, %320 ], [ %94, %88 ], [ %143, %.loopexit30.loopexit.split.loop.exit ], [ %217, %151 ], [ %245, %.loopexit30.loopexit118.split.loop.exit ], [ %125, %131 ], [ %305, %253 ], [ %227, %233 ]
  %340 = phi i64 [ %332, %322 ], [ %319, %313 ], [ %74, %320 ], [ %66, %88 ], [ %148, %.loopexit30.loopexit.split.loop.exit ], [ %148, %151 ], [ %250, %.loopexit30.loopexit118.split.loop.exit ], [ %124, %131 ], [ %250, %253 ], [ %226, %233 ]
  %341 = phi ptr [ %329, %322 ], [ %317, %313 ], [ %73, %320 ], [ %2, %88 ], [ %333, %.loopexit30.loopexit.split.loop.exit ], [ @BIT_reloadDStream.zeroFilled, %151 ], [ %334, %.loopexit30.loopexit118.split.loop.exit ], [ %2, %131 ], [ @BIT_reloadDStream.zeroFilled, %253 ], [ %2, %233 ]
  %342 = phi ptr [ %0, %322 ], [ %0, %313 ], [ %0, %320 ], [ %0, %88 ], [ %122, %.loopexit30.loopexit.split.loop.exit ], [ %221, %151 ], [ %224, %.loopexit30.loopexit118.split.loop.exit ], [ %122, %131 ], [ %309, %253 ], [ %224, %233 ]
  %343 = ptrtoint ptr %342 to i64
  %344 = sub i64 %335, %343
  %345 = icmp ugt i64 %344, 1
  br i1 %345, label %346, label %.loopexit

346:                                              ; preds = %.loopexit30
  %347 = getelementptr inbounds i8, ptr %338, i64 -2
  %348 = ptrtoint ptr %2 to i64
  %349 = sub nsw i32 0, %336
  %350 = and i32 %349, 63
  %351 = zext nneg i32 %350 to i64
  %352 = icmp ugt i32 %339, 64
  br i1 %352, label %.loopexit26, label %.preheader25, !prof !91

.preheader25:                                     ; preds = %346, %390
  %353 = phi ptr [ %404, %390 ], [ %342, %346 ]
  %354 = phi ptr [ %381, %390 ], [ %341, %346 ]
  %355 = phi i64 [ %382, %390 ], [ %340, %346 ]
  %356 = phi i32 [ %400, %390 ], [ %339, %346 ]
  %357 = icmp ult ptr %354, %14
  br i1 %357, label %361, label %358

358:                                              ; preds = %.preheader25
  %359 = lshr i32 %356, 3
  %360 = and i32 %356, 7
  br label %375

361:                                              ; preds = %.preheader25
  %362 = icmp eq ptr %354, %2
  br i1 %362, label %.loopexit26, label %363

363:                                              ; preds = %361
  %364 = lshr i32 %356, 3
  %365 = zext nneg i32 %364 to i64
  %366 = sub nsw i64 0, %365
  %367 = getelementptr inbounds i8, ptr %354, i64 %366
  %368 = icmp uge ptr %367, %2
  %369 = ptrtoint ptr %354 to i64
  %370 = sub i64 %369, %348
  %371 = trunc i64 %370 to i32
  %372 = select i1 %368, i32 %364, i32 %371
  %373 = shl i32 %372, 3
  %374 = sub i32 %356, %373
  br label %375

375:                                              ; preds = %363, %358
  %376 = phi i32 [ %374, %363 ], [ %360, %358 ]
  %377 = phi i32 [ %372, %363 ], [ %359, %358 ]
  %378 = phi i1 [ %368, %363 ], [ true, %358 ]
  %379 = zext i32 %377 to i64
  %380 = sub nsw i64 0, %379
  %381 = getelementptr inbounds i8, ptr %354, i64 %380
  %382 = load i64, ptr %381, align 1, !tbaa !26
  %383 = icmp ule ptr %353, %347
  %384 = and i1 %383, %378
  br i1 %384, label %390, label %.loopexit26

.loopexit26:                                      ; preds = %390, %375, %361, %346
  %385 = phi ptr [ %342, %346 ], [ %404, %390 ], [ %353, %361 ], [ %353, %375 ]
  %386 = phi ptr [ @BIT_reloadDStream.zeroFilled, %346 ], [ @BIT_reloadDStream.zeroFilled, %390 ], [ %2, %361 ], [ %381, %375 ]
  %387 = phi i64 [ %340, %346 ], [ %382, %390 ], [ %355, %361 ], [ %382, %375 ]
  %388 = phi i32 [ %339, %346 ], [ %400, %390 ], [ %356, %361 ], [ %376, %375 ]
  %389 = icmp ugt ptr %385, %347
  br i1 %389, label %.loopexit, label %.preheader

390:                                              ; preds = %375
  %391 = and i32 %376, 63
  %392 = zext nneg i32 %391 to i64
  %393 = shl i64 %382, %392
  %394 = lshr i64 %393, %351
  %395 = getelementptr inbounds nuw [4 x i8], ptr %337, i64 %394
  %396 = load i16, ptr %395, align 2
  store i16 %396, ptr %353, align 1
  %397 = getelementptr inbounds nuw i8, ptr %395, i64 2
  %398 = load i8, ptr %397, align 2, !tbaa !84
  %399 = zext i8 %398 to i32
  %400 = add i32 %376, %399
  %401 = getelementptr inbounds nuw i8, ptr %395, i64 3
  %402 = load i8, ptr %401, align 1, !tbaa !87
  %403 = zext i8 %402 to i64
  %404 = getelementptr inbounds nuw i8, ptr %353, i64 %403
  %405 = icmp ugt i32 %400, 64
  br i1 %405, label %.loopexit26, label %.preheader25, !prof !88, !llvm.loop !92

.preheader:                                       ; preds = %.loopexit26, %.preheader
  %406 = phi ptr [ %421, %.preheader ], [ %385, %.loopexit26 ]
  %407 = phi i32 [ %417, %.preheader ], [ %388, %.loopexit26 ]
  %408 = and i32 %407, 63
  %409 = zext nneg i32 %408 to i64
  %410 = shl i64 %387, %409
  %411 = lshr i64 %410, %351
  %412 = getelementptr inbounds nuw [4 x i8], ptr %337, i64 %411
  %413 = load i16, ptr %412, align 2
  store i16 %413, ptr %406, align 1
  %414 = getelementptr inbounds nuw i8, ptr %412, i64 2
  %415 = load i8, ptr %414, align 2, !tbaa !84
  %416 = zext i8 %415 to i32
  %417 = add i32 %407, %416
  %418 = getelementptr inbounds nuw i8, ptr %412, i64 3
  %419 = load i8, ptr %418, align 1, !tbaa !87
  %420 = zext i8 %419 to i64
  %421 = getelementptr inbounds nuw i8, ptr %406, i64 %420
  %422 = icmp ugt ptr %421, %347
  br i1 %422, label %.loopexit, label %.preheader, !llvm.loop !93

.loopexit:                                        ; preds = %.preheader, %.loopexit26, %.loopexit30
  %423 = phi i32 [ %339, %.loopexit30 ], [ %388, %.loopexit26 ], [ %417, %.preheader ]
  %424 = phi i64 [ %340, %.loopexit30 ], [ %387, %.loopexit26 ], [ %387, %.preheader ]
  %425 = phi ptr [ %341, %.loopexit30 ], [ %386, %.loopexit26 ], [ %386, %.preheader ]
  %426 = phi ptr [ %342, %.loopexit30 ], [ %385, %.loopexit26 ], [ %421, %.preheader ]
  %427 = icmp ult ptr %426, %338
  br i1 %427, label %428, label %454

428:                                              ; preds = %.loopexit
  %429 = and i32 %423, 63
  %430 = zext nneg i32 %429 to i64
  %431 = shl i64 %424, %430
  %432 = sub nsw i32 0, %336
  %433 = and i32 %432, 63
  %434 = zext nneg i32 %433 to i64
  %435 = lshr i64 %431, %434
  %436 = getelementptr inbounds nuw [4 x i8], ptr %337, i64 %435
  %437 = load i8, ptr %436, align 2
  store i8 %437, ptr %426, align 1
  %438 = getelementptr inbounds nuw i8, ptr %436, i64 3
  %439 = load i8, ptr %438, align 1, !tbaa !87
  %440 = icmp eq i8 %439, 1
  br i1 %440, label %441, label %446

441:                                              ; preds = %428
  %442 = getelementptr inbounds nuw i8, ptr %436, i64 2
  %443 = load i8, ptr %442, align 2, !tbaa !84
  %444 = zext i8 %443 to i32
  %445 = add i32 %423, %444
  br label %454

446:                                              ; preds = %428
  %447 = icmp ult i32 %423, 64
  br i1 %447, label %448, label %454

448:                                              ; preds = %446
  %449 = getelementptr inbounds nuw i8, ptr %436, i64 2
  %450 = load i8, ptr %449, align 2, !tbaa !84
  %451 = zext i8 %450 to i32
  %452 = add nuw nsw i32 %423, %451
  %453 = tail call i32 @llvm.umin.i32(i32 %452, i32 64)
  br label %454

454:                                              ; preds = %448, %446, %441, %.loopexit
  %455 = phi i32 [ %423, %.loopexit ], [ %445, %441 ], [ %423, %446 ], [ %453, %448 ]
  %456 = icmp eq ptr %425, %2
  %457 = freeze i32 %455
  %458 = icmp eq i32 %457, 64
  %459 = and i1 %456, %458
  %460 = select i1 %459, i64 %1, i64 -20
  br label %461

461:                                              ; preds = %454, %71, %65, %16, %11, %9
  %462 = phi i64 [ %10, %9 ], [ %3, %71 ], [ -20, %65 ], [ -1, %16 ], [ -72, %11 ], [ %460, %454 ]
  ret i64 %462
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @HUF_selectDecoder(i64 noundef %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = icmp ult i64 %1, %0
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = shl i64 %1, 4
  %6 = udiv i64 %5, %0
  %7 = and i64 %6, 4294967295
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i64 [ %7, %4 ], [ 15, %2 ]
  %10 = lshr i64 %0, 8
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds nuw [16 x i8], ptr @algoTime, i64 %9
  %13 = load i32, ptr %12, align 16, !tbaa !94
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %15 = load i32, ptr %14, align 4, !tbaa !96
  %16 = mul i32 %15, %11
  %17 = add i32 %16, %13
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %19 = load i32, ptr %18, align 8, !tbaa !94
  %20 = getelementptr inbounds nuw i8, ptr %12, i64 12
  %21 = load i32, ptr %20, align 4, !tbaa !96
  %22 = mul i32 %21, %11
  %23 = add i32 %22, %19
  %24 = lshr i32 %23, 5
  %25 = add i32 %24, %23
  %26 = icmp ult i32 %25, %17
  %27 = zext i1 %26 to i32
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_decompress1X_DCtx_wksp(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq i64 %2, 0
  br i1 %9, label %62, label %10

10:                                               ; preds = %8
  %11 = icmp ugt i64 %4, %2
  br i1 %11, label %62, label %12

12:                                               ; preds = %10
  %13 = icmp eq i64 %4, %2
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %3, i64 %2, i1 false)
  br label %62

15:                                               ; preds = %12
  %16 = icmp eq i64 %4, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = load i8, ptr %3, align 1, !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %18, i64 %2, i1 false)
  br label %62

19:                                               ; preds = %15
  %20 = icmp ult i64 %4, %2
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = shl i64 %4, 4
  %23 = udiv i64 %22, %2
  %24 = and i64 %23, 4294967295
  br label %25

25:                                               ; preds = %21, %19
  %26 = phi i64 [ %24, %21 ], [ 15, %19 ]
  %27 = lshr i64 %2, 8
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds nuw [16 x i8], ptr @algoTime, i64 %26
  %30 = load i32, ptr %29, align 16, !tbaa !94
  %31 = getelementptr inbounds nuw i8, ptr %29, i64 4
  %32 = load i32, ptr %31, align 4, !tbaa !96
  %33 = mul i32 %32, %28
  %34 = add i32 %33, %30
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 8
  %36 = load i32, ptr %35, align 8, !tbaa !94
  %37 = getelementptr inbounds nuw i8, ptr %29, i64 12
  %38 = load i32, ptr %37, align 4, !tbaa !96
  %39 = mul i32 %38, %28
  %40 = add i32 %39, %36
  %41 = lshr i32 %40, 5
  %42 = add i32 %41, %40
  %43 = icmp ult i32 %42, %34
  br i1 %43, label %44, label %53

44:                                               ; preds = %25
  %45 = tail call i64 @HUF_readDTableX2_wksp(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7)
  %46 = icmp ult i64 %45, -119
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = icmp ult i64 %45, %4
  br i1 %48, label %49, label %62

49:                                               ; preds = %47
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 %45
  %51 = sub nuw i64 %4, %45
  %52 = tail call fastcc i64 @HUF_decompress1X2_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %50, i64 noundef %51, ptr noundef %0, i32 noundef %7)
  br label %62

53:                                               ; preds = %25
  %54 = tail call i64 @HUF_readDTableX1_wksp(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7)
  %55 = icmp ult i64 %54, -119
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = icmp ult i64 %54, %4
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  %59 = getelementptr inbounds nuw i8, ptr %3, i64 %54
  %60 = sub nuw i64 %4, %54
  %61 = tail call fastcc i64 @HUF_decompress1X1_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %59, i64 noundef %60, ptr noundef %0, i32 noundef %7)
  br label %62

62:                                               ; preds = %58, %56, %53, %49, %47, %44, %17, %14, %10, %8
  %63 = phi i64 [ %2, %14 ], [ %2, %17 ], [ -70, %8 ], [ -20, %10 ], [ %52, %49 ], [ %45, %44 ], [ -72, %47 ], [ %61, %58 ], [ %54, %53 ], [ -72, %56 ]
  ret i64 %63
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_decompress1X1_DCtx_wksp(ptr noundef captures(none) %0, ptr noundef writeonly captures(address) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = tail call i64 @HUF_readDTableX1_wksp(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7)
  %10 = icmp ult i64 %9, -119
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = icmp ult i64 %9, %4
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 %9
  %15 = sub nuw i64 %4, %9
  %16 = tail call fastcc i64 @HUF_decompress1X1_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %14, i64 noundef %15, ptr noundef %0, i32 noundef %7)
  br label %17

17:                                               ; preds = %13, %11, %8
  %18 = phi i64 [ %16, %13 ], [ %9, %8 ], [ -72, %11 ]
  ret i64 %18
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @HUF_decompress1X_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #6 {
  %7 = load i32, ptr %4, align 4
  %8 = and i32 %7, 65280
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc i64 @HUF_decompress1X2_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, i32 noundef %5)
  br label %14

12:                                               ; preds = %6
  %13 = tail call fastcc i64 @HUF_decompress1X1_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, i32 noundef %5)
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i64 [ %11, %10 ], [ %13, %12 ]
  ret i64 %15
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @HUF_decompress1X1_usingDTable_internal(ptr noundef writeonly captures(address) %0, i64 noundef %1, ptr noundef readonly captures(address) %2, i64 noundef %3, ptr noundef readonly captures(none) %4, i32 noundef %5) unnamed_addr #8 {
  %7 = ptrtoint ptr %0 to i64
  %8 = and i32 %5, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc i64 @HUF_decompress1X1_usingDTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  br label %268

12:                                               ; preds = %6
  %13 = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %13
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %16 = load i32, ptr %4, align 4
  %17 = lshr i32 %16, 16
  %18 = icmp eq i64 %3, 0
  br i1 %18, label %268, label %19

19:                                               ; preds = %12
  %20 = icmp ugt i64 %3, 7
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = getelementptr inbounds i8, ptr %2, i64 %3
  %23 = getelementptr i8, ptr %22, i64 -1
  %24 = load i8, ptr %23, align 1, !tbaa !9
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %268, label %76

26:                                               ; preds = %19
  %27 = load i8, ptr %2, align 1, !tbaa !9
  %28 = zext i8 %27 to i64
  switch i64 %3, label %70 [
    i64 7, label %29
    i64 6, label %35
    i64 5, label %42
    i64 4, label %49
    i64 3, label %56
    i64 2, label %63
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %31 = load i8, ptr %30, align 1, !tbaa !9
  %32 = zext i8 %31 to i64
  %33 = shl nuw nsw i64 %32, 48
  %34 = or disjoint i64 %33, %28
  br label %35

35:                                               ; preds = %29, %26
  %36 = phi i64 [ %28, %26 ], [ %34, %29 ]
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %38 = load i8, ptr %37, align 1, !tbaa !9
  %39 = zext i8 %38 to i64
  %40 = shl nuw nsw i64 %39, 40
  %41 = add nuw nsw i64 %40, %36
  br label %42

42:                                               ; preds = %35, %26
  %43 = phi i64 [ %28, %26 ], [ %41, %35 ]
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %45 = load i8, ptr %44, align 1, !tbaa !9
  %46 = zext i8 %45 to i64
  %47 = shl nuw nsw i64 %46, 32
  %48 = add nuw nsw i64 %47, %43
  br label %49

49:                                               ; preds = %42, %26
  %50 = phi i64 [ %28, %26 ], [ %48, %42 ]
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %52 = load i8, ptr %51, align 1, !tbaa !9
  %53 = zext i8 %52 to i64
  %54 = shl nuw nsw i64 %53, 24
  %55 = add nuw nsw i64 %54, %50
  br label %56

56:                                               ; preds = %49, %26
  %57 = phi i64 [ %28, %26 ], [ %55, %49 ]
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %59 = load i8, ptr %58, align 1, !tbaa !9
  %60 = zext i8 %59 to i64
  %61 = shl nuw nsw i64 %60, 16
  %62 = add nuw nsw i64 %61, %57
  br label %63

63:                                               ; preds = %56, %26
  %64 = phi i64 [ %28, %26 ], [ %62, %56 ]
  %65 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %66 = load i8, ptr %65, align 1, !tbaa !9
  %67 = zext i8 %66 to i64
  %68 = shl nuw nsw i64 %67, 8
  %69 = add nuw nsw i64 %68, %64
  br label %70

70:                                               ; preds = %63, %26
  %71 = phi i64 [ %28, %26 ], [ %69, %63 ]
  %72 = getelementptr i8, ptr %2, i64 %3
  %73 = getelementptr i8, ptr %72, i64 -1
  %74 = load i8, ptr %73, align 1, !tbaa !9
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %268, label %87

76:                                               ; preds = %21
  %77 = add nsw i64 %3, -8
  %78 = getelementptr inbounds i8, ptr %2, i64 %77
  %79 = load i64, ptr %78, align 1, !tbaa !26
  %80 = zext i8 %24 to i32
  %81 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %80, i1 true)
  %82 = xor i32 %81, 31
  %83 = sub nuw nsw i32 8, %82
  %84 = icmp ult i64 %3, -119
  br i1 %84, label %85, label %268

85:                                               ; preds = %76
  %86 = icmp sgt i64 %1, 3
  br i1 %86, label %95, label %179

87:                                               ; preds = %70
  %88 = zext i8 %74 to i32
  %89 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %88, i1 true)
  %90 = trunc nuw nsw i64 %3 to i32
  %91 = shl nuw nsw i32 %90, 3
  %92 = sub nsw i32 %89, %91
  %93 = add nsw i32 %92, 41
  %94 = icmp sgt i64 %1, 3
  br i1 %94, label %95, label %.loopexit9

95:                                               ; preds = %87, %85
  %96 = phi i32 [ %93, %87 ], [ %83, %85 ]
  %97 = phi i64 [ %71, %87 ], [ %79, %85 ]
  %98 = phi i64 [ 0, %87 ], [ %77, %85 ]
  %99 = getelementptr inbounds i8, ptr %14, i64 -3
  %100 = sub nsw i32 0, %17
  %101 = and i32 %100, 63
  %102 = zext nneg i32 %101 to i64
  br label %103

103:                                              ; preds = %133, %95
  %104 = phi ptr [ %0, %95 ], [ %177, %133 ]
  %105 = phi i64 [ %98, %95 ], [ %128, %133 ]
  %106 = phi i64 [ %97, %95 ], [ %130, %133 ]
  %107 = phi i32 [ %96, %95 ], [ %176, %133 ]
  %108 = icmp slt i64 %105, 8
  br i1 %108, label %113, label %109

109:                                              ; preds = %103
  %110 = lshr i32 %107, 3
  %111 = zext nneg i32 %110 to i64
  %112 = and i32 %107, 7
  br label %124

113:                                              ; preds = %103
  %114 = icmp eq i64 %105, 0
  br i1 %114, label %.loopexit9, label %115

115:                                              ; preds = %113
  %116 = lshr i32 %107, 3
  %117 = zext nneg i32 %116 to i64
  %118 = icmp sge i64 %105, %117
  %119 = tail call i64 @llvm.smin.i64(i64 %105, i64 %117)
  %120 = trunc i64 %119 to i32
  %121 = and i64 %119, 4294967295
  %122 = shl i32 %120, 3
  %123 = sub i32 %107, %122
  br label %124

124:                                              ; preds = %115, %109
  %125 = phi i32 [ %123, %115 ], [ %112, %109 ]
  %126 = phi i64 [ %121, %115 ], [ %111, %109 ]
  %127 = phi i1 [ %118, %115 ], [ true, %109 ]
  %128 = sub nsw i64 %105, %126
  %129 = getelementptr inbounds i8, ptr %2, i64 %128
  %130 = load i64, ptr %129, align 1, !tbaa !26
  %131 = icmp ult ptr %104, %99
  %132 = and i1 %131, %127
  br i1 %132, label %133, label %.loopexit9.loopexit.split.loop.exit

133:                                              ; preds = %124
  %134 = and i32 %125, 63
  %135 = zext nneg i32 %134 to i64
  %136 = shl i64 %130, %135
  %137 = lshr i64 %136, %102
  %138 = getelementptr inbounds nuw [2 x i8], ptr %15, i64 %137
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 1
  %140 = load i8, ptr %139, align 1, !tbaa !97
  %141 = load i8, ptr %138, align 1, !tbaa !99
  %142 = zext i8 %141 to i32
  %143 = add i32 %125, %142
  store i8 %140, ptr %104, align 1, !tbaa !9
  %144 = getelementptr inbounds nuw i8, ptr %104, i64 1
  %145 = and i32 %143, 63
  %146 = zext nneg i32 %145 to i64
  %147 = shl i64 %130, %146
  %148 = lshr i64 %147, %102
  %149 = getelementptr inbounds nuw [2 x i8], ptr %15, i64 %148
  %150 = getelementptr inbounds nuw i8, ptr %149, i64 1
  %151 = load i8, ptr %150, align 1, !tbaa !97
  %152 = load i8, ptr %149, align 1, !tbaa !99
  %153 = zext i8 %152 to i32
  %154 = add i32 %143, %153
  store i8 %151, ptr %144, align 1, !tbaa !9
  %155 = getelementptr inbounds nuw i8, ptr %104, i64 2
  %156 = and i32 %154, 63
  %157 = zext nneg i32 %156 to i64
  %158 = shl i64 %130, %157
  %159 = lshr i64 %158, %102
  %160 = getelementptr inbounds nuw [2 x i8], ptr %15, i64 %159
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 1
  %162 = load i8, ptr %161, align 1, !tbaa !97
  %163 = load i8, ptr %160, align 1, !tbaa !99
  %164 = zext i8 %163 to i32
  %165 = add i32 %154, %164
  store i8 %162, ptr %155, align 1, !tbaa !9
  %166 = getelementptr inbounds nuw i8, ptr %104, i64 3
  %167 = and i32 %165, 63
  %168 = zext nneg i32 %167 to i64
  %169 = shl i64 %130, %168
  %170 = lshr i64 %169, %102
  %171 = getelementptr inbounds nuw [2 x i8], ptr %15, i64 %170
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 1
  %173 = load i8, ptr %172, align 1, !tbaa !97
  %174 = load i8, ptr %171, align 1, !tbaa !99
  %175 = zext i8 %174 to i32
  %176 = add i32 %165, %175
  %177 = getelementptr inbounds nuw i8, ptr %104, i64 4
  store i8 %173, ptr %166, align 1, !tbaa !9
  %178 = icmp ugt i32 %176, 64
  br i1 %178, label %.loopexit9, label %103, !prof !88, !llvm.loop !100

179:                                              ; preds = %85
  %180 = icmp slt i64 %3, 16
  br i1 %180, label %188, label %181

181:                                              ; preds = %179
  %182 = lshr i32 %83, 3
  %183 = zext nneg i32 %182 to i64
  %184 = sub nsw i64 0, %183
  %185 = getelementptr inbounds i8, ptr %78, i64 %184
  %186 = and i32 %83, 7
  %187 = load i64, ptr %185, align 1, !tbaa !26
  br label %.loopexit9

188:                                              ; preds = %179
  %189 = icmp eq i64 %77, 0
  br i1 %189, label %.loopexit9, label %190

190:                                              ; preds = %188
  %191 = lshr i32 %83, 3
  %192 = zext nneg i32 %191 to i64
  %193 = tail call i64 @llvm.smin.i64(i64 %77, i64 %192)
  %194 = trunc i64 %193 to i32
  %195 = and i64 %193, 4294967295
  %196 = sub nsw i64 0, %195
  %197 = getelementptr inbounds i8, ptr %78, i64 %196
  %198 = shl i32 %194, 3
  %199 = sub i32 %83, %198
  %200 = load i64, ptr %197, align 1, !tbaa !26
  br label %.loopexit9

.loopexit9.loopexit.split.loop.exit:              ; preds = %124
  %201 = getelementptr inbounds i8, ptr %2, i64 %128
  br label %.loopexit9

.loopexit9:                                       ; preds = %133, %113, %.loopexit9.loopexit.split.loop.exit, %190, %188, %181, %87
  %202 = phi i32 [ %199, %190 ], [ %186, %181 ], [ %83, %188 ], [ %93, %87 ], [ %125, %.loopexit9.loopexit.split.loop.exit ], [ %176, %133 ], [ %107, %113 ]
  %203 = phi i64 [ %200, %190 ], [ %187, %181 ], [ %79, %188 ], [ %71, %87 ], [ %130, %.loopexit9.loopexit.split.loop.exit ], [ %130, %133 ], [ %106, %113 ]
  %204 = phi ptr [ %197, %190 ], [ %185, %181 ], [ %78, %188 ], [ %2, %87 ], [ %201, %.loopexit9.loopexit.split.loop.exit ], [ @BIT_reloadDStream.zeroFilled, %133 ], [ %2, %113 ]
  %205 = phi ptr [ %0, %190 ], [ %0, %181 ], [ %0, %188 ], [ %0, %87 ], [ %104, %.loopexit9.loopexit.split.loop.exit ], [ %177, %133 ], [ %104, %113 ]
  %206 = freeze i32 %202
  %207 = icmp ult ptr %205, %14
  br i1 %207, label %208, label %.loopexit

208:                                              ; preds = %.loopexit9
  %209 = ptrtoint ptr %205 to i64
  %210 = sub nsw i32 0, %17
  %211 = and i32 %210, 63
  %212 = zext nneg i32 %211 to i64
  %213 = add i64 %13, %7
  %214 = sub i64 %213, %209
  %215 = add i64 %209, 1
  %216 = and i64 %214, 1
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %231, label %218

218:                                              ; preds = %208
  %219 = and i32 %206, 63
  %220 = zext nneg i32 %219 to i64
  %221 = shl i64 %203, %220
  %222 = lshr i64 %221, %212
  %223 = getelementptr inbounds nuw [2 x i8], ptr %15, i64 %222
  %224 = getelementptr inbounds nuw i8, ptr %223, i64 1
  %225 = load i8, ptr %224, align 1, !tbaa !97
  %226 = load i8, ptr %223, align 1, !tbaa !99
  %227 = freeze i8 %226
  %228 = zext i8 %227 to i32
  %229 = add i32 %206, %228
  %230 = getelementptr inbounds nuw i8, ptr %205, i64 1
  store i8 %225, ptr %205, align 1, !tbaa !9
  br label %231

231:                                              ; preds = %218, %208
  %232 = phi i32 [ %206, %208 ], [ %229, %218 ]
  %233 = phi ptr [ %205, %208 ], [ %230, %218 ]
  %234 = phi i32 [ poison, %208 ], [ %229, %218 ]
  %235 = icmp eq i64 %213, %215
  br i1 %235, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %231, %.preheader
  %236 = phi i32 [ %260, %.preheader ], [ %232, %231 ]
  %237 = phi ptr [ %261, %.preheader ], [ %233, %231 ]
  %238 = and i32 %236, 63
  %239 = zext nneg i32 %238 to i64
  %240 = shl i64 %203, %239
  %241 = lshr i64 %240, %212
  %242 = getelementptr inbounds nuw [2 x i8], ptr %15, i64 %241
  %243 = getelementptr inbounds nuw i8, ptr %242, i64 1
  %244 = load i8, ptr %243, align 1, !tbaa !97
  %245 = load i8, ptr %242, align 1, !tbaa !99
  %246 = freeze i8 %245
  %247 = zext i8 %246 to i32
  %248 = add i32 %236, %247
  %249 = getelementptr inbounds nuw i8, ptr %237, i64 1
  store i8 %244, ptr %237, align 1, !tbaa !9
  %250 = and i32 %248, 63
  %251 = zext nneg i32 %250 to i64
  %252 = shl i64 %203, %251
  %253 = lshr i64 %252, %212
  %254 = getelementptr inbounds nuw [2 x i8], ptr %15, i64 %253
  %255 = getelementptr inbounds nuw i8, ptr %254, i64 1
  %256 = load i8, ptr %255, align 1, !tbaa !97
  %257 = load i8, ptr %254, align 1, !tbaa !99
  %258 = freeze i8 %257
  %259 = zext i8 %258 to i32
  %260 = add i32 %248, %259
  %261 = getelementptr inbounds nuw i8, ptr %237, i64 2
  store i8 %256, ptr %249, align 1, !tbaa !9
  %262 = icmp ult ptr %261, %14
  br i1 %262, label %.preheader, label %.loopexit, !llvm.loop !101

.loopexit:                                        ; preds = %.preheader, %231, %.loopexit9
  %263 = phi i32 [ %206, %.loopexit9 ], [ %234, %231 ], [ %260, %.preheader ]
  %264 = icmp eq ptr %204, %2
  %265 = icmp eq i32 %263, 64
  %266 = and i1 %264, %265
  %267 = select i1 %266, i64 %1, i64 -20
  br label %268

268:                                              ; preds = %.loopexit, %76, %70, %21, %12, %10
  %269 = phi i64 [ %11, %10 ], [ %3, %76 ], [ -20, %70 ], [ -1, %21 ], [ -72, %12 ], [ %267, %.loopexit ]
  ret i64 %269
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 1, 0) i64 @HUF_decompress4X_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = load i32, ptr %4, align 4
  %8 = and i32 %7, 65280
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc i64 @HUF_decompress4X2_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, i32 noundef %5)
  br label %14

12:                                               ; preds = %6
  %13 = tail call fastcc i64 @HUF_decompress4X1_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, i32 noundef %5)
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i64 [ %11, %10 ], [ %13, %12 ]
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 1, 0) i64 @HUF_decompress4X2_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.BIT_DStream_t, align 8
  %8 = and i32 %5, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = and i32 %5, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %2134, label %2140

13:                                               ; preds = %6
  %14 = icmp ult i64 %3, 10
  %15 = icmp ult i64 %1, 6
  %16 = or i1 %15, %14
  br i1 %16, label %2142, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %19 = getelementptr inbounds i8, ptr %18, i64 -7
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %21 = load i16, ptr %2, align 1, !tbaa !102
  %22 = zext i16 %21 to i64
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %24 = load i16, ptr %23, align 1, !tbaa !102
  %25 = zext i16 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %27 = load i16, ptr %26, align 1, !tbaa !102
  %28 = zext i16 %27 to i64
  %29 = add nuw nsw i64 %22, 6
  %30 = add nuw nsw i64 %29, %25
  %31 = add nuw nsw i64 %30, %28
  %32 = sub i64 %3, %31
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %34 = getelementptr i8, ptr %33, i64 %22
  %35 = getelementptr i8, ptr %34, i64 %25
  %36 = getelementptr i8, ptr %35, i64 %28
  %37 = add i64 %1, 3
  %38 = lshr i64 %37, 2
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 %38
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 %38
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 %38
  %42 = load i32, ptr %4, align 4
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = icmp ugt i64 %31, %3
  %46 = mul nuw nsw i64 %38, 3
  %47 = icmp samesign ugt i64 %46, %1
  %48 = select i1 %45, i1 true, i1 %47
  br i1 %48, label %2132, label %49

49:                                               ; preds = %17
  %50 = icmp eq i16 %21, 0
  br i1 %50, label %2132, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 14
  %53 = icmp ugt i16 %21, 7
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = getelementptr i8, ptr %34, i64 -1
  %56 = load i8, ptr %55, align 1, !tbaa !9
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %2132, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds i8, ptr %34, i64 -8
  %60 = load i64, ptr %59, align 1, !tbaa !26
  %61 = zext i8 %56 to i32
  %62 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %61, i1 true)
  %63 = xor i32 %62, 31
  %64 = sub nuw nsw i32 8, %63
  br label %120

65:                                               ; preds = %51
  %66 = load i8, ptr %33, align 1, !tbaa !9
  %67 = zext i8 %66 to i64
  switch i16 %21, label %109 [
    i16 7, label %68
    i16 6, label %74
    i16 5, label %81
    i16 4, label %88
    i16 3, label %95
    i16 2, label %102
  ]

68:                                               ; preds = %65
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %70 = load i8, ptr %69, align 1, !tbaa !9
  %71 = zext i8 %70 to i64
  %72 = shl nuw nsw i64 %71, 48
  %73 = or disjoint i64 %72, %67
  br label %74

74:                                               ; preds = %68, %65
  %75 = phi i64 [ %67, %65 ], [ %73, %68 ]
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %77 = load i8, ptr %76, align 1, !tbaa !9
  %78 = zext i8 %77 to i64
  %79 = shl nuw nsw i64 %78, 40
  %80 = add nuw nsw i64 %79, %75
  br label %81

81:                                               ; preds = %74, %65
  %82 = phi i64 [ %67, %65 ], [ %80, %74 ]
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 10
  %84 = load i8, ptr %83, align 1, !tbaa !9
  %85 = zext i8 %84 to i64
  %86 = shl nuw nsw i64 %85, 32
  %87 = add nuw nsw i64 %86, %82
  br label %88

88:                                               ; preds = %81, %65
  %89 = phi i64 [ %67, %65 ], [ %87, %81 ]
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 9
  %91 = load i8, ptr %90, align 1, !tbaa !9
  %92 = zext i8 %91 to i64
  %93 = shl nuw nsw i64 %92, 24
  %94 = add nuw nsw i64 %93, %89
  br label %95

95:                                               ; preds = %88, %65
  %96 = phi i64 [ %67, %65 ], [ %94, %88 ]
  %97 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %98 = load i8, ptr %97, align 1, !tbaa !9
  %99 = zext i8 %98 to i64
  %100 = shl nuw nsw i64 %99, 16
  %101 = add nuw nsw i64 %100, %96
  br label %102

102:                                              ; preds = %95, %65
  %103 = phi i64 [ %67, %65 ], [ %101, %95 ]
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 7
  %105 = load i8, ptr %104, align 1, !tbaa !9
  %106 = zext i8 %105 to i64
  %107 = shl nuw nsw i64 %106, 8
  %108 = add nuw nsw i64 %107, %103
  br label %109

109:                                              ; preds = %102, %65
  %110 = phi i64 [ %67, %65 ], [ %108, %102 ]
  %111 = getelementptr i8, ptr %34, i64 -1
  %112 = load i8, ptr %111, align 1, !tbaa !9
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %2132, label %114

114:                                              ; preds = %109
  %115 = zext i8 %112 to i32
  %116 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %115, i1 true)
  %117 = shl nuw nsw i16 %21, 3
  %118 = zext nneg i16 %117 to i32
  %reass.sub = sub nsw i32 %116, %118
  %119 = add nsw i32 %reass.sub, 41
  br label %120

120:                                              ; preds = %114, %58
  %121 = phi ptr [ %59, %58 ], [ %33, %114 ]
  %122 = phi i32 [ %64, %58 ], [ %119, %114 ]
  %123 = phi i64 [ %60, %58 ], [ %110, %114 ]
  %124 = icmp eq i16 %24, 0
  br i1 %124, label %2132, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds nuw i8, ptr %34, i64 8
  %127 = icmp ugt i16 %24, 7
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = getelementptr i8, ptr %35, i64 -1
  %130 = load i8, ptr %129, align 1, !tbaa !9
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %2132, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds i8, ptr %35, i64 -8
  %134 = load i64, ptr %133, align 1, !tbaa !26
  %135 = zext i8 %130 to i32
  %136 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %135, i1 true)
  %137 = xor i32 %136, 31
  %138 = sub nuw nsw i32 8, %137
  br label %194

139:                                              ; preds = %125
  %140 = load i8, ptr %34, align 1, !tbaa !9
  %141 = zext i8 %140 to i64
  switch i16 %24, label %183 [
    i16 7, label %142
    i16 6, label %148
    i16 5, label %155
    i16 4, label %162
    i16 3, label %169
    i16 2, label %176
  ]

142:                                              ; preds = %139
  %143 = getelementptr inbounds nuw i8, ptr %34, i64 6
  %144 = load i8, ptr %143, align 1, !tbaa !9
  %145 = zext i8 %144 to i64
  %146 = shl nuw nsw i64 %145, 48
  %147 = or disjoint i64 %146, %141
  br label %148

148:                                              ; preds = %142, %139
  %149 = phi i64 [ %141, %139 ], [ %147, %142 ]
  %150 = getelementptr inbounds nuw i8, ptr %34, i64 5
  %151 = load i8, ptr %150, align 1, !tbaa !9
  %152 = zext i8 %151 to i64
  %153 = shl nuw nsw i64 %152, 40
  %154 = add nuw nsw i64 %153, %149
  br label %155

155:                                              ; preds = %148, %139
  %156 = phi i64 [ %141, %139 ], [ %154, %148 ]
  %157 = getelementptr inbounds nuw i8, ptr %34, i64 4
  %158 = load i8, ptr %157, align 1, !tbaa !9
  %159 = zext i8 %158 to i64
  %160 = shl nuw nsw i64 %159, 32
  %161 = add nuw nsw i64 %160, %156
  br label %162

162:                                              ; preds = %155, %139
  %163 = phi i64 [ %141, %139 ], [ %161, %155 ]
  %164 = getelementptr inbounds nuw i8, ptr %34, i64 3
  %165 = load i8, ptr %164, align 1, !tbaa !9
  %166 = zext i8 %165 to i64
  %167 = shl nuw nsw i64 %166, 24
  %168 = add nuw nsw i64 %167, %163
  br label %169

169:                                              ; preds = %162, %139
  %170 = phi i64 [ %141, %139 ], [ %168, %162 ]
  %171 = getelementptr inbounds nuw i8, ptr %34, i64 2
  %172 = load i8, ptr %171, align 1, !tbaa !9
  %173 = zext i8 %172 to i64
  %174 = shl nuw nsw i64 %173, 16
  %175 = add nuw nsw i64 %174, %170
  br label %176

176:                                              ; preds = %169, %139
  %177 = phi i64 [ %141, %139 ], [ %175, %169 ]
  %178 = getelementptr inbounds nuw i8, ptr %34, i64 1
  %179 = load i8, ptr %178, align 1, !tbaa !9
  %180 = zext i8 %179 to i64
  %181 = shl nuw nsw i64 %180, 8
  %182 = add nuw nsw i64 %181, %177
  br label %183

183:                                              ; preds = %176, %139
  %184 = phi i64 [ %141, %139 ], [ %182, %176 ]
  %185 = getelementptr i8, ptr %35, i64 -1
  %186 = load i8, ptr %185, align 1, !tbaa !9
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %2132, label %188

188:                                              ; preds = %183
  %189 = zext i8 %186 to i32
  %190 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %189, i1 true)
  %191 = shl nuw nsw i16 %24, 3
  %192 = zext nneg i16 %191 to i32
  %reass.sub263 = sub nsw i32 %190, %192
  %193 = add nsw i32 %reass.sub263, 41
  br label %194

194:                                              ; preds = %188, %132
  %195 = phi i64 [ %134, %132 ], [ %184, %188 ]
  %196 = phi i32 [ %138, %132 ], [ %193, %188 ]
  %197 = phi ptr [ %133, %132 ], [ %34, %188 ]
  %198 = icmp eq i16 %27, 0
  br i1 %198, label %2132, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %201 = icmp ugt i16 %27, 7
  br i1 %201, label %202, label %213

202:                                              ; preds = %199
  %203 = getelementptr i8, ptr %36, i64 -1
  %204 = load i8, ptr %203, align 1, !tbaa !9
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %2132, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds i8, ptr %36, i64 -8
  %208 = load i64, ptr %207, align 1, !tbaa !26
  %209 = zext i8 %204 to i32
  %210 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %209, i1 true)
  %211 = xor i32 %210, 31
  %212 = sub nuw nsw i32 8, %211
  br label %268

213:                                              ; preds = %199
  %214 = load i8, ptr %35, align 1, !tbaa !9
  %215 = zext i8 %214 to i64
  switch i16 %27, label %257 [
    i16 7, label %216
    i16 6, label %222
    i16 5, label %229
    i16 4, label %236
    i16 3, label %243
    i16 2, label %250
  ]

216:                                              ; preds = %213
  %217 = getelementptr inbounds nuw i8, ptr %35, i64 6
  %218 = load i8, ptr %217, align 1, !tbaa !9
  %219 = zext i8 %218 to i64
  %220 = shl nuw nsw i64 %219, 48
  %221 = or disjoint i64 %220, %215
  br label %222

222:                                              ; preds = %216, %213
  %223 = phi i64 [ %215, %213 ], [ %221, %216 ]
  %224 = getelementptr inbounds nuw i8, ptr %35, i64 5
  %225 = load i8, ptr %224, align 1, !tbaa !9
  %226 = zext i8 %225 to i64
  %227 = shl nuw nsw i64 %226, 40
  %228 = add nuw nsw i64 %227, %223
  br label %229

229:                                              ; preds = %222, %213
  %230 = phi i64 [ %215, %213 ], [ %228, %222 ]
  %231 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %232 = load i8, ptr %231, align 1, !tbaa !9
  %233 = zext i8 %232 to i64
  %234 = shl nuw nsw i64 %233, 32
  %235 = add nuw nsw i64 %234, %230
  br label %236

236:                                              ; preds = %229, %213
  %237 = phi i64 [ %215, %213 ], [ %235, %229 ]
  %238 = getelementptr inbounds nuw i8, ptr %35, i64 3
  %239 = load i8, ptr %238, align 1, !tbaa !9
  %240 = zext i8 %239 to i64
  %241 = shl nuw nsw i64 %240, 24
  %242 = add nuw nsw i64 %241, %237
  br label %243

243:                                              ; preds = %236, %213
  %244 = phi i64 [ %215, %213 ], [ %242, %236 ]
  %245 = getelementptr inbounds nuw i8, ptr %35, i64 2
  %246 = load i8, ptr %245, align 1, !tbaa !9
  %247 = zext i8 %246 to i64
  %248 = shl nuw nsw i64 %247, 16
  %249 = add nuw nsw i64 %248, %244
  br label %250

250:                                              ; preds = %243, %213
  %251 = phi i64 [ %215, %213 ], [ %249, %243 ]
  %252 = getelementptr inbounds nuw i8, ptr %35, i64 1
  %253 = load i8, ptr %252, align 1, !tbaa !9
  %254 = zext i8 %253 to i64
  %255 = shl nuw nsw i64 %254, 8
  %256 = add nuw nsw i64 %255, %251
  br label %257

257:                                              ; preds = %250, %213
  %258 = phi i64 [ %215, %213 ], [ %256, %250 ]
  %259 = getelementptr i8, ptr %36, i64 -1
  %260 = load i8, ptr %259, align 1, !tbaa !9
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %2132, label %262

262:                                              ; preds = %257
  %263 = zext i8 %260 to i32
  %264 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %263, i1 true)
  %265 = shl nuw nsw i16 %27, 3
  %266 = zext nneg i16 %265 to i32
  %reass.sub264 = sub nsw i32 %264, %266
  %267 = add nsw i32 %reass.sub264, 41
  br label %268

268:                                              ; preds = %262, %206
  %269 = phi i64 [ %208, %206 ], [ %258, %262 ]
  %270 = phi i32 [ %212, %206 ], [ %267, %262 ]
  %271 = phi ptr [ %207, %206 ], [ %35, %262 ]
  %272 = call fastcc i64 @BIT_initDStream(ptr noundef %7, ptr noundef nonnull %36, i64 noundef %32)
  %273 = icmp ult i64 %272, -119
  br i1 %273, label %274, label %2132

274:                                              ; preds = %268
  %275 = mul i64 %38, -3
  %276 = add i64 %275, %1
  %277 = icmp ugt i64 %276, 7
  %278 = icmp ult ptr %41, %19
  %279 = select i1 %277, i1 %278, i1 false
  br i1 %279, label %280, label %581

280:                                              ; preds = %274
  %281 = load i64, ptr %7, align 8
  %282 = sub nsw i32 0, %43
  %283 = and i32 %282, 63
  %284 = zext nneg i32 %283 to i64
  %285 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %286 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %287 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %288 = load ptr, ptr %287, align 8, !tbaa !103
  %289 = load i32, ptr %285, align 8, !tbaa !107
  %290 = load ptr, ptr %286, align 8, !tbaa !108
  br label %291

291:                                              ; preds = %571, %280
  %292 = phi ptr [ %290, %280 ], [ %575, %571 ]
  %293 = phi i32 [ %289, %280 ], [ %576, %571 ]
  %294 = phi ptr [ %0, %280 ], [ %363, %571 ]
  %295 = phi ptr [ %39, %280 ], [ %419, %571 ]
  %296 = phi ptr [ %40, %280 ], [ %500, %571 ]
  %297 = phi ptr [ %41, %280 ], [ %556, %571 ]
  %298 = phi ptr [ %271, %280 ], [ %568, %571 ]
  %299 = phi i64 [ %123, %280 ], [ %431, %571 ]
  %300 = phi i32 [ %270, %280 ], [ %567, %571 ]
  %301 = phi i64 [ %269, %280 ], [ %566, %571 ]
  %302 = phi ptr [ %197, %280 ], [ %443, %571 ]
  %303 = phi i32 [ %122, %280 ], [ %430, %571 ]
  %304 = phi i32 [ %196, %280 ], [ %442, %571 ]
  %305 = phi i64 [ %195, %280 ], [ %441, %571 ]
  %306 = phi ptr [ %121, %280 ], [ %429, %571 ]
  %307 = phi i64 [ %281, %280 ], [ %577, %571 ]
  %308 = and i32 %303, 63
  %309 = zext nneg i32 %308 to i64
  %310 = shl i64 %299, %309
  %311 = lshr i64 %310, %284
  %312 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %311
  %313 = load i16, ptr %312, align 2
  store i16 %313, ptr %294, align 1
  %314 = getelementptr inbounds nuw i8, ptr %312, i64 2
  %315 = load i8, ptr %314, align 2, !tbaa !84
  %316 = zext i8 %315 to i32
  %317 = add i32 %303, %316
  %318 = getelementptr inbounds nuw i8, ptr %312, i64 3
  %319 = load i8, ptr %318, align 1, !tbaa !87
  %320 = zext i8 %319 to i64
  %321 = getelementptr inbounds nuw i8, ptr %294, i64 %320
  %322 = and i32 %317, 63
  %323 = zext nneg i32 %322 to i64
  %324 = shl i64 %299, %323
  %325 = lshr i64 %324, %284
  %326 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %325
  %327 = load i16, ptr %326, align 2
  store i16 %327, ptr %321, align 1
  %328 = getelementptr inbounds nuw i8, ptr %326, i64 2
  %329 = load i8, ptr %328, align 2, !tbaa !84
  %330 = zext i8 %329 to i32
  %331 = add i32 %317, %330
  %332 = getelementptr inbounds nuw i8, ptr %326, i64 3
  %333 = load i8, ptr %332, align 1, !tbaa !87
  %334 = zext i8 %333 to i64
  %335 = getelementptr inbounds nuw i8, ptr %321, i64 %334
  %336 = and i32 %331, 63
  %337 = zext nneg i32 %336 to i64
  %338 = shl i64 %299, %337
  %339 = lshr i64 %338, %284
  %340 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %339
  %341 = load i16, ptr %340, align 2
  store i16 %341, ptr %335, align 1
  %342 = getelementptr inbounds nuw i8, ptr %340, i64 2
  %343 = load i8, ptr %342, align 2, !tbaa !84
  %344 = zext i8 %343 to i32
  %345 = add i32 %331, %344
  %346 = getelementptr inbounds nuw i8, ptr %340, i64 3
  %347 = load i8, ptr %346, align 1, !tbaa !87
  %348 = zext i8 %347 to i64
  %349 = getelementptr inbounds nuw i8, ptr %335, i64 %348
  %350 = and i32 %345, 63
  %351 = zext nneg i32 %350 to i64
  %352 = shl i64 %299, %351
  %353 = lshr i64 %352, %284
  %354 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %353
  %355 = load i16, ptr %354, align 2
  store i16 %355, ptr %349, align 1
  %356 = getelementptr inbounds nuw i8, ptr %354, i64 2
  %357 = load i8, ptr %356, align 2, !tbaa !84
  %358 = zext i8 %357 to i32
  %359 = add i32 %345, %358
  %360 = getelementptr inbounds nuw i8, ptr %354, i64 3
  %361 = load i8, ptr %360, align 1, !tbaa !87
  %362 = zext i8 %361 to i64
  %363 = getelementptr inbounds nuw i8, ptr %349, i64 %362
  %364 = and i32 %304, 63
  %365 = zext nneg i32 %364 to i64
  %366 = shl i64 %305, %365
  %367 = lshr i64 %366, %284
  %368 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %367
  %369 = load i16, ptr %368, align 2
  store i16 %369, ptr %295, align 1
  %370 = getelementptr inbounds nuw i8, ptr %368, i64 2
  %371 = load i8, ptr %370, align 2, !tbaa !84
  %372 = zext i8 %371 to i32
  %373 = add i32 %304, %372
  %374 = getelementptr inbounds nuw i8, ptr %368, i64 3
  %375 = load i8, ptr %374, align 1, !tbaa !87
  %376 = zext i8 %375 to i64
  %377 = getelementptr inbounds nuw i8, ptr %295, i64 %376
  %378 = and i32 %373, 63
  %379 = zext nneg i32 %378 to i64
  %380 = shl i64 %305, %379
  %381 = lshr i64 %380, %284
  %382 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %381
  %383 = load i16, ptr %382, align 2
  store i16 %383, ptr %377, align 1
  %384 = getelementptr inbounds nuw i8, ptr %382, i64 2
  %385 = load i8, ptr %384, align 2, !tbaa !84
  %386 = zext i8 %385 to i32
  %387 = add i32 %373, %386
  %388 = getelementptr inbounds nuw i8, ptr %382, i64 3
  %389 = load i8, ptr %388, align 1, !tbaa !87
  %390 = zext i8 %389 to i64
  %391 = getelementptr inbounds nuw i8, ptr %377, i64 %390
  %392 = and i32 %387, 63
  %393 = zext nneg i32 %392 to i64
  %394 = shl i64 %305, %393
  %395 = lshr i64 %394, %284
  %396 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %395
  %397 = load i16, ptr %396, align 2
  store i16 %397, ptr %391, align 1
  %398 = getelementptr inbounds nuw i8, ptr %396, i64 2
  %399 = load i8, ptr %398, align 2, !tbaa !84
  %400 = zext i8 %399 to i32
  %401 = add i32 %387, %400
  %402 = getelementptr inbounds nuw i8, ptr %396, i64 3
  %403 = load i8, ptr %402, align 1, !tbaa !87
  %404 = zext i8 %403 to i64
  %405 = getelementptr inbounds nuw i8, ptr %391, i64 %404
  %406 = and i32 %401, 63
  %407 = zext nneg i32 %406 to i64
  %408 = shl i64 %305, %407
  %409 = lshr i64 %408, %284
  %410 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %409
  %411 = load i16, ptr %410, align 2
  store i16 %411, ptr %405, align 1
  %412 = getelementptr inbounds nuw i8, ptr %410, i64 2
  %413 = load i8, ptr %412, align 2, !tbaa !84
  %414 = zext i8 %413 to i32
  %415 = add i32 %401, %414
  %416 = getelementptr inbounds nuw i8, ptr %410, i64 3
  %417 = load i8, ptr %416, align 1, !tbaa !87
  %418 = zext i8 %417 to i64
  %419 = getelementptr inbounds nuw i8, ptr %405, i64 %418
  %420 = icmp ult ptr %306, %52
  br i1 %420, label %428, label %421, !prof !109

421:                                              ; preds = %291
  %422 = lshr i32 %359, 3
  %423 = zext nneg i32 %422 to i64
  %424 = sub nsw i64 0, %423
  %425 = getelementptr inbounds i8, ptr %306, i64 %424
  %426 = and i32 %359, 7
  %427 = load i64, ptr %425, align 1, !tbaa !26
  br label %428

428:                                              ; preds = %421, %291
  %429 = phi ptr [ %306, %291 ], [ %425, %421 ]
  %430 = phi i32 [ %359, %291 ], [ %426, %421 ]
  %431 = phi i64 [ %299, %291 ], [ %427, %421 ]
  %432 = icmp ult ptr %302, %126
  br i1 %432, label %440, label %433, !prof !109

433:                                              ; preds = %428
  %434 = lshr i32 %415, 3
  %435 = zext nneg i32 %434 to i64
  %436 = sub nsw i64 0, %435
  %437 = getelementptr inbounds i8, ptr %302, i64 %436
  %438 = and i32 %415, 7
  %439 = load i64, ptr %437, align 1, !tbaa !26
  br label %440

440:                                              ; preds = %433, %428
  %441 = phi i64 [ %305, %428 ], [ %439, %433 ]
  %442 = phi i32 [ %415, %428 ], [ %438, %433 ]
  %443 = phi ptr [ %302, %428 ], [ %437, %433 ]
  %444 = phi i1 [ true, %428 ], [ %420, %433 ]
  %445 = and i32 %300, 63
  %446 = zext nneg i32 %445 to i64
  %447 = shl i64 %301, %446
  %448 = lshr i64 %447, %284
  %449 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %448
  %450 = load i16, ptr %449, align 2
  store i16 %450, ptr %296, align 1
  %451 = getelementptr inbounds nuw i8, ptr %449, i64 2
  %452 = load i8, ptr %451, align 2, !tbaa !84
  %453 = zext i8 %452 to i32
  %454 = add i32 %300, %453
  %455 = getelementptr inbounds nuw i8, ptr %449, i64 3
  %456 = load i8, ptr %455, align 1, !tbaa !87
  %457 = zext i8 %456 to i64
  %458 = getelementptr inbounds nuw i8, ptr %296, i64 %457
  %459 = and i32 %454, 63
  %460 = zext nneg i32 %459 to i64
  %461 = shl i64 %301, %460
  %462 = lshr i64 %461, %284
  %463 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %462
  %464 = load i16, ptr %463, align 2
  store i16 %464, ptr %458, align 1
  %465 = getelementptr inbounds nuw i8, ptr %463, i64 2
  %466 = load i8, ptr %465, align 2, !tbaa !84
  %467 = zext i8 %466 to i32
  %468 = add i32 %454, %467
  %469 = getelementptr inbounds nuw i8, ptr %463, i64 3
  %470 = load i8, ptr %469, align 1, !tbaa !87
  %471 = zext i8 %470 to i64
  %472 = getelementptr inbounds nuw i8, ptr %458, i64 %471
  %473 = and i32 %468, 63
  %474 = zext nneg i32 %473 to i64
  %475 = shl i64 %301, %474
  %476 = lshr i64 %475, %284
  %477 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %476
  %478 = load i16, ptr %477, align 2
  store i16 %478, ptr %472, align 1
  %479 = getelementptr inbounds nuw i8, ptr %477, i64 2
  %480 = load i8, ptr %479, align 2, !tbaa !84
  %481 = zext i8 %480 to i32
  %482 = add i32 %468, %481
  %483 = getelementptr inbounds nuw i8, ptr %477, i64 3
  %484 = load i8, ptr %483, align 1, !tbaa !87
  %485 = zext i8 %484 to i64
  %486 = getelementptr inbounds nuw i8, ptr %472, i64 %485
  %487 = and i32 %482, 63
  %488 = zext nneg i32 %487 to i64
  %489 = shl i64 %301, %488
  %490 = lshr i64 %489, %284
  %491 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %490
  %492 = load i16, ptr %491, align 2
  store i16 %492, ptr %486, align 1
  %493 = getelementptr inbounds nuw i8, ptr %491, i64 2
  %494 = load i8, ptr %493, align 2, !tbaa !84
  %495 = zext i8 %494 to i32
  %496 = add i32 %482, %495
  %497 = getelementptr inbounds nuw i8, ptr %491, i64 3
  %498 = load i8, ptr %497, align 1, !tbaa !87
  %499 = zext i8 %498 to i64
  %500 = getelementptr inbounds nuw i8, ptr %486, i64 %499
  %501 = and i32 %293, 63
  %502 = zext nneg i32 %501 to i64
  %503 = shl i64 %307, %502
  %504 = lshr i64 %503, %284
  %505 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %504
  %506 = load i16, ptr %505, align 2
  store i16 %506, ptr %297, align 1
  %507 = getelementptr inbounds nuw i8, ptr %505, i64 2
  %508 = load i8, ptr %507, align 2, !tbaa !84
  %509 = zext i8 %508 to i32
  %510 = add i32 %293, %509
  %511 = getelementptr inbounds nuw i8, ptr %505, i64 3
  %512 = load i8, ptr %511, align 1, !tbaa !87
  %513 = zext i8 %512 to i64
  %514 = getelementptr inbounds nuw i8, ptr %297, i64 %513
  %515 = and i32 %510, 63
  %516 = zext nneg i32 %515 to i64
  %517 = shl i64 %307, %516
  %518 = lshr i64 %517, %284
  %519 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %518
  %520 = load i16, ptr %519, align 2
  store i16 %520, ptr %514, align 1
  %521 = getelementptr inbounds nuw i8, ptr %519, i64 2
  %522 = load i8, ptr %521, align 2, !tbaa !84
  %523 = zext i8 %522 to i32
  %524 = add i32 %510, %523
  %525 = getelementptr inbounds nuw i8, ptr %519, i64 3
  %526 = load i8, ptr %525, align 1, !tbaa !87
  %527 = zext i8 %526 to i64
  %528 = getelementptr inbounds nuw i8, ptr %514, i64 %527
  %529 = and i32 %524, 63
  %530 = zext nneg i32 %529 to i64
  %531 = shl i64 %307, %530
  %532 = lshr i64 %531, %284
  %533 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %532
  %534 = load i16, ptr %533, align 2
  store i16 %534, ptr %528, align 1
  %535 = getelementptr inbounds nuw i8, ptr %533, i64 2
  %536 = load i8, ptr %535, align 2, !tbaa !84
  %537 = zext i8 %536 to i32
  %538 = add i32 %524, %537
  %539 = getelementptr inbounds nuw i8, ptr %533, i64 3
  %540 = load i8, ptr %539, align 1, !tbaa !87
  %541 = zext i8 %540 to i64
  %542 = getelementptr inbounds nuw i8, ptr %528, i64 %541
  %543 = and i32 %538, 63
  %544 = zext nneg i32 %543 to i64
  %545 = shl i64 %307, %544
  %546 = lshr i64 %545, %284
  %547 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %546
  %548 = load i16, ptr %547, align 2
  store i16 %548, ptr %542, align 1
  %549 = getelementptr inbounds nuw i8, ptr %547, i64 2
  %550 = load i8, ptr %549, align 2, !tbaa !84
  %551 = zext i8 %550 to i32
  %552 = add i32 %538, %551
  %553 = getelementptr inbounds nuw i8, ptr %547, i64 3
  %554 = load i8, ptr %553, align 1, !tbaa !87
  %555 = zext i8 %554 to i64
  %556 = getelementptr inbounds nuw i8, ptr %542, i64 %555
  %557 = icmp ult ptr %298, %200
  br i1 %557, label %565, label %558, !prof !109

558:                                              ; preds = %440
  %559 = lshr i32 %496, 3
  %560 = zext nneg i32 %559 to i64
  %561 = sub nsw i64 0, %560
  %562 = getelementptr inbounds i8, ptr %298, i64 %561
  %563 = and i32 %496, 7
  %564 = load i64, ptr %562, align 1, !tbaa !26
  br label %565

565:                                              ; preds = %558, %440
  %566 = phi i64 [ %301, %440 ], [ %564, %558 ]
  %567 = phi i32 [ %496, %440 ], [ %563, %558 ]
  %568 = phi ptr [ %298, %440 ], [ %562, %558 ]
  %569 = phi i1 [ true, %440 ], [ %444, %558 ]
  %570 = icmp ult ptr %292, %288
  br i1 %570, label %.thread, label %571, !prof !109

571:                                              ; preds = %565
  %572 = lshr i32 %552, 3
  %573 = zext nneg i32 %572 to i64
  %574 = sub nsw i64 0, %573
  %575 = getelementptr inbounds i8, ptr %292, i64 %574
  store ptr %575, ptr %286, align 8, !tbaa !108
  %576 = and i32 %552, 7
  %577 = load i64, ptr %575, align 1, !tbaa !26
  store i64 %577, ptr %7, align 8, !tbaa !110
  %578 = icmp uge ptr %556, %19
  %579 = or i1 %578, %569
  br i1 %579, label %.thread, label %291, !llvm.loop !111

.thread:                                          ; preds = %565, %571
  %580 = phi i32 [ %576, %571 ], [ %552, %565 ]
  store i32 %580, ptr %285, align 8, !tbaa !107
  br label %581

581:                                              ; preds = %.thread, %274
  %582 = phi ptr [ %121, %274 ], [ %429, %.thread ]
  %583 = phi i64 [ %195, %274 ], [ %441, %.thread ]
  %584 = phi i32 [ %196, %274 ], [ %442, %.thread ]
  %585 = phi i32 [ %122, %274 ], [ %430, %.thread ]
  %586 = phi ptr [ %197, %274 ], [ %443, %.thread ]
  %587 = phi i64 [ %269, %274 ], [ %566, %.thread ]
  %588 = phi i32 [ %270, %274 ], [ %567, %.thread ]
  %589 = phi i64 [ %123, %274 ], [ %431, %.thread ]
  %590 = phi ptr [ %271, %274 ], [ %568, %.thread ]
  %591 = phi ptr [ %41, %274 ], [ %556, %.thread ]
  %592 = phi ptr [ %40, %274 ], [ %500, %.thread ]
  %593 = phi ptr [ %39, %274 ], [ %419, %.thread ]
  %594 = phi ptr [ %0, %274 ], [ %363, %.thread ]
  %595 = icmp ugt ptr %594, %39
  %596 = icmp ugt ptr %593, %40
  %597 = select i1 %595, i1 true, i1 %596
  %598 = icmp ugt ptr %592, %41
  %599 = select i1 %597, i1 true, i1 %598
  br i1 %599, label %2132, label %600

600:                                              ; preds = %581
  %601 = ptrtoint ptr %39 to i64
  %602 = ptrtoint ptr %594 to i64
  %603 = sub i64 %601, %602
  %604 = icmp ugt i64 %603, 7
  br i1 %604, label %605, label %818

605:                                              ; preds = %600
  %606 = icmp samesign ult i32 %44, 12
  %607 = icmp ugt i32 %585, 64
  br i1 %606, label %615, label %608

608:                                              ; preds = %605
  br i1 %607, label %.loopexit221, label %609, !prof !91

609:                                              ; preds = %608
  %610 = ptrtoint ptr %33 to i64
  %611 = getelementptr inbounds i8, ptr %39, i64 -7
  %612 = sub nsw i32 0, %43
  %613 = and i32 %612, 63
  %614 = zext nneg i32 %613 to i64
  br label %727

615:                                              ; preds = %605
  br i1 %607, label %.loopexit221, label %616, !prof !91

616:                                              ; preds = %615
  %617 = ptrtoint ptr %33 to i64
  %618 = getelementptr inbounds i8, ptr %39, i64 -9
  %619 = sub nsw i32 0, %43
  %620 = and i32 %619, 63
  %621 = zext nneg i32 %620 to i64
  br label %622

622:                                              ; preds = %655, %616
  %623 = phi ptr [ %594, %616 ], [ %725, %655 ]
  %624 = phi i64 [ %589, %616 ], [ %652, %655 ]
  %625 = phi i32 [ %585, %616 ], [ %721, %655 ]
  %626 = phi ptr [ %582, %616 ], [ %651, %655 ]
  %627 = icmp ult ptr %626, %52
  br i1 %627, label %631, label %628

628:                                              ; preds = %622
  %629 = lshr i32 %625, 3
  %630 = and i32 %625, 7
  br label %645

631:                                              ; preds = %622
  %632 = icmp eq ptr %626, %33
  br i1 %632, label %.loopexit221, label %633

633:                                              ; preds = %631
  %634 = lshr i32 %625, 3
  %635 = zext nneg i32 %634 to i64
  %636 = sub nsw i64 0, %635
  %637 = getelementptr inbounds i8, ptr %626, i64 %636
  %638 = icmp uge ptr %637, %33
  %639 = ptrtoint ptr %626 to i64
  %640 = sub i64 %639, %617
  %641 = trunc i64 %640 to i32
  %642 = select i1 %638, i32 %634, i32 %641
  %643 = shl i32 %642, 3
  %644 = sub i32 %625, %643
  br label %645

645:                                              ; preds = %633, %628
  %646 = phi i32 [ %642, %633 ], [ %629, %628 ]
  %647 = phi i32 [ %644, %633 ], [ %630, %628 ]
  %648 = phi i1 [ %638, %633 ], [ true, %628 ]
  %649 = zext i32 %646 to i64
  %650 = sub nsw i64 0, %649
  %651 = getelementptr inbounds i8, ptr %626, i64 %650
  %652 = load i64, ptr %651, align 1, !tbaa !26
  %653 = icmp ult ptr %623, %618
  %654 = and i1 %653, %648
  br i1 %654, label %655, label %.loopexit221

655:                                              ; preds = %645
  %656 = and i32 %647, 63
  %657 = zext nneg i32 %656 to i64
  %658 = shl i64 %652, %657
  %659 = lshr i64 %658, %621
  %660 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %659
  %661 = load i16, ptr %660, align 2
  store i16 %661, ptr %623, align 1
  %662 = getelementptr inbounds nuw i8, ptr %660, i64 2
  %663 = load i8, ptr %662, align 2, !tbaa !84
  %664 = zext i8 %663 to i32
  %665 = add i32 %647, %664
  %666 = getelementptr inbounds nuw i8, ptr %660, i64 3
  %667 = load i8, ptr %666, align 1, !tbaa !87
  %668 = zext i8 %667 to i64
  %669 = getelementptr inbounds nuw i8, ptr %623, i64 %668
  %670 = and i32 %665, 63
  %671 = zext nneg i32 %670 to i64
  %672 = shl i64 %652, %671
  %673 = lshr i64 %672, %621
  %674 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %673
  %675 = load i16, ptr %674, align 2
  store i16 %675, ptr %669, align 1
  %676 = getelementptr inbounds nuw i8, ptr %674, i64 2
  %677 = load i8, ptr %676, align 2, !tbaa !84
  %678 = zext i8 %677 to i32
  %679 = add i32 %665, %678
  %680 = getelementptr inbounds nuw i8, ptr %674, i64 3
  %681 = load i8, ptr %680, align 1, !tbaa !87
  %682 = zext i8 %681 to i64
  %683 = getelementptr inbounds nuw i8, ptr %669, i64 %682
  %684 = and i32 %679, 63
  %685 = zext nneg i32 %684 to i64
  %686 = shl i64 %652, %685
  %687 = lshr i64 %686, %621
  %688 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %687
  %689 = load i16, ptr %688, align 2
  store i16 %689, ptr %683, align 1
  %690 = getelementptr inbounds nuw i8, ptr %688, i64 2
  %691 = load i8, ptr %690, align 2, !tbaa !84
  %692 = zext i8 %691 to i32
  %693 = add i32 %679, %692
  %694 = getelementptr inbounds nuw i8, ptr %688, i64 3
  %695 = load i8, ptr %694, align 1, !tbaa !87
  %696 = zext i8 %695 to i64
  %697 = getelementptr inbounds nuw i8, ptr %683, i64 %696
  %698 = and i32 %693, 63
  %699 = zext nneg i32 %698 to i64
  %700 = shl i64 %652, %699
  %701 = lshr i64 %700, %621
  %702 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %701
  %703 = load i16, ptr %702, align 2
  store i16 %703, ptr %697, align 1
  %704 = getelementptr inbounds nuw i8, ptr %702, i64 2
  %705 = load i8, ptr %704, align 2, !tbaa !84
  %706 = zext i8 %705 to i32
  %707 = add i32 %693, %706
  %708 = getelementptr inbounds nuw i8, ptr %702, i64 3
  %709 = load i8, ptr %708, align 1, !tbaa !87
  %710 = zext i8 %709 to i64
  %711 = getelementptr inbounds nuw i8, ptr %697, i64 %710
  %712 = and i32 %707, 63
  %713 = zext nneg i32 %712 to i64
  %714 = shl i64 %652, %713
  %715 = lshr i64 %714, %621
  %716 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %715
  %717 = load i16, ptr %716, align 2
  store i16 %717, ptr %711, align 1
  %718 = getelementptr inbounds nuw i8, ptr %716, i64 2
  %719 = load i8, ptr %718, align 2, !tbaa !84
  %720 = zext i8 %719 to i32
  %721 = add i32 %707, %720
  %722 = getelementptr inbounds nuw i8, ptr %716, i64 3
  %723 = load i8, ptr %722, align 1, !tbaa !87
  %724 = zext i8 %723 to i64
  %725 = getelementptr inbounds nuw i8, ptr %711, i64 %724
  %726 = icmp ugt i32 %721, 64
  br i1 %726, label %.loopexit221, label %622, !prof !88, !llvm.loop !89

727:                                              ; preds = %760, %609
  %728 = phi ptr [ %594, %609 ], [ %816, %760 ]
  %729 = phi i64 [ %589, %609 ], [ %757, %760 ]
  %730 = phi i32 [ %585, %609 ], [ %812, %760 ]
  %731 = phi ptr [ %582, %609 ], [ %756, %760 ]
  %732 = icmp ult ptr %731, %52
  br i1 %732, label %736, label %733

733:                                              ; preds = %727
  %734 = lshr i32 %730, 3
  %735 = and i32 %730, 7
  br label %750

736:                                              ; preds = %727
  %737 = icmp eq ptr %731, %33
  br i1 %737, label %.loopexit221, label %738

738:                                              ; preds = %736
  %739 = lshr i32 %730, 3
  %740 = zext nneg i32 %739 to i64
  %741 = sub nsw i64 0, %740
  %742 = getelementptr inbounds i8, ptr %731, i64 %741
  %743 = icmp uge ptr %742, %33
  %744 = ptrtoint ptr %731 to i64
  %745 = sub i64 %744, %610
  %746 = trunc i64 %745 to i32
  %747 = select i1 %743, i32 %739, i32 %746
  %748 = shl i32 %747, 3
  %749 = sub i32 %730, %748
  br label %750

750:                                              ; preds = %738, %733
  %751 = phi i32 [ %747, %738 ], [ %734, %733 ]
  %752 = phi i32 [ %749, %738 ], [ %735, %733 ]
  %753 = phi i1 [ %743, %738 ], [ true, %733 ]
  %754 = zext i32 %751 to i64
  %755 = sub nsw i64 0, %754
  %756 = getelementptr inbounds i8, ptr %731, i64 %755
  %757 = load i64, ptr %756, align 1, !tbaa !26
  %758 = icmp ult ptr %728, %611
  %759 = and i1 %758, %753
  br i1 %759, label %760, label %.loopexit221

760:                                              ; preds = %750
  %761 = and i32 %752, 63
  %762 = zext nneg i32 %761 to i64
  %763 = shl i64 %757, %762
  %764 = lshr i64 %763, %614
  %765 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %764
  %766 = load i16, ptr %765, align 2
  store i16 %766, ptr %728, align 1
  %767 = getelementptr inbounds nuw i8, ptr %765, i64 2
  %768 = load i8, ptr %767, align 2, !tbaa !84
  %769 = zext i8 %768 to i32
  %770 = add i32 %752, %769
  %771 = getelementptr inbounds nuw i8, ptr %765, i64 3
  %772 = load i8, ptr %771, align 1, !tbaa !87
  %773 = zext i8 %772 to i64
  %774 = getelementptr inbounds nuw i8, ptr %728, i64 %773
  %775 = and i32 %770, 63
  %776 = zext nneg i32 %775 to i64
  %777 = shl i64 %757, %776
  %778 = lshr i64 %777, %614
  %779 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %778
  %780 = load i16, ptr %779, align 2
  store i16 %780, ptr %774, align 1
  %781 = getelementptr inbounds nuw i8, ptr %779, i64 2
  %782 = load i8, ptr %781, align 2, !tbaa !84
  %783 = zext i8 %782 to i32
  %784 = add i32 %770, %783
  %785 = getelementptr inbounds nuw i8, ptr %779, i64 3
  %786 = load i8, ptr %785, align 1, !tbaa !87
  %787 = zext i8 %786 to i64
  %788 = getelementptr inbounds nuw i8, ptr %774, i64 %787
  %789 = and i32 %784, 63
  %790 = zext nneg i32 %789 to i64
  %791 = shl i64 %757, %790
  %792 = lshr i64 %791, %614
  %793 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %792
  %794 = load i16, ptr %793, align 2
  store i16 %794, ptr %788, align 1
  %795 = getelementptr inbounds nuw i8, ptr %793, i64 2
  %796 = load i8, ptr %795, align 2, !tbaa !84
  %797 = zext i8 %796 to i32
  %798 = add i32 %784, %797
  %799 = getelementptr inbounds nuw i8, ptr %793, i64 3
  %800 = load i8, ptr %799, align 1, !tbaa !87
  %801 = zext i8 %800 to i64
  %802 = getelementptr inbounds nuw i8, ptr %788, i64 %801
  %803 = and i32 %798, 63
  %804 = zext nneg i32 %803 to i64
  %805 = shl i64 %757, %804
  %806 = lshr i64 %805, %614
  %807 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %806
  %808 = load i16, ptr %807, align 2
  store i16 %808, ptr %802, align 1
  %809 = getelementptr inbounds nuw i8, ptr %807, i64 2
  %810 = load i8, ptr %809, align 2, !tbaa !84
  %811 = zext i8 %810 to i32
  %812 = add i32 %798, %811
  %813 = getelementptr inbounds nuw i8, ptr %807, i64 3
  %814 = load i8, ptr %813, align 1, !tbaa !87
  %815 = zext i8 %814 to i64
  %816 = getelementptr inbounds nuw i8, ptr %802, i64 %815
  %817 = icmp ugt i32 %812, 64
  br i1 %817, label %.loopexit221, label %727, !prof !88, !llvm.loop !90

818:                                              ; preds = %600
  %819 = icmp ugt i32 %585, 64
  br i1 %819, label %.loopexit221, label %820, !prof !109

820:                                              ; preds = %818
  %821 = icmp ult ptr %582, %52
  br i1 %821, label %829, label %822

822:                                              ; preds = %820
  %823 = lshr i32 %585, 3
  %824 = zext nneg i32 %823 to i64
  %825 = sub nsw i64 0, %824
  %826 = getelementptr inbounds i8, ptr %582, i64 %825
  %827 = and i32 %585, 7
  %828 = load i64, ptr %826, align 1, !tbaa !26
  br label %.loopexit221

829:                                              ; preds = %820
  %830 = icmp eq ptr %582, %33
  br i1 %830, label %.loopexit221, label %831

831:                                              ; preds = %829
  %832 = lshr i32 %585, 3
  %833 = zext nneg i32 %832 to i64
  %834 = sub nsw i64 0, %833
  %835 = getelementptr inbounds i8, ptr %582, i64 %834
  %836 = icmp ult ptr %835, %33
  %837 = ptrtoint ptr %582 to i64
  %838 = ptrtoint ptr %33 to i64
  %839 = sub i64 %837, %838
  %840 = trunc i64 %839 to i32
  %841 = select i1 %836, i32 %840, i32 %832
  %842 = zext i32 %841 to i64
  %843 = sub nsw i64 0, %842
  %844 = getelementptr inbounds i8, ptr %582, i64 %843
  %845 = shl i32 %841, 3
  %846 = sub i32 %585, %845
  %847 = load i64, ptr %844, align 1, !tbaa !26
  br label %.loopexit221

.loopexit221:                                     ; preds = %760, %750, %736, %655, %645, %631, %831, %829, %822, %818, %615, %608
  %848 = phi ptr [ %844, %831 ], [ %826, %822 ], [ @BIT_reloadDStream.zeroFilled, %818 ], [ %33, %829 ], [ @BIT_reloadDStream.zeroFilled, %615 ], [ @BIT_reloadDStream.zeroFilled, %608 ], [ %33, %631 ], [ %651, %645 ], [ @BIT_reloadDStream.zeroFilled, %655 ], [ %756, %750 ], [ @BIT_reloadDStream.zeroFilled, %760 ], [ %33, %736 ]
  %849 = phi i32 [ %846, %831 ], [ %827, %822 ], [ %585, %818 ], [ %585, %829 ], [ %585, %615 ], [ %585, %608 ], [ %625, %631 ], [ %647, %645 ], [ %721, %655 ], [ %752, %750 ], [ %812, %760 ], [ %730, %736 ]
  %850 = phi i64 [ %847, %831 ], [ %828, %822 ], [ %589, %818 ], [ %589, %829 ], [ %589, %615 ], [ %589, %608 ], [ %624, %631 ], [ %652, %645 ], [ %652, %655 ], [ %757, %750 ], [ %757, %760 ], [ %729, %736 ]
  %851 = phi ptr [ %594, %831 ], [ %594, %822 ], [ %594, %818 ], [ %594, %829 ], [ %594, %615 ], [ %594, %608 ], [ %623, %631 ], [ %623, %645 ], [ %725, %655 ], [ %728, %750 ], [ %816, %760 ], [ %728, %736 ]
  %852 = ptrtoint ptr %851 to i64
  %853 = sub i64 %601, %852
  %854 = icmp ugt i64 %853, 1
  br i1 %854, label %855, label %.loopexit214

855:                                              ; preds = %.loopexit221
  %856 = getelementptr inbounds i8, ptr %39, i64 -2
  %857 = ptrtoint ptr %33 to i64
  %858 = sub nsw i32 0, %43
  %859 = and i32 %858, 63
  %860 = zext nneg i32 %859 to i64
  %861 = icmp ugt i32 %849, 64
  br i1 %861, label %.loopexit216, label %.preheader215, !prof !91

.preheader215:                                    ; preds = %855, %899
  %862 = phi ptr [ %913, %899 ], [ %851, %855 ]
  %863 = phi i64 [ %891, %899 ], [ %850, %855 ]
  %864 = phi i32 [ %909, %899 ], [ %849, %855 ]
  %865 = phi ptr [ %890, %899 ], [ %848, %855 ]
  %866 = icmp ult ptr %865, %52
  br i1 %866, label %870, label %867

867:                                              ; preds = %.preheader215
  %868 = lshr i32 %864, 3
  %869 = and i32 %864, 7
  br label %884

870:                                              ; preds = %.preheader215
  %871 = icmp eq ptr %865, %33
  br i1 %871, label %.loopexit216, label %872

872:                                              ; preds = %870
  %873 = lshr i32 %864, 3
  %874 = zext nneg i32 %873 to i64
  %875 = sub nsw i64 0, %874
  %876 = getelementptr inbounds i8, ptr %865, i64 %875
  %877 = icmp uge ptr %876, %33
  %878 = ptrtoint ptr %865 to i64
  %879 = sub i64 %878, %857
  %880 = trunc i64 %879 to i32
  %881 = select i1 %877, i32 %873, i32 %880
  %882 = shl i32 %881, 3
  %883 = sub i32 %864, %882
  br label %884

884:                                              ; preds = %872, %867
  %885 = phi i32 [ %881, %872 ], [ %868, %867 ]
  %886 = phi i32 [ %883, %872 ], [ %869, %867 ]
  %887 = phi i1 [ %877, %872 ], [ true, %867 ]
  %888 = zext i32 %885 to i64
  %889 = sub nsw i64 0, %888
  %890 = getelementptr inbounds i8, ptr %865, i64 %889
  %891 = load i64, ptr %890, align 1, !tbaa !26
  %892 = icmp ule ptr %862, %856
  %893 = and i1 %892, %887
  br i1 %893, label %899, label %.loopexit216

.loopexit216:                                     ; preds = %899, %884, %870, %855
  %894 = phi ptr [ %851, %855 ], [ %913, %899 ], [ %862, %870 ], [ %862, %884 ]
  %895 = phi i64 [ %850, %855 ], [ %891, %899 ], [ %863, %870 ], [ %891, %884 ]
  %896 = phi i32 [ %849, %855 ], [ %909, %899 ], [ %864, %870 ], [ %886, %884 ]
  %897 = phi ptr [ @BIT_reloadDStream.zeroFilled, %855 ], [ @BIT_reloadDStream.zeroFilled, %899 ], [ %33, %870 ], [ %890, %884 ]
  %898 = icmp ugt ptr %894, %856
  br i1 %898, label %.loopexit214, label %.preheader213

899:                                              ; preds = %884
  %900 = and i32 %886, 63
  %901 = zext nneg i32 %900 to i64
  %902 = shl i64 %891, %901
  %903 = lshr i64 %902, %860
  %904 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %903
  %905 = load i16, ptr %904, align 2
  store i16 %905, ptr %862, align 1
  %906 = getelementptr inbounds nuw i8, ptr %904, i64 2
  %907 = load i8, ptr %906, align 2, !tbaa !84
  %908 = zext i8 %907 to i32
  %909 = add i32 %886, %908
  %910 = getelementptr inbounds nuw i8, ptr %904, i64 3
  %911 = load i8, ptr %910, align 1, !tbaa !87
  %912 = zext i8 %911 to i64
  %913 = getelementptr inbounds nuw i8, ptr %862, i64 %912
  %914 = icmp ugt i32 %909, 64
  br i1 %914, label %.loopexit216, label %.preheader215, !prof !88, !llvm.loop !92

.preheader213:                                    ; preds = %.loopexit216, %.preheader213
  %915 = phi ptr [ %930, %.preheader213 ], [ %894, %.loopexit216 ]
  %916 = phi i32 [ %926, %.preheader213 ], [ %896, %.loopexit216 ]
  %917 = and i32 %916, 63
  %918 = zext nneg i32 %917 to i64
  %919 = shl i64 %895, %918
  %920 = lshr i64 %919, %860
  %921 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %920
  %922 = load i16, ptr %921, align 2
  store i16 %922, ptr %915, align 1
  %923 = getelementptr inbounds nuw i8, ptr %921, i64 2
  %924 = load i8, ptr %923, align 2, !tbaa !84
  %925 = zext i8 %924 to i32
  %926 = add i32 %916, %925
  %927 = getelementptr inbounds nuw i8, ptr %921, i64 3
  %928 = load i8, ptr %927, align 1, !tbaa !87
  %929 = zext i8 %928 to i64
  %930 = getelementptr inbounds nuw i8, ptr %915, i64 %929
  %931 = icmp ugt ptr %930, %856
  br i1 %931, label %.loopexit214, label %.preheader213, !llvm.loop !93

.loopexit214:                                     ; preds = %.preheader213, %.loopexit216, %.loopexit221
  %932 = phi ptr [ %848, %.loopexit221 ], [ %897, %.loopexit216 ], [ %897, %.preheader213 ]
  %933 = phi i32 [ %849, %.loopexit221 ], [ %896, %.loopexit216 ], [ %926, %.preheader213 ]
  %934 = phi i64 [ %850, %.loopexit221 ], [ %895, %.loopexit216 ], [ %895, %.preheader213 ]
  %935 = phi ptr [ %851, %.loopexit221 ], [ %894, %.loopexit216 ], [ %930, %.preheader213 ]
  %936 = icmp ult ptr %935, %39
  br i1 %936, label %937, label %963

937:                                              ; preds = %.loopexit214
  %938 = and i32 %933, 63
  %939 = zext nneg i32 %938 to i64
  %940 = shl i64 %934, %939
  %941 = sub nsw i32 0, %43
  %942 = and i32 %941, 63
  %943 = zext nneg i32 %942 to i64
  %944 = lshr i64 %940, %943
  %945 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %944
  %946 = load i8, ptr %945, align 2
  store i8 %946, ptr %935, align 1
  %947 = getelementptr inbounds nuw i8, ptr %945, i64 3
  %948 = load i8, ptr %947, align 1, !tbaa !87
  %949 = icmp eq i8 %948, 1
  br i1 %949, label %950, label %955

950:                                              ; preds = %937
  %951 = getelementptr inbounds nuw i8, ptr %945, i64 2
  %952 = load i8, ptr %951, align 2, !tbaa !84
  %953 = zext i8 %952 to i32
  %954 = add i32 %933, %953
  br label %963

955:                                              ; preds = %937
  %956 = icmp ult i32 %933, 64
  br i1 %956, label %957, label %963

957:                                              ; preds = %955
  %958 = getelementptr inbounds nuw i8, ptr %945, i64 2
  %959 = load i8, ptr %958, align 2, !tbaa !84
  %960 = zext i8 %959 to i32
  %961 = add nuw nsw i32 %933, %960
  %962 = tail call i32 @llvm.umin.i32(i32 %961, i32 64)
  br label %963

963:                                              ; preds = %957, %955, %950, %.loopexit214
  %964 = phi i32 [ %933, %.loopexit214 ], [ %954, %950 ], [ %933, %955 ], [ %962, %957 ]
  %965 = ptrtoint ptr %40 to i64
  %966 = ptrtoint ptr %593 to i64
  %967 = sub i64 %965, %966
  %968 = icmp ugt i64 %967, 7
  br i1 %968, label %969, label %1182

969:                                              ; preds = %963
  %970 = icmp samesign ult i32 %44, 12
  %971 = icmp ugt i32 %584, 64
  br i1 %970, label %979, label %972

972:                                              ; preds = %969
  br i1 %971, label %.loopexit203, label %973, !prof !91

973:                                              ; preds = %972
  %974 = ptrtoint ptr %34 to i64
  %975 = getelementptr inbounds i8, ptr %40, i64 -7
  %976 = sub nsw i32 0, %43
  %977 = and i32 %976, 63
  %978 = zext nneg i32 %977 to i64
  br label %1091

979:                                              ; preds = %969
  br i1 %971, label %.loopexit203, label %980, !prof !91

980:                                              ; preds = %979
  %981 = ptrtoint ptr %34 to i64
  %982 = getelementptr inbounds i8, ptr %40, i64 -9
  %983 = sub nsw i32 0, %43
  %984 = and i32 %983, 63
  %985 = zext nneg i32 %984 to i64
  br label %986

986:                                              ; preds = %1019, %980
  %987 = phi ptr [ %593, %980 ], [ %1089, %1019 ]
  %988 = phi ptr [ %586, %980 ], [ %1015, %1019 ]
  %989 = phi i32 [ %584, %980 ], [ %1085, %1019 ]
  %990 = phi i64 [ %583, %980 ], [ %1016, %1019 ]
  %991 = icmp ult ptr %988, %126
  br i1 %991, label %995, label %992

992:                                              ; preds = %986
  %993 = lshr i32 %989, 3
  %994 = and i32 %989, 7
  br label %1009

995:                                              ; preds = %986
  %996 = icmp eq ptr %988, %34
  br i1 %996, label %.loopexit203, label %997

997:                                              ; preds = %995
  %998 = lshr i32 %989, 3
  %999 = zext nneg i32 %998 to i64
  %1000 = sub nsw i64 0, %999
  %1001 = getelementptr inbounds i8, ptr %988, i64 %1000
  %1002 = icmp uge ptr %1001, %34
  %1003 = ptrtoint ptr %988 to i64
  %1004 = sub i64 %1003, %981
  %1005 = trunc i64 %1004 to i32
  %1006 = select i1 %1002, i32 %998, i32 %1005
  %1007 = shl i32 %1006, 3
  %1008 = sub i32 %989, %1007
  br label %1009

1009:                                             ; preds = %997, %992
  %1010 = phi i32 [ %1008, %997 ], [ %994, %992 ]
  %1011 = phi i32 [ %1006, %997 ], [ %993, %992 ]
  %1012 = phi i1 [ %1002, %997 ], [ true, %992 ]
  %1013 = zext i32 %1011 to i64
  %1014 = sub nsw i64 0, %1013
  %1015 = getelementptr inbounds i8, ptr %988, i64 %1014
  %1016 = load i64, ptr %1015, align 1, !tbaa !26
  %1017 = icmp ult ptr %987, %982
  %1018 = and i1 %1017, %1012
  br i1 %1018, label %1019, label %.loopexit203

1019:                                             ; preds = %1009
  %1020 = and i32 %1010, 63
  %1021 = zext nneg i32 %1020 to i64
  %1022 = shl i64 %1016, %1021
  %1023 = lshr i64 %1022, %985
  %1024 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1023
  %1025 = load i16, ptr %1024, align 2
  store i16 %1025, ptr %987, align 1
  %1026 = getelementptr inbounds nuw i8, ptr %1024, i64 2
  %1027 = load i8, ptr %1026, align 2, !tbaa !84
  %1028 = zext i8 %1027 to i32
  %1029 = add i32 %1010, %1028
  %1030 = getelementptr inbounds nuw i8, ptr %1024, i64 3
  %1031 = load i8, ptr %1030, align 1, !tbaa !87
  %1032 = zext i8 %1031 to i64
  %1033 = getelementptr inbounds nuw i8, ptr %987, i64 %1032
  %1034 = and i32 %1029, 63
  %1035 = zext nneg i32 %1034 to i64
  %1036 = shl i64 %1016, %1035
  %1037 = lshr i64 %1036, %985
  %1038 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1037
  %1039 = load i16, ptr %1038, align 2
  store i16 %1039, ptr %1033, align 1
  %1040 = getelementptr inbounds nuw i8, ptr %1038, i64 2
  %1041 = load i8, ptr %1040, align 2, !tbaa !84
  %1042 = zext i8 %1041 to i32
  %1043 = add i32 %1029, %1042
  %1044 = getelementptr inbounds nuw i8, ptr %1038, i64 3
  %1045 = load i8, ptr %1044, align 1, !tbaa !87
  %1046 = zext i8 %1045 to i64
  %1047 = getelementptr inbounds nuw i8, ptr %1033, i64 %1046
  %1048 = and i32 %1043, 63
  %1049 = zext nneg i32 %1048 to i64
  %1050 = shl i64 %1016, %1049
  %1051 = lshr i64 %1050, %985
  %1052 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1051
  %1053 = load i16, ptr %1052, align 2
  store i16 %1053, ptr %1047, align 1
  %1054 = getelementptr inbounds nuw i8, ptr %1052, i64 2
  %1055 = load i8, ptr %1054, align 2, !tbaa !84
  %1056 = zext i8 %1055 to i32
  %1057 = add i32 %1043, %1056
  %1058 = getelementptr inbounds nuw i8, ptr %1052, i64 3
  %1059 = load i8, ptr %1058, align 1, !tbaa !87
  %1060 = zext i8 %1059 to i64
  %1061 = getelementptr inbounds nuw i8, ptr %1047, i64 %1060
  %1062 = and i32 %1057, 63
  %1063 = zext nneg i32 %1062 to i64
  %1064 = shl i64 %1016, %1063
  %1065 = lshr i64 %1064, %985
  %1066 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1065
  %1067 = load i16, ptr %1066, align 2
  store i16 %1067, ptr %1061, align 1
  %1068 = getelementptr inbounds nuw i8, ptr %1066, i64 2
  %1069 = load i8, ptr %1068, align 2, !tbaa !84
  %1070 = zext i8 %1069 to i32
  %1071 = add i32 %1057, %1070
  %1072 = getelementptr inbounds nuw i8, ptr %1066, i64 3
  %1073 = load i8, ptr %1072, align 1, !tbaa !87
  %1074 = zext i8 %1073 to i64
  %1075 = getelementptr inbounds nuw i8, ptr %1061, i64 %1074
  %1076 = and i32 %1071, 63
  %1077 = zext nneg i32 %1076 to i64
  %1078 = shl i64 %1016, %1077
  %1079 = lshr i64 %1078, %985
  %1080 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1079
  %1081 = load i16, ptr %1080, align 2
  store i16 %1081, ptr %1075, align 1
  %1082 = getelementptr inbounds nuw i8, ptr %1080, i64 2
  %1083 = load i8, ptr %1082, align 2, !tbaa !84
  %1084 = zext i8 %1083 to i32
  %1085 = add i32 %1071, %1084
  %1086 = getelementptr inbounds nuw i8, ptr %1080, i64 3
  %1087 = load i8, ptr %1086, align 1, !tbaa !87
  %1088 = zext i8 %1087 to i64
  %1089 = getelementptr inbounds nuw i8, ptr %1075, i64 %1088
  %1090 = icmp ugt i32 %1085, 64
  br i1 %1090, label %.loopexit203, label %986, !prof !88, !llvm.loop !89

1091:                                             ; preds = %1124, %973
  %1092 = phi ptr [ %593, %973 ], [ %1180, %1124 ]
  %1093 = phi ptr [ %586, %973 ], [ %1120, %1124 ]
  %1094 = phi i32 [ %584, %973 ], [ %1176, %1124 ]
  %1095 = phi i64 [ %583, %973 ], [ %1121, %1124 ]
  %1096 = icmp ult ptr %1093, %126
  br i1 %1096, label %1100, label %1097

1097:                                             ; preds = %1091
  %1098 = lshr i32 %1094, 3
  %1099 = and i32 %1094, 7
  br label %1114

1100:                                             ; preds = %1091
  %1101 = icmp eq ptr %1093, %34
  br i1 %1101, label %.loopexit203, label %1102

1102:                                             ; preds = %1100
  %1103 = lshr i32 %1094, 3
  %1104 = zext nneg i32 %1103 to i64
  %1105 = sub nsw i64 0, %1104
  %1106 = getelementptr inbounds i8, ptr %1093, i64 %1105
  %1107 = icmp uge ptr %1106, %34
  %1108 = ptrtoint ptr %1093 to i64
  %1109 = sub i64 %1108, %974
  %1110 = trunc i64 %1109 to i32
  %1111 = select i1 %1107, i32 %1103, i32 %1110
  %1112 = shl i32 %1111, 3
  %1113 = sub i32 %1094, %1112
  br label %1114

1114:                                             ; preds = %1102, %1097
  %1115 = phi i32 [ %1113, %1102 ], [ %1099, %1097 ]
  %1116 = phi i32 [ %1111, %1102 ], [ %1098, %1097 ]
  %1117 = phi i1 [ %1107, %1102 ], [ true, %1097 ]
  %1118 = zext i32 %1116 to i64
  %1119 = sub nsw i64 0, %1118
  %1120 = getelementptr inbounds i8, ptr %1093, i64 %1119
  %1121 = load i64, ptr %1120, align 1, !tbaa !26
  %1122 = icmp ult ptr %1092, %975
  %1123 = and i1 %1122, %1117
  br i1 %1123, label %1124, label %.loopexit203

1124:                                             ; preds = %1114
  %1125 = and i32 %1115, 63
  %1126 = zext nneg i32 %1125 to i64
  %1127 = shl i64 %1121, %1126
  %1128 = lshr i64 %1127, %978
  %1129 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1128
  %1130 = load i16, ptr %1129, align 2
  store i16 %1130, ptr %1092, align 1
  %1131 = getelementptr inbounds nuw i8, ptr %1129, i64 2
  %1132 = load i8, ptr %1131, align 2, !tbaa !84
  %1133 = zext i8 %1132 to i32
  %1134 = add i32 %1115, %1133
  %1135 = getelementptr inbounds nuw i8, ptr %1129, i64 3
  %1136 = load i8, ptr %1135, align 1, !tbaa !87
  %1137 = zext i8 %1136 to i64
  %1138 = getelementptr inbounds nuw i8, ptr %1092, i64 %1137
  %1139 = and i32 %1134, 63
  %1140 = zext nneg i32 %1139 to i64
  %1141 = shl i64 %1121, %1140
  %1142 = lshr i64 %1141, %978
  %1143 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1142
  %1144 = load i16, ptr %1143, align 2
  store i16 %1144, ptr %1138, align 1
  %1145 = getelementptr inbounds nuw i8, ptr %1143, i64 2
  %1146 = load i8, ptr %1145, align 2, !tbaa !84
  %1147 = zext i8 %1146 to i32
  %1148 = add i32 %1134, %1147
  %1149 = getelementptr inbounds nuw i8, ptr %1143, i64 3
  %1150 = load i8, ptr %1149, align 1, !tbaa !87
  %1151 = zext i8 %1150 to i64
  %1152 = getelementptr inbounds nuw i8, ptr %1138, i64 %1151
  %1153 = and i32 %1148, 63
  %1154 = zext nneg i32 %1153 to i64
  %1155 = shl i64 %1121, %1154
  %1156 = lshr i64 %1155, %978
  %1157 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1156
  %1158 = load i16, ptr %1157, align 2
  store i16 %1158, ptr %1152, align 1
  %1159 = getelementptr inbounds nuw i8, ptr %1157, i64 2
  %1160 = load i8, ptr %1159, align 2, !tbaa !84
  %1161 = zext i8 %1160 to i32
  %1162 = add i32 %1148, %1161
  %1163 = getelementptr inbounds nuw i8, ptr %1157, i64 3
  %1164 = load i8, ptr %1163, align 1, !tbaa !87
  %1165 = zext i8 %1164 to i64
  %1166 = getelementptr inbounds nuw i8, ptr %1152, i64 %1165
  %1167 = and i32 %1162, 63
  %1168 = zext nneg i32 %1167 to i64
  %1169 = shl i64 %1121, %1168
  %1170 = lshr i64 %1169, %978
  %1171 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1170
  %1172 = load i16, ptr %1171, align 2
  store i16 %1172, ptr %1166, align 1
  %1173 = getelementptr inbounds nuw i8, ptr %1171, i64 2
  %1174 = load i8, ptr %1173, align 2, !tbaa !84
  %1175 = zext i8 %1174 to i32
  %1176 = add i32 %1162, %1175
  %1177 = getelementptr inbounds nuw i8, ptr %1171, i64 3
  %1178 = load i8, ptr %1177, align 1, !tbaa !87
  %1179 = zext i8 %1178 to i64
  %1180 = getelementptr inbounds nuw i8, ptr %1166, i64 %1179
  %1181 = icmp ugt i32 %1176, 64
  br i1 %1181, label %.loopexit203, label %1091, !prof !88, !llvm.loop !90

1182:                                             ; preds = %963
  %1183 = icmp ugt i32 %584, 64
  br i1 %1183, label %.loopexit203, label %1184, !prof !109

1184:                                             ; preds = %1182
  %1185 = icmp ult ptr %586, %126
  br i1 %1185, label %1193, label %1186

1186:                                             ; preds = %1184
  %1187 = lshr i32 %584, 3
  %1188 = zext nneg i32 %1187 to i64
  %1189 = sub nsw i64 0, %1188
  %1190 = getelementptr inbounds i8, ptr %586, i64 %1189
  %1191 = and i32 %584, 7
  %1192 = load i64, ptr %1190, align 1, !tbaa !26
  br label %.loopexit203

1193:                                             ; preds = %1184
  %1194 = icmp eq ptr %586, %34
  br i1 %1194, label %.loopexit203, label %1195

1195:                                             ; preds = %1193
  %1196 = lshr i32 %584, 3
  %1197 = zext nneg i32 %1196 to i64
  %1198 = sub nsw i64 0, %1197
  %1199 = getelementptr inbounds i8, ptr %586, i64 %1198
  %1200 = icmp ult ptr %1199, %34
  %1201 = ptrtoint ptr %586 to i64
  %1202 = ptrtoint ptr %34 to i64
  %1203 = sub i64 %1201, %1202
  %1204 = trunc i64 %1203 to i32
  %1205 = select i1 %1200, i32 %1204, i32 %1196
  %1206 = zext i32 %1205 to i64
  %1207 = sub nsw i64 0, %1206
  %1208 = getelementptr inbounds i8, ptr %586, i64 %1207
  %1209 = shl i32 %1205, 3
  %1210 = sub i32 %584, %1209
  %1211 = load i64, ptr %1208, align 1, !tbaa !26
  br label %.loopexit203

.loopexit203:                                     ; preds = %1124, %1114, %1100, %1019, %1009, %995, %1195, %1193, %1186, %1182, %979, %972
  %1212 = phi i64 [ %1211, %1195 ], [ %1192, %1186 ], [ %583, %1182 ], [ %583, %1193 ], [ %583, %979 ], [ %583, %972 ], [ %990, %995 ], [ %1016, %1009 ], [ %1016, %1019 ], [ %1121, %1114 ], [ %1121, %1124 ], [ %1095, %1100 ]
  %1213 = phi i32 [ %1210, %1195 ], [ %1191, %1186 ], [ %584, %1182 ], [ %584, %1193 ], [ %584, %979 ], [ %584, %972 ], [ %989, %995 ], [ %1010, %1009 ], [ %1085, %1019 ], [ %1115, %1114 ], [ %1176, %1124 ], [ %1094, %1100 ]
  %1214 = phi ptr [ %1208, %1195 ], [ %1190, %1186 ], [ @BIT_reloadDStream.zeroFilled, %1182 ], [ %34, %1193 ], [ @BIT_reloadDStream.zeroFilled, %979 ], [ @BIT_reloadDStream.zeroFilled, %972 ], [ %34, %995 ], [ %1015, %1009 ], [ @BIT_reloadDStream.zeroFilled, %1019 ], [ %1120, %1114 ], [ @BIT_reloadDStream.zeroFilled, %1124 ], [ %34, %1100 ]
  %1215 = phi ptr [ %593, %1195 ], [ %593, %1186 ], [ %593, %1182 ], [ %593, %1193 ], [ %593, %979 ], [ %593, %972 ], [ %987, %995 ], [ %987, %1009 ], [ %1089, %1019 ], [ %1092, %1114 ], [ %1180, %1124 ], [ %1092, %1100 ]
  %1216 = ptrtoint ptr %1215 to i64
  %1217 = sub i64 %965, %1216
  %1218 = icmp ugt i64 %1217, 1
  br i1 %1218, label %1219, label %.loopexit196

1219:                                             ; preds = %.loopexit203
  %1220 = getelementptr inbounds i8, ptr %40, i64 -2
  %1221 = ptrtoint ptr %34 to i64
  %1222 = sub nsw i32 0, %43
  %1223 = and i32 %1222, 63
  %1224 = zext nneg i32 %1223 to i64
  %1225 = icmp ugt i32 %1213, 64
  br i1 %1225, label %.loopexit198, label %.preheader197, !prof !91

.preheader197:                                    ; preds = %1219, %1263
  %1226 = phi ptr [ %1277, %1263 ], [ %1215, %1219 ]
  %1227 = phi ptr [ %1254, %1263 ], [ %1214, %1219 ]
  %1228 = phi i32 [ %1273, %1263 ], [ %1213, %1219 ]
  %1229 = phi i64 [ %1255, %1263 ], [ %1212, %1219 ]
  %1230 = icmp ult ptr %1227, %126
  br i1 %1230, label %1234, label %1231

1231:                                             ; preds = %.preheader197
  %1232 = lshr i32 %1228, 3
  %1233 = and i32 %1228, 7
  br label %1248

1234:                                             ; preds = %.preheader197
  %1235 = icmp eq ptr %1227, %34
  br i1 %1235, label %.loopexit198, label %1236

1236:                                             ; preds = %1234
  %1237 = lshr i32 %1228, 3
  %1238 = zext nneg i32 %1237 to i64
  %1239 = sub nsw i64 0, %1238
  %1240 = getelementptr inbounds i8, ptr %1227, i64 %1239
  %1241 = icmp uge ptr %1240, %34
  %1242 = ptrtoint ptr %1227 to i64
  %1243 = sub i64 %1242, %1221
  %1244 = trunc i64 %1243 to i32
  %1245 = select i1 %1241, i32 %1237, i32 %1244
  %1246 = shl i32 %1245, 3
  %1247 = sub i32 %1228, %1246
  br label %1248

1248:                                             ; preds = %1236, %1231
  %1249 = phi i32 [ %1247, %1236 ], [ %1233, %1231 ]
  %1250 = phi i32 [ %1245, %1236 ], [ %1232, %1231 ]
  %1251 = phi i1 [ %1241, %1236 ], [ true, %1231 ]
  %1252 = zext i32 %1250 to i64
  %1253 = sub nsw i64 0, %1252
  %1254 = getelementptr inbounds i8, ptr %1227, i64 %1253
  %1255 = load i64, ptr %1254, align 1, !tbaa !26
  %1256 = icmp ule ptr %1226, %1220
  %1257 = and i1 %1256, %1251
  br i1 %1257, label %1263, label %.loopexit198

.loopexit198:                                     ; preds = %1263, %1248, %1234, %1219
  %1258 = phi ptr [ %1215, %1219 ], [ %1277, %1263 ], [ %1226, %1234 ], [ %1226, %1248 ]
  %1259 = phi ptr [ @BIT_reloadDStream.zeroFilled, %1219 ], [ @BIT_reloadDStream.zeroFilled, %1263 ], [ %34, %1234 ], [ %1254, %1248 ]
  %1260 = phi i32 [ %1213, %1219 ], [ %1273, %1263 ], [ %1228, %1234 ], [ %1249, %1248 ]
  %1261 = phi i64 [ %1212, %1219 ], [ %1255, %1263 ], [ %1229, %1234 ], [ %1255, %1248 ]
  %1262 = icmp ugt ptr %1258, %1220
  br i1 %1262, label %.loopexit196, label %.preheader195

1263:                                             ; preds = %1248
  %1264 = and i32 %1249, 63
  %1265 = zext nneg i32 %1264 to i64
  %1266 = shl i64 %1255, %1265
  %1267 = lshr i64 %1266, %1224
  %1268 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1267
  %1269 = load i16, ptr %1268, align 2
  store i16 %1269, ptr %1226, align 1
  %1270 = getelementptr inbounds nuw i8, ptr %1268, i64 2
  %1271 = load i8, ptr %1270, align 2, !tbaa !84
  %1272 = zext i8 %1271 to i32
  %1273 = add i32 %1249, %1272
  %1274 = getelementptr inbounds nuw i8, ptr %1268, i64 3
  %1275 = load i8, ptr %1274, align 1, !tbaa !87
  %1276 = zext i8 %1275 to i64
  %1277 = getelementptr inbounds nuw i8, ptr %1226, i64 %1276
  %1278 = icmp ugt i32 %1273, 64
  br i1 %1278, label %.loopexit198, label %.preheader197, !prof !88, !llvm.loop !92

.preheader195:                                    ; preds = %.loopexit198, %.preheader195
  %1279 = phi ptr [ %1294, %.preheader195 ], [ %1258, %.loopexit198 ]
  %1280 = phi i32 [ %1290, %.preheader195 ], [ %1260, %.loopexit198 ]
  %1281 = and i32 %1280, 63
  %1282 = zext nneg i32 %1281 to i64
  %1283 = shl i64 %1261, %1282
  %1284 = lshr i64 %1283, %1224
  %1285 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1284
  %1286 = load i16, ptr %1285, align 2
  store i16 %1286, ptr %1279, align 1
  %1287 = getelementptr inbounds nuw i8, ptr %1285, i64 2
  %1288 = load i8, ptr %1287, align 2, !tbaa !84
  %1289 = zext i8 %1288 to i32
  %1290 = add i32 %1280, %1289
  %1291 = getelementptr inbounds nuw i8, ptr %1285, i64 3
  %1292 = load i8, ptr %1291, align 1, !tbaa !87
  %1293 = zext i8 %1292 to i64
  %1294 = getelementptr inbounds nuw i8, ptr %1279, i64 %1293
  %1295 = icmp ugt ptr %1294, %1220
  br i1 %1295, label %.loopexit196, label %.preheader195, !llvm.loop !93

.loopexit196:                                     ; preds = %.preheader195, %.loopexit198, %.loopexit203
  %1296 = phi i64 [ %1212, %.loopexit203 ], [ %1261, %.loopexit198 ], [ %1261, %.preheader195 ]
  %1297 = phi i32 [ %1213, %.loopexit203 ], [ %1260, %.loopexit198 ], [ %1290, %.preheader195 ]
  %1298 = phi ptr [ %1214, %.loopexit203 ], [ %1259, %.loopexit198 ], [ %1259, %.preheader195 ]
  %1299 = phi ptr [ %1215, %.loopexit203 ], [ %1258, %.loopexit198 ], [ %1294, %.preheader195 ]
  %1300 = icmp ult ptr %1299, %40
  br i1 %1300, label %1301, label %1327

1301:                                             ; preds = %.loopexit196
  %1302 = and i32 %1297, 63
  %1303 = zext nneg i32 %1302 to i64
  %1304 = shl i64 %1296, %1303
  %1305 = sub nsw i32 0, %43
  %1306 = and i32 %1305, 63
  %1307 = zext nneg i32 %1306 to i64
  %1308 = lshr i64 %1304, %1307
  %1309 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1308
  %1310 = load i8, ptr %1309, align 2
  store i8 %1310, ptr %1299, align 1
  %1311 = getelementptr inbounds nuw i8, ptr %1309, i64 3
  %1312 = load i8, ptr %1311, align 1, !tbaa !87
  %1313 = icmp eq i8 %1312, 1
  br i1 %1313, label %1314, label %1319

1314:                                             ; preds = %1301
  %1315 = getelementptr inbounds nuw i8, ptr %1309, i64 2
  %1316 = load i8, ptr %1315, align 2, !tbaa !84
  %1317 = zext i8 %1316 to i32
  %1318 = add i32 %1297, %1317
  br label %1327

1319:                                             ; preds = %1301
  %1320 = icmp ult i32 %1297, 64
  br i1 %1320, label %1321, label %1327

1321:                                             ; preds = %1319
  %1322 = getelementptr inbounds nuw i8, ptr %1309, i64 2
  %1323 = load i8, ptr %1322, align 2, !tbaa !84
  %1324 = zext i8 %1323 to i32
  %1325 = add nuw nsw i32 %1297, %1324
  %1326 = tail call i32 @llvm.umin.i32(i32 %1325, i32 64)
  br label %1327

1327:                                             ; preds = %1321, %1319, %1314, %.loopexit196
  %1328 = phi i32 [ %1297, %.loopexit196 ], [ %1318, %1314 ], [ %1297, %1319 ], [ %1326, %1321 ]
  %1329 = ptrtoint ptr %41 to i64
  %1330 = ptrtoint ptr %592 to i64
  %1331 = sub i64 %1329, %1330
  %1332 = icmp ugt i64 %1331, 7
  br i1 %1332, label %1333, label %1546

1333:                                             ; preds = %1327
  %1334 = icmp samesign ult i32 %44, 12
  %1335 = icmp ugt i32 %588, 64
  br i1 %1334, label %1343, label %1336

1336:                                             ; preds = %1333
  br i1 %1335, label %.loopexit185, label %1337, !prof !91

1337:                                             ; preds = %1336
  %1338 = ptrtoint ptr %35 to i64
  %1339 = getelementptr inbounds i8, ptr %41, i64 -7
  %1340 = sub nsw i32 0, %43
  %1341 = and i32 %1340, 63
  %1342 = zext nneg i32 %1341 to i64
  br label %1455

1343:                                             ; preds = %1333
  br i1 %1335, label %.loopexit185, label %1344, !prof !91

1344:                                             ; preds = %1343
  %1345 = ptrtoint ptr %35 to i64
  %1346 = getelementptr inbounds i8, ptr %41, i64 -9
  %1347 = sub nsw i32 0, %43
  %1348 = and i32 %1347, 63
  %1349 = zext nneg i32 %1348 to i64
  br label %1350

1350:                                             ; preds = %1383, %1344
  %1351 = phi ptr [ %592, %1344 ], [ %1453, %1383 ]
  %1352 = phi ptr [ %590, %1344 ], [ %1379, %1383 ]
  %1353 = phi i32 [ %588, %1344 ], [ %1449, %1383 ]
  %1354 = phi i64 [ %587, %1344 ], [ %1380, %1383 ]
  %1355 = icmp ult ptr %1352, %200
  br i1 %1355, label %1359, label %1356

1356:                                             ; preds = %1350
  %1357 = lshr i32 %1353, 3
  %1358 = and i32 %1353, 7
  br label %1373

1359:                                             ; preds = %1350
  %1360 = icmp eq ptr %1352, %35
  br i1 %1360, label %.loopexit185, label %1361

1361:                                             ; preds = %1359
  %1362 = lshr i32 %1353, 3
  %1363 = zext nneg i32 %1362 to i64
  %1364 = sub nsw i64 0, %1363
  %1365 = getelementptr inbounds i8, ptr %1352, i64 %1364
  %1366 = icmp uge ptr %1365, %35
  %1367 = ptrtoint ptr %1352 to i64
  %1368 = sub i64 %1367, %1345
  %1369 = trunc i64 %1368 to i32
  %1370 = select i1 %1366, i32 %1362, i32 %1369
  %1371 = shl i32 %1370, 3
  %1372 = sub i32 %1353, %1371
  br label %1373

1373:                                             ; preds = %1361, %1356
  %1374 = phi i32 [ %1372, %1361 ], [ %1358, %1356 ]
  %1375 = phi i32 [ %1370, %1361 ], [ %1357, %1356 ]
  %1376 = phi i1 [ %1366, %1361 ], [ true, %1356 ]
  %1377 = zext i32 %1375 to i64
  %1378 = sub nsw i64 0, %1377
  %1379 = getelementptr inbounds i8, ptr %1352, i64 %1378
  %1380 = load i64, ptr %1379, align 1, !tbaa !26
  %1381 = icmp ult ptr %1351, %1346
  %1382 = and i1 %1381, %1376
  br i1 %1382, label %1383, label %.loopexit185

1383:                                             ; preds = %1373
  %1384 = and i32 %1374, 63
  %1385 = zext nneg i32 %1384 to i64
  %1386 = shl i64 %1380, %1385
  %1387 = lshr i64 %1386, %1349
  %1388 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1387
  %1389 = load i16, ptr %1388, align 2
  store i16 %1389, ptr %1351, align 1
  %1390 = getelementptr inbounds nuw i8, ptr %1388, i64 2
  %1391 = load i8, ptr %1390, align 2, !tbaa !84
  %1392 = zext i8 %1391 to i32
  %1393 = add i32 %1374, %1392
  %1394 = getelementptr inbounds nuw i8, ptr %1388, i64 3
  %1395 = load i8, ptr %1394, align 1, !tbaa !87
  %1396 = zext i8 %1395 to i64
  %1397 = getelementptr inbounds nuw i8, ptr %1351, i64 %1396
  %1398 = and i32 %1393, 63
  %1399 = zext nneg i32 %1398 to i64
  %1400 = shl i64 %1380, %1399
  %1401 = lshr i64 %1400, %1349
  %1402 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1401
  %1403 = load i16, ptr %1402, align 2
  store i16 %1403, ptr %1397, align 1
  %1404 = getelementptr inbounds nuw i8, ptr %1402, i64 2
  %1405 = load i8, ptr %1404, align 2, !tbaa !84
  %1406 = zext i8 %1405 to i32
  %1407 = add i32 %1393, %1406
  %1408 = getelementptr inbounds nuw i8, ptr %1402, i64 3
  %1409 = load i8, ptr %1408, align 1, !tbaa !87
  %1410 = zext i8 %1409 to i64
  %1411 = getelementptr inbounds nuw i8, ptr %1397, i64 %1410
  %1412 = and i32 %1407, 63
  %1413 = zext nneg i32 %1412 to i64
  %1414 = shl i64 %1380, %1413
  %1415 = lshr i64 %1414, %1349
  %1416 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1415
  %1417 = load i16, ptr %1416, align 2
  store i16 %1417, ptr %1411, align 1
  %1418 = getelementptr inbounds nuw i8, ptr %1416, i64 2
  %1419 = load i8, ptr %1418, align 2, !tbaa !84
  %1420 = zext i8 %1419 to i32
  %1421 = add i32 %1407, %1420
  %1422 = getelementptr inbounds nuw i8, ptr %1416, i64 3
  %1423 = load i8, ptr %1422, align 1, !tbaa !87
  %1424 = zext i8 %1423 to i64
  %1425 = getelementptr inbounds nuw i8, ptr %1411, i64 %1424
  %1426 = and i32 %1421, 63
  %1427 = zext nneg i32 %1426 to i64
  %1428 = shl i64 %1380, %1427
  %1429 = lshr i64 %1428, %1349
  %1430 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1429
  %1431 = load i16, ptr %1430, align 2
  store i16 %1431, ptr %1425, align 1
  %1432 = getelementptr inbounds nuw i8, ptr %1430, i64 2
  %1433 = load i8, ptr %1432, align 2, !tbaa !84
  %1434 = zext i8 %1433 to i32
  %1435 = add i32 %1421, %1434
  %1436 = getelementptr inbounds nuw i8, ptr %1430, i64 3
  %1437 = load i8, ptr %1436, align 1, !tbaa !87
  %1438 = zext i8 %1437 to i64
  %1439 = getelementptr inbounds nuw i8, ptr %1425, i64 %1438
  %1440 = and i32 %1435, 63
  %1441 = zext nneg i32 %1440 to i64
  %1442 = shl i64 %1380, %1441
  %1443 = lshr i64 %1442, %1349
  %1444 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1443
  %1445 = load i16, ptr %1444, align 2
  store i16 %1445, ptr %1439, align 1
  %1446 = getelementptr inbounds nuw i8, ptr %1444, i64 2
  %1447 = load i8, ptr %1446, align 2, !tbaa !84
  %1448 = zext i8 %1447 to i32
  %1449 = add i32 %1435, %1448
  %1450 = getelementptr inbounds nuw i8, ptr %1444, i64 3
  %1451 = load i8, ptr %1450, align 1, !tbaa !87
  %1452 = zext i8 %1451 to i64
  %1453 = getelementptr inbounds nuw i8, ptr %1439, i64 %1452
  %1454 = icmp ugt i32 %1449, 64
  br i1 %1454, label %.loopexit185, label %1350, !prof !88, !llvm.loop !89

1455:                                             ; preds = %1488, %1337
  %1456 = phi ptr [ %592, %1337 ], [ %1544, %1488 ]
  %1457 = phi ptr [ %590, %1337 ], [ %1484, %1488 ]
  %1458 = phi i32 [ %588, %1337 ], [ %1540, %1488 ]
  %1459 = phi i64 [ %587, %1337 ], [ %1485, %1488 ]
  %1460 = icmp ult ptr %1457, %200
  br i1 %1460, label %1464, label %1461

1461:                                             ; preds = %1455
  %1462 = lshr i32 %1458, 3
  %1463 = and i32 %1458, 7
  br label %1478

1464:                                             ; preds = %1455
  %1465 = icmp eq ptr %1457, %35
  br i1 %1465, label %.loopexit185, label %1466

1466:                                             ; preds = %1464
  %1467 = lshr i32 %1458, 3
  %1468 = zext nneg i32 %1467 to i64
  %1469 = sub nsw i64 0, %1468
  %1470 = getelementptr inbounds i8, ptr %1457, i64 %1469
  %1471 = icmp uge ptr %1470, %35
  %1472 = ptrtoint ptr %1457 to i64
  %1473 = sub i64 %1472, %1338
  %1474 = trunc i64 %1473 to i32
  %1475 = select i1 %1471, i32 %1467, i32 %1474
  %1476 = shl i32 %1475, 3
  %1477 = sub i32 %1458, %1476
  br label %1478

1478:                                             ; preds = %1466, %1461
  %1479 = phi i32 [ %1477, %1466 ], [ %1463, %1461 ]
  %1480 = phi i32 [ %1475, %1466 ], [ %1462, %1461 ]
  %1481 = phi i1 [ %1471, %1466 ], [ true, %1461 ]
  %1482 = zext i32 %1480 to i64
  %1483 = sub nsw i64 0, %1482
  %1484 = getelementptr inbounds i8, ptr %1457, i64 %1483
  %1485 = load i64, ptr %1484, align 1, !tbaa !26
  %1486 = icmp ult ptr %1456, %1339
  %1487 = and i1 %1486, %1481
  br i1 %1487, label %1488, label %.loopexit185

1488:                                             ; preds = %1478
  %1489 = and i32 %1479, 63
  %1490 = zext nneg i32 %1489 to i64
  %1491 = shl i64 %1485, %1490
  %1492 = lshr i64 %1491, %1342
  %1493 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1492
  %1494 = load i16, ptr %1493, align 2
  store i16 %1494, ptr %1456, align 1
  %1495 = getelementptr inbounds nuw i8, ptr %1493, i64 2
  %1496 = load i8, ptr %1495, align 2, !tbaa !84
  %1497 = zext i8 %1496 to i32
  %1498 = add i32 %1479, %1497
  %1499 = getelementptr inbounds nuw i8, ptr %1493, i64 3
  %1500 = load i8, ptr %1499, align 1, !tbaa !87
  %1501 = zext i8 %1500 to i64
  %1502 = getelementptr inbounds nuw i8, ptr %1456, i64 %1501
  %1503 = and i32 %1498, 63
  %1504 = zext nneg i32 %1503 to i64
  %1505 = shl i64 %1485, %1504
  %1506 = lshr i64 %1505, %1342
  %1507 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1506
  %1508 = load i16, ptr %1507, align 2
  store i16 %1508, ptr %1502, align 1
  %1509 = getelementptr inbounds nuw i8, ptr %1507, i64 2
  %1510 = load i8, ptr %1509, align 2, !tbaa !84
  %1511 = zext i8 %1510 to i32
  %1512 = add i32 %1498, %1511
  %1513 = getelementptr inbounds nuw i8, ptr %1507, i64 3
  %1514 = load i8, ptr %1513, align 1, !tbaa !87
  %1515 = zext i8 %1514 to i64
  %1516 = getelementptr inbounds nuw i8, ptr %1502, i64 %1515
  %1517 = and i32 %1512, 63
  %1518 = zext nneg i32 %1517 to i64
  %1519 = shl i64 %1485, %1518
  %1520 = lshr i64 %1519, %1342
  %1521 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1520
  %1522 = load i16, ptr %1521, align 2
  store i16 %1522, ptr %1516, align 1
  %1523 = getelementptr inbounds nuw i8, ptr %1521, i64 2
  %1524 = load i8, ptr %1523, align 2, !tbaa !84
  %1525 = zext i8 %1524 to i32
  %1526 = add i32 %1512, %1525
  %1527 = getelementptr inbounds nuw i8, ptr %1521, i64 3
  %1528 = load i8, ptr %1527, align 1, !tbaa !87
  %1529 = zext i8 %1528 to i64
  %1530 = getelementptr inbounds nuw i8, ptr %1516, i64 %1529
  %1531 = and i32 %1526, 63
  %1532 = zext nneg i32 %1531 to i64
  %1533 = shl i64 %1485, %1532
  %1534 = lshr i64 %1533, %1342
  %1535 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1534
  %1536 = load i16, ptr %1535, align 2
  store i16 %1536, ptr %1530, align 1
  %1537 = getelementptr inbounds nuw i8, ptr %1535, i64 2
  %1538 = load i8, ptr %1537, align 2, !tbaa !84
  %1539 = zext i8 %1538 to i32
  %1540 = add i32 %1526, %1539
  %1541 = getelementptr inbounds nuw i8, ptr %1535, i64 3
  %1542 = load i8, ptr %1541, align 1, !tbaa !87
  %1543 = zext i8 %1542 to i64
  %1544 = getelementptr inbounds nuw i8, ptr %1530, i64 %1543
  %1545 = icmp ugt i32 %1540, 64
  br i1 %1545, label %.loopexit185, label %1455, !prof !88, !llvm.loop !90

1546:                                             ; preds = %1327
  %1547 = icmp ugt i32 %588, 64
  br i1 %1547, label %.loopexit185, label %1548, !prof !109

1548:                                             ; preds = %1546
  %1549 = icmp ult ptr %590, %200
  br i1 %1549, label %1557, label %1550

1550:                                             ; preds = %1548
  %1551 = lshr i32 %588, 3
  %1552 = zext nneg i32 %1551 to i64
  %1553 = sub nsw i64 0, %1552
  %1554 = getelementptr inbounds i8, ptr %590, i64 %1553
  %1555 = and i32 %588, 7
  %1556 = load i64, ptr %1554, align 1, !tbaa !26
  br label %.loopexit185

1557:                                             ; preds = %1548
  %1558 = icmp eq ptr %590, %35
  br i1 %1558, label %.loopexit185, label %1559

1559:                                             ; preds = %1557
  %1560 = lshr i32 %588, 3
  %1561 = zext nneg i32 %1560 to i64
  %1562 = sub nsw i64 0, %1561
  %1563 = getelementptr inbounds i8, ptr %590, i64 %1562
  %1564 = icmp ult ptr %1563, %35
  %1565 = ptrtoint ptr %590 to i64
  %1566 = ptrtoint ptr %35 to i64
  %1567 = sub i64 %1565, %1566
  %1568 = trunc i64 %1567 to i32
  %1569 = select i1 %1564, i32 %1568, i32 %1560
  %1570 = zext i32 %1569 to i64
  %1571 = sub nsw i64 0, %1570
  %1572 = getelementptr inbounds i8, ptr %590, i64 %1571
  %1573 = shl i32 %1569, 3
  %1574 = sub i32 %588, %1573
  %1575 = load i64, ptr %1572, align 1, !tbaa !26
  br label %.loopexit185

.loopexit185:                                     ; preds = %1488, %1478, %1464, %1383, %1373, %1359, %1559, %1557, %1550, %1546, %1343, %1336
  %1576 = phi i64 [ %1575, %1559 ], [ %1556, %1550 ], [ %587, %1546 ], [ %587, %1557 ], [ %587, %1343 ], [ %587, %1336 ], [ %1354, %1359 ], [ %1380, %1373 ], [ %1380, %1383 ], [ %1485, %1478 ], [ %1485, %1488 ], [ %1459, %1464 ]
  %1577 = phi i32 [ %1574, %1559 ], [ %1555, %1550 ], [ %588, %1546 ], [ %588, %1557 ], [ %588, %1343 ], [ %588, %1336 ], [ %1353, %1359 ], [ %1374, %1373 ], [ %1449, %1383 ], [ %1479, %1478 ], [ %1540, %1488 ], [ %1458, %1464 ]
  %1578 = phi ptr [ %1572, %1559 ], [ %1554, %1550 ], [ @BIT_reloadDStream.zeroFilled, %1546 ], [ %35, %1557 ], [ @BIT_reloadDStream.zeroFilled, %1343 ], [ @BIT_reloadDStream.zeroFilled, %1336 ], [ %35, %1359 ], [ %1379, %1373 ], [ @BIT_reloadDStream.zeroFilled, %1383 ], [ %1484, %1478 ], [ @BIT_reloadDStream.zeroFilled, %1488 ], [ %35, %1464 ]
  %1579 = phi ptr [ %592, %1559 ], [ %592, %1550 ], [ %592, %1546 ], [ %592, %1557 ], [ %592, %1343 ], [ %592, %1336 ], [ %1351, %1359 ], [ %1351, %1373 ], [ %1453, %1383 ], [ %1456, %1478 ], [ %1544, %1488 ], [ %1456, %1464 ]
  %1580 = ptrtoint ptr %1579 to i64
  %1581 = sub i64 %1329, %1580
  %1582 = icmp ugt i64 %1581, 1
  br i1 %1582, label %1583, label %.loopexit178

1583:                                             ; preds = %.loopexit185
  %1584 = getelementptr inbounds i8, ptr %41, i64 -2
  %1585 = ptrtoint ptr %35 to i64
  %1586 = sub nsw i32 0, %43
  %1587 = and i32 %1586, 63
  %1588 = zext nneg i32 %1587 to i64
  %1589 = icmp ugt i32 %1577, 64
  br i1 %1589, label %.loopexit180, label %.preheader179, !prof !91

.preheader179:                                    ; preds = %1583, %1627
  %1590 = phi ptr [ %1641, %1627 ], [ %1579, %1583 ]
  %1591 = phi ptr [ %1618, %1627 ], [ %1578, %1583 ]
  %1592 = phi i32 [ %1637, %1627 ], [ %1577, %1583 ]
  %1593 = phi i64 [ %1619, %1627 ], [ %1576, %1583 ]
  %1594 = icmp ult ptr %1591, %200
  br i1 %1594, label %1598, label %1595

1595:                                             ; preds = %.preheader179
  %1596 = lshr i32 %1592, 3
  %1597 = and i32 %1592, 7
  br label %1612

1598:                                             ; preds = %.preheader179
  %1599 = icmp eq ptr %1591, %35
  br i1 %1599, label %.loopexit180, label %1600

1600:                                             ; preds = %1598
  %1601 = lshr i32 %1592, 3
  %1602 = zext nneg i32 %1601 to i64
  %1603 = sub nsw i64 0, %1602
  %1604 = getelementptr inbounds i8, ptr %1591, i64 %1603
  %1605 = icmp uge ptr %1604, %35
  %1606 = ptrtoint ptr %1591 to i64
  %1607 = sub i64 %1606, %1585
  %1608 = trunc i64 %1607 to i32
  %1609 = select i1 %1605, i32 %1601, i32 %1608
  %1610 = shl i32 %1609, 3
  %1611 = sub i32 %1592, %1610
  br label %1612

1612:                                             ; preds = %1600, %1595
  %1613 = phi i32 [ %1611, %1600 ], [ %1597, %1595 ]
  %1614 = phi i32 [ %1609, %1600 ], [ %1596, %1595 ]
  %1615 = phi i1 [ %1605, %1600 ], [ true, %1595 ]
  %1616 = zext i32 %1614 to i64
  %1617 = sub nsw i64 0, %1616
  %1618 = getelementptr inbounds i8, ptr %1591, i64 %1617
  %1619 = load i64, ptr %1618, align 1, !tbaa !26
  %1620 = icmp ule ptr %1590, %1584
  %1621 = and i1 %1620, %1615
  br i1 %1621, label %1627, label %.loopexit180

.loopexit180:                                     ; preds = %1627, %1612, %1598, %1583
  %1622 = phi ptr [ %1579, %1583 ], [ %1641, %1627 ], [ %1590, %1598 ], [ %1590, %1612 ]
  %1623 = phi ptr [ @BIT_reloadDStream.zeroFilled, %1583 ], [ @BIT_reloadDStream.zeroFilled, %1627 ], [ %35, %1598 ], [ %1618, %1612 ]
  %1624 = phi i32 [ %1577, %1583 ], [ %1637, %1627 ], [ %1592, %1598 ], [ %1613, %1612 ]
  %1625 = phi i64 [ %1576, %1583 ], [ %1619, %1627 ], [ %1593, %1598 ], [ %1619, %1612 ]
  %1626 = icmp ugt ptr %1622, %1584
  br i1 %1626, label %.loopexit178, label %.preheader177

1627:                                             ; preds = %1612
  %1628 = and i32 %1613, 63
  %1629 = zext nneg i32 %1628 to i64
  %1630 = shl i64 %1619, %1629
  %1631 = lshr i64 %1630, %1588
  %1632 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1631
  %1633 = load i16, ptr %1632, align 2
  store i16 %1633, ptr %1590, align 1
  %1634 = getelementptr inbounds nuw i8, ptr %1632, i64 2
  %1635 = load i8, ptr %1634, align 2, !tbaa !84
  %1636 = zext i8 %1635 to i32
  %1637 = add i32 %1613, %1636
  %1638 = getelementptr inbounds nuw i8, ptr %1632, i64 3
  %1639 = load i8, ptr %1638, align 1, !tbaa !87
  %1640 = zext i8 %1639 to i64
  %1641 = getelementptr inbounds nuw i8, ptr %1590, i64 %1640
  %1642 = icmp ugt i32 %1637, 64
  br i1 %1642, label %.loopexit180, label %.preheader179, !prof !88, !llvm.loop !92

.preheader177:                                    ; preds = %.loopexit180, %.preheader177
  %1643 = phi ptr [ %1658, %.preheader177 ], [ %1622, %.loopexit180 ]
  %1644 = phi i32 [ %1654, %.preheader177 ], [ %1624, %.loopexit180 ]
  %1645 = and i32 %1644, 63
  %1646 = zext nneg i32 %1645 to i64
  %1647 = shl i64 %1625, %1646
  %1648 = lshr i64 %1647, %1588
  %1649 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1648
  %1650 = load i16, ptr %1649, align 2
  store i16 %1650, ptr %1643, align 1
  %1651 = getelementptr inbounds nuw i8, ptr %1649, i64 2
  %1652 = load i8, ptr %1651, align 2, !tbaa !84
  %1653 = zext i8 %1652 to i32
  %1654 = add i32 %1644, %1653
  %1655 = getelementptr inbounds nuw i8, ptr %1649, i64 3
  %1656 = load i8, ptr %1655, align 1, !tbaa !87
  %1657 = zext i8 %1656 to i64
  %1658 = getelementptr inbounds nuw i8, ptr %1643, i64 %1657
  %1659 = icmp ugt ptr %1658, %1584
  br i1 %1659, label %.loopexit178, label %.preheader177, !llvm.loop !93

.loopexit178:                                     ; preds = %.preheader177, %.loopexit180, %.loopexit185
  %1660 = phi i64 [ %1576, %.loopexit185 ], [ %1625, %.loopexit180 ], [ %1625, %.preheader177 ]
  %1661 = phi i32 [ %1577, %.loopexit185 ], [ %1624, %.loopexit180 ], [ %1654, %.preheader177 ]
  %1662 = phi ptr [ %1578, %.loopexit185 ], [ %1623, %.loopexit180 ], [ %1623, %.preheader177 ]
  %1663 = phi ptr [ %1579, %.loopexit185 ], [ %1622, %.loopexit180 ], [ %1658, %.preheader177 ]
  %1664 = icmp ult ptr %1663, %41
  br i1 %1664, label %1665, label %1691

1665:                                             ; preds = %.loopexit178
  %1666 = and i32 %1661, 63
  %1667 = zext nneg i32 %1666 to i64
  %1668 = shl i64 %1660, %1667
  %1669 = sub nsw i32 0, %43
  %1670 = and i32 %1669, 63
  %1671 = zext nneg i32 %1670 to i64
  %1672 = lshr i64 %1668, %1671
  %1673 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1672
  %1674 = load i8, ptr %1673, align 2
  store i8 %1674, ptr %1663, align 1
  %1675 = getelementptr inbounds nuw i8, ptr %1673, i64 3
  %1676 = load i8, ptr %1675, align 1, !tbaa !87
  %1677 = icmp eq i8 %1676, 1
  br i1 %1677, label %1678, label %1683

1678:                                             ; preds = %1665
  %1679 = getelementptr inbounds nuw i8, ptr %1673, i64 2
  %1680 = load i8, ptr %1679, align 2, !tbaa !84
  %1681 = zext i8 %1680 to i32
  %1682 = add i32 %1661, %1681
  br label %1691

1683:                                             ; preds = %1665
  %1684 = icmp ult i32 %1661, 64
  br i1 %1684, label %1685, label %1691

1685:                                             ; preds = %1683
  %1686 = getelementptr inbounds nuw i8, ptr %1673, i64 2
  %1687 = load i8, ptr %1686, align 2, !tbaa !84
  %1688 = zext i8 %1687 to i32
  %1689 = add nuw nsw i32 %1661, %1688
  %1690 = tail call i32 @llvm.umin.i32(i32 %1689, i32 64)
  br label %1691

1691:                                             ; preds = %1685, %1683, %1678, %.loopexit178
  %1692 = phi i32 [ %1661, %.loopexit178 ], [ %1682, %1678 ], [ %1661, %1683 ], [ %1690, %1685 ]
  %1693 = ptrtoint ptr %18 to i64
  %1694 = ptrtoint ptr %591 to i64
  %1695 = sub i64 %1693, %1694
  %1696 = icmp ugt i64 %1695, 7
  br i1 %1696, label %1697, label %1945

1697:                                             ; preds = %1691
  %1698 = icmp samesign ult i32 %44, 12
  %1699 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %1700 = load i32, ptr %1699, align 8, !tbaa !107
  %1701 = icmp ugt i32 %1700, 64
  br i1 %1698, label %1710, label %1702

1702:                                             ; preds = %1697
  br i1 %1701, label %.loopexit176, label %1703, !prof !91

1703:                                             ; preds = %1702
  %1704 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %1705 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %1706 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %1707 = sub nsw i32 0, %43
  %1708 = and i32 %1707, 63
  %1709 = zext nneg i32 %1708 to i64
  br label %1843

1710:                                             ; preds = %1697
  br i1 %1701, label %.loopexit173, label %1711, !prof !91

1711:                                             ; preds = %1710
  %1712 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %1713 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %1714 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %1715 = getelementptr inbounds i8, ptr %18, i64 -9
  %1716 = sub nsw i32 0, %43
  %1717 = and i32 %1716, 63
  %1718 = zext nneg i32 %1717 to i64
  br label %1722

.loopexit173:                                     ; preds = %1760, %1710
  %1719 = phi i32 [ %1700, %1710 ], [ %1834, %1760 ]
  %1720 = phi ptr [ %591, %1710 ], [ %1838, %1760 ]
  %1721 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1721, align 8, !tbaa !108
  br label %.loopexit171

1722:                                             ; preds = %1760, %1711
  %1723 = phi i32 [ %1700, %1711 ], [ %1834, %1760 ]
  %1724 = phi ptr [ %591, %1711 ], [ %1838, %1760 ]
  %1725 = load ptr, ptr %1712, align 8, !tbaa !108
  %1726 = load ptr, ptr %1713, align 8, !tbaa !103
  %1727 = icmp ult ptr %1725, %1726
  br i1 %1727, label %1734, label %1728

1728:                                             ; preds = %1722
  %1729 = lshr i32 %1723, 3
  %1730 = zext nneg i32 %1729 to i64
  %1731 = sub nsw i64 0, %1730
  %1732 = getelementptr inbounds i8, ptr %1725, i64 %1731
  store ptr %1732, ptr %1712, align 8, !tbaa !108
  %1733 = and i32 %1723, 7
  br label %1753

1734:                                             ; preds = %1722
  %1735 = load ptr, ptr %1714, align 8, !tbaa !112
  %1736 = icmp eq ptr %1725, %1735
  br i1 %1736, label %.loopexit171, label %1737

1737:                                             ; preds = %1734
  %1738 = lshr i32 %1723, 3
  %1739 = zext nneg i32 %1738 to i64
  %1740 = sub nsw i64 0, %1739
  %1741 = getelementptr inbounds i8, ptr %1725, i64 %1740
  %1742 = icmp uge ptr %1741, %1735
  %1743 = ptrtoint ptr %1725 to i64
  %1744 = ptrtoint ptr %1735 to i64
  %1745 = sub i64 %1743, %1744
  %1746 = trunc i64 %1745 to i32
  %1747 = select i1 %1742, i32 %1738, i32 %1746
  %1748 = zext i32 %1747 to i64
  %1749 = sub nsw i64 0, %1748
  %1750 = getelementptr inbounds i8, ptr %1725, i64 %1749
  store ptr %1750, ptr %1712, align 8, !tbaa !108
  %1751 = shl i32 %1747, 3
  %1752 = sub i32 %1723, %1751
  br label %1753

1753:                                             ; preds = %1737, %1728
  %1754 = phi i32 [ %1733, %1728 ], [ %1752, %1737 ]
  %1755 = phi ptr [ %1732, %1728 ], [ %1750, %1737 ]
  %1756 = phi i1 [ true, %1728 ], [ %1742, %1737 ]
  store i32 %1754, ptr %1699, align 8, !tbaa !107
  %1757 = load i64, ptr %1755, align 1, !tbaa !26
  store i64 %1757, ptr %7, align 8, !tbaa !110
  %1758 = icmp ult ptr %1724, %1715
  %1759 = and i1 %1758, %1756
  br i1 %1759, label %1760, label %.loopexit171

1760:                                             ; preds = %1753
  %1761 = and i32 %1754, 63
  %1762 = zext nneg i32 %1761 to i64
  %1763 = shl i64 %1757, %1762
  %1764 = lshr i64 %1763, %1718
  %1765 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1764
  %1766 = load i16, ptr %1765, align 2
  store i16 %1766, ptr %1724, align 1
  %1767 = getelementptr inbounds nuw i8, ptr %1765, i64 2
  %1768 = load i8, ptr %1767, align 2, !tbaa !84
  %1769 = zext i8 %1768 to i32
  %1770 = add i32 %1754, %1769
  store i32 %1770, ptr %1699, align 8, !tbaa !107
  %1771 = getelementptr inbounds nuw i8, ptr %1765, i64 3
  %1772 = load i8, ptr %1771, align 1, !tbaa !87
  %1773 = zext i8 %1772 to i64
  %1774 = getelementptr inbounds nuw i8, ptr %1724, i64 %1773
  %1775 = load i64, ptr %7, align 8, !tbaa !110
  %1776 = and i32 %1770, 63
  %1777 = zext nneg i32 %1776 to i64
  %1778 = shl i64 %1775, %1777
  %1779 = lshr i64 %1778, %1718
  %1780 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1779
  %1781 = load i16, ptr %1780, align 2
  store i16 %1781, ptr %1774, align 1
  %1782 = getelementptr inbounds nuw i8, ptr %1780, i64 2
  %1783 = load i8, ptr %1782, align 2, !tbaa !84
  %1784 = zext i8 %1783 to i32
  %1785 = load i32, ptr %1699, align 8, !tbaa !107
  %1786 = add i32 %1785, %1784
  store i32 %1786, ptr %1699, align 8, !tbaa !107
  %1787 = getelementptr inbounds nuw i8, ptr %1780, i64 3
  %1788 = load i8, ptr %1787, align 1, !tbaa !87
  %1789 = zext i8 %1788 to i64
  %1790 = getelementptr inbounds nuw i8, ptr %1774, i64 %1789
  %1791 = load i64, ptr %7, align 8, !tbaa !110
  %1792 = and i32 %1786, 63
  %1793 = zext nneg i32 %1792 to i64
  %1794 = shl i64 %1791, %1793
  %1795 = lshr i64 %1794, %1718
  %1796 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1795
  %1797 = load i16, ptr %1796, align 2
  store i16 %1797, ptr %1790, align 1
  %1798 = getelementptr inbounds nuw i8, ptr %1796, i64 2
  %1799 = load i8, ptr %1798, align 2, !tbaa !84
  %1800 = zext i8 %1799 to i32
  %1801 = load i32, ptr %1699, align 8, !tbaa !107
  %1802 = add i32 %1801, %1800
  store i32 %1802, ptr %1699, align 8, !tbaa !107
  %1803 = getelementptr inbounds nuw i8, ptr %1796, i64 3
  %1804 = load i8, ptr %1803, align 1, !tbaa !87
  %1805 = zext i8 %1804 to i64
  %1806 = getelementptr inbounds nuw i8, ptr %1790, i64 %1805
  %1807 = load i64, ptr %7, align 8, !tbaa !110
  %1808 = and i32 %1802, 63
  %1809 = zext nneg i32 %1808 to i64
  %1810 = shl i64 %1807, %1809
  %1811 = lshr i64 %1810, %1718
  %1812 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1811
  %1813 = load i16, ptr %1812, align 2
  store i16 %1813, ptr %1806, align 1
  %1814 = getelementptr inbounds nuw i8, ptr %1812, i64 2
  %1815 = load i8, ptr %1814, align 2, !tbaa !84
  %1816 = zext i8 %1815 to i32
  %1817 = load i32, ptr %1699, align 8, !tbaa !107
  %1818 = add i32 %1817, %1816
  store i32 %1818, ptr %1699, align 8, !tbaa !107
  %1819 = getelementptr inbounds nuw i8, ptr %1812, i64 3
  %1820 = load i8, ptr %1819, align 1, !tbaa !87
  %1821 = zext i8 %1820 to i64
  %1822 = getelementptr inbounds nuw i8, ptr %1806, i64 %1821
  %1823 = load i64, ptr %7, align 8, !tbaa !110
  %1824 = and i32 %1818, 63
  %1825 = zext nneg i32 %1824 to i64
  %1826 = shl i64 %1823, %1825
  %1827 = lshr i64 %1826, %1718
  %1828 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1827
  %1829 = load i16, ptr %1828, align 2
  store i16 %1829, ptr %1822, align 1
  %1830 = getelementptr inbounds nuw i8, ptr %1828, i64 2
  %1831 = load i8, ptr %1830, align 2, !tbaa !84
  %1832 = zext i8 %1831 to i32
  %1833 = load i32, ptr %1699, align 8, !tbaa !107
  %1834 = add i32 %1833, %1832
  store i32 %1834, ptr %1699, align 8, !tbaa !107
  %1835 = getelementptr inbounds nuw i8, ptr %1828, i64 3
  %1836 = load i8, ptr %1835, align 1, !tbaa !87
  %1837 = zext i8 %1836 to i64
  %1838 = getelementptr inbounds nuw i8, ptr %1822, i64 %1837
  %1839 = icmp ugt i32 %1834, 64
  br i1 %1839, label %.loopexit173, label %1722, !prof !88, !llvm.loop !89

.loopexit176:                                     ; preds = %1881, %1702
  %1840 = phi i32 [ %1700, %1702 ], [ %1939, %1881 ]
  %1841 = phi ptr [ %591, %1702 ], [ %1943, %1881 ]
  %1842 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1842, align 8, !tbaa !108
  br label %.loopexit171

1843:                                             ; preds = %1881, %1703
  %1844 = phi i32 [ %1700, %1703 ], [ %1939, %1881 ]
  %1845 = phi ptr [ %591, %1703 ], [ %1943, %1881 ]
  %1846 = load ptr, ptr %1704, align 8, !tbaa !108
  %1847 = load ptr, ptr %1705, align 8, !tbaa !103
  %1848 = icmp ult ptr %1846, %1847
  br i1 %1848, label %1855, label %1849

1849:                                             ; preds = %1843
  %1850 = lshr i32 %1844, 3
  %1851 = zext nneg i32 %1850 to i64
  %1852 = sub nsw i64 0, %1851
  %1853 = getelementptr inbounds i8, ptr %1846, i64 %1852
  store ptr %1853, ptr %1704, align 8, !tbaa !108
  %1854 = and i32 %1844, 7
  br label %1874

1855:                                             ; preds = %1843
  %1856 = load ptr, ptr %1706, align 8, !tbaa !112
  %1857 = icmp eq ptr %1846, %1856
  br i1 %1857, label %.loopexit171, label %1858

1858:                                             ; preds = %1855
  %1859 = lshr i32 %1844, 3
  %1860 = zext nneg i32 %1859 to i64
  %1861 = sub nsw i64 0, %1860
  %1862 = getelementptr inbounds i8, ptr %1846, i64 %1861
  %1863 = icmp uge ptr %1862, %1856
  %1864 = ptrtoint ptr %1846 to i64
  %1865 = ptrtoint ptr %1856 to i64
  %1866 = sub i64 %1864, %1865
  %1867 = trunc i64 %1866 to i32
  %1868 = select i1 %1863, i32 %1859, i32 %1867
  %1869 = zext i32 %1868 to i64
  %1870 = sub nsw i64 0, %1869
  %1871 = getelementptr inbounds i8, ptr %1846, i64 %1870
  store ptr %1871, ptr %1704, align 8, !tbaa !108
  %1872 = shl i32 %1868, 3
  %1873 = sub i32 %1844, %1872
  br label %1874

1874:                                             ; preds = %1858, %1849
  %1875 = phi i32 [ %1854, %1849 ], [ %1873, %1858 ]
  %1876 = phi ptr [ %1853, %1849 ], [ %1871, %1858 ]
  %1877 = phi i1 [ true, %1849 ], [ %1863, %1858 ]
  store i32 %1875, ptr %1699, align 8, !tbaa !107
  %1878 = load i64, ptr %1876, align 1, !tbaa !26
  store i64 %1878, ptr %7, align 8, !tbaa !110
  %1879 = icmp ult ptr %1845, %19
  %1880 = and i1 %1879, %1877
  br i1 %1880, label %1881, label %.loopexit171

1881:                                             ; preds = %1874
  %1882 = and i32 %1875, 63
  %1883 = zext nneg i32 %1882 to i64
  %1884 = shl i64 %1878, %1883
  %1885 = lshr i64 %1884, %1709
  %1886 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1885
  %1887 = load i16, ptr %1886, align 2
  store i16 %1887, ptr %1845, align 1
  %1888 = getelementptr inbounds nuw i8, ptr %1886, i64 2
  %1889 = load i8, ptr %1888, align 2, !tbaa !84
  %1890 = zext i8 %1889 to i32
  %1891 = add i32 %1875, %1890
  store i32 %1891, ptr %1699, align 8, !tbaa !107
  %1892 = getelementptr inbounds nuw i8, ptr %1886, i64 3
  %1893 = load i8, ptr %1892, align 1, !tbaa !87
  %1894 = zext i8 %1893 to i64
  %1895 = getelementptr inbounds nuw i8, ptr %1845, i64 %1894
  %1896 = load i64, ptr %7, align 8, !tbaa !110
  %1897 = and i32 %1891, 63
  %1898 = zext nneg i32 %1897 to i64
  %1899 = shl i64 %1896, %1898
  %1900 = lshr i64 %1899, %1709
  %1901 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1900
  %1902 = load i16, ptr %1901, align 2
  store i16 %1902, ptr %1895, align 1
  %1903 = getelementptr inbounds nuw i8, ptr %1901, i64 2
  %1904 = load i8, ptr %1903, align 2, !tbaa !84
  %1905 = zext i8 %1904 to i32
  %1906 = load i32, ptr %1699, align 8, !tbaa !107
  %1907 = add i32 %1906, %1905
  store i32 %1907, ptr %1699, align 8, !tbaa !107
  %1908 = getelementptr inbounds nuw i8, ptr %1901, i64 3
  %1909 = load i8, ptr %1908, align 1, !tbaa !87
  %1910 = zext i8 %1909 to i64
  %1911 = getelementptr inbounds nuw i8, ptr %1895, i64 %1910
  %1912 = load i64, ptr %7, align 8, !tbaa !110
  %1913 = and i32 %1907, 63
  %1914 = zext nneg i32 %1913 to i64
  %1915 = shl i64 %1912, %1914
  %1916 = lshr i64 %1915, %1709
  %1917 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1916
  %1918 = load i16, ptr %1917, align 2
  store i16 %1918, ptr %1911, align 1
  %1919 = getelementptr inbounds nuw i8, ptr %1917, i64 2
  %1920 = load i8, ptr %1919, align 2, !tbaa !84
  %1921 = zext i8 %1920 to i32
  %1922 = load i32, ptr %1699, align 8, !tbaa !107
  %1923 = add i32 %1922, %1921
  store i32 %1923, ptr %1699, align 8, !tbaa !107
  %1924 = getelementptr inbounds nuw i8, ptr %1917, i64 3
  %1925 = load i8, ptr %1924, align 1, !tbaa !87
  %1926 = zext i8 %1925 to i64
  %1927 = getelementptr inbounds nuw i8, ptr %1911, i64 %1926
  %1928 = load i64, ptr %7, align 8, !tbaa !110
  %1929 = and i32 %1923, 63
  %1930 = zext nneg i32 %1929 to i64
  %1931 = shl i64 %1928, %1930
  %1932 = lshr i64 %1931, %1709
  %1933 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %1932
  %1934 = load i16, ptr %1933, align 2
  store i16 %1934, ptr %1927, align 1
  %1935 = getelementptr inbounds nuw i8, ptr %1933, i64 2
  %1936 = load i8, ptr %1935, align 2, !tbaa !84
  %1937 = zext i8 %1936 to i32
  %1938 = load i32, ptr %1699, align 8, !tbaa !107
  %1939 = add i32 %1938, %1937
  store i32 %1939, ptr %1699, align 8, !tbaa !107
  %1940 = getelementptr inbounds nuw i8, ptr %1933, i64 3
  %1941 = load i8, ptr %1940, align 1, !tbaa !87
  %1942 = zext i8 %1941 to i64
  %1943 = getelementptr inbounds nuw i8, ptr %1927, i64 %1942
  %1944 = icmp ugt i32 %1939, 64
  br i1 %1944, label %.loopexit176, label %1843, !prof !88, !llvm.loop !90

1945:                                             ; preds = %1691
  %1946 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %1947 = load i32, ptr %1946, align 8, !tbaa !107
  %1948 = icmp ugt i32 %1947, 64
  %1949 = getelementptr inbounds nuw i8, ptr %7, i64 16
  br i1 %1948, label %1950, label %1951, !prof !109

1950:                                             ; preds = %1945
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1949, align 8, !tbaa !108
  br label %.loopexit171

1951:                                             ; preds = %1945
  %1952 = load ptr, ptr %1949, align 8, !tbaa !108
  %1953 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %1954 = load ptr, ptr %1953, align 8, !tbaa !103
  %1955 = icmp ult ptr %1952, %1954
  br i1 %1955, label %1963, label %1956

1956:                                             ; preds = %1951
  %1957 = lshr i32 %1947, 3
  %1958 = zext nneg i32 %1957 to i64
  %1959 = sub nsw i64 0, %1958
  %1960 = getelementptr inbounds i8, ptr %1952, i64 %1959
  store ptr %1960, ptr %1949, align 8, !tbaa !108
  %1961 = and i32 %1947, 7
  store i32 %1961, ptr %1946, align 8, !tbaa !107
  %1962 = load i64, ptr %1960, align 1, !tbaa !26
  store i64 %1962, ptr %7, align 8, !tbaa !110
  br label %.loopexit171

1963:                                             ; preds = %1951
  %1964 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %1965 = load ptr, ptr %1964, align 8, !tbaa !112
  %1966 = icmp eq ptr %1952, %1965
  br i1 %1966, label %.loopexit171, label %1967

1967:                                             ; preds = %1963
  %1968 = lshr i32 %1947, 3
  %1969 = zext nneg i32 %1968 to i64
  %1970 = sub nsw i64 0, %1969
  %1971 = getelementptr inbounds i8, ptr %1952, i64 %1970
  %1972 = icmp ult ptr %1971, %1965
  %1973 = ptrtoint ptr %1952 to i64
  %1974 = ptrtoint ptr %1965 to i64
  %1975 = sub i64 %1973, %1974
  %1976 = trunc i64 %1975 to i32
  %1977 = select i1 %1972, i32 %1976, i32 %1968
  %1978 = zext i32 %1977 to i64
  %1979 = sub nsw i64 0, %1978
  %1980 = getelementptr inbounds i8, ptr %1952, i64 %1979
  store ptr %1980, ptr %1949, align 8, !tbaa !108
  %1981 = shl i32 %1977, 3
  %1982 = sub i32 %1947, %1981
  store i32 %1982, ptr %1946, align 8, !tbaa !107
  %1983 = load i64, ptr %1980, align 1, !tbaa !26
  store i64 %1983, ptr %7, align 8, !tbaa !110
  br label %.loopexit171

.loopexit171:                                     ; preds = %1874, %1855, %1753, %1734, %1967, %1963, %1956, %1950, %.loopexit176, %.loopexit173
  %1984 = phi i32 [ %1982, %1967 ], [ %1961, %1956 ], [ %1947, %1950 ], [ %1719, %.loopexit173 ], [ %1840, %.loopexit176 ], [ %1947, %1963 ], [ %1754, %1753 ], [ %1723, %1734 ], [ %1844, %1855 ], [ %1875, %1874 ]
  %1985 = phi ptr [ %591, %1967 ], [ %591, %1956 ], [ %591, %1950 ], [ %1720, %.loopexit173 ], [ %1841, %.loopexit176 ], [ %591, %1963 ], [ %1724, %1753 ], [ %1724, %1734 ], [ %1845, %1855 ], [ %1845, %1874 ]
  %1986 = ptrtoint ptr %1985 to i64
  %1987 = sub i64 %1693, %1986
  %1988 = icmp ugt i64 %1987, 1
  br i1 %1988, label %1989, label %.loopexit

1989:                                             ; preds = %.loopexit171
  %1990 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %1991 = getelementptr inbounds i8, ptr %18, i64 -2
  %1992 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %1993 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %1994 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %1995 = sub nsw i32 0, %43
  %1996 = and i32 %1995, 63
  %1997 = zext nneg i32 %1996 to i64
  %1998 = icmp ugt i32 %1984, 64
  br i1 %1998, label %.loopexit170, label %.preheader168, !prof !91

.loopexit170:                                     ; preds = %2041, %1989
  %1999 = phi i32 [ %1984, %1989 ], [ %2052, %2041 ]
  %2000 = phi ptr [ %1985, %1989 ], [ %2056, %2041 ]
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1992, align 8, !tbaa !108
  br label %.loopexit169

.preheader168:                                    ; preds = %1989, %2041
  %2001 = phi ptr [ %2056, %2041 ], [ %1985, %1989 ]
  %2002 = phi i32 [ %2052, %2041 ], [ %1984, %1989 ]
  %2003 = load ptr, ptr %1992, align 8, !tbaa !108
  %2004 = load ptr, ptr %1993, align 8, !tbaa !103
  %2005 = icmp ult ptr %2003, %2004
  br i1 %2005, label %2012, label %2006

2006:                                             ; preds = %.preheader168
  %2007 = lshr i32 %2002, 3
  %2008 = zext nneg i32 %2007 to i64
  %2009 = sub nsw i64 0, %2008
  %2010 = getelementptr inbounds i8, ptr %2003, i64 %2009
  store ptr %2010, ptr %1992, align 8, !tbaa !108
  %2011 = and i32 %2002, 7
  br label %2031

2012:                                             ; preds = %.preheader168
  %2013 = load ptr, ptr %1994, align 8, !tbaa !112
  %2014 = icmp eq ptr %2003, %2013
  br i1 %2014, label %.loopexit169, label %2015

2015:                                             ; preds = %2012
  %2016 = lshr i32 %2002, 3
  %2017 = zext nneg i32 %2016 to i64
  %2018 = sub nsw i64 0, %2017
  %2019 = getelementptr inbounds i8, ptr %2003, i64 %2018
  %2020 = icmp uge ptr %2019, %2013
  %2021 = ptrtoint ptr %2003 to i64
  %2022 = ptrtoint ptr %2013 to i64
  %2023 = sub i64 %2021, %2022
  %2024 = trunc i64 %2023 to i32
  %2025 = select i1 %2020, i32 %2016, i32 %2024
  %2026 = zext i32 %2025 to i64
  %2027 = sub nsw i64 0, %2026
  %2028 = getelementptr inbounds i8, ptr %2003, i64 %2027
  store ptr %2028, ptr %1992, align 8, !tbaa !108
  %2029 = shl i32 %2025, 3
  %2030 = sub i32 %2002, %2029
  br label %2031

2031:                                             ; preds = %2015, %2006
  %2032 = phi i32 [ %2011, %2006 ], [ %2030, %2015 ]
  %2033 = phi ptr [ %2010, %2006 ], [ %2028, %2015 ]
  %2034 = phi i1 [ true, %2006 ], [ %2020, %2015 ]
  store i32 %2032, ptr %1990, align 8, !tbaa !107
  %2035 = load i64, ptr %2033, align 1, !tbaa !26
  store i64 %2035, ptr %7, align 8, !tbaa !110
  %2036 = icmp ule ptr %2001, %1991
  %2037 = and i1 %2036, %2034
  br i1 %2037, label %2041, label %.loopexit169

.loopexit169:                                     ; preds = %2031, %2012, %.loopexit170
  %2038 = phi ptr [ %2000, %.loopexit170 ], [ %2001, %2012 ], [ %2001, %2031 ]
  %2039 = phi i32 [ %1999, %.loopexit170 ], [ %2032, %2031 ], [ %2002, %2012 ]
  %2040 = icmp ugt ptr %2038, %1991
  br i1 %2040, label %.loopexit, label %.preheader

2041:                                             ; preds = %2031
  %2042 = and i32 %2032, 63
  %2043 = zext nneg i32 %2042 to i64
  %2044 = shl i64 %2035, %2043
  %2045 = lshr i64 %2044, %1997
  %2046 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %2045
  %2047 = load i16, ptr %2046, align 2
  store i16 %2047, ptr %2001, align 1
  %2048 = getelementptr inbounds nuw i8, ptr %2046, i64 2
  %2049 = load i8, ptr %2048, align 2, !tbaa !84
  %2050 = zext i8 %2049 to i32
  %2051 = load i32, ptr %1990, align 8, !tbaa !107
  %2052 = add i32 %2051, %2050
  store i32 %2052, ptr %1990, align 8, !tbaa !107
  %2053 = getelementptr inbounds nuw i8, ptr %2046, i64 3
  %2054 = load i8, ptr %2053, align 1, !tbaa !87
  %2055 = zext i8 %2054 to i64
  %2056 = getelementptr inbounds nuw i8, ptr %2001, i64 %2055
  %2057 = icmp ugt i32 %2052, 64
  br i1 %2057, label %.loopexit170, label %.preheader168, !prof !88, !llvm.loop !92

.preheader:                                       ; preds = %.loopexit169, %.preheader
  %2058 = phi i32 [ %2071, %.preheader ], [ %2039, %.loopexit169 ]
  %2059 = phi ptr [ %2075, %.preheader ], [ %2038, %.loopexit169 ]
  %2060 = load i64, ptr %7, align 8, !tbaa !110
  %2061 = and i32 %2058, 63
  %2062 = zext nneg i32 %2061 to i64
  %2063 = shl i64 %2060, %2062
  %2064 = lshr i64 %2063, %1997
  %2065 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %2064
  %2066 = load i16, ptr %2065, align 2
  store i16 %2066, ptr %2059, align 1
  %2067 = getelementptr inbounds nuw i8, ptr %2065, i64 2
  %2068 = load i8, ptr %2067, align 2, !tbaa !84
  %2069 = zext i8 %2068 to i32
  %2070 = load i32, ptr %1990, align 8, !tbaa !107
  %2071 = add i32 %2070, %2069
  store i32 %2071, ptr %1990, align 8, !tbaa !107
  %2072 = getelementptr inbounds nuw i8, ptr %2065, i64 3
  %2073 = load i8, ptr %2072, align 1, !tbaa !87
  %2074 = zext i8 %2073 to i64
  %2075 = getelementptr inbounds nuw i8, ptr %2059, i64 %2074
  %2076 = icmp ugt ptr %2075, %1991
  br i1 %2076, label %.loopexit, label %.preheader, !llvm.loop !93

.loopexit:                                        ; preds = %.preheader, %.loopexit169, %.loopexit171
  %2077 = phi i32 [ %1984, %.loopexit171 ], [ %2039, %.loopexit169 ], [ %2071, %.preheader ]
  %2078 = phi ptr [ %1985, %.loopexit171 ], [ %2038, %.loopexit169 ], [ %2075, %.preheader ]
  %2079 = icmp ult ptr %2078, %18
  br i1 %2079, label %2080, label %2110

2080:                                             ; preds = %.loopexit
  %2081 = load i64, ptr %7, align 8, !tbaa !110
  %2082 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %2083 = and i32 %2077, 63
  %2084 = zext nneg i32 %2083 to i64
  %2085 = shl i64 %2081, %2084
  %2086 = sub nsw i32 0, %43
  %2087 = and i32 %2086, 63
  %2088 = zext nneg i32 %2087 to i64
  %2089 = lshr i64 %2085, %2088
  %2090 = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %2089
  %2091 = load i8, ptr %2090, align 2
  store i8 %2091, ptr %2078, align 1
  %2092 = getelementptr inbounds nuw i8, ptr %2090, i64 3
  %2093 = load i8, ptr %2092, align 1, !tbaa !87
  %2094 = icmp eq i8 %2093, 1
  br i1 %2094, label %2095, label %2101

2095:                                             ; preds = %2080
  %2096 = getelementptr inbounds nuw i8, ptr %2090, i64 2
  %2097 = load i8, ptr %2096, align 2, !tbaa !84
  %2098 = zext i8 %2097 to i32
  %2099 = load i32, ptr %2082, align 8, !tbaa !107
  %2100 = add i32 %2099, %2098
  br label %2110

2101:                                             ; preds = %2080
  %2102 = load i32, ptr %2082, align 8, !tbaa !107
  %2103 = icmp ult i32 %2102, 64
  br i1 %2103, label %2104, label %2110

2104:                                             ; preds = %2101
  %2105 = getelementptr inbounds nuw i8, ptr %2090, i64 2
  %2106 = load i8, ptr %2105, align 2, !tbaa !84
  %2107 = zext i8 %2106 to i32
  %2108 = add nuw nsw i32 %2102, %2107
  %2109 = tail call i32 @llvm.umin.i32(i32 %2108, i32 64)
  br label %2110

2110:                                             ; preds = %2104, %2101, %2095, %.loopexit
  %2111 = phi i32 [ %2100, %2095 ], [ %2102, %2101 ], [ %2109, %2104 ], [ %2077, %.loopexit ]
  %2112 = icmp ne ptr %932, %33
  %2113 = icmp ne i32 %964, 64
  %2114 = select i1 %2112, i1 true, i1 %2113
  %2115 = icmp ne ptr %1298, %34
  %2116 = icmp ne i32 %1328, 64
  %2117 = select i1 %2115, i1 true, i1 %2116
  %2118 = or i1 %2114, %2117
  %2119 = icmp ne ptr %1662, %35
  %2120 = icmp ne i32 %1692, 64
  %2121 = select i1 %2119, i1 true, i1 %2120
  %2122 = or i1 %2118, %2121
  %2123 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %2124 = load ptr, ptr %2123, align 8, !tbaa !108
  %2125 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %2126 = load ptr, ptr %2125, align 8, !tbaa !112
  %2127 = icmp ne ptr %2124, %2126
  %2128 = icmp ne i32 %2111, 64
  %2129 = select i1 %2127, i1 true, i1 %2128
  %2130 = or i1 %2122, %2129
  %2131 = select i1 %2130, i64 -20, i64 %1
  br label %2132

2132:                                             ; preds = %2110, %581, %268, %257, %202, %194, %183, %128, %120, %109, %54, %49, %17
  %2133 = phi i64 [ %272, %268 ], [ -20, %17 ], [ -20, %581 ], [ %2131, %2110 ], [ -20, %109 ], [ -1, %54 ], [ -72, %49 ], [ -20, %183 ], [ -1, %128 ], [ -72, %120 ], [ -20, %257 ], [ -1, %202 ], [ -72, %194 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %2142

2134:                                             ; preds = %10
  %2135 = and i32 %5, 16
  %2136 = icmp eq i32 %2135, 0
  %2137 = select i1 %2136, ptr @HUF_decompress4X2_usingDTable_internal_fast_asm_loop, ptr @HUF_decompress4X2_usingDTable_internal_fast_c_loop
  %2138 = tail call fastcc i64 @HUF_decompress4X2_usingDTable_internal_fast(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %2137)
  %2139 = icmp eq i64 %2138, 0
  br i1 %2139, label %2140, label %2142

2140:                                             ; preds = %2134, %10
  %2141 = tail call fastcc i64 @HUF_decompress4X2_usingDTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  br label %2142

2142:                                             ; preds = %2140, %2134, %2132, %13
  %2143 = phi i64 [ %2141, %2140 ], [ %2138, %2134 ], [ %2133, %2132 ], [ -20, %13 ]
  ret i64 %2143
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 1, 0) i64 @HUF_decompress4X1_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = ptrtoint ptr %0 to i64
  %8 = alloca %struct.BIT_DStream_t, align 8
  %9 = and i32 %5, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = and i32 %5, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %1276, label %1282

14:                                               ; preds = %6
  %15 = icmp ult i64 %3, 10
  %16 = icmp ult i64 %1, 6
  %17 = or i1 %16, %15
  br i1 %17, label %1284, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %20 = getelementptr inbounds i8, ptr %19, i64 -3
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %22 = load i16, ptr %2, align 1, !tbaa !102
  %23 = zext i16 %22 to i64
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %25 = load i16, ptr %24, align 1, !tbaa !102
  %26 = zext i16 %25 to i64
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %28 = load i16, ptr %27, align 1, !tbaa !102
  %29 = zext i16 %28 to i64
  %30 = add nuw nsw i64 %23, 6
  %31 = add nuw nsw i64 %30, %26
  %32 = add nuw nsw i64 %31, %29
  %33 = sub i64 %3, %32
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %35 = getelementptr i8, ptr %34, i64 %23
  %36 = getelementptr i8, ptr %35, i64 %26
  %37 = getelementptr i8, ptr %36, i64 %29
  %38 = add i64 %1, 3
  %39 = lshr i64 %38, 2
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 %39
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 %39
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 %39
  %43 = load i32, ptr %4, align 4
  %44 = lshr i32 %43, 16
  %45 = icmp ugt i64 %32, %3
  %46 = mul nuw nsw i64 %39, 3
  %47 = icmp samesign ugt i64 %46, %1
  %48 = select i1 %45, i1 true, i1 %47
  br i1 %48, label %1274, label %49

49:                                               ; preds = %18
  %50 = icmp eq i16 %22, 0
  br i1 %50, label %1274, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 14
  %53 = icmp ugt i16 %22, 7
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = getelementptr i8, ptr %35, i64 -1
  %56 = load i8, ptr %55, align 1, !tbaa !9
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %1274, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds i8, ptr %35, i64 -8
  %60 = load i64, ptr %59, align 1, !tbaa !26
  %61 = zext i8 %56 to i32
  %62 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %61, i1 true)
  %63 = xor i32 %62, 31
  %64 = sub nuw nsw i32 8, %63
  br label %120

65:                                               ; preds = %51
  %66 = load i8, ptr %34, align 1, !tbaa !9
  %67 = zext i8 %66 to i64
  switch i16 %22, label %109 [
    i16 7, label %68
    i16 6, label %74
    i16 5, label %81
    i16 4, label %88
    i16 3, label %95
    i16 2, label %102
  ]

68:                                               ; preds = %65
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %70 = load i8, ptr %69, align 1, !tbaa !9
  %71 = zext i8 %70 to i64
  %72 = shl nuw nsw i64 %71, 48
  %73 = or disjoint i64 %72, %67
  br label %74

74:                                               ; preds = %68, %65
  %75 = phi i64 [ %67, %65 ], [ %73, %68 ]
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %77 = load i8, ptr %76, align 1, !tbaa !9
  %78 = zext i8 %77 to i64
  %79 = shl nuw nsw i64 %78, 40
  %80 = add nuw nsw i64 %79, %75
  br label %81

81:                                               ; preds = %74, %65
  %82 = phi i64 [ %67, %65 ], [ %80, %74 ]
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 10
  %84 = load i8, ptr %83, align 1, !tbaa !9
  %85 = zext i8 %84 to i64
  %86 = shl nuw nsw i64 %85, 32
  %87 = add nuw nsw i64 %86, %82
  br label %88

88:                                               ; preds = %81, %65
  %89 = phi i64 [ %67, %65 ], [ %87, %81 ]
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 9
  %91 = load i8, ptr %90, align 1, !tbaa !9
  %92 = zext i8 %91 to i64
  %93 = shl nuw nsw i64 %92, 24
  %94 = add nuw nsw i64 %93, %89
  br label %95

95:                                               ; preds = %88, %65
  %96 = phi i64 [ %67, %65 ], [ %94, %88 ]
  %97 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %98 = load i8, ptr %97, align 1, !tbaa !9
  %99 = zext i8 %98 to i64
  %100 = shl nuw nsw i64 %99, 16
  %101 = add nuw nsw i64 %100, %96
  br label %102

102:                                              ; preds = %95, %65
  %103 = phi i64 [ %67, %65 ], [ %101, %95 ]
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 7
  %105 = load i8, ptr %104, align 1, !tbaa !9
  %106 = zext i8 %105 to i64
  %107 = shl nuw nsw i64 %106, 8
  %108 = add nuw nsw i64 %107, %103
  br label %109

109:                                              ; preds = %102, %65
  %110 = phi i64 [ %67, %65 ], [ %108, %102 ]
  %111 = getelementptr i8, ptr %35, i64 -1
  %112 = load i8, ptr %111, align 1, !tbaa !9
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %1274, label %114

114:                                              ; preds = %109
  %115 = zext i8 %112 to i32
  %116 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %115, i1 true)
  %117 = shl nuw nsw i16 %22, 3
  %118 = zext nneg i16 %117 to i32
  %reass.sub = sub nsw i32 %116, %118
  %119 = add nsw i32 %reass.sub, 41
  br label %120

120:                                              ; preds = %114, %58
  %121 = phi ptr [ %59, %58 ], [ %34, %114 ]
  %122 = phi i32 [ %64, %58 ], [ %119, %114 ]
  %123 = phi i64 [ %60, %58 ], [ %110, %114 ]
  %124 = icmp eq i16 %25, 0
  br i1 %124, label %1274, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %127 = icmp ugt i16 %25, 7
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = getelementptr i8, ptr %36, i64 -1
  %130 = load i8, ptr %129, align 1, !tbaa !9
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %1274, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds i8, ptr %36, i64 -8
  %134 = load i64, ptr %133, align 1, !tbaa !26
  %135 = zext i8 %130 to i32
  %136 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %135, i1 true)
  %137 = xor i32 %136, 31
  %138 = sub nuw nsw i32 8, %137
  br label %194

139:                                              ; preds = %125
  %140 = load i8, ptr %35, align 1, !tbaa !9
  %141 = zext i8 %140 to i64
  switch i16 %25, label %183 [
    i16 7, label %142
    i16 6, label %148
    i16 5, label %155
    i16 4, label %162
    i16 3, label %169
    i16 2, label %176
  ]

142:                                              ; preds = %139
  %143 = getelementptr inbounds nuw i8, ptr %35, i64 6
  %144 = load i8, ptr %143, align 1, !tbaa !9
  %145 = zext i8 %144 to i64
  %146 = shl nuw nsw i64 %145, 48
  %147 = or disjoint i64 %146, %141
  br label %148

148:                                              ; preds = %142, %139
  %149 = phi i64 [ %141, %139 ], [ %147, %142 ]
  %150 = getelementptr inbounds nuw i8, ptr %35, i64 5
  %151 = load i8, ptr %150, align 1, !tbaa !9
  %152 = zext i8 %151 to i64
  %153 = shl nuw nsw i64 %152, 40
  %154 = add nuw nsw i64 %153, %149
  br label %155

155:                                              ; preds = %148, %139
  %156 = phi i64 [ %141, %139 ], [ %154, %148 ]
  %157 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %158 = load i8, ptr %157, align 1, !tbaa !9
  %159 = zext i8 %158 to i64
  %160 = shl nuw nsw i64 %159, 32
  %161 = add nuw nsw i64 %160, %156
  br label %162

162:                                              ; preds = %155, %139
  %163 = phi i64 [ %141, %139 ], [ %161, %155 ]
  %164 = getelementptr inbounds nuw i8, ptr %35, i64 3
  %165 = load i8, ptr %164, align 1, !tbaa !9
  %166 = zext i8 %165 to i64
  %167 = shl nuw nsw i64 %166, 24
  %168 = add nuw nsw i64 %167, %163
  br label %169

169:                                              ; preds = %162, %139
  %170 = phi i64 [ %141, %139 ], [ %168, %162 ]
  %171 = getelementptr inbounds nuw i8, ptr %35, i64 2
  %172 = load i8, ptr %171, align 1, !tbaa !9
  %173 = zext i8 %172 to i64
  %174 = shl nuw nsw i64 %173, 16
  %175 = add nuw nsw i64 %174, %170
  br label %176

176:                                              ; preds = %169, %139
  %177 = phi i64 [ %141, %139 ], [ %175, %169 ]
  %178 = getelementptr inbounds nuw i8, ptr %35, i64 1
  %179 = load i8, ptr %178, align 1, !tbaa !9
  %180 = zext i8 %179 to i64
  %181 = shl nuw nsw i64 %180, 8
  %182 = add nuw nsw i64 %181, %177
  br label %183

183:                                              ; preds = %176, %139
  %184 = phi i64 [ %141, %139 ], [ %182, %176 ]
  %185 = getelementptr i8, ptr %36, i64 -1
  %186 = load i8, ptr %185, align 1, !tbaa !9
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %1274, label %188

188:                                              ; preds = %183
  %189 = zext i8 %186 to i32
  %190 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %189, i1 true)
  %191 = shl nuw nsw i16 %25, 3
  %192 = zext nneg i16 %191 to i32
  %reass.sub129 = sub nsw i32 %190, %192
  %193 = add nsw i32 %reass.sub129, 41
  br label %194

194:                                              ; preds = %188, %132
  %195 = phi i64 [ %134, %132 ], [ %184, %188 ]
  %196 = phi i32 [ %138, %132 ], [ %193, %188 ]
  %197 = phi ptr [ %133, %132 ], [ %35, %188 ]
  %198 = icmp eq i16 %28, 0
  br i1 %198, label %1274, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %201 = icmp ugt i16 %28, 7
  br i1 %201, label %202, label %213

202:                                              ; preds = %199
  %203 = getelementptr i8, ptr %37, i64 -1
  %204 = load i8, ptr %203, align 1, !tbaa !9
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %1274, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds i8, ptr %37, i64 -8
  %208 = load i64, ptr %207, align 1, !tbaa !26
  %209 = zext i8 %204 to i32
  %210 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %209, i1 true)
  %211 = xor i32 %210, 31
  %212 = sub nuw nsw i32 8, %211
  br label %268

213:                                              ; preds = %199
  %214 = load i8, ptr %36, align 1, !tbaa !9
  %215 = zext i8 %214 to i64
  switch i16 %28, label %257 [
    i16 7, label %216
    i16 6, label %222
    i16 5, label %229
    i16 4, label %236
    i16 3, label %243
    i16 2, label %250
  ]

216:                                              ; preds = %213
  %217 = getelementptr inbounds nuw i8, ptr %36, i64 6
  %218 = load i8, ptr %217, align 1, !tbaa !9
  %219 = zext i8 %218 to i64
  %220 = shl nuw nsw i64 %219, 48
  %221 = or disjoint i64 %220, %215
  br label %222

222:                                              ; preds = %216, %213
  %223 = phi i64 [ %215, %213 ], [ %221, %216 ]
  %224 = getelementptr inbounds nuw i8, ptr %36, i64 5
  %225 = load i8, ptr %224, align 1, !tbaa !9
  %226 = zext i8 %225 to i64
  %227 = shl nuw nsw i64 %226, 40
  %228 = add nuw nsw i64 %227, %223
  br label %229

229:                                              ; preds = %222, %213
  %230 = phi i64 [ %215, %213 ], [ %228, %222 ]
  %231 = getelementptr inbounds nuw i8, ptr %36, i64 4
  %232 = load i8, ptr %231, align 1, !tbaa !9
  %233 = zext i8 %232 to i64
  %234 = shl nuw nsw i64 %233, 32
  %235 = add nuw nsw i64 %234, %230
  br label %236

236:                                              ; preds = %229, %213
  %237 = phi i64 [ %215, %213 ], [ %235, %229 ]
  %238 = getelementptr inbounds nuw i8, ptr %36, i64 3
  %239 = load i8, ptr %238, align 1, !tbaa !9
  %240 = zext i8 %239 to i64
  %241 = shl nuw nsw i64 %240, 24
  %242 = add nuw nsw i64 %241, %237
  br label %243

243:                                              ; preds = %236, %213
  %244 = phi i64 [ %215, %213 ], [ %242, %236 ]
  %245 = getelementptr inbounds nuw i8, ptr %36, i64 2
  %246 = load i8, ptr %245, align 1, !tbaa !9
  %247 = zext i8 %246 to i64
  %248 = shl nuw nsw i64 %247, 16
  %249 = add nuw nsw i64 %248, %244
  br label %250

250:                                              ; preds = %243, %213
  %251 = phi i64 [ %215, %213 ], [ %249, %243 ]
  %252 = getelementptr inbounds nuw i8, ptr %36, i64 1
  %253 = load i8, ptr %252, align 1, !tbaa !9
  %254 = zext i8 %253 to i64
  %255 = shl nuw nsw i64 %254, 8
  %256 = add nuw nsw i64 %255, %251
  br label %257

257:                                              ; preds = %250, %213
  %258 = phi i64 [ %215, %213 ], [ %256, %250 ]
  %259 = getelementptr i8, ptr %37, i64 -1
  %260 = load i8, ptr %259, align 1, !tbaa !9
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %1274, label %262

262:                                              ; preds = %257
  %263 = zext i8 %260 to i32
  %264 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %263, i1 true)
  %265 = shl nuw nsw i16 %28, 3
  %266 = zext nneg i16 %265 to i32
  %reass.sub130 = sub nsw i32 %264, %266
  %267 = add nsw i32 %reass.sub130, 41
  br label %268

268:                                              ; preds = %262, %206
  %269 = phi i64 [ %208, %206 ], [ %258, %262 ]
  %270 = phi i32 [ %212, %206 ], [ %267, %262 ]
  %271 = phi ptr [ %207, %206 ], [ %36, %262 ]
  %272 = call fastcc i64 @BIT_initDStream(ptr noundef %8, ptr noundef nonnull %37, i64 noundef %33)
  %273 = icmp ult i64 %272, -119
  br i1 %273, label %274, label %1274

274:                                              ; preds = %268
  %275 = mul i64 %39, -3
  %276 = add i64 %275, %1
  %277 = icmp ugt i64 %276, 7
  %278 = icmp ult ptr %42, %20
  %279 = select i1 %277, i1 %278, i1 false
  br i1 %279, label %280, label %534

280:                                              ; preds = %274
  %281 = load i64, ptr %8, align 8
  %282 = sub nsw i32 0, %44
  %283 = and i32 %282, 63
  %284 = zext nneg i32 %283 to i64
  %285 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %286 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %287 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %288 = load ptr, ptr %287, align 8, !tbaa !103
  %289 = load i32, ptr %285, align 8, !tbaa !107
  %290 = load ptr, ptr %286, align 8, !tbaa !108
  br label %291

291:                                              ; preds = %523, %280
  %292 = phi ptr [ %290, %280 ], [ %527, %523 ]
  %293 = phi i32 [ %289, %280 ], [ %528, %523 ]
  %294 = phi ptr [ %0, %280 ], [ %450, %523 ]
  %295 = phi ptr [ %40, %280 ], [ %461, %523 ]
  %296 = phi ptr [ %41, %280 ], [ %472, %523 ]
  %297 = phi ptr [ %42, %280 ], [ %483, %523 ]
  %298 = phi ptr [ %271, %280 ], [ %520, %523 ]
  %299 = phi i64 [ %123, %280 ], [ %495, %523 ]
  %300 = phi i32 [ %270, %280 ], [ %519, %523 ]
  %301 = phi i64 [ %269, %280 ], [ %518, %523 ]
  %302 = phi ptr [ %197, %280 ], [ %507, %523 ]
  %303 = phi i32 [ %122, %280 ], [ %494, %523 ]
  %304 = phi i32 [ %196, %280 ], [ %506, %523 ]
  %305 = phi i64 [ %195, %280 ], [ %505, %523 ]
  %306 = phi ptr [ %121, %280 ], [ %493, %523 ]
  %307 = phi i64 [ %281, %280 ], [ %529, %523 ]
  %308 = and i32 %303, 63
  %309 = zext nneg i32 %308 to i64
  %310 = shl i64 %299, %309
  %311 = lshr i64 %310, %284
  %312 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %311
  %313 = getelementptr inbounds nuw i8, ptr %312, i64 1
  %314 = load i8, ptr %313, align 1, !tbaa !97
  %315 = load i8, ptr %312, align 1, !tbaa !99
  %316 = zext i8 %315 to i32
  %317 = add i32 %303, %316
  %318 = getelementptr inbounds nuw i8, ptr %294, i64 1
  store i8 %314, ptr %294, align 1, !tbaa !9
  %319 = and i32 %304, 63
  %320 = zext nneg i32 %319 to i64
  %321 = shl i64 %305, %320
  %322 = lshr i64 %321, %284
  %323 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %322
  %324 = getelementptr inbounds nuw i8, ptr %323, i64 1
  %325 = load i8, ptr %324, align 1, !tbaa !97
  %326 = load i8, ptr %323, align 1, !tbaa !99
  %327 = zext i8 %326 to i32
  %328 = add i32 %304, %327
  %329 = getelementptr inbounds nuw i8, ptr %295, i64 1
  store i8 %325, ptr %295, align 1, !tbaa !9
  %330 = and i32 %300, 63
  %331 = zext nneg i32 %330 to i64
  %332 = shl i64 %301, %331
  %333 = lshr i64 %332, %284
  %334 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %333
  %335 = getelementptr inbounds nuw i8, ptr %334, i64 1
  %336 = load i8, ptr %335, align 1, !tbaa !97
  %337 = load i8, ptr %334, align 1, !tbaa !99
  %338 = zext i8 %337 to i32
  %339 = add i32 %300, %338
  %340 = getelementptr inbounds nuw i8, ptr %296, i64 1
  store i8 %336, ptr %296, align 1, !tbaa !9
  %341 = and i32 %293, 63
  %342 = zext nneg i32 %341 to i64
  %343 = shl i64 %307, %342
  %344 = lshr i64 %343, %284
  %345 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %344
  %346 = getelementptr inbounds nuw i8, ptr %345, i64 1
  %347 = load i8, ptr %346, align 1, !tbaa !97
  %348 = load i8, ptr %345, align 1, !tbaa !99
  %349 = zext i8 %348 to i32
  %350 = add i32 %293, %349
  store i8 %347, ptr %297, align 1, !tbaa !9
  %351 = getelementptr inbounds nuw i8, ptr %297, i64 1
  %352 = and i32 %317, 63
  %353 = zext nneg i32 %352 to i64
  %354 = shl i64 %299, %353
  %355 = lshr i64 %354, %284
  %356 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %355
  %357 = getelementptr inbounds nuw i8, ptr %356, i64 1
  %358 = load i8, ptr %357, align 1, !tbaa !97
  %359 = load i8, ptr %356, align 1, !tbaa !99
  %360 = zext i8 %359 to i32
  %361 = add i32 %317, %360
  store i8 %358, ptr %318, align 1, !tbaa !9
  %362 = and i32 %328, 63
  %363 = zext nneg i32 %362 to i64
  %364 = shl i64 %305, %363
  %365 = lshr i64 %364, %284
  %366 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %365
  %367 = getelementptr inbounds nuw i8, ptr %366, i64 1
  %368 = load i8, ptr %367, align 1, !tbaa !97
  %369 = load i8, ptr %366, align 1, !tbaa !99
  %370 = zext i8 %369 to i32
  %371 = add i32 %328, %370
  %372 = getelementptr inbounds nuw i8, ptr %295, i64 2
  store i8 %368, ptr %329, align 1, !tbaa !9
  %373 = and i32 %339, 63
  %374 = zext nneg i32 %373 to i64
  %375 = shl i64 %301, %374
  %376 = lshr i64 %375, %284
  %377 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %376
  %378 = getelementptr inbounds nuw i8, ptr %377, i64 1
  %379 = load i8, ptr %378, align 1, !tbaa !97
  %380 = load i8, ptr %377, align 1, !tbaa !99
  %381 = zext i8 %380 to i32
  %382 = add i32 %339, %381
  %383 = getelementptr inbounds nuw i8, ptr %296, i64 2
  store i8 %379, ptr %340, align 1, !tbaa !9
  %384 = and i32 %350, 63
  %385 = zext nneg i32 %384 to i64
  %386 = shl i64 %307, %385
  %387 = lshr i64 %386, %284
  %388 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %387
  %389 = getelementptr inbounds nuw i8, ptr %388, i64 1
  %390 = load i8, ptr %389, align 1, !tbaa !97
  %391 = load i8, ptr %388, align 1, !tbaa !99
  %392 = zext i8 %391 to i32
  %393 = add i32 %350, %392
  %394 = getelementptr inbounds nuw i8, ptr %297, i64 2
  store i8 %390, ptr %351, align 1, !tbaa !9
  %395 = getelementptr inbounds nuw i8, ptr %294, i64 2
  %396 = and i32 %361, 63
  %397 = zext nneg i32 %396 to i64
  %398 = shl i64 %299, %397
  %399 = lshr i64 %398, %284
  %400 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %399
  %401 = getelementptr inbounds nuw i8, ptr %400, i64 1
  %402 = load i8, ptr %401, align 1, !tbaa !97
  %403 = load i8, ptr %400, align 1, !tbaa !99
  %404 = zext i8 %403 to i32
  %405 = add i32 %361, %404
  %406 = getelementptr inbounds nuw i8, ptr %294, i64 3
  store i8 %402, ptr %395, align 1, !tbaa !9
  %407 = and i32 %371, 63
  %408 = zext nneg i32 %407 to i64
  %409 = shl i64 %305, %408
  %410 = lshr i64 %409, %284
  %411 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %410
  %412 = getelementptr inbounds nuw i8, ptr %411, i64 1
  %413 = load i8, ptr %412, align 1, !tbaa !97
  %414 = load i8, ptr %411, align 1, !tbaa !99
  %415 = zext i8 %414 to i32
  %416 = add i32 %371, %415
  %417 = getelementptr inbounds nuw i8, ptr %295, i64 3
  store i8 %413, ptr %372, align 1, !tbaa !9
  %418 = and i32 %382, 63
  %419 = zext nneg i32 %418 to i64
  %420 = shl i64 %301, %419
  %421 = lshr i64 %420, %284
  %422 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %421
  %423 = getelementptr inbounds nuw i8, ptr %422, i64 1
  %424 = load i8, ptr %423, align 1, !tbaa !97
  %425 = load i8, ptr %422, align 1, !tbaa !99
  %426 = zext i8 %425 to i32
  %427 = add i32 %382, %426
  %428 = getelementptr inbounds nuw i8, ptr %296, i64 3
  store i8 %424, ptr %383, align 1, !tbaa !9
  %429 = and i32 %393, 63
  %430 = zext nneg i32 %429 to i64
  %431 = shl i64 %307, %430
  %432 = lshr i64 %431, %284
  %433 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %432
  %434 = getelementptr inbounds nuw i8, ptr %433, i64 1
  %435 = load i8, ptr %434, align 1, !tbaa !97
  %436 = load i8, ptr %433, align 1, !tbaa !99
  %437 = zext i8 %436 to i32
  %438 = add i32 %393, %437
  store i8 %435, ptr %394, align 1, !tbaa !9
  %439 = getelementptr inbounds nuw i8, ptr %297, i64 3
  %440 = and i32 %405, 63
  %441 = zext nneg i32 %440 to i64
  %442 = shl i64 %299, %441
  %443 = lshr i64 %442, %284
  %444 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %443
  %445 = getelementptr inbounds nuw i8, ptr %444, i64 1
  %446 = load i8, ptr %445, align 1, !tbaa !97
  %447 = load i8, ptr %444, align 1, !tbaa !99
  %448 = zext i8 %447 to i32
  %449 = add i32 %405, %448
  %450 = getelementptr inbounds nuw i8, ptr %294, i64 4
  store i8 %446, ptr %406, align 1, !tbaa !9
  %451 = and i32 %416, 63
  %452 = zext nneg i32 %451 to i64
  %453 = shl i64 %305, %452
  %454 = lshr i64 %453, %284
  %455 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %454
  %456 = getelementptr inbounds nuw i8, ptr %455, i64 1
  %457 = load i8, ptr %456, align 1, !tbaa !97
  %458 = load i8, ptr %455, align 1, !tbaa !99
  %459 = zext i8 %458 to i32
  %460 = add i32 %416, %459
  %461 = getelementptr inbounds nuw i8, ptr %295, i64 4
  store i8 %457, ptr %417, align 1, !tbaa !9
  %462 = and i32 %427, 63
  %463 = zext nneg i32 %462 to i64
  %464 = shl i64 %301, %463
  %465 = lshr i64 %464, %284
  %466 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %465
  %467 = getelementptr inbounds nuw i8, ptr %466, i64 1
  %468 = load i8, ptr %467, align 1, !tbaa !97
  %469 = load i8, ptr %466, align 1, !tbaa !99
  %470 = zext i8 %469 to i32
  %471 = add i32 %427, %470
  %472 = getelementptr inbounds nuw i8, ptr %296, i64 4
  store i8 %468, ptr %428, align 1, !tbaa !9
  %473 = and i32 %438, 63
  %474 = zext nneg i32 %473 to i64
  %475 = shl i64 %307, %474
  %476 = lshr i64 %475, %284
  %477 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %476
  %478 = getelementptr inbounds nuw i8, ptr %477, i64 1
  %479 = load i8, ptr %478, align 1, !tbaa !97
  %480 = load i8, ptr %477, align 1, !tbaa !99
  %481 = zext i8 %480 to i32
  %482 = add i32 %438, %481
  %483 = getelementptr inbounds nuw i8, ptr %297, i64 4
  store i8 %479, ptr %439, align 1, !tbaa !9
  %484 = icmp ult ptr %306, %52
  br i1 %484, label %492, label %485, !prof !109

485:                                              ; preds = %291
  %486 = lshr i32 %449, 3
  %487 = zext nneg i32 %486 to i64
  %488 = sub nsw i64 0, %487
  %489 = getelementptr inbounds i8, ptr %306, i64 %488
  %490 = and i32 %449, 7
  %491 = load i64, ptr %489, align 1, !tbaa !26
  br label %492

492:                                              ; preds = %485, %291
  %493 = phi ptr [ %306, %291 ], [ %489, %485 ]
  %494 = phi i32 [ %449, %291 ], [ %490, %485 ]
  %495 = phi i64 [ %299, %291 ], [ %491, %485 ]
  %496 = icmp ult ptr %302, %126
  br i1 %496, label %504, label %497, !prof !109

497:                                              ; preds = %492
  %498 = lshr i32 %460, 3
  %499 = zext nneg i32 %498 to i64
  %500 = sub nsw i64 0, %499
  %501 = getelementptr inbounds i8, ptr %302, i64 %500
  %502 = and i32 %460, 7
  %503 = load i64, ptr %501, align 1, !tbaa !26
  br label %504

504:                                              ; preds = %497, %492
  %505 = phi i64 [ %305, %492 ], [ %503, %497 ]
  %506 = phi i32 [ %460, %492 ], [ %502, %497 ]
  %507 = phi ptr [ %302, %492 ], [ %501, %497 ]
  %508 = phi i1 [ true, %492 ], [ %484, %497 ]
  %509 = icmp ult ptr %298, %200
  br i1 %509, label %517, label %510, !prof !109

510:                                              ; preds = %504
  %511 = lshr i32 %471, 3
  %512 = zext nneg i32 %511 to i64
  %513 = sub nsw i64 0, %512
  %514 = getelementptr inbounds i8, ptr %298, i64 %513
  %515 = and i32 %471, 7
  %516 = load i64, ptr %514, align 1, !tbaa !26
  br label %517

517:                                              ; preds = %510, %504
  %518 = phi i64 [ %301, %504 ], [ %516, %510 ]
  %519 = phi i32 [ %471, %504 ], [ %515, %510 ]
  %520 = phi ptr [ %298, %504 ], [ %514, %510 ]
  %521 = phi i1 [ true, %504 ], [ %508, %510 ]
  %522 = icmp ult ptr %292, %288
  br i1 %522, label %.thread, label %523, !prof !109

523:                                              ; preds = %517
  %524 = lshr i32 %482, 3
  %525 = zext nneg i32 %524 to i64
  %526 = sub nsw i64 0, %525
  %527 = getelementptr inbounds i8, ptr %292, i64 %526
  %528 = and i32 %482, 7
  %529 = load i64, ptr %527, align 1, !tbaa !26
  store i64 %529, ptr %8, align 8, !tbaa !110
  %530 = icmp uge ptr %483, %20
  %531 = or i1 %530, %521
  br i1 %531, label %.thread, label %291, !llvm.loop !113

.thread:                                          ; preds = %517, %523
  %532 = phi i32 [ %528, %523 ], [ %482, %517 ]
  %533 = phi ptr [ %527, %523 ], [ %292, %517 ]
  store i32 %532, ptr %285, align 8, !tbaa !107
  store ptr %533, ptr %286, align 8
  br label %534

534:                                              ; preds = %.thread, %274
  %535 = phi ptr [ %121, %274 ], [ %493, %.thread ]
  %536 = phi i64 [ %195, %274 ], [ %505, %.thread ]
  %537 = phi i32 [ %196, %274 ], [ %506, %.thread ]
  %538 = phi i32 [ %122, %274 ], [ %494, %.thread ]
  %539 = phi ptr [ %197, %274 ], [ %507, %.thread ]
  %540 = phi i64 [ %269, %274 ], [ %518, %.thread ]
  %541 = phi i32 [ %270, %274 ], [ %519, %.thread ]
  %542 = phi i64 [ %123, %274 ], [ %495, %.thread ]
  %543 = phi ptr [ %271, %274 ], [ %520, %.thread ]
  %544 = phi ptr [ %42, %274 ], [ %483, %.thread ]
  %545 = phi ptr [ %41, %274 ], [ %472, %.thread ]
  %546 = phi ptr [ %40, %274 ], [ %461, %.thread ]
  %547 = phi ptr [ %0, %274 ], [ %450, %.thread ]
  %548 = icmp ugt ptr %547, %40
  %549 = icmp ugt ptr %546, %41
  %550 = select i1 %548, i1 true, i1 %549
  %551 = icmp ugt ptr %545, %42
  %552 = select i1 %550, i1 true, i1 %551
  br i1 %552, label %1274, label %553

553:                                              ; preds = %534
  %554 = ptrtoint ptr %40 to i64
  %555 = ptrtoint ptr %547 to i64
  %556 = sub i64 %554, %555
  %557 = icmp sgt i64 %556, 3
  %558 = icmp ugt i32 %538, 64
  br i1 %557, label %559, label %645

559:                                              ; preds = %553
  br i1 %558, label %.loopexit105, label %560, !prof !91

560:                                              ; preds = %559
  %561 = ptrtoint ptr %34 to i64
  %562 = getelementptr inbounds i8, ptr %40, i64 -3
  %563 = sub nsw i32 0, %44
  %564 = and i32 %563, 63
  %565 = zext nneg i32 %564 to i64
  br label %566

566:                                              ; preds = %599, %560
  %567 = phi ptr [ %547, %560 ], [ %643, %599 ]
  %568 = phi i64 [ %542, %560 ], [ %596, %599 ]
  %569 = phi i32 [ %538, %560 ], [ %642, %599 ]
  %570 = phi ptr [ %535, %560 ], [ %595, %599 ]
  %571 = icmp ult ptr %570, %52
  br i1 %571, label %575, label %572

572:                                              ; preds = %566
  %573 = lshr i32 %569, 3
  %574 = and i32 %569, 7
  br label %589

575:                                              ; preds = %566
  %576 = icmp eq ptr %570, %34
  br i1 %576, label %.loopexit105, label %577

577:                                              ; preds = %575
  %578 = lshr i32 %569, 3
  %579 = zext nneg i32 %578 to i64
  %580 = sub nsw i64 0, %579
  %581 = getelementptr inbounds i8, ptr %570, i64 %580
  %582 = icmp uge ptr %581, %34
  %583 = ptrtoint ptr %570 to i64
  %584 = sub i64 %583, %561
  %585 = trunc i64 %584 to i32
  %586 = select i1 %582, i32 %578, i32 %585
  %587 = shl i32 %586, 3
  %588 = sub i32 %569, %587
  br label %589

589:                                              ; preds = %577, %572
  %590 = phi i32 [ %586, %577 ], [ %573, %572 ]
  %591 = phi i32 [ %588, %577 ], [ %574, %572 ]
  %592 = phi i1 [ %582, %577 ], [ true, %572 ]
  %593 = zext i32 %590 to i64
  %594 = sub nsw i64 0, %593
  %595 = getelementptr inbounds i8, ptr %570, i64 %594
  %596 = load i64, ptr %595, align 1, !tbaa !26
  %597 = icmp ult ptr %567, %562
  %598 = and i1 %597, %592
  br i1 %598, label %599, label %.loopexit105

599:                                              ; preds = %589
  %600 = and i32 %591, 63
  %601 = zext nneg i32 %600 to i64
  %602 = shl i64 %596, %601
  %603 = lshr i64 %602, %565
  %604 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %603
  %605 = getelementptr inbounds nuw i8, ptr %604, i64 1
  %606 = load i8, ptr %605, align 1, !tbaa !97
  %607 = load i8, ptr %604, align 1, !tbaa !99
  %608 = zext i8 %607 to i32
  %609 = add i32 %591, %608
  store i8 %606, ptr %567, align 1, !tbaa !9
  %610 = getelementptr inbounds nuw i8, ptr %567, i64 1
  %611 = and i32 %609, 63
  %612 = zext nneg i32 %611 to i64
  %613 = shl i64 %596, %612
  %614 = lshr i64 %613, %565
  %615 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %614
  %616 = getelementptr inbounds nuw i8, ptr %615, i64 1
  %617 = load i8, ptr %616, align 1, !tbaa !97
  %618 = load i8, ptr %615, align 1, !tbaa !99
  %619 = zext i8 %618 to i32
  %620 = add i32 %609, %619
  store i8 %617, ptr %610, align 1, !tbaa !9
  %621 = getelementptr inbounds nuw i8, ptr %567, i64 2
  %622 = and i32 %620, 63
  %623 = zext nneg i32 %622 to i64
  %624 = shl i64 %596, %623
  %625 = lshr i64 %624, %565
  %626 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %625
  %627 = getelementptr inbounds nuw i8, ptr %626, i64 1
  %628 = load i8, ptr %627, align 1, !tbaa !97
  %629 = load i8, ptr %626, align 1, !tbaa !99
  %630 = zext i8 %629 to i32
  %631 = add i32 %620, %630
  store i8 %628, ptr %621, align 1, !tbaa !9
  %632 = getelementptr inbounds nuw i8, ptr %567, i64 3
  %633 = and i32 %631, 63
  %634 = zext nneg i32 %633 to i64
  %635 = shl i64 %596, %634
  %636 = lshr i64 %635, %565
  %637 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %636
  %638 = getelementptr inbounds nuw i8, ptr %637, i64 1
  %639 = load i8, ptr %638, align 1, !tbaa !97
  %640 = load i8, ptr %637, align 1, !tbaa !99
  %641 = zext i8 %640 to i32
  %642 = add i32 %631, %641
  %643 = getelementptr inbounds nuw i8, ptr %567, i64 4
  store i8 %639, ptr %632, align 1, !tbaa !9
  %644 = icmp ugt i32 %642, 64
  br i1 %644, label %.loopexit105, label %566, !prof !88, !llvm.loop !100

645:                                              ; preds = %553
  br i1 %558, label %.loopexit105, label %646, !prof !109

646:                                              ; preds = %645
  %647 = icmp ult ptr %535, %52
  br i1 %647, label %655, label %648

648:                                              ; preds = %646
  %649 = lshr i32 %538, 3
  %650 = zext nneg i32 %649 to i64
  %651 = sub nsw i64 0, %650
  %652 = getelementptr inbounds i8, ptr %535, i64 %651
  %653 = and i32 %538, 7
  %654 = load i64, ptr %652, align 1, !tbaa !26
  br label %.loopexit105

655:                                              ; preds = %646
  %656 = icmp eq ptr %535, %34
  br i1 %656, label %.loopexit105, label %657

657:                                              ; preds = %655
  %658 = lshr i32 %538, 3
  %659 = zext nneg i32 %658 to i64
  %660 = sub nsw i64 0, %659
  %661 = getelementptr inbounds i8, ptr %535, i64 %660
  %662 = icmp ult ptr %661, %34
  %663 = ptrtoint ptr %535 to i64
  %664 = ptrtoint ptr %34 to i64
  %665 = sub i64 %663, %664
  %666 = trunc i64 %665 to i32
  %667 = select i1 %662, i32 %666, i32 %658
  %668 = zext i32 %667 to i64
  %669 = sub nsw i64 0, %668
  %670 = getelementptr inbounds i8, ptr %535, i64 %669
  %671 = shl i32 %667, 3
  %672 = sub i32 %538, %671
  %673 = load i64, ptr %670, align 1, !tbaa !26
  br label %.loopexit105

.loopexit105:                                     ; preds = %599, %589, %575, %657, %655, %648, %645, %559
  %674 = phi ptr [ %670, %657 ], [ %652, %648 ], [ @BIT_reloadDStream.zeroFilled, %645 ], [ %34, %655 ], [ @BIT_reloadDStream.zeroFilled, %559 ], [ %595, %589 ], [ @BIT_reloadDStream.zeroFilled, %599 ], [ %34, %575 ]
  %675 = phi i32 [ %672, %657 ], [ %653, %648 ], [ %538, %645 ], [ %538, %655 ], [ %538, %559 ], [ %591, %589 ], [ %642, %599 ], [ %569, %575 ]
  %676 = phi i64 [ %673, %657 ], [ %654, %648 ], [ %542, %645 ], [ %542, %655 ], [ %542, %559 ], [ %596, %589 ], [ %596, %599 ], [ %568, %575 ]
  %677 = phi ptr [ %547, %657 ], [ %547, %648 ], [ %547, %645 ], [ %547, %655 ], [ %547, %559 ], [ %567, %589 ], [ %643, %599 ], [ %567, %575 ]
  %678 = icmp ult ptr %677, %40
  br i1 %678, label %679, label %.loopexit104

679:                                              ; preds = %.loopexit105
  %680 = ptrtoint ptr %677 to i64
  %681 = sub nsw i32 0, %44
  %682 = and i32 %681, 63
  %683 = zext nneg i32 %682 to i64
  %684 = add i64 %39, %7
  %685 = sub i64 %684, %680
  %686 = add i64 %680, 1
  %687 = and i64 %685, 1
  %688 = icmp eq i64 %687, 0
  br i1 %688, label %701, label %689

689:                                              ; preds = %679
  %690 = and i32 %675, 63
  %691 = zext nneg i32 %690 to i64
  %692 = shl i64 %676, %691
  %693 = lshr i64 %692, %683
  %694 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %693
  %695 = getelementptr inbounds nuw i8, ptr %694, i64 1
  %696 = load i8, ptr %695, align 1, !tbaa !97
  %697 = load i8, ptr %694, align 1, !tbaa !99
  %698 = zext i8 %697 to i32
  %699 = add i32 %675, %698
  %700 = getelementptr inbounds nuw i8, ptr %677, i64 1
  store i8 %696, ptr %677, align 1, !tbaa !9
  br label %701

701:                                              ; preds = %689, %679
  %702 = phi ptr [ %677, %679 ], [ %700, %689 ]
  %703 = phi i32 [ %675, %679 ], [ %699, %689 ]
  %704 = phi i32 [ poison, %679 ], [ %699, %689 ]
  %705 = icmp eq i64 %684, %686
  br i1 %705, label %.loopexit104, label %.preheader103

.preheader103:                                    ; preds = %701, %.preheader103
  %706 = phi ptr [ %729, %.preheader103 ], [ %702, %701 ]
  %707 = phi i32 [ %728, %.preheader103 ], [ %703, %701 ]
  %708 = and i32 %707, 63
  %709 = zext nneg i32 %708 to i64
  %710 = shl i64 %676, %709
  %711 = lshr i64 %710, %683
  %712 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %711
  %713 = getelementptr inbounds nuw i8, ptr %712, i64 1
  %714 = load i8, ptr %713, align 1, !tbaa !97
  %715 = load i8, ptr %712, align 1, !tbaa !99
  %716 = zext i8 %715 to i32
  %717 = add i32 %707, %716
  %718 = getelementptr inbounds nuw i8, ptr %706, i64 1
  store i8 %714, ptr %706, align 1, !tbaa !9
  %719 = and i32 %717, 63
  %720 = zext nneg i32 %719 to i64
  %721 = shl i64 %676, %720
  %722 = lshr i64 %721, %683
  %723 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %722
  %724 = getelementptr inbounds nuw i8, ptr %723, i64 1
  %725 = load i8, ptr %724, align 1, !tbaa !97
  %726 = load i8, ptr %723, align 1, !tbaa !99
  %727 = zext i8 %726 to i32
  %728 = add i32 %717, %727
  %729 = getelementptr inbounds nuw i8, ptr %706, i64 2
  store i8 %725, ptr %718, align 1, !tbaa !9
  %730 = icmp ult ptr %729, %40
  br i1 %730, label %.preheader103, label %.loopexit104, !llvm.loop !101

.loopexit104:                                     ; preds = %.preheader103, %701, %.loopexit105
  %731 = phi i32 [ %675, %.loopexit105 ], [ %704, %701 ], [ %728, %.preheader103 ]
  %732 = ptrtoint ptr %41 to i64
  %733 = ptrtoint ptr %546 to i64
  %734 = sub i64 %732, %733
  %735 = icmp sgt i64 %734, 3
  %736 = icmp ugt i32 %537, 64
  br i1 %735, label %737, label %823

737:                                              ; preds = %.loopexit104
  br i1 %736, label %.loopexit98, label %738, !prof !91

738:                                              ; preds = %737
  %739 = ptrtoint ptr %35 to i64
  %740 = getelementptr inbounds i8, ptr %41, i64 -3
  %741 = sub nsw i32 0, %44
  %742 = and i32 %741, 63
  %743 = zext nneg i32 %742 to i64
  br label %744

744:                                              ; preds = %777, %738
  %745 = phi ptr [ %546, %738 ], [ %821, %777 ]
  %746 = phi ptr [ %539, %738 ], [ %773, %777 ]
  %747 = phi i32 [ %537, %738 ], [ %820, %777 ]
  %748 = phi i64 [ %536, %738 ], [ %774, %777 ]
  %749 = icmp ult ptr %746, %126
  br i1 %749, label %753, label %750

750:                                              ; preds = %744
  %751 = lshr i32 %747, 3
  %752 = and i32 %747, 7
  br label %767

753:                                              ; preds = %744
  %754 = icmp eq ptr %746, %35
  br i1 %754, label %.loopexit98, label %755

755:                                              ; preds = %753
  %756 = lshr i32 %747, 3
  %757 = zext nneg i32 %756 to i64
  %758 = sub nsw i64 0, %757
  %759 = getelementptr inbounds i8, ptr %746, i64 %758
  %760 = icmp uge ptr %759, %35
  %761 = ptrtoint ptr %746 to i64
  %762 = sub i64 %761, %739
  %763 = trunc i64 %762 to i32
  %764 = select i1 %760, i32 %756, i32 %763
  %765 = shl i32 %764, 3
  %766 = sub i32 %747, %765
  br label %767

767:                                              ; preds = %755, %750
  %768 = phi i32 [ %766, %755 ], [ %752, %750 ]
  %769 = phi i32 [ %764, %755 ], [ %751, %750 ]
  %770 = phi i1 [ %760, %755 ], [ true, %750 ]
  %771 = zext i32 %769 to i64
  %772 = sub nsw i64 0, %771
  %773 = getelementptr inbounds i8, ptr %746, i64 %772
  %774 = load i64, ptr %773, align 1, !tbaa !26
  %775 = icmp ult ptr %745, %740
  %776 = and i1 %775, %770
  br i1 %776, label %777, label %.loopexit98

777:                                              ; preds = %767
  %778 = and i32 %768, 63
  %779 = zext nneg i32 %778 to i64
  %780 = shl i64 %774, %779
  %781 = lshr i64 %780, %743
  %782 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %781
  %783 = getelementptr inbounds nuw i8, ptr %782, i64 1
  %784 = load i8, ptr %783, align 1, !tbaa !97
  %785 = load i8, ptr %782, align 1, !tbaa !99
  %786 = zext i8 %785 to i32
  %787 = add i32 %768, %786
  store i8 %784, ptr %745, align 1, !tbaa !9
  %788 = getelementptr inbounds nuw i8, ptr %745, i64 1
  %789 = and i32 %787, 63
  %790 = zext nneg i32 %789 to i64
  %791 = shl i64 %774, %790
  %792 = lshr i64 %791, %743
  %793 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %792
  %794 = getelementptr inbounds nuw i8, ptr %793, i64 1
  %795 = load i8, ptr %794, align 1, !tbaa !97
  %796 = load i8, ptr %793, align 1, !tbaa !99
  %797 = zext i8 %796 to i32
  %798 = add i32 %787, %797
  store i8 %795, ptr %788, align 1, !tbaa !9
  %799 = getelementptr inbounds nuw i8, ptr %745, i64 2
  %800 = and i32 %798, 63
  %801 = zext nneg i32 %800 to i64
  %802 = shl i64 %774, %801
  %803 = lshr i64 %802, %743
  %804 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %803
  %805 = getelementptr inbounds nuw i8, ptr %804, i64 1
  %806 = load i8, ptr %805, align 1, !tbaa !97
  %807 = load i8, ptr %804, align 1, !tbaa !99
  %808 = zext i8 %807 to i32
  %809 = add i32 %798, %808
  store i8 %806, ptr %799, align 1, !tbaa !9
  %810 = getelementptr inbounds nuw i8, ptr %745, i64 3
  %811 = and i32 %809, 63
  %812 = zext nneg i32 %811 to i64
  %813 = shl i64 %774, %812
  %814 = lshr i64 %813, %743
  %815 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %814
  %816 = getelementptr inbounds nuw i8, ptr %815, i64 1
  %817 = load i8, ptr %816, align 1, !tbaa !97
  %818 = load i8, ptr %815, align 1, !tbaa !99
  %819 = zext i8 %818 to i32
  %820 = add i32 %809, %819
  %821 = getelementptr inbounds nuw i8, ptr %745, i64 4
  store i8 %817, ptr %810, align 1, !tbaa !9
  %822 = icmp ugt i32 %820, 64
  br i1 %822, label %.loopexit98, label %744, !prof !88, !llvm.loop !100

823:                                              ; preds = %.loopexit104
  br i1 %736, label %.loopexit98, label %824, !prof !109

824:                                              ; preds = %823
  %825 = icmp ult ptr %539, %126
  br i1 %825, label %833, label %826

826:                                              ; preds = %824
  %827 = lshr i32 %537, 3
  %828 = zext nneg i32 %827 to i64
  %829 = sub nsw i64 0, %828
  %830 = getelementptr inbounds i8, ptr %539, i64 %829
  %831 = and i32 %537, 7
  %832 = load i64, ptr %830, align 1, !tbaa !26
  br label %.loopexit98

833:                                              ; preds = %824
  %834 = icmp eq ptr %539, %35
  br i1 %834, label %.loopexit98, label %835

835:                                              ; preds = %833
  %836 = lshr i32 %537, 3
  %837 = zext nneg i32 %836 to i64
  %838 = sub nsw i64 0, %837
  %839 = getelementptr inbounds i8, ptr %539, i64 %838
  %840 = icmp ult ptr %839, %35
  %841 = ptrtoint ptr %539 to i64
  %842 = ptrtoint ptr %35 to i64
  %843 = sub i64 %841, %842
  %844 = trunc i64 %843 to i32
  %845 = select i1 %840, i32 %844, i32 %836
  %846 = zext i32 %845 to i64
  %847 = sub nsw i64 0, %846
  %848 = getelementptr inbounds i8, ptr %539, i64 %847
  %849 = shl i32 %845, 3
  %850 = sub i32 %537, %849
  %851 = load i64, ptr %848, align 1, !tbaa !26
  br label %.loopexit98

.loopexit98:                                      ; preds = %777, %767, %753, %835, %833, %826, %823, %737
  %852 = phi i64 [ %851, %835 ], [ %832, %826 ], [ %536, %823 ], [ %536, %833 ], [ %536, %737 ], [ %774, %767 ], [ %774, %777 ], [ %748, %753 ]
  %853 = phi i32 [ %850, %835 ], [ %831, %826 ], [ %537, %823 ], [ %537, %833 ], [ %537, %737 ], [ %768, %767 ], [ %820, %777 ], [ %747, %753 ]
  %854 = phi ptr [ %848, %835 ], [ %830, %826 ], [ @BIT_reloadDStream.zeroFilled, %823 ], [ %35, %833 ], [ @BIT_reloadDStream.zeroFilled, %737 ], [ %773, %767 ], [ @BIT_reloadDStream.zeroFilled, %777 ], [ %35, %753 ]
  %855 = phi ptr [ %546, %835 ], [ %546, %826 ], [ %546, %823 ], [ %546, %833 ], [ %546, %737 ], [ %745, %767 ], [ %821, %777 ], [ %745, %753 ]
  %856 = icmp ult ptr %855, %41
  br i1 %856, label %857, label %.loopexit97

857:                                              ; preds = %.loopexit98
  %858 = ptrtoint ptr %855 to i64
  %859 = sub nsw i32 0, %44
  %860 = and i32 %859, 63
  %861 = zext nneg i32 %860 to i64
  %862 = shl nuw nsw i64 %39, 1
  %863 = add i64 %862, %7
  %864 = sub i64 %7, %858
  %.neg = add i64 %858, 1
  %xtraiter = and i64 %864, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %857
  %865 = and i32 %853, 63
  %866 = zext nneg i32 %865 to i64
  %867 = shl i64 %852, %866
  %868 = lshr i64 %867, %861
  %869 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %868
  %870 = getelementptr inbounds nuw i8, ptr %869, i64 1
  %871 = load i8, ptr %870, align 1, !tbaa !97
  %872 = load i8, ptr %869, align 1, !tbaa !99
  %873 = zext i8 %872 to i32
  %874 = add i32 %853, %873
  %875 = getelementptr inbounds nuw i8, ptr %855, i64 1
  store i8 %871, ptr %855, align 1, !tbaa !9
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %857
  %.unr = phi ptr [ %855, %857 ], [ %875, %.prol.loopexit.unr-lcssa ]
  %.unr345 = phi i32 [ %853, %857 ], [ %874, %.prol.loopexit.unr-lcssa ]
  %.lcssa322.unr = phi i32 [ poison, %857 ], [ %874, %.prol.loopexit.unr-lcssa ]
  %876 = icmp eq i64 %863, %.neg
  br i1 %876, label %.loopexit97, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %877 = phi ptr [ %900, %.new ], [ %.unr, %.prol.loopexit ]
  %878 = phi i32 [ %899, %.new ], [ %.unr345, %.prol.loopexit ]
  %879 = and i32 %878, 63
  %880 = zext nneg i32 %879 to i64
  %881 = shl i64 %852, %880
  %882 = lshr i64 %881, %861
  %883 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %882
  %884 = getelementptr inbounds nuw i8, ptr %883, i64 1
  %885 = load i8, ptr %884, align 1, !tbaa !97
  %886 = load i8, ptr %883, align 1, !tbaa !99
  %887 = zext i8 %886 to i32
  %888 = add i32 %878, %887
  %889 = getelementptr inbounds nuw i8, ptr %877, i64 1
  store i8 %885, ptr %877, align 1, !tbaa !9
  %890 = and i32 %888, 63
  %891 = zext nneg i32 %890 to i64
  %892 = shl i64 %852, %891
  %893 = lshr i64 %892, %861
  %894 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %893
  %895 = getelementptr inbounds nuw i8, ptr %894, i64 1
  %896 = load i8, ptr %895, align 1, !tbaa !97
  %897 = load i8, ptr %894, align 1, !tbaa !99
  %898 = zext i8 %897 to i32
  %899 = add i32 %888, %898
  %900 = getelementptr inbounds nuw i8, ptr %877, i64 2
  store i8 %896, ptr %889, align 1, !tbaa !9
  %901 = icmp ult ptr %900, %41
  br i1 %901, label %.new, label %.loopexit97, !llvm.loop !101

.loopexit97:                                      ; preds = %.prol.loopexit, %.new, %.loopexit98
  %902 = phi i32 [ %853, %.loopexit98 ], [ %.lcssa322.unr, %.prol.loopexit ], [ %899, %.new ]
  %903 = ptrtoint ptr %42 to i64
  %904 = ptrtoint ptr %545 to i64
  %905 = sub i64 %903, %904
  %906 = icmp sgt i64 %905, 3
  %907 = icmp ugt i32 %541, 64
  br i1 %906, label %908, label %994

908:                                              ; preds = %.loopexit97
  br i1 %907, label %.loopexit92, label %909, !prof !91

909:                                              ; preds = %908
  %910 = ptrtoint ptr %36 to i64
  %911 = getelementptr inbounds i8, ptr %42, i64 -3
  %912 = sub nsw i32 0, %44
  %913 = and i32 %912, 63
  %914 = zext nneg i32 %913 to i64
  br label %915

915:                                              ; preds = %948, %909
  %916 = phi ptr [ %545, %909 ], [ %992, %948 ]
  %917 = phi ptr [ %543, %909 ], [ %944, %948 ]
  %918 = phi i32 [ %541, %909 ], [ %991, %948 ]
  %919 = phi i64 [ %540, %909 ], [ %945, %948 ]
  %920 = icmp ult ptr %917, %200
  br i1 %920, label %924, label %921

921:                                              ; preds = %915
  %922 = lshr i32 %918, 3
  %923 = and i32 %918, 7
  br label %938

924:                                              ; preds = %915
  %925 = icmp eq ptr %917, %36
  br i1 %925, label %.loopexit92, label %926

926:                                              ; preds = %924
  %927 = lshr i32 %918, 3
  %928 = zext nneg i32 %927 to i64
  %929 = sub nsw i64 0, %928
  %930 = getelementptr inbounds i8, ptr %917, i64 %929
  %931 = icmp uge ptr %930, %36
  %932 = ptrtoint ptr %917 to i64
  %933 = sub i64 %932, %910
  %934 = trunc i64 %933 to i32
  %935 = select i1 %931, i32 %927, i32 %934
  %936 = shl i32 %935, 3
  %937 = sub i32 %918, %936
  br label %938

938:                                              ; preds = %926, %921
  %939 = phi i32 [ %937, %926 ], [ %923, %921 ]
  %940 = phi i32 [ %935, %926 ], [ %922, %921 ]
  %941 = phi i1 [ %931, %926 ], [ true, %921 ]
  %942 = zext i32 %940 to i64
  %943 = sub nsw i64 0, %942
  %944 = getelementptr inbounds i8, ptr %917, i64 %943
  %945 = load i64, ptr %944, align 1, !tbaa !26
  %946 = icmp ult ptr %916, %911
  %947 = and i1 %946, %941
  br i1 %947, label %948, label %.loopexit92

948:                                              ; preds = %938
  %949 = and i32 %939, 63
  %950 = zext nneg i32 %949 to i64
  %951 = shl i64 %945, %950
  %952 = lshr i64 %951, %914
  %953 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %952
  %954 = getelementptr inbounds nuw i8, ptr %953, i64 1
  %955 = load i8, ptr %954, align 1, !tbaa !97
  %956 = load i8, ptr %953, align 1, !tbaa !99
  %957 = zext i8 %956 to i32
  %958 = add i32 %939, %957
  store i8 %955, ptr %916, align 1, !tbaa !9
  %959 = getelementptr inbounds nuw i8, ptr %916, i64 1
  %960 = and i32 %958, 63
  %961 = zext nneg i32 %960 to i64
  %962 = shl i64 %945, %961
  %963 = lshr i64 %962, %914
  %964 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %963
  %965 = getelementptr inbounds nuw i8, ptr %964, i64 1
  %966 = load i8, ptr %965, align 1, !tbaa !97
  %967 = load i8, ptr %964, align 1, !tbaa !99
  %968 = zext i8 %967 to i32
  %969 = add i32 %958, %968
  store i8 %966, ptr %959, align 1, !tbaa !9
  %970 = getelementptr inbounds nuw i8, ptr %916, i64 2
  %971 = and i32 %969, 63
  %972 = zext nneg i32 %971 to i64
  %973 = shl i64 %945, %972
  %974 = lshr i64 %973, %914
  %975 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %974
  %976 = getelementptr inbounds nuw i8, ptr %975, i64 1
  %977 = load i8, ptr %976, align 1, !tbaa !97
  %978 = load i8, ptr %975, align 1, !tbaa !99
  %979 = zext i8 %978 to i32
  %980 = add i32 %969, %979
  store i8 %977, ptr %970, align 1, !tbaa !9
  %981 = getelementptr inbounds nuw i8, ptr %916, i64 3
  %982 = and i32 %980, 63
  %983 = zext nneg i32 %982 to i64
  %984 = shl i64 %945, %983
  %985 = lshr i64 %984, %914
  %986 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %985
  %987 = getelementptr inbounds nuw i8, ptr %986, i64 1
  %988 = load i8, ptr %987, align 1, !tbaa !97
  %989 = load i8, ptr %986, align 1, !tbaa !99
  %990 = zext i8 %989 to i32
  %991 = add i32 %980, %990
  %992 = getelementptr inbounds nuw i8, ptr %916, i64 4
  store i8 %988, ptr %981, align 1, !tbaa !9
  %993 = icmp ugt i32 %991, 64
  br i1 %993, label %.loopexit92, label %915, !prof !88, !llvm.loop !100

994:                                              ; preds = %.loopexit97
  br i1 %907, label %.loopexit92, label %995, !prof !109

995:                                              ; preds = %994
  %996 = icmp ult ptr %543, %200
  br i1 %996, label %1004, label %997

997:                                              ; preds = %995
  %998 = lshr i32 %541, 3
  %999 = zext nneg i32 %998 to i64
  %1000 = sub nsw i64 0, %999
  %1001 = getelementptr inbounds i8, ptr %543, i64 %1000
  %1002 = and i32 %541, 7
  %1003 = load i64, ptr %1001, align 1, !tbaa !26
  br label %.loopexit92

1004:                                             ; preds = %995
  %1005 = icmp eq ptr %543, %36
  br i1 %1005, label %.loopexit92, label %1006

1006:                                             ; preds = %1004
  %1007 = lshr i32 %541, 3
  %1008 = zext nneg i32 %1007 to i64
  %1009 = sub nsw i64 0, %1008
  %1010 = getelementptr inbounds i8, ptr %543, i64 %1009
  %1011 = icmp ult ptr %1010, %36
  %1012 = ptrtoint ptr %543 to i64
  %1013 = ptrtoint ptr %36 to i64
  %1014 = sub i64 %1012, %1013
  %1015 = trunc i64 %1014 to i32
  %1016 = select i1 %1011, i32 %1015, i32 %1007
  %1017 = zext i32 %1016 to i64
  %1018 = sub nsw i64 0, %1017
  %1019 = getelementptr inbounds i8, ptr %543, i64 %1018
  %1020 = shl i32 %1016, 3
  %1021 = sub i32 %541, %1020
  %1022 = load i64, ptr %1019, align 1, !tbaa !26
  br label %.loopexit92

.loopexit92:                                      ; preds = %948, %938, %924, %1006, %1004, %997, %994, %908
  %1023 = phi i64 [ %1022, %1006 ], [ %1003, %997 ], [ %540, %994 ], [ %540, %1004 ], [ %540, %908 ], [ %945, %938 ], [ %945, %948 ], [ %919, %924 ]
  %1024 = phi i32 [ %1021, %1006 ], [ %1002, %997 ], [ %541, %994 ], [ %541, %1004 ], [ %541, %908 ], [ %939, %938 ], [ %991, %948 ], [ %918, %924 ]
  %1025 = phi ptr [ %1019, %1006 ], [ %1001, %997 ], [ @BIT_reloadDStream.zeroFilled, %994 ], [ %36, %1004 ], [ @BIT_reloadDStream.zeroFilled, %908 ], [ %944, %938 ], [ @BIT_reloadDStream.zeroFilled, %948 ], [ %36, %924 ]
  %1026 = phi ptr [ %545, %1006 ], [ %545, %997 ], [ %545, %994 ], [ %545, %1004 ], [ %545, %908 ], [ %916, %938 ], [ %992, %948 ], [ %916, %924 ]
  %1027 = icmp ult ptr %1026, %42
  br i1 %1027, label %1028, label %.loopexit91

1028:                                             ; preds = %.loopexit92
  %1029 = sub nsw i32 0, %44
  %1030 = and i32 %1029, 63
  %1031 = zext nneg i32 %1030 to i64
  br label %1032

1032:                                             ; preds = %1032, %1028
  %1033 = phi ptr [ %1026, %1028 ], [ %1045, %1032 ]
  %1034 = phi i32 [ %1024, %1028 ], [ %1044, %1032 ]
  %1035 = and i32 %1034, 63
  %1036 = zext nneg i32 %1035 to i64
  %1037 = shl i64 %1023, %1036
  %1038 = lshr i64 %1037, %1031
  %1039 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %1038
  %1040 = getelementptr inbounds nuw i8, ptr %1039, i64 1
  %1041 = load i8, ptr %1040, align 1, !tbaa !97
  %1042 = load i8, ptr %1039, align 1, !tbaa !99
  %1043 = zext i8 %1042 to i32
  %1044 = add i32 %1034, %1043
  %1045 = getelementptr inbounds nuw i8, ptr %1033, i64 1
  store i8 %1041, ptr %1033, align 1, !tbaa !9
  %1046 = icmp ult ptr %1045, %42
  br i1 %1046, label %1032, label %.loopexit91, !llvm.loop !101

.loopexit91:                                      ; preds = %1032, %.loopexit92
  %1047 = phi i32 [ %1024, %.loopexit92 ], [ %1044, %1032 ]
  %1048 = ptrtoint ptr %19 to i64
  %1049 = ptrtoint ptr %544 to i64
  %1050 = sub i64 %1048, %1049
  %1051 = icmp sgt i64 %1050, 3
  %1052 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %1053 = load i32, ptr %1052, align 8, !tbaa !107
  %1054 = icmp ugt i32 %1053, 64
  br i1 %1051, label %1055, label %1156

1055:                                             ; preds = %.loopexit91
  br i1 %1054, label %.loopexit90, label %1056, !prof !91

1056:                                             ; preds = %1055
  %1057 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %1058 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %1059 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %1060 = sub nsw i32 0, %44
  %1061 = and i32 %1060, 63
  %1062 = zext nneg i32 %1061 to i64
  br label %1066

.loopexit90:                                      ; preds = %1104, %1055
  %1063 = phi i32 [ %1053, %1055 ], [ %1154, %1104 ]
  %1064 = phi ptr [ %544, %1055 ], [ %1153, %1104 ]
  %1065 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1065, align 8, !tbaa !108
  br label %.loopexit88

1066:                                             ; preds = %1104, %1056
  %1067 = phi i32 [ %1053, %1056 ], [ %1154, %1104 ]
  %1068 = phi ptr [ %544, %1056 ], [ %1153, %1104 ]
  %1069 = load ptr, ptr %1057, align 8, !tbaa !108
  %1070 = load ptr, ptr %1058, align 8, !tbaa !103
  %1071 = icmp ult ptr %1069, %1070
  br i1 %1071, label %1078, label %1072

1072:                                             ; preds = %1066
  %1073 = lshr i32 %1067, 3
  %1074 = zext nneg i32 %1073 to i64
  %1075 = sub nsw i64 0, %1074
  %1076 = getelementptr inbounds i8, ptr %1069, i64 %1075
  store ptr %1076, ptr %1057, align 8, !tbaa !108
  %1077 = and i32 %1067, 7
  br label %1097

1078:                                             ; preds = %1066
  %1079 = load ptr, ptr %1059, align 8, !tbaa !112
  %1080 = icmp eq ptr %1069, %1079
  br i1 %1080, label %.loopexit88, label %1081

1081:                                             ; preds = %1078
  %1082 = lshr i32 %1067, 3
  %1083 = zext nneg i32 %1082 to i64
  %1084 = sub nsw i64 0, %1083
  %1085 = getelementptr inbounds i8, ptr %1069, i64 %1084
  %1086 = icmp uge ptr %1085, %1079
  %1087 = ptrtoint ptr %1069 to i64
  %1088 = ptrtoint ptr %1079 to i64
  %1089 = sub i64 %1087, %1088
  %1090 = trunc i64 %1089 to i32
  %1091 = select i1 %1086, i32 %1082, i32 %1090
  %1092 = zext i32 %1091 to i64
  %1093 = sub nsw i64 0, %1092
  %1094 = getelementptr inbounds i8, ptr %1069, i64 %1093
  store ptr %1094, ptr %1057, align 8, !tbaa !108
  %1095 = shl i32 %1091, 3
  %1096 = sub i32 %1067, %1095
  br label %1097

1097:                                             ; preds = %1081, %1072
  %1098 = phi i32 [ %1077, %1072 ], [ %1096, %1081 ]
  %1099 = phi ptr [ %1076, %1072 ], [ %1094, %1081 ]
  %1100 = phi i1 [ true, %1072 ], [ %1086, %1081 ]
  store i32 %1098, ptr %1052, align 8, !tbaa !107
  %1101 = load i64, ptr %1099, align 1, !tbaa !26
  store i64 %1101, ptr %8, align 8, !tbaa !110
  %1102 = icmp ult ptr %1068, %20
  %1103 = and i1 %1102, %1100
  br i1 %1103, label %1104, label %.loopexit88

1104:                                             ; preds = %1097
  %1105 = and i32 %1098, 63
  %1106 = zext nneg i32 %1105 to i64
  %1107 = shl i64 %1101, %1106
  %1108 = lshr i64 %1107, %1062
  %1109 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %1108
  %1110 = getelementptr inbounds nuw i8, ptr %1109, i64 1
  %1111 = load i8, ptr %1110, align 1, !tbaa !97
  %1112 = load i8, ptr %1109, align 1, !tbaa !99
  %1113 = zext i8 %1112 to i32
  %1114 = add i32 %1098, %1113
  store i8 %1111, ptr %1068, align 1, !tbaa !9
  %1115 = getelementptr inbounds nuw i8, ptr %1068, i64 1
  %1116 = load i64, ptr %8, align 8, !tbaa !110
  %1117 = and i32 %1114, 63
  %1118 = zext nneg i32 %1117 to i64
  %1119 = shl i64 %1116, %1118
  %1120 = lshr i64 %1119, %1062
  %1121 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %1120
  %1122 = getelementptr inbounds nuw i8, ptr %1121, i64 1
  %1123 = load i8, ptr %1122, align 1, !tbaa !97
  %1124 = load i8, ptr %1121, align 1, !tbaa !99
  %1125 = zext i8 %1124 to i32
  %1126 = add i32 %1114, %1125
  store i32 %1126, ptr %1052, align 8, !tbaa !107
  store i8 %1123, ptr %1115, align 1, !tbaa !9
  %1127 = getelementptr inbounds nuw i8, ptr %1068, i64 2
  %1128 = load i64, ptr %8, align 8, !tbaa !110
  %1129 = load i32, ptr %1052, align 8, !tbaa !107
  %1130 = and i32 %1129, 63
  %1131 = zext nneg i32 %1130 to i64
  %1132 = shl i64 %1128, %1131
  %1133 = lshr i64 %1132, %1062
  %1134 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %1133
  %1135 = getelementptr inbounds nuw i8, ptr %1134, i64 1
  %1136 = load i8, ptr %1135, align 1, !tbaa !97
  %1137 = load i8, ptr %1134, align 1, !tbaa !99
  %1138 = zext i8 %1137 to i32
  %1139 = add i32 %1129, %1138
  store i32 %1139, ptr %1052, align 8, !tbaa !107
  store i8 %1136, ptr %1127, align 1, !tbaa !9
  %1140 = getelementptr inbounds nuw i8, ptr %1068, i64 3
  %1141 = load i64, ptr %8, align 8, !tbaa !110
  %1142 = load i32, ptr %1052, align 8, !tbaa !107
  %1143 = and i32 %1142, 63
  %1144 = zext nneg i32 %1143 to i64
  %1145 = shl i64 %1141, %1144
  %1146 = lshr i64 %1145, %1062
  %1147 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %1146
  %1148 = getelementptr inbounds nuw i8, ptr %1147, i64 1
  %1149 = load i8, ptr %1148, align 1, !tbaa !97
  %1150 = load i8, ptr %1147, align 1, !tbaa !99
  %1151 = zext i8 %1150 to i32
  %1152 = add i32 %1142, %1151
  store i32 %1152, ptr %1052, align 8, !tbaa !107
  %1153 = getelementptr inbounds nuw i8, ptr %1068, i64 4
  store i8 %1149, ptr %1140, align 1, !tbaa !9
  %1154 = load i32, ptr %1052, align 8, !tbaa !107
  %1155 = icmp ugt i32 %1154, 64
  br i1 %1155, label %.loopexit90, label %1066, !prof !88, !llvm.loop !100

1156:                                             ; preds = %.loopexit91
  %1157 = getelementptr inbounds nuw i8, ptr %8, i64 16
  br i1 %1054, label %1158, label %1159, !prof !109

1158:                                             ; preds = %1156
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1157, align 8, !tbaa !108
  br label %.loopexit88

1159:                                             ; preds = %1156
  %1160 = load ptr, ptr %1157, align 8, !tbaa !108
  %1161 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %1162 = load ptr, ptr %1161, align 8, !tbaa !103
  %1163 = icmp ult ptr %1160, %1162
  br i1 %1163, label %1171, label %1164

1164:                                             ; preds = %1159
  %1165 = lshr i32 %1053, 3
  %1166 = zext nneg i32 %1165 to i64
  %1167 = sub nsw i64 0, %1166
  %1168 = getelementptr inbounds i8, ptr %1160, i64 %1167
  store ptr %1168, ptr %1157, align 8, !tbaa !108
  %1169 = and i32 %1053, 7
  store i32 %1169, ptr %1052, align 8, !tbaa !107
  %1170 = load i64, ptr %1168, align 1, !tbaa !26
  store i64 %1170, ptr %8, align 8, !tbaa !110
  br label %.loopexit88

1171:                                             ; preds = %1159
  %1172 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %1173 = load ptr, ptr %1172, align 8, !tbaa !112
  %1174 = icmp eq ptr %1160, %1173
  br i1 %1174, label %.loopexit88, label %1175

1175:                                             ; preds = %1171
  %1176 = lshr i32 %1053, 3
  %1177 = zext nneg i32 %1176 to i64
  %1178 = sub nsw i64 0, %1177
  %1179 = getelementptr inbounds i8, ptr %1160, i64 %1178
  %1180 = icmp ult ptr %1179, %1173
  %1181 = ptrtoint ptr %1160 to i64
  %1182 = ptrtoint ptr %1173 to i64
  %1183 = sub i64 %1181, %1182
  %1184 = trunc i64 %1183 to i32
  %1185 = select i1 %1180, i32 %1184, i32 %1176
  %1186 = zext i32 %1185 to i64
  %1187 = sub nsw i64 0, %1186
  %1188 = getelementptr inbounds i8, ptr %1160, i64 %1187
  store ptr %1188, ptr %1157, align 8, !tbaa !108
  %1189 = shl i32 %1185, 3
  %1190 = sub i32 %1053, %1189
  store i32 %1190, ptr %1052, align 8, !tbaa !107
  %1191 = load i64, ptr %1188, align 1, !tbaa !26
  store i64 %1191, ptr %8, align 8, !tbaa !110
  br label %.loopexit88

.loopexit88:                                      ; preds = %1097, %1078, %1175, %1171, %1164, %1158, %.loopexit90
  %1192 = phi i32 [ %1190, %1175 ], [ %1169, %1164 ], [ %1053, %1158 ], [ %1063, %.loopexit90 ], [ %1053, %1171 ], [ %1067, %1078 ], [ %1098, %1097 ]
  %1193 = phi ptr [ %1188, %1175 ], [ %1168, %1164 ], [ @BIT_reloadDStream.zeroFilled, %1158 ], [ @BIT_reloadDStream.zeroFilled, %.loopexit90 ], [ %1160, %1171 ], [ %1069, %1078 ], [ %1099, %1097 ]
  %1194 = phi ptr [ %544, %1175 ], [ %544, %1164 ], [ %544, %1158 ], [ %1064, %.loopexit90 ], [ %544, %1171 ], [ %1068, %1078 ], [ %1068, %1097 ]
  %1195 = icmp ult ptr %1194, %19
  br i1 %1195, label %1196, label %1253

1196:                                             ; preds = %.loopexit88
  %1197 = ptrtoint ptr %1194 to i64
  %1198 = sub nsw i32 0, %44
  %1199 = and i32 %1198, 63
  %1200 = zext nneg i32 %1199 to i64
  %1201 = add i64 %1, %7
  %1202 = sub i64 %1201, %1197
  %1203 = add i64 %1197, 1
  %1204 = and i64 %1202, 1
  %1205 = icmp eq i64 %1204, 0
  br i1 %1205, label %1219, label %1206

1206:                                             ; preds = %1196
  %1207 = load i64, ptr %8, align 8, !tbaa !110
  %1208 = and i32 %1192, 63
  %1209 = zext nneg i32 %1208 to i64
  %1210 = shl i64 %1207, %1209
  %1211 = lshr i64 %1210, %1200
  %1212 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %1211
  %1213 = getelementptr inbounds nuw i8, ptr %1212, i64 1
  %1214 = load i8, ptr %1213, align 1, !tbaa !97
  %1215 = load i8, ptr %1212, align 1, !tbaa !99
  %1216 = zext i8 %1215 to i32
  %1217 = add i32 %1192, %1216
  store i32 %1217, ptr %1052, align 8, !tbaa !107
  %1218 = getelementptr inbounds nuw i8, ptr %1194, i64 1
  store i8 %1214, ptr %1194, align 1, !tbaa !9
  br label %1219

1219:                                             ; preds = %1206, %1196
  %1220 = phi ptr [ %1194, %1196 ], [ %1218, %1206 ]
  %1221 = icmp eq i64 %1201, %1203
  br i1 %1221, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %1219, %.preheader
  %1222 = phi ptr [ %1248, %.preheader ], [ %1220, %1219 ]
  %1223 = load i64, ptr %8, align 8, !tbaa !110
  %1224 = load i32, ptr %1052, align 8, !tbaa !107
  %1225 = and i32 %1224, 63
  %1226 = zext nneg i32 %1225 to i64
  %1227 = shl i64 %1223, %1226
  %1228 = lshr i64 %1227, %1200
  %1229 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %1228
  %1230 = getelementptr inbounds nuw i8, ptr %1229, i64 1
  %1231 = load i8, ptr %1230, align 1, !tbaa !97
  %1232 = load i8, ptr %1229, align 1, !tbaa !99
  %1233 = zext i8 %1232 to i32
  %1234 = add i32 %1224, %1233
  store i32 %1234, ptr %1052, align 8, !tbaa !107
  %1235 = getelementptr inbounds nuw i8, ptr %1222, i64 1
  store i8 %1231, ptr %1222, align 1, !tbaa !9
  %1236 = load i64, ptr %8, align 8, !tbaa !110
  %1237 = load i32, ptr %1052, align 8, !tbaa !107
  %1238 = and i32 %1237, 63
  %1239 = zext nneg i32 %1238 to i64
  %1240 = shl i64 %1236, %1239
  %1241 = lshr i64 %1240, %1200
  %1242 = getelementptr inbounds nuw [2 x i8], ptr %21, i64 %1241
  %1243 = getelementptr inbounds nuw i8, ptr %1242, i64 1
  %1244 = load i8, ptr %1243, align 1, !tbaa !97
  %1245 = load i8, ptr %1242, align 1, !tbaa !99
  %1246 = zext i8 %1245 to i32
  %1247 = add i32 %1237, %1246
  store i32 %1247, ptr %1052, align 8, !tbaa !107
  %1248 = getelementptr inbounds nuw i8, ptr %1222, i64 2
  store i8 %1244, ptr %1235, align 1, !tbaa !9
  %1249 = icmp ult ptr %1248, %19
  br i1 %1249, label %.preheader, label %.loopexit, !llvm.loop !101

.loopexit:                                        ; preds = %.preheader, %1219
  %1250 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %1251 = load ptr, ptr %1250, align 8, !tbaa !108
  %1252 = load i32, ptr %1052, align 8
  br label %1253

1253:                                             ; preds = %.loopexit, %.loopexit88
  %1254 = phi i32 [ %1252, %.loopexit ], [ %1192, %.loopexit88 ]
  %1255 = phi ptr [ %1251, %.loopexit ], [ %1193, %.loopexit88 ]
  %1256 = icmp ne ptr %674, %34
  %1257 = icmp ne i32 %731, 64
  %1258 = select i1 %1256, i1 true, i1 %1257
  %1259 = icmp ne ptr %854, %35
  %1260 = icmp ne i32 %902, 64
  %1261 = select i1 %1259, i1 true, i1 %1260
  %1262 = or i1 %1258, %1261
  %1263 = icmp ne ptr %1025, %36
  %1264 = icmp ne i32 %1047, 64
  %1265 = select i1 %1263, i1 true, i1 %1264
  %1266 = or i1 %1262, %1265
  %1267 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %1268 = load ptr, ptr %1267, align 8, !tbaa !112
  %1269 = icmp ne ptr %1255, %1268
  %1270 = icmp ne i32 %1254, 64
  %1271 = select i1 %1269, i1 true, i1 %1270
  %1272 = or i1 %1266, %1271
  %1273 = select i1 %1272, i64 -20, i64 %1
  br label %1274

1274:                                             ; preds = %1253, %534, %268, %257, %202, %194, %183, %128, %120, %109, %54, %49, %18
  %1275 = phi i64 [ %272, %268 ], [ -20, %18 ], [ -20, %534 ], [ %1273, %1253 ], [ -20, %109 ], [ -1, %54 ], [ -72, %49 ], [ -20, %183 ], [ -1, %128 ], [ -72, %120 ], [ -20, %257 ], [ -1, %202 ], [ -72, %194 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %1284

1276:                                             ; preds = %11
  %1277 = and i32 %5, 16
  %1278 = icmp eq i32 %1277, 0
  %1279 = select i1 %1278, ptr @HUF_decompress4X1_usingDTable_internal_fast_asm_loop, ptr @HUF_decompress4X1_usingDTable_internal_fast_c_loop
  %1280 = tail call fastcc i64 @HUF_decompress4X1_usingDTable_internal_fast(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %1279)
  %1281 = icmp eq i64 %1280, 0
  br i1 %1281, label %1282, label %1284

1282:                                             ; preds = %1276, %11
  %1283 = tail call fastcc i64 @HUF_decompress4X1_usingDTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  br label %1284

1284:                                             ; preds = %1282, %1276, %1274, %14
  %1285 = phi i64 [ %1283, %1282 ], [ %1280, %1276 ], [ %1275, %1274 ], [ -20, %14 ]
  ret i64 %1285
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 1, 0) i64 @HUF_decompress4X_hufOnly_wksp(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq i64 %2, 0
  br i1 %9, label %55, label %10

10:                                               ; preds = %8
  %11 = icmp eq i64 %4, 0
  br i1 %11, label %55, label %12

12:                                               ; preds = %10
  %13 = icmp ult i64 %4, %2
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = shl i64 %4, 4
  %16 = udiv i64 %15, %2
  %17 = and i64 %16, 4294967295
  br label %18

18:                                               ; preds = %14, %12
  %19 = phi i64 [ %17, %14 ], [ 15, %12 ]
  %20 = lshr i64 %2, 8
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds nuw [16 x i8], ptr @algoTime, i64 %19
  %23 = load i32, ptr %22, align 16, !tbaa !94
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 4
  %25 = load i32, ptr %24, align 4, !tbaa !96
  %26 = mul i32 %25, %21
  %27 = add i32 %26, %23
  %28 = getelementptr inbounds nuw i8, ptr %22, i64 8
  %29 = load i32, ptr %28, align 8, !tbaa !94
  %30 = getelementptr inbounds nuw i8, ptr %22, i64 12
  %31 = load i32, ptr %30, align 4, !tbaa !96
  %32 = mul i32 %31, %21
  %33 = add i32 %32, %29
  %34 = lshr i32 %33, 5
  %35 = add i32 %34, %33
  %36 = icmp ult i32 %35, %27
  br i1 %36, label %37, label %46

37:                                               ; preds = %18
  %38 = tail call i64 @HUF_readDTableX2_wksp(ptr noundef %0, ptr noundef %3, i64 noundef range(i64 1, 0) %4, ptr noundef %5, i64 noundef %6, i32 noundef %7)
  %39 = icmp ult i64 %38, -119
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = icmp ult i64 %38, %4
  br i1 %41, label %42, label %55

42:                                               ; preds = %40
  %43 = getelementptr inbounds nuw i8, ptr %3, i64 %38
  %44 = sub nuw i64 %4, %38
  %45 = tail call fastcc i64 @HUF_decompress4X2_usingDTable_internal(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %43, i64 noundef %44, ptr noundef %0, i32 noundef %7)
  br label %55

46:                                               ; preds = %18
  %47 = tail call i64 @HUF_readDTableX1_wksp(ptr noundef %0, ptr noundef %3, i64 noundef range(i64 1, 0) %4, ptr noundef %5, i64 noundef %6, i32 noundef %7)
  %48 = icmp ult i64 %47, -119
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = icmp ult i64 %47, %4
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  %52 = getelementptr inbounds nuw i8, ptr %3, i64 %47
  %53 = sub nuw i64 %4, %47
  %54 = tail call fastcc i64 @HUF_decompress4X1_usingDTable_internal(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %52, i64 noundef %53, ptr noundef %0, i32 noundef %7)
  br label %55

55:                                               ; preds = %51, %49, %46, %42, %40, %37, %10, %8
  %56 = phi i64 [ -70, %8 ], [ -20, %10 ], [ %45, %42 ], [ %38, %37 ], [ -72, %40 ], [ %54, %51 ], [ %47, %46 ], [ -72, %49 ]
  ret i64 %56
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @HUF_decompress1X2_usingDTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef readonly captures(none) %4) unnamed_addr #9 {
  %6 = icmp eq i64 %3, 0
  br i1 %6, label %455, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %9 = icmp ugt i64 %3, 7
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, ptr %2, i64 %3
  %12 = getelementptr i8, ptr %11, i64 -1
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %455, label %65

15:                                               ; preds = %7
  %16 = load i8, ptr %2, align 1, !tbaa !9
  %17 = zext i8 %16 to i64
  switch i64 %3, label %59 [
    i64 7, label %18
    i64 6, label %24
    i64 5, label %31
    i64 4, label %38
    i64 3, label %45
    i64 2, label %52
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %20 = load i8, ptr %19, align 1, !tbaa !9
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 48
  %23 = or disjoint i64 %22, %17
  br label %24

24:                                               ; preds = %18, %15
  %25 = phi i64 [ %17, %15 ], [ %23, %18 ]
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %27 = load i8, ptr %26, align 1, !tbaa !9
  %28 = zext i8 %27 to i64
  %29 = shl nuw nsw i64 %28, 40
  %30 = add nuw nsw i64 %29, %25
  br label %31

31:                                               ; preds = %24, %15
  %32 = phi i64 [ %17, %15 ], [ %30, %24 ]
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %34 = load i8, ptr %33, align 1, !tbaa !9
  %35 = zext i8 %34 to i64
  %36 = shl nuw nsw i64 %35, 32
  %37 = add nuw nsw i64 %36, %32
  br label %38

38:                                               ; preds = %31, %15
  %39 = phi i64 [ %17, %15 ], [ %37, %31 ]
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %41 = load i8, ptr %40, align 1, !tbaa !9
  %42 = zext i8 %41 to i64
  %43 = shl nuw nsw i64 %42, 24
  %44 = add nuw nsw i64 %43, %39
  br label %45

45:                                               ; preds = %38, %15
  %46 = phi i64 [ %17, %15 ], [ %44, %38 ]
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %48 = load i8, ptr %47, align 1, !tbaa !9
  %49 = zext i8 %48 to i64
  %50 = shl nuw nsw i64 %49, 16
  %51 = add nuw nsw i64 %50, %46
  br label %52

52:                                               ; preds = %45, %15
  %53 = phi i64 [ %17, %15 ], [ %51, %45 ]
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !9
  %56 = zext i8 %55 to i64
  %57 = shl nuw nsw i64 %56, 8
  %58 = add nuw nsw i64 %57, %53
  br label %59

59:                                               ; preds = %52, %15
  %60 = phi i64 [ %17, %15 ], [ %58, %52 ]
  %61 = getelementptr i8, ptr %2, i64 %3
  %62 = getelementptr i8, ptr %61, i64 -1
  %63 = load i8, ptr %62, align 1, !tbaa !9
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %455, label %82

65:                                               ; preds = %10
  %66 = add nsw i64 %3, -8
  %67 = getelementptr inbounds i8, ptr %2, i64 %66
  %68 = load i64, ptr %67, align 1, !tbaa !26
  %69 = zext i8 %13 to i32
  %70 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %69, i1 true)
  %71 = xor i32 %70, 31
  %72 = sub nuw nsw i32 8, %71
  %73 = icmp ult i64 %3, -119
  br i1 %73, label %74, label %455

74:                                               ; preds = %65
  %75 = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 %75
  %77 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %78 = load i32, ptr %4, align 4
  %79 = lshr i32 %78, 16
  %80 = ptrtoint ptr %76 to i64
  %81 = icmp sgt i64 %1, 7
  br i1 %81, label %96, label %305

82:                                               ; preds = %59
  %83 = zext i8 %63 to i32
  %84 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %83, i1 true)
  %85 = trunc nuw nsw i64 %3 to i32
  %86 = shl nuw nsw i32 %85, 3
  %87 = sub nsw i32 %84, %86
  %88 = add nsw i32 %87, 41
  %89 = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %92 = load i32, ptr %4, align 4
  %93 = lshr i32 %92, 16
  %94 = ptrtoint ptr %90 to i64
  %95 = icmp sgt i64 %1, 7
  br i1 %95, label %96, label %.loopexit29

96:                                               ; preds = %82, %74
  %97 = phi i64 [ %94, %82 ], [ %80, %74 ]
  %98 = phi i32 [ %93, %82 ], [ %79, %74 ]
  %99 = phi i32 [ %92, %82 ], [ %78, %74 ]
  %100 = phi ptr [ %91, %82 ], [ %77, %74 ]
  %101 = phi ptr [ %90, %82 ], [ %76, %74 ]
  %102 = phi i32 [ %88, %82 ], [ %72, %74 ]
  %103 = phi i64 [ %60, %82 ], [ %68, %74 ]
  %104 = phi i64 [ 0, %82 ], [ %66, %74 ]
  %105 = and i32 %99, 16515072
  %106 = icmp samesign ult i32 %105, 786432
  %107 = sub nsw i32 0, %98
  %108 = and i32 %107, 63
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds nuw i8, ptr %4, i64 4
  br i1 %106, label %113, label %111

111:                                              ; preds = %96
  %112 = getelementptr inbounds i8, ptr %101, i64 -7
  br label %217

113:                                              ; preds = %96
  %114 = getelementptr inbounds i8, ptr %101, i64 -9
  br label %115

115:                                              ; preds = %145, %113
  %116 = phi ptr [ %0, %113 ], [ %215, %145 ]
  %117 = phi i64 [ %104, %113 ], [ %140, %145 ]
  %118 = phi i64 [ %103, %113 ], [ %142, %145 ]
  %119 = phi i32 [ %102, %113 ], [ %211, %145 ]
  %120 = icmp slt i64 %117, 8
  br i1 %120, label %125, label %121

121:                                              ; preds = %115
  %122 = lshr i32 %119, 3
  %123 = zext nneg i32 %122 to i64
  %124 = and i32 %119, 7
  br label %136

125:                                              ; preds = %115
  %126 = icmp eq i64 %117, 0
  br i1 %126, label %.loopexit29, label %127

127:                                              ; preds = %125
  %128 = lshr i32 %119, 3
  %129 = zext nneg i32 %128 to i64
  %130 = icmp sge i64 %117, %129
  %131 = tail call i64 @llvm.smin.i64(i64 %117, i64 %129)
  %132 = trunc i64 %131 to i32
  %133 = and i64 %131, 4294967295
  %134 = shl i32 %132, 3
  %135 = sub i32 %119, %134
  br label %136

136:                                              ; preds = %127, %121
  %137 = phi i32 [ %135, %127 ], [ %124, %121 ]
  %138 = phi i64 [ %133, %127 ], [ %123, %121 ]
  %139 = phi i1 [ %130, %127 ], [ true, %121 ]
  %140 = sub nsw i64 %117, %138
  %141 = getelementptr inbounds i8, ptr %2, i64 %140
  %142 = load i64, ptr %141, align 1, !tbaa !26
  %143 = icmp ult ptr %116, %114
  %144 = and i1 %143, %139
  br i1 %144, label %145, label %.loopexit29.loopexit.split.loop.exit

145:                                              ; preds = %136
  %146 = and i32 %137, 63
  %147 = zext nneg i32 %146 to i64
  %148 = shl i64 %142, %147
  %149 = lshr i64 %148, %109
  %150 = getelementptr inbounds nuw [4 x i8], ptr %110, i64 %149
  %151 = load i16, ptr %150, align 2
  store i16 %151, ptr %116, align 1
  %152 = getelementptr inbounds nuw i8, ptr %150, i64 2
  %153 = load i8, ptr %152, align 2, !tbaa !84
  %154 = zext i8 %153 to i32
  %155 = add i32 %137, %154
  %156 = getelementptr inbounds nuw i8, ptr %150, i64 3
  %157 = load i8, ptr %156, align 1, !tbaa !87
  %158 = zext i8 %157 to i64
  %159 = getelementptr inbounds nuw i8, ptr %116, i64 %158
  %160 = and i32 %155, 63
  %161 = zext nneg i32 %160 to i64
  %162 = shl i64 %142, %161
  %163 = lshr i64 %162, %109
  %164 = getelementptr inbounds nuw [4 x i8], ptr %110, i64 %163
  %165 = load i16, ptr %164, align 2
  store i16 %165, ptr %159, align 1
  %166 = getelementptr inbounds nuw i8, ptr %164, i64 2
  %167 = load i8, ptr %166, align 2, !tbaa !84
  %168 = zext i8 %167 to i32
  %169 = add i32 %155, %168
  %170 = getelementptr inbounds nuw i8, ptr %164, i64 3
  %171 = load i8, ptr %170, align 1, !tbaa !87
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds nuw i8, ptr %159, i64 %172
  %174 = and i32 %169, 63
  %175 = zext nneg i32 %174 to i64
  %176 = shl i64 %142, %175
  %177 = lshr i64 %176, %109
  %178 = getelementptr inbounds nuw [4 x i8], ptr %110, i64 %177
  %179 = load i16, ptr %178, align 2
  store i16 %179, ptr %173, align 1
  %180 = getelementptr inbounds nuw i8, ptr %178, i64 2
  %181 = load i8, ptr %180, align 2, !tbaa !84
  %182 = zext i8 %181 to i32
  %183 = add i32 %169, %182
  %184 = getelementptr inbounds nuw i8, ptr %178, i64 3
  %185 = load i8, ptr %184, align 1, !tbaa !87
  %186 = zext i8 %185 to i64
  %187 = getelementptr inbounds nuw i8, ptr %173, i64 %186
  %188 = and i32 %183, 63
  %189 = zext nneg i32 %188 to i64
  %190 = shl i64 %142, %189
  %191 = lshr i64 %190, %109
  %192 = getelementptr inbounds nuw [4 x i8], ptr %110, i64 %191
  %193 = load i16, ptr %192, align 2
  store i16 %193, ptr %187, align 1
  %194 = getelementptr inbounds nuw i8, ptr %192, i64 2
  %195 = load i8, ptr %194, align 2, !tbaa !84
  %196 = zext i8 %195 to i32
  %197 = add i32 %183, %196
  %198 = getelementptr inbounds nuw i8, ptr %192, i64 3
  %199 = load i8, ptr %198, align 1, !tbaa !87
  %200 = zext i8 %199 to i64
  %201 = getelementptr inbounds nuw i8, ptr %187, i64 %200
  %202 = and i32 %197, 63
  %203 = zext nneg i32 %202 to i64
  %204 = shl i64 %142, %203
  %205 = lshr i64 %204, %109
  %206 = getelementptr inbounds nuw [4 x i8], ptr %110, i64 %205
  %207 = load i16, ptr %206, align 2
  store i16 %207, ptr %201, align 1
  %208 = getelementptr inbounds nuw i8, ptr %206, i64 2
  %209 = load i8, ptr %208, align 2, !tbaa !84
  %210 = zext i8 %209 to i32
  %211 = add i32 %197, %210
  %212 = getelementptr inbounds nuw i8, ptr %206, i64 3
  %213 = load i8, ptr %212, align 1, !tbaa !87
  %214 = zext i8 %213 to i64
  %215 = getelementptr inbounds nuw i8, ptr %201, i64 %214
  %216 = icmp ugt i32 %211, 64
  br i1 %216, label %.loopexit29, label %115, !prof !88, !llvm.loop !89

217:                                              ; preds = %247, %111
  %218 = phi ptr [ %0, %111 ], [ %303, %247 ]
  %219 = phi i64 [ %104, %111 ], [ %242, %247 ]
  %220 = phi i64 [ %103, %111 ], [ %244, %247 ]
  %221 = phi i32 [ %102, %111 ], [ %299, %247 ]
  %222 = icmp slt i64 %219, 8
  br i1 %222, label %227, label %223

223:                                              ; preds = %217
  %224 = lshr i32 %221, 3
  %225 = zext nneg i32 %224 to i64
  %226 = and i32 %221, 7
  br label %238

227:                                              ; preds = %217
  %228 = icmp eq i64 %219, 0
  br i1 %228, label %.loopexit29, label %229

229:                                              ; preds = %227
  %230 = lshr i32 %221, 3
  %231 = zext nneg i32 %230 to i64
  %232 = icmp sge i64 %219, %231
  %233 = tail call i64 @llvm.smin.i64(i64 %219, i64 %231)
  %234 = trunc i64 %233 to i32
  %235 = and i64 %233, 4294967295
  %236 = shl i32 %234, 3
  %237 = sub i32 %221, %236
  br label %238

238:                                              ; preds = %229, %223
  %239 = phi i32 [ %237, %229 ], [ %226, %223 ]
  %240 = phi i64 [ %235, %229 ], [ %225, %223 ]
  %241 = phi i1 [ %232, %229 ], [ true, %223 ]
  %242 = sub nsw i64 %219, %240
  %243 = getelementptr inbounds i8, ptr %2, i64 %242
  %244 = load i64, ptr %243, align 1, !tbaa !26
  %245 = icmp ult ptr %218, %112
  %246 = and i1 %245, %241
  br i1 %246, label %247, label %.loopexit29.loopexit117.split.loop.exit

247:                                              ; preds = %238
  %248 = and i32 %239, 63
  %249 = zext nneg i32 %248 to i64
  %250 = shl i64 %244, %249
  %251 = lshr i64 %250, %109
  %252 = getelementptr inbounds nuw [4 x i8], ptr %110, i64 %251
  %253 = load i16, ptr %252, align 2
  store i16 %253, ptr %218, align 1
  %254 = getelementptr inbounds nuw i8, ptr %252, i64 2
  %255 = load i8, ptr %254, align 2, !tbaa !84
  %256 = zext i8 %255 to i32
  %257 = add i32 %239, %256
  %258 = getelementptr inbounds nuw i8, ptr %252, i64 3
  %259 = load i8, ptr %258, align 1, !tbaa !87
  %260 = zext i8 %259 to i64
  %261 = getelementptr inbounds nuw i8, ptr %218, i64 %260
  %262 = and i32 %257, 63
  %263 = zext nneg i32 %262 to i64
  %264 = shl i64 %244, %263
  %265 = lshr i64 %264, %109
  %266 = getelementptr inbounds nuw [4 x i8], ptr %110, i64 %265
  %267 = load i16, ptr %266, align 2
  store i16 %267, ptr %261, align 1
  %268 = getelementptr inbounds nuw i8, ptr %266, i64 2
  %269 = load i8, ptr %268, align 2, !tbaa !84
  %270 = zext i8 %269 to i32
  %271 = add i32 %257, %270
  %272 = getelementptr inbounds nuw i8, ptr %266, i64 3
  %273 = load i8, ptr %272, align 1, !tbaa !87
  %274 = zext i8 %273 to i64
  %275 = getelementptr inbounds nuw i8, ptr %261, i64 %274
  %276 = and i32 %271, 63
  %277 = zext nneg i32 %276 to i64
  %278 = shl i64 %244, %277
  %279 = lshr i64 %278, %109
  %280 = getelementptr inbounds nuw [4 x i8], ptr %110, i64 %279
  %281 = load i16, ptr %280, align 2
  store i16 %281, ptr %275, align 1
  %282 = getelementptr inbounds nuw i8, ptr %280, i64 2
  %283 = load i8, ptr %282, align 2, !tbaa !84
  %284 = zext i8 %283 to i32
  %285 = add i32 %271, %284
  %286 = getelementptr inbounds nuw i8, ptr %280, i64 3
  %287 = load i8, ptr %286, align 1, !tbaa !87
  %288 = zext i8 %287 to i64
  %289 = getelementptr inbounds nuw i8, ptr %275, i64 %288
  %290 = and i32 %285, 63
  %291 = zext nneg i32 %290 to i64
  %292 = shl i64 %244, %291
  %293 = lshr i64 %292, %109
  %294 = getelementptr inbounds nuw [4 x i8], ptr %110, i64 %293
  %295 = load i16, ptr %294, align 2
  store i16 %295, ptr %289, align 1
  %296 = getelementptr inbounds nuw i8, ptr %294, i64 2
  %297 = load i8, ptr %296, align 2, !tbaa !84
  %298 = zext i8 %297 to i32
  %299 = add i32 %285, %298
  %300 = getelementptr inbounds nuw i8, ptr %294, i64 3
  %301 = load i8, ptr %300, align 1, !tbaa !87
  %302 = zext i8 %301 to i64
  %303 = getelementptr inbounds nuw i8, ptr %289, i64 %302
  %304 = icmp ugt i32 %299, 64
  br i1 %304, label %.loopexit29, label %217, !prof !88, !llvm.loop !90

305:                                              ; preds = %74
  %306 = icmp slt i64 %3, 16
  br i1 %306, label %314, label %307

307:                                              ; preds = %305
  %308 = lshr i32 %72, 3
  %309 = zext nneg i32 %308 to i64
  %310 = sub nsw i64 0, %309
  %311 = getelementptr inbounds i8, ptr %67, i64 %310
  %312 = and i32 %72, 7
  %313 = load i64, ptr %311, align 1, !tbaa !26
  br label %.loopexit29

314:                                              ; preds = %305
  %315 = icmp eq i64 %66, 0
  br i1 %315, label %.loopexit29, label %316

316:                                              ; preds = %314
  %317 = lshr i32 %72, 3
  %318 = zext nneg i32 %317 to i64
  %319 = tail call i64 @llvm.smin.i64(i64 %66, i64 %318)
  %320 = trunc i64 %319 to i32
  %321 = and i64 %319, 4294967295
  %322 = sub nsw i64 0, %321
  %323 = getelementptr inbounds i8, ptr %67, i64 %322
  %324 = shl i32 %320, 3
  %325 = sub i32 %72, %324
  %326 = load i64, ptr %323, align 1, !tbaa !26
  br label %.loopexit29

.loopexit29.loopexit.split.loop.exit:             ; preds = %136
  %327 = getelementptr inbounds i8, ptr %2, i64 %140
  br label %.loopexit29

.loopexit29.loopexit117.split.loop.exit:          ; preds = %238
  %328 = getelementptr inbounds i8, ptr %2, i64 %242
  br label %.loopexit29

.loopexit29:                                      ; preds = %247, %227, %145, %125, %.loopexit29.loopexit117.split.loop.exit, %.loopexit29.loopexit.split.loop.exit, %316, %314, %307, %82
  %329 = phi i64 [ %80, %316 ], [ %80, %307 ], [ %80, %314 ], [ %94, %82 ], [ %97, %.loopexit29.loopexit.split.loop.exit ], [ %97, %145 ], [ %97, %.loopexit29.loopexit117.split.loop.exit ], [ %97, %125 ], [ %97, %227 ], [ %97, %247 ]
  %330 = phi i32 [ %79, %316 ], [ %79, %307 ], [ %79, %314 ], [ %93, %82 ], [ %98, %.loopexit29.loopexit.split.loop.exit ], [ %98, %145 ], [ %98, %.loopexit29.loopexit117.split.loop.exit ], [ %98, %125 ], [ %98, %227 ], [ %98, %247 ]
  %331 = phi ptr [ %77, %316 ], [ %77, %307 ], [ %77, %314 ], [ %91, %82 ], [ %100, %.loopexit29.loopexit.split.loop.exit ], [ %100, %145 ], [ %100, %.loopexit29.loopexit117.split.loop.exit ], [ %100, %125 ], [ %100, %227 ], [ %100, %247 ]
  %332 = phi ptr [ %76, %316 ], [ %76, %307 ], [ %76, %314 ], [ %90, %82 ], [ %101, %.loopexit29.loopexit.split.loop.exit ], [ %101, %145 ], [ %101, %.loopexit29.loopexit117.split.loop.exit ], [ %101, %125 ], [ %101, %227 ], [ %101, %247 ]
  %333 = phi i32 [ %325, %316 ], [ %312, %307 ], [ %72, %314 ], [ %88, %82 ], [ %137, %.loopexit29.loopexit.split.loop.exit ], [ %211, %145 ], [ %239, %.loopexit29.loopexit117.split.loop.exit ], [ %119, %125 ], [ %299, %247 ], [ %221, %227 ]
  %334 = phi i64 [ %326, %316 ], [ %313, %307 ], [ %68, %314 ], [ %60, %82 ], [ %142, %.loopexit29.loopexit.split.loop.exit ], [ %142, %145 ], [ %244, %.loopexit29.loopexit117.split.loop.exit ], [ %118, %125 ], [ %244, %247 ], [ %220, %227 ]
  %335 = phi ptr [ %323, %316 ], [ %311, %307 ], [ %67, %314 ], [ %2, %82 ], [ %327, %.loopexit29.loopexit.split.loop.exit ], [ @BIT_reloadDStream.zeroFilled, %145 ], [ %328, %.loopexit29.loopexit117.split.loop.exit ], [ %2, %125 ], [ @BIT_reloadDStream.zeroFilled, %247 ], [ %2, %227 ]
  %336 = phi ptr [ %0, %316 ], [ %0, %307 ], [ %0, %314 ], [ %0, %82 ], [ %116, %.loopexit29.loopexit.split.loop.exit ], [ %215, %145 ], [ %218, %.loopexit29.loopexit117.split.loop.exit ], [ %116, %125 ], [ %303, %247 ], [ %218, %227 ]
  %337 = ptrtoint ptr %336 to i64
  %338 = sub i64 %329, %337
  %339 = icmp ugt i64 %338, 1
  br i1 %339, label %340, label %.loopexit

340:                                              ; preds = %.loopexit29
  %341 = getelementptr inbounds i8, ptr %332, i64 -2
  %342 = ptrtoint ptr %2 to i64
  %343 = sub nsw i32 0, %330
  %344 = and i32 %343, 63
  %345 = zext nneg i32 %344 to i64
  %346 = icmp ugt i32 %333, 64
  br i1 %346, label %.loopexit25, label %.preheader24, !prof !91

.preheader24:                                     ; preds = %340, %384
  %347 = phi ptr [ %398, %384 ], [ %336, %340 ]
  %348 = phi ptr [ %375, %384 ], [ %335, %340 ]
  %349 = phi i64 [ %376, %384 ], [ %334, %340 ]
  %350 = phi i32 [ %394, %384 ], [ %333, %340 ]
  %351 = icmp ult ptr %348, %8
  br i1 %351, label %355, label %352

352:                                              ; preds = %.preheader24
  %353 = lshr i32 %350, 3
  %354 = and i32 %350, 7
  br label %369

355:                                              ; preds = %.preheader24
  %356 = icmp eq ptr %348, %2
  br i1 %356, label %.loopexit25, label %357

357:                                              ; preds = %355
  %358 = lshr i32 %350, 3
  %359 = zext nneg i32 %358 to i64
  %360 = sub nsw i64 0, %359
  %361 = getelementptr inbounds i8, ptr %348, i64 %360
  %362 = icmp uge ptr %361, %2
  %363 = ptrtoint ptr %348 to i64
  %364 = sub i64 %363, %342
  %365 = trunc i64 %364 to i32
  %366 = select i1 %362, i32 %358, i32 %365
  %367 = shl i32 %366, 3
  %368 = sub i32 %350, %367
  br label %369

369:                                              ; preds = %357, %352
  %370 = phi i32 [ %368, %357 ], [ %354, %352 ]
  %371 = phi i32 [ %366, %357 ], [ %353, %352 ]
  %372 = phi i1 [ %362, %357 ], [ true, %352 ]
  %373 = zext i32 %371 to i64
  %374 = sub nsw i64 0, %373
  %375 = getelementptr inbounds i8, ptr %348, i64 %374
  %376 = load i64, ptr %375, align 1, !tbaa !26
  %377 = icmp ule ptr %347, %341
  %378 = and i1 %377, %372
  br i1 %378, label %384, label %.loopexit25

.loopexit25:                                      ; preds = %384, %369, %355, %340
  %379 = phi ptr [ %336, %340 ], [ %347, %355 ], [ %398, %384 ], [ %347, %369 ]
  %380 = phi ptr [ @BIT_reloadDStream.zeroFilled, %340 ], [ %2, %355 ], [ @BIT_reloadDStream.zeroFilled, %384 ], [ %375, %369 ]
  %381 = phi i64 [ %334, %340 ], [ %349, %355 ], [ %376, %384 ], [ %376, %369 ]
  %382 = phi i32 [ %333, %340 ], [ %350, %355 ], [ %394, %384 ], [ %370, %369 ]
  %383 = icmp ugt ptr %379, %341
  br i1 %383, label %.loopexit, label %.preheader

384:                                              ; preds = %369
  %385 = and i32 %370, 63
  %386 = zext nneg i32 %385 to i64
  %387 = shl i64 %376, %386
  %388 = lshr i64 %387, %345
  %389 = getelementptr inbounds nuw [4 x i8], ptr %331, i64 %388
  %390 = load i16, ptr %389, align 2
  store i16 %390, ptr %347, align 1
  %391 = getelementptr inbounds nuw i8, ptr %389, i64 2
  %392 = load i8, ptr %391, align 2, !tbaa !84
  %393 = zext i8 %392 to i32
  %394 = add i32 %370, %393
  %395 = getelementptr inbounds nuw i8, ptr %389, i64 3
  %396 = load i8, ptr %395, align 1, !tbaa !87
  %397 = zext i8 %396 to i64
  %398 = getelementptr inbounds nuw i8, ptr %347, i64 %397
  %399 = icmp ugt i32 %394, 64
  br i1 %399, label %.loopexit25, label %.preheader24, !prof !88, !llvm.loop !92

.preheader:                                       ; preds = %.loopexit25, %.preheader
  %400 = phi ptr [ %415, %.preheader ], [ %379, %.loopexit25 ]
  %401 = phi i32 [ %411, %.preheader ], [ %382, %.loopexit25 ]
  %402 = and i32 %401, 63
  %403 = zext nneg i32 %402 to i64
  %404 = shl i64 %381, %403
  %405 = lshr i64 %404, %345
  %406 = getelementptr inbounds nuw [4 x i8], ptr %331, i64 %405
  %407 = load i16, ptr %406, align 2
  store i16 %407, ptr %400, align 1
  %408 = getelementptr inbounds nuw i8, ptr %406, i64 2
  %409 = load i8, ptr %408, align 2, !tbaa !84
  %410 = zext i8 %409 to i32
  %411 = add i32 %401, %410
  %412 = getelementptr inbounds nuw i8, ptr %406, i64 3
  %413 = load i8, ptr %412, align 1, !tbaa !87
  %414 = zext i8 %413 to i64
  %415 = getelementptr inbounds nuw i8, ptr %400, i64 %414
  %416 = icmp ugt ptr %415, %341
  br i1 %416, label %.loopexit, label %.preheader, !llvm.loop !93

.loopexit:                                        ; preds = %.preheader, %.loopexit25, %.loopexit29
  %417 = phi i32 [ %333, %.loopexit29 ], [ %382, %.loopexit25 ], [ %411, %.preheader ]
  %418 = phi i64 [ %334, %.loopexit29 ], [ %381, %.loopexit25 ], [ %381, %.preheader ]
  %419 = phi ptr [ %335, %.loopexit29 ], [ %380, %.loopexit25 ], [ %380, %.preheader ]
  %420 = phi ptr [ %336, %.loopexit29 ], [ %379, %.loopexit25 ], [ %415, %.preheader ]
  %421 = icmp ult ptr %420, %332
  br i1 %421, label %422, label %448

422:                                              ; preds = %.loopexit
  %423 = and i32 %417, 63
  %424 = zext nneg i32 %423 to i64
  %425 = shl i64 %418, %424
  %426 = sub nsw i32 0, %330
  %427 = and i32 %426, 63
  %428 = zext nneg i32 %427 to i64
  %429 = lshr i64 %425, %428
  %430 = getelementptr inbounds nuw [4 x i8], ptr %331, i64 %429
  %431 = load i8, ptr %430, align 2
  store i8 %431, ptr %420, align 1
  %432 = getelementptr inbounds nuw i8, ptr %430, i64 3
  %433 = load i8, ptr %432, align 1, !tbaa !87
  %434 = icmp eq i8 %433, 1
  br i1 %434, label %435, label %440

435:                                              ; preds = %422
  %436 = getelementptr inbounds nuw i8, ptr %430, i64 2
  %437 = load i8, ptr %436, align 2, !tbaa !84
  %438 = zext i8 %437 to i32
  %439 = add i32 %417, %438
  br label %448

440:                                              ; preds = %422
  %441 = icmp ult i32 %417, 64
  br i1 %441, label %442, label %448

442:                                              ; preds = %440
  %443 = getelementptr inbounds nuw i8, ptr %430, i64 2
  %444 = load i8, ptr %443, align 2, !tbaa !84
  %445 = zext i8 %444 to i32
  %446 = add nuw nsw i32 %417, %445
  %447 = tail call i32 @llvm.umin.i32(i32 %446, i32 64)
  br label %448

448:                                              ; preds = %442, %440, %435, %.loopexit
  %449 = phi i32 [ %417, %.loopexit ], [ %439, %435 ], [ %417, %440 ], [ %447, %442 ]
  %450 = icmp eq ptr %419, %2
  %451 = freeze i32 %449
  %452 = icmp eq i32 %451, 64
  %453 = and i1 %450, %452
  %454 = select i1 %453, i64 %1, i64 -20
  br label %455

455:                                              ; preds = %448, %65, %59, %10, %5
  %456 = phi i64 [ %3, %65 ], [ -20, %59 ], [ -1, %10 ], [ -72, %5 ], [ %454, %448 ]
  ret i64 %456
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i64 1, 0) i64 @BIT_initDStream(ptr noundef nonnull writeonly captures(none) initializes((0, 12), (16, 40)) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #10 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %86

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %7, align 8, !tbaa !112
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %8, ptr %9, align 8, !tbaa !103
  %10 = icmp ugt i64 %2, 7
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %13, ptr %14, align 8, !tbaa !108
  %15 = load i64, ptr %13, align 1, !tbaa !26
  store i64 %15, ptr %0, align 8, !tbaa !110
  %16 = getelementptr i8, ptr %12, i64 -1
  %17 = load i8, ptr %16, align 1, !tbaa !9
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %11
  %20 = zext i8 %17 to i32
  %21 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %20, i1 true)
  %22 = xor i32 %21, 31
  %23 = sub nuw nsw i32 8, %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %23, ptr %24, align 8, !tbaa !107
  br label %86

25:                                               ; preds = %11
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %26, align 8, !tbaa !107
  br label %86

27:                                               ; preds = %6
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %28, align 8, !tbaa !108
  %29 = load i8, ptr %1, align 1, !tbaa !9
  %30 = zext i8 %29 to i64
  store i64 %30, ptr %0, align 8, !tbaa !110
  switch i64 %2, label %72 [
    i64 7, label %31
    i64 6, label %37
    i64 5, label %44
    i64 4, label %51
    i64 3, label %58
    i64 2, label %65
  ]

31:                                               ; preds = %27
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %33 = load i8, ptr %32, align 1, !tbaa !9
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 48
  %36 = or disjoint i64 %35, %30
  store i64 %36, ptr %0, align 8, !tbaa !110
  br label %37

37:                                               ; preds = %31, %27
  %38 = phi i64 [ %30, %27 ], [ %36, %31 ]
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %40 = load i8, ptr %39, align 1, !tbaa !9
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 40
  %43 = add nuw nsw i64 %42, %38
  store i64 %43, ptr %0, align 8, !tbaa !110
  br label %44

44:                                               ; preds = %37, %27
  %45 = phi i64 [ %30, %27 ], [ %43, %37 ]
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %47 = load i8, ptr %46, align 1, !tbaa !9
  %48 = zext i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 32
  %50 = add nuw nsw i64 %49, %45
  store i64 %50, ptr %0, align 8, !tbaa !110
  br label %51

51:                                               ; preds = %44, %27
  %52 = phi i64 [ %30, %27 ], [ %50, %44 ]
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %54 = load i8, ptr %53, align 1, !tbaa !9
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, 24
  %57 = add nuw nsw i64 %56, %52
  store i64 %57, ptr %0, align 8, !tbaa !110
  br label %58

58:                                               ; preds = %51, %27
  %59 = phi i64 [ %30, %27 ], [ %57, %51 ]
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %61 = load i8, ptr %60, align 1, !tbaa !9
  %62 = zext i8 %61 to i64
  %63 = shl nuw nsw i64 %62, 16
  %64 = add nuw nsw i64 %63, %59
  store i64 %64, ptr %0, align 8, !tbaa !110
  br label %65

65:                                               ; preds = %58, %27
  %66 = phi i64 [ %30, %27 ], [ %64, %58 ]
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !9
  %69 = zext i8 %68 to i64
  %70 = shl nuw nsw i64 %69, 8
  %71 = add nuw nsw i64 %70, %66
  store i64 %71, ptr %0, align 8, !tbaa !110
  br label %72

72:                                               ; preds = %65, %27
  %73 = getelementptr i8, ptr %1, i64 %2
  %74 = getelementptr i8, ptr %73, i64 -1
  %75 = load i8, ptr %74, align 1, !tbaa !9
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %78, align 8, !tbaa !107
  br label %86

79:                                               ; preds = %72
  %80 = zext i8 %75 to i32
  %81 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %80, i1 true)
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %83 = trunc nuw nsw i64 %2 to i32
  %84 = shl nuw nsw i32 %83, 3
  %reass.sub = sub nsw i32 %81, %84
  %85 = add nsw i32 %reass.sub, 41
  store i32 %85, ptr %82, align 8, !tbaa !107
  br label %86

86:                                               ; preds = %79, %77, %25, %19, %5
  %87 = phi i64 [ -72, %5 ], [ -1, %25 ], [ -20, %77 ], [ %2, %19 ], [ %2, %79 ]
  ret i64 %87
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @HUF_decompress1X1_usingDTable_internal_bmi2(ptr noundef writeonly captures(address) %0, i64 noundef %1, ptr noundef readonly captures(address) %2, i64 noundef %3, ptr noundef readonly captures(none) %4) unnamed_addr #12 {
  %6 = ptrtoint ptr %0 to i64
  %7 = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %10 = load i32, ptr %4, align 4
  %11 = lshr i32 %10, 16
  %12 = icmp eq i64 %3, 0
  br i1 %12, label %262, label %13

13:                                               ; preds = %5
  %14 = icmp ugt i64 %3, 7
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, ptr %2, i64 %3
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load i8, ptr %17, align 1, !tbaa !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %262, label %70

20:                                               ; preds = %13
  %21 = load i8, ptr %2, align 1, !tbaa !9
  %22 = zext i8 %21 to i64
  switch i64 %3, label %64 [
    i64 7, label %23
    i64 6, label %29
    i64 5, label %36
    i64 4, label %43
    i64 3, label %50
    i64 2, label %57
  ]

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %25 = load i8, ptr %24, align 1, !tbaa !9
  %26 = zext i8 %25 to i64
  %27 = shl nuw nsw i64 %26, 48
  %28 = or disjoint i64 %27, %22
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi i64 [ %22, %20 ], [ %28, %23 ]
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %32 = load i8, ptr %31, align 1, !tbaa !9
  %33 = zext i8 %32 to i64
  %34 = shl nuw nsw i64 %33, 40
  %35 = add nuw nsw i64 %34, %30
  br label %36

36:                                               ; preds = %29, %20
  %37 = phi i64 [ %22, %20 ], [ %35, %29 ]
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %39 = load i8, ptr %38, align 1, !tbaa !9
  %40 = zext i8 %39 to i64
  %41 = shl nuw nsw i64 %40, 32
  %42 = add nuw nsw i64 %41, %37
  br label %43

43:                                               ; preds = %36, %20
  %44 = phi i64 [ %22, %20 ], [ %42, %36 ]
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !9
  %47 = zext i8 %46 to i64
  %48 = shl nuw nsw i64 %47, 24
  %49 = add nuw nsw i64 %48, %44
  br label %50

50:                                               ; preds = %43, %20
  %51 = phi i64 [ %22, %20 ], [ %49, %43 ]
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %53 = load i8, ptr %52, align 1, !tbaa !9
  %54 = zext i8 %53 to i64
  %55 = shl nuw nsw i64 %54, 16
  %56 = add nuw nsw i64 %55, %51
  br label %57

57:                                               ; preds = %50, %20
  %58 = phi i64 [ %22, %20 ], [ %56, %50 ]
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %60 = load i8, ptr %59, align 1, !tbaa !9
  %61 = zext i8 %60 to i64
  %62 = shl nuw nsw i64 %61, 8
  %63 = add nuw nsw i64 %62, %58
  br label %64

64:                                               ; preds = %57, %20
  %65 = phi i64 [ %22, %20 ], [ %63, %57 ]
  %66 = getelementptr i8, ptr %2, i64 %3
  %67 = getelementptr i8, ptr %66, i64 -1
  %68 = load i8, ptr %67, align 1, !tbaa !9
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %262, label %81

70:                                               ; preds = %15
  %71 = add nsw i64 %3, -8
  %72 = getelementptr inbounds i8, ptr %2, i64 %71
  %73 = load i64, ptr %72, align 1, !tbaa !26
  %74 = zext i8 %18 to i32
  %75 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %74, i1 true)
  %76 = xor i32 %75, 31
  %77 = sub nuw nsw i32 8, %76
  %78 = icmp ult i64 %3, -119
  br i1 %78, label %79, label %262

79:                                               ; preds = %70
  %80 = icmp sgt i64 %1, 3
  br i1 %80, label %89, label %173

81:                                               ; preds = %64
  %82 = zext i8 %68 to i32
  %83 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %82, i1 true)
  %84 = trunc nuw nsw i64 %3 to i32
  %85 = shl nuw nsw i32 %84, 3
  %86 = sub nsw i32 %83, %85
  %87 = add nsw i32 %86, 41
  %88 = icmp sgt i64 %1, 3
  br i1 %88, label %89, label %.loopexit9

89:                                               ; preds = %81, %79
  %90 = phi i32 [ %87, %81 ], [ %77, %79 ]
  %91 = phi i64 [ %65, %81 ], [ %73, %79 ]
  %92 = phi i64 [ 0, %81 ], [ %71, %79 ]
  %93 = getelementptr inbounds i8, ptr %8, i64 -3
  %94 = sub nsw i32 0, %11
  %95 = and i32 %94, 63
  %96 = zext nneg i32 %95 to i64
  br label %97

97:                                               ; preds = %127, %89
  %98 = phi ptr [ %0, %89 ], [ %171, %127 ]
  %99 = phi i64 [ %92, %89 ], [ %122, %127 ]
  %100 = phi i64 [ %91, %89 ], [ %124, %127 ]
  %101 = phi i32 [ %90, %89 ], [ %170, %127 ]
  %102 = icmp slt i64 %99, 8
  br i1 %102, label %107, label %103

103:                                              ; preds = %97
  %104 = lshr i32 %101, 3
  %105 = zext nneg i32 %104 to i64
  %106 = and i32 %101, 7
  br label %118

107:                                              ; preds = %97
  %108 = icmp eq i64 %99, 0
  br i1 %108, label %.loopexit9, label %109

109:                                              ; preds = %107
  %110 = lshr i32 %101, 3
  %111 = zext nneg i32 %110 to i64
  %112 = icmp sge i64 %99, %111
  %113 = tail call i64 @llvm.smin.i64(i64 %99, i64 %111)
  %114 = trunc i64 %113 to i32
  %115 = and i64 %113, 4294967295
  %116 = shl i32 %114, 3
  %117 = sub i32 %101, %116
  br label %118

118:                                              ; preds = %109, %103
  %119 = phi i32 [ %117, %109 ], [ %106, %103 ]
  %120 = phi i64 [ %115, %109 ], [ %105, %103 ]
  %121 = phi i1 [ %112, %109 ], [ true, %103 ]
  %122 = sub nsw i64 %99, %120
  %123 = getelementptr inbounds i8, ptr %2, i64 %122
  %124 = load i64, ptr %123, align 1, !tbaa !26
  %125 = icmp ult ptr %98, %93
  %126 = and i1 %125, %121
  br i1 %126, label %127, label %.loopexit9.loopexit.split.loop.exit

127:                                              ; preds = %118
  %128 = and i32 %119, 63
  %129 = zext nneg i32 %128 to i64
  %130 = shl i64 %124, %129
  %131 = lshr i64 %130, %96
  %132 = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %131
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 1
  %134 = load i8, ptr %133, align 1, !tbaa !97
  %135 = load i8, ptr %132, align 1, !tbaa !99
  %136 = zext i8 %135 to i32
  %137 = add i32 %119, %136
  store i8 %134, ptr %98, align 1, !tbaa !9
  %138 = getelementptr inbounds nuw i8, ptr %98, i64 1
  %139 = and i32 %137, 63
  %140 = zext nneg i32 %139 to i64
  %141 = shl i64 %124, %140
  %142 = lshr i64 %141, %96
  %143 = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %142
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 1
  %145 = load i8, ptr %144, align 1, !tbaa !97
  %146 = load i8, ptr %143, align 1, !tbaa !99
  %147 = zext i8 %146 to i32
  %148 = add i32 %137, %147
  store i8 %145, ptr %138, align 1, !tbaa !9
  %149 = getelementptr inbounds nuw i8, ptr %98, i64 2
  %150 = and i32 %148, 63
  %151 = zext nneg i32 %150 to i64
  %152 = shl i64 %124, %151
  %153 = lshr i64 %152, %96
  %154 = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %153
  %155 = getelementptr inbounds nuw i8, ptr %154, i64 1
  %156 = load i8, ptr %155, align 1, !tbaa !97
  %157 = load i8, ptr %154, align 1, !tbaa !99
  %158 = zext i8 %157 to i32
  %159 = add i32 %148, %158
  store i8 %156, ptr %149, align 1, !tbaa !9
  %160 = getelementptr inbounds nuw i8, ptr %98, i64 3
  %161 = and i32 %159, 63
  %162 = zext nneg i32 %161 to i64
  %163 = shl i64 %124, %162
  %164 = lshr i64 %163, %96
  %165 = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %164
  %166 = getelementptr inbounds nuw i8, ptr %165, i64 1
  %167 = load i8, ptr %166, align 1, !tbaa !97
  %168 = load i8, ptr %165, align 1, !tbaa !99
  %169 = zext i8 %168 to i32
  %170 = add i32 %159, %169
  %171 = getelementptr inbounds nuw i8, ptr %98, i64 4
  store i8 %167, ptr %160, align 1, !tbaa !9
  %172 = icmp ugt i32 %170, 64
  br i1 %172, label %.loopexit9, label %97, !prof !88, !llvm.loop !100

173:                                              ; preds = %79
  %174 = icmp slt i64 %3, 16
  br i1 %174, label %182, label %175

175:                                              ; preds = %173
  %176 = lshr i32 %77, 3
  %177 = zext nneg i32 %176 to i64
  %178 = sub nsw i64 0, %177
  %179 = getelementptr inbounds i8, ptr %72, i64 %178
  %180 = and i32 %77, 7
  %181 = load i64, ptr %179, align 1, !tbaa !26
  br label %.loopexit9

182:                                              ; preds = %173
  %183 = icmp eq i64 %71, 0
  br i1 %183, label %.loopexit9, label %184

184:                                              ; preds = %182
  %185 = lshr i32 %77, 3
  %186 = zext nneg i32 %185 to i64
  %187 = tail call i64 @llvm.smin.i64(i64 %71, i64 %186)
  %188 = trunc i64 %187 to i32
  %189 = and i64 %187, 4294967295
  %190 = sub nsw i64 0, %189
  %191 = getelementptr inbounds i8, ptr %72, i64 %190
  %192 = shl i32 %188, 3
  %193 = sub i32 %77, %192
  %194 = load i64, ptr %191, align 1, !tbaa !26
  br label %.loopexit9

.loopexit9.loopexit.split.loop.exit:              ; preds = %118
  %195 = getelementptr inbounds i8, ptr %2, i64 %122
  br label %.loopexit9

.loopexit9:                                       ; preds = %127, %107, %.loopexit9.loopexit.split.loop.exit, %184, %182, %175, %81
  %196 = phi i32 [ %193, %184 ], [ %180, %175 ], [ %77, %182 ], [ %87, %81 ], [ %119, %.loopexit9.loopexit.split.loop.exit ], [ %170, %127 ], [ %101, %107 ]
  %197 = phi i64 [ %194, %184 ], [ %181, %175 ], [ %73, %182 ], [ %65, %81 ], [ %124, %.loopexit9.loopexit.split.loop.exit ], [ %124, %127 ], [ %100, %107 ]
  %198 = phi ptr [ %191, %184 ], [ %179, %175 ], [ %72, %182 ], [ %2, %81 ], [ %195, %.loopexit9.loopexit.split.loop.exit ], [ @BIT_reloadDStream.zeroFilled, %127 ], [ %2, %107 ]
  %199 = phi ptr [ %0, %184 ], [ %0, %175 ], [ %0, %182 ], [ %0, %81 ], [ %98, %.loopexit9.loopexit.split.loop.exit ], [ %171, %127 ], [ %98, %107 ]
  %200 = freeze i32 %196
  %201 = icmp ult ptr %199, %8
  br i1 %201, label %202, label %.loopexit

202:                                              ; preds = %.loopexit9
  %203 = ptrtoint ptr %199 to i64
  %204 = sub nsw i32 0, %11
  %205 = and i32 %204, 63
  %206 = zext nneg i32 %205 to i64
  %207 = add i64 %7, %6
  %208 = sub i64 %207, %203
  %209 = add i64 %203, 1
  %210 = and i64 %208, 1
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %225, label %212

212:                                              ; preds = %202
  %213 = and i32 %200, 63
  %214 = zext nneg i32 %213 to i64
  %215 = shl i64 %197, %214
  %216 = lshr i64 %215, %206
  %217 = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %216
  %218 = getelementptr inbounds nuw i8, ptr %217, i64 1
  %219 = load i8, ptr %218, align 1, !tbaa !97
  %220 = load i8, ptr %217, align 1, !tbaa !99
  %221 = freeze i8 %220
  %222 = zext i8 %221 to i32
  %223 = add i32 %200, %222
  %224 = getelementptr inbounds nuw i8, ptr %199, i64 1
  store i8 %219, ptr %199, align 1, !tbaa !9
  br label %225

225:                                              ; preds = %212, %202
  %226 = phi i32 [ %200, %202 ], [ %223, %212 ]
  %227 = phi ptr [ %199, %202 ], [ %224, %212 ]
  %228 = phi i32 [ poison, %202 ], [ %223, %212 ]
  %229 = icmp eq i64 %207, %209
  br i1 %229, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %225, %.preheader
  %230 = phi i32 [ %254, %.preheader ], [ %226, %225 ]
  %231 = phi ptr [ %255, %.preheader ], [ %227, %225 ]
  %232 = and i32 %230, 63
  %233 = zext nneg i32 %232 to i64
  %234 = shl i64 %197, %233
  %235 = lshr i64 %234, %206
  %236 = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %235
  %237 = getelementptr inbounds nuw i8, ptr %236, i64 1
  %238 = load i8, ptr %237, align 1, !tbaa !97
  %239 = load i8, ptr %236, align 1, !tbaa !99
  %240 = freeze i8 %239
  %241 = zext i8 %240 to i32
  %242 = add i32 %230, %241
  %243 = getelementptr inbounds nuw i8, ptr %231, i64 1
  store i8 %238, ptr %231, align 1, !tbaa !9
  %244 = and i32 %242, 63
  %245 = zext nneg i32 %244 to i64
  %246 = shl i64 %197, %245
  %247 = lshr i64 %246, %206
  %248 = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %247
  %249 = getelementptr inbounds nuw i8, ptr %248, i64 1
  %250 = load i8, ptr %249, align 1, !tbaa !97
  %251 = load i8, ptr %248, align 1, !tbaa !99
  %252 = freeze i8 %251
  %253 = zext i8 %252 to i32
  %254 = add i32 %242, %253
  %255 = getelementptr inbounds nuw i8, ptr %231, i64 2
  store i8 %250, ptr %243, align 1, !tbaa !9
  %256 = icmp ult ptr %255, %8
  br i1 %256, label %.preheader, label %.loopexit, !llvm.loop !101

.loopexit:                                        ; preds = %.preheader, %225, %.loopexit9
  %257 = phi i32 [ %200, %.loopexit9 ], [ %228, %225 ], [ %254, %.preheader ]
  %258 = icmp eq ptr %198, %2
  %259 = icmp eq i32 %257, 64
  %260 = and i1 %258, %259
  %261 = select i1 %260, i64 %1, i64 -20
  br label %262

262:                                              ; preds = %.loopexit, %70, %64, %15, %5
  %263 = phi i64 [ %3, %70 ], [ -20, %64 ], [ -1, %15 ], [ -72, %5 ], [ %261, %.loopexit ]
  ret i64 %263
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @HUF_decompress4X2_usingDTable_internal_fast_c_loop(ptr noundef captures(none) %0) #13 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %13 = load i64, ptr %12, align 8
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %30 = load ptr, ptr %29, align 8, !tbaa !117
  %31 = ptrtoint ptr %5 to i64
  %32 = ptrtoint ptr %24 to i64
  %33 = ptrtoint ptr %26 to i64
  %34 = ptrtoint ptr %28 to i64
  %35 = ptrtoint ptr %30 to i64
  br label %37

36:                                               ; preds = %.preheader
  br label %37, !llvm.loop !118

37:                                               ; preds = %36, %1
  %38 = phi ptr [ %28, %1 ], [ %313, %36 ]
  %39 = phi ptr [ %26, %1 ], [ %239, %36 ]
  %40 = phi ptr [ %24, %1 ], [ %229, %36 ]
  %41 = phi ptr [ %22, %1 ], [ %219, %36 ]
  %42 = phi ptr [ %14, %1 ], [ %264, %36 ]
  %43 = phi ptr [ %16, %1 ], [ %282, %36 ]
  %44 = phi ptr [ %18, %1 ], [ %300, %36 ]
  %45 = phi ptr [ %20, %1 ], [ %318, %36 ]
  %46 = phi i64 [ %7, %1 ], [ %267, %36 ]
  %47 = phi i64 [ %9, %1 ], [ %285, %36 ]
  %48 = phi i64 [ %11, %1 ], [ %303, %36 ]
  %49 = phi i64 [ %13, %1 ], [ %321, %36 ]
  %50 = ptrtoint ptr %42 to i64
  %51 = sub i64 %50, %31
  %52 = udiv i64 %51, 7
  %53 = ptrtoint ptr %41 to i64
  %54 = sub i64 %32, %53
  %55 = udiv i64 %54, 10
  %56 = tail call i64 @llvm.umin.i64(i64 %52, i64 %55)
  %57 = ptrtoint ptr %40 to i64
  %58 = sub i64 %33, %57
  %59 = udiv i64 %58, 10
  %60 = tail call i64 @llvm.umin.i64(i64 %56, i64 %59)
  %61 = ptrtoint ptr %39 to i64
  %62 = sub i64 %34, %61
  %63 = udiv i64 %62, 10
  %64 = tail call i64 @llvm.umin.i64(i64 %60, i64 %63)
  %65 = ptrtoint ptr %38 to i64
  %66 = sub i64 %35, %65
  %67 = udiv i64 %66, 10
  %68 = tail call i64 @llvm.umin.i64(i64 %64, i64 %67)
  %69 = mul nuw nsw i64 %68, 5
  %70 = getelementptr inbounds nuw i8, ptr %38, i64 %69
  %71 = icmp eq i64 %68, 0
  %72 = icmp ult ptr %43, %42
  %73 = select i1 %71, i1 true, i1 %72
  %74 = icmp ult ptr %44, %43
  %75 = select i1 %73, i1 true, i1 %74
  %76 = icmp ult ptr %45, %44
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %323, label %.preheader

.preheader:                                       ; preds = %37, %.preheader
  %78 = phi ptr [ %318, %.preheader ], [ %45, %37 ]
  %79 = phi ptr [ %300, %.preheader ], [ %44, %37 ]
  %80 = phi ptr [ %282, %.preheader ], [ %43, %37 ]
  %81 = phi ptr [ %264, %.preheader ], [ %42, %37 ]
  %82 = phi ptr [ %313, %.preheader ], [ %38, %37 ]
  %83 = phi ptr [ %239, %.preheader ], [ %39, %37 ]
  %84 = phi ptr [ %229, %.preheader ], [ %40, %37 ]
  %85 = phi ptr [ %219, %.preheader ], [ %41, %37 ]
  %86 = phi i64 [ %267, %.preheader ], [ %46, %37 ]
  %87 = phi i64 [ %285, %.preheader ], [ %47, %37 ]
  %88 = phi i64 [ %303, %.preheader ], [ %48, %37 ]
  %89 = phi i64 [ %321, %.preheader ], [ %49, %37 ]
  %90 = lshr i64 %86, 53
  %91 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %90
  %92 = load i32, ptr %91, align 1, !tbaa !5
  %93 = zext i32 %92 to i64
  %94 = trunc i32 %92 to i16
  store i16 %94, ptr %85, align 1, !tbaa !102
  %95 = lshr i64 %93, 16
  %96 = and i64 %95, 63
  %97 = shl i64 %86, %96
  %98 = lshr i64 %93, 24
  %99 = getelementptr inbounds nuw i8, ptr %85, i64 %98
  %100 = lshr i64 %87, 53
  %101 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %100
  %102 = load i32, ptr %101, align 1, !tbaa !5
  %103 = zext i32 %102 to i64
  %104 = trunc i32 %102 to i16
  store i16 %104, ptr %84, align 1, !tbaa !102
  %105 = lshr i64 %103, 16
  %106 = and i64 %105, 63
  %107 = shl i64 %87, %106
  %108 = lshr i64 %103, 24
  %109 = getelementptr inbounds nuw i8, ptr %84, i64 %108
  %110 = lshr i64 %88, 53
  %111 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %110
  %112 = load i32, ptr %111, align 1, !tbaa !5
  %113 = zext i32 %112 to i64
  %114 = trunc i32 %112 to i16
  store i16 %114, ptr %83, align 1, !tbaa !102
  %115 = lshr i64 %113, 16
  %116 = and i64 %115, 63
  %117 = shl i64 %88, %116
  %118 = lshr i64 %113, 24
  %119 = getelementptr inbounds nuw i8, ptr %83, i64 %118
  %120 = lshr i64 %97, 53
  %121 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %120
  %122 = load i32, ptr %121, align 1, !tbaa !5
  %123 = zext i32 %122 to i64
  %124 = trunc i32 %122 to i16
  store i16 %124, ptr %99, align 1, !tbaa !102
  %125 = lshr i64 %123, 16
  %126 = and i64 %125, 63
  %127 = shl i64 %97, %126
  %128 = lshr i64 %123, 24
  %129 = getelementptr inbounds nuw i8, ptr %99, i64 %128
  %130 = lshr i64 %107, 53
  %131 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %130
  %132 = load i32, ptr %131, align 1, !tbaa !5
  %133 = zext i32 %132 to i64
  %134 = trunc i32 %132 to i16
  store i16 %134, ptr %109, align 1, !tbaa !102
  %135 = lshr i64 %133, 16
  %136 = and i64 %135, 63
  %137 = shl i64 %107, %136
  %138 = lshr i64 %133, 24
  %139 = getelementptr inbounds nuw i8, ptr %109, i64 %138
  %140 = lshr i64 %117, 53
  %141 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %140
  %142 = load i32, ptr %141, align 1, !tbaa !5
  %143 = zext i32 %142 to i64
  %144 = trunc i32 %142 to i16
  store i16 %144, ptr %119, align 1, !tbaa !102
  %145 = lshr i64 %143, 16
  %146 = and i64 %145, 63
  %147 = shl i64 %117, %146
  %148 = lshr i64 %143, 24
  %149 = getelementptr inbounds nuw i8, ptr %119, i64 %148
  %150 = lshr i64 %127, 53
  %151 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %150
  %152 = load i32, ptr %151, align 1, !tbaa !5
  %153 = zext i32 %152 to i64
  %154 = trunc i32 %152 to i16
  store i16 %154, ptr %129, align 1, !tbaa !102
  %155 = lshr i64 %153, 16
  %156 = and i64 %155, 63
  %157 = shl i64 %127, %156
  %158 = lshr i64 %153, 24
  %159 = getelementptr inbounds nuw i8, ptr %129, i64 %158
  %160 = lshr i64 %137, 53
  %161 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %160
  %162 = load i32, ptr %161, align 1, !tbaa !5
  %163 = zext i32 %162 to i64
  %164 = trunc i32 %162 to i16
  store i16 %164, ptr %139, align 1, !tbaa !102
  %165 = lshr i64 %163, 16
  %166 = and i64 %165, 63
  %167 = shl i64 %137, %166
  %168 = lshr i64 %163, 24
  %169 = getelementptr inbounds nuw i8, ptr %139, i64 %168
  %170 = lshr i64 %147, 53
  %171 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %170
  %172 = load i32, ptr %171, align 1, !tbaa !5
  %173 = zext i32 %172 to i64
  %174 = trunc i32 %172 to i16
  store i16 %174, ptr %149, align 1, !tbaa !102
  %175 = lshr i64 %173, 16
  %176 = and i64 %175, 63
  %177 = shl i64 %147, %176
  %178 = lshr i64 %173, 24
  %179 = getelementptr inbounds nuw i8, ptr %149, i64 %178
  %180 = lshr i64 %157, 53
  %181 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %180
  %182 = load i32, ptr %181, align 1, !tbaa !5
  %183 = zext i32 %182 to i64
  %184 = trunc i32 %182 to i16
  store i16 %184, ptr %159, align 1, !tbaa !102
  %185 = lshr i64 %183, 16
  %186 = and i64 %185, 63
  %187 = shl i64 %157, %186
  %188 = lshr i64 %183, 24
  %189 = getelementptr inbounds nuw i8, ptr %159, i64 %188
  %190 = lshr i64 %167, 53
  %191 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %190
  %192 = load i32, ptr %191, align 1, !tbaa !5
  %193 = zext i32 %192 to i64
  %194 = trunc i32 %192 to i16
  store i16 %194, ptr %169, align 1, !tbaa !102
  %195 = lshr i64 %193, 16
  %196 = and i64 %195, 63
  %197 = shl i64 %167, %196
  %198 = lshr i64 %193, 24
  %199 = getelementptr inbounds nuw i8, ptr %169, i64 %198
  %200 = lshr i64 %177, 53
  %201 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %200
  %202 = load i32, ptr %201, align 1, !tbaa !5
  %203 = zext i32 %202 to i64
  %204 = trunc i32 %202 to i16
  store i16 %204, ptr %179, align 1, !tbaa !102
  %205 = lshr i64 %203, 16
  %206 = and i64 %205, 63
  %207 = shl i64 %177, %206
  %208 = lshr i64 %203, 24
  %209 = getelementptr inbounds nuw i8, ptr %179, i64 %208
  %210 = lshr i64 %187, 53
  %211 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %210
  %212 = load i32, ptr %211, align 1, !tbaa !5
  %213 = zext i32 %212 to i64
  %214 = trunc i32 %212 to i16
  store i16 %214, ptr %189, align 1, !tbaa !102
  %215 = lshr i64 %213, 16
  %216 = and i64 %215, 63
  %217 = shl i64 %187, %216
  %218 = lshr i64 %213, 24
  %219 = getelementptr inbounds nuw i8, ptr %189, i64 %218
  %220 = lshr i64 %197, 53
  %221 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %220
  %222 = load i32, ptr %221, align 1, !tbaa !5
  %223 = zext i32 %222 to i64
  %224 = trunc i32 %222 to i16
  store i16 %224, ptr %199, align 1, !tbaa !102
  %225 = lshr i64 %223, 16
  %226 = and i64 %225, 63
  %227 = shl i64 %197, %226
  %228 = lshr i64 %223, 24
  %229 = getelementptr inbounds nuw i8, ptr %199, i64 %228
  %230 = lshr i64 %207, 53
  %231 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %230
  %232 = load i32, ptr %231, align 1, !tbaa !5
  %233 = zext i32 %232 to i64
  %234 = trunc i32 %232 to i16
  store i16 %234, ptr %209, align 1, !tbaa !102
  %235 = lshr i64 %233, 16
  %236 = and i64 %235, 63
  %237 = shl i64 %207, %236
  %238 = lshr i64 %233, 24
  %239 = getelementptr inbounds nuw i8, ptr %209, i64 %238
  %240 = lshr i64 %89, 53
  %241 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %240
  %242 = load i32, ptr %241, align 1, !tbaa !5
  %243 = zext i32 %242 to i64
  %244 = trunc i32 %242 to i16
  store i16 %244, ptr %82, align 1, !tbaa !102
  %245 = lshr i64 %243, 16
  %246 = and i64 %245, 63
  %247 = shl i64 %89, %246
  %248 = lshr i64 %243, 24
  %249 = getelementptr inbounds nuw i8, ptr %82, i64 %248
  %250 = lshr i64 %247, 53
  %251 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %250
  %252 = load i32, ptr %251, align 1, !tbaa !5
  %253 = zext i32 %252 to i64
  %254 = trunc i32 %252 to i16
  store i16 %254, ptr %249, align 1, !tbaa !102
  %255 = lshr i64 %253, 16
  %256 = and i64 %255, 63
  %257 = shl i64 %247, %256
  %258 = lshr i64 %253, 24
  %259 = getelementptr inbounds nuw i8, ptr %249, i64 %258
  %260 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %217, i1 true)
  %261 = and i64 %260, 7
  %262 = lshr i64 %260, 3
  %263 = sub nsw i64 0, %262
  %264 = getelementptr inbounds i8, ptr %81, i64 %263
  %265 = load i64, ptr %264, align 1, !tbaa !26
  %266 = or i64 %265, 1
  %267 = shl i64 %266, %261
  %268 = lshr i64 %257, 53
  %269 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %268
  %270 = load i32, ptr %269, align 1, !tbaa !5
  %271 = zext i32 %270 to i64
  %272 = trunc i32 %270 to i16
  store i16 %272, ptr %259, align 1, !tbaa !102
  %273 = lshr i64 %271, 16
  %274 = and i64 %273, 63
  %275 = shl i64 %257, %274
  %276 = lshr i64 %271, 24
  %277 = getelementptr inbounds nuw i8, ptr %259, i64 %276
  %278 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %227, i1 true)
  %279 = and i64 %278, 7
  %280 = lshr i64 %278, 3
  %281 = sub nsw i64 0, %280
  %282 = getelementptr inbounds i8, ptr %80, i64 %281
  %283 = load i64, ptr %282, align 1, !tbaa !26
  %284 = or i64 %283, 1
  %285 = shl i64 %284, %279
  %286 = lshr i64 %275, 53
  %287 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %286
  %288 = load i32, ptr %287, align 1, !tbaa !5
  %289 = zext i32 %288 to i64
  %290 = trunc i32 %288 to i16
  store i16 %290, ptr %277, align 1, !tbaa !102
  %291 = lshr i64 %289, 16
  %292 = and i64 %291, 63
  %293 = shl i64 %275, %292
  %294 = lshr i64 %289, 24
  %295 = getelementptr inbounds nuw i8, ptr %277, i64 %294
  %296 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %237, i1 true)
  %297 = and i64 %296, 7
  %298 = lshr i64 %296, 3
  %299 = sub nsw i64 0, %298
  %300 = getelementptr inbounds i8, ptr %79, i64 %299
  %301 = load i64, ptr %300, align 1, !tbaa !26
  %302 = or i64 %301, 1
  %303 = shl i64 %302, %297
  %304 = lshr i64 %293, 53
  %305 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %304
  %306 = load i32, ptr %305, align 1, !tbaa !5
  %307 = zext i32 %306 to i64
  %308 = trunc i32 %306 to i16
  store i16 %308, ptr %295, align 1, !tbaa !102
  %309 = lshr i64 %307, 16
  %310 = and i64 %309, 63
  %311 = shl i64 %293, %310
  %312 = lshr i64 %307, 24
  %313 = getelementptr inbounds nuw i8, ptr %295, i64 %312
  %314 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %311, i1 true)
  %315 = and i64 %314, 7
  %316 = lshr i64 %314, 3
  %317 = sub nsw i64 0, %316
  %318 = getelementptr inbounds i8, ptr %78, i64 %317
  %319 = load i64, ptr %318, align 1, !tbaa !26
  %320 = or i64 %319, 1
  %321 = shl i64 %320, %315
  %322 = icmp ult ptr %313, %70
  br i1 %322, label %.preheader, label %36, !llvm.loop !118

323:                                              ; preds = %37
  store i64 %46, ptr %6, align 8
  store i64 %47, ptr %8, align 8
  store i64 %48, ptr %10, align 8
  store i64 %49, ptr %12, align 8
  store ptr %42, ptr %0, align 8
  store ptr %43, ptr %15, align 8
  store ptr %44, ptr %17, align 8
  store ptr %45, ptr %19, align 8
  store ptr %41, ptr %21, align 8
  store ptr %40, ptr %23, align 8
  store ptr %39, ptr %25, align 8
  store ptr %38, ptr %27, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 1, 0) i64 @HUF_decompress4X2_usingDTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef readonly %4) unnamed_addr #13 {
  %6 = alloca %struct.BIT_DStream_t, align 8
  %7 = icmp ult i64 %3, 10
  %8 = icmp ult i64 %1, 6
  %9 = or i1 %8, %7
  br i1 %9, label %2127, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %12 = getelementptr inbounds i8, ptr %11, i64 -7
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %14 = load i16, ptr %2, align 1, !tbaa !102
  %15 = zext i16 %14 to i64
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %17 = load i16, ptr %16, align 1, !tbaa !102
  %18 = zext i16 %17 to i64
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %20 = load i16, ptr %19, align 1, !tbaa !102
  %21 = zext i16 %20 to i64
  %22 = add nuw nsw i64 %15, 6
  %23 = add nuw nsw i64 %22, %18
  %24 = add nuw nsw i64 %23, %21
  %25 = sub i64 %3, %24
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %27 = getelementptr i8, ptr %26, i64 %15
  %28 = getelementptr i8, ptr %27, i64 %18
  %29 = getelementptr i8, ptr %28, i64 %21
  %30 = add i64 %1, 3
  %31 = lshr i64 %30, 2
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 %31
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 %31
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 %31
  %35 = load i32, ptr %4, align 4
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = icmp ugt i64 %24, %3
  %39 = mul nuw nsw i64 %31, 3
  %40 = icmp samesign ugt i64 %39, %1
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %2125, label %42

42:                                               ; preds = %10
  %43 = icmp eq i16 %14, 0
  br i1 %43, label %2125, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 14
  %46 = icmp ugt i16 %14, 7
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = getelementptr i8, ptr %27, i64 -1
  %49 = load i8, ptr %48, align 1, !tbaa !9
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %2125, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, ptr %27, i64 -8
  %53 = load i64, ptr %52, align 1, !tbaa !26
  %54 = zext i8 %49 to i32
  %55 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %54, i1 true)
  %56 = xor i32 %55, 31
  %57 = sub nuw nsw i32 8, %56
  br label %113

58:                                               ; preds = %44
  %59 = load i8, ptr %26, align 1, !tbaa !9
  %60 = zext i8 %59 to i64
  switch i16 %14, label %102 [
    i16 7, label %61
    i16 6, label %67
    i16 5, label %74
    i16 4, label %81
    i16 3, label %88
    i16 2, label %95
  ]

61:                                               ; preds = %58
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %63 = load i8, ptr %62, align 1, !tbaa !9
  %64 = zext i8 %63 to i64
  %65 = shl nuw nsw i64 %64, 48
  %66 = or disjoint i64 %65, %60
  br label %67

67:                                               ; preds = %61, %58
  %68 = phi i64 [ %60, %58 ], [ %66, %61 ]
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %70 = load i8, ptr %69, align 1, !tbaa !9
  %71 = zext i8 %70 to i64
  %72 = shl nuw nsw i64 %71, 40
  %73 = add nuw nsw i64 %72, %68
  br label %74

74:                                               ; preds = %67, %58
  %75 = phi i64 [ %60, %58 ], [ %73, %67 ]
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 10
  %77 = load i8, ptr %76, align 1, !tbaa !9
  %78 = zext i8 %77 to i64
  %79 = shl nuw nsw i64 %78, 32
  %80 = add nuw nsw i64 %79, %75
  br label %81

81:                                               ; preds = %74, %58
  %82 = phi i64 [ %60, %58 ], [ %80, %74 ]
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 9
  %84 = load i8, ptr %83, align 1, !tbaa !9
  %85 = zext i8 %84 to i64
  %86 = shl nuw nsw i64 %85, 24
  %87 = add nuw nsw i64 %86, %82
  br label %88

88:                                               ; preds = %81, %58
  %89 = phi i64 [ %60, %58 ], [ %87, %81 ]
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %91 = load i8, ptr %90, align 1, !tbaa !9
  %92 = zext i8 %91 to i64
  %93 = shl nuw nsw i64 %92, 16
  %94 = add nuw nsw i64 %93, %89
  br label %95

95:                                               ; preds = %88, %58
  %96 = phi i64 [ %60, %58 ], [ %94, %88 ]
  %97 = getelementptr inbounds nuw i8, ptr %2, i64 7
  %98 = load i8, ptr %97, align 1, !tbaa !9
  %99 = zext i8 %98 to i64
  %100 = shl nuw nsw i64 %99, 8
  %101 = add nuw nsw i64 %100, %96
  br label %102

102:                                              ; preds = %95, %58
  %103 = phi i64 [ %60, %58 ], [ %101, %95 ]
  %104 = getelementptr i8, ptr %27, i64 -1
  %105 = load i8, ptr %104, align 1, !tbaa !9
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %2125, label %107

107:                                              ; preds = %102
  %108 = zext i8 %105 to i32
  %109 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %108, i1 true)
  %110 = shl nuw nsw i16 %14, 3
  %111 = zext nneg i16 %110 to i32
  %reass.sub = sub nsw i32 %109, %111
  %112 = add nsw i32 %reass.sub, 41
  br label %113

113:                                              ; preds = %107, %51
  %114 = phi ptr [ %52, %51 ], [ %26, %107 ]
  %115 = phi i32 [ %57, %51 ], [ %112, %107 ]
  %116 = phi i64 [ %53, %51 ], [ %103, %107 ]
  %117 = icmp eq i16 %17, 0
  br i1 %117, label %2125, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %120 = icmp ugt i16 %17, 7
  br i1 %120, label %121, label %132

121:                                              ; preds = %118
  %122 = getelementptr i8, ptr %28, i64 -1
  %123 = load i8, ptr %122, align 1, !tbaa !9
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %2125, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds i8, ptr %28, i64 -8
  %127 = load i64, ptr %126, align 1, !tbaa !26
  %128 = zext i8 %123 to i32
  %129 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %128, i1 true)
  %130 = xor i32 %129, 31
  %131 = sub nuw nsw i32 8, %130
  br label %187

132:                                              ; preds = %118
  %133 = load i8, ptr %27, align 1, !tbaa !9
  %134 = zext i8 %133 to i64
  switch i16 %17, label %176 [
    i16 7, label %135
    i16 6, label %141
    i16 5, label %148
    i16 4, label %155
    i16 3, label %162
    i16 2, label %169
  ]

135:                                              ; preds = %132
  %136 = getelementptr inbounds nuw i8, ptr %27, i64 6
  %137 = load i8, ptr %136, align 1, !tbaa !9
  %138 = zext i8 %137 to i64
  %139 = shl nuw nsw i64 %138, 48
  %140 = or disjoint i64 %139, %134
  br label %141

141:                                              ; preds = %135, %132
  %142 = phi i64 [ %134, %132 ], [ %140, %135 ]
  %143 = getelementptr inbounds nuw i8, ptr %27, i64 5
  %144 = load i8, ptr %143, align 1, !tbaa !9
  %145 = zext i8 %144 to i64
  %146 = shl nuw nsw i64 %145, 40
  %147 = add nuw nsw i64 %146, %142
  br label %148

148:                                              ; preds = %141, %132
  %149 = phi i64 [ %134, %132 ], [ %147, %141 ]
  %150 = getelementptr inbounds nuw i8, ptr %27, i64 4
  %151 = load i8, ptr %150, align 1, !tbaa !9
  %152 = zext i8 %151 to i64
  %153 = shl nuw nsw i64 %152, 32
  %154 = add nuw nsw i64 %153, %149
  br label %155

155:                                              ; preds = %148, %132
  %156 = phi i64 [ %134, %132 ], [ %154, %148 ]
  %157 = getelementptr inbounds nuw i8, ptr %27, i64 3
  %158 = load i8, ptr %157, align 1, !tbaa !9
  %159 = zext i8 %158 to i64
  %160 = shl nuw nsw i64 %159, 24
  %161 = add nuw nsw i64 %160, %156
  br label %162

162:                                              ; preds = %155, %132
  %163 = phi i64 [ %134, %132 ], [ %161, %155 ]
  %164 = getelementptr inbounds nuw i8, ptr %27, i64 2
  %165 = load i8, ptr %164, align 1, !tbaa !9
  %166 = zext i8 %165 to i64
  %167 = shl nuw nsw i64 %166, 16
  %168 = add nuw nsw i64 %167, %163
  br label %169

169:                                              ; preds = %162, %132
  %170 = phi i64 [ %134, %132 ], [ %168, %162 ]
  %171 = getelementptr inbounds nuw i8, ptr %27, i64 1
  %172 = load i8, ptr %171, align 1, !tbaa !9
  %173 = zext i8 %172 to i64
  %174 = shl nuw nsw i64 %173, 8
  %175 = add nuw nsw i64 %174, %170
  br label %176

176:                                              ; preds = %169, %132
  %177 = phi i64 [ %134, %132 ], [ %175, %169 ]
  %178 = getelementptr i8, ptr %28, i64 -1
  %179 = load i8, ptr %178, align 1, !tbaa !9
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %2125, label %181

181:                                              ; preds = %176
  %182 = zext i8 %179 to i32
  %183 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %182, i1 true)
  %184 = shl nuw nsw i16 %17, 3
  %185 = zext nneg i16 %184 to i32
  %reass.sub260 = sub nsw i32 %183, %185
  %186 = add nsw i32 %reass.sub260, 41
  br label %187

187:                                              ; preds = %181, %125
  %188 = phi i64 [ %127, %125 ], [ %177, %181 ]
  %189 = phi i32 [ %131, %125 ], [ %186, %181 ]
  %190 = phi ptr [ %126, %125 ], [ %27, %181 ]
  %191 = icmp eq i16 %20, 0
  br i1 %191, label %2125, label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %194 = icmp ugt i16 %20, 7
  br i1 %194, label %195, label %206

195:                                              ; preds = %192
  %196 = getelementptr i8, ptr %29, i64 -1
  %197 = load i8, ptr %196, align 1, !tbaa !9
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %2125, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds i8, ptr %29, i64 -8
  %201 = load i64, ptr %200, align 1, !tbaa !26
  %202 = zext i8 %197 to i32
  %203 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %202, i1 true)
  %204 = xor i32 %203, 31
  %205 = sub nuw nsw i32 8, %204
  br label %261

206:                                              ; preds = %192
  %207 = load i8, ptr %28, align 1, !tbaa !9
  %208 = zext i8 %207 to i64
  switch i16 %20, label %250 [
    i16 7, label %209
    i16 6, label %215
    i16 5, label %222
    i16 4, label %229
    i16 3, label %236
    i16 2, label %243
  ]

209:                                              ; preds = %206
  %210 = getelementptr inbounds nuw i8, ptr %28, i64 6
  %211 = load i8, ptr %210, align 1, !tbaa !9
  %212 = zext i8 %211 to i64
  %213 = shl nuw nsw i64 %212, 48
  %214 = or disjoint i64 %213, %208
  br label %215

215:                                              ; preds = %209, %206
  %216 = phi i64 [ %208, %206 ], [ %214, %209 ]
  %217 = getelementptr inbounds nuw i8, ptr %28, i64 5
  %218 = load i8, ptr %217, align 1, !tbaa !9
  %219 = zext i8 %218 to i64
  %220 = shl nuw nsw i64 %219, 40
  %221 = add nuw nsw i64 %220, %216
  br label %222

222:                                              ; preds = %215, %206
  %223 = phi i64 [ %208, %206 ], [ %221, %215 ]
  %224 = getelementptr inbounds nuw i8, ptr %28, i64 4
  %225 = load i8, ptr %224, align 1, !tbaa !9
  %226 = zext i8 %225 to i64
  %227 = shl nuw nsw i64 %226, 32
  %228 = add nuw nsw i64 %227, %223
  br label %229

229:                                              ; preds = %222, %206
  %230 = phi i64 [ %208, %206 ], [ %228, %222 ]
  %231 = getelementptr inbounds nuw i8, ptr %28, i64 3
  %232 = load i8, ptr %231, align 1, !tbaa !9
  %233 = zext i8 %232 to i64
  %234 = shl nuw nsw i64 %233, 24
  %235 = add nuw nsw i64 %234, %230
  br label %236

236:                                              ; preds = %229, %206
  %237 = phi i64 [ %208, %206 ], [ %235, %229 ]
  %238 = getelementptr inbounds nuw i8, ptr %28, i64 2
  %239 = load i8, ptr %238, align 1, !tbaa !9
  %240 = zext i8 %239 to i64
  %241 = shl nuw nsw i64 %240, 16
  %242 = add nuw nsw i64 %241, %237
  br label %243

243:                                              ; preds = %236, %206
  %244 = phi i64 [ %208, %206 ], [ %242, %236 ]
  %245 = getelementptr inbounds nuw i8, ptr %28, i64 1
  %246 = load i8, ptr %245, align 1, !tbaa !9
  %247 = zext i8 %246 to i64
  %248 = shl nuw nsw i64 %247, 8
  %249 = add nuw nsw i64 %248, %244
  br label %250

250:                                              ; preds = %243, %206
  %251 = phi i64 [ %208, %206 ], [ %249, %243 ]
  %252 = getelementptr i8, ptr %29, i64 -1
  %253 = load i8, ptr %252, align 1, !tbaa !9
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %2125, label %255

255:                                              ; preds = %250
  %256 = zext i8 %253 to i32
  %257 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %256, i1 true)
  %258 = shl nuw nsw i16 %20, 3
  %259 = zext nneg i16 %258 to i32
  %reass.sub261 = sub nsw i32 %257, %259
  %260 = add nsw i32 %reass.sub261, 41
  br label %261

261:                                              ; preds = %255, %199
  %262 = phi i64 [ %201, %199 ], [ %251, %255 ]
  %263 = phi i32 [ %205, %199 ], [ %260, %255 ]
  %264 = phi ptr [ %200, %199 ], [ %28, %255 ]
  %265 = call fastcc i64 @BIT_initDStream(ptr noundef %6, ptr noundef nonnull %29, i64 noundef %25)
  %266 = icmp ult i64 %265, -119
  br i1 %266, label %267, label %2125

267:                                              ; preds = %261
  %268 = mul i64 %31, -3
  %269 = add i64 %268, %1
  %270 = icmp ugt i64 %269, 7
  %271 = icmp ult ptr %34, %12
  %272 = select i1 %270, i1 %271, i1 false
  br i1 %272, label %273, label %574

273:                                              ; preds = %267
  %274 = load i64, ptr %6, align 8
  %275 = sub nsw i32 0, %36
  %276 = and i32 %275, 63
  %277 = zext nneg i32 %276 to i64
  %278 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %279 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %280 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %281 = load ptr, ptr %280, align 8, !tbaa !103
  %282 = load i32, ptr %278, align 8, !tbaa !107
  %283 = load ptr, ptr %279, align 8, !tbaa !108
  br label %284

284:                                              ; preds = %564, %273
  %285 = phi ptr [ %283, %273 ], [ %568, %564 ]
  %286 = phi i32 [ %282, %273 ], [ %569, %564 ]
  %287 = phi ptr [ %0, %273 ], [ %356, %564 ]
  %288 = phi ptr [ %32, %273 ], [ %412, %564 ]
  %289 = phi ptr [ %33, %273 ], [ %493, %564 ]
  %290 = phi ptr [ %34, %273 ], [ %549, %564 ]
  %291 = phi ptr [ %264, %273 ], [ %561, %564 ]
  %292 = phi i64 [ %116, %273 ], [ %424, %564 ]
  %293 = phi i32 [ %263, %273 ], [ %560, %564 ]
  %294 = phi i64 [ %262, %273 ], [ %559, %564 ]
  %295 = phi ptr [ %190, %273 ], [ %436, %564 ]
  %296 = phi i32 [ %115, %273 ], [ %423, %564 ]
  %297 = phi i32 [ %189, %273 ], [ %435, %564 ]
  %298 = phi i64 [ %188, %273 ], [ %434, %564 ]
  %299 = phi ptr [ %114, %273 ], [ %422, %564 ]
  %300 = phi i64 [ %274, %273 ], [ %570, %564 ]
  %301 = and i32 %296, 63
  %302 = zext nneg i32 %301 to i64
  %303 = shl i64 %292, %302
  %304 = lshr i64 %303, %277
  %305 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %304
  %306 = load i16, ptr %305, align 2
  store i16 %306, ptr %287, align 1
  %307 = getelementptr inbounds nuw i8, ptr %305, i64 2
  %308 = load i8, ptr %307, align 2, !tbaa !84
  %309 = zext i8 %308 to i32
  %310 = add i32 %296, %309
  %311 = getelementptr inbounds nuw i8, ptr %305, i64 3
  %312 = load i8, ptr %311, align 1, !tbaa !87
  %313 = zext i8 %312 to i64
  %314 = getelementptr inbounds nuw i8, ptr %287, i64 %313
  %315 = and i32 %310, 63
  %316 = zext nneg i32 %315 to i64
  %317 = shl i64 %292, %316
  %318 = lshr i64 %317, %277
  %319 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %318
  %320 = load i16, ptr %319, align 2
  store i16 %320, ptr %314, align 1
  %321 = getelementptr inbounds nuw i8, ptr %319, i64 2
  %322 = load i8, ptr %321, align 2, !tbaa !84
  %323 = zext i8 %322 to i32
  %324 = add i32 %310, %323
  %325 = getelementptr inbounds nuw i8, ptr %319, i64 3
  %326 = load i8, ptr %325, align 1, !tbaa !87
  %327 = zext i8 %326 to i64
  %328 = getelementptr inbounds nuw i8, ptr %314, i64 %327
  %329 = and i32 %324, 63
  %330 = zext nneg i32 %329 to i64
  %331 = shl i64 %292, %330
  %332 = lshr i64 %331, %277
  %333 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %332
  %334 = load i16, ptr %333, align 2
  store i16 %334, ptr %328, align 1
  %335 = getelementptr inbounds nuw i8, ptr %333, i64 2
  %336 = load i8, ptr %335, align 2, !tbaa !84
  %337 = zext i8 %336 to i32
  %338 = add i32 %324, %337
  %339 = getelementptr inbounds nuw i8, ptr %333, i64 3
  %340 = load i8, ptr %339, align 1, !tbaa !87
  %341 = zext i8 %340 to i64
  %342 = getelementptr inbounds nuw i8, ptr %328, i64 %341
  %343 = and i32 %338, 63
  %344 = zext nneg i32 %343 to i64
  %345 = shl i64 %292, %344
  %346 = lshr i64 %345, %277
  %347 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %346
  %348 = load i16, ptr %347, align 2
  store i16 %348, ptr %342, align 1
  %349 = getelementptr inbounds nuw i8, ptr %347, i64 2
  %350 = load i8, ptr %349, align 2, !tbaa !84
  %351 = zext i8 %350 to i32
  %352 = add i32 %338, %351
  %353 = getelementptr inbounds nuw i8, ptr %347, i64 3
  %354 = load i8, ptr %353, align 1, !tbaa !87
  %355 = zext i8 %354 to i64
  %356 = getelementptr inbounds nuw i8, ptr %342, i64 %355
  %357 = and i32 %297, 63
  %358 = zext nneg i32 %357 to i64
  %359 = shl i64 %298, %358
  %360 = lshr i64 %359, %277
  %361 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %360
  %362 = load i16, ptr %361, align 2
  store i16 %362, ptr %288, align 1
  %363 = getelementptr inbounds nuw i8, ptr %361, i64 2
  %364 = load i8, ptr %363, align 2, !tbaa !84
  %365 = zext i8 %364 to i32
  %366 = add i32 %297, %365
  %367 = getelementptr inbounds nuw i8, ptr %361, i64 3
  %368 = load i8, ptr %367, align 1, !tbaa !87
  %369 = zext i8 %368 to i64
  %370 = getelementptr inbounds nuw i8, ptr %288, i64 %369
  %371 = and i32 %366, 63
  %372 = zext nneg i32 %371 to i64
  %373 = shl i64 %298, %372
  %374 = lshr i64 %373, %277
  %375 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %374
  %376 = load i16, ptr %375, align 2
  store i16 %376, ptr %370, align 1
  %377 = getelementptr inbounds nuw i8, ptr %375, i64 2
  %378 = load i8, ptr %377, align 2, !tbaa !84
  %379 = zext i8 %378 to i32
  %380 = add i32 %366, %379
  %381 = getelementptr inbounds nuw i8, ptr %375, i64 3
  %382 = load i8, ptr %381, align 1, !tbaa !87
  %383 = zext i8 %382 to i64
  %384 = getelementptr inbounds nuw i8, ptr %370, i64 %383
  %385 = and i32 %380, 63
  %386 = zext nneg i32 %385 to i64
  %387 = shl i64 %298, %386
  %388 = lshr i64 %387, %277
  %389 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %388
  %390 = load i16, ptr %389, align 2
  store i16 %390, ptr %384, align 1
  %391 = getelementptr inbounds nuw i8, ptr %389, i64 2
  %392 = load i8, ptr %391, align 2, !tbaa !84
  %393 = zext i8 %392 to i32
  %394 = add i32 %380, %393
  %395 = getelementptr inbounds nuw i8, ptr %389, i64 3
  %396 = load i8, ptr %395, align 1, !tbaa !87
  %397 = zext i8 %396 to i64
  %398 = getelementptr inbounds nuw i8, ptr %384, i64 %397
  %399 = and i32 %394, 63
  %400 = zext nneg i32 %399 to i64
  %401 = shl i64 %298, %400
  %402 = lshr i64 %401, %277
  %403 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %402
  %404 = load i16, ptr %403, align 2
  store i16 %404, ptr %398, align 1
  %405 = getelementptr inbounds nuw i8, ptr %403, i64 2
  %406 = load i8, ptr %405, align 2, !tbaa !84
  %407 = zext i8 %406 to i32
  %408 = add i32 %394, %407
  %409 = getelementptr inbounds nuw i8, ptr %403, i64 3
  %410 = load i8, ptr %409, align 1, !tbaa !87
  %411 = zext i8 %410 to i64
  %412 = getelementptr inbounds nuw i8, ptr %398, i64 %411
  %413 = icmp ult ptr %299, %45
  br i1 %413, label %421, label %414, !prof !109

414:                                              ; preds = %284
  %415 = lshr i32 %352, 3
  %416 = zext nneg i32 %415 to i64
  %417 = sub nsw i64 0, %416
  %418 = getelementptr inbounds i8, ptr %299, i64 %417
  %419 = and i32 %352, 7
  %420 = load i64, ptr %418, align 1, !tbaa !26
  br label %421

421:                                              ; preds = %414, %284
  %422 = phi ptr [ %299, %284 ], [ %418, %414 ]
  %423 = phi i32 [ %352, %284 ], [ %419, %414 ]
  %424 = phi i64 [ %292, %284 ], [ %420, %414 ]
  %425 = icmp ult ptr %295, %119
  br i1 %425, label %433, label %426, !prof !109

426:                                              ; preds = %421
  %427 = lshr i32 %408, 3
  %428 = zext nneg i32 %427 to i64
  %429 = sub nsw i64 0, %428
  %430 = getelementptr inbounds i8, ptr %295, i64 %429
  %431 = and i32 %408, 7
  %432 = load i64, ptr %430, align 1, !tbaa !26
  br label %433

433:                                              ; preds = %426, %421
  %434 = phi i64 [ %298, %421 ], [ %432, %426 ]
  %435 = phi i32 [ %408, %421 ], [ %431, %426 ]
  %436 = phi ptr [ %295, %421 ], [ %430, %426 ]
  %437 = phi i1 [ true, %421 ], [ %413, %426 ]
  %438 = and i32 %293, 63
  %439 = zext nneg i32 %438 to i64
  %440 = shl i64 %294, %439
  %441 = lshr i64 %440, %277
  %442 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %441
  %443 = load i16, ptr %442, align 2
  store i16 %443, ptr %289, align 1
  %444 = getelementptr inbounds nuw i8, ptr %442, i64 2
  %445 = load i8, ptr %444, align 2, !tbaa !84
  %446 = zext i8 %445 to i32
  %447 = add i32 %293, %446
  %448 = getelementptr inbounds nuw i8, ptr %442, i64 3
  %449 = load i8, ptr %448, align 1, !tbaa !87
  %450 = zext i8 %449 to i64
  %451 = getelementptr inbounds nuw i8, ptr %289, i64 %450
  %452 = and i32 %447, 63
  %453 = zext nneg i32 %452 to i64
  %454 = shl i64 %294, %453
  %455 = lshr i64 %454, %277
  %456 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %455
  %457 = load i16, ptr %456, align 2
  store i16 %457, ptr %451, align 1
  %458 = getelementptr inbounds nuw i8, ptr %456, i64 2
  %459 = load i8, ptr %458, align 2, !tbaa !84
  %460 = zext i8 %459 to i32
  %461 = add i32 %447, %460
  %462 = getelementptr inbounds nuw i8, ptr %456, i64 3
  %463 = load i8, ptr %462, align 1, !tbaa !87
  %464 = zext i8 %463 to i64
  %465 = getelementptr inbounds nuw i8, ptr %451, i64 %464
  %466 = and i32 %461, 63
  %467 = zext nneg i32 %466 to i64
  %468 = shl i64 %294, %467
  %469 = lshr i64 %468, %277
  %470 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %469
  %471 = load i16, ptr %470, align 2
  store i16 %471, ptr %465, align 1
  %472 = getelementptr inbounds nuw i8, ptr %470, i64 2
  %473 = load i8, ptr %472, align 2, !tbaa !84
  %474 = zext i8 %473 to i32
  %475 = add i32 %461, %474
  %476 = getelementptr inbounds nuw i8, ptr %470, i64 3
  %477 = load i8, ptr %476, align 1, !tbaa !87
  %478 = zext i8 %477 to i64
  %479 = getelementptr inbounds nuw i8, ptr %465, i64 %478
  %480 = and i32 %475, 63
  %481 = zext nneg i32 %480 to i64
  %482 = shl i64 %294, %481
  %483 = lshr i64 %482, %277
  %484 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %483
  %485 = load i16, ptr %484, align 2
  store i16 %485, ptr %479, align 1
  %486 = getelementptr inbounds nuw i8, ptr %484, i64 2
  %487 = load i8, ptr %486, align 2, !tbaa !84
  %488 = zext i8 %487 to i32
  %489 = add i32 %475, %488
  %490 = getelementptr inbounds nuw i8, ptr %484, i64 3
  %491 = load i8, ptr %490, align 1, !tbaa !87
  %492 = zext i8 %491 to i64
  %493 = getelementptr inbounds nuw i8, ptr %479, i64 %492
  %494 = and i32 %286, 63
  %495 = zext nneg i32 %494 to i64
  %496 = shl i64 %300, %495
  %497 = lshr i64 %496, %277
  %498 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %497
  %499 = load i16, ptr %498, align 2
  store i16 %499, ptr %290, align 1
  %500 = getelementptr inbounds nuw i8, ptr %498, i64 2
  %501 = load i8, ptr %500, align 2, !tbaa !84
  %502 = zext i8 %501 to i32
  %503 = add i32 %286, %502
  %504 = getelementptr inbounds nuw i8, ptr %498, i64 3
  %505 = load i8, ptr %504, align 1, !tbaa !87
  %506 = zext i8 %505 to i64
  %507 = getelementptr inbounds nuw i8, ptr %290, i64 %506
  %508 = and i32 %503, 63
  %509 = zext nneg i32 %508 to i64
  %510 = shl i64 %300, %509
  %511 = lshr i64 %510, %277
  %512 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %511
  %513 = load i16, ptr %512, align 2
  store i16 %513, ptr %507, align 1
  %514 = getelementptr inbounds nuw i8, ptr %512, i64 2
  %515 = load i8, ptr %514, align 2, !tbaa !84
  %516 = zext i8 %515 to i32
  %517 = add i32 %503, %516
  %518 = getelementptr inbounds nuw i8, ptr %512, i64 3
  %519 = load i8, ptr %518, align 1, !tbaa !87
  %520 = zext i8 %519 to i64
  %521 = getelementptr inbounds nuw i8, ptr %507, i64 %520
  %522 = and i32 %517, 63
  %523 = zext nneg i32 %522 to i64
  %524 = shl i64 %300, %523
  %525 = lshr i64 %524, %277
  %526 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %525
  %527 = load i16, ptr %526, align 2
  store i16 %527, ptr %521, align 1
  %528 = getelementptr inbounds nuw i8, ptr %526, i64 2
  %529 = load i8, ptr %528, align 2, !tbaa !84
  %530 = zext i8 %529 to i32
  %531 = add i32 %517, %530
  %532 = getelementptr inbounds nuw i8, ptr %526, i64 3
  %533 = load i8, ptr %532, align 1, !tbaa !87
  %534 = zext i8 %533 to i64
  %535 = getelementptr inbounds nuw i8, ptr %521, i64 %534
  %536 = and i32 %531, 63
  %537 = zext nneg i32 %536 to i64
  %538 = shl i64 %300, %537
  %539 = lshr i64 %538, %277
  %540 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %539
  %541 = load i16, ptr %540, align 2
  store i16 %541, ptr %535, align 1
  %542 = getelementptr inbounds nuw i8, ptr %540, i64 2
  %543 = load i8, ptr %542, align 2, !tbaa !84
  %544 = zext i8 %543 to i32
  %545 = add i32 %531, %544
  %546 = getelementptr inbounds nuw i8, ptr %540, i64 3
  %547 = load i8, ptr %546, align 1, !tbaa !87
  %548 = zext i8 %547 to i64
  %549 = getelementptr inbounds nuw i8, ptr %535, i64 %548
  %550 = icmp ult ptr %291, %193
  br i1 %550, label %558, label %551, !prof !109

551:                                              ; preds = %433
  %552 = lshr i32 %489, 3
  %553 = zext nneg i32 %552 to i64
  %554 = sub nsw i64 0, %553
  %555 = getelementptr inbounds i8, ptr %291, i64 %554
  %556 = and i32 %489, 7
  %557 = load i64, ptr %555, align 1, !tbaa !26
  br label %558

558:                                              ; preds = %551, %433
  %559 = phi i64 [ %294, %433 ], [ %557, %551 ]
  %560 = phi i32 [ %489, %433 ], [ %556, %551 ]
  %561 = phi ptr [ %291, %433 ], [ %555, %551 ]
  %562 = phi i1 [ true, %433 ], [ %437, %551 ]
  %563 = icmp ult ptr %285, %281
  br i1 %563, label %.thread, label %564, !prof !109

564:                                              ; preds = %558
  %565 = lshr i32 %545, 3
  %566 = zext nneg i32 %565 to i64
  %567 = sub nsw i64 0, %566
  %568 = getelementptr inbounds i8, ptr %285, i64 %567
  store ptr %568, ptr %279, align 8, !tbaa !108
  %569 = and i32 %545, 7
  %570 = load i64, ptr %568, align 1, !tbaa !26
  store i64 %570, ptr %6, align 8, !tbaa !110
  %571 = icmp uge ptr %549, %12
  %572 = or i1 %571, %562
  br i1 %572, label %.thread, label %284, !llvm.loop !111

.thread:                                          ; preds = %558, %564
  %573 = phi i32 [ %569, %564 ], [ %545, %558 ]
  store i32 %573, ptr %278, align 8, !tbaa !107
  br label %574

574:                                              ; preds = %.thread, %267
  %575 = phi ptr [ %114, %267 ], [ %422, %.thread ]
  %576 = phi i64 [ %188, %267 ], [ %434, %.thread ]
  %577 = phi i32 [ %189, %267 ], [ %435, %.thread ]
  %578 = phi i32 [ %115, %267 ], [ %423, %.thread ]
  %579 = phi ptr [ %190, %267 ], [ %436, %.thread ]
  %580 = phi i64 [ %262, %267 ], [ %559, %.thread ]
  %581 = phi i32 [ %263, %267 ], [ %560, %.thread ]
  %582 = phi i64 [ %116, %267 ], [ %424, %.thread ]
  %583 = phi ptr [ %264, %267 ], [ %561, %.thread ]
  %584 = phi ptr [ %34, %267 ], [ %549, %.thread ]
  %585 = phi ptr [ %33, %267 ], [ %493, %.thread ]
  %586 = phi ptr [ %32, %267 ], [ %412, %.thread ]
  %587 = phi ptr [ %0, %267 ], [ %356, %.thread ]
  %588 = icmp ugt ptr %587, %32
  %589 = icmp ugt ptr %586, %33
  %590 = select i1 %588, i1 true, i1 %589
  %591 = icmp ugt ptr %585, %34
  %592 = select i1 %590, i1 true, i1 %591
  br i1 %592, label %2125, label %593

593:                                              ; preds = %574
  %594 = ptrtoint ptr %32 to i64
  %595 = ptrtoint ptr %587 to i64
  %596 = sub i64 %594, %595
  %597 = icmp ugt i64 %596, 7
  br i1 %597, label %598, label %811

598:                                              ; preds = %593
  %599 = icmp samesign ult i32 %37, 12
  %600 = icmp ugt i32 %578, 64
  br i1 %599, label %608, label %601

601:                                              ; preds = %598
  br i1 %600, label %.loopexit218, label %602, !prof !91

602:                                              ; preds = %601
  %603 = ptrtoint ptr %26 to i64
  %604 = getelementptr inbounds i8, ptr %32, i64 -7
  %605 = sub nsw i32 0, %36
  %606 = and i32 %605, 63
  %607 = zext nneg i32 %606 to i64
  br label %720

608:                                              ; preds = %598
  br i1 %600, label %.loopexit218, label %609, !prof !91

609:                                              ; preds = %608
  %610 = ptrtoint ptr %26 to i64
  %611 = getelementptr inbounds i8, ptr %32, i64 -9
  %612 = sub nsw i32 0, %36
  %613 = and i32 %612, 63
  %614 = zext nneg i32 %613 to i64
  br label %615

615:                                              ; preds = %648, %609
  %616 = phi ptr [ %587, %609 ], [ %718, %648 ]
  %617 = phi i64 [ %582, %609 ], [ %645, %648 ]
  %618 = phi i32 [ %578, %609 ], [ %714, %648 ]
  %619 = phi ptr [ %575, %609 ], [ %644, %648 ]
  %620 = icmp ult ptr %619, %45
  br i1 %620, label %624, label %621

621:                                              ; preds = %615
  %622 = lshr i32 %618, 3
  %623 = and i32 %618, 7
  br label %638

624:                                              ; preds = %615
  %625 = icmp eq ptr %619, %26
  br i1 %625, label %.loopexit218, label %626

626:                                              ; preds = %624
  %627 = lshr i32 %618, 3
  %628 = zext nneg i32 %627 to i64
  %629 = sub nsw i64 0, %628
  %630 = getelementptr inbounds i8, ptr %619, i64 %629
  %631 = icmp uge ptr %630, %26
  %632 = ptrtoint ptr %619 to i64
  %633 = sub i64 %632, %610
  %634 = trunc i64 %633 to i32
  %635 = select i1 %631, i32 %627, i32 %634
  %636 = shl i32 %635, 3
  %637 = sub i32 %618, %636
  br label %638

638:                                              ; preds = %626, %621
  %639 = phi i32 [ %635, %626 ], [ %622, %621 ]
  %640 = phi i32 [ %637, %626 ], [ %623, %621 ]
  %641 = phi i1 [ %631, %626 ], [ true, %621 ]
  %642 = zext i32 %639 to i64
  %643 = sub nsw i64 0, %642
  %644 = getelementptr inbounds i8, ptr %619, i64 %643
  %645 = load i64, ptr %644, align 1, !tbaa !26
  %646 = icmp ult ptr %616, %611
  %647 = and i1 %646, %641
  br i1 %647, label %648, label %.loopexit218

648:                                              ; preds = %638
  %649 = and i32 %640, 63
  %650 = zext nneg i32 %649 to i64
  %651 = shl i64 %645, %650
  %652 = lshr i64 %651, %614
  %653 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %652
  %654 = load i16, ptr %653, align 2
  store i16 %654, ptr %616, align 1
  %655 = getelementptr inbounds nuw i8, ptr %653, i64 2
  %656 = load i8, ptr %655, align 2, !tbaa !84
  %657 = zext i8 %656 to i32
  %658 = add i32 %640, %657
  %659 = getelementptr inbounds nuw i8, ptr %653, i64 3
  %660 = load i8, ptr %659, align 1, !tbaa !87
  %661 = zext i8 %660 to i64
  %662 = getelementptr inbounds nuw i8, ptr %616, i64 %661
  %663 = and i32 %658, 63
  %664 = zext nneg i32 %663 to i64
  %665 = shl i64 %645, %664
  %666 = lshr i64 %665, %614
  %667 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %666
  %668 = load i16, ptr %667, align 2
  store i16 %668, ptr %662, align 1
  %669 = getelementptr inbounds nuw i8, ptr %667, i64 2
  %670 = load i8, ptr %669, align 2, !tbaa !84
  %671 = zext i8 %670 to i32
  %672 = add i32 %658, %671
  %673 = getelementptr inbounds nuw i8, ptr %667, i64 3
  %674 = load i8, ptr %673, align 1, !tbaa !87
  %675 = zext i8 %674 to i64
  %676 = getelementptr inbounds nuw i8, ptr %662, i64 %675
  %677 = and i32 %672, 63
  %678 = zext nneg i32 %677 to i64
  %679 = shl i64 %645, %678
  %680 = lshr i64 %679, %614
  %681 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %680
  %682 = load i16, ptr %681, align 2
  store i16 %682, ptr %676, align 1
  %683 = getelementptr inbounds nuw i8, ptr %681, i64 2
  %684 = load i8, ptr %683, align 2, !tbaa !84
  %685 = zext i8 %684 to i32
  %686 = add i32 %672, %685
  %687 = getelementptr inbounds nuw i8, ptr %681, i64 3
  %688 = load i8, ptr %687, align 1, !tbaa !87
  %689 = zext i8 %688 to i64
  %690 = getelementptr inbounds nuw i8, ptr %676, i64 %689
  %691 = and i32 %686, 63
  %692 = zext nneg i32 %691 to i64
  %693 = shl i64 %645, %692
  %694 = lshr i64 %693, %614
  %695 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %694
  %696 = load i16, ptr %695, align 2
  store i16 %696, ptr %690, align 1
  %697 = getelementptr inbounds nuw i8, ptr %695, i64 2
  %698 = load i8, ptr %697, align 2, !tbaa !84
  %699 = zext i8 %698 to i32
  %700 = add i32 %686, %699
  %701 = getelementptr inbounds nuw i8, ptr %695, i64 3
  %702 = load i8, ptr %701, align 1, !tbaa !87
  %703 = zext i8 %702 to i64
  %704 = getelementptr inbounds nuw i8, ptr %690, i64 %703
  %705 = and i32 %700, 63
  %706 = zext nneg i32 %705 to i64
  %707 = shl i64 %645, %706
  %708 = lshr i64 %707, %614
  %709 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %708
  %710 = load i16, ptr %709, align 2
  store i16 %710, ptr %704, align 1
  %711 = getelementptr inbounds nuw i8, ptr %709, i64 2
  %712 = load i8, ptr %711, align 2, !tbaa !84
  %713 = zext i8 %712 to i32
  %714 = add i32 %700, %713
  %715 = getelementptr inbounds nuw i8, ptr %709, i64 3
  %716 = load i8, ptr %715, align 1, !tbaa !87
  %717 = zext i8 %716 to i64
  %718 = getelementptr inbounds nuw i8, ptr %704, i64 %717
  %719 = icmp ugt i32 %714, 64
  br i1 %719, label %.loopexit218, label %615, !prof !88, !llvm.loop !89

720:                                              ; preds = %753, %602
  %721 = phi ptr [ %587, %602 ], [ %809, %753 ]
  %722 = phi i64 [ %582, %602 ], [ %750, %753 ]
  %723 = phi i32 [ %578, %602 ], [ %805, %753 ]
  %724 = phi ptr [ %575, %602 ], [ %749, %753 ]
  %725 = icmp ult ptr %724, %45
  br i1 %725, label %729, label %726

726:                                              ; preds = %720
  %727 = lshr i32 %723, 3
  %728 = and i32 %723, 7
  br label %743

729:                                              ; preds = %720
  %730 = icmp eq ptr %724, %26
  br i1 %730, label %.loopexit218, label %731

731:                                              ; preds = %729
  %732 = lshr i32 %723, 3
  %733 = zext nneg i32 %732 to i64
  %734 = sub nsw i64 0, %733
  %735 = getelementptr inbounds i8, ptr %724, i64 %734
  %736 = icmp uge ptr %735, %26
  %737 = ptrtoint ptr %724 to i64
  %738 = sub i64 %737, %603
  %739 = trunc i64 %738 to i32
  %740 = select i1 %736, i32 %732, i32 %739
  %741 = shl i32 %740, 3
  %742 = sub i32 %723, %741
  br label %743

743:                                              ; preds = %731, %726
  %744 = phi i32 [ %740, %731 ], [ %727, %726 ]
  %745 = phi i32 [ %742, %731 ], [ %728, %726 ]
  %746 = phi i1 [ %736, %731 ], [ true, %726 ]
  %747 = zext i32 %744 to i64
  %748 = sub nsw i64 0, %747
  %749 = getelementptr inbounds i8, ptr %724, i64 %748
  %750 = load i64, ptr %749, align 1, !tbaa !26
  %751 = icmp ult ptr %721, %604
  %752 = and i1 %751, %746
  br i1 %752, label %753, label %.loopexit218

753:                                              ; preds = %743
  %754 = and i32 %745, 63
  %755 = zext nneg i32 %754 to i64
  %756 = shl i64 %750, %755
  %757 = lshr i64 %756, %607
  %758 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %757
  %759 = load i16, ptr %758, align 2
  store i16 %759, ptr %721, align 1
  %760 = getelementptr inbounds nuw i8, ptr %758, i64 2
  %761 = load i8, ptr %760, align 2, !tbaa !84
  %762 = zext i8 %761 to i32
  %763 = add i32 %745, %762
  %764 = getelementptr inbounds nuw i8, ptr %758, i64 3
  %765 = load i8, ptr %764, align 1, !tbaa !87
  %766 = zext i8 %765 to i64
  %767 = getelementptr inbounds nuw i8, ptr %721, i64 %766
  %768 = and i32 %763, 63
  %769 = zext nneg i32 %768 to i64
  %770 = shl i64 %750, %769
  %771 = lshr i64 %770, %607
  %772 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %771
  %773 = load i16, ptr %772, align 2
  store i16 %773, ptr %767, align 1
  %774 = getelementptr inbounds nuw i8, ptr %772, i64 2
  %775 = load i8, ptr %774, align 2, !tbaa !84
  %776 = zext i8 %775 to i32
  %777 = add i32 %763, %776
  %778 = getelementptr inbounds nuw i8, ptr %772, i64 3
  %779 = load i8, ptr %778, align 1, !tbaa !87
  %780 = zext i8 %779 to i64
  %781 = getelementptr inbounds nuw i8, ptr %767, i64 %780
  %782 = and i32 %777, 63
  %783 = zext nneg i32 %782 to i64
  %784 = shl i64 %750, %783
  %785 = lshr i64 %784, %607
  %786 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %785
  %787 = load i16, ptr %786, align 2
  store i16 %787, ptr %781, align 1
  %788 = getelementptr inbounds nuw i8, ptr %786, i64 2
  %789 = load i8, ptr %788, align 2, !tbaa !84
  %790 = zext i8 %789 to i32
  %791 = add i32 %777, %790
  %792 = getelementptr inbounds nuw i8, ptr %786, i64 3
  %793 = load i8, ptr %792, align 1, !tbaa !87
  %794 = zext i8 %793 to i64
  %795 = getelementptr inbounds nuw i8, ptr %781, i64 %794
  %796 = and i32 %791, 63
  %797 = zext nneg i32 %796 to i64
  %798 = shl i64 %750, %797
  %799 = lshr i64 %798, %607
  %800 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %799
  %801 = load i16, ptr %800, align 2
  store i16 %801, ptr %795, align 1
  %802 = getelementptr inbounds nuw i8, ptr %800, i64 2
  %803 = load i8, ptr %802, align 2, !tbaa !84
  %804 = zext i8 %803 to i32
  %805 = add i32 %791, %804
  %806 = getelementptr inbounds nuw i8, ptr %800, i64 3
  %807 = load i8, ptr %806, align 1, !tbaa !87
  %808 = zext i8 %807 to i64
  %809 = getelementptr inbounds nuw i8, ptr %795, i64 %808
  %810 = icmp ugt i32 %805, 64
  br i1 %810, label %.loopexit218, label %720, !prof !88, !llvm.loop !90

811:                                              ; preds = %593
  %812 = icmp ugt i32 %578, 64
  br i1 %812, label %.loopexit218, label %813, !prof !109

813:                                              ; preds = %811
  %814 = icmp ult ptr %575, %45
  br i1 %814, label %822, label %815

815:                                              ; preds = %813
  %816 = lshr i32 %578, 3
  %817 = zext nneg i32 %816 to i64
  %818 = sub nsw i64 0, %817
  %819 = getelementptr inbounds i8, ptr %575, i64 %818
  %820 = and i32 %578, 7
  %821 = load i64, ptr %819, align 1, !tbaa !26
  br label %.loopexit218

822:                                              ; preds = %813
  %823 = icmp eq ptr %575, %26
  br i1 %823, label %.loopexit218, label %824

824:                                              ; preds = %822
  %825 = lshr i32 %578, 3
  %826 = zext nneg i32 %825 to i64
  %827 = sub nsw i64 0, %826
  %828 = getelementptr inbounds i8, ptr %575, i64 %827
  %829 = icmp ult ptr %828, %26
  %830 = ptrtoint ptr %575 to i64
  %831 = ptrtoint ptr %26 to i64
  %832 = sub i64 %830, %831
  %833 = trunc i64 %832 to i32
  %834 = select i1 %829, i32 %833, i32 %825
  %835 = zext i32 %834 to i64
  %836 = sub nsw i64 0, %835
  %837 = getelementptr inbounds i8, ptr %575, i64 %836
  %838 = shl i32 %834, 3
  %839 = sub i32 %578, %838
  %840 = load i64, ptr %837, align 1, !tbaa !26
  br label %.loopexit218

.loopexit218:                                     ; preds = %753, %743, %729, %648, %638, %624, %824, %822, %815, %811, %608, %601
  %841 = phi ptr [ %837, %824 ], [ %819, %815 ], [ @BIT_reloadDStream.zeroFilled, %811 ], [ %26, %822 ], [ @BIT_reloadDStream.zeroFilled, %608 ], [ @BIT_reloadDStream.zeroFilled, %601 ], [ %644, %638 ], [ %26, %624 ], [ @BIT_reloadDStream.zeroFilled, %648 ], [ %26, %729 ], [ @BIT_reloadDStream.zeroFilled, %753 ], [ %749, %743 ]
  %842 = phi i32 [ %839, %824 ], [ %820, %815 ], [ %578, %811 ], [ %578, %822 ], [ %578, %608 ], [ %578, %601 ], [ %640, %638 ], [ %618, %624 ], [ %714, %648 ], [ %723, %729 ], [ %805, %753 ], [ %745, %743 ]
  %843 = phi i64 [ %840, %824 ], [ %821, %815 ], [ %582, %811 ], [ %582, %822 ], [ %582, %608 ], [ %582, %601 ], [ %645, %638 ], [ %617, %624 ], [ %645, %648 ], [ %722, %729 ], [ %750, %753 ], [ %750, %743 ]
  %844 = phi ptr [ %587, %824 ], [ %587, %815 ], [ %587, %811 ], [ %587, %822 ], [ %587, %608 ], [ %587, %601 ], [ %616, %638 ], [ %616, %624 ], [ %718, %648 ], [ %721, %729 ], [ %809, %753 ], [ %721, %743 ]
  %845 = ptrtoint ptr %844 to i64
  %846 = sub i64 %594, %845
  %847 = icmp ugt i64 %846, 1
  br i1 %847, label %848, label %.loopexit211

848:                                              ; preds = %.loopexit218
  %849 = getelementptr inbounds i8, ptr %32, i64 -2
  %850 = ptrtoint ptr %26 to i64
  %851 = sub nsw i32 0, %36
  %852 = and i32 %851, 63
  %853 = zext nneg i32 %852 to i64
  %854 = icmp ugt i32 %842, 64
  br i1 %854, label %.loopexit213, label %.preheader212, !prof !91

.preheader212:                                    ; preds = %848, %892
  %855 = phi ptr [ %906, %892 ], [ %844, %848 ]
  %856 = phi i64 [ %884, %892 ], [ %843, %848 ]
  %857 = phi i32 [ %902, %892 ], [ %842, %848 ]
  %858 = phi ptr [ %883, %892 ], [ %841, %848 ]
  %859 = icmp ult ptr %858, %45
  br i1 %859, label %863, label %860

860:                                              ; preds = %.preheader212
  %861 = lshr i32 %857, 3
  %862 = and i32 %857, 7
  br label %877

863:                                              ; preds = %.preheader212
  %864 = icmp eq ptr %858, %26
  br i1 %864, label %.loopexit213, label %865

865:                                              ; preds = %863
  %866 = lshr i32 %857, 3
  %867 = zext nneg i32 %866 to i64
  %868 = sub nsw i64 0, %867
  %869 = getelementptr inbounds i8, ptr %858, i64 %868
  %870 = icmp uge ptr %869, %26
  %871 = ptrtoint ptr %858 to i64
  %872 = sub i64 %871, %850
  %873 = trunc i64 %872 to i32
  %874 = select i1 %870, i32 %866, i32 %873
  %875 = shl i32 %874, 3
  %876 = sub i32 %857, %875
  br label %877

877:                                              ; preds = %865, %860
  %878 = phi i32 [ %874, %865 ], [ %861, %860 ]
  %879 = phi i32 [ %876, %865 ], [ %862, %860 ]
  %880 = phi i1 [ %870, %865 ], [ true, %860 ]
  %881 = zext i32 %878 to i64
  %882 = sub nsw i64 0, %881
  %883 = getelementptr inbounds i8, ptr %858, i64 %882
  %884 = load i64, ptr %883, align 1, !tbaa !26
  %885 = icmp ule ptr %855, %849
  %886 = and i1 %885, %880
  br i1 %886, label %892, label %.loopexit213

.loopexit213:                                     ; preds = %892, %877, %863, %848
  %887 = phi ptr [ %844, %848 ], [ %855, %863 ], [ %906, %892 ], [ %855, %877 ]
  %888 = phi i64 [ %843, %848 ], [ %856, %863 ], [ %884, %892 ], [ %884, %877 ]
  %889 = phi i32 [ %842, %848 ], [ %857, %863 ], [ %902, %892 ], [ %879, %877 ]
  %890 = phi ptr [ @BIT_reloadDStream.zeroFilled, %848 ], [ %26, %863 ], [ @BIT_reloadDStream.zeroFilled, %892 ], [ %883, %877 ]
  %891 = icmp ugt ptr %887, %849
  br i1 %891, label %.loopexit211, label %.preheader210

892:                                              ; preds = %877
  %893 = and i32 %879, 63
  %894 = zext nneg i32 %893 to i64
  %895 = shl i64 %884, %894
  %896 = lshr i64 %895, %853
  %897 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %896
  %898 = load i16, ptr %897, align 2
  store i16 %898, ptr %855, align 1
  %899 = getelementptr inbounds nuw i8, ptr %897, i64 2
  %900 = load i8, ptr %899, align 2, !tbaa !84
  %901 = zext i8 %900 to i32
  %902 = add i32 %879, %901
  %903 = getelementptr inbounds nuw i8, ptr %897, i64 3
  %904 = load i8, ptr %903, align 1, !tbaa !87
  %905 = zext i8 %904 to i64
  %906 = getelementptr inbounds nuw i8, ptr %855, i64 %905
  %907 = icmp ugt i32 %902, 64
  br i1 %907, label %.loopexit213, label %.preheader212, !prof !88, !llvm.loop !92

.preheader210:                                    ; preds = %.loopexit213, %.preheader210
  %908 = phi ptr [ %923, %.preheader210 ], [ %887, %.loopexit213 ]
  %909 = phi i32 [ %919, %.preheader210 ], [ %889, %.loopexit213 ]
  %910 = and i32 %909, 63
  %911 = zext nneg i32 %910 to i64
  %912 = shl i64 %888, %911
  %913 = lshr i64 %912, %853
  %914 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %913
  %915 = load i16, ptr %914, align 2
  store i16 %915, ptr %908, align 1
  %916 = getelementptr inbounds nuw i8, ptr %914, i64 2
  %917 = load i8, ptr %916, align 2, !tbaa !84
  %918 = zext i8 %917 to i32
  %919 = add i32 %909, %918
  %920 = getelementptr inbounds nuw i8, ptr %914, i64 3
  %921 = load i8, ptr %920, align 1, !tbaa !87
  %922 = zext i8 %921 to i64
  %923 = getelementptr inbounds nuw i8, ptr %908, i64 %922
  %924 = icmp ugt ptr %923, %849
  br i1 %924, label %.loopexit211, label %.preheader210, !llvm.loop !93

.loopexit211:                                     ; preds = %.preheader210, %.loopexit213, %.loopexit218
  %925 = phi ptr [ %841, %.loopexit218 ], [ %890, %.loopexit213 ], [ %890, %.preheader210 ]
  %926 = phi i32 [ %842, %.loopexit218 ], [ %889, %.loopexit213 ], [ %919, %.preheader210 ]
  %927 = phi i64 [ %843, %.loopexit218 ], [ %888, %.loopexit213 ], [ %888, %.preheader210 ]
  %928 = phi ptr [ %844, %.loopexit218 ], [ %887, %.loopexit213 ], [ %923, %.preheader210 ]
  %929 = icmp ult ptr %928, %32
  br i1 %929, label %930, label %956

930:                                              ; preds = %.loopexit211
  %931 = and i32 %926, 63
  %932 = zext nneg i32 %931 to i64
  %933 = shl i64 %927, %932
  %934 = sub nsw i32 0, %36
  %935 = and i32 %934, 63
  %936 = zext nneg i32 %935 to i64
  %937 = lshr i64 %933, %936
  %938 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %937
  %939 = load i8, ptr %938, align 2
  store i8 %939, ptr %928, align 1
  %940 = getelementptr inbounds nuw i8, ptr %938, i64 3
  %941 = load i8, ptr %940, align 1, !tbaa !87
  %942 = icmp eq i8 %941, 1
  br i1 %942, label %943, label %948

943:                                              ; preds = %930
  %944 = getelementptr inbounds nuw i8, ptr %938, i64 2
  %945 = load i8, ptr %944, align 2, !tbaa !84
  %946 = zext i8 %945 to i32
  %947 = add i32 %926, %946
  br label %956

948:                                              ; preds = %930
  %949 = icmp ult i32 %926, 64
  br i1 %949, label %950, label %956

950:                                              ; preds = %948
  %951 = getelementptr inbounds nuw i8, ptr %938, i64 2
  %952 = load i8, ptr %951, align 2, !tbaa !84
  %953 = zext i8 %952 to i32
  %954 = add nuw nsw i32 %926, %953
  %955 = tail call i32 @llvm.umin.i32(i32 %954, i32 64)
  br label %956

956:                                              ; preds = %950, %948, %943, %.loopexit211
  %957 = phi i32 [ %926, %.loopexit211 ], [ %947, %943 ], [ %926, %948 ], [ %955, %950 ]
  %958 = ptrtoint ptr %33 to i64
  %959 = ptrtoint ptr %586 to i64
  %960 = sub i64 %958, %959
  %961 = icmp ugt i64 %960, 7
  br i1 %961, label %962, label %1175

962:                                              ; preds = %956
  %963 = icmp samesign ult i32 %37, 12
  %964 = icmp ugt i32 %577, 64
  br i1 %963, label %972, label %965

965:                                              ; preds = %962
  br i1 %964, label %.loopexit200, label %966, !prof !91

966:                                              ; preds = %965
  %967 = ptrtoint ptr %27 to i64
  %968 = getelementptr inbounds i8, ptr %33, i64 -7
  %969 = sub nsw i32 0, %36
  %970 = and i32 %969, 63
  %971 = zext nneg i32 %970 to i64
  br label %1084

972:                                              ; preds = %962
  br i1 %964, label %.loopexit200, label %973, !prof !91

973:                                              ; preds = %972
  %974 = ptrtoint ptr %27 to i64
  %975 = getelementptr inbounds i8, ptr %33, i64 -9
  %976 = sub nsw i32 0, %36
  %977 = and i32 %976, 63
  %978 = zext nneg i32 %977 to i64
  br label %979

979:                                              ; preds = %1012, %973
  %980 = phi ptr [ %586, %973 ], [ %1082, %1012 ]
  %981 = phi ptr [ %579, %973 ], [ %1008, %1012 ]
  %982 = phi i32 [ %577, %973 ], [ %1078, %1012 ]
  %983 = phi i64 [ %576, %973 ], [ %1009, %1012 ]
  %984 = icmp ult ptr %981, %119
  br i1 %984, label %988, label %985

985:                                              ; preds = %979
  %986 = lshr i32 %982, 3
  %987 = and i32 %982, 7
  br label %1002

988:                                              ; preds = %979
  %989 = icmp eq ptr %981, %27
  br i1 %989, label %.loopexit200, label %990

990:                                              ; preds = %988
  %991 = lshr i32 %982, 3
  %992 = zext nneg i32 %991 to i64
  %993 = sub nsw i64 0, %992
  %994 = getelementptr inbounds i8, ptr %981, i64 %993
  %995 = icmp uge ptr %994, %27
  %996 = ptrtoint ptr %981 to i64
  %997 = sub i64 %996, %974
  %998 = trunc i64 %997 to i32
  %999 = select i1 %995, i32 %991, i32 %998
  %1000 = shl i32 %999, 3
  %1001 = sub i32 %982, %1000
  br label %1002

1002:                                             ; preds = %990, %985
  %1003 = phi i32 [ %1001, %990 ], [ %987, %985 ]
  %1004 = phi i32 [ %999, %990 ], [ %986, %985 ]
  %1005 = phi i1 [ %995, %990 ], [ true, %985 ]
  %1006 = zext i32 %1004 to i64
  %1007 = sub nsw i64 0, %1006
  %1008 = getelementptr inbounds i8, ptr %981, i64 %1007
  %1009 = load i64, ptr %1008, align 1, !tbaa !26
  %1010 = icmp ult ptr %980, %975
  %1011 = and i1 %1010, %1005
  br i1 %1011, label %1012, label %.loopexit200

1012:                                             ; preds = %1002
  %1013 = and i32 %1003, 63
  %1014 = zext nneg i32 %1013 to i64
  %1015 = shl i64 %1009, %1014
  %1016 = lshr i64 %1015, %978
  %1017 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1016
  %1018 = load i16, ptr %1017, align 2
  store i16 %1018, ptr %980, align 1
  %1019 = getelementptr inbounds nuw i8, ptr %1017, i64 2
  %1020 = load i8, ptr %1019, align 2, !tbaa !84
  %1021 = zext i8 %1020 to i32
  %1022 = add i32 %1003, %1021
  %1023 = getelementptr inbounds nuw i8, ptr %1017, i64 3
  %1024 = load i8, ptr %1023, align 1, !tbaa !87
  %1025 = zext i8 %1024 to i64
  %1026 = getelementptr inbounds nuw i8, ptr %980, i64 %1025
  %1027 = and i32 %1022, 63
  %1028 = zext nneg i32 %1027 to i64
  %1029 = shl i64 %1009, %1028
  %1030 = lshr i64 %1029, %978
  %1031 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1030
  %1032 = load i16, ptr %1031, align 2
  store i16 %1032, ptr %1026, align 1
  %1033 = getelementptr inbounds nuw i8, ptr %1031, i64 2
  %1034 = load i8, ptr %1033, align 2, !tbaa !84
  %1035 = zext i8 %1034 to i32
  %1036 = add i32 %1022, %1035
  %1037 = getelementptr inbounds nuw i8, ptr %1031, i64 3
  %1038 = load i8, ptr %1037, align 1, !tbaa !87
  %1039 = zext i8 %1038 to i64
  %1040 = getelementptr inbounds nuw i8, ptr %1026, i64 %1039
  %1041 = and i32 %1036, 63
  %1042 = zext nneg i32 %1041 to i64
  %1043 = shl i64 %1009, %1042
  %1044 = lshr i64 %1043, %978
  %1045 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1044
  %1046 = load i16, ptr %1045, align 2
  store i16 %1046, ptr %1040, align 1
  %1047 = getelementptr inbounds nuw i8, ptr %1045, i64 2
  %1048 = load i8, ptr %1047, align 2, !tbaa !84
  %1049 = zext i8 %1048 to i32
  %1050 = add i32 %1036, %1049
  %1051 = getelementptr inbounds nuw i8, ptr %1045, i64 3
  %1052 = load i8, ptr %1051, align 1, !tbaa !87
  %1053 = zext i8 %1052 to i64
  %1054 = getelementptr inbounds nuw i8, ptr %1040, i64 %1053
  %1055 = and i32 %1050, 63
  %1056 = zext nneg i32 %1055 to i64
  %1057 = shl i64 %1009, %1056
  %1058 = lshr i64 %1057, %978
  %1059 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1058
  %1060 = load i16, ptr %1059, align 2
  store i16 %1060, ptr %1054, align 1
  %1061 = getelementptr inbounds nuw i8, ptr %1059, i64 2
  %1062 = load i8, ptr %1061, align 2, !tbaa !84
  %1063 = zext i8 %1062 to i32
  %1064 = add i32 %1050, %1063
  %1065 = getelementptr inbounds nuw i8, ptr %1059, i64 3
  %1066 = load i8, ptr %1065, align 1, !tbaa !87
  %1067 = zext i8 %1066 to i64
  %1068 = getelementptr inbounds nuw i8, ptr %1054, i64 %1067
  %1069 = and i32 %1064, 63
  %1070 = zext nneg i32 %1069 to i64
  %1071 = shl i64 %1009, %1070
  %1072 = lshr i64 %1071, %978
  %1073 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1072
  %1074 = load i16, ptr %1073, align 2
  store i16 %1074, ptr %1068, align 1
  %1075 = getelementptr inbounds nuw i8, ptr %1073, i64 2
  %1076 = load i8, ptr %1075, align 2, !tbaa !84
  %1077 = zext i8 %1076 to i32
  %1078 = add i32 %1064, %1077
  %1079 = getelementptr inbounds nuw i8, ptr %1073, i64 3
  %1080 = load i8, ptr %1079, align 1, !tbaa !87
  %1081 = zext i8 %1080 to i64
  %1082 = getelementptr inbounds nuw i8, ptr %1068, i64 %1081
  %1083 = icmp ugt i32 %1078, 64
  br i1 %1083, label %.loopexit200, label %979, !prof !88, !llvm.loop !89

1084:                                             ; preds = %1117, %966
  %1085 = phi ptr [ %586, %966 ], [ %1173, %1117 ]
  %1086 = phi ptr [ %579, %966 ], [ %1113, %1117 ]
  %1087 = phi i32 [ %577, %966 ], [ %1169, %1117 ]
  %1088 = phi i64 [ %576, %966 ], [ %1114, %1117 ]
  %1089 = icmp ult ptr %1086, %119
  br i1 %1089, label %1093, label %1090

1090:                                             ; preds = %1084
  %1091 = lshr i32 %1087, 3
  %1092 = and i32 %1087, 7
  br label %1107

1093:                                             ; preds = %1084
  %1094 = icmp eq ptr %1086, %27
  br i1 %1094, label %.loopexit200, label %1095

1095:                                             ; preds = %1093
  %1096 = lshr i32 %1087, 3
  %1097 = zext nneg i32 %1096 to i64
  %1098 = sub nsw i64 0, %1097
  %1099 = getelementptr inbounds i8, ptr %1086, i64 %1098
  %1100 = icmp uge ptr %1099, %27
  %1101 = ptrtoint ptr %1086 to i64
  %1102 = sub i64 %1101, %967
  %1103 = trunc i64 %1102 to i32
  %1104 = select i1 %1100, i32 %1096, i32 %1103
  %1105 = shl i32 %1104, 3
  %1106 = sub i32 %1087, %1105
  br label %1107

1107:                                             ; preds = %1095, %1090
  %1108 = phi i32 [ %1106, %1095 ], [ %1092, %1090 ]
  %1109 = phi i32 [ %1104, %1095 ], [ %1091, %1090 ]
  %1110 = phi i1 [ %1100, %1095 ], [ true, %1090 ]
  %1111 = zext i32 %1109 to i64
  %1112 = sub nsw i64 0, %1111
  %1113 = getelementptr inbounds i8, ptr %1086, i64 %1112
  %1114 = load i64, ptr %1113, align 1, !tbaa !26
  %1115 = icmp ult ptr %1085, %968
  %1116 = and i1 %1115, %1110
  br i1 %1116, label %1117, label %.loopexit200

1117:                                             ; preds = %1107
  %1118 = and i32 %1108, 63
  %1119 = zext nneg i32 %1118 to i64
  %1120 = shl i64 %1114, %1119
  %1121 = lshr i64 %1120, %971
  %1122 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1121
  %1123 = load i16, ptr %1122, align 2
  store i16 %1123, ptr %1085, align 1
  %1124 = getelementptr inbounds nuw i8, ptr %1122, i64 2
  %1125 = load i8, ptr %1124, align 2, !tbaa !84
  %1126 = zext i8 %1125 to i32
  %1127 = add i32 %1108, %1126
  %1128 = getelementptr inbounds nuw i8, ptr %1122, i64 3
  %1129 = load i8, ptr %1128, align 1, !tbaa !87
  %1130 = zext i8 %1129 to i64
  %1131 = getelementptr inbounds nuw i8, ptr %1085, i64 %1130
  %1132 = and i32 %1127, 63
  %1133 = zext nneg i32 %1132 to i64
  %1134 = shl i64 %1114, %1133
  %1135 = lshr i64 %1134, %971
  %1136 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1135
  %1137 = load i16, ptr %1136, align 2
  store i16 %1137, ptr %1131, align 1
  %1138 = getelementptr inbounds nuw i8, ptr %1136, i64 2
  %1139 = load i8, ptr %1138, align 2, !tbaa !84
  %1140 = zext i8 %1139 to i32
  %1141 = add i32 %1127, %1140
  %1142 = getelementptr inbounds nuw i8, ptr %1136, i64 3
  %1143 = load i8, ptr %1142, align 1, !tbaa !87
  %1144 = zext i8 %1143 to i64
  %1145 = getelementptr inbounds nuw i8, ptr %1131, i64 %1144
  %1146 = and i32 %1141, 63
  %1147 = zext nneg i32 %1146 to i64
  %1148 = shl i64 %1114, %1147
  %1149 = lshr i64 %1148, %971
  %1150 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1149
  %1151 = load i16, ptr %1150, align 2
  store i16 %1151, ptr %1145, align 1
  %1152 = getelementptr inbounds nuw i8, ptr %1150, i64 2
  %1153 = load i8, ptr %1152, align 2, !tbaa !84
  %1154 = zext i8 %1153 to i32
  %1155 = add i32 %1141, %1154
  %1156 = getelementptr inbounds nuw i8, ptr %1150, i64 3
  %1157 = load i8, ptr %1156, align 1, !tbaa !87
  %1158 = zext i8 %1157 to i64
  %1159 = getelementptr inbounds nuw i8, ptr %1145, i64 %1158
  %1160 = and i32 %1155, 63
  %1161 = zext nneg i32 %1160 to i64
  %1162 = shl i64 %1114, %1161
  %1163 = lshr i64 %1162, %971
  %1164 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1163
  %1165 = load i16, ptr %1164, align 2
  store i16 %1165, ptr %1159, align 1
  %1166 = getelementptr inbounds nuw i8, ptr %1164, i64 2
  %1167 = load i8, ptr %1166, align 2, !tbaa !84
  %1168 = zext i8 %1167 to i32
  %1169 = add i32 %1155, %1168
  %1170 = getelementptr inbounds nuw i8, ptr %1164, i64 3
  %1171 = load i8, ptr %1170, align 1, !tbaa !87
  %1172 = zext i8 %1171 to i64
  %1173 = getelementptr inbounds nuw i8, ptr %1159, i64 %1172
  %1174 = icmp ugt i32 %1169, 64
  br i1 %1174, label %.loopexit200, label %1084, !prof !88, !llvm.loop !90

1175:                                             ; preds = %956
  %1176 = icmp ugt i32 %577, 64
  br i1 %1176, label %.loopexit200, label %1177, !prof !109

1177:                                             ; preds = %1175
  %1178 = icmp ult ptr %579, %119
  br i1 %1178, label %1186, label %1179

1179:                                             ; preds = %1177
  %1180 = lshr i32 %577, 3
  %1181 = zext nneg i32 %1180 to i64
  %1182 = sub nsw i64 0, %1181
  %1183 = getelementptr inbounds i8, ptr %579, i64 %1182
  %1184 = and i32 %577, 7
  %1185 = load i64, ptr %1183, align 1, !tbaa !26
  br label %.loopexit200

1186:                                             ; preds = %1177
  %1187 = icmp eq ptr %579, %27
  br i1 %1187, label %.loopexit200, label %1188

1188:                                             ; preds = %1186
  %1189 = lshr i32 %577, 3
  %1190 = zext nneg i32 %1189 to i64
  %1191 = sub nsw i64 0, %1190
  %1192 = getelementptr inbounds i8, ptr %579, i64 %1191
  %1193 = icmp ult ptr %1192, %27
  %1194 = ptrtoint ptr %579 to i64
  %1195 = ptrtoint ptr %27 to i64
  %1196 = sub i64 %1194, %1195
  %1197 = trunc i64 %1196 to i32
  %1198 = select i1 %1193, i32 %1197, i32 %1189
  %1199 = zext i32 %1198 to i64
  %1200 = sub nsw i64 0, %1199
  %1201 = getelementptr inbounds i8, ptr %579, i64 %1200
  %1202 = shl i32 %1198, 3
  %1203 = sub i32 %577, %1202
  %1204 = load i64, ptr %1201, align 1, !tbaa !26
  br label %.loopexit200

.loopexit200:                                     ; preds = %1117, %1107, %1093, %1012, %1002, %988, %1188, %1186, %1179, %1175, %972, %965
  %1205 = phi i64 [ %1204, %1188 ], [ %1185, %1179 ], [ %576, %1175 ], [ %576, %1186 ], [ %576, %972 ], [ %576, %965 ], [ %1009, %1002 ], [ %983, %988 ], [ %1009, %1012 ], [ %1088, %1093 ], [ %1114, %1117 ], [ %1114, %1107 ]
  %1206 = phi i32 [ %1203, %1188 ], [ %1184, %1179 ], [ %577, %1175 ], [ %577, %1186 ], [ %577, %972 ], [ %577, %965 ], [ %1003, %1002 ], [ %982, %988 ], [ %1078, %1012 ], [ %1087, %1093 ], [ %1169, %1117 ], [ %1108, %1107 ]
  %1207 = phi ptr [ %1201, %1188 ], [ %1183, %1179 ], [ @BIT_reloadDStream.zeroFilled, %1175 ], [ %27, %1186 ], [ @BIT_reloadDStream.zeroFilled, %972 ], [ @BIT_reloadDStream.zeroFilled, %965 ], [ %1008, %1002 ], [ %27, %988 ], [ @BIT_reloadDStream.zeroFilled, %1012 ], [ %27, %1093 ], [ @BIT_reloadDStream.zeroFilled, %1117 ], [ %1113, %1107 ]
  %1208 = phi ptr [ %586, %1188 ], [ %586, %1179 ], [ %586, %1175 ], [ %586, %1186 ], [ %586, %972 ], [ %586, %965 ], [ %980, %1002 ], [ %980, %988 ], [ %1082, %1012 ], [ %1085, %1093 ], [ %1173, %1117 ], [ %1085, %1107 ]
  %1209 = ptrtoint ptr %1208 to i64
  %1210 = sub i64 %958, %1209
  %1211 = icmp ugt i64 %1210, 1
  br i1 %1211, label %1212, label %.loopexit193

1212:                                             ; preds = %.loopexit200
  %1213 = getelementptr inbounds i8, ptr %33, i64 -2
  %1214 = ptrtoint ptr %27 to i64
  %1215 = sub nsw i32 0, %36
  %1216 = and i32 %1215, 63
  %1217 = zext nneg i32 %1216 to i64
  %1218 = icmp ugt i32 %1206, 64
  br i1 %1218, label %.loopexit195, label %.preheader194, !prof !91

.preheader194:                                    ; preds = %1212, %1256
  %1219 = phi ptr [ %1270, %1256 ], [ %1208, %1212 ]
  %1220 = phi ptr [ %1247, %1256 ], [ %1207, %1212 ]
  %1221 = phi i32 [ %1266, %1256 ], [ %1206, %1212 ]
  %1222 = phi i64 [ %1248, %1256 ], [ %1205, %1212 ]
  %1223 = icmp ult ptr %1220, %119
  br i1 %1223, label %1227, label %1224

1224:                                             ; preds = %.preheader194
  %1225 = lshr i32 %1221, 3
  %1226 = and i32 %1221, 7
  br label %1241

1227:                                             ; preds = %.preheader194
  %1228 = icmp eq ptr %1220, %27
  br i1 %1228, label %.loopexit195, label %1229

1229:                                             ; preds = %1227
  %1230 = lshr i32 %1221, 3
  %1231 = zext nneg i32 %1230 to i64
  %1232 = sub nsw i64 0, %1231
  %1233 = getelementptr inbounds i8, ptr %1220, i64 %1232
  %1234 = icmp uge ptr %1233, %27
  %1235 = ptrtoint ptr %1220 to i64
  %1236 = sub i64 %1235, %1214
  %1237 = trunc i64 %1236 to i32
  %1238 = select i1 %1234, i32 %1230, i32 %1237
  %1239 = shl i32 %1238, 3
  %1240 = sub i32 %1221, %1239
  br label %1241

1241:                                             ; preds = %1229, %1224
  %1242 = phi i32 [ %1240, %1229 ], [ %1226, %1224 ]
  %1243 = phi i32 [ %1238, %1229 ], [ %1225, %1224 ]
  %1244 = phi i1 [ %1234, %1229 ], [ true, %1224 ]
  %1245 = zext i32 %1243 to i64
  %1246 = sub nsw i64 0, %1245
  %1247 = getelementptr inbounds i8, ptr %1220, i64 %1246
  %1248 = load i64, ptr %1247, align 1, !tbaa !26
  %1249 = icmp ule ptr %1219, %1213
  %1250 = and i1 %1249, %1244
  br i1 %1250, label %1256, label %.loopexit195

.loopexit195:                                     ; preds = %1256, %1241, %1227, %1212
  %1251 = phi ptr [ %1208, %1212 ], [ %1219, %1227 ], [ %1270, %1256 ], [ %1219, %1241 ]
  %1252 = phi ptr [ @BIT_reloadDStream.zeroFilled, %1212 ], [ %27, %1227 ], [ @BIT_reloadDStream.zeroFilled, %1256 ], [ %1247, %1241 ]
  %1253 = phi i32 [ %1206, %1212 ], [ %1221, %1227 ], [ %1266, %1256 ], [ %1242, %1241 ]
  %1254 = phi i64 [ %1205, %1212 ], [ %1222, %1227 ], [ %1248, %1256 ], [ %1248, %1241 ]
  %1255 = icmp ugt ptr %1251, %1213
  br i1 %1255, label %.loopexit193, label %.preheader192

1256:                                             ; preds = %1241
  %1257 = and i32 %1242, 63
  %1258 = zext nneg i32 %1257 to i64
  %1259 = shl i64 %1248, %1258
  %1260 = lshr i64 %1259, %1217
  %1261 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1260
  %1262 = load i16, ptr %1261, align 2
  store i16 %1262, ptr %1219, align 1
  %1263 = getelementptr inbounds nuw i8, ptr %1261, i64 2
  %1264 = load i8, ptr %1263, align 2, !tbaa !84
  %1265 = zext i8 %1264 to i32
  %1266 = add i32 %1242, %1265
  %1267 = getelementptr inbounds nuw i8, ptr %1261, i64 3
  %1268 = load i8, ptr %1267, align 1, !tbaa !87
  %1269 = zext i8 %1268 to i64
  %1270 = getelementptr inbounds nuw i8, ptr %1219, i64 %1269
  %1271 = icmp ugt i32 %1266, 64
  br i1 %1271, label %.loopexit195, label %.preheader194, !prof !88, !llvm.loop !92

.preheader192:                                    ; preds = %.loopexit195, %.preheader192
  %1272 = phi ptr [ %1287, %.preheader192 ], [ %1251, %.loopexit195 ]
  %1273 = phi i32 [ %1283, %.preheader192 ], [ %1253, %.loopexit195 ]
  %1274 = and i32 %1273, 63
  %1275 = zext nneg i32 %1274 to i64
  %1276 = shl i64 %1254, %1275
  %1277 = lshr i64 %1276, %1217
  %1278 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1277
  %1279 = load i16, ptr %1278, align 2
  store i16 %1279, ptr %1272, align 1
  %1280 = getelementptr inbounds nuw i8, ptr %1278, i64 2
  %1281 = load i8, ptr %1280, align 2, !tbaa !84
  %1282 = zext i8 %1281 to i32
  %1283 = add i32 %1273, %1282
  %1284 = getelementptr inbounds nuw i8, ptr %1278, i64 3
  %1285 = load i8, ptr %1284, align 1, !tbaa !87
  %1286 = zext i8 %1285 to i64
  %1287 = getelementptr inbounds nuw i8, ptr %1272, i64 %1286
  %1288 = icmp ugt ptr %1287, %1213
  br i1 %1288, label %.loopexit193, label %.preheader192, !llvm.loop !93

.loopexit193:                                     ; preds = %.preheader192, %.loopexit195, %.loopexit200
  %1289 = phi i64 [ %1205, %.loopexit200 ], [ %1254, %.loopexit195 ], [ %1254, %.preheader192 ]
  %1290 = phi i32 [ %1206, %.loopexit200 ], [ %1253, %.loopexit195 ], [ %1283, %.preheader192 ]
  %1291 = phi ptr [ %1207, %.loopexit200 ], [ %1252, %.loopexit195 ], [ %1252, %.preheader192 ]
  %1292 = phi ptr [ %1208, %.loopexit200 ], [ %1251, %.loopexit195 ], [ %1287, %.preheader192 ]
  %1293 = icmp ult ptr %1292, %33
  br i1 %1293, label %1294, label %1320

1294:                                             ; preds = %.loopexit193
  %1295 = and i32 %1290, 63
  %1296 = zext nneg i32 %1295 to i64
  %1297 = shl i64 %1289, %1296
  %1298 = sub nsw i32 0, %36
  %1299 = and i32 %1298, 63
  %1300 = zext nneg i32 %1299 to i64
  %1301 = lshr i64 %1297, %1300
  %1302 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1301
  %1303 = load i8, ptr %1302, align 2
  store i8 %1303, ptr %1292, align 1
  %1304 = getelementptr inbounds nuw i8, ptr %1302, i64 3
  %1305 = load i8, ptr %1304, align 1, !tbaa !87
  %1306 = icmp eq i8 %1305, 1
  br i1 %1306, label %1307, label %1312

1307:                                             ; preds = %1294
  %1308 = getelementptr inbounds nuw i8, ptr %1302, i64 2
  %1309 = load i8, ptr %1308, align 2, !tbaa !84
  %1310 = zext i8 %1309 to i32
  %1311 = add i32 %1290, %1310
  br label %1320

1312:                                             ; preds = %1294
  %1313 = icmp ult i32 %1290, 64
  br i1 %1313, label %1314, label %1320

1314:                                             ; preds = %1312
  %1315 = getelementptr inbounds nuw i8, ptr %1302, i64 2
  %1316 = load i8, ptr %1315, align 2, !tbaa !84
  %1317 = zext i8 %1316 to i32
  %1318 = add nuw nsw i32 %1290, %1317
  %1319 = tail call i32 @llvm.umin.i32(i32 %1318, i32 64)
  br label %1320

1320:                                             ; preds = %1314, %1312, %1307, %.loopexit193
  %1321 = phi i32 [ %1290, %.loopexit193 ], [ %1311, %1307 ], [ %1290, %1312 ], [ %1319, %1314 ]
  %1322 = ptrtoint ptr %34 to i64
  %1323 = ptrtoint ptr %585 to i64
  %1324 = sub i64 %1322, %1323
  %1325 = icmp ugt i64 %1324, 7
  br i1 %1325, label %1326, label %1539

1326:                                             ; preds = %1320
  %1327 = icmp samesign ult i32 %37, 12
  %1328 = icmp ugt i32 %581, 64
  br i1 %1327, label %1336, label %1329

1329:                                             ; preds = %1326
  br i1 %1328, label %.loopexit182, label %1330, !prof !91

1330:                                             ; preds = %1329
  %1331 = ptrtoint ptr %28 to i64
  %1332 = getelementptr inbounds i8, ptr %34, i64 -7
  %1333 = sub nsw i32 0, %36
  %1334 = and i32 %1333, 63
  %1335 = zext nneg i32 %1334 to i64
  br label %1448

1336:                                             ; preds = %1326
  br i1 %1328, label %.loopexit182, label %1337, !prof !91

1337:                                             ; preds = %1336
  %1338 = ptrtoint ptr %28 to i64
  %1339 = getelementptr inbounds i8, ptr %34, i64 -9
  %1340 = sub nsw i32 0, %36
  %1341 = and i32 %1340, 63
  %1342 = zext nneg i32 %1341 to i64
  br label %1343

1343:                                             ; preds = %1376, %1337
  %1344 = phi ptr [ %585, %1337 ], [ %1446, %1376 ]
  %1345 = phi ptr [ %583, %1337 ], [ %1372, %1376 ]
  %1346 = phi i32 [ %581, %1337 ], [ %1442, %1376 ]
  %1347 = phi i64 [ %580, %1337 ], [ %1373, %1376 ]
  %1348 = icmp ult ptr %1345, %193
  br i1 %1348, label %1352, label %1349

1349:                                             ; preds = %1343
  %1350 = lshr i32 %1346, 3
  %1351 = and i32 %1346, 7
  br label %1366

1352:                                             ; preds = %1343
  %1353 = icmp eq ptr %1345, %28
  br i1 %1353, label %.loopexit182, label %1354

1354:                                             ; preds = %1352
  %1355 = lshr i32 %1346, 3
  %1356 = zext nneg i32 %1355 to i64
  %1357 = sub nsw i64 0, %1356
  %1358 = getelementptr inbounds i8, ptr %1345, i64 %1357
  %1359 = icmp uge ptr %1358, %28
  %1360 = ptrtoint ptr %1345 to i64
  %1361 = sub i64 %1360, %1338
  %1362 = trunc i64 %1361 to i32
  %1363 = select i1 %1359, i32 %1355, i32 %1362
  %1364 = shl i32 %1363, 3
  %1365 = sub i32 %1346, %1364
  br label %1366

1366:                                             ; preds = %1354, %1349
  %1367 = phi i32 [ %1365, %1354 ], [ %1351, %1349 ]
  %1368 = phi i32 [ %1363, %1354 ], [ %1350, %1349 ]
  %1369 = phi i1 [ %1359, %1354 ], [ true, %1349 ]
  %1370 = zext i32 %1368 to i64
  %1371 = sub nsw i64 0, %1370
  %1372 = getelementptr inbounds i8, ptr %1345, i64 %1371
  %1373 = load i64, ptr %1372, align 1, !tbaa !26
  %1374 = icmp ult ptr %1344, %1339
  %1375 = and i1 %1374, %1369
  br i1 %1375, label %1376, label %.loopexit182

1376:                                             ; preds = %1366
  %1377 = and i32 %1367, 63
  %1378 = zext nneg i32 %1377 to i64
  %1379 = shl i64 %1373, %1378
  %1380 = lshr i64 %1379, %1342
  %1381 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1380
  %1382 = load i16, ptr %1381, align 2
  store i16 %1382, ptr %1344, align 1
  %1383 = getelementptr inbounds nuw i8, ptr %1381, i64 2
  %1384 = load i8, ptr %1383, align 2, !tbaa !84
  %1385 = zext i8 %1384 to i32
  %1386 = add i32 %1367, %1385
  %1387 = getelementptr inbounds nuw i8, ptr %1381, i64 3
  %1388 = load i8, ptr %1387, align 1, !tbaa !87
  %1389 = zext i8 %1388 to i64
  %1390 = getelementptr inbounds nuw i8, ptr %1344, i64 %1389
  %1391 = and i32 %1386, 63
  %1392 = zext nneg i32 %1391 to i64
  %1393 = shl i64 %1373, %1392
  %1394 = lshr i64 %1393, %1342
  %1395 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1394
  %1396 = load i16, ptr %1395, align 2
  store i16 %1396, ptr %1390, align 1
  %1397 = getelementptr inbounds nuw i8, ptr %1395, i64 2
  %1398 = load i8, ptr %1397, align 2, !tbaa !84
  %1399 = zext i8 %1398 to i32
  %1400 = add i32 %1386, %1399
  %1401 = getelementptr inbounds nuw i8, ptr %1395, i64 3
  %1402 = load i8, ptr %1401, align 1, !tbaa !87
  %1403 = zext i8 %1402 to i64
  %1404 = getelementptr inbounds nuw i8, ptr %1390, i64 %1403
  %1405 = and i32 %1400, 63
  %1406 = zext nneg i32 %1405 to i64
  %1407 = shl i64 %1373, %1406
  %1408 = lshr i64 %1407, %1342
  %1409 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1408
  %1410 = load i16, ptr %1409, align 2
  store i16 %1410, ptr %1404, align 1
  %1411 = getelementptr inbounds nuw i8, ptr %1409, i64 2
  %1412 = load i8, ptr %1411, align 2, !tbaa !84
  %1413 = zext i8 %1412 to i32
  %1414 = add i32 %1400, %1413
  %1415 = getelementptr inbounds nuw i8, ptr %1409, i64 3
  %1416 = load i8, ptr %1415, align 1, !tbaa !87
  %1417 = zext i8 %1416 to i64
  %1418 = getelementptr inbounds nuw i8, ptr %1404, i64 %1417
  %1419 = and i32 %1414, 63
  %1420 = zext nneg i32 %1419 to i64
  %1421 = shl i64 %1373, %1420
  %1422 = lshr i64 %1421, %1342
  %1423 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1422
  %1424 = load i16, ptr %1423, align 2
  store i16 %1424, ptr %1418, align 1
  %1425 = getelementptr inbounds nuw i8, ptr %1423, i64 2
  %1426 = load i8, ptr %1425, align 2, !tbaa !84
  %1427 = zext i8 %1426 to i32
  %1428 = add i32 %1414, %1427
  %1429 = getelementptr inbounds nuw i8, ptr %1423, i64 3
  %1430 = load i8, ptr %1429, align 1, !tbaa !87
  %1431 = zext i8 %1430 to i64
  %1432 = getelementptr inbounds nuw i8, ptr %1418, i64 %1431
  %1433 = and i32 %1428, 63
  %1434 = zext nneg i32 %1433 to i64
  %1435 = shl i64 %1373, %1434
  %1436 = lshr i64 %1435, %1342
  %1437 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1436
  %1438 = load i16, ptr %1437, align 2
  store i16 %1438, ptr %1432, align 1
  %1439 = getelementptr inbounds nuw i8, ptr %1437, i64 2
  %1440 = load i8, ptr %1439, align 2, !tbaa !84
  %1441 = zext i8 %1440 to i32
  %1442 = add i32 %1428, %1441
  %1443 = getelementptr inbounds nuw i8, ptr %1437, i64 3
  %1444 = load i8, ptr %1443, align 1, !tbaa !87
  %1445 = zext i8 %1444 to i64
  %1446 = getelementptr inbounds nuw i8, ptr %1432, i64 %1445
  %1447 = icmp ugt i32 %1442, 64
  br i1 %1447, label %.loopexit182, label %1343, !prof !88, !llvm.loop !89

1448:                                             ; preds = %1481, %1330
  %1449 = phi ptr [ %585, %1330 ], [ %1537, %1481 ]
  %1450 = phi ptr [ %583, %1330 ], [ %1477, %1481 ]
  %1451 = phi i32 [ %581, %1330 ], [ %1533, %1481 ]
  %1452 = phi i64 [ %580, %1330 ], [ %1478, %1481 ]
  %1453 = icmp ult ptr %1450, %193
  br i1 %1453, label %1457, label %1454

1454:                                             ; preds = %1448
  %1455 = lshr i32 %1451, 3
  %1456 = and i32 %1451, 7
  br label %1471

1457:                                             ; preds = %1448
  %1458 = icmp eq ptr %1450, %28
  br i1 %1458, label %.loopexit182, label %1459

1459:                                             ; preds = %1457
  %1460 = lshr i32 %1451, 3
  %1461 = zext nneg i32 %1460 to i64
  %1462 = sub nsw i64 0, %1461
  %1463 = getelementptr inbounds i8, ptr %1450, i64 %1462
  %1464 = icmp uge ptr %1463, %28
  %1465 = ptrtoint ptr %1450 to i64
  %1466 = sub i64 %1465, %1331
  %1467 = trunc i64 %1466 to i32
  %1468 = select i1 %1464, i32 %1460, i32 %1467
  %1469 = shl i32 %1468, 3
  %1470 = sub i32 %1451, %1469
  br label %1471

1471:                                             ; preds = %1459, %1454
  %1472 = phi i32 [ %1470, %1459 ], [ %1456, %1454 ]
  %1473 = phi i32 [ %1468, %1459 ], [ %1455, %1454 ]
  %1474 = phi i1 [ %1464, %1459 ], [ true, %1454 ]
  %1475 = zext i32 %1473 to i64
  %1476 = sub nsw i64 0, %1475
  %1477 = getelementptr inbounds i8, ptr %1450, i64 %1476
  %1478 = load i64, ptr %1477, align 1, !tbaa !26
  %1479 = icmp ult ptr %1449, %1332
  %1480 = and i1 %1479, %1474
  br i1 %1480, label %1481, label %.loopexit182

1481:                                             ; preds = %1471
  %1482 = and i32 %1472, 63
  %1483 = zext nneg i32 %1482 to i64
  %1484 = shl i64 %1478, %1483
  %1485 = lshr i64 %1484, %1335
  %1486 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1485
  %1487 = load i16, ptr %1486, align 2
  store i16 %1487, ptr %1449, align 1
  %1488 = getelementptr inbounds nuw i8, ptr %1486, i64 2
  %1489 = load i8, ptr %1488, align 2, !tbaa !84
  %1490 = zext i8 %1489 to i32
  %1491 = add i32 %1472, %1490
  %1492 = getelementptr inbounds nuw i8, ptr %1486, i64 3
  %1493 = load i8, ptr %1492, align 1, !tbaa !87
  %1494 = zext i8 %1493 to i64
  %1495 = getelementptr inbounds nuw i8, ptr %1449, i64 %1494
  %1496 = and i32 %1491, 63
  %1497 = zext nneg i32 %1496 to i64
  %1498 = shl i64 %1478, %1497
  %1499 = lshr i64 %1498, %1335
  %1500 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1499
  %1501 = load i16, ptr %1500, align 2
  store i16 %1501, ptr %1495, align 1
  %1502 = getelementptr inbounds nuw i8, ptr %1500, i64 2
  %1503 = load i8, ptr %1502, align 2, !tbaa !84
  %1504 = zext i8 %1503 to i32
  %1505 = add i32 %1491, %1504
  %1506 = getelementptr inbounds nuw i8, ptr %1500, i64 3
  %1507 = load i8, ptr %1506, align 1, !tbaa !87
  %1508 = zext i8 %1507 to i64
  %1509 = getelementptr inbounds nuw i8, ptr %1495, i64 %1508
  %1510 = and i32 %1505, 63
  %1511 = zext nneg i32 %1510 to i64
  %1512 = shl i64 %1478, %1511
  %1513 = lshr i64 %1512, %1335
  %1514 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1513
  %1515 = load i16, ptr %1514, align 2
  store i16 %1515, ptr %1509, align 1
  %1516 = getelementptr inbounds nuw i8, ptr %1514, i64 2
  %1517 = load i8, ptr %1516, align 2, !tbaa !84
  %1518 = zext i8 %1517 to i32
  %1519 = add i32 %1505, %1518
  %1520 = getelementptr inbounds nuw i8, ptr %1514, i64 3
  %1521 = load i8, ptr %1520, align 1, !tbaa !87
  %1522 = zext i8 %1521 to i64
  %1523 = getelementptr inbounds nuw i8, ptr %1509, i64 %1522
  %1524 = and i32 %1519, 63
  %1525 = zext nneg i32 %1524 to i64
  %1526 = shl i64 %1478, %1525
  %1527 = lshr i64 %1526, %1335
  %1528 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1527
  %1529 = load i16, ptr %1528, align 2
  store i16 %1529, ptr %1523, align 1
  %1530 = getelementptr inbounds nuw i8, ptr %1528, i64 2
  %1531 = load i8, ptr %1530, align 2, !tbaa !84
  %1532 = zext i8 %1531 to i32
  %1533 = add i32 %1519, %1532
  %1534 = getelementptr inbounds nuw i8, ptr %1528, i64 3
  %1535 = load i8, ptr %1534, align 1, !tbaa !87
  %1536 = zext i8 %1535 to i64
  %1537 = getelementptr inbounds nuw i8, ptr %1523, i64 %1536
  %1538 = icmp ugt i32 %1533, 64
  br i1 %1538, label %.loopexit182, label %1448, !prof !88, !llvm.loop !90

1539:                                             ; preds = %1320
  %1540 = icmp ugt i32 %581, 64
  br i1 %1540, label %.loopexit182, label %1541, !prof !109

1541:                                             ; preds = %1539
  %1542 = icmp ult ptr %583, %193
  br i1 %1542, label %1550, label %1543

1543:                                             ; preds = %1541
  %1544 = lshr i32 %581, 3
  %1545 = zext nneg i32 %1544 to i64
  %1546 = sub nsw i64 0, %1545
  %1547 = getelementptr inbounds i8, ptr %583, i64 %1546
  %1548 = and i32 %581, 7
  %1549 = load i64, ptr %1547, align 1, !tbaa !26
  br label %.loopexit182

1550:                                             ; preds = %1541
  %1551 = icmp eq ptr %583, %28
  br i1 %1551, label %.loopexit182, label %1552

1552:                                             ; preds = %1550
  %1553 = lshr i32 %581, 3
  %1554 = zext nneg i32 %1553 to i64
  %1555 = sub nsw i64 0, %1554
  %1556 = getelementptr inbounds i8, ptr %583, i64 %1555
  %1557 = icmp ult ptr %1556, %28
  %1558 = ptrtoint ptr %583 to i64
  %1559 = ptrtoint ptr %28 to i64
  %1560 = sub i64 %1558, %1559
  %1561 = trunc i64 %1560 to i32
  %1562 = select i1 %1557, i32 %1561, i32 %1553
  %1563 = zext i32 %1562 to i64
  %1564 = sub nsw i64 0, %1563
  %1565 = getelementptr inbounds i8, ptr %583, i64 %1564
  %1566 = shl i32 %1562, 3
  %1567 = sub i32 %581, %1566
  %1568 = load i64, ptr %1565, align 1, !tbaa !26
  br label %.loopexit182

.loopexit182:                                     ; preds = %1481, %1471, %1457, %1376, %1366, %1352, %1552, %1550, %1543, %1539, %1336, %1329
  %1569 = phi i64 [ %1568, %1552 ], [ %1549, %1543 ], [ %580, %1539 ], [ %580, %1550 ], [ %580, %1336 ], [ %580, %1329 ], [ %1373, %1366 ], [ %1347, %1352 ], [ %1373, %1376 ], [ %1452, %1457 ], [ %1478, %1481 ], [ %1478, %1471 ]
  %1570 = phi i32 [ %1567, %1552 ], [ %1548, %1543 ], [ %581, %1539 ], [ %581, %1550 ], [ %581, %1336 ], [ %581, %1329 ], [ %1367, %1366 ], [ %1346, %1352 ], [ %1442, %1376 ], [ %1451, %1457 ], [ %1533, %1481 ], [ %1472, %1471 ]
  %1571 = phi ptr [ %1565, %1552 ], [ %1547, %1543 ], [ @BIT_reloadDStream.zeroFilled, %1539 ], [ %28, %1550 ], [ @BIT_reloadDStream.zeroFilled, %1336 ], [ @BIT_reloadDStream.zeroFilled, %1329 ], [ %1372, %1366 ], [ %28, %1352 ], [ @BIT_reloadDStream.zeroFilled, %1376 ], [ %28, %1457 ], [ @BIT_reloadDStream.zeroFilled, %1481 ], [ %1477, %1471 ]
  %1572 = phi ptr [ %585, %1552 ], [ %585, %1543 ], [ %585, %1539 ], [ %585, %1550 ], [ %585, %1336 ], [ %585, %1329 ], [ %1344, %1366 ], [ %1344, %1352 ], [ %1446, %1376 ], [ %1449, %1457 ], [ %1537, %1481 ], [ %1449, %1471 ]
  %1573 = ptrtoint ptr %1572 to i64
  %1574 = sub i64 %1322, %1573
  %1575 = icmp ugt i64 %1574, 1
  br i1 %1575, label %1576, label %.loopexit175

1576:                                             ; preds = %.loopexit182
  %1577 = getelementptr inbounds i8, ptr %34, i64 -2
  %1578 = ptrtoint ptr %28 to i64
  %1579 = sub nsw i32 0, %36
  %1580 = and i32 %1579, 63
  %1581 = zext nneg i32 %1580 to i64
  %1582 = icmp ugt i32 %1570, 64
  br i1 %1582, label %.loopexit177, label %.preheader176, !prof !91

.preheader176:                                    ; preds = %1576, %1620
  %1583 = phi ptr [ %1634, %1620 ], [ %1572, %1576 ]
  %1584 = phi ptr [ %1611, %1620 ], [ %1571, %1576 ]
  %1585 = phi i32 [ %1630, %1620 ], [ %1570, %1576 ]
  %1586 = phi i64 [ %1612, %1620 ], [ %1569, %1576 ]
  %1587 = icmp ult ptr %1584, %193
  br i1 %1587, label %1591, label %1588

1588:                                             ; preds = %.preheader176
  %1589 = lshr i32 %1585, 3
  %1590 = and i32 %1585, 7
  br label %1605

1591:                                             ; preds = %.preheader176
  %1592 = icmp eq ptr %1584, %28
  br i1 %1592, label %.loopexit177, label %1593

1593:                                             ; preds = %1591
  %1594 = lshr i32 %1585, 3
  %1595 = zext nneg i32 %1594 to i64
  %1596 = sub nsw i64 0, %1595
  %1597 = getelementptr inbounds i8, ptr %1584, i64 %1596
  %1598 = icmp uge ptr %1597, %28
  %1599 = ptrtoint ptr %1584 to i64
  %1600 = sub i64 %1599, %1578
  %1601 = trunc i64 %1600 to i32
  %1602 = select i1 %1598, i32 %1594, i32 %1601
  %1603 = shl i32 %1602, 3
  %1604 = sub i32 %1585, %1603
  br label %1605

1605:                                             ; preds = %1593, %1588
  %1606 = phi i32 [ %1604, %1593 ], [ %1590, %1588 ]
  %1607 = phi i32 [ %1602, %1593 ], [ %1589, %1588 ]
  %1608 = phi i1 [ %1598, %1593 ], [ true, %1588 ]
  %1609 = zext i32 %1607 to i64
  %1610 = sub nsw i64 0, %1609
  %1611 = getelementptr inbounds i8, ptr %1584, i64 %1610
  %1612 = load i64, ptr %1611, align 1, !tbaa !26
  %1613 = icmp ule ptr %1583, %1577
  %1614 = and i1 %1613, %1608
  br i1 %1614, label %1620, label %.loopexit177

.loopexit177:                                     ; preds = %1620, %1605, %1591, %1576
  %1615 = phi ptr [ %1572, %1576 ], [ %1583, %1591 ], [ %1634, %1620 ], [ %1583, %1605 ]
  %1616 = phi ptr [ @BIT_reloadDStream.zeroFilled, %1576 ], [ %28, %1591 ], [ @BIT_reloadDStream.zeroFilled, %1620 ], [ %1611, %1605 ]
  %1617 = phi i32 [ %1570, %1576 ], [ %1585, %1591 ], [ %1630, %1620 ], [ %1606, %1605 ]
  %1618 = phi i64 [ %1569, %1576 ], [ %1586, %1591 ], [ %1612, %1620 ], [ %1612, %1605 ]
  %1619 = icmp ugt ptr %1615, %1577
  br i1 %1619, label %.loopexit175, label %.preheader174

1620:                                             ; preds = %1605
  %1621 = and i32 %1606, 63
  %1622 = zext nneg i32 %1621 to i64
  %1623 = shl i64 %1612, %1622
  %1624 = lshr i64 %1623, %1581
  %1625 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1624
  %1626 = load i16, ptr %1625, align 2
  store i16 %1626, ptr %1583, align 1
  %1627 = getelementptr inbounds nuw i8, ptr %1625, i64 2
  %1628 = load i8, ptr %1627, align 2, !tbaa !84
  %1629 = zext i8 %1628 to i32
  %1630 = add i32 %1606, %1629
  %1631 = getelementptr inbounds nuw i8, ptr %1625, i64 3
  %1632 = load i8, ptr %1631, align 1, !tbaa !87
  %1633 = zext i8 %1632 to i64
  %1634 = getelementptr inbounds nuw i8, ptr %1583, i64 %1633
  %1635 = icmp ugt i32 %1630, 64
  br i1 %1635, label %.loopexit177, label %.preheader176, !prof !88, !llvm.loop !92

.preheader174:                                    ; preds = %.loopexit177, %.preheader174
  %1636 = phi ptr [ %1651, %.preheader174 ], [ %1615, %.loopexit177 ]
  %1637 = phi i32 [ %1647, %.preheader174 ], [ %1617, %.loopexit177 ]
  %1638 = and i32 %1637, 63
  %1639 = zext nneg i32 %1638 to i64
  %1640 = shl i64 %1618, %1639
  %1641 = lshr i64 %1640, %1581
  %1642 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1641
  %1643 = load i16, ptr %1642, align 2
  store i16 %1643, ptr %1636, align 1
  %1644 = getelementptr inbounds nuw i8, ptr %1642, i64 2
  %1645 = load i8, ptr %1644, align 2, !tbaa !84
  %1646 = zext i8 %1645 to i32
  %1647 = add i32 %1637, %1646
  %1648 = getelementptr inbounds nuw i8, ptr %1642, i64 3
  %1649 = load i8, ptr %1648, align 1, !tbaa !87
  %1650 = zext i8 %1649 to i64
  %1651 = getelementptr inbounds nuw i8, ptr %1636, i64 %1650
  %1652 = icmp ugt ptr %1651, %1577
  br i1 %1652, label %.loopexit175, label %.preheader174, !llvm.loop !93

.loopexit175:                                     ; preds = %.preheader174, %.loopexit177, %.loopexit182
  %1653 = phi i64 [ %1569, %.loopexit182 ], [ %1618, %.loopexit177 ], [ %1618, %.preheader174 ]
  %1654 = phi i32 [ %1570, %.loopexit182 ], [ %1617, %.loopexit177 ], [ %1647, %.preheader174 ]
  %1655 = phi ptr [ %1571, %.loopexit182 ], [ %1616, %.loopexit177 ], [ %1616, %.preheader174 ]
  %1656 = phi ptr [ %1572, %.loopexit182 ], [ %1615, %.loopexit177 ], [ %1651, %.preheader174 ]
  %1657 = icmp ult ptr %1656, %34
  br i1 %1657, label %1658, label %1684

1658:                                             ; preds = %.loopexit175
  %1659 = and i32 %1654, 63
  %1660 = zext nneg i32 %1659 to i64
  %1661 = shl i64 %1653, %1660
  %1662 = sub nsw i32 0, %36
  %1663 = and i32 %1662, 63
  %1664 = zext nneg i32 %1663 to i64
  %1665 = lshr i64 %1661, %1664
  %1666 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1665
  %1667 = load i8, ptr %1666, align 2
  store i8 %1667, ptr %1656, align 1
  %1668 = getelementptr inbounds nuw i8, ptr %1666, i64 3
  %1669 = load i8, ptr %1668, align 1, !tbaa !87
  %1670 = icmp eq i8 %1669, 1
  br i1 %1670, label %1671, label %1676

1671:                                             ; preds = %1658
  %1672 = getelementptr inbounds nuw i8, ptr %1666, i64 2
  %1673 = load i8, ptr %1672, align 2, !tbaa !84
  %1674 = zext i8 %1673 to i32
  %1675 = add i32 %1654, %1674
  br label %1684

1676:                                             ; preds = %1658
  %1677 = icmp ult i32 %1654, 64
  br i1 %1677, label %1678, label %1684

1678:                                             ; preds = %1676
  %1679 = getelementptr inbounds nuw i8, ptr %1666, i64 2
  %1680 = load i8, ptr %1679, align 2, !tbaa !84
  %1681 = zext i8 %1680 to i32
  %1682 = add nuw nsw i32 %1654, %1681
  %1683 = tail call i32 @llvm.umin.i32(i32 %1682, i32 64)
  br label %1684

1684:                                             ; preds = %1678, %1676, %1671, %.loopexit175
  %1685 = phi i32 [ %1654, %.loopexit175 ], [ %1675, %1671 ], [ %1654, %1676 ], [ %1683, %1678 ]
  %1686 = ptrtoint ptr %11 to i64
  %1687 = ptrtoint ptr %584 to i64
  %1688 = sub i64 %1686, %1687
  %1689 = icmp ugt i64 %1688, 7
  br i1 %1689, label %1690, label %1938

1690:                                             ; preds = %1684
  %1691 = icmp samesign ult i32 %37, 12
  %1692 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %1693 = load i32, ptr %1692, align 8, !tbaa !107
  %1694 = icmp ugt i32 %1693, 64
  br i1 %1691, label %1703, label %1695

1695:                                             ; preds = %1690
  br i1 %1694, label %.loopexit173, label %1696, !prof !91

1696:                                             ; preds = %1695
  %1697 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %1698 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %1699 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %1700 = sub nsw i32 0, %36
  %1701 = and i32 %1700, 63
  %1702 = zext nneg i32 %1701 to i64
  br label %1836

1703:                                             ; preds = %1690
  br i1 %1694, label %.loopexit170, label %1704, !prof !91

1704:                                             ; preds = %1703
  %1705 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %1706 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %1707 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %1708 = getelementptr inbounds i8, ptr %11, i64 -9
  %1709 = sub nsw i32 0, %36
  %1710 = and i32 %1709, 63
  %1711 = zext nneg i32 %1710 to i64
  br label %1715

.loopexit170:                                     ; preds = %1753, %1703
  %1712 = phi i32 [ %1693, %1703 ], [ %1827, %1753 ]
  %1713 = phi ptr [ %584, %1703 ], [ %1831, %1753 ]
  %1714 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1714, align 8, !tbaa !108
  br label %.loopexit168

1715:                                             ; preds = %1753, %1704
  %1716 = phi i32 [ %1693, %1704 ], [ %1827, %1753 ]
  %1717 = phi ptr [ %584, %1704 ], [ %1831, %1753 ]
  %1718 = load ptr, ptr %1705, align 8, !tbaa !108
  %1719 = load ptr, ptr %1706, align 8, !tbaa !103
  %1720 = icmp ult ptr %1718, %1719
  br i1 %1720, label %1727, label %1721

1721:                                             ; preds = %1715
  %1722 = lshr i32 %1716, 3
  %1723 = zext nneg i32 %1722 to i64
  %1724 = sub nsw i64 0, %1723
  %1725 = getelementptr inbounds i8, ptr %1718, i64 %1724
  store ptr %1725, ptr %1705, align 8, !tbaa !108
  %1726 = and i32 %1716, 7
  br label %1746

1727:                                             ; preds = %1715
  %1728 = load ptr, ptr %1707, align 8, !tbaa !112
  %1729 = icmp eq ptr %1718, %1728
  br i1 %1729, label %.loopexit168, label %1730

1730:                                             ; preds = %1727
  %1731 = lshr i32 %1716, 3
  %1732 = zext nneg i32 %1731 to i64
  %1733 = sub nsw i64 0, %1732
  %1734 = getelementptr inbounds i8, ptr %1718, i64 %1733
  %1735 = icmp uge ptr %1734, %1728
  %1736 = ptrtoint ptr %1718 to i64
  %1737 = ptrtoint ptr %1728 to i64
  %1738 = sub i64 %1736, %1737
  %1739 = trunc i64 %1738 to i32
  %1740 = select i1 %1735, i32 %1731, i32 %1739
  %1741 = zext i32 %1740 to i64
  %1742 = sub nsw i64 0, %1741
  %1743 = getelementptr inbounds i8, ptr %1718, i64 %1742
  store ptr %1743, ptr %1705, align 8, !tbaa !108
  %1744 = shl i32 %1740, 3
  %1745 = sub i32 %1716, %1744
  br label %1746

1746:                                             ; preds = %1730, %1721
  %1747 = phi i32 [ %1726, %1721 ], [ %1745, %1730 ]
  %1748 = phi ptr [ %1725, %1721 ], [ %1743, %1730 ]
  %1749 = phi i1 [ true, %1721 ], [ %1735, %1730 ]
  store i32 %1747, ptr %1692, align 8, !tbaa !107
  %1750 = load i64, ptr %1748, align 1, !tbaa !26
  store i64 %1750, ptr %6, align 8, !tbaa !110
  %1751 = icmp ult ptr %1717, %1708
  %1752 = and i1 %1751, %1749
  br i1 %1752, label %1753, label %.loopexit168

1753:                                             ; preds = %1746
  %1754 = and i32 %1747, 63
  %1755 = zext nneg i32 %1754 to i64
  %1756 = shl i64 %1750, %1755
  %1757 = lshr i64 %1756, %1711
  %1758 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1757
  %1759 = load i16, ptr %1758, align 2
  store i16 %1759, ptr %1717, align 1
  %1760 = getelementptr inbounds nuw i8, ptr %1758, i64 2
  %1761 = load i8, ptr %1760, align 2, !tbaa !84
  %1762 = zext i8 %1761 to i32
  %1763 = add i32 %1747, %1762
  store i32 %1763, ptr %1692, align 8, !tbaa !107
  %1764 = getelementptr inbounds nuw i8, ptr %1758, i64 3
  %1765 = load i8, ptr %1764, align 1, !tbaa !87
  %1766 = zext i8 %1765 to i64
  %1767 = getelementptr inbounds nuw i8, ptr %1717, i64 %1766
  %1768 = load i64, ptr %6, align 8, !tbaa !110
  %1769 = and i32 %1763, 63
  %1770 = zext nneg i32 %1769 to i64
  %1771 = shl i64 %1768, %1770
  %1772 = lshr i64 %1771, %1711
  %1773 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1772
  %1774 = load i16, ptr %1773, align 2
  store i16 %1774, ptr %1767, align 1
  %1775 = getelementptr inbounds nuw i8, ptr %1773, i64 2
  %1776 = load i8, ptr %1775, align 2, !tbaa !84
  %1777 = zext i8 %1776 to i32
  %1778 = load i32, ptr %1692, align 8, !tbaa !107
  %1779 = add i32 %1778, %1777
  store i32 %1779, ptr %1692, align 8, !tbaa !107
  %1780 = getelementptr inbounds nuw i8, ptr %1773, i64 3
  %1781 = load i8, ptr %1780, align 1, !tbaa !87
  %1782 = zext i8 %1781 to i64
  %1783 = getelementptr inbounds nuw i8, ptr %1767, i64 %1782
  %1784 = load i64, ptr %6, align 8, !tbaa !110
  %1785 = and i32 %1779, 63
  %1786 = zext nneg i32 %1785 to i64
  %1787 = shl i64 %1784, %1786
  %1788 = lshr i64 %1787, %1711
  %1789 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1788
  %1790 = load i16, ptr %1789, align 2
  store i16 %1790, ptr %1783, align 1
  %1791 = getelementptr inbounds nuw i8, ptr %1789, i64 2
  %1792 = load i8, ptr %1791, align 2, !tbaa !84
  %1793 = zext i8 %1792 to i32
  %1794 = load i32, ptr %1692, align 8, !tbaa !107
  %1795 = add i32 %1794, %1793
  store i32 %1795, ptr %1692, align 8, !tbaa !107
  %1796 = getelementptr inbounds nuw i8, ptr %1789, i64 3
  %1797 = load i8, ptr %1796, align 1, !tbaa !87
  %1798 = zext i8 %1797 to i64
  %1799 = getelementptr inbounds nuw i8, ptr %1783, i64 %1798
  %1800 = load i64, ptr %6, align 8, !tbaa !110
  %1801 = and i32 %1795, 63
  %1802 = zext nneg i32 %1801 to i64
  %1803 = shl i64 %1800, %1802
  %1804 = lshr i64 %1803, %1711
  %1805 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1804
  %1806 = load i16, ptr %1805, align 2
  store i16 %1806, ptr %1799, align 1
  %1807 = getelementptr inbounds nuw i8, ptr %1805, i64 2
  %1808 = load i8, ptr %1807, align 2, !tbaa !84
  %1809 = zext i8 %1808 to i32
  %1810 = load i32, ptr %1692, align 8, !tbaa !107
  %1811 = add i32 %1810, %1809
  store i32 %1811, ptr %1692, align 8, !tbaa !107
  %1812 = getelementptr inbounds nuw i8, ptr %1805, i64 3
  %1813 = load i8, ptr %1812, align 1, !tbaa !87
  %1814 = zext i8 %1813 to i64
  %1815 = getelementptr inbounds nuw i8, ptr %1799, i64 %1814
  %1816 = load i64, ptr %6, align 8, !tbaa !110
  %1817 = and i32 %1811, 63
  %1818 = zext nneg i32 %1817 to i64
  %1819 = shl i64 %1816, %1818
  %1820 = lshr i64 %1819, %1711
  %1821 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1820
  %1822 = load i16, ptr %1821, align 2
  store i16 %1822, ptr %1815, align 1
  %1823 = getelementptr inbounds nuw i8, ptr %1821, i64 2
  %1824 = load i8, ptr %1823, align 2, !tbaa !84
  %1825 = zext i8 %1824 to i32
  %1826 = load i32, ptr %1692, align 8, !tbaa !107
  %1827 = add i32 %1826, %1825
  store i32 %1827, ptr %1692, align 8, !tbaa !107
  %1828 = getelementptr inbounds nuw i8, ptr %1821, i64 3
  %1829 = load i8, ptr %1828, align 1, !tbaa !87
  %1830 = zext i8 %1829 to i64
  %1831 = getelementptr inbounds nuw i8, ptr %1815, i64 %1830
  %1832 = icmp ugt i32 %1827, 64
  br i1 %1832, label %.loopexit170, label %1715, !prof !88, !llvm.loop !89

.loopexit173:                                     ; preds = %1874, %1695
  %1833 = phi i32 [ %1693, %1695 ], [ %1932, %1874 ]
  %1834 = phi ptr [ %584, %1695 ], [ %1936, %1874 ]
  %1835 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1835, align 8, !tbaa !108
  br label %.loopexit168

1836:                                             ; preds = %1874, %1696
  %1837 = phi i32 [ %1693, %1696 ], [ %1932, %1874 ]
  %1838 = phi ptr [ %584, %1696 ], [ %1936, %1874 ]
  %1839 = load ptr, ptr %1697, align 8, !tbaa !108
  %1840 = load ptr, ptr %1698, align 8, !tbaa !103
  %1841 = icmp ult ptr %1839, %1840
  br i1 %1841, label %1848, label %1842

1842:                                             ; preds = %1836
  %1843 = lshr i32 %1837, 3
  %1844 = zext nneg i32 %1843 to i64
  %1845 = sub nsw i64 0, %1844
  %1846 = getelementptr inbounds i8, ptr %1839, i64 %1845
  store ptr %1846, ptr %1697, align 8, !tbaa !108
  %1847 = and i32 %1837, 7
  br label %1867

1848:                                             ; preds = %1836
  %1849 = load ptr, ptr %1699, align 8, !tbaa !112
  %1850 = icmp eq ptr %1839, %1849
  br i1 %1850, label %.loopexit168, label %1851

1851:                                             ; preds = %1848
  %1852 = lshr i32 %1837, 3
  %1853 = zext nneg i32 %1852 to i64
  %1854 = sub nsw i64 0, %1853
  %1855 = getelementptr inbounds i8, ptr %1839, i64 %1854
  %1856 = icmp uge ptr %1855, %1849
  %1857 = ptrtoint ptr %1839 to i64
  %1858 = ptrtoint ptr %1849 to i64
  %1859 = sub i64 %1857, %1858
  %1860 = trunc i64 %1859 to i32
  %1861 = select i1 %1856, i32 %1852, i32 %1860
  %1862 = zext i32 %1861 to i64
  %1863 = sub nsw i64 0, %1862
  %1864 = getelementptr inbounds i8, ptr %1839, i64 %1863
  store ptr %1864, ptr %1697, align 8, !tbaa !108
  %1865 = shl i32 %1861, 3
  %1866 = sub i32 %1837, %1865
  br label %1867

1867:                                             ; preds = %1851, %1842
  %1868 = phi i32 [ %1847, %1842 ], [ %1866, %1851 ]
  %1869 = phi ptr [ %1846, %1842 ], [ %1864, %1851 ]
  %1870 = phi i1 [ true, %1842 ], [ %1856, %1851 ]
  store i32 %1868, ptr %1692, align 8, !tbaa !107
  %1871 = load i64, ptr %1869, align 1, !tbaa !26
  store i64 %1871, ptr %6, align 8, !tbaa !110
  %1872 = icmp ult ptr %1838, %12
  %1873 = and i1 %1872, %1870
  br i1 %1873, label %1874, label %.loopexit168

1874:                                             ; preds = %1867
  %1875 = and i32 %1868, 63
  %1876 = zext nneg i32 %1875 to i64
  %1877 = shl i64 %1871, %1876
  %1878 = lshr i64 %1877, %1702
  %1879 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1878
  %1880 = load i16, ptr %1879, align 2
  store i16 %1880, ptr %1838, align 1
  %1881 = getelementptr inbounds nuw i8, ptr %1879, i64 2
  %1882 = load i8, ptr %1881, align 2, !tbaa !84
  %1883 = zext i8 %1882 to i32
  %1884 = add i32 %1868, %1883
  store i32 %1884, ptr %1692, align 8, !tbaa !107
  %1885 = getelementptr inbounds nuw i8, ptr %1879, i64 3
  %1886 = load i8, ptr %1885, align 1, !tbaa !87
  %1887 = zext i8 %1886 to i64
  %1888 = getelementptr inbounds nuw i8, ptr %1838, i64 %1887
  %1889 = load i64, ptr %6, align 8, !tbaa !110
  %1890 = and i32 %1884, 63
  %1891 = zext nneg i32 %1890 to i64
  %1892 = shl i64 %1889, %1891
  %1893 = lshr i64 %1892, %1702
  %1894 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1893
  %1895 = load i16, ptr %1894, align 2
  store i16 %1895, ptr %1888, align 1
  %1896 = getelementptr inbounds nuw i8, ptr %1894, i64 2
  %1897 = load i8, ptr %1896, align 2, !tbaa !84
  %1898 = zext i8 %1897 to i32
  %1899 = load i32, ptr %1692, align 8, !tbaa !107
  %1900 = add i32 %1899, %1898
  store i32 %1900, ptr %1692, align 8, !tbaa !107
  %1901 = getelementptr inbounds nuw i8, ptr %1894, i64 3
  %1902 = load i8, ptr %1901, align 1, !tbaa !87
  %1903 = zext i8 %1902 to i64
  %1904 = getelementptr inbounds nuw i8, ptr %1888, i64 %1903
  %1905 = load i64, ptr %6, align 8, !tbaa !110
  %1906 = and i32 %1900, 63
  %1907 = zext nneg i32 %1906 to i64
  %1908 = shl i64 %1905, %1907
  %1909 = lshr i64 %1908, %1702
  %1910 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1909
  %1911 = load i16, ptr %1910, align 2
  store i16 %1911, ptr %1904, align 1
  %1912 = getelementptr inbounds nuw i8, ptr %1910, i64 2
  %1913 = load i8, ptr %1912, align 2, !tbaa !84
  %1914 = zext i8 %1913 to i32
  %1915 = load i32, ptr %1692, align 8, !tbaa !107
  %1916 = add i32 %1915, %1914
  store i32 %1916, ptr %1692, align 8, !tbaa !107
  %1917 = getelementptr inbounds nuw i8, ptr %1910, i64 3
  %1918 = load i8, ptr %1917, align 1, !tbaa !87
  %1919 = zext i8 %1918 to i64
  %1920 = getelementptr inbounds nuw i8, ptr %1904, i64 %1919
  %1921 = load i64, ptr %6, align 8, !tbaa !110
  %1922 = and i32 %1916, 63
  %1923 = zext nneg i32 %1922 to i64
  %1924 = shl i64 %1921, %1923
  %1925 = lshr i64 %1924, %1702
  %1926 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %1925
  %1927 = load i16, ptr %1926, align 2
  store i16 %1927, ptr %1920, align 1
  %1928 = getelementptr inbounds nuw i8, ptr %1926, i64 2
  %1929 = load i8, ptr %1928, align 2, !tbaa !84
  %1930 = zext i8 %1929 to i32
  %1931 = load i32, ptr %1692, align 8, !tbaa !107
  %1932 = add i32 %1931, %1930
  store i32 %1932, ptr %1692, align 8, !tbaa !107
  %1933 = getelementptr inbounds nuw i8, ptr %1926, i64 3
  %1934 = load i8, ptr %1933, align 1, !tbaa !87
  %1935 = zext i8 %1934 to i64
  %1936 = getelementptr inbounds nuw i8, ptr %1920, i64 %1935
  %1937 = icmp ugt i32 %1932, 64
  br i1 %1937, label %.loopexit173, label %1836, !prof !88, !llvm.loop !90

1938:                                             ; preds = %1684
  %1939 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %1940 = load i32, ptr %1939, align 8, !tbaa !107
  %1941 = icmp ugt i32 %1940, 64
  %1942 = getelementptr inbounds nuw i8, ptr %6, i64 16
  br i1 %1941, label %1943, label %1944, !prof !109

1943:                                             ; preds = %1938
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1942, align 8, !tbaa !108
  br label %.loopexit168

1944:                                             ; preds = %1938
  %1945 = load ptr, ptr %1942, align 8, !tbaa !108
  %1946 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %1947 = load ptr, ptr %1946, align 8, !tbaa !103
  %1948 = icmp ult ptr %1945, %1947
  br i1 %1948, label %1956, label %1949

1949:                                             ; preds = %1944
  %1950 = lshr i32 %1940, 3
  %1951 = zext nneg i32 %1950 to i64
  %1952 = sub nsw i64 0, %1951
  %1953 = getelementptr inbounds i8, ptr %1945, i64 %1952
  store ptr %1953, ptr %1942, align 8, !tbaa !108
  %1954 = and i32 %1940, 7
  store i32 %1954, ptr %1939, align 8, !tbaa !107
  %1955 = load i64, ptr %1953, align 1, !tbaa !26
  store i64 %1955, ptr %6, align 8, !tbaa !110
  br label %.loopexit168

1956:                                             ; preds = %1944
  %1957 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %1958 = load ptr, ptr %1957, align 8, !tbaa !112
  %1959 = icmp eq ptr %1945, %1958
  br i1 %1959, label %.loopexit168, label %1960

1960:                                             ; preds = %1956
  %1961 = lshr i32 %1940, 3
  %1962 = zext nneg i32 %1961 to i64
  %1963 = sub nsw i64 0, %1962
  %1964 = getelementptr inbounds i8, ptr %1945, i64 %1963
  %1965 = icmp ult ptr %1964, %1958
  %1966 = ptrtoint ptr %1945 to i64
  %1967 = ptrtoint ptr %1958 to i64
  %1968 = sub i64 %1966, %1967
  %1969 = trunc i64 %1968 to i32
  %1970 = select i1 %1965, i32 %1969, i32 %1961
  %1971 = zext i32 %1970 to i64
  %1972 = sub nsw i64 0, %1971
  %1973 = getelementptr inbounds i8, ptr %1945, i64 %1972
  store ptr %1973, ptr %1942, align 8, !tbaa !108
  %1974 = shl i32 %1970, 3
  %1975 = sub i32 %1940, %1974
  store i32 %1975, ptr %1939, align 8, !tbaa !107
  %1976 = load i64, ptr %1973, align 1, !tbaa !26
  store i64 %1976, ptr %6, align 8, !tbaa !110
  br label %.loopexit168

.loopexit168:                                     ; preds = %1867, %1848, %1746, %1727, %1960, %1956, %1949, %1943, %.loopexit173, %.loopexit170
  %1977 = phi i32 [ %1975, %1960 ], [ %1954, %1949 ], [ %1940, %1943 ], [ %1712, %.loopexit170 ], [ %1833, %.loopexit173 ], [ %1940, %1956 ], [ %1716, %1727 ], [ %1747, %1746 ], [ %1868, %1867 ], [ %1837, %1848 ]
  %1978 = phi ptr [ %584, %1960 ], [ %584, %1949 ], [ %584, %1943 ], [ %1713, %.loopexit170 ], [ %1834, %.loopexit173 ], [ %584, %1956 ], [ %1717, %1746 ], [ %1717, %1727 ], [ %1838, %1848 ], [ %1838, %1867 ]
  %1979 = ptrtoint ptr %1978 to i64
  %1980 = sub i64 %1686, %1979
  %1981 = icmp ugt i64 %1980, 1
  br i1 %1981, label %1982, label %.loopexit

1982:                                             ; preds = %.loopexit168
  %1983 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %1984 = getelementptr inbounds i8, ptr %11, i64 -2
  %1985 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %1986 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %1987 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %1988 = sub nsw i32 0, %36
  %1989 = and i32 %1988, 63
  %1990 = zext nneg i32 %1989 to i64
  %1991 = icmp ugt i32 %1977, 64
  br i1 %1991, label %.loopexit167, label %.preheader165, !prof !91

.loopexit167:                                     ; preds = %2034, %1982
  %1992 = phi i32 [ %1977, %1982 ], [ %2045, %2034 ]
  %1993 = phi ptr [ %1978, %1982 ], [ %2049, %2034 ]
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1985, align 8, !tbaa !108
  br label %.loopexit166

.preheader165:                                    ; preds = %1982, %2034
  %1994 = phi ptr [ %2049, %2034 ], [ %1978, %1982 ]
  %1995 = phi i32 [ %2045, %2034 ], [ %1977, %1982 ]
  %1996 = load ptr, ptr %1985, align 8, !tbaa !108
  %1997 = load ptr, ptr %1986, align 8, !tbaa !103
  %1998 = icmp ult ptr %1996, %1997
  br i1 %1998, label %2005, label %1999

1999:                                             ; preds = %.preheader165
  %2000 = lshr i32 %1995, 3
  %2001 = zext nneg i32 %2000 to i64
  %2002 = sub nsw i64 0, %2001
  %2003 = getelementptr inbounds i8, ptr %1996, i64 %2002
  store ptr %2003, ptr %1985, align 8, !tbaa !108
  %2004 = and i32 %1995, 7
  br label %2024

2005:                                             ; preds = %.preheader165
  %2006 = load ptr, ptr %1987, align 8, !tbaa !112
  %2007 = icmp eq ptr %1996, %2006
  br i1 %2007, label %.loopexit166, label %2008

2008:                                             ; preds = %2005
  %2009 = lshr i32 %1995, 3
  %2010 = zext nneg i32 %2009 to i64
  %2011 = sub nsw i64 0, %2010
  %2012 = getelementptr inbounds i8, ptr %1996, i64 %2011
  %2013 = icmp uge ptr %2012, %2006
  %2014 = ptrtoint ptr %1996 to i64
  %2015 = ptrtoint ptr %2006 to i64
  %2016 = sub i64 %2014, %2015
  %2017 = trunc i64 %2016 to i32
  %2018 = select i1 %2013, i32 %2009, i32 %2017
  %2019 = zext i32 %2018 to i64
  %2020 = sub nsw i64 0, %2019
  %2021 = getelementptr inbounds i8, ptr %1996, i64 %2020
  store ptr %2021, ptr %1985, align 8, !tbaa !108
  %2022 = shl i32 %2018, 3
  %2023 = sub i32 %1995, %2022
  br label %2024

2024:                                             ; preds = %2008, %1999
  %2025 = phi i32 [ %2004, %1999 ], [ %2023, %2008 ]
  %2026 = phi ptr [ %2003, %1999 ], [ %2021, %2008 ]
  %2027 = phi i1 [ true, %1999 ], [ %2013, %2008 ]
  store i32 %2025, ptr %1983, align 8, !tbaa !107
  %2028 = load i64, ptr %2026, align 1, !tbaa !26
  store i64 %2028, ptr %6, align 8, !tbaa !110
  %2029 = icmp ule ptr %1994, %1984
  %2030 = and i1 %2029, %2027
  br i1 %2030, label %2034, label %.loopexit166

.loopexit166:                                     ; preds = %2024, %2005, %.loopexit167
  %2031 = phi ptr [ %1993, %.loopexit167 ], [ %1994, %2005 ], [ %1994, %2024 ]
  %2032 = phi i32 [ %1992, %.loopexit167 ], [ %2025, %2024 ], [ %1995, %2005 ]
  %2033 = icmp ugt ptr %2031, %1984
  br i1 %2033, label %.loopexit, label %.preheader

2034:                                             ; preds = %2024
  %2035 = and i32 %2025, 63
  %2036 = zext nneg i32 %2035 to i64
  %2037 = shl i64 %2028, %2036
  %2038 = lshr i64 %2037, %1990
  %2039 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %2038
  %2040 = load i16, ptr %2039, align 2
  store i16 %2040, ptr %1994, align 1
  %2041 = getelementptr inbounds nuw i8, ptr %2039, i64 2
  %2042 = load i8, ptr %2041, align 2, !tbaa !84
  %2043 = zext i8 %2042 to i32
  %2044 = load i32, ptr %1983, align 8, !tbaa !107
  %2045 = add i32 %2044, %2043
  store i32 %2045, ptr %1983, align 8, !tbaa !107
  %2046 = getelementptr inbounds nuw i8, ptr %2039, i64 3
  %2047 = load i8, ptr %2046, align 1, !tbaa !87
  %2048 = zext i8 %2047 to i64
  %2049 = getelementptr inbounds nuw i8, ptr %1994, i64 %2048
  %2050 = icmp ugt i32 %2045, 64
  br i1 %2050, label %.loopexit167, label %.preheader165, !prof !88, !llvm.loop !92

.preheader:                                       ; preds = %.loopexit166, %.preheader
  %2051 = phi i32 [ %2064, %.preheader ], [ %2032, %.loopexit166 ]
  %2052 = phi ptr [ %2068, %.preheader ], [ %2031, %.loopexit166 ]
  %2053 = load i64, ptr %6, align 8, !tbaa !110
  %2054 = and i32 %2051, 63
  %2055 = zext nneg i32 %2054 to i64
  %2056 = shl i64 %2053, %2055
  %2057 = lshr i64 %2056, %1990
  %2058 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %2057
  %2059 = load i16, ptr %2058, align 2
  store i16 %2059, ptr %2052, align 1
  %2060 = getelementptr inbounds nuw i8, ptr %2058, i64 2
  %2061 = load i8, ptr %2060, align 2, !tbaa !84
  %2062 = zext i8 %2061 to i32
  %2063 = load i32, ptr %1983, align 8, !tbaa !107
  %2064 = add i32 %2063, %2062
  store i32 %2064, ptr %1983, align 8, !tbaa !107
  %2065 = getelementptr inbounds nuw i8, ptr %2058, i64 3
  %2066 = load i8, ptr %2065, align 1, !tbaa !87
  %2067 = zext i8 %2066 to i64
  %2068 = getelementptr inbounds nuw i8, ptr %2052, i64 %2067
  %2069 = icmp ugt ptr %2068, %1984
  br i1 %2069, label %.loopexit, label %.preheader, !llvm.loop !93

.loopexit:                                        ; preds = %.preheader, %.loopexit166, %.loopexit168
  %2070 = phi i32 [ %1977, %.loopexit168 ], [ %2032, %.loopexit166 ], [ %2064, %.preheader ]
  %2071 = phi ptr [ %1978, %.loopexit168 ], [ %2031, %.loopexit166 ], [ %2068, %.preheader ]
  %2072 = icmp ult ptr %2071, %11
  br i1 %2072, label %2073, label %2103

2073:                                             ; preds = %.loopexit
  %2074 = load i64, ptr %6, align 8, !tbaa !110
  %2075 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %2076 = and i32 %2070, 63
  %2077 = zext nneg i32 %2076 to i64
  %2078 = shl i64 %2074, %2077
  %2079 = sub nsw i32 0, %36
  %2080 = and i32 %2079, 63
  %2081 = zext nneg i32 %2080 to i64
  %2082 = lshr i64 %2078, %2081
  %2083 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %2082
  %2084 = load i8, ptr %2083, align 2
  store i8 %2084, ptr %2071, align 1
  %2085 = getelementptr inbounds nuw i8, ptr %2083, i64 3
  %2086 = load i8, ptr %2085, align 1, !tbaa !87
  %2087 = icmp eq i8 %2086, 1
  br i1 %2087, label %2088, label %2094

2088:                                             ; preds = %2073
  %2089 = getelementptr inbounds nuw i8, ptr %2083, i64 2
  %2090 = load i8, ptr %2089, align 2, !tbaa !84
  %2091 = zext i8 %2090 to i32
  %2092 = load i32, ptr %2075, align 8, !tbaa !107
  %2093 = add i32 %2092, %2091
  br label %2103

2094:                                             ; preds = %2073
  %2095 = load i32, ptr %2075, align 8, !tbaa !107
  %2096 = icmp ult i32 %2095, 64
  br i1 %2096, label %2097, label %2103

2097:                                             ; preds = %2094
  %2098 = getelementptr inbounds nuw i8, ptr %2083, i64 2
  %2099 = load i8, ptr %2098, align 2, !tbaa !84
  %2100 = zext i8 %2099 to i32
  %2101 = add nuw nsw i32 %2095, %2100
  %2102 = tail call i32 @llvm.umin.i32(i32 %2101, i32 64)
  br label %2103

2103:                                             ; preds = %2097, %2094, %2088, %.loopexit
  %2104 = phi i32 [ %2093, %2088 ], [ %2095, %2094 ], [ %2102, %2097 ], [ %2070, %.loopexit ]
  %2105 = icmp ne ptr %925, %26
  %2106 = icmp ne i32 %957, 64
  %2107 = select i1 %2105, i1 true, i1 %2106
  %2108 = icmp ne ptr %1291, %27
  %2109 = icmp ne i32 %1321, 64
  %2110 = select i1 %2108, i1 true, i1 %2109
  %2111 = or i1 %2107, %2110
  %2112 = icmp ne ptr %1655, %28
  %2113 = icmp ne i32 %1685, 64
  %2114 = select i1 %2112, i1 true, i1 %2113
  %2115 = or i1 %2111, %2114
  %2116 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %2117 = load ptr, ptr %2116, align 8, !tbaa !108
  %2118 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %2119 = load ptr, ptr %2118, align 8, !tbaa !112
  %2120 = icmp ne ptr %2117, %2119
  %2121 = icmp ne i32 %2104, 64
  %2122 = select i1 %2120, i1 true, i1 %2121
  %2123 = or i1 %2115, %2122
  %2124 = select i1 %2123, i64 -20, i64 %1
  br label %2125

2125:                                             ; preds = %2103, %574, %261, %250, %195, %187, %176, %121, %113, %102, %47, %42, %10
  %2126 = phi i64 [ %265, %261 ], [ -20, %10 ], [ -20, %574 ], [ %2124, %2103 ], [ -20, %102 ], [ -1, %47 ], [ -72, %42 ], [ -20, %176 ], [ -1, %121 ], [ -72, %113 ], [ -20, %250 ], [ -1, %195 ], [ -72, %187 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %2127

2127:                                             ; preds = %2125, %5
  %2128 = phi i64 [ %2126, %2125 ], [ -20, %5 ]
  ret i64 %2128
}

declare hidden void @HUF_decompress4X2_usingDTable_internal_fast_asm_loop(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @HUF_decompress4X2_usingDTable_internal_fast(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef readonly captures(none) %5) unnamed_addr #14 {
  %7 = alloca %struct.HUF_DecompressFastArgs, align 8
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %9 = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %11 = call fastcc i64 @HUF_DecompressFastArgs_init(ptr noundef %7, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %12 = icmp eq i64 %11, 1
  br i1 %12, label %13, label %.loopexit29

13:                                               ; preds = %6
  call void %5(ptr noundef nonnull %7) #17, !callees !119
  %14 = add i64 %1, 3
  %15 = lshr i64 %14, 2
  %16 = ptrtoint ptr %10 to i64
  %17 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 120
  %19 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %20 = getelementptr inbounds nuw i8, ptr %7, i64 104
  br label %23

21:                                               ; preds = %277
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %22 = icmp eq i64 %indvars.iv.next, 4
  br i1 %22, label %.loopexit29, label %23, !llvm.loop !120

23:                                               ; preds = %21, %13
  %indvars.iv = phi i64 [ %indvars.iv.next, %21 ], [ 0, %13 ]
  %24 = phi ptr [ %29, %21 ], [ %0, %13 ]
  %25 = ptrtoint ptr %24 to i64
  %26 = sub i64 %16, %25
  %27 = icmp ugt i64 %15, %26
  %28 = getelementptr inbounds nuw i8, ptr %24, i64 %15
  %29 = select i1 %27, ptr %10, ptr %28
  %30 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %indvars.iv
  %31 = load ptr, ptr %30, align 8, !tbaa !121
  %32 = icmp ugt ptr %31, %29
  br i1 %32, label %.loopexit29, label %33

33:                                               ; preds = %23
  %34 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  %35 = load ptr, ptr %34, align 8, !tbaa !121
  %36 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv
  %37 = load ptr, ptr %36, align 8, !tbaa !121
  %38 = getelementptr inbounds i8, ptr %37, i64 -8
  %39 = icmp ult ptr %35, %38
  br i1 %39, label %.loopexit29, label %40

40:                                               ; preds = %33
  %41 = load i64, ptr %35, align 1, !tbaa !26
  %42 = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %indvars.iv
  %43 = load i64, ptr %42, align 8, !tbaa !26
  %44 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %43, i1 true)
  %45 = trunc nuw nsw i64 %44 to i32
  %46 = load ptr, ptr %20, align 8, !tbaa !116
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 8
  %48 = ptrtoint ptr %29 to i64
  %49 = ptrtoint ptr %31 to i64
  %50 = sub i64 %48, %49
  %51 = icmp ugt i64 %50, 7
  br i1 %51, label %52, label %160

52:                                               ; preds = %40
  %53 = ptrtoint ptr %46 to i64
  %54 = getelementptr inbounds i8, ptr %29, i64 -9
  br label %55

55:                                               ; preds = %88, %52
  %56 = phi ptr [ %31, %52 ], [ %158, %88 ]
  %57 = phi i64 [ %41, %52 ], [ %85, %88 ]
  %58 = phi i32 [ %45, %52 ], [ %154, %88 ]
  %59 = phi ptr [ %35, %52 ], [ %84, %88 ]
  %60 = icmp ult ptr %59, %47
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = lshr i32 %58, 3
  %63 = and i32 %58, 7
  br label %78

64:                                               ; preds = %55
  %65 = icmp eq ptr %59, %46
  br i1 %65, label %.loopexit24.loopexit, label %66

66:                                               ; preds = %64
  %67 = lshr i32 %58, 3
  %68 = zext nneg i32 %67 to i64
  %69 = sub nsw i64 0, %68
  %70 = getelementptr inbounds i8, ptr %59, i64 %69
  %71 = icmp uge ptr %70, %46
  %72 = ptrtoint ptr %59 to i64
  %73 = sub i64 %72, %53
  %74 = trunc i64 %73 to i32
  %75 = select i1 %71, i32 %67, i32 %74
  %76 = shl i32 %75, 3
  %77 = sub i32 %58, %76
  br label %78

78:                                               ; preds = %66, %61
  %79 = phi i32 [ %75, %66 ], [ %62, %61 ]
  %80 = phi i32 [ %77, %66 ], [ %63, %61 ]
  %81 = phi i1 [ %71, %66 ], [ true, %61 ]
  %82 = zext i32 %79 to i64
  %83 = sub nsw i64 0, %82
  %84 = getelementptr inbounds i8, ptr %59, i64 %83
  %85 = load i64, ptr %84, align 1, !tbaa !26
  %86 = icmp ult ptr %56, %54
  %87 = and i1 %86, %81
  br i1 %87, label %88, label %.loopexit24.loopexit

88:                                               ; preds = %78
  %89 = and i32 %80, 63
  %90 = zext nneg i32 %89 to i64
  %91 = shl i64 %85, %90
  %92 = lshr i64 %91, 53
  %93 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %92
  %94 = load i16, ptr %93, align 2
  store i16 %94, ptr %56, align 1
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 2
  %96 = load i8, ptr %95, align 2, !tbaa !84
  %97 = zext i8 %96 to i32
  %98 = add i32 %80, %97
  %99 = getelementptr inbounds nuw i8, ptr %93, i64 3
  %100 = load i8, ptr %99, align 1, !tbaa !87
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds nuw i8, ptr %56, i64 %101
  %103 = and i32 %98, 63
  %104 = zext nneg i32 %103 to i64
  %105 = shl i64 %85, %104
  %106 = lshr i64 %105, 53
  %107 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %106
  %108 = load i16, ptr %107, align 2
  store i16 %108, ptr %102, align 1
  %109 = getelementptr inbounds nuw i8, ptr %107, i64 2
  %110 = load i8, ptr %109, align 2, !tbaa !84
  %111 = zext i8 %110 to i32
  %112 = add i32 %98, %111
  %113 = getelementptr inbounds nuw i8, ptr %107, i64 3
  %114 = load i8, ptr %113, align 1, !tbaa !87
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds nuw i8, ptr %102, i64 %115
  %117 = and i32 %112, 63
  %118 = zext nneg i32 %117 to i64
  %119 = shl i64 %85, %118
  %120 = lshr i64 %119, 53
  %121 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %120
  %122 = load i16, ptr %121, align 2
  store i16 %122, ptr %116, align 1
  %123 = getelementptr inbounds nuw i8, ptr %121, i64 2
  %124 = load i8, ptr %123, align 2, !tbaa !84
  %125 = zext i8 %124 to i32
  %126 = add i32 %112, %125
  %127 = getelementptr inbounds nuw i8, ptr %121, i64 3
  %128 = load i8, ptr %127, align 1, !tbaa !87
  %129 = zext i8 %128 to i64
  %130 = getelementptr inbounds nuw i8, ptr %116, i64 %129
  %131 = and i32 %126, 63
  %132 = zext nneg i32 %131 to i64
  %133 = shl i64 %85, %132
  %134 = lshr i64 %133, 53
  %135 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %134
  %136 = load i16, ptr %135, align 2
  store i16 %136, ptr %130, align 1
  %137 = getelementptr inbounds nuw i8, ptr %135, i64 2
  %138 = load i8, ptr %137, align 2, !tbaa !84
  %139 = zext i8 %138 to i32
  %140 = add i32 %126, %139
  %141 = getelementptr inbounds nuw i8, ptr %135, i64 3
  %142 = load i8, ptr %141, align 1, !tbaa !87
  %143 = zext i8 %142 to i64
  %144 = getelementptr inbounds nuw i8, ptr %130, i64 %143
  %145 = and i32 %140, 63
  %146 = zext nneg i32 %145 to i64
  %147 = shl i64 %85, %146
  %148 = lshr i64 %147, 53
  %149 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %148
  %150 = load i16, ptr %149, align 2
  store i16 %150, ptr %144, align 1
  %151 = getelementptr inbounds nuw i8, ptr %149, i64 2
  %152 = load i8, ptr %151, align 2, !tbaa !84
  %153 = zext i8 %152 to i32
  %154 = add i32 %140, %153
  %155 = getelementptr inbounds nuw i8, ptr %149, i64 3
  %156 = load i8, ptr %155, align 1, !tbaa !87
  %157 = zext i8 %156 to i64
  %158 = getelementptr inbounds nuw i8, ptr %144, i64 %157
  %159 = icmp ugt i32 %154, 64
  br i1 %159, label %.loopexit24.loopexit, label %55, !prof !88, !llvm.loop !89

160:                                              ; preds = %40
  %161 = icmp ult ptr %35, %47
  br i1 %161, label %168, label %162

162:                                              ; preds = %160
  %163 = lshr i64 %44, 3
  %164 = sub nsw i64 0, %163
  %165 = getelementptr inbounds i8, ptr %35, i64 %164
  %166 = and i32 %45, 7
  %167 = load i64, ptr %165, align 1, !tbaa !26
  br label %.loopexit24

168:                                              ; preds = %160
  %169 = icmp eq ptr %35, %46
  br i1 %169, label %.loopexit24, label %170

170:                                              ; preds = %168
  %171 = lshr i32 %45, 3
  %172 = zext nneg i32 %171 to i64
  %173 = sub nsw i64 0, %172
  %174 = getelementptr inbounds i8, ptr %35, i64 %173
  %175 = icmp ult ptr %174, %46
  %176 = ptrtoint ptr %35 to i64
  %177 = ptrtoint ptr %46 to i64
  %178 = sub i64 %176, %177
  %179 = trunc i64 %178 to i32
  %180 = select i1 %175, i32 %179, i32 %171
  %181 = zext i32 %180 to i64
  %182 = sub nsw i64 0, %181
  %183 = getelementptr inbounds i8, ptr %35, i64 %182
  %184 = shl i32 %180, 3
  %185 = sub i32 %45, %184
  %186 = load i64, ptr %183, align 1, !tbaa !26
  br label %.loopexit24

.loopexit24.loopexit:                             ; preds = %64, %78, %88
  %.ph34 = phi ptr [ %84, %78 ], [ @BIT_reloadDStream.zeroFilled, %88 ], [ %59, %64 ]
  %.ph35 = phi i32 [ %80, %78 ], [ %154, %88 ], [ %58, %64 ]
  %.ph36 = phi i64 [ %85, %78 ], [ %85, %88 ], [ %57, %64 ]
  %.ph37 = phi ptr [ %56, %78 ], [ %158, %88 ], [ %56, %64 ]
  %.pre = ptrtoint ptr %.ph37 to i64
  %.pre41 = sub i64 %48, %.pre
  br label %.loopexit24

.loopexit24:                                      ; preds = %.loopexit24.loopexit, %170, %168, %162
  %.pre-phi42 = phi i64 [ %.pre41, %.loopexit24.loopexit ], [ %50, %170 ], [ %50, %168 ], [ %50, %162 ]
  %187 = phi ptr [ %.ph34, %.loopexit24.loopexit ], [ %183, %170 ], [ %35, %168 ], [ %165, %162 ]
  %188 = phi i32 [ %.ph35, %.loopexit24.loopexit ], [ %185, %170 ], [ %45, %168 ], [ %166, %162 ]
  %189 = phi i64 [ %.ph36, %.loopexit24.loopexit ], [ %186, %170 ], [ %41, %168 ], [ %167, %162 ]
  %190 = phi ptr [ %.ph37, %.loopexit24.loopexit ], [ %31, %170 ], [ %31, %168 ], [ %31, %162 ]
  %191 = icmp ugt i64 %.pre-phi42, 1
  br i1 %191, label %192, label %.loopexit

192:                                              ; preds = %.loopexit24
  %193 = getelementptr inbounds i8, ptr %29, i64 -2
  %194 = ptrtoint ptr %46 to i64
  %195 = icmp ugt i32 %188, 64
  br i1 %195, label %.loopexit21, label %.preheader20, !prof !91

.preheader20:                                     ; preds = %192, %232
  %196 = phi ptr [ %246, %232 ], [ %190, %192 ]
  %197 = phi i64 [ %225, %232 ], [ %189, %192 ]
  %198 = phi i32 [ %242, %232 ], [ %188, %192 ]
  %199 = phi ptr [ %224, %232 ], [ %187, %192 ]
  %200 = icmp ult ptr %199, %47
  br i1 %200, label %204, label %201

201:                                              ; preds = %.preheader20
  %202 = lshr i32 %198, 3
  %203 = and i32 %198, 7
  br label %218

204:                                              ; preds = %.preheader20
  %205 = icmp eq ptr %199, %46
  br i1 %205, label %.loopexit21, label %206

206:                                              ; preds = %204
  %207 = lshr i32 %198, 3
  %208 = zext nneg i32 %207 to i64
  %209 = sub nsw i64 0, %208
  %210 = getelementptr inbounds i8, ptr %199, i64 %209
  %211 = icmp uge ptr %210, %46
  %212 = ptrtoint ptr %199 to i64
  %213 = sub i64 %212, %194
  %214 = trunc i64 %213 to i32
  %215 = select i1 %211, i32 %207, i32 %214
  %216 = shl i32 %215, 3
  %217 = sub i32 %198, %216
  br label %218

218:                                              ; preds = %206, %201
  %219 = phi i32 [ %215, %206 ], [ %202, %201 ]
  %220 = phi i32 [ %217, %206 ], [ %203, %201 ]
  %221 = phi i1 [ %211, %206 ], [ true, %201 ]
  %222 = zext i32 %219 to i64
  %223 = sub nsw i64 0, %222
  %224 = getelementptr inbounds i8, ptr %199, i64 %223
  %225 = load i64, ptr %224, align 1, !tbaa !26
  %226 = icmp ule ptr %196, %193
  %227 = and i1 %226, %221
  br i1 %227, label %232, label %.loopexit21

.loopexit21:                                      ; preds = %232, %218, %204, %192
  %228 = phi ptr [ %190, %192 ], [ %196, %204 ], [ %246, %232 ], [ %196, %218 ]
  %229 = phi i64 [ %189, %192 ], [ %197, %204 ], [ %225, %232 ], [ %225, %218 ]
  %230 = phi i32 [ %188, %192 ], [ %198, %204 ], [ %242, %232 ], [ %220, %218 ]
  %231 = icmp ugt ptr %228, %193
  br i1 %231, label %.loopexit, label %.preheader

232:                                              ; preds = %218
  %233 = and i32 %220, 63
  %234 = zext nneg i32 %233 to i64
  %235 = shl i64 %225, %234
  %236 = lshr i64 %235, 53
  %237 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %236
  %238 = load i16, ptr %237, align 2
  store i16 %238, ptr %196, align 1
  %239 = getelementptr inbounds nuw i8, ptr %237, i64 2
  %240 = load i8, ptr %239, align 2, !tbaa !84
  %241 = zext i8 %240 to i32
  %242 = add i32 %220, %241
  %243 = getelementptr inbounds nuw i8, ptr %237, i64 3
  %244 = load i8, ptr %243, align 1, !tbaa !87
  %245 = zext i8 %244 to i64
  %246 = getelementptr inbounds nuw i8, ptr %196, i64 %245
  %247 = icmp ugt i32 %242, 64
  br i1 %247, label %.loopexit21, label %.preheader20, !prof !88, !llvm.loop !92

.preheader:                                       ; preds = %.loopexit21, %.preheader
  %248 = phi ptr [ %263, %.preheader ], [ %228, %.loopexit21 ]
  %249 = phi i32 [ %259, %.preheader ], [ %230, %.loopexit21 ]
  %250 = and i32 %249, 63
  %251 = zext nneg i32 %250 to i64
  %252 = shl i64 %229, %251
  %253 = lshr i64 %252, 53
  %254 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %253
  %255 = load i16, ptr %254, align 2
  store i16 %255, ptr %248, align 1
  %256 = getelementptr inbounds nuw i8, ptr %254, i64 2
  %257 = load i8, ptr %256, align 2, !tbaa !84
  %258 = zext i8 %257 to i32
  %259 = add i32 %249, %258
  %260 = getelementptr inbounds nuw i8, ptr %254, i64 3
  %261 = load i8, ptr %260, align 1, !tbaa !87
  %262 = zext i8 %261 to i64
  %263 = getelementptr inbounds nuw i8, ptr %248, i64 %262
  %264 = icmp ugt ptr %263, %193
  br i1 %264, label %.loopexit, label %.preheader, !llvm.loop !93

.loopexit:                                        ; preds = %.preheader, %.loopexit21, %.loopexit24
  %265 = phi i32 [ %188, %.loopexit24 ], [ %230, %.loopexit21 ], [ %259, %.preheader ]
  %266 = phi i64 [ %189, %.loopexit24 ], [ %229, %.loopexit21 ], [ %229, %.preheader ]
  %267 = phi ptr [ %190, %.loopexit24 ], [ %228, %.loopexit21 ], [ %263, %.preheader ]
  %268 = icmp ult ptr %267, %29
  br i1 %268, label %269, label %277

269:                                              ; preds = %.loopexit
  %270 = and i32 %265, 63
  %271 = zext nneg i32 %270 to i64
  %272 = shl i64 %266, %271
  %273 = lshr i64 %272, 53
  %274 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %273
  %275 = load i8, ptr %274, align 2
  store i8 %275, ptr %267, align 1
  %276 = getelementptr inbounds nuw i8, ptr %267, i64 1
  br label %277

277:                                              ; preds = %269, %.loopexit
  %278 = phi ptr [ %276, %269 ], [ %267, %.loopexit ]
  %279 = ptrtoint ptr %278 to i64
  %280 = sub i64 %279, %49
  %281 = load ptr, ptr %30, align 8, !tbaa !121
  %282 = getelementptr inbounds nuw i8, ptr %281, i64 %280
  store ptr %282, ptr %30, align 8, !tbaa !121
  %283 = icmp eq ptr %282, %29
  br i1 %283, label %21, label %.loopexit29

.loopexit29:                                      ; preds = %277, %33, %23, %21, %6
  %284 = phi i64 [ %11, %6 ], [ -20, %277 ], [ %1, %21 ], [ -20, %33 ], [ -20, %23 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret i64 %284
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i64 -20, 2) i64 @HUF_DecompressFastArgs_init(ptr noundef nonnull writeonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #15 {
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %8 = load i32, ptr %5, align 4
  %9 = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 %9
  %11 = icmp eq i64 %2, 0
  br i1 %11, label %123, label %12

12:                                               ; preds = %6
  %13 = icmp ult i64 %4, 10
  br i1 %13, label %123, label %14

14:                                               ; preds = %12
  %15 = and i32 %8, 16711680
  %16 = icmp eq i32 %15, 720896
  br i1 %16, label %17, label %123

17:                                               ; preds = %14
  %18 = load i16, ptr %3, align 1, !tbaa !102
  %19 = zext i16 %18 to i64
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %21 = load i16, ptr %20, align 1, !tbaa !102
  %22 = zext i16 %21 to i64
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %24 = load i16, ptr %23, align 1, !tbaa !102
  %25 = zext i16 %24 to i64
  %26 = add nuw nsw i64 %19, 6
  %27 = add nuw nsw i64 %26, %22
  %28 = add nuw nsw i64 %27, %25
  %29 = sub i64 %4, %28
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 6
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %30, ptr %31, align 8, !tbaa !121
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 %19
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %32, ptr %33, align 8, !tbaa !121
  %34 = getelementptr inbounds nuw i8, ptr %32, i64 %22
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %34, ptr %35, align 8, !tbaa !121
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 %25
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %36, ptr %37, align 8, !tbaa !121
  %38 = icmp ult i16 %18, 8
  %39 = icmp ult i16 %21, 8
  %40 = select i1 %38, i1 true, i1 %39
  %41 = icmp ult i16 %24, 8
  %42 = select i1 %40, i1 true, i1 %41
  %43 = icmp ult i64 %29, 8
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %123, label %45

45:                                               ; preds = %17
  %46 = icmp ugt i64 %28, %4
  br i1 %46, label %123, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8, ptr %32, i64 -8
  store ptr %48, ptr %0, align 8, !tbaa !121
  %49 = getelementptr inbounds i8, ptr %34, i64 -8
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %49, ptr %50, align 8, !tbaa !121
  %51 = getelementptr inbounds i8, ptr %36, i64 -8
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %51, ptr %52, align 8, !tbaa !121
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %54 = getelementptr inbounds i8, ptr %53, i64 -8
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %54, ptr %55, align 8, !tbaa !121
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %56, align 8, !tbaa !121
  %57 = add i64 %2, 3
  %58 = lshr i64 %57, 2
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 %58
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %59, ptr %60, align 8, !tbaa !121
  %61 = getelementptr inbounds nuw i8, ptr %59, i64 %58
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %61, ptr %62, align 8, !tbaa !121
  %63 = getelementptr inbounds nuw i8, ptr %61, i64 %58
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %63, ptr %64, align 8, !tbaa !121
  %65 = mul nuw nsw i64 %58, 3
  %66 = icmp sgt i64 %2, %65
  br i1 %66, label %67, label %123

67:                                               ; preds = %47
  %68 = getelementptr inbounds i8, ptr %32, i64 -1
  %69 = load i8, ptr %68, align 1, !tbaa !9
  %70 = icmp eq i8 %69, 0
  %71 = zext i8 %69 to i32
  %72 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %71, i1 true)
  %73 = xor i32 %72, 31
  %74 = sub nuw nsw i32 8, %73
  %75 = zext nneg i32 %74 to i64
  %76 = select i1 %70, i64 0, i64 %75
  %77 = load i64, ptr %48, align 1, !tbaa !26
  %78 = or i64 %77, 1
  %79 = shl i64 %78, %76
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %79, ptr %80, align 8, !tbaa !26
  %81 = getelementptr inbounds i8, ptr %34, i64 -1
  %82 = load i8, ptr %81, align 1, !tbaa !9
  %83 = icmp eq i8 %82, 0
  %84 = zext i8 %82 to i32
  %85 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %84, i1 true)
  %86 = xor i32 %85, 31
  %87 = sub nuw nsw i32 8, %86
  %88 = zext nneg i32 %87 to i64
  %89 = select i1 %83, i64 0, i64 %88
  %90 = load i64, ptr %49, align 1, !tbaa !26
  %91 = or i64 %90, 1
  %92 = shl i64 %91, %89
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %92, ptr %93, align 8, !tbaa !26
  %94 = getelementptr inbounds i8, ptr %36, i64 -1
  %95 = load i8, ptr %94, align 1, !tbaa !9
  %96 = icmp eq i8 %95, 0
  %97 = zext i8 %95 to i32
  %98 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %97, i1 true)
  %99 = xor i32 %98, 31
  %100 = sub nuw nsw i32 8, %99
  %101 = zext nneg i32 %100 to i64
  %102 = select i1 %96, i64 0, i64 %101
  %103 = load i64, ptr %51, align 1, !tbaa !26
  %104 = or i64 %103, 1
  %105 = shl i64 %104, %102
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %105, ptr %106, align 8, !tbaa !26
  %107 = getelementptr inbounds i8, ptr %53, i64 -1
  %108 = load i8, ptr %107, align 1, !tbaa !9
  %109 = icmp eq i8 %108, 0
  %110 = zext i8 %108 to i32
  %111 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %110, i1 true)
  %112 = xor i32 %111, 31
  %113 = sub nuw nsw i32 8, %112
  %114 = zext nneg i32 %113 to i64
  %115 = select i1 %109, i64 0, i64 %114
  %116 = load i64, ptr %54, align 1, !tbaa !26
  %117 = or i64 %116, 1
  %118 = shl i64 %117, %115
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %118, ptr %119, align 8, !tbaa !26
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %3, ptr %120, align 8, !tbaa !116
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %10, ptr %121, align 8, !tbaa !117
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %7, ptr %122, align 8, !tbaa !114
  br label %123

123:                                              ; preds = %67, %47, %45, %17, %14, %12, %6
  %124 = phi i64 [ 1, %67 ], [ -20, %45 ], [ 0, %6 ], [ -20, %12 ], [ 0, %14 ], [ 0, %47 ], [ 0, %17 ]
  ret i64 %124
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @HUF_decompress4X1_usingDTable_internal_fast_c_loop(ptr noundef captures(none) %0) #13 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %15 = load i64, ptr %14, align 8
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %30 = load ptr, ptr %29, align 8
  %31 = ptrtoint ptr %5 to i64
  %32 = ptrtoint ptr %7 to i64
  br label %34

33:                                               ; preds = %.preheader
  br label %34, !llvm.loop !122

34:                                               ; preds = %33, %1
  %35 = phi ptr [ %22, %1 ], [ %283, %33 ]
  %36 = phi ptr [ %20, %1 ], [ %274, %33 ]
  %37 = phi ptr [ %18, %1 ], [ %265, %33 ]
  %38 = phi ptr [ %16, %1 ], [ %256, %33 ]
  %39 = phi ptr [ %24, %1 ], [ %254, %33 ]
  %40 = phi ptr [ %26, %1 ], [ %263, %33 ]
  %41 = phi ptr [ %28, %1 ], [ %272, %33 ]
  %42 = phi ptr [ %30, %1 ], [ %281, %33 ]
  %43 = phi i64 [ %9, %1 ], [ %259, %33 ]
  %44 = phi i64 [ %11, %1 ], [ %268, %33 ]
  %45 = phi i64 [ %13, %1 ], [ %277, %33 ]
  %46 = phi i64 [ %15, %1 ], [ %286, %33 ]
  %47 = ptrtoint ptr %42 to i64
  %48 = sub i64 %31, %47
  %49 = udiv i64 %48, 5
  %50 = ptrtoint ptr %38 to i64
  %51 = sub i64 %50, %32
  %52 = udiv i64 %51, 7
  %53 = tail call i64 @llvm.umin.i64(i64 %49, i64 %52)
  %54 = mul nuw i64 %53, 5
  %55 = getelementptr inbounds nuw i8, ptr %42, i64 %54
  %56 = icmp eq i64 %53, 0
  %57 = icmp ult ptr %37, %38
  %58 = select i1 %56, i1 true, i1 %57
  %59 = icmp ult ptr %36, %37
  %60 = select i1 %58, i1 true, i1 %59
  %61 = icmp ult ptr %35, %36
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %288, label %.preheader

.preheader:                                       ; preds = %34, %.preheader
  %63 = phi ptr [ %283, %.preheader ], [ %35, %34 ]
  %64 = phi ptr [ %274, %.preheader ], [ %36, %34 ]
  %65 = phi ptr [ %265, %.preheader ], [ %37, %34 ]
  %66 = phi ptr [ %256, %.preheader ], [ %38, %34 ]
  %67 = phi ptr [ %254, %.preheader ], [ %39, %34 ]
  %68 = phi ptr [ %263, %.preheader ], [ %40, %34 ]
  %69 = phi ptr [ %272, %.preheader ], [ %41, %34 ]
  %70 = phi ptr [ %281, %.preheader ], [ %42, %34 ]
  %71 = phi i64 [ %259, %.preheader ], [ %43, %34 ]
  %72 = phi i64 [ %268, %.preheader ], [ %44, %34 ]
  %73 = phi i64 [ %277, %.preheader ], [ %45, %34 ]
  %74 = phi i64 [ %286, %.preheader ], [ %46, %34 ]
  %75 = lshr i64 %71, 53
  %76 = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %75
  %77 = load i16, ptr %76, align 2, !tbaa !102
  %78 = and i16 %77, 63
  %79 = zext nneg i16 %78 to i64
  %80 = shl i64 %71, %79
  %81 = lshr i16 %77, 8
  %82 = trunc nuw i16 %81 to i8
  store i8 %82, ptr %67, align 1, !tbaa !9
  %83 = lshr i64 %72, 53
  %84 = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !102
  %86 = and i16 %85, 63
  %87 = zext nneg i16 %86 to i64
  %88 = shl i64 %72, %87
  %89 = lshr i16 %85, 8
  %90 = trunc nuw i16 %89 to i8
  store i8 %90, ptr %68, align 1, !tbaa !9
  %91 = lshr i64 %73, 53
  %92 = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !102
  %94 = and i16 %93, 63
  %95 = zext nneg i16 %94 to i64
  %96 = shl i64 %73, %95
  %97 = lshr i16 %93, 8
  %98 = trunc nuw i16 %97 to i8
  store i8 %98, ptr %69, align 1, !tbaa !9
  %99 = lshr i64 %74, 53
  %100 = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %99
  %101 = load i16, ptr %100, align 2, !tbaa !102
  %102 = and i16 %101, 63
  %103 = zext nneg i16 %102 to i64
  %104 = shl i64 %74, %103
  %105 = lshr i16 %101, 8
  %106 = trunc nuw i16 %105 to i8
  store i8 %106, ptr %70, align 1, !tbaa !9
  %107 = lshr i64 %80, 53
  %108 = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %107
  %109 = load i16, ptr %108, align 2, !tbaa !102
  %110 = and i16 %109, 63
  %111 = zext nneg i16 %110 to i64
  %112 = shl i64 %80, %111
  %113 = lshr i16 %109, 8
  %114 = trunc nuw i16 %113 to i8
  %115 = getelementptr inbounds nuw i8, ptr %67, i64 1
  store i8 %114, ptr %115, align 1, !tbaa !9
  %116 = lshr i64 %88, 53
  %117 = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %116
  %118 = load i16, ptr %117, align 2, !tbaa !102
  %119 = and i16 %118, 63
  %120 = zext nneg i16 %119 to i64
  %121 = shl i64 %88, %120
  %122 = lshr i16 %118, 8
  %123 = trunc nuw i16 %122 to i8
  %124 = getelementptr inbounds nuw i8, ptr %68, i64 1
  store i8 %123, ptr %124, align 1, !tbaa !9
  %125 = lshr i64 %96, 53
  %126 = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %125
  %127 = load i16, ptr %126, align 2, !tbaa !102
  %128 = and i16 %127, 63
  %129 = zext nneg i16 %128 to i64
  %130 = shl i64 %96, %129
  %131 = lshr i16 %127, 8
  %132 = trunc nuw i16 %131 to i8
  %133 = getelementptr inbounds nuw i8, ptr %69, i64 1
  store i8 %132, ptr %133, align 1, !tbaa !9
  %134 = lshr i64 %104, 53
  %135 = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %134
  %136 = load i16, ptr %135, align 2, !tbaa !102
  %137 = and i16 %136, 63
  %138 = zext nneg i16 %137 to i64
  %139 = shl i64 %104, %138
  %140 = lshr i16 %136, 8
  %141 = trunc nuw i16 %140 to i8
  %142 = getelementptr inbounds nuw i8, ptr %70, i64 1
  store i8 %141, ptr %142, align 1, !tbaa !9
  %143 = lshr i64 %112, 53
  %144 = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %143
  %145 = load i16, ptr %144, align 2, !tbaa !102
  %146 = and i16 %145, 63
  %147 = zext nneg i16 %146 to i64
  %148 = shl i64 %112, %147
  %149 = lshr i16 %145, 8
  %150 = trunc nuw i16 %149 to i8
  %151 = getelementptr inbounds nuw i8, ptr %67, i64 2
  store i8 %150, ptr %151, align 1, !tbaa !9
  %152 = lshr i64 %121, 53
  %153 = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %152
  %154 = load i16, ptr %153, align 2, !tbaa !102
  %155 = and i16 %154, 63
  %156 = zext nneg i16 %155 to i64
  %157 = shl i64 %121, %156
  %158 = lshr i16 %154, 8
  %159 = trunc nuw i16 %158 to i8
  %160 = getelementptr inbounds nuw i8, ptr %68, i64 2
  store i8 %159, ptr %160, align 1, !tbaa !9
  %161 = lshr i64 %130, 53
  %162 = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %161
  %163 = load i16, ptr %162, align 2, !tbaa !102
  %164 = and i16 %163, 63
  %165 = zext nneg i16 %164 to i64
  %166 = shl i64 %130, %165
  %167 = lshr i16 %163, 8
  %168 = trunc nuw i16 %167 to i8
  %169 = getelementptr inbounds nuw i8, ptr %69, i64 2
  store i8 %168, ptr %169, align 1, !tbaa !9
  %170 = lshr i64 %139, 53
  %171 = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %170
  %172 = load i16, ptr %171, align 2, !tbaa !102
  %173 = and i16 %172, 63
  %174 = zext nneg i16 %173 to i64
  %175 = shl i64 %139, %174
  %176 = lshr i16 %172, 8
  %177 = trunc nuw i16 %176 to i8
  %178 = getelementptr inbounds nuw i8, ptr %70, i64 2
  store i8 %177, ptr %178, align 1, !tbaa !9
  %179 = lshr i64 %148, 53
  %180 = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %179
  %181 = load i16, ptr %180, align 2, !tbaa !102
  %182 = and i16 %181, 63
  %183 = zext nneg i16 %182 to i64
  %184 = shl i64 %148, %183
  %185 = lshr i16 %181, 8
  %186 = trunc nuw i16 %185 to i8
  %187 = getelementptr inbounds nuw i8, ptr %67, i64 3
  store i8 %186, ptr %187, align 1, !tbaa !9
  %188 = lshr i64 %157, 53
  %189 = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %188
  %190 = load i16, ptr %189, align 2, !tbaa !102
  %191 = and i16 %190, 63
  %192 = zext nneg i16 %191 to i64
  %193 = shl i64 %157, %192
  %194 = lshr i16 %190, 8
  %195 = trunc nuw i16 %194 to i8
  %196 = getelementptr inbounds nuw i8, ptr %68, i64 3
  store i8 %195, ptr %196, align 1, !tbaa !9
  %197 = lshr i64 %166, 53
  %198 = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %197
  %199 = load i16, ptr %198, align 2, !tbaa !102
  %200 = and i16 %199, 63
  %201 = zext nneg i16 %200 to i64
  %202 = shl i64 %166, %201
  %203 = lshr i16 %199, 8
  %204 = trunc nuw i16 %203 to i8
  %205 = getelementptr inbounds nuw i8, ptr %69, i64 3
  store i8 %204, ptr %205, align 1, !tbaa !9
  %206 = lshr i64 %175, 53
  %207 = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %206
  %208 = load i16, ptr %207, align 2, !tbaa !102
  %209 = and i16 %208, 63
  %210 = zext nneg i16 %209 to i64
  %211 = shl i64 %175, %210
  %212 = lshr i16 %208, 8
  %213 = trunc nuw i16 %212 to i8
  %214 = getelementptr inbounds nuw i8, ptr %70, i64 3
  store i8 %213, ptr %214, align 1, !tbaa !9
  %215 = lshr i64 %184, 53
  %216 = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %215
  %217 = load i16, ptr %216, align 2, !tbaa !102
  %218 = and i16 %217, 63
  %219 = zext nneg i16 %218 to i64
  %220 = shl i64 %184, %219
  %221 = lshr i16 %217, 8
  %222 = trunc nuw i16 %221 to i8
  %223 = getelementptr inbounds nuw i8, ptr %67, i64 4
  store i8 %222, ptr %223, align 1, !tbaa !9
  %224 = lshr i64 %193, 53
  %225 = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %224
  %226 = load i16, ptr %225, align 2, !tbaa !102
  %227 = and i16 %226, 63
  %228 = zext nneg i16 %227 to i64
  %229 = shl i64 %193, %228
  %230 = lshr i16 %226, 8
  %231 = trunc nuw i16 %230 to i8
  %232 = getelementptr inbounds nuw i8, ptr %68, i64 4
  store i8 %231, ptr %232, align 1, !tbaa !9
  %233 = lshr i64 %202, 53
  %234 = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %233
  %235 = load i16, ptr %234, align 2, !tbaa !102
  %236 = and i16 %235, 63
  %237 = zext nneg i16 %236 to i64
  %238 = shl i64 %202, %237
  %239 = lshr i16 %235, 8
  %240 = trunc nuw i16 %239 to i8
  %241 = getelementptr inbounds nuw i8, ptr %69, i64 4
  store i8 %240, ptr %241, align 1, !tbaa !9
  %242 = lshr i64 %211, 53
  %243 = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %242
  %244 = load i16, ptr %243, align 2, !tbaa !102
  %245 = and i16 %244, 63
  %246 = zext nneg i16 %245 to i64
  %247 = shl i64 %211, %246
  %248 = lshr i16 %244, 8
  %249 = trunc nuw i16 %248 to i8
  %250 = getelementptr inbounds nuw i8, ptr %70, i64 4
  store i8 %249, ptr %250, align 1, !tbaa !9
  %251 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %220, i1 true)
  %252 = and i64 %251, 7
  %253 = lshr i64 %251, 3
  %254 = getelementptr inbounds nuw i8, ptr %67, i64 5
  %255 = sub nsw i64 0, %253
  %256 = getelementptr inbounds i8, ptr %66, i64 %255
  %257 = load i64, ptr %256, align 1, !tbaa !26
  %258 = or i64 %257, 1
  %259 = shl i64 %258, %252
  %260 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %229, i1 true)
  %261 = and i64 %260, 7
  %262 = lshr i64 %260, 3
  %263 = getelementptr inbounds nuw i8, ptr %68, i64 5
  %264 = sub nsw i64 0, %262
  %265 = getelementptr inbounds i8, ptr %65, i64 %264
  %266 = load i64, ptr %265, align 1, !tbaa !26
  %267 = or i64 %266, 1
  %268 = shl i64 %267, %261
  %269 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %238, i1 true)
  %270 = and i64 %269, 7
  %271 = lshr i64 %269, 3
  %272 = getelementptr inbounds nuw i8, ptr %69, i64 5
  %273 = sub nsw i64 0, %271
  %274 = getelementptr inbounds i8, ptr %64, i64 %273
  %275 = load i64, ptr %274, align 1, !tbaa !26
  %276 = or i64 %275, 1
  %277 = shl i64 %276, %270
  %278 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %247, i1 true)
  %279 = and i64 %278, 7
  %280 = lshr i64 %278, 3
  %281 = getelementptr inbounds nuw i8, ptr %70, i64 5
  %282 = sub nsw i64 0, %280
  %283 = getelementptr inbounds i8, ptr %63, i64 %282
  %284 = load i64, ptr %283, align 1, !tbaa !26
  %285 = or i64 %284, 1
  %286 = shl i64 %285, %279
  %287 = icmp ult ptr %281, %55
  br i1 %287, label %.preheader, label %33, !llvm.loop !122

288:                                              ; preds = %34
  store i64 %43, ptr %8, align 8
  store i64 %44, ptr %10, align 8
  store i64 %45, ptr %12, align 8
  store i64 %46, ptr %14, align 8
  store ptr %38, ptr %0, align 8
  store ptr %37, ptr %17, align 8
  store ptr %36, ptr %19, align 8
  store ptr %35, ptr %21, align 8
  store ptr %39, ptr %23, align 8
  store ptr %40, ptr %25, align 8
  store ptr %41, ptr %27, align 8
  store ptr %42, ptr %29, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 1, 0) i64 @HUF_decompress4X1_usingDTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef readonly %4) unnamed_addr #9 {
  %6 = ptrtoint ptr %0 to i64
  %7 = alloca %struct.BIT_DStream_t, align 8
  %8 = icmp ult i64 %3, 10
  %9 = icmp ult i64 %1, 6
  %10 = or i1 %9, %8
  br i1 %10, label %1269, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -3
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %15 = load i16, ptr %2, align 1, !tbaa !102
  %16 = zext i16 %15 to i64
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %18 = load i16, ptr %17, align 1, !tbaa !102
  %19 = zext i16 %18 to i64
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %21 = load i16, ptr %20, align 1, !tbaa !102
  %22 = zext i16 %21 to i64
  %23 = add nuw nsw i64 %16, 6
  %24 = add nuw nsw i64 %23, %19
  %25 = add nuw nsw i64 %24, %22
  %26 = sub i64 %3, %25
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %28 = getelementptr i8, ptr %27, i64 %16
  %29 = getelementptr i8, ptr %28, i64 %19
  %30 = getelementptr i8, ptr %29, i64 %22
  %31 = add i64 %1, 3
  %32 = lshr i64 %31, 2
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 %32
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 %32
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 %32
  %36 = load i32, ptr %4, align 4
  %37 = lshr i32 %36, 16
  %38 = icmp ugt i64 %25, %3
  %39 = mul nuw nsw i64 %32, 3
  %40 = icmp samesign ugt i64 %39, %1
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %1267, label %42

42:                                               ; preds = %11
  %43 = icmp eq i16 %15, 0
  br i1 %43, label %1267, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 14
  %46 = icmp ugt i16 %15, 7
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = getelementptr i8, ptr %28, i64 -1
  %49 = load i8, ptr %48, align 1, !tbaa !9
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %1267, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, ptr %28, i64 -8
  %53 = load i64, ptr %52, align 1, !tbaa !26
  %54 = zext i8 %49 to i32
  %55 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %54, i1 true)
  %56 = xor i32 %55, 31
  %57 = sub nuw nsw i32 8, %56
  br label %113

58:                                               ; preds = %44
  %59 = load i8, ptr %27, align 1, !tbaa !9
  %60 = zext i8 %59 to i64
  switch i16 %15, label %102 [
    i16 7, label %61
    i16 6, label %67
    i16 5, label %74
    i16 4, label %81
    i16 3, label %88
    i16 2, label %95
  ]

61:                                               ; preds = %58
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %63 = load i8, ptr %62, align 1, !tbaa !9
  %64 = zext i8 %63 to i64
  %65 = shl nuw nsw i64 %64, 48
  %66 = or disjoint i64 %65, %60
  br label %67

67:                                               ; preds = %61, %58
  %68 = phi i64 [ %60, %58 ], [ %66, %61 ]
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %70 = load i8, ptr %69, align 1, !tbaa !9
  %71 = zext i8 %70 to i64
  %72 = shl nuw nsw i64 %71, 40
  %73 = add nuw nsw i64 %72, %68
  br label %74

74:                                               ; preds = %67, %58
  %75 = phi i64 [ %60, %58 ], [ %73, %67 ]
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 10
  %77 = load i8, ptr %76, align 1, !tbaa !9
  %78 = zext i8 %77 to i64
  %79 = shl nuw nsw i64 %78, 32
  %80 = add nuw nsw i64 %79, %75
  br label %81

81:                                               ; preds = %74, %58
  %82 = phi i64 [ %60, %58 ], [ %80, %74 ]
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 9
  %84 = load i8, ptr %83, align 1, !tbaa !9
  %85 = zext i8 %84 to i64
  %86 = shl nuw nsw i64 %85, 24
  %87 = add nuw nsw i64 %86, %82
  br label %88

88:                                               ; preds = %81, %58
  %89 = phi i64 [ %60, %58 ], [ %87, %81 ]
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %91 = load i8, ptr %90, align 1, !tbaa !9
  %92 = zext i8 %91 to i64
  %93 = shl nuw nsw i64 %92, 16
  %94 = add nuw nsw i64 %93, %89
  br label %95

95:                                               ; preds = %88, %58
  %96 = phi i64 [ %60, %58 ], [ %94, %88 ]
  %97 = getelementptr inbounds nuw i8, ptr %2, i64 7
  %98 = load i8, ptr %97, align 1, !tbaa !9
  %99 = zext i8 %98 to i64
  %100 = shl nuw nsw i64 %99, 8
  %101 = add nuw nsw i64 %100, %96
  br label %102

102:                                              ; preds = %95, %58
  %103 = phi i64 [ %60, %58 ], [ %101, %95 ]
  %104 = getelementptr i8, ptr %28, i64 -1
  %105 = load i8, ptr %104, align 1, !tbaa !9
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %1267, label %107

107:                                              ; preds = %102
  %108 = zext i8 %105 to i32
  %109 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %108, i1 true)
  %110 = shl nuw nsw i16 %15, 3
  %111 = zext nneg i16 %110 to i32
  %reass.sub = sub nsw i32 %109, %111
  %112 = add nsw i32 %reass.sub, 41
  br label %113

113:                                              ; preds = %107, %51
  %114 = phi ptr [ %52, %51 ], [ %27, %107 ]
  %115 = phi i32 [ %57, %51 ], [ %112, %107 ]
  %116 = phi i64 [ %53, %51 ], [ %103, %107 ]
  %117 = icmp eq i16 %18, 0
  br i1 %117, label %1267, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %120 = icmp ugt i16 %18, 7
  br i1 %120, label %121, label %132

121:                                              ; preds = %118
  %122 = getelementptr i8, ptr %29, i64 -1
  %123 = load i8, ptr %122, align 1, !tbaa !9
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %1267, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds i8, ptr %29, i64 -8
  %127 = load i64, ptr %126, align 1, !tbaa !26
  %128 = zext i8 %123 to i32
  %129 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %128, i1 true)
  %130 = xor i32 %129, 31
  %131 = sub nuw nsw i32 8, %130
  br label %187

132:                                              ; preds = %118
  %133 = load i8, ptr %28, align 1, !tbaa !9
  %134 = zext i8 %133 to i64
  switch i16 %18, label %176 [
    i16 7, label %135
    i16 6, label %141
    i16 5, label %148
    i16 4, label %155
    i16 3, label %162
    i16 2, label %169
  ]

135:                                              ; preds = %132
  %136 = getelementptr inbounds nuw i8, ptr %28, i64 6
  %137 = load i8, ptr %136, align 1, !tbaa !9
  %138 = zext i8 %137 to i64
  %139 = shl nuw nsw i64 %138, 48
  %140 = or disjoint i64 %139, %134
  br label %141

141:                                              ; preds = %135, %132
  %142 = phi i64 [ %134, %132 ], [ %140, %135 ]
  %143 = getelementptr inbounds nuw i8, ptr %28, i64 5
  %144 = load i8, ptr %143, align 1, !tbaa !9
  %145 = zext i8 %144 to i64
  %146 = shl nuw nsw i64 %145, 40
  %147 = add nuw nsw i64 %146, %142
  br label %148

148:                                              ; preds = %141, %132
  %149 = phi i64 [ %134, %132 ], [ %147, %141 ]
  %150 = getelementptr inbounds nuw i8, ptr %28, i64 4
  %151 = load i8, ptr %150, align 1, !tbaa !9
  %152 = zext i8 %151 to i64
  %153 = shl nuw nsw i64 %152, 32
  %154 = add nuw nsw i64 %153, %149
  br label %155

155:                                              ; preds = %148, %132
  %156 = phi i64 [ %134, %132 ], [ %154, %148 ]
  %157 = getelementptr inbounds nuw i8, ptr %28, i64 3
  %158 = load i8, ptr %157, align 1, !tbaa !9
  %159 = zext i8 %158 to i64
  %160 = shl nuw nsw i64 %159, 24
  %161 = add nuw nsw i64 %160, %156
  br label %162

162:                                              ; preds = %155, %132
  %163 = phi i64 [ %134, %132 ], [ %161, %155 ]
  %164 = getelementptr inbounds nuw i8, ptr %28, i64 2
  %165 = load i8, ptr %164, align 1, !tbaa !9
  %166 = zext i8 %165 to i64
  %167 = shl nuw nsw i64 %166, 16
  %168 = add nuw nsw i64 %167, %163
  br label %169

169:                                              ; preds = %162, %132
  %170 = phi i64 [ %134, %132 ], [ %168, %162 ]
  %171 = getelementptr inbounds nuw i8, ptr %28, i64 1
  %172 = load i8, ptr %171, align 1, !tbaa !9
  %173 = zext i8 %172 to i64
  %174 = shl nuw nsw i64 %173, 8
  %175 = add nuw nsw i64 %174, %170
  br label %176

176:                                              ; preds = %169, %132
  %177 = phi i64 [ %134, %132 ], [ %175, %169 ]
  %178 = getelementptr i8, ptr %29, i64 -1
  %179 = load i8, ptr %178, align 1, !tbaa !9
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %1267, label %181

181:                                              ; preds = %176
  %182 = zext i8 %179 to i32
  %183 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %182, i1 true)
  %184 = shl nuw nsw i16 %18, 3
  %185 = zext nneg i16 %184 to i32
  %reass.sub128 = sub nsw i32 %183, %185
  %186 = add nsw i32 %reass.sub128, 41
  br label %187

187:                                              ; preds = %181, %125
  %188 = phi i64 [ %127, %125 ], [ %177, %181 ]
  %189 = phi i32 [ %131, %125 ], [ %186, %181 ]
  %190 = phi ptr [ %126, %125 ], [ %28, %181 ]
  %191 = icmp eq i16 %21, 0
  br i1 %191, label %1267, label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds nuw i8, ptr %29, i64 8
  %194 = icmp ugt i16 %21, 7
  br i1 %194, label %195, label %206

195:                                              ; preds = %192
  %196 = getelementptr i8, ptr %30, i64 -1
  %197 = load i8, ptr %196, align 1, !tbaa !9
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %1267, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds i8, ptr %30, i64 -8
  %201 = load i64, ptr %200, align 1, !tbaa !26
  %202 = zext i8 %197 to i32
  %203 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %202, i1 true)
  %204 = xor i32 %203, 31
  %205 = sub nuw nsw i32 8, %204
  br label %261

206:                                              ; preds = %192
  %207 = load i8, ptr %29, align 1, !tbaa !9
  %208 = zext i8 %207 to i64
  switch i16 %21, label %250 [
    i16 7, label %209
    i16 6, label %215
    i16 5, label %222
    i16 4, label %229
    i16 3, label %236
    i16 2, label %243
  ]

209:                                              ; preds = %206
  %210 = getelementptr inbounds nuw i8, ptr %29, i64 6
  %211 = load i8, ptr %210, align 1, !tbaa !9
  %212 = zext i8 %211 to i64
  %213 = shl nuw nsw i64 %212, 48
  %214 = or disjoint i64 %213, %208
  br label %215

215:                                              ; preds = %209, %206
  %216 = phi i64 [ %208, %206 ], [ %214, %209 ]
  %217 = getelementptr inbounds nuw i8, ptr %29, i64 5
  %218 = load i8, ptr %217, align 1, !tbaa !9
  %219 = zext i8 %218 to i64
  %220 = shl nuw nsw i64 %219, 40
  %221 = add nuw nsw i64 %220, %216
  br label %222

222:                                              ; preds = %215, %206
  %223 = phi i64 [ %208, %206 ], [ %221, %215 ]
  %224 = getelementptr inbounds nuw i8, ptr %29, i64 4
  %225 = load i8, ptr %224, align 1, !tbaa !9
  %226 = zext i8 %225 to i64
  %227 = shl nuw nsw i64 %226, 32
  %228 = add nuw nsw i64 %227, %223
  br label %229

229:                                              ; preds = %222, %206
  %230 = phi i64 [ %208, %206 ], [ %228, %222 ]
  %231 = getelementptr inbounds nuw i8, ptr %29, i64 3
  %232 = load i8, ptr %231, align 1, !tbaa !9
  %233 = zext i8 %232 to i64
  %234 = shl nuw nsw i64 %233, 24
  %235 = add nuw nsw i64 %234, %230
  br label %236

236:                                              ; preds = %229, %206
  %237 = phi i64 [ %208, %206 ], [ %235, %229 ]
  %238 = getelementptr inbounds nuw i8, ptr %29, i64 2
  %239 = load i8, ptr %238, align 1, !tbaa !9
  %240 = zext i8 %239 to i64
  %241 = shl nuw nsw i64 %240, 16
  %242 = add nuw nsw i64 %241, %237
  br label %243

243:                                              ; preds = %236, %206
  %244 = phi i64 [ %208, %206 ], [ %242, %236 ]
  %245 = getelementptr inbounds nuw i8, ptr %29, i64 1
  %246 = load i8, ptr %245, align 1, !tbaa !9
  %247 = zext i8 %246 to i64
  %248 = shl nuw nsw i64 %247, 8
  %249 = add nuw nsw i64 %248, %244
  br label %250

250:                                              ; preds = %243, %206
  %251 = phi i64 [ %208, %206 ], [ %249, %243 ]
  %252 = getelementptr i8, ptr %30, i64 -1
  %253 = load i8, ptr %252, align 1, !tbaa !9
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %1267, label %255

255:                                              ; preds = %250
  %256 = zext i8 %253 to i32
  %257 = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %256, i1 true)
  %258 = shl nuw nsw i16 %21, 3
  %259 = zext nneg i16 %258 to i32
  %reass.sub129 = sub nsw i32 %257, %259
  %260 = add nsw i32 %reass.sub129, 41
  br label %261

261:                                              ; preds = %255, %199
  %262 = phi i64 [ %201, %199 ], [ %251, %255 ]
  %263 = phi i32 [ %205, %199 ], [ %260, %255 ]
  %264 = phi ptr [ %200, %199 ], [ %29, %255 ]
  %265 = call fastcc i64 @BIT_initDStream(ptr noundef %7, ptr noundef nonnull %30, i64 noundef %26)
  %266 = icmp ult i64 %265, -119
  br i1 %266, label %267, label %1267

267:                                              ; preds = %261
  %268 = mul i64 %32, -3
  %269 = add i64 %268, %1
  %270 = icmp ugt i64 %269, 7
  %271 = icmp ult ptr %35, %13
  %272 = select i1 %270, i1 %271, i1 false
  br i1 %272, label %273, label %527

273:                                              ; preds = %267
  %274 = load i64, ptr %7, align 8
  %275 = sub nsw i32 0, %37
  %276 = and i32 %275, 63
  %277 = zext nneg i32 %276 to i64
  %278 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %279 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %280 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %281 = load ptr, ptr %280, align 8, !tbaa !103
  %282 = load i32, ptr %278, align 8, !tbaa !107
  %283 = load ptr, ptr %279, align 8, !tbaa !108
  br label %284

284:                                              ; preds = %516, %273
  %285 = phi ptr [ %283, %273 ], [ %520, %516 ]
  %286 = phi i32 [ %282, %273 ], [ %521, %516 ]
  %287 = phi ptr [ %0, %273 ], [ %443, %516 ]
  %288 = phi ptr [ %33, %273 ], [ %454, %516 ]
  %289 = phi ptr [ %34, %273 ], [ %465, %516 ]
  %290 = phi ptr [ %35, %273 ], [ %476, %516 ]
  %291 = phi ptr [ %264, %273 ], [ %513, %516 ]
  %292 = phi i64 [ %116, %273 ], [ %488, %516 ]
  %293 = phi i32 [ %263, %273 ], [ %512, %516 ]
  %294 = phi i64 [ %262, %273 ], [ %511, %516 ]
  %295 = phi ptr [ %190, %273 ], [ %500, %516 ]
  %296 = phi i32 [ %115, %273 ], [ %487, %516 ]
  %297 = phi i32 [ %189, %273 ], [ %499, %516 ]
  %298 = phi i64 [ %188, %273 ], [ %498, %516 ]
  %299 = phi ptr [ %114, %273 ], [ %486, %516 ]
  %300 = phi i64 [ %274, %273 ], [ %522, %516 ]
  %301 = and i32 %296, 63
  %302 = zext nneg i32 %301 to i64
  %303 = shl i64 %292, %302
  %304 = lshr i64 %303, %277
  %305 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %304
  %306 = getelementptr inbounds nuw i8, ptr %305, i64 1
  %307 = load i8, ptr %306, align 1, !tbaa !97
  %308 = load i8, ptr %305, align 1, !tbaa !99
  %309 = zext i8 %308 to i32
  %310 = add i32 %296, %309
  %311 = getelementptr inbounds nuw i8, ptr %287, i64 1
  store i8 %307, ptr %287, align 1, !tbaa !9
  %312 = and i32 %297, 63
  %313 = zext nneg i32 %312 to i64
  %314 = shl i64 %298, %313
  %315 = lshr i64 %314, %277
  %316 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %315
  %317 = getelementptr inbounds nuw i8, ptr %316, i64 1
  %318 = load i8, ptr %317, align 1, !tbaa !97
  %319 = load i8, ptr %316, align 1, !tbaa !99
  %320 = zext i8 %319 to i32
  %321 = add i32 %297, %320
  %322 = getelementptr inbounds nuw i8, ptr %288, i64 1
  store i8 %318, ptr %288, align 1, !tbaa !9
  %323 = and i32 %293, 63
  %324 = zext nneg i32 %323 to i64
  %325 = shl i64 %294, %324
  %326 = lshr i64 %325, %277
  %327 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %326
  %328 = getelementptr inbounds nuw i8, ptr %327, i64 1
  %329 = load i8, ptr %328, align 1, !tbaa !97
  %330 = load i8, ptr %327, align 1, !tbaa !99
  %331 = zext i8 %330 to i32
  %332 = add i32 %293, %331
  %333 = getelementptr inbounds nuw i8, ptr %289, i64 1
  store i8 %329, ptr %289, align 1, !tbaa !9
  %334 = and i32 %286, 63
  %335 = zext nneg i32 %334 to i64
  %336 = shl i64 %300, %335
  %337 = lshr i64 %336, %277
  %338 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %337
  %339 = getelementptr inbounds nuw i8, ptr %338, i64 1
  %340 = load i8, ptr %339, align 1, !tbaa !97
  %341 = load i8, ptr %338, align 1, !tbaa !99
  %342 = zext i8 %341 to i32
  %343 = add i32 %286, %342
  store i8 %340, ptr %290, align 1, !tbaa !9
  %344 = getelementptr inbounds nuw i8, ptr %290, i64 1
  %345 = and i32 %310, 63
  %346 = zext nneg i32 %345 to i64
  %347 = shl i64 %292, %346
  %348 = lshr i64 %347, %277
  %349 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %348
  %350 = getelementptr inbounds nuw i8, ptr %349, i64 1
  %351 = load i8, ptr %350, align 1, !tbaa !97
  %352 = load i8, ptr %349, align 1, !tbaa !99
  %353 = zext i8 %352 to i32
  %354 = add i32 %310, %353
  store i8 %351, ptr %311, align 1, !tbaa !9
  %355 = and i32 %321, 63
  %356 = zext nneg i32 %355 to i64
  %357 = shl i64 %298, %356
  %358 = lshr i64 %357, %277
  %359 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %358
  %360 = getelementptr inbounds nuw i8, ptr %359, i64 1
  %361 = load i8, ptr %360, align 1, !tbaa !97
  %362 = load i8, ptr %359, align 1, !tbaa !99
  %363 = zext i8 %362 to i32
  %364 = add i32 %321, %363
  %365 = getelementptr inbounds nuw i8, ptr %288, i64 2
  store i8 %361, ptr %322, align 1, !tbaa !9
  %366 = and i32 %332, 63
  %367 = zext nneg i32 %366 to i64
  %368 = shl i64 %294, %367
  %369 = lshr i64 %368, %277
  %370 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %369
  %371 = getelementptr inbounds nuw i8, ptr %370, i64 1
  %372 = load i8, ptr %371, align 1, !tbaa !97
  %373 = load i8, ptr %370, align 1, !tbaa !99
  %374 = zext i8 %373 to i32
  %375 = add i32 %332, %374
  %376 = getelementptr inbounds nuw i8, ptr %289, i64 2
  store i8 %372, ptr %333, align 1, !tbaa !9
  %377 = and i32 %343, 63
  %378 = zext nneg i32 %377 to i64
  %379 = shl i64 %300, %378
  %380 = lshr i64 %379, %277
  %381 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %380
  %382 = getelementptr inbounds nuw i8, ptr %381, i64 1
  %383 = load i8, ptr %382, align 1, !tbaa !97
  %384 = load i8, ptr %381, align 1, !tbaa !99
  %385 = zext i8 %384 to i32
  %386 = add i32 %343, %385
  %387 = getelementptr inbounds nuw i8, ptr %290, i64 2
  store i8 %383, ptr %344, align 1, !tbaa !9
  %388 = getelementptr inbounds nuw i8, ptr %287, i64 2
  %389 = and i32 %354, 63
  %390 = zext nneg i32 %389 to i64
  %391 = shl i64 %292, %390
  %392 = lshr i64 %391, %277
  %393 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %392
  %394 = getelementptr inbounds nuw i8, ptr %393, i64 1
  %395 = load i8, ptr %394, align 1, !tbaa !97
  %396 = load i8, ptr %393, align 1, !tbaa !99
  %397 = zext i8 %396 to i32
  %398 = add i32 %354, %397
  %399 = getelementptr inbounds nuw i8, ptr %287, i64 3
  store i8 %395, ptr %388, align 1, !tbaa !9
  %400 = and i32 %364, 63
  %401 = zext nneg i32 %400 to i64
  %402 = shl i64 %298, %401
  %403 = lshr i64 %402, %277
  %404 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %403
  %405 = getelementptr inbounds nuw i8, ptr %404, i64 1
  %406 = load i8, ptr %405, align 1, !tbaa !97
  %407 = load i8, ptr %404, align 1, !tbaa !99
  %408 = zext i8 %407 to i32
  %409 = add i32 %364, %408
  %410 = getelementptr inbounds nuw i8, ptr %288, i64 3
  store i8 %406, ptr %365, align 1, !tbaa !9
  %411 = and i32 %375, 63
  %412 = zext nneg i32 %411 to i64
  %413 = shl i64 %294, %412
  %414 = lshr i64 %413, %277
  %415 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %414
  %416 = getelementptr inbounds nuw i8, ptr %415, i64 1
  %417 = load i8, ptr %416, align 1, !tbaa !97
  %418 = load i8, ptr %415, align 1, !tbaa !99
  %419 = zext i8 %418 to i32
  %420 = add i32 %375, %419
  %421 = getelementptr inbounds nuw i8, ptr %289, i64 3
  store i8 %417, ptr %376, align 1, !tbaa !9
  %422 = and i32 %386, 63
  %423 = zext nneg i32 %422 to i64
  %424 = shl i64 %300, %423
  %425 = lshr i64 %424, %277
  %426 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %425
  %427 = getelementptr inbounds nuw i8, ptr %426, i64 1
  %428 = load i8, ptr %427, align 1, !tbaa !97
  %429 = load i8, ptr %426, align 1, !tbaa !99
  %430 = zext i8 %429 to i32
  %431 = add i32 %386, %430
  store i8 %428, ptr %387, align 1, !tbaa !9
  %432 = getelementptr inbounds nuw i8, ptr %290, i64 3
  %433 = and i32 %398, 63
  %434 = zext nneg i32 %433 to i64
  %435 = shl i64 %292, %434
  %436 = lshr i64 %435, %277
  %437 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %436
  %438 = getelementptr inbounds nuw i8, ptr %437, i64 1
  %439 = load i8, ptr %438, align 1, !tbaa !97
  %440 = load i8, ptr %437, align 1, !tbaa !99
  %441 = zext i8 %440 to i32
  %442 = add i32 %398, %441
  %443 = getelementptr inbounds nuw i8, ptr %287, i64 4
  store i8 %439, ptr %399, align 1, !tbaa !9
  %444 = and i32 %409, 63
  %445 = zext nneg i32 %444 to i64
  %446 = shl i64 %298, %445
  %447 = lshr i64 %446, %277
  %448 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %447
  %449 = getelementptr inbounds nuw i8, ptr %448, i64 1
  %450 = load i8, ptr %449, align 1, !tbaa !97
  %451 = load i8, ptr %448, align 1, !tbaa !99
  %452 = zext i8 %451 to i32
  %453 = add i32 %409, %452
  %454 = getelementptr inbounds nuw i8, ptr %288, i64 4
  store i8 %450, ptr %410, align 1, !tbaa !9
  %455 = and i32 %420, 63
  %456 = zext nneg i32 %455 to i64
  %457 = shl i64 %294, %456
  %458 = lshr i64 %457, %277
  %459 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %458
  %460 = getelementptr inbounds nuw i8, ptr %459, i64 1
  %461 = load i8, ptr %460, align 1, !tbaa !97
  %462 = load i8, ptr %459, align 1, !tbaa !99
  %463 = zext i8 %462 to i32
  %464 = add i32 %420, %463
  %465 = getelementptr inbounds nuw i8, ptr %289, i64 4
  store i8 %461, ptr %421, align 1, !tbaa !9
  %466 = and i32 %431, 63
  %467 = zext nneg i32 %466 to i64
  %468 = shl i64 %300, %467
  %469 = lshr i64 %468, %277
  %470 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %469
  %471 = getelementptr inbounds nuw i8, ptr %470, i64 1
  %472 = load i8, ptr %471, align 1, !tbaa !97
  %473 = load i8, ptr %470, align 1, !tbaa !99
  %474 = zext i8 %473 to i32
  %475 = add i32 %431, %474
  %476 = getelementptr inbounds nuw i8, ptr %290, i64 4
  store i8 %472, ptr %432, align 1, !tbaa !9
  %477 = icmp ult ptr %299, %45
  br i1 %477, label %485, label %478, !prof !109

478:                                              ; preds = %284
  %479 = lshr i32 %442, 3
  %480 = zext nneg i32 %479 to i64
  %481 = sub nsw i64 0, %480
  %482 = getelementptr inbounds i8, ptr %299, i64 %481
  %483 = and i32 %442, 7
  %484 = load i64, ptr %482, align 1, !tbaa !26
  br label %485

485:                                              ; preds = %478, %284
  %486 = phi ptr [ %299, %284 ], [ %482, %478 ]
  %487 = phi i32 [ %442, %284 ], [ %483, %478 ]
  %488 = phi i64 [ %292, %284 ], [ %484, %478 ]
  %489 = icmp ult ptr %295, %119
  br i1 %489, label %497, label %490, !prof !109

490:                                              ; preds = %485
  %491 = lshr i32 %453, 3
  %492 = zext nneg i32 %491 to i64
  %493 = sub nsw i64 0, %492
  %494 = getelementptr inbounds i8, ptr %295, i64 %493
  %495 = and i32 %453, 7
  %496 = load i64, ptr %494, align 1, !tbaa !26
  br label %497

497:                                              ; preds = %490, %485
  %498 = phi i64 [ %298, %485 ], [ %496, %490 ]
  %499 = phi i32 [ %453, %485 ], [ %495, %490 ]
  %500 = phi ptr [ %295, %485 ], [ %494, %490 ]
  %501 = phi i1 [ true, %485 ], [ %477, %490 ]
  %502 = icmp ult ptr %291, %193
  br i1 %502, label %510, label %503, !prof !109

503:                                              ; preds = %497
  %504 = lshr i32 %464, 3
  %505 = zext nneg i32 %504 to i64
  %506 = sub nsw i64 0, %505
  %507 = getelementptr inbounds i8, ptr %291, i64 %506
  %508 = and i32 %464, 7
  %509 = load i64, ptr %507, align 1, !tbaa !26
  br label %510

510:                                              ; preds = %503, %497
  %511 = phi i64 [ %294, %497 ], [ %509, %503 ]
  %512 = phi i32 [ %464, %497 ], [ %508, %503 ]
  %513 = phi ptr [ %291, %497 ], [ %507, %503 ]
  %514 = phi i1 [ true, %497 ], [ %501, %503 ]
  %515 = icmp ult ptr %285, %281
  br i1 %515, label %.thread, label %516, !prof !109

516:                                              ; preds = %510
  %517 = lshr i32 %475, 3
  %518 = zext nneg i32 %517 to i64
  %519 = sub nsw i64 0, %518
  %520 = getelementptr inbounds i8, ptr %285, i64 %519
  %521 = and i32 %475, 7
  %522 = load i64, ptr %520, align 1, !tbaa !26
  store i64 %522, ptr %7, align 8, !tbaa !110
  %523 = icmp uge ptr %476, %13
  %524 = or i1 %523, %514
  br i1 %524, label %.thread, label %284, !llvm.loop !113

.thread:                                          ; preds = %510, %516
  %525 = phi i32 [ %521, %516 ], [ %475, %510 ]
  %526 = phi ptr [ %520, %516 ], [ %285, %510 ]
  store i32 %525, ptr %278, align 8, !tbaa !107
  store ptr %526, ptr %279, align 8
  br label %527

527:                                              ; preds = %.thread, %267
  %528 = phi ptr [ %114, %267 ], [ %486, %.thread ]
  %529 = phi i64 [ %188, %267 ], [ %498, %.thread ]
  %530 = phi i32 [ %189, %267 ], [ %499, %.thread ]
  %531 = phi i32 [ %115, %267 ], [ %487, %.thread ]
  %532 = phi ptr [ %190, %267 ], [ %500, %.thread ]
  %533 = phi i64 [ %262, %267 ], [ %511, %.thread ]
  %534 = phi i32 [ %263, %267 ], [ %512, %.thread ]
  %535 = phi i64 [ %116, %267 ], [ %488, %.thread ]
  %536 = phi ptr [ %264, %267 ], [ %513, %.thread ]
  %537 = phi ptr [ %35, %267 ], [ %476, %.thread ]
  %538 = phi ptr [ %34, %267 ], [ %465, %.thread ]
  %539 = phi ptr [ %33, %267 ], [ %454, %.thread ]
  %540 = phi ptr [ %0, %267 ], [ %443, %.thread ]
  %541 = icmp ugt ptr %540, %33
  %542 = icmp ugt ptr %539, %34
  %543 = select i1 %541, i1 true, i1 %542
  %544 = icmp ugt ptr %538, %35
  %545 = select i1 %543, i1 true, i1 %544
  br i1 %545, label %1267, label %546

546:                                              ; preds = %527
  %547 = ptrtoint ptr %33 to i64
  %548 = ptrtoint ptr %540 to i64
  %549 = sub i64 %547, %548
  %550 = icmp sgt i64 %549, 3
  %551 = icmp ugt i32 %531, 64
  br i1 %550, label %552, label %638

552:                                              ; preds = %546
  br i1 %551, label %.loopexit104, label %553, !prof !91

553:                                              ; preds = %552
  %554 = ptrtoint ptr %27 to i64
  %555 = getelementptr inbounds i8, ptr %33, i64 -3
  %556 = sub nsw i32 0, %37
  %557 = and i32 %556, 63
  %558 = zext nneg i32 %557 to i64
  br label %559

559:                                              ; preds = %592, %553
  %560 = phi ptr [ %540, %553 ], [ %636, %592 ]
  %561 = phi i64 [ %535, %553 ], [ %589, %592 ]
  %562 = phi i32 [ %531, %553 ], [ %635, %592 ]
  %563 = phi ptr [ %528, %553 ], [ %588, %592 ]
  %564 = icmp ult ptr %563, %45
  br i1 %564, label %568, label %565

565:                                              ; preds = %559
  %566 = lshr i32 %562, 3
  %567 = and i32 %562, 7
  br label %582

568:                                              ; preds = %559
  %569 = icmp eq ptr %563, %27
  br i1 %569, label %.loopexit104, label %570

570:                                              ; preds = %568
  %571 = lshr i32 %562, 3
  %572 = zext nneg i32 %571 to i64
  %573 = sub nsw i64 0, %572
  %574 = getelementptr inbounds i8, ptr %563, i64 %573
  %575 = icmp uge ptr %574, %27
  %576 = ptrtoint ptr %563 to i64
  %577 = sub i64 %576, %554
  %578 = trunc i64 %577 to i32
  %579 = select i1 %575, i32 %571, i32 %578
  %580 = shl i32 %579, 3
  %581 = sub i32 %562, %580
  br label %582

582:                                              ; preds = %570, %565
  %583 = phi i32 [ %579, %570 ], [ %566, %565 ]
  %584 = phi i32 [ %581, %570 ], [ %567, %565 ]
  %585 = phi i1 [ %575, %570 ], [ true, %565 ]
  %586 = zext i32 %583 to i64
  %587 = sub nsw i64 0, %586
  %588 = getelementptr inbounds i8, ptr %563, i64 %587
  %589 = load i64, ptr %588, align 1, !tbaa !26
  %590 = icmp ult ptr %560, %555
  %591 = and i1 %590, %585
  br i1 %591, label %592, label %.loopexit104

592:                                              ; preds = %582
  %593 = and i32 %584, 63
  %594 = zext nneg i32 %593 to i64
  %595 = shl i64 %589, %594
  %596 = lshr i64 %595, %558
  %597 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %596
  %598 = getelementptr inbounds nuw i8, ptr %597, i64 1
  %599 = load i8, ptr %598, align 1, !tbaa !97
  %600 = load i8, ptr %597, align 1, !tbaa !99
  %601 = zext i8 %600 to i32
  %602 = add i32 %584, %601
  store i8 %599, ptr %560, align 1, !tbaa !9
  %603 = getelementptr inbounds nuw i8, ptr %560, i64 1
  %604 = and i32 %602, 63
  %605 = zext nneg i32 %604 to i64
  %606 = shl i64 %589, %605
  %607 = lshr i64 %606, %558
  %608 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %607
  %609 = getelementptr inbounds nuw i8, ptr %608, i64 1
  %610 = load i8, ptr %609, align 1, !tbaa !97
  %611 = load i8, ptr %608, align 1, !tbaa !99
  %612 = zext i8 %611 to i32
  %613 = add i32 %602, %612
  store i8 %610, ptr %603, align 1, !tbaa !9
  %614 = getelementptr inbounds nuw i8, ptr %560, i64 2
  %615 = and i32 %613, 63
  %616 = zext nneg i32 %615 to i64
  %617 = shl i64 %589, %616
  %618 = lshr i64 %617, %558
  %619 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %618
  %620 = getelementptr inbounds nuw i8, ptr %619, i64 1
  %621 = load i8, ptr %620, align 1, !tbaa !97
  %622 = load i8, ptr %619, align 1, !tbaa !99
  %623 = zext i8 %622 to i32
  %624 = add i32 %613, %623
  store i8 %621, ptr %614, align 1, !tbaa !9
  %625 = getelementptr inbounds nuw i8, ptr %560, i64 3
  %626 = and i32 %624, 63
  %627 = zext nneg i32 %626 to i64
  %628 = shl i64 %589, %627
  %629 = lshr i64 %628, %558
  %630 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %629
  %631 = getelementptr inbounds nuw i8, ptr %630, i64 1
  %632 = load i8, ptr %631, align 1, !tbaa !97
  %633 = load i8, ptr %630, align 1, !tbaa !99
  %634 = zext i8 %633 to i32
  %635 = add i32 %624, %634
  %636 = getelementptr inbounds nuw i8, ptr %560, i64 4
  store i8 %632, ptr %625, align 1, !tbaa !9
  %637 = icmp ugt i32 %635, 64
  br i1 %637, label %.loopexit104, label %559, !prof !88, !llvm.loop !100

638:                                              ; preds = %546
  br i1 %551, label %.loopexit104, label %639, !prof !109

639:                                              ; preds = %638
  %640 = icmp ult ptr %528, %45
  br i1 %640, label %648, label %641

641:                                              ; preds = %639
  %642 = lshr i32 %531, 3
  %643 = zext nneg i32 %642 to i64
  %644 = sub nsw i64 0, %643
  %645 = getelementptr inbounds i8, ptr %528, i64 %644
  %646 = and i32 %531, 7
  %647 = load i64, ptr %645, align 1, !tbaa !26
  br label %.loopexit104

648:                                              ; preds = %639
  %649 = icmp eq ptr %528, %27
  br i1 %649, label %.loopexit104, label %650

650:                                              ; preds = %648
  %651 = lshr i32 %531, 3
  %652 = zext nneg i32 %651 to i64
  %653 = sub nsw i64 0, %652
  %654 = getelementptr inbounds i8, ptr %528, i64 %653
  %655 = icmp ult ptr %654, %27
  %656 = ptrtoint ptr %528 to i64
  %657 = ptrtoint ptr %27 to i64
  %658 = sub i64 %656, %657
  %659 = trunc i64 %658 to i32
  %660 = select i1 %655, i32 %659, i32 %651
  %661 = zext i32 %660 to i64
  %662 = sub nsw i64 0, %661
  %663 = getelementptr inbounds i8, ptr %528, i64 %662
  %664 = shl i32 %660, 3
  %665 = sub i32 %531, %664
  %666 = load i64, ptr %663, align 1, !tbaa !26
  br label %.loopexit104

.loopexit104:                                     ; preds = %592, %582, %568, %650, %648, %641, %638, %552
  %667 = phi ptr [ %663, %650 ], [ %645, %641 ], [ @BIT_reloadDStream.zeroFilled, %638 ], [ %27, %648 ], [ @BIT_reloadDStream.zeroFilled, %552 ], [ %27, %568 ], [ @BIT_reloadDStream.zeroFilled, %592 ], [ %588, %582 ]
  %668 = phi i32 [ %665, %650 ], [ %646, %641 ], [ %531, %638 ], [ %531, %648 ], [ %531, %552 ], [ %562, %568 ], [ %635, %592 ], [ %584, %582 ]
  %669 = phi i64 [ %666, %650 ], [ %647, %641 ], [ %535, %638 ], [ %535, %648 ], [ %535, %552 ], [ %561, %568 ], [ %589, %592 ], [ %589, %582 ]
  %670 = phi ptr [ %540, %650 ], [ %540, %641 ], [ %540, %638 ], [ %540, %648 ], [ %540, %552 ], [ %560, %568 ], [ %636, %592 ], [ %560, %582 ]
  %671 = icmp ult ptr %670, %33
  br i1 %671, label %672, label %.loopexit103

672:                                              ; preds = %.loopexit104
  %673 = ptrtoint ptr %670 to i64
  %674 = sub nsw i32 0, %37
  %675 = and i32 %674, 63
  %676 = zext nneg i32 %675 to i64
  %677 = add i64 %32, %6
  %678 = sub i64 %677, %673
  %679 = add i64 %673, 1
  %680 = and i64 %678, 1
  %681 = icmp eq i64 %680, 0
  br i1 %681, label %694, label %682

682:                                              ; preds = %672
  %683 = and i32 %668, 63
  %684 = zext nneg i32 %683 to i64
  %685 = shl i64 %669, %684
  %686 = lshr i64 %685, %676
  %687 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %686
  %688 = getelementptr inbounds nuw i8, ptr %687, i64 1
  %689 = load i8, ptr %688, align 1, !tbaa !97
  %690 = load i8, ptr %687, align 1, !tbaa !99
  %691 = zext i8 %690 to i32
  %692 = add i32 %668, %691
  %693 = getelementptr inbounds nuw i8, ptr %670, i64 1
  store i8 %689, ptr %670, align 1, !tbaa !9
  br label %694

694:                                              ; preds = %682, %672
  %695 = phi ptr [ %670, %672 ], [ %693, %682 ]
  %696 = phi i32 [ %668, %672 ], [ %692, %682 ]
  %697 = phi i32 [ poison, %672 ], [ %692, %682 ]
  %698 = icmp eq i64 %677, %679
  br i1 %698, label %.loopexit103, label %.preheader102

.preheader102:                                    ; preds = %694, %.preheader102
  %699 = phi ptr [ %722, %.preheader102 ], [ %695, %694 ]
  %700 = phi i32 [ %721, %.preheader102 ], [ %696, %694 ]
  %701 = and i32 %700, 63
  %702 = zext nneg i32 %701 to i64
  %703 = shl i64 %669, %702
  %704 = lshr i64 %703, %676
  %705 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %704
  %706 = getelementptr inbounds nuw i8, ptr %705, i64 1
  %707 = load i8, ptr %706, align 1, !tbaa !97
  %708 = load i8, ptr %705, align 1, !tbaa !99
  %709 = zext i8 %708 to i32
  %710 = add i32 %700, %709
  %711 = getelementptr inbounds nuw i8, ptr %699, i64 1
  store i8 %707, ptr %699, align 1, !tbaa !9
  %712 = and i32 %710, 63
  %713 = zext nneg i32 %712 to i64
  %714 = shl i64 %669, %713
  %715 = lshr i64 %714, %676
  %716 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %715
  %717 = getelementptr inbounds nuw i8, ptr %716, i64 1
  %718 = load i8, ptr %717, align 1, !tbaa !97
  %719 = load i8, ptr %716, align 1, !tbaa !99
  %720 = zext i8 %719 to i32
  %721 = add i32 %710, %720
  %722 = getelementptr inbounds nuw i8, ptr %699, i64 2
  store i8 %718, ptr %711, align 1, !tbaa !9
  %723 = icmp ult ptr %722, %33
  br i1 %723, label %.preheader102, label %.loopexit103, !llvm.loop !101

.loopexit103:                                     ; preds = %.preheader102, %694, %.loopexit104
  %724 = phi i32 [ %668, %.loopexit104 ], [ %697, %694 ], [ %721, %.preheader102 ]
  %725 = ptrtoint ptr %34 to i64
  %726 = ptrtoint ptr %539 to i64
  %727 = sub i64 %725, %726
  %728 = icmp sgt i64 %727, 3
  %729 = icmp ugt i32 %530, 64
  br i1 %728, label %730, label %816

730:                                              ; preds = %.loopexit103
  br i1 %729, label %.loopexit97, label %731, !prof !91

731:                                              ; preds = %730
  %732 = ptrtoint ptr %28 to i64
  %733 = getelementptr inbounds i8, ptr %34, i64 -3
  %734 = sub nsw i32 0, %37
  %735 = and i32 %734, 63
  %736 = zext nneg i32 %735 to i64
  br label %737

737:                                              ; preds = %770, %731
  %738 = phi ptr [ %539, %731 ], [ %814, %770 ]
  %739 = phi ptr [ %532, %731 ], [ %766, %770 ]
  %740 = phi i32 [ %530, %731 ], [ %813, %770 ]
  %741 = phi i64 [ %529, %731 ], [ %767, %770 ]
  %742 = icmp ult ptr %739, %119
  br i1 %742, label %746, label %743

743:                                              ; preds = %737
  %744 = lshr i32 %740, 3
  %745 = and i32 %740, 7
  br label %760

746:                                              ; preds = %737
  %747 = icmp eq ptr %739, %28
  br i1 %747, label %.loopexit97, label %748

748:                                              ; preds = %746
  %749 = lshr i32 %740, 3
  %750 = zext nneg i32 %749 to i64
  %751 = sub nsw i64 0, %750
  %752 = getelementptr inbounds i8, ptr %739, i64 %751
  %753 = icmp uge ptr %752, %28
  %754 = ptrtoint ptr %739 to i64
  %755 = sub i64 %754, %732
  %756 = trunc i64 %755 to i32
  %757 = select i1 %753, i32 %749, i32 %756
  %758 = shl i32 %757, 3
  %759 = sub i32 %740, %758
  br label %760

760:                                              ; preds = %748, %743
  %761 = phi i32 [ %759, %748 ], [ %745, %743 ]
  %762 = phi i32 [ %757, %748 ], [ %744, %743 ]
  %763 = phi i1 [ %753, %748 ], [ true, %743 ]
  %764 = zext i32 %762 to i64
  %765 = sub nsw i64 0, %764
  %766 = getelementptr inbounds i8, ptr %739, i64 %765
  %767 = load i64, ptr %766, align 1, !tbaa !26
  %768 = icmp ult ptr %738, %733
  %769 = and i1 %768, %763
  br i1 %769, label %770, label %.loopexit97

770:                                              ; preds = %760
  %771 = and i32 %761, 63
  %772 = zext nneg i32 %771 to i64
  %773 = shl i64 %767, %772
  %774 = lshr i64 %773, %736
  %775 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %774
  %776 = getelementptr inbounds nuw i8, ptr %775, i64 1
  %777 = load i8, ptr %776, align 1, !tbaa !97
  %778 = load i8, ptr %775, align 1, !tbaa !99
  %779 = zext i8 %778 to i32
  %780 = add i32 %761, %779
  store i8 %777, ptr %738, align 1, !tbaa !9
  %781 = getelementptr inbounds nuw i8, ptr %738, i64 1
  %782 = and i32 %780, 63
  %783 = zext nneg i32 %782 to i64
  %784 = shl i64 %767, %783
  %785 = lshr i64 %784, %736
  %786 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %785
  %787 = getelementptr inbounds nuw i8, ptr %786, i64 1
  %788 = load i8, ptr %787, align 1, !tbaa !97
  %789 = load i8, ptr %786, align 1, !tbaa !99
  %790 = zext i8 %789 to i32
  %791 = add i32 %780, %790
  store i8 %788, ptr %781, align 1, !tbaa !9
  %792 = getelementptr inbounds nuw i8, ptr %738, i64 2
  %793 = and i32 %791, 63
  %794 = zext nneg i32 %793 to i64
  %795 = shl i64 %767, %794
  %796 = lshr i64 %795, %736
  %797 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %796
  %798 = getelementptr inbounds nuw i8, ptr %797, i64 1
  %799 = load i8, ptr %798, align 1, !tbaa !97
  %800 = load i8, ptr %797, align 1, !tbaa !99
  %801 = zext i8 %800 to i32
  %802 = add i32 %791, %801
  store i8 %799, ptr %792, align 1, !tbaa !9
  %803 = getelementptr inbounds nuw i8, ptr %738, i64 3
  %804 = and i32 %802, 63
  %805 = zext nneg i32 %804 to i64
  %806 = shl i64 %767, %805
  %807 = lshr i64 %806, %736
  %808 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %807
  %809 = getelementptr inbounds nuw i8, ptr %808, i64 1
  %810 = load i8, ptr %809, align 1, !tbaa !97
  %811 = load i8, ptr %808, align 1, !tbaa !99
  %812 = zext i8 %811 to i32
  %813 = add i32 %802, %812
  %814 = getelementptr inbounds nuw i8, ptr %738, i64 4
  store i8 %810, ptr %803, align 1, !tbaa !9
  %815 = icmp ugt i32 %813, 64
  br i1 %815, label %.loopexit97, label %737, !prof !88, !llvm.loop !100

816:                                              ; preds = %.loopexit103
  br i1 %729, label %.loopexit97, label %817, !prof !109

817:                                              ; preds = %816
  %818 = icmp ult ptr %532, %119
  br i1 %818, label %826, label %819

819:                                              ; preds = %817
  %820 = lshr i32 %530, 3
  %821 = zext nneg i32 %820 to i64
  %822 = sub nsw i64 0, %821
  %823 = getelementptr inbounds i8, ptr %532, i64 %822
  %824 = and i32 %530, 7
  %825 = load i64, ptr %823, align 1, !tbaa !26
  br label %.loopexit97

826:                                              ; preds = %817
  %827 = icmp eq ptr %532, %28
  br i1 %827, label %.loopexit97, label %828

828:                                              ; preds = %826
  %829 = lshr i32 %530, 3
  %830 = zext nneg i32 %829 to i64
  %831 = sub nsw i64 0, %830
  %832 = getelementptr inbounds i8, ptr %532, i64 %831
  %833 = icmp ult ptr %832, %28
  %834 = ptrtoint ptr %532 to i64
  %835 = ptrtoint ptr %28 to i64
  %836 = sub i64 %834, %835
  %837 = trunc i64 %836 to i32
  %838 = select i1 %833, i32 %837, i32 %829
  %839 = zext i32 %838 to i64
  %840 = sub nsw i64 0, %839
  %841 = getelementptr inbounds i8, ptr %532, i64 %840
  %842 = shl i32 %838, 3
  %843 = sub i32 %530, %842
  %844 = load i64, ptr %841, align 1, !tbaa !26
  br label %.loopexit97

.loopexit97:                                      ; preds = %770, %760, %746, %828, %826, %819, %816, %730
  %845 = phi i64 [ %844, %828 ], [ %825, %819 ], [ %529, %816 ], [ %529, %826 ], [ %529, %730 ], [ %741, %746 ], [ %767, %770 ], [ %767, %760 ]
  %846 = phi i32 [ %843, %828 ], [ %824, %819 ], [ %530, %816 ], [ %530, %826 ], [ %530, %730 ], [ %740, %746 ], [ %813, %770 ], [ %761, %760 ]
  %847 = phi ptr [ %841, %828 ], [ %823, %819 ], [ @BIT_reloadDStream.zeroFilled, %816 ], [ %28, %826 ], [ @BIT_reloadDStream.zeroFilled, %730 ], [ %28, %746 ], [ @BIT_reloadDStream.zeroFilled, %770 ], [ %766, %760 ]
  %848 = phi ptr [ %539, %828 ], [ %539, %819 ], [ %539, %816 ], [ %539, %826 ], [ %539, %730 ], [ %738, %746 ], [ %814, %770 ], [ %738, %760 ]
  %849 = icmp ult ptr %848, %34
  br i1 %849, label %850, label %.loopexit96

850:                                              ; preds = %.loopexit97
  %851 = ptrtoint ptr %848 to i64
  %852 = sub nsw i32 0, %37
  %853 = and i32 %852, 63
  %854 = zext nneg i32 %853 to i64
  %855 = shl nuw nsw i64 %32, 1
  %856 = add i64 %855, %6
  %857 = sub i64 %6, %851
  %.neg = add i64 %851, 1
  %xtraiter = and i64 %857, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %850
  %858 = and i32 %846, 63
  %859 = zext nneg i32 %858 to i64
  %860 = shl i64 %845, %859
  %861 = lshr i64 %860, %854
  %862 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %861
  %863 = getelementptr inbounds nuw i8, ptr %862, i64 1
  %864 = load i8, ptr %863, align 1, !tbaa !97
  %865 = load i8, ptr %862, align 1, !tbaa !99
  %866 = zext i8 %865 to i32
  %867 = add i32 %846, %866
  %868 = getelementptr inbounds nuw i8, ptr %848, i64 1
  store i8 %864, ptr %848, align 1, !tbaa !9
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %850
  %.unr = phi ptr [ %848, %850 ], [ %868, %.prol.loopexit.unr-lcssa ]
  %.unr343 = phi i32 [ %846, %850 ], [ %867, %.prol.loopexit.unr-lcssa ]
  %.lcssa320.unr = phi i32 [ poison, %850 ], [ %867, %.prol.loopexit.unr-lcssa ]
  %869 = icmp eq i64 %856, %.neg
  br i1 %869, label %.loopexit96, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %870 = phi ptr [ %893, %.new ], [ %.unr, %.prol.loopexit ]
  %871 = phi i32 [ %892, %.new ], [ %.unr343, %.prol.loopexit ]
  %872 = and i32 %871, 63
  %873 = zext nneg i32 %872 to i64
  %874 = shl i64 %845, %873
  %875 = lshr i64 %874, %854
  %876 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %875
  %877 = getelementptr inbounds nuw i8, ptr %876, i64 1
  %878 = load i8, ptr %877, align 1, !tbaa !97
  %879 = load i8, ptr %876, align 1, !tbaa !99
  %880 = zext i8 %879 to i32
  %881 = add i32 %871, %880
  %882 = getelementptr inbounds nuw i8, ptr %870, i64 1
  store i8 %878, ptr %870, align 1, !tbaa !9
  %883 = and i32 %881, 63
  %884 = zext nneg i32 %883 to i64
  %885 = shl i64 %845, %884
  %886 = lshr i64 %885, %854
  %887 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %886
  %888 = getelementptr inbounds nuw i8, ptr %887, i64 1
  %889 = load i8, ptr %888, align 1, !tbaa !97
  %890 = load i8, ptr %887, align 1, !tbaa !99
  %891 = zext i8 %890 to i32
  %892 = add i32 %881, %891
  %893 = getelementptr inbounds nuw i8, ptr %870, i64 2
  store i8 %889, ptr %882, align 1, !tbaa !9
  %894 = icmp ult ptr %893, %34
  br i1 %894, label %.new, label %.loopexit96, !llvm.loop !101

.loopexit96:                                      ; preds = %.prol.loopexit, %.new, %.loopexit97
  %895 = phi i32 [ %846, %.loopexit97 ], [ %.lcssa320.unr, %.prol.loopexit ], [ %892, %.new ]
  %896 = ptrtoint ptr %35 to i64
  %897 = ptrtoint ptr %538 to i64
  %898 = sub i64 %896, %897
  %899 = icmp sgt i64 %898, 3
  %900 = icmp ugt i32 %534, 64
  br i1 %899, label %901, label %987

901:                                              ; preds = %.loopexit96
  br i1 %900, label %.loopexit91, label %902, !prof !91

902:                                              ; preds = %901
  %903 = ptrtoint ptr %29 to i64
  %904 = getelementptr inbounds i8, ptr %35, i64 -3
  %905 = sub nsw i32 0, %37
  %906 = and i32 %905, 63
  %907 = zext nneg i32 %906 to i64
  br label %908

908:                                              ; preds = %941, %902
  %909 = phi ptr [ %538, %902 ], [ %985, %941 ]
  %910 = phi ptr [ %536, %902 ], [ %937, %941 ]
  %911 = phi i32 [ %534, %902 ], [ %984, %941 ]
  %912 = phi i64 [ %533, %902 ], [ %938, %941 ]
  %913 = icmp ult ptr %910, %193
  br i1 %913, label %917, label %914

914:                                              ; preds = %908
  %915 = lshr i32 %911, 3
  %916 = and i32 %911, 7
  br label %931

917:                                              ; preds = %908
  %918 = icmp eq ptr %910, %29
  br i1 %918, label %.loopexit91, label %919

919:                                              ; preds = %917
  %920 = lshr i32 %911, 3
  %921 = zext nneg i32 %920 to i64
  %922 = sub nsw i64 0, %921
  %923 = getelementptr inbounds i8, ptr %910, i64 %922
  %924 = icmp uge ptr %923, %29
  %925 = ptrtoint ptr %910 to i64
  %926 = sub i64 %925, %903
  %927 = trunc i64 %926 to i32
  %928 = select i1 %924, i32 %920, i32 %927
  %929 = shl i32 %928, 3
  %930 = sub i32 %911, %929
  br label %931

931:                                              ; preds = %919, %914
  %932 = phi i32 [ %930, %919 ], [ %916, %914 ]
  %933 = phi i32 [ %928, %919 ], [ %915, %914 ]
  %934 = phi i1 [ %924, %919 ], [ true, %914 ]
  %935 = zext i32 %933 to i64
  %936 = sub nsw i64 0, %935
  %937 = getelementptr inbounds i8, ptr %910, i64 %936
  %938 = load i64, ptr %937, align 1, !tbaa !26
  %939 = icmp ult ptr %909, %904
  %940 = and i1 %939, %934
  br i1 %940, label %941, label %.loopexit91

941:                                              ; preds = %931
  %942 = and i32 %932, 63
  %943 = zext nneg i32 %942 to i64
  %944 = shl i64 %938, %943
  %945 = lshr i64 %944, %907
  %946 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %945
  %947 = getelementptr inbounds nuw i8, ptr %946, i64 1
  %948 = load i8, ptr %947, align 1, !tbaa !97
  %949 = load i8, ptr %946, align 1, !tbaa !99
  %950 = zext i8 %949 to i32
  %951 = add i32 %932, %950
  store i8 %948, ptr %909, align 1, !tbaa !9
  %952 = getelementptr inbounds nuw i8, ptr %909, i64 1
  %953 = and i32 %951, 63
  %954 = zext nneg i32 %953 to i64
  %955 = shl i64 %938, %954
  %956 = lshr i64 %955, %907
  %957 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %956
  %958 = getelementptr inbounds nuw i8, ptr %957, i64 1
  %959 = load i8, ptr %958, align 1, !tbaa !97
  %960 = load i8, ptr %957, align 1, !tbaa !99
  %961 = zext i8 %960 to i32
  %962 = add i32 %951, %961
  store i8 %959, ptr %952, align 1, !tbaa !9
  %963 = getelementptr inbounds nuw i8, ptr %909, i64 2
  %964 = and i32 %962, 63
  %965 = zext nneg i32 %964 to i64
  %966 = shl i64 %938, %965
  %967 = lshr i64 %966, %907
  %968 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %967
  %969 = getelementptr inbounds nuw i8, ptr %968, i64 1
  %970 = load i8, ptr %969, align 1, !tbaa !97
  %971 = load i8, ptr %968, align 1, !tbaa !99
  %972 = zext i8 %971 to i32
  %973 = add i32 %962, %972
  store i8 %970, ptr %963, align 1, !tbaa !9
  %974 = getelementptr inbounds nuw i8, ptr %909, i64 3
  %975 = and i32 %973, 63
  %976 = zext nneg i32 %975 to i64
  %977 = shl i64 %938, %976
  %978 = lshr i64 %977, %907
  %979 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %978
  %980 = getelementptr inbounds nuw i8, ptr %979, i64 1
  %981 = load i8, ptr %980, align 1, !tbaa !97
  %982 = load i8, ptr %979, align 1, !tbaa !99
  %983 = zext i8 %982 to i32
  %984 = add i32 %973, %983
  %985 = getelementptr inbounds nuw i8, ptr %909, i64 4
  store i8 %981, ptr %974, align 1, !tbaa !9
  %986 = icmp ugt i32 %984, 64
  br i1 %986, label %.loopexit91, label %908, !prof !88, !llvm.loop !100

987:                                              ; preds = %.loopexit96
  br i1 %900, label %.loopexit91, label %988, !prof !109

988:                                              ; preds = %987
  %989 = icmp ult ptr %536, %193
  br i1 %989, label %997, label %990

990:                                              ; preds = %988
  %991 = lshr i32 %534, 3
  %992 = zext nneg i32 %991 to i64
  %993 = sub nsw i64 0, %992
  %994 = getelementptr inbounds i8, ptr %536, i64 %993
  %995 = and i32 %534, 7
  %996 = load i64, ptr %994, align 1, !tbaa !26
  br label %.loopexit91

997:                                              ; preds = %988
  %998 = icmp eq ptr %536, %29
  br i1 %998, label %.loopexit91, label %999

999:                                              ; preds = %997
  %1000 = lshr i32 %534, 3
  %1001 = zext nneg i32 %1000 to i64
  %1002 = sub nsw i64 0, %1001
  %1003 = getelementptr inbounds i8, ptr %536, i64 %1002
  %1004 = icmp ult ptr %1003, %29
  %1005 = ptrtoint ptr %536 to i64
  %1006 = ptrtoint ptr %29 to i64
  %1007 = sub i64 %1005, %1006
  %1008 = trunc i64 %1007 to i32
  %1009 = select i1 %1004, i32 %1008, i32 %1000
  %1010 = zext i32 %1009 to i64
  %1011 = sub nsw i64 0, %1010
  %1012 = getelementptr inbounds i8, ptr %536, i64 %1011
  %1013 = shl i32 %1009, 3
  %1014 = sub i32 %534, %1013
  %1015 = load i64, ptr %1012, align 1, !tbaa !26
  br label %.loopexit91

.loopexit91:                                      ; preds = %941, %931, %917, %999, %997, %990, %987, %901
  %1016 = phi i64 [ %1015, %999 ], [ %996, %990 ], [ %533, %987 ], [ %533, %997 ], [ %533, %901 ], [ %912, %917 ], [ %938, %941 ], [ %938, %931 ]
  %1017 = phi i32 [ %1014, %999 ], [ %995, %990 ], [ %534, %987 ], [ %534, %997 ], [ %534, %901 ], [ %911, %917 ], [ %984, %941 ], [ %932, %931 ]
  %1018 = phi ptr [ %1012, %999 ], [ %994, %990 ], [ @BIT_reloadDStream.zeroFilled, %987 ], [ %29, %997 ], [ @BIT_reloadDStream.zeroFilled, %901 ], [ %29, %917 ], [ @BIT_reloadDStream.zeroFilled, %941 ], [ %937, %931 ]
  %1019 = phi ptr [ %538, %999 ], [ %538, %990 ], [ %538, %987 ], [ %538, %997 ], [ %538, %901 ], [ %909, %917 ], [ %985, %941 ], [ %909, %931 ]
  %1020 = icmp ult ptr %1019, %35
  br i1 %1020, label %1021, label %.loopexit90

1021:                                             ; preds = %.loopexit91
  %1022 = sub nsw i32 0, %37
  %1023 = and i32 %1022, 63
  %1024 = zext nneg i32 %1023 to i64
  br label %1025

1025:                                             ; preds = %1025, %1021
  %1026 = phi ptr [ %1019, %1021 ], [ %1038, %1025 ]
  %1027 = phi i32 [ %1017, %1021 ], [ %1037, %1025 ]
  %1028 = and i32 %1027, 63
  %1029 = zext nneg i32 %1028 to i64
  %1030 = shl i64 %1016, %1029
  %1031 = lshr i64 %1030, %1024
  %1032 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %1031
  %1033 = getelementptr inbounds nuw i8, ptr %1032, i64 1
  %1034 = load i8, ptr %1033, align 1, !tbaa !97
  %1035 = load i8, ptr %1032, align 1, !tbaa !99
  %1036 = zext i8 %1035 to i32
  %1037 = add i32 %1027, %1036
  %1038 = getelementptr inbounds nuw i8, ptr %1026, i64 1
  store i8 %1034, ptr %1026, align 1, !tbaa !9
  %1039 = icmp ult ptr %1038, %35
  br i1 %1039, label %1025, label %.loopexit90, !llvm.loop !101

.loopexit90:                                      ; preds = %1025, %.loopexit91
  %1040 = phi i32 [ %1017, %.loopexit91 ], [ %1037, %1025 ]
  %1041 = ptrtoint ptr %12 to i64
  %1042 = ptrtoint ptr %537 to i64
  %1043 = sub i64 %1041, %1042
  %1044 = icmp sgt i64 %1043, 3
  %1045 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %1046 = load i32, ptr %1045, align 8, !tbaa !107
  %1047 = icmp ugt i32 %1046, 64
  br i1 %1044, label %1048, label %1149

1048:                                             ; preds = %.loopexit90
  br i1 %1047, label %.loopexit89, label %1049, !prof !91

1049:                                             ; preds = %1048
  %1050 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %1051 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %1052 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %1053 = sub nsw i32 0, %37
  %1054 = and i32 %1053, 63
  %1055 = zext nneg i32 %1054 to i64
  br label %1059

.loopexit89:                                      ; preds = %1097, %1048
  %1056 = phi i32 [ %1046, %1048 ], [ %1147, %1097 ]
  %1057 = phi ptr [ %537, %1048 ], [ %1146, %1097 ]
  %1058 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1058, align 8, !tbaa !108
  br label %.loopexit87

1059:                                             ; preds = %1097, %1049
  %1060 = phi i32 [ %1046, %1049 ], [ %1147, %1097 ]
  %1061 = phi ptr [ %537, %1049 ], [ %1146, %1097 ]
  %1062 = load ptr, ptr %1050, align 8, !tbaa !108
  %1063 = load ptr, ptr %1051, align 8, !tbaa !103
  %1064 = icmp ult ptr %1062, %1063
  br i1 %1064, label %1071, label %1065

1065:                                             ; preds = %1059
  %1066 = lshr i32 %1060, 3
  %1067 = zext nneg i32 %1066 to i64
  %1068 = sub nsw i64 0, %1067
  %1069 = getelementptr inbounds i8, ptr %1062, i64 %1068
  store ptr %1069, ptr %1050, align 8, !tbaa !108
  %1070 = and i32 %1060, 7
  br label %1090

1071:                                             ; preds = %1059
  %1072 = load ptr, ptr %1052, align 8, !tbaa !112
  %1073 = icmp eq ptr %1062, %1072
  br i1 %1073, label %.loopexit87, label %1074

1074:                                             ; preds = %1071
  %1075 = lshr i32 %1060, 3
  %1076 = zext nneg i32 %1075 to i64
  %1077 = sub nsw i64 0, %1076
  %1078 = getelementptr inbounds i8, ptr %1062, i64 %1077
  %1079 = icmp uge ptr %1078, %1072
  %1080 = ptrtoint ptr %1062 to i64
  %1081 = ptrtoint ptr %1072 to i64
  %1082 = sub i64 %1080, %1081
  %1083 = trunc i64 %1082 to i32
  %1084 = select i1 %1079, i32 %1075, i32 %1083
  %1085 = zext i32 %1084 to i64
  %1086 = sub nsw i64 0, %1085
  %1087 = getelementptr inbounds i8, ptr %1062, i64 %1086
  store ptr %1087, ptr %1050, align 8, !tbaa !108
  %1088 = shl i32 %1084, 3
  %1089 = sub i32 %1060, %1088
  br label %1090

1090:                                             ; preds = %1074, %1065
  %1091 = phi i32 [ %1070, %1065 ], [ %1089, %1074 ]
  %1092 = phi ptr [ %1069, %1065 ], [ %1087, %1074 ]
  %1093 = phi i1 [ true, %1065 ], [ %1079, %1074 ]
  store i32 %1091, ptr %1045, align 8, !tbaa !107
  %1094 = load i64, ptr %1092, align 1, !tbaa !26
  store i64 %1094, ptr %7, align 8, !tbaa !110
  %1095 = icmp ult ptr %1061, %13
  %1096 = and i1 %1095, %1093
  br i1 %1096, label %1097, label %.loopexit87

1097:                                             ; preds = %1090
  %1098 = and i32 %1091, 63
  %1099 = zext nneg i32 %1098 to i64
  %1100 = shl i64 %1094, %1099
  %1101 = lshr i64 %1100, %1055
  %1102 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %1101
  %1103 = getelementptr inbounds nuw i8, ptr %1102, i64 1
  %1104 = load i8, ptr %1103, align 1, !tbaa !97
  %1105 = load i8, ptr %1102, align 1, !tbaa !99
  %1106 = zext i8 %1105 to i32
  %1107 = add i32 %1091, %1106
  store i8 %1104, ptr %1061, align 1, !tbaa !9
  %1108 = getelementptr inbounds nuw i8, ptr %1061, i64 1
  %1109 = load i64, ptr %7, align 8, !tbaa !110
  %1110 = and i32 %1107, 63
  %1111 = zext nneg i32 %1110 to i64
  %1112 = shl i64 %1109, %1111
  %1113 = lshr i64 %1112, %1055
  %1114 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %1113
  %1115 = getelementptr inbounds nuw i8, ptr %1114, i64 1
  %1116 = load i8, ptr %1115, align 1, !tbaa !97
  %1117 = load i8, ptr %1114, align 1, !tbaa !99
  %1118 = zext i8 %1117 to i32
  %1119 = add i32 %1107, %1118
  store i32 %1119, ptr %1045, align 8, !tbaa !107
  store i8 %1116, ptr %1108, align 1, !tbaa !9
  %1120 = getelementptr inbounds nuw i8, ptr %1061, i64 2
  %1121 = load i64, ptr %7, align 8, !tbaa !110
  %1122 = load i32, ptr %1045, align 8, !tbaa !107
  %1123 = and i32 %1122, 63
  %1124 = zext nneg i32 %1123 to i64
  %1125 = shl i64 %1121, %1124
  %1126 = lshr i64 %1125, %1055
  %1127 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %1126
  %1128 = getelementptr inbounds nuw i8, ptr %1127, i64 1
  %1129 = load i8, ptr %1128, align 1, !tbaa !97
  %1130 = load i8, ptr %1127, align 1, !tbaa !99
  %1131 = zext i8 %1130 to i32
  %1132 = add i32 %1122, %1131
  store i32 %1132, ptr %1045, align 8, !tbaa !107
  store i8 %1129, ptr %1120, align 1, !tbaa !9
  %1133 = getelementptr inbounds nuw i8, ptr %1061, i64 3
  %1134 = load i64, ptr %7, align 8, !tbaa !110
  %1135 = load i32, ptr %1045, align 8, !tbaa !107
  %1136 = and i32 %1135, 63
  %1137 = zext nneg i32 %1136 to i64
  %1138 = shl i64 %1134, %1137
  %1139 = lshr i64 %1138, %1055
  %1140 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %1139
  %1141 = getelementptr inbounds nuw i8, ptr %1140, i64 1
  %1142 = load i8, ptr %1141, align 1, !tbaa !97
  %1143 = load i8, ptr %1140, align 1, !tbaa !99
  %1144 = zext i8 %1143 to i32
  %1145 = add i32 %1135, %1144
  store i32 %1145, ptr %1045, align 8, !tbaa !107
  %1146 = getelementptr inbounds nuw i8, ptr %1061, i64 4
  store i8 %1142, ptr %1133, align 1, !tbaa !9
  %1147 = load i32, ptr %1045, align 8, !tbaa !107
  %1148 = icmp ugt i32 %1147, 64
  br i1 %1148, label %.loopexit89, label %1059, !prof !88, !llvm.loop !100

1149:                                             ; preds = %.loopexit90
  %1150 = getelementptr inbounds nuw i8, ptr %7, i64 16
  br i1 %1047, label %1151, label %1152, !prof !109

1151:                                             ; preds = %1149
  store ptr @BIT_reloadDStream.zeroFilled, ptr %1150, align 8, !tbaa !108
  br label %.loopexit87

1152:                                             ; preds = %1149
  %1153 = load ptr, ptr %1150, align 8, !tbaa !108
  %1154 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %1155 = load ptr, ptr %1154, align 8, !tbaa !103
  %1156 = icmp ult ptr %1153, %1155
  br i1 %1156, label %1164, label %1157

1157:                                             ; preds = %1152
  %1158 = lshr i32 %1046, 3
  %1159 = zext nneg i32 %1158 to i64
  %1160 = sub nsw i64 0, %1159
  %1161 = getelementptr inbounds i8, ptr %1153, i64 %1160
  store ptr %1161, ptr %1150, align 8, !tbaa !108
  %1162 = and i32 %1046, 7
  store i32 %1162, ptr %1045, align 8, !tbaa !107
  %1163 = load i64, ptr %1161, align 1, !tbaa !26
  store i64 %1163, ptr %7, align 8, !tbaa !110
  br label %.loopexit87

1164:                                             ; preds = %1152
  %1165 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %1166 = load ptr, ptr %1165, align 8, !tbaa !112
  %1167 = icmp eq ptr %1153, %1166
  br i1 %1167, label %.loopexit87, label %1168

1168:                                             ; preds = %1164
  %1169 = lshr i32 %1046, 3
  %1170 = zext nneg i32 %1169 to i64
  %1171 = sub nsw i64 0, %1170
  %1172 = getelementptr inbounds i8, ptr %1153, i64 %1171
  %1173 = icmp ult ptr %1172, %1166
  %1174 = ptrtoint ptr %1153 to i64
  %1175 = ptrtoint ptr %1166 to i64
  %1176 = sub i64 %1174, %1175
  %1177 = trunc i64 %1176 to i32
  %1178 = select i1 %1173, i32 %1177, i32 %1169
  %1179 = zext i32 %1178 to i64
  %1180 = sub nsw i64 0, %1179
  %1181 = getelementptr inbounds i8, ptr %1153, i64 %1180
  store ptr %1181, ptr %1150, align 8, !tbaa !108
  %1182 = shl i32 %1178, 3
  %1183 = sub i32 %1046, %1182
  store i32 %1183, ptr %1045, align 8, !tbaa !107
  %1184 = load i64, ptr %1181, align 1, !tbaa !26
  store i64 %1184, ptr %7, align 8, !tbaa !110
  br label %.loopexit87

.loopexit87:                                      ; preds = %1090, %1071, %1168, %1164, %1157, %1151, %.loopexit89
  %1185 = phi i32 [ %1183, %1168 ], [ %1162, %1157 ], [ %1046, %1151 ], [ %1056, %.loopexit89 ], [ %1046, %1164 ], [ %1091, %1090 ], [ %1060, %1071 ]
  %1186 = phi ptr [ %1181, %1168 ], [ %1161, %1157 ], [ @BIT_reloadDStream.zeroFilled, %1151 ], [ @BIT_reloadDStream.zeroFilled, %.loopexit89 ], [ %1153, %1164 ], [ %1092, %1090 ], [ %1062, %1071 ]
  %1187 = phi ptr [ %537, %1168 ], [ %537, %1157 ], [ %537, %1151 ], [ %1057, %.loopexit89 ], [ %537, %1164 ], [ %1061, %1071 ], [ %1061, %1090 ]
  %1188 = icmp ult ptr %1187, %12
  br i1 %1188, label %1189, label %1246

1189:                                             ; preds = %.loopexit87
  %1190 = ptrtoint ptr %1187 to i64
  %1191 = sub nsw i32 0, %37
  %1192 = and i32 %1191, 63
  %1193 = zext nneg i32 %1192 to i64
  %1194 = add i64 %1, %6
  %1195 = sub i64 %1194, %1190
  %1196 = add i64 %1190, 1
  %1197 = and i64 %1195, 1
  %1198 = icmp eq i64 %1197, 0
  br i1 %1198, label %1212, label %1199

1199:                                             ; preds = %1189
  %1200 = load i64, ptr %7, align 8, !tbaa !110
  %1201 = and i32 %1185, 63
  %1202 = zext nneg i32 %1201 to i64
  %1203 = shl i64 %1200, %1202
  %1204 = lshr i64 %1203, %1193
  %1205 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %1204
  %1206 = getelementptr inbounds nuw i8, ptr %1205, i64 1
  %1207 = load i8, ptr %1206, align 1, !tbaa !97
  %1208 = load i8, ptr %1205, align 1, !tbaa !99
  %1209 = zext i8 %1208 to i32
  %1210 = add i32 %1185, %1209
  store i32 %1210, ptr %1045, align 8, !tbaa !107
  %1211 = getelementptr inbounds nuw i8, ptr %1187, i64 1
  store i8 %1207, ptr %1187, align 1, !tbaa !9
  br label %1212

1212:                                             ; preds = %1199, %1189
  %1213 = phi ptr [ %1187, %1189 ], [ %1211, %1199 ]
  %1214 = icmp eq i64 %1194, %1196
  br i1 %1214, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %1212, %.preheader
  %1215 = phi ptr [ %1241, %.preheader ], [ %1213, %1212 ]
  %1216 = load i64, ptr %7, align 8, !tbaa !110
  %1217 = load i32, ptr %1045, align 8, !tbaa !107
  %1218 = and i32 %1217, 63
  %1219 = zext nneg i32 %1218 to i64
  %1220 = shl i64 %1216, %1219
  %1221 = lshr i64 %1220, %1193
  %1222 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %1221
  %1223 = getelementptr inbounds nuw i8, ptr %1222, i64 1
  %1224 = load i8, ptr %1223, align 1, !tbaa !97
  %1225 = load i8, ptr %1222, align 1, !tbaa !99
  %1226 = zext i8 %1225 to i32
  %1227 = add i32 %1217, %1226
  store i32 %1227, ptr %1045, align 8, !tbaa !107
  %1228 = getelementptr inbounds nuw i8, ptr %1215, i64 1
  store i8 %1224, ptr %1215, align 1, !tbaa !9
  %1229 = load i64, ptr %7, align 8, !tbaa !110
  %1230 = load i32, ptr %1045, align 8, !tbaa !107
  %1231 = and i32 %1230, 63
  %1232 = zext nneg i32 %1231 to i64
  %1233 = shl i64 %1229, %1232
  %1234 = lshr i64 %1233, %1193
  %1235 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %1234
  %1236 = getelementptr inbounds nuw i8, ptr %1235, i64 1
  %1237 = load i8, ptr %1236, align 1, !tbaa !97
  %1238 = load i8, ptr %1235, align 1, !tbaa !99
  %1239 = zext i8 %1238 to i32
  %1240 = add i32 %1230, %1239
  store i32 %1240, ptr %1045, align 8, !tbaa !107
  %1241 = getelementptr inbounds nuw i8, ptr %1215, i64 2
  store i8 %1237, ptr %1228, align 1, !tbaa !9
  %1242 = icmp ult ptr %1241, %12
  br i1 %1242, label %.preheader, label %.loopexit, !llvm.loop !101

.loopexit:                                        ; preds = %.preheader, %1212
  %1243 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %1244 = load ptr, ptr %1243, align 8, !tbaa !108
  %1245 = load i32, ptr %1045, align 8
  br label %1246

1246:                                             ; preds = %.loopexit, %.loopexit87
  %1247 = phi i32 [ %1245, %.loopexit ], [ %1185, %.loopexit87 ]
  %1248 = phi ptr [ %1244, %.loopexit ], [ %1186, %.loopexit87 ]
  %1249 = icmp ne ptr %667, %27
  %1250 = icmp ne i32 %724, 64
  %1251 = select i1 %1249, i1 true, i1 %1250
  %1252 = icmp ne ptr %847, %28
  %1253 = icmp ne i32 %895, 64
  %1254 = select i1 %1252, i1 true, i1 %1253
  %1255 = or i1 %1251, %1254
  %1256 = icmp ne ptr %1018, %29
  %1257 = icmp ne i32 %1040, 64
  %1258 = select i1 %1256, i1 true, i1 %1257
  %1259 = or i1 %1255, %1258
  %1260 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %1261 = load ptr, ptr %1260, align 8, !tbaa !112
  %1262 = icmp ne ptr %1248, %1261
  %1263 = icmp ne i32 %1247, 64
  %1264 = select i1 %1262, i1 true, i1 %1263
  %1265 = or i1 %1259, %1264
  %1266 = select i1 %1265, i64 -20, i64 %1
  br label %1267

1267:                                             ; preds = %1246, %527, %261, %250, %195, %187, %176, %121, %113, %102, %47, %42, %11
  %1268 = phi i64 [ %265, %261 ], [ -20, %11 ], [ -20, %527 ], [ %1266, %1246 ], [ -20, %102 ], [ -1, %47 ], [ -72, %42 ], [ -20, %176 ], [ -1, %121 ], [ -72, %113 ], [ -20, %250 ], [ -1, %195 ], [ -72, %187 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %1269

1269:                                             ; preds = %1267, %5
  %1270 = phi i64 [ %1268, %1267 ], [ -20, %5 ]
  ret i64 %1270
}

declare hidden void @HUF_decompress4X1_usingDTable_internal_fast_asm_loop(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @HUF_decompress4X1_usingDTable_internal_fast(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef readonly captures(none) %5) unnamed_addr #14 {
  %7 = alloca %struct.HUF_DecompressFastArgs, align 8
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %9 = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %11 = call fastcc i64 @HUF_DecompressFastArgs_init(ptr noundef %7, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %12 = icmp eq i64 %11, 1
  br i1 %12, label %13, label %.loopexit13

13:                                               ; preds = %6
  call void %5(ptr noundef nonnull %7) #17, !callees !123
  %14 = add i64 %1, 3
  %15 = lshr i64 %14, 2
  %16 = ptrtoint ptr %10 to i64
  %17 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 120
  %19 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %20 = getelementptr inbounds nuw i8, ptr %7, i64 104
  br label %23

21:                                               ; preds = %.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %22 = icmp eq i64 %indvars.iv.next, 4
  br i1 %22, label %.loopexit13, label %23, !llvm.loop !124

23:                                               ; preds = %21, %13
  %indvars.iv = phi i64 [ %indvars.iv.next, %21 ], [ 0, %13 ]
  %24 = phi ptr [ %29, %21 ], [ %0, %13 ]
  %25 = ptrtoint ptr %24 to i64
  %26 = sub i64 %16, %25
  %27 = icmp ugt i64 %15, %26
  %28 = getelementptr inbounds nuw i8, ptr %24, i64 %15
  %29 = select i1 %27, ptr %10, ptr %28
  %30 = ptrtoint ptr %29 to i64
  %31 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %indvars.iv
  %32 = load ptr, ptr %31, align 8, !tbaa !121
  %33 = icmp ugt ptr %32, %29
  br i1 %33, label %.loopexit13, label %34

34:                                               ; preds = %23
  %35 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  %36 = load ptr, ptr %35, align 8, !tbaa !121
  %37 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv
  %38 = load ptr, ptr %37, align 8, !tbaa !121
  %39 = getelementptr inbounds i8, ptr %38, i64 -8
  %40 = icmp ult ptr %36, %39
  br i1 %40, label %.loopexit13, label %41

41:                                               ; preds = %34
  %42 = load i64, ptr %36, align 1, !tbaa !26
  %43 = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %indvars.iv
  %44 = load i64, ptr %43, align 8, !tbaa !26
  %45 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %44, i1 true)
  %46 = trunc nuw nsw i64 %45 to i32
  %47 = load ptr, ptr %20, align 8, !tbaa !116
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %49 = ptrtoint ptr %32 to i64
  %50 = sub i64 %30, %49
  %51 = icmp sgt i64 %50, 3
  br i1 %51, label %52, label %134

52:                                               ; preds = %41
  %53 = ptrtoint ptr %47 to i64
  %54 = getelementptr inbounds i8, ptr %29, i64 -3
  br label %55

55:                                               ; preds = %88, %52
  %56 = phi ptr [ %32, %52 ], [ %132, %88 ]
  %57 = phi i64 [ %42, %52 ], [ %85, %88 ]
  %58 = phi i32 [ %46, %52 ], [ %131, %88 ]
  %59 = phi ptr [ %36, %52 ], [ %84, %88 ]
  %60 = icmp ult ptr %59, %48
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = lshr i32 %58, 3
  %63 = and i32 %58, 7
  br label %78

64:                                               ; preds = %55
  %65 = icmp eq ptr %59, %47
  br i1 %65, label %.loopexit10, label %66

66:                                               ; preds = %64
  %67 = lshr i32 %58, 3
  %68 = zext nneg i32 %67 to i64
  %69 = sub nsw i64 0, %68
  %70 = getelementptr inbounds i8, ptr %59, i64 %69
  %71 = icmp uge ptr %70, %47
  %72 = ptrtoint ptr %59 to i64
  %73 = sub i64 %72, %53
  %74 = trunc i64 %73 to i32
  %75 = select i1 %71, i32 %67, i32 %74
  %76 = shl i32 %75, 3
  %77 = sub i32 %58, %76
  br label %78

78:                                               ; preds = %66, %61
  %79 = phi i32 [ %75, %66 ], [ %62, %61 ]
  %80 = phi i32 [ %77, %66 ], [ %63, %61 ]
  %81 = phi i1 [ %71, %66 ], [ true, %61 ]
  %82 = zext i32 %79 to i64
  %83 = sub nsw i64 0, %82
  %84 = getelementptr inbounds i8, ptr %59, i64 %83
  %85 = load i64, ptr %84, align 1, !tbaa !26
  %86 = icmp ult ptr %56, %54
  %87 = and i1 %86, %81
  br i1 %87, label %88, label %.loopexit10

88:                                               ; preds = %78
  %89 = and i32 %80, 63
  %90 = zext nneg i32 %89 to i64
  %91 = shl i64 %85, %90
  %92 = lshr i64 %91, 53
  %93 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %92
  %94 = getelementptr inbounds nuw i8, ptr %93, i64 1
  %95 = load i8, ptr %94, align 1, !tbaa !97
  %96 = load i8, ptr %93, align 1, !tbaa !99
  %97 = zext i8 %96 to i32
  %98 = add i32 %80, %97
  store i8 %95, ptr %56, align 1, !tbaa !9
  %99 = getelementptr inbounds nuw i8, ptr %56, i64 1
  %100 = and i32 %98, 63
  %101 = zext nneg i32 %100 to i64
  %102 = shl i64 %85, %101
  %103 = lshr i64 %102, 53
  %104 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %103
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 1
  %106 = load i8, ptr %105, align 1, !tbaa !97
  %107 = load i8, ptr %104, align 1, !tbaa !99
  %108 = zext i8 %107 to i32
  %109 = add i32 %98, %108
  store i8 %106, ptr %99, align 1, !tbaa !9
  %110 = getelementptr inbounds nuw i8, ptr %56, i64 2
  %111 = and i32 %109, 63
  %112 = zext nneg i32 %111 to i64
  %113 = shl i64 %85, %112
  %114 = lshr i64 %113, 53
  %115 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %114
  %116 = getelementptr inbounds nuw i8, ptr %115, i64 1
  %117 = load i8, ptr %116, align 1, !tbaa !97
  %118 = load i8, ptr %115, align 1, !tbaa !99
  %119 = zext i8 %118 to i32
  %120 = add i32 %109, %119
  store i8 %117, ptr %110, align 1, !tbaa !9
  %121 = getelementptr inbounds nuw i8, ptr %56, i64 3
  %122 = and i32 %120, 63
  %123 = zext nneg i32 %122 to i64
  %124 = shl i64 %85, %123
  %125 = lshr i64 %124, 53
  %126 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %125
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 1
  %128 = load i8, ptr %127, align 1, !tbaa !97
  %129 = load i8, ptr %126, align 1, !tbaa !99
  %130 = zext i8 %129 to i32
  %131 = add i32 %120, %130
  %132 = getelementptr inbounds nuw i8, ptr %56, i64 4
  store i8 %128, ptr %121, align 1, !tbaa !9
  %133 = icmp ugt i32 %131, 64
  br i1 %133, label %.loopexit10, label %55, !prof !88, !llvm.loop !100

134:                                              ; preds = %41
  %135 = icmp ult ptr %36, %48
  br i1 %135, label %142, label %136

136:                                              ; preds = %134
  %137 = lshr i64 %45, 3
  %138 = sub nsw i64 0, %137
  %139 = getelementptr inbounds i8, ptr %36, i64 %138
  %140 = and i32 %46, 7
  %141 = load i64, ptr %139, align 1, !tbaa !26
  br label %.loopexit10

142:                                              ; preds = %134
  %143 = icmp eq ptr %36, %47
  br i1 %143, label %.loopexit10, label %144

144:                                              ; preds = %142
  %145 = lshr i32 %46, 3
  %146 = zext nneg i32 %145 to i64
  %147 = sub nsw i64 0, %146
  %148 = getelementptr inbounds i8, ptr %36, i64 %147
  %149 = icmp ult ptr %148, %47
  %150 = ptrtoint ptr %36 to i64
  %151 = ptrtoint ptr %47 to i64
  %152 = sub i64 %150, %151
  %153 = trunc i64 %152 to i32
  %154 = select i1 %149, i32 %153, i32 %145
  %155 = zext i32 %154 to i64
  %156 = sub nsw i64 0, %155
  %157 = getelementptr inbounds i8, ptr %36, i64 %156
  %158 = shl i32 %154, 3
  %159 = sub i32 %46, %158
  %160 = load i64, ptr %157, align 1, !tbaa !26
  br label %.loopexit10

.loopexit10:                                      ; preds = %88, %78, %64, %144, %142, %136
  %161 = phi i32 [ %159, %144 ], [ %140, %136 ], [ %46, %142 ], [ %58, %64 ], [ %131, %88 ], [ %80, %78 ]
  %162 = phi i64 [ %160, %144 ], [ %141, %136 ], [ %42, %142 ], [ %57, %64 ], [ %85, %88 ], [ %85, %78 ]
  %163 = phi ptr [ %32, %144 ], [ %32, %136 ], [ %32, %142 ], [ %56, %64 ], [ %132, %88 ], [ %56, %78 ]
  %164 = icmp ult ptr %163, %29
  br i1 %164, label %165, label %.loopexit

165:                                              ; preds = %.loopexit10
  %166 = ptrtoint ptr %163 to i64
  %167 = sub i64 %30, %166
  %168 = and i64 %167, 1
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %182, label %170

170:                                              ; preds = %165
  %171 = and i32 %161, 63
  %172 = zext nneg i32 %171 to i64
  %173 = shl i64 %162, %172
  %174 = lshr i64 %173, 53
  %175 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %174
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 1
  %177 = load i8, ptr %176, align 1, !tbaa !97
  %178 = load i8, ptr %175, align 1, !tbaa !99
  %179 = zext i8 %178 to i32
  %180 = add i32 %161, %179
  %181 = getelementptr inbounds nuw i8, ptr %163, i64 1
  store i8 %177, ptr %163, align 1, !tbaa !9
  br label %182

182:                                              ; preds = %170, %165
  %183 = phi ptr [ %163, %165 ], [ %181, %170 ]
  %184 = phi i32 [ %161, %165 ], [ %180, %170 ]
  %185 = add i64 %30, -1
  %186 = icmp eq i64 %185, %166
  br i1 %186, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %182, %.preheader
  %187 = phi ptr [ %210, %.preheader ], [ %183, %182 ]
  %188 = phi i32 [ %209, %.preheader ], [ %184, %182 ]
  %189 = and i32 %188, 63
  %190 = zext nneg i32 %189 to i64
  %191 = shl i64 %162, %190
  %192 = lshr i64 %191, 53
  %193 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %192
  %194 = getelementptr inbounds nuw i8, ptr %193, i64 1
  %195 = load i8, ptr %194, align 1, !tbaa !97
  %196 = load i8, ptr %193, align 1, !tbaa !99
  %197 = zext i8 %196 to i32
  %198 = add i32 %188, %197
  %199 = getelementptr inbounds nuw i8, ptr %187, i64 1
  store i8 %195, ptr %187, align 1, !tbaa !9
  %200 = and i32 %198, 63
  %201 = zext nneg i32 %200 to i64
  %202 = shl i64 %162, %201
  %203 = lshr i64 %202, 53
  %204 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %203
  %205 = getelementptr inbounds nuw i8, ptr %204, i64 1
  %206 = load i8, ptr %205, align 1, !tbaa !97
  %207 = load i8, ptr %204, align 1, !tbaa !99
  %208 = zext i8 %207 to i32
  %209 = add i32 %198, %208
  %210 = getelementptr inbounds nuw i8, ptr %187, i64 2
  store i8 %206, ptr %199, align 1, !tbaa !9
  %211 = icmp eq ptr %210, %29
  br i1 %211, label %.loopexit, label %.preheader, !llvm.loop !101

.loopexit:                                        ; preds = %.preheader, %182, %.loopexit10
  %212 = load ptr, ptr %31, align 8, !tbaa !121
  %213 = getelementptr inbounds nuw i8, ptr %212, i64 %50
  store ptr %213, ptr %31, align 8, !tbaa !121
  %214 = icmp eq ptr %213, %29
  br i1 %214, label %21, label %.loopexit13

.loopexit13:                                      ; preds = %.loopexit, %34, %23, %21, %6
  %215 = phi i64 [ %11, %6 ], [ -20, %.loopexit ], [ %1, %21 ], [ -20, %34 ], [ -20, %23 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret i64 %215
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #16

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !11, !12, !13}
!15 = distinct !{!15, !11, !13, !12}
!16 = distinct !{!16, !11}
!17 = !{}
!18 = !{!"branch_weights", i32 1, i32 1048575}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = !{!27, !27, i64 0}
!27 = !{!"long", !7, i64 0}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !20}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !20}
!36 = !{!37, !7, i64 0}
!37 = !{!"", !7, i64 0}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11, !12, !13}
!41 = distinct !{!41, !20}
!42 = distinct !{!42, !11, !12}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !20}
!47 = distinct !{!47, !11}
!48 = !{!49}
!49 = distinct !{!49, !50}
!50 = distinct !{!50, !"LVerDomain"}
!51 = distinct !{!51, !11, !12, !13}
!52 = distinct !{!52, !20}
!53 = distinct !{!53, !11, !12}
!54 = !{!55}
!55 = distinct !{!55, !56}
!56 = distinct !{!56, !"LVerDomain"}
!57 = !{!58}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !11, !12, !13}
!60 = distinct !{!60, !20}
!61 = distinct !{!61, !11, !12}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !11}
!66 = distinct !{!66, !11}
!67 = distinct !{!67, !20}
!68 = !{!69}
!69 = distinct !{!69, !70}
!70 = distinct !{!70, !"LVerDomain"}
!71 = distinct !{!71, !11, !12, !13}
!72 = distinct !{!72, !20}
!73 = distinct !{!73, !11, !12}
!74 = !{!75}
!75 = distinct !{!75, !76}
!76 = distinct !{!76, !"LVerDomain"}
!77 = !{!78}
!78 = distinct !{!78, !76}
!79 = distinct !{!79, !11, !12, !13}
!80 = distinct !{!80, !20}
!81 = distinct !{!81, !11, !12}
!82 = distinct !{!82, !20}
!83 = distinct !{!83, !11}
!84 = !{!85, !7, i64 2}
!85 = !{!"", !86, i64 0, !7, i64 2, !7, i64 3}
!86 = !{!"short", !7, i64 0}
!87 = !{!85, !7, i64 3}
!88 = !{!"branch_weights", i32 127, i32 255873}
!89 = distinct !{!89, !11}
!90 = distinct !{!90, !11}
!91 = !{!"branch_weights", i32 1, i32 127}
!92 = distinct !{!92, !11}
!93 = distinct !{!93, !11}
!94 = !{!95, !6, i64 0}
!95 = !{!"", !6, i64 0, !6, i64 4}
!96 = !{!95, !6, i64 4}
!97 = !{!98, !7, i64 1}
!98 = !{!"", !7, i64 0, !7, i64 1}
!99 = !{!98, !7, i64 0}
!100 = distinct !{!100, !11}
!101 = distinct !{!101, !11}
!102 = !{!86, !86, i64 0}
!103 = !{!104, !105, i64 32}
!104 = !{!"", !27, i64 0, !6, i64 8, !105, i64 16, !105, i64 24, !105, i64 32}
!105 = !{!"p1 omnipotent char", !106, i64 0}
!106 = !{!"any pointer", !7, i64 0}
!107 = !{!104, !6, i64 8}
!108 = !{!104, !105, i64 16}
!109 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!110 = !{!104, !27, i64 0}
!111 = distinct !{!111, !11}
!112 = !{!104, !105, i64 24}
!113 = distinct !{!113, !11}
!114 = !{!115, !106, i64 96}
!115 = !{!"", !7, i64 0, !7, i64 32, !7, i64 64, !106, i64 96, !105, i64 104, !105, i64 112, !7, i64 120}
!116 = !{!115, !105, i64 104}
!117 = !{!115, !105, i64 112}
!118 = distinct !{!118, !11}
!119 = !{ptr @HUF_decompress4X2_usingDTable_internal_fast_asm_loop, ptr @HUF_decompress4X2_usingDTable_internal_fast_c_loop}
!120 = distinct !{!120, !11}
!121 = !{!105, !105, i64 0}
!122 = distinct !{!122, !11}
!123 = !{ptr @HUF_decompress4X1_usingDTable_internal_fast_asm_loop, ptr @HUF_decompress4X1_usingDTable_internal_fast_c_loop}
!124 = distinct !{!124, !11}
