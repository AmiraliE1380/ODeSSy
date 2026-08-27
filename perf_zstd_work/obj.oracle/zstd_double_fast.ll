; ModuleID = '/mydata/ODeSSy/perf_zstd_work/obj.oracle/zstd_double_fast.ll.mid'
source_filename = "/mydata/zstd/lib/compress/zstd_double_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.ZSTD_compressBlock_doubleFast_noDict_generic.dummy = private unnamed_addr constant [10 x i8] c"\124Vx\9A\BC\DE\F0\E2\B4", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ZSTD_fillDoubleHashTable(ptr noundef readonly captures(none) %0, ptr noundef readnone captures(address) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %3, 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %9 = load i32, ptr %8, align 8, !tbaa !18
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %15 = load i32, ptr %14, align 4, !tbaa !21
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 %16
  %18 = getelementptr inbounds i8, ptr %1, i64 -8
  br i1 %5, label %19, label %109

19:                                               ; preds = %4
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 2
  %21 = icmp ugt ptr %20, %18
  br i1 %21, label %.loopexit, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %24 = load i32, ptr %23, align 4, !tbaa !22
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %26 = load i32, ptr %25, align 4, !tbaa !23
  %27 = ptrtoint ptr %13 to i64
  %28 = sub i32 56, %24
  %29 = zext nneg i32 %28 to i64
  %30 = sub i32 24, %24
  %31 = sub i32 56, %26
  %32 = zext nneg i32 %31 to i64
  %33 = icmp eq i32 %2, 0
  br label %34

34:                                               ; preds = %105, %22
  %35 = phi ptr [ %17, %22 ], [ %106, %105 ]
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
  %41 = load i64, ptr %35, align 1, !tbaa !24
  %42 = mul i64 %41, -3523014627193167104
  %43 = lshr i64 %42, %29
  br label %62

44:                                               ; preds = %34
  %45 = load i64, ptr %35, align 1, !tbaa !24
  %46 = mul i64 %45, -3523014627193847808
  %47 = lshr i64 %46, %29
  br label %62

48:                                               ; preds = %34
  %49 = load i64, ptr %35, align 1, !tbaa !24
  %50 = mul i64 %49, -3523014627271114752
  %51 = lshr i64 %50, %29
  br label %62

52:                                               ; preds = %34
  %53 = load i64, ptr %35, align 1, !tbaa !24
  %54 = mul i64 %53, -3523014627327384477
  %55 = lshr i64 %54, %29
  br label %62

56:                                               ; preds = %34
  %57 = load i32, ptr %35, align 1, !tbaa !25
  %58 = mul i32 %57, -1640531535
  %59 = lshr i32 %58, %30
  %60 = zext i32 %59 to i64
  %61 = load i64, ptr %35, align 1, !tbaa !24
  br label %62

62:                                               ; preds = %56, %52, %48, %44, %40
  %63 = phi i64 [ %61, %56 ], [ %53, %52 ], [ %49, %48 ], [ %45, %44 ], [ %41, %40 ]
  %64 = phi i64 [ %60, %56 ], [ %55, %52 ], [ %51, %48 ], [ %47, %44 ], [ %43, %40 ]
  %65 = mul i64 %63, -3523014627327384477
  %66 = lshr i64 %65, %32
  %67 = lshr i64 %64, 8
  %68 = trunc i64 %64 to i32
  %69 = and i32 %68, 255
  %70 = or disjoint i32 %69, %39
  %71 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %67
  store i32 %70, ptr %71, align 4, !tbaa !25
  %72 = lshr i64 %66, 8
  %73 = trunc i64 %66 to i32
  %74 = and i32 %73, 255
  %75 = or disjoint i32 %74, %39
  %76 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %72
  store i32 %75, ptr %76, align 4, !tbaa !25
  br i1 %33, label %105, label %77

77:                                               ; preds = %62
  %78 = getelementptr inbounds nuw i8, ptr %35, i64 1
  %79 = load i64, ptr %78, align 1, !tbaa !24
  %80 = mul i64 %79, -3523014627327384477
  %81 = lshr i64 %80, %32
  %82 = lshr i64 %81, 8
  %83 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !25
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %77
  %87 = trunc i64 %81 to i32
  %88 = and i32 %87, 255
  %89 = add i32 %39, 256
  %90 = or disjoint i32 %88, %89
  store i32 %90, ptr %83, align 4, !tbaa !25
  br label %91

91:                                               ; preds = %86, %77
  %92 = getelementptr inbounds nuw i8, ptr %35, i64 2
  %93 = load i64, ptr %92, align 1, !tbaa !24
  %94 = mul i64 %93, -3523014627327384477
  %95 = lshr i64 %94, %32
  %96 = lshr i64 %95, 8
  %97 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !25
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %91
  %101 = trunc i64 %95 to i32
  %102 = and i32 %101, 255
  %103 = add i32 %39, 512
  %104 = or disjoint i32 %102, %103
  store i32 %104, ptr %97, align 4, !tbaa !25
  br label %105

105:                                              ; preds = %100, %91, %62
  %106 = getelementptr inbounds nuw i8, ptr %35, i64 3
  %107 = getelementptr inbounds nuw i8, ptr %35, i64 5
  %108 = icmp ugt ptr %107, %18
  br i1 %108, label %.loopexit, label %34, !llvm.loop !26

109:                                              ; preds = %4
  %110 = getelementptr inbounds nuw i8, ptr %17, i64 3
  %111 = getelementptr inbounds nuw i8, ptr %17, i64 2
  %112 = icmp ugt ptr %111, %18
  br i1 %112, label %.loopexit, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %115 = load i32, ptr %114, align 4, !tbaa !22
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %117 = load i32, ptr %116, align 4, !tbaa !23
  %118 = ptrtoint ptr %13 to i64
  %119 = sub i32 64, %115
  %120 = zext nneg i32 %119 to i64
  %121 = sub i32 32, %115
  %122 = sub i32 64, %117
  %123 = zext nneg i32 %122 to i64
  %124 = icmp eq i32 %2, 0
  br i1 %124, label %125, label %.preheader10

125:                                              ; preds = %113
  switch i32 %9, label %.preheader [
    i32 8, label %.preheader2
    i32 5, label %.preheader4
    i32 6, label %.preheader6
    i32 7, label %.preheader8
  ]

.preheader2:                                      ; preds = %125, %.preheader2
  %126 = phi ptr [ %137, %.preheader2 ], [ %110, %125 ]
  %127 = phi ptr [ %126, %.preheader2 ], [ %17, %125 ]
  %128 = ptrtoint ptr %127 to i64
  %129 = sub i64 %128, %118
  %130 = trunc i64 %129 to i32
  %131 = load i64, ptr %127, align 1, !tbaa !24
  %132 = mul i64 %131, -3523014627327384477
  %133 = lshr i64 %132, %120
  %134 = lshr i64 %132, %123
  %135 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %133
  store i32 %130, ptr %135, align 4, !tbaa !25
  %136 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %134
  store i32 %130, ptr %136, align 4, !tbaa !25
  %137 = getelementptr inbounds nuw i8, ptr %126, i64 3
  %138 = getelementptr inbounds nuw i8, ptr %126, i64 2
  %139 = icmp ugt ptr %138, %18
  br i1 %139, label %.loopexit, label %.preheader2, !llvm.loop !28

.preheader4:                                      ; preds = %125, %.preheader4
  %140 = phi ptr [ %152, %.preheader4 ], [ %110, %125 ]
  %141 = phi ptr [ %140, %.preheader4 ], [ %17, %125 ]
  %142 = ptrtoint ptr %141 to i64
  %143 = sub i64 %142, %118
  %144 = trunc i64 %143 to i32
  %145 = load i64, ptr %141, align 1, !tbaa !24
  %146 = mul i64 %145, -3523014627271114752
  %147 = lshr i64 %146, %120
  %148 = mul i64 %145, -3523014627327384477
  %149 = lshr i64 %148, %123
  %150 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %147
  store i32 %144, ptr %150, align 4, !tbaa !25
  %151 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %149
  store i32 %144, ptr %151, align 4, !tbaa !25
  %152 = getelementptr inbounds nuw i8, ptr %140, i64 3
  %153 = getelementptr inbounds nuw i8, ptr %140, i64 2
  %154 = icmp ugt ptr %153, %18
  br i1 %154, label %.loopexit, label %.preheader4, !llvm.loop !28

.preheader6:                                      ; preds = %125, %.preheader6
  %155 = phi ptr [ %167, %.preheader6 ], [ %110, %125 ]
  %156 = phi ptr [ %155, %.preheader6 ], [ %17, %125 ]
  %157 = ptrtoint ptr %156 to i64
  %158 = sub i64 %157, %118
  %159 = trunc i64 %158 to i32
  %160 = load i64, ptr %156, align 1, !tbaa !24
  %161 = mul i64 %160, -3523014627193847808
  %162 = lshr i64 %161, %120
  %163 = mul i64 %160, -3523014627327384477
  %164 = lshr i64 %163, %123
  %165 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %162
  store i32 %159, ptr %165, align 4, !tbaa !25
  %166 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %164
  store i32 %159, ptr %166, align 4, !tbaa !25
  %167 = getelementptr inbounds nuw i8, ptr %155, i64 3
  %168 = getelementptr inbounds nuw i8, ptr %155, i64 2
  %169 = icmp ugt ptr %168, %18
  br i1 %169, label %.loopexit, label %.preheader6, !llvm.loop !28

.preheader8:                                      ; preds = %125, %.preheader8
  %170 = phi ptr [ %182, %.preheader8 ], [ %110, %125 ]
  %171 = phi ptr [ %170, %.preheader8 ], [ %17, %125 ]
  %172 = ptrtoint ptr %171 to i64
  %173 = sub i64 %172, %118
  %174 = trunc i64 %173 to i32
  %175 = load i64, ptr %171, align 1, !tbaa !24
  %176 = mul i64 %175, -3523014627193167104
  %177 = lshr i64 %176, %120
  %178 = mul i64 %175, -3523014627327384477
  %179 = lshr i64 %178, %123
  %180 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %177
  store i32 %174, ptr %180, align 4, !tbaa !25
  %181 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %179
  store i32 %174, ptr %181, align 4, !tbaa !25
  %182 = getelementptr inbounds nuw i8, ptr %170, i64 3
  %183 = getelementptr inbounds nuw i8, ptr %170, i64 2
  %184 = icmp ugt ptr %183, %18
  br i1 %184, label %.loopexit, label %.preheader8, !llvm.loop !28

.preheader:                                       ; preds = %125, %.preheader
  %185 = phi ptr [ %199, %.preheader ], [ %110, %125 ]
  %186 = phi ptr [ %185, %.preheader ], [ %17, %125 ]
  %187 = ptrtoint ptr %186 to i64
  %188 = sub i64 %187, %118
  %189 = trunc i64 %188 to i32
  %190 = load i32, ptr %186, align 1, !tbaa !25
  %191 = mul i32 %190, -1640531535
  %192 = lshr i32 %191, %121
  %193 = zext i32 %192 to i64
  %194 = load i64, ptr %186, align 1, !tbaa !24
  %195 = mul i64 %194, -3523014627327384477
  %196 = lshr i64 %195, %123
  %197 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %193
  store i32 %189, ptr %197, align 4, !tbaa !25
  %198 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %196
  store i32 %189, ptr %198, align 4, !tbaa !25
  %199 = getelementptr inbounds nuw i8, ptr %185, i64 3
  %200 = getelementptr inbounds nuw i8, ptr %185, i64 2
  %201 = icmp ugt ptr %200, %18
  br i1 %201, label %.loopexit, label %.preheader, !llvm.loop !28

.preheader10:                                     ; preds = %113, %255
  %202 = phi ptr [ %256, %255 ], [ %110, %113 ]
  %203 = phi ptr [ %202, %255 ], [ %17, %113 ]
  %204 = ptrtoint ptr %203 to i64
  %205 = sub i64 %204, %118
  %206 = trunc i64 %205 to i32
  switch i32 %9, label %223 [
    i32 8, label %219
    i32 5, label %207
    i32 6, label %211
    i32 7, label %215
  ]

207:                                              ; preds = %.preheader10
  %208 = load i64, ptr %203, align 1, !tbaa !24
  %209 = mul i64 %208, -3523014627271114752
  %210 = lshr i64 %209, %120
  br label %229

211:                                              ; preds = %.preheader10
  %212 = load i64, ptr %203, align 1, !tbaa !24
  %213 = mul i64 %212, -3523014627193847808
  %214 = lshr i64 %213, %120
  br label %229

215:                                              ; preds = %.preheader10
  %216 = load i64, ptr %203, align 1, !tbaa !24
  %217 = mul i64 %216, -3523014627193167104
  %218 = lshr i64 %217, %120
  br label %229

219:                                              ; preds = %.preheader10
  %220 = load i64, ptr %203, align 1, !tbaa !24
  %221 = mul i64 %220, -3523014627327384477
  %222 = lshr i64 %221, %120
  br label %229

223:                                              ; preds = %.preheader10
  %224 = load i32, ptr %203, align 1, !tbaa !25
  %225 = mul i32 %224, -1640531535
  %226 = lshr i32 %225, %121
  %227 = zext i32 %226 to i64
  %228 = load i64, ptr %203, align 1, !tbaa !24
  br label %229

229:                                              ; preds = %223, %219, %215, %211, %207
  %230 = phi i64 [ %228, %223 ], [ %216, %215 ], [ %212, %211 ], [ %208, %207 ], [ %220, %219 ]
  %231 = phi i64 [ %227, %223 ], [ %218, %215 ], [ %214, %211 ], [ %210, %207 ], [ %222, %219 ]
  %232 = mul i64 %230, -3523014627327384477
  %233 = lshr i64 %232, %123
  %234 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %231
  store i32 %206, ptr %234, align 4, !tbaa !25
  %235 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %233
  store i32 %206, ptr %235, align 4, !tbaa !25
  %236 = getelementptr inbounds nuw i8, ptr %203, i64 1
  %237 = load i64, ptr %236, align 1, !tbaa !24
  %238 = mul i64 %237, -3523014627327384477
  %239 = lshr i64 %238, %123
  %240 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !25
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %229
  %244 = add i32 %206, 1
  store i32 %244, ptr %240, align 4, !tbaa !25
  br label %245

245:                                              ; preds = %243, %229
  %246 = getelementptr inbounds nuw i8, ptr %203, i64 2
  %247 = load i64, ptr %246, align 1, !tbaa !24
  %248 = mul i64 %247, -3523014627327384477
  %249 = lshr i64 %248, %123
  %250 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %249
  %251 = load i32, ptr %250, align 4, !tbaa !25
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %245
  %254 = add i32 %206, 2
  store i32 %254, ptr %250, align 4, !tbaa !25
  br label %255

255:                                              ; preds = %253, %245
  %256 = getelementptr inbounds nuw i8, ptr %202, i64 3
  %257 = getelementptr inbounds nuw i8, ptr %202, i64 2
  %258 = icmp ugt ptr %257, %18
  br i1 %258, label %.loopexit, label %.preheader10, !llvm.loop !28

.loopexit:                                        ; preds = %255, %.preheader8, %.preheader6, %.preheader4, %.preheader2, %.preheader, %105, %109, %19
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local i64 @ZSTD_compressBlock_doubleFast(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = alloca [10 x i8], align 1
  %7 = alloca [10 x i8], align 1
  %8 = alloca [10 x i8], align 1
  %9 = alloca [10 x i8], align 1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %11 = load i32, ptr %10, align 8, !tbaa !29
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %16 = load i32, ptr %15, align 8, !tbaa !23
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %18 = load ptr, ptr %17, align 8, !tbaa !19
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %20 = load i32, ptr %19, align 4, !tbaa !22
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %22 = load ptr, ptr %21, align 8, !tbaa !20
  %23 = ptrtoint ptr %3 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = add i64 %4, %23
  %26 = sub i64 %25, %24
  %27 = trunc i64 %26 to i32
  %28 = load i32, ptr %12, align 8, !tbaa !30
  %29 = getelementptr i8, ptr %0, i64 24
  %30 = load i32, ptr %29, align 8, !tbaa !31
  %31 = getelementptr i8, ptr %0, i64 40
  %32 = load i32, ptr %31, align 8, !tbaa !32
  %33 = shl nuw i32 1, %28
  %34 = sub i32 %27, %30
  %35 = icmp ugt i32 %34, %33
  %36 = sub i32 %27, %33
  %37 = icmp eq i32 %32, 0
  %38 = select i1 %37, i1 %35, i1 false
  %39 = select i1 %38, i32 %36, i32 %30
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds nuw i8, ptr %22, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %43 = getelementptr inbounds i8, ptr %42, i64 -8
  %44 = load i32, ptr %2, align 4, !tbaa !25
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %46 = load i32, ptr %45, align 4, !tbaa !25
  %47 = icmp eq ptr %3, %41
  %48 = zext i1 %47 to i64
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 %48
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
  %63 = getelementptr inbounds nuw i8, ptr %49, i64 1
  %64 = select i1 %47, i64 2, i64 1
  %65 = add nsw i64 %4, -8
  %66 = icmp sgt i64 %64, %65
  switch i32 %11, label %67 [
    i32 7, label %3077
    i32 5, label %1077
    i32 6, label %2077
  ]

67:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %9, ptr noundef nonnull align 1 dereferenceable(10) @__const.ZSTD_compressBlock_doubleFast_noDict_generic.dummy, i64 10, i1 false)
  br i1 %66, label %.loopexit542, label %68

68:                                               ; preds = %67
  %69 = sub i32 64, %16
  %70 = zext nneg i32 %69 to i64
  %71 = sub i32 32, %20
  %72 = getelementptr inbounds i8, ptr %42, i64 -7
  %73 = getelementptr inbounds i8, ptr %42, i64 -3
  %74 = getelementptr inbounds i8, ptr %42, i64 -1
  %75 = getelementptr inbounds i8, ptr %42, i64 -32
  %76 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %77 = ptrtoint ptr %75 to i64
  %78 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %80 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %81

81:                                               ; preds = %.loopexit516, %68
  %82 = phi ptr [ %63, %68 ], [ %1061, %.loopexit516 ]
  %83 = phi ptr [ %3, %68 ], [ %1060, %.loopexit516 ]
  %84 = phi i32 [ %62, %68 ], [ %1059, %.loopexit516 ]
  %85 = phi i32 [ %60, %68 ], [ %1058, %.loopexit516 ]
  %86 = phi ptr [ %49, %68 ], [ %1060, %.loopexit516 ]
  %87 = freeze i32 %84
  %88 = getelementptr inbounds nuw i8, ptr %86, i64 256
  %89 = load i64, ptr %86, align 1
  %90 = mul i64 %89, -3523014627327384477
  %91 = lshr i64 %90, %70
  %92 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !25
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds nuw i8, ptr %22, i64 %94
  %96 = icmp eq i32 %87, 0
  %97 = zext i32 %87 to i64
  %98 = sub nsw i64 0, %97
  %99 = trunc i64 %89 to i32
  br i1 %96, label %.preheader539, label %.preheader551

.preheader539:                                    ; preds = %81, %147
  %100 = phi i64 [ %118, %147 ], [ %89, %81 ]
  %101 = phi i32 [ %126, %147 ], [ %99, %81 ]
  %102 = phi i32 [ %131, %147 ], [ %93, %81 ]
  %103 = phi ptr [ %133, %147 ], [ %95, %81 ]
  %104 = phi i64 [ %120, %147 ], [ %91, %81 ]
  %105 = phi ptr [ %106, %147 ], [ %86, %81 ]
  %106 = phi ptr [ %150, %147 ], [ %82, %81 ]
  %107 = phi i64 [ %148, %147 ], [ 1, %81 ]
  %108 = phi ptr [ %149, %147 ], [ %88, %81 ]
  %109 = mul i32 %101, -1640531535
  %110 = lshr i32 %109, %71
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !25
  %114 = ptrtoint ptr %105 to i64
  %115 = sub i64 %114, %24
  %116 = trunc i64 %115 to i32
  store i32 %116, ptr %112, align 4, !tbaa !25
  %117 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %104
  store i32 %116, ptr %117, align 4, !tbaa !25
  %118 = load i64, ptr %106, align 1
  %119 = mul i64 %118, -3523014627327384477
  %120 = lshr i64 %119, %70
  %121 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %102, i32 %39, ptr nonnull readnone %9, ptr readnone %103) #9, !srcloc !33
  %122 = load i64, ptr %121, align 1, !tbaa !24
  %123 = icmp eq i64 %122, %100
  %124 = icmp eq ptr %121, %103
  %125 = select i1 %123, i1 %124, i1 false
  %126 = trunc i64 %118 to i32
  br i1 %125, label %.loopexit540, label %127

127:                                              ; preds = %.preheader539
  %128 = zext i32 %113 to i64
  %129 = getelementptr inbounds nuw i8, ptr %22, i64 %128
  %130 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %120
  %131 = load i32, ptr %130, align 4, !tbaa !25
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds nuw i8, ptr %22, i64 %132
  %134 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %113, i32 %39, ptr nonnull readnone %9, ptr readnone %129) #9, !srcloc !33
  %135 = load i32, ptr %134, align 1, !tbaa !25
  %136 = load i32, ptr %105, align 1, !tbaa !25
  %137 = icmp eq i32 %135, %136
  %138 = icmp eq ptr %134, %129
  %139 = select i1 %137, i1 %138, i1 false
  br i1 %139, label %.loopexit541, label %140

140:                                              ; preds = %127
  %141 = icmp ult ptr %106, %108
  br i1 %141, label %147, label %142

142:                                              ; preds = %140
  %143 = getelementptr inbounds nuw i8, ptr %106, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %143, i32 0, i32 3, i32 1)
  %144 = getelementptr inbounds nuw i8, ptr %106, i64 128
  call void @llvm.prefetch.p0(ptr nonnull %144, i32 0, i32 3, i32 1)
  %145 = add i64 %107, 1
  %146 = getelementptr inbounds nuw i8, ptr %108, i64 256
  br label %147

147:                                              ; preds = %142, %140
  %148 = phi i64 [ %145, %142 ], [ %107, %140 ]
  %149 = phi ptr [ %146, %142 ], [ %108, %140 ]
  %150 = getelementptr inbounds nuw i8, ptr %106, i64 %148
  %151 = icmp ugt ptr %150, %43
  br i1 %151, label %.loopexit542, label %.preheader539, !llvm.loop !34

.preheader551:                                    ; preds = %81, %529
  %152 = phi i32 [ %418, %529 ], [ %99, %81 ]
  %153 = phi i32 [ %514, %529 ], [ %93, %81 ]
  %154 = phi ptr [ %516, %529 ], [ %95, %81 ]
  %155 = phi i64 [ %411, %529 ], [ %91, %81 ]
  %156 = phi ptr [ %157, %529 ], [ %86, %81 ]
  %157 = phi ptr [ %532, %529 ], [ %82, %81 ]
  %158 = phi i64 [ %530, %529 ], [ 1, %81 ]
  %159 = phi ptr [ %531, %529 ], [ %88, %81 ]
  %160 = mul i32 %152, -1640531535
  %161 = lshr i32 %160, %71
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !25
  %165 = ptrtoint ptr %156 to i64
  %166 = sub i64 %165, %24
  %167 = trunc i64 %166 to i32
  %168 = zext i32 %164 to i64
  %169 = getelementptr inbounds nuw i8, ptr %22, i64 %168
  store i32 %167, ptr %163, align 4, !tbaa !25
  %170 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %155
  store i32 %167, ptr %170, align 4, !tbaa !25
  %171 = getelementptr inbounds nuw i8, ptr %156, i64 1
  %172 = getelementptr inbounds i8, ptr %171, i64 %98
  %173 = load i32, ptr %172, align 1, !tbaa !25
  %174 = load i32, ptr %171, align 1, !tbaa !25
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %408

176:                                              ; preds = %.preheader551
  %177 = getelementptr inbounds nuw i8, ptr %156, i64 5
  %178 = getelementptr inbounds i8, ptr %177, i64 %98
  %179 = icmp ult ptr %177, %72
  br i1 %179, label %180, label %.loopexit550

180:                                              ; preds = %176
  %181 = load i64, ptr %178, align 1, !tbaa !24
  %182 = load i64, ptr %177, align 1, !tbaa !24
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %.preheader549, label %184

184:                                              ; preds = %180
  %185 = xor i64 %182, %181
  %186 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %185, i1 true)
  %187 = lshr i64 %186, 3
  br label %241

.preheader549:                                    ; preds = %180, %193
  %188 = phi ptr [ %191, %193 ], [ %178, %180 ]
  %189 = phi ptr [ %190, %193 ], [ %177, %180 ]
  %190 = getelementptr inbounds nuw i8, ptr %189, i64 8
  %191 = getelementptr inbounds nuw i8, ptr %188, i64 8
  %192 = icmp ult ptr %190, %72
  br i1 %192, label %193, label %.loopexit550

193:                                              ; preds = %.preheader549
  %194 = load i64, ptr %191, align 1, !tbaa !24
  %195 = load i64, ptr %190, align 1, !tbaa !24
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %.preheader549, label %197

197:                                              ; preds = %193
  %198 = xor i64 %195, %194
  %199 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %198, i1 true)
  %200 = lshr i64 %199, 3
  %201 = getelementptr inbounds nuw i8, ptr %190, i64 %200
  %202 = ptrtoint ptr %201 to i64
  %203 = ptrtoint ptr %177 to i64
  %204 = sub i64 %202, %203
  br label %241

.loopexit550:                                     ; preds = %.preheader549, %176
  %205 = phi ptr [ %178, %176 ], [ %191, %.preheader549 ]
  %206 = phi ptr [ %177, %176 ], [ %190, %.preheader549 ]
  %207 = icmp ult ptr %206, %73
  br i1 %207, label %208, label %215

208:                                              ; preds = %.loopexit550
  %209 = load i32, ptr %205, align 1, !tbaa !25
  %210 = load i32, ptr %206, align 1, !tbaa !25
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = getelementptr inbounds nuw i8, ptr %206, i64 4
  %214 = getelementptr inbounds nuw i8, ptr %205, i64 4
  br label %215

215:                                              ; preds = %212, %208, %.loopexit550
  %216 = phi ptr [ %214, %212 ], [ %205, %208 ], [ %205, %.loopexit550 ]
  %217 = phi ptr [ %213, %212 ], [ %206, %208 ], [ %206, %.loopexit550 ]
  %218 = icmp ult ptr %217, %74
  br i1 %218, label %219, label %226

219:                                              ; preds = %215
  %220 = load i16, ptr %216, align 1, !tbaa !35
  %221 = load i16, ptr %217, align 1, !tbaa !35
  %222 = icmp eq i16 %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = getelementptr inbounds nuw i8, ptr %217, i64 2
  %225 = getelementptr inbounds nuw i8, ptr %216, i64 2
  br label %226

226:                                              ; preds = %223, %219, %215
  %227 = phi ptr [ %225, %223 ], [ %216, %219 ], [ %216, %215 ]
  %228 = phi ptr [ %224, %223 ], [ %217, %219 ], [ %217, %215 ]
  %229 = icmp ult ptr %228, %42
  br i1 %229, label %230, label %236

230:                                              ; preds = %226
  %231 = load i8, ptr %227, align 1, !tbaa !37
  %232 = load i8, ptr %228, align 1, !tbaa !37
  %233 = icmp eq i8 %231, %232
  %234 = zext i1 %233 to i64
  %235 = getelementptr inbounds nuw i8, ptr %228, i64 %234
  br label %236

236:                                              ; preds = %230, %226
  %237 = phi ptr [ %228, %226 ], [ %235, %230 ]
  %238 = ptrtoint ptr %237 to i64
  %239 = ptrtoint ptr %177 to i64
  %240 = sub i64 %238, %239
  br label %241

241:                                              ; preds = %236, %197, %184
  %242 = phi i64 [ %240, %236 ], [ %187, %184 ], [ %204, %197 ]
  %243 = add i64 %242, 4
  %244 = ptrtoint ptr %171 to i64
  %245 = ptrtoint ptr %83 to i64
  %246 = sub i64 %244, %245
  %247 = icmp ugt ptr %171, %75
  %248 = load ptr, ptr %76, align 8, !tbaa !38
  br i1 %247, label %271, label %249

249:                                              ; preds = %241
  %250 = load <2 x i64>, ptr %83, align 1, !tbaa !37
  store <2 x i64> %250, ptr %248, align 1, !tbaa !37
  %251 = icmp ugt i64 %246, 16
  br i1 %251, label %252, label %387

252:                                              ; preds = %249
  %253 = load ptr, ptr %76, align 8, !tbaa !38
  %254 = getelementptr inbounds nuw i8, ptr %253, i64 16
  %255 = getelementptr inbounds nuw i8, ptr %83, i64 16
  %256 = getelementptr i8, ptr %253, i64 %246
  %257 = load <2 x i64>, ptr %255, align 1, !tbaa !37
  store <2 x i64> %257, ptr %254, align 1, !tbaa !37
  %258 = icmp ult i64 %246, 33
  br i1 %258, label %387, label %259

259:                                              ; preds = %252
  %260 = getelementptr inbounds nuw i8, ptr %253, i64 32
  br label %261

261:                                              ; preds = %261, %259
  %262 = phi ptr [ %260, %259 ], [ %269, %261 ]
  %263 = phi ptr [ %255, %259 ], [ %267, %261 ]
  %264 = getelementptr inbounds nuw i8, ptr %263, i64 16
  %265 = load <2 x i64>, ptr %264, align 1, !tbaa !37
  store <2 x i64> %265, ptr %262, align 1, !tbaa !37
  %266 = getelementptr inbounds nuw i8, ptr %262, i64 16
  %267 = getelementptr inbounds nuw i8, ptr %263, i64 32
  %268 = load <2 x i64>, ptr %267, align 1, !tbaa !37
  store <2 x i64> %268, ptr %266, align 1, !tbaa !37
  %269 = getelementptr inbounds nuw i8, ptr %262, i64 32
  %270 = icmp ult ptr %269, %256
  br i1 %270, label %261, label %.loopexit544, !llvm.loop !41

271:                                              ; preds = %241
  %272 = icmp ugt ptr %83, %75
  br i1 %272, label %.loopexit547, label %273

273:                                              ; preds = %271
  %274 = sub i64 %77, %245
  %275 = getelementptr inbounds i8, ptr %248, i64 %274
  %276 = load <2 x i64>, ptr %83, align 1, !tbaa !37
  store <2 x i64> %276, ptr %248, align 1, !tbaa !37
  %277 = icmp ult i64 %274, 17
  br i1 %277, label %.loopexit547, label %278

278:                                              ; preds = %273
  %279 = getelementptr inbounds nuw i8, ptr %248, i64 16
  br label %280

280:                                              ; preds = %280, %278
  %281 = phi ptr [ %279, %278 ], [ %288, %280 ]
  %282 = phi ptr [ %83, %278 ], [ %286, %280 ]
  %283 = getelementptr inbounds nuw i8, ptr %282, i64 16
  %284 = load <2 x i64>, ptr %283, align 1, !tbaa !37
  store <2 x i64> %284, ptr %281, align 1, !tbaa !37
  %285 = getelementptr inbounds nuw i8, ptr %281, i64 16
  %286 = getelementptr inbounds nuw i8, ptr %282, i64 32
  %287 = load <2 x i64>, ptr %286, align 1, !tbaa !37
  store <2 x i64> %287, ptr %285, align 1, !tbaa !37
  %288 = getelementptr inbounds nuw i8, ptr %281, i64 32
  %289 = icmp ult ptr %288, %275
  br i1 %289, label %280, label %.loopexit547, !llvm.loop !41

.loopexit547:                                     ; preds = %280, %273, %271
  %290 = phi ptr [ %75, %273 ], [ %83, %271 ], [ %75, %280 ]
  %291 = phi ptr [ %275, %273 ], [ %248, %271 ], [ %275, %280 ]
  %292 = icmp ult ptr %290, %171
  br i1 %292, label %293, label %.loopexit544

293:                                              ; preds = %.loopexit547
  %294 = ptrtoint ptr %290 to i64
  %295 = ptrtoint ptr %291 to i64
  %296 = sub i64 %165, %294
  %297 = add i64 %296, 1
  %298 = icmp ult i64 %297, 4
  %299 = sub i64 %295, %294
  %300 = icmp ult i64 %299, 32
  %301 = select i1 %298, i1 true, i1 %300
  br i1 %301, label %337, label %302

302:                                              ; preds = %293
  %303 = icmp ult i64 %297, 32
  br i1 %303, label %323, label %304

304:                                              ; preds = %302
  %305 = and i64 %297, -32
  br label %306

306:                                              ; preds = %306, %304
  %307 = phi i64 [ 0, %304 ], [ %314, %306 ]
  %308 = getelementptr i8, ptr %291, i64 %307
  %309 = getelementptr i8, ptr %290, i64 %307
  %310 = getelementptr i8, ptr %309, i64 16
  %311 = load <16 x i8>, ptr %309, align 1, !tbaa !37
  %312 = load <16 x i8>, ptr %310, align 1, !tbaa !37
  %313 = getelementptr i8, ptr %308, i64 16
  store <16 x i8> %311, ptr %308, align 1, !tbaa !37
  store <16 x i8> %312, ptr %313, align 1, !tbaa !37
  %314 = add nuw i64 %307, 32
  %315 = icmp eq i64 %314, %305
  br i1 %315, label %316, label %306, !llvm.loop !42

316:                                              ; preds = %306
  %317 = icmp eq i64 %297, %305
  br i1 %317, label %.loopexit544, label %318

318:                                              ; preds = %316
  %319 = getelementptr i8, ptr %291, i64 %305
  %320 = getelementptr i8, ptr %290, i64 %305
  %321 = and i64 %297, 28
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %337, label %323

323:                                              ; preds = %318, %302
  %324 = phi i64 [ %305, %318 ], [ 0, %302 ]
  %325 = and i64 %297, -4
  br label %326

326:                                              ; preds = %326, %323
  %327 = phi i64 [ %324, %323 ], [ %331, %326 ]
  %328 = getelementptr i8, ptr %291, i64 %327
  %329 = getelementptr i8, ptr %290, i64 %327
  %330 = load <4 x i8>, ptr %329, align 1, !tbaa !37
  store <4 x i8> %330, ptr %328, align 1, !tbaa !37
  %331 = add nuw i64 %327, 4
  %332 = icmp eq i64 %331, %325
  br i1 %332, label %333, label %326, !llvm.loop !45

333:                                              ; preds = %326
  %334 = getelementptr i8, ptr %291, i64 %325
  %335 = getelementptr i8, ptr %290, i64 %325
  %336 = icmp eq i64 %297, %325
  br i1 %336, label %.loopexit544, label %337

337:                                              ; preds = %333, %318, %293
  %338 = phi ptr [ %291, %293 ], [ %319, %318 ], [ %334, %333 ]
  %339 = phi ptr [ %290, %293 ], [ %320, %318 ], [ %335, %333 ]
  %340 = ptrtoint ptr %339 to i64
  %341 = sub i64 %165, %340
  %342 = add i64 %341, 1
  %343 = and i64 %342, 7
  %344 = and i64 %341, 7
  %345 = icmp eq i64 %344, 7
  br i1 %345, label %.preheader543.preheader, label %.preheader545.preheader

.preheader545.preheader:                          ; preds = %337
  %346 = ptrtoaddr ptr %338 to i64
  %min.iters.check3317 = icmp samesign ult i64 %343, 4
  %347 = sub i64 %346, %340
  %diff.check3315 = icmp ult i64 %347, 4
  %or.cond = select i1 %min.iters.check3317, i1 true, i1 %diff.check3315
  br i1 %or.cond, label %.preheader545.preheader3345, label %vector.ph3318

vector.ph3318:                                    ; preds = %.preheader545.preheader
  %n.vec3320 = and i64 %342, 4
  %348 = getelementptr i8, ptr %338, i64 %n.vec3320
  %349 = getelementptr i8, ptr %339, i64 %n.vec3320
  br label %vector.body3321

vector.body3321:                                  ; preds = %vector.body3321, %vector.ph3318
  %index3322 = phi i64 [ 0, %vector.ph3318 ], [ %index.next3326, %vector.body3321 ]
  %next.gep3323 = getelementptr i8, ptr %338, i64 %index3322
  %next.gep3324 = getelementptr i8, ptr %339, i64 %index3322
  %wide.load3325 = load <4 x i8>, ptr %next.gep3324, align 1, !tbaa !37
  store <4 x i8> %wide.load3325, ptr %next.gep3323, align 1, !tbaa !37
  %index.next3326 = add nuw i64 %index3322, 4
  %350 = icmp eq i64 %index.next3326, %n.vec3320
  br i1 %350, label %middle.block3327, label %vector.body3321, !llvm.loop !46

middle.block3327:                                 ; preds = %vector.body3321
  %cmp.n3328 = icmp eq i64 %343, %n.vec3320
  br i1 %cmp.n3328, label %.loopexit546, label %.preheader545.preheader3345

.preheader545.preheader3345:                      ; preds = %.preheader545.preheader, %middle.block3327
  %.ph3346 = phi ptr [ %338, %.preheader545.preheader ], [ %348, %middle.block3327 ]
  %.ph3347 = phi ptr [ %339, %.preheader545.preheader ], [ %349, %middle.block3327 ]
  %.ph3348 = phi i64 [ 0, %.preheader545.preheader ], [ %n.vec3320, %middle.block3327 ]
  br label %.preheader545

.preheader545:                                    ; preds = %.preheader545.preheader3345, %.preheader545
  %351 = phi ptr [ %356, %.preheader545 ], [ %.ph3346, %.preheader545.preheader3345 ]
  %352 = phi ptr [ %354, %.preheader545 ], [ %.ph3347, %.preheader545.preheader3345 ]
  %353 = phi i64 [ %357, %.preheader545 ], [ %.ph3348, %.preheader545.preheader3345 ]
  %354 = getelementptr inbounds nuw i8, ptr %352, i64 1
  %355 = load i8, ptr %352, align 1, !tbaa !37
  %356 = getelementptr inbounds nuw i8, ptr %351, i64 1
  store i8 %355, ptr %351, align 1, !tbaa !37
  %357 = add i64 %353, 1
  %358 = icmp eq i64 %357, %343
  br i1 %358, label %.loopexit546, label %.preheader545, !llvm.loop !48

.loopexit546:                                     ; preds = %.preheader545, %middle.block3327
  %.lcssa2852 = phi ptr [ %349, %middle.block3327 ], [ %354, %.preheader545 ]
  %.lcssa2851 = phi ptr [ %348, %middle.block3327 ], [ %356, %.preheader545 ]
  %359 = icmp ult i64 %341, 7
  br i1 %359, label %.loopexit544, label %.preheader543.preheader

.preheader543.preheader:                          ; preds = %337, %.loopexit546
  %.ph3343 = phi ptr [ %338, %337 ], [ %.lcssa2851, %.loopexit546 ]
  %.ph3344 = phi ptr [ %339, %337 ], [ %.lcssa2852, %.loopexit546 ]
  br label %.preheader543

.preheader543:                                    ; preds = %.preheader543.preheader, %.preheader543
  %360 = phi ptr [ %385, %.preheader543 ], [ %.ph3343, %.preheader543.preheader ]
  %361 = phi ptr [ %383, %.preheader543 ], [ %.ph3344, %.preheader543.preheader ]
  %362 = getelementptr inbounds nuw i8, ptr %361, i64 1
  %363 = load i8, ptr %361, align 1, !tbaa !37
  %364 = getelementptr inbounds nuw i8, ptr %360, i64 1
  store i8 %363, ptr %360, align 1, !tbaa !37
  %365 = getelementptr inbounds nuw i8, ptr %361, i64 2
  %366 = load i8, ptr %362, align 1, !tbaa !37
  %367 = getelementptr inbounds nuw i8, ptr %360, i64 2
  store i8 %366, ptr %364, align 1, !tbaa !37
  %368 = getelementptr inbounds nuw i8, ptr %361, i64 3
  %369 = load i8, ptr %365, align 1, !tbaa !37
  %370 = getelementptr inbounds nuw i8, ptr %360, i64 3
  store i8 %369, ptr %367, align 1, !tbaa !37
  %371 = getelementptr inbounds nuw i8, ptr %361, i64 4
  %372 = load i8, ptr %368, align 1, !tbaa !37
  %373 = getelementptr inbounds nuw i8, ptr %360, i64 4
  store i8 %372, ptr %370, align 1, !tbaa !37
  %374 = getelementptr inbounds nuw i8, ptr %361, i64 5
  %375 = load i8, ptr %371, align 1, !tbaa !37
  %376 = getelementptr inbounds nuw i8, ptr %360, i64 5
  store i8 %375, ptr %373, align 1, !tbaa !37
  %377 = getelementptr inbounds nuw i8, ptr %361, i64 6
  %378 = load i8, ptr %374, align 1, !tbaa !37
  %379 = getelementptr inbounds nuw i8, ptr %360, i64 6
  store i8 %378, ptr %376, align 1, !tbaa !37
  %380 = getelementptr inbounds nuw i8, ptr %361, i64 7
  %381 = load i8, ptr %377, align 1, !tbaa !37
  %382 = getelementptr inbounds nuw i8, ptr %360, i64 7
  store i8 %381, ptr %379, align 1, !tbaa !37
  %383 = getelementptr inbounds nuw i8, ptr %361, i64 8
  %384 = load i8, ptr %380, align 1, !tbaa !37
  %385 = getelementptr inbounds nuw i8, ptr %360, i64 8
  store i8 %384, ptr %382, align 1, !tbaa !37
  %386 = icmp eq ptr %380, %156
  br i1 %386, label %.loopexit544, label %.preheader543, !llvm.loop !49

387:                                              ; preds = %252, %249
  %388 = load ptr, ptr %76, align 8, !tbaa !38
  %389 = getelementptr inbounds nuw i8, ptr %388, i64 %246
  store ptr %389, ptr %76, align 8, !tbaa !38
  %390 = load ptr, ptr %79, align 8, !tbaa !50
  br label %402

.loopexit544:                                     ; preds = %261, %.preheader543, %.loopexit546, %333, %316, %.loopexit547
  %391 = load ptr, ptr %76, align 8, !tbaa !38
  %392 = getelementptr inbounds nuw i8, ptr %391, i64 %246
  store ptr %392, ptr %76, align 8, !tbaa !38
  %393 = icmp ugt i64 %246, 65535
  %394 = load ptr, ptr %79, align 8, !tbaa !50
  br i1 %393, label %395, label %402, !prof !51

395:                                              ; preds = %.loopexit544
  store i32 1, ptr %78, align 8, !tbaa !52
  %396 = load ptr, ptr %1, align 8, !tbaa !53
  %397 = ptrtoint ptr %394 to i64
  %398 = ptrtoint ptr %396 to i64
  %399 = sub i64 %397, %398
  %400 = lshr exact i64 %399, 3
  %401 = trunc i64 %400 to i32
  store i32 %401, ptr %80, align 4, !tbaa !54
  br label %402

402:                                              ; preds = %395, %.loopexit544, %387
  %403 = phi ptr [ %390, %387 ], [ %394, %395 ], [ %394, %.loopexit544 ]
  %404 = trunc i64 %246 to i16
  %405 = getelementptr inbounds nuw i8, ptr %403, i64 4
  store i16 %404, ptr %405, align 4, !tbaa !55
  store i32 1, ptr %403, align 4, !tbaa !57
  %406 = add i64 %242, 1
  %407 = icmp ugt i64 %406, 65535
  br i1 %407, label %886, label %900, !prof !58

408:                                              ; preds = %.preheader551
  %409 = load i64, ptr %157, align 1
  %410 = mul i64 %409, -3523014627327384477
  %411 = lshr i64 %410, %70
  %412 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %153, i32 %39, ptr nonnull readnone %9, ptr readnone %154) #9, !srcloc !33
  %413 = load i64, ptr %412, align 1, !tbaa !24
  %414 = load i64, ptr %156, align 1
  %415 = icmp eq i64 %413, %414
  %416 = icmp eq ptr %412, %154
  %417 = select i1 %415, i1 %416, i1 false
  %418 = trunc i64 %409 to i32
  br i1 %417, label %.loopexit540, label %511

.loopexit540:                                     ; preds = %408, %.preheader539
  %419 = phi i64 [ %120, %.preheader539 ], [ %411, %408 ]
  %420 = phi ptr [ %103, %.preheader539 ], [ %154, %408 ]
  %421 = phi ptr [ %105, %.preheader539 ], [ %156, %408 ]
  %422 = phi ptr [ %106, %.preheader539 ], [ %157, %408 ]
  %423 = phi i64 [ %107, %.preheader539 ], [ %158, %408 ]
  %424 = phi i64 [ %114, %.preheader539 ], [ %165, %408 ]
  %425 = phi i32 [ %116, %.preheader539 ], [ %167, %408 ]
  %426 = getelementptr inbounds nuw i8, ptr %421, i64 8
  %427 = getelementptr inbounds nuw i8, ptr %420, i64 8
  %428 = icmp ult ptr %426, %72
  br i1 %428, label %429, label %.loopexit530

429:                                              ; preds = %.loopexit540
  %430 = load i64, ptr %427, align 1, !tbaa !24
  %431 = load i64, ptr %426, align 1, !tbaa !24
  %432 = icmp eq i64 %430, %431
  br i1 %432, label %.preheader529, label %433

433:                                              ; preds = %429
  %434 = xor i64 %431, %430
  %435 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %434, i1 true)
  %436 = lshr i64 %435, 3
  br label %490

.preheader529:                                    ; preds = %429, %442
  %437 = phi ptr [ %440, %442 ], [ %427, %429 ]
  %438 = phi ptr [ %439, %442 ], [ %426, %429 ]
  %439 = getelementptr inbounds nuw i8, ptr %438, i64 8
  %440 = getelementptr inbounds nuw i8, ptr %437, i64 8
  %441 = icmp ult ptr %439, %72
  br i1 %441, label %442, label %.loopexit530

442:                                              ; preds = %.preheader529
  %443 = load i64, ptr %440, align 1, !tbaa !24
  %444 = load i64, ptr %439, align 1, !tbaa !24
  %445 = icmp eq i64 %443, %444
  br i1 %445, label %.preheader529, label %446

446:                                              ; preds = %442
  %447 = xor i64 %444, %443
  %448 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %447, i1 true)
  %449 = lshr i64 %448, 3
  %450 = getelementptr inbounds nuw i8, ptr %439, i64 %449
  %451 = ptrtoint ptr %450 to i64
  %452 = ptrtoint ptr %426 to i64
  %453 = sub i64 %451, %452
  br label %490

.loopexit530:                                     ; preds = %.preheader529, %.loopexit540
  %454 = phi ptr [ %427, %.loopexit540 ], [ %440, %.preheader529 ]
  %455 = phi ptr [ %426, %.loopexit540 ], [ %439, %.preheader529 ]
  %456 = icmp ult ptr %455, %73
  br i1 %456, label %457, label %464

457:                                              ; preds = %.loopexit530
  %458 = load i32, ptr %454, align 1, !tbaa !25
  %459 = load i32, ptr %455, align 1, !tbaa !25
  %460 = icmp eq i32 %458, %459
  br i1 %460, label %461, label %464

461:                                              ; preds = %457
  %462 = getelementptr inbounds nuw i8, ptr %455, i64 4
  %463 = getelementptr inbounds nuw i8, ptr %454, i64 4
  br label %464

464:                                              ; preds = %461, %457, %.loopexit530
  %465 = phi ptr [ %463, %461 ], [ %454, %457 ], [ %454, %.loopexit530 ]
  %466 = phi ptr [ %462, %461 ], [ %455, %457 ], [ %455, %.loopexit530 ]
  %467 = icmp ult ptr %466, %74
  br i1 %467, label %468, label %475

468:                                              ; preds = %464
  %469 = load i16, ptr %465, align 1, !tbaa !35
  %470 = load i16, ptr %466, align 1, !tbaa !35
  %471 = icmp eq i16 %469, %470
  br i1 %471, label %472, label %475

472:                                              ; preds = %468
  %473 = getelementptr inbounds nuw i8, ptr %466, i64 2
  %474 = getelementptr inbounds nuw i8, ptr %465, i64 2
  br label %475

475:                                              ; preds = %472, %468, %464
  %476 = phi ptr [ %474, %472 ], [ %465, %468 ], [ %465, %464 ]
  %477 = phi ptr [ %473, %472 ], [ %466, %468 ], [ %466, %464 ]
  %478 = icmp ult ptr %477, %42
  br i1 %478, label %479, label %485

479:                                              ; preds = %475
  %480 = load i8, ptr %476, align 1, !tbaa !37
  %481 = load i8, ptr %477, align 1, !tbaa !37
  %482 = icmp eq i8 %480, %481
  %483 = zext i1 %482 to i64
  %484 = getelementptr inbounds nuw i8, ptr %477, i64 %483
  br label %485

485:                                              ; preds = %479, %475
  %486 = phi ptr [ %477, %475 ], [ %484, %479 ]
  %487 = ptrtoint ptr %486 to i64
  %488 = ptrtoint ptr %426 to i64
  %489 = sub i64 %487, %488
  br label %490

490:                                              ; preds = %485, %446, %433
  %491 = phi i64 [ %489, %485 ], [ %436, %433 ], [ %453, %446 ]
  %492 = add i64 %491, 8
  %493 = ptrtoint ptr %420 to i64
  %494 = sub i64 %424, %493
  %495 = icmp ugt ptr %421, %83
  %496 = icmp ugt ptr %420, %41
  %497 = and i1 %496, %495
  br i1 %497, label %.preheader525, label %.loopexit526

.preheader525:                                    ; preds = %490, %506
  %498 = phi i64 [ %507, %506 ], [ %492, %490 ]
  %499 = phi ptr [ %501, %506 ], [ %421, %490 ]
  %500 = phi ptr [ %503, %506 ], [ %420, %490 ]
  %501 = getelementptr inbounds i8, ptr %499, i64 -1
  %502 = load i8, ptr %501, align 1, !tbaa !37
  %503 = getelementptr inbounds i8, ptr %500, i64 -1
  %504 = load i8, ptr %503, align 1, !tbaa !37
  %505 = icmp eq i8 %502, %504
  br i1 %505, label %506, label %.loopexit526

506:                                              ; preds = %.preheader525
  %507 = add i64 %498, 1
  %508 = icmp ugt ptr %501, %83
  %509 = icmp ugt ptr %503, %41
  %510 = and i1 %508, %509
  br i1 %510, label %.preheader525, label %.loopexit526, !llvm.loop !59

511:                                              ; preds = %408
  %512 = trunc i64 %414 to i32
  %513 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %411
  %514 = load i32, ptr %513, align 4, !tbaa !25
  %515 = zext i32 %514 to i64
  %516 = getelementptr inbounds nuw i8, ptr %22, i64 %515
  %517 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %164, i32 %39, ptr nonnull readnone %9, ptr readnone %169) #9, !srcloc !33
  %518 = load i32, ptr %517, align 1, !tbaa !25
  %519 = icmp eq i32 %518, %512
  %520 = icmp eq ptr %517, %169
  %521 = select i1 %519, i1 %520, i1 false
  br i1 %521, label %.loopexit541, label %522

522:                                              ; preds = %511
  %523 = icmp ult ptr %157, %159
  br i1 %523, label %529, label %524

524:                                              ; preds = %522
  %525 = getelementptr inbounds nuw i8, ptr %157, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %525, i32 0, i32 3, i32 1)
  %526 = getelementptr inbounds nuw i8, ptr %157, i64 128
  call void @llvm.prefetch.p0(ptr nonnull %526, i32 0, i32 3, i32 1)
  %527 = add i64 %158, 1
  %528 = getelementptr inbounds nuw i8, ptr %159, i64 256
  br label %529

529:                                              ; preds = %524, %522
  %530 = phi i64 [ %527, %524 ], [ %158, %522 ]
  %531 = phi ptr [ %528, %524 ], [ %159, %522 ]
  %532 = getelementptr inbounds nuw i8, ptr %157, i64 %530
  %533 = icmp ugt ptr %532, %43
  br i1 %533, label %.loopexit542, label %.preheader551, !llvm.loop !34

.loopexit541:                                     ; preds = %511, %127
  %534 = phi i64 [ %118, %127 ], [ %409, %511 ]
  %535 = phi i32 [ %131, %127 ], [ %514, %511 ]
  %536 = phi ptr [ %133, %127 ], [ %516, %511 ]
  %537 = phi i64 [ %120, %127 ], [ %411, %511 ]
  %538 = phi ptr [ %105, %127 ], [ %156, %511 ]
  %539 = phi ptr [ %106, %127 ], [ %157, %511 ]
  %540 = phi i64 [ %107, %127 ], [ %158, %511 ]
  %541 = phi i32 [ %116, %127 ], [ %167, %511 ]
  %542 = phi ptr [ %129, %127 ], [ %169, %511 ]
  %543 = getelementptr inbounds nuw i8, ptr %538, i64 4
  %544 = getelementptr inbounds nuw i8, ptr %542, i64 4
  %545 = icmp ult ptr %543, %72
  br i1 %545, label %546, label %.loopexit538

546:                                              ; preds = %.loopexit541
  %547 = load i64, ptr %544, align 1, !tbaa !24
  %548 = load i64, ptr %543, align 1, !tbaa !24
  %549 = icmp eq i64 %547, %548
  br i1 %549, label %.preheader537, label %550

550:                                              ; preds = %546
  %551 = xor i64 %548, %547
  %552 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %551, i1 true)
  %553 = lshr i64 %552, 3
  br label %607

.preheader537:                                    ; preds = %546, %559
  %554 = phi ptr [ %557, %559 ], [ %544, %546 ]
  %555 = phi ptr [ %556, %559 ], [ %543, %546 ]
  %556 = getelementptr inbounds nuw i8, ptr %555, i64 8
  %557 = getelementptr inbounds nuw i8, ptr %554, i64 8
  %558 = icmp ult ptr %556, %72
  br i1 %558, label %559, label %.loopexit538

559:                                              ; preds = %.preheader537
  %560 = load i64, ptr %557, align 1, !tbaa !24
  %561 = load i64, ptr %556, align 1, !tbaa !24
  %562 = icmp eq i64 %560, %561
  br i1 %562, label %.preheader537, label %563

563:                                              ; preds = %559
  %564 = xor i64 %561, %560
  %565 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %564, i1 true)
  %566 = lshr i64 %565, 3
  %567 = getelementptr inbounds nuw i8, ptr %556, i64 %566
  %568 = ptrtoint ptr %567 to i64
  %569 = ptrtoint ptr %543 to i64
  %570 = sub i64 %568, %569
  br label %607

.loopexit538:                                     ; preds = %.preheader537, %.loopexit541
  %571 = phi ptr [ %544, %.loopexit541 ], [ %557, %.preheader537 ]
  %572 = phi ptr [ %543, %.loopexit541 ], [ %556, %.preheader537 ]
  %573 = icmp ult ptr %572, %73
  br i1 %573, label %574, label %581

574:                                              ; preds = %.loopexit538
  %575 = load i32, ptr %571, align 1, !tbaa !25
  %576 = load i32, ptr %572, align 1, !tbaa !25
  %577 = icmp eq i32 %575, %576
  br i1 %577, label %578, label %581

578:                                              ; preds = %574
  %579 = getelementptr inbounds nuw i8, ptr %572, i64 4
  %580 = getelementptr inbounds nuw i8, ptr %571, i64 4
  br label %581

581:                                              ; preds = %578, %574, %.loopexit538
  %582 = phi ptr [ %580, %578 ], [ %571, %574 ], [ %571, %.loopexit538 ]
  %583 = phi ptr [ %579, %578 ], [ %572, %574 ], [ %572, %.loopexit538 ]
  %584 = icmp ult ptr %583, %74
  br i1 %584, label %585, label %592

585:                                              ; preds = %581
  %586 = load i16, ptr %582, align 1, !tbaa !35
  %587 = load i16, ptr %583, align 1, !tbaa !35
  %588 = icmp eq i16 %586, %587
  br i1 %588, label %589, label %592

589:                                              ; preds = %585
  %590 = getelementptr inbounds nuw i8, ptr %583, i64 2
  %591 = getelementptr inbounds nuw i8, ptr %582, i64 2
  br label %592

592:                                              ; preds = %589, %585, %581
  %593 = phi ptr [ %591, %589 ], [ %582, %585 ], [ %582, %581 ]
  %594 = phi ptr [ %590, %589 ], [ %583, %585 ], [ %583, %581 ]
  %595 = icmp ult ptr %594, %42
  br i1 %595, label %596, label %602

596:                                              ; preds = %592
  %597 = load i8, ptr %593, align 1, !tbaa !37
  %598 = load i8, ptr %594, align 1, !tbaa !37
  %599 = icmp eq i8 %597, %598
  %600 = zext i1 %599 to i64
  %601 = getelementptr inbounds nuw i8, ptr %594, i64 %600
  br label %602

602:                                              ; preds = %596, %592
  %603 = phi ptr [ %594, %592 ], [ %601, %596 ]
  %604 = ptrtoint ptr %603 to i64
  %605 = ptrtoint ptr %543 to i64
  %606 = sub i64 %604, %605
  br label %607

607:                                              ; preds = %602, %563, %550
  %608 = phi i64 [ %606, %602 ], [ %553, %550 ], [ %570, %563 ]
  %609 = add i64 %608, 4
  %610 = ptrtoint ptr %538 to i64
  %611 = ptrtoint ptr %542 to i64
  %612 = sub i64 %610, %611
  %613 = icmp ugt i32 %535, %39
  br i1 %613, label %614, label %690

614:                                              ; preds = %607
  %615 = load i64, ptr %536, align 1, !tbaa !24
  %616 = icmp eq i64 %615, %534
  br i1 %616, label %617, label %690

617:                                              ; preds = %614
  %618 = getelementptr inbounds nuw i8, ptr %539, i64 8
  %619 = getelementptr inbounds nuw i8, ptr %536, i64 8
  %620 = icmp ult ptr %618, %72
  br i1 %620, label %621, label %.loopexit536

621:                                              ; preds = %617
  %622 = load i64, ptr %619, align 1, !tbaa !24
  %623 = load i64, ptr %618, align 1, !tbaa !24
  %624 = icmp eq i64 %622, %623
  br i1 %624, label %.preheader535, label %625

625:                                              ; preds = %621
  %626 = xor i64 %623, %622
  %627 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %626, i1 true)
  %628 = lshr i64 %627, 3
  br label %682

.preheader535:                                    ; preds = %621, %634
  %629 = phi ptr [ %632, %634 ], [ %619, %621 ]
  %630 = phi ptr [ %631, %634 ], [ %618, %621 ]
  %631 = getelementptr inbounds nuw i8, ptr %630, i64 8
  %632 = getelementptr inbounds nuw i8, ptr %629, i64 8
  %633 = icmp ult ptr %631, %72
  br i1 %633, label %634, label %.loopexit536

634:                                              ; preds = %.preheader535
  %635 = load i64, ptr %632, align 1, !tbaa !24
  %636 = load i64, ptr %631, align 1, !tbaa !24
  %637 = icmp eq i64 %635, %636
  br i1 %637, label %.preheader535, label %638

638:                                              ; preds = %634
  %639 = xor i64 %636, %635
  %640 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %639, i1 true)
  %641 = lshr i64 %640, 3
  %642 = getelementptr inbounds nuw i8, ptr %631, i64 %641
  %643 = ptrtoint ptr %642 to i64
  %644 = ptrtoint ptr %618 to i64
  %645 = sub i64 %643, %644
  br label %682

.loopexit536:                                     ; preds = %.preheader535, %617
  %646 = phi ptr [ %619, %617 ], [ %632, %.preheader535 ]
  %647 = phi ptr [ %618, %617 ], [ %631, %.preheader535 ]
  %648 = icmp ult ptr %647, %73
  br i1 %648, label %649, label %656

649:                                              ; preds = %.loopexit536
  %650 = load i32, ptr %646, align 1, !tbaa !25
  %651 = load i32, ptr %647, align 1, !tbaa !25
  %652 = icmp eq i32 %650, %651
  br i1 %652, label %653, label %656

653:                                              ; preds = %649
  %654 = getelementptr inbounds nuw i8, ptr %647, i64 4
  %655 = getelementptr inbounds nuw i8, ptr %646, i64 4
  br label %656

656:                                              ; preds = %653, %649, %.loopexit536
  %657 = phi ptr [ %655, %653 ], [ %646, %649 ], [ %646, %.loopexit536 ]
  %658 = phi ptr [ %654, %653 ], [ %647, %649 ], [ %647, %.loopexit536 ]
  %659 = icmp ult ptr %658, %74
  br i1 %659, label %660, label %667

660:                                              ; preds = %656
  %661 = load i16, ptr %657, align 1, !tbaa !35
  %662 = load i16, ptr %658, align 1, !tbaa !35
  %663 = icmp eq i16 %661, %662
  br i1 %663, label %664, label %667

664:                                              ; preds = %660
  %665 = getelementptr inbounds nuw i8, ptr %658, i64 2
  %666 = getelementptr inbounds nuw i8, ptr %657, i64 2
  br label %667

667:                                              ; preds = %664, %660, %656
  %668 = phi ptr [ %666, %664 ], [ %657, %660 ], [ %657, %656 ]
  %669 = phi ptr [ %665, %664 ], [ %658, %660 ], [ %658, %656 ]
  %670 = icmp ult ptr %669, %42
  br i1 %670, label %671, label %677

671:                                              ; preds = %667
  %672 = load i8, ptr %668, align 1, !tbaa !37
  %673 = load i8, ptr %669, align 1, !tbaa !37
  %674 = icmp eq i8 %672, %673
  %675 = zext i1 %674 to i64
  %676 = getelementptr inbounds nuw i8, ptr %669, i64 %675
  br label %677

677:                                              ; preds = %671, %667
  %678 = phi ptr [ %669, %667 ], [ %676, %671 ]
  %679 = ptrtoint ptr %678 to i64
  %680 = ptrtoint ptr %618 to i64
  %681 = sub i64 %679, %680
  br label %682

682:                                              ; preds = %677, %638, %625
  %683 = phi i64 [ %681, %677 ], [ %628, %625 ], [ %645, %638 ]
  %684 = add i64 %683, 8
  %685 = icmp ugt i64 %684, %609
  br i1 %685, label %686, label %690

686:                                              ; preds = %682
  %687 = ptrtoint ptr %539 to i64
  %688 = ptrtoint ptr %536 to i64
  %689 = sub i64 %687, %688
  br label %690

690:                                              ; preds = %686, %682, %614, %607
  %691 = phi ptr [ %542, %614 ], [ %542, %607 ], [ %536, %686 ], [ %542, %682 ]
  %692 = phi ptr [ %538, %614 ], [ %538, %607 ], [ %539, %686 ], [ %538, %682 ]
  %693 = phi i64 [ %612, %614 ], [ %612, %607 ], [ %689, %686 ], [ %612, %682 ]
  %694 = phi i64 [ %609, %614 ], [ %609, %607 ], [ %684, %686 ], [ %609, %682 ]
  %695 = icmp ugt ptr %692, %83
  %696 = icmp ugt ptr %691, %41
  %697 = and i1 %696, %695
  br i1 %697, label %.preheader531, label %.loopexit526

.preheader531:                                    ; preds = %690, %706
  %698 = phi i64 [ %707, %706 ], [ %694, %690 ]
  %699 = phi ptr [ %701, %706 ], [ %692, %690 ]
  %700 = phi ptr [ %703, %706 ], [ %691, %690 ]
  %701 = getelementptr inbounds i8, ptr %699, i64 -1
  %702 = load i8, ptr %701, align 1, !tbaa !37
  %703 = getelementptr inbounds i8, ptr %700, i64 -1
  %704 = load i8, ptr %703, align 1, !tbaa !37
  %705 = icmp eq i8 %702, %704
  br i1 %705, label %706, label %.loopexit526

706:                                              ; preds = %.preheader531
  %707 = add i64 %698, 1
  %708 = icmp ugt ptr %701, %83
  %709 = icmp ugt ptr %703, %41
  %710 = and i1 %708, %709
  br i1 %710, label %.preheader531, label %.loopexit526, !llvm.loop !60

.loopexit526:                                     ; preds = %706, %.preheader531, %506, %.preheader525, %690, %490
  %711 = phi i64 [ %419, %490 ], [ %537, %690 ], [ %419, %506 ], [ %419, %.preheader525 ], [ %537, %.preheader531 ], [ %537, %706 ]
  %712 = phi ptr [ %422, %490 ], [ %539, %690 ], [ %422, %506 ], [ %422, %.preheader525 ], [ %539, %.preheader531 ], [ %539, %706 ]
  %713 = phi i64 [ %423, %490 ], [ %540, %690 ], [ %423, %506 ], [ %423, %.preheader525 ], [ %540, %.preheader531 ], [ %540, %706 ]
  %714 = phi i32 [ %425, %490 ], [ %541, %690 ], [ %425, %506 ], [ %425, %.preheader525 ], [ %541, %.preheader531 ], [ %541, %706 ]
  %715 = phi ptr [ %421, %490 ], [ %692, %690 ], [ %501, %506 ], [ %499, %.preheader525 ], [ %701, %706 ], [ %699, %.preheader531 ]
  %716 = phi i64 [ %494, %490 ], [ %693, %690 ], [ %494, %506 ], [ %494, %.preheader525 ], [ %693, %.preheader531 ], [ %693, %706 ]
  %717 = phi i64 [ %492, %490 ], [ %694, %690 ], [ %507, %506 ], [ %498, %.preheader525 ], [ %707, %706 ], [ %698, %.preheader531 ]
  %718 = trunc i64 %716 to i32
  %719 = icmp ult i64 %713, 4
  br i1 %719, label %720, label %725

720:                                              ; preds = %.loopexit526
  %721 = ptrtoint ptr %712 to i64
  %722 = sub i64 %721, %24
  %723 = trunc i64 %722 to i32
  %724 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %711
  store i32 %723, ptr %724, align 4, !tbaa !25
  br label %725

725:                                              ; preds = %720, %.loopexit526
  %726 = ptrtoint ptr %715 to i64
  %727 = ptrtoint ptr %83 to i64
  %728 = sub i64 %726, %727
  %729 = add i32 %718, 3
  %730 = icmp ugt ptr %715, %75
  %731 = load ptr, ptr %76, align 8, !tbaa !38
  br i1 %730, label %754, label %732

732:                                              ; preds = %725
  %733 = load <2 x i64>, ptr %83, align 1, !tbaa !37
  store <2 x i64> %733, ptr %731, align 1, !tbaa !37
  %734 = icmp ugt i64 %728, 16
  br i1 %734, label %735, label %865

735:                                              ; preds = %732
  %736 = load ptr, ptr %76, align 8, !tbaa !38
  %737 = getelementptr inbounds nuw i8, ptr %736, i64 16
  %738 = getelementptr inbounds nuw i8, ptr %83, i64 16
  %739 = getelementptr i8, ptr %736, i64 %728
  %740 = load <2 x i64>, ptr %738, align 1, !tbaa !37
  store <2 x i64> %740, ptr %737, align 1, !tbaa !37
  %741 = icmp ult i64 %728, 33
  br i1 %741, label %865, label %742

742:                                              ; preds = %735
  %743 = getelementptr inbounds nuw i8, ptr %736, i64 32
  br label %744

744:                                              ; preds = %744, %742
  %745 = phi ptr [ %743, %742 ], [ %752, %744 ]
  %746 = phi ptr [ %738, %742 ], [ %750, %744 ]
  %747 = getelementptr inbounds nuw i8, ptr %746, i64 16
  %748 = load <2 x i64>, ptr %747, align 1, !tbaa !37
  store <2 x i64> %748, ptr %745, align 1, !tbaa !37
  %749 = getelementptr inbounds nuw i8, ptr %745, i64 16
  %750 = getelementptr inbounds nuw i8, ptr %746, i64 32
  %751 = load <2 x i64>, ptr %750, align 1, !tbaa !37
  store <2 x i64> %751, ptr %749, align 1, !tbaa !37
  %752 = getelementptr inbounds nuw i8, ptr %745, i64 32
  %753 = icmp ult ptr %752, %739
  br i1 %753, label %744, label %.loopexit520, !llvm.loop !41

754:                                              ; preds = %725
  %755 = icmp ugt ptr %83, %75
  br i1 %755, label %.loopexit523, label %756

756:                                              ; preds = %754
  %757 = sub i64 %77, %727
  %758 = getelementptr inbounds i8, ptr %731, i64 %757
  %759 = load <2 x i64>, ptr %83, align 1, !tbaa !37
  store <2 x i64> %759, ptr %731, align 1, !tbaa !37
  %760 = icmp ult i64 %757, 17
  br i1 %760, label %.loopexit523, label %761

761:                                              ; preds = %756
  %762 = getelementptr inbounds nuw i8, ptr %731, i64 16
  br label %763

763:                                              ; preds = %763, %761
  %764 = phi ptr [ %762, %761 ], [ %771, %763 ]
  %765 = phi ptr [ %83, %761 ], [ %769, %763 ]
  %766 = getelementptr inbounds nuw i8, ptr %765, i64 16
  %767 = load <2 x i64>, ptr %766, align 1, !tbaa !37
  store <2 x i64> %767, ptr %764, align 1, !tbaa !37
  %768 = getelementptr inbounds nuw i8, ptr %764, i64 16
  %769 = getelementptr inbounds nuw i8, ptr %765, i64 32
  %770 = load <2 x i64>, ptr %769, align 1, !tbaa !37
  store <2 x i64> %770, ptr %768, align 1, !tbaa !37
  %771 = getelementptr inbounds nuw i8, ptr %764, i64 32
  %772 = icmp ult ptr %771, %758
  br i1 %772, label %763, label %.loopexit523, !llvm.loop !41

.loopexit523:                                     ; preds = %763, %756, %754
  %773 = phi ptr [ %75, %756 ], [ %83, %754 ], [ %75, %763 ]
  %774 = phi ptr [ %758, %756 ], [ %731, %754 ], [ %758, %763 ]
  %775 = icmp ult ptr %773, %715
  br i1 %775, label %776, label %.loopexit520

776:                                              ; preds = %.loopexit523
  %777 = ptrtoint ptr %773 to i64
  %778 = ptrtoint ptr %774 to i64
  %779 = sub i64 %726, %777
  %780 = icmp ult i64 %779, 4
  %781 = sub i64 %778, %777
  %782 = icmp ult i64 %781, 32
  %783 = select i1 %780, i1 true, i1 %782
  br i1 %783, label %819, label %784

784:                                              ; preds = %776
  %785 = icmp ult i64 %779, 32
  br i1 %785, label %805, label %786

786:                                              ; preds = %784
  %787 = and i64 %779, -32
  br label %788

788:                                              ; preds = %788, %786
  %789 = phi i64 [ 0, %786 ], [ %796, %788 ]
  %790 = getelementptr i8, ptr %774, i64 %789
  %791 = getelementptr i8, ptr %773, i64 %789
  %792 = getelementptr i8, ptr %791, i64 16
  %793 = load <16 x i8>, ptr %791, align 1, !tbaa !37
  %794 = load <16 x i8>, ptr %792, align 1, !tbaa !37
  %795 = getelementptr i8, ptr %790, i64 16
  store <16 x i8> %793, ptr %790, align 1, !tbaa !37
  store <16 x i8> %794, ptr %795, align 1, !tbaa !37
  %796 = add nuw i64 %789, 32
  %797 = icmp eq i64 %796, %787
  br i1 %797, label %798, label %788, !llvm.loop !61

798:                                              ; preds = %788
  %799 = icmp eq i64 %779, %787
  br i1 %799, label %.loopexit520, label %800

800:                                              ; preds = %798
  %801 = getelementptr i8, ptr %774, i64 %787
  %802 = getelementptr i8, ptr %773, i64 %787
  %803 = and i64 %779, 28
  %804 = icmp eq i64 %803, 0
  br i1 %804, label %819, label %805

805:                                              ; preds = %800, %784
  %806 = phi i64 [ %787, %800 ], [ 0, %784 ]
  %807 = and i64 %779, -4
  br label %808

808:                                              ; preds = %808, %805
  %809 = phi i64 [ %806, %805 ], [ %813, %808 ]
  %810 = getelementptr i8, ptr %774, i64 %809
  %811 = getelementptr i8, ptr %773, i64 %809
  %812 = load <4 x i8>, ptr %811, align 1, !tbaa !37
  store <4 x i8> %812, ptr %810, align 1, !tbaa !37
  %813 = add nuw i64 %809, 4
  %814 = icmp eq i64 %813, %807
  br i1 %814, label %815, label %808, !llvm.loop !62

815:                                              ; preds = %808
  %816 = getelementptr i8, ptr %774, i64 %807
  %817 = getelementptr i8, ptr %773, i64 %807
  %818 = icmp eq i64 %779, %807
  br i1 %818, label %.loopexit520, label %819

819:                                              ; preds = %815, %800, %776
  %820 = phi ptr [ %774, %776 ], [ %801, %800 ], [ %816, %815 ]
  %821 = phi ptr [ %773, %776 ], [ %802, %800 ], [ %817, %815 ]
  %822 = ptrtoint ptr %821 to i64
  %823 = sub i64 %726, %822
  %824 = and i64 %823, 7
  %825 = icmp eq i64 %824, 0
  br i1 %825, label %.loopexit522, label %.preheader521

.preheader521:                                    ; preds = %819, %.preheader521
  %826 = phi ptr [ %831, %.preheader521 ], [ %820, %819 ]
  %827 = phi ptr [ %829, %.preheader521 ], [ %821, %819 ]
  %828 = phi i64 [ %832, %.preheader521 ], [ 0, %819 ]
  %829 = getelementptr inbounds nuw i8, ptr %827, i64 1
  %830 = load i8, ptr %827, align 1, !tbaa !37
  %831 = getelementptr inbounds nuw i8, ptr %826, i64 1
  store i8 %830, ptr %826, align 1, !tbaa !37
  %832 = add nuw nsw i64 %828, 1
  %833 = icmp eq i64 %832, %824
  br i1 %833, label %.loopexit522, label %.preheader521, !llvm.loop !63

.loopexit522:                                     ; preds = %.preheader521, %819
  %834 = phi ptr [ %820, %819 ], [ %831, %.preheader521 ]
  %835 = phi ptr [ %821, %819 ], [ %829, %.preheader521 ]
  %836 = sub i64 %822, %726
  %837 = icmp ugt i64 %836, -8
  br i1 %837, label %.loopexit520, label %.preheader519

.preheader519:                                    ; preds = %.loopexit522, %.preheader519
  %838 = phi ptr [ %863, %.preheader519 ], [ %834, %.loopexit522 ]
  %839 = phi ptr [ %861, %.preheader519 ], [ %835, %.loopexit522 ]
  %840 = getelementptr inbounds nuw i8, ptr %839, i64 1
  %841 = load i8, ptr %839, align 1, !tbaa !37
  %842 = getelementptr inbounds nuw i8, ptr %838, i64 1
  store i8 %841, ptr %838, align 1, !tbaa !37
  %843 = getelementptr inbounds nuw i8, ptr %839, i64 2
  %844 = load i8, ptr %840, align 1, !tbaa !37
  %845 = getelementptr inbounds nuw i8, ptr %838, i64 2
  store i8 %844, ptr %842, align 1, !tbaa !37
  %846 = getelementptr inbounds nuw i8, ptr %839, i64 3
  %847 = load i8, ptr %843, align 1, !tbaa !37
  %848 = getelementptr inbounds nuw i8, ptr %838, i64 3
  store i8 %847, ptr %845, align 1, !tbaa !37
  %849 = getelementptr inbounds nuw i8, ptr %839, i64 4
  %850 = load i8, ptr %846, align 1, !tbaa !37
  %851 = getelementptr inbounds nuw i8, ptr %838, i64 4
  store i8 %850, ptr %848, align 1, !tbaa !37
  %852 = getelementptr inbounds nuw i8, ptr %839, i64 5
  %853 = load i8, ptr %849, align 1, !tbaa !37
  %854 = getelementptr inbounds nuw i8, ptr %838, i64 5
  store i8 %853, ptr %851, align 1, !tbaa !37
  %855 = getelementptr inbounds nuw i8, ptr %839, i64 6
  %856 = load i8, ptr %852, align 1, !tbaa !37
  %857 = getelementptr inbounds nuw i8, ptr %838, i64 6
  store i8 %856, ptr %854, align 1, !tbaa !37
  %858 = getelementptr inbounds nuw i8, ptr %839, i64 7
  %859 = load i8, ptr %855, align 1, !tbaa !37
  %860 = getelementptr inbounds nuw i8, ptr %838, i64 7
  store i8 %859, ptr %857, align 1, !tbaa !37
  %861 = getelementptr inbounds nuw i8, ptr %839, i64 8
  %862 = load i8, ptr %858, align 1, !tbaa !37
  %863 = getelementptr inbounds nuw i8, ptr %838, i64 8
  store i8 %862, ptr %860, align 1, !tbaa !37
  %864 = icmp eq ptr %861, %715
  br i1 %864, label %.loopexit520, label %.preheader519, !llvm.loop !64

865:                                              ; preds = %735, %732
  %866 = load ptr, ptr %76, align 8, !tbaa !38
  %867 = getelementptr inbounds nuw i8, ptr %866, i64 %728
  store ptr %867, ptr %76, align 8, !tbaa !38
  %868 = load ptr, ptr %79, align 8, !tbaa !50
  br label %880

.loopexit520:                                     ; preds = %744, %.preheader519, %.loopexit522, %815, %798, %.loopexit523
  %869 = load ptr, ptr %76, align 8, !tbaa !38
  %870 = getelementptr inbounds nuw i8, ptr %869, i64 %728
  store ptr %870, ptr %76, align 8, !tbaa !38
  %871 = icmp ugt i64 %728, 65535
  %872 = load ptr, ptr %79, align 8, !tbaa !50
  br i1 %871, label %873, label %880, !prof !51

873:                                              ; preds = %.loopexit520
  store i32 1, ptr %78, align 8, !tbaa !52
  %874 = load ptr, ptr %1, align 8, !tbaa !53
  %875 = ptrtoint ptr %872 to i64
  %876 = ptrtoint ptr %874 to i64
  %877 = sub i64 %875, %876
  %878 = lshr exact i64 %877, 3
  %879 = trunc i64 %878 to i32
  store i32 %879, ptr %80, align 4, !tbaa !54
  br label %880

880:                                              ; preds = %873, %.loopexit520, %865
  %881 = phi ptr [ %868, %865 ], [ %872, %873 ], [ %872, %.loopexit520 ]
  %882 = trunc i64 %728 to i16
  %883 = getelementptr inbounds nuw i8, ptr %881, i64 4
  store i16 %882, ptr %883, align 4, !tbaa !55
  store i32 %729, ptr %881, align 4, !tbaa !57
  %884 = add i64 %717, -3
  %885 = icmp ugt i64 %884, 65535
  br i1 %885, label %886, label %900, !prof !58

886:                                              ; preds = %880, %402
  %887 = phi ptr [ %403, %402 ], [ %881, %880 ]
  %888 = phi i64 [ %406, %402 ], [ %884, %880 ]
  %889 = phi i32 [ %167, %402 ], [ %714, %880 ]
  %890 = phi ptr [ %171, %402 ], [ %715, %880 ]
  %891 = phi i64 [ %243, %402 ], [ %717, %880 ]
  %892 = phi i32 [ %85, %402 ], [ %87, %880 ]
  %893 = phi i32 [ %87, %402 ], [ %718, %880 ]
  store i32 2, ptr %78, align 8, !tbaa !52
  %894 = load ptr, ptr %1, align 8, !tbaa !53
  %895 = ptrtoint ptr %887 to i64
  %896 = ptrtoint ptr %894 to i64
  %897 = sub i64 %895, %896
  %898 = lshr exact i64 %897, 3
  %899 = trunc i64 %898 to i32
  store i32 %899, ptr %80, align 4, !tbaa !54
  br label %900

900:                                              ; preds = %886, %880, %402
  %901 = phi i64 [ %406, %402 ], [ %884, %880 ], [ %888, %886 ]
  %902 = phi ptr [ %403, %402 ], [ %881, %880 ], [ %887, %886 ]
  %903 = phi i32 [ %167, %402 ], [ %714, %880 ], [ %889, %886 ]
  %904 = phi ptr [ %171, %402 ], [ %715, %880 ], [ %890, %886 ]
  %905 = phi i64 [ %243, %402 ], [ %717, %880 ], [ %891, %886 ]
  %906 = phi i32 [ %85, %402 ], [ %87, %880 ], [ %892, %886 ]
  %907 = phi i32 [ %87, %402 ], [ %718, %880 ], [ %893, %886 ]
  %908 = trunc i64 %901 to i16
  %909 = getelementptr inbounds nuw i8, ptr %902, i64 6
  store i16 %908, ptr %909, align 2, !tbaa !65
  %910 = getelementptr inbounds nuw i8, ptr %902, i64 8
  store ptr %910, ptr %79, align 8, !tbaa !50
  %911 = getelementptr inbounds nuw i8, ptr %904, i64 %905
  %912 = icmp ugt ptr %911, %43
  br i1 %912, label %.loopexit516, label %913

913:                                              ; preds = %900
  %914 = add i32 %903, 2
  %915 = zext i32 %914 to i64
  %916 = getelementptr inbounds nuw i8, ptr %22, i64 %915
  %917 = load i64, ptr %916, align 1, !tbaa !24
  %918 = mul i64 %917, -3523014627327384477
  %919 = lshr i64 %918, %70
  %920 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %919
  store i32 %914, ptr %920, align 4, !tbaa !25
  %921 = getelementptr inbounds i8, ptr %911, i64 -2
  %922 = ptrtoint ptr %921 to i64
  %923 = sub i64 %922, %24
  %924 = trunc i64 %923 to i32
  %925 = load i64, ptr %921, align 1, !tbaa !24
  %926 = mul i64 %925, -3523014627327384477
  %927 = lshr i64 %926, %70
  %928 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %927
  store i32 %924, ptr %928, align 4, !tbaa !25
  %929 = load i32, ptr %916, align 1, !tbaa !25
  %930 = mul i32 %929, -1640531535
  %931 = lshr i32 %930, %71
  %932 = zext i32 %931 to i64
  %933 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %932
  store i32 %914, ptr %933, align 4, !tbaa !25
  %934 = getelementptr inbounds i8, ptr %911, i64 -1
  %935 = ptrtoint ptr %934 to i64
  %936 = sub i64 %935, %24
  %937 = trunc i64 %936 to i32
  %938 = load i32, ptr %934, align 1, !tbaa !25
  %939 = mul i32 %938, -1640531535
  %940 = lshr i32 %939, %71
  %941 = zext i32 %940 to i64
  %942 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %941
  store i32 %937, ptr %942, align 4, !tbaa !25
  br label %943

943:                                              ; preds = %1051, %913
  %944 = phi ptr [ %910, %913 ], [ %1054, %1051 ]
  %945 = phi ptr [ %911, %913 ], [ %1056, %1051 ]
  %946 = phi i32 [ %907, %913 ], [ %947, %1051 ]
  %947 = phi i32 [ %906, %913 ], [ %946, %1051 ]
  %948 = icmp ne i32 %947, 0
  %949 = load i32, ptr %945, align 1, !tbaa !25
  %950 = zext i32 %947 to i64
  %951 = sub nsw i64 0, %950
  %952 = getelementptr inbounds i8, ptr %945, i64 %951
  %953 = load i32, ptr %952, align 1, !tbaa !25
  %954 = icmp eq i32 %949, %953
  %955 = and i1 %948, %954
  br i1 %955, label %956, label %.loopexit516

956:                                              ; preds = %943
  %957 = getelementptr inbounds nuw i8, ptr %945, i64 4
  %958 = getelementptr inbounds i8, ptr %957, i64 %951
  %959 = icmp ult ptr %957, %72
  br i1 %959, label %960, label %.loopexit

960:                                              ; preds = %956
  %961 = load i64, ptr %958, align 1, !tbaa !24
  %962 = load i64, ptr %957, align 1, !tbaa !24
  %963 = icmp eq i64 %961, %962
  br i1 %963, label %.preheader, label %964

964:                                              ; preds = %960
  %965 = xor i64 %962, %961
  %966 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %965, i1 true)
  %967 = lshr i64 %966, 3
  br label %1021

.preheader:                                       ; preds = %960, %973
  %968 = phi ptr [ %971, %973 ], [ %958, %960 ]
  %969 = phi ptr [ %970, %973 ], [ %957, %960 ]
  %970 = getelementptr inbounds nuw i8, ptr %969, i64 8
  %971 = getelementptr inbounds nuw i8, ptr %968, i64 8
  %972 = icmp ult ptr %970, %72
  br i1 %972, label %973, label %.loopexit

973:                                              ; preds = %.preheader
  %974 = load i64, ptr %971, align 1, !tbaa !24
  %975 = load i64, ptr %970, align 1, !tbaa !24
  %976 = icmp eq i64 %974, %975
  br i1 %976, label %.preheader, label %977

977:                                              ; preds = %973
  %978 = xor i64 %975, %974
  %979 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %978, i1 true)
  %980 = lshr i64 %979, 3
  %981 = getelementptr inbounds nuw i8, ptr %970, i64 %980
  %982 = ptrtoint ptr %981 to i64
  %983 = ptrtoint ptr %957 to i64
  %984 = sub i64 %982, %983
  br label %1021

.loopexit:                                        ; preds = %.preheader, %956
  %985 = phi ptr [ %958, %956 ], [ %971, %.preheader ]
  %986 = phi ptr [ %957, %956 ], [ %970, %.preheader ]
  %987 = icmp ult ptr %986, %73
  br i1 %987, label %988, label %995

988:                                              ; preds = %.loopexit
  %989 = load i32, ptr %985, align 1, !tbaa !25
  %990 = load i32, ptr %986, align 1, !tbaa !25
  %991 = icmp eq i32 %989, %990
  br i1 %991, label %992, label %995

992:                                              ; preds = %988
  %993 = getelementptr inbounds nuw i8, ptr %986, i64 4
  %994 = getelementptr inbounds nuw i8, ptr %985, i64 4
  br label %995

995:                                              ; preds = %992, %988, %.loopexit
  %996 = phi ptr [ %994, %992 ], [ %985, %988 ], [ %985, %.loopexit ]
  %997 = phi ptr [ %993, %992 ], [ %986, %988 ], [ %986, %.loopexit ]
  %998 = icmp ult ptr %997, %74
  br i1 %998, label %999, label %1006

999:                                              ; preds = %995
  %1000 = load i16, ptr %996, align 1, !tbaa !35
  %1001 = load i16, ptr %997, align 1, !tbaa !35
  %1002 = icmp eq i16 %1000, %1001
  br i1 %1002, label %1003, label %1006

1003:                                             ; preds = %999
  %1004 = getelementptr inbounds nuw i8, ptr %997, i64 2
  %1005 = getelementptr inbounds nuw i8, ptr %996, i64 2
  br label %1006

1006:                                             ; preds = %1003, %999, %995
  %1007 = phi ptr [ %1005, %1003 ], [ %996, %999 ], [ %996, %995 ]
  %1008 = phi ptr [ %1004, %1003 ], [ %997, %999 ], [ %997, %995 ]
  %1009 = icmp ult ptr %1008, %42
  br i1 %1009, label %1010, label %1016

1010:                                             ; preds = %1006
  %1011 = load i8, ptr %1007, align 1, !tbaa !37
  %1012 = load i8, ptr %1008, align 1, !tbaa !37
  %1013 = icmp eq i8 %1011, %1012
  %1014 = zext i1 %1013 to i64
  %1015 = getelementptr inbounds nuw i8, ptr %1008, i64 %1014
  br label %1016

1016:                                             ; preds = %1010, %1006
  %1017 = phi ptr [ %1008, %1006 ], [ %1015, %1010 ]
  %1018 = ptrtoint ptr %1017 to i64
  %1019 = ptrtoint ptr %957 to i64
  %1020 = sub i64 %1018, %1019
  br label %1021

1021:                                             ; preds = %1016, %977, %964
  %1022 = phi i64 [ %1020, %1016 ], [ %967, %964 ], [ %984, %977 ]
  %1023 = ptrtoint ptr %945 to i64
  %1024 = sub i64 %1023, %24
  %1025 = trunc i64 %1024 to i32
  %1026 = mul i32 %949, -1640531535
  %1027 = lshr i32 %1026, %71
  %1028 = zext i32 %1027 to i64
  %1029 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %1028
  store i32 %1025, ptr %1029, align 4, !tbaa !25
  %1030 = load i64, ptr %945, align 1, !tbaa !24
  %1031 = mul i64 %1030, -3523014627327384477
  %1032 = lshr i64 %1031, %70
  %1033 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %1032
  store i32 %1025, ptr %1033, align 4, !tbaa !25
  %1034 = icmp ugt ptr %945, %75
  br i1 %1034, label %1039, label %1035

1035:                                             ; preds = %1021
  %1036 = load ptr, ptr %76, align 8, !tbaa !38
  %1037 = load <2 x i64>, ptr %945, align 1, !tbaa !37
  store <2 x i64> %1037, ptr %1036, align 1, !tbaa !37
  %1038 = load ptr, ptr %79, align 8, !tbaa !50
  br label %1039

1039:                                             ; preds = %1035, %1021
  %1040 = phi ptr [ %944, %1021 ], [ %1038, %1035 ]
  %1041 = getelementptr inbounds nuw i8, ptr %1040, i64 4
  store i16 0, ptr %1041, align 4, !tbaa !55
  store i32 1, ptr %1040, align 4, !tbaa !57
  %1042 = add i64 %1022, 1
  %1043 = icmp ugt i64 %1042, 65535
  br i1 %1043, label %1044, label %1051, !prof !58

1044:                                             ; preds = %1039
  store i32 2, ptr %78, align 8, !tbaa !52
  %1045 = load ptr, ptr %1, align 8, !tbaa !53
  %1046 = ptrtoint ptr %1040 to i64
  %1047 = ptrtoint ptr %1045 to i64
  %1048 = sub i64 %1046, %1047
  %1049 = lshr exact i64 %1048, 3
  %1050 = trunc i64 %1049 to i32
  store i32 %1050, ptr %80, align 4, !tbaa !54
  br label %1051

1051:                                             ; preds = %1044, %1039
  %1052 = trunc i64 %1042 to i16
  %1053 = getelementptr inbounds nuw i8, ptr %1040, i64 6
  store i16 %1052, ptr %1053, align 2, !tbaa !65
  %1054 = getelementptr inbounds nuw i8, ptr %1040, i64 8
  store ptr %1054, ptr %79, align 8, !tbaa !50
  %1055 = getelementptr i8, ptr %945, i64 %1022
  %1056 = getelementptr i8, ptr %1055, i64 4
  %1057 = icmp ugt ptr %1056, %43
  br i1 %1057, label %.loopexit516, label %943

.loopexit516:                                     ; preds = %1051, %943, %900
  %1058 = phi i32 [ %906, %900 ], [ %946, %1051 ], [ %947, %943 ]
  %1059 = phi i32 [ %907, %900 ], [ %947, %1051 ], [ %946, %943 ]
  %1060 = phi ptr [ %911, %900 ], [ %1056, %1051 ], [ %945, %943 ]
  %1061 = getelementptr inbounds nuw i8, ptr %1060, i64 1
  %1062 = icmp ugt ptr %1061, %43
  br i1 %1062, label %.loopexit542, label %81

.loopexit542:                                     ; preds = %.loopexit516, %529, %147, %67
  %1063 = phi i32 [ %60, %67 ], [ %85, %147 ], [ %85, %529 ], [ %1058, %.loopexit516 ]
  %1064 = phi i32 [ %62, %67 ], [ 0, %147 ], [ %87, %529 ], [ %1059, %.loopexit516 ]
  %1065 = phi ptr [ %3, %67 ], [ %83, %147 ], [ %83, %529 ], [ %1060, %.loopexit516 ]
  %1066 = select i1 %61, i32 %44, i32 0
  %1067 = select i1 %59, i32 %46, i32 0
  %1068 = icmp ne i32 %1064, 0
  %1069 = select i1 %61, i1 %1068, i1 false
  %1070 = select i1 %1069, i32 %44, i32 %1067
  %1071 = select i1 %1068, i32 %1064, i32 %1066
  store i32 %1071, ptr %2, align 4, !tbaa !25
  %1072 = icmp eq i32 %1063, 0
  %1073 = select i1 %1072, i32 %1070, i32 %1063
  store i32 %1073, ptr %45, align 4, !tbaa !25
  %1074 = ptrtoint ptr %42 to i64
  %1075 = ptrtoint ptr %1065 to i64
  %1076 = sub i64 %1074, %1075
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %4077

1077:                                             ; preds = %5
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %8, ptr noundef nonnull align 1 dereferenceable(10) @__const.ZSTD_compressBlock_doubleFast_noDict_generic.dummy, i64 10, i1 false)
  br i1 %66, label %.loopexit628, label %1078

1078:                                             ; preds = %1077
  %1079 = sub i32 64, %16
  %1080 = zext nneg i32 %1079 to i64
  %1081 = sub i32 64, %20
  %1082 = zext nneg i32 %1081 to i64
  %1083 = getelementptr inbounds i8, ptr %42, i64 -7
  %1084 = getelementptr inbounds i8, ptr %42, i64 -3
  %1085 = getelementptr inbounds i8, ptr %42, i64 -1
  %1086 = getelementptr inbounds i8, ptr %42, i64 -32
  %1087 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %1088 = ptrtoint ptr %1086 to i64
  %1089 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %1090 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %1091 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %1092

1092:                                             ; preds = %.loopexit601, %1078
  %1093 = phi ptr [ %63, %1078 ], [ %2061, %.loopexit601 ]
  %1094 = phi ptr [ %3, %1078 ], [ %2060, %.loopexit601 ]
  %1095 = phi i32 [ %62, %1078 ], [ %2059, %.loopexit601 ]
  %1096 = phi i32 [ %60, %1078 ], [ %2058, %.loopexit601 ]
  %1097 = phi ptr [ %49, %1078 ], [ %2060, %.loopexit601 ]
  %1098 = freeze i32 %1095
  %1099 = getelementptr inbounds nuw i8, ptr %1097, i64 256
  %1100 = load i64, ptr %1097, align 1, !tbaa !24
  %1101 = mul i64 %1100, -3523014627327384477
  %1102 = lshr i64 %1101, %1080
  %1103 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %1102
  %1104 = load i32, ptr %1103, align 4, !tbaa !25
  %1105 = zext i32 %1104 to i64
  %1106 = getelementptr inbounds nuw i8, ptr %22, i64 %1105
  %1107 = icmp eq i32 %1098, 0
  %1108 = zext i32 %1098 to i64
  %1109 = sub nsw i64 0, %1108
  br i1 %1107, label %.preheader625, label %.preheader637

.preheader625:                                    ; preds = %1092, %1154
  %1110 = phi i64 [ %1126, %1154 ], [ %1100, %1092 ]
  %1111 = phi i32 [ %1138, %1154 ], [ %1104, %1092 ]
  %1112 = phi ptr [ %1140, %1154 ], [ %1106, %1092 ]
  %1113 = phi i64 [ %1128, %1154 ], [ %1102, %1092 ]
  %1114 = phi ptr [ %1115, %1154 ], [ %1097, %1092 ]
  %1115 = phi ptr [ %1157, %1154 ], [ %1093, %1092 ]
  %1116 = phi i64 [ %1155, %1154 ], [ 1, %1092 ]
  %1117 = phi ptr [ %1156, %1154 ], [ %1099, %1092 ]
  %1118 = mul i64 %1110, -3523014627271114752
  %1119 = lshr i64 %1118, %1082
  %1120 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %1119
  %1121 = load i32, ptr %1120, align 4, !tbaa !25
  %1122 = ptrtoint ptr %1114 to i64
  %1123 = sub i64 %1122, %24
  %1124 = trunc i64 %1123 to i32
  store i32 %1124, ptr %1120, align 4, !tbaa !25
  %1125 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %1113
  store i32 %1124, ptr %1125, align 4, !tbaa !25
  %1126 = load i64, ptr %1115, align 1, !tbaa !24
  %1127 = mul i64 %1126, -3523014627327384477
  %1128 = lshr i64 %1127, %1080
  %1129 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1111, i32 %39, ptr nonnull readnone %8, ptr readnone %1112) #9, !srcloc !33
  %1130 = load i64, ptr %1129, align 1, !tbaa !24
  %1131 = icmp eq i64 %1130, %1110
  %1132 = icmp eq ptr %1129, %1112
  %1133 = select i1 %1131, i1 %1132, i1 false
  br i1 %1133, label %.loopexit626, label %1134

1134:                                             ; preds = %.preheader625
  %1135 = zext i32 %1121 to i64
  %1136 = getelementptr inbounds nuw i8, ptr %22, i64 %1135
  %1137 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %1128
  %1138 = load i32, ptr %1137, align 4, !tbaa !25
  %1139 = zext i32 %1138 to i64
  %1140 = getelementptr inbounds nuw i8, ptr %22, i64 %1139
  %1141 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1121, i32 %39, ptr nonnull readnone %8, ptr readnone %1136) #9, !srcloc !33
  %1142 = load i32, ptr %1141, align 1, !tbaa !25
  %1143 = load i32, ptr %1114, align 1, !tbaa !25
  %1144 = icmp eq i32 %1142, %1143
  %1145 = icmp eq ptr %1141, %1136
  %1146 = select i1 %1144, i1 %1145, i1 false
  br i1 %1146, label %.loopexit627, label %1147

1147:                                             ; preds = %1134
  %1148 = icmp ult ptr %1115, %1117
  br i1 %1148, label %1154, label %1149

1149:                                             ; preds = %1147
  %1150 = getelementptr inbounds nuw i8, ptr %1115, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %1150, i32 0, i32 3, i32 1)
  %1151 = getelementptr inbounds nuw i8, ptr %1115, i64 128
  call void @llvm.prefetch.p0(ptr nonnull %1151, i32 0, i32 3, i32 1)
  %1152 = add i64 %1116, 1
  %1153 = getelementptr inbounds nuw i8, ptr %1117, i64 256
  br label %1154

1154:                                             ; preds = %1149, %1147
  %1155 = phi i64 [ %1152, %1149 ], [ %1116, %1147 ]
  %1156 = phi ptr [ %1153, %1149 ], [ %1117, %1147 ]
  %1157 = getelementptr inbounds nuw i8, ptr %1115, i64 %1155
  %1158 = icmp ugt ptr %1157, %43
  br i1 %1158, label %.loopexit628, label %.preheader625, !llvm.loop !34

.preheader637:                                    ; preds = %1092, %1533
  %1159 = phi i64 [ %1415, %1533 ], [ %1100, %1092 ]
  %1160 = phi i32 [ %1517, %1533 ], [ %1104, %1092 ]
  %1161 = phi ptr [ %1519, %1533 ], [ %1106, %1092 ]
  %1162 = phi i64 [ %1417, %1533 ], [ %1102, %1092 ]
  %1163 = phi ptr [ %1164, %1533 ], [ %1097, %1092 ]
  %1164 = phi ptr [ %1536, %1533 ], [ %1093, %1092 ]
  %1165 = phi i64 [ %1534, %1533 ], [ 1, %1092 ]
  %1166 = phi ptr [ %1535, %1533 ], [ %1099, %1092 ]
  %1167 = mul i64 %1159, -3523014627271114752
  %1168 = lshr i64 %1167, %1082
  %1169 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %1168
  %1170 = load i32, ptr %1169, align 4, !tbaa !25
  %1171 = ptrtoint ptr %1163 to i64
  %1172 = sub i64 %1171, %24
  %1173 = trunc i64 %1172 to i32
  %1174 = zext i32 %1170 to i64
  %1175 = getelementptr inbounds nuw i8, ptr %22, i64 %1174
  store i32 %1173, ptr %1169, align 4, !tbaa !25
  %1176 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %1162
  store i32 %1173, ptr %1176, align 4, !tbaa !25
  %1177 = getelementptr inbounds nuw i8, ptr %1163, i64 1
  %1178 = getelementptr inbounds i8, ptr %1177, i64 %1109
  %1179 = load i32, ptr %1178, align 1, !tbaa !25
  %1180 = load i32, ptr %1177, align 1, !tbaa !25
  %1181 = icmp eq i32 %1179, %1180
  br i1 %1181, label %1182, label %1414

1182:                                             ; preds = %.preheader637
  %1183 = getelementptr inbounds nuw i8, ptr %1163, i64 5
  %1184 = getelementptr inbounds i8, ptr %1183, i64 %1109
  %1185 = icmp ult ptr %1183, %1083
  br i1 %1185, label %1186, label %.loopexit636

1186:                                             ; preds = %1182
  %1187 = load i64, ptr %1184, align 1, !tbaa !24
  %1188 = load i64, ptr %1183, align 1, !tbaa !24
  %1189 = icmp eq i64 %1187, %1188
  br i1 %1189, label %.preheader635, label %1190

1190:                                             ; preds = %1186
  %1191 = xor i64 %1188, %1187
  %1192 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1191, i1 true)
  %1193 = lshr i64 %1192, 3
  br label %1247

.preheader635:                                    ; preds = %1186, %1199
  %1194 = phi ptr [ %1197, %1199 ], [ %1184, %1186 ]
  %1195 = phi ptr [ %1196, %1199 ], [ %1183, %1186 ]
  %1196 = getelementptr inbounds nuw i8, ptr %1195, i64 8
  %1197 = getelementptr inbounds nuw i8, ptr %1194, i64 8
  %1198 = icmp ult ptr %1196, %1083
  br i1 %1198, label %1199, label %.loopexit636

1199:                                             ; preds = %.preheader635
  %1200 = load i64, ptr %1197, align 1, !tbaa !24
  %1201 = load i64, ptr %1196, align 1, !tbaa !24
  %1202 = icmp eq i64 %1200, %1201
  br i1 %1202, label %.preheader635, label %1203

1203:                                             ; preds = %1199
  %1204 = xor i64 %1201, %1200
  %1205 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1204, i1 true)
  %1206 = lshr i64 %1205, 3
  %1207 = getelementptr inbounds nuw i8, ptr %1196, i64 %1206
  %1208 = ptrtoint ptr %1207 to i64
  %1209 = ptrtoint ptr %1183 to i64
  %1210 = sub i64 %1208, %1209
  br label %1247

.loopexit636:                                     ; preds = %.preheader635, %1182
  %1211 = phi ptr [ %1184, %1182 ], [ %1197, %.preheader635 ]
  %1212 = phi ptr [ %1183, %1182 ], [ %1196, %.preheader635 ]
  %1213 = icmp ult ptr %1212, %1084
  br i1 %1213, label %1214, label %1221

1214:                                             ; preds = %.loopexit636
  %1215 = load i32, ptr %1211, align 1, !tbaa !25
  %1216 = load i32, ptr %1212, align 1, !tbaa !25
  %1217 = icmp eq i32 %1215, %1216
  br i1 %1217, label %1218, label %1221

1218:                                             ; preds = %1214
  %1219 = getelementptr inbounds nuw i8, ptr %1212, i64 4
  %1220 = getelementptr inbounds nuw i8, ptr %1211, i64 4
  br label %1221

1221:                                             ; preds = %1218, %1214, %.loopexit636
  %1222 = phi ptr [ %1220, %1218 ], [ %1211, %1214 ], [ %1211, %.loopexit636 ]
  %1223 = phi ptr [ %1219, %1218 ], [ %1212, %1214 ], [ %1212, %.loopexit636 ]
  %1224 = icmp ult ptr %1223, %1085
  br i1 %1224, label %1225, label %1232

1225:                                             ; preds = %1221
  %1226 = load i16, ptr %1222, align 1, !tbaa !35
  %1227 = load i16, ptr %1223, align 1, !tbaa !35
  %1228 = icmp eq i16 %1226, %1227
  br i1 %1228, label %1229, label %1232

1229:                                             ; preds = %1225
  %1230 = getelementptr inbounds nuw i8, ptr %1223, i64 2
  %1231 = getelementptr inbounds nuw i8, ptr %1222, i64 2
  br label %1232

1232:                                             ; preds = %1229, %1225, %1221
  %1233 = phi ptr [ %1231, %1229 ], [ %1222, %1225 ], [ %1222, %1221 ]
  %1234 = phi ptr [ %1230, %1229 ], [ %1223, %1225 ], [ %1223, %1221 ]
  %1235 = icmp ult ptr %1234, %42
  br i1 %1235, label %1236, label %1242

1236:                                             ; preds = %1232
  %1237 = load i8, ptr %1233, align 1, !tbaa !37
  %1238 = load i8, ptr %1234, align 1, !tbaa !37
  %1239 = icmp eq i8 %1237, %1238
  %1240 = zext i1 %1239 to i64
  %1241 = getelementptr inbounds nuw i8, ptr %1234, i64 %1240
  br label %1242

1242:                                             ; preds = %1236, %1232
  %1243 = phi ptr [ %1234, %1232 ], [ %1241, %1236 ]
  %1244 = ptrtoint ptr %1243 to i64
  %1245 = ptrtoint ptr %1183 to i64
  %1246 = sub i64 %1244, %1245
  br label %1247

1247:                                             ; preds = %1242, %1203, %1190
  %1248 = phi i64 [ %1246, %1242 ], [ %1193, %1190 ], [ %1210, %1203 ]
  %1249 = add i64 %1248, 4
  %1250 = ptrtoint ptr %1177 to i64
  %1251 = ptrtoint ptr %1094 to i64
  %1252 = sub i64 %1250, %1251
  %1253 = icmp ugt ptr %1177, %1086
  %1254 = load ptr, ptr %1087, align 8, !tbaa !38
  br i1 %1253, label %1277, label %1255

1255:                                             ; preds = %1247
  %1256 = load <2 x i64>, ptr %1094, align 1, !tbaa !37
  store <2 x i64> %1256, ptr %1254, align 1, !tbaa !37
  %1257 = icmp ugt i64 %1252, 16
  br i1 %1257, label %1258, label %1393

1258:                                             ; preds = %1255
  %1259 = load ptr, ptr %1087, align 8, !tbaa !38
  %1260 = getelementptr inbounds nuw i8, ptr %1259, i64 16
  %1261 = getelementptr inbounds nuw i8, ptr %1094, i64 16
  %1262 = getelementptr i8, ptr %1259, i64 %1252
  %1263 = load <2 x i64>, ptr %1261, align 1, !tbaa !37
  store <2 x i64> %1263, ptr %1260, align 1, !tbaa !37
  %1264 = icmp ult i64 %1252, 33
  br i1 %1264, label %1393, label %1265

1265:                                             ; preds = %1258
  %1266 = getelementptr inbounds nuw i8, ptr %1259, i64 32
  br label %1267

1267:                                             ; preds = %1267, %1265
  %1268 = phi ptr [ %1266, %1265 ], [ %1275, %1267 ]
  %1269 = phi ptr [ %1261, %1265 ], [ %1273, %1267 ]
  %1270 = getelementptr inbounds nuw i8, ptr %1269, i64 16
  %1271 = load <2 x i64>, ptr %1270, align 1, !tbaa !37
  store <2 x i64> %1271, ptr %1268, align 1, !tbaa !37
  %1272 = getelementptr inbounds nuw i8, ptr %1268, i64 16
  %1273 = getelementptr inbounds nuw i8, ptr %1269, i64 32
  %1274 = load <2 x i64>, ptr %1273, align 1, !tbaa !37
  store <2 x i64> %1274, ptr %1272, align 1, !tbaa !37
  %1275 = getelementptr inbounds nuw i8, ptr %1268, i64 32
  %1276 = icmp ult ptr %1275, %1262
  br i1 %1276, label %1267, label %.loopexit630, !llvm.loop !41

1277:                                             ; preds = %1247
  %1278 = icmp ugt ptr %1094, %1086
  br i1 %1278, label %.loopexit633, label %1279

1279:                                             ; preds = %1277
  %1280 = sub i64 %1088, %1251
  %1281 = getelementptr inbounds i8, ptr %1254, i64 %1280
  %1282 = load <2 x i64>, ptr %1094, align 1, !tbaa !37
  store <2 x i64> %1282, ptr %1254, align 1, !tbaa !37
  %1283 = icmp ult i64 %1280, 17
  br i1 %1283, label %.loopexit633, label %1284

1284:                                             ; preds = %1279
  %1285 = getelementptr inbounds nuw i8, ptr %1254, i64 16
  br label %1286

1286:                                             ; preds = %1286, %1284
  %1287 = phi ptr [ %1285, %1284 ], [ %1294, %1286 ]
  %1288 = phi ptr [ %1094, %1284 ], [ %1292, %1286 ]
  %1289 = getelementptr inbounds nuw i8, ptr %1288, i64 16
  %1290 = load <2 x i64>, ptr %1289, align 1, !tbaa !37
  store <2 x i64> %1290, ptr %1287, align 1, !tbaa !37
  %1291 = getelementptr inbounds nuw i8, ptr %1287, i64 16
  %1292 = getelementptr inbounds nuw i8, ptr %1288, i64 32
  %1293 = load <2 x i64>, ptr %1292, align 1, !tbaa !37
  store <2 x i64> %1293, ptr %1291, align 1, !tbaa !37
  %1294 = getelementptr inbounds nuw i8, ptr %1287, i64 32
  %1295 = icmp ult ptr %1294, %1281
  br i1 %1295, label %1286, label %.loopexit633, !llvm.loop !41

.loopexit633:                                     ; preds = %1286, %1279, %1277
  %1296 = phi ptr [ %1086, %1279 ], [ %1094, %1277 ], [ %1086, %1286 ]
  %1297 = phi ptr [ %1281, %1279 ], [ %1254, %1277 ], [ %1281, %1286 ]
  %1298 = icmp ult ptr %1296, %1177
  br i1 %1298, label %1299, label %.loopexit630

1299:                                             ; preds = %.loopexit633
  %1300 = ptrtoint ptr %1296 to i64
  %1301 = ptrtoint ptr %1297 to i64
  %1302 = sub i64 %1171, %1300
  %1303 = add i64 %1302, 1
  %1304 = icmp ult i64 %1303, 4
  %1305 = sub i64 %1301, %1300
  %1306 = icmp ult i64 %1305, 32
  %1307 = select i1 %1304, i1 true, i1 %1306
  br i1 %1307, label %1343, label %1308

1308:                                             ; preds = %1299
  %1309 = icmp ult i64 %1303, 32
  br i1 %1309, label %1329, label %1310

1310:                                             ; preds = %1308
  %1311 = and i64 %1303, -32
  br label %1312

1312:                                             ; preds = %1312, %1310
  %1313 = phi i64 [ 0, %1310 ], [ %1320, %1312 ]
  %1314 = getelementptr i8, ptr %1297, i64 %1313
  %1315 = getelementptr i8, ptr %1296, i64 %1313
  %1316 = getelementptr i8, ptr %1315, i64 16
  %1317 = load <16 x i8>, ptr %1315, align 1, !tbaa !37
  %1318 = load <16 x i8>, ptr %1316, align 1, !tbaa !37
  %1319 = getelementptr i8, ptr %1314, i64 16
  store <16 x i8> %1317, ptr %1314, align 1, !tbaa !37
  store <16 x i8> %1318, ptr %1319, align 1, !tbaa !37
  %1320 = add nuw i64 %1313, 32
  %1321 = icmp eq i64 %1320, %1311
  br i1 %1321, label %1322, label %1312, !llvm.loop !66

1322:                                             ; preds = %1312
  %1323 = icmp eq i64 %1303, %1311
  br i1 %1323, label %.loopexit630, label %1324

1324:                                             ; preds = %1322
  %1325 = getelementptr i8, ptr %1297, i64 %1311
  %1326 = getelementptr i8, ptr %1296, i64 %1311
  %1327 = and i64 %1303, 28
  %1328 = icmp eq i64 %1327, 0
  br i1 %1328, label %1343, label %1329

1329:                                             ; preds = %1324, %1308
  %1330 = phi i64 [ %1311, %1324 ], [ 0, %1308 ]
  %1331 = and i64 %1303, -4
  br label %1332

1332:                                             ; preds = %1332, %1329
  %1333 = phi i64 [ %1330, %1329 ], [ %1337, %1332 ]
  %1334 = getelementptr i8, ptr %1297, i64 %1333
  %1335 = getelementptr i8, ptr %1296, i64 %1333
  %1336 = load <4 x i8>, ptr %1335, align 1, !tbaa !37
  store <4 x i8> %1336, ptr %1334, align 1, !tbaa !37
  %1337 = add nuw i64 %1333, 4
  %1338 = icmp eq i64 %1337, %1331
  br i1 %1338, label %1339, label %1332, !llvm.loop !67

1339:                                             ; preds = %1332
  %1340 = getelementptr i8, ptr %1297, i64 %1331
  %1341 = getelementptr i8, ptr %1296, i64 %1331
  %1342 = icmp eq i64 %1303, %1331
  br i1 %1342, label %.loopexit630, label %1343

1343:                                             ; preds = %1339, %1324, %1299
  %1344 = phi ptr [ %1297, %1299 ], [ %1325, %1324 ], [ %1340, %1339 ]
  %1345 = phi ptr [ %1296, %1299 ], [ %1326, %1324 ], [ %1341, %1339 ]
  %1346 = ptrtoint ptr %1345 to i64
  %1347 = sub i64 %1171, %1346
  %1348 = add i64 %1347, 1
  %1349 = and i64 %1348, 7
  %1350 = and i64 %1347, 7
  %1351 = icmp eq i64 %1350, 7
  br i1 %1351, label %.preheader629.preheader, label %.preheader631.preheader

.preheader631.preheader:                          ; preds = %1343
  %1352 = ptrtoaddr ptr %1344 to i64
  %min.iters.check3281 = icmp samesign ult i64 %1349, 4
  %1353 = sub i64 %1352, %1346
  %diff.check3279 = icmp ult i64 %1353, 4
  %or.cond3332 = select i1 %min.iters.check3281, i1 true, i1 %diff.check3279
  br i1 %or.cond3332, label %.preheader631.preheader3620, label %vector.ph3282

vector.ph3282:                                    ; preds = %.preheader631.preheader
  %n.vec3284 = and i64 %1348, 4
  %1354 = getelementptr i8, ptr %1344, i64 %n.vec3284
  %1355 = getelementptr i8, ptr %1345, i64 %n.vec3284
  br label %vector.body3285

vector.body3285:                                  ; preds = %vector.body3285, %vector.ph3282
  %index3286 = phi i64 [ 0, %vector.ph3282 ], [ %index.next3290, %vector.body3285 ]
  %next.gep3287 = getelementptr i8, ptr %1344, i64 %index3286
  %next.gep3288 = getelementptr i8, ptr %1345, i64 %index3286
  %wide.load3289 = load <4 x i8>, ptr %next.gep3288, align 1, !tbaa !37
  store <4 x i8> %wide.load3289, ptr %next.gep3287, align 1, !tbaa !37
  %index.next3290 = add nuw i64 %index3286, 4
  %1356 = icmp eq i64 %index.next3290, %n.vec3284
  br i1 %1356, label %middle.block3291, label %vector.body3285, !llvm.loop !68

middle.block3291:                                 ; preds = %vector.body3285
  %cmp.n3292 = icmp eq i64 %1349, %n.vec3284
  br i1 %cmp.n3292, label %.loopexit632, label %.preheader631.preheader3620

.preheader631.preheader3620:                      ; preds = %.preheader631.preheader, %middle.block3291
  %.ph3621 = phi ptr [ %1344, %.preheader631.preheader ], [ %1354, %middle.block3291 ]
  %.ph3622 = phi ptr [ %1345, %.preheader631.preheader ], [ %1355, %middle.block3291 ]
  %.ph3623 = phi i64 [ 0, %.preheader631.preheader ], [ %n.vec3284, %middle.block3291 ]
  br label %.preheader631

.preheader631:                                    ; preds = %.preheader631.preheader3620, %.preheader631
  %1357 = phi ptr [ %1362, %.preheader631 ], [ %.ph3621, %.preheader631.preheader3620 ]
  %1358 = phi ptr [ %1360, %.preheader631 ], [ %.ph3622, %.preheader631.preheader3620 ]
  %1359 = phi i64 [ %1363, %.preheader631 ], [ %.ph3623, %.preheader631.preheader3620 ]
  %1360 = getelementptr inbounds nuw i8, ptr %1358, i64 1
  %1361 = load i8, ptr %1358, align 1, !tbaa !37
  %1362 = getelementptr inbounds nuw i8, ptr %1357, i64 1
  store i8 %1361, ptr %1357, align 1, !tbaa !37
  %1363 = add i64 %1359, 1
  %1364 = icmp eq i64 %1363, %1349
  br i1 %1364, label %.loopexit632, label %.preheader631, !llvm.loop !69

.loopexit632:                                     ; preds = %.preheader631, %middle.block3291
  %.lcssa3088 = phi ptr [ %1355, %middle.block3291 ], [ %1360, %.preheader631 ]
  %.lcssa3087 = phi ptr [ %1354, %middle.block3291 ], [ %1362, %.preheader631 ]
  %1365 = icmp ult i64 %1347, 7
  br i1 %1365, label %.loopexit630, label %.preheader629.preheader

.preheader629.preheader:                          ; preds = %1343, %.loopexit632
  %.ph3618 = phi ptr [ %1344, %1343 ], [ %.lcssa3087, %.loopexit632 ]
  %.ph3619 = phi ptr [ %1345, %1343 ], [ %.lcssa3088, %.loopexit632 ]
  br label %.preheader629

.preheader629:                                    ; preds = %.preheader629.preheader, %.preheader629
  %1366 = phi ptr [ %1391, %.preheader629 ], [ %.ph3618, %.preheader629.preheader ]
  %1367 = phi ptr [ %1389, %.preheader629 ], [ %.ph3619, %.preheader629.preheader ]
  %1368 = getelementptr inbounds nuw i8, ptr %1367, i64 1
  %1369 = load i8, ptr %1367, align 1, !tbaa !37
  %1370 = getelementptr inbounds nuw i8, ptr %1366, i64 1
  store i8 %1369, ptr %1366, align 1, !tbaa !37
  %1371 = getelementptr inbounds nuw i8, ptr %1367, i64 2
  %1372 = load i8, ptr %1368, align 1, !tbaa !37
  %1373 = getelementptr inbounds nuw i8, ptr %1366, i64 2
  store i8 %1372, ptr %1370, align 1, !tbaa !37
  %1374 = getelementptr inbounds nuw i8, ptr %1367, i64 3
  %1375 = load i8, ptr %1371, align 1, !tbaa !37
  %1376 = getelementptr inbounds nuw i8, ptr %1366, i64 3
  store i8 %1375, ptr %1373, align 1, !tbaa !37
  %1377 = getelementptr inbounds nuw i8, ptr %1367, i64 4
  %1378 = load i8, ptr %1374, align 1, !tbaa !37
  %1379 = getelementptr inbounds nuw i8, ptr %1366, i64 4
  store i8 %1378, ptr %1376, align 1, !tbaa !37
  %1380 = getelementptr inbounds nuw i8, ptr %1367, i64 5
  %1381 = load i8, ptr %1377, align 1, !tbaa !37
  %1382 = getelementptr inbounds nuw i8, ptr %1366, i64 5
  store i8 %1381, ptr %1379, align 1, !tbaa !37
  %1383 = getelementptr inbounds nuw i8, ptr %1367, i64 6
  %1384 = load i8, ptr %1380, align 1, !tbaa !37
  %1385 = getelementptr inbounds nuw i8, ptr %1366, i64 6
  store i8 %1384, ptr %1382, align 1, !tbaa !37
  %1386 = getelementptr inbounds nuw i8, ptr %1367, i64 7
  %1387 = load i8, ptr %1383, align 1, !tbaa !37
  %1388 = getelementptr inbounds nuw i8, ptr %1366, i64 7
  store i8 %1387, ptr %1385, align 1, !tbaa !37
  %1389 = getelementptr inbounds nuw i8, ptr %1367, i64 8
  %1390 = load i8, ptr %1386, align 1, !tbaa !37
  %1391 = getelementptr inbounds nuw i8, ptr %1366, i64 8
  store i8 %1390, ptr %1388, align 1, !tbaa !37
  %1392 = icmp eq ptr %1386, %1163
  br i1 %1392, label %.loopexit630, label %.preheader629, !llvm.loop !70

1393:                                             ; preds = %1258, %1255
  %1394 = load ptr, ptr %1087, align 8, !tbaa !38
  %1395 = getelementptr inbounds nuw i8, ptr %1394, i64 %1252
  store ptr %1395, ptr %1087, align 8, !tbaa !38
  %1396 = load ptr, ptr %1090, align 8, !tbaa !50
  br label %1408

.loopexit630:                                     ; preds = %1267, %.preheader629, %.loopexit632, %1339, %1322, %.loopexit633
  %1397 = load ptr, ptr %1087, align 8, !tbaa !38
  %1398 = getelementptr inbounds nuw i8, ptr %1397, i64 %1252
  store ptr %1398, ptr %1087, align 8, !tbaa !38
  %1399 = icmp ugt i64 %1252, 65535
  %1400 = load ptr, ptr %1090, align 8, !tbaa !50
  br i1 %1399, label %1401, label %1408, !prof !51

1401:                                             ; preds = %.loopexit630
  store i32 1, ptr %1089, align 8, !tbaa !52
  %1402 = load ptr, ptr %1, align 8, !tbaa !53
  %1403 = ptrtoint ptr %1400 to i64
  %1404 = ptrtoint ptr %1402 to i64
  %1405 = sub i64 %1403, %1404
  %1406 = lshr exact i64 %1405, 3
  %1407 = trunc i64 %1406 to i32
  store i32 %1407, ptr %1091, align 4, !tbaa !54
  br label %1408

1408:                                             ; preds = %1401, %.loopexit630, %1393
  %1409 = phi ptr [ %1396, %1393 ], [ %1400, %1401 ], [ %1400, %.loopexit630 ]
  %1410 = trunc i64 %1252 to i16
  %1411 = getelementptr inbounds nuw i8, ptr %1409, i64 4
  store i16 %1410, ptr %1411, align 4, !tbaa !55
  store i32 1, ptr %1409, align 4, !tbaa !57
  %1412 = add i64 %1248, 1
  %1413 = icmp ugt i64 %1412, 65535
  br i1 %1413, label %1890, label %1904, !prof !58

1414:                                             ; preds = %.preheader637
  %1415 = load i64, ptr %1164, align 1, !tbaa !24
  %1416 = mul i64 %1415, -3523014627327384477
  %1417 = lshr i64 %1416, %1080
  %1418 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1160, i32 %39, ptr nonnull readnone %8, ptr readnone %1161) #9, !srcloc !33
  %1419 = load i64, ptr %1418, align 1, !tbaa !24
  %1420 = icmp eq i64 %1419, %1159
  %1421 = icmp eq ptr %1418, %1161
  %1422 = select i1 %1420, i1 %1421, i1 false
  br i1 %1422, label %.loopexit626, label %1515

.loopexit626:                                     ; preds = %1414, %.preheader625
  %1423 = phi i64 [ %1128, %.preheader625 ], [ %1417, %1414 ]
  %1424 = phi ptr [ %1112, %.preheader625 ], [ %1161, %1414 ]
  %1425 = phi ptr [ %1114, %.preheader625 ], [ %1163, %1414 ]
  %1426 = phi ptr [ %1115, %.preheader625 ], [ %1164, %1414 ]
  %1427 = phi i64 [ %1116, %.preheader625 ], [ %1165, %1414 ]
  %1428 = phi i64 [ %1122, %.preheader625 ], [ %1171, %1414 ]
  %1429 = phi i32 [ %1124, %.preheader625 ], [ %1173, %1414 ]
  %1430 = getelementptr inbounds nuw i8, ptr %1425, i64 8
  %1431 = getelementptr inbounds nuw i8, ptr %1424, i64 8
  %1432 = icmp ult ptr %1430, %1083
  br i1 %1432, label %1433, label %.loopexit616

1433:                                             ; preds = %.loopexit626
  %1434 = load i64, ptr %1431, align 1, !tbaa !24
  %1435 = load i64, ptr %1430, align 1, !tbaa !24
  %1436 = icmp eq i64 %1434, %1435
  br i1 %1436, label %.preheader615, label %1437

1437:                                             ; preds = %1433
  %1438 = xor i64 %1435, %1434
  %1439 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1438, i1 true)
  %1440 = lshr i64 %1439, 3
  br label %1494

.preheader615:                                    ; preds = %1433, %1446
  %1441 = phi ptr [ %1444, %1446 ], [ %1431, %1433 ]
  %1442 = phi ptr [ %1443, %1446 ], [ %1430, %1433 ]
  %1443 = getelementptr inbounds nuw i8, ptr %1442, i64 8
  %1444 = getelementptr inbounds nuw i8, ptr %1441, i64 8
  %1445 = icmp ult ptr %1443, %1083
  br i1 %1445, label %1446, label %.loopexit616

1446:                                             ; preds = %.preheader615
  %1447 = load i64, ptr %1444, align 1, !tbaa !24
  %1448 = load i64, ptr %1443, align 1, !tbaa !24
  %1449 = icmp eq i64 %1447, %1448
  br i1 %1449, label %.preheader615, label %1450

1450:                                             ; preds = %1446
  %1451 = xor i64 %1448, %1447
  %1452 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1451, i1 true)
  %1453 = lshr i64 %1452, 3
  %1454 = getelementptr inbounds nuw i8, ptr %1443, i64 %1453
  %1455 = ptrtoint ptr %1454 to i64
  %1456 = ptrtoint ptr %1430 to i64
  %1457 = sub i64 %1455, %1456
  br label %1494

.loopexit616:                                     ; preds = %.preheader615, %.loopexit626
  %1458 = phi ptr [ %1431, %.loopexit626 ], [ %1444, %.preheader615 ]
  %1459 = phi ptr [ %1430, %.loopexit626 ], [ %1443, %.preheader615 ]
  %1460 = icmp ult ptr %1459, %1084
  br i1 %1460, label %1461, label %1468

1461:                                             ; preds = %.loopexit616
  %1462 = load i32, ptr %1458, align 1, !tbaa !25
  %1463 = load i32, ptr %1459, align 1, !tbaa !25
  %1464 = icmp eq i32 %1462, %1463
  br i1 %1464, label %1465, label %1468

1465:                                             ; preds = %1461
  %1466 = getelementptr inbounds nuw i8, ptr %1459, i64 4
  %1467 = getelementptr inbounds nuw i8, ptr %1458, i64 4
  br label %1468

1468:                                             ; preds = %1465, %1461, %.loopexit616
  %1469 = phi ptr [ %1467, %1465 ], [ %1458, %1461 ], [ %1458, %.loopexit616 ]
  %1470 = phi ptr [ %1466, %1465 ], [ %1459, %1461 ], [ %1459, %.loopexit616 ]
  %1471 = icmp ult ptr %1470, %1085
  br i1 %1471, label %1472, label %1479

1472:                                             ; preds = %1468
  %1473 = load i16, ptr %1469, align 1, !tbaa !35
  %1474 = load i16, ptr %1470, align 1, !tbaa !35
  %1475 = icmp eq i16 %1473, %1474
  br i1 %1475, label %1476, label %1479

1476:                                             ; preds = %1472
  %1477 = getelementptr inbounds nuw i8, ptr %1470, i64 2
  %1478 = getelementptr inbounds nuw i8, ptr %1469, i64 2
  br label %1479

1479:                                             ; preds = %1476, %1472, %1468
  %1480 = phi ptr [ %1478, %1476 ], [ %1469, %1472 ], [ %1469, %1468 ]
  %1481 = phi ptr [ %1477, %1476 ], [ %1470, %1472 ], [ %1470, %1468 ]
  %1482 = icmp ult ptr %1481, %42
  br i1 %1482, label %1483, label %1489

1483:                                             ; preds = %1479
  %1484 = load i8, ptr %1480, align 1, !tbaa !37
  %1485 = load i8, ptr %1481, align 1, !tbaa !37
  %1486 = icmp eq i8 %1484, %1485
  %1487 = zext i1 %1486 to i64
  %1488 = getelementptr inbounds nuw i8, ptr %1481, i64 %1487
  br label %1489

1489:                                             ; preds = %1483, %1479
  %1490 = phi ptr [ %1481, %1479 ], [ %1488, %1483 ]
  %1491 = ptrtoint ptr %1490 to i64
  %1492 = ptrtoint ptr %1430 to i64
  %1493 = sub i64 %1491, %1492
  br label %1494

1494:                                             ; preds = %1489, %1450, %1437
  %1495 = phi i64 [ %1493, %1489 ], [ %1440, %1437 ], [ %1457, %1450 ]
  %1496 = add i64 %1495, 8
  %1497 = ptrtoint ptr %1424 to i64
  %1498 = sub i64 %1428, %1497
  %1499 = icmp ugt ptr %1425, %1094
  %1500 = icmp ugt ptr %1424, %41
  %1501 = and i1 %1500, %1499
  br i1 %1501, label %.preheader611, label %.loopexit612

.preheader611:                                    ; preds = %1494, %1510
  %1502 = phi i64 [ %1511, %1510 ], [ %1496, %1494 ]
  %1503 = phi ptr [ %1505, %1510 ], [ %1425, %1494 ]
  %1504 = phi ptr [ %1507, %1510 ], [ %1424, %1494 ]
  %1505 = getelementptr inbounds i8, ptr %1503, i64 -1
  %1506 = load i8, ptr %1505, align 1, !tbaa !37
  %1507 = getelementptr inbounds i8, ptr %1504, i64 -1
  %1508 = load i8, ptr %1507, align 1, !tbaa !37
  %1509 = icmp eq i8 %1506, %1508
  br i1 %1509, label %1510, label %.loopexit612

1510:                                             ; preds = %.preheader611
  %1511 = add i64 %1502, 1
  %1512 = icmp ugt ptr %1505, %1094
  %1513 = icmp ugt ptr %1507, %41
  %1514 = and i1 %1512, %1513
  br i1 %1514, label %.preheader611, label %.loopexit612, !llvm.loop !59

1515:                                             ; preds = %1414
  %1516 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %1417
  %1517 = load i32, ptr %1516, align 4, !tbaa !25
  %1518 = zext i32 %1517 to i64
  %1519 = getelementptr inbounds nuw i8, ptr %22, i64 %1518
  %1520 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1170, i32 %39, ptr nonnull readnone %8, ptr readnone %1175) #9, !srcloc !33
  %1521 = load i32, ptr %1520, align 1, !tbaa !25
  %1522 = load i32, ptr %1163, align 1, !tbaa !25
  %1523 = icmp eq i32 %1521, %1522
  %1524 = icmp eq ptr %1520, %1175
  %1525 = select i1 %1523, i1 %1524, i1 false
  br i1 %1525, label %.loopexit627, label %1526

1526:                                             ; preds = %1515
  %1527 = icmp ult ptr %1164, %1166
  br i1 %1527, label %1533, label %1528

1528:                                             ; preds = %1526
  %1529 = getelementptr inbounds nuw i8, ptr %1164, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %1529, i32 0, i32 3, i32 1)
  %1530 = getelementptr inbounds nuw i8, ptr %1164, i64 128
  call void @llvm.prefetch.p0(ptr nonnull %1530, i32 0, i32 3, i32 1)
  %1531 = add i64 %1165, 1
  %1532 = getelementptr inbounds nuw i8, ptr %1166, i64 256
  br label %1533

1533:                                             ; preds = %1528, %1526
  %1534 = phi i64 [ %1531, %1528 ], [ %1165, %1526 ]
  %1535 = phi ptr [ %1532, %1528 ], [ %1166, %1526 ]
  %1536 = getelementptr inbounds nuw i8, ptr %1164, i64 %1534
  %1537 = icmp ugt ptr %1536, %43
  br i1 %1537, label %.loopexit628, label %.preheader637, !llvm.loop !34

.loopexit627:                                     ; preds = %1515, %1134
  %1538 = phi i64 [ %1126, %1134 ], [ %1415, %1515 ]
  %1539 = phi i32 [ %1138, %1134 ], [ %1517, %1515 ]
  %1540 = phi ptr [ %1140, %1134 ], [ %1519, %1515 ]
  %1541 = phi i64 [ %1128, %1134 ], [ %1417, %1515 ]
  %1542 = phi ptr [ %1114, %1134 ], [ %1163, %1515 ]
  %1543 = phi ptr [ %1115, %1134 ], [ %1164, %1515 ]
  %1544 = phi i64 [ %1116, %1134 ], [ %1165, %1515 ]
  %1545 = phi i32 [ %1124, %1134 ], [ %1173, %1515 ]
  %1546 = phi ptr [ %1136, %1134 ], [ %1175, %1515 ]
  %1547 = getelementptr inbounds nuw i8, ptr %1542, i64 4
  %1548 = getelementptr inbounds nuw i8, ptr %1546, i64 4
  %1549 = icmp ult ptr %1547, %1083
  br i1 %1549, label %1550, label %.loopexit624

1550:                                             ; preds = %.loopexit627
  %1551 = load i64, ptr %1548, align 1, !tbaa !24
  %1552 = load i64, ptr %1547, align 1, !tbaa !24
  %1553 = icmp eq i64 %1551, %1552
  br i1 %1553, label %.preheader623, label %1554

1554:                                             ; preds = %1550
  %1555 = xor i64 %1552, %1551
  %1556 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1555, i1 true)
  %1557 = lshr i64 %1556, 3
  br label %1611

.preheader623:                                    ; preds = %1550, %1563
  %1558 = phi ptr [ %1561, %1563 ], [ %1548, %1550 ]
  %1559 = phi ptr [ %1560, %1563 ], [ %1547, %1550 ]
  %1560 = getelementptr inbounds nuw i8, ptr %1559, i64 8
  %1561 = getelementptr inbounds nuw i8, ptr %1558, i64 8
  %1562 = icmp ult ptr %1560, %1083
  br i1 %1562, label %1563, label %.loopexit624

1563:                                             ; preds = %.preheader623
  %1564 = load i64, ptr %1561, align 1, !tbaa !24
  %1565 = load i64, ptr %1560, align 1, !tbaa !24
  %1566 = icmp eq i64 %1564, %1565
  br i1 %1566, label %.preheader623, label %1567

1567:                                             ; preds = %1563
  %1568 = xor i64 %1565, %1564
  %1569 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1568, i1 true)
  %1570 = lshr i64 %1569, 3
  %1571 = getelementptr inbounds nuw i8, ptr %1560, i64 %1570
  %1572 = ptrtoint ptr %1571 to i64
  %1573 = ptrtoint ptr %1547 to i64
  %1574 = sub i64 %1572, %1573
  br label %1611

.loopexit624:                                     ; preds = %.preheader623, %.loopexit627
  %1575 = phi ptr [ %1548, %.loopexit627 ], [ %1561, %.preheader623 ]
  %1576 = phi ptr [ %1547, %.loopexit627 ], [ %1560, %.preheader623 ]
  %1577 = icmp ult ptr %1576, %1084
  br i1 %1577, label %1578, label %1585

1578:                                             ; preds = %.loopexit624
  %1579 = load i32, ptr %1575, align 1, !tbaa !25
  %1580 = load i32, ptr %1576, align 1, !tbaa !25
  %1581 = icmp eq i32 %1579, %1580
  br i1 %1581, label %1582, label %1585

1582:                                             ; preds = %1578
  %1583 = getelementptr inbounds nuw i8, ptr %1576, i64 4
  %1584 = getelementptr inbounds nuw i8, ptr %1575, i64 4
  br label %1585

1585:                                             ; preds = %1582, %1578, %.loopexit624
  %1586 = phi ptr [ %1584, %1582 ], [ %1575, %1578 ], [ %1575, %.loopexit624 ]
  %1587 = phi ptr [ %1583, %1582 ], [ %1576, %1578 ], [ %1576, %.loopexit624 ]
  %1588 = icmp ult ptr %1587, %1085
  br i1 %1588, label %1589, label %1596

1589:                                             ; preds = %1585
  %1590 = load i16, ptr %1586, align 1, !tbaa !35
  %1591 = load i16, ptr %1587, align 1, !tbaa !35
  %1592 = icmp eq i16 %1590, %1591
  br i1 %1592, label %1593, label %1596

1593:                                             ; preds = %1589
  %1594 = getelementptr inbounds nuw i8, ptr %1587, i64 2
  %1595 = getelementptr inbounds nuw i8, ptr %1586, i64 2
  br label %1596

1596:                                             ; preds = %1593, %1589, %1585
  %1597 = phi ptr [ %1595, %1593 ], [ %1586, %1589 ], [ %1586, %1585 ]
  %1598 = phi ptr [ %1594, %1593 ], [ %1587, %1589 ], [ %1587, %1585 ]
  %1599 = icmp ult ptr %1598, %42
  br i1 %1599, label %1600, label %1606

1600:                                             ; preds = %1596
  %1601 = load i8, ptr %1597, align 1, !tbaa !37
  %1602 = load i8, ptr %1598, align 1, !tbaa !37
  %1603 = icmp eq i8 %1601, %1602
  %1604 = zext i1 %1603 to i64
  %1605 = getelementptr inbounds nuw i8, ptr %1598, i64 %1604
  br label %1606

1606:                                             ; preds = %1600, %1596
  %1607 = phi ptr [ %1598, %1596 ], [ %1605, %1600 ]
  %1608 = ptrtoint ptr %1607 to i64
  %1609 = ptrtoint ptr %1547 to i64
  %1610 = sub i64 %1608, %1609
  br label %1611

1611:                                             ; preds = %1606, %1567, %1554
  %1612 = phi i64 [ %1610, %1606 ], [ %1557, %1554 ], [ %1574, %1567 ]
  %1613 = add i64 %1612, 4
  %1614 = ptrtoint ptr %1542 to i64
  %1615 = ptrtoint ptr %1546 to i64
  %1616 = sub i64 %1614, %1615
  %1617 = icmp ugt i32 %1539, %39
  br i1 %1617, label %1618, label %1694

1618:                                             ; preds = %1611
  %1619 = load i64, ptr %1540, align 1, !tbaa !24
  %1620 = icmp eq i64 %1619, %1538
  br i1 %1620, label %1621, label %1694

1621:                                             ; preds = %1618
  %1622 = getelementptr inbounds nuw i8, ptr %1543, i64 8
  %1623 = getelementptr inbounds nuw i8, ptr %1540, i64 8
  %1624 = icmp ult ptr %1622, %1083
  br i1 %1624, label %1625, label %.loopexit622

1625:                                             ; preds = %1621
  %1626 = load i64, ptr %1623, align 1, !tbaa !24
  %1627 = load i64, ptr %1622, align 1, !tbaa !24
  %1628 = icmp eq i64 %1626, %1627
  br i1 %1628, label %.preheader621, label %1629

1629:                                             ; preds = %1625
  %1630 = xor i64 %1627, %1626
  %1631 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1630, i1 true)
  %1632 = lshr i64 %1631, 3
  br label %1686

.preheader621:                                    ; preds = %1625, %1638
  %1633 = phi ptr [ %1636, %1638 ], [ %1623, %1625 ]
  %1634 = phi ptr [ %1635, %1638 ], [ %1622, %1625 ]
  %1635 = getelementptr inbounds nuw i8, ptr %1634, i64 8
  %1636 = getelementptr inbounds nuw i8, ptr %1633, i64 8
  %1637 = icmp ult ptr %1635, %1083
  br i1 %1637, label %1638, label %.loopexit622

1638:                                             ; preds = %.preheader621
  %1639 = load i64, ptr %1636, align 1, !tbaa !24
  %1640 = load i64, ptr %1635, align 1, !tbaa !24
  %1641 = icmp eq i64 %1639, %1640
  br i1 %1641, label %.preheader621, label %1642

1642:                                             ; preds = %1638
  %1643 = xor i64 %1640, %1639
  %1644 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1643, i1 true)
  %1645 = lshr i64 %1644, 3
  %1646 = getelementptr inbounds nuw i8, ptr %1635, i64 %1645
  %1647 = ptrtoint ptr %1646 to i64
  %1648 = ptrtoint ptr %1622 to i64
  %1649 = sub i64 %1647, %1648
  br label %1686

.loopexit622:                                     ; preds = %.preheader621, %1621
  %1650 = phi ptr [ %1623, %1621 ], [ %1636, %.preheader621 ]
  %1651 = phi ptr [ %1622, %1621 ], [ %1635, %.preheader621 ]
  %1652 = icmp ult ptr %1651, %1084
  br i1 %1652, label %1653, label %1660

1653:                                             ; preds = %.loopexit622
  %1654 = load i32, ptr %1650, align 1, !tbaa !25
  %1655 = load i32, ptr %1651, align 1, !tbaa !25
  %1656 = icmp eq i32 %1654, %1655
  br i1 %1656, label %1657, label %1660

1657:                                             ; preds = %1653
  %1658 = getelementptr inbounds nuw i8, ptr %1651, i64 4
  %1659 = getelementptr inbounds nuw i8, ptr %1650, i64 4
  br label %1660

1660:                                             ; preds = %1657, %1653, %.loopexit622
  %1661 = phi ptr [ %1659, %1657 ], [ %1650, %1653 ], [ %1650, %.loopexit622 ]
  %1662 = phi ptr [ %1658, %1657 ], [ %1651, %1653 ], [ %1651, %.loopexit622 ]
  %1663 = icmp ult ptr %1662, %1085
  br i1 %1663, label %1664, label %1671

1664:                                             ; preds = %1660
  %1665 = load i16, ptr %1661, align 1, !tbaa !35
  %1666 = load i16, ptr %1662, align 1, !tbaa !35
  %1667 = icmp eq i16 %1665, %1666
  br i1 %1667, label %1668, label %1671

1668:                                             ; preds = %1664
  %1669 = getelementptr inbounds nuw i8, ptr %1662, i64 2
  %1670 = getelementptr inbounds nuw i8, ptr %1661, i64 2
  br label %1671

1671:                                             ; preds = %1668, %1664, %1660
  %1672 = phi ptr [ %1670, %1668 ], [ %1661, %1664 ], [ %1661, %1660 ]
  %1673 = phi ptr [ %1669, %1668 ], [ %1662, %1664 ], [ %1662, %1660 ]
  %1674 = icmp ult ptr %1673, %42
  br i1 %1674, label %1675, label %1681

1675:                                             ; preds = %1671
  %1676 = load i8, ptr %1672, align 1, !tbaa !37
  %1677 = load i8, ptr %1673, align 1, !tbaa !37
  %1678 = icmp eq i8 %1676, %1677
  %1679 = zext i1 %1678 to i64
  %1680 = getelementptr inbounds nuw i8, ptr %1673, i64 %1679
  br label %1681

1681:                                             ; preds = %1675, %1671
  %1682 = phi ptr [ %1673, %1671 ], [ %1680, %1675 ]
  %1683 = ptrtoint ptr %1682 to i64
  %1684 = ptrtoint ptr %1622 to i64
  %1685 = sub i64 %1683, %1684
  br label %1686

1686:                                             ; preds = %1681, %1642, %1629
  %1687 = phi i64 [ %1685, %1681 ], [ %1632, %1629 ], [ %1649, %1642 ]
  %1688 = add i64 %1687, 8
  %1689 = icmp ugt i64 %1688, %1613
  br i1 %1689, label %1690, label %1694

1690:                                             ; preds = %1686
  %1691 = ptrtoint ptr %1543 to i64
  %1692 = ptrtoint ptr %1540 to i64
  %1693 = sub i64 %1691, %1692
  br label %1694

1694:                                             ; preds = %1690, %1686, %1618, %1611
  %1695 = phi ptr [ %1546, %1618 ], [ %1546, %1611 ], [ %1540, %1690 ], [ %1546, %1686 ]
  %1696 = phi ptr [ %1542, %1618 ], [ %1542, %1611 ], [ %1543, %1690 ], [ %1542, %1686 ]
  %1697 = phi i64 [ %1616, %1618 ], [ %1616, %1611 ], [ %1693, %1690 ], [ %1616, %1686 ]
  %1698 = phi i64 [ %1613, %1618 ], [ %1613, %1611 ], [ %1688, %1690 ], [ %1613, %1686 ]
  %1699 = icmp ugt ptr %1696, %1094
  %1700 = icmp ugt ptr %1695, %41
  %1701 = and i1 %1700, %1699
  br i1 %1701, label %.preheader617, label %.loopexit612

.preheader617:                                    ; preds = %1694, %1710
  %1702 = phi i64 [ %1711, %1710 ], [ %1698, %1694 ]
  %1703 = phi ptr [ %1705, %1710 ], [ %1696, %1694 ]
  %1704 = phi ptr [ %1707, %1710 ], [ %1695, %1694 ]
  %1705 = getelementptr inbounds i8, ptr %1703, i64 -1
  %1706 = load i8, ptr %1705, align 1, !tbaa !37
  %1707 = getelementptr inbounds i8, ptr %1704, i64 -1
  %1708 = load i8, ptr %1707, align 1, !tbaa !37
  %1709 = icmp eq i8 %1706, %1708
  br i1 %1709, label %1710, label %.loopexit612

1710:                                             ; preds = %.preheader617
  %1711 = add i64 %1702, 1
  %1712 = icmp ugt ptr %1705, %1094
  %1713 = icmp ugt ptr %1707, %41
  %1714 = and i1 %1712, %1713
  br i1 %1714, label %.preheader617, label %.loopexit612, !llvm.loop !60

.loopexit612:                                     ; preds = %1710, %.preheader617, %1510, %.preheader611, %1694, %1494
  %1715 = phi i64 [ %1423, %1494 ], [ %1541, %1694 ], [ %1423, %1510 ], [ %1423, %.preheader611 ], [ %1541, %.preheader617 ], [ %1541, %1710 ]
  %1716 = phi ptr [ %1426, %1494 ], [ %1543, %1694 ], [ %1426, %1510 ], [ %1426, %.preheader611 ], [ %1543, %.preheader617 ], [ %1543, %1710 ]
  %1717 = phi i64 [ %1427, %1494 ], [ %1544, %1694 ], [ %1427, %1510 ], [ %1427, %.preheader611 ], [ %1544, %.preheader617 ], [ %1544, %1710 ]
  %1718 = phi i32 [ %1429, %1494 ], [ %1545, %1694 ], [ %1429, %1510 ], [ %1429, %.preheader611 ], [ %1545, %.preheader617 ], [ %1545, %1710 ]
  %1719 = phi ptr [ %1425, %1494 ], [ %1696, %1694 ], [ %1505, %1510 ], [ %1503, %.preheader611 ], [ %1705, %1710 ], [ %1703, %.preheader617 ]
  %1720 = phi i64 [ %1498, %1494 ], [ %1697, %1694 ], [ %1498, %1510 ], [ %1498, %.preheader611 ], [ %1697, %.preheader617 ], [ %1697, %1710 ]
  %1721 = phi i64 [ %1496, %1494 ], [ %1698, %1694 ], [ %1511, %1510 ], [ %1502, %.preheader611 ], [ %1711, %1710 ], [ %1702, %.preheader617 ]
  %1722 = trunc i64 %1720 to i32
  %1723 = icmp ult i64 %1717, 4
  br i1 %1723, label %1724, label %1729

1724:                                             ; preds = %.loopexit612
  %1725 = ptrtoint ptr %1716 to i64
  %1726 = sub i64 %1725, %24
  %1727 = trunc i64 %1726 to i32
  %1728 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %1715
  store i32 %1727, ptr %1728, align 4, !tbaa !25
  br label %1729

1729:                                             ; preds = %1724, %.loopexit612
  %1730 = ptrtoint ptr %1719 to i64
  %1731 = ptrtoint ptr %1094 to i64
  %1732 = sub i64 %1730, %1731
  %1733 = add i32 %1722, 3
  %1734 = icmp ugt ptr %1719, %1086
  %1735 = load ptr, ptr %1087, align 8, !tbaa !38
  br i1 %1734, label %1758, label %1736

1736:                                             ; preds = %1729
  %1737 = load <2 x i64>, ptr %1094, align 1, !tbaa !37
  store <2 x i64> %1737, ptr %1735, align 1, !tbaa !37
  %1738 = icmp ugt i64 %1732, 16
  br i1 %1738, label %1739, label %1869

1739:                                             ; preds = %1736
  %1740 = load ptr, ptr %1087, align 8, !tbaa !38
  %1741 = getelementptr inbounds nuw i8, ptr %1740, i64 16
  %1742 = getelementptr inbounds nuw i8, ptr %1094, i64 16
  %1743 = getelementptr i8, ptr %1740, i64 %1732
  %1744 = load <2 x i64>, ptr %1742, align 1, !tbaa !37
  store <2 x i64> %1744, ptr %1741, align 1, !tbaa !37
  %1745 = icmp ult i64 %1732, 33
  br i1 %1745, label %1869, label %1746

1746:                                             ; preds = %1739
  %1747 = getelementptr inbounds nuw i8, ptr %1740, i64 32
  br label %1748

1748:                                             ; preds = %1748, %1746
  %1749 = phi ptr [ %1747, %1746 ], [ %1756, %1748 ]
  %1750 = phi ptr [ %1742, %1746 ], [ %1754, %1748 ]
  %1751 = getelementptr inbounds nuw i8, ptr %1750, i64 16
  %1752 = load <2 x i64>, ptr %1751, align 1, !tbaa !37
  store <2 x i64> %1752, ptr %1749, align 1, !tbaa !37
  %1753 = getelementptr inbounds nuw i8, ptr %1749, i64 16
  %1754 = getelementptr inbounds nuw i8, ptr %1750, i64 32
  %1755 = load <2 x i64>, ptr %1754, align 1, !tbaa !37
  store <2 x i64> %1755, ptr %1753, align 1, !tbaa !37
  %1756 = getelementptr inbounds nuw i8, ptr %1749, i64 32
  %1757 = icmp ult ptr %1756, %1743
  br i1 %1757, label %1748, label %.loopexit606, !llvm.loop !41

1758:                                             ; preds = %1729
  %1759 = icmp ugt ptr %1094, %1086
  br i1 %1759, label %.loopexit609, label %1760

1760:                                             ; preds = %1758
  %1761 = sub i64 %1088, %1731
  %1762 = getelementptr inbounds i8, ptr %1735, i64 %1761
  %1763 = load <2 x i64>, ptr %1094, align 1, !tbaa !37
  store <2 x i64> %1763, ptr %1735, align 1, !tbaa !37
  %1764 = icmp ult i64 %1761, 17
  br i1 %1764, label %.loopexit609, label %1765

1765:                                             ; preds = %1760
  %1766 = getelementptr inbounds nuw i8, ptr %1735, i64 16
  br label %1767

1767:                                             ; preds = %1767, %1765
  %1768 = phi ptr [ %1766, %1765 ], [ %1775, %1767 ]
  %1769 = phi ptr [ %1094, %1765 ], [ %1773, %1767 ]
  %1770 = getelementptr inbounds nuw i8, ptr %1769, i64 16
  %1771 = load <2 x i64>, ptr %1770, align 1, !tbaa !37
  store <2 x i64> %1771, ptr %1768, align 1, !tbaa !37
  %1772 = getelementptr inbounds nuw i8, ptr %1768, i64 16
  %1773 = getelementptr inbounds nuw i8, ptr %1769, i64 32
  %1774 = load <2 x i64>, ptr %1773, align 1, !tbaa !37
  store <2 x i64> %1774, ptr %1772, align 1, !tbaa !37
  %1775 = getelementptr inbounds nuw i8, ptr %1768, i64 32
  %1776 = icmp ult ptr %1775, %1762
  br i1 %1776, label %1767, label %.loopexit609, !llvm.loop !41

.loopexit609:                                     ; preds = %1767, %1760, %1758
  %1777 = phi ptr [ %1086, %1760 ], [ %1094, %1758 ], [ %1086, %1767 ]
  %1778 = phi ptr [ %1762, %1760 ], [ %1735, %1758 ], [ %1762, %1767 ]
  %1779 = icmp ult ptr %1777, %1719
  br i1 %1779, label %1780, label %.loopexit606

1780:                                             ; preds = %.loopexit609
  %1781 = ptrtoint ptr %1777 to i64
  %1782 = ptrtoint ptr %1778 to i64
  %1783 = sub i64 %1730, %1781
  %1784 = icmp ult i64 %1783, 4
  %1785 = sub i64 %1782, %1781
  %1786 = icmp ult i64 %1785, 32
  %1787 = select i1 %1784, i1 true, i1 %1786
  br i1 %1787, label %1823, label %1788

1788:                                             ; preds = %1780
  %1789 = icmp ult i64 %1783, 32
  br i1 %1789, label %1809, label %1790

1790:                                             ; preds = %1788
  %1791 = and i64 %1783, -32
  br label %1792

1792:                                             ; preds = %1792, %1790
  %1793 = phi i64 [ 0, %1790 ], [ %1800, %1792 ]
  %1794 = getelementptr i8, ptr %1778, i64 %1793
  %1795 = getelementptr i8, ptr %1777, i64 %1793
  %1796 = getelementptr i8, ptr %1795, i64 16
  %1797 = load <16 x i8>, ptr %1795, align 1, !tbaa !37
  %1798 = load <16 x i8>, ptr %1796, align 1, !tbaa !37
  %1799 = getelementptr i8, ptr %1794, i64 16
  store <16 x i8> %1797, ptr %1794, align 1, !tbaa !37
  store <16 x i8> %1798, ptr %1799, align 1, !tbaa !37
  %1800 = add nuw i64 %1793, 32
  %1801 = icmp eq i64 %1800, %1791
  br i1 %1801, label %1802, label %1792, !llvm.loop !71

1802:                                             ; preds = %1792
  %1803 = icmp eq i64 %1783, %1791
  br i1 %1803, label %.loopexit606, label %1804

1804:                                             ; preds = %1802
  %1805 = getelementptr i8, ptr %1778, i64 %1791
  %1806 = getelementptr i8, ptr %1777, i64 %1791
  %1807 = and i64 %1783, 28
  %1808 = icmp eq i64 %1807, 0
  br i1 %1808, label %1823, label %1809

1809:                                             ; preds = %1804, %1788
  %1810 = phi i64 [ %1791, %1804 ], [ 0, %1788 ]
  %1811 = and i64 %1783, -4
  br label %1812

1812:                                             ; preds = %1812, %1809
  %1813 = phi i64 [ %1810, %1809 ], [ %1817, %1812 ]
  %1814 = getelementptr i8, ptr %1778, i64 %1813
  %1815 = getelementptr i8, ptr %1777, i64 %1813
  %1816 = load <4 x i8>, ptr %1815, align 1, !tbaa !37
  store <4 x i8> %1816, ptr %1814, align 1, !tbaa !37
  %1817 = add nuw i64 %1813, 4
  %1818 = icmp eq i64 %1817, %1811
  br i1 %1818, label %1819, label %1812, !llvm.loop !72

1819:                                             ; preds = %1812
  %1820 = getelementptr i8, ptr %1778, i64 %1811
  %1821 = getelementptr i8, ptr %1777, i64 %1811
  %1822 = icmp eq i64 %1783, %1811
  br i1 %1822, label %.loopexit606, label %1823

1823:                                             ; preds = %1819, %1804, %1780
  %1824 = phi ptr [ %1778, %1780 ], [ %1805, %1804 ], [ %1820, %1819 ]
  %1825 = phi ptr [ %1777, %1780 ], [ %1806, %1804 ], [ %1821, %1819 ]
  %1826 = ptrtoint ptr %1825 to i64
  %1827 = sub i64 %1730, %1826
  %1828 = and i64 %1827, 7
  %1829 = icmp eq i64 %1828, 0
  br i1 %1829, label %.loopexit608, label %.preheader607

.preheader607:                                    ; preds = %1823, %.preheader607
  %1830 = phi ptr [ %1835, %.preheader607 ], [ %1824, %1823 ]
  %1831 = phi ptr [ %1833, %.preheader607 ], [ %1825, %1823 ]
  %1832 = phi i64 [ %1836, %.preheader607 ], [ 0, %1823 ]
  %1833 = getelementptr inbounds nuw i8, ptr %1831, i64 1
  %1834 = load i8, ptr %1831, align 1, !tbaa !37
  %1835 = getelementptr inbounds nuw i8, ptr %1830, i64 1
  store i8 %1834, ptr %1830, align 1, !tbaa !37
  %1836 = add nuw nsw i64 %1832, 1
  %1837 = icmp eq i64 %1836, %1828
  br i1 %1837, label %.loopexit608, label %.preheader607, !llvm.loop !73

.loopexit608:                                     ; preds = %.preheader607, %1823
  %1838 = phi ptr [ %1824, %1823 ], [ %1835, %.preheader607 ]
  %1839 = phi ptr [ %1825, %1823 ], [ %1833, %.preheader607 ]
  %1840 = sub i64 %1826, %1730
  %1841 = icmp ugt i64 %1840, -8
  br i1 %1841, label %.loopexit606, label %.preheader605

.preheader605:                                    ; preds = %.loopexit608, %.preheader605
  %1842 = phi ptr [ %1867, %.preheader605 ], [ %1838, %.loopexit608 ]
  %1843 = phi ptr [ %1865, %.preheader605 ], [ %1839, %.loopexit608 ]
  %1844 = getelementptr inbounds nuw i8, ptr %1843, i64 1
  %1845 = load i8, ptr %1843, align 1, !tbaa !37
  %1846 = getelementptr inbounds nuw i8, ptr %1842, i64 1
  store i8 %1845, ptr %1842, align 1, !tbaa !37
  %1847 = getelementptr inbounds nuw i8, ptr %1843, i64 2
  %1848 = load i8, ptr %1844, align 1, !tbaa !37
  %1849 = getelementptr inbounds nuw i8, ptr %1842, i64 2
  store i8 %1848, ptr %1846, align 1, !tbaa !37
  %1850 = getelementptr inbounds nuw i8, ptr %1843, i64 3
  %1851 = load i8, ptr %1847, align 1, !tbaa !37
  %1852 = getelementptr inbounds nuw i8, ptr %1842, i64 3
  store i8 %1851, ptr %1849, align 1, !tbaa !37
  %1853 = getelementptr inbounds nuw i8, ptr %1843, i64 4
  %1854 = load i8, ptr %1850, align 1, !tbaa !37
  %1855 = getelementptr inbounds nuw i8, ptr %1842, i64 4
  store i8 %1854, ptr %1852, align 1, !tbaa !37
  %1856 = getelementptr inbounds nuw i8, ptr %1843, i64 5
  %1857 = load i8, ptr %1853, align 1, !tbaa !37
  %1858 = getelementptr inbounds nuw i8, ptr %1842, i64 5
  store i8 %1857, ptr %1855, align 1, !tbaa !37
  %1859 = getelementptr inbounds nuw i8, ptr %1843, i64 6
  %1860 = load i8, ptr %1856, align 1, !tbaa !37
  %1861 = getelementptr inbounds nuw i8, ptr %1842, i64 6
  store i8 %1860, ptr %1858, align 1, !tbaa !37
  %1862 = getelementptr inbounds nuw i8, ptr %1843, i64 7
  %1863 = load i8, ptr %1859, align 1, !tbaa !37
  %1864 = getelementptr inbounds nuw i8, ptr %1842, i64 7
  store i8 %1863, ptr %1861, align 1, !tbaa !37
  %1865 = getelementptr inbounds nuw i8, ptr %1843, i64 8
  %1866 = load i8, ptr %1862, align 1, !tbaa !37
  %1867 = getelementptr inbounds nuw i8, ptr %1842, i64 8
  store i8 %1866, ptr %1864, align 1, !tbaa !37
  %1868 = icmp eq ptr %1865, %1719
  br i1 %1868, label %.loopexit606, label %.preheader605, !llvm.loop !74

1869:                                             ; preds = %1739, %1736
  %1870 = load ptr, ptr %1087, align 8, !tbaa !38
  %1871 = getelementptr inbounds nuw i8, ptr %1870, i64 %1732
  store ptr %1871, ptr %1087, align 8, !tbaa !38
  %1872 = load ptr, ptr %1090, align 8, !tbaa !50
  br label %1884

.loopexit606:                                     ; preds = %1748, %.preheader605, %.loopexit608, %1819, %1802, %.loopexit609
  %1873 = load ptr, ptr %1087, align 8, !tbaa !38
  %1874 = getelementptr inbounds nuw i8, ptr %1873, i64 %1732
  store ptr %1874, ptr %1087, align 8, !tbaa !38
  %1875 = icmp ugt i64 %1732, 65535
  %1876 = load ptr, ptr %1090, align 8, !tbaa !50
  br i1 %1875, label %1877, label %1884, !prof !51

1877:                                             ; preds = %.loopexit606
  store i32 1, ptr %1089, align 8, !tbaa !52
  %1878 = load ptr, ptr %1, align 8, !tbaa !53
  %1879 = ptrtoint ptr %1876 to i64
  %1880 = ptrtoint ptr %1878 to i64
  %1881 = sub i64 %1879, %1880
  %1882 = lshr exact i64 %1881, 3
  %1883 = trunc i64 %1882 to i32
  store i32 %1883, ptr %1091, align 4, !tbaa !54
  br label %1884

1884:                                             ; preds = %1877, %.loopexit606, %1869
  %1885 = phi ptr [ %1872, %1869 ], [ %1876, %1877 ], [ %1876, %.loopexit606 ]
  %1886 = trunc i64 %1732 to i16
  %1887 = getelementptr inbounds nuw i8, ptr %1885, i64 4
  store i16 %1886, ptr %1887, align 4, !tbaa !55
  store i32 %1733, ptr %1885, align 4, !tbaa !57
  %1888 = add i64 %1721, -3
  %1889 = icmp ugt i64 %1888, 65535
  br i1 %1889, label %1890, label %1904, !prof !58

1890:                                             ; preds = %1884, %1408
  %1891 = phi ptr [ %1409, %1408 ], [ %1885, %1884 ]
  %1892 = phi i64 [ %1412, %1408 ], [ %1888, %1884 ]
  %1893 = phi i32 [ %1173, %1408 ], [ %1718, %1884 ]
  %1894 = phi ptr [ %1177, %1408 ], [ %1719, %1884 ]
  %1895 = phi i64 [ %1249, %1408 ], [ %1721, %1884 ]
  %1896 = phi i32 [ %1096, %1408 ], [ %1098, %1884 ]
  %1897 = phi i32 [ %1098, %1408 ], [ %1722, %1884 ]
  store i32 2, ptr %1089, align 8, !tbaa !52
  %1898 = load ptr, ptr %1, align 8, !tbaa !53
  %1899 = ptrtoint ptr %1891 to i64
  %1900 = ptrtoint ptr %1898 to i64
  %1901 = sub i64 %1899, %1900
  %1902 = lshr exact i64 %1901, 3
  %1903 = trunc i64 %1902 to i32
  store i32 %1903, ptr %1091, align 4, !tbaa !54
  br label %1904

1904:                                             ; preds = %1890, %1884, %1408
  %1905 = phi i64 [ %1412, %1408 ], [ %1888, %1884 ], [ %1892, %1890 ]
  %1906 = phi ptr [ %1409, %1408 ], [ %1885, %1884 ], [ %1891, %1890 ]
  %1907 = phi i32 [ %1173, %1408 ], [ %1718, %1884 ], [ %1893, %1890 ]
  %1908 = phi ptr [ %1177, %1408 ], [ %1719, %1884 ], [ %1894, %1890 ]
  %1909 = phi i64 [ %1249, %1408 ], [ %1721, %1884 ], [ %1895, %1890 ]
  %1910 = phi i32 [ %1096, %1408 ], [ %1098, %1884 ], [ %1896, %1890 ]
  %1911 = phi i32 [ %1098, %1408 ], [ %1722, %1884 ], [ %1897, %1890 ]
  %1912 = trunc i64 %1905 to i16
  %1913 = getelementptr inbounds nuw i8, ptr %1906, i64 6
  store i16 %1912, ptr %1913, align 2, !tbaa !65
  %1914 = getelementptr inbounds nuw i8, ptr %1906, i64 8
  store ptr %1914, ptr %1090, align 8, !tbaa !50
  %1915 = getelementptr inbounds nuw i8, ptr %1908, i64 %1909
  %1916 = icmp ugt ptr %1915, %43
  br i1 %1916, label %.loopexit601, label %1917

1917:                                             ; preds = %1904
  %1918 = add i32 %1907, 2
  %1919 = zext i32 %1918 to i64
  %1920 = getelementptr inbounds nuw i8, ptr %22, i64 %1919
  %1921 = load i64, ptr %1920, align 1, !tbaa !24
  %1922 = mul i64 %1921, -3523014627327384477
  %1923 = lshr i64 %1922, %1080
  %1924 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %1923
  store i32 %1918, ptr %1924, align 4, !tbaa !25
  %1925 = getelementptr inbounds i8, ptr %1915, i64 -2
  %1926 = ptrtoint ptr %1925 to i64
  %1927 = sub i64 %1926, %24
  %1928 = trunc i64 %1927 to i32
  %1929 = load i64, ptr %1925, align 1, !tbaa !24
  %1930 = mul i64 %1929, -3523014627327384477
  %1931 = lshr i64 %1930, %1080
  %1932 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %1931
  store i32 %1928, ptr %1932, align 4, !tbaa !25
  %1933 = mul i64 %1921, -3523014627271114752
  %1934 = lshr i64 %1933, %1082
  %1935 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %1934
  store i32 %1918, ptr %1935, align 4, !tbaa !25
  %1936 = getelementptr inbounds i8, ptr %1915, i64 -1
  %1937 = ptrtoint ptr %1936 to i64
  %1938 = sub i64 %1937, %24
  %1939 = trunc i64 %1938 to i32
  %1940 = load i64, ptr %1936, align 1, !tbaa !24
  %1941 = mul i64 %1940, -3523014627271114752
  %1942 = lshr i64 %1941, %1082
  %1943 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %1942
  store i32 %1939, ptr %1943, align 4, !tbaa !25
  br label %1944

1944:                                             ; preds = %2051, %1917
  %1945 = phi ptr [ %1914, %1917 ], [ %2054, %2051 ]
  %1946 = phi ptr [ %1915, %1917 ], [ %2056, %2051 ]
  %1947 = phi i32 [ %1911, %1917 ], [ %1948, %2051 ]
  %1948 = phi i32 [ %1910, %1917 ], [ %1947, %2051 ]
  %1949 = icmp ne i32 %1948, 0
  %1950 = load i32, ptr %1946, align 1, !tbaa !25
  %1951 = zext i32 %1948 to i64
  %1952 = sub nsw i64 0, %1951
  %1953 = getelementptr inbounds i8, ptr %1946, i64 %1952
  %1954 = load i32, ptr %1953, align 1, !tbaa !25
  %1955 = icmp eq i32 %1950, %1954
  %1956 = and i1 %1949, %1955
  br i1 %1956, label %1957, label %.loopexit601

1957:                                             ; preds = %1944
  %1958 = getelementptr inbounds nuw i8, ptr %1946, i64 4
  %1959 = getelementptr inbounds i8, ptr %1958, i64 %1952
  %1960 = icmp ult ptr %1958, %1083
  br i1 %1960, label %1961, label %.loopexit600

1961:                                             ; preds = %1957
  %1962 = load i64, ptr %1959, align 1, !tbaa !24
  %1963 = load i64, ptr %1958, align 1, !tbaa !24
  %1964 = icmp eq i64 %1962, %1963
  br i1 %1964, label %.preheader599, label %1965

1965:                                             ; preds = %1961
  %1966 = xor i64 %1963, %1962
  %1967 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1966, i1 true)
  %1968 = lshr i64 %1967, 3
  br label %2022

.preheader599:                                    ; preds = %1961, %1974
  %1969 = phi ptr [ %1972, %1974 ], [ %1959, %1961 ]
  %1970 = phi ptr [ %1971, %1974 ], [ %1958, %1961 ]
  %1971 = getelementptr inbounds nuw i8, ptr %1970, i64 8
  %1972 = getelementptr inbounds nuw i8, ptr %1969, i64 8
  %1973 = icmp ult ptr %1971, %1083
  br i1 %1973, label %1974, label %.loopexit600

1974:                                             ; preds = %.preheader599
  %1975 = load i64, ptr %1972, align 1, !tbaa !24
  %1976 = load i64, ptr %1971, align 1, !tbaa !24
  %1977 = icmp eq i64 %1975, %1976
  br i1 %1977, label %.preheader599, label %1978

1978:                                             ; preds = %1974
  %1979 = xor i64 %1976, %1975
  %1980 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1979, i1 true)
  %1981 = lshr i64 %1980, 3
  %1982 = getelementptr inbounds nuw i8, ptr %1971, i64 %1981
  %1983 = ptrtoint ptr %1982 to i64
  %1984 = ptrtoint ptr %1958 to i64
  %1985 = sub i64 %1983, %1984
  br label %2022

.loopexit600:                                     ; preds = %.preheader599, %1957
  %1986 = phi ptr [ %1959, %1957 ], [ %1972, %.preheader599 ]
  %1987 = phi ptr [ %1958, %1957 ], [ %1971, %.preheader599 ]
  %1988 = icmp ult ptr %1987, %1084
  br i1 %1988, label %1989, label %1996

1989:                                             ; preds = %.loopexit600
  %1990 = load i32, ptr %1986, align 1, !tbaa !25
  %1991 = load i32, ptr %1987, align 1, !tbaa !25
  %1992 = icmp eq i32 %1990, %1991
  br i1 %1992, label %1993, label %1996

1993:                                             ; preds = %1989
  %1994 = getelementptr inbounds nuw i8, ptr %1987, i64 4
  %1995 = getelementptr inbounds nuw i8, ptr %1986, i64 4
  br label %1996

1996:                                             ; preds = %1993, %1989, %.loopexit600
  %1997 = phi ptr [ %1995, %1993 ], [ %1986, %1989 ], [ %1986, %.loopexit600 ]
  %1998 = phi ptr [ %1994, %1993 ], [ %1987, %1989 ], [ %1987, %.loopexit600 ]
  %1999 = icmp ult ptr %1998, %1085
  br i1 %1999, label %2000, label %2007

2000:                                             ; preds = %1996
  %2001 = load i16, ptr %1997, align 1, !tbaa !35
  %2002 = load i16, ptr %1998, align 1, !tbaa !35
  %2003 = icmp eq i16 %2001, %2002
  br i1 %2003, label %2004, label %2007

2004:                                             ; preds = %2000
  %2005 = getelementptr inbounds nuw i8, ptr %1998, i64 2
  %2006 = getelementptr inbounds nuw i8, ptr %1997, i64 2
  br label %2007

2007:                                             ; preds = %2004, %2000, %1996
  %2008 = phi ptr [ %2006, %2004 ], [ %1997, %2000 ], [ %1997, %1996 ]
  %2009 = phi ptr [ %2005, %2004 ], [ %1998, %2000 ], [ %1998, %1996 ]
  %2010 = icmp ult ptr %2009, %42
  br i1 %2010, label %2011, label %2017

2011:                                             ; preds = %2007
  %2012 = load i8, ptr %2008, align 1, !tbaa !37
  %2013 = load i8, ptr %2009, align 1, !tbaa !37
  %2014 = icmp eq i8 %2012, %2013
  %2015 = zext i1 %2014 to i64
  %2016 = getelementptr inbounds nuw i8, ptr %2009, i64 %2015
  br label %2017

2017:                                             ; preds = %2011, %2007
  %2018 = phi ptr [ %2009, %2007 ], [ %2016, %2011 ]
  %2019 = ptrtoint ptr %2018 to i64
  %2020 = ptrtoint ptr %1958 to i64
  %2021 = sub i64 %2019, %2020
  br label %2022

2022:                                             ; preds = %2017, %1978, %1965
  %2023 = phi i64 [ %2021, %2017 ], [ %1968, %1965 ], [ %1985, %1978 ]
  %2024 = ptrtoint ptr %1946 to i64
  %2025 = sub i64 %2024, %24
  %2026 = trunc i64 %2025 to i32
  %2027 = load i64, ptr %1946, align 1, !tbaa !24
  %2028 = mul i64 %2027, -3523014627271114752
  %2029 = lshr i64 %2028, %1082
  %2030 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %2029
  store i32 %2026, ptr %2030, align 4, !tbaa !25
  %2031 = mul i64 %2027, -3523014627327384477
  %2032 = lshr i64 %2031, %1080
  %2033 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %2032
  store i32 %2026, ptr %2033, align 4, !tbaa !25
  %2034 = icmp ugt ptr %1946, %1086
  br i1 %2034, label %2039, label %2035

2035:                                             ; preds = %2022
  %2036 = load ptr, ptr %1087, align 8, !tbaa !38
  %2037 = load <2 x i64>, ptr %1946, align 1, !tbaa !37
  store <2 x i64> %2037, ptr %2036, align 1, !tbaa !37
  %2038 = load ptr, ptr %1090, align 8, !tbaa !50
  br label %2039

2039:                                             ; preds = %2035, %2022
  %2040 = phi ptr [ %1945, %2022 ], [ %2038, %2035 ]
  %2041 = getelementptr inbounds nuw i8, ptr %2040, i64 4
  store i16 0, ptr %2041, align 4, !tbaa !55
  store i32 1, ptr %2040, align 4, !tbaa !57
  %2042 = add i64 %2023, 1
  %2043 = icmp ugt i64 %2042, 65535
  br i1 %2043, label %2044, label %2051, !prof !58

2044:                                             ; preds = %2039
  store i32 2, ptr %1089, align 8, !tbaa !52
  %2045 = load ptr, ptr %1, align 8, !tbaa !53
  %2046 = ptrtoint ptr %2040 to i64
  %2047 = ptrtoint ptr %2045 to i64
  %2048 = sub i64 %2046, %2047
  %2049 = lshr exact i64 %2048, 3
  %2050 = trunc i64 %2049 to i32
  store i32 %2050, ptr %1091, align 4, !tbaa !54
  br label %2051

2051:                                             ; preds = %2044, %2039
  %2052 = trunc i64 %2042 to i16
  %2053 = getelementptr inbounds nuw i8, ptr %2040, i64 6
  store i16 %2052, ptr %2053, align 2, !tbaa !65
  %2054 = getelementptr inbounds nuw i8, ptr %2040, i64 8
  store ptr %2054, ptr %1090, align 8, !tbaa !50
  %2055 = getelementptr i8, ptr %1946, i64 %2023
  %2056 = getelementptr i8, ptr %2055, i64 4
  %2057 = icmp ugt ptr %2056, %43
  br i1 %2057, label %.loopexit601, label %1944

.loopexit601:                                     ; preds = %2051, %1944, %1904
  %2058 = phi i32 [ %1910, %1904 ], [ %1947, %2051 ], [ %1948, %1944 ]
  %2059 = phi i32 [ %1911, %1904 ], [ %1948, %2051 ], [ %1947, %1944 ]
  %2060 = phi ptr [ %1915, %1904 ], [ %2056, %2051 ], [ %1946, %1944 ]
  %2061 = getelementptr inbounds nuw i8, ptr %2060, i64 1
  %2062 = icmp ugt ptr %2061, %43
  br i1 %2062, label %.loopexit628, label %1092

.loopexit628:                                     ; preds = %.loopexit601, %1533, %1154, %1077
  %2063 = phi i32 [ %60, %1077 ], [ %1096, %1154 ], [ %1096, %1533 ], [ %2058, %.loopexit601 ]
  %2064 = phi i32 [ %62, %1077 ], [ 0, %1154 ], [ %1098, %1533 ], [ %2059, %.loopexit601 ]
  %2065 = phi ptr [ %3, %1077 ], [ %1094, %1154 ], [ %1094, %1533 ], [ %2060, %.loopexit601 ]
  %2066 = select i1 %61, i32 %44, i32 0
  %2067 = select i1 %59, i32 %46, i32 0
  %2068 = icmp ne i32 %2064, 0
  %2069 = select i1 %61, i1 %2068, i1 false
  %2070 = select i1 %2069, i32 %44, i32 %2067
  %2071 = select i1 %2068, i32 %2064, i32 %2066
  store i32 %2071, ptr %2, align 4, !tbaa !25
  %2072 = icmp eq i32 %2063, 0
  %2073 = select i1 %2072, i32 %2070, i32 %2063
  store i32 %2073, ptr %45, align 4, !tbaa !25
  %2074 = ptrtoint ptr %42 to i64
  %2075 = ptrtoint ptr %2065 to i64
  %2076 = sub i64 %2074, %2075
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %4077

2077:                                             ; preds = %5
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %7, ptr noundef nonnull align 1 dereferenceable(10) @__const.ZSTD_compressBlock_doubleFast_noDict_generic.dummy, i64 10, i1 false)
  br i1 %66, label %.loopexit671, label %2078

2078:                                             ; preds = %2077
  %2079 = sub i32 64, %16
  %2080 = zext nneg i32 %2079 to i64
  %2081 = sub i32 64, %20
  %2082 = zext nneg i32 %2081 to i64
  %2083 = getelementptr inbounds i8, ptr %42, i64 -7
  %2084 = getelementptr inbounds i8, ptr %42, i64 -3
  %2085 = getelementptr inbounds i8, ptr %42, i64 -1
  %2086 = getelementptr inbounds i8, ptr %42, i64 -32
  %2087 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %2088 = ptrtoint ptr %2086 to i64
  %2089 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %2090 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %2091 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %2092

2092:                                             ; preds = %.loopexit644, %2078
  %2093 = phi ptr [ %63, %2078 ], [ %3061, %.loopexit644 ]
  %2094 = phi ptr [ %3, %2078 ], [ %3060, %.loopexit644 ]
  %2095 = phi i32 [ %62, %2078 ], [ %3059, %.loopexit644 ]
  %2096 = phi i32 [ %60, %2078 ], [ %3058, %.loopexit644 ]
  %2097 = phi ptr [ %49, %2078 ], [ %3060, %.loopexit644 ]
  %2098 = freeze i32 %2095
  %2099 = getelementptr inbounds nuw i8, ptr %2097, i64 256
  %2100 = load i64, ptr %2097, align 1, !tbaa !24
  %2101 = mul i64 %2100, -3523014627327384477
  %2102 = lshr i64 %2101, %2080
  %2103 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %2102
  %2104 = load i32, ptr %2103, align 4, !tbaa !25
  %2105 = zext i32 %2104 to i64
  %2106 = getelementptr inbounds nuw i8, ptr %22, i64 %2105
  %2107 = icmp eq i32 %2098, 0
  %2108 = zext i32 %2098 to i64
  %2109 = sub nsw i64 0, %2108
  br i1 %2107, label %.preheader668, label %.preheader680

.preheader668:                                    ; preds = %2092, %2154
  %2110 = phi i64 [ %2126, %2154 ], [ %2100, %2092 ]
  %2111 = phi i32 [ %2138, %2154 ], [ %2104, %2092 ]
  %2112 = phi ptr [ %2140, %2154 ], [ %2106, %2092 ]
  %2113 = phi i64 [ %2128, %2154 ], [ %2102, %2092 ]
  %2114 = phi ptr [ %2115, %2154 ], [ %2097, %2092 ]
  %2115 = phi ptr [ %2157, %2154 ], [ %2093, %2092 ]
  %2116 = phi i64 [ %2155, %2154 ], [ 1, %2092 ]
  %2117 = phi ptr [ %2156, %2154 ], [ %2099, %2092 ]
  %2118 = mul i64 %2110, -3523014627193847808
  %2119 = lshr i64 %2118, %2082
  %2120 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %2119
  %2121 = load i32, ptr %2120, align 4, !tbaa !25
  %2122 = ptrtoint ptr %2114 to i64
  %2123 = sub i64 %2122, %24
  %2124 = trunc i64 %2123 to i32
  store i32 %2124, ptr %2120, align 4, !tbaa !25
  %2125 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %2113
  store i32 %2124, ptr %2125, align 4, !tbaa !25
  %2126 = load i64, ptr %2115, align 1, !tbaa !24
  %2127 = mul i64 %2126, -3523014627327384477
  %2128 = lshr i64 %2127, %2080
  %2129 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %2111, i32 %39, ptr nonnull readnone %7, ptr readnone %2112) #9, !srcloc !33
  %2130 = load i64, ptr %2129, align 1, !tbaa !24
  %2131 = icmp eq i64 %2130, %2110
  %2132 = icmp eq ptr %2129, %2112
  %2133 = select i1 %2131, i1 %2132, i1 false
  br i1 %2133, label %.loopexit669, label %2134

2134:                                             ; preds = %.preheader668
  %2135 = zext i32 %2121 to i64
  %2136 = getelementptr inbounds nuw i8, ptr %22, i64 %2135
  %2137 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %2128
  %2138 = load i32, ptr %2137, align 4, !tbaa !25
  %2139 = zext i32 %2138 to i64
  %2140 = getelementptr inbounds nuw i8, ptr %22, i64 %2139
  %2141 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %2121, i32 %39, ptr nonnull readnone %7, ptr readnone %2136) #9, !srcloc !33
  %2142 = load i32, ptr %2141, align 1, !tbaa !25
  %2143 = load i32, ptr %2114, align 1, !tbaa !25
  %2144 = icmp eq i32 %2142, %2143
  %2145 = icmp eq ptr %2141, %2136
  %2146 = select i1 %2144, i1 %2145, i1 false
  br i1 %2146, label %.loopexit670, label %2147

2147:                                             ; preds = %2134
  %2148 = icmp ult ptr %2115, %2117
  br i1 %2148, label %2154, label %2149

2149:                                             ; preds = %2147
  %2150 = getelementptr inbounds nuw i8, ptr %2115, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %2150, i32 0, i32 3, i32 1)
  %2151 = getelementptr inbounds nuw i8, ptr %2115, i64 128
  call void @llvm.prefetch.p0(ptr nonnull %2151, i32 0, i32 3, i32 1)
  %2152 = add i64 %2116, 1
  %2153 = getelementptr inbounds nuw i8, ptr %2117, i64 256
  br label %2154

2154:                                             ; preds = %2149, %2147
  %2155 = phi i64 [ %2152, %2149 ], [ %2116, %2147 ]
  %2156 = phi ptr [ %2153, %2149 ], [ %2117, %2147 ]
  %2157 = getelementptr inbounds nuw i8, ptr %2115, i64 %2155
  %2158 = icmp ugt ptr %2157, %43
  br i1 %2158, label %.loopexit671, label %.preheader668, !llvm.loop !34

.preheader680:                                    ; preds = %2092, %2533
  %2159 = phi i64 [ %2415, %2533 ], [ %2100, %2092 ]
  %2160 = phi i32 [ %2517, %2533 ], [ %2104, %2092 ]
  %2161 = phi ptr [ %2519, %2533 ], [ %2106, %2092 ]
  %2162 = phi i64 [ %2417, %2533 ], [ %2102, %2092 ]
  %2163 = phi ptr [ %2164, %2533 ], [ %2097, %2092 ]
  %2164 = phi ptr [ %2536, %2533 ], [ %2093, %2092 ]
  %2165 = phi i64 [ %2534, %2533 ], [ 1, %2092 ]
  %2166 = phi ptr [ %2535, %2533 ], [ %2099, %2092 ]
  %2167 = mul i64 %2159, -3523014627193847808
  %2168 = lshr i64 %2167, %2082
  %2169 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %2168
  %2170 = load i32, ptr %2169, align 4, !tbaa !25
  %2171 = ptrtoint ptr %2163 to i64
  %2172 = sub i64 %2171, %24
  %2173 = trunc i64 %2172 to i32
  %2174 = zext i32 %2170 to i64
  %2175 = getelementptr inbounds nuw i8, ptr %22, i64 %2174
  store i32 %2173, ptr %2169, align 4, !tbaa !25
  %2176 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %2162
  store i32 %2173, ptr %2176, align 4, !tbaa !25
  %2177 = getelementptr inbounds nuw i8, ptr %2163, i64 1
  %2178 = getelementptr inbounds i8, ptr %2177, i64 %2109
  %2179 = load i32, ptr %2178, align 1, !tbaa !25
  %2180 = load i32, ptr %2177, align 1, !tbaa !25
  %2181 = icmp eq i32 %2179, %2180
  br i1 %2181, label %2182, label %2414

2182:                                             ; preds = %.preheader680
  %2183 = getelementptr inbounds nuw i8, ptr %2163, i64 5
  %2184 = getelementptr inbounds i8, ptr %2183, i64 %2109
  %2185 = icmp ult ptr %2183, %2083
  br i1 %2185, label %2186, label %.loopexit679

2186:                                             ; preds = %2182
  %2187 = load i64, ptr %2184, align 1, !tbaa !24
  %2188 = load i64, ptr %2183, align 1, !tbaa !24
  %2189 = icmp eq i64 %2187, %2188
  br i1 %2189, label %.preheader678, label %2190

2190:                                             ; preds = %2186
  %2191 = xor i64 %2188, %2187
  %2192 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2191, i1 true)
  %2193 = lshr i64 %2192, 3
  br label %2247

.preheader678:                                    ; preds = %2186, %2199
  %2194 = phi ptr [ %2197, %2199 ], [ %2184, %2186 ]
  %2195 = phi ptr [ %2196, %2199 ], [ %2183, %2186 ]
  %2196 = getelementptr inbounds nuw i8, ptr %2195, i64 8
  %2197 = getelementptr inbounds nuw i8, ptr %2194, i64 8
  %2198 = icmp ult ptr %2196, %2083
  br i1 %2198, label %2199, label %.loopexit679

2199:                                             ; preds = %.preheader678
  %2200 = load i64, ptr %2197, align 1, !tbaa !24
  %2201 = load i64, ptr %2196, align 1, !tbaa !24
  %2202 = icmp eq i64 %2200, %2201
  br i1 %2202, label %.preheader678, label %2203

2203:                                             ; preds = %2199
  %2204 = xor i64 %2201, %2200
  %2205 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2204, i1 true)
  %2206 = lshr i64 %2205, 3
  %2207 = getelementptr inbounds nuw i8, ptr %2196, i64 %2206
  %2208 = ptrtoint ptr %2207 to i64
  %2209 = ptrtoint ptr %2183 to i64
  %2210 = sub i64 %2208, %2209
  br label %2247

.loopexit679:                                     ; preds = %.preheader678, %2182
  %2211 = phi ptr [ %2184, %2182 ], [ %2197, %.preheader678 ]
  %2212 = phi ptr [ %2183, %2182 ], [ %2196, %.preheader678 ]
  %2213 = icmp ult ptr %2212, %2084
  br i1 %2213, label %2214, label %2221

2214:                                             ; preds = %.loopexit679
  %2215 = load i32, ptr %2211, align 1, !tbaa !25
  %2216 = load i32, ptr %2212, align 1, !tbaa !25
  %2217 = icmp eq i32 %2215, %2216
  br i1 %2217, label %2218, label %2221

2218:                                             ; preds = %2214
  %2219 = getelementptr inbounds nuw i8, ptr %2212, i64 4
  %2220 = getelementptr inbounds nuw i8, ptr %2211, i64 4
  br label %2221

2221:                                             ; preds = %2218, %2214, %.loopexit679
  %2222 = phi ptr [ %2220, %2218 ], [ %2211, %2214 ], [ %2211, %.loopexit679 ]
  %2223 = phi ptr [ %2219, %2218 ], [ %2212, %2214 ], [ %2212, %.loopexit679 ]
  %2224 = icmp ult ptr %2223, %2085
  br i1 %2224, label %2225, label %2232

2225:                                             ; preds = %2221
  %2226 = load i16, ptr %2222, align 1, !tbaa !35
  %2227 = load i16, ptr %2223, align 1, !tbaa !35
  %2228 = icmp eq i16 %2226, %2227
  br i1 %2228, label %2229, label %2232

2229:                                             ; preds = %2225
  %2230 = getelementptr inbounds nuw i8, ptr %2223, i64 2
  %2231 = getelementptr inbounds nuw i8, ptr %2222, i64 2
  br label %2232

2232:                                             ; preds = %2229, %2225, %2221
  %2233 = phi ptr [ %2231, %2229 ], [ %2222, %2225 ], [ %2222, %2221 ]
  %2234 = phi ptr [ %2230, %2229 ], [ %2223, %2225 ], [ %2223, %2221 ]
  %2235 = icmp ult ptr %2234, %42
  br i1 %2235, label %2236, label %2242

2236:                                             ; preds = %2232
  %2237 = load i8, ptr %2233, align 1, !tbaa !37
  %2238 = load i8, ptr %2234, align 1, !tbaa !37
  %2239 = icmp eq i8 %2237, %2238
  %2240 = zext i1 %2239 to i64
  %2241 = getelementptr inbounds nuw i8, ptr %2234, i64 %2240
  br label %2242

2242:                                             ; preds = %2236, %2232
  %2243 = phi ptr [ %2234, %2232 ], [ %2241, %2236 ]
  %2244 = ptrtoint ptr %2243 to i64
  %2245 = ptrtoint ptr %2183 to i64
  %2246 = sub i64 %2244, %2245
  br label %2247

2247:                                             ; preds = %2242, %2203, %2190
  %2248 = phi i64 [ %2246, %2242 ], [ %2193, %2190 ], [ %2210, %2203 ]
  %2249 = add i64 %2248, 4
  %2250 = ptrtoint ptr %2177 to i64
  %2251 = ptrtoint ptr %2094 to i64
  %2252 = sub i64 %2250, %2251
  %2253 = icmp ugt ptr %2177, %2086
  %2254 = load ptr, ptr %2087, align 8, !tbaa !38
  br i1 %2253, label %2277, label %2255

2255:                                             ; preds = %2247
  %2256 = load <2 x i64>, ptr %2094, align 1, !tbaa !37
  store <2 x i64> %2256, ptr %2254, align 1, !tbaa !37
  %2257 = icmp ugt i64 %2252, 16
  br i1 %2257, label %2258, label %2393

2258:                                             ; preds = %2255
  %2259 = load ptr, ptr %2087, align 8, !tbaa !38
  %2260 = getelementptr inbounds nuw i8, ptr %2259, i64 16
  %2261 = getelementptr inbounds nuw i8, ptr %2094, i64 16
  %2262 = getelementptr i8, ptr %2259, i64 %2252
  %2263 = load <2 x i64>, ptr %2261, align 1, !tbaa !37
  store <2 x i64> %2263, ptr %2260, align 1, !tbaa !37
  %2264 = icmp ult i64 %2252, 33
  br i1 %2264, label %2393, label %2265

2265:                                             ; preds = %2258
  %2266 = getelementptr inbounds nuw i8, ptr %2259, i64 32
  br label %2267

2267:                                             ; preds = %2267, %2265
  %2268 = phi ptr [ %2266, %2265 ], [ %2275, %2267 ]
  %2269 = phi ptr [ %2261, %2265 ], [ %2273, %2267 ]
  %2270 = getelementptr inbounds nuw i8, ptr %2269, i64 16
  %2271 = load <2 x i64>, ptr %2270, align 1, !tbaa !37
  store <2 x i64> %2271, ptr %2268, align 1, !tbaa !37
  %2272 = getelementptr inbounds nuw i8, ptr %2268, i64 16
  %2273 = getelementptr inbounds nuw i8, ptr %2269, i64 32
  %2274 = load <2 x i64>, ptr %2273, align 1, !tbaa !37
  store <2 x i64> %2274, ptr %2272, align 1, !tbaa !37
  %2275 = getelementptr inbounds nuw i8, ptr %2268, i64 32
  %2276 = icmp ult ptr %2275, %2262
  br i1 %2276, label %2267, label %.loopexit673, !llvm.loop !41

2277:                                             ; preds = %2247
  %2278 = icmp ugt ptr %2094, %2086
  br i1 %2278, label %.loopexit676, label %2279

2279:                                             ; preds = %2277
  %2280 = sub i64 %2088, %2251
  %2281 = getelementptr inbounds i8, ptr %2254, i64 %2280
  %2282 = load <2 x i64>, ptr %2094, align 1, !tbaa !37
  store <2 x i64> %2282, ptr %2254, align 1, !tbaa !37
  %2283 = icmp ult i64 %2280, 17
  br i1 %2283, label %.loopexit676, label %2284

2284:                                             ; preds = %2279
  %2285 = getelementptr inbounds nuw i8, ptr %2254, i64 16
  br label %2286

2286:                                             ; preds = %2286, %2284
  %2287 = phi ptr [ %2285, %2284 ], [ %2294, %2286 ]
  %2288 = phi ptr [ %2094, %2284 ], [ %2292, %2286 ]
  %2289 = getelementptr inbounds nuw i8, ptr %2288, i64 16
  %2290 = load <2 x i64>, ptr %2289, align 1, !tbaa !37
  store <2 x i64> %2290, ptr %2287, align 1, !tbaa !37
  %2291 = getelementptr inbounds nuw i8, ptr %2287, i64 16
  %2292 = getelementptr inbounds nuw i8, ptr %2288, i64 32
  %2293 = load <2 x i64>, ptr %2292, align 1, !tbaa !37
  store <2 x i64> %2293, ptr %2291, align 1, !tbaa !37
  %2294 = getelementptr inbounds nuw i8, ptr %2287, i64 32
  %2295 = icmp ult ptr %2294, %2281
  br i1 %2295, label %2286, label %.loopexit676, !llvm.loop !41

.loopexit676:                                     ; preds = %2286, %2279, %2277
  %2296 = phi ptr [ %2086, %2279 ], [ %2094, %2277 ], [ %2086, %2286 ]
  %2297 = phi ptr [ %2281, %2279 ], [ %2254, %2277 ], [ %2281, %2286 ]
  %2298 = icmp ult ptr %2296, %2177
  br i1 %2298, label %2299, label %.loopexit673

2299:                                             ; preds = %.loopexit676
  %2300 = ptrtoint ptr %2296 to i64
  %2301 = ptrtoint ptr %2297 to i64
  %2302 = sub i64 %2171, %2300
  %2303 = add i64 %2302, 1
  %2304 = icmp ult i64 %2303, 4
  %2305 = sub i64 %2301, %2300
  %2306 = icmp ult i64 %2305, 32
  %2307 = select i1 %2304, i1 true, i1 %2306
  br i1 %2307, label %2343, label %2308

2308:                                             ; preds = %2299
  %2309 = icmp ult i64 %2303, 32
  br i1 %2309, label %2329, label %2310

2310:                                             ; preds = %2308
  %2311 = and i64 %2303, -32
  br label %2312

2312:                                             ; preds = %2312, %2310
  %2313 = phi i64 [ 0, %2310 ], [ %2320, %2312 ]
  %2314 = getelementptr i8, ptr %2297, i64 %2313
  %2315 = getelementptr i8, ptr %2296, i64 %2313
  %2316 = getelementptr i8, ptr %2315, i64 16
  %2317 = load <16 x i8>, ptr %2315, align 1, !tbaa !37
  %2318 = load <16 x i8>, ptr %2316, align 1, !tbaa !37
  %2319 = getelementptr i8, ptr %2314, i64 16
  store <16 x i8> %2317, ptr %2314, align 1, !tbaa !37
  store <16 x i8> %2318, ptr %2319, align 1, !tbaa !37
  %2320 = add nuw i64 %2313, 32
  %2321 = icmp eq i64 %2320, %2311
  br i1 %2321, label %2322, label %2312, !llvm.loop !75

2322:                                             ; preds = %2312
  %2323 = icmp eq i64 %2303, %2311
  br i1 %2323, label %.loopexit673, label %2324

2324:                                             ; preds = %2322
  %2325 = getelementptr i8, ptr %2297, i64 %2311
  %2326 = getelementptr i8, ptr %2296, i64 %2311
  %2327 = and i64 %2303, 28
  %2328 = icmp eq i64 %2327, 0
  br i1 %2328, label %2343, label %2329

2329:                                             ; preds = %2324, %2308
  %2330 = phi i64 [ %2311, %2324 ], [ 0, %2308 ]
  %2331 = and i64 %2303, -4
  br label %2332

2332:                                             ; preds = %2332, %2329
  %2333 = phi i64 [ %2330, %2329 ], [ %2337, %2332 ]
  %2334 = getelementptr i8, ptr %2297, i64 %2333
  %2335 = getelementptr i8, ptr %2296, i64 %2333
  %2336 = load <4 x i8>, ptr %2335, align 1, !tbaa !37
  store <4 x i8> %2336, ptr %2334, align 1, !tbaa !37
  %2337 = add nuw i64 %2333, 4
  %2338 = icmp eq i64 %2337, %2331
  br i1 %2338, label %2339, label %2332, !llvm.loop !76

2339:                                             ; preds = %2332
  %2340 = getelementptr i8, ptr %2297, i64 %2331
  %2341 = getelementptr i8, ptr %2296, i64 %2331
  %2342 = icmp eq i64 %2303, %2331
  br i1 %2342, label %.loopexit673, label %2343

2343:                                             ; preds = %2339, %2324, %2299
  %2344 = phi ptr [ %2297, %2299 ], [ %2325, %2324 ], [ %2340, %2339 ]
  %2345 = phi ptr [ %2296, %2299 ], [ %2326, %2324 ], [ %2341, %2339 ]
  %2346 = ptrtoint ptr %2345 to i64
  %2347 = sub i64 %2171, %2346
  %2348 = add i64 %2347, 1
  %2349 = and i64 %2348, 7
  %2350 = and i64 %2347, 7
  %2351 = icmp eq i64 %2350, 7
  br i1 %2351, label %.preheader672.preheader, label %.preheader674.preheader

.preheader674.preheader:                          ; preds = %2343
  %2352 = ptrtoaddr ptr %2344 to i64
  %min.iters.check = icmp samesign ult i64 %2349, 4
  %2353 = sub i64 %2352, %2346
  %diff.check = icmp ult i64 %2353, 4
  %or.cond3333 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond3333, label %.preheader674.preheader3758, label %vector.ph

vector.ph:                                        ; preds = %.preheader674.preheader
  %n.vec = and i64 %2348, 4
  %2354 = getelementptr i8, ptr %2344, i64 %n.vec
  %2355 = getelementptr i8, ptr %2345, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i8, ptr %2344, i64 %index
  %next.gep3275 = getelementptr i8, ptr %2345, i64 %index
  %wide.load = load <4 x i8>, ptr %next.gep3275, align 1, !tbaa !37
  store <4 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 4
  %2356 = icmp eq i64 %index.next, %n.vec
  br i1 %2356, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2349, %n.vec
  br i1 %cmp.n, label %.loopexit675, label %.preheader674.preheader3758

.preheader674.preheader3758:                      ; preds = %.preheader674.preheader, %middle.block
  %.ph3759 = phi ptr [ %2344, %.preheader674.preheader ], [ %2354, %middle.block ]
  %.ph3760 = phi ptr [ %2345, %.preheader674.preheader ], [ %2355, %middle.block ]
  %.ph3761 = phi i64 [ 0, %.preheader674.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader674

.preheader674:                                    ; preds = %.preheader674.preheader3758, %.preheader674
  %2357 = phi ptr [ %2362, %.preheader674 ], [ %.ph3759, %.preheader674.preheader3758 ]
  %2358 = phi ptr [ %2360, %.preheader674 ], [ %.ph3760, %.preheader674.preheader3758 ]
  %2359 = phi i64 [ %2363, %.preheader674 ], [ %.ph3761, %.preheader674.preheader3758 ]
  %2360 = getelementptr inbounds nuw i8, ptr %2358, i64 1
  %2361 = load i8, ptr %2358, align 1, !tbaa !37
  %2362 = getelementptr inbounds nuw i8, ptr %2357, i64 1
  store i8 %2361, ptr %2357, align 1, !tbaa !37
  %2363 = add i64 %2359, 1
  %2364 = icmp eq i64 %2363, %2349
  br i1 %2364, label %.loopexit675, label %.preheader674, !llvm.loop !78

.loopexit675:                                     ; preds = %.preheader674, %middle.block
  %.lcssa3206 = phi ptr [ %2355, %middle.block ], [ %2360, %.preheader674 ]
  %.lcssa3205 = phi ptr [ %2354, %middle.block ], [ %2362, %.preheader674 ]
  %2365 = icmp ult i64 %2347, 7
  br i1 %2365, label %.loopexit673, label %.preheader672.preheader

.preheader672.preheader:                          ; preds = %2343, %.loopexit675
  %.ph3756 = phi ptr [ %2344, %2343 ], [ %.lcssa3205, %.loopexit675 ]
  %.ph3757 = phi ptr [ %2345, %2343 ], [ %.lcssa3206, %.loopexit675 ]
  br label %.preheader672

.preheader672:                                    ; preds = %.preheader672.preheader, %.preheader672
  %2366 = phi ptr [ %2391, %.preheader672 ], [ %.ph3756, %.preheader672.preheader ]
  %2367 = phi ptr [ %2389, %.preheader672 ], [ %.ph3757, %.preheader672.preheader ]
  %2368 = getelementptr inbounds nuw i8, ptr %2367, i64 1
  %2369 = load i8, ptr %2367, align 1, !tbaa !37
  %2370 = getelementptr inbounds nuw i8, ptr %2366, i64 1
  store i8 %2369, ptr %2366, align 1, !tbaa !37
  %2371 = getelementptr inbounds nuw i8, ptr %2367, i64 2
  %2372 = load i8, ptr %2368, align 1, !tbaa !37
  %2373 = getelementptr inbounds nuw i8, ptr %2366, i64 2
  store i8 %2372, ptr %2370, align 1, !tbaa !37
  %2374 = getelementptr inbounds nuw i8, ptr %2367, i64 3
  %2375 = load i8, ptr %2371, align 1, !tbaa !37
  %2376 = getelementptr inbounds nuw i8, ptr %2366, i64 3
  store i8 %2375, ptr %2373, align 1, !tbaa !37
  %2377 = getelementptr inbounds nuw i8, ptr %2367, i64 4
  %2378 = load i8, ptr %2374, align 1, !tbaa !37
  %2379 = getelementptr inbounds nuw i8, ptr %2366, i64 4
  store i8 %2378, ptr %2376, align 1, !tbaa !37
  %2380 = getelementptr inbounds nuw i8, ptr %2367, i64 5
  %2381 = load i8, ptr %2377, align 1, !tbaa !37
  %2382 = getelementptr inbounds nuw i8, ptr %2366, i64 5
  store i8 %2381, ptr %2379, align 1, !tbaa !37
  %2383 = getelementptr inbounds nuw i8, ptr %2367, i64 6
  %2384 = load i8, ptr %2380, align 1, !tbaa !37
  %2385 = getelementptr inbounds nuw i8, ptr %2366, i64 6
  store i8 %2384, ptr %2382, align 1, !tbaa !37
  %2386 = getelementptr inbounds nuw i8, ptr %2367, i64 7
  %2387 = load i8, ptr %2383, align 1, !tbaa !37
  %2388 = getelementptr inbounds nuw i8, ptr %2366, i64 7
  store i8 %2387, ptr %2385, align 1, !tbaa !37
  %2389 = getelementptr inbounds nuw i8, ptr %2367, i64 8
  %2390 = load i8, ptr %2386, align 1, !tbaa !37
  %2391 = getelementptr inbounds nuw i8, ptr %2366, i64 8
  store i8 %2390, ptr %2388, align 1, !tbaa !37
  %2392 = icmp eq ptr %2386, %2163
  br i1 %2392, label %.loopexit673, label %.preheader672, !llvm.loop !79

2393:                                             ; preds = %2258, %2255
  %2394 = load ptr, ptr %2087, align 8, !tbaa !38
  %2395 = getelementptr inbounds nuw i8, ptr %2394, i64 %2252
  store ptr %2395, ptr %2087, align 8, !tbaa !38
  %2396 = load ptr, ptr %2090, align 8, !tbaa !50
  br label %2408

.loopexit673:                                     ; preds = %2267, %.preheader672, %.loopexit675, %2339, %2322, %.loopexit676
  %2397 = load ptr, ptr %2087, align 8, !tbaa !38
  %2398 = getelementptr inbounds nuw i8, ptr %2397, i64 %2252
  store ptr %2398, ptr %2087, align 8, !tbaa !38
  %2399 = icmp ugt i64 %2252, 65535
  %2400 = load ptr, ptr %2090, align 8, !tbaa !50
  br i1 %2399, label %2401, label %2408, !prof !51

2401:                                             ; preds = %.loopexit673
  store i32 1, ptr %2089, align 8, !tbaa !52
  %2402 = load ptr, ptr %1, align 8, !tbaa !53
  %2403 = ptrtoint ptr %2400 to i64
  %2404 = ptrtoint ptr %2402 to i64
  %2405 = sub i64 %2403, %2404
  %2406 = lshr exact i64 %2405, 3
  %2407 = trunc i64 %2406 to i32
  store i32 %2407, ptr %2091, align 4, !tbaa !54
  br label %2408

2408:                                             ; preds = %2401, %.loopexit673, %2393
  %2409 = phi ptr [ %2396, %2393 ], [ %2400, %2401 ], [ %2400, %.loopexit673 ]
  %2410 = trunc i64 %2252 to i16
  %2411 = getelementptr inbounds nuw i8, ptr %2409, i64 4
  store i16 %2410, ptr %2411, align 4, !tbaa !55
  store i32 1, ptr %2409, align 4, !tbaa !57
  %2412 = add i64 %2248, 1
  %2413 = icmp ugt i64 %2412, 65535
  br i1 %2413, label %2890, label %2904, !prof !58

2414:                                             ; preds = %.preheader680
  %2415 = load i64, ptr %2164, align 1, !tbaa !24
  %2416 = mul i64 %2415, -3523014627327384477
  %2417 = lshr i64 %2416, %2080
  %2418 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %2160, i32 %39, ptr nonnull readnone %7, ptr readnone %2161) #9, !srcloc !33
  %2419 = load i64, ptr %2418, align 1, !tbaa !24
  %2420 = icmp eq i64 %2419, %2159
  %2421 = icmp eq ptr %2418, %2161
  %2422 = select i1 %2420, i1 %2421, i1 false
  br i1 %2422, label %.loopexit669, label %2515

.loopexit669:                                     ; preds = %2414, %.preheader668
  %2423 = phi i64 [ %2128, %.preheader668 ], [ %2417, %2414 ]
  %2424 = phi ptr [ %2112, %.preheader668 ], [ %2161, %2414 ]
  %2425 = phi ptr [ %2114, %.preheader668 ], [ %2163, %2414 ]
  %2426 = phi ptr [ %2115, %.preheader668 ], [ %2164, %2414 ]
  %2427 = phi i64 [ %2116, %.preheader668 ], [ %2165, %2414 ]
  %2428 = phi i64 [ %2122, %.preheader668 ], [ %2171, %2414 ]
  %2429 = phi i32 [ %2124, %.preheader668 ], [ %2173, %2414 ]
  %2430 = getelementptr inbounds nuw i8, ptr %2425, i64 8
  %2431 = getelementptr inbounds nuw i8, ptr %2424, i64 8
  %2432 = icmp ult ptr %2430, %2083
  br i1 %2432, label %2433, label %.loopexit659

2433:                                             ; preds = %.loopexit669
  %2434 = load i64, ptr %2431, align 1, !tbaa !24
  %2435 = load i64, ptr %2430, align 1, !tbaa !24
  %2436 = icmp eq i64 %2434, %2435
  br i1 %2436, label %.preheader658, label %2437

2437:                                             ; preds = %2433
  %2438 = xor i64 %2435, %2434
  %2439 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2438, i1 true)
  %2440 = lshr i64 %2439, 3
  br label %2494

.preheader658:                                    ; preds = %2433, %2446
  %2441 = phi ptr [ %2444, %2446 ], [ %2431, %2433 ]
  %2442 = phi ptr [ %2443, %2446 ], [ %2430, %2433 ]
  %2443 = getelementptr inbounds nuw i8, ptr %2442, i64 8
  %2444 = getelementptr inbounds nuw i8, ptr %2441, i64 8
  %2445 = icmp ult ptr %2443, %2083
  br i1 %2445, label %2446, label %.loopexit659

2446:                                             ; preds = %.preheader658
  %2447 = load i64, ptr %2444, align 1, !tbaa !24
  %2448 = load i64, ptr %2443, align 1, !tbaa !24
  %2449 = icmp eq i64 %2447, %2448
  br i1 %2449, label %.preheader658, label %2450

2450:                                             ; preds = %2446
  %2451 = xor i64 %2448, %2447
  %2452 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2451, i1 true)
  %2453 = lshr i64 %2452, 3
  %2454 = getelementptr inbounds nuw i8, ptr %2443, i64 %2453
  %2455 = ptrtoint ptr %2454 to i64
  %2456 = ptrtoint ptr %2430 to i64
  %2457 = sub i64 %2455, %2456
  br label %2494

.loopexit659:                                     ; preds = %.preheader658, %.loopexit669
  %2458 = phi ptr [ %2431, %.loopexit669 ], [ %2444, %.preheader658 ]
  %2459 = phi ptr [ %2430, %.loopexit669 ], [ %2443, %.preheader658 ]
  %2460 = icmp ult ptr %2459, %2084
  br i1 %2460, label %2461, label %2468

2461:                                             ; preds = %.loopexit659
  %2462 = load i32, ptr %2458, align 1, !tbaa !25
  %2463 = load i32, ptr %2459, align 1, !tbaa !25
  %2464 = icmp eq i32 %2462, %2463
  br i1 %2464, label %2465, label %2468

2465:                                             ; preds = %2461
  %2466 = getelementptr inbounds nuw i8, ptr %2459, i64 4
  %2467 = getelementptr inbounds nuw i8, ptr %2458, i64 4
  br label %2468

2468:                                             ; preds = %2465, %2461, %.loopexit659
  %2469 = phi ptr [ %2467, %2465 ], [ %2458, %2461 ], [ %2458, %.loopexit659 ]
  %2470 = phi ptr [ %2466, %2465 ], [ %2459, %2461 ], [ %2459, %.loopexit659 ]
  %2471 = icmp ult ptr %2470, %2085
  br i1 %2471, label %2472, label %2479

2472:                                             ; preds = %2468
  %2473 = load i16, ptr %2469, align 1, !tbaa !35
  %2474 = load i16, ptr %2470, align 1, !tbaa !35
  %2475 = icmp eq i16 %2473, %2474
  br i1 %2475, label %2476, label %2479

2476:                                             ; preds = %2472
  %2477 = getelementptr inbounds nuw i8, ptr %2470, i64 2
  %2478 = getelementptr inbounds nuw i8, ptr %2469, i64 2
  br label %2479

2479:                                             ; preds = %2476, %2472, %2468
  %2480 = phi ptr [ %2478, %2476 ], [ %2469, %2472 ], [ %2469, %2468 ]
  %2481 = phi ptr [ %2477, %2476 ], [ %2470, %2472 ], [ %2470, %2468 ]
  %2482 = icmp ult ptr %2481, %42
  br i1 %2482, label %2483, label %2489

2483:                                             ; preds = %2479
  %2484 = load i8, ptr %2480, align 1, !tbaa !37
  %2485 = load i8, ptr %2481, align 1, !tbaa !37
  %2486 = icmp eq i8 %2484, %2485
  %2487 = zext i1 %2486 to i64
  %2488 = getelementptr inbounds nuw i8, ptr %2481, i64 %2487
  br label %2489

2489:                                             ; preds = %2483, %2479
  %2490 = phi ptr [ %2481, %2479 ], [ %2488, %2483 ]
  %2491 = ptrtoint ptr %2490 to i64
  %2492 = ptrtoint ptr %2430 to i64
  %2493 = sub i64 %2491, %2492
  br label %2494

2494:                                             ; preds = %2489, %2450, %2437
  %2495 = phi i64 [ %2493, %2489 ], [ %2440, %2437 ], [ %2457, %2450 ]
  %2496 = add i64 %2495, 8
  %2497 = ptrtoint ptr %2424 to i64
  %2498 = sub i64 %2428, %2497
  %2499 = icmp ugt ptr %2425, %2094
  %2500 = icmp ugt ptr %2424, %41
  %2501 = and i1 %2500, %2499
  br i1 %2501, label %.preheader654, label %.loopexit655

.preheader654:                                    ; preds = %2494, %2510
  %2502 = phi i64 [ %2511, %2510 ], [ %2496, %2494 ]
  %2503 = phi ptr [ %2505, %2510 ], [ %2425, %2494 ]
  %2504 = phi ptr [ %2507, %2510 ], [ %2424, %2494 ]
  %2505 = getelementptr inbounds i8, ptr %2503, i64 -1
  %2506 = load i8, ptr %2505, align 1, !tbaa !37
  %2507 = getelementptr inbounds i8, ptr %2504, i64 -1
  %2508 = load i8, ptr %2507, align 1, !tbaa !37
  %2509 = icmp eq i8 %2506, %2508
  br i1 %2509, label %2510, label %.loopexit655

2510:                                             ; preds = %.preheader654
  %2511 = add i64 %2502, 1
  %2512 = icmp ugt ptr %2505, %2094
  %2513 = icmp ugt ptr %2507, %41
  %2514 = and i1 %2512, %2513
  br i1 %2514, label %.preheader654, label %.loopexit655, !llvm.loop !59

2515:                                             ; preds = %2414
  %2516 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %2417
  %2517 = load i32, ptr %2516, align 4, !tbaa !25
  %2518 = zext i32 %2517 to i64
  %2519 = getelementptr inbounds nuw i8, ptr %22, i64 %2518
  %2520 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %2170, i32 %39, ptr nonnull readnone %7, ptr readnone %2175) #9, !srcloc !33
  %2521 = load i32, ptr %2520, align 1, !tbaa !25
  %2522 = load i32, ptr %2163, align 1, !tbaa !25
  %2523 = icmp eq i32 %2521, %2522
  %2524 = icmp eq ptr %2520, %2175
  %2525 = select i1 %2523, i1 %2524, i1 false
  br i1 %2525, label %.loopexit670, label %2526

2526:                                             ; preds = %2515
  %2527 = icmp ult ptr %2164, %2166
  br i1 %2527, label %2533, label %2528

2528:                                             ; preds = %2526
  %2529 = getelementptr inbounds nuw i8, ptr %2164, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %2529, i32 0, i32 3, i32 1)
  %2530 = getelementptr inbounds nuw i8, ptr %2164, i64 128
  call void @llvm.prefetch.p0(ptr nonnull %2530, i32 0, i32 3, i32 1)
  %2531 = add i64 %2165, 1
  %2532 = getelementptr inbounds nuw i8, ptr %2166, i64 256
  br label %2533

2533:                                             ; preds = %2528, %2526
  %2534 = phi i64 [ %2531, %2528 ], [ %2165, %2526 ]
  %2535 = phi ptr [ %2532, %2528 ], [ %2166, %2526 ]
  %2536 = getelementptr inbounds nuw i8, ptr %2164, i64 %2534
  %2537 = icmp ugt ptr %2536, %43
  br i1 %2537, label %.loopexit671, label %.preheader680, !llvm.loop !34

.loopexit670:                                     ; preds = %2515, %2134
  %2538 = phi i64 [ %2126, %2134 ], [ %2415, %2515 ]
  %2539 = phi i32 [ %2138, %2134 ], [ %2517, %2515 ]
  %2540 = phi ptr [ %2140, %2134 ], [ %2519, %2515 ]
  %2541 = phi i64 [ %2128, %2134 ], [ %2417, %2515 ]
  %2542 = phi ptr [ %2114, %2134 ], [ %2163, %2515 ]
  %2543 = phi ptr [ %2115, %2134 ], [ %2164, %2515 ]
  %2544 = phi i64 [ %2116, %2134 ], [ %2165, %2515 ]
  %2545 = phi i32 [ %2124, %2134 ], [ %2173, %2515 ]
  %2546 = phi ptr [ %2136, %2134 ], [ %2175, %2515 ]
  %2547 = getelementptr inbounds nuw i8, ptr %2542, i64 4
  %2548 = getelementptr inbounds nuw i8, ptr %2546, i64 4
  %2549 = icmp ult ptr %2547, %2083
  br i1 %2549, label %2550, label %.loopexit667

2550:                                             ; preds = %.loopexit670
  %2551 = load i64, ptr %2548, align 1, !tbaa !24
  %2552 = load i64, ptr %2547, align 1, !tbaa !24
  %2553 = icmp eq i64 %2551, %2552
  br i1 %2553, label %.preheader666, label %2554

2554:                                             ; preds = %2550
  %2555 = xor i64 %2552, %2551
  %2556 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2555, i1 true)
  %2557 = lshr i64 %2556, 3
  br label %2611

.preheader666:                                    ; preds = %2550, %2563
  %2558 = phi ptr [ %2561, %2563 ], [ %2548, %2550 ]
  %2559 = phi ptr [ %2560, %2563 ], [ %2547, %2550 ]
  %2560 = getelementptr inbounds nuw i8, ptr %2559, i64 8
  %2561 = getelementptr inbounds nuw i8, ptr %2558, i64 8
  %2562 = icmp ult ptr %2560, %2083
  br i1 %2562, label %2563, label %.loopexit667

2563:                                             ; preds = %.preheader666
  %2564 = load i64, ptr %2561, align 1, !tbaa !24
  %2565 = load i64, ptr %2560, align 1, !tbaa !24
  %2566 = icmp eq i64 %2564, %2565
  br i1 %2566, label %.preheader666, label %2567

2567:                                             ; preds = %2563
  %2568 = xor i64 %2565, %2564
  %2569 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2568, i1 true)
  %2570 = lshr i64 %2569, 3
  %2571 = getelementptr inbounds nuw i8, ptr %2560, i64 %2570
  %2572 = ptrtoint ptr %2571 to i64
  %2573 = ptrtoint ptr %2547 to i64
  %2574 = sub i64 %2572, %2573
  br label %2611

.loopexit667:                                     ; preds = %.preheader666, %.loopexit670
  %2575 = phi ptr [ %2548, %.loopexit670 ], [ %2561, %.preheader666 ]
  %2576 = phi ptr [ %2547, %.loopexit670 ], [ %2560, %.preheader666 ]
  %2577 = icmp ult ptr %2576, %2084
  br i1 %2577, label %2578, label %2585

2578:                                             ; preds = %.loopexit667
  %2579 = load i32, ptr %2575, align 1, !tbaa !25
  %2580 = load i32, ptr %2576, align 1, !tbaa !25
  %2581 = icmp eq i32 %2579, %2580
  br i1 %2581, label %2582, label %2585

2582:                                             ; preds = %2578
  %2583 = getelementptr inbounds nuw i8, ptr %2576, i64 4
  %2584 = getelementptr inbounds nuw i8, ptr %2575, i64 4
  br label %2585

2585:                                             ; preds = %2582, %2578, %.loopexit667
  %2586 = phi ptr [ %2584, %2582 ], [ %2575, %2578 ], [ %2575, %.loopexit667 ]
  %2587 = phi ptr [ %2583, %2582 ], [ %2576, %2578 ], [ %2576, %.loopexit667 ]
  %2588 = icmp ult ptr %2587, %2085
  br i1 %2588, label %2589, label %2596

2589:                                             ; preds = %2585
  %2590 = load i16, ptr %2586, align 1, !tbaa !35
  %2591 = load i16, ptr %2587, align 1, !tbaa !35
  %2592 = icmp eq i16 %2590, %2591
  br i1 %2592, label %2593, label %2596

2593:                                             ; preds = %2589
  %2594 = getelementptr inbounds nuw i8, ptr %2587, i64 2
  %2595 = getelementptr inbounds nuw i8, ptr %2586, i64 2
  br label %2596

2596:                                             ; preds = %2593, %2589, %2585
  %2597 = phi ptr [ %2595, %2593 ], [ %2586, %2589 ], [ %2586, %2585 ]
  %2598 = phi ptr [ %2594, %2593 ], [ %2587, %2589 ], [ %2587, %2585 ]
  %2599 = icmp ult ptr %2598, %42
  br i1 %2599, label %2600, label %2606

2600:                                             ; preds = %2596
  %2601 = load i8, ptr %2597, align 1, !tbaa !37
  %2602 = load i8, ptr %2598, align 1, !tbaa !37
  %2603 = icmp eq i8 %2601, %2602
  %2604 = zext i1 %2603 to i64
  %2605 = getelementptr inbounds nuw i8, ptr %2598, i64 %2604
  br label %2606

2606:                                             ; preds = %2600, %2596
  %2607 = phi ptr [ %2598, %2596 ], [ %2605, %2600 ]
  %2608 = ptrtoint ptr %2607 to i64
  %2609 = ptrtoint ptr %2547 to i64
  %2610 = sub i64 %2608, %2609
  br label %2611

2611:                                             ; preds = %2606, %2567, %2554
  %2612 = phi i64 [ %2610, %2606 ], [ %2557, %2554 ], [ %2574, %2567 ]
  %2613 = add i64 %2612, 4
  %2614 = ptrtoint ptr %2542 to i64
  %2615 = ptrtoint ptr %2546 to i64
  %2616 = sub i64 %2614, %2615
  %2617 = icmp ugt i32 %2539, %39
  br i1 %2617, label %2618, label %2694

2618:                                             ; preds = %2611
  %2619 = load i64, ptr %2540, align 1, !tbaa !24
  %2620 = icmp eq i64 %2619, %2538
  br i1 %2620, label %2621, label %2694

2621:                                             ; preds = %2618
  %2622 = getelementptr inbounds nuw i8, ptr %2543, i64 8
  %2623 = getelementptr inbounds nuw i8, ptr %2540, i64 8
  %2624 = icmp ult ptr %2622, %2083
  br i1 %2624, label %2625, label %.loopexit665

2625:                                             ; preds = %2621
  %2626 = load i64, ptr %2623, align 1, !tbaa !24
  %2627 = load i64, ptr %2622, align 1, !tbaa !24
  %2628 = icmp eq i64 %2626, %2627
  br i1 %2628, label %.preheader664, label %2629

2629:                                             ; preds = %2625
  %2630 = xor i64 %2627, %2626
  %2631 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2630, i1 true)
  %2632 = lshr i64 %2631, 3
  br label %2686

.preheader664:                                    ; preds = %2625, %2638
  %2633 = phi ptr [ %2636, %2638 ], [ %2623, %2625 ]
  %2634 = phi ptr [ %2635, %2638 ], [ %2622, %2625 ]
  %2635 = getelementptr inbounds nuw i8, ptr %2634, i64 8
  %2636 = getelementptr inbounds nuw i8, ptr %2633, i64 8
  %2637 = icmp ult ptr %2635, %2083
  br i1 %2637, label %2638, label %.loopexit665

2638:                                             ; preds = %.preheader664
  %2639 = load i64, ptr %2636, align 1, !tbaa !24
  %2640 = load i64, ptr %2635, align 1, !tbaa !24
  %2641 = icmp eq i64 %2639, %2640
  br i1 %2641, label %.preheader664, label %2642

2642:                                             ; preds = %2638
  %2643 = xor i64 %2640, %2639
  %2644 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2643, i1 true)
  %2645 = lshr i64 %2644, 3
  %2646 = getelementptr inbounds nuw i8, ptr %2635, i64 %2645
  %2647 = ptrtoint ptr %2646 to i64
  %2648 = ptrtoint ptr %2622 to i64
  %2649 = sub i64 %2647, %2648
  br label %2686

.loopexit665:                                     ; preds = %.preheader664, %2621
  %2650 = phi ptr [ %2623, %2621 ], [ %2636, %.preheader664 ]
  %2651 = phi ptr [ %2622, %2621 ], [ %2635, %.preheader664 ]
  %2652 = icmp ult ptr %2651, %2084
  br i1 %2652, label %2653, label %2660

2653:                                             ; preds = %.loopexit665
  %2654 = load i32, ptr %2650, align 1, !tbaa !25
  %2655 = load i32, ptr %2651, align 1, !tbaa !25
  %2656 = icmp eq i32 %2654, %2655
  br i1 %2656, label %2657, label %2660

2657:                                             ; preds = %2653
  %2658 = getelementptr inbounds nuw i8, ptr %2651, i64 4
  %2659 = getelementptr inbounds nuw i8, ptr %2650, i64 4
  br label %2660

2660:                                             ; preds = %2657, %2653, %.loopexit665
  %2661 = phi ptr [ %2659, %2657 ], [ %2650, %2653 ], [ %2650, %.loopexit665 ]
  %2662 = phi ptr [ %2658, %2657 ], [ %2651, %2653 ], [ %2651, %.loopexit665 ]
  %2663 = icmp ult ptr %2662, %2085
  br i1 %2663, label %2664, label %2671

2664:                                             ; preds = %2660
  %2665 = load i16, ptr %2661, align 1, !tbaa !35
  %2666 = load i16, ptr %2662, align 1, !tbaa !35
  %2667 = icmp eq i16 %2665, %2666
  br i1 %2667, label %2668, label %2671

2668:                                             ; preds = %2664
  %2669 = getelementptr inbounds nuw i8, ptr %2662, i64 2
  %2670 = getelementptr inbounds nuw i8, ptr %2661, i64 2
  br label %2671

2671:                                             ; preds = %2668, %2664, %2660
  %2672 = phi ptr [ %2670, %2668 ], [ %2661, %2664 ], [ %2661, %2660 ]
  %2673 = phi ptr [ %2669, %2668 ], [ %2662, %2664 ], [ %2662, %2660 ]
  %2674 = icmp ult ptr %2673, %42
  br i1 %2674, label %2675, label %2681

2675:                                             ; preds = %2671
  %2676 = load i8, ptr %2672, align 1, !tbaa !37
  %2677 = load i8, ptr %2673, align 1, !tbaa !37
  %2678 = icmp eq i8 %2676, %2677
  %2679 = zext i1 %2678 to i64
  %2680 = getelementptr inbounds nuw i8, ptr %2673, i64 %2679
  br label %2681

2681:                                             ; preds = %2675, %2671
  %2682 = phi ptr [ %2673, %2671 ], [ %2680, %2675 ]
  %2683 = ptrtoint ptr %2682 to i64
  %2684 = ptrtoint ptr %2622 to i64
  %2685 = sub i64 %2683, %2684
  br label %2686

2686:                                             ; preds = %2681, %2642, %2629
  %2687 = phi i64 [ %2685, %2681 ], [ %2632, %2629 ], [ %2649, %2642 ]
  %2688 = add i64 %2687, 8
  %2689 = icmp ugt i64 %2688, %2613
  br i1 %2689, label %2690, label %2694

2690:                                             ; preds = %2686
  %2691 = ptrtoint ptr %2543 to i64
  %2692 = ptrtoint ptr %2540 to i64
  %2693 = sub i64 %2691, %2692
  br label %2694

2694:                                             ; preds = %2690, %2686, %2618, %2611
  %2695 = phi ptr [ %2546, %2618 ], [ %2546, %2611 ], [ %2540, %2690 ], [ %2546, %2686 ]
  %2696 = phi ptr [ %2542, %2618 ], [ %2542, %2611 ], [ %2543, %2690 ], [ %2542, %2686 ]
  %2697 = phi i64 [ %2616, %2618 ], [ %2616, %2611 ], [ %2693, %2690 ], [ %2616, %2686 ]
  %2698 = phi i64 [ %2613, %2618 ], [ %2613, %2611 ], [ %2688, %2690 ], [ %2613, %2686 ]
  %2699 = icmp ugt ptr %2696, %2094
  %2700 = icmp ugt ptr %2695, %41
  %2701 = and i1 %2700, %2699
  br i1 %2701, label %.preheader660, label %.loopexit655

.preheader660:                                    ; preds = %2694, %2710
  %2702 = phi i64 [ %2711, %2710 ], [ %2698, %2694 ]
  %2703 = phi ptr [ %2705, %2710 ], [ %2696, %2694 ]
  %2704 = phi ptr [ %2707, %2710 ], [ %2695, %2694 ]
  %2705 = getelementptr inbounds i8, ptr %2703, i64 -1
  %2706 = load i8, ptr %2705, align 1, !tbaa !37
  %2707 = getelementptr inbounds i8, ptr %2704, i64 -1
  %2708 = load i8, ptr %2707, align 1, !tbaa !37
  %2709 = icmp eq i8 %2706, %2708
  br i1 %2709, label %2710, label %.loopexit655

2710:                                             ; preds = %.preheader660
  %2711 = add i64 %2702, 1
  %2712 = icmp ugt ptr %2705, %2094
  %2713 = icmp ugt ptr %2707, %41
  %2714 = and i1 %2712, %2713
  br i1 %2714, label %.preheader660, label %.loopexit655, !llvm.loop !60

.loopexit655:                                     ; preds = %2710, %.preheader660, %2510, %.preheader654, %2694, %2494
  %2715 = phi i64 [ %2423, %2494 ], [ %2541, %2694 ], [ %2423, %2510 ], [ %2423, %.preheader654 ], [ %2541, %.preheader660 ], [ %2541, %2710 ]
  %2716 = phi ptr [ %2426, %2494 ], [ %2543, %2694 ], [ %2426, %2510 ], [ %2426, %.preheader654 ], [ %2543, %.preheader660 ], [ %2543, %2710 ]
  %2717 = phi i64 [ %2427, %2494 ], [ %2544, %2694 ], [ %2427, %2510 ], [ %2427, %.preheader654 ], [ %2544, %.preheader660 ], [ %2544, %2710 ]
  %2718 = phi i32 [ %2429, %2494 ], [ %2545, %2694 ], [ %2429, %2510 ], [ %2429, %.preheader654 ], [ %2545, %.preheader660 ], [ %2545, %2710 ]
  %2719 = phi ptr [ %2425, %2494 ], [ %2696, %2694 ], [ %2505, %2510 ], [ %2503, %.preheader654 ], [ %2705, %2710 ], [ %2703, %.preheader660 ]
  %2720 = phi i64 [ %2498, %2494 ], [ %2697, %2694 ], [ %2498, %2510 ], [ %2498, %.preheader654 ], [ %2697, %.preheader660 ], [ %2697, %2710 ]
  %2721 = phi i64 [ %2496, %2494 ], [ %2698, %2694 ], [ %2511, %2510 ], [ %2502, %.preheader654 ], [ %2711, %2710 ], [ %2702, %.preheader660 ]
  %2722 = trunc i64 %2720 to i32
  %2723 = icmp ult i64 %2717, 4
  br i1 %2723, label %2724, label %2729

2724:                                             ; preds = %.loopexit655
  %2725 = ptrtoint ptr %2716 to i64
  %2726 = sub i64 %2725, %24
  %2727 = trunc i64 %2726 to i32
  %2728 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %2715
  store i32 %2727, ptr %2728, align 4, !tbaa !25
  br label %2729

2729:                                             ; preds = %2724, %.loopexit655
  %2730 = ptrtoint ptr %2719 to i64
  %2731 = ptrtoint ptr %2094 to i64
  %2732 = sub i64 %2730, %2731
  %2733 = add i32 %2722, 3
  %2734 = icmp ugt ptr %2719, %2086
  %2735 = load ptr, ptr %2087, align 8, !tbaa !38
  br i1 %2734, label %2758, label %2736

2736:                                             ; preds = %2729
  %2737 = load <2 x i64>, ptr %2094, align 1, !tbaa !37
  store <2 x i64> %2737, ptr %2735, align 1, !tbaa !37
  %2738 = icmp ugt i64 %2732, 16
  br i1 %2738, label %2739, label %2869

2739:                                             ; preds = %2736
  %2740 = load ptr, ptr %2087, align 8, !tbaa !38
  %2741 = getelementptr inbounds nuw i8, ptr %2740, i64 16
  %2742 = getelementptr inbounds nuw i8, ptr %2094, i64 16
  %2743 = getelementptr i8, ptr %2740, i64 %2732
  %2744 = load <2 x i64>, ptr %2742, align 1, !tbaa !37
  store <2 x i64> %2744, ptr %2741, align 1, !tbaa !37
  %2745 = icmp ult i64 %2732, 33
  br i1 %2745, label %2869, label %2746

2746:                                             ; preds = %2739
  %2747 = getelementptr inbounds nuw i8, ptr %2740, i64 32
  br label %2748

2748:                                             ; preds = %2748, %2746
  %2749 = phi ptr [ %2747, %2746 ], [ %2756, %2748 ]
  %2750 = phi ptr [ %2742, %2746 ], [ %2754, %2748 ]
  %2751 = getelementptr inbounds nuw i8, ptr %2750, i64 16
  %2752 = load <2 x i64>, ptr %2751, align 1, !tbaa !37
  store <2 x i64> %2752, ptr %2749, align 1, !tbaa !37
  %2753 = getelementptr inbounds nuw i8, ptr %2749, i64 16
  %2754 = getelementptr inbounds nuw i8, ptr %2750, i64 32
  %2755 = load <2 x i64>, ptr %2754, align 1, !tbaa !37
  store <2 x i64> %2755, ptr %2753, align 1, !tbaa !37
  %2756 = getelementptr inbounds nuw i8, ptr %2749, i64 32
  %2757 = icmp ult ptr %2756, %2743
  br i1 %2757, label %2748, label %.loopexit649, !llvm.loop !41

2758:                                             ; preds = %2729
  %2759 = icmp ugt ptr %2094, %2086
  br i1 %2759, label %.loopexit652, label %2760

2760:                                             ; preds = %2758
  %2761 = sub i64 %2088, %2731
  %2762 = getelementptr inbounds i8, ptr %2735, i64 %2761
  %2763 = load <2 x i64>, ptr %2094, align 1, !tbaa !37
  store <2 x i64> %2763, ptr %2735, align 1, !tbaa !37
  %2764 = icmp ult i64 %2761, 17
  br i1 %2764, label %.loopexit652, label %2765

2765:                                             ; preds = %2760
  %2766 = getelementptr inbounds nuw i8, ptr %2735, i64 16
  br label %2767

2767:                                             ; preds = %2767, %2765
  %2768 = phi ptr [ %2766, %2765 ], [ %2775, %2767 ]
  %2769 = phi ptr [ %2094, %2765 ], [ %2773, %2767 ]
  %2770 = getelementptr inbounds nuw i8, ptr %2769, i64 16
  %2771 = load <2 x i64>, ptr %2770, align 1, !tbaa !37
  store <2 x i64> %2771, ptr %2768, align 1, !tbaa !37
  %2772 = getelementptr inbounds nuw i8, ptr %2768, i64 16
  %2773 = getelementptr inbounds nuw i8, ptr %2769, i64 32
  %2774 = load <2 x i64>, ptr %2773, align 1, !tbaa !37
  store <2 x i64> %2774, ptr %2772, align 1, !tbaa !37
  %2775 = getelementptr inbounds nuw i8, ptr %2768, i64 32
  %2776 = icmp ult ptr %2775, %2762
  br i1 %2776, label %2767, label %.loopexit652, !llvm.loop !41

.loopexit652:                                     ; preds = %2767, %2760, %2758
  %2777 = phi ptr [ %2086, %2760 ], [ %2094, %2758 ], [ %2086, %2767 ]
  %2778 = phi ptr [ %2762, %2760 ], [ %2735, %2758 ], [ %2762, %2767 ]
  %2779 = icmp ult ptr %2777, %2719
  br i1 %2779, label %2780, label %.loopexit649

2780:                                             ; preds = %.loopexit652
  %2781 = ptrtoint ptr %2777 to i64
  %2782 = ptrtoint ptr %2778 to i64
  %2783 = sub i64 %2730, %2781
  %2784 = icmp ult i64 %2783, 4
  %2785 = sub i64 %2782, %2781
  %2786 = icmp ult i64 %2785, 32
  %2787 = select i1 %2784, i1 true, i1 %2786
  br i1 %2787, label %2823, label %2788

2788:                                             ; preds = %2780
  %2789 = icmp ult i64 %2783, 32
  br i1 %2789, label %2809, label %2790

2790:                                             ; preds = %2788
  %2791 = and i64 %2783, -32
  br label %2792

2792:                                             ; preds = %2792, %2790
  %2793 = phi i64 [ 0, %2790 ], [ %2800, %2792 ]
  %2794 = getelementptr i8, ptr %2778, i64 %2793
  %2795 = getelementptr i8, ptr %2777, i64 %2793
  %2796 = getelementptr i8, ptr %2795, i64 16
  %2797 = load <16 x i8>, ptr %2795, align 1, !tbaa !37
  %2798 = load <16 x i8>, ptr %2796, align 1, !tbaa !37
  %2799 = getelementptr i8, ptr %2794, i64 16
  store <16 x i8> %2797, ptr %2794, align 1, !tbaa !37
  store <16 x i8> %2798, ptr %2799, align 1, !tbaa !37
  %2800 = add nuw i64 %2793, 32
  %2801 = icmp eq i64 %2800, %2791
  br i1 %2801, label %2802, label %2792, !llvm.loop !80

2802:                                             ; preds = %2792
  %2803 = icmp eq i64 %2783, %2791
  br i1 %2803, label %.loopexit649, label %2804

2804:                                             ; preds = %2802
  %2805 = getelementptr i8, ptr %2778, i64 %2791
  %2806 = getelementptr i8, ptr %2777, i64 %2791
  %2807 = and i64 %2783, 28
  %2808 = icmp eq i64 %2807, 0
  br i1 %2808, label %2823, label %2809

2809:                                             ; preds = %2804, %2788
  %2810 = phi i64 [ %2791, %2804 ], [ 0, %2788 ]
  %2811 = and i64 %2783, -4
  br label %2812

2812:                                             ; preds = %2812, %2809
  %2813 = phi i64 [ %2810, %2809 ], [ %2817, %2812 ]
  %2814 = getelementptr i8, ptr %2778, i64 %2813
  %2815 = getelementptr i8, ptr %2777, i64 %2813
  %2816 = load <4 x i8>, ptr %2815, align 1, !tbaa !37
  store <4 x i8> %2816, ptr %2814, align 1, !tbaa !37
  %2817 = add nuw i64 %2813, 4
  %2818 = icmp eq i64 %2817, %2811
  br i1 %2818, label %2819, label %2812, !llvm.loop !81

2819:                                             ; preds = %2812
  %2820 = getelementptr i8, ptr %2778, i64 %2811
  %2821 = getelementptr i8, ptr %2777, i64 %2811
  %2822 = icmp eq i64 %2783, %2811
  br i1 %2822, label %.loopexit649, label %2823

2823:                                             ; preds = %2819, %2804, %2780
  %2824 = phi ptr [ %2778, %2780 ], [ %2805, %2804 ], [ %2820, %2819 ]
  %2825 = phi ptr [ %2777, %2780 ], [ %2806, %2804 ], [ %2821, %2819 ]
  %2826 = ptrtoint ptr %2825 to i64
  %2827 = sub i64 %2730, %2826
  %2828 = and i64 %2827, 7
  %2829 = icmp eq i64 %2828, 0
  br i1 %2829, label %.loopexit651, label %.preheader650

.preheader650:                                    ; preds = %2823, %.preheader650
  %2830 = phi ptr [ %2835, %.preheader650 ], [ %2824, %2823 ]
  %2831 = phi ptr [ %2833, %.preheader650 ], [ %2825, %2823 ]
  %2832 = phi i64 [ %2836, %.preheader650 ], [ 0, %2823 ]
  %2833 = getelementptr inbounds nuw i8, ptr %2831, i64 1
  %2834 = load i8, ptr %2831, align 1, !tbaa !37
  %2835 = getelementptr inbounds nuw i8, ptr %2830, i64 1
  store i8 %2834, ptr %2830, align 1, !tbaa !37
  %2836 = add nuw nsw i64 %2832, 1
  %2837 = icmp eq i64 %2836, %2828
  br i1 %2837, label %.loopexit651, label %.preheader650, !llvm.loop !82

.loopexit651:                                     ; preds = %.preheader650, %2823
  %2838 = phi ptr [ %2824, %2823 ], [ %2835, %.preheader650 ]
  %2839 = phi ptr [ %2825, %2823 ], [ %2833, %.preheader650 ]
  %2840 = sub i64 %2826, %2730
  %2841 = icmp ugt i64 %2840, -8
  br i1 %2841, label %.loopexit649, label %.preheader648

.preheader648:                                    ; preds = %.loopexit651, %.preheader648
  %2842 = phi ptr [ %2867, %.preheader648 ], [ %2838, %.loopexit651 ]
  %2843 = phi ptr [ %2865, %.preheader648 ], [ %2839, %.loopexit651 ]
  %2844 = getelementptr inbounds nuw i8, ptr %2843, i64 1
  %2845 = load i8, ptr %2843, align 1, !tbaa !37
  %2846 = getelementptr inbounds nuw i8, ptr %2842, i64 1
  store i8 %2845, ptr %2842, align 1, !tbaa !37
  %2847 = getelementptr inbounds nuw i8, ptr %2843, i64 2
  %2848 = load i8, ptr %2844, align 1, !tbaa !37
  %2849 = getelementptr inbounds nuw i8, ptr %2842, i64 2
  store i8 %2848, ptr %2846, align 1, !tbaa !37
  %2850 = getelementptr inbounds nuw i8, ptr %2843, i64 3
  %2851 = load i8, ptr %2847, align 1, !tbaa !37
  %2852 = getelementptr inbounds nuw i8, ptr %2842, i64 3
  store i8 %2851, ptr %2849, align 1, !tbaa !37
  %2853 = getelementptr inbounds nuw i8, ptr %2843, i64 4
  %2854 = load i8, ptr %2850, align 1, !tbaa !37
  %2855 = getelementptr inbounds nuw i8, ptr %2842, i64 4
  store i8 %2854, ptr %2852, align 1, !tbaa !37
  %2856 = getelementptr inbounds nuw i8, ptr %2843, i64 5
  %2857 = load i8, ptr %2853, align 1, !tbaa !37
  %2858 = getelementptr inbounds nuw i8, ptr %2842, i64 5
  store i8 %2857, ptr %2855, align 1, !tbaa !37
  %2859 = getelementptr inbounds nuw i8, ptr %2843, i64 6
  %2860 = load i8, ptr %2856, align 1, !tbaa !37
  %2861 = getelementptr inbounds nuw i8, ptr %2842, i64 6
  store i8 %2860, ptr %2858, align 1, !tbaa !37
  %2862 = getelementptr inbounds nuw i8, ptr %2843, i64 7
  %2863 = load i8, ptr %2859, align 1, !tbaa !37
  %2864 = getelementptr inbounds nuw i8, ptr %2842, i64 7
  store i8 %2863, ptr %2861, align 1, !tbaa !37
  %2865 = getelementptr inbounds nuw i8, ptr %2843, i64 8
  %2866 = load i8, ptr %2862, align 1, !tbaa !37
  %2867 = getelementptr inbounds nuw i8, ptr %2842, i64 8
  store i8 %2866, ptr %2864, align 1, !tbaa !37
  %2868 = icmp eq ptr %2865, %2719
  br i1 %2868, label %.loopexit649, label %.preheader648, !llvm.loop !83

2869:                                             ; preds = %2739, %2736
  %2870 = load ptr, ptr %2087, align 8, !tbaa !38
  %2871 = getelementptr inbounds nuw i8, ptr %2870, i64 %2732
  store ptr %2871, ptr %2087, align 8, !tbaa !38
  %2872 = load ptr, ptr %2090, align 8, !tbaa !50
  br label %2884

.loopexit649:                                     ; preds = %2748, %.preheader648, %.loopexit651, %2819, %2802, %.loopexit652
  %2873 = load ptr, ptr %2087, align 8, !tbaa !38
  %2874 = getelementptr inbounds nuw i8, ptr %2873, i64 %2732
  store ptr %2874, ptr %2087, align 8, !tbaa !38
  %2875 = icmp ugt i64 %2732, 65535
  %2876 = load ptr, ptr %2090, align 8, !tbaa !50
  br i1 %2875, label %2877, label %2884, !prof !51

2877:                                             ; preds = %.loopexit649
  store i32 1, ptr %2089, align 8, !tbaa !52
  %2878 = load ptr, ptr %1, align 8, !tbaa !53
  %2879 = ptrtoint ptr %2876 to i64
  %2880 = ptrtoint ptr %2878 to i64
  %2881 = sub i64 %2879, %2880
  %2882 = lshr exact i64 %2881, 3
  %2883 = trunc i64 %2882 to i32
  store i32 %2883, ptr %2091, align 4, !tbaa !54
  br label %2884

2884:                                             ; preds = %2877, %.loopexit649, %2869
  %2885 = phi ptr [ %2872, %2869 ], [ %2876, %2877 ], [ %2876, %.loopexit649 ]
  %2886 = trunc i64 %2732 to i16
  %2887 = getelementptr inbounds nuw i8, ptr %2885, i64 4
  store i16 %2886, ptr %2887, align 4, !tbaa !55
  store i32 %2733, ptr %2885, align 4, !tbaa !57
  %2888 = add i64 %2721, -3
  %2889 = icmp ugt i64 %2888, 65535
  br i1 %2889, label %2890, label %2904, !prof !58

2890:                                             ; preds = %2884, %2408
  %2891 = phi ptr [ %2409, %2408 ], [ %2885, %2884 ]
  %2892 = phi i64 [ %2412, %2408 ], [ %2888, %2884 ]
  %2893 = phi i32 [ %2173, %2408 ], [ %2718, %2884 ]
  %2894 = phi ptr [ %2177, %2408 ], [ %2719, %2884 ]
  %2895 = phi i64 [ %2249, %2408 ], [ %2721, %2884 ]
  %2896 = phi i32 [ %2096, %2408 ], [ %2098, %2884 ]
  %2897 = phi i32 [ %2098, %2408 ], [ %2722, %2884 ]
  store i32 2, ptr %2089, align 8, !tbaa !52
  %2898 = load ptr, ptr %1, align 8, !tbaa !53
  %2899 = ptrtoint ptr %2891 to i64
  %2900 = ptrtoint ptr %2898 to i64
  %2901 = sub i64 %2899, %2900
  %2902 = lshr exact i64 %2901, 3
  %2903 = trunc i64 %2902 to i32
  store i32 %2903, ptr %2091, align 4, !tbaa !54
  br label %2904

2904:                                             ; preds = %2890, %2884, %2408
  %2905 = phi i64 [ %2412, %2408 ], [ %2888, %2884 ], [ %2892, %2890 ]
  %2906 = phi ptr [ %2409, %2408 ], [ %2885, %2884 ], [ %2891, %2890 ]
  %2907 = phi i32 [ %2173, %2408 ], [ %2718, %2884 ], [ %2893, %2890 ]
  %2908 = phi ptr [ %2177, %2408 ], [ %2719, %2884 ], [ %2894, %2890 ]
  %2909 = phi i64 [ %2249, %2408 ], [ %2721, %2884 ], [ %2895, %2890 ]
  %2910 = phi i32 [ %2096, %2408 ], [ %2098, %2884 ], [ %2896, %2890 ]
  %2911 = phi i32 [ %2098, %2408 ], [ %2722, %2884 ], [ %2897, %2890 ]
  %2912 = trunc i64 %2905 to i16
  %2913 = getelementptr inbounds nuw i8, ptr %2906, i64 6
  store i16 %2912, ptr %2913, align 2, !tbaa !65
  %2914 = getelementptr inbounds nuw i8, ptr %2906, i64 8
  store ptr %2914, ptr %2090, align 8, !tbaa !50
  %2915 = getelementptr inbounds nuw i8, ptr %2908, i64 %2909
  %2916 = icmp ugt ptr %2915, %43
  br i1 %2916, label %.loopexit644, label %2917

2917:                                             ; preds = %2904
  %2918 = add i32 %2907, 2
  %2919 = zext i32 %2918 to i64
  %2920 = getelementptr inbounds nuw i8, ptr %22, i64 %2919
  %2921 = load i64, ptr %2920, align 1, !tbaa !24
  %2922 = mul i64 %2921, -3523014627327384477
  %2923 = lshr i64 %2922, %2080
  %2924 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %2923
  store i32 %2918, ptr %2924, align 4, !tbaa !25
  %2925 = getelementptr inbounds i8, ptr %2915, i64 -2
  %2926 = ptrtoint ptr %2925 to i64
  %2927 = sub i64 %2926, %24
  %2928 = trunc i64 %2927 to i32
  %2929 = load i64, ptr %2925, align 1, !tbaa !24
  %2930 = mul i64 %2929, -3523014627327384477
  %2931 = lshr i64 %2930, %2080
  %2932 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %2931
  store i32 %2928, ptr %2932, align 4, !tbaa !25
  %2933 = mul i64 %2921, -3523014627193847808
  %2934 = lshr i64 %2933, %2082
  %2935 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %2934
  store i32 %2918, ptr %2935, align 4, !tbaa !25
  %2936 = getelementptr inbounds i8, ptr %2915, i64 -1
  %2937 = ptrtoint ptr %2936 to i64
  %2938 = sub i64 %2937, %24
  %2939 = trunc i64 %2938 to i32
  %2940 = load i64, ptr %2936, align 1, !tbaa !24
  %2941 = mul i64 %2940, -3523014627193847808
  %2942 = lshr i64 %2941, %2082
  %2943 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %2942
  store i32 %2939, ptr %2943, align 4, !tbaa !25
  br label %2944

2944:                                             ; preds = %3051, %2917
  %2945 = phi ptr [ %2914, %2917 ], [ %3054, %3051 ]
  %2946 = phi ptr [ %2915, %2917 ], [ %3056, %3051 ]
  %2947 = phi i32 [ %2911, %2917 ], [ %2948, %3051 ]
  %2948 = phi i32 [ %2910, %2917 ], [ %2947, %3051 ]
  %2949 = icmp ne i32 %2948, 0
  %2950 = load i32, ptr %2946, align 1, !tbaa !25
  %2951 = zext i32 %2948 to i64
  %2952 = sub nsw i64 0, %2951
  %2953 = getelementptr inbounds i8, ptr %2946, i64 %2952
  %2954 = load i32, ptr %2953, align 1, !tbaa !25
  %2955 = icmp eq i32 %2950, %2954
  %2956 = and i1 %2949, %2955
  br i1 %2956, label %2957, label %.loopexit644

2957:                                             ; preds = %2944
  %2958 = getelementptr inbounds nuw i8, ptr %2946, i64 4
  %2959 = getelementptr inbounds i8, ptr %2958, i64 %2952
  %2960 = icmp ult ptr %2958, %2083
  br i1 %2960, label %2961, label %.loopexit643

2961:                                             ; preds = %2957
  %2962 = load i64, ptr %2959, align 1, !tbaa !24
  %2963 = load i64, ptr %2958, align 1, !tbaa !24
  %2964 = icmp eq i64 %2962, %2963
  br i1 %2964, label %.preheader642, label %2965

2965:                                             ; preds = %2961
  %2966 = xor i64 %2963, %2962
  %2967 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2966, i1 true)
  %2968 = lshr i64 %2967, 3
  br label %3022

.preheader642:                                    ; preds = %2961, %2974
  %2969 = phi ptr [ %2972, %2974 ], [ %2959, %2961 ]
  %2970 = phi ptr [ %2971, %2974 ], [ %2958, %2961 ]
  %2971 = getelementptr inbounds nuw i8, ptr %2970, i64 8
  %2972 = getelementptr inbounds nuw i8, ptr %2969, i64 8
  %2973 = icmp ult ptr %2971, %2083
  br i1 %2973, label %2974, label %.loopexit643

2974:                                             ; preds = %.preheader642
  %2975 = load i64, ptr %2972, align 1, !tbaa !24
  %2976 = load i64, ptr %2971, align 1, !tbaa !24
  %2977 = icmp eq i64 %2975, %2976
  br i1 %2977, label %.preheader642, label %2978

2978:                                             ; preds = %2974
  %2979 = xor i64 %2976, %2975
  %2980 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2979, i1 true)
  %2981 = lshr i64 %2980, 3
  %2982 = getelementptr inbounds nuw i8, ptr %2971, i64 %2981
  %2983 = ptrtoint ptr %2982 to i64
  %2984 = ptrtoint ptr %2958 to i64
  %2985 = sub i64 %2983, %2984
  br label %3022

.loopexit643:                                     ; preds = %.preheader642, %2957
  %2986 = phi ptr [ %2959, %2957 ], [ %2972, %.preheader642 ]
  %2987 = phi ptr [ %2958, %2957 ], [ %2971, %.preheader642 ]
  %2988 = icmp ult ptr %2987, %2084
  br i1 %2988, label %2989, label %2996

2989:                                             ; preds = %.loopexit643
  %2990 = load i32, ptr %2986, align 1, !tbaa !25
  %2991 = load i32, ptr %2987, align 1, !tbaa !25
  %2992 = icmp eq i32 %2990, %2991
  br i1 %2992, label %2993, label %2996

2993:                                             ; preds = %2989
  %2994 = getelementptr inbounds nuw i8, ptr %2987, i64 4
  %2995 = getelementptr inbounds nuw i8, ptr %2986, i64 4
  br label %2996

2996:                                             ; preds = %2993, %2989, %.loopexit643
  %2997 = phi ptr [ %2995, %2993 ], [ %2986, %2989 ], [ %2986, %.loopexit643 ]
  %2998 = phi ptr [ %2994, %2993 ], [ %2987, %2989 ], [ %2987, %.loopexit643 ]
  %2999 = icmp ult ptr %2998, %2085
  br i1 %2999, label %3000, label %3007

3000:                                             ; preds = %2996
  %3001 = load i16, ptr %2997, align 1, !tbaa !35
  %3002 = load i16, ptr %2998, align 1, !tbaa !35
  %3003 = icmp eq i16 %3001, %3002
  br i1 %3003, label %3004, label %3007

3004:                                             ; preds = %3000
  %3005 = getelementptr inbounds nuw i8, ptr %2998, i64 2
  %3006 = getelementptr inbounds nuw i8, ptr %2997, i64 2
  br label %3007

3007:                                             ; preds = %3004, %3000, %2996
  %3008 = phi ptr [ %3006, %3004 ], [ %2997, %3000 ], [ %2997, %2996 ]
  %3009 = phi ptr [ %3005, %3004 ], [ %2998, %3000 ], [ %2998, %2996 ]
  %3010 = icmp ult ptr %3009, %42
  br i1 %3010, label %3011, label %3017

3011:                                             ; preds = %3007
  %3012 = load i8, ptr %3008, align 1, !tbaa !37
  %3013 = load i8, ptr %3009, align 1, !tbaa !37
  %3014 = icmp eq i8 %3012, %3013
  %3015 = zext i1 %3014 to i64
  %3016 = getelementptr inbounds nuw i8, ptr %3009, i64 %3015
  br label %3017

3017:                                             ; preds = %3011, %3007
  %3018 = phi ptr [ %3009, %3007 ], [ %3016, %3011 ]
  %3019 = ptrtoint ptr %3018 to i64
  %3020 = ptrtoint ptr %2958 to i64
  %3021 = sub i64 %3019, %3020
  br label %3022

3022:                                             ; preds = %3017, %2978, %2965
  %3023 = phi i64 [ %3021, %3017 ], [ %2968, %2965 ], [ %2985, %2978 ]
  %3024 = ptrtoint ptr %2946 to i64
  %3025 = sub i64 %3024, %24
  %3026 = trunc i64 %3025 to i32
  %3027 = load i64, ptr %2946, align 1, !tbaa !24
  %3028 = mul i64 %3027, -3523014627193847808
  %3029 = lshr i64 %3028, %2082
  %3030 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %3029
  store i32 %3026, ptr %3030, align 4, !tbaa !25
  %3031 = mul i64 %3027, -3523014627327384477
  %3032 = lshr i64 %3031, %2080
  %3033 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %3032
  store i32 %3026, ptr %3033, align 4, !tbaa !25
  %3034 = icmp ugt ptr %2946, %2086
  br i1 %3034, label %3039, label %3035

3035:                                             ; preds = %3022
  %3036 = load ptr, ptr %2087, align 8, !tbaa !38
  %3037 = load <2 x i64>, ptr %2946, align 1, !tbaa !37
  store <2 x i64> %3037, ptr %3036, align 1, !tbaa !37
  %3038 = load ptr, ptr %2090, align 8, !tbaa !50
  br label %3039

3039:                                             ; preds = %3035, %3022
  %3040 = phi ptr [ %2945, %3022 ], [ %3038, %3035 ]
  %3041 = getelementptr inbounds nuw i8, ptr %3040, i64 4
  store i16 0, ptr %3041, align 4, !tbaa !55
  store i32 1, ptr %3040, align 4, !tbaa !57
  %3042 = add i64 %3023, 1
  %3043 = icmp ugt i64 %3042, 65535
  br i1 %3043, label %3044, label %3051, !prof !58

3044:                                             ; preds = %3039
  store i32 2, ptr %2089, align 8, !tbaa !52
  %3045 = load ptr, ptr %1, align 8, !tbaa !53
  %3046 = ptrtoint ptr %3040 to i64
  %3047 = ptrtoint ptr %3045 to i64
  %3048 = sub i64 %3046, %3047
  %3049 = lshr exact i64 %3048, 3
  %3050 = trunc i64 %3049 to i32
  store i32 %3050, ptr %2091, align 4, !tbaa !54
  br label %3051

3051:                                             ; preds = %3044, %3039
  %3052 = trunc i64 %3042 to i16
  %3053 = getelementptr inbounds nuw i8, ptr %3040, i64 6
  store i16 %3052, ptr %3053, align 2, !tbaa !65
  %3054 = getelementptr inbounds nuw i8, ptr %3040, i64 8
  store ptr %3054, ptr %2090, align 8, !tbaa !50
  %3055 = getelementptr i8, ptr %2946, i64 %3023
  %3056 = getelementptr i8, ptr %3055, i64 4
  %3057 = icmp ugt ptr %3056, %43
  br i1 %3057, label %.loopexit644, label %2944

.loopexit644:                                     ; preds = %3051, %2944, %2904
  %3058 = phi i32 [ %2910, %2904 ], [ %2947, %3051 ], [ %2948, %2944 ]
  %3059 = phi i32 [ %2911, %2904 ], [ %2948, %3051 ], [ %2947, %2944 ]
  %3060 = phi ptr [ %2915, %2904 ], [ %3056, %3051 ], [ %2946, %2944 ]
  %3061 = getelementptr inbounds nuw i8, ptr %3060, i64 1
  %3062 = icmp ugt ptr %3061, %43
  br i1 %3062, label %.loopexit671, label %2092

.loopexit671:                                     ; preds = %.loopexit644, %2533, %2154, %2077
  %3063 = phi i32 [ %60, %2077 ], [ %2096, %2154 ], [ %2096, %2533 ], [ %3058, %.loopexit644 ]
  %3064 = phi i32 [ %62, %2077 ], [ 0, %2154 ], [ %2098, %2533 ], [ %3059, %.loopexit644 ]
  %3065 = phi ptr [ %3, %2077 ], [ %2094, %2154 ], [ %2094, %2533 ], [ %3060, %.loopexit644 ]
  %3066 = select i1 %61, i32 %44, i32 0
  %3067 = select i1 %59, i32 %46, i32 0
  %3068 = icmp ne i32 %3064, 0
  %3069 = select i1 %61, i1 %3068, i1 false
  %3070 = select i1 %3069, i32 %44, i32 %3067
  %3071 = select i1 %3068, i32 %3064, i32 %3066
  store i32 %3071, ptr %2, align 4, !tbaa !25
  %3072 = icmp eq i32 %3063, 0
  %3073 = select i1 %3072, i32 %3070, i32 %3063
  store i32 %3073, ptr %45, align 4, !tbaa !25
  %3074 = ptrtoint ptr %42 to i64
  %3075 = ptrtoint ptr %3065 to i64
  %3076 = sub i64 %3074, %3075
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %4077

3077:                                             ; preds = %5
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %6, ptr noundef nonnull align 1 dereferenceable(10) @__const.ZSTD_compressBlock_doubleFast_noDict_generic.dummy, i64 10, i1 false)
  br i1 %66, label %.loopexit585, label %3078

3078:                                             ; preds = %3077
  %3079 = sub i32 64, %16
  %3080 = zext nneg i32 %3079 to i64
  %3081 = sub i32 64, %20
  %3082 = zext nneg i32 %3081 to i64
  %3083 = getelementptr inbounds i8, ptr %42, i64 -7
  %3084 = getelementptr inbounds i8, ptr %42, i64 -3
  %3085 = getelementptr inbounds i8, ptr %42, i64 -1
  %3086 = getelementptr inbounds i8, ptr %42, i64 -32
  %3087 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %3088 = ptrtoint ptr %3086 to i64
  %3089 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %3090 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3091 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %3092

3092:                                             ; preds = %.loopexit558, %3078
  %3093 = phi ptr [ %63, %3078 ], [ %4061, %.loopexit558 ]
  %3094 = phi ptr [ %3, %3078 ], [ %4060, %.loopexit558 ]
  %3095 = phi i32 [ %62, %3078 ], [ %4059, %.loopexit558 ]
  %3096 = phi i32 [ %60, %3078 ], [ %4058, %.loopexit558 ]
  %3097 = phi ptr [ %49, %3078 ], [ %4060, %.loopexit558 ]
  %3098 = freeze i32 %3095
  %3099 = getelementptr inbounds nuw i8, ptr %3097, i64 256
  %3100 = load i64, ptr %3097, align 1, !tbaa !24
  %3101 = mul i64 %3100, -3523014627327384477
  %3102 = lshr i64 %3101, %3080
  %3103 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %3102
  %3104 = load i32, ptr %3103, align 4, !tbaa !25
  %3105 = zext i32 %3104 to i64
  %3106 = getelementptr inbounds nuw i8, ptr %22, i64 %3105
  %3107 = icmp eq i32 %3098, 0
  %3108 = zext i32 %3098 to i64
  %3109 = sub nsw i64 0, %3108
  br i1 %3107, label %.preheader582, label %.preheader594

.preheader582:                                    ; preds = %3092, %3154
  %3110 = phi i64 [ %3126, %3154 ], [ %3100, %3092 ]
  %3111 = phi i32 [ %3138, %3154 ], [ %3104, %3092 ]
  %3112 = phi ptr [ %3140, %3154 ], [ %3106, %3092 ]
  %3113 = phi i64 [ %3128, %3154 ], [ %3102, %3092 ]
  %3114 = phi ptr [ %3115, %3154 ], [ %3097, %3092 ]
  %3115 = phi ptr [ %3157, %3154 ], [ %3093, %3092 ]
  %3116 = phi i64 [ %3155, %3154 ], [ 1, %3092 ]
  %3117 = phi ptr [ %3156, %3154 ], [ %3099, %3092 ]
  %3118 = mul i64 %3110, -3523014627193167104
  %3119 = lshr i64 %3118, %3082
  %3120 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %3119
  %3121 = load i32, ptr %3120, align 4, !tbaa !25
  %3122 = ptrtoint ptr %3114 to i64
  %3123 = sub i64 %3122, %24
  %3124 = trunc i64 %3123 to i32
  store i32 %3124, ptr %3120, align 4, !tbaa !25
  %3125 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %3113
  store i32 %3124, ptr %3125, align 4, !tbaa !25
  %3126 = load i64, ptr %3115, align 1, !tbaa !24
  %3127 = mul i64 %3126, -3523014627327384477
  %3128 = lshr i64 %3127, %3080
  %3129 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %3111, i32 %39, ptr nonnull readnone %6, ptr readnone %3112) #9, !srcloc !33
  %3130 = load i64, ptr %3129, align 1, !tbaa !24
  %3131 = icmp eq i64 %3130, %3110
  %3132 = icmp eq ptr %3129, %3112
  %3133 = select i1 %3131, i1 %3132, i1 false
  br i1 %3133, label %.loopexit583, label %3134

3134:                                             ; preds = %.preheader582
  %3135 = zext i32 %3121 to i64
  %3136 = getelementptr inbounds nuw i8, ptr %22, i64 %3135
  %3137 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %3128
  %3138 = load i32, ptr %3137, align 4, !tbaa !25
  %3139 = zext i32 %3138 to i64
  %3140 = getelementptr inbounds nuw i8, ptr %22, i64 %3139
  %3141 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %3121, i32 %39, ptr nonnull readnone %6, ptr readnone %3136) #9, !srcloc !33
  %3142 = load i32, ptr %3141, align 1, !tbaa !25
  %3143 = load i32, ptr %3114, align 1, !tbaa !25
  %3144 = icmp eq i32 %3142, %3143
  %3145 = icmp eq ptr %3141, %3136
  %3146 = select i1 %3144, i1 %3145, i1 false
  br i1 %3146, label %.loopexit584, label %3147

3147:                                             ; preds = %3134
  %3148 = icmp ult ptr %3115, %3117
  br i1 %3148, label %3154, label %3149

3149:                                             ; preds = %3147
  %3150 = getelementptr inbounds nuw i8, ptr %3115, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %3150, i32 0, i32 3, i32 1)
  %3151 = getelementptr inbounds nuw i8, ptr %3115, i64 128
  call void @llvm.prefetch.p0(ptr nonnull %3151, i32 0, i32 3, i32 1)
  %3152 = add i64 %3116, 1
  %3153 = getelementptr inbounds nuw i8, ptr %3117, i64 256
  br label %3154

3154:                                             ; preds = %3149, %3147
  %3155 = phi i64 [ %3152, %3149 ], [ %3116, %3147 ]
  %3156 = phi ptr [ %3153, %3149 ], [ %3117, %3147 ]
  %3157 = getelementptr inbounds nuw i8, ptr %3115, i64 %3155
  %3158 = icmp ugt ptr %3157, %43
  br i1 %3158, label %.loopexit585, label %.preheader582, !llvm.loop !34

.preheader594:                                    ; preds = %3092, %3533
  %3159 = phi i64 [ %3415, %3533 ], [ %3100, %3092 ]
  %3160 = phi i32 [ %3517, %3533 ], [ %3104, %3092 ]
  %3161 = phi ptr [ %3519, %3533 ], [ %3106, %3092 ]
  %3162 = phi i64 [ %3417, %3533 ], [ %3102, %3092 ]
  %3163 = phi ptr [ %3164, %3533 ], [ %3097, %3092 ]
  %3164 = phi ptr [ %3536, %3533 ], [ %3093, %3092 ]
  %3165 = phi i64 [ %3534, %3533 ], [ 1, %3092 ]
  %3166 = phi ptr [ %3535, %3533 ], [ %3099, %3092 ]
  %3167 = mul i64 %3159, -3523014627193167104
  %3168 = lshr i64 %3167, %3082
  %3169 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %3168
  %3170 = load i32, ptr %3169, align 4, !tbaa !25
  %3171 = ptrtoint ptr %3163 to i64
  %3172 = sub i64 %3171, %24
  %3173 = trunc i64 %3172 to i32
  %3174 = zext i32 %3170 to i64
  %3175 = getelementptr inbounds nuw i8, ptr %22, i64 %3174
  store i32 %3173, ptr %3169, align 4, !tbaa !25
  %3176 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %3162
  store i32 %3173, ptr %3176, align 4, !tbaa !25
  %3177 = getelementptr inbounds nuw i8, ptr %3163, i64 1
  %3178 = getelementptr inbounds i8, ptr %3177, i64 %3109
  %3179 = load i32, ptr %3178, align 1, !tbaa !25
  %3180 = load i32, ptr %3177, align 1, !tbaa !25
  %3181 = icmp eq i32 %3179, %3180
  br i1 %3181, label %3182, label %3414

3182:                                             ; preds = %.preheader594
  %3183 = getelementptr inbounds nuw i8, ptr %3163, i64 5
  %3184 = getelementptr inbounds i8, ptr %3183, i64 %3109
  %3185 = icmp ult ptr %3183, %3083
  br i1 %3185, label %3186, label %.loopexit593

3186:                                             ; preds = %3182
  %3187 = load i64, ptr %3184, align 1, !tbaa !24
  %3188 = load i64, ptr %3183, align 1, !tbaa !24
  %3189 = icmp eq i64 %3187, %3188
  br i1 %3189, label %.preheader592, label %3190

3190:                                             ; preds = %3186
  %3191 = xor i64 %3188, %3187
  %3192 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3191, i1 true)
  %3193 = lshr i64 %3192, 3
  br label %3247

.preheader592:                                    ; preds = %3186, %3199
  %3194 = phi ptr [ %3197, %3199 ], [ %3184, %3186 ]
  %3195 = phi ptr [ %3196, %3199 ], [ %3183, %3186 ]
  %3196 = getelementptr inbounds nuw i8, ptr %3195, i64 8
  %3197 = getelementptr inbounds nuw i8, ptr %3194, i64 8
  %3198 = icmp ult ptr %3196, %3083
  br i1 %3198, label %3199, label %.loopexit593

3199:                                             ; preds = %.preheader592
  %3200 = load i64, ptr %3197, align 1, !tbaa !24
  %3201 = load i64, ptr %3196, align 1, !tbaa !24
  %3202 = icmp eq i64 %3200, %3201
  br i1 %3202, label %.preheader592, label %3203

3203:                                             ; preds = %3199
  %3204 = xor i64 %3201, %3200
  %3205 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3204, i1 true)
  %3206 = lshr i64 %3205, 3
  %3207 = getelementptr inbounds nuw i8, ptr %3196, i64 %3206
  %3208 = ptrtoint ptr %3207 to i64
  %3209 = ptrtoint ptr %3183 to i64
  %3210 = sub i64 %3208, %3209
  br label %3247

.loopexit593:                                     ; preds = %.preheader592, %3182
  %3211 = phi ptr [ %3184, %3182 ], [ %3197, %.preheader592 ]
  %3212 = phi ptr [ %3183, %3182 ], [ %3196, %.preheader592 ]
  %3213 = icmp ult ptr %3212, %3084
  br i1 %3213, label %3214, label %3221

3214:                                             ; preds = %.loopexit593
  %3215 = load i32, ptr %3211, align 1, !tbaa !25
  %3216 = load i32, ptr %3212, align 1, !tbaa !25
  %3217 = icmp eq i32 %3215, %3216
  br i1 %3217, label %3218, label %3221

3218:                                             ; preds = %3214
  %3219 = getelementptr inbounds nuw i8, ptr %3212, i64 4
  %3220 = getelementptr inbounds nuw i8, ptr %3211, i64 4
  br label %3221

3221:                                             ; preds = %3218, %3214, %.loopexit593
  %3222 = phi ptr [ %3220, %3218 ], [ %3211, %3214 ], [ %3211, %.loopexit593 ]
  %3223 = phi ptr [ %3219, %3218 ], [ %3212, %3214 ], [ %3212, %.loopexit593 ]
  %3224 = icmp ult ptr %3223, %3085
  br i1 %3224, label %3225, label %3232

3225:                                             ; preds = %3221
  %3226 = load i16, ptr %3222, align 1, !tbaa !35
  %3227 = load i16, ptr %3223, align 1, !tbaa !35
  %3228 = icmp eq i16 %3226, %3227
  br i1 %3228, label %3229, label %3232

3229:                                             ; preds = %3225
  %3230 = getelementptr inbounds nuw i8, ptr %3223, i64 2
  %3231 = getelementptr inbounds nuw i8, ptr %3222, i64 2
  br label %3232

3232:                                             ; preds = %3229, %3225, %3221
  %3233 = phi ptr [ %3231, %3229 ], [ %3222, %3225 ], [ %3222, %3221 ]
  %3234 = phi ptr [ %3230, %3229 ], [ %3223, %3225 ], [ %3223, %3221 ]
  %3235 = icmp ult ptr %3234, %42
  br i1 %3235, label %3236, label %3242

3236:                                             ; preds = %3232
  %3237 = load i8, ptr %3233, align 1, !tbaa !37
  %3238 = load i8, ptr %3234, align 1, !tbaa !37
  %3239 = icmp eq i8 %3237, %3238
  %3240 = zext i1 %3239 to i64
  %3241 = getelementptr inbounds nuw i8, ptr %3234, i64 %3240
  br label %3242

3242:                                             ; preds = %3236, %3232
  %3243 = phi ptr [ %3234, %3232 ], [ %3241, %3236 ]
  %3244 = ptrtoint ptr %3243 to i64
  %3245 = ptrtoint ptr %3183 to i64
  %3246 = sub i64 %3244, %3245
  br label %3247

3247:                                             ; preds = %3242, %3203, %3190
  %3248 = phi i64 [ %3246, %3242 ], [ %3193, %3190 ], [ %3210, %3203 ]
  %3249 = add i64 %3248, 4
  %3250 = ptrtoint ptr %3177 to i64
  %3251 = ptrtoint ptr %3094 to i64
  %3252 = sub i64 %3250, %3251
  %3253 = icmp ugt ptr %3177, %3086
  %3254 = load ptr, ptr %3087, align 8, !tbaa !38
  br i1 %3253, label %3277, label %3255

3255:                                             ; preds = %3247
  %3256 = load <2 x i64>, ptr %3094, align 1, !tbaa !37
  store <2 x i64> %3256, ptr %3254, align 1, !tbaa !37
  %3257 = icmp ugt i64 %3252, 16
  br i1 %3257, label %3258, label %3393

3258:                                             ; preds = %3255
  %3259 = load ptr, ptr %3087, align 8, !tbaa !38
  %3260 = getelementptr inbounds nuw i8, ptr %3259, i64 16
  %3261 = getelementptr inbounds nuw i8, ptr %3094, i64 16
  %3262 = getelementptr i8, ptr %3259, i64 %3252
  %3263 = load <2 x i64>, ptr %3261, align 1, !tbaa !37
  store <2 x i64> %3263, ptr %3260, align 1, !tbaa !37
  %3264 = icmp ult i64 %3252, 33
  br i1 %3264, label %3393, label %3265

3265:                                             ; preds = %3258
  %3266 = getelementptr inbounds nuw i8, ptr %3259, i64 32
  br label %3267

3267:                                             ; preds = %3267, %3265
  %3268 = phi ptr [ %3266, %3265 ], [ %3275, %3267 ]
  %3269 = phi ptr [ %3261, %3265 ], [ %3273, %3267 ]
  %3270 = getelementptr inbounds nuw i8, ptr %3269, i64 16
  %3271 = load <2 x i64>, ptr %3270, align 1, !tbaa !37
  store <2 x i64> %3271, ptr %3268, align 1, !tbaa !37
  %3272 = getelementptr inbounds nuw i8, ptr %3268, i64 16
  %3273 = getelementptr inbounds nuw i8, ptr %3269, i64 32
  %3274 = load <2 x i64>, ptr %3273, align 1, !tbaa !37
  store <2 x i64> %3274, ptr %3272, align 1, !tbaa !37
  %3275 = getelementptr inbounds nuw i8, ptr %3268, i64 32
  %3276 = icmp ult ptr %3275, %3262
  br i1 %3276, label %3267, label %.loopexit587, !llvm.loop !41

3277:                                             ; preds = %3247
  %3278 = icmp ugt ptr %3094, %3086
  br i1 %3278, label %.loopexit590, label %3279

3279:                                             ; preds = %3277
  %3280 = sub i64 %3088, %3251
  %3281 = getelementptr inbounds i8, ptr %3254, i64 %3280
  %3282 = load <2 x i64>, ptr %3094, align 1, !tbaa !37
  store <2 x i64> %3282, ptr %3254, align 1, !tbaa !37
  %3283 = icmp ult i64 %3280, 17
  br i1 %3283, label %.loopexit590, label %3284

3284:                                             ; preds = %3279
  %3285 = getelementptr inbounds nuw i8, ptr %3254, i64 16
  br label %3286

3286:                                             ; preds = %3286, %3284
  %3287 = phi ptr [ %3285, %3284 ], [ %3294, %3286 ]
  %3288 = phi ptr [ %3094, %3284 ], [ %3292, %3286 ]
  %3289 = getelementptr inbounds nuw i8, ptr %3288, i64 16
  %3290 = load <2 x i64>, ptr %3289, align 1, !tbaa !37
  store <2 x i64> %3290, ptr %3287, align 1, !tbaa !37
  %3291 = getelementptr inbounds nuw i8, ptr %3287, i64 16
  %3292 = getelementptr inbounds nuw i8, ptr %3288, i64 32
  %3293 = load <2 x i64>, ptr %3292, align 1, !tbaa !37
  store <2 x i64> %3293, ptr %3291, align 1, !tbaa !37
  %3294 = getelementptr inbounds nuw i8, ptr %3287, i64 32
  %3295 = icmp ult ptr %3294, %3281
  br i1 %3295, label %3286, label %.loopexit590, !llvm.loop !41

.loopexit590:                                     ; preds = %3286, %3279, %3277
  %3296 = phi ptr [ %3086, %3279 ], [ %3094, %3277 ], [ %3086, %3286 ]
  %3297 = phi ptr [ %3281, %3279 ], [ %3254, %3277 ], [ %3281, %3286 ]
  %3298 = icmp ult ptr %3296, %3177
  br i1 %3298, label %3299, label %.loopexit587

3299:                                             ; preds = %.loopexit590
  %3300 = ptrtoint ptr %3296 to i64
  %3301 = ptrtoint ptr %3297 to i64
  %3302 = sub i64 %3171, %3300
  %3303 = add i64 %3302, 1
  %3304 = icmp ult i64 %3303, 4
  %3305 = sub i64 %3301, %3300
  %3306 = icmp ult i64 %3305, 32
  %3307 = select i1 %3304, i1 true, i1 %3306
  br i1 %3307, label %3343, label %3308

3308:                                             ; preds = %3299
  %3309 = icmp ult i64 %3303, 32
  br i1 %3309, label %3329, label %3310

3310:                                             ; preds = %3308
  %3311 = and i64 %3303, -32
  br label %3312

3312:                                             ; preds = %3312, %3310
  %3313 = phi i64 [ 0, %3310 ], [ %3320, %3312 ]
  %3314 = getelementptr i8, ptr %3297, i64 %3313
  %3315 = getelementptr i8, ptr %3296, i64 %3313
  %3316 = getelementptr i8, ptr %3315, i64 16
  %3317 = load <16 x i8>, ptr %3315, align 1, !tbaa !37
  %3318 = load <16 x i8>, ptr %3316, align 1, !tbaa !37
  %3319 = getelementptr i8, ptr %3314, i64 16
  store <16 x i8> %3317, ptr %3314, align 1, !tbaa !37
  store <16 x i8> %3318, ptr %3319, align 1, !tbaa !37
  %3320 = add nuw i64 %3313, 32
  %3321 = icmp eq i64 %3320, %3311
  br i1 %3321, label %3322, label %3312, !llvm.loop !84

3322:                                             ; preds = %3312
  %3323 = icmp eq i64 %3303, %3311
  br i1 %3323, label %.loopexit587, label %3324

3324:                                             ; preds = %3322
  %3325 = getelementptr i8, ptr %3297, i64 %3311
  %3326 = getelementptr i8, ptr %3296, i64 %3311
  %3327 = and i64 %3303, 28
  %3328 = icmp eq i64 %3327, 0
  br i1 %3328, label %3343, label %3329

3329:                                             ; preds = %3324, %3308
  %3330 = phi i64 [ %3311, %3324 ], [ 0, %3308 ]
  %3331 = and i64 %3303, -4
  br label %3332

3332:                                             ; preds = %3332, %3329
  %3333 = phi i64 [ %3330, %3329 ], [ %3337, %3332 ]
  %3334 = getelementptr i8, ptr %3297, i64 %3333
  %3335 = getelementptr i8, ptr %3296, i64 %3333
  %3336 = load <4 x i8>, ptr %3335, align 1, !tbaa !37
  store <4 x i8> %3336, ptr %3334, align 1, !tbaa !37
  %3337 = add nuw i64 %3333, 4
  %3338 = icmp eq i64 %3337, %3331
  br i1 %3338, label %3339, label %3332, !llvm.loop !85

3339:                                             ; preds = %3332
  %3340 = getelementptr i8, ptr %3297, i64 %3331
  %3341 = getelementptr i8, ptr %3296, i64 %3331
  %3342 = icmp eq i64 %3303, %3331
  br i1 %3342, label %.loopexit587, label %3343

3343:                                             ; preds = %3339, %3324, %3299
  %3344 = phi ptr [ %3297, %3299 ], [ %3325, %3324 ], [ %3340, %3339 ]
  %3345 = phi ptr [ %3296, %3299 ], [ %3326, %3324 ], [ %3341, %3339 ]
  %3346 = ptrtoint ptr %3345 to i64
  %3347 = sub i64 %3171, %3346
  %3348 = add i64 %3347, 1
  %3349 = and i64 %3348, 7
  %3350 = and i64 %3347, 7
  %3351 = icmp eq i64 %3350, 7
  br i1 %3351, label %.preheader586.preheader, label %.preheader588.preheader

.preheader588.preheader:                          ; preds = %3343
  %3352 = ptrtoaddr ptr %3344 to i64
  %min.iters.check3299 = icmp samesign ult i64 %3349, 4
  %3353 = sub i64 %3352, %3346
  %diff.check3297 = icmp ult i64 %3353, 4
  %or.cond3334 = select i1 %min.iters.check3299, i1 true, i1 %diff.check3297
  br i1 %or.cond3334, label %.preheader588.preheader3482, label %vector.ph3300

vector.ph3300:                                    ; preds = %.preheader588.preheader
  %n.vec3302 = and i64 %3348, 4
  %3354 = getelementptr i8, ptr %3344, i64 %n.vec3302
  %3355 = getelementptr i8, ptr %3345, i64 %n.vec3302
  br label %vector.body3303

vector.body3303:                                  ; preds = %vector.body3303, %vector.ph3300
  %index3304 = phi i64 [ 0, %vector.ph3300 ], [ %index.next3308, %vector.body3303 ]
  %next.gep3305 = getelementptr i8, ptr %3344, i64 %index3304
  %next.gep3306 = getelementptr i8, ptr %3345, i64 %index3304
  %wide.load3307 = load <4 x i8>, ptr %next.gep3306, align 1, !tbaa !37
  store <4 x i8> %wide.load3307, ptr %next.gep3305, align 1, !tbaa !37
  %index.next3308 = add nuw i64 %index3304, 4
  %3356 = icmp eq i64 %index.next3308, %n.vec3302
  br i1 %3356, label %middle.block3309, label %vector.body3303, !llvm.loop !86

middle.block3309:                                 ; preds = %vector.body3303
  %cmp.n3310 = icmp eq i64 %3349, %n.vec3302
  br i1 %cmp.n3310, label %.loopexit589, label %.preheader588.preheader3482

.preheader588.preheader3482:                      ; preds = %.preheader588.preheader, %middle.block3309
  %.ph3483 = phi ptr [ %3344, %.preheader588.preheader ], [ %3354, %middle.block3309 ]
  %.ph3484 = phi ptr [ %3345, %.preheader588.preheader ], [ %3355, %middle.block3309 ]
  %.ph3485 = phi i64 [ 0, %.preheader588.preheader ], [ %n.vec3302, %middle.block3309 ]
  br label %.preheader588

.preheader588:                                    ; preds = %.preheader588.preheader3482, %.preheader588
  %3357 = phi ptr [ %3362, %.preheader588 ], [ %.ph3483, %.preheader588.preheader3482 ]
  %3358 = phi ptr [ %3360, %.preheader588 ], [ %.ph3484, %.preheader588.preheader3482 ]
  %3359 = phi i64 [ %3363, %.preheader588 ], [ %.ph3485, %.preheader588.preheader3482 ]
  %3360 = getelementptr inbounds nuw i8, ptr %3358, i64 1
  %3361 = load i8, ptr %3358, align 1, !tbaa !37
  %3362 = getelementptr inbounds nuw i8, ptr %3357, i64 1
  store i8 %3361, ptr %3357, align 1, !tbaa !37
  %3363 = add i64 %3359, 1
  %3364 = icmp eq i64 %3363, %3349
  br i1 %3364, label %.loopexit589, label %.preheader588, !llvm.loop !87

.loopexit589:                                     ; preds = %.preheader588, %middle.block3309
  %.lcssa2970 = phi ptr [ %3355, %middle.block3309 ], [ %3360, %.preheader588 ]
  %.lcssa2969 = phi ptr [ %3354, %middle.block3309 ], [ %3362, %.preheader588 ]
  %3365 = icmp ult i64 %3347, 7
  br i1 %3365, label %.loopexit587, label %.preheader586.preheader

.preheader586.preheader:                          ; preds = %3343, %.loopexit589
  %.ph3480 = phi ptr [ %3344, %3343 ], [ %.lcssa2969, %.loopexit589 ]
  %.ph3481 = phi ptr [ %3345, %3343 ], [ %.lcssa2970, %.loopexit589 ]
  br label %.preheader586

.preheader586:                                    ; preds = %.preheader586.preheader, %.preheader586
  %3366 = phi ptr [ %3391, %.preheader586 ], [ %.ph3480, %.preheader586.preheader ]
  %3367 = phi ptr [ %3389, %.preheader586 ], [ %.ph3481, %.preheader586.preheader ]
  %3368 = getelementptr inbounds nuw i8, ptr %3367, i64 1
  %3369 = load i8, ptr %3367, align 1, !tbaa !37
  %3370 = getelementptr inbounds nuw i8, ptr %3366, i64 1
  store i8 %3369, ptr %3366, align 1, !tbaa !37
  %3371 = getelementptr inbounds nuw i8, ptr %3367, i64 2
  %3372 = load i8, ptr %3368, align 1, !tbaa !37
  %3373 = getelementptr inbounds nuw i8, ptr %3366, i64 2
  store i8 %3372, ptr %3370, align 1, !tbaa !37
  %3374 = getelementptr inbounds nuw i8, ptr %3367, i64 3
  %3375 = load i8, ptr %3371, align 1, !tbaa !37
  %3376 = getelementptr inbounds nuw i8, ptr %3366, i64 3
  store i8 %3375, ptr %3373, align 1, !tbaa !37
  %3377 = getelementptr inbounds nuw i8, ptr %3367, i64 4
  %3378 = load i8, ptr %3374, align 1, !tbaa !37
  %3379 = getelementptr inbounds nuw i8, ptr %3366, i64 4
  store i8 %3378, ptr %3376, align 1, !tbaa !37
  %3380 = getelementptr inbounds nuw i8, ptr %3367, i64 5
  %3381 = load i8, ptr %3377, align 1, !tbaa !37
  %3382 = getelementptr inbounds nuw i8, ptr %3366, i64 5
  store i8 %3381, ptr %3379, align 1, !tbaa !37
  %3383 = getelementptr inbounds nuw i8, ptr %3367, i64 6
  %3384 = load i8, ptr %3380, align 1, !tbaa !37
  %3385 = getelementptr inbounds nuw i8, ptr %3366, i64 6
  store i8 %3384, ptr %3382, align 1, !tbaa !37
  %3386 = getelementptr inbounds nuw i8, ptr %3367, i64 7
  %3387 = load i8, ptr %3383, align 1, !tbaa !37
  %3388 = getelementptr inbounds nuw i8, ptr %3366, i64 7
  store i8 %3387, ptr %3385, align 1, !tbaa !37
  %3389 = getelementptr inbounds nuw i8, ptr %3367, i64 8
  %3390 = load i8, ptr %3386, align 1, !tbaa !37
  %3391 = getelementptr inbounds nuw i8, ptr %3366, i64 8
  store i8 %3390, ptr %3388, align 1, !tbaa !37
  %3392 = icmp eq ptr %3386, %3163
  br i1 %3392, label %.loopexit587, label %.preheader586, !llvm.loop !88

3393:                                             ; preds = %3258, %3255
  %3394 = load ptr, ptr %3087, align 8, !tbaa !38
  %3395 = getelementptr inbounds nuw i8, ptr %3394, i64 %3252
  store ptr %3395, ptr %3087, align 8, !tbaa !38
  %3396 = load ptr, ptr %3090, align 8, !tbaa !50
  br label %3408

.loopexit587:                                     ; preds = %3267, %.preheader586, %.loopexit589, %3339, %3322, %.loopexit590
  %3397 = load ptr, ptr %3087, align 8, !tbaa !38
  %3398 = getelementptr inbounds nuw i8, ptr %3397, i64 %3252
  store ptr %3398, ptr %3087, align 8, !tbaa !38
  %3399 = icmp ugt i64 %3252, 65535
  %3400 = load ptr, ptr %3090, align 8, !tbaa !50
  br i1 %3399, label %3401, label %3408, !prof !51

3401:                                             ; preds = %.loopexit587
  store i32 1, ptr %3089, align 8, !tbaa !52
  %3402 = load ptr, ptr %1, align 8, !tbaa !53
  %3403 = ptrtoint ptr %3400 to i64
  %3404 = ptrtoint ptr %3402 to i64
  %3405 = sub i64 %3403, %3404
  %3406 = lshr exact i64 %3405, 3
  %3407 = trunc i64 %3406 to i32
  store i32 %3407, ptr %3091, align 4, !tbaa !54
  br label %3408

3408:                                             ; preds = %3401, %.loopexit587, %3393
  %3409 = phi ptr [ %3396, %3393 ], [ %3400, %3401 ], [ %3400, %.loopexit587 ]
  %3410 = trunc i64 %3252 to i16
  %3411 = getelementptr inbounds nuw i8, ptr %3409, i64 4
  store i16 %3410, ptr %3411, align 4, !tbaa !55
  store i32 1, ptr %3409, align 4, !tbaa !57
  %3412 = add i64 %3248, 1
  %3413 = icmp ugt i64 %3412, 65535
  br i1 %3413, label %3890, label %3904, !prof !58

3414:                                             ; preds = %.preheader594
  %3415 = load i64, ptr %3164, align 1, !tbaa !24
  %3416 = mul i64 %3415, -3523014627327384477
  %3417 = lshr i64 %3416, %3080
  %3418 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %3160, i32 %39, ptr nonnull readnone %6, ptr readnone %3161) #9, !srcloc !33
  %3419 = load i64, ptr %3418, align 1, !tbaa !24
  %3420 = icmp eq i64 %3419, %3159
  %3421 = icmp eq ptr %3418, %3161
  %3422 = select i1 %3420, i1 %3421, i1 false
  br i1 %3422, label %.loopexit583, label %3515

.loopexit583:                                     ; preds = %3414, %.preheader582
  %3423 = phi i64 [ %3128, %.preheader582 ], [ %3417, %3414 ]
  %3424 = phi ptr [ %3112, %.preheader582 ], [ %3161, %3414 ]
  %3425 = phi ptr [ %3114, %.preheader582 ], [ %3163, %3414 ]
  %3426 = phi ptr [ %3115, %.preheader582 ], [ %3164, %3414 ]
  %3427 = phi i64 [ %3116, %.preheader582 ], [ %3165, %3414 ]
  %3428 = phi i64 [ %3122, %.preheader582 ], [ %3171, %3414 ]
  %3429 = phi i32 [ %3124, %.preheader582 ], [ %3173, %3414 ]
  %3430 = getelementptr inbounds nuw i8, ptr %3425, i64 8
  %3431 = getelementptr inbounds nuw i8, ptr %3424, i64 8
  %3432 = icmp ult ptr %3430, %3083
  br i1 %3432, label %3433, label %.loopexit573

3433:                                             ; preds = %.loopexit583
  %3434 = load i64, ptr %3431, align 1, !tbaa !24
  %3435 = load i64, ptr %3430, align 1, !tbaa !24
  %3436 = icmp eq i64 %3434, %3435
  br i1 %3436, label %.preheader572, label %3437

3437:                                             ; preds = %3433
  %3438 = xor i64 %3435, %3434
  %3439 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3438, i1 true)
  %3440 = lshr i64 %3439, 3
  br label %3494

.preheader572:                                    ; preds = %3433, %3446
  %3441 = phi ptr [ %3444, %3446 ], [ %3431, %3433 ]
  %3442 = phi ptr [ %3443, %3446 ], [ %3430, %3433 ]
  %3443 = getelementptr inbounds nuw i8, ptr %3442, i64 8
  %3444 = getelementptr inbounds nuw i8, ptr %3441, i64 8
  %3445 = icmp ult ptr %3443, %3083
  br i1 %3445, label %3446, label %.loopexit573

3446:                                             ; preds = %.preheader572
  %3447 = load i64, ptr %3444, align 1, !tbaa !24
  %3448 = load i64, ptr %3443, align 1, !tbaa !24
  %3449 = icmp eq i64 %3447, %3448
  br i1 %3449, label %.preheader572, label %3450

3450:                                             ; preds = %3446
  %3451 = xor i64 %3448, %3447
  %3452 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3451, i1 true)
  %3453 = lshr i64 %3452, 3
  %3454 = getelementptr inbounds nuw i8, ptr %3443, i64 %3453
  %3455 = ptrtoint ptr %3454 to i64
  %3456 = ptrtoint ptr %3430 to i64
  %3457 = sub i64 %3455, %3456
  br label %3494

.loopexit573:                                     ; preds = %.preheader572, %.loopexit583
  %3458 = phi ptr [ %3431, %.loopexit583 ], [ %3444, %.preheader572 ]
  %3459 = phi ptr [ %3430, %.loopexit583 ], [ %3443, %.preheader572 ]
  %3460 = icmp ult ptr %3459, %3084
  br i1 %3460, label %3461, label %3468

3461:                                             ; preds = %.loopexit573
  %3462 = load i32, ptr %3458, align 1, !tbaa !25
  %3463 = load i32, ptr %3459, align 1, !tbaa !25
  %3464 = icmp eq i32 %3462, %3463
  br i1 %3464, label %3465, label %3468

3465:                                             ; preds = %3461
  %3466 = getelementptr inbounds nuw i8, ptr %3459, i64 4
  %3467 = getelementptr inbounds nuw i8, ptr %3458, i64 4
  br label %3468

3468:                                             ; preds = %3465, %3461, %.loopexit573
  %3469 = phi ptr [ %3467, %3465 ], [ %3458, %3461 ], [ %3458, %.loopexit573 ]
  %3470 = phi ptr [ %3466, %3465 ], [ %3459, %3461 ], [ %3459, %.loopexit573 ]
  %3471 = icmp ult ptr %3470, %3085
  br i1 %3471, label %3472, label %3479

3472:                                             ; preds = %3468
  %3473 = load i16, ptr %3469, align 1, !tbaa !35
  %3474 = load i16, ptr %3470, align 1, !tbaa !35
  %3475 = icmp eq i16 %3473, %3474
  br i1 %3475, label %3476, label %3479

3476:                                             ; preds = %3472
  %3477 = getelementptr inbounds nuw i8, ptr %3470, i64 2
  %3478 = getelementptr inbounds nuw i8, ptr %3469, i64 2
  br label %3479

3479:                                             ; preds = %3476, %3472, %3468
  %3480 = phi ptr [ %3478, %3476 ], [ %3469, %3472 ], [ %3469, %3468 ]
  %3481 = phi ptr [ %3477, %3476 ], [ %3470, %3472 ], [ %3470, %3468 ]
  %3482 = icmp ult ptr %3481, %42
  br i1 %3482, label %3483, label %3489

3483:                                             ; preds = %3479
  %3484 = load i8, ptr %3480, align 1, !tbaa !37
  %3485 = load i8, ptr %3481, align 1, !tbaa !37
  %3486 = icmp eq i8 %3484, %3485
  %3487 = zext i1 %3486 to i64
  %3488 = getelementptr inbounds nuw i8, ptr %3481, i64 %3487
  br label %3489

3489:                                             ; preds = %3483, %3479
  %3490 = phi ptr [ %3481, %3479 ], [ %3488, %3483 ]
  %3491 = ptrtoint ptr %3490 to i64
  %3492 = ptrtoint ptr %3430 to i64
  %3493 = sub i64 %3491, %3492
  br label %3494

3494:                                             ; preds = %3489, %3450, %3437
  %3495 = phi i64 [ %3493, %3489 ], [ %3440, %3437 ], [ %3457, %3450 ]
  %3496 = add i64 %3495, 8
  %3497 = ptrtoint ptr %3424 to i64
  %3498 = sub i64 %3428, %3497
  %3499 = icmp ugt ptr %3425, %3094
  %3500 = icmp ugt ptr %3424, %41
  %3501 = and i1 %3500, %3499
  br i1 %3501, label %.preheader568, label %.loopexit569

.preheader568:                                    ; preds = %3494, %3510
  %3502 = phi i64 [ %3511, %3510 ], [ %3496, %3494 ]
  %3503 = phi ptr [ %3505, %3510 ], [ %3425, %3494 ]
  %3504 = phi ptr [ %3507, %3510 ], [ %3424, %3494 ]
  %3505 = getelementptr inbounds i8, ptr %3503, i64 -1
  %3506 = load i8, ptr %3505, align 1, !tbaa !37
  %3507 = getelementptr inbounds i8, ptr %3504, i64 -1
  %3508 = load i8, ptr %3507, align 1, !tbaa !37
  %3509 = icmp eq i8 %3506, %3508
  br i1 %3509, label %3510, label %.loopexit569

3510:                                             ; preds = %.preheader568
  %3511 = add i64 %3502, 1
  %3512 = icmp ugt ptr %3505, %3094
  %3513 = icmp ugt ptr %3507, %41
  %3514 = and i1 %3512, %3513
  br i1 %3514, label %.preheader568, label %.loopexit569, !llvm.loop !59

3515:                                             ; preds = %3414
  %3516 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %3417
  %3517 = load i32, ptr %3516, align 4, !tbaa !25
  %3518 = zext i32 %3517 to i64
  %3519 = getelementptr inbounds nuw i8, ptr %22, i64 %3518
  %3520 = call ptr asm "cmp $1, $2\0Acmova $3, $0\0A", "=r,r,r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %3170, i32 %39, ptr nonnull readnone %6, ptr readnone %3175) #9, !srcloc !33
  %3521 = load i32, ptr %3520, align 1, !tbaa !25
  %3522 = load i32, ptr %3163, align 1, !tbaa !25
  %3523 = icmp eq i32 %3521, %3522
  %3524 = icmp eq ptr %3520, %3175
  %3525 = select i1 %3523, i1 %3524, i1 false
  br i1 %3525, label %.loopexit584, label %3526

3526:                                             ; preds = %3515
  %3527 = icmp ult ptr %3164, %3166
  br i1 %3527, label %3533, label %3528

3528:                                             ; preds = %3526
  %3529 = getelementptr inbounds nuw i8, ptr %3164, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %3529, i32 0, i32 3, i32 1)
  %3530 = getelementptr inbounds nuw i8, ptr %3164, i64 128
  call void @llvm.prefetch.p0(ptr nonnull %3530, i32 0, i32 3, i32 1)
  %3531 = add i64 %3165, 1
  %3532 = getelementptr inbounds nuw i8, ptr %3166, i64 256
  br label %3533

3533:                                             ; preds = %3528, %3526
  %3534 = phi i64 [ %3531, %3528 ], [ %3165, %3526 ]
  %3535 = phi ptr [ %3532, %3528 ], [ %3166, %3526 ]
  %3536 = getelementptr inbounds nuw i8, ptr %3164, i64 %3534
  %3537 = icmp ugt ptr %3536, %43
  br i1 %3537, label %.loopexit585, label %.preheader594, !llvm.loop !34

.loopexit584:                                     ; preds = %3515, %3134
  %3538 = phi i64 [ %3126, %3134 ], [ %3415, %3515 ]
  %3539 = phi i32 [ %3138, %3134 ], [ %3517, %3515 ]
  %3540 = phi ptr [ %3140, %3134 ], [ %3519, %3515 ]
  %3541 = phi i64 [ %3128, %3134 ], [ %3417, %3515 ]
  %3542 = phi ptr [ %3114, %3134 ], [ %3163, %3515 ]
  %3543 = phi ptr [ %3115, %3134 ], [ %3164, %3515 ]
  %3544 = phi i64 [ %3116, %3134 ], [ %3165, %3515 ]
  %3545 = phi i32 [ %3124, %3134 ], [ %3173, %3515 ]
  %3546 = phi ptr [ %3136, %3134 ], [ %3175, %3515 ]
  %3547 = getelementptr inbounds nuw i8, ptr %3542, i64 4
  %3548 = getelementptr inbounds nuw i8, ptr %3546, i64 4
  %3549 = icmp ult ptr %3547, %3083
  br i1 %3549, label %3550, label %.loopexit581

3550:                                             ; preds = %.loopexit584
  %3551 = load i64, ptr %3548, align 1, !tbaa !24
  %3552 = load i64, ptr %3547, align 1, !tbaa !24
  %3553 = icmp eq i64 %3551, %3552
  br i1 %3553, label %.preheader580, label %3554

3554:                                             ; preds = %3550
  %3555 = xor i64 %3552, %3551
  %3556 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3555, i1 true)
  %3557 = lshr i64 %3556, 3
  br label %3611

.preheader580:                                    ; preds = %3550, %3563
  %3558 = phi ptr [ %3561, %3563 ], [ %3548, %3550 ]
  %3559 = phi ptr [ %3560, %3563 ], [ %3547, %3550 ]
  %3560 = getelementptr inbounds nuw i8, ptr %3559, i64 8
  %3561 = getelementptr inbounds nuw i8, ptr %3558, i64 8
  %3562 = icmp ult ptr %3560, %3083
  br i1 %3562, label %3563, label %.loopexit581

3563:                                             ; preds = %.preheader580
  %3564 = load i64, ptr %3561, align 1, !tbaa !24
  %3565 = load i64, ptr %3560, align 1, !tbaa !24
  %3566 = icmp eq i64 %3564, %3565
  br i1 %3566, label %.preheader580, label %3567

3567:                                             ; preds = %3563
  %3568 = xor i64 %3565, %3564
  %3569 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3568, i1 true)
  %3570 = lshr i64 %3569, 3
  %3571 = getelementptr inbounds nuw i8, ptr %3560, i64 %3570
  %3572 = ptrtoint ptr %3571 to i64
  %3573 = ptrtoint ptr %3547 to i64
  %3574 = sub i64 %3572, %3573
  br label %3611

.loopexit581:                                     ; preds = %.preheader580, %.loopexit584
  %3575 = phi ptr [ %3548, %.loopexit584 ], [ %3561, %.preheader580 ]
  %3576 = phi ptr [ %3547, %.loopexit584 ], [ %3560, %.preheader580 ]
  %3577 = icmp ult ptr %3576, %3084
  br i1 %3577, label %3578, label %3585

3578:                                             ; preds = %.loopexit581
  %3579 = load i32, ptr %3575, align 1, !tbaa !25
  %3580 = load i32, ptr %3576, align 1, !tbaa !25
  %3581 = icmp eq i32 %3579, %3580
  br i1 %3581, label %3582, label %3585

3582:                                             ; preds = %3578
  %3583 = getelementptr inbounds nuw i8, ptr %3576, i64 4
  %3584 = getelementptr inbounds nuw i8, ptr %3575, i64 4
  br label %3585

3585:                                             ; preds = %3582, %3578, %.loopexit581
  %3586 = phi ptr [ %3584, %3582 ], [ %3575, %3578 ], [ %3575, %.loopexit581 ]
  %3587 = phi ptr [ %3583, %3582 ], [ %3576, %3578 ], [ %3576, %.loopexit581 ]
  %3588 = icmp ult ptr %3587, %3085
  br i1 %3588, label %3589, label %3596

3589:                                             ; preds = %3585
  %3590 = load i16, ptr %3586, align 1, !tbaa !35
  %3591 = load i16, ptr %3587, align 1, !tbaa !35
  %3592 = icmp eq i16 %3590, %3591
  br i1 %3592, label %3593, label %3596

3593:                                             ; preds = %3589
  %3594 = getelementptr inbounds nuw i8, ptr %3587, i64 2
  %3595 = getelementptr inbounds nuw i8, ptr %3586, i64 2
  br label %3596

3596:                                             ; preds = %3593, %3589, %3585
  %3597 = phi ptr [ %3595, %3593 ], [ %3586, %3589 ], [ %3586, %3585 ]
  %3598 = phi ptr [ %3594, %3593 ], [ %3587, %3589 ], [ %3587, %3585 ]
  %3599 = icmp ult ptr %3598, %42
  br i1 %3599, label %3600, label %3606

3600:                                             ; preds = %3596
  %3601 = load i8, ptr %3597, align 1, !tbaa !37
  %3602 = load i8, ptr %3598, align 1, !tbaa !37
  %3603 = icmp eq i8 %3601, %3602
  %3604 = zext i1 %3603 to i64
  %3605 = getelementptr inbounds nuw i8, ptr %3598, i64 %3604
  br label %3606

3606:                                             ; preds = %3600, %3596
  %3607 = phi ptr [ %3598, %3596 ], [ %3605, %3600 ]
  %3608 = ptrtoint ptr %3607 to i64
  %3609 = ptrtoint ptr %3547 to i64
  %3610 = sub i64 %3608, %3609
  br label %3611

3611:                                             ; preds = %3606, %3567, %3554
  %3612 = phi i64 [ %3610, %3606 ], [ %3557, %3554 ], [ %3574, %3567 ]
  %3613 = add i64 %3612, 4
  %3614 = ptrtoint ptr %3542 to i64
  %3615 = ptrtoint ptr %3546 to i64
  %3616 = sub i64 %3614, %3615
  %3617 = icmp ugt i32 %3539, %39
  br i1 %3617, label %3618, label %3694

3618:                                             ; preds = %3611
  %3619 = load i64, ptr %3540, align 1, !tbaa !24
  %3620 = icmp eq i64 %3619, %3538
  br i1 %3620, label %3621, label %3694

3621:                                             ; preds = %3618
  %3622 = getelementptr inbounds nuw i8, ptr %3543, i64 8
  %3623 = getelementptr inbounds nuw i8, ptr %3540, i64 8
  %3624 = icmp ult ptr %3622, %3083
  br i1 %3624, label %3625, label %.loopexit579

3625:                                             ; preds = %3621
  %3626 = load i64, ptr %3623, align 1, !tbaa !24
  %3627 = load i64, ptr %3622, align 1, !tbaa !24
  %3628 = icmp eq i64 %3626, %3627
  br i1 %3628, label %.preheader578, label %3629

3629:                                             ; preds = %3625
  %3630 = xor i64 %3627, %3626
  %3631 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3630, i1 true)
  %3632 = lshr i64 %3631, 3
  br label %3686

.preheader578:                                    ; preds = %3625, %3638
  %3633 = phi ptr [ %3636, %3638 ], [ %3623, %3625 ]
  %3634 = phi ptr [ %3635, %3638 ], [ %3622, %3625 ]
  %3635 = getelementptr inbounds nuw i8, ptr %3634, i64 8
  %3636 = getelementptr inbounds nuw i8, ptr %3633, i64 8
  %3637 = icmp ult ptr %3635, %3083
  br i1 %3637, label %3638, label %.loopexit579

3638:                                             ; preds = %.preheader578
  %3639 = load i64, ptr %3636, align 1, !tbaa !24
  %3640 = load i64, ptr %3635, align 1, !tbaa !24
  %3641 = icmp eq i64 %3639, %3640
  br i1 %3641, label %.preheader578, label %3642

3642:                                             ; preds = %3638
  %3643 = xor i64 %3640, %3639
  %3644 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3643, i1 true)
  %3645 = lshr i64 %3644, 3
  %3646 = getelementptr inbounds nuw i8, ptr %3635, i64 %3645
  %3647 = ptrtoint ptr %3646 to i64
  %3648 = ptrtoint ptr %3622 to i64
  %3649 = sub i64 %3647, %3648
  br label %3686

.loopexit579:                                     ; preds = %.preheader578, %3621
  %3650 = phi ptr [ %3623, %3621 ], [ %3636, %.preheader578 ]
  %3651 = phi ptr [ %3622, %3621 ], [ %3635, %.preheader578 ]
  %3652 = icmp ult ptr %3651, %3084
  br i1 %3652, label %3653, label %3660

3653:                                             ; preds = %.loopexit579
  %3654 = load i32, ptr %3650, align 1, !tbaa !25
  %3655 = load i32, ptr %3651, align 1, !tbaa !25
  %3656 = icmp eq i32 %3654, %3655
  br i1 %3656, label %3657, label %3660

3657:                                             ; preds = %3653
  %3658 = getelementptr inbounds nuw i8, ptr %3651, i64 4
  %3659 = getelementptr inbounds nuw i8, ptr %3650, i64 4
  br label %3660

3660:                                             ; preds = %3657, %3653, %.loopexit579
  %3661 = phi ptr [ %3659, %3657 ], [ %3650, %3653 ], [ %3650, %.loopexit579 ]
  %3662 = phi ptr [ %3658, %3657 ], [ %3651, %3653 ], [ %3651, %.loopexit579 ]
  %3663 = icmp ult ptr %3662, %3085
  br i1 %3663, label %3664, label %3671

3664:                                             ; preds = %3660
  %3665 = load i16, ptr %3661, align 1, !tbaa !35
  %3666 = load i16, ptr %3662, align 1, !tbaa !35
  %3667 = icmp eq i16 %3665, %3666
  br i1 %3667, label %3668, label %3671

3668:                                             ; preds = %3664
  %3669 = getelementptr inbounds nuw i8, ptr %3662, i64 2
  %3670 = getelementptr inbounds nuw i8, ptr %3661, i64 2
  br label %3671

3671:                                             ; preds = %3668, %3664, %3660
  %3672 = phi ptr [ %3670, %3668 ], [ %3661, %3664 ], [ %3661, %3660 ]
  %3673 = phi ptr [ %3669, %3668 ], [ %3662, %3664 ], [ %3662, %3660 ]
  %3674 = icmp ult ptr %3673, %42
  br i1 %3674, label %3675, label %3681

3675:                                             ; preds = %3671
  %3676 = load i8, ptr %3672, align 1, !tbaa !37
  %3677 = load i8, ptr %3673, align 1, !tbaa !37
  %3678 = icmp eq i8 %3676, %3677
  %3679 = zext i1 %3678 to i64
  %3680 = getelementptr inbounds nuw i8, ptr %3673, i64 %3679
  br label %3681

3681:                                             ; preds = %3675, %3671
  %3682 = phi ptr [ %3673, %3671 ], [ %3680, %3675 ]
  %3683 = ptrtoint ptr %3682 to i64
  %3684 = ptrtoint ptr %3622 to i64
  %3685 = sub i64 %3683, %3684
  br label %3686

3686:                                             ; preds = %3681, %3642, %3629
  %3687 = phi i64 [ %3685, %3681 ], [ %3632, %3629 ], [ %3649, %3642 ]
  %3688 = add i64 %3687, 8
  %3689 = icmp ugt i64 %3688, %3613
  br i1 %3689, label %3690, label %3694

3690:                                             ; preds = %3686
  %3691 = ptrtoint ptr %3543 to i64
  %3692 = ptrtoint ptr %3540 to i64
  %3693 = sub i64 %3691, %3692
  br label %3694

3694:                                             ; preds = %3690, %3686, %3618, %3611
  %3695 = phi ptr [ %3546, %3618 ], [ %3546, %3611 ], [ %3540, %3690 ], [ %3546, %3686 ]
  %3696 = phi ptr [ %3542, %3618 ], [ %3542, %3611 ], [ %3543, %3690 ], [ %3542, %3686 ]
  %3697 = phi i64 [ %3616, %3618 ], [ %3616, %3611 ], [ %3693, %3690 ], [ %3616, %3686 ]
  %3698 = phi i64 [ %3613, %3618 ], [ %3613, %3611 ], [ %3688, %3690 ], [ %3613, %3686 ]
  %3699 = icmp ugt ptr %3696, %3094
  %3700 = icmp ugt ptr %3695, %41
  %3701 = and i1 %3700, %3699
  br i1 %3701, label %.preheader574, label %.loopexit569

.preheader574:                                    ; preds = %3694, %3710
  %3702 = phi i64 [ %3711, %3710 ], [ %3698, %3694 ]
  %3703 = phi ptr [ %3705, %3710 ], [ %3696, %3694 ]
  %3704 = phi ptr [ %3707, %3710 ], [ %3695, %3694 ]
  %3705 = getelementptr inbounds i8, ptr %3703, i64 -1
  %3706 = load i8, ptr %3705, align 1, !tbaa !37
  %3707 = getelementptr inbounds i8, ptr %3704, i64 -1
  %3708 = load i8, ptr %3707, align 1, !tbaa !37
  %3709 = icmp eq i8 %3706, %3708
  br i1 %3709, label %3710, label %.loopexit569

3710:                                             ; preds = %.preheader574
  %3711 = add i64 %3702, 1
  %3712 = icmp ugt ptr %3705, %3094
  %3713 = icmp ugt ptr %3707, %41
  %3714 = and i1 %3712, %3713
  br i1 %3714, label %.preheader574, label %.loopexit569, !llvm.loop !60

.loopexit569:                                     ; preds = %3710, %.preheader574, %3510, %.preheader568, %3694, %3494
  %3715 = phi i64 [ %3423, %3494 ], [ %3541, %3694 ], [ %3423, %3510 ], [ %3423, %.preheader568 ], [ %3541, %.preheader574 ], [ %3541, %3710 ]
  %3716 = phi ptr [ %3426, %3494 ], [ %3543, %3694 ], [ %3426, %3510 ], [ %3426, %.preheader568 ], [ %3543, %.preheader574 ], [ %3543, %3710 ]
  %3717 = phi i64 [ %3427, %3494 ], [ %3544, %3694 ], [ %3427, %3510 ], [ %3427, %.preheader568 ], [ %3544, %.preheader574 ], [ %3544, %3710 ]
  %3718 = phi i32 [ %3429, %3494 ], [ %3545, %3694 ], [ %3429, %3510 ], [ %3429, %.preheader568 ], [ %3545, %.preheader574 ], [ %3545, %3710 ]
  %3719 = phi ptr [ %3425, %3494 ], [ %3696, %3694 ], [ %3505, %3510 ], [ %3503, %.preheader568 ], [ %3705, %3710 ], [ %3703, %.preheader574 ]
  %3720 = phi i64 [ %3498, %3494 ], [ %3697, %3694 ], [ %3498, %3510 ], [ %3498, %.preheader568 ], [ %3697, %.preheader574 ], [ %3697, %3710 ]
  %3721 = phi i64 [ %3496, %3494 ], [ %3698, %3694 ], [ %3511, %3510 ], [ %3502, %.preheader568 ], [ %3711, %3710 ], [ %3702, %.preheader574 ]
  %3722 = trunc i64 %3720 to i32
  %3723 = icmp ult i64 %3717, 4
  br i1 %3723, label %3724, label %3729

3724:                                             ; preds = %.loopexit569
  %3725 = ptrtoint ptr %3716 to i64
  %3726 = sub i64 %3725, %24
  %3727 = trunc i64 %3726 to i32
  %3728 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %3715
  store i32 %3727, ptr %3728, align 4, !tbaa !25
  br label %3729

3729:                                             ; preds = %3724, %.loopexit569
  %3730 = ptrtoint ptr %3719 to i64
  %3731 = ptrtoint ptr %3094 to i64
  %3732 = sub i64 %3730, %3731
  %3733 = add i32 %3722, 3
  %3734 = icmp ugt ptr %3719, %3086
  %3735 = load ptr, ptr %3087, align 8, !tbaa !38
  br i1 %3734, label %3758, label %3736

3736:                                             ; preds = %3729
  %3737 = load <2 x i64>, ptr %3094, align 1, !tbaa !37
  store <2 x i64> %3737, ptr %3735, align 1, !tbaa !37
  %3738 = icmp ugt i64 %3732, 16
  br i1 %3738, label %3739, label %3869

3739:                                             ; preds = %3736
  %3740 = load ptr, ptr %3087, align 8, !tbaa !38
  %3741 = getelementptr inbounds nuw i8, ptr %3740, i64 16
  %3742 = getelementptr inbounds nuw i8, ptr %3094, i64 16
  %3743 = getelementptr i8, ptr %3740, i64 %3732
  %3744 = load <2 x i64>, ptr %3742, align 1, !tbaa !37
  store <2 x i64> %3744, ptr %3741, align 1, !tbaa !37
  %3745 = icmp ult i64 %3732, 33
  br i1 %3745, label %3869, label %3746

3746:                                             ; preds = %3739
  %3747 = getelementptr inbounds nuw i8, ptr %3740, i64 32
  br label %3748

3748:                                             ; preds = %3748, %3746
  %3749 = phi ptr [ %3747, %3746 ], [ %3756, %3748 ]
  %3750 = phi ptr [ %3742, %3746 ], [ %3754, %3748 ]
  %3751 = getelementptr inbounds nuw i8, ptr %3750, i64 16
  %3752 = load <2 x i64>, ptr %3751, align 1, !tbaa !37
  store <2 x i64> %3752, ptr %3749, align 1, !tbaa !37
  %3753 = getelementptr inbounds nuw i8, ptr %3749, i64 16
  %3754 = getelementptr inbounds nuw i8, ptr %3750, i64 32
  %3755 = load <2 x i64>, ptr %3754, align 1, !tbaa !37
  store <2 x i64> %3755, ptr %3753, align 1, !tbaa !37
  %3756 = getelementptr inbounds nuw i8, ptr %3749, i64 32
  %3757 = icmp ult ptr %3756, %3743
  br i1 %3757, label %3748, label %.loopexit563, !llvm.loop !41

3758:                                             ; preds = %3729
  %3759 = icmp ugt ptr %3094, %3086
  br i1 %3759, label %.loopexit566, label %3760

3760:                                             ; preds = %3758
  %3761 = sub i64 %3088, %3731
  %3762 = getelementptr inbounds i8, ptr %3735, i64 %3761
  %3763 = load <2 x i64>, ptr %3094, align 1, !tbaa !37
  store <2 x i64> %3763, ptr %3735, align 1, !tbaa !37
  %3764 = icmp ult i64 %3761, 17
  br i1 %3764, label %.loopexit566, label %3765

3765:                                             ; preds = %3760
  %3766 = getelementptr inbounds nuw i8, ptr %3735, i64 16
  br label %3767

3767:                                             ; preds = %3767, %3765
  %3768 = phi ptr [ %3766, %3765 ], [ %3775, %3767 ]
  %3769 = phi ptr [ %3094, %3765 ], [ %3773, %3767 ]
  %3770 = getelementptr inbounds nuw i8, ptr %3769, i64 16
  %3771 = load <2 x i64>, ptr %3770, align 1, !tbaa !37
  store <2 x i64> %3771, ptr %3768, align 1, !tbaa !37
  %3772 = getelementptr inbounds nuw i8, ptr %3768, i64 16
  %3773 = getelementptr inbounds nuw i8, ptr %3769, i64 32
  %3774 = load <2 x i64>, ptr %3773, align 1, !tbaa !37
  store <2 x i64> %3774, ptr %3772, align 1, !tbaa !37
  %3775 = getelementptr inbounds nuw i8, ptr %3768, i64 32
  %3776 = icmp ult ptr %3775, %3762
  br i1 %3776, label %3767, label %.loopexit566, !llvm.loop !41

.loopexit566:                                     ; preds = %3767, %3760, %3758
  %3777 = phi ptr [ %3086, %3760 ], [ %3094, %3758 ], [ %3086, %3767 ]
  %3778 = phi ptr [ %3762, %3760 ], [ %3735, %3758 ], [ %3762, %3767 ]
  %3779 = icmp ult ptr %3777, %3719
  br i1 %3779, label %3780, label %.loopexit563

3780:                                             ; preds = %.loopexit566
  %3781 = ptrtoint ptr %3777 to i64
  %3782 = ptrtoint ptr %3778 to i64
  %3783 = sub i64 %3730, %3781
  %3784 = icmp ult i64 %3783, 4
  %3785 = sub i64 %3782, %3781
  %3786 = icmp ult i64 %3785, 32
  %3787 = select i1 %3784, i1 true, i1 %3786
  br i1 %3787, label %3823, label %3788

3788:                                             ; preds = %3780
  %3789 = icmp ult i64 %3783, 32
  br i1 %3789, label %3809, label %3790

3790:                                             ; preds = %3788
  %3791 = and i64 %3783, -32
  br label %3792

3792:                                             ; preds = %3792, %3790
  %3793 = phi i64 [ 0, %3790 ], [ %3800, %3792 ]
  %3794 = getelementptr i8, ptr %3778, i64 %3793
  %3795 = getelementptr i8, ptr %3777, i64 %3793
  %3796 = getelementptr i8, ptr %3795, i64 16
  %3797 = load <16 x i8>, ptr %3795, align 1, !tbaa !37
  %3798 = load <16 x i8>, ptr %3796, align 1, !tbaa !37
  %3799 = getelementptr i8, ptr %3794, i64 16
  store <16 x i8> %3797, ptr %3794, align 1, !tbaa !37
  store <16 x i8> %3798, ptr %3799, align 1, !tbaa !37
  %3800 = add nuw i64 %3793, 32
  %3801 = icmp eq i64 %3800, %3791
  br i1 %3801, label %3802, label %3792, !llvm.loop !89

3802:                                             ; preds = %3792
  %3803 = icmp eq i64 %3783, %3791
  br i1 %3803, label %.loopexit563, label %3804

3804:                                             ; preds = %3802
  %3805 = getelementptr i8, ptr %3778, i64 %3791
  %3806 = getelementptr i8, ptr %3777, i64 %3791
  %3807 = and i64 %3783, 28
  %3808 = icmp eq i64 %3807, 0
  br i1 %3808, label %3823, label %3809

3809:                                             ; preds = %3804, %3788
  %3810 = phi i64 [ %3791, %3804 ], [ 0, %3788 ]
  %3811 = and i64 %3783, -4
  br label %3812

3812:                                             ; preds = %3812, %3809
  %3813 = phi i64 [ %3810, %3809 ], [ %3817, %3812 ]
  %3814 = getelementptr i8, ptr %3778, i64 %3813
  %3815 = getelementptr i8, ptr %3777, i64 %3813
  %3816 = load <4 x i8>, ptr %3815, align 1, !tbaa !37
  store <4 x i8> %3816, ptr %3814, align 1, !tbaa !37
  %3817 = add nuw i64 %3813, 4
  %3818 = icmp eq i64 %3817, %3811
  br i1 %3818, label %3819, label %3812, !llvm.loop !90

3819:                                             ; preds = %3812
  %3820 = getelementptr i8, ptr %3778, i64 %3811
  %3821 = getelementptr i8, ptr %3777, i64 %3811
  %3822 = icmp eq i64 %3783, %3811
  br i1 %3822, label %.loopexit563, label %3823

3823:                                             ; preds = %3819, %3804, %3780
  %3824 = phi ptr [ %3778, %3780 ], [ %3805, %3804 ], [ %3820, %3819 ]
  %3825 = phi ptr [ %3777, %3780 ], [ %3806, %3804 ], [ %3821, %3819 ]
  %3826 = ptrtoint ptr %3825 to i64
  %3827 = sub i64 %3730, %3826
  %3828 = and i64 %3827, 7
  %3829 = icmp eq i64 %3828, 0
  br i1 %3829, label %.loopexit565, label %.preheader564

.preheader564:                                    ; preds = %3823, %.preheader564
  %3830 = phi ptr [ %3835, %.preheader564 ], [ %3824, %3823 ]
  %3831 = phi ptr [ %3833, %.preheader564 ], [ %3825, %3823 ]
  %3832 = phi i64 [ %3836, %.preheader564 ], [ 0, %3823 ]
  %3833 = getelementptr inbounds nuw i8, ptr %3831, i64 1
  %3834 = load i8, ptr %3831, align 1, !tbaa !37
  %3835 = getelementptr inbounds nuw i8, ptr %3830, i64 1
  store i8 %3834, ptr %3830, align 1, !tbaa !37
  %3836 = add nuw nsw i64 %3832, 1
  %3837 = icmp eq i64 %3836, %3828
  br i1 %3837, label %.loopexit565, label %.preheader564, !llvm.loop !91

.loopexit565:                                     ; preds = %.preheader564, %3823
  %3838 = phi ptr [ %3824, %3823 ], [ %3835, %.preheader564 ]
  %3839 = phi ptr [ %3825, %3823 ], [ %3833, %.preheader564 ]
  %3840 = sub i64 %3826, %3730
  %3841 = icmp ugt i64 %3840, -8
  br i1 %3841, label %.loopexit563, label %.preheader562

.preheader562:                                    ; preds = %.loopexit565, %.preheader562
  %3842 = phi ptr [ %3867, %.preheader562 ], [ %3838, %.loopexit565 ]
  %3843 = phi ptr [ %3865, %.preheader562 ], [ %3839, %.loopexit565 ]
  %3844 = getelementptr inbounds nuw i8, ptr %3843, i64 1
  %3845 = load i8, ptr %3843, align 1, !tbaa !37
  %3846 = getelementptr inbounds nuw i8, ptr %3842, i64 1
  store i8 %3845, ptr %3842, align 1, !tbaa !37
  %3847 = getelementptr inbounds nuw i8, ptr %3843, i64 2
  %3848 = load i8, ptr %3844, align 1, !tbaa !37
  %3849 = getelementptr inbounds nuw i8, ptr %3842, i64 2
  store i8 %3848, ptr %3846, align 1, !tbaa !37
  %3850 = getelementptr inbounds nuw i8, ptr %3843, i64 3
  %3851 = load i8, ptr %3847, align 1, !tbaa !37
  %3852 = getelementptr inbounds nuw i8, ptr %3842, i64 3
  store i8 %3851, ptr %3849, align 1, !tbaa !37
  %3853 = getelementptr inbounds nuw i8, ptr %3843, i64 4
  %3854 = load i8, ptr %3850, align 1, !tbaa !37
  %3855 = getelementptr inbounds nuw i8, ptr %3842, i64 4
  store i8 %3854, ptr %3852, align 1, !tbaa !37
  %3856 = getelementptr inbounds nuw i8, ptr %3843, i64 5
  %3857 = load i8, ptr %3853, align 1, !tbaa !37
  %3858 = getelementptr inbounds nuw i8, ptr %3842, i64 5
  store i8 %3857, ptr %3855, align 1, !tbaa !37
  %3859 = getelementptr inbounds nuw i8, ptr %3843, i64 6
  %3860 = load i8, ptr %3856, align 1, !tbaa !37
  %3861 = getelementptr inbounds nuw i8, ptr %3842, i64 6
  store i8 %3860, ptr %3858, align 1, !tbaa !37
  %3862 = getelementptr inbounds nuw i8, ptr %3843, i64 7
  %3863 = load i8, ptr %3859, align 1, !tbaa !37
  %3864 = getelementptr inbounds nuw i8, ptr %3842, i64 7
  store i8 %3863, ptr %3861, align 1, !tbaa !37
  %3865 = getelementptr inbounds nuw i8, ptr %3843, i64 8
  %3866 = load i8, ptr %3862, align 1, !tbaa !37
  %3867 = getelementptr inbounds nuw i8, ptr %3842, i64 8
  store i8 %3866, ptr %3864, align 1, !tbaa !37
  %3868 = icmp eq ptr %3865, %3719
  br i1 %3868, label %.loopexit563, label %.preheader562, !llvm.loop !92

3869:                                             ; preds = %3739, %3736
  %3870 = load ptr, ptr %3087, align 8, !tbaa !38
  %3871 = getelementptr inbounds nuw i8, ptr %3870, i64 %3732
  store ptr %3871, ptr %3087, align 8, !tbaa !38
  %3872 = load ptr, ptr %3090, align 8, !tbaa !50
  br label %3884

.loopexit563:                                     ; preds = %3748, %.preheader562, %.loopexit565, %3819, %3802, %.loopexit566
  %3873 = load ptr, ptr %3087, align 8, !tbaa !38
  %3874 = getelementptr inbounds nuw i8, ptr %3873, i64 %3732
  store ptr %3874, ptr %3087, align 8, !tbaa !38
  %3875 = icmp ugt i64 %3732, 65535
  %3876 = load ptr, ptr %3090, align 8, !tbaa !50
  br i1 %3875, label %3877, label %3884, !prof !51

3877:                                             ; preds = %.loopexit563
  store i32 1, ptr %3089, align 8, !tbaa !52
  %3878 = load ptr, ptr %1, align 8, !tbaa !53
  %3879 = ptrtoint ptr %3876 to i64
  %3880 = ptrtoint ptr %3878 to i64
  %3881 = sub i64 %3879, %3880
  %3882 = lshr exact i64 %3881, 3
  %3883 = trunc i64 %3882 to i32
  store i32 %3883, ptr %3091, align 4, !tbaa !54
  br label %3884

3884:                                             ; preds = %3877, %.loopexit563, %3869
  %3885 = phi ptr [ %3872, %3869 ], [ %3876, %3877 ], [ %3876, %.loopexit563 ]
  %3886 = trunc i64 %3732 to i16
  %3887 = getelementptr inbounds nuw i8, ptr %3885, i64 4
  store i16 %3886, ptr %3887, align 4, !tbaa !55
  store i32 %3733, ptr %3885, align 4, !tbaa !57
  %3888 = add i64 %3721, -3
  %3889 = icmp ugt i64 %3888, 65535
  br i1 %3889, label %3890, label %3904, !prof !58

3890:                                             ; preds = %3884, %3408
  %3891 = phi ptr [ %3409, %3408 ], [ %3885, %3884 ]
  %3892 = phi i64 [ %3412, %3408 ], [ %3888, %3884 ]
  %3893 = phi i32 [ %3173, %3408 ], [ %3718, %3884 ]
  %3894 = phi ptr [ %3177, %3408 ], [ %3719, %3884 ]
  %3895 = phi i64 [ %3249, %3408 ], [ %3721, %3884 ]
  %3896 = phi i32 [ %3096, %3408 ], [ %3098, %3884 ]
  %3897 = phi i32 [ %3098, %3408 ], [ %3722, %3884 ]
  store i32 2, ptr %3089, align 8, !tbaa !52
  %3898 = load ptr, ptr %1, align 8, !tbaa !53
  %3899 = ptrtoint ptr %3891 to i64
  %3900 = ptrtoint ptr %3898 to i64
  %3901 = sub i64 %3899, %3900
  %3902 = lshr exact i64 %3901, 3
  %3903 = trunc i64 %3902 to i32
  store i32 %3903, ptr %3091, align 4, !tbaa !54
  br label %3904

3904:                                             ; preds = %3890, %3884, %3408
  %3905 = phi i64 [ %3412, %3408 ], [ %3888, %3884 ], [ %3892, %3890 ]
  %3906 = phi ptr [ %3409, %3408 ], [ %3885, %3884 ], [ %3891, %3890 ]
  %3907 = phi i32 [ %3173, %3408 ], [ %3718, %3884 ], [ %3893, %3890 ]
  %3908 = phi ptr [ %3177, %3408 ], [ %3719, %3884 ], [ %3894, %3890 ]
  %3909 = phi i64 [ %3249, %3408 ], [ %3721, %3884 ], [ %3895, %3890 ]
  %3910 = phi i32 [ %3096, %3408 ], [ %3098, %3884 ], [ %3896, %3890 ]
  %3911 = phi i32 [ %3098, %3408 ], [ %3722, %3884 ], [ %3897, %3890 ]
  %3912 = trunc i64 %3905 to i16
  %3913 = getelementptr inbounds nuw i8, ptr %3906, i64 6
  store i16 %3912, ptr %3913, align 2, !tbaa !65
  %3914 = getelementptr inbounds nuw i8, ptr %3906, i64 8
  store ptr %3914, ptr %3090, align 8, !tbaa !50
  %3915 = getelementptr inbounds nuw i8, ptr %3908, i64 %3909
  %3916 = icmp ugt ptr %3915, %43
  br i1 %3916, label %.loopexit558, label %3917

3917:                                             ; preds = %3904
  %3918 = add i32 %3907, 2
  %3919 = zext i32 %3918 to i64
  %3920 = getelementptr inbounds nuw i8, ptr %22, i64 %3919
  %3921 = load i64, ptr %3920, align 1, !tbaa !24
  %3922 = mul i64 %3921, -3523014627327384477
  %3923 = lshr i64 %3922, %3080
  %3924 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %3923
  store i32 %3918, ptr %3924, align 4, !tbaa !25
  %3925 = getelementptr inbounds i8, ptr %3915, i64 -2
  %3926 = ptrtoint ptr %3925 to i64
  %3927 = sub i64 %3926, %24
  %3928 = trunc i64 %3927 to i32
  %3929 = load i64, ptr %3925, align 1, !tbaa !24
  %3930 = mul i64 %3929, -3523014627327384477
  %3931 = lshr i64 %3930, %3080
  %3932 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %3931
  store i32 %3928, ptr %3932, align 4, !tbaa !25
  %3933 = mul i64 %3921, -3523014627193167104
  %3934 = lshr i64 %3933, %3082
  %3935 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %3934
  store i32 %3918, ptr %3935, align 4, !tbaa !25
  %3936 = getelementptr inbounds i8, ptr %3915, i64 -1
  %3937 = ptrtoint ptr %3936 to i64
  %3938 = sub i64 %3937, %24
  %3939 = trunc i64 %3938 to i32
  %3940 = load i64, ptr %3936, align 1, !tbaa !24
  %3941 = mul i64 %3940, -3523014627193167104
  %3942 = lshr i64 %3941, %3082
  %3943 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %3942
  store i32 %3939, ptr %3943, align 4, !tbaa !25
  br label %3944

3944:                                             ; preds = %4051, %3917
  %3945 = phi ptr [ %3914, %3917 ], [ %4054, %4051 ]
  %3946 = phi ptr [ %3915, %3917 ], [ %4056, %4051 ]
  %3947 = phi i32 [ %3911, %3917 ], [ %3948, %4051 ]
  %3948 = phi i32 [ %3910, %3917 ], [ %3947, %4051 ]
  %3949 = icmp ne i32 %3948, 0
  %3950 = load i32, ptr %3946, align 1, !tbaa !25
  %3951 = zext i32 %3948 to i64
  %3952 = sub nsw i64 0, %3951
  %3953 = getelementptr inbounds i8, ptr %3946, i64 %3952
  %3954 = load i32, ptr %3953, align 1, !tbaa !25
  %3955 = icmp eq i32 %3950, %3954
  %3956 = and i1 %3949, %3955
  br i1 %3956, label %3957, label %.loopexit558

3957:                                             ; preds = %3944
  %3958 = getelementptr inbounds nuw i8, ptr %3946, i64 4
  %3959 = getelementptr inbounds i8, ptr %3958, i64 %3952
  %3960 = icmp ult ptr %3958, %3083
  br i1 %3960, label %3961, label %.loopexit557

3961:                                             ; preds = %3957
  %3962 = load i64, ptr %3959, align 1, !tbaa !24
  %3963 = load i64, ptr %3958, align 1, !tbaa !24
  %3964 = icmp eq i64 %3962, %3963
  br i1 %3964, label %.preheader556, label %3965

3965:                                             ; preds = %3961
  %3966 = xor i64 %3963, %3962
  %3967 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3966, i1 true)
  %3968 = lshr i64 %3967, 3
  br label %4022

.preheader556:                                    ; preds = %3961, %3974
  %3969 = phi ptr [ %3972, %3974 ], [ %3959, %3961 ]
  %3970 = phi ptr [ %3971, %3974 ], [ %3958, %3961 ]
  %3971 = getelementptr inbounds nuw i8, ptr %3970, i64 8
  %3972 = getelementptr inbounds nuw i8, ptr %3969, i64 8
  %3973 = icmp ult ptr %3971, %3083
  br i1 %3973, label %3974, label %.loopexit557

3974:                                             ; preds = %.preheader556
  %3975 = load i64, ptr %3972, align 1, !tbaa !24
  %3976 = load i64, ptr %3971, align 1, !tbaa !24
  %3977 = icmp eq i64 %3975, %3976
  br i1 %3977, label %.preheader556, label %3978

3978:                                             ; preds = %3974
  %3979 = xor i64 %3976, %3975
  %3980 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3979, i1 true)
  %3981 = lshr i64 %3980, 3
  %3982 = getelementptr inbounds nuw i8, ptr %3971, i64 %3981
  %3983 = ptrtoint ptr %3982 to i64
  %3984 = ptrtoint ptr %3958 to i64
  %3985 = sub i64 %3983, %3984
  br label %4022

.loopexit557:                                     ; preds = %.preheader556, %3957
  %3986 = phi ptr [ %3959, %3957 ], [ %3972, %.preheader556 ]
  %3987 = phi ptr [ %3958, %3957 ], [ %3971, %.preheader556 ]
  %3988 = icmp ult ptr %3987, %3084
  br i1 %3988, label %3989, label %3996

3989:                                             ; preds = %.loopexit557
  %3990 = load i32, ptr %3986, align 1, !tbaa !25
  %3991 = load i32, ptr %3987, align 1, !tbaa !25
  %3992 = icmp eq i32 %3990, %3991
  br i1 %3992, label %3993, label %3996

3993:                                             ; preds = %3989
  %3994 = getelementptr inbounds nuw i8, ptr %3987, i64 4
  %3995 = getelementptr inbounds nuw i8, ptr %3986, i64 4
  br label %3996

3996:                                             ; preds = %3993, %3989, %.loopexit557
  %3997 = phi ptr [ %3995, %3993 ], [ %3986, %3989 ], [ %3986, %.loopexit557 ]
  %3998 = phi ptr [ %3994, %3993 ], [ %3987, %3989 ], [ %3987, %.loopexit557 ]
  %3999 = icmp ult ptr %3998, %3085
  br i1 %3999, label %4000, label %4007

4000:                                             ; preds = %3996
  %4001 = load i16, ptr %3997, align 1, !tbaa !35
  %4002 = load i16, ptr %3998, align 1, !tbaa !35
  %4003 = icmp eq i16 %4001, %4002
  br i1 %4003, label %4004, label %4007

4004:                                             ; preds = %4000
  %4005 = getelementptr inbounds nuw i8, ptr %3998, i64 2
  %4006 = getelementptr inbounds nuw i8, ptr %3997, i64 2
  br label %4007

4007:                                             ; preds = %4004, %4000, %3996
  %4008 = phi ptr [ %4006, %4004 ], [ %3997, %4000 ], [ %3997, %3996 ]
  %4009 = phi ptr [ %4005, %4004 ], [ %3998, %4000 ], [ %3998, %3996 ]
  %4010 = icmp ult ptr %4009, %42
  br i1 %4010, label %4011, label %4017

4011:                                             ; preds = %4007
  %4012 = load i8, ptr %4008, align 1, !tbaa !37
  %4013 = load i8, ptr %4009, align 1, !tbaa !37
  %4014 = icmp eq i8 %4012, %4013
  %4015 = zext i1 %4014 to i64
  %4016 = getelementptr inbounds nuw i8, ptr %4009, i64 %4015
  br label %4017

4017:                                             ; preds = %4011, %4007
  %4018 = phi ptr [ %4009, %4007 ], [ %4016, %4011 ]
  %4019 = ptrtoint ptr %4018 to i64
  %4020 = ptrtoint ptr %3958 to i64
  %4021 = sub i64 %4019, %4020
  br label %4022

4022:                                             ; preds = %4017, %3978, %3965
  %4023 = phi i64 [ %4021, %4017 ], [ %3968, %3965 ], [ %3985, %3978 ]
  %4024 = ptrtoint ptr %3946 to i64
  %4025 = sub i64 %4024, %24
  %4026 = trunc i64 %4025 to i32
  %4027 = load i64, ptr %3946, align 1, !tbaa !24
  %4028 = mul i64 %4027, -3523014627193167104
  %4029 = lshr i64 %4028, %3082
  %4030 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %4029
  store i32 %4026, ptr %4030, align 4, !tbaa !25
  %4031 = mul i64 %4027, -3523014627327384477
  %4032 = lshr i64 %4031, %3080
  %4033 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %4032
  store i32 %4026, ptr %4033, align 4, !tbaa !25
  %4034 = icmp ugt ptr %3946, %3086
  br i1 %4034, label %4039, label %4035

4035:                                             ; preds = %4022
  %4036 = load ptr, ptr %3087, align 8, !tbaa !38
  %4037 = load <2 x i64>, ptr %3946, align 1, !tbaa !37
  store <2 x i64> %4037, ptr %4036, align 1, !tbaa !37
  %4038 = load ptr, ptr %3090, align 8, !tbaa !50
  br label %4039

4039:                                             ; preds = %4035, %4022
  %4040 = phi ptr [ %3945, %4022 ], [ %4038, %4035 ]
  %4041 = getelementptr inbounds nuw i8, ptr %4040, i64 4
  store i16 0, ptr %4041, align 4, !tbaa !55
  store i32 1, ptr %4040, align 4, !tbaa !57
  %4042 = add i64 %4023, 1
  %4043 = icmp ugt i64 %4042, 65535
  br i1 %4043, label %4044, label %4051, !prof !58

4044:                                             ; preds = %4039
  store i32 2, ptr %3089, align 8, !tbaa !52
  %4045 = load ptr, ptr %1, align 8, !tbaa !53
  %4046 = ptrtoint ptr %4040 to i64
  %4047 = ptrtoint ptr %4045 to i64
  %4048 = sub i64 %4046, %4047
  %4049 = lshr exact i64 %4048, 3
  %4050 = trunc i64 %4049 to i32
  store i32 %4050, ptr %3091, align 4, !tbaa !54
  br label %4051

4051:                                             ; preds = %4044, %4039
  %4052 = trunc i64 %4042 to i16
  %4053 = getelementptr inbounds nuw i8, ptr %4040, i64 6
  store i16 %4052, ptr %4053, align 2, !tbaa !65
  %4054 = getelementptr inbounds nuw i8, ptr %4040, i64 8
  store ptr %4054, ptr %3090, align 8, !tbaa !50
  %4055 = getelementptr i8, ptr %3946, i64 %4023
  %4056 = getelementptr i8, ptr %4055, i64 4
  %4057 = icmp ugt ptr %4056, %43
  br i1 %4057, label %.loopexit558, label %3944

.loopexit558:                                     ; preds = %4051, %3944, %3904
  %4058 = phi i32 [ %3910, %3904 ], [ %3947, %4051 ], [ %3948, %3944 ]
  %4059 = phi i32 [ %3911, %3904 ], [ %3948, %4051 ], [ %3947, %3944 ]
  %4060 = phi ptr [ %3915, %3904 ], [ %4056, %4051 ], [ %3946, %3944 ]
  %4061 = getelementptr inbounds nuw i8, ptr %4060, i64 1
  %4062 = icmp ugt ptr %4061, %43
  br i1 %4062, label %.loopexit585, label %3092

.loopexit585:                                     ; preds = %.loopexit558, %3533, %3154, %3077
  %4063 = phi i32 [ %60, %3077 ], [ %3096, %3154 ], [ %3096, %3533 ], [ %4058, %.loopexit558 ]
  %4064 = phi i32 [ %62, %3077 ], [ 0, %3154 ], [ %3098, %3533 ], [ %4059, %.loopexit558 ]
  %4065 = phi ptr [ %3, %3077 ], [ %3094, %3154 ], [ %3094, %3533 ], [ %4060, %.loopexit558 ]
  %4066 = select i1 %61, i32 %44, i32 0
  %4067 = select i1 %59, i32 %46, i32 0
  %4068 = icmp ne i32 %4064, 0
  %4069 = select i1 %61, i1 %4068, i1 false
  %4070 = select i1 %4069, i32 %44, i32 %4067
  %4071 = select i1 %4068, i32 %4064, i32 %4066
  store i32 %4071, ptr %2, align 4, !tbaa !25
  %4072 = icmp eq i32 %4063, 0
  %4073 = select i1 %4072, i32 %4070, i32 %4063
  store i32 %4073, ptr %45, align 4, !tbaa !25
  %4074 = ptrtoint ptr %42 to i64
  %4075 = ptrtoint ptr %4065 to i64
  %4076 = sub i64 %4074, %4075
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %4077

4077:                                             ; preds = %.loopexit585, %.loopexit671, %.loopexit628, %.loopexit542
  %4078 = phi i64 [ %1076, %.loopexit542 ], [ %4076, %.loopexit585 ], [ %2076, %.loopexit628 ], [ %3076, %.loopexit671 ]
  ret i64 %4078
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local i64 @ZSTD_compressBlock_doubleFast_dictMatchState(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %7 = load i32, ptr %6, align 8, !tbaa !29
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %12 = load i32, ptr %11, align 8, !tbaa !23
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %16 = load i32, ptr %15, align 4, !tbaa !22
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %18 = load ptr, ptr %17, align 8, !tbaa !20
  %19 = ptrtoint ptr %3 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = add i64 %4, %19
  %22 = sub i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = load i32, ptr %8, align 8, !tbaa !30
  %25 = getelementptr i8, ptr %0, i64 24
  %26 = load i32, ptr %25, align 8, !tbaa !31
  %27 = getelementptr i8, ptr %0, i64 40
  %28 = load i32, ptr %27, align 8, !tbaa !32
  %29 = shl nuw i32 1, %24
  %30 = sub i32 %23, %26
  %31 = icmp ugt i32 %30, %29
  %32 = sub i32 %23, %29
  %33 = icmp eq i32 %28, 0
  %34 = select i1 %33, i1 %31, i1 false
  %35 = select i1 %34, i32 %32, i32 %26
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds nuw i8, ptr %18, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %39 = getelementptr inbounds i8, ptr %38, i64 -8
  %40 = load i32, ptr %2, align 4, !tbaa !25
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %42 = load i32, ptr %41, align 4, !tbaa !25
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %44 = load ptr, ptr %43, align 8, !tbaa !93
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 112
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = getelementptr inbounds nuw i8, ptr %44, i64 128
  %48 = load ptr, ptr %47, align 8, !tbaa !19
  %49 = getelementptr inbounds nuw i8, ptr %44, i64 24
  %50 = load i32, ptr %49, align 8, !tbaa !31
  %51 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %52 = load ptr, ptr %51, align 8, !tbaa !20
  %53 = zext i32 %50 to i64
  %54 = getelementptr inbounds nuw i8, ptr %52, i64 %53
  %55 = load ptr, ptr %44, align 8, !tbaa !94
  %56 = ptrtoint ptr %55 to i64
  %57 = ptrtoint ptr %52 to i64
  %58 = sub i64 %57, %56
  %59 = trunc i64 %58 to i32
  %60 = add i32 %35, %59
  %61 = getelementptr inbounds nuw i8, ptr %44, i64 264
  %62 = load i32, ptr %61, align 8, !tbaa !23
  %63 = getelementptr inbounds nuw i8, ptr %44, i64 260
  %64 = load i32, ptr %63, align 4, !tbaa !22
  %65 = ptrtoint ptr %37 to i64
  %66 = sub i64 %19, %65
  %67 = ptrtoint ptr %54 to i64
  %68 = sub i64 %56, %67
  %69 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %66, i64 %68), !nosanitize !95
  %70 = extractvalue { i64, i1 } %69, 1, !nosanitize !95
  switch i32 %7, label %71 [
    i32 7, label %2896
    i32 5, label %1016
    i32 6, label %1956
  ]

71:                                               ; preds = %5
  br i1 %70, label %72, label %73, !prof !96, !nosanitize !95

72:                                               ; preds = %71
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !95
  unreachable, !nosanitize !95

73:                                               ; preds = %71
  %74 = extractvalue { i64, i1 } %69, 0, !nosanitize !95
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %76 = load i32, ptr %75, align 8, !tbaa !97
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %.loopexit487, label %78

78:                                               ; preds = %73
  %79 = zext nneg i32 %62 to i64
  %80 = shl i64 4, %79
  %81 = zext nneg i32 %64 to i64
  %82 = shl i64 4, %81
  %83 = icmp ugt i32 %62, 61
  br i1 %83, label %.loopexit489, label %.preheader488

.loopexit489:                                     ; preds = %.preheader488, %78
  %84 = icmp ugt i32 %64, 61
  br i1 %84, label %.loopexit487, label %.preheader486

.preheader488:                                    ; preds = %78, %.preheader488
  %85 = phi i64 [ %87, %.preheader488 ], [ 0, %78 ]
  %86 = getelementptr inbounds nuw i8, ptr %46, i64 %85
  tail call void @llvm.prefetch.p0(ptr %86, i32 0, i32 2, i32 1)
  %87 = add i64 %85, 64
  %88 = icmp ult i64 %87, %80
  br i1 %88, label %.preheader488, label %.loopexit489, !llvm.loop !98

.preheader486:                                    ; preds = %.loopexit489, %.preheader486
  %89 = phi i64 [ %91, %.preheader486 ], [ 0, %.loopexit489 ]
  %90 = getelementptr inbounds nuw i8, ptr %48, i64 %89
  tail call void @llvm.prefetch.p0(ptr %90, i32 0, i32 2, i32 1)
  %91 = add i64 %89, 64
  %92 = icmp ult i64 %91, %82
  br i1 %92, label %.preheader486, label %.loopexit487, !llvm.loop !99

.loopexit487:                                     ; preds = %.preheader486, %.loopexit489, %73
  %93 = and i64 %74, 4294967295
  %94 = icmp eq i64 %93, 0
  %95 = zext i1 %94 to i64
  %96 = add nsw i64 %4, -8
  %97 = icmp sgt i64 %96, %95
  br i1 %97, label %98, label %3836

98:                                               ; preds = %.loopexit487
  %99 = getelementptr inbounds nuw i8, ptr %3, i64 %95
  %100 = sub i32 64, %12
  %101 = zext nneg i32 %100 to i64
  %102 = sub i32 32, %16
  %103 = sub i32 56, %62
  %104 = zext nneg i32 %103 to i64
  %105 = sub i32 24, %64
  %106 = getelementptr inbounds i8, ptr %38, i64 -32
  %107 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %108 = ptrtoint ptr %106 to i64
  %109 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %110 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %111 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %112 = getelementptr inbounds i8, ptr %38, i64 -7
  %113 = getelementptr inbounds i8, ptr %38, i64 -3
  %114 = getelementptr inbounds i8, ptr %38, i64 -1
  %115 = zext i32 %60 to i64
  %116 = sub nsw i64 0, %115
  %117 = getelementptr i8, ptr %52, i64 %116
  br label %118

118:                                              ; preds = %.loopexit, %98
  %119 = phi ptr [ %99, %98 ], [ %1012, %.loopexit ]
  %120 = phi ptr [ %3, %98 ], [ %1011, %.loopexit ]
  %121 = phi i32 [ %40, %98 ], [ %1010, %.loopexit ]
  %122 = phi i32 [ %42, %98 ], [ %1009, %.loopexit ]
  %123 = load i64, ptr %119, align 1
  %124 = mul i64 %123, -3523014627327384477
  %125 = lshr i64 %124, %101
  %126 = trunc i64 %123 to i32
  %127 = mul i32 %126, -1640531535
  %128 = lshr i32 %127, %102
  %129 = zext i32 %128 to i64
  %130 = lshr i64 %124, %104
  %131 = lshr i32 %127, %105
  %132 = lshr i64 %130, 8
  %133 = getelementptr inbounds nuw [4 x i8], ptr %46, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !25
  %135 = lshr i32 %131, 8
  %136 = zext nneg i32 %135 to i64
  %137 = getelementptr inbounds nuw [4 x i8], ptr %48, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !25
  %139 = zext i32 %134 to i64
  %140 = xor i64 %130, %139
  %141 = and i64 %140, 255
  %142 = icmp eq i64 %141, 0
  %143 = xor i32 %131, %138
  %144 = and i32 %143, 255
  %145 = icmp eq i32 %144, 0
  %146 = ptrtoint ptr %119 to i64
  %147 = sub i64 %146, %20
  %148 = trunc i64 %147 to i32
  %149 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %125
  %150 = load i32, ptr %149, align 4, !tbaa !25
  %151 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %129
  %152 = load i32, ptr %151, align 4, !tbaa !25
  %153 = zext i32 %150 to i64
  %154 = getelementptr inbounds nuw i8, ptr %18, i64 %153
  %155 = zext i32 %152 to i64
  %156 = getelementptr inbounds nuw i8, ptr %18, i64 %155
  %157 = add i32 %148, 1
  %158 = sub i32 %157, %121
  %159 = icmp ult i32 %158, %35
  %160 = sub i32 %158, %60
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds nuw i8, ptr %52, i64 %161
  %163 = zext i32 %158 to i64
  %164 = getelementptr inbounds nuw i8, ptr %18, i64 %163
  %165 = select i1 %159, ptr %162, ptr %164
  store i32 %148, ptr %151, align 4, !tbaa !25
  store i32 %148, ptr %149, align 4, !tbaa !25
  %166 = sub i32 %158, %35
  %167 = icmp ugt i32 %166, -4
  br i1 %167, label %339, label %168

168:                                              ; preds = %118
  %169 = load i32, ptr %165, align 1, !tbaa !25
  %170 = getelementptr inbounds nuw i8, ptr %119, i64 1
  %171 = load i32, ptr %170, align 1, !tbaa !25
  %172 = icmp eq i32 %169, %171
  br i1 %172, label %173, label %339

173:                                              ; preds = %168
  %174 = select i1 %159, ptr %55, ptr %38
  %175 = getelementptr inbounds nuw i8, ptr %119, i64 5
  %176 = getelementptr inbounds nuw i8, ptr %165, i64 4
  %177 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %175, ptr noundef nonnull %176, ptr noundef %38, ptr noundef %174, ptr noundef %37)
  %178 = add i64 %177, 4
  %179 = ptrtoint ptr %170 to i64
  %180 = ptrtoint ptr %120 to i64
  %181 = sub i64 %179, %180
  %182 = icmp ugt ptr %170, %106
  %183 = load ptr, ptr %107, align 8, !tbaa !38
  br i1 %182, label %206, label %184

184:                                              ; preds = %173
  %185 = load <2 x i64>, ptr %120, align 1, !tbaa !37
  store <2 x i64> %185, ptr %183, align 1, !tbaa !37
  %186 = icmp ugt i64 %181, 16
  br i1 %186, label %187, label %318

187:                                              ; preds = %184
  %188 = load ptr, ptr %107, align 8, !tbaa !38
  %189 = getelementptr inbounds nuw i8, ptr %188, i64 16
  %190 = getelementptr inbounds nuw i8, ptr %120, i64 16
  %191 = getelementptr i8, ptr %188, i64 %181
  %192 = load <2 x i64>, ptr %190, align 1, !tbaa !37
  store <2 x i64> %192, ptr %189, align 1, !tbaa !37
  %193 = icmp ult i64 %181, 33
  br i1 %193, label %318, label %194

194:                                              ; preds = %187
  %195 = getelementptr inbounds nuw i8, ptr %188, i64 32
  br label %196

196:                                              ; preds = %196, %194
  %197 = phi ptr [ %195, %194 ], [ %204, %196 ]
  %198 = phi ptr [ %190, %194 ], [ %202, %196 ]
  %199 = getelementptr inbounds nuw i8, ptr %198, i64 16
  %200 = load <2 x i64>, ptr %199, align 1, !tbaa !37
  store <2 x i64> %200, ptr %197, align 1, !tbaa !37
  %201 = getelementptr inbounds nuw i8, ptr %197, i64 16
  %202 = getelementptr inbounds nuw i8, ptr %198, i64 32
  %203 = load <2 x i64>, ptr %202, align 1, !tbaa !37
  store <2 x i64> %203, ptr %201, align 1, !tbaa !37
  %204 = getelementptr inbounds nuw i8, ptr %197, i64 32
  %205 = icmp ult ptr %204, %191
  br i1 %205, label %196, label %.loopexit481, !llvm.loop !41

206:                                              ; preds = %173
  %207 = icmp ugt ptr %120, %106
  br i1 %207, label %.loopexit484, label %208

208:                                              ; preds = %206
  %209 = sub i64 %108, %180
  %210 = getelementptr inbounds i8, ptr %183, i64 %209
  %211 = load <2 x i64>, ptr %120, align 1, !tbaa !37
  store <2 x i64> %211, ptr %183, align 1, !tbaa !37
  %212 = icmp ult i64 %209, 17
  br i1 %212, label %.loopexit484, label %213

213:                                              ; preds = %208
  %214 = getelementptr inbounds nuw i8, ptr %183, i64 16
  br label %215

215:                                              ; preds = %215, %213
  %216 = phi ptr [ %214, %213 ], [ %223, %215 ]
  %217 = phi ptr [ %120, %213 ], [ %221, %215 ]
  %218 = getelementptr inbounds nuw i8, ptr %217, i64 16
  %219 = load <2 x i64>, ptr %218, align 1, !tbaa !37
  store <2 x i64> %219, ptr %216, align 1, !tbaa !37
  %220 = getelementptr inbounds nuw i8, ptr %216, i64 16
  %221 = getelementptr inbounds nuw i8, ptr %217, i64 32
  %222 = load <2 x i64>, ptr %221, align 1, !tbaa !37
  store <2 x i64> %222, ptr %220, align 1, !tbaa !37
  %223 = getelementptr inbounds nuw i8, ptr %216, i64 32
  %224 = icmp ult ptr %223, %210
  br i1 %224, label %215, label %.loopexit484, !llvm.loop !41

.loopexit484:                                     ; preds = %215, %208, %206
  %225 = phi ptr [ %106, %208 ], [ %120, %206 ], [ %106, %215 ]
  %226 = phi ptr [ %210, %208 ], [ %183, %206 ], [ %210, %215 ]
  %227 = icmp ult ptr %225, %170
  br i1 %227, label %228, label %.loopexit481

228:                                              ; preds = %.loopexit484
  %229 = ptrtoint ptr %225 to i64
  %230 = ptrtoint ptr %226 to i64
  %231 = add i64 %146, 1
  %232 = sub i64 %231, %229
  %233 = icmp ult i64 %232, 4
  %234 = sub i64 %230, %229
  %235 = icmp ult i64 %234, 32
  %236 = select i1 %233, i1 true, i1 %235
  br i1 %236, label %272, label %237

237:                                              ; preds = %228
  %238 = icmp ult i64 %232, 32
  br i1 %238, label %258, label %239

239:                                              ; preds = %237
  %240 = and i64 %232, -32
  br label %241

241:                                              ; preds = %241, %239
  %242 = phi i64 [ 0, %239 ], [ %249, %241 ]
  %243 = getelementptr i8, ptr %226, i64 %242
  %244 = getelementptr i8, ptr %225, i64 %242
  %245 = getelementptr i8, ptr %244, i64 16
  %246 = load <16 x i8>, ptr %244, align 1, !tbaa !37
  %247 = load <16 x i8>, ptr %245, align 1, !tbaa !37
  %248 = getelementptr i8, ptr %243, i64 16
  store <16 x i8> %246, ptr %243, align 1, !tbaa !37
  store <16 x i8> %247, ptr %248, align 1, !tbaa !37
  %249 = add nuw i64 %242, 32
  %250 = icmp eq i64 %249, %240
  br i1 %250, label %251, label %241, !llvm.loop !100

251:                                              ; preds = %241
  %252 = icmp eq i64 %232, %240
  br i1 %252, label %.loopexit481, label %253

253:                                              ; preds = %251
  %254 = getelementptr i8, ptr %226, i64 %240
  %255 = getelementptr i8, ptr %225, i64 %240
  %256 = and i64 %232, 28
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %272, label %258

258:                                              ; preds = %253, %237
  %259 = phi i64 [ %240, %253 ], [ 0, %237 ]
  %260 = and i64 %232, -4
  br label %261

261:                                              ; preds = %261, %258
  %262 = phi i64 [ %259, %258 ], [ %266, %261 ]
  %263 = getelementptr i8, ptr %226, i64 %262
  %264 = getelementptr i8, ptr %225, i64 %262
  %265 = load <4 x i8>, ptr %264, align 1, !tbaa !37
  store <4 x i8> %265, ptr %263, align 1, !tbaa !37
  %266 = add nuw i64 %262, 4
  %267 = icmp eq i64 %266, %260
  br i1 %267, label %268, label %261, !llvm.loop !101

268:                                              ; preds = %261
  %269 = getelementptr i8, ptr %226, i64 %260
  %270 = getelementptr i8, ptr %225, i64 %260
  %271 = icmp eq i64 %232, %260
  br i1 %271, label %.loopexit481, label %272

272:                                              ; preds = %268, %253, %228
  %273 = phi ptr [ %226, %228 ], [ %254, %253 ], [ %269, %268 ]
  %274 = phi ptr [ %225, %228 ], [ %255, %253 ], [ %270, %268 ]
  %275 = ptrtoint ptr %274 to i64
  %276 = sub i64 %231, %275
  %277 = sub i64 %146, %275
  %278 = and i64 %276, 7
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %.loopexit483, label %.preheader482

.preheader482:                                    ; preds = %272, %.preheader482
  %280 = phi ptr [ %285, %.preheader482 ], [ %273, %272 ]
  %281 = phi ptr [ %283, %.preheader482 ], [ %274, %272 ]
  %282 = phi i64 [ %286, %.preheader482 ], [ 0, %272 ]
  %283 = getelementptr inbounds nuw i8, ptr %281, i64 1
  %284 = load i8, ptr %281, align 1, !tbaa !37
  %285 = getelementptr inbounds nuw i8, ptr %280, i64 1
  store i8 %284, ptr %280, align 1, !tbaa !37
  %286 = add nuw nsw i64 %282, 1
  %287 = icmp eq i64 %286, %278
  br i1 %287, label %.loopexit483, label %.preheader482, !llvm.loop !102

.loopexit483:                                     ; preds = %.preheader482, %272
  %288 = phi ptr [ %273, %272 ], [ %285, %.preheader482 ]
  %289 = phi ptr [ %274, %272 ], [ %283, %.preheader482 ]
  %290 = icmp ult i64 %277, 7
  br i1 %290, label %.loopexit481, label %.preheader480

.preheader480:                                    ; preds = %.loopexit483, %.preheader480
  %291 = phi ptr [ %316, %.preheader480 ], [ %288, %.loopexit483 ]
  %292 = phi ptr [ %314, %.preheader480 ], [ %289, %.loopexit483 ]
  %293 = getelementptr inbounds nuw i8, ptr %292, i64 1
  %294 = load i8, ptr %292, align 1, !tbaa !37
  %295 = getelementptr inbounds nuw i8, ptr %291, i64 1
  store i8 %294, ptr %291, align 1, !tbaa !37
  %296 = getelementptr inbounds nuw i8, ptr %292, i64 2
  %297 = load i8, ptr %293, align 1, !tbaa !37
  %298 = getelementptr inbounds nuw i8, ptr %291, i64 2
  store i8 %297, ptr %295, align 1, !tbaa !37
  %299 = getelementptr inbounds nuw i8, ptr %292, i64 3
  %300 = load i8, ptr %296, align 1, !tbaa !37
  %301 = getelementptr inbounds nuw i8, ptr %291, i64 3
  store i8 %300, ptr %298, align 1, !tbaa !37
  %302 = getelementptr inbounds nuw i8, ptr %292, i64 4
  %303 = load i8, ptr %299, align 1, !tbaa !37
  %304 = getelementptr inbounds nuw i8, ptr %291, i64 4
  store i8 %303, ptr %301, align 1, !tbaa !37
  %305 = getelementptr inbounds nuw i8, ptr %292, i64 5
  %306 = load i8, ptr %302, align 1, !tbaa !37
  %307 = getelementptr inbounds nuw i8, ptr %291, i64 5
  store i8 %306, ptr %304, align 1, !tbaa !37
  %308 = getelementptr inbounds nuw i8, ptr %292, i64 6
  %309 = load i8, ptr %305, align 1, !tbaa !37
  %310 = getelementptr inbounds nuw i8, ptr %291, i64 6
  store i8 %309, ptr %307, align 1, !tbaa !37
  %311 = getelementptr inbounds nuw i8, ptr %292, i64 7
  %312 = load i8, ptr %308, align 1, !tbaa !37
  %313 = getelementptr inbounds nuw i8, ptr %291, i64 7
  store i8 %312, ptr %310, align 1, !tbaa !37
  %314 = getelementptr inbounds nuw i8, ptr %292, i64 8
  %315 = load i8, ptr %311, align 1, !tbaa !37
  %316 = getelementptr inbounds nuw i8, ptr %291, i64 8
  store i8 %315, ptr %313, align 1, !tbaa !37
  %317 = icmp eq ptr %311, %119
  br i1 %317, label %.loopexit481, label %.preheader480, !llvm.loop !103

318:                                              ; preds = %187, %184
  %319 = load ptr, ptr %107, align 8, !tbaa !38
  %320 = getelementptr inbounds nuw i8, ptr %319, i64 %181
  store ptr %320, ptr %107, align 8, !tbaa !38
  %321 = load ptr, ptr %110, align 8, !tbaa !50
  br label %333

.loopexit481:                                     ; preds = %196, %.preheader480, %.loopexit483, %268, %251, %.loopexit484
  %322 = load ptr, ptr %107, align 8, !tbaa !38
  %323 = getelementptr inbounds nuw i8, ptr %322, i64 %181
  store ptr %323, ptr %107, align 8, !tbaa !38
  %324 = icmp ugt i64 %181, 65535
  %325 = load ptr, ptr %110, align 8, !tbaa !50
  br i1 %324, label %326, label %333, !prof !51

326:                                              ; preds = %.loopexit481
  store i32 1, ptr %109, align 8, !tbaa !52
  %327 = load ptr, ptr %1, align 8, !tbaa !53
  %328 = ptrtoint ptr %325 to i64
  %329 = ptrtoint ptr %327 to i64
  %330 = sub i64 %328, %329
  %331 = lshr exact i64 %330, 3
  %332 = trunc i64 %331 to i32
  store i32 %332, ptr %111, align 4, !tbaa !54
  br label %333

333:                                              ; preds = %326, %.loopexit481, %318
  %334 = phi ptr [ %321, %318 ], [ %325, %326 ], [ %325, %.loopexit481 ]
  %335 = trunc i64 %181 to i16
  %336 = getelementptr inbounds nuw i8, ptr %334, i64 4
  store i16 %335, ptr %336, align 4, !tbaa !55
  store i32 1, ptr %334, align 4, !tbaa !57
  %337 = add i64 %177, 1
  %338 = icmp ugt i64 %337, 65535
  br i1 %338, label %897, label %910, !prof !58

339:                                              ; preds = %168, %118
  %340 = icmp ult i32 %150, %35
  br i1 %340, label %431, label %341

341:                                              ; preds = %339
  %342 = load i64, ptr %154, align 1, !tbaa !24
  %343 = icmp eq i64 %342, %123
  br i1 %343, label %344, label %431

344:                                              ; preds = %341
  %345 = getelementptr inbounds nuw i8, ptr %119, i64 8
  %346 = getelementptr inbounds nuw i8, ptr %154, i64 8
  %347 = icmp ult ptr %345, %112
  br i1 %347, label %348, label %.loopexit479

348:                                              ; preds = %344
  %349 = load i64, ptr %346, align 1, !tbaa !24
  %350 = load i64, ptr %345, align 1, !tbaa !24
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %.preheader478, label %352

352:                                              ; preds = %348
  %353 = xor i64 %350, %349
  %354 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %353, i1 true)
  %355 = lshr i64 %354, 3
  br label %409

.preheader478:                                    ; preds = %348, %361
  %356 = phi ptr [ %359, %361 ], [ %346, %348 ]
  %357 = phi ptr [ %358, %361 ], [ %345, %348 ]
  %358 = getelementptr inbounds nuw i8, ptr %357, i64 8
  %359 = getelementptr inbounds nuw i8, ptr %356, i64 8
  %360 = icmp ult ptr %358, %112
  br i1 %360, label %361, label %.loopexit479

361:                                              ; preds = %.preheader478
  %362 = load i64, ptr %359, align 1, !tbaa !24
  %363 = load i64, ptr %358, align 1, !tbaa !24
  %364 = icmp eq i64 %362, %363
  br i1 %364, label %.preheader478, label %365

365:                                              ; preds = %361
  %366 = xor i64 %363, %362
  %367 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %366, i1 true)
  %368 = lshr i64 %367, 3
  %369 = getelementptr inbounds nuw i8, ptr %358, i64 %368
  %370 = ptrtoint ptr %369 to i64
  %371 = ptrtoint ptr %345 to i64
  %372 = sub i64 %370, %371
  br label %409

.loopexit479:                                     ; preds = %.preheader478, %344
  %373 = phi ptr [ %346, %344 ], [ %359, %.preheader478 ]
  %374 = phi ptr [ %345, %344 ], [ %358, %.preheader478 ]
  %375 = icmp ult ptr %374, %113
  br i1 %375, label %376, label %383

376:                                              ; preds = %.loopexit479
  %377 = load i32, ptr %373, align 1, !tbaa !25
  %378 = load i32, ptr %374, align 1, !tbaa !25
  %379 = icmp eq i32 %377, %378
  br i1 %379, label %380, label %383

380:                                              ; preds = %376
  %381 = getelementptr inbounds nuw i8, ptr %374, i64 4
  %382 = getelementptr inbounds nuw i8, ptr %373, i64 4
  br label %383

383:                                              ; preds = %380, %376, %.loopexit479
  %384 = phi ptr [ %382, %380 ], [ %373, %376 ], [ %373, %.loopexit479 ]
  %385 = phi ptr [ %381, %380 ], [ %374, %376 ], [ %374, %.loopexit479 ]
  %386 = icmp ult ptr %385, %114
  br i1 %386, label %387, label %394

387:                                              ; preds = %383
  %388 = load i16, ptr %384, align 1, !tbaa !35
  %389 = load i16, ptr %385, align 1, !tbaa !35
  %390 = icmp eq i16 %388, %389
  br i1 %390, label %391, label %394

391:                                              ; preds = %387
  %392 = getelementptr inbounds nuw i8, ptr %385, i64 2
  %393 = getelementptr inbounds nuw i8, ptr %384, i64 2
  br label %394

394:                                              ; preds = %391, %387, %383
  %395 = phi ptr [ %393, %391 ], [ %384, %387 ], [ %384, %383 ]
  %396 = phi ptr [ %392, %391 ], [ %385, %387 ], [ %385, %383 ]
  %397 = icmp ult ptr %396, %38
  br i1 %397, label %398, label %404

398:                                              ; preds = %394
  %399 = load i8, ptr %395, align 1, !tbaa !37
  %400 = load i8, ptr %396, align 1, !tbaa !37
  %401 = icmp eq i8 %399, %400
  %402 = zext i1 %401 to i64
  %403 = getelementptr inbounds nuw i8, ptr %396, i64 %402
  br label %404

404:                                              ; preds = %398, %394
  %405 = phi ptr [ %396, %394 ], [ %403, %398 ]
  %406 = ptrtoint ptr %405 to i64
  %407 = ptrtoint ptr %345 to i64
  %408 = sub i64 %406, %407
  br label %409

409:                                              ; preds = %404, %365, %352
  %410 = phi i64 [ %408, %404 ], [ %355, %352 ], [ %372, %365 ]
  %411 = add i64 %410, 8
  %412 = ptrtoint ptr %154 to i64
  %413 = sub i64 %146, %412
  %414 = trunc i64 %413 to i32
  %415 = icmp ugt ptr %119, %120
  %416 = icmp ugt i32 %150, %35
  %417 = and i1 %415, %416
  br i1 %417, label %.preheader474, label %.loopexit451

.preheader474:                                    ; preds = %409, %426
  %418 = phi ptr [ %421, %426 ], [ %119, %409 ]
  %419 = phi i64 [ %427, %426 ], [ %411, %409 ]
  %420 = phi ptr [ %423, %426 ], [ %154, %409 ]
  %421 = getelementptr inbounds i8, ptr %418, i64 -1
  %422 = load i8, ptr %421, align 1, !tbaa !37
  %423 = getelementptr inbounds i8, ptr %420, i64 -1
  %424 = load i8, ptr %423, align 1, !tbaa !37
  %425 = icmp eq i8 %422, %424
  br i1 %425, label %426, label %.loopexit451

426:                                              ; preds = %.preheader474
  %427 = add i64 %419, 1
  %428 = icmp ugt ptr %421, %120
  %429 = icmp ugt ptr %423, %37
  %430 = and i1 %428, %429
  br i1 %430, label %.preheader474, label %.loopexit451, !llvm.loop !104

431:                                              ; preds = %341, %339
  br i1 %142, label %432, label %461

432:                                              ; preds = %431
  %433 = lshr i32 %134, 8
  %434 = zext nneg i32 %433 to i64
  %435 = getelementptr inbounds nuw i8, ptr %52, i64 %434
  %436 = icmp ugt i32 %433, %50
  br i1 %436, label %437, label %461

437:                                              ; preds = %432
  %438 = load i64, ptr %435, align 1, !tbaa !24
  %439 = icmp eq i64 %438, %123
  br i1 %439, label %440, label %461

440:                                              ; preds = %437
  %441 = getelementptr inbounds nuw i8, ptr %119, i64 8
  %442 = getelementptr inbounds nuw i8, ptr %435, i64 8
  %443 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %441, ptr noundef nonnull %442, ptr noundef %38, ptr noundef %55, ptr noundef %37)
  %444 = add i64 %443, 8
  %445 = add i32 %60, %433
  %446 = sub i32 %148, %445
  %447 = icmp ugt ptr %119, %120
  br i1 %447, label %.preheader450, label %.loopexit451

.preheader450:                                    ; preds = %440, %456
  %448 = phi ptr [ %451, %456 ], [ %119, %440 ]
  %449 = phi i64 [ %457, %456 ], [ %444, %440 ]
  %450 = phi ptr [ %453, %456 ], [ %435, %440 ]
  %451 = getelementptr inbounds i8, ptr %448, i64 -1
  %452 = load i8, ptr %451, align 1, !tbaa !37
  %453 = getelementptr inbounds i8, ptr %450, i64 -1
  %454 = load i8, ptr %453, align 1, !tbaa !37
  %455 = icmp eq i8 %452, %454
  br i1 %455, label %456, label %.loopexit451

456:                                              ; preds = %.preheader450
  %457 = add i64 %449, 1
  %458 = icmp ugt ptr %451, %120
  %459 = icmp ugt ptr %453, %54
  %460 = and i1 %458, %459
  br i1 %460, label %.preheader450, label %.loopexit451, !llvm.loop !105

461:                                              ; preds = %437, %432, %431
  %462 = icmp ugt i32 %152, %35
  br i1 %462, label %463, label %467

463:                                              ; preds = %461
  %464 = load i32, ptr %156, align 1, !tbaa !25
  %465 = load i32, ptr %119, align 1, !tbaa !25
  %466 = icmp eq i32 %464, %465
  br i1 %466, label %484, label %478

467:                                              ; preds = %461
  br i1 %145, label %468, label %478

468:                                              ; preds = %467
  %469 = lshr i32 %138, 8
  %470 = icmp ugt i32 %469, %50
  br i1 %470, label %471, label %478

471:                                              ; preds = %468
  %472 = add i32 %469, %60
  %473 = zext nneg i32 %469 to i64
  %474 = getelementptr inbounds nuw i8, ptr %52, i64 %473
  %475 = load i32, ptr %474, align 1, !tbaa !25
  %476 = load i32, ptr %119, align 1, !tbaa !25
  %477 = icmp eq i32 %475, %476
  br i1 %477, label %484, label %478

478:                                              ; preds = %471, %468, %467, %463
  %479 = ptrtoint ptr %120 to i64
  %480 = sub i64 %146, %479
  %481 = ashr i64 %480, 8
  %482 = getelementptr i8, ptr %119, i64 %481
  %483 = getelementptr i8, ptr %482, i64 1
  br label %.loopexit, !llvm.loop !106

484:                                              ; preds = %471, %463
  %485 = phi ptr [ %156, %463 ], [ %474, %471 ]
  %486 = phi i32 [ %152, %463 ], [ %472, %471 ]
  %487 = getelementptr inbounds nuw i8, ptr %119, i64 1
  %488 = load i64, ptr %487, align 1, !tbaa !24
  %489 = mul i64 %488, -3523014627327384477
  %490 = lshr i64 %489, %101
  %491 = lshr i64 %489, %104
  %492 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %490
  %493 = load i32, ptr %492, align 4, !tbaa !25
  %494 = lshr i64 %491, 8
  %495 = getelementptr inbounds nuw [4 x i8], ptr %46, i64 %494
  %496 = load i32, ptr %495, align 4, !tbaa !25
  %497 = zext i32 %496 to i64
  %498 = xor i64 %491, %497
  %499 = and i64 %498, 255
  %500 = icmp eq i64 %499, 0
  %501 = zext i32 %493 to i64
  %502 = getelementptr inbounds nuw i8, ptr %18, i64 %501
  store i32 %157, ptr %492, align 4, !tbaa !25
  %503 = icmp ult i32 %493, %35
  br i1 %503, label %595, label %504

504:                                              ; preds = %484
  %505 = load i64, ptr %502, align 1, !tbaa !24
  %506 = icmp eq i64 %505, %488
  br i1 %506, label %507, label %595

507:                                              ; preds = %504
  %508 = getelementptr inbounds nuw i8, ptr %119, i64 9
  %509 = getelementptr inbounds nuw i8, ptr %502, i64 8
  %510 = icmp ult ptr %508, %112
  br i1 %510, label %511, label %.loopexit473

511:                                              ; preds = %507
  %512 = load i64, ptr %509, align 1, !tbaa !24
  %513 = load i64, ptr %508, align 1, !tbaa !24
  %514 = icmp eq i64 %512, %513
  br i1 %514, label %.preheader472, label %515

515:                                              ; preds = %511
  %516 = xor i64 %513, %512
  %517 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %516, i1 true)
  %518 = lshr i64 %517, 3
  br label %572

.preheader472:                                    ; preds = %511, %524
  %519 = phi ptr [ %522, %524 ], [ %509, %511 ]
  %520 = phi ptr [ %521, %524 ], [ %508, %511 ]
  %521 = getelementptr inbounds nuw i8, ptr %520, i64 8
  %522 = getelementptr inbounds nuw i8, ptr %519, i64 8
  %523 = icmp ult ptr %521, %112
  br i1 %523, label %524, label %.loopexit473

524:                                              ; preds = %.preheader472
  %525 = load i64, ptr %522, align 1, !tbaa !24
  %526 = load i64, ptr %521, align 1, !tbaa !24
  %527 = icmp eq i64 %525, %526
  br i1 %527, label %.preheader472, label %528

528:                                              ; preds = %524
  %529 = xor i64 %526, %525
  %530 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %529, i1 true)
  %531 = lshr i64 %530, 3
  %532 = getelementptr inbounds nuw i8, ptr %521, i64 %531
  %533 = ptrtoint ptr %532 to i64
  %534 = ptrtoint ptr %508 to i64
  %535 = sub i64 %533, %534
  br label %572

.loopexit473:                                     ; preds = %.preheader472, %507
  %536 = phi ptr [ %509, %507 ], [ %522, %.preheader472 ]
  %537 = phi ptr [ %508, %507 ], [ %521, %.preheader472 ]
  %538 = icmp ult ptr %537, %113
  br i1 %538, label %539, label %546

539:                                              ; preds = %.loopexit473
  %540 = load i32, ptr %536, align 1, !tbaa !25
  %541 = load i32, ptr %537, align 1, !tbaa !25
  %542 = icmp eq i32 %540, %541
  br i1 %542, label %543, label %546

543:                                              ; preds = %539
  %544 = getelementptr inbounds nuw i8, ptr %537, i64 4
  %545 = getelementptr inbounds nuw i8, ptr %536, i64 4
  br label %546

546:                                              ; preds = %543, %539, %.loopexit473
  %547 = phi ptr [ %545, %543 ], [ %536, %539 ], [ %536, %.loopexit473 ]
  %548 = phi ptr [ %544, %543 ], [ %537, %539 ], [ %537, %.loopexit473 ]
  %549 = icmp ult ptr %548, %114
  br i1 %549, label %550, label %557

550:                                              ; preds = %546
  %551 = load i16, ptr %547, align 1, !tbaa !35
  %552 = load i16, ptr %548, align 1, !tbaa !35
  %553 = icmp eq i16 %551, %552
  br i1 %553, label %554, label %557

554:                                              ; preds = %550
  %555 = getelementptr inbounds nuw i8, ptr %548, i64 2
  %556 = getelementptr inbounds nuw i8, ptr %547, i64 2
  br label %557

557:                                              ; preds = %554, %550, %546
  %558 = phi ptr [ %556, %554 ], [ %547, %550 ], [ %547, %546 ]
  %559 = phi ptr [ %555, %554 ], [ %548, %550 ], [ %548, %546 ]
  %560 = icmp ult ptr %559, %38
  br i1 %560, label %561, label %567

561:                                              ; preds = %557
  %562 = load i8, ptr %558, align 1, !tbaa !37
  %563 = load i8, ptr %559, align 1, !tbaa !37
  %564 = icmp eq i8 %562, %563
  %565 = zext i1 %564 to i64
  %566 = getelementptr inbounds nuw i8, ptr %559, i64 %565
  br label %567

567:                                              ; preds = %561, %557
  %568 = phi ptr [ %559, %557 ], [ %566, %561 ]
  %569 = ptrtoint ptr %568 to i64
  %570 = ptrtoint ptr %508 to i64
  %571 = sub i64 %569, %570
  br label %572

572:                                              ; preds = %567, %528, %515
  %573 = phi i64 [ %571, %567 ], [ %518, %515 ], [ %535, %528 ]
  %574 = add i64 %573, 8
  %575 = ptrtoint ptr %487 to i64
  %576 = ptrtoint ptr %502 to i64
  %577 = sub i64 %575, %576
  %578 = trunc i64 %577 to i32
  %579 = icmp ugt ptr %487, %120
  %580 = icmp ugt i32 %493, %35
  %581 = and i1 %579, %580
  br i1 %581, label %.preheader468, label %.loopexit451

.preheader468:                                    ; preds = %572, %590
  %582 = phi ptr [ %585, %590 ], [ %487, %572 ]
  %583 = phi i64 [ %591, %590 ], [ %574, %572 ]
  %584 = phi ptr [ %587, %590 ], [ %502, %572 ]
  %585 = getelementptr inbounds i8, ptr %582, i64 -1
  %586 = load i8, ptr %585, align 1, !tbaa !37
  %587 = getelementptr inbounds i8, ptr %584, i64 -1
  %588 = load i8, ptr %587, align 1, !tbaa !37
  %589 = icmp eq i8 %586, %588
  br i1 %589, label %590, label %.loopexit451

590:                                              ; preds = %.preheader468
  %591 = add i64 %583, 1
  %592 = icmp ugt ptr %585, %120
  %593 = icmp ugt ptr %587, %37
  %594 = and i1 %592, %593
  br i1 %594, label %.preheader468, label %.loopexit451, !llvm.loop !107

595:                                              ; preds = %504, %484
  br i1 %500, label %596, label %625

596:                                              ; preds = %595
  %597 = lshr i32 %496, 8
  %598 = zext nneg i32 %597 to i64
  %599 = getelementptr inbounds nuw i8, ptr %52, i64 %598
  %600 = icmp ugt i32 %597, %50
  br i1 %600, label %601, label %625

601:                                              ; preds = %596
  %602 = load i64, ptr %599, align 1, !tbaa !24
  %603 = icmp eq i64 %602, %488
  br i1 %603, label %604, label %625

604:                                              ; preds = %601
  %605 = getelementptr inbounds nuw i8, ptr %119, i64 9
  %606 = getelementptr inbounds nuw i8, ptr %599, i64 8
  %607 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %605, ptr noundef nonnull %606, ptr noundef %38, ptr noundef %55, ptr noundef %37)
  %608 = add i64 %607, 8
  %609 = add i32 %60, %597
  %610 = sub i32 %157, %609
  %611 = icmp ugt ptr %487, %120
  br i1 %611, label %.preheader454, label %.loopexit451

.preheader454:                                    ; preds = %604, %620
  %612 = phi ptr [ %615, %620 ], [ %487, %604 ]
  %613 = phi i64 [ %621, %620 ], [ %608, %604 ]
  %614 = phi ptr [ %617, %620 ], [ %599, %604 ]
  %615 = getelementptr inbounds i8, ptr %612, i64 -1
  %616 = load i8, ptr %615, align 1, !tbaa !37
  %617 = getelementptr inbounds i8, ptr %614, i64 -1
  %618 = load i8, ptr %617, align 1, !tbaa !37
  %619 = icmp eq i8 %616, %618
  br i1 %619, label %620, label %.loopexit451

620:                                              ; preds = %.preheader454
  %621 = add i64 %613, 1
  %622 = icmp ugt ptr %615, %120
  %623 = icmp ugt ptr %617, %54
  %624 = and i1 %622, %623
  br i1 %624, label %.preheader454, label %.loopexit451, !llvm.loop !108

625:                                              ; preds = %601, %596, %595
  %626 = icmp ult i32 %486, %35
  %627 = getelementptr inbounds nuw i8, ptr %119, i64 4
  %628 = getelementptr inbounds nuw i8, ptr %485, i64 4
  br i1 %626, label %629, label %649

629:                                              ; preds = %625
  %630 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %627, ptr noundef nonnull %628, ptr noundef %38, ptr noundef %55, ptr noundef nonnull %37)
  %631 = add i64 %630, 4
  %632 = sub i32 %148, %486
  %633 = icmp ugt ptr %119, %120
  %634 = icmp ugt ptr %485, %54
  %635 = and i1 %633, %634
  br i1 %635, label %.preheader458, label %.loopexit451

.preheader458:                                    ; preds = %629, %644
  %636 = phi ptr [ %639, %644 ], [ %119, %629 ]
  %637 = phi i64 [ %645, %644 ], [ %631, %629 ]
  %638 = phi ptr [ %641, %644 ], [ %485, %629 ]
  %639 = getelementptr inbounds i8, ptr %636, i64 -1
  %640 = load i8, ptr %639, align 1, !tbaa !37
  %641 = getelementptr inbounds i8, ptr %638, i64 -1
  %642 = load i8, ptr %641, align 1, !tbaa !37
  %643 = icmp eq i8 %640, %642
  br i1 %643, label %644, label %.loopexit451

644:                                              ; preds = %.preheader458
  %645 = add i64 %637, 1
  %646 = icmp ugt ptr %639, %120
  %647 = icmp ugt ptr %641, %54
  %648 = and i1 %646, %647
  br i1 %648, label %.preheader458, label %.loopexit451, !llvm.loop !109

649:                                              ; preds = %625
  %650 = icmp ult ptr %627, %112
  br i1 %650, label %651, label %.loopexit467

651:                                              ; preds = %649
  %652 = load i64, ptr %628, align 1, !tbaa !24
  %653 = load i64, ptr %627, align 1, !tbaa !24
  %654 = icmp eq i64 %652, %653
  br i1 %654, label %.preheader466, label %655

655:                                              ; preds = %651
  %656 = xor i64 %653, %652
  %657 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %656, i1 true)
  %658 = lshr i64 %657, 3
  br label %712

.preheader466:                                    ; preds = %651, %664
  %659 = phi ptr [ %662, %664 ], [ %628, %651 ]
  %660 = phi ptr [ %661, %664 ], [ %627, %651 ]
  %661 = getelementptr inbounds nuw i8, ptr %660, i64 8
  %662 = getelementptr inbounds nuw i8, ptr %659, i64 8
  %663 = icmp ult ptr %661, %112
  br i1 %663, label %664, label %.loopexit467

664:                                              ; preds = %.preheader466
  %665 = load i64, ptr %662, align 1, !tbaa !24
  %666 = load i64, ptr %661, align 1, !tbaa !24
  %667 = icmp eq i64 %665, %666
  br i1 %667, label %.preheader466, label %668

668:                                              ; preds = %664
  %669 = xor i64 %666, %665
  %670 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %669, i1 true)
  %671 = lshr i64 %670, 3
  %672 = getelementptr inbounds nuw i8, ptr %661, i64 %671
  %673 = ptrtoint ptr %672 to i64
  %674 = ptrtoint ptr %627 to i64
  %675 = sub i64 %673, %674
  br label %712

.loopexit467:                                     ; preds = %.preheader466, %649
  %676 = phi ptr [ %628, %649 ], [ %662, %.preheader466 ]
  %677 = phi ptr [ %627, %649 ], [ %661, %.preheader466 ]
  %678 = icmp ult ptr %677, %113
  br i1 %678, label %679, label %686

679:                                              ; preds = %.loopexit467
  %680 = load i32, ptr %676, align 1, !tbaa !25
  %681 = load i32, ptr %677, align 1, !tbaa !25
  %682 = icmp eq i32 %680, %681
  br i1 %682, label %683, label %686

683:                                              ; preds = %679
  %684 = getelementptr inbounds nuw i8, ptr %677, i64 4
  %685 = getelementptr inbounds nuw i8, ptr %676, i64 4
  br label %686

686:                                              ; preds = %683, %679, %.loopexit467
  %687 = phi ptr [ %685, %683 ], [ %676, %679 ], [ %676, %.loopexit467 ]
  %688 = phi ptr [ %684, %683 ], [ %677, %679 ], [ %677, %.loopexit467 ]
  %689 = icmp ult ptr %688, %114
  br i1 %689, label %690, label %697

690:                                              ; preds = %686
  %691 = load i16, ptr %687, align 1, !tbaa !35
  %692 = load i16, ptr %688, align 1, !tbaa !35
  %693 = icmp eq i16 %691, %692
  br i1 %693, label %694, label %697

694:                                              ; preds = %690
  %695 = getelementptr inbounds nuw i8, ptr %688, i64 2
  %696 = getelementptr inbounds nuw i8, ptr %687, i64 2
  br label %697

697:                                              ; preds = %694, %690, %686
  %698 = phi ptr [ %696, %694 ], [ %687, %690 ], [ %687, %686 ]
  %699 = phi ptr [ %695, %694 ], [ %688, %690 ], [ %688, %686 ]
  %700 = icmp ult ptr %699, %38
  br i1 %700, label %701, label %707

701:                                              ; preds = %697
  %702 = load i8, ptr %698, align 1, !tbaa !37
  %703 = load i8, ptr %699, align 1, !tbaa !37
  %704 = icmp eq i8 %702, %703
  %705 = zext i1 %704 to i64
  %706 = getelementptr inbounds nuw i8, ptr %699, i64 %705
  br label %707

707:                                              ; preds = %701, %697
  %708 = phi ptr [ %699, %697 ], [ %706, %701 ]
  %709 = ptrtoint ptr %708 to i64
  %710 = ptrtoint ptr %627 to i64
  %711 = sub i64 %709, %710
  br label %712

712:                                              ; preds = %707, %668, %655
  %713 = phi i64 [ %711, %707 ], [ %658, %655 ], [ %675, %668 ]
  %714 = add i64 %713, 4
  %715 = ptrtoint ptr %485 to i64
  %716 = sub i64 %146, %715
  %717 = trunc i64 %716 to i32
  %718 = icmp ugt ptr %119, %120
  %719 = icmp ugt ptr %485, %37
  %720 = and i1 %718, %719
  br i1 %720, label %.preheader462, label %.loopexit451

.preheader462:                                    ; preds = %712, %729
  %721 = phi ptr [ %724, %729 ], [ %119, %712 ]
  %722 = phi i64 [ %730, %729 ], [ %714, %712 ]
  %723 = phi ptr [ %726, %729 ], [ %485, %712 ]
  %724 = getelementptr inbounds i8, ptr %721, i64 -1
  %725 = load i8, ptr %724, align 1, !tbaa !37
  %726 = getelementptr inbounds i8, ptr %723, i64 -1
  %727 = load i8, ptr %726, align 1, !tbaa !37
  %728 = icmp eq i8 %725, %727
  br i1 %728, label %729, label %.loopexit451

729:                                              ; preds = %.preheader462
  %730 = add i64 %722, 1
  %731 = icmp ugt ptr %724, %120
  %732 = icmp ugt ptr %726, %37
  %733 = and i1 %731, %732
  br i1 %733, label %.preheader462, label %.loopexit451, !llvm.loop !110

.loopexit451:                                     ; preds = %426, %.preheader474, %590, %.preheader468, %729, %.preheader462, %644, %.preheader458, %620, %.preheader454, %456, %.preheader450, %712, %629, %604, %572, %440, %409
  %734 = phi i32 [ %446, %440 ], [ %610, %604 ], [ %632, %629 ], [ %717, %712 ], [ %578, %572 ], [ %414, %409 ], [ %446, %456 ], [ %717, %729 ], [ %578, %590 ], [ %610, %620 ], [ %632, %644 ], [ %446, %.preheader450 ], [ %610, %.preheader454 ], [ %632, %.preheader458 ], [ %717, %.preheader462 ], [ %578, %.preheader468 ], [ %414, %.preheader474 ], [ %414, %426 ]
  %735 = phi i64 [ %444, %440 ], [ %608, %604 ], [ %631, %629 ], [ %714, %712 ], [ %574, %572 ], [ %411, %409 ], [ %457, %456 ], [ %730, %729 ], [ %591, %590 ], [ %621, %620 ], [ %645, %644 ], [ %449, %.preheader450 ], [ %613, %.preheader454 ], [ %637, %.preheader458 ], [ %722, %.preheader462 ], [ %583, %.preheader468 ], [ %427, %426 ], [ %419, %.preheader474 ]
  %736 = phi ptr [ %119, %440 ], [ %487, %604 ], [ %119, %629 ], [ %119, %712 ], [ %487, %572 ], [ %119, %409 ], [ %451, %456 ], [ %724, %729 ], [ %585, %590 ], [ %615, %620 ], [ %639, %644 ], [ %448, %.preheader450 ], [ %612, %.preheader454 ], [ %636, %.preheader458 ], [ %721, %.preheader462 ], [ %582, %.preheader468 ], [ %421, %426 ], [ %418, %.preheader474 ]
  %737 = ptrtoint ptr %736 to i64
  %738 = ptrtoint ptr %120 to i64
  %739 = sub i64 %737, %738
  %740 = add i32 %734, 3
  %741 = icmp ugt ptr %736, %106
  %742 = load ptr, ptr %107, align 8, !tbaa !38
  br i1 %741, label %765, label %743

743:                                              ; preds = %.loopexit451
  %744 = load <2 x i64>, ptr %120, align 1, !tbaa !37
  store <2 x i64> %744, ptr %742, align 1, !tbaa !37
  %745 = icmp ugt i64 %739, 16
  br i1 %745, label %746, label %876

746:                                              ; preds = %743
  %747 = load ptr, ptr %107, align 8, !tbaa !38
  %748 = getelementptr inbounds nuw i8, ptr %747, i64 16
  %749 = getelementptr inbounds nuw i8, ptr %120, i64 16
  %750 = getelementptr i8, ptr %747, i64 %739
  %751 = load <2 x i64>, ptr %749, align 1, !tbaa !37
  store <2 x i64> %751, ptr %748, align 1, !tbaa !37
  %752 = icmp ult i64 %739, 33
  br i1 %752, label %876, label %753

753:                                              ; preds = %746
  %754 = getelementptr inbounds nuw i8, ptr %747, i64 32
  br label %755

755:                                              ; preds = %755, %753
  %756 = phi ptr [ %754, %753 ], [ %763, %755 ]
  %757 = phi ptr [ %749, %753 ], [ %761, %755 ]
  %758 = getelementptr inbounds nuw i8, ptr %757, i64 16
  %759 = load <2 x i64>, ptr %758, align 1, !tbaa !37
  store <2 x i64> %759, ptr %756, align 1, !tbaa !37
  %760 = getelementptr inbounds nuw i8, ptr %756, i64 16
  %761 = getelementptr inbounds nuw i8, ptr %757, i64 32
  %762 = load <2 x i64>, ptr %761, align 1, !tbaa !37
  store <2 x i64> %762, ptr %760, align 1, !tbaa !37
  %763 = getelementptr inbounds nuw i8, ptr %756, i64 32
  %764 = icmp ult ptr %763, %750
  br i1 %764, label %755, label %.loopexit445, !llvm.loop !41

765:                                              ; preds = %.loopexit451
  %766 = icmp ugt ptr %120, %106
  br i1 %766, label %.loopexit448, label %767

767:                                              ; preds = %765
  %768 = sub i64 %108, %738
  %769 = getelementptr inbounds i8, ptr %742, i64 %768
  %770 = load <2 x i64>, ptr %120, align 1, !tbaa !37
  store <2 x i64> %770, ptr %742, align 1, !tbaa !37
  %771 = icmp ult i64 %768, 17
  br i1 %771, label %.loopexit448, label %772

772:                                              ; preds = %767
  %773 = getelementptr inbounds nuw i8, ptr %742, i64 16
  br label %774

774:                                              ; preds = %774, %772
  %775 = phi ptr [ %773, %772 ], [ %782, %774 ]
  %776 = phi ptr [ %120, %772 ], [ %780, %774 ]
  %777 = getelementptr inbounds nuw i8, ptr %776, i64 16
  %778 = load <2 x i64>, ptr %777, align 1, !tbaa !37
  store <2 x i64> %778, ptr %775, align 1, !tbaa !37
  %779 = getelementptr inbounds nuw i8, ptr %775, i64 16
  %780 = getelementptr inbounds nuw i8, ptr %776, i64 32
  %781 = load <2 x i64>, ptr %780, align 1, !tbaa !37
  store <2 x i64> %781, ptr %779, align 1, !tbaa !37
  %782 = getelementptr inbounds nuw i8, ptr %775, i64 32
  %783 = icmp ult ptr %782, %769
  br i1 %783, label %774, label %.loopexit448, !llvm.loop !41

.loopexit448:                                     ; preds = %774, %767, %765
  %784 = phi ptr [ %106, %767 ], [ %120, %765 ], [ %106, %774 ]
  %785 = phi ptr [ %769, %767 ], [ %742, %765 ], [ %769, %774 ]
  %786 = icmp ult ptr %784, %736
  br i1 %786, label %787, label %.loopexit445

787:                                              ; preds = %.loopexit448
  %788 = ptrtoint ptr %784 to i64
  %789 = ptrtoint ptr %785 to i64
  %790 = sub i64 %737, %788
  %791 = icmp ult i64 %790, 4
  %792 = sub i64 %789, %788
  %793 = icmp ult i64 %792, 32
  %794 = select i1 %791, i1 true, i1 %793
  br i1 %794, label %830, label %795

795:                                              ; preds = %787
  %796 = icmp ult i64 %790, 32
  br i1 %796, label %816, label %797

797:                                              ; preds = %795
  %798 = and i64 %790, -32
  br label %799

799:                                              ; preds = %799, %797
  %800 = phi i64 [ 0, %797 ], [ %807, %799 ]
  %801 = getelementptr i8, ptr %785, i64 %800
  %802 = getelementptr i8, ptr %784, i64 %800
  %803 = getelementptr i8, ptr %802, i64 16
  %804 = load <16 x i8>, ptr %802, align 1, !tbaa !37
  %805 = load <16 x i8>, ptr %803, align 1, !tbaa !37
  %806 = getelementptr i8, ptr %801, i64 16
  store <16 x i8> %804, ptr %801, align 1, !tbaa !37
  store <16 x i8> %805, ptr %806, align 1, !tbaa !37
  %807 = add nuw i64 %800, 32
  %808 = icmp eq i64 %807, %798
  br i1 %808, label %809, label %799, !llvm.loop !111

809:                                              ; preds = %799
  %810 = icmp eq i64 %790, %798
  br i1 %810, label %.loopexit445, label %811

811:                                              ; preds = %809
  %812 = getelementptr i8, ptr %785, i64 %798
  %813 = getelementptr i8, ptr %784, i64 %798
  %814 = and i64 %790, 28
  %815 = icmp eq i64 %814, 0
  br i1 %815, label %830, label %816

816:                                              ; preds = %811, %795
  %817 = phi i64 [ %798, %811 ], [ 0, %795 ]
  %818 = and i64 %790, -4
  br label %819

819:                                              ; preds = %819, %816
  %820 = phi i64 [ %817, %816 ], [ %824, %819 ]
  %821 = getelementptr i8, ptr %785, i64 %820
  %822 = getelementptr i8, ptr %784, i64 %820
  %823 = load <4 x i8>, ptr %822, align 1, !tbaa !37
  store <4 x i8> %823, ptr %821, align 1, !tbaa !37
  %824 = add nuw i64 %820, 4
  %825 = icmp eq i64 %824, %818
  br i1 %825, label %826, label %819, !llvm.loop !112

826:                                              ; preds = %819
  %827 = getelementptr i8, ptr %785, i64 %818
  %828 = getelementptr i8, ptr %784, i64 %818
  %829 = icmp eq i64 %790, %818
  br i1 %829, label %.loopexit445, label %830

830:                                              ; preds = %826, %811, %787
  %831 = phi ptr [ %785, %787 ], [ %812, %811 ], [ %827, %826 ]
  %832 = phi ptr [ %784, %787 ], [ %813, %811 ], [ %828, %826 ]
  %833 = ptrtoint ptr %832 to i64
  %834 = sub i64 %737, %833
  %835 = and i64 %834, 7
  %836 = icmp eq i64 %835, 0
  br i1 %836, label %.loopexit447, label %.preheader446

.preheader446:                                    ; preds = %830, %.preheader446
  %837 = phi ptr [ %842, %.preheader446 ], [ %831, %830 ]
  %838 = phi ptr [ %840, %.preheader446 ], [ %832, %830 ]
  %839 = phi i64 [ %843, %.preheader446 ], [ 0, %830 ]
  %840 = getelementptr inbounds nuw i8, ptr %838, i64 1
  %841 = load i8, ptr %838, align 1, !tbaa !37
  %842 = getelementptr inbounds nuw i8, ptr %837, i64 1
  store i8 %841, ptr %837, align 1, !tbaa !37
  %843 = add nuw nsw i64 %839, 1
  %844 = icmp eq i64 %843, %835
  br i1 %844, label %.loopexit447, label %.preheader446, !llvm.loop !113

.loopexit447:                                     ; preds = %.preheader446, %830
  %845 = phi ptr [ %831, %830 ], [ %842, %.preheader446 ]
  %846 = phi ptr [ %832, %830 ], [ %840, %.preheader446 ]
  %847 = sub i64 %833, %737
  %848 = icmp ugt i64 %847, -8
  br i1 %848, label %.loopexit445, label %.preheader

.preheader:                                       ; preds = %.loopexit447, %.preheader
  %849 = phi ptr [ %874, %.preheader ], [ %845, %.loopexit447 ]
  %850 = phi ptr [ %872, %.preheader ], [ %846, %.loopexit447 ]
  %851 = getelementptr inbounds nuw i8, ptr %850, i64 1
  %852 = load i8, ptr %850, align 1, !tbaa !37
  %853 = getelementptr inbounds nuw i8, ptr %849, i64 1
  store i8 %852, ptr %849, align 1, !tbaa !37
  %854 = getelementptr inbounds nuw i8, ptr %850, i64 2
  %855 = load i8, ptr %851, align 1, !tbaa !37
  %856 = getelementptr inbounds nuw i8, ptr %849, i64 2
  store i8 %855, ptr %853, align 1, !tbaa !37
  %857 = getelementptr inbounds nuw i8, ptr %850, i64 3
  %858 = load i8, ptr %854, align 1, !tbaa !37
  %859 = getelementptr inbounds nuw i8, ptr %849, i64 3
  store i8 %858, ptr %856, align 1, !tbaa !37
  %860 = getelementptr inbounds nuw i8, ptr %850, i64 4
  %861 = load i8, ptr %857, align 1, !tbaa !37
  %862 = getelementptr inbounds nuw i8, ptr %849, i64 4
  store i8 %861, ptr %859, align 1, !tbaa !37
  %863 = getelementptr inbounds nuw i8, ptr %850, i64 5
  %864 = load i8, ptr %860, align 1, !tbaa !37
  %865 = getelementptr inbounds nuw i8, ptr %849, i64 5
  store i8 %864, ptr %862, align 1, !tbaa !37
  %866 = getelementptr inbounds nuw i8, ptr %850, i64 6
  %867 = load i8, ptr %863, align 1, !tbaa !37
  %868 = getelementptr inbounds nuw i8, ptr %849, i64 6
  store i8 %867, ptr %865, align 1, !tbaa !37
  %869 = getelementptr inbounds nuw i8, ptr %850, i64 7
  %870 = load i8, ptr %866, align 1, !tbaa !37
  %871 = getelementptr inbounds nuw i8, ptr %849, i64 7
  store i8 %870, ptr %868, align 1, !tbaa !37
  %872 = getelementptr inbounds nuw i8, ptr %850, i64 8
  %873 = load i8, ptr %869, align 1, !tbaa !37
  %874 = getelementptr inbounds nuw i8, ptr %849, i64 8
  store i8 %873, ptr %871, align 1, !tbaa !37
  %875 = icmp eq ptr %872, %736
  br i1 %875, label %.loopexit445, label %.preheader, !llvm.loop !114

876:                                              ; preds = %746, %743
  %877 = load ptr, ptr %107, align 8, !tbaa !38
  %878 = getelementptr inbounds nuw i8, ptr %877, i64 %739
  store ptr %878, ptr %107, align 8, !tbaa !38
  %879 = load ptr, ptr %110, align 8, !tbaa !50
  br label %891

.loopexit445:                                     ; preds = %755, %.preheader, %.loopexit447, %826, %809, %.loopexit448
  %880 = load ptr, ptr %107, align 8, !tbaa !38
  %881 = getelementptr inbounds nuw i8, ptr %880, i64 %739
  store ptr %881, ptr %107, align 8, !tbaa !38
  %882 = icmp ugt i64 %739, 65535
  %883 = load ptr, ptr %110, align 8, !tbaa !50
  br i1 %882, label %884, label %891, !prof !115

884:                                              ; preds = %.loopexit445
  store i32 1, ptr %109, align 8, !tbaa !52
  %885 = load ptr, ptr %1, align 8, !tbaa !53
  %886 = ptrtoint ptr %883 to i64
  %887 = ptrtoint ptr %885 to i64
  %888 = sub i64 %886, %887
  %889 = lshr exact i64 %888, 3
  %890 = trunc i64 %889 to i32
  store i32 %890, ptr %111, align 4, !tbaa !54
  br label %891

891:                                              ; preds = %884, %.loopexit445, %876
  %892 = phi ptr [ %879, %876 ], [ %883, %884 ], [ %883, %.loopexit445 ]
  %893 = trunc i64 %739 to i16
  %894 = getelementptr inbounds nuw i8, ptr %892, i64 4
  store i16 %893, ptr %894, align 4, !tbaa !55
  store i32 %740, ptr %892, align 4, !tbaa !57
  %895 = add i64 %735, -3
  %896 = icmp ugt i64 %895, 65535
  br i1 %896, label %897, label %910, !prof !58

897:                                              ; preds = %891, %333
  %898 = phi ptr [ %334, %333 ], [ %892, %891 ]
  %899 = phi i64 [ %337, %333 ], [ %895, %891 ]
  %900 = phi i64 [ %178, %333 ], [ %735, %891 ]
  %901 = phi i32 [ %122, %333 ], [ %121, %891 ]
  %902 = phi i32 [ %121, %333 ], [ %734, %891 ]
  %903 = phi ptr [ %170, %333 ], [ %736, %891 ]
  store i32 2, ptr %109, align 8, !tbaa !52
  %904 = load ptr, ptr %1, align 8, !tbaa !53
  %905 = ptrtoint ptr %898 to i64
  %906 = ptrtoint ptr %904 to i64
  %907 = sub i64 %905, %906
  %908 = lshr exact i64 %907, 3
  %909 = trunc i64 %908 to i32
  store i32 %909, ptr %111, align 4, !tbaa !54
  br label %910

910:                                              ; preds = %897, %891, %333
  %911 = phi i64 [ %337, %333 ], [ %895, %891 ], [ %899, %897 ]
  %912 = phi ptr [ %334, %333 ], [ %892, %891 ], [ %898, %897 ]
  %913 = phi i64 [ %178, %333 ], [ %735, %891 ], [ %900, %897 ]
  %914 = phi i32 [ %122, %333 ], [ %121, %891 ], [ %901, %897 ]
  %915 = phi i32 [ %121, %333 ], [ %734, %891 ], [ %902, %897 ]
  %916 = phi ptr [ %170, %333 ], [ %736, %891 ], [ %903, %897 ]
  %917 = trunc i64 %911 to i16
  %918 = getelementptr inbounds nuw i8, ptr %912, i64 6
  store i16 %917, ptr %918, align 2, !tbaa !65
  %919 = getelementptr inbounds nuw i8, ptr %912, i64 8
  store ptr %919, ptr %110, align 8, !tbaa !50
  %920 = getelementptr inbounds nuw i8, ptr %916, i64 %913
  %921 = icmp ugt ptr %920, %39
  br i1 %921, label %.loopexit, label %922

922:                                              ; preds = %910
  %923 = add i32 %148, 2
  %924 = zext i32 %923 to i64
  %925 = getelementptr inbounds nuw i8, ptr %18, i64 %924
  %926 = load i64, ptr %925, align 1, !tbaa !24
  %927 = mul i64 %926, -3523014627327384477
  %928 = lshr i64 %927, %101
  %929 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %928
  store i32 %923, ptr %929, align 4, !tbaa !25
  %930 = getelementptr inbounds i8, ptr %920, i64 -2
  %931 = ptrtoint ptr %930 to i64
  %932 = sub i64 %931, %20
  %933 = trunc i64 %932 to i32
  %934 = load i64, ptr %930, align 1, !tbaa !24
  %935 = mul i64 %934, -3523014627327384477
  %936 = lshr i64 %935, %101
  %937 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %936
  store i32 %933, ptr %937, align 4, !tbaa !25
  %938 = load i32, ptr %925, align 1, !tbaa !25
  %939 = mul i32 %938, -1640531535
  %940 = lshr i32 %939, %102
  %941 = zext i32 %940 to i64
  %942 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %941
  store i32 %923, ptr %942, align 4, !tbaa !25
  %943 = getelementptr inbounds i8, ptr %920, i64 -1
  %944 = ptrtoint ptr %943 to i64
  %945 = sub i64 %944, %20
  %946 = trunc i64 %945 to i32
  %947 = load i32, ptr %943, align 1, !tbaa !25
  %948 = mul i32 %947, -1640531535
  %949 = lshr i32 %948, %102
  %950 = zext i32 %949 to i64
  %951 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %950
  store i32 %946, ptr %951, align 4, !tbaa !25
  br label %952

952:                                              ; preds = %993, %922
  %953 = phi ptr [ %919, %922 ], [ %996, %993 ]
  %954 = phi ptr [ %920, %922 ], [ %1007, %993 ]
  %955 = phi i32 [ %915, %922 ], [ %956, %993 ]
  %956 = phi i32 [ %914, %922 ], [ %955, %993 ]
  %957 = ptrtoint ptr %954 to i64
  %958 = sub i64 %957, %20
  %959 = trunc i64 %958 to i32
  %960 = sub i32 %959, %956
  %961 = icmp ult i32 %960, %35
  %962 = zext i32 %960 to i64
  %963 = select i1 %961, ptr %117, ptr %18
  %964 = getelementptr i8, ptr %963, i64 %962
  %965 = sub i32 %960, %35
  %966 = icmp ugt i32 %965, -4
  br i1 %966, label %.loopexit, label %967

967:                                              ; preds = %952
  %968 = load i32, ptr %964, align 1, !tbaa !25
  %969 = load i32, ptr %954, align 1, !tbaa !25
  %970 = icmp eq i32 %968, %969
  br i1 %970, label %971, label %.loopexit

971:                                              ; preds = %967
  %972 = select i1 %961, ptr %55, ptr %38
  %973 = getelementptr inbounds nuw i8, ptr %954, i64 4
  %974 = getelementptr inbounds nuw i8, ptr %964, i64 4
  %975 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %973, ptr noundef nonnull %974, ptr noundef %38, ptr noundef %972, ptr noundef %37)
  %976 = icmp ugt ptr %954, %106
  br i1 %976, label %981, label %977

977:                                              ; preds = %971
  %978 = load ptr, ptr %107, align 8, !tbaa !38
  %979 = load <2 x i64>, ptr %954, align 1, !tbaa !37
  store <2 x i64> %979, ptr %978, align 1, !tbaa !37
  %980 = load ptr, ptr %110, align 8, !tbaa !50
  br label %981

981:                                              ; preds = %977, %971
  %982 = phi ptr [ %953, %971 ], [ %980, %977 ]
  %983 = getelementptr inbounds nuw i8, ptr %982, i64 4
  store i16 0, ptr %983, align 4, !tbaa !55
  store i32 1, ptr %982, align 4, !tbaa !57
  %984 = add i64 %975, 1
  %985 = icmp ugt i64 %984, 65535
  br i1 %985, label %986, label %993, !prof !58

986:                                              ; preds = %981
  store i32 2, ptr %109, align 8, !tbaa !52
  %987 = load ptr, ptr %1, align 8, !tbaa !53
  %988 = ptrtoint ptr %982 to i64
  %989 = ptrtoint ptr %987 to i64
  %990 = sub i64 %988, %989
  %991 = lshr exact i64 %990, 3
  %992 = trunc i64 %991 to i32
  store i32 %992, ptr %111, align 4, !tbaa !54
  br label %993

993:                                              ; preds = %986, %981
  %994 = trunc i64 %984 to i16
  %995 = getelementptr inbounds nuw i8, ptr %982, i64 6
  store i16 %994, ptr %995, align 2, !tbaa !65
  %996 = getelementptr inbounds nuw i8, ptr %982, i64 8
  store ptr %996, ptr %110, align 8, !tbaa !50
  %997 = load i32, ptr %954, align 1, !tbaa !25
  %998 = mul i32 %997, -1640531535
  %999 = lshr i32 %998, %102
  %1000 = zext i32 %999 to i64
  %1001 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %1000
  store i32 %959, ptr %1001, align 4, !tbaa !25
  %1002 = load i64, ptr %954, align 1, !tbaa !24
  %1003 = mul i64 %1002, -3523014627327384477
  %1004 = lshr i64 %1003, %101
  %1005 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %1004
  store i32 %959, ptr %1005, align 4, !tbaa !25
  %1006 = getelementptr i8, ptr %954, i64 %975
  %1007 = getelementptr i8, ptr %1006, i64 4
  %1008 = icmp ugt ptr %1007, %39
  br i1 %1008, label %.loopexit, label %952

.loopexit:                                        ; preds = %993, %967, %952, %910, %478
  %1009 = phi i32 [ %122, %478 ], [ %914, %910 ], [ %955, %993 ], [ %956, %967 ], [ %956, %952 ]
  %1010 = phi i32 [ %121, %478 ], [ %915, %910 ], [ %956, %993 ], [ %955, %967 ], [ %955, %952 ]
  %1011 = phi ptr [ %120, %478 ], [ %920, %910 ], [ %1007, %993 ], [ %954, %967 ], [ %954, %952 ]
  %1012 = phi ptr [ %483, %478 ], [ %920, %910 ], [ %1007, %993 ], [ %954, %967 ], [ %954, %952 ]
  %1013 = icmp ult ptr %1012, %39
  br i1 %1013, label %118, label %1014

1014:                                             ; preds = %.loopexit
  %1015 = ptrtoint ptr %1011 to i64
  br label %3836

1016:                                             ; preds = %5
  br i1 %70, label %1017, label %1018, !prof !96, !nosanitize !95

1017:                                             ; preds = %1016
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !95
  unreachable, !nosanitize !95

1018:                                             ; preds = %1016
  %1019 = extractvalue { i64, i1 } %69, 0, !nosanitize !95
  %1020 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %1021 = load i32, ptr %1020, align 8, !tbaa !97
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %.loopexit589, label %1023

1023:                                             ; preds = %1018
  %1024 = zext nneg i32 %62 to i64
  %1025 = shl i64 4, %1024
  %1026 = zext nneg i32 %64 to i64
  %1027 = shl i64 4, %1026
  %1028 = icmp ugt i32 %62, 61
  br i1 %1028, label %.loopexit591, label %.preheader590

.loopexit591:                                     ; preds = %.preheader590, %1023
  %1029 = icmp ugt i32 %64, 61
  br i1 %1029, label %.loopexit589, label %.preheader588

.preheader590:                                    ; preds = %1023, %.preheader590
  %1030 = phi i64 [ %1032, %.preheader590 ], [ 0, %1023 ]
  %1031 = getelementptr inbounds nuw i8, ptr %46, i64 %1030
  tail call void @llvm.prefetch.p0(ptr %1031, i32 0, i32 2, i32 1)
  %1032 = add i64 %1030, 64
  %1033 = icmp ult i64 %1032, %1025
  br i1 %1033, label %.preheader590, label %.loopexit591, !llvm.loop !98

.preheader588:                                    ; preds = %.loopexit591, %.preheader588
  %1034 = phi i64 [ %1036, %.preheader588 ], [ 0, %.loopexit591 ]
  %1035 = getelementptr inbounds nuw i8, ptr %48, i64 %1034
  tail call void @llvm.prefetch.p0(ptr %1035, i32 0, i32 2, i32 1)
  %1036 = add i64 %1034, 64
  %1037 = icmp ult i64 %1036, %1027
  br i1 %1037, label %.preheader588, label %.loopexit589, !llvm.loop !99

.loopexit589:                                     ; preds = %.preheader588, %.loopexit591, %1018
  %1038 = and i64 %1019, 4294967295
  %1039 = icmp eq i64 %1038, 0
  %1040 = zext i1 %1039 to i64
  %1041 = add nsw i64 %4, -8
  %1042 = icmp sgt i64 %1041, %1040
  br i1 %1042, label %1043, label %3836

1043:                                             ; preds = %.loopexit589
  %1044 = getelementptr inbounds nuw i8, ptr %3, i64 %1040
  %1045 = sub i32 64, %12
  %1046 = zext nneg i32 %1045 to i64
  %1047 = sub i32 64, %16
  %1048 = zext nneg i32 %1047 to i64
  %1049 = sub i32 56, %62
  %1050 = zext nneg i32 %1049 to i64
  %1051 = sub i32 56, %64
  %1052 = zext nneg i32 %1051 to i64
  %1053 = getelementptr inbounds i8, ptr %38, i64 -32
  %1054 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %1055 = ptrtoint ptr %1053 to i64
  %1056 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %1057 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %1058 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %1059 = getelementptr inbounds i8, ptr %38, i64 -7
  %1060 = getelementptr inbounds i8, ptr %38, i64 -3
  %1061 = getelementptr inbounds i8, ptr %38, i64 -1
  %1062 = zext i32 %60 to i64
  %1063 = sub nsw i64 0, %1062
  %1064 = getelementptr i8, ptr %52, i64 %1063
  br label %1065

1065:                                             ; preds = %.loopexit541, %1043
  %1066 = phi ptr [ %1044, %1043 ], [ %1952, %.loopexit541 ]
  %1067 = phi ptr [ %3, %1043 ], [ %1951, %.loopexit541 ]
  %1068 = phi i32 [ %40, %1043 ], [ %1950, %.loopexit541 ]
  %1069 = phi i32 [ %42, %1043 ], [ %1949, %.loopexit541 ]
  %1070 = load i64, ptr %1066, align 1, !tbaa !24
  %1071 = mul i64 %1070, -3523014627327384477
  %1072 = lshr i64 %1071, %1046
  %1073 = mul i64 %1070, -3523014627271114752
  %1074 = lshr i64 %1073, %1048
  %1075 = lshr i64 %1071, %1050
  %1076 = lshr i64 %1073, %1052
  %1077 = lshr i64 %1075, 8
  %1078 = getelementptr inbounds nuw [4 x i8], ptr %46, i64 %1077
  %1079 = load i32, ptr %1078, align 4, !tbaa !25
  %1080 = lshr i64 %1076, 8
  %1081 = getelementptr inbounds nuw [4 x i8], ptr %48, i64 %1080
  %1082 = load i32, ptr %1081, align 4, !tbaa !25
  %1083 = zext i32 %1079 to i64
  %1084 = xor i64 %1075, %1083
  %1085 = and i64 %1084, 255
  %1086 = icmp eq i64 %1085, 0
  %1087 = zext i32 %1082 to i64
  %1088 = xor i64 %1076, %1087
  %1089 = and i64 %1088, 255
  %1090 = icmp eq i64 %1089, 0
  %1091 = ptrtoint ptr %1066 to i64
  %1092 = sub i64 %1091, %20
  %1093 = trunc i64 %1092 to i32
  %1094 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %1072
  %1095 = load i32, ptr %1094, align 4, !tbaa !25
  %1096 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %1074
  %1097 = load i32, ptr %1096, align 4, !tbaa !25
  %1098 = zext i32 %1095 to i64
  %1099 = getelementptr inbounds nuw i8, ptr %18, i64 %1098
  %1100 = zext i32 %1097 to i64
  %1101 = getelementptr inbounds nuw i8, ptr %18, i64 %1100
  %1102 = add i32 %1093, 1
  %1103 = sub i32 %1102, %1068
  %1104 = icmp ult i32 %1103, %35
  %1105 = sub i32 %1103, %60
  %1106 = zext i32 %1105 to i64
  %1107 = getelementptr inbounds nuw i8, ptr %52, i64 %1106
  %1108 = zext i32 %1103 to i64
  %1109 = getelementptr inbounds nuw i8, ptr %18, i64 %1108
  %1110 = select i1 %1104, ptr %1107, ptr %1109
  store i32 %1093, ptr %1096, align 4, !tbaa !25
  store i32 %1093, ptr %1094, align 4, !tbaa !25
  %1111 = sub i32 %1103, %35
  %1112 = icmp ugt i32 %1111, -4
  br i1 %1112, label %1284, label %1113

1113:                                             ; preds = %1065
  %1114 = load i32, ptr %1110, align 1, !tbaa !25
  %1115 = getelementptr inbounds nuw i8, ptr %1066, i64 1
  %1116 = load i32, ptr %1115, align 1, !tbaa !25
  %1117 = icmp eq i32 %1114, %1116
  br i1 %1117, label %1118, label %1284

1118:                                             ; preds = %1113
  %1119 = select i1 %1104, ptr %55, ptr %38
  %1120 = getelementptr inbounds nuw i8, ptr %1066, i64 5
  %1121 = getelementptr inbounds nuw i8, ptr %1110, i64 4
  %1122 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1120, ptr noundef nonnull %1121, ptr noundef %38, ptr noundef %1119, ptr noundef %37)
  %1123 = add i64 %1122, 4
  %1124 = ptrtoint ptr %1115 to i64
  %1125 = ptrtoint ptr %1067 to i64
  %1126 = sub i64 %1124, %1125
  %1127 = icmp ugt ptr %1115, %1053
  %1128 = load ptr, ptr %1054, align 8, !tbaa !38
  br i1 %1127, label %1151, label %1129

1129:                                             ; preds = %1118
  %1130 = load <2 x i64>, ptr %1067, align 1, !tbaa !37
  store <2 x i64> %1130, ptr %1128, align 1, !tbaa !37
  %1131 = icmp ugt i64 %1126, 16
  br i1 %1131, label %1132, label %1263

1132:                                             ; preds = %1129
  %1133 = load ptr, ptr %1054, align 8, !tbaa !38
  %1134 = getelementptr inbounds nuw i8, ptr %1133, i64 16
  %1135 = getelementptr inbounds nuw i8, ptr %1067, i64 16
  %1136 = getelementptr i8, ptr %1133, i64 %1126
  %1137 = load <2 x i64>, ptr %1135, align 1, !tbaa !37
  store <2 x i64> %1137, ptr %1134, align 1, !tbaa !37
  %1138 = icmp ult i64 %1126, 33
  br i1 %1138, label %1263, label %1139

1139:                                             ; preds = %1132
  %1140 = getelementptr inbounds nuw i8, ptr %1133, i64 32
  br label %1141

1141:                                             ; preds = %1141, %1139
  %1142 = phi ptr [ %1140, %1139 ], [ %1149, %1141 ]
  %1143 = phi ptr [ %1135, %1139 ], [ %1147, %1141 ]
  %1144 = getelementptr inbounds nuw i8, ptr %1143, i64 16
  %1145 = load <2 x i64>, ptr %1144, align 1, !tbaa !37
  store <2 x i64> %1145, ptr %1142, align 1, !tbaa !37
  %1146 = getelementptr inbounds nuw i8, ptr %1142, i64 16
  %1147 = getelementptr inbounds nuw i8, ptr %1143, i64 32
  %1148 = load <2 x i64>, ptr %1147, align 1, !tbaa !37
  store <2 x i64> %1148, ptr %1146, align 1, !tbaa !37
  %1149 = getelementptr inbounds nuw i8, ptr %1142, i64 32
  %1150 = icmp ult ptr %1149, %1136
  br i1 %1150, label %1141, label %.loopexit583, !llvm.loop !41

1151:                                             ; preds = %1118
  %1152 = icmp ugt ptr %1067, %1053
  br i1 %1152, label %.loopexit586, label %1153

1153:                                             ; preds = %1151
  %1154 = sub i64 %1055, %1125
  %1155 = getelementptr inbounds i8, ptr %1128, i64 %1154
  %1156 = load <2 x i64>, ptr %1067, align 1, !tbaa !37
  store <2 x i64> %1156, ptr %1128, align 1, !tbaa !37
  %1157 = icmp ult i64 %1154, 17
  br i1 %1157, label %.loopexit586, label %1158

1158:                                             ; preds = %1153
  %1159 = getelementptr inbounds nuw i8, ptr %1128, i64 16
  br label %1160

1160:                                             ; preds = %1160, %1158
  %1161 = phi ptr [ %1159, %1158 ], [ %1168, %1160 ]
  %1162 = phi ptr [ %1067, %1158 ], [ %1166, %1160 ]
  %1163 = getelementptr inbounds nuw i8, ptr %1162, i64 16
  %1164 = load <2 x i64>, ptr %1163, align 1, !tbaa !37
  store <2 x i64> %1164, ptr %1161, align 1, !tbaa !37
  %1165 = getelementptr inbounds nuw i8, ptr %1161, i64 16
  %1166 = getelementptr inbounds nuw i8, ptr %1162, i64 32
  %1167 = load <2 x i64>, ptr %1166, align 1, !tbaa !37
  store <2 x i64> %1167, ptr %1165, align 1, !tbaa !37
  %1168 = getelementptr inbounds nuw i8, ptr %1161, i64 32
  %1169 = icmp ult ptr %1168, %1155
  br i1 %1169, label %1160, label %.loopexit586, !llvm.loop !41

.loopexit586:                                     ; preds = %1160, %1153, %1151
  %1170 = phi ptr [ %1053, %1153 ], [ %1067, %1151 ], [ %1053, %1160 ]
  %1171 = phi ptr [ %1155, %1153 ], [ %1128, %1151 ], [ %1155, %1160 ]
  %1172 = icmp ult ptr %1170, %1115
  br i1 %1172, label %1173, label %.loopexit583

1173:                                             ; preds = %.loopexit586
  %1174 = ptrtoint ptr %1170 to i64
  %1175 = ptrtoint ptr %1171 to i64
  %1176 = add i64 %1091, 1
  %1177 = sub i64 %1176, %1174
  %1178 = icmp ult i64 %1177, 4
  %1179 = sub i64 %1175, %1174
  %1180 = icmp ult i64 %1179, 32
  %1181 = select i1 %1178, i1 true, i1 %1180
  br i1 %1181, label %1217, label %1182

1182:                                             ; preds = %1173
  %1183 = icmp ult i64 %1177, 32
  br i1 %1183, label %1203, label %1184

1184:                                             ; preds = %1182
  %1185 = and i64 %1177, -32
  br label %1186

1186:                                             ; preds = %1186, %1184
  %1187 = phi i64 [ 0, %1184 ], [ %1194, %1186 ]
  %1188 = getelementptr i8, ptr %1171, i64 %1187
  %1189 = getelementptr i8, ptr %1170, i64 %1187
  %1190 = getelementptr i8, ptr %1189, i64 16
  %1191 = load <16 x i8>, ptr %1189, align 1, !tbaa !37
  %1192 = load <16 x i8>, ptr %1190, align 1, !tbaa !37
  %1193 = getelementptr i8, ptr %1188, i64 16
  store <16 x i8> %1191, ptr %1188, align 1, !tbaa !37
  store <16 x i8> %1192, ptr %1193, align 1, !tbaa !37
  %1194 = add nuw i64 %1187, 32
  %1195 = icmp eq i64 %1194, %1185
  br i1 %1195, label %1196, label %1186, !llvm.loop !116

1196:                                             ; preds = %1186
  %1197 = icmp eq i64 %1177, %1185
  br i1 %1197, label %.loopexit583, label %1198

1198:                                             ; preds = %1196
  %1199 = getelementptr i8, ptr %1171, i64 %1185
  %1200 = getelementptr i8, ptr %1170, i64 %1185
  %1201 = and i64 %1177, 28
  %1202 = icmp eq i64 %1201, 0
  br i1 %1202, label %1217, label %1203

1203:                                             ; preds = %1198, %1182
  %1204 = phi i64 [ %1185, %1198 ], [ 0, %1182 ]
  %1205 = and i64 %1177, -4
  br label %1206

1206:                                             ; preds = %1206, %1203
  %1207 = phi i64 [ %1204, %1203 ], [ %1211, %1206 ]
  %1208 = getelementptr i8, ptr %1171, i64 %1207
  %1209 = getelementptr i8, ptr %1170, i64 %1207
  %1210 = load <4 x i8>, ptr %1209, align 1, !tbaa !37
  store <4 x i8> %1210, ptr %1208, align 1, !tbaa !37
  %1211 = add nuw i64 %1207, 4
  %1212 = icmp eq i64 %1211, %1205
  br i1 %1212, label %1213, label %1206, !llvm.loop !117

1213:                                             ; preds = %1206
  %1214 = getelementptr i8, ptr %1171, i64 %1205
  %1215 = getelementptr i8, ptr %1170, i64 %1205
  %1216 = icmp eq i64 %1177, %1205
  br i1 %1216, label %.loopexit583, label %1217

1217:                                             ; preds = %1213, %1198, %1173
  %1218 = phi ptr [ %1171, %1173 ], [ %1199, %1198 ], [ %1214, %1213 ]
  %1219 = phi ptr [ %1170, %1173 ], [ %1200, %1198 ], [ %1215, %1213 ]
  %1220 = ptrtoint ptr %1219 to i64
  %1221 = sub i64 %1176, %1220
  %1222 = sub i64 %1091, %1220
  %1223 = and i64 %1221, 7
  %1224 = icmp eq i64 %1223, 0
  br i1 %1224, label %.loopexit585, label %.preheader584

.preheader584:                                    ; preds = %1217, %.preheader584
  %1225 = phi ptr [ %1230, %.preheader584 ], [ %1218, %1217 ]
  %1226 = phi ptr [ %1228, %.preheader584 ], [ %1219, %1217 ]
  %1227 = phi i64 [ %1231, %.preheader584 ], [ 0, %1217 ]
  %1228 = getelementptr inbounds nuw i8, ptr %1226, i64 1
  %1229 = load i8, ptr %1226, align 1, !tbaa !37
  %1230 = getelementptr inbounds nuw i8, ptr %1225, i64 1
  store i8 %1229, ptr %1225, align 1, !tbaa !37
  %1231 = add nuw nsw i64 %1227, 1
  %1232 = icmp eq i64 %1231, %1223
  br i1 %1232, label %.loopexit585, label %.preheader584, !llvm.loop !118

.loopexit585:                                     ; preds = %.preheader584, %1217
  %1233 = phi ptr [ %1218, %1217 ], [ %1230, %.preheader584 ]
  %1234 = phi ptr [ %1219, %1217 ], [ %1228, %.preheader584 ]
  %1235 = icmp ult i64 %1222, 7
  br i1 %1235, label %.loopexit583, label %.preheader582

.preheader582:                                    ; preds = %.loopexit585, %.preheader582
  %1236 = phi ptr [ %1261, %.preheader582 ], [ %1233, %.loopexit585 ]
  %1237 = phi ptr [ %1259, %.preheader582 ], [ %1234, %.loopexit585 ]
  %1238 = getelementptr inbounds nuw i8, ptr %1237, i64 1
  %1239 = load i8, ptr %1237, align 1, !tbaa !37
  %1240 = getelementptr inbounds nuw i8, ptr %1236, i64 1
  store i8 %1239, ptr %1236, align 1, !tbaa !37
  %1241 = getelementptr inbounds nuw i8, ptr %1237, i64 2
  %1242 = load i8, ptr %1238, align 1, !tbaa !37
  %1243 = getelementptr inbounds nuw i8, ptr %1236, i64 2
  store i8 %1242, ptr %1240, align 1, !tbaa !37
  %1244 = getelementptr inbounds nuw i8, ptr %1237, i64 3
  %1245 = load i8, ptr %1241, align 1, !tbaa !37
  %1246 = getelementptr inbounds nuw i8, ptr %1236, i64 3
  store i8 %1245, ptr %1243, align 1, !tbaa !37
  %1247 = getelementptr inbounds nuw i8, ptr %1237, i64 4
  %1248 = load i8, ptr %1244, align 1, !tbaa !37
  %1249 = getelementptr inbounds nuw i8, ptr %1236, i64 4
  store i8 %1248, ptr %1246, align 1, !tbaa !37
  %1250 = getelementptr inbounds nuw i8, ptr %1237, i64 5
  %1251 = load i8, ptr %1247, align 1, !tbaa !37
  %1252 = getelementptr inbounds nuw i8, ptr %1236, i64 5
  store i8 %1251, ptr %1249, align 1, !tbaa !37
  %1253 = getelementptr inbounds nuw i8, ptr %1237, i64 6
  %1254 = load i8, ptr %1250, align 1, !tbaa !37
  %1255 = getelementptr inbounds nuw i8, ptr %1236, i64 6
  store i8 %1254, ptr %1252, align 1, !tbaa !37
  %1256 = getelementptr inbounds nuw i8, ptr %1237, i64 7
  %1257 = load i8, ptr %1253, align 1, !tbaa !37
  %1258 = getelementptr inbounds nuw i8, ptr %1236, i64 7
  store i8 %1257, ptr %1255, align 1, !tbaa !37
  %1259 = getelementptr inbounds nuw i8, ptr %1237, i64 8
  %1260 = load i8, ptr %1256, align 1, !tbaa !37
  %1261 = getelementptr inbounds nuw i8, ptr %1236, i64 8
  store i8 %1260, ptr %1258, align 1, !tbaa !37
  %1262 = icmp eq ptr %1256, %1066
  br i1 %1262, label %.loopexit583, label %.preheader582, !llvm.loop !119

1263:                                             ; preds = %1132, %1129
  %1264 = load ptr, ptr %1054, align 8, !tbaa !38
  %1265 = getelementptr inbounds nuw i8, ptr %1264, i64 %1126
  store ptr %1265, ptr %1054, align 8, !tbaa !38
  %1266 = load ptr, ptr %1057, align 8, !tbaa !50
  br label %1278

.loopexit583:                                     ; preds = %1141, %.preheader582, %.loopexit585, %1213, %1196, %.loopexit586
  %1267 = load ptr, ptr %1054, align 8, !tbaa !38
  %1268 = getelementptr inbounds nuw i8, ptr %1267, i64 %1126
  store ptr %1268, ptr %1054, align 8, !tbaa !38
  %1269 = icmp ugt i64 %1126, 65535
  %1270 = load ptr, ptr %1057, align 8, !tbaa !50
  br i1 %1269, label %1271, label %1278, !prof !51

1271:                                             ; preds = %.loopexit583
  store i32 1, ptr %1056, align 8, !tbaa !52
  %1272 = load ptr, ptr %1, align 8, !tbaa !53
  %1273 = ptrtoint ptr %1270 to i64
  %1274 = ptrtoint ptr %1272 to i64
  %1275 = sub i64 %1273, %1274
  %1276 = lshr exact i64 %1275, 3
  %1277 = trunc i64 %1276 to i32
  store i32 %1277, ptr %1058, align 4, !tbaa !54
  br label %1278

1278:                                             ; preds = %1271, %.loopexit583, %1263
  %1279 = phi ptr [ %1266, %1263 ], [ %1270, %1271 ], [ %1270, %.loopexit583 ]
  %1280 = trunc i64 %1126 to i16
  %1281 = getelementptr inbounds nuw i8, ptr %1279, i64 4
  store i16 %1280, ptr %1281, align 4, !tbaa !55
  store i32 1, ptr %1279, align 4, !tbaa !57
  %1282 = add i64 %1122, 1
  %1283 = icmp ugt i64 %1282, 65535
  br i1 %1283, label %1842, label %1855, !prof !58

1284:                                             ; preds = %1113, %1065
  %1285 = icmp ult i32 %1095, %35
  br i1 %1285, label %1376, label %1286

1286:                                             ; preds = %1284
  %1287 = load i64, ptr %1099, align 1, !tbaa !24
  %1288 = icmp eq i64 %1287, %1070
  br i1 %1288, label %1289, label %1376

1289:                                             ; preds = %1286
  %1290 = getelementptr inbounds nuw i8, ptr %1066, i64 8
  %1291 = getelementptr inbounds nuw i8, ptr %1099, i64 8
  %1292 = icmp ult ptr %1290, %1059
  br i1 %1292, label %1293, label %.loopexit581

1293:                                             ; preds = %1289
  %1294 = load i64, ptr %1291, align 1, !tbaa !24
  %1295 = load i64, ptr %1290, align 1, !tbaa !24
  %1296 = icmp eq i64 %1294, %1295
  br i1 %1296, label %.preheader580, label %1297

1297:                                             ; preds = %1293
  %1298 = xor i64 %1295, %1294
  %1299 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1298, i1 true)
  %1300 = lshr i64 %1299, 3
  br label %1354

.preheader580:                                    ; preds = %1293, %1306
  %1301 = phi ptr [ %1304, %1306 ], [ %1291, %1293 ]
  %1302 = phi ptr [ %1303, %1306 ], [ %1290, %1293 ]
  %1303 = getelementptr inbounds nuw i8, ptr %1302, i64 8
  %1304 = getelementptr inbounds nuw i8, ptr %1301, i64 8
  %1305 = icmp ult ptr %1303, %1059
  br i1 %1305, label %1306, label %.loopexit581

1306:                                             ; preds = %.preheader580
  %1307 = load i64, ptr %1304, align 1, !tbaa !24
  %1308 = load i64, ptr %1303, align 1, !tbaa !24
  %1309 = icmp eq i64 %1307, %1308
  br i1 %1309, label %.preheader580, label %1310

1310:                                             ; preds = %1306
  %1311 = xor i64 %1308, %1307
  %1312 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1311, i1 true)
  %1313 = lshr i64 %1312, 3
  %1314 = getelementptr inbounds nuw i8, ptr %1303, i64 %1313
  %1315 = ptrtoint ptr %1314 to i64
  %1316 = ptrtoint ptr %1290 to i64
  %1317 = sub i64 %1315, %1316
  br label %1354

.loopexit581:                                     ; preds = %.preheader580, %1289
  %1318 = phi ptr [ %1291, %1289 ], [ %1304, %.preheader580 ]
  %1319 = phi ptr [ %1290, %1289 ], [ %1303, %.preheader580 ]
  %1320 = icmp ult ptr %1319, %1060
  br i1 %1320, label %1321, label %1328

1321:                                             ; preds = %.loopexit581
  %1322 = load i32, ptr %1318, align 1, !tbaa !25
  %1323 = load i32, ptr %1319, align 1, !tbaa !25
  %1324 = icmp eq i32 %1322, %1323
  br i1 %1324, label %1325, label %1328

1325:                                             ; preds = %1321
  %1326 = getelementptr inbounds nuw i8, ptr %1319, i64 4
  %1327 = getelementptr inbounds nuw i8, ptr %1318, i64 4
  br label %1328

1328:                                             ; preds = %1325, %1321, %.loopexit581
  %1329 = phi ptr [ %1327, %1325 ], [ %1318, %1321 ], [ %1318, %.loopexit581 ]
  %1330 = phi ptr [ %1326, %1325 ], [ %1319, %1321 ], [ %1319, %.loopexit581 ]
  %1331 = icmp ult ptr %1330, %1061
  br i1 %1331, label %1332, label %1339

1332:                                             ; preds = %1328
  %1333 = load i16, ptr %1329, align 1, !tbaa !35
  %1334 = load i16, ptr %1330, align 1, !tbaa !35
  %1335 = icmp eq i16 %1333, %1334
  br i1 %1335, label %1336, label %1339

1336:                                             ; preds = %1332
  %1337 = getelementptr inbounds nuw i8, ptr %1330, i64 2
  %1338 = getelementptr inbounds nuw i8, ptr %1329, i64 2
  br label %1339

1339:                                             ; preds = %1336, %1332, %1328
  %1340 = phi ptr [ %1338, %1336 ], [ %1329, %1332 ], [ %1329, %1328 ]
  %1341 = phi ptr [ %1337, %1336 ], [ %1330, %1332 ], [ %1330, %1328 ]
  %1342 = icmp ult ptr %1341, %38
  br i1 %1342, label %1343, label %1349

1343:                                             ; preds = %1339
  %1344 = load i8, ptr %1340, align 1, !tbaa !37
  %1345 = load i8, ptr %1341, align 1, !tbaa !37
  %1346 = icmp eq i8 %1344, %1345
  %1347 = zext i1 %1346 to i64
  %1348 = getelementptr inbounds nuw i8, ptr %1341, i64 %1347
  br label %1349

1349:                                             ; preds = %1343, %1339
  %1350 = phi ptr [ %1341, %1339 ], [ %1348, %1343 ]
  %1351 = ptrtoint ptr %1350 to i64
  %1352 = ptrtoint ptr %1290 to i64
  %1353 = sub i64 %1351, %1352
  br label %1354

1354:                                             ; preds = %1349, %1310, %1297
  %1355 = phi i64 [ %1353, %1349 ], [ %1300, %1297 ], [ %1317, %1310 ]
  %1356 = add i64 %1355, 8
  %1357 = ptrtoint ptr %1099 to i64
  %1358 = sub i64 %1091, %1357
  %1359 = trunc i64 %1358 to i32
  %1360 = icmp ugt ptr %1066, %1067
  %1361 = icmp ugt i32 %1095, %35
  %1362 = and i1 %1360, %1361
  br i1 %1362, label %.preheader576, label %.loopexit553

.preheader576:                                    ; preds = %1354, %1371
  %1363 = phi ptr [ %1366, %1371 ], [ %1066, %1354 ]
  %1364 = phi i64 [ %1372, %1371 ], [ %1356, %1354 ]
  %1365 = phi ptr [ %1368, %1371 ], [ %1099, %1354 ]
  %1366 = getelementptr inbounds i8, ptr %1363, i64 -1
  %1367 = load i8, ptr %1366, align 1, !tbaa !37
  %1368 = getelementptr inbounds i8, ptr %1365, i64 -1
  %1369 = load i8, ptr %1368, align 1, !tbaa !37
  %1370 = icmp eq i8 %1367, %1369
  br i1 %1370, label %1371, label %.loopexit553

1371:                                             ; preds = %.preheader576
  %1372 = add i64 %1364, 1
  %1373 = icmp ugt ptr %1366, %1067
  %1374 = icmp ugt ptr %1368, %37
  %1375 = and i1 %1373, %1374
  br i1 %1375, label %.preheader576, label %.loopexit553, !llvm.loop !104

1376:                                             ; preds = %1286, %1284
  br i1 %1086, label %1377, label %1406

1377:                                             ; preds = %1376
  %1378 = lshr i32 %1079, 8
  %1379 = zext nneg i32 %1378 to i64
  %1380 = getelementptr inbounds nuw i8, ptr %52, i64 %1379
  %1381 = icmp ugt i32 %1378, %50
  br i1 %1381, label %1382, label %1406

1382:                                             ; preds = %1377
  %1383 = load i64, ptr %1380, align 1, !tbaa !24
  %1384 = icmp eq i64 %1383, %1070
  br i1 %1384, label %1385, label %1406

1385:                                             ; preds = %1382
  %1386 = getelementptr inbounds nuw i8, ptr %1066, i64 8
  %1387 = getelementptr inbounds nuw i8, ptr %1380, i64 8
  %1388 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1386, ptr noundef nonnull %1387, ptr noundef %38, ptr noundef %55, ptr noundef %37)
  %1389 = add i64 %1388, 8
  %1390 = add i32 %60, %1378
  %1391 = sub i32 %1093, %1390
  %1392 = icmp ugt ptr %1066, %1067
  br i1 %1392, label %.preheader552, label %.loopexit553

.preheader552:                                    ; preds = %1385, %1401
  %1393 = phi ptr [ %1396, %1401 ], [ %1066, %1385 ]
  %1394 = phi i64 [ %1402, %1401 ], [ %1389, %1385 ]
  %1395 = phi ptr [ %1398, %1401 ], [ %1380, %1385 ]
  %1396 = getelementptr inbounds i8, ptr %1393, i64 -1
  %1397 = load i8, ptr %1396, align 1, !tbaa !37
  %1398 = getelementptr inbounds i8, ptr %1395, i64 -1
  %1399 = load i8, ptr %1398, align 1, !tbaa !37
  %1400 = icmp eq i8 %1397, %1399
  br i1 %1400, label %1401, label %.loopexit553

1401:                                             ; preds = %.preheader552
  %1402 = add i64 %1394, 1
  %1403 = icmp ugt ptr %1396, %1067
  %1404 = icmp ugt ptr %1398, %54
  %1405 = and i1 %1403, %1404
  br i1 %1405, label %.preheader552, label %.loopexit553, !llvm.loop !105

1406:                                             ; preds = %1382, %1377, %1376
  %1407 = icmp ugt i32 %1097, %35
  br i1 %1407, label %1408, label %1412

1408:                                             ; preds = %1406
  %1409 = load i32, ptr %1101, align 1, !tbaa !25
  %1410 = load i32, ptr %1066, align 1, !tbaa !25
  %1411 = icmp eq i32 %1409, %1410
  br i1 %1411, label %1429, label %1423

1412:                                             ; preds = %1406
  br i1 %1090, label %1413, label %1423

1413:                                             ; preds = %1412
  %1414 = lshr i32 %1082, 8
  %1415 = icmp ugt i32 %1414, %50
  br i1 %1415, label %1416, label %1423

1416:                                             ; preds = %1413
  %1417 = add i32 %1414, %60
  %1418 = zext nneg i32 %1414 to i64
  %1419 = getelementptr inbounds nuw i8, ptr %52, i64 %1418
  %1420 = load i32, ptr %1419, align 1, !tbaa !25
  %1421 = load i32, ptr %1066, align 1, !tbaa !25
  %1422 = icmp eq i32 %1420, %1421
  br i1 %1422, label %1429, label %1423

1423:                                             ; preds = %1416, %1413, %1412, %1408
  %1424 = ptrtoint ptr %1067 to i64
  %1425 = sub i64 %1091, %1424
  %1426 = ashr i64 %1425, 8
  %1427 = getelementptr i8, ptr %1066, i64 %1426
  %1428 = getelementptr i8, ptr %1427, i64 1
  br label %.loopexit541, !llvm.loop !106

1429:                                             ; preds = %1416, %1408
  %1430 = phi ptr [ %1101, %1408 ], [ %1419, %1416 ]
  %1431 = phi i32 [ %1097, %1408 ], [ %1417, %1416 ]
  %1432 = getelementptr inbounds nuw i8, ptr %1066, i64 1
  %1433 = load i64, ptr %1432, align 1, !tbaa !24
  %1434 = mul i64 %1433, -3523014627327384477
  %1435 = lshr i64 %1434, %1046
  %1436 = lshr i64 %1434, %1050
  %1437 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %1435
  %1438 = load i32, ptr %1437, align 4, !tbaa !25
  %1439 = lshr i64 %1436, 8
  %1440 = getelementptr inbounds nuw [4 x i8], ptr %46, i64 %1439
  %1441 = load i32, ptr %1440, align 4, !tbaa !25
  %1442 = zext i32 %1441 to i64
  %1443 = xor i64 %1436, %1442
  %1444 = and i64 %1443, 255
  %1445 = icmp eq i64 %1444, 0
  %1446 = zext i32 %1438 to i64
  %1447 = getelementptr inbounds nuw i8, ptr %18, i64 %1446
  store i32 %1102, ptr %1437, align 4, !tbaa !25
  %1448 = icmp ult i32 %1438, %35
  br i1 %1448, label %1540, label %1449

1449:                                             ; preds = %1429
  %1450 = load i64, ptr %1447, align 1, !tbaa !24
  %1451 = icmp eq i64 %1450, %1433
  br i1 %1451, label %1452, label %1540

1452:                                             ; preds = %1449
  %1453 = getelementptr inbounds nuw i8, ptr %1066, i64 9
  %1454 = getelementptr inbounds nuw i8, ptr %1447, i64 8
  %1455 = icmp ult ptr %1453, %1059
  br i1 %1455, label %1456, label %.loopexit575

1456:                                             ; preds = %1452
  %1457 = load i64, ptr %1454, align 1, !tbaa !24
  %1458 = load i64, ptr %1453, align 1, !tbaa !24
  %1459 = icmp eq i64 %1457, %1458
  br i1 %1459, label %.preheader574, label %1460

1460:                                             ; preds = %1456
  %1461 = xor i64 %1458, %1457
  %1462 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1461, i1 true)
  %1463 = lshr i64 %1462, 3
  br label %1517

.preheader574:                                    ; preds = %1456, %1469
  %1464 = phi ptr [ %1467, %1469 ], [ %1454, %1456 ]
  %1465 = phi ptr [ %1466, %1469 ], [ %1453, %1456 ]
  %1466 = getelementptr inbounds nuw i8, ptr %1465, i64 8
  %1467 = getelementptr inbounds nuw i8, ptr %1464, i64 8
  %1468 = icmp ult ptr %1466, %1059
  br i1 %1468, label %1469, label %.loopexit575

1469:                                             ; preds = %.preheader574
  %1470 = load i64, ptr %1467, align 1, !tbaa !24
  %1471 = load i64, ptr %1466, align 1, !tbaa !24
  %1472 = icmp eq i64 %1470, %1471
  br i1 %1472, label %.preheader574, label %1473

1473:                                             ; preds = %1469
  %1474 = xor i64 %1471, %1470
  %1475 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1474, i1 true)
  %1476 = lshr i64 %1475, 3
  %1477 = getelementptr inbounds nuw i8, ptr %1466, i64 %1476
  %1478 = ptrtoint ptr %1477 to i64
  %1479 = ptrtoint ptr %1453 to i64
  %1480 = sub i64 %1478, %1479
  br label %1517

.loopexit575:                                     ; preds = %.preheader574, %1452
  %1481 = phi ptr [ %1454, %1452 ], [ %1467, %.preheader574 ]
  %1482 = phi ptr [ %1453, %1452 ], [ %1466, %.preheader574 ]
  %1483 = icmp ult ptr %1482, %1060
  br i1 %1483, label %1484, label %1491

1484:                                             ; preds = %.loopexit575
  %1485 = load i32, ptr %1481, align 1, !tbaa !25
  %1486 = load i32, ptr %1482, align 1, !tbaa !25
  %1487 = icmp eq i32 %1485, %1486
  br i1 %1487, label %1488, label %1491

1488:                                             ; preds = %1484
  %1489 = getelementptr inbounds nuw i8, ptr %1482, i64 4
  %1490 = getelementptr inbounds nuw i8, ptr %1481, i64 4
  br label %1491

1491:                                             ; preds = %1488, %1484, %.loopexit575
  %1492 = phi ptr [ %1490, %1488 ], [ %1481, %1484 ], [ %1481, %.loopexit575 ]
  %1493 = phi ptr [ %1489, %1488 ], [ %1482, %1484 ], [ %1482, %.loopexit575 ]
  %1494 = icmp ult ptr %1493, %1061
  br i1 %1494, label %1495, label %1502

1495:                                             ; preds = %1491
  %1496 = load i16, ptr %1492, align 1, !tbaa !35
  %1497 = load i16, ptr %1493, align 1, !tbaa !35
  %1498 = icmp eq i16 %1496, %1497
  br i1 %1498, label %1499, label %1502

1499:                                             ; preds = %1495
  %1500 = getelementptr inbounds nuw i8, ptr %1493, i64 2
  %1501 = getelementptr inbounds nuw i8, ptr %1492, i64 2
  br label %1502

1502:                                             ; preds = %1499, %1495, %1491
  %1503 = phi ptr [ %1501, %1499 ], [ %1492, %1495 ], [ %1492, %1491 ]
  %1504 = phi ptr [ %1500, %1499 ], [ %1493, %1495 ], [ %1493, %1491 ]
  %1505 = icmp ult ptr %1504, %38
  br i1 %1505, label %1506, label %1512

1506:                                             ; preds = %1502
  %1507 = load i8, ptr %1503, align 1, !tbaa !37
  %1508 = load i8, ptr %1504, align 1, !tbaa !37
  %1509 = icmp eq i8 %1507, %1508
  %1510 = zext i1 %1509 to i64
  %1511 = getelementptr inbounds nuw i8, ptr %1504, i64 %1510
  br label %1512

1512:                                             ; preds = %1506, %1502
  %1513 = phi ptr [ %1504, %1502 ], [ %1511, %1506 ]
  %1514 = ptrtoint ptr %1513 to i64
  %1515 = ptrtoint ptr %1453 to i64
  %1516 = sub i64 %1514, %1515
  br label %1517

1517:                                             ; preds = %1512, %1473, %1460
  %1518 = phi i64 [ %1516, %1512 ], [ %1463, %1460 ], [ %1480, %1473 ]
  %1519 = add i64 %1518, 8
  %1520 = ptrtoint ptr %1432 to i64
  %1521 = ptrtoint ptr %1447 to i64
  %1522 = sub i64 %1520, %1521
  %1523 = trunc i64 %1522 to i32
  %1524 = icmp ugt ptr %1432, %1067
  %1525 = icmp ugt i32 %1438, %35
  %1526 = and i1 %1524, %1525
  br i1 %1526, label %.preheader570, label %.loopexit553

.preheader570:                                    ; preds = %1517, %1535
  %1527 = phi ptr [ %1530, %1535 ], [ %1432, %1517 ]
  %1528 = phi i64 [ %1536, %1535 ], [ %1519, %1517 ]
  %1529 = phi ptr [ %1532, %1535 ], [ %1447, %1517 ]
  %1530 = getelementptr inbounds i8, ptr %1527, i64 -1
  %1531 = load i8, ptr %1530, align 1, !tbaa !37
  %1532 = getelementptr inbounds i8, ptr %1529, i64 -1
  %1533 = load i8, ptr %1532, align 1, !tbaa !37
  %1534 = icmp eq i8 %1531, %1533
  br i1 %1534, label %1535, label %.loopexit553

1535:                                             ; preds = %.preheader570
  %1536 = add i64 %1528, 1
  %1537 = icmp ugt ptr %1530, %1067
  %1538 = icmp ugt ptr %1532, %37
  %1539 = and i1 %1537, %1538
  br i1 %1539, label %.preheader570, label %.loopexit553, !llvm.loop !107

1540:                                             ; preds = %1449, %1429
  br i1 %1445, label %1541, label %1570

1541:                                             ; preds = %1540
  %1542 = lshr i32 %1441, 8
  %1543 = zext nneg i32 %1542 to i64
  %1544 = getelementptr inbounds nuw i8, ptr %52, i64 %1543
  %1545 = icmp ugt i32 %1542, %50
  br i1 %1545, label %1546, label %1570

1546:                                             ; preds = %1541
  %1547 = load i64, ptr %1544, align 1, !tbaa !24
  %1548 = icmp eq i64 %1547, %1433
  br i1 %1548, label %1549, label %1570

1549:                                             ; preds = %1546
  %1550 = getelementptr inbounds nuw i8, ptr %1066, i64 9
  %1551 = getelementptr inbounds nuw i8, ptr %1544, i64 8
  %1552 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1550, ptr noundef nonnull %1551, ptr noundef %38, ptr noundef %55, ptr noundef %37)
  %1553 = add i64 %1552, 8
  %1554 = add i32 %60, %1542
  %1555 = sub i32 %1102, %1554
  %1556 = icmp ugt ptr %1432, %1067
  br i1 %1556, label %.preheader556, label %.loopexit553

.preheader556:                                    ; preds = %1549, %1565
  %1557 = phi ptr [ %1560, %1565 ], [ %1432, %1549 ]
  %1558 = phi i64 [ %1566, %1565 ], [ %1553, %1549 ]
  %1559 = phi ptr [ %1562, %1565 ], [ %1544, %1549 ]
  %1560 = getelementptr inbounds i8, ptr %1557, i64 -1
  %1561 = load i8, ptr %1560, align 1, !tbaa !37
  %1562 = getelementptr inbounds i8, ptr %1559, i64 -1
  %1563 = load i8, ptr %1562, align 1, !tbaa !37
  %1564 = icmp eq i8 %1561, %1563
  br i1 %1564, label %1565, label %.loopexit553

1565:                                             ; preds = %.preheader556
  %1566 = add i64 %1558, 1
  %1567 = icmp ugt ptr %1560, %1067
  %1568 = icmp ugt ptr %1562, %54
  %1569 = and i1 %1567, %1568
  br i1 %1569, label %.preheader556, label %.loopexit553, !llvm.loop !108

1570:                                             ; preds = %1546, %1541, %1540
  %1571 = icmp ult i32 %1431, %35
  %1572 = getelementptr inbounds nuw i8, ptr %1066, i64 4
  %1573 = getelementptr inbounds nuw i8, ptr %1430, i64 4
  br i1 %1571, label %1574, label %1594

1574:                                             ; preds = %1570
  %1575 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1572, ptr noundef nonnull %1573, ptr noundef %38, ptr noundef %55, ptr noundef nonnull %37)
  %1576 = add i64 %1575, 4
  %1577 = sub i32 %1093, %1431
  %1578 = icmp ugt ptr %1066, %1067
  %1579 = icmp ugt ptr %1430, %54
  %1580 = and i1 %1578, %1579
  br i1 %1580, label %.preheader560, label %.loopexit553

.preheader560:                                    ; preds = %1574, %1589
  %1581 = phi ptr [ %1584, %1589 ], [ %1066, %1574 ]
  %1582 = phi i64 [ %1590, %1589 ], [ %1576, %1574 ]
  %1583 = phi ptr [ %1586, %1589 ], [ %1430, %1574 ]
  %1584 = getelementptr inbounds i8, ptr %1581, i64 -1
  %1585 = load i8, ptr %1584, align 1, !tbaa !37
  %1586 = getelementptr inbounds i8, ptr %1583, i64 -1
  %1587 = load i8, ptr %1586, align 1, !tbaa !37
  %1588 = icmp eq i8 %1585, %1587
  br i1 %1588, label %1589, label %.loopexit553

1589:                                             ; preds = %.preheader560
  %1590 = add i64 %1582, 1
  %1591 = icmp ugt ptr %1584, %1067
  %1592 = icmp ugt ptr %1586, %54
  %1593 = and i1 %1591, %1592
  br i1 %1593, label %.preheader560, label %.loopexit553, !llvm.loop !109

1594:                                             ; preds = %1570
  %1595 = icmp ult ptr %1572, %1059
  br i1 %1595, label %1596, label %.loopexit569

1596:                                             ; preds = %1594
  %1597 = load i64, ptr %1573, align 1, !tbaa !24
  %1598 = load i64, ptr %1572, align 1, !tbaa !24
  %1599 = icmp eq i64 %1597, %1598
  br i1 %1599, label %.preheader568, label %1600

1600:                                             ; preds = %1596
  %1601 = xor i64 %1598, %1597
  %1602 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1601, i1 true)
  %1603 = lshr i64 %1602, 3
  br label %1657

.preheader568:                                    ; preds = %1596, %1609
  %1604 = phi ptr [ %1607, %1609 ], [ %1573, %1596 ]
  %1605 = phi ptr [ %1606, %1609 ], [ %1572, %1596 ]
  %1606 = getelementptr inbounds nuw i8, ptr %1605, i64 8
  %1607 = getelementptr inbounds nuw i8, ptr %1604, i64 8
  %1608 = icmp ult ptr %1606, %1059
  br i1 %1608, label %1609, label %.loopexit569

1609:                                             ; preds = %.preheader568
  %1610 = load i64, ptr %1607, align 1, !tbaa !24
  %1611 = load i64, ptr %1606, align 1, !tbaa !24
  %1612 = icmp eq i64 %1610, %1611
  br i1 %1612, label %.preheader568, label %1613

1613:                                             ; preds = %1609
  %1614 = xor i64 %1611, %1610
  %1615 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1614, i1 true)
  %1616 = lshr i64 %1615, 3
  %1617 = getelementptr inbounds nuw i8, ptr %1606, i64 %1616
  %1618 = ptrtoint ptr %1617 to i64
  %1619 = ptrtoint ptr %1572 to i64
  %1620 = sub i64 %1618, %1619
  br label %1657

.loopexit569:                                     ; preds = %.preheader568, %1594
  %1621 = phi ptr [ %1573, %1594 ], [ %1607, %.preheader568 ]
  %1622 = phi ptr [ %1572, %1594 ], [ %1606, %.preheader568 ]
  %1623 = icmp ult ptr %1622, %1060
  br i1 %1623, label %1624, label %1631

1624:                                             ; preds = %.loopexit569
  %1625 = load i32, ptr %1621, align 1, !tbaa !25
  %1626 = load i32, ptr %1622, align 1, !tbaa !25
  %1627 = icmp eq i32 %1625, %1626
  br i1 %1627, label %1628, label %1631

1628:                                             ; preds = %1624
  %1629 = getelementptr inbounds nuw i8, ptr %1622, i64 4
  %1630 = getelementptr inbounds nuw i8, ptr %1621, i64 4
  br label %1631

1631:                                             ; preds = %1628, %1624, %.loopexit569
  %1632 = phi ptr [ %1630, %1628 ], [ %1621, %1624 ], [ %1621, %.loopexit569 ]
  %1633 = phi ptr [ %1629, %1628 ], [ %1622, %1624 ], [ %1622, %.loopexit569 ]
  %1634 = icmp ult ptr %1633, %1061
  br i1 %1634, label %1635, label %1642

1635:                                             ; preds = %1631
  %1636 = load i16, ptr %1632, align 1, !tbaa !35
  %1637 = load i16, ptr %1633, align 1, !tbaa !35
  %1638 = icmp eq i16 %1636, %1637
  br i1 %1638, label %1639, label %1642

1639:                                             ; preds = %1635
  %1640 = getelementptr inbounds nuw i8, ptr %1633, i64 2
  %1641 = getelementptr inbounds nuw i8, ptr %1632, i64 2
  br label %1642

1642:                                             ; preds = %1639, %1635, %1631
  %1643 = phi ptr [ %1641, %1639 ], [ %1632, %1635 ], [ %1632, %1631 ]
  %1644 = phi ptr [ %1640, %1639 ], [ %1633, %1635 ], [ %1633, %1631 ]
  %1645 = icmp ult ptr %1644, %38
  br i1 %1645, label %1646, label %1652

1646:                                             ; preds = %1642
  %1647 = load i8, ptr %1643, align 1, !tbaa !37
  %1648 = load i8, ptr %1644, align 1, !tbaa !37
  %1649 = icmp eq i8 %1647, %1648
  %1650 = zext i1 %1649 to i64
  %1651 = getelementptr inbounds nuw i8, ptr %1644, i64 %1650
  br label %1652

1652:                                             ; preds = %1646, %1642
  %1653 = phi ptr [ %1644, %1642 ], [ %1651, %1646 ]
  %1654 = ptrtoint ptr %1653 to i64
  %1655 = ptrtoint ptr %1572 to i64
  %1656 = sub i64 %1654, %1655
  br label %1657

1657:                                             ; preds = %1652, %1613, %1600
  %1658 = phi i64 [ %1656, %1652 ], [ %1603, %1600 ], [ %1620, %1613 ]
  %1659 = add i64 %1658, 4
  %1660 = ptrtoint ptr %1430 to i64
  %1661 = sub i64 %1091, %1660
  %1662 = trunc i64 %1661 to i32
  %1663 = icmp ugt ptr %1066, %1067
  %1664 = icmp ugt ptr %1430, %37
  %1665 = and i1 %1663, %1664
  br i1 %1665, label %.preheader564, label %.loopexit553

.preheader564:                                    ; preds = %1657, %1674
  %1666 = phi ptr [ %1669, %1674 ], [ %1066, %1657 ]
  %1667 = phi i64 [ %1675, %1674 ], [ %1659, %1657 ]
  %1668 = phi ptr [ %1671, %1674 ], [ %1430, %1657 ]
  %1669 = getelementptr inbounds i8, ptr %1666, i64 -1
  %1670 = load i8, ptr %1669, align 1, !tbaa !37
  %1671 = getelementptr inbounds i8, ptr %1668, i64 -1
  %1672 = load i8, ptr %1671, align 1, !tbaa !37
  %1673 = icmp eq i8 %1670, %1672
  br i1 %1673, label %1674, label %.loopexit553

1674:                                             ; preds = %.preheader564
  %1675 = add i64 %1667, 1
  %1676 = icmp ugt ptr %1669, %1067
  %1677 = icmp ugt ptr %1671, %37
  %1678 = and i1 %1676, %1677
  br i1 %1678, label %.preheader564, label %.loopexit553, !llvm.loop !110

.loopexit553:                                     ; preds = %1371, %.preheader576, %1535, %.preheader570, %1674, %.preheader564, %1589, %.preheader560, %1565, %.preheader556, %1401, %.preheader552, %1657, %1574, %1549, %1517, %1385, %1354
  %1679 = phi i32 [ %1391, %1385 ], [ %1555, %1549 ], [ %1577, %1574 ], [ %1662, %1657 ], [ %1523, %1517 ], [ %1359, %1354 ], [ %1391, %1401 ], [ %1662, %1674 ], [ %1523, %1535 ], [ %1555, %1565 ], [ %1577, %1589 ], [ %1391, %.preheader552 ], [ %1555, %.preheader556 ], [ %1577, %.preheader560 ], [ %1662, %.preheader564 ], [ %1523, %.preheader570 ], [ %1359, %.preheader576 ], [ %1359, %1371 ]
  %1680 = phi i64 [ %1389, %1385 ], [ %1553, %1549 ], [ %1576, %1574 ], [ %1659, %1657 ], [ %1519, %1517 ], [ %1356, %1354 ], [ %1402, %1401 ], [ %1675, %1674 ], [ %1536, %1535 ], [ %1566, %1565 ], [ %1590, %1589 ], [ %1394, %.preheader552 ], [ %1558, %.preheader556 ], [ %1582, %.preheader560 ], [ %1667, %.preheader564 ], [ %1528, %.preheader570 ], [ %1372, %1371 ], [ %1364, %.preheader576 ]
  %1681 = phi ptr [ %1066, %1385 ], [ %1432, %1549 ], [ %1066, %1574 ], [ %1066, %1657 ], [ %1432, %1517 ], [ %1066, %1354 ], [ %1396, %1401 ], [ %1669, %1674 ], [ %1530, %1535 ], [ %1560, %1565 ], [ %1584, %1589 ], [ %1393, %.preheader552 ], [ %1557, %.preheader556 ], [ %1581, %.preheader560 ], [ %1666, %.preheader564 ], [ %1527, %.preheader570 ], [ %1366, %1371 ], [ %1363, %.preheader576 ]
  %1682 = ptrtoint ptr %1681 to i64
  %1683 = ptrtoint ptr %1067 to i64
  %1684 = sub i64 %1682, %1683
  %1685 = add i32 %1679, 3
  %1686 = icmp ugt ptr %1681, %1053
  %1687 = load ptr, ptr %1054, align 8, !tbaa !38
  br i1 %1686, label %1710, label %1688

1688:                                             ; preds = %.loopexit553
  %1689 = load <2 x i64>, ptr %1067, align 1, !tbaa !37
  store <2 x i64> %1689, ptr %1687, align 1, !tbaa !37
  %1690 = icmp ugt i64 %1684, 16
  br i1 %1690, label %1691, label %1821

1691:                                             ; preds = %1688
  %1692 = load ptr, ptr %1054, align 8, !tbaa !38
  %1693 = getelementptr inbounds nuw i8, ptr %1692, i64 16
  %1694 = getelementptr inbounds nuw i8, ptr %1067, i64 16
  %1695 = getelementptr i8, ptr %1692, i64 %1684
  %1696 = load <2 x i64>, ptr %1694, align 1, !tbaa !37
  store <2 x i64> %1696, ptr %1693, align 1, !tbaa !37
  %1697 = icmp ult i64 %1684, 33
  br i1 %1697, label %1821, label %1698

1698:                                             ; preds = %1691
  %1699 = getelementptr inbounds nuw i8, ptr %1692, i64 32
  br label %1700

1700:                                             ; preds = %1700, %1698
  %1701 = phi ptr [ %1699, %1698 ], [ %1708, %1700 ]
  %1702 = phi ptr [ %1694, %1698 ], [ %1706, %1700 ]
  %1703 = getelementptr inbounds nuw i8, ptr %1702, i64 16
  %1704 = load <2 x i64>, ptr %1703, align 1, !tbaa !37
  store <2 x i64> %1704, ptr %1701, align 1, !tbaa !37
  %1705 = getelementptr inbounds nuw i8, ptr %1701, i64 16
  %1706 = getelementptr inbounds nuw i8, ptr %1702, i64 32
  %1707 = load <2 x i64>, ptr %1706, align 1, !tbaa !37
  store <2 x i64> %1707, ptr %1705, align 1, !tbaa !37
  %1708 = getelementptr inbounds nuw i8, ptr %1701, i64 32
  %1709 = icmp ult ptr %1708, %1695
  br i1 %1709, label %1700, label %.loopexit547, !llvm.loop !41

1710:                                             ; preds = %.loopexit553
  %1711 = icmp ugt ptr %1067, %1053
  br i1 %1711, label %.loopexit550, label %1712

1712:                                             ; preds = %1710
  %1713 = sub i64 %1055, %1683
  %1714 = getelementptr inbounds i8, ptr %1687, i64 %1713
  %1715 = load <2 x i64>, ptr %1067, align 1, !tbaa !37
  store <2 x i64> %1715, ptr %1687, align 1, !tbaa !37
  %1716 = icmp ult i64 %1713, 17
  br i1 %1716, label %.loopexit550, label %1717

1717:                                             ; preds = %1712
  %1718 = getelementptr inbounds nuw i8, ptr %1687, i64 16
  br label %1719

1719:                                             ; preds = %1719, %1717
  %1720 = phi ptr [ %1718, %1717 ], [ %1727, %1719 ]
  %1721 = phi ptr [ %1067, %1717 ], [ %1725, %1719 ]
  %1722 = getelementptr inbounds nuw i8, ptr %1721, i64 16
  %1723 = load <2 x i64>, ptr %1722, align 1, !tbaa !37
  store <2 x i64> %1723, ptr %1720, align 1, !tbaa !37
  %1724 = getelementptr inbounds nuw i8, ptr %1720, i64 16
  %1725 = getelementptr inbounds nuw i8, ptr %1721, i64 32
  %1726 = load <2 x i64>, ptr %1725, align 1, !tbaa !37
  store <2 x i64> %1726, ptr %1724, align 1, !tbaa !37
  %1727 = getelementptr inbounds nuw i8, ptr %1720, i64 32
  %1728 = icmp ult ptr %1727, %1714
  br i1 %1728, label %1719, label %.loopexit550, !llvm.loop !41

.loopexit550:                                     ; preds = %1719, %1712, %1710
  %1729 = phi ptr [ %1053, %1712 ], [ %1067, %1710 ], [ %1053, %1719 ]
  %1730 = phi ptr [ %1714, %1712 ], [ %1687, %1710 ], [ %1714, %1719 ]
  %1731 = icmp ult ptr %1729, %1681
  br i1 %1731, label %1732, label %.loopexit547

1732:                                             ; preds = %.loopexit550
  %1733 = ptrtoint ptr %1729 to i64
  %1734 = ptrtoint ptr %1730 to i64
  %1735 = sub i64 %1682, %1733
  %1736 = icmp ult i64 %1735, 4
  %1737 = sub i64 %1734, %1733
  %1738 = icmp ult i64 %1737, 32
  %1739 = select i1 %1736, i1 true, i1 %1738
  br i1 %1739, label %1775, label %1740

1740:                                             ; preds = %1732
  %1741 = icmp ult i64 %1735, 32
  br i1 %1741, label %1761, label %1742

1742:                                             ; preds = %1740
  %1743 = and i64 %1735, -32
  br label %1744

1744:                                             ; preds = %1744, %1742
  %1745 = phi i64 [ 0, %1742 ], [ %1752, %1744 ]
  %1746 = getelementptr i8, ptr %1730, i64 %1745
  %1747 = getelementptr i8, ptr %1729, i64 %1745
  %1748 = getelementptr i8, ptr %1747, i64 16
  %1749 = load <16 x i8>, ptr %1747, align 1, !tbaa !37
  %1750 = load <16 x i8>, ptr %1748, align 1, !tbaa !37
  %1751 = getelementptr i8, ptr %1746, i64 16
  store <16 x i8> %1749, ptr %1746, align 1, !tbaa !37
  store <16 x i8> %1750, ptr %1751, align 1, !tbaa !37
  %1752 = add nuw i64 %1745, 32
  %1753 = icmp eq i64 %1752, %1743
  br i1 %1753, label %1754, label %1744, !llvm.loop !120

1754:                                             ; preds = %1744
  %1755 = icmp eq i64 %1735, %1743
  br i1 %1755, label %.loopexit547, label %1756

1756:                                             ; preds = %1754
  %1757 = getelementptr i8, ptr %1730, i64 %1743
  %1758 = getelementptr i8, ptr %1729, i64 %1743
  %1759 = and i64 %1735, 28
  %1760 = icmp eq i64 %1759, 0
  br i1 %1760, label %1775, label %1761

1761:                                             ; preds = %1756, %1740
  %1762 = phi i64 [ %1743, %1756 ], [ 0, %1740 ]
  %1763 = and i64 %1735, -4
  br label %1764

1764:                                             ; preds = %1764, %1761
  %1765 = phi i64 [ %1762, %1761 ], [ %1769, %1764 ]
  %1766 = getelementptr i8, ptr %1730, i64 %1765
  %1767 = getelementptr i8, ptr %1729, i64 %1765
  %1768 = load <4 x i8>, ptr %1767, align 1, !tbaa !37
  store <4 x i8> %1768, ptr %1766, align 1, !tbaa !37
  %1769 = add nuw i64 %1765, 4
  %1770 = icmp eq i64 %1769, %1763
  br i1 %1770, label %1771, label %1764, !llvm.loop !121

1771:                                             ; preds = %1764
  %1772 = getelementptr i8, ptr %1730, i64 %1763
  %1773 = getelementptr i8, ptr %1729, i64 %1763
  %1774 = icmp eq i64 %1735, %1763
  br i1 %1774, label %.loopexit547, label %1775

1775:                                             ; preds = %1771, %1756, %1732
  %1776 = phi ptr [ %1730, %1732 ], [ %1757, %1756 ], [ %1772, %1771 ]
  %1777 = phi ptr [ %1729, %1732 ], [ %1758, %1756 ], [ %1773, %1771 ]
  %1778 = ptrtoint ptr %1777 to i64
  %1779 = sub i64 %1682, %1778
  %1780 = and i64 %1779, 7
  %1781 = icmp eq i64 %1780, 0
  br i1 %1781, label %.loopexit549, label %.preheader548

.preheader548:                                    ; preds = %1775, %.preheader548
  %1782 = phi ptr [ %1787, %.preheader548 ], [ %1776, %1775 ]
  %1783 = phi ptr [ %1785, %.preheader548 ], [ %1777, %1775 ]
  %1784 = phi i64 [ %1788, %.preheader548 ], [ 0, %1775 ]
  %1785 = getelementptr inbounds nuw i8, ptr %1783, i64 1
  %1786 = load i8, ptr %1783, align 1, !tbaa !37
  %1787 = getelementptr inbounds nuw i8, ptr %1782, i64 1
  store i8 %1786, ptr %1782, align 1, !tbaa !37
  %1788 = add nuw nsw i64 %1784, 1
  %1789 = icmp eq i64 %1788, %1780
  br i1 %1789, label %.loopexit549, label %.preheader548, !llvm.loop !122

.loopexit549:                                     ; preds = %.preheader548, %1775
  %1790 = phi ptr [ %1776, %1775 ], [ %1787, %.preheader548 ]
  %1791 = phi ptr [ %1777, %1775 ], [ %1785, %.preheader548 ]
  %1792 = sub i64 %1778, %1682
  %1793 = icmp ugt i64 %1792, -8
  br i1 %1793, label %.loopexit547, label %.preheader546

.preheader546:                                    ; preds = %.loopexit549, %.preheader546
  %1794 = phi ptr [ %1819, %.preheader546 ], [ %1790, %.loopexit549 ]
  %1795 = phi ptr [ %1817, %.preheader546 ], [ %1791, %.loopexit549 ]
  %1796 = getelementptr inbounds nuw i8, ptr %1795, i64 1
  %1797 = load i8, ptr %1795, align 1, !tbaa !37
  %1798 = getelementptr inbounds nuw i8, ptr %1794, i64 1
  store i8 %1797, ptr %1794, align 1, !tbaa !37
  %1799 = getelementptr inbounds nuw i8, ptr %1795, i64 2
  %1800 = load i8, ptr %1796, align 1, !tbaa !37
  %1801 = getelementptr inbounds nuw i8, ptr %1794, i64 2
  store i8 %1800, ptr %1798, align 1, !tbaa !37
  %1802 = getelementptr inbounds nuw i8, ptr %1795, i64 3
  %1803 = load i8, ptr %1799, align 1, !tbaa !37
  %1804 = getelementptr inbounds nuw i8, ptr %1794, i64 3
  store i8 %1803, ptr %1801, align 1, !tbaa !37
  %1805 = getelementptr inbounds nuw i8, ptr %1795, i64 4
  %1806 = load i8, ptr %1802, align 1, !tbaa !37
  %1807 = getelementptr inbounds nuw i8, ptr %1794, i64 4
  store i8 %1806, ptr %1804, align 1, !tbaa !37
  %1808 = getelementptr inbounds nuw i8, ptr %1795, i64 5
  %1809 = load i8, ptr %1805, align 1, !tbaa !37
  %1810 = getelementptr inbounds nuw i8, ptr %1794, i64 5
  store i8 %1809, ptr %1807, align 1, !tbaa !37
  %1811 = getelementptr inbounds nuw i8, ptr %1795, i64 6
  %1812 = load i8, ptr %1808, align 1, !tbaa !37
  %1813 = getelementptr inbounds nuw i8, ptr %1794, i64 6
  store i8 %1812, ptr %1810, align 1, !tbaa !37
  %1814 = getelementptr inbounds nuw i8, ptr %1795, i64 7
  %1815 = load i8, ptr %1811, align 1, !tbaa !37
  %1816 = getelementptr inbounds nuw i8, ptr %1794, i64 7
  store i8 %1815, ptr %1813, align 1, !tbaa !37
  %1817 = getelementptr inbounds nuw i8, ptr %1795, i64 8
  %1818 = load i8, ptr %1814, align 1, !tbaa !37
  %1819 = getelementptr inbounds nuw i8, ptr %1794, i64 8
  store i8 %1818, ptr %1816, align 1, !tbaa !37
  %1820 = icmp eq ptr %1817, %1681
  br i1 %1820, label %.loopexit547, label %.preheader546, !llvm.loop !123

1821:                                             ; preds = %1691, %1688
  %1822 = load ptr, ptr %1054, align 8, !tbaa !38
  %1823 = getelementptr inbounds nuw i8, ptr %1822, i64 %1684
  store ptr %1823, ptr %1054, align 8, !tbaa !38
  %1824 = load ptr, ptr %1057, align 8, !tbaa !50
  br label %1836

.loopexit547:                                     ; preds = %1700, %.preheader546, %.loopexit549, %1771, %1754, %.loopexit550
  %1825 = load ptr, ptr %1054, align 8, !tbaa !38
  %1826 = getelementptr inbounds nuw i8, ptr %1825, i64 %1684
  store ptr %1826, ptr %1054, align 8, !tbaa !38
  %1827 = icmp ugt i64 %1684, 65535
  %1828 = load ptr, ptr %1057, align 8, !tbaa !50
  br i1 %1827, label %1829, label %1836, !prof !115

1829:                                             ; preds = %.loopexit547
  store i32 1, ptr %1056, align 8, !tbaa !52
  %1830 = load ptr, ptr %1, align 8, !tbaa !53
  %1831 = ptrtoint ptr %1828 to i64
  %1832 = ptrtoint ptr %1830 to i64
  %1833 = sub i64 %1831, %1832
  %1834 = lshr exact i64 %1833, 3
  %1835 = trunc i64 %1834 to i32
  store i32 %1835, ptr %1058, align 4, !tbaa !54
  br label %1836

1836:                                             ; preds = %1829, %.loopexit547, %1821
  %1837 = phi ptr [ %1824, %1821 ], [ %1828, %1829 ], [ %1828, %.loopexit547 ]
  %1838 = trunc i64 %1684 to i16
  %1839 = getelementptr inbounds nuw i8, ptr %1837, i64 4
  store i16 %1838, ptr %1839, align 4, !tbaa !55
  store i32 %1685, ptr %1837, align 4, !tbaa !57
  %1840 = add i64 %1680, -3
  %1841 = icmp ugt i64 %1840, 65535
  br i1 %1841, label %1842, label %1855, !prof !58

1842:                                             ; preds = %1836, %1278
  %1843 = phi ptr [ %1279, %1278 ], [ %1837, %1836 ]
  %1844 = phi i64 [ %1282, %1278 ], [ %1840, %1836 ]
  %1845 = phi i64 [ %1123, %1278 ], [ %1680, %1836 ]
  %1846 = phi i32 [ %1069, %1278 ], [ %1068, %1836 ]
  %1847 = phi i32 [ %1068, %1278 ], [ %1679, %1836 ]
  %1848 = phi ptr [ %1115, %1278 ], [ %1681, %1836 ]
  store i32 2, ptr %1056, align 8, !tbaa !52
  %1849 = load ptr, ptr %1, align 8, !tbaa !53
  %1850 = ptrtoint ptr %1843 to i64
  %1851 = ptrtoint ptr %1849 to i64
  %1852 = sub i64 %1850, %1851
  %1853 = lshr exact i64 %1852, 3
  %1854 = trunc i64 %1853 to i32
  store i32 %1854, ptr %1058, align 4, !tbaa !54
  br label %1855

1855:                                             ; preds = %1842, %1836, %1278
  %1856 = phi i64 [ %1282, %1278 ], [ %1840, %1836 ], [ %1844, %1842 ]
  %1857 = phi ptr [ %1279, %1278 ], [ %1837, %1836 ], [ %1843, %1842 ]
  %1858 = phi i64 [ %1123, %1278 ], [ %1680, %1836 ], [ %1845, %1842 ]
  %1859 = phi i32 [ %1069, %1278 ], [ %1068, %1836 ], [ %1846, %1842 ]
  %1860 = phi i32 [ %1068, %1278 ], [ %1679, %1836 ], [ %1847, %1842 ]
  %1861 = phi ptr [ %1115, %1278 ], [ %1681, %1836 ], [ %1848, %1842 ]
  %1862 = trunc i64 %1856 to i16
  %1863 = getelementptr inbounds nuw i8, ptr %1857, i64 6
  store i16 %1862, ptr %1863, align 2, !tbaa !65
  %1864 = getelementptr inbounds nuw i8, ptr %1857, i64 8
  store ptr %1864, ptr %1057, align 8, !tbaa !50
  %1865 = getelementptr inbounds nuw i8, ptr %1861, i64 %1858
  %1866 = icmp ugt ptr %1865, %39
  br i1 %1866, label %.loopexit541, label %1867

1867:                                             ; preds = %1855
  %1868 = add i32 %1093, 2
  %1869 = zext i32 %1868 to i64
  %1870 = getelementptr inbounds nuw i8, ptr %18, i64 %1869
  %1871 = load i64, ptr %1870, align 1, !tbaa !24
  %1872 = mul i64 %1871, -3523014627327384477
  %1873 = lshr i64 %1872, %1046
  %1874 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %1873
  store i32 %1868, ptr %1874, align 4, !tbaa !25
  %1875 = getelementptr inbounds i8, ptr %1865, i64 -2
  %1876 = ptrtoint ptr %1875 to i64
  %1877 = sub i64 %1876, %20
  %1878 = trunc i64 %1877 to i32
  %1879 = load i64, ptr %1875, align 1, !tbaa !24
  %1880 = mul i64 %1879, -3523014627327384477
  %1881 = lshr i64 %1880, %1046
  %1882 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %1881
  store i32 %1878, ptr %1882, align 4, !tbaa !25
  %1883 = mul i64 %1871, -3523014627271114752
  %1884 = lshr i64 %1883, %1048
  %1885 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %1884
  store i32 %1868, ptr %1885, align 4, !tbaa !25
  %1886 = getelementptr inbounds i8, ptr %1865, i64 -1
  %1887 = ptrtoint ptr %1886 to i64
  %1888 = sub i64 %1887, %20
  %1889 = trunc i64 %1888 to i32
  %1890 = load i64, ptr %1886, align 1, !tbaa !24
  %1891 = mul i64 %1890, -3523014627271114752
  %1892 = lshr i64 %1891, %1048
  %1893 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %1892
  store i32 %1889, ptr %1893, align 4, !tbaa !25
  br label %1894

1894:                                             ; preds = %1935, %1867
  %1895 = phi ptr [ %1864, %1867 ], [ %1938, %1935 ]
  %1896 = phi ptr [ %1865, %1867 ], [ %1947, %1935 ]
  %1897 = phi i32 [ %1860, %1867 ], [ %1898, %1935 ]
  %1898 = phi i32 [ %1859, %1867 ], [ %1897, %1935 ]
  %1899 = ptrtoint ptr %1896 to i64
  %1900 = sub i64 %1899, %20
  %1901 = trunc i64 %1900 to i32
  %1902 = sub i32 %1901, %1898
  %1903 = icmp ult i32 %1902, %35
  %1904 = zext i32 %1902 to i64
  %1905 = select i1 %1903, ptr %1064, ptr %18
  %1906 = getelementptr i8, ptr %1905, i64 %1904
  %1907 = sub i32 %1902, %35
  %1908 = icmp ugt i32 %1907, -4
  br i1 %1908, label %.loopexit541, label %1909

1909:                                             ; preds = %1894
  %1910 = load i32, ptr %1906, align 1, !tbaa !25
  %1911 = load i32, ptr %1896, align 1, !tbaa !25
  %1912 = icmp eq i32 %1910, %1911
  br i1 %1912, label %1913, label %.loopexit541

1913:                                             ; preds = %1909
  %1914 = select i1 %1903, ptr %55, ptr %38
  %1915 = getelementptr inbounds nuw i8, ptr %1896, i64 4
  %1916 = getelementptr inbounds nuw i8, ptr %1906, i64 4
  %1917 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %1915, ptr noundef nonnull %1916, ptr noundef %38, ptr noundef %1914, ptr noundef %37)
  %1918 = icmp ugt ptr %1896, %1053
  br i1 %1918, label %1923, label %1919

1919:                                             ; preds = %1913
  %1920 = load ptr, ptr %1054, align 8, !tbaa !38
  %1921 = load <2 x i64>, ptr %1896, align 1, !tbaa !37
  store <2 x i64> %1921, ptr %1920, align 1, !tbaa !37
  %1922 = load ptr, ptr %1057, align 8, !tbaa !50
  br label %1923

1923:                                             ; preds = %1919, %1913
  %1924 = phi ptr [ %1895, %1913 ], [ %1922, %1919 ]
  %1925 = getelementptr inbounds nuw i8, ptr %1924, i64 4
  store i16 0, ptr %1925, align 4, !tbaa !55
  store i32 1, ptr %1924, align 4, !tbaa !57
  %1926 = add i64 %1917, 1
  %1927 = icmp ugt i64 %1926, 65535
  br i1 %1927, label %1928, label %1935, !prof !58

1928:                                             ; preds = %1923
  store i32 2, ptr %1056, align 8, !tbaa !52
  %1929 = load ptr, ptr %1, align 8, !tbaa !53
  %1930 = ptrtoint ptr %1924 to i64
  %1931 = ptrtoint ptr %1929 to i64
  %1932 = sub i64 %1930, %1931
  %1933 = lshr exact i64 %1932, 3
  %1934 = trunc i64 %1933 to i32
  store i32 %1934, ptr %1058, align 4, !tbaa !54
  br label %1935

1935:                                             ; preds = %1928, %1923
  %1936 = trunc i64 %1926 to i16
  %1937 = getelementptr inbounds nuw i8, ptr %1924, i64 6
  store i16 %1936, ptr %1937, align 2, !tbaa !65
  %1938 = getelementptr inbounds nuw i8, ptr %1924, i64 8
  store ptr %1938, ptr %1057, align 8, !tbaa !50
  %1939 = load i64, ptr %1896, align 1, !tbaa !24
  %1940 = mul i64 %1939, -3523014627271114752
  %1941 = lshr i64 %1940, %1048
  %1942 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %1941
  store i32 %1901, ptr %1942, align 4, !tbaa !25
  %1943 = mul i64 %1939, -3523014627327384477
  %1944 = lshr i64 %1943, %1046
  %1945 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %1944
  store i32 %1901, ptr %1945, align 4, !tbaa !25
  %1946 = getelementptr i8, ptr %1896, i64 %1917
  %1947 = getelementptr i8, ptr %1946, i64 4
  %1948 = icmp ugt ptr %1947, %39
  br i1 %1948, label %.loopexit541, label %1894

.loopexit541:                                     ; preds = %1935, %1909, %1894, %1855, %1423
  %1949 = phi i32 [ %1069, %1423 ], [ %1859, %1855 ], [ %1897, %1935 ], [ %1898, %1909 ], [ %1898, %1894 ]
  %1950 = phi i32 [ %1068, %1423 ], [ %1860, %1855 ], [ %1898, %1935 ], [ %1897, %1909 ], [ %1897, %1894 ]
  %1951 = phi ptr [ %1067, %1423 ], [ %1865, %1855 ], [ %1947, %1935 ], [ %1896, %1909 ], [ %1896, %1894 ]
  %1952 = phi ptr [ %1428, %1423 ], [ %1865, %1855 ], [ %1947, %1935 ], [ %1896, %1909 ], [ %1896, %1894 ]
  %1953 = icmp ult ptr %1952, %39
  br i1 %1953, label %1065, label %1954

1954:                                             ; preds = %.loopexit541
  %1955 = ptrtoint ptr %1951 to i64
  br label %3836

1956:                                             ; preds = %5
  br i1 %70, label %1957, label %1958, !prof !96, !nosanitize !95

1957:                                             ; preds = %1956
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !95
  unreachable, !nosanitize !95

1958:                                             ; preds = %1956
  %1959 = extractvalue { i64, i1 } %69, 0, !nosanitize !95
  %1960 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %1961 = load i32, ptr %1960, align 8, !tbaa !97
  %1962 = icmp eq i32 %1961, 0
  br i1 %1962, label %.loopexit640, label %1963

1963:                                             ; preds = %1958
  %1964 = zext nneg i32 %62 to i64
  %1965 = shl i64 4, %1964
  %1966 = zext nneg i32 %64 to i64
  %1967 = shl i64 4, %1966
  %1968 = icmp ugt i32 %62, 61
  br i1 %1968, label %.loopexit642, label %.preheader641

.loopexit642:                                     ; preds = %.preheader641, %1963
  %1969 = icmp ugt i32 %64, 61
  br i1 %1969, label %.loopexit640, label %.preheader639

.preheader641:                                    ; preds = %1963, %.preheader641
  %1970 = phi i64 [ %1972, %.preheader641 ], [ 0, %1963 ]
  %1971 = getelementptr inbounds nuw i8, ptr %46, i64 %1970
  tail call void @llvm.prefetch.p0(ptr %1971, i32 0, i32 2, i32 1)
  %1972 = add i64 %1970, 64
  %1973 = icmp ult i64 %1972, %1965
  br i1 %1973, label %.preheader641, label %.loopexit642, !llvm.loop !98

.preheader639:                                    ; preds = %.loopexit642, %.preheader639
  %1974 = phi i64 [ %1976, %.preheader639 ], [ 0, %.loopexit642 ]
  %1975 = getelementptr inbounds nuw i8, ptr %48, i64 %1974
  tail call void @llvm.prefetch.p0(ptr %1975, i32 0, i32 2, i32 1)
  %1976 = add i64 %1974, 64
  %1977 = icmp ult i64 %1976, %1967
  br i1 %1977, label %.preheader639, label %.loopexit640, !llvm.loop !99

.loopexit640:                                     ; preds = %.preheader639, %.loopexit642, %1958
  %1978 = and i64 %1959, 4294967295
  %1979 = icmp eq i64 %1978, 0
  %1980 = zext i1 %1979 to i64
  %1981 = add nsw i64 %4, -8
  %1982 = icmp sgt i64 %1981, %1980
  br i1 %1982, label %1983, label %3836

1983:                                             ; preds = %.loopexit640
  %1984 = getelementptr inbounds nuw i8, ptr %3, i64 %1980
  %1985 = sub i32 64, %12
  %1986 = zext nneg i32 %1985 to i64
  %1987 = sub i32 64, %16
  %1988 = zext nneg i32 %1987 to i64
  %1989 = sub i32 56, %62
  %1990 = zext nneg i32 %1989 to i64
  %1991 = sub i32 56, %64
  %1992 = zext nneg i32 %1991 to i64
  %1993 = getelementptr inbounds i8, ptr %38, i64 -32
  %1994 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %1995 = ptrtoint ptr %1993 to i64
  %1996 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %1997 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %1998 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %1999 = getelementptr inbounds i8, ptr %38, i64 -7
  %2000 = getelementptr inbounds i8, ptr %38, i64 -3
  %2001 = getelementptr inbounds i8, ptr %38, i64 -1
  %2002 = zext i32 %60 to i64
  %2003 = sub nsw i64 0, %2002
  %2004 = getelementptr i8, ptr %52, i64 %2003
  br label %2005

2005:                                             ; preds = %.loopexit592, %1983
  %2006 = phi ptr [ %1984, %1983 ], [ %2892, %.loopexit592 ]
  %2007 = phi ptr [ %3, %1983 ], [ %2891, %.loopexit592 ]
  %2008 = phi i32 [ %40, %1983 ], [ %2890, %.loopexit592 ]
  %2009 = phi i32 [ %42, %1983 ], [ %2889, %.loopexit592 ]
  %2010 = load i64, ptr %2006, align 1, !tbaa !24
  %2011 = mul i64 %2010, -3523014627327384477
  %2012 = lshr i64 %2011, %1986
  %2013 = mul i64 %2010, -3523014627193847808
  %2014 = lshr i64 %2013, %1988
  %2015 = lshr i64 %2011, %1990
  %2016 = lshr i64 %2013, %1992
  %2017 = lshr i64 %2015, 8
  %2018 = getelementptr inbounds nuw [4 x i8], ptr %46, i64 %2017
  %2019 = load i32, ptr %2018, align 4, !tbaa !25
  %2020 = lshr i64 %2016, 8
  %2021 = getelementptr inbounds nuw [4 x i8], ptr %48, i64 %2020
  %2022 = load i32, ptr %2021, align 4, !tbaa !25
  %2023 = zext i32 %2019 to i64
  %2024 = xor i64 %2015, %2023
  %2025 = and i64 %2024, 255
  %2026 = icmp eq i64 %2025, 0
  %2027 = zext i32 %2022 to i64
  %2028 = xor i64 %2016, %2027
  %2029 = and i64 %2028, 255
  %2030 = icmp eq i64 %2029, 0
  %2031 = ptrtoint ptr %2006 to i64
  %2032 = sub i64 %2031, %20
  %2033 = trunc i64 %2032 to i32
  %2034 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2012
  %2035 = load i32, ptr %2034, align 4, !tbaa !25
  %2036 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %2014
  %2037 = load i32, ptr %2036, align 4, !tbaa !25
  %2038 = zext i32 %2035 to i64
  %2039 = getelementptr inbounds nuw i8, ptr %18, i64 %2038
  %2040 = zext i32 %2037 to i64
  %2041 = getelementptr inbounds nuw i8, ptr %18, i64 %2040
  %2042 = add i32 %2033, 1
  %2043 = sub i32 %2042, %2008
  %2044 = icmp ult i32 %2043, %35
  %2045 = sub i32 %2043, %60
  %2046 = zext i32 %2045 to i64
  %2047 = getelementptr inbounds nuw i8, ptr %52, i64 %2046
  %2048 = zext i32 %2043 to i64
  %2049 = getelementptr inbounds nuw i8, ptr %18, i64 %2048
  %2050 = select i1 %2044, ptr %2047, ptr %2049
  store i32 %2033, ptr %2036, align 4, !tbaa !25
  store i32 %2033, ptr %2034, align 4, !tbaa !25
  %2051 = sub i32 %2043, %35
  %2052 = icmp ugt i32 %2051, -4
  br i1 %2052, label %2224, label %2053

2053:                                             ; preds = %2005
  %2054 = load i32, ptr %2050, align 1, !tbaa !25
  %2055 = getelementptr inbounds nuw i8, ptr %2006, i64 1
  %2056 = load i32, ptr %2055, align 1, !tbaa !25
  %2057 = icmp eq i32 %2054, %2056
  br i1 %2057, label %2058, label %2224

2058:                                             ; preds = %2053
  %2059 = select i1 %2044, ptr %55, ptr %38
  %2060 = getelementptr inbounds nuw i8, ptr %2006, i64 5
  %2061 = getelementptr inbounds nuw i8, ptr %2050, i64 4
  %2062 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %2060, ptr noundef nonnull %2061, ptr noundef %38, ptr noundef %2059, ptr noundef %37)
  %2063 = add i64 %2062, 4
  %2064 = ptrtoint ptr %2055 to i64
  %2065 = ptrtoint ptr %2007 to i64
  %2066 = sub i64 %2064, %2065
  %2067 = icmp ugt ptr %2055, %1993
  %2068 = load ptr, ptr %1994, align 8, !tbaa !38
  br i1 %2067, label %2091, label %2069

2069:                                             ; preds = %2058
  %2070 = load <2 x i64>, ptr %2007, align 1, !tbaa !37
  store <2 x i64> %2070, ptr %2068, align 1, !tbaa !37
  %2071 = icmp ugt i64 %2066, 16
  br i1 %2071, label %2072, label %2203

2072:                                             ; preds = %2069
  %2073 = load ptr, ptr %1994, align 8, !tbaa !38
  %2074 = getelementptr inbounds nuw i8, ptr %2073, i64 16
  %2075 = getelementptr inbounds nuw i8, ptr %2007, i64 16
  %2076 = getelementptr i8, ptr %2073, i64 %2066
  %2077 = load <2 x i64>, ptr %2075, align 1, !tbaa !37
  store <2 x i64> %2077, ptr %2074, align 1, !tbaa !37
  %2078 = icmp ult i64 %2066, 33
  br i1 %2078, label %2203, label %2079

2079:                                             ; preds = %2072
  %2080 = getelementptr inbounds nuw i8, ptr %2073, i64 32
  br label %2081

2081:                                             ; preds = %2081, %2079
  %2082 = phi ptr [ %2080, %2079 ], [ %2089, %2081 ]
  %2083 = phi ptr [ %2075, %2079 ], [ %2087, %2081 ]
  %2084 = getelementptr inbounds nuw i8, ptr %2083, i64 16
  %2085 = load <2 x i64>, ptr %2084, align 1, !tbaa !37
  store <2 x i64> %2085, ptr %2082, align 1, !tbaa !37
  %2086 = getelementptr inbounds nuw i8, ptr %2082, i64 16
  %2087 = getelementptr inbounds nuw i8, ptr %2083, i64 32
  %2088 = load <2 x i64>, ptr %2087, align 1, !tbaa !37
  store <2 x i64> %2088, ptr %2086, align 1, !tbaa !37
  %2089 = getelementptr inbounds nuw i8, ptr %2082, i64 32
  %2090 = icmp ult ptr %2089, %2076
  br i1 %2090, label %2081, label %.loopexit634, !llvm.loop !41

2091:                                             ; preds = %2058
  %2092 = icmp ugt ptr %2007, %1993
  br i1 %2092, label %.loopexit637, label %2093

2093:                                             ; preds = %2091
  %2094 = sub i64 %1995, %2065
  %2095 = getelementptr inbounds i8, ptr %2068, i64 %2094
  %2096 = load <2 x i64>, ptr %2007, align 1, !tbaa !37
  store <2 x i64> %2096, ptr %2068, align 1, !tbaa !37
  %2097 = icmp ult i64 %2094, 17
  br i1 %2097, label %.loopexit637, label %2098

2098:                                             ; preds = %2093
  %2099 = getelementptr inbounds nuw i8, ptr %2068, i64 16
  br label %2100

2100:                                             ; preds = %2100, %2098
  %2101 = phi ptr [ %2099, %2098 ], [ %2108, %2100 ]
  %2102 = phi ptr [ %2007, %2098 ], [ %2106, %2100 ]
  %2103 = getelementptr inbounds nuw i8, ptr %2102, i64 16
  %2104 = load <2 x i64>, ptr %2103, align 1, !tbaa !37
  store <2 x i64> %2104, ptr %2101, align 1, !tbaa !37
  %2105 = getelementptr inbounds nuw i8, ptr %2101, i64 16
  %2106 = getelementptr inbounds nuw i8, ptr %2102, i64 32
  %2107 = load <2 x i64>, ptr %2106, align 1, !tbaa !37
  store <2 x i64> %2107, ptr %2105, align 1, !tbaa !37
  %2108 = getelementptr inbounds nuw i8, ptr %2101, i64 32
  %2109 = icmp ult ptr %2108, %2095
  br i1 %2109, label %2100, label %.loopexit637, !llvm.loop !41

.loopexit637:                                     ; preds = %2100, %2093, %2091
  %2110 = phi ptr [ %1993, %2093 ], [ %2007, %2091 ], [ %1993, %2100 ]
  %2111 = phi ptr [ %2095, %2093 ], [ %2068, %2091 ], [ %2095, %2100 ]
  %2112 = icmp ult ptr %2110, %2055
  br i1 %2112, label %2113, label %.loopexit634

2113:                                             ; preds = %.loopexit637
  %2114 = ptrtoint ptr %2110 to i64
  %2115 = ptrtoint ptr %2111 to i64
  %2116 = add i64 %2031, 1
  %2117 = sub i64 %2116, %2114
  %2118 = icmp ult i64 %2117, 4
  %2119 = sub i64 %2115, %2114
  %2120 = icmp ult i64 %2119, 32
  %2121 = select i1 %2118, i1 true, i1 %2120
  br i1 %2121, label %2157, label %2122

2122:                                             ; preds = %2113
  %2123 = icmp ult i64 %2117, 32
  br i1 %2123, label %2143, label %2124

2124:                                             ; preds = %2122
  %2125 = and i64 %2117, -32
  br label %2126

2126:                                             ; preds = %2126, %2124
  %2127 = phi i64 [ 0, %2124 ], [ %2134, %2126 ]
  %2128 = getelementptr i8, ptr %2111, i64 %2127
  %2129 = getelementptr i8, ptr %2110, i64 %2127
  %2130 = getelementptr i8, ptr %2129, i64 16
  %2131 = load <16 x i8>, ptr %2129, align 1, !tbaa !37
  %2132 = load <16 x i8>, ptr %2130, align 1, !tbaa !37
  %2133 = getelementptr i8, ptr %2128, i64 16
  store <16 x i8> %2131, ptr %2128, align 1, !tbaa !37
  store <16 x i8> %2132, ptr %2133, align 1, !tbaa !37
  %2134 = add nuw i64 %2127, 32
  %2135 = icmp eq i64 %2134, %2125
  br i1 %2135, label %2136, label %2126, !llvm.loop !124

2136:                                             ; preds = %2126
  %2137 = icmp eq i64 %2117, %2125
  br i1 %2137, label %.loopexit634, label %2138

2138:                                             ; preds = %2136
  %2139 = getelementptr i8, ptr %2111, i64 %2125
  %2140 = getelementptr i8, ptr %2110, i64 %2125
  %2141 = and i64 %2117, 28
  %2142 = icmp eq i64 %2141, 0
  br i1 %2142, label %2157, label %2143

2143:                                             ; preds = %2138, %2122
  %2144 = phi i64 [ %2125, %2138 ], [ 0, %2122 ]
  %2145 = and i64 %2117, -4
  br label %2146

2146:                                             ; preds = %2146, %2143
  %2147 = phi i64 [ %2144, %2143 ], [ %2151, %2146 ]
  %2148 = getelementptr i8, ptr %2111, i64 %2147
  %2149 = getelementptr i8, ptr %2110, i64 %2147
  %2150 = load <4 x i8>, ptr %2149, align 1, !tbaa !37
  store <4 x i8> %2150, ptr %2148, align 1, !tbaa !37
  %2151 = add nuw i64 %2147, 4
  %2152 = icmp eq i64 %2151, %2145
  br i1 %2152, label %2153, label %2146, !llvm.loop !125

2153:                                             ; preds = %2146
  %2154 = getelementptr i8, ptr %2111, i64 %2145
  %2155 = getelementptr i8, ptr %2110, i64 %2145
  %2156 = icmp eq i64 %2117, %2145
  br i1 %2156, label %.loopexit634, label %2157

2157:                                             ; preds = %2153, %2138, %2113
  %2158 = phi ptr [ %2111, %2113 ], [ %2139, %2138 ], [ %2154, %2153 ]
  %2159 = phi ptr [ %2110, %2113 ], [ %2140, %2138 ], [ %2155, %2153 ]
  %2160 = ptrtoint ptr %2159 to i64
  %2161 = sub i64 %2116, %2160
  %2162 = sub i64 %2031, %2160
  %2163 = and i64 %2161, 7
  %2164 = icmp eq i64 %2163, 0
  br i1 %2164, label %.loopexit636, label %.preheader635

.preheader635:                                    ; preds = %2157, %.preheader635
  %2165 = phi ptr [ %2170, %.preheader635 ], [ %2158, %2157 ]
  %2166 = phi ptr [ %2168, %.preheader635 ], [ %2159, %2157 ]
  %2167 = phi i64 [ %2171, %.preheader635 ], [ 0, %2157 ]
  %2168 = getelementptr inbounds nuw i8, ptr %2166, i64 1
  %2169 = load i8, ptr %2166, align 1, !tbaa !37
  %2170 = getelementptr inbounds nuw i8, ptr %2165, i64 1
  store i8 %2169, ptr %2165, align 1, !tbaa !37
  %2171 = add nuw nsw i64 %2167, 1
  %2172 = icmp eq i64 %2171, %2163
  br i1 %2172, label %.loopexit636, label %.preheader635, !llvm.loop !126

.loopexit636:                                     ; preds = %.preheader635, %2157
  %2173 = phi ptr [ %2158, %2157 ], [ %2170, %.preheader635 ]
  %2174 = phi ptr [ %2159, %2157 ], [ %2168, %.preheader635 ]
  %2175 = icmp ult i64 %2162, 7
  br i1 %2175, label %.loopexit634, label %.preheader633

.preheader633:                                    ; preds = %.loopexit636, %.preheader633
  %2176 = phi ptr [ %2201, %.preheader633 ], [ %2173, %.loopexit636 ]
  %2177 = phi ptr [ %2199, %.preheader633 ], [ %2174, %.loopexit636 ]
  %2178 = getelementptr inbounds nuw i8, ptr %2177, i64 1
  %2179 = load i8, ptr %2177, align 1, !tbaa !37
  %2180 = getelementptr inbounds nuw i8, ptr %2176, i64 1
  store i8 %2179, ptr %2176, align 1, !tbaa !37
  %2181 = getelementptr inbounds nuw i8, ptr %2177, i64 2
  %2182 = load i8, ptr %2178, align 1, !tbaa !37
  %2183 = getelementptr inbounds nuw i8, ptr %2176, i64 2
  store i8 %2182, ptr %2180, align 1, !tbaa !37
  %2184 = getelementptr inbounds nuw i8, ptr %2177, i64 3
  %2185 = load i8, ptr %2181, align 1, !tbaa !37
  %2186 = getelementptr inbounds nuw i8, ptr %2176, i64 3
  store i8 %2185, ptr %2183, align 1, !tbaa !37
  %2187 = getelementptr inbounds nuw i8, ptr %2177, i64 4
  %2188 = load i8, ptr %2184, align 1, !tbaa !37
  %2189 = getelementptr inbounds nuw i8, ptr %2176, i64 4
  store i8 %2188, ptr %2186, align 1, !tbaa !37
  %2190 = getelementptr inbounds nuw i8, ptr %2177, i64 5
  %2191 = load i8, ptr %2187, align 1, !tbaa !37
  %2192 = getelementptr inbounds nuw i8, ptr %2176, i64 5
  store i8 %2191, ptr %2189, align 1, !tbaa !37
  %2193 = getelementptr inbounds nuw i8, ptr %2177, i64 6
  %2194 = load i8, ptr %2190, align 1, !tbaa !37
  %2195 = getelementptr inbounds nuw i8, ptr %2176, i64 6
  store i8 %2194, ptr %2192, align 1, !tbaa !37
  %2196 = getelementptr inbounds nuw i8, ptr %2177, i64 7
  %2197 = load i8, ptr %2193, align 1, !tbaa !37
  %2198 = getelementptr inbounds nuw i8, ptr %2176, i64 7
  store i8 %2197, ptr %2195, align 1, !tbaa !37
  %2199 = getelementptr inbounds nuw i8, ptr %2177, i64 8
  %2200 = load i8, ptr %2196, align 1, !tbaa !37
  %2201 = getelementptr inbounds nuw i8, ptr %2176, i64 8
  store i8 %2200, ptr %2198, align 1, !tbaa !37
  %2202 = icmp eq ptr %2196, %2006
  br i1 %2202, label %.loopexit634, label %.preheader633, !llvm.loop !127

2203:                                             ; preds = %2072, %2069
  %2204 = load ptr, ptr %1994, align 8, !tbaa !38
  %2205 = getelementptr inbounds nuw i8, ptr %2204, i64 %2066
  store ptr %2205, ptr %1994, align 8, !tbaa !38
  %2206 = load ptr, ptr %1997, align 8, !tbaa !50
  br label %2218

.loopexit634:                                     ; preds = %2081, %.preheader633, %.loopexit636, %2153, %2136, %.loopexit637
  %2207 = load ptr, ptr %1994, align 8, !tbaa !38
  %2208 = getelementptr inbounds nuw i8, ptr %2207, i64 %2066
  store ptr %2208, ptr %1994, align 8, !tbaa !38
  %2209 = icmp ugt i64 %2066, 65535
  %2210 = load ptr, ptr %1997, align 8, !tbaa !50
  br i1 %2209, label %2211, label %2218, !prof !51

2211:                                             ; preds = %.loopexit634
  store i32 1, ptr %1996, align 8, !tbaa !52
  %2212 = load ptr, ptr %1, align 8, !tbaa !53
  %2213 = ptrtoint ptr %2210 to i64
  %2214 = ptrtoint ptr %2212 to i64
  %2215 = sub i64 %2213, %2214
  %2216 = lshr exact i64 %2215, 3
  %2217 = trunc i64 %2216 to i32
  store i32 %2217, ptr %1998, align 4, !tbaa !54
  br label %2218

2218:                                             ; preds = %2211, %.loopexit634, %2203
  %2219 = phi ptr [ %2206, %2203 ], [ %2210, %2211 ], [ %2210, %.loopexit634 ]
  %2220 = trunc i64 %2066 to i16
  %2221 = getelementptr inbounds nuw i8, ptr %2219, i64 4
  store i16 %2220, ptr %2221, align 4, !tbaa !55
  store i32 1, ptr %2219, align 4, !tbaa !57
  %2222 = add i64 %2062, 1
  %2223 = icmp ugt i64 %2222, 65535
  br i1 %2223, label %2782, label %2795, !prof !58

2224:                                             ; preds = %2053, %2005
  %2225 = icmp ult i32 %2035, %35
  br i1 %2225, label %2316, label %2226

2226:                                             ; preds = %2224
  %2227 = load i64, ptr %2039, align 1, !tbaa !24
  %2228 = icmp eq i64 %2227, %2010
  br i1 %2228, label %2229, label %2316

2229:                                             ; preds = %2226
  %2230 = getelementptr inbounds nuw i8, ptr %2006, i64 8
  %2231 = getelementptr inbounds nuw i8, ptr %2039, i64 8
  %2232 = icmp ult ptr %2230, %1999
  br i1 %2232, label %2233, label %.loopexit632

2233:                                             ; preds = %2229
  %2234 = load i64, ptr %2231, align 1, !tbaa !24
  %2235 = load i64, ptr %2230, align 1, !tbaa !24
  %2236 = icmp eq i64 %2234, %2235
  br i1 %2236, label %.preheader631, label %2237

2237:                                             ; preds = %2233
  %2238 = xor i64 %2235, %2234
  %2239 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2238, i1 true)
  %2240 = lshr i64 %2239, 3
  br label %2294

.preheader631:                                    ; preds = %2233, %2246
  %2241 = phi ptr [ %2244, %2246 ], [ %2231, %2233 ]
  %2242 = phi ptr [ %2243, %2246 ], [ %2230, %2233 ]
  %2243 = getelementptr inbounds nuw i8, ptr %2242, i64 8
  %2244 = getelementptr inbounds nuw i8, ptr %2241, i64 8
  %2245 = icmp ult ptr %2243, %1999
  br i1 %2245, label %2246, label %.loopexit632

2246:                                             ; preds = %.preheader631
  %2247 = load i64, ptr %2244, align 1, !tbaa !24
  %2248 = load i64, ptr %2243, align 1, !tbaa !24
  %2249 = icmp eq i64 %2247, %2248
  br i1 %2249, label %.preheader631, label %2250

2250:                                             ; preds = %2246
  %2251 = xor i64 %2248, %2247
  %2252 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2251, i1 true)
  %2253 = lshr i64 %2252, 3
  %2254 = getelementptr inbounds nuw i8, ptr %2243, i64 %2253
  %2255 = ptrtoint ptr %2254 to i64
  %2256 = ptrtoint ptr %2230 to i64
  %2257 = sub i64 %2255, %2256
  br label %2294

.loopexit632:                                     ; preds = %.preheader631, %2229
  %2258 = phi ptr [ %2231, %2229 ], [ %2244, %.preheader631 ]
  %2259 = phi ptr [ %2230, %2229 ], [ %2243, %.preheader631 ]
  %2260 = icmp ult ptr %2259, %2000
  br i1 %2260, label %2261, label %2268

2261:                                             ; preds = %.loopexit632
  %2262 = load i32, ptr %2258, align 1, !tbaa !25
  %2263 = load i32, ptr %2259, align 1, !tbaa !25
  %2264 = icmp eq i32 %2262, %2263
  br i1 %2264, label %2265, label %2268

2265:                                             ; preds = %2261
  %2266 = getelementptr inbounds nuw i8, ptr %2259, i64 4
  %2267 = getelementptr inbounds nuw i8, ptr %2258, i64 4
  br label %2268

2268:                                             ; preds = %2265, %2261, %.loopexit632
  %2269 = phi ptr [ %2267, %2265 ], [ %2258, %2261 ], [ %2258, %.loopexit632 ]
  %2270 = phi ptr [ %2266, %2265 ], [ %2259, %2261 ], [ %2259, %.loopexit632 ]
  %2271 = icmp ult ptr %2270, %2001
  br i1 %2271, label %2272, label %2279

2272:                                             ; preds = %2268
  %2273 = load i16, ptr %2269, align 1, !tbaa !35
  %2274 = load i16, ptr %2270, align 1, !tbaa !35
  %2275 = icmp eq i16 %2273, %2274
  br i1 %2275, label %2276, label %2279

2276:                                             ; preds = %2272
  %2277 = getelementptr inbounds nuw i8, ptr %2270, i64 2
  %2278 = getelementptr inbounds nuw i8, ptr %2269, i64 2
  br label %2279

2279:                                             ; preds = %2276, %2272, %2268
  %2280 = phi ptr [ %2278, %2276 ], [ %2269, %2272 ], [ %2269, %2268 ]
  %2281 = phi ptr [ %2277, %2276 ], [ %2270, %2272 ], [ %2270, %2268 ]
  %2282 = icmp ult ptr %2281, %38
  br i1 %2282, label %2283, label %2289

2283:                                             ; preds = %2279
  %2284 = load i8, ptr %2280, align 1, !tbaa !37
  %2285 = load i8, ptr %2281, align 1, !tbaa !37
  %2286 = icmp eq i8 %2284, %2285
  %2287 = zext i1 %2286 to i64
  %2288 = getelementptr inbounds nuw i8, ptr %2281, i64 %2287
  br label %2289

2289:                                             ; preds = %2283, %2279
  %2290 = phi ptr [ %2281, %2279 ], [ %2288, %2283 ]
  %2291 = ptrtoint ptr %2290 to i64
  %2292 = ptrtoint ptr %2230 to i64
  %2293 = sub i64 %2291, %2292
  br label %2294

2294:                                             ; preds = %2289, %2250, %2237
  %2295 = phi i64 [ %2293, %2289 ], [ %2240, %2237 ], [ %2257, %2250 ]
  %2296 = add i64 %2295, 8
  %2297 = ptrtoint ptr %2039 to i64
  %2298 = sub i64 %2031, %2297
  %2299 = trunc i64 %2298 to i32
  %2300 = icmp ugt ptr %2006, %2007
  %2301 = icmp ugt i32 %2035, %35
  %2302 = and i1 %2300, %2301
  br i1 %2302, label %.preheader627, label %.loopexit604

.preheader627:                                    ; preds = %2294, %2311
  %2303 = phi ptr [ %2306, %2311 ], [ %2006, %2294 ]
  %2304 = phi i64 [ %2312, %2311 ], [ %2296, %2294 ]
  %2305 = phi ptr [ %2308, %2311 ], [ %2039, %2294 ]
  %2306 = getelementptr inbounds i8, ptr %2303, i64 -1
  %2307 = load i8, ptr %2306, align 1, !tbaa !37
  %2308 = getelementptr inbounds i8, ptr %2305, i64 -1
  %2309 = load i8, ptr %2308, align 1, !tbaa !37
  %2310 = icmp eq i8 %2307, %2309
  br i1 %2310, label %2311, label %.loopexit604

2311:                                             ; preds = %.preheader627
  %2312 = add i64 %2304, 1
  %2313 = icmp ugt ptr %2306, %2007
  %2314 = icmp ugt ptr %2308, %37
  %2315 = and i1 %2313, %2314
  br i1 %2315, label %.preheader627, label %.loopexit604, !llvm.loop !104

2316:                                             ; preds = %2226, %2224
  br i1 %2026, label %2317, label %2346

2317:                                             ; preds = %2316
  %2318 = lshr i32 %2019, 8
  %2319 = zext nneg i32 %2318 to i64
  %2320 = getelementptr inbounds nuw i8, ptr %52, i64 %2319
  %2321 = icmp ugt i32 %2318, %50
  br i1 %2321, label %2322, label %2346

2322:                                             ; preds = %2317
  %2323 = load i64, ptr %2320, align 1, !tbaa !24
  %2324 = icmp eq i64 %2323, %2010
  br i1 %2324, label %2325, label %2346

2325:                                             ; preds = %2322
  %2326 = getelementptr inbounds nuw i8, ptr %2006, i64 8
  %2327 = getelementptr inbounds nuw i8, ptr %2320, i64 8
  %2328 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %2326, ptr noundef nonnull %2327, ptr noundef %38, ptr noundef %55, ptr noundef %37)
  %2329 = add i64 %2328, 8
  %2330 = add i32 %60, %2318
  %2331 = sub i32 %2033, %2330
  %2332 = icmp ugt ptr %2006, %2007
  br i1 %2332, label %.preheader603, label %.loopexit604

.preheader603:                                    ; preds = %2325, %2341
  %2333 = phi ptr [ %2336, %2341 ], [ %2006, %2325 ]
  %2334 = phi i64 [ %2342, %2341 ], [ %2329, %2325 ]
  %2335 = phi ptr [ %2338, %2341 ], [ %2320, %2325 ]
  %2336 = getelementptr inbounds i8, ptr %2333, i64 -1
  %2337 = load i8, ptr %2336, align 1, !tbaa !37
  %2338 = getelementptr inbounds i8, ptr %2335, i64 -1
  %2339 = load i8, ptr %2338, align 1, !tbaa !37
  %2340 = icmp eq i8 %2337, %2339
  br i1 %2340, label %2341, label %.loopexit604

2341:                                             ; preds = %.preheader603
  %2342 = add i64 %2334, 1
  %2343 = icmp ugt ptr %2336, %2007
  %2344 = icmp ugt ptr %2338, %54
  %2345 = and i1 %2343, %2344
  br i1 %2345, label %.preheader603, label %.loopexit604, !llvm.loop !105

2346:                                             ; preds = %2322, %2317, %2316
  %2347 = icmp ugt i32 %2037, %35
  br i1 %2347, label %2348, label %2352

2348:                                             ; preds = %2346
  %2349 = load i32, ptr %2041, align 1, !tbaa !25
  %2350 = load i32, ptr %2006, align 1, !tbaa !25
  %2351 = icmp eq i32 %2349, %2350
  br i1 %2351, label %2369, label %2363

2352:                                             ; preds = %2346
  br i1 %2030, label %2353, label %2363

2353:                                             ; preds = %2352
  %2354 = lshr i32 %2022, 8
  %2355 = icmp ugt i32 %2354, %50
  br i1 %2355, label %2356, label %2363

2356:                                             ; preds = %2353
  %2357 = add i32 %2354, %60
  %2358 = zext nneg i32 %2354 to i64
  %2359 = getelementptr inbounds nuw i8, ptr %52, i64 %2358
  %2360 = load i32, ptr %2359, align 1, !tbaa !25
  %2361 = load i32, ptr %2006, align 1, !tbaa !25
  %2362 = icmp eq i32 %2360, %2361
  br i1 %2362, label %2369, label %2363

2363:                                             ; preds = %2356, %2353, %2352, %2348
  %2364 = ptrtoint ptr %2007 to i64
  %2365 = sub i64 %2031, %2364
  %2366 = ashr i64 %2365, 8
  %2367 = getelementptr i8, ptr %2006, i64 %2366
  %2368 = getelementptr i8, ptr %2367, i64 1
  br label %.loopexit592, !llvm.loop !106

2369:                                             ; preds = %2356, %2348
  %2370 = phi ptr [ %2041, %2348 ], [ %2359, %2356 ]
  %2371 = phi i32 [ %2037, %2348 ], [ %2357, %2356 ]
  %2372 = getelementptr inbounds nuw i8, ptr %2006, i64 1
  %2373 = load i64, ptr %2372, align 1, !tbaa !24
  %2374 = mul i64 %2373, -3523014627327384477
  %2375 = lshr i64 %2374, %1986
  %2376 = lshr i64 %2374, %1990
  %2377 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2375
  %2378 = load i32, ptr %2377, align 4, !tbaa !25
  %2379 = lshr i64 %2376, 8
  %2380 = getelementptr inbounds nuw [4 x i8], ptr %46, i64 %2379
  %2381 = load i32, ptr %2380, align 4, !tbaa !25
  %2382 = zext i32 %2381 to i64
  %2383 = xor i64 %2376, %2382
  %2384 = and i64 %2383, 255
  %2385 = icmp eq i64 %2384, 0
  %2386 = zext i32 %2378 to i64
  %2387 = getelementptr inbounds nuw i8, ptr %18, i64 %2386
  store i32 %2042, ptr %2377, align 4, !tbaa !25
  %2388 = icmp ult i32 %2378, %35
  br i1 %2388, label %2480, label %2389

2389:                                             ; preds = %2369
  %2390 = load i64, ptr %2387, align 1, !tbaa !24
  %2391 = icmp eq i64 %2390, %2373
  br i1 %2391, label %2392, label %2480

2392:                                             ; preds = %2389
  %2393 = getelementptr inbounds nuw i8, ptr %2006, i64 9
  %2394 = getelementptr inbounds nuw i8, ptr %2387, i64 8
  %2395 = icmp ult ptr %2393, %1999
  br i1 %2395, label %2396, label %.loopexit626

2396:                                             ; preds = %2392
  %2397 = load i64, ptr %2394, align 1, !tbaa !24
  %2398 = load i64, ptr %2393, align 1, !tbaa !24
  %2399 = icmp eq i64 %2397, %2398
  br i1 %2399, label %.preheader625, label %2400

2400:                                             ; preds = %2396
  %2401 = xor i64 %2398, %2397
  %2402 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2401, i1 true)
  %2403 = lshr i64 %2402, 3
  br label %2457

.preheader625:                                    ; preds = %2396, %2409
  %2404 = phi ptr [ %2407, %2409 ], [ %2394, %2396 ]
  %2405 = phi ptr [ %2406, %2409 ], [ %2393, %2396 ]
  %2406 = getelementptr inbounds nuw i8, ptr %2405, i64 8
  %2407 = getelementptr inbounds nuw i8, ptr %2404, i64 8
  %2408 = icmp ult ptr %2406, %1999
  br i1 %2408, label %2409, label %.loopexit626

2409:                                             ; preds = %.preheader625
  %2410 = load i64, ptr %2407, align 1, !tbaa !24
  %2411 = load i64, ptr %2406, align 1, !tbaa !24
  %2412 = icmp eq i64 %2410, %2411
  br i1 %2412, label %.preheader625, label %2413

2413:                                             ; preds = %2409
  %2414 = xor i64 %2411, %2410
  %2415 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2414, i1 true)
  %2416 = lshr i64 %2415, 3
  %2417 = getelementptr inbounds nuw i8, ptr %2406, i64 %2416
  %2418 = ptrtoint ptr %2417 to i64
  %2419 = ptrtoint ptr %2393 to i64
  %2420 = sub i64 %2418, %2419
  br label %2457

.loopexit626:                                     ; preds = %.preheader625, %2392
  %2421 = phi ptr [ %2394, %2392 ], [ %2407, %.preheader625 ]
  %2422 = phi ptr [ %2393, %2392 ], [ %2406, %.preheader625 ]
  %2423 = icmp ult ptr %2422, %2000
  br i1 %2423, label %2424, label %2431

2424:                                             ; preds = %.loopexit626
  %2425 = load i32, ptr %2421, align 1, !tbaa !25
  %2426 = load i32, ptr %2422, align 1, !tbaa !25
  %2427 = icmp eq i32 %2425, %2426
  br i1 %2427, label %2428, label %2431

2428:                                             ; preds = %2424
  %2429 = getelementptr inbounds nuw i8, ptr %2422, i64 4
  %2430 = getelementptr inbounds nuw i8, ptr %2421, i64 4
  br label %2431

2431:                                             ; preds = %2428, %2424, %.loopexit626
  %2432 = phi ptr [ %2430, %2428 ], [ %2421, %2424 ], [ %2421, %.loopexit626 ]
  %2433 = phi ptr [ %2429, %2428 ], [ %2422, %2424 ], [ %2422, %.loopexit626 ]
  %2434 = icmp ult ptr %2433, %2001
  br i1 %2434, label %2435, label %2442

2435:                                             ; preds = %2431
  %2436 = load i16, ptr %2432, align 1, !tbaa !35
  %2437 = load i16, ptr %2433, align 1, !tbaa !35
  %2438 = icmp eq i16 %2436, %2437
  br i1 %2438, label %2439, label %2442

2439:                                             ; preds = %2435
  %2440 = getelementptr inbounds nuw i8, ptr %2433, i64 2
  %2441 = getelementptr inbounds nuw i8, ptr %2432, i64 2
  br label %2442

2442:                                             ; preds = %2439, %2435, %2431
  %2443 = phi ptr [ %2441, %2439 ], [ %2432, %2435 ], [ %2432, %2431 ]
  %2444 = phi ptr [ %2440, %2439 ], [ %2433, %2435 ], [ %2433, %2431 ]
  %2445 = icmp ult ptr %2444, %38
  br i1 %2445, label %2446, label %2452

2446:                                             ; preds = %2442
  %2447 = load i8, ptr %2443, align 1, !tbaa !37
  %2448 = load i8, ptr %2444, align 1, !tbaa !37
  %2449 = icmp eq i8 %2447, %2448
  %2450 = zext i1 %2449 to i64
  %2451 = getelementptr inbounds nuw i8, ptr %2444, i64 %2450
  br label %2452

2452:                                             ; preds = %2446, %2442
  %2453 = phi ptr [ %2444, %2442 ], [ %2451, %2446 ]
  %2454 = ptrtoint ptr %2453 to i64
  %2455 = ptrtoint ptr %2393 to i64
  %2456 = sub i64 %2454, %2455
  br label %2457

2457:                                             ; preds = %2452, %2413, %2400
  %2458 = phi i64 [ %2456, %2452 ], [ %2403, %2400 ], [ %2420, %2413 ]
  %2459 = add i64 %2458, 8
  %2460 = ptrtoint ptr %2372 to i64
  %2461 = ptrtoint ptr %2387 to i64
  %2462 = sub i64 %2460, %2461
  %2463 = trunc i64 %2462 to i32
  %2464 = icmp ugt ptr %2372, %2007
  %2465 = icmp ugt i32 %2378, %35
  %2466 = and i1 %2464, %2465
  br i1 %2466, label %.preheader621, label %.loopexit604

.preheader621:                                    ; preds = %2457, %2475
  %2467 = phi ptr [ %2470, %2475 ], [ %2372, %2457 ]
  %2468 = phi i64 [ %2476, %2475 ], [ %2459, %2457 ]
  %2469 = phi ptr [ %2472, %2475 ], [ %2387, %2457 ]
  %2470 = getelementptr inbounds i8, ptr %2467, i64 -1
  %2471 = load i8, ptr %2470, align 1, !tbaa !37
  %2472 = getelementptr inbounds i8, ptr %2469, i64 -1
  %2473 = load i8, ptr %2472, align 1, !tbaa !37
  %2474 = icmp eq i8 %2471, %2473
  br i1 %2474, label %2475, label %.loopexit604

2475:                                             ; preds = %.preheader621
  %2476 = add i64 %2468, 1
  %2477 = icmp ugt ptr %2470, %2007
  %2478 = icmp ugt ptr %2472, %37
  %2479 = and i1 %2477, %2478
  br i1 %2479, label %.preheader621, label %.loopexit604, !llvm.loop !107

2480:                                             ; preds = %2389, %2369
  br i1 %2385, label %2481, label %2510

2481:                                             ; preds = %2480
  %2482 = lshr i32 %2381, 8
  %2483 = zext nneg i32 %2482 to i64
  %2484 = getelementptr inbounds nuw i8, ptr %52, i64 %2483
  %2485 = icmp ugt i32 %2482, %50
  br i1 %2485, label %2486, label %2510

2486:                                             ; preds = %2481
  %2487 = load i64, ptr %2484, align 1, !tbaa !24
  %2488 = icmp eq i64 %2487, %2373
  br i1 %2488, label %2489, label %2510

2489:                                             ; preds = %2486
  %2490 = getelementptr inbounds nuw i8, ptr %2006, i64 9
  %2491 = getelementptr inbounds nuw i8, ptr %2484, i64 8
  %2492 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %2490, ptr noundef nonnull %2491, ptr noundef %38, ptr noundef %55, ptr noundef %37)
  %2493 = add i64 %2492, 8
  %2494 = add i32 %60, %2482
  %2495 = sub i32 %2042, %2494
  %2496 = icmp ugt ptr %2372, %2007
  br i1 %2496, label %.preheader607, label %.loopexit604

.preheader607:                                    ; preds = %2489, %2505
  %2497 = phi ptr [ %2500, %2505 ], [ %2372, %2489 ]
  %2498 = phi i64 [ %2506, %2505 ], [ %2493, %2489 ]
  %2499 = phi ptr [ %2502, %2505 ], [ %2484, %2489 ]
  %2500 = getelementptr inbounds i8, ptr %2497, i64 -1
  %2501 = load i8, ptr %2500, align 1, !tbaa !37
  %2502 = getelementptr inbounds i8, ptr %2499, i64 -1
  %2503 = load i8, ptr %2502, align 1, !tbaa !37
  %2504 = icmp eq i8 %2501, %2503
  br i1 %2504, label %2505, label %.loopexit604

2505:                                             ; preds = %.preheader607
  %2506 = add i64 %2498, 1
  %2507 = icmp ugt ptr %2500, %2007
  %2508 = icmp ugt ptr %2502, %54
  %2509 = and i1 %2507, %2508
  br i1 %2509, label %.preheader607, label %.loopexit604, !llvm.loop !108

2510:                                             ; preds = %2486, %2481, %2480
  %2511 = icmp ult i32 %2371, %35
  %2512 = getelementptr inbounds nuw i8, ptr %2006, i64 4
  %2513 = getelementptr inbounds nuw i8, ptr %2370, i64 4
  br i1 %2511, label %2514, label %2534

2514:                                             ; preds = %2510
  %2515 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %2512, ptr noundef nonnull %2513, ptr noundef %38, ptr noundef %55, ptr noundef nonnull %37)
  %2516 = add i64 %2515, 4
  %2517 = sub i32 %2033, %2371
  %2518 = icmp ugt ptr %2006, %2007
  %2519 = icmp ugt ptr %2370, %54
  %2520 = and i1 %2518, %2519
  br i1 %2520, label %.preheader611, label %.loopexit604

.preheader611:                                    ; preds = %2514, %2529
  %2521 = phi ptr [ %2524, %2529 ], [ %2006, %2514 ]
  %2522 = phi i64 [ %2530, %2529 ], [ %2516, %2514 ]
  %2523 = phi ptr [ %2526, %2529 ], [ %2370, %2514 ]
  %2524 = getelementptr inbounds i8, ptr %2521, i64 -1
  %2525 = load i8, ptr %2524, align 1, !tbaa !37
  %2526 = getelementptr inbounds i8, ptr %2523, i64 -1
  %2527 = load i8, ptr %2526, align 1, !tbaa !37
  %2528 = icmp eq i8 %2525, %2527
  br i1 %2528, label %2529, label %.loopexit604

2529:                                             ; preds = %.preheader611
  %2530 = add i64 %2522, 1
  %2531 = icmp ugt ptr %2524, %2007
  %2532 = icmp ugt ptr %2526, %54
  %2533 = and i1 %2531, %2532
  br i1 %2533, label %.preheader611, label %.loopexit604, !llvm.loop !109

2534:                                             ; preds = %2510
  %2535 = icmp ult ptr %2512, %1999
  br i1 %2535, label %2536, label %.loopexit620

2536:                                             ; preds = %2534
  %2537 = load i64, ptr %2513, align 1, !tbaa !24
  %2538 = load i64, ptr %2512, align 1, !tbaa !24
  %2539 = icmp eq i64 %2537, %2538
  br i1 %2539, label %.preheader619, label %2540

2540:                                             ; preds = %2536
  %2541 = xor i64 %2538, %2537
  %2542 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2541, i1 true)
  %2543 = lshr i64 %2542, 3
  br label %2597

.preheader619:                                    ; preds = %2536, %2549
  %2544 = phi ptr [ %2547, %2549 ], [ %2513, %2536 ]
  %2545 = phi ptr [ %2546, %2549 ], [ %2512, %2536 ]
  %2546 = getelementptr inbounds nuw i8, ptr %2545, i64 8
  %2547 = getelementptr inbounds nuw i8, ptr %2544, i64 8
  %2548 = icmp ult ptr %2546, %1999
  br i1 %2548, label %2549, label %.loopexit620

2549:                                             ; preds = %.preheader619
  %2550 = load i64, ptr %2547, align 1, !tbaa !24
  %2551 = load i64, ptr %2546, align 1, !tbaa !24
  %2552 = icmp eq i64 %2550, %2551
  br i1 %2552, label %.preheader619, label %2553

2553:                                             ; preds = %2549
  %2554 = xor i64 %2551, %2550
  %2555 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %2554, i1 true)
  %2556 = lshr i64 %2555, 3
  %2557 = getelementptr inbounds nuw i8, ptr %2546, i64 %2556
  %2558 = ptrtoint ptr %2557 to i64
  %2559 = ptrtoint ptr %2512 to i64
  %2560 = sub i64 %2558, %2559
  br label %2597

.loopexit620:                                     ; preds = %.preheader619, %2534
  %2561 = phi ptr [ %2513, %2534 ], [ %2547, %.preheader619 ]
  %2562 = phi ptr [ %2512, %2534 ], [ %2546, %.preheader619 ]
  %2563 = icmp ult ptr %2562, %2000
  br i1 %2563, label %2564, label %2571

2564:                                             ; preds = %.loopexit620
  %2565 = load i32, ptr %2561, align 1, !tbaa !25
  %2566 = load i32, ptr %2562, align 1, !tbaa !25
  %2567 = icmp eq i32 %2565, %2566
  br i1 %2567, label %2568, label %2571

2568:                                             ; preds = %2564
  %2569 = getelementptr inbounds nuw i8, ptr %2562, i64 4
  %2570 = getelementptr inbounds nuw i8, ptr %2561, i64 4
  br label %2571

2571:                                             ; preds = %2568, %2564, %.loopexit620
  %2572 = phi ptr [ %2570, %2568 ], [ %2561, %2564 ], [ %2561, %.loopexit620 ]
  %2573 = phi ptr [ %2569, %2568 ], [ %2562, %2564 ], [ %2562, %.loopexit620 ]
  %2574 = icmp ult ptr %2573, %2001
  br i1 %2574, label %2575, label %2582

2575:                                             ; preds = %2571
  %2576 = load i16, ptr %2572, align 1, !tbaa !35
  %2577 = load i16, ptr %2573, align 1, !tbaa !35
  %2578 = icmp eq i16 %2576, %2577
  br i1 %2578, label %2579, label %2582

2579:                                             ; preds = %2575
  %2580 = getelementptr inbounds nuw i8, ptr %2573, i64 2
  %2581 = getelementptr inbounds nuw i8, ptr %2572, i64 2
  br label %2582

2582:                                             ; preds = %2579, %2575, %2571
  %2583 = phi ptr [ %2581, %2579 ], [ %2572, %2575 ], [ %2572, %2571 ]
  %2584 = phi ptr [ %2580, %2579 ], [ %2573, %2575 ], [ %2573, %2571 ]
  %2585 = icmp ult ptr %2584, %38
  br i1 %2585, label %2586, label %2592

2586:                                             ; preds = %2582
  %2587 = load i8, ptr %2583, align 1, !tbaa !37
  %2588 = load i8, ptr %2584, align 1, !tbaa !37
  %2589 = icmp eq i8 %2587, %2588
  %2590 = zext i1 %2589 to i64
  %2591 = getelementptr inbounds nuw i8, ptr %2584, i64 %2590
  br label %2592

2592:                                             ; preds = %2586, %2582
  %2593 = phi ptr [ %2584, %2582 ], [ %2591, %2586 ]
  %2594 = ptrtoint ptr %2593 to i64
  %2595 = ptrtoint ptr %2512 to i64
  %2596 = sub i64 %2594, %2595
  br label %2597

2597:                                             ; preds = %2592, %2553, %2540
  %2598 = phi i64 [ %2596, %2592 ], [ %2543, %2540 ], [ %2560, %2553 ]
  %2599 = add i64 %2598, 4
  %2600 = ptrtoint ptr %2370 to i64
  %2601 = sub i64 %2031, %2600
  %2602 = trunc i64 %2601 to i32
  %2603 = icmp ugt ptr %2006, %2007
  %2604 = icmp ugt ptr %2370, %37
  %2605 = and i1 %2603, %2604
  br i1 %2605, label %.preheader615, label %.loopexit604

.preheader615:                                    ; preds = %2597, %2614
  %2606 = phi ptr [ %2609, %2614 ], [ %2006, %2597 ]
  %2607 = phi i64 [ %2615, %2614 ], [ %2599, %2597 ]
  %2608 = phi ptr [ %2611, %2614 ], [ %2370, %2597 ]
  %2609 = getelementptr inbounds i8, ptr %2606, i64 -1
  %2610 = load i8, ptr %2609, align 1, !tbaa !37
  %2611 = getelementptr inbounds i8, ptr %2608, i64 -1
  %2612 = load i8, ptr %2611, align 1, !tbaa !37
  %2613 = icmp eq i8 %2610, %2612
  br i1 %2613, label %2614, label %.loopexit604

2614:                                             ; preds = %.preheader615
  %2615 = add i64 %2607, 1
  %2616 = icmp ugt ptr %2609, %2007
  %2617 = icmp ugt ptr %2611, %37
  %2618 = and i1 %2616, %2617
  br i1 %2618, label %.preheader615, label %.loopexit604, !llvm.loop !110

.loopexit604:                                     ; preds = %2311, %.preheader627, %2475, %.preheader621, %2614, %.preheader615, %2529, %.preheader611, %2505, %.preheader607, %2341, %.preheader603, %2597, %2514, %2489, %2457, %2325, %2294
  %2619 = phi i32 [ %2331, %2325 ], [ %2495, %2489 ], [ %2517, %2514 ], [ %2602, %2597 ], [ %2463, %2457 ], [ %2299, %2294 ], [ %2331, %2341 ], [ %2602, %2614 ], [ %2463, %2475 ], [ %2495, %2505 ], [ %2517, %2529 ], [ %2331, %.preheader603 ], [ %2495, %.preheader607 ], [ %2517, %.preheader611 ], [ %2602, %.preheader615 ], [ %2463, %.preheader621 ], [ %2299, %.preheader627 ], [ %2299, %2311 ]
  %2620 = phi i64 [ %2329, %2325 ], [ %2493, %2489 ], [ %2516, %2514 ], [ %2599, %2597 ], [ %2459, %2457 ], [ %2296, %2294 ], [ %2342, %2341 ], [ %2615, %2614 ], [ %2476, %2475 ], [ %2506, %2505 ], [ %2530, %2529 ], [ %2334, %.preheader603 ], [ %2498, %.preheader607 ], [ %2522, %.preheader611 ], [ %2607, %.preheader615 ], [ %2468, %.preheader621 ], [ %2312, %2311 ], [ %2304, %.preheader627 ]
  %2621 = phi ptr [ %2006, %2325 ], [ %2372, %2489 ], [ %2006, %2514 ], [ %2006, %2597 ], [ %2372, %2457 ], [ %2006, %2294 ], [ %2336, %2341 ], [ %2609, %2614 ], [ %2470, %2475 ], [ %2500, %2505 ], [ %2524, %2529 ], [ %2333, %.preheader603 ], [ %2497, %.preheader607 ], [ %2521, %.preheader611 ], [ %2606, %.preheader615 ], [ %2467, %.preheader621 ], [ %2306, %2311 ], [ %2303, %.preheader627 ]
  %2622 = ptrtoint ptr %2621 to i64
  %2623 = ptrtoint ptr %2007 to i64
  %2624 = sub i64 %2622, %2623
  %2625 = add i32 %2619, 3
  %2626 = icmp ugt ptr %2621, %1993
  %2627 = load ptr, ptr %1994, align 8, !tbaa !38
  br i1 %2626, label %2650, label %2628

2628:                                             ; preds = %.loopexit604
  %2629 = load <2 x i64>, ptr %2007, align 1, !tbaa !37
  store <2 x i64> %2629, ptr %2627, align 1, !tbaa !37
  %2630 = icmp ugt i64 %2624, 16
  br i1 %2630, label %2631, label %2761

2631:                                             ; preds = %2628
  %2632 = load ptr, ptr %1994, align 8, !tbaa !38
  %2633 = getelementptr inbounds nuw i8, ptr %2632, i64 16
  %2634 = getelementptr inbounds nuw i8, ptr %2007, i64 16
  %2635 = getelementptr i8, ptr %2632, i64 %2624
  %2636 = load <2 x i64>, ptr %2634, align 1, !tbaa !37
  store <2 x i64> %2636, ptr %2633, align 1, !tbaa !37
  %2637 = icmp ult i64 %2624, 33
  br i1 %2637, label %2761, label %2638

2638:                                             ; preds = %2631
  %2639 = getelementptr inbounds nuw i8, ptr %2632, i64 32
  br label %2640

2640:                                             ; preds = %2640, %2638
  %2641 = phi ptr [ %2639, %2638 ], [ %2648, %2640 ]
  %2642 = phi ptr [ %2634, %2638 ], [ %2646, %2640 ]
  %2643 = getelementptr inbounds nuw i8, ptr %2642, i64 16
  %2644 = load <2 x i64>, ptr %2643, align 1, !tbaa !37
  store <2 x i64> %2644, ptr %2641, align 1, !tbaa !37
  %2645 = getelementptr inbounds nuw i8, ptr %2641, i64 16
  %2646 = getelementptr inbounds nuw i8, ptr %2642, i64 32
  %2647 = load <2 x i64>, ptr %2646, align 1, !tbaa !37
  store <2 x i64> %2647, ptr %2645, align 1, !tbaa !37
  %2648 = getelementptr inbounds nuw i8, ptr %2641, i64 32
  %2649 = icmp ult ptr %2648, %2635
  br i1 %2649, label %2640, label %.loopexit598, !llvm.loop !41

2650:                                             ; preds = %.loopexit604
  %2651 = icmp ugt ptr %2007, %1993
  br i1 %2651, label %.loopexit601, label %2652

2652:                                             ; preds = %2650
  %2653 = sub i64 %1995, %2623
  %2654 = getelementptr inbounds i8, ptr %2627, i64 %2653
  %2655 = load <2 x i64>, ptr %2007, align 1, !tbaa !37
  store <2 x i64> %2655, ptr %2627, align 1, !tbaa !37
  %2656 = icmp ult i64 %2653, 17
  br i1 %2656, label %.loopexit601, label %2657

2657:                                             ; preds = %2652
  %2658 = getelementptr inbounds nuw i8, ptr %2627, i64 16
  br label %2659

2659:                                             ; preds = %2659, %2657
  %2660 = phi ptr [ %2658, %2657 ], [ %2667, %2659 ]
  %2661 = phi ptr [ %2007, %2657 ], [ %2665, %2659 ]
  %2662 = getelementptr inbounds nuw i8, ptr %2661, i64 16
  %2663 = load <2 x i64>, ptr %2662, align 1, !tbaa !37
  store <2 x i64> %2663, ptr %2660, align 1, !tbaa !37
  %2664 = getelementptr inbounds nuw i8, ptr %2660, i64 16
  %2665 = getelementptr inbounds nuw i8, ptr %2661, i64 32
  %2666 = load <2 x i64>, ptr %2665, align 1, !tbaa !37
  store <2 x i64> %2666, ptr %2664, align 1, !tbaa !37
  %2667 = getelementptr inbounds nuw i8, ptr %2660, i64 32
  %2668 = icmp ult ptr %2667, %2654
  br i1 %2668, label %2659, label %.loopexit601, !llvm.loop !41

.loopexit601:                                     ; preds = %2659, %2652, %2650
  %2669 = phi ptr [ %1993, %2652 ], [ %2007, %2650 ], [ %1993, %2659 ]
  %2670 = phi ptr [ %2654, %2652 ], [ %2627, %2650 ], [ %2654, %2659 ]
  %2671 = icmp ult ptr %2669, %2621
  br i1 %2671, label %2672, label %.loopexit598

2672:                                             ; preds = %.loopexit601
  %2673 = ptrtoint ptr %2669 to i64
  %2674 = ptrtoint ptr %2670 to i64
  %2675 = sub i64 %2622, %2673
  %2676 = icmp ult i64 %2675, 4
  %2677 = sub i64 %2674, %2673
  %2678 = icmp ult i64 %2677, 32
  %2679 = select i1 %2676, i1 true, i1 %2678
  br i1 %2679, label %2715, label %2680

2680:                                             ; preds = %2672
  %2681 = icmp ult i64 %2675, 32
  br i1 %2681, label %2701, label %2682

2682:                                             ; preds = %2680
  %2683 = and i64 %2675, -32
  br label %2684

2684:                                             ; preds = %2684, %2682
  %2685 = phi i64 [ 0, %2682 ], [ %2692, %2684 ]
  %2686 = getelementptr i8, ptr %2670, i64 %2685
  %2687 = getelementptr i8, ptr %2669, i64 %2685
  %2688 = getelementptr i8, ptr %2687, i64 16
  %2689 = load <16 x i8>, ptr %2687, align 1, !tbaa !37
  %2690 = load <16 x i8>, ptr %2688, align 1, !tbaa !37
  %2691 = getelementptr i8, ptr %2686, i64 16
  store <16 x i8> %2689, ptr %2686, align 1, !tbaa !37
  store <16 x i8> %2690, ptr %2691, align 1, !tbaa !37
  %2692 = add nuw i64 %2685, 32
  %2693 = icmp eq i64 %2692, %2683
  br i1 %2693, label %2694, label %2684, !llvm.loop !128

2694:                                             ; preds = %2684
  %2695 = icmp eq i64 %2675, %2683
  br i1 %2695, label %.loopexit598, label %2696

2696:                                             ; preds = %2694
  %2697 = getelementptr i8, ptr %2670, i64 %2683
  %2698 = getelementptr i8, ptr %2669, i64 %2683
  %2699 = and i64 %2675, 28
  %2700 = icmp eq i64 %2699, 0
  br i1 %2700, label %2715, label %2701

2701:                                             ; preds = %2696, %2680
  %2702 = phi i64 [ %2683, %2696 ], [ 0, %2680 ]
  %2703 = and i64 %2675, -4
  br label %2704

2704:                                             ; preds = %2704, %2701
  %2705 = phi i64 [ %2702, %2701 ], [ %2709, %2704 ]
  %2706 = getelementptr i8, ptr %2670, i64 %2705
  %2707 = getelementptr i8, ptr %2669, i64 %2705
  %2708 = load <4 x i8>, ptr %2707, align 1, !tbaa !37
  store <4 x i8> %2708, ptr %2706, align 1, !tbaa !37
  %2709 = add nuw i64 %2705, 4
  %2710 = icmp eq i64 %2709, %2703
  br i1 %2710, label %2711, label %2704, !llvm.loop !129

2711:                                             ; preds = %2704
  %2712 = getelementptr i8, ptr %2670, i64 %2703
  %2713 = getelementptr i8, ptr %2669, i64 %2703
  %2714 = icmp eq i64 %2675, %2703
  br i1 %2714, label %.loopexit598, label %2715

2715:                                             ; preds = %2711, %2696, %2672
  %2716 = phi ptr [ %2670, %2672 ], [ %2697, %2696 ], [ %2712, %2711 ]
  %2717 = phi ptr [ %2669, %2672 ], [ %2698, %2696 ], [ %2713, %2711 ]
  %2718 = ptrtoint ptr %2717 to i64
  %2719 = sub i64 %2622, %2718
  %2720 = and i64 %2719, 7
  %2721 = icmp eq i64 %2720, 0
  br i1 %2721, label %.loopexit600, label %.preheader599

.preheader599:                                    ; preds = %2715, %.preheader599
  %2722 = phi ptr [ %2727, %.preheader599 ], [ %2716, %2715 ]
  %2723 = phi ptr [ %2725, %.preheader599 ], [ %2717, %2715 ]
  %2724 = phi i64 [ %2728, %.preheader599 ], [ 0, %2715 ]
  %2725 = getelementptr inbounds nuw i8, ptr %2723, i64 1
  %2726 = load i8, ptr %2723, align 1, !tbaa !37
  %2727 = getelementptr inbounds nuw i8, ptr %2722, i64 1
  store i8 %2726, ptr %2722, align 1, !tbaa !37
  %2728 = add nuw nsw i64 %2724, 1
  %2729 = icmp eq i64 %2728, %2720
  br i1 %2729, label %.loopexit600, label %.preheader599, !llvm.loop !130

.loopexit600:                                     ; preds = %.preheader599, %2715
  %2730 = phi ptr [ %2716, %2715 ], [ %2727, %.preheader599 ]
  %2731 = phi ptr [ %2717, %2715 ], [ %2725, %.preheader599 ]
  %2732 = sub i64 %2718, %2622
  %2733 = icmp ugt i64 %2732, -8
  br i1 %2733, label %.loopexit598, label %.preheader597

.preheader597:                                    ; preds = %.loopexit600, %.preheader597
  %2734 = phi ptr [ %2759, %.preheader597 ], [ %2730, %.loopexit600 ]
  %2735 = phi ptr [ %2757, %.preheader597 ], [ %2731, %.loopexit600 ]
  %2736 = getelementptr inbounds nuw i8, ptr %2735, i64 1
  %2737 = load i8, ptr %2735, align 1, !tbaa !37
  %2738 = getelementptr inbounds nuw i8, ptr %2734, i64 1
  store i8 %2737, ptr %2734, align 1, !tbaa !37
  %2739 = getelementptr inbounds nuw i8, ptr %2735, i64 2
  %2740 = load i8, ptr %2736, align 1, !tbaa !37
  %2741 = getelementptr inbounds nuw i8, ptr %2734, i64 2
  store i8 %2740, ptr %2738, align 1, !tbaa !37
  %2742 = getelementptr inbounds nuw i8, ptr %2735, i64 3
  %2743 = load i8, ptr %2739, align 1, !tbaa !37
  %2744 = getelementptr inbounds nuw i8, ptr %2734, i64 3
  store i8 %2743, ptr %2741, align 1, !tbaa !37
  %2745 = getelementptr inbounds nuw i8, ptr %2735, i64 4
  %2746 = load i8, ptr %2742, align 1, !tbaa !37
  %2747 = getelementptr inbounds nuw i8, ptr %2734, i64 4
  store i8 %2746, ptr %2744, align 1, !tbaa !37
  %2748 = getelementptr inbounds nuw i8, ptr %2735, i64 5
  %2749 = load i8, ptr %2745, align 1, !tbaa !37
  %2750 = getelementptr inbounds nuw i8, ptr %2734, i64 5
  store i8 %2749, ptr %2747, align 1, !tbaa !37
  %2751 = getelementptr inbounds nuw i8, ptr %2735, i64 6
  %2752 = load i8, ptr %2748, align 1, !tbaa !37
  %2753 = getelementptr inbounds nuw i8, ptr %2734, i64 6
  store i8 %2752, ptr %2750, align 1, !tbaa !37
  %2754 = getelementptr inbounds nuw i8, ptr %2735, i64 7
  %2755 = load i8, ptr %2751, align 1, !tbaa !37
  %2756 = getelementptr inbounds nuw i8, ptr %2734, i64 7
  store i8 %2755, ptr %2753, align 1, !tbaa !37
  %2757 = getelementptr inbounds nuw i8, ptr %2735, i64 8
  %2758 = load i8, ptr %2754, align 1, !tbaa !37
  %2759 = getelementptr inbounds nuw i8, ptr %2734, i64 8
  store i8 %2758, ptr %2756, align 1, !tbaa !37
  %2760 = icmp eq ptr %2757, %2621
  br i1 %2760, label %.loopexit598, label %.preheader597, !llvm.loop !131

2761:                                             ; preds = %2631, %2628
  %2762 = load ptr, ptr %1994, align 8, !tbaa !38
  %2763 = getelementptr inbounds nuw i8, ptr %2762, i64 %2624
  store ptr %2763, ptr %1994, align 8, !tbaa !38
  %2764 = load ptr, ptr %1997, align 8, !tbaa !50
  br label %2776

.loopexit598:                                     ; preds = %2640, %.preheader597, %.loopexit600, %2711, %2694, %.loopexit601
  %2765 = load ptr, ptr %1994, align 8, !tbaa !38
  %2766 = getelementptr inbounds nuw i8, ptr %2765, i64 %2624
  store ptr %2766, ptr %1994, align 8, !tbaa !38
  %2767 = icmp ugt i64 %2624, 65535
  %2768 = load ptr, ptr %1997, align 8, !tbaa !50
  br i1 %2767, label %2769, label %2776, !prof !115

2769:                                             ; preds = %.loopexit598
  store i32 1, ptr %1996, align 8, !tbaa !52
  %2770 = load ptr, ptr %1, align 8, !tbaa !53
  %2771 = ptrtoint ptr %2768 to i64
  %2772 = ptrtoint ptr %2770 to i64
  %2773 = sub i64 %2771, %2772
  %2774 = lshr exact i64 %2773, 3
  %2775 = trunc i64 %2774 to i32
  store i32 %2775, ptr %1998, align 4, !tbaa !54
  br label %2776

2776:                                             ; preds = %2769, %.loopexit598, %2761
  %2777 = phi ptr [ %2764, %2761 ], [ %2768, %2769 ], [ %2768, %.loopexit598 ]
  %2778 = trunc i64 %2624 to i16
  %2779 = getelementptr inbounds nuw i8, ptr %2777, i64 4
  store i16 %2778, ptr %2779, align 4, !tbaa !55
  store i32 %2625, ptr %2777, align 4, !tbaa !57
  %2780 = add i64 %2620, -3
  %2781 = icmp ugt i64 %2780, 65535
  br i1 %2781, label %2782, label %2795, !prof !58

2782:                                             ; preds = %2776, %2218
  %2783 = phi ptr [ %2219, %2218 ], [ %2777, %2776 ]
  %2784 = phi i64 [ %2222, %2218 ], [ %2780, %2776 ]
  %2785 = phi i64 [ %2063, %2218 ], [ %2620, %2776 ]
  %2786 = phi i32 [ %2009, %2218 ], [ %2008, %2776 ]
  %2787 = phi i32 [ %2008, %2218 ], [ %2619, %2776 ]
  %2788 = phi ptr [ %2055, %2218 ], [ %2621, %2776 ]
  store i32 2, ptr %1996, align 8, !tbaa !52
  %2789 = load ptr, ptr %1, align 8, !tbaa !53
  %2790 = ptrtoint ptr %2783 to i64
  %2791 = ptrtoint ptr %2789 to i64
  %2792 = sub i64 %2790, %2791
  %2793 = lshr exact i64 %2792, 3
  %2794 = trunc i64 %2793 to i32
  store i32 %2794, ptr %1998, align 4, !tbaa !54
  br label %2795

2795:                                             ; preds = %2782, %2776, %2218
  %2796 = phi i64 [ %2222, %2218 ], [ %2780, %2776 ], [ %2784, %2782 ]
  %2797 = phi ptr [ %2219, %2218 ], [ %2777, %2776 ], [ %2783, %2782 ]
  %2798 = phi i64 [ %2063, %2218 ], [ %2620, %2776 ], [ %2785, %2782 ]
  %2799 = phi i32 [ %2009, %2218 ], [ %2008, %2776 ], [ %2786, %2782 ]
  %2800 = phi i32 [ %2008, %2218 ], [ %2619, %2776 ], [ %2787, %2782 ]
  %2801 = phi ptr [ %2055, %2218 ], [ %2621, %2776 ], [ %2788, %2782 ]
  %2802 = trunc i64 %2796 to i16
  %2803 = getelementptr inbounds nuw i8, ptr %2797, i64 6
  store i16 %2802, ptr %2803, align 2, !tbaa !65
  %2804 = getelementptr inbounds nuw i8, ptr %2797, i64 8
  store ptr %2804, ptr %1997, align 8, !tbaa !50
  %2805 = getelementptr inbounds nuw i8, ptr %2801, i64 %2798
  %2806 = icmp ugt ptr %2805, %39
  br i1 %2806, label %.loopexit592, label %2807

2807:                                             ; preds = %2795
  %2808 = add i32 %2033, 2
  %2809 = zext i32 %2808 to i64
  %2810 = getelementptr inbounds nuw i8, ptr %18, i64 %2809
  %2811 = load i64, ptr %2810, align 1, !tbaa !24
  %2812 = mul i64 %2811, -3523014627327384477
  %2813 = lshr i64 %2812, %1986
  %2814 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2813
  store i32 %2808, ptr %2814, align 4, !tbaa !25
  %2815 = getelementptr inbounds i8, ptr %2805, i64 -2
  %2816 = ptrtoint ptr %2815 to i64
  %2817 = sub i64 %2816, %20
  %2818 = trunc i64 %2817 to i32
  %2819 = load i64, ptr %2815, align 1, !tbaa !24
  %2820 = mul i64 %2819, -3523014627327384477
  %2821 = lshr i64 %2820, %1986
  %2822 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2821
  store i32 %2818, ptr %2822, align 4, !tbaa !25
  %2823 = mul i64 %2811, -3523014627193847808
  %2824 = lshr i64 %2823, %1988
  %2825 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %2824
  store i32 %2808, ptr %2825, align 4, !tbaa !25
  %2826 = getelementptr inbounds i8, ptr %2805, i64 -1
  %2827 = ptrtoint ptr %2826 to i64
  %2828 = sub i64 %2827, %20
  %2829 = trunc i64 %2828 to i32
  %2830 = load i64, ptr %2826, align 1, !tbaa !24
  %2831 = mul i64 %2830, -3523014627193847808
  %2832 = lshr i64 %2831, %1988
  %2833 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %2832
  store i32 %2829, ptr %2833, align 4, !tbaa !25
  br label %2834

2834:                                             ; preds = %2875, %2807
  %2835 = phi ptr [ %2804, %2807 ], [ %2878, %2875 ]
  %2836 = phi ptr [ %2805, %2807 ], [ %2887, %2875 ]
  %2837 = phi i32 [ %2800, %2807 ], [ %2838, %2875 ]
  %2838 = phi i32 [ %2799, %2807 ], [ %2837, %2875 ]
  %2839 = ptrtoint ptr %2836 to i64
  %2840 = sub i64 %2839, %20
  %2841 = trunc i64 %2840 to i32
  %2842 = sub i32 %2841, %2838
  %2843 = icmp ult i32 %2842, %35
  %2844 = zext i32 %2842 to i64
  %2845 = select i1 %2843, ptr %2004, ptr %18
  %2846 = getelementptr i8, ptr %2845, i64 %2844
  %2847 = sub i32 %2842, %35
  %2848 = icmp ugt i32 %2847, -4
  br i1 %2848, label %.loopexit592, label %2849

2849:                                             ; preds = %2834
  %2850 = load i32, ptr %2846, align 1, !tbaa !25
  %2851 = load i32, ptr %2836, align 1, !tbaa !25
  %2852 = icmp eq i32 %2850, %2851
  br i1 %2852, label %2853, label %.loopexit592

2853:                                             ; preds = %2849
  %2854 = select i1 %2843, ptr %55, ptr %38
  %2855 = getelementptr inbounds nuw i8, ptr %2836, i64 4
  %2856 = getelementptr inbounds nuw i8, ptr %2846, i64 4
  %2857 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %2855, ptr noundef nonnull %2856, ptr noundef %38, ptr noundef %2854, ptr noundef %37)
  %2858 = icmp ugt ptr %2836, %1993
  br i1 %2858, label %2863, label %2859

2859:                                             ; preds = %2853
  %2860 = load ptr, ptr %1994, align 8, !tbaa !38
  %2861 = load <2 x i64>, ptr %2836, align 1, !tbaa !37
  store <2 x i64> %2861, ptr %2860, align 1, !tbaa !37
  %2862 = load ptr, ptr %1997, align 8, !tbaa !50
  br label %2863

2863:                                             ; preds = %2859, %2853
  %2864 = phi ptr [ %2835, %2853 ], [ %2862, %2859 ]
  %2865 = getelementptr inbounds nuw i8, ptr %2864, i64 4
  store i16 0, ptr %2865, align 4, !tbaa !55
  store i32 1, ptr %2864, align 4, !tbaa !57
  %2866 = add i64 %2857, 1
  %2867 = icmp ugt i64 %2866, 65535
  br i1 %2867, label %2868, label %2875, !prof !58

2868:                                             ; preds = %2863
  store i32 2, ptr %1996, align 8, !tbaa !52
  %2869 = load ptr, ptr %1, align 8, !tbaa !53
  %2870 = ptrtoint ptr %2864 to i64
  %2871 = ptrtoint ptr %2869 to i64
  %2872 = sub i64 %2870, %2871
  %2873 = lshr exact i64 %2872, 3
  %2874 = trunc i64 %2873 to i32
  store i32 %2874, ptr %1998, align 4, !tbaa !54
  br label %2875

2875:                                             ; preds = %2868, %2863
  %2876 = trunc i64 %2866 to i16
  %2877 = getelementptr inbounds nuw i8, ptr %2864, i64 6
  store i16 %2876, ptr %2877, align 2, !tbaa !65
  %2878 = getelementptr inbounds nuw i8, ptr %2864, i64 8
  store ptr %2878, ptr %1997, align 8, !tbaa !50
  %2879 = load i64, ptr %2836, align 1, !tbaa !24
  %2880 = mul i64 %2879, -3523014627193847808
  %2881 = lshr i64 %2880, %1988
  %2882 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %2881
  store i32 %2841, ptr %2882, align 4, !tbaa !25
  %2883 = mul i64 %2879, -3523014627327384477
  %2884 = lshr i64 %2883, %1986
  %2885 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2884
  store i32 %2841, ptr %2885, align 4, !tbaa !25
  %2886 = getelementptr i8, ptr %2836, i64 %2857
  %2887 = getelementptr i8, ptr %2886, i64 4
  %2888 = icmp ugt ptr %2887, %39
  br i1 %2888, label %.loopexit592, label %2834

.loopexit592:                                     ; preds = %2875, %2849, %2834, %2795, %2363
  %2889 = phi i32 [ %2009, %2363 ], [ %2799, %2795 ], [ %2837, %2875 ], [ %2838, %2849 ], [ %2838, %2834 ]
  %2890 = phi i32 [ %2008, %2363 ], [ %2800, %2795 ], [ %2838, %2875 ], [ %2837, %2849 ], [ %2837, %2834 ]
  %2891 = phi ptr [ %2007, %2363 ], [ %2805, %2795 ], [ %2887, %2875 ], [ %2836, %2849 ], [ %2836, %2834 ]
  %2892 = phi ptr [ %2368, %2363 ], [ %2805, %2795 ], [ %2887, %2875 ], [ %2836, %2849 ], [ %2836, %2834 ]
  %2893 = icmp ult ptr %2892, %39
  br i1 %2893, label %2005, label %2894

2894:                                             ; preds = %.loopexit592
  %2895 = ptrtoint ptr %2891 to i64
  br label %3836

2896:                                             ; preds = %5
  br i1 %70, label %2897, label %2898, !prof !96, !nosanitize !95

2897:                                             ; preds = %2896
  tail call void @llvm.ubsantrap(i8 0) #10, !nosanitize !95
  unreachable, !nosanitize !95

2898:                                             ; preds = %2896
  %2899 = extractvalue { i64, i1 } %69, 0, !nosanitize !95
  %2900 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %2901 = load i32, ptr %2900, align 8, !tbaa !97
  %2902 = icmp eq i32 %2901, 0
  br i1 %2902, label %.loopexit538, label %2903

2903:                                             ; preds = %2898
  %2904 = zext nneg i32 %62 to i64
  %2905 = shl i64 4, %2904
  %2906 = zext nneg i32 %64 to i64
  %2907 = shl i64 4, %2906
  %2908 = icmp ugt i32 %62, 61
  br i1 %2908, label %.loopexit540, label %.preheader539

.loopexit540:                                     ; preds = %.preheader539, %2903
  %2909 = icmp ugt i32 %64, 61
  br i1 %2909, label %.loopexit538, label %.preheader537

.preheader539:                                    ; preds = %2903, %.preheader539
  %2910 = phi i64 [ %2912, %.preheader539 ], [ 0, %2903 ]
  %2911 = getelementptr inbounds nuw i8, ptr %46, i64 %2910
  tail call void @llvm.prefetch.p0(ptr %2911, i32 0, i32 2, i32 1)
  %2912 = add i64 %2910, 64
  %2913 = icmp ult i64 %2912, %2905
  br i1 %2913, label %.preheader539, label %.loopexit540, !llvm.loop !98

.preheader537:                                    ; preds = %.loopexit540, %.preheader537
  %2914 = phi i64 [ %2916, %.preheader537 ], [ 0, %.loopexit540 ]
  %2915 = getelementptr inbounds nuw i8, ptr %48, i64 %2914
  tail call void @llvm.prefetch.p0(ptr %2915, i32 0, i32 2, i32 1)
  %2916 = add i64 %2914, 64
  %2917 = icmp ult i64 %2916, %2907
  br i1 %2917, label %.preheader537, label %.loopexit538, !llvm.loop !99

.loopexit538:                                     ; preds = %.preheader537, %.loopexit540, %2898
  %2918 = and i64 %2899, 4294967295
  %2919 = icmp eq i64 %2918, 0
  %2920 = zext i1 %2919 to i64
  %2921 = add nsw i64 %4, -8
  %2922 = icmp sgt i64 %2921, %2920
  br i1 %2922, label %2923, label %3836

2923:                                             ; preds = %.loopexit538
  %2924 = getelementptr inbounds nuw i8, ptr %3, i64 %2920
  %2925 = sub i32 64, %12
  %2926 = zext nneg i32 %2925 to i64
  %2927 = sub i32 64, %16
  %2928 = zext nneg i32 %2927 to i64
  %2929 = sub i32 56, %62
  %2930 = zext nneg i32 %2929 to i64
  %2931 = sub i32 56, %64
  %2932 = zext nneg i32 %2931 to i64
  %2933 = getelementptr inbounds i8, ptr %38, i64 -32
  %2934 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %2935 = ptrtoint ptr %2933 to i64
  %2936 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %2937 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %2938 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %2939 = getelementptr inbounds i8, ptr %38, i64 -7
  %2940 = getelementptr inbounds i8, ptr %38, i64 -3
  %2941 = getelementptr inbounds i8, ptr %38, i64 -1
  %2942 = zext i32 %60 to i64
  %2943 = sub nsw i64 0, %2942
  %2944 = getelementptr i8, ptr %52, i64 %2943
  br label %2945

2945:                                             ; preds = %.loopexit490, %2923
  %2946 = phi ptr [ %2924, %2923 ], [ %3832, %.loopexit490 ]
  %2947 = phi ptr [ %3, %2923 ], [ %3831, %.loopexit490 ]
  %2948 = phi i32 [ %40, %2923 ], [ %3830, %.loopexit490 ]
  %2949 = phi i32 [ %42, %2923 ], [ %3829, %.loopexit490 ]
  %2950 = load i64, ptr %2946, align 1, !tbaa !24
  %2951 = mul i64 %2950, -3523014627327384477
  %2952 = lshr i64 %2951, %2926
  %2953 = mul i64 %2950, -3523014627193167104
  %2954 = lshr i64 %2953, %2928
  %2955 = lshr i64 %2951, %2930
  %2956 = lshr i64 %2953, %2932
  %2957 = lshr i64 %2955, 8
  %2958 = getelementptr inbounds nuw [4 x i8], ptr %46, i64 %2957
  %2959 = load i32, ptr %2958, align 4, !tbaa !25
  %2960 = lshr i64 %2956, 8
  %2961 = getelementptr inbounds nuw [4 x i8], ptr %48, i64 %2960
  %2962 = load i32, ptr %2961, align 4, !tbaa !25
  %2963 = zext i32 %2959 to i64
  %2964 = xor i64 %2955, %2963
  %2965 = and i64 %2964, 255
  %2966 = icmp eq i64 %2965, 0
  %2967 = zext i32 %2962 to i64
  %2968 = xor i64 %2956, %2967
  %2969 = and i64 %2968, 255
  %2970 = icmp eq i64 %2969, 0
  %2971 = ptrtoint ptr %2946 to i64
  %2972 = sub i64 %2971, %20
  %2973 = trunc i64 %2972 to i32
  %2974 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2952
  %2975 = load i32, ptr %2974, align 4, !tbaa !25
  %2976 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %2954
  %2977 = load i32, ptr %2976, align 4, !tbaa !25
  %2978 = zext i32 %2975 to i64
  %2979 = getelementptr inbounds nuw i8, ptr %18, i64 %2978
  %2980 = zext i32 %2977 to i64
  %2981 = getelementptr inbounds nuw i8, ptr %18, i64 %2980
  %2982 = add i32 %2973, 1
  %2983 = sub i32 %2982, %2948
  %2984 = icmp ult i32 %2983, %35
  %2985 = sub i32 %2983, %60
  %2986 = zext i32 %2985 to i64
  %2987 = getelementptr inbounds nuw i8, ptr %52, i64 %2986
  %2988 = zext i32 %2983 to i64
  %2989 = getelementptr inbounds nuw i8, ptr %18, i64 %2988
  %2990 = select i1 %2984, ptr %2987, ptr %2989
  store i32 %2973, ptr %2976, align 4, !tbaa !25
  store i32 %2973, ptr %2974, align 4, !tbaa !25
  %2991 = sub i32 %2983, %35
  %2992 = icmp ugt i32 %2991, -4
  br i1 %2992, label %3164, label %2993

2993:                                             ; preds = %2945
  %2994 = load i32, ptr %2990, align 1, !tbaa !25
  %2995 = getelementptr inbounds nuw i8, ptr %2946, i64 1
  %2996 = load i32, ptr %2995, align 1, !tbaa !25
  %2997 = icmp eq i32 %2994, %2996
  br i1 %2997, label %2998, label %3164

2998:                                             ; preds = %2993
  %2999 = select i1 %2984, ptr %55, ptr %38
  %3000 = getelementptr inbounds nuw i8, ptr %2946, i64 5
  %3001 = getelementptr inbounds nuw i8, ptr %2990, i64 4
  %3002 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %3000, ptr noundef nonnull %3001, ptr noundef %38, ptr noundef %2999, ptr noundef %37)
  %3003 = add i64 %3002, 4
  %3004 = ptrtoint ptr %2995 to i64
  %3005 = ptrtoint ptr %2947 to i64
  %3006 = sub i64 %3004, %3005
  %3007 = icmp ugt ptr %2995, %2933
  %3008 = load ptr, ptr %2934, align 8, !tbaa !38
  br i1 %3007, label %3031, label %3009

3009:                                             ; preds = %2998
  %3010 = load <2 x i64>, ptr %2947, align 1, !tbaa !37
  store <2 x i64> %3010, ptr %3008, align 1, !tbaa !37
  %3011 = icmp ugt i64 %3006, 16
  br i1 %3011, label %3012, label %3143

3012:                                             ; preds = %3009
  %3013 = load ptr, ptr %2934, align 8, !tbaa !38
  %3014 = getelementptr inbounds nuw i8, ptr %3013, i64 16
  %3015 = getelementptr inbounds nuw i8, ptr %2947, i64 16
  %3016 = getelementptr i8, ptr %3013, i64 %3006
  %3017 = load <2 x i64>, ptr %3015, align 1, !tbaa !37
  store <2 x i64> %3017, ptr %3014, align 1, !tbaa !37
  %3018 = icmp ult i64 %3006, 33
  br i1 %3018, label %3143, label %3019

3019:                                             ; preds = %3012
  %3020 = getelementptr inbounds nuw i8, ptr %3013, i64 32
  br label %3021

3021:                                             ; preds = %3021, %3019
  %3022 = phi ptr [ %3020, %3019 ], [ %3029, %3021 ]
  %3023 = phi ptr [ %3015, %3019 ], [ %3027, %3021 ]
  %3024 = getelementptr inbounds nuw i8, ptr %3023, i64 16
  %3025 = load <2 x i64>, ptr %3024, align 1, !tbaa !37
  store <2 x i64> %3025, ptr %3022, align 1, !tbaa !37
  %3026 = getelementptr inbounds nuw i8, ptr %3022, i64 16
  %3027 = getelementptr inbounds nuw i8, ptr %3023, i64 32
  %3028 = load <2 x i64>, ptr %3027, align 1, !tbaa !37
  store <2 x i64> %3028, ptr %3026, align 1, !tbaa !37
  %3029 = getelementptr inbounds nuw i8, ptr %3022, i64 32
  %3030 = icmp ult ptr %3029, %3016
  br i1 %3030, label %3021, label %.loopexit532, !llvm.loop !41

3031:                                             ; preds = %2998
  %3032 = icmp ugt ptr %2947, %2933
  br i1 %3032, label %.loopexit535, label %3033

3033:                                             ; preds = %3031
  %3034 = sub i64 %2935, %3005
  %3035 = getelementptr inbounds i8, ptr %3008, i64 %3034
  %3036 = load <2 x i64>, ptr %2947, align 1, !tbaa !37
  store <2 x i64> %3036, ptr %3008, align 1, !tbaa !37
  %3037 = icmp ult i64 %3034, 17
  br i1 %3037, label %.loopexit535, label %3038

3038:                                             ; preds = %3033
  %3039 = getelementptr inbounds nuw i8, ptr %3008, i64 16
  br label %3040

3040:                                             ; preds = %3040, %3038
  %3041 = phi ptr [ %3039, %3038 ], [ %3048, %3040 ]
  %3042 = phi ptr [ %2947, %3038 ], [ %3046, %3040 ]
  %3043 = getelementptr inbounds nuw i8, ptr %3042, i64 16
  %3044 = load <2 x i64>, ptr %3043, align 1, !tbaa !37
  store <2 x i64> %3044, ptr %3041, align 1, !tbaa !37
  %3045 = getelementptr inbounds nuw i8, ptr %3041, i64 16
  %3046 = getelementptr inbounds nuw i8, ptr %3042, i64 32
  %3047 = load <2 x i64>, ptr %3046, align 1, !tbaa !37
  store <2 x i64> %3047, ptr %3045, align 1, !tbaa !37
  %3048 = getelementptr inbounds nuw i8, ptr %3041, i64 32
  %3049 = icmp ult ptr %3048, %3035
  br i1 %3049, label %3040, label %.loopexit535, !llvm.loop !41

.loopexit535:                                     ; preds = %3040, %3033, %3031
  %3050 = phi ptr [ %2933, %3033 ], [ %2947, %3031 ], [ %2933, %3040 ]
  %3051 = phi ptr [ %3035, %3033 ], [ %3008, %3031 ], [ %3035, %3040 ]
  %3052 = icmp ult ptr %3050, %2995
  br i1 %3052, label %3053, label %.loopexit532

3053:                                             ; preds = %.loopexit535
  %3054 = ptrtoint ptr %3050 to i64
  %3055 = ptrtoint ptr %3051 to i64
  %3056 = add i64 %2971, 1
  %3057 = sub i64 %3056, %3054
  %3058 = icmp ult i64 %3057, 4
  %3059 = sub i64 %3055, %3054
  %3060 = icmp ult i64 %3059, 32
  %3061 = select i1 %3058, i1 true, i1 %3060
  br i1 %3061, label %3097, label %3062

3062:                                             ; preds = %3053
  %3063 = icmp ult i64 %3057, 32
  br i1 %3063, label %3083, label %3064

3064:                                             ; preds = %3062
  %3065 = and i64 %3057, -32
  br label %3066

3066:                                             ; preds = %3066, %3064
  %3067 = phi i64 [ 0, %3064 ], [ %3074, %3066 ]
  %3068 = getelementptr i8, ptr %3051, i64 %3067
  %3069 = getelementptr i8, ptr %3050, i64 %3067
  %3070 = getelementptr i8, ptr %3069, i64 16
  %3071 = load <16 x i8>, ptr %3069, align 1, !tbaa !37
  %3072 = load <16 x i8>, ptr %3070, align 1, !tbaa !37
  %3073 = getelementptr i8, ptr %3068, i64 16
  store <16 x i8> %3071, ptr %3068, align 1, !tbaa !37
  store <16 x i8> %3072, ptr %3073, align 1, !tbaa !37
  %3074 = add nuw i64 %3067, 32
  %3075 = icmp eq i64 %3074, %3065
  br i1 %3075, label %3076, label %3066, !llvm.loop !132

3076:                                             ; preds = %3066
  %3077 = icmp eq i64 %3057, %3065
  br i1 %3077, label %.loopexit532, label %3078

3078:                                             ; preds = %3076
  %3079 = getelementptr i8, ptr %3051, i64 %3065
  %3080 = getelementptr i8, ptr %3050, i64 %3065
  %3081 = and i64 %3057, 28
  %3082 = icmp eq i64 %3081, 0
  br i1 %3082, label %3097, label %3083

3083:                                             ; preds = %3078, %3062
  %3084 = phi i64 [ %3065, %3078 ], [ 0, %3062 ]
  %3085 = and i64 %3057, -4
  br label %3086

3086:                                             ; preds = %3086, %3083
  %3087 = phi i64 [ %3084, %3083 ], [ %3091, %3086 ]
  %3088 = getelementptr i8, ptr %3051, i64 %3087
  %3089 = getelementptr i8, ptr %3050, i64 %3087
  %3090 = load <4 x i8>, ptr %3089, align 1, !tbaa !37
  store <4 x i8> %3090, ptr %3088, align 1, !tbaa !37
  %3091 = add nuw i64 %3087, 4
  %3092 = icmp eq i64 %3091, %3085
  br i1 %3092, label %3093, label %3086, !llvm.loop !133

3093:                                             ; preds = %3086
  %3094 = getelementptr i8, ptr %3051, i64 %3085
  %3095 = getelementptr i8, ptr %3050, i64 %3085
  %3096 = icmp eq i64 %3057, %3085
  br i1 %3096, label %.loopexit532, label %3097

3097:                                             ; preds = %3093, %3078, %3053
  %3098 = phi ptr [ %3051, %3053 ], [ %3079, %3078 ], [ %3094, %3093 ]
  %3099 = phi ptr [ %3050, %3053 ], [ %3080, %3078 ], [ %3095, %3093 ]
  %3100 = ptrtoint ptr %3099 to i64
  %3101 = sub i64 %3056, %3100
  %3102 = sub i64 %2971, %3100
  %3103 = and i64 %3101, 7
  %3104 = icmp eq i64 %3103, 0
  br i1 %3104, label %.loopexit534, label %.preheader533

.preheader533:                                    ; preds = %3097, %.preheader533
  %3105 = phi ptr [ %3110, %.preheader533 ], [ %3098, %3097 ]
  %3106 = phi ptr [ %3108, %.preheader533 ], [ %3099, %3097 ]
  %3107 = phi i64 [ %3111, %.preheader533 ], [ 0, %3097 ]
  %3108 = getelementptr inbounds nuw i8, ptr %3106, i64 1
  %3109 = load i8, ptr %3106, align 1, !tbaa !37
  %3110 = getelementptr inbounds nuw i8, ptr %3105, i64 1
  store i8 %3109, ptr %3105, align 1, !tbaa !37
  %3111 = add nuw nsw i64 %3107, 1
  %3112 = icmp eq i64 %3111, %3103
  br i1 %3112, label %.loopexit534, label %.preheader533, !llvm.loop !134

.loopexit534:                                     ; preds = %.preheader533, %3097
  %3113 = phi ptr [ %3098, %3097 ], [ %3110, %.preheader533 ]
  %3114 = phi ptr [ %3099, %3097 ], [ %3108, %.preheader533 ]
  %3115 = icmp ult i64 %3102, 7
  br i1 %3115, label %.loopexit532, label %.preheader531

.preheader531:                                    ; preds = %.loopexit534, %.preheader531
  %3116 = phi ptr [ %3141, %.preheader531 ], [ %3113, %.loopexit534 ]
  %3117 = phi ptr [ %3139, %.preheader531 ], [ %3114, %.loopexit534 ]
  %3118 = getelementptr inbounds nuw i8, ptr %3117, i64 1
  %3119 = load i8, ptr %3117, align 1, !tbaa !37
  %3120 = getelementptr inbounds nuw i8, ptr %3116, i64 1
  store i8 %3119, ptr %3116, align 1, !tbaa !37
  %3121 = getelementptr inbounds nuw i8, ptr %3117, i64 2
  %3122 = load i8, ptr %3118, align 1, !tbaa !37
  %3123 = getelementptr inbounds nuw i8, ptr %3116, i64 2
  store i8 %3122, ptr %3120, align 1, !tbaa !37
  %3124 = getelementptr inbounds nuw i8, ptr %3117, i64 3
  %3125 = load i8, ptr %3121, align 1, !tbaa !37
  %3126 = getelementptr inbounds nuw i8, ptr %3116, i64 3
  store i8 %3125, ptr %3123, align 1, !tbaa !37
  %3127 = getelementptr inbounds nuw i8, ptr %3117, i64 4
  %3128 = load i8, ptr %3124, align 1, !tbaa !37
  %3129 = getelementptr inbounds nuw i8, ptr %3116, i64 4
  store i8 %3128, ptr %3126, align 1, !tbaa !37
  %3130 = getelementptr inbounds nuw i8, ptr %3117, i64 5
  %3131 = load i8, ptr %3127, align 1, !tbaa !37
  %3132 = getelementptr inbounds nuw i8, ptr %3116, i64 5
  store i8 %3131, ptr %3129, align 1, !tbaa !37
  %3133 = getelementptr inbounds nuw i8, ptr %3117, i64 6
  %3134 = load i8, ptr %3130, align 1, !tbaa !37
  %3135 = getelementptr inbounds nuw i8, ptr %3116, i64 6
  store i8 %3134, ptr %3132, align 1, !tbaa !37
  %3136 = getelementptr inbounds nuw i8, ptr %3117, i64 7
  %3137 = load i8, ptr %3133, align 1, !tbaa !37
  %3138 = getelementptr inbounds nuw i8, ptr %3116, i64 7
  store i8 %3137, ptr %3135, align 1, !tbaa !37
  %3139 = getelementptr inbounds nuw i8, ptr %3117, i64 8
  %3140 = load i8, ptr %3136, align 1, !tbaa !37
  %3141 = getelementptr inbounds nuw i8, ptr %3116, i64 8
  store i8 %3140, ptr %3138, align 1, !tbaa !37
  %3142 = icmp eq ptr %3136, %2946
  br i1 %3142, label %.loopexit532, label %.preheader531, !llvm.loop !135

3143:                                             ; preds = %3012, %3009
  %3144 = load ptr, ptr %2934, align 8, !tbaa !38
  %3145 = getelementptr inbounds nuw i8, ptr %3144, i64 %3006
  store ptr %3145, ptr %2934, align 8, !tbaa !38
  %3146 = load ptr, ptr %2937, align 8, !tbaa !50
  br label %3158

.loopexit532:                                     ; preds = %3021, %.preheader531, %.loopexit534, %3093, %3076, %.loopexit535
  %3147 = load ptr, ptr %2934, align 8, !tbaa !38
  %3148 = getelementptr inbounds nuw i8, ptr %3147, i64 %3006
  store ptr %3148, ptr %2934, align 8, !tbaa !38
  %3149 = icmp ugt i64 %3006, 65535
  %3150 = load ptr, ptr %2937, align 8, !tbaa !50
  br i1 %3149, label %3151, label %3158, !prof !51

3151:                                             ; preds = %.loopexit532
  store i32 1, ptr %2936, align 8, !tbaa !52
  %3152 = load ptr, ptr %1, align 8, !tbaa !53
  %3153 = ptrtoint ptr %3150 to i64
  %3154 = ptrtoint ptr %3152 to i64
  %3155 = sub i64 %3153, %3154
  %3156 = lshr exact i64 %3155, 3
  %3157 = trunc i64 %3156 to i32
  store i32 %3157, ptr %2938, align 4, !tbaa !54
  br label %3158

3158:                                             ; preds = %3151, %.loopexit532, %3143
  %3159 = phi ptr [ %3146, %3143 ], [ %3150, %3151 ], [ %3150, %.loopexit532 ]
  %3160 = trunc i64 %3006 to i16
  %3161 = getelementptr inbounds nuw i8, ptr %3159, i64 4
  store i16 %3160, ptr %3161, align 4, !tbaa !55
  store i32 1, ptr %3159, align 4, !tbaa !57
  %3162 = add i64 %3002, 1
  %3163 = icmp ugt i64 %3162, 65535
  br i1 %3163, label %3722, label %3735, !prof !58

3164:                                             ; preds = %2993, %2945
  %3165 = icmp ult i32 %2975, %35
  br i1 %3165, label %3256, label %3166

3166:                                             ; preds = %3164
  %3167 = load i64, ptr %2979, align 1, !tbaa !24
  %3168 = icmp eq i64 %3167, %2950
  br i1 %3168, label %3169, label %3256

3169:                                             ; preds = %3166
  %3170 = getelementptr inbounds nuw i8, ptr %2946, i64 8
  %3171 = getelementptr inbounds nuw i8, ptr %2979, i64 8
  %3172 = icmp ult ptr %3170, %2939
  br i1 %3172, label %3173, label %.loopexit530

3173:                                             ; preds = %3169
  %3174 = load i64, ptr %3171, align 1, !tbaa !24
  %3175 = load i64, ptr %3170, align 1, !tbaa !24
  %3176 = icmp eq i64 %3174, %3175
  br i1 %3176, label %.preheader529, label %3177

3177:                                             ; preds = %3173
  %3178 = xor i64 %3175, %3174
  %3179 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3178, i1 true)
  %3180 = lshr i64 %3179, 3
  br label %3234

.preheader529:                                    ; preds = %3173, %3186
  %3181 = phi ptr [ %3184, %3186 ], [ %3171, %3173 ]
  %3182 = phi ptr [ %3183, %3186 ], [ %3170, %3173 ]
  %3183 = getelementptr inbounds nuw i8, ptr %3182, i64 8
  %3184 = getelementptr inbounds nuw i8, ptr %3181, i64 8
  %3185 = icmp ult ptr %3183, %2939
  br i1 %3185, label %3186, label %.loopexit530

3186:                                             ; preds = %.preheader529
  %3187 = load i64, ptr %3184, align 1, !tbaa !24
  %3188 = load i64, ptr %3183, align 1, !tbaa !24
  %3189 = icmp eq i64 %3187, %3188
  br i1 %3189, label %.preheader529, label %3190

3190:                                             ; preds = %3186
  %3191 = xor i64 %3188, %3187
  %3192 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3191, i1 true)
  %3193 = lshr i64 %3192, 3
  %3194 = getelementptr inbounds nuw i8, ptr %3183, i64 %3193
  %3195 = ptrtoint ptr %3194 to i64
  %3196 = ptrtoint ptr %3170 to i64
  %3197 = sub i64 %3195, %3196
  br label %3234

.loopexit530:                                     ; preds = %.preheader529, %3169
  %3198 = phi ptr [ %3171, %3169 ], [ %3184, %.preheader529 ]
  %3199 = phi ptr [ %3170, %3169 ], [ %3183, %.preheader529 ]
  %3200 = icmp ult ptr %3199, %2940
  br i1 %3200, label %3201, label %3208

3201:                                             ; preds = %.loopexit530
  %3202 = load i32, ptr %3198, align 1, !tbaa !25
  %3203 = load i32, ptr %3199, align 1, !tbaa !25
  %3204 = icmp eq i32 %3202, %3203
  br i1 %3204, label %3205, label %3208

3205:                                             ; preds = %3201
  %3206 = getelementptr inbounds nuw i8, ptr %3199, i64 4
  %3207 = getelementptr inbounds nuw i8, ptr %3198, i64 4
  br label %3208

3208:                                             ; preds = %3205, %3201, %.loopexit530
  %3209 = phi ptr [ %3207, %3205 ], [ %3198, %3201 ], [ %3198, %.loopexit530 ]
  %3210 = phi ptr [ %3206, %3205 ], [ %3199, %3201 ], [ %3199, %.loopexit530 ]
  %3211 = icmp ult ptr %3210, %2941
  br i1 %3211, label %3212, label %3219

3212:                                             ; preds = %3208
  %3213 = load i16, ptr %3209, align 1, !tbaa !35
  %3214 = load i16, ptr %3210, align 1, !tbaa !35
  %3215 = icmp eq i16 %3213, %3214
  br i1 %3215, label %3216, label %3219

3216:                                             ; preds = %3212
  %3217 = getelementptr inbounds nuw i8, ptr %3210, i64 2
  %3218 = getelementptr inbounds nuw i8, ptr %3209, i64 2
  br label %3219

3219:                                             ; preds = %3216, %3212, %3208
  %3220 = phi ptr [ %3218, %3216 ], [ %3209, %3212 ], [ %3209, %3208 ]
  %3221 = phi ptr [ %3217, %3216 ], [ %3210, %3212 ], [ %3210, %3208 ]
  %3222 = icmp ult ptr %3221, %38
  br i1 %3222, label %3223, label %3229

3223:                                             ; preds = %3219
  %3224 = load i8, ptr %3220, align 1, !tbaa !37
  %3225 = load i8, ptr %3221, align 1, !tbaa !37
  %3226 = icmp eq i8 %3224, %3225
  %3227 = zext i1 %3226 to i64
  %3228 = getelementptr inbounds nuw i8, ptr %3221, i64 %3227
  br label %3229

3229:                                             ; preds = %3223, %3219
  %3230 = phi ptr [ %3221, %3219 ], [ %3228, %3223 ]
  %3231 = ptrtoint ptr %3230 to i64
  %3232 = ptrtoint ptr %3170 to i64
  %3233 = sub i64 %3231, %3232
  br label %3234

3234:                                             ; preds = %3229, %3190, %3177
  %3235 = phi i64 [ %3233, %3229 ], [ %3180, %3177 ], [ %3197, %3190 ]
  %3236 = add i64 %3235, 8
  %3237 = ptrtoint ptr %2979 to i64
  %3238 = sub i64 %2971, %3237
  %3239 = trunc i64 %3238 to i32
  %3240 = icmp ugt ptr %2946, %2947
  %3241 = icmp ugt i32 %2975, %35
  %3242 = and i1 %3240, %3241
  br i1 %3242, label %.preheader525, label %.loopexit502

.preheader525:                                    ; preds = %3234, %3251
  %3243 = phi ptr [ %3246, %3251 ], [ %2946, %3234 ]
  %3244 = phi i64 [ %3252, %3251 ], [ %3236, %3234 ]
  %3245 = phi ptr [ %3248, %3251 ], [ %2979, %3234 ]
  %3246 = getelementptr inbounds i8, ptr %3243, i64 -1
  %3247 = load i8, ptr %3246, align 1, !tbaa !37
  %3248 = getelementptr inbounds i8, ptr %3245, i64 -1
  %3249 = load i8, ptr %3248, align 1, !tbaa !37
  %3250 = icmp eq i8 %3247, %3249
  br i1 %3250, label %3251, label %.loopexit502

3251:                                             ; preds = %.preheader525
  %3252 = add i64 %3244, 1
  %3253 = icmp ugt ptr %3246, %2947
  %3254 = icmp ugt ptr %3248, %37
  %3255 = and i1 %3253, %3254
  br i1 %3255, label %.preheader525, label %.loopexit502, !llvm.loop !104

3256:                                             ; preds = %3166, %3164
  br i1 %2966, label %3257, label %3286

3257:                                             ; preds = %3256
  %3258 = lshr i32 %2959, 8
  %3259 = zext nneg i32 %3258 to i64
  %3260 = getelementptr inbounds nuw i8, ptr %52, i64 %3259
  %3261 = icmp ugt i32 %3258, %50
  br i1 %3261, label %3262, label %3286

3262:                                             ; preds = %3257
  %3263 = load i64, ptr %3260, align 1, !tbaa !24
  %3264 = icmp eq i64 %3263, %2950
  br i1 %3264, label %3265, label %3286

3265:                                             ; preds = %3262
  %3266 = getelementptr inbounds nuw i8, ptr %2946, i64 8
  %3267 = getelementptr inbounds nuw i8, ptr %3260, i64 8
  %3268 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %3266, ptr noundef nonnull %3267, ptr noundef %38, ptr noundef %55, ptr noundef %37)
  %3269 = add i64 %3268, 8
  %3270 = add i32 %60, %3258
  %3271 = sub i32 %2973, %3270
  %3272 = icmp ugt ptr %2946, %2947
  br i1 %3272, label %.preheader501, label %.loopexit502

.preheader501:                                    ; preds = %3265, %3281
  %3273 = phi ptr [ %3276, %3281 ], [ %2946, %3265 ]
  %3274 = phi i64 [ %3282, %3281 ], [ %3269, %3265 ]
  %3275 = phi ptr [ %3278, %3281 ], [ %3260, %3265 ]
  %3276 = getelementptr inbounds i8, ptr %3273, i64 -1
  %3277 = load i8, ptr %3276, align 1, !tbaa !37
  %3278 = getelementptr inbounds i8, ptr %3275, i64 -1
  %3279 = load i8, ptr %3278, align 1, !tbaa !37
  %3280 = icmp eq i8 %3277, %3279
  br i1 %3280, label %3281, label %.loopexit502

3281:                                             ; preds = %.preheader501
  %3282 = add i64 %3274, 1
  %3283 = icmp ugt ptr %3276, %2947
  %3284 = icmp ugt ptr %3278, %54
  %3285 = and i1 %3283, %3284
  br i1 %3285, label %.preheader501, label %.loopexit502, !llvm.loop !105

3286:                                             ; preds = %3262, %3257, %3256
  %3287 = icmp ugt i32 %2977, %35
  br i1 %3287, label %3288, label %3292

3288:                                             ; preds = %3286
  %3289 = load i32, ptr %2981, align 1, !tbaa !25
  %3290 = load i32, ptr %2946, align 1, !tbaa !25
  %3291 = icmp eq i32 %3289, %3290
  br i1 %3291, label %3309, label %3303

3292:                                             ; preds = %3286
  br i1 %2970, label %3293, label %3303

3293:                                             ; preds = %3292
  %3294 = lshr i32 %2962, 8
  %3295 = icmp ugt i32 %3294, %50
  br i1 %3295, label %3296, label %3303

3296:                                             ; preds = %3293
  %3297 = add i32 %3294, %60
  %3298 = zext nneg i32 %3294 to i64
  %3299 = getelementptr inbounds nuw i8, ptr %52, i64 %3298
  %3300 = load i32, ptr %3299, align 1, !tbaa !25
  %3301 = load i32, ptr %2946, align 1, !tbaa !25
  %3302 = icmp eq i32 %3300, %3301
  br i1 %3302, label %3309, label %3303

3303:                                             ; preds = %3296, %3293, %3292, %3288
  %3304 = ptrtoint ptr %2947 to i64
  %3305 = sub i64 %2971, %3304
  %3306 = ashr i64 %3305, 8
  %3307 = getelementptr i8, ptr %2946, i64 %3306
  %3308 = getelementptr i8, ptr %3307, i64 1
  br label %.loopexit490, !llvm.loop !106

3309:                                             ; preds = %3296, %3288
  %3310 = phi ptr [ %2981, %3288 ], [ %3299, %3296 ]
  %3311 = phi i32 [ %2977, %3288 ], [ %3297, %3296 ]
  %3312 = getelementptr inbounds nuw i8, ptr %2946, i64 1
  %3313 = load i64, ptr %3312, align 1, !tbaa !24
  %3314 = mul i64 %3313, -3523014627327384477
  %3315 = lshr i64 %3314, %2926
  %3316 = lshr i64 %3314, %2930
  %3317 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %3315
  %3318 = load i32, ptr %3317, align 4, !tbaa !25
  %3319 = lshr i64 %3316, 8
  %3320 = getelementptr inbounds nuw [4 x i8], ptr %46, i64 %3319
  %3321 = load i32, ptr %3320, align 4, !tbaa !25
  %3322 = zext i32 %3321 to i64
  %3323 = xor i64 %3316, %3322
  %3324 = and i64 %3323, 255
  %3325 = icmp eq i64 %3324, 0
  %3326 = zext i32 %3318 to i64
  %3327 = getelementptr inbounds nuw i8, ptr %18, i64 %3326
  store i32 %2982, ptr %3317, align 4, !tbaa !25
  %3328 = icmp ult i32 %3318, %35
  br i1 %3328, label %3420, label %3329

3329:                                             ; preds = %3309
  %3330 = load i64, ptr %3327, align 1, !tbaa !24
  %3331 = icmp eq i64 %3330, %3313
  br i1 %3331, label %3332, label %3420

3332:                                             ; preds = %3329
  %3333 = getelementptr inbounds nuw i8, ptr %2946, i64 9
  %3334 = getelementptr inbounds nuw i8, ptr %3327, i64 8
  %3335 = icmp ult ptr %3333, %2939
  br i1 %3335, label %3336, label %.loopexit524

3336:                                             ; preds = %3332
  %3337 = load i64, ptr %3334, align 1, !tbaa !24
  %3338 = load i64, ptr %3333, align 1, !tbaa !24
  %3339 = icmp eq i64 %3337, %3338
  br i1 %3339, label %.preheader523, label %3340

3340:                                             ; preds = %3336
  %3341 = xor i64 %3338, %3337
  %3342 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3341, i1 true)
  %3343 = lshr i64 %3342, 3
  br label %3397

.preheader523:                                    ; preds = %3336, %3349
  %3344 = phi ptr [ %3347, %3349 ], [ %3334, %3336 ]
  %3345 = phi ptr [ %3346, %3349 ], [ %3333, %3336 ]
  %3346 = getelementptr inbounds nuw i8, ptr %3345, i64 8
  %3347 = getelementptr inbounds nuw i8, ptr %3344, i64 8
  %3348 = icmp ult ptr %3346, %2939
  br i1 %3348, label %3349, label %.loopexit524

3349:                                             ; preds = %.preheader523
  %3350 = load i64, ptr %3347, align 1, !tbaa !24
  %3351 = load i64, ptr %3346, align 1, !tbaa !24
  %3352 = icmp eq i64 %3350, %3351
  br i1 %3352, label %.preheader523, label %3353

3353:                                             ; preds = %3349
  %3354 = xor i64 %3351, %3350
  %3355 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3354, i1 true)
  %3356 = lshr i64 %3355, 3
  %3357 = getelementptr inbounds nuw i8, ptr %3346, i64 %3356
  %3358 = ptrtoint ptr %3357 to i64
  %3359 = ptrtoint ptr %3333 to i64
  %3360 = sub i64 %3358, %3359
  br label %3397

.loopexit524:                                     ; preds = %.preheader523, %3332
  %3361 = phi ptr [ %3334, %3332 ], [ %3347, %.preheader523 ]
  %3362 = phi ptr [ %3333, %3332 ], [ %3346, %.preheader523 ]
  %3363 = icmp ult ptr %3362, %2940
  br i1 %3363, label %3364, label %3371

3364:                                             ; preds = %.loopexit524
  %3365 = load i32, ptr %3361, align 1, !tbaa !25
  %3366 = load i32, ptr %3362, align 1, !tbaa !25
  %3367 = icmp eq i32 %3365, %3366
  br i1 %3367, label %3368, label %3371

3368:                                             ; preds = %3364
  %3369 = getelementptr inbounds nuw i8, ptr %3362, i64 4
  %3370 = getelementptr inbounds nuw i8, ptr %3361, i64 4
  br label %3371

3371:                                             ; preds = %3368, %3364, %.loopexit524
  %3372 = phi ptr [ %3370, %3368 ], [ %3361, %3364 ], [ %3361, %.loopexit524 ]
  %3373 = phi ptr [ %3369, %3368 ], [ %3362, %3364 ], [ %3362, %.loopexit524 ]
  %3374 = icmp ult ptr %3373, %2941
  br i1 %3374, label %3375, label %3382

3375:                                             ; preds = %3371
  %3376 = load i16, ptr %3372, align 1, !tbaa !35
  %3377 = load i16, ptr %3373, align 1, !tbaa !35
  %3378 = icmp eq i16 %3376, %3377
  br i1 %3378, label %3379, label %3382

3379:                                             ; preds = %3375
  %3380 = getelementptr inbounds nuw i8, ptr %3373, i64 2
  %3381 = getelementptr inbounds nuw i8, ptr %3372, i64 2
  br label %3382

3382:                                             ; preds = %3379, %3375, %3371
  %3383 = phi ptr [ %3381, %3379 ], [ %3372, %3375 ], [ %3372, %3371 ]
  %3384 = phi ptr [ %3380, %3379 ], [ %3373, %3375 ], [ %3373, %3371 ]
  %3385 = icmp ult ptr %3384, %38
  br i1 %3385, label %3386, label %3392

3386:                                             ; preds = %3382
  %3387 = load i8, ptr %3383, align 1, !tbaa !37
  %3388 = load i8, ptr %3384, align 1, !tbaa !37
  %3389 = icmp eq i8 %3387, %3388
  %3390 = zext i1 %3389 to i64
  %3391 = getelementptr inbounds nuw i8, ptr %3384, i64 %3390
  br label %3392

3392:                                             ; preds = %3386, %3382
  %3393 = phi ptr [ %3384, %3382 ], [ %3391, %3386 ]
  %3394 = ptrtoint ptr %3393 to i64
  %3395 = ptrtoint ptr %3333 to i64
  %3396 = sub i64 %3394, %3395
  br label %3397

3397:                                             ; preds = %3392, %3353, %3340
  %3398 = phi i64 [ %3396, %3392 ], [ %3343, %3340 ], [ %3360, %3353 ]
  %3399 = add i64 %3398, 8
  %3400 = ptrtoint ptr %3312 to i64
  %3401 = ptrtoint ptr %3327 to i64
  %3402 = sub i64 %3400, %3401
  %3403 = trunc i64 %3402 to i32
  %3404 = icmp ugt ptr %3312, %2947
  %3405 = icmp ugt i32 %3318, %35
  %3406 = and i1 %3404, %3405
  br i1 %3406, label %.preheader519, label %.loopexit502

.preheader519:                                    ; preds = %3397, %3415
  %3407 = phi ptr [ %3410, %3415 ], [ %3312, %3397 ]
  %3408 = phi i64 [ %3416, %3415 ], [ %3399, %3397 ]
  %3409 = phi ptr [ %3412, %3415 ], [ %3327, %3397 ]
  %3410 = getelementptr inbounds i8, ptr %3407, i64 -1
  %3411 = load i8, ptr %3410, align 1, !tbaa !37
  %3412 = getelementptr inbounds i8, ptr %3409, i64 -1
  %3413 = load i8, ptr %3412, align 1, !tbaa !37
  %3414 = icmp eq i8 %3411, %3413
  br i1 %3414, label %3415, label %.loopexit502

3415:                                             ; preds = %.preheader519
  %3416 = add i64 %3408, 1
  %3417 = icmp ugt ptr %3410, %2947
  %3418 = icmp ugt ptr %3412, %37
  %3419 = and i1 %3417, %3418
  br i1 %3419, label %.preheader519, label %.loopexit502, !llvm.loop !107

3420:                                             ; preds = %3329, %3309
  br i1 %3325, label %3421, label %3450

3421:                                             ; preds = %3420
  %3422 = lshr i32 %3321, 8
  %3423 = zext nneg i32 %3422 to i64
  %3424 = getelementptr inbounds nuw i8, ptr %52, i64 %3423
  %3425 = icmp ugt i32 %3422, %50
  br i1 %3425, label %3426, label %3450

3426:                                             ; preds = %3421
  %3427 = load i64, ptr %3424, align 1, !tbaa !24
  %3428 = icmp eq i64 %3427, %3313
  br i1 %3428, label %3429, label %3450

3429:                                             ; preds = %3426
  %3430 = getelementptr inbounds nuw i8, ptr %2946, i64 9
  %3431 = getelementptr inbounds nuw i8, ptr %3424, i64 8
  %3432 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %3430, ptr noundef nonnull %3431, ptr noundef %38, ptr noundef %55, ptr noundef %37)
  %3433 = add i64 %3432, 8
  %3434 = add i32 %60, %3422
  %3435 = sub i32 %2982, %3434
  %3436 = icmp ugt ptr %3312, %2947
  br i1 %3436, label %.preheader505, label %.loopexit502

.preheader505:                                    ; preds = %3429, %3445
  %3437 = phi ptr [ %3440, %3445 ], [ %3312, %3429 ]
  %3438 = phi i64 [ %3446, %3445 ], [ %3433, %3429 ]
  %3439 = phi ptr [ %3442, %3445 ], [ %3424, %3429 ]
  %3440 = getelementptr inbounds i8, ptr %3437, i64 -1
  %3441 = load i8, ptr %3440, align 1, !tbaa !37
  %3442 = getelementptr inbounds i8, ptr %3439, i64 -1
  %3443 = load i8, ptr %3442, align 1, !tbaa !37
  %3444 = icmp eq i8 %3441, %3443
  br i1 %3444, label %3445, label %.loopexit502

3445:                                             ; preds = %.preheader505
  %3446 = add i64 %3438, 1
  %3447 = icmp ugt ptr %3440, %2947
  %3448 = icmp ugt ptr %3442, %54
  %3449 = and i1 %3447, %3448
  br i1 %3449, label %.preheader505, label %.loopexit502, !llvm.loop !108

3450:                                             ; preds = %3426, %3421, %3420
  %3451 = icmp ult i32 %3311, %35
  %3452 = getelementptr inbounds nuw i8, ptr %2946, i64 4
  %3453 = getelementptr inbounds nuw i8, ptr %3310, i64 4
  br i1 %3451, label %3454, label %3474

3454:                                             ; preds = %3450
  %3455 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %3452, ptr noundef nonnull %3453, ptr noundef %38, ptr noundef %55, ptr noundef nonnull %37)
  %3456 = add i64 %3455, 4
  %3457 = sub i32 %2973, %3311
  %3458 = icmp ugt ptr %2946, %2947
  %3459 = icmp ugt ptr %3310, %54
  %3460 = and i1 %3458, %3459
  br i1 %3460, label %.preheader509, label %.loopexit502

.preheader509:                                    ; preds = %3454, %3469
  %3461 = phi ptr [ %3464, %3469 ], [ %2946, %3454 ]
  %3462 = phi i64 [ %3470, %3469 ], [ %3456, %3454 ]
  %3463 = phi ptr [ %3466, %3469 ], [ %3310, %3454 ]
  %3464 = getelementptr inbounds i8, ptr %3461, i64 -1
  %3465 = load i8, ptr %3464, align 1, !tbaa !37
  %3466 = getelementptr inbounds i8, ptr %3463, i64 -1
  %3467 = load i8, ptr %3466, align 1, !tbaa !37
  %3468 = icmp eq i8 %3465, %3467
  br i1 %3468, label %3469, label %.loopexit502

3469:                                             ; preds = %.preheader509
  %3470 = add i64 %3462, 1
  %3471 = icmp ugt ptr %3464, %2947
  %3472 = icmp ugt ptr %3466, %54
  %3473 = and i1 %3471, %3472
  br i1 %3473, label %.preheader509, label %.loopexit502, !llvm.loop !109

3474:                                             ; preds = %3450
  %3475 = icmp ult ptr %3452, %2939
  br i1 %3475, label %3476, label %.loopexit518

3476:                                             ; preds = %3474
  %3477 = load i64, ptr %3453, align 1, !tbaa !24
  %3478 = load i64, ptr %3452, align 1, !tbaa !24
  %3479 = icmp eq i64 %3477, %3478
  br i1 %3479, label %.preheader517, label %3480

3480:                                             ; preds = %3476
  %3481 = xor i64 %3478, %3477
  %3482 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3481, i1 true)
  %3483 = lshr i64 %3482, 3
  br label %3537

.preheader517:                                    ; preds = %3476, %3489
  %3484 = phi ptr [ %3487, %3489 ], [ %3453, %3476 ]
  %3485 = phi ptr [ %3486, %3489 ], [ %3452, %3476 ]
  %3486 = getelementptr inbounds nuw i8, ptr %3485, i64 8
  %3487 = getelementptr inbounds nuw i8, ptr %3484, i64 8
  %3488 = icmp ult ptr %3486, %2939
  br i1 %3488, label %3489, label %.loopexit518

3489:                                             ; preds = %.preheader517
  %3490 = load i64, ptr %3487, align 1, !tbaa !24
  %3491 = load i64, ptr %3486, align 1, !tbaa !24
  %3492 = icmp eq i64 %3490, %3491
  br i1 %3492, label %.preheader517, label %3493

3493:                                             ; preds = %3489
  %3494 = xor i64 %3491, %3490
  %3495 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %3494, i1 true)
  %3496 = lshr i64 %3495, 3
  %3497 = getelementptr inbounds nuw i8, ptr %3486, i64 %3496
  %3498 = ptrtoint ptr %3497 to i64
  %3499 = ptrtoint ptr %3452 to i64
  %3500 = sub i64 %3498, %3499
  br label %3537

.loopexit518:                                     ; preds = %.preheader517, %3474
  %3501 = phi ptr [ %3453, %3474 ], [ %3487, %.preheader517 ]
  %3502 = phi ptr [ %3452, %3474 ], [ %3486, %.preheader517 ]
  %3503 = icmp ult ptr %3502, %2940
  br i1 %3503, label %3504, label %3511

3504:                                             ; preds = %.loopexit518
  %3505 = load i32, ptr %3501, align 1, !tbaa !25
  %3506 = load i32, ptr %3502, align 1, !tbaa !25
  %3507 = icmp eq i32 %3505, %3506
  br i1 %3507, label %3508, label %3511

3508:                                             ; preds = %3504
  %3509 = getelementptr inbounds nuw i8, ptr %3502, i64 4
  %3510 = getelementptr inbounds nuw i8, ptr %3501, i64 4
  br label %3511

3511:                                             ; preds = %3508, %3504, %.loopexit518
  %3512 = phi ptr [ %3510, %3508 ], [ %3501, %3504 ], [ %3501, %.loopexit518 ]
  %3513 = phi ptr [ %3509, %3508 ], [ %3502, %3504 ], [ %3502, %.loopexit518 ]
  %3514 = icmp ult ptr %3513, %2941
  br i1 %3514, label %3515, label %3522

3515:                                             ; preds = %3511
  %3516 = load i16, ptr %3512, align 1, !tbaa !35
  %3517 = load i16, ptr %3513, align 1, !tbaa !35
  %3518 = icmp eq i16 %3516, %3517
  br i1 %3518, label %3519, label %3522

3519:                                             ; preds = %3515
  %3520 = getelementptr inbounds nuw i8, ptr %3513, i64 2
  %3521 = getelementptr inbounds nuw i8, ptr %3512, i64 2
  br label %3522

3522:                                             ; preds = %3519, %3515, %3511
  %3523 = phi ptr [ %3521, %3519 ], [ %3512, %3515 ], [ %3512, %3511 ]
  %3524 = phi ptr [ %3520, %3519 ], [ %3513, %3515 ], [ %3513, %3511 ]
  %3525 = icmp ult ptr %3524, %38
  br i1 %3525, label %3526, label %3532

3526:                                             ; preds = %3522
  %3527 = load i8, ptr %3523, align 1, !tbaa !37
  %3528 = load i8, ptr %3524, align 1, !tbaa !37
  %3529 = icmp eq i8 %3527, %3528
  %3530 = zext i1 %3529 to i64
  %3531 = getelementptr inbounds nuw i8, ptr %3524, i64 %3530
  br label %3532

3532:                                             ; preds = %3526, %3522
  %3533 = phi ptr [ %3524, %3522 ], [ %3531, %3526 ]
  %3534 = ptrtoint ptr %3533 to i64
  %3535 = ptrtoint ptr %3452 to i64
  %3536 = sub i64 %3534, %3535
  br label %3537

3537:                                             ; preds = %3532, %3493, %3480
  %3538 = phi i64 [ %3536, %3532 ], [ %3483, %3480 ], [ %3500, %3493 ]
  %3539 = add i64 %3538, 4
  %3540 = ptrtoint ptr %3310 to i64
  %3541 = sub i64 %2971, %3540
  %3542 = trunc i64 %3541 to i32
  %3543 = icmp ugt ptr %2946, %2947
  %3544 = icmp ugt ptr %3310, %37
  %3545 = and i1 %3543, %3544
  br i1 %3545, label %.preheader513, label %.loopexit502

.preheader513:                                    ; preds = %3537, %3554
  %3546 = phi ptr [ %3549, %3554 ], [ %2946, %3537 ]
  %3547 = phi i64 [ %3555, %3554 ], [ %3539, %3537 ]
  %3548 = phi ptr [ %3551, %3554 ], [ %3310, %3537 ]
  %3549 = getelementptr inbounds i8, ptr %3546, i64 -1
  %3550 = load i8, ptr %3549, align 1, !tbaa !37
  %3551 = getelementptr inbounds i8, ptr %3548, i64 -1
  %3552 = load i8, ptr %3551, align 1, !tbaa !37
  %3553 = icmp eq i8 %3550, %3552
  br i1 %3553, label %3554, label %.loopexit502

3554:                                             ; preds = %.preheader513
  %3555 = add i64 %3547, 1
  %3556 = icmp ugt ptr %3549, %2947
  %3557 = icmp ugt ptr %3551, %37
  %3558 = and i1 %3556, %3557
  br i1 %3558, label %.preheader513, label %.loopexit502, !llvm.loop !110

.loopexit502:                                     ; preds = %3251, %.preheader525, %3415, %.preheader519, %3554, %.preheader513, %3469, %.preheader509, %3445, %.preheader505, %3281, %.preheader501, %3537, %3454, %3429, %3397, %3265, %3234
  %3559 = phi i32 [ %3271, %3265 ], [ %3435, %3429 ], [ %3457, %3454 ], [ %3542, %3537 ], [ %3403, %3397 ], [ %3239, %3234 ], [ %3271, %3281 ], [ %3542, %3554 ], [ %3403, %3415 ], [ %3435, %3445 ], [ %3457, %3469 ], [ %3271, %.preheader501 ], [ %3435, %.preheader505 ], [ %3457, %.preheader509 ], [ %3542, %.preheader513 ], [ %3403, %.preheader519 ], [ %3239, %.preheader525 ], [ %3239, %3251 ]
  %3560 = phi i64 [ %3269, %3265 ], [ %3433, %3429 ], [ %3456, %3454 ], [ %3539, %3537 ], [ %3399, %3397 ], [ %3236, %3234 ], [ %3282, %3281 ], [ %3555, %3554 ], [ %3416, %3415 ], [ %3446, %3445 ], [ %3470, %3469 ], [ %3274, %.preheader501 ], [ %3438, %.preheader505 ], [ %3462, %.preheader509 ], [ %3547, %.preheader513 ], [ %3408, %.preheader519 ], [ %3252, %3251 ], [ %3244, %.preheader525 ]
  %3561 = phi ptr [ %2946, %3265 ], [ %3312, %3429 ], [ %2946, %3454 ], [ %2946, %3537 ], [ %3312, %3397 ], [ %2946, %3234 ], [ %3276, %3281 ], [ %3549, %3554 ], [ %3410, %3415 ], [ %3440, %3445 ], [ %3464, %3469 ], [ %3273, %.preheader501 ], [ %3437, %.preheader505 ], [ %3461, %.preheader509 ], [ %3546, %.preheader513 ], [ %3407, %.preheader519 ], [ %3246, %3251 ], [ %3243, %.preheader525 ]
  %3562 = ptrtoint ptr %3561 to i64
  %3563 = ptrtoint ptr %2947 to i64
  %3564 = sub i64 %3562, %3563
  %3565 = add i32 %3559, 3
  %3566 = icmp ugt ptr %3561, %2933
  %3567 = load ptr, ptr %2934, align 8, !tbaa !38
  br i1 %3566, label %3590, label %3568

3568:                                             ; preds = %.loopexit502
  %3569 = load <2 x i64>, ptr %2947, align 1, !tbaa !37
  store <2 x i64> %3569, ptr %3567, align 1, !tbaa !37
  %3570 = icmp ugt i64 %3564, 16
  br i1 %3570, label %3571, label %3701

3571:                                             ; preds = %3568
  %3572 = load ptr, ptr %2934, align 8, !tbaa !38
  %3573 = getelementptr inbounds nuw i8, ptr %3572, i64 16
  %3574 = getelementptr inbounds nuw i8, ptr %2947, i64 16
  %3575 = getelementptr i8, ptr %3572, i64 %3564
  %3576 = load <2 x i64>, ptr %3574, align 1, !tbaa !37
  store <2 x i64> %3576, ptr %3573, align 1, !tbaa !37
  %3577 = icmp ult i64 %3564, 33
  br i1 %3577, label %3701, label %3578

3578:                                             ; preds = %3571
  %3579 = getelementptr inbounds nuw i8, ptr %3572, i64 32
  br label %3580

3580:                                             ; preds = %3580, %3578
  %3581 = phi ptr [ %3579, %3578 ], [ %3588, %3580 ]
  %3582 = phi ptr [ %3574, %3578 ], [ %3586, %3580 ]
  %3583 = getelementptr inbounds nuw i8, ptr %3582, i64 16
  %3584 = load <2 x i64>, ptr %3583, align 1, !tbaa !37
  store <2 x i64> %3584, ptr %3581, align 1, !tbaa !37
  %3585 = getelementptr inbounds nuw i8, ptr %3581, i64 16
  %3586 = getelementptr inbounds nuw i8, ptr %3582, i64 32
  %3587 = load <2 x i64>, ptr %3586, align 1, !tbaa !37
  store <2 x i64> %3587, ptr %3585, align 1, !tbaa !37
  %3588 = getelementptr inbounds nuw i8, ptr %3581, i64 32
  %3589 = icmp ult ptr %3588, %3575
  br i1 %3589, label %3580, label %.loopexit496, !llvm.loop !41

3590:                                             ; preds = %.loopexit502
  %3591 = icmp ugt ptr %2947, %2933
  br i1 %3591, label %.loopexit499, label %3592

3592:                                             ; preds = %3590
  %3593 = sub i64 %2935, %3563
  %3594 = getelementptr inbounds i8, ptr %3567, i64 %3593
  %3595 = load <2 x i64>, ptr %2947, align 1, !tbaa !37
  store <2 x i64> %3595, ptr %3567, align 1, !tbaa !37
  %3596 = icmp ult i64 %3593, 17
  br i1 %3596, label %.loopexit499, label %3597

3597:                                             ; preds = %3592
  %3598 = getelementptr inbounds nuw i8, ptr %3567, i64 16
  br label %3599

3599:                                             ; preds = %3599, %3597
  %3600 = phi ptr [ %3598, %3597 ], [ %3607, %3599 ]
  %3601 = phi ptr [ %2947, %3597 ], [ %3605, %3599 ]
  %3602 = getelementptr inbounds nuw i8, ptr %3601, i64 16
  %3603 = load <2 x i64>, ptr %3602, align 1, !tbaa !37
  store <2 x i64> %3603, ptr %3600, align 1, !tbaa !37
  %3604 = getelementptr inbounds nuw i8, ptr %3600, i64 16
  %3605 = getelementptr inbounds nuw i8, ptr %3601, i64 32
  %3606 = load <2 x i64>, ptr %3605, align 1, !tbaa !37
  store <2 x i64> %3606, ptr %3604, align 1, !tbaa !37
  %3607 = getelementptr inbounds nuw i8, ptr %3600, i64 32
  %3608 = icmp ult ptr %3607, %3594
  br i1 %3608, label %3599, label %.loopexit499, !llvm.loop !41

.loopexit499:                                     ; preds = %3599, %3592, %3590
  %3609 = phi ptr [ %2933, %3592 ], [ %2947, %3590 ], [ %2933, %3599 ]
  %3610 = phi ptr [ %3594, %3592 ], [ %3567, %3590 ], [ %3594, %3599 ]
  %3611 = icmp ult ptr %3609, %3561
  br i1 %3611, label %3612, label %.loopexit496

3612:                                             ; preds = %.loopexit499
  %3613 = ptrtoint ptr %3609 to i64
  %3614 = ptrtoint ptr %3610 to i64
  %3615 = sub i64 %3562, %3613
  %3616 = icmp ult i64 %3615, 4
  %3617 = sub i64 %3614, %3613
  %3618 = icmp ult i64 %3617, 32
  %3619 = select i1 %3616, i1 true, i1 %3618
  br i1 %3619, label %3655, label %3620

3620:                                             ; preds = %3612
  %3621 = icmp ult i64 %3615, 32
  br i1 %3621, label %3641, label %3622

3622:                                             ; preds = %3620
  %3623 = and i64 %3615, -32
  br label %3624

3624:                                             ; preds = %3624, %3622
  %3625 = phi i64 [ 0, %3622 ], [ %3632, %3624 ]
  %3626 = getelementptr i8, ptr %3610, i64 %3625
  %3627 = getelementptr i8, ptr %3609, i64 %3625
  %3628 = getelementptr i8, ptr %3627, i64 16
  %3629 = load <16 x i8>, ptr %3627, align 1, !tbaa !37
  %3630 = load <16 x i8>, ptr %3628, align 1, !tbaa !37
  %3631 = getelementptr i8, ptr %3626, i64 16
  store <16 x i8> %3629, ptr %3626, align 1, !tbaa !37
  store <16 x i8> %3630, ptr %3631, align 1, !tbaa !37
  %3632 = add nuw i64 %3625, 32
  %3633 = icmp eq i64 %3632, %3623
  br i1 %3633, label %3634, label %3624, !llvm.loop !136

3634:                                             ; preds = %3624
  %3635 = icmp eq i64 %3615, %3623
  br i1 %3635, label %.loopexit496, label %3636

3636:                                             ; preds = %3634
  %3637 = getelementptr i8, ptr %3610, i64 %3623
  %3638 = getelementptr i8, ptr %3609, i64 %3623
  %3639 = and i64 %3615, 28
  %3640 = icmp eq i64 %3639, 0
  br i1 %3640, label %3655, label %3641

3641:                                             ; preds = %3636, %3620
  %3642 = phi i64 [ %3623, %3636 ], [ 0, %3620 ]
  %3643 = and i64 %3615, -4
  br label %3644

3644:                                             ; preds = %3644, %3641
  %3645 = phi i64 [ %3642, %3641 ], [ %3649, %3644 ]
  %3646 = getelementptr i8, ptr %3610, i64 %3645
  %3647 = getelementptr i8, ptr %3609, i64 %3645
  %3648 = load <4 x i8>, ptr %3647, align 1, !tbaa !37
  store <4 x i8> %3648, ptr %3646, align 1, !tbaa !37
  %3649 = add nuw i64 %3645, 4
  %3650 = icmp eq i64 %3649, %3643
  br i1 %3650, label %3651, label %3644, !llvm.loop !137

3651:                                             ; preds = %3644
  %3652 = getelementptr i8, ptr %3610, i64 %3643
  %3653 = getelementptr i8, ptr %3609, i64 %3643
  %3654 = icmp eq i64 %3615, %3643
  br i1 %3654, label %.loopexit496, label %3655

3655:                                             ; preds = %3651, %3636, %3612
  %3656 = phi ptr [ %3610, %3612 ], [ %3637, %3636 ], [ %3652, %3651 ]
  %3657 = phi ptr [ %3609, %3612 ], [ %3638, %3636 ], [ %3653, %3651 ]
  %3658 = ptrtoint ptr %3657 to i64
  %3659 = sub i64 %3562, %3658
  %3660 = and i64 %3659, 7
  %3661 = icmp eq i64 %3660, 0
  br i1 %3661, label %.loopexit498, label %.preheader497

.preheader497:                                    ; preds = %3655, %.preheader497
  %3662 = phi ptr [ %3667, %.preheader497 ], [ %3656, %3655 ]
  %3663 = phi ptr [ %3665, %.preheader497 ], [ %3657, %3655 ]
  %3664 = phi i64 [ %3668, %.preheader497 ], [ 0, %3655 ]
  %3665 = getelementptr inbounds nuw i8, ptr %3663, i64 1
  %3666 = load i8, ptr %3663, align 1, !tbaa !37
  %3667 = getelementptr inbounds nuw i8, ptr %3662, i64 1
  store i8 %3666, ptr %3662, align 1, !tbaa !37
  %3668 = add nuw nsw i64 %3664, 1
  %3669 = icmp eq i64 %3668, %3660
  br i1 %3669, label %.loopexit498, label %.preheader497, !llvm.loop !138

.loopexit498:                                     ; preds = %.preheader497, %3655
  %3670 = phi ptr [ %3656, %3655 ], [ %3667, %.preheader497 ]
  %3671 = phi ptr [ %3657, %3655 ], [ %3665, %.preheader497 ]
  %3672 = sub i64 %3658, %3562
  %3673 = icmp ugt i64 %3672, -8
  br i1 %3673, label %.loopexit496, label %.preheader495

.preheader495:                                    ; preds = %.loopexit498, %.preheader495
  %3674 = phi ptr [ %3699, %.preheader495 ], [ %3670, %.loopexit498 ]
  %3675 = phi ptr [ %3697, %.preheader495 ], [ %3671, %.loopexit498 ]
  %3676 = getelementptr inbounds nuw i8, ptr %3675, i64 1
  %3677 = load i8, ptr %3675, align 1, !tbaa !37
  %3678 = getelementptr inbounds nuw i8, ptr %3674, i64 1
  store i8 %3677, ptr %3674, align 1, !tbaa !37
  %3679 = getelementptr inbounds nuw i8, ptr %3675, i64 2
  %3680 = load i8, ptr %3676, align 1, !tbaa !37
  %3681 = getelementptr inbounds nuw i8, ptr %3674, i64 2
  store i8 %3680, ptr %3678, align 1, !tbaa !37
  %3682 = getelementptr inbounds nuw i8, ptr %3675, i64 3
  %3683 = load i8, ptr %3679, align 1, !tbaa !37
  %3684 = getelementptr inbounds nuw i8, ptr %3674, i64 3
  store i8 %3683, ptr %3681, align 1, !tbaa !37
  %3685 = getelementptr inbounds nuw i8, ptr %3675, i64 4
  %3686 = load i8, ptr %3682, align 1, !tbaa !37
  %3687 = getelementptr inbounds nuw i8, ptr %3674, i64 4
  store i8 %3686, ptr %3684, align 1, !tbaa !37
  %3688 = getelementptr inbounds nuw i8, ptr %3675, i64 5
  %3689 = load i8, ptr %3685, align 1, !tbaa !37
  %3690 = getelementptr inbounds nuw i8, ptr %3674, i64 5
  store i8 %3689, ptr %3687, align 1, !tbaa !37
  %3691 = getelementptr inbounds nuw i8, ptr %3675, i64 6
  %3692 = load i8, ptr %3688, align 1, !tbaa !37
  %3693 = getelementptr inbounds nuw i8, ptr %3674, i64 6
  store i8 %3692, ptr %3690, align 1, !tbaa !37
  %3694 = getelementptr inbounds nuw i8, ptr %3675, i64 7
  %3695 = load i8, ptr %3691, align 1, !tbaa !37
  %3696 = getelementptr inbounds nuw i8, ptr %3674, i64 7
  store i8 %3695, ptr %3693, align 1, !tbaa !37
  %3697 = getelementptr inbounds nuw i8, ptr %3675, i64 8
  %3698 = load i8, ptr %3694, align 1, !tbaa !37
  %3699 = getelementptr inbounds nuw i8, ptr %3674, i64 8
  store i8 %3698, ptr %3696, align 1, !tbaa !37
  %3700 = icmp eq ptr %3697, %3561
  br i1 %3700, label %.loopexit496, label %.preheader495, !llvm.loop !139

3701:                                             ; preds = %3571, %3568
  %3702 = load ptr, ptr %2934, align 8, !tbaa !38
  %3703 = getelementptr inbounds nuw i8, ptr %3702, i64 %3564
  store ptr %3703, ptr %2934, align 8, !tbaa !38
  %3704 = load ptr, ptr %2937, align 8, !tbaa !50
  br label %3716

.loopexit496:                                     ; preds = %3580, %.preheader495, %.loopexit498, %3651, %3634, %.loopexit499
  %3705 = load ptr, ptr %2934, align 8, !tbaa !38
  %3706 = getelementptr inbounds nuw i8, ptr %3705, i64 %3564
  store ptr %3706, ptr %2934, align 8, !tbaa !38
  %3707 = icmp ugt i64 %3564, 65535
  %3708 = load ptr, ptr %2937, align 8, !tbaa !50
  br i1 %3707, label %3709, label %3716, !prof !115

3709:                                             ; preds = %.loopexit496
  store i32 1, ptr %2936, align 8, !tbaa !52
  %3710 = load ptr, ptr %1, align 8, !tbaa !53
  %3711 = ptrtoint ptr %3708 to i64
  %3712 = ptrtoint ptr %3710 to i64
  %3713 = sub i64 %3711, %3712
  %3714 = lshr exact i64 %3713, 3
  %3715 = trunc i64 %3714 to i32
  store i32 %3715, ptr %2938, align 4, !tbaa !54
  br label %3716

3716:                                             ; preds = %3709, %.loopexit496, %3701
  %3717 = phi ptr [ %3704, %3701 ], [ %3708, %3709 ], [ %3708, %.loopexit496 ]
  %3718 = trunc i64 %3564 to i16
  %3719 = getelementptr inbounds nuw i8, ptr %3717, i64 4
  store i16 %3718, ptr %3719, align 4, !tbaa !55
  store i32 %3565, ptr %3717, align 4, !tbaa !57
  %3720 = add i64 %3560, -3
  %3721 = icmp ugt i64 %3720, 65535
  br i1 %3721, label %3722, label %3735, !prof !58

3722:                                             ; preds = %3716, %3158
  %3723 = phi ptr [ %3159, %3158 ], [ %3717, %3716 ]
  %3724 = phi i64 [ %3162, %3158 ], [ %3720, %3716 ]
  %3725 = phi i64 [ %3003, %3158 ], [ %3560, %3716 ]
  %3726 = phi i32 [ %2949, %3158 ], [ %2948, %3716 ]
  %3727 = phi i32 [ %2948, %3158 ], [ %3559, %3716 ]
  %3728 = phi ptr [ %2995, %3158 ], [ %3561, %3716 ]
  store i32 2, ptr %2936, align 8, !tbaa !52
  %3729 = load ptr, ptr %1, align 8, !tbaa !53
  %3730 = ptrtoint ptr %3723 to i64
  %3731 = ptrtoint ptr %3729 to i64
  %3732 = sub i64 %3730, %3731
  %3733 = lshr exact i64 %3732, 3
  %3734 = trunc i64 %3733 to i32
  store i32 %3734, ptr %2938, align 4, !tbaa !54
  br label %3735

3735:                                             ; preds = %3722, %3716, %3158
  %3736 = phi i64 [ %3162, %3158 ], [ %3720, %3716 ], [ %3724, %3722 ]
  %3737 = phi ptr [ %3159, %3158 ], [ %3717, %3716 ], [ %3723, %3722 ]
  %3738 = phi i64 [ %3003, %3158 ], [ %3560, %3716 ], [ %3725, %3722 ]
  %3739 = phi i32 [ %2949, %3158 ], [ %2948, %3716 ], [ %3726, %3722 ]
  %3740 = phi i32 [ %2948, %3158 ], [ %3559, %3716 ], [ %3727, %3722 ]
  %3741 = phi ptr [ %2995, %3158 ], [ %3561, %3716 ], [ %3728, %3722 ]
  %3742 = trunc i64 %3736 to i16
  %3743 = getelementptr inbounds nuw i8, ptr %3737, i64 6
  store i16 %3742, ptr %3743, align 2, !tbaa !65
  %3744 = getelementptr inbounds nuw i8, ptr %3737, i64 8
  store ptr %3744, ptr %2937, align 8, !tbaa !50
  %3745 = getelementptr inbounds nuw i8, ptr %3741, i64 %3738
  %3746 = icmp ugt ptr %3745, %39
  br i1 %3746, label %.loopexit490, label %3747

3747:                                             ; preds = %3735
  %3748 = add i32 %2973, 2
  %3749 = zext i32 %3748 to i64
  %3750 = getelementptr inbounds nuw i8, ptr %18, i64 %3749
  %3751 = load i64, ptr %3750, align 1, !tbaa !24
  %3752 = mul i64 %3751, -3523014627327384477
  %3753 = lshr i64 %3752, %2926
  %3754 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %3753
  store i32 %3748, ptr %3754, align 4, !tbaa !25
  %3755 = getelementptr inbounds i8, ptr %3745, i64 -2
  %3756 = ptrtoint ptr %3755 to i64
  %3757 = sub i64 %3756, %20
  %3758 = trunc i64 %3757 to i32
  %3759 = load i64, ptr %3755, align 1, !tbaa !24
  %3760 = mul i64 %3759, -3523014627327384477
  %3761 = lshr i64 %3760, %2926
  %3762 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %3761
  store i32 %3758, ptr %3762, align 4, !tbaa !25
  %3763 = mul i64 %3751, -3523014627193167104
  %3764 = lshr i64 %3763, %2928
  %3765 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %3764
  store i32 %3748, ptr %3765, align 4, !tbaa !25
  %3766 = getelementptr inbounds i8, ptr %3745, i64 -1
  %3767 = ptrtoint ptr %3766 to i64
  %3768 = sub i64 %3767, %20
  %3769 = trunc i64 %3768 to i32
  %3770 = load i64, ptr %3766, align 1, !tbaa !24
  %3771 = mul i64 %3770, -3523014627193167104
  %3772 = lshr i64 %3771, %2928
  %3773 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %3772
  store i32 %3769, ptr %3773, align 4, !tbaa !25
  br label %3774

3774:                                             ; preds = %3815, %3747
  %3775 = phi ptr [ %3744, %3747 ], [ %3818, %3815 ]
  %3776 = phi ptr [ %3745, %3747 ], [ %3827, %3815 ]
  %3777 = phi i32 [ %3740, %3747 ], [ %3778, %3815 ]
  %3778 = phi i32 [ %3739, %3747 ], [ %3777, %3815 ]
  %3779 = ptrtoint ptr %3776 to i64
  %3780 = sub i64 %3779, %20
  %3781 = trunc i64 %3780 to i32
  %3782 = sub i32 %3781, %3778
  %3783 = icmp ult i32 %3782, %35
  %3784 = zext i32 %3782 to i64
  %3785 = select i1 %3783, ptr %2944, ptr %18
  %3786 = getelementptr i8, ptr %3785, i64 %3784
  %3787 = sub i32 %3782, %35
  %3788 = icmp ugt i32 %3787, -4
  br i1 %3788, label %.loopexit490, label %3789

3789:                                             ; preds = %3774
  %3790 = load i32, ptr %3786, align 1, !tbaa !25
  %3791 = load i32, ptr %3776, align 1, !tbaa !25
  %3792 = icmp eq i32 %3790, %3791
  br i1 %3792, label %3793, label %.loopexit490

3793:                                             ; preds = %3789
  %3794 = select i1 %3783, ptr %55, ptr %38
  %3795 = getelementptr inbounds nuw i8, ptr %3776, i64 4
  %3796 = getelementptr inbounds nuw i8, ptr %3786, i64 4
  %3797 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %3795, ptr noundef nonnull %3796, ptr noundef %38, ptr noundef %3794, ptr noundef %37)
  %3798 = icmp ugt ptr %3776, %2933
  br i1 %3798, label %3803, label %3799

3799:                                             ; preds = %3793
  %3800 = load ptr, ptr %2934, align 8, !tbaa !38
  %3801 = load <2 x i64>, ptr %3776, align 1, !tbaa !37
  store <2 x i64> %3801, ptr %3800, align 1, !tbaa !37
  %3802 = load ptr, ptr %2937, align 8, !tbaa !50
  br label %3803

3803:                                             ; preds = %3799, %3793
  %3804 = phi ptr [ %3775, %3793 ], [ %3802, %3799 ]
  %3805 = getelementptr inbounds nuw i8, ptr %3804, i64 4
  store i16 0, ptr %3805, align 4, !tbaa !55
  store i32 1, ptr %3804, align 4, !tbaa !57
  %3806 = add i64 %3797, 1
  %3807 = icmp ugt i64 %3806, 65535
  br i1 %3807, label %3808, label %3815, !prof !58

3808:                                             ; preds = %3803
  store i32 2, ptr %2936, align 8, !tbaa !52
  %3809 = load ptr, ptr %1, align 8, !tbaa !53
  %3810 = ptrtoint ptr %3804 to i64
  %3811 = ptrtoint ptr %3809 to i64
  %3812 = sub i64 %3810, %3811
  %3813 = lshr exact i64 %3812, 3
  %3814 = trunc i64 %3813 to i32
  store i32 %3814, ptr %2938, align 4, !tbaa !54
  br label %3815

3815:                                             ; preds = %3808, %3803
  %3816 = trunc i64 %3806 to i16
  %3817 = getelementptr inbounds nuw i8, ptr %3804, i64 6
  store i16 %3816, ptr %3817, align 2, !tbaa !65
  %3818 = getelementptr inbounds nuw i8, ptr %3804, i64 8
  store ptr %3818, ptr %2937, align 8, !tbaa !50
  %3819 = load i64, ptr %3776, align 1, !tbaa !24
  %3820 = mul i64 %3819, -3523014627193167104
  %3821 = lshr i64 %3820, %2928
  %3822 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %3821
  store i32 %3781, ptr %3822, align 4, !tbaa !25
  %3823 = mul i64 %3819, -3523014627327384477
  %3824 = lshr i64 %3823, %2926
  %3825 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %3824
  store i32 %3781, ptr %3825, align 4, !tbaa !25
  %3826 = getelementptr i8, ptr %3776, i64 %3797
  %3827 = getelementptr i8, ptr %3826, i64 4
  %3828 = icmp ugt ptr %3827, %39
  br i1 %3828, label %.loopexit490, label %3774

.loopexit490:                                     ; preds = %3815, %3789, %3774, %3735, %3303
  %3829 = phi i32 [ %2949, %3303 ], [ %3739, %3735 ], [ %3777, %3815 ], [ %3778, %3789 ], [ %3778, %3774 ]
  %3830 = phi i32 [ %2948, %3303 ], [ %3740, %3735 ], [ %3778, %3815 ], [ %3777, %3789 ], [ %3777, %3774 ]
  %3831 = phi ptr [ %2947, %3303 ], [ %3745, %3735 ], [ %3827, %3815 ], [ %3776, %3789 ], [ %3776, %3774 ]
  %3832 = phi ptr [ %3308, %3303 ], [ %3745, %3735 ], [ %3827, %3815 ], [ %3776, %3789 ], [ %3776, %3774 ]
  %3833 = icmp ult ptr %3832, %39
  br i1 %3833, label %2945, label %3834

3834:                                             ; preds = %.loopexit490
  %3835 = ptrtoint ptr %3831 to i64
  br label %3836

3836:                                             ; preds = %3834, %.loopexit538, %2894, %.loopexit640, %1954, %.loopexit589, %1014, %.loopexit487
  %3837 = phi i32 [ %1010, %1014 ], [ %40, %.loopexit487 ], [ %1950, %1954 ], [ %40, %.loopexit589 ], [ %2890, %2894 ], [ %40, %.loopexit640 ], [ %3830, %3834 ], [ %40, %.loopexit538 ]
  %3838 = phi i32 [ %1009, %1014 ], [ %42, %.loopexit487 ], [ %1949, %1954 ], [ %42, %.loopexit589 ], [ %2889, %2894 ], [ %42, %.loopexit640 ], [ %3829, %3834 ], [ %42, %.loopexit538 ]
  %3839 = phi i64 [ %1015, %1014 ], [ %19, %.loopexit487 ], [ %1955, %1954 ], [ %19, %.loopexit589 ], [ %2895, %2894 ], [ %19, %.loopexit640 ], [ %3835, %3834 ], [ %19, %.loopexit538 ]
  store i32 %3837, ptr %2, align 4, !tbaa !25
  store i32 %3838, ptr %41, align 4, !tbaa !25
  %3840 = ptrtoint ptr %38 to i64
  %3841 = sub i64 %3840, %3839
  ret i64 %3841
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local i64 @ZSTD_compressBlock_doubleFast_extDict(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %7 = load i32, ptr %6, align 8, !tbaa !29
  %8 = add i32 %7, -5
  %9 = icmp ult i32 %8, 3
  %10 = select i1 %9, i32 %7, i32 4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %15 = load i32, ptr %14, align 8, !tbaa !23
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %17 = load ptr, ptr %16, align 8, !tbaa !19
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 260
  %19 = load i32, ptr %18, align 4, !tbaa !22
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %23 = load ptr, ptr %22, align 8, !tbaa !20
  %24 = ptrtoint ptr %3 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = add i64 %4, %24
  %27 = sub i64 %26, %25
  %28 = trunc i64 %27 to i32
  %29 = load i32, ptr %11, align 8, !tbaa !30
  %30 = getelementptr i8, ptr %0, i64 28
  %31 = load i32, ptr %30, align 4, !tbaa !140
  %32 = getelementptr i8, ptr %0, i64 40
  %33 = load i32, ptr %32, align 8, !tbaa !32
  %34 = shl nuw i32 1, %29
  %35 = sub i32 %28, %31
  %36 = icmp ugt i32 %35, %34
  %37 = sub i32 %28, %34
  %38 = icmp eq i32 %33, 0
  %39 = select i1 %38, i1 %36, i1 false
  %40 = select i1 %39, i32 %37, i32 %31
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %42 = load i32, ptr %41, align 8, !tbaa !31
  %43 = tail call i32 @llvm.umax.i32(i32 %42, i32 %40)
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds nuw i8, ptr %23, i64 %44
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %47 = load ptr, ptr %46, align 8, !tbaa !141
  %48 = zext i32 %40 to i64
  %49 = getelementptr inbounds nuw i8, ptr %47, i64 %48
  %50 = getelementptr inbounds nuw i8, ptr %47, i64 %44
  %51 = load i32, ptr %2, align 4, !tbaa !25
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %53 = load i32, ptr %52, align 4, !tbaa !25
  %54 = icmp ult i32 %40, %42
  br i1 %54, label %55, label %69

55:                                               ; preds = %5
  %56 = icmp sgt i64 %4, 8
  br i1 %56, label %57, label %895

57:                                               ; preds = %55
  %58 = sub i32 32, %19
  %59 = sub i32 64, %19
  %60 = zext nneg i32 %59 to i64
  %61 = sub i32 64, %15
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %20, i64 -32
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %65 = ptrtoint ptr %63 to i64
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %68 = getelementptr inbounds nuw i8, ptr %1, i64 76
  br label %.split.i

69:                                               ; preds = %5
  %70 = tail call i64 @ZSTD_compressBlock_doubleFast(ptr noundef nonnull readonly %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %4)
  br label %ZSTD_compressBlock_doubleFast_extDict_generic.exit

.split.i:                                         ; preds = %.loopexit.i, %57
  %71 = phi ptr [ %891, %.loopexit.i ], [ %3, %57 ]
  %72 = phi ptr [ %890, %.loopexit.i ], [ %3, %57 ]
  %73 = phi i32 [ %889, %.loopexit.i ], [ %51, %57 ]
  %74 = phi i32 [ %888, %.loopexit.i ], [ %53, %57 ]
  switch i32 %10, label %.split.unreachabledefault.i [
    i32 7, label %89
    i32 5, label %81
    i32 6, label %85
    i32 4, label %75
  ]

.split.unreachabledefault.i:                      ; preds = %.split.i
  unreachable

default.unreachable178.i:                         ; preds = %754, %856
  unreachable

75:                                               ; preds = %.split.i
  %76 = load i32, ptr %71, align 1, !tbaa !25
  %77 = mul i32 %76, -1640531535
  %78 = lshr i32 %77, %58
  %79 = zext i32 %78 to i64
  %80 = load i64, ptr %71, align 1, !tbaa !24
  br label %93

81:                                               ; preds = %.split.i
  %82 = load i64, ptr %71, align 1, !tbaa !24
  %83 = mul i64 %82, -3523014627271114752
  %84 = lshr i64 %83, %60
  br label %93

85:                                               ; preds = %.split.i
  %86 = load i64, ptr %71, align 1, !tbaa !24
  %87 = mul i64 %86, -3523014627193847808
  %88 = lshr i64 %87, %60
  br label %93

89:                                               ; preds = %.split.i
  %90 = load i64, ptr %71, align 1, !tbaa !24
  %91 = mul i64 %90, -3523014627193167104
  %92 = lshr i64 %91, %60
  br label %93

93:                                               ; preds = %89, %85, %81, %75
  %94 = phi i64 [ %80, %75 ], [ %82, %81 ], [ %86, %85 ], [ %90, %89 ]
  %95 = phi i64 [ %79, %75 ], [ %84, %81 ], [ %88, %85 ], [ %92, %89 ]
  %96 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !25
  %98 = icmp ult i32 %97, %43
  %99 = select i1 %98, ptr %47, ptr %23
  %100 = zext i32 %97 to i64
  %101 = getelementptr inbounds nuw i8, ptr %99, i64 %100
  %102 = mul i64 %94, -3523014627327384477
  %103 = lshr i64 %102, %62
  %104 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !25
  %106 = icmp ult i32 %105, %43
  %107 = select i1 %106, ptr %47, ptr %23
  %108 = zext i32 %105 to i64
  %109 = getelementptr inbounds nuw i8, ptr %107, i64 %108
  %110 = ptrtoint ptr %71 to i64
  %111 = sub i64 %110, %25
  %112 = trunc i64 %111 to i32
  %113 = add i32 %112, 1
  %114 = sub i32 %113, %73
  %115 = icmp ult i32 %114, %43
  %116 = select i1 %115, ptr %47, ptr %23
  %117 = zext i32 %114 to i64
  %118 = getelementptr inbounds nuw i8, ptr %116, i64 %117
  store i32 %112, ptr %104, align 4, !tbaa !25
  store i32 %112, ptr %96, align 4, !tbaa !25
  %119 = sub i32 %114, %43
  %120 = icmp ugt i32 %119, -4
  %121 = sub i32 %113, %40
  %122 = icmp ugt i32 %73, %121
  %123 = select i1 %122, i1 true, i1 %120
  br i1 %123, label %295, label %124

124:                                              ; preds = %93
  %125 = load i32, ptr %118, align 1, !tbaa !25
  %126 = getelementptr inbounds nuw i8, ptr %71, i64 1
  %127 = load i32, ptr %126, align 1, !tbaa !25
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %295

129:                                              ; preds = %124
  %130 = select i1 %115, ptr %50, ptr %20
  %131 = getelementptr inbounds nuw i8, ptr %71, i64 5
  %132 = getelementptr inbounds nuw i8, ptr %118, i64 4
  %133 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %131, ptr noundef nonnull %132, ptr noundef nonnull %20, ptr noundef nonnull %130, ptr noundef nonnull %45)
  %134 = add i64 %133, 4
  %135 = ptrtoint ptr %126 to i64
  %136 = ptrtoint ptr %72 to i64
  %137 = sub i64 %135, %136
  %138 = icmp ugt ptr %126, %63
  %139 = load ptr, ptr %64, align 8, !tbaa !38
  br i1 %138, label %162, label %140

140:                                              ; preds = %129
  %141 = load <2 x i64>, ptr %72, align 1, !tbaa !37
  store <2 x i64> %141, ptr %139, align 1, !tbaa !37
  %142 = icmp ugt i64 %137, 16
  br i1 %142, label %143, label %274

143:                                              ; preds = %140
  %144 = load ptr, ptr %64, align 8, !tbaa !38
  %145 = getelementptr inbounds nuw i8, ptr %144, i64 16
  %146 = getelementptr inbounds nuw i8, ptr %72, i64 16
  %147 = getelementptr i8, ptr %144, i64 %137
  %148 = load <2 x i64>, ptr %146, align 1, !tbaa !37
  store <2 x i64> %148, ptr %145, align 1, !tbaa !37
  %149 = icmp ult i64 %137, 33
  br i1 %149, label %274, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds nuw i8, ptr %144, i64 32
  br label %152

152:                                              ; preds = %152, %150
  %153 = phi ptr [ %151, %150 ], [ %160, %152 ]
  %154 = phi ptr [ %146, %150 ], [ %158, %152 ]
  %155 = getelementptr inbounds nuw i8, ptr %154, i64 16
  %156 = load <2 x i64>, ptr %155, align 1, !tbaa !37
  store <2 x i64> %156, ptr %153, align 1, !tbaa !37
  %157 = getelementptr inbounds nuw i8, ptr %153, i64 16
  %158 = getelementptr inbounds nuw i8, ptr %154, i64 32
  %159 = load <2 x i64>, ptr %158, align 1, !tbaa !37
  store <2 x i64> %159, ptr %157, align 1, !tbaa !37
  %160 = getelementptr inbounds nuw i8, ptr %153, i64 32
  %161 = icmp ult ptr %160, %147
  br i1 %161, label %152, label %.loopexit80.i, !llvm.loop !41

162:                                              ; preds = %129
  %163 = icmp ugt ptr %72, %63
  br i1 %163, label %.loopexit83.i, label %164

164:                                              ; preds = %162
  %165 = sub i64 %65, %136
  %166 = getelementptr inbounds i8, ptr %139, i64 %165
  %167 = load <2 x i64>, ptr %72, align 1, !tbaa !37
  store <2 x i64> %167, ptr %139, align 1, !tbaa !37
  %168 = icmp ult i64 %165, 17
  br i1 %168, label %.loopexit83.i, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds nuw i8, ptr %139, i64 16
  br label %171

171:                                              ; preds = %171, %169
  %172 = phi ptr [ %170, %169 ], [ %179, %171 ]
  %173 = phi ptr [ %72, %169 ], [ %177, %171 ]
  %174 = getelementptr inbounds nuw i8, ptr %173, i64 16
  %175 = load <2 x i64>, ptr %174, align 1, !tbaa !37
  store <2 x i64> %175, ptr %172, align 1, !tbaa !37
  %176 = getelementptr inbounds nuw i8, ptr %172, i64 16
  %177 = getelementptr inbounds nuw i8, ptr %173, i64 32
  %178 = load <2 x i64>, ptr %177, align 1, !tbaa !37
  store <2 x i64> %178, ptr %176, align 1, !tbaa !37
  %179 = getelementptr inbounds nuw i8, ptr %172, i64 32
  %180 = icmp ult ptr %179, %166
  br i1 %180, label %171, label %.loopexit83.i, !llvm.loop !41

.loopexit83.i:                                    ; preds = %171, %164, %162
  %181 = phi ptr [ %63, %164 ], [ %72, %162 ], [ %63, %171 ]
  %182 = phi ptr [ %166, %164 ], [ %139, %162 ], [ %166, %171 ]
  %183 = icmp ult ptr %181, %126
  br i1 %183, label %184, label %.loopexit80.i

184:                                              ; preds = %.loopexit83.i
  %185 = ptrtoint ptr %181 to i64
  %186 = ptrtoint ptr %182 to i64
  %187 = add i64 %110, 1
  %188 = sub i64 %187, %185
  %189 = icmp ult i64 %188, 4
  %190 = sub i64 %186, %185
  %191 = icmp ult i64 %190, 32
  %192 = select i1 %189, i1 true, i1 %191
  br i1 %192, label %228, label %193

193:                                              ; preds = %184
  %194 = icmp ult i64 %188, 32
  br i1 %194, label %214, label %195

195:                                              ; preds = %193
  %196 = and i64 %188, -32
  br label %197

197:                                              ; preds = %197, %195
  %198 = phi i64 [ 0, %195 ], [ %205, %197 ]
  %199 = getelementptr i8, ptr %182, i64 %198
  %200 = getelementptr i8, ptr %181, i64 %198
  %201 = getelementptr i8, ptr %200, i64 16
  %202 = load <16 x i8>, ptr %200, align 1, !tbaa !37
  %203 = load <16 x i8>, ptr %201, align 1, !tbaa !37
  %204 = getelementptr i8, ptr %199, i64 16
  store <16 x i8> %202, ptr %199, align 1, !tbaa !37
  store <16 x i8> %203, ptr %204, align 1, !tbaa !37
  %205 = add nuw i64 %198, 32
  %206 = icmp eq i64 %205, %196
  br i1 %206, label %207, label %197, !llvm.loop !142

207:                                              ; preds = %197
  %208 = icmp eq i64 %188, %196
  br i1 %208, label %.loopexit80.i, label %209

209:                                              ; preds = %207
  %210 = getelementptr i8, ptr %182, i64 %196
  %211 = getelementptr i8, ptr %181, i64 %196
  %212 = and i64 %188, 28
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %228, label %214

214:                                              ; preds = %209, %193
  %215 = phi i64 [ %196, %209 ], [ 0, %193 ]
  %216 = and i64 %188, -4
  br label %217

217:                                              ; preds = %217, %214
  %218 = phi i64 [ %215, %214 ], [ %222, %217 ]
  %219 = getelementptr i8, ptr %182, i64 %218
  %220 = getelementptr i8, ptr %181, i64 %218
  %221 = load <4 x i8>, ptr %220, align 1, !tbaa !37
  store <4 x i8> %221, ptr %219, align 1, !tbaa !37
  %222 = add nuw i64 %218, 4
  %223 = icmp eq i64 %222, %216
  br i1 %223, label %224, label %217, !llvm.loop !143

224:                                              ; preds = %217
  %225 = getelementptr i8, ptr %182, i64 %216
  %226 = getelementptr i8, ptr %181, i64 %216
  %227 = icmp eq i64 %188, %216
  br i1 %227, label %.loopexit80.i, label %228

228:                                              ; preds = %224, %209, %184
  %229 = phi ptr [ %182, %184 ], [ %210, %209 ], [ %225, %224 ]
  %230 = phi ptr [ %181, %184 ], [ %211, %209 ], [ %226, %224 ]
  %231 = ptrtoint ptr %230 to i64
  %232 = sub i64 %187, %231
  %233 = sub i64 %110, %231
  %234 = and i64 %232, 7
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %.loopexit82.i, label %.preheader81.i

.preheader81.i:                                   ; preds = %228, %.preheader81.i
  %236 = phi ptr [ %241, %.preheader81.i ], [ %229, %228 ]
  %237 = phi ptr [ %239, %.preheader81.i ], [ %230, %228 ]
  %238 = phi i64 [ %242, %.preheader81.i ], [ 0, %228 ]
  %239 = getelementptr inbounds nuw i8, ptr %237, i64 1
  %240 = load i8, ptr %237, align 1, !tbaa !37
  %241 = getelementptr inbounds nuw i8, ptr %236, i64 1
  store i8 %240, ptr %236, align 1, !tbaa !37
  %242 = add nuw nsw i64 %238, 1
  %243 = icmp eq i64 %242, %234
  br i1 %243, label %.loopexit82.i, label %.preheader81.i, !llvm.loop !144

.loopexit82.i:                                    ; preds = %.preheader81.i, %228
  %244 = phi ptr [ %229, %228 ], [ %241, %.preheader81.i ]
  %245 = phi ptr [ %230, %228 ], [ %239, %.preheader81.i ]
  %246 = icmp ult i64 %233, 7
  br i1 %246, label %.loopexit80.i, label %.preheader79.i

.preheader79.i:                                   ; preds = %.loopexit82.i, %.preheader79.i
  %247 = phi ptr [ %272, %.preheader79.i ], [ %244, %.loopexit82.i ]
  %248 = phi ptr [ %270, %.preheader79.i ], [ %245, %.loopexit82.i ]
  %249 = getelementptr inbounds nuw i8, ptr %248, i64 1
  %250 = load i8, ptr %248, align 1, !tbaa !37
  %251 = getelementptr inbounds nuw i8, ptr %247, i64 1
  store i8 %250, ptr %247, align 1, !tbaa !37
  %252 = getelementptr inbounds nuw i8, ptr %248, i64 2
  %253 = load i8, ptr %249, align 1, !tbaa !37
  %254 = getelementptr inbounds nuw i8, ptr %247, i64 2
  store i8 %253, ptr %251, align 1, !tbaa !37
  %255 = getelementptr inbounds nuw i8, ptr %248, i64 3
  %256 = load i8, ptr %252, align 1, !tbaa !37
  %257 = getelementptr inbounds nuw i8, ptr %247, i64 3
  store i8 %256, ptr %254, align 1, !tbaa !37
  %258 = getelementptr inbounds nuw i8, ptr %248, i64 4
  %259 = load i8, ptr %255, align 1, !tbaa !37
  %260 = getelementptr inbounds nuw i8, ptr %247, i64 4
  store i8 %259, ptr %257, align 1, !tbaa !37
  %261 = getelementptr inbounds nuw i8, ptr %248, i64 5
  %262 = load i8, ptr %258, align 1, !tbaa !37
  %263 = getelementptr inbounds nuw i8, ptr %247, i64 5
  store i8 %262, ptr %260, align 1, !tbaa !37
  %264 = getelementptr inbounds nuw i8, ptr %248, i64 6
  %265 = load i8, ptr %261, align 1, !tbaa !37
  %266 = getelementptr inbounds nuw i8, ptr %247, i64 6
  store i8 %265, ptr %263, align 1, !tbaa !37
  %267 = getelementptr inbounds nuw i8, ptr %248, i64 7
  %268 = load i8, ptr %264, align 1, !tbaa !37
  %269 = getelementptr inbounds nuw i8, ptr %247, i64 7
  store i8 %268, ptr %266, align 1, !tbaa !37
  %270 = getelementptr inbounds nuw i8, ptr %248, i64 8
  %271 = load i8, ptr %267, align 1, !tbaa !37
  %272 = getelementptr inbounds nuw i8, ptr %247, i64 8
  store i8 %271, ptr %269, align 1, !tbaa !37
  %273 = icmp eq ptr %267, %71
  br i1 %273, label %.loopexit80.i, label %.preheader79.i, !llvm.loop !145

274:                                              ; preds = %143, %140
  %275 = load ptr, ptr %64, align 8, !tbaa !38
  %276 = getelementptr inbounds nuw i8, ptr %275, i64 %137
  store ptr %276, ptr %64, align 8, !tbaa !38
  %277 = load ptr, ptr %67, align 8, !tbaa !50
  br label %289

.loopexit80.i:                                    ; preds = %152, %.preheader79.i, %.loopexit82.i, %224, %207, %.loopexit83.i
  %278 = load ptr, ptr %64, align 8, !tbaa !38
  %279 = getelementptr inbounds nuw i8, ptr %278, i64 %137
  store ptr %279, ptr %64, align 8, !tbaa !38
  %280 = icmp ugt i64 %137, 65535
  %281 = load ptr, ptr %67, align 8, !tbaa !50
  br i1 %280, label %282, label %289, !prof !115

282:                                              ; preds = %.loopexit80.i
  store i32 1, ptr %66, align 8, !tbaa !52
  %283 = load ptr, ptr %1, align 8, !tbaa !53
  %284 = ptrtoint ptr %281 to i64
  %285 = ptrtoint ptr %283 to i64
  %286 = sub i64 %284, %285
  %287 = lshr exact i64 %286, 3
  %288 = trunc i64 %287 to i32
  store i32 %288, ptr %68, align 4, !tbaa !54
  br label %289

289:                                              ; preds = %282, %.loopexit80.i, %274
  %290 = phi ptr [ %277, %274 ], [ %281, %282 ], [ %281, %.loopexit80.i ]
  %291 = trunc i64 %137 to i16
  %292 = getelementptr inbounds nuw i8, ptr %290, i64 4
  store i16 %291, ptr %292, align 4, !tbaa !55
  store i32 1, ptr %290, align 4, !tbaa !57
  %293 = add i64 %133, 1
  %294 = icmp ugt i64 %293, 65535
  br i1 %294, label %729, label %742, !prof !58

295:                                              ; preds = %124, %93
  %296 = icmp ugt i32 %105, %40
  br i1 %296, label %297, label %491

297:                                              ; preds = %295
  %298 = load i64, ptr %109, align 1, !tbaa !24
  %299 = icmp eq i64 %298, %94
  br i1 %299, label %300, label %491

300:                                              ; preds = %297
  %301 = select i1 %106, ptr %50, ptr %20
  %302 = select i1 %106, ptr %49, ptr %45
  %303 = getelementptr inbounds nuw i8, ptr %71, i64 8
  %304 = getelementptr inbounds nuw i8, ptr %109, i64 8
  %305 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %303, ptr noundef nonnull %304, ptr noundef nonnull %20, ptr noundef nonnull %301, ptr noundef nonnull %45)
  %306 = add i64 %305, 8
  %307 = sub i32 %112, %105
  %308 = icmp ugt ptr %71, %72
  %309 = icmp ugt ptr %109, %302
  %310 = and i1 %308, %309
  br i1 %310, label %.preheader64.i, label %328

.preheader64.i:                                   ; preds = %300, %319
  %311 = phi ptr [ %314, %319 ], [ %71, %300 ]
  %312 = phi ptr [ %316, %319 ], [ %109, %300 ]
  %313 = phi i64 [ %320, %319 ], [ %306, %300 ]
  %314 = getelementptr inbounds i8, ptr %311, i64 -1
  %315 = load i8, ptr %314, align 1, !tbaa !37
  %316 = getelementptr inbounds i8, ptr %312, i64 -1
  %317 = load i8, ptr %316, align 1, !tbaa !37
  %318 = icmp eq i8 %315, %317
  br i1 %318, label %319, label %324

319:                                              ; preds = %.preheader64.i
  %320 = add i64 %313, 1
  %321 = icmp ugt ptr %314, %72
  %322 = icmp ugt ptr %316, %302
  %323 = and i1 %321, %322
  br i1 %323, label %.preheader64.i, label %324, !llvm.loop !146

324:                                              ; preds = %319, %.preheader64.i
  %325 = phi i64 [ %313, %.preheader64.i ], [ %320, %319 ]
  %326 = phi ptr [ %311, %.preheader64.i ], [ %314, %319 ]
  %327 = ptrtoint ptr %326 to i64
  br label %328

328:                                              ; preds = %324, %300
  %329 = phi i64 [ %327, %324 ], [ %110, %300 ]
  %330 = phi i64 [ %325, %324 ], [ %306, %300 ]
  %331 = phi ptr [ %326, %324 ], [ %71, %300 ]
  %332 = ptrtoint ptr %72 to i64
  %333 = sub i64 %329, %332
  %334 = add i32 %307, 3
  %335 = icmp ugt ptr %331, %63
  %336 = load ptr, ptr %64, align 8, !tbaa !38
  br i1 %335, label %359, label %337

337:                                              ; preds = %328
  %338 = load <2 x i64>, ptr %72, align 1, !tbaa !37
  store <2 x i64> %338, ptr %336, align 1, !tbaa !37
  %339 = icmp ugt i64 %333, 16
  br i1 %339, label %340, label %470

340:                                              ; preds = %337
  %341 = load ptr, ptr %64, align 8, !tbaa !38
  %342 = getelementptr inbounds nuw i8, ptr %341, i64 16
  %343 = getelementptr inbounds nuw i8, ptr %72, i64 16
  %344 = getelementptr i8, ptr %341, i64 %333
  %345 = load <2 x i64>, ptr %343, align 1, !tbaa !37
  store <2 x i64> %345, ptr %342, align 1, !tbaa !37
  %346 = icmp ult i64 %333, 33
  br i1 %346, label %470, label %347

347:                                              ; preds = %340
  %348 = getelementptr inbounds nuw i8, ptr %341, i64 32
  br label %349

349:                                              ; preds = %349, %347
  %350 = phi ptr [ %348, %347 ], [ %357, %349 ]
  %351 = phi ptr [ %343, %347 ], [ %355, %349 ]
  %352 = getelementptr inbounds nuw i8, ptr %351, i64 16
  %353 = load <2 x i64>, ptr %352, align 1, !tbaa !37
  store <2 x i64> %353, ptr %350, align 1, !tbaa !37
  %354 = getelementptr inbounds nuw i8, ptr %350, i64 16
  %355 = getelementptr inbounds nuw i8, ptr %351, i64 32
  %356 = load <2 x i64>, ptr %355, align 1, !tbaa !37
  store <2 x i64> %356, ptr %354, align 1, !tbaa !37
  %357 = getelementptr inbounds nuw i8, ptr %350, i64 32
  %358 = icmp ult ptr %357, %344
  br i1 %358, label %349, label %.loopexit59.i, !llvm.loop !41

359:                                              ; preds = %328
  %360 = icmp ugt ptr %72, %63
  br i1 %360, label %.loopexit62.i, label %361

361:                                              ; preds = %359
  %362 = sub i64 %65, %332
  %363 = getelementptr inbounds i8, ptr %336, i64 %362
  %364 = load <2 x i64>, ptr %72, align 1, !tbaa !37
  store <2 x i64> %364, ptr %336, align 1, !tbaa !37
  %365 = icmp ult i64 %362, 17
  br i1 %365, label %.loopexit62.i, label %366

366:                                              ; preds = %361
  %367 = getelementptr inbounds nuw i8, ptr %336, i64 16
  br label %368

368:                                              ; preds = %368, %366
  %369 = phi ptr [ %367, %366 ], [ %376, %368 ]
  %370 = phi ptr [ %72, %366 ], [ %374, %368 ]
  %371 = getelementptr inbounds nuw i8, ptr %370, i64 16
  %372 = load <2 x i64>, ptr %371, align 1, !tbaa !37
  store <2 x i64> %372, ptr %369, align 1, !tbaa !37
  %373 = getelementptr inbounds nuw i8, ptr %369, i64 16
  %374 = getelementptr inbounds nuw i8, ptr %370, i64 32
  %375 = load <2 x i64>, ptr %374, align 1, !tbaa !37
  store <2 x i64> %375, ptr %373, align 1, !tbaa !37
  %376 = getelementptr inbounds nuw i8, ptr %369, i64 32
  %377 = icmp ult ptr %376, %363
  br i1 %377, label %368, label %.loopexit62.i, !llvm.loop !41

.loopexit62.i:                                    ; preds = %368, %361, %359
  %378 = phi ptr [ %63, %361 ], [ %72, %359 ], [ %63, %368 ]
  %379 = phi ptr [ %363, %361 ], [ %336, %359 ], [ %363, %368 ]
  %380 = icmp ult ptr %378, %331
  br i1 %380, label %381, label %.loopexit59.i

381:                                              ; preds = %.loopexit62.i
  %382 = ptrtoint ptr %378 to i64
  %383 = ptrtoint ptr %379 to i64
  %384 = sub i64 %329, %382
  %385 = icmp ult i64 %384, 4
  %386 = sub i64 %383, %382
  %387 = icmp ult i64 %386, 32
  %388 = select i1 %385, i1 true, i1 %387
  br i1 %388, label %424, label %389

389:                                              ; preds = %381
  %390 = icmp ult i64 %384, 32
  br i1 %390, label %410, label %391

391:                                              ; preds = %389
  %392 = and i64 %384, -32
  br label %393

393:                                              ; preds = %393, %391
  %394 = phi i64 [ 0, %391 ], [ %401, %393 ]
  %395 = getelementptr i8, ptr %379, i64 %394
  %396 = getelementptr i8, ptr %378, i64 %394
  %397 = getelementptr i8, ptr %396, i64 16
  %398 = load <16 x i8>, ptr %396, align 1, !tbaa !37
  %399 = load <16 x i8>, ptr %397, align 1, !tbaa !37
  %400 = getelementptr i8, ptr %395, i64 16
  store <16 x i8> %398, ptr %395, align 1, !tbaa !37
  store <16 x i8> %399, ptr %400, align 1, !tbaa !37
  %401 = add nuw i64 %394, 32
  %402 = icmp eq i64 %401, %392
  br i1 %402, label %403, label %393, !llvm.loop !147

403:                                              ; preds = %393
  %404 = icmp eq i64 %384, %392
  br i1 %404, label %.loopexit59.i, label %405

405:                                              ; preds = %403
  %406 = getelementptr i8, ptr %379, i64 %392
  %407 = getelementptr i8, ptr %378, i64 %392
  %408 = and i64 %384, 28
  %409 = icmp eq i64 %408, 0
  br i1 %409, label %424, label %410

410:                                              ; preds = %405, %389
  %411 = phi i64 [ %392, %405 ], [ 0, %389 ]
  %412 = and i64 %384, -4
  br label %413

413:                                              ; preds = %413, %410
  %414 = phi i64 [ %411, %410 ], [ %418, %413 ]
  %415 = getelementptr i8, ptr %379, i64 %414
  %416 = getelementptr i8, ptr %378, i64 %414
  %417 = load <4 x i8>, ptr %416, align 1, !tbaa !37
  store <4 x i8> %417, ptr %415, align 1, !tbaa !37
  %418 = add nuw i64 %414, 4
  %419 = icmp eq i64 %418, %412
  br i1 %419, label %420, label %413, !llvm.loop !148

420:                                              ; preds = %413
  %421 = getelementptr i8, ptr %379, i64 %412
  %422 = getelementptr i8, ptr %378, i64 %412
  %423 = icmp eq i64 %384, %412
  br i1 %423, label %.loopexit59.i, label %424

424:                                              ; preds = %420, %405, %381
  %425 = phi ptr [ %379, %381 ], [ %406, %405 ], [ %421, %420 ]
  %426 = phi ptr [ %378, %381 ], [ %407, %405 ], [ %422, %420 ]
  %427 = ptrtoint ptr %426 to i64
  %428 = sub i64 %329, %427
  %429 = and i64 %428, 7
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %.loopexit61.i, label %.preheader60.i

.preheader60.i:                                   ; preds = %424, %.preheader60.i
  %431 = phi ptr [ %436, %.preheader60.i ], [ %425, %424 ]
  %432 = phi ptr [ %434, %.preheader60.i ], [ %426, %424 ]
  %433 = phi i64 [ %437, %.preheader60.i ], [ 0, %424 ]
  %434 = getelementptr inbounds nuw i8, ptr %432, i64 1
  %435 = load i8, ptr %432, align 1, !tbaa !37
  %436 = getelementptr inbounds nuw i8, ptr %431, i64 1
  store i8 %435, ptr %431, align 1, !tbaa !37
  %437 = add nuw nsw i64 %433, 1
  %438 = icmp eq i64 %437, %429
  br i1 %438, label %.loopexit61.i, label %.preheader60.i, !llvm.loop !149

.loopexit61.i:                                    ; preds = %.preheader60.i, %424
  %439 = phi ptr [ %425, %424 ], [ %436, %.preheader60.i ]
  %440 = phi ptr [ %426, %424 ], [ %434, %.preheader60.i ]
  %441 = sub i64 %427, %329
  %442 = icmp ugt i64 %441, -8
  br i1 %442, label %.loopexit59.i, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit61.i, %.preheader.i
  %443 = phi ptr [ %468, %.preheader.i ], [ %439, %.loopexit61.i ]
  %444 = phi ptr [ %466, %.preheader.i ], [ %440, %.loopexit61.i ]
  %445 = getelementptr inbounds nuw i8, ptr %444, i64 1
  %446 = load i8, ptr %444, align 1, !tbaa !37
  %447 = getelementptr inbounds nuw i8, ptr %443, i64 1
  store i8 %446, ptr %443, align 1, !tbaa !37
  %448 = getelementptr inbounds nuw i8, ptr %444, i64 2
  %449 = load i8, ptr %445, align 1, !tbaa !37
  %450 = getelementptr inbounds nuw i8, ptr %443, i64 2
  store i8 %449, ptr %447, align 1, !tbaa !37
  %451 = getelementptr inbounds nuw i8, ptr %444, i64 3
  %452 = load i8, ptr %448, align 1, !tbaa !37
  %453 = getelementptr inbounds nuw i8, ptr %443, i64 3
  store i8 %452, ptr %450, align 1, !tbaa !37
  %454 = getelementptr inbounds nuw i8, ptr %444, i64 4
  %455 = load i8, ptr %451, align 1, !tbaa !37
  %456 = getelementptr inbounds nuw i8, ptr %443, i64 4
  store i8 %455, ptr %453, align 1, !tbaa !37
  %457 = getelementptr inbounds nuw i8, ptr %444, i64 5
  %458 = load i8, ptr %454, align 1, !tbaa !37
  %459 = getelementptr inbounds nuw i8, ptr %443, i64 5
  store i8 %458, ptr %456, align 1, !tbaa !37
  %460 = getelementptr inbounds nuw i8, ptr %444, i64 6
  %461 = load i8, ptr %457, align 1, !tbaa !37
  %462 = getelementptr inbounds nuw i8, ptr %443, i64 6
  store i8 %461, ptr %459, align 1, !tbaa !37
  %463 = getelementptr inbounds nuw i8, ptr %444, i64 7
  %464 = load i8, ptr %460, align 1, !tbaa !37
  %465 = getelementptr inbounds nuw i8, ptr %443, i64 7
  store i8 %464, ptr %462, align 1, !tbaa !37
  %466 = getelementptr inbounds nuw i8, ptr %444, i64 8
  %467 = load i8, ptr %463, align 1, !tbaa !37
  %468 = getelementptr inbounds nuw i8, ptr %443, i64 8
  store i8 %467, ptr %465, align 1, !tbaa !37
  %469 = icmp eq ptr %466, %331
  br i1 %469, label %.loopexit59.i, label %.preheader.i, !llvm.loop !150

470:                                              ; preds = %340, %337
  %471 = load ptr, ptr %64, align 8, !tbaa !38
  %472 = getelementptr inbounds nuw i8, ptr %471, i64 %333
  store ptr %472, ptr %64, align 8, !tbaa !38
  %473 = load ptr, ptr %67, align 8, !tbaa !50
  br label %485

.loopexit59.i:                                    ; preds = %349, %.preheader.i, %.loopexit61.i, %420, %403, %.loopexit62.i
  %474 = load ptr, ptr %64, align 8, !tbaa !38
  %475 = getelementptr inbounds nuw i8, ptr %474, i64 %333
  store ptr %475, ptr %64, align 8, !tbaa !38
  %476 = icmp ugt i64 %333, 65535
  %477 = load ptr, ptr %67, align 8, !tbaa !50
  br i1 %476, label %478, label %485, !prof !51

478:                                              ; preds = %.loopexit59.i
  store i32 1, ptr %66, align 8, !tbaa !52
  %479 = load ptr, ptr %1, align 8, !tbaa !53
  %480 = ptrtoint ptr %477 to i64
  %481 = ptrtoint ptr %479 to i64
  %482 = sub i64 %480, %481
  %483 = lshr exact i64 %482, 3
  %484 = trunc i64 %483 to i32
  store i32 %484, ptr %68, align 4, !tbaa !54
  br label %485

485:                                              ; preds = %478, %.loopexit59.i, %470
  %486 = phi ptr [ %473, %470 ], [ %477, %478 ], [ %477, %.loopexit59.i ]
  %487 = trunc i64 %333 to i16
  %488 = getelementptr inbounds nuw i8, ptr %486, i64 4
  store i16 %487, ptr %488, align 4, !tbaa !55
  store i32 %334, ptr %486, align 4, !tbaa !57
  %489 = add i64 %330, -3
  %490 = icmp ugt i64 %489, 65535
  br i1 %490, label %729, label %742, !prof !58

491:                                              ; preds = %297, %295
  %492 = icmp ugt i32 %97, %40
  br i1 %492, label %493, label %723

493:                                              ; preds = %491
  %494 = load i32, ptr %101, align 1, !tbaa !25
  %495 = load i32, ptr %71, align 1, !tbaa !25
  %496 = icmp eq i32 %494, %495
  br i1 %496, label %497, label %723

497:                                              ; preds = %493
  %498 = getelementptr inbounds nuw i8, ptr %71, i64 1
  %499 = load i64, ptr %498, align 1, !tbaa !24
  %500 = mul i64 %499, -3523014627327384477
  %501 = lshr i64 %500, %62
  %502 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %501
  %503 = load i32, ptr %502, align 4, !tbaa !25
  %504 = icmp ult i32 %503, %43
  %505 = select i1 %504, ptr %47, ptr %23
  %506 = zext i32 %503 to i64
  %507 = getelementptr inbounds nuw i8, ptr %505, i64 %506
  store i32 %113, ptr %502, align 4, !tbaa !25
  %508 = icmp ugt i32 %503, %40
  br i1 %508, label %509, label %536

509:                                              ; preds = %497
  %510 = load i64, ptr %507, align 1, !tbaa !24
  %511 = icmp eq i64 %510, %499
  br i1 %511, label %512, label %536

512:                                              ; preds = %509
  %513 = select i1 %504, ptr %50, ptr %20
  %514 = select i1 %504, ptr %49, ptr %45
  %515 = getelementptr inbounds nuw i8, ptr %71, i64 9
  %516 = getelementptr inbounds nuw i8, ptr %507, i64 8
  %517 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %515, ptr noundef nonnull %516, ptr noundef nonnull %20, ptr noundef nonnull %513, ptr noundef nonnull %45)
  %518 = add i64 %517, 8
  %519 = sub i32 %113, %503
  %520 = icmp ugt ptr %498, %72
  %521 = icmp ugt ptr %507, %514
  %522 = and i1 %520, %521
  br i1 %522, label %.preheader71.i, label %.loopexit72.i

.preheader71.i:                                   ; preds = %512, %531
  %523 = phi ptr [ %526, %531 ], [ %498, %512 ]
  %524 = phi i64 [ %532, %531 ], [ %518, %512 ]
  %525 = phi ptr [ %528, %531 ], [ %507, %512 ]
  %526 = getelementptr inbounds i8, ptr %523, i64 -1
  %527 = load i8, ptr %526, align 1, !tbaa !37
  %528 = getelementptr inbounds i8, ptr %525, i64 -1
  %529 = load i8, ptr %528, align 1, !tbaa !37
  %530 = icmp eq i8 %527, %529
  br i1 %530, label %531, label %.loopexit72.i

531:                                              ; preds = %.preheader71.i
  %532 = add i64 %524, 1
  %533 = icmp ugt ptr %526, %72
  %534 = icmp ugt ptr %528, %514
  %535 = and i1 %533, %534
  br i1 %535, label %.preheader71.i, label %.loopexit72.i, !llvm.loop !151

536:                                              ; preds = %509, %497
  %537 = select i1 %98, ptr %50, ptr %20
  %538 = select i1 %98, ptr %49, ptr %45
  %539 = getelementptr inbounds nuw i8, ptr %71, i64 4
  %540 = getelementptr inbounds nuw i8, ptr %101, i64 4
  %541 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %539, ptr noundef nonnull %540, ptr noundef nonnull %20, ptr noundef nonnull %537, ptr noundef nonnull %45)
  %542 = add i64 %541, 4
  %543 = sub i32 %112, %97
  %544 = icmp ugt ptr %71, %72
  %545 = icmp ugt ptr %101, %538
  %546 = and i1 %544, %545
  br i1 %546, label %.preheader75.i, label %.loopexit72.i

.preheader75.i:                                   ; preds = %536, %555
  %547 = phi ptr [ %550, %555 ], [ %71, %536 ]
  %548 = phi ptr [ %552, %555 ], [ %101, %536 ]
  %549 = phi i64 [ %556, %555 ], [ %542, %536 ]
  %550 = getelementptr inbounds i8, ptr %547, i64 -1
  %551 = load i8, ptr %550, align 1, !tbaa !37
  %552 = getelementptr inbounds i8, ptr %548, i64 -1
  %553 = load i8, ptr %552, align 1, !tbaa !37
  %554 = icmp eq i8 %551, %553
  br i1 %554, label %555, label %.loopexit72.i

555:                                              ; preds = %.preheader75.i
  %556 = add i64 %549, 1
  %557 = icmp ugt ptr %550, %72
  %558 = icmp ugt ptr %552, %538
  %559 = and i1 %557, %558
  br i1 %559, label %.preheader75.i, label %.loopexit72.i, !llvm.loop !152

.loopexit72.i:                                    ; preds = %555, %.preheader75.i, %531, %.preheader71.i, %536, %512
  %560 = phi i32 [ %519, %512 ], [ %543, %536 ], [ %519, %531 ], [ %519, %.preheader71.i ], [ %543, %.preheader75.i ], [ %543, %555 ]
  %561 = phi i64 [ %518, %512 ], [ %542, %536 ], [ %532, %531 ], [ %524, %.preheader71.i ], [ %556, %555 ], [ %549, %.preheader75.i ]
  %562 = phi ptr [ %498, %512 ], [ %71, %536 ], [ %526, %531 ], [ %523, %.preheader71.i ], [ %550, %555 ], [ %547, %.preheader75.i ]
  %563 = ptrtoint ptr %562 to i64
  %564 = ptrtoint ptr %72 to i64
  %565 = sub i64 %563, %564
  %566 = add i32 %560, 3
  %567 = icmp ugt ptr %562, %63
  %568 = load ptr, ptr %64, align 8, !tbaa !38
  br i1 %567, label %591, label %569

569:                                              ; preds = %.loopexit72.i
  %570 = load <2 x i64>, ptr %72, align 1, !tbaa !37
  store <2 x i64> %570, ptr %568, align 1, !tbaa !37
  %571 = icmp ugt i64 %565, 16
  br i1 %571, label %572, label %702

572:                                              ; preds = %569
  %573 = load ptr, ptr %64, align 8, !tbaa !38
  %574 = getelementptr inbounds nuw i8, ptr %573, i64 16
  %575 = getelementptr inbounds nuw i8, ptr %72, i64 16
  %576 = getelementptr i8, ptr %573, i64 %565
  %577 = load <2 x i64>, ptr %575, align 1, !tbaa !37
  store <2 x i64> %577, ptr %574, align 1, !tbaa !37
  %578 = icmp ult i64 %565, 33
  br i1 %578, label %702, label %579

579:                                              ; preds = %572
  %580 = getelementptr inbounds nuw i8, ptr %573, i64 32
  br label %581

581:                                              ; preds = %581, %579
  %582 = phi ptr [ %580, %579 ], [ %589, %581 ]
  %583 = phi ptr [ %575, %579 ], [ %587, %581 ]
  %584 = getelementptr inbounds nuw i8, ptr %583, i64 16
  %585 = load <2 x i64>, ptr %584, align 1, !tbaa !37
  store <2 x i64> %585, ptr %582, align 1, !tbaa !37
  %586 = getelementptr inbounds nuw i8, ptr %582, i64 16
  %587 = getelementptr inbounds nuw i8, ptr %583, i64 32
  %588 = load <2 x i64>, ptr %587, align 1, !tbaa !37
  store <2 x i64> %588, ptr %586, align 1, !tbaa !37
  %589 = getelementptr inbounds nuw i8, ptr %582, i64 32
  %590 = icmp ult ptr %589, %576
  br i1 %590, label %581, label %.loopexit66.i, !llvm.loop !41

591:                                              ; preds = %.loopexit72.i
  %592 = icmp ugt ptr %72, %63
  br i1 %592, label %.loopexit69.i, label %593

593:                                              ; preds = %591
  %594 = sub i64 %65, %564
  %595 = getelementptr inbounds i8, ptr %568, i64 %594
  %596 = load <2 x i64>, ptr %72, align 1, !tbaa !37
  store <2 x i64> %596, ptr %568, align 1, !tbaa !37
  %597 = icmp ult i64 %594, 17
  br i1 %597, label %.loopexit69.i, label %598

598:                                              ; preds = %593
  %599 = getelementptr inbounds nuw i8, ptr %568, i64 16
  br label %600

600:                                              ; preds = %600, %598
  %601 = phi ptr [ %599, %598 ], [ %608, %600 ]
  %602 = phi ptr [ %72, %598 ], [ %606, %600 ]
  %603 = getelementptr inbounds nuw i8, ptr %602, i64 16
  %604 = load <2 x i64>, ptr %603, align 1, !tbaa !37
  store <2 x i64> %604, ptr %601, align 1, !tbaa !37
  %605 = getelementptr inbounds nuw i8, ptr %601, i64 16
  %606 = getelementptr inbounds nuw i8, ptr %602, i64 32
  %607 = load <2 x i64>, ptr %606, align 1, !tbaa !37
  store <2 x i64> %607, ptr %605, align 1, !tbaa !37
  %608 = getelementptr inbounds nuw i8, ptr %601, i64 32
  %609 = icmp ult ptr %608, %595
  br i1 %609, label %600, label %.loopexit69.i, !llvm.loop !41

.loopexit69.i:                                    ; preds = %600, %593, %591
  %610 = phi ptr [ %63, %593 ], [ %72, %591 ], [ %63, %600 ]
  %611 = phi ptr [ %595, %593 ], [ %568, %591 ], [ %595, %600 ]
  %612 = icmp ult ptr %610, %562
  br i1 %612, label %613, label %.loopexit66.i

613:                                              ; preds = %.loopexit69.i
  %614 = ptrtoint ptr %610 to i64
  %615 = ptrtoint ptr %611 to i64
  %616 = sub i64 %563, %614
  %617 = icmp ult i64 %616, 4
  %618 = sub i64 %615, %614
  %619 = icmp ult i64 %618, 32
  %620 = select i1 %617, i1 true, i1 %619
  br i1 %620, label %656, label %621

621:                                              ; preds = %613
  %622 = icmp ult i64 %616, 32
  br i1 %622, label %642, label %623

623:                                              ; preds = %621
  %624 = and i64 %616, -32
  br label %625

625:                                              ; preds = %625, %623
  %626 = phi i64 [ 0, %623 ], [ %633, %625 ]
  %627 = getelementptr i8, ptr %611, i64 %626
  %628 = getelementptr i8, ptr %610, i64 %626
  %629 = getelementptr i8, ptr %628, i64 16
  %630 = load <16 x i8>, ptr %628, align 1, !tbaa !37
  %631 = load <16 x i8>, ptr %629, align 1, !tbaa !37
  %632 = getelementptr i8, ptr %627, i64 16
  store <16 x i8> %630, ptr %627, align 1, !tbaa !37
  store <16 x i8> %631, ptr %632, align 1, !tbaa !37
  %633 = add nuw i64 %626, 32
  %634 = icmp eq i64 %633, %624
  br i1 %634, label %635, label %625, !llvm.loop !153

635:                                              ; preds = %625
  %636 = icmp eq i64 %616, %624
  br i1 %636, label %.loopexit66.i, label %637

637:                                              ; preds = %635
  %638 = getelementptr i8, ptr %611, i64 %624
  %639 = getelementptr i8, ptr %610, i64 %624
  %640 = and i64 %616, 28
  %641 = icmp eq i64 %640, 0
  br i1 %641, label %656, label %642

642:                                              ; preds = %637, %621
  %643 = phi i64 [ %624, %637 ], [ 0, %621 ]
  %644 = and i64 %616, -4
  br label %645

645:                                              ; preds = %645, %642
  %646 = phi i64 [ %643, %642 ], [ %650, %645 ]
  %647 = getelementptr i8, ptr %611, i64 %646
  %648 = getelementptr i8, ptr %610, i64 %646
  %649 = load <4 x i8>, ptr %648, align 1, !tbaa !37
  store <4 x i8> %649, ptr %647, align 1, !tbaa !37
  %650 = add nuw i64 %646, 4
  %651 = icmp eq i64 %650, %644
  br i1 %651, label %652, label %645, !llvm.loop !154

652:                                              ; preds = %645
  %653 = getelementptr i8, ptr %611, i64 %644
  %654 = getelementptr i8, ptr %610, i64 %644
  %655 = icmp eq i64 %616, %644
  br i1 %655, label %.loopexit66.i, label %656

656:                                              ; preds = %652, %637, %613
  %657 = phi ptr [ %611, %613 ], [ %638, %637 ], [ %653, %652 ]
  %658 = phi ptr [ %610, %613 ], [ %639, %637 ], [ %654, %652 ]
  %659 = ptrtoint ptr %658 to i64
  %660 = sub i64 %563, %659
  %661 = and i64 %660, 7
  %662 = icmp eq i64 %661, 0
  br i1 %662, label %.loopexit68.i, label %.preheader67.i

.preheader67.i:                                   ; preds = %656, %.preheader67.i
  %663 = phi ptr [ %668, %.preheader67.i ], [ %657, %656 ]
  %664 = phi ptr [ %666, %.preheader67.i ], [ %658, %656 ]
  %665 = phi i64 [ %669, %.preheader67.i ], [ 0, %656 ]
  %666 = getelementptr inbounds nuw i8, ptr %664, i64 1
  %667 = load i8, ptr %664, align 1, !tbaa !37
  %668 = getelementptr inbounds nuw i8, ptr %663, i64 1
  store i8 %667, ptr %663, align 1, !tbaa !37
  %669 = add nuw nsw i64 %665, 1
  %670 = icmp eq i64 %669, %661
  br i1 %670, label %.loopexit68.i, label %.preheader67.i, !llvm.loop !155

.loopexit68.i:                                    ; preds = %.preheader67.i, %656
  %671 = phi ptr [ %657, %656 ], [ %668, %.preheader67.i ]
  %672 = phi ptr [ %658, %656 ], [ %666, %.preheader67.i ]
  %673 = sub i64 %659, %563
  %674 = icmp ugt i64 %673, -8
  br i1 %674, label %.loopexit66.i, label %.preheader65.i

.preheader65.i:                                   ; preds = %.loopexit68.i, %.preheader65.i
  %675 = phi ptr [ %700, %.preheader65.i ], [ %671, %.loopexit68.i ]
  %676 = phi ptr [ %698, %.preheader65.i ], [ %672, %.loopexit68.i ]
  %677 = getelementptr inbounds nuw i8, ptr %676, i64 1
  %678 = load i8, ptr %676, align 1, !tbaa !37
  %679 = getelementptr inbounds nuw i8, ptr %675, i64 1
  store i8 %678, ptr %675, align 1, !tbaa !37
  %680 = getelementptr inbounds nuw i8, ptr %676, i64 2
  %681 = load i8, ptr %677, align 1, !tbaa !37
  %682 = getelementptr inbounds nuw i8, ptr %675, i64 2
  store i8 %681, ptr %679, align 1, !tbaa !37
  %683 = getelementptr inbounds nuw i8, ptr %676, i64 3
  %684 = load i8, ptr %680, align 1, !tbaa !37
  %685 = getelementptr inbounds nuw i8, ptr %675, i64 3
  store i8 %684, ptr %682, align 1, !tbaa !37
  %686 = getelementptr inbounds nuw i8, ptr %676, i64 4
  %687 = load i8, ptr %683, align 1, !tbaa !37
  %688 = getelementptr inbounds nuw i8, ptr %675, i64 4
  store i8 %687, ptr %685, align 1, !tbaa !37
  %689 = getelementptr inbounds nuw i8, ptr %676, i64 5
  %690 = load i8, ptr %686, align 1, !tbaa !37
  %691 = getelementptr inbounds nuw i8, ptr %675, i64 5
  store i8 %690, ptr %688, align 1, !tbaa !37
  %692 = getelementptr inbounds nuw i8, ptr %676, i64 6
  %693 = load i8, ptr %689, align 1, !tbaa !37
  %694 = getelementptr inbounds nuw i8, ptr %675, i64 6
  store i8 %693, ptr %691, align 1, !tbaa !37
  %695 = getelementptr inbounds nuw i8, ptr %676, i64 7
  %696 = load i8, ptr %692, align 1, !tbaa !37
  %697 = getelementptr inbounds nuw i8, ptr %675, i64 7
  store i8 %696, ptr %694, align 1, !tbaa !37
  %698 = getelementptr inbounds nuw i8, ptr %676, i64 8
  %699 = load i8, ptr %695, align 1, !tbaa !37
  %700 = getelementptr inbounds nuw i8, ptr %675, i64 8
  store i8 %699, ptr %697, align 1, !tbaa !37
  %701 = icmp eq ptr %698, %562
  br i1 %701, label %.loopexit66.i, label %.preheader65.i, !llvm.loop !156

702:                                              ; preds = %572, %569
  %703 = load ptr, ptr %64, align 8, !tbaa !38
  %704 = getelementptr inbounds nuw i8, ptr %703, i64 %565
  store ptr %704, ptr %64, align 8, !tbaa !38
  %705 = load ptr, ptr %67, align 8, !tbaa !50
  br label %717

.loopexit66.i:                                    ; preds = %581, %.preheader65.i, %.loopexit68.i, %652, %635, %.loopexit69.i
  %706 = load ptr, ptr %64, align 8, !tbaa !38
  %707 = getelementptr inbounds nuw i8, ptr %706, i64 %565
  store ptr %707, ptr %64, align 8, !tbaa !38
  %708 = icmp ugt i64 %565, 65535
  %709 = load ptr, ptr %67, align 8, !tbaa !50
  br i1 %708, label %710, label %717, !prof !115

710:                                              ; preds = %.loopexit66.i
  store i32 1, ptr %66, align 8, !tbaa !52
  %711 = load ptr, ptr %1, align 8, !tbaa !53
  %712 = ptrtoint ptr %709 to i64
  %713 = ptrtoint ptr %711 to i64
  %714 = sub i64 %712, %713
  %715 = lshr exact i64 %714, 3
  %716 = trunc i64 %715 to i32
  store i32 %716, ptr %68, align 4, !tbaa !54
  br label %717

717:                                              ; preds = %710, %.loopexit66.i, %702
  %718 = phi ptr [ %705, %702 ], [ %709, %710 ], [ %709, %.loopexit66.i ]
  %719 = trunc i64 %565 to i16
  %720 = getelementptr inbounds nuw i8, ptr %718, i64 4
  store i16 %719, ptr %720, align 4, !tbaa !55
  store i32 %566, ptr %718, align 4, !tbaa !57
  %721 = add i64 %561, -3
  %722 = icmp ugt i64 %721, 65535
  br i1 %722, label %729, label %742, !prof !58

723:                                              ; preds = %493, %491
  %724 = ptrtoint ptr %72 to i64
  %725 = sub i64 %110, %724
  %726 = ashr i64 %725, 8
  %727 = getelementptr i8, ptr %71, i64 %726
  %728 = getelementptr i8, ptr %727, i64 1
  br label %.loopexit.i, !llvm.loop !157

729:                                              ; preds = %717, %485, %289
  %730 = phi ptr [ %290, %289 ], [ %486, %485 ], [ %718, %717 ]
  %731 = phi i64 [ %293, %289 ], [ %489, %485 ], [ %721, %717 ]
  %732 = phi i64 [ %134, %289 ], [ %330, %485 ], [ %561, %717 ]
  %733 = phi i32 [ %74, %289 ], [ %73, %485 ], [ %73, %717 ]
  %734 = phi i32 [ %73, %289 ], [ %307, %485 ], [ %560, %717 ]
  %735 = phi ptr [ %126, %289 ], [ %331, %485 ], [ %562, %717 ]
  store i32 2, ptr %66, align 8, !tbaa !52
  %736 = load ptr, ptr %1, align 8, !tbaa !53
  %737 = ptrtoint ptr %730 to i64
  %738 = ptrtoint ptr %736 to i64
  %739 = sub i64 %737, %738
  %740 = lshr exact i64 %739, 3
  %741 = trunc i64 %740 to i32
  store i32 %741, ptr %68, align 4, !tbaa !54
  br label %742

742:                                              ; preds = %729, %717, %485, %289
  %743 = phi i64 [ %293, %289 ], [ %489, %485 ], [ %721, %717 ], [ %731, %729 ]
  %744 = phi ptr [ %290, %289 ], [ %486, %485 ], [ %718, %717 ], [ %730, %729 ]
  %745 = phi i64 [ %134, %289 ], [ %330, %485 ], [ %561, %717 ], [ %732, %729 ]
  %746 = phi i32 [ %74, %289 ], [ %73, %485 ], [ %73, %717 ], [ %733, %729 ]
  %747 = phi i32 [ %73, %289 ], [ %307, %485 ], [ %560, %717 ], [ %734, %729 ]
  %748 = phi ptr [ %126, %289 ], [ %331, %485 ], [ %562, %717 ], [ %735, %729 ]
  %749 = trunc i64 %743 to i16
  %750 = getelementptr inbounds nuw i8, ptr %744, i64 6
  store i16 %749, ptr %750, align 2, !tbaa !65
  %751 = getelementptr inbounds nuw i8, ptr %744, i64 8
  store ptr %751, ptr %67, align 8, !tbaa !50
  %752 = getelementptr inbounds nuw i8, ptr %748, i64 %745
  %753 = icmp ugt ptr %752, %21
  br i1 %753, label %.loopexit.i, label %754

754:                                              ; preds = %742
  %755 = add i32 %112, 2
  %756 = zext i32 %755 to i64
  %757 = getelementptr inbounds nuw i8, ptr %23, i64 %756
  %758 = load i64, ptr %757, align 1, !tbaa !24
  %759 = mul i64 %758, -3523014627327384477
  %760 = lshr i64 %759, %62
  %761 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %760
  store i32 %755, ptr %761, align 4, !tbaa !25
  %762 = getelementptr inbounds i8, ptr %752, i64 -2
  %763 = ptrtoint ptr %762 to i64
  %764 = sub i64 %763, %25
  %765 = trunc i64 %764 to i32
  %766 = load i64, ptr %762, align 1, !tbaa !24
  %767 = mul i64 %766, -3523014627327384477
  %768 = lshr i64 %767, %62
  %769 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %768
  store i32 %765, ptr %769, align 4, !tbaa !25
  switch i32 %10, label %default.unreachable178.i [
    i32 7, label %786
    i32 5, label %770
    i32 6, label %778
    i32 4, label %794
  ]

770:                                              ; preds = %754
  %771 = mul i64 %758, -3523014627271114752
  %772 = lshr i64 %771, %60
  %773 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %772
  store i32 %755, ptr %773, align 4, !tbaa !25
  %774 = getelementptr inbounds i8, ptr %752, i64 -1
  %775 = load i64, ptr %774, align 1, !tbaa !24
  %776 = mul i64 %775, -3523014627271114752
  %777 = lshr i64 %776, %60
  br label %805

778:                                              ; preds = %754
  %779 = mul i64 %758, -3523014627193847808
  %780 = lshr i64 %779, %60
  %781 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %780
  store i32 %755, ptr %781, align 4, !tbaa !25
  %782 = getelementptr inbounds i8, ptr %752, i64 -1
  %783 = load i64, ptr %782, align 1, !tbaa !24
  %784 = mul i64 %783, -3523014627193847808
  %785 = lshr i64 %784, %60
  br label %805

786:                                              ; preds = %754
  %787 = mul i64 %758, -3523014627193167104
  %788 = lshr i64 %787, %60
  %789 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %788
  store i32 %755, ptr %789, align 4, !tbaa !25
  %790 = getelementptr inbounds i8, ptr %752, i64 -1
  %791 = load i64, ptr %790, align 1, !tbaa !24
  %792 = mul i64 %791, -3523014627193167104
  %793 = lshr i64 %792, %60
  br label %805

794:                                              ; preds = %754
  %795 = load i32, ptr %757, align 1, !tbaa !25
  %796 = mul i32 %795, -1640531535
  %797 = lshr i32 %796, %58
  %798 = zext i32 %797 to i64
  %799 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %798
  store i32 %755, ptr %799, align 4, !tbaa !25
  %800 = getelementptr inbounds i8, ptr %752, i64 -1
  %801 = load i32, ptr %800, align 1, !tbaa !25
  %802 = mul i32 %801, -1640531535
  %803 = lshr i32 %802, %58
  %804 = zext i32 %803 to i64
  br label %805

805:                                              ; preds = %794, %786, %778, %770
  %806 = phi ptr [ %800, %794 ], [ %774, %770 ], [ %782, %778 ], [ %790, %786 ]
  %807 = phi i64 [ %804, %794 ], [ %777, %770 ], [ %785, %778 ], [ %793, %786 ]
  %808 = ptrtoint ptr %806 to i64
  %809 = sub i64 %808, %25
  %810 = trunc i64 %809 to i32
  %811 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %807
  store i32 %810, ptr %811, align 4, !tbaa !25
  br label %812

812:                                              ; preds = %878, %805
  %813 = phi ptr [ %859, %878 ], [ %751, %805 ]
  %814 = phi ptr [ %886, %878 ], [ %752, %805 ]
  %815 = phi i32 [ %816, %878 ], [ %747, %805 ]
  %816 = phi i32 [ %815, %878 ], [ %746, %805 ]
  %817 = ptrtoint ptr %814 to i64
  %818 = sub i64 %817, %25
  %819 = trunc i64 %818 to i32
  %820 = sub i32 %819, %816
  %821 = icmp ult i32 %820, %43
  %822 = zext i32 %820 to i64
  %823 = select i1 %821, ptr %47, ptr %23
  %824 = getelementptr inbounds nuw i8, ptr %823, i64 %822
  %825 = sub i32 %820, %43
  %826 = icmp ugt i32 %825, -4
  %827 = sub i32 %819, %40
  %828 = icmp ugt i32 %816, %827
  %829 = or i1 %828, %826
  br i1 %829, label %.loopexit.i, label %830

830:                                              ; preds = %812
  %831 = load i32, ptr %824, align 1, !tbaa !25
  %832 = load i32, ptr %814, align 1, !tbaa !25
  %833 = icmp eq i32 %831, %832
  br i1 %833, label %834, label %.loopexit.i

834:                                              ; preds = %830
  %835 = select i1 %821, ptr %50, ptr %20
  %836 = getelementptr inbounds nuw i8, ptr %814, i64 4
  %837 = getelementptr inbounds nuw i8, ptr %824, i64 4
  %838 = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %836, ptr noundef nonnull %837, ptr noundef nonnull %20, ptr noundef nonnull %835, ptr noundef nonnull %45)
  %839 = icmp ugt ptr %814, %63
  br i1 %839, label %844, label %840

840:                                              ; preds = %834
  %841 = load ptr, ptr %64, align 8, !tbaa !38
  %842 = load <2 x i64>, ptr %814, align 1, !tbaa !37
  store <2 x i64> %842, ptr %841, align 1, !tbaa !37
  %843 = load ptr, ptr %67, align 8, !tbaa !50
  br label %844

844:                                              ; preds = %840, %834
  %845 = phi ptr [ %813, %834 ], [ %843, %840 ]
  %846 = getelementptr inbounds nuw i8, ptr %845, i64 4
  store i16 0, ptr %846, align 4, !tbaa !55
  store i32 1, ptr %845, align 4, !tbaa !57
  %847 = add i64 %838, 1
  %848 = icmp ugt i64 %847, 65535
  br i1 %848, label %849, label %856, !prof !58

849:                                              ; preds = %844
  store i32 2, ptr %66, align 8, !tbaa !52
  %850 = load ptr, ptr %1, align 8, !tbaa !53
  %851 = ptrtoint ptr %845 to i64
  %852 = ptrtoint ptr %850 to i64
  %853 = sub i64 %851, %852
  %854 = lshr exact i64 %853, 3
  %855 = trunc i64 %854 to i32
  store i32 %855, ptr %68, align 4, !tbaa !54
  br label %856

856:                                              ; preds = %849, %844
  %857 = trunc i64 %847 to i16
  %858 = getelementptr inbounds nuw i8, ptr %845, i64 6
  store i16 %857, ptr %858, align 2, !tbaa !65
  %859 = getelementptr inbounds nuw i8, ptr %845, i64 8
  store ptr %859, ptr %67, align 8, !tbaa !50
  switch i32 %10, label %default.unreachable178.i [
    i32 7, label %874
    i32 5, label %866
    i32 6, label %870
    i32 4, label %860
  ]

860:                                              ; preds = %856
  %861 = load i32, ptr %814, align 1, !tbaa !25
  %862 = mul i32 %861, -1640531535
  %863 = lshr i32 %862, %58
  %864 = zext i32 %863 to i64
  %865 = load i64, ptr %814, align 1, !tbaa !24
  br label %878

866:                                              ; preds = %856
  %867 = load i64, ptr %814, align 1, !tbaa !24
  %868 = mul i64 %867, -3523014627271114752
  %869 = lshr i64 %868, %60
  br label %878

870:                                              ; preds = %856
  %871 = load i64, ptr %814, align 1, !tbaa !24
  %872 = mul i64 %871, -3523014627193847808
  %873 = lshr i64 %872, %60
  br label %878

874:                                              ; preds = %856
  %875 = load i64, ptr %814, align 1, !tbaa !24
  %876 = mul i64 %875, -3523014627193167104
  %877 = lshr i64 %876, %60
  br label %878

878:                                              ; preds = %874, %870, %866, %860
  %879 = phi i64 [ %865, %860 ], [ %867, %866 ], [ %871, %870 ], [ %875, %874 ]
  %880 = phi i64 [ %864, %860 ], [ %869, %866 ], [ %873, %870 ], [ %877, %874 ]
  %881 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %880
  store i32 %819, ptr %881, align 4, !tbaa !25
  %882 = mul i64 %879, -3523014627327384477
  %883 = lshr i64 %882, %62
  %884 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %883
  store i32 %819, ptr %884, align 4, !tbaa !25
  %885 = getelementptr i8, ptr %814, i64 %838
  %886 = getelementptr i8, ptr %885, i64 4
  %887 = icmp ugt ptr %886, %21
  br i1 %887, label %.loopexit.i, label %812

.loopexit.i:                                      ; preds = %878, %830, %812, %742, %723
  %888 = phi i32 [ %74, %723 ], [ %746, %742 ], [ %815, %878 ], [ %816, %830 ], [ %816, %812 ]
  %889 = phi i32 [ %73, %723 ], [ %747, %742 ], [ %816, %878 ], [ %815, %830 ], [ %815, %812 ]
  %890 = phi ptr [ %72, %723 ], [ %752, %742 ], [ %886, %878 ], [ %814, %830 ], [ %814, %812 ]
  %891 = phi ptr [ %728, %723 ], [ %752, %742 ], [ %886, %878 ], [ %814, %830 ], [ %814, %812 ]
  %892 = icmp ult ptr %891, %21
  br i1 %892, label %.split.i, label %893

893:                                              ; preds = %.loopexit.i
  %894 = ptrtoint ptr %890 to i64
  br label %895

895:                                              ; preds = %893, %55
  %896 = phi i64 [ %894, %893 ], [ %24, %55 ]
  %897 = phi i32 [ %888, %893 ], [ %53, %55 ]
  %898 = phi i32 [ %889, %893 ], [ %51, %55 ]
  store i32 %898, ptr %2, align 4, !tbaa !25
  store i32 %897, ptr %52, align 4, !tbaa !25
  %899 = ptrtoint ptr %20 to i64
  %900 = sub i64 %899, %896
  br label %ZSTD_compressBlock_doubleFast_extDict_generic.exit

ZSTD_compressBlock_doubleFast_extDict_generic.exit: ; preds = %69, %895
  %901 = phi i64 [ %70, %69 ], [ %900, %895 ]
  ret i64 %901
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #5

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #6

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @ZSTD_count_2segments(ptr noundef %0, ptr noundef %1, ptr noundef readnone captures(address) %2, ptr noundef %3, ptr noundef readonly captures(none) %4) unnamed_addr #7 {
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %6, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = icmp ult ptr %9, %2
  %11 = select i1 %10, ptr %9, ptr %2
  %12 = getelementptr inbounds i8, ptr %11, i64 -7
  %13 = icmp ult ptr %0, %12
  br i1 %13, label %14, label %.loopexit30

14:                                               ; preds = %5
  %15 = load i64, ptr %1, align 1, !tbaa !24
  %16 = load i64, ptr %0, align 1, !tbaa !24
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %.preheader29, label %18

18:                                               ; preds = %14
  %19 = xor i64 %16, %15
  %20 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %19, i1 true)
  %21 = lshr i64 %20, 3
  br label %77

.preheader29:                                     ; preds = %14, %27
  %22 = phi ptr [ %25, %27 ], [ %1, %14 ]
  %23 = phi ptr [ %24, %27 ], [ %0, %14 ]
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 8
  %26 = icmp ult ptr %24, %12
  br i1 %26, label %27, label %.loopexit30

27:                                               ; preds = %.preheader29
  %28 = load i64, ptr %25, align 1, !tbaa !24
  %29 = load i64, ptr %24, align 1, !tbaa !24
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %.preheader29, label %31

31:                                               ; preds = %27
  %32 = xor i64 %29, %28
  %33 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %32, i1 true)
  %34 = lshr i64 %33, 3
  %35 = getelementptr inbounds nuw i8, ptr %24, i64 %34
  %36 = ptrtoint ptr %35 to i64
  %37 = ptrtoint ptr %0 to i64
  %38 = sub i64 %36, %37
  br label %77

.loopexit30:                                      ; preds = %.preheader29, %5
  %39 = phi ptr [ %1, %5 ], [ %25, %.preheader29 ]
  %40 = phi ptr [ %0, %5 ], [ %24, %.preheader29 ]
  %41 = getelementptr inbounds i8, ptr %11, i64 -3
  %42 = icmp ult ptr %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %.loopexit30
  %44 = load i32, ptr %39, align 1, !tbaa !25
  %45 = load i32, ptr %40, align 1, !tbaa !25
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = getelementptr inbounds nuw i8, ptr %40, i64 4
  %49 = getelementptr inbounds nuw i8, ptr %39, i64 4
  br label %50

50:                                               ; preds = %47, %43, %.loopexit30
  %51 = phi ptr [ %49, %47 ], [ %39, %43 ], [ %39, %.loopexit30 ]
  %52 = phi ptr [ %48, %47 ], [ %40, %43 ], [ %40, %.loopexit30 ]
  %53 = getelementptr inbounds i8, ptr %11, i64 -1
  %54 = icmp ult ptr %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i16, ptr %51, align 1, !tbaa !35
  %57 = load i16, ptr %52, align 1, !tbaa !35
  %58 = icmp eq i16 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = getelementptr inbounds nuw i8, ptr %52, i64 2
  %61 = getelementptr inbounds nuw i8, ptr %51, i64 2
  br label %62

62:                                               ; preds = %59, %55, %50
  %63 = phi ptr [ %61, %59 ], [ %51, %55 ], [ %51, %50 ]
  %64 = phi ptr [ %60, %59 ], [ %52, %55 ], [ %52, %50 ]
  %65 = icmp ult ptr %64, %11
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i8, ptr %63, align 1, !tbaa !37
  %68 = load i8, ptr %64, align 1, !tbaa !37
  %69 = icmp eq i8 %67, %68
  %70 = zext i1 %69 to i64
  %71 = getelementptr inbounds nuw i8, ptr %64, i64 %70
  br label %72

72:                                               ; preds = %66, %62
  %73 = phi ptr [ %64, %62 ], [ %71, %66 ]
  %74 = ptrtoint ptr %73 to i64
  %75 = ptrtoint ptr %0 to i64
  %76 = sub i64 %74, %75
  br label %77

77:                                               ; preds = %72, %31, %18
  %78 = phi i64 [ %76, %72 ], [ %21, %18 ], [ %38, %31 ]
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 %78
  %80 = icmp eq ptr %79, %3
  br i1 %80, label %81, label %151

81:                                               ; preds = %77
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 %78
  %83 = getelementptr inbounds i8, ptr %2, i64 -7
  %84 = icmp ult ptr %82, %83
  br i1 %84, label %85, label %.loopexit

85:                                               ; preds = %81
  %86 = load i64, ptr %4, align 1, !tbaa !24
  %87 = load i64, ptr %82, align 1, !tbaa !24
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %.preheader, label %89

89:                                               ; preds = %85
  %90 = xor i64 %87, %86
  %91 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %90, i1 true)
  %92 = lshr i64 %91, 3
  br label %148

.preheader:                                       ; preds = %85, %98
  %93 = phi ptr [ %96, %98 ], [ %4, %85 ]
  %94 = phi ptr [ %95, %98 ], [ %82, %85 ]
  %95 = getelementptr inbounds nuw i8, ptr %94, i64 8
  %96 = getelementptr inbounds nuw i8, ptr %93, i64 8
  %97 = icmp ult ptr %95, %83
  br i1 %97, label %98, label %.loopexit

98:                                               ; preds = %.preheader
  %99 = load i64, ptr %96, align 1, !tbaa !24
  %100 = load i64, ptr %95, align 1, !tbaa !24
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %.preheader, label %102

102:                                              ; preds = %98
  %103 = xor i64 %100, %99
  %104 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %103, i1 true)
  %105 = lshr i64 %104, 3
  %106 = getelementptr inbounds nuw i8, ptr %95, i64 %105
  %107 = ptrtoint ptr %106 to i64
  %108 = ptrtoint ptr %82 to i64
  %109 = sub i64 %107, %108
  br label %148

.loopexit:                                        ; preds = %.preheader, %81
  %110 = phi ptr [ %4, %81 ], [ %96, %.preheader ]
  %111 = phi ptr [ %82, %81 ], [ %95, %.preheader ]
  %112 = getelementptr inbounds i8, ptr %2, i64 -3
  %113 = icmp ult ptr %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %.loopexit
  %115 = load i32, ptr %110, align 1, !tbaa !25
  %116 = load i32, ptr %111, align 1, !tbaa !25
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = getelementptr inbounds nuw i8, ptr %111, i64 4
  %120 = getelementptr inbounds nuw i8, ptr %110, i64 4
  br label %121

121:                                              ; preds = %118, %114, %.loopexit
  %122 = phi ptr [ %120, %118 ], [ %110, %114 ], [ %110, %.loopexit ]
  %123 = phi ptr [ %119, %118 ], [ %111, %114 ], [ %111, %.loopexit ]
  %124 = getelementptr inbounds i8, ptr %2, i64 -1
  %125 = icmp ult ptr %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load i16, ptr %122, align 1, !tbaa !35
  %128 = load i16, ptr %123, align 1, !tbaa !35
  %129 = icmp eq i16 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = getelementptr inbounds nuw i8, ptr %123, i64 2
  %132 = getelementptr inbounds nuw i8, ptr %122, i64 2
  br label %133

133:                                              ; preds = %130, %126, %121
  %134 = phi ptr [ %132, %130 ], [ %122, %126 ], [ %122, %121 ]
  %135 = phi ptr [ %131, %130 ], [ %123, %126 ], [ %123, %121 ]
  %136 = icmp ult ptr %135, %2
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load i8, ptr %134, align 1, !tbaa !37
  %139 = load i8, ptr %135, align 1, !tbaa !37
  %140 = icmp eq i8 %138, %139
  %141 = zext i1 %140 to i64
  %142 = getelementptr inbounds nuw i8, ptr %135, i64 %141
  br label %143

143:                                              ; preds = %137, %133
  %144 = phi ptr [ %135, %133 ], [ %142, %137 ]
  %145 = ptrtoint ptr %144 to i64
  %146 = ptrtoint ptr %82 to i64
  %147 = sub i64 %145, %146
  br label %148

148:                                              ; preds = %143, %102, %89
  %149 = phi i64 [ %147, %143 ], [ %92, %89 ], [ %109, %102 ]
  %150 = add i64 %149, %78
  br label %151

151:                                              ; preds = %148, %77
  %152 = phi i64 [ %150, %148 ], [ %78, %77 ]
  ret i64 %152
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind memory(none) }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !14, i64 112}
!6 = !{!"ZSTD_MatchState_t", !7, i64 0, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !8, i64 56, !10, i64 64, !13, i64 96, !12, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !12, i64 136, !12, i64 140, !15, i64 144, !16, i64 248, !17, i64 256, !9, i64 288, !12, i64 296, !12, i64 300}
!7 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !12, i64 24, !12, i64 28, !12, i64 32}
!8 = !{!"p1 omnipotent char", !9, i64 0}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"int", !10, i64 0}
!13 = !{!"long", !10, i64 0}
!14 = !{!"p1 int", !9, i64 0}
!15 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !9, i64 32, !9, i64 40, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !9, i64 88, !12, i64 96}
!16 = !{!"p1 _ZTS17ZSTD_MatchState_t", !9, i64 0}
!17 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24}
!18 = !{!17, !12, i64 16}
!19 = !{!6, !14, i64 128}
!20 = !{!6, !8, i64 8}
!21 = !{!6, !12, i64 44}
!22 = !{!17, !12, i64 4}
!23 = !{!17, !12, i64 8}
!24 = !{!13, !13, i64 0}
!25 = !{!12, !12, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27}
!29 = !{!6, !12, i64 272}
!30 = !{!17, !12, i64 0}
!31 = !{!6, !12, i64 24}
!32 = !{!6, !12, i64 40}
!33 = !{i64 79482, i64 79506}
!34 = distinct !{!34, !27}
!35 = !{!36, !36, i64 0}
!36 = !{!"short", !10, i64 0}
!37 = !{!10, !10, i64 0}
!38 = !{!39, !8, i64 24}
!39 = !{!"", !40, i64 0, !40, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !13, i64 56, !13, i64 64, !12, i64 72, !12, i64 76}
!40 = !{!"p1 _ZTS8SeqDef_s", !9, i64 0}
!41 = distinct !{!41, !27}
!42 = distinct !{!42, !27, !43, !44}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = distinct !{!45, !27, !43, !44}
!46 = distinct !{!46, !47, !43, !44}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !47, !43}
!49 = distinct !{!49, !27, !43}
!50 = !{!39, !40, i64 8}
!51 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!52 = !{!39, !12, i64 72}
!53 = !{!39, !40, i64 0}
!54 = !{!39, !12, i64 76}
!55 = !{!56, !36, i64 4}
!56 = !{!"SeqDef_s", !12, i64 0, !36, i64 4, !36, i64 6}
!57 = !{!56, !12, i64 0}
!58 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!59 = distinct !{!59, !27}
!60 = distinct !{!60, !27}
!61 = distinct !{!61, !27, !43, !44}
!62 = distinct !{!62, !27, !43, !44}
!63 = distinct !{!63, !47}
!64 = distinct !{!64, !27, !43}
!65 = !{!56, !36, i64 6}
!66 = distinct !{!66, !27, !43, !44}
!67 = distinct !{!67, !27, !43, !44}
!68 = distinct !{!68, !47, !43, !44}
!69 = distinct !{!69, !47, !43}
!70 = distinct !{!70, !27, !43}
!71 = distinct !{!71, !27, !43, !44}
!72 = distinct !{!72, !27, !43, !44}
!73 = distinct !{!73, !47}
!74 = distinct !{!74, !27, !43}
!75 = distinct !{!75, !27, !43, !44}
!76 = distinct !{!76, !27, !43, !44}
!77 = distinct !{!77, !47, !43, !44}
!78 = distinct !{!78, !47, !43}
!79 = distinct !{!79, !27, !43}
!80 = distinct !{!80, !27, !43, !44}
!81 = distinct !{!81, !27, !43, !44}
!82 = distinct !{!82, !47}
!83 = distinct !{!83, !27, !43}
!84 = distinct !{!84, !27, !43, !44}
!85 = distinct !{!85, !27, !43, !44}
!86 = distinct !{!86, !47, !43, !44}
!87 = distinct !{!87, !47, !43}
!88 = distinct !{!88, !27, !43}
!89 = distinct !{!89, !27, !43, !44}
!90 = distinct !{!90, !27, !43, !44}
!91 = distinct !{!91, !47}
!92 = distinct !{!92, !27, !43}
!93 = !{!6, !16, i64 248}
!94 = !{!6, !8, i64 0}
!95 = !{}
!96 = !{!"branch_weights", i32 1, i32 1048575}
!97 = !{!6, !12, i64 296}
!98 = distinct !{!98, !27}
!99 = distinct !{!99, !27}
!100 = distinct !{!100, !27, !43, !44}
!101 = distinct !{!101, !27, !43, !44}
!102 = distinct !{!102, !47}
!103 = distinct !{!103, !27, !43}
!104 = distinct !{!104, !27}
!105 = distinct !{!105, !27}
!106 = distinct !{!106, !27}
!107 = distinct !{!107, !27}
!108 = distinct !{!108, !27}
!109 = distinct !{!109, !27}
!110 = distinct !{!110, !27}
!111 = distinct !{!111, !27, !43, !44}
!112 = distinct !{!112, !27, !43, !44}
!113 = distinct !{!113, !47}
!114 = distinct !{!114, !27, !43}
!115 = !{!"branch_weights", !"expected", i32 1717127, i32 2145766521}
!116 = distinct !{!116, !27, !43, !44}
!117 = distinct !{!117, !27, !43, !44}
!118 = distinct !{!118, !47}
!119 = distinct !{!119, !27, !43}
!120 = distinct !{!120, !27, !43, !44}
!121 = distinct !{!121, !27, !43, !44}
!122 = distinct !{!122, !47}
!123 = distinct !{!123, !27, !43}
!124 = distinct !{!124, !27, !43, !44}
!125 = distinct !{!125, !27, !43, !44}
!126 = distinct !{!126, !47}
!127 = distinct !{!127, !27, !43}
!128 = distinct !{!128, !27, !43, !44}
!129 = distinct !{!129, !27, !43, !44}
!130 = distinct !{!130, !47}
!131 = distinct !{!131, !27, !43}
!132 = distinct !{!132, !27, !43, !44}
!133 = distinct !{!133, !27, !43, !44}
!134 = distinct !{!134, !47}
!135 = distinct !{!135, !27, !43}
!136 = distinct !{!136, !27, !43, !44}
!137 = distinct !{!137, !27, !43, !44}
!138 = distinct !{!138, !47}
!139 = distinct !{!139, !27, !43}
!140 = !{!6, !12, i64 28}
!141 = !{!6, !8, i64 16}
!142 = distinct !{!142, !27, !43, !44}
!143 = distinct !{!143, !27, !43, !44}
!144 = distinct !{!144, !47}
!145 = distinct !{!145, !27, !43}
!146 = distinct !{!146, !27}
!147 = distinct !{!147, !27, !43, !44}
!148 = distinct !{!148, !27, !43, !44}
!149 = distinct !{!149, !47}
!150 = distinct !{!150, !27, !43}
!151 = distinct !{!151, !27}
!152 = distinct !{!152, !27}
!153 = distinct !{!153, !27, !43, !44}
!154 = distinct !{!154, !27, !43, !44}
!155 = distinct !{!155, !47}
!156 = distinct !{!156, !27, !43}
!157 = distinct !{!157, !27}
