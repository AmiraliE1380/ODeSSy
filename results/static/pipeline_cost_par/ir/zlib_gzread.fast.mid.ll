; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_gzread.ll'
source_filename = "/mydata/zlib/gzread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"request does not fit in an int\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"request does not fit in a size_t\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"out of room to push characters\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"unexpected end of file\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"internal error: inflate stream corrupt\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"compressed data error\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"state corrupt\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @gzread(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1149, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 7247
  br i1 %8, label %9, label %1149

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %11 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %11, label %12 [
    i32 0, label %16
    i32 -5, label %16
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %1149, label %16

16:                                               ; preds = %12, %9, %9
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %17 = icmp slt i32 %2, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str) #13
  br label %1149

19:                                               ; preds = %16
  %20 = zext nneg i32 %2 to i64
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %1137, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load i64, ptr %23, align 8, !tbaa !18
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %478, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %45

45:                                               ; preds = %475, %26
  %46 = phi i64 [ %476, %475 ], [ %24, %26 ]
  %47 = load i32, ptr %0, align 8, !tbaa !19
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %71, label %49

49:                                               ; preds = %45
  %50 = zext i32 %47 to i64
  %51 = tail call i64 @llvm.smin.i64(i64 %46, i64 %50)
  %52 = trunc i64 %51 to i32
  %53 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %47, i32 %52), !nosanitize !20
  %54 = extractvalue { i32, i1 } %53, 1, !nosanitize !20
  br i1 %54, label %55, label %56, !prof !21, !nosanitize !20

55:                                               ; preds = %65, %49
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

56:                                               ; preds = %49
  %57 = extractvalue { i32, i1 } %53, 0, !nosanitize !20
  store i32 %57, ptr %0, align 8, !tbaa !19
  %58 = load ptr, ptr %27, align 8, !tbaa !22
  %59 = and i64 %51, 4294967295
  %60 = getelementptr inbounds nuw i8, ptr %58, i64 %59
  store ptr %60, ptr %27, align 8, !tbaa !22
  %61 = load i64, ptr %28, align 8, !tbaa !23
  %62 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %61, i64 %59), !nosanitize !20
  %63 = extractvalue { i64, i1 } %62, 1, !nosanitize !20
  br i1 %63, label %64, label %65, !prof !21, !nosanitize !20

64:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

65:                                               ; preds = %56
  %66 = extractvalue { i64, i1 } %62, 0, !nosanitize !20
  store i64 %66, ptr %28, align 8, !tbaa !23
  %67 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %46, i64 %59), !nosanitize !20
  %68 = extractvalue { i64, i1 } %67, 1, !nosanitize !20
  br i1 false, label %55, label %69, !prof !21, !nosanitize !20

69:                                               ; preds = %65
  %70 = extractvalue { i64, i1 } %67, 0, !nosanitize !20
  store i64 %70, ptr %23, align 8, !tbaa !18
  br label %475

71:                                               ; preds = %45
  %72 = load i32, ptr %29, align 8, !tbaa !24
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %30, align 8, !tbaa !25
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %478, label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %472, %77
  %79 = load i32, ptr %31, align 8, !tbaa !26
  switch i32 %79, label %460 [
    i32 0, label %80
    i32 1, label %316
    i32 2, label %360
  ]

80:                                               ; preds = %78
  %81 = load i32, ptr %32, align 8, !tbaa !27
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %80
  %84 = load i32, ptr %42, align 4, !tbaa !28
  %85 = zext i32 %84 to i64
  %86 = tail call noalias ptr @malloc(i64 noundef %85) #16
  store ptr %86, ptr %37, align 8, !tbaa !29
  %87 = shl i32 %84, 1
  %88 = zext i32 %87 to i64
  %89 = tail call noalias ptr @malloc(i64 noundef %88) #16
  store ptr %89, ptr %34, align 8, !tbaa !30
  %90 = icmp eq ptr %86, null
  %91 = icmp eq ptr %89, null
  %92 = or i1 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  tail call void @free(ptr noundef %89) #13
  tail call void @free(ptr noundef %86) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1137

94:                                               ; preds = %83
  store i32 %84, ptr %32, align 8, !tbaa !27
  store i32 0, ptr %30, align 8, !tbaa !25
  store ptr null, ptr %36, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  %95 = tail call i32 @inflateInit2_(ptr noundef nonnull %36, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %34, align 8, !tbaa !30
  tail call void @free(ptr noundef %98) #13
  %99 = load ptr, ptr %37, align 8, !tbaa !29
  tail call void @free(ptr noundef %99) #13
  store i32 0, ptr %32, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1137

100:                                              ; preds = %94, %80
  %101 = load i32, ptr %44, align 8, !tbaa !32
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, ptr %40, align 4, !tbaa !33
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103, %100
  %107 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  %108 = load i32, ptr %40, align 4, !tbaa !33
  %109 = icmp ne i32 %108, -1
  %110 = zext i1 %109 to i32
  store i32 %110, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %313

111:                                              ; preds = %103
  %112 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %112, label %1139 [
    i32 0, label %113
    i32 -5, label %113
  ]

113:                                              ; preds = %111, %111
  %114 = load i32, ptr %29, align 8, !tbaa !24
  %115 = icmp eq i32 %114, 0
  %116 = load i32, ptr %30, align 8, !tbaa !34
  br i1 %115, label %117, label %281

117:                                              ; preds = %113
  %118 = icmp eq i32 %116, 0
  br i1 %118, label %225, label %119

119:                                              ; preds = %117
  %120 = load ptr, ptr %37, align 8, !tbaa !29
  %121 = load ptr, ptr %36, align 8, !tbaa !35
  %122 = icmp eq ptr %121, %120
  br i1 %122, label %225, label %123

123:                                              ; preds = %119
  %124 = ptrtoint ptr %121 to i64
  %125 = ptrtoint ptr %120 to i64
  %126 = zext i32 %116 to i64
  %127 = icmp ult i32 %116, 4
  %128 = sub i64 %125, %124
  %129 = icmp ult i64 %128, 32
  %130 = or i1 %127, %129
  br i1 %130, label %170, label %131

131:                                              ; preds = %123
  %132 = icmp ult i32 %116, 32
  br i1 %132, label %154, label %133

133:                                              ; preds = %131
  %134 = and i64 %126, 4294967264
  br label %135

135:                                              ; preds = %135, %133
  %136 = phi i64 [ 0, %133 ], [ %143, %135 ]
  %137 = getelementptr i8, ptr %120, i64 %136
  %138 = getelementptr i8, ptr %121, i64 %136
  %139 = getelementptr i8, ptr %138, i64 16
  %140 = load <16 x i8>, ptr %138, align 1, !tbaa !36
  %141 = load <16 x i8>, ptr %139, align 1, !tbaa !36
  %142 = getelementptr i8, ptr %137, i64 16
  store <16 x i8> %140, ptr %137, align 1, !tbaa !36
  store <16 x i8> %141, ptr %142, align 1, !tbaa !36
  %143 = add nuw i64 %136, 32
  %144 = icmp eq i64 %143, %134
  br i1 %144, label %145, label %135, !llvm.loop !37

145:                                              ; preds = %135
  %146 = icmp eq i64 %134, %126
  br i1 %146, label %223, label %147

147:                                              ; preds = %145
  %148 = getelementptr i8, ptr %120, i64 %134
  %149 = getelementptr i8, ptr %121, i64 %134
  %150 = trunc nuw i64 %134 to i32
  %151 = sub i32 %116, %150
  %152 = and i64 %126, 28
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %170, label %154

154:                                              ; preds = %147, %131
  %155 = phi i64 [ %134, %147 ], [ 0, %131 ]
  %156 = and i64 %126, 4294967292
  %157 = getelementptr i8, ptr %120, i64 %156
  %158 = getelementptr i8, ptr %121, i64 %156
  %159 = trunc nuw i64 %156 to i32
  %160 = sub i32 %116, %159
  br label %161

161:                                              ; preds = %161, %154
  %162 = phi i64 [ %155, %154 ], [ %166, %161 ]
  %163 = getelementptr i8, ptr %120, i64 %162
  %164 = getelementptr i8, ptr %121, i64 %162
  %165 = load <4 x i8>, ptr %164, align 1, !tbaa !36
  store <4 x i8> %165, ptr %163, align 1, !tbaa !36
  %166 = add nuw i64 %162, 4
  %167 = icmp eq i64 %166, %156
  br i1 %167, label %168, label %161, !llvm.loop !41

168:                                              ; preds = %161
  %169 = icmp eq i64 %156, %126
  br i1 %169, label %223, label %170

170:                                              ; preds = %168, %147, %123
  %171 = phi ptr [ %120, %123 ], [ %148, %147 ], [ %157, %168 ]
  %172 = phi ptr [ %121, %123 ], [ %149, %147 ], [ %158, %168 ]
  %173 = phi i32 [ %116, %123 ], [ %151, %147 ], [ %160, %168 ]
  %174 = add i32 %173, -1
  %175 = and i32 %173, 7
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %188, label %177

177:                                              ; preds = %177, %170
  %178 = phi ptr [ %184, %177 ], [ %171, %170 ]
  %179 = phi ptr [ %185, %177 ], [ %172, %170 ]
  %180 = phi i32 [ %183, %177 ], [ %173, %170 ]
  %181 = phi i32 [ %186, %177 ], [ 0, %170 ]
  %182 = load i8, ptr %179, align 1, !tbaa !36
  store i8 %182, ptr %178, align 1, !tbaa !36
  %183 = add i32 %180, -1
  %184 = getelementptr inbounds nuw i8, ptr %178, i64 1
  %185 = getelementptr inbounds nuw i8, ptr %179, i64 1
  %186 = add i32 %181, 1
  %187 = icmp eq i32 %186, %175
  br i1 %187, label %188, label %177, !llvm.loop !42

188:                                              ; preds = %177, %170
  %189 = phi ptr [ %171, %170 ], [ %184, %177 ]
  %190 = phi ptr [ %172, %170 ], [ %185, %177 ]
  %191 = phi i32 [ %173, %170 ], [ %183, %177 ]
  %192 = icmp ult i32 %174, 7
  br i1 %192, label %223, label %193

193:                                              ; preds = %193, %188
  %194 = phi ptr [ %220, %193 ], [ %189, %188 ]
  %195 = phi ptr [ %221, %193 ], [ %190, %188 ]
  %196 = phi i32 [ %219, %193 ], [ %191, %188 ]
  %197 = load i8, ptr %195, align 1, !tbaa !36
  store i8 %197, ptr %194, align 1, !tbaa !36
  %198 = getelementptr inbounds nuw i8, ptr %194, i64 1
  %199 = getelementptr inbounds nuw i8, ptr %195, i64 1
  %200 = load i8, ptr %199, align 1, !tbaa !36
  store i8 %200, ptr %198, align 1, !tbaa !36
  %201 = getelementptr inbounds nuw i8, ptr %194, i64 2
  %202 = getelementptr inbounds nuw i8, ptr %195, i64 2
  %203 = load i8, ptr %202, align 1, !tbaa !36
  store i8 %203, ptr %201, align 1, !tbaa !36
  %204 = getelementptr inbounds nuw i8, ptr %194, i64 3
  %205 = getelementptr inbounds nuw i8, ptr %195, i64 3
  %206 = load i8, ptr %205, align 1, !tbaa !36
  store i8 %206, ptr %204, align 1, !tbaa !36
  %207 = getelementptr inbounds nuw i8, ptr %194, i64 4
  %208 = getelementptr inbounds nuw i8, ptr %195, i64 4
  %209 = load i8, ptr %208, align 1, !tbaa !36
  store i8 %209, ptr %207, align 1, !tbaa !36
  %210 = getelementptr inbounds nuw i8, ptr %194, i64 5
  %211 = getelementptr inbounds nuw i8, ptr %195, i64 5
  %212 = load i8, ptr %211, align 1, !tbaa !36
  store i8 %212, ptr %210, align 1, !tbaa !36
  %213 = getelementptr inbounds nuw i8, ptr %194, i64 6
  %214 = getelementptr inbounds nuw i8, ptr %195, i64 6
  %215 = load i8, ptr %214, align 1, !tbaa !36
  store i8 %215, ptr %213, align 1, !tbaa !36
  %216 = getelementptr inbounds nuw i8, ptr %194, i64 7
  %217 = getelementptr inbounds nuw i8, ptr %195, i64 7
  %218 = load i8, ptr %217, align 1, !tbaa !36
  store i8 %218, ptr %216, align 1, !tbaa !36
  %219 = add i32 %196, -8
  %220 = getelementptr inbounds nuw i8, ptr %194, i64 8
  %221 = getelementptr inbounds nuw i8, ptr %195, i64 8
  %222 = icmp eq i32 %219, 0
  br i1 %222, label %223, label %193, !llvm.loop !44

223:                                              ; preds = %193, %188, %168, %145
  %224 = load i32, ptr %30, align 8, !tbaa !34
  br label %225

225:                                              ; preds = %223, %119, %117
  %226 = phi i32 [ %224, %223 ], [ %116, %119 ], [ 0, %117 ]
  %227 = load i32, ptr %32, align 8, !tbaa !27
  %228 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %227, i32 %226), !nosanitize !20
  %229 = extractvalue { i32, i1 } %228, 1, !nosanitize !20
  br i1 %229, label %230, label %231, !prof !21, !nosanitize !20

230:                                              ; preds = %225
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

231:                                              ; preds = %225
  %232 = extractvalue { i32, i1 } %228, 0, !nosanitize !20
  %233 = load ptr, ptr %37, align 8, !tbaa !29
  %234 = zext i32 %226 to i64
  %235 = getelementptr inbounds nuw i8, ptr %233, i64 %234
  store i32 0, ptr %38, align 4, !tbaa !17
  %236 = tail call ptr @__errno_location() #17
  store i32 0, ptr %236, align 4, !tbaa !45
  br label %237

237:                                              ; preds = %256, %231
  %238 = phi i32 [ 0, %231 ], [ %257, %256 ]
  %239 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %232, i32 %238), !nosanitize !20
  %240 = extractvalue { i32, i1 } %239, 1, !nosanitize !20
  br i1 %240, label %241, label %242, !prof !21, !nosanitize !20

241:                                              ; preds = %237
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

242:                                              ; preds = %237
  %243 = extractvalue { i32, i1 } %239, 0, !nosanitize !20
  %244 = tail call i32 @llvm.umin.i32(i32 %243, i32 1073741824)
  %245 = load i32, ptr %39, align 4, !tbaa !46
  %246 = zext i32 %238 to i64
  %247 = getelementptr inbounds nuw i8, ptr %235, i64 %246
  %248 = zext nneg i32 %244 to i64
  %249 = tail call i64 @read(i32 noundef %245, ptr noundef %247, i64 noundef %248) #13
  %250 = trunc i64 %249 to i32
  %251 = icmp slt i32 %250, 1
  br i1 %251, label %259, label %252

252:                                              ; preds = %242
  %253 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %238, i32 %250), !nosanitize !20
  %254 = extractvalue { i32, i1 } %253, 1, !nosanitize !20
  br i1 %254, label %255, label %256, !prof !21, !nosanitize !20

255:                                              ; preds = %252
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

256:                                              ; preds = %252
  %257 = extractvalue { i32, i1 } %253, 0, !nosanitize !20
  %258 = icmp ult i32 %257, %232
  br i1 %258, label %237, label %272, !llvm.loop !47

259:                                              ; preds = %242
  %260 = icmp slt i32 %250, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %259
  %262 = load i32, ptr %236, align 4, !tbaa !45
  %263 = icmp eq i32 %262, 11
  br i1 %263, label %264, label %269

264:                                              ; preds = %261
  store i32 1, ptr %38, align 4, !tbaa !17
  %265 = icmp eq i32 %238, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %264
  %267 = load i32, ptr %236, align 4, !tbaa !45
  br label %269

268:                                              ; preds = %259
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %272

269:                                              ; preds = %266, %261
  %270 = phi i32 [ %267, %266 ], [ %262, %261 ]
  %271 = tail call ptr @strerror(i32 noundef %270) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %271) #13
  br label %1137

272:                                              ; preds = %268, %264, %256
  %273 = phi i32 [ %238, %268 ], [ %238, %264 ], [ %257, %256 ]
  %274 = load i32, ptr %30, align 8, !tbaa !34
  %275 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %274, i32 %273), !nosanitize !20
  %276 = extractvalue { i32, i1 } %275, 1, !nosanitize !20
  br i1 %276, label %277, label %278, !prof !21, !nosanitize !20

277:                                              ; preds = %272
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

278:                                              ; preds = %272
  %279 = extractvalue { i32, i1 } %275, 0, !nosanitize !20
  store i32 %279, ptr %30, align 8, !tbaa !34
  %280 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %280, ptr %36, align 8, !tbaa !35
  br label %281

281:                                              ; preds = %278, %113
  %282 = phi i32 [ %279, %278 ], [ %116, %113 ]
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %313, label %284

284:                                              ; preds = %281
  %285 = load i32, ptr %38, align 4, !tbaa !17
  %286 = icmp ne i32 %285, 0
  %287 = icmp ult i32 %282, 4
  %288 = and i1 %287, %286
  br i1 %288, label %313, label %289

289:                                              ; preds = %284
  %290 = icmp ugt i32 %282, 3
  %291 = load ptr, ptr %36, align 8, !tbaa !35
  br i1 %290, label %292, label %309

292:                                              ; preds = %289
  %293 = load i8, ptr %291, align 1, !tbaa !36
  %294 = icmp eq i8 %293, 31
  br i1 %294, label %295, label %309

295:                                              ; preds = %292
  %296 = getelementptr inbounds nuw i8, ptr %291, i64 1
  %297 = load i8, ptr %296, align 1, !tbaa !36
  %298 = icmp eq i8 %297, -117
  br i1 %298, label %299, label %309

299:                                              ; preds = %295
  %300 = getelementptr inbounds nuw i8, ptr %291, i64 2
  %301 = load i8, ptr %300, align 1, !tbaa !36
  %302 = icmp eq i8 %301, 8
  br i1 %302, label %303, label %309

303:                                              ; preds = %299
  %304 = getelementptr inbounds nuw i8, ptr %291, i64 3
  %305 = load i8, ptr %304, align 1, !tbaa !36
  %306 = icmp ult i8 %305, 32
  br i1 %306, label %307, label %309

307:                                              ; preds = %303
  %308 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  store i32 1, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %461

309:                                              ; preds = %303, %299, %295, %292, %289
  %310 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %310, ptr %27, align 8, !tbaa !22
  %311 = zext i32 %282 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %310, ptr align 1 %291, i64 %311, i1 false)
  %312 = load i32, ptr %30, align 8, !tbaa !34
  store i32 %312, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %31, align 8, !tbaa !26
  br label %463

313:                                              ; preds = %284, %281, %106
  %314 = load i32, ptr %31, align 8, !tbaa !26
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %473, label %461

316:                                              ; preds = %78
  %317 = load ptr, ptr %34, align 8, !tbaa !30
  %318 = load i32, ptr %32, align 8, !tbaa !27
  %319 = shl i32 %318, 1
  store i32 0, ptr %38, align 4, !tbaa !17
  %320 = tail call ptr @__errno_location() #17
  store i32 0, ptr %320, align 4, !tbaa !45
  store i32 0, ptr %0, align 4, !tbaa !45
  br label %321

321:                                              ; preds = %341, %316
  %322 = phi i32 [ %342, %341 ], [ 0, %316 ]
  %323 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %319, i32 %322), !nosanitize !20
  %324 = extractvalue { i32, i1 } %323, 1, !nosanitize !20
  br i1 false, label %325, label %326, !prof !21, !nosanitize !20

325:                                              ; preds = %321
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

326:                                              ; preds = %321
  %327 = extractvalue { i32, i1 } %323, 0, !nosanitize !20
  %328 = tail call i32 @llvm.umin.i32(i32 %327, i32 1073741824)
  %329 = load i32, ptr %39, align 4, !tbaa !46
  %330 = zext i32 %322 to i64
  %331 = getelementptr inbounds nuw i8, ptr %317, i64 %330
  %332 = zext nneg i32 %328 to i64
  %333 = tail call i64 @read(i32 noundef %329, ptr noundef %331, i64 noundef %332) #13
  %334 = trunc i64 %333 to i32
  %335 = icmp slt i32 %334, 1
  br i1 %335, label %344, label %336

336:                                              ; preds = %326
  %337 = load i32, ptr %0, align 4, !tbaa !45
  %338 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %337, i32 %334), !nosanitize !20
  %339 = extractvalue { i32, i1 } %338, 1, !nosanitize !20
  br i1 %339, label %340, label %341, !prof !21, !nosanitize !20

340:                                              ; preds = %336
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

341:                                              ; preds = %336
  %342 = extractvalue { i32, i1 } %338, 0, !nosanitize !20
  store i32 %342, ptr %0, align 4, !tbaa !45
  %343 = icmp ult i32 %342, %319
  br i1 %343, label %321, label %358, !llvm.loop !47

344:                                              ; preds = %326
  %345 = icmp slt i32 %334, 0
  br i1 %345, label %346, label %354

346:                                              ; preds = %344
  %347 = load i32, ptr %320, align 4, !tbaa !45
  %348 = icmp eq i32 %347, 11
  br i1 %348, label %349, label %355

349:                                              ; preds = %346
  store i32 1, ptr %38, align 4, !tbaa !17
  %350 = load i32, ptr %0, align 4, !tbaa !45
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %349
  %353 = load i32, ptr %320, align 4, !tbaa !45
  br label %355

354:                                              ; preds = %344
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %358

355:                                              ; preds = %352, %346
  %356 = phi i32 [ %353, %352 ], [ %347, %346 ]
  %357 = tail call ptr @strerror(i32 noundef %356) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %357) #13
  br label %1137

358:                                              ; preds = %354, %349, %341
  %359 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %359, ptr %27, align 8, !tbaa !22
  br label %473

360:                                              ; preds = %78
  %361 = load i32, ptr %32, align 8, !tbaa !27
  %362 = shl i32 %361, 1
  store i32 %362, ptr %33, align 8, !tbaa !48
  %363 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %363, ptr %35, align 8, !tbaa !49
  br label %364

364:                                              ; preds = %443, %360
  %365 = phi i32 [ 0, %360 ], [ %428, %443 ]
  %366 = load i32, ptr %30, align 8, !tbaa !34
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %427

368:                                              ; preds = %364
  %369 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %369, label %447 [
    i32 0, label %370
    i32 -5, label %370
  ]

370:                                              ; preds = %368, %368
  %371 = load i32, ptr %29, align 8, !tbaa !24
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %423

373:                                              ; preds = %370
  %374 = load i32, ptr %32, align 8, !tbaa !27
  %375 = load ptr, ptr %37, align 8, !tbaa !29
  store i32 0, ptr %38, align 4, !tbaa !17
  %376 = tail call ptr @__errno_location() #17
  store i32 0, ptr %376, align 4, !tbaa !45
  br label %377

377:                                              ; preds = %396, %373
  %378 = phi i32 [ 0, %373 ], [ %397, %396 ]
  %379 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %374, i32 %378), !nosanitize !20
  %380 = extractvalue { i32, i1 } %379, 1, !nosanitize !20
  br i1 false, label %381, label %382, !prof !21, !nosanitize !20

381:                                              ; preds = %377
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

382:                                              ; preds = %377
  %383 = extractvalue { i32, i1 } %379, 0, !nosanitize !20
  %384 = tail call i32 @llvm.umin.i32(i32 %383, i32 1073741824)
  %385 = load i32, ptr %39, align 4, !tbaa !46
  %386 = zext i32 %378 to i64
  %387 = getelementptr inbounds nuw i8, ptr %375, i64 %386
  %388 = zext nneg i32 %384 to i64
  %389 = tail call i64 @read(i32 noundef %385, ptr noundef %387, i64 noundef %388) #13
  %390 = trunc i64 %389 to i32
  %391 = icmp slt i32 %390, 1
  br i1 %391, label %399, label %392

392:                                              ; preds = %382
  %393 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %378, i32 %390), !nosanitize !20
  %394 = extractvalue { i32, i1 } %393, 1, !nosanitize !20
  br i1 %394, label %395, label %396, !prof !21, !nosanitize !20

395:                                              ; preds = %392
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

396:                                              ; preds = %392
  %397 = extractvalue { i32, i1 } %393, 0, !nosanitize !20
  %398 = icmp ult i32 %397, %374
  br i1 %398, label %377, label %413, !llvm.loop !47

399:                                              ; preds = %382
  %400 = icmp slt i32 %390, 0
  br i1 %400, label %401, label %408

401:                                              ; preds = %399
  %402 = load i32, ptr %376, align 4, !tbaa !45
  %403 = icmp eq i32 %402, 11
  br i1 %403, label %404, label %409

404:                                              ; preds = %401
  store i32 1, ptr %38, align 4, !tbaa !17
  %405 = icmp eq i32 %378, 0
  br i1 %405, label %406, label %413

406:                                              ; preds = %404
  %407 = load i32, ptr %376, align 4, !tbaa !45
  br label %409

408:                                              ; preds = %399
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %413

409:                                              ; preds = %406, %401
  %410 = phi i32 [ %407, %406 ], [ %402, %401 ]
  %411 = tail call ptr @strerror(i32 noundef %410) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %411) #13
  %412 = load i32, ptr %10, align 8, !tbaa !16
  br label %447

413:                                              ; preds = %408, %404, %396
  %414 = phi i32 [ %378, %408 ], [ %378, %404 ], [ %397, %396 ]
  %415 = load i32, ptr %30, align 8, !tbaa !34
  %416 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %415, i32 %414), !nosanitize !20
  %417 = extractvalue { i32, i1 } %416, 1, !nosanitize !20
  br i1 %417, label %418, label %419, !prof !21, !nosanitize !20

418:                                              ; preds = %413
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

419:                                              ; preds = %413
  %420 = extractvalue { i32, i1 } %416, 0, !nosanitize !20
  store i32 %420, ptr %30, align 8, !tbaa !34
  %421 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %421, ptr %36, align 8, !tbaa !35
  %422 = icmp eq i32 %420, 0
  br i1 %422, label %423, label %427

423:                                              ; preds = %419, %370
  %424 = load i32, ptr %38, align 4, !tbaa !17
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %447

426:                                              ; preds = %423
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %447

427:                                              ; preds = %419, %364
  %428 = tail call i32 @inflate(ptr noundef nonnull %36, i32 noundef 0) #13
  %429 = load i32, ptr %33, align 8, !tbaa !48
  %430 = icmp ult i32 %429, %362
  br i1 %430, label %431, label %432

431:                                              ; preds = %427
  store i32 0, ptr %40, align 4, !tbaa !33
  br label %432

432:                                              ; preds = %431, %427
  switch i32 %428, label %443 [
    i32 -2, label %433
    i32 2, label %433
    i32 -4, label %434
    i32 -3, label %435
  ]

433:                                              ; preds = %432, %432
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %447

434:                                              ; preds = %432
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %447

435:                                              ; preds = %432
  %436 = load i32, ptr %40, align 4, !tbaa !33
  %437 = icmp eq i32 %436, 1
  br i1 %437, label %438, label %439

438:                                              ; preds = %435
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !24
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %447

439:                                              ; preds = %435
  %440 = load ptr, ptr %41, align 8, !tbaa !50
  %441 = icmp eq ptr %440, null
  %442 = select i1 %441, ptr @.str.6, ptr %440
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %442) #13
  br label %447

443:                                              ; preds = %432
  %444 = icmp ne i32 %429, 0
  %445 = icmp ne i32 %428, 1
  %446 = select i1 %444, i1 %445, i1 false
  br i1 %446, label %364, label %447, !llvm.loop !51

447:                                              ; preds = %443, %439, %438, %434, %433, %426, %423, %409, %368
  %448 = phi i32 [ %365, %423 ], [ %365, %426 ], [ %428, %433 ], [ -4, %434 ], [ 0, %438 ], [ -3, %439 ], [ %412, %409 ], [ %428, %443 ], [ %369, %368 ]
  %449 = load i32, ptr %33, align 8, !tbaa !48
  %450 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %362, i32 %449), !nosanitize !20
  %451 = extractvalue { i32, i1 } %450, 1, !nosanitize !20
  br i1 %451, label %452, label %453, !prof !21, !nosanitize !20

452:                                              ; preds = %447
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

453:                                              ; preds = %447
  %454 = extractvalue { i32, i1 } %450, 0, !nosanitize !20
  store i32 %454, ptr %0, align 8, !tbaa !19
  %455 = load ptr, ptr %35, align 8, !tbaa !49
  %456 = zext i32 %454 to i64
  %457 = sub nsw i64 0, %456
  %458 = getelementptr inbounds i8, ptr %455, i64 %457
  store ptr %458, ptr %27, align 8, !tbaa !22
  switch i32 %448, label %1137 [
    i32 1, label %459
    i32 0, label %461
  ]

459:                                              ; preds = %453
  store i32 0, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %461

460:                                              ; preds = %78
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1137

461:                                              ; preds = %459, %453, %313, %307
  %462 = load i32, ptr %0, align 8, !tbaa !19
  br label %463

463:                                              ; preds = %461, %309
  %464 = phi i32 [ %462, %461 ], [ %312, %309 ]
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %473

466:                                              ; preds = %463
  %467 = load i32, ptr %29, align 8, !tbaa !24
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %472, label %469

469:                                              ; preds = %466
  %470 = load i32, ptr %30, align 8, !tbaa !34
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %473, label %472

472:                                              ; preds = %469, %466
  br label %78, !llvm.loop !52

473:                                              ; preds = %469, %463, %358, %313
  %474 = load i64, ptr %23, align 8, !tbaa !18
  br label %475

475:                                              ; preds = %473, %69
  %476 = phi i64 [ %474, %473 ], [ %70, %69 ]
  %477 = icmp eq i64 %476, 0
  br i1 %477, label %478, label %45, !llvm.loop !53

478:                                              ; preds = %475, %74, %22
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %481 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %483 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %485 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %486 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %487 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %488 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %490 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %492 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %493 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %495 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %496 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %497

497:                                              ; preds = %1117, %478
  %498 = phi ptr [ %1, %478 ], [ %1118, %1117 ]
  %499 = phi i64 [ %20, %478 ], [ %1119, %1117 ]
  %500 = phi i64 [ 0, %478 ], [ %1120, %1117 ]
  %501 = tail call i64 @llvm.umin.i64(i64 %499, i64 4294967295)
  %502 = trunc nuw i64 %501 to i32
  %503 = load i32, ptr %0, align 8, !tbaa !19
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %520, label %505

505:                                              ; preds = %497
  %506 = tail call i32 @llvm.umin.i32(i32 %503, i32 %502)
  %507 = load ptr, ptr %479, align 8, !tbaa !22
  %508 = zext i32 %506 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %498, ptr align 1 %507, i64 %508, i1 false)
  %509 = load ptr, ptr %479, align 8, !tbaa !22
  %510 = getelementptr inbounds nuw i8, ptr %509, i64 %508
  store ptr %510, ptr %479, align 8, !tbaa !22
  %511 = load i32, ptr %0, align 8, !tbaa !19
  %512 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %511, i32 %506), !nosanitize !20
  %513 = extractvalue { i32, i1 } %512, 1, !nosanitize !20
  br i1 %513, label %514, label %515, !prof !21, !nosanitize !20

514:                                              ; preds = %505
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

515:                                              ; preds = %505
  %516 = extractvalue { i32, i1 } %512, 0, !nosanitize !20
  store i32 %516, ptr %0, align 8, !tbaa !19
  %517 = load i32, ptr %10, align 8, !tbaa !16
  %518 = icmp ne i32 %517, 0
  %519 = sext i1 %518 to i32
  br label %1098

520:                                              ; preds = %497
  %521 = load i32, ptr %480, align 8, !tbaa !24
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %526, label %523

523:                                              ; preds = %520
  %524 = load i32, ptr %481, align 8, !tbaa !25
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %1125, label %526

526:                                              ; preds = %523, %520
  %527 = load i32, ptr %482, align 8, !tbaa !26
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %533, label %529

529:                                              ; preds = %526
  %530 = load i32, ptr %483, align 8, !tbaa !27
  %531 = shl i32 %530, 1
  %532 = icmp ugt i32 %531, %502
  br i1 %532, label %533, label %934

533:                                              ; preds = %529, %526
  br label %534

534:                                              ; preds = %928, %533
  %535 = phi i32 [ %929, %928 ], [ %527, %533 ]
  switch i32 %535, label %916 [
    i32 0, label %536
    i32 1, label %772
    i32 2, label %816
  ]

536:                                              ; preds = %534
  %537 = load i32, ptr %483, align 8, !tbaa !27
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %556

539:                                              ; preds = %536
  %540 = load i32, ptr %494, align 4, !tbaa !28
  %541 = zext i32 %540 to i64
  %542 = tail call noalias ptr @malloc(i64 noundef %541) #16
  store ptr %542, ptr %487, align 8, !tbaa !29
  %543 = shl i32 %540, 1
  %544 = zext i32 %543 to i64
  %545 = tail call noalias ptr @malloc(i64 noundef %544) #16
  store ptr %545, ptr %493, align 8, !tbaa !30
  %546 = icmp eq ptr %542, null
  %547 = icmp eq ptr %545, null
  %548 = or i1 %546, %547
  br i1 %548, label %549, label %550

549:                                              ; preds = %539
  tail call void @free(ptr noundef %545) #13
  tail call void @free(ptr noundef %542) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %930

550:                                              ; preds = %539
  store i32 %540, ptr %483, align 8, !tbaa !27
  store i32 0, ptr %481, align 8, !tbaa !25
  store ptr null, ptr %486, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %495, i8 0, i64 24, i1 false)
  %551 = tail call i32 @inflateInit2_(ptr noundef nonnull %486, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %556, label %553

553:                                              ; preds = %550
  %554 = load ptr, ptr %493, align 8, !tbaa !30
  tail call void @free(ptr noundef %554) #13
  %555 = load ptr, ptr %487, align 8, !tbaa !29
  tail call void @free(ptr noundef %555) #13
  store i32 0, ptr %483, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %930

556:                                              ; preds = %550, %536
  %557 = load i32, ptr %496, align 8, !tbaa !32
  %558 = icmp eq i32 %557, -1
  br i1 %558, label %562, label %559

559:                                              ; preds = %556
  %560 = load i32, ptr %490, align 4, !tbaa !33
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %567

562:                                              ; preds = %559, %556
  %563 = tail call i32 @inflateReset(ptr noundef nonnull %486) #13
  store i32 2, ptr %482, align 8, !tbaa !26
  %564 = load i32, ptr %490, align 4, !tbaa !33
  %565 = icmp ne i32 %564, -1
  %566 = zext i1 %565 to i32
  store i32 %566, ptr %490, align 4, !tbaa !33
  store i32 0, ptr %496, align 8, !tbaa !32
  br label %769

567:                                              ; preds = %559
  %568 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %568, label %930 [
    i32 0, label %569
    i32 -5, label %569
  ]

569:                                              ; preds = %567, %567
  %570 = load i32, ptr %480, align 8, !tbaa !24
  %571 = icmp eq i32 %570, 0
  %572 = load i32, ptr %481, align 8, !tbaa !34
  br i1 %571, label %573, label %737

573:                                              ; preds = %569
  %574 = icmp eq i32 %572, 0
  br i1 %574, label %681, label %575

575:                                              ; preds = %573
  %576 = load ptr, ptr %487, align 8, !tbaa !29
  %577 = load ptr, ptr %486, align 8, !tbaa !35
  %578 = icmp eq ptr %577, %576
  br i1 %578, label %681, label %579

579:                                              ; preds = %575
  %580 = ptrtoint ptr %577 to i64
  %581 = ptrtoint ptr %576 to i64
  %582 = zext i32 %572 to i64
  %583 = icmp ult i32 %572, 4
  %584 = sub i64 %581, %580
  %585 = icmp ult i64 %584, 32
  %586 = or i1 %583, %585
  br i1 %586, label %626, label %587

587:                                              ; preds = %579
  %588 = icmp ult i32 %572, 32
  br i1 %588, label %610, label %589

589:                                              ; preds = %587
  %590 = and i64 %582, 4294967264
  br label %591

591:                                              ; preds = %591, %589
  %592 = phi i64 [ 0, %589 ], [ %599, %591 ]
  %593 = getelementptr i8, ptr %576, i64 %592
  %594 = getelementptr i8, ptr %577, i64 %592
  %595 = getelementptr i8, ptr %594, i64 16
  %596 = load <16 x i8>, ptr %594, align 1, !tbaa !36
  %597 = load <16 x i8>, ptr %595, align 1, !tbaa !36
  %598 = getelementptr i8, ptr %593, i64 16
  store <16 x i8> %596, ptr %593, align 1, !tbaa !36
  store <16 x i8> %597, ptr %598, align 1, !tbaa !36
  %599 = add nuw i64 %592, 32
  %600 = icmp eq i64 %599, %590
  br i1 %600, label %601, label %591, !llvm.loop !54

601:                                              ; preds = %591
  %602 = icmp eq i64 %590, %582
  br i1 %602, label %679, label %603

603:                                              ; preds = %601
  %604 = getelementptr i8, ptr %576, i64 %590
  %605 = getelementptr i8, ptr %577, i64 %590
  %606 = trunc nuw i64 %590 to i32
  %607 = sub i32 %572, %606
  %608 = and i64 %582, 28
  %609 = icmp eq i64 %608, 0
  br i1 %609, label %626, label %610

610:                                              ; preds = %603, %587
  %611 = phi i64 [ %590, %603 ], [ 0, %587 ]
  %612 = and i64 %582, 4294967292
  %613 = getelementptr i8, ptr %576, i64 %612
  %614 = getelementptr i8, ptr %577, i64 %612
  %615 = trunc nuw i64 %612 to i32
  %616 = sub i32 %572, %615
  br label %617

617:                                              ; preds = %617, %610
  %618 = phi i64 [ %611, %610 ], [ %622, %617 ]
  %619 = getelementptr i8, ptr %576, i64 %618
  %620 = getelementptr i8, ptr %577, i64 %618
  %621 = load <4 x i8>, ptr %620, align 1, !tbaa !36
  store <4 x i8> %621, ptr %619, align 1, !tbaa !36
  %622 = add nuw i64 %618, 4
  %623 = icmp eq i64 %622, %612
  br i1 %623, label %624, label %617, !llvm.loop !55

624:                                              ; preds = %617
  %625 = icmp eq i64 %612, %582
  br i1 %625, label %679, label %626

626:                                              ; preds = %624, %603, %579
  %627 = phi ptr [ %576, %579 ], [ %604, %603 ], [ %613, %624 ]
  %628 = phi ptr [ %577, %579 ], [ %605, %603 ], [ %614, %624 ]
  %629 = phi i32 [ %572, %579 ], [ %607, %603 ], [ %616, %624 ]
  %630 = add i32 %629, -1
  %631 = and i32 %629, 7
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %644, label %633

633:                                              ; preds = %633, %626
  %634 = phi ptr [ %640, %633 ], [ %627, %626 ]
  %635 = phi ptr [ %641, %633 ], [ %628, %626 ]
  %636 = phi i32 [ %639, %633 ], [ %629, %626 ]
  %637 = phi i32 [ %642, %633 ], [ 0, %626 ]
  %638 = load i8, ptr %635, align 1, !tbaa !36
  store i8 %638, ptr %634, align 1, !tbaa !36
  %639 = add i32 %636, -1
  %640 = getelementptr inbounds nuw i8, ptr %634, i64 1
  %641 = getelementptr inbounds nuw i8, ptr %635, i64 1
  %642 = add i32 %637, 1
  %643 = icmp eq i32 %642, %631
  br i1 %643, label %644, label %633, !llvm.loop !56

644:                                              ; preds = %633, %626
  %645 = phi ptr [ %627, %626 ], [ %640, %633 ]
  %646 = phi ptr [ %628, %626 ], [ %641, %633 ]
  %647 = phi i32 [ %629, %626 ], [ %639, %633 ]
  %648 = icmp ult i32 %630, 7
  br i1 %648, label %679, label %649

649:                                              ; preds = %649, %644
  %650 = phi ptr [ %676, %649 ], [ %645, %644 ]
  %651 = phi ptr [ %677, %649 ], [ %646, %644 ]
  %652 = phi i32 [ %675, %649 ], [ %647, %644 ]
  %653 = load i8, ptr %651, align 1, !tbaa !36
  store i8 %653, ptr %650, align 1, !tbaa !36
  %654 = getelementptr inbounds nuw i8, ptr %650, i64 1
  %655 = getelementptr inbounds nuw i8, ptr %651, i64 1
  %656 = load i8, ptr %655, align 1, !tbaa !36
  store i8 %656, ptr %654, align 1, !tbaa !36
  %657 = getelementptr inbounds nuw i8, ptr %650, i64 2
  %658 = getelementptr inbounds nuw i8, ptr %651, i64 2
  %659 = load i8, ptr %658, align 1, !tbaa !36
  store i8 %659, ptr %657, align 1, !tbaa !36
  %660 = getelementptr inbounds nuw i8, ptr %650, i64 3
  %661 = getelementptr inbounds nuw i8, ptr %651, i64 3
  %662 = load i8, ptr %661, align 1, !tbaa !36
  store i8 %662, ptr %660, align 1, !tbaa !36
  %663 = getelementptr inbounds nuw i8, ptr %650, i64 4
  %664 = getelementptr inbounds nuw i8, ptr %651, i64 4
  %665 = load i8, ptr %664, align 1, !tbaa !36
  store i8 %665, ptr %663, align 1, !tbaa !36
  %666 = getelementptr inbounds nuw i8, ptr %650, i64 5
  %667 = getelementptr inbounds nuw i8, ptr %651, i64 5
  %668 = load i8, ptr %667, align 1, !tbaa !36
  store i8 %668, ptr %666, align 1, !tbaa !36
  %669 = getelementptr inbounds nuw i8, ptr %650, i64 6
  %670 = getelementptr inbounds nuw i8, ptr %651, i64 6
  %671 = load i8, ptr %670, align 1, !tbaa !36
  store i8 %671, ptr %669, align 1, !tbaa !36
  %672 = getelementptr inbounds nuw i8, ptr %650, i64 7
  %673 = getelementptr inbounds nuw i8, ptr %651, i64 7
  %674 = load i8, ptr %673, align 1, !tbaa !36
  store i8 %674, ptr %672, align 1, !tbaa !36
  %675 = add i32 %652, -8
  %676 = getelementptr inbounds nuw i8, ptr %650, i64 8
  %677 = getelementptr inbounds nuw i8, ptr %651, i64 8
  %678 = icmp eq i32 %675, 0
  br i1 %678, label %679, label %649, !llvm.loop !57

679:                                              ; preds = %649, %644, %624, %601
  %680 = load i32, ptr %481, align 8, !tbaa !34
  br label %681

681:                                              ; preds = %679, %575, %573
  %682 = phi i32 [ %680, %679 ], [ %572, %575 ], [ 0, %573 ]
  %683 = load i32, ptr %483, align 8, !tbaa !27
  %684 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %683, i32 %682), !nosanitize !20
  %685 = extractvalue { i32, i1 } %684, 1, !nosanitize !20
  br i1 %685, label %686, label %687, !prof !21, !nosanitize !20

686:                                              ; preds = %681
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

687:                                              ; preds = %681
  %688 = extractvalue { i32, i1 } %684, 0, !nosanitize !20
  %689 = load ptr, ptr %487, align 8, !tbaa !29
  %690 = zext i32 %682 to i64
  %691 = getelementptr inbounds nuw i8, ptr %689, i64 %690
  store i32 0, ptr %488, align 4, !tbaa !17
  %692 = tail call ptr @__errno_location() #17
  store i32 0, ptr %692, align 4, !tbaa !45
  br label %693

693:                                              ; preds = %712, %687
  %694 = phi i32 [ 0, %687 ], [ %713, %712 ]
  %695 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %688, i32 %694), !nosanitize !20
  %696 = extractvalue { i32, i1 } %695, 1, !nosanitize !20
  br i1 %696, label %697, label %698, !prof !21, !nosanitize !20

697:                                              ; preds = %693
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

698:                                              ; preds = %693
  %699 = extractvalue { i32, i1 } %695, 0, !nosanitize !20
  %700 = tail call i32 @llvm.umin.i32(i32 %699, i32 1073741824)
  %701 = load i32, ptr %489, align 4, !tbaa !46
  %702 = zext i32 %694 to i64
  %703 = getelementptr inbounds nuw i8, ptr %691, i64 %702
  %704 = zext nneg i32 %700 to i64
  %705 = tail call i64 @read(i32 noundef %701, ptr noundef %703, i64 noundef %704) #13
  %706 = trunc i64 %705 to i32
  %707 = icmp slt i32 %706, 1
  br i1 %707, label %715, label %708

708:                                              ; preds = %698
  %709 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %694, i32 %706), !nosanitize !20
  %710 = extractvalue { i32, i1 } %709, 1, !nosanitize !20
  br i1 %710, label %711, label %712, !prof !21, !nosanitize !20

711:                                              ; preds = %708
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

712:                                              ; preds = %708
  %713 = extractvalue { i32, i1 } %709, 0, !nosanitize !20
  %714 = icmp ult i32 %713, %688
  br i1 %714, label %693, label %728, !llvm.loop !47

715:                                              ; preds = %698
  %716 = icmp slt i32 %706, 0
  br i1 %716, label %717, label %724

717:                                              ; preds = %715
  %718 = load i32, ptr %692, align 4, !tbaa !45
  %719 = icmp eq i32 %718, 11
  br i1 %719, label %720, label %725

720:                                              ; preds = %717
  store i32 1, ptr %488, align 4, !tbaa !17
  %721 = icmp eq i32 %694, 0
  br i1 %721, label %722, label %728

722:                                              ; preds = %720
  %723 = load i32, ptr %692, align 4, !tbaa !45
  br label %725

724:                                              ; preds = %715
  store i32 1, ptr %480, align 8, !tbaa !24
  br label %728

725:                                              ; preds = %722, %717
  %726 = phi i32 [ %723, %722 ], [ %718, %717 ]
  %727 = tail call ptr @strerror(i32 noundef %726) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %727) #13
  br label %930

728:                                              ; preds = %724, %720, %712
  %729 = phi i32 [ %694, %724 ], [ %694, %720 ], [ %713, %712 ]
  %730 = load i32, ptr %481, align 8, !tbaa !34
  %731 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %730, i32 %729), !nosanitize !20
  %732 = extractvalue { i32, i1 } %731, 1, !nosanitize !20
  br i1 %732, label %733, label %734, !prof !21, !nosanitize !20

733:                                              ; preds = %728
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

734:                                              ; preds = %728
  %735 = extractvalue { i32, i1 } %731, 0, !nosanitize !20
  store i32 %735, ptr %481, align 8, !tbaa !34
  %736 = load ptr, ptr %487, align 8, !tbaa !29
  store ptr %736, ptr %486, align 8, !tbaa !35
  br label %737

737:                                              ; preds = %734, %569
  %738 = phi i32 [ %735, %734 ], [ %572, %569 ]
  %739 = icmp eq i32 %738, 0
  br i1 %739, label %769, label %740

740:                                              ; preds = %737
  %741 = load i32, ptr %488, align 4, !tbaa !17
  %742 = icmp ne i32 %741, 0
  %743 = icmp ult i32 %738, 4
  %744 = and i1 %743, %742
  br i1 %744, label %769, label %745

745:                                              ; preds = %740
  %746 = icmp ugt i32 %738, 3
  %747 = load ptr, ptr %486, align 8, !tbaa !35
  br i1 %746, label %748, label %765

748:                                              ; preds = %745
  %749 = load i8, ptr %747, align 1, !tbaa !36
  %750 = icmp eq i8 %749, 31
  br i1 %750, label %751, label %765

751:                                              ; preds = %748
  %752 = getelementptr inbounds nuw i8, ptr %747, i64 1
  %753 = load i8, ptr %752, align 1, !tbaa !36
  %754 = icmp eq i8 %753, -117
  br i1 %754, label %755, label %765

755:                                              ; preds = %751
  %756 = getelementptr inbounds nuw i8, ptr %747, i64 2
  %757 = load i8, ptr %756, align 1, !tbaa !36
  %758 = icmp eq i8 %757, 8
  br i1 %758, label %759, label %765

759:                                              ; preds = %755
  %760 = getelementptr inbounds nuw i8, ptr %747, i64 3
  %761 = load i8, ptr %760, align 1, !tbaa !36
  %762 = icmp ult i8 %761, 32
  br i1 %762, label %763, label %765

763:                                              ; preds = %759
  %764 = tail call i32 @inflateReset(ptr noundef nonnull %486) #13
  store i32 2, ptr %482, align 8, !tbaa !26
  store i32 1, ptr %490, align 4, !tbaa !33
  store i32 0, ptr %496, align 8, !tbaa !32
  br label %917

765:                                              ; preds = %759, %755, %751, %748, %745
  %766 = load ptr, ptr %493, align 8, !tbaa !30
  store ptr %766, ptr %479, align 8, !tbaa !22
  %767 = zext i32 %738 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %766, ptr align 1 %747, i64 %767, i1 false)
  %768 = load i32, ptr %481, align 8, !tbaa !34
  store i32 %768, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %481, align 8, !tbaa !34
  store i32 1, ptr %482, align 8, !tbaa !26
  br label %919

769:                                              ; preds = %740, %737, %562
  %770 = load i32, ptr %482, align 8, !tbaa !26
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %1117, label %917

772:                                              ; preds = %534
  %773 = load ptr, ptr %493, align 8, !tbaa !30
  %774 = load i32, ptr %483, align 8, !tbaa !27
  %775 = shl i32 %774, 1
  store i32 0, ptr %488, align 4, !tbaa !17
  %776 = tail call ptr @__errno_location() #17
  store i32 0, ptr %776, align 4, !tbaa !45
  store i32 0, ptr %0, align 4, !tbaa !45
  br label %777

777:                                              ; preds = %797, %772
  %778 = phi i32 [ %798, %797 ], [ 0, %772 ]
  %779 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %775, i32 %778), !nosanitize !20
  %780 = extractvalue { i32, i1 } %779, 1, !nosanitize !20
  br i1 false, label %781, label %782, !prof !21, !nosanitize !20

781:                                              ; preds = %777
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

782:                                              ; preds = %777
  %783 = extractvalue { i32, i1 } %779, 0, !nosanitize !20
  %784 = tail call i32 @llvm.umin.i32(i32 %783, i32 1073741824)
  %785 = load i32, ptr %489, align 4, !tbaa !46
  %786 = zext i32 %778 to i64
  %787 = getelementptr inbounds nuw i8, ptr %773, i64 %786
  %788 = zext nneg i32 %784 to i64
  %789 = tail call i64 @read(i32 noundef %785, ptr noundef %787, i64 noundef %788) #13
  %790 = trunc i64 %789 to i32
  %791 = icmp slt i32 %790, 1
  br i1 %791, label %800, label %792

792:                                              ; preds = %782
  %793 = load i32, ptr %0, align 4, !tbaa !45
  %794 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %793, i32 %790), !nosanitize !20
  %795 = extractvalue { i32, i1 } %794, 1, !nosanitize !20
  br i1 %795, label %796, label %797, !prof !21, !nosanitize !20

796:                                              ; preds = %792
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

797:                                              ; preds = %792
  %798 = extractvalue { i32, i1 } %794, 0, !nosanitize !20
  store i32 %798, ptr %0, align 4, !tbaa !45
  %799 = icmp ult i32 %798, %775
  br i1 %799, label %777, label %814, !llvm.loop !47

800:                                              ; preds = %782
  %801 = icmp slt i32 %790, 0
  br i1 %801, label %802, label %810

802:                                              ; preds = %800
  %803 = load i32, ptr %776, align 4, !tbaa !45
  %804 = icmp eq i32 %803, 11
  br i1 %804, label %805, label %811

805:                                              ; preds = %802
  store i32 1, ptr %488, align 4, !tbaa !17
  %806 = load i32, ptr %0, align 4, !tbaa !45
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %808, label %814

808:                                              ; preds = %805
  %809 = load i32, ptr %776, align 4, !tbaa !45
  br label %811

810:                                              ; preds = %800
  store i32 1, ptr %480, align 8, !tbaa !24
  br label %814

811:                                              ; preds = %808, %802
  %812 = phi i32 [ %809, %808 ], [ %803, %802 ]
  %813 = tail call ptr @strerror(i32 noundef %812) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %813) #13
  br label %930

814:                                              ; preds = %810, %805, %797
  %815 = load ptr, ptr %493, align 8, !tbaa !30
  store ptr %815, ptr %479, align 8, !tbaa !22
  br label %1117

816:                                              ; preds = %534
  %817 = load i32, ptr %483, align 8, !tbaa !27
  %818 = shl i32 %817, 1
  store i32 %818, ptr %484, align 8, !tbaa !48
  %819 = load ptr, ptr %493, align 8, !tbaa !30
  store ptr %819, ptr %485, align 8, !tbaa !49
  br label %820

820:                                              ; preds = %899, %816
  %821 = phi i32 [ 0, %816 ], [ %884, %899 ]
  %822 = load i32, ptr %481, align 8, !tbaa !34
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %824, label %883

824:                                              ; preds = %820
  %825 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %825, label %903 [
    i32 0, label %826
    i32 -5, label %826
  ]

826:                                              ; preds = %824, %824
  %827 = load i32, ptr %480, align 8, !tbaa !24
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %829, label %879

829:                                              ; preds = %826
  %830 = load i32, ptr %483, align 8, !tbaa !27
  %831 = load ptr, ptr %487, align 8, !tbaa !29
  store i32 0, ptr %488, align 4, !tbaa !17
  %832 = tail call ptr @__errno_location() #17
  store i32 0, ptr %832, align 4, !tbaa !45
  br label %833

833:                                              ; preds = %852, %829
  %834 = phi i32 [ 0, %829 ], [ %853, %852 ]
  %835 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %830, i32 %834), !nosanitize !20
  %836 = extractvalue { i32, i1 } %835, 1, !nosanitize !20
  br i1 false, label %837, label %838, !prof !21, !nosanitize !20

837:                                              ; preds = %833
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

838:                                              ; preds = %833
  %839 = extractvalue { i32, i1 } %835, 0, !nosanitize !20
  %840 = tail call i32 @llvm.umin.i32(i32 %839, i32 1073741824)
  %841 = load i32, ptr %489, align 4, !tbaa !46
  %842 = zext i32 %834 to i64
  %843 = getelementptr inbounds nuw i8, ptr %831, i64 %842
  %844 = zext nneg i32 %840 to i64
  %845 = tail call i64 @read(i32 noundef %841, ptr noundef %843, i64 noundef %844) #13
  %846 = trunc i64 %845 to i32
  %847 = icmp slt i32 %846, 1
  br i1 %847, label %855, label %848

848:                                              ; preds = %838
  %849 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %834, i32 %846), !nosanitize !20
  %850 = extractvalue { i32, i1 } %849, 1, !nosanitize !20
  br i1 %850, label %851, label %852, !prof !21, !nosanitize !20

851:                                              ; preds = %848
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

852:                                              ; preds = %848
  %853 = extractvalue { i32, i1 } %849, 0, !nosanitize !20
  %854 = icmp ult i32 %853, %830
  br i1 %854, label %833, label %869, !llvm.loop !47

855:                                              ; preds = %838
  %856 = icmp slt i32 %846, 0
  br i1 %856, label %857, label %864

857:                                              ; preds = %855
  %858 = load i32, ptr %832, align 4, !tbaa !45
  %859 = icmp eq i32 %858, 11
  br i1 %859, label %860, label %865

860:                                              ; preds = %857
  store i32 1, ptr %488, align 4, !tbaa !17
  %861 = icmp eq i32 %834, 0
  br i1 %861, label %862, label %869

862:                                              ; preds = %860
  %863 = load i32, ptr %832, align 4, !tbaa !45
  br label %865

864:                                              ; preds = %855
  store i32 1, ptr %480, align 8, !tbaa !24
  br label %869

865:                                              ; preds = %862, %857
  %866 = phi i32 [ %863, %862 ], [ %858, %857 ]
  %867 = tail call ptr @strerror(i32 noundef %866) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %867) #13
  %868 = load i32, ptr %10, align 8, !tbaa !16
  br label %903

869:                                              ; preds = %864, %860, %852
  %870 = phi i32 [ %834, %864 ], [ %834, %860 ], [ %853, %852 ]
  %871 = load i32, ptr %481, align 8, !tbaa !34
  %872 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %871, i32 %870), !nosanitize !20
  %873 = extractvalue { i32, i1 } %872, 1, !nosanitize !20
  br i1 %873, label %874, label %875, !prof !21, !nosanitize !20

874:                                              ; preds = %869
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

875:                                              ; preds = %869
  %876 = extractvalue { i32, i1 } %872, 0, !nosanitize !20
  store i32 %876, ptr %481, align 8, !tbaa !34
  %877 = load ptr, ptr %487, align 8, !tbaa !29
  store ptr %877, ptr %486, align 8, !tbaa !35
  %878 = icmp eq i32 %876, 0
  br i1 %878, label %879, label %883

879:                                              ; preds = %875, %826
  %880 = load i32, ptr %488, align 4, !tbaa !17
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %882, label %903

882:                                              ; preds = %879
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %903

883:                                              ; preds = %875, %820
  %884 = tail call i32 @inflate(ptr noundef nonnull %486, i32 noundef 0) #13
  %885 = load i32, ptr %484, align 8, !tbaa !48
  %886 = icmp ult i32 %885, %818
  br i1 %886, label %887, label %888

887:                                              ; preds = %883
  store i32 0, ptr %490, align 4, !tbaa !33
  br label %888

888:                                              ; preds = %887, %883
  switch i32 %884, label %899 [
    i32 -2, label %889
    i32 2, label %889
    i32 -4, label %890
    i32 -3, label %891
  ]

889:                                              ; preds = %888, %888
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %903

890:                                              ; preds = %888
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %903

891:                                              ; preds = %888
  %892 = load i32, ptr %490, align 4, !tbaa !33
  %893 = icmp eq i32 %892, 1
  br i1 %893, label %894, label %895

894:                                              ; preds = %891
  store i32 0, ptr %481, align 8, !tbaa !34
  store i32 1, ptr %480, align 8, !tbaa !24
  store i32 0, ptr %482, align 8, !tbaa !26
  br label %903

895:                                              ; preds = %891
  %896 = load ptr, ptr %491, align 8, !tbaa !50
  %897 = icmp eq ptr %896, null
  %898 = select i1 %897, ptr @.str.6, ptr %896
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %898) #13
  br label %903

899:                                              ; preds = %888
  %900 = icmp ne i32 %885, 0
  %901 = icmp ne i32 %884, 1
  %902 = select i1 %900, i1 %901, i1 false
  br i1 %902, label %820, label %903, !llvm.loop !51

903:                                              ; preds = %899, %895, %894, %890, %889, %882, %879, %865, %824
  %904 = phi i32 [ %821, %879 ], [ %821, %882 ], [ %884, %889 ], [ -4, %890 ], [ 0, %894 ], [ -3, %895 ], [ %868, %865 ], [ %825, %824 ], [ %884, %899 ]
  %905 = load i32, ptr %484, align 8, !tbaa !48
  %906 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %818, i32 %905), !nosanitize !20
  %907 = extractvalue { i32, i1 } %906, 1, !nosanitize !20
  br i1 %907, label %908, label %909, !prof !21, !nosanitize !20

908:                                              ; preds = %903
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

909:                                              ; preds = %903
  %910 = extractvalue { i32, i1 } %906, 0, !nosanitize !20
  store i32 %910, ptr %0, align 8, !tbaa !19
  %911 = load ptr, ptr %485, align 8, !tbaa !49
  %912 = zext i32 %910 to i64
  %913 = sub nsw i64 0, %912
  %914 = getelementptr inbounds i8, ptr %911, i64 %913
  store ptr %914, ptr %479, align 8, !tbaa !22
  switch i32 %904, label %930 [
    i32 1, label %915
    i32 0, label %917
  ]

915:                                              ; preds = %909
  store i32 0, ptr %490, align 4, !tbaa !33
  store i32 0, ptr %482, align 8, !tbaa !26
  br label %917

916:                                              ; preds = %534
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %930

917:                                              ; preds = %915, %909, %769, %763
  %918 = load i32, ptr %0, align 8, !tbaa !19
  br label %919

919:                                              ; preds = %917, %765
  %920 = phi i32 [ %918, %917 ], [ %768, %765 ]
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %922, label %1117

922:                                              ; preds = %919
  %923 = load i32, ptr %480, align 8, !tbaa !24
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %928, label %925

925:                                              ; preds = %922
  %926 = load i32, ptr %481, align 8, !tbaa !34
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %1117, label %928

928:                                              ; preds = %925, %922
  %929 = load i32, ptr %482, align 8, !tbaa !26
  br label %534, !llvm.loop !52

930:                                              ; preds = %916, %909, %811, %725, %567, %553, %549
  %931 = load i32, ptr %0, align 8, !tbaa !19
  %932 = icmp eq i32 %931, 0
  %933 = sext i1 %932 to i32
  br label %1117

934:                                              ; preds = %529
  %935 = icmp eq i32 %527, 1
  br i1 %935, label %936, label %993

936:                                              ; preds = %934
  store i32 0, ptr %488, align 4, !tbaa !17
  %937 = tail call ptr @__errno_location() #17
  store i32 0, ptr %937, align 4, !tbaa !45
  %mv.h = icmp sge i64 %499, 0
  %mv.h11 = icmp sle i64 %499, 2147483648
  %mv.h12 = and i1 %mv.h, %mv.h11
  %mv.h.fr = freeze i1 %mv.h12
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %936
  br label %938

938:                                              ; preds = %955, %.mv.ph.mv.fast
  %939 = phi i32 [ 0, %.mv.ph.mv.fast ], [ %956, %955 ]
  %940 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %502, i32 %939), !nosanitize !20
  %941 = extractvalue { i32, i1 } %940, 1, !nosanitize !20
  br i1 false, label %962, label %942, !prof !21, !nosanitize !20

942:                                              ; preds = %938
  %943 = extractvalue { i32, i1 } %940, 0, !nosanitize !20
  %944 = tail call i32 @llvm.umin.i32(i32 %943, i32 1073741824)
  %945 = load i32, ptr %489, align 4, !tbaa !46
  %946 = zext i32 %939 to i64
  %947 = getelementptr inbounds nuw i8, ptr %498, i64 %946
  %948 = zext nneg i32 %944 to i64
  %949 = tail call i64 @read(i32 noundef %945, ptr noundef %947, i64 noundef %948) #13
  %950 = trunc i64 %949 to i32
  %951 = icmp slt i32 %950, 1
  br i1 %951, label %980, label %952

952:                                              ; preds = %942
  %953 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %939, i32 %950), !nosanitize !20
  %954 = extractvalue { i32, i1 } %953, 1, !nosanitize !20
  br i1 false, label %976, label %955, !prof !21, !nosanitize !20

955:                                              ; preds = %952
  %956 = extractvalue { i32, i1 } %953, 0, !nosanitize !20
  %957 = icmp ult i32 %956, %502
  br i1 %957, label %938, label %1096, !llvm.loop !47

.mv.ph:                                           ; preds = %936
  br label %958

958:                                              ; preds = %977, %.mv.ph
  %959 = phi i32 [ 0, %.mv.ph ], [ %978, %977 ]
  %960 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %502, i32 %959), !nosanitize !20
  %961 = extractvalue { i32, i1 } %960, 1, !nosanitize !20
  br i1 false, label %962, label %963, !prof !21, !nosanitize !20

962:                                              ; preds = %938, %958
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

963:                                              ; preds = %958
  %964 = extractvalue { i32, i1 } %960, 0, !nosanitize !20
  %965 = tail call i32 @llvm.umin.i32(i32 %964, i32 1073741824)
  %966 = load i32, ptr %489, align 4, !tbaa !46
  %967 = zext i32 %959 to i64
  %968 = getelementptr inbounds nuw i8, ptr %498, i64 %967
  %969 = zext nneg i32 %965 to i64
  %970 = tail call i64 @read(i32 noundef %966, ptr noundef %968, i64 noundef %969) #13
  %971 = trunc i64 %970 to i32
  %972 = icmp slt i32 %971, 1
  br i1 %972, label %980, label %973

973:                                              ; preds = %963
  %974 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %959, i32 %971), !nosanitize !20
  %975 = extractvalue { i32, i1 } %974, 1, !nosanitize !20
  br i1 %975, label %976, label %977, !prof !21, !nosanitize !20

976:                                              ; preds = %952, %973
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

977:                                              ; preds = %973
  %978 = extractvalue { i32, i1 } %974, 0, !nosanitize !20
  %979 = icmp ult i32 %978, %502
  br i1 %979, label %958, label %1096, !llvm.loop !47

980:                                              ; preds = %942, %963
  %.lcssa7 = phi i64 [ %967, %963 ], [ %946, %942 ]
  %.lcssa4 = phi i32 [ %971, %963 ], [ %950, %942 ]
  %.lcssa1 = phi i32 [ %959, %963 ], [ %939, %942 ]
  %981 = icmp slt i32 %.lcssa4, 0
  br i1 %981, label %982, label %992

982:                                              ; preds = %980
  %983 = load i32, ptr %937, align 4, !tbaa !45
  %984 = icmp eq i32 %983, 11
  br i1 %984, label %985, label %989

985:                                              ; preds = %982
  store i32 1, ptr %488, align 4, !tbaa !17
  %986 = icmp eq i32 %.lcssa1, 0
  br i1 %986, label %987, label %1098

987:                                              ; preds = %985
  %988 = load i32, ptr %937, align 4, !tbaa !45
  br label %989

989:                                              ; preds = %987, %982
  %990 = phi i32 [ %988, %987 ], [ %983, %982 ]
  %991 = tail call ptr @strerror(i32 noundef %990) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %991) #13
  br label %1098

992:                                              ; preds = %980
  store i32 1, ptr %480, align 8, !tbaa !24
  br label %1098

993:                                              ; preds = %934
  store i32 %502, ptr %484, align 8, !tbaa !58
  store ptr %498, ptr %485, align 8, !tbaa !59
  br label %994

994:                                              ; preds = %1073, %993
  %995 = phi i32 [ 0, %993 ], [ %1058, %1073 ]
  %996 = load i32, ptr %481, align 8, !tbaa !34
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %998, label %1057

998:                                              ; preds = %994
  %999 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %999, label %1077 [
    i32 0, label %1000
    i32 -5, label %1000
  ]

1000:                                             ; preds = %998, %998
  %1001 = load i32, ptr %480, align 8, !tbaa !24
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1003, label %1053

1003:                                             ; preds = %1000
  %1004 = load i32, ptr %483, align 8, !tbaa !27
  %1005 = load ptr, ptr %487, align 8, !tbaa !29
  store i32 0, ptr %488, align 4, !tbaa !17
  %1006 = tail call ptr @__errno_location() #17
  store i32 0, ptr %1006, align 4, !tbaa !45
  br label %1007

1007:                                             ; preds = %1026, %1003
  %1008 = phi i32 [ 0, %1003 ], [ %1027, %1026 ]
  %1009 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1004, i32 %1008), !nosanitize !20
  %1010 = extractvalue { i32, i1 } %1009, 1, !nosanitize !20
  br i1 %1010, label %1011, label %1012, !prof !21, !nosanitize !20

1011:                                             ; preds = %1007
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1012:                                             ; preds = %1007
  %1013 = extractvalue { i32, i1 } %1009, 0, !nosanitize !20
  %1014 = tail call i32 @llvm.umin.i32(i32 %1013, i32 1073741824)
  %1015 = load i32, ptr %489, align 4, !tbaa !46
  %1016 = zext i32 %1008 to i64
  %1017 = getelementptr inbounds nuw i8, ptr %1005, i64 %1016
  %1018 = zext nneg i32 %1014 to i64
  %1019 = tail call i64 @read(i32 noundef %1015, ptr noundef %1017, i64 noundef %1018) #13
  %1020 = trunc i64 %1019 to i32
  %1021 = icmp slt i32 %1020, 1
  br i1 %1021, label %1029, label %1022

1022:                                             ; preds = %1012
  %1023 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1008, i32 %1020), !nosanitize !20
  %1024 = extractvalue { i32, i1 } %1023, 1, !nosanitize !20
  br i1 %1024, label %1025, label %1026, !prof !21, !nosanitize !20

1025:                                             ; preds = %1022
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1026:                                             ; preds = %1022
  %1027 = extractvalue { i32, i1 } %1023, 0, !nosanitize !20
  %1028 = icmp ult i32 %1027, %1004
  br i1 %1028, label %1007, label %1043, !llvm.loop !47

1029:                                             ; preds = %1012
  %1030 = icmp slt i32 %1020, 0
  br i1 %1030, label %1031, label %1038

1031:                                             ; preds = %1029
  %1032 = load i32, ptr %1006, align 4, !tbaa !45
  %1033 = icmp eq i32 %1032, 11
  br i1 %1033, label %1034, label %1039

1034:                                             ; preds = %1031
  store i32 1, ptr %488, align 4, !tbaa !17
  %1035 = icmp eq i32 %1008, 0
  br i1 %1035, label %1036, label %1043

1036:                                             ; preds = %1034
  %1037 = load i32, ptr %1006, align 4, !tbaa !45
  br label %1039

1038:                                             ; preds = %1029
  store i32 1, ptr %480, align 8, !tbaa !24
  br label %1043

1039:                                             ; preds = %1036, %1031
  %1040 = phi i32 [ %1037, %1036 ], [ %1032, %1031 ]
  %1041 = tail call ptr @strerror(i32 noundef %1040) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1041) #13
  %1042 = load i32, ptr %10, align 8, !tbaa !16
  br label %1077

1043:                                             ; preds = %1038, %1034, %1026
  %1044 = phi i32 [ %1008, %1038 ], [ %1008, %1034 ], [ %1027, %1026 ]
  %1045 = load i32, ptr %481, align 8, !tbaa !34
  %1046 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1045, i32 %1044), !nosanitize !20
  %1047 = extractvalue { i32, i1 } %1046, 1, !nosanitize !20
  br i1 %1047, label %1048, label %1049, !prof !21, !nosanitize !20

1048:                                             ; preds = %1043
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1049:                                             ; preds = %1043
  %1050 = extractvalue { i32, i1 } %1046, 0, !nosanitize !20
  store i32 %1050, ptr %481, align 8, !tbaa !34
  %1051 = load ptr, ptr %487, align 8, !tbaa !29
  store ptr %1051, ptr %486, align 8, !tbaa !35
  %1052 = icmp eq i32 %1050, 0
  br i1 %1052, label %1053, label %1057

1053:                                             ; preds = %1049, %1000
  %1054 = load i32, ptr %488, align 4, !tbaa !17
  %1055 = icmp eq i32 %1054, 0
  br i1 %1055, label %1056, label %1077

1056:                                             ; preds = %1053
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %1077

1057:                                             ; preds = %1049, %994
  %1058 = tail call i32 @inflate(ptr noundef nonnull %486, i32 noundef 0) #13
  %1059 = load i32, ptr %484, align 8, !tbaa !48
  %1060 = icmp ult i32 %1059, %502
  br i1 %1060, label %1061, label %1062

1061:                                             ; preds = %1057
  store i32 0, ptr %490, align 4, !tbaa !33
  br label %1062

1062:                                             ; preds = %1061, %1057
  switch i32 %1058, label %1073 [
    i32 -2, label %1063
    i32 2, label %1063
    i32 -4, label %1064
    i32 -3, label %1065
  ]

1063:                                             ; preds = %1062, %1062
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %1077

1064:                                             ; preds = %1062
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1077

1065:                                             ; preds = %1062
  %1066 = load i32, ptr %490, align 4, !tbaa !33
  %1067 = icmp eq i32 %1066, 1
  br i1 %1067, label %1068, label %1069

1068:                                             ; preds = %1065
  store i32 0, ptr %481, align 8, !tbaa !34
  store i32 1, ptr %480, align 8, !tbaa !24
  store i32 0, ptr %482, align 8, !tbaa !26
  br label %1077

1069:                                             ; preds = %1065
  %1070 = load ptr, ptr %491, align 8, !tbaa !50
  %1071 = icmp eq ptr %1070, null
  %1072 = select i1 %1071, ptr @.str.6, ptr %1070
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1072) #13
  br label %1077

1073:                                             ; preds = %1062
  %1074 = icmp ne i32 %1059, 0
  %1075 = icmp ne i32 %1058, 1
  %1076 = select i1 %1074, i1 %1075, i1 false
  br i1 %1076, label %994, label %1077, !llvm.loop !51

1077:                                             ; preds = %1073, %1069, %1068, %1064, %1063, %1056, %1053, %1039, %998
  %1078 = phi i32 [ %995, %1053 ], [ %995, %1056 ], [ %1058, %1063 ], [ -4, %1064 ], [ 0, %1068 ], [ -3, %1069 ], [ %1042, %1039 ], [ %1058, %1073 ], [ %999, %998 ]
  %1079 = load i32, ptr %484, align 8, !tbaa !48
  %1080 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %502, i32 %1079), !nosanitize !20
  %1081 = extractvalue { i32, i1 } %1080, 1, !nosanitize !20
  br i1 %1081, label %1082, label %1083, !prof !21, !nosanitize !20

1082:                                             ; preds = %1077
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1083:                                             ; preds = %1077
  %1084 = extractvalue { i32, i1 } %1080, 0, !nosanitize !20
  %1085 = load ptr, ptr %485, align 8, !tbaa !49
  %1086 = zext i32 %1084 to i64
  %1087 = sub nsw i64 0, %1086
  %1088 = getelementptr inbounds i8, ptr %1085, i64 %1087
  store ptr %1088, ptr %479, align 8, !tbaa !22
  %1089 = icmp eq i32 %1078, 1
  br i1 %1089, label %1090, label %1091

1090:                                             ; preds = %1083
  store i32 0, ptr %490, align 4, !tbaa !33
  store i32 0, ptr %482, align 8, !tbaa !26
  br label %1094

1091:                                             ; preds = %1083
  %1092 = icmp ne i32 %1078, 0
  %1093 = sext i1 %1092 to i32
  br label %1094

1094:                                             ; preds = %1091, %1090
  %1095 = phi i32 [ 0, %1090 ], [ %1093, %1091 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1098

1096:                                             ; preds = %955, %977
  %.lcssa10 = phi i32 [ %978, %977 ], [ %956, %955 ]
  %1097 = zext i32 %.lcssa10 to i64
  br label %1098

1098:                                             ; preds = %1096, %1094, %992, %989, %985, %515
  %1099 = phi i64 [ %1097, %1096 ], [ %.lcssa7, %992 ], [ %.lcssa7, %989 ], [ %.lcssa7, %985 ], [ %508, %515 ], [ %1086, %1094 ]
  %1100 = phi i32 [ 0, %1096 ], [ 0, %992 ], [ -1, %989 ], [ 0, %985 ], [ %519, %515 ], [ %1095, %1094 ]
  %1101 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %499, i64 %1099), !nosanitize !20
  %1102 = extractvalue { i64, i1 } %1101, 0, !nosanitize !20
  %1103 = extractvalue { i64, i1 } %1101, 1, !nosanitize !20
  br i1 %1103, label %1104, label %1105, !prof !21, !nosanitize !20

1104:                                             ; preds = %1098
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1105:                                             ; preds = %1098
  %1106 = getelementptr inbounds nuw i8, ptr %498, i64 %1099
  %1107 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %500, i64 %1099), !nosanitize !20
  %1108 = extractvalue { i64, i1 } %1107, 0, !nosanitize !20
  %1109 = extractvalue { i64, i1 } %1107, 1, !nosanitize !20
  br i1 %1109, label %1110, label %1111, !prof !21, !nosanitize !20

1110:                                             ; preds = %1111, %1105
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1111:                                             ; preds = %1105
  %1112 = load i64, ptr %492, align 8, !tbaa !23
  %1113 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1112, i64 %1099), !nosanitize !20
  %1114 = extractvalue { i64, i1 } %1113, 1, !nosanitize !20
  br i1 %1114, label %1110, label %1115, !prof !21, !nosanitize !20

1115:                                             ; preds = %1111
  %1116 = extractvalue { i64, i1 } %1113, 0, !nosanitize !20
  store i64 %1116, ptr %492, align 8, !tbaa !23
  br label %1117

1117:                                             ; preds = %1115, %930, %925, %919, %814, %769
  %1118 = phi ptr [ %1106, %1115 ], [ %498, %930 ], [ %498, %814 ], [ %498, %769 ], [ %498, %919 ], [ %498, %925 ]
  %1119 = phi i64 [ %1102, %1115 ], [ %499, %930 ], [ %499, %814 ], [ %499, %769 ], [ %499, %919 ], [ %499, %925 ]
  %1120 = phi i64 [ %1108, %1115 ], [ %500, %930 ], [ %500, %814 ], [ %500, %769 ], [ %500, %919 ], [ %500, %925 ]
  %1121 = phi i32 [ %1100, %1115 ], [ %933, %930 ], [ 0, %814 ], [ 0, %769 ], [ 0, %919 ], [ 0, %925 ]
  %1122 = icmp ne i64 %1119, 0
  %1123 = icmp eq i32 %1121, 0
  %1124 = select i1 %1122, i1 %1123, i1 false
  br i1 %1124, label %497, label %1125, !llvm.loop !60

1125:                                             ; preds = %1117, %523
  %1126 = phi i64 [ %1119, %1117 ], [ %499, %523 ]
  %1127 = phi i64 [ %1120, %1117 ], [ %500, %523 ]
  %1128 = icmp eq i64 %1126, 0
  br i1 %1128, label %1134, label %1129

1129:                                             ; preds = %1125
  %1130 = load i32, ptr %480, align 8, !tbaa !24
  %1131 = icmp eq i32 %1130, 0
  br i1 %1131, label %1134, label %1132

1132:                                             ; preds = %1129
  %1133 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1133, align 4, !tbaa !61
  br label %1134

1134:                                             ; preds = %1132, %1129, %1125
  %1135 = trunc i64 %1127 to i32
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1137, label %1149

1137:                                             ; preds = %1134, %460, %453, %355, %269, %97, %93, %19
  %1138 = load i32, ptr %10, align 8, !tbaa !16
  br label %1139

1139:                                             ; preds = %1137, %111
  %1140 = phi i32 [ %1138, %1137 ], [ %112, %111 ]
  switch i32 %1140, label %1149 [
    i32 0, label %1141
    i32 -5, label %1141
  ]

1141:                                             ; preds = %1139, %1139
  %1142 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1143 = load i32, ptr %1142, align 4, !tbaa !17
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1149, label %1145

1145:                                             ; preds = %1141
  %1146 = tail call ptr @__errno_location() #17
  %1147 = load i32, ptr %1146, align 4, !tbaa !45
  %1148 = tail call ptr @strerror(i32 noundef %1147) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1148) #13
  br label %1149

1149:                                             ; preds = %1145, %1141, %1139, %1134, %18, %12, %5, %3
  %1150 = phi i32 [ -1, %18 ], [ -1, %1145 ], [ -1, %3 ], [ -1, %5 ], [ -1, %12 ], [ -1, %1139 ], [ 0, %1141 ], [ %1135, %1134 ]
  ret i32 %1150
}

declare void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @gzfread(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %1125, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 7247
  br i1 %9, label %10, label %1125

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %12 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %12, label %13 [
    i32 0, label %17
    i32 -5, label %17
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %15 = load i32, ptr %14, align 4, !tbaa !17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %1125, label %17

17:                                               ; preds = %13, %10, %10
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef 0, ptr noundef null) #13
  %18 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !nosanitize !20
  %19 = extractvalue { i64, i1 } %18, 0, !nosanitize !20
  %20 = extractvalue { i64, i1 } %18, 1, !nosanitize !20
  br i1 %20, label %21, label %22, !prof !21, !nosanitize !20

21:                                               ; preds = %17
  tail call void @llvm.ubsantrap(i8 12) #14, !nosanitize !20
  unreachable, !nosanitize !20

22:                                               ; preds = %17
  %23 = icmp eq i64 %1, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %22
  %25 = udiv i64 %19, %1
  %26 = icmp eq i64 %25, %2
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.1) #13
  br label %1125

28:                                               ; preds = %24, %22
  %29 = icmp eq i64 %19, 0
  br i1 %29, label %1125, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %32 = load i64, ptr %31, align 8, !tbaa !18
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %486, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %43 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %51 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %52 = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %53

53:                                               ; preds = %483, %34
  %54 = phi i64 [ %484, %483 ], [ %32, %34 ]
  %55 = load i32, ptr %3, align 8, !tbaa !19
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %79, label %57

57:                                               ; preds = %53
  %58 = zext i32 %55 to i64
  %59 = tail call i64 @llvm.smin.i64(i64 %54, i64 %58)
  %60 = trunc i64 %59 to i32
  %61 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %55, i32 %60), !nosanitize !20
  %62 = extractvalue { i32, i1 } %61, 1, !nosanitize !20
  br i1 %62, label %63, label %64, !prof !21, !nosanitize !20

63:                                               ; preds = %73, %57
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

64:                                               ; preds = %57
  %65 = extractvalue { i32, i1 } %61, 0, !nosanitize !20
  store i32 %65, ptr %3, align 8, !tbaa !19
  %66 = load ptr, ptr %35, align 8, !tbaa !22
  %67 = and i64 %59, 4294967295
  %68 = getelementptr inbounds nuw i8, ptr %66, i64 %67
  store ptr %68, ptr %35, align 8, !tbaa !22
  %69 = load i64, ptr %36, align 8, !tbaa !23
  %70 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %69, i64 %67), !nosanitize !20
  %71 = extractvalue { i64, i1 } %70, 1, !nosanitize !20
  br i1 %71, label %72, label %73, !prof !21, !nosanitize !20

72:                                               ; preds = %64
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

73:                                               ; preds = %64
  %74 = extractvalue { i64, i1 } %70, 0, !nosanitize !20
  store i64 %74, ptr %36, align 8, !tbaa !23
  %75 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %54, i64 %67), !nosanitize !20
  %76 = extractvalue { i64, i1 } %75, 1, !nosanitize !20
  br i1 false, label %63, label %77, !prof !21, !nosanitize !20

77:                                               ; preds = %73
  %78 = extractvalue { i64, i1 } %75, 0, !nosanitize !20
  store i64 %78, ptr %31, align 8, !tbaa !18
  br label %483

79:                                               ; preds = %53
  %80 = load i32, ptr %37, align 8, !tbaa !24
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, ptr %38, align 8, !tbaa !25
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %486, label %85

85:                                               ; preds = %82, %79
  br label %86

86:                                               ; preds = %480, %85
  %87 = load i32, ptr %39, align 8, !tbaa !26
  switch i32 %87, label %468 [
    i32 0, label %88
    i32 1, label %324
    i32 2, label %368
  ]

88:                                               ; preds = %86
  %89 = load i32, ptr %40, align 8, !tbaa !27
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %88
  %92 = load i32, ptr %50, align 4, !tbaa !28
  %93 = zext i32 %92 to i64
  %94 = tail call noalias ptr @malloc(i64 noundef %93) #16
  store ptr %94, ptr %45, align 8, !tbaa !29
  %95 = shl i32 %92, 1
  %96 = zext i32 %95 to i64
  %97 = tail call noalias ptr @malloc(i64 noundef %96) #16
  store ptr %97, ptr %42, align 8, !tbaa !30
  %98 = icmp eq ptr %94, null
  %99 = icmp eq ptr %97, null
  %100 = or i1 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  tail call void @free(ptr noundef %97) #13
  tail call void @free(ptr noundef %94) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1122

102:                                              ; preds = %91
  store i32 %92, ptr %40, align 8, !tbaa !27
  store i32 0, ptr %38, align 8, !tbaa !25
  store ptr null, ptr %44, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  %103 = tail call i32 @inflateInit2_(ptr noundef nonnull %44, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %42, align 8, !tbaa !30
  tail call void @free(ptr noundef %106) #13
  %107 = load ptr, ptr %45, align 8, !tbaa !29
  tail call void @free(ptr noundef %107) #13
  store i32 0, ptr %40, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1122

108:                                              ; preds = %102, %88
  %109 = load i32, ptr %52, align 8, !tbaa !32
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, ptr %48, align 4, !tbaa !33
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111, %108
  %115 = tail call i32 @inflateReset(ptr noundef nonnull %44) #13
  store i32 2, ptr %39, align 8, !tbaa !26
  %116 = load i32, ptr %48, align 4, !tbaa !33
  %117 = icmp ne i32 %116, -1
  %118 = zext i1 %117 to i32
  store i32 %118, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %52, align 8, !tbaa !32
  br label %321

119:                                              ; preds = %111
  %120 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %120, label %1122 [
    i32 0, label %121
    i32 -5, label %121
  ]

121:                                              ; preds = %119, %119
  %122 = load i32, ptr %37, align 8, !tbaa !24
  %123 = icmp eq i32 %122, 0
  %124 = load i32, ptr %38, align 8, !tbaa !34
  br i1 %123, label %125, label %289

125:                                              ; preds = %121
  %126 = icmp eq i32 %124, 0
  br i1 %126, label %233, label %127

127:                                              ; preds = %125
  %128 = load ptr, ptr %45, align 8, !tbaa !29
  %129 = load ptr, ptr %44, align 8, !tbaa !35
  %130 = icmp eq ptr %129, %128
  br i1 %130, label %233, label %131

131:                                              ; preds = %127
  %132 = ptrtoint ptr %129 to i64
  %133 = ptrtoint ptr %128 to i64
  %134 = zext i32 %124 to i64
  %135 = icmp ult i32 %124, 4
  %136 = sub i64 %133, %132
  %137 = icmp ult i64 %136, 32
  %138 = or i1 %135, %137
  br i1 %138, label %178, label %139

139:                                              ; preds = %131
  %140 = icmp ult i32 %124, 32
  br i1 %140, label %162, label %141

141:                                              ; preds = %139
  %142 = and i64 %134, 4294967264
  br label %143

143:                                              ; preds = %143, %141
  %144 = phi i64 [ 0, %141 ], [ %151, %143 ]
  %145 = getelementptr i8, ptr %128, i64 %144
  %146 = getelementptr i8, ptr %129, i64 %144
  %147 = getelementptr i8, ptr %146, i64 16
  %148 = load <16 x i8>, ptr %146, align 1, !tbaa !36
  %149 = load <16 x i8>, ptr %147, align 1, !tbaa !36
  %150 = getelementptr i8, ptr %145, i64 16
  store <16 x i8> %148, ptr %145, align 1, !tbaa !36
  store <16 x i8> %149, ptr %150, align 1, !tbaa !36
  %151 = add nuw i64 %144, 32
  %152 = icmp eq i64 %151, %142
  br i1 %152, label %153, label %143, !llvm.loop !62

153:                                              ; preds = %143
  %154 = icmp eq i64 %142, %134
  br i1 %154, label %231, label %155

155:                                              ; preds = %153
  %156 = getelementptr i8, ptr %128, i64 %142
  %157 = getelementptr i8, ptr %129, i64 %142
  %158 = trunc nuw i64 %142 to i32
  %159 = sub i32 %124, %158
  %160 = and i64 %134, 28
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %178, label %162

162:                                              ; preds = %155, %139
  %163 = phi i64 [ %142, %155 ], [ 0, %139 ]
  %164 = and i64 %134, 4294967292
  %165 = getelementptr i8, ptr %128, i64 %164
  %166 = getelementptr i8, ptr %129, i64 %164
  %167 = trunc nuw i64 %164 to i32
  %168 = sub i32 %124, %167
  br label %169

169:                                              ; preds = %169, %162
  %170 = phi i64 [ %163, %162 ], [ %174, %169 ]
  %171 = getelementptr i8, ptr %128, i64 %170
  %172 = getelementptr i8, ptr %129, i64 %170
  %173 = load <4 x i8>, ptr %172, align 1, !tbaa !36
  store <4 x i8> %173, ptr %171, align 1, !tbaa !36
  %174 = add nuw i64 %170, 4
  %175 = icmp eq i64 %174, %164
  br i1 %175, label %176, label %169, !llvm.loop !63

176:                                              ; preds = %169
  %177 = icmp eq i64 %164, %134
  br i1 %177, label %231, label %178

178:                                              ; preds = %176, %155, %131
  %179 = phi ptr [ %128, %131 ], [ %156, %155 ], [ %165, %176 ]
  %180 = phi ptr [ %129, %131 ], [ %157, %155 ], [ %166, %176 ]
  %181 = phi i32 [ %124, %131 ], [ %159, %155 ], [ %168, %176 ]
  %182 = add i32 %181, -1
  %183 = and i32 %181, 7
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %196, label %185

185:                                              ; preds = %185, %178
  %186 = phi ptr [ %192, %185 ], [ %179, %178 ]
  %187 = phi ptr [ %193, %185 ], [ %180, %178 ]
  %188 = phi i32 [ %191, %185 ], [ %181, %178 ]
  %189 = phi i32 [ %194, %185 ], [ 0, %178 ]
  %190 = load i8, ptr %187, align 1, !tbaa !36
  store i8 %190, ptr %186, align 1, !tbaa !36
  %191 = add i32 %188, -1
  %192 = getelementptr inbounds nuw i8, ptr %186, i64 1
  %193 = getelementptr inbounds nuw i8, ptr %187, i64 1
  %194 = add i32 %189, 1
  %195 = icmp eq i32 %194, %183
  br i1 %195, label %196, label %185, !llvm.loop !64

196:                                              ; preds = %185, %178
  %197 = phi ptr [ %179, %178 ], [ %192, %185 ]
  %198 = phi ptr [ %180, %178 ], [ %193, %185 ]
  %199 = phi i32 [ %181, %178 ], [ %191, %185 ]
  %200 = icmp ult i32 %182, 7
  br i1 %200, label %231, label %201

201:                                              ; preds = %201, %196
  %202 = phi ptr [ %228, %201 ], [ %197, %196 ]
  %203 = phi ptr [ %229, %201 ], [ %198, %196 ]
  %204 = phi i32 [ %227, %201 ], [ %199, %196 ]
  %205 = load i8, ptr %203, align 1, !tbaa !36
  store i8 %205, ptr %202, align 1, !tbaa !36
  %206 = getelementptr inbounds nuw i8, ptr %202, i64 1
  %207 = getelementptr inbounds nuw i8, ptr %203, i64 1
  %208 = load i8, ptr %207, align 1, !tbaa !36
  store i8 %208, ptr %206, align 1, !tbaa !36
  %209 = getelementptr inbounds nuw i8, ptr %202, i64 2
  %210 = getelementptr inbounds nuw i8, ptr %203, i64 2
  %211 = load i8, ptr %210, align 1, !tbaa !36
  store i8 %211, ptr %209, align 1, !tbaa !36
  %212 = getelementptr inbounds nuw i8, ptr %202, i64 3
  %213 = getelementptr inbounds nuw i8, ptr %203, i64 3
  %214 = load i8, ptr %213, align 1, !tbaa !36
  store i8 %214, ptr %212, align 1, !tbaa !36
  %215 = getelementptr inbounds nuw i8, ptr %202, i64 4
  %216 = getelementptr inbounds nuw i8, ptr %203, i64 4
  %217 = load i8, ptr %216, align 1, !tbaa !36
  store i8 %217, ptr %215, align 1, !tbaa !36
  %218 = getelementptr inbounds nuw i8, ptr %202, i64 5
  %219 = getelementptr inbounds nuw i8, ptr %203, i64 5
  %220 = load i8, ptr %219, align 1, !tbaa !36
  store i8 %220, ptr %218, align 1, !tbaa !36
  %221 = getelementptr inbounds nuw i8, ptr %202, i64 6
  %222 = getelementptr inbounds nuw i8, ptr %203, i64 6
  %223 = load i8, ptr %222, align 1, !tbaa !36
  store i8 %223, ptr %221, align 1, !tbaa !36
  %224 = getelementptr inbounds nuw i8, ptr %202, i64 7
  %225 = getelementptr inbounds nuw i8, ptr %203, i64 7
  %226 = load i8, ptr %225, align 1, !tbaa !36
  store i8 %226, ptr %224, align 1, !tbaa !36
  %227 = add i32 %204, -8
  %228 = getelementptr inbounds nuw i8, ptr %202, i64 8
  %229 = getelementptr inbounds nuw i8, ptr %203, i64 8
  %230 = icmp eq i32 %227, 0
  br i1 %230, label %231, label %201, !llvm.loop !65

231:                                              ; preds = %201, %196, %176, %153
  %232 = load i32, ptr %38, align 8, !tbaa !34
  br label %233

233:                                              ; preds = %231, %127, %125
  %234 = phi i32 [ %232, %231 ], [ %124, %127 ], [ 0, %125 ]
  %235 = load i32, ptr %40, align 8, !tbaa !27
  %236 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %235, i32 %234), !nosanitize !20
  %237 = extractvalue { i32, i1 } %236, 1, !nosanitize !20
  br i1 %237, label %238, label %239, !prof !21, !nosanitize !20

238:                                              ; preds = %233
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

239:                                              ; preds = %233
  %240 = extractvalue { i32, i1 } %236, 0, !nosanitize !20
  %241 = load ptr, ptr %45, align 8, !tbaa !29
  %242 = zext i32 %234 to i64
  %243 = getelementptr inbounds nuw i8, ptr %241, i64 %242
  store i32 0, ptr %46, align 4, !tbaa !17
  %244 = tail call ptr @__errno_location() #17
  store i32 0, ptr %244, align 4, !tbaa !45
  br label %245

245:                                              ; preds = %264, %239
  %246 = phi i32 [ 0, %239 ], [ %265, %264 ]
  %247 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %240, i32 %246), !nosanitize !20
  %248 = extractvalue { i32, i1 } %247, 1, !nosanitize !20
  br i1 %248, label %249, label %250, !prof !21, !nosanitize !20

249:                                              ; preds = %245
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

250:                                              ; preds = %245
  %251 = extractvalue { i32, i1 } %247, 0, !nosanitize !20
  %252 = tail call i32 @llvm.umin.i32(i32 %251, i32 1073741824)
  %253 = load i32, ptr %47, align 4, !tbaa !46
  %254 = zext i32 %246 to i64
  %255 = getelementptr inbounds nuw i8, ptr %243, i64 %254
  %256 = zext nneg i32 %252 to i64
  %257 = tail call i64 @read(i32 noundef %253, ptr noundef %255, i64 noundef %256) #13
  %258 = trunc i64 %257 to i32
  %259 = icmp slt i32 %258, 1
  br i1 %259, label %267, label %260

260:                                              ; preds = %250
  %261 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %246, i32 %258), !nosanitize !20
  %262 = extractvalue { i32, i1 } %261, 1, !nosanitize !20
  br i1 %262, label %263, label %264, !prof !21, !nosanitize !20

263:                                              ; preds = %260
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

264:                                              ; preds = %260
  %265 = extractvalue { i32, i1 } %261, 0, !nosanitize !20
  %266 = icmp ult i32 %265, %240
  br i1 %266, label %245, label %280, !llvm.loop !47

267:                                              ; preds = %250
  %268 = icmp slt i32 %258, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %267
  %270 = load i32, ptr %244, align 4, !tbaa !45
  %271 = icmp eq i32 %270, 11
  br i1 %271, label %272, label %277

272:                                              ; preds = %269
  store i32 1, ptr %46, align 4, !tbaa !17
  %273 = icmp eq i32 %246, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %272
  %275 = load i32, ptr %244, align 4, !tbaa !45
  br label %277

276:                                              ; preds = %267
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %280

277:                                              ; preds = %274, %269
  %278 = phi i32 [ %275, %274 ], [ %270, %269 ]
  %279 = tail call ptr @strerror(i32 noundef %278) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %279) #13
  br label %1122

280:                                              ; preds = %276, %272, %264
  %281 = phi i32 [ %246, %276 ], [ %246, %272 ], [ %265, %264 ]
  %282 = load i32, ptr %38, align 8, !tbaa !34
  %283 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %282, i32 %281), !nosanitize !20
  %284 = extractvalue { i32, i1 } %283, 1, !nosanitize !20
  br i1 %284, label %285, label %286, !prof !21, !nosanitize !20

285:                                              ; preds = %280
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

286:                                              ; preds = %280
  %287 = extractvalue { i32, i1 } %283, 0, !nosanitize !20
  store i32 %287, ptr %38, align 8, !tbaa !34
  %288 = load ptr, ptr %45, align 8, !tbaa !29
  store ptr %288, ptr %44, align 8, !tbaa !35
  br label %289

289:                                              ; preds = %286, %121
  %290 = phi i32 [ %287, %286 ], [ %124, %121 ]
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %321, label %292

292:                                              ; preds = %289
  %293 = load i32, ptr %46, align 4, !tbaa !17
  %294 = icmp ne i32 %293, 0
  %295 = icmp ult i32 %290, 4
  %296 = and i1 %295, %294
  br i1 %296, label %321, label %297

297:                                              ; preds = %292
  %298 = icmp ugt i32 %290, 3
  %299 = load ptr, ptr %44, align 8, !tbaa !35
  br i1 %298, label %300, label %317

300:                                              ; preds = %297
  %301 = load i8, ptr %299, align 1, !tbaa !36
  %302 = icmp eq i8 %301, 31
  br i1 %302, label %303, label %317

303:                                              ; preds = %300
  %304 = getelementptr inbounds nuw i8, ptr %299, i64 1
  %305 = load i8, ptr %304, align 1, !tbaa !36
  %306 = icmp eq i8 %305, -117
  br i1 %306, label %307, label %317

307:                                              ; preds = %303
  %308 = getelementptr inbounds nuw i8, ptr %299, i64 2
  %309 = load i8, ptr %308, align 1, !tbaa !36
  %310 = icmp eq i8 %309, 8
  br i1 %310, label %311, label %317

311:                                              ; preds = %307
  %312 = getelementptr inbounds nuw i8, ptr %299, i64 3
  %313 = load i8, ptr %312, align 1, !tbaa !36
  %314 = icmp ult i8 %313, 32
  br i1 %314, label %315, label %317

315:                                              ; preds = %311
  %316 = tail call i32 @inflateReset(ptr noundef nonnull %44) #13
  store i32 2, ptr %39, align 8, !tbaa !26
  store i32 1, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %52, align 8, !tbaa !32
  br label %469

317:                                              ; preds = %311, %307, %303, %300, %297
  %318 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %318, ptr %35, align 8, !tbaa !22
  %319 = zext i32 %290 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %318, ptr align 1 %299, i64 %319, i1 false)
  %320 = load i32, ptr %38, align 8, !tbaa !34
  store i32 %320, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %38, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !26
  br label %471

321:                                              ; preds = %292, %289, %114
  %322 = load i32, ptr %39, align 8, !tbaa !26
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %481, label %469

324:                                              ; preds = %86
  %325 = load ptr, ptr %42, align 8, !tbaa !30
  %326 = load i32, ptr %40, align 8, !tbaa !27
  %327 = shl i32 %326, 1
  store i32 0, ptr %46, align 4, !tbaa !17
  %328 = tail call ptr @__errno_location() #17
  store i32 0, ptr %328, align 4, !tbaa !45
  store i32 0, ptr %3, align 4, !tbaa !45
  br label %329

329:                                              ; preds = %349, %324
  %330 = phi i32 [ %350, %349 ], [ 0, %324 ]
  %331 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %327, i32 %330), !nosanitize !20
  %332 = extractvalue { i32, i1 } %331, 1, !nosanitize !20
  br i1 %332, label %333, label %334, !prof !21, !nosanitize !20

333:                                              ; preds = %329
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

334:                                              ; preds = %329
  %335 = extractvalue { i32, i1 } %331, 0, !nosanitize !20
  %336 = tail call i32 @llvm.umin.i32(i32 %335, i32 1073741824)
  %337 = load i32, ptr %47, align 4, !tbaa !46
  %338 = zext i32 %330 to i64
  %339 = getelementptr inbounds nuw i8, ptr %325, i64 %338
  %340 = zext nneg i32 %336 to i64
  %341 = tail call i64 @read(i32 noundef %337, ptr noundef %339, i64 noundef %340) #13
  %342 = trunc i64 %341 to i32
  %343 = icmp slt i32 %342, 1
  br i1 %343, label %352, label %344

344:                                              ; preds = %334
  %345 = load i32, ptr %3, align 4, !tbaa !45
  %346 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %345, i32 %342), !nosanitize !20
  %347 = extractvalue { i32, i1 } %346, 1, !nosanitize !20
  br i1 %347, label %348, label %349, !prof !21, !nosanitize !20

348:                                              ; preds = %344
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

349:                                              ; preds = %344
  %350 = extractvalue { i32, i1 } %346, 0, !nosanitize !20
  store i32 %350, ptr %3, align 4, !tbaa !45
  %351 = icmp ult i32 %350, %327
  br i1 %351, label %329, label %366, !llvm.loop !47

352:                                              ; preds = %334
  %353 = icmp slt i32 %342, 0
  br i1 %353, label %354, label %362

354:                                              ; preds = %352
  %355 = load i32, ptr %328, align 4, !tbaa !45
  %356 = icmp eq i32 %355, 11
  br i1 %356, label %357, label %363

357:                                              ; preds = %354
  store i32 1, ptr %46, align 4, !tbaa !17
  %358 = load i32, ptr %3, align 4, !tbaa !45
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %366

360:                                              ; preds = %357
  %361 = load i32, ptr %328, align 4, !tbaa !45
  br label %363

362:                                              ; preds = %352
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %366

363:                                              ; preds = %360, %354
  %364 = phi i32 [ %361, %360 ], [ %355, %354 ]
  %365 = tail call ptr @strerror(i32 noundef %364) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %365) #13
  br label %1122

366:                                              ; preds = %362, %357, %349
  %367 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %367, ptr %35, align 8, !tbaa !22
  br label %481

368:                                              ; preds = %86
  %369 = load i32, ptr %40, align 8, !tbaa !27
  %370 = shl i32 %369, 1
  store i32 %370, ptr %41, align 8, !tbaa !48
  %371 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %371, ptr %43, align 8, !tbaa !49
  br label %372

372:                                              ; preds = %451, %368
  %373 = phi i32 [ 0, %368 ], [ %436, %451 ]
  %374 = load i32, ptr %38, align 8, !tbaa !34
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %435

376:                                              ; preds = %372
  %377 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %377, label %455 [
    i32 0, label %378
    i32 -5, label %378
  ]

378:                                              ; preds = %376, %376
  %379 = load i32, ptr %37, align 8, !tbaa !24
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %431

381:                                              ; preds = %378
  %382 = load i32, ptr %40, align 8, !tbaa !27
  %383 = load ptr, ptr %45, align 8, !tbaa !29
  store i32 0, ptr %46, align 4, !tbaa !17
  %384 = tail call ptr @__errno_location() #17
  store i32 0, ptr %384, align 4, !tbaa !45
  br label %385

385:                                              ; preds = %404, %381
  %386 = phi i32 [ 0, %381 ], [ %405, %404 ]
  %387 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %382, i32 %386), !nosanitize !20
  %388 = extractvalue { i32, i1 } %387, 1, !nosanitize !20
  br i1 %388, label %389, label %390, !prof !21, !nosanitize !20

389:                                              ; preds = %385
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

390:                                              ; preds = %385
  %391 = extractvalue { i32, i1 } %387, 0, !nosanitize !20
  %392 = tail call i32 @llvm.umin.i32(i32 %391, i32 1073741824)
  %393 = load i32, ptr %47, align 4, !tbaa !46
  %394 = zext i32 %386 to i64
  %395 = getelementptr inbounds nuw i8, ptr %383, i64 %394
  %396 = zext nneg i32 %392 to i64
  %397 = tail call i64 @read(i32 noundef %393, ptr noundef %395, i64 noundef %396) #13
  %398 = trunc i64 %397 to i32
  %399 = icmp slt i32 %398, 1
  br i1 %399, label %407, label %400

400:                                              ; preds = %390
  %401 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %386, i32 %398), !nosanitize !20
  %402 = extractvalue { i32, i1 } %401, 1, !nosanitize !20
  br i1 %402, label %403, label %404, !prof !21, !nosanitize !20

403:                                              ; preds = %400
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

404:                                              ; preds = %400
  %405 = extractvalue { i32, i1 } %401, 0, !nosanitize !20
  %406 = icmp ult i32 %405, %382
  br i1 %406, label %385, label %421, !llvm.loop !47

407:                                              ; preds = %390
  %408 = icmp slt i32 %398, 0
  br i1 %408, label %409, label %416

409:                                              ; preds = %407
  %410 = load i32, ptr %384, align 4, !tbaa !45
  %411 = icmp eq i32 %410, 11
  br i1 %411, label %412, label %417

412:                                              ; preds = %409
  store i32 1, ptr %46, align 4, !tbaa !17
  %413 = icmp eq i32 %386, 0
  br i1 %413, label %414, label %421

414:                                              ; preds = %412
  %415 = load i32, ptr %384, align 4, !tbaa !45
  br label %417

416:                                              ; preds = %407
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %421

417:                                              ; preds = %414, %409
  %418 = phi i32 [ %415, %414 ], [ %410, %409 ]
  %419 = tail call ptr @strerror(i32 noundef %418) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %419) #13
  %420 = load i32, ptr %11, align 8, !tbaa !16
  br label %455

421:                                              ; preds = %416, %412, %404
  %422 = phi i32 [ %386, %416 ], [ %386, %412 ], [ %405, %404 ]
  %423 = load i32, ptr %38, align 8, !tbaa !34
  %424 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %423, i32 %422), !nosanitize !20
  %425 = extractvalue { i32, i1 } %424, 1, !nosanitize !20
  br i1 %425, label %426, label %427, !prof !21, !nosanitize !20

426:                                              ; preds = %421
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

427:                                              ; preds = %421
  %428 = extractvalue { i32, i1 } %424, 0, !nosanitize !20
  store i32 %428, ptr %38, align 8, !tbaa !34
  %429 = load ptr, ptr %45, align 8, !tbaa !29
  store ptr %429, ptr %44, align 8, !tbaa !35
  %430 = icmp eq i32 %428, 0
  br i1 %430, label %431, label %435

431:                                              ; preds = %427, %378
  %432 = load i32, ptr %46, align 4, !tbaa !17
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %455

434:                                              ; preds = %431
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %455

435:                                              ; preds = %427, %372
  %436 = tail call i32 @inflate(ptr noundef nonnull %44, i32 noundef 0) #13
  %437 = load i32, ptr %41, align 8, !tbaa !48
  %438 = icmp ult i32 %437, %370
  br i1 %438, label %439, label %440

439:                                              ; preds = %435
  store i32 0, ptr %48, align 4, !tbaa !33
  br label %440

440:                                              ; preds = %439, %435
  switch i32 %436, label %451 [
    i32 -2, label %441
    i32 2, label %441
    i32 -4, label %442
    i32 -3, label %443
  ]

441:                                              ; preds = %440, %440
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %455

442:                                              ; preds = %440
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %455

443:                                              ; preds = %440
  %444 = load i32, ptr %48, align 4, !tbaa !33
  %445 = icmp eq i32 %444, 1
  br i1 %445, label %446, label %447

446:                                              ; preds = %443
  store i32 0, ptr %38, align 8, !tbaa !34
  store i32 1, ptr %37, align 8, !tbaa !24
  store i32 0, ptr %39, align 8, !tbaa !26
  br label %455

447:                                              ; preds = %443
  %448 = load ptr, ptr %49, align 8, !tbaa !50
  %449 = icmp eq ptr %448, null
  %450 = select i1 %449, ptr @.str.6, ptr %448
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %450) #13
  br label %455

451:                                              ; preds = %440
  %452 = icmp ne i32 %437, 0
  %453 = icmp ne i32 %436, 1
  %454 = select i1 %452, i1 %453, i1 false
  br i1 %454, label %372, label %455, !llvm.loop !51

455:                                              ; preds = %451, %447, %446, %442, %441, %434, %431, %417, %376
  %456 = phi i32 [ %373, %431 ], [ %373, %434 ], [ %436, %441 ], [ -4, %442 ], [ 0, %446 ], [ -3, %447 ], [ %420, %417 ], [ %436, %451 ], [ %377, %376 ]
  %457 = load i32, ptr %41, align 8, !tbaa !48
  %458 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %370, i32 %457), !nosanitize !20
  %459 = extractvalue { i32, i1 } %458, 1, !nosanitize !20
  br i1 %459, label %460, label %461, !prof !21, !nosanitize !20

460:                                              ; preds = %455
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

461:                                              ; preds = %455
  %462 = extractvalue { i32, i1 } %458, 0, !nosanitize !20
  store i32 %462, ptr %3, align 8, !tbaa !19
  %463 = load ptr, ptr %43, align 8, !tbaa !49
  %464 = zext i32 %462 to i64
  %465 = sub nsw i64 0, %464
  %466 = getelementptr inbounds i8, ptr %463, i64 %465
  store ptr %466, ptr %35, align 8, !tbaa !22
  switch i32 %456, label %1122 [
    i32 1, label %467
    i32 0, label %469
  ]

467:                                              ; preds = %461
  store i32 0, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %39, align 8, !tbaa !26
  br label %469

468:                                              ; preds = %86
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1122

469:                                              ; preds = %467, %461, %321, %315
  %470 = load i32, ptr %3, align 8, !tbaa !19
  br label %471

471:                                              ; preds = %469, %317
  %472 = phi i32 [ %470, %469 ], [ %320, %317 ]
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %481

474:                                              ; preds = %471
  %475 = load i32, ptr %37, align 8, !tbaa !24
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %480, label %477

477:                                              ; preds = %474
  %478 = load i32, ptr %38, align 8, !tbaa !34
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %481, label %480

480:                                              ; preds = %477, %474
  br label %86, !llvm.loop !52

481:                                              ; preds = %477, %471, %366, %321
  %482 = load i64, ptr %31, align 8, !tbaa !18
  br label %483

483:                                              ; preds = %481, %77
  %484 = phi i64 [ %482, %481 ], [ %78, %77 ]
  %485 = icmp eq i64 %484, 0
  br i1 %485, label %486, label %53, !llvm.loop !53

486:                                              ; preds = %483, %82, %30
  %487 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %488 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %489 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %490 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %491 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %492 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %493 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %494 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %495 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %496 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %497 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %498 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %499 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %500 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %501 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %502 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %503 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %504 = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %505

505:                                              ; preds = %1105, %486
  %506 = phi ptr [ %0, %486 ], [ %1106, %1105 ]
  %507 = phi i64 [ %19, %486 ], [ %1107, %1105 ]
  %508 = phi i64 [ 0, %486 ], [ %1108, %1105 ]
  %509 = tail call i64 @llvm.umin.i64(i64 %507, i64 4294967295)
  %510 = trunc nuw i64 %509 to i32
  %511 = load i32, ptr %3, align 8, !tbaa !19
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %528, label %513

513:                                              ; preds = %505
  %514 = tail call i32 @llvm.umin.i32(i32 %511, i32 %510)
  %515 = load ptr, ptr %487, align 8, !tbaa !22
  %516 = zext i32 %514 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %506, ptr align 1 %515, i64 %516, i1 false)
  %517 = load ptr, ptr %487, align 8, !tbaa !22
  %518 = getelementptr inbounds nuw i8, ptr %517, i64 %516
  store ptr %518, ptr %487, align 8, !tbaa !22
  %519 = load i32, ptr %3, align 8, !tbaa !19
  %520 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %519, i32 %514), !nosanitize !20
  %521 = extractvalue { i32, i1 } %520, 1, !nosanitize !20
  br i1 %521, label %522, label %523, !prof !21, !nosanitize !20

522:                                              ; preds = %513
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

523:                                              ; preds = %513
  %524 = extractvalue { i32, i1 } %520, 0, !nosanitize !20
  store i32 %524, ptr %3, align 8, !tbaa !19
  %525 = load i32, ptr %11, align 8, !tbaa !16
  %526 = icmp ne i32 %525, 0
  %527 = sext i1 %526 to i32
  br label %1086

528:                                              ; preds = %505
  %529 = load i32, ptr %488, align 8, !tbaa !24
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %534, label %531

531:                                              ; preds = %528
  %532 = load i32, ptr %489, align 8, !tbaa !25
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %1113, label %534

534:                                              ; preds = %531, %528
  %535 = load i32, ptr %490, align 8, !tbaa !26
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %541, label %537

537:                                              ; preds = %534
  %538 = load i32, ptr %491, align 8, !tbaa !27
  %539 = shl i32 %538, 1
  %540 = icmp ugt i32 %539, %510
  br i1 %540, label %541, label %942

541:                                              ; preds = %537, %534
  br label %542

542:                                              ; preds = %936, %541
  %543 = phi i32 [ %937, %936 ], [ %535, %541 ]
  switch i32 %543, label %924 [
    i32 0, label %544
    i32 1, label %780
    i32 2, label %824
  ]

544:                                              ; preds = %542
  %545 = load i32, ptr %491, align 8, !tbaa !27
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %564

547:                                              ; preds = %544
  %548 = load i32, ptr %502, align 4, !tbaa !28
  %549 = zext i32 %548 to i64
  %550 = tail call noalias ptr @malloc(i64 noundef %549) #16
  store ptr %550, ptr %495, align 8, !tbaa !29
  %551 = shl i32 %548, 1
  %552 = zext i32 %551 to i64
  %553 = tail call noalias ptr @malloc(i64 noundef %552) #16
  store ptr %553, ptr %501, align 8, !tbaa !30
  %554 = icmp eq ptr %550, null
  %555 = icmp eq ptr %553, null
  %556 = or i1 %554, %555
  br i1 %556, label %557, label %558

557:                                              ; preds = %547
  tail call void @free(ptr noundef %553) #13
  tail call void @free(ptr noundef %550) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %938

558:                                              ; preds = %547
  store i32 %548, ptr %491, align 8, !tbaa !27
  store i32 0, ptr %489, align 8, !tbaa !25
  store ptr null, ptr %494, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %503, i8 0, i64 24, i1 false)
  %559 = tail call i32 @inflateInit2_(ptr noundef nonnull %494, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %564, label %561

561:                                              ; preds = %558
  %562 = load ptr, ptr %501, align 8, !tbaa !30
  tail call void @free(ptr noundef %562) #13
  %563 = load ptr, ptr %495, align 8, !tbaa !29
  tail call void @free(ptr noundef %563) #13
  store i32 0, ptr %491, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %938

564:                                              ; preds = %558, %544
  %565 = load i32, ptr %504, align 8, !tbaa !32
  %566 = icmp eq i32 %565, -1
  br i1 %566, label %570, label %567

567:                                              ; preds = %564
  %568 = load i32, ptr %498, align 4, !tbaa !33
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %575

570:                                              ; preds = %567, %564
  %571 = tail call i32 @inflateReset(ptr noundef nonnull %494) #13
  store i32 2, ptr %490, align 8, !tbaa !26
  %572 = load i32, ptr %498, align 4, !tbaa !33
  %573 = icmp ne i32 %572, -1
  %574 = zext i1 %573 to i32
  store i32 %574, ptr %498, align 4, !tbaa !33
  store i32 0, ptr %504, align 8, !tbaa !32
  br label %777

575:                                              ; preds = %567
  %576 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %576, label %938 [
    i32 0, label %577
    i32 -5, label %577
  ]

577:                                              ; preds = %575, %575
  %578 = load i32, ptr %488, align 8, !tbaa !24
  %579 = icmp eq i32 %578, 0
  %580 = load i32, ptr %489, align 8, !tbaa !34
  br i1 %579, label %581, label %745

581:                                              ; preds = %577
  %582 = icmp eq i32 %580, 0
  br i1 %582, label %689, label %583

583:                                              ; preds = %581
  %584 = load ptr, ptr %495, align 8, !tbaa !29
  %585 = load ptr, ptr %494, align 8, !tbaa !35
  %586 = icmp eq ptr %585, %584
  br i1 %586, label %689, label %587

587:                                              ; preds = %583
  %588 = ptrtoint ptr %585 to i64
  %589 = ptrtoint ptr %584 to i64
  %590 = zext i32 %580 to i64
  %591 = icmp ult i32 %580, 4
  %592 = sub i64 %589, %588
  %593 = icmp ult i64 %592, 32
  %594 = or i1 %591, %593
  br i1 %594, label %634, label %595

595:                                              ; preds = %587
  %596 = icmp ult i32 %580, 32
  br i1 %596, label %618, label %597

597:                                              ; preds = %595
  %598 = and i64 %590, 4294967264
  br label %599

599:                                              ; preds = %599, %597
  %600 = phi i64 [ 0, %597 ], [ %607, %599 ]
  %601 = getelementptr i8, ptr %584, i64 %600
  %602 = getelementptr i8, ptr %585, i64 %600
  %603 = getelementptr i8, ptr %602, i64 16
  %604 = load <16 x i8>, ptr %602, align 1, !tbaa !36
  %605 = load <16 x i8>, ptr %603, align 1, !tbaa !36
  %606 = getelementptr i8, ptr %601, i64 16
  store <16 x i8> %604, ptr %601, align 1, !tbaa !36
  store <16 x i8> %605, ptr %606, align 1, !tbaa !36
  %607 = add nuw i64 %600, 32
  %608 = icmp eq i64 %607, %598
  br i1 %608, label %609, label %599, !llvm.loop !66

609:                                              ; preds = %599
  %610 = icmp eq i64 %598, %590
  br i1 %610, label %687, label %611

611:                                              ; preds = %609
  %612 = getelementptr i8, ptr %584, i64 %598
  %613 = getelementptr i8, ptr %585, i64 %598
  %614 = trunc nuw i64 %598 to i32
  %615 = sub i32 %580, %614
  %616 = and i64 %590, 28
  %617 = icmp eq i64 %616, 0
  br i1 %617, label %634, label %618

618:                                              ; preds = %611, %595
  %619 = phi i64 [ %598, %611 ], [ 0, %595 ]
  %620 = and i64 %590, 4294967292
  %621 = getelementptr i8, ptr %584, i64 %620
  %622 = getelementptr i8, ptr %585, i64 %620
  %623 = trunc nuw i64 %620 to i32
  %624 = sub i32 %580, %623
  br label %625

625:                                              ; preds = %625, %618
  %626 = phi i64 [ %619, %618 ], [ %630, %625 ]
  %627 = getelementptr i8, ptr %584, i64 %626
  %628 = getelementptr i8, ptr %585, i64 %626
  %629 = load <4 x i8>, ptr %628, align 1, !tbaa !36
  store <4 x i8> %629, ptr %627, align 1, !tbaa !36
  %630 = add nuw i64 %626, 4
  %631 = icmp eq i64 %630, %620
  br i1 %631, label %632, label %625, !llvm.loop !67

632:                                              ; preds = %625
  %633 = icmp eq i64 %620, %590
  br i1 %633, label %687, label %634

634:                                              ; preds = %632, %611, %587
  %635 = phi ptr [ %584, %587 ], [ %612, %611 ], [ %621, %632 ]
  %636 = phi ptr [ %585, %587 ], [ %613, %611 ], [ %622, %632 ]
  %637 = phi i32 [ %580, %587 ], [ %615, %611 ], [ %624, %632 ]
  %638 = add i32 %637, -1
  %639 = and i32 %637, 7
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %652, label %641

641:                                              ; preds = %641, %634
  %642 = phi ptr [ %648, %641 ], [ %635, %634 ]
  %643 = phi ptr [ %649, %641 ], [ %636, %634 ]
  %644 = phi i32 [ %647, %641 ], [ %637, %634 ]
  %645 = phi i32 [ %650, %641 ], [ 0, %634 ]
  %646 = load i8, ptr %643, align 1, !tbaa !36
  store i8 %646, ptr %642, align 1, !tbaa !36
  %647 = add i32 %644, -1
  %648 = getelementptr inbounds nuw i8, ptr %642, i64 1
  %649 = getelementptr inbounds nuw i8, ptr %643, i64 1
  %650 = add i32 %645, 1
  %651 = icmp eq i32 %650, %639
  br i1 %651, label %652, label %641, !llvm.loop !68

652:                                              ; preds = %641, %634
  %653 = phi ptr [ %635, %634 ], [ %648, %641 ]
  %654 = phi ptr [ %636, %634 ], [ %649, %641 ]
  %655 = phi i32 [ %637, %634 ], [ %647, %641 ]
  %656 = icmp ult i32 %638, 7
  br i1 %656, label %687, label %657

657:                                              ; preds = %657, %652
  %658 = phi ptr [ %684, %657 ], [ %653, %652 ]
  %659 = phi ptr [ %685, %657 ], [ %654, %652 ]
  %660 = phi i32 [ %683, %657 ], [ %655, %652 ]
  %661 = load i8, ptr %659, align 1, !tbaa !36
  store i8 %661, ptr %658, align 1, !tbaa !36
  %662 = getelementptr inbounds nuw i8, ptr %658, i64 1
  %663 = getelementptr inbounds nuw i8, ptr %659, i64 1
  %664 = load i8, ptr %663, align 1, !tbaa !36
  store i8 %664, ptr %662, align 1, !tbaa !36
  %665 = getelementptr inbounds nuw i8, ptr %658, i64 2
  %666 = getelementptr inbounds nuw i8, ptr %659, i64 2
  %667 = load i8, ptr %666, align 1, !tbaa !36
  store i8 %667, ptr %665, align 1, !tbaa !36
  %668 = getelementptr inbounds nuw i8, ptr %658, i64 3
  %669 = getelementptr inbounds nuw i8, ptr %659, i64 3
  %670 = load i8, ptr %669, align 1, !tbaa !36
  store i8 %670, ptr %668, align 1, !tbaa !36
  %671 = getelementptr inbounds nuw i8, ptr %658, i64 4
  %672 = getelementptr inbounds nuw i8, ptr %659, i64 4
  %673 = load i8, ptr %672, align 1, !tbaa !36
  store i8 %673, ptr %671, align 1, !tbaa !36
  %674 = getelementptr inbounds nuw i8, ptr %658, i64 5
  %675 = getelementptr inbounds nuw i8, ptr %659, i64 5
  %676 = load i8, ptr %675, align 1, !tbaa !36
  store i8 %676, ptr %674, align 1, !tbaa !36
  %677 = getelementptr inbounds nuw i8, ptr %658, i64 6
  %678 = getelementptr inbounds nuw i8, ptr %659, i64 6
  %679 = load i8, ptr %678, align 1, !tbaa !36
  store i8 %679, ptr %677, align 1, !tbaa !36
  %680 = getelementptr inbounds nuw i8, ptr %658, i64 7
  %681 = getelementptr inbounds nuw i8, ptr %659, i64 7
  %682 = load i8, ptr %681, align 1, !tbaa !36
  store i8 %682, ptr %680, align 1, !tbaa !36
  %683 = add i32 %660, -8
  %684 = getelementptr inbounds nuw i8, ptr %658, i64 8
  %685 = getelementptr inbounds nuw i8, ptr %659, i64 8
  %686 = icmp eq i32 %683, 0
  br i1 %686, label %687, label %657, !llvm.loop !69

687:                                              ; preds = %657, %652, %632, %609
  %688 = load i32, ptr %489, align 8, !tbaa !34
  br label %689

689:                                              ; preds = %687, %583, %581
  %690 = phi i32 [ %688, %687 ], [ %580, %583 ], [ 0, %581 ]
  %691 = load i32, ptr %491, align 8, !tbaa !27
  %692 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %691, i32 %690), !nosanitize !20
  %693 = extractvalue { i32, i1 } %692, 1, !nosanitize !20
  br i1 %693, label %694, label %695, !prof !21, !nosanitize !20

694:                                              ; preds = %689
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

695:                                              ; preds = %689
  %696 = extractvalue { i32, i1 } %692, 0, !nosanitize !20
  %697 = load ptr, ptr %495, align 8, !tbaa !29
  %698 = zext i32 %690 to i64
  %699 = getelementptr inbounds nuw i8, ptr %697, i64 %698
  store i32 0, ptr %496, align 4, !tbaa !17
  %700 = tail call ptr @__errno_location() #17
  store i32 0, ptr %700, align 4, !tbaa !45
  br label %701

701:                                              ; preds = %720, %695
  %702 = phi i32 [ 0, %695 ], [ %721, %720 ]
  %703 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %696, i32 %702), !nosanitize !20
  %704 = extractvalue { i32, i1 } %703, 1, !nosanitize !20
  br i1 %704, label %705, label %706, !prof !21, !nosanitize !20

705:                                              ; preds = %701
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

706:                                              ; preds = %701
  %707 = extractvalue { i32, i1 } %703, 0, !nosanitize !20
  %708 = tail call i32 @llvm.umin.i32(i32 %707, i32 1073741824)
  %709 = load i32, ptr %497, align 4, !tbaa !46
  %710 = zext i32 %702 to i64
  %711 = getelementptr inbounds nuw i8, ptr %699, i64 %710
  %712 = zext nneg i32 %708 to i64
  %713 = tail call i64 @read(i32 noundef %709, ptr noundef %711, i64 noundef %712) #13
  %714 = trunc i64 %713 to i32
  %715 = icmp slt i32 %714, 1
  br i1 %715, label %723, label %716

716:                                              ; preds = %706
  %717 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %702, i32 %714), !nosanitize !20
  %718 = extractvalue { i32, i1 } %717, 1, !nosanitize !20
  br i1 %718, label %719, label %720, !prof !21, !nosanitize !20

719:                                              ; preds = %716
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

720:                                              ; preds = %716
  %721 = extractvalue { i32, i1 } %717, 0, !nosanitize !20
  %722 = icmp ult i32 %721, %696
  br i1 %722, label %701, label %736, !llvm.loop !47

723:                                              ; preds = %706
  %724 = icmp slt i32 %714, 0
  br i1 %724, label %725, label %732

725:                                              ; preds = %723
  %726 = load i32, ptr %700, align 4, !tbaa !45
  %727 = icmp eq i32 %726, 11
  br i1 %727, label %728, label %733

728:                                              ; preds = %725
  store i32 1, ptr %496, align 4, !tbaa !17
  %729 = icmp eq i32 %702, 0
  br i1 %729, label %730, label %736

730:                                              ; preds = %728
  %731 = load i32, ptr %700, align 4, !tbaa !45
  br label %733

732:                                              ; preds = %723
  store i32 1, ptr %488, align 8, !tbaa !24
  br label %736

733:                                              ; preds = %730, %725
  %734 = phi i32 [ %731, %730 ], [ %726, %725 ]
  %735 = tail call ptr @strerror(i32 noundef %734) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %735) #13
  br label %938

736:                                              ; preds = %732, %728, %720
  %737 = phi i32 [ %702, %732 ], [ %702, %728 ], [ %721, %720 ]
  %738 = load i32, ptr %489, align 8, !tbaa !34
  %739 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %738, i32 %737), !nosanitize !20
  %740 = extractvalue { i32, i1 } %739, 1, !nosanitize !20
  br i1 %740, label %741, label %742, !prof !21, !nosanitize !20

741:                                              ; preds = %736
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

742:                                              ; preds = %736
  %743 = extractvalue { i32, i1 } %739, 0, !nosanitize !20
  store i32 %743, ptr %489, align 8, !tbaa !34
  %744 = load ptr, ptr %495, align 8, !tbaa !29
  store ptr %744, ptr %494, align 8, !tbaa !35
  br label %745

745:                                              ; preds = %742, %577
  %746 = phi i32 [ %743, %742 ], [ %580, %577 ]
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %777, label %748

748:                                              ; preds = %745
  %749 = load i32, ptr %496, align 4, !tbaa !17
  %750 = icmp ne i32 %749, 0
  %751 = icmp ult i32 %746, 4
  %752 = and i1 %751, %750
  br i1 %752, label %777, label %753

753:                                              ; preds = %748
  %754 = icmp ugt i32 %746, 3
  %755 = load ptr, ptr %494, align 8, !tbaa !35
  br i1 %754, label %756, label %773

756:                                              ; preds = %753
  %757 = load i8, ptr %755, align 1, !tbaa !36
  %758 = icmp eq i8 %757, 31
  br i1 %758, label %759, label %773

759:                                              ; preds = %756
  %760 = getelementptr inbounds nuw i8, ptr %755, i64 1
  %761 = load i8, ptr %760, align 1, !tbaa !36
  %762 = icmp eq i8 %761, -117
  br i1 %762, label %763, label %773

763:                                              ; preds = %759
  %764 = getelementptr inbounds nuw i8, ptr %755, i64 2
  %765 = load i8, ptr %764, align 1, !tbaa !36
  %766 = icmp eq i8 %765, 8
  br i1 %766, label %767, label %773

767:                                              ; preds = %763
  %768 = getelementptr inbounds nuw i8, ptr %755, i64 3
  %769 = load i8, ptr %768, align 1, !tbaa !36
  %770 = icmp ult i8 %769, 32
  br i1 %770, label %771, label %773

771:                                              ; preds = %767
  %772 = tail call i32 @inflateReset(ptr noundef nonnull %494) #13
  store i32 2, ptr %490, align 8, !tbaa !26
  store i32 1, ptr %498, align 4, !tbaa !33
  store i32 0, ptr %504, align 8, !tbaa !32
  br label %925

773:                                              ; preds = %767, %763, %759, %756, %753
  %774 = load ptr, ptr %501, align 8, !tbaa !30
  store ptr %774, ptr %487, align 8, !tbaa !22
  %775 = zext i32 %746 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %774, ptr align 1 %755, i64 %775, i1 false)
  %776 = load i32, ptr %489, align 8, !tbaa !34
  store i32 %776, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %489, align 8, !tbaa !34
  store i32 1, ptr %490, align 8, !tbaa !26
  br label %927

777:                                              ; preds = %748, %745, %570
  %778 = load i32, ptr %490, align 8, !tbaa !26
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %1105, label %925

780:                                              ; preds = %542
  %781 = load ptr, ptr %501, align 8, !tbaa !30
  %782 = load i32, ptr %491, align 8, !tbaa !27
  %783 = shl i32 %782, 1
  store i32 0, ptr %496, align 4, !tbaa !17
  %784 = tail call ptr @__errno_location() #17
  store i32 0, ptr %784, align 4, !tbaa !45
  store i32 0, ptr %3, align 4, !tbaa !45
  br label %785

785:                                              ; preds = %805, %780
  %786 = phi i32 [ %806, %805 ], [ 0, %780 ]
  %787 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %783, i32 %786), !nosanitize !20
  %788 = extractvalue { i32, i1 } %787, 1, !nosanitize !20
  br i1 %788, label %789, label %790, !prof !21, !nosanitize !20

789:                                              ; preds = %785
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

790:                                              ; preds = %785
  %791 = extractvalue { i32, i1 } %787, 0, !nosanitize !20
  %792 = tail call i32 @llvm.umin.i32(i32 %791, i32 1073741824)
  %793 = load i32, ptr %497, align 4, !tbaa !46
  %794 = zext i32 %786 to i64
  %795 = getelementptr inbounds nuw i8, ptr %781, i64 %794
  %796 = zext nneg i32 %792 to i64
  %797 = tail call i64 @read(i32 noundef %793, ptr noundef %795, i64 noundef %796) #13
  %798 = trunc i64 %797 to i32
  %799 = icmp slt i32 %798, 1
  br i1 %799, label %808, label %800

800:                                              ; preds = %790
  %801 = load i32, ptr %3, align 4, !tbaa !45
  %802 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %801, i32 %798), !nosanitize !20
  %803 = extractvalue { i32, i1 } %802, 1, !nosanitize !20
  br i1 %803, label %804, label %805, !prof !21, !nosanitize !20

804:                                              ; preds = %800
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

805:                                              ; preds = %800
  %806 = extractvalue { i32, i1 } %802, 0, !nosanitize !20
  store i32 %806, ptr %3, align 4, !tbaa !45
  %807 = icmp ult i32 %806, %783
  br i1 %807, label %785, label %822, !llvm.loop !47

808:                                              ; preds = %790
  %809 = icmp slt i32 %798, 0
  br i1 %809, label %810, label %818

810:                                              ; preds = %808
  %811 = load i32, ptr %784, align 4, !tbaa !45
  %812 = icmp eq i32 %811, 11
  br i1 %812, label %813, label %819

813:                                              ; preds = %810
  store i32 1, ptr %496, align 4, !tbaa !17
  %814 = load i32, ptr %3, align 4, !tbaa !45
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %816, label %822

816:                                              ; preds = %813
  %817 = load i32, ptr %784, align 4, !tbaa !45
  br label %819

818:                                              ; preds = %808
  store i32 1, ptr %488, align 8, !tbaa !24
  br label %822

819:                                              ; preds = %816, %810
  %820 = phi i32 [ %817, %816 ], [ %811, %810 ]
  %821 = tail call ptr @strerror(i32 noundef %820) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %821) #13
  br label %938

822:                                              ; preds = %818, %813, %805
  %823 = load ptr, ptr %501, align 8, !tbaa !30
  store ptr %823, ptr %487, align 8, !tbaa !22
  br label %1105

824:                                              ; preds = %542
  %825 = load i32, ptr %491, align 8, !tbaa !27
  %826 = shl i32 %825, 1
  store i32 %826, ptr %492, align 8, !tbaa !48
  %827 = load ptr, ptr %501, align 8, !tbaa !30
  store ptr %827, ptr %493, align 8, !tbaa !49
  br label %828

828:                                              ; preds = %907, %824
  %829 = phi i32 [ 0, %824 ], [ %892, %907 ]
  %830 = load i32, ptr %489, align 8, !tbaa !34
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %832, label %891

832:                                              ; preds = %828
  %833 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %833, label %911 [
    i32 0, label %834
    i32 -5, label %834
  ]

834:                                              ; preds = %832, %832
  %835 = load i32, ptr %488, align 8, !tbaa !24
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %837, label %887

837:                                              ; preds = %834
  %838 = load i32, ptr %491, align 8, !tbaa !27
  %839 = load ptr, ptr %495, align 8, !tbaa !29
  store i32 0, ptr %496, align 4, !tbaa !17
  %840 = tail call ptr @__errno_location() #17
  store i32 0, ptr %840, align 4, !tbaa !45
  br label %841

841:                                              ; preds = %860, %837
  %842 = phi i32 [ 0, %837 ], [ %861, %860 ]
  %843 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %838, i32 %842), !nosanitize !20
  %844 = extractvalue { i32, i1 } %843, 1, !nosanitize !20
  br i1 %844, label %845, label %846, !prof !21, !nosanitize !20

845:                                              ; preds = %841
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

846:                                              ; preds = %841
  %847 = extractvalue { i32, i1 } %843, 0, !nosanitize !20
  %848 = tail call i32 @llvm.umin.i32(i32 %847, i32 1073741824)
  %849 = load i32, ptr %497, align 4, !tbaa !46
  %850 = zext i32 %842 to i64
  %851 = getelementptr inbounds nuw i8, ptr %839, i64 %850
  %852 = zext nneg i32 %848 to i64
  %853 = tail call i64 @read(i32 noundef %849, ptr noundef %851, i64 noundef %852) #13
  %854 = trunc i64 %853 to i32
  %855 = icmp slt i32 %854, 1
  br i1 %855, label %863, label %856

856:                                              ; preds = %846
  %857 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %842, i32 %854), !nosanitize !20
  %858 = extractvalue { i32, i1 } %857, 1, !nosanitize !20
  br i1 %858, label %859, label %860, !prof !21, !nosanitize !20

859:                                              ; preds = %856
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

860:                                              ; preds = %856
  %861 = extractvalue { i32, i1 } %857, 0, !nosanitize !20
  %862 = icmp ult i32 %861, %838
  br i1 %862, label %841, label %877, !llvm.loop !47

863:                                              ; preds = %846
  %864 = icmp slt i32 %854, 0
  br i1 %864, label %865, label %872

865:                                              ; preds = %863
  %866 = load i32, ptr %840, align 4, !tbaa !45
  %867 = icmp eq i32 %866, 11
  br i1 %867, label %868, label %873

868:                                              ; preds = %865
  store i32 1, ptr %496, align 4, !tbaa !17
  %869 = icmp eq i32 %842, 0
  br i1 %869, label %870, label %877

870:                                              ; preds = %868
  %871 = load i32, ptr %840, align 4, !tbaa !45
  br label %873

872:                                              ; preds = %863
  store i32 1, ptr %488, align 8, !tbaa !24
  br label %877

873:                                              ; preds = %870, %865
  %874 = phi i32 [ %871, %870 ], [ %866, %865 ]
  %875 = tail call ptr @strerror(i32 noundef %874) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %875) #13
  %876 = load i32, ptr %11, align 8, !tbaa !16
  br label %911

877:                                              ; preds = %872, %868, %860
  %878 = phi i32 [ %842, %872 ], [ %842, %868 ], [ %861, %860 ]
  %879 = load i32, ptr %489, align 8, !tbaa !34
  %880 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %879, i32 %878), !nosanitize !20
  %881 = extractvalue { i32, i1 } %880, 1, !nosanitize !20
  br i1 %881, label %882, label %883, !prof !21, !nosanitize !20

882:                                              ; preds = %877
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

883:                                              ; preds = %877
  %884 = extractvalue { i32, i1 } %880, 0, !nosanitize !20
  store i32 %884, ptr %489, align 8, !tbaa !34
  %885 = load ptr, ptr %495, align 8, !tbaa !29
  store ptr %885, ptr %494, align 8, !tbaa !35
  %886 = icmp eq i32 %884, 0
  br i1 %886, label %887, label %891

887:                                              ; preds = %883, %834
  %888 = load i32, ptr %496, align 4, !tbaa !17
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %890, label %911

890:                                              ; preds = %887
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %911

891:                                              ; preds = %883, %828
  %892 = tail call i32 @inflate(ptr noundef nonnull %494, i32 noundef 0) #13
  %893 = load i32, ptr %492, align 8, !tbaa !48
  %894 = icmp ult i32 %893, %826
  br i1 %894, label %895, label %896

895:                                              ; preds = %891
  store i32 0, ptr %498, align 4, !tbaa !33
  br label %896

896:                                              ; preds = %895, %891
  switch i32 %892, label %907 [
    i32 -2, label %897
    i32 2, label %897
    i32 -4, label %898
    i32 -3, label %899
  ]

897:                                              ; preds = %896, %896
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %911

898:                                              ; preds = %896
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %911

899:                                              ; preds = %896
  %900 = load i32, ptr %498, align 4, !tbaa !33
  %901 = icmp eq i32 %900, 1
  br i1 %901, label %902, label %903

902:                                              ; preds = %899
  store i32 0, ptr %489, align 8, !tbaa !34
  store i32 1, ptr %488, align 8, !tbaa !24
  store i32 0, ptr %490, align 8, !tbaa !26
  br label %911

903:                                              ; preds = %899
  %904 = load ptr, ptr %499, align 8, !tbaa !50
  %905 = icmp eq ptr %904, null
  %906 = select i1 %905, ptr @.str.6, ptr %904
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %906) #13
  br label %911

907:                                              ; preds = %896
  %908 = icmp ne i32 %893, 0
  %909 = icmp ne i32 %892, 1
  %910 = select i1 %908, i1 %909, i1 false
  br i1 %910, label %828, label %911, !llvm.loop !51

911:                                              ; preds = %907, %903, %902, %898, %897, %890, %887, %873, %832
  %912 = phi i32 [ %829, %887 ], [ %829, %890 ], [ %892, %897 ], [ -4, %898 ], [ 0, %902 ], [ -3, %903 ], [ %876, %873 ], [ %833, %832 ], [ %892, %907 ]
  %913 = load i32, ptr %492, align 8, !tbaa !48
  %914 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %826, i32 %913), !nosanitize !20
  %915 = extractvalue { i32, i1 } %914, 1, !nosanitize !20
  br i1 %915, label %916, label %917, !prof !21, !nosanitize !20

916:                                              ; preds = %911
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

917:                                              ; preds = %911
  %918 = extractvalue { i32, i1 } %914, 0, !nosanitize !20
  store i32 %918, ptr %3, align 8, !tbaa !19
  %919 = load ptr, ptr %493, align 8, !tbaa !49
  %920 = zext i32 %918 to i64
  %921 = sub nsw i64 0, %920
  %922 = getelementptr inbounds i8, ptr %919, i64 %921
  store ptr %922, ptr %487, align 8, !tbaa !22
  switch i32 %912, label %938 [
    i32 1, label %923
    i32 0, label %925
  ]

923:                                              ; preds = %917
  store i32 0, ptr %498, align 4, !tbaa !33
  store i32 0, ptr %490, align 8, !tbaa !26
  br label %925

924:                                              ; preds = %542
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %938

925:                                              ; preds = %923, %917, %777, %771
  %926 = load i32, ptr %3, align 8, !tbaa !19
  br label %927

927:                                              ; preds = %925, %773
  %928 = phi i32 [ %926, %925 ], [ %776, %773 ]
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %930, label %1105

930:                                              ; preds = %927
  %931 = load i32, ptr %488, align 8, !tbaa !24
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %936, label %933

933:                                              ; preds = %930
  %934 = load i32, ptr %489, align 8, !tbaa !34
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %1105, label %936

936:                                              ; preds = %933, %930
  %937 = load i32, ptr %490, align 8, !tbaa !26
  br label %542, !llvm.loop !52

938:                                              ; preds = %924, %917, %819, %733, %575, %561, %557
  %939 = load i32, ptr %3, align 8, !tbaa !19
  %940 = icmp eq i32 %939, 0
  %941 = sext i1 %940 to i32
  br label %1105

942:                                              ; preds = %537
  %943 = icmp eq i32 %535, 1
  br i1 %943, label %944, label %981

944:                                              ; preds = %942
  store i32 0, ptr %496, align 4, !tbaa !17
  %945 = tail call ptr @__errno_location() #17
  store i32 0, ptr %945, align 4, !tbaa !45
  br label %946

946:                                              ; preds = %965, %944
  %947 = phi i32 [ 0, %944 ], [ %966, %965 ]
  %948 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %510, i32 %947), !nosanitize !20
  %949 = extractvalue { i32, i1 } %948, 1, !nosanitize !20
  br i1 %949, label %950, label %951, !prof !21, !nosanitize !20

950:                                              ; preds = %946
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

951:                                              ; preds = %946
  %952 = extractvalue { i32, i1 } %948, 0, !nosanitize !20
  %953 = tail call i32 @llvm.umin.i32(i32 %952, i32 1073741824)
  %954 = load i32, ptr %497, align 4, !tbaa !46
  %955 = zext i32 %947 to i64
  %956 = getelementptr inbounds nuw i8, ptr %506, i64 %955
  %957 = zext nneg i32 %953 to i64
  %958 = tail call i64 @read(i32 noundef %954, ptr noundef %956, i64 noundef %957) #13
  %959 = trunc i64 %958 to i32
  %960 = icmp slt i32 %959, 1
  br i1 %960, label %968, label %961

961:                                              ; preds = %951
  %962 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %947, i32 %959), !nosanitize !20
  %963 = extractvalue { i32, i1 } %962, 1, !nosanitize !20
  br i1 %963, label %964, label %965, !prof !21, !nosanitize !20

964:                                              ; preds = %961
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

965:                                              ; preds = %961
  %966 = extractvalue { i32, i1 } %962, 0, !nosanitize !20
  %967 = icmp ult i32 %966, %510
  br i1 %967, label %946, label %1084, !llvm.loop !47

968:                                              ; preds = %951
  %969 = icmp slt i32 %959, 0
  br i1 %969, label %970, label %980

970:                                              ; preds = %968
  %971 = load i32, ptr %945, align 4, !tbaa !45
  %972 = icmp eq i32 %971, 11
  br i1 %972, label %973, label %977

973:                                              ; preds = %970
  store i32 1, ptr %496, align 4, !tbaa !17
  %974 = icmp eq i32 %947, 0
  br i1 %974, label %975, label %1086

975:                                              ; preds = %973
  %976 = load i32, ptr %945, align 4, !tbaa !45
  br label %977

977:                                              ; preds = %975, %970
  %978 = phi i32 [ %976, %975 ], [ %971, %970 ]
  %979 = tail call ptr @strerror(i32 noundef %978) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %979) #13
  br label %1086

980:                                              ; preds = %968
  store i32 1, ptr %488, align 8, !tbaa !24
  br label %1086

981:                                              ; preds = %942
  store i32 %510, ptr %492, align 8, !tbaa !58
  store ptr %506, ptr %493, align 8, !tbaa !59
  br label %982

982:                                              ; preds = %1061, %981
  %983 = phi i32 [ 0, %981 ], [ %1046, %1061 ]
  %984 = load i32, ptr %489, align 8, !tbaa !34
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %986, label %1045

986:                                              ; preds = %982
  %987 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %987, label %1065 [
    i32 0, label %988
    i32 -5, label %988
  ]

988:                                              ; preds = %986, %986
  %989 = load i32, ptr %488, align 8, !tbaa !24
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %991, label %1041

991:                                              ; preds = %988
  %992 = load i32, ptr %491, align 8, !tbaa !27
  %993 = load ptr, ptr %495, align 8, !tbaa !29
  store i32 0, ptr %496, align 4, !tbaa !17
  %994 = tail call ptr @__errno_location() #17
  store i32 0, ptr %994, align 4, !tbaa !45
  br label %995

995:                                              ; preds = %1014, %991
  %996 = phi i32 [ 0, %991 ], [ %1015, %1014 ]
  %997 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %992, i32 %996), !nosanitize !20
  %998 = extractvalue { i32, i1 } %997, 1, !nosanitize !20
  br i1 %998, label %999, label %1000, !prof !21, !nosanitize !20

999:                                              ; preds = %995
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1000:                                             ; preds = %995
  %1001 = extractvalue { i32, i1 } %997, 0, !nosanitize !20
  %1002 = tail call i32 @llvm.umin.i32(i32 %1001, i32 1073741824)
  %1003 = load i32, ptr %497, align 4, !tbaa !46
  %1004 = zext i32 %996 to i64
  %1005 = getelementptr inbounds nuw i8, ptr %993, i64 %1004
  %1006 = zext nneg i32 %1002 to i64
  %1007 = tail call i64 @read(i32 noundef %1003, ptr noundef %1005, i64 noundef %1006) #13
  %1008 = trunc i64 %1007 to i32
  %1009 = icmp slt i32 %1008, 1
  br i1 %1009, label %1017, label %1010

1010:                                             ; preds = %1000
  %1011 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %996, i32 %1008), !nosanitize !20
  %1012 = extractvalue { i32, i1 } %1011, 1, !nosanitize !20
  br i1 %1012, label %1013, label %1014, !prof !21, !nosanitize !20

1013:                                             ; preds = %1010
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1014:                                             ; preds = %1010
  %1015 = extractvalue { i32, i1 } %1011, 0, !nosanitize !20
  %1016 = icmp ult i32 %1015, %992
  br i1 %1016, label %995, label %1031, !llvm.loop !47

1017:                                             ; preds = %1000
  %1018 = icmp slt i32 %1008, 0
  br i1 %1018, label %1019, label %1026

1019:                                             ; preds = %1017
  %1020 = load i32, ptr %994, align 4, !tbaa !45
  %1021 = icmp eq i32 %1020, 11
  br i1 %1021, label %1022, label %1027

1022:                                             ; preds = %1019
  store i32 1, ptr %496, align 4, !tbaa !17
  %1023 = icmp eq i32 %996, 0
  br i1 %1023, label %1024, label %1031

1024:                                             ; preds = %1022
  %1025 = load i32, ptr %994, align 4, !tbaa !45
  br label %1027

1026:                                             ; preds = %1017
  store i32 1, ptr %488, align 8, !tbaa !24
  br label %1031

1027:                                             ; preds = %1024, %1019
  %1028 = phi i32 [ %1025, %1024 ], [ %1020, %1019 ]
  %1029 = tail call ptr @strerror(i32 noundef %1028) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %1029) #13
  %1030 = load i32, ptr %11, align 8, !tbaa !16
  br label %1065

1031:                                             ; preds = %1026, %1022, %1014
  %1032 = phi i32 [ %996, %1026 ], [ %996, %1022 ], [ %1015, %1014 ]
  %1033 = load i32, ptr %489, align 8, !tbaa !34
  %1034 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1033, i32 %1032), !nosanitize !20
  %1035 = extractvalue { i32, i1 } %1034, 1, !nosanitize !20
  br i1 %1035, label %1036, label %1037, !prof !21, !nosanitize !20

1036:                                             ; preds = %1031
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1037:                                             ; preds = %1031
  %1038 = extractvalue { i32, i1 } %1034, 0, !nosanitize !20
  store i32 %1038, ptr %489, align 8, !tbaa !34
  %1039 = load ptr, ptr %495, align 8, !tbaa !29
  store ptr %1039, ptr %494, align 8, !tbaa !35
  %1040 = icmp eq i32 %1038, 0
  br i1 %1040, label %1041, label %1045

1041:                                             ; preds = %1037, %988
  %1042 = load i32, ptr %496, align 4, !tbaa !17
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1044, label %1065

1044:                                             ; preds = %1041
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %1065

1045:                                             ; preds = %1037, %982
  %1046 = tail call i32 @inflate(ptr noundef nonnull %494, i32 noundef 0) #13
  %1047 = load i32, ptr %492, align 8, !tbaa !48
  %1048 = icmp ult i32 %1047, %510
  br i1 %1048, label %1049, label %1050

1049:                                             ; preds = %1045
  store i32 0, ptr %498, align 4, !tbaa !33
  br label %1050

1050:                                             ; preds = %1049, %1045
  switch i32 %1046, label %1061 [
    i32 -2, label %1051
    i32 2, label %1051
    i32 -4, label %1052
    i32 -3, label %1053
  ]

1051:                                             ; preds = %1050, %1050
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %1065

1052:                                             ; preds = %1050
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1065

1053:                                             ; preds = %1050
  %1054 = load i32, ptr %498, align 4, !tbaa !33
  %1055 = icmp eq i32 %1054, 1
  br i1 %1055, label %1056, label %1057

1056:                                             ; preds = %1053
  store i32 0, ptr %489, align 8, !tbaa !34
  store i32 1, ptr %488, align 8, !tbaa !24
  store i32 0, ptr %490, align 8, !tbaa !26
  br label %1065

1057:                                             ; preds = %1053
  %1058 = load ptr, ptr %499, align 8, !tbaa !50
  %1059 = icmp eq ptr %1058, null
  %1060 = select i1 %1059, ptr @.str.6, ptr %1058
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %1060) #13
  br label %1065

1061:                                             ; preds = %1050
  %1062 = icmp ne i32 %1047, 0
  %1063 = icmp ne i32 %1046, 1
  %1064 = select i1 %1062, i1 %1063, i1 false
  br i1 %1064, label %982, label %1065, !llvm.loop !51

1065:                                             ; preds = %1061, %1057, %1056, %1052, %1051, %1044, %1041, %1027, %986
  %1066 = phi i32 [ %983, %1041 ], [ %983, %1044 ], [ %1046, %1051 ], [ -4, %1052 ], [ 0, %1056 ], [ -3, %1057 ], [ %1030, %1027 ], [ %1046, %1061 ], [ %987, %986 ]
  %1067 = load i32, ptr %492, align 8, !tbaa !48
  %1068 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %510, i32 %1067), !nosanitize !20
  %1069 = extractvalue { i32, i1 } %1068, 1, !nosanitize !20
  br i1 %1069, label %1070, label %1071, !prof !21, !nosanitize !20

1070:                                             ; preds = %1065
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1071:                                             ; preds = %1065
  %1072 = extractvalue { i32, i1 } %1068, 0, !nosanitize !20
  %1073 = load ptr, ptr %493, align 8, !tbaa !49
  %1074 = zext i32 %1072 to i64
  %1075 = sub nsw i64 0, %1074
  %1076 = getelementptr inbounds i8, ptr %1073, i64 %1075
  store ptr %1076, ptr %487, align 8, !tbaa !22
  %1077 = icmp eq i32 %1066, 1
  br i1 %1077, label %1078, label %1079

1078:                                             ; preds = %1071
  store i32 0, ptr %498, align 4, !tbaa !33
  store i32 0, ptr %490, align 8, !tbaa !26
  br label %1082

1079:                                             ; preds = %1071
  %1080 = icmp ne i32 %1066, 0
  %1081 = sext i1 %1080 to i32
  br label %1082

1082:                                             ; preds = %1079, %1078
  %1083 = phi i32 [ 0, %1078 ], [ %1081, %1079 ]
  store i32 0, ptr %3, align 8, !tbaa !19
  br label %1086

1084:                                             ; preds = %965
  %1085 = zext i32 %966 to i64
  br label %1086

1086:                                             ; preds = %1084, %1082, %980, %977, %973, %523
  %1087 = phi i64 [ %1085, %1084 ], [ %955, %980 ], [ %955, %977 ], [ %955, %973 ], [ %516, %523 ], [ %1074, %1082 ]
  %1088 = phi i32 [ 0, %1084 ], [ 0, %980 ], [ -1, %977 ], [ 0, %973 ], [ %527, %523 ], [ %1083, %1082 ]
  %1089 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %507, i64 %1087), !nosanitize !20
  %1090 = extractvalue { i64, i1 } %1089, 0, !nosanitize !20
  %1091 = extractvalue { i64, i1 } %1089, 1, !nosanitize !20
  br i1 %1091, label %1092, label %1093, !prof !21, !nosanitize !20

1092:                                             ; preds = %1086
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1093:                                             ; preds = %1086
  %1094 = getelementptr inbounds nuw i8, ptr %506, i64 %1087
  %1095 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %508, i64 %1087), !nosanitize !20
  %1096 = extractvalue { i64, i1 } %1095, 0, !nosanitize !20
  %1097 = extractvalue { i64, i1 } %1095, 1, !nosanitize !20
  br i1 %1097, label %1098, label %1099, !prof !21, !nosanitize !20

1098:                                             ; preds = %1099, %1093
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1099:                                             ; preds = %1093
  %1100 = load i64, ptr %500, align 8, !tbaa !23
  %1101 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1100, i64 %1087), !nosanitize !20
  %1102 = extractvalue { i64, i1 } %1101, 1, !nosanitize !20
  br i1 %1102, label %1098, label %1103, !prof !21, !nosanitize !20

1103:                                             ; preds = %1099
  %1104 = extractvalue { i64, i1 } %1101, 0, !nosanitize !20
  store i64 %1104, ptr %500, align 8, !tbaa !23
  br label %1105

1105:                                             ; preds = %1103, %938, %933, %927, %822, %777
  %1106 = phi ptr [ %1094, %1103 ], [ %506, %938 ], [ %506, %822 ], [ %506, %777 ], [ %506, %927 ], [ %506, %933 ]
  %1107 = phi i64 [ %1090, %1103 ], [ %507, %938 ], [ %507, %822 ], [ %507, %777 ], [ %507, %927 ], [ %507, %933 ]
  %1108 = phi i64 [ %1096, %1103 ], [ %508, %938 ], [ %508, %822 ], [ %508, %777 ], [ %508, %927 ], [ %508, %933 ]
  %1109 = phi i32 [ %1088, %1103 ], [ %941, %938 ], [ 0, %822 ], [ 0, %777 ], [ 0, %927 ], [ 0, %933 ]
  %1110 = icmp ne i64 %1107, 0
  %1111 = icmp eq i32 %1109, 0
  %1112 = select i1 %1110, i1 %1111, i1 false
  br i1 %1112, label %505, label %1113, !llvm.loop !60

1113:                                             ; preds = %1105, %531
  %1114 = phi i64 [ %1107, %1105 ], [ %507, %531 ]
  %1115 = phi i64 [ %1108, %1105 ], [ %508, %531 ]
  %1116 = icmp eq i64 %1114, 0
  br i1 %1116, label %1122, label %1117

1117:                                             ; preds = %1113
  %1118 = load i32, ptr %488, align 8, !tbaa !24
  %1119 = icmp eq i32 %1118, 0
  br i1 %1119, label %1122, label %1120

1120:                                             ; preds = %1117
  %1121 = getelementptr inbounds nuw i8, ptr %3, i64 92
  store i32 1, ptr %1121, align 4, !tbaa !61
  br label %1122

1122:                                             ; preds = %1120, %1117, %1113, %468, %461, %363, %277, %119, %105, %101
  %1123 = phi i64 [ %1115, %1120 ], [ %1115, %1117 ], [ %1115, %1113 ], [ 0, %468 ], [ 0, %363 ], [ 0, %101 ], [ 0, %105 ], [ 0, %277 ], [ 0, %461 ], [ 0, %119 ]
  %1124 = udiv i64 %1123, %1
  br label %1125

1125:                                             ; preds = %1122, %28, %27, %13, %6, %4
  %1126 = phi i64 [ 0, %27 ], [ 0, %4 ], [ 0, %6 ], [ 0, %13 ], [ %1124, %1122 ], [ 0, %28 ]
  ret i64 %1126
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzgetc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr %2)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1170, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1170

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %10, label %11 [
    i32 0, label %15
    i32 -5, label %15
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %13 = load i32, ptr %12, align 4, !tbaa !17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %1170, label %15

15:                                               ; preds = %11, %8, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %16 = load i32, ptr %0, align 8, !tbaa !19
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %15
  %19 = add i32 %16, -1
  store i32 %19, ptr %0, align 8, !tbaa !19
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = load i64, ptr %20, align 8, !tbaa !23
  %22 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %21, i64 1), !nosanitize !20
  %23 = extractvalue { i64, i1 } %22, 1, !nosanitize !20
  br i1 %23, label %24, label %25, !prof !21, !nosanitize !20

24:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

25:                                               ; preds = %18
  %26 = extractvalue { i64, i1 } %22, 0, !nosanitize !20
  store i64 %26, ptr %20, align 8, !tbaa !23
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 1
  store ptr %29, ptr %27, align 8, !tbaa !22
  %30 = load i8, ptr %28, align 1, !tbaa !36
  %31 = zext i8 %30 to i32
  br label %1170

32:                                               ; preds = %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %34 = load i64, ptr %33, align 8, !tbaa !18
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %508, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %55

55:                                               ; preds = %505, %36
  %56 = phi i64 [ %506, %505 ], [ %34, %36 ]
  %57 = load i32, ptr %0, align 8, !tbaa !19
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %81, label %59

59:                                               ; preds = %55
  %60 = zext i32 %57 to i64
  %61 = tail call i64 @llvm.smin.i64(i64 %56, i64 %60)
  %62 = trunc i64 %61 to i32
  %63 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %57, i32 %62), !nosanitize !20
  %64 = extractvalue { i32, i1 } %63, 1, !nosanitize !20
  br i1 %64, label %65, label %66, !prof !21, !nosanitize !20

65:                                               ; preds = %75, %59
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

66:                                               ; preds = %59
  %67 = extractvalue { i32, i1 } %63, 0, !nosanitize !20
  store i32 %67, ptr %0, align 8, !tbaa !19
  %68 = load ptr, ptr %37, align 8, !tbaa !22
  %69 = and i64 %61, 4294967295
  %70 = getelementptr inbounds nuw i8, ptr %68, i64 %69
  store ptr %70, ptr %37, align 8, !tbaa !22
  %71 = load i64, ptr %38, align 8, !tbaa !23
  %72 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %71, i64 %69), !nosanitize !20
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !20
  br i1 %73, label %74, label %75, !prof !21, !nosanitize !20

74:                                               ; preds = %66
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

75:                                               ; preds = %66
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !20
  store i64 %76, ptr %38, align 8, !tbaa !23
  %77 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %56, i64 %69), !nosanitize !20
  %78 = extractvalue { i64, i1 } %77, 1, !nosanitize !20
  br i1 false, label %65, label %79, !prof !21, !nosanitize !20

79:                                               ; preds = %75
  %80 = extractvalue { i64, i1 } %77, 0, !nosanitize !20
  store i64 %80, ptr %33, align 8, !tbaa !18
  br label %505

81:                                               ; preds = %55
  %82 = load i32, ptr %39, align 8, !tbaa !24
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %40, align 8, !tbaa !25
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %508, label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %502, %87
  %89 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %89, label %490 [
    i32 0, label %90
    i32 1, label %326
    i32 2, label %370
  ]

90:                                               ; preds = %88
  %91 = load i32, ptr %42, align 8, !tbaa !27
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %90
  %94 = load i32, ptr %52, align 4, !tbaa !28
  %95 = zext i32 %94 to i64
  %96 = tail call noalias ptr @malloc(i64 noundef %95) #16
  store ptr %96, ptr %47, align 8, !tbaa !29
  %97 = shl i32 %94, 1
  %98 = zext i32 %97 to i64
  %99 = tail call noalias ptr @malloc(i64 noundef %98) #16
  store ptr %99, ptr %44, align 8, !tbaa !30
  %100 = icmp eq ptr %96, null
  %101 = icmp eq ptr %99, null
  %102 = or i1 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  tail call void @free(ptr noundef %99) #13
  tail call void @free(ptr noundef %96) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1169

104:                                              ; preds = %93
  store i32 %94, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %40, align 8, !tbaa !25
  store ptr null, ptr %46, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  %105 = tail call i32 @inflateInit2_(ptr noundef nonnull %46, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %44, align 8, !tbaa !30
  tail call void @free(ptr noundef %108) #13
  %109 = load ptr, ptr %47, align 8, !tbaa !29
  tail call void @free(ptr noundef %109) #13
  store i32 0, ptr %42, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1169

110:                                              ; preds = %104, %90
  %111 = load i32, ptr %54, align 8, !tbaa !32
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr %50, align 4, !tbaa !33
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113, %110
  %117 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  %118 = load i32, ptr %50, align 4, !tbaa !33
  %119 = icmp ne i32 %118, -1
  %120 = zext i1 %119 to i32
  store i32 %120, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %54, align 8, !tbaa !32
  br label %323

121:                                              ; preds = %113
  %122 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %122, label %1169 [
    i32 0, label %123
    i32 -5, label %123
  ]

123:                                              ; preds = %121, %121
  %124 = load i32, ptr %39, align 8, !tbaa !24
  %125 = icmp eq i32 %124, 0
  %126 = load i32, ptr %40, align 8, !tbaa !34
  br i1 %125, label %127, label %291

127:                                              ; preds = %123
  %128 = icmp eq i32 %126, 0
  br i1 %128, label %235, label %129

129:                                              ; preds = %127
  %130 = load ptr, ptr %47, align 8, !tbaa !29
  %131 = load ptr, ptr %46, align 8, !tbaa !35
  %132 = icmp eq ptr %131, %130
  br i1 %132, label %235, label %133

133:                                              ; preds = %129
  %134 = ptrtoint ptr %131 to i64
  %135 = ptrtoint ptr %130 to i64
  %136 = zext i32 %126 to i64
  %137 = icmp ult i32 %126, 4
  %138 = sub i64 %135, %134
  %139 = icmp ult i64 %138, 32
  %140 = or i1 %137, %139
  br i1 %140, label %180, label %141

141:                                              ; preds = %133
  %142 = icmp ult i32 %126, 32
  br i1 %142, label %164, label %143

143:                                              ; preds = %141
  %144 = and i64 %136, 4294967264
  br label %145

145:                                              ; preds = %145, %143
  %146 = phi i64 [ 0, %143 ], [ %153, %145 ]
  %147 = getelementptr i8, ptr %130, i64 %146
  %148 = getelementptr i8, ptr %131, i64 %146
  %149 = getelementptr i8, ptr %148, i64 16
  %150 = load <16 x i8>, ptr %148, align 1, !tbaa !36
  %151 = load <16 x i8>, ptr %149, align 1, !tbaa !36
  %152 = getelementptr i8, ptr %147, i64 16
  store <16 x i8> %150, ptr %147, align 1, !tbaa !36
  store <16 x i8> %151, ptr %152, align 1, !tbaa !36
  %153 = add nuw i64 %146, 32
  %154 = icmp eq i64 %153, %144
  br i1 %154, label %155, label %145, !llvm.loop !70

155:                                              ; preds = %145
  %156 = icmp eq i64 %144, %136
  br i1 %156, label %233, label %157

157:                                              ; preds = %155
  %158 = getelementptr i8, ptr %130, i64 %144
  %159 = getelementptr i8, ptr %131, i64 %144
  %160 = trunc nuw i64 %144 to i32
  %161 = sub i32 %126, %160
  %162 = and i64 %136, 28
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %180, label %164

164:                                              ; preds = %157, %141
  %165 = phi i64 [ %144, %157 ], [ 0, %141 ]
  %166 = and i64 %136, 4294967292
  %167 = getelementptr i8, ptr %130, i64 %166
  %168 = getelementptr i8, ptr %131, i64 %166
  %169 = trunc nuw i64 %166 to i32
  %170 = sub i32 %126, %169
  br label %171

171:                                              ; preds = %171, %164
  %172 = phi i64 [ %165, %164 ], [ %176, %171 ]
  %173 = getelementptr i8, ptr %130, i64 %172
  %174 = getelementptr i8, ptr %131, i64 %172
  %175 = load <4 x i8>, ptr %174, align 1, !tbaa !36
  store <4 x i8> %175, ptr %173, align 1, !tbaa !36
  %176 = add nuw i64 %172, 4
  %177 = icmp eq i64 %176, %166
  br i1 %177, label %178, label %171, !llvm.loop !71

178:                                              ; preds = %171
  %179 = icmp eq i64 %166, %136
  br i1 %179, label %233, label %180

180:                                              ; preds = %178, %157, %133
  %181 = phi ptr [ %130, %133 ], [ %158, %157 ], [ %167, %178 ]
  %182 = phi ptr [ %131, %133 ], [ %159, %157 ], [ %168, %178 ]
  %183 = phi i32 [ %126, %133 ], [ %161, %157 ], [ %170, %178 ]
  %184 = add i32 %183, -1
  %185 = and i32 %183, 7
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %198, label %187

187:                                              ; preds = %187, %180
  %188 = phi ptr [ %194, %187 ], [ %181, %180 ]
  %189 = phi ptr [ %195, %187 ], [ %182, %180 ]
  %190 = phi i32 [ %193, %187 ], [ %183, %180 ]
  %191 = phi i32 [ %196, %187 ], [ 0, %180 ]
  %192 = load i8, ptr %189, align 1, !tbaa !36
  store i8 %192, ptr %188, align 1, !tbaa !36
  %193 = add i32 %190, -1
  %194 = getelementptr inbounds nuw i8, ptr %188, i64 1
  %195 = getelementptr inbounds nuw i8, ptr %189, i64 1
  %196 = add i32 %191, 1
  %197 = icmp eq i32 %196, %185
  br i1 %197, label %198, label %187, !llvm.loop !72

198:                                              ; preds = %187, %180
  %199 = phi ptr [ %181, %180 ], [ %194, %187 ]
  %200 = phi ptr [ %182, %180 ], [ %195, %187 ]
  %201 = phi i32 [ %183, %180 ], [ %193, %187 ]
  %202 = icmp ult i32 %184, 7
  br i1 %202, label %233, label %203

203:                                              ; preds = %203, %198
  %204 = phi ptr [ %230, %203 ], [ %199, %198 ]
  %205 = phi ptr [ %231, %203 ], [ %200, %198 ]
  %206 = phi i32 [ %229, %203 ], [ %201, %198 ]
  %207 = load i8, ptr %205, align 1, !tbaa !36
  store i8 %207, ptr %204, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %204, i64 1
  %209 = getelementptr inbounds nuw i8, ptr %205, i64 1
  %210 = load i8, ptr %209, align 1, !tbaa !36
  store i8 %210, ptr %208, align 1, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %204, i64 2
  %212 = getelementptr inbounds nuw i8, ptr %205, i64 2
  %213 = load i8, ptr %212, align 1, !tbaa !36
  store i8 %213, ptr %211, align 1, !tbaa !36
  %214 = getelementptr inbounds nuw i8, ptr %204, i64 3
  %215 = getelementptr inbounds nuw i8, ptr %205, i64 3
  %216 = load i8, ptr %215, align 1, !tbaa !36
  store i8 %216, ptr %214, align 1, !tbaa !36
  %217 = getelementptr inbounds nuw i8, ptr %204, i64 4
  %218 = getelementptr inbounds nuw i8, ptr %205, i64 4
  %219 = load i8, ptr %218, align 1, !tbaa !36
  store i8 %219, ptr %217, align 1, !tbaa !36
  %220 = getelementptr inbounds nuw i8, ptr %204, i64 5
  %221 = getelementptr inbounds nuw i8, ptr %205, i64 5
  %222 = load i8, ptr %221, align 1, !tbaa !36
  store i8 %222, ptr %220, align 1, !tbaa !36
  %223 = getelementptr inbounds nuw i8, ptr %204, i64 6
  %224 = getelementptr inbounds nuw i8, ptr %205, i64 6
  %225 = load i8, ptr %224, align 1, !tbaa !36
  store i8 %225, ptr %223, align 1, !tbaa !36
  %226 = getelementptr inbounds nuw i8, ptr %204, i64 7
  %227 = getelementptr inbounds nuw i8, ptr %205, i64 7
  %228 = load i8, ptr %227, align 1, !tbaa !36
  store i8 %228, ptr %226, align 1, !tbaa !36
  %229 = add i32 %206, -8
  %230 = getelementptr inbounds nuw i8, ptr %204, i64 8
  %231 = getelementptr inbounds nuw i8, ptr %205, i64 8
  %232 = icmp eq i32 %229, 0
  br i1 %232, label %233, label %203, !llvm.loop !73

233:                                              ; preds = %203, %198, %178, %155
  %234 = load i32, ptr %40, align 8, !tbaa !34
  br label %235

235:                                              ; preds = %233, %129, %127
  %236 = phi i32 [ %234, %233 ], [ %126, %129 ], [ 0, %127 ]
  %237 = load i32, ptr %42, align 8, !tbaa !27
  %238 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %237, i32 %236), !nosanitize !20
  %239 = extractvalue { i32, i1 } %238, 1, !nosanitize !20
  br i1 %239, label %240, label %241, !prof !21, !nosanitize !20

240:                                              ; preds = %235
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

241:                                              ; preds = %235
  %242 = extractvalue { i32, i1 } %238, 0, !nosanitize !20
  %243 = load ptr, ptr %47, align 8, !tbaa !29
  %244 = zext i32 %236 to i64
  %245 = getelementptr inbounds nuw i8, ptr %243, i64 %244
  store i32 0, ptr %48, align 4, !tbaa !17
  %246 = tail call ptr @__errno_location() #17
  store i32 0, ptr %246, align 4, !tbaa !45
  br label %247

247:                                              ; preds = %266, %241
  %248 = phi i32 [ 0, %241 ], [ %267, %266 ]
  %249 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %242, i32 %248), !nosanitize !20
  %250 = extractvalue { i32, i1 } %249, 1, !nosanitize !20
  br i1 %250, label %251, label %252, !prof !21, !nosanitize !20

251:                                              ; preds = %247
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

252:                                              ; preds = %247
  %253 = extractvalue { i32, i1 } %249, 0, !nosanitize !20
  %254 = tail call i32 @llvm.umin.i32(i32 %253, i32 1073741824)
  %255 = load i32, ptr %49, align 4, !tbaa !46
  %256 = zext i32 %248 to i64
  %257 = getelementptr inbounds nuw i8, ptr %245, i64 %256
  %258 = zext nneg i32 %254 to i64
  %259 = tail call i64 @read(i32 noundef %255, ptr noundef %257, i64 noundef %258) #13
  %260 = trunc i64 %259 to i32
  %261 = icmp slt i32 %260, 1
  br i1 %261, label %269, label %262

262:                                              ; preds = %252
  %263 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %248, i32 %260), !nosanitize !20
  %264 = extractvalue { i32, i1 } %263, 1, !nosanitize !20
  br i1 %264, label %265, label %266, !prof !21, !nosanitize !20

265:                                              ; preds = %262
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

266:                                              ; preds = %262
  %267 = extractvalue { i32, i1 } %263, 0, !nosanitize !20
  %268 = icmp ult i32 %267, %242
  br i1 %268, label %247, label %282, !llvm.loop !47

269:                                              ; preds = %252
  %270 = icmp slt i32 %260, 0
  br i1 %270, label %271, label %278

271:                                              ; preds = %269
  %272 = load i32, ptr %246, align 4, !tbaa !45
  %273 = icmp eq i32 %272, 11
  br i1 %273, label %274, label %279

274:                                              ; preds = %271
  store i32 1, ptr %48, align 4, !tbaa !17
  %275 = icmp eq i32 %248, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %274
  %277 = load i32, ptr %246, align 4, !tbaa !45
  br label %279

278:                                              ; preds = %269
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %282

279:                                              ; preds = %276, %271
  %280 = phi i32 [ %277, %276 ], [ %272, %271 ]
  %281 = tail call ptr @strerror(i32 noundef %280) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %281) #13
  br label %1169

282:                                              ; preds = %278, %274, %266
  %283 = phi i32 [ %248, %278 ], [ %248, %274 ], [ %267, %266 ]
  %284 = load i32, ptr %40, align 8, !tbaa !34
  %285 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %284, i32 %283), !nosanitize !20
  %286 = extractvalue { i32, i1 } %285, 1, !nosanitize !20
  br i1 %286, label %287, label %288, !prof !21, !nosanitize !20

287:                                              ; preds = %282
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

288:                                              ; preds = %282
  %289 = extractvalue { i32, i1 } %285, 0, !nosanitize !20
  store i32 %289, ptr %40, align 8, !tbaa !34
  %290 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %290, ptr %46, align 8, !tbaa !35
  br label %291

291:                                              ; preds = %288, %123
  %292 = phi i32 [ %289, %288 ], [ %126, %123 ]
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %323, label %294

294:                                              ; preds = %291
  %295 = load i32, ptr %48, align 4, !tbaa !17
  %296 = icmp ne i32 %295, 0
  %297 = icmp ult i32 %292, 4
  %298 = and i1 %297, %296
  br i1 %298, label %323, label %299

299:                                              ; preds = %294
  %300 = icmp ugt i32 %292, 3
  %301 = load ptr, ptr %46, align 8, !tbaa !35
  br i1 %300, label %302, label %319

302:                                              ; preds = %299
  %303 = load i8, ptr %301, align 1, !tbaa !36
  %304 = icmp eq i8 %303, 31
  br i1 %304, label %305, label %319

305:                                              ; preds = %302
  %306 = getelementptr inbounds nuw i8, ptr %301, i64 1
  %307 = load i8, ptr %306, align 1, !tbaa !36
  %308 = icmp eq i8 %307, -117
  br i1 %308, label %309, label %319

309:                                              ; preds = %305
  %310 = getelementptr inbounds nuw i8, ptr %301, i64 2
  %311 = load i8, ptr %310, align 1, !tbaa !36
  %312 = icmp eq i8 %311, 8
  br i1 %312, label %313, label %319

313:                                              ; preds = %309
  %314 = getelementptr inbounds nuw i8, ptr %301, i64 3
  %315 = load i8, ptr %314, align 1, !tbaa !36
  %316 = icmp ult i8 %315, 32
  br i1 %316, label %317, label %319

317:                                              ; preds = %313
  %318 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  store i32 1, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %54, align 8, !tbaa !32
  br label %491

319:                                              ; preds = %313, %309, %305, %302, %299
  %320 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %320, ptr %37, align 8, !tbaa !22
  %321 = zext i32 %292 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %320, ptr align 1 %301, i64 %321, i1 false)
  %322 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %322, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %493

323:                                              ; preds = %294, %291, %116
  %324 = load i32, ptr %41, align 8, !tbaa !26
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %503, label %491

326:                                              ; preds = %88
  %327 = load ptr, ptr %44, align 8, !tbaa !30
  %328 = load i32, ptr %42, align 8, !tbaa !27
  %329 = shl i32 %328, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %330 = tail call ptr @__errno_location() #17
  store i32 0, ptr %330, align 4, !tbaa !45
  store i32 0, ptr %0, align 4, !tbaa !45
  br label %331

331:                                              ; preds = %351, %326
  %332 = phi i32 [ %352, %351 ], [ 0, %326 ]
  %333 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %329, i32 %332), !nosanitize !20
  %334 = extractvalue { i32, i1 } %333, 1, !nosanitize !20
  br i1 false, label %335, label %336, !prof !21, !nosanitize !20

335:                                              ; preds = %331
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

336:                                              ; preds = %331
  %337 = extractvalue { i32, i1 } %333, 0, !nosanitize !20
  %338 = tail call i32 @llvm.umin.i32(i32 %337, i32 1073741824)
  %339 = load i32, ptr %49, align 4, !tbaa !46
  %340 = zext i32 %332 to i64
  %341 = getelementptr inbounds nuw i8, ptr %327, i64 %340
  %342 = zext nneg i32 %338 to i64
  %343 = tail call i64 @read(i32 noundef %339, ptr noundef %341, i64 noundef %342) #13
  %344 = trunc i64 %343 to i32
  %345 = icmp slt i32 %344, 1
  br i1 %345, label %354, label %346

346:                                              ; preds = %336
  %347 = load i32, ptr %0, align 4, !tbaa !45
  %348 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %347, i32 %344), !nosanitize !20
  %349 = extractvalue { i32, i1 } %348, 1, !nosanitize !20
  br i1 %349, label %350, label %351, !prof !21, !nosanitize !20

350:                                              ; preds = %346
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

351:                                              ; preds = %346
  %352 = extractvalue { i32, i1 } %348, 0, !nosanitize !20
  store i32 %352, ptr %0, align 4, !tbaa !45
  %353 = icmp ult i32 %352, %329
  br i1 %353, label %331, label %368, !llvm.loop !47

354:                                              ; preds = %336
  %355 = icmp slt i32 %344, 0
  br i1 %355, label %356, label %364

356:                                              ; preds = %354
  %357 = load i32, ptr %330, align 4, !tbaa !45
  %358 = icmp eq i32 %357, 11
  br i1 %358, label %359, label %365

359:                                              ; preds = %356
  store i32 1, ptr %48, align 4, !tbaa !17
  %360 = load i32, ptr %0, align 4, !tbaa !45
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %368

362:                                              ; preds = %359
  %363 = load i32, ptr %330, align 4, !tbaa !45
  br label %365

364:                                              ; preds = %354
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %368

365:                                              ; preds = %362, %356
  %366 = phi i32 [ %363, %362 ], [ %357, %356 ]
  %367 = tail call ptr @strerror(i32 noundef %366) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %367) #13
  br label %1169

368:                                              ; preds = %364, %359, %351
  %369 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %369, ptr %37, align 8, !tbaa !22
  br label %503

370:                                              ; preds = %88
  %371 = load i32, ptr %42, align 8, !tbaa !27
  %372 = shl i32 %371, 1
  store i32 %372, ptr %43, align 8, !tbaa !48
  %373 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %373, ptr %45, align 8, !tbaa !49
  br label %374

374:                                              ; preds = %473, %370
  %375 = phi i32 [ 0, %370 ], [ %458, %473 ]
  %376 = load i32, ptr %40, align 8, !tbaa !34
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %457

378:                                              ; preds = %374
  %379 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %379, label %477 [
    i32 0, label %380
    i32 -5, label %380
  ]

380:                                              ; preds = %378, %378
  %381 = load i32, ptr %39, align 8, !tbaa !24
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %453

383:                                              ; preds = %380
  %384 = load i32, ptr %42, align 8, !tbaa !27
  %385 = load ptr, ptr %47, align 8, !tbaa !29
  store i32 0, ptr %48, align 4, !tbaa !17
  %386 = tail call ptr @__errno_location() #17
  store i32 0, ptr %386, align 4, !tbaa !45
  %mv.h = icmp sge i32 %384, 0
  %mv.h.fr = freeze i1 %mv.h
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %383
  br label %387

387:                                              ; preds = %404, %.mv.ph.mv.fast
  %388 = phi i32 [ 0, %.mv.ph.mv.fast ], [ %405, %404 ]
  %389 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %384, i32 %388), !nosanitize !20
  %390 = extractvalue { i32, i1 } %389, 1, !nosanitize !20
  br i1 false, label %411, label %391, !prof !21, !nosanitize !20

391:                                              ; preds = %387
  %392 = extractvalue { i32, i1 } %389, 0, !nosanitize !20
  %393 = tail call i32 @llvm.umin.i32(i32 %392, i32 1073741824)
  %394 = load i32, ptr %49, align 4, !tbaa !46
  %395 = zext i32 %388 to i64
  %396 = getelementptr inbounds nuw i8, ptr %385, i64 %395
  %397 = zext nneg i32 %393 to i64
  %398 = tail call i64 @read(i32 noundef %394, ptr noundef %396, i64 noundef %397) #13
  %399 = trunc i64 %398 to i32
  %400 = icmp slt i32 %399, 1
  br i1 %400, label %429, label %401

401:                                              ; preds = %391
  %402 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %388, i32 %399), !nosanitize !20
  %403 = extractvalue { i32, i1 } %402, 1, !nosanitize !20
  br i1 false, label %425, label %404, !prof !21, !nosanitize !20

404:                                              ; preds = %401
  %405 = extractvalue { i32, i1 } %402, 0, !nosanitize !20
  %406 = icmp ult i32 %405, %384
  br i1 %406, label %387, label %.loopexit, !llvm.loop !47

.mv.ph:                                           ; preds = %383
  br label %407

407:                                              ; preds = %426, %.mv.ph
  %408 = phi i32 [ 0, %.mv.ph ], [ %427, %426 ]
  %409 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %384, i32 %408), !nosanitize !20
  %410 = extractvalue { i32, i1 } %409, 1, !nosanitize !20
  br i1 false, label %411, label %412, !prof !21, !nosanitize !20

411:                                              ; preds = %387, %407
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

412:                                              ; preds = %407
  %413 = extractvalue { i32, i1 } %409, 0, !nosanitize !20
  %414 = tail call i32 @llvm.umin.i32(i32 %413, i32 1073741824)
  %415 = load i32, ptr %49, align 4, !tbaa !46
  %416 = zext i32 %408 to i64
  %417 = getelementptr inbounds nuw i8, ptr %385, i64 %416
  %418 = zext nneg i32 %414 to i64
  %419 = tail call i64 @read(i32 noundef %415, ptr noundef %417, i64 noundef %418) #13
  %420 = trunc i64 %419 to i32
  %421 = icmp slt i32 %420, 1
  br i1 %421, label %429, label %422

422:                                              ; preds = %412
  %423 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %408, i32 %420), !nosanitize !20
  %424 = extractvalue { i32, i1 } %423, 1, !nosanitize !20
  br i1 %424, label %425, label %426, !prof !21, !nosanitize !20

425:                                              ; preds = %401, %422
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

426:                                              ; preds = %422
  %427 = extractvalue { i32, i1 } %423, 0, !nosanitize !20
  %428 = icmp ult i32 %427, %384
  br i1 %428, label %407, label %.loopexit, !llvm.loop !47

429:                                              ; preds = %391, %412
  %.lcssa4 = phi i32 [ %420, %412 ], [ %399, %391 ]
  %.lcssa1 = phi i32 [ %408, %412 ], [ %388, %391 ]
  %430 = icmp slt i32 %.lcssa4, 0
  br i1 %430, label %431, label %438

431:                                              ; preds = %429
  %432 = load i32, ptr %386, align 4, !tbaa !45
  %433 = icmp eq i32 %432, 11
  br i1 %433, label %434, label %439

434:                                              ; preds = %431
  store i32 1, ptr %48, align 4, !tbaa !17
  %435 = icmp eq i32 %.lcssa1, 0
  br i1 %435, label %436, label %443

436:                                              ; preds = %434
  %437 = load i32, ptr %386, align 4, !tbaa !45
  br label %439

438:                                              ; preds = %429
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %443

439:                                              ; preds = %436, %431
  %440 = phi i32 [ %437, %436 ], [ %432, %431 ]
  %441 = tail call ptr @strerror(i32 noundef %440) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %441) #13
  %442 = load i32, ptr %9, align 8, !tbaa !16
  br label %477

.loopexit:                                        ; preds = %404, %426
  %.lcssa7 = phi i32 [ %427, %426 ], [ %405, %404 ]
  br label %443

443:                                              ; preds = %.loopexit, %438, %434
  %444 = phi i32 [ %.lcssa1, %438 ], [ %.lcssa1, %434 ], [ %.lcssa7, %.loopexit ]
  %445 = load i32, ptr %40, align 8, !tbaa !34
  %446 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %445, i32 %444), !nosanitize !20
  %447 = extractvalue { i32, i1 } %446, 1, !nosanitize !20
  br i1 %447, label %448, label %449, !prof !21, !nosanitize !20

448:                                              ; preds = %443
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

449:                                              ; preds = %443
  %450 = extractvalue { i32, i1 } %446, 0, !nosanitize !20
  store i32 %450, ptr %40, align 8, !tbaa !34
  %451 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %451, ptr %46, align 8, !tbaa !35
  %452 = icmp eq i32 %450, 0
  br i1 %452, label %453, label %457

453:                                              ; preds = %449, %380
  %454 = load i32, ptr %48, align 4, !tbaa !17
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %477

456:                                              ; preds = %453
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %477

457:                                              ; preds = %449, %374
  %458 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %459 = load i32, ptr %43, align 8, !tbaa !48
  %460 = icmp ult i32 %459, %372
  br i1 %460, label %461, label %462

461:                                              ; preds = %457
  store i32 0, ptr %50, align 4, !tbaa !33
  br label %462

462:                                              ; preds = %461, %457
  switch i32 %458, label %473 [
    i32 -2, label %463
    i32 2, label %463
    i32 -4, label %464
    i32 -3, label %465
  ]

463:                                              ; preds = %462, %462
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %477

464:                                              ; preds = %462
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %477

465:                                              ; preds = %462
  %466 = load i32, ptr %50, align 4, !tbaa !33
  %467 = icmp eq i32 %466, 1
  br i1 %467, label %468, label %469

468:                                              ; preds = %465
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %477

469:                                              ; preds = %465
  %470 = load ptr, ptr %51, align 8, !tbaa !50
  %471 = icmp eq ptr %470, null
  %472 = select i1 %471, ptr @.str.6, ptr %470
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %472) #13
  br label %477

473:                                              ; preds = %462
  %474 = icmp ne i32 %459, 0
  %475 = icmp ne i32 %458, 1
  %476 = select i1 %474, i1 %475, i1 false
  br i1 %476, label %374, label %477, !llvm.loop !51

477:                                              ; preds = %473, %469, %468, %464, %463, %456, %453, %439, %378
  %478 = phi i32 [ %375, %453 ], [ %375, %456 ], [ %458, %463 ], [ -4, %464 ], [ 0, %468 ], [ -3, %469 ], [ %442, %439 ], [ %458, %473 ], [ %379, %378 ]
  %479 = load i32, ptr %43, align 8, !tbaa !48
  %480 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %372, i32 %479), !nosanitize !20
  %481 = extractvalue { i32, i1 } %480, 1, !nosanitize !20
  br i1 %481, label %482, label %483, !prof !21, !nosanitize !20

482:                                              ; preds = %477
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

483:                                              ; preds = %477
  %484 = extractvalue { i32, i1 } %480, 0, !nosanitize !20
  store i32 %484, ptr %0, align 8, !tbaa !19
  %485 = load ptr, ptr %45, align 8, !tbaa !49
  %486 = zext i32 %484 to i64
  %487 = sub nsw i64 0, %486
  %488 = getelementptr inbounds i8, ptr %485, i64 %487
  store ptr %488, ptr %37, align 8, !tbaa !22
  switch i32 %478, label %1169 [
    i32 1, label %489
    i32 0, label %491
  ]

489:                                              ; preds = %483
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %491

490:                                              ; preds = %88
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1169

491:                                              ; preds = %489, %483, %323, %317
  %492 = load i32, ptr %0, align 8, !tbaa !19
  br label %493

493:                                              ; preds = %491, %319
  %494 = phi i32 [ %492, %491 ], [ %322, %319 ]
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %503

496:                                              ; preds = %493
  %497 = load i32, ptr %39, align 8, !tbaa !24
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %502, label %499

499:                                              ; preds = %496
  %500 = load i32, ptr %40, align 8, !tbaa !34
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %503, label %502

502:                                              ; preds = %499, %496
  br label %88, !llvm.loop !52

503:                                              ; preds = %499, %493, %368, %323
  %504 = load i64, ptr %33, align 8, !tbaa !18
  br label %505

505:                                              ; preds = %503, %79
  %506 = phi i64 [ %504, %503 ], [ %80, %79 ]
  %507 = icmp eq i64 %506, 0
  br i1 %507, label %508, label %55, !llvm.loop !53

508:                                              ; preds = %505, %84, %32
  %509 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %510 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %511 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %512 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %513 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %514 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %515 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %516 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %517 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %518 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %519 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %520 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %521 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %522 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %523 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %524 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %525 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %526 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %527

527:                                              ; preds = %1147, %508
  %528 = phi ptr [ %2, %508 ], [ %1148, %1147 ]
  %529 = phi i64 [ 1, %508 ], [ %1149, %1147 ]
  %530 = phi i64 [ 0, %508 ], [ %1150, %1147 ]
  %531 = call i64 @llvm.umin.i64(i64 %529, i64 4294967295)
  %532 = trunc nuw i64 %531 to i32
  %533 = load i32, ptr %0, align 8, !tbaa !19
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %550, label %535

535:                                              ; preds = %527
  %536 = call i32 @llvm.umin.i32(i32 %533, i32 %532)
  %537 = load ptr, ptr %509, align 8, !tbaa !22
  %538 = zext i32 %536 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %528, ptr align 1 %537, i64 %538, i1 false)
  %539 = load ptr, ptr %509, align 8, !tbaa !22
  %540 = getelementptr inbounds nuw i8, ptr %539, i64 %538
  store ptr %540, ptr %509, align 8, !tbaa !22
  %541 = load i32, ptr %0, align 8, !tbaa !19
  %542 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %541, i32 %536), !nosanitize !20
  %543 = extractvalue { i32, i1 } %542, 1, !nosanitize !20
  br i1 %543, label %544, label %545, !prof !21, !nosanitize !20

544:                                              ; preds = %535
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

545:                                              ; preds = %535
  %546 = extractvalue { i32, i1 } %542, 0, !nosanitize !20
  store i32 %546, ptr %0, align 8, !tbaa !19
  %547 = load i32, ptr %9, align 8, !tbaa !16
  %548 = icmp ne i32 %547, 0
  %549 = sext i1 %548 to i32
  br label %1128

550:                                              ; preds = %527
  %551 = load i32, ptr %510, align 8, !tbaa !24
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %556, label %553

553:                                              ; preds = %550
  %554 = load i32, ptr %511, align 8, !tbaa !25
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %1160, label %556

556:                                              ; preds = %553, %550
  %557 = load i32, ptr %512, align 8, !tbaa !26
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %563, label %559

559:                                              ; preds = %556
  %560 = load i32, ptr %513, align 8, !tbaa !27
  %561 = shl i32 %560, 1
  %562 = icmp ugt i32 %561, %532
  br i1 %562, label %563, label %964

563:                                              ; preds = %559, %556
  br label %564

564:                                              ; preds = %958, %563
  %565 = phi i32 [ %959, %958 ], [ %557, %563 ]
  switch i32 %565, label %946 [
    i32 0, label %566
    i32 1, label %802
    i32 2, label %846
  ]

566:                                              ; preds = %564
  %567 = load i32, ptr %513, align 8, !tbaa !27
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %569, label %586

569:                                              ; preds = %566
  %570 = load i32, ptr %524, align 4, !tbaa !28
  %571 = zext i32 %570 to i64
  %572 = call noalias ptr @malloc(i64 noundef %571) #16
  store ptr %572, ptr %517, align 8, !tbaa !29
  %573 = shl i32 %570, 1
  %574 = zext i32 %573 to i64
  %575 = call noalias ptr @malloc(i64 noundef %574) #16
  store ptr %575, ptr %523, align 8, !tbaa !30
  %576 = icmp eq ptr %572, null
  %577 = icmp eq ptr %575, null
  %578 = or i1 %576, %577
  br i1 %578, label %579, label %580

579:                                              ; preds = %569
  call void @free(ptr noundef %575) #13
  call void @free(ptr noundef %572) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %960

580:                                              ; preds = %569
  store i32 %570, ptr %513, align 8, !tbaa !27
  store i32 0, ptr %511, align 8, !tbaa !25
  store ptr null, ptr %516, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %525, i8 0, i64 24, i1 false)
  %581 = call i32 @inflateInit2_(ptr noundef nonnull %516, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %586, label %583

583:                                              ; preds = %580
  %584 = load ptr, ptr %523, align 8, !tbaa !30
  call void @free(ptr noundef %584) #13
  %585 = load ptr, ptr %517, align 8, !tbaa !29
  call void @free(ptr noundef %585) #13
  store i32 0, ptr %513, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %960

586:                                              ; preds = %580, %566
  %587 = load i32, ptr %526, align 8, !tbaa !32
  %588 = icmp eq i32 %587, -1
  br i1 %588, label %592, label %589

589:                                              ; preds = %586
  %590 = load i32, ptr %520, align 4, !tbaa !33
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %592, label %597

592:                                              ; preds = %589, %586
  %593 = call i32 @inflateReset(ptr noundef nonnull %516) #13
  store i32 2, ptr %512, align 8, !tbaa !26
  %594 = load i32, ptr %520, align 4, !tbaa !33
  %595 = icmp ne i32 %594, -1
  %596 = zext i1 %595 to i32
  store i32 %596, ptr %520, align 4, !tbaa !33
  store i32 0, ptr %526, align 8, !tbaa !32
  br label %799

597:                                              ; preds = %589
  %598 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %598, label %960 [
    i32 0, label %599
    i32 -5, label %599
  ]

599:                                              ; preds = %597, %597
  %600 = load i32, ptr %510, align 8, !tbaa !24
  %601 = icmp eq i32 %600, 0
  %602 = load i32, ptr %511, align 8, !tbaa !34
  br i1 %601, label %603, label %767

603:                                              ; preds = %599
  %604 = icmp eq i32 %602, 0
  br i1 %604, label %711, label %605

605:                                              ; preds = %603
  %606 = load ptr, ptr %517, align 8, !tbaa !29
  %607 = load ptr, ptr %516, align 8, !tbaa !35
  %608 = icmp eq ptr %607, %606
  br i1 %608, label %711, label %609

609:                                              ; preds = %605
  %610 = ptrtoint ptr %607 to i64
  %611 = ptrtoint ptr %606 to i64
  %612 = zext i32 %602 to i64
  %613 = icmp ult i32 %602, 4
  %614 = sub i64 %611, %610
  %615 = icmp ult i64 %614, 32
  %616 = or i1 %613, %615
  br i1 %616, label %656, label %617

617:                                              ; preds = %609
  %618 = icmp ult i32 %602, 32
  br i1 %618, label %640, label %619

619:                                              ; preds = %617
  %620 = and i64 %612, 4294967264
  br label %621

621:                                              ; preds = %621, %619
  %622 = phi i64 [ 0, %619 ], [ %629, %621 ]
  %623 = getelementptr i8, ptr %606, i64 %622
  %624 = getelementptr i8, ptr %607, i64 %622
  %625 = getelementptr i8, ptr %624, i64 16
  %626 = load <16 x i8>, ptr %624, align 1, !tbaa !36
  %627 = load <16 x i8>, ptr %625, align 1, !tbaa !36
  %628 = getelementptr i8, ptr %623, i64 16
  store <16 x i8> %626, ptr %623, align 1, !tbaa !36
  store <16 x i8> %627, ptr %628, align 1, !tbaa !36
  %629 = add nuw i64 %622, 32
  %630 = icmp eq i64 %629, %620
  br i1 %630, label %631, label %621, !llvm.loop !74

631:                                              ; preds = %621
  %632 = icmp eq i64 %620, %612
  br i1 %632, label %709, label %633

633:                                              ; preds = %631
  %634 = getelementptr i8, ptr %606, i64 %620
  %635 = getelementptr i8, ptr %607, i64 %620
  %636 = trunc nuw i64 %620 to i32
  %637 = sub i32 %602, %636
  %638 = and i64 %612, 28
  %639 = icmp eq i64 %638, 0
  br i1 %639, label %656, label %640

640:                                              ; preds = %633, %617
  %641 = phi i64 [ %620, %633 ], [ 0, %617 ]
  %642 = and i64 %612, 4294967292
  %643 = getelementptr i8, ptr %606, i64 %642
  %644 = getelementptr i8, ptr %607, i64 %642
  %645 = trunc nuw i64 %642 to i32
  %646 = sub i32 %602, %645
  br label %647

647:                                              ; preds = %647, %640
  %648 = phi i64 [ %641, %640 ], [ %652, %647 ]
  %649 = getelementptr i8, ptr %606, i64 %648
  %650 = getelementptr i8, ptr %607, i64 %648
  %651 = load <4 x i8>, ptr %650, align 1, !tbaa !36
  store <4 x i8> %651, ptr %649, align 1, !tbaa !36
  %652 = add nuw i64 %648, 4
  %653 = icmp eq i64 %652, %642
  br i1 %653, label %654, label %647, !llvm.loop !75

654:                                              ; preds = %647
  %655 = icmp eq i64 %642, %612
  br i1 %655, label %709, label %656

656:                                              ; preds = %654, %633, %609
  %657 = phi ptr [ %606, %609 ], [ %634, %633 ], [ %643, %654 ]
  %658 = phi ptr [ %607, %609 ], [ %635, %633 ], [ %644, %654 ]
  %659 = phi i32 [ %602, %609 ], [ %637, %633 ], [ %646, %654 ]
  %660 = add i32 %659, -1
  %661 = and i32 %659, 7
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %674, label %663

663:                                              ; preds = %663, %656
  %664 = phi ptr [ %670, %663 ], [ %657, %656 ]
  %665 = phi ptr [ %671, %663 ], [ %658, %656 ]
  %666 = phi i32 [ %669, %663 ], [ %659, %656 ]
  %667 = phi i32 [ %672, %663 ], [ 0, %656 ]
  %668 = load i8, ptr %665, align 1, !tbaa !36
  store i8 %668, ptr %664, align 1, !tbaa !36
  %669 = add i32 %666, -1
  %670 = getelementptr inbounds nuw i8, ptr %664, i64 1
  %671 = getelementptr inbounds nuw i8, ptr %665, i64 1
  %672 = add i32 %667, 1
  %673 = icmp eq i32 %672, %661
  br i1 %673, label %674, label %663, !llvm.loop !76

674:                                              ; preds = %663, %656
  %675 = phi ptr [ %657, %656 ], [ %670, %663 ]
  %676 = phi ptr [ %658, %656 ], [ %671, %663 ]
  %677 = phi i32 [ %659, %656 ], [ %669, %663 ]
  %678 = icmp ult i32 %660, 7
  br i1 %678, label %709, label %679

679:                                              ; preds = %679, %674
  %680 = phi ptr [ %706, %679 ], [ %675, %674 ]
  %681 = phi ptr [ %707, %679 ], [ %676, %674 ]
  %682 = phi i32 [ %705, %679 ], [ %677, %674 ]
  %683 = load i8, ptr %681, align 1, !tbaa !36
  store i8 %683, ptr %680, align 1, !tbaa !36
  %684 = getelementptr inbounds nuw i8, ptr %680, i64 1
  %685 = getelementptr inbounds nuw i8, ptr %681, i64 1
  %686 = load i8, ptr %685, align 1, !tbaa !36
  store i8 %686, ptr %684, align 1, !tbaa !36
  %687 = getelementptr inbounds nuw i8, ptr %680, i64 2
  %688 = getelementptr inbounds nuw i8, ptr %681, i64 2
  %689 = load i8, ptr %688, align 1, !tbaa !36
  store i8 %689, ptr %687, align 1, !tbaa !36
  %690 = getelementptr inbounds nuw i8, ptr %680, i64 3
  %691 = getelementptr inbounds nuw i8, ptr %681, i64 3
  %692 = load i8, ptr %691, align 1, !tbaa !36
  store i8 %692, ptr %690, align 1, !tbaa !36
  %693 = getelementptr inbounds nuw i8, ptr %680, i64 4
  %694 = getelementptr inbounds nuw i8, ptr %681, i64 4
  %695 = load i8, ptr %694, align 1, !tbaa !36
  store i8 %695, ptr %693, align 1, !tbaa !36
  %696 = getelementptr inbounds nuw i8, ptr %680, i64 5
  %697 = getelementptr inbounds nuw i8, ptr %681, i64 5
  %698 = load i8, ptr %697, align 1, !tbaa !36
  store i8 %698, ptr %696, align 1, !tbaa !36
  %699 = getelementptr inbounds nuw i8, ptr %680, i64 6
  %700 = getelementptr inbounds nuw i8, ptr %681, i64 6
  %701 = load i8, ptr %700, align 1, !tbaa !36
  store i8 %701, ptr %699, align 1, !tbaa !36
  %702 = getelementptr inbounds nuw i8, ptr %680, i64 7
  %703 = getelementptr inbounds nuw i8, ptr %681, i64 7
  %704 = load i8, ptr %703, align 1, !tbaa !36
  store i8 %704, ptr %702, align 1, !tbaa !36
  %705 = add i32 %682, -8
  %706 = getelementptr inbounds nuw i8, ptr %680, i64 8
  %707 = getelementptr inbounds nuw i8, ptr %681, i64 8
  %708 = icmp eq i32 %705, 0
  br i1 %708, label %709, label %679, !llvm.loop !77

709:                                              ; preds = %679, %674, %654, %631
  %710 = load i32, ptr %511, align 8, !tbaa !34
  br label %711

711:                                              ; preds = %709, %605, %603
  %712 = phi i32 [ %710, %709 ], [ %602, %605 ], [ 0, %603 ]
  %713 = load i32, ptr %513, align 8, !tbaa !27
  %714 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %713, i32 %712), !nosanitize !20
  %715 = extractvalue { i32, i1 } %714, 1, !nosanitize !20
  br i1 %715, label %716, label %717, !prof !21, !nosanitize !20

716:                                              ; preds = %711
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

717:                                              ; preds = %711
  %718 = extractvalue { i32, i1 } %714, 0, !nosanitize !20
  %719 = load ptr, ptr %517, align 8, !tbaa !29
  %720 = zext i32 %712 to i64
  %721 = getelementptr inbounds nuw i8, ptr %719, i64 %720
  store i32 0, ptr %518, align 4, !tbaa !17
  %722 = tail call ptr @__errno_location() #17
  store i32 0, ptr %722, align 4, !tbaa !45
  br label %723

723:                                              ; preds = %742, %717
  %724 = phi i32 [ 0, %717 ], [ %743, %742 ]
  %725 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %718, i32 %724), !nosanitize !20
  %726 = extractvalue { i32, i1 } %725, 1, !nosanitize !20
  br i1 %726, label %727, label %728, !prof !21, !nosanitize !20

727:                                              ; preds = %723
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

728:                                              ; preds = %723
  %729 = extractvalue { i32, i1 } %725, 0, !nosanitize !20
  %730 = call i32 @llvm.umin.i32(i32 %729, i32 1073741824)
  %731 = load i32, ptr %519, align 4, !tbaa !46
  %732 = zext i32 %724 to i64
  %733 = getelementptr inbounds nuw i8, ptr %721, i64 %732
  %734 = zext nneg i32 %730 to i64
  %735 = call i64 @read(i32 noundef %731, ptr noundef %733, i64 noundef %734) #13
  %736 = trunc i64 %735 to i32
  %737 = icmp slt i32 %736, 1
  br i1 %737, label %745, label %738

738:                                              ; preds = %728
  %739 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %724, i32 %736), !nosanitize !20
  %740 = extractvalue { i32, i1 } %739, 1, !nosanitize !20
  br i1 %740, label %741, label %742, !prof !21, !nosanitize !20

741:                                              ; preds = %738
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

742:                                              ; preds = %738
  %743 = extractvalue { i32, i1 } %739, 0, !nosanitize !20
  %744 = icmp ult i32 %743, %718
  br i1 %744, label %723, label %758, !llvm.loop !47

745:                                              ; preds = %728
  %746 = icmp slt i32 %736, 0
  br i1 %746, label %747, label %754

747:                                              ; preds = %745
  %748 = load i32, ptr %722, align 4, !tbaa !45
  %749 = icmp eq i32 %748, 11
  br i1 %749, label %750, label %755

750:                                              ; preds = %747
  store i32 1, ptr %518, align 4, !tbaa !17
  %751 = icmp eq i32 %724, 0
  br i1 %751, label %752, label %758

752:                                              ; preds = %750
  %753 = load i32, ptr %722, align 4, !tbaa !45
  br label %755

754:                                              ; preds = %745
  store i32 1, ptr %510, align 8, !tbaa !24
  br label %758

755:                                              ; preds = %752, %747
  %756 = phi i32 [ %753, %752 ], [ %748, %747 ]
  %757 = call ptr @strerror(i32 noundef %756) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %757) #13
  br label %960

758:                                              ; preds = %754, %750, %742
  %759 = phi i32 [ %724, %754 ], [ %724, %750 ], [ %743, %742 ]
  %760 = load i32, ptr %511, align 8, !tbaa !34
  %761 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %760, i32 %759), !nosanitize !20
  %762 = extractvalue { i32, i1 } %761, 1, !nosanitize !20
  br i1 %762, label %763, label %764, !prof !21, !nosanitize !20

763:                                              ; preds = %758
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

764:                                              ; preds = %758
  %765 = extractvalue { i32, i1 } %761, 0, !nosanitize !20
  store i32 %765, ptr %511, align 8, !tbaa !34
  %766 = load ptr, ptr %517, align 8, !tbaa !29
  store ptr %766, ptr %516, align 8, !tbaa !35
  br label %767

767:                                              ; preds = %764, %599
  %768 = phi i32 [ %765, %764 ], [ %602, %599 ]
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %799, label %770

770:                                              ; preds = %767
  %771 = load i32, ptr %518, align 4, !tbaa !17
  %772 = icmp ne i32 %771, 0
  %773 = icmp ult i32 %768, 4
  %774 = and i1 %773, %772
  br i1 %774, label %799, label %775

775:                                              ; preds = %770
  %776 = icmp ugt i32 %768, 3
  %777 = load ptr, ptr %516, align 8, !tbaa !35
  br i1 %776, label %778, label %795

778:                                              ; preds = %775
  %779 = load i8, ptr %777, align 1, !tbaa !36
  %780 = icmp eq i8 %779, 31
  br i1 %780, label %781, label %795

781:                                              ; preds = %778
  %782 = getelementptr inbounds nuw i8, ptr %777, i64 1
  %783 = load i8, ptr %782, align 1, !tbaa !36
  %784 = icmp eq i8 %783, -117
  br i1 %784, label %785, label %795

785:                                              ; preds = %781
  %786 = getelementptr inbounds nuw i8, ptr %777, i64 2
  %787 = load i8, ptr %786, align 1, !tbaa !36
  %788 = icmp eq i8 %787, 8
  br i1 %788, label %789, label %795

789:                                              ; preds = %785
  %790 = getelementptr inbounds nuw i8, ptr %777, i64 3
  %791 = load i8, ptr %790, align 1, !tbaa !36
  %792 = icmp ult i8 %791, 32
  br i1 %792, label %793, label %795

793:                                              ; preds = %789
  %794 = call i32 @inflateReset(ptr noundef nonnull %516) #13
  store i32 2, ptr %512, align 8, !tbaa !26
  store i32 1, ptr %520, align 4, !tbaa !33
  store i32 0, ptr %526, align 8, !tbaa !32
  br label %947

795:                                              ; preds = %789, %785, %781, %778, %775
  %796 = load ptr, ptr %523, align 8, !tbaa !30
  store ptr %796, ptr %509, align 8, !tbaa !22
  %797 = zext i32 %768 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %796, ptr align 1 %777, i64 %797, i1 false)
  %798 = load i32, ptr %511, align 8, !tbaa !34
  store i32 %798, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %511, align 8, !tbaa !34
  store i32 1, ptr %512, align 8, !tbaa !26
  br label %949

799:                                              ; preds = %770, %767, %592
  %800 = load i32, ptr %512, align 8, !tbaa !26
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %1147, label %947

802:                                              ; preds = %564
  %803 = load ptr, ptr %523, align 8, !tbaa !30
  %804 = load i32, ptr %513, align 8, !tbaa !27
  %805 = shl i32 %804, 1
  store i32 0, ptr %518, align 4, !tbaa !17
  %806 = tail call ptr @__errno_location() #17
  store i32 0, ptr %806, align 4, !tbaa !45
  store i32 0, ptr %0, align 4, !tbaa !45
  br label %807

807:                                              ; preds = %827, %802
  %808 = phi i32 [ %828, %827 ], [ 0, %802 ]
  %809 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %805, i32 %808), !nosanitize !20
  %810 = extractvalue { i32, i1 } %809, 1, !nosanitize !20
  br i1 false, label %811, label %812, !prof !21, !nosanitize !20

811:                                              ; preds = %807
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

812:                                              ; preds = %807
  %813 = extractvalue { i32, i1 } %809, 0, !nosanitize !20
  %814 = call i32 @llvm.umin.i32(i32 %813, i32 1073741824)
  %815 = load i32, ptr %519, align 4, !tbaa !46
  %816 = zext i32 %808 to i64
  %817 = getelementptr inbounds nuw i8, ptr %803, i64 %816
  %818 = zext nneg i32 %814 to i64
  %819 = call i64 @read(i32 noundef %815, ptr noundef %817, i64 noundef %818) #13
  %820 = trunc i64 %819 to i32
  %821 = icmp slt i32 %820, 1
  br i1 %821, label %830, label %822

822:                                              ; preds = %812
  %823 = load i32, ptr %0, align 4, !tbaa !45
  %824 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %823, i32 %820), !nosanitize !20
  %825 = extractvalue { i32, i1 } %824, 1, !nosanitize !20
  br i1 %825, label %826, label %827, !prof !21, !nosanitize !20

826:                                              ; preds = %822
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

827:                                              ; preds = %822
  %828 = extractvalue { i32, i1 } %824, 0, !nosanitize !20
  store i32 %828, ptr %0, align 4, !tbaa !45
  %829 = icmp ult i32 %828, %805
  br i1 %829, label %807, label %844, !llvm.loop !47

830:                                              ; preds = %812
  %831 = icmp slt i32 %820, 0
  br i1 %831, label %832, label %840

832:                                              ; preds = %830
  %833 = load i32, ptr %806, align 4, !tbaa !45
  %834 = icmp eq i32 %833, 11
  br i1 %834, label %835, label %841

835:                                              ; preds = %832
  store i32 1, ptr %518, align 4, !tbaa !17
  %836 = load i32, ptr %0, align 4, !tbaa !45
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %838, label %844

838:                                              ; preds = %835
  %839 = load i32, ptr %806, align 4, !tbaa !45
  br label %841

840:                                              ; preds = %830
  store i32 1, ptr %510, align 8, !tbaa !24
  br label %844

841:                                              ; preds = %838, %832
  %842 = phi i32 [ %839, %838 ], [ %833, %832 ]
  %843 = call ptr @strerror(i32 noundef %842) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %843) #13
  br label %960

844:                                              ; preds = %840, %835, %827
  %845 = load ptr, ptr %523, align 8, !tbaa !30
  store ptr %845, ptr %509, align 8, !tbaa !22
  br label %1147

846:                                              ; preds = %564
  %847 = load i32, ptr %513, align 8, !tbaa !27
  %848 = shl i32 %847, 1
  store i32 %848, ptr %514, align 8, !tbaa !48
  %849 = load ptr, ptr %523, align 8, !tbaa !30
  store ptr %849, ptr %515, align 8, !tbaa !49
  br label %850

850:                                              ; preds = %929, %846
  %851 = phi i32 [ 0, %846 ], [ %914, %929 ]
  %852 = load i32, ptr %511, align 8, !tbaa !34
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %854, label %913

854:                                              ; preds = %850
  %855 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %855, label %933 [
    i32 0, label %856
    i32 -5, label %856
  ]

856:                                              ; preds = %854, %854
  %857 = load i32, ptr %510, align 8, !tbaa !24
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %859, label %909

859:                                              ; preds = %856
  %860 = load i32, ptr %513, align 8, !tbaa !27
  %861 = load ptr, ptr %517, align 8, !tbaa !29
  store i32 0, ptr %518, align 4, !tbaa !17
  %862 = tail call ptr @__errno_location() #17
  store i32 0, ptr %862, align 4, !tbaa !45
  br label %863

863:                                              ; preds = %882, %859
  %864 = phi i32 [ 0, %859 ], [ %883, %882 ]
  %865 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %860, i32 %864), !nosanitize !20
  %866 = extractvalue { i32, i1 } %865, 1, !nosanitize !20
  br i1 false, label %867, label %868, !prof !21, !nosanitize !20

867:                                              ; preds = %863
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

868:                                              ; preds = %863
  %869 = extractvalue { i32, i1 } %865, 0, !nosanitize !20
  %870 = call i32 @llvm.umin.i32(i32 %869, i32 1073741824)
  %871 = load i32, ptr %519, align 4, !tbaa !46
  %872 = zext i32 %864 to i64
  %873 = getelementptr inbounds nuw i8, ptr %861, i64 %872
  %874 = zext nneg i32 %870 to i64
  %875 = call i64 @read(i32 noundef %871, ptr noundef %873, i64 noundef %874) #13
  %876 = trunc i64 %875 to i32
  %877 = icmp slt i32 %876, 1
  br i1 %877, label %885, label %878

878:                                              ; preds = %868
  %879 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %864, i32 %876), !nosanitize !20
  %880 = extractvalue { i32, i1 } %879, 1, !nosanitize !20
  br i1 %880, label %881, label %882, !prof !21, !nosanitize !20

881:                                              ; preds = %878
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

882:                                              ; preds = %878
  %883 = extractvalue { i32, i1 } %879, 0, !nosanitize !20
  %884 = icmp ult i32 %883, %860
  br i1 %884, label %863, label %899, !llvm.loop !47

885:                                              ; preds = %868
  %886 = icmp slt i32 %876, 0
  br i1 %886, label %887, label %894

887:                                              ; preds = %885
  %888 = load i32, ptr %862, align 4, !tbaa !45
  %889 = icmp eq i32 %888, 11
  br i1 %889, label %890, label %895

890:                                              ; preds = %887
  store i32 1, ptr %518, align 4, !tbaa !17
  %891 = icmp eq i32 %864, 0
  br i1 %891, label %892, label %899

892:                                              ; preds = %890
  %893 = load i32, ptr %862, align 4, !tbaa !45
  br label %895

894:                                              ; preds = %885
  store i32 1, ptr %510, align 8, !tbaa !24
  br label %899

895:                                              ; preds = %892, %887
  %896 = phi i32 [ %893, %892 ], [ %888, %887 ]
  %897 = call ptr @strerror(i32 noundef %896) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %897) #13
  %898 = load i32, ptr %9, align 8, !tbaa !16
  br label %933

899:                                              ; preds = %894, %890, %882
  %900 = phi i32 [ %864, %894 ], [ %864, %890 ], [ %883, %882 ]
  %901 = load i32, ptr %511, align 8, !tbaa !34
  %902 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %901, i32 %900), !nosanitize !20
  %903 = extractvalue { i32, i1 } %902, 1, !nosanitize !20
  br i1 %903, label %904, label %905, !prof !21, !nosanitize !20

904:                                              ; preds = %899
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

905:                                              ; preds = %899
  %906 = extractvalue { i32, i1 } %902, 0, !nosanitize !20
  store i32 %906, ptr %511, align 8, !tbaa !34
  %907 = load ptr, ptr %517, align 8, !tbaa !29
  store ptr %907, ptr %516, align 8, !tbaa !35
  %908 = icmp eq i32 %906, 0
  br i1 %908, label %909, label %913

909:                                              ; preds = %905, %856
  %910 = load i32, ptr %518, align 4, !tbaa !17
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %912, label %933

912:                                              ; preds = %909
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %933

913:                                              ; preds = %905, %850
  %914 = call i32 @inflate(ptr noundef nonnull %516, i32 noundef 0) #13
  %915 = load i32, ptr %514, align 8, !tbaa !48
  %916 = icmp ult i32 %915, %848
  br i1 %916, label %917, label %918

917:                                              ; preds = %913
  store i32 0, ptr %520, align 4, !tbaa !33
  br label %918

918:                                              ; preds = %917, %913
  switch i32 %914, label %929 [
    i32 -2, label %919
    i32 2, label %919
    i32 -4, label %920
    i32 -3, label %921
  ]

919:                                              ; preds = %918, %918
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %933

920:                                              ; preds = %918
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %933

921:                                              ; preds = %918
  %922 = load i32, ptr %520, align 4, !tbaa !33
  %923 = icmp eq i32 %922, 1
  br i1 %923, label %924, label %925

924:                                              ; preds = %921
  store i32 0, ptr %511, align 8, !tbaa !34
  store i32 1, ptr %510, align 8, !tbaa !24
  store i32 0, ptr %512, align 8, !tbaa !26
  br label %933

925:                                              ; preds = %921
  %926 = load ptr, ptr %521, align 8, !tbaa !50
  %927 = icmp eq ptr %926, null
  %928 = select i1 %927, ptr @.str.6, ptr %926
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %928) #13
  br label %933

929:                                              ; preds = %918
  %930 = icmp ne i32 %915, 0
  %931 = icmp ne i32 %914, 1
  %932 = select i1 %930, i1 %931, i1 false
  br i1 %932, label %850, label %933, !llvm.loop !51

933:                                              ; preds = %929, %925, %924, %920, %919, %912, %909, %895, %854
  %934 = phi i32 [ %851, %909 ], [ %851, %912 ], [ %914, %919 ], [ -4, %920 ], [ 0, %924 ], [ -3, %925 ], [ %898, %895 ], [ %855, %854 ], [ %914, %929 ]
  %935 = load i32, ptr %514, align 8, !tbaa !48
  %936 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %848, i32 %935), !nosanitize !20
  %937 = extractvalue { i32, i1 } %936, 1, !nosanitize !20
  br i1 %937, label %938, label %939, !prof !21, !nosanitize !20

938:                                              ; preds = %933
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

939:                                              ; preds = %933
  %940 = extractvalue { i32, i1 } %936, 0, !nosanitize !20
  store i32 %940, ptr %0, align 8, !tbaa !19
  %941 = load ptr, ptr %515, align 8, !tbaa !49
  %942 = zext i32 %940 to i64
  %943 = sub nsw i64 0, %942
  %944 = getelementptr inbounds i8, ptr %941, i64 %943
  store ptr %944, ptr %509, align 8, !tbaa !22
  switch i32 %934, label %960 [
    i32 1, label %945
    i32 0, label %947
  ]

945:                                              ; preds = %939
  store i32 0, ptr %520, align 4, !tbaa !33
  store i32 0, ptr %512, align 8, !tbaa !26
  br label %947

946:                                              ; preds = %564
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %960

947:                                              ; preds = %945, %939, %799, %793
  %948 = load i32, ptr %0, align 8, !tbaa !19
  br label %949

949:                                              ; preds = %947, %795
  %950 = phi i32 [ %948, %947 ], [ %798, %795 ]
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %952, label %1147

952:                                              ; preds = %949
  %953 = load i32, ptr %510, align 8, !tbaa !24
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %958, label %955

955:                                              ; preds = %952
  %956 = load i32, ptr %511, align 8, !tbaa !34
  %957 = icmp eq i32 %956, 0
  br i1 %957, label %1147, label %958

958:                                              ; preds = %955, %952
  %959 = load i32, ptr %512, align 8, !tbaa !26
  br label %564, !llvm.loop !52

960:                                              ; preds = %946, %939, %841, %755, %597, %583, %579
  %961 = load i32, ptr %0, align 8, !tbaa !19
  %962 = icmp eq i32 %961, 0
  %963 = sext i1 %962 to i32
  br label %1147

964:                                              ; preds = %559
  %965 = icmp eq i32 %557, 1
  br i1 %965, label %966, label %1023

966:                                              ; preds = %964
  store i32 0, ptr %518, align 4, !tbaa !17
  %967 = tail call ptr @__errno_location() #17
  store i32 0, ptr %967, align 4, !tbaa !45
  %mv.h18 = icmp sge i64 %529, 0
  %mv.h19 = icmp sle i64 %529, 2147483648
  %mv.h20 = and i1 %mv.h18, %mv.h19
  %mv.h.fr21 = freeze i1 %mv.h20
  br i1 %mv.h.fr21, label %.mv.ph22.mv.fast, label %.mv.ph22

.mv.ph22.mv.fast:                                 ; preds = %966
  br label %968

968:                                              ; preds = %985, %.mv.ph22.mv.fast
  %969 = phi i32 [ 0, %.mv.ph22.mv.fast ], [ %986, %985 ]
  %970 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %532, i32 %969), !nosanitize !20
  %971 = extractvalue { i32, i1 } %970, 1, !nosanitize !20
  br i1 false, label %992, label %972, !prof !21, !nosanitize !20

972:                                              ; preds = %968
  %973 = extractvalue { i32, i1 } %970, 0, !nosanitize !20
  %974 = call i32 @llvm.umin.i32(i32 %973, i32 1073741824)
  %975 = load i32, ptr %519, align 4, !tbaa !46
  %976 = zext i32 %969 to i64
  %977 = getelementptr inbounds nuw i8, ptr %528, i64 %976
  %978 = zext nneg i32 %974 to i64
  %979 = call i64 @read(i32 noundef %975, ptr noundef %977, i64 noundef %978) #13
  %980 = trunc i64 %979 to i32
  %981 = icmp slt i32 %980, 1
  br i1 %981, label %1010, label %982

982:                                              ; preds = %972
  %983 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %969, i32 %980), !nosanitize !20
  %984 = extractvalue { i32, i1 } %983, 1, !nosanitize !20
  br i1 false, label %1006, label %985, !prof !21, !nosanitize !20

985:                                              ; preds = %982
  %986 = extractvalue { i32, i1 } %983, 0, !nosanitize !20
  %987 = icmp ult i32 %986, %532
  br i1 %987, label %968, label %1126, !llvm.loop !47

.mv.ph22:                                         ; preds = %966
  br label %988

988:                                              ; preds = %1007, %.mv.ph22
  %989 = phi i32 [ 0, %.mv.ph22 ], [ %1008, %1007 ]
  %990 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %532, i32 %989), !nosanitize !20
  %991 = extractvalue { i32, i1 } %990, 1, !nosanitize !20
  br i1 false, label %992, label %993, !prof !21, !nosanitize !20

992:                                              ; preds = %968, %988
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

993:                                              ; preds = %988
  %994 = extractvalue { i32, i1 } %990, 0, !nosanitize !20
  %995 = call i32 @llvm.umin.i32(i32 %994, i32 1073741824)
  %996 = load i32, ptr %519, align 4, !tbaa !46
  %997 = zext i32 %989 to i64
  %998 = getelementptr inbounds nuw i8, ptr %528, i64 %997
  %999 = zext nneg i32 %995 to i64
  %1000 = call i64 @read(i32 noundef %996, ptr noundef %998, i64 noundef %999) #13
  %1001 = trunc i64 %1000 to i32
  %1002 = icmp slt i32 %1001, 1
  br i1 %1002, label %1010, label %1003

1003:                                             ; preds = %993
  %1004 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %989, i32 %1001), !nosanitize !20
  %1005 = extractvalue { i32, i1 } %1004, 1, !nosanitize !20
  br i1 %1005, label %1006, label %1007, !prof !21, !nosanitize !20

1006:                                             ; preds = %982, %1003
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1007:                                             ; preds = %1003
  %1008 = extractvalue { i32, i1 } %1004, 0, !nosanitize !20
  %1009 = icmp ult i32 %1008, %532
  br i1 %1009, label %988, label %1126, !llvm.loop !47

1010:                                             ; preds = %972, %993
  %.lcssa14 = phi i64 [ %997, %993 ], [ %976, %972 ]
  %.lcssa11 = phi i32 [ %1001, %993 ], [ %980, %972 ]
  %.lcssa8 = phi i32 [ %989, %993 ], [ %969, %972 ]
  %1011 = icmp slt i32 %.lcssa11, 0
  br i1 %1011, label %1012, label %1022

1012:                                             ; preds = %1010
  %1013 = load i32, ptr %967, align 4, !tbaa !45
  %1014 = icmp eq i32 %1013, 11
  br i1 %1014, label %1015, label %1019

1015:                                             ; preds = %1012
  store i32 1, ptr %518, align 4, !tbaa !17
  %1016 = icmp eq i32 %.lcssa8, 0
  br i1 %1016, label %1017, label %1128

1017:                                             ; preds = %1015
  %1018 = load i32, ptr %967, align 4, !tbaa !45
  br label %1019

1019:                                             ; preds = %1017, %1012
  %1020 = phi i32 [ %1018, %1017 ], [ %1013, %1012 ]
  %1021 = call ptr @strerror(i32 noundef %1020) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1021) #13
  br label %1128

1022:                                             ; preds = %1010
  store i32 1, ptr %510, align 8, !tbaa !24
  br label %1128

1023:                                             ; preds = %964
  store i32 %532, ptr %514, align 8, !tbaa !58
  store ptr %528, ptr %515, align 8, !tbaa !59
  br label %1024

1024:                                             ; preds = %1103, %1023
  %1025 = phi i32 [ 0, %1023 ], [ %1088, %1103 ]
  %1026 = load i32, ptr %511, align 8, !tbaa !34
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1028, label %1087

1028:                                             ; preds = %1024
  %1029 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %1029, label %1107 [
    i32 0, label %1030
    i32 -5, label %1030
  ]

1030:                                             ; preds = %1028, %1028
  %1031 = load i32, ptr %510, align 8, !tbaa !24
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1033, label %1083

1033:                                             ; preds = %1030
  %1034 = load i32, ptr %513, align 8, !tbaa !27
  %1035 = load ptr, ptr %517, align 8, !tbaa !29
  store i32 0, ptr %518, align 4, !tbaa !17
  %1036 = tail call ptr @__errno_location() #17
  store i32 0, ptr %1036, align 4, !tbaa !45
  br label %1037

1037:                                             ; preds = %1056, %1033
  %1038 = phi i32 [ 0, %1033 ], [ %1057, %1056 ]
  %1039 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1034, i32 %1038), !nosanitize !20
  %1040 = extractvalue { i32, i1 } %1039, 1, !nosanitize !20
  br i1 false, label %1041, label %1042, !prof !21, !nosanitize !20

1041:                                             ; preds = %1037
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1042:                                             ; preds = %1037
  %1043 = extractvalue { i32, i1 } %1039, 0, !nosanitize !20
  %1044 = call i32 @llvm.umin.i32(i32 %1043, i32 1073741824)
  %1045 = load i32, ptr %519, align 4, !tbaa !46
  %1046 = zext i32 %1038 to i64
  %1047 = getelementptr inbounds nuw i8, ptr %1035, i64 %1046
  %1048 = zext nneg i32 %1044 to i64
  %1049 = call i64 @read(i32 noundef %1045, ptr noundef %1047, i64 noundef %1048) #13
  %1050 = trunc i64 %1049 to i32
  %1051 = icmp slt i32 %1050, 1
  br i1 %1051, label %1059, label %1052

1052:                                             ; preds = %1042
  %1053 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1038, i32 %1050), !nosanitize !20
  %1054 = extractvalue { i32, i1 } %1053, 1, !nosanitize !20
  br i1 %1054, label %1055, label %1056, !prof !21, !nosanitize !20

1055:                                             ; preds = %1052
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1056:                                             ; preds = %1052
  %1057 = extractvalue { i32, i1 } %1053, 0, !nosanitize !20
  %1058 = icmp ult i32 %1057, %1034
  br i1 %1058, label %1037, label %1073, !llvm.loop !47

1059:                                             ; preds = %1042
  %1060 = icmp slt i32 %1050, 0
  br i1 %1060, label %1061, label %1068

1061:                                             ; preds = %1059
  %1062 = load i32, ptr %1036, align 4, !tbaa !45
  %1063 = icmp eq i32 %1062, 11
  br i1 %1063, label %1064, label %1069

1064:                                             ; preds = %1061
  store i32 1, ptr %518, align 4, !tbaa !17
  %1065 = icmp eq i32 %1038, 0
  br i1 %1065, label %1066, label %1073

1066:                                             ; preds = %1064
  %1067 = load i32, ptr %1036, align 4, !tbaa !45
  br label %1069

1068:                                             ; preds = %1059
  store i32 1, ptr %510, align 8, !tbaa !24
  br label %1073

1069:                                             ; preds = %1066, %1061
  %1070 = phi i32 [ %1067, %1066 ], [ %1062, %1061 ]
  %1071 = call ptr @strerror(i32 noundef %1070) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1071) #13
  %1072 = load i32, ptr %9, align 8, !tbaa !16
  br label %1107

1073:                                             ; preds = %1068, %1064, %1056
  %1074 = phi i32 [ %1038, %1068 ], [ %1038, %1064 ], [ %1057, %1056 ]
  %1075 = load i32, ptr %511, align 8, !tbaa !34
  %1076 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1075, i32 %1074), !nosanitize !20
  %1077 = extractvalue { i32, i1 } %1076, 1, !nosanitize !20
  br i1 %1077, label %1078, label %1079, !prof !21, !nosanitize !20

1078:                                             ; preds = %1073
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1079:                                             ; preds = %1073
  %1080 = extractvalue { i32, i1 } %1076, 0, !nosanitize !20
  store i32 %1080, ptr %511, align 8, !tbaa !34
  %1081 = load ptr, ptr %517, align 8, !tbaa !29
  store ptr %1081, ptr %516, align 8, !tbaa !35
  %1082 = icmp eq i32 %1080, 0
  br i1 %1082, label %1083, label %1087

1083:                                             ; preds = %1079, %1030
  %1084 = load i32, ptr %518, align 4, !tbaa !17
  %1085 = icmp eq i32 %1084, 0
  br i1 %1085, label %1086, label %1107

1086:                                             ; preds = %1083
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %1107

1087:                                             ; preds = %1079, %1024
  %1088 = call i32 @inflate(ptr noundef nonnull %516, i32 noundef 0) #13
  %1089 = load i32, ptr %514, align 8, !tbaa !48
  %1090 = icmp ult i32 %1089, %532
  br i1 %1090, label %1091, label %1092

1091:                                             ; preds = %1087
  store i32 0, ptr %520, align 4, !tbaa !33
  br label %1092

1092:                                             ; preds = %1091, %1087
  switch i32 %1088, label %1103 [
    i32 -2, label %1093
    i32 2, label %1093
    i32 -4, label %1094
    i32 -3, label %1095
  ]

1093:                                             ; preds = %1092, %1092
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %1107

1094:                                             ; preds = %1092
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1107

1095:                                             ; preds = %1092
  %1096 = load i32, ptr %520, align 4, !tbaa !33
  %1097 = icmp eq i32 %1096, 1
  br i1 %1097, label %1098, label %1099

1098:                                             ; preds = %1095
  store i32 0, ptr %511, align 8, !tbaa !34
  store i32 1, ptr %510, align 8, !tbaa !24
  store i32 0, ptr %512, align 8, !tbaa !26
  br label %1107

1099:                                             ; preds = %1095
  %1100 = load ptr, ptr %521, align 8, !tbaa !50
  %1101 = icmp eq ptr %1100, null
  %1102 = select i1 %1101, ptr @.str.6, ptr %1100
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1102) #13
  br label %1107

1103:                                             ; preds = %1092
  %1104 = icmp ne i32 %1089, 0
  %1105 = icmp ne i32 %1088, 1
  %1106 = select i1 %1104, i1 %1105, i1 false
  br i1 %1106, label %1024, label %1107, !llvm.loop !51

1107:                                             ; preds = %1103, %1099, %1098, %1094, %1093, %1086, %1083, %1069, %1028
  %1108 = phi i32 [ %1025, %1083 ], [ %1025, %1086 ], [ %1088, %1093 ], [ -4, %1094 ], [ 0, %1098 ], [ -3, %1099 ], [ %1072, %1069 ], [ %1088, %1103 ], [ %1029, %1028 ]
  %1109 = load i32, ptr %514, align 8, !tbaa !48
  %1110 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %532, i32 %1109), !nosanitize !20
  %1111 = extractvalue { i32, i1 } %1110, 1, !nosanitize !20
  br i1 %1111, label %1112, label %1113, !prof !21, !nosanitize !20

1112:                                             ; preds = %1107
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1113:                                             ; preds = %1107
  %1114 = extractvalue { i32, i1 } %1110, 0, !nosanitize !20
  %1115 = load ptr, ptr %515, align 8, !tbaa !49
  %1116 = zext i32 %1114 to i64
  %1117 = sub nsw i64 0, %1116
  %1118 = getelementptr inbounds i8, ptr %1115, i64 %1117
  store ptr %1118, ptr %509, align 8, !tbaa !22
  %1119 = icmp eq i32 %1108, 1
  br i1 %1119, label %1120, label %1121

1120:                                             ; preds = %1113
  store i32 0, ptr %520, align 4, !tbaa !33
  store i32 0, ptr %512, align 8, !tbaa !26
  br label %1124

1121:                                             ; preds = %1113
  %1122 = icmp ne i32 %1108, 0
  %1123 = sext i1 %1122 to i32
  br label %1124

1124:                                             ; preds = %1121, %1120
  %1125 = phi i32 [ 0, %1120 ], [ %1123, %1121 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1128

1126:                                             ; preds = %985, %1007
  %.lcssa17 = phi i32 [ %1008, %1007 ], [ %986, %985 ]
  %1127 = zext i32 %.lcssa17 to i64
  br label %1128

1128:                                             ; preds = %1126, %1124, %1022, %1019, %1015, %545
  %1129 = phi i64 [ %1127, %1126 ], [ %.lcssa14, %1022 ], [ %.lcssa14, %1019 ], [ %.lcssa14, %1015 ], [ %538, %545 ], [ %1116, %1124 ]
  %1130 = phi i32 [ 0, %1126 ], [ 0, %1022 ], [ -1, %1019 ], [ 0, %1015 ], [ %549, %545 ], [ %1125, %1124 ]
  %1131 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %529, i64 %1129), !nosanitize !20
  %1132 = extractvalue { i64, i1 } %1131, 0, !nosanitize !20
  %1133 = extractvalue { i64, i1 } %1131, 1, !nosanitize !20
  br i1 %1133, label %1134, label %1135, !prof !21, !nosanitize !20

1134:                                             ; preds = %1128
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1135:                                             ; preds = %1128
  %1136 = getelementptr inbounds nuw i8, ptr %528, i64 %1129
  %1137 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %530, i64 %1129), !nosanitize !20
  %1138 = extractvalue { i64, i1 } %1137, 0, !nosanitize !20
  %1139 = extractvalue { i64, i1 } %1137, 1, !nosanitize !20
  br i1 %1139, label %1140, label %1141, !prof !21, !nosanitize !20

1140:                                             ; preds = %1141, %1135
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1141:                                             ; preds = %1135
  %1142 = load i64, ptr %522, align 8, !tbaa !23
  %1143 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1142, i64 %1129), !nosanitize !20
  %1144 = extractvalue { i64, i1 } %1143, 1, !nosanitize !20
  br i1 %1144, label %1140, label %1145, !prof !21, !nosanitize !20

1145:                                             ; preds = %1141
  %1146 = extractvalue { i64, i1 } %1143, 0, !nosanitize !20
  store i64 %1146, ptr %522, align 8, !tbaa !23
  br label %1147

1147:                                             ; preds = %1145, %960, %955, %949, %844, %799
  %1148 = phi ptr [ %1136, %1145 ], [ %528, %960 ], [ %528, %844 ], [ %528, %799 ], [ %528, %949 ], [ %528, %955 ]
  %1149 = phi i64 [ %1132, %1145 ], [ %529, %960 ], [ %529, %844 ], [ %529, %799 ], [ %529, %949 ], [ %529, %955 ]
  %1150 = phi i64 [ %1138, %1145 ], [ %530, %960 ], [ %530, %844 ], [ %530, %799 ], [ %530, %949 ], [ %530, %955 ]
  %1151 = phi i32 [ %1130, %1145 ], [ %963, %960 ], [ 0, %844 ], [ 0, %799 ], [ 0, %949 ], [ 0, %955 ]
  %1152 = icmp ne i64 %1149, 0
  %1153 = icmp eq i32 %1151, 0
  %1154 = select i1 %1152, i1 %1153, i1 false
  br i1 %1154, label %527, label %1155, !llvm.loop !60

1155:                                             ; preds = %1147
  %1156 = icmp eq i64 %1149, 0
  br i1 %1156, label %1163, label %1157

1157:                                             ; preds = %1155
  %1158 = load i32, ptr %510, align 8, !tbaa !24
  %1159 = icmp eq i32 %1158, 0
  br i1 %1159, label %1163, label %1160

1160:                                             ; preds = %1157, %553
  %1161 = phi i64 [ %1150, %1157 ], [ %530, %553 ]
  %1162 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1162, align 4, !tbaa !61
  br label %1163

1163:                                             ; preds = %1160, %1157, %1155
  %1164 = phi i64 [ %1161, %1160 ], [ %1150, %1157 ], [ %1150, %1155 ]
  %1165 = freeze i64 %1164
  %1166 = icmp eq i64 %1165, 0
  %1167 = load i8, ptr %2, align 1
  %1168 = zext i8 %1167 to i32
  br i1 %1166, label %1169, label %1170

1169:                                             ; preds = %1163, %490, %483, %365, %279, %121, %107, %103
  br label %1170

1170:                                             ; preds = %1169, %1163, %25, %11, %4, %1
  %1171 = phi i32 [ %31, %25 ], [ -1, %1 ], [ -1, %4 ], [ -1, %11 ], [ -1, %1169 ], [ %1168, %1163 ]
  call void @llvm.lifetime.end.p0(ptr %2)
  ret i32 %1171
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzgetc_(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr %2)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1150, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1150

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %10, label %11 [
    i32 0, label %15
    i32 -5, label %15
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %13 = load i32, ptr %12, align 4, !tbaa !17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %1150, label %15

15:                                               ; preds = %11, %8, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %16 = load i32, ptr %0, align 8, !tbaa !19
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %15
  %19 = add i32 %16, -1
  store i32 %19, ptr %0, align 8, !tbaa !19
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = load i64, ptr %20, align 8, !tbaa !23
  %22 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %21, i64 1), !nosanitize !20
  %23 = extractvalue { i64, i1 } %22, 1, !nosanitize !20
  br i1 %23, label %24, label %25, !prof !21, !nosanitize !20

24:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

25:                                               ; preds = %18
  %26 = extractvalue { i64, i1 } %22, 0, !nosanitize !20
  store i64 %26, ptr %20, align 8, !tbaa !23
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 1
  store ptr %29, ptr %27, align 8, !tbaa !22
  %30 = load i8, ptr %28, align 1, !tbaa !36
  %31 = zext i8 %30 to i32
  br label %1150

32:                                               ; preds = %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %34 = load i64, ptr %33, align 8, !tbaa !18
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %488, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %55

55:                                               ; preds = %485, %36
  %56 = phi i64 [ %486, %485 ], [ %34, %36 ]
  %57 = load i32, ptr %0, align 8, !tbaa !19
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %81, label %59

59:                                               ; preds = %55
  %60 = zext i32 %57 to i64
  %61 = tail call i64 @llvm.smin.i64(i64 %56, i64 %60)
  %62 = trunc i64 %61 to i32
  %63 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %57, i32 %62), !nosanitize !20
  %64 = extractvalue { i32, i1 } %63, 1, !nosanitize !20
  br i1 %64, label %65, label %66, !prof !21, !nosanitize !20

65:                                               ; preds = %75, %59
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

66:                                               ; preds = %59
  %67 = extractvalue { i32, i1 } %63, 0, !nosanitize !20
  store i32 %67, ptr %0, align 8, !tbaa !19
  %68 = load ptr, ptr %37, align 8, !tbaa !22
  %69 = and i64 %61, 4294967295
  %70 = getelementptr inbounds nuw i8, ptr %68, i64 %69
  store ptr %70, ptr %37, align 8, !tbaa !22
  %71 = load i64, ptr %38, align 8, !tbaa !23
  %72 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %71, i64 %69), !nosanitize !20
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !20
  br i1 %73, label %74, label %75, !prof !21, !nosanitize !20

74:                                               ; preds = %66
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

75:                                               ; preds = %66
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !20
  store i64 %76, ptr %38, align 8, !tbaa !23
  %77 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %56, i64 %69), !nosanitize !20
  %78 = extractvalue { i64, i1 } %77, 1, !nosanitize !20
  br i1 %78, label %65, label %79, !prof !21, !nosanitize !20

79:                                               ; preds = %75
  %80 = extractvalue { i64, i1 } %77, 0, !nosanitize !20
  store i64 %80, ptr %33, align 8, !tbaa !18
  br label %485

81:                                               ; preds = %55
  %82 = load i32, ptr %39, align 8, !tbaa !24
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %40, align 8, !tbaa !25
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %488, label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %482, %87
  %89 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %89, label %470 [
    i32 0, label %90
    i32 1, label %326
    i32 2, label %370
  ]

90:                                               ; preds = %88
  %91 = load i32, ptr %42, align 8, !tbaa !27
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %90
  %94 = load i32, ptr %52, align 4, !tbaa !28
  %95 = zext i32 %94 to i64
  %96 = tail call noalias ptr @malloc(i64 noundef %95) #16
  store ptr %96, ptr %47, align 8, !tbaa !29
  %97 = shl i32 %94, 1
  %98 = zext i32 %97 to i64
  %99 = tail call noalias ptr @malloc(i64 noundef %98) #16
  store ptr %99, ptr %44, align 8, !tbaa !30
  %100 = icmp eq ptr %96, null
  %101 = icmp eq ptr %99, null
  %102 = or i1 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  tail call void @free(ptr noundef %99) #13
  tail call void @free(ptr noundef %96) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1149

104:                                              ; preds = %93
  store i32 %94, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %40, align 8, !tbaa !25
  store ptr null, ptr %46, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  %105 = tail call i32 @inflateInit2_(ptr noundef nonnull %46, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %44, align 8, !tbaa !30
  tail call void @free(ptr noundef %108) #13
  %109 = load ptr, ptr %47, align 8, !tbaa !29
  tail call void @free(ptr noundef %109) #13
  store i32 0, ptr %42, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1149

110:                                              ; preds = %104, %90
  %111 = load i32, ptr %54, align 8, !tbaa !32
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr %50, align 4, !tbaa !33
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113, %110
  %117 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  %118 = load i32, ptr %50, align 4, !tbaa !33
  %119 = icmp ne i32 %118, -1
  %120 = zext i1 %119 to i32
  store i32 %120, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %54, align 8, !tbaa !32
  br label %323

121:                                              ; preds = %113
  %122 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %122, label %1149 [
    i32 0, label %123
    i32 -5, label %123
  ]

123:                                              ; preds = %121, %121
  %124 = load i32, ptr %39, align 8, !tbaa !24
  %125 = icmp eq i32 %124, 0
  %126 = load i32, ptr %40, align 8, !tbaa !34
  br i1 %125, label %127, label %291

127:                                              ; preds = %123
  %128 = icmp eq i32 %126, 0
  br i1 %128, label %235, label %129

129:                                              ; preds = %127
  %130 = load ptr, ptr %47, align 8, !tbaa !29
  %131 = load ptr, ptr %46, align 8, !tbaa !35
  %132 = icmp eq ptr %131, %130
  br i1 %132, label %235, label %133

133:                                              ; preds = %129
  %134 = ptrtoint ptr %131 to i64
  %135 = ptrtoint ptr %130 to i64
  %136 = zext i32 %126 to i64
  %137 = icmp ult i32 %126, 4
  %138 = sub i64 %135, %134
  %139 = icmp ult i64 %138, 32
  %140 = or i1 %137, %139
  br i1 %140, label %180, label %141

141:                                              ; preds = %133
  %142 = icmp ult i32 %126, 32
  br i1 %142, label %164, label %143

143:                                              ; preds = %141
  %144 = and i64 %136, 4294967264
  br label %145

145:                                              ; preds = %145, %143
  %146 = phi i64 [ 0, %143 ], [ %153, %145 ]
  %147 = getelementptr i8, ptr %130, i64 %146
  %148 = getelementptr i8, ptr %131, i64 %146
  %149 = getelementptr i8, ptr %148, i64 16
  %150 = load <16 x i8>, ptr %148, align 1, !tbaa !36
  %151 = load <16 x i8>, ptr %149, align 1, !tbaa !36
  %152 = getelementptr i8, ptr %147, i64 16
  store <16 x i8> %150, ptr %147, align 1, !tbaa !36
  store <16 x i8> %151, ptr %152, align 1, !tbaa !36
  %153 = add nuw i64 %146, 32
  %154 = icmp eq i64 %153, %144
  br i1 %154, label %155, label %145, !llvm.loop !78

155:                                              ; preds = %145
  %156 = icmp eq i64 %144, %136
  br i1 %156, label %233, label %157

157:                                              ; preds = %155
  %158 = getelementptr i8, ptr %130, i64 %144
  %159 = getelementptr i8, ptr %131, i64 %144
  %160 = trunc nuw i64 %144 to i32
  %161 = sub i32 %126, %160
  %162 = and i64 %136, 28
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %180, label %164

164:                                              ; preds = %157, %141
  %165 = phi i64 [ %144, %157 ], [ 0, %141 ]
  %166 = and i64 %136, 4294967292
  %167 = getelementptr i8, ptr %130, i64 %166
  %168 = getelementptr i8, ptr %131, i64 %166
  %169 = trunc nuw i64 %166 to i32
  %170 = sub i32 %126, %169
  br label %171

171:                                              ; preds = %171, %164
  %172 = phi i64 [ %165, %164 ], [ %176, %171 ]
  %173 = getelementptr i8, ptr %130, i64 %172
  %174 = getelementptr i8, ptr %131, i64 %172
  %175 = load <4 x i8>, ptr %174, align 1, !tbaa !36
  store <4 x i8> %175, ptr %173, align 1, !tbaa !36
  %176 = add nuw i64 %172, 4
  %177 = icmp eq i64 %176, %166
  br i1 %177, label %178, label %171, !llvm.loop !79

178:                                              ; preds = %171
  %179 = icmp eq i64 %166, %136
  br i1 %179, label %233, label %180

180:                                              ; preds = %178, %157, %133
  %181 = phi ptr [ %130, %133 ], [ %158, %157 ], [ %167, %178 ]
  %182 = phi ptr [ %131, %133 ], [ %159, %157 ], [ %168, %178 ]
  %183 = phi i32 [ %126, %133 ], [ %161, %157 ], [ %170, %178 ]
  %184 = add i32 %183, -1
  %185 = and i32 %183, 7
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %198, label %187

187:                                              ; preds = %187, %180
  %188 = phi ptr [ %194, %187 ], [ %181, %180 ]
  %189 = phi ptr [ %195, %187 ], [ %182, %180 ]
  %190 = phi i32 [ %193, %187 ], [ %183, %180 ]
  %191 = phi i32 [ %196, %187 ], [ 0, %180 ]
  %192 = load i8, ptr %189, align 1, !tbaa !36
  store i8 %192, ptr %188, align 1, !tbaa !36
  %193 = add i32 %190, -1
  %194 = getelementptr inbounds nuw i8, ptr %188, i64 1
  %195 = getelementptr inbounds nuw i8, ptr %189, i64 1
  %196 = add i32 %191, 1
  %197 = icmp eq i32 %196, %185
  br i1 %197, label %198, label %187, !llvm.loop !80

198:                                              ; preds = %187, %180
  %199 = phi ptr [ %181, %180 ], [ %194, %187 ]
  %200 = phi ptr [ %182, %180 ], [ %195, %187 ]
  %201 = phi i32 [ %183, %180 ], [ %193, %187 ]
  %202 = icmp ult i32 %184, 7
  br i1 %202, label %233, label %203

203:                                              ; preds = %203, %198
  %204 = phi ptr [ %230, %203 ], [ %199, %198 ]
  %205 = phi ptr [ %231, %203 ], [ %200, %198 ]
  %206 = phi i32 [ %229, %203 ], [ %201, %198 ]
  %207 = load i8, ptr %205, align 1, !tbaa !36
  store i8 %207, ptr %204, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %204, i64 1
  %209 = getelementptr inbounds nuw i8, ptr %205, i64 1
  %210 = load i8, ptr %209, align 1, !tbaa !36
  store i8 %210, ptr %208, align 1, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %204, i64 2
  %212 = getelementptr inbounds nuw i8, ptr %205, i64 2
  %213 = load i8, ptr %212, align 1, !tbaa !36
  store i8 %213, ptr %211, align 1, !tbaa !36
  %214 = getelementptr inbounds nuw i8, ptr %204, i64 3
  %215 = getelementptr inbounds nuw i8, ptr %205, i64 3
  %216 = load i8, ptr %215, align 1, !tbaa !36
  store i8 %216, ptr %214, align 1, !tbaa !36
  %217 = getelementptr inbounds nuw i8, ptr %204, i64 4
  %218 = getelementptr inbounds nuw i8, ptr %205, i64 4
  %219 = load i8, ptr %218, align 1, !tbaa !36
  store i8 %219, ptr %217, align 1, !tbaa !36
  %220 = getelementptr inbounds nuw i8, ptr %204, i64 5
  %221 = getelementptr inbounds nuw i8, ptr %205, i64 5
  %222 = load i8, ptr %221, align 1, !tbaa !36
  store i8 %222, ptr %220, align 1, !tbaa !36
  %223 = getelementptr inbounds nuw i8, ptr %204, i64 6
  %224 = getelementptr inbounds nuw i8, ptr %205, i64 6
  %225 = load i8, ptr %224, align 1, !tbaa !36
  store i8 %225, ptr %223, align 1, !tbaa !36
  %226 = getelementptr inbounds nuw i8, ptr %204, i64 7
  %227 = getelementptr inbounds nuw i8, ptr %205, i64 7
  %228 = load i8, ptr %227, align 1, !tbaa !36
  store i8 %228, ptr %226, align 1, !tbaa !36
  %229 = add i32 %206, -8
  %230 = getelementptr inbounds nuw i8, ptr %204, i64 8
  %231 = getelementptr inbounds nuw i8, ptr %205, i64 8
  %232 = icmp eq i32 %229, 0
  br i1 %232, label %233, label %203, !llvm.loop !81

233:                                              ; preds = %203, %198, %178, %155
  %234 = load i32, ptr %40, align 8, !tbaa !34
  br label %235

235:                                              ; preds = %233, %129, %127
  %236 = phi i32 [ %234, %233 ], [ %126, %129 ], [ 0, %127 ]
  %237 = load i32, ptr %42, align 8, !tbaa !27
  %238 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %237, i32 %236), !nosanitize !20
  %239 = extractvalue { i32, i1 } %238, 1, !nosanitize !20
  br i1 %239, label %240, label %241, !prof !21, !nosanitize !20

240:                                              ; preds = %235
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

241:                                              ; preds = %235
  %242 = extractvalue { i32, i1 } %238, 0, !nosanitize !20
  %243 = load ptr, ptr %47, align 8, !tbaa !29
  %244 = zext i32 %236 to i64
  %245 = getelementptr inbounds nuw i8, ptr %243, i64 %244
  store i32 0, ptr %48, align 4, !tbaa !17
  %246 = tail call ptr @__errno_location() #17
  store i32 0, ptr %246, align 4, !tbaa !45
  br label %247

247:                                              ; preds = %266, %241
  %248 = phi i32 [ 0, %241 ], [ %267, %266 ]
  %249 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %242, i32 %248), !nosanitize !20
  %250 = extractvalue { i32, i1 } %249, 1, !nosanitize !20
  br i1 %250, label %251, label %252, !prof !21, !nosanitize !20

251:                                              ; preds = %247
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

252:                                              ; preds = %247
  %253 = extractvalue { i32, i1 } %249, 0, !nosanitize !20
  %254 = tail call i32 @llvm.umin.i32(i32 %253, i32 1073741824)
  %255 = load i32, ptr %49, align 4, !tbaa !46
  %256 = zext i32 %248 to i64
  %257 = getelementptr inbounds nuw i8, ptr %245, i64 %256
  %258 = zext nneg i32 %254 to i64
  %259 = tail call i64 @read(i32 noundef %255, ptr noundef %257, i64 noundef %258) #13
  %260 = trunc i64 %259 to i32
  %261 = icmp slt i32 %260, 1
  br i1 %261, label %269, label %262

262:                                              ; preds = %252
  %263 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %248, i32 %260), !nosanitize !20
  %264 = extractvalue { i32, i1 } %263, 1, !nosanitize !20
  br i1 %264, label %265, label %266, !prof !21, !nosanitize !20

265:                                              ; preds = %262
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

266:                                              ; preds = %262
  %267 = extractvalue { i32, i1 } %263, 0, !nosanitize !20
  %268 = icmp ult i32 %267, %242
  br i1 %268, label %247, label %282, !llvm.loop !47

269:                                              ; preds = %252
  %270 = icmp slt i32 %260, 0
  br i1 %270, label %271, label %278

271:                                              ; preds = %269
  %272 = load i32, ptr %246, align 4, !tbaa !45
  %273 = icmp eq i32 %272, 11
  br i1 %273, label %274, label %279

274:                                              ; preds = %271
  store i32 1, ptr %48, align 4, !tbaa !17
  %275 = icmp eq i32 %248, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %274
  %277 = load i32, ptr %246, align 4, !tbaa !45
  br label %279

278:                                              ; preds = %269
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %282

279:                                              ; preds = %276, %271
  %280 = phi i32 [ %277, %276 ], [ %272, %271 ]
  %281 = tail call ptr @strerror(i32 noundef %280) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %281) #13
  br label %1149

282:                                              ; preds = %278, %274, %266
  %283 = phi i32 [ %248, %278 ], [ %248, %274 ], [ %267, %266 ]
  %284 = load i32, ptr %40, align 8, !tbaa !34
  %285 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %284, i32 %283), !nosanitize !20
  %286 = extractvalue { i32, i1 } %285, 1, !nosanitize !20
  br i1 %286, label %287, label %288, !prof !21, !nosanitize !20

287:                                              ; preds = %282
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

288:                                              ; preds = %282
  %289 = extractvalue { i32, i1 } %285, 0, !nosanitize !20
  store i32 %289, ptr %40, align 8, !tbaa !34
  %290 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %290, ptr %46, align 8, !tbaa !35
  br label %291

291:                                              ; preds = %288, %123
  %292 = phi i32 [ %289, %288 ], [ %126, %123 ]
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %323, label %294

294:                                              ; preds = %291
  %295 = load i32, ptr %48, align 4, !tbaa !17
  %296 = icmp ne i32 %295, 0
  %297 = icmp ult i32 %292, 4
  %298 = and i1 %297, %296
  br i1 %298, label %323, label %299

299:                                              ; preds = %294
  %300 = icmp ugt i32 %292, 3
  %301 = load ptr, ptr %46, align 8, !tbaa !35
  br i1 %300, label %302, label %319

302:                                              ; preds = %299
  %303 = load i8, ptr %301, align 1, !tbaa !36
  %304 = icmp eq i8 %303, 31
  br i1 %304, label %305, label %319

305:                                              ; preds = %302
  %306 = getelementptr inbounds nuw i8, ptr %301, i64 1
  %307 = load i8, ptr %306, align 1, !tbaa !36
  %308 = icmp eq i8 %307, -117
  br i1 %308, label %309, label %319

309:                                              ; preds = %305
  %310 = getelementptr inbounds nuw i8, ptr %301, i64 2
  %311 = load i8, ptr %310, align 1, !tbaa !36
  %312 = icmp eq i8 %311, 8
  br i1 %312, label %313, label %319

313:                                              ; preds = %309
  %314 = getelementptr inbounds nuw i8, ptr %301, i64 3
  %315 = load i8, ptr %314, align 1, !tbaa !36
  %316 = icmp ult i8 %315, 32
  br i1 %316, label %317, label %319

317:                                              ; preds = %313
  %318 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  store i32 1, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %54, align 8, !tbaa !32
  br label %471

319:                                              ; preds = %313, %309, %305, %302, %299
  %320 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %320, ptr %37, align 8, !tbaa !22
  %321 = zext i32 %292 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %320, ptr align 1 %301, i64 %321, i1 false)
  %322 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %322, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %473

323:                                              ; preds = %294, %291, %116
  %324 = load i32, ptr %41, align 8, !tbaa !26
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %483, label %471

326:                                              ; preds = %88
  %327 = load ptr, ptr %44, align 8, !tbaa !30
  %328 = load i32, ptr %42, align 8, !tbaa !27
  %329 = shl i32 %328, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %330 = tail call ptr @__errno_location() #17
  store i32 0, ptr %330, align 4, !tbaa !45
  store i32 0, ptr %0, align 4, !tbaa !45
  br label %331

331:                                              ; preds = %351, %326
  %332 = phi i32 [ %352, %351 ], [ 0, %326 ]
  %333 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %329, i32 %332), !nosanitize !20
  %334 = extractvalue { i32, i1 } %333, 1, !nosanitize !20
  br i1 false, label %335, label %336, !prof !21, !nosanitize !20

335:                                              ; preds = %331
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

336:                                              ; preds = %331
  %337 = extractvalue { i32, i1 } %333, 0, !nosanitize !20
  %338 = tail call i32 @llvm.umin.i32(i32 %337, i32 1073741824)
  %339 = load i32, ptr %49, align 4, !tbaa !46
  %340 = zext i32 %332 to i64
  %341 = getelementptr inbounds nuw i8, ptr %327, i64 %340
  %342 = zext nneg i32 %338 to i64
  %343 = tail call i64 @read(i32 noundef %339, ptr noundef %341, i64 noundef %342) #13
  %344 = trunc i64 %343 to i32
  %345 = icmp slt i32 %344, 1
  br i1 %345, label %354, label %346

346:                                              ; preds = %336
  %347 = load i32, ptr %0, align 4, !tbaa !45
  %348 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %347, i32 %344), !nosanitize !20
  %349 = extractvalue { i32, i1 } %348, 1, !nosanitize !20
  br i1 %349, label %350, label %351, !prof !21, !nosanitize !20

350:                                              ; preds = %346
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

351:                                              ; preds = %346
  %352 = extractvalue { i32, i1 } %348, 0, !nosanitize !20
  store i32 %352, ptr %0, align 4, !tbaa !45
  %353 = icmp ult i32 %352, %329
  br i1 %353, label %331, label %368, !llvm.loop !47

354:                                              ; preds = %336
  %355 = icmp slt i32 %344, 0
  br i1 %355, label %356, label %364

356:                                              ; preds = %354
  %357 = load i32, ptr %330, align 4, !tbaa !45
  %358 = icmp eq i32 %357, 11
  br i1 %358, label %359, label %365

359:                                              ; preds = %356
  store i32 1, ptr %48, align 4, !tbaa !17
  %360 = load i32, ptr %0, align 4, !tbaa !45
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %368

362:                                              ; preds = %359
  %363 = load i32, ptr %330, align 4, !tbaa !45
  br label %365

364:                                              ; preds = %354
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %368

365:                                              ; preds = %362, %356
  %366 = phi i32 [ %363, %362 ], [ %357, %356 ]
  %367 = tail call ptr @strerror(i32 noundef %366) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %367) #13
  br label %1149

368:                                              ; preds = %364, %359, %351
  %369 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %369, ptr %37, align 8, !tbaa !22
  br label %483

370:                                              ; preds = %88
  %371 = load i32, ptr %42, align 8, !tbaa !27
  %372 = shl i32 %371, 1
  store i32 %372, ptr %43, align 8, !tbaa !48
  %373 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %373, ptr %45, align 8, !tbaa !49
  br label %374

374:                                              ; preds = %453, %370
  %375 = phi i32 [ 0, %370 ], [ %438, %453 ]
  %376 = load i32, ptr %40, align 8, !tbaa !34
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %437

378:                                              ; preds = %374
  %379 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %379, label %457 [
    i32 0, label %380
    i32 -5, label %380
  ]

380:                                              ; preds = %378, %378
  %381 = load i32, ptr %39, align 8, !tbaa !24
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %433

383:                                              ; preds = %380
  %384 = load i32, ptr %42, align 8, !tbaa !27
  %385 = load ptr, ptr %47, align 8, !tbaa !29
  store i32 0, ptr %48, align 4, !tbaa !17
  %386 = tail call ptr @__errno_location() #17
  store i32 0, ptr %386, align 4, !tbaa !45
  br label %387

387:                                              ; preds = %406, %383
  %388 = phi i32 [ 0, %383 ], [ %407, %406 ]
  %389 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %384, i32 %388), !nosanitize !20
  %390 = extractvalue { i32, i1 } %389, 1, !nosanitize !20
  br i1 false, label %391, label %392, !prof !21, !nosanitize !20

391:                                              ; preds = %387
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

392:                                              ; preds = %387
  %393 = extractvalue { i32, i1 } %389, 0, !nosanitize !20
  %394 = tail call i32 @llvm.umin.i32(i32 %393, i32 1073741824)
  %395 = load i32, ptr %49, align 4, !tbaa !46
  %396 = zext i32 %388 to i64
  %397 = getelementptr inbounds nuw i8, ptr %385, i64 %396
  %398 = zext nneg i32 %394 to i64
  %399 = tail call i64 @read(i32 noundef %395, ptr noundef %397, i64 noundef %398) #13
  %400 = trunc i64 %399 to i32
  %401 = icmp slt i32 %400, 1
  br i1 %401, label %409, label %402

402:                                              ; preds = %392
  %403 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %388, i32 %400), !nosanitize !20
  %404 = extractvalue { i32, i1 } %403, 1, !nosanitize !20
  br i1 %404, label %405, label %406, !prof !21, !nosanitize !20

405:                                              ; preds = %402
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

406:                                              ; preds = %402
  %407 = extractvalue { i32, i1 } %403, 0, !nosanitize !20
  %408 = icmp ult i32 %407, %384
  br i1 %408, label %387, label %423, !llvm.loop !47

409:                                              ; preds = %392
  %410 = icmp slt i32 %400, 0
  br i1 %410, label %411, label %418

411:                                              ; preds = %409
  %412 = load i32, ptr %386, align 4, !tbaa !45
  %413 = icmp eq i32 %412, 11
  br i1 %413, label %414, label %419

414:                                              ; preds = %411
  store i32 1, ptr %48, align 4, !tbaa !17
  %415 = icmp eq i32 %388, 0
  br i1 %415, label %416, label %423

416:                                              ; preds = %414
  %417 = load i32, ptr %386, align 4, !tbaa !45
  br label %419

418:                                              ; preds = %409
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %423

419:                                              ; preds = %416, %411
  %420 = phi i32 [ %417, %416 ], [ %412, %411 ]
  %421 = tail call ptr @strerror(i32 noundef %420) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %421) #13
  %422 = load i32, ptr %9, align 8, !tbaa !16
  br label %457

423:                                              ; preds = %418, %414, %406
  %424 = phi i32 [ %388, %418 ], [ %388, %414 ], [ %407, %406 ]
  %425 = load i32, ptr %40, align 8, !tbaa !34
  %426 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %425, i32 %424), !nosanitize !20
  %427 = extractvalue { i32, i1 } %426, 1, !nosanitize !20
  br i1 %427, label %428, label %429, !prof !21, !nosanitize !20

428:                                              ; preds = %423
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

429:                                              ; preds = %423
  %430 = extractvalue { i32, i1 } %426, 0, !nosanitize !20
  store i32 %430, ptr %40, align 8, !tbaa !34
  %431 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %431, ptr %46, align 8, !tbaa !35
  %432 = icmp eq i32 %430, 0
  br i1 %432, label %433, label %437

433:                                              ; preds = %429, %380
  %434 = load i32, ptr %48, align 4, !tbaa !17
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %457

436:                                              ; preds = %433
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %457

437:                                              ; preds = %429, %374
  %438 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %439 = load i32, ptr %43, align 8, !tbaa !48
  %440 = icmp ult i32 %439, %372
  br i1 %440, label %441, label %442

441:                                              ; preds = %437
  store i32 0, ptr %50, align 4, !tbaa !33
  br label %442

442:                                              ; preds = %441, %437
  switch i32 %438, label %453 [
    i32 -2, label %443
    i32 2, label %443
    i32 -4, label %444
    i32 -3, label %445
  ]

443:                                              ; preds = %442, %442
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %457

444:                                              ; preds = %442
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %457

445:                                              ; preds = %442
  %446 = load i32, ptr %50, align 4, !tbaa !33
  %447 = icmp eq i32 %446, 1
  br i1 %447, label %448, label %449

448:                                              ; preds = %445
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %457

449:                                              ; preds = %445
  %450 = load ptr, ptr %51, align 8, !tbaa !50
  %451 = icmp eq ptr %450, null
  %452 = select i1 %451, ptr @.str.6, ptr %450
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %452) #13
  br label %457

453:                                              ; preds = %442
  %454 = icmp ne i32 %439, 0
  %455 = icmp ne i32 %438, 1
  %456 = select i1 %454, i1 %455, i1 false
  br i1 %456, label %374, label %457, !llvm.loop !51

457:                                              ; preds = %453, %449, %448, %444, %443, %436, %433, %419, %378
  %458 = phi i32 [ %375, %433 ], [ %375, %436 ], [ %438, %443 ], [ -4, %444 ], [ 0, %448 ], [ -3, %449 ], [ %422, %419 ], [ %379, %378 ], [ %438, %453 ]
  %459 = load i32, ptr %43, align 8, !tbaa !48
  %460 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %372, i32 %459), !nosanitize !20
  %461 = extractvalue { i32, i1 } %460, 1, !nosanitize !20
  br i1 %461, label %462, label %463, !prof !21, !nosanitize !20

462:                                              ; preds = %457
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

463:                                              ; preds = %457
  %464 = extractvalue { i32, i1 } %460, 0, !nosanitize !20
  store i32 %464, ptr %0, align 8, !tbaa !19
  %465 = load ptr, ptr %45, align 8, !tbaa !49
  %466 = zext i32 %464 to i64
  %467 = sub nsw i64 0, %466
  %468 = getelementptr inbounds i8, ptr %465, i64 %467
  store ptr %468, ptr %37, align 8, !tbaa !22
  switch i32 %458, label %1149 [
    i32 1, label %469
    i32 0, label %471
  ]

469:                                              ; preds = %463
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %471

470:                                              ; preds = %88
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1149

471:                                              ; preds = %469, %463, %323, %317
  %472 = load i32, ptr %0, align 8, !tbaa !19
  br label %473

473:                                              ; preds = %471, %319
  %474 = phi i32 [ %472, %471 ], [ %322, %319 ]
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %483

476:                                              ; preds = %473
  %477 = load i32, ptr %39, align 8, !tbaa !24
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %482, label %479

479:                                              ; preds = %476
  %480 = load i32, ptr %40, align 8, !tbaa !34
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %483, label %482

482:                                              ; preds = %479, %476
  br label %88, !llvm.loop !52

483:                                              ; preds = %479, %473, %368, %323
  %484 = load i64, ptr %33, align 8, !tbaa !18
  br label %485

485:                                              ; preds = %483, %79
  %486 = phi i64 [ %484, %483 ], [ %80, %79 ]
  %487 = icmp eq i64 %486, 0
  br i1 %487, label %488, label %55, !llvm.loop !53

488:                                              ; preds = %485, %84, %32
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %490 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %492 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %493 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %495 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %496 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %497 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %498 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %499 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %500 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %501 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %502 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %503 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %504 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %505 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %506 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %507

507:                                              ; preds = %1127, %488
  %508 = phi ptr [ %2, %488 ], [ %1128, %1127 ]
  %509 = phi i64 [ 1, %488 ], [ %1129, %1127 ]
  %510 = phi i64 [ 0, %488 ], [ %1130, %1127 ]
  %511 = call i64 @llvm.umin.i64(i64 %509, i64 4294967295)
  %512 = trunc nuw i64 %511 to i32
  %513 = load i32, ptr %0, align 8, !tbaa !19
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %530, label %515

515:                                              ; preds = %507
  %516 = call i32 @llvm.umin.i32(i32 %513, i32 %512)
  %517 = load ptr, ptr %489, align 8, !tbaa !22
  %518 = zext i32 %516 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %508, ptr align 1 %517, i64 %518, i1 false)
  %519 = load ptr, ptr %489, align 8, !tbaa !22
  %520 = getelementptr inbounds nuw i8, ptr %519, i64 %518
  store ptr %520, ptr %489, align 8, !tbaa !22
  %521 = load i32, ptr %0, align 8, !tbaa !19
  %522 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %521, i32 %516), !nosanitize !20
  %523 = extractvalue { i32, i1 } %522, 1, !nosanitize !20
  br i1 %523, label %524, label %525, !prof !21, !nosanitize !20

524:                                              ; preds = %515
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

525:                                              ; preds = %515
  %526 = extractvalue { i32, i1 } %522, 0, !nosanitize !20
  store i32 %526, ptr %0, align 8, !tbaa !19
  %527 = load i32, ptr %9, align 8, !tbaa !16
  %528 = icmp ne i32 %527, 0
  %529 = sext i1 %528 to i32
  br label %1108

530:                                              ; preds = %507
  %531 = load i32, ptr %490, align 8, !tbaa !24
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %536, label %533

533:                                              ; preds = %530
  %534 = load i32, ptr %491, align 8, !tbaa !25
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %1140, label %536

536:                                              ; preds = %533, %530
  %537 = load i32, ptr %492, align 8, !tbaa !26
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %543, label %539

539:                                              ; preds = %536
  %540 = load i32, ptr %493, align 8, !tbaa !27
  %541 = shl i32 %540, 1
  %542 = icmp ugt i32 %541, %512
  br i1 %542, label %543, label %944

543:                                              ; preds = %539, %536
  br label %544

544:                                              ; preds = %938, %543
  %545 = phi i32 [ %939, %938 ], [ %537, %543 ]
  switch i32 %545, label %926 [
    i32 0, label %546
    i32 1, label %782
    i32 2, label %826
  ]

546:                                              ; preds = %544
  %547 = load i32, ptr %493, align 8, !tbaa !27
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %566

549:                                              ; preds = %546
  %550 = load i32, ptr %504, align 4, !tbaa !28
  %551 = zext i32 %550 to i64
  %552 = call noalias ptr @malloc(i64 noundef %551) #16
  store ptr %552, ptr %497, align 8, !tbaa !29
  %553 = shl i32 %550, 1
  %554 = zext i32 %553 to i64
  %555 = call noalias ptr @malloc(i64 noundef %554) #16
  store ptr %555, ptr %503, align 8, !tbaa !30
  %556 = icmp eq ptr %552, null
  %557 = icmp eq ptr %555, null
  %558 = or i1 %556, %557
  br i1 %558, label %559, label %560

559:                                              ; preds = %549
  call void @free(ptr noundef %555) #13
  call void @free(ptr noundef %552) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %940

560:                                              ; preds = %549
  store i32 %550, ptr %493, align 8, !tbaa !27
  store i32 0, ptr %491, align 8, !tbaa !25
  store ptr null, ptr %496, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %505, i8 0, i64 24, i1 false)
  %561 = call i32 @inflateInit2_(ptr noundef nonnull %496, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %566, label %563

563:                                              ; preds = %560
  %564 = load ptr, ptr %503, align 8, !tbaa !30
  call void @free(ptr noundef %564) #13
  %565 = load ptr, ptr %497, align 8, !tbaa !29
  call void @free(ptr noundef %565) #13
  store i32 0, ptr %493, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %940

566:                                              ; preds = %560, %546
  %567 = load i32, ptr %506, align 8, !tbaa !32
  %568 = icmp eq i32 %567, -1
  br i1 %568, label %572, label %569

569:                                              ; preds = %566
  %570 = load i32, ptr %500, align 4, !tbaa !33
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %572, label %577

572:                                              ; preds = %569, %566
  %573 = call i32 @inflateReset(ptr noundef nonnull %496) #13
  store i32 2, ptr %492, align 8, !tbaa !26
  %574 = load i32, ptr %500, align 4, !tbaa !33
  %575 = icmp ne i32 %574, -1
  %576 = zext i1 %575 to i32
  store i32 %576, ptr %500, align 4, !tbaa !33
  store i32 0, ptr %506, align 8, !tbaa !32
  br label %779

577:                                              ; preds = %569
  %578 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %578, label %940 [
    i32 0, label %579
    i32 -5, label %579
  ]

579:                                              ; preds = %577, %577
  %580 = load i32, ptr %490, align 8, !tbaa !24
  %581 = icmp eq i32 %580, 0
  %582 = load i32, ptr %491, align 8, !tbaa !34
  br i1 %581, label %583, label %747

583:                                              ; preds = %579
  %584 = icmp eq i32 %582, 0
  br i1 %584, label %691, label %585

585:                                              ; preds = %583
  %586 = load ptr, ptr %497, align 8, !tbaa !29
  %587 = load ptr, ptr %496, align 8, !tbaa !35
  %588 = icmp eq ptr %587, %586
  br i1 %588, label %691, label %589

589:                                              ; preds = %585
  %590 = ptrtoint ptr %587 to i64
  %591 = ptrtoint ptr %586 to i64
  %592 = zext i32 %582 to i64
  %593 = icmp ult i32 %582, 4
  %594 = sub i64 %591, %590
  %595 = icmp ult i64 %594, 32
  %596 = or i1 %593, %595
  br i1 %596, label %636, label %597

597:                                              ; preds = %589
  %598 = icmp ult i32 %582, 32
  br i1 %598, label %620, label %599

599:                                              ; preds = %597
  %600 = and i64 %592, 4294967264
  br label %601

601:                                              ; preds = %601, %599
  %602 = phi i64 [ 0, %599 ], [ %609, %601 ]
  %603 = getelementptr i8, ptr %586, i64 %602
  %604 = getelementptr i8, ptr %587, i64 %602
  %605 = getelementptr i8, ptr %604, i64 16
  %606 = load <16 x i8>, ptr %604, align 1, !tbaa !36
  %607 = load <16 x i8>, ptr %605, align 1, !tbaa !36
  %608 = getelementptr i8, ptr %603, i64 16
  store <16 x i8> %606, ptr %603, align 1, !tbaa !36
  store <16 x i8> %607, ptr %608, align 1, !tbaa !36
  %609 = add nuw i64 %602, 32
  %610 = icmp eq i64 %609, %600
  br i1 %610, label %611, label %601, !llvm.loop !82

611:                                              ; preds = %601
  %612 = icmp eq i64 %600, %592
  br i1 %612, label %689, label %613

613:                                              ; preds = %611
  %614 = getelementptr i8, ptr %586, i64 %600
  %615 = getelementptr i8, ptr %587, i64 %600
  %616 = trunc nuw i64 %600 to i32
  %617 = sub i32 %582, %616
  %618 = and i64 %592, 28
  %619 = icmp eq i64 %618, 0
  br i1 %619, label %636, label %620

620:                                              ; preds = %613, %597
  %621 = phi i64 [ %600, %613 ], [ 0, %597 ]
  %622 = and i64 %592, 4294967292
  %623 = getelementptr i8, ptr %586, i64 %622
  %624 = getelementptr i8, ptr %587, i64 %622
  %625 = trunc nuw i64 %622 to i32
  %626 = sub i32 %582, %625
  br label %627

627:                                              ; preds = %627, %620
  %628 = phi i64 [ %621, %620 ], [ %632, %627 ]
  %629 = getelementptr i8, ptr %586, i64 %628
  %630 = getelementptr i8, ptr %587, i64 %628
  %631 = load <4 x i8>, ptr %630, align 1, !tbaa !36
  store <4 x i8> %631, ptr %629, align 1, !tbaa !36
  %632 = add nuw i64 %628, 4
  %633 = icmp eq i64 %632, %622
  br i1 %633, label %634, label %627, !llvm.loop !83

634:                                              ; preds = %627
  %635 = icmp eq i64 %622, %592
  br i1 %635, label %689, label %636

636:                                              ; preds = %634, %613, %589
  %637 = phi ptr [ %586, %589 ], [ %614, %613 ], [ %623, %634 ]
  %638 = phi ptr [ %587, %589 ], [ %615, %613 ], [ %624, %634 ]
  %639 = phi i32 [ %582, %589 ], [ %617, %613 ], [ %626, %634 ]
  %640 = add i32 %639, -1
  %641 = and i32 %639, 7
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %654, label %643

643:                                              ; preds = %643, %636
  %644 = phi ptr [ %650, %643 ], [ %637, %636 ]
  %645 = phi ptr [ %651, %643 ], [ %638, %636 ]
  %646 = phi i32 [ %649, %643 ], [ %639, %636 ]
  %647 = phi i32 [ %652, %643 ], [ 0, %636 ]
  %648 = load i8, ptr %645, align 1, !tbaa !36
  store i8 %648, ptr %644, align 1, !tbaa !36
  %649 = add i32 %646, -1
  %650 = getelementptr inbounds nuw i8, ptr %644, i64 1
  %651 = getelementptr inbounds nuw i8, ptr %645, i64 1
  %652 = add i32 %647, 1
  %653 = icmp eq i32 %652, %641
  br i1 %653, label %654, label %643, !llvm.loop !84

654:                                              ; preds = %643, %636
  %655 = phi ptr [ %637, %636 ], [ %650, %643 ]
  %656 = phi ptr [ %638, %636 ], [ %651, %643 ]
  %657 = phi i32 [ %639, %636 ], [ %649, %643 ]
  %658 = icmp ult i32 %640, 7
  br i1 %658, label %689, label %659

659:                                              ; preds = %659, %654
  %660 = phi ptr [ %686, %659 ], [ %655, %654 ]
  %661 = phi ptr [ %687, %659 ], [ %656, %654 ]
  %662 = phi i32 [ %685, %659 ], [ %657, %654 ]
  %663 = load i8, ptr %661, align 1, !tbaa !36
  store i8 %663, ptr %660, align 1, !tbaa !36
  %664 = getelementptr inbounds nuw i8, ptr %660, i64 1
  %665 = getelementptr inbounds nuw i8, ptr %661, i64 1
  %666 = load i8, ptr %665, align 1, !tbaa !36
  store i8 %666, ptr %664, align 1, !tbaa !36
  %667 = getelementptr inbounds nuw i8, ptr %660, i64 2
  %668 = getelementptr inbounds nuw i8, ptr %661, i64 2
  %669 = load i8, ptr %668, align 1, !tbaa !36
  store i8 %669, ptr %667, align 1, !tbaa !36
  %670 = getelementptr inbounds nuw i8, ptr %660, i64 3
  %671 = getelementptr inbounds nuw i8, ptr %661, i64 3
  %672 = load i8, ptr %671, align 1, !tbaa !36
  store i8 %672, ptr %670, align 1, !tbaa !36
  %673 = getelementptr inbounds nuw i8, ptr %660, i64 4
  %674 = getelementptr inbounds nuw i8, ptr %661, i64 4
  %675 = load i8, ptr %674, align 1, !tbaa !36
  store i8 %675, ptr %673, align 1, !tbaa !36
  %676 = getelementptr inbounds nuw i8, ptr %660, i64 5
  %677 = getelementptr inbounds nuw i8, ptr %661, i64 5
  %678 = load i8, ptr %677, align 1, !tbaa !36
  store i8 %678, ptr %676, align 1, !tbaa !36
  %679 = getelementptr inbounds nuw i8, ptr %660, i64 6
  %680 = getelementptr inbounds nuw i8, ptr %661, i64 6
  %681 = load i8, ptr %680, align 1, !tbaa !36
  store i8 %681, ptr %679, align 1, !tbaa !36
  %682 = getelementptr inbounds nuw i8, ptr %660, i64 7
  %683 = getelementptr inbounds nuw i8, ptr %661, i64 7
  %684 = load i8, ptr %683, align 1, !tbaa !36
  store i8 %684, ptr %682, align 1, !tbaa !36
  %685 = add i32 %662, -8
  %686 = getelementptr inbounds nuw i8, ptr %660, i64 8
  %687 = getelementptr inbounds nuw i8, ptr %661, i64 8
  %688 = icmp eq i32 %685, 0
  br i1 %688, label %689, label %659, !llvm.loop !85

689:                                              ; preds = %659, %654, %634, %611
  %690 = load i32, ptr %491, align 8, !tbaa !34
  br label %691

691:                                              ; preds = %689, %585, %583
  %692 = phi i32 [ %690, %689 ], [ %582, %585 ], [ 0, %583 ]
  %693 = load i32, ptr %493, align 8, !tbaa !27
  %694 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %693, i32 %692), !nosanitize !20
  %695 = extractvalue { i32, i1 } %694, 1, !nosanitize !20
  br i1 %695, label %696, label %697, !prof !21, !nosanitize !20

696:                                              ; preds = %691
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

697:                                              ; preds = %691
  %698 = extractvalue { i32, i1 } %694, 0, !nosanitize !20
  %699 = load ptr, ptr %497, align 8, !tbaa !29
  %700 = zext i32 %692 to i64
  %701 = getelementptr inbounds nuw i8, ptr %699, i64 %700
  store i32 0, ptr %498, align 4, !tbaa !17
  %702 = tail call ptr @__errno_location() #17
  store i32 0, ptr %702, align 4, !tbaa !45
  br label %703

703:                                              ; preds = %722, %697
  %704 = phi i32 [ 0, %697 ], [ %723, %722 ]
  %705 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %698, i32 %704), !nosanitize !20
  %706 = extractvalue { i32, i1 } %705, 1, !nosanitize !20
  br i1 %706, label %707, label %708, !prof !21, !nosanitize !20

707:                                              ; preds = %703
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

708:                                              ; preds = %703
  %709 = extractvalue { i32, i1 } %705, 0, !nosanitize !20
  %710 = call i32 @llvm.umin.i32(i32 %709, i32 1073741824)
  %711 = load i32, ptr %499, align 4, !tbaa !46
  %712 = zext i32 %704 to i64
  %713 = getelementptr inbounds nuw i8, ptr %701, i64 %712
  %714 = zext nneg i32 %710 to i64
  %715 = call i64 @read(i32 noundef %711, ptr noundef %713, i64 noundef %714) #13
  %716 = trunc i64 %715 to i32
  %717 = icmp slt i32 %716, 1
  br i1 %717, label %725, label %718

718:                                              ; preds = %708
  %719 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %704, i32 %716), !nosanitize !20
  %720 = extractvalue { i32, i1 } %719, 1, !nosanitize !20
  br i1 %720, label %721, label %722, !prof !21, !nosanitize !20

721:                                              ; preds = %718
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

722:                                              ; preds = %718
  %723 = extractvalue { i32, i1 } %719, 0, !nosanitize !20
  %724 = icmp ult i32 %723, %698
  br i1 %724, label %703, label %738, !llvm.loop !47

725:                                              ; preds = %708
  %726 = icmp slt i32 %716, 0
  br i1 %726, label %727, label %734

727:                                              ; preds = %725
  %728 = load i32, ptr %702, align 4, !tbaa !45
  %729 = icmp eq i32 %728, 11
  br i1 %729, label %730, label %735

730:                                              ; preds = %727
  store i32 1, ptr %498, align 4, !tbaa !17
  %731 = icmp eq i32 %704, 0
  br i1 %731, label %732, label %738

732:                                              ; preds = %730
  %733 = load i32, ptr %702, align 4, !tbaa !45
  br label %735

734:                                              ; preds = %725
  store i32 1, ptr %490, align 8, !tbaa !24
  br label %738

735:                                              ; preds = %732, %727
  %736 = phi i32 [ %733, %732 ], [ %728, %727 ]
  %737 = call ptr @strerror(i32 noundef %736) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %737) #13
  br label %940

738:                                              ; preds = %734, %730, %722
  %739 = phi i32 [ %704, %734 ], [ %704, %730 ], [ %723, %722 ]
  %740 = load i32, ptr %491, align 8, !tbaa !34
  %741 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %740, i32 %739), !nosanitize !20
  %742 = extractvalue { i32, i1 } %741, 1, !nosanitize !20
  br i1 %742, label %743, label %744, !prof !21, !nosanitize !20

743:                                              ; preds = %738
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

744:                                              ; preds = %738
  %745 = extractvalue { i32, i1 } %741, 0, !nosanitize !20
  store i32 %745, ptr %491, align 8, !tbaa !34
  %746 = load ptr, ptr %497, align 8, !tbaa !29
  store ptr %746, ptr %496, align 8, !tbaa !35
  br label %747

747:                                              ; preds = %744, %579
  %748 = phi i32 [ %745, %744 ], [ %582, %579 ]
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %779, label %750

750:                                              ; preds = %747
  %751 = load i32, ptr %498, align 4, !tbaa !17
  %752 = icmp ne i32 %751, 0
  %753 = icmp ult i32 %748, 4
  %754 = and i1 %753, %752
  br i1 %754, label %779, label %755

755:                                              ; preds = %750
  %756 = icmp ugt i32 %748, 3
  %757 = load ptr, ptr %496, align 8, !tbaa !35
  br i1 %756, label %758, label %775

758:                                              ; preds = %755
  %759 = load i8, ptr %757, align 1, !tbaa !36
  %760 = icmp eq i8 %759, 31
  br i1 %760, label %761, label %775

761:                                              ; preds = %758
  %762 = getelementptr inbounds nuw i8, ptr %757, i64 1
  %763 = load i8, ptr %762, align 1, !tbaa !36
  %764 = icmp eq i8 %763, -117
  br i1 %764, label %765, label %775

765:                                              ; preds = %761
  %766 = getelementptr inbounds nuw i8, ptr %757, i64 2
  %767 = load i8, ptr %766, align 1, !tbaa !36
  %768 = icmp eq i8 %767, 8
  br i1 %768, label %769, label %775

769:                                              ; preds = %765
  %770 = getelementptr inbounds nuw i8, ptr %757, i64 3
  %771 = load i8, ptr %770, align 1, !tbaa !36
  %772 = icmp ult i8 %771, 32
  br i1 %772, label %773, label %775

773:                                              ; preds = %769
  %774 = call i32 @inflateReset(ptr noundef nonnull %496) #13
  store i32 2, ptr %492, align 8, !tbaa !26
  store i32 1, ptr %500, align 4, !tbaa !33
  store i32 0, ptr %506, align 8, !tbaa !32
  br label %927

775:                                              ; preds = %769, %765, %761, %758, %755
  %776 = load ptr, ptr %503, align 8, !tbaa !30
  store ptr %776, ptr %489, align 8, !tbaa !22
  %777 = zext i32 %748 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %776, ptr align 1 %757, i64 %777, i1 false)
  %778 = load i32, ptr %491, align 8, !tbaa !34
  store i32 %778, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %491, align 8, !tbaa !34
  store i32 1, ptr %492, align 8, !tbaa !26
  br label %929

779:                                              ; preds = %750, %747, %572
  %780 = load i32, ptr %492, align 8, !tbaa !26
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %1127, label %927

782:                                              ; preds = %544
  %783 = load ptr, ptr %503, align 8, !tbaa !30
  %784 = load i32, ptr %493, align 8, !tbaa !27
  %785 = shl i32 %784, 1
  store i32 0, ptr %498, align 4, !tbaa !17
  %786 = tail call ptr @__errno_location() #17
  store i32 0, ptr %786, align 4, !tbaa !45
  store i32 0, ptr %0, align 4, !tbaa !45
  br label %787

787:                                              ; preds = %807, %782
  %788 = phi i32 [ %808, %807 ], [ 0, %782 ]
  %789 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %785, i32 %788), !nosanitize !20
  %790 = extractvalue { i32, i1 } %789, 1, !nosanitize !20
  br i1 false, label %791, label %792, !prof !21, !nosanitize !20

791:                                              ; preds = %787
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

792:                                              ; preds = %787
  %793 = extractvalue { i32, i1 } %789, 0, !nosanitize !20
  %794 = call i32 @llvm.umin.i32(i32 %793, i32 1073741824)
  %795 = load i32, ptr %499, align 4, !tbaa !46
  %796 = zext i32 %788 to i64
  %797 = getelementptr inbounds nuw i8, ptr %783, i64 %796
  %798 = zext nneg i32 %794 to i64
  %799 = call i64 @read(i32 noundef %795, ptr noundef %797, i64 noundef %798) #13
  %800 = trunc i64 %799 to i32
  %801 = icmp slt i32 %800, 1
  br i1 %801, label %810, label %802

802:                                              ; preds = %792
  %803 = load i32, ptr %0, align 4, !tbaa !45
  %804 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %803, i32 %800), !nosanitize !20
  %805 = extractvalue { i32, i1 } %804, 1, !nosanitize !20
  br i1 %805, label %806, label %807, !prof !21, !nosanitize !20

806:                                              ; preds = %802
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

807:                                              ; preds = %802
  %808 = extractvalue { i32, i1 } %804, 0, !nosanitize !20
  store i32 %808, ptr %0, align 4, !tbaa !45
  %809 = icmp ult i32 %808, %785
  br i1 %809, label %787, label %824, !llvm.loop !47

810:                                              ; preds = %792
  %811 = icmp slt i32 %800, 0
  br i1 %811, label %812, label %820

812:                                              ; preds = %810
  %813 = load i32, ptr %786, align 4, !tbaa !45
  %814 = icmp eq i32 %813, 11
  br i1 %814, label %815, label %821

815:                                              ; preds = %812
  store i32 1, ptr %498, align 4, !tbaa !17
  %816 = load i32, ptr %0, align 4, !tbaa !45
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %818, label %824

818:                                              ; preds = %815
  %819 = load i32, ptr %786, align 4, !tbaa !45
  br label %821

820:                                              ; preds = %810
  store i32 1, ptr %490, align 8, !tbaa !24
  br label %824

821:                                              ; preds = %818, %812
  %822 = phi i32 [ %819, %818 ], [ %813, %812 ]
  %823 = call ptr @strerror(i32 noundef %822) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %823) #13
  br label %940

824:                                              ; preds = %820, %815, %807
  %825 = load ptr, ptr %503, align 8, !tbaa !30
  store ptr %825, ptr %489, align 8, !tbaa !22
  br label %1127

826:                                              ; preds = %544
  %827 = load i32, ptr %493, align 8, !tbaa !27
  %828 = shl i32 %827, 1
  store i32 %828, ptr %494, align 8, !tbaa !48
  %829 = load ptr, ptr %503, align 8, !tbaa !30
  store ptr %829, ptr %495, align 8, !tbaa !49
  br label %830

830:                                              ; preds = %909, %826
  %831 = phi i32 [ 0, %826 ], [ %894, %909 ]
  %832 = load i32, ptr %491, align 8, !tbaa !34
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %834, label %893

834:                                              ; preds = %830
  %835 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %835, label %913 [
    i32 0, label %836
    i32 -5, label %836
  ]

836:                                              ; preds = %834, %834
  %837 = load i32, ptr %490, align 8, !tbaa !24
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %839, label %889

839:                                              ; preds = %836
  %840 = load i32, ptr %493, align 8, !tbaa !27
  %841 = load ptr, ptr %497, align 8, !tbaa !29
  store i32 0, ptr %498, align 4, !tbaa !17
  %842 = tail call ptr @__errno_location() #17
  store i32 0, ptr %842, align 4, !tbaa !45
  br label %843

843:                                              ; preds = %862, %839
  %844 = phi i32 [ 0, %839 ], [ %863, %862 ]
  %845 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %840, i32 %844), !nosanitize !20
  %846 = extractvalue { i32, i1 } %845, 1, !nosanitize !20
  br i1 false, label %847, label %848, !prof !21, !nosanitize !20

847:                                              ; preds = %843
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

848:                                              ; preds = %843
  %849 = extractvalue { i32, i1 } %845, 0, !nosanitize !20
  %850 = call i32 @llvm.umin.i32(i32 %849, i32 1073741824)
  %851 = load i32, ptr %499, align 4, !tbaa !46
  %852 = zext i32 %844 to i64
  %853 = getelementptr inbounds nuw i8, ptr %841, i64 %852
  %854 = zext nneg i32 %850 to i64
  %855 = call i64 @read(i32 noundef %851, ptr noundef %853, i64 noundef %854) #13
  %856 = trunc i64 %855 to i32
  %857 = icmp slt i32 %856, 1
  br i1 %857, label %865, label %858

858:                                              ; preds = %848
  %859 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %844, i32 %856), !nosanitize !20
  %860 = extractvalue { i32, i1 } %859, 1, !nosanitize !20
  br i1 %860, label %861, label %862, !prof !21, !nosanitize !20

861:                                              ; preds = %858
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

862:                                              ; preds = %858
  %863 = extractvalue { i32, i1 } %859, 0, !nosanitize !20
  %864 = icmp ult i32 %863, %840
  br i1 %864, label %843, label %879, !llvm.loop !47

865:                                              ; preds = %848
  %866 = icmp slt i32 %856, 0
  br i1 %866, label %867, label %874

867:                                              ; preds = %865
  %868 = load i32, ptr %842, align 4, !tbaa !45
  %869 = icmp eq i32 %868, 11
  br i1 %869, label %870, label %875

870:                                              ; preds = %867
  store i32 1, ptr %498, align 4, !tbaa !17
  %871 = icmp eq i32 %844, 0
  br i1 %871, label %872, label %879

872:                                              ; preds = %870
  %873 = load i32, ptr %842, align 4, !tbaa !45
  br label %875

874:                                              ; preds = %865
  store i32 1, ptr %490, align 8, !tbaa !24
  br label %879

875:                                              ; preds = %872, %867
  %876 = phi i32 [ %873, %872 ], [ %868, %867 ]
  %877 = call ptr @strerror(i32 noundef %876) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %877) #13
  %878 = load i32, ptr %9, align 8, !tbaa !16
  br label %913

879:                                              ; preds = %874, %870, %862
  %880 = phi i32 [ %844, %874 ], [ %844, %870 ], [ %863, %862 ]
  %881 = load i32, ptr %491, align 8, !tbaa !34
  %882 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %881, i32 %880), !nosanitize !20
  %883 = extractvalue { i32, i1 } %882, 1, !nosanitize !20
  br i1 %883, label %884, label %885, !prof !21, !nosanitize !20

884:                                              ; preds = %879
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

885:                                              ; preds = %879
  %886 = extractvalue { i32, i1 } %882, 0, !nosanitize !20
  store i32 %886, ptr %491, align 8, !tbaa !34
  %887 = load ptr, ptr %497, align 8, !tbaa !29
  store ptr %887, ptr %496, align 8, !tbaa !35
  %888 = icmp eq i32 %886, 0
  br i1 %888, label %889, label %893

889:                                              ; preds = %885, %836
  %890 = load i32, ptr %498, align 4, !tbaa !17
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %892, label %913

892:                                              ; preds = %889
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %913

893:                                              ; preds = %885, %830
  %894 = call i32 @inflate(ptr noundef nonnull %496, i32 noundef 0) #13
  %895 = load i32, ptr %494, align 8, !tbaa !48
  %896 = icmp ult i32 %895, %828
  br i1 %896, label %897, label %898

897:                                              ; preds = %893
  store i32 0, ptr %500, align 4, !tbaa !33
  br label %898

898:                                              ; preds = %897, %893
  switch i32 %894, label %909 [
    i32 -2, label %899
    i32 2, label %899
    i32 -4, label %900
    i32 -3, label %901
  ]

899:                                              ; preds = %898, %898
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %913

900:                                              ; preds = %898
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %913

901:                                              ; preds = %898
  %902 = load i32, ptr %500, align 4, !tbaa !33
  %903 = icmp eq i32 %902, 1
  br i1 %903, label %904, label %905

904:                                              ; preds = %901
  store i32 0, ptr %491, align 8, !tbaa !34
  store i32 1, ptr %490, align 8, !tbaa !24
  store i32 0, ptr %492, align 8, !tbaa !26
  br label %913

905:                                              ; preds = %901
  %906 = load ptr, ptr %501, align 8, !tbaa !50
  %907 = icmp eq ptr %906, null
  %908 = select i1 %907, ptr @.str.6, ptr %906
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %908) #13
  br label %913

909:                                              ; preds = %898
  %910 = icmp ne i32 %895, 0
  %911 = icmp ne i32 %894, 1
  %912 = select i1 %910, i1 %911, i1 false
  br i1 %912, label %830, label %913, !llvm.loop !51

913:                                              ; preds = %909, %905, %904, %900, %899, %892, %889, %875, %834
  %914 = phi i32 [ %831, %889 ], [ %831, %892 ], [ %894, %899 ], [ -4, %900 ], [ 0, %904 ], [ -3, %905 ], [ %878, %875 ], [ %894, %909 ], [ %835, %834 ]
  %915 = load i32, ptr %494, align 8, !tbaa !48
  %916 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %828, i32 %915), !nosanitize !20
  %917 = extractvalue { i32, i1 } %916, 1, !nosanitize !20
  br i1 %917, label %918, label %919, !prof !21, !nosanitize !20

918:                                              ; preds = %913
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

919:                                              ; preds = %913
  %920 = extractvalue { i32, i1 } %916, 0, !nosanitize !20
  store i32 %920, ptr %0, align 8, !tbaa !19
  %921 = load ptr, ptr %495, align 8, !tbaa !49
  %922 = zext i32 %920 to i64
  %923 = sub nsw i64 0, %922
  %924 = getelementptr inbounds i8, ptr %921, i64 %923
  store ptr %924, ptr %489, align 8, !tbaa !22
  switch i32 %914, label %940 [
    i32 1, label %925
    i32 0, label %927
  ]

925:                                              ; preds = %919
  store i32 0, ptr %500, align 4, !tbaa !33
  store i32 0, ptr %492, align 8, !tbaa !26
  br label %927

926:                                              ; preds = %544
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %940

927:                                              ; preds = %925, %919, %779, %773
  %928 = load i32, ptr %0, align 8, !tbaa !19
  br label %929

929:                                              ; preds = %927, %775
  %930 = phi i32 [ %928, %927 ], [ %778, %775 ]
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %932, label %1127

932:                                              ; preds = %929
  %933 = load i32, ptr %490, align 8, !tbaa !24
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %938, label %935

935:                                              ; preds = %932
  %936 = load i32, ptr %491, align 8, !tbaa !34
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %1127, label %938

938:                                              ; preds = %935, %932
  %939 = load i32, ptr %492, align 8, !tbaa !26
  br label %544, !llvm.loop !52

940:                                              ; preds = %926, %919, %821, %735, %577, %563, %559
  %941 = load i32, ptr %0, align 8, !tbaa !19
  %942 = icmp eq i32 %941, 0
  %943 = sext i1 %942 to i32
  br label %1127

944:                                              ; preds = %539
  %945 = icmp eq i32 %537, 1
  br i1 %945, label %946, label %1003

946:                                              ; preds = %944
  store i32 0, ptr %498, align 4, !tbaa !17
  %947 = tail call ptr @__errno_location() #17
  store i32 0, ptr %947, align 4, !tbaa !45
  %mv.h = icmp sge i64 %509, 0
  %mv.h11 = icmp sle i64 %509, 2147483648
  %mv.h12 = and i1 %mv.h, %mv.h11
  %mv.h.fr = freeze i1 %mv.h12
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %946
  br label %948

948:                                              ; preds = %965, %.mv.ph.mv.fast
  %949 = phi i32 [ 0, %.mv.ph.mv.fast ], [ %966, %965 ]
  %950 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %512, i32 %949), !nosanitize !20
  %951 = extractvalue { i32, i1 } %950, 1, !nosanitize !20
  br i1 false, label %972, label %952, !prof !21, !nosanitize !20

952:                                              ; preds = %948
  %953 = extractvalue { i32, i1 } %950, 0, !nosanitize !20
  %954 = call i32 @llvm.umin.i32(i32 %953, i32 1073741824)
  %955 = load i32, ptr %499, align 4, !tbaa !46
  %956 = zext i32 %949 to i64
  %957 = getelementptr inbounds nuw i8, ptr %508, i64 %956
  %958 = zext nneg i32 %954 to i64
  %959 = call i64 @read(i32 noundef %955, ptr noundef %957, i64 noundef %958) #13
  %960 = trunc i64 %959 to i32
  %961 = icmp slt i32 %960, 1
  br i1 %961, label %990, label %962

962:                                              ; preds = %952
  %963 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %949, i32 %960), !nosanitize !20
  %964 = extractvalue { i32, i1 } %963, 1, !nosanitize !20
  br i1 false, label %986, label %965, !prof !21, !nosanitize !20

965:                                              ; preds = %962
  %966 = extractvalue { i32, i1 } %963, 0, !nosanitize !20
  %967 = icmp ult i32 %966, %512
  br i1 %967, label %948, label %1106, !llvm.loop !47

.mv.ph:                                           ; preds = %946
  br label %968

968:                                              ; preds = %987, %.mv.ph
  %969 = phi i32 [ 0, %.mv.ph ], [ %988, %987 ]
  %970 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %512, i32 %969), !nosanitize !20
  %971 = extractvalue { i32, i1 } %970, 1, !nosanitize !20
  br i1 false, label %972, label %973, !prof !21, !nosanitize !20

972:                                              ; preds = %948, %968
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

973:                                              ; preds = %968
  %974 = extractvalue { i32, i1 } %970, 0, !nosanitize !20
  %975 = call i32 @llvm.umin.i32(i32 %974, i32 1073741824)
  %976 = load i32, ptr %499, align 4, !tbaa !46
  %977 = zext i32 %969 to i64
  %978 = getelementptr inbounds nuw i8, ptr %508, i64 %977
  %979 = zext nneg i32 %975 to i64
  %980 = call i64 @read(i32 noundef %976, ptr noundef %978, i64 noundef %979) #13
  %981 = trunc i64 %980 to i32
  %982 = icmp slt i32 %981, 1
  br i1 %982, label %990, label %983

983:                                              ; preds = %973
  %984 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %969, i32 %981), !nosanitize !20
  %985 = extractvalue { i32, i1 } %984, 1, !nosanitize !20
  br i1 %985, label %986, label %987, !prof !21, !nosanitize !20

986:                                              ; preds = %962, %983
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

987:                                              ; preds = %983
  %988 = extractvalue { i32, i1 } %984, 0, !nosanitize !20
  %989 = icmp ult i32 %988, %512
  br i1 %989, label %968, label %1106, !llvm.loop !47

990:                                              ; preds = %952, %973
  %.lcssa7 = phi i64 [ %977, %973 ], [ %956, %952 ]
  %.lcssa4 = phi i32 [ %981, %973 ], [ %960, %952 ]
  %.lcssa1 = phi i32 [ %969, %973 ], [ %949, %952 ]
  %991 = icmp slt i32 %.lcssa4, 0
  br i1 %991, label %992, label %1002

992:                                              ; preds = %990
  %993 = load i32, ptr %947, align 4, !tbaa !45
  %994 = icmp eq i32 %993, 11
  br i1 %994, label %995, label %999

995:                                              ; preds = %992
  store i32 1, ptr %498, align 4, !tbaa !17
  %996 = icmp eq i32 %.lcssa1, 0
  br i1 %996, label %997, label %1108

997:                                              ; preds = %995
  %998 = load i32, ptr %947, align 4, !tbaa !45
  br label %999

999:                                              ; preds = %997, %992
  %1000 = phi i32 [ %998, %997 ], [ %993, %992 ]
  %1001 = call ptr @strerror(i32 noundef %1000) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1001) #13
  br label %1108

1002:                                             ; preds = %990
  store i32 1, ptr %490, align 8, !tbaa !24
  br label %1108

1003:                                             ; preds = %944
  store i32 %512, ptr %494, align 8, !tbaa !58
  store ptr %508, ptr %495, align 8, !tbaa !59
  br label %1004

1004:                                             ; preds = %1083, %1003
  %1005 = phi i32 [ 0, %1003 ], [ %1068, %1083 ]
  %1006 = load i32, ptr %491, align 8, !tbaa !34
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1008, label %1067

1008:                                             ; preds = %1004
  %1009 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %1009, label %1087 [
    i32 0, label %1010
    i32 -5, label %1010
  ]

1010:                                             ; preds = %1008, %1008
  %1011 = load i32, ptr %490, align 8, !tbaa !24
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1013, label %1063

1013:                                             ; preds = %1010
  %1014 = load i32, ptr %493, align 8, !tbaa !27
  %1015 = load ptr, ptr %497, align 8, !tbaa !29
  store i32 0, ptr %498, align 4, !tbaa !17
  %1016 = tail call ptr @__errno_location() #17
  store i32 0, ptr %1016, align 4, !tbaa !45
  br label %1017

1017:                                             ; preds = %1036, %1013
  %1018 = phi i32 [ 0, %1013 ], [ %1037, %1036 ]
  %1019 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1014, i32 %1018), !nosanitize !20
  %1020 = extractvalue { i32, i1 } %1019, 1, !nosanitize !20
  br i1 %1020, label %1021, label %1022, !prof !21, !nosanitize !20

1021:                                             ; preds = %1017
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1022:                                             ; preds = %1017
  %1023 = extractvalue { i32, i1 } %1019, 0, !nosanitize !20
  %1024 = call i32 @llvm.umin.i32(i32 %1023, i32 1073741824)
  %1025 = load i32, ptr %499, align 4, !tbaa !46
  %1026 = zext i32 %1018 to i64
  %1027 = getelementptr inbounds nuw i8, ptr %1015, i64 %1026
  %1028 = zext nneg i32 %1024 to i64
  %1029 = call i64 @read(i32 noundef %1025, ptr noundef %1027, i64 noundef %1028) #13
  %1030 = trunc i64 %1029 to i32
  %1031 = icmp slt i32 %1030, 1
  br i1 %1031, label %1039, label %1032

1032:                                             ; preds = %1022
  %1033 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1018, i32 %1030), !nosanitize !20
  %1034 = extractvalue { i32, i1 } %1033, 1, !nosanitize !20
  br i1 %1034, label %1035, label %1036, !prof !21, !nosanitize !20

1035:                                             ; preds = %1032
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1036:                                             ; preds = %1032
  %1037 = extractvalue { i32, i1 } %1033, 0, !nosanitize !20
  %1038 = icmp ult i32 %1037, %1014
  br i1 %1038, label %1017, label %1053, !llvm.loop !47

1039:                                             ; preds = %1022
  %1040 = icmp slt i32 %1030, 0
  br i1 %1040, label %1041, label %1048

1041:                                             ; preds = %1039
  %1042 = load i32, ptr %1016, align 4, !tbaa !45
  %1043 = icmp eq i32 %1042, 11
  br i1 %1043, label %1044, label %1049

1044:                                             ; preds = %1041
  store i32 1, ptr %498, align 4, !tbaa !17
  %1045 = icmp eq i32 %1018, 0
  br i1 %1045, label %1046, label %1053

1046:                                             ; preds = %1044
  %1047 = load i32, ptr %1016, align 4, !tbaa !45
  br label %1049

1048:                                             ; preds = %1039
  store i32 1, ptr %490, align 8, !tbaa !24
  br label %1053

1049:                                             ; preds = %1046, %1041
  %1050 = phi i32 [ %1047, %1046 ], [ %1042, %1041 ]
  %1051 = call ptr @strerror(i32 noundef %1050) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1051) #13
  %1052 = load i32, ptr %9, align 8, !tbaa !16
  br label %1087

1053:                                             ; preds = %1048, %1044, %1036
  %1054 = phi i32 [ %1018, %1048 ], [ %1018, %1044 ], [ %1037, %1036 ]
  %1055 = load i32, ptr %491, align 8, !tbaa !34
  %1056 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1055, i32 %1054), !nosanitize !20
  %1057 = extractvalue { i32, i1 } %1056, 1, !nosanitize !20
  br i1 %1057, label %1058, label %1059, !prof !21, !nosanitize !20

1058:                                             ; preds = %1053
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1059:                                             ; preds = %1053
  %1060 = extractvalue { i32, i1 } %1056, 0, !nosanitize !20
  store i32 %1060, ptr %491, align 8, !tbaa !34
  %1061 = load ptr, ptr %497, align 8, !tbaa !29
  store ptr %1061, ptr %496, align 8, !tbaa !35
  %1062 = icmp eq i32 %1060, 0
  br i1 %1062, label %1063, label %1067

1063:                                             ; preds = %1059, %1010
  %1064 = load i32, ptr %498, align 4, !tbaa !17
  %1065 = icmp eq i32 %1064, 0
  br i1 %1065, label %1066, label %1087

1066:                                             ; preds = %1063
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %1087

1067:                                             ; preds = %1059, %1004
  %1068 = call i32 @inflate(ptr noundef nonnull %496, i32 noundef 0) #13
  %1069 = load i32, ptr %494, align 8, !tbaa !48
  %1070 = icmp ult i32 %1069, %512
  br i1 %1070, label %1071, label %1072

1071:                                             ; preds = %1067
  store i32 0, ptr %500, align 4, !tbaa !33
  br label %1072

1072:                                             ; preds = %1071, %1067
  switch i32 %1068, label %1083 [
    i32 -2, label %1073
    i32 2, label %1073
    i32 -4, label %1074
    i32 -3, label %1075
  ]

1073:                                             ; preds = %1072, %1072
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %1087

1074:                                             ; preds = %1072
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1087

1075:                                             ; preds = %1072
  %1076 = load i32, ptr %500, align 4, !tbaa !33
  %1077 = icmp eq i32 %1076, 1
  br i1 %1077, label %1078, label %1079

1078:                                             ; preds = %1075
  store i32 0, ptr %491, align 8, !tbaa !34
  store i32 1, ptr %490, align 8, !tbaa !24
  store i32 0, ptr %492, align 8, !tbaa !26
  br label %1087

1079:                                             ; preds = %1075
  %1080 = load ptr, ptr %501, align 8, !tbaa !50
  %1081 = icmp eq ptr %1080, null
  %1082 = select i1 %1081, ptr @.str.6, ptr %1080
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1082) #13
  br label %1087

1083:                                             ; preds = %1072
  %1084 = icmp ne i32 %1069, 0
  %1085 = icmp ne i32 %1068, 1
  %1086 = select i1 %1084, i1 %1085, i1 false
  br i1 %1086, label %1004, label %1087, !llvm.loop !51

1087:                                             ; preds = %1083, %1079, %1078, %1074, %1073, %1066, %1063, %1049, %1008
  %1088 = phi i32 [ %1005, %1063 ], [ %1005, %1066 ], [ %1068, %1073 ], [ -4, %1074 ], [ 0, %1078 ], [ -3, %1079 ], [ %1052, %1049 ], [ %1009, %1008 ], [ %1068, %1083 ]
  %1089 = load i32, ptr %494, align 8, !tbaa !48
  %1090 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %512, i32 %1089), !nosanitize !20
  %1091 = extractvalue { i32, i1 } %1090, 1, !nosanitize !20
  br i1 %1091, label %1092, label %1093, !prof !21, !nosanitize !20

1092:                                             ; preds = %1087
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1093:                                             ; preds = %1087
  %1094 = extractvalue { i32, i1 } %1090, 0, !nosanitize !20
  %1095 = load ptr, ptr %495, align 8, !tbaa !49
  %1096 = zext i32 %1094 to i64
  %1097 = sub nsw i64 0, %1096
  %1098 = getelementptr inbounds i8, ptr %1095, i64 %1097
  store ptr %1098, ptr %489, align 8, !tbaa !22
  %1099 = icmp eq i32 %1088, 1
  br i1 %1099, label %1100, label %1101

1100:                                             ; preds = %1093
  store i32 0, ptr %500, align 4, !tbaa !33
  store i32 0, ptr %492, align 8, !tbaa !26
  br label %1104

1101:                                             ; preds = %1093
  %1102 = icmp ne i32 %1088, 0
  %1103 = sext i1 %1102 to i32
  br label %1104

1104:                                             ; preds = %1101, %1100
  %1105 = phi i32 [ 0, %1100 ], [ %1103, %1101 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1108

1106:                                             ; preds = %965, %987
  %.lcssa10 = phi i32 [ %988, %987 ], [ %966, %965 ]
  %1107 = zext i32 %.lcssa10 to i64
  br label %1108

1108:                                             ; preds = %1106, %1104, %1002, %999, %995, %525
  %1109 = phi i64 [ %1107, %1106 ], [ %.lcssa7, %1002 ], [ %.lcssa7, %999 ], [ %.lcssa7, %995 ], [ %518, %525 ], [ %1096, %1104 ]
  %1110 = phi i32 [ 0, %1106 ], [ 0, %1002 ], [ -1, %999 ], [ 0, %995 ], [ %529, %525 ], [ %1105, %1104 ]
  %1111 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %509, i64 %1109), !nosanitize !20
  %1112 = extractvalue { i64, i1 } %1111, 0, !nosanitize !20
  %1113 = extractvalue { i64, i1 } %1111, 1, !nosanitize !20
  br i1 %1113, label %1114, label %1115, !prof !21, !nosanitize !20

1114:                                             ; preds = %1108
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1115:                                             ; preds = %1108
  %1116 = getelementptr inbounds nuw i8, ptr %508, i64 %1109
  %1117 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %510, i64 %1109), !nosanitize !20
  %1118 = extractvalue { i64, i1 } %1117, 0, !nosanitize !20
  %1119 = extractvalue { i64, i1 } %1117, 1, !nosanitize !20
  br i1 %1119, label %1120, label %1121, !prof !21, !nosanitize !20

1120:                                             ; preds = %1121, %1115
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1121:                                             ; preds = %1115
  %1122 = load i64, ptr %502, align 8, !tbaa !23
  %1123 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1122, i64 %1109), !nosanitize !20
  %1124 = extractvalue { i64, i1 } %1123, 1, !nosanitize !20
  br i1 %1124, label %1120, label %1125, !prof !21, !nosanitize !20

1125:                                             ; preds = %1121
  %1126 = extractvalue { i64, i1 } %1123, 0, !nosanitize !20
  store i64 %1126, ptr %502, align 8, !tbaa !23
  br label %1127

1127:                                             ; preds = %1125, %940, %935, %929, %824, %779
  %1128 = phi ptr [ %1116, %1125 ], [ %508, %940 ], [ %508, %824 ], [ %508, %779 ], [ %508, %929 ], [ %508, %935 ]
  %1129 = phi i64 [ %1112, %1125 ], [ %509, %940 ], [ %509, %824 ], [ %509, %779 ], [ %509, %929 ], [ %509, %935 ]
  %1130 = phi i64 [ %1118, %1125 ], [ %510, %940 ], [ %510, %824 ], [ %510, %779 ], [ %510, %929 ], [ %510, %935 ]
  %1131 = phi i32 [ %1110, %1125 ], [ %943, %940 ], [ 0, %824 ], [ 0, %779 ], [ 0, %929 ], [ 0, %935 ]
  %1132 = icmp ne i64 %1129, 0
  %1133 = icmp eq i32 %1131, 0
  %1134 = select i1 %1132, i1 %1133, i1 false
  br i1 %1134, label %507, label %1135, !llvm.loop !60

1135:                                             ; preds = %1127
  %1136 = icmp eq i64 %1129, 0
  br i1 %1136, label %1143, label %1137

1137:                                             ; preds = %1135
  %1138 = load i32, ptr %490, align 8, !tbaa !24
  %1139 = icmp eq i32 %1138, 0
  br i1 %1139, label %1143, label %1140

1140:                                             ; preds = %1137, %533
  %1141 = phi i64 [ %1130, %1137 ], [ %510, %533 ]
  %1142 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1142, align 4, !tbaa !61
  br label %1143

1143:                                             ; preds = %1140, %1137, %1135
  %1144 = phi i64 [ %1141, %1140 ], [ %1130, %1137 ], [ %1130, %1135 ]
  %1145 = freeze i64 %1144
  %1146 = icmp eq i64 %1145, 0
  %1147 = load i8, ptr %2, align 1
  %1148 = zext i8 %1147 to i32
  br i1 %1146, label %1149, label %1150

1149:                                             ; preds = %1143, %470, %463, %365, %279, %121, %107, %103
  br label %1150

1150:                                             ; preds = %1149, %1143, %25, %11, %4, %1
  %1151 = phi i32 [ %31, %25 ], [ -1, %1 ], [ -1, %4 ], [ -1, %11 ], [ -1, %1149 ], [ %1148, %1143 ]
  call void @llvm.lifetime.end.p0(ptr %2)
  ret i32 %1151
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @gzungetc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %820, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %820

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %10 = load i32, ptr %9, align 8, !tbaa !26
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %268

12:                                               ; preds = %8
  %13 = load i32, ptr %1, align 8, !tbaa !19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %268

15:                                               ; preds = %12
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %18 = load i32, ptr %17, align 8, !tbaa !27
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %15
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %22 = load i32, ptr %21, align 4, !tbaa !28
  %23 = zext i32 %22 to i64
  %24 = tail call noalias ptr @malloc(i64 noundef %23) #16
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %24, ptr %25, align 8, !tbaa !29
  %26 = shl i32 %22, 1
  %27 = zext i32 %26 to i64
  %28 = tail call noalias ptr @malloc(i64 noundef %27) #16
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %28, ptr %29, align 8, !tbaa !30
  %30 = icmp eq ptr %24, null
  %31 = icmp eq ptr %28, null
  %32 = or i1 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  tail call void @free(ptr noundef %28) #13
  tail call void @free(ptr noundef %24) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %268

34:                                               ; preds = %20
  store i32 %22, ptr %17, align 8, !tbaa !27
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 0, ptr %36, align 8, !tbaa !25
  store ptr null, ptr %16, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 0, i64 24, i1 false)
  %37 = tail call i32 @inflateInit2_(ptr noundef nonnull %16, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %29, align 8, !tbaa !30
  tail call void @free(ptr noundef %40) #13
  %41 = load ptr, ptr %25, align 8, !tbaa !29
  tail call void @free(ptr noundef %41) #13
  store i32 0, ptr %17, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %268

42:                                               ; preds = %34, %15
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %44 = load i32, ptr %43, align 8, !tbaa !32
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %48 = load i32, ptr %47, align 4, !tbaa !33
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46, %42
  %51 = tail call i32 @inflateReset(ptr noundef nonnull %16) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %53 = load i32, ptr %52, align 4, !tbaa !33
  %54 = icmp ne i32 %53, -1
  %55 = zext i1 %54 to i32
  store i32 %55, ptr %52, align 4, !tbaa !33
  store i32 0, ptr %43, align 8, !tbaa !32
  br label %268

56:                                               ; preds = %46
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %58 = load i32, ptr %57, align 8, !tbaa !16
  switch i32 %58, label %268 [
    i32 0, label %59
    i32 -5, label %59
  ]

59:                                               ; preds = %56, %56
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %61 = load i32, ptr %60, align 8, !tbaa !24
  %62 = icmp eq i32 %61, 0
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %64 = load i32, ptr %63, align 8, !tbaa !34
  br i1 %62, label %65, label %233

65:                                               ; preds = %59
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %174, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %69 = load ptr, ptr %68, align 8, !tbaa !29
  %70 = load ptr, ptr %16, align 8, !tbaa !35
  %71 = icmp eq ptr %70, %69
  br i1 %71, label %174, label %72

72:                                               ; preds = %67
  %73 = ptrtoint ptr %70 to i64
  %74 = ptrtoint ptr %69 to i64
  %75 = zext i32 %64 to i64
  %76 = icmp ult i32 %64, 4
  %77 = sub i64 %74, %73
  %78 = icmp ult i64 %77, 32
  %79 = or i1 %76, %78
  br i1 %79, label %119, label %80

80:                                               ; preds = %72
  %81 = icmp ult i32 %64, 32
  br i1 %81, label %103, label %82

82:                                               ; preds = %80
  %83 = and i64 %75, 4294967264
  br label %84

84:                                               ; preds = %84, %82
  %85 = phi i64 [ 0, %82 ], [ %92, %84 ]
  %86 = getelementptr i8, ptr %69, i64 %85
  %87 = getelementptr i8, ptr %70, i64 %85
  %88 = getelementptr i8, ptr %87, i64 16
  %89 = load <16 x i8>, ptr %87, align 1, !tbaa !36
  %90 = load <16 x i8>, ptr %88, align 1, !tbaa !36
  %91 = getelementptr i8, ptr %86, i64 16
  store <16 x i8> %89, ptr %86, align 1, !tbaa !36
  store <16 x i8> %90, ptr %91, align 1, !tbaa !36
  %92 = add nuw i64 %85, 32
  %93 = icmp eq i64 %92, %83
  br i1 %93, label %94, label %84, !llvm.loop !86

94:                                               ; preds = %84
  %95 = icmp eq i64 %83, %75
  br i1 %95, label %172, label %96

96:                                               ; preds = %94
  %97 = getelementptr i8, ptr %69, i64 %83
  %98 = getelementptr i8, ptr %70, i64 %83
  %99 = trunc nuw i64 %83 to i32
  %100 = sub i32 %64, %99
  %101 = and i64 %75, 28
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %119, label %103

103:                                              ; preds = %96, %80
  %104 = phi i64 [ %83, %96 ], [ 0, %80 ]
  %105 = and i64 %75, 4294967292
  %106 = getelementptr i8, ptr %69, i64 %105
  %107 = getelementptr i8, ptr %70, i64 %105
  %108 = trunc nuw i64 %105 to i32
  %109 = sub i32 %64, %108
  br label %110

110:                                              ; preds = %110, %103
  %111 = phi i64 [ %104, %103 ], [ %115, %110 ]
  %112 = getelementptr i8, ptr %69, i64 %111
  %113 = getelementptr i8, ptr %70, i64 %111
  %114 = load <4 x i8>, ptr %113, align 1, !tbaa !36
  store <4 x i8> %114, ptr %112, align 1, !tbaa !36
  %115 = add nuw i64 %111, 4
  %116 = icmp eq i64 %115, %105
  br i1 %116, label %117, label %110, !llvm.loop !87

117:                                              ; preds = %110
  %118 = icmp eq i64 %105, %75
  br i1 %118, label %172, label %119

119:                                              ; preds = %117, %96, %72
  %120 = phi ptr [ %69, %72 ], [ %97, %96 ], [ %106, %117 ]
  %121 = phi ptr [ %70, %72 ], [ %98, %96 ], [ %107, %117 ]
  %122 = phi i32 [ %64, %72 ], [ %100, %96 ], [ %109, %117 ]
  %123 = add i32 %122, -1
  %124 = and i32 %122, 7
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %126, %119
  %127 = phi ptr [ %133, %126 ], [ %120, %119 ]
  %128 = phi ptr [ %134, %126 ], [ %121, %119 ]
  %129 = phi i32 [ %132, %126 ], [ %122, %119 ]
  %130 = phi i32 [ %135, %126 ], [ 0, %119 ]
  %131 = load i8, ptr %128, align 1, !tbaa !36
  store i8 %131, ptr %127, align 1, !tbaa !36
  %132 = add i32 %129, -1
  %133 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %134 = getelementptr inbounds nuw i8, ptr %128, i64 1
  %135 = add i32 %130, 1
  %136 = icmp eq i32 %135, %124
  br i1 %136, label %137, label %126, !llvm.loop !88

137:                                              ; preds = %126, %119
  %138 = phi ptr [ %120, %119 ], [ %133, %126 ]
  %139 = phi ptr [ %121, %119 ], [ %134, %126 ]
  %140 = phi i32 [ %122, %119 ], [ %132, %126 ]
  %141 = icmp ult i32 %123, 7
  br i1 %141, label %172, label %142

142:                                              ; preds = %142, %137
  %143 = phi ptr [ %169, %142 ], [ %138, %137 ]
  %144 = phi ptr [ %170, %142 ], [ %139, %137 ]
  %145 = phi i32 [ %168, %142 ], [ %140, %137 ]
  %146 = load i8, ptr %144, align 1, !tbaa !36
  store i8 %146, ptr %143, align 1, !tbaa !36
  %147 = getelementptr inbounds nuw i8, ptr %143, i64 1
  %148 = getelementptr inbounds nuw i8, ptr %144, i64 1
  %149 = load i8, ptr %148, align 1, !tbaa !36
  store i8 %149, ptr %147, align 1, !tbaa !36
  %150 = getelementptr inbounds nuw i8, ptr %143, i64 2
  %151 = getelementptr inbounds nuw i8, ptr %144, i64 2
  %152 = load i8, ptr %151, align 1, !tbaa !36
  store i8 %152, ptr %150, align 1, !tbaa !36
  %153 = getelementptr inbounds nuw i8, ptr %143, i64 3
  %154 = getelementptr inbounds nuw i8, ptr %144, i64 3
  %155 = load i8, ptr %154, align 1, !tbaa !36
  store i8 %155, ptr %153, align 1, !tbaa !36
  %156 = getelementptr inbounds nuw i8, ptr %143, i64 4
  %157 = getelementptr inbounds nuw i8, ptr %144, i64 4
  %158 = load i8, ptr %157, align 1, !tbaa !36
  store i8 %158, ptr %156, align 1, !tbaa !36
  %159 = getelementptr inbounds nuw i8, ptr %143, i64 5
  %160 = getelementptr inbounds nuw i8, ptr %144, i64 5
  %161 = load i8, ptr %160, align 1, !tbaa !36
  store i8 %161, ptr %159, align 1, !tbaa !36
  %162 = getelementptr inbounds nuw i8, ptr %143, i64 6
  %163 = getelementptr inbounds nuw i8, ptr %144, i64 6
  %164 = load i8, ptr %163, align 1, !tbaa !36
  store i8 %164, ptr %162, align 1, !tbaa !36
  %165 = getelementptr inbounds nuw i8, ptr %143, i64 7
  %166 = getelementptr inbounds nuw i8, ptr %144, i64 7
  %167 = load i8, ptr %166, align 1, !tbaa !36
  store i8 %167, ptr %165, align 1, !tbaa !36
  %168 = add i32 %145, -8
  %169 = getelementptr inbounds nuw i8, ptr %143, i64 8
  %170 = getelementptr inbounds nuw i8, ptr %144, i64 8
  %171 = icmp eq i32 %168, 0
  br i1 %171, label %172, label %142, !llvm.loop !89

172:                                              ; preds = %142, %137, %117, %94
  %173 = load i32, ptr %63, align 8, !tbaa !34
  br label %174

174:                                              ; preds = %172, %67, %65
  %175 = phi i32 [ %173, %172 ], [ %64, %67 ], [ 0, %65 ]
  %176 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %177 = load i32, ptr %17, align 8, !tbaa !27
  %178 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %177, i32 %175), !nosanitize !20
  %179 = extractvalue { i32, i1 } %178, 1, !nosanitize !20
  br i1 %179, label %180, label %181, !prof !21, !nosanitize !20

180:                                              ; preds = %174
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

181:                                              ; preds = %174
  %182 = extractvalue { i32, i1 } %178, 0, !nosanitize !20
  %183 = load ptr, ptr %176, align 8, !tbaa !29
  %184 = zext i32 %175 to i64
  %185 = getelementptr inbounds nuw i8, ptr %183, i64 %184
  %186 = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 0, ptr %186, align 4, !tbaa !17
  %187 = tail call ptr @__errno_location() #17
  store i32 0, ptr %187, align 4, !tbaa !45
  %188 = getelementptr inbounds nuw i8, ptr %1, i64 28
  br label %189

189:                                              ; preds = %208, %181
  %190 = phi i32 [ 0, %181 ], [ %209, %208 ]
  %191 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %182, i32 %190), !nosanitize !20
  %192 = extractvalue { i32, i1 } %191, 1, !nosanitize !20
  br i1 %192, label %193, label %194, !prof !21, !nosanitize !20

193:                                              ; preds = %189
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

194:                                              ; preds = %189
  %195 = extractvalue { i32, i1 } %191, 0, !nosanitize !20
  %196 = tail call i32 @llvm.umin.i32(i32 %195, i32 1073741824)
  %197 = load i32, ptr %188, align 4, !tbaa !46
  %198 = zext i32 %190 to i64
  %199 = getelementptr inbounds nuw i8, ptr %185, i64 %198
  %200 = zext nneg i32 %196 to i64
  %201 = tail call i64 @read(i32 noundef %197, ptr noundef %199, i64 noundef %200) #13
  %202 = trunc i64 %201 to i32
  %203 = icmp slt i32 %202, 1
  br i1 %203, label %211, label %204

204:                                              ; preds = %194
  %205 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %190, i32 %202), !nosanitize !20
  %206 = extractvalue { i32, i1 } %205, 1, !nosanitize !20
  br i1 %206, label %207, label %208, !prof !21, !nosanitize !20

207:                                              ; preds = %204
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

208:                                              ; preds = %204
  %209 = extractvalue { i32, i1 } %205, 0, !nosanitize !20
  %210 = icmp ult i32 %209, %182
  br i1 %210, label %189, label %224, !llvm.loop !47

211:                                              ; preds = %194
  %212 = icmp slt i32 %202, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %211
  %214 = load i32, ptr %187, align 4, !tbaa !45
  %215 = icmp eq i32 %214, 11
  br i1 %215, label %216, label %221

216:                                              ; preds = %213
  store i32 1, ptr %186, align 4, !tbaa !17
  %217 = icmp eq i32 %190, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %216
  %219 = load i32, ptr %187, align 4, !tbaa !45
  br label %221

220:                                              ; preds = %211
  store i32 1, ptr %60, align 8, !tbaa !24
  br label %224

221:                                              ; preds = %218, %213
  %222 = phi i32 [ %219, %218 ], [ %214, %213 ]
  %223 = tail call ptr @strerror(i32 noundef %222) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %223) #13
  br label %268

224:                                              ; preds = %220, %216, %208
  %225 = phi i32 [ %190, %220 ], [ %190, %216 ], [ %209, %208 ]
  %226 = load i32, ptr %63, align 8, !tbaa !34
  %227 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %226, i32 %225), !nosanitize !20
  %228 = extractvalue { i32, i1 } %227, 1, !nosanitize !20
  br i1 %228, label %229, label %230, !prof !21, !nosanitize !20

229:                                              ; preds = %224
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

230:                                              ; preds = %224
  %231 = extractvalue { i32, i1 } %227, 0, !nosanitize !20
  store i32 %231, ptr %63, align 8, !tbaa !34
  %232 = load ptr, ptr %176, align 8, !tbaa !29
  store ptr %232, ptr %16, align 8, !tbaa !35
  br label %233

233:                                              ; preds = %230, %59
  %234 = phi i32 [ %231, %230 ], [ %64, %59 ]
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %268, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %238 = load i32, ptr %237, align 4, !tbaa !17
  %239 = icmp ne i32 %238, 0
  %240 = icmp ult i32 %234, 4
  %241 = and i1 %240, %239
  br i1 %241, label %268, label %242

242:                                              ; preds = %236
  %243 = icmp ugt i32 %234, 3
  %244 = load ptr, ptr %16, align 8, !tbaa !35
  br i1 %243, label %245, label %262

245:                                              ; preds = %242
  %246 = load i8, ptr %244, align 1, !tbaa !36
  %247 = icmp eq i8 %246, 31
  br i1 %247, label %248, label %262

248:                                              ; preds = %245
  %249 = getelementptr inbounds nuw i8, ptr %244, i64 1
  %250 = load i8, ptr %249, align 1, !tbaa !36
  %251 = icmp eq i8 %250, -117
  br i1 %251, label %252, label %262

252:                                              ; preds = %248
  %253 = getelementptr inbounds nuw i8, ptr %244, i64 2
  %254 = load i8, ptr %253, align 1, !tbaa !36
  %255 = icmp eq i8 %254, 8
  br i1 %255, label %256, label %262

256:                                              ; preds = %252
  %257 = getelementptr inbounds nuw i8, ptr %244, i64 3
  %258 = load i8, ptr %257, align 1, !tbaa !36
  %259 = icmp ult i8 %258, 32
  br i1 %259, label %260, label %262

260:                                              ; preds = %256
  %261 = tail call i32 @inflateReset(ptr noundef nonnull %16) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  store i32 1, ptr %47, align 4, !tbaa !33
  store i32 0, ptr %43, align 8, !tbaa !32
  br label %268

262:                                              ; preds = %256, %252, %248, %245, %242
  %263 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %264 = load ptr, ptr %263, align 8, !tbaa !30
  %265 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %264, ptr %265, align 8, !tbaa !22
  %266 = zext i32 %234 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %264, ptr align 1 %244, i64 %266, i1 false)
  %267 = load i32, ptr %63, align 8, !tbaa !34
  store i32 %267, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %63, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %268

268:                                              ; preds = %262, %260, %236, %233, %221, %56, %50, %39, %33, %12, %8
  %269 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %270 = load i32, ptr %269, align 8, !tbaa !16
  switch i32 %270, label %271 [
    i32 0, label %275
    i32 -5, label %275
  ]

271:                                              ; preds = %268
  %272 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %273 = load i32, ptr %272, align 4, !tbaa !17
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %820, label %275

275:                                              ; preds = %271, %268, %268
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef 0, ptr noundef null) #13
  %276 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %277 = load i64, ptr %276, align 8, !tbaa !18
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %752, label %279

279:                                              ; preds = %275
  %280 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %281 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %282 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %283 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %284 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %285 = getelementptr inbounds nuw i8, ptr %1, i64 168
  %286 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %287 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %288 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %289 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %290 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %291 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %292 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %293 = getelementptr inbounds nuw i8, ptr %1, i64 184
  %294 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %295 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %296 = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %297

297:                                              ; preds = %747, %279
  %298 = phi i64 [ %748, %747 ], [ %277, %279 ]
  %299 = load i32, ptr %1, align 8, !tbaa !19
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %323, label %301

301:                                              ; preds = %297
  %302 = zext i32 %299 to i64
  %303 = tail call i64 @llvm.smin.i64(i64 %298, i64 %302)
  %304 = trunc i64 %303 to i32
  %305 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %299, i32 %304), !nosanitize !20
  %306 = extractvalue { i32, i1 } %305, 1, !nosanitize !20
  br i1 %306, label %307, label %308, !prof !21, !nosanitize !20

307:                                              ; preds = %317, %301
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

308:                                              ; preds = %301
  %309 = extractvalue { i32, i1 } %305, 0, !nosanitize !20
  store i32 %309, ptr %1, align 8, !tbaa !19
  %310 = load ptr, ptr %280, align 8, !tbaa !22
  %311 = and i64 %303, 4294967295
  %312 = getelementptr inbounds nuw i8, ptr %310, i64 %311
  store ptr %312, ptr %280, align 8, !tbaa !22
  %313 = load i64, ptr %281, align 8, !tbaa !23
  %314 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %313, i64 %311), !nosanitize !20
  %315 = extractvalue { i64, i1 } %314, 1, !nosanitize !20
  br i1 %315, label %316, label %317, !prof !21, !nosanitize !20

316:                                              ; preds = %308
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

317:                                              ; preds = %308
  %318 = extractvalue { i64, i1 } %314, 0, !nosanitize !20
  store i64 %318, ptr %281, align 8, !tbaa !23
  %319 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %298, i64 %311), !nosanitize !20
  %320 = extractvalue { i64, i1 } %319, 1, !nosanitize !20
  br i1 %320, label %307, label %321, !prof !21, !nosanitize !20

321:                                              ; preds = %317
  %322 = extractvalue { i64, i1 } %319, 0, !nosanitize !20
  store i64 %322, ptr %276, align 8, !tbaa !18
  br label %747

323:                                              ; preds = %297
  %324 = load i32, ptr %282, align 8, !tbaa !24
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %329, label %326

326:                                              ; preds = %323
  %327 = load i32, ptr %283, align 8, !tbaa !25
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %750, label %329

329:                                              ; preds = %326, %323
  br label %330

330:                                              ; preds = %744, %329
  %331 = load i32, ptr %9, align 8, !tbaa !26
  switch i32 %331, label %732 [
    i32 0, label %332
    i32 1, label %568
    i32 2, label %612
  ]

332:                                              ; preds = %330
  %333 = load i32, ptr %284, align 8, !tbaa !27
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %352

335:                                              ; preds = %332
  %336 = load i32, ptr %294, align 4, !tbaa !28
  %337 = zext i32 %336 to i64
  %338 = tail call noalias ptr @malloc(i64 noundef %337) #16
  store ptr %338, ptr %289, align 8, !tbaa !29
  %339 = shl i32 %336, 1
  %340 = zext i32 %339 to i64
  %341 = tail call noalias ptr @malloc(i64 noundef %340) #16
  store ptr %341, ptr %286, align 8, !tbaa !30
  %342 = icmp eq ptr %338, null
  %343 = icmp eq ptr %341, null
  %344 = or i1 %342, %343
  br i1 %344, label %345, label %346

345:                                              ; preds = %335
  tail call void @free(ptr noundef %341) #13
  tail call void @free(ptr noundef %338) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %820

346:                                              ; preds = %335
  store i32 %336, ptr %284, align 8, !tbaa !27
  store i32 0, ptr %283, align 8, !tbaa !25
  store ptr null, ptr %288, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %295, i8 0, i64 24, i1 false)
  %347 = tail call i32 @inflateInit2_(ptr noundef nonnull %288, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %352, label %349

349:                                              ; preds = %346
  %350 = load ptr, ptr %286, align 8, !tbaa !30
  tail call void @free(ptr noundef %350) #13
  %351 = load ptr, ptr %289, align 8, !tbaa !29
  tail call void @free(ptr noundef %351) #13
  store i32 0, ptr %284, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %820

352:                                              ; preds = %346, %332
  %353 = load i32, ptr %296, align 8, !tbaa !32
  %354 = icmp eq i32 %353, -1
  br i1 %354, label %358, label %355

355:                                              ; preds = %352
  %356 = load i32, ptr %292, align 4, !tbaa !33
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %363

358:                                              ; preds = %355, %352
  %359 = tail call i32 @inflateReset(ptr noundef nonnull %288) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  %360 = load i32, ptr %292, align 4, !tbaa !33
  %361 = icmp ne i32 %360, -1
  %362 = zext i1 %361 to i32
  store i32 %362, ptr %292, align 4, !tbaa !33
  store i32 0, ptr %296, align 8, !tbaa !32
  br label %565

363:                                              ; preds = %355
  %364 = load i32, ptr %269, align 8, !tbaa !16
  switch i32 %364, label %820 [
    i32 0, label %365
    i32 -5, label %365
  ]

365:                                              ; preds = %363, %363
  %366 = load i32, ptr %282, align 8, !tbaa !24
  %367 = icmp eq i32 %366, 0
  %368 = load i32, ptr %283, align 8, !tbaa !34
  br i1 %367, label %369, label %533

369:                                              ; preds = %365
  %370 = icmp eq i32 %368, 0
  br i1 %370, label %477, label %371

371:                                              ; preds = %369
  %372 = load ptr, ptr %289, align 8, !tbaa !29
  %373 = load ptr, ptr %288, align 8, !tbaa !35
  %374 = icmp eq ptr %373, %372
  br i1 %374, label %477, label %375

375:                                              ; preds = %371
  %376 = ptrtoint ptr %373 to i64
  %377 = ptrtoint ptr %372 to i64
  %378 = zext i32 %368 to i64
  %379 = icmp ult i32 %368, 4
  %380 = sub i64 %377, %376
  %381 = icmp ult i64 %380, 32
  %382 = or i1 %379, %381
  br i1 %382, label %422, label %383

383:                                              ; preds = %375
  %384 = icmp ult i32 %368, 32
  br i1 %384, label %406, label %385

385:                                              ; preds = %383
  %386 = and i64 %378, 4294967264
  br label %387

387:                                              ; preds = %387, %385
  %388 = phi i64 [ 0, %385 ], [ %395, %387 ]
  %389 = getelementptr i8, ptr %372, i64 %388
  %390 = getelementptr i8, ptr %373, i64 %388
  %391 = getelementptr i8, ptr %390, i64 16
  %392 = load <16 x i8>, ptr %390, align 1, !tbaa !36
  %393 = load <16 x i8>, ptr %391, align 1, !tbaa !36
  %394 = getelementptr i8, ptr %389, i64 16
  store <16 x i8> %392, ptr %389, align 1, !tbaa !36
  store <16 x i8> %393, ptr %394, align 1, !tbaa !36
  %395 = add nuw i64 %388, 32
  %396 = icmp eq i64 %395, %386
  br i1 %396, label %397, label %387, !llvm.loop !90

397:                                              ; preds = %387
  %398 = icmp eq i64 %386, %378
  br i1 %398, label %475, label %399

399:                                              ; preds = %397
  %400 = getelementptr i8, ptr %372, i64 %386
  %401 = getelementptr i8, ptr %373, i64 %386
  %402 = trunc nuw i64 %386 to i32
  %403 = sub i32 %368, %402
  %404 = and i64 %378, 28
  %405 = icmp eq i64 %404, 0
  br i1 %405, label %422, label %406

406:                                              ; preds = %399, %383
  %407 = phi i64 [ %386, %399 ], [ 0, %383 ]
  %408 = and i64 %378, 4294967292
  %409 = getelementptr i8, ptr %372, i64 %408
  %410 = getelementptr i8, ptr %373, i64 %408
  %411 = trunc nuw i64 %408 to i32
  %412 = sub i32 %368, %411
  br label %413

413:                                              ; preds = %413, %406
  %414 = phi i64 [ %407, %406 ], [ %418, %413 ]
  %415 = getelementptr i8, ptr %372, i64 %414
  %416 = getelementptr i8, ptr %373, i64 %414
  %417 = load <4 x i8>, ptr %416, align 1, !tbaa !36
  store <4 x i8> %417, ptr %415, align 1, !tbaa !36
  %418 = add nuw i64 %414, 4
  %419 = icmp eq i64 %418, %408
  br i1 %419, label %420, label %413, !llvm.loop !91

420:                                              ; preds = %413
  %421 = icmp eq i64 %408, %378
  br i1 %421, label %475, label %422

422:                                              ; preds = %420, %399, %375
  %423 = phi ptr [ %372, %375 ], [ %400, %399 ], [ %409, %420 ]
  %424 = phi ptr [ %373, %375 ], [ %401, %399 ], [ %410, %420 ]
  %425 = phi i32 [ %368, %375 ], [ %403, %399 ], [ %412, %420 ]
  %426 = add i32 %425, -1
  %427 = and i32 %425, 7
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %440, label %429

429:                                              ; preds = %429, %422
  %430 = phi ptr [ %436, %429 ], [ %423, %422 ]
  %431 = phi ptr [ %437, %429 ], [ %424, %422 ]
  %432 = phi i32 [ %435, %429 ], [ %425, %422 ]
  %433 = phi i32 [ %438, %429 ], [ 0, %422 ]
  %434 = load i8, ptr %431, align 1, !tbaa !36
  store i8 %434, ptr %430, align 1, !tbaa !36
  %435 = add i32 %432, -1
  %436 = getelementptr inbounds nuw i8, ptr %430, i64 1
  %437 = getelementptr inbounds nuw i8, ptr %431, i64 1
  %438 = add i32 %433, 1
  %439 = icmp eq i32 %438, %427
  br i1 %439, label %440, label %429, !llvm.loop !92

440:                                              ; preds = %429, %422
  %441 = phi ptr [ %423, %422 ], [ %436, %429 ]
  %442 = phi ptr [ %424, %422 ], [ %437, %429 ]
  %443 = phi i32 [ %425, %422 ], [ %435, %429 ]
  %444 = icmp ult i32 %426, 7
  br i1 %444, label %475, label %445

445:                                              ; preds = %445, %440
  %446 = phi ptr [ %472, %445 ], [ %441, %440 ]
  %447 = phi ptr [ %473, %445 ], [ %442, %440 ]
  %448 = phi i32 [ %471, %445 ], [ %443, %440 ]
  %449 = load i8, ptr %447, align 1, !tbaa !36
  store i8 %449, ptr %446, align 1, !tbaa !36
  %450 = getelementptr inbounds nuw i8, ptr %446, i64 1
  %451 = getelementptr inbounds nuw i8, ptr %447, i64 1
  %452 = load i8, ptr %451, align 1, !tbaa !36
  store i8 %452, ptr %450, align 1, !tbaa !36
  %453 = getelementptr inbounds nuw i8, ptr %446, i64 2
  %454 = getelementptr inbounds nuw i8, ptr %447, i64 2
  %455 = load i8, ptr %454, align 1, !tbaa !36
  store i8 %455, ptr %453, align 1, !tbaa !36
  %456 = getelementptr inbounds nuw i8, ptr %446, i64 3
  %457 = getelementptr inbounds nuw i8, ptr %447, i64 3
  %458 = load i8, ptr %457, align 1, !tbaa !36
  store i8 %458, ptr %456, align 1, !tbaa !36
  %459 = getelementptr inbounds nuw i8, ptr %446, i64 4
  %460 = getelementptr inbounds nuw i8, ptr %447, i64 4
  %461 = load i8, ptr %460, align 1, !tbaa !36
  store i8 %461, ptr %459, align 1, !tbaa !36
  %462 = getelementptr inbounds nuw i8, ptr %446, i64 5
  %463 = getelementptr inbounds nuw i8, ptr %447, i64 5
  %464 = load i8, ptr %463, align 1, !tbaa !36
  store i8 %464, ptr %462, align 1, !tbaa !36
  %465 = getelementptr inbounds nuw i8, ptr %446, i64 6
  %466 = getelementptr inbounds nuw i8, ptr %447, i64 6
  %467 = load i8, ptr %466, align 1, !tbaa !36
  store i8 %467, ptr %465, align 1, !tbaa !36
  %468 = getelementptr inbounds nuw i8, ptr %446, i64 7
  %469 = getelementptr inbounds nuw i8, ptr %447, i64 7
  %470 = load i8, ptr %469, align 1, !tbaa !36
  store i8 %470, ptr %468, align 1, !tbaa !36
  %471 = add i32 %448, -8
  %472 = getelementptr inbounds nuw i8, ptr %446, i64 8
  %473 = getelementptr inbounds nuw i8, ptr %447, i64 8
  %474 = icmp eq i32 %471, 0
  br i1 %474, label %475, label %445, !llvm.loop !93

475:                                              ; preds = %445, %440, %420, %397
  %476 = load i32, ptr %283, align 8, !tbaa !34
  br label %477

477:                                              ; preds = %475, %371, %369
  %478 = phi i32 [ %476, %475 ], [ %368, %371 ], [ 0, %369 ]
  %479 = load i32, ptr %284, align 8, !tbaa !27
  %480 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %479, i32 %478), !nosanitize !20
  %481 = extractvalue { i32, i1 } %480, 1, !nosanitize !20
  br i1 %481, label %482, label %483, !prof !21, !nosanitize !20

482:                                              ; preds = %477
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

483:                                              ; preds = %477
  %484 = extractvalue { i32, i1 } %480, 0, !nosanitize !20
  %485 = load ptr, ptr %289, align 8, !tbaa !29
  %486 = zext i32 %478 to i64
  %487 = getelementptr inbounds nuw i8, ptr %485, i64 %486
  store i32 0, ptr %290, align 4, !tbaa !17
  %488 = tail call ptr @__errno_location() #17
  store i32 0, ptr %488, align 4, !tbaa !45
  br label %489

489:                                              ; preds = %508, %483
  %490 = phi i32 [ 0, %483 ], [ %509, %508 ]
  %491 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %484, i32 %490), !nosanitize !20
  %492 = extractvalue { i32, i1 } %491, 1, !nosanitize !20
  br i1 %492, label %493, label %494, !prof !21, !nosanitize !20

493:                                              ; preds = %489
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

494:                                              ; preds = %489
  %495 = extractvalue { i32, i1 } %491, 0, !nosanitize !20
  %496 = tail call i32 @llvm.umin.i32(i32 %495, i32 1073741824)
  %497 = load i32, ptr %291, align 4, !tbaa !46
  %498 = zext i32 %490 to i64
  %499 = getelementptr inbounds nuw i8, ptr %487, i64 %498
  %500 = zext nneg i32 %496 to i64
  %501 = tail call i64 @read(i32 noundef %497, ptr noundef %499, i64 noundef %500) #13
  %502 = trunc i64 %501 to i32
  %503 = icmp slt i32 %502, 1
  br i1 %503, label %511, label %504

504:                                              ; preds = %494
  %505 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %490, i32 %502), !nosanitize !20
  %506 = extractvalue { i32, i1 } %505, 1, !nosanitize !20
  br i1 %506, label %507, label %508, !prof !21, !nosanitize !20

507:                                              ; preds = %504
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

508:                                              ; preds = %504
  %509 = extractvalue { i32, i1 } %505, 0, !nosanitize !20
  %510 = icmp ult i32 %509, %484
  br i1 %510, label %489, label %524, !llvm.loop !47

511:                                              ; preds = %494
  %512 = icmp slt i32 %502, 0
  br i1 %512, label %513, label %520

513:                                              ; preds = %511
  %514 = load i32, ptr %488, align 4, !tbaa !45
  %515 = icmp eq i32 %514, 11
  br i1 %515, label %516, label %521

516:                                              ; preds = %513
  store i32 1, ptr %290, align 4, !tbaa !17
  %517 = icmp eq i32 %490, 0
  br i1 %517, label %518, label %524

518:                                              ; preds = %516
  %519 = load i32, ptr %488, align 4, !tbaa !45
  br label %521

520:                                              ; preds = %511
  store i32 1, ptr %282, align 8, !tbaa !24
  br label %524

521:                                              ; preds = %518, %513
  %522 = phi i32 [ %519, %518 ], [ %514, %513 ]
  %523 = tail call ptr @strerror(i32 noundef %522) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %523) #13
  br label %820

524:                                              ; preds = %520, %516, %508
  %525 = phi i32 [ %490, %520 ], [ %490, %516 ], [ %509, %508 ]
  %526 = load i32, ptr %283, align 8, !tbaa !34
  %527 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %526, i32 %525), !nosanitize !20
  %528 = extractvalue { i32, i1 } %527, 1, !nosanitize !20
  br i1 %528, label %529, label %530, !prof !21, !nosanitize !20

529:                                              ; preds = %524
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

530:                                              ; preds = %524
  %531 = extractvalue { i32, i1 } %527, 0, !nosanitize !20
  store i32 %531, ptr %283, align 8, !tbaa !34
  %532 = load ptr, ptr %289, align 8, !tbaa !29
  store ptr %532, ptr %288, align 8, !tbaa !35
  br label %533

533:                                              ; preds = %530, %365
  %534 = phi i32 [ %531, %530 ], [ %368, %365 ]
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %565, label %536

536:                                              ; preds = %533
  %537 = load i32, ptr %290, align 4, !tbaa !17
  %538 = icmp ne i32 %537, 0
  %539 = icmp ult i32 %534, 4
  %540 = and i1 %539, %538
  br i1 %540, label %565, label %541

541:                                              ; preds = %536
  %542 = icmp ugt i32 %534, 3
  %543 = load ptr, ptr %288, align 8, !tbaa !35
  br i1 %542, label %544, label %561

544:                                              ; preds = %541
  %545 = load i8, ptr %543, align 1, !tbaa !36
  %546 = icmp eq i8 %545, 31
  br i1 %546, label %547, label %561

547:                                              ; preds = %544
  %548 = getelementptr inbounds nuw i8, ptr %543, i64 1
  %549 = load i8, ptr %548, align 1, !tbaa !36
  %550 = icmp eq i8 %549, -117
  br i1 %550, label %551, label %561

551:                                              ; preds = %547
  %552 = getelementptr inbounds nuw i8, ptr %543, i64 2
  %553 = load i8, ptr %552, align 1, !tbaa !36
  %554 = icmp eq i8 %553, 8
  br i1 %554, label %555, label %561

555:                                              ; preds = %551
  %556 = getelementptr inbounds nuw i8, ptr %543, i64 3
  %557 = load i8, ptr %556, align 1, !tbaa !36
  %558 = icmp ult i8 %557, 32
  br i1 %558, label %559, label %561

559:                                              ; preds = %555
  %560 = tail call i32 @inflateReset(ptr noundef nonnull %288) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  store i32 1, ptr %292, align 4, !tbaa !33
  store i32 0, ptr %296, align 8, !tbaa !32
  br label %733

561:                                              ; preds = %555, %551, %547, %544, %541
  %562 = load ptr, ptr %286, align 8, !tbaa !30
  store ptr %562, ptr %280, align 8, !tbaa !22
  %563 = zext i32 %534 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %562, ptr align 1 %543, i64 %563, i1 false)
  %564 = load i32, ptr %283, align 8, !tbaa !34
  store i32 %564, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %283, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %735

565:                                              ; preds = %536, %533, %358
  %566 = load i32, ptr %9, align 8, !tbaa !26
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %745, label %733

568:                                              ; preds = %330
  %569 = load ptr, ptr %286, align 8, !tbaa !30
  %570 = load i32, ptr %284, align 8, !tbaa !27
  %571 = shl i32 %570, 1
  store i32 0, ptr %290, align 4, !tbaa !17
  %572 = tail call ptr @__errno_location() #17
  store i32 0, ptr %572, align 4, !tbaa !45
  store i32 0, ptr %1, align 4, !tbaa !45
  br label %573

573:                                              ; preds = %593, %568
  %574 = phi i32 [ %594, %593 ], [ 0, %568 ]
  %575 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %571, i32 %574), !nosanitize !20
  %576 = extractvalue { i32, i1 } %575, 1, !nosanitize !20
  br i1 false, label %577, label %578, !prof !21, !nosanitize !20

577:                                              ; preds = %573
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

578:                                              ; preds = %573
  %579 = extractvalue { i32, i1 } %575, 0, !nosanitize !20
  %580 = tail call i32 @llvm.umin.i32(i32 %579, i32 1073741824)
  %581 = load i32, ptr %291, align 4, !tbaa !46
  %582 = zext i32 %574 to i64
  %583 = getelementptr inbounds nuw i8, ptr %569, i64 %582
  %584 = zext nneg i32 %580 to i64
  %585 = tail call i64 @read(i32 noundef %581, ptr noundef %583, i64 noundef %584) #13
  %586 = trunc i64 %585 to i32
  %587 = icmp slt i32 %586, 1
  br i1 %587, label %596, label %588

588:                                              ; preds = %578
  %589 = load i32, ptr %1, align 4, !tbaa !45
  %590 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %589, i32 %586), !nosanitize !20
  %591 = extractvalue { i32, i1 } %590, 1, !nosanitize !20
  br i1 %591, label %592, label %593, !prof !21, !nosanitize !20

592:                                              ; preds = %588
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

593:                                              ; preds = %588
  %594 = extractvalue { i32, i1 } %590, 0, !nosanitize !20
  store i32 %594, ptr %1, align 4, !tbaa !45
  %595 = icmp ult i32 %594, %571
  br i1 %595, label %573, label %610, !llvm.loop !47

596:                                              ; preds = %578
  %597 = icmp slt i32 %586, 0
  br i1 %597, label %598, label %606

598:                                              ; preds = %596
  %599 = load i32, ptr %572, align 4, !tbaa !45
  %600 = icmp eq i32 %599, 11
  br i1 %600, label %601, label %607

601:                                              ; preds = %598
  store i32 1, ptr %290, align 4, !tbaa !17
  %602 = load i32, ptr %1, align 4, !tbaa !45
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %604, label %610

604:                                              ; preds = %601
  %605 = load i32, ptr %572, align 4, !tbaa !45
  br label %607

606:                                              ; preds = %596
  store i32 1, ptr %282, align 8, !tbaa !24
  br label %610

607:                                              ; preds = %604, %598
  %608 = phi i32 [ %605, %604 ], [ %599, %598 ]
  %609 = tail call ptr @strerror(i32 noundef %608) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %609) #13
  br label %820

610:                                              ; preds = %606, %601, %593
  %611 = load ptr, ptr %286, align 8, !tbaa !30
  store ptr %611, ptr %280, align 8, !tbaa !22
  br label %745

612:                                              ; preds = %330
  %613 = load i32, ptr %284, align 8, !tbaa !27
  %614 = shl i32 %613, 1
  store i32 %614, ptr %285, align 8, !tbaa !48
  %615 = load ptr, ptr %286, align 8, !tbaa !30
  store ptr %615, ptr %287, align 8, !tbaa !49
  br label %616

616:                                              ; preds = %715, %612
  %617 = phi i32 [ 0, %612 ], [ %700, %715 ]
  %618 = load i32, ptr %283, align 8, !tbaa !34
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %620, label %699

620:                                              ; preds = %616
  %621 = load i32, ptr %269, align 8, !tbaa !16
  switch i32 %621, label %719 [
    i32 0, label %622
    i32 -5, label %622
  ]

622:                                              ; preds = %620, %620
  %623 = load i32, ptr %282, align 8, !tbaa !24
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %625, label %695

625:                                              ; preds = %622
  %626 = load i32, ptr %284, align 8, !tbaa !27
  %627 = load ptr, ptr %289, align 8, !tbaa !29
  store i32 0, ptr %290, align 4, !tbaa !17
  %628 = tail call ptr @__errno_location() #17
  store i32 0, ptr %628, align 4, !tbaa !45
  %mv.h = icmp sge i32 %626, 0
  %mv.h.fr = freeze i1 %mv.h
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %625
  br label %629

629:                                              ; preds = %646, %.mv.ph.mv.fast
  %630 = phi i32 [ 0, %.mv.ph.mv.fast ], [ %647, %646 ]
  %631 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %626, i32 %630), !nosanitize !20
  %632 = extractvalue { i32, i1 } %631, 1, !nosanitize !20
  br i1 %632, label %653, label %633, !prof !21, !nosanitize !20

633:                                              ; preds = %629
  %634 = extractvalue { i32, i1 } %631, 0, !nosanitize !20
  %635 = tail call i32 @llvm.umin.i32(i32 %634, i32 1073741824)
  %636 = load i32, ptr %291, align 4, !tbaa !46
  %637 = zext i32 %630 to i64
  %638 = getelementptr inbounds nuw i8, ptr %627, i64 %637
  %639 = zext nneg i32 %635 to i64
  %640 = tail call i64 @read(i32 noundef %636, ptr noundef %638, i64 noundef %639) #13
  %641 = trunc i64 %640 to i32
  %642 = icmp slt i32 %641, 1
  br i1 %642, label %671, label %643

643:                                              ; preds = %633
  %644 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %630, i32 %641), !nosanitize !20
  %645 = extractvalue { i32, i1 } %644, 1, !nosanitize !20
  br i1 false, label %667, label %646, !prof !21, !nosanitize !20

646:                                              ; preds = %643
  %647 = extractvalue { i32, i1 } %644, 0, !nosanitize !20
  %648 = icmp ult i32 %647, %626
  br i1 %648, label %629, label %.loopexit, !llvm.loop !47

.mv.ph:                                           ; preds = %625
  br label %649

649:                                              ; preds = %668, %.mv.ph
  %650 = phi i32 [ 0, %.mv.ph ], [ %669, %668 ]
  %651 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %626, i32 %650), !nosanitize !20
  %652 = extractvalue { i32, i1 } %651, 1, !nosanitize !20
  br i1 %652, label %653, label %654, !prof !21, !nosanitize !20

653:                                              ; preds = %629, %649
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

654:                                              ; preds = %649
  %655 = extractvalue { i32, i1 } %651, 0, !nosanitize !20
  %656 = tail call i32 @llvm.umin.i32(i32 %655, i32 1073741824)
  %657 = load i32, ptr %291, align 4, !tbaa !46
  %658 = zext i32 %650 to i64
  %659 = getelementptr inbounds nuw i8, ptr %627, i64 %658
  %660 = zext nneg i32 %656 to i64
  %661 = tail call i64 @read(i32 noundef %657, ptr noundef %659, i64 noundef %660) #13
  %662 = trunc i64 %661 to i32
  %663 = icmp slt i32 %662, 1
  br i1 %663, label %671, label %664

664:                                              ; preds = %654
  %665 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %650, i32 %662), !nosanitize !20
  %666 = extractvalue { i32, i1 } %665, 1, !nosanitize !20
  br i1 %666, label %667, label %668, !prof !21, !nosanitize !20

667:                                              ; preds = %643, %664
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

668:                                              ; preds = %664
  %669 = extractvalue { i32, i1 } %665, 0, !nosanitize !20
  %670 = icmp ult i32 %669, %626
  br i1 %670, label %649, label %.loopexit, !llvm.loop !47

671:                                              ; preds = %633, %654
  %.lcssa4 = phi i32 [ %662, %654 ], [ %641, %633 ]
  %.lcssa1 = phi i32 [ %650, %654 ], [ %630, %633 ]
  %672 = icmp slt i32 %.lcssa4, 0
  br i1 %672, label %673, label %680

673:                                              ; preds = %671
  %674 = load i32, ptr %628, align 4, !tbaa !45
  %675 = icmp eq i32 %674, 11
  br i1 %675, label %676, label %681

676:                                              ; preds = %673
  store i32 1, ptr %290, align 4, !tbaa !17
  %677 = icmp eq i32 %.lcssa1, 0
  br i1 %677, label %678, label %685

678:                                              ; preds = %676
  %679 = load i32, ptr %628, align 4, !tbaa !45
  br label %681

680:                                              ; preds = %671
  store i32 1, ptr %282, align 8, !tbaa !24
  br label %685

681:                                              ; preds = %678, %673
  %682 = phi i32 [ %679, %678 ], [ %674, %673 ]
  %683 = tail call ptr @strerror(i32 noundef %682) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %683) #13
  %684 = load i32, ptr %269, align 8, !tbaa !16
  br label %719

.loopexit:                                        ; preds = %646, %668
  %.lcssa7 = phi i32 [ %669, %668 ], [ %647, %646 ]
  br label %685

685:                                              ; preds = %.loopexit, %680, %676
  %686 = phi i32 [ %.lcssa1, %680 ], [ %.lcssa1, %676 ], [ %.lcssa7, %.loopexit ]
  %687 = load i32, ptr %283, align 8, !tbaa !34
  %688 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %687, i32 %686), !nosanitize !20
  %689 = extractvalue { i32, i1 } %688, 1, !nosanitize !20
  br i1 %689, label %690, label %691, !prof !21, !nosanitize !20

690:                                              ; preds = %685
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

691:                                              ; preds = %685
  %692 = extractvalue { i32, i1 } %688, 0, !nosanitize !20
  store i32 %692, ptr %283, align 8, !tbaa !34
  %693 = load ptr, ptr %289, align 8, !tbaa !29
  store ptr %693, ptr %288, align 8, !tbaa !35
  %694 = icmp eq i32 %692, 0
  br i1 %694, label %695, label %699

695:                                              ; preds = %691, %622
  %696 = load i32, ptr %290, align 4, !tbaa !17
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %698, label %719

698:                                              ; preds = %695
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %719

699:                                              ; preds = %691, %616
  %700 = tail call i32 @inflate(ptr noundef nonnull %288, i32 noundef 0) #13
  %701 = load i32, ptr %285, align 8, !tbaa !48
  %702 = icmp ult i32 %701, %614
  br i1 %702, label %703, label %704

703:                                              ; preds = %699
  store i32 0, ptr %292, align 4, !tbaa !33
  br label %704

704:                                              ; preds = %703, %699
  switch i32 %700, label %715 [
    i32 -2, label %705
    i32 2, label %705
    i32 -4, label %706
    i32 -3, label %707
  ]

705:                                              ; preds = %704, %704
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %719

706:                                              ; preds = %704
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %719

707:                                              ; preds = %704
  %708 = load i32, ptr %292, align 4, !tbaa !33
  %709 = icmp eq i32 %708, 1
  br i1 %709, label %710, label %711

710:                                              ; preds = %707
  store i32 0, ptr %283, align 8, !tbaa !34
  store i32 1, ptr %282, align 8, !tbaa !24
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %719

711:                                              ; preds = %707
  %712 = load ptr, ptr %293, align 8, !tbaa !50
  %713 = icmp eq ptr %712, null
  %714 = select i1 %713, ptr @.str.6, ptr %712
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull %714) #13
  br label %719

715:                                              ; preds = %704
  %716 = icmp ne i32 %701, 0
  %717 = icmp ne i32 %700, 1
  %718 = select i1 %716, i1 %717, i1 false
  br i1 %718, label %616, label %719, !llvm.loop !51

719:                                              ; preds = %715, %711, %710, %706, %705, %698, %695, %681, %620
  %720 = phi i32 [ %617, %695 ], [ %617, %698 ], [ %700, %705 ], [ -4, %706 ], [ 0, %710 ], [ -3, %711 ], [ %684, %681 ], [ %621, %620 ], [ %700, %715 ]
  %721 = load i32, ptr %285, align 8, !tbaa !48
  %722 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %614, i32 %721), !nosanitize !20
  %723 = extractvalue { i32, i1 } %722, 1, !nosanitize !20
  br i1 %723, label %724, label %725, !prof !21, !nosanitize !20

724:                                              ; preds = %719
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

725:                                              ; preds = %719
  %726 = extractvalue { i32, i1 } %722, 0, !nosanitize !20
  store i32 %726, ptr %1, align 8, !tbaa !19
  %727 = load ptr, ptr %287, align 8, !tbaa !49
  %728 = zext i32 %726 to i64
  %729 = sub nsw i64 0, %728
  %730 = getelementptr inbounds i8, ptr %727, i64 %729
  store ptr %730, ptr %280, align 8, !tbaa !22
  switch i32 %720, label %820 [
    i32 1, label %731
    i32 0, label %733
  ]

731:                                              ; preds = %725
  store i32 0, ptr %292, align 4, !tbaa !33
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %733

732:                                              ; preds = %330
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %820

733:                                              ; preds = %731, %725, %565, %559
  %734 = load i32, ptr %1, align 8, !tbaa !19
  br label %735

735:                                              ; preds = %733, %561
  %736 = phi i32 [ %734, %733 ], [ %564, %561 ]
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %738, label %745

738:                                              ; preds = %735
  %739 = load i32, ptr %282, align 8, !tbaa !24
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %744, label %741

741:                                              ; preds = %738
  %742 = load i32, ptr %283, align 8, !tbaa !34
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %745, label %744

744:                                              ; preds = %741, %738
  br label %330, !llvm.loop !52

745:                                              ; preds = %741, %735, %610, %565
  %746 = load i64, ptr %276, align 8, !tbaa !18
  br label %747

747:                                              ; preds = %745, %321
  %748 = phi i64 [ %746, %745 ], [ %322, %321 ]
  %749 = icmp eq i64 %748, 0
  br i1 %749, label %750, label %297, !llvm.loop !53

750:                                              ; preds = %747, %326
  %751 = icmp slt i32 %0, 0
  br i1 %751, label %820, label %754

752:                                              ; preds = %275
  %753 = icmp slt i32 %0, 0
  br i1 %753, label %820, label %754

754:                                              ; preds = %752, %750
  %755 = load i32, ptr %1, align 8, !tbaa !19
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %757, label %776

757:                                              ; preds = %754
  store i32 1, ptr %1, align 8, !tbaa !19
  %758 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %759 = load ptr, ptr %758, align 8, !tbaa !30
  %760 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %761 = load i32, ptr %760, align 8, !tbaa !27
  %762 = shl i32 %761, 1
  %763 = zext i32 %762 to i64
  %764 = getelementptr inbounds nuw i8, ptr %759, i64 %763
  %765 = getelementptr inbounds i8, ptr %764, i64 -1
  %766 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %765, ptr %766, align 8, !tbaa !22
  %767 = trunc i32 %0 to i8
  store i8 %767, ptr %765, align 1, !tbaa !36
  %768 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %769 = load i64, ptr %768, align 8, !tbaa !23
  %770 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %769, i64 -1)
  %771 = extractvalue { i64, i1 } %770, 1, !nosanitize !20
  br i1 %771, label %772, label %773, !prof !21, !nosanitize !20

772:                                              ; preds = %809, %757
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

773:                                              ; preds = %757
  %774 = extractvalue { i64, i1 } %770, 0, !nosanitize !20
  store i64 %774, ptr %768, align 8, !tbaa !23
  %775 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %775, align 4, !tbaa !61
  br label %820

776:                                              ; preds = %754
  %777 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %778 = load i32, ptr %777, align 8, !tbaa !27
  %779 = shl i32 %778, 1
  %780 = icmp eq i32 %755, %779
  br i1 %780, label %781, label %782

781:                                              ; preds = %776
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull @.str.2) #13
  br label %820

782:                                              ; preds = %776
  %783 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %784 = load ptr, ptr %783, align 8, !tbaa !22
  %785 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %786 = load ptr, ptr %785, align 8, !tbaa !30
  %787 = icmp eq ptr %784, %786
  br i1 %787, label %788, label %803

788:                                              ; preds = %782
  %789 = zext i32 %755 to i64
  %790 = getelementptr inbounds nuw i8, ptr %786, i64 %789
  %791 = zext i32 %779 to i64
  %792 = getelementptr inbounds nuw i8, ptr %786, i64 %791
  br label %793

793:                                              ; preds = %793, %788
  %794 = phi ptr [ %798, %793 ], [ %792, %788 ]
  %795 = phi ptr [ %796, %793 ], [ %790, %788 ]
  %796 = getelementptr inbounds i8, ptr %795, i64 -1
  %797 = load i8, ptr %796, align 1, !tbaa !36
  %798 = getelementptr inbounds i8, ptr %794, i64 -1
  store i8 %797, ptr %798, align 1, !tbaa !36
  %799 = load ptr, ptr %785, align 8, !tbaa !30
  %800 = icmp ugt ptr %796, %799
  br i1 %800, label %793, label %801, !llvm.loop !94

801:                                              ; preds = %793
  %802 = load i32, ptr %1, align 8, !tbaa !19
  store ptr %798, ptr %783, align 8, !tbaa !22
  br label %803

803:                                              ; preds = %801, %782
  %804 = phi ptr [ %798, %801 ], [ %784, %782 ]
  %805 = phi i32 [ %802, %801 ], [ %755, %782 ]
  %806 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %805, i32 1), !nosanitize !20
  %807 = extractvalue { i32, i1 } %806, 1, !nosanitize !20
  br i1 %807, label %808, label %809, !prof !21, !nosanitize !20

808:                                              ; preds = %803
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

809:                                              ; preds = %803
  %810 = extractvalue { i32, i1 } %806, 0, !nosanitize !20
  store i32 %810, ptr %1, align 8, !tbaa !19
  %811 = getelementptr inbounds i8, ptr %804, i64 -1
  store ptr %811, ptr %783, align 8, !tbaa !22
  %812 = trunc i32 %0 to i8
  store i8 %812, ptr %811, align 1, !tbaa !36
  %813 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %814 = load i64, ptr %813, align 8, !tbaa !23
  %815 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %814, i64 -1)
  %816 = extractvalue { i64, i1 } %815, 1, !nosanitize !20
  br i1 %816, label %772, label %817, !prof !21, !nosanitize !20

817:                                              ; preds = %809
  %818 = extractvalue { i64, i1 } %815, 0, !nosanitize !20
  store i64 %818, ptr %813, align 8, !tbaa !23
  %819 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %819, align 4, !tbaa !61
  br label %820

820:                                              ; preds = %817, %781, %773, %752, %750, %732, %725, %607, %521, %363, %349, %345, %271, %4, %2
  %821 = phi i32 [ %0, %773 ], [ -1, %781 ], [ %0, %817 ], [ -1, %2 ], [ -1, %4 ], [ -1, %271 ], [ -1, %750 ], [ -1, %752 ], [ -1, %732 ], [ -1, %607 ], [ -1, %345 ], [ -1, %349 ], [ -1, %521 ], [ -1, %725 ], [ -1, %363 ]
  ret i32 %821
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gzgets(ptr noundef %0, ptr noundef writeonly captures(address, ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  %7 = icmp slt i32 %2, 1
  %8 = or i1 %6, %7
  br i1 %8, label %970, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load i32, ptr %10, align 8, !tbaa !5
  %12 = icmp eq i32 %11, 7247
  br i1 %12, label %13, label %970

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %15 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %15, label %16 [
    i32 0, label %20
    i32 -5, label %20
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %18 = load i32, ptr %17, align 4, !tbaa !17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %970, label %20

20:                                               ; preds = %16, %13, %13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %22 = load i64, ptr %21, align 8, !tbaa !18
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %496, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %43

43:                                               ; preds = %493, %24
  %44 = phi i64 [ %494, %493 ], [ %22, %24 ]
  %45 = load i32, ptr %0, align 8, !tbaa !19
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %69, label %47

47:                                               ; preds = %43
  %48 = zext i32 %45 to i64
  %49 = tail call i64 @llvm.smin.i64(i64 %44, i64 %48)
  %50 = trunc i64 %49 to i32
  %51 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %45, i32 %50), !nosanitize !20
  %52 = extractvalue { i32, i1 } %51, 1, !nosanitize !20
  br i1 %52, label %53, label %54, !prof !21, !nosanitize !20

53:                                               ; preds = %63, %47
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

54:                                               ; preds = %47
  %55 = extractvalue { i32, i1 } %51, 0, !nosanitize !20
  store i32 %55, ptr %0, align 8, !tbaa !19
  %56 = load ptr, ptr %25, align 8, !tbaa !22
  %57 = and i64 %49, 4294967295
  %58 = getelementptr inbounds nuw i8, ptr %56, i64 %57
  store ptr %58, ptr %25, align 8, !tbaa !22
  %59 = load i64, ptr %26, align 8, !tbaa !23
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %59, i64 %57), !nosanitize !20
  %61 = extractvalue { i64, i1 } %60, 1, !nosanitize !20
  br i1 %61, label %62, label %63, !prof !21, !nosanitize !20

62:                                               ; preds = %54
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

63:                                               ; preds = %54
  %64 = extractvalue { i64, i1 } %60, 0, !nosanitize !20
  store i64 %64, ptr %26, align 8, !tbaa !23
  %65 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %44, i64 %57), !nosanitize !20
  %66 = extractvalue { i64, i1 } %65, 1, !nosanitize !20
  br i1 %66, label %53, label %67, !prof !21, !nosanitize !20

67:                                               ; preds = %63
  %68 = extractvalue { i64, i1 } %65, 0, !nosanitize !20
  store i64 %68, ptr %21, align 8, !tbaa !18
  br label %493

69:                                               ; preds = %43
  %70 = load i32, ptr %27, align 8, !tbaa !24
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %28, align 8, !tbaa !25
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %496, label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %490, %75
  %77 = load i32, ptr %29, align 8, !tbaa !26
  switch i32 %77, label %478 [
    i32 0, label %78
    i32 1, label %314
    i32 2, label %358
  ]

78:                                               ; preds = %76
  %79 = load i32, ptr %30, align 8, !tbaa !27
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %78
  %82 = load i32, ptr %40, align 4, !tbaa !28
  %83 = zext i32 %82 to i64
  %84 = tail call noalias ptr @malloc(i64 noundef %83) #16
  store ptr %84, ptr %35, align 8, !tbaa !29
  %85 = shl i32 %82, 1
  %86 = zext i32 %85 to i64
  %87 = tail call noalias ptr @malloc(i64 noundef %86) #16
  store ptr %87, ptr %32, align 8, !tbaa !30
  %88 = icmp eq ptr %84, null
  %89 = icmp eq ptr %87, null
  %90 = or i1 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  tail call void @free(ptr noundef %87) #13
  tail call void @free(ptr noundef %84) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %970

92:                                               ; preds = %81
  store i32 %82, ptr %30, align 8, !tbaa !27
  store i32 0, ptr %28, align 8, !tbaa !25
  store ptr null, ptr %34, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  %93 = tail call i32 @inflateInit2_(ptr noundef nonnull %34, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %32, align 8, !tbaa !30
  tail call void @free(ptr noundef %96) #13
  %97 = load ptr, ptr %35, align 8, !tbaa !29
  tail call void @free(ptr noundef %97) #13
  store i32 0, ptr %30, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %970

98:                                               ; preds = %92, %78
  %99 = load i32, ptr %42, align 8, !tbaa !32
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, ptr %38, align 4, !tbaa !33
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101, %98
  %105 = tail call i32 @inflateReset(ptr noundef nonnull %34) #13
  store i32 2, ptr %29, align 8, !tbaa !26
  %106 = load i32, ptr %38, align 4, !tbaa !33
  %107 = icmp ne i32 %106, -1
  %108 = zext i1 %107 to i32
  store i32 %108, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %42, align 8, !tbaa !32
  br label %311

109:                                              ; preds = %101
  %110 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %110, label %970 [
    i32 0, label %111
    i32 -5, label %111
  ]

111:                                              ; preds = %109, %109
  %112 = load i32, ptr %27, align 8, !tbaa !24
  %113 = icmp eq i32 %112, 0
  %114 = load i32, ptr %28, align 8, !tbaa !34
  br i1 %113, label %115, label %279

115:                                              ; preds = %111
  %116 = icmp eq i32 %114, 0
  br i1 %116, label %223, label %117

117:                                              ; preds = %115
  %118 = load ptr, ptr %35, align 8, !tbaa !29
  %119 = load ptr, ptr %34, align 8, !tbaa !35
  %120 = icmp eq ptr %119, %118
  br i1 %120, label %223, label %121

121:                                              ; preds = %117
  %122 = ptrtoint ptr %119 to i64
  %123 = ptrtoint ptr %118 to i64
  %124 = zext i32 %114 to i64
  %125 = icmp ult i32 %114, 4
  %126 = sub i64 %123, %122
  %127 = icmp ult i64 %126, 32
  %128 = or i1 %125, %127
  br i1 %128, label %168, label %129

129:                                              ; preds = %121
  %130 = icmp ult i32 %114, 32
  br i1 %130, label %152, label %131

131:                                              ; preds = %129
  %132 = and i64 %124, 4294967264
  br label %133

133:                                              ; preds = %133, %131
  %134 = phi i64 [ 0, %131 ], [ %141, %133 ]
  %135 = getelementptr i8, ptr %118, i64 %134
  %136 = getelementptr i8, ptr %119, i64 %134
  %137 = getelementptr i8, ptr %136, i64 16
  %138 = load <16 x i8>, ptr %136, align 1, !tbaa !36
  %139 = load <16 x i8>, ptr %137, align 1, !tbaa !36
  %140 = getelementptr i8, ptr %135, i64 16
  store <16 x i8> %138, ptr %135, align 1, !tbaa !36
  store <16 x i8> %139, ptr %140, align 1, !tbaa !36
  %141 = add nuw i64 %134, 32
  %142 = icmp eq i64 %141, %132
  br i1 %142, label %143, label %133, !llvm.loop !95

143:                                              ; preds = %133
  %144 = icmp eq i64 %132, %124
  br i1 %144, label %221, label %145

145:                                              ; preds = %143
  %146 = getelementptr i8, ptr %118, i64 %132
  %147 = getelementptr i8, ptr %119, i64 %132
  %148 = trunc nuw i64 %132 to i32
  %149 = sub i32 %114, %148
  %150 = and i64 %124, 28
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %168, label %152

152:                                              ; preds = %145, %129
  %153 = phi i64 [ %132, %145 ], [ 0, %129 ]
  %154 = and i64 %124, 4294967292
  %155 = getelementptr i8, ptr %118, i64 %154
  %156 = getelementptr i8, ptr %119, i64 %154
  %157 = trunc nuw i64 %154 to i32
  %158 = sub i32 %114, %157
  br label %159

159:                                              ; preds = %159, %152
  %160 = phi i64 [ %153, %152 ], [ %164, %159 ]
  %161 = getelementptr i8, ptr %118, i64 %160
  %162 = getelementptr i8, ptr %119, i64 %160
  %163 = load <4 x i8>, ptr %162, align 1, !tbaa !36
  store <4 x i8> %163, ptr %161, align 1, !tbaa !36
  %164 = add nuw i64 %160, 4
  %165 = icmp eq i64 %164, %154
  br i1 %165, label %166, label %159, !llvm.loop !96

166:                                              ; preds = %159
  %167 = icmp eq i64 %154, %124
  br i1 %167, label %221, label %168

168:                                              ; preds = %166, %145, %121
  %169 = phi ptr [ %118, %121 ], [ %146, %145 ], [ %155, %166 ]
  %170 = phi ptr [ %119, %121 ], [ %147, %145 ], [ %156, %166 ]
  %171 = phi i32 [ %114, %121 ], [ %149, %145 ], [ %158, %166 ]
  %172 = add i32 %171, -1
  %173 = and i32 %171, 7
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %186, label %175

175:                                              ; preds = %175, %168
  %176 = phi ptr [ %182, %175 ], [ %169, %168 ]
  %177 = phi ptr [ %183, %175 ], [ %170, %168 ]
  %178 = phi i32 [ %181, %175 ], [ %171, %168 ]
  %179 = phi i32 [ %184, %175 ], [ 0, %168 ]
  %180 = load i8, ptr %177, align 1, !tbaa !36
  store i8 %180, ptr %176, align 1, !tbaa !36
  %181 = add i32 %178, -1
  %182 = getelementptr inbounds nuw i8, ptr %176, i64 1
  %183 = getelementptr inbounds nuw i8, ptr %177, i64 1
  %184 = add i32 %179, 1
  %185 = icmp eq i32 %184, %173
  br i1 %185, label %186, label %175, !llvm.loop !97

186:                                              ; preds = %175, %168
  %187 = phi ptr [ %169, %168 ], [ %182, %175 ]
  %188 = phi ptr [ %170, %168 ], [ %183, %175 ]
  %189 = phi i32 [ %171, %168 ], [ %181, %175 ]
  %190 = icmp ult i32 %172, 7
  br i1 %190, label %221, label %191

191:                                              ; preds = %191, %186
  %192 = phi ptr [ %218, %191 ], [ %187, %186 ]
  %193 = phi ptr [ %219, %191 ], [ %188, %186 ]
  %194 = phi i32 [ %217, %191 ], [ %189, %186 ]
  %195 = load i8, ptr %193, align 1, !tbaa !36
  store i8 %195, ptr %192, align 1, !tbaa !36
  %196 = getelementptr inbounds nuw i8, ptr %192, i64 1
  %197 = getelementptr inbounds nuw i8, ptr %193, i64 1
  %198 = load i8, ptr %197, align 1, !tbaa !36
  store i8 %198, ptr %196, align 1, !tbaa !36
  %199 = getelementptr inbounds nuw i8, ptr %192, i64 2
  %200 = getelementptr inbounds nuw i8, ptr %193, i64 2
  %201 = load i8, ptr %200, align 1, !tbaa !36
  store i8 %201, ptr %199, align 1, !tbaa !36
  %202 = getelementptr inbounds nuw i8, ptr %192, i64 3
  %203 = getelementptr inbounds nuw i8, ptr %193, i64 3
  %204 = load i8, ptr %203, align 1, !tbaa !36
  store i8 %204, ptr %202, align 1, !tbaa !36
  %205 = getelementptr inbounds nuw i8, ptr %192, i64 4
  %206 = getelementptr inbounds nuw i8, ptr %193, i64 4
  %207 = load i8, ptr %206, align 1, !tbaa !36
  store i8 %207, ptr %205, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %192, i64 5
  %209 = getelementptr inbounds nuw i8, ptr %193, i64 5
  %210 = load i8, ptr %209, align 1, !tbaa !36
  store i8 %210, ptr %208, align 1, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %192, i64 6
  %212 = getelementptr inbounds nuw i8, ptr %193, i64 6
  %213 = load i8, ptr %212, align 1, !tbaa !36
  store i8 %213, ptr %211, align 1, !tbaa !36
  %214 = getelementptr inbounds nuw i8, ptr %192, i64 7
  %215 = getelementptr inbounds nuw i8, ptr %193, i64 7
  %216 = load i8, ptr %215, align 1, !tbaa !36
  store i8 %216, ptr %214, align 1, !tbaa !36
  %217 = add i32 %194, -8
  %218 = getelementptr inbounds nuw i8, ptr %192, i64 8
  %219 = getelementptr inbounds nuw i8, ptr %193, i64 8
  %220 = icmp eq i32 %217, 0
  br i1 %220, label %221, label %191, !llvm.loop !98

221:                                              ; preds = %191, %186, %166, %143
  %222 = load i32, ptr %28, align 8, !tbaa !34
  br label %223

223:                                              ; preds = %221, %117, %115
  %224 = phi i32 [ %222, %221 ], [ %114, %117 ], [ 0, %115 ]
  %225 = load i32, ptr %30, align 8, !tbaa !27
  %226 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %225, i32 %224), !nosanitize !20
  %227 = extractvalue { i32, i1 } %226, 1, !nosanitize !20
  br i1 %227, label %228, label %229, !prof !21, !nosanitize !20

228:                                              ; preds = %223
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

229:                                              ; preds = %223
  %230 = extractvalue { i32, i1 } %226, 0, !nosanitize !20
  %231 = load ptr, ptr %35, align 8, !tbaa !29
  %232 = zext i32 %224 to i64
  %233 = getelementptr inbounds nuw i8, ptr %231, i64 %232
  store i32 0, ptr %36, align 4, !tbaa !17
  %234 = tail call ptr @__errno_location() #17
  store i32 0, ptr %234, align 4, !tbaa !45
  br label %235

235:                                              ; preds = %254, %229
  %236 = phi i32 [ 0, %229 ], [ %255, %254 ]
  %237 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %230, i32 %236), !nosanitize !20
  %238 = extractvalue { i32, i1 } %237, 1, !nosanitize !20
  br i1 %238, label %239, label %240, !prof !21, !nosanitize !20

239:                                              ; preds = %235
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

240:                                              ; preds = %235
  %241 = extractvalue { i32, i1 } %237, 0, !nosanitize !20
  %242 = tail call i32 @llvm.umin.i32(i32 %241, i32 1073741824)
  %243 = load i32, ptr %37, align 4, !tbaa !46
  %244 = zext i32 %236 to i64
  %245 = getelementptr inbounds nuw i8, ptr %233, i64 %244
  %246 = zext nneg i32 %242 to i64
  %247 = tail call i64 @read(i32 noundef %243, ptr noundef %245, i64 noundef %246) #13
  %248 = trunc i64 %247 to i32
  %249 = icmp slt i32 %248, 1
  br i1 %249, label %257, label %250

250:                                              ; preds = %240
  %251 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %236, i32 %248), !nosanitize !20
  %252 = extractvalue { i32, i1 } %251, 1, !nosanitize !20
  br i1 %252, label %253, label %254, !prof !21, !nosanitize !20

253:                                              ; preds = %250
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

254:                                              ; preds = %250
  %255 = extractvalue { i32, i1 } %251, 0, !nosanitize !20
  %256 = icmp ult i32 %255, %230
  br i1 %256, label %235, label %270, !llvm.loop !47

257:                                              ; preds = %240
  %258 = icmp slt i32 %248, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %257
  %260 = load i32, ptr %234, align 4, !tbaa !45
  %261 = icmp eq i32 %260, 11
  br i1 %261, label %262, label %267

262:                                              ; preds = %259
  store i32 1, ptr %36, align 4, !tbaa !17
  %263 = icmp eq i32 %236, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %262
  %265 = load i32, ptr %234, align 4, !tbaa !45
  br label %267

266:                                              ; preds = %257
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %270

267:                                              ; preds = %264, %259
  %268 = phi i32 [ %265, %264 ], [ %260, %259 ]
  %269 = tail call ptr @strerror(i32 noundef %268) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %269) #13
  br label %970

270:                                              ; preds = %266, %262, %254
  %271 = phi i32 [ %236, %266 ], [ %236, %262 ], [ %255, %254 ]
  %272 = load i32, ptr %28, align 8, !tbaa !34
  %273 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %272, i32 %271), !nosanitize !20
  %274 = extractvalue { i32, i1 } %273, 1, !nosanitize !20
  br i1 %274, label %275, label %276, !prof !21, !nosanitize !20

275:                                              ; preds = %270
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

276:                                              ; preds = %270
  %277 = extractvalue { i32, i1 } %273, 0, !nosanitize !20
  store i32 %277, ptr %28, align 8, !tbaa !34
  %278 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %278, ptr %34, align 8, !tbaa !35
  br label %279

279:                                              ; preds = %276, %111
  %280 = phi i32 [ %277, %276 ], [ %114, %111 ]
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %311, label %282

282:                                              ; preds = %279
  %283 = load i32, ptr %36, align 4, !tbaa !17
  %284 = icmp ne i32 %283, 0
  %285 = icmp ult i32 %280, 4
  %286 = and i1 %285, %284
  br i1 %286, label %311, label %287

287:                                              ; preds = %282
  %288 = icmp ugt i32 %280, 3
  %289 = load ptr, ptr %34, align 8, !tbaa !35
  br i1 %288, label %290, label %307

290:                                              ; preds = %287
  %291 = load i8, ptr %289, align 1, !tbaa !36
  %292 = icmp eq i8 %291, 31
  br i1 %292, label %293, label %307

293:                                              ; preds = %290
  %294 = getelementptr inbounds nuw i8, ptr %289, i64 1
  %295 = load i8, ptr %294, align 1, !tbaa !36
  %296 = icmp eq i8 %295, -117
  br i1 %296, label %297, label %307

297:                                              ; preds = %293
  %298 = getelementptr inbounds nuw i8, ptr %289, i64 2
  %299 = load i8, ptr %298, align 1, !tbaa !36
  %300 = icmp eq i8 %299, 8
  br i1 %300, label %301, label %307

301:                                              ; preds = %297
  %302 = getelementptr inbounds nuw i8, ptr %289, i64 3
  %303 = load i8, ptr %302, align 1, !tbaa !36
  %304 = icmp ult i8 %303, 32
  br i1 %304, label %305, label %307

305:                                              ; preds = %301
  %306 = tail call i32 @inflateReset(ptr noundef nonnull %34) #13
  store i32 2, ptr %29, align 8, !tbaa !26
  store i32 1, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %42, align 8, !tbaa !32
  br label %479

307:                                              ; preds = %301, %297, %293, %290, %287
  %308 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %308, ptr %25, align 8, !tbaa !22
  %309 = zext i32 %280 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %308, ptr align 1 %289, i64 %309, i1 false)
  %310 = load i32, ptr %28, align 8, !tbaa !34
  store i32 %310, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !26
  br label %481

311:                                              ; preds = %282, %279, %104
  %312 = load i32, ptr %29, align 8, !tbaa !26
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %491, label %479

314:                                              ; preds = %76
  %315 = load ptr, ptr %32, align 8, !tbaa !30
  %316 = load i32, ptr %30, align 8, !tbaa !27
  %317 = shl i32 %316, 1
  store i32 0, ptr %36, align 4, !tbaa !17
  %318 = tail call ptr @__errno_location() #17
  store i32 0, ptr %318, align 4, !tbaa !45
  store i32 0, ptr %0, align 4, !tbaa !45
  br label %319

319:                                              ; preds = %339, %314
  %320 = phi i32 [ %340, %339 ], [ 0, %314 ]
  %321 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %317, i32 %320), !nosanitize !20
  %322 = extractvalue { i32, i1 } %321, 1, !nosanitize !20
  br i1 false, label %323, label %324, !prof !21, !nosanitize !20

323:                                              ; preds = %319
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

324:                                              ; preds = %319
  %325 = extractvalue { i32, i1 } %321, 0, !nosanitize !20
  %326 = tail call i32 @llvm.umin.i32(i32 %325, i32 1073741824)
  %327 = load i32, ptr %37, align 4, !tbaa !46
  %328 = zext i32 %320 to i64
  %329 = getelementptr inbounds nuw i8, ptr %315, i64 %328
  %330 = zext nneg i32 %326 to i64
  %331 = tail call i64 @read(i32 noundef %327, ptr noundef %329, i64 noundef %330) #13
  %332 = trunc i64 %331 to i32
  %333 = icmp slt i32 %332, 1
  br i1 %333, label %342, label %334

334:                                              ; preds = %324
  %335 = load i32, ptr %0, align 4, !tbaa !45
  %336 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %335, i32 %332), !nosanitize !20
  %337 = extractvalue { i32, i1 } %336, 1, !nosanitize !20
  br i1 %337, label %338, label %339, !prof !21, !nosanitize !20

338:                                              ; preds = %334
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

339:                                              ; preds = %334
  %340 = extractvalue { i32, i1 } %336, 0, !nosanitize !20
  store i32 %340, ptr %0, align 4, !tbaa !45
  %341 = icmp ult i32 %340, %317
  br i1 %341, label %319, label %356, !llvm.loop !47

342:                                              ; preds = %324
  %343 = icmp slt i32 %332, 0
  br i1 %343, label %344, label %352

344:                                              ; preds = %342
  %345 = load i32, ptr %318, align 4, !tbaa !45
  %346 = icmp eq i32 %345, 11
  br i1 %346, label %347, label %353

347:                                              ; preds = %344
  store i32 1, ptr %36, align 4, !tbaa !17
  %348 = load i32, ptr %0, align 4, !tbaa !45
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %347
  %351 = load i32, ptr %318, align 4, !tbaa !45
  br label %353

352:                                              ; preds = %342
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %356

353:                                              ; preds = %350, %344
  %354 = phi i32 [ %351, %350 ], [ %345, %344 ]
  %355 = tail call ptr @strerror(i32 noundef %354) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %355) #13
  br label %970

356:                                              ; preds = %352, %347, %339
  %357 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %357, ptr %25, align 8, !tbaa !22
  br label %491

358:                                              ; preds = %76
  %359 = load i32, ptr %30, align 8, !tbaa !27
  %360 = shl i32 %359, 1
  store i32 %360, ptr %31, align 8, !tbaa !48
  %361 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %361, ptr %33, align 8, !tbaa !49
  br label %362

362:                                              ; preds = %461, %358
  %363 = phi i32 [ 0, %358 ], [ %446, %461 ]
  %364 = load i32, ptr %28, align 8, !tbaa !34
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %445

366:                                              ; preds = %362
  %367 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %367, label %465 [
    i32 0, label %368
    i32 -5, label %368
  ]

368:                                              ; preds = %366, %366
  %369 = load i32, ptr %27, align 8, !tbaa !24
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %441

371:                                              ; preds = %368
  %372 = load i32, ptr %30, align 8, !tbaa !27
  %373 = load ptr, ptr %35, align 8, !tbaa !29
  store i32 0, ptr %36, align 4, !tbaa !17
  %374 = tail call ptr @__errno_location() #17
  store i32 0, ptr %374, align 4, !tbaa !45
  %mv.h = icmp sge i32 %372, 0
  %mv.h.fr = freeze i1 %mv.h
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %371
  br label %375

375:                                              ; preds = %392, %.mv.ph.mv.fast
  %376 = phi i32 [ 0, %.mv.ph.mv.fast ], [ %393, %392 ]
  %377 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %372, i32 %376), !nosanitize !20
  %378 = extractvalue { i32, i1 } %377, 1, !nosanitize !20
  br i1 false, label %399, label %379, !prof !21, !nosanitize !20

379:                                              ; preds = %375
  %380 = extractvalue { i32, i1 } %377, 0, !nosanitize !20
  %381 = tail call i32 @llvm.umin.i32(i32 %380, i32 1073741824)
  %382 = load i32, ptr %37, align 4, !tbaa !46
  %383 = zext i32 %376 to i64
  %384 = getelementptr inbounds nuw i8, ptr %373, i64 %383
  %385 = zext nneg i32 %381 to i64
  %386 = tail call i64 @read(i32 noundef %382, ptr noundef %384, i64 noundef %385) #13
  %387 = trunc i64 %386 to i32
  %388 = icmp slt i32 %387, 1
  br i1 %388, label %417, label %389

389:                                              ; preds = %379
  %390 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %376, i32 %387), !nosanitize !20
  %391 = extractvalue { i32, i1 } %390, 1, !nosanitize !20
  br i1 false, label %413, label %392, !prof !21, !nosanitize !20

392:                                              ; preds = %389
  %393 = extractvalue { i32, i1 } %390, 0, !nosanitize !20
  %394 = icmp ult i32 %393, %372
  br i1 %394, label %375, label %.loopexit, !llvm.loop !47

.mv.ph:                                           ; preds = %371
  br label %395

395:                                              ; preds = %414, %.mv.ph
  %396 = phi i32 [ 0, %.mv.ph ], [ %415, %414 ]
  %397 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %372, i32 %396), !nosanitize !20
  %398 = extractvalue { i32, i1 } %397, 1, !nosanitize !20
  br i1 false, label %399, label %400, !prof !21, !nosanitize !20

399:                                              ; preds = %375, %395
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

400:                                              ; preds = %395
  %401 = extractvalue { i32, i1 } %397, 0, !nosanitize !20
  %402 = tail call i32 @llvm.umin.i32(i32 %401, i32 1073741824)
  %403 = load i32, ptr %37, align 4, !tbaa !46
  %404 = zext i32 %396 to i64
  %405 = getelementptr inbounds nuw i8, ptr %373, i64 %404
  %406 = zext nneg i32 %402 to i64
  %407 = tail call i64 @read(i32 noundef %403, ptr noundef %405, i64 noundef %406) #13
  %408 = trunc i64 %407 to i32
  %409 = icmp slt i32 %408, 1
  br i1 %409, label %417, label %410

410:                                              ; preds = %400
  %411 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %396, i32 %408), !nosanitize !20
  %412 = extractvalue { i32, i1 } %411, 1, !nosanitize !20
  br i1 %412, label %413, label %414, !prof !21, !nosanitize !20

413:                                              ; preds = %389, %410
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

414:                                              ; preds = %410
  %415 = extractvalue { i32, i1 } %411, 0, !nosanitize !20
  %416 = icmp ult i32 %415, %372
  br i1 %416, label %395, label %.loopexit, !llvm.loop !47

417:                                              ; preds = %379, %400
  %.lcssa4 = phi i32 [ %408, %400 ], [ %387, %379 ]
  %.lcssa1 = phi i32 [ %396, %400 ], [ %376, %379 ]
  %418 = icmp slt i32 %.lcssa4, 0
  br i1 %418, label %419, label %426

419:                                              ; preds = %417
  %420 = load i32, ptr %374, align 4, !tbaa !45
  %421 = icmp eq i32 %420, 11
  br i1 %421, label %422, label %427

422:                                              ; preds = %419
  store i32 1, ptr %36, align 4, !tbaa !17
  %423 = icmp eq i32 %.lcssa1, 0
  br i1 %423, label %424, label %431

424:                                              ; preds = %422
  %425 = load i32, ptr %374, align 4, !tbaa !45
  br label %427

426:                                              ; preds = %417
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %431

427:                                              ; preds = %424, %419
  %428 = phi i32 [ %425, %424 ], [ %420, %419 ]
  %429 = tail call ptr @strerror(i32 noundef %428) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %429) #13
  %430 = load i32, ptr %14, align 8, !tbaa !16
  br label %465

.loopexit:                                        ; preds = %392, %414
  %.lcssa7 = phi i32 [ %415, %414 ], [ %393, %392 ]
  br label %431

431:                                              ; preds = %.loopexit, %426, %422
  %432 = phi i32 [ %.lcssa1, %426 ], [ %.lcssa1, %422 ], [ %.lcssa7, %.loopexit ]
  %433 = load i32, ptr %28, align 8, !tbaa !34
  %434 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %433, i32 %432), !nosanitize !20
  %435 = extractvalue { i32, i1 } %434, 1, !nosanitize !20
  br i1 %435, label %436, label %437, !prof !21, !nosanitize !20

436:                                              ; preds = %431
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

437:                                              ; preds = %431
  %438 = extractvalue { i32, i1 } %434, 0, !nosanitize !20
  store i32 %438, ptr %28, align 8, !tbaa !34
  %439 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %439, ptr %34, align 8, !tbaa !35
  %440 = icmp eq i32 %438, 0
  br i1 %440, label %441, label %445

441:                                              ; preds = %437, %368
  %442 = load i32, ptr %36, align 4, !tbaa !17
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %465

444:                                              ; preds = %441
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %465

445:                                              ; preds = %437, %362
  %446 = tail call i32 @inflate(ptr noundef nonnull %34, i32 noundef 0) #13
  %447 = load i32, ptr %31, align 8, !tbaa !48
  %448 = icmp ult i32 %447, %360
  br i1 %448, label %449, label %450

449:                                              ; preds = %445
  store i32 0, ptr %38, align 4, !tbaa !33
  br label %450

450:                                              ; preds = %449, %445
  switch i32 %446, label %461 [
    i32 -2, label %451
    i32 2, label %451
    i32 -4, label %452
    i32 -3, label %453
  ]

451:                                              ; preds = %450, %450
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %465

452:                                              ; preds = %450
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %465

453:                                              ; preds = %450
  %454 = load i32, ptr %38, align 4, !tbaa !33
  %455 = icmp eq i32 %454, 1
  br i1 %455, label %456, label %457

456:                                              ; preds = %453
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %27, align 8, !tbaa !24
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %465

457:                                              ; preds = %453
  %458 = load ptr, ptr %39, align 8, !tbaa !50
  %459 = icmp eq ptr %458, null
  %460 = select i1 %459, ptr @.str.6, ptr %458
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %460) #13
  br label %465

461:                                              ; preds = %450
  %462 = icmp ne i32 %447, 0
  %463 = icmp ne i32 %446, 1
  %464 = select i1 %462, i1 %463, i1 false
  br i1 %464, label %362, label %465, !llvm.loop !51

465:                                              ; preds = %461, %457, %456, %452, %451, %444, %441, %427, %366
  %466 = phi i32 [ %363, %441 ], [ %363, %444 ], [ %446, %451 ], [ -4, %452 ], [ 0, %456 ], [ -3, %457 ], [ %430, %427 ], [ %367, %366 ], [ %446, %461 ]
  %467 = load i32, ptr %31, align 8, !tbaa !48
  %468 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %360, i32 %467), !nosanitize !20
  %469 = extractvalue { i32, i1 } %468, 1, !nosanitize !20
  br i1 %469, label %470, label %471, !prof !21, !nosanitize !20

470:                                              ; preds = %465
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

471:                                              ; preds = %465
  %472 = extractvalue { i32, i1 } %468, 0, !nosanitize !20
  store i32 %472, ptr %0, align 8, !tbaa !19
  %473 = load ptr, ptr %33, align 8, !tbaa !49
  %474 = zext i32 %472 to i64
  %475 = sub nsw i64 0, %474
  %476 = getelementptr inbounds i8, ptr %473, i64 %475
  store ptr %476, ptr %25, align 8, !tbaa !22
  switch i32 %466, label %970 [
    i32 1, label %477
    i32 0, label %479
  ]

477:                                              ; preds = %471
  store i32 0, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %479

478:                                              ; preds = %76
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %970

479:                                              ; preds = %477, %471, %311, %305
  %480 = load i32, ptr %0, align 8, !tbaa !19
  br label %481

481:                                              ; preds = %479, %307
  %482 = phi i32 [ %480, %479 ], [ %310, %307 ]
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %491

484:                                              ; preds = %481
  %485 = load i32, ptr %27, align 8, !tbaa !24
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %490, label %487

487:                                              ; preds = %484
  %488 = load i32, ptr %28, align 8, !tbaa !34
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %491, label %490

490:                                              ; preds = %487, %484
  br label %76, !llvm.loop !52

491:                                              ; preds = %487, %481, %356, %311
  %492 = load i64, ptr %21, align 8, !tbaa !18
  br label %493

493:                                              ; preds = %491, %67
  %494 = phi i64 [ %492, %491 ], [ %68, %67 ]
  %495 = icmp eq i64 %494, 0
  br i1 %495, label %496, label %43, !llvm.loop !53

496:                                              ; preds = %493, %72, %20
  %497 = add nsw i32 %2, -1
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %970, label %499

499:                                              ; preds = %496
  %500 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %501 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %502 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %503 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %504 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %505 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %506 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %507 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %508 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %509 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %510 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %511 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %512 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %513 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %514 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %515 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %516 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %517 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %518 = load i32, ptr %0, align 8, !tbaa !19
  br label %519

519:                                              ; preds = %961, %499
  %520 = phi i32 [ %950, %961 ], [ %518, %499 ]
  %521 = phi i32 [ %962, %961 ], [ %497, %499 ]
  %522 = phi ptr [ %963, %961 ], [ %1, %499 ]
  %523 = icmp eq i32 %520, 0
  br i1 %523, label %524, label %924

524:                                              ; preds = %918, %519
  %525 = load i32, ptr %500, align 8, !tbaa !26
  switch i32 %525, label %906 [
    i32 0, label %526
    i32 1, label %762
    i32 2, label %806
  ]

526:                                              ; preds = %524
  %527 = load i32, ptr %501, align 8, !tbaa !27
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %546

529:                                              ; preds = %526
  %530 = load i32, ptr %514, align 4, !tbaa !28
  %531 = zext i32 %530 to i64
  %532 = tail call noalias ptr @malloc(i64 noundef %531) #16
  store ptr %532, ptr %508, align 8, !tbaa !29
  %533 = shl i32 %530, 1
  %534 = zext i32 %533 to i64
  %535 = tail call noalias ptr @malloc(i64 noundef %534) #16
  store ptr %535, ptr %503, align 8, !tbaa !30
  %536 = icmp eq ptr %532, null
  %537 = icmp eq ptr %535, null
  %538 = or i1 %536, %537
  br i1 %538, label %539, label %540

539:                                              ; preds = %529
  tail call void @free(ptr noundef %535) #13
  tail call void @free(ptr noundef %532) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %966

540:                                              ; preds = %529
  store i32 %530, ptr %501, align 8, !tbaa !27
  store i32 0, ptr %506, align 8, !tbaa !25
  store ptr null, ptr %505, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %515, i8 0, i64 24, i1 false)
  %541 = tail call i32 @inflateInit2_(ptr noundef nonnull %505, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %546, label %543

543:                                              ; preds = %540
  %544 = load ptr, ptr %503, align 8, !tbaa !30
  tail call void @free(ptr noundef %544) #13
  %545 = load ptr, ptr %508, align 8, !tbaa !29
  tail call void @free(ptr noundef %545) #13
  store i32 0, ptr %501, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %966

546:                                              ; preds = %540, %526
  %547 = load i32, ptr %516, align 8, !tbaa !32
  %548 = icmp eq i32 %547, -1
  br i1 %548, label %552, label %549

549:                                              ; preds = %546
  %550 = load i32, ptr %511, align 4, !tbaa !33
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %552, label %557

552:                                              ; preds = %549, %546
  %553 = tail call i32 @inflateReset(ptr noundef nonnull %505) #13
  store i32 2, ptr %500, align 8, !tbaa !26
  %554 = load i32, ptr %511, align 4, !tbaa !33
  %555 = icmp ne i32 %554, -1
  %556 = zext i1 %555 to i32
  store i32 %556, ptr %511, align 4, !tbaa !33
  store i32 0, ptr %516, align 8, !tbaa !32
  br label %759

557:                                              ; preds = %549
  %558 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %558, label %966 [
    i32 0, label %559
    i32 -5, label %559
  ]

559:                                              ; preds = %557, %557
  %560 = load i32, ptr %507, align 8, !tbaa !24
  %561 = icmp eq i32 %560, 0
  %562 = load i32, ptr %506, align 8, !tbaa !34
  br i1 %561, label %563, label %727

563:                                              ; preds = %559
  %564 = icmp eq i32 %562, 0
  br i1 %564, label %671, label %565

565:                                              ; preds = %563
  %566 = load ptr, ptr %508, align 8, !tbaa !29
  %567 = load ptr, ptr %505, align 8, !tbaa !35
  %568 = icmp eq ptr %567, %566
  br i1 %568, label %671, label %569

569:                                              ; preds = %565
  %570 = ptrtoint ptr %567 to i64
  %571 = ptrtoint ptr %566 to i64
  %572 = zext i32 %562 to i64
  %573 = icmp ult i32 %562, 4
  %574 = sub i64 %571, %570
  %575 = icmp ult i64 %574, 32
  %576 = or i1 %573, %575
  br i1 %576, label %616, label %577

577:                                              ; preds = %569
  %578 = icmp ult i32 %562, 32
  br i1 %578, label %600, label %579

579:                                              ; preds = %577
  %580 = and i64 %572, 4294967264
  br label %581

581:                                              ; preds = %581, %579
  %582 = phi i64 [ 0, %579 ], [ %589, %581 ]
  %583 = getelementptr i8, ptr %566, i64 %582
  %584 = getelementptr i8, ptr %567, i64 %582
  %585 = getelementptr i8, ptr %584, i64 16
  %586 = load <16 x i8>, ptr %584, align 1, !tbaa !36
  %587 = load <16 x i8>, ptr %585, align 1, !tbaa !36
  %588 = getelementptr i8, ptr %583, i64 16
  store <16 x i8> %586, ptr %583, align 1, !tbaa !36
  store <16 x i8> %587, ptr %588, align 1, !tbaa !36
  %589 = add nuw i64 %582, 32
  %590 = icmp eq i64 %589, %580
  br i1 %590, label %591, label %581, !llvm.loop !99

591:                                              ; preds = %581
  %592 = icmp eq i64 %580, %572
  br i1 %592, label %669, label %593

593:                                              ; preds = %591
  %594 = getelementptr i8, ptr %566, i64 %580
  %595 = getelementptr i8, ptr %567, i64 %580
  %596 = trunc nuw i64 %580 to i32
  %597 = sub i32 %562, %596
  %598 = and i64 %572, 28
  %599 = icmp eq i64 %598, 0
  br i1 %599, label %616, label %600

600:                                              ; preds = %593, %577
  %601 = phi i64 [ %580, %593 ], [ 0, %577 ]
  %602 = and i64 %572, 4294967292
  %603 = getelementptr i8, ptr %566, i64 %602
  %604 = getelementptr i8, ptr %567, i64 %602
  %605 = trunc nuw i64 %602 to i32
  %606 = sub i32 %562, %605
  br label %607

607:                                              ; preds = %607, %600
  %608 = phi i64 [ %601, %600 ], [ %612, %607 ]
  %609 = getelementptr i8, ptr %566, i64 %608
  %610 = getelementptr i8, ptr %567, i64 %608
  %611 = load <4 x i8>, ptr %610, align 1, !tbaa !36
  store <4 x i8> %611, ptr %609, align 1, !tbaa !36
  %612 = add nuw i64 %608, 4
  %613 = icmp eq i64 %612, %602
  br i1 %613, label %614, label %607, !llvm.loop !100

614:                                              ; preds = %607
  %615 = icmp eq i64 %602, %572
  br i1 %615, label %669, label %616

616:                                              ; preds = %614, %593, %569
  %617 = phi ptr [ %566, %569 ], [ %594, %593 ], [ %603, %614 ]
  %618 = phi ptr [ %567, %569 ], [ %595, %593 ], [ %604, %614 ]
  %619 = phi i32 [ %562, %569 ], [ %597, %593 ], [ %606, %614 ]
  %620 = add i32 %619, -1
  %621 = and i32 %619, 7
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %634, label %623

623:                                              ; preds = %623, %616
  %624 = phi ptr [ %630, %623 ], [ %617, %616 ]
  %625 = phi ptr [ %631, %623 ], [ %618, %616 ]
  %626 = phi i32 [ %629, %623 ], [ %619, %616 ]
  %627 = phi i32 [ %632, %623 ], [ 0, %616 ]
  %628 = load i8, ptr %625, align 1, !tbaa !36
  store i8 %628, ptr %624, align 1, !tbaa !36
  %629 = add i32 %626, -1
  %630 = getelementptr inbounds nuw i8, ptr %624, i64 1
  %631 = getelementptr inbounds nuw i8, ptr %625, i64 1
  %632 = add i32 %627, 1
  %633 = icmp eq i32 %632, %621
  br i1 %633, label %634, label %623, !llvm.loop !101

634:                                              ; preds = %623, %616
  %635 = phi ptr [ %617, %616 ], [ %630, %623 ]
  %636 = phi ptr [ %618, %616 ], [ %631, %623 ]
  %637 = phi i32 [ %619, %616 ], [ %629, %623 ]
  %638 = icmp ult i32 %620, 7
  br i1 %638, label %669, label %639

639:                                              ; preds = %639, %634
  %640 = phi ptr [ %666, %639 ], [ %635, %634 ]
  %641 = phi ptr [ %667, %639 ], [ %636, %634 ]
  %642 = phi i32 [ %665, %639 ], [ %637, %634 ]
  %643 = load i8, ptr %641, align 1, !tbaa !36
  store i8 %643, ptr %640, align 1, !tbaa !36
  %644 = getelementptr inbounds nuw i8, ptr %640, i64 1
  %645 = getelementptr inbounds nuw i8, ptr %641, i64 1
  %646 = load i8, ptr %645, align 1, !tbaa !36
  store i8 %646, ptr %644, align 1, !tbaa !36
  %647 = getelementptr inbounds nuw i8, ptr %640, i64 2
  %648 = getelementptr inbounds nuw i8, ptr %641, i64 2
  %649 = load i8, ptr %648, align 1, !tbaa !36
  store i8 %649, ptr %647, align 1, !tbaa !36
  %650 = getelementptr inbounds nuw i8, ptr %640, i64 3
  %651 = getelementptr inbounds nuw i8, ptr %641, i64 3
  %652 = load i8, ptr %651, align 1, !tbaa !36
  store i8 %652, ptr %650, align 1, !tbaa !36
  %653 = getelementptr inbounds nuw i8, ptr %640, i64 4
  %654 = getelementptr inbounds nuw i8, ptr %641, i64 4
  %655 = load i8, ptr %654, align 1, !tbaa !36
  store i8 %655, ptr %653, align 1, !tbaa !36
  %656 = getelementptr inbounds nuw i8, ptr %640, i64 5
  %657 = getelementptr inbounds nuw i8, ptr %641, i64 5
  %658 = load i8, ptr %657, align 1, !tbaa !36
  store i8 %658, ptr %656, align 1, !tbaa !36
  %659 = getelementptr inbounds nuw i8, ptr %640, i64 6
  %660 = getelementptr inbounds nuw i8, ptr %641, i64 6
  %661 = load i8, ptr %660, align 1, !tbaa !36
  store i8 %661, ptr %659, align 1, !tbaa !36
  %662 = getelementptr inbounds nuw i8, ptr %640, i64 7
  %663 = getelementptr inbounds nuw i8, ptr %641, i64 7
  %664 = load i8, ptr %663, align 1, !tbaa !36
  store i8 %664, ptr %662, align 1, !tbaa !36
  %665 = add i32 %642, -8
  %666 = getelementptr inbounds nuw i8, ptr %640, i64 8
  %667 = getelementptr inbounds nuw i8, ptr %641, i64 8
  %668 = icmp eq i32 %665, 0
  br i1 %668, label %669, label %639, !llvm.loop !102

669:                                              ; preds = %639, %634, %614, %591
  %670 = load i32, ptr %506, align 8, !tbaa !34
  br label %671

671:                                              ; preds = %669, %565, %563
  %672 = phi i32 [ %670, %669 ], [ %562, %565 ], [ 0, %563 ]
  %673 = load i32, ptr %501, align 8, !tbaa !27
  %674 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %673, i32 %672), !nosanitize !20
  %675 = extractvalue { i32, i1 } %674, 1, !nosanitize !20
  br i1 %675, label %676, label %677, !prof !21, !nosanitize !20

676:                                              ; preds = %671
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

677:                                              ; preds = %671
  %678 = extractvalue { i32, i1 } %674, 0, !nosanitize !20
  %679 = load ptr, ptr %508, align 8, !tbaa !29
  %680 = zext i32 %672 to i64
  %681 = getelementptr inbounds nuw i8, ptr %679, i64 %680
  store i32 0, ptr %509, align 4, !tbaa !17
  %682 = tail call ptr @__errno_location() #17
  store i32 0, ptr %682, align 4, !tbaa !45
  br label %683

683:                                              ; preds = %702, %677
  %684 = phi i32 [ 0, %677 ], [ %703, %702 ]
  %685 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %678, i32 %684), !nosanitize !20
  %686 = extractvalue { i32, i1 } %685, 1, !nosanitize !20
  br i1 %686, label %687, label %688, !prof !21, !nosanitize !20

687:                                              ; preds = %683
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

688:                                              ; preds = %683
  %689 = extractvalue { i32, i1 } %685, 0, !nosanitize !20
  %690 = tail call i32 @llvm.umin.i32(i32 %689, i32 1073741824)
  %691 = load i32, ptr %510, align 4, !tbaa !46
  %692 = zext i32 %684 to i64
  %693 = getelementptr inbounds nuw i8, ptr %681, i64 %692
  %694 = zext nneg i32 %690 to i64
  %695 = tail call i64 @read(i32 noundef %691, ptr noundef %693, i64 noundef %694) #13
  %696 = trunc i64 %695 to i32
  %697 = icmp slt i32 %696, 1
  br i1 %697, label %705, label %698

698:                                              ; preds = %688
  %699 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %684, i32 %696), !nosanitize !20
  %700 = extractvalue { i32, i1 } %699, 1, !nosanitize !20
  br i1 %700, label %701, label %702, !prof !21, !nosanitize !20

701:                                              ; preds = %698
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

702:                                              ; preds = %698
  %703 = extractvalue { i32, i1 } %699, 0, !nosanitize !20
  %704 = icmp ult i32 %703, %678
  br i1 %704, label %683, label %718, !llvm.loop !47

705:                                              ; preds = %688
  %706 = icmp slt i32 %696, 0
  br i1 %706, label %707, label %714

707:                                              ; preds = %705
  %708 = load i32, ptr %682, align 4, !tbaa !45
  %709 = icmp eq i32 %708, 11
  br i1 %709, label %710, label %715

710:                                              ; preds = %707
  store i32 1, ptr %509, align 4, !tbaa !17
  %711 = icmp eq i32 %684, 0
  br i1 %711, label %712, label %718

712:                                              ; preds = %710
  %713 = load i32, ptr %682, align 4, !tbaa !45
  br label %715

714:                                              ; preds = %705
  store i32 1, ptr %507, align 8, !tbaa !24
  br label %718

715:                                              ; preds = %712, %707
  %716 = phi i32 [ %713, %712 ], [ %708, %707 ]
  %717 = tail call ptr @strerror(i32 noundef %716) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %717) #13
  br label %966

718:                                              ; preds = %714, %710, %702
  %719 = phi i32 [ %684, %714 ], [ %684, %710 ], [ %703, %702 ]
  %720 = load i32, ptr %506, align 8, !tbaa !34
  %721 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %720, i32 %719), !nosanitize !20
  %722 = extractvalue { i32, i1 } %721, 1, !nosanitize !20
  br i1 %722, label %723, label %724, !prof !21, !nosanitize !20

723:                                              ; preds = %718
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

724:                                              ; preds = %718
  %725 = extractvalue { i32, i1 } %721, 0, !nosanitize !20
  store i32 %725, ptr %506, align 8, !tbaa !34
  %726 = load ptr, ptr %508, align 8, !tbaa !29
  store ptr %726, ptr %505, align 8, !tbaa !35
  br label %727

727:                                              ; preds = %724, %559
  %728 = phi i32 [ %725, %724 ], [ %562, %559 ]
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %759, label %730

730:                                              ; preds = %727
  %731 = load i32, ptr %509, align 4, !tbaa !17
  %732 = icmp ne i32 %731, 0
  %733 = icmp ult i32 %728, 4
  %734 = and i1 %733, %732
  br i1 %734, label %759, label %735

735:                                              ; preds = %730
  %736 = icmp ugt i32 %728, 3
  %737 = load ptr, ptr %505, align 8, !tbaa !35
  br i1 %736, label %738, label %755

738:                                              ; preds = %735
  %739 = load i8, ptr %737, align 1, !tbaa !36
  %740 = icmp eq i8 %739, 31
  br i1 %740, label %741, label %755

741:                                              ; preds = %738
  %742 = getelementptr inbounds nuw i8, ptr %737, i64 1
  %743 = load i8, ptr %742, align 1, !tbaa !36
  %744 = icmp eq i8 %743, -117
  br i1 %744, label %745, label %755

745:                                              ; preds = %741
  %746 = getelementptr inbounds nuw i8, ptr %737, i64 2
  %747 = load i8, ptr %746, align 1, !tbaa !36
  %748 = icmp eq i8 %747, 8
  br i1 %748, label %749, label %755

749:                                              ; preds = %745
  %750 = getelementptr inbounds nuw i8, ptr %737, i64 3
  %751 = load i8, ptr %750, align 1, !tbaa !36
  %752 = icmp ult i8 %751, 32
  br i1 %752, label %753, label %755

753:                                              ; preds = %749
  %754 = tail call i32 @inflateReset(ptr noundef nonnull %505) #13
  store i32 2, ptr %500, align 8, !tbaa !26
  store i32 1, ptr %511, align 4, !tbaa !33
  store i32 0, ptr %516, align 8, !tbaa !32
  br label %907

755:                                              ; preds = %749, %745, %741, %738, %735
  %756 = load ptr, ptr %503, align 8, !tbaa !30
  store ptr %756, ptr %513, align 8, !tbaa !22
  %757 = zext i32 %728 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %756, ptr align 1 %737, i64 %757, i1 false)
  %758 = load i32, ptr %506, align 8, !tbaa !34
  store i32 %758, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %506, align 8, !tbaa !34
  store i32 1, ptr %500, align 8, !tbaa !26
  br label %909

759:                                              ; preds = %730, %727, %552
  %760 = load i32, ptr %500, align 8, !tbaa !26
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %919, label %907

762:                                              ; preds = %524
  %763 = load ptr, ptr %503, align 8, !tbaa !30
  %764 = load i32, ptr %501, align 8, !tbaa !27
  %765 = shl i32 %764, 1
  store i32 0, ptr %509, align 4, !tbaa !17
  %766 = tail call ptr @__errno_location() #17
  store i32 0, ptr %766, align 4, !tbaa !45
  store i32 0, ptr %0, align 4, !tbaa !45
  br label %767

767:                                              ; preds = %787, %762
  %768 = phi i32 [ %788, %787 ], [ 0, %762 ]
  %769 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %765, i32 %768), !nosanitize !20
  %770 = extractvalue { i32, i1 } %769, 1, !nosanitize !20
  br i1 false, label %771, label %772, !prof !21, !nosanitize !20

771:                                              ; preds = %767
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

772:                                              ; preds = %767
  %773 = extractvalue { i32, i1 } %769, 0, !nosanitize !20
  %774 = tail call i32 @llvm.umin.i32(i32 %773, i32 1073741824)
  %775 = load i32, ptr %510, align 4, !tbaa !46
  %776 = zext i32 %768 to i64
  %777 = getelementptr inbounds nuw i8, ptr %763, i64 %776
  %778 = zext nneg i32 %774 to i64
  %779 = tail call i64 @read(i32 noundef %775, ptr noundef %777, i64 noundef %778) #13
  %780 = trunc i64 %779 to i32
  %781 = icmp slt i32 %780, 1
  br i1 %781, label %790, label %782

782:                                              ; preds = %772
  %783 = load i32, ptr %0, align 4, !tbaa !45
  %784 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %783, i32 %780), !nosanitize !20
  %785 = extractvalue { i32, i1 } %784, 1, !nosanitize !20
  br i1 %785, label %786, label %787, !prof !21, !nosanitize !20

786:                                              ; preds = %782
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

787:                                              ; preds = %782
  %788 = extractvalue { i32, i1 } %784, 0, !nosanitize !20
  store i32 %788, ptr %0, align 4, !tbaa !45
  %789 = icmp ult i32 %788, %765
  br i1 %789, label %767, label %804, !llvm.loop !47

790:                                              ; preds = %772
  %791 = icmp slt i32 %780, 0
  br i1 %791, label %792, label %800

792:                                              ; preds = %790
  %793 = load i32, ptr %766, align 4, !tbaa !45
  %794 = icmp eq i32 %793, 11
  br i1 %794, label %795, label %801

795:                                              ; preds = %792
  store i32 1, ptr %509, align 4, !tbaa !17
  %796 = load i32, ptr %0, align 4, !tbaa !45
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %798, label %804

798:                                              ; preds = %795
  %799 = load i32, ptr %766, align 4, !tbaa !45
  br label %801

800:                                              ; preds = %790
  store i32 1, ptr %507, align 8, !tbaa !24
  br label %804

801:                                              ; preds = %798, %792
  %802 = phi i32 [ %799, %798 ], [ %793, %792 ]
  %803 = tail call ptr @strerror(i32 noundef %802) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %803) #13
  br label %966

804:                                              ; preds = %800, %795, %787
  %805 = load ptr, ptr %503, align 8, !tbaa !30
  store ptr %805, ptr %513, align 8, !tbaa !22
  br label %919

806:                                              ; preds = %524
  %807 = load i32, ptr %501, align 8, !tbaa !27
  %808 = shl i32 %807, 1
  store i32 %808, ptr %502, align 8, !tbaa !48
  %809 = load ptr, ptr %503, align 8, !tbaa !30
  store ptr %809, ptr %504, align 8, !tbaa !49
  br label %810

810:                                              ; preds = %889, %806
  %811 = phi i32 [ 0, %806 ], [ %874, %889 ]
  %812 = load i32, ptr %506, align 8, !tbaa !34
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %814, label %873

814:                                              ; preds = %810
  %815 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %815, label %893 [
    i32 0, label %816
    i32 -5, label %816
  ]

816:                                              ; preds = %814, %814
  %817 = load i32, ptr %507, align 8, !tbaa !24
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %819, label %869

819:                                              ; preds = %816
  %820 = load i32, ptr %501, align 8, !tbaa !27
  %821 = load ptr, ptr %508, align 8, !tbaa !29
  store i32 0, ptr %509, align 4, !tbaa !17
  %822 = tail call ptr @__errno_location() #17
  store i32 0, ptr %822, align 4, !tbaa !45
  br label %823

823:                                              ; preds = %842, %819
  %824 = phi i32 [ 0, %819 ], [ %843, %842 ]
  %825 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %820, i32 %824), !nosanitize !20
  %826 = extractvalue { i32, i1 } %825, 1, !nosanitize !20
  br i1 false, label %827, label %828, !prof !21, !nosanitize !20

827:                                              ; preds = %823
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

828:                                              ; preds = %823
  %829 = extractvalue { i32, i1 } %825, 0, !nosanitize !20
  %830 = tail call i32 @llvm.umin.i32(i32 %829, i32 1073741824)
  %831 = load i32, ptr %510, align 4, !tbaa !46
  %832 = zext i32 %824 to i64
  %833 = getelementptr inbounds nuw i8, ptr %821, i64 %832
  %834 = zext nneg i32 %830 to i64
  %835 = tail call i64 @read(i32 noundef %831, ptr noundef %833, i64 noundef %834) #13
  %836 = trunc i64 %835 to i32
  %837 = icmp slt i32 %836, 1
  br i1 %837, label %845, label %838

838:                                              ; preds = %828
  %839 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %824, i32 %836), !nosanitize !20
  %840 = extractvalue { i32, i1 } %839, 1, !nosanitize !20
  br i1 %840, label %841, label %842, !prof !21, !nosanitize !20

841:                                              ; preds = %838
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

842:                                              ; preds = %838
  %843 = extractvalue { i32, i1 } %839, 0, !nosanitize !20
  %844 = icmp ult i32 %843, %820
  br i1 %844, label %823, label %859, !llvm.loop !47

845:                                              ; preds = %828
  %846 = icmp slt i32 %836, 0
  br i1 %846, label %847, label %854

847:                                              ; preds = %845
  %848 = load i32, ptr %822, align 4, !tbaa !45
  %849 = icmp eq i32 %848, 11
  br i1 %849, label %850, label %855

850:                                              ; preds = %847
  store i32 1, ptr %509, align 4, !tbaa !17
  %851 = icmp eq i32 %824, 0
  br i1 %851, label %852, label %859

852:                                              ; preds = %850
  %853 = load i32, ptr %822, align 4, !tbaa !45
  br label %855

854:                                              ; preds = %845
  store i32 1, ptr %507, align 8, !tbaa !24
  br label %859

855:                                              ; preds = %852, %847
  %856 = phi i32 [ %853, %852 ], [ %848, %847 ]
  %857 = tail call ptr @strerror(i32 noundef %856) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %857) #13
  %858 = load i32, ptr %14, align 8, !tbaa !16
  br label %893

859:                                              ; preds = %854, %850, %842
  %860 = phi i32 [ %824, %854 ], [ %824, %850 ], [ %843, %842 ]
  %861 = load i32, ptr %506, align 8, !tbaa !34
  %862 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %861, i32 %860), !nosanitize !20
  %863 = extractvalue { i32, i1 } %862, 1, !nosanitize !20
  br i1 %863, label %864, label %865, !prof !21, !nosanitize !20

864:                                              ; preds = %859
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

865:                                              ; preds = %859
  %866 = extractvalue { i32, i1 } %862, 0, !nosanitize !20
  store i32 %866, ptr %506, align 8, !tbaa !34
  %867 = load ptr, ptr %508, align 8, !tbaa !29
  store ptr %867, ptr %505, align 8, !tbaa !35
  %868 = icmp eq i32 %866, 0
  br i1 %868, label %869, label %873

869:                                              ; preds = %865, %816
  %870 = load i32, ptr %509, align 4, !tbaa !17
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %872, label %893

872:                                              ; preds = %869
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %893

873:                                              ; preds = %865, %810
  %874 = tail call i32 @inflate(ptr noundef nonnull %505, i32 noundef 0) #13
  %875 = load i32, ptr %502, align 8, !tbaa !48
  %876 = icmp ult i32 %875, %808
  br i1 %876, label %877, label %878

877:                                              ; preds = %873
  store i32 0, ptr %511, align 4, !tbaa !33
  br label %878

878:                                              ; preds = %877, %873
  switch i32 %874, label %889 [
    i32 -2, label %879
    i32 2, label %879
    i32 -4, label %880
    i32 -3, label %881
  ]

879:                                              ; preds = %878, %878
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %893

880:                                              ; preds = %878
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %893

881:                                              ; preds = %878
  %882 = load i32, ptr %511, align 4, !tbaa !33
  %883 = icmp eq i32 %882, 1
  br i1 %883, label %884, label %885

884:                                              ; preds = %881
  store i32 0, ptr %506, align 8, !tbaa !34
  store i32 1, ptr %507, align 8, !tbaa !24
  store i32 0, ptr %500, align 8, !tbaa !26
  br label %893

885:                                              ; preds = %881
  %886 = load ptr, ptr %512, align 8, !tbaa !50
  %887 = icmp eq ptr %886, null
  %888 = select i1 %887, ptr @.str.6, ptr %886
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %888) #13
  br label %893

889:                                              ; preds = %878
  %890 = icmp ne i32 %875, 0
  %891 = icmp ne i32 %874, 1
  %892 = select i1 %890, i1 %891, i1 false
  br i1 %892, label %810, label %893, !llvm.loop !51

893:                                              ; preds = %889, %885, %884, %880, %879, %872, %869, %855, %814
  %894 = phi i32 [ %811, %869 ], [ %811, %872 ], [ %874, %879 ], [ -4, %880 ], [ 0, %884 ], [ -3, %885 ], [ %858, %855 ], [ %874, %889 ], [ %815, %814 ]
  %895 = load i32, ptr %502, align 8, !tbaa !48
  %896 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %808, i32 %895), !nosanitize !20
  %897 = extractvalue { i32, i1 } %896, 1, !nosanitize !20
  br i1 %897, label %898, label %899, !prof !21, !nosanitize !20

898:                                              ; preds = %893
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

899:                                              ; preds = %893
  %900 = extractvalue { i32, i1 } %896, 0, !nosanitize !20
  store i32 %900, ptr %0, align 8, !tbaa !19
  %901 = load ptr, ptr %504, align 8, !tbaa !49
  %902 = zext i32 %900 to i64
  %903 = sub nsw i64 0, %902
  %904 = getelementptr inbounds i8, ptr %901, i64 %903
  store ptr %904, ptr %513, align 8, !tbaa !22
  switch i32 %894, label %966 [
    i32 1, label %905
    i32 0, label %907
  ]

905:                                              ; preds = %899
  store i32 0, ptr %511, align 4, !tbaa !33
  store i32 0, ptr %500, align 8, !tbaa !26
  br label %907

906:                                              ; preds = %524
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %966

907:                                              ; preds = %905, %899, %759, %753
  %908 = load i32, ptr %0, align 8, !tbaa !19
  br label %909

909:                                              ; preds = %907, %755
  %910 = phi i32 [ %908, %907 ], [ %758, %755 ]
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %912, label %919

912:                                              ; preds = %909
  %913 = load i32, ptr %507, align 8, !tbaa !24
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %918, label %915

915:                                              ; preds = %912
  %916 = load i32, ptr %506, align 8, !tbaa !34
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %919, label %918

918:                                              ; preds = %915, %912
  br label %524, !llvm.loop !52

919:                                              ; preds = %915, %909, %804, %759
  %920 = load i32, ptr %0, align 8, !tbaa !19
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %922, label %924

922:                                              ; preds = %919
  %923 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %923, align 4, !tbaa !61
  br label %966

924:                                              ; preds = %919, %519
  %925 = phi i32 [ %920, %919 ], [ %520, %519 ]
  %926 = tail call i32 @llvm.umin.i32(i32 %925, i32 %521)
  %927 = load ptr, ptr %513, align 8, !tbaa !22
  %928 = zext i32 %926 to i64
  %929 = tail call ptr @memchr(ptr noundef %927, i32 noundef 10, i64 noundef %928) #18
  %930 = icmp eq ptr %929, null
  br i1 %930, label %942, label %931

931:                                              ; preds = %924
  %932 = ptrtoint ptr %929 to i64
  %933 = ptrtoint ptr %927 to i64
  %934 = sub i64 %932, %933
  %935 = trunc i64 %934 to i32
  %936 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %935, i32 1), !nosanitize !20
  %937 = extractvalue { i32, i1 } %936, 1, !nosanitize !20
  br i1 %937, label %938, label %939, !prof !21, !nosanitize !20

938:                                              ; preds = %949, %931
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

939:                                              ; preds = %931
  %940 = extractvalue { i32, i1 } %936, 0, !nosanitize !20
  %941 = zext i32 %940 to i64
  br label %942

942:                                              ; preds = %939, %924
  %943 = phi i64 [ %941, %939 ], [ %928, %924 ]
  %944 = phi i32 [ %940, %939 ], [ %926, %924 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %522, ptr align 1 %927, i64 %943, i1 false)
  %945 = load i32, ptr %0, align 8, !tbaa !19
  %946 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %945, i32 %944), !nosanitize !20
  %947 = extractvalue { i32, i1 } %946, 1, !nosanitize !20
  br i1 %947, label %948, label %949, !prof !21, !nosanitize !20

948:                                              ; preds = %942
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

949:                                              ; preds = %942
  %950 = extractvalue { i32, i1 } %946, 0, !nosanitize !20
  store i32 %950, ptr %0, align 8, !tbaa !19
  %951 = load ptr, ptr %513, align 8, !tbaa !22
  %952 = getelementptr inbounds nuw i8, ptr %951, i64 %943
  store ptr %952, ptr %513, align 8, !tbaa !22
  %953 = load i64, ptr %517, align 8, !tbaa !23
  %954 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %953, i64 %943), !nosanitize !20
  %955 = extractvalue { i64, i1 } %954, 1, !nosanitize !20
  br i1 %955, label %938, label %956, !prof !21, !nosanitize !20

956:                                              ; preds = %949
  %957 = extractvalue { i64, i1 } %954, 0, !nosanitize !20
  store i64 %957, ptr %517, align 8, !tbaa !23
  %958 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %521, i32 %944), !nosanitize !20
  %959 = extractvalue { i32, i1 } %958, 1, !nosanitize !20
  br i1 %959, label %960, label %961, !prof !21, !nosanitize !20

960:                                              ; preds = %956
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

961:                                              ; preds = %956
  %962 = extractvalue { i32, i1 } %958, 0, !nosanitize !20
  %963 = getelementptr inbounds nuw i8, ptr %522, i64 %943
  %964 = icmp ne i32 %962, 0
  %965 = and i1 %930, %964
  br i1 %965, label %519, label %966, !llvm.loop !103

966:                                              ; preds = %961, %922, %906, %899, %801, %715, %557, %543, %539
  %967 = phi ptr [ %522, %922 ], [ %522, %906 ], [ %522, %801 ], [ %522, %539 ], [ %522, %543 ], [ %522, %715 ], [ %522, %899 ], [ %522, %557 ], [ %963, %961 ]
  %968 = icmp eq ptr %967, %1
  br i1 %968, label %970, label %969

969:                                              ; preds = %966
  store i8 0, ptr %967, align 1, !tbaa !36
  br label %970

970:                                              ; preds = %969, %966, %496, %478, %471, %353, %267, %109, %95, %91, %16, %9, %3
  %971 = phi ptr [ %1, %969 ], [ null, %3 ], [ null, %9 ], [ null, %16 ], [ null, %966 ], [ null, %478 ], [ null, %353 ], [ null, %91 ], [ null, %95 ], [ null, %267 ], [ null, %496 ], [ null, %471 ], [ null, %109 ]
  ret ptr %971
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @gzdirect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %272, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %267

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load i32, ptr %8, align 8, !tbaa !26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %267

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 8, !tbaa !19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %267

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %17 = load i32, ptr %16, align 8, !tbaa !27
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %21 = load i32, ptr %20, align 4, !tbaa !28
  %22 = zext i32 %21 to i64
  %23 = tail call noalias ptr @malloc(i64 noundef %22) #16
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %23, ptr %24, align 8, !tbaa !29
  %25 = shl i32 %21, 1
  %26 = zext i32 %25 to i64
  %27 = tail call noalias ptr @malloc(i64 noundef %26) #16
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %27, ptr %28, align 8, !tbaa !30
  %29 = icmp eq ptr %23, null
  %30 = icmp eq ptr %27, null
  %31 = or i1 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  tail call void @free(ptr noundef %27) #13
  tail call void @free(ptr noundef %23) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %267

33:                                               ; preds = %19
  store i32 %21, ptr %16, align 8, !tbaa !27
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %35, align 8, !tbaa !25
  store ptr null, ptr %15, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  %36 = tail call i32 @inflateInit2_(ptr noundef nonnull %15, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %28, align 8, !tbaa !30
  tail call void @free(ptr noundef %39) #13
  %40 = load ptr, ptr %24, align 8, !tbaa !29
  tail call void @free(ptr noundef %40) #13
  store i32 0, ptr %16, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %267

41:                                               ; preds = %33, %14
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %43 = load i32, ptr %42, align 8, !tbaa !32
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %47 = load i32, ptr %46, align 4, !tbaa !33
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45, %41
  %50 = tail call i32 @inflateReset(ptr noundef nonnull %15) #13
  store i32 2, ptr %8, align 8, !tbaa !26
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %52 = load i32, ptr %51, align 4, !tbaa !33
  %53 = icmp ne i32 %52, -1
  %54 = zext i1 %53 to i32
  store i32 %54, ptr %51, align 4, !tbaa !33
  store i32 0, ptr %42, align 8, !tbaa !32
  br label %267

55:                                               ; preds = %45
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %57 = load i32, ptr %56, align 8, !tbaa !16
  switch i32 %57, label %267 [
    i32 0, label %58
    i32 -5, label %58
  ]

58:                                               ; preds = %55, %55
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %60 = load i32, ptr %59, align 8, !tbaa !24
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %63 = load i32, ptr %62, align 8, !tbaa !34
  br i1 %61, label %64, label %232

64:                                               ; preds = %58
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %173, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %68 = load ptr, ptr %67, align 8, !tbaa !29
  %69 = load ptr, ptr %15, align 8, !tbaa !35
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %173, label %71

71:                                               ; preds = %66
  %72 = ptrtoint ptr %69 to i64
  %73 = ptrtoint ptr %68 to i64
  %74 = zext i32 %63 to i64
  %75 = icmp ult i32 %63, 4
  %76 = sub i64 %73, %72
  %77 = icmp ult i64 %76, 32
  %78 = or i1 %75, %77
  br i1 %78, label %118, label %79

79:                                               ; preds = %71
  %80 = icmp ult i32 %63, 32
  br i1 %80, label %102, label %81

81:                                               ; preds = %79
  %82 = and i64 %74, 4294967264
  br label %83

83:                                               ; preds = %83, %81
  %84 = phi i64 [ 0, %81 ], [ %91, %83 ]
  %85 = getelementptr i8, ptr %68, i64 %84
  %86 = getelementptr i8, ptr %69, i64 %84
  %87 = getelementptr i8, ptr %86, i64 16
  %88 = load <16 x i8>, ptr %86, align 1, !tbaa !36
  %89 = load <16 x i8>, ptr %87, align 1, !tbaa !36
  %90 = getelementptr i8, ptr %85, i64 16
  store <16 x i8> %88, ptr %85, align 1, !tbaa !36
  store <16 x i8> %89, ptr %90, align 1, !tbaa !36
  %91 = add nuw i64 %84, 32
  %92 = icmp eq i64 %91, %82
  br i1 %92, label %93, label %83, !llvm.loop !104

93:                                               ; preds = %83
  %94 = icmp eq i64 %82, %74
  br i1 %94, label %171, label %95

95:                                               ; preds = %93
  %96 = getelementptr i8, ptr %68, i64 %82
  %97 = getelementptr i8, ptr %69, i64 %82
  %98 = trunc nuw i64 %82 to i32
  %99 = sub i32 %63, %98
  %100 = and i64 %74, 28
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %118, label %102

102:                                              ; preds = %95, %79
  %103 = phi i64 [ %82, %95 ], [ 0, %79 ]
  %104 = and i64 %74, 4294967292
  %105 = getelementptr i8, ptr %68, i64 %104
  %106 = getelementptr i8, ptr %69, i64 %104
  %107 = trunc nuw i64 %104 to i32
  %108 = sub i32 %63, %107
  br label %109

109:                                              ; preds = %109, %102
  %110 = phi i64 [ %103, %102 ], [ %114, %109 ]
  %111 = getelementptr i8, ptr %68, i64 %110
  %112 = getelementptr i8, ptr %69, i64 %110
  %113 = load <4 x i8>, ptr %112, align 1, !tbaa !36
  store <4 x i8> %113, ptr %111, align 1, !tbaa !36
  %114 = add nuw i64 %110, 4
  %115 = icmp eq i64 %114, %104
  br i1 %115, label %116, label %109, !llvm.loop !105

116:                                              ; preds = %109
  %117 = icmp eq i64 %104, %74
  br i1 %117, label %171, label %118

118:                                              ; preds = %116, %95, %71
  %119 = phi ptr [ %68, %71 ], [ %96, %95 ], [ %105, %116 ]
  %120 = phi ptr [ %69, %71 ], [ %97, %95 ], [ %106, %116 ]
  %121 = phi i32 [ %63, %71 ], [ %99, %95 ], [ %108, %116 ]
  %122 = add i32 %121, -1
  %123 = and i32 %121, 7
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %136, label %125

125:                                              ; preds = %125, %118
  %126 = phi ptr [ %132, %125 ], [ %119, %118 ]
  %127 = phi ptr [ %133, %125 ], [ %120, %118 ]
  %128 = phi i32 [ %131, %125 ], [ %121, %118 ]
  %129 = phi i32 [ %134, %125 ], [ 0, %118 ]
  %130 = load i8, ptr %127, align 1, !tbaa !36
  store i8 %130, ptr %126, align 1, !tbaa !36
  %131 = add i32 %128, -1
  %132 = getelementptr inbounds nuw i8, ptr %126, i64 1
  %133 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %134 = add i32 %129, 1
  %135 = icmp eq i32 %134, %123
  br i1 %135, label %136, label %125, !llvm.loop !106

136:                                              ; preds = %125, %118
  %137 = phi ptr [ %119, %118 ], [ %132, %125 ]
  %138 = phi ptr [ %120, %118 ], [ %133, %125 ]
  %139 = phi i32 [ %121, %118 ], [ %131, %125 ]
  %140 = icmp ult i32 %122, 7
  br i1 %140, label %171, label %141

141:                                              ; preds = %141, %136
  %142 = phi ptr [ %168, %141 ], [ %137, %136 ]
  %143 = phi ptr [ %169, %141 ], [ %138, %136 ]
  %144 = phi i32 [ %167, %141 ], [ %139, %136 ]
  %145 = load i8, ptr %143, align 1, !tbaa !36
  store i8 %145, ptr %142, align 1, !tbaa !36
  %146 = getelementptr inbounds nuw i8, ptr %142, i64 1
  %147 = getelementptr inbounds nuw i8, ptr %143, i64 1
  %148 = load i8, ptr %147, align 1, !tbaa !36
  store i8 %148, ptr %146, align 1, !tbaa !36
  %149 = getelementptr inbounds nuw i8, ptr %142, i64 2
  %150 = getelementptr inbounds nuw i8, ptr %143, i64 2
  %151 = load i8, ptr %150, align 1, !tbaa !36
  store i8 %151, ptr %149, align 1, !tbaa !36
  %152 = getelementptr inbounds nuw i8, ptr %142, i64 3
  %153 = getelementptr inbounds nuw i8, ptr %143, i64 3
  %154 = load i8, ptr %153, align 1, !tbaa !36
  store i8 %154, ptr %152, align 1, !tbaa !36
  %155 = getelementptr inbounds nuw i8, ptr %142, i64 4
  %156 = getelementptr inbounds nuw i8, ptr %143, i64 4
  %157 = load i8, ptr %156, align 1, !tbaa !36
  store i8 %157, ptr %155, align 1, !tbaa !36
  %158 = getelementptr inbounds nuw i8, ptr %142, i64 5
  %159 = getelementptr inbounds nuw i8, ptr %143, i64 5
  %160 = load i8, ptr %159, align 1, !tbaa !36
  store i8 %160, ptr %158, align 1, !tbaa !36
  %161 = getelementptr inbounds nuw i8, ptr %142, i64 6
  %162 = getelementptr inbounds nuw i8, ptr %143, i64 6
  %163 = load i8, ptr %162, align 1, !tbaa !36
  store i8 %163, ptr %161, align 1, !tbaa !36
  %164 = getelementptr inbounds nuw i8, ptr %142, i64 7
  %165 = getelementptr inbounds nuw i8, ptr %143, i64 7
  %166 = load i8, ptr %165, align 1, !tbaa !36
  store i8 %166, ptr %164, align 1, !tbaa !36
  %167 = add i32 %144, -8
  %168 = getelementptr inbounds nuw i8, ptr %142, i64 8
  %169 = getelementptr inbounds nuw i8, ptr %143, i64 8
  %170 = icmp eq i32 %167, 0
  br i1 %170, label %171, label %141, !llvm.loop !107

171:                                              ; preds = %141, %136, %116, %93
  %172 = load i32, ptr %62, align 8, !tbaa !34
  br label %173

173:                                              ; preds = %171, %66, %64
  %174 = phi i32 [ %172, %171 ], [ %63, %66 ], [ 0, %64 ]
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %176 = load i32, ptr %16, align 8, !tbaa !27
  %177 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %176, i32 %174), !nosanitize !20
  %178 = extractvalue { i32, i1 } %177, 1, !nosanitize !20
  br i1 %178, label %179, label %180, !prof !21, !nosanitize !20

179:                                              ; preds = %173
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

180:                                              ; preds = %173
  %181 = extractvalue { i32, i1 } %177, 0, !nosanitize !20
  %182 = load ptr, ptr %175, align 8, !tbaa !29
  %183 = zext i32 %174 to i64
  %184 = getelementptr inbounds nuw i8, ptr %182, i64 %183
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %185, align 4, !tbaa !17
  %186 = tail call ptr @__errno_location() #17
  store i32 0, ptr %186, align 4, !tbaa !45
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %188

188:                                              ; preds = %207, %180
  %189 = phi i32 [ 0, %180 ], [ %208, %207 ]
  %190 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %181, i32 %189), !nosanitize !20
  %191 = extractvalue { i32, i1 } %190, 1, !nosanitize !20
  br i1 %191, label %192, label %193, !prof !21, !nosanitize !20

192:                                              ; preds = %188
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

193:                                              ; preds = %188
  %194 = extractvalue { i32, i1 } %190, 0, !nosanitize !20
  %195 = tail call i32 @llvm.umin.i32(i32 %194, i32 1073741824)
  %196 = load i32, ptr %187, align 4, !tbaa !46
  %197 = zext i32 %189 to i64
  %198 = getelementptr inbounds nuw i8, ptr %184, i64 %197
  %199 = zext nneg i32 %195 to i64
  %200 = tail call i64 @read(i32 noundef %196, ptr noundef %198, i64 noundef %199) #13
  %201 = trunc i64 %200 to i32
  %202 = icmp slt i32 %201, 1
  br i1 %202, label %210, label %203

203:                                              ; preds = %193
  %204 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %189, i32 %201), !nosanitize !20
  %205 = extractvalue { i32, i1 } %204, 1, !nosanitize !20
  br i1 %205, label %206, label %207, !prof !21, !nosanitize !20

206:                                              ; preds = %203
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

207:                                              ; preds = %203
  %208 = extractvalue { i32, i1 } %204, 0, !nosanitize !20
  %209 = icmp ult i32 %208, %181
  br i1 %209, label %188, label %223, !llvm.loop !47

210:                                              ; preds = %193
  %211 = icmp slt i32 %201, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %210
  %213 = load i32, ptr %186, align 4, !tbaa !45
  %214 = icmp eq i32 %213, 11
  br i1 %214, label %215, label %220

215:                                              ; preds = %212
  store i32 1, ptr %185, align 4, !tbaa !17
  %216 = icmp eq i32 %189, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %215
  %218 = load i32, ptr %186, align 4, !tbaa !45
  br label %220

219:                                              ; preds = %210
  store i32 1, ptr %59, align 8, !tbaa !24
  br label %223

220:                                              ; preds = %217, %212
  %221 = phi i32 [ %218, %217 ], [ %213, %212 ]
  %222 = tail call ptr @strerror(i32 noundef %221) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %222) #13
  br label %267

223:                                              ; preds = %219, %215, %207
  %224 = phi i32 [ %189, %219 ], [ %189, %215 ], [ %208, %207 ]
  %225 = load i32, ptr %62, align 8, !tbaa !34
  %226 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %225, i32 %224), !nosanitize !20
  %227 = extractvalue { i32, i1 } %226, 1, !nosanitize !20
  br i1 %227, label %228, label %229, !prof !21, !nosanitize !20

228:                                              ; preds = %223
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

229:                                              ; preds = %223
  %230 = extractvalue { i32, i1 } %226, 0, !nosanitize !20
  store i32 %230, ptr %62, align 8, !tbaa !34
  %231 = load ptr, ptr %175, align 8, !tbaa !29
  store ptr %231, ptr %15, align 8, !tbaa !35
  br label %232

232:                                              ; preds = %229, %58
  %233 = phi i32 [ %230, %229 ], [ %63, %58 ]
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %267, label %235

235:                                              ; preds = %232
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %237 = load i32, ptr %236, align 4, !tbaa !17
  %238 = icmp ne i32 %237, 0
  %239 = icmp ult i32 %233, 4
  %240 = and i1 %239, %238
  br i1 %240, label %267, label %241

241:                                              ; preds = %235
  %242 = icmp ugt i32 %233, 3
  %243 = load ptr, ptr %15, align 8, !tbaa !35
  br i1 %242, label %244, label %261

244:                                              ; preds = %241
  %245 = load i8, ptr %243, align 1, !tbaa !36
  %246 = icmp eq i8 %245, 31
  br i1 %246, label %247, label %261

247:                                              ; preds = %244
  %248 = getelementptr inbounds nuw i8, ptr %243, i64 1
  %249 = load i8, ptr %248, align 1, !tbaa !36
  %250 = icmp eq i8 %249, -117
  br i1 %250, label %251, label %261

251:                                              ; preds = %247
  %252 = getelementptr inbounds nuw i8, ptr %243, i64 2
  %253 = load i8, ptr %252, align 1, !tbaa !36
  %254 = icmp eq i8 %253, 8
  br i1 %254, label %255, label %261

255:                                              ; preds = %251
  %256 = getelementptr inbounds nuw i8, ptr %243, i64 3
  %257 = load i8, ptr %256, align 1, !tbaa !36
  %258 = icmp ult i8 %257, 32
  br i1 %258, label %259, label %261

259:                                              ; preds = %255
  %260 = tail call i32 @inflateReset(ptr noundef nonnull %15) #13
  store i32 2, ptr %8, align 8, !tbaa !26
  store i32 1, ptr %46, align 4, !tbaa !33
  store i32 0, ptr %42, align 8, !tbaa !32
  br label %267

261:                                              ; preds = %255, %251, %247, %244, %241
  %262 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %263 = load ptr, ptr %262, align 8, !tbaa !30
  %264 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %263, ptr %264, align 8, !tbaa !22
  %265 = zext i32 %233 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %263, ptr align 1 %243, i64 %265, i1 false)
  %266 = load i32, ptr %62, align 8, !tbaa !34
  store i32 %266, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %62, align 8, !tbaa !34
  store i32 1, ptr %8, align 8, !tbaa !26
  br label %267

267:                                              ; preds = %261, %259, %235, %232, %220, %55, %49, %38, %32, %11, %7, %3
  %268 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %269 = load i32, ptr %268, align 8, !tbaa !32
  %270 = icmp eq i32 %269, 1
  %271 = zext i1 %270 to i32
  br label %272

272:                                              ; preds = %267, %1
  %273 = phi i32 [ %271, %267 ], [ 0, %1 ]
  ret i32 %273
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @gzclose_r(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %9 = load i32, ptr %8, align 8, !tbaa !27
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %13 = tail call i32 @inflateEnd(ptr noundef nonnull %12) #13
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !30
  tail call void @free(ptr noundef %15) #13
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %17 = load ptr, ptr %16, align 8, !tbaa !29
  tail call void @free(ptr noundef %17) #13
  br label %18

18:                                               ; preds = %11, %7
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = icmp eq i32 %20, -5
  %22 = select i1 %21, i32 -5, i32 0
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %24 = load ptr, ptr %23, align 8, !tbaa !108
  tail call void @free(ptr noundef %24) #13
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %26 = load i32, ptr %25, align 4, !tbaa !46
  %27 = tail call i32 @close(i32 noundef %26) #13
  tail call void @free(ptr noundef nonnull %0) #13
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 %22, i32 -1
  br label %30

30:                                               ; preds = %18, %3, %1
  %31 = phi i32 [ %29, %18 ], [ -2, %1 ], [ -2, %3 ]
  ret i32 %31
}

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @inflateReset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

declare void @llvm.lifetime.start.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

declare void @llvm.lifetime.end.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nounwind }
attributes #14 = { nomerge noreturn nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !8, i64 24}
!6 = !{!"", !7, i64 0, !8, i64 24, !8, i64 28, !11, i64 32, !8, i64 40, !8, i64 44, !11, i64 48, !11, i64 56, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !13, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !13, i64 112, !8, i64 120, !11, i64 128, !14, i64 136}
!7 = !{!"gzFile_s", !8, i64 0, !11, i64 8, !13, i64 16}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!"long", !9, i64 0}
!14 = !{!"z_stream_s", !11, i64 0, !8, i64 8, !13, i64 16, !11, i64 24, !8, i64 32, !13, i64 40, !11, i64 48, !15, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !8, i64 88, !13, i64 96, !13, i64 104}
!15 = !{!"p1 _ZTS14internal_state", !12, i64 0}
!16 = !{!6, !8, i64 120}
!17 = !{!6, !8, i64 76}
!18 = !{!6, !13, i64 112}
!19 = !{!6, !8, i64 0}
!20 = !{}
!21 = !{!"branch_weights", i32 1, i32 1048575}
!22 = !{!6, !11, i64 8}
!23 = !{!6, !13, i64 16}
!24 = !{!6, !8, i64 88}
!25 = !{!6, !8, i64 144}
!26 = !{!6, !8, i64 72}
!27 = !{!6, !8, i64 40}
!28 = !{!6, !8, i64 44}
!29 = !{!6, !11, i64 48}
!30 = !{!6, !11, i64 56}
!31 = !{!6, !11, i64 136}
!32 = !{!6, !8, i64 64}
!33 = !{!6, !8, i64 68}
!34 = !{!14, !8, i64 8}
!35 = !{!14, !11, i64 0}
!36 = !{!9, !9, i64 0}
!37 = distinct !{!37, !38, !39, !40}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !38, !39, !40}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = distinct !{!44, !38, !39}
!45 = !{!8, !8, i64 0}
!46 = !{!6, !8, i64 28}
!47 = distinct !{!47, !38}
!48 = !{!14, !8, i64 32}
!49 = !{!14, !11, i64 24}
!50 = !{!14, !11, i64 48}
!51 = distinct !{!51, !38}
!52 = distinct !{!52, !38}
!53 = distinct !{!53, !38}
!54 = distinct !{!54, !38, !39, !40}
!55 = distinct !{!55, !38, !39, !40}
!56 = distinct !{!56, !43}
!57 = distinct !{!57, !38, !39}
!58 = !{!6, !8, i64 168}
!59 = !{!6, !11, i64 160}
!60 = distinct !{!60, !38}
!61 = !{!6, !8, i64 92}
!62 = distinct !{!62, !38, !39, !40}
!63 = distinct !{!63, !38, !39, !40}
!64 = distinct !{!64, !43}
!65 = distinct !{!65, !38, !39}
!66 = distinct !{!66, !38, !39, !40}
!67 = distinct !{!67, !38, !39, !40}
!68 = distinct !{!68, !43}
!69 = distinct !{!69, !38, !39}
!70 = distinct !{!70, !38, !39, !40}
!71 = distinct !{!71, !38, !39, !40}
!72 = distinct !{!72, !43}
!73 = distinct !{!73, !38, !39}
!74 = distinct !{!74, !38, !39, !40}
!75 = distinct !{!75, !38, !39, !40}
!76 = distinct !{!76, !43}
!77 = distinct !{!77, !38, !39}
!78 = distinct !{!78, !38, !39, !40}
!79 = distinct !{!79, !38, !39, !40}
!80 = distinct !{!80, !43}
!81 = distinct !{!81, !38, !39}
!82 = distinct !{!82, !38, !39, !40}
!83 = distinct !{!83, !38, !39, !40}
!84 = distinct !{!84, !43}
!85 = distinct !{!85, !38, !39}
!86 = distinct !{!86, !38, !39, !40}
!87 = distinct !{!87, !38, !39, !40}
!88 = distinct !{!88, !43}
!89 = distinct !{!89, !38, !39}
!90 = distinct !{!90, !38, !39, !40}
!91 = distinct !{!91, !38, !39, !40}
!92 = distinct !{!92, !43}
!93 = distinct !{!93, !38, !39}
!94 = distinct !{!94, !38}
!95 = distinct !{!95, !38, !39, !40}
!96 = distinct !{!96, !38, !39, !40}
!97 = distinct !{!97, !43}
!98 = distinct !{!98, !38, !39}
!99 = distinct !{!99, !38, !39, !40}
!100 = distinct !{!100, !38, !39, !40}
!101 = distinct !{!101, !43}
!102 = distinct !{!102, !38, !39}
!103 = distinct !{!103, !38}
!104 = distinct !{!104, !38, !39, !40}
!105 = distinct !{!105, !38, !39, !40}
!106 = distinct !{!106, !43}
!107 = distinct !{!107, !38, !39}
!108 = !{!6, !11, i64 32}
