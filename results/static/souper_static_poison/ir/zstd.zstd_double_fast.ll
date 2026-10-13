; ModuleID = '/mydata/zstd/lib/compress/zstd_double_fast.c'
source_filename = "/mydata/zstd/lib/compress/zstd_double_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZSTD_MatchState_t = type { %struct.ZSTD_window_t, i32, i32, i32, i32, ptr, [8 x i32], i64, i32, ptr, ptr, ptr, i32, i32, %struct.optState_t, ptr, %struct.ZSTD_compressionParameters, ptr, i32, i32 }
%struct.ZSTD_window_t = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.optState_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.SeqStore_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }
%struct.SeqDef_s = type { i32, i16, i16 }

@__const.ZSTD_compressBlock_doubleFast_noDict_generic.dummy = private unnamed_addr constant [10 x i8] c"\124Vx\9A\BC\DE\F0\E2\B4", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ZSTD_fillDoubleHashTable(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %3, 1
  %6 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !15
  %10 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !18
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  %18 = getelementptr inbounds i8, ptr %1, i64 -8
  br i1 %5, label %19, label %111

19:                                               ; preds = %4
  %20 = getelementptr inbounds i8, ptr %17, i64 2
  %21 = icmp ugt ptr %20, %18
  br i1 %21, label %267, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !19
  %25 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !20
  %27 = ptrtoint ptr %13 to i64
  %28 = sub i32 56, %24
  %29 = zext nneg i32 %28 to i64
  %30 = sub i32 24, %24
  %31 = sub i32 56, %26
  %32 = zext nneg i32 %31 to i64
  %33 = icmp eq i32 %2, 0
  br label %34

34:                                               ; preds = %107, %22
  %35 = phi ptr [ %17, %22 ], [ %108, %107 ]
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %36, %27
  %38 = trunc i64 %37 to i32
  %39 = shl i32 %38, 8
  switch i32 %9, label %56 [
    i32 8, label %52
    i32 5, label %48
    i32 6, label %44
    i32 7, label %40
  ]

40:                                               ; preds = %34
  %41 = load i64, ptr %35, align 1, !tbaa !21
  %42 = mul i64 %41, -3523014627193167104
  %43 = lshr i64 %42, %29
  br label %62

44:                                               ; preds = %34
  %45 = load i64, ptr %35, align 1, !tbaa !21
  %46 = mul i64 %45, -3523014627193847808
  %47 = lshr i64 %46, %29
  br label %62

48:                                               ; preds = %34
  %49 = load i64, ptr %35, align 1, !tbaa !21
  %50 = mul i64 %49, -3523014627271114752
  %51 = lshr i64 %50, %29
  br label %62

52:                                               ; preds = %34
  %53 = load i64, ptr %35, align 1, !tbaa !21
  %54 = mul i64 %53, -3523014627327384477
  %55 = lshr i64 %54, %29
  br label %62

56:                                               ; preds = %34
  %57 = load i32, ptr %35, align 1, !tbaa !22
  %58 = mul i32 %57, -1640531535
  %59 = lshr i32 %58, %30
  %60 = zext i32 %59 to i64
  %61 = load i64, ptr %35, align 1, !tbaa !21
  br label %62

62:                                               ; preds = %56, %52, %48, %44, %40
  %63 = phi i64 [ %61, %56 ], [ %41, %40 ], [ %45, %44 ], [ %49, %48 ], [ %53, %52 ]
  %64 = phi i64 [ %60, %56 ], [ %43, %40 ], [ %47, %44 ], [ %51, %48 ], [ %55, %52 ]
  %65 = mul i64 %63, -3523014627327384477
  %66 = lshr i64 %65, %32
  %67 = lshr i64 %64, 8
  %68 = trunc i64 %64 to i32
  %69 = and i32 %68, 255
  %70 = or disjoint i32 %69, %39
  %71 = getelementptr inbounds i32, ptr %11, i64 %67
  store i32 %70, ptr %71, align 4, !tbaa !22
  %72 = lshr i64 %66, 8
  %73 = trunc i64 %66 to i32
  %74 = and i32 %73, 255
  %75 = or disjoint i32 %74, %39
  %76 = getelementptr inbounds i32, ptr %7, i64 %72
  store i32 %75, ptr %76, align 4, !tbaa !22
  br i1 %33, label %107, label %77

77:                                               ; preds = %62
  %78 = getelementptr inbounds i8, ptr %35, i64 1
  %79 = load i64, ptr %78, align 1, !tbaa !21
  %80 = mul i64 %79, -3523014627327384477
  %81 = lshr i64 %80, %32
  %82 = lshr i64 %81, 8
  %83 = getelementptr inbounds i32, ptr %7, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !22
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %77
  %87 = trunc i64 %81 to i32
  %88 = and i32 %87, 255
  %89 = shl i32 %38, 8
  %90 = add i32 %89, 256
  %91 = or disjoint i32 %88, %90
  store i32 %91, ptr %83, align 4, !tbaa !22
  br label %92

92:                                               ; preds = %86, %77
  %93 = getelementptr inbounds i8, ptr %35, i64 2
  %94 = load i64, ptr %93, align 1, !tbaa !21
  %95 = mul i64 %94, -3523014627327384477
  %96 = lshr i64 %95, %32
  %97 = lshr i64 %96, 8
  %98 = getelementptr inbounds i32, ptr %7, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !22
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = trunc i64 %96 to i32
  %103 = and i32 %102, 255
  %104 = shl i32 %38, 8
  %105 = add i32 %104, 512
  %106 = or disjoint i32 %103, %105
  store i32 %106, ptr %98, align 4, !tbaa !22
  br label %107

107:                                              ; preds = %92, %101, %62
  %108 = getelementptr inbounds i8, ptr %35, i64 3
  %109 = getelementptr inbounds i8, ptr %35, i64 5
  %110 = icmp ugt ptr %109, %18
  br i1 %110, label %267, label %34, !llvm.loop !23

111:                                              ; preds = %4
  %112 = getelementptr inbounds i8, ptr %17, i64 3
  %113 = getelementptr inbounds i8, ptr %17, i64 2
  %114 = icmp ugt ptr %113, %18
  br i1 %114, label %267, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !19
  %118 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 2
  %119 = load i32, ptr %118, align 4, !tbaa !20
  %120 = ptrtoint ptr %13 to i64
  %121 = sub i32 64, %117
  %122 = zext nneg i32 %121 to i64
  %123 = sub i32 32, %117
  %124 = sub i32 64, %119
  %125 = zext nneg i32 %124 to i64
  %126 = icmp eq i32 %2, 0
  br i1 %126, label %127, label %209

127:                                              ; preds = %115
  switch i32 %9, label %191 [
    i32 8, label %128
    i32 5, label %143
    i32 6, label %159
    i32 7, label %175
  ]

128:                                              ; preds = %127, %128
  %129 = phi ptr [ %140, %128 ], [ %112, %127 ]
  %130 = phi ptr [ %129, %128 ], [ %17, %127 ]
  %131 = ptrtoint ptr %130 to i64
  %132 = sub i64 %131, %120
  %133 = trunc i64 %132 to i32
  %134 = load i64, ptr %130, align 1, !tbaa !21
  %135 = mul i64 %134, -3523014627327384477
  %136 = lshr i64 %135, %122
  %137 = lshr i64 %135, %125
  %138 = getelementptr inbounds i32, ptr %11, i64 %136
  store i32 %133, ptr %138, align 4, !tbaa !22
  %139 = getelementptr inbounds i32, ptr %7, i64 %137
  store i32 %133, ptr %139, align 4, !tbaa !22
  %140 = getelementptr inbounds i8, ptr %129, i64 3
  %141 = getelementptr inbounds i8, ptr %129, i64 2
  %142 = icmp ugt ptr %141, %18
  br i1 %142, label %267, label %128, !llvm.loop !25

143:                                              ; preds = %127, %143
  %144 = phi ptr [ %156, %143 ], [ %112, %127 ]
  %145 = phi ptr [ %144, %143 ], [ %17, %127 ]
  %146 = ptrtoint ptr %145 to i64
  %147 = sub i64 %146, %120
  %148 = trunc i64 %147 to i32
  %149 = load i64, ptr %145, align 1, !tbaa !21
  %150 = mul i64 %149, -3523014627271114752
  %151 = lshr i64 %150, %122
  %152 = mul i64 %149, -3523014627327384477
  %153 = lshr i64 %152, %125
  %154 = getelementptr inbounds i32, ptr %11, i64 %151
  store i32 %148, ptr %154, align 4, !tbaa !22
  %155 = getelementptr inbounds i32, ptr %7, i64 %153
  store i32 %148, ptr %155, align 4, !tbaa !22
  %156 = getelementptr inbounds i8, ptr %144, i64 3
  %157 = getelementptr inbounds i8, ptr %144, i64 2
  %158 = icmp ugt ptr %157, %18
  br i1 %158, label %267, label %143, !llvm.loop !25

159:                                              ; preds = %127, %159
  %160 = phi ptr [ %172, %159 ], [ %112, %127 ]
  %161 = phi ptr [ %160, %159 ], [ %17, %127 ]
  %162 = ptrtoint ptr %161 to i64
  %163 = sub i64 %162, %120
  %164 = trunc i64 %163 to i32
  %165 = load i64, ptr %161, align 1, !tbaa !21
  %166 = mul i64 %165, -3523014627193847808
  %167 = lshr i64 %166, %122
  %168 = mul i64 %165, -3523014627327384477
  %169 = lshr i64 %168, %125
  %170 = getelementptr inbounds i32, ptr %11, i64 %167
  store i32 %164, ptr %170, align 4, !tbaa !22
  %171 = getelementptr inbounds i32, ptr %7, i64 %169
  store i32 %164, ptr %171, align 4, !tbaa !22
  %172 = getelementptr inbounds i8, ptr %160, i64 3
  %173 = getelementptr inbounds i8, ptr %160, i64 2
  %174 = icmp ugt ptr %173, %18
  br i1 %174, label %267, label %159, !llvm.loop !25

175:                                              ; preds = %127, %175
  %176 = phi ptr [ %188, %175 ], [ %112, %127 ]
  %177 = phi ptr [ %176, %175 ], [ %17, %127 ]
  %178 = ptrtoint ptr %177 to i64
  %179 = sub i64 %178, %120
  %180 = trunc i64 %179 to i32
  %181 = load i64, ptr %177, align 1, !tbaa !21
  %182 = mul i64 %181, -3523014627193167104
  %183 = lshr i64 %182, %122
  %184 = mul i64 %181, -3523014627327384477
  %185 = lshr i64 %184, %125
  %186 = getelementptr inbounds i32, ptr %11, i64 %183
  store i32 %180, ptr %186, align 4, !tbaa !22
  %187 = getelementptr inbounds i32, ptr %7, i64 %185
  store i32 %180, ptr %187, align 4, !tbaa !22
  %188 = getelementptr inbounds i8, ptr %176, i64 3
  %189 = getelementptr inbounds i8, ptr %176, i64 2
  %190 = icmp ugt ptr %189, %18
  br i1 %190, label %267, label %175, !llvm.loop !25

191:                                              ; preds = %127, %191
  %192 = phi ptr [ %206, %191 ], [ %112, %127 ]
  %193 = phi ptr [ %192, %191 ], [ %17, %127 ]
  %194 = ptrtoint ptr %193 to i64
  %195 = sub i64 %194, %120
  %196 = trunc i64 %195 to i32
  %197 = load i32, ptr %193, align 1, !tbaa !22
  %198 = mul i32 %197, -1640531535
  %199 = lshr i32 %198, %123
  %200 = zext i32 %199 to i64
  %201 = load i64, ptr %193, align 1, !tbaa !21
  %202 = mul i64 %201, -3523014627327384477
  %203 = lshr i64 %202, %125
  %204 = getelementptr inbounds i32, ptr %11, i64 %200
  store i32 %196, ptr %204, align 4, !tbaa !22
  %205 = getelementptr inbounds i32, ptr %7, i64 %203
  store i32 %196, ptr %205, align 4, !tbaa !22
  %206 = getelementptr inbounds i8, ptr %192, i64 3
  %207 = getelementptr inbounds i8, ptr %192, i64 2
  %208 = icmp ugt ptr %207, %18
  br i1 %208, label %267, label %191, !llvm.loop !25

209:                                              ; preds = %115, %263
  %210 = phi ptr [ %264, %263 ], [ %112, %115 ]
  %211 = phi ptr [ %210, %263 ], [ %17, %115 ]
  %212 = ptrtoint ptr %211 to i64
  %213 = sub i64 %212, %120
  %214 = trunc i64 %213 to i32
  switch i32 %9, label %231 [
    i32 8, label %227
    i32 5, label %215
    i32 6, label %219
    i32 7, label %223
  ]

215:                                              ; preds = %209
  %216 = load i64, ptr %211, align 1, !tbaa !21
  %217 = mul i64 %216, -3523014627271114752
  %218 = lshr i64 %217, %122
  br label %237

219:                                              ; preds = %209
  %220 = load i64, ptr %211, align 1, !tbaa !21
  %221 = mul i64 %220, -3523014627193847808
  %222 = lshr i64 %221, %122
  br label %237

223:                                              ; preds = %209
  %224 = load i64, ptr %211, align 1, !tbaa !21
  %225 = mul i64 %224, -3523014627193167104
  %226 = lshr i64 %225, %122
  br label %237

227:                                              ; preds = %209
  %228 = load i64, ptr %211, align 1, !tbaa !21
  %229 = mul i64 %228, -3523014627327384477
  %230 = lshr i64 %229, %122
  br label %237

231:                                              ; preds = %209
  %232 = load i32, ptr %211, align 1, !tbaa !22
  %233 = mul i32 %232, -1640531535
  %234 = lshr i32 %233, %123
  %235 = zext i32 %234 to i64
  %236 = load i64, ptr %211, align 1, !tbaa !21
  br label %237

237:                                              ; preds = %231, %227, %223, %219, %215
  %238 = phi i64 [ %236, %231 ], [ %224, %223 ], [ %220, %219 ], [ %216, %215 ], [ %228, %227 ]
  %239 = phi i64 [ %235, %231 ], [ %226, %223 ], [ %222, %219 ], [ %218, %215 ], [ %230, %227 ]
  %240 = mul i64 %238, -3523014627327384477
  %241 = lshr i64 %240, %125
  %242 = getelementptr inbounds i32, ptr %11, i64 %239
  store i32 %214, ptr %242, align 4, !tbaa !22
  %243 = getelementptr inbounds i32, ptr %7, i64 %241
  store i32 %214, ptr %243, align 4, !tbaa !22
  %244 = getelementptr inbounds i8, ptr %211, i64 1
  %245 = load i64, ptr %244, align 1, !tbaa !21
  %246 = mul i64 %245, -3523014627327384477
  %247 = lshr i64 %246, %125
  %248 = getelementptr inbounds i32, ptr %7, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !22
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %237
  %252 = add i32 %214, 1
  store i32 %252, ptr %248, align 4, !tbaa !22
  br label %253

253:                                              ; preds = %251, %237
  %254 = getelementptr inbounds i8, ptr %211, i64 2
  %255 = load i64, ptr %254, align 1, !tbaa !21
  %256 = mul i64 %255, -3523014627327384477
  %257 = lshr i64 %256, %125
  %258 = getelementptr inbounds i32, ptr %7, i64 %257
  %259 = load i32, ptr %258, align 4, !tbaa !22
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %253
  %262 = add i32 %214, 2
  store i32 %262, ptr %258, align 4, !tbaa !22
  br label %263

263:                                              ; preds = %261, %253
  %264 = getelementptr inbounds i8, ptr %210, i64 3
  %265 = getelementptr inbounds i8, ptr %210, i64 2
  %266 = icmp ugt ptr %265, %18
  br i1 %266, label %267, label %209, !llvm.loop !25

267:                                              ; preds = %263, %175, %159, %143, %128, %191, %107, %111, %19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_doubleFast(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = alloca [10 x i8], align 1
  %7 = alloca [10 x i8], align 1
  %8 = alloca [10 x i8], align 1
  %9 = alloca [10 x i8], align 1
  %10 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !26
  %12 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16
  %13 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !20
  %17 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !16
  %19 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !19
  %21 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !17
  %23 = ptrtoint ptr %3 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = add i64 %23, %4
  %26 = sub i64 %25, %24
  %27 = trunc i64 %26 to i32
  %28 = load i32, ptr %12, align 4, !tbaa !27
  %29 = getelementptr i8, ptr %0, i64 24
  %30 = load i32, ptr %29, align 8, !tbaa !28
  %31 = getelementptr i8, ptr %0, i64 40
  %32 = load i32, ptr %31, align 8, !tbaa !29
  %33 = shl nuw i32 1, %28
  %34 = sub i32 %27, %30
  %35 = icmp ugt i32 %34, %33
  %36 = sub i32 %27, %33
  %37 = icmp eq i32 %32, 0
  %38 = select i1 %37, i1 %35, i1 false
  %39 = select i1 %38, i32 %36, i32 %30
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %22, i64 %40
  %42 = getelementptr inbounds i8, ptr %3, i64 %4
  %43 = getelementptr inbounds i8, ptr %42, i64 -8
  %44 = load i32, ptr %2, align 4, !tbaa !22
  %45 = getelementptr inbounds i32, ptr %2, i64 1
  %46 = load i32, ptr %45, align 4, !tbaa !22
  %47 = icmp eq ptr %41, %3
  %48 = zext i1 %47 to i64
  %49 = getelementptr inbounds i8, ptr %3, i64 %48
  %50 = ptrtoint ptr %49 to i64
  %51 = sub i64 %50, %24
  %52 = trunc i64 %51 to i32
  %53 = sub i32 %52, %30
  %54 = icmp ugt i32 %53, %33
  %55 = sub i32 %52, %33
  %56 = select i1 %37, i1 %54, i1 false
  %57 = select i1 %56, i32 %55, i32 %30
  %58 = sub i32 %52, %57
  %59 = icmp ugt i32 %46, %58
  %60 = select i1 %59, i32 0, i32 %46
  %61 = icmp ugt i32 %44, %58
  %62 = select i1 %61, i32 0, i32 %44
  %63 = getelementptr inbounds i8, ptr %49, i64 1
  %64 = icmp ugt ptr %63, %43
  switch i32 %11, label %65 [
    i32 7, label %3180
    i32 5, label %1110
    i32 6, label %2145
  ]

65:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %9) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %9, ptr noundef nonnull align 1 dereferenceable(10) @__const.ZSTD_compressBlock_doubleFast_noDict_generic.dummy, i64 10, i1 false)
  br i1 %64, label %1094, label %66

66:                                               ; preds = %65
  %67 = sub i32 64, %16
  %68 = zext nneg i32 %67 to i64
  %69 = sub i32 32, %20
  %70 = getelementptr inbounds i8, ptr %42, i64 -7
  %71 = getelementptr inbounds i8, ptr %42, i64 -3
  %72 = getelementptr inbounds i8, ptr %42, i64 -1
  %73 = getelementptr inbounds i8, ptr %42, i64 -32
  %74 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %75 = ptrtoint ptr %73 to i64
  %76 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %77 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %78 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  br label %79

79:                                               ; preds = %1088, %66
  %80 = phi ptr [ %63, %66 ], [ %1092, %1088 ]
  %81 = phi ptr [ %3, %66 ], [ %1091, %1088 ]
  %82 = phi i32 [ %62, %66 ], [ %1090, %1088 ]
  %83 = phi i32 [ %60, %66 ], [ %1089, %1088 ]
  %84 = phi ptr [ %49, %66 ], [ %1091, %1088 ]
  %85 = freeze i32 %82
  %86 = getelementptr inbounds i8, ptr %84, i64 256
  %87 = load i64, ptr %84, align 1
  %88 = mul i64 %87, -3523014627327384477
  %89 = lshr i64 %88, %68
  %90 = getelementptr inbounds i32, ptr %14, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !22
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %22, i64 %92
  %94 = icmp eq i32 %85, 0
  %95 = zext i32 %85 to i64
  %96 = sub nsw i64 0, %95
  %97 = trunc i64 %87 to i32
  br i1 %94, label %98, label %151

98:                                               ; preds = %79, %146
  %99 = phi i64 [ %117, %146 ], [ %87, %79 ]
  %100 = phi i32 [ %125, %146 ], [ %97, %79 ]
  %101 = phi i32 [ %130, %146 ], [ %91, %79 ]
  %102 = phi ptr [ %132, %146 ], [ %93, %79 ]
  %103 = phi i64 [ %119, %146 ], [ %89, %79 ]
  %104 = phi ptr [ %105, %146 ], [ %84, %79 ]
  %105 = phi ptr [ %149, %146 ], [ %80, %79 ]
  %106 = phi i64 [ %147, %146 ], [ 1, %79 ]
  %107 = phi ptr [ %148, %146 ], [ %86, %79 ]
  %108 = mul i32 %100, -1640531535
  %109 = lshr i32 %108, %69
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, ptr %18, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !22
  %113 = ptrtoint ptr %104 to i64
  %114 = sub i64 %113, %24
  %115 = trunc i64 %114 to i32
  store i32 %115, ptr %111, align 4, !tbaa !22
  %116 = getelementptr inbounds i32, ptr %14, i64 %103
  store i32 %115, ptr %116, align 4, !tbaa !22
  %117 = load i64, ptr %105, align 1
  %118 = mul i64 %117, -3523014627327384477
  %119 = lshr i64 %118, %68
  %120 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %101, i32 %39, ptr nonnull %9, ptr %102) #11, !srcloc !30
  %121 = load i64, ptr %120, align 1, !tbaa !21
  %122 = icmp eq i64 %121, %99
  %123 = icmp eq ptr %120, %102
  %124 = select i1 %122, i1 %123, i1 false
  %125 = trunc i64 %117 to i32
  br i1 %124, label %427, label %126

126:                                              ; preds = %98
  %127 = zext i32 %112 to i64
  %128 = getelementptr inbounds i8, ptr %22, i64 %127
  %129 = getelementptr inbounds i32, ptr %14, i64 %119
  %130 = load i32, ptr %129, align 4, !tbaa !22
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i8, ptr %22, i64 %131
  %133 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %112, i32 %39, ptr nonnull %9, ptr %128) #11, !srcloc !30
  %134 = load i32, ptr %133, align 1, !tbaa !22
  %135 = load i32, ptr %104, align 1, !tbaa !22
  %136 = icmp eq i32 %134, %135
  %137 = icmp eq ptr %133, %128
  %138 = select i1 %136, i1 %137, i1 false
  br i1 %138, label %546, label %139

139:                                              ; preds = %126
  %140 = icmp ult ptr %105, %107
  br i1 %140, label %146, label %141

141:                                              ; preds = %139
  %142 = getelementptr inbounds i8, ptr %105, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %142, i32 0, i32 3, i32 1)
  %143 = getelementptr inbounds i8, ptr %105, i64 128
  call void @llvm.prefetch.p0(ptr nonnull %143, i32 0, i32 3, i32 1)
  %144 = add i64 %106, 1
  %145 = getelementptr inbounds i8, ptr %107, i64 256
  br label %146

146:                                              ; preds = %141, %139
  %147 = phi i64 [ %144, %141 ], [ %106, %139 ]
  %148 = phi ptr [ %145, %141 ], [ %107, %139 ]
  %149 = getelementptr inbounds i8, ptr %105, i64 %147
  %150 = icmp ugt ptr %149, %43
  br i1 %150, label %1094, label %98, !llvm.loop !31

151:                                              ; preds = %79, %541
  %152 = phi i32 [ %426, %541 ], [ %97, %79 ]
  %153 = phi i32 [ %526, %541 ], [ %91, %79 ]
  %154 = phi ptr [ %528, %541 ], [ %93, %79 ]
  %155 = phi i64 [ %419, %541 ], [ %89, %79 ]
  %156 = phi ptr [ %157, %541 ], [ %84, %79 ]
  %157 = phi ptr [ %544, %541 ], [ %80, %79 ]
  %158 = phi i64 [ %542, %541 ], [ 1, %79 ]
  %159 = phi ptr [ %543, %541 ], [ %86, %79 ]
  %160 = mul i32 %152, -1640531535
  %161 = lshr i32 %160, %69
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i32, ptr %18, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !22
  %165 = ptrtoint ptr %156 to i64
  %166 = sub i64 %165, %24
  %167 = trunc i64 %166 to i32
  %168 = zext i32 %164 to i64
  %169 = getelementptr inbounds i8, ptr %22, i64 %168
  store i32 %167, ptr %163, align 4, !tbaa !22
  %170 = getelementptr inbounds i32, ptr %14, i64 %155
  store i32 %167, ptr %170, align 4, !tbaa !22
  %171 = getelementptr inbounds i8, ptr %156, i64 1
  %172 = getelementptr inbounds i8, ptr %171, i64 %96
  %173 = load i32, ptr %172, align 1, !tbaa !22
  %174 = load i32, ptr %171, align 1, !tbaa !22
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %416

176:                                              ; preds = %151
  %177 = ptrtoint ptr %156 to i64
  %178 = getelementptr inbounds i8, ptr %156, i64 5
  %179 = getelementptr inbounds i8, ptr %178, i64 %96
  %180 = icmp ugt ptr %70, %178
  br i1 %180, label %181, label %207

181:                                              ; preds = %176
  %182 = load i64, ptr %179, align 1, !tbaa !21
  %183 = load i64, ptr %178, align 1, !tbaa !21
  %184 = xor i64 %183, %182
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %181
  %187 = call i64 @llvm.cttz.i64(i64 %184, i1 true), !range !32
  %188 = lshr i64 %187, 3
  br label %244

189:                                              ; preds = %181, %195
  %190 = phi ptr [ %193, %195 ], [ %179, %181 ]
  %191 = phi ptr [ %192, %195 ], [ %178, %181 ]
  %192 = getelementptr inbounds i8, ptr %191, i64 8
  %193 = getelementptr inbounds i8, ptr %190, i64 8
  %194 = icmp ult ptr %192, %70
  br i1 %194, label %195, label %207

195:                                              ; preds = %189
  %196 = load i64, ptr %193, align 1, !tbaa !21
  %197 = load i64, ptr %192, align 1, !tbaa !21
  %198 = xor i64 %197, %196
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %189, label %200

200:                                              ; preds = %195
  %201 = call i64 @llvm.cttz.i64(i64 %198, i1 true), !range !32
  %202 = lshr i64 %201, 3
  %203 = getelementptr inbounds i8, ptr %192, i64 %202
  %204 = ptrtoint ptr %203 to i64
  %205 = ptrtoint ptr %178 to i64
  %206 = sub i64 %204, %205
  br label %244

207:                                              ; preds = %189, %176
  %208 = phi ptr [ %179, %176 ], [ %193, %189 ]
  %209 = phi ptr [ %178, %176 ], [ %192, %189 ]
  %210 = icmp ult ptr %209, %71
  br i1 %210, label %211, label %218

211:                                              ; preds = %207
  %212 = load i32, ptr %208, align 1, !tbaa !22
  %213 = load i32, ptr %209, align 1, !tbaa !22
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = getelementptr inbounds i8, ptr %209, i64 4
  %217 = getelementptr inbounds i8, ptr %208, i64 4
  br label %218

218:                                              ; preds = %215, %211, %207
  %219 = phi ptr [ %217, %215 ], [ %208, %211 ], [ %208, %207 ]
  %220 = phi ptr [ %216, %215 ], [ %209, %211 ], [ %209, %207 ]
  %221 = icmp ult ptr %220, %72
  br i1 %221, label %222, label %229

222:                                              ; preds = %218
  %223 = load i16, ptr %219, align 1, !tbaa !33
  %224 = load i16, ptr %220, align 1, !tbaa !33
  %225 = icmp eq i16 %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = getelementptr inbounds i8, ptr %220, i64 2
  %228 = getelementptr inbounds i8, ptr %219, i64 2
  br label %229

229:                                              ; preds = %226, %222, %218
  %230 = phi ptr [ %228, %226 ], [ %219, %222 ], [ %219, %218 ]
  %231 = phi ptr [ %227, %226 ], [ %220, %222 ], [ %220, %218 ]
  %232 = icmp ult ptr %231, %42
  br i1 %232, label %233, label %239

233:                                              ; preds = %229
  %234 = load i8, ptr %230, align 1, !tbaa !35
  %235 = load i8, ptr %231, align 1, !tbaa !35
  %236 = icmp eq i8 %234, %235
  %237 = zext i1 %236 to i64
  %238 = getelementptr inbounds i8, ptr %231, i64 %237
  br label %239

239:                                              ; preds = %233, %229
  %240 = phi ptr [ %231, %229 ], [ %238, %233 ]
  %241 = ptrtoint ptr %240 to i64
  %242 = ptrtoint ptr %178 to i64
  %243 = sub i64 %241, %242
  br label %244

244:                                              ; preds = %239, %200, %186
  %245 = phi i64 [ %243, %239 ], [ %188, %186 ], [ %206, %200 ]
  %246 = add i64 %245, 4
  %247 = ptrtoint ptr %171 to i64
  %248 = ptrtoint ptr %81 to i64
  %249 = sub i64 %247, %248
  %250 = getelementptr inbounds i8, ptr %81, i64 %249
  %251 = icmp ugt ptr %250, %73
  %252 = load ptr, ptr %74, align 8, !tbaa !36
  br i1 %251, label %276, label %253

253:                                              ; preds = %244
  %254 = load <2 x i64>, ptr %81, align 1, !tbaa !35
  store <2 x i64> %254, ptr %252, align 1, !tbaa !35
  %255 = icmp ugt i64 %249, 16
  br i1 %255, label %256, label %394

256:                                              ; preds = %253
  %257 = load ptr, ptr %74, align 8, !tbaa !36
  %258 = getelementptr inbounds i8, ptr %257, i64 16
  %259 = getelementptr inbounds i8, ptr %81, i64 16
  %260 = add i64 %249, -16
  %261 = getelementptr inbounds i8, ptr %257, i64 %249
  %262 = load <2 x i64>, ptr %259, align 1, !tbaa !35
  store <2 x i64> %262, ptr %258, align 1, !tbaa !35
  %263 = icmp ult i64 %260, 17
  br i1 %263, label %394, label %264

264:                                              ; preds = %256
  %265 = getelementptr inbounds i8, ptr %257, i64 32
  br label %266

266:                                              ; preds = %266, %264
  %267 = phi ptr [ %265, %264 ], [ %274, %266 ]
  %268 = phi ptr [ %259, %264 ], [ %272, %266 ]
  %269 = getelementptr inbounds i8, ptr %268, i64 16
  %270 = load <2 x i64>, ptr %269, align 1, !tbaa !35
  store <2 x i64> %270, ptr %267, align 1, !tbaa !35
  %271 = getelementptr inbounds i8, ptr %267, i64 16
  %272 = getelementptr inbounds i8, ptr %268, i64 32
  %273 = load <2 x i64>, ptr %272, align 1, !tbaa !35
  store <2 x i64> %273, ptr %271, align 1, !tbaa !35
  %274 = getelementptr inbounds i8, ptr %267, i64 32
  %275 = icmp ult ptr %274, %261
  br i1 %275, label %266, label %398, !llvm.loop !38

276:                                              ; preds = %244
  %277 = ptrtoint ptr %250 to i64
  %278 = icmp ugt ptr %81, %73
  br i1 %278, label %296, label %279

279:                                              ; preds = %276
  %280 = sub i64 %75, %248
  %281 = getelementptr inbounds i8, ptr %252, i64 %280
  %282 = load <2 x i64>, ptr %81, align 1, !tbaa !35
  store <2 x i64> %282, ptr %252, align 1, !tbaa !35
  %283 = icmp ult i64 %280, 17
  br i1 %283, label %296, label %284

284:                                              ; preds = %279
  %285 = getelementptr inbounds i8, ptr %252, i64 16
  br label %286

286:                                              ; preds = %286, %284
  %287 = phi ptr [ %285, %284 ], [ %294, %286 ]
  %288 = phi ptr [ %81, %284 ], [ %292, %286 ]
  %289 = getelementptr inbounds i8, ptr %288, i64 16
  %290 = load <2 x i64>, ptr %289, align 1, !tbaa !35
  store <2 x i64> %290, ptr %287, align 1, !tbaa !35
  %291 = getelementptr inbounds i8, ptr %287, i64 16
  %292 = getelementptr inbounds i8, ptr %288, i64 32
  %293 = load <2 x i64>, ptr %292, align 1, !tbaa !35
  store <2 x i64> %293, ptr %291, align 1, !tbaa !35
  %294 = getelementptr inbounds i8, ptr %287, i64 32
  %295 = icmp ult ptr %294, %281
  br i1 %295, label %286, label %296, !llvm.loop !38

296:                                              ; preds = %286, %279, %276
  %297 = phi ptr [ %73, %279 ], [ %81, %276 ], [ %73, %286 ]
  %298 = phi ptr [ %281, %279 ], [ %252, %276 ], [ %281, %286 ]
  %299 = icmp ult ptr %297, %250
  br i1 %299, label %300, label %398

300:                                              ; preds = %296
  %301 = ptrtoint ptr %298 to i64
  %302 = ptrtoint ptr %297 to i64
  %303 = sub i64 %277, %302
  %304 = getelementptr i8, ptr %297, i64 %303
  %305 = icmp ult i64 %303, 8
  %306 = sub i64 %301, %302
  %307 = icmp ult i64 %306, 32
  %308 = select i1 %305, i1 true, i1 %307
  br i1 %308, label %344, label %309

309:                                              ; preds = %300
  %310 = icmp ult i64 %303, 32
  br i1 %310, label %330, label %311

311:                                              ; preds = %309
  %312 = and i64 %303, -32
  br label %313

313:                                              ; preds = %313, %311
  %314 = phi i64 [ 0, %311 ], [ %321, %313 ]
  %315 = getelementptr i8, ptr %298, i64 %314
  %316 = getelementptr i8, ptr %297, i64 %314
  %317 = getelementptr i8, ptr %316, i64 16
  %318 = load <16 x i8>, ptr %316, align 1, !tbaa !35
  %319 = load <16 x i8>, ptr %317, align 1, !tbaa !35
  %320 = getelementptr i8, ptr %315, i64 16
  store <16 x i8> %318, ptr %315, align 1, !tbaa !35
  store <16 x i8> %319, ptr %320, align 1, !tbaa !35
  %321 = add nuw i64 %314, 32
  %322 = icmp eq i64 %321, %312
  br i1 %322, label %323, label %313, !llvm.loop !39

323:                                              ; preds = %313
  %324 = icmp eq i64 %303, %312
  br i1 %324, label %398, label %325

325:                                              ; preds = %323
  %326 = getelementptr i8, ptr %297, i64 %312
  %327 = getelementptr i8, ptr %298, i64 %312
  %328 = and i64 %303, 24
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %344, label %330

330:                                              ; preds = %309, %325
  %331 = phi i64 [ %312, %325 ], [ 0, %309 ]
  %332 = and i64 %303, -8
  %333 = getelementptr i8, ptr %298, i64 %332
  %334 = getelementptr i8, ptr %297, i64 %332
  br label %335

335:                                              ; preds = %335, %330
  %336 = phi i64 [ %331, %330 ], [ %340, %335 ]
  %337 = getelementptr i8, ptr %298, i64 %336
  %338 = getelementptr i8, ptr %297, i64 %336
  %339 = load <8 x i8>, ptr %338, align 1, !tbaa !35
  store <8 x i8> %339, ptr %337, align 1, !tbaa !35
  %340 = add nuw i64 %336, 8
  %341 = icmp eq i64 %340, %332
  br i1 %341, label %342, label %335, !llvm.loop !42

342:                                              ; preds = %335
  %343 = icmp eq i64 %303, %332
  br i1 %343, label %398, label %344

344:                                              ; preds = %300, %325, %342
  %345 = phi ptr [ %298, %300 ], [ %327, %325 ], [ %333, %342 ]
  %346 = phi ptr [ %297, %300 ], [ %326, %325 ], [ %334, %342 ]
  %347 = ptrtoint ptr %346 to i64
  %348 = sub i64 %177, %347
  %349 = add i64 %348, 1
  %350 = sub i64 %177, %347
  %351 = and i64 %349, 7
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %362, label %353

353:                                              ; preds = %344, %353
  %354 = phi ptr [ %359, %353 ], [ %345, %344 ]
  %355 = phi ptr [ %357, %353 ], [ %346, %344 ]
  %356 = phi i64 [ %360, %353 ], [ 0, %344 ]
  %357 = getelementptr inbounds i8, ptr %355, i64 1
  %358 = load i8, ptr %355, align 1, !tbaa !35
  %359 = getelementptr inbounds i8, ptr %354, i64 1
  store i8 %358, ptr %354, align 1, !tbaa !35
  %360 = add i64 %356, 1
  %361 = icmp eq i64 %360, %351
  br i1 %361, label %362, label %353, !llvm.loop !43

362:                                              ; preds = %353, %344
  %363 = phi ptr [ %345, %344 ], [ %359, %353 ]
  %364 = phi ptr [ %346, %344 ], [ %357, %353 ]
  %365 = icmp ult i64 %350, 7
  br i1 %365, label %398, label %366

366:                                              ; preds = %362, %366
  %367 = phi ptr [ %392, %366 ], [ %363, %362 ]
  %368 = phi ptr [ %390, %366 ], [ %364, %362 ]
  %369 = getelementptr inbounds i8, ptr %368, i64 1
  %370 = load i8, ptr %368, align 1, !tbaa !35
  %371 = getelementptr inbounds i8, ptr %367, i64 1
  store i8 %370, ptr %367, align 1, !tbaa !35
  %372 = getelementptr inbounds i8, ptr %368, i64 2
  %373 = load i8, ptr %369, align 1, !tbaa !35
  %374 = getelementptr inbounds i8, ptr %367, i64 2
  store i8 %373, ptr %371, align 1, !tbaa !35
  %375 = getelementptr inbounds i8, ptr %368, i64 3
  %376 = load i8, ptr %372, align 1, !tbaa !35
  %377 = getelementptr inbounds i8, ptr %367, i64 3
  store i8 %376, ptr %374, align 1, !tbaa !35
  %378 = getelementptr inbounds i8, ptr %368, i64 4
  %379 = load i8, ptr %375, align 1, !tbaa !35
  %380 = getelementptr inbounds i8, ptr %367, i64 4
  store i8 %379, ptr %377, align 1, !tbaa !35
  %381 = getelementptr inbounds i8, ptr %368, i64 5
  %382 = load i8, ptr %378, align 1, !tbaa !35
  %383 = getelementptr inbounds i8, ptr %367, i64 5
  store i8 %382, ptr %380, align 1, !tbaa !35
  %384 = getelementptr inbounds i8, ptr %368, i64 6
  %385 = load i8, ptr %381, align 1, !tbaa !35
  %386 = getelementptr inbounds i8, ptr %367, i64 6
  store i8 %385, ptr %383, align 1, !tbaa !35
  %387 = getelementptr inbounds i8, ptr %368, i64 7
  %388 = load i8, ptr %384, align 1, !tbaa !35
  %389 = getelementptr inbounds i8, ptr %367, i64 7
  store i8 %388, ptr %386, align 1, !tbaa !35
  %390 = getelementptr inbounds i8, ptr %368, i64 8
  %391 = load i8, ptr %387, align 1, !tbaa !35
  %392 = getelementptr inbounds i8, ptr %367, i64 8
  store i8 %391, ptr %389, align 1, !tbaa !35
  %393 = icmp eq ptr %390, %304
  br i1 %393, label %398, label %366, !llvm.loop !45

394:                                              ; preds = %256, %253
  %395 = load ptr, ptr %74, align 8, !tbaa !36
  %396 = getelementptr inbounds i8, ptr %395, i64 %249
  store ptr %396, ptr %74, align 8, !tbaa !36
  %397 = load ptr, ptr %77, align 8, !tbaa !46
  br label %410

398:                                              ; preds = %266, %362, %366, %323, %342, %296
  %399 = load ptr, ptr %74, align 8, !tbaa !36
  %400 = getelementptr inbounds i8, ptr %399, i64 %249
  store ptr %400, ptr %74, align 8, !tbaa !36
  %401 = icmp ugt i64 %249, 65535
  %402 = load ptr, ptr %77, align 8, !tbaa !46
  br i1 %401, label %403, label %410, !prof !47

403:                                              ; preds = %398
  store i32 1, ptr %76, align 8, !tbaa !48
  %404 = load ptr, ptr %1, align 8, !tbaa !49
  %405 = ptrtoint ptr %402 to i64
  %406 = ptrtoint ptr %404 to i64
  %407 = sub i64 %405, %406
  %408 = lshr exact i64 %407, 3
  %409 = trunc i64 %408 to i32
  store i32 %409, ptr %78, align 4, !tbaa !50
  br label %410

410:                                              ; preds = %403, %398, %394
  %411 = phi ptr [ %397, %394 ], [ %402, %403 ], [ %402, %398 ]
  %412 = trunc i64 %249 to i16
  %413 = getelementptr inbounds %struct.SeqDef_s, ptr %411, i64 0, i32 1
  store i16 %412, ptr %413, align 4, !tbaa !51
  store i32 1, ptr %411, align 4, !tbaa !53
  %414 = add i64 %245, 1
  %415 = icmp ugt i64 %414, 65535
  br i1 %415, label %914, label %928, !prof !54

416:                                              ; preds = %151
  %417 = load i64, ptr %157, align 1
  %418 = mul i64 %417, -3523014627327384477
  %419 = lshr i64 %418, %68
  %420 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %153, i32 %39, ptr nonnull %9, ptr %154) #11, !srcloc !30
  %421 = load i64, ptr %420, align 1, !tbaa !21
  %422 = load i64, ptr %156, align 1
  %423 = icmp eq i64 %421, %422
  %424 = icmp eq ptr %420, %154
  %425 = select i1 %423, i1 %424, i1 false
  %426 = trunc i64 %417 to i32
  br i1 %425, label %427, label %523

427:                                              ; preds = %416, %98
  %428 = phi i64 [ %119, %98 ], [ %419, %416 ]
  %429 = phi ptr [ %102, %98 ], [ %154, %416 ]
  %430 = phi ptr [ %104, %98 ], [ %156, %416 ]
  %431 = phi ptr [ %105, %98 ], [ %157, %416 ]
  %432 = phi i64 [ %106, %98 ], [ %158, %416 ]
  %433 = phi i64 [ %113, %98 ], [ %165, %416 ]
  %434 = phi i32 [ %115, %98 ], [ %167, %416 ]
  %435 = getelementptr inbounds i8, ptr %430, i64 8
  %436 = getelementptr inbounds i8, ptr %429, i64 8
  %437 = icmp ugt ptr %70, %435
  br i1 %437, label %438, label %464

438:                                              ; preds = %427
  %439 = load i64, ptr %436, align 1, !tbaa !21
  %440 = load i64, ptr %435, align 1, !tbaa !21
  %441 = xor i64 %440, %439
  %442 = icmp eq i64 %441, 0
  br i1 %442, label %446, label %443

443:                                              ; preds = %438
  %444 = call i64 @llvm.cttz.i64(i64 %441, i1 true), !range !32
  %445 = lshr i64 %444, 3
  br label %501

446:                                              ; preds = %438, %452
  %447 = phi ptr [ %450, %452 ], [ %436, %438 ]
  %448 = phi ptr [ %449, %452 ], [ %435, %438 ]
  %449 = getelementptr inbounds i8, ptr %448, i64 8
  %450 = getelementptr inbounds i8, ptr %447, i64 8
  %451 = icmp ult ptr %449, %70
  br i1 %451, label %452, label %464

452:                                              ; preds = %446
  %453 = load i64, ptr %450, align 1, !tbaa !21
  %454 = load i64, ptr %449, align 1, !tbaa !21
  %455 = xor i64 %454, %453
  %456 = icmp eq i64 %455, 0
  br i1 %456, label %446, label %457

457:                                              ; preds = %452
  %458 = call i64 @llvm.cttz.i64(i64 %455, i1 true), !range !32
  %459 = lshr i64 %458, 3
  %460 = getelementptr inbounds i8, ptr %449, i64 %459
  %461 = ptrtoint ptr %460 to i64
  %462 = ptrtoint ptr %435 to i64
  %463 = sub i64 %461, %462
  br label %501

464:                                              ; preds = %446, %427
  %465 = phi ptr [ %436, %427 ], [ %450, %446 ]
  %466 = phi ptr [ %435, %427 ], [ %449, %446 ]
  %467 = icmp ult ptr %466, %71
  br i1 %467, label %468, label %475

468:                                              ; preds = %464
  %469 = load i32, ptr %465, align 1, !tbaa !22
  %470 = load i32, ptr %466, align 1, !tbaa !22
  %471 = icmp eq i32 %469, %470
  br i1 %471, label %472, label %475

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %466, i64 4
  %474 = getelementptr inbounds i8, ptr %465, i64 4
  br label %475

475:                                              ; preds = %472, %468, %464
  %476 = phi ptr [ %474, %472 ], [ %465, %468 ], [ %465, %464 ]
  %477 = phi ptr [ %473, %472 ], [ %466, %468 ], [ %466, %464 ]
  %478 = icmp ult ptr %477, %72
  br i1 %478, label %479, label %486

479:                                              ; preds = %475
  %480 = load i16, ptr %476, align 1, !tbaa !33
  %481 = load i16, ptr %477, align 1, !tbaa !33
  %482 = icmp eq i16 %480, %481
  br i1 %482, label %483, label %486

483:                                              ; preds = %479
  %484 = getelementptr inbounds i8, ptr %477, i64 2
  %485 = getelementptr inbounds i8, ptr %476, i64 2
  br label %486

486:                                              ; preds = %483, %479, %475
  %487 = phi ptr [ %485, %483 ], [ %476, %479 ], [ %476, %475 ]
  %488 = phi ptr [ %484, %483 ], [ %477, %479 ], [ %477, %475 ]
  %489 = icmp ult ptr %488, %42
  br i1 %489, label %490, label %496

490:                                              ; preds = %486
  %491 = load i8, ptr %487, align 1, !tbaa !35
  %492 = load i8, ptr %488, align 1, !tbaa !35
  %493 = icmp eq i8 %491, %492
  %494 = zext i1 %493 to i64
  %495 = getelementptr inbounds i8, ptr %488, i64 %494
  br label %496

496:                                              ; preds = %490, %486
  %497 = phi ptr [ %488, %486 ], [ %495, %490 ]
  %498 = ptrtoint ptr %497 to i64
  %499 = ptrtoint ptr %435 to i64
  %500 = sub i64 %498, %499
  br label %501

501:                                              ; preds = %496, %457, %443
  %502 = phi i64 [ %500, %496 ], [ %445, %443 ], [ %463, %457 ]
  %503 = add i64 %502, 8
  %504 = ptrtoint ptr %429 to i64
  %505 = sub i64 %433, %504
  %506 = icmp ugt ptr %430, %81
  %507 = icmp ugt ptr %429, %41
  %508 = and i1 %507, %506
  br i1 %508, label %509, label %729

509:                                              ; preds = %501, %518
  %510 = phi i64 [ %519, %518 ], [ %503, %501 ]
  %511 = phi ptr [ %513, %518 ], [ %430, %501 ]
  %512 = phi ptr [ %515, %518 ], [ %429, %501 ]
  %513 = getelementptr inbounds i8, ptr %511, i64 -1
  %514 = load i8, ptr %513, align 1, !tbaa !35
  %515 = getelementptr inbounds i8, ptr %512, i64 -1
  %516 = load i8, ptr %515, align 1, !tbaa !35
  %517 = icmp eq i8 %514, %516
  br i1 %517, label %518, label %729

518:                                              ; preds = %509
  %519 = add i64 %510, 1
  %520 = icmp ugt ptr %513, %81
  %521 = icmp ugt ptr %515, %41
  %522 = and i1 %520, %521
  br i1 %522, label %509, label %729, !llvm.loop !55

523:                                              ; preds = %416
  %524 = trunc i64 %422 to i32
  %525 = getelementptr inbounds i32, ptr %14, i64 %419
  %526 = load i32, ptr %525, align 4, !tbaa !22
  %527 = zext i32 %526 to i64
  %528 = getelementptr inbounds i8, ptr %22, i64 %527
  %529 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %164, i32 %39, ptr nonnull %9, ptr %169) #11, !srcloc !30
  %530 = load i32, ptr %529, align 1, !tbaa !22
  %531 = icmp eq i32 %530, %524
  %532 = icmp eq ptr %529, %169
  %533 = select i1 %531, i1 %532, i1 false
  br i1 %533, label %546, label %534

534:                                              ; preds = %523
  %535 = icmp ult ptr %157, %159
  br i1 %535, label %541, label %536

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %157, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %537, i32 0, i32 3, i32 1)
  %538 = getelementptr inbounds i8, ptr %157, i64 128
  call void @llvm.prefetch.p0(ptr nonnull %538, i32 0, i32 3, i32 1)
  %539 = add i64 %158, 1
  %540 = getelementptr inbounds i8, ptr %159, i64 256
  br label %541

541:                                              ; preds = %536, %534
  %542 = phi i64 [ %539, %536 ], [ %158, %534 ]
  %543 = phi ptr [ %540, %536 ], [ %159, %534 ]
  %544 = getelementptr inbounds i8, ptr %157, i64 %542
  %545 = icmp ugt ptr %544, %43
  br i1 %545, label %1094, label %151, !llvm.loop !31

546:                                              ; preds = %523, %126
  %547 = phi i64 [ %117, %126 ], [ %417, %523 ]
  %548 = phi i32 [ %130, %126 ], [ %526, %523 ]
  %549 = phi ptr [ %132, %126 ], [ %528, %523 ]
  %550 = phi i64 [ %119, %126 ], [ %419, %523 ]
  %551 = phi ptr [ %104, %126 ], [ %156, %523 ]
  %552 = phi ptr [ %105, %126 ], [ %157, %523 ]
  %553 = phi i64 [ %106, %126 ], [ %158, %523 ]
  %554 = phi i32 [ %115, %126 ], [ %167, %523 ]
  %555 = phi ptr [ %128, %126 ], [ %169, %523 ]
  %556 = getelementptr inbounds i8, ptr %551, i64 4
  %557 = getelementptr inbounds i8, ptr %555, i64 4
  %558 = icmp ugt ptr %70, %556
  br i1 %558, label %559, label %585

559:                                              ; preds = %546
  %560 = load i64, ptr %557, align 1, !tbaa !21
  %561 = load i64, ptr %556, align 1, !tbaa !21
  %562 = xor i64 %561, %560
  %563 = icmp eq i64 %562, 0
  br i1 %563, label %567, label %564

564:                                              ; preds = %559
  %565 = call i64 @llvm.cttz.i64(i64 %562, i1 true), !range !32
  %566 = lshr i64 %565, 3
  br label %622

567:                                              ; preds = %559, %573
  %568 = phi ptr [ %571, %573 ], [ %557, %559 ]
  %569 = phi ptr [ %570, %573 ], [ %556, %559 ]
  %570 = getelementptr inbounds i8, ptr %569, i64 8
  %571 = getelementptr inbounds i8, ptr %568, i64 8
  %572 = icmp ult ptr %570, %70
  br i1 %572, label %573, label %585

573:                                              ; preds = %567
  %574 = load i64, ptr %571, align 1, !tbaa !21
  %575 = load i64, ptr %570, align 1, !tbaa !21
  %576 = xor i64 %575, %574
  %577 = icmp eq i64 %576, 0
  br i1 %577, label %567, label %578

578:                                              ; preds = %573
  %579 = call i64 @llvm.cttz.i64(i64 %576, i1 true), !range !32
  %580 = lshr i64 %579, 3
  %581 = getelementptr inbounds i8, ptr %570, i64 %580
  %582 = ptrtoint ptr %581 to i64
  %583 = ptrtoint ptr %556 to i64
  %584 = sub i64 %582, %583
  br label %622

585:                                              ; preds = %567, %546
  %586 = phi ptr [ %557, %546 ], [ %571, %567 ]
  %587 = phi ptr [ %556, %546 ], [ %570, %567 ]
  %588 = icmp ult ptr %587, %71
  br i1 %588, label %589, label %596

589:                                              ; preds = %585
  %590 = load i32, ptr %586, align 1, !tbaa !22
  %591 = load i32, ptr %587, align 1, !tbaa !22
  %592 = icmp eq i32 %590, %591
  br i1 %592, label %593, label %596

593:                                              ; preds = %589
  %594 = getelementptr inbounds i8, ptr %587, i64 4
  %595 = getelementptr inbounds i8, ptr %586, i64 4
  br label %596

596:                                              ; preds = %593, %589, %585
  %597 = phi ptr [ %595, %593 ], [ %586, %589 ], [ %586, %585 ]
  %598 = phi ptr [ %594, %593 ], [ %587, %589 ], [ %587, %585 ]
  %599 = icmp ult ptr %598, %72
  br i1 %599, label %600, label %607

600:                                              ; preds = %596
  %601 = load i16, ptr %597, align 1, !tbaa !33
  %602 = load i16, ptr %598, align 1, !tbaa !33
  %603 = icmp eq i16 %601, %602
  br i1 %603, label %604, label %607

604:                                              ; preds = %600
  %605 = getelementptr inbounds i8, ptr %598, i64 2
  %606 = getelementptr inbounds i8, ptr %597, i64 2
  br label %607

607:                                              ; preds = %604, %600, %596
  %608 = phi ptr [ %606, %604 ], [ %597, %600 ], [ %597, %596 ]
  %609 = phi ptr [ %605, %604 ], [ %598, %600 ], [ %598, %596 ]
  %610 = icmp ult ptr %609, %42
  br i1 %610, label %611, label %617

611:                                              ; preds = %607
  %612 = load i8, ptr %608, align 1, !tbaa !35
  %613 = load i8, ptr %609, align 1, !tbaa !35
  %614 = icmp eq i8 %612, %613
  %615 = zext i1 %614 to i64
  %616 = getelementptr inbounds i8, ptr %609, i64 %615
  br label %617

617:                                              ; preds = %611, %607
  %618 = phi ptr [ %609, %607 ], [ %616, %611 ]
  %619 = ptrtoint ptr %618 to i64
  %620 = ptrtoint ptr %556 to i64
  %621 = sub i64 %619, %620
  br label %622

622:                                              ; preds = %617, %578, %564
  %623 = phi i64 [ %621, %617 ], [ %566, %564 ], [ %584, %578 ]
  %624 = add i64 %623, 4
  %625 = ptrtoint ptr %551 to i64
  %626 = ptrtoint ptr %555 to i64
  %627 = sub i64 %625, %626
  %628 = icmp ugt i32 %548, %39
  br i1 %628, label %629, label %707

629:                                              ; preds = %622
  %630 = load i64, ptr %549, align 1, !tbaa !21
  %631 = icmp eq i64 %630, %547
  br i1 %631, label %632, label %707

632:                                              ; preds = %629
  %633 = getelementptr inbounds i8, ptr %552, i64 8
  %634 = getelementptr inbounds i8, ptr %549, i64 8
  %635 = icmp ugt ptr %70, %633
  br i1 %635, label %636, label %662

636:                                              ; preds = %632
  %637 = load i64, ptr %634, align 1, !tbaa !21
  %638 = load i64, ptr %633, align 1, !tbaa !21
  %639 = xor i64 %638, %637
  %640 = icmp eq i64 %639, 0
  br i1 %640, label %644, label %641

641:                                              ; preds = %636
  %642 = call i64 @llvm.cttz.i64(i64 %639, i1 true), !range !32
  %643 = lshr i64 %642, 3
  br label %699

644:                                              ; preds = %636, %650
  %645 = phi ptr [ %648, %650 ], [ %634, %636 ]
  %646 = phi ptr [ %647, %650 ], [ %633, %636 ]
  %647 = getelementptr inbounds i8, ptr %646, i64 8
  %648 = getelementptr inbounds i8, ptr %645, i64 8
  %649 = icmp ult ptr %647, %70
  br i1 %649, label %650, label %662

650:                                              ; preds = %644
  %651 = load i64, ptr %648, align 1, !tbaa !21
  %652 = load i64, ptr %647, align 1, !tbaa !21
  %653 = xor i64 %652, %651
  %654 = icmp eq i64 %653, 0
  br i1 %654, label %644, label %655

655:                                              ; preds = %650
  %656 = call i64 @llvm.cttz.i64(i64 %653, i1 true), !range !32
  %657 = lshr i64 %656, 3
  %658 = getelementptr inbounds i8, ptr %647, i64 %657
  %659 = ptrtoint ptr %658 to i64
  %660 = ptrtoint ptr %633 to i64
  %661 = sub i64 %659, %660
  br label %699

662:                                              ; preds = %644, %632
  %663 = phi ptr [ %634, %632 ], [ %648, %644 ]
  %664 = phi ptr [ %633, %632 ], [ %647, %644 ]
  %665 = icmp ult ptr %664, %71
  br i1 %665, label %666, label %673

666:                                              ; preds = %662
  %667 = load i32, ptr %663, align 1, !tbaa !22
  %668 = load i32, ptr %664, align 1, !tbaa !22
  %669 = icmp eq i32 %667, %668
  br i1 %669, label %670, label %673

670:                                              ; preds = %666
  %671 = getelementptr inbounds i8, ptr %664, i64 4
  %672 = getelementptr inbounds i8, ptr %663, i64 4
  br label %673

673:                                              ; preds = %670, %666, %662
  %674 = phi ptr [ %672, %670 ], [ %663, %666 ], [ %663, %662 ]
  %675 = phi ptr [ %671, %670 ], [ %664, %666 ], [ %664, %662 ]
  %676 = icmp ult ptr %675, %72
  br i1 %676, label %677, label %684

677:                                              ; preds = %673
  %678 = load i16, ptr %674, align 1, !tbaa !33
  %679 = load i16, ptr %675, align 1, !tbaa !33
  %680 = icmp eq i16 %678, %679
  br i1 %680, label %681, label %684

681:                                              ; preds = %677
  %682 = getelementptr inbounds i8, ptr %675, i64 2
  %683 = getelementptr inbounds i8, ptr %674, i64 2
  br label %684

684:                                              ; preds = %681, %677, %673
  %685 = phi ptr [ %683, %681 ], [ %674, %677 ], [ %674, %673 ]
  %686 = phi ptr [ %682, %681 ], [ %675, %677 ], [ %675, %673 ]
  %687 = icmp ult ptr %686, %42
  br i1 %687, label %688, label %694

688:                                              ; preds = %684
  %689 = load i8, ptr %685, align 1, !tbaa !35
  %690 = load i8, ptr %686, align 1, !tbaa !35
  %691 = icmp eq i8 %689, %690
  %692 = zext i1 %691 to i64
  %693 = getelementptr inbounds i8, ptr %686, i64 %692
  br label %694

694:                                              ; preds = %688, %684
  %695 = phi ptr [ %686, %684 ], [ %693, %688 ]
  %696 = ptrtoint ptr %695 to i64
  %697 = ptrtoint ptr %633 to i64
  %698 = sub i64 %696, %697
  br label %699

699:                                              ; preds = %694, %655, %641
  %700 = phi i64 [ %698, %694 ], [ %643, %641 ], [ %661, %655 ]
  %701 = add i64 %700, 8
  %702 = icmp ugt i64 %701, %624
  br i1 %702, label %703, label %707

703:                                              ; preds = %699
  %704 = ptrtoint ptr %552 to i64
  %705 = ptrtoint ptr %549 to i64
  %706 = sub i64 %704, %705
  br label %707

707:                                              ; preds = %703, %699, %629, %622
  %708 = phi ptr [ %555, %629 ], [ %555, %622 ], [ %549, %703 ], [ %555, %699 ]
  %709 = phi ptr [ %551, %629 ], [ %551, %622 ], [ %552, %703 ], [ %551, %699 ]
  %710 = phi i64 [ %627, %629 ], [ %627, %622 ], [ %706, %703 ], [ %627, %699 ]
  %711 = phi i64 [ %624, %629 ], [ %624, %622 ], [ %701, %703 ], [ %624, %699 ]
  %712 = icmp ugt ptr %709, %81
  %713 = icmp ugt ptr %708, %41
  %714 = and i1 %713, %712
  br i1 %714, label %715, label %729

715:                                              ; preds = %707, %724
  %716 = phi i64 [ %725, %724 ], [ %711, %707 ]
  %717 = phi ptr [ %719, %724 ], [ %709, %707 ]
  %718 = phi ptr [ %721, %724 ], [ %708, %707 ]
  %719 = getelementptr inbounds i8, ptr %717, i64 -1
  %720 = load i8, ptr %719, align 1, !tbaa !35
  %721 = getelementptr inbounds i8, ptr %718, i64 -1
  %722 = load i8, ptr %721, align 1, !tbaa !35
  %723 = icmp eq i8 %720, %722
  br i1 %723, label %724, label %729

724:                                              ; preds = %715
  %725 = add i64 %716, 1
  %726 = icmp ugt ptr %719, %81
  %727 = icmp ugt ptr %721, %41
  %728 = and i1 %726, %727
  br i1 %728, label %715, label %729, !llvm.loop !56

729:                                              ; preds = %724, %715, %518, %509, %707, %501
  %730 = phi i64 [ %428, %501 ], [ %550, %707 ], [ %428, %509 ], [ %428, %518 ], [ %550, %715 ], [ %550, %724 ]
  %731 = phi ptr [ %431, %501 ], [ %552, %707 ], [ %431, %509 ], [ %431, %518 ], [ %552, %715 ], [ %552, %724 ]
  %732 = phi i64 [ %432, %501 ], [ %553, %707 ], [ %432, %509 ], [ %432, %518 ], [ %553, %715 ], [ %553, %724 ]
  %733 = phi i32 [ %434, %501 ], [ %554, %707 ], [ %434, %509 ], [ %434, %518 ], [ %554, %715 ], [ %554, %724 ]
  %734 = phi ptr [ %430, %501 ], [ %709, %707 ], [ %513, %518 ], [ %511, %509 ], [ %719, %724 ], [ %717, %715 ]
  %735 = phi i64 [ %505, %501 ], [ %710, %707 ], [ %505, %509 ], [ %505, %518 ], [ %710, %715 ], [ %710, %724 ]
  %736 = phi i64 [ %503, %501 ], [ %711, %707 ], [ %519, %518 ], [ %510, %509 ], [ %725, %724 ], [ %716, %715 ]
  %737 = trunc i64 %735 to i32
  %738 = icmp ult i64 %732, 4
  br i1 %738, label %739, label %744

739:                                              ; preds = %729
  %740 = ptrtoint ptr %731 to i64
  %741 = sub i64 %740, %24
  %742 = trunc i64 %741 to i32
  %743 = getelementptr inbounds i32, ptr %14, i64 %730
  store i32 %742, ptr %743, align 4, !tbaa !22
  br label %744

744:                                              ; preds = %739, %729
  %745 = ptrtoint ptr %734 to i64
  %746 = ptrtoint ptr %81 to i64
  %747 = sub i64 %745, %746
  %748 = add i32 %737, 3
  %749 = getelementptr inbounds i8, ptr %81, i64 %747
  %750 = icmp ugt ptr %749, %73
  %751 = load ptr, ptr %74, align 8, !tbaa !36
  br i1 %750, label %775, label %752

752:                                              ; preds = %744
  %753 = load <2 x i64>, ptr %81, align 1, !tbaa !35
  store <2 x i64> %753, ptr %751, align 1, !tbaa !35
  %754 = icmp ugt i64 %747, 16
  br i1 %754, label %755, label %892

755:                                              ; preds = %752
  %756 = load ptr, ptr %74, align 8, !tbaa !36
  %757 = getelementptr inbounds i8, ptr %756, i64 16
  %758 = getelementptr inbounds i8, ptr %81, i64 16
  %759 = add i64 %747, -16
  %760 = getelementptr inbounds i8, ptr %756, i64 %747
  %761 = load <2 x i64>, ptr %758, align 1, !tbaa !35
  store <2 x i64> %761, ptr %757, align 1, !tbaa !35
  %762 = icmp ult i64 %759, 17
  br i1 %762, label %892, label %763

763:                                              ; preds = %755
  %764 = getelementptr inbounds i8, ptr %756, i64 32
  br label %765

765:                                              ; preds = %765, %763
  %766 = phi ptr [ %764, %763 ], [ %773, %765 ]
  %767 = phi ptr [ %758, %763 ], [ %771, %765 ]
  %768 = getelementptr inbounds i8, ptr %767, i64 16
  %769 = load <2 x i64>, ptr %768, align 1, !tbaa !35
  store <2 x i64> %769, ptr %766, align 1, !tbaa !35
  %770 = getelementptr inbounds i8, ptr %766, i64 16
  %771 = getelementptr inbounds i8, ptr %767, i64 32
  %772 = load <2 x i64>, ptr %771, align 1, !tbaa !35
  store <2 x i64> %772, ptr %770, align 1, !tbaa !35
  %773 = getelementptr inbounds i8, ptr %766, i64 32
  %774 = icmp ult ptr %773, %760
  br i1 %774, label %765, label %896, !llvm.loop !38

775:                                              ; preds = %744
  %776 = ptrtoint ptr %749 to i64
  %777 = icmp ugt ptr %81, %73
  br i1 %777, label %795, label %778

778:                                              ; preds = %775
  %779 = sub i64 %75, %746
  %780 = getelementptr inbounds i8, ptr %751, i64 %779
  %781 = load <2 x i64>, ptr %81, align 1, !tbaa !35
  store <2 x i64> %781, ptr %751, align 1, !tbaa !35
  %782 = icmp ult i64 %779, 17
  br i1 %782, label %795, label %783

783:                                              ; preds = %778
  %784 = getelementptr inbounds i8, ptr %751, i64 16
  br label %785

785:                                              ; preds = %785, %783
  %786 = phi ptr [ %784, %783 ], [ %793, %785 ]
  %787 = phi ptr [ %81, %783 ], [ %791, %785 ]
  %788 = getelementptr inbounds i8, ptr %787, i64 16
  %789 = load <2 x i64>, ptr %788, align 1, !tbaa !35
  store <2 x i64> %789, ptr %786, align 1, !tbaa !35
  %790 = getelementptr inbounds i8, ptr %786, i64 16
  %791 = getelementptr inbounds i8, ptr %787, i64 32
  %792 = load <2 x i64>, ptr %791, align 1, !tbaa !35
  store <2 x i64> %792, ptr %790, align 1, !tbaa !35
  %793 = getelementptr inbounds i8, ptr %786, i64 32
  %794 = icmp ult ptr %793, %780
  br i1 %794, label %785, label %795, !llvm.loop !38

795:                                              ; preds = %785, %778, %775
  %796 = phi ptr [ %73, %778 ], [ %81, %775 ], [ %73, %785 ]
  %797 = phi ptr [ %780, %778 ], [ %751, %775 ], [ %780, %785 ]
  %798 = icmp ult ptr %796, %749
  br i1 %798, label %799, label %896

799:                                              ; preds = %795
  %800 = ptrtoint ptr %797 to i64
  %801 = ptrtoint ptr %796 to i64
  %802 = sub i64 %776, %801
  %803 = getelementptr i8, ptr %796, i64 %802
  %804 = icmp ult i64 %802, 8
  %805 = sub i64 %800, %801
  %806 = icmp ult i64 %805, 32
  %807 = select i1 %804, i1 true, i1 %806
  br i1 %807, label %843, label %808

808:                                              ; preds = %799
  %809 = icmp ult i64 %802, 32
  br i1 %809, label %829, label %810

810:                                              ; preds = %808
  %811 = and i64 %802, -32
  br label %812

812:                                              ; preds = %812, %810
  %813 = phi i64 [ 0, %810 ], [ %820, %812 ]
  %814 = getelementptr i8, ptr %797, i64 %813
  %815 = getelementptr i8, ptr %796, i64 %813
  %816 = getelementptr i8, ptr %815, i64 16
  %817 = load <16 x i8>, ptr %815, align 1, !tbaa !35
  %818 = load <16 x i8>, ptr %816, align 1, !tbaa !35
  %819 = getelementptr i8, ptr %814, i64 16
  store <16 x i8> %817, ptr %814, align 1, !tbaa !35
  store <16 x i8> %818, ptr %819, align 1, !tbaa !35
  %820 = add nuw i64 %813, 32
  %821 = icmp eq i64 %820, %811
  br i1 %821, label %822, label %812, !llvm.loop !57

822:                                              ; preds = %812
  %823 = icmp eq i64 %802, %811
  br i1 %823, label %896, label %824

824:                                              ; preds = %822
  %825 = getelementptr i8, ptr %796, i64 %811
  %826 = getelementptr i8, ptr %797, i64 %811
  %827 = and i64 %802, 24
  %828 = icmp eq i64 %827, 0
  br i1 %828, label %843, label %829

829:                                              ; preds = %808, %824
  %830 = phi i64 [ %811, %824 ], [ 0, %808 ]
  %831 = and i64 %802, -8
  %832 = getelementptr i8, ptr %797, i64 %831
  %833 = getelementptr i8, ptr %796, i64 %831
  br label %834

834:                                              ; preds = %834, %829
  %835 = phi i64 [ %830, %829 ], [ %839, %834 ]
  %836 = getelementptr i8, ptr %797, i64 %835
  %837 = getelementptr i8, ptr %796, i64 %835
  %838 = load <8 x i8>, ptr %837, align 1, !tbaa !35
  store <8 x i8> %838, ptr %836, align 1, !tbaa !35
  %839 = add nuw i64 %835, 8
  %840 = icmp eq i64 %839, %831
  br i1 %840, label %841, label %834, !llvm.loop !58

841:                                              ; preds = %834
  %842 = icmp eq i64 %802, %831
  br i1 %842, label %896, label %843

843:                                              ; preds = %799, %824, %841
  %844 = phi ptr [ %797, %799 ], [ %826, %824 ], [ %832, %841 ]
  %845 = phi ptr [ %796, %799 ], [ %825, %824 ], [ %833, %841 ]
  %846 = ptrtoint ptr %845 to i64
  %847 = sub i64 %745, %846
  %848 = and i64 %847, 7
  %849 = icmp eq i64 %848, 0
  br i1 %849, label %859, label %850

850:                                              ; preds = %843, %850
  %851 = phi ptr [ %856, %850 ], [ %844, %843 ]
  %852 = phi ptr [ %854, %850 ], [ %845, %843 ]
  %853 = phi i64 [ %857, %850 ], [ 0, %843 ]
  %854 = getelementptr inbounds i8, ptr %852, i64 1
  %855 = load i8, ptr %852, align 1, !tbaa !35
  %856 = getelementptr inbounds i8, ptr %851, i64 1
  store i8 %855, ptr %851, align 1, !tbaa !35
  %857 = add i64 %853, 1
  %858 = icmp eq i64 %857, %848
  br i1 %858, label %859, label %850, !llvm.loop !59

859:                                              ; preds = %850, %843
  %860 = phi ptr [ %844, %843 ], [ %856, %850 ]
  %861 = phi ptr [ %845, %843 ], [ %854, %850 ]
  %862 = sub i64 %846, %745
  %863 = icmp ugt i64 %862, -8
  br i1 %863, label %896, label %864

864:                                              ; preds = %859, %864
  %865 = phi ptr [ %890, %864 ], [ %860, %859 ]
  %866 = phi ptr [ %888, %864 ], [ %861, %859 ]
  %867 = getelementptr inbounds i8, ptr %866, i64 1
  %868 = load i8, ptr %866, align 1, !tbaa !35
  %869 = getelementptr inbounds i8, ptr %865, i64 1
  store i8 %868, ptr %865, align 1, !tbaa !35
  %870 = getelementptr inbounds i8, ptr %866, i64 2
  %871 = load i8, ptr %867, align 1, !tbaa !35
  %872 = getelementptr inbounds i8, ptr %865, i64 2
  store i8 %871, ptr %869, align 1, !tbaa !35
  %873 = getelementptr inbounds i8, ptr %866, i64 3
  %874 = load i8, ptr %870, align 1, !tbaa !35
  %875 = getelementptr inbounds i8, ptr %865, i64 3
  store i8 %874, ptr %872, align 1, !tbaa !35
  %876 = getelementptr inbounds i8, ptr %866, i64 4
  %877 = load i8, ptr %873, align 1, !tbaa !35
  %878 = getelementptr inbounds i8, ptr %865, i64 4
  store i8 %877, ptr %875, align 1, !tbaa !35
  %879 = getelementptr inbounds i8, ptr %866, i64 5
  %880 = load i8, ptr %876, align 1, !tbaa !35
  %881 = getelementptr inbounds i8, ptr %865, i64 5
  store i8 %880, ptr %878, align 1, !tbaa !35
  %882 = getelementptr inbounds i8, ptr %866, i64 6
  %883 = load i8, ptr %879, align 1, !tbaa !35
  %884 = getelementptr inbounds i8, ptr %865, i64 6
  store i8 %883, ptr %881, align 1, !tbaa !35
  %885 = getelementptr inbounds i8, ptr %866, i64 7
  %886 = load i8, ptr %882, align 1, !tbaa !35
  %887 = getelementptr inbounds i8, ptr %865, i64 7
  store i8 %886, ptr %884, align 1, !tbaa !35
  %888 = getelementptr inbounds i8, ptr %866, i64 8
  %889 = load i8, ptr %885, align 1, !tbaa !35
  %890 = getelementptr inbounds i8, ptr %865, i64 8
  store i8 %889, ptr %887, align 1, !tbaa !35
  %891 = icmp eq ptr %888, %803
  br i1 %891, label %896, label %864, !llvm.loop !60

892:                                              ; preds = %755, %752
  %893 = load ptr, ptr %74, align 8, !tbaa !36
  %894 = getelementptr inbounds i8, ptr %893, i64 %747
  store ptr %894, ptr %74, align 8, !tbaa !36
  %895 = load ptr, ptr %77, align 8, !tbaa !46
  br label %908

896:                                              ; preds = %765, %859, %864, %822, %841, %795
  %897 = load ptr, ptr %74, align 8, !tbaa !36
  %898 = getelementptr inbounds i8, ptr %897, i64 %747
  store ptr %898, ptr %74, align 8, !tbaa !36
  %899 = icmp ugt i64 %747, 65535
  %900 = load ptr, ptr %77, align 8, !tbaa !46
  br i1 %899, label %901, label %908, !prof !47

901:                                              ; preds = %896
  store i32 1, ptr %76, align 8, !tbaa !48
  %902 = load ptr, ptr %1, align 8, !tbaa !49
  %903 = ptrtoint ptr %900 to i64
  %904 = ptrtoint ptr %902 to i64
  %905 = sub i64 %903, %904
  %906 = lshr exact i64 %905, 3
  %907 = trunc i64 %906 to i32
  store i32 %907, ptr %78, align 4, !tbaa !50
  br label %908

908:                                              ; preds = %901, %896, %892
  %909 = phi ptr [ %895, %892 ], [ %900, %901 ], [ %900, %896 ]
  %910 = trunc i64 %747 to i16
  %911 = getelementptr inbounds %struct.SeqDef_s, ptr %909, i64 0, i32 1
  store i16 %910, ptr %911, align 4, !tbaa !51
  store i32 %748, ptr %909, align 4, !tbaa !53
  %912 = add i64 %736, -3
  %913 = icmp ugt i64 %912, 65535
  br i1 %913, label %914, label %928, !prof !54

914:                                              ; preds = %908, %410
  %915 = phi ptr [ %411, %410 ], [ %909, %908 ]
  %916 = phi i64 [ %414, %410 ], [ %912, %908 ]
  %917 = phi i32 [ %167, %410 ], [ %733, %908 ]
  %918 = phi ptr [ %171, %410 ], [ %734, %908 ]
  %919 = phi i64 [ %246, %410 ], [ %736, %908 ]
  %920 = phi i32 [ %83, %410 ], [ %85, %908 ]
  %921 = phi i32 [ %85, %410 ], [ %737, %908 ]
  store i32 2, ptr %76, align 8, !tbaa !48
  %922 = load ptr, ptr %1, align 8, !tbaa !49
  %923 = ptrtoint ptr %915 to i64
  %924 = ptrtoint ptr %922 to i64
  %925 = sub i64 %923, %924
  %926 = lshr exact i64 %925, 3
  %927 = trunc i64 %926 to i32
  store i32 %927, ptr %78, align 4, !tbaa !50
  br label %928

928:                                              ; preds = %914, %908, %410
  %929 = phi i64 [ %414, %410 ], [ %912, %908 ], [ %916, %914 ]
  %930 = phi ptr [ %411, %410 ], [ %909, %908 ], [ %915, %914 ]
  %931 = phi i32 [ %167, %410 ], [ %733, %908 ], [ %917, %914 ]
  %932 = phi ptr [ %171, %410 ], [ %734, %908 ], [ %918, %914 ]
  %933 = phi i64 [ %246, %410 ], [ %736, %908 ], [ %919, %914 ]
  %934 = phi i32 [ %83, %410 ], [ %85, %908 ], [ %920, %914 ]
  %935 = phi i32 [ %85, %410 ], [ %737, %908 ], [ %921, %914 ]
  %936 = trunc i64 %929 to i16
  %937 = getelementptr inbounds %struct.SeqDef_s, ptr %930, i64 0, i32 2
  store i16 %936, ptr %937, align 2, !tbaa !61
  %938 = getelementptr inbounds %struct.SeqDef_s, ptr %930, i64 1
  store ptr %938, ptr %77, align 8, !tbaa !46
  %939 = getelementptr inbounds i8, ptr %932, i64 %933
  %940 = icmp ugt ptr %939, %43
  br i1 %940, label %1088, label %941

941:                                              ; preds = %928
  %942 = add i32 %931, 2
  %943 = zext i32 %942 to i64
  %944 = getelementptr inbounds i8, ptr %22, i64 %943
  %945 = load i64, ptr %944, align 1, !tbaa !21
  %946 = mul i64 %945, -3523014627327384477
  %947 = lshr i64 %946, %68
  %948 = getelementptr inbounds i32, ptr %14, i64 %947
  store i32 %942, ptr %948, align 4, !tbaa !22
  %949 = getelementptr inbounds i8, ptr %939, i64 -2
  %950 = ptrtoint ptr %949 to i64
  %951 = sub i64 %950, %24
  %952 = trunc i64 %951 to i32
  %953 = load i64, ptr %949, align 1, !tbaa !21
  %954 = mul i64 %953, -3523014627327384477
  %955 = lshr i64 %954, %68
  %956 = getelementptr inbounds i32, ptr %14, i64 %955
  store i32 %952, ptr %956, align 4, !tbaa !22
  %957 = load i32, ptr %944, align 1, !tbaa !22
  %958 = mul i32 %957, -1640531535
  %959 = lshr i32 %958, %69
  %960 = zext i32 %959 to i64
  %961 = getelementptr inbounds i32, ptr %18, i64 %960
  store i32 %942, ptr %961, align 4, !tbaa !22
  %962 = getelementptr inbounds i8, ptr %939, i64 -1
  %963 = ptrtoint ptr %962 to i64
  %964 = sub i64 %963, %24
  %965 = trunc i64 %964 to i32
  %966 = load i32, ptr %962, align 1, !tbaa !22
  %967 = mul i32 %966, -1640531535
  %968 = lshr i32 %967, %69
  %969 = zext i32 %968 to i64
  %970 = getelementptr inbounds i32, ptr %18, i64 %969
  store i32 %965, ptr %970, align 4, !tbaa !22
  br label %971

971:                                              ; preds = %1082, %941
  %972 = phi ptr [ %938, %941 ], [ %1085, %1082 ]
  %973 = phi ptr [ %939, %941 ], [ %1086, %1082 ]
  %974 = phi i32 [ %935, %941 ], [ %975, %1082 ]
  %975 = phi i32 [ %934, %941 ], [ %974, %1082 ]
  %976 = icmp ne i32 %975, 0
  %977 = load i32, ptr %973, align 1, !tbaa !22
  %978 = zext i32 %975 to i64
  %979 = sub nsw i64 0, %978
  %980 = getelementptr inbounds i8, ptr %973, i64 %979
  %981 = load i32, ptr %980, align 1, !tbaa !22
  %982 = icmp eq i32 %977, %981
  %983 = and i1 %976, %982
  br i1 %983, label %984, label %1088

984:                                              ; preds = %971
  %985 = getelementptr inbounds i8, ptr %973, i64 4
  %986 = getelementptr inbounds i8, ptr %985, i64 %979
  %987 = icmp ugt ptr %70, %985
  br i1 %987, label %988, label %1014

988:                                              ; preds = %984
  %989 = load i64, ptr %986, align 1, !tbaa !21
  %990 = load i64, ptr %985, align 1, !tbaa !21
  %991 = xor i64 %990, %989
  %992 = icmp eq i64 %991, 0
  br i1 %992, label %996, label %993

993:                                              ; preds = %988
  %994 = call i64 @llvm.cttz.i64(i64 %991, i1 true), !range !32
  %995 = lshr i64 %994, 3
  br label %1051

996:                                              ; preds = %988, %1002
  %997 = phi ptr [ %1000, %1002 ], [ %986, %988 ]
  %998 = phi ptr [ %999, %1002 ], [ %985, %988 ]
  %999 = getelementptr inbounds i8, ptr %998, i64 8
  %1000 = getelementptr inbounds i8, ptr %997, i64 8
  %1001 = icmp ult ptr %999, %70
  br i1 %1001, label %1002, label %1014

1002:                                             ; preds = %996
  %1003 = load i64, ptr %1000, align 1, !tbaa !21
  %1004 = load i64, ptr %999, align 1, !tbaa !21
  %1005 = xor i64 %1004, %1003
  %1006 = icmp eq i64 %1005, 0
  br i1 %1006, label %996, label %1007

1007:                                             ; preds = %1002
  %1008 = call i64 @llvm.cttz.i64(i64 %1005, i1 true), !range !32
  %1009 = lshr i64 %1008, 3
  %1010 = getelementptr inbounds i8, ptr %999, i64 %1009
  %1011 = ptrtoint ptr %1010 to i64
  %1012 = ptrtoint ptr %985 to i64
  %1013 = sub i64 %1011, %1012
  br label %1051

1014:                                             ; preds = %996, %984
  %1015 = phi ptr [ %986, %984 ], [ %1000, %996 ]
  %1016 = phi ptr [ %985, %984 ], [ %999, %996 ]
  %1017 = icmp ult ptr %1016, %71
  br i1 %1017, label %1018, label %1025

1018:                                             ; preds = %1014
  %1019 = load i32, ptr %1015, align 1, !tbaa !22
  %1020 = load i32, ptr %1016, align 1, !tbaa !22
  %1021 = icmp eq i32 %1019, %1020
  br i1 %1021, label %1022, label %1025

1022:                                             ; preds = %1018
  %1023 = getelementptr inbounds i8, ptr %1016, i64 4
  %1024 = getelementptr inbounds i8, ptr %1015, i64 4
  br label %1025

1025:                                             ; preds = %1022, %1018, %1014
  %1026 = phi ptr [ %1024, %1022 ], [ %1015, %1018 ], [ %1015, %1014 ]
  %1027 = phi ptr [ %1023, %1022 ], [ %1016, %1018 ], [ %1016, %1014 ]
  %1028 = icmp ult ptr %1027, %72
  br i1 %1028, label %1029, label %1036

1029:                                             ; preds = %1025
  %1030 = load i16, ptr %1026, align 1, !tbaa !33
  %1031 = load i16, ptr %1027, align 1, !tbaa !33
  %1032 = icmp eq i16 %1030, %1031
  br i1 %1032, label %1033, label %1036

1033:                                             ; preds = %1029
  %1034 = getelementptr inbounds i8, ptr %1027, i64 2
  %1035 = getelementptr inbounds i8, ptr %1026, i64 2
  br label %1036

1036:                                             ; preds = %1033, %1029, %1025
  %1037 = phi ptr [ %1035, %1033 ], [ %1026, %1029 ], [ %1026, %1025 ]
  %1038 = phi ptr [ %1034, %1033 ], [ %1027, %1029 ], [ %1027, %1025 ]
  %1039 = icmp ult ptr %1038, %42
  br i1 %1039, label %1040, label %1046

1040:                                             ; preds = %1036
  %1041 = load i8, ptr %1037, align 1, !tbaa !35
  %1042 = load i8, ptr %1038, align 1, !tbaa !35
  %1043 = icmp eq i8 %1041, %1042
  %1044 = zext i1 %1043 to i64
  %1045 = getelementptr inbounds i8, ptr %1038, i64 %1044
  br label %1046

1046:                                             ; preds = %1040, %1036
  %1047 = phi ptr [ %1038, %1036 ], [ %1045, %1040 ]
  %1048 = ptrtoint ptr %1047 to i64
  %1049 = ptrtoint ptr %985 to i64
  %1050 = sub i64 %1048, %1049
  br label %1051

1051:                                             ; preds = %1046, %1007, %993
  %1052 = phi i64 [ %1050, %1046 ], [ %995, %993 ], [ %1013, %1007 ]
  %1053 = add i64 %1052, 4
  %1054 = ptrtoint ptr %973 to i64
  %1055 = sub i64 %1054, %24
  %1056 = trunc i64 %1055 to i32
  %1057 = mul i32 %977, -1640531535
  %1058 = lshr i32 %1057, %69
  %1059 = zext i32 %1058 to i64
  %1060 = getelementptr inbounds i32, ptr %18, i64 %1059
  store i32 %1056, ptr %1060, align 4, !tbaa !22
  %1061 = load i64, ptr %973, align 1, !tbaa !21
  %1062 = mul i64 %1061, -3523014627327384477
  %1063 = lshr i64 %1062, %68
  %1064 = getelementptr inbounds i32, ptr %14, i64 %1063
  store i32 %1056, ptr %1064, align 4, !tbaa !22
  %1065 = icmp ugt ptr %973, %73
  br i1 %1065, label %1070, label %1066

1066:                                             ; preds = %1051
  %1067 = load ptr, ptr %74, align 8, !tbaa !36
  %1068 = load <2 x i64>, ptr %973, align 1, !tbaa !35
  store <2 x i64> %1068, ptr %1067, align 1, !tbaa !35
  %1069 = load ptr, ptr %77, align 8, !tbaa !46
  br label %1070

1070:                                             ; preds = %1066, %1051
  %1071 = phi ptr [ %972, %1051 ], [ %1069, %1066 ]
  %1072 = getelementptr inbounds %struct.SeqDef_s, ptr %1071, i64 0, i32 1
  store i16 0, ptr %1072, align 4, !tbaa !51
  store i32 1, ptr %1071, align 4, !tbaa !53
  %1073 = add i64 %1052, 1
  %1074 = icmp ugt i64 %1073, 65535
  br i1 %1074, label %1075, label %1082, !prof !54

1075:                                             ; preds = %1070
  store i32 2, ptr %76, align 8, !tbaa !48
  %1076 = load ptr, ptr %1, align 8, !tbaa !49
  %1077 = ptrtoint ptr %1071 to i64
  %1078 = ptrtoint ptr %1076 to i64
  %1079 = sub i64 %1077, %1078
  %1080 = lshr exact i64 %1079, 3
  %1081 = trunc i64 %1080 to i32
  store i32 %1081, ptr %78, align 4, !tbaa !50
  br label %1082

1082:                                             ; preds = %1075, %1070
  %1083 = trunc i64 %1073 to i16
  %1084 = getelementptr inbounds %struct.SeqDef_s, ptr %1071, i64 0, i32 2
  store i16 %1083, ptr %1084, align 2, !tbaa !61
  %1085 = getelementptr inbounds %struct.SeqDef_s, ptr %1071, i64 1
  store ptr %1085, ptr %77, align 8, !tbaa !46
  %1086 = getelementptr inbounds i8, ptr %973, i64 %1053
  %1087 = icmp ugt ptr %1086, %43
  br i1 %1087, label %1088, label %971

1088:                                             ; preds = %1082, %971, %928
  %1089 = phi i32 [ %934, %928 ], [ %975, %971 ], [ %974, %1082 ]
  %1090 = phi i32 [ %935, %928 ], [ %974, %971 ], [ %975, %1082 ]
  %1091 = phi ptr [ %939, %928 ], [ %973, %971 ], [ %1086, %1082 ]
  %1092 = getelementptr inbounds i8, ptr %1091, i64 1
  %1093 = icmp ugt ptr %1092, %43
  br i1 %1093, label %1094, label %79

1094:                                             ; preds = %1088, %541, %146, %65
  %1095 = phi i32 [ %60, %65 ], [ %83, %146 ], [ %83, %541 ], [ %1089, %1088 ]
  %1096 = phi i32 [ %62, %65 ], [ 0, %146 ], [ %85, %541 ], [ %1090, %1088 ]
  %1097 = phi ptr [ %3, %65 ], [ %81, %146 ], [ %81, %541 ], [ %1091, %1088 ]
  %1098 = select i1 %61, i32 %44, i32 0
  %1099 = select i1 %59, i32 %46, i32 0
  %1100 = icmp ne i32 %1098, 0
  %1101 = icmp ne i32 %1096, 0
  %1102 = select i1 %1100, i1 %1101, i1 false
  %1103 = select i1 %1102, i32 %1098, i32 %1099
  %1104 = select i1 %1101, i32 %1096, i32 %1098
  store i32 %1104, ptr %2, align 4, !tbaa !22
  %1105 = icmp eq i32 %1095, 0
  %1106 = select i1 %1105, i32 %1103, i32 %1095
  store i32 %1106, ptr %45, align 4, !tbaa !22
  %1107 = ptrtoint ptr %42 to i64
  %1108 = ptrtoint ptr %1097 to i64
  %1109 = sub i64 %1107, %1108
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %9) #10
  br label %4215

1110:                                             ; preds = %5
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %8) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %8, ptr noundef nonnull align 1 dereferenceable(10) @__const.ZSTD_compressBlock_doubleFast_noDict_generic.dummy, i64 10, i1 false)
  br i1 %64, label %2129, label %1111

1111:                                             ; preds = %1110
  %1112 = sub i32 64, %16
  %1113 = zext nneg i32 %1112 to i64
  %1114 = sub i32 64, %20
  %1115 = zext nneg i32 %1114 to i64
  %1116 = getelementptr inbounds i8, ptr %42, i64 -7
  %1117 = getelementptr inbounds i8, ptr %42, i64 -3
  %1118 = getelementptr inbounds i8, ptr %42, i64 -1
  %1119 = getelementptr inbounds i8, ptr %42, i64 -32
  %1120 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %1121 = ptrtoint ptr %1119 to i64
  %1122 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %1123 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %1124 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  br label %1125

1125:                                             ; preds = %2123, %1111
  %1126 = phi ptr [ %63, %1111 ], [ %2127, %2123 ]
  %1127 = phi ptr [ %3, %1111 ], [ %2126, %2123 ]
  %1128 = phi i32 [ %62, %1111 ], [ %2125, %2123 ]
  %1129 = phi i32 [ %60, %1111 ], [ %2124, %2123 ]
  %1130 = phi ptr [ %49, %1111 ], [ %2126, %2123 ]
  %1131 = freeze i32 %1128
  %1132 = getelementptr inbounds i8, ptr %1130, i64 256
  %1133 = load i64, ptr %1130, align 1, !tbaa !21
  %1134 = mul i64 %1133, -3523014627327384477
  %1135 = lshr i64 %1134, %1113
  %1136 = getelementptr inbounds i32, ptr %14, i64 %1135
  %1137 = load i32, ptr %1136, align 4, !tbaa !22
  %1138 = zext i32 %1137 to i64
  %1139 = getelementptr inbounds i8, ptr %22, i64 %1138
  %1140 = icmp eq i32 %1131, 0
  %1141 = zext i32 %1131 to i64
  %1142 = sub nsw i64 0, %1141
  br i1 %1140, label %1143, label %1193

1143:                                             ; preds = %1125, %1188
  %1144 = phi i64 [ %1160, %1188 ], [ %1133, %1125 ]
  %1145 = phi i32 [ %1172, %1188 ], [ %1137, %1125 ]
  %1146 = phi ptr [ %1174, %1188 ], [ %1139, %1125 ]
  %1147 = phi i64 [ %1162, %1188 ], [ %1135, %1125 ]
  %1148 = phi ptr [ %1149, %1188 ], [ %1130, %1125 ]
  %1149 = phi ptr [ %1191, %1188 ], [ %1126, %1125 ]
  %1150 = phi i64 [ %1189, %1188 ], [ 1, %1125 ]
  %1151 = phi ptr [ %1190, %1188 ], [ %1132, %1125 ]
  %1152 = mul i64 %1144, -3523014627271114752
  %1153 = lshr i64 %1152, %1115
  %1154 = getelementptr inbounds i32, ptr %18, i64 %1153
  %1155 = load i32, ptr %1154, align 4, !tbaa !22
  %1156 = ptrtoint ptr %1148 to i64
  %1157 = sub i64 %1156, %24
  %1158 = trunc i64 %1157 to i32
  store i32 %1158, ptr %1154, align 4, !tbaa !22
  %1159 = getelementptr inbounds i32, ptr %14, i64 %1147
  store i32 %1158, ptr %1159, align 4, !tbaa !22
  %1160 = load i64, ptr %1149, align 1, !tbaa !21
  %1161 = mul i64 %1160, -3523014627327384477
  %1162 = lshr i64 %1161, %1113
  %1163 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1145, i32 %39, ptr nonnull %8, ptr %1146) #11, !srcloc !30
  %1164 = load i64, ptr %1163, align 1, !tbaa !21
  %1165 = icmp eq i64 %1164, %1144
  %1166 = icmp eq ptr %1163, %1146
  %1167 = select i1 %1165, i1 %1166, i1 false
  br i1 %1167, label %1466, label %1168

1168:                                             ; preds = %1143
  %1169 = zext i32 %1155 to i64
  %1170 = getelementptr inbounds i8, ptr %22, i64 %1169
  %1171 = getelementptr inbounds i32, ptr %14, i64 %1162
  %1172 = load i32, ptr %1171, align 4, !tbaa !22
  %1173 = zext i32 %1172 to i64
  %1174 = getelementptr inbounds i8, ptr %22, i64 %1173
  %1175 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1155, i32 %39, ptr nonnull %8, ptr %1170) #11, !srcloc !30
  %1176 = load i32, ptr %1175, align 1, !tbaa !22
  %1177 = load i32, ptr %1148, align 1, !tbaa !22
  %1178 = icmp eq i32 %1176, %1177
  %1179 = icmp eq ptr %1175, %1170
  %1180 = select i1 %1178, i1 %1179, i1 false
  br i1 %1180, label %1585, label %1181

1181:                                             ; preds = %1168
  %1182 = icmp ult ptr %1149, %1151
  br i1 %1182, label %1188, label %1183

1183:                                             ; preds = %1181
  %1184 = getelementptr inbounds i8, ptr %1149, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %1184, i32 0, i32 3, i32 1)
  %1185 = getelementptr inbounds i8, ptr %1149, i64 128
  call void @llvm.prefetch.p0(ptr nonnull %1185, i32 0, i32 3, i32 1)
  %1186 = add i64 %1150, 1
  %1187 = getelementptr inbounds i8, ptr %1151, i64 256
  br label %1188

1188:                                             ; preds = %1183, %1181
  %1189 = phi i64 [ %1186, %1183 ], [ %1150, %1181 ]
  %1190 = phi ptr [ %1187, %1183 ], [ %1151, %1181 ]
  %1191 = getelementptr inbounds i8, ptr %1149, i64 %1189
  %1192 = icmp ugt ptr %1191, %43
  br i1 %1192, label %2129, label %1143, !llvm.loop !31

1193:                                             ; preds = %1125, %1580
  %1194 = phi i64 [ %1458, %1580 ], [ %1133, %1125 ]
  %1195 = phi i32 [ %1564, %1580 ], [ %1137, %1125 ]
  %1196 = phi ptr [ %1566, %1580 ], [ %1139, %1125 ]
  %1197 = phi i64 [ %1460, %1580 ], [ %1135, %1125 ]
  %1198 = phi ptr [ %1199, %1580 ], [ %1130, %1125 ]
  %1199 = phi ptr [ %1583, %1580 ], [ %1126, %1125 ]
  %1200 = phi i64 [ %1581, %1580 ], [ 1, %1125 ]
  %1201 = phi ptr [ %1582, %1580 ], [ %1132, %1125 ]
  %1202 = mul i64 %1194, -3523014627271114752
  %1203 = lshr i64 %1202, %1115
  %1204 = getelementptr inbounds i32, ptr %18, i64 %1203
  %1205 = load i32, ptr %1204, align 4, !tbaa !22
  %1206 = ptrtoint ptr %1198 to i64
  %1207 = sub i64 %1206, %24
  %1208 = trunc i64 %1207 to i32
  %1209 = zext i32 %1205 to i64
  %1210 = getelementptr inbounds i8, ptr %22, i64 %1209
  store i32 %1208, ptr %1204, align 4, !tbaa !22
  %1211 = getelementptr inbounds i32, ptr %14, i64 %1197
  store i32 %1208, ptr %1211, align 4, !tbaa !22
  %1212 = getelementptr inbounds i8, ptr %1198, i64 1
  %1213 = getelementptr inbounds i8, ptr %1212, i64 %1142
  %1214 = load i32, ptr %1213, align 1, !tbaa !22
  %1215 = load i32, ptr %1212, align 1, !tbaa !22
  %1216 = icmp eq i32 %1214, %1215
  br i1 %1216, label %1217, label %1457

1217:                                             ; preds = %1193
  %1218 = ptrtoint ptr %1198 to i64
  %1219 = getelementptr inbounds i8, ptr %1198, i64 5
  %1220 = getelementptr inbounds i8, ptr %1219, i64 %1142
  %1221 = icmp ugt ptr %1116, %1219
  br i1 %1221, label %1222, label %1248

1222:                                             ; preds = %1217
  %1223 = load i64, ptr %1220, align 1, !tbaa !21
  %1224 = load i64, ptr %1219, align 1, !tbaa !21
  %1225 = xor i64 %1224, %1223
  %1226 = icmp eq i64 %1225, 0
  br i1 %1226, label %1230, label %1227

1227:                                             ; preds = %1222
  %1228 = call i64 @llvm.cttz.i64(i64 %1225, i1 true), !range !32
  %1229 = lshr i64 %1228, 3
  br label %1285

1230:                                             ; preds = %1222, %1236
  %1231 = phi ptr [ %1234, %1236 ], [ %1220, %1222 ]
  %1232 = phi ptr [ %1233, %1236 ], [ %1219, %1222 ]
  %1233 = getelementptr inbounds i8, ptr %1232, i64 8
  %1234 = getelementptr inbounds i8, ptr %1231, i64 8
  %1235 = icmp ult ptr %1233, %1116
  br i1 %1235, label %1236, label %1248

1236:                                             ; preds = %1230
  %1237 = load i64, ptr %1234, align 1, !tbaa !21
  %1238 = load i64, ptr %1233, align 1, !tbaa !21
  %1239 = xor i64 %1238, %1237
  %1240 = icmp eq i64 %1239, 0
  br i1 %1240, label %1230, label %1241

1241:                                             ; preds = %1236
  %1242 = call i64 @llvm.cttz.i64(i64 %1239, i1 true), !range !32
  %1243 = lshr i64 %1242, 3
  %1244 = getelementptr inbounds i8, ptr %1233, i64 %1243
  %1245 = ptrtoint ptr %1244 to i64
  %1246 = ptrtoint ptr %1219 to i64
  %1247 = sub i64 %1245, %1246
  br label %1285

1248:                                             ; preds = %1230, %1217
  %1249 = phi ptr [ %1220, %1217 ], [ %1234, %1230 ]
  %1250 = phi ptr [ %1219, %1217 ], [ %1233, %1230 ]
  %1251 = icmp ult ptr %1250, %1117
  br i1 %1251, label %1252, label %1259

1252:                                             ; preds = %1248
  %1253 = load i32, ptr %1249, align 1, !tbaa !22
  %1254 = load i32, ptr %1250, align 1, !tbaa !22
  %1255 = icmp eq i32 %1253, %1254
  br i1 %1255, label %1256, label %1259

1256:                                             ; preds = %1252
  %1257 = getelementptr inbounds i8, ptr %1250, i64 4
  %1258 = getelementptr inbounds i8, ptr %1249, i64 4
  br label %1259

1259:                                             ; preds = %1256, %1252, %1248
  %1260 = phi ptr [ %1258, %1256 ], [ %1249, %1252 ], [ %1249, %1248 ]
  %1261 = phi ptr [ %1257, %1256 ], [ %1250, %1252 ], [ %1250, %1248 ]
  %1262 = icmp ult ptr %1261, %1118
  br i1 %1262, label %1263, label %1270

1263:                                             ; preds = %1259
  %1264 = load i16, ptr %1260, align 1, !tbaa !33
  %1265 = load i16, ptr %1261, align 1, !tbaa !33
  %1266 = icmp eq i16 %1264, %1265
  br i1 %1266, label %1267, label %1270

1267:                                             ; preds = %1263
  %1268 = getelementptr inbounds i8, ptr %1261, i64 2
  %1269 = getelementptr inbounds i8, ptr %1260, i64 2
  br label %1270

1270:                                             ; preds = %1267, %1263, %1259
  %1271 = phi ptr [ %1269, %1267 ], [ %1260, %1263 ], [ %1260, %1259 ]
  %1272 = phi ptr [ %1268, %1267 ], [ %1261, %1263 ], [ %1261, %1259 ]
  %1273 = icmp ult ptr %1272, %42
  br i1 %1273, label %1274, label %1280

1274:                                             ; preds = %1270
  %1275 = load i8, ptr %1271, align 1, !tbaa !35
  %1276 = load i8, ptr %1272, align 1, !tbaa !35
  %1277 = icmp eq i8 %1275, %1276
  %1278 = zext i1 %1277 to i64
  %1279 = getelementptr inbounds i8, ptr %1272, i64 %1278
  br label %1280

1280:                                             ; preds = %1274, %1270
  %1281 = phi ptr [ %1272, %1270 ], [ %1279, %1274 ]
  %1282 = ptrtoint ptr %1281 to i64
  %1283 = ptrtoint ptr %1219 to i64
  %1284 = sub i64 %1282, %1283
  br label %1285

1285:                                             ; preds = %1280, %1241, %1227
  %1286 = phi i64 [ %1284, %1280 ], [ %1229, %1227 ], [ %1247, %1241 ]
  %1287 = add i64 %1286, 4
  %1288 = ptrtoint ptr %1212 to i64
  %1289 = ptrtoint ptr %1127 to i64
  %1290 = sub i64 %1288, %1289
  %1291 = getelementptr inbounds i8, ptr %1127, i64 %1290
  %1292 = icmp ugt ptr %1291, %1119
  %1293 = load ptr, ptr %1120, align 8, !tbaa !36
  br i1 %1292, label %1317, label %1294

1294:                                             ; preds = %1285
  %1295 = load <2 x i64>, ptr %1127, align 1, !tbaa !35
  store <2 x i64> %1295, ptr %1293, align 1, !tbaa !35
  %1296 = icmp ugt i64 %1290, 16
  br i1 %1296, label %1297, label %1435

1297:                                             ; preds = %1294
  %1298 = load ptr, ptr %1120, align 8, !tbaa !36
  %1299 = getelementptr inbounds i8, ptr %1298, i64 16
  %1300 = getelementptr inbounds i8, ptr %1127, i64 16
  %1301 = add i64 %1290, -16
  %1302 = getelementptr inbounds i8, ptr %1298, i64 %1290
  %1303 = load <2 x i64>, ptr %1300, align 1, !tbaa !35
  store <2 x i64> %1303, ptr %1299, align 1, !tbaa !35
  %1304 = icmp ult i64 %1301, 17
  br i1 %1304, label %1435, label %1305

1305:                                             ; preds = %1297
  %1306 = getelementptr inbounds i8, ptr %1298, i64 32
  br label %1307

1307:                                             ; preds = %1307, %1305
  %1308 = phi ptr [ %1306, %1305 ], [ %1315, %1307 ]
  %1309 = phi ptr [ %1300, %1305 ], [ %1313, %1307 ]
  %1310 = getelementptr inbounds i8, ptr %1309, i64 16
  %1311 = load <2 x i64>, ptr %1310, align 1, !tbaa !35
  store <2 x i64> %1311, ptr %1308, align 1, !tbaa !35
  %1312 = getelementptr inbounds i8, ptr %1308, i64 16
  %1313 = getelementptr inbounds i8, ptr %1309, i64 32
  %1314 = load <2 x i64>, ptr %1313, align 1, !tbaa !35
  store <2 x i64> %1314, ptr %1312, align 1, !tbaa !35
  %1315 = getelementptr inbounds i8, ptr %1308, i64 32
  %1316 = icmp ult ptr %1315, %1302
  br i1 %1316, label %1307, label %1439, !llvm.loop !38

1317:                                             ; preds = %1285
  %1318 = ptrtoint ptr %1291 to i64
  %1319 = icmp ugt ptr %1127, %1119
  br i1 %1319, label %1337, label %1320

1320:                                             ; preds = %1317
  %1321 = sub i64 %1121, %1289
  %1322 = getelementptr inbounds i8, ptr %1293, i64 %1321
  %1323 = load <2 x i64>, ptr %1127, align 1, !tbaa !35
  store <2 x i64> %1323, ptr %1293, align 1, !tbaa !35
  %1324 = icmp ult i64 %1321, 17
  br i1 %1324, label %1337, label %1325

1325:                                             ; preds = %1320
  %1326 = getelementptr inbounds i8, ptr %1293, i64 16
  br label %1327

1327:                                             ; preds = %1327, %1325
  %1328 = phi ptr [ %1326, %1325 ], [ %1335, %1327 ]
  %1329 = phi ptr [ %1127, %1325 ], [ %1333, %1327 ]
  %1330 = getelementptr inbounds i8, ptr %1329, i64 16
  %1331 = load <2 x i64>, ptr %1330, align 1, !tbaa !35
  store <2 x i64> %1331, ptr %1328, align 1, !tbaa !35
  %1332 = getelementptr inbounds i8, ptr %1328, i64 16
  %1333 = getelementptr inbounds i8, ptr %1329, i64 32
  %1334 = load <2 x i64>, ptr %1333, align 1, !tbaa !35
  store <2 x i64> %1334, ptr %1332, align 1, !tbaa !35
  %1335 = getelementptr inbounds i8, ptr %1328, i64 32
  %1336 = icmp ult ptr %1335, %1322
  br i1 %1336, label %1327, label %1337, !llvm.loop !38

1337:                                             ; preds = %1327, %1320, %1317
  %1338 = phi ptr [ %1119, %1320 ], [ %1127, %1317 ], [ %1119, %1327 ]
  %1339 = phi ptr [ %1322, %1320 ], [ %1293, %1317 ], [ %1322, %1327 ]
  %1340 = icmp ult ptr %1338, %1291
  br i1 %1340, label %1341, label %1439

1341:                                             ; preds = %1337
  %1342 = ptrtoint ptr %1339 to i64
  %1343 = ptrtoint ptr %1338 to i64
  %1344 = sub i64 %1318, %1343
  %1345 = getelementptr i8, ptr %1338, i64 %1344
  %1346 = icmp ult i64 %1344, 8
  %1347 = sub i64 %1342, %1343
  %1348 = icmp ult i64 %1347, 32
  %1349 = select i1 %1346, i1 true, i1 %1348
  br i1 %1349, label %1385, label %1350

1350:                                             ; preds = %1341
  %1351 = icmp ult i64 %1344, 32
  br i1 %1351, label %1371, label %1352

1352:                                             ; preds = %1350
  %1353 = and i64 %1344, -32
  br label %1354

1354:                                             ; preds = %1354, %1352
  %1355 = phi i64 [ 0, %1352 ], [ %1362, %1354 ]
  %1356 = getelementptr i8, ptr %1339, i64 %1355
  %1357 = getelementptr i8, ptr %1338, i64 %1355
  %1358 = getelementptr i8, ptr %1357, i64 16
  %1359 = load <16 x i8>, ptr %1357, align 1, !tbaa !35
  %1360 = load <16 x i8>, ptr %1358, align 1, !tbaa !35
  %1361 = getelementptr i8, ptr %1356, i64 16
  store <16 x i8> %1359, ptr %1356, align 1, !tbaa !35
  store <16 x i8> %1360, ptr %1361, align 1, !tbaa !35
  %1362 = add nuw i64 %1355, 32
  %1363 = icmp eq i64 %1362, %1353
  br i1 %1363, label %1364, label %1354, !llvm.loop !62

1364:                                             ; preds = %1354
  %1365 = icmp eq i64 %1344, %1353
  br i1 %1365, label %1439, label %1366

1366:                                             ; preds = %1364
  %1367 = getelementptr i8, ptr %1338, i64 %1353
  %1368 = getelementptr i8, ptr %1339, i64 %1353
  %1369 = and i64 %1344, 24
  %1370 = icmp eq i64 %1369, 0
  br i1 %1370, label %1385, label %1371

1371:                                             ; preds = %1350, %1366
  %1372 = phi i64 [ %1353, %1366 ], [ 0, %1350 ]
  %1373 = and i64 %1344, -8
  %1374 = getelementptr i8, ptr %1339, i64 %1373
  %1375 = getelementptr i8, ptr %1338, i64 %1373
  br label %1376

1376:                                             ; preds = %1376, %1371
  %1377 = phi i64 [ %1372, %1371 ], [ %1381, %1376 ]
  %1378 = getelementptr i8, ptr %1339, i64 %1377
  %1379 = getelementptr i8, ptr %1338, i64 %1377
  %1380 = load <8 x i8>, ptr %1379, align 1, !tbaa !35
  store <8 x i8> %1380, ptr %1378, align 1, !tbaa !35
  %1381 = add nuw i64 %1377, 8
  %1382 = icmp eq i64 %1381, %1373
  br i1 %1382, label %1383, label %1376, !llvm.loop !63

1383:                                             ; preds = %1376
  %1384 = icmp eq i64 %1344, %1373
  br i1 %1384, label %1439, label %1385

1385:                                             ; preds = %1341, %1366, %1383
  %1386 = phi ptr [ %1339, %1341 ], [ %1368, %1366 ], [ %1374, %1383 ]
  %1387 = phi ptr [ %1338, %1341 ], [ %1367, %1366 ], [ %1375, %1383 ]
  %1388 = ptrtoint ptr %1387 to i64
  %1389 = sub i64 %1218, %1388
  %1390 = add i64 %1389, 1
  %1391 = sub i64 %1218, %1388
  %1392 = and i64 %1390, 7
  %1393 = icmp eq i64 %1392, 0
  br i1 %1393, label %1403, label %1394

1394:                                             ; preds = %1385, %1394
  %1395 = phi ptr [ %1400, %1394 ], [ %1386, %1385 ]
  %1396 = phi ptr [ %1398, %1394 ], [ %1387, %1385 ]
  %1397 = phi i64 [ %1401, %1394 ], [ 0, %1385 ]
  %1398 = getelementptr inbounds i8, ptr %1396, i64 1
  %1399 = load i8, ptr %1396, align 1, !tbaa !35
  %1400 = getelementptr inbounds i8, ptr %1395, i64 1
  store i8 %1399, ptr %1395, align 1, !tbaa !35
  %1401 = add i64 %1397, 1
  %1402 = icmp eq i64 %1401, %1392
  br i1 %1402, label %1403, label %1394, !llvm.loop !64

1403:                                             ; preds = %1394, %1385
  %1404 = phi ptr [ %1386, %1385 ], [ %1400, %1394 ]
  %1405 = phi ptr [ %1387, %1385 ], [ %1398, %1394 ]
  %1406 = icmp ult i64 %1391, 7
  br i1 %1406, label %1439, label %1407

1407:                                             ; preds = %1403, %1407
  %1408 = phi ptr [ %1433, %1407 ], [ %1404, %1403 ]
  %1409 = phi ptr [ %1431, %1407 ], [ %1405, %1403 ]
  %1410 = getelementptr inbounds i8, ptr %1409, i64 1
  %1411 = load i8, ptr %1409, align 1, !tbaa !35
  %1412 = getelementptr inbounds i8, ptr %1408, i64 1
  store i8 %1411, ptr %1408, align 1, !tbaa !35
  %1413 = getelementptr inbounds i8, ptr %1409, i64 2
  %1414 = load i8, ptr %1410, align 1, !tbaa !35
  %1415 = getelementptr inbounds i8, ptr %1408, i64 2
  store i8 %1414, ptr %1412, align 1, !tbaa !35
  %1416 = getelementptr inbounds i8, ptr %1409, i64 3
  %1417 = load i8, ptr %1413, align 1, !tbaa !35
  %1418 = getelementptr inbounds i8, ptr %1408, i64 3
  store i8 %1417, ptr %1415, align 1, !tbaa !35
  %1419 = getelementptr inbounds i8, ptr %1409, i64 4
  %1420 = load i8, ptr %1416, align 1, !tbaa !35
  %1421 = getelementptr inbounds i8, ptr %1408, i64 4
  store i8 %1420, ptr %1418, align 1, !tbaa !35
  %1422 = getelementptr inbounds i8, ptr %1409, i64 5
  %1423 = load i8, ptr %1419, align 1, !tbaa !35
  %1424 = getelementptr inbounds i8, ptr %1408, i64 5
  store i8 %1423, ptr %1421, align 1, !tbaa !35
  %1425 = getelementptr inbounds i8, ptr %1409, i64 6
  %1426 = load i8, ptr %1422, align 1, !tbaa !35
  %1427 = getelementptr inbounds i8, ptr %1408, i64 6
  store i8 %1426, ptr %1424, align 1, !tbaa !35
  %1428 = getelementptr inbounds i8, ptr %1409, i64 7
  %1429 = load i8, ptr %1425, align 1, !tbaa !35
  %1430 = getelementptr inbounds i8, ptr %1408, i64 7
  store i8 %1429, ptr %1427, align 1, !tbaa !35
  %1431 = getelementptr inbounds i8, ptr %1409, i64 8
  %1432 = load i8, ptr %1428, align 1, !tbaa !35
  %1433 = getelementptr inbounds i8, ptr %1408, i64 8
  store i8 %1432, ptr %1430, align 1, !tbaa !35
  %1434 = icmp eq ptr %1431, %1345
  br i1 %1434, label %1439, label %1407, !llvm.loop !65

1435:                                             ; preds = %1297, %1294
  %1436 = load ptr, ptr %1120, align 8, !tbaa !36
  %1437 = getelementptr inbounds i8, ptr %1436, i64 %1290
  store ptr %1437, ptr %1120, align 8, !tbaa !36
  %1438 = load ptr, ptr %1123, align 8, !tbaa !46
  br label %1451

1439:                                             ; preds = %1307, %1403, %1407, %1364, %1383, %1337
  %1440 = load ptr, ptr %1120, align 8, !tbaa !36
  %1441 = getelementptr inbounds i8, ptr %1440, i64 %1290
  store ptr %1441, ptr %1120, align 8, !tbaa !36
  %1442 = icmp ugt i64 %1290, 65535
  %1443 = load ptr, ptr %1123, align 8, !tbaa !46
  br i1 %1442, label %1444, label %1451, !prof !47

1444:                                             ; preds = %1439
  store i32 1, ptr %1122, align 8, !tbaa !48
  %1445 = load ptr, ptr %1, align 8, !tbaa !49
  %1446 = ptrtoint ptr %1443 to i64
  %1447 = ptrtoint ptr %1445 to i64
  %1448 = sub i64 %1446, %1447
  %1449 = lshr exact i64 %1448, 3
  %1450 = trunc i64 %1449 to i32
  store i32 %1450, ptr %1124, align 4, !tbaa !50
  br label %1451

1451:                                             ; preds = %1444, %1439, %1435
  %1452 = phi ptr [ %1438, %1435 ], [ %1443, %1444 ], [ %1443, %1439 ]
  %1453 = trunc i64 %1290 to i16
  %1454 = getelementptr inbounds %struct.SeqDef_s, ptr %1452, i64 0, i32 1
  store i16 %1453, ptr %1454, align 4, !tbaa !51
  store i32 1, ptr %1452, align 4, !tbaa !53
  %1455 = add i64 %1286, 1
  %1456 = icmp ugt i64 %1455, 65535
  br i1 %1456, label %1953, label %1967, !prof !54

1457:                                             ; preds = %1193
  %1458 = load i64, ptr %1199, align 1, !tbaa !21
  %1459 = mul i64 %1458, -3523014627327384477
  %1460 = lshr i64 %1459, %1113
  %1461 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1195, i32 %39, ptr nonnull %8, ptr %1196) #11, !srcloc !30
  %1462 = load i64, ptr %1461, align 1, !tbaa !21
  %1463 = icmp eq i64 %1462, %1194
  %1464 = icmp eq ptr %1461, %1196
  %1465 = select i1 %1463, i1 %1464, i1 false
  br i1 %1465, label %1466, label %1562

1466:                                             ; preds = %1457, %1143
  %1467 = phi i64 [ %1162, %1143 ], [ %1460, %1457 ]
  %1468 = phi ptr [ %1146, %1143 ], [ %1196, %1457 ]
  %1469 = phi ptr [ %1148, %1143 ], [ %1198, %1457 ]
  %1470 = phi ptr [ %1149, %1143 ], [ %1199, %1457 ]
  %1471 = phi i64 [ %1150, %1143 ], [ %1200, %1457 ]
  %1472 = phi i64 [ %1156, %1143 ], [ %1206, %1457 ]
  %1473 = phi i32 [ %1158, %1143 ], [ %1208, %1457 ]
  %1474 = getelementptr inbounds i8, ptr %1469, i64 8
  %1475 = getelementptr inbounds i8, ptr %1468, i64 8
  %1476 = icmp ugt ptr %1116, %1474
  br i1 %1476, label %1477, label %1503

1477:                                             ; preds = %1466
  %1478 = load i64, ptr %1475, align 1, !tbaa !21
  %1479 = load i64, ptr %1474, align 1, !tbaa !21
  %1480 = xor i64 %1479, %1478
  %1481 = icmp eq i64 %1480, 0
  br i1 %1481, label %1485, label %1482

1482:                                             ; preds = %1477
  %1483 = call i64 @llvm.cttz.i64(i64 %1480, i1 true), !range !32
  %1484 = lshr i64 %1483, 3
  br label %1540

1485:                                             ; preds = %1477, %1491
  %1486 = phi ptr [ %1489, %1491 ], [ %1475, %1477 ]
  %1487 = phi ptr [ %1488, %1491 ], [ %1474, %1477 ]
  %1488 = getelementptr inbounds i8, ptr %1487, i64 8
  %1489 = getelementptr inbounds i8, ptr %1486, i64 8
  %1490 = icmp ult ptr %1488, %1116
  br i1 %1490, label %1491, label %1503

1491:                                             ; preds = %1485
  %1492 = load i64, ptr %1489, align 1, !tbaa !21
  %1493 = load i64, ptr %1488, align 1, !tbaa !21
  %1494 = xor i64 %1493, %1492
  %1495 = icmp eq i64 %1494, 0
  br i1 %1495, label %1485, label %1496

1496:                                             ; preds = %1491
  %1497 = call i64 @llvm.cttz.i64(i64 %1494, i1 true), !range !32
  %1498 = lshr i64 %1497, 3
  %1499 = getelementptr inbounds i8, ptr %1488, i64 %1498
  %1500 = ptrtoint ptr %1499 to i64
  %1501 = ptrtoint ptr %1474 to i64
  %1502 = sub i64 %1500, %1501
  br label %1540

1503:                                             ; preds = %1485, %1466
  %1504 = phi ptr [ %1475, %1466 ], [ %1489, %1485 ]
  %1505 = phi ptr [ %1474, %1466 ], [ %1488, %1485 ]
  %1506 = icmp ult ptr %1505, %1117
  br i1 %1506, label %1507, label %1514

1507:                                             ; preds = %1503
  %1508 = load i32, ptr %1504, align 1, !tbaa !22
  %1509 = load i32, ptr %1505, align 1, !tbaa !22
  %1510 = icmp eq i32 %1508, %1509
  br i1 %1510, label %1511, label %1514

1511:                                             ; preds = %1507
  %1512 = getelementptr inbounds i8, ptr %1505, i64 4
  %1513 = getelementptr inbounds i8, ptr %1504, i64 4
  br label %1514

1514:                                             ; preds = %1511, %1507, %1503
  %1515 = phi ptr [ %1513, %1511 ], [ %1504, %1507 ], [ %1504, %1503 ]
  %1516 = phi ptr [ %1512, %1511 ], [ %1505, %1507 ], [ %1505, %1503 ]
  %1517 = icmp ult ptr %1516, %1118
  br i1 %1517, label %1518, label %1525

1518:                                             ; preds = %1514
  %1519 = load i16, ptr %1515, align 1, !tbaa !33
  %1520 = load i16, ptr %1516, align 1, !tbaa !33
  %1521 = icmp eq i16 %1519, %1520
  br i1 %1521, label %1522, label %1525

1522:                                             ; preds = %1518
  %1523 = getelementptr inbounds i8, ptr %1516, i64 2
  %1524 = getelementptr inbounds i8, ptr %1515, i64 2
  br label %1525

1525:                                             ; preds = %1522, %1518, %1514
  %1526 = phi ptr [ %1524, %1522 ], [ %1515, %1518 ], [ %1515, %1514 ]
  %1527 = phi ptr [ %1523, %1522 ], [ %1516, %1518 ], [ %1516, %1514 ]
  %1528 = icmp ult ptr %1527, %42
  br i1 %1528, label %1529, label %1535

1529:                                             ; preds = %1525
  %1530 = load i8, ptr %1526, align 1, !tbaa !35
  %1531 = load i8, ptr %1527, align 1, !tbaa !35
  %1532 = icmp eq i8 %1530, %1531
  %1533 = zext i1 %1532 to i64
  %1534 = getelementptr inbounds i8, ptr %1527, i64 %1533
  br label %1535

1535:                                             ; preds = %1529, %1525
  %1536 = phi ptr [ %1527, %1525 ], [ %1534, %1529 ]
  %1537 = ptrtoint ptr %1536 to i64
  %1538 = ptrtoint ptr %1474 to i64
  %1539 = sub i64 %1537, %1538
  br label %1540

1540:                                             ; preds = %1535, %1496, %1482
  %1541 = phi i64 [ %1539, %1535 ], [ %1484, %1482 ], [ %1502, %1496 ]
  %1542 = add i64 %1541, 8
  %1543 = ptrtoint ptr %1468 to i64
  %1544 = sub i64 %1472, %1543
  %1545 = icmp ugt ptr %1469, %1127
  %1546 = icmp ugt ptr %1468, %41
  %1547 = and i1 %1546, %1545
  br i1 %1547, label %1548, label %1768

1548:                                             ; preds = %1540, %1557
  %1549 = phi i64 [ %1558, %1557 ], [ %1542, %1540 ]
  %1550 = phi ptr [ %1552, %1557 ], [ %1469, %1540 ]
  %1551 = phi ptr [ %1554, %1557 ], [ %1468, %1540 ]
  %1552 = getelementptr inbounds i8, ptr %1550, i64 -1
  %1553 = load i8, ptr %1552, align 1, !tbaa !35
  %1554 = getelementptr inbounds i8, ptr %1551, i64 -1
  %1555 = load i8, ptr %1554, align 1, !tbaa !35
  %1556 = icmp eq i8 %1553, %1555
  br i1 %1556, label %1557, label %1768

1557:                                             ; preds = %1548
  %1558 = add i64 %1549, 1
  %1559 = icmp ugt ptr %1552, %1127
  %1560 = icmp ugt ptr %1554, %41
  %1561 = and i1 %1559, %1560
  br i1 %1561, label %1548, label %1768, !llvm.loop !55

1562:                                             ; preds = %1457
  %1563 = getelementptr inbounds i32, ptr %14, i64 %1460
  %1564 = load i32, ptr %1563, align 4, !tbaa !22
  %1565 = zext i32 %1564 to i64
  %1566 = getelementptr inbounds i8, ptr %22, i64 %1565
  %1567 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1205, i32 %39, ptr nonnull %8, ptr %1210) #11, !srcloc !30
  %1568 = load i32, ptr %1567, align 1, !tbaa !22
  %1569 = load i32, ptr %1198, align 1, !tbaa !22
  %1570 = icmp eq i32 %1568, %1569
  %1571 = icmp eq ptr %1567, %1210
  %1572 = select i1 %1570, i1 %1571, i1 false
  br i1 %1572, label %1585, label %1573

1573:                                             ; preds = %1562
  %1574 = icmp ult ptr %1199, %1201
  br i1 %1574, label %1580, label %1575

1575:                                             ; preds = %1573
  %1576 = getelementptr inbounds i8, ptr %1199, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %1576, i32 0, i32 3, i32 1)
  %1577 = getelementptr inbounds i8, ptr %1199, i64 128
  call void @llvm.prefetch.p0(ptr nonnull %1577, i32 0, i32 3, i32 1)
  %1578 = add i64 %1200, 1
  %1579 = getelementptr inbounds i8, ptr %1201, i64 256
  br label %1580

1580:                                             ; preds = %1575, %1573
  %1581 = phi i64 [ %1578, %1575 ], [ %1200, %1573 ]
  %1582 = phi ptr [ %1579, %1575 ], [ %1201, %1573 ]
  %1583 = getelementptr inbounds i8, ptr %1199, i64 %1581
  %1584 = icmp ugt ptr %1583, %43
  br i1 %1584, label %2129, label %1193, !llvm.loop !31

1585:                                             ; preds = %1562, %1168
  %1586 = phi i64 [ %1160, %1168 ], [ %1458, %1562 ]
  %1587 = phi i32 [ %1172, %1168 ], [ %1564, %1562 ]
  %1588 = phi ptr [ %1174, %1168 ], [ %1566, %1562 ]
  %1589 = phi i64 [ %1162, %1168 ], [ %1460, %1562 ]
  %1590 = phi ptr [ %1148, %1168 ], [ %1198, %1562 ]
  %1591 = phi ptr [ %1149, %1168 ], [ %1199, %1562 ]
  %1592 = phi i64 [ %1150, %1168 ], [ %1200, %1562 ]
  %1593 = phi i32 [ %1158, %1168 ], [ %1208, %1562 ]
  %1594 = phi ptr [ %1170, %1168 ], [ %1210, %1562 ]
  %1595 = getelementptr inbounds i8, ptr %1590, i64 4
  %1596 = getelementptr inbounds i8, ptr %1594, i64 4
  %1597 = icmp ugt ptr %1116, %1595
  br i1 %1597, label %1598, label %1624

1598:                                             ; preds = %1585
  %1599 = load i64, ptr %1596, align 1, !tbaa !21
  %1600 = load i64, ptr %1595, align 1, !tbaa !21
  %1601 = xor i64 %1600, %1599
  %1602 = icmp eq i64 %1601, 0
  br i1 %1602, label %1606, label %1603

1603:                                             ; preds = %1598
  %1604 = call i64 @llvm.cttz.i64(i64 %1601, i1 true), !range !32
  %1605 = lshr i64 %1604, 3
  br label %1661

1606:                                             ; preds = %1598, %1612
  %1607 = phi ptr [ %1610, %1612 ], [ %1596, %1598 ]
  %1608 = phi ptr [ %1609, %1612 ], [ %1595, %1598 ]
  %1609 = getelementptr inbounds i8, ptr %1608, i64 8
  %1610 = getelementptr inbounds i8, ptr %1607, i64 8
  %1611 = icmp ult ptr %1609, %1116
  br i1 %1611, label %1612, label %1624

1612:                                             ; preds = %1606
  %1613 = load i64, ptr %1610, align 1, !tbaa !21
  %1614 = load i64, ptr %1609, align 1, !tbaa !21
  %1615 = xor i64 %1614, %1613
  %1616 = icmp eq i64 %1615, 0
  br i1 %1616, label %1606, label %1617

1617:                                             ; preds = %1612
  %1618 = call i64 @llvm.cttz.i64(i64 %1615, i1 true), !range !32
  %1619 = lshr i64 %1618, 3
  %1620 = getelementptr inbounds i8, ptr %1609, i64 %1619
  %1621 = ptrtoint ptr %1620 to i64
  %1622 = ptrtoint ptr %1595 to i64
  %1623 = sub i64 %1621, %1622
  br label %1661

1624:                                             ; preds = %1606, %1585
  %1625 = phi ptr [ %1596, %1585 ], [ %1610, %1606 ]
  %1626 = phi ptr [ %1595, %1585 ], [ %1609, %1606 ]
  %1627 = icmp ult ptr %1626, %1117
  br i1 %1627, label %1628, label %1635

1628:                                             ; preds = %1624
  %1629 = load i32, ptr %1625, align 1, !tbaa !22
  %1630 = load i32, ptr %1626, align 1, !tbaa !22
  %1631 = icmp eq i32 %1629, %1630
  br i1 %1631, label %1632, label %1635

1632:                                             ; preds = %1628
  %1633 = getelementptr inbounds i8, ptr %1626, i64 4
  %1634 = getelementptr inbounds i8, ptr %1625, i64 4
  br label %1635

1635:                                             ; preds = %1632, %1628, %1624
  %1636 = phi ptr [ %1634, %1632 ], [ %1625, %1628 ], [ %1625, %1624 ]
  %1637 = phi ptr [ %1633, %1632 ], [ %1626, %1628 ], [ %1626, %1624 ]
  %1638 = icmp ult ptr %1637, %1118
  br i1 %1638, label %1639, label %1646

1639:                                             ; preds = %1635
  %1640 = load i16, ptr %1636, align 1, !tbaa !33
  %1641 = load i16, ptr %1637, align 1, !tbaa !33
  %1642 = icmp eq i16 %1640, %1641
  br i1 %1642, label %1643, label %1646

1643:                                             ; preds = %1639
  %1644 = getelementptr inbounds i8, ptr %1637, i64 2
  %1645 = getelementptr inbounds i8, ptr %1636, i64 2
  br label %1646

1646:                                             ; preds = %1643, %1639, %1635
  %1647 = phi ptr [ %1645, %1643 ], [ %1636, %1639 ], [ %1636, %1635 ]
  %1648 = phi ptr [ %1644, %1643 ], [ %1637, %1639 ], [ %1637, %1635 ]
  %1649 = icmp ult ptr %1648, %42
  br i1 %1649, label %1650, label %1656

1650:                                             ; preds = %1646
  %1651 = load i8, ptr %1647, align 1, !tbaa !35
  %1652 = load i8, ptr %1648, align 1, !tbaa !35
  %1653 = icmp eq i8 %1651, %1652
  %1654 = zext i1 %1653 to i64
  %1655 = getelementptr inbounds i8, ptr %1648, i64 %1654
  br label %1656

1656:                                             ; preds = %1650, %1646
  %1657 = phi ptr [ %1648, %1646 ], [ %1655, %1650 ]
  %1658 = ptrtoint ptr %1657 to i64
  %1659 = ptrtoint ptr %1595 to i64
  %1660 = sub i64 %1658, %1659
  br label %1661

1661:                                             ; preds = %1656, %1617, %1603
  %1662 = phi i64 [ %1660, %1656 ], [ %1605, %1603 ], [ %1623, %1617 ]
  %1663 = add i64 %1662, 4
  %1664 = ptrtoint ptr %1590 to i64
  %1665 = ptrtoint ptr %1594 to i64
  %1666 = sub i64 %1664, %1665
  %1667 = icmp ugt i32 %1587, %39
  br i1 %1667, label %1668, label %1746

1668:                                             ; preds = %1661
  %1669 = load i64, ptr %1588, align 1, !tbaa !21
  %1670 = icmp eq i64 %1669, %1586
  br i1 %1670, label %1671, label %1746

1671:                                             ; preds = %1668
  %1672 = getelementptr inbounds i8, ptr %1591, i64 8
  %1673 = getelementptr inbounds i8, ptr %1588, i64 8
  %1674 = icmp ugt ptr %1116, %1672
  br i1 %1674, label %1675, label %1701

1675:                                             ; preds = %1671
  %1676 = load i64, ptr %1673, align 1, !tbaa !21
  %1677 = load i64, ptr %1672, align 1, !tbaa !21
  %1678 = xor i64 %1677, %1676
  %1679 = icmp eq i64 %1678, 0
  br i1 %1679, label %1683, label %1680

1680:                                             ; preds = %1675
  %1681 = call i64 @llvm.cttz.i64(i64 %1678, i1 true), !range !32
  %1682 = lshr i64 %1681, 3
  br label %1738

1683:                                             ; preds = %1675, %1689
  %1684 = phi ptr [ %1687, %1689 ], [ %1673, %1675 ]
  %1685 = phi ptr [ %1686, %1689 ], [ %1672, %1675 ]
  %1686 = getelementptr inbounds i8, ptr %1685, i64 8
  %1687 = getelementptr inbounds i8, ptr %1684, i64 8
  %1688 = icmp ult ptr %1686, %1116
  br i1 %1688, label %1689, label %1701

1689:                                             ; preds = %1683
  %1690 = load i64, ptr %1687, align 1, !tbaa !21
  %1691 = load i64, ptr %1686, align 1, !tbaa !21
  %1692 = xor i64 %1691, %1690
  %1693 = icmp eq i64 %1692, 0
  br i1 %1693, label %1683, label %1694

1694:                                             ; preds = %1689
  %1695 = call i64 @llvm.cttz.i64(i64 %1692, i1 true), !range !32
  %1696 = lshr i64 %1695, 3
  %1697 = getelementptr inbounds i8, ptr %1686, i64 %1696
  %1698 = ptrtoint ptr %1697 to i64
  %1699 = ptrtoint ptr %1672 to i64
  %1700 = sub i64 %1698, %1699
  br label %1738

1701:                                             ; preds = %1683, %1671
  %1702 = phi ptr [ %1673, %1671 ], [ %1687, %1683 ]
  %1703 = phi ptr [ %1672, %1671 ], [ %1686, %1683 ]
  %1704 = icmp ult ptr %1703, %1117
  br i1 %1704, label %1705, label %1712

1705:                                             ; preds = %1701
  %1706 = load i32, ptr %1702, align 1, !tbaa !22
  %1707 = load i32, ptr %1703, align 1, !tbaa !22
  %1708 = icmp eq i32 %1706, %1707
  br i1 %1708, label %1709, label %1712

1709:                                             ; preds = %1705
  %1710 = getelementptr inbounds i8, ptr %1703, i64 4
  %1711 = getelementptr inbounds i8, ptr %1702, i64 4
  br label %1712

1712:                                             ; preds = %1709, %1705, %1701
  %1713 = phi ptr [ %1711, %1709 ], [ %1702, %1705 ], [ %1702, %1701 ]
  %1714 = phi ptr [ %1710, %1709 ], [ %1703, %1705 ], [ %1703, %1701 ]
  %1715 = icmp ult ptr %1714, %1118
  br i1 %1715, label %1716, label %1723

1716:                                             ; preds = %1712
  %1717 = load i16, ptr %1713, align 1, !tbaa !33
  %1718 = load i16, ptr %1714, align 1, !tbaa !33
  %1719 = icmp eq i16 %1717, %1718
  br i1 %1719, label %1720, label %1723

1720:                                             ; preds = %1716
  %1721 = getelementptr inbounds i8, ptr %1714, i64 2
  %1722 = getelementptr inbounds i8, ptr %1713, i64 2
  br label %1723

1723:                                             ; preds = %1720, %1716, %1712
  %1724 = phi ptr [ %1722, %1720 ], [ %1713, %1716 ], [ %1713, %1712 ]
  %1725 = phi ptr [ %1721, %1720 ], [ %1714, %1716 ], [ %1714, %1712 ]
  %1726 = icmp ult ptr %1725, %42
  br i1 %1726, label %1727, label %1733

1727:                                             ; preds = %1723
  %1728 = load i8, ptr %1724, align 1, !tbaa !35
  %1729 = load i8, ptr %1725, align 1, !tbaa !35
  %1730 = icmp eq i8 %1728, %1729
  %1731 = zext i1 %1730 to i64
  %1732 = getelementptr inbounds i8, ptr %1725, i64 %1731
  br label %1733

1733:                                             ; preds = %1727, %1723
  %1734 = phi ptr [ %1725, %1723 ], [ %1732, %1727 ]
  %1735 = ptrtoint ptr %1734 to i64
  %1736 = ptrtoint ptr %1672 to i64
  %1737 = sub i64 %1735, %1736
  br label %1738

1738:                                             ; preds = %1733, %1694, %1680
  %1739 = phi i64 [ %1737, %1733 ], [ %1682, %1680 ], [ %1700, %1694 ]
  %1740 = add i64 %1739, 8
  %1741 = icmp ugt i64 %1740, %1663
  br i1 %1741, label %1742, label %1746

1742:                                             ; preds = %1738
  %1743 = ptrtoint ptr %1591 to i64
  %1744 = ptrtoint ptr %1588 to i64
  %1745 = sub i64 %1743, %1744
  br label %1746

1746:                                             ; preds = %1742, %1738, %1668, %1661
  %1747 = phi ptr [ %1594, %1668 ], [ %1594, %1661 ], [ %1588, %1742 ], [ %1594, %1738 ]
  %1748 = phi ptr [ %1590, %1668 ], [ %1590, %1661 ], [ %1591, %1742 ], [ %1590, %1738 ]
  %1749 = phi i64 [ %1666, %1668 ], [ %1666, %1661 ], [ %1745, %1742 ], [ %1666, %1738 ]
  %1750 = phi i64 [ %1663, %1668 ], [ %1663, %1661 ], [ %1740, %1742 ], [ %1663, %1738 ]
  %1751 = icmp ugt ptr %1748, %1127
  %1752 = icmp ugt ptr %1747, %41
  %1753 = and i1 %1752, %1751
  br i1 %1753, label %1754, label %1768

1754:                                             ; preds = %1746, %1763
  %1755 = phi i64 [ %1764, %1763 ], [ %1750, %1746 ]
  %1756 = phi ptr [ %1758, %1763 ], [ %1748, %1746 ]
  %1757 = phi ptr [ %1760, %1763 ], [ %1747, %1746 ]
  %1758 = getelementptr inbounds i8, ptr %1756, i64 -1
  %1759 = load i8, ptr %1758, align 1, !tbaa !35
  %1760 = getelementptr inbounds i8, ptr %1757, i64 -1
  %1761 = load i8, ptr %1760, align 1, !tbaa !35
  %1762 = icmp eq i8 %1759, %1761
  br i1 %1762, label %1763, label %1768

1763:                                             ; preds = %1754
  %1764 = add i64 %1755, 1
  %1765 = icmp ugt ptr %1758, %1127
  %1766 = icmp ugt ptr %1760, %41
  %1767 = and i1 %1765, %1766
  br i1 %1767, label %1754, label %1768, !llvm.loop !56

1768:                                             ; preds = %1763, %1754, %1557, %1548, %1746, %1540
  %1769 = phi i64 [ %1467, %1540 ], [ %1589, %1746 ], [ %1467, %1548 ], [ %1467, %1557 ], [ %1589, %1754 ], [ %1589, %1763 ]
  %1770 = phi ptr [ %1470, %1540 ], [ %1591, %1746 ], [ %1470, %1548 ], [ %1470, %1557 ], [ %1591, %1754 ], [ %1591, %1763 ]
  %1771 = phi i64 [ %1471, %1540 ], [ %1592, %1746 ], [ %1471, %1548 ], [ %1471, %1557 ], [ %1592, %1754 ], [ %1592, %1763 ]
  %1772 = phi i32 [ %1473, %1540 ], [ %1593, %1746 ], [ %1473, %1548 ], [ %1473, %1557 ], [ %1593, %1754 ], [ %1593, %1763 ]
  %1773 = phi ptr [ %1469, %1540 ], [ %1748, %1746 ], [ %1552, %1557 ], [ %1550, %1548 ], [ %1758, %1763 ], [ %1756, %1754 ]
  %1774 = phi i64 [ %1544, %1540 ], [ %1749, %1746 ], [ %1544, %1548 ], [ %1544, %1557 ], [ %1749, %1754 ], [ %1749, %1763 ]
  %1775 = phi i64 [ %1542, %1540 ], [ %1750, %1746 ], [ %1558, %1557 ], [ %1549, %1548 ], [ %1764, %1763 ], [ %1755, %1754 ]
  %1776 = trunc i64 %1774 to i32
  %1777 = icmp ult i64 %1771, 4
  br i1 %1777, label %1778, label %1783

1778:                                             ; preds = %1768
  %1779 = ptrtoint ptr %1770 to i64
  %1780 = sub i64 %1779, %24
  %1781 = trunc i64 %1780 to i32
  %1782 = getelementptr inbounds i32, ptr %14, i64 %1769
  store i32 %1781, ptr %1782, align 4, !tbaa !22
  br label %1783

1783:                                             ; preds = %1778, %1768
  %1784 = ptrtoint ptr %1773 to i64
  %1785 = ptrtoint ptr %1127 to i64
  %1786 = sub i64 %1784, %1785
  %1787 = add i32 %1776, 3
  %1788 = getelementptr inbounds i8, ptr %1127, i64 %1786
  %1789 = icmp ugt ptr %1788, %1119
  %1790 = load ptr, ptr %1120, align 8, !tbaa !36
  br i1 %1789, label %1814, label %1791

1791:                                             ; preds = %1783
  %1792 = load <2 x i64>, ptr %1127, align 1, !tbaa !35
  store <2 x i64> %1792, ptr %1790, align 1, !tbaa !35
  %1793 = icmp ugt i64 %1786, 16
  br i1 %1793, label %1794, label %1931

1794:                                             ; preds = %1791
  %1795 = load ptr, ptr %1120, align 8, !tbaa !36
  %1796 = getelementptr inbounds i8, ptr %1795, i64 16
  %1797 = getelementptr inbounds i8, ptr %1127, i64 16
  %1798 = add i64 %1786, -16
  %1799 = getelementptr inbounds i8, ptr %1795, i64 %1786
  %1800 = load <2 x i64>, ptr %1797, align 1, !tbaa !35
  store <2 x i64> %1800, ptr %1796, align 1, !tbaa !35
  %1801 = icmp ult i64 %1798, 17
  br i1 %1801, label %1931, label %1802

1802:                                             ; preds = %1794
  %1803 = getelementptr inbounds i8, ptr %1795, i64 32
  br label %1804

1804:                                             ; preds = %1804, %1802
  %1805 = phi ptr [ %1803, %1802 ], [ %1812, %1804 ]
  %1806 = phi ptr [ %1797, %1802 ], [ %1810, %1804 ]
  %1807 = getelementptr inbounds i8, ptr %1806, i64 16
  %1808 = load <2 x i64>, ptr %1807, align 1, !tbaa !35
  store <2 x i64> %1808, ptr %1805, align 1, !tbaa !35
  %1809 = getelementptr inbounds i8, ptr %1805, i64 16
  %1810 = getelementptr inbounds i8, ptr %1806, i64 32
  %1811 = load <2 x i64>, ptr %1810, align 1, !tbaa !35
  store <2 x i64> %1811, ptr %1809, align 1, !tbaa !35
  %1812 = getelementptr inbounds i8, ptr %1805, i64 32
  %1813 = icmp ult ptr %1812, %1799
  br i1 %1813, label %1804, label %1935, !llvm.loop !38

1814:                                             ; preds = %1783
  %1815 = ptrtoint ptr %1788 to i64
  %1816 = icmp ugt ptr %1127, %1119
  br i1 %1816, label %1834, label %1817

1817:                                             ; preds = %1814
  %1818 = sub i64 %1121, %1785
  %1819 = getelementptr inbounds i8, ptr %1790, i64 %1818
  %1820 = load <2 x i64>, ptr %1127, align 1, !tbaa !35
  store <2 x i64> %1820, ptr %1790, align 1, !tbaa !35
  %1821 = icmp ult i64 %1818, 17
  br i1 %1821, label %1834, label %1822

1822:                                             ; preds = %1817
  %1823 = getelementptr inbounds i8, ptr %1790, i64 16
  br label %1824

1824:                                             ; preds = %1824, %1822
  %1825 = phi ptr [ %1823, %1822 ], [ %1832, %1824 ]
  %1826 = phi ptr [ %1127, %1822 ], [ %1830, %1824 ]
  %1827 = getelementptr inbounds i8, ptr %1826, i64 16
  %1828 = load <2 x i64>, ptr %1827, align 1, !tbaa !35
  store <2 x i64> %1828, ptr %1825, align 1, !tbaa !35
  %1829 = getelementptr inbounds i8, ptr %1825, i64 16
  %1830 = getelementptr inbounds i8, ptr %1826, i64 32
  %1831 = load <2 x i64>, ptr %1830, align 1, !tbaa !35
  store <2 x i64> %1831, ptr %1829, align 1, !tbaa !35
  %1832 = getelementptr inbounds i8, ptr %1825, i64 32
  %1833 = icmp ult ptr %1832, %1819
  br i1 %1833, label %1824, label %1834, !llvm.loop !38

1834:                                             ; preds = %1824, %1817, %1814
  %1835 = phi ptr [ %1119, %1817 ], [ %1127, %1814 ], [ %1119, %1824 ]
  %1836 = phi ptr [ %1819, %1817 ], [ %1790, %1814 ], [ %1819, %1824 ]
  %1837 = icmp ult ptr %1835, %1788
  br i1 %1837, label %1838, label %1935

1838:                                             ; preds = %1834
  %1839 = ptrtoint ptr %1836 to i64
  %1840 = ptrtoint ptr %1835 to i64
  %1841 = sub i64 %1815, %1840
  %1842 = getelementptr i8, ptr %1835, i64 %1841
  %1843 = icmp ult i64 %1841, 8
  %1844 = sub i64 %1839, %1840
  %1845 = icmp ult i64 %1844, 32
  %1846 = select i1 %1843, i1 true, i1 %1845
  br i1 %1846, label %1882, label %1847

1847:                                             ; preds = %1838
  %1848 = icmp ult i64 %1841, 32
  br i1 %1848, label %1868, label %1849

1849:                                             ; preds = %1847
  %1850 = and i64 %1841, -32
  br label %1851

1851:                                             ; preds = %1851, %1849
  %1852 = phi i64 [ 0, %1849 ], [ %1859, %1851 ]
  %1853 = getelementptr i8, ptr %1836, i64 %1852
  %1854 = getelementptr i8, ptr %1835, i64 %1852
  %1855 = getelementptr i8, ptr %1854, i64 16
  %1856 = load <16 x i8>, ptr %1854, align 1, !tbaa !35
  %1857 = load <16 x i8>, ptr %1855, align 1, !tbaa !35
  %1858 = getelementptr i8, ptr %1853, i64 16
  store <16 x i8> %1856, ptr %1853, align 1, !tbaa !35
  store <16 x i8> %1857, ptr %1858, align 1, !tbaa !35
  %1859 = add nuw i64 %1852, 32
  %1860 = icmp eq i64 %1859, %1850
  br i1 %1860, label %1861, label %1851, !llvm.loop !66

1861:                                             ; preds = %1851
  %1862 = icmp eq i64 %1841, %1850
  br i1 %1862, label %1935, label %1863

1863:                                             ; preds = %1861
  %1864 = getelementptr i8, ptr %1835, i64 %1850
  %1865 = getelementptr i8, ptr %1836, i64 %1850
  %1866 = and i64 %1841, 24
  %1867 = icmp eq i64 %1866, 0
  br i1 %1867, label %1882, label %1868

1868:                                             ; preds = %1847, %1863
  %1869 = phi i64 [ %1850, %1863 ], [ 0, %1847 ]
  %1870 = and i64 %1841, -8
  %1871 = getelementptr i8, ptr %1836, i64 %1870
  %1872 = getelementptr i8, ptr %1835, i64 %1870
  br label %1873

1873:                                             ; preds = %1873, %1868
  %1874 = phi i64 [ %1869, %1868 ], [ %1878, %1873 ]
  %1875 = getelementptr i8, ptr %1836, i64 %1874
  %1876 = getelementptr i8, ptr %1835, i64 %1874
  %1877 = load <8 x i8>, ptr %1876, align 1, !tbaa !35
  store <8 x i8> %1877, ptr %1875, align 1, !tbaa !35
  %1878 = add nuw i64 %1874, 8
  %1879 = icmp eq i64 %1878, %1870
  br i1 %1879, label %1880, label %1873, !llvm.loop !67

1880:                                             ; preds = %1873
  %1881 = icmp eq i64 %1841, %1870
  br i1 %1881, label %1935, label %1882

1882:                                             ; preds = %1838, %1863, %1880
  %1883 = phi ptr [ %1836, %1838 ], [ %1865, %1863 ], [ %1871, %1880 ]
  %1884 = phi ptr [ %1835, %1838 ], [ %1864, %1863 ], [ %1872, %1880 ]
  %1885 = ptrtoint ptr %1884 to i64
  %1886 = sub i64 %1784, %1885
  %1887 = and i64 %1886, 7
  %1888 = icmp eq i64 %1887, 0
  br i1 %1888, label %1898, label %1889

1889:                                             ; preds = %1882, %1889
  %1890 = phi ptr [ %1895, %1889 ], [ %1883, %1882 ]
  %1891 = phi ptr [ %1893, %1889 ], [ %1884, %1882 ]
  %1892 = phi i64 [ %1896, %1889 ], [ 0, %1882 ]
  %1893 = getelementptr inbounds i8, ptr %1891, i64 1
  %1894 = load i8, ptr %1891, align 1, !tbaa !35
  %1895 = getelementptr inbounds i8, ptr %1890, i64 1
  store i8 %1894, ptr %1890, align 1, !tbaa !35
  %1896 = add i64 %1892, 1
  %1897 = icmp eq i64 %1896, %1887
  br i1 %1897, label %1898, label %1889, !llvm.loop !68

1898:                                             ; preds = %1889, %1882
  %1899 = phi ptr [ %1883, %1882 ], [ %1895, %1889 ]
  %1900 = phi ptr [ %1884, %1882 ], [ %1893, %1889 ]
  %1901 = sub i64 %1885, %1784
  %1902 = icmp ugt i64 %1901, -8
  br i1 %1902, label %1935, label %1903

1903:                                             ; preds = %1898, %1903
  %1904 = phi ptr [ %1929, %1903 ], [ %1899, %1898 ]
  %1905 = phi ptr [ %1927, %1903 ], [ %1900, %1898 ]
  %1906 = getelementptr inbounds i8, ptr %1905, i64 1
  %1907 = load i8, ptr %1905, align 1, !tbaa !35
  %1908 = getelementptr inbounds i8, ptr %1904, i64 1
  store i8 %1907, ptr %1904, align 1, !tbaa !35
  %1909 = getelementptr inbounds i8, ptr %1905, i64 2
  %1910 = load i8, ptr %1906, align 1, !tbaa !35
  %1911 = getelementptr inbounds i8, ptr %1904, i64 2
  store i8 %1910, ptr %1908, align 1, !tbaa !35
  %1912 = getelementptr inbounds i8, ptr %1905, i64 3
  %1913 = load i8, ptr %1909, align 1, !tbaa !35
  %1914 = getelementptr inbounds i8, ptr %1904, i64 3
  store i8 %1913, ptr %1911, align 1, !tbaa !35
  %1915 = getelementptr inbounds i8, ptr %1905, i64 4
  %1916 = load i8, ptr %1912, align 1, !tbaa !35
  %1917 = getelementptr inbounds i8, ptr %1904, i64 4
  store i8 %1916, ptr %1914, align 1, !tbaa !35
  %1918 = getelementptr inbounds i8, ptr %1905, i64 5
  %1919 = load i8, ptr %1915, align 1, !tbaa !35
  %1920 = getelementptr inbounds i8, ptr %1904, i64 5
  store i8 %1919, ptr %1917, align 1, !tbaa !35
  %1921 = getelementptr inbounds i8, ptr %1905, i64 6
  %1922 = load i8, ptr %1918, align 1, !tbaa !35
  %1923 = getelementptr inbounds i8, ptr %1904, i64 6
  store i8 %1922, ptr %1920, align 1, !tbaa !35
  %1924 = getelementptr inbounds i8, ptr %1905, i64 7
  %1925 = load i8, ptr %1921, align 1, !tbaa !35
  %1926 = getelementptr inbounds i8, ptr %1904, i64 7
  store i8 %1925, ptr %1923, align 1, !tbaa !35
  %1927 = getelementptr inbounds i8, ptr %1905, i64 8
  %1928 = load i8, ptr %1924, align 1, !tbaa !35
  %1929 = getelementptr inbounds i8, ptr %1904, i64 8
  store i8 %1928, ptr %1926, align 1, !tbaa !35
  %1930 = icmp eq ptr %1927, %1842
  br i1 %1930, label %1935, label %1903, !llvm.loop !69

1931:                                             ; preds = %1794, %1791
  %1932 = load ptr, ptr %1120, align 8, !tbaa !36
  %1933 = getelementptr inbounds i8, ptr %1932, i64 %1786
  store ptr %1933, ptr %1120, align 8, !tbaa !36
  %1934 = load ptr, ptr %1123, align 8, !tbaa !46
  br label %1947

1935:                                             ; preds = %1804, %1898, %1903, %1861, %1880, %1834
  %1936 = load ptr, ptr %1120, align 8, !tbaa !36
  %1937 = getelementptr inbounds i8, ptr %1936, i64 %1786
  store ptr %1937, ptr %1120, align 8, !tbaa !36
  %1938 = icmp ugt i64 %1786, 65535
  %1939 = load ptr, ptr %1123, align 8, !tbaa !46
  br i1 %1938, label %1940, label %1947, !prof !47

1940:                                             ; preds = %1935
  store i32 1, ptr %1122, align 8, !tbaa !48
  %1941 = load ptr, ptr %1, align 8, !tbaa !49
  %1942 = ptrtoint ptr %1939 to i64
  %1943 = ptrtoint ptr %1941 to i64
  %1944 = sub i64 %1942, %1943
  %1945 = lshr exact i64 %1944, 3
  %1946 = trunc i64 %1945 to i32
  store i32 %1946, ptr %1124, align 4, !tbaa !50
  br label %1947

1947:                                             ; preds = %1940, %1935, %1931
  %1948 = phi ptr [ %1934, %1931 ], [ %1939, %1940 ], [ %1939, %1935 ]
  %1949 = trunc i64 %1786 to i16
  %1950 = getelementptr inbounds %struct.SeqDef_s, ptr %1948, i64 0, i32 1
  store i16 %1949, ptr %1950, align 4, !tbaa !51
  store i32 %1787, ptr %1948, align 4, !tbaa !53
  %1951 = add i64 %1775, -3
  %1952 = icmp ugt i64 %1951, 65535
  br i1 %1952, label %1953, label %1967, !prof !54

1953:                                             ; preds = %1947, %1451
  %1954 = phi ptr [ %1452, %1451 ], [ %1948, %1947 ]
  %1955 = phi i64 [ %1455, %1451 ], [ %1951, %1947 ]
  %1956 = phi i32 [ %1208, %1451 ], [ %1772, %1947 ]
  %1957 = phi ptr [ %1212, %1451 ], [ %1773, %1947 ]
  %1958 = phi i64 [ %1287, %1451 ], [ %1775, %1947 ]
  %1959 = phi i32 [ %1129, %1451 ], [ %1131, %1947 ]
  %1960 = phi i32 [ %1131, %1451 ], [ %1776, %1947 ]
  store i32 2, ptr %1122, align 8, !tbaa !48
  %1961 = load ptr, ptr %1, align 8, !tbaa !49
  %1962 = ptrtoint ptr %1954 to i64
  %1963 = ptrtoint ptr %1961 to i64
  %1964 = sub i64 %1962, %1963
  %1965 = lshr exact i64 %1964, 3
  %1966 = trunc i64 %1965 to i32
  store i32 %1966, ptr %1124, align 4, !tbaa !50
  br label %1967

1967:                                             ; preds = %1953, %1947, %1451
  %1968 = phi i64 [ %1455, %1451 ], [ %1951, %1947 ], [ %1955, %1953 ]
  %1969 = phi ptr [ %1452, %1451 ], [ %1948, %1947 ], [ %1954, %1953 ]
  %1970 = phi i32 [ %1208, %1451 ], [ %1772, %1947 ], [ %1956, %1953 ]
  %1971 = phi ptr [ %1212, %1451 ], [ %1773, %1947 ], [ %1957, %1953 ]
  %1972 = phi i64 [ %1287, %1451 ], [ %1775, %1947 ], [ %1958, %1953 ]
  %1973 = phi i32 [ %1129, %1451 ], [ %1131, %1947 ], [ %1959, %1953 ]
  %1974 = phi i32 [ %1131, %1451 ], [ %1776, %1947 ], [ %1960, %1953 ]
  %1975 = trunc i64 %1968 to i16
  %1976 = getelementptr inbounds %struct.SeqDef_s, ptr %1969, i64 0, i32 2
  store i16 %1975, ptr %1976, align 2, !tbaa !61
  %1977 = getelementptr inbounds %struct.SeqDef_s, ptr %1969, i64 1
  store ptr %1977, ptr %1123, align 8, !tbaa !46
  %1978 = getelementptr inbounds i8, ptr %1971, i64 %1972
  %1979 = icmp ugt ptr %1978, %43
  br i1 %1979, label %2123, label %1980

1980:                                             ; preds = %1967
  %1981 = add i32 %1970, 2
  %1982 = zext i32 %1981 to i64
  %1983 = getelementptr inbounds i8, ptr %22, i64 %1982
  %1984 = load i64, ptr %1983, align 1, !tbaa !21
  %1985 = mul i64 %1984, -3523014627327384477
  %1986 = lshr i64 %1985, %1113
  %1987 = getelementptr inbounds i32, ptr %14, i64 %1986
  store i32 %1981, ptr %1987, align 4, !tbaa !22
  %1988 = getelementptr inbounds i8, ptr %1978, i64 -2
  %1989 = ptrtoint ptr %1988 to i64
  %1990 = sub i64 %1989, %24
  %1991 = trunc i64 %1990 to i32
  %1992 = load i64, ptr %1988, align 1, !tbaa !21
  %1993 = mul i64 %1992, -3523014627327384477
  %1994 = lshr i64 %1993, %1113
  %1995 = getelementptr inbounds i32, ptr %14, i64 %1994
  store i32 %1991, ptr %1995, align 4, !tbaa !22
  %1996 = mul i64 %1984, -3523014627271114752
  %1997 = lshr i64 %1996, %1115
  %1998 = getelementptr inbounds i32, ptr %18, i64 %1997
  store i32 %1981, ptr %1998, align 4, !tbaa !22
  %1999 = getelementptr inbounds i8, ptr %1978, i64 -1
  %2000 = ptrtoint ptr %1999 to i64
  %2001 = sub i64 %2000, %24
  %2002 = trunc i64 %2001 to i32
  %2003 = load i64, ptr %1999, align 1, !tbaa !21
  %2004 = mul i64 %2003, -3523014627271114752
  %2005 = lshr i64 %2004, %1115
  %2006 = getelementptr inbounds i32, ptr %18, i64 %2005
  store i32 %2002, ptr %2006, align 4, !tbaa !22
  br label %2007

2007:                                             ; preds = %2117, %1980
  %2008 = phi ptr [ %1977, %1980 ], [ %2120, %2117 ]
  %2009 = phi ptr [ %1978, %1980 ], [ %2121, %2117 ]
  %2010 = phi i32 [ %1974, %1980 ], [ %2011, %2117 ]
  %2011 = phi i32 [ %1973, %1980 ], [ %2010, %2117 ]
  %2012 = icmp ne i32 %2011, 0
  %2013 = load i32, ptr %2009, align 1, !tbaa !22
  %2014 = zext i32 %2011 to i64
  %2015 = sub nsw i64 0, %2014
  %2016 = getelementptr inbounds i8, ptr %2009, i64 %2015
  %2017 = load i32, ptr %2016, align 1, !tbaa !22
  %2018 = icmp eq i32 %2013, %2017
  %2019 = and i1 %2012, %2018
  br i1 %2019, label %2020, label %2123

2020:                                             ; preds = %2007
  %2021 = getelementptr inbounds i8, ptr %2009, i64 4
  %2022 = getelementptr inbounds i8, ptr %2021, i64 %2015
  %2023 = icmp ugt ptr %1116, %2021
  br i1 %2023, label %2024, label %2050

2024:                                             ; preds = %2020
  %2025 = load i64, ptr %2022, align 1, !tbaa !21
  %2026 = load i64, ptr %2021, align 1, !tbaa !21
  %2027 = xor i64 %2026, %2025
  %2028 = icmp eq i64 %2027, 0
  br i1 %2028, label %2032, label %2029

2029:                                             ; preds = %2024
  %2030 = call i64 @llvm.cttz.i64(i64 %2027, i1 true), !range !32
  %2031 = lshr i64 %2030, 3
  br label %2087

2032:                                             ; preds = %2024, %2038
  %2033 = phi ptr [ %2036, %2038 ], [ %2022, %2024 ]
  %2034 = phi ptr [ %2035, %2038 ], [ %2021, %2024 ]
  %2035 = getelementptr inbounds i8, ptr %2034, i64 8
  %2036 = getelementptr inbounds i8, ptr %2033, i64 8
  %2037 = icmp ult ptr %2035, %1116
  br i1 %2037, label %2038, label %2050

2038:                                             ; preds = %2032
  %2039 = load i64, ptr %2036, align 1, !tbaa !21
  %2040 = load i64, ptr %2035, align 1, !tbaa !21
  %2041 = xor i64 %2040, %2039
  %2042 = icmp eq i64 %2041, 0
  br i1 %2042, label %2032, label %2043

2043:                                             ; preds = %2038
  %2044 = call i64 @llvm.cttz.i64(i64 %2041, i1 true), !range !32
  %2045 = lshr i64 %2044, 3
  %2046 = getelementptr inbounds i8, ptr %2035, i64 %2045
  %2047 = ptrtoint ptr %2046 to i64
  %2048 = ptrtoint ptr %2021 to i64
  %2049 = sub i64 %2047, %2048
  br label %2087

2050:                                             ; preds = %2032, %2020
  %2051 = phi ptr [ %2022, %2020 ], [ %2036, %2032 ]
  %2052 = phi ptr [ %2021, %2020 ], [ %2035, %2032 ]
  %2053 = icmp ult ptr %2052, %1117
  br i1 %2053, label %2054, label %2061

2054:                                             ; preds = %2050
  %2055 = load i32, ptr %2051, align 1, !tbaa !22
  %2056 = load i32, ptr %2052, align 1, !tbaa !22
  %2057 = icmp eq i32 %2055, %2056
  br i1 %2057, label %2058, label %2061

2058:                                             ; preds = %2054
  %2059 = getelementptr inbounds i8, ptr %2052, i64 4
  %2060 = getelementptr inbounds i8, ptr %2051, i64 4
  br label %2061

2061:                                             ; preds = %2058, %2054, %2050
  %2062 = phi ptr [ %2060, %2058 ], [ %2051, %2054 ], [ %2051, %2050 ]
  %2063 = phi ptr [ %2059, %2058 ], [ %2052, %2054 ], [ %2052, %2050 ]
  %2064 = icmp ult ptr %2063, %1118
  br i1 %2064, label %2065, label %2072

2065:                                             ; preds = %2061
  %2066 = load i16, ptr %2062, align 1, !tbaa !33
  %2067 = load i16, ptr %2063, align 1, !tbaa !33
  %2068 = icmp eq i16 %2066, %2067
  br i1 %2068, label %2069, label %2072

2069:                                             ; preds = %2065
  %2070 = getelementptr inbounds i8, ptr %2063, i64 2
  %2071 = getelementptr inbounds i8, ptr %2062, i64 2
  br label %2072

2072:                                             ; preds = %2069, %2065, %2061
  %2073 = phi ptr [ %2071, %2069 ], [ %2062, %2065 ], [ %2062, %2061 ]
  %2074 = phi ptr [ %2070, %2069 ], [ %2063, %2065 ], [ %2063, %2061 ]
  %2075 = icmp ult ptr %2074, %42
  br i1 %2075, label %2076, label %2082

2076:                                             ; preds = %2072
  %2077 = load i8, ptr %2073, align 1, !tbaa !35
  %2078 = load i8, ptr %2074, align 1, !tbaa !35
  %2079 = icmp eq i8 %2077, %2078
  %2080 = zext i1 %2079 to i64
  %2081 = getelementptr inbounds i8, ptr %2074, i64 %2080
  br label %2082

2082:                                             ; preds = %2076, %2072
  %2083 = phi ptr [ %2074, %2072 ], [ %2081, %2076 ]
  %2084 = ptrtoint ptr %2083 to i64
  %2085 = ptrtoint ptr %2021 to i64
  %2086 = sub i64 %2084, %2085
  br label %2087

2087:                                             ; preds = %2082, %2043, %2029
  %2088 = phi i64 [ %2086, %2082 ], [ %2031, %2029 ], [ %2049, %2043 ]
  %2089 = add i64 %2088, 4
  %2090 = ptrtoint ptr %2009 to i64
  %2091 = sub i64 %2090, %24
  %2092 = trunc i64 %2091 to i32
  %2093 = load i64, ptr %2009, align 1, !tbaa !21
  %2094 = mul i64 %2093, -3523014627271114752
  %2095 = lshr i64 %2094, %1115
  %2096 = getelementptr inbounds i32, ptr %18, i64 %2095
  store i32 %2092, ptr %2096, align 4, !tbaa !22
  %2097 = mul i64 %2093, -3523014627327384477
  %2098 = lshr i64 %2097, %1113
  %2099 = getelementptr inbounds i32, ptr %14, i64 %2098
  store i32 %2092, ptr %2099, align 4, !tbaa !22
  %2100 = icmp ugt ptr %2009, %1119
  br i1 %2100, label %2105, label %2101

2101:                                             ; preds = %2087
  %2102 = load ptr, ptr %1120, align 8, !tbaa !36
  %2103 = load <2 x i64>, ptr %2009, align 1, !tbaa !35
  store <2 x i64> %2103, ptr %2102, align 1, !tbaa !35
  %2104 = load ptr, ptr %1123, align 8, !tbaa !46
  br label %2105

2105:                                             ; preds = %2101, %2087
  %2106 = phi ptr [ %2008, %2087 ], [ %2104, %2101 ]
  %2107 = getelementptr inbounds %struct.SeqDef_s, ptr %2106, i64 0, i32 1
  store i16 0, ptr %2107, align 4, !tbaa !51
  store i32 1, ptr %2106, align 4, !tbaa !53
  %2108 = add i64 %2088, 1
  %2109 = icmp ugt i64 %2108, 65535
  br i1 %2109, label %2110, label %2117, !prof !54

2110:                                             ; preds = %2105
  store i32 2, ptr %1122, align 8, !tbaa !48
  %2111 = load ptr, ptr %1, align 8, !tbaa !49
  %2112 = ptrtoint ptr %2106 to i64
  %2113 = ptrtoint ptr %2111 to i64
  %2114 = sub i64 %2112, %2113
  %2115 = lshr exact i64 %2114, 3
  %2116 = trunc i64 %2115 to i32
  store i32 %2116, ptr %1124, align 4, !tbaa !50
  br label %2117

2117:                                             ; preds = %2110, %2105
  %2118 = trunc i64 %2108 to i16
  %2119 = getelementptr inbounds %struct.SeqDef_s, ptr %2106, i64 0, i32 2
  store i16 %2118, ptr %2119, align 2, !tbaa !61
  %2120 = getelementptr inbounds %struct.SeqDef_s, ptr %2106, i64 1
  store ptr %2120, ptr %1123, align 8, !tbaa !46
  %2121 = getelementptr inbounds i8, ptr %2009, i64 %2089
  %2122 = icmp ugt ptr %2121, %43
  br i1 %2122, label %2123, label %2007

2123:                                             ; preds = %2117, %2007, %1967
  %2124 = phi i32 [ %1973, %1967 ], [ %2011, %2007 ], [ %2010, %2117 ]
  %2125 = phi i32 [ %1974, %1967 ], [ %2010, %2007 ], [ %2011, %2117 ]
  %2126 = phi ptr [ %1978, %1967 ], [ %2009, %2007 ], [ %2121, %2117 ]
  %2127 = getelementptr inbounds i8, ptr %2126, i64 1
  %2128 = icmp ugt ptr %2127, %43
  br i1 %2128, label %2129, label %1125

2129:                                             ; preds = %2123, %1580, %1188, %1110
  %2130 = phi i32 [ %60, %1110 ], [ %1129, %1188 ], [ %1129, %1580 ], [ %2124, %2123 ]
  %2131 = phi i32 [ %62, %1110 ], [ 0, %1188 ], [ %1131, %1580 ], [ %2125, %2123 ]
  %2132 = phi ptr [ %3, %1110 ], [ %1127, %1188 ], [ %1127, %1580 ], [ %2126, %2123 ]
  %2133 = select i1 %61, i32 %44, i32 0
  %2134 = select i1 %59, i32 %46, i32 0
  %2135 = icmp ne i32 %2133, 0
  %2136 = icmp ne i32 %2131, 0
  %2137 = select i1 %2135, i1 %2136, i1 false
  %2138 = select i1 %2137, i32 %2133, i32 %2134
  %2139 = select i1 %2136, i32 %2131, i32 %2133
  store i32 %2139, ptr %2, align 4, !tbaa !22
  %2140 = icmp eq i32 %2130, 0
  %2141 = select i1 %2140, i32 %2138, i32 %2130
  store i32 %2141, ptr %45, align 4, !tbaa !22
  %2142 = ptrtoint ptr %42 to i64
  %2143 = ptrtoint ptr %2132 to i64
  %2144 = sub i64 %2142, %2143
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %8) #10
  br label %4215

2145:                                             ; preds = %5
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %7) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %7, ptr noundef nonnull align 1 dereferenceable(10) @__const.ZSTD_compressBlock_doubleFast_noDict_generic.dummy, i64 10, i1 false)
  br i1 %64, label %3164, label %2146

2146:                                             ; preds = %2145
  %2147 = sub i32 64, %16
  %2148 = zext nneg i32 %2147 to i64
  %2149 = sub i32 64, %20
  %2150 = zext nneg i32 %2149 to i64
  %2151 = getelementptr inbounds i8, ptr %42, i64 -7
  %2152 = getelementptr inbounds i8, ptr %42, i64 -3
  %2153 = getelementptr inbounds i8, ptr %42, i64 -1
  %2154 = getelementptr inbounds i8, ptr %42, i64 -32
  %2155 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %2156 = ptrtoint ptr %2154 to i64
  %2157 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %2158 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %2159 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  br label %2160

2160:                                             ; preds = %3158, %2146
  %2161 = phi ptr [ %63, %2146 ], [ %3162, %3158 ]
  %2162 = phi ptr [ %3, %2146 ], [ %3161, %3158 ]
  %2163 = phi i32 [ %62, %2146 ], [ %3160, %3158 ]
  %2164 = phi i32 [ %60, %2146 ], [ %3159, %3158 ]
  %2165 = phi ptr [ %49, %2146 ], [ %3161, %3158 ]
  %2166 = freeze i32 %2163
  %2167 = getelementptr inbounds i8, ptr %2165, i64 256
  %2168 = load i64, ptr %2165, align 1, !tbaa !21
  %2169 = mul i64 %2168, -3523014627327384477
  %2170 = lshr i64 %2169, %2148
  %2171 = getelementptr inbounds i32, ptr %14, i64 %2170
  %2172 = load i32, ptr %2171, align 4, !tbaa !22
  %2173 = zext i32 %2172 to i64
  %2174 = getelementptr inbounds i8, ptr %22, i64 %2173
  %2175 = icmp eq i32 %2166, 0
  %2176 = zext i32 %2166 to i64
  %2177 = sub nsw i64 0, %2176
  br i1 %2175, label %2178, label %2228

2178:                                             ; preds = %2160, %2223
  %2179 = phi i64 [ %2195, %2223 ], [ %2168, %2160 ]
  %2180 = phi i32 [ %2207, %2223 ], [ %2172, %2160 ]
  %2181 = phi ptr [ %2209, %2223 ], [ %2174, %2160 ]
  %2182 = phi i64 [ %2197, %2223 ], [ %2170, %2160 ]
  %2183 = phi ptr [ %2184, %2223 ], [ %2165, %2160 ]
  %2184 = phi ptr [ %2226, %2223 ], [ %2161, %2160 ]
  %2185 = phi i64 [ %2224, %2223 ], [ 1, %2160 ]
  %2186 = phi ptr [ %2225, %2223 ], [ %2167, %2160 ]
  %2187 = mul i64 %2179, -3523014627193847808
  %2188 = lshr i64 %2187, %2150
  %2189 = getelementptr inbounds i32, ptr %18, i64 %2188
  %2190 = load i32, ptr %2189, align 4, !tbaa !22
  %2191 = ptrtoint ptr %2183 to i64
  %2192 = sub i64 %2191, %24
  %2193 = trunc i64 %2192 to i32
  store i32 %2193, ptr %2189, align 4, !tbaa !22
  %2194 = getelementptr inbounds i32, ptr %14, i64 %2182
  store i32 %2193, ptr %2194, align 4, !tbaa !22
  %2195 = load i64, ptr %2184, align 1, !tbaa !21
  %2196 = mul i64 %2195, -3523014627327384477
  %2197 = lshr i64 %2196, %2148
  %2198 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %2180, i32 %39, ptr nonnull %7, ptr %2181) #11, !srcloc !30
  %2199 = load i64, ptr %2198, align 1, !tbaa !21
  %2200 = icmp eq i64 %2199, %2179
  %2201 = icmp eq ptr %2198, %2181
  %2202 = select i1 %2200, i1 %2201, i1 false
  br i1 %2202, label %2501, label %2203

2203:                                             ; preds = %2178
  %2204 = zext i32 %2190 to i64
  %2205 = getelementptr inbounds i8, ptr %22, i64 %2204
  %2206 = getelementptr inbounds i32, ptr %14, i64 %2197
  %2207 = load i32, ptr %2206, align 4, !tbaa !22
  %2208 = zext i32 %2207 to i64
  %2209 = getelementptr inbounds i8, ptr %22, i64 %2208
  %2210 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %2190, i32 %39, ptr nonnull %7, ptr %2205) #11, !srcloc !30
  %2211 = load i32, ptr %2210, align 1, !tbaa !22
  %2212 = load i32, ptr %2183, align 1, !tbaa !22
  %2213 = icmp eq i32 %2211, %2212
  %2214 = icmp eq ptr %2210, %2205
  %2215 = select i1 %2213, i1 %2214, i1 false
  br i1 %2215, label %2620, label %2216

2216:                                             ; preds = %2203
  %2217 = icmp ult ptr %2184, %2186
  br i1 %2217, label %2223, label %2218

2218:                                             ; preds = %2216
  %2219 = getelementptr inbounds i8, ptr %2184, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %2219, i32 0, i32 3, i32 1)
  %2220 = getelementptr inbounds i8, ptr %2184, i64 128
  call void @llvm.prefetch.p0(ptr nonnull %2220, i32 0, i32 3, i32 1)
  %2221 = add i64 %2185, 1
  %2222 = getelementptr inbounds i8, ptr %2186, i64 256
  br label %2223

2223:                                             ; preds = %2218, %2216
  %2224 = phi i64 [ %2221, %2218 ], [ %2185, %2216 ]
  %2225 = phi ptr [ %2222, %2218 ], [ %2186, %2216 ]
  %2226 = getelementptr inbounds i8, ptr %2184, i64 %2224
  %2227 = icmp ugt ptr %2226, %43
  br i1 %2227, label %3164, label %2178, !llvm.loop !31

2228:                                             ; preds = %2160, %2615
  %2229 = phi i64 [ %2493, %2615 ], [ %2168, %2160 ]
  %2230 = phi i32 [ %2599, %2615 ], [ %2172, %2160 ]
  %2231 = phi ptr [ %2601, %2615 ], [ %2174, %2160 ]
  %2232 = phi i64 [ %2495, %2615 ], [ %2170, %2160 ]
  %2233 = phi ptr [ %2234, %2615 ], [ %2165, %2160 ]
  %2234 = phi ptr [ %2618, %2615 ], [ %2161, %2160 ]
  %2235 = phi i64 [ %2616, %2615 ], [ 1, %2160 ]
  %2236 = phi ptr [ %2617, %2615 ], [ %2167, %2160 ]
  %2237 = mul i64 %2229, -3523014627193847808
  %2238 = lshr i64 %2237, %2150
  %2239 = getelementptr inbounds i32, ptr %18, i64 %2238
  %2240 = load i32, ptr %2239, align 4, !tbaa !22
  %2241 = ptrtoint ptr %2233 to i64
  %2242 = sub i64 %2241, %24
  %2243 = trunc i64 %2242 to i32
  %2244 = zext i32 %2240 to i64
  %2245 = getelementptr inbounds i8, ptr %22, i64 %2244
  store i32 %2243, ptr %2239, align 4, !tbaa !22
  %2246 = getelementptr inbounds i32, ptr %14, i64 %2232
  store i32 %2243, ptr %2246, align 4, !tbaa !22
  %2247 = getelementptr inbounds i8, ptr %2233, i64 1
  %2248 = getelementptr inbounds i8, ptr %2247, i64 %2177
  %2249 = load i32, ptr %2248, align 1, !tbaa !22
  %2250 = load i32, ptr %2247, align 1, !tbaa !22
  %2251 = icmp eq i32 %2249, %2250
  br i1 %2251, label %2252, label %2492

2252:                                             ; preds = %2228
  %2253 = ptrtoint ptr %2233 to i64
  %2254 = getelementptr inbounds i8, ptr %2233, i64 5
  %2255 = getelementptr inbounds i8, ptr %2254, i64 %2177
  %2256 = icmp ugt ptr %2151, %2254
  br i1 %2256, label %2257, label %2283

2257:                                             ; preds = %2252
  %2258 = load i64, ptr %2255, align 1, !tbaa !21
  %2259 = load i64, ptr %2254, align 1, !tbaa !21
  %2260 = xor i64 %2259, %2258
  %2261 = icmp eq i64 %2260, 0
  br i1 %2261, label %2265, label %2262

2262:                                             ; preds = %2257
  %2263 = call i64 @llvm.cttz.i64(i64 %2260, i1 true), !range !32
  %2264 = lshr i64 %2263, 3
  br label %2320

2265:                                             ; preds = %2257, %2271
  %2266 = phi ptr [ %2269, %2271 ], [ %2255, %2257 ]
  %2267 = phi ptr [ %2268, %2271 ], [ %2254, %2257 ]
  %2268 = getelementptr inbounds i8, ptr %2267, i64 8
  %2269 = getelementptr inbounds i8, ptr %2266, i64 8
  %2270 = icmp ult ptr %2268, %2151
  br i1 %2270, label %2271, label %2283

2271:                                             ; preds = %2265
  %2272 = load i64, ptr %2269, align 1, !tbaa !21
  %2273 = load i64, ptr %2268, align 1, !tbaa !21
  %2274 = xor i64 %2273, %2272
  %2275 = icmp eq i64 %2274, 0
  br i1 %2275, label %2265, label %2276

2276:                                             ; preds = %2271
  %2277 = call i64 @llvm.cttz.i64(i64 %2274, i1 true), !range !32
  %2278 = lshr i64 %2277, 3
  %2279 = getelementptr inbounds i8, ptr %2268, i64 %2278
  %2280 = ptrtoint ptr %2279 to i64
  %2281 = ptrtoint ptr %2254 to i64
  %2282 = sub i64 %2280, %2281
  br label %2320

2283:                                             ; preds = %2265, %2252
  %2284 = phi ptr [ %2255, %2252 ], [ %2269, %2265 ]
  %2285 = phi ptr [ %2254, %2252 ], [ %2268, %2265 ]
  %2286 = icmp ult ptr %2285, %2152
  br i1 %2286, label %2287, label %2294

2287:                                             ; preds = %2283
  %2288 = load i32, ptr %2284, align 1, !tbaa !22
  %2289 = load i32, ptr %2285, align 1, !tbaa !22
  %2290 = icmp eq i32 %2288, %2289
  br i1 %2290, label %2291, label %2294

2291:                                             ; preds = %2287
  %2292 = getelementptr inbounds i8, ptr %2285, i64 4
  %2293 = getelementptr inbounds i8, ptr %2284, i64 4
  br label %2294

2294:                                             ; preds = %2291, %2287, %2283
  %2295 = phi ptr [ %2293, %2291 ], [ %2284, %2287 ], [ %2284, %2283 ]
  %2296 = phi ptr [ %2292, %2291 ], [ %2285, %2287 ], [ %2285, %2283 ]
  %2297 = icmp ult ptr %2296, %2153
  br i1 %2297, label %2298, label %2305

2298:                                             ; preds = %2294
  %2299 = load i16, ptr %2295, align 1, !tbaa !33
  %2300 = load i16, ptr %2296, align 1, !tbaa !33
  %2301 = icmp eq i16 %2299, %2300
  br i1 %2301, label %2302, label %2305

2302:                                             ; preds = %2298
  %2303 = getelementptr inbounds i8, ptr %2296, i64 2
  %2304 = getelementptr inbounds i8, ptr %2295, i64 2
  br label %2305

2305:                                             ; preds = %2302, %2298, %2294
  %2306 = phi ptr [ %2304, %2302 ], [ %2295, %2298 ], [ %2295, %2294 ]
  %2307 = phi ptr [ %2303, %2302 ], [ %2296, %2298 ], [ %2296, %2294 ]
  %2308 = icmp ult ptr %2307, %42
  br i1 %2308, label %2309, label %2315

2309:                                             ; preds = %2305
  %2310 = load i8, ptr %2306, align 1, !tbaa !35
  %2311 = load i8, ptr %2307, align 1, !tbaa !35
  %2312 = icmp eq i8 %2310, %2311
  %2313 = zext i1 %2312 to i64
  %2314 = getelementptr inbounds i8, ptr %2307, i64 %2313
  br label %2315

2315:                                             ; preds = %2309, %2305
  %2316 = phi ptr [ %2307, %2305 ], [ %2314, %2309 ]
  %2317 = ptrtoint ptr %2316 to i64
  %2318 = ptrtoint ptr %2254 to i64
  %2319 = sub i64 %2317, %2318
  br label %2320

2320:                                             ; preds = %2315, %2276, %2262
  %2321 = phi i64 [ %2319, %2315 ], [ %2264, %2262 ], [ %2282, %2276 ]
  %2322 = add i64 %2321, 4
  %2323 = ptrtoint ptr %2247 to i64
  %2324 = ptrtoint ptr %2162 to i64
  %2325 = sub i64 %2323, %2324
  %2326 = getelementptr inbounds i8, ptr %2162, i64 %2325
  %2327 = icmp ugt ptr %2326, %2154
  %2328 = load ptr, ptr %2155, align 8, !tbaa !36
  br i1 %2327, label %2352, label %2329

2329:                                             ; preds = %2320
  %2330 = load <2 x i64>, ptr %2162, align 1, !tbaa !35
  store <2 x i64> %2330, ptr %2328, align 1, !tbaa !35
  %2331 = icmp ugt i64 %2325, 16
  br i1 %2331, label %2332, label %2470

2332:                                             ; preds = %2329
  %2333 = load ptr, ptr %2155, align 8, !tbaa !36
  %2334 = getelementptr inbounds i8, ptr %2333, i64 16
  %2335 = getelementptr inbounds i8, ptr %2162, i64 16
  %2336 = add i64 %2325, -16
  %2337 = getelementptr inbounds i8, ptr %2333, i64 %2325
  %2338 = load <2 x i64>, ptr %2335, align 1, !tbaa !35
  store <2 x i64> %2338, ptr %2334, align 1, !tbaa !35
  %2339 = icmp ult i64 %2336, 17
  br i1 %2339, label %2470, label %2340

2340:                                             ; preds = %2332
  %2341 = getelementptr inbounds i8, ptr %2333, i64 32
  br label %2342

2342:                                             ; preds = %2342, %2340
  %2343 = phi ptr [ %2341, %2340 ], [ %2350, %2342 ]
  %2344 = phi ptr [ %2335, %2340 ], [ %2348, %2342 ]
  %2345 = getelementptr inbounds i8, ptr %2344, i64 16
  %2346 = load <2 x i64>, ptr %2345, align 1, !tbaa !35
  store <2 x i64> %2346, ptr %2343, align 1, !tbaa !35
  %2347 = getelementptr inbounds i8, ptr %2343, i64 16
  %2348 = getelementptr inbounds i8, ptr %2344, i64 32
  %2349 = load <2 x i64>, ptr %2348, align 1, !tbaa !35
  store <2 x i64> %2349, ptr %2347, align 1, !tbaa !35
  %2350 = getelementptr inbounds i8, ptr %2343, i64 32
  %2351 = icmp ult ptr %2350, %2337
  br i1 %2351, label %2342, label %2474, !llvm.loop !38

2352:                                             ; preds = %2320
  %2353 = ptrtoint ptr %2326 to i64
  %2354 = icmp ugt ptr %2162, %2154
  br i1 %2354, label %2372, label %2355

2355:                                             ; preds = %2352
  %2356 = sub i64 %2156, %2324
  %2357 = getelementptr inbounds i8, ptr %2328, i64 %2356
  %2358 = load <2 x i64>, ptr %2162, align 1, !tbaa !35
  store <2 x i64> %2358, ptr %2328, align 1, !tbaa !35
  %2359 = icmp ult i64 %2356, 17
  br i1 %2359, label %2372, label %2360

2360:                                             ; preds = %2355
  %2361 = getelementptr inbounds i8, ptr %2328, i64 16
  br label %2362

2362:                                             ; preds = %2362, %2360
  %2363 = phi ptr [ %2361, %2360 ], [ %2370, %2362 ]
  %2364 = phi ptr [ %2162, %2360 ], [ %2368, %2362 ]
  %2365 = getelementptr inbounds i8, ptr %2364, i64 16
  %2366 = load <2 x i64>, ptr %2365, align 1, !tbaa !35
  store <2 x i64> %2366, ptr %2363, align 1, !tbaa !35
  %2367 = getelementptr inbounds i8, ptr %2363, i64 16
  %2368 = getelementptr inbounds i8, ptr %2364, i64 32
  %2369 = load <2 x i64>, ptr %2368, align 1, !tbaa !35
  store <2 x i64> %2369, ptr %2367, align 1, !tbaa !35
  %2370 = getelementptr inbounds i8, ptr %2363, i64 32
  %2371 = icmp ult ptr %2370, %2357
  br i1 %2371, label %2362, label %2372, !llvm.loop !38

2372:                                             ; preds = %2362, %2355, %2352
  %2373 = phi ptr [ %2154, %2355 ], [ %2162, %2352 ], [ %2154, %2362 ]
  %2374 = phi ptr [ %2357, %2355 ], [ %2328, %2352 ], [ %2357, %2362 ]
  %2375 = icmp ult ptr %2373, %2326
  br i1 %2375, label %2376, label %2474

2376:                                             ; preds = %2372
  %2377 = ptrtoint ptr %2374 to i64
  %2378 = ptrtoint ptr %2373 to i64
  %2379 = sub i64 %2353, %2378
  %2380 = getelementptr i8, ptr %2373, i64 %2379
  %2381 = icmp ult i64 %2379, 8
  %2382 = sub i64 %2377, %2378
  %2383 = icmp ult i64 %2382, 32
  %2384 = select i1 %2381, i1 true, i1 %2383
  br i1 %2384, label %2420, label %2385

2385:                                             ; preds = %2376
  %2386 = icmp ult i64 %2379, 32
  br i1 %2386, label %2406, label %2387

2387:                                             ; preds = %2385
  %2388 = and i64 %2379, -32
  br label %2389

2389:                                             ; preds = %2389, %2387
  %2390 = phi i64 [ 0, %2387 ], [ %2397, %2389 ]
  %2391 = getelementptr i8, ptr %2374, i64 %2390
  %2392 = getelementptr i8, ptr %2373, i64 %2390
  %2393 = getelementptr i8, ptr %2392, i64 16
  %2394 = load <16 x i8>, ptr %2392, align 1, !tbaa !35
  %2395 = load <16 x i8>, ptr %2393, align 1, !tbaa !35
  %2396 = getelementptr i8, ptr %2391, i64 16
  store <16 x i8> %2394, ptr %2391, align 1, !tbaa !35
  store <16 x i8> %2395, ptr %2396, align 1, !tbaa !35
  %2397 = add nuw i64 %2390, 32
  %2398 = icmp eq i64 %2397, %2388
  br i1 %2398, label %2399, label %2389, !llvm.loop !70

2399:                                             ; preds = %2389
  %2400 = icmp eq i64 %2379, %2388
  br i1 %2400, label %2474, label %2401

2401:                                             ; preds = %2399
  %2402 = getelementptr i8, ptr %2373, i64 %2388
  %2403 = getelementptr i8, ptr %2374, i64 %2388
  %2404 = and i64 %2379, 24
  %2405 = icmp eq i64 %2404, 0
  br i1 %2405, label %2420, label %2406

2406:                                             ; preds = %2385, %2401
  %2407 = phi i64 [ %2388, %2401 ], [ 0, %2385 ]
  %2408 = and i64 %2379, -8
  %2409 = getelementptr i8, ptr %2374, i64 %2408
  %2410 = getelementptr i8, ptr %2373, i64 %2408
  br label %2411

2411:                                             ; preds = %2411, %2406
  %2412 = phi i64 [ %2407, %2406 ], [ %2416, %2411 ]
  %2413 = getelementptr i8, ptr %2374, i64 %2412
  %2414 = getelementptr i8, ptr %2373, i64 %2412
  %2415 = load <8 x i8>, ptr %2414, align 1, !tbaa !35
  store <8 x i8> %2415, ptr %2413, align 1, !tbaa !35
  %2416 = add nuw i64 %2412, 8
  %2417 = icmp eq i64 %2416, %2408
  br i1 %2417, label %2418, label %2411, !llvm.loop !71

2418:                                             ; preds = %2411
  %2419 = icmp eq i64 %2379, %2408
  br i1 %2419, label %2474, label %2420

2420:                                             ; preds = %2376, %2401, %2418
  %2421 = phi ptr [ %2374, %2376 ], [ %2403, %2401 ], [ %2409, %2418 ]
  %2422 = phi ptr [ %2373, %2376 ], [ %2402, %2401 ], [ %2410, %2418 ]
  %2423 = ptrtoint ptr %2422 to i64
  %2424 = sub i64 %2253, %2423
  %2425 = add i64 %2424, 1
  %2426 = sub i64 %2253, %2423
  %2427 = and i64 %2425, 7
  %2428 = icmp eq i64 %2427, 0
  br i1 %2428, label %2438, label %2429

2429:                                             ; preds = %2420, %2429
  %2430 = phi ptr [ %2435, %2429 ], [ %2421, %2420 ]
  %2431 = phi ptr [ %2433, %2429 ], [ %2422, %2420 ]
  %2432 = phi i64 [ %2436, %2429 ], [ 0, %2420 ]
  %2433 = getelementptr inbounds i8, ptr %2431, i64 1
  %2434 = load i8, ptr %2431, align 1, !tbaa !35
  %2435 = getelementptr inbounds i8, ptr %2430, i64 1
  store i8 %2434, ptr %2430, align 1, !tbaa !35
  %2436 = add i64 %2432, 1
  %2437 = icmp eq i64 %2436, %2427
  br i1 %2437, label %2438, label %2429, !llvm.loop !72

2438:                                             ; preds = %2429, %2420
  %2439 = phi ptr [ %2421, %2420 ], [ %2435, %2429 ]
  %2440 = phi ptr [ %2422, %2420 ], [ %2433, %2429 ]
  %2441 = icmp ult i64 %2426, 7
  br i1 %2441, label %2474, label %2442

2442:                                             ; preds = %2438, %2442
  %2443 = phi ptr [ %2468, %2442 ], [ %2439, %2438 ]
  %2444 = phi ptr [ %2466, %2442 ], [ %2440, %2438 ]
  %2445 = getelementptr inbounds i8, ptr %2444, i64 1
  %2446 = load i8, ptr %2444, align 1, !tbaa !35
  %2447 = getelementptr inbounds i8, ptr %2443, i64 1
  store i8 %2446, ptr %2443, align 1, !tbaa !35
  %2448 = getelementptr inbounds i8, ptr %2444, i64 2
  %2449 = load i8, ptr %2445, align 1, !tbaa !35
  %2450 = getelementptr inbounds i8, ptr %2443, i64 2
  store i8 %2449, ptr %2447, align 1, !tbaa !35
  %2451 = getelementptr inbounds i8, ptr %2444, i64 3
  %2452 = load i8, ptr %2448, align 1, !tbaa !35
  %2453 = getelementptr inbounds i8, ptr %2443, i64 3
  store i8 %2452, ptr %2450, align 1, !tbaa !35
  %2454 = getelementptr inbounds i8, ptr %2444, i64 4
  %2455 = load i8, ptr %2451, align 1, !tbaa !35
  %2456 = getelementptr inbounds i8, ptr %2443, i64 4
  store i8 %2455, ptr %2453, align 1, !tbaa !35
  %2457 = getelementptr inbounds i8, ptr %2444, i64 5
  %2458 = load i8, ptr %2454, align 1, !tbaa !35
  %2459 = getelementptr inbounds i8, ptr %2443, i64 5
  store i8 %2458, ptr %2456, align 1, !tbaa !35
  %2460 = getelementptr inbounds i8, ptr %2444, i64 6
  %2461 = load i8, ptr %2457, align 1, !tbaa !35
  %2462 = getelementptr inbounds i8, ptr %2443, i64 6
  store i8 %2461, ptr %2459, align 1, !tbaa !35
  %2463 = getelementptr inbounds i8, ptr %2444, i64 7
  %2464 = load i8, ptr %2460, align 1, !tbaa !35
  %2465 = getelementptr inbounds i8, ptr %2443, i64 7
  store i8 %2464, ptr %2462, align 1, !tbaa !35
  %2466 = getelementptr inbounds i8, ptr %2444, i64 8
  %2467 = load i8, ptr %2463, align 1, !tbaa !35
  %2468 = getelementptr inbounds i8, ptr %2443, i64 8
  store i8 %2467, ptr %2465, align 1, !tbaa !35
  %2469 = icmp eq ptr %2466, %2380
  br i1 %2469, label %2474, label %2442, !llvm.loop !73

2470:                                             ; preds = %2332, %2329
  %2471 = load ptr, ptr %2155, align 8, !tbaa !36
  %2472 = getelementptr inbounds i8, ptr %2471, i64 %2325
  store ptr %2472, ptr %2155, align 8, !tbaa !36
  %2473 = load ptr, ptr %2158, align 8, !tbaa !46
  br label %2486

2474:                                             ; preds = %2342, %2438, %2442, %2399, %2418, %2372
  %2475 = load ptr, ptr %2155, align 8, !tbaa !36
  %2476 = getelementptr inbounds i8, ptr %2475, i64 %2325
  store ptr %2476, ptr %2155, align 8, !tbaa !36
  %2477 = icmp ugt i64 %2325, 65535
  %2478 = load ptr, ptr %2158, align 8, !tbaa !46
  br i1 %2477, label %2479, label %2486, !prof !47

2479:                                             ; preds = %2474
  store i32 1, ptr %2157, align 8, !tbaa !48
  %2480 = load ptr, ptr %1, align 8, !tbaa !49
  %2481 = ptrtoint ptr %2478 to i64
  %2482 = ptrtoint ptr %2480 to i64
  %2483 = sub i64 %2481, %2482
  %2484 = lshr exact i64 %2483, 3
  %2485 = trunc i64 %2484 to i32
  store i32 %2485, ptr %2159, align 4, !tbaa !50
  br label %2486

2486:                                             ; preds = %2479, %2474, %2470
  %2487 = phi ptr [ %2473, %2470 ], [ %2478, %2479 ], [ %2478, %2474 ]
  %2488 = trunc i64 %2325 to i16
  %2489 = getelementptr inbounds %struct.SeqDef_s, ptr %2487, i64 0, i32 1
  store i16 %2488, ptr %2489, align 4, !tbaa !51
  store i32 1, ptr %2487, align 4, !tbaa !53
  %2490 = add i64 %2321, 1
  %2491 = icmp ugt i64 %2490, 65535
  br i1 %2491, label %2988, label %3002, !prof !54

2492:                                             ; preds = %2228
  %2493 = load i64, ptr %2234, align 1, !tbaa !21
  %2494 = mul i64 %2493, -3523014627327384477
  %2495 = lshr i64 %2494, %2148
  %2496 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %2230, i32 %39, ptr nonnull %7, ptr %2231) #11, !srcloc !30
  %2497 = load i64, ptr %2496, align 1, !tbaa !21
  %2498 = icmp eq i64 %2497, %2229
  %2499 = icmp eq ptr %2496, %2231
  %2500 = select i1 %2498, i1 %2499, i1 false
  br i1 %2500, label %2501, label %2597

2501:                                             ; preds = %2492, %2178
  %2502 = phi i64 [ %2197, %2178 ], [ %2495, %2492 ]
  %2503 = phi ptr [ %2181, %2178 ], [ %2231, %2492 ]
  %2504 = phi ptr [ %2183, %2178 ], [ %2233, %2492 ]
  %2505 = phi ptr [ %2184, %2178 ], [ %2234, %2492 ]
  %2506 = phi i64 [ %2185, %2178 ], [ %2235, %2492 ]
  %2507 = phi i64 [ %2191, %2178 ], [ %2241, %2492 ]
  %2508 = phi i32 [ %2193, %2178 ], [ %2243, %2492 ]
  %2509 = getelementptr inbounds i8, ptr %2504, i64 8
  %2510 = getelementptr inbounds i8, ptr %2503, i64 8
  %2511 = icmp ugt ptr %2151, %2509
  br i1 %2511, label %2512, label %2538

2512:                                             ; preds = %2501
  %2513 = load i64, ptr %2510, align 1, !tbaa !21
  %2514 = load i64, ptr %2509, align 1, !tbaa !21
  %2515 = xor i64 %2514, %2513
  %2516 = icmp eq i64 %2515, 0
  br i1 %2516, label %2520, label %2517

2517:                                             ; preds = %2512
  %2518 = call i64 @llvm.cttz.i64(i64 %2515, i1 true), !range !32
  %2519 = lshr i64 %2518, 3
  br label %2575

2520:                                             ; preds = %2512, %2526
  %2521 = phi ptr [ %2524, %2526 ], [ %2510, %2512 ]
  %2522 = phi ptr [ %2523, %2526 ], [ %2509, %2512 ]
  %2523 = getelementptr inbounds i8, ptr %2522, i64 8
  %2524 = getelementptr inbounds i8, ptr %2521, i64 8
  %2525 = icmp ult ptr %2523, %2151
  br i1 %2525, label %2526, label %2538

2526:                                             ; preds = %2520
  %2527 = load i64, ptr %2524, align 1, !tbaa !21
  %2528 = load i64, ptr %2523, align 1, !tbaa !21
  %2529 = xor i64 %2528, %2527
  %2530 = icmp eq i64 %2529, 0
  br i1 %2530, label %2520, label %2531

2531:                                             ; preds = %2526
  %2532 = call i64 @llvm.cttz.i64(i64 %2529, i1 true), !range !32
  %2533 = lshr i64 %2532, 3
  %2534 = getelementptr inbounds i8, ptr %2523, i64 %2533
  %2535 = ptrtoint ptr %2534 to i64
  %2536 = ptrtoint ptr %2509 to i64
  %2537 = sub i64 %2535, %2536
  br label %2575

2538:                                             ; preds = %2520, %2501
  %2539 = phi ptr [ %2510, %2501 ], [ %2524, %2520 ]
  %2540 = phi ptr [ %2509, %2501 ], [ %2523, %2520 ]
  %2541 = icmp ult ptr %2540, %2152
  br i1 %2541, label %2542, label %2549

2542:                                             ; preds = %2538
  %2543 = load i32, ptr %2539, align 1, !tbaa !22
  %2544 = load i32, ptr %2540, align 1, !tbaa !22
  %2545 = icmp eq i32 %2543, %2544
  br i1 %2545, label %2546, label %2549

2546:                                             ; preds = %2542
  %2547 = getelementptr inbounds i8, ptr %2540, i64 4
  %2548 = getelementptr inbounds i8, ptr %2539, i64 4
  br label %2549

2549:                                             ; preds = %2546, %2542, %2538
  %2550 = phi ptr [ %2548, %2546 ], [ %2539, %2542 ], [ %2539, %2538 ]
  %2551 = phi ptr [ %2547, %2546 ], [ %2540, %2542 ], [ %2540, %2538 ]
  %2552 = icmp ult ptr %2551, %2153
  br i1 %2552, label %2553, label %2560

2553:                                             ; preds = %2549
  %2554 = load i16, ptr %2550, align 1, !tbaa !33
  %2555 = load i16, ptr %2551, align 1, !tbaa !33
  %2556 = icmp eq i16 %2554, %2555
  br i1 %2556, label %2557, label %2560

2557:                                             ; preds = %2553
  %2558 = getelementptr inbounds i8, ptr %2551, i64 2
  %2559 = getelementptr inbounds i8, ptr %2550, i64 2
  br label %2560

2560:                                             ; preds = %2557, %2553, %2549
  %2561 = phi ptr [ %2559, %2557 ], [ %2550, %2553 ], [ %2550, %2549 ]
  %2562 = phi ptr [ %2558, %2557 ], [ %2551, %2553 ], [ %2551, %2549 ]
  %2563 = icmp ult ptr %2562, %42
  br i1 %2563, label %2564, label %2570

2564:                                             ; preds = %2560
  %2565 = load i8, ptr %2561, align 1, !tbaa !35
  %2566 = load i8, ptr %2562, align 1, !tbaa !35
  %2567 = icmp eq i8 %2565, %2566
  %2568 = zext i1 %2567 to i64
  %2569 = getelementptr inbounds i8, ptr %2562, i64 %2568
  br label %2570

2570:                                             ; preds = %2564, %2560
  %2571 = phi ptr [ %2562, %2560 ], [ %2569, %2564 ]
  %2572 = ptrtoint ptr %2571 to i64
  %2573 = ptrtoint ptr %2509 to i64
  %2574 = sub i64 %2572, %2573
  br label %2575

2575:                                             ; preds = %2570, %2531, %2517
  %2576 = phi i64 [ %2574, %2570 ], [ %2519, %2517 ], [ %2537, %2531 ]
  %2577 = add i64 %2576, 8
  %2578 = ptrtoint ptr %2503 to i64
  %2579 = sub i64 %2507, %2578
  %2580 = icmp ugt ptr %2504, %2162
  %2581 = icmp ugt ptr %2503, %41
  %2582 = and i1 %2581, %2580
  br i1 %2582, label %2583, label %2803

2583:                                             ; preds = %2575, %2592
  %2584 = phi i64 [ %2593, %2592 ], [ %2577, %2575 ]
  %2585 = phi ptr [ %2587, %2592 ], [ %2504, %2575 ]
  %2586 = phi ptr [ %2589, %2592 ], [ %2503, %2575 ]
  %2587 = getelementptr inbounds i8, ptr %2585, i64 -1
  %2588 = load i8, ptr %2587, align 1, !tbaa !35
  %2589 = getelementptr inbounds i8, ptr %2586, i64 -1
  %2590 = load i8, ptr %2589, align 1, !tbaa !35
  %2591 = icmp eq i8 %2588, %2590
  br i1 %2591, label %2592, label %2803

2592:                                             ; preds = %2583
  %2593 = add i64 %2584, 1
  %2594 = icmp ugt ptr %2587, %2162
  %2595 = icmp ugt ptr %2589, %41
  %2596 = and i1 %2594, %2595
  br i1 %2596, label %2583, label %2803, !llvm.loop !55

2597:                                             ; preds = %2492
  %2598 = getelementptr inbounds i32, ptr %14, i64 %2495
  %2599 = load i32, ptr %2598, align 4, !tbaa !22
  %2600 = zext i32 %2599 to i64
  %2601 = getelementptr inbounds i8, ptr %22, i64 %2600
  %2602 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %2240, i32 %39, ptr nonnull %7, ptr %2245) #11, !srcloc !30
  %2603 = load i32, ptr %2602, align 1, !tbaa !22
  %2604 = load i32, ptr %2233, align 1, !tbaa !22
  %2605 = icmp eq i32 %2603, %2604
  %2606 = icmp eq ptr %2602, %2245
  %2607 = select i1 %2605, i1 %2606, i1 false
  br i1 %2607, label %2620, label %2608

2608:                                             ; preds = %2597
  %2609 = icmp ult ptr %2234, %2236
  br i1 %2609, label %2615, label %2610

2610:                                             ; preds = %2608
  %2611 = getelementptr inbounds i8, ptr %2234, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %2611, i32 0, i32 3, i32 1)
  %2612 = getelementptr inbounds i8, ptr %2234, i64 128
  call void @llvm.prefetch.p0(ptr nonnull %2612, i32 0, i32 3, i32 1)
  %2613 = add i64 %2235, 1
  %2614 = getelementptr inbounds i8, ptr %2236, i64 256
  br label %2615

2615:                                             ; preds = %2610, %2608
  %2616 = phi i64 [ %2613, %2610 ], [ %2235, %2608 ]
  %2617 = phi ptr [ %2614, %2610 ], [ %2236, %2608 ]
  %2618 = getelementptr inbounds i8, ptr %2234, i64 %2616
  %2619 = icmp ugt ptr %2618, %43
  br i1 %2619, label %3164, label %2228, !llvm.loop !31

2620:                                             ; preds = %2597, %2203
  %2621 = phi i64 [ %2195, %2203 ], [ %2493, %2597 ]
  %2622 = phi i32 [ %2207, %2203 ], [ %2599, %2597 ]
  %2623 = phi ptr [ %2209, %2203 ], [ %2601, %2597 ]
  %2624 = phi i64 [ %2197, %2203 ], [ %2495, %2597 ]
  %2625 = phi ptr [ %2183, %2203 ], [ %2233, %2597 ]
  %2626 = phi ptr [ %2184, %2203 ], [ %2234, %2597 ]
  %2627 = phi i64 [ %2185, %2203 ], [ %2235, %2597 ]
  %2628 = phi i32 [ %2193, %2203 ], [ %2243, %2597 ]
  %2629 = phi ptr [ %2205, %2203 ], [ %2245, %2597 ]
  %2630 = getelementptr inbounds i8, ptr %2625, i64 4
  %2631 = getelementptr inbounds i8, ptr %2629, i64 4
  %2632 = icmp ugt ptr %2151, %2630
  br i1 %2632, label %2633, label %2659

2633:                                             ; preds = %2620
  %2634 = load i64, ptr %2631, align 1, !tbaa !21
  %2635 = load i64, ptr %2630, align 1, !tbaa !21
  %2636 = xor i64 %2635, %2634
  %2637 = icmp eq i64 %2636, 0
  br i1 %2637, label %2641, label %2638

2638:                                             ; preds = %2633
  %2639 = call i64 @llvm.cttz.i64(i64 %2636, i1 true), !range !32
  %2640 = lshr i64 %2639, 3
  br label %2696

2641:                                             ; preds = %2633, %2647
  %2642 = phi ptr [ %2645, %2647 ], [ %2631, %2633 ]
  %2643 = phi ptr [ %2644, %2647 ], [ %2630, %2633 ]
  %2644 = getelementptr inbounds i8, ptr %2643, i64 8
  %2645 = getelementptr inbounds i8, ptr %2642, i64 8
  %2646 = icmp ult ptr %2644, %2151
  br i1 %2646, label %2647, label %2659

2647:                                             ; preds = %2641
  %2648 = load i64, ptr %2645, align 1, !tbaa !21
  %2649 = load i64, ptr %2644, align 1, !tbaa !21
  %2650 = xor i64 %2649, %2648
  %2651 = icmp eq i64 %2650, 0
  br i1 %2651, label %2641, label %2652

2652:                                             ; preds = %2647
  %2653 = call i64 @llvm.cttz.i64(i64 %2650, i1 true), !range !32
  %2654 = lshr i64 %2653, 3
  %2655 = getelementptr inbounds i8, ptr %2644, i64 %2654
  %2656 = ptrtoint ptr %2655 to i64
  %2657 = ptrtoint ptr %2630 to i64
  %2658 = sub i64 %2656, %2657
  br label %2696

2659:                                             ; preds = %2641, %2620
  %2660 = phi ptr [ %2631, %2620 ], [ %2645, %2641 ]
  %2661 = phi ptr [ %2630, %2620 ], [ %2644, %2641 ]
  %2662 = icmp ult ptr %2661, %2152
  br i1 %2662, label %2663, label %2670

2663:                                             ; preds = %2659
  %2664 = load i32, ptr %2660, align 1, !tbaa !22
  %2665 = load i32, ptr %2661, align 1, !tbaa !22
  %2666 = icmp eq i32 %2664, %2665
  br i1 %2666, label %2667, label %2670

2667:                                             ; preds = %2663
  %2668 = getelementptr inbounds i8, ptr %2661, i64 4
  %2669 = getelementptr inbounds i8, ptr %2660, i64 4
  br label %2670

2670:                                             ; preds = %2667, %2663, %2659
  %2671 = phi ptr [ %2669, %2667 ], [ %2660, %2663 ], [ %2660, %2659 ]
  %2672 = phi ptr [ %2668, %2667 ], [ %2661, %2663 ], [ %2661, %2659 ]
  %2673 = icmp ult ptr %2672, %2153
  br i1 %2673, label %2674, label %2681

2674:                                             ; preds = %2670
  %2675 = load i16, ptr %2671, align 1, !tbaa !33
  %2676 = load i16, ptr %2672, align 1, !tbaa !33
  %2677 = icmp eq i16 %2675, %2676
  br i1 %2677, label %2678, label %2681

2678:                                             ; preds = %2674
  %2679 = getelementptr inbounds i8, ptr %2672, i64 2
  %2680 = getelementptr inbounds i8, ptr %2671, i64 2
  br label %2681

2681:                                             ; preds = %2678, %2674, %2670
  %2682 = phi ptr [ %2680, %2678 ], [ %2671, %2674 ], [ %2671, %2670 ]
  %2683 = phi ptr [ %2679, %2678 ], [ %2672, %2674 ], [ %2672, %2670 ]
  %2684 = icmp ult ptr %2683, %42
  br i1 %2684, label %2685, label %2691

2685:                                             ; preds = %2681
  %2686 = load i8, ptr %2682, align 1, !tbaa !35
  %2687 = load i8, ptr %2683, align 1, !tbaa !35
  %2688 = icmp eq i8 %2686, %2687
  %2689 = zext i1 %2688 to i64
  %2690 = getelementptr inbounds i8, ptr %2683, i64 %2689
  br label %2691

2691:                                             ; preds = %2685, %2681
  %2692 = phi ptr [ %2683, %2681 ], [ %2690, %2685 ]
  %2693 = ptrtoint ptr %2692 to i64
  %2694 = ptrtoint ptr %2630 to i64
  %2695 = sub i64 %2693, %2694
  br label %2696

2696:                                             ; preds = %2691, %2652, %2638
  %2697 = phi i64 [ %2695, %2691 ], [ %2640, %2638 ], [ %2658, %2652 ]
  %2698 = add i64 %2697, 4
  %2699 = ptrtoint ptr %2625 to i64
  %2700 = ptrtoint ptr %2629 to i64
  %2701 = sub i64 %2699, %2700
  %2702 = icmp ugt i32 %2622, %39
  br i1 %2702, label %2703, label %2781

2703:                                             ; preds = %2696
  %2704 = load i64, ptr %2623, align 1, !tbaa !21
  %2705 = icmp eq i64 %2704, %2621
  br i1 %2705, label %2706, label %2781

2706:                                             ; preds = %2703
  %2707 = getelementptr inbounds i8, ptr %2626, i64 8
  %2708 = getelementptr inbounds i8, ptr %2623, i64 8
  %2709 = icmp ugt ptr %2151, %2707
  br i1 %2709, label %2710, label %2736

2710:                                             ; preds = %2706
  %2711 = load i64, ptr %2708, align 1, !tbaa !21
  %2712 = load i64, ptr %2707, align 1, !tbaa !21
  %2713 = xor i64 %2712, %2711
  %2714 = icmp eq i64 %2713, 0
  br i1 %2714, label %2718, label %2715

2715:                                             ; preds = %2710
  %2716 = call i64 @llvm.cttz.i64(i64 %2713, i1 true), !range !32
  %2717 = lshr i64 %2716, 3
  br label %2773

2718:                                             ; preds = %2710, %2724
  %2719 = phi ptr [ %2722, %2724 ], [ %2708, %2710 ]
  %2720 = phi ptr [ %2721, %2724 ], [ %2707, %2710 ]
  %2721 = getelementptr inbounds i8, ptr %2720, i64 8
  %2722 = getelementptr inbounds i8, ptr %2719, i64 8
  %2723 = icmp ult ptr %2721, %2151
  br i1 %2723, label %2724, label %2736

2724:                                             ; preds = %2718
  %2725 = load i64, ptr %2722, align 1, !tbaa !21
  %2726 = load i64, ptr %2721, align 1, !tbaa !21
  %2727 = xor i64 %2726, %2725
  %2728 = icmp eq i64 %2727, 0
  br i1 %2728, label %2718, label %2729

2729:                                             ; preds = %2724
  %2730 = call i64 @llvm.cttz.i64(i64 %2727, i1 true), !range !32
  %2731 = lshr i64 %2730, 3
  %2732 = getelementptr inbounds i8, ptr %2721, i64 %2731
  %2733 = ptrtoint ptr %2732 to i64
  %2734 = ptrtoint ptr %2707 to i64
  %2735 = sub i64 %2733, %2734
  br label %2773

2736:                                             ; preds = %2718, %2706
  %2737 = phi ptr [ %2708, %2706 ], [ %2722, %2718 ]
  %2738 = phi ptr [ %2707, %2706 ], [ %2721, %2718 ]
  %2739 = icmp ult ptr %2738, %2152
  br i1 %2739, label %2740, label %2747

2740:                                             ; preds = %2736
  %2741 = load i32, ptr %2737, align 1, !tbaa !22
  %2742 = load i32, ptr %2738, align 1, !tbaa !22
  %2743 = icmp eq i32 %2741, %2742
  br i1 %2743, label %2744, label %2747

2744:                                             ; preds = %2740
  %2745 = getelementptr inbounds i8, ptr %2738, i64 4
  %2746 = getelementptr inbounds i8, ptr %2737, i64 4
  br label %2747

2747:                                             ; preds = %2744, %2740, %2736
  %2748 = phi ptr [ %2746, %2744 ], [ %2737, %2740 ], [ %2737, %2736 ]
  %2749 = phi ptr [ %2745, %2744 ], [ %2738, %2740 ], [ %2738, %2736 ]
  %2750 = icmp ult ptr %2749, %2153
  br i1 %2750, label %2751, label %2758

2751:                                             ; preds = %2747
  %2752 = load i16, ptr %2748, align 1, !tbaa !33
  %2753 = load i16, ptr %2749, align 1, !tbaa !33
  %2754 = icmp eq i16 %2752, %2753
  br i1 %2754, label %2755, label %2758

2755:                                             ; preds = %2751
  %2756 = getelementptr inbounds i8, ptr %2749, i64 2
  %2757 = getelementptr inbounds i8, ptr %2748, i64 2
  br label %2758

2758:                                             ; preds = %2755, %2751, %2747
  %2759 = phi ptr [ %2757, %2755 ], [ %2748, %2751 ], [ %2748, %2747 ]
  %2760 = phi ptr [ %2756, %2755 ], [ %2749, %2751 ], [ %2749, %2747 ]
  %2761 = icmp ult ptr %2760, %42
  br i1 %2761, label %2762, label %2768

2762:                                             ; preds = %2758
  %2763 = load i8, ptr %2759, align 1, !tbaa !35
  %2764 = load i8, ptr %2760, align 1, !tbaa !35
  %2765 = icmp eq i8 %2763, %2764
  %2766 = zext i1 %2765 to i64
  %2767 = getelementptr inbounds i8, ptr %2760, i64 %2766
  br label %2768

2768:                                             ; preds = %2762, %2758
  %2769 = phi ptr [ %2760, %2758 ], [ %2767, %2762 ]
  %2770 = ptrtoint ptr %2769 to i64
  %2771 = ptrtoint ptr %2707 to i64
  %2772 = sub i64 %2770, %2771
  br label %2773

2773:                                             ; preds = %2768, %2729, %2715
  %2774 = phi i64 [ %2772, %2768 ], [ %2717, %2715 ], [ %2735, %2729 ]
  %2775 = add i64 %2774, 8
  %2776 = icmp ugt i64 %2775, %2698
  br i1 %2776, label %2777, label %2781

2777:                                             ; preds = %2773
  %2778 = ptrtoint ptr %2626 to i64
  %2779 = ptrtoint ptr %2623 to i64
  %2780 = sub i64 %2778, %2779
  br label %2781

2781:                                             ; preds = %2777, %2773, %2703, %2696
  %2782 = phi ptr [ %2629, %2703 ], [ %2629, %2696 ], [ %2623, %2777 ], [ %2629, %2773 ]
  %2783 = phi ptr [ %2625, %2703 ], [ %2625, %2696 ], [ %2626, %2777 ], [ %2625, %2773 ]
  %2784 = phi i64 [ %2701, %2703 ], [ %2701, %2696 ], [ %2780, %2777 ], [ %2701, %2773 ]
  %2785 = phi i64 [ %2698, %2703 ], [ %2698, %2696 ], [ %2775, %2777 ], [ %2698, %2773 ]
  %2786 = icmp ugt ptr %2783, %2162
  %2787 = icmp ugt ptr %2782, %41
  %2788 = and i1 %2787, %2786
  br i1 %2788, label %2789, label %2803

2789:                                             ; preds = %2781, %2798
  %2790 = phi i64 [ %2799, %2798 ], [ %2785, %2781 ]
  %2791 = phi ptr [ %2793, %2798 ], [ %2783, %2781 ]
  %2792 = phi ptr [ %2795, %2798 ], [ %2782, %2781 ]
  %2793 = getelementptr inbounds i8, ptr %2791, i64 -1
  %2794 = load i8, ptr %2793, align 1, !tbaa !35
  %2795 = getelementptr inbounds i8, ptr %2792, i64 -1
  %2796 = load i8, ptr %2795, align 1, !tbaa !35
  %2797 = icmp eq i8 %2794, %2796
  br i1 %2797, label %2798, label %2803

2798:                                             ; preds = %2789
  %2799 = add i64 %2790, 1
  %2800 = icmp ugt ptr %2793, %2162
  %2801 = icmp ugt ptr %2795, %41
  %2802 = and i1 %2800, %2801
  br i1 %2802, label %2789, label %2803, !llvm.loop !56

2803:                                             ; preds = %2798, %2789, %2592, %2583, %2781, %2575
  %2804 = phi i64 [ %2502, %2575 ], [ %2624, %2781 ], [ %2502, %2583 ], [ %2502, %2592 ], [ %2624, %2789 ], [ %2624, %2798 ]
  %2805 = phi ptr [ %2505, %2575 ], [ %2626, %2781 ], [ %2505, %2583 ], [ %2505, %2592 ], [ %2626, %2789 ], [ %2626, %2798 ]
  %2806 = phi i64 [ %2506, %2575 ], [ %2627, %2781 ], [ %2506, %2583 ], [ %2506, %2592 ], [ %2627, %2789 ], [ %2627, %2798 ]
  %2807 = phi i32 [ %2508, %2575 ], [ %2628, %2781 ], [ %2508, %2583 ], [ %2508, %2592 ], [ %2628, %2789 ], [ %2628, %2798 ]
  %2808 = phi ptr [ %2504, %2575 ], [ %2783, %2781 ], [ %2587, %2592 ], [ %2585, %2583 ], [ %2793, %2798 ], [ %2791, %2789 ]
  %2809 = phi i64 [ %2579, %2575 ], [ %2784, %2781 ], [ %2579, %2583 ], [ %2579, %2592 ], [ %2784, %2789 ], [ %2784, %2798 ]
  %2810 = phi i64 [ %2577, %2575 ], [ %2785, %2781 ], [ %2593, %2592 ], [ %2584, %2583 ], [ %2799, %2798 ], [ %2790, %2789 ]
  %2811 = trunc i64 %2809 to i32
  %2812 = icmp ult i64 %2806, 4
  br i1 %2812, label %2813, label %2818

2813:                                             ; preds = %2803
  %2814 = ptrtoint ptr %2805 to i64
  %2815 = sub i64 %2814, %24
  %2816 = trunc i64 %2815 to i32
  %2817 = getelementptr inbounds i32, ptr %14, i64 %2804
  store i32 %2816, ptr %2817, align 4, !tbaa !22
  br label %2818

2818:                                             ; preds = %2813, %2803
  %2819 = ptrtoint ptr %2808 to i64
  %2820 = ptrtoint ptr %2162 to i64
  %2821 = sub i64 %2819, %2820
  %2822 = add i32 %2811, 3
  %2823 = getelementptr inbounds i8, ptr %2162, i64 %2821
  %2824 = icmp ugt ptr %2823, %2154
  %2825 = load ptr, ptr %2155, align 8, !tbaa !36
  br i1 %2824, label %2849, label %2826

2826:                                             ; preds = %2818
  %2827 = load <2 x i64>, ptr %2162, align 1, !tbaa !35
  store <2 x i64> %2827, ptr %2825, align 1, !tbaa !35
  %2828 = icmp ugt i64 %2821, 16
  br i1 %2828, label %2829, label %2966

2829:                                             ; preds = %2826
  %2830 = load ptr, ptr %2155, align 8, !tbaa !36
  %2831 = getelementptr inbounds i8, ptr %2830, i64 16
  %2832 = getelementptr inbounds i8, ptr %2162, i64 16
  %2833 = add i64 %2821, -16
  %2834 = getelementptr inbounds i8, ptr %2830, i64 %2821
  %2835 = load <2 x i64>, ptr %2832, align 1, !tbaa !35
  store <2 x i64> %2835, ptr %2831, align 1, !tbaa !35
  %2836 = icmp ult i64 %2833, 17
  br i1 %2836, label %2966, label %2837

2837:                                             ; preds = %2829
  %2838 = getelementptr inbounds i8, ptr %2830, i64 32
  br label %2839

2839:                                             ; preds = %2839, %2837
  %2840 = phi ptr [ %2838, %2837 ], [ %2847, %2839 ]
  %2841 = phi ptr [ %2832, %2837 ], [ %2845, %2839 ]
  %2842 = getelementptr inbounds i8, ptr %2841, i64 16
  %2843 = load <2 x i64>, ptr %2842, align 1, !tbaa !35
  store <2 x i64> %2843, ptr %2840, align 1, !tbaa !35
  %2844 = getelementptr inbounds i8, ptr %2840, i64 16
  %2845 = getelementptr inbounds i8, ptr %2841, i64 32
  %2846 = load <2 x i64>, ptr %2845, align 1, !tbaa !35
  store <2 x i64> %2846, ptr %2844, align 1, !tbaa !35
  %2847 = getelementptr inbounds i8, ptr %2840, i64 32
  %2848 = icmp ult ptr %2847, %2834
  br i1 %2848, label %2839, label %2970, !llvm.loop !38

2849:                                             ; preds = %2818
  %2850 = ptrtoint ptr %2823 to i64
  %2851 = icmp ugt ptr %2162, %2154
  br i1 %2851, label %2869, label %2852

2852:                                             ; preds = %2849
  %2853 = sub i64 %2156, %2820
  %2854 = getelementptr inbounds i8, ptr %2825, i64 %2853
  %2855 = load <2 x i64>, ptr %2162, align 1, !tbaa !35
  store <2 x i64> %2855, ptr %2825, align 1, !tbaa !35
  %2856 = icmp ult i64 %2853, 17
  br i1 %2856, label %2869, label %2857

2857:                                             ; preds = %2852
  %2858 = getelementptr inbounds i8, ptr %2825, i64 16
  br label %2859

2859:                                             ; preds = %2859, %2857
  %2860 = phi ptr [ %2858, %2857 ], [ %2867, %2859 ]
  %2861 = phi ptr [ %2162, %2857 ], [ %2865, %2859 ]
  %2862 = getelementptr inbounds i8, ptr %2861, i64 16
  %2863 = load <2 x i64>, ptr %2862, align 1, !tbaa !35
  store <2 x i64> %2863, ptr %2860, align 1, !tbaa !35
  %2864 = getelementptr inbounds i8, ptr %2860, i64 16
  %2865 = getelementptr inbounds i8, ptr %2861, i64 32
  %2866 = load <2 x i64>, ptr %2865, align 1, !tbaa !35
  store <2 x i64> %2866, ptr %2864, align 1, !tbaa !35
  %2867 = getelementptr inbounds i8, ptr %2860, i64 32
  %2868 = icmp ult ptr %2867, %2854
  br i1 %2868, label %2859, label %2869, !llvm.loop !38

2869:                                             ; preds = %2859, %2852, %2849
  %2870 = phi ptr [ %2154, %2852 ], [ %2162, %2849 ], [ %2154, %2859 ]
  %2871 = phi ptr [ %2854, %2852 ], [ %2825, %2849 ], [ %2854, %2859 ]
  %2872 = icmp ult ptr %2870, %2823
  br i1 %2872, label %2873, label %2970

2873:                                             ; preds = %2869
  %2874 = ptrtoint ptr %2871 to i64
  %2875 = ptrtoint ptr %2870 to i64
  %2876 = sub i64 %2850, %2875
  %2877 = getelementptr i8, ptr %2870, i64 %2876
  %2878 = icmp ult i64 %2876, 8
  %2879 = sub i64 %2874, %2875
  %2880 = icmp ult i64 %2879, 32
  %2881 = select i1 %2878, i1 true, i1 %2880
  br i1 %2881, label %2917, label %2882

2882:                                             ; preds = %2873
  %2883 = icmp ult i64 %2876, 32
  br i1 %2883, label %2903, label %2884

2884:                                             ; preds = %2882
  %2885 = and i64 %2876, -32
  br label %2886

2886:                                             ; preds = %2886, %2884
  %2887 = phi i64 [ 0, %2884 ], [ %2894, %2886 ]
  %2888 = getelementptr i8, ptr %2871, i64 %2887
  %2889 = getelementptr i8, ptr %2870, i64 %2887
  %2890 = getelementptr i8, ptr %2889, i64 16
  %2891 = load <16 x i8>, ptr %2889, align 1, !tbaa !35
  %2892 = load <16 x i8>, ptr %2890, align 1, !tbaa !35
  %2893 = getelementptr i8, ptr %2888, i64 16
  store <16 x i8> %2891, ptr %2888, align 1, !tbaa !35
  store <16 x i8> %2892, ptr %2893, align 1, !tbaa !35
  %2894 = add nuw i64 %2887, 32
  %2895 = icmp eq i64 %2894, %2885
  br i1 %2895, label %2896, label %2886, !llvm.loop !74

2896:                                             ; preds = %2886
  %2897 = icmp eq i64 %2876, %2885
  br i1 %2897, label %2970, label %2898

2898:                                             ; preds = %2896
  %2899 = getelementptr i8, ptr %2870, i64 %2885
  %2900 = getelementptr i8, ptr %2871, i64 %2885
  %2901 = and i64 %2876, 24
  %2902 = icmp eq i64 %2901, 0
  br i1 %2902, label %2917, label %2903

2903:                                             ; preds = %2882, %2898
  %2904 = phi i64 [ %2885, %2898 ], [ 0, %2882 ]
  %2905 = and i64 %2876, -8
  %2906 = getelementptr i8, ptr %2871, i64 %2905
  %2907 = getelementptr i8, ptr %2870, i64 %2905
  br label %2908

2908:                                             ; preds = %2908, %2903
  %2909 = phi i64 [ %2904, %2903 ], [ %2913, %2908 ]
  %2910 = getelementptr i8, ptr %2871, i64 %2909
  %2911 = getelementptr i8, ptr %2870, i64 %2909
  %2912 = load <8 x i8>, ptr %2911, align 1, !tbaa !35
  store <8 x i8> %2912, ptr %2910, align 1, !tbaa !35
  %2913 = add nuw i64 %2909, 8
  %2914 = icmp eq i64 %2913, %2905
  br i1 %2914, label %2915, label %2908, !llvm.loop !75

2915:                                             ; preds = %2908
  %2916 = icmp eq i64 %2876, %2905
  br i1 %2916, label %2970, label %2917

2917:                                             ; preds = %2873, %2898, %2915
  %2918 = phi ptr [ %2871, %2873 ], [ %2900, %2898 ], [ %2906, %2915 ]
  %2919 = phi ptr [ %2870, %2873 ], [ %2899, %2898 ], [ %2907, %2915 ]
  %2920 = ptrtoint ptr %2919 to i64
  %2921 = sub i64 %2819, %2920
  %2922 = and i64 %2921, 7
  %2923 = icmp eq i64 %2922, 0
  br i1 %2923, label %2933, label %2924

2924:                                             ; preds = %2917, %2924
  %2925 = phi ptr [ %2930, %2924 ], [ %2918, %2917 ]
  %2926 = phi ptr [ %2928, %2924 ], [ %2919, %2917 ]
  %2927 = phi i64 [ %2931, %2924 ], [ 0, %2917 ]
  %2928 = getelementptr inbounds i8, ptr %2926, i64 1
  %2929 = load i8, ptr %2926, align 1, !tbaa !35
  %2930 = getelementptr inbounds i8, ptr %2925, i64 1
  store i8 %2929, ptr %2925, align 1, !tbaa !35
  %2931 = add i64 %2927, 1
  %2932 = icmp eq i64 %2931, %2922
  br i1 %2932, label %2933, label %2924, !llvm.loop !76

2933:                                             ; preds = %2924, %2917
  %2934 = phi ptr [ %2918, %2917 ], [ %2930, %2924 ]
  %2935 = phi ptr [ %2919, %2917 ], [ %2928, %2924 ]
  %2936 = sub i64 %2920, %2819
  %2937 = icmp ugt i64 %2936, -8
  br i1 %2937, label %2970, label %2938

2938:                                             ; preds = %2933, %2938
  %2939 = phi ptr [ %2964, %2938 ], [ %2934, %2933 ]
  %2940 = phi ptr [ %2962, %2938 ], [ %2935, %2933 ]
  %2941 = getelementptr inbounds i8, ptr %2940, i64 1
  %2942 = load i8, ptr %2940, align 1, !tbaa !35
  %2943 = getelementptr inbounds i8, ptr %2939, i64 1
  store i8 %2942, ptr %2939, align 1, !tbaa !35
  %2944 = getelementptr inbounds i8, ptr %2940, i64 2
  %2945 = load i8, ptr %2941, align 1, !tbaa !35
  %2946 = getelementptr inbounds i8, ptr %2939, i64 2
  store i8 %2945, ptr %2943, align 1, !tbaa !35
  %2947 = getelementptr inbounds i8, ptr %2940, i64 3
  %2948 = load i8, ptr %2944, align 1, !tbaa !35
  %2949 = getelementptr inbounds i8, ptr %2939, i64 3
  store i8 %2948, ptr %2946, align 1, !tbaa !35
  %2950 = getelementptr inbounds i8, ptr %2940, i64 4
  %2951 = load i8, ptr %2947, align 1, !tbaa !35
  %2952 = getelementptr inbounds i8, ptr %2939, i64 4
  store i8 %2951, ptr %2949, align 1, !tbaa !35
  %2953 = getelementptr inbounds i8, ptr %2940, i64 5
  %2954 = load i8, ptr %2950, align 1, !tbaa !35
  %2955 = getelementptr inbounds i8, ptr %2939, i64 5
  store i8 %2954, ptr %2952, align 1, !tbaa !35
  %2956 = getelementptr inbounds i8, ptr %2940, i64 6
  %2957 = load i8, ptr %2953, align 1, !tbaa !35
  %2958 = getelementptr inbounds i8, ptr %2939, i64 6
  store i8 %2957, ptr %2955, align 1, !tbaa !35
  %2959 = getelementptr inbounds i8, ptr %2940, i64 7
  %2960 = load i8, ptr %2956, align 1, !tbaa !35
  %2961 = getelementptr inbounds i8, ptr %2939, i64 7
  store i8 %2960, ptr %2958, align 1, !tbaa !35
  %2962 = getelementptr inbounds i8, ptr %2940, i64 8
  %2963 = load i8, ptr %2959, align 1, !tbaa !35
  %2964 = getelementptr inbounds i8, ptr %2939, i64 8
  store i8 %2963, ptr %2961, align 1, !tbaa !35
  %2965 = icmp eq ptr %2962, %2877
  br i1 %2965, label %2970, label %2938, !llvm.loop !77

2966:                                             ; preds = %2829, %2826
  %2967 = load ptr, ptr %2155, align 8, !tbaa !36
  %2968 = getelementptr inbounds i8, ptr %2967, i64 %2821
  store ptr %2968, ptr %2155, align 8, !tbaa !36
  %2969 = load ptr, ptr %2158, align 8, !tbaa !46
  br label %2982

2970:                                             ; preds = %2839, %2933, %2938, %2896, %2915, %2869
  %2971 = load ptr, ptr %2155, align 8, !tbaa !36
  %2972 = getelementptr inbounds i8, ptr %2971, i64 %2821
  store ptr %2972, ptr %2155, align 8, !tbaa !36
  %2973 = icmp ugt i64 %2821, 65535
  %2974 = load ptr, ptr %2158, align 8, !tbaa !46
  br i1 %2973, label %2975, label %2982, !prof !47

2975:                                             ; preds = %2970
  store i32 1, ptr %2157, align 8, !tbaa !48
  %2976 = load ptr, ptr %1, align 8, !tbaa !49
  %2977 = ptrtoint ptr %2974 to i64
  %2978 = ptrtoint ptr %2976 to i64
  %2979 = sub i64 %2977, %2978
  %2980 = lshr exact i64 %2979, 3
  %2981 = trunc i64 %2980 to i32
  store i32 %2981, ptr %2159, align 4, !tbaa !50
  br label %2982

2982:                                             ; preds = %2975, %2970, %2966
  %2983 = phi ptr [ %2969, %2966 ], [ %2974, %2975 ], [ %2974, %2970 ]
  %2984 = trunc i64 %2821 to i16
  %2985 = getelementptr inbounds %struct.SeqDef_s, ptr %2983, i64 0, i32 1
  store i16 %2984, ptr %2985, align 4, !tbaa !51
  store i32 %2822, ptr %2983, align 4, !tbaa !53
  %2986 = add i64 %2810, -3
  %2987 = icmp ugt i64 %2986, 65535
  br i1 %2987, label %2988, label %3002, !prof !54

2988:                                             ; preds = %2982, %2486
  %2989 = phi ptr [ %2487, %2486 ], [ %2983, %2982 ]
  %2990 = phi i64 [ %2490, %2486 ], [ %2986, %2982 ]
  %2991 = phi i32 [ %2243, %2486 ], [ %2807, %2982 ]
  %2992 = phi ptr [ %2247, %2486 ], [ %2808, %2982 ]
  %2993 = phi i64 [ %2322, %2486 ], [ %2810, %2982 ]
  %2994 = phi i32 [ %2164, %2486 ], [ %2166, %2982 ]
  %2995 = phi i32 [ %2166, %2486 ], [ %2811, %2982 ]
  store i32 2, ptr %2157, align 8, !tbaa !48
  %2996 = load ptr, ptr %1, align 8, !tbaa !49
  %2997 = ptrtoint ptr %2989 to i64
  %2998 = ptrtoint ptr %2996 to i64
  %2999 = sub i64 %2997, %2998
  %3000 = lshr exact i64 %2999, 3
  %3001 = trunc i64 %3000 to i32
  store i32 %3001, ptr %2159, align 4, !tbaa !50
  br label %3002

3002:                                             ; preds = %2988, %2982, %2486
  %3003 = phi i64 [ %2490, %2486 ], [ %2986, %2982 ], [ %2990, %2988 ]
  %3004 = phi ptr [ %2487, %2486 ], [ %2983, %2982 ], [ %2989, %2988 ]
  %3005 = phi i32 [ %2243, %2486 ], [ %2807, %2982 ], [ %2991, %2988 ]
  %3006 = phi ptr [ %2247, %2486 ], [ %2808, %2982 ], [ %2992, %2988 ]
  %3007 = phi i64 [ %2322, %2486 ], [ %2810, %2982 ], [ %2993, %2988 ]
  %3008 = phi i32 [ %2164, %2486 ], [ %2166, %2982 ], [ %2994, %2988 ]
  %3009 = phi i32 [ %2166, %2486 ], [ %2811, %2982 ], [ %2995, %2988 ]
  %3010 = trunc i64 %3003 to i16
  %3011 = getelementptr inbounds %struct.SeqDef_s, ptr %3004, i64 0, i32 2
  store i16 %3010, ptr %3011, align 2, !tbaa !61
  %3012 = getelementptr inbounds %struct.SeqDef_s, ptr %3004, i64 1
  store ptr %3012, ptr %2158, align 8, !tbaa !46
  %3013 = getelementptr inbounds i8, ptr %3006, i64 %3007
  %3014 = icmp ugt ptr %3013, %43
  br i1 %3014, label %3158, label %3015

3015:                                             ; preds = %3002
  %3016 = add i32 %3005, 2
  %3017 = zext i32 %3016 to i64
  %3018 = getelementptr inbounds i8, ptr %22, i64 %3017
  %3019 = load i64, ptr %3018, align 1, !tbaa !21
  %3020 = mul i64 %3019, -3523014627327384477
  %3021 = lshr i64 %3020, %2148
  %3022 = getelementptr inbounds i32, ptr %14, i64 %3021
  store i32 %3016, ptr %3022, align 4, !tbaa !22
  %3023 = getelementptr inbounds i8, ptr %3013, i64 -2
  %3024 = ptrtoint ptr %3023 to i64
  %3025 = sub i64 %3024, %24
  %3026 = trunc i64 %3025 to i32
  %3027 = load i64, ptr %3023, align 1, !tbaa !21
  %3028 = mul i64 %3027, -3523014627327384477
  %3029 = lshr i64 %3028, %2148
  %3030 = getelementptr inbounds i32, ptr %14, i64 %3029
  store i32 %3026, ptr %3030, align 4, !tbaa !22
  %3031 = mul i64 %3019, -3523014627193847808
  %3032 = lshr i64 %3031, %2150
  %3033 = getelementptr inbounds i32, ptr %18, i64 %3032
  store i32 %3016, ptr %3033, align 4, !tbaa !22
  %3034 = getelementptr inbounds i8, ptr %3013, i64 -1
  %3035 = ptrtoint ptr %3034 to i64
  %3036 = sub i64 %3035, %24
  %3037 = trunc i64 %3036 to i32
  %3038 = load i64, ptr %3034, align 1, !tbaa !21
  %3039 = mul i64 %3038, -3523014627193847808
  %3040 = lshr i64 %3039, %2150
  %3041 = getelementptr inbounds i32, ptr %18, i64 %3040
  store i32 %3037, ptr %3041, align 4, !tbaa !22
  br label %3042

3042:                                             ; preds = %3152, %3015
  %3043 = phi ptr [ %3012, %3015 ], [ %3155, %3152 ]
  %3044 = phi ptr [ %3013, %3015 ], [ %3156, %3152 ]
  %3045 = phi i32 [ %3009, %3015 ], [ %3046, %3152 ]
  %3046 = phi i32 [ %3008, %3015 ], [ %3045, %3152 ]
  %3047 = icmp ne i32 %3046, 0
  %3048 = load i32, ptr %3044, align 1, !tbaa !22
  %3049 = zext i32 %3046 to i64
  %3050 = sub nsw i64 0, %3049
  %3051 = getelementptr inbounds i8, ptr %3044, i64 %3050
  %3052 = load i32, ptr %3051, align 1, !tbaa !22
  %3053 = icmp eq i32 %3048, %3052
  %3054 = and i1 %3047, %3053
  br i1 %3054, label %3055, label %3158

3055:                                             ; preds = %3042
  %3056 = getelementptr inbounds i8, ptr %3044, i64 4
  %3057 = getelementptr inbounds i8, ptr %3056, i64 %3050
  %3058 = icmp ugt ptr %2151, %3056
  br i1 %3058, label %3059, label %3085

3059:                                             ; preds = %3055
  %3060 = load i64, ptr %3057, align 1, !tbaa !21
  %3061 = load i64, ptr %3056, align 1, !tbaa !21
  %3062 = xor i64 %3061, %3060
  %3063 = icmp eq i64 %3062, 0
  br i1 %3063, label %3067, label %3064

3064:                                             ; preds = %3059
  %3065 = call i64 @llvm.cttz.i64(i64 %3062, i1 true), !range !32
  %3066 = lshr i64 %3065, 3
  br label %3122

3067:                                             ; preds = %3059, %3073
  %3068 = phi ptr [ %3071, %3073 ], [ %3057, %3059 ]
  %3069 = phi ptr [ %3070, %3073 ], [ %3056, %3059 ]
  %3070 = getelementptr inbounds i8, ptr %3069, i64 8
  %3071 = getelementptr inbounds i8, ptr %3068, i64 8
  %3072 = icmp ult ptr %3070, %2151
  br i1 %3072, label %3073, label %3085

3073:                                             ; preds = %3067
  %3074 = load i64, ptr %3071, align 1, !tbaa !21
  %3075 = load i64, ptr %3070, align 1, !tbaa !21
  %3076 = xor i64 %3075, %3074
  %3077 = icmp eq i64 %3076, 0
  br i1 %3077, label %3067, label %3078

3078:                                             ; preds = %3073
  %3079 = call i64 @llvm.cttz.i64(i64 %3076, i1 true), !range !32
  %3080 = lshr i64 %3079, 3
  %3081 = getelementptr inbounds i8, ptr %3070, i64 %3080
  %3082 = ptrtoint ptr %3081 to i64
  %3083 = ptrtoint ptr %3056 to i64
  %3084 = sub i64 %3082, %3083
  br label %3122

3085:                                             ; preds = %3067, %3055
  %3086 = phi ptr [ %3057, %3055 ], [ %3071, %3067 ]
  %3087 = phi ptr [ %3056, %3055 ], [ %3070, %3067 ]
  %3088 = icmp ult ptr %3087, %2152
  br i1 %3088, label %3089, label %3096

3089:                                             ; preds = %3085
  %3090 = load i32, ptr %3086, align 1, !tbaa !22
  %3091 = load i32, ptr %3087, align 1, !tbaa !22
  %3092 = icmp eq i32 %3090, %3091
  br i1 %3092, label %3093, label %3096

3093:                                             ; preds = %3089
  %3094 = getelementptr inbounds i8, ptr %3087, i64 4
  %3095 = getelementptr inbounds i8, ptr %3086, i64 4
  br label %3096

3096:                                             ; preds = %3093, %3089, %3085
  %3097 = phi ptr [ %3095, %3093 ], [ %3086, %3089 ], [ %3086, %3085 ]
  %3098 = phi ptr [ %3094, %3093 ], [ %3087, %3089 ], [ %3087, %3085 ]
  %3099 = icmp ult ptr %3098, %2153
  br i1 %3099, label %3100, label %3107

3100:                                             ; preds = %3096
  %3101 = load i16, ptr %3097, align 1, !tbaa !33
  %3102 = load i16, ptr %3098, align 1, !tbaa !33
  %3103 = icmp eq i16 %3101, %3102
  br i1 %3103, label %3104, label %3107

3104:                                             ; preds = %3100
  %3105 = getelementptr inbounds i8, ptr %3098, i64 2
  %3106 = getelementptr inbounds i8, ptr %3097, i64 2
  br label %3107

3107:                                             ; preds = %3104, %3100, %3096
  %3108 = phi ptr [ %3106, %3104 ], [ %3097, %3100 ], [ %3097, %3096 ]
  %3109 = phi ptr [ %3105, %3104 ], [ %3098, %3100 ], [ %3098, %3096 ]
  %3110 = icmp ult ptr %3109, %42
  br i1 %3110, label %3111, label %3117

3111:                                             ; preds = %3107
  %3112 = load i8, ptr %3108, align 1, !tbaa !35
  %3113 = load i8, ptr %3109, align 1, !tbaa !35
  %3114 = icmp eq i8 %3112, %3113
  %3115 = zext i1 %3114 to i64
  %3116 = getelementptr inbounds i8, ptr %3109, i64 %3115
  br label %3117

3117:                                             ; preds = %3111, %3107
  %3118 = phi ptr [ %3109, %3107 ], [ %3116, %3111 ]
  %3119 = ptrtoint ptr %3118 to i64
  %3120 = ptrtoint ptr %3056 to i64
  %3121 = sub i64 %3119, %3120
  br label %3122

3122:                                             ; preds = %3117, %3078, %3064
  %3123 = phi i64 [ %3121, %3117 ], [ %3066, %3064 ], [ %3084, %3078 ]
  %3124 = add i64 %3123, 4
  %3125 = ptrtoint ptr %3044 to i64
  %3126 = sub i64 %3125, %24
  %3127 = trunc i64 %3126 to i32
  %3128 = load i64, ptr %3044, align 1, !tbaa !21
  %3129 = mul i64 %3128, -3523014627193847808
  %3130 = lshr i64 %3129, %2150
  %3131 = getelementptr inbounds i32, ptr %18, i64 %3130
  store i32 %3127, ptr %3131, align 4, !tbaa !22
  %3132 = mul i64 %3128, -3523014627327384477
  %3133 = lshr i64 %3132, %2148
  %3134 = getelementptr inbounds i32, ptr %14, i64 %3133
  store i32 %3127, ptr %3134, align 4, !tbaa !22
  %3135 = icmp ugt ptr %3044, %2154
  br i1 %3135, label %3140, label %3136

3136:                                             ; preds = %3122
  %3137 = load ptr, ptr %2155, align 8, !tbaa !36
  %3138 = load <2 x i64>, ptr %3044, align 1, !tbaa !35
  store <2 x i64> %3138, ptr %3137, align 1, !tbaa !35
  %3139 = load ptr, ptr %2158, align 8, !tbaa !46
  br label %3140

3140:                                             ; preds = %3136, %3122
  %3141 = phi ptr [ %3043, %3122 ], [ %3139, %3136 ]
  %3142 = getelementptr inbounds %struct.SeqDef_s, ptr %3141, i64 0, i32 1
  store i16 0, ptr %3142, align 4, !tbaa !51
  store i32 1, ptr %3141, align 4, !tbaa !53
  %3143 = add i64 %3123, 1
  %3144 = icmp ugt i64 %3143, 65535
  br i1 %3144, label %3145, label %3152, !prof !54

3145:                                             ; preds = %3140
  store i32 2, ptr %2157, align 8, !tbaa !48
  %3146 = load ptr, ptr %1, align 8, !tbaa !49
  %3147 = ptrtoint ptr %3141 to i64
  %3148 = ptrtoint ptr %3146 to i64
  %3149 = sub i64 %3147, %3148
  %3150 = lshr exact i64 %3149, 3
  %3151 = trunc i64 %3150 to i32
  store i32 %3151, ptr %2159, align 4, !tbaa !50
  br label %3152

3152:                                             ; preds = %3145, %3140
  %3153 = trunc i64 %3143 to i16
  %3154 = getelementptr inbounds %struct.SeqDef_s, ptr %3141, i64 0, i32 2
  store i16 %3153, ptr %3154, align 2, !tbaa !61
  %3155 = getelementptr inbounds %struct.SeqDef_s, ptr %3141, i64 1
  store ptr %3155, ptr %2158, align 8, !tbaa !46
  %3156 = getelementptr inbounds i8, ptr %3044, i64 %3124
  %3157 = icmp ugt ptr %3156, %43
  br i1 %3157, label %3158, label %3042

3158:                                             ; preds = %3152, %3042, %3002
  %3159 = phi i32 [ %3008, %3002 ], [ %3046, %3042 ], [ %3045, %3152 ]
  %3160 = phi i32 [ %3009, %3002 ], [ %3045, %3042 ], [ %3046, %3152 ]
  %3161 = phi ptr [ %3013, %3002 ], [ %3044, %3042 ], [ %3156, %3152 ]
  %3162 = getelementptr inbounds i8, ptr %3161, i64 1
  %3163 = icmp ugt ptr %3162, %43
  br i1 %3163, label %3164, label %2160

3164:                                             ; preds = %3158, %2615, %2223, %2145
  %3165 = phi i32 [ %60, %2145 ], [ %2164, %2223 ], [ %2164, %2615 ], [ %3159, %3158 ]
  %3166 = phi i32 [ %62, %2145 ], [ 0, %2223 ], [ %2166, %2615 ], [ %3160, %3158 ]
  %3167 = phi ptr [ %3, %2145 ], [ %2162, %2223 ], [ %2162, %2615 ], [ %3161, %3158 ]
  %3168 = select i1 %61, i32 %44, i32 0
  %3169 = select i1 %59, i32 %46, i32 0
  %3170 = icmp ne i32 %3168, 0
  %3171 = icmp ne i32 %3166, 0
  %3172 = select i1 %3170, i1 %3171, i1 false
  %3173 = select i1 %3172, i32 %3168, i32 %3169
  %3174 = select i1 %3171, i32 %3166, i32 %3168
  store i32 %3174, ptr %2, align 4, !tbaa !22
  %3175 = icmp eq i32 %3165, 0
  %3176 = select i1 %3175, i32 %3173, i32 %3165
  store i32 %3176, ptr %45, align 4, !tbaa !22
  %3177 = ptrtoint ptr %42 to i64
  %3178 = ptrtoint ptr %3167 to i64
  %3179 = sub i64 %3177, %3178
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %7) #10
  br label %4215

3180:                                             ; preds = %5
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %6) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %6, ptr noundef nonnull align 1 dereferenceable(10) @__const.ZSTD_compressBlock_doubleFast_noDict_generic.dummy, i64 10, i1 false)
  br i1 %64, label %4199, label %3181

3181:                                             ; preds = %3180
  %3182 = sub i32 64, %16
  %3183 = zext nneg i32 %3182 to i64
  %3184 = sub i32 64, %20
  %3185 = zext nneg i32 %3184 to i64
  %3186 = getelementptr inbounds i8, ptr %42, i64 -7
  %3187 = getelementptr inbounds i8, ptr %42, i64 -3
  %3188 = getelementptr inbounds i8, ptr %42, i64 -1
  %3189 = getelementptr inbounds i8, ptr %42, i64 -32
  %3190 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %3191 = ptrtoint ptr %3189 to i64
  %3192 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %3193 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %3194 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  br label %3195

3195:                                             ; preds = %4193, %3181
  %3196 = phi ptr [ %63, %3181 ], [ %4197, %4193 ]
  %3197 = phi ptr [ %3, %3181 ], [ %4196, %4193 ]
  %3198 = phi i32 [ %62, %3181 ], [ %4195, %4193 ]
  %3199 = phi i32 [ %60, %3181 ], [ %4194, %4193 ]
  %3200 = phi ptr [ %49, %3181 ], [ %4196, %4193 ]
  %3201 = freeze i32 %3198
  %3202 = getelementptr inbounds i8, ptr %3200, i64 256
  %3203 = load i64, ptr %3200, align 1, !tbaa !21
  %3204 = mul i64 %3203, -3523014627327384477
  %3205 = lshr i64 %3204, %3183
  %3206 = getelementptr inbounds i32, ptr %14, i64 %3205
  %3207 = load i32, ptr %3206, align 4, !tbaa !22
  %3208 = zext i32 %3207 to i64
  %3209 = getelementptr inbounds i8, ptr %22, i64 %3208
  %3210 = icmp eq i32 %3201, 0
  %3211 = zext i32 %3201 to i64
  %3212 = sub nsw i64 0, %3211
  br i1 %3210, label %3213, label %3263

3213:                                             ; preds = %3195, %3258
  %3214 = phi i64 [ %3230, %3258 ], [ %3203, %3195 ]
  %3215 = phi i32 [ %3242, %3258 ], [ %3207, %3195 ]
  %3216 = phi ptr [ %3244, %3258 ], [ %3209, %3195 ]
  %3217 = phi i64 [ %3232, %3258 ], [ %3205, %3195 ]
  %3218 = phi ptr [ %3219, %3258 ], [ %3200, %3195 ]
  %3219 = phi ptr [ %3261, %3258 ], [ %3196, %3195 ]
  %3220 = phi i64 [ %3259, %3258 ], [ 1, %3195 ]
  %3221 = phi ptr [ %3260, %3258 ], [ %3202, %3195 ]
  %3222 = mul i64 %3214, -3523014627193167104
  %3223 = lshr i64 %3222, %3185
  %3224 = getelementptr inbounds i32, ptr %18, i64 %3223
  %3225 = load i32, ptr %3224, align 4, !tbaa !22
  %3226 = ptrtoint ptr %3218 to i64
  %3227 = sub i64 %3226, %24
  %3228 = trunc i64 %3227 to i32
  store i32 %3228, ptr %3224, align 4, !tbaa !22
  %3229 = getelementptr inbounds i32, ptr %14, i64 %3217
  store i32 %3228, ptr %3229, align 4, !tbaa !22
  %3230 = load i64, ptr %3219, align 1, !tbaa !21
  %3231 = mul i64 %3230, -3523014627327384477
  %3232 = lshr i64 %3231, %3183
  %3233 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %3215, i32 %39, ptr nonnull %6, ptr %3216) #11, !srcloc !30
  %3234 = load i64, ptr %3233, align 1, !tbaa !21
  %3235 = icmp eq i64 %3234, %3214
  %3236 = icmp eq ptr %3233, %3216
  %3237 = select i1 %3235, i1 %3236, i1 false
  br i1 %3237, label %3536, label %3238

3238:                                             ; preds = %3213
  %3239 = zext i32 %3225 to i64
  %3240 = getelementptr inbounds i8, ptr %22, i64 %3239
  %3241 = getelementptr inbounds i32, ptr %14, i64 %3232
  %3242 = load i32, ptr %3241, align 4, !tbaa !22
  %3243 = zext i32 %3242 to i64
  %3244 = getelementptr inbounds i8, ptr %22, i64 %3243
  %3245 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %3225, i32 %39, ptr nonnull %6, ptr %3240) #11, !srcloc !30
  %3246 = load i32, ptr %3245, align 1, !tbaa !22
  %3247 = load i32, ptr %3218, align 1, !tbaa !22
  %3248 = icmp eq i32 %3246, %3247
  %3249 = icmp eq ptr %3245, %3240
  %3250 = select i1 %3248, i1 %3249, i1 false
  br i1 %3250, label %3655, label %3251

3251:                                             ; preds = %3238
  %3252 = icmp ult ptr %3219, %3221
  br i1 %3252, label %3258, label %3253

3253:                                             ; preds = %3251
  %3254 = getelementptr inbounds i8, ptr %3219, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %3254, i32 0, i32 3, i32 1)
  %3255 = getelementptr inbounds i8, ptr %3219, i64 128
  call void @llvm.prefetch.p0(ptr nonnull %3255, i32 0, i32 3, i32 1)
  %3256 = add i64 %3220, 1
  %3257 = getelementptr inbounds i8, ptr %3221, i64 256
  br label %3258

3258:                                             ; preds = %3253, %3251
  %3259 = phi i64 [ %3256, %3253 ], [ %3220, %3251 ]
  %3260 = phi ptr [ %3257, %3253 ], [ %3221, %3251 ]
  %3261 = getelementptr inbounds i8, ptr %3219, i64 %3259
  %3262 = icmp ugt ptr %3261, %43
  br i1 %3262, label %4199, label %3213, !llvm.loop !31

3263:                                             ; preds = %3195, %3650
  %3264 = phi i64 [ %3528, %3650 ], [ %3203, %3195 ]
  %3265 = phi i32 [ %3634, %3650 ], [ %3207, %3195 ]
  %3266 = phi ptr [ %3636, %3650 ], [ %3209, %3195 ]
  %3267 = phi i64 [ %3530, %3650 ], [ %3205, %3195 ]
  %3268 = phi ptr [ %3269, %3650 ], [ %3200, %3195 ]
  %3269 = phi ptr [ %3653, %3650 ], [ %3196, %3195 ]
  %3270 = phi i64 [ %3651, %3650 ], [ 1, %3195 ]
  %3271 = phi ptr [ %3652, %3650 ], [ %3202, %3195 ]
  %3272 = mul i64 %3264, -3523014627193167104
  %3273 = lshr i64 %3272, %3185
  %3274 = getelementptr inbounds i32, ptr %18, i64 %3273
  %3275 = load i32, ptr %3274, align 4, !tbaa !22
  %3276 = ptrtoint ptr %3268 to i64
  %3277 = sub i64 %3276, %24
  %3278 = trunc i64 %3277 to i32
  %3279 = zext i32 %3275 to i64
  %3280 = getelementptr inbounds i8, ptr %22, i64 %3279
  store i32 %3278, ptr %3274, align 4, !tbaa !22
  %3281 = getelementptr inbounds i32, ptr %14, i64 %3267
  store i32 %3278, ptr %3281, align 4, !tbaa !22
  %3282 = getelementptr inbounds i8, ptr %3268, i64 1
  %3283 = getelementptr inbounds i8, ptr %3282, i64 %3212
  %3284 = load i32, ptr %3283, align 1, !tbaa !22
  %3285 = load i32, ptr %3282, align 1, !tbaa !22
  %3286 = icmp eq i32 %3284, %3285
  br i1 %3286, label %3287, label %3527

3287:                                             ; preds = %3263
  %3288 = ptrtoint ptr %3268 to i64
  %3289 = getelementptr inbounds i8, ptr %3268, i64 5
  %3290 = getelementptr inbounds i8, ptr %3289, i64 %3212
  %3291 = icmp ugt ptr %3186, %3289
  br i1 %3291, label %3292, label %3318

3292:                                             ; preds = %3287
  %3293 = load i64, ptr %3290, align 1, !tbaa !21
  %3294 = load i64, ptr %3289, align 1, !tbaa !21
  %3295 = xor i64 %3294, %3293
  %3296 = icmp eq i64 %3295, 0
  br i1 %3296, label %3300, label %3297

3297:                                             ; preds = %3292
  %3298 = call i64 @llvm.cttz.i64(i64 %3295, i1 true), !range !32
  %3299 = lshr i64 %3298, 3
  br label %3355

3300:                                             ; preds = %3292, %3306
  %3301 = phi ptr [ %3304, %3306 ], [ %3290, %3292 ]
  %3302 = phi ptr [ %3303, %3306 ], [ %3289, %3292 ]
  %3303 = getelementptr inbounds i8, ptr %3302, i64 8
  %3304 = getelementptr inbounds i8, ptr %3301, i64 8
  %3305 = icmp ult ptr %3303, %3186
  br i1 %3305, label %3306, label %3318

3306:                                             ; preds = %3300
  %3307 = load i64, ptr %3304, align 1, !tbaa !21
  %3308 = load i64, ptr %3303, align 1, !tbaa !21
  %3309 = xor i64 %3308, %3307
  %3310 = icmp eq i64 %3309, 0
  br i1 %3310, label %3300, label %3311

3311:                                             ; preds = %3306
  %3312 = call i64 @llvm.cttz.i64(i64 %3309, i1 true), !range !32
  %3313 = lshr i64 %3312, 3
  %3314 = getelementptr inbounds i8, ptr %3303, i64 %3313
  %3315 = ptrtoint ptr %3314 to i64
  %3316 = ptrtoint ptr %3289 to i64
  %3317 = sub i64 %3315, %3316
  br label %3355

3318:                                             ; preds = %3300, %3287
  %3319 = phi ptr [ %3290, %3287 ], [ %3304, %3300 ]
  %3320 = phi ptr [ %3289, %3287 ], [ %3303, %3300 ]
  %3321 = icmp ult ptr %3320, %3187
  br i1 %3321, label %3322, label %3329

3322:                                             ; preds = %3318
  %3323 = load i32, ptr %3319, align 1, !tbaa !22
  %3324 = load i32, ptr %3320, align 1, !tbaa !22
  %3325 = icmp eq i32 %3323, %3324
  br i1 %3325, label %3326, label %3329

3326:                                             ; preds = %3322
  %3327 = getelementptr inbounds i8, ptr %3320, i64 4
  %3328 = getelementptr inbounds i8, ptr %3319, i64 4
  br label %3329

3329:                                             ; preds = %3326, %3322, %3318
  %3330 = phi ptr [ %3328, %3326 ], [ %3319, %3322 ], [ %3319, %3318 ]
  %3331 = phi ptr [ %3327, %3326 ], [ %3320, %3322 ], [ %3320, %3318 ]
  %3332 = icmp ult ptr %3331, %3188
  br i1 %3332, label %3333, label %3340

3333:                                             ; preds = %3329
  %3334 = load i16, ptr %3330, align 1, !tbaa !33
  %3335 = load i16, ptr %3331, align 1, !tbaa !33
  %3336 = icmp eq i16 %3334, %3335
  br i1 %3336, label %3337, label %3340

3337:                                             ; preds = %3333
  %3338 = getelementptr inbounds i8, ptr %3331, i64 2
  %3339 = getelementptr inbounds i8, ptr %3330, i64 2
  br label %3340

3340:                                             ; preds = %3337, %3333, %3329
  %3341 = phi ptr [ %3339, %3337 ], [ %3330, %3333 ], [ %3330, %3329 ]
  %3342 = phi ptr [ %3338, %3337 ], [ %3331, %3333 ], [ %3331, %3329 ]
  %3343 = icmp ult ptr %3342, %42
  br i1 %3343, label %3344, label %3350

3344:                                             ; preds = %3340
  %3345 = load i8, ptr %3341, align 1, !tbaa !35
  %3346 = load i8, ptr %3342, align 1, !tbaa !35
  %3347 = icmp eq i8 %3345, %3346
  %3348 = zext i1 %3347 to i64
  %3349 = getelementptr inbounds i8, ptr %3342, i64 %3348
  br label %3350

3350:                                             ; preds = %3344, %3340
  %3351 = phi ptr [ %3342, %3340 ], [ %3349, %3344 ]
  %3352 = ptrtoint ptr %3351 to i64
  %3353 = ptrtoint ptr %3289 to i64
  %3354 = sub i64 %3352, %3353
  br label %3355

3355:                                             ; preds = %3350, %3311, %3297
  %3356 = phi i64 [ %3354, %3350 ], [ %3299, %3297 ], [ %3317, %3311 ]
  %3357 = add i64 %3356, 4
  %3358 = ptrtoint ptr %3282 to i64
  %3359 = ptrtoint ptr %3197 to i64
  %3360 = sub i64 %3358, %3359
  %3361 = getelementptr inbounds i8, ptr %3197, i64 %3360
  %3362 = icmp ugt ptr %3361, %3189
  %3363 = load ptr, ptr %3190, align 8, !tbaa !36
  br i1 %3362, label %3387, label %3364

3364:                                             ; preds = %3355
  %3365 = load <2 x i64>, ptr %3197, align 1, !tbaa !35
  store <2 x i64> %3365, ptr %3363, align 1, !tbaa !35
  %3366 = icmp ugt i64 %3360, 16
  br i1 %3366, label %3367, label %3505

3367:                                             ; preds = %3364
  %3368 = load ptr, ptr %3190, align 8, !tbaa !36
  %3369 = getelementptr inbounds i8, ptr %3368, i64 16
  %3370 = getelementptr inbounds i8, ptr %3197, i64 16
  %3371 = add i64 %3360, -16
  %3372 = getelementptr inbounds i8, ptr %3368, i64 %3360
  %3373 = load <2 x i64>, ptr %3370, align 1, !tbaa !35
  store <2 x i64> %3373, ptr %3369, align 1, !tbaa !35
  %3374 = icmp ult i64 %3371, 17
  br i1 %3374, label %3505, label %3375

3375:                                             ; preds = %3367
  %3376 = getelementptr inbounds i8, ptr %3368, i64 32
  br label %3377

3377:                                             ; preds = %3377, %3375
  %3378 = phi ptr [ %3376, %3375 ], [ %3385, %3377 ]
  %3379 = phi ptr [ %3370, %3375 ], [ %3383, %3377 ]
  %3380 = getelementptr inbounds i8, ptr %3379, i64 16
  %3381 = load <2 x i64>, ptr %3380, align 1, !tbaa !35
  store <2 x i64> %3381, ptr %3378, align 1, !tbaa !35
  %3382 = getelementptr inbounds i8, ptr %3378, i64 16
  %3383 = getelementptr inbounds i8, ptr %3379, i64 32
  %3384 = load <2 x i64>, ptr %3383, align 1, !tbaa !35
  store <2 x i64> %3384, ptr %3382, align 1, !tbaa !35
  %3385 = getelementptr inbounds i8, ptr %3378, i64 32
  %3386 = icmp ult ptr %3385, %3372
  br i1 %3386, label %3377, label %3509, !llvm.loop !38

3387:                                             ; preds = %3355
  %3388 = ptrtoint ptr %3361 to i64
  %3389 = icmp ugt ptr %3197, %3189
  br i1 %3389, label %3407, label %3390

3390:                                             ; preds = %3387
  %3391 = sub i64 %3191, %3359
  %3392 = getelementptr inbounds i8, ptr %3363, i64 %3391
  %3393 = load <2 x i64>, ptr %3197, align 1, !tbaa !35
  store <2 x i64> %3393, ptr %3363, align 1, !tbaa !35
  %3394 = icmp ult i64 %3391, 17
  br i1 %3394, label %3407, label %3395

3395:                                             ; preds = %3390
  %3396 = getelementptr inbounds i8, ptr %3363, i64 16
  br label %3397

3397:                                             ; preds = %3397, %3395
  %3398 = phi ptr [ %3396, %3395 ], [ %3405, %3397 ]
  %3399 = phi ptr [ %3197, %3395 ], [ %3403, %3397 ]
  %3400 = getelementptr inbounds i8, ptr %3399, i64 16
  %3401 = load <2 x i64>, ptr %3400, align 1, !tbaa !35
  store <2 x i64> %3401, ptr %3398, align 1, !tbaa !35
  %3402 = getelementptr inbounds i8, ptr %3398, i64 16
  %3403 = getelementptr inbounds i8, ptr %3399, i64 32
  %3404 = load <2 x i64>, ptr %3403, align 1, !tbaa !35
  store <2 x i64> %3404, ptr %3402, align 1, !tbaa !35
  %3405 = getelementptr inbounds i8, ptr %3398, i64 32
  %3406 = icmp ult ptr %3405, %3392
  br i1 %3406, label %3397, label %3407, !llvm.loop !38

3407:                                             ; preds = %3397, %3390, %3387
  %3408 = phi ptr [ %3189, %3390 ], [ %3197, %3387 ], [ %3189, %3397 ]
  %3409 = phi ptr [ %3392, %3390 ], [ %3363, %3387 ], [ %3392, %3397 ]
  %3410 = icmp ult ptr %3408, %3361
  br i1 %3410, label %3411, label %3509

3411:                                             ; preds = %3407
  %3412 = ptrtoint ptr %3409 to i64
  %3413 = ptrtoint ptr %3408 to i64
  %3414 = sub i64 %3388, %3413
  %3415 = getelementptr i8, ptr %3408, i64 %3414
  %3416 = icmp ult i64 %3414, 8
  %3417 = sub i64 %3412, %3413
  %3418 = icmp ult i64 %3417, 32
  %3419 = select i1 %3416, i1 true, i1 %3418
  br i1 %3419, label %3455, label %3420

3420:                                             ; preds = %3411
  %3421 = icmp ult i64 %3414, 32
  br i1 %3421, label %3441, label %3422

3422:                                             ; preds = %3420
  %3423 = and i64 %3414, -32
  br label %3424

3424:                                             ; preds = %3424, %3422
  %3425 = phi i64 [ 0, %3422 ], [ %3432, %3424 ]
  %3426 = getelementptr i8, ptr %3409, i64 %3425
  %3427 = getelementptr i8, ptr %3408, i64 %3425
  %3428 = getelementptr i8, ptr %3427, i64 16
  %3429 = load <16 x i8>, ptr %3427, align 1, !tbaa !35
  %3430 = load <16 x i8>, ptr %3428, align 1, !tbaa !35
  %3431 = getelementptr i8, ptr %3426, i64 16
  store <16 x i8> %3429, ptr %3426, align 1, !tbaa !35
  store <16 x i8> %3430, ptr %3431, align 1, !tbaa !35
  %3432 = add nuw i64 %3425, 32
  %3433 = icmp eq i64 %3432, %3423
  br i1 %3433, label %3434, label %3424, !llvm.loop !78

3434:                                             ; preds = %3424
  %3435 = icmp eq i64 %3414, %3423
  br i1 %3435, label %3509, label %3436

3436:                                             ; preds = %3434
  %3437 = getelementptr i8, ptr %3408, i64 %3423
  %3438 = getelementptr i8, ptr %3409, i64 %3423
  %3439 = and i64 %3414, 24
  %3440 = icmp eq i64 %3439, 0
  br i1 %3440, label %3455, label %3441

3441:                                             ; preds = %3420, %3436
  %3442 = phi i64 [ %3423, %3436 ], [ 0, %3420 ]
  %3443 = and i64 %3414, -8
  %3444 = getelementptr i8, ptr %3409, i64 %3443
  %3445 = getelementptr i8, ptr %3408, i64 %3443
  br label %3446

3446:                                             ; preds = %3446, %3441
  %3447 = phi i64 [ %3442, %3441 ], [ %3451, %3446 ]
  %3448 = getelementptr i8, ptr %3409, i64 %3447
  %3449 = getelementptr i8, ptr %3408, i64 %3447
  %3450 = load <8 x i8>, ptr %3449, align 1, !tbaa !35
  store <8 x i8> %3450, ptr %3448, align 1, !tbaa !35
  %3451 = add nuw i64 %3447, 8
  %3452 = icmp eq i64 %3451, %3443
  br i1 %3452, label %3453, label %3446, !llvm.loop !79

3453:                                             ; preds = %3446
  %3454 = icmp eq i64 %3414, %3443
  br i1 %3454, label %3509, label %3455

3455:                                             ; preds = %3411, %3436, %3453
  %3456 = phi ptr [ %3409, %3411 ], [ %3438, %3436 ], [ %3444, %3453 ]
  %3457 = phi ptr [ %3408, %3411 ], [ %3437, %3436 ], [ %3445, %3453 ]
  %3458 = ptrtoint ptr %3457 to i64
  %3459 = sub i64 %3288, %3458
  %3460 = add i64 %3459, 1
  %3461 = sub i64 %3288, %3458
  %3462 = and i64 %3460, 7
  %3463 = icmp eq i64 %3462, 0
  br i1 %3463, label %3473, label %3464

3464:                                             ; preds = %3455, %3464
  %3465 = phi ptr [ %3470, %3464 ], [ %3456, %3455 ]
  %3466 = phi ptr [ %3468, %3464 ], [ %3457, %3455 ]
  %3467 = phi i64 [ %3471, %3464 ], [ 0, %3455 ]
  %3468 = getelementptr inbounds i8, ptr %3466, i64 1
  %3469 = load i8, ptr %3466, align 1, !tbaa !35
  %3470 = getelementptr inbounds i8, ptr %3465, i64 1
  store i8 %3469, ptr %3465, align 1, !tbaa !35
  %3471 = add i64 %3467, 1
  %3472 = icmp eq i64 %3471, %3462
  br i1 %3472, label %3473, label %3464, !llvm.loop !80

3473:                                             ; preds = %3464, %3455
  %3474 = phi ptr [ %3456, %3455 ], [ %3470, %3464 ]
  %3475 = phi ptr [ %3457, %3455 ], [ %3468, %3464 ]
  %3476 = icmp ult i64 %3461, 7
  br i1 %3476, label %3509, label %3477

3477:                                             ; preds = %3473, %3477
  %3478 = phi ptr [ %3503, %3477 ], [ %3474, %3473 ]
  %3479 = phi ptr [ %3501, %3477 ], [ %3475, %3473 ]
  %3480 = getelementptr inbounds i8, ptr %3479, i64 1
  %3481 = load i8, ptr %3479, align 1, !tbaa !35
  %3482 = getelementptr inbounds i8, ptr %3478, i64 1
  store i8 %3481, ptr %3478, align 1, !tbaa !35
  %3483 = getelementptr inbounds i8, ptr %3479, i64 2
  %3484 = load i8, ptr %3480, align 1, !tbaa !35
  %3485 = getelementptr inbounds i8, ptr %3478, i64 2
  store i8 %3484, ptr %3482, align 1, !tbaa !35
  %3486 = getelementptr inbounds i8, ptr %3479, i64 3
  %3487 = load i8, ptr %3483, align 1, !tbaa !35
  %3488 = getelementptr inbounds i8, ptr %3478, i64 3
  store i8 %3487, ptr %3485, align 1, !tbaa !35
  %3489 = getelementptr inbounds i8, ptr %3479, i64 4
  %3490 = load i8, ptr %3486, align 1, !tbaa !35
  %3491 = getelementptr inbounds i8, ptr %3478, i64 4
  store i8 %3490, ptr %3488, align 1, !tbaa !35
  %3492 = getelementptr inbounds i8, ptr %3479, i64 5
  %3493 = load i8, ptr %3489, align 1, !tbaa !35
  %3494 = getelementptr inbounds i8, ptr %3478, i64 5
  store i8 %3493, ptr %3491, align 1, !tbaa !35
  %3495 = getelementptr inbounds i8, ptr %3479, i64 6
  %3496 = load i8, ptr %3492, align 1, !tbaa !35
  %3497 = getelementptr inbounds i8, ptr %3478, i64 6
  store i8 %3496, ptr %3494, align 1, !tbaa !35
  %3498 = getelementptr inbounds i8, ptr %3479, i64 7
  %3499 = load i8, ptr %3495, align 1, !tbaa !35
  %3500 = getelementptr inbounds i8, ptr %3478, i64 7
  store i8 %3499, ptr %3497, align 1, !tbaa !35
  %3501 = getelementptr inbounds i8, ptr %3479, i64 8
  %3502 = load i8, ptr %3498, align 1, !tbaa !35
  %3503 = getelementptr inbounds i8, ptr %3478, i64 8
  store i8 %3502, ptr %3500, align 1, !tbaa !35
  %3504 = icmp eq ptr %3501, %3415
  br i1 %3504, label %3509, label %3477, !llvm.loop !81

3505:                                             ; preds = %3367, %3364
  %3506 = load ptr, ptr %3190, align 8, !tbaa !36
  %3507 = getelementptr inbounds i8, ptr %3506, i64 %3360
  store ptr %3507, ptr %3190, align 8, !tbaa !36
  %3508 = load ptr, ptr %3193, align 8, !tbaa !46
  br label %3521

3509:                                             ; preds = %3377, %3473, %3477, %3434, %3453, %3407
  %3510 = load ptr, ptr %3190, align 8, !tbaa !36
  %3511 = getelementptr inbounds i8, ptr %3510, i64 %3360
  store ptr %3511, ptr %3190, align 8, !tbaa !36
  %3512 = icmp ugt i64 %3360, 65535
  %3513 = load ptr, ptr %3193, align 8, !tbaa !46
  br i1 %3512, label %3514, label %3521, !prof !47

3514:                                             ; preds = %3509
  store i32 1, ptr %3192, align 8, !tbaa !48
  %3515 = load ptr, ptr %1, align 8, !tbaa !49
  %3516 = ptrtoint ptr %3513 to i64
  %3517 = ptrtoint ptr %3515 to i64
  %3518 = sub i64 %3516, %3517
  %3519 = lshr exact i64 %3518, 3
  %3520 = trunc i64 %3519 to i32
  store i32 %3520, ptr %3194, align 4, !tbaa !50
  br label %3521

3521:                                             ; preds = %3514, %3509, %3505
  %3522 = phi ptr [ %3508, %3505 ], [ %3513, %3514 ], [ %3513, %3509 ]
  %3523 = trunc i64 %3360 to i16
  %3524 = getelementptr inbounds %struct.SeqDef_s, ptr %3522, i64 0, i32 1
  store i16 %3523, ptr %3524, align 4, !tbaa !51
  store i32 1, ptr %3522, align 4, !tbaa !53
  %3525 = add i64 %3356, 1
  %3526 = icmp ugt i64 %3525, 65535
  br i1 %3526, label %4023, label %4037, !prof !54

3527:                                             ; preds = %3263
  %3528 = load i64, ptr %3269, align 1, !tbaa !21
  %3529 = mul i64 %3528, -3523014627327384477
  %3530 = lshr i64 %3529, %3183
  %3531 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %3265, i32 %39, ptr nonnull %6, ptr %3266) #11, !srcloc !30
  %3532 = load i64, ptr %3531, align 1, !tbaa !21
  %3533 = icmp eq i64 %3532, %3264
  %3534 = icmp eq ptr %3531, %3266
  %3535 = select i1 %3533, i1 %3534, i1 false
  br i1 %3535, label %3536, label %3632

3536:                                             ; preds = %3527, %3213
  %3537 = phi i64 [ %3232, %3213 ], [ %3530, %3527 ]
  %3538 = phi ptr [ %3216, %3213 ], [ %3266, %3527 ]
  %3539 = phi ptr [ %3218, %3213 ], [ %3268, %3527 ]
  %3540 = phi ptr [ %3219, %3213 ], [ %3269, %3527 ]
  %3541 = phi i64 [ %3220, %3213 ], [ %3270, %3527 ]
  %3542 = phi i64 [ %3226, %3213 ], [ %3276, %3527 ]
  %3543 = phi i32 [ %3228, %3213 ], [ %3278, %3527 ]
  %3544 = getelementptr inbounds i8, ptr %3539, i64 8
  %3545 = getelementptr inbounds i8, ptr %3538, i64 8
  %3546 = icmp ugt ptr %3186, %3544
  br i1 %3546, label %3547, label %3573

3547:                                             ; preds = %3536
  %3548 = load i64, ptr %3545, align 1, !tbaa !21
  %3549 = load i64, ptr %3544, align 1, !tbaa !21
  %3550 = xor i64 %3549, %3548
  %3551 = icmp eq i64 %3550, 0
  br i1 %3551, label %3555, label %3552

3552:                                             ; preds = %3547
  %3553 = call i64 @llvm.cttz.i64(i64 %3550, i1 true), !range !32
  %3554 = lshr i64 %3553, 3
  br label %3610

3555:                                             ; preds = %3547, %3561
  %3556 = phi ptr [ %3559, %3561 ], [ %3545, %3547 ]
  %3557 = phi ptr [ %3558, %3561 ], [ %3544, %3547 ]
  %3558 = getelementptr inbounds i8, ptr %3557, i64 8
  %3559 = getelementptr inbounds i8, ptr %3556, i64 8
  %3560 = icmp ult ptr %3558, %3186
  br i1 %3560, label %3561, label %3573

3561:                                             ; preds = %3555
  %3562 = load i64, ptr %3559, align 1, !tbaa !21
  %3563 = load i64, ptr %3558, align 1, !tbaa !21
  %3564 = xor i64 %3563, %3562
  %3565 = icmp eq i64 %3564, 0
  br i1 %3565, label %3555, label %3566

3566:                                             ; preds = %3561
  %3567 = call i64 @llvm.cttz.i64(i64 %3564, i1 true), !range !32
  %3568 = lshr i64 %3567, 3
  %3569 = getelementptr inbounds i8, ptr %3558, i64 %3568
  %3570 = ptrtoint ptr %3569 to i64
  %3571 = ptrtoint ptr %3544 to i64
  %3572 = sub i64 %3570, %3571
  br label %3610

3573:                                             ; preds = %3555, %3536
  %3574 = phi ptr [ %3545, %3536 ], [ %3559, %3555 ]
  %3575 = phi ptr [ %3544, %3536 ], [ %3558, %3555 ]
  %3576 = icmp ult ptr %3575, %3187
  br i1 %3576, label %3577, label %3584

3577:                                             ; preds = %3573
  %3578 = load i32, ptr %3574, align 1, !tbaa !22
  %3579 = load i32, ptr %3575, align 1, !tbaa !22
  %3580 = icmp eq i32 %3578, %3579
  br i1 %3580, label %3581, label %3584

3581:                                             ; preds = %3577
  %3582 = getelementptr inbounds i8, ptr %3575, i64 4
  %3583 = getelementptr inbounds i8, ptr %3574, i64 4
  br label %3584

3584:                                             ; preds = %3581, %3577, %3573
  %3585 = phi ptr [ %3583, %3581 ], [ %3574, %3577 ], [ %3574, %3573 ]
  %3586 = phi ptr [ %3582, %3581 ], [ %3575, %3577 ], [ %3575, %3573 ]
  %3587 = icmp ult ptr %3586, %3188
  br i1 %3587, label %3588, label %3595

3588:                                             ; preds = %3584
  %3589 = load i16, ptr %3585, align 1, !tbaa !33
  %3590 = load i16, ptr %3586, align 1, !tbaa !33
  %3591 = icmp eq i16 %3589, %3590
  br i1 %3591, label %3592, label %3595

3592:                                             ; preds = %3588
  %3593 = getelementptr inbounds i8, ptr %3586, i64 2
  %3594 = getelementptr inbounds i8, ptr %3585, i64 2
  br label %3595

3595:                                             ; preds = %3592, %3588, %3584
  %3596 = phi ptr [ %3594, %3592 ], [ %3585, %3588 ], [ %3585, %3584 ]
  %3597 = phi ptr [ %3593, %3592 ], [ %3586, %3588 ], [ %3586, %3584 ]
  %3598 = icmp ult ptr %3597, %42
  br i1 %3598, label %3599, label %3605

3599:                                             ; preds = %3595
  %3600 = load i8, ptr %3596, align 1, !tbaa !35
  %3601 = load i8, ptr %3597, align 1, !tbaa !35
  %3602 = icmp eq i8 %3600, %3601
  %3603 = zext i1 %3602 to i64
  %3604 = getelementptr inbounds i8, ptr %3597, i64 %3603
  br label %3605

3605:                                             ; preds = %3599, %3595
  %3606 = phi ptr [ %3597, %3595 ], [ %3604, %3599 ]
  %3607 = ptrtoint ptr %3606 to i64
  %3608 = ptrtoint ptr %3544 to i64
  %3609 = sub i64 %3607, %3608
  br label %3610

3610:                                             ; preds = %3605, %3566, %3552
  %3611 = phi i64 [ %3609, %3605 ], [ %3554, %3552 ], [ %3572, %3566 ]
  %3612 = add i64 %3611, 8
  %3613 = ptrtoint ptr %3538 to i64
  %3614 = sub i64 %3542, %3613
  %3615 = icmp ugt ptr %3539, %3197
  %3616 = icmp ugt ptr %3538, %41
  %3617 = and i1 %3616, %3615
  br i1 %3617, label %3618, label %3838

3618:                                             ; preds = %3610, %3627
  %3619 = phi i64 [ %3628, %3627 ], [ %3612, %3610 ]
  %3620 = phi ptr [ %3622, %3627 ], [ %3539, %3610 ]
  %3621 = phi ptr [ %3624, %3627 ], [ %3538, %3610 ]
  %3622 = getelementptr inbounds i8, ptr %3620, i64 -1
  %3623 = load i8, ptr %3622, align 1, !tbaa !35
  %3624 = getelementptr inbounds i8, ptr %3621, i64 -1
  %3625 = load i8, ptr %3624, align 1, !tbaa !35
  %3626 = icmp eq i8 %3623, %3625
  br i1 %3626, label %3627, label %3838

3627:                                             ; preds = %3618
  %3628 = add i64 %3619, 1
  %3629 = icmp ugt ptr %3622, %3197
  %3630 = icmp ugt ptr %3624, %41
  %3631 = and i1 %3629, %3630
  br i1 %3631, label %3618, label %3838, !llvm.loop !55

3632:                                             ; preds = %3527
  %3633 = getelementptr inbounds i32, ptr %14, i64 %3530
  %3634 = load i32, ptr %3633, align 4, !tbaa !22
  %3635 = zext i32 %3634 to i64
  %3636 = getelementptr inbounds i8, ptr %22, i64 %3635
  %3637 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %3275, i32 %39, ptr nonnull %6, ptr %3280) #11, !srcloc !30
  %3638 = load i32, ptr %3637, align 1, !tbaa !22
  %3639 = load i32, ptr %3268, align 1, !tbaa !22
  %3640 = icmp eq i32 %3638, %3639
  %3641 = icmp eq ptr %3637, %3280
  %3642 = select i1 %3640, i1 %3641, i1 false
  br i1 %3642, label %3655, label %3643

3643:                                             ; preds = %3632
  %3644 = icmp ult ptr %3269, %3271
  br i1 %3644, label %3650, label %3645

3645:                                             ; preds = %3643
  %3646 = getelementptr inbounds i8, ptr %3269, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %3646, i32 0, i32 3, i32 1)
  %3647 = getelementptr inbounds i8, ptr %3269, i64 128
  call void @llvm.prefetch.p0(ptr nonnull %3647, i32 0, i32 3, i32 1)
  %3648 = add i64 %3270, 1
  %3649 = getelementptr inbounds i8, ptr %3271, i64 256
  br label %3650

3650:                                             ; preds = %3645, %3643
  %3651 = phi i64 [ %3648, %3645 ], [ %3270, %3643 ]
  %3652 = phi ptr [ %3649, %3645 ], [ %3271, %3643 ]
  %3653 = getelementptr inbounds i8, ptr %3269, i64 %3651
  %3654 = icmp ugt ptr %3653, %43
  br i1 %3654, label %4199, label %3263, !llvm.loop !31

3655:                                             ; preds = %3632, %3238
  %3656 = phi i64 [ %3230, %3238 ], [ %3528, %3632 ]
  %3657 = phi i32 [ %3242, %3238 ], [ %3634, %3632 ]
  %3658 = phi ptr [ %3244, %3238 ], [ %3636, %3632 ]
  %3659 = phi i64 [ %3232, %3238 ], [ %3530, %3632 ]
  %3660 = phi ptr [ %3218, %3238 ], [ %3268, %3632 ]
  %3661 = phi ptr [ %3219, %3238 ], [ %3269, %3632 ]
  %3662 = phi i64 [ %3220, %3238 ], [ %3270, %3632 ]
  %3663 = phi i32 [ %3228, %3238 ], [ %3278, %3632 ]
  %3664 = phi ptr [ %3240, %3238 ], [ %3280, %3632 ]
  %3665 = getelementptr inbounds i8, ptr %3660, i64 4
  %3666 = getelementptr inbounds i8, ptr %3664, i64 4
  %3667 = icmp ugt ptr %3186, %3665
  br i1 %3667, label %3668, label %3694

3668:                                             ; preds = %3655
  %3669 = load i64, ptr %3666, align 1, !tbaa !21
  %3670 = load i64, ptr %3665, align 1, !tbaa !21
  %3671 = xor i64 %3670, %3669
  %3672 = icmp eq i64 %3671, 0
  br i1 %3672, label %3676, label %3673

3673:                                             ; preds = %3668
  %3674 = call i64 @llvm.cttz.i64(i64 %3671, i1 true), !range !32
  %3675 = lshr i64 %3674, 3
  br label %3731

3676:                                             ; preds = %3668, %3682
  %3677 = phi ptr [ %3680, %3682 ], [ %3666, %3668 ]
  %3678 = phi ptr [ %3679, %3682 ], [ %3665, %3668 ]
  %3679 = getelementptr inbounds i8, ptr %3678, i64 8
  %3680 = getelementptr inbounds i8, ptr %3677, i64 8
  %3681 = icmp ult ptr %3679, %3186
  br i1 %3681, label %3682, label %3694

3682:                                             ; preds = %3676
  %3683 = load i64, ptr %3680, align 1, !tbaa !21
  %3684 = load i64, ptr %3679, align 1, !tbaa !21
  %3685 = xor i64 %3684, %3683
  %3686 = icmp eq i64 %3685, 0
  br i1 %3686, label %3676, label %3687

3687:                                             ; preds = %3682
  %3688 = call i64 @llvm.cttz.i64(i64 %3685, i1 true), !range !32
  %3689 = lshr i64 %3688, 3
  %3690 = getelementptr inbounds i8, ptr %3679, i64 %3689
  %3691 = ptrtoint ptr %3690 to i64
  %3692 = ptrtoint ptr %3665 to i64
  %3693 = sub i64 %3691, %3692
  br label %3731

3694:                                             ; preds = %3676, %3655
  %3695 = phi ptr [ %3666, %3655 ], [ %3680, %3676 ]
  %3696 = phi ptr [ %3665, %3655 ], [ %3679, %3676 ]
  %3697 = icmp ult ptr %3696, %3187
  br i1 %3697, label %3698, label %3705

3698:                                             ; preds = %3694
  %3699 = load i32, ptr %3695, align 1, !tbaa !22
  %3700 = load i32, ptr %3696, align 1, !tbaa !22
  %3701 = icmp eq i32 %3699, %3700
  br i1 %3701, label %3702, label %3705

3702:                                             ; preds = %3698
  %3703 = getelementptr inbounds i8, ptr %3696, i64 4
  %3704 = getelementptr inbounds i8, ptr %3695, i64 4
  br label %3705

3705:                                             ; preds = %3702, %3698, %3694
  %3706 = phi ptr [ %3704, %3702 ], [ %3695, %3698 ], [ %3695, %3694 ]
  %3707 = phi ptr [ %3703, %3702 ], [ %3696, %3698 ], [ %3696, %3694 ]
  %3708 = icmp ult ptr %3707, %3188
  br i1 %3708, label %3709, label %3716

3709:                                             ; preds = %3705
  %3710 = load i16, ptr %3706, align 1, !tbaa !33
  %3711 = load i16, ptr %3707, align 1, !tbaa !33
  %3712 = icmp eq i16 %3710, %3711
  br i1 %3712, label %3713, label %3716

3713:                                             ; preds = %3709
  %3714 = getelementptr inbounds i8, ptr %3707, i64 2
  %3715 = getelementptr inbounds i8, ptr %3706, i64 2
  br label %3716

3716:                                             ; preds = %3713, %3709, %3705
  %3717 = phi ptr [ %3715, %3713 ], [ %3706, %3709 ], [ %3706, %3705 ]
  %3718 = phi ptr [ %3714, %3713 ], [ %3707, %3709 ], [ %3707, %3705 ]
  %3719 = icmp ult ptr %3718, %42
  br i1 %3719, label %3720, label %3726

3720:                                             ; preds = %3716
  %3721 = load i8, ptr %3717, align 1, !tbaa !35
  %3722 = load i8, ptr %3718, align 1, !tbaa !35
  %3723 = icmp eq i8 %3721, %3722
  %3724 = zext i1 %3723 to i64
  %3725 = getelementptr inbounds i8, ptr %3718, i64 %3724
  br label %3726

3726:                                             ; preds = %3720, %3716
  %3727 = phi ptr [ %3718, %3716 ], [ %3725, %3720 ]
  %3728 = ptrtoint ptr %3727 to i64
  %3729 = ptrtoint ptr %3665 to i64
  %3730 = sub i64 %3728, %3729
  br label %3731

3731:                                             ; preds = %3726, %3687, %3673
  %3732 = phi i64 [ %3730, %3726 ], [ %3675, %3673 ], [ %3693, %3687 ]
  %3733 = add i64 %3732, 4
  %3734 = ptrtoint ptr %3660 to i64
  %3735 = ptrtoint ptr %3664 to i64
  %3736 = sub i64 %3734, %3735
  %3737 = icmp ugt i32 %3657, %39
  br i1 %3737, label %3738, label %3816

3738:                                             ; preds = %3731
  %3739 = load i64, ptr %3658, align 1, !tbaa !21
  %3740 = icmp eq i64 %3739, %3656
  br i1 %3740, label %3741, label %3816

3741:                                             ; preds = %3738
  %3742 = getelementptr inbounds i8, ptr %3661, i64 8
  %3743 = getelementptr inbounds i8, ptr %3658, i64 8
  %3744 = icmp ugt ptr %3186, %3742
  br i1 %3744, label %3745, label %3771

3745:                                             ; preds = %3741
  %3746 = load i64, ptr %3743, align 1, !tbaa !21
  %3747 = load i64, ptr %3742, align 1, !tbaa !21
  %3748 = xor i64 %3747, %3746
  %3749 = icmp eq i64 %3748, 0
  br i1 %3749, label %3753, label %3750

3750:                                             ; preds = %3745
  %3751 = call i64 @llvm.cttz.i64(i64 %3748, i1 true), !range !32
  %3752 = lshr i64 %3751, 3
  br label %3808

3753:                                             ; preds = %3745, %3759
  %3754 = phi ptr [ %3757, %3759 ], [ %3743, %3745 ]
  %3755 = phi ptr [ %3756, %3759 ], [ %3742, %3745 ]
  %3756 = getelementptr inbounds i8, ptr %3755, i64 8
  %3757 = getelementptr inbounds i8, ptr %3754, i64 8
  %3758 = icmp ult ptr %3756, %3186
  br i1 %3758, label %3759, label %3771

3759:                                             ; preds = %3753
  %3760 = load i64, ptr %3757, align 1, !tbaa !21
  %3761 = load i64, ptr %3756, align 1, !tbaa !21
  %3762 = xor i64 %3761, %3760
  %3763 = icmp eq i64 %3762, 0
  br i1 %3763, label %3753, label %3764

3764:                                             ; preds = %3759
  %3765 = call i64 @llvm.cttz.i64(i64 %3762, i1 true), !range !32
  %3766 = lshr i64 %3765, 3
  %3767 = getelementptr inbounds i8, ptr %3756, i64 %3766
  %3768 = ptrtoint ptr %3767 to i64
  %3769 = ptrtoint ptr %3742 to i64
  %3770 = sub i64 %3768, %3769
  br label %3808

3771:                                             ; preds = %3753, %3741
  %3772 = phi ptr [ %3743, %3741 ], [ %3757, %3753 ]
  %3773 = phi ptr [ %3742, %3741 ], [ %3756, %3753 ]
  %3774 = icmp ult ptr %3773, %3187
  br i1 %3774, label %3775, label %3782

3775:                                             ; preds = %3771
  %3776 = load i32, ptr %3772, align 1, !tbaa !22
  %3777 = load i32, ptr %3773, align 1, !tbaa !22
  %3778 = icmp eq i32 %3776, %3777
  br i1 %3778, label %3779, label %3782

3779:                                             ; preds = %3775
  %3780 = getelementptr inbounds i8, ptr %3773, i64 4
  %3781 = getelementptr inbounds i8, ptr %3772, i64 4
  br label %3782

3782:                                             ; preds = %3779, %3775, %3771
  %3783 = phi ptr [ %3781, %3779 ], [ %3772, %3775 ], [ %3772, %3771 ]
  %3784 = phi ptr [ %3780, %3779 ], [ %3773, %3775 ], [ %3773, %3771 ]
  %3785 = icmp ult ptr %3784, %3188
  br i1 %3785, label %3786, label %3793

3786:                                             ; preds = %3782
  %3787 = load i16, ptr %3783, align 1, !tbaa !33
  %3788 = load i16, ptr %3784, align 1, !tbaa !33
  %3789 = icmp eq i16 %3787, %3788
  br i1 %3789, label %3790, label %3793

3790:                                             ; preds = %3786
  %3791 = getelementptr inbounds i8, ptr %3784, i64 2
  %3792 = getelementptr inbounds i8, ptr %3783, i64 2
  br label %3793

3793:                                             ; preds = %3790, %3786, %3782
  %3794 = phi ptr [ %3792, %3790 ], [ %3783, %3786 ], [ %3783, %3782 ]
  %3795 = phi ptr [ %3791, %3790 ], [ %3784, %3786 ], [ %3784, %3782 ]
  %3796 = icmp ult ptr %3795, %42
  br i1 %3796, label %3797, label %3803

3797:                                             ; preds = %3793
  %3798 = load i8, ptr %3794, align 1, !tbaa !35
  %3799 = load i8, ptr %3795, align 1, !tbaa !35
  %3800 = icmp eq i8 %3798, %3799
  %3801 = zext i1 %3800 to i64
  %3802 = getelementptr inbounds i8, ptr %3795, i64 %3801
  br label %3803

3803:                                             ; preds = %3797, %3793
  %3804 = phi ptr [ %3795, %3793 ], [ %3802, %3797 ]
  %3805 = ptrtoint ptr %3804 to i64
  %3806 = ptrtoint ptr %3742 to i64
  %3807 = sub i64 %3805, %3806
  br label %3808

3808:                                             ; preds = %3803, %3764, %3750
  %3809 = phi i64 [ %3807, %3803 ], [ %3752, %3750 ], [ %3770, %3764 ]
  %3810 = add i64 %3809, 8
  %3811 = icmp ugt i64 %3810, %3733
  br i1 %3811, label %3812, label %3816

3812:                                             ; preds = %3808
  %3813 = ptrtoint ptr %3661 to i64
  %3814 = ptrtoint ptr %3658 to i64
  %3815 = sub i64 %3813, %3814
  br label %3816

3816:                                             ; preds = %3812, %3808, %3738, %3731
  %3817 = phi ptr [ %3664, %3738 ], [ %3664, %3731 ], [ %3658, %3812 ], [ %3664, %3808 ]
  %3818 = phi ptr [ %3660, %3738 ], [ %3660, %3731 ], [ %3661, %3812 ], [ %3660, %3808 ]
  %3819 = phi i64 [ %3736, %3738 ], [ %3736, %3731 ], [ %3815, %3812 ], [ %3736, %3808 ]
  %3820 = phi i64 [ %3733, %3738 ], [ %3733, %3731 ], [ %3810, %3812 ], [ %3733, %3808 ]
  %3821 = icmp ugt ptr %3818, %3197
  %3822 = icmp ugt ptr %3817, %41
  %3823 = and i1 %3822, %3821
  br i1 %3823, label %3824, label %3838

3824:                                             ; preds = %3816, %3833
  %3825 = phi i64 [ %3834, %3833 ], [ %3820, %3816 ]
  %3826 = phi ptr [ %3828, %3833 ], [ %3818, %3816 ]
  %3827 = phi ptr [ %3830, %3833 ], [ %3817, %3816 ]
  %3828 = getelementptr inbounds i8, ptr %3826, i64 -1
  %3829 = load i8, ptr %3828, align 1, !tbaa !35
  %3830 = getelementptr inbounds i8, ptr %3827, i64 -1
  %3831 = load i8, ptr %3830, align 1, !tbaa !35
  %3832 = icmp eq i8 %3829, %3831
  br i1 %3832, label %3833, label %3838

3833:                                             ; preds = %3824
  %3834 = add i64 %3825, 1
  %3835 = icmp ugt ptr %3828, %3197
  %3836 = icmp ugt ptr %3830, %41
  %3837 = and i1 %3835, %3836
  br i1 %3837, label %3824, label %3838, !llvm.loop !56

3838:                                             ; preds = %3833, %3824, %3627, %3618, %3816, %3610
  %3839 = phi i64 [ %3537, %3610 ], [ %3659, %3816 ], [ %3537, %3618 ], [ %3537, %3627 ], [ %3659, %3824 ], [ %3659, %3833 ]
  %3840 = phi ptr [ %3540, %3610 ], [ %3661, %3816 ], [ %3540, %3618 ], [ %3540, %3627 ], [ %3661, %3824 ], [ %3661, %3833 ]
  %3841 = phi i64 [ %3541, %3610 ], [ %3662, %3816 ], [ %3541, %3618 ], [ %3541, %3627 ], [ %3662, %3824 ], [ %3662, %3833 ]
  %3842 = phi i32 [ %3543, %3610 ], [ %3663, %3816 ], [ %3543, %3618 ], [ %3543, %3627 ], [ %3663, %3824 ], [ %3663, %3833 ]
  %3843 = phi ptr [ %3539, %3610 ], [ %3818, %3816 ], [ %3622, %3627 ], [ %3620, %3618 ], [ %3828, %3833 ], [ %3826, %3824 ]
  %3844 = phi i64 [ %3614, %3610 ], [ %3819, %3816 ], [ %3614, %3618 ], [ %3614, %3627 ], [ %3819, %3824 ], [ %3819, %3833 ]
  %3845 = phi i64 [ %3612, %3610 ], [ %3820, %3816 ], [ %3628, %3627 ], [ %3619, %3618 ], [ %3834, %3833 ], [ %3825, %3824 ]
  %3846 = trunc i64 %3844 to i32
  %3847 = icmp ult i64 %3841, 4
  br i1 %3847, label %3848, label %3853

3848:                                             ; preds = %3838
  %3849 = ptrtoint ptr %3840 to i64
  %3850 = sub i64 %3849, %24
  %3851 = trunc i64 %3850 to i32
  %3852 = getelementptr inbounds i32, ptr %14, i64 %3839
  store i32 %3851, ptr %3852, align 4, !tbaa !22
  br label %3853

3853:                                             ; preds = %3848, %3838
  %3854 = ptrtoint ptr %3843 to i64
  %3855 = ptrtoint ptr %3197 to i64
  %3856 = sub i64 %3854, %3855
  %3857 = add i32 %3846, 3
  %3858 = getelementptr inbounds i8, ptr %3197, i64 %3856
  %3859 = icmp ugt ptr %3858, %3189
  %3860 = load ptr, ptr %3190, align 8, !tbaa !36
  br i1 %3859, label %3884, label %3861

3861:                                             ; preds = %3853
  %3862 = load <2 x i64>, ptr %3197, align 1, !tbaa !35
  store <2 x i64> %3862, ptr %3860, align 1, !tbaa !35
  %3863 = icmp ugt i64 %3856, 16
  br i1 %3863, label %3864, label %4001

3864:                                             ; preds = %3861
  %3865 = load ptr, ptr %3190, align 8, !tbaa !36
  %3866 = getelementptr inbounds i8, ptr %3865, i64 16
  %3867 = getelementptr inbounds i8, ptr %3197, i64 16
  %3868 = add i64 %3856, -16
  %3869 = getelementptr inbounds i8, ptr %3865, i64 %3856
  %3870 = load <2 x i64>, ptr %3867, align 1, !tbaa !35
  store <2 x i64> %3870, ptr %3866, align 1, !tbaa !35
  %3871 = icmp ult i64 %3868, 17
  br i1 %3871, label %4001, label %3872

3872:                                             ; preds = %3864
  %3873 = getelementptr inbounds i8, ptr %3865, i64 32
  br label %3874

3874:                                             ; preds = %3874, %3872
  %3875 = phi ptr [ %3873, %3872 ], [ %3882, %3874 ]
  %3876 = phi ptr [ %3867, %3872 ], [ %3880, %3874 ]
  %3877 = getelementptr inbounds i8, ptr %3876, i64 16
  %3878 = load <2 x i64>, ptr %3877, align 1, !tbaa !35
  store <2 x i64> %3878, ptr %3875, align 1, !tbaa !35
  %3879 = getelementptr inbounds i8, ptr %3875, i64 16
  %3880 = getelementptr inbounds i8, ptr %3876, i64 32
  %3881 = load <2 x i64>, ptr %3880, align 1, !tbaa !35
  store <2 x i64> %3881, ptr %3879, align 1, !tbaa !35
  %3882 = getelementptr inbounds i8, ptr %3875, i64 32
  %3883 = icmp ult ptr %3882, %3869
  br i1 %3883, label %3874, label %4005, !llvm.loop !38

3884:                                             ; preds = %3853
  %3885 = ptrtoint ptr %3858 to i64
  %3886 = icmp ugt ptr %3197, %3189
  br i1 %3886, label %3904, label %3887

3887:                                             ; preds = %3884
  %3888 = sub i64 %3191, %3855
  %3889 = getelementptr inbounds i8, ptr %3860, i64 %3888
  %3890 = load <2 x i64>, ptr %3197, align 1, !tbaa !35
  store <2 x i64> %3890, ptr %3860, align 1, !tbaa !35
  %3891 = icmp ult i64 %3888, 17
  br i1 %3891, label %3904, label %3892

3892:                                             ; preds = %3887
  %3893 = getelementptr inbounds i8, ptr %3860, i64 16
  br label %3894

3894:                                             ; preds = %3894, %3892
  %3895 = phi ptr [ %3893, %3892 ], [ %3902, %3894 ]
  %3896 = phi ptr [ %3197, %3892 ], [ %3900, %3894 ]
  %3897 = getelementptr inbounds i8, ptr %3896, i64 16
  %3898 = load <2 x i64>, ptr %3897, align 1, !tbaa !35
  store <2 x i64> %3898, ptr %3895, align 1, !tbaa !35
  %3899 = getelementptr inbounds i8, ptr %3895, i64 16
  %3900 = getelementptr inbounds i8, ptr %3896, i64 32
  %3901 = load <2 x i64>, ptr %3900, align 1, !tbaa !35
  store <2 x i64> %3901, ptr %3899, align 1, !tbaa !35
  %3902 = getelementptr inbounds i8, ptr %3895, i64 32
  %3903 = icmp ult ptr %3902, %3889
  br i1 %3903, label %3894, label %3904, !llvm.loop !38

3904:                                             ; preds = %3894, %3887, %3884
  %3905 = phi ptr [ %3189, %3887 ], [ %3197, %3884 ], [ %3189, %3894 ]
  %3906 = phi ptr [ %3889, %3887 ], [ %3860, %3884 ], [ %3889, %3894 ]
  %3907 = icmp ult ptr %3905, %3858
  br i1 %3907, label %3908, label %4005

3908:                                             ; preds = %3904
  %3909 = ptrtoint ptr %3906 to i64
  %3910 = ptrtoint ptr %3905 to i64
  %3911 = sub i64 %3885, %3910
  %3912 = getelementptr i8, ptr %3905, i64 %3911
  %3913 = icmp ult i64 %3911, 8
  %3914 = sub i64 %3909, %3910
  %3915 = icmp ult i64 %3914, 32
  %3916 = select i1 %3913, i1 true, i1 %3915
  br i1 %3916, label %3952, label %3917

3917:                                             ; preds = %3908
  %3918 = icmp ult i64 %3911, 32
  br i1 %3918, label %3938, label %3919

3919:                                             ; preds = %3917
  %3920 = and i64 %3911, -32
  br label %3921

3921:                                             ; preds = %3921, %3919
  %3922 = phi i64 [ 0, %3919 ], [ %3929, %3921 ]
  %3923 = getelementptr i8, ptr %3906, i64 %3922
  %3924 = getelementptr i8, ptr %3905, i64 %3922
  %3925 = getelementptr i8, ptr %3924, i64 16
  %3926 = load <16 x i8>, ptr %3924, align 1, !tbaa !35
  %3927 = load <16 x i8>, ptr %3925, align 1, !tbaa !35
  %3928 = getelementptr i8, ptr %3923, i64 16
  store <16 x i8> %3926, ptr %3923, align 1, !tbaa !35
  store <16 x i8> %3927, ptr %3928, align 1, !tbaa !35
  %3929 = add nuw i64 %3922, 32
  %3930 = icmp eq i64 %3929, %3920
  br i1 %3930, label %3931, label %3921, !llvm.loop !82

3931:                                             ; preds = %3921
  %3932 = icmp eq i64 %3911, %3920
  br i1 %3932, label %4005, label %3933

3933:                                             ; preds = %3931
  %3934 = getelementptr i8, ptr %3905, i64 %3920
  %3935 = getelementptr i8, ptr %3906, i64 %3920
  %3936 = and i64 %3911, 24
  %3937 = icmp eq i64 %3936, 0
  br i1 %3937, label %3952, label %3938

3938:                                             ; preds = %3917, %3933
  %3939 = phi i64 [ %3920, %3933 ], [ 0, %3917 ]
  %3940 = and i64 %3911, -8
  %3941 = getelementptr i8, ptr %3906, i64 %3940
  %3942 = getelementptr i8, ptr %3905, i64 %3940
  br label %3943

3943:                                             ; preds = %3943, %3938
  %3944 = phi i64 [ %3939, %3938 ], [ %3948, %3943 ]
  %3945 = getelementptr i8, ptr %3906, i64 %3944
  %3946 = getelementptr i8, ptr %3905, i64 %3944
  %3947 = load <8 x i8>, ptr %3946, align 1, !tbaa !35
  store <8 x i8> %3947, ptr %3945, align 1, !tbaa !35
  %3948 = add nuw i64 %3944, 8
  %3949 = icmp eq i64 %3948, %3940
  br i1 %3949, label %3950, label %3943, !llvm.loop !83

3950:                                             ; preds = %3943
  %3951 = icmp eq i64 %3911, %3940
  br i1 %3951, label %4005, label %3952

3952:                                             ; preds = %3908, %3933, %3950
  %3953 = phi ptr [ %3906, %3908 ], [ %3935, %3933 ], [ %3941, %3950 ]
  %3954 = phi ptr [ %3905, %3908 ], [ %3934, %3933 ], [ %3942, %3950 ]
  %3955 = ptrtoint ptr %3954 to i64
  %3956 = sub i64 %3854, %3955
  %3957 = and i64 %3956, 7
  %3958 = icmp eq i64 %3957, 0
  br i1 %3958, label %3968, label %3959

3959:                                             ; preds = %3952, %3959
  %3960 = phi ptr [ %3965, %3959 ], [ %3953, %3952 ]
  %3961 = phi ptr [ %3963, %3959 ], [ %3954, %3952 ]
  %3962 = phi i64 [ %3966, %3959 ], [ 0, %3952 ]
  %3963 = getelementptr inbounds i8, ptr %3961, i64 1
  %3964 = load i8, ptr %3961, align 1, !tbaa !35
  %3965 = getelementptr inbounds i8, ptr %3960, i64 1
  store i8 %3964, ptr %3960, align 1, !tbaa !35
  %3966 = add i64 %3962, 1
  %3967 = icmp eq i64 %3966, %3957
  br i1 %3967, label %3968, label %3959, !llvm.loop !84

3968:                                             ; preds = %3959, %3952
  %3969 = phi ptr [ %3953, %3952 ], [ %3965, %3959 ]
  %3970 = phi ptr [ %3954, %3952 ], [ %3963, %3959 ]
  %3971 = sub i64 %3955, %3854
  %3972 = icmp ugt i64 %3971, -8
  br i1 %3972, label %4005, label %3973

3973:                                             ; preds = %3968, %3973
  %3974 = phi ptr [ %3999, %3973 ], [ %3969, %3968 ]
  %3975 = phi ptr [ %3997, %3973 ], [ %3970, %3968 ]
  %3976 = getelementptr inbounds i8, ptr %3975, i64 1
  %3977 = load i8, ptr %3975, align 1, !tbaa !35
  %3978 = getelementptr inbounds i8, ptr %3974, i64 1
  store i8 %3977, ptr %3974, align 1, !tbaa !35
  %3979 = getelementptr inbounds i8, ptr %3975, i64 2
  %3980 = load i8, ptr %3976, align 1, !tbaa !35
  %3981 = getelementptr inbounds i8, ptr %3974, i64 2
  store i8 %3980, ptr %3978, align 1, !tbaa !35
  %3982 = getelementptr inbounds i8, ptr %3975, i64 3
  %3983 = load i8, ptr %3979, align 1, !tbaa !35
  %3984 = getelementptr inbounds i8, ptr %3974, i64 3
  store i8 %3983, ptr %3981, align 1, !tbaa !35
  %3985 = getelementptr inbounds i8, ptr %3975, i64 4
  %3986 = load i8, ptr %3982, align 1, !tbaa !35
  %3987 = getelementptr inbounds i8, ptr %3974, i64 4
  store i8 %3986, ptr %3984, align 1, !tbaa !35
  %3988 = getelementptr inbounds i8, ptr %3975, i64 5
  %3989 = load i8, ptr %3985, align 1, !tbaa !35
  %3990 = getelementptr inbounds i8, ptr %3974, i64 5
  store i8 %3989, ptr %3987, align 1, !tbaa !35
  %3991 = getelementptr inbounds i8, ptr %3975, i64 6
  %3992 = load i8, ptr %3988, align 1, !tbaa !35
  %3993 = getelementptr inbounds i8, ptr %3974, i64 6
  store i8 %3992, ptr %3990, align 1, !tbaa !35
  %3994 = getelementptr inbounds i8, ptr %3975, i64 7
  %3995 = load i8, ptr %3991, align 1, !tbaa !35
  %3996 = getelementptr inbounds i8, ptr %3974, i64 7
  store i8 %3995, ptr %3993, align 1, !tbaa !35
  %3997 = getelementptr inbounds i8, ptr %3975, i64 8
  %3998 = load i8, ptr %3994, align 1, !tbaa !35
  %3999 = getelementptr inbounds i8, ptr %3974, i64 8
  store i8 %3998, ptr %3996, align 1, !tbaa !35
  %4000 = icmp eq ptr %3997, %3912
  br i1 %4000, label %4005, label %3973, !llvm.loop !85

4001:                                             ; preds = %3864, %3861
  %4002 = load ptr, ptr %3190, align 8, !tbaa !36
  %4003 = getelementptr inbounds i8, ptr %4002, i64 %3856
  store ptr %4003, ptr %3190, align 8, !tbaa !36
  %4004 = load ptr, ptr %3193, align 8, !tbaa !46
  br label %4017

4005:                                             ; preds = %3874, %3968, %3973, %3931, %3950, %3904
  %4006 = load ptr, ptr %3190, align 8, !tbaa !36
  %4007 = getelementptr inbounds i8, ptr %4006, i64 %3856
  store ptr %4007, ptr %3190, align 8, !tbaa !36
  %4008 = icmp ugt i64 %3856, 65535
  %4009 = load ptr, ptr %3193, align 8, !tbaa !46
  br i1 %4008, label %4010, label %4017, !prof !47

4010:                                             ; preds = %4005
  store i32 1, ptr %3192, align 8, !tbaa !48
  %4011 = load ptr, ptr %1, align 8, !tbaa !49
  %4012 = ptrtoint ptr %4009 to i64
  %4013 = ptrtoint ptr %4011 to i64
  %4014 = sub i64 %4012, %4013
  %4015 = lshr exact i64 %4014, 3
  %4016 = trunc i64 %4015 to i32
  store i32 %4016, ptr %3194, align 4, !tbaa !50
  br label %4017

4017:                                             ; preds = %4010, %4005, %4001
  %4018 = phi ptr [ %4004, %4001 ], [ %4009, %4010 ], [ %4009, %4005 ]
  %4019 = trunc i64 %3856 to i16
  %4020 = getelementptr inbounds %struct.SeqDef_s, ptr %4018, i64 0, i32 1
  store i16 %4019, ptr %4020, align 4, !tbaa !51
  store i32 %3857, ptr %4018, align 4, !tbaa !53
  %4021 = add i64 %3845, -3
  %4022 = icmp ugt i64 %4021, 65535
  br i1 %4022, label %4023, label %4037, !prof !54

4023:                                             ; preds = %4017, %3521
  %4024 = phi ptr [ %3522, %3521 ], [ %4018, %4017 ]
  %4025 = phi i64 [ %3525, %3521 ], [ %4021, %4017 ]
  %4026 = phi i32 [ %3278, %3521 ], [ %3842, %4017 ]
  %4027 = phi ptr [ %3282, %3521 ], [ %3843, %4017 ]
  %4028 = phi i64 [ %3357, %3521 ], [ %3845, %4017 ]
  %4029 = phi i32 [ %3199, %3521 ], [ %3201, %4017 ]
  %4030 = phi i32 [ %3201, %3521 ], [ %3846, %4017 ]
  store i32 2, ptr %3192, align 8, !tbaa !48
  %4031 = load ptr, ptr %1, align 8, !tbaa !49
  %4032 = ptrtoint ptr %4024 to i64
  %4033 = ptrtoint ptr %4031 to i64
  %4034 = sub i64 %4032, %4033
  %4035 = lshr exact i64 %4034, 3
  %4036 = trunc i64 %4035 to i32
  store i32 %4036, ptr %3194, align 4, !tbaa !50
  br label %4037

4037:                                             ; preds = %4023, %4017, %3521
  %4038 = phi i64 [ %3525, %3521 ], [ %4021, %4017 ], [ %4025, %4023 ]
  %4039 = phi ptr [ %3522, %3521 ], [ %4018, %4017 ], [ %4024, %4023 ]
  %4040 = phi i32 [ %3278, %3521 ], [ %3842, %4017 ], [ %4026, %4023 ]
  %4041 = phi ptr [ %3282, %3521 ], [ %3843, %4017 ], [ %4027, %4023 ]
  %4042 = phi i64 [ %3357, %3521 ], [ %3845, %4017 ], [ %4028, %4023 ]
  %4043 = phi i32 [ %3199, %3521 ], [ %3201, %4017 ], [ %4029, %4023 ]
  %4044 = phi i32 [ %3201, %3521 ], [ %3846, %4017 ], [ %4030, %4023 ]
  %4045 = trunc i64 %4038 to i16
  %4046 = getelementptr inbounds %struct.SeqDef_s, ptr %4039, i64 0, i32 2
  store i16 %4045, ptr %4046, align 2, !tbaa !61
  %4047 = getelementptr inbounds %struct.SeqDef_s, ptr %4039, i64 1
  store ptr %4047, ptr %3193, align 8, !tbaa !46
  %4048 = getelementptr inbounds i8, ptr %4041, i64 %4042
  %4049 = icmp ugt ptr %4048, %43
  br i1 %4049, label %4193, label %4050

4050:                                             ; preds = %4037
  %4051 = add i32 %4040, 2
  %4052 = zext i32 %4051 to i64
  %4053 = getelementptr inbounds i8, ptr %22, i64 %4052
  %4054 = load i64, ptr %4053, align 1, !tbaa !21
  %4055 = mul i64 %4054, -3523014627327384477
  %4056 = lshr i64 %4055, %3183
  %4057 = getelementptr inbounds i32, ptr %14, i64 %4056
  store i32 %4051, ptr %4057, align 4, !tbaa !22
  %4058 = getelementptr inbounds i8, ptr %4048, i64 -2
  %4059 = ptrtoint ptr %4058 to i64
  %4060 = sub i64 %4059, %24
  %4061 = trunc i64 %4060 to i32
  %4062 = load i64, ptr %4058, align 1, !tbaa !21
  %4063 = mul i64 %4062, -3523014627327384477
  %4064 = lshr i64 %4063, %3183
  %4065 = getelementptr inbounds i32, ptr %14, i64 %4064
  store i32 %4061, ptr %4065, align 4, !tbaa !22
  %4066 = mul i64 %4054, -3523014627193167104
  %4067 = lshr i64 %4066, %3185
  %4068 = getelementptr inbounds i32, ptr %18, i64 %4067
  store i32 %4051, ptr %4068, align 4, !tbaa !22
  %4069 = getelementptr inbounds i8, ptr %4048, i64 -1
  %4070 = ptrtoint ptr %4069 to i64
  %4071 = sub i64 %4070, %24
  %4072 = trunc i64 %4071 to i32
  %4073 = load i64, ptr %4069, align 1, !tbaa !21
  %4074 = mul i64 %4073, -3523014627193167104
  %4075 = lshr i64 %4074, %3185
  %4076 = getelementptr inbounds i32, ptr %18, i64 %4075
  store i32 %4072, ptr %4076, align 4, !tbaa !22
  br label %4077

4077:                                             ; preds = %4187, %4050
  %4078 = phi ptr [ %4047, %4050 ], [ %4190, %4187 ]
  %4079 = phi ptr [ %4048, %4050 ], [ %4191, %4187 ]
  %4080 = phi i32 [ %4044, %4050 ], [ %4081, %4187 ]
  %4081 = phi i32 [ %4043, %4050 ], [ %4080, %4187 ]
  %4082 = icmp ne i32 %4081, 0
  %4083 = load i32, ptr %4079, align 1, !tbaa !22
  %4084 = zext i32 %4081 to i64
  %4085 = sub nsw i64 0, %4084
  %4086 = getelementptr inbounds i8, ptr %4079, i64 %4085
  %4087 = load i32, ptr %4086, align 1, !tbaa !22
  %4088 = icmp eq i32 %4083, %4087
  %4089 = and i1 %4082, %4088
  br i1 %4089, label %4090, label %4193

4090:                                             ; preds = %4077
  %4091 = getelementptr inbounds i8, ptr %4079, i64 4
  %4092 = getelementptr inbounds i8, ptr %4091, i64 %4085
  %4093 = icmp ugt ptr %3186, %4091
  br i1 %4093, label %4094, label %4120

4094:                                             ; preds = %4090
  %4095 = load i64, ptr %4092, align 1, !tbaa !21
  %4096 = load i64, ptr %4091, align 1, !tbaa !21
  %4097 = xor i64 %4096, %4095
  %4098 = icmp eq i64 %4097, 0
  br i1 %4098, label %4102, label %4099

4099:                                             ; preds = %4094
  %4100 = call i64 @llvm.cttz.i64(i64 %4097, i1 true), !range !32
  %4101 = lshr i64 %4100, 3
  br label %4157

4102:                                             ; preds = %4094, %4108
  %4103 = phi ptr [ %4106, %4108 ], [ %4092, %4094 ]
  %4104 = phi ptr [ %4105, %4108 ], [ %4091, %4094 ]
  %4105 = getelementptr inbounds i8, ptr %4104, i64 8
  %4106 = getelementptr inbounds i8, ptr %4103, i64 8
  %4107 = icmp ult ptr %4105, %3186
  br i1 %4107, label %4108, label %4120

4108:                                             ; preds = %4102
  %4109 = load i64, ptr %4106, align 1, !tbaa !21
  %4110 = load i64, ptr %4105, align 1, !tbaa !21
  %4111 = xor i64 %4110, %4109
  %4112 = icmp eq i64 %4111, 0
  br i1 %4112, label %4102, label %4113

4113:                                             ; preds = %4108
  %4114 = call i64 @llvm.cttz.i64(i64 %4111, i1 true), !range !32
  %4115 = lshr i64 %4114, 3
  %4116 = getelementptr inbounds i8, ptr %4105, i64 %4115
  %4117 = ptrtoint ptr %4116 to i64
  %4118 = ptrtoint ptr %4091 to i64
  %4119 = sub i64 %4117, %4118
  br label %4157

4120:                                             ; preds = %4102, %4090
  %4121 = phi ptr [ %4092, %4090 ], [ %4106, %4102 ]
  %4122 = phi ptr [ %4091, %4090 ], [ %4105, %4102 ]
  %4123 = icmp ult ptr %4122, %3187
  br i1 %4123, label %4124, label %4131

4124:                                             ; preds = %4120
  %4125 = load i32, ptr %4121, align 1, !tbaa !22
  %4126 = load i32, ptr %4122, align 1, !tbaa !22
  %4127 = icmp eq i32 %4125, %4126
  br i1 %4127, label %4128, label %4131

4128:                                             ; preds = %4124
  %4129 = getelementptr inbounds i8, ptr %4122, i64 4
  %4130 = getelementptr inbounds i8, ptr %4121, i64 4
  br label %4131

4131:                                             ; preds = %4128, %4124, %4120
  %4132 = phi ptr [ %4130, %4128 ], [ %4121, %4124 ], [ %4121, %4120 ]
  %4133 = phi ptr [ %4129, %4128 ], [ %4122, %4124 ], [ %4122, %4120 ]
  %4134 = icmp ult ptr %4133, %3188
  br i1 %4134, label %4135, label %4142

4135:                                             ; preds = %4131
  %4136 = load i16, ptr %4132, align 1, !tbaa !33
  %4137 = load i16, ptr %4133, align 1, !tbaa !33
  %4138 = icmp eq i16 %4136, %4137
  br i1 %4138, label %4139, label %4142

4139:                                             ; preds = %4135
  %4140 = getelementptr inbounds i8, ptr %4133, i64 2
  %4141 = getelementptr inbounds i8, ptr %4132, i64 2
  br label %4142

4142:                                             ; preds = %4139, %4135, %4131
  %4143 = phi ptr [ %4141, %4139 ], [ %4132, %4135 ], [ %4132, %4131 ]
  %4144 = phi ptr [ %4140, %4139 ], [ %4133, %4135 ], [ %4133, %4131 ]
  %4145 = icmp ult ptr %4144, %42
  br i1 %4145, label %4146, label %4152

4146:                                             ; preds = %4142
  %4147 = load i8, ptr %4143, align 1, !tbaa !35
  %4148 = load i8, ptr %4144, align 1, !tbaa !35
  %4149 = icmp eq i8 %4147, %4148
  %4150 = zext i1 %4149 to i64
  %4151 = getelementptr inbounds i8, ptr %4144, i64 %4150
  br label %4152

4152:                                             ; preds = %4146, %4142
  %4153 = phi ptr [ %4144, %4142 ], [ %4151, %4146 ]
  %4154 = ptrtoint ptr %4153 to i64
  %4155 = ptrtoint ptr %4091 to i64
  %4156 = sub i64 %4154, %4155
  br label %4157

4157:                                             ; preds = %4152, %4113, %4099
  %4158 = phi i64 [ %4156, %4152 ], [ %4101, %4099 ], [ %4119, %4113 ]
  %4159 = add i64 %4158, 4
  %4160 = ptrtoint ptr %4079 to i64
  %4161 = sub i64 %4160, %24
  %4162 = trunc i64 %4161 to i32
  %4163 = load i64, ptr %4079, align 1, !tbaa !21
  %4164 = mul i64 %4163, -3523014627193167104
  %4165 = lshr i64 %4164, %3185
  %4166 = getelementptr inbounds i32, ptr %18, i64 %4165
  store i32 %4162, ptr %4166, align 4, !tbaa !22
  %4167 = mul i64 %4163, -3523014627327384477
  %4168 = lshr i64 %4167, %3183
  %4169 = getelementptr inbounds i32, ptr %14, i64 %4168
  store i32 %4162, ptr %4169, align 4, !tbaa !22
  %4170 = icmp ugt ptr %4079, %3189
  br i1 %4170, label %4175, label %4171

4171:                                             ; preds = %4157
  %4172 = load ptr, ptr %3190, align 8, !tbaa !36
  %4173 = load <2 x i64>, ptr %4079, align 1, !tbaa !35
  store <2 x i64> %4173, ptr %4172, align 1, !tbaa !35
  %4174 = load ptr, ptr %3193, align 8, !tbaa !46
  br label %4175

4175:                                             ; preds = %4171, %4157
  %4176 = phi ptr [ %4078, %4157 ], [ %4174, %4171 ]
  %4177 = getelementptr inbounds %struct.SeqDef_s, ptr %4176, i64 0, i32 1
  store i16 0, ptr %4177, align 4, !tbaa !51
  store i32 1, ptr %4176, align 4, !tbaa !53
  %4178 = add i64 %4158, 1
  %4179 = icmp ugt i64 %4178, 65535
  br i1 %4179, label %4180, label %4187, !prof !54

4180:                                             ; preds = %4175
  store i32 2, ptr %3192, align 8, !tbaa !48
  %4181 = load ptr, ptr %1, align 8, !tbaa !49
  %4182 = ptrtoint ptr %4176 to i64
  %4183 = ptrtoint ptr %4181 to i64
  %4184 = sub i64 %4182, %4183
  %4185 = lshr exact i64 %4184, 3
  %4186 = trunc i64 %4185 to i32
  store i32 %4186, ptr %3194, align 4, !tbaa !50
  br label %4187

4187:                                             ; preds = %4180, %4175
  %4188 = trunc i64 %4178 to i16
  %4189 = getelementptr inbounds %struct.SeqDef_s, ptr %4176, i64 0, i32 2
  store i16 %4188, ptr %4189, align 2, !tbaa !61
  %4190 = getelementptr inbounds %struct.SeqDef_s, ptr %4176, i64 1
  store ptr %4190, ptr %3193, align 8, !tbaa !46
  %4191 = getelementptr inbounds i8, ptr %4079, i64 %4159
  %4192 = icmp ugt ptr %4191, %43
  br i1 %4192, label %4193, label %4077

4193:                                             ; preds = %4187, %4077, %4037
  %4194 = phi i32 [ %4043, %4037 ], [ %4081, %4077 ], [ %4080, %4187 ]
  %4195 = phi i32 [ %4044, %4037 ], [ %4080, %4077 ], [ %4081, %4187 ]
  %4196 = phi ptr [ %4048, %4037 ], [ %4079, %4077 ], [ %4191, %4187 ]
  %4197 = getelementptr inbounds i8, ptr %4196, i64 1
  %4198 = icmp ugt ptr %4197, %43
  br i1 %4198, label %4199, label %3195

4199:                                             ; preds = %4193, %3650, %3258, %3180
  %4200 = phi i32 [ %60, %3180 ], [ %3199, %3258 ], [ %3199, %3650 ], [ %4194, %4193 ]
  %4201 = phi i32 [ %62, %3180 ], [ 0, %3258 ], [ %3201, %3650 ], [ %4195, %4193 ]
  %4202 = phi ptr [ %3, %3180 ], [ %3197, %3258 ], [ %3197, %3650 ], [ %4196, %4193 ]
  %4203 = select i1 %61, i32 %44, i32 0
  %4204 = select i1 %59, i32 %46, i32 0
  %4205 = icmp ne i32 %4203, 0
  %4206 = icmp ne i32 %4201, 0
  %4207 = select i1 %4205, i1 %4206, i1 false
  %4208 = select i1 %4207, i32 %4203, i32 %4204
  %4209 = select i1 %4206, i32 %4201, i32 %4203
  store i32 %4209, ptr %2, align 4, !tbaa !22
  %4210 = icmp eq i32 %4200, 0
  %4211 = select i1 %4210, i32 %4208, i32 %4200
  store i32 %4211, ptr %45, align 4, !tbaa !22
  %4212 = ptrtoint ptr %42 to i64
  %4213 = ptrtoint ptr %4202 to i64
  %4214 = sub i64 %4212, %4213
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %6) #10
  br label %4215

4215:                                             ; preds = %4199, %3164, %2129, %1094
  %4216 = phi i64 [ %1109, %1094 ], [ %3179, %3164 ], [ %2144, %2129 ], [ %4214, %4199 ]
  ret i64 %4216
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_doubleFast_dictMatchState(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !26
  %8 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16
  %9 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !20
  %13 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  %15 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !19
  %17 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !17
  %19 = ptrtoint ptr %3 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = add i64 %19, %4
  %22 = sub i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = load i32, ptr %8, align 4, !tbaa !27
  %25 = getelementptr i8, ptr %0, i64 24
  %26 = load i32, ptr %25, align 8, !tbaa !28
  %27 = getelementptr i8, ptr %0, i64 40
  %28 = load i32, ptr %27, align 8, !tbaa !29
  %29 = shl nuw i32 1, %24
  %30 = sub i32 %23, %26
  %31 = icmp ugt i32 %30, %29
  %32 = sub i32 %23, %29
  %33 = icmp eq i32 %28, 0
  %34 = select i1 %33, i1 %31, i1 false
  %35 = select i1 %34, i32 %32, i32 %26
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %18, i64 %36
  %38 = getelementptr inbounds i8, ptr %3, i64 %4
  %39 = getelementptr inbounds i8, ptr %38, i64 -8
  %40 = load i32, ptr %2, align 4, !tbaa !22
  %41 = getelementptr inbounds i32, ptr %2, i64 1
  %42 = load i32, ptr %41, align 4, !tbaa !22
  %43 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 15
  %44 = load ptr, ptr %43, align 8, !tbaa !86
  %45 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %44, i64 0, i32 9
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %44, i64 0, i32 11
  %48 = load ptr, ptr %47, align 8, !tbaa !16
  %49 = getelementptr inbounds %struct.ZSTD_window_t, ptr %44, i64 0, i32 3
  %50 = load i32, ptr %49, align 8, !tbaa !28
  %51 = getelementptr inbounds %struct.ZSTD_window_t, ptr %44, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !17
  %53 = zext i32 %50 to i64
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  %55 = load ptr, ptr %44, align 8, !tbaa !87
  %56 = ptrtoint ptr %55 to i64
  %57 = ptrtoint ptr %52 to i64
  %58 = sub i64 %57, %56
  %59 = trunc i64 %58 to i32
  %60 = add i32 %35, %59
  %61 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %44, i64 0, i32 16, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !20
  %63 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %44, i64 0, i32 16, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !19
  %65 = ptrtoint ptr %37 to i64
  %66 = sub i64 %19, %65
  %67 = ptrtoint ptr %54 to i64
  %68 = sub i64 %56, %67
  %69 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %66, i64 %68)
  %70 = extractvalue { i64, i1 } %69, 1
  switch i32 %7, label %71 [
    i32 7, label %3001
    i32 5, label %1051
    i32 6, label %2026
  ]

71:                                               ; preds = %5
  br i1 %70, label %72, label %73, !nosanitize !88

72:                                               ; preds = %71
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !88
  unreachable, !nosanitize !88

73:                                               ; preds = %71
  %74 = extractvalue { i64, i1 } %69, 0, !nosanitize !88
  %75 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 18
  %76 = load i32, ptr %75, align 8, !tbaa !89
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %73
  %79 = zext nneg i32 %62 to i64
  %80 = shl i64 4, %79
  %81 = zext nneg i32 %64 to i64
  %82 = shl i64 4, %81
  %83 = icmp ugt i32 %62, 61
  br i1 %83, label %84, label %86

84:                                               ; preds = %86, %78
  %85 = icmp ugt i32 %64, 61
  br i1 %85, label %96, label %91

86:                                               ; preds = %78, %86
  %87 = phi i64 [ %89, %86 ], [ 0, %78 ]
  %88 = getelementptr inbounds i8, ptr %46, i64 %87
  tail call void @llvm.prefetch.p0(ptr %88, i32 0, i32 2, i32 1)
  %89 = add i64 %87, 64
  %90 = icmp ult i64 %89, %80
  br i1 %90, label %86, label %84, !llvm.loop !90

91:                                               ; preds = %84, %91
  %92 = phi i64 [ %94, %91 ], [ 0, %84 ]
  %93 = getelementptr inbounds i8, ptr %48, i64 %92
  tail call void @llvm.prefetch.p0(ptr %93, i32 0, i32 2, i32 1)
  %94 = add i64 %92, 64
  %95 = icmp ult i64 %94, %82
  br i1 %95, label %91, label %96, !llvm.loop !91

96:                                               ; preds = %91, %84, %73
  %97 = and i64 %74, 4294967295
  %98 = icmp eq i64 %97, 0
  %99 = zext i1 %98 to i64
  %100 = getelementptr inbounds i8, ptr %3, i64 %99
  %101 = icmp ult ptr %100, %39
  br i1 %101, label %102, label %3976

102:                                              ; preds = %96
  %103 = sub i32 64, %12
  %104 = zext nneg i32 %103 to i64
  %105 = sub i32 32, %16
  %106 = sub i32 56, %62
  %107 = zext nneg i32 %106 to i64
  %108 = sub i32 24, %64
  %109 = getelementptr inbounds i8, ptr %38, i64 -32
  %110 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %111 = ptrtoint ptr %109 to i64
  %112 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %113 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %114 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  %115 = getelementptr inbounds i8, ptr %38, i64 -7
  %116 = getelementptr inbounds i8, ptr %38, i64 -3
  %117 = getelementptr inbounds i8, ptr %38, i64 -1
  %118 = zext i32 %60 to i64
  %119 = sub nsw i64 0, %118
  %120 = getelementptr i8, ptr %52, i64 %119
  br label %121

121:                                              ; preds = %1043, %102
  %122 = phi ptr [ %100, %102 ], [ %1047, %1043 ]
  %123 = phi ptr [ %3, %102 ], [ %1046, %1043 ]
  %124 = phi i32 [ %40, %102 ], [ %1045, %1043 ]
  %125 = phi i32 [ %42, %102 ], [ %1044, %1043 ]
  %126 = load i64, ptr %122, align 1
  %127 = mul i64 %126, -3523014627327384477
  %128 = lshr i64 %127, %104
  %129 = trunc i64 %126 to i32
  %130 = mul i32 %129, -1640531535
  %131 = lshr i32 %130, %105
  %132 = zext i32 %131 to i64
  %133 = lshr i64 %127, %107
  %134 = lshr i32 %130, %108
  %135 = lshr i64 %133, 8
  %136 = getelementptr inbounds i32, ptr %46, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !22
  %138 = lshr i32 %134, 8
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds i32, ptr %48, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !22
  %142 = zext i32 %137 to i64
  %143 = xor i64 %133, %142
  %144 = and i64 %143, 255
  %145 = icmp eq i64 %144, 0
  %146 = xor i32 %134, %141
  %147 = and i32 %146, 255
  %148 = icmp eq i32 %147, 0
  %149 = ptrtoint ptr %122 to i64
  %150 = sub i64 %149, %20
  %151 = trunc i64 %150 to i32
  %152 = getelementptr inbounds i32, ptr %10, i64 %128
  %153 = load i32, ptr %152, align 4, !tbaa !22
  %154 = getelementptr inbounds i32, ptr %14, i64 %132
  %155 = load i32, ptr %154, align 4, !tbaa !22
  %156 = zext i32 %153 to i64
  %157 = getelementptr inbounds i8, ptr %18, i64 %156
  %158 = zext i32 %155 to i64
  %159 = getelementptr inbounds i8, ptr %18, i64 %158
  %160 = add i32 %151, 1
  %161 = sub i32 %160, %124
  %162 = icmp ult i32 %161, %35
  %163 = sub i32 %161, %60
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i8, ptr %52, i64 %164
  %166 = zext i32 %161 to i64
  %167 = getelementptr inbounds i8, ptr %18, i64 %166
  %168 = select i1 %162, ptr %165, ptr %167
  store i32 %151, ptr %154, align 4, !tbaa !22
  store i32 %151, ptr %152, align 4, !tbaa !22
  %169 = sub i32 %161, %35
  %170 = icmp ugt i32 %169, -4
  br i1 %170, label %351, label %171

171:                                              ; preds = %121
  %172 = load i32, ptr %168, align 1, !tbaa !22
  %173 = getelementptr inbounds i8, ptr %122, i64 1
  %174 = load i32, ptr %173, align 1, !tbaa !22
  %175 = icmp eq i32 %172, %174
  br i1 %175, label %176, label %351

176:                                              ; preds = %171
  %177 = select i1 %162, ptr %55, ptr %38
  %178 = getelementptr inbounds i8, ptr %122, i64 5
  %179 = getelementptr inbounds i8, ptr %168, i64 4
  %180 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %178, ptr noundef nonnull %179, ptr noundef %38, ptr noundef %177, ptr noundef %37)
  %181 = add i64 %180, 4
  %182 = ptrtoint ptr %173 to i64
  %183 = ptrtoint ptr %123 to i64
  %184 = sub i64 %182, %183
  %185 = getelementptr inbounds i8, ptr %123, i64 %184
  %186 = icmp ugt ptr %185, %109
  %187 = load ptr, ptr %110, align 8, !tbaa !36
  br i1 %186, label %211, label %188

188:                                              ; preds = %176
  %189 = load <2 x i64>, ptr %123, align 1, !tbaa !35
  store <2 x i64> %189, ptr %187, align 1, !tbaa !35
  %190 = icmp ugt i64 %184, 16
  br i1 %190, label %191, label %329

191:                                              ; preds = %188
  %192 = load ptr, ptr %110, align 8, !tbaa !36
  %193 = getelementptr inbounds i8, ptr %192, i64 16
  %194 = getelementptr inbounds i8, ptr %123, i64 16
  %195 = add i64 %184, -16
  %196 = getelementptr inbounds i8, ptr %192, i64 %184
  %197 = load <2 x i64>, ptr %194, align 1, !tbaa !35
  store <2 x i64> %197, ptr %193, align 1, !tbaa !35
  %198 = icmp ult i64 %195, 17
  br i1 %198, label %329, label %199

199:                                              ; preds = %191
  %200 = getelementptr inbounds i8, ptr %192, i64 32
  br label %201

201:                                              ; preds = %201, %199
  %202 = phi ptr [ %200, %199 ], [ %209, %201 ]
  %203 = phi ptr [ %194, %199 ], [ %207, %201 ]
  %204 = getelementptr inbounds i8, ptr %203, i64 16
  %205 = load <2 x i64>, ptr %204, align 1, !tbaa !35
  store <2 x i64> %205, ptr %202, align 1, !tbaa !35
  %206 = getelementptr inbounds i8, ptr %202, i64 16
  %207 = getelementptr inbounds i8, ptr %203, i64 32
  %208 = load <2 x i64>, ptr %207, align 1, !tbaa !35
  store <2 x i64> %208, ptr %206, align 1, !tbaa !35
  %209 = getelementptr inbounds i8, ptr %202, i64 32
  %210 = icmp ult ptr %209, %196
  br i1 %210, label %201, label %333, !llvm.loop !38

211:                                              ; preds = %176
  %212 = ptrtoint ptr %185 to i64
  %213 = icmp ugt ptr %123, %109
  br i1 %213, label %231, label %214

214:                                              ; preds = %211
  %215 = sub i64 %111, %183
  %216 = getelementptr inbounds i8, ptr %187, i64 %215
  %217 = load <2 x i64>, ptr %123, align 1, !tbaa !35
  store <2 x i64> %217, ptr %187, align 1, !tbaa !35
  %218 = icmp ult i64 %215, 17
  br i1 %218, label %231, label %219

219:                                              ; preds = %214
  %220 = getelementptr inbounds i8, ptr %187, i64 16
  br label %221

221:                                              ; preds = %221, %219
  %222 = phi ptr [ %220, %219 ], [ %229, %221 ]
  %223 = phi ptr [ %123, %219 ], [ %227, %221 ]
  %224 = getelementptr inbounds i8, ptr %223, i64 16
  %225 = load <2 x i64>, ptr %224, align 1, !tbaa !35
  store <2 x i64> %225, ptr %222, align 1, !tbaa !35
  %226 = getelementptr inbounds i8, ptr %222, i64 16
  %227 = getelementptr inbounds i8, ptr %223, i64 32
  %228 = load <2 x i64>, ptr %227, align 1, !tbaa !35
  store <2 x i64> %228, ptr %226, align 1, !tbaa !35
  %229 = getelementptr inbounds i8, ptr %222, i64 32
  %230 = icmp ult ptr %229, %216
  br i1 %230, label %221, label %231, !llvm.loop !38

231:                                              ; preds = %221, %214, %211
  %232 = phi ptr [ %109, %214 ], [ %123, %211 ], [ %109, %221 ]
  %233 = phi ptr [ %216, %214 ], [ %187, %211 ], [ %216, %221 ]
  %234 = icmp ult ptr %232, %185
  br i1 %234, label %235, label %333

235:                                              ; preds = %231
  %236 = ptrtoint ptr %233 to i64
  %237 = ptrtoint ptr %232 to i64
  %238 = sub i64 %212, %237
  %239 = getelementptr i8, ptr %232, i64 %238
  %240 = icmp ult i64 %238, 8
  %241 = sub i64 %236, %237
  %242 = icmp ult i64 %241, 32
  %243 = select i1 %240, i1 true, i1 %242
  br i1 %243, label %279, label %244

244:                                              ; preds = %235
  %245 = icmp ult i64 %238, 32
  br i1 %245, label %265, label %246

246:                                              ; preds = %244
  %247 = and i64 %238, -32
  br label %248

248:                                              ; preds = %248, %246
  %249 = phi i64 [ 0, %246 ], [ %256, %248 ]
  %250 = getelementptr i8, ptr %233, i64 %249
  %251 = getelementptr i8, ptr %232, i64 %249
  %252 = getelementptr i8, ptr %251, i64 16
  %253 = load <16 x i8>, ptr %251, align 1, !tbaa !35
  %254 = load <16 x i8>, ptr %252, align 1, !tbaa !35
  %255 = getelementptr i8, ptr %250, i64 16
  store <16 x i8> %253, ptr %250, align 1, !tbaa !35
  store <16 x i8> %254, ptr %255, align 1, !tbaa !35
  %256 = add nuw i64 %249, 32
  %257 = icmp eq i64 %256, %247
  br i1 %257, label %258, label %248, !llvm.loop !92

258:                                              ; preds = %248
  %259 = icmp eq i64 %238, %247
  br i1 %259, label %333, label %260

260:                                              ; preds = %258
  %261 = getelementptr i8, ptr %232, i64 %247
  %262 = getelementptr i8, ptr %233, i64 %247
  %263 = and i64 %238, 24
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %279, label %265

265:                                              ; preds = %244, %260
  %266 = phi i64 [ %247, %260 ], [ 0, %244 ]
  %267 = and i64 %238, -8
  %268 = getelementptr i8, ptr %233, i64 %267
  %269 = getelementptr i8, ptr %232, i64 %267
  br label %270

270:                                              ; preds = %270, %265
  %271 = phi i64 [ %266, %265 ], [ %275, %270 ]
  %272 = getelementptr i8, ptr %233, i64 %271
  %273 = getelementptr i8, ptr %232, i64 %271
  %274 = load <8 x i8>, ptr %273, align 1, !tbaa !35
  store <8 x i8> %274, ptr %272, align 1, !tbaa !35
  %275 = add nuw i64 %271, 8
  %276 = icmp eq i64 %275, %267
  br i1 %276, label %277, label %270, !llvm.loop !93

277:                                              ; preds = %270
  %278 = icmp eq i64 %238, %267
  br i1 %278, label %333, label %279

279:                                              ; preds = %235, %260, %277
  %280 = phi ptr [ %233, %235 ], [ %262, %260 ], [ %268, %277 ]
  %281 = phi ptr [ %232, %235 ], [ %261, %260 ], [ %269, %277 ]
  %282 = add i64 %149, 1
  %283 = ptrtoint ptr %281 to i64
  %284 = sub i64 %282, %283
  %285 = sub i64 %149, %283
  %286 = and i64 %284, 7
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %297, label %288

288:                                              ; preds = %279, %288
  %289 = phi ptr [ %294, %288 ], [ %280, %279 ]
  %290 = phi ptr [ %292, %288 ], [ %281, %279 ]
  %291 = phi i64 [ %295, %288 ], [ 0, %279 ]
  %292 = getelementptr inbounds i8, ptr %290, i64 1
  %293 = load i8, ptr %290, align 1, !tbaa !35
  %294 = getelementptr inbounds i8, ptr %289, i64 1
  store i8 %293, ptr %289, align 1, !tbaa !35
  %295 = add i64 %291, 1
  %296 = icmp eq i64 %295, %286
  br i1 %296, label %297, label %288, !llvm.loop !94

297:                                              ; preds = %288, %279
  %298 = phi ptr [ %280, %279 ], [ %294, %288 ]
  %299 = phi ptr [ %281, %279 ], [ %292, %288 ]
  %300 = icmp ult i64 %285, 7
  br i1 %300, label %333, label %301

301:                                              ; preds = %297, %301
  %302 = phi ptr [ %327, %301 ], [ %298, %297 ]
  %303 = phi ptr [ %325, %301 ], [ %299, %297 ]
  %304 = getelementptr inbounds i8, ptr %303, i64 1
  %305 = load i8, ptr %303, align 1, !tbaa !35
  %306 = getelementptr inbounds i8, ptr %302, i64 1
  store i8 %305, ptr %302, align 1, !tbaa !35
  %307 = getelementptr inbounds i8, ptr %303, i64 2
  %308 = load i8, ptr %304, align 1, !tbaa !35
  %309 = getelementptr inbounds i8, ptr %302, i64 2
  store i8 %308, ptr %306, align 1, !tbaa !35
  %310 = getelementptr inbounds i8, ptr %303, i64 3
  %311 = load i8, ptr %307, align 1, !tbaa !35
  %312 = getelementptr inbounds i8, ptr %302, i64 3
  store i8 %311, ptr %309, align 1, !tbaa !35
  %313 = getelementptr inbounds i8, ptr %303, i64 4
  %314 = load i8, ptr %310, align 1, !tbaa !35
  %315 = getelementptr inbounds i8, ptr %302, i64 4
  store i8 %314, ptr %312, align 1, !tbaa !35
  %316 = getelementptr inbounds i8, ptr %303, i64 5
  %317 = load i8, ptr %313, align 1, !tbaa !35
  %318 = getelementptr inbounds i8, ptr %302, i64 5
  store i8 %317, ptr %315, align 1, !tbaa !35
  %319 = getelementptr inbounds i8, ptr %303, i64 6
  %320 = load i8, ptr %316, align 1, !tbaa !35
  %321 = getelementptr inbounds i8, ptr %302, i64 6
  store i8 %320, ptr %318, align 1, !tbaa !35
  %322 = getelementptr inbounds i8, ptr %303, i64 7
  %323 = load i8, ptr %319, align 1, !tbaa !35
  %324 = getelementptr inbounds i8, ptr %302, i64 7
  store i8 %323, ptr %321, align 1, !tbaa !35
  %325 = getelementptr inbounds i8, ptr %303, i64 8
  %326 = load i8, ptr %322, align 1, !tbaa !35
  %327 = getelementptr inbounds i8, ptr %302, i64 8
  store i8 %326, ptr %324, align 1, !tbaa !35
  %328 = icmp eq ptr %325, %239
  br i1 %328, label %333, label %301, !llvm.loop !95

329:                                              ; preds = %191, %188
  %330 = load ptr, ptr %110, align 8, !tbaa !36
  %331 = getelementptr inbounds i8, ptr %330, i64 %184
  store ptr %331, ptr %110, align 8, !tbaa !36
  %332 = load ptr, ptr %113, align 8, !tbaa !46
  br label %345

333:                                              ; preds = %201, %297, %301, %258, %277, %231
  %334 = load ptr, ptr %110, align 8, !tbaa !36
  %335 = getelementptr inbounds i8, ptr %334, i64 %184
  store ptr %335, ptr %110, align 8, !tbaa !36
  %336 = icmp ugt i64 %184, 65535
  %337 = load ptr, ptr %113, align 8, !tbaa !46
  br i1 %336, label %338, label %345, !prof !47

338:                                              ; preds = %333
  store i32 1, ptr %112, align 8, !tbaa !48
  %339 = load ptr, ptr %1, align 8, !tbaa !49
  %340 = ptrtoint ptr %337 to i64
  %341 = ptrtoint ptr %339 to i64
  %342 = sub i64 %340, %341
  %343 = lshr exact i64 %342, 3
  %344 = trunc i64 %343 to i32
  store i32 %344, ptr %114, align 4, !tbaa !50
  br label %345

345:                                              ; preds = %338, %333, %329
  %346 = phi ptr [ %332, %329 ], [ %337, %338 ], [ %337, %333 ]
  %347 = trunc i64 %184 to i16
  %348 = getelementptr inbounds %struct.SeqDef_s, ptr %346, i64 0, i32 1
  store i16 %347, ptr %348, align 4, !tbaa !51
  store i32 1, ptr %346, align 4, !tbaa !53
  %349 = add i64 %180, 1
  %350 = icmp ugt i64 %349, 65535
  br i1 %350, label %931, label %944, !prof !54

351:                                              ; preds = %171, %121
  %352 = icmp ult i32 %153, %35
  br i1 %352, label %446, label %353

353:                                              ; preds = %351
  %354 = load i64, ptr %157, align 1, !tbaa !21
  %355 = icmp eq i64 %354, %126
  br i1 %355, label %356, label %446

356:                                              ; preds = %353
  %357 = getelementptr inbounds i8, ptr %122, i64 8
  %358 = getelementptr inbounds i8, ptr %157, i64 8
  %359 = icmp ugt ptr %115, %357
  br i1 %359, label %360, label %386

360:                                              ; preds = %356
  %361 = load i64, ptr %358, align 1, !tbaa !21
  %362 = load i64, ptr %357, align 1, !tbaa !21
  %363 = xor i64 %362, %361
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %368, label %365

365:                                              ; preds = %360
  %366 = tail call i64 @llvm.cttz.i64(i64 %363, i1 true), !range !32
  %367 = lshr i64 %366, 3
  br label %423

368:                                              ; preds = %360, %374
  %369 = phi ptr [ %372, %374 ], [ %358, %360 ]
  %370 = phi ptr [ %371, %374 ], [ %357, %360 ]
  %371 = getelementptr inbounds i8, ptr %370, i64 8
  %372 = getelementptr inbounds i8, ptr %369, i64 8
  %373 = icmp ult ptr %371, %115
  br i1 %373, label %374, label %386

374:                                              ; preds = %368
  %375 = load i64, ptr %372, align 1, !tbaa !21
  %376 = load i64, ptr %371, align 1, !tbaa !21
  %377 = xor i64 %376, %375
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %368, label %379

379:                                              ; preds = %374
  %380 = tail call i64 @llvm.cttz.i64(i64 %377, i1 true), !range !32
  %381 = lshr i64 %380, 3
  %382 = getelementptr inbounds i8, ptr %371, i64 %381
  %383 = ptrtoint ptr %382 to i64
  %384 = ptrtoint ptr %357 to i64
  %385 = sub i64 %383, %384
  br label %423

386:                                              ; preds = %368, %356
  %387 = phi ptr [ %358, %356 ], [ %372, %368 ]
  %388 = phi ptr [ %357, %356 ], [ %371, %368 ]
  %389 = icmp ult ptr %388, %116
  br i1 %389, label %390, label %397

390:                                              ; preds = %386
  %391 = load i32, ptr %387, align 1, !tbaa !22
  %392 = load i32, ptr %388, align 1, !tbaa !22
  %393 = icmp eq i32 %391, %392
  br i1 %393, label %394, label %397

394:                                              ; preds = %390
  %395 = getelementptr inbounds i8, ptr %388, i64 4
  %396 = getelementptr inbounds i8, ptr %387, i64 4
  br label %397

397:                                              ; preds = %394, %390, %386
  %398 = phi ptr [ %396, %394 ], [ %387, %390 ], [ %387, %386 ]
  %399 = phi ptr [ %395, %394 ], [ %388, %390 ], [ %388, %386 ]
  %400 = icmp ult ptr %399, %117
  br i1 %400, label %401, label %408

401:                                              ; preds = %397
  %402 = load i16, ptr %398, align 1, !tbaa !33
  %403 = load i16, ptr %399, align 1, !tbaa !33
  %404 = icmp eq i16 %402, %403
  br i1 %404, label %405, label %408

405:                                              ; preds = %401
  %406 = getelementptr inbounds i8, ptr %399, i64 2
  %407 = getelementptr inbounds i8, ptr %398, i64 2
  br label %408

408:                                              ; preds = %405, %401, %397
  %409 = phi ptr [ %407, %405 ], [ %398, %401 ], [ %398, %397 ]
  %410 = phi ptr [ %406, %405 ], [ %399, %401 ], [ %399, %397 ]
  %411 = icmp ult ptr %410, %38
  br i1 %411, label %412, label %418

412:                                              ; preds = %408
  %413 = load i8, ptr %409, align 1, !tbaa !35
  %414 = load i8, ptr %410, align 1, !tbaa !35
  %415 = icmp eq i8 %413, %414
  %416 = zext i1 %415 to i64
  %417 = getelementptr inbounds i8, ptr %410, i64 %416
  br label %418

418:                                              ; preds = %412, %408
  %419 = phi ptr [ %410, %408 ], [ %417, %412 ]
  %420 = ptrtoint ptr %419 to i64
  %421 = ptrtoint ptr %357 to i64
  %422 = sub i64 %420, %421
  br label %423

423:                                              ; preds = %418, %379, %365
  %424 = phi i64 [ %422, %418 ], [ %367, %365 ], [ %385, %379 ]
  %425 = add i64 %424, 8
  %426 = ptrtoint ptr %157 to i64
  %427 = sub i64 %149, %426
  %428 = trunc i64 %427 to i32
  %429 = icmp ugt ptr %122, %123
  %430 = icmp ugt i32 %153, %35
  %431 = and i1 %429, %430
  br i1 %431, label %432, label %758

432:                                              ; preds = %423, %441
  %433 = phi ptr [ %436, %441 ], [ %122, %423 ]
  %434 = phi i64 [ %442, %441 ], [ %425, %423 ]
  %435 = phi ptr [ %438, %441 ], [ %157, %423 ]
  %436 = getelementptr inbounds i8, ptr %433, i64 -1
  %437 = load i8, ptr %436, align 1, !tbaa !35
  %438 = getelementptr inbounds i8, ptr %435, i64 -1
  %439 = load i8, ptr %438, align 1, !tbaa !35
  %440 = icmp eq i8 %437, %439
  br i1 %440, label %441, label %758

441:                                              ; preds = %432
  %442 = add i64 %434, 1
  %443 = icmp ugt ptr %436, %123
  %444 = icmp ugt ptr %438, %37
  %445 = and i1 %443, %444
  br i1 %445, label %432, label %758, !llvm.loop !96

446:                                              ; preds = %353, %351
  br i1 %145, label %447, label %477

447:                                              ; preds = %446
  %448 = lshr i32 %137, 8
  %449 = zext nneg i32 %448 to i64
  %450 = getelementptr inbounds i8, ptr %52, i64 %449
  %451 = icmp ugt i32 %448, %50
  br i1 %451, label %452, label %477

452:                                              ; preds = %447
  %453 = load i64, ptr %450, align 1, !tbaa !21
  %454 = icmp eq i64 %453, %126
  br i1 %454, label %455, label %477

455:                                              ; preds = %452
  %456 = getelementptr inbounds i8, ptr %122, i64 8
  %457 = getelementptr inbounds i8, ptr %450, i64 8
  %458 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %456, ptr noundef nonnull %457, ptr noundef %38, ptr noundef %55, ptr noundef %37)
  %459 = add i64 %458, 8
  %460 = add i32 %60, %448
  %461 = sub i32 %151, %460
  %462 = icmp ugt ptr %122, %123
  br i1 %462, label %463, label %758

463:                                              ; preds = %455, %472
  %464 = phi ptr [ %467, %472 ], [ %122, %455 ]
  %465 = phi i64 [ %473, %472 ], [ %459, %455 ]
  %466 = phi ptr [ %469, %472 ], [ %450, %455 ]
  %467 = getelementptr inbounds i8, ptr %464, i64 -1
  %468 = load i8, ptr %467, align 1, !tbaa !35
  %469 = getelementptr inbounds i8, ptr %466, i64 -1
  %470 = load i8, ptr %469, align 1, !tbaa !35
  %471 = icmp eq i8 %468, %470
  br i1 %471, label %472, label %758

472:                                              ; preds = %463
  %473 = add i64 %465, 1
  %474 = icmp ugt ptr %467, %123
  %475 = icmp ugt ptr %469, %54
  %476 = and i1 %474, %475
  br i1 %476, label %463, label %758, !llvm.loop !97

477:                                              ; preds = %452, %447, %446
  %478 = icmp ugt i32 %155, %35
  br i1 %478, label %479, label %483

479:                                              ; preds = %477
  %480 = load i32, ptr %159, align 1, !tbaa !22
  %481 = load i32, ptr %122, align 1, !tbaa !22
  %482 = icmp eq i32 %480, %481
  br i1 %482, label %500, label %494

483:                                              ; preds = %477
  br i1 %148, label %484, label %494

484:                                              ; preds = %483
  %485 = lshr i32 %141, 8
  %486 = icmp ugt i32 %485, %50
  br i1 %486, label %487, label %494

487:                                              ; preds = %484
  %488 = add i32 %485, %60
  %489 = zext nneg i32 %485 to i64
  %490 = getelementptr inbounds i8, ptr %52, i64 %489
  %491 = load i32, ptr %490, align 1, !tbaa !22
  %492 = load i32, ptr %122, align 1, !tbaa !22
  %493 = icmp eq i32 %491, %492
  br i1 %493, label %500, label %494

494:                                              ; preds = %487, %484, %483, %479
  %495 = ptrtoint ptr %123 to i64
  %496 = sub i64 %149, %495
  %497 = ashr i64 %496, 8
  %498 = add nsw i64 %497, 1
  %499 = getelementptr inbounds i8, ptr %122, i64 %498
  br label %1043, !llvm.loop !98

500:                                              ; preds = %487, %479
  %501 = phi ptr [ %159, %479 ], [ %490, %487 ]
  %502 = phi i32 [ %155, %479 ], [ %488, %487 ]
  %503 = getelementptr inbounds i8, ptr %122, i64 1
  %504 = load i64, ptr %503, align 1, !tbaa !21
  %505 = mul i64 %504, -3523014627327384477
  %506 = lshr i64 %505, %104
  %507 = lshr i64 %505, %107
  %508 = getelementptr inbounds i32, ptr %10, i64 %506
  %509 = load i32, ptr %508, align 4, !tbaa !22
  %510 = lshr i64 %507, 8
  %511 = getelementptr inbounds i32, ptr %46, i64 %510
  %512 = load i32, ptr %511, align 4, !tbaa !22
  %513 = zext i32 %512 to i64
  %514 = xor i64 %507, %513
  %515 = and i64 %514, 255
  %516 = icmp eq i64 %515, 0
  %517 = zext i32 %509 to i64
  %518 = getelementptr inbounds i8, ptr %18, i64 %517
  store i32 %160, ptr %508, align 4, !tbaa !22
  %519 = icmp ult i32 %509, %35
  br i1 %519, label %614, label %520

520:                                              ; preds = %500
  %521 = load i64, ptr %518, align 1, !tbaa !21
  %522 = icmp eq i64 %521, %504
  br i1 %522, label %523, label %614

523:                                              ; preds = %520
  %524 = getelementptr inbounds i8, ptr %122, i64 9
  %525 = getelementptr inbounds i8, ptr %518, i64 8
  %526 = icmp ugt ptr %115, %524
  br i1 %526, label %527, label %553

527:                                              ; preds = %523
  %528 = load i64, ptr %525, align 1, !tbaa !21
  %529 = load i64, ptr %524, align 1, !tbaa !21
  %530 = xor i64 %529, %528
  %531 = icmp eq i64 %530, 0
  br i1 %531, label %535, label %532

532:                                              ; preds = %527
  %533 = tail call i64 @llvm.cttz.i64(i64 %530, i1 true), !range !32
  %534 = lshr i64 %533, 3
  br label %590

535:                                              ; preds = %527, %541
  %536 = phi ptr [ %539, %541 ], [ %525, %527 ]
  %537 = phi ptr [ %538, %541 ], [ %524, %527 ]
  %538 = getelementptr inbounds i8, ptr %537, i64 8
  %539 = getelementptr inbounds i8, ptr %536, i64 8
  %540 = icmp ult ptr %538, %115
  br i1 %540, label %541, label %553

541:                                              ; preds = %535
  %542 = load i64, ptr %539, align 1, !tbaa !21
  %543 = load i64, ptr %538, align 1, !tbaa !21
  %544 = xor i64 %543, %542
  %545 = icmp eq i64 %544, 0
  br i1 %545, label %535, label %546

546:                                              ; preds = %541
  %547 = tail call i64 @llvm.cttz.i64(i64 %544, i1 true), !range !32
  %548 = lshr i64 %547, 3
  %549 = getelementptr inbounds i8, ptr %538, i64 %548
  %550 = ptrtoint ptr %549 to i64
  %551 = ptrtoint ptr %524 to i64
  %552 = sub i64 %550, %551
  br label %590

553:                                              ; preds = %535, %523
  %554 = phi ptr [ %525, %523 ], [ %539, %535 ]
  %555 = phi ptr [ %524, %523 ], [ %538, %535 ]
  %556 = icmp ult ptr %555, %116
  br i1 %556, label %557, label %564

557:                                              ; preds = %553
  %558 = load i32, ptr %554, align 1, !tbaa !22
  %559 = load i32, ptr %555, align 1, !tbaa !22
  %560 = icmp eq i32 %558, %559
  br i1 %560, label %561, label %564

561:                                              ; preds = %557
  %562 = getelementptr inbounds i8, ptr %555, i64 4
  %563 = getelementptr inbounds i8, ptr %554, i64 4
  br label %564

564:                                              ; preds = %561, %557, %553
  %565 = phi ptr [ %563, %561 ], [ %554, %557 ], [ %554, %553 ]
  %566 = phi ptr [ %562, %561 ], [ %555, %557 ], [ %555, %553 ]
  %567 = icmp ult ptr %566, %117
  br i1 %567, label %568, label %575

568:                                              ; preds = %564
  %569 = load i16, ptr %565, align 1, !tbaa !33
  %570 = load i16, ptr %566, align 1, !tbaa !33
  %571 = icmp eq i16 %569, %570
  br i1 %571, label %572, label %575

572:                                              ; preds = %568
  %573 = getelementptr inbounds i8, ptr %566, i64 2
  %574 = getelementptr inbounds i8, ptr %565, i64 2
  br label %575

575:                                              ; preds = %572, %568, %564
  %576 = phi ptr [ %574, %572 ], [ %565, %568 ], [ %565, %564 ]
  %577 = phi ptr [ %573, %572 ], [ %566, %568 ], [ %566, %564 ]
  %578 = icmp ult ptr %577, %38
  br i1 %578, label %579, label %585

579:                                              ; preds = %575
  %580 = load i8, ptr %576, align 1, !tbaa !35
  %581 = load i8, ptr %577, align 1, !tbaa !35
  %582 = icmp eq i8 %580, %581
  %583 = zext i1 %582 to i64
  %584 = getelementptr inbounds i8, ptr %577, i64 %583
  br label %585

585:                                              ; preds = %579, %575
  %586 = phi ptr [ %577, %575 ], [ %584, %579 ]
  %587 = ptrtoint ptr %586 to i64
  %588 = ptrtoint ptr %524 to i64
  %589 = sub i64 %587, %588
  br label %590

590:                                              ; preds = %585, %546, %532
  %591 = phi i64 [ %589, %585 ], [ %534, %532 ], [ %552, %546 ]
  %592 = add i64 %591, 8
  %593 = ptrtoint ptr %503 to i64
  %594 = ptrtoint ptr %518 to i64
  %595 = sub i64 %593, %594
  %596 = trunc i64 %595 to i32
  %597 = icmp ugt ptr %503, %123
  %598 = icmp ugt i32 %509, %35
  %599 = and i1 %597, %598
  br i1 %599, label %600, label %758

600:                                              ; preds = %590, %609
  %601 = phi ptr [ %604, %609 ], [ %503, %590 ]
  %602 = phi i64 [ %610, %609 ], [ %592, %590 ]
  %603 = phi ptr [ %606, %609 ], [ %518, %590 ]
  %604 = getelementptr inbounds i8, ptr %601, i64 -1
  %605 = load i8, ptr %604, align 1, !tbaa !35
  %606 = getelementptr inbounds i8, ptr %603, i64 -1
  %607 = load i8, ptr %606, align 1, !tbaa !35
  %608 = icmp eq i8 %605, %607
  br i1 %608, label %609, label %758

609:                                              ; preds = %600
  %610 = add i64 %602, 1
  %611 = icmp ugt ptr %604, %123
  %612 = icmp ugt ptr %606, %37
  %613 = and i1 %611, %612
  br i1 %613, label %600, label %758, !llvm.loop !99

614:                                              ; preds = %520, %500
  br i1 %516, label %615, label %645

615:                                              ; preds = %614
  %616 = lshr i32 %512, 8
  %617 = zext nneg i32 %616 to i64
  %618 = getelementptr inbounds i8, ptr %52, i64 %617
  %619 = icmp ugt i32 %616, %50
  br i1 %619, label %620, label %645

620:                                              ; preds = %615
  %621 = load i64, ptr %618, align 1, !tbaa !21
  %622 = icmp eq i64 %621, %504
  br i1 %622, label %623, label %645

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, ptr %122, i64 9
  %625 = getelementptr inbounds i8, ptr %618, i64 8
  %626 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %624, ptr noundef nonnull %625, ptr noundef %38, ptr noundef %55, ptr noundef %37)
  %627 = add i64 %626, 8
  %628 = add i32 %60, %616
  %629 = sub i32 %160, %628
  %630 = icmp ugt ptr %503, %123
  br i1 %630, label %631, label %758

631:                                              ; preds = %623, %640
  %632 = phi ptr [ %635, %640 ], [ %503, %623 ]
  %633 = phi i64 [ %641, %640 ], [ %627, %623 ]
  %634 = phi ptr [ %637, %640 ], [ %618, %623 ]
  %635 = getelementptr inbounds i8, ptr %632, i64 -1
  %636 = load i8, ptr %635, align 1, !tbaa !35
  %637 = getelementptr inbounds i8, ptr %634, i64 -1
  %638 = load i8, ptr %637, align 1, !tbaa !35
  %639 = icmp eq i8 %636, %638
  br i1 %639, label %640, label %758

640:                                              ; preds = %631
  %641 = add i64 %633, 1
  %642 = icmp ugt ptr %635, %123
  %643 = icmp ugt ptr %637, %54
  %644 = and i1 %642, %643
  br i1 %644, label %631, label %758, !llvm.loop !100

645:                                              ; preds = %620, %615, %614
  %646 = icmp ult i32 %502, %35
  %647 = getelementptr inbounds i8, ptr %122, i64 4
  %648 = getelementptr inbounds i8, ptr %501, i64 4
  br i1 %646, label %649, label %670

649:                                              ; preds = %645
  %650 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %647, ptr noundef nonnull %648, ptr noundef %38, ptr noundef %55, ptr noundef nonnull %37)
  %651 = add i64 %650, 4
  %652 = sub i32 %151, %502
  %653 = icmp ugt ptr %122, %123
  %654 = icmp ugt ptr %501, %54
  %655 = and i1 %653, %654
  br i1 %655, label %656, label %758

656:                                              ; preds = %649, %665
  %657 = phi ptr [ %660, %665 ], [ %122, %649 ]
  %658 = phi i64 [ %666, %665 ], [ %651, %649 ]
  %659 = phi ptr [ %662, %665 ], [ %501, %649 ]
  %660 = getelementptr inbounds i8, ptr %657, i64 -1
  %661 = load i8, ptr %660, align 1, !tbaa !35
  %662 = getelementptr inbounds i8, ptr %659, i64 -1
  %663 = load i8, ptr %662, align 1, !tbaa !35
  %664 = icmp eq i8 %661, %663
  br i1 %664, label %665, label %758

665:                                              ; preds = %656
  %666 = add i64 %658, 1
  %667 = icmp ugt ptr %660, %123
  %668 = icmp ugt ptr %662, %54
  %669 = and i1 %667, %668
  br i1 %669, label %656, label %758, !llvm.loop !101

670:                                              ; preds = %645
  %671 = icmp ugt ptr %115, %647
  br i1 %671, label %672, label %698

672:                                              ; preds = %670
  %673 = load i64, ptr %648, align 1, !tbaa !21
  %674 = load i64, ptr %647, align 1, !tbaa !21
  %675 = xor i64 %674, %673
  %676 = icmp eq i64 %675, 0
  br i1 %676, label %680, label %677

677:                                              ; preds = %672
  %678 = tail call i64 @llvm.cttz.i64(i64 %675, i1 true), !range !32
  %679 = lshr i64 %678, 3
  br label %735

680:                                              ; preds = %672, %686
  %681 = phi ptr [ %684, %686 ], [ %648, %672 ]
  %682 = phi ptr [ %683, %686 ], [ %647, %672 ]
  %683 = getelementptr inbounds i8, ptr %682, i64 8
  %684 = getelementptr inbounds i8, ptr %681, i64 8
  %685 = icmp ult ptr %683, %115
  br i1 %685, label %686, label %698

686:                                              ; preds = %680
  %687 = load i64, ptr %684, align 1, !tbaa !21
  %688 = load i64, ptr %683, align 1, !tbaa !21
  %689 = xor i64 %688, %687
  %690 = icmp eq i64 %689, 0
  br i1 %690, label %680, label %691

691:                                              ; preds = %686
  %692 = tail call i64 @llvm.cttz.i64(i64 %689, i1 true), !range !32
  %693 = lshr i64 %692, 3
  %694 = getelementptr inbounds i8, ptr %683, i64 %693
  %695 = ptrtoint ptr %694 to i64
  %696 = ptrtoint ptr %647 to i64
  %697 = sub i64 %695, %696
  br label %735

698:                                              ; preds = %680, %670
  %699 = phi ptr [ %648, %670 ], [ %684, %680 ]
  %700 = phi ptr [ %647, %670 ], [ %683, %680 ]
  %701 = icmp ult ptr %700, %116
  br i1 %701, label %702, label %709

702:                                              ; preds = %698
  %703 = load i32, ptr %699, align 1, !tbaa !22
  %704 = load i32, ptr %700, align 1, !tbaa !22
  %705 = icmp eq i32 %703, %704
  br i1 %705, label %706, label %709

706:                                              ; preds = %702
  %707 = getelementptr inbounds i8, ptr %700, i64 4
  %708 = getelementptr inbounds i8, ptr %699, i64 4
  br label %709

709:                                              ; preds = %706, %702, %698
  %710 = phi ptr [ %708, %706 ], [ %699, %702 ], [ %699, %698 ]
  %711 = phi ptr [ %707, %706 ], [ %700, %702 ], [ %700, %698 ]
  %712 = icmp ult ptr %711, %117
  br i1 %712, label %713, label %720

713:                                              ; preds = %709
  %714 = load i16, ptr %710, align 1, !tbaa !33
  %715 = load i16, ptr %711, align 1, !tbaa !33
  %716 = icmp eq i16 %714, %715
  br i1 %716, label %717, label %720

717:                                              ; preds = %713
  %718 = getelementptr inbounds i8, ptr %711, i64 2
  %719 = getelementptr inbounds i8, ptr %710, i64 2
  br label %720

720:                                              ; preds = %717, %713, %709
  %721 = phi ptr [ %719, %717 ], [ %710, %713 ], [ %710, %709 ]
  %722 = phi ptr [ %718, %717 ], [ %711, %713 ], [ %711, %709 ]
  %723 = icmp ult ptr %722, %38
  br i1 %723, label %724, label %730

724:                                              ; preds = %720
  %725 = load i8, ptr %721, align 1, !tbaa !35
  %726 = load i8, ptr %722, align 1, !tbaa !35
  %727 = icmp eq i8 %725, %726
  %728 = zext i1 %727 to i64
  %729 = getelementptr inbounds i8, ptr %722, i64 %728
  br label %730

730:                                              ; preds = %724, %720
  %731 = phi ptr [ %722, %720 ], [ %729, %724 ]
  %732 = ptrtoint ptr %731 to i64
  %733 = ptrtoint ptr %647 to i64
  %734 = sub i64 %732, %733
  br label %735

735:                                              ; preds = %730, %691, %677
  %736 = phi i64 [ %734, %730 ], [ %679, %677 ], [ %697, %691 ]
  %737 = add i64 %736, 4
  %738 = ptrtoint ptr %501 to i64
  %739 = sub i64 %149, %738
  %740 = trunc i64 %739 to i32
  %741 = icmp ugt ptr %122, %123
  %742 = icmp ugt ptr %501, %37
  %743 = and i1 %741, %742
  br i1 %743, label %744, label %758

744:                                              ; preds = %735, %753
  %745 = phi ptr [ %748, %753 ], [ %122, %735 ]
  %746 = phi i64 [ %754, %753 ], [ %737, %735 ]
  %747 = phi ptr [ %750, %753 ], [ %501, %735 ]
  %748 = getelementptr inbounds i8, ptr %745, i64 -1
  %749 = load i8, ptr %748, align 1, !tbaa !35
  %750 = getelementptr inbounds i8, ptr %747, i64 -1
  %751 = load i8, ptr %750, align 1, !tbaa !35
  %752 = icmp eq i8 %749, %751
  br i1 %752, label %753, label %758

753:                                              ; preds = %744
  %754 = add i64 %746, 1
  %755 = icmp ugt ptr %748, %123
  %756 = icmp ugt ptr %750, %37
  %757 = and i1 %755, %756
  br i1 %757, label %744, label %758, !llvm.loop !102

758:                                              ; preds = %441, %432, %609, %600, %753, %744, %665, %656, %640, %631, %472, %463, %735, %649, %623, %590, %455, %423
  %759 = phi i32 [ %461, %455 ], [ %629, %623 ], [ %652, %649 ], [ %740, %735 ], [ %596, %590 ], [ %428, %423 ], [ %461, %463 ], [ %461, %472 ], [ %629, %631 ], [ %629, %640 ], [ %652, %656 ], [ %652, %665 ], [ %740, %744 ], [ %740, %753 ], [ %596, %600 ], [ %596, %609 ], [ %428, %432 ], [ %428, %441 ]
  %760 = phi i64 [ %459, %455 ], [ %627, %623 ], [ %651, %649 ], [ %737, %735 ], [ %592, %590 ], [ %425, %423 ], [ %473, %472 ], [ %465, %463 ], [ %641, %640 ], [ %633, %631 ], [ %666, %665 ], [ %658, %656 ], [ %754, %753 ], [ %746, %744 ], [ %610, %609 ], [ %602, %600 ], [ %442, %441 ], [ %434, %432 ]
  %761 = phi ptr [ %122, %455 ], [ %503, %623 ], [ %122, %649 ], [ %122, %735 ], [ %503, %590 ], [ %122, %423 ], [ %467, %472 ], [ %464, %463 ], [ %635, %640 ], [ %632, %631 ], [ %660, %665 ], [ %657, %656 ], [ %748, %753 ], [ %745, %744 ], [ %604, %609 ], [ %601, %600 ], [ %436, %441 ], [ %433, %432 ]
  %762 = ptrtoint ptr %761 to i64
  %763 = ptrtoint ptr %123 to i64
  %764 = sub i64 %762, %763
  %765 = add i32 %759, 3
  %766 = getelementptr inbounds i8, ptr %123, i64 %764
  %767 = icmp ugt ptr %766, %109
  %768 = load ptr, ptr %110, align 8, !tbaa !36
  br i1 %767, label %792, label %769

769:                                              ; preds = %758
  %770 = load <2 x i64>, ptr %123, align 1, !tbaa !35
  store <2 x i64> %770, ptr %768, align 1, !tbaa !35
  %771 = icmp ugt i64 %764, 16
  br i1 %771, label %772, label %909

772:                                              ; preds = %769
  %773 = load ptr, ptr %110, align 8, !tbaa !36
  %774 = getelementptr inbounds i8, ptr %773, i64 16
  %775 = getelementptr inbounds i8, ptr %123, i64 16
  %776 = add i64 %764, -16
  %777 = getelementptr inbounds i8, ptr %773, i64 %764
  %778 = load <2 x i64>, ptr %775, align 1, !tbaa !35
  store <2 x i64> %778, ptr %774, align 1, !tbaa !35
  %779 = icmp ult i64 %776, 17
  br i1 %779, label %909, label %780

780:                                              ; preds = %772
  %781 = getelementptr inbounds i8, ptr %773, i64 32
  br label %782

782:                                              ; preds = %782, %780
  %783 = phi ptr [ %781, %780 ], [ %790, %782 ]
  %784 = phi ptr [ %775, %780 ], [ %788, %782 ]
  %785 = getelementptr inbounds i8, ptr %784, i64 16
  %786 = load <2 x i64>, ptr %785, align 1, !tbaa !35
  store <2 x i64> %786, ptr %783, align 1, !tbaa !35
  %787 = getelementptr inbounds i8, ptr %783, i64 16
  %788 = getelementptr inbounds i8, ptr %784, i64 32
  %789 = load <2 x i64>, ptr %788, align 1, !tbaa !35
  store <2 x i64> %789, ptr %787, align 1, !tbaa !35
  %790 = getelementptr inbounds i8, ptr %783, i64 32
  %791 = icmp ult ptr %790, %777
  br i1 %791, label %782, label %913, !llvm.loop !38

792:                                              ; preds = %758
  %793 = ptrtoint ptr %766 to i64
  %794 = icmp ugt ptr %123, %109
  br i1 %794, label %812, label %795

795:                                              ; preds = %792
  %796 = sub i64 %111, %763
  %797 = getelementptr inbounds i8, ptr %768, i64 %796
  %798 = load <2 x i64>, ptr %123, align 1, !tbaa !35
  store <2 x i64> %798, ptr %768, align 1, !tbaa !35
  %799 = icmp ult i64 %796, 17
  br i1 %799, label %812, label %800

800:                                              ; preds = %795
  %801 = getelementptr inbounds i8, ptr %768, i64 16
  br label %802

802:                                              ; preds = %802, %800
  %803 = phi ptr [ %801, %800 ], [ %810, %802 ]
  %804 = phi ptr [ %123, %800 ], [ %808, %802 ]
  %805 = getelementptr inbounds i8, ptr %804, i64 16
  %806 = load <2 x i64>, ptr %805, align 1, !tbaa !35
  store <2 x i64> %806, ptr %803, align 1, !tbaa !35
  %807 = getelementptr inbounds i8, ptr %803, i64 16
  %808 = getelementptr inbounds i8, ptr %804, i64 32
  %809 = load <2 x i64>, ptr %808, align 1, !tbaa !35
  store <2 x i64> %809, ptr %807, align 1, !tbaa !35
  %810 = getelementptr inbounds i8, ptr %803, i64 32
  %811 = icmp ult ptr %810, %797
  br i1 %811, label %802, label %812, !llvm.loop !38

812:                                              ; preds = %802, %795, %792
  %813 = phi ptr [ %109, %795 ], [ %123, %792 ], [ %109, %802 ]
  %814 = phi ptr [ %797, %795 ], [ %768, %792 ], [ %797, %802 ]
  %815 = icmp ult ptr %813, %766
  br i1 %815, label %816, label %913

816:                                              ; preds = %812
  %817 = ptrtoint ptr %814 to i64
  %818 = ptrtoint ptr %813 to i64
  %819 = sub i64 %793, %818
  %820 = getelementptr i8, ptr %813, i64 %819
  %821 = icmp ult i64 %819, 8
  %822 = sub i64 %817, %818
  %823 = icmp ult i64 %822, 32
  %824 = select i1 %821, i1 true, i1 %823
  br i1 %824, label %860, label %825

825:                                              ; preds = %816
  %826 = icmp ult i64 %819, 32
  br i1 %826, label %846, label %827

827:                                              ; preds = %825
  %828 = and i64 %819, -32
  br label %829

829:                                              ; preds = %829, %827
  %830 = phi i64 [ 0, %827 ], [ %837, %829 ]
  %831 = getelementptr i8, ptr %814, i64 %830
  %832 = getelementptr i8, ptr %813, i64 %830
  %833 = getelementptr i8, ptr %832, i64 16
  %834 = load <16 x i8>, ptr %832, align 1, !tbaa !35
  %835 = load <16 x i8>, ptr %833, align 1, !tbaa !35
  %836 = getelementptr i8, ptr %831, i64 16
  store <16 x i8> %834, ptr %831, align 1, !tbaa !35
  store <16 x i8> %835, ptr %836, align 1, !tbaa !35
  %837 = add nuw i64 %830, 32
  %838 = icmp eq i64 %837, %828
  br i1 %838, label %839, label %829, !llvm.loop !103

839:                                              ; preds = %829
  %840 = icmp eq i64 %819, %828
  br i1 %840, label %913, label %841

841:                                              ; preds = %839
  %842 = getelementptr i8, ptr %813, i64 %828
  %843 = getelementptr i8, ptr %814, i64 %828
  %844 = and i64 %819, 24
  %845 = icmp eq i64 %844, 0
  br i1 %845, label %860, label %846

846:                                              ; preds = %825, %841
  %847 = phi i64 [ %828, %841 ], [ 0, %825 ]
  %848 = and i64 %819, -8
  %849 = getelementptr i8, ptr %814, i64 %848
  %850 = getelementptr i8, ptr %813, i64 %848
  br label %851

851:                                              ; preds = %851, %846
  %852 = phi i64 [ %847, %846 ], [ %856, %851 ]
  %853 = getelementptr i8, ptr %814, i64 %852
  %854 = getelementptr i8, ptr %813, i64 %852
  %855 = load <8 x i8>, ptr %854, align 1, !tbaa !35
  store <8 x i8> %855, ptr %853, align 1, !tbaa !35
  %856 = add nuw i64 %852, 8
  %857 = icmp eq i64 %856, %848
  br i1 %857, label %858, label %851, !llvm.loop !104

858:                                              ; preds = %851
  %859 = icmp eq i64 %819, %848
  br i1 %859, label %913, label %860

860:                                              ; preds = %816, %841, %858
  %861 = phi ptr [ %814, %816 ], [ %843, %841 ], [ %849, %858 ]
  %862 = phi ptr [ %813, %816 ], [ %842, %841 ], [ %850, %858 ]
  %863 = ptrtoint ptr %862 to i64
  %864 = sub i64 %762, %863
  %865 = and i64 %864, 7
  %866 = icmp eq i64 %865, 0
  br i1 %866, label %876, label %867

867:                                              ; preds = %860, %867
  %868 = phi ptr [ %873, %867 ], [ %861, %860 ]
  %869 = phi ptr [ %871, %867 ], [ %862, %860 ]
  %870 = phi i64 [ %874, %867 ], [ 0, %860 ]
  %871 = getelementptr inbounds i8, ptr %869, i64 1
  %872 = load i8, ptr %869, align 1, !tbaa !35
  %873 = getelementptr inbounds i8, ptr %868, i64 1
  store i8 %872, ptr %868, align 1, !tbaa !35
  %874 = add i64 %870, 1
  %875 = icmp eq i64 %874, %865
  br i1 %875, label %876, label %867, !llvm.loop !105

876:                                              ; preds = %867, %860
  %877 = phi ptr [ %861, %860 ], [ %873, %867 ]
  %878 = phi ptr [ %862, %860 ], [ %871, %867 ]
  %879 = sub i64 %863, %762
  %880 = icmp ugt i64 %879, -8
  br i1 %880, label %913, label %881

881:                                              ; preds = %876, %881
  %882 = phi ptr [ %907, %881 ], [ %877, %876 ]
  %883 = phi ptr [ %905, %881 ], [ %878, %876 ]
  %884 = getelementptr inbounds i8, ptr %883, i64 1
  %885 = load i8, ptr %883, align 1, !tbaa !35
  %886 = getelementptr inbounds i8, ptr %882, i64 1
  store i8 %885, ptr %882, align 1, !tbaa !35
  %887 = getelementptr inbounds i8, ptr %883, i64 2
  %888 = load i8, ptr %884, align 1, !tbaa !35
  %889 = getelementptr inbounds i8, ptr %882, i64 2
  store i8 %888, ptr %886, align 1, !tbaa !35
  %890 = getelementptr inbounds i8, ptr %883, i64 3
  %891 = load i8, ptr %887, align 1, !tbaa !35
  %892 = getelementptr inbounds i8, ptr %882, i64 3
  store i8 %891, ptr %889, align 1, !tbaa !35
  %893 = getelementptr inbounds i8, ptr %883, i64 4
  %894 = load i8, ptr %890, align 1, !tbaa !35
  %895 = getelementptr inbounds i8, ptr %882, i64 4
  store i8 %894, ptr %892, align 1, !tbaa !35
  %896 = getelementptr inbounds i8, ptr %883, i64 5
  %897 = load i8, ptr %893, align 1, !tbaa !35
  %898 = getelementptr inbounds i8, ptr %882, i64 5
  store i8 %897, ptr %895, align 1, !tbaa !35
  %899 = getelementptr inbounds i8, ptr %883, i64 6
  %900 = load i8, ptr %896, align 1, !tbaa !35
  %901 = getelementptr inbounds i8, ptr %882, i64 6
  store i8 %900, ptr %898, align 1, !tbaa !35
  %902 = getelementptr inbounds i8, ptr %883, i64 7
  %903 = load i8, ptr %899, align 1, !tbaa !35
  %904 = getelementptr inbounds i8, ptr %882, i64 7
  store i8 %903, ptr %901, align 1, !tbaa !35
  %905 = getelementptr inbounds i8, ptr %883, i64 8
  %906 = load i8, ptr %902, align 1, !tbaa !35
  %907 = getelementptr inbounds i8, ptr %882, i64 8
  store i8 %906, ptr %904, align 1, !tbaa !35
  %908 = icmp eq ptr %905, %820
  br i1 %908, label %913, label %881, !llvm.loop !106

909:                                              ; preds = %772, %769
  %910 = load ptr, ptr %110, align 8, !tbaa !36
  %911 = getelementptr inbounds i8, ptr %910, i64 %764
  store ptr %911, ptr %110, align 8, !tbaa !36
  %912 = load ptr, ptr %113, align 8, !tbaa !46
  br label %925

913:                                              ; preds = %782, %876, %881, %839, %858, %812
  %914 = load ptr, ptr %110, align 8, !tbaa !36
  %915 = getelementptr inbounds i8, ptr %914, i64 %764
  store ptr %915, ptr %110, align 8, !tbaa !36
  %916 = icmp ugt i64 %764, 65535
  %917 = load ptr, ptr %113, align 8, !tbaa !46
  br i1 %916, label %918, label %925, !prof !107

918:                                              ; preds = %913
  store i32 1, ptr %112, align 8, !tbaa !48
  %919 = load ptr, ptr %1, align 8, !tbaa !49
  %920 = ptrtoint ptr %917 to i64
  %921 = ptrtoint ptr %919 to i64
  %922 = sub i64 %920, %921
  %923 = lshr exact i64 %922, 3
  %924 = trunc i64 %923 to i32
  store i32 %924, ptr %114, align 4, !tbaa !50
  br label %925

925:                                              ; preds = %918, %913, %909
  %926 = phi ptr [ %912, %909 ], [ %917, %918 ], [ %917, %913 ]
  %927 = trunc i64 %764 to i16
  %928 = getelementptr inbounds %struct.SeqDef_s, ptr %926, i64 0, i32 1
  store i16 %927, ptr %928, align 4, !tbaa !51
  store i32 %765, ptr %926, align 4, !tbaa !53
  %929 = add i64 %760, -3
  %930 = icmp ugt i64 %929, 65535
  br i1 %930, label %931, label %944, !prof !54

931:                                              ; preds = %925, %345
  %932 = phi ptr [ %346, %345 ], [ %926, %925 ]
  %933 = phi i64 [ %349, %345 ], [ %929, %925 ]
  %934 = phi i64 [ %181, %345 ], [ %760, %925 ]
  %935 = phi i32 [ %125, %345 ], [ %124, %925 ]
  %936 = phi i32 [ %124, %345 ], [ %759, %925 ]
  %937 = phi ptr [ %173, %345 ], [ %761, %925 ]
  store i32 2, ptr %112, align 8, !tbaa !48
  %938 = load ptr, ptr %1, align 8, !tbaa !49
  %939 = ptrtoint ptr %932 to i64
  %940 = ptrtoint ptr %938 to i64
  %941 = sub i64 %939, %940
  %942 = lshr exact i64 %941, 3
  %943 = trunc i64 %942 to i32
  store i32 %943, ptr %114, align 4, !tbaa !50
  br label %944

944:                                              ; preds = %931, %925, %345
  %945 = phi i64 [ %349, %345 ], [ %929, %925 ], [ %933, %931 ]
  %946 = phi ptr [ %346, %345 ], [ %926, %925 ], [ %932, %931 ]
  %947 = phi i64 [ %181, %345 ], [ %760, %925 ], [ %934, %931 ]
  %948 = phi i32 [ %125, %345 ], [ %124, %925 ], [ %935, %931 ]
  %949 = phi i32 [ %124, %345 ], [ %759, %925 ], [ %936, %931 ]
  %950 = phi ptr [ %173, %345 ], [ %761, %925 ], [ %937, %931 ]
  %951 = trunc i64 %945 to i16
  %952 = getelementptr inbounds %struct.SeqDef_s, ptr %946, i64 0, i32 2
  store i16 %951, ptr %952, align 2, !tbaa !61
  %953 = getelementptr inbounds %struct.SeqDef_s, ptr %946, i64 1
  store ptr %953, ptr %113, align 8, !tbaa !46
  %954 = getelementptr inbounds i8, ptr %950, i64 %947
  %955 = icmp ugt ptr %954, %39
  br i1 %955, label %1043, label %956

956:                                              ; preds = %944
  %957 = add i32 %151, 2
  %958 = zext i32 %957 to i64
  %959 = getelementptr inbounds i8, ptr %18, i64 %958
  %960 = load i64, ptr %959, align 1, !tbaa !21
  %961 = mul i64 %960, -3523014627327384477
  %962 = lshr i64 %961, %104
  %963 = getelementptr inbounds i32, ptr %10, i64 %962
  store i32 %957, ptr %963, align 4, !tbaa !22
  %964 = getelementptr inbounds i8, ptr %954, i64 -2
  %965 = ptrtoint ptr %964 to i64
  %966 = sub i64 %965, %20
  %967 = trunc i64 %966 to i32
  %968 = load i64, ptr %964, align 1, !tbaa !21
  %969 = mul i64 %968, -3523014627327384477
  %970 = lshr i64 %969, %104
  %971 = getelementptr inbounds i32, ptr %10, i64 %970
  store i32 %967, ptr %971, align 4, !tbaa !22
  %972 = load i32, ptr %959, align 1, !tbaa !22
  %973 = mul i32 %972, -1640531535
  %974 = lshr i32 %973, %105
  %975 = zext i32 %974 to i64
  %976 = getelementptr inbounds i32, ptr %14, i64 %975
  store i32 %957, ptr %976, align 4, !tbaa !22
  %977 = getelementptr inbounds i8, ptr %954, i64 -1
  %978 = ptrtoint ptr %977 to i64
  %979 = sub i64 %978, %20
  %980 = trunc i64 %979 to i32
  %981 = load i32, ptr %977, align 1, !tbaa !22
  %982 = mul i32 %981, -1640531535
  %983 = lshr i32 %982, %105
  %984 = zext i32 %983 to i64
  %985 = getelementptr inbounds i32, ptr %14, i64 %984
  store i32 %980, ptr %985, align 4, !tbaa !22
  br label %986

986:                                              ; preds = %1028, %956
  %987 = phi ptr [ %953, %956 ], [ %1031, %1028 ]
  %988 = phi ptr [ %954, %956 ], [ %1041, %1028 ]
  %989 = phi i32 [ %949, %956 ], [ %990, %1028 ]
  %990 = phi i32 [ %948, %956 ], [ %989, %1028 ]
  %991 = ptrtoint ptr %988 to i64
  %992 = sub i64 %991, %20
  %993 = trunc i64 %992 to i32
  %994 = sub i32 %993, %990
  %995 = icmp ult i32 %994, %35
  %996 = zext i32 %994 to i64
  %997 = select i1 %995, ptr %120, ptr %18
  %998 = getelementptr i8, ptr %997, i64 %996
  %999 = sub i32 %994, %35
  %1000 = icmp ugt i32 %999, -4
  br i1 %1000, label %1043, label %1001

1001:                                             ; preds = %986
  %1002 = load i32, ptr %998, align 1, !tbaa !22
  %1003 = load i32, ptr %988, align 1, !tbaa !22
  %1004 = icmp eq i32 %1002, %1003
  br i1 %1004, label %1005, label %1043

1005:                                             ; preds = %1001
  %1006 = select i1 %995, ptr %55, ptr %38
  %1007 = getelementptr inbounds i8, ptr %988, i64 4
  %1008 = getelementptr inbounds i8, ptr %998, i64 4
  %1009 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1007, ptr noundef nonnull %1008, ptr noundef %38, ptr noundef %1006, ptr noundef %37)
  %1010 = add i64 %1009, 4
  %1011 = icmp ugt ptr %988, %109
  br i1 %1011, label %1016, label %1012

1012:                                             ; preds = %1005
  %1013 = load ptr, ptr %110, align 8, !tbaa !36
  %1014 = load <2 x i64>, ptr %988, align 1, !tbaa !35
  store <2 x i64> %1014, ptr %1013, align 1, !tbaa !35
  %1015 = load ptr, ptr %113, align 8, !tbaa !46
  br label %1016

1016:                                             ; preds = %1012, %1005
  %1017 = phi ptr [ %987, %1005 ], [ %1015, %1012 ]
  %1018 = getelementptr inbounds %struct.SeqDef_s, ptr %1017, i64 0, i32 1
  store i16 0, ptr %1018, align 4, !tbaa !51
  store i32 1, ptr %1017, align 4, !tbaa !53
  %1019 = add i64 %1009, 1
  %1020 = icmp ugt i64 %1019, 65535
  br i1 %1020, label %1021, label %1028, !prof !54

1021:                                             ; preds = %1016
  store i32 2, ptr %112, align 8, !tbaa !48
  %1022 = load ptr, ptr %1, align 8, !tbaa !49
  %1023 = ptrtoint ptr %1017 to i64
  %1024 = ptrtoint ptr %1022 to i64
  %1025 = sub i64 %1023, %1024
  %1026 = lshr exact i64 %1025, 3
  %1027 = trunc i64 %1026 to i32
  store i32 %1027, ptr %114, align 4, !tbaa !50
  br label %1028

1028:                                             ; preds = %1021, %1016
  %1029 = trunc i64 %1019 to i16
  %1030 = getelementptr inbounds %struct.SeqDef_s, ptr %1017, i64 0, i32 2
  store i16 %1029, ptr %1030, align 2, !tbaa !61
  %1031 = getelementptr inbounds %struct.SeqDef_s, ptr %1017, i64 1
  store ptr %1031, ptr %113, align 8, !tbaa !46
  %1032 = load i32, ptr %988, align 1, !tbaa !22
  %1033 = mul i32 %1032, -1640531535
  %1034 = lshr i32 %1033, %105
  %1035 = zext i32 %1034 to i64
  %1036 = getelementptr inbounds i32, ptr %14, i64 %1035
  store i32 %993, ptr %1036, align 4, !tbaa !22
  %1037 = load i64, ptr %988, align 1, !tbaa !21
  %1038 = mul i64 %1037, -3523014627327384477
  %1039 = lshr i64 %1038, %104
  %1040 = getelementptr inbounds i32, ptr %10, i64 %1039
  store i32 %993, ptr %1040, align 4, !tbaa !22
  %1041 = getelementptr inbounds i8, ptr %988, i64 %1010
  %1042 = icmp ugt ptr %1041, %39
  br i1 %1042, label %1043, label %986

1043:                                             ; preds = %1028, %1001, %986, %944, %494
  %1044 = phi i32 [ %125, %494 ], [ %948, %944 ], [ %990, %986 ], [ %990, %1001 ], [ %989, %1028 ]
  %1045 = phi i32 [ %124, %494 ], [ %949, %944 ], [ %989, %986 ], [ %989, %1001 ], [ %990, %1028 ]
  %1046 = phi ptr [ %123, %494 ], [ %954, %944 ], [ %988, %986 ], [ %988, %1001 ], [ %1041, %1028 ]
  %1047 = phi ptr [ %499, %494 ], [ %954, %944 ], [ %988, %986 ], [ %988, %1001 ], [ %1041, %1028 ]
  %1048 = icmp ult ptr %1047, %39
  br i1 %1048, label %121, label %1049

1049:                                             ; preds = %1043
  %1050 = ptrtoint ptr %1046 to i64
  br label %3976

1051:                                             ; preds = %5
  br i1 %70, label %1052, label %1053, !nosanitize !88

1052:                                             ; preds = %1051
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !88
  unreachable, !nosanitize !88

1053:                                             ; preds = %1051
  %1054 = extractvalue { i64, i1 } %69, 0, !nosanitize !88
  %1055 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 18
  %1056 = load i32, ptr %1055, align 8, !tbaa !89
  %1057 = icmp eq i32 %1056, 0
  br i1 %1057, label %1076, label %1058

1058:                                             ; preds = %1053
  %1059 = zext nneg i32 %62 to i64
  %1060 = shl i64 4, %1059
  %1061 = zext nneg i32 %64 to i64
  %1062 = shl i64 4, %1061
  %1063 = icmp ugt i32 %62, 61
  br i1 %1063, label %1064, label %1066

1064:                                             ; preds = %1066, %1058
  %1065 = icmp ugt i32 %64, 61
  br i1 %1065, label %1076, label %1071

1066:                                             ; preds = %1058, %1066
  %1067 = phi i64 [ %1069, %1066 ], [ 0, %1058 ]
  %1068 = getelementptr inbounds i8, ptr %46, i64 %1067
  tail call void @llvm.prefetch.p0(ptr %1068, i32 0, i32 2, i32 1)
  %1069 = add i64 %1067, 64
  %1070 = icmp ult i64 %1069, %1060
  br i1 %1070, label %1066, label %1064, !llvm.loop !90

1071:                                             ; preds = %1064, %1071
  %1072 = phi i64 [ %1074, %1071 ], [ 0, %1064 ]
  %1073 = getelementptr inbounds i8, ptr %48, i64 %1072
  tail call void @llvm.prefetch.p0(ptr %1073, i32 0, i32 2, i32 1)
  %1074 = add i64 %1072, 64
  %1075 = icmp ult i64 %1074, %1062
  br i1 %1075, label %1071, label %1076, !llvm.loop !91

1076:                                             ; preds = %1071, %1064, %1053
  %1077 = and i64 %1054, 4294967295
  %1078 = icmp eq i64 %1077, 0
  %1079 = zext i1 %1078 to i64
  %1080 = getelementptr inbounds i8, ptr %3, i64 %1079
  %1081 = icmp ult ptr %1080, %39
  br i1 %1081, label %1082, label %3976

1082:                                             ; preds = %1076
  %1083 = sub i32 64, %12
  %1084 = zext nneg i32 %1083 to i64
  %1085 = sub i32 64, %16
  %1086 = zext nneg i32 %1085 to i64
  %1087 = sub i32 56, %62
  %1088 = zext nneg i32 %1087 to i64
  %1089 = sub i32 56, %64
  %1090 = zext nneg i32 %1089 to i64
  %1091 = getelementptr inbounds i8, ptr %38, i64 -32
  %1092 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %1093 = ptrtoint ptr %1091 to i64
  %1094 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %1095 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %1096 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  %1097 = getelementptr inbounds i8, ptr %38, i64 -7
  %1098 = getelementptr inbounds i8, ptr %38, i64 -3
  %1099 = getelementptr inbounds i8, ptr %38, i64 -1
  %1100 = zext i32 %60 to i64
  %1101 = sub nsw i64 0, %1100
  %1102 = getelementptr i8, ptr %52, i64 %1101
  br label %1103

1103:                                             ; preds = %2018, %1082
  %1104 = phi ptr [ %1080, %1082 ], [ %2022, %2018 ]
  %1105 = phi ptr [ %3, %1082 ], [ %2021, %2018 ]
  %1106 = phi i32 [ %40, %1082 ], [ %2020, %2018 ]
  %1107 = phi i32 [ %42, %1082 ], [ %2019, %2018 ]
  %1108 = load i64, ptr %1104, align 1, !tbaa !21
  %1109 = mul i64 %1108, -3523014627327384477
  %1110 = lshr i64 %1109, %1084
  %1111 = mul i64 %1108, -3523014627271114752
  %1112 = lshr i64 %1111, %1086
  %1113 = lshr i64 %1109, %1088
  %1114 = lshr i64 %1111, %1090
  %1115 = lshr i64 %1113, 8
  %1116 = getelementptr inbounds i32, ptr %46, i64 %1115
  %1117 = load i32, ptr %1116, align 4, !tbaa !22
  %1118 = lshr i64 %1114, 8
  %1119 = getelementptr inbounds i32, ptr %48, i64 %1118
  %1120 = load i32, ptr %1119, align 4, !tbaa !22
  %1121 = zext i32 %1117 to i64
  %1122 = xor i64 %1113, %1121
  %1123 = and i64 %1122, 255
  %1124 = icmp eq i64 %1123, 0
  %1125 = zext i32 %1120 to i64
  %1126 = xor i64 %1114, %1125
  %1127 = and i64 %1126, 255
  %1128 = icmp eq i64 %1127, 0
  %1129 = ptrtoint ptr %1104 to i64
  %1130 = sub i64 %1129, %20
  %1131 = trunc i64 %1130 to i32
  %1132 = getelementptr inbounds i32, ptr %10, i64 %1110
  %1133 = load i32, ptr %1132, align 4, !tbaa !22
  %1134 = getelementptr inbounds i32, ptr %14, i64 %1112
  %1135 = load i32, ptr %1134, align 4, !tbaa !22
  %1136 = zext i32 %1133 to i64
  %1137 = getelementptr inbounds i8, ptr %18, i64 %1136
  %1138 = zext i32 %1135 to i64
  %1139 = getelementptr inbounds i8, ptr %18, i64 %1138
  %1140 = add i32 %1131, 1
  %1141 = sub i32 %1140, %1106
  %1142 = icmp ult i32 %1141, %35
  %1143 = sub i32 %1141, %60
  %1144 = zext i32 %1143 to i64
  %1145 = getelementptr inbounds i8, ptr %52, i64 %1144
  %1146 = zext i32 %1141 to i64
  %1147 = getelementptr inbounds i8, ptr %18, i64 %1146
  %1148 = select i1 %1142, ptr %1145, ptr %1147
  store i32 %1131, ptr %1134, align 4, !tbaa !22
  store i32 %1131, ptr %1132, align 4, !tbaa !22
  %1149 = sub i32 %1141, %35
  %1150 = icmp ugt i32 %1149, -4
  br i1 %1150, label %1331, label %1151

1151:                                             ; preds = %1103
  %1152 = load i32, ptr %1148, align 1, !tbaa !22
  %1153 = getelementptr inbounds i8, ptr %1104, i64 1
  %1154 = load i32, ptr %1153, align 1, !tbaa !22
  %1155 = icmp eq i32 %1152, %1154
  br i1 %1155, label %1156, label %1331

1156:                                             ; preds = %1151
  %1157 = select i1 %1142, ptr %55, ptr %38
  %1158 = getelementptr inbounds i8, ptr %1104, i64 5
  %1159 = getelementptr inbounds i8, ptr %1148, i64 4
  %1160 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1158, ptr noundef nonnull %1159, ptr noundef %38, ptr noundef %1157, ptr noundef %37)
  %1161 = add i64 %1160, 4
  %1162 = ptrtoint ptr %1153 to i64
  %1163 = ptrtoint ptr %1105 to i64
  %1164 = sub i64 %1162, %1163
  %1165 = getelementptr inbounds i8, ptr %1105, i64 %1164
  %1166 = icmp ugt ptr %1165, %1091
  %1167 = load ptr, ptr %1092, align 8, !tbaa !36
  br i1 %1166, label %1191, label %1168

1168:                                             ; preds = %1156
  %1169 = load <2 x i64>, ptr %1105, align 1, !tbaa !35
  store <2 x i64> %1169, ptr %1167, align 1, !tbaa !35
  %1170 = icmp ugt i64 %1164, 16
  br i1 %1170, label %1171, label %1309

1171:                                             ; preds = %1168
  %1172 = load ptr, ptr %1092, align 8, !tbaa !36
  %1173 = getelementptr inbounds i8, ptr %1172, i64 16
  %1174 = getelementptr inbounds i8, ptr %1105, i64 16
  %1175 = add i64 %1164, -16
  %1176 = getelementptr inbounds i8, ptr %1172, i64 %1164
  %1177 = load <2 x i64>, ptr %1174, align 1, !tbaa !35
  store <2 x i64> %1177, ptr %1173, align 1, !tbaa !35
  %1178 = icmp ult i64 %1175, 17
  br i1 %1178, label %1309, label %1179

1179:                                             ; preds = %1171
  %1180 = getelementptr inbounds i8, ptr %1172, i64 32
  br label %1181

1181:                                             ; preds = %1181, %1179
  %1182 = phi ptr [ %1180, %1179 ], [ %1189, %1181 ]
  %1183 = phi ptr [ %1174, %1179 ], [ %1187, %1181 ]
  %1184 = getelementptr inbounds i8, ptr %1183, i64 16
  %1185 = load <2 x i64>, ptr %1184, align 1, !tbaa !35
  store <2 x i64> %1185, ptr %1182, align 1, !tbaa !35
  %1186 = getelementptr inbounds i8, ptr %1182, i64 16
  %1187 = getelementptr inbounds i8, ptr %1183, i64 32
  %1188 = load <2 x i64>, ptr %1187, align 1, !tbaa !35
  store <2 x i64> %1188, ptr %1186, align 1, !tbaa !35
  %1189 = getelementptr inbounds i8, ptr %1182, i64 32
  %1190 = icmp ult ptr %1189, %1176
  br i1 %1190, label %1181, label %1313, !llvm.loop !38

1191:                                             ; preds = %1156
  %1192 = ptrtoint ptr %1165 to i64
  %1193 = icmp ugt ptr %1105, %1091
  br i1 %1193, label %1211, label %1194

1194:                                             ; preds = %1191
  %1195 = sub i64 %1093, %1163
  %1196 = getelementptr inbounds i8, ptr %1167, i64 %1195
  %1197 = load <2 x i64>, ptr %1105, align 1, !tbaa !35
  store <2 x i64> %1197, ptr %1167, align 1, !tbaa !35
  %1198 = icmp ult i64 %1195, 17
  br i1 %1198, label %1211, label %1199

1199:                                             ; preds = %1194
  %1200 = getelementptr inbounds i8, ptr %1167, i64 16
  br label %1201

1201:                                             ; preds = %1201, %1199
  %1202 = phi ptr [ %1200, %1199 ], [ %1209, %1201 ]
  %1203 = phi ptr [ %1105, %1199 ], [ %1207, %1201 ]
  %1204 = getelementptr inbounds i8, ptr %1203, i64 16
  %1205 = load <2 x i64>, ptr %1204, align 1, !tbaa !35
  store <2 x i64> %1205, ptr %1202, align 1, !tbaa !35
  %1206 = getelementptr inbounds i8, ptr %1202, i64 16
  %1207 = getelementptr inbounds i8, ptr %1203, i64 32
  %1208 = load <2 x i64>, ptr %1207, align 1, !tbaa !35
  store <2 x i64> %1208, ptr %1206, align 1, !tbaa !35
  %1209 = getelementptr inbounds i8, ptr %1202, i64 32
  %1210 = icmp ult ptr %1209, %1196
  br i1 %1210, label %1201, label %1211, !llvm.loop !38

1211:                                             ; preds = %1201, %1194, %1191
  %1212 = phi ptr [ %1091, %1194 ], [ %1105, %1191 ], [ %1091, %1201 ]
  %1213 = phi ptr [ %1196, %1194 ], [ %1167, %1191 ], [ %1196, %1201 ]
  %1214 = icmp ult ptr %1212, %1165
  br i1 %1214, label %1215, label %1313

1215:                                             ; preds = %1211
  %1216 = ptrtoint ptr %1213 to i64
  %1217 = ptrtoint ptr %1212 to i64
  %1218 = sub i64 %1192, %1217
  %1219 = getelementptr i8, ptr %1212, i64 %1218
  %1220 = icmp ult i64 %1218, 8
  %1221 = sub i64 %1216, %1217
  %1222 = icmp ult i64 %1221, 32
  %1223 = select i1 %1220, i1 true, i1 %1222
  br i1 %1223, label %1259, label %1224

1224:                                             ; preds = %1215
  %1225 = icmp ult i64 %1218, 32
  br i1 %1225, label %1245, label %1226

1226:                                             ; preds = %1224
  %1227 = and i64 %1218, -32
  br label %1228

1228:                                             ; preds = %1228, %1226
  %1229 = phi i64 [ 0, %1226 ], [ %1236, %1228 ]
  %1230 = getelementptr i8, ptr %1213, i64 %1229
  %1231 = getelementptr i8, ptr %1212, i64 %1229
  %1232 = getelementptr i8, ptr %1231, i64 16
  %1233 = load <16 x i8>, ptr %1231, align 1, !tbaa !35
  %1234 = load <16 x i8>, ptr %1232, align 1, !tbaa !35
  %1235 = getelementptr i8, ptr %1230, i64 16
  store <16 x i8> %1233, ptr %1230, align 1, !tbaa !35
  store <16 x i8> %1234, ptr %1235, align 1, !tbaa !35
  %1236 = add nuw i64 %1229, 32
  %1237 = icmp eq i64 %1236, %1227
  br i1 %1237, label %1238, label %1228, !llvm.loop !108

1238:                                             ; preds = %1228
  %1239 = icmp eq i64 %1218, %1227
  br i1 %1239, label %1313, label %1240

1240:                                             ; preds = %1238
  %1241 = getelementptr i8, ptr %1212, i64 %1227
  %1242 = getelementptr i8, ptr %1213, i64 %1227
  %1243 = and i64 %1218, 24
  %1244 = icmp eq i64 %1243, 0
  br i1 %1244, label %1259, label %1245

1245:                                             ; preds = %1224, %1240
  %1246 = phi i64 [ %1227, %1240 ], [ 0, %1224 ]
  %1247 = and i64 %1218, -8
  %1248 = getelementptr i8, ptr %1213, i64 %1247
  %1249 = getelementptr i8, ptr %1212, i64 %1247
  br label %1250

1250:                                             ; preds = %1250, %1245
  %1251 = phi i64 [ %1246, %1245 ], [ %1255, %1250 ]
  %1252 = getelementptr i8, ptr %1213, i64 %1251
  %1253 = getelementptr i8, ptr %1212, i64 %1251
  %1254 = load <8 x i8>, ptr %1253, align 1, !tbaa !35
  store <8 x i8> %1254, ptr %1252, align 1, !tbaa !35
  %1255 = add nuw i64 %1251, 8
  %1256 = icmp eq i64 %1255, %1247
  br i1 %1256, label %1257, label %1250, !llvm.loop !109

1257:                                             ; preds = %1250
  %1258 = icmp eq i64 %1218, %1247
  br i1 %1258, label %1313, label %1259

1259:                                             ; preds = %1215, %1240, %1257
  %1260 = phi ptr [ %1213, %1215 ], [ %1242, %1240 ], [ %1248, %1257 ]
  %1261 = phi ptr [ %1212, %1215 ], [ %1241, %1240 ], [ %1249, %1257 ]
  %1262 = add i64 %1129, 1
  %1263 = ptrtoint ptr %1261 to i64
  %1264 = sub i64 %1262, %1263
  %1265 = sub i64 %1129, %1263
  %1266 = and i64 %1264, 7
  %1267 = icmp eq i64 %1266, 0
  br i1 %1267, label %1277, label %1268

1268:                                             ; preds = %1259, %1268
  %1269 = phi ptr [ %1274, %1268 ], [ %1260, %1259 ]
  %1270 = phi ptr [ %1272, %1268 ], [ %1261, %1259 ]
  %1271 = phi i64 [ %1275, %1268 ], [ 0, %1259 ]
  %1272 = getelementptr inbounds i8, ptr %1270, i64 1
  %1273 = load i8, ptr %1270, align 1, !tbaa !35
  %1274 = getelementptr inbounds i8, ptr %1269, i64 1
  store i8 %1273, ptr %1269, align 1, !tbaa !35
  %1275 = add i64 %1271, 1
  %1276 = icmp eq i64 %1275, %1266
  br i1 %1276, label %1277, label %1268, !llvm.loop !110

1277:                                             ; preds = %1268, %1259
  %1278 = phi ptr [ %1260, %1259 ], [ %1274, %1268 ]
  %1279 = phi ptr [ %1261, %1259 ], [ %1272, %1268 ]
  %1280 = icmp ult i64 %1265, 7
  br i1 %1280, label %1313, label %1281

1281:                                             ; preds = %1277, %1281
  %1282 = phi ptr [ %1307, %1281 ], [ %1278, %1277 ]
  %1283 = phi ptr [ %1305, %1281 ], [ %1279, %1277 ]
  %1284 = getelementptr inbounds i8, ptr %1283, i64 1
  %1285 = load i8, ptr %1283, align 1, !tbaa !35
  %1286 = getelementptr inbounds i8, ptr %1282, i64 1
  store i8 %1285, ptr %1282, align 1, !tbaa !35
  %1287 = getelementptr inbounds i8, ptr %1283, i64 2
  %1288 = load i8, ptr %1284, align 1, !tbaa !35
  %1289 = getelementptr inbounds i8, ptr %1282, i64 2
  store i8 %1288, ptr %1286, align 1, !tbaa !35
  %1290 = getelementptr inbounds i8, ptr %1283, i64 3
  %1291 = load i8, ptr %1287, align 1, !tbaa !35
  %1292 = getelementptr inbounds i8, ptr %1282, i64 3
  store i8 %1291, ptr %1289, align 1, !tbaa !35
  %1293 = getelementptr inbounds i8, ptr %1283, i64 4
  %1294 = load i8, ptr %1290, align 1, !tbaa !35
  %1295 = getelementptr inbounds i8, ptr %1282, i64 4
  store i8 %1294, ptr %1292, align 1, !tbaa !35
  %1296 = getelementptr inbounds i8, ptr %1283, i64 5
  %1297 = load i8, ptr %1293, align 1, !tbaa !35
  %1298 = getelementptr inbounds i8, ptr %1282, i64 5
  store i8 %1297, ptr %1295, align 1, !tbaa !35
  %1299 = getelementptr inbounds i8, ptr %1283, i64 6
  %1300 = load i8, ptr %1296, align 1, !tbaa !35
  %1301 = getelementptr inbounds i8, ptr %1282, i64 6
  store i8 %1300, ptr %1298, align 1, !tbaa !35
  %1302 = getelementptr inbounds i8, ptr %1283, i64 7
  %1303 = load i8, ptr %1299, align 1, !tbaa !35
  %1304 = getelementptr inbounds i8, ptr %1282, i64 7
  store i8 %1303, ptr %1301, align 1, !tbaa !35
  %1305 = getelementptr inbounds i8, ptr %1283, i64 8
  %1306 = load i8, ptr %1302, align 1, !tbaa !35
  %1307 = getelementptr inbounds i8, ptr %1282, i64 8
  store i8 %1306, ptr %1304, align 1, !tbaa !35
  %1308 = icmp eq ptr %1305, %1219
  br i1 %1308, label %1313, label %1281, !llvm.loop !111

1309:                                             ; preds = %1171, %1168
  %1310 = load ptr, ptr %1092, align 8, !tbaa !36
  %1311 = getelementptr inbounds i8, ptr %1310, i64 %1164
  store ptr %1311, ptr %1092, align 8, !tbaa !36
  %1312 = load ptr, ptr %1095, align 8, !tbaa !46
  br label %1325

1313:                                             ; preds = %1181, %1277, %1281, %1238, %1257, %1211
  %1314 = load ptr, ptr %1092, align 8, !tbaa !36
  %1315 = getelementptr inbounds i8, ptr %1314, i64 %1164
  store ptr %1315, ptr %1092, align 8, !tbaa !36
  %1316 = icmp ugt i64 %1164, 65535
  %1317 = load ptr, ptr %1095, align 8, !tbaa !46
  br i1 %1316, label %1318, label %1325, !prof !47

1318:                                             ; preds = %1313
  store i32 1, ptr %1094, align 8, !tbaa !48
  %1319 = load ptr, ptr %1, align 8, !tbaa !49
  %1320 = ptrtoint ptr %1317 to i64
  %1321 = ptrtoint ptr %1319 to i64
  %1322 = sub i64 %1320, %1321
  %1323 = lshr exact i64 %1322, 3
  %1324 = trunc i64 %1323 to i32
  store i32 %1324, ptr %1096, align 4, !tbaa !50
  br label %1325

1325:                                             ; preds = %1318, %1313, %1309
  %1326 = phi ptr [ %1312, %1309 ], [ %1317, %1318 ], [ %1317, %1313 ]
  %1327 = trunc i64 %1164 to i16
  %1328 = getelementptr inbounds %struct.SeqDef_s, ptr %1326, i64 0, i32 1
  store i16 %1327, ptr %1328, align 4, !tbaa !51
  store i32 1, ptr %1326, align 4, !tbaa !53
  %1329 = add i64 %1160, 1
  %1330 = icmp ugt i64 %1329, 65535
  br i1 %1330, label %1911, label %1924, !prof !54

1331:                                             ; preds = %1151, %1103
  %1332 = icmp ult i32 %1133, %35
  br i1 %1332, label %1426, label %1333

1333:                                             ; preds = %1331
  %1334 = load i64, ptr %1137, align 1, !tbaa !21
  %1335 = icmp eq i64 %1334, %1108
  br i1 %1335, label %1336, label %1426

1336:                                             ; preds = %1333
  %1337 = getelementptr inbounds i8, ptr %1104, i64 8
  %1338 = getelementptr inbounds i8, ptr %1137, i64 8
  %1339 = icmp ugt ptr %1097, %1337
  br i1 %1339, label %1340, label %1366

1340:                                             ; preds = %1336
  %1341 = load i64, ptr %1338, align 1, !tbaa !21
  %1342 = load i64, ptr %1337, align 1, !tbaa !21
  %1343 = xor i64 %1342, %1341
  %1344 = icmp eq i64 %1343, 0
  br i1 %1344, label %1348, label %1345

1345:                                             ; preds = %1340
  %1346 = tail call i64 @llvm.cttz.i64(i64 %1343, i1 true), !range !32
  %1347 = lshr i64 %1346, 3
  br label %1403

1348:                                             ; preds = %1340, %1354
  %1349 = phi ptr [ %1352, %1354 ], [ %1338, %1340 ]
  %1350 = phi ptr [ %1351, %1354 ], [ %1337, %1340 ]
  %1351 = getelementptr inbounds i8, ptr %1350, i64 8
  %1352 = getelementptr inbounds i8, ptr %1349, i64 8
  %1353 = icmp ult ptr %1351, %1097
  br i1 %1353, label %1354, label %1366

1354:                                             ; preds = %1348
  %1355 = load i64, ptr %1352, align 1, !tbaa !21
  %1356 = load i64, ptr %1351, align 1, !tbaa !21
  %1357 = xor i64 %1356, %1355
  %1358 = icmp eq i64 %1357, 0
  br i1 %1358, label %1348, label %1359

1359:                                             ; preds = %1354
  %1360 = tail call i64 @llvm.cttz.i64(i64 %1357, i1 true), !range !32
  %1361 = lshr i64 %1360, 3
  %1362 = getelementptr inbounds i8, ptr %1351, i64 %1361
  %1363 = ptrtoint ptr %1362 to i64
  %1364 = ptrtoint ptr %1337 to i64
  %1365 = sub i64 %1363, %1364
  br label %1403

1366:                                             ; preds = %1348, %1336
  %1367 = phi ptr [ %1338, %1336 ], [ %1352, %1348 ]
  %1368 = phi ptr [ %1337, %1336 ], [ %1351, %1348 ]
  %1369 = icmp ult ptr %1368, %1098
  br i1 %1369, label %1370, label %1377

1370:                                             ; preds = %1366
  %1371 = load i32, ptr %1367, align 1, !tbaa !22
  %1372 = load i32, ptr %1368, align 1, !tbaa !22
  %1373 = icmp eq i32 %1371, %1372
  br i1 %1373, label %1374, label %1377

1374:                                             ; preds = %1370
  %1375 = getelementptr inbounds i8, ptr %1368, i64 4
  %1376 = getelementptr inbounds i8, ptr %1367, i64 4
  br label %1377

1377:                                             ; preds = %1374, %1370, %1366
  %1378 = phi ptr [ %1376, %1374 ], [ %1367, %1370 ], [ %1367, %1366 ]
  %1379 = phi ptr [ %1375, %1374 ], [ %1368, %1370 ], [ %1368, %1366 ]
  %1380 = icmp ult ptr %1379, %1099
  br i1 %1380, label %1381, label %1388

1381:                                             ; preds = %1377
  %1382 = load i16, ptr %1378, align 1, !tbaa !33
  %1383 = load i16, ptr %1379, align 1, !tbaa !33
  %1384 = icmp eq i16 %1382, %1383
  br i1 %1384, label %1385, label %1388

1385:                                             ; preds = %1381
  %1386 = getelementptr inbounds i8, ptr %1379, i64 2
  %1387 = getelementptr inbounds i8, ptr %1378, i64 2
  br label %1388

1388:                                             ; preds = %1385, %1381, %1377
  %1389 = phi ptr [ %1387, %1385 ], [ %1378, %1381 ], [ %1378, %1377 ]
  %1390 = phi ptr [ %1386, %1385 ], [ %1379, %1381 ], [ %1379, %1377 ]
  %1391 = icmp ult ptr %1390, %38
  br i1 %1391, label %1392, label %1398

1392:                                             ; preds = %1388
  %1393 = load i8, ptr %1389, align 1, !tbaa !35
  %1394 = load i8, ptr %1390, align 1, !tbaa !35
  %1395 = icmp eq i8 %1393, %1394
  %1396 = zext i1 %1395 to i64
  %1397 = getelementptr inbounds i8, ptr %1390, i64 %1396
  br label %1398

1398:                                             ; preds = %1392, %1388
  %1399 = phi ptr [ %1390, %1388 ], [ %1397, %1392 ]
  %1400 = ptrtoint ptr %1399 to i64
  %1401 = ptrtoint ptr %1337 to i64
  %1402 = sub i64 %1400, %1401
  br label %1403

1403:                                             ; preds = %1398, %1359, %1345
  %1404 = phi i64 [ %1402, %1398 ], [ %1347, %1345 ], [ %1365, %1359 ]
  %1405 = add i64 %1404, 8
  %1406 = ptrtoint ptr %1137 to i64
  %1407 = sub i64 %1129, %1406
  %1408 = trunc i64 %1407 to i32
  %1409 = icmp ugt ptr %1104, %1105
  %1410 = icmp ugt i32 %1133, %35
  %1411 = and i1 %1409, %1410
  br i1 %1411, label %1412, label %1738

1412:                                             ; preds = %1403, %1421
  %1413 = phi ptr [ %1416, %1421 ], [ %1104, %1403 ]
  %1414 = phi i64 [ %1422, %1421 ], [ %1405, %1403 ]
  %1415 = phi ptr [ %1418, %1421 ], [ %1137, %1403 ]
  %1416 = getelementptr inbounds i8, ptr %1413, i64 -1
  %1417 = load i8, ptr %1416, align 1, !tbaa !35
  %1418 = getelementptr inbounds i8, ptr %1415, i64 -1
  %1419 = load i8, ptr %1418, align 1, !tbaa !35
  %1420 = icmp eq i8 %1417, %1419
  br i1 %1420, label %1421, label %1738

1421:                                             ; preds = %1412
  %1422 = add i64 %1414, 1
  %1423 = icmp ugt ptr %1416, %1105
  %1424 = icmp ugt ptr %1418, %37
  %1425 = and i1 %1423, %1424
  br i1 %1425, label %1412, label %1738, !llvm.loop !96

1426:                                             ; preds = %1333, %1331
  br i1 %1124, label %1427, label %1457

1427:                                             ; preds = %1426
  %1428 = lshr i32 %1117, 8
  %1429 = zext nneg i32 %1428 to i64
  %1430 = getelementptr inbounds i8, ptr %52, i64 %1429
  %1431 = icmp ugt i32 %1428, %50
  br i1 %1431, label %1432, label %1457

1432:                                             ; preds = %1427
  %1433 = load i64, ptr %1430, align 1, !tbaa !21
  %1434 = icmp eq i64 %1433, %1108
  br i1 %1434, label %1435, label %1457

1435:                                             ; preds = %1432
  %1436 = getelementptr inbounds i8, ptr %1104, i64 8
  %1437 = getelementptr inbounds i8, ptr %1430, i64 8
  %1438 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1436, ptr noundef nonnull %1437, ptr noundef %38, ptr noundef %55, ptr noundef %37)
  %1439 = add i64 %1438, 8
  %1440 = add i32 %60, %1428
  %1441 = sub i32 %1131, %1440
  %1442 = icmp ugt ptr %1104, %1105
  br i1 %1442, label %1443, label %1738

1443:                                             ; preds = %1435, %1452
  %1444 = phi ptr [ %1447, %1452 ], [ %1104, %1435 ]
  %1445 = phi i64 [ %1453, %1452 ], [ %1439, %1435 ]
  %1446 = phi ptr [ %1449, %1452 ], [ %1430, %1435 ]
  %1447 = getelementptr inbounds i8, ptr %1444, i64 -1
  %1448 = load i8, ptr %1447, align 1, !tbaa !35
  %1449 = getelementptr inbounds i8, ptr %1446, i64 -1
  %1450 = load i8, ptr %1449, align 1, !tbaa !35
  %1451 = icmp eq i8 %1448, %1450
  br i1 %1451, label %1452, label %1738

1452:                                             ; preds = %1443
  %1453 = add i64 %1445, 1
  %1454 = icmp ugt ptr %1447, %1105
  %1455 = icmp ugt ptr %1449, %54
  %1456 = and i1 %1454, %1455
  br i1 %1456, label %1443, label %1738, !llvm.loop !97

1457:                                             ; preds = %1432, %1427, %1426
  %1458 = icmp ugt i32 %1135, %35
  br i1 %1458, label %1459, label %1463

1459:                                             ; preds = %1457
  %1460 = load i32, ptr %1139, align 1, !tbaa !22
  %1461 = load i32, ptr %1104, align 1, !tbaa !22
  %1462 = icmp eq i32 %1460, %1461
  br i1 %1462, label %1480, label %1474

1463:                                             ; preds = %1457
  br i1 %1128, label %1464, label %1474

1464:                                             ; preds = %1463
  %1465 = lshr i32 %1120, 8
  %1466 = icmp ugt i32 %1465, %50
  br i1 %1466, label %1467, label %1474

1467:                                             ; preds = %1464
  %1468 = add i32 %1465, %60
  %1469 = zext nneg i32 %1465 to i64
  %1470 = getelementptr inbounds i8, ptr %52, i64 %1469
  %1471 = load i32, ptr %1470, align 1, !tbaa !22
  %1472 = load i32, ptr %1104, align 1, !tbaa !22
  %1473 = icmp eq i32 %1471, %1472
  br i1 %1473, label %1480, label %1474

1474:                                             ; preds = %1467, %1464, %1463, %1459
  %1475 = ptrtoint ptr %1105 to i64
  %1476 = sub i64 %1129, %1475
  %1477 = ashr i64 %1476, 8
  %1478 = add nsw i64 %1477, 1
  %1479 = getelementptr inbounds i8, ptr %1104, i64 %1478
  br label %2018, !llvm.loop !98

1480:                                             ; preds = %1467, %1459
  %1481 = phi ptr [ %1139, %1459 ], [ %1470, %1467 ]
  %1482 = phi i32 [ %1135, %1459 ], [ %1468, %1467 ]
  %1483 = getelementptr inbounds i8, ptr %1104, i64 1
  %1484 = load i64, ptr %1483, align 1, !tbaa !21
  %1485 = mul i64 %1484, -3523014627327384477
  %1486 = lshr i64 %1485, %1084
  %1487 = lshr i64 %1485, %1088
  %1488 = getelementptr inbounds i32, ptr %10, i64 %1486
  %1489 = load i32, ptr %1488, align 4, !tbaa !22
  %1490 = lshr i64 %1487, 8
  %1491 = getelementptr inbounds i32, ptr %46, i64 %1490
  %1492 = load i32, ptr %1491, align 4, !tbaa !22
  %1493 = zext i32 %1492 to i64
  %1494 = xor i64 %1487, %1493
  %1495 = and i64 %1494, 255
  %1496 = icmp eq i64 %1495, 0
  %1497 = zext i32 %1489 to i64
  %1498 = getelementptr inbounds i8, ptr %18, i64 %1497
  store i32 %1140, ptr %1488, align 4, !tbaa !22
  %1499 = icmp ult i32 %1489, %35
  br i1 %1499, label %1594, label %1500

1500:                                             ; preds = %1480
  %1501 = load i64, ptr %1498, align 1, !tbaa !21
  %1502 = icmp eq i64 %1501, %1484
  br i1 %1502, label %1503, label %1594

1503:                                             ; preds = %1500
  %1504 = getelementptr inbounds i8, ptr %1104, i64 9
  %1505 = getelementptr inbounds i8, ptr %1498, i64 8
  %1506 = icmp ugt ptr %1097, %1504
  br i1 %1506, label %1507, label %1533

1507:                                             ; preds = %1503
  %1508 = load i64, ptr %1505, align 1, !tbaa !21
  %1509 = load i64, ptr %1504, align 1, !tbaa !21
  %1510 = xor i64 %1509, %1508
  %1511 = icmp eq i64 %1510, 0
  br i1 %1511, label %1515, label %1512

1512:                                             ; preds = %1507
  %1513 = tail call i64 @llvm.cttz.i64(i64 %1510, i1 true), !range !32
  %1514 = lshr i64 %1513, 3
  br label %1570

1515:                                             ; preds = %1507, %1521
  %1516 = phi ptr [ %1519, %1521 ], [ %1505, %1507 ]
  %1517 = phi ptr [ %1518, %1521 ], [ %1504, %1507 ]
  %1518 = getelementptr inbounds i8, ptr %1517, i64 8
  %1519 = getelementptr inbounds i8, ptr %1516, i64 8
  %1520 = icmp ult ptr %1518, %1097
  br i1 %1520, label %1521, label %1533

1521:                                             ; preds = %1515
  %1522 = load i64, ptr %1519, align 1, !tbaa !21
  %1523 = load i64, ptr %1518, align 1, !tbaa !21
  %1524 = xor i64 %1523, %1522
  %1525 = icmp eq i64 %1524, 0
  br i1 %1525, label %1515, label %1526

1526:                                             ; preds = %1521
  %1527 = tail call i64 @llvm.cttz.i64(i64 %1524, i1 true), !range !32
  %1528 = lshr i64 %1527, 3
  %1529 = getelementptr inbounds i8, ptr %1518, i64 %1528
  %1530 = ptrtoint ptr %1529 to i64
  %1531 = ptrtoint ptr %1504 to i64
  %1532 = sub i64 %1530, %1531
  br label %1570

1533:                                             ; preds = %1515, %1503
  %1534 = phi ptr [ %1505, %1503 ], [ %1519, %1515 ]
  %1535 = phi ptr [ %1504, %1503 ], [ %1518, %1515 ]
  %1536 = icmp ult ptr %1535, %1098
  br i1 %1536, label %1537, label %1544

1537:                                             ; preds = %1533
  %1538 = load i32, ptr %1534, align 1, !tbaa !22
  %1539 = load i32, ptr %1535, align 1, !tbaa !22
  %1540 = icmp eq i32 %1538, %1539
  br i1 %1540, label %1541, label %1544

1541:                                             ; preds = %1537
  %1542 = getelementptr inbounds i8, ptr %1535, i64 4
  %1543 = getelementptr inbounds i8, ptr %1534, i64 4
  br label %1544

1544:                                             ; preds = %1541, %1537, %1533
  %1545 = phi ptr [ %1543, %1541 ], [ %1534, %1537 ], [ %1534, %1533 ]
  %1546 = phi ptr [ %1542, %1541 ], [ %1535, %1537 ], [ %1535, %1533 ]
  %1547 = icmp ult ptr %1546, %1099
  br i1 %1547, label %1548, label %1555

1548:                                             ; preds = %1544
  %1549 = load i16, ptr %1545, align 1, !tbaa !33
  %1550 = load i16, ptr %1546, align 1, !tbaa !33
  %1551 = icmp eq i16 %1549, %1550
  br i1 %1551, label %1552, label %1555

1552:                                             ; preds = %1548
  %1553 = getelementptr inbounds i8, ptr %1546, i64 2
  %1554 = getelementptr inbounds i8, ptr %1545, i64 2
  br label %1555

1555:                                             ; preds = %1552, %1548, %1544
  %1556 = phi ptr [ %1554, %1552 ], [ %1545, %1548 ], [ %1545, %1544 ]
  %1557 = phi ptr [ %1553, %1552 ], [ %1546, %1548 ], [ %1546, %1544 ]
  %1558 = icmp ult ptr %1557, %38
  br i1 %1558, label %1559, label %1565

1559:                                             ; preds = %1555
  %1560 = load i8, ptr %1556, align 1, !tbaa !35
  %1561 = load i8, ptr %1557, align 1, !tbaa !35
  %1562 = icmp eq i8 %1560, %1561
  %1563 = zext i1 %1562 to i64
  %1564 = getelementptr inbounds i8, ptr %1557, i64 %1563
  br label %1565

1565:                                             ; preds = %1559, %1555
  %1566 = phi ptr [ %1557, %1555 ], [ %1564, %1559 ]
  %1567 = ptrtoint ptr %1566 to i64
  %1568 = ptrtoint ptr %1504 to i64
  %1569 = sub i64 %1567, %1568
  br label %1570

1570:                                             ; preds = %1565, %1526, %1512
  %1571 = phi i64 [ %1569, %1565 ], [ %1514, %1512 ], [ %1532, %1526 ]
  %1572 = add i64 %1571, 8
  %1573 = ptrtoint ptr %1483 to i64
  %1574 = ptrtoint ptr %1498 to i64
  %1575 = sub i64 %1573, %1574
  %1576 = trunc i64 %1575 to i32
  %1577 = icmp ugt ptr %1483, %1105
  %1578 = icmp ugt i32 %1489, %35
  %1579 = and i1 %1577, %1578
  br i1 %1579, label %1580, label %1738

1580:                                             ; preds = %1570, %1589
  %1581 = phi ptr [ %1584, %1589 ], [ %1483, %1570 ]
  %1582 = phi i64 [ %1590, %1589 ], [ %1572, %1570 ]
  %1583 = phi ptr [ %1586, %1589 ], [ %1498, %1570 ]
  %1584 = getelementptr inbounds i8, ptr %1581, i64 -1
  %1585 = load i8, ptr %1584, align 1, !tbaa !35
  %1586 = getelementptr inbounds i8, ptr %1583, i64 -1
  %1587 = load i8, ptr %1586, align 1, !tbaa !35
  %1588 = icmp eq i8 %1585, %1587
  br i1 %1588, label %1589, label %1738

1589:                                             ; preds = %1580
  %1590 = add i64 %1582, 1
  %1591 = icmp ugt ptr %1584, %1105
  %1592 = icmp ugt ptr %1586, %37
  %1593 = and i1 %1591, %1592
  br i1 %1593, label %1580, label %1738, !llvm.loop !99

1594:                                             ; preds = %1500, %1480
  br i1 %1496, label %1595, label %1625

1595:                                             ; preds = %1594
  %1596 = lshr i32 %1492, 8
  %1597 = zext nneg i32 %1596 to i64
  %1598 = getelementptr inbounds i8, ptr %52, i64 %1597
  %1599 = icmp ugt i32 %1596, %50
  br i1 %1599, label %1600, label %1625

1600:                                             ; preds = %1595
  %1601 = load i64, ptr %1598, align 1, !tbaa !21
  %1602 = icmp eq i64 %1601, %1484
  br i1 %1602, label %1603, label %1625

1603:                                             ; preds = %1600
  %1604 = getelementptr inbounds i8, ptr %1104, i64 9
  %1605 = getelementptr inbounds i8, ptr %1598, i64 8
  %1606 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1604, ptr noundef nonnull %1605, ptr noundef %38, ptr noundef %55, ptr noundef %37)
  %1607 = add i64 %1606, 8
  %1608 = add i32 %60, %1596
  %1609 = sub i32 %1140, %1608
  %1610 = icmp ugt ptr %1483, %1105
  br i1 %1610, label %1611, label %1738

1611:                                             ; preds = %1603, %1620
  %1612 = phi ptr [ %1615, %1620 ], [ %1483, %1603 ]
  %1613 = phi i64 [ %1621, %1620 ], [ %1607, %1603 ]
  %1614 = phi ptr [ %1617, %1620 ], [ %1598, %1603 ]
  %1615 = getelementptr inbounds i8, ptr %1612, i64 -1
  %1616 = load i8, ptr %1615, align 1, !tbaa !35
  %1617 = getelementptr inbounds i8, ptr %1614, i64 -1
  %1618 = load i8, ptr %1617, align 1, !tbaa !35
  %1619 = icmp eq i8 %1616, %1618
  br i1 %1619, label %1620, label %1738

1620:                                             ; preds = %1611
  %1621 = add i64 %1613, 1
  %1622 = icmp ugt ptr %1615, %1105
  %1623 = icmp ugt ptr %1617, %54
  %1624 = and i1 %1622, %1623
  br i1 %1624, label %1611, label %1738, !llvm.loop !100

1625:                                             ; preds = %1600, %1595, %1594
  %1626 = icmp ult i32 %1482, %35
  %1627 = getelementptr inbounds i8, ptr %1104, i64 4
  %1628 = getelementptr inbounds i8, ptr %1481, i64 4
  br i1 %1626, label %1629, label %1650

1629:                                             ; preds = %1625
  %1630 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1627, ptr noundef nonnull %1628, ptr noundef %38, ptr noundef %55, ptr noundef nonnull %37)
  %1631 = add i64 %1630, 4
  %1632 = sub i32 %1131, %1482
  %1633 = icmp ugt ptr %1104, %1105
  %1634 = icmp ugt ptr %1481, %54
  %1635 = and i1 %1633, %1634
  br i1 %1635, label %1636, label %1738

1636:                                             ; preds = %1629, %1645
  %1637 = phi ptr [ %1640, %1645 ], [ %1104, %1629 ]
  %1638 = phi i64 [ %1646, %1645 ], [ %1631, %1629 ]
  %1639 = phi ptr [ %1642, %1645 ], [ %1481, %1629 ]
  %1640 = getelementptr inbounds i8, ptr %1637, i64 -1
  %1641 = load i8, ptr %1640, align 1, !tbaa !35
  %1642 = getelementptr inbounds i8, ptr %1639, i64 -1
  %1643 = load i8, ptr %1642, align 1, !tbaa !35
  %1644 = icmp eq i8 %1641, %1643
  br i1 %1644, label %1645, label %1738

1645:                                             ; preds = %1636
  %1646 = add i64 %1638, 1
  %1647 = icmp ugt ptr %1640, %1105
  %1648 = icmp ugt ptr %1642, %54
  %1649 = and i1 %1647, %1648
  br i1 %1649, label %1636, label %1738, !llvm.loop !101

1650:                                             ; preds = %1625
  %1651 = icmp ugt ptr %1097, %1627
  br i1 %1651, label %1652, label %1678

1652:                                             ; preds = %1650
  %1653 = load i64, ptr %1628, align 1, !tbaa !21
  %1654 = load i64, ptr %1627, align 1, !tbaa !21
  %1655 = xor i64 %1654, %1653
  %1656 = icmp eq i64 %1655, 0
  br i1 %1656, label %1660, label %1657

1657:                                             ; preds = %1652
  %1658 = tail call i64 @llvm.cttz.i64(i64 %1655, i1 true), !range !32
  %1659 = lshr i64 %1658, 3
  br label %1715

1660:                                             ; preds = %1652, %1666
  %1661 = phi ptr [ %1664, %1666 ], [ %1628, %1652 ]
  %1662 = phi ptr [ %1663, %1666 ], [ %1627, %1652 ]
  %1663 = getelementptr inbounds i8, ptr %1662, i64 8
  %1664 = getelementptr inbounds i8, ptr %1661, i64 8
  %1665 = icmp ult ptr %1663, %1097
  br i1 %1665, label %1666, label %1678

1666:                                             ; preds = %1660
  %1667 = load i64, ptr %1664, align 1, !tbaa !21
  %1668 = load i64, ptr %1663, align 1, !tbaa !21
  %1669 = xor i64 %1668, %1667
  %1670 = icmp eq i64 %1669, 0
  br i1 %1670, label %1660, label %1671

1671:                                             ; preds = %1666
  %1672 = tail call i64 @llvm.cttz.i64(i64 %1669, i1 true), !range !32
  %1673 = lshr i64 %1672, 3
  %1674 = getelementptr inbounds i8, ptr %1663, i64 %1673
  %1675 = ptrtoint ptr %1674 to i64
  %1676 = ptrtoint ptr %1627 to i64
  %1677 = sub i64 %1675, %1676
  br label %1715

1678:                                             ; preds = %1660, %1650
  %1679 = phi ptr [ %1628, %1650 ], [ %1664, %1660 ]
  %1680 = phi ptr [ %1627, %1650 ], [ %1663, %1660 ]
  %1681 = icmp ult ptr %1680, %1098
  br i1 %1681, label %1682, label %1689

1682:                                             ; preds = %1678
  %1683 = load i32, ptr %1679, align 1, !tbaa !22
  %1684 = load i32, ptr %1680, align 1, !tbaa !22
  %1685 = icmp eq i32 %1683, %1684
  br i1 %1685, label %1686, label %1689

1686:                                             ; preds = %1682
  %1687 = getelementptr inbounds i8, ptr %1680, i64 4
  %1688 = getelementptr inbounds i8, ptr %1679, i64 4
  br label %1689

1689:                                             ; preds = %1686, %1682, %1678
  %1690 = phi ptr [ %1688, %1686 ], [ %1679, %1682 ], [ %1679, %1678 ]
  %1691 = phi ptr [ %1687, %1686 ], [ %1680, %1682 ], [ %1680, %1678 ]
  %1692 = icmp ult ptr %1691, %1099
  br i1 %1692, label %1693, label %1700

1693:                                             ; preds = %1689
  %1694 = load i16, ptr %1690, align 1, !tbaa !33
  %1695 = load i16, ptr %1691, align 1, !tbaa !33
  %1696 = icmp eq i16 %1694, %1695
  br i1 %1696, label %1697, label %1700

1697:                                             ; preds = %1693
  %1698 = getelementptr inbounds i8, ptr %1691, i64 2
  %1699 = getelementptr inbounds i8, ptr %1690, i64 2
  br label %1700

1700:                                             ; preds = %1697, %1693, %1689
  %1701 = phi ptr [ %1699, %1697 ], [ %1690, %1693 ], [ %1690, %1689 ]
  %1702 = phi ptr [ %1698, %1697 ], [ %1691, %1693 ], [ %1691, %1689 ]
  %1703 = icmp ult ptr %1702, %38
  br i1 %1703, label %1704, label %1710

1704:                                             ; preds = %1700
  %1705 = load i8, ptr %1701, align 1, !tbaa !35
  %1706 = load i8, ptr %1702, align 1, !tbaa !35
  %1707 = icmp eq i8 %1705, %1706
  %1708 = zext i1 %1707 to i64
  %1709 = getelementptr inbounds i8, ptr %1702, i64 %1708
  br label %1710

1710:                                             ; preds = %1704, %1700
  %1711 = phi ptr [ %1702, %1700 ], [ %1709, %1704 ]
  %1712 = ptrtoint ptr %1711 to i64
  %1713 = ptrtoint ptr %1627 to i64
  %1714 = sub i64 %1712, %1713
  br label %1715

1715:                                             ; preds = %1710, %1671, %1657
  %1716 = phi i64 [ %1714, %1710 ], [ %1659, %1657 ], [ %1677, %1671 ]
  %1717 = add i64 %1716, 4
  %1718 = ptrtoint ptr %1481 to i64
  %1719 = sub i64 %1129, %1718
  %1720 = trunc i64 %1719 to i32
  %1721 = icmp ugt ptr %1104, %1105
  %1722 = icmp ugt ptr %1481, %37
  %1723 = and i1 %1721, %1722
  br i1 %1723, label %1724, label %1738

1724:                                             ; preds = %1715, %1733
  %1725 = phi ptr [ %1728, %1733 ], [ %1104, %1715 ]
  %1726 = phi i64 [ %1734, %1733 ], [ %1717, %1715 ]
  %1727 = phi ptr [ %1730, %1733 ], [ %1481, %1715 ]
  %1728 = getelementptr inbounds i8, ptr %1725, i64 -1
  %1729 = load i8, ptr %1728, align 1, !tbaa !35
  %1730 = getelementptr inbounds i8, ptr %1727, i64 -1
  %1731 = load i8, ptr %1730, align 1, !tbaa !35
  %1732 = icmp eq i8 %1729, %1731
  br i1 %1732, label %1733, label %1738

1733:                                             ; preds = %1724
  %1734 = add i64 %1726, 1
  %1735 = icmp ugt ptr %1728, %1105
  %1736 = icmp ugt ptr %1730, %37
  %1737 = and i1 %1735, %1736
  br i1 %1737, label %1724, label %1738, !llvm.loop !102

1738:                                             ; preds = %1421, %1412, %1589, %1580, %1733, %1724, %1645, %1636, %1620, %1611, %1452, %1443, %1715, %1629, %1603, %1570, %1435, %1403
  %1739 = phi i32 [ %1441, %1435 ], [ %1609, %1603 ], [ %1632, %1629 ], [ %1720, %1715 ], [ %1576, %1570 ], [ %1408, %1403 ], [ %1441, %1443 ], [ %1441, %1452 ], [ %1609, %1611 ], [ %1609, %1620 ], [ %1632, %1636 ], [ %1632, %1645 ], [ %1720, %1724 ], [ %1720, %1733 ], [ %1576, %1580 ], [ %1576, %1589 ], [ %1408, %1412 ], [ %1408, %1421 ]
  %1740 = phi i64 [ %1439, %1435 ], [ %1607, %1603 ], [ %1631, %1629 ], [ %1717, %1715 ], [ %1572, %1570 ], [ %1405, %1403 ], [ %1453, %1452 ], [ %1445, %1443 ], [ %1621, %1620 ], [ %1613, %1611 ], [ %1646, %1645 ], [ %1638, %1636 ], [ %1734, %1733 ], [ %1726, %1724 ], [ %1590, %1589 ], [ %1582, %1580 ], [ %1422, %1421 ], [ %1414, %1412 ]
  %1741 = phi ptr [ %1104, %1435 ], [ %1483, %1603 ], [ %1104, %1629 ], [ %1104, %1715 ], [ %1483, %1570 ], [ %1104, %1403 ], [ %1447, %1452 ], [ %1444, %1443 ], [ %1615, %1620 ], [ %1612, %1611 ], [ %1640, %1645 ], [ %1637, %1636 ], [ %1728, %1733 ], [ %1725, %1724 ], [ %1584, %1589 ], [ %1581, %1580 ], [ %1416, %1421 ], [ %1413, %1412 ]
  %1742 = ptrtoint ptr %1741 to i64
  %1743 = ptrtoint ptr %1105 to i64
  %1744 = sub i64 %1742, %1743
  %1745 = add i32 %1739, 3
  %1746 = getelementptr inbounds i8, ptr %1105, i64 %1744
  %1747 = icmp ugt ptr %1746, %1091
  %1748 = load ptr, ptr %1092, align 8, !tbaa !36
  br i1 %1747, label %1772, label %1749

1749:                                             ; preds = %1738
  %1750 = load <2 x i64>, ptr %1105, align 1, !tbaa !35
  store <2 x i64> %1750, ptr %1748, align 1, !tbaa !35
  %1751 = icmp ugt i64 %1744, 16
  br i1 %1751, label %1752, label %1889

1752:                                             ; preds = %1749
  %1753 = load ptr, ptr %1092, align 8, !tbaa !36
  %1754 = getelementptr inbounds i8, ptr %1753, i64 16
  %1755 = getelementptr inbounds i8, ptr %1105, i64 16
  %1756 = add i64 %1744, -16
  %1757 = getelementptr inbounds i8, ptr %1753, i64 %1744
  %1758 = load <2 x i64>, ptr %1755, align 1, !tbaa !35
  store <2 x i64> %1758, ptr %1754, align 1, !tbaa !35
  %1759 = icmp ult i64 %1756, 17
  br i1 %1759, label %1889, label %1760

1760:                                             ; preds = %1752
  %1761 = getelementptr inbounds i8, ptr %1753, i64 32
  br label %1762

1762:                                             ; preds = %1762, %1760
  %1763 = phi ptr [ %1761, %1760 ], [ %1770, %1762 ]
  %1764 = phi ptr [ %1755, %1760 ], [ %1768, %1762 ]
  %1765 = getelementptr inbounds i8, ptr %1764, i64 16
  %1766 = load <2 x i64>, ptr %1765, align 1, !tbaa !35
  store <2 x i64> %1766, ptr %1763, align 1, !tbaa !35
  %1767 = getelementptr inbounds i8, ptr %1763, i64 16
  %1768 = getelementptr inbounds i8, ptr %1764, i64 32
  %1769 = load <2 x i64>, ptr %1768, align 1, !tbaa !35
  store <2 x i64> %1769, ptr %1767, align 1, !tbaa !35
  %1770 = getelementptr inbounds i8, ptr %1763, i64 32
  %1771 = icmp ult ptr %1770, %1757
  br i1 %1771, label %1762, label %1893, !llvm.loop !38

1772:                                             ; preds = %1738
  %1773 = ptrtoint ptr %1746 to i64
  %1774 = icmp ugt ptr %1105, %1091
  br i1 %1774, label %1792, label %1775

1775:                                             ; preds = %1772
  %1776 = sub i64 %1093, %1743
  %1777 = getelementptr inbounds i8, ptr %1748, i64 %1776
  %1778 = load <2 x i64>, ptr %1105, align 1, !tbaa !35
  store <2 x i64> %1778, ptr %1748, align 1, !tbaa !35
  %1779 = icmp ult i64 %1776, 17
  br i1 %1779, label %1792, label %1780

1780:                                             ; preds = %1775
  %1781 = getelementptr inbounds i8, ptr %1748, i64 16
  br label %1782

1782:                                             ; preds = %1782, %1780
  %1783 = phi ptr [ %1781, %1780 ], [ %1790, %1782 ]
  %1784 = phi ptr [ %1105, %1780 ], [ %1788, %1782 ]
  %1785 = getelementptr inbounds i8, ptr %1784, i64 16
  %1786 = load <2 x i64>, ptr %1785, align 1, !tbaa !35
  store <2 x i64> %1786, ptr %1783, align 1, !tbaa !35
  %1787 = getelementptr inbounds i8, ptr %1783, i64 16
  %1788 = getelementptr inbounds i8, ptr %1784, i64 32
  %1789 = load <2 x i64>, ptr %1788, align 1, !tbaa !35
  store <2 x i64> %1789, ptr %1787, align 1, !tbaa !35
  %1790 = getelementptr inbounds i8, ptr %1783, i64 32
  %1791 = icmp ult ptr %1790, %1777
  br i1 %1791, label %1782, label %1792, !llvm.loop !38

1792:                                             ; preds = %1782, %1775, %1772
  %1793 = phi ptr [ %1091, %1775 ], [ %1105, %1772 ], [ %1091, %1782 ]
  %1794 = phi ptr [ %1777, %1775 ], [ %1748, %1772 ], [ %1777, %1782 ]
  %1795 = icmp ult ptr %1793, %1746
  br i1 %1795, label %1796, label %1893

1796:                                             ; preds = %1792
  %1797 = ptrtoint ptr %1794 to i64
  %1798 = ptrtoint ptr %1793 to i64
  %1799 = sub i64 %1773, %1798
  %1800 = getelementptr i8, ptr %1793, i64 %1799
  %1801 = icmp ult i64 %1799, 8
  %1802 = sub i64 %1797, %1798
  %1803 = icmp ult i64 %1802, 32
  %1804 = select i1 %1801, i1 true, i1 %1803
  br i1 %1804, label %1840, label %1805

1805:                                             ; preds = %1796
  %1806 = icmp ult i64 %1799, 32
  br i1 %1806, label %1826, label %1807

1807:                                             ; preds = %1805
  %1808 = and i64 %1799, -32
  br label %1809

1809:                                             ; preds = %1809, %1807
  %1810 = phi i64 [ 0, %1807 ], [ %1817, %1809 ]
  %1811 = getelementptr i8, ptr %1794, i64 %1810
  %1812 = getelementptr i8, ptr %1793, i64 %1810
  %1813 = getelementptr i8, ptr %1812, i64 16
  %1814 = load <16 x i8>, ptr %1812, align 1, !tbaa !35
  %1815 = load <16 x i8>, ptr %1813, align 1, !tbaa !35
  %1816 = getelementptr i8, ptr %1811, i64 16
  store <16 x i8> %1814, ptr %1811, align 1, !tbaa !35
  store <16 x i8> %1815, ptr %1816, align 1, !tbaa !35
  %1817 = add nuw i64 %1810, 32
  %1818 = icmp eq i64 %1817, %1808
  br i1 %1818, label %1819, label %1809, !llvm.loop !112

1819:                                             ; preds = %1809
  %1820 = icmp eq i64 %1799, %1808
  br i1 %1820, label %1893, label %1821

1821:                                             ; preds = %1819
  %1822 = getelementptr i8, ptr %1793, i64 %1808
  %1823 = getelementptr i8, ptr %1794, i64 %1808
  %1824 = and i64 %1799, 24
  %1825 = icmp eq i64 %1824, 0
  br i1 %1825, label %1840, label %1826

1826:                                             ; preds = %1805, %1821
  %1827 = phi i64 [ %1808, %1821 ], [ 0, %1805 ]
  %1828 = and i64 %1799, -8
  %1829 = getelementptr i8, ptr %1794, i64 %1828
  %1830 = getelementptr i8, ptr %1793, i64 %1828
  br label %1831

1831:                                             ; preds = %1831, %1826
  %1832 = phi i64 [ %1827, %1826 ], [ %1836, %1831 ]
  %1833 = getelementptr i8, ptr %1794, i64 %1832
  %1834 = getelementptr i8, ptr %1793, i64 %1832
  %1835 = load <8 x i8>, ptr %1834, align 1, !tbaa !35
  store <8 x i8> %1835, ptr %1833, align 1, !tbaa !35
  %1836 = add nuw i64 %1832, 8
  %1837 = icmp eq i64 %1836, %1828
  br i1 %1837, label %1838, label %1831, !llvm.loop !113

1838:                                             ; preds = %1831
  %1839 = icmp eq i64 %1799, %1828
  br i1 %1839, label %1893, label %1840

1840:                                             ; preds = %1796, %1821, %1838
  %1841 = phi ptr [ %1794, %1796 ], [ %1823, %1821 ], [ %1829, %1838 ]
  %1842 = phi ptr [ %1793, %1796 ], [ %1822, %1821 ], [ %1830, %1838 ]
  %1843 = ptrtoint ptr %1842 to i64
  %1844 = sub i64 %1742, %1843
  %1845 = and i64 %1844, 7
  %1846 = icmp eq i64 %1845, 0
  br i1 %1846, label %1856, label %1847

1847:                                             ; preds = %1840, %1847
  %1848 = phi ptr [ %1853, %1847 ], [ %1841, %1840 ]
  %1849 = phi ptr [ %1851, %1847 ], [ %1842, %1840 ]
  %1850 = phi i64 [ %1854, %1847 ], [ 0, %1840 ]
  %1851 = getelementptr inbounds i8, ptr %1849, i64 1
  %1852 = load i8, ptr %1849, align 1, !tbaa !35
  %1853 = getelementptr inbounds i8, ptr %1848, i64 1
  store i8 %1852, ptr %1848, align 1, !tbaa !35
  %1854 = add i64 %1850, 1
  %1855 = icmp eq i64 %1854, %1845
  br i1 %1855, label %1856, label %1847, !llvm.loop !114

1856:                                             ; preds = %1847, %1840
  %1857 = phi ptr [ %1841, %1840 ], [ %1853, %1847 ]
  %1858 = phi ptr [ %1842, %1840 ], [ %1851, %1847 ]
  %1859 = sub i64 %1843, %1742
  %1860 = icmp ugt i64 %1859, -8
  br i1 %1860, label %1893, label %1861

1861:                                             ; preds = %1856, %1861
  %1862 = phi ptr [ %1887, %1861 ], [ %1857, %1856 ]
  %1863 = phi ptr [ %1885, %1861 ], [ %1858, %1856 ]
  %1864 = getelementptr inbounds i8, ptr %1863, i64 1
  %1865 = load i8, ptr %1863, align 1, !tbaa !35
  %1866 = getelementptr inbounds i8, ptr %1862, i64 1
  store i8 %1865, ptr %1862, align 1, !tbaa !35
  %1867 = getelementptr inbounds i8, ptr %1863, i64 2
  %1868 = load i8, ptr %1864, align 1, !tbaa !35
  %1869 = getelementptr inbounds i8, ptr %1862, i64 2
  store i8 %1868, ptr %1866, align 1, !tbaa !35
  %1870 = getelementptr inbounds i8, ptr %1863, i64 3
  %1871 = load i8, ptr %1867, align 1, !tbaa !35
  %1872 = getelementptr inbounds i8, ptr %1862, i64 3
  store i8 %1871, ptr %1869, align 1, !tbaa !35
  %1873 = getelementptr inbounds i8, ptr %1863, i64 4
  %1874 = load i8, ptr %1870, align 1, !tbaa !35
  %1875 = getelementptr inbounds i8, ptr %1862, i64 4
  store i8 %1874, ptr %1872, align 1, !tbaa !35
  %1876 = getelementptr inbounds i8, ptr %1863, i64 5
  %1877 = load i8, ptr %1873, align 1, !tbaa !35
  %1878 = getelementptr inbounds i8, ptr %1862, i64 5
  store i8 %1877, ptr %1875, align 1, !tbaa !35
  %1879 = getelementptr inbounds i8, ptr %1863, i64 6
  %1880 = load i8, ptr %1876, align 1, !tbaa !35
  %1881 = getelementptr inbounds i8, ptr %1862, i64 6
  store i8 %1880, ptr %1878, align 1, !tbaa !35
  %1882 = getelementptr inbounds i8, ptr %1863, i64 7
  %1883 = load i8, ptr %1879, align 1, !tbaa !35
  %1884 = getelementptr inbounds i8, ptr %1862, i64 7
  store i8 %1883, ptr %1881, align 1, !tbaa !35
  %1885 = getelementptr inbounds i8, ptr %1863, i64 8
  %1886 = load i8, ptr %1882, align 1, !tbaa !35
  %1887 = getelementptr inbounds i8, ptr %1862, i64 8
  store i8 %1886, ptr %1884, align 1, !tbaa !35
  %1888 = icmp eq ptr %1885, %1800
  br i1 %1888, label %1893, label %1861, !llvm.loop !115

1889:                                             ; preds = %1752, %1749
  %1890 = load ptr, ptr %1092, align 8, !tbaa !36
  %1891 = getelementptr inbounds i8, ptr %1890, i64 %1744
  store ptr %1891, ptr %1092, align 8, !tbaa !36
  %1892 = load ptr, ptr %1095, align 8, !tbaa !46
  br label %1905

1893:                                             ; preds = %1762, %1856, %1861, %1819, %1838, %1792
  %1894 = load ptr, ptr %1092, align 8, !tbaa !36
  %1895 = getelementptr inbounds i8, ptr %1894, i64 %1744
  store ptr %1895, ptr %1092, align 8, !tbaa !36
  %1896 = icmp ugt i64 %1744, 65535
  %1897 = load ptr, ptr %1095, align 8, !tbaa !46
  br i1 %1896, label %1898, label %1905, !prof !107

1898:                                             ; preds = %1893
  store i32 1, ptr %1094, align 8, !tbaa !48
  %1899 = load ptr, ptr %1, align 8, !tbaa !49
  %1900 = ptrtoint ptr %1897 to i64
  %1901 = ptrtoint ptr %1899 to i64
  %1902 = sub i64 %1900, %1901
  %1903 = lshr exact i64 %1902, 3
  %1904 = trunc i64 %1903 to i32
  store i32 %1904, ptr %1096, align 4, !tbaa !50
  br label %1905

1905:                                             ; preds = %1898, %1893, %1889
  %1906 = phi ptr [ %1892, %1889 ], [ %1897, %1898 ], [ %1897, %1893 ]
  %1907 = trunc i64 %1744 to i16
  %1908 = getelementptr inbounds %struct.SeqDef_s, ptr %1906, i64 0, i32 1
  store i16 %1907, ptr %1908, align 4, !tbaa !51
  store i32 %1745, ptr %1906, align 4, !tbaa !53
  %1909 = add i64 %1740, -3
  %1910 = icmp ugt i64 %1909, 65535
  br i1 %1910, label %1911, label %1924, !prof !54

1911:                                             ; preds = %1905, %1325
  %1912 = phi ptr [ %1326, %1325 ], [ %1906, %1905 ]
  %1913 = phi i64 [ %1329, %1325 ], [ %1909, %1905 ]
  %1914 = phi i64 [ %1161, %1325 ], [ %1740, %1905 ]
  %1915 = phi i32 [ %1107, %1325 ], [ %1106, %1905 ]
  %1916 = phi i32 [ %1106, %1325 ], [ %1739, %1905 ]
  %1917 = phi ptr [ %1153, %1325 ], [ %1741, %1905 ]
  store i32 2, ptr %1094, align 8, !tbaa !48
  %1918 = load ptr, ptr %1, align 8, !tbaa !49
  %1919 = ptrtoint ptr %1912 to i64
  %1920 = ptrtoint ptr %1918 to i64
  %1921 = sub i64 %1919, %1920
  %1922 = lshr exact i64 %1921, 3
  %1923 = trunc i64 %1922 to i32
  store i32 %1923, ptr %1096, align 4, !tbaa !50
  br label %1924

1924:                                             ; preds = %1911, %1905, %1325
  %1925 = phi i64 [ %1329, %1325 ], [ %1909, %1905 ], [ %1913, %1911 ]
  %1926 = phi ptr [ %1326, %1325 ], [ %1906, %1905 ], [ %1912, %1911 ]
  %1927 = phi i64 [ %1161, %1325 ], [ %1740, %1905 ], [ %1914, %1911 ]
  %1928 = phi i32 [ %1107, %1325 ], [ %1106, %1905 ], [ %1915, %1911 ]
  %1929 = phi i32 [ %1106, %1325 ], [ %1739, %1905 ], [ %1916, %1911 ]
  %1930 = phi ptr [ %1153, %1325 ], [ %1741, %1905 ], [ %1917, %1911 ]
  %1931 = trunc i64 %1925 to i16
  %1932 = getelementptr inbounds %struct.SeqDef_s, ptr %1926, i64 0, i32 2
  store i16 %1931, ptr %1932, align 2, !tbaa !61
  %1933 = getelementptr inbounds %struct.SeqDef_s, ptr %1926, i64 1
  store ptr %1933, ptr %1095, align 8, !tbaa !46
  %1934 = getelementptr inbounds i8, ptr %1930, i64 %1927
  %1935 = icmp ugt ptr %1934, %39
  br i1 %1935, label %2018, label %1936

1936:                                             ; preds = %1924
  %1937 = add i32 %1131, 2
  %1938 = zext i32 %1937 to i64
  %1939 = getelementptr inbounds i8, ptr %18, i64 %1938
  %1940 = load i64, ptr %1939, align 1, !tbaa !21
  %1941 = mul i64 %1940, -3523014627327384477
  %1942 = lshr i64 %1941, %1084
  %1943 = getelementptr inbounds i32, ptr %10, i64 %1942
  store i32 %1937, ptr %1943, align 4, !tbaa !22
  %1944 = getelementptr inbounds i8, ptr %1934, i64 -2
  %1945 = ptrtoint ptr %1944 to i64
  %1946 = sub i64 %1945, %20
  %1947 = trunc i64 %1946 to i32
  %1948 = load i64, ptr %1944, align 1, !tbaa !21
  %1949 = mul i64 %1948, -3523014627327384477
  %1950 = lshr i64 %1949, %1084
  %1951 = getelementptr inbounds i32, ptr %10, i64 %1950
  store i32 %1947, ptr %1951, align 4, !tbaa !22
  %1952 = mul i64 %1940, -3523014627271114752
  %1953 = lshr i64 %1952, %1086
  %1954 = getelementptr inbounds i32, ptr %14, i64 %1953
  store i32 %1937, ptr %1954, align 4, !tbaa !22
  %1955 = getelementptr inbounds i8, ptr %1934, i64 -1
  %1956 = ptrtoint ptr %1955 to i64
  %1957 = sub i64 %1956, %20
  %1958 = trunc i64 %1957 to i32
  %1959 = load i64, ptr %1955, align 1, !tbaa !21
  %1960 = mul i64 %1959, -3523014627271114752
  %1961 = lshr i64 %1960, %1086
  %1962 = getelementptr inbounds i32, ptr %14, i64 %1961
  store i32 %1958, ptr %1962, align 4, !tbaa !22
  br label %1963

1963:                                             ; preds = %2005, %1936
  %1964 = phi ptr [ %1933, %1936 ], [ %2008, %2005 ]
  %1965 = phi ptr [ %1934, %1936 ], [ %2016, %2005 ]
  %1966 = phi i32 [ %1929, %1936 ], [ %1967, %2005 ]
  %1967 = phi i32 [ %1928, %1936 ], [ %1966, %2005 ]
  %1968 = ptrtoint ptr %1965 to i64
  %1969 = sub i64 %1968, %20
  %1970 = trunc i64 %1969 to i32
  %1971 = sub i32 %1970, %1967
  %1972 = icmp ult i32 %1971, %35
  %1973 = zext i32 %1971 to i64
  %1974 = select i1 %1972, ptr %1102, ptr %18
  %1975 = getelementptr i8, ptr %1974, i64 %1973
  %1976 = sub i32 %1971, %35
  %1977 = icmp ugt i32 %1976, -4
  br i1 %1977, label %2018, label %1978

1978:                                             ; preds = %1963
  %1979 = load i32, ptr %1975, align 1, !tbaa !22
  %1980 = load i32, ptr %1965, align 1, !tbaa !22
  %1981 = icmp eq i32 %1979, %1980
  br i1 %1981, label %1982, label %2018

1982:                                             ; preds = %1978
  %1983 = select i1 %1972, ptr %55, ptr %38
  %1984 = getelementptr inbounds i8, ptr %1965, i64 4
  %1985 = getelementptr inbounds i8, ptr %1975, i64 4
  %1986 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1984, ptr noundef nonnull %1985, ptr noundef %38, ptr noundef %1983, ptr noundef %37)
  %1987 = add i64 %1986, 4
  %1988 = icmp ugt ptr %1965, %1091
  br i1 %1988, label %1993, label %1989

1989:                                             ; preds = %1982
  %1990 = load ptr, ptr %1092, align 8, !tbaa !36
  %1991 = load <2 x i64>, ptr %1965, align 1, !tbaa !35
  store <2 x i64> %1991, ptr %1990, align 1, !tbaa !35
  %1992 = load ptr, ptr %1095, align 8, !tbaa !46
  br label %1993

1993:                                             ; preds = %1989, %1982
  %1994 = phi ptr [ %1964, %1982 ], [ %1992, %1989 ]
  %1995 = getelementptr inbounds %struct.SeqDef_s, ptr %1994, i64 0, i32 1
  store i16 0, ptr %1995, align 4, !tbaa !51
  store i32 1, ptr %1994, align 4, !tbaa !53
  %1996 = add i64 %1986, 1
  %1997 = icmp ugt i64 %1996, 65535
  br i1 %1997, label %1998, label %2005, !prof !54

1998:                                             ; preds = %1993
  store i32 2, ptr %1094, align 8, !tbaa !48
  %1999 = load ptr, ptr %1, align 8, !tbaa !49
  %2000 = ptrtoint ptr %1994 to i64
  %2001 = ptrtoint ptr %1999 to i64
  %2002 = sub i64 %2000, %2001
  %2003 = lshr exact i64 %2002, 3
  %2004 = trunc i64 %2003 to i32
  store i32 %2004, ptr %1096, align 4, !tbaa !50
  br label %2005

2005:                                             ; preds = %1998, %1993
  %2006 = trunc i64 %1996 to i16
  %2007 = getelementptr inbounds %struct.SeqDef_s, ptr %1994, i64 0, i32 2
  store i16 %2006, ptr %2007, align 2, !tbaa !61
  %2008 = getelementptr inbounds %struct.SeqDef_s, ptr %1994, i64 1
  store ptr %2008, ptr %1095, align 8, !tbaa !46
  %2009 = load i64, ptr %1965, align 1, !tbaa !21
  %2010 = mul i64 %2009, -3523014627271114752
  %2011 = lshr i64 %2010, %1086
  %2012 = getelementptr inbounds i32, ptr %14, i64 %2011
  store i32 %1970, ptr %2012, align 4, !tbaa !22
  %2013 = mul i64 %2009, -3523014627327384477
  %2014 = lshr i64 %2013, %1084
  %2015 = getelementptr inbounds i32, ptr %10, i64 %2014
  store i32 %1970, ptr %2015, align 4, !tbaa !22
  %2016 = getelementptr inbounds i8, ptr %1965, i64 %1987
  %2017 = icmp ugt ptr %2016, %39
  br i1 %2017, label %2018, label %1963

2018:                                             ; preds = %2005, %1978, %1963, %1924, %1474
  %2019 = phi i32 [ %1107, %1474 ], [ %1928, %1924 ], [ %1967, %1963 ], [ %1967, %1978 ], [ %1966, %2005 ]
  %2020 = phi i32 [ %1106, %1474 ], [ %1929, %1924 ], [ %1966, %1963 ], [ %1966, %1978 ], [ %1967, %2005 ]
  %2021 = phi ptr [ %1105, %1474 ], [ %1934, %1924 ], [ %1965, %1963 ], [ %1965, %1978 ], [ %2016, %2005 ]
  %2022 = phi ptr [ %1479, %1474 ], [ %1934, %1924 ], [ %1965, %1963 ], [ %1965, %1978 ], [ %2016, %2005 ]
  %2023 = icmp ult ptr %2022, %39
  br i1 %2023, label %1103, label %2024

2024:                                             ; preds = %2018
  %2025 = ptrtoint ptr %2021 to i64
  br label %3976

2026:                                             ; preds = %5
  br i1 %70, label %2027, label %2028, !nosanitize !88

2027:                                             ; preds = %2026
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !88
  unreachable, !nosanitize !88

2028:                                             ; preds = %2026
  %2029 = extractvalue { i64, i1 } %69, 0, !nosanitize !88
  %2030 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 18
  %2031 = load i32, ptr %2030, align 8, !tbaa !89
  %2032 = icmp eq i32 %2031, 0
  br i1 %2032, label %2051, label %2033

2033:                                             ; preds = %2028
  %2034 = zext nneg i32 %62 to i64
  %2035 = shl i64 4, %2034
  %2036 = zext nneg i32 %64 to i64
  %2037 = shl i64 4, %2036
  %2038 = icmp ugt i32 %62, 61
  br i1 %2038, label %2039, label %2041

2039:                                             ; preds = %2041, %2033
  %2040 = icmp ugt i32 %64, 61
  br i1 %2040, label %2051, label %2046

2041:                                             ; preds = %2033, %2041
  %2042 = phi i64 [ %2044, %2041 ], [ 0, %2033 ]
  %2043 = getelementptr inbounds i8, ptr %46, i64 %2042
  tail call void @llvm.prefetch.p0(ptr %2043, i32 0, i32 2, i32 1)
  %2044 = add i64 %2042, 64
  %2045 = icmp ult i64 %2044, %2035
  br i1 %2045, label %2041, label %2039, !llvm.loop !90

2046:                                             ; preds = %2039, %2046
  %2047 = phi i64 [ %2049, %2046 ], [ 0, %2039 ]
  %2048 = getelementptr inbounds i8, ptr %48, i64 %2047
  tail call void @llvm.prefetch.p0(ptr %2048, i32 0, i32 2, i32 1)
  %2049 = add i64 %2047, 64
  %2050 = icmp ult i64 %2049, %2037
  br i1 %2050, label %2046, label %2051, !llvm.loop !91

2051:                                             ; preds = %2046, %2039, %2028
  %2052 = and i64 %2029, 4294967295
  %2053 = icmp eq i64 %2052, 0
  %2054 = zext i1 %2053 to i64
  %2055 = getelementptr inbounds i8, ptr %3, i64 %2054
  %2056 = icmp ult ptr %2055, %39
  br i1 %2056, label %2057, label %3976

2057:                                             ; preds = %2051
  %2058 = sub i32 64, %12
  %2059 = zext nneg i32 %2058 to i64
  %2060 = sub i32 64, %16
  %2061 = zext nneg i32 %2060 to i64
  %2062 = sub i32 56, %62
  %2063 = zext nneg i32 %2062 to i64
  %2064 = sub i32 56, %64
  %2065 = zext nneg i32 %2064 to i64
  %2066 = getelementptr inbounds i8, ptr %38, i64 -32
  %2067 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %2068 = ptrtoint ptr %2066 to i64
  %2069 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %2070 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %2071 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  %2072 = getelementptr inbounds i8, ptr %38, i64 -7
  %2073 = getelementptr inbounds i8, ptr %38, i64 -3
  %2074 = getelementptr inbounds i8, ptr %38, i64 -1
  %2075 = zext i32 %60 to i64
  %2076 = sub nsw i64 0, %2075
  %2077 = getelementptr i8, ptr %52, i64 %2076
  br label %2078

2078:                                             ; preds = %2993, %2057
  %2079 = phi ptr [ %2055, %2057 ], [ %2997, %2993 ]
  %2080 = phi ptr [ %3, %2057 ], [ %2996, %2993 ]
  %2081 = phi i32 [ %40, %2057 ], [ %2995, %2993 ]
  %2082 = phi i32 [ %42, %2057 ], [ %2994, %2993 ]
  %2083 = load i64, ptr %2079, align 1, !tbaa !21
  %2084 = mul i64 %2083, -3523014627327384477
  %2085 = lshr i64 %2084, %2059
  %2086 = mul i64 %2083, -3523014627193847808
  %2087 = lshr i64 %2086, %2061
  %2088 = lshr i64 %2084, %2063
  %2089 = lshr i64 %2086, %2065
  %2090 = lshr i64 %2088, 8
  %2091 = getelementptr inbounds i32, ptr %46, i64 %2090
  %2092 = load i32, ptr %2091, align 4, !tbaa !22
  %2093 = lshr i64 %2089, 8
  %2094 = getelementptr inbounds i32, ptr %48, i64 %2093
  %2095 = load i32, ptr %2094, align 4, !tbaa !22
  %2096 = zext i32 %2092 to i64
  %2097 = xor i64 %2088, %2096
  %2098 = and i64 %2097, 255
  %2099 = icmp eq i64 %2098, 0
  %2100 = zext i32 %2095 to i64
  %2101 = xor i64 %2089, %2100
  %2102 = and i64 %2101, 255
  %2103 = icmp eq i64 %2102, 0
  %2104 = ptrtoint ptr %2079 to i64
  %2105 = sub i64 %2104, %20
  %2106 = trunc i64 %2105 to i32
  %2107 = getelementptr inbounds i32, ptr %10, i64 %2085
  %2108 = load i32, ptr %2107, align 4, !tbaa !22
  %2109 = getelementptr inbounds i32, ptr %14, i64 %2087
  %2110 = load i32, ptr %2109, align 4, !tbaa !22
  %2111 = zext i32 %2108 to i64
  %2112 = getelementptr inbounds i8, ptr %18, i64 %2111
  %2113 = zext i32 %2110 to i64
  %2114 = getelementptr inbounds i8, ptr %18, i64 %2113
  %2115 = add i32 %2106, 1
  %2116 = sub i32 %2115, %2081
  %2117 = icmp ult i32 %2116, %35
  %2118 = sub i32 %2116, %60
  %2119 = zext i32 %2118 to i64
  %2120 = getelementptr inbounds i8, ptr %52, i64 %2119
  %2121 = zext i32 %2116 to i64
  %2122 = getelementptr inbounds i8, ptr %18, i64 %2121
  %2123 = select i1 %2117, ptr %2120, ptr %2122
  store i32 %2106, ptr %2109, align 4, !tbaa !22
  store i32 %2106, ptr %2107, align 4, !tbaa !22
  %2124 = sub i32 %2116, %35
  %2125 = icmp ugt i32 %2124, -4
  br i1 %2125, label %2306, label %2126

2126:                                             ; preds = %2078
  %2127 = load i32, ptr %2123, align 1, !tbaa !22
  %2128 = getelementptr inbounds i8, ptr %2079, i64 1
  %2129 = load i32, ptr %2128, align 1, !tbaa !22
  %2130 = icmp eq i32 %2127, %2129
  br i1 %2130, label %2131, label %2306

2131:                                             ; preds = %2126
  %2132 = select i1 %2117, ptr %55, ptr %38
  %2133 = getelementptr inbounds i8, ptr %2079, i64 5
  %2134 = getelementptr inbounds i8, ptr %2123, i64 4
  %2135 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %2133, ptr noundef nonnull %2134, ptr noundef %38, ptr noundef %2132, ptr noundef %37)
  %2136 = add i64 %2135, 4
  %2137 = ptrtoint ptr %2128 to i64
  %2138 = ptrtoint ptr %2080 to i64
  %2139 = sub i64 %2137, %2138
  %2140 = getelementptr inbounds i8, ptr %2080, i64 %2139
  %2141 = icmp ugt ptr %2140, %2066
  %2142 = load ptr, ptr %2067, align 8, !tbaa !36
  br i1 %2141, label %2166, label %2143

2143:                                             ; preds = %2131
  %2144 = load <2 x i64>, ptr %2080, align 1, !tbaa !35
  store <2 x i64> %2144, ptr %2142, align 1, !tbaa !35
  %2145 = icmp ugt i64 %2139, 16
  br i1 %2145, label %2146, label %2284

2146:                                             ; preds = %2143
  %2147 = load ptr, ptr %2067, align 8, !tbaa !36
  %2148 = getelementptr inbounds i8, ptr %2147, i64 16
  %2149 = getelementptr inbounds i8, ptr %2080, i64 16
  %2150 = add i64 %2139, -16
  %2151 = getelementptr inbounds i8, ptr %2147, i64 %2139
  %2152 = load <2 x i64>, ptr %2149, align 1, !tbaa !35
  store <2 x i64> %2152, ptr %2148, align 1, !tbaa !35
  %2153 = icmp ult i64 %2150, 17
  br i1 %2153, label %2284, label %2154

2154:                                             ; preds = %2146
  %2155 = getelementptr inbounds i8, ptr %2147, i64 32
  br label %2156

2156:                                             ; preds = %2156, %2154
  %2157 = phi ptr [ %2155, %2154 ], [ %2164, %2156 ]
  %2158 = phi ptr [ %2149, %2154 ], [ %2162, %2156 ]
  %2159 = getelementptr inbounds i8, ptr %2158, i64 16
  %2160 = load <2 x i64>, ptr %2159, align 1, !tbaa !35
  store <2 x i64> %2160, ptr %2157, align 1, !tbaa !35
  %2161 = getelementptr inbounds i8, ptr %2157, i64 16
  %2162 = getelementptr inbounds i8, ptr %2158, i64 32
  %2163 = load <2 x i64>, ptr %2162, align 1, !tbaa !35
  store <2 x i64> %2163, ptr %2161, align 1, !tbaa !35
  %2164 = getelementptr inbounds i8, ptr %2157, i64 32
  %2165 = icmp ult ptr %2164, %2151
  br i1 %2165, label %2156, label %2288, !llvm.loop !38

2166:                                             ; preds = %2131
  %2167 = ptrtoint ptr %2140 to i64
  %2168 = icmp ugt ptr %2080, %2066
  br i1 %2168, label %2186, label %2169

2169:                                             ; preds = %2166
  %2170 = sub i64 %2068, %2138
  %2171 = getelementptr inbounds i8, ptr %2142, i64 %2170
  %2172 = load <2 x i64>, ptr %2080, align 1, !tbaa !35
  store <2 x i64> %2172, ptr %2142, align 1, !tbaa !35
  %2173 = icmp ult i64 %2170, 17
  br i1 %2173, label %2186, label %2174

2174:                                             ; preds = %2169
  %2175 = getelementptr inbounds i8, ptr %2142, i64 16
  br label %2176

2176:                                             ; preds = %2176, %2174
  %2177 = phi ptr [ %2175, %2174 ], [ %2184, %2176 ]
  %2178 = phi ptr [ %2080, %2174 ], [ %2182, %2176 ]
  %2179 = getelementptr inbounds i8, ptr %2178, i64 16
  %2180 = load <2 x i64>, ptr %2179, align 1, !tbaa !35
  store <2 x i64> %2180, ptr %2177, align 1, !tbaa !35
  %2181 = getelementptr inbounds i8, ptr %2177, i64 16
  %2182 = getelementptr inbounds i8, ptr %2178, i64 32
  %2183 = load <2 x i64>, ptr %2182, align 1, !tbaa !35
  store <2 x i64> %2183, ptr %2181, align 1, !tbaa !35
  %2184 = getelementptr inbounds i8, ptr %2177, i64 32
  %2185 = icmp ult ptr %2184, %2171
  br i1 %2185, label %2176, label %2186, !llvm.loop !38

2186:                                             ; preds = %2176, %2169, %2166
  %2187 = phi ptr [ %2066, %2169 ], [ %2080, %2166 ], [ %2066, %2176 ]
  %2188 = phi ptr [ %2171, %2169 ], [ %2142, %2166 ], [ %2171, %2176 ]
  %2189 = icmp ult ptr %2187, %2140
  br i1 %2189, label %2190, label %2288

2190:                                             ; preds = %2186
  %2191 = ptrtoint ptr %2188 to i64
  %2192 = ptrtoint ptr %2187 to i64
  %2193 = sub i64 %2167, %2192
  %2194 = getelementptr i8, ptr %2187, i64 %2193
  %2195 = icmp ult i64 %2193, 8
  %2196 = sub i64 %2191, %2192
  %2197 = icmp ult i64 %2196, 32
  %2198 = select i1 %2195, i1 true, i1 %2197
  br i1 %2198, label %2234, label %2199

2199:                                             ; preds = %2190
  %2200 = icmp ult i64 %2193, 32
  br i1 %2200, label %2220, label %2201

2201:                                             ; preds = %2199
  %2202 = and i64 %2193, -32
  br label %2203

2203:                                             ; preds = %2203, %2201
  %2204 = phi i64 [ 0, %2201 ], [ %2211, %2203 ]
  %2205 = getelementptr i8, ptr %2188, i64 %2204
  %2206 = getelementptr i8, ptr %2187, i64 %2204
  %2207 = getelementptr i8, ptr %2206, i64 16
  %2208 = load <16 x i8>, ptr %2206, align 1, !tbaa !35
  %2209 = load <16 x i8>, ptr %2207, align 1, !tbaa !35
  %2210 = getelementptr i8, ptr %2205, i64 16
  store <16 x i8> %2208, ptr %2205, align 1, !tbaa !35
  store <16 x i8> %2209, ptr %2210, align 1, !tbaa !35
  %2211 = add nuw i64 %2204, 32
  %2212 = icmp eq i64 %2211, %2202
  br i1 %2212, label %2213, label %2203, !llvm.loop !116

2213:                                             ; preds = %2203
  %2214 = icmp eq i64 %2193, %2202
  br i1 %2214, label %2288, label %2215

2215:                                             ; preds = %2213
  %2216 = getelementptr i8, ptr %2187, i64 %2202
  %2217 = getelementptr i8, ptr %2188, i64 %2202
  %2218 = and i64 %2193, 24
  %2219 = icmp eq i64 %2218, 0
  br i1 %2219, label %2234, label %2220

2220:                                             ; preds = %2199, %2215
  %2221 = phi i64 [ %2202, %2215 ], [ 0, %2199 ]
  %2222 = and i64 %2193, -8
  %2223 = getelementptr i8, ptr %2188, i64 %2222
  %2224 = getelementptr i8, ptr %2187, i64 %2222
  br label %2225

2225:                                             ; preds = %2225, %2220
  %2226 = phi i64 [ %2221, %2220 ], [ %2230, %2225 ]
  %2227 = getelementptr i8, ptr %2188, i64 %2226
  %2228 = getelementptr i8, ptr %2187, i64 %2226
  %2229 = load <8 x i8>, ptr %2228, align 1, !tbaa !35
  store <8 x i8> %2229, ptr %2227, align 1, !tbaa !35
  %2230 = add nuw i64 %2226, 8
  %2231 = icmp eq i64 %2230, %2222
  br i1 %2231, label %2232, label %2225, !llvm.loop !117

2232:                                             ; preds = %2225
  %2233 = icmp eq i64 %2193, %2222
  br i1 %2233, label %2288, label %2234

2234:                                             ; preds = %2190, %2215, %2232
  %2235 = phi ptr [ %2188, %2190 ], [ %2217, %2215 ], [ %2223, %2232 ]
  %2236 = phi ptr [ %2187, %2190 ], [ %2216, %2215 ], [ %2224, %2232 ]
  %2237 = add i64 %2104, 1
  %2238 = ptrtoint ptr %2236 to i64
  %2239 = sub i64 %2237, %2238
  %2240 = sub i64 %2104, %2238
  %2241 = and i64 %2239, 7
  %2242 = icmp eq i64 %2241, 0
  br i1 %2242, label %2252, label %2243

2243:                                             ; preds = %2234, %2243
  %2244 = phi ptr [ %2249, %2243 ], [ %2235, %2234 ]
  %2245 = phi ptr [ %2247, %2243 ], [ %2236, %2234 ]
  %2246 = phi i64 [ %2250, %2243 ], [ 0, %2234 ]
  %2247 = getelementptr inbounds i8, ptr %2245, i64 1
  %2248 = load i8, ptr %2245, align 1, !tbaa !35
  %2249 = getelementptr inbounds i8, ptr %2244, i64 1
  store i8 %2248, ptr %2244, align 1, !tbaa !35
  %2250 = add i64 %2246, 1
  %2251 = icmp eq i64 %2250, %2241
  br i1 %2251, label %2252, label %2243, !llvm.loop !118

2252:                                             ; preds = %2243, %2234
  %2253 = phi ptr [ %2235, %2234 ], [ %2249, %2243 ]
  %2254 = phi ptr [ %2236, %2234 ], [ %2247, %2243 ]
  %2255 = icmp ult i64 %2240, 7
  br i1 %2255, label %2288, label %2256

2256:                                             ; preds = %2252, %2256
  %2257 = phi ptr [ %2282, %2256 ], [ %2253, %2252 ]
  %2258 = phi ptr [ %2280, %2256 ], [ %2254, %2252 ]
  %2259 = getelementptr inbounds i8, ptr %2258, i64 1
  %2260 = load i8, ptr %2258, align 1, !tbaa !35
  %2261 = getelementptr inbounds i8, ptr %2257, i64 1
  store i8 %2260, ptr %2257, align 1, !tbaa !35
  %2262 = getelementptr inbounds i8, ptr %2258, i64 2
  %2263 = load i8, ptr %2259, align 1, !tbaa !35
  %2264 = getelementptr inbounds i8, ptr %2257, i64 2
  store i8 %2263, ptr %2261, align 1, !tbaa !35
  %2265 = getelementptr inbounds i8, ptr %2258, i64 3
  %2266 = load i8, ptr %2262, align 1, !tbaa !35
  %2267 = getelementptr inbounds i8, ptr %2257, i64 3
  store i8 %2266, ptr %2264, align 1, !tbaa !35
  %2268 = getelementptr inbounds i8, ptr %2258, i64 4
  %2269 = load i8, ptr %2265, align 1, !tbaa !35
  %2270 = getelementptr inbounds i8, ptr %2257, i64 4
  store i8 %2269, ptr %2267, align 1, !tbaa !35
  %2271 = getelementptr inbounds i8, ptr %2258, i64 5
  %2272 = load i8, ptr %2268, align 1, !tbaa !35
  %2273 = getelementptr inbounds i8, ptr %2257, i64 5
  store i8 %2272, ptr %2270, align 1, !tbaa !35
  %2274 = getelementptr inbounds i8, ptr %2258, i64 6
  %2275 = load i8, ptr %2271, align 1, !tbaa !35
  %2276 = getelementptr inbounds i8, ptr %2257, i64 6
  store i8 %2275, ptr %2273, align 1, !tbaa !35
  %2277 = getelementptr inbounds i8, ptr %2258, i64 7
  %2278 = load i8, ptr %2274, align 1, !tbaa !35
  %2279 = getelementptr inbounds i8, ptr %2257, i64 7
  store i8 %2278, ptr %2276, align 1, !tbaa !35
  %2280 = getelementptr inbounds i8, ptr %2258, i64 8
  %2281 = load i8, ptr %2277, align 1, !tbaa !35
  %2282 = getelementptr inbounds i8, ptr %2257, i64 8
  store i8 %2281, ptr %2279, align 1, !tbaa !35
  %2283 = icmp eq ptr %2280, %2194
  br i1 %2283, label %2288, label %2256, !llvm.loop !119

2284:                                             ; preds = %2146, %2143
  %2285 = load ptr, ptr %2067, align 8, !tbaa !36
  %2286 = getelementptr inbounds i8, ptr %2285, i64 %2139
  store ptr %2286, ptr %2067, align 8, !tbaa !36
  %2287 = load ptr, ptr %2070, align 8, !tbaa !46
  br label %2300

2288:                                             ; preds = %2156, %2252, %2256, %2213, %2232, %2186
  %2289 = load ptr, ptr %2067, align 8, !tbaa !36
  %2290 = getelementptr inbounds i8, ptr %2289, i64 %2139
  store ptr %2290, ptr %2067, align 8, !tbaa !36
  %2291 = icmp ugt i64 %2139, 65535
  %2292 = load ptr, ptr %2070, align 8, !tbaa !46
  br i1 %2291, label %2293, label %2300, !prof !47

2293:                                             ; preds = %2288
  store i32 1, ptr %2069, align 8, !tbaa !48
  %2294 = load ptr, ptr %1, align 8, !tbaa !49
  %2295 = ptrtoint ptr %2292 to i64
  %2296 = ptrtoint ptr %2294 to i64
  %2297 = sub i64 %2295, %2296
  %2298 = lshr exact i64 %2297, 3
  %2299 = trunc i64 %2298 to i32
  store i32 %2299, ptr %2071, align 4, !tbaa !50
  br label %2300

2300:                                             ; preds = %2293, %2288, %2284
  %2301 = phi ptr [ %2287, %2284 ], [ %2292, %2293 ], [ %2292, %2288 ]
  %2302 = trunc i64 %2139 to i16
  %2303 = getelementptr inbounds %struct.SeqDef_s, ptr %2301, i64 0, i32 1
  store i16 %2302, ptr %2303, align 4, !tbaa !51
  store i32 1, ptr %2301, align 4, !tbaa !53
  %2304 = add i64 %2135, 1
  %2305 = icmp ugt i64 %2304, 65535
  br i1 %2305, label %2886, label %2899, !prof !54

2306:                                             ; preds = %2126, %2078
  %2307 = icmp ult i32 %2108, %35
  br i1 %2307, label %2401, label %2308

2308:                                             ; preds = %2306
  %2309 = load i64, ptr %2112, align 1, !tbaa !21
  %2310 = icmp eq i64 %2309, %2083
  br i1 %2310, label %2311, label %2401

2311:                                             ; preds = %2308
  %2312 = getelementptr inbounds i8, ptr %2079, i64 8
  %2313 = getelementptr inbounds i8, ptr %2112, i64 8
  %2314 = icmp ugt ptr %2072, %2312
  br i1 %2314, label %2315, label %2341

2315:                                             ; preds = %2311
  %2316 = load i64, ptr %2313, align 1, !tbaa !21
  %2317 = load i64, ptr %2312, align 1, !tbaa !21
  %2318 = xor i64 %2317, %2316
  %2319 = icmp eq i64 %2318, 0
  br i1 %2319, label %2323, label %2320

2320:                                             ; preds = %2315
  %2321 = tail call i64 @llvm.cttz.i64(i64 %2318, i1 true), !range !32
  %2322 = lshr i64 %2321, 3
  br label %2378

2323:                                             ; preds = %2315, %2329
  %2324 = phi ptr [ %2327, %2329 ], [ %2313, %2315 ]
  %2325 = phi ptr [ %2326, %2329 ], [ %2312, %2315 ]
  %2326 = getelementptr inbounds i8, ptr %2325, i64 8
  %2327 = getelementptr inbounds i8, ptr %2324, i64 8
  %2328 = icmp ult ptr %2326, %2072
  br i1 %2328, label %2329, label %2341

2329:                                             ; preds = %2323
  %2330 = load i64, ptr %2327, align 1, !tbaa !21
  %2331 = load i64, ptr %2326, align 1, !tbaa !21
  %2332 = xor i64 %2331, %2330
  %2333 = icmp eq i64 %2332, 0
  br i1 %2333, label %2323, label %2334

2334:                                             ; preds = %2329
  %2335 = tail call i64 @llvm.cttz.i64(i64 %2332, i1 true), !range !32
  %2336 = lshr i64 %2335, 3
  %2337 = getelementptr inbounds i8, ptr %2326, i64 %2336
  %2338 = ptrtoint ptr %2337 to i64
  %2339 = ptrtoint ptr %2312 to i64
  %2340 = sub i64 %2338, %2339
  br label %2378

2341:                                             ; preds = %2323, %2311
  %2342 = phi ptr [ %2313, %2311 ], [ %2327, %2323 ]
  %2343 = phi ptr [ %2312, %2311 ], [ %2326, %2323 ]
  %2344 = icmp ult ptr %2343, %2073
  br i1 %2344, label %2345, label %2352

2345:                                             ; preds = %2341
  %2346 = load i32, ptr %2342, align 1, !tbaa !22
  %2347 = load i32, ptr %2343, align 1, !tbaa !22
  %2348 = icmp eq i32 %2346, %2347
  br i1 %2348, label %2349, label %2352

2349:                                             ; preds = %2345
  %2350 = getelementptr inbounds i8, ptr %2343, i64 4
  %2351 = getelementptr inbounds i8, ptr %2342, i64 4
  br label %2352

2352:                                             ; preds = %2349, %2345, %2341
  %2353 = phi ptr [ %2351, %2349 ], [ %2342, %2345 ], [ %2342, %2341 ]
  %2354 = phi ptr [ %2350, %2349 ], [ %2343, %2345 ], [ %2343, %2341 ]
  %2355 = icmp ult ptr %2354, %2074
  br i1 %2355, label %2356, label %2363

2356:                                             ; preds = %2352
  %2357 = load i16, ptr %2353, align 1, !tbaa !33
  %2358 = load i16, ptr %2354, align 1, !tbaa !33
  %2359 = icmp eq i16 %2357, %2358
  br i1 %2359, label %2360, label %2363

2360:                                             ; preds = %2356
  %2361 = getelementptr inbounds i8, ptr %2354, i64 2
  %2362 = getelementptr inbounds i8, ptr %2353, i64 2
  br label %2363

2363:                                             ; preds = %2360, %2356, %2352
  %2364 = phi ptr [ %2362, %2360 ], [ %2353, %2356 ], [ %2353, %2352 ]
  %2365 = phi ptr [ %2361, %2360 ], [ %2354, %2356 ], [ %2354, %2352 ]
  %2366 = icmp ult ptr %2365, %38
  br i1 %2366, label %2367, label %2373

2367:                                             ; preds = %2363
  %2368 = load i8, ptr %2364, align 1, !tbaa !35
  %2369 = load i8, ptr %2365, align 1, !tbaa !35
  %2370 = icmp eq i8 %2368, %2369
  %2371 = zext i1 %2370 to i64
  %2372 = getelementptr inbounds i8, ptr %2365, i64 %2371
  br label %2373

2373:                                             ; preds = %2367, %2363
  %2374 = phi ptr [ %2365, %2363 ], [ %2372, %2367 ]
  %2375 = ptrtoint ptr %2374 to i64
  %2376 = ptrtoint ptr %2312 to i64
  %2377 = sub i64 %2375, %2376
  br label %2378

2378:                                             ; preds = %2373, %2334, %2320
  %2379 = phi i64 [ %2377, %2373 ], [ %2322, %2320 ], [ %2340, %2334 ]
  %2380 = add i64 %2379, 8
  %2381 = ptrtoint ptr %2112 to i64
  %2382 = sub i64 %2104, %2381
  %2383 = trunc i64 %2382 to i32
  %2384 = icmp ugt ptr %2079, %2080
  %2385 = icmp ugt i32 %2108, %35
  %2386 = and i1 %2384, %2385
  br i1 %2386, label %2387, label %2713

2387:                                             ; preds = %2378, %2396
  %2388 = phi ptr [ %2391, %2396 ], [ %2079, %2378 ]
  %2389 = phi i64 [ %2397, %2396 ], [ %2380, %2378 ]
  %2390 = phi ptr [ %2393, %2396 ], [ %2112, %2378 ]
  %2391 = getelementptr inbounds i8, ptr %2388, i64 -1
  %2392 = load i8, ptr %2391, align 1, !tbaa !35
  %2393 = getelementptr inbounds i8, ptr %2390, i64 -1
  %2394 = load i8, ptr %2393, align 1, !tbaa !35
  %2395 = icmp eq i8 %2392, %2394
  br i1 %2395, label %2396, label %2713

2396:                                             ; preds = %2387
  %2397 = add i64 %2389, 1
  %2398 = icmp ugt ptr %2391, %2080
  %2399 = icmp ugt ptr %2393, %37
  %2400 = and i1 %2398, %2399
  br i1 %2400, label %2387, label %2713, !llvm.loop !96

2401:                                             ; preds = %2308, %2306
  br i1 %2099, label %2402, label %2432

2402:                                             ; preds = %2401
  %2403 = lshr i32 %2092, 8
  %2404 = zext nneg i32 %2403 to i64
  %2405 = getelementptr inbounds i8, ptr %52, i64 %2404
  %2406 = icmp ugt i32 %2403, %50
  br i1 %2406, label %2407, label %2432

2407:                                             ; preds = %2402
  %2408 = load i64, ptr %2405, align 1, !tbaa !21
  %2409 = icmp eq i64 %2408, %2083
  br i1 %2409, label %2410, label %2432

2410:                                             ; preds = %2407
  %2411 = getelementptr inbounds i8, ptr %2079, i64 8
  %2412 = getelementptr inbounds i8, ptr %2405, i64 8
  %2413 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %2411, ptr noundef nonnull %2412, ptr noundef %38, ptr noundef %55, ptr noundef %37)
  %2414 = add i64 %2413, 8
  %2415 = add i32 %60, %2403
  %2416 = sub i32 %2106, %2415
  %2417 = icmp ugt ptr %2079, %2080
  br i1 %2417, label %2418, label %2713

2418:                                             ; preds = %2410, %2427
  %2419 = phi ptr [ %2422, %2427 ], [ %2079, %2410 ]
  %2420 = phi i64 [ %2428, %2427 ], [ %2414, %2410 ]
  %2421 = phi ptr [ %2424, %2427 ], [ %2405, %2410 ]
  %2422 = getelementptr inbounds i8, ptr %2419, i64 -1
  %2423 = load i8, ptr %2422, align 1, !tbaa !35
  %2424 = getelementptr inbounds i8, ptr %2421, i64 -1
  %2425 = load i8, ptr %2424, align 1, !tbaa !35
  %2426 = icmp eq i8 %2423, %2425
  br i1 %2426, label %2427, label %2713

2427:                                             ; preds = %2418
  %2428 = add i64 %2420, 1
  %2429 = icmp ugt ptr %2422, %2080
  %2430 = icmp ugt ptr %2424, %54
  %2431 = and i1 %2429, %2430
  br i1 %2431, label %2418, label %2713, !llvm.loop !97

2432:                                             ; preds = %2407, %2402, %2401
  %2433 = icmp ugt i32 %2110, %35
  br i1 %2433, label %2434, label %2438

2434:                                             ; preds = %2432
  %2435 = load i32, ptr %2114, align 1, !tbaa !22
  %2436 = load i32, ptr %2079, align 1, !tbaa !22
  %2437 = icmp eq i32 %2435, %2436
  br i1 %2437, label %2455, label %2449

2438:                                             ; preds = %2432
  br i1 %2103, label %2439, label %2449

2439:                                             ; preds = %2438
  %2440 = lshr i32 %2095, 8
  %2441 = icmp ugt i32 %2440, %50
  br i1 %2441, label %2442, label %2449

2442:                                             ; preds = %2439
  %2443 = add i32 %2440, %60
  %2444 = zext nneg i32 %2440 to i64
  %2445 = getelementptr inbounds i8, ptr %52, i64 %2444
  %2446 = load i32, ptr %2445, align 1, !tbaa !22
  %2447 = load i32, ptr %2079, align 1, !tbaa !22
  %2448 = icmp eq i32 %2446, %2447
  br i1 %2448, label %2455, label %2449

2449:                                             ; preds = %2442, %2439, %2438, %2434
  %2450 = ptrtoint ptr %2080 to i64
  %2451 = sub i64 %2104, %2450
  %2452 = ashr i64 %2451, 8
  %2453 = add nsw i64 %2452, 1
  %2454 = getelementptr inbounds i8, ptr %2079, i64 %2453
  br label %2993, !llvm.loop !98

2455:                                             ; preds = %2442, %2434
  %2456 = phi ptr [ %2114, %2434 ], [ %2445, %2442 ]
  %2457 = phi i32 [ %2110, %2434 ], [ %2443, %2442 ]
  %2458 = getelementptr inbounds i8, ptr %2079, i64 1
  %2459 = load i64, ptr %2458, align 1, !tbaa !21
  %2460 = mul i64 %2459, -3523014627327384477
  %2461 = lshr i64 %2460, %2059
  %2462 = lshr i64 %2460, %2063
  %2463 = getelementptr inbounds i32, ptr %10, i64 %2461
  %2464 = load i32, ptr %2463, align 4, !tbaa !22
  %2465 = lshr i64 %2462, 8
  %2466 = getelementptr inbounds i32, ptr %46, i64 %2465
  %2467 = load i32, ptr %2466, align 4, !tbaa !22
  %2468 = zext i32 %2467 to i64
  %2469 = xor i64 %2462, %2468
  %2470 = and i64 %2469, 255
  %2471 = icmp eq i64 %2470, 0
  %2472 = zext i32 %2464 to i64
  %2473 = getelementptr inbounds i8, ptr %18, i64 %2472
  store i32 %2115, ptr %2463, align 4, !tbaa !22
  %2474 = icmp ult i32 %2464, %35
  br i1 %2474, label %2569, label %2475

2475:                                             ; preds = %2455
  %2476 = load i64, ptr %2473, align 1, !tbaa !21
  %2477 = icmp eq i64 %2476, %2459
  br i1 %2477, label %2478, label %2569

2478:                                             ; preds = %2475
  %2479 = getelementptr inbounds i8, ptr %2079, i64 9
  %2480 = getelementptr inbounds i8, ptr %2473, i64 8
  %2481 = icmp ugt ptr %2072, %2479
  br i1 %2481, label %2482, label %2508

2482:                                             ; preds = %2478
  %2483 = load i64, ptr %2480, align 1, !tbaa !21
  %2484 = load i64, ptr %2479, align 1, !tbaa !21
  %2485 = xor i64 %2484, %2483
  %2486 = icmp eq i64 %2485, 0
  br i1 %2486, label %2490, label %2487

2487:                                             ; preds = %2482
  %2488 = tail call i64 @llvm.cttz.i64(i64 %2485, i1 true), !range !32
  %2489 = lshr i64 %2488, 3
  br label %2545

2490:                                             ; preds = %2482, %2496
  %2491 = phi ptr [ %2494, %2496 ], [ %2480, %2482 ]
  %2492 = phi ptr [ %2493, %2496 ], [ %2479, %2482 ]
  %2493 = getelementptr inbounds i8, ptr %2492, i64 8
  %2494 = getelementptr inbounds i8, ptr %2491, i64 8
  %2495 = icmp ult ptr %2493, %2072
  br i1 %2495, label %2496, label %2508

2496:                                             ; preds = %2490
  %2497 = load i64, ptr %2494, align 1, !tbaa !21
  %2498 = load i64, ptr %2493, align 1, !tbaa !21
  %2499 = xor i64 %2498, %2497
  %2500 = icmp eq i64 %2499, 0
  br i1 %2500, label %2490, label %2501

2501:                                             ; preds = %2496
  %2502 = tail call i64 @llvm.cttz.i64(i64 %2499, i1 true), !range !32
  %2503 = lshr i64 %2502, 3
  %2504 = getelementptr inbounds i8, ptr %2493, i64 %2503
  %2505 = ptrtoint ptr %2504 to i64
  %2506 = ptrtoint ptr %2479 to i64
  %2507 = sub i64 %2505, %2506
  br label %2545

2508:                                             ; preds = %2490, %2478
  %2509 = phi ptr [ %2480, %2478 ], [ %2494, %2490 ]
  %2510 = phi ptr [ %2479, %2478 ], [ %2493, %2490 ]
  %2511 = icmp ult ptr %2510, %2073
  br i1 %2511, label %2512, label %2519

2512:                                             ; preds = %2508
  %2513 = load i32, ptr %2509, align 1, !tbaa !22
  %2514 = load i32, ptr %2510, align 1, !tbaa !22
  %2515 = icmp eq i32 %2513, %2514
  br i1 %2515, label %2516, label %2519

2516:                                             ; preds = %2512
  %2517 = getelementptr inbounds i8, ptr %2510, i64 4
  %2518 = getelementptr inbounds i8, ptr %2509, i64 4
  br label %2519

2519:                                             ; preds = %2516, %2512, %2508
  %2520 = phi ptr [ %2518, %2516 ], [ %2509, %2512 ], [ %2509, %2508 ]
  %2521 = phi ptr [ %2517, %2516 ], [ %2510, %2512 ], [ %2510, %2508 ]
  %2522 = icmp ult ptr %2521, %2074
  br i1 %2522, label %2523, label %2530

2523:                                             ; preds = %2519
  %2524 = load i16, ptr %2520, align 1, !tbaa !33
  %2525 = load i16, ptr %2521, align 1, !tbaa !33
  %2526 = icmp eq i16 %2524, %2525
  br i1 %2526, label %2527, label %2530

2527:                                             ; preds = %2523
  %2528 = getelementptr inbounds i8, ptr %2521, i64 2
  %2529 = getelementptr inbounds i8, ptr %2520, i64 2
  br label %2530

2530:                                             ; preds = %2527, %2523, %2519
  %2531 = phi ptr [ %2529, %2527 ], [ %2520, %2523 ], [ %2520, %2519 ]
  %2532 = phi ptr [ %2528, %2527 ], [ %2521, %2523 ], [ %2521, %2519 ]
  %2533 = icmp ult ptr %2532, %38
  br i1 %2533, label %2534, label %2540

2534:                                             ; preds = %2530
  %2535 = load i8, ptr %2531, align 1, !tbaa !35
  %2536 = load i8, ptr %2532, align 1, !tbaa !35
  %2537 = icmp eq i8 %2535, %2536
  %2538 = zext i1 %2537 to i64
  %2539 = getelementptr inbounds i8, ptr %2532, i64 %2538
  br label %2540

2540:                                             ; preds = %2534, %2530
  %2541 = phi ptr [ %2532, %2530 ], [ %2539, %2534 ]
  %2542 = ptrtoint ptr %2541 to i64
  %2543 = ptrtoint ptr %2479 to i64
  %2544 = sub i64 %2542, %2543
  br label %2545

2545:                                             ; preds = %2540, %2501, %2487
  %2546 = phi i64 [ %2544, %2540 ], [ %2489, %2487 ], [ %2507, %2501 ]
  %2547 = add i64 %2546, 8
  %2548 = ptrtoint ptr %2458 to i64
  %2549 = ptrtoint ptr %2473 to i64
  %2550 = sub i64 %2548, %2549
  %2551 = trunc i64 %2550 to i32
  %2552 = icmp ugt ptr %2458, %2080
  %2553 = icmp ugt i32 %2464, %35
  %2554 = and i1 %2552, %2553
  br i1 %2554, label %2555, label %2713

2555:                                             ; preds = %2545, %2564
  %2556 = phi ptr [ %2559, %2564 ], [ %2458, %2545 ]
  %2557 = phi i64 [ %2565, %2564 ], [ %2547, %2545 ]
  %2558 = phi ptr [ %2561, %2564 ], [ %2473, %2545 ]
  %2559 = getelementptr inbounds i8, ptr %2556, i64 -1
  %2560 = load i8, ptr %2559, align 1, !tbaa !35
  %2561 = getelementptr inbounds i8, ptr %2558, i64 -1
  %2562 = load i8, ptr %2561, align 1, !tbaa !35
  %2563 = icmp eq i8 %2560, %2562
  br i1 %2563, label %2564, label %2713

2564:                                             ; preds = %2555
  %2565 = add i64 %2557, 1
  %2566 = icmp ugt ptr %2559, %2080
  %2567 = icmp ugt ptr %2561, %37
  %2568 = and i1 %2566, %2567
  br i1 %2568, label %2555, label %2713, !llvm.loop !99

2569:                                             ; preds = %2475, %2455
  br i1 %2471, label %2570, label %2600

2570:                                             ; preds = %2569
  %2571 = lshr i32 %2467, 8
  %2572 = zext nneg i32 %2571 to i64
  %2573 = getelementptr inbounds i8, ptr %52, i64 %2572
  %2574 = icmp ugt i32 %2571, %50
  br i1 %2574, label %2575, label %2600

2575:                                             ; preds = %2570
  %2576 = load i64, ptr %2573, align 1, !tbaa !21
  %2577 = icmp eq i64 %2576, %2459
  br i1 %2577, label %2578, label %2600

2578:                                             ; preds = %2575
  %2579 = getelementptr inbounds i8, ptr %2079, i64 9
  %2580 = getelementptr inbounds i8, ptr %2573, i64 8
  %2581 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %2579, ptr noundef nonnull %2580, ptr noundef %38, ptr noundef %55, ptr noundef %37)
  %2582 = add i64 %2581, 8
  %2583 = add i32 %60, %2571
  %2584 = sub i32 %2115, %2583
  %2585 = icmp ugt ptr %2458, %2080
  br i1 %2585, label %2586, label %2713

2586:                                             ; preds = %2578, %2595
  %2587 = phi ptr [ %2590, %2595 ], [ %2458, %2578 ]
  %2588 = phi i64 [ %2596, %2595 ], [ %2582, %2578 ]
  %2589 = phi ptr [ %2592, %2595 ], [ %2573, %2578 ]
  %2590 = getelementptr inbounds i8, ptr %2587, i64 -1
  %2591 = load i8, ptr %2590, align 1, !tbaa !35
  %2592 = getelementptr inbounds i8, ptr %2589, i64 -1
  %2593 = load i8, ptr %2592, align 1, !tbaa !35
  %2594 = icmp eq i8 %2591, %2593
  br i1 %2594, label %2595, label %2713

2595:                                             ; preds = %2586
  %2596 = add i64 %2588, 1
  %2597 = icmp ugt ptr %2590, %2080
  %2598 = icmp ugt ptr %2592, %54
  %2599 = and i1 %2597, %2598
  br i1 %2599, label %2586, label %2713, !llvm.loop !100

2600:                                             ; preds = %2575, %2570, %2569
  %2601 = icmp ult i32 %2457, %35
  %2602 = getelementptr inbounds i8, ptr %2079, i64 4
  %2603 = getelementptr inbounds i8, ptr %2456, i64 4
  br i1 %2601, label %2604, label %2625

2604:                                             ; preds = %2600
  %2605 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %2602, ptr noundef nonnull %2603, ptr noundef %38, ptr noundef %55, ptr noundef nonnull %37)
  %2606 = add i64 %2605, 4
  %2607 = sub i32 %2106, %2457
  %2608 = icmp ugt ptr %2079, %2080
  %2609 = icmp ugt ptr %2456, %54
  %2610 = and i1 %2608, %2609
  br i1 %2610, label %2611, label %2713

2611:                                             ; preds = %2604, %2620
  %2612 = phi ptr [ %2615, %2620 ], [ %2079, %2604 ]
  %2613 = phi i64 [ %2621, %2620 ], [ %2606, %2604 ]
  %2614 = phi ptr [ %2617, %2620 ], [ %2456, %2604 ]
  %2615 = getelementptr inbounds i8, ptr %2612, i64 -1
  %2616 = load i8, ptr %2615, align 1, !tbaa !35
  %2617 = getelementptr inbounds i8, ptr %2614, i64 -1
  %2618 = load i8, ptr %2617, align 1, !tbaa !35
  %2619 = icmp eq i8 %2616, %2618
  br i1 %2619, label %2620, label %2713

2620:                                             ; preds = %2611
  %2621 = add i64 %2613, 1
  %2622 = icmp ugt ptr %2615, %2080
  %2623 = icmp ugt ptr %2617, %54
  %2624 = and i1 %2622, %2623
  br i1 %2624, label %2611, label %2713, !llvm.loop !101

2625:                                             ; preds = %2600
  %2626 = icmp ugt ptr %2072, %2602
  br i1 %2626, label %2627, label %2653

2627:                                             ; preds = %2625
  %2628 = load i64, ptr %2603, align 1, !tbaa !21
  %2629 = load i64, ptr %2602, align 1, !tbaa !21
  %2630 = xor i64 %2629, %2628
  %2631 = icmp eq i64 %2630, 0
  br i1 %2631, label %2635, label %2632

2632:                                             ; preds = %2627
  %2633 = tail call i64 @llvm.cttz.i64(i64 %2630, i1 true), !range !32
  %2634 = lshr i64 %2633, 3
  br label %2690

2635:                                             ; preds = %2627, %2641
  %2636 = phi ptr [ %2639, %2641 ], [ %2603, %2627 ]
  %2637 = phi ptr [ %2638, %2641 ], [ %2602, %2627 ]
  %2638 = getelementptr inbounds i8, ptr %2637, i64 8
  %2639 = getelementptr inbounds i8, ptr %2636, i64 8
  %2640 = icmp ult ptr %2638, %2072
  br i1 %2640, label %2641, label %2653

2641:                                             ; preds = %2635
  %2642 = load i64, ptr %2639, align 1, !tbaa !21
  %2643 = load i64, ptr %2638, align 1, !tbaa !21
  %2644 = xor i64 %2643, %2642
  %2645 = icmp eq i64 %2644, 0
  br i1 %2645, label %2635, label %2646

2646:                                             ; preds = %2641
  %2647 = tail call i64 @llvm.cttz.i64(i64 %2644, i1 true), !range !32
  %2648 = lshr i64 %2647, 3
  %2649 = getelementptr inbounds i8, ptr %2638, i64 %2648
  %2650 = ptrtoint ptr %2649 to i64
  %2651 = ptrtoint ptr %2602 to i64
  %2652 = sub i64 %2650, %2651
  br label %2690

2653:                                             ; preds = %2635, %2625
  %2654 = phi ptr [ %2603, %2625 ], [ %2639, %2635 ]
  %2655 = phi ptr [ %2602, %2625 ], [ %2638, %2635 ]
  %2656 = icmp ult ptr %2655, %2073
  br i1 %2656, label %2657, label %2664

2657:                                             ; preds = %2653
  %2658 = load i32, ptr %2654, align 1, !tbaa !22
  %2659 = load i32, ptr %2655, align 1, !tbaa !22
  %2660 = icmp eq i32 %2658, %2659
  br i1 %2660, label %2661, label %2664

2661:                                             ; preds = %2657
  %2662 = getelementptr inbounds i8, ptr %2655, i64 4
  %2663 = getelementptr inbounds i8, ptr %2654, i64 4
  br label %2664

2664:                                             ; preds = %2661, %2657, %2653
  %2665 = phi ptr [ %2663, %2661 ], [ %2654, %2657 ], [ %2654, %2653 ]
  %2666 = phi ptr [ %2662, %2661 ], [ %2655, %2657 ], [ %2655, %2653 ]
  %2667 = icmp ult ptr %2666, %2074
  br i1 %2667, label %2668, label %2675

2668:                                             ; preds = %2664
  %2669 = load i16, ptr %2665, align 1, !tbaa !33
  %2670 = load i16, ptr %2666, align 1, !tbaa !33
  %2671 = icmp eq i16 %2669, %2670
  br i1 %2671, label %2672, label %2675

2672:                                             ; preds = %2668
  %2673 = getelementptr inbounds i8, ptr %2666, i64 2
  %2674 = getelementptr inbounds i8, ptr %2665, i64 2
  br label %2675

2675:                                             ; preds = %2672, %2668, %2664
  %2676 = phi ptr [ %2674, %2672 ], [ %2665, %2668 ], [ %2665, %2664 ]
  %2677 = phi ptr [ %2673, %2672 ], [ %2666, %2668 ], [ %2666, %2664 ]
  %2678 = icmp ult ptr %2677, %38
  br i1 %2678, label %2679, label %2685

2679:                                             ; preds = %2675
  %2680 = load i8, ptr %2676, align 1, !tbaa !35
  %2681 = load i8, ptr %2677, align 1, !tbaa !35
  %2682 = icmp eq i8 %2680, %2681
  %2683 = zext i1 %2682 to i64
  %2684 = getelementptr inbounds i8, ptr %2677, i64 %2683
  br label %2685

2685:                                             ; preds = %2679, %2675
  %2686 = phi ptr [ %2677, %2675 ], [ %2684, %2679 ]
  %2687 = ptrtoint ptr %2686 to i64
  %2688 = ptrtoint ptr %2602 to i64
  %2689 = sub i64 %2687, %2688
  br label %2690

2690:                                             ; preds = %2685, %2646, %2632
  %2691 = phi i64 [ %2689, %2685 ], [ %2634, %2632 ], [ %2652, %2646 ]
  %2692 = add i64 %2691, 4
  %2693 = ptrtoint ptr %2456 to i64
  %2694 = sub i64 %2104, %2693
  %2695 = trunc i64 %2694 to i32
  %2696 = icmp ugt ptr %2079, %2080
  %2697 = icmp ugt ptr %2456, %37
  %2698 = and i1 %2696, %2697
  br i1 %2698, label %2699, label %2713

2699:                                             ; preds = %2690, %2708
  %2700 = phi ptr [ %2703, %2708 ], [ %2079, %2690 ]
  %2701 = phi i64 [ %2709, %2708 ], [ %2692, %2690 ]
  %2702 = phi ptr [ %2705, %2708 ], [ %2456, %2690 ]
  %2703 = getelementptr inbounds i8, ptr %2700, i64 -1
  %2704 = load i8, ptr %2703, align 1, !tbaa !35
  %2705 = getelementptr inbounds i8, ptr %2702, i64 -1
  %2706 = load i8, ptr %2705, align 1, !tbaa !35
  %2707 = icmp eq i8 %2704, %2706
  br i1 %2707, label %2708, label %2713

2708:                                             ; preds = %2699
  %2709 = add i64 %2701, 1
  %2710 = icmp ugt ptr %2703, %2080
  %2711 = icmp ugt ptr %2705, %37
  %2712 = and i1 %2710, %2711
  br i1 %2712, label %2699, label %2713, !llvm.loop !102

2713:                                             ; preds = %2396, %2387, %2564, %2555, %2708, %2699, %2620, %2611, %2595, %2586, %2427, %2418, %2690, %2604, %2578, %2545, %2410, %2378
  %2714 = phi i32 [ %2416, %2410 ], [ %2584, %2578 ], [ %2607, %2604 ], [ %2695, %2690 ], [ %2551, %2545 ], [ %2383, %2378 ], [ %2416, %2418 ], [ %2416, %2427 ], [ %2584, %2586 ], [ %2584, %2595 ], [ %2607, %2611 ], [ %2607, %2620 ], [ %2695, %2699 ], [ %2695, %2708 ], [ %2551, %2555 ], [ %2551, %2564 ], [ %2383, %2387 ], [ %2383, %2396 ]
  %2715 = phi i64 [ %2414, %2410 ], [ %2582, %2578 ], [ %2606, %2604 ], [ %2692, %2690 ], [ %2547, %2545 ], [ %2380, %2378 ], [ %2428, %2427 ], [ %2420, %2418 ], [ %2596, %2595 ], [ %2588, %2586 ], [ %2621, %2620 ], [ %2613, %2611 ], [ %2709, %2708 ], [ %2701, %2699 ], [ %2565, %2564 ], [ %2557, %2555 ], [ %2397, %2396 ], [ %2389, %2387 ]
  %2716 = phi ptr [ %2079, %2410 ], [ %2458, %2578 ], [ %2079, %2604 ], [ %2079, %2690 ], [ %2458, %2545 ], [ %2079, %2378 ], [ %2422, %2427 ], [ %2419, %2418 ], [ %2590, %2595 ], [ %2587, %2586 ], [ %2615, %2620 ], [ %2612, %2611 ], [ %2703, %2708 ], [ %2700, %2699 ], [ %2559, %2564 ], [ %2556, %2555 ], [ %2391, %2396 ], [ %2388, %2387 ]
  %2717 = ptrtoint ptr %2716 to i64
  %2718 = ptrtoint ptr %2080 to i64
  %2719 = sub i64 %2717, %2718
  %2720 = add i32 %2714, 3
  %2721 = getelementptr inbounds i8, ptr %2080, i64 %2719
  %2722 = icmp ugt ptr %2721, %2066
  %2723 = load ptr, ptr %2067, align 8, !tbaa !36
  br i1 %2722, label %2747, label %2724

2724:                                             ; preds = %2713
  %2725 = load <2 x i64>, ptr %2080, align 1, !tbaa !35
  store <2 x i64> %2725, ptr %2723, align 1, !tbaa !35
  %2726 = icmp ugt i64 %2719, 16
  br i1 %2726, label %2727, label %2864

2727:                                             ; preds = %2724
  %2728 = load ptr, ptr %2067, align 8, !tbaa !36
  %2729 = getelementptr inbounds i8, ptr %2728, i64 16
  %2730 = getelementptr inbounds i8, ptr %2080, i64 16
  %2731 = add i64 %2719, -16
  %2732 = getelementptr inbounds i8, ptr %2728, i64 %2719
  %2733 = load <2 x i64>, ptr %2730, align 1, !tbaa !35
  store <2 x i64> %2733, ptr %2729, align 1, !tbaa !35
  %2734 = icmp ult i64 %2731, 17
  br i1 %2734, label %2864, label %2735

2735:                                             ; preds = %2727
  %2736 = getelementptr inbounds i8, ptr %2728, i64 32
  br label %2737

2737:                                             ; preds = %2737, %2735
  %2738 = phi ptr [ %2736, %2735 ], [ %2745, %2737 ]
  %2739 = phi ptr [ %2730, %2735 ], [ %2743, %2737 ]
  %2740 = getelementptr inbounds i8, ptr %2739, i64 16
  %2741 = load <2 x i64>, ptr %2740, align 1, !tbaa !35
  store <2 x i64> %2741, ptr %2738, align 1, !tbaa !35
  %2742 = getelementptr inbounds i8, ptr %2738, i64 16
  %2743 = getelementptr inbounds i8, ptr %2739, i64 32
  %2744 = load <2 x i64>, ptr %2743, align 1, !tbaa !35
  store <2 x i64> %2744, ptr %2742, align 1, !tbaa !35
  %2745 = getelementptr inbounds i8, ptr %2738, i64 32
  %2746 = icmp ult ptr %2745, %2732
  br i1 %2746, label %2737, label %2868, !llvm.loop !38

2747:                                             ; preds = %2713
  %2748 = ptrtoint ptr %2721 to i64
  %2749 = icmp ugt ptr %2080, %2066
  br i1 %2749, label %2767, label %2750

2750:                                             ; preds = %2747
  %2751 = sub i64 %2068, %2718
  %2752 = getelementptr inbounds i8, ptr %2723, i64 %2751
  %2753 = load <2 x i64>, ptr %2080, align 1, !tbaa !35
  store <2 x i64> %2753, ptr %2723, align 1, !tbaa !35
  %2754 = icmp ult i64 %2751, 17
  br i1 %2754, label %2767, label %2755

2755:                                             ; preds = %2750
  %2756 = getelementptr inbounds i8, ptr %2723, i64 16
  br label %2757

2757:                                             ; preds = %2757, %2755
  %2758 = phi ptr [ %2756, %2755 ], [ %2765, %2757 ]
  %2759 = phi ptr [ %2080, %2755 ], [ %2763, %2757 ]
  %2760 = getelementptr inbounds i8, ptr %2759, i64 16
  %2761 = load <2 x i64>, ptr %2760, align 1, !tbaa !35
  store <2 x i64> %2761, ptr %2758, align 1, !tbaa !35
  %2762 = getelementptr inbounds i8, ptr %2758, i64 16
  %2763 = getelementptr inbounds i8, ptr %2759, i64 32
  %2764 = load <2 x i64>, ptr %2763, align 1, !tbaa !35
  store <2 x i64> %2764, ptr %2762, align 1, !tbaa !35
  %2765 = getelementptr inbounds i8, ptr %2758, i64 32
  %2766 = icmp ult ptr %2765, %2752
  br i1 %2766, label %2757, label %2767, !llvm.loop !38

2767:                                             ; preds = %2757, %2750, %2747
  %2768 = phi ptr [ %2066, %2750 ], [ %2080, %2747 ], [ %2066, %2757 ]
  %2769 = phi ptr [ %2752, %2750 ], [ %2723, %2747 ], [ %2752, %2757 ]
  %2770 = icmp ult ptr %2768, %2721
  br i1 %2770, label %2771, label %2868

2771:                                             ; preds = %2767
  %2772 = ptrtoint ptr %2769 to i64
  %2773 = ptrtoint ptr %2768 to i64
  %2774 = sub i64 %2748, %2773
  %2775 = getelementptr i8, ptr %2768, i64 %2774
  %2776 = icmp ult i64 %2774, 8
  %2777 = sub i64 %2772, %2773
  %2778 = icmp ult i64 %2777, 32
  %2779 = select i1 %2776, i1 true, i1 %2778
  br i1 %2779, label %2815, label %2780

2780:                                             ; preds = %2771
  %2781 = icmp ult i64 %2774, 32
  br i1 %2781, label %2801, label %2782

2782:                                             ; preds = %2780
  %2783 = and i64 %2774, -32
  br label %2784

2784:                                             ; preds = %2784, %2782
  %2785 = phi i64 [ 0, %2782 ], [ %2792, %2784 ]
  %2786 = getelementptr i8, ptr %2769, i64 %2785
  %2787 = getelementptr i8, ptr %2768, i64 %2785
  %2788 = getelementptr i8, ptr %2787, i64 16
  %2789 = load <16 x i8>, ptr %2787, align 1, !tbaa !35
  %2790 = load <16 x i8>, ptr %2788, align 1, !tbaa !35
  %2791 = getelementptr i8, ptr %2786, i64 16
  store <16 x i8> %2789, ptr %2786, align 1, !tbaa !35
  store <16 x i8> %2790, ptr %2791, align 1, !tbaa !35
  %2792 = add nuw i64 %2785, 32
  %2793 = icmp eq i64 %2792, %2783
  br i1 %2793, label %2794, label %2784, !llvm.loop !120

2794:                                             ; preds = %2784
  %2795 = icmp eq i64 %2774, %2783
  br i1 %2795, label %2868, label %2796

2796:                                             ; preds = %2794
  %2797 = getelementptr i8, ptr %2768, i64 %2783
  %2798 = getelementptr i8, ptr %2769, i64 %2783
  %2799 = and i64 %2774, 24
  %2800 = icmp eq i64 %2799, 0
  br i1 %2800, label %2815, label %2801

2801:                                             ; preds = %2780, %2796
  %2802 = phi i64 [ %2783, %2796 ], [ 0, %2780 ]
  %2803 = and i64 %2774, -8
  %2804 = getelementptr i8, ptr %2769, i64 %2803
  %2805 = getelementptr i8, ptr %2768, i64 %2803
  br label %2806

2806:                                             ; preds = %2806, %2801
  %2807 = phi i64 [ %2802, %2801 ], [ %2811, %2806 ]
  %2808 = getelementptr i8, ptr %2769, i64 %2807
  %2809 = getelementptr i8, ptr %2768, i64 %2807
  %2810 = load <8 x i8>, ptr %2809, align 1, !tbaa !35
  store <8 x i8> %2810, ptr %2808, align 1, !tbaa !35
  %2811 = add nuw i64 %2807, 8
  %2812 = icmp eq i64 %2811, %2803
  br i1 %2812, label %2813, label %2806, !llvm.loop !121

2813:                                             ; preds = %2806
  %2814 = icmp eq i64 %2774, %2803
  br i1 %2814, label %2868, label %2815

2815:                                             ; preds = %2771, %2796, %2813
  %2816 = phi ptr [ %2769, %2771 ], [ %2798, %2796 ], [ %2804, %2813 ]
  %2817 = phi ptr [ %2768, %2771 ], [ %2797, %2796 ], [ %2805, %2813 ]
  %2818 = ptrtoint ptr %2817 to i64
  %2819 = sub i64 %2717, %2818
  %2820 = and i64 %2819, 7
  %2821 = icmp eq i64 %2820, 0
  br i1 %2821, label %2831, label %2822

2822:                                             ; preds = %2815, %2822
  %2823 = phi ptr [ %2828, %2822 ], [ %2816, %2815 ]
  %2824 = phi ptr [ %2826, %2822 ], [ %2817, %2815 ]
  %2825 = phi i64 [ %2829, %2822 ], [ 0, %2815 ]
  %2826 = getelementptr inbounds i8, ptr %2824, i64 1
  %2827 = load i8, ptr %2824, align 1, !tbaa !35
  %2828 = getelementptr inbounds i8, ptr %2823, i64 1
  store i8 %2827, ptr %2823, align 1, !tbaa !35
  %2829 = add i64 %2825, 1
  %2830 = icmp eq i64 %2829, %2820
  br i1 %2830, label %2831, label %2822, !llvm.loop !122

2831:                                             ; preds = %2822, %2815
  %2832 = phi ptr [ %2816, %2815 ], [ %2828, %2822 ]
  %2833 = phi ptr [ %2817, %2815 ], [ %2826, %2822 ]
  %2834 = sub i64 %2818, %2717
  %2835 = icmp ugt i64 %2834, -8
  br i1 %2835, label %2868, label %2836

2836:                                             ; preds = %2831, %2836
  %2837 = phi ptr [ %2862, %2836 ], [ %2832, %2831 ]
  %2838 = phi ptr [ %2860, %2836 ], [ %2833, %2831 ]
  %2839 = getelementptr inbounds i8, ptr %2838, i64 1
  %2840 = load i8, ptr %2838, align 1, !tbaa !35
  %2841 = getelementptr inbounds i8, ptr %2837, i64 1
  store i8 %2840, ptr %2837, align 1, !tbaa !35
  %2842 = getelementptr inbounds i8, ptr %2838, i64 2
  %2843 = load i8, ptr %2839, align 1, !tbaa !35
  %2844 = getelementptr inbounds i8, ptr %2837, i64 2
  store i8 %2843, ptr %2841, align 1, !tbaa !35
  %2845 = getelementptr inbounds i8, ptr %2838, i64 3
  %2846 = load i8, ptr %2842, align 1, !tbaa !35
  %2847 = getelementptr inbounds i8, ptr %2837, i64 3
  store i8 %2846, ptr %2844, align 1, !tbaa !35
  %2848 = getelementptr inbounds i8, ptr %2838, i64 4
  %2849 = load i8, ptr %2845, align 1, !tbaa !35
  %2850 = getelementptr inbounds i8, ptr %2837, i64 4
  store i8 %2849, ptr %2847, align 1, !tbaa !35
  %2851 = getelementptr inbounds i8, ptr %2838, i64 5
  %2852 = load i8, ptr %2848, align 1, !tbaa !35
  %2853 = getelementptr inbounds i8, ptr %2837, i64 5
  store i8 %2852, ptr %2850, align 1, !tbaa !35
  %2854 = getelementptr inbounds i8, ptr %2838, i64 6
  %2855 = load i8, ptr %2851, align 1, !tbaa !35
  %2856 = getelementptr inbounds i8, ptr %2837, i64 6
  store i8 %2855, ptr %2853, align 1, !tbaa !35
  %2857 = getelementptr inbounds i8, ptr %2838, i64 7
  %2858 = load i8, ptr %2854, align 1, !tbaa !35
  %2859 = getelementptr inbounds i8, ptr %2837, i64 7
  store i8 %2858, ptr %2856, align 1, !tbaa !35
  %2860 = getelementptr inbounds i8, ptr %2838, i64 8
  %2861 = load i8, ptr %2857, align 1, !tbaa !35
  %2862 = getelementptr inbounds i8, ptr %2837, i64 8
  store i8 %2861, ptr %2859, align 1, !tbaa !35
  %2863 = icmp eq ptr %2860, %2775
  br i1 %2863, label %2868, label %2836, !llvm.loop !123

2864:                                             ; preds = %2727, %2724
  %2865 = load ptr, ptr %2067, align 8, !tbaa !36
  %2866 = getelementptr inbounds i8, ptr %2865, i64 %2719
  store ptr %2866, ptr %2067, align 8, !tbaa !36
  %2867 = load ptr, ptr %2070, align 8, !tbaa !46
  br label %2880

2868:                                             ; preds = %2737, %2831, %2836, %2794, %2813, %2767
  %2869 = load ptr, ptr %2067, align 8, !tbaa !36
  %2870 = getelementptr inbounds i8, ptr %2869, i64 %2719
  store ptr %2870, ptr %2067, align 8, !tbaa !36
  %2871 = icmp ugt i64 %2719, 65535
  %2872 = load ptr, ptr %2070, align 8, !tbaa !46
  br i1 %2871, label %2873, label %2880, !prof !107

2873:                                             ; preds = %2868
  store i32 1, ptr %2069, align 8, !tbaa !48
  %2874 = load ptr, ptr %1, align 8, !tbaa !49
  %2875 = ptrtoint ptr %2872 to i64
  %2876 = ptrtoint ptr %2874 to i64
  %2877 = sub i64 %2875, %2876
  %2878 = lshr exact i64 %2877, 3
  %2879 = trunc i64 %2878 to i32
  store i32 %2879, ptr %2071, align 4, !tbaa !50
  br label %2880

2880:                                             ; preds = %2873, %2868, %2864
  %2881 = phi ptr [ %2867, %2864 ], [ %2872, %2873 ], [ %2872, %2868 ]
  %2882 = trunc i64 %2719 to i16
  %2883 = getelementptr inbounds %struct.SeqDef_s, ptr %2881, i64 0, i32 1
  store i16 %2882, ptr %2883, align 4, !tbaa !51
  store i32 %2720, ptr %2881, align 4, !tbaa !53
  %2884 = add i64 %2715, -3
  %2885 = icmp ugt i64 %2884, 65535
  br i1 %2885, label %2886, label %2899, !prof !54

2886:                                             ; preds = %2880, %2300
  %2887 = phi ptr [ %2301, %2300 ], [ %2881, %2880 ]
  %2888 = phi i64 [ %2304, %2300 ], [ %2884, %2880 ]
  %2889 = phi i64 [ %2136, %2300 ], [ %2715, %2880 ]
  %2890 = phi i32 [ %2082, %2300 ], [ %2081, %2880 ]
  %2891 = phi i32 [ %2081, %2300 ], [ %2714, %2880 ]
  %2892 = phi ptr [ %2128, %2300 ], [ %2716, %2880 ]
  store i32 2, ptr %2069, align 8, !tbaa !48
  %2893 = load ptr, ptr %1, align 8, !tbaa !49
  %2894 = ptrtoint ptr %2887 to i64
  %2895 = ptrtoint ptr %2893 to i64
  %2896 = sub i64 %2894, %2895
  %2897 = lshr exact i64 %2896, 3
  %2898 = trunc i64 %2897 to i32
  store i32 %2898, ptr %2071, align 4, !tbaa !50
  br label %2899

2899:                                             ; preds = %2886, %2880, %2300
  %2900 = phi i64 [ %2304, %2300 ], [ %2884, %2880 ], [ %2888, %2886 ]
  %2901 = phi ptr [ %2301, %2300 ], [ %2881, %2880 ], [ %2887, %2886 ]
  %2902 = phi i64 [ %2136, %2300 ], [ %2715, %2880 ], [ %2889, %2886 ]
  %2903 = phi i32 [ %2082, %2300 ], [ %2081, %2880 ], [ %2890, %2886 ]
  %2904 = phi i32 [ %2081, %2300 ], [ %2714, %2880 ], [ %2891, %2886 ]
  %2905 = phi ptr [ %2128, %2300 ], [ %2716, %2880 ], [ %2892, %2886 ]
  %2906 = trunc i64 %2900 to i16
  %2907 = getelementptr inbounds %struct.SeqDef_s, ptr %2901, i64 0, i32 2
  store i16 %2906, ptr %2907, align 2, !tbaa !61
  %2908 = getelementptr inbounds %struct.SeqDef_s, ptr %2901, i64 1
  store ptr %2908, ptr %2070, align 8, !tbaa !46
  %2909 = getelementptr inbounds i8, ptr %2905, i64 %2902
  %2910 = icmp ugt ptr %2909, %39
  br i1 %2910, label %2993, label %2911

2911:                                             ; preds = %2899
  %2912 = add i32 %2106, 2
  %2913 = zext i32 %2912 to i64
  %2914 = getelementptr inbounds i8, ptr %18, i64 %2913
  %2915 = load i64, ptr %2914, align 1, !tbaa !21
  %2916 = mul i64 %2915, -3523014627327384477
  %2917 = lshr i64 %2916, %2059
  %2918 = getelementptr inbounds i32, ptr %10, i64 %2917
  store i32 %2912, ptr %2918, align 4, !tbaa !22
  %2919 = getelementptr inbounds i8, ptr %2909, i64 -2
  %2920 = ptrtoint ptr %2919 to i64
  %2921 = sub i64 %2920, %20
  %2922 = trunc i64 %2921 to i32
  %2923 = load i64, ptr %2919, align 1, !tbaa !21
  %2924 = mul i64 %2923, -3523014627327384477
  %2925 = lshr i64 %2924, %2059
  %2926 = getelementptr inbounds i32, ptr %10, i64 %2925
  store i32 %2922, ptr %2926, align 4, !tbaa !22
  %2927 = mul i64 %2915, -3523014627193847808
  %2928 = lshr i64 %2927, %2061
  %2929 = getelementptr inbounds i32, ptr %14, i64 %2928
  store i32 %2912, ptr %2929, align 4, !tbaa !22
  %2930 = getelementptr inbounds i8, ptr %2909, i64 -1
  %2931 = ptrtoint ptr %2930 to i64
  %2932 = sub i64 %2931, %20
  %2933 = trunc i64 %2932 to i32
  %2934 = load i64, ptr %2930, align 1, !tbaa !21
  %2935 = mul i64 %2934, -3523014627193847808
  %2936 = lshr i64 %2935, %2061
  %2937 = getelementptr inbounds i32, ptr %14, i64 %2936
  store i32 %2933, ptr %2937, align 4, !tbaa !22
  br label %2938

2938:                                             ; preds = %2980, %2911
  %2939 = phi ptr [ %2908, %2911 ], [ %2983, %2980 ]
  %2940 = phi ptr [ %2909, %2911 ], [ %2991, %2980 ]
  %2941 = phi i32 [ %2904, %2911 ], [ %2942, %2980 ]
  %2942 = phi i32 [ %2903, %2911 ], [ %2941, %2980 ]
  %2943 = ptrtoint ptr %2940 to i64
  %2944 = sub i64 %2943, %20
  %2945 = trunc i64 %2944 to i32
  %2946 = sub i32 %2945, %2942
  %2947 = icmp ult i32 %2946, %35
  %2948 = zext i32 %2946 to i64
  %2949 = select i1 %2947, ptr %2077, ptr %18
  %2950 = getelementptr i8, ptr %2949, i64 %2948
  %2951 = sub i32 %2946, %35
  %2952 = icmp ugt i32 %2951, -4
  br i1 %2952, label %2993, label %2953

2953:                                             ; preds = %2938
  %2954 = load i32, ptr %2950, align 1, !tbaa !22
  %2955 = load i32, ptr %2940, align 1, !tbaa !22
  %2956 = icmp eq i32 %2954, %2955
  br i1 %2956, label %2957, label %2993

2957:                                             ; preds = %2953
  %2958 = select i1 %2947, ptr %55, ptr %38
  %2959 = getelementptr inbounds i8, ptr %2940, i64 4
  %2960 = getelementptr inbounds i8, ptr %2950, i64 4
  %2961 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %2959, ptr noundef nonnull %2960, ptr noundef %38, ptr noundef %2958, ptr noundef %37)
  %2962 = add i64 %2961, 4
  %2963 = icmp ugt ptr %2940, %2066
  br i1 %2963, label %2968, label %2964

2964:                                             ; preds = %2957
  %2965 = load ptr, ptr %2067, align 8, !tbaa !36
  %2966 = load <2 x i64>, ptr %2940, align 1, !tbaa !35
  store <2 x i64> %2966, ptr %2965, align 1, !tbaa !35
  %2967 = load ptr, ptr %2070, align 8, !tbaa !46
  br label %2968

2968:                                             ; preds = %2964, %2957
  %2969 = phi ptr [ %2939, %2957 ], [ %2967, %2964 ]
  %2970 = getelementptr inbounds %struct.SeqDef_s, ptr %2969, i64 0, i32 1
  store i16 0, ptr %2970, align 4, !tbaa !51
  store i32 1, ptr %2969, align 4, !tbaa !53
  %2971 = add i64 %2961, 1
  %2972 = icmp ugt i64 %2971, 65535
  br i1 %2972, label %2973, label %2980, !prof !54

2973:                                             ; preds = %2968
  store i32 2, ptr %2069, align 8, !tbaa !48
  %2974 = load ptr, ptr %1, align 8, !tbaa !49
  %2975 = ptrtoint ptr %2969 to i64
  %2976 = ptrtoint ptr %2974 to i64
  %2977 = sub i64 %2975, %2976
  %2978 = lshr exact i64 %2977, 3
  %2979 = trunc i64 %2978 to i32
  store i32 %2979, ptr %2071, align 4, !tbaa !50
  br label %2980

2980:                                             ; preds = %2973, %2968
  %2981 = trunc i64 %2971 to i16
  %2982 = getelementptr inbounds %struct.SeqDef_s, ptr %2969, i64 0, i32 2
  store i16 %2981, ptr %2982, align 2, !tbaa !61
  %2983 = getelementptr inbounds %struct.SeqDef_s, ptr %2969, i64 1
  store ptr %2983, ptr %2070, align 8, !tbaa !46
  %2984 = load i64, ptr %2940, align 1, !tbaa !21
  %2985 = mul i64 %2984, -3523014627193847808
  %2986 = lshr i64 %2985, %2061
  %2987 = getelementptr inbounds i32, ptr %14, i64 %2986
  store i32 %2945, ptr %2987, align 4, !tbaa !22
  %2988 = mul i64 %2984, -3523014627327384477
  %2989 = lshr i64 %2988, %2059
  %2990 = getelementptr inbounds i32, ptr %10, i64 %2989
  store i32 %2945, ptr %2990, align 4, !tbaa !22
  %2991 = getelementptr inbounds i8, ptr %2940, i64 %2962
  %2992 = icmp ugt ptr %2991, %39
  br i1 %2992, label %2993, label %2938

2993:                                             ; preds = %2980, %2953, %2938, %2899, %2449
  %2994 = phi i32 [ %2082, %2449 ], [ %2903, %2899 ], [ %2942, %2938 ], [ %2942, %2953 ], [ %2941, %2980 ]
  %2995 = phi i32 [ %2081, %2449 ], [ %2904, %2899 ], [ %2941, %2938 ], [ %2941, %2953 ], [ %2942, %2980 ]
  %2996 = phi ptr [ %2080, %2449 ], [ %2909, %2899 ], [ %2940, %2938 ], [ %2940, %2953 ], [ %2991, %2980 ]
  %2997 = phi ptr [ %2454, %2449 ], [ %2909, %2899 ], [ %2940, %2938 ], [ %2940, %2953 ], [ %2991, %2980 ]
  %2998 = icmp ult ptr %2997, %39
  br i1 %2998, label %2078, label %2999

2999:                                             ; preds = %2993
  %3000 = ptrtoint ptr %2996 to i64
  br label %3976

3001:                                             ; preds = %5
  br i1 %70, label %3002, label %3003, !nosanitize !88

3002:                                             ; preds = %3001
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !88
  unreachable, !nosanitize !88

3003:                                             ; preds = %3001
  %3004 = extractvalue { i64, i1 } %69, 0, !nosanitize !88
  %3005 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 18
  %3006 = load i32, ptr %3005, align 8, !tbaa !89
  %3007 = icmp eq i32 %3006, 0
  br i1 %3007, label %3026, label %3008

3008:                                             ; preds = %3003
  %3009 = zext nneg i32 %62 to i64
  %3010 = shl i64 4, %3009
  %3011 = zext nneg i32 %64 to i64
  %3012 = shl i64 4, %3011
  %3013 = icmp ugt i32 %62, 61
  br i1 %3013, label %3014, label %3016

3014:                                             ; preds = %3016, %3008
  %3015 = icmp ugt i32 %64, 61
  br i1 %3015, label %3026, label %3021

3016:                                             ; preds = %3008, %3016
  %3017 = phi i64 [ %3019, %3016 ], [ 0, %3008 ]
  %3018 = getelementptr inbounds i8, ptr %46, i64 %3017
  tail call void @llvm.prefetch.p0(ptr %3018, i32 0, i32 2, i32 1)
  %3019 = add i64 %3017, 64
  %3020 = icmp ult i64 %3019, %3010
  br i1 %3020, label %3016, label %3014, !llvm.loop !90

3021:                                             ; preds = %3014, %3021
  %3022 = phi i64 [ %3024, %3021 ], [ 0, %3014 ]
  %3023 = getelementptr inbounds i8, ptr %48, i64 %3022
  tail call void @llvm.prefetch.p0(ptr %3023, i32 0, i32 2, i32 1)
  %3024 = add i64 %3022, 64
  %3025 = icmp ult i64 %3024, %3012
  br i1 %3025, label %3021, label %3026, !llvm.loop !91

3026:                                             ; preds = %3021, %3014, %3003
  %3027 = and i64 %3004, 4294967295
  %3028 = icmp eq i64 %3027, 0
  %3029 = zext i1 %3028 to i64
  %3030 = getelementptr inbounds i8, ptr %3, i64 %3029
  %3031 = icmp ult ptr %3030, %39
  br i1 %3031, label %3032, label %3976

3032:                                             ; preds = %3026
  %3033 = sub i32 64, %12
  %3034 = zext nneg i32 %3033 to i64
  %3035 = sub i32 64, %16
  %3036 = zext nneg i32 %3035 to i64
  %3037 = sub i32 56, %62
  %3038 = zext nneg i32 %3037 to i64
  %3039 = sub i32 56, %64
  %3040 = zext nneg i32 %3039 to i64
  %3041 = getelementptr inbounds i8, ptr %38, i64 -32
  %3042 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %3043 = ptrtoint ptr %3041 to i64
  %3044 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %3045 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %3046 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  %3047 = getelementptr inbounds i8, ptr %38, i64 -7
  %3048 = getelementptr inbounds i8, ptr %38, i64 -3
  %3049 = getelementptr inbounds i8, ptr %38, i64 -1
  %3050 = zext i32 %60 to i64
  %3051 = sub nsw i64 0, %3050
  %3052 = getelementptr i8, ptr %52, i64 %3051
  br label %3053

3053:                                             ; preds = %3968, %3032
  %3054 = phi ptr [ %3030, %3032 ], [ %3972, %3968 ]
  %3055 = phi ptr [ %3, %3032 ], [ %3971, %3968 ]
  %3056 = phi i32 [ %40, %3032 ], [ %3970, %3968 ]
  %3057 = phi i32 [ %42, %3032 ], [ %3969, %3968 ]
  %3058 = load i64, ptr %3054, align 1, !tbaa !21
  %3059 = mul i64 %3058, -3523014627327384477
  %3060 = lshr i64 %3059, %3034
  %3061 = mul i64 %3058, -3523014627193167104
  %3062 = lshr i64 %3061, %3036
  %3063 = lshr i64 %3059, %3038
  %3064 = lshr i64 %3061, %3040
  %3065 = lshr i64 %3063, 8
  %3066 = getelementptr inbounds i32, ptr %46, i64 %3065
  %3067 = load i32, ptr %3066, align 4, !tbaa !22
  %3068 = lshr i64 %3064, 8
  %3069 = getelementptr inbounds i32, ptr %48, i64 %3068
  %3070 = load i32, ptr %3069, align 4, !tbaa !22
  %3071 = zext i32 %3067 to i64
  %3072 = xor i64 %3063, %3071
  %3073 = and i64 %3072, 255
  %3074 = icmp eq i64 %3073, 0
  %3075 = zext i32 %3070 to i64
  %3076 = xor i64 %3064, %3075
  %3077 = and i64 %3076, 255
  %3078 = icmp eq i64 %3077, 0
  %3079 = ptrtoint ptr %3054 to i64
  %3080 = sub i64 %3079, %20
  %3081 = trunc i64 %3080 to i32
  %3082 = getelementptr inbounds i32, ptr %10, i64 %3060
  %3083 = load i32, ptr %3082, align 4, !tbaa !22
  %3084 = getelementptr inbounds i32, ptr %14, i64 %3062
  %3085 = load i32, ptr %3084, align 4, !tbaa !22
  %3086 = zext i32 %3083 to i64
  %3087 = getelementptr inbounds i8, ptr %18, i64 %3086
  %3088 = zext i32 %3085 to i64
  %3089 = getelementptr inbounds i8, ptr %18, i64 %3088
  %3090 = add i32 %3081, 1
  %3091 = sub i32 %3090, %3056
  %3092 = icmp ult i32 %3091, %35
  %3093 = sub i32 %3091, %60
  %3094 = zext i32 %3093 to i64
  %3095 = getelementptr inbounds i8, ptr %52, i64 %3094
  %3096 = zext i32 %3091 to i64
  %3097 = getelementptr inbounds i8, ptr %18, i64 %3096
  %3098 = select i1 %3092, ptr %3095, ptr %3097
  store i32 %3081, ptr %3084, align 4, !tbaa !22
  store i32 %3081, ptr %3082, align 4, !tbaa !22
  %3099 = sub i32 %3091, %35
  %3100 = icmp ugt i32 %3099, -4
  br i1 %3100, label %3281, label %3101

3101:                                             ; preds = %3053
  %3102 = load i32, ptr %3098, align 1, !tbaa !22
  %3103 = getelementptr inbounds i8, ptr %3054, i64 1
  %3104 = load i32, ptr %3103, align 1, !tbaa !22
  %3105 = icmp eq i32 %3102, %3104
  br i1 %3105, label %3106, label %3281

3106:                                             ; preds = %3101
  %3107 = select i1 %3092, ptr %55, ptr %38
  %3108 = getelementptr inbounds i8, ptr %3054, i64 5
  %3109 = getelementptr inbounds i8, ptr %3098, i64 4
  %3110 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %3108, ptr noundef nonnull %3109, ptr noundef %38, ptr noundef %3107, ptr noundef %37)
  %3111 = add i64 %3110, 4
  %3112 = ptrtoint ptr %3103 to i64
  %3113 = ptrtoint ptr %3055 to i64
  %3114 = sub i64 %3112, %3113
  %3115 = getelementptr inbounds i8, ptr %3055, i64 %3114
  %3116 = icmp ugt ptr %3115, %3041
  %3117 = load ptr, ptr %3042, align 8, !tbaa !36
  br i1 %3116, label %3141, label %3118

3118:                                             ; preds = %3106
  %3119 = load <2 x i64>, ptr %3055, align 1, !tbaa !35
  store <2 x i64> %3119, ptr %3117, align 1, !tbaa !35
  %3120 = icmp ugt i64 %3114, 16
  br i1 %3120, label %3121, label %3259

3121:                                             ; preds = %3118
  %3122 = load ptr, ptr %3042, align 8, !tbaa !36
  %3123 = getelementptr inbounds i8, ptr %3122, i64 16
  %3124 = getelementptr inbounds i8, ptr %3055, i64 16
  %3125 = add i64 %3114, -16
  %3126 = getelementptr inbounds i8, ptr %3122, i64 %3114
  %3127 = load <2 x i64>, ptr %3124, align 1, !tbaa !35
  store <2 x i64> %3127, ptr %3123, align 1, !tbaa !35
  %3128 = icmp ult i64 %3125, 17
  br i1 %3128, label %3259, label %3129

3129:                                             ; preds = %3121
  %3130 = getelementptr inbounds i8, ptr %3122, i64 32
  br label %3131

3131:                                             ; preds = %3131, %3129
  %3132 = phi ptr [ %3130, %3129 ], [ %3139, %3131 ]
  %3133 = phi ptr [ %3124, %3129 ], [ %3137, %3131 ]
  %3134 = getelementptr inbounds i8, ptr %3133, i64 16
  %3135 = load <2 x i64>, ptr %3134, align 1, !tbaa !35
  store <2 x i64> %3135, ptr %3132, align 1, !tbaa !35
  %3136 = getelementptr inbounds i8, ptr %3132, i64 16
  %3137 = getelementptr inbounds i8, ptr %3133, i64 32
  %3138 = load <2 x i64>, ptr %3137, align 1, !tbaa !35
  store <2 x i64> %3138, ptr %3136, align 1, !tbaa !35
  %3139 = getelementptr inbounds i8, ptr %3132, i64 32
  %3140 = icmp ult ptr %3139, %3126
  br i1 %3140, label %3131, label %3263, !llvm.loop !38

3141:                                             ; preds = %3106
  %3142 = ptrtoint ptr %3115 to i64
  %3143 = icmp ugt ptr %3055, %3041
  br i1 %3143, label %3161, label %3144

3144:                                             ; preds = %3141
  %3145 = sub i64 %3043, %3113
  %3146 = getelementptr inbounds i8, ptr %3117, i64 %3145
  %3147 = load <2 x i64>, ptr %3055, align 1, !tbaa !35
  store <2 x i64> %3147, ptr %3117, align 1, !tbaa !35
  %3148 = icmp ult i64 %3145, 17
  br i1 %3148, label %3161, label %3149

3149:                                             ; preds = %3144
  %3150 = getelementptr inbounds i8, ptr %3117, i64 16
  br label %3151

3151:                                             ; preds = %3151, %3149
  %3152 = phi ptr [ %3150, %3149 ], [ %3159, %3151 ]
  %3153 = phi ptr [ %3055, %3149 ], [ %3157, %3151 ]
  %3154 = getelementptr inbounds i8, ptr %3153, i64 16
  %3155 = load <2 x i64>, ptr %3154, align 1, !tbaa !35
  store <2 x i64> %3155, ptr %3152, align 1, !tbaa !35
  %3156 = getelementptr inbounds i8, ptr %3152, i64 16
  %3157 = getelementptr inbounds i8, ptr %3153, i64 32
  %3158 = load <2 x i64>, ptr %3157, align 1, !tbaa !35
  store <2 x i64> %3158, ptr %3156, align 1, !tbaa !35
  %3159 = getelementptr inbounds i8, ptr %3152, i64 32
  %3160 = icmp ult ptr %3159, %3146
  br i1 %3160, label %3151, label %3161, !llvm.loop !38

3161:                                             ; preds = %3151, %3144, %3141
  %3162 = phi ptr [ %3041, %3144 ], [ %3055, %3141 ], [ %3041, %3151 ]
  %3163 = phi ptr [ %3146, %3144 ], [ %3117, %3141 ], [ %3146, %3151 ]
  %3164 = icmp ult ptr %3162, %3115
  br i1 %3164, label %3165, label %3263

3165:                                             ; preds = %3161
  %3166 = ptrtoint ptr %3163 to i64
  %3167 = ptrtoint ptr %3162 to i64
  %3168 = sub i64 %3142, %3167
  %3169 = getelementptr i8, ptr %3162, i64 %3168
  %3170 = icmp ult i64 %3168, 8
  %3171 = sub i64 %3166, %3167
  %3172 = icmp ult i64 %3171, 32
  %3173 = select i1 %3170, i1 true, i1 %3172
  br i1 %3173, label %3209, label %3174

3174:                                             ; preds = %3165
  %3175 = icmp ult i64 %3168, 32
  br i1 %3175, label %3195, label %3176

3176:                                             ; preds = %3174
  %3177 = and i64 %3168, -32
  br label %3178

3178:                                             ; preds = %3178, %3176
  %3179 = phi i64 [ 0, %3176 ], [ %3186, %3178 ]
  %3180 = getelementptr i8, ptr %3163, i64 %3179
  %3181 = getelementptr i8, ptr %3162, i64 %3179
  %3182 = getelementptr i8, ptr %3181, i64 16
  %3183 = load <16 x i8>, ptr %3181, align 1, !tbaa !35
  %3184 = load <16 x i8>, ptr %3182, align 1, !tbaa !35
  %3185 = getelementptr i8, ptr %3180, i64 16
  store <16 x i8> %3183, ptr %3180, align 1, !tbaa !35
  store <16 x i8> %3184, ptr %3185, align 1, !tbaa !35
  %3186 = add nuw i64 %3179, 32
  %3187 = icmp eq i64 %3186, %3177
  br i1 %3187, label %3188, label %3178, !llvm.loop !124

3188:                                             ; preds = %3178
  %3189 = icmp eq i64 %3168, %3177
  br i1 %3189, label %3263, label %3190

3190:                                             ; preds = %3188
  %3191 = getelementptr i8, ptr %3162, i64 %3177
  %3192 = getelementptr i8, ptr %3163, i64 %3177
  %3193 = and i64 %3168, 24
  %3194 = icmp eq i64 %3193, 0
  br i1 %3194, label %3209, label %3195

3195:                                             ; preds = %3174, %3190
  %3196 = phi i64 [ %3177, %3190 ], [ 0, %3174 ]
  %3197 = and i64 %3168, -8
  %3198 = getelementptr i8, ptr %3163, i64 %3197
  %3199 = getelementptr i8, ptr %3162, i64 %3197
  br label %3200

3200:                                             ; preds = %3200, %3195
  %3201 = phi i64 [ %3196, %3195 ], [ %3205, %3200 ]
  %3202 = getelementptr i8, ptr %3163, i64 %3201
  %3203 = getelementptr i8, ptr %3162, i64 %3201
  %3204 = load <8 x i8>, ptr %3203, align 1, !tbaa !35
  store <8 x i8> %3204, ptr %3202, align 1, !tbaa !35
  %3205 = add nuw i64 %3201, 8
  %3206 = icmp eq i64 %3205, %3197
  br i1 %3206, label %3207, label %3200, !llvm.loop !125

3207:                                             ; preds = %3200
  %3208 = icmp eq i64 %3168, %3197
  br i1 %3208, label %3263, label %3209

3209:                                             ; preds = %3165, %3190, %3207
  %3210 = phi ptr [ %3163, %3165 ], [ %3192, %3190 ], [ %3198, %3207 ]
  %3211 = phi ptr [ %3162, %3165 ], [ %3191, %3190 ], [ %3199, %3207 ]
  %3212 = add i64 %3079, 1
  %3213 = ptrtoint ptr %3211 to i64
  %3214 = sub i64 %3212, %3213
  %3215 = sub i64 %3079, %3213
  %3216 = and i64 %3214, 7
  %3217 = icmp eq i64 %3216, 0
  br i1 %3217, label %3227, label %3218

3218:                                             ; preds = %3209, %3218
  %3219 = phi ptr [ %3224, %3218 ], [ %3210, %3209 ]
  %3220 = phi ptr [ %3222, %3218 ], [ %3211, %3209 ]
  %3221 = phi i64 [ %3225, %3218 ], [ 0, %3209 ]
  %3222 = getelementptr inbounds i8, ptr %3220, i64 1
  %3223 = load i8, ptr %3220, align 1, !tbaa !35
  %3224 = getelementptr inbounds i8, ptr %3219, i64 1
  store i8 %3223, ptr %3219, align 1, !tbaa !35
  %3225 = add i64 %3221, 1
  %3226 = icmp eq i64 %3225, %3216
  br i1 %3226, label %3227, label %3218, !llvm.loop !126

3227:                                             ; preds = %3218, %3209
  %3228 = phi ptr [ %3210, %3209 ], [ %3224, %3218 ]
  %3229 = phi ptr [ %3211, %3209 ], [ %3222, %3218 ]
  %3230 = icmp ult i64 %3215, 7
  br i1 %3230, label %3263, label %3231

3231:                                             ; preds = %3227, %3231
  %3232 = phi ptr [ %3257, %3231 ], [ %3228, %3227 ]
  %3233 = phi ptr [ %3255, %3231 ], [ %3229, %3227 ]
  %3234 = getelementptr inbounds i8, ptr %3233, i64 1
  %3235 = load i8, ptr %3233, align 1, !tbaa !35
  %3236 = getelementptr inbounds i8, ptr %3232, i64 1
  store i8 %3235, ptr %3232, align 1, !tbaa !35
  %3237 = getelementptr inbounds i8, ptr %3233, i64 2
  %3238 = load i8, ptr %3234, align 1, !tbaa !35
  %3239 = getelementptr inbounds i8, ptr %3232, i64 2
  store i8 %3238, ptr %3236, align 1, !tbaa !35
  %3240 = getelementptr inbounds i8, ptr %3233, i64 3
  %3241 = load i8, ptr %3237, align 1, !tbaa !35
  %3242 = getelementptr inbounds i8, ptr %3232, i64 3
  store i8 %3241, ptr %3239, align 1, !tbaa !35
  %3243 = getelementptr inbounds i8, ptr %3233, i64 4
  %3244 = load i8, ptr %3240, align 1, !tbaa !35
  %3245 = getelementptr inbounds i8, ptr %3232, i64 4
  store i8 %3244, ptr %3242, align 1, !tbaa !35
  %3246 = getelementptr inbounds i8, ptr %3233, i64 5
  %3247 = load i8, ptr %3243, align 1, !tbaa !35
  %3248 = getelementptr inbounds i8, ptr %3232, i64 5
  store i8 %3247, ptr %3245, align 1, !tbaa !35
  %3249 = getelementptr inbounds i8, ptr %3233, i64 6
  %3250 = load i8, ptr %3246, align 1, !tbaa !35
  %3251 = getelementptr inbounds i8, ptr %3232, i64 6
  store i8 %3250, ptr %3248, align 1, !tbaa !35
  %3252 = getelementptr inbounds i8, ptr %3233, i64 7
  %3253 = load i8, ptr %3249, align 1, !tbaa !35
  %3254 = getelementptr inbounds i8, ptr %3232, i64 7
  store i8 %3253, ptr %3251, align 1, !tbaa !35
  %3255 = getelementptr inbounds i8, ptr %3233, i64 8
  %3256 = load i8, ptr %3252, align 1, !tbaa !35
  %3257 = getelementptr inbounds i8, ptr %3232, i64 8
  store i8 %3256, ptr %3254, align 1, !tbaa !35
  %3258 = icmp eq ptr %3255, %3169
  br i1 %3258, label %3263, label %3231, !llvm.loop !127

3259:                                             ; preds = %3121, %3118
  %3260 = load ptr, ptr %3042, align 8, !tbaa !36
  %3261 = getelementptr inbounds i8, ptr %3260, i64 %3114
  store ptr %3261, ptr %3042, align 8, !tbaa !36
  %3262 = load ptr, ptr %3045, align 8, !tbaa !46
  br label %3275

3263:                                             ; preds = %3131, %3227, %3231, %3188, %3207, %3161
  %3264 = load ptr, ptr %3042, align 8, !tbaa !36
  %3265 = getelementptr inbounds i8, ptr %3264, i64 %3114
  store ptr %3265, ptr %3042, align 8, !tbaa !36
  %3266 = icmp ugt i64 %3114, 65535
  %3267 = load ptr, ptr %3045, align 8, !tbaa !46
  br i1 %3266, label %3268, label %3275, !prof !47

3268:                                             ; preds = %3263
  store i32 1, ptr %3044, align 8, !tbaa !48
  %3269 = load ptr, ptr %1, align 8, !tbaa !49
  %3270 = ptrtoint ptr %3267 to i64
  %3271 = ptrtoint ptr %3269 to i64
  %3272 = sub i64 %3270, %3271
  %3273 = lshr exact i64 %3272, 3
  %3274 = trunc i64 %3273 to i32
  store i32 %3274, ptr %3046, align 4, !tbaa !50
  br label %3275

3275:                                             ; preds = %3268, %3263, %3259
  %3276 = phi ptr [ %3262, %3259 ], [ %3267, %3268 ], [ %3267, %3263 ]
  %3277 = trunc i64 %3114 to i16
  %3278 = getelementptr inbounds %struct.SeqDef_s, ptr %3276, i64 0, i32 1
  store i16 %3277, ptr %3278, align 4, !tbaa !51
  store i32 1, ptr %3276, align 4, !tbaa !53
  %3279 = add i64 %3110, 1
  %3280 = icmp ugt i64 %3279, 65535
  br i1 %3280, label %3861, label %3874, !prof !54

3281:                                             ; preds = %3101, %3053
  %3282 = icmp ult i32 %3083, %35
  br i1 %3282, label %3376, label %3283

3283:                                             ; preds = %3281
  %3284 = load i64, ptr %3087, align 1, !tbaa !21
  %3285 = icmp eq i64 %3284, %3058
  br i1 %3285, label %3286, label %3376

3286:                                             ; preds = %3283
  %3287 = getelementptr inbounds i8, ptr %3054, i64 8
  %3288 = getelementptr inbounds i8, ptr %3087, i64 8
  %3289 = icmp ugt ptr %3047, %3287
  br i1 %3289, label %3290, label %3316

3290:                                             ; preds = %3286
  %3291 = load i64, ptr %3288, align 1, !tbaa !21
  %3292 = load i64, ptr %3287, align 1, !tbaa !21
  %3293 = xor i64 %3292, %3291
  %3294 = icmp eq i64 %3293, 0
  br i1 %3294, label %3298, label %3295

3295:                                             ; preds = %3290
  %3296 = tail call i64 @llvm.cttz.i64(i64 %3293, i1 true), !range !32
  %3297 = lshr i64 %3296, 3
  br label %3353

3298:                                             ; preds = %3290, %3304
  %3299 = phi ptr [ %3302, %3304 ], [ %3288, %3290 ]
  %3300 = phi ptr [ %3301, %3304 ], [ %3287, %3290 ]
  %3301 = getelementptr inbounds i8, ptr %3300, i64 8
  %3302 = getelementptr inbounds i8, ptr %3299, i64 8
  %3303 = icmp ult ptr %3301, %3047
  br i1 %3303, label %3304, label %3316

3304:                                             ; preds = %3298
  %3305 = load i64, ptr %3302, align 1, !tbaa !21
  %3306 = load i64, ptr %3301, align 1, !tbaa !21
  %3307 = xor i64 %3306, %3305
  %3308 = icmp eq i64 %3307, 0
  br i1 %3308, label %3298, label %3309

3309:                                             ; preds = %3304
  %3310 = tail call i64 @llvm.cttz.i64(i64 %3307, i1 true), !range !32
  %3311 = lshr i64 %3310, 3
  %3312 = getelementptr inbounds i8, ptr %3301, i64 %3311
  %3313 = ptrtoint ptr %3312 to i64
  %3314 = ptrtoint ptr %3287 to i64
  %3315 = sub i64 %3313, %3314
  br label %3353

3316:                                             ; preds = %3298, %3286
  %3317 = phi ptr [ %3288, %3286 ], [ %3302, %3298 ]
  %3318 = phi ptr [ %3287, %3286 ], [ %3301, %3298 ]
  %3319 = icmp ult ptr %3318, %3048
  br i1 %3319, label %3320, label %3327

3320:                                             ; preds = %3316
  %3321 = load i32, ptr %3317, align 1, !tbaa !22
  %3322 = load i32, ptr %3318, align 1, !tbaa !22
  %3323 = icmp eq i32 %3321, %3322
  br i1 %3323, label %3324, label %3327

3324:                                             ; preds = %3320
  %3325 = getelementptr inbounds i8, ptr %3318, i64 4
  %3326 = getelementptr inbounds i8, ptr %3317, i64 4
  br label %3327

3327:                                             ; preds = %3324, %3320, %3316
  %3328 = phi ptr [ %3326, %3324 ], [ %3317, %3320 ], [ %3317, %3316 ]
  %3329 = phi ptr [ %3325, %3324 ], [ %3318, %3320 ], [ %3318, %3316 ]
  %3330 = icmp ult ptr %3329, %3049
  br i1 %3330, label %3331, label %3338

3331:                                             ; preds = %3327
  %3332 = load i16, ptr %3328, align 1, !tbaa !33
  %3333 = load i16, ptr %3329, align 1, !tbaa !33
  %3334 = icmp eq i16 %3332, %3333
  br i1 %3334, label %3335, label %3338

3335:                                             ; preds = %3331
  %3336 = getelementptr inbounds i8, ptr %3329, i64 2
  %3337 = getelementptr inbounds i8, ptr %3328, i64 2
  br label %3338

3338:                                             ; preds = %3335, %3331, %3327
  %3339 = phi ptr [ %3337, %3335 ], [ %3328, %3331 ], [ %3328, %3327 ]
  %3340 = phi ptr [ %3336, %3335 ], [ %3329, %3331 ], [ %3329, %3327 ]
  %3341 = icmp ult ptr %3340, %38
  br i1 %3341, label %3342, label %3348

3342:                                             ; preds = %3338
  %3343 = load i8, ptr %3339, align 1, !tbaa !35
  %3344 = load i8, ptr %3340, align 1, !tbaa !35
  %3345 = icmp eq i8 %3343, %3344
  %3346 = zext i1 %3345 to i64
  %3347 = getelementptr inbounds i8, ptr %3340, i64 %3346
  br label %3348

3348:                                             ; preds = %3342, %3338
  %3349 = phi ptr [ %3340, %3338 ], [ %3347, %3342 ]
  %3350 = ptrtoint ptr %3349 to i64
  %3351 = ptrtoint ptr %3287 to i64
  %3352 = sub i64 %3350, %3351
  br label %3353

3353:                                             ; preds = %3348, %3309, %3295
  %3354 = phi i64 [ %3352, %3348 ], [ %3297, %3295 ], [ %3315, %3309 ]
  %3355 = add i64 %3354, 8
  %3356 = ptrtoint ptr %3087 to i64
  %3357 = sub i64 %3079, %3356
  %3358 = trunc i64 %3357 to i32
  %3359 = icmp ugt ptr %3054, %3055
  %3360 = icmp ugt i32 %3083, %35
  %3361 = and i1 %3359, %3360
  br i1 %3361, label %3362, label %3688

3362:                                             ; preds = %3353, %3371
  %3363 = phi ptr [ %3366, %3371 ], [ %3054, %3353 ]
  %3364 = phi i64 [ %3372, %3371 ], [ %3355, %3353 ]
  %3365 = phi ptr [ %3368, %3371 ], [ %3087, %3353 ]
  %3366 = getelementptr inbounds i8, ptr %3363, i64 -1
  %3367 = load i8, ptr %3366, align 1, !tbaa !35
  %3368 = getelementptr inbounds i8, ptr %3365, i64 -1
  %3369 = load i8, ptr %3368, align 1, !tbaa !35
  %3370 = icmp eq i8 %3367, %3369
  br i1 %3370, label %3371, label %3688

3371:                                             ; preds = %3362
  %3372 = add i64 %3364, 1
  %3373 = icmp ugt ptr %3366, %3055
  %3374 = icmp ugt ptr %3368, %37
  %3375 = and i1 %3373, %3374
  br i1 %3375, label %3362, label %3688, !llvm.loop !96

3376:                                             ; preds = %3283, %3281
  br i1 %3074, label %3377, label %3407

3377:                                             ; preds = %3376
  %3378 = lshr i32 %3067, 8
  %3379 = zext nneg i32 %3378 to i64
  %3380 = getelementptr inbounds i8, ptr %52, i64 %3379
  %3381 = icmp ugt i32 %3378, %50
  br i1 %3381, label %3382, label %3407

3382:                                             ; preds = %3377
  %3383 = load i64, ptr %3380, align 1, !tbaa !21
  %3384 = icmp eq i64 %3383, %3058
  br i1 %3384, label %3385, label %3407

3385:                                             ; preds = %3382
  %3386 = getelementptr inbounds i8, ptr %3054, i64 8
  %3387 = getelementptr inbounds i8, ptr %3380, i64 8
  %3388 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %3386, ptr noundef nonnull %3387, ptr noundef %38, ptr noundef %55, ptr noundef %37)
  %3389 = add i64 %3388, 8
  %3390 = add i32 %60, %3378
  %3391 = sub i32 %3081, %3390
  %3392 = icmp ugt ptr %3054, %3055
  br i1 %3392, label %3393, label %3688

3393:                                             ; preds = %3385, %3402
  %3394 = phi ptr [ %3397, %3402 ], [ %3054, %3385 ]
  %3395 = phi i64 [ %3403, %3402 ], [ %3389, %3385 ]
  %3396 = phi ptr [ %3399, %3402 ], [ %3380, %3385 ]
  %3397 = getelementptr inbounds i8, ptr %3394, i64 -1
  %3398 = load i8, ptr %3397, align 1, !tbaa !35
  %3399 = getelementptr inbounds i8, ptr %3396, i64 -1
  %3400 = load i8, ptr %3399, align 1, !tbaa !35
  %3401 = icmp eq i8 %3398, %3400
  br i1 %3401, label %3402, label %3688

3402:                                             ; preds = %3393
  %3403 = add i64 %3395, 1
  %3404 = icmp ugt ptr %3397, %3055
  %3405 = icmp ugt ptr %3399, %54
  %3406 = and i1 %3404, %3405
  br i1 %3406, label %3393, label %3688, !llvm.loop !97

3407:                                             ; preds = %3382, %3377, %3376
  %3408 = icmp ugt i32 %3085, %35
  br i1 %3408, label %3409, label %3413

3409:                                             ; preds = %3407
  %3410 = load i32, ptr %3089, align 1, !tbaa !22
  %3411 = load i32, ptr %3054, align 1, !tbaa !22
  %3412 = icmp eq i32 %3410, %3411
  br i1 %3412, label %3430, label %3424

3413:                                             ; preds = %3407
  br i1 %3078, label %3414, label %3424

3414:                                             ; preds = %3413
  %3415 = lshr i32 %3070, 8
  %3416 = icmp ugt i32 %3415, %50
  br i1 %3416, label %3417, label %3424

3417:                                             ; preds = %3414
  %3418 = add i32 %3415, %60
  %3419 = zext nneg i32 %3415 to i64
  %3420 = getelementptr inbounds i8, ptr %52, i64 %3419
  %3421 = load i32, ptr %3420, align 1, !tbaa !22
  %3422 = load i32, ptr %3054, align 1, !tbaa !22
  %3423 = icmp eq i32 %3421, %3422
  br i1 %3423, label %3430, label %3424

3424:                                             ; preds = %3417, %3414, %3413, %3409
  %3425 = ptrtoint ptr %3055 to i64
  %3426 = sub i64 %3079, %3425
  %3427 = ashr i64 %3426, 8
  %3428 = add nsw i64 %3427, 1
  %3429 = getelementptr inbounds i8, ptr %3054, i64 %3428
  br label %3968, !llvm.loop !98

3430:                                             ; preds = %3417, %3409
  %3431 = phi ptr [ %3089, %3409 ], [ %3420, %3417 ]
  %3432 = phi i32 [ %3085, %3409 ], [ %3418, %3417 ]
  %3433 = getelementptr inbounds i8, ptr %3054, i64 1
  %3434 = load i64, ptr %3433, align 1, !tbaa !21
  %3435 = mul i64 %3434, -3523014627327384477
  %3436 = lshr i64 %3435, %3034
  %3437 = lshr i64 %3435, %3038
  %3438 = getelementptr inbounds i32, ptr %10, i64 %3436
  %3439 = load i32, ptr %3438, align 4, !tbaa !22
  %3440 = lshr i64 %3437, 8
  %3441 = getelementptr inbounds i32, ptr %46, i64 %3440
  %3442 = load i32, ptr %3441, align 4, !tbaa !22
  %3443 = zext i32 %3442 to i64
  %3444 = xor i64 %3437, %3443
  %3445 = and i64 %3444, 255
  %3446 = icmp eq i64 %3445, 0
  %3447 = zext i32 %3439 to i64
  %3448 = getelementptr inbounds i8, ptr %18, i64 %3447
  store i32 %3090, ptr %3438, align 4, !tbaa !22
  %3449 = icmp ult i32 %3439, %35
  br i1 %3449, label %3544, label %3450

3450:                                             ; preds = %3430
  %3451 = load i64, ptr %3448, align 1, !tbaa !21
  %3452 = icmp eq i64 %3451, %3434
  br i1 %3452, label %3453, label %3544

3453:                                             ; preds = %3450
  %3454 = getelementptr inbounds i8, ptr %3054, i64 9
  %3455 = getelementptr inbounds i8, ptr %3448, i64 8
  %3456 = icmp ugt ptr %3047, %3454
  br i1 %3456, label %3457, label %3483

3457:                                             ; preds = %3453
  %3458 = load i64, ptr %3455, align 1, !tbaa !21
  %3459 = load i64, ptr %3454, align 1, !tbaa !21
  %3460 = xor i64 %3459, %3458
  %3461 = icmp eq i64 %3460, 0
  br i1 %3461, label %3465, label %3462

3462:                                             ; preds = %3457
  %3463 = tail call i64 @llvm.cttz.i64(i64 %3460, i1 true), !range !32
  %3464 = lshr i64 %3463, 3
  br label %3520

3465:                                             ; preds = %3457, %3471
  %3466 = phi ptr [ %3469, %3471 ], [ %3455, %3457 ]
  %3467 = phi ptr [ %3468, %3471 ], [ %3454, %3457 ]
  %3468 = getelementptr inbounds i8, ptr %3467, i64 8
  %3469 = getelementptr inbounds i8, ptr %3466, i64 8
  %3470 = icmp ult ptr %3468, %3047
  br i1 %3470, label %3471, label %3483

3471:                                             ; preds = %3465
  %3472 = load i64, ptr %3469, align 1, !tbaa !21
  %3473 = load i64, ptr %3468, align 1, !tbaa !21
  %3474 = xor i64 %3473, %3472
  %3475 = icmp eq i64 %3474, 0
  br i1 %3475, label %3465, label %3476

3476:                                             ; preds = %3471
  %3477 = tail call i64 @llvm.cttz.i64(i64 %3474, i1 true), !range !32
  %3478 = lshr i64 %3477, 3
  %3479 = getelementptr inbounds i8, ptr %3468, i64 %3478
  %3480 = ptrtoint ptr %3479 to i64
  %3481 = ptrtoint ptr %3454 to i64
  %3482 = sub i64 %3480, %3481
  br label %3520

3483:                                             ; preds = %3465, %3453
  %3484 = phi ptr [ %3455, %3453 ], [ %3469, %3465 ]
  %3485 = phi ptr [ %3454, %3453 ], [ %3468, %3465 ]
  %3486 = icmp ult ptr %3485, %3048
  br i1 %3486, label %3487, label %3494

3487:                                             ; preds = %3483
  %3488 = load i32, ptr %3484, align 1, !tbaa !22
  %3489 = load i32, ptr %3485, align 1, !tbaa !22
  %3490 = icmp eq i32 %3488, %3489
  br i1 %3490, label %3491, label %3494

3491:                                             ; preds = %3487
  %3492 = getelementptr inbounds i8, ptr %3485, i64 4
  %3493 = getelementptr inbounds i8, ptr %3484, i64 4
  br label %3494

3494:                                             ; preds = %3491, %3487, %3483
  %3495 = phi ptr [ %3493, %3491 ], [ %3484, %3487 ], [ %3484, %3483 ]
  %3496 = phi ptr [ %3492, %3491 ], [ %3485, %3487 ], [ %3485, %3483 ]
  %3497 = icmp ult ptr %3496, %3049
  br i1 %3497, label %3498, label %3505

3498:                                             ; preds = %3494
  %3499 = load i16, ptr %3495, align 1, !tbaa !33
  %3500 = load i16, ptr %3496, align 1, !tbaa !33
  %3501 = icmp eq i16 %3499, %3500
  br i1 %3501, label %3502, label %3505

3502:                                             ; preds = %3498
  %3503 = getelementptr inbounds i8, ptr %3496, i64 2
  %3504 = getelementptr inbounds i8, ptr %3495, i64 2
  br label %3505

3505:                                             ; preds = %3502, %3498, %3494
  %3506 = phi ptr [ %3504, %3502 ], [ %3495, %3498 ], [ %3495, %3494 ]
  %3507 = phi ptr [ %3503, %3502 ], [ %3496, %3498 ], [ %3496, %3494 ]
  %3508 = icmp ult ptr %3507, %38
  br i1 %3508, label %3509, label %3515

3509:                                             ; preds = %3505
  %3510 = load i8, ptr %3506, align 1, !tbaa !35
  %3511 = load i8, ptr %3507, align 1, !tbaa !35
  %3512 = icmp eq i8 %3510, %3511
  %3513 = zext i1 %3512 to i64
  %3514 = getelementptr inbounds i8, ptr %3507, i64 %3513
  br label %3515

3515:                                             ; preds = %3509, %3505
  %3516 = phi ptr [ %3507, %3505 ], [ %3514, %3509 ]
  %3517 = ptrtoint ptr %3516 to i64
  %3518 = ptrtoint ptr %3454 to i64
  %3519 = sub i64 %3517, %3518
  br label %3520

3520:                                             ; preds = %3515, %3476, %3462
  %3521 = phi i64 [ %3519, %3515 ], [ %3464, %3462 ], [ %3482, %3476 ]
  %3522 = add i64 %3521, 8
  %3523 = ptrtoint ptr %3433 to i64
  %3524 = ptrtoint ptr %3448 to i64
  %3525 = sub i64 %3523, %3524
  %3526 = trunc i64 %3525 to i32
  %3527 = icmp ugt ptr %3433, %3055
  %3528 = icmp ugt i32 %3439, %35
  %3529 = and i1 %3527, %3528
  br i1 %3529, label %3530, label %3688

3530:                                             ; preds = %3520, %3539
  %3531 = phi ptr [ %3534, %3539 ], [ %3433, %3520 ]
  %3532 = phi i64 [ %3540, %3539 ], [ %3522, %3520 ]
  %3533 = phi ptr [ %3536, %3539 ], [ %3448, %3520 ]
  %3534 = getelementptr inbounds i8, ptr %3531, i64 -1
  %3535 = load i8, ptr %3534, align 1, !tbaa !35
  %3536 = getelementptr inbounds i8, ptr %3533, i64 -1
  %3537 = load i8, ptr %3536, align 1, !tbaa !35
  %3538 = icmp eq i8 %3535, %3537
  br i1 %3538, label %3539, label %3688

3539:                                             ; preds = %3530
  %3540 = add i64 %3532, 1
  %3541 = icmp ugt ptr %3534, %3055
  %3542 = icmp ugt ptr %3536, %37
  %3543 = and i1 %3541, %3542
  br i1 %3543, label %3530, label %3688, !llvm.loop !99

3544:                                             ; preds = %3450, %3430
  br i1 %3446, label %3545, label %3575

3545:                                             ; preds = %3544
  %3546 = lshr i32 %3442, 8
  %3547 = zext nneg i32 %3546 to i64
  %3548 = getelementptr inbounds i8, ptr %52, i64 %3547
  %3549 = icmp ugt i32 %3546, %50
  br i1 %3549, label %3550, label %3575

3550:                                             ; preds = %3545
  %3551 = load i64, ptr %3548, align 1, !tbaa !21
  %3552 = icmp eq i64 %3551, %3434
  br i1 %3552, label %3553, label %3575

3553:                                             ; preds = %3550
  %3554 = getelementptr inbounds i8, ptr %3054, i64 9
  %3555 = getelementptr inbounds i8, ptr %3548, i64 8
  %3556 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %3554, ptr noundef nonnull %3555, ptr noundef %38, ptr noundef %55, ptr noundef %37)
  %3557 = add i64 %3556, 8
  %3558 = add i32 %60, %3546
  %3559 = sub i32 %3090, %3558
  %3560 = icmp ugt ptr %3433, %3055
  br i1 %3560, label %3561, label %3688

3561:                                             ; preds = %3553, %3570
  %3562 = phi ptr [ %3565, %3570 ], [ %3433, %3553 ]
  %3563 = phi i64 [ %3571, %3570 ], [ %3557, %3553 ]
  %3564 = phi ptr [ %3567, %3570 ], [ %3548, %3553 ]
  %3565 = getelementptr inbounds i8, ptr %3562, i64 -1
  %3566 = load i8, ptr %3565, align 1, !tbaa !35
  %3567 = getelementptr inbounds i8, ptr %3564, i64 -1
  %3568 = load i8, ptr %3567, align 1, !tbaa !35
  %3569 = icmp eq i8 %3566, %3568
  br i1 %3569, label %3570, label %3688

3570:                                             ; preds = %3561
  %3571 = add i64 %3563, 1
  %3572 = icmp ugt ptr %3565, %3055
  %3573 = icmp ugt ptr %3567, %54
  %3574 = and i1 %3572, %3573
  br i1 %3574, label %3561, label %3688, !llvm.loop !100

3575:                                             ; preds = %3550, %3545, %3544
  %3576 = icmp ult i32 %3432, %35
  %3577 = getelementptr inbounds i8, ptr %3054, i64 4
  %3578 = getelementptr inbounds i8, ptr %3431, i64 4
  br i1 %3576, label %3579, label %3600

3579:                                             ; preds = %3575
  %3580 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %3577, ptr noundef nonnull %3578, ptr noundef %38, ptr noundef %55, ptr noundef nonnull %37)
  %3581 = add i64 %3580, 4
  %3582 = sub i32 %3081, %3432
  %3583 = icmp ugt ptr %3054, %3055
  %3584 = icmp ugt ptr %3431, %54
  %3585 = and i1 %3583, %3584
  br i1 %3585, label %3586, label %3688

3586:                                             ; preds = %3579, %3595
  %3587 = phi ptr [ %3590, %3595 ], [ %3054, %3579 ]
  %3588 = phi i64 [ %3596, %3595 ], [ %3581, %3579 ]
  %3589 = phi ptr [ %3592, %3595 ], [ %3431, %3579 ]
  %3590 = getelementptr inbounds i8, ptr %3587, i64 -1
  %3591 = load i8, ptr %3590, align 1, !tbaa !35
  %3592 = getelementptr inbounds i8, ptr %3589, i64 -1
  %3593 = load i8, ptr %3592, align 1, !tbaa !35
  %3594 = icmp eq i8 %3591, %3593
  br i1 %3594, label %3595, label %3688

3595:                                             ; preds = %3586
  %3596 = add i64 %3588, 1
  %3597 = icmp ugt ptr %3590, %3055
  %3598 = icmp ugt ptr %3592, %54
  %3599 = and i1 %3597, %3598
  br i1 %3599, label %3586, label %3688, !llvm.loop !101

3600:                                             ; preds = %3575
  %3601 = icmp ugt ptr %3047, %3577
  br i1 %3601, label %3602, label %3628

3602:                                             ; preds = %3600
  %3603 = load i64, ptr %3578, align 1, !tbaa !21
  %3604 = load i64, ptr %3577, align 1, !tbaa !21
  %3605 = xor i64 %3604, %3603
  %3606 = icmp eq i64 %3605, 0
  br i1 %3606, label %3610, label %3607

3607:                                             ; preds = %3602
  %3608 = tail call i64 @llvm.cttz.i64(i64 %3605, i1 true), !range !32
  %3609 = lshr i64 %3608, 3
  br label %3665

3610:                                             ; preds = %3602, %3616
  %3611 = phi ptr [ %3614, %3616 ], [ %3578, %3602 ]
  %3612 = phi ptr [ %3613, %3616 ], [ %3577, %3602 ]
  %3613 = getelementptr inbounds i8, ptr %3612, i64 8
  %3614 = getelementptr inbounds i8, ptr %3611, i64 8
  %3615 = icmp ult ptr %3613, %3047
  br i1 %3615, label %3616, label %3628

3616:                                             ; preds = %3610
  %3617 = load i64, ptr %3614, align 1, !tbaa !21
  %3618 = load i64, ptr %3613, align 1, !tbaa !21
  %3619 = xor i64 %3618, %3617
  %3620 = icmp eq i64 %3619, 0
  br i1 %3620, label %3610, label %3621

3621:                                             ; preds = %3616
  %3622 = tail call i64 @llvm.cttz.i64(i64 %3619, i1 true), !range !32
  %3623 = lshr i64 %3622, 3
  %3624 = getelementptr inbounds i8, ptr %3613, i64 %3623
  %3625 = ptrtoint ptr %3624 to i64
  %3626 = ptrtoint ptr %3577 to i64
  %3627 = sub i64 %3625, %3626
  br label %3665

3628:                                             ; preds = %3610, %3600
  %3629 = phi ptr [ %3578, %3600 ], [ %3614, %3610 ]
  %3630 = phi ptr [ %3577, %3600 ], [ %3613, %3610 ]
  %3631 = icmp ult ptr %3630, %3048
  br i1 %3631, label %3632, label %3639

3632:                                             ; preds = %3628
  %3633 = load i32, ptr %3629, align 1, !tbaa !22
  %3634 = load i32, ptr %3630, align 1, !tbaa !22
  %3635 = icmp eq i32 %3633, %3634
  br i1 %3635, label %3636, label %3639

3636:                                             ; preds = %3632
  %3637 = getelementptr inbounds i8, ptr %3630, i64 4
  %3638 = getelementptr inbounds i8, ptr %3629, i64 4
  br label %3639

3639:                                             ; preds = %3636, %3632, %3628
  %3640 = phi ptr [ %3638, %3636 ], [ %3629, %3632 ], [ %3629, %3628 ]
  %3641 = phi ptr [ %3637, %3636 ], [ %3630, %3632 ], [ %3630, %3628 ]
  %3642 = icmp ult ptr %3641, %3049
  br i1 %3642, label %3643, label %3650

3643:                                             ; preds = %3639
  %3644 = load i16, ptr %3640, align 1, !tbaa !33
  %3645 = load i16, ptr %3641, align 1, !tbaa !33
  %3646 = icmp eq i16 %3644, %3645
  br i1 %3646, label %3647, label %3650

3647:                                             ; preds = %3643
  %3648 = getelementptr inbounds i8, ptr %3641, i64 2
  %3649 = getelementptr inbounds i8, ptr %3640, i64 2
  br label %3650

3650:                                             ; preds = %3647, %3643, %3639
  %3651 = phi ptr [ %3649, %3647 ], [ %3640, %3643 ], [ %3640, %3639 ]
  %3652 = phi ptr [ %3648, %3647 ], [ %3641, %3643 ], [ %3641, %3639 ]
  %3653 = icmp ult ptr %3652, %38
  br i1 %3653, label %3654, label %3660

3654:                                             ; preds = %3650
  %3655 = load i8, ptr %3651, align 1, !tbaa !35
  %3656 = load i8, ptr %3652, align 1, !tbaa !35
  %3657 = icmp eq i8 %3655, %3656
  %3658 = zext i1 %3657 to i64
  %3659 = getelementptr inbounds i8, ptr %3652, i64 %3658
  br label %3660

3660:                                             ; preds = %3654, %3650
  %3661 = phi ptr [ %3652, %3650 ], [ %3659, %3654 ]
  %3662 = ptrtoint ptr %3661 to i64
  %3663 = ptrtoint ptr %3577 to i64
  %3664 = sub i64 %3662, %3663
  br label %3665

3665:                                             ; preds = %3660, %3621, %3607
  %3666 = phi i64 [ %3664, %3660 ], [ %3609, %3607 ], [ %3627, %3621 ]
  %3667 = add i64 %3666, 4
  %3668 = ptrtoint ptr %3431 to i64
  %3669 = sub i64 %3079, %3668
  %3670 = trunc i64 %3669 to i32
  %3671 = icmp ugt ptr %3054, %3055
  %3672 = icmp ugt ptr %3431, %37
  %3673 = and i1 %3671, %3672
  br i1 %3673, label %3674, label %3688

3674:                                             ; preds = %3665, %3683
  %3675 = phi ptr [ %3678, %3683 ], [ %3054, %3665 ]
  %3676 = phi i64 [ %3684, %3683 ], [ %3667, %3665 ]
  %3677 = phi ptr [ %3680, %3683 ], [ %3431, %3665 ]
  %3678 = getelementptr inbounds i8, ptr %3675, i64 -1
  %3679 = load i8, ptr %3678, align 1, !tbaa !35
  %3680 = getelementptr inbounds i8, ptr %3677, i64 -1
  %3681 = load i8, ptr %3680, align 1, !tbaa !35
  %3682 = icmp eq i8 %3679, %3681
  br i1 %3682, label %3683, label %3688

3683:                                             ; preds = %3674
  %3684 = add i64 %3676, 1
  %3685 = icmp ugt ptr %3678, %3055
  %3686 = icmp ugt ptr %3680, %37
  %3687 = and i1 %3685, %3686
  br i1 %3687, label %3674, label %3688, !llvm.loop !102

3688:                                             ; preds = %3371, %3362, %3539, %3530, %3683, %3674, %3595, %3586, %3570, %3561, %3402, %3393, %3665, %3579, %3553, %3520, %3385, %3353
  %3689 = phi i32 [ %3391, %3385 ], [ %3559, %3553 ], [ %3582, %3579 ], [ %3670, %3665 ], [ %3526, %3520 ], [ %3358, %3353 ], [ %3391, %3393 ], [ %3391, %3402 ], [ %3559, %3561 ], [ %3559, %3570 ], [ %3582, %3586 ], [ %3582, %3595 ], [ %3670, %3674 ], [ %3670, %3683 ], [ %3526, %3530 ], [ %3526, %3539 ], [ %3358, %3362 ], [ %3358, %3371 ]
  %3690 = phi i64 [ %3389, %3385 ], [ %3557, %3553 ], [ %3581, %3579 ], [ %3667, %3665 ], [ %3522, %3520 ], [ %3355, %3353 ], [ %3403, %3402 ], [ %3395, %3393 ], [ %3571, %3570 ], [ %3563, %3561 ], [ %3596, %3595 ], [ %3588, %3586 ], [ %3684, %3683 ], [ %3676, %3674 ], [ %3540, %3539 ], [ %3532, %3530 ], [ %3372, %3371 ], [ %3364, %3362 ]
  %3691 = phi ptr [ %3054, %3385 ], [ %3433, %3553 ], [ %3054, %3579 ], [ %3054, %3665 ], [ %3433, %3520 ], [ %3054, %3353 ], [ %3397, %3402 ], [ %3394, %3393 ], [ %3565, %3570 ], [ %3562, %3561 ], [ %3590, %3595 ], [ %3587, %3586 ], [ %3678, %3683 ], [ %3675, %3674 ], [ %3534, %3539 ], [ %3531, %3530 ], [ %3366, %3371 ], [ %3363, %3362 ]
  %3692 = ptrtoint ptr %3691 to i64
  %3693 = ptrtoint ptr %3055 to i64
  %3694 = sub i64 %3692, %3693
  %3695 = add i32 %3689, 3
  %3696 = getelementptr inbounds i8, ptr %3055, i64 %3694
  %3697 = icmp ugt ptr %3696, %3041
  %3698 = load ptr, ptr %3042, align 8, !tbaa !36
  br i1 %3697, label %3722, label %3699

3699:                                             ; preds = %3688
  %3700 = load <2 x i64>, ptr %3055, align 1, !tbaa !35
  store <2 x i64> %3700, ptr %3698, align 1, !tbaa !35
  %3701 = icmp ugt i64 %3694, 16
  br i1 %3701, label %3702, label %3839

3702:                                             ; preds = %3699
  %3703 = load ptr, ptr %3042, align 8, !tbaa !36
  %3704 = getelementptr inbounds i8, ptr %3703, i64 16
  %3705 = getelementptr inbounds i8, ptr %3055, i64 16
  %3706 = add i64 %3694, -16
  %3707 = getelementptr inbounds i8, ptr %3703, i64 %3694
  %3708 = load <2 x i64>, ptr %3705, align 1, !tbaa !35
  store <2 x i64> %3708, ptr %3704, align 1, !tbaa !35
  %3709 = icmp ult i64 %3706, 17
  br i1 %3709, label %3839, label %3710

3710:                                             ; preds = %3702
  %3711 = getelementptr inbounds i8, ptr %3703, i64 32
  br label %3712

3712:                                             ; preds = %3712, %3710
  %3713 = phi ptr [ %3711, %3710 ], [ %3720, %3712 ]
  %3714 = phi ptr [ %3705, %3710 ], [ %3718, %3712 ]
  %3715 = getelementptr inbounds i8, ptr %3714, i64 16
  %3716 = load <2 x i64>, ptr %3715, align 1, !tbaa !35
  store <2 x i64> %3716, ptr %3713, align 1, !tbaa !35
  %3717 = getelementptr inbounds i8, ptr %3713, i64 16
  %3718 = getelementptr inbounds i8, ptr %3714, i64 32
  %3719 = load <2 x i64>, ptr %3718, align 1, !tbaa !35
  store <2 x i64> %3719, ptr %3717, align 1, !tbaa !35
  %3720 = getelementptr inbounds i8, ptr %3713, i64 32
  %3721 = icmp ult ptr %3720, %3707
  br i1 %3721, label %3712, label %3843, !llvm.loop !38

3722:                                             ; preds = %3688
  %3723 = ptrtoint ptr %3696 to i64
  %3724 = icmp ugt ptr %3055, %3041
  br i1 %3724, label %3742, label %3725

3725:                                             ; preds = %3722
  %3726 = sub i64 %3043, %3693
  %3727 = getelementptr inbounds i8, ptr %3698, i64 %3726
  %3728 = load <2 x i64>, ptr %3055, align 1, !tbaa !35
  store <2 x i64> %3728, ptr %3698, align 1, !tbaa !35
  %3729 = icmp ult i64 %3726, 17
  br i1 %3729, label %3742, label %3730

3730:                                             ; preds = %3725
  %3731 = getelementptr inbounds i8, ptr %3698, i64 16
  br label %3732

3732:                                             ; preds = %3732, %3730
  %3733 = phi ptr [ %3731, %3730 ], [ %3740, %3732 ]
  %3734 = phi ptr [ %3055, %3730 ], [ %3738, %3732 ]
  %3735 = getelementptr inbounds i8, ptr %3734, i64 16
  %3736 = load <2 x i64>, ptr %3735, align 1, !tbaa !35
  store <2 x i64> %3736, ptr %3733, align 1, !tbaa !35
  %3737 = getelementptr inbounds i8, ptr %3733, i64 16
  %3738 = getelementptr inbounds i8, ptr %3734, i64 32
  %3739 = load <2 x i64>, ptr %3738, align 1, !tbaa !35
  store <2 x i64> %3739, ptr %3737, align 1, !tbaa !35
  %3740 = getelementptr inbounds i8, ptr %3733, i64 32
  %3741 = icmp ult ptr %3740, %3727
  br i1 %3741, label %3732, label %3742, !llvm.loop !38

3742:                                             ; preds = %3732, %3725, %3722
  %3743 = phi ptr [ %3041, %3725 ], [ %3055, %3722 ], [ %3041, %3732 ]
  %3744 = phi ptr [ %3727, %3725 ], [ %3698, %3722 ], [ %3727, %3732 ]
  %3745 = icmp ult ptr %3743, %3696
  br i1 %3745, label %3746, label %3843

3746:                                             ; preds = %3742
  %3747 = ptrtoint ptr %3744 to i64
  %3748 = ptrtoint ptr %3743 to i64
  %3749 = sub i64 %3723, %3748
  %3750 = getelementptr i8, ptr %3743, i64 %3749
  %3751 = icmp ult i64 %3749, 8
  %3752 = sub i64 %3747, %3748
  %3753 = icmp ult i64 %3752, 32
  %3754 = select i1 %3751, i1 true, i1 %3753
  br i1 %3754, label %3790, label %3755

3755:                                             ; preds = %3746
  %3756 = icmp ult i64 %3749, 32
  br i1 %3756, label %3776, label %3757

3757:                                             ; preds = %3755
  %3758 = and i64 %3749, -32
  br label %3759

3759:                                             ; preds = %3759, %3757
  %3760 = phi i64 [ 0, %3757 ], [ %3767, %3759 ]
  %3761 = getelementptr i8, ptr %3744, i64 %3760
  %3762 = getelementptr i8, ptr %3743, i64 %3760
  %3763 = getelementptr i8, ptr %3762, i64 16
  %3764 = load <16 x i8>, ptr %3762, align 1, !tbaa !35
  %3765 = load <16 x i8>, ptr %3763, align 1, !tbaa !35
  %3766 = getelementptr i8, ptr %3761, i64 16
  store <16 x i8> %3764, ptr %3761, align 1, !tbaa !35
  store <16 x i8> %3765, ptr %3766, align 1, !tbaa !35
  %3767 = add nuw i64 %3760, 32
  %3768 = icmp eq i64 %3767, %3758
  br i1 %3768, label %3769, label %3759, !llvm.loop !128

3769:                                             ; preds = %3759
  %3770 = icmp eq i64 %3749, %3758
  br i1 %3770, label %3843, label %3771

3771:                                             ; preds = %3769
  %3772 = getelementptr i8, ptr %3743, i64 %3758
  %3773 = getelementptr i8, ptr %3744, i64 %3758
  %3774 = and i64 %3749, 24
  %3775 = icmp eq i64 %3774, 0
  br i1 %3775, label %3790, label %3776

3776:                                             ; preds = %3755, %3771
  %3777 = phi i64 [ %3758, %3771 ], [ 0, %3755 ]
  %3778 = and i64 %3749, -8
  %3779 = getelementptr i8, ptr %3744, i64 %3778
  %3780 = getelementptr i8, ptr %3743, i64 %3778
  br label %3781

3781:                                             ; preds = %3781, %3776
  %3782 = phi i64 [ %3777, %3776 ], [ %3786, %3781 ]
  %3783 = getelementptr i8, ptr %3744, i64 %3782
  %3784 = getelementptr i8, ptr %3743, i64 %3782
  %3785 = load <8 x i8>, ptr %3784, align 1, !tbaa !35
  store <8 x i8> %3785, ptr %3783, align 1, !tbaa !35
  %3786 = add nuw i64 %3782, 8
  %3787 = icmp eq i64 %3786, %3778
  br i1 %3787, label %3788, label %3781, !llvm.loop !129

3788:                                             ; preds = %3781
  %3789 = icmp eq i64 %3749, %3778
  br i1 %3789, label %3843, label %3790

3790:                                             ; preds = %3746, %3771, %3788
  %3791 = phi ptr [ %3744, %3746 ], [ %3773, %3771 ], [ %3779, %3788 ]
  %3792 = phi ptr [ %3743, %3746 ], [ %3772, %3771 ], [ %3780, %3788 ]
  %3793 = ptrtoint ptr %3792 to i64
  %3794 = sub i64 %3692, %3793
  %3795 = and i64 %3794, 7
  %3796 = icmp eq i64 %3795, 0
  br i1 %3796, label %3806, label %3797

3797:                                             ; preds = %3790, %3797
  %3798 = phi ptr [ %3803, %3797 ], [ %3791, %3790 ]
  %3799 = phi ptr [ %3801, %3797 ], [ %3792, %3790 ]
  %3800 = phi i64 [ %3804, %3797 ], [ 0, %3790 ]
  %3801 = getelementptr inbounds i8, ptr %3799, i64 1
  %3802 = load i8, ptr %3799, align 1, !tbaa !35
  %3803 = getelementptr inbounds i8, ptr %3798, i64 1
  store i8 %3802, ptr %3798, align 1, !tbaa !35
  %3804 = add i64 %3800, 1
  %3805 = icmp eq i64 %3804, %3795
  br i1 %3805, label %3806, label %3797, !llvm.loop !130

3806:                                             ; preds = %3797, %3790
  %3807 = phi ptr [ %3791, %3790 ], [ %3803, %3797 ]
  %3808 = phi ptr [ %3792, %3790 ], [ %3801, %3797 ]
  %3809 = sub i64 %3793, %3692
  %3810 = icmp ugt i64 %3809, -8
  br i1 %3810, label %3843, label %3811

3811:                                             ; preds = %3806, %3811
  %3812 = phi ptr [ %3837, %3811 ], [ %3807, %3806 ]
  %3813 = phi ptr [ %3835, %3811 ], [ %3808, %3806 ]
  %3814 = getelementptr inbounds i8, ptr %3813, i64 1
  %3815 = load i8, ptr %3813, align 1, !tbaa !35
  %3816 = getelementptr inbounds i8, ptr %3812, i64 1
  store i8 %3815, ptr %3812, align 1, !tbaa !35
  %3817 = getelementptr inbounds i8, ptr %3813, i64 2
  %3818 = load i8, ptr %3814, align 1, !tbaa !35
  %3819 = getelementptr inbounds i8, ptr %3812, i64 2
  store i8 %3818, ptr %3816, align 1, !tbaa !35
  %3820 = getelementptr inbounds i8, ptr %3813, i64 3
  %3821 = load i8, ptr %3817, align 1, !tbaa !35
  %3822 = getelementptr inbounds i8, ptr %3812, i64 3
  store i8 %3821, ptr %3819, align 1, !tbaa !35
  %3823 = getelementptr inbounds i8, ptr %3813, i64 4
  %3824 = load i8, ptr %3820, align 1, !tbaa !35
  %3825 = getelementptr inbounds i8, ptr %3812, i64 4
  store i8 %3824, ptr %3822, align 1, !tbaa !35
  %3826 = getelementptr inbounds i8, ptr %3813, i64 5
  %3827 = load i8, ptr %3823, align 1, !tbaa !35
  %3828 = getelementptr inbounds i8, ptr %3812, i64 5
  store i8 %3827, ptr %3825, align 1, !tbaa !35
  %3829 = getelementptr inbounds i8, ptr %3813, i64 6
  %3830 = load i8, ptr %3826, align 1, !tbaa !35
  %3831 = getelementptr inbounds i8, ptr %3812, i64 6
  store i8 %3830, ptr %3828, align 1, !tbaa !35
  %3832 = getelementptr inbounds i8, ptr %3813, i64 7
  %3833 = load i8, ptr %3829, align 1, !tbaa !35
  %3834 = getelementptr inbounds i8, ptr %3812, i64 7
  store i8 %3833, ptr %3831, align 1, !tbaa !35
  %3835 = getelementptr inbounds i8, ptr %3813, i64 8
  %3836 = load i8, ptr %3832, align 1, !tbaa !35
  %3837 = getelementptr inbounds i8, ptr %3812, i64 8
  store i8 %3836, ptr %3834, align 1, !tbaa !35
  %3838 = icmp eq ptr %3835, %3750
  br i1 %3838, label %3843, label %3811, !llvm.loop !131

3839:                                             ; preds = %3702, %3699
  %3840 = load ptr, ptr %3042, align 8, !tbaa !36
  %3841 = getelementptr inbounds i8, ptr %3840, i64 %3694
  store ptr %3841, ptr %3042, align 8, !tbaa !36
  %3842 = load ptr, ptr %3045, align 8, !tbaa !46
  br label %3855

3843:                                             ; preds = %3712, %3806, %3811, %3769, %3788, %3742
  %3844 = load ptr, ptr %3042, align 8, !tbaa !36
  %3845 = getelementptr inbounds i8, ptr %3844, i64 %3694
  store ptr %3845, ptr %3042, align 8, !tbaa !36
  %3846 = icmp ugt i64 %3694, 65535
  %3847 = load ptr, ptr %3045, align 8, !tbaa !46
  br i1 %3846, label %3848, label %3855, !prof !107

3848:                                             ; preds = %3843
  store i32 1, ptr %3044, align 8, !tbaa !48
  %3849 = load ptr, ptr %1, align 8, !tbaa !49
  %3850 = ptrtoint ptr %3847 to i64
  %3851 = ptrtoint ptr %3849 to i64
  %3852 = sub i64 %3850, %3851
  %3853 = lshr exact i64 %3852, 3
  %3854 = trunc i64 %3853 to i32
  store i32 %3854, ptr %3046, align 4, !tbaa !50
  br label %3855

3855:                                             ; preds = %3848, %3843, %3839
  %3856 = phi ptr [ %3842, %3839 ], [ %3847, %3848 ], [ %3847, %3843 ]
  %3857 = trunc i64 %3694 to i16
  %3858 = getelementptr inbounds %struct.SeqDef_s, ptr %3856, i64 0, i32 1
  store i16 %3857, ptr %3858, align 4, !tbaa !51
  store i32 %3695, ptr %3856, align 4, !tbaa !53
  %3859 = add i64 %3690, -3
  %3860 = icmp ugt i64 %3859, 65535
  br i1 %3860, label %3861, label %3874, !prof !54

3861:                                             ; preds = %3855, %3275
  %3862 = phi ptr [ %3276, %3275 ], [ %3856, %3855 ]
  %3863 = phi i64 [ %3279, %3275 ], [ %3859, %3855 ]
  %3864 = phi i64 [ %3111, %3275 ], [ %3690, %3855 ]
  %3865 = phi i32 [ %3057, %3275 ], [ %3056, %3855 ]
  %3866 = phi i32 [ %3056, %3275 ], [ %3689, %3855 ]
  %3867 = phi ptr [ %3103, %3275 ], [ %3691, %3855 ]
  store i32 2, ptr %3044, align 8, !tbaa !48
  %3868 = load ptr, ptr %1, align 8, !tbaa !49
  %3869 = ptrtoint ptr %3862 to i64
  %3870 = ptrtoint ptr %3868 to i64
  %3871 = sub i64 %3869, %3870
  %3872 = lshr exact i64 %3871, 3
  %3873 = trunc i64 %3872 to i32
  store i32 %3873, ptr %3046, align 4, !tbaa !50
  br label %3874

3874:                                             ; preds = %3861, %3855, %3275
  %3875 = phi i64 [ %3279, %3275 ], [ %3859, %3855 ], [ %3863, %3861 ]
  %3876 = phi ptr [ %3276, %3275 ], [ %3856, %3855 ], [ %3862, %3861 ]
  %3877 = phi i64 [ %3111, %3275 ], [ %3690, %3855 ], [ %3864, %3861 ]
  %3878 = phi i32 [ %3057, %3275 ], [ %3056, %3855 ], [ %3865, %3861 ]
  %3879 = phi i32 [ %3056, %3275 ], [ %3689, %3855 ], [ %3866, %3861 ]
  %3880 = phi ptr [ %3103, %3275 ], [ %3691, %3855 ], [ %3867, %3861 ]
  %3881 = trunc i64 %3875 to i16
  %3882 = getelementptr inbounds %struct.SeqDef_s, ptr %3876, i64 0, i32 2
  store i16 %3881, ptr %3882, align 2, !tbaa !61
  %3883 = getelementptr inbounds %struct.SeqDef_s, ptr %3876, i64 1
  store ptr %3883, ptr %3045, align 8, !tbaa !46
  %3884 = getelementptr inbounds i8, ptr %3880, i64 %3877
  %3885 = icmp ugt ptr %3884, %39
  br i1 %3885, label %3968, label %3886

3886:                                             ; preds = %3874
  %3887 = add i32 %3081, 2
  %3888 = zext i32 %3887 to i64
  %3889 = getelementptr inbounds i8, ptr %18, i64 %3888
  %3890 = load i64, ptr %3889, align 1, !tbaa !21
  %3891 = mul i64 %3890, -3523014627327384477
  %3892 = lshr i64 %3891, %3034
  %3893 = getelementptr inbounds i32, ptr %10, i64 %3892
  store i32 %3887, ptr %3893, align 4, !tbaa !22
  %3894 = getelementptr inbounds i8, ptr %3884, i64 -2
  %3895 = ptrtoint ptr %3894 to i64
  %3896 = sub i64 %3895, %20
  %3897 = trunc i64 %3896 to i32
  %3898 = load i64, ptr %3894, align 1, !tbaa !21
  %3899 = mul i64 %3898, -3523014627327384477
  %3900 = lshr i64 %3899, %3034
  %3901 = getelementptr inbounds i32, ptr %10, i64 %3900
  store i32 %3897, ptr %3901, align 4, !tbaa !22
  %3902 = mul i64 %3890, -3523014627193167104
  %3903 = lshr i64 %3902, %3036
  %3904 = getelementptr inbounds i32, ptr %14, i64 %3903
  store i32 %3887, ptr %3904, align 4, !tbaa !22
  %3905 = getelementptr inbounds i8, ptr %3884, i64 -1
  %3906 = ptrtoint ptr %3905 to i64
  %3907 = sub i64 %3906, %20
  %3908 = trunc i64 %3907 to i32
  %3909 = load i64, ptr %3905, align 1, !tbaa !21
  %3910 = mul i64 %3909, -3523014627193167104
  %3911 = lshr i64 %3910, %3036
  %3912 = getelementptr inbounds i32, ptr %14, i64 %3911
  store i32 %3908, ptr %3912, align 4, !tbaa !22
  br label %3913

3913:                                             ; preds = %3955, %3886
  %3914 = phi ptr [ %3883, %3886 ], [ %3958, %3955 ]
  %3915 = phi ptr [ %3884, %3886 ], [ %3966, %3955 ]
  %3916 = phi i32 [ %3879, %3886 ], [ %3917, %3955 ]
  %3917 = phi i32 [ %3878, %3886 ], [ %3916, %3955 ]
  %3918 = ptrtoint ptr %3915 to i64
  %3919 = sub i64 %3918, %20
  %3920 = trunc i64 %3919 to i32
  %3921 = sub i32 %3920, %3917
  %3922 = icmp ult i32 %3921, %35
  %3923 = zext i32 %3921 to i64
  %3924 = select i1 %3922, ptr %3052, ptr %18
  %3925 = getelementptr i8, ptr %3924, i64 %3923
  %3926 = sub i32 %3921, %35
  %3927 = icmp ugt i32 %3926, -4
  br i1 %3927, label %3968, label %3928

3928:                                             ; preds = %3913
  %3929 = load i32, ptr %3925, align 1, !tbaa !22
  %3930 = load i32, ptr %3915, align 1, !tbaa !22
  %3931 = icmp eq i32 %3929, %3930
  br i1 %3931, label %3932, label %3968

3932:                                             ; preds = %3928
  %3933 = select i1 %3922, ptr %55, ptr %38
  %3934 = getelementptr inbounds i8, ptr %3915, i64 4
  %3935 = getelementptr inbounds i8, ptr %3925, i64 4
  %3936 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %3934, ptr noundef nonnull %3935, ptr noundef %38, ptr noundef %3933, ptr noundef %37)
  %3937 = add i64 %3936, 4
  %3938 = icmp ugt ptr %3915, %3041
  br i1 %3938, label %3943, label %3939

3939:                                             ; preds = %3932
  %3940 = load ptr, ptr %3042, align 8, !tbaa !36
  %3941 = load <2 x i64>, ptr %3915, align 1, !tbaa !35
  store <2 x i64> %3941, ptr %3940, align 1, !tbaa !35
  %3942 = load ptr, ptr %3045, align 8, !tbaa !46
  br label %3943

3943:                                             ; preds = %3939, %3932
  %3944 = phi ptr [ %3914, %3932 ], [ %3942, %3939 ]
  %3945 = getelementptr inbounds %struct.SeqDef_s, ptr %3944, i64 0, i32 1
  store i16 0, ptr %3945, align 4, !tbaa !51
  store i32 1, ptr %3944, align 4, !tbaa !53
  %3946 = add i64 %3936, 1
  %3947 = icmp ugt i64 %3946, 65535
  br i1 %3947, label %3948, label %3955, !prof !54

3948:                                             ; preds = %3943
  store i32 2, ptr %3044, align 8, !tbaa !48
  %3949 = load ptr, ptr %1, align 8, !tbaa !49
  %3950 = ptrtoint ptr %3944 to i64
  %3951 = ptrtoint ptr %3949 to i64
  %3952 = sub i64 %3950, %3951
  %3953 = lshr exact i64 %3952, 3
  %3954 = trunc i64 %3953 to i32
  store i32 %3954, ptr %3046, align 4, !tbaa !50
  br label %3955

3955:                                             ; preds = %3948, %3943
  %3956 = trunc i64 %3946 to i16
  %3957 = getelementptr inbounds %struct.SeqDef_s, ptr %3944, i64 0, i32 2
  store i16 %3956, ptr %3957, align 2, !tbaa !61
  %3958 = getelementptr inbounds %struct.SeqDef_s, ptr %3944, i64 1
  store ptr %3958, ptr %3045, align 8, !tbaa !46
  %3959 = load i64, ptr %3915, align 1, !tbaa !21
  %3960 = mul i64 %3959, -3523014627193167104
  %3961 = lshr i64 %3960, %3036
  %3962 = getelementptr inbounds i32, ptr %14, i64 %3961
  store i32 %3920, ptr %3962, align 4, !tbaa !22
  %3963 = mul i64 %3959, -3523014627327384477
  %3964 = lshr i64 %3963, %3034
  %3965 = getelementptr inbounds i32, ptr %10, i64 %3964
  store i32 %3920, ptr %3965, align 4, !tbaa !22
  %3966 = getelementptr inbounds i8, ptr %3915, i64 %3937
  %3967 = icmp ugt ptr %3966, %39
  br i1 %3967, label %3968, label %3913

3968:                                             ; preds = %3955, %3928, %3913, %3874, %3424
  %3969 = phi i32 [ %3057, %3424 ], [ %3878, %3874 ], [ %3917, %3913 ], [ %3917, %3928 ], [ %3916, %3955 ]
  %3970 = phi i32 [ %3056, %3424 ], [ %3879, %3874 ], [ %3916, %3913 ], [ %3916, %3928 ], [ %3917, %3955 ]
  %3971 = phi ptr [ %3055, %3424 ], [ %3884, %3874 ], [ %3915, %3913 ], [ %3915, %3928 ], [ %3966, %3955 ]
  %3972 = phi ptr [ %3429, %3424 ], [ %3884, %3874 ], [ %3915, %3913 ], [ %3915, %3928 ], [ %3966, %3955 ]
  %3973 = icmp ult ptr %3972, %39
  br i1 %3973, label %3053, label %3974

3974:                                             ; preds = %3968
  %3975 = ptrtoint ptr %3971 to i64
  br label %3976

3976:                                             ; preds = %3974, %3026, %2999, %2051, %2024, %1076, %1049, %96
  %3977 = phi i32 [ %1045, %1049 ], [ %40, %96 ], [ %2020, %2024 ], [ %40, %1076 ], [ %2995, %2999 ], [ %40, %2051 ], [ %3970, %3974 ], [ %40, %3026 ]
  %3978 = phi i32 [ %1044, %1049 ], [ %42, %96 ], [ %2019, %2024 ], [ %42, %1076 ], [ %2994, %2999 ], [ %42, %2051 ], [ %3969, %3974 ], [ %42, %3026 ]
  %3979 = phi i64 [ %1050, %1049 ], [ %19, %96 ], [ %2025, %2024 ], [ %19, %1076 ], [ %3000, %2999 ], [ %19, %2051 ], [ %3975, %3974 ], [ %19, %3026 ]
  store i32 %3977, ptr %2, align 4, !tbaa !22
  store i32 %3978, ptr %41, align 4, !tbaa !22
  %3980 = ptrtoint ptr %38 to i64
  %3981 = sub i64 %3980, %3979
  ret i64 %3981
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_compressBlock_doubleFast_extDict(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 {
  %6 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !26
  %8 = add i32 %7, -5
  %9 = icmp ult i32 %8, 3
  %10 = select i1 %9, i32 %7, i32 4
  %11 = tail call fastcc i64 @ZSTD_compressBlock_doubleFast_extDict_generic(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %10)
  ret i64 %11
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #6

; Function Attrs: cold noreturn nounwind
declare void @llvm.ubsantrap(i8 immarg) #7

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i64 @ZSTD_count_2segments(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #8 {
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %6, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = icmp ult ptr %9, %2
  %11 = select i1 %10, ptr %9, ptr %2
  %12 = getelementptr inbounds i8, ptr %11, i64 -7
  %13 = icmp ugt ptr %12, %0
  br i1 %13, label %14, label %40

14:                                               ; preds = %5
  %15 = load i64, ptr %1, align 1, !tbaa !21
  %16 = load i64, ptr %0, align 1, !tbaa !21
  %17 = xor i64 %16, %15
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = tail call i64 @llvm.cttz.i64(i64 %17, i1 true), !range !32
  %21 = lshr i64 %20, 3
  br label %79

22:                                               ; preds = %14, %28
  %23 = phi ptr [ %26, %28 ], [ %1, %14 ]
  %24 = phi ptr [ %25, %28 ], [ %0, %14 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 8
  %26 = getelementptr inbounds i8, ptr %23, i64 8
  %27 = icmp ult ptr %25, %12
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load i64, ptr %26, align 1, !tbaa !21
  %30 = load i64, ptr %25, align 1, !tbaa !21
  %31 = xor i64 %30, %29
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %22, label %33

33:                                               ; preds = %28
  %34 = tail call i64 @llvm.cttz.i64(i64 %31, i1 true), !range !32
  %35 = lshr i64 %34, 3
  %36 = getelementptr inbounds i8, ptr %25, i64 %35
  %37 = ptrtoint ptr %36 to i64
  %38 = ptrtoint ptr %0 to i64
  %39 = sub i64 %37, %38
  br label %79

40:                                               ; preds = %22, %5
  %41 = phi ptr [ %1, %5 ], [ %26, %22 ]
  %42 = phi ptr [ %0, %5 ], [ %25, %22 ]
  %43 = getelementptr inbounds i8, ptr %11, i64 -3
  %44 = icmp ult ptr %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, ptr %41, align 1, !tbaa !22
  %47 = load i32, ptr %42, align 1, !tbaa !22
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr inbounds i8, ptr %42, i64 4
  %51 = getelementptr inbounds i8, ptr %41, i64 4
  br label %52

52:                                               ; preds = %49, %45, %40
  %53 = phi ptr [ %51, %49 ], [ %41, %45 ], [ %41, %40 ]
  %54 = phi ptr [ %50, %49 ], [ %42, %45 ], [ %42, %40 ]
  %55 = getelementptr inbounds i8, ptr %11, i64 -1
  %56 = icmp ult ptr %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i16, ptr %53, align 1, !tbaa !33
  %59 = load i16, ptr %54, align 1, !tbaa !33
  %60 = icmp eq i16 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = getelementptr inbounds i8, ptr %54, i64 2
  %63 = getelementptr inbounds i8, ptr %53, i64 2
  br label %64

64:                                               ; preds = %61, %57, %52
  %65 = phi ptr [ %63, %61 ], [ %53, %57 ], [ %53, %52 ]
  %66 = phi ptr [ %62, %61 ], [ %54, %57 ], [ %54, %52 ]
  %67 = icmp ult ptr %66, %11
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i8, ptr %65, align 1, !tbaa !35
  %70 = load i8, ptr %66, align 1, !tbaa !35
  %71 = icmp eq i8 %69, %70
  %72 = zext i1 %71 to i64
  %73 = getelementptr inbounds i8, ptr %66, i64 %72
  br label %74

74:                                               ; preds = %68, %64
  %75 = phi ptr [ %66, %64 ], [ %73, %68 ]
  %76 = ptrtoint ptr %75 to i64
  %77 = ptrtoint ptr %0 to i64
  %78 = sub i64 %76, %77
  br label %79

79:                                               ; preds = %19, %33, %74
  %80 = phi i64 [ %78, %74 ], [ %21, %19 ], [ %39, %33 ]
  %81 = getelementptr inbounds i8, ptr %1, i64 %80
  %82 = icmp eq ptr %81, %3
  br i1 %82, label %83, label %155

83:                                               ; preds = %79
  %84 = getelementptr inbounds i8, ptr %0, i64 %80
  %85 = getelementptr inbounds i8, ptr %2, i64 -7
  %86 = icmp ugt ptr %85, %84
  br i1 %86, label %87, label %113

87:                                               ; preds = %83
  %88 = load i64, ptr %4, align 1, !tbaa !21
  %89 = load i64, ptr %84, align 1, !tbaa !21
  %90 = xor i64 %89, %88
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = tail call i64 @llvm.cttz.i64(i64 %90, i1 true), !range !32
  %94 = lshr i64 %93, 3
  br label %152

95:                                               ; preds = %87, %101
  %96 = phi ptr [ %99, %101 ], [ %4, %87 ]
  %97 = phi ptr [ %98, %101 ], [ %84, %87 ]
  %98 = getelementptr inbounds i8, ptr %97, i64 8
  %99 = getelementptr inbounds i8, ptr %96, i64 8
  %100 = icmp ult ptr %98, %85
  br i1 %100, label %101, label %113

101:                                              ; preds = %95
  %102 = load i64, ptr %99, align 1, !tbaa !21
  %103 = load i64, ptr %98, align 1, !tbaa !21
  %104 = xor i64 %103, %102
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %95, label %106

106:                                              ; preds = %101
  %107 = tail call i64 @llvm.cttz.i64(i64 %104, i1 true), !range !32
  %108 = lshr i64 %107, 3
  %109 = getelementptr inbounds i8, ptr %98, i64 %108
  %110 = ptrtoint ptr %109 to i64
  %111 = ptrtoint ptr %84 to i64
  %112 = sub i64 %110, %111
  br label %152

113:                                              ; preds = %95, %83
  %114 = phi ptr [ %4, %83 ], [ %99, %95 ]
  %115 = phi ptr [ %84, %83 ], [ %98, %95 ]
  %116 = getelementptr inbounds i8, ptr %2, i64 -3
  %117 = icmp ult ptr %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load i32, ptr %114, align 1, !tbaa !22
  %120 = load i32, ptr %115, align 1, !tbaa !22
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = getelementptr inbounds i8, ptr %115, i64 4
  %124 = getelementptr inbounds i8, ptr %114, i64 4
  br label %125

125:                                              ; preds = %122, %118, %113
  %126 = phi ptr [ %124, %122 ], [ %114, %118 ], [ %114, %113 ]
  %127 = phi ptr [ %123, %122 ], [ %115, %118 ], [ %115, %113 ]
  %128 = getelementptr inbounds i8, ptr %2, i64 -1
  %129 = icmp ult ptr %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load i16, ptr %126, align 1, !tbaa !33
  %132 = load i16, ptr %127, align 1, !tbaa !33
  %133 = icmp eq i16 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = getelementptr inbounds i8, ptr %127, i64 2
  %136 = getelementptr inbounds i8, ptr %126, i64 2
  br label %137

137:                                              ; preds = %134, %130, %125
  %138 = phi ptr [ %136, %134 ], [ %126, %130 ], [ %126, %125 ]
  %139 = phi ptr [ %135, %134 ], [ %127, %130 ], [ %127, %125 ]
  %140 = icmp ult ptr %139, %2
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load i8, ptr %138, align 1, !tbaa !35
  %143 = load i8, ptr %139, align 1, !tbaa !35
  %144 = icmp eq i8 %142, %143
  %145 = zext i1 %144 to i64
  %146 = getelementptr inbounds i8, ptr %139, i64 %145
  br label %147

147:                                              ; preds = %141, %137
  %148 = phi ptr [ %139, %137 ], [ %146, %141 ]
  %149 = ptrtoint ptr %148 to i64
  %150 = ptrtoint ptr %84 to i64
  %151 = sub i64 %149, %150
  br label %152

152:                                              ; preds = %92, %106, %147
  %153 = phi i64 [ %151, %147 ], [ %94, %92 ], [ %112, %106 ]
  %154 = add i64 %153, %80
  br label %155

155:                                              ; preds = %79, %152
  %156 = phi i64 [ %154, %152 ], [ %80, %79 ]
  ret i64 %156
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBlock_doubleFast_extDict_generic(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16
  %8 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !20
  %12 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !16
  %14 = getelementptr inbounds %struct.ZSTD_MatchState_t, ptr %0, i64 0, i32 16, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !19
  %16 = getelementptr inbounds i8, ptr %3, i64 %4
  %17 = getelementptr inbounds i8, ptr %16, i64 -8
  %18 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !17
  %20 = ptrtoint ptr %3 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = add i64 %20, %4
  %23 = sub i64 %22, %21
  %24 = trunc i64 %23 to i32
  %25 = load i32, ptr %7, align 4, !tbaa !27
  %26 = getelementptr i8, ptr %0, i64 28
  %27 = load i32, ptr %26, align 4, !tbaa !132
  %28 = getelementptr i8, ptr %0, i64 40
  %29 = load i32, ptr %28, align 8, !tbaa !29
  %30 = shl nuw i32 1, %25
  %31 = sub i32 %24, %27
  %32 = icmp ugt i32 %31, %30
  %33 = sub i32 %24, %30
  %34 = icmp eq i32 %29, 0
  %35 = select i1 %34, i1 %32, i1 false
  %36 = select i1 %35, i32 %33, i32 %27
  %37 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !28
  %39 = tail call i32 @llvm.umax.i32(i32 %38, i32 %36)
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %19, i64 %40
  %42 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !133
  %44 = zext i32 %36 to i64
  %45 = getelementptr inbounds i8, ptr %43, i64 %44
  %46 = getelementptr inbounds i8, ptr %43, i64 %40
  %47 = load i32, ptr %2, align 4, !tbaa !22
  %48 = getelementptr inbounds i32, ptr %2, i64 1
  %49 = load i32, ptr %48, align 4, !tbaa !22
  %50 = icmp ult i32 %36, %38
  br i1 %50, label %51, label %65

51:                                               ; preds = %6
  %52 = icmp ugt ptr %17, %3
  br i1 %52, label %53, label %939

53:                                               ; preds = %51
  %54 = sub i32 64, %15
  %55 = zext nneg i32 %54 to i64
  %56 = sub i32 32, %15
  %57 = sub i32 64, %11
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %16, i64 -32
  %60 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 3
  %61 = ptrtoint ptr %59 to i64
  %62 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 9
  %63 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 1
  %64 = getelementptr inbounds %struct.SeqStore_t, ptr %1, i64 0, i32 10
  br label %67

65:                                               ; preds = %6
  %66 = tail call i64 @ZSTD_compressBlock_doubleFast(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %4)
  br label %945

67:                                               ; preds = %53, %931
  %68 = phi ptr [ %3, %53 ], [ %935, %931 ]
  %69 = phi ptr [ %3, %53 ], [ %934, %931 ]
  %70 = phi i32 [ %47, %53 ], [ %933, %931 ]
  %71 = phi i32 [ %49, %53 ], [ %932, %931 ]
  switch i32 %5, label %72 [
    i32 8, label %90
    i32 5, label %78
    i32 6, label %82
    i32 7, label %86
  ]

72:                                               ; preds = %67
  %73 = load i32, ptr %68, align 1, !tbaa !22
  %74 = mul i32 %73, -1640531535
  %75 = lshr i32 %74, %56
  %76 = zext i32 %75 to i64
  %77 = load i64, ptr %68, align 1, !tbaa !21
  br label %94

78:                                               ; preds = %67
  %79 = load i64, ptr %68, align 1, !tbaa !21
  %80 = mul i64 %79, -3523014627271114752
  %81 = lshr i64 %80, %55
  br label %94

82:                                               ; preds = %67
  %83 = load i64, ptr %68, align 1, !tbaa !21
  %84 = mul i64 %83, -3523014627193847808
  %85 = lshr i64 %84, %55
  br label %94

86:                                               ; preds = %67
  %87 = load i64, ptr %68, align 1, !tbaa !21
  %88 = mul i64 %87, -3523014627193167104
  %89 = lshr i64 %88, %55
  br label %94

90:                                               ; preds = %67
  %91 = load i64, ptr %68, align 1, !tbaa !21
  %92 = mul i64 %91, -3523014627327384477
  %93 = lshr i64 %92, %55
  br label %94

94:                                               ; preds = %72, %78, %82, %86, %90
  %95 = phi i64 [ %77, %72 ], [ %87, %86 ], [ %83, %82 ], [ %79, %78 ], [ %91, %90 ]
  %96 = phi i64 [ %76, %72 ], [ %89, %86 ], [ %85, %82 ], [ %81, %78 ], [ %93, %90 ]
  %97 = getelementptr inbounds i32, ptr %13, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !22
  %99 = icmp ult i32 %98, %39
  %100 = select i1 %99, ptr %43, ptr %19
  %101 = zext i32 %98 to i64
  %102 = getelementptr inbounds i8, ptr %100, i64 %101
  %103 = mul i64 %95, -3523014627327384477
  %104 = lshr i64 %103, %58
  %105 = getelementptr inbounds i32, ptr %9, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !22
  %107 = icmp ult i32 %106, %39
  %108 = select i1 %107, ptr %43, ptr %19
  %109 = zext i32 %106 to i64
  %110 = getelementptr inbounds i8, ptr %108, i64 %109
  %111 = ptrtoint ptr %68 to i64
  %112 = sub i64 %111, %21
  %113 = trunc i64 %112 to i32
  %114 = add i32 %113, 1
  %115 = sub i32 %114, %70
  %116 = icmp ult i32 %115, %39
  %117 = select i1 %116, ptr %43, ptr %19
  %118 = zext i32 %115 to i64
  %119 = getelementptr inbounds i8, ptr %117, i64 %118
  store i32 %113, ptr %105, align 4, !tbaa !22
  store i32 %113, ptr %97, align 4, !tbaa !22
  %120 = sub i32 %115, %39
  %121 = icmp ugt i32 %120, -4
  %122 = sub i32 %114, %36
  %123 = icmp ugt i32 %70, %122
  %124 = select i1 %123, i1 true, i1 %121
  br i1 %124, label %305, label %125

125:                                              ; preds = %94
  %126 = load i32, ptr %119, align 1, !tbaa !22
  %127 = getelementptr inbounds i8, ptr %68, i64 1
  %128 = load i32, ptr %127, align 1, !tbaa !22
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %305

130:                                              ; preds = %125
  %131 = select i1 %116, ptr %46, ptr %16
  %132 = getelementptr inbounds i8, ptr %68, i64 5
  %133 = getelementptr inbounds i8, ptr %119, i64 4
  %134 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %132, ptr noundef nonnull %133, ptr noundef %16, ptr noundef %131, ptr noundef nonnull %41)
  %135 = add i64 %134, 4
  %136 = ptrtoint ptr %127 to i64
  %137 = ptrtoint ptr %69 to i64
  %138 = sub i64 %136, %137
  %139 = getelementptr inbounds i8, ptr %69, i64 %138
  %140 = icmp ugt ptr %139, %59
  %141 = load ptr, ptr %60, align 8, !tbaa !36
  br i1 %140, label %165, label %142

142:                                              ; preds = %130
  %143 = load <2 x i64>, ptr %69, align 1, !tbaa !35
  store <2 x i64> %143, ptr %141, align 1, !tbaa !35
  %144 = icmp ugt i64 %138, 16
  br i1 %144, label %145, label %283

145:                                              ; preds = %142
  %146 = load ptr, ptr %60, align 8, !tbaa !36
  %147 = getelementptr inbounds i8, ptr %146, i64 16
  %148 = getelementptr inbounds i8, ptr %69, i64 16
  %149 = add i64 %138, -16
  %150 = getelementptr inbounds i8, ptr %146, i64 %138
  %151 = load <2 x i64>, ptr %148, align 1, !tbaa !35
  store <2 x i64> %151, ptr %147, align 1, !tbaa !35
  %152 = icmp ult i64 %149, 17
  br i1 %152, label %283, label %153

153:                                              ; preds = %145
  %154 = getelementptr inbounds i8, ptr %146, i64 32
  br label %155

155:                                              ; preds = %155, %153
  %156 = phi ptr [ %154, %153 ], [ %163, %155 ]
  %157 = phi ptr [ %148, %153 ], [ %161, %155 ]
  %158 = getelementptr inbounds i8, ptr %157, i64 16
  %159 = load <2 x i64>, ptr %158, align 1, !tbaa !35
  store <2 x i64> %159, ptr %156, align 1, !tbaa !35
  %160 = getelementptr inbounds i8, ptr %156, i64 16
  %161 = getelementptr inbounds i8, ptr %157, i64 32
  %162 = load <2 x i64>, ptr %161, align 1, !tbaa !35
  store <2 x i64> %162, ptr %160, align 1, !tbaa !35
  %163 = getelementptr inbounds i8, ptr %156, i64 32
  %164 = icmp ult ptr %163, %150
  br i1 %164, label %155, label %287, !llvm.loop !38

165:                                              ; preds = %130
  %166 = ptrtoint ptr %139 to i64
  %167 = icmp ugt ptr %69, %59
  br i1 %167, label %185, label %168

168:                                              ; preds = %165
  %169 = sub i64 %61, %137
  %170 = getelementptr inbounds i8, ptr %141, i64 %169
  %171 = load <2 x i64>, ptr %69, align 1, !tbaa !35
  store <2 x i64> %171, ptr %141, align 1, !tbaa !35
  %172 = icmp ult i64 %169, 17
  br i1 %172, label %185, label %173

173:                                              ; preds = %168
  %174 = getelementptr inbounds i8, ptr %141, i64 16
  br label %175

175:                                              ; preds = %175, %173
  %176 = phi ptr [ %174, %173 ], [ %183, %175 ]
  %177 = phi ptr [ %69, %173 ], [ %181, %175 ]
  %178 = getelementptr inbounds i8, ptr %177, i64 16
  %179 = load <2 x i64>, ptr %178, align 1, !tbaa !35
  store <2 x i64> %179, ptr %176, align 1, !tbaa !35
  %180 = getelementptr inbounds i8, ptr %176, i64 16
  %181 = getelementptr inbounds i8, ptr %177, i64 32
  %182 = load <2 x i64>, ptr %181, align 1, !tbaa !35
  store <2 x i64> %182, ptr %180, align 1, !tbaa !35
  %183 = getelementptr inbounds i8, ptr %176, i64 32
  %184 = icmp ult ptr %183, %170
  br i1 %184, label %175, label %185, !llvm.loop !38

185:                                              ; preds = %175, %168, %165
  %186 = phi ptr [ %59, %168 ], [ %69, %165 ], [ %59, %175 ]
  %187 = phi ptr [ %170, %168 ], [ %141, %165 ], [ %170, %175 ]
  %188 = icmp ult ptr %186, %139
  br i1 %188, label %189, label %287

189:                                              ; preds = %185
  %190 = ptrtoint ptr %187 to i64
  %191 = ptrtoint ptr %186 to i64
  %192 = sub i64 %166, %191
  %193 = getelementptr i8, ptr %186, i64 %192
  %194 = icmp ult i64 %192, 8
  %195 = sub i64 %190, %191
  %196 = icmp ult i64 %195, 32
  %197 = select i1 %194, i1 true, i1 %196
  br i1 %197, label %233, label %198

198:                                              ; preds = %189
  %199 = icmp ult i64 %192, 32
  br i1 %199, label %219, label %200

200:                                              ; preds = %198
  %201 = and i64 %192, -32
  br label %202

202:                                              ; preds = %202, %200
  %203 = phi i64 [ 0, %200 ], [ %210, %202 ]
  %204 = getelementptr i8, ptr %187, i64 %203
  %205 = getelementptr i8, ptr %186, i64 %203
  %206 = getelementptr i8, ptr %205, i64 16
  %207 = load <16 x i8>, ptr %205, align 1, !tbaa !35
  %208 = load <16 x i8>, ptr %206, align 1, !tbaa !35
  %209 = getelementptr i8, ptr %204, i64 16
  store <16 x i8> %207, ptr %204, align 1, !tbaa !35
  store <16 x i8> %208, ptr %209, align 1, !tbaa !35
  %210 = add nuw i64 %203, 32
  %211 = icmp eq i64 %210, %201
  br i1 %211, label %212, label %202, !llvm.loop !134

212:                                              ; preds = %202
  %213 = icmp eq i64 %192, %201
  br i1 %213, label %287, label %214

214:                                              ; preds = %212
  %215 = getelementptr i8, ptr %186, i64 %201
  %216 = getelementptr i8, ptr %187, i64 %201
  %217 = and i64 %192, 24
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %233, label %219

219:                                              ; preds = %198, %214
  %220 = phi i64 [ %201, %214 ], [ 0, %198 ]
  %221 = and i64 %192, -8
  %222 = getelementptr i8, ptr %187, i64 %221
  %223 = getelementptr i8, ptr %186, i64 %221
  br label %224

224:                                              ; preds = %224, %219
  %225 = phi i64 [ %220, %219 ], [ %229, %224 ]
  %226 = getelementptr i8, ptr %187, i64 %225
  %227 = getelementptr i8, ptr %186, i64 %225
  %228 = load <8 x i8>, ptr %227, align 1, !tbaa !35
  store <8 x i8> %228, ptr %226, align 1, !tbaa !35
  %229 = add nuw i64 %225, 8
  %230 = icmp eq i64 %229, %221
  br i1 %230, label %231, label %224, !llvm.loop !135

231:                                              ; preds = %224
  %232 = icmp eq i64 %192, %221
  br i1 %232, label %287, label %233

233:                                              ; preds = %189, %214, %231
  %234 = phi ptr [ %187, %189 ], [ %216, %214 ], [ %222, %231 ]
  %235 = phi ptr [ %186, %189 ], [ %215, %214 ], [ %223, %231 ]
  %236 = add i64 %111, 1
  %237 = ptrtoint ptr %235 to i64
  %238 = sub i64 %236, %237
  %239 = sub i64 %111, %237
  %240 = and i64 %238, 7
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %251, label %242

242:                                              ; preds = %233, %242
  %243 = phi ptr [ %248, %242 ], [ %234, %233 ]
  %244 = phi ptr [ %246, %242 ], [ %235, %233 ]
  %245 = phi i64 [ %249, %242 ], [ 0, %233 ]
  %246 = getelementptr inbounds i8, ptr %244, i64 1
  %247 = load i8, ptr %244, align 1, !tbaa !35
  %248 = getelementptr inbounds i8, ptr %243, i64 1
  store i8 %247, ptr %243, align 1, !tbaa !35
  %249 = add i64 %245, 1
  %250 = icmp eq i64 %249, %240
  br i1 %250, label %251, label %242, !llvm.loop !136

251:                                              ; preds = %242, %233
  %252 = phi ptr [ %234, %233 ], [ %248, %242 ]
  %253 = phi ptr [ %235, %233 ], [ %246, %242 ]
  %254 = icmp ult i64 %239, 7
  br i1 %254, label %287, label %255

255:                                              ; preds = %251, %255
  %256 = phi ptr [ %281, %255 ], [ %252, %251 ]
  %257 = phi ptr [ %279, %255 ], [ %253, %251 ]
  %258 = getelementptr inbounds i8, ptr %257, i64 1
  %259 = load i8, ptr %257, align 1, !tbaa !35
  %260 = getelementptr inbounds i8, ptr %256, i64 1
  store i8 %259, ptr %256, align 1, !tbaa !35
  %261 = getelementptr inbounds i8, ptr %257, i64 2
  %262 = load i8, ptr %258, align 1, !tbaa !35
  %263 = getelementptr inbounds i8, ptr %256, i64 2
  store i8 %262, ptr %260, align 1, !tbaa !35
  %264 = getelementptr inbounds i8, ptr %257, i64 3
  %265 = load i8, ptr %261, align 1, !tbaa !35
  %266 = getelementptr inbounds i8, ptr %256, i64 3
  store i8 %265, ptr %263, align 1, !tbaa !35
  %267 = getelementptr inbounds i8, ptr %257, i64 4
  %268 = load i8, ptr %264, align 1, !tbaa !35
  %269 = getelementptr inbounds i8, ptr %256, i64 4
  store i8 %268, ptr %266, align 1, !tbaa !35
  %270 = getelementptr inbounds i8, ptr %257, i64 5
  %271 = load i8, ptr %267, align 1, !tbaa !35
  %272 = getelementptr inbounds i8, ptr %256, i64 5
  store i8 %271, ptr %269, align 1, !tbaa !35
  %273 = getelementptr inbounds i8, ptr %257, i64 6
  %274 = load i8, ptr %270, align 1, !tbaa !35
  %275 = getelementptr inbounds i8, ptr %256, i64 6
  store i8 %274, ptr %272, align 1, !tbaa !35
  %276 = getelementptr inbounds i8, ptr %257, i64 7
  %277 = load i8, ptr %273, align 1, !tbaa !35
  %278 = getelementptr inbounds i8, ptr %256, i64 7
  store i8 %277, ptr %275, align 1, !tbaa !35
  %279 = getelementptr inbounds i8, ptr %257, i64 8
  %280 = load i8, ptr %276, align 1, !tbaa !35
  %281 = getelementptr inbounds i8, ptr %256, i64 8
  store i8 %280, ptr %278, align 1, !tbaa !35
  %282 = icmp eq ptr %279, %193
  br i1 %282, label %287, label %255, !llvm.loop !137

283:                                              ; preds = %145, %142
  %284 = load ptr, ptr %60, align 8, !tbaa !36
  %285 = getelementptr inbounds i8, ptr %284, i64 %138
  store ptr %285, ptr %60, align 8, !tbaa !36
  %286 = load ptr, ptr %63, align 8, !tbaa !46
  br label %299

287:                                              ; preds = %155, %251, %255, %212, %231, %185
  %288 = load ptr, ptr %60, align 8, !tbaa !36
  %289 = getelementptr inbounds i8, ptr %288, i64 %138
  store ptr %289, ptr %60, align 8, !tbaa !36
  %290 = icmp ugt i64 %138, 65535
  %291 = load ptr, ptr %63, align 8, !tbaa !46
  br i1 %290, label %292, label %299, !prof !107

292:                                              ; preds = %287
  store i32 1, ptr %62, align 8, !tbaa !48
  %293 = load ptr, ptr %1, align 8, !tbaa !49
  %294 = ptrtoint ptr %291 to i64
  %295 = ptrtoint ptr %293 to i64
  %296 = sub i64 %294, %295
  %297 = lshr exact i64 %296, 3
  %298 = trunc i64 %297 to i32
  store i32 %298, ptr %64, align 4, !tbaa !50
  br label %299

299:                                              ; preds = %283, %292, %287
  %300 = phi ptr [ %286, %283 ], [ %291, %292 ], [ %291, %287 ]
  %301 = trunc i64 %138 to i16
  %302 = getelementptr inbounds %struct.SeqDef_s, ptr %300, i64 0, i32 1
  store i16 %301, ptr %302, align 4, !tbaa !51
  store i32 1, ptr %300, align 4, !tbaa !53
  %303 = add i64 %134, 1
  %304 = icmp ugt i64 %303, 65535
  br i1 %304, label %761, label %774, !prof !54

305:                                              ; preds = %125, %94
  %306 = icmp ugt i32 %106, %36
  br i1 %306, label %307, label %511

307:                                              ; preds = %305
  %308 = load i64, ptr %110, align 1, !tbaa !21
  %309 = icmp eq i64 %308, %95
  br i1 %309, label %310, label %511

310:                                              ; preds = %307
  %311 = select i1 %107, ptr %46, ptr %16
  %312 = select i1 %107, ptr %45, ptr %41
  %313 = getelementptr inbounds i8, ptr %68, i64 8
  %314 = getelementptr inbounds i8, ptr %110, i64 8
  %315 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %313, ptr noundef nonnull %314, ptr noundef %16, ptr noundef %311, ptr noundef nonnull %41)
  %316 = add i64 %315, 8
  %317 = sub i32 %113, %106
  %318 = icmp ugt ptr %68, %69
  %319 = icmp ugt ptr %110, %312
  %320 = and i1 %319, %318
  br i1 %320, label %321, label %339

321:                                              ; preds = %310, %330
  %322 = phi ptr [ %325, %330 ], [ %68, %310 ]
  %323 = phi ptr [ %327, %330 ], [ %110, %310 ]
  %324 = phi i64 [ %331, %330 ], [ %316, %310 ]
  %325 = getelementptr inbounds i8, ptr %322, i64 -1
  %326 = load i8, ptr %325, align 1, !tbaa !35
  %327 = getelementptr inbounds i8, ptr %323, i64 -1
  %328 = load i8, ptr %327, align 1, !tbaa !35
  %329 = icmp eq i8 %326, %328
  br i1 %329, label %330, label %335

330:                                              ; preds = %321
  %331 = add i64 %324, 1
  %332 = icmp ugt ptr %325, %69
  %333 = icmp ugt ptr %327, %312
  %334 = and i1 %333, %332
  br i1 %334, label %321, label %335, !llvm.loop !138

335:                                              ; preds = %330, %321
  %336 = phi i64 [ %324, %321 ], [ %331, %330 ]
  %337 = phi ptr [ %322, %321 ], [ %325, %330 ]
  %338 = ptrtoint ptr %337 to i64
  br label %339

339:                                              ; preds = %335, %310
  %340 = phi i64 [ %338, %335 ], [ %111, %310 ]
  %341 = phi i64 [ %336, %335 ], [ %316, %310 ]
  %342 = phi ptr [ %337, %335 ], [ %68, %310 ]
  %343 = ptrtoint ptr %69 to i64
  %344 = sub i64 %340, %343
  %345 = add i32 %317, 3
  %346 = getelementptr inbounds i8, ptr %69, i64 %344
  %347 = icmp ugt ptr %346, %59
  %348 = load ptr, ptr %60, align 8, !tbaa !36
  br i1 %347, label %372, label %349

349:                                              ; preds = %339
  %350 = load <2 x i64>, ptr %69, align 1, !tbaa !35
  store <2 x i64> %350, ptr %348, align 1, !tbaa !35
  %351 = icmp ugt i64 %344, 16
  br i1 %351, label %352, label %489

352:                                              ; preds = %349
  %353 = load ptr, ptr %60, align 8, !tbaa !36
  %354 = getelementptr inbounds i8, ptr %353, i64 16
  %355 = getelementptr inbounds i8, ptr %69, i64 16
  %356 = add i64 %344, -16
  %357 = getelementptr inbounds i8, ptr %353, i64 %344
  %358 = load <2 x i64>, ptr %355, align 1, !tbaa !35
  store <2 x i64> %358, ptr %354, align 1, !tbaa !35
  %359 = icmp ult i64 %356, 17
  br i1 %359, label %489, label %360

360:                                              ; preds = %352
  %361 = getelementptr inbounds i8, ptr %353, i64 32
  br label %362

362:                                              ; preds = %362, %360
  %363 = phi ptr [ %361, %360 ], [ %370, %362 ]
  %364 = phi ptr [ %355, %360 ], [ %368, %362 ]
  %365 = getelementptr inbounds i8, ptr %364, i64 16
  %366 = load <2 x i64>, ptr %365, align 1, !tbaa !35
  store <2 x i64> %366, ptr %363, align 1, !tbaa !35
  %367 = getelementptr inbounds i8, ptr %363, i64 16
  %368 = getelementptr inbounds i8, ptr %364, i64 32
  %369 = load <2 x i64>, ptr %368, align 1, !tbaa !35
  store <2 x i64> %369, ptr %367, align 1, !tbaa !35
  %370 = getelementptr inbounds i8, ptr %363, i64 32
  %371 = icmp ult ptr %370, %357
  br i1 %371, label %362, label %493, !llvm.loop !38

372:                                              ; preds = %339
  %373 = ptrtoint ptr %346 to i64
  %374 = icmp ugt ptr %69, %59
  br i1 %374, label %392, label %375

375:                                              ; preds = %372
  %376 = sub i64 %61, %343
  %377 = getelementptr inbounds i8, ptr %348, i64 %376
  %378 = load <2 x i64>, ptr %69, align 1, !tbaa !35
  store <2 x i64> %378, ptr %348, align 1, !tbaa !35
  %379 = icmp ult i64 %376, 17
  br i1 %379, label %392, label %380

380:                                              ; preds = %375
  %381 = getelementptr inbounds i8, ptr %348, i64 16
  br label %382

382:                                              ; preds = %382, %380
  %383 = phi ptr [ %381, %380 ], [ %390, %382 ]
  %384 = phi ptr [ %69, %380 ], [ %388, %382 ]
  %385 = getelementptr inbounds i8, ptr %384, i64 16
  %386 = load <2 x i64>, ptr %385, align 1, !tbaa !35
  store <2 x i64> %386, ptr %383, align 1, !tbaa !35
  %387 = getelementptr inbounds i8, ptr %383, i64 16
  %388 = getelementptr inbounds i8, ptr %384, i64 32
  %389 = load <2 x i64>, ptr %388, align 1, !tbaa !35
  store <2 x i64> %389, ptr %387, align 1, !tbaa !35
  %390 = getelementptr inbounds i8, ptr %383, i64 32
  %391 = icmp ult ptr %390, %377
  br i1 %391, label %382, label %392, !llvm.loop !38

392:                                              ; preds = %382, %375, %372
  %393 = phi ptr [ %59, %375 ], [ %69, %372 ], [ %59, %382 ]
  %394 = phi ptr [ %377, %375 ], [ %348, %372 ], [ %377, %382 ]
  %395 = icmp ult ptr %393, %346
  br i1 %395, label %396, label %493

396:                                              ; preds = %392
  %397 = ptrtoint ptr %394 to i64
  %398 = ptrtoint ptr %393 to i64
  %399 = sub i64 %373, %398
  %400 = getelementptr i8, ptr %393, i64 %399
  %401 = icmp ult i64 %399, 8
  %402 = sub i64 %397, %398
  %403 = icmp ult i64 %402, 32
  %404 = select i1 %401, i1 true, i1 %403
  br i1 %404, label %440, label %405

405:                                              ; preds = %396
  %406 = icmp ult i64 %399, 32
  br i1 %406, label %426, label %407

407:                                              ; preds = %405
  %408 = and i64 %399, -32
  br label %409

409:                                              ; preds = %409, %407
  %410 = phi i64 [ 0, %407 ], [ %417, %409 ]
  %411 = getelementptr i8, ptr %394, i64 %410
  %412 = getelementptr i8, ptr %393, i64 %410
  %413 = getelementptr i8, ptr %412, i64 16
  %414 = load <16 x i8>, ptr %412, align 1, !tbaa !35
  %415 = load <16 x i8>, ptr %413, align 1, !tbaa !35
  %416 = getelementptr i8, ptr %411, i64 16
  store <16 x i8> %414, ptr %411, align 1, !tbaa !35
  store <16 x i8> %415, ptr %416, align 1, !tbaa !35
  %417 = add nuw i64 %410, 32
  %418 = icmp eq i64 %417, %408
  br i1 %418, label %419, label %409, !llvm.loop !139

419:                                              ; preds = %409
  %420 = icmp eq i64 %399, %408
  br i1 %420, label %493, label %421

421:                                              ; preds = %419
  %422 = getelementptr i8, ptr %393, i64 %408
  %423 = getelementptr i8, ptr %394, i64 %408
  %424 = and i64 %399, 24
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %440, label %426

426:                                              ; preds = %405, %421
  %427 = phi i64 [ %408, %421 ], [ 0, %405 ]
  %428 = and i64 %399, -8
  %429 = getelementptr i8, ptr %394, i64 %428
  %430 = getelementptr i8, ptr %393, i64 %428
  br label %431

431:                                              ; preds = %431, %426
  %432 = phi i64 [ %427, %426 ], [ %436, %431 ]
  %433 = getelementptr i8, ptr %394, i64 %432
  %434 = getelementptr i8, ptr %393, i64 %432
  %435 = load <8 x i8>, ptr %434, align 1, !tbaa !35
  store <8 x i8> %435, ptr %433, align 1, !tbaa !35
  %436 = add nuw i64 %432, 8
  %437 = icmp eq i64 %436, %428
  br i1 %437, label %438, label %431, !llvm.loop !140

438:                                              ; preds = %431
  %439 = icmp eq i64 %399, %428
  br i1 %439, label %493, label %440

440:                                              ; preds = %396, %421, %438
  %441 = phi ptr [ %394, %396 ], [ %423, %421 ], [ %429, %438 ]
  %442 = phi ptr [ %393, %396 ], [ %422, %421 ], [ %430, %438 ]
  %443 = ptrtoint ptr %442 to i64
  %444 = sub i64 %340, %443
  %445 = and i64 %444, 7
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %456, label %447

447:                                              ; preds = %440, %447
  %448 = phi ptr [ %453, %447 ], [ %441, %440 ]
  %449 = phi ptr [ %451, %447 ], [ %442, %440 ]
  %450 = phi i64 [ %454, %447 ], [ 0, %440 ]
  %451 = getelementptr inbounds i8, ptr %449, i64 1
  %452 = load i8, ptr %449, align 1, !tbaa !35
  %453 = getelementptr inbounds i8, ptr %448, i64 1
  store i8 %452, ptr %448, align 1, !tbaa !35
  %454 = add i64 %450, 1
  %455 = icmp eq i64 %454, %445
  br i1 %455, label %456, label %447, !llvm.loop !141

456:                                              ; preds = %447, %440
  %457 = phi ptr [ %441, %440 ], [ %453, %447 ]
  %458 = phi ptr [ %442, %440 ], [ %451, %447 ]
  %459 = sub i64 %443, %340
  %460 = icmp ugt i64 %459, -8
  br i1 %460, label %493, label %461

461:                                              ; preds = %456, %461
  %462 = phi ptr [ %487, %461 ], [ %457, %456 ]
  %463 = phi ptr [ %485, %461 ], [ %458, %456 ]
  %464 = getelementptr inbounds i8, ptr %463, i64 1
  %465 = load i8, ptr %463, align 1, !tbaa !35
  %466 = getelementptr inbounds i8, ptr %462, i64 1
  store i8 %465, ptr %462, align 1, !tbaa !35
  %467 = getelementptr inbounds i8, ptr %463, i64 2
  %468 = load i8, ptr %464, align 1, !tbaa !35
  %469 = getelementptr inbounds i8, ptr %462, i64 2
  store i8 %468, ptr %466, align 1, !tbaa !35
  %470 = getelementptr inbounds i8, ptr %463, i64 3
  %471 = load i8, ptr %467, align 1, !tbaa !35
  %472 = getelementptr inbounds i8, ptr %462, i64 3
  store i8 %471, ptr %469, align 1, !tbaa !35
  %473 = getelementptr inbounds i8, ptr %463, i64 4
  %474 = load i8, ptr %470, align 1, !tbaa !35
  %475 = getelementptr inbounds i8, ptr %462, i64 4
  store i8 %474, ptr %472, align 1, !tbaa !35
  %476 = getelementptr inbounds i8, ptr %463, i64 5
  %477 = load i8, ptr %473, align 1, !tbaa !35
  %478 = getelementptr inbounds i8, ptr %462, i64 5
  store i8 %477, ptr %475, align 1, !tbaa !35
  %479 = getelementptr inbounds i8, ptr %463, i64 6
  %480 = load i8, ptr %476, align 1, !tbaa !35
  %481 = getelementptr inbounds i8, ptr %462, i64 6
  store i8 %480, ptr %478, align 1, !tbaa !35
  %482 = getelementptr inbounds i8, ptr %463, i64 7
  %483 = load i8, ptr %479, align 1, !tbaa !35
  %484 = getelementptr inbounds i8, ptr %462, i64 7
  store i8 %483, ptr %481, align 1, !tbaa !35
  %485 = getelementptr inbounds i8, ptr %463, i64 8
  %486 = load i8, ptr %482, align 1, !tbaa !35
  %487 = getelementptr inbounds i8, ptr %462, i64 8
  store i8 %486, ptr %484, align 1, !tbaa !35
  %488 = icmp eq ptr %485, %400
  br i1 %488, label %493, label %461, !llvm.loop !142

489:                                              ; preds = %352, %349
  %490 = load ptr, ptr %60, align 8, !tbaa !36
  %491 = getelementptr inbounds i8, ptr %490, i64 %344
  store ptr %491, ptr %60, align 8, !tbaa !36
  %492 = load ptr, ptr %63, align 8, !tbaa !46
  br label %505

493:                                              ; preds = %362, %456, %461, %419, %438, %392
  %494 = load ptr, ptr %60, align 8, !tbaa !36
  %495 = getelementptr inbounds i8, ptr %494, i64 %344
  store ptr %495, ptr %60, align 8, !tbaa !36
  %496 = icmp ugt i64 %344, 65535
  %497 = load ptr, ptr %63, align 8, !tbaa !46
  br i1 %496, label %498, label %505, !prof !47

498:                                              ; preds = %493
  store i32 1, ptr %62, align 8, !tbaa !48
  %499 = load ptr, ptr %1, align 8, !tbaa !49
  %500 = ptrtoint ptr %497 to i64
  %501 = ptrtoint ptr %499 to i64
  %502 = sub i64 %500, %501
  %503 = lshr exact i64 %502, 3
  %504 = trunc i64 %503 to i32
  store i32 %504, ptr %64, align 4, !tbaa !50
  br label %505

505:                                              ; preds = %489, %498, %493
  %506 = phi ptr [ %492, %489 ], [ %497, %498 ], [ %497, %493 ]
  %507 = trunc i64 %344 to i16
  %508 = getelementptr inbounds %struct.SeqDef_s, ptr %506, i64 0, i32 1
  store i16 %507, ptr %508, align 4, !tbaa !51
  store i32 %345, ptr %506, align 4, !tbaa !53
  %509 = add i64 %341, -3
  %510 = icmp ugt i64 %509, 65535
  br i1 %510, label %761, label %774, !prof !54

511:                                              ; preds = %307, %305
  %512 = icmp ugt i32 %98, %36
  br i1 %512, label %513, label %755

513:                                              ; preds = %511
  %514 = load i32, ptr %102, align 1, !tbaa !22
  %515 = load i32, ptr %68, align 1, !tbaa !22
  %516 = icmp eq i32 %514, %515
  br i1 %516, label %517, label %755

517:                                              ; preds = %513
  %518 = getelementptr inbounds i8, ptr %68, i64 1
  %519 = load i64, ptr %518, align 1, !tbaa !21
  %520 = mul i64 %519, -3523014627327384477
  %521 = lshr i64 %520, %58
  %522 = getelementptr inbounds i32, ptr %9, i64 %521
  %523 = load i32, ptr %522, align 4, !tbaa !22
  %524 = icmp ult i32 %523, %39
  %525 = select i1 %524, ptr %43, ptr %19
  %526 = zext i32 %523 to i64
  %527 = getelementptr inbounds i8, ptr %525, i64 %526
  store i32 %114, ptr %522, align 4, !tbaa !22
  %528 = icmp ugt i32 %523, %36
  br i1 %528, label %529, label %557

529:                                              ; preds = %517
  %530 = load i64, ptr %527, align 1, !tbaa !21
  %531 = icmp eq i64 %530, %519
  br i1 %531, label %532, label %557

532:                                              ; preds = %529
  %533 = select i1 %524, ptr %46, ptr %16
  %534 = select i1 %524, ptr %45, ptr %41
  %535 = getelementptr inbounds i8, ptr %68, i64 9
  %536 = getelementptr inbounds i8, ptr %527, i64 8
  %537 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %535, ptr noundef nonnull %536, ptr noundef %16, ptr noundef %533, ptr noundef nonnull %41)
  %538 = add i64 %537, 8
  %539 = sub i32 %114, %523
  %540 = icmp ugt ptr %518, %69
  %541 = icmp ugt ptr %527, %534
  %542 = and i1 %541, %540
  br i1 %542, label %543, label %582

543:                                              ; preds = %532, %552
  %544 = phi ptr [ %547, %552 ], [ %518, %532 ]
  %545 = phi i64 [ %553, %552 ], [ %538, %532 ]
  %546 = phi ptr [ %549, %552 ], [ %527, %532 ]
  %547 = getelementptr inbounds i8, ptr %544, i64 -1
  %548 = load i8, ptr %547, align 1, !tbaa !35
  %549 = getelementptr inbounds i8, ptr %546, i64 -1
  %550 = load i8, ptr %549, align 1, !tbaa !35
  %551 = icmp eq i8 %548, %550
  br i1 %551, label %552, label %582

552:                                              ; preds = %543
  %553 = add i64 %545, 1
  %554 = icmp ugt ptr %547, %69
  %555 = icmp ugt ptr %549, %534
  %556 = and i1 %555, %554
  br i1 %556, label %543, label %582, !llvm.loop !143

557:                                              ; preds = %529, %517
  %558 = select i1 %99, ptr %46, ptr %16
  %559 = select i1 %99, ptr %45, ptr %41
  %560 = getelementptr inbounds i8, ptr %68, i64 4
  %561 = getelementptr inbounds i8, ptr %102, i64 4
  %562 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %560, ptr noundef nonnull %561, ptr noundef %16, ptr noundef %558, ptr noundef nonnull %41)
  %563 = add i64 %562, 4
  %564 = sub i32 %113, %98
  %565 = icmp ugt ptr %68, %69
  %566 = icmp ugt ptr %102, %559
  %567 = and i1 %566, %565
  br i1 %567, label %568, label %582

568:                                              ; preds = %557, %577
  %569 = phi ptr [ %572, %577 ], [ %68, %557 ]
  %570 = phi ptr [ %574, %577 ], [ %102, %557 ]
  %571 = phi i64 [ %578, %577 ], [ %563, %557 ]
  %572 = getelementptr inbounds i8, ptr %569, i64 -1
  %573 = load i8, ptr %572, align 1, !tbaa !35
  %574 = getelementptr inbounds i8, ptr %570, i64 -1
  %575 = load i8, ptr %574, align 1, !tbaa !35
  %576 = icmp eq i8 %573, %575
  br i1 %576, label %577, label %582

577:                                              ; preds = %568
  %578 = add i64 %571, 1
  %579 = icmp ugt ptr %572, %69
  %580 = icmp ugt ptr %574, %559
  %581 = and i1 %580, %579
  br i1 %581, label %568, label %582, !llvm.loop !144

582:                                              ; preds = %577, %568, %552, %543, %557, %532
  %583 = phi i32 [ %539, %532 ], [ %564, %557 ], [ %539, %543 ], [ %539, %552 ], [ %564, %568 ], [ %564, %577 ]
  %584 = phi i64 [ %538, %532 ], [ %563, %557 ], [ %553, %552 ], [ %545, %543 ], [ %578, %577 ], [ %571, %568 ]
  %585 = phi ptr [ %518, %532 ], [ %68, %557 ], [ %547, %552 ], [ %544, %543 ], [ %572, %577 ], [ %569, %568 ]
  %586 = ptrtoint ptr %585 to i64
  %587 = ptrtoint ptr %69 to i64
  %588 = sub i64 %586, %587
  %589 = add i32 %583, 3
  %590 = getelementptr inbounds i8, ptr %69, i64 %588
  %591 = icmp ugt ptr %590, %59
  %592 = load ptr, ptr %60, align 8, !tbaa !36
  br i1 %591, label %616, label %593

593:                                              ; preds = %582
  %594 = load <2 x i64>, ptr %69, align 1, !tbaa !35
  store <2 x i64> %594, ptr %592, align 1, !tbaa !35
  %595 = icmp ugt i64 %588, 16
  br i1 %595, label %596, label %733

596:                                              ; preds = %593
  %597 = load ptr, ptr %60, align 8, !tbaa !36
  %598 = getelementptr inbounds i8, ptr %597, i64 16
  %599 = getelementptr inbounds i8, ptr %69, i64 16
  %600 = add i64 %588, -16
  %601 = getelementptr inbounds i8, ptr %597, i64 %588
  %602 = load <2 x i64>, ptr %599, align 1, !tbaa !35
  store <2 x i64> %602, ptr %598, align 1, !tbaa !35
  %603 = icmp ult i64 %600, 17
  br i1 %603, label %733, label %604

604:                                              ; preds = %596
  %605 = getelementptr inbounds i8, ptr %597, i64 32
  br label %606

606:                                              ; preds = %606, %604
  %607 = phi ptr [ %605, %604 ], [ %614, %606 ]
  %608 = phi ptr [ %599, %604 ], [ %612, %606 ]
  %609 = getelementptr inbounds i8, ptr %608, i64 16
  %610 = load <2 x i64>, ptr %609, align 1, !tbaa !35
  store <2 x i64> %610, ptr %607, align 1, !tbaa !35
  %611 = getelementptr inbounds i8, ptr %607, i64 16
  %612 = getelementptr inbounds i8, ptr %608, i64 32
  %613 = load <2 x i64>, ptr %612, align 1, !tbaa !35
  store <2 x i64> %613, ptr %611, align 1, !tbaa !35
  %614 = getelementptr inbounds i8, ptr %607, i64 32
  %615 = icmp ult ptr %614, %601
  br i1 %615, label %606, label %737, !llvm.loop !38

616:                                              ; preds = %582
  %617 = ptrtoint ptr %590 to i64
  %618 = icmp ugt ptr %69, %59
  br i1 %618, label %636, label %619

619:                                              ; preds = %616
  %620 = sub i64 %61, %587
  %621 = getelementptr inbounds i8, ptr %592, i64 %620
  %622 = load <2 x i64>, ptr %69, align 1, !tbaa !35
  store <2 x i64> %622, ptr %592, align 1, !tbaa !35
  %623 = icmp ult i64 %620, 17
  br i1 %623, label %636, label %624

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, ptr %592, i64 16
  br label %626

626:                                              ; preds = %626, %624
  %627 = phi ptr [ %625, %624 ], [ %634, %626 ]
  %628 = phi ptr [ %69, %624 ], [ %632, %626 ]
  %629 = getelementptr inbounds i8, ptr %628, i64 16
  %630 = load <2 x i64>, ptr %629, align 1, !tbaa !35
  store <2 x i64> %630, ptr %627, align 1, !tbaa !35
  %631 = getelementptr inbounds i8, ptr %627, i64 16
  %632 = getelementptr inbounds i8, ptr %628, i64 32
  %633 = load <2 x i64>, ptr %632, align 1, !tbaa !35
  store <2 x i64> %633, ptr %631, align 1, !tbaa !35
  %634 = getelementptr inbounds i8, ptr %627, i64 32
  %635 = icmp ult ptr %634, %621
  br i1 %635, label %626, label %636, !llvm.loop !38

636:                                              ; preds = %626, %619, %616
  %637 = phi ptr [ %59, %619 ], [ %69, %616 ], [ %59, %626 ]
  %638 = phi ptr [ %621, %619 ], [ %592, %616 ], [ %621, %626 ]
  %639 = icmp ult ptr %637, %590
  br i1 %639, label %640, label %737

640:                                              ; preds = %636
  %641 = ptrtoint ptr %638 to i64
  %642 = ptrtoint ptr %637 to i64
  %643 = sub i64 %617, %642
  %644 = getelementptr i8, ptr %637, i64 %643
  %645 = icmp ult i64 %643, 8
  %646 = sub i64 %641, %642
  %647 = icmp ult i64 %646, 32
  %648 = select i1 %645, i1 true, i1 %647
  br i1 %648, label %684, label %649

649:                                              ; preds = %640
  %650 = icmp ult i64 %643, 32
  br i1 %650, label %670, label %651

651:                                              ; preds = %649
  %652 = and i64 %643, -32
  br label %653

653:                                              ; preds = %653, %651
  %654 = phi i64 [ 0, %651 ], [ %661, %653 ]
  %655 = getelementptr i8, ptr %638, i64 %654
  %656 = getelementptr i8, ptr %637, i64 %654
  %657 = getelementptr i8, ptr %656, i64 16
  %658 = load <16 x i8>, ptr %656, align 1, !tbaa !35
  %659 = load <16 x i8>, ptr %657, align 1, !tbaa !35
  %660 = getelementptr i8, ptr %655, i64 16
  store <16 x i8> %658, ptr %655, align 1, !tbaa !35
  store <16 x i8> %659, ptr %660, align 1, !tbaa !35
  %661 = add nuw i64 %654, 32
  %662 = icmp eq i64 %661, %652
  br i1 %662, label %663, label %653, !llvm.loop !145

663:                                              ; preds = %653
  %664 = icmp eq i64 %643, %652
  br i1 %664, label %737, label %665

665:                                              ; preds = %663
  %666 = getelementptr i8, ptr %637, i64 %652
  %667 = getelementptr i8, ptr %638, i64 %652
  %668 = and i64 %643, 24
  %669 = icmp eq i64 %668, 0
  br i1 %669, label %684, label %670

670:                                              ; preds = %649, %665
  %671 = phi i64 [ %652, %665 ], [ 0, %649 ]
  %672 = and i64 %643, -8
  %673 = getelementptr i8, ptr %638, i64 %672
  %674 = getelementptr i8, ptr %637, i64 %672
  br label %675

675:                                              ; preds = %675, %670
  %676 = phi i64 [ %671, %670 ], [ %680, %675 ]
  %677 = getelementptr i8, ptr %638, i64 %676
  %678 = getelementptr i8, ptr %637, i64 %676
  %679 = load <8 x i8>, ptr %678, align 1, !tbaa !35
  store <8 x i8> %679, ptr %677, align 1, !tbaa !35
  %680 = add nuw i64 %676, 8
  %681 = icmp eq i64 %680, %672
  br i1 %681, label %682, label %675, !llvm.loop !146

682:                                              ; preds = %675
  %683 = icmp eq i64 %643, %672
  br i1 %683, label %737, label %684

684:                                              ; preds = %640, %665, %682
  %685 = phi ptr [ %638, %640 ], [ %667, %665 ], [ %673, %682 ]
  %686 = phi ptr [ %637, %640 ], [ %666, %665 ], [ %674, %682 ]
  %687 = ptrtoint ptr %686 to i64
  %688 = sub i64 %586, %687
  %689 = and i64 %688, 7
  %690 = icmp eq i64 %689, 0
  br i1 %690, label %700, label %691

691:                                              ; preds = %684, %691
  %692 = phi ptr [ %697, %691 ], [ %685, %684 ]
  %693 = phi ptr [ %695, %691 ], [ %686, %684 ]
  %694 = phi i64 [ %698, %691 ], [ 0, %684 ]
  %695 = getelementptr inbounds i8, ptr %693, i64 1
  %696 = load i8, ptr %693, align 1, !tbaa !35
  %697 = getelementptr inbounds i8, ptr %692, i64 1
  store i8 %696, ptr %692, align 1, !tbaa !35
  %698 = add i64 %694, 1
  %699 = icmp eq i64 %698, %689
  br i1 %699, label %700, label %691, !llvm.loop !147

700:                                              ; preds = %691, %684
  %701 = phi ptr [ %685, %684 ], [ %697, %691 ]
  %702 = phi ptr [ %686, %684 ], [ %695, %691 ]
  %703 = sub i64 %687, %586
  %704 = icmp ugt i64 %703, -8
  br i1 %704, label %737, label %705

705:                                              ; preds = %700, %705
  %706 = phi ptr [ %731, %705 ], [ %701, %700 ]
  %707 = phi ptr [ %729, %705 ], [ %702, %700 ]
  %708 = getelementptr inbounds i8, ptr %707, i64 1
  %709 = load i8, ptr %707, align 1, !tbaa !35
  %710 = getelementptr inbounds i8, ptr %706, i64 1
  store i8 %709, ptr %706, align 1, !tbaa !35
  %711 = getelementptr inbounds i8, ptr %707, i64 2
  %712 = load i8, ptr %708, align 1, !tbaa !35
  %713 = getelementptr inbounds i8, ptr %706, i64 2
  store i8 %712, ptr %710, align 1, !tbaa !35
  %714 = getelementptr inbounds i8, ptr %707, i64 3
  %715 = load i8, ptr %711, align 1, !tbaa !35
  %716 = getelementptr inbounds i8, ptr %706, i64 3
  store i8 %715, ptr %713, align 1, !tbaa !35
  %717 = getelementptr inbounds i8, ptr %707, i64 4
  %718 = load i8, ptr %714, align 1, !tbaa !35
  %719 = getelementptr inbounds i8, ptr %706, i64 4
  store i8 %718, ptr %716, align 1, !tbaa !35
  %720 = getelementptr inbounds i8, ptr %707, i64 5
  %721 = load i8, ptr %717, align 1, !tbaa !35
  %722 = getelementptr inbounds i8, ptr %706, i64 5
  store i8 %721, ptr %719, align 1, !tbaa !35
  %723 = getelementptr inbounds i8, ptr %707, i64 6
  %724 = load i8, ptr %720, align 1, !tbaa !35
  %725 = getelementptr inbounds i8, ptr %706, i64 6
  store i8 %724, ptr %722, align 1, !tbaa !35
  %726 = getelementptr inbounds i8, ptr %707, i64 7
  %727 = load i8, ptr %723, align 1, !tbaa !35
  %728 = getelementptr inbounds i8, ptr %706, i64 7
  store i8 %727, ptr %725, align 1, !tbaa !35
  %729 = getelementptr inbounds i8, ptr %707, i64 8
  %730 = load i8, ptr %726, align 1, !tbaa !35
  %731 = getelementptr inbounds i8, ptr %706, i64 8
  store i8 %730, ptr %728, align 1, !tbaa !35
  %732 = icmp eq ptr %729, %644
  br i1 %732, label %737, label %705, !llvm.loop !148

733:                                              ; preds = %596, %593
  %734 = load ptr, ptr %60, align 8, !tbaa !36
  %735 = getelementptr inbounds i8, ptr %734, i64 %588
  store ptr %735, ptr %60, align 8, !tbaa !36
  %736 = load ptr, ptr %63, align 8, !tbaa !46
  br label %749

737:                                              ; preds = %606, %700, %705, %663, %682, %636
  %738 = load ptr, ptr %60, align 8, !tbaa !36
  %739 = getelementptr inbounds i8, ptr %738, i64 %588
  store ptr %739, ptr %60, align 8, !tbaa !36
  %740 = icmp ugt i64 %588, 65535
  %741 = load ptr, ptr %63, align 8, !tbaa !46
  br i1 %740, label %742, label %749, !prof !107

742:                                              ; preds = %737
  store i32 1, ptr %62, align 8, !tbaa !48
  %743 = load ptr, ptr %1, align 8, !tbaa !49
  %744 = ptrtoint ptr %741 to i64
  %745 = ptrtoint ptr %743 to i64
  %746 = sub i64 %744, %745
  %747 = lshr exact i64 %746, 3
  %748 = trunc i64 %747 to i32
  store i32 %748, ptr %64, align 4, !tbaa !50
  br label %749

749:                                              ; preds = %733, %742, %737
  %750 = phi ptr [ %736, %733 ], [ %741, %742 ], [ %741, %737 ]
  %751 = trunc i64 %588 to i16
  %752 = getelementptr inbounds %struct.SeqDef_s, ptr %750, i64 0, i32 1
  store i16 %751, ptr %752, align 4, !tbaa !51
  store i32 %589, ptr %750, align 4, !tbaa !53
  %753 = add i64 %584, -3
  %754 = icmp ugt i64 %753, 65535
  br i1 %754, label %761, label %774, !prof !54

755:                                              ; preds = %511, %513
  %756 = ptrtoint ptr %69 to i64
  %757 = sub i64 %111, %756
  %758 = ashr i64 %757, 8
  %759 = add nsw i64 %758, 1
  %760 = getelementptr inbounds i8, ptr %68, i64 %759
  br label %931, !llvm.loop !149

761:                                              ; preds = %749, %505, %299
  %762 = phi ptr [ %300, %299 ], [ %506, %505 ], [ %750, %749 ]
  %763 = phi i64 [ %303, %299 ], [ %509, %505 ], [ %753, %749 ]
  %764 = phi i64 [ %135, %299 ], [ %341, %505 ], [ %584, %749 ]
  %765 = phi i32 [ %71, %299 ], [ %70, %505 ], [ %70, %749 ]
  %766 = phi i32 [ %70, %299 ], [ %317, %505 ], [ %583, %749 ]
  %767 = phi ptr [ %127, %299 ], [ %342, %505 ], [ %585, %749 ]
  store i32 2, ptr %62, align 8, !tbaa !48
  %768 = load ptr, ptr %1, align 8, !tbaa !49
  %769 = ptrtoint ptr %762 to i64
  %770 = ptrtoint ptr %768 to i64
  %771 = sub i64 %769, %770
  %772 = lshr exact i64 %771, 3
  %773 = trunc i64 %772 to i32
  store i32 %773, ptr %64, align 4, !tbaa !50
  br label %774

774:                                              ; preds = %761, %749, %505, %299
  %775 = phi i64 [ %303, %299 ], [ %509, %505 ], [ %753, %749 ], [ %763, %761 ]
  %776 = phi ptr [ %300, %299 ], [ %506, %505 ], [ %750, %749 ], [ %762, %761 ]
  %777 = phi i64 [ %135, %299 ], [ %341, %505 ], [ %584, %749 ], [ %764, %761 ]
  %778 = phi i32 [ %71, %299 ], [ %70, %505 ], [ %70, %749 ], [ %765, %761 ]
  %779 = phi i32 [ %70, %299 ], [ %317, %505 ], [ %583, %749 ], [ %766, %761 ]
  %780 = phi ptr [ %127, %299 ], [ %342, %505 ], [ %585, %749 ], [ %767, %761 ]
  %781 = trunc i64 %775 to i16
  %782 = getelementptr inbounds %struct.SeqDef_s, ptr %776, i64 0, i32 2
  store i16 %781, ptr %782, align 2, !tbaa !61
  %783 = getelementptr inbounds %struct.SeqDef_s, ptr %776, i64 1
  store ptr %783, ptr %63, align 8, !tbaa !46
  %784 = getelementptr inbounds i8, ptr %780, i64 %777
  %785 = icmp ugt ptr %784, %17
  br i1 %785, label %931, label %786

786:                                              ; preds = %774
  %787 = add i32 %113, 2
  %788 = zext i32 %787 to i64
  %789 = getelementptr inbounds i8, ptr %19, i64 %788
  %790 = load i64, ptr %789, align 1, !tbaa !21
  %791 = mul i64 %790, -3523014627327384477
  %792 = lshr i64 %791, %58
  %793 = getelementptr inbounds i32, ptr %9, i64 %792
  store i32 %787, ptr %793, align 4, !tbaa !22
  %794 = getelementptr inbounds i8, ptr %784, i64 -2
  %795 = ptrtoint ptr %794 to i64
  %796 = sub i64 %795, %21
  %797 = trunc i64 %796 to i32
  %798 = load i64, ptr %794, align 1, !tbaa !21
  %799 = mul i64 %798, -3523014627327384477
  %800 = lshr i64 %799, %58
  %801 = getelementptr inbounds i32, ptr %9, i64 %800
  store i32 %797, ptr %801, align 4, !tbaa !22
  switch i32 %5, label %833 [
    i32 8, label %826
    i32 5, label %802
    i32 6, label %810
    i32 7, label %818
  ]

802:                                              ; preds = %786
  %803 = mul i64 %790, -3523014627271114752
  %804 = lshr i64 %803, %55
  %805 = getelementptr inbounds i32, ptr %13, i64 %804
  store i32 %787, ptr %805, align 4, !tbaa !22
  %806 = getelementptr inbounds i8, ptr %784, i64 -1
  %807 = load i64, ptr %806, align 1, !tbaa !21
  %808 = mul i64 %807, -3523014627271114752
  %809 = lshr i64 %808, %55
  br label %844

810:                                              ; preds = %786
  %811 = mul i64 %790, -3523014627193847808
  %812 = lshr i64 %811, %55
  %813 = getelementptr inbounds i32, ptr %13, i64 %812
  store i32 %787, ptr %813, align 4, !tbaa !22
  %814 = getelementptr inbounds i8, ptr %784, i64 -1
  %815 = load i64, ptr %814, align 1, !tbaa !21
  %816 = mul i64 %815, -3523014627193847808
  %817 = lshr i64 %816, %55
  br label %844

818:                                              ; preds = %786
  %819 = mul i64 %790, -3523014627193167104
  %820 = lshr i64 %819, %55
  %821 = getelementptr inbounds i32, ptr %13, i64 %820
  store i32 %787, ptr %821, align 4, !tbaa !22
  %822 = getelementptr inbounds i8, ptr %784, i64 -1
  %823 = load i64, ptr %822, align 1, !tbaa !21
  %824 = mul i64 %823, -3523014627193167104
  %825 = lshr i64 %824, %55
  br label %844

826:                                              ; preds = %786
  %827 = lshr i64 %791, %55
  %828 = getelementptr inbounds i32, ptr %13, i64 %827
  store i32 %787, ptr %828, align 4, !tbaa !22
  %829 = getelementptr inbounds i8, ptr %784, i64 -1
  %830 = load i64, ptr %829, align 1, !tbaa !21
  %831 = mul i64 %830, -3523014627327384477
  %832 = lshr i64 %831, %55
  br label %844

833:                                              ; preds = %786
  %834 = load i32, ptr %789, align 1, !tbaa !22
  %835 = mul i32 %834, -1640531535
  %836 = lshr i32 %835, %56
  %837 = zext i32 %836 to i64
  %838 = getelementptr inbounds i32, ptr %13, i64 %837
  store i32 %787, ptr %838, align 4, !tbaa !22
  %839 = getelementptr inbounds i8, ptr %784, i64 -1
  %840 = load i32, ptr %839, align 1, !tbaa !22
  %841 = mul i32 %840, -1640531535
  %842 = lshr i32 %841, %56
  %843 = zext i32 %842 to i64
  br label %844

844:                                              ; preds = %826, %818, %810, %802, %833
  %845 = phi ptr [ %839, %833 ], [ %822, %818 ], [ %814, %810 ], [ %806, %802 ], [ %829, %826 ]
  %846 = phi i64 [ %843, %833 ], [ %825, %818 ], [ %817, %810 ], [ %809, %802 ], [ %832, %826 ]
  %847 = ptrtoint ptr %845 to i64
  %848 = sub i64 %847, %21
  %849 = trunc i64 %848 to i32
  %850 = getelementptr inbounds i32, ptr %13, i64 %846
  store i32 %849, ptr %850, align 4, !tbaa !22
  br label %851

851:                                              ; preds = %844, %922
  %852 = phi ptr [ %899, %922 ], [ %783, %844 ]
  %853 = phi ptr [ %929, %922 ], [ %784, %844 ]
  %854 = phi i32 [ %855, %922 ], [ %779, %844 ]
  %855 = phi i32 [ %854, %922 ], [ %778, %844 ]
  %856 = ptrtoint ptr %853 to i64
  %857 = sub i64 %856, %21
  %858 = trunc i64 %857 to i32
  %859 = sub i32 %858, %855
  %860 = icmp ult i32 %859, %39
  %861 = zext i32 %859 to i64
  %862 = select i1 %860, ptr %43, ptr %19
  %863 = getelementptr inbounds i8, ptr %862, i64 %861
  %864 = sub i32 %859, %39
  %865 = icmp ugt i32 %864, -4
  %866 = sub i32 %858, %36
  %867 = icmp ugt i32 %855, %866
  %868 = or i1 %867, %865
  br i1 %868, label %931, label %869

869:                                              ; preds = %851
  %870 = load i32, ptr %863, align 1, !tbaa !22
  %871 = load i32, ptr %853, align 1, !tbaa !22
  %872 = icmp eq i32 %870, %871
  br i1 %872, label %873, label %931

873:                                              ; preds = %869
  %874 = select i1 %860, ptr %46, ptr %16
  %875 = getelementptr inbounds i8, ptr %853, i64 4
  %876 = getelementptr inbounds i8, ptr %863, i64 4
  %877 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %875, ptr noundef nonnull %876, ptr noundef %16, ptr noundef %874, ptr noundef nonnull %41)
  %878 = add i64 %877, 4
  %879 = icmp ugt ptr %853, %59
  br i1 %879, label %884, label %880

880:                                              ; preds = %873
  %881 = load ptr, ptr %60, align 8, !tbaa !36
  %882 = load <2 x i64>, ptr %853, align 1, !tbaa !35
  store <2 x i64> %882, ptr %881, align 1, !tbaa !35
  %883 = load ptr, ptr %63, align 8, !tbaa !46
  br label %884

884:                                              ; preds = %873, %880
  %885 = phi ptr [ %852, %873 ], [ %883, %880 ]
  %886 = getelementptr inbounds %struct.SeqDef_s, ptr %885, i64 0, i32 1
  store i16 0, ptr %886, align 4, !tbaa !51
  store i32 1, ptr %885, align 4, !tbaa !53
  %887 = add i64 %877, 1
  %888 = icmp ugt i64 %887, 65535
  br i1 %888, label %889, label %896, !prof !54

889:                                              ; preds = %884
  store i32 2, ptr %62, align 8, !tbaa !48
  %890 = load ptr, ptr %1, align 8, !tbaa !49
  %891 = ptrtoint ptr %885 to i64
  %892 = ptrtoint ptr %890 to i64
  %893 = sub i64 %891, %892
  %894 = lshr exact i64 %893, 3
  %895 = trunc i64 %894 to i32
  store i32 %895, ptr %64, align 4, !tbaa !50
  br label %896

896:                                              ; preds = %884, %889
  %897 = trunc i64 %887 to i16
  %898 = getelementptr inbounds %struct.SeqDef_s, ptr %885, i64 0, i32 2
  store i16 %897, ptr %898, align 2, !tbaa !61
  %899 = getelementptr inbounds %struct.SeqDef_s, ptr %885, i64 1
  store ptr %899, ptr %63, align 8, !tbaa !46
  switch i32 %5, label %900 [
    i32 8, label %918
    i32 5, label %906
    i32 6, label %910
    i32 7, label %914
  ]

900:                                              ; preds = %896
  %901 = load i32, ptr %853, align 1, !tbaa !22
  %902 = mul i32 %901, -1640531535
  %903 = lshr i32 %902, %56
  %904 = zext i32 %903 to i64
  %905 = load i64, ptr %853, align 1, !tbaa !21
  br label %922

906:                                              ; preds = %896
  %907 = load i64, ptr %853, align 1, !tbaa !21
  %908 = mul i64 %907, -3523014627271114752
  %909 = lshr i64 %908, %55
  br label %922

910:                                              ; preds = %896
  %911 = load i64, ptr %853, align 1, !tbaa !21
  %912 = mul i64 %911, -3523014627193847808
  %913 = lshr i64 %912, %55
  br label %922

914:                                              ; preds = %896
  %915 = load i64, ptr %853, align 1, !tbaa !21
  %916 = mul i64 %915, -3523014627193167104
  %917 = lshr i64 %916, %55
  br label %922

918:                                              ; preds = %896
  %919 = load i64, ptr %853, align 1, !tbaa !21
  %920 = mul i64 %919, -3523014627327384477
  %921 = lshr i64 %920, %55
  br label %922

922:                                              ; preds = %918, %914, %910, %906, %900
  %923 = phi i64 [ %905, %900 ], [ %915, %914 ], [ %911, %910 ], [ %907, %906 ], [ %919, %918 ]
  %924 = phi i64 [ %904, %900 ], [ %917, %914 ], [ %913, %910 ], [ %909, %906 ], [ %921, %918 ]
  %925 = getelementptr inbounds i32, ptr %13, i64 %924
  store i32 %858, ptr %925, align 4, !tbaa !22
  %926 = mul i64 %923, -3523014627327384477
  %927 = lshr i64 %926, %58
  %928 = getelementptr inbounds i32, ptr %9, i64 %927
  store i32 %858, ptr %928, align 4, !tbaa !22
  %929 = getelementptr inbounds i8, ptr %853, i64 %878
  %930 = icmp ugt ptr %929, %17
  br i1 %930, label %931, label %851

931:                                              ; preds = %922, %869, %851, %774, %755
  %932 = phi i32 [ %71, %755 ], [ %778, %774 ], [ %854, %922 ], [ %855, %869 ], [ %855, %851 ]
  %933 = phi i32 [ %70, %755 ], [ %779, %774 ], [ %855, %922 ], [ %854, %869 ], [ %854, %851 ]
  %934 = phi ptr [ %69, %755 ], [ %784, %774 ], [ %929, %922 ], [ %853, %869 ], [ %853, %851 ]
  %935 = phi ptr [ %760, %755 ], [ %784, %774 ], [ %929, %922 ], [ %853, %869 ], [ %853, %851 ]
  %936 = icmp ult ptr %935, %17
  br i1 %936, label %67, label %937

937:                                              ; preds = %931
  %938 = ptrtoint ptr %934 to i64
  br label %939

939:                                              ; preds = %937, %51
  %940 = phi i64 [ %938, %937 ], [ %20, %51 ]
  %941 = phi i32 [ %932, %937 ], [ %49, %51 ]
  %942 = phi i32 [ %933, %937 ], [ %47, %51 ]
  store i32 %942, ptr %2, align 4, !tbaa !22
  store i32 %941, ptr %48, align 4, !tbaa !22
  %943 = ptrtoint ptr %16 to i64
  %944 = sub i64 %943, %940
  br label %945

945:                                              ; preds = %939, %65
  %946 = phi i64 [ %66, %65 ], [ %944, %939 ]
  ret i64 %946
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold noreturn nounwind }
attributes #8 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind memory(none) }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !8, i64 112}
!6 = !{!"ZSTD_MatchState_t", !7, i64 0, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !8, i64 56, !9, i64 64, !12, i64 96, !11, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !11, i64 136, !11, i64 140, !13, i64 144, !8, i64 248, !14, i64 256, !8, i64 288, !11, i64 296, !11, i64 300}
!7 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 28, !11, i64 32}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !8, i64 88, !11, i64 96}
!14 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24}
!15 = !{!14, !11, i64 16}
!16 = !{!6, !8, i64 128}
!17 = !{!6, !8, i64 8}
!18 = !{!6, !11, i64 44}
!19 = !{!14, !11, i64 4}
!20 = !{!14, !11, i64 8}
!21 = !{!12, !12, i64 0}
!22 = !{!11, !11, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = !{!6, !11, i64 272}
!27 = !{!14, !11, i64 0}
!28 = !{!6, !11, i64 24}
!29 = !{!6, !11, i64 40}
!30 = !{i64 74577, i64 74601}
!31 = distinct !{!31, !24}
!32 = !{i64 0, i64 65}
!33 = !{!34, !34, i64 0}
!34 = !{!"short", !9, i64 0}
!35 = !{!9, !9, i64 0}
!36 = !{!37, !8, i64 24}
!37 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !12, i64 56, !12, i64 64, !11, i64 72, !11, i64 76}
!38 = distinct !{!38, !24}
!39 = distinct !{!39, !24, !40, !41}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = distinct !{!42, !24, !40, !41}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = distinct !{!45, !24, !40}
!46 = !{!37, !8, i64 8}
!47 = !{!"branch_weights", i32 1717128, i32 2145766520}
!48 = !{!37, !11, i64 72}
!49 = !{!37, !8, i64 0}
!50 = !{!37, !11, i64 76}
!51 = !{!52, !34, i64 4}
!52 = !{!"SeqDef_s", !11, i64 0, !34, i64 4, !34, i64 6}
!53 = !{!52, !11, i64 0}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = distinct !{!55, !24}
!56 = distinct !{!56, !24}
!57 = distinct !{!57, !24, !40, !41}
!58 = distinct !{!58, !24, !40, !41}
!59 = distinct !{!59, !44}
!60 = distinct !{!60, !24, !40}
!61 = !{!52, !34, i64 6}
!62 = distinct !{!62, !24, !40, !41}
!63 = distinct !{!63, !24, !40, !41}
!64 = distinct !{!64, !44}
!65 = distinct !{!65, !24, !40}
!66 = distinct !{!66, !24, !40, !41}
!67 = distinct !{!67, !24, !40, !41}
!68 = distinct !{!68, !44}
!69 = distinct !{!69, !24, !40}
!70 = distinct !{!70, !24, !40, !41}
!71 = distinct !{!71, !24, !40, !41}
!72 = distinct !{!72, !44}
!73 = distinct !{!73, !24, !40}
!74 = distinct !{!74, !24, !40, !41}
!75 = distinct !{!75, !24, !40, !41}
!76 = distinct !{!76, !44}
!77 = distinct !{!77, !24, !40}
!78 = distinct !{!78, !24, !40, !41}
!79 = distinct !{!79, !24, !40, !41}
!80 = distinct !{!80, !44}
!81 = distinct !{!81, !24, !40}
!82 = distinct !{!82, !24, !40, !41}
!83 = distinct !{!83, !24, !40, !41}
!84 = distinct !{!84, !44}
!85 = distinct !{!85, !24, !40}
!86 = !{!6, !8, i64 248}
!87 = !{!6, !8, i64 0}
!88 = !{}
!89 = !{!6, !11, i64 296}
!90 = distinct !{!90, !24}
!91 = distinct !{!91, !24}
!92 = distinct !{!92, !24, !40, !41}
!93 = distinct !{!93, !24, !40, !41}
!94 = distinct !{!94, !44}
!95 = distinct !{!95, !24, !40}
!96 = distinct !{!96, !24}
!97 = distinct !{!97, !24}
!98 = distinct !{!98, !24}
!99 = distinct !{!99, !24}
!100 = distinct !{!100, !24}
!101 = distinct !{!101, !24}
!102 = distinct !{!102, !24}
!103 = distinct !{!103, !24, !40, !41}
!104 = distinct !{!104, !24, !40, !41}
!105 = distinct !{!105, !44}
!106 = distinct !{!106, !24, !40}
!107 = !{!"branch_weights", i32 1717127, i32 2145766521}
!108 = distinct !{!108, !24, !40, !41}
!109 = distinct !{!109, !24, !40, !41}
!110 = distinct !{!110, !44}
!111 = distinct !{!111, !24, !40}
!112 = distinct !{!112, !24, !40, !41}
!113 = distinct !{!113, !24, !40, !41}
!114 = distinct !{!114, !44}
!115 = distinct !{!115, !24, !40}
!116 = distinct !{!116, !24, !40, !41}
!117 = distinct !{!117, !24, !40, !41}
!118 = distinct !{!118, !44}
!119 = distinct !{!119, !24, !40}
!120 = distinct !{!120, !24, !40, !41}
!121 = distinct !{!121, !24, !40, !41}
!122 = distinct !{!122, !44}
!123 = distinct !{!123, !24, !40}
!124 = distinct !{!124, !24, !40, !41}
!125 = distinct !{!125, !24, !40, !41}
!126 = distinct !{!126, !44}
!127 = distinct !{!127, !24, !40}
!128 = distinct !{!128, !24, !40, !41}
!129 = distinct !{!129, !24, !40, !41}
!130 = distinct !{!130, !44}
!131 = distinct !{!131, !24, !40}
!132 = !{!6, !11, i64 28}
!133 = !{!6, !8, i64 16}
!134 = distinct !{!134, !24, !40, !41}
!135 = distinct !{!135, !24, !40, !41}
!136 = distinct !{!136, !44}
!137 = distinct !{!137, !24, !40}
!138 = distinct !{!138, !24}
!139 = distinct !{!139, !24, !40, !41}
!140 = distinct !{!140, !24, !40, !41}
!141 = distinct !{!141, !44}
!142 = distinct !{!142, !24, !40}
!143 = distinct !{!143, !24}
!144 = distinct !{!144, !24}
!145 = distinct !{!145, !24, !40, !41}
!146 = distinct !{!146, !24, !40, !41}
!147 = distinct !{!147, !44}
!148 = distinct !{!148, !24, !40}
!149 = distinct !{!149, !24}
