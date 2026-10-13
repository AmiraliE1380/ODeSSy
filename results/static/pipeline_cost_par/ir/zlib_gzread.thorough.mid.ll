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
  br i1 %4, label %1209, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 7247
  br i1 %8, label %9, label %1209

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
  br i1 %15, label %1209, label %16

16:                                               ; preds = %12, %9, %9
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %17 = icmp slt i32 %2, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str) #13
  br label %1209

19:                                               ; preds = %16
  %20 = zext nneg i32 %2 to i64
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %1197, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load i64, ptr %23, align 8, !tbaa !18
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %518, label %26

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

45:                                               ; preds = %515, %26
  %46 = phi i64 [ %516, %515 ], [ %24, %26 ]
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
  br label %515

71:                                               ; preds = %45
  %72 = load i32, ptr %29, align 8, !tbaa !24
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %30, align 8, !tbaa !25
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %518, label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %512, %77
  %79 = load i32, ptr %31, align 8, !tbaa !26
  switch i32 %79, label %500 [
    i32 0, label %80
    i32 1, label %336
    i32 2, label %380
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
  br label %1197

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
  br label %1197

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
  br label %333

111:                                              ; preds = %103
  %112 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %112, label %1199 [
    i32 0, label %113
    i32 -5, label %113
  ]

113:                                              ; preds = %111, %111
  %114 = load i32, ptr %29, align 8, !tbaa !24
  %115 = icmp eq i32 %114, 0
  %116 = load i32, ptr %30, align 8, !tbaa !34
  br i1 %115, label %117, label %301

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
  %mv.h38 = icmp sge i32 %227, 0
  %mv.h.fr39 = freeze i1 %mv.h38
  br i1 %mv.h.fr39, label %.mv.ph40.mv.fast, label %.mv.ph40

.mv.ph40.mv.fast:                                 ; preds = %231
  br label %237

237:                                              ; preds = %254, %.mv.ph40.mv.fast
  %238 = phi i32 [ 0, %.mv.ph40.mv.fast ], [ %255, %254 ]
  %239 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %232, i32 %238), !nosanitize !20
  %240 = extractvalue { i32, i1 } %239, 1, !nosanitize !20
  br i1 false, label %261, label %241, !prof !21, !nosanitize !20

241:                                              ; preds = %237
  %242 = extractvalue { i32, i1 } %239, 0, !nosanitize !20
  %243 = tail call i32 @llvm.umin.i32(i32 %242, i32 1073741824)
  %244 = load i32, ptr %39, align 4, !tbaa !46
  %245 = zext i32 %238 to i64
  %246 = getelementptr inbounds nuw i8, ptr %235, i64 %245
  %247 = zext nneg i32 %243 to i64
  %248 = tail call i64 @read(i32 noundef %244, ptr noundef %246, i64 noundef %247) #13
  %249 = trunc i64 %248 to i32
  %250 = icmp slt i32 %249, 1
  br i1 %250, label %279, label %251

251:                                              ; preds = %241
  %252 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %238, i32 %249), !nosanitize !20
  %253 = extractvalue { i32, i1 } %252, 1, !nosanitize !20
  br i1 false, label %275, label %254, !prof !21, !nosanitize !20

254:                                              ; preds = %251
  %255 = extractvalue { i32, i1 } %252, 0, !nosanitize !20
  %256 = icmp ult i32 %255, %232
  br i1 %256, label %237, label %.loopexit30, !llvm.loop !47

.mv.ph40:                                         ; preds = %231
  br label %257

257:                                              ; preds = %276, %.mv.ph40
  %258 = phi i32 [ 0, %.mv.ph40 ], [ %277, %276 ]
  %259 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %232, i32 %258), !nosanitize !20
  %260 = extractvalue { i32, i1 } %259, 1, !nosanitize !20
  br i1 false, label %261, label %262, !prof !21, !nosanitize !20

261:                                              ; preds = %237, %257
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

262:                                              ; preds = %257
  %263 = extractvalue { i32, i1 } %259, 0, !nosanitize !20
  %264 = tail call i32 @llvm.umin.i32(i32 %263, i32 1073741824)
  %265 = load i32, ptr %39, align 4, !tbaa !46
  %266 = zext i32 %258 to i64
  %267 = getelementptr inbounds nuw i8, ptr %235, i64 %266
  %268 = zext nneg i32 %264 to i64
  %269 = tail call i64 @read(i32 noundef %265, ptr noundef %267, i64 noundef %268) #13
  %270 = trunc i64 %269 to i32
  %271 = icmp slt i32 %270, 1
  br i1 %271, label %279, label %272

272:                                              ; preds = %262
  %273 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %258, i32 %270), !nosanitize !20
  %274 = extractvalue { i32, i1 } %273, 1, !nosanitize !20
  br i1 %274, label %275, label %276, !prof !21, !nosanitize !20

275:                                              ; preds = %251, %272
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

276:                                              ; preds = %272
  %277 = extractvalue { i32, i1 } %273, 0, !nosanitize !20
  %278 = icmp ult i32 %277, %232
  br i1 %278, label %257, label %.loopexit30, !llvm.loop !47

279:                                              ; preds = %241, %262
  %.lcssa34 = phi i32 [ %270, %262 ], [ %249, %241 ]
  %.lcssa31 = phi i32 [ %258, %262 ], [ %238, %241 ]
  %280 = icmp slt i32 %.lcssa34, 0
  br i1 %280, label %281, label %288

281:                                              ; preds = %279
  %282 = load i32, ptr %236, align 4, !tbaa !45
  %283 = icmp eq i32 %282, 11
  br i1 %283, label %284, label %289

284:                                              ; preds = %281
  store i32 1, ptr %38, align 4, !tbaa !17
  %285 = icmp eq i32 %.lcssa31, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %284
  %287 = load i32, ptr %236, align 4, !tbaa !45
  br label %289

288:                                              ; preds = %279
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %292

289:                                              ; preds = %286, %281
  %290 = phi i32 [ %287, %286 ], [ %282, %281 ]
  %291 = tail call ptr @strerror(i32 noundef %290) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %291) #13
  br label %1197

.loopexit30:                                      ; preds = %254, %276
  %.lcssa37 = phi i32 [ %277, %276 ], [ %255, %254 ]
  br label %292

292:                                              ; preds = %.loopexit30, %288, %284
  %293 = phi i32 [ %.lcssa31, %288 ], [ %.lcssa31, %284 ], [ %.lcssa37, %.loopexit30 ]
  %294 = load i32, ptr %30, align 8, !tbaa !34
  %295 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %294, i32 %293), !nosanitize !20
  %296 = extractvalue { i32, i1 } %295, 1, !nosanitize !20
  br i1 %296, label %297, label %298, !prof !21, !nosanitize !20

297:                                              ; preds = %292
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

298:                                              ; preds = %292
  %299 = extractvalue { i32, i1 } %295, 0, !nosanitize !20
  store i32 %299, ptr %30, align 8, !tbaa !34
  %300 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %300, ptr %36, align 8, !tbaa !35
  br label %301

301:                                              ; preds = %298, %113
  %302 = phi i32 [ %299, %298 ], [ %116, %113 ]
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %333, label %304

304:                                              ; preds = %301
  %305 = load i32, ptr %38, align 4, !tbaa !17
  %306 = icmp ne i32 %305, 0
  %307 = icmp ult i32 %302, 4
  %308 = and i1 %307, %306
  br i1 %308, label %333, label %309

309:                                              ; preds = %304
  %310 = icmp ugt i32 %302, 3
  %311 = load ptr, ptr %36, align 8, !tbaa !35
  br i1 %310, label %312, label %329

312:                                              ; preds = %309
  %313 = load i8, ptr %311, align 1, !tbaa !36
  %314 = icmp eq i8 %313, 31
  br i1 %314, label %315, label %329

315:                                              ; preds = %312
  %316 = getelementptr inbounds nuw i8, ptr %311, i64 1
  %317 = load i8, ptr %316, align 1, !tbaa !36
  %318 = icmp eq i8 %317, -117
  br i1 %318, label %319, label %329

319:                                              ; preds = %315
  %320 = getelementptr inbounds nuw i8, ptr %311, i64 2
  %321 = load i8, ptr %320, align 1, !tbaa !36
  %322 = icmp eq i8 %321, 8
  br i1 %322, label %323, label %329

323:                                              ; preds = %319
  %324 = getelementptr inbounds nuw i8, ptr %311, i64 3
  %325 = load i8, ptr %324, align 1, !tbaa !36
  %326 = icmp ult i8 %325, 32
  br i1 %326, label %327, label %329

327:                                              ; preds = %323
  %328 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  store i32 1, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %501

329:                                              ; preds = %323, %319, %315, %312, %309
  %330 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %330, ptr %27, align 8, !tbaa !22
  %331 = zext i32 %302 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %330, ptr align 1 %311, i64 %331, i1 false)
  %332 = load i32, ptr %30, align 8, !tbaa !34
  store i32 %332, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %31, align 8, !tbaa !26
  br label %503

333:                                              ; preds = %304, %301, %106
  %334 = load i32, ptr %31, align 8, !tbaa !26
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %513, label %501

336:                                              ; preds = %78
  %337 = load ptr, ptr %34, align 8, !tbaa !30
  %338 = load i32, ptr %32, align 8, !tbaa !27
  %339 = shl i32 %338, 1
  store i32 0, ptr %38, align 4, !tbaa !17
  %340 = tail call ptr @__errno_location() #17
  store i32 0, ptr %340, align 4, !tbaa !45
  store i32 0, ptr %0, align 4, !tbaa !45
  br label %341

341:                                              ; preds = %361, %336
  %342 = phi i32 [ %362, %361 ], [ 0, %336 ]
  %343 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %339, i32 %342), !nosanitize !20
  %344 = extractvalue { i32, i1 } %343, 1, !nosanitize !20
  br i1 false, label %345, label %346, !prof !21, !nosanitize !20

345:                                              ; preds = %341
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

346:                                              ; preds = %341
  %347 = extractvalue { i32, i1 } %343, 0, !nosanitize !20
  %348 = tail call i32 @llvm.umin.i32(i32 %347, i32 1073741824)
  %349 = load i32, ptr %39, align 4, !tbaa !46
  %350 = zext i32 %342 to i64
  %351 = getelementptr inbounds nuw i8, ptr %337, i64 %350
  %352 = zext nneg i32 %348 to i64
  %353 = tail call i64 @read(i32 noundef %349, ptr noundef %351, i64 noundef %352) #13
  %354 = trunc i64 %353 to i32
  %355 = icmp slt i32 %354, 1
  br i1 %355, label %364, label %356

356:                                              ; preds = %346
  %357 = load i32, ptr %0, align 4, !tbaa !45
  %358 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %357, i32 %354), !nosanitize !20
  %359 = extractvalue { i32, i1 } %358, 1, !nosanitize !20
  br i1 %359, label %360, label %361, !prof !21, !nosanitize !20

360:                                              ; preds = %356
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

361:                                              ; preds = %356
  %362 = extractvalue { i32, i1 } %358, 0, !nosanitize !20
  store i32 %362, ptr %0, align 4, !tbaa !45
  %363 = icmp ult i32 %362, %339
  br i1 %363, label %341, label %378, !llvm.loop !47

364:                                              ; preds = %346
  %365 = icmp slt i32 %354, 0
  br i1 %365, label %366, label %374

366:                                              ; preds = %364
  %367 = load i32, ptr %340, align 4, !tbaa !45
  %368 = icmp eq i32 %367, 11
  br i1 %368, label %369, label %375

369:                                              ; preds = %366
  store i32 1, ptr %38, align 4, !tbaa !17
  %370 = load i32, ptr %0, align 4, !tbaa !45
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %378

372:                                              ; preds = %369
  %373 = load i32, ptr %340, align 4, !tbaa !45
  br label %375

374:                                              ; preds = %364
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %378

375:                                              ; preds = %372, %366
  %376 = phi i32 [ %373, %372 ], [ %367, %366 ]
  %377 = tail call ptr @strerror(i32 noundef %376) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %377) #13
  br label %1197

378:                                              ; preds = %374, %369, %361
  %379 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %379, ptr %27, align 8, !tbaa !22
  br label %513

380:                                              ; preds = %78
  %381 = load i32, ptr %32, align 8, !tbaa !27
  %382 = shl i32 %381, 1
  store i32 %382, ptr %33, align 8, !tbaa !48
  %383 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %383, ptr %35, align 8, !tbaa !49
  br label %384

384:                                              ; preds = %483, %380
  %385 = phi i32 [ 0, %380 ], [ %468, %483 ]
  %386 = load i32, ptr %30, align 8, !tbaa !34
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %467

388:                                              ; preds = %384
  %389 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %389, label %487 [
    i32 0, label %390
    i32 -5, label %390
  ]

390:                                              ; preds = %388, %388
  %391 = load i32, ptr %29, align 8, !tbaa !24
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %463

393:                                              ; preds = %390
  %394 = load i32, ptr %32, align 8, !tbaa !27
  %395 = load ptr, ptr %37, align 8, !tbaa !29
  store i32 0, ptr %38, align 4, !tbaa !17
  %396 = tail call ptr @__errno_location() #17
  store i32 0, ptr %396, align 4, !tbaa !45
  %mv.h16 = icmp sge i32 %394, 0
  %mv.h.fr17 = freeze i1 %mv.h16
  br i1 %mv.h.fr17, label %.mv.ph18.mv.fast, label %.mv.ph18

.mv.ph18.mv.fast:                                 ; preds = %393
  br label %397

397:                                              ; preds = %414, %.mv.ph18.mv.fast
  %398 = phi i32 [ 0, %.mv.ph18.mv.fast ], [ %415, %414 ]
  %399 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %394, i32 %398), !nosanitize !20
  %400 = extractvalue { i32, i1 } %399, 1, !nosanitize !20
  br i1 false, label %421, label %401, !prof !21, !nosanitize !20

401:                                              ; preds = %397
  %402 = extractvalue { i32, i1 } %399, 0, !nosanitize !20
  %403 = tail call i32 @llvm.umin.i32(i32 %402, i32 1073741824)
  %404 = load i32, ptr %39, align 4, !tbaa !46
  %405 = zext i32 %398 to i64
  %406 = getelementptr inbounds nuw i8, ptr %395, i64 %405
  %407 = zext nneg i32 %403 to i64
  %408 = tail call i64 @read(i32 noundef %404, ptr noundef %406, i64 noundef %407) #13
  %409 = trunc i64 %408 to i32
  %410 = icmp slt i32 %409, 1
  br i1 %410, label %439, label %411

411:                                              ; preds = %401
  %412 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %398, i32 %409), !nosanitize !20
  %413 = extractvalue { i32, i1 } %412, 1, !nosanitize !20
  br i1 false, label %435, label %414, !prof !21, !nosanitize !20

414:                                              ; preds = %411
  %415 = extractvalue { i32, i1 } %412, 0, !nosanitize !20
  %416 = icmp ult i32 %415, %394
  br i1 %416, label %397, label %.loopexit8, !llvm.loop !47

.mv.ph18:                                         ; preds = %393
  br label %417

417:                                              ; preds = %436, %.mv.ph18
  %418 = phi i32 [ 0, %.mv.ph18 ], [ %437, %436 ]
  %419 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %394, i32 %418), !nosanitize !20
  %420 = extractvalue { i32, i1 } %419, 1, !nosanitize !20
  br i1 false, label %421, label %422, !prof !21, !nosanitize !20

421:                                              ; preds = %397, %417
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

422:                                              ; preds = %417
  %423 = extractvalue { i32, i1 } %419, 0, !nosanitize !20
  %424 = tail call i32 @llvm.umin.i32(i32 %423, i32 1073741824)
  %425 = load i32, ptr %39, align 4, !tbaa !46
  %426 = zext i32 %418 to i64
  %427 = getelementptr inbounds nuw i8, ptr %395, i64 %426
  %428 = zext nneg i32 %424 to i64
  %429 = tail call i64 @read(i32 noundef %425, ptr noundef %427, i64 noundef %428) #13
  %430 = trunc i64 %429 to i32
  %431 = icmp slt i32 %430, 1
  br i1 %431, label %439, label %432

432:                                              ; preds = %422
  %433 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %418, i32 %430), !nosanitize !20
  %434 = extractvalue { i32, i1 } %433, 1, !nosanitize !20
  br i1 %434, label %435, label %436, !prof !21, !nosanitize !20

435:                                              ; preds = %411, %432
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

436:                                              ; preds = %432
  %437 = extractvalue { i32, i1 } %433, 0, !nosanitize !20
  %438 = icmp ult i32 %437, %394
  br i1 %438, label %417, label %.loopexit8, !llvm.loop !47

439:                                              ; preds = %401, %422
  %.lcssa12 = phi i32 [ %430, %422 ], [ %409, %401 ]
  %.lcssa9 = phi i32 [ %418, %422 ], [ %398, %401 ]
  %440 = icmp slt i32 %.lcssa12, 0
  br i1 %440, label %441, label %448

441:                                              ; preds = %439
  %442 = load i32, ptr %396, align 4, !tbaa !45
  %443 = icmp eq i32 %442, 11
  br i1 %443, label %444, label %449

444:                                              ; preds = %441
  store i32 1, ptr %38, align 4, !tbaa !17
  %445 = icmp eq i32 %.lcssa9, 0
  br i1 %445, label %446, label %453

446:                                              ; preds = %444
  %447 = load i32, ptr %396, align 4, !tbaa !45
  br label %449

448:                                              ; preds = %439
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %453

449:                                              ; preds = %446, %441
  %450 = phi i32 [ %447, %446 ], [ %442, %441 ]
  %451 = tail call ptr @strerror(i32 noundef %450) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %451) #13
  %452 = load i32, ptr %10, align 8, !tbaa !16
  br label %487

.loopexit8:                                       ; preds = %414, %436
  %.lcssa15 = phi i32 [ %437, %436 ], [ %415, %414 ]
  br label %453

453:                                              ; preds = %.loopexit8, %448, %444
  %454 = phi i32 [ %.lcssa9, %448 ], [ %.lcssa9, %444 ], [ %.lcssa15, %.loopexit8 ]
  %455 = load i32, ptr %30, align 8, !tbaa !34
  %456 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %455, i32 %454), !nosanitize !20
  %457 = extractvalue { i32, i1 } %456, 1, !nosanitize !20
  br i1 %457, label %458, label %459, !prof !21, !nosanitize !20

458:                                              ; preds = %453
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

459:                                              ; preds = %453
  %460 = extractvalue { i32, i1 } %456, 0, !nosanitize !20
  store i32 %460, ptr %30, align 8, !tbaa !34
  %461 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %461, ptr %36, align 8, !tbaa !35
  %462 = icmp eq i32 %460, 0
  br i1 %462, label %463, label %467

463:                                              ; preds = %459, %390
  %464 = load i32, ptr %38, align 4, !tbaa !17
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %487

466:                                              ; preds = %463
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %487

467:                                              ; preds = %459, %384
  %468 = tail call i32 @inflate(ptr noundef nonnull %36, i32 noundef 0) #13
  %469 = load i32, ptr %33, align 8, !tbaa !48
  %470 = icmp ult i32 %469, %382
  br i1 %470, label %471, label %472

471:                                              ; preds = %467
  store i32 0, ptr %40, align 4, !tbaa !33
  br label %472

472:                                              ; preds = %471, %467
  switch i32 %468, label %483 [
    i32 -2, label %473
    i32 2, label %473
    i32 -4, label %474
    i32 -3, label %475
  ]

473:                                              ; preds = %472, %472
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %487

474:                                              ; preds = %472
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %487

475:                                              ; preds = %472
  %476 = load i32, ptr %40, align 4, !tbaa !33
  %477 = icmp eq i32 %476, 1
  br i1 %477, label %478, label %479

478:                                              ; preds = %475
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !24
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %487

479:                                              ; preds = %475
  %480 = load ptr, ptr %41, align 8, !tbaa !50
  %481 = icmp eq ptr %480, null
  %482 = select i1 %481, ptr @.str.6, ptr %480
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %482) #13
  br label %487

483:                                              ; preds = %472
  %484 = icmp ne i32 %469, 0
  %485 = icmp ne i32 %468, 1
  %486 = select i1 %484, i1 %485, i1 false
  br i1 %486, label %384, label %487, !llvm.loop !51

487:                                              ; preds = %483, %479, %478, %474, %473, %466, %463, %449, %388
  %488 = phi i32 [ %385, %463 ], [ %385, %466 ], [ %468, %473 ], [ -4, %474 ], [ 0, %478 ], [ -3, %479 ], [ %452, %449 ], [ %468, %483 ], [ %389, %388 ]
  %489 = load i32, ptr %33, align 8, !tbaa !48
  %490 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %382, i32 %489), !nosanitize !20
  %491 = extractvalue { i32, i1 } %490, 1, !nosanitize !20
  br i1 %491, label %492, label %493, !prof !21, !nosanitize !20

492:                                              ; preds = %487
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

493:                                              ; preds = %487
  %494 = extractvalue { i32, i1 } %490, 0, !nosanitize !20
  store i32 %494, ptr %0, align 8, !tbaa !19
  %495 = load ptr, ptr %35, align 8, !tbaa !49
  %496 = zext i32 %494 to i64
  %497 = sub nsw i64 0, %496
  %498 = getelementptr inbounds i8, ptr %495, i64 %497
  store ptr %498, ptr %27, align 8, !tbaa !22
  switch i32 %488, label %1197 [
    i32 1, label %499
    i32 0, label %501
  ]

499:                                              ; preds = %493
  store i32 0, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %501

500:                                              ; preds = %78
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1197

501:                                              ; preds = %499, %493, %333, %327
  %502 = load i32, ptr %0, align 8, !tbaa !19
  br label %503

503:                                              ; preds = %501, %329
  %504 = phi i32 [ %502, %501 ], [ %332, %329 ]
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %513

506:                                              ; preds = %503
  %507 = load i32, ptr %29, align 8, !tbaa !24
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %512, label %509

509:                                              ; preds = %506
  %510 = load i32, ptr %30, align 8, !tbaa !34
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %513, label %512

512:                                              ; preds = %509, %506
  br label %78, !llvm.loop !52

513:                                              ; preds = %509, %503, %378, %333
  %514 = load i64, ptr %23, align 8, !tbaa !18
  br label %515

515:                                              ; preds = %513, %69
  %516 = phi i64 [ %514, %513 ], [ %70, %69 ]
  %517 = icmp eq i64 %516, 0
  br i1 %517, label %518, label %45, !llvm.loop !53

518:                                              ; preds = %515, %74, %22
  %519 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %520 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %521 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %522 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %523 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %524 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %525 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %526 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %527 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %528 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %529 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %530 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %531 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %532 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %533 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %534 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %535 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %536 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %537

537:                                              ; preds = %1177, %518
  %538 = phi ptr [ %1, %518 ], [ %1178, %1177 ]
  %539 = phi i64 [ %20, %518 ], [ %1179, %1177 ]
  %540 = phi i64 [ 0, %518 ], [ %1180, %1177 ]
  %541 = tail call i64 @llvm.umin.i64(i64 %539, i64 4294967295)
  %542 = trunc nuw i64 %541 to i32
  %543 = load i32, ptr %0, align 8, !tbaa !19
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %560, label %545

545:                                              ; preds = %537
  %546 = tail call i32 @llvm.umin.i32(i32 %543, i32 %542)
  %547 = load ptr, ptr %519, align 8, !tbaa !22
  %548 = zext i32 %546 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %538, ptr align 1 %547, i64 %548, i1 false)
  %549 = load ptr, ptr %519, align 8, !tbaa !22
  %550 = getelementptr inbounds nuw i8, ptr %549, i64 %548
  store ptr %550, ptr %519, align 8, !tbaa !22
  %551 = load i32, ptr %0, align 8, !tbaa !19
  %552 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %551, i32 %546), !nosanitize !20
  %553 = extractvalue { i32, i1 } %552, 1, !nosanitize !20
  br i1 %553, label %554, label %555, !prof !21, !nosanitize !20

554:                                              ; preds = %545
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

555:                                              ; preds = %545
  %556 = extractvalue { i32, i1 } %552, 0, !nosanitize !20
  store i32 %556, ptr %0, align 8, !tbaa !19
  %557 = load i32, ptr %10, align 8, !tbaa !16
  %558 = icmp ne i32 %557, 0
  %559 = sext i1 %558 to i32
  br label %1158

560:                                              ; preds = %537
  %561 = load i32, ptr %520, align 8, !tbaa !24
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %566, label %563

563:                                              ; preds = %560
  %564 = load i32, ptr %521, align 8, !tbaa !25
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %1185, label %566

566:                                              ; preds = %563, %560
  %567 = load i32, ptr %522, align 8, !tbaa !26
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %573, label %569

569:                                              ; preds = %566
  %570 = load i32, ptr %523, align 8, !tbaa !27
  %571 = shl i32 %570, 1
  %572 = icmp ugt i32 %571, %542
  br i1 %572, label %573, label %994

573:                                              ; preds = %569, %566
  br label %574

574:                                              ; preds = %988, %573
  %575 = phi i32 [ %989, %988 ], [ %567, %573 ]
  switch i32 %575, label %976 [
    i32 0, label %576
    i32 1, label %812
    i32 2, label %856
  ]

576:                                              ; preds = %574
  %577 = load i32, ptr %523, align 8, !tbaa !27
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %579, label %596

579:                                              ; preds = %576
  %580 = load i32, ptr %534, align 4, !tbaa !28
  %581 = zext i32 %580 to i64
  %582 = tail call noalias ptr @malloc(i64 noundef %581) #16
  store ptr %582, ptr %527, align 8, !tbaa !29
  %583 = shl i32 %580, 1
  %584 = zext i32 %583 to i64
  %585 = tail call noalias ptr @malloc(i64 noundef %584) #16
  store ptr %585, ptr %533, align 8, !tbaa !30
  %586 = icmp eq ptr %582, null
  %587 = icmp eq ptr %585, null
  %588 = or i1 %586, %587
  br i1 %588, label %589, label %590

589:                                              ; preds = %579
  tail call void @free(ptr noundef %585) #13
  tail call void @free(ptr noundef %582) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %990

590:                                              ; preds = %579
  store i32 %580, ptr %523, align 8, !tbaa !27
  store i32 0, ptr %521, align 8, !tbaa !25
  store ptr null, ptr %526, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %535, i8 0, i64 24, i1 false)
  %591 = tail call i32 @inflateInit2_(ptr noundef nonnull %526, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %596, label %593

593:                                              ; preds = %590
  %594 = load ptr, ptr %533, align 8, !tbaa !30
  tail call void @free(ptr noundef %594) #13
  %595 = load ptr, ptr %527, align 8, !tbaa !29
  tail call void @free(ptr noundef %595) #13
  store i32 0, ptr %523, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %990

596:                                              ; preds = %590, %576
  %597 = load i32, ptr %536, align 8, !tbaa !32
  %598 = icmp eq i32 %597, -1
  br i1 %598, label %602, label %599

599:                                              ; preds = %596
  %600 = load i32, ptr %530, align 4, !tbaa !33
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %602, label %607

602:                                              ; preds = %599, %596
  %603 = tail call i32 @inflateReset(ptr noundef nonnull %526) #13
  store i32 2, ptr %522, align 8, !tbaa !26
  %604 = load i32, ptr %530, align 4, !tbaa !33
  %605 = icmp ne i32 %604, -1
  %606 = zext i1 %605 to i32
  store i32 %606, ptr %530, align 4, !tbaa !33
  store i32 0, ptr %536, align 8, !tbaa !32
  br label %809

607:                                              ; preds = %599
  %608 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %608, label %990 [
    i32 0, label %609
    i32 -5, label %609
  ]

609:                                              ; preds = %607, %607
  %610 = load i32, ptr %520, align 8, !tbaa !24
  %611 = icmp eq i32 %610, 0
  %612 = load i32, ptr %521, align 8, !tbaa !34
  br i1 %611, label %613, label %777

613:                                              ; preds = %609
  %614 = icmp eq i32 %612, 0
  br i1 %614, label %721, label %615

615:                                              ; preds = %613
  %616 = load ptr, ptr %527, align 8, !tbaa !29
  %617 = load ptr, ptr %526, align 8, !tbaa !35
  %618 = icmp eq ptr %617, %616
  br i1 %618, label %721, label %619

619:                                              ; preds = %615
  %620 = ptrtoint ptr %617 to i64
  %621 = ptrtoint ptr %616 to i64
  %622 = zext i32 %612 to i64
  %623 = icmp ult i32 %612, 4
  %624 = sub i64 %621, %620
  %625 = icmp ult i64 %624, 32
  %626 = or i1 %623, %625
  br i1 %626, label %666, label %627

627:                                              ; preds = %619
  %628 = icmp ult i32 %612, 32
  br i1 %628, label %650, label %629

629:                                              ; preds = %627
  %630 = and i64 %622, 4294967264
  br label %631

631:                                              ; preds = %631, %629
  %632 = phi i64 [ 0, %629 ], [ %639, %631 ]
  %633 = getelementptr i8, ptr %616, i64 %632
  %634 = getelementptr i8, ptr %617, i64 %632
  %635 = getelementptr i8, ptr %634, i64 16
  %636 = load <16 x i8>, ptr %634, align 1, !tbaa !36
  %637 = load <16 x i8>, ptr %635, align 1, !tbaa !36
  %638 = getelementptr i8, ptr %633, i64 16
  store <16 x i8> %636, ptr %633, align 1, !tbaa !36
  store <16 x i8> %637, ptr %638, align 1, !tbaa !36
  %639 = add nuw i64 %632, 32
  %640 = icmp eq i64 %639, %630
  br i1 %640, label %641, label %631, !llvm.loop !54

641:                                              ; preds = %631
  %642 = icmp eq i64 %630, %622
  br i1 %642, label %719, label %643

643:                                              ; preds = %641
  %644 = getelementptr i8, ptr %616, i64 %630
  %645 = getelementptr i8, ptr %617, i64 %630
  %646 = trunc nuw i64 %630 to i32
  %647 = sub i32 %612, %646
  %648 = and i64 %622, 28
  %649 = icmp eq i64 %648, 0
  br i1 %649, label %666, label %650

650:                                              ; preds = %643, %627
  %651 = phi i64 [ %630, %643 ], [ 0, %627 ]
  %652 = and i64 %622, 4294967292
  %653 = getelementptr i8, ptr %616, i64 %652
  %654 = getelementptr i8, ptr %617, i64 %652
  %655 = trunc nuw i64 %652 to i32
  %656 = sub i32 %612, %655
  br label %657

657:                                              ; preds = %657, %650
  %658 = phi i64 [ %651, %650 ], [ %662, %657 ]
  %659 = getelementptr i8, ptr %616, i64 %658
  %660 = getelementptr i8, ptr %617, i64 %658
  %661 = load <4 x i8>, ptr %660, align 1, !tbaa !36
  store <4 x i8> %661, ptr %659, align 1, !tbaa !36
  %662 = add nuw i64 %658, 4
  %663 = icmp eq i64 %662, %652
  br i1 %663, label %664, label %657, !llvm.loop !55

664:                                              ; preds = %657
  %665 = icmp eq i64 %652, %622
  br i1 %665, label %719, label %666

666:                                              ; preds = %664, %643, %619
  %667 = phi ptr [ %616, %619 ], [ %644, %643 ], [ %653, %664 ]
  %668 = phi ptr [ %617, %619 ], [ %645, %643 ], [ %654, %664 ]
  %669 = phi i32 [ %612, %619 ], [ %647, %643 ], [ %656, %664 ]
  %670 = add i32 %669, -1
  %671 = and i32 %669, 7
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %684, label %673

673:                                              ; preds = %673, %666
  %674 = phi ptr [ %680, %673 ], [ %667, %666 ]
  %675 = phi ptr [ %681, %673 ], [ %668, %666 ]
  %676 = phi i32 [ %679, %673 ], [ %669, %666 ]
  %677 = phi i32 [ %682, %673 ], [ 0, %666 ]
  %678 = load i8, ptr %675, align 1, !tbaa !36
  store i8 %678, ptr %674, align 1, !tbaa !36
  %679 = add i32 %676, -1
  %680 = getelementptr inbounds nuw i8, ptr %674, i64 1
  %681 = getelementptr inbounds nuw i8, ptr %675, i64 1
  %682 = add i32 %677, 1
  %683 = icmp eq i32 %682, %671
  br i1 %683, label %684, label %673, !llvm.loop !56

684:                                              ; preds = %673, %666
  %685 = phi ptr [ %667, %666 ], [ %680, %673 ]
  %686 = phi ptr [ %668, %666 ], [ %681, %673 ]
  %687 = phi i32 [ %669, %666 ], [ %679, %673 ]
  %688 = icmp ult i32 %670, 7
  br i1 %688, label %719, label %689

689:                                              ; preds = %689, %684
  %690 = phi ptr [ %716, %689 ], [ %685, %684 ]
  %691 = phi ptr [ %717, %689 ], [ %686, %684 ]
  %692 = phi i32 [ %715, %689 ], [ %687, %684 ]
  %693 = load i8, ptr %691, align 1, !tbaa !36
  store i8 %693, ptr %690, align 1, !tbaa !36
  %694 = getelementptr inbounds nuw i8, ptr %690, i64 1
  %695 = getelementptr inbounds nuw i8, ptr %691, i64 1
  %696 = load i8, ptr %695, align 1, !tbaa !36
  store i8 %696, ptr %694, align 1, !tbaa !36
  %697 = getelementptr inbounds nuw i8, ptr %690, i64 2
  %698 = getelementptr inbounds nuw i8, ptr %691, i64 2
  %699 = load i8, ptr %698, align 1, !tbaa !36
  store i8 %699, ptr %697, align 1, !tbaa !36
  %700 = getelementptr inbounds nuw i8, ptr %690, i64 3
  %701 = getelementptr inbounds nuw i8, ptr %691, i64 3
  %702 = load i8, ptr %701, align 1, !tbaa !36
  store i8 %702, ptr %700, align 1, !tbaa !36
  %703 = getelementptr inbounds nuw i8, ptr %690, i64 4
  %704 = getelementptr inbounds nuw i8, ptr %691, i64 4
  %705 = load i8, ptr %704, align 1, !tbaa !36
  store i8 %705, ptr %703, align 1, !tbaa !36
  %706 = getelementptr inbounds nuw i8, ptr %690, i64 5
  %707 = getelementptr inbounds nuw i8, ptr %691, i64 5
  %708 = load i8, ptr %707, align 1, !tbaa !36
  store i8 %708, ptr %706, align 1, !tbaa !36
  %709 = getelementptr inbounds nuw i8, ptr %690, i64 6
  %710 = getelementptr inbounds nuw i8, ptr %691, i64 6
  %711 = load i8, ptr %710, align 1, !tbaa !36
  store i8 %711, ptr %709, align 1, !tbaa !36
  %712 = getelementptr inbounds nuw i8, ptr %690, i64 7
  %713 = getelementptr inbounds nuw i8, ptr %691, i64 7
  %714 = load i8, ptr %713, align 1, !tbaa !36
  store i8 %714, ptr %712, align 1, !tbaa !36
  %715 = add i32 %692, -8
  %716 = getelementptr inbounds nuw i8, ptr %690, i64 8
  %717 = getelementptr inbounds nuw i8, ptr %691, i64 8
  %718 = icmp eq i32 %715, 0
  br i1 %718, label %719, label %689, !llvm.loop !57

719:                                              ; preds = %689, %684, %664, %641
  %720 = load i32, ptr %521, align 8, !tbaa !34
  br label %721

721:                                              ; preds = %719, %615, %613
  %722 = phi i32 [ %720, %719 ], [ %612, %615 ], [ 0, %613 ]
  %723 = load i32, ptr %523, align 8, !tbaa !27
  %724 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %723, i32 %722), !nosanitize !20
  %725 = extractvalue { i32, i1 } %724, 1, !nosanitize !20
  br i1 %725, label %726, label %727, !prof !21, !nosanitize !20

726:                                              ; preds = %721
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

727:                                              ; preds = %721
  %728 = extractvalue { i32, i1 } %724, 0, !nosanitize !20
  %729 = load ptr, ptr %527, align 8, !tbaa !29
  %730 = zext i32 %722 to i64
  %731 = getelementptr inbounds nuw i8, ptr %729, i64 %730
  store i32 0, ptr %528, align 4, !tbaa !17
  %732 = tail call ptr @__errno_location() #17
  store i32 0, ptr %732, align 4, !tbaa !45
  br label %733

733:                                              ; preds = %752, %727
  %734 = phi i32 [ 0, %727 ], [ %753, %752 ]
  %735 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %728, i32 %734), !nosanitize !20
  %736 = extractvalue { i32, i1 } %735, 1, !nosanitize !20
  br i1 false, label %737, label %738, !prof !21, !nosanitize !20

737:                                              ; preds = %733
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

738:                                              ; preds = %733
  %739 = extractvalue { i32, i1 } %735, 0, !nosanitize !20
  %740 = tail call i32 @llvm.umin.i32(i32 %739, i32 1073741824)
  %741 = load i32, ptr %529, align 4, !tbaa !46
  %742 = zext i32 %734 to i64
  %743 = getelementptr inbounds nuw i8, ptr %731, i64 %742
  %744 = zext nneg i32 %740 to i64
  %745 = tail call i64 @read(i32 noundef %741, ptr noundef %743, i64 noundef %744) #13
  %746 = trunc i64 %745 to i32
  %747 = icmp slt i32 %746, 1
  br i1 %747, label %755, label %748

748:                                              ; preds = %738
  %749 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %734, i32 %746), !nosanitize !20
  %750 = extractvalue { i32, i1 } %749, 1, !nosanitize !20
  br i1 %750, label %751, label %752, !prof !21, !nosanitize !20

751:                                              ; preds = %748
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

752:                                              ; preds = %748
  %753 = extractvalue { i32, i1 } %749, 0, !nosanitize !20
  %754 = icmp ult i32 %753, %728
  br i1 %754, label %733, label %768, !llvm.loop !47

755:                                              ; preds = %738
  %756 = icmp slt i32 %746, 0
  br i1 %756, label %757, label %764

757:                                              ; preds = %755
  %758 = load i32, ptr %732, align 4, !tbaa !45
  %759 = icmp eq i32 %758, 11
  br i1 %759, label %760, label %765

760:                                              ; preds = %757
  store i32 1, ptr %528, align 4, !tbaa !17
  %761 = icmp eq i32 %734, 0
  br i1 %761, label %762, label %768

762:                                              ; preds = %760
  %763 = load i32, ptr %732, align 4, !tbaa !45
  br label %765

764:                                              ; preds = %755
  store i32 1, ptr %520, align 8, !tbaa !24
  br label %768

765:                                              ; preds = %762, %757
  %766 = phi i32 [ %763, %762 ], [ %758, %757 ]
  %767 = tail call ptr @strerror(i32 noundef %766) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %767) #13
  br label %990

768:                                              ; preds = %764, %760, %752
  %769 = phi i32 [ %734, %764 ], [ %734, %760 ], [ %753, %752 ]
  %770 = load i32, ptr %521, align 8, !tbaa !34
  %771 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %770, i32 %769), !nosanitize !20
  %772 = extractvalue { i32, i1 } %771, 1, !nosanitize !20
  br i1 %772, label %773, label %774, !prof !21, !nosanitize !20

773:                                              ; preds = %768
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

774:                                              ; preds = %768
  %775 = extractvalue { i32, i1 } %771, 0, !nosanitize !20
  store i32 %775, ptr %521, align 8, !tbaa !34
  %776 = load ptr, ptr %527, align 8, !tbaa !29
  store ptr %776, ptr %526, align 8, !tbaa !35
  br label %777

777:                                              ; preds = %774, %609
  %778 = phi i32 [ %775, %774 ], [ %612, %609 ]
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %809, label %780

780:                                              ; preds = %777
  %781 = load i32, ptr %528, align 4, !tbaa !17
  %782 = icmp ne i32 %781, 0
  %783 = icmp ult i32 %778, 4
  %784 = and i1 %783, %782
  br i1 %784, label %809, label %785

785:                                              ; preds = %780
  %786 = icmp ugt i32 %778, 3
  %787 = load ptr, ptr %526, align 8, !tbaa !35
  br i1 %786, label %788, label %805

788:                                              ; preds = %785
  %789 = load i8, ptr %787, align 1, !tbaa !36
  %790 = icmp eq i8 %789, 31
  br i1 %790, label %791, label %805

791:                                              ; preds = %788
  %792 = getelementptr inbounds nuw i8, ptr %787, i64 1
  %793 = load i8, ptr %792, align 1, !tbaa !36
  %794 = icmp eq i8 %793, -117
  br i1 %794, label %795, label %805

795:                                              ; preds = %791
  %796 = getelementptr inbounds nuw i8, ptr %787, i64 2
  %797 = load i8, ptr %796, align 1, !tbaa !36
  %798 = icmp eq i8 %797, 8
  br i1 %798, label %799, label %805

799:                                              ; preds = %795
  %800 = getelementptr inbounds nuw i8, ptr %787, i64 3
  %801 = load i8, ptr %800, align 1, !tbaa !36
  %802 = icmp ult i8 %801, 32
  br i1 %802, label %803, label %805

803:                                              ; preds = %799
  %804 = tail call i32 @inflateReset(ptr noundef nonnull %526) #13
  store i32 2, ptr %522, align 8, !tbaa !26
  store i32 1, ptr %530, align 4, !tbaa !33
  store i32 0, ptr %536, align 8, !tbaa !32
  br label %977

805:                                              ; preds = %799, %795, %791, %788, %785
  %806 = load ptr, ptr %533, align 8, !tbaa !30
  store ptr %806, ptr %519, align 8, !tbaa !22
  %807 = zext i32 %778 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %806, ptr align 1 %787, i64 %807, i1 false)
  %808 = load i32, ptr %521, align 8, !tbaa !34
  store i32 %808, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %521, align 8, !tbaa !34
  store i32 1, ptr %522, align 8, !tbaa !26
  br label %979

809:                                              ; preds = %780, %777, %602
  %810 = load i32, ptr %522, align 8, !tbaa !26
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %1177, label %977

812:                                              ; preds = %574
  %813 = load ptr, ptr %533, align 8, !tbaa !30
  %814 = load i32, ptr %523, align 8, !tbaa !27
  %815 = shl i32 %814, 1
  store i32 0, ptr %528, align 4, !tbaa !17
  %816 = tail call ptr @__errno_location() #17
  store i32 0, ptr %816, align 4, !tbaa !45
  store i32 0, ptr %0, align 4, !tbaa !45
  br label %817

817:                                              ; preds = %837, %812
  %818 = phi i32 [ %838, %837 ], [ 0, %812 ]
  %819 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %815, i32 %818), !nosanitize !20
  %820 = extractvalue { i32, i1 } %819, 1, !nosanitize !20
  br i1 false, label %821, label %822, !prof !21, !nosanitize !20

821:                                              ; preds = %817
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

822:                                              ; preds = %817
  %823 = extractvalue { i32, i1 } %819, 0, !nosanitize !20
  %824 = tail call i32 @llvm.umin.i32(i32 %823, i32 1073741824)
  %825 = load i32, ptr %529, align 4, !tbaa !46
  %826 = zext i32 %818 to i64
  %827 = getelementptr inbounds nuw i8, ptr %813, i64 %826
  %828 = zext nneg i32 %824 to i64
  %829 = tail call i64 @read(i32 noundef %825, ptr noundef %827, i64 noundef %828) #13
  %830 = trunc i64 %829 to i32
  %831 = icmp slt i32 %830, 1
  br i1 %831, label %840, label %832

832:                                              ; preds = %822
  %833 = load i32, ptr %0, align 4, !tbaa !45
  %834 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %833, i32 %830), !nosanitize !20
  %835 = extractvalue { i32, i1 } %834, 1, !nosanitize !20
  br i1 %835, label %836, label %837, !prof !21, !nosanitize !20

836:                                              ; preds = %832
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

837:                                              ; preds = %832
  %838 = extractvalue { i32, i1 } %834, 0, !nosanitize !20
  store i32 %838, ptr %0, align 4, !tbaa !45
  %839 = icmp ult i32 %838, %815
  br i1 %839, label %817, label %854, !llvm.loop !47

840:                                              ; preds = %822
  %841 = icmp slt i32 %830, 0
  br i1 %841, label %842, label %850

842:                                              ; preds = %840
  %843 = load i32, ptr %816, align 4, !tbaa !45
  %844 = icmp eq i32 %843, 11
  br i1 %844, label %845, label %851

845:                                              ; preds = %842
  store i32 1, ptr %528, align 4, !tbaa !17
  %846 = load i32, ptr %0, align 4, !tbaa !45
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %848, label %854

848:                                              ; preds = %845
  %849 = load i32, ptr %816, align 4, !tbaa !45
  br label %851

850:                                              ; preds = %840
  store i32 1, ptr %520, align 8, !tbaa !24
  br label %854

851:                                              ; preds = %848, %842
  %852 = phi i32 [ %849, %848 ], [ %843, %842 ]
  %853 = tail call ptr @strerror(i32 noundef %852) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %853) #13
  br label %990

854:                                              ; preds = %850, %845, %837
  %855 = load ptr, ptr %533, align 8, !tbaa !30
  store ptr %855, ptr %519, align 8, !tbaa !22
  br label %1177

856:                                              ; preds = %574
  %857 = load i32, ptr %523, align 8, !tbaa !27
  %858 = shl i32 %857, 1
  store i32 %858, ptr %524, align 8, !tbaa !48
  %859 = load ptr, ptr %533, align 8, !tbaa !30
  store ptr %859, ptr %525, align 8, !tbaa !49
  br label %860

860:                                              ; preds = %959, %856
  %861 = phi i32 [ 0, %856 ], [ %944, %959 ]
  %862 = load i32, ptr %521, align 8, !tbaa !34
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %864, label %943

864:                                              ; preds = %860
  %865 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %865, label %963 [
    i32 0, label %866
    i32 -5, label %866
  ]

866:                                              ; preds = %864, %864
  %867 = load i32, ptr %520, align 8, !tbaa !24
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %869, label %939

869:                                              ; preds = %866
  %870 = load i32, ptr %523, align 8, !tbaa !27
  %871 = load ptr, ptr %527, align 8, !tbaa !29
  store i32 0, ptr %528, align 4, !tbaa !17
  %872 = tail call ptr @__errno_location() #17
  store i32 0, ptr %872, align 4, !tbaa !45
  %mv.h = icmp sge i32 %870, 0
  %mv.h.fr = freeze i1 %mv.h
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %869
  br label %873

873:                                              ; preds = %890, %.mv.ph.mv.fast
  %874 = phi i32 [ 0, %.mv.ph.mv.fast ], [ %891, %890 ]
  %875 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %870, i32 %874), !nosanitize !20
  %876 = extractvalue { i32, i1 } %875, 1, !nosanitize !20
  br i1 false, label %897, label %877, !prof !21, !nosanitize !20

877:                                              ; preds = %873
  %878 = extractvalue { i32, i1 } %875, 0, !nosanitize !20
  %879 = tail call i32 @llvm.umin.i32(i32 %878, i32 1073741824)
  %880 = load i32, ptr %529, align 4, !tbaa !46
  %881 = zext i32 %874 to i64
  %882 = getelementptr inbounds nuw i8, ptr %871, i64 %881
  %883 = zext nneg i32 %879 to i64
  %884 = tail call i64 @read(i32 noundef %880, ptr noundef %882, i64 noundef %883) #13
  %885 = trunc i64 %884 to i32
  %886 = icmp slt i32 %885, 1
  br i1 %886, label %915, label %887

887:                                              ; preds = %877
  %888 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %874, i32 %885), !nosanitize !20
  %889 = extractvalue { i32, i1 } %888, 1, !nosanitize !20
  br i1 false, label %911, label %890, !prof !21, !nosanitize !20

890:                                              ; preds = %887
  %891 = extractvalue { i32, i1 } %888, 0, !nosanitize !20
  %892 = icmp ult i32 %891, %870
  br i1 %892, label %873, label %.loopexit, !llvm.loop !47

.mv.ph:                                           ; preds = %869
  br label %893

893:                                              ; preds = %912, %.mv.ph
  %894 = phi i32 [ 0, %.mv.ph ], [ %913, %912 ]
  %895 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %870, i32 %894), !nosanitize !20
  %896 = extractvalue { i32, i1 } %895, 1, !nosanitize !20
  br i1 false, label %897, label %898, !prof !21, !nosanitize !20

897:                                              ; preds = %873, %893
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

898:                                              ; preds = %893
  %899 = extractvalue { i32, i1 } %895, 0, !nosanitize !20
  %900 = tail call i32 @llvm.umin.i32(i32 %899, i32 1073741824)
  %901 = load i32, ptr %529, align 4, !tbaa !46
  %902 = zext i32 %894 to i64
  %903 = getelementptr inbounds nuw i8, ptr %871, i64 %902
  %904 = zext nneg i32 %900 to i64
  %905 = tail call i64 @read(i32 noundef %901, ptr noundef %903, i64 noundef %904) #13
  %906 = trunc i64 %905 to i32
  %907 = icmp slt i32 %906, 1
  br i1 %907, label %915, label %908

908:                                              ; preds = %898
  %909 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %894, i32 %906), !nosanitize !20
  %910 = extractvalue { i32, i1 } %909, 1, !nosanitize !20
  br i1 %910, label %911, label %912, !prof !21, !nosanitize !20

911:                                              ; preds = %887, %908
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

912:                                              ; preds = %908
  %913 = extractvalue { i32, i1 } %909, 0, !nosanitize !20
  %914 = icmp ult i32 %913, %870
  br i1 %914, label %893, label %.loopexit, !llvm.loop !47

915:                                              ; preds = %877, %898
  %.lcssa4 = phi i32 [ %906, %898 ], [ %885, %877 ]
  %.lcssa1 = phi i32 [ %894, %898 ], [ %874, %877 ]
  %916 = icmp slt i32 %.lcssa4, 0
  br i1 %916, label %917, label %924

917:                                              ; preds = %915
  %918 = load i32, ptr %872, align 4, !tbaa !45
  %919 = icmp eq i32 %918, 11
  br i1 %919, label %920, label %925

920:                                              ; preds = %917
  store i32 1, ptr %528, align 4, !tbaa !17
  %921 = icmp eq i32 %.lcssa1, 0
  br i1 %921, label %922, label %929

922:                                              ; preds = %920
  %923 = load i32, ptr %872, align 4, !tbaa !45
  br label %925

924:                                              ; preds = %915
  store i32 1, ptr %520, align 8, !tbaa !24
  br label %929

925:                                              ; preds = %922, %917
  %926 = phi i32 [ %923, %922 ], [ %918, %917 ]
  %927 = tail call ptr @strerror(i32 noundef %926) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %927) #13
  %928 = load i32, ptr %10, align 8, !tbaa !16
  br label %963

.loopexit:                                        ; preds = %890, %912
  %.lcssa7 = phi i32 [ %913, %912 ], [ %891, %890 ]
  br label %929

929:                                              ; preds = %.loopexit, %924, %920
  %930 = phi i32 [ %.lcssa1, %924 ], [ %.lcssa1, %920 ], [ %.lcssa7, %.loopexit ]
  %931 = load i32, ptr %521, align 8, !tbaa !34
  %932 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %931, i32 %930), !nosanitize !20
  %933 = extractvalue { i32, i1 } %932, 1, !nosanitize !20
  br i1 %933, label %934, label %935, !prof !21, !nosanitize !20

934:                                              ; preds = %929
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

935:                                              ; preds = %929
  %936 = extractvalue { i32, i1 } %932, 0, !nosanitize !20
  store i32 %936, ptr %521, align 8, !tbaa !34
  %937 = load ptr, ptr %527, align 8, !tbaa !29
  store ptr %937, ptr %526, align 8, !tbaa !35
  %938 = icmp eq i32 %936, 0
  br i1 %938, label %939, label %943

939:                                              ; preds = %935, %866
  %940 = load i32, ptr %528, align 4, !tbaa !17
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %942, label %963

942:                                              ; preds = %939
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %963

943:                                              ; preds = %935, %860
  %944 = tail call i32 @inflate(ptr noundef nonnull %526, i32 noundef 0) #13
  %945 = load i32, ptr %524, align 8, !tbaa !48
  %946 = icmp ult i32 %945, %858
  br i1 %946, label %947, label %948

947:                                              ; preds = %943
  store i32 0, ptr %530, align 4, !tbaa !33
  br label %948

948:                                              ; preds = %947, %943
  switch i32 %944, label %959 [
    i32 -2, label %949
    i32 2, label %949
    i32 -4, label %950
    i32 -3, label %951
  ]

949:                                              ; preds = %948, %948
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %963

950:                                              ; preds = %948
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %963

951:                                              ; preds = %948
  %952 = load i32, ptr %530, align 4, !tbaa !33
  %953 = icmp eq i32 %952, 1
  br i1 %953, label %954, label %955

954:                                              ; preds = %951
  store i32 0, ptr %521, align 8, !tbaa !34
  store i32 1, ptr %520, align 8, !tbaa !24
  store i32 0, ptr %522, align 8, !tbaa !26
  br label %963

955:                                              ; preds = %951
  %956 = load ptr, ptr %531, align 8, !tbaa !50
  %957 = icmp eq ptr %956, null
  %958 = select i1 %957, ptr @.str.6, ptr %956
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %958) #13
  br label %963

959:                                              ; preds = %948
  %960 = icmp ne i32 %945, 0
  %961 = icmp ne i32 %944, 1
  %962 = select i1 %960, i1 %961, i1 false
  br i1 %962, label %860, label %963, !llvm.loop !51

963:                                              ; preds = %959, %955, %954, %950, %949, %942, %939, %925, %864
  %964 = phi i32 [ %861, %939 ], [ %861, %942 ], [ %944, %949 ], [ -4, %950 ], [ 0, %954 ], [ -3, %955 ], [ %928, %925 ], [ %865, %864 ], [ %944, %959 ]
  %965 = load i32, ptr %524, align 8, !tbaa !48
  %966 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %858, i32 %965), !nosanitize !20
  %967 = extractvalue { i32, i1 } %966, 1, !nosanitize !20
  br i1 %967, label %968, label %969, !prof !21, !nosanitize !20

968:                                              ; preds = %963
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

969:                                              ; preds = %963
  %970 = extractvalue { i32, i1 } %966, 0, !nosanitize !20
  store i32 %970, ptr %0, align 8, !tbaa !19
  %971 = load ptr, ptr %525, align 8, !tbaa !49
  %972 = zext i32 %970 to i64
  %973 = sub nsw i64 0, %972
  %974 = getelementptr inbounds i8, ptr %971, i64 %973
  store ptr %974, ptr %519, align 8, !tbaa !22
  switch i32 %964, label %990 [
    i32 1, label %975
    i32 0, label %977
  ]

975:                                              ; preds = %969
  store i32 0, ptr %530, align 4, !tbaa !33
  store i32 0, ptr %522, align 8, !tbaa !26
  br label %977

976:                                              ; preds = %574
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %990

977:                                              ; preds = %975, %969, %809, %803
  %978 = load i32, ptr %0, align 8, !tbaa !19
  br label %979

979:                                              ; preds = %977, %805
  %980 = phi i32 [ %978, %977 ], [ %808, %805 ]
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %982, label %1177

982:                                              ; preds = %979
  %983 = load i32, ptr %520, align 8, !tbaa !24
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %988, label %985

985:                                              ; preds = %982
  %986 = load i32, ptr %521, align 8, !tbaa !34
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %1177, label %988

988:                                              ; preds = %985, %982
  %989 = load i32, ptr %522, align 8, !tbaa !26
  br label %574, !llvm.loop !52

990:                                              ; preds = %976, %969, %851, %765, %607, %593, %589
  %991 = load i32, ptr %0, align 8, !tbaa !19
  %992 = icmp eq i32 %991, 0
  %993 = sext i1 %992 to i32
  br label %1177

994:                                              ; preds = %569
  %995 = icmp eq i32 %567, 1
  br i1 %995, label %996, label %1033

996:                                              ; preds = %994
  store i32 0, ptr %528, align 4, !tbaa !17
  %997 = tail call ptr @__errno_location() #17
  store i32 0, ptr %997, align 4, !tbaa !45
  br label %998

998:                                              ; preds = %1017, %996
  %999 = phi i32 [ 0, %996 ], [ %1018, %1017 ]
  %1000 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %542, i32 %999), !nosanitize !20
  %1001 = extractvalue { i32, i1 } %1000, 1, !nosanitize !20
  br i1 false, label %1002, label %1003, !prof !21, !nosanitize !20

1002:                                             ; preds = %998
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1003:                                             ; preds = %998
  %1004 = extractvalue { i32, i1 } %1000, 0, !nosanitize !20
  %1005 = tail call i32 @llvm.umin.i32(i32 %1004, i32 1073741824)
  %1006 = load i32, ptr %529, align 4, !tbaa !46
  %1007 = zext i32 %999 to i64
  %1008 = getelementptr inbounds nuw i8, ptr %538, i64 %1007
  %1009 = zext nneg i32 %1005 to i64
  %1010 = tail call i64 @read(i32 noundef %1006, ptr noundef %1008, i64 noundef %1009) #13
  %1011 = trunc i64 %1010 to i32
  %1012 = icmp slt i32 %1011, 1
  br i1 %1012, label %1020, label %1013

1013:                                             ; preds = %1003
  %1014 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %999, i32 %1011), !nosanitize !20
  %1015 = extractvalue { i32, i1 } %1014, 1, !nosanitize !20
  br i1 %1015, label %1016, label %1017, !prof !21, !nosanitize !20

1016:                                             ; preds = %1013
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1017:                                             ; preds = %1013
  %1018 = extractvalue { i32, i1 } %1014, 0, !nosanitize !20
  %1019 = icmp ult i32 %1018, %542
  br i1 %1019, label %998, label %1156, !llvm.loop !47

1020:                                             ; preds = %1003
  %1021 = icmp slt i32 %1011, 0
  br i1 %1021, label %1022, label %1032

1022:                                             ; preds = %1020
  %1023 = load i32, ptr %997, align 4, !tbaa !45
  %1024 = icmp eq i32 %1023, 11
  br i1 %1024, label %1025, label %1029

1025:                                             ; preds = %1022
  store i32 1, ptr %528, align 4, !tbaa !17
  %1026 = icmp eq i32 %999, 0
  br i1 %1026, label %1027, label %1158

1027:                                             ; preds = %1025
  %1028 = load i32, ptr %997, align 4, !tbaa !45
  br label %1029

1029:                                             ; preds = %1027, %1022
  %1030 = phi i32 [ %1028, %1027 ], [ %1023, %1022 ]
  %1031 = tail call ptr @strerror(i32 noundef %1030) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1031) #13
  br label %1158

1032:                                             ; preds = %1020
  store i32 1, ptr %520, align 8, !tbaa !24
  br label %1158

1033:                                             ; preds = %994
  store i32 %542, ptr %524, align 8, !tbaa !58
  store ptr %538, ptr %525, align 8, !tbaa !59
  br label %1034

1034:                                             ; preds = %1133, %1033
  %1035 = phi i32 [ 0, %1033 ], [ %1118, %1133 ]
  %1036 = load i32, ptr %521, align 8, !tbaa !34
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1038, label %1117

1038:                                             ; preds = %1034
  %1039 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %1039, label %1137 [
    i32 0, label %1040
    i32 -5, label %1040
  ]

1040:                                             ; preds = %1038, %1038
  %1041 = load i32, ptr %520, align 8, !tbaa !24
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1043, label %1113

1043:                                             ; preds = %1040
  %1044 = load i32, ptr %523, align 8, !tbaa !27
  %1045 = load ptr, ptr %527, align 8, !tbaa !29
  store i32 0, ptr %528, align 4, !tbaa !17
  %1046 = tail call ptr @__errno_location() #17
  store i32 0, ptr %1046, align 4, !tbaa !45
  %mv.h27 = icmp sge i32 %1044, 0
  %mv.h.fr28 = freeze i1 %mv.h27
  br i1 %mv.h.fr28, label %.mv.ph29.mv.fast, label %.mv.ph29

.mv.ph29.mv.fast:                                 ; preds = %1043
  br label %1047

1047:                                             ; preds = %1064, %.mv.ph29.mv.fast
  %1048 = phi i32 [ 0, %.mv.ph29.mv.fast ], [ %1065, %1064 ]
  %1049 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1044, i32 %1048), !nosanitize !20
  %1050 = extractvalue { i32, i1 } %1049, 1, !nosanitize !20
  br i1 false, label %1071, label %1051, !prof !21, !nosanitize !20

1051:                                             ; preds = %1047
  %1052 = extractvalue { i32, i1 } %1049, 0, !nosanitize !20
  %1053 = tail call i32 @llvm.umin.i32(i32 %1052, i32 1073741824)
  %1054 = load i32, ptr %529, align 4, !tbaa !46
  %1055 = zext i32 %1048 to i64
  %1056 = getelementptr inbounds nuw i8, ptr %1045, i64 %1055
  %1057 = zext nneg i32 %1053 to i64
  %1058 = tail call i64 @read(i32 noundef %1054, ptr noundef %1056, i64 noundef %1057) #13
  %1059 = trunc i64 %1058 to i32
  %1060 = icmp slt i32 %1059, 1
  br i1 %1060, label %1089, label %1061

1061:                                             ; preds = %1051
  %1062 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1048, i32 %1059), !nosanitize !20
  %1063 = extractvalue { i32, i1 } %1062, 1, !nosanitize !20
  br i1 false, label %1085, label %1064, !prof !21, !nosanitize !20

1064:                                             ; preds = %1061
  %1065 = extractvalue { i32, i1 } %1062, 0, !nosanitize !20
  %1066 = icmp ult i32 %1065, %1044
  br i1 %1066, label %1047, label %.loopexit19, !llvm.loop !47

.mv.ph29:                                         ; preds = %1043
  br label %1067

1067:                                             ; preds = %1086, %.mv.ph29
  %1068 = phi i32 [ 0, %.mv.ph29 ], [ %1087, %1086 ]
  %1069 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1044, i32 %1068), !nosanitize !20
  %1070 = extractvalue { i32, i1 } %1069, 1, !nosanitize !20
  br i1 false, label %1071, label %1072, !prof !21, !nosanitize !20

1071:                                             ; preds = %1047, %1067
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1072:                                             ; preds = %1067
  %1073 = extractvalue { i32, i1 } %1069, 0, !nosanitize !20
  %1074 = tail call i32 @llvm.umin.i32(i32 %1073, i32 1073741824)
  %1075 = load i32, ptr %529, align 4, !tbaa !46
  %1076 = zext i32 %1068 to i64
  %1077 = getelementptr inbounds nuw i8, ptr %1045, i64 %1076
  %1078 = zext nneg i32 %1074 to i64
  %1079 = tail call i64 @read(i32 noundef %1075, ptr noundef %1077, i64 noundef %1078) #13
  %1080 = trunc i64 %1079 to i32
  %1081 = icmp slt i32 %1080, 1
  br i1 %1081, label %1089, label %1082

1082:                                             ; preds = %1072
  %1083 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1068, i32 %1080), !nosanitize !20
  %1084 = extractvalue { i32, i1 } %1083, 1, !nosanitize !20
  br i1 %1084, label %1085, label %1086, !prof !21, !nosanitize !20

1085:                                             ; preds = %1061, %1082
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1086:                                             ; preds = %1082
  %1087 = extractvalue { i32, i1 } %1083, 0, !nosanitize !20
  %1088 = icmp ult i32 %1087, %1044
  br i1 %1088, label %1067, label %.loopexit19, !llvm.loop !47

1089:                                             ; preds = %1051, %1072
  %.lcssa23 = phi i32 [ %1080, %1072 ], [ %1059, %1051 ]
  %.lcssa20 = phi i32 [ %1068, %1072 ], [ %1048, %1051 ]
  %1090 = icmp slt i32 %.lcssa23, 0
  br i1 %1090, label %1091, label %1098

1091:                                             ; preds = %1089
  %1092 = load i32, ptr %1046, align 4, !tbaa !45
  %1093 = icmp eq i32 %1092, 11
  br i1 %1093, label %1094, label %1099

1094:                                             ; preds = %1091
  store i32 1, ptr %528, align 4, !tbaa !17
  %1095 = icmp eq i32 %.lcssa20, 0
  br i1 %1095, label %1096, label %1103

1096:                                             ; preds = %1094
  %1097 = load i32, ptr %1046, align 4, !tbaa !45
  br label %1099

1098:                                             ; preds = %1089
  store i32 1, ptr %520, align 8, !tbaa !24
  br label %1103

1099:                                             ; preds = %1096, %1091
  %1100 = phi i32 [ %1097, %1096 ], [ %1092, %1091 ]
  %1101 = tail call ptr @strerror(i32 noundef %1100) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1101) #13
  %1102 = load i32, ptr %10, align 8, !tbaa !16
  br label %1137

.loopexit19:                                      ; preds = %1064, %1086
  %.lcssa26 = phi i32 [ %1087, %1086 ], [ %1065, %1064 ]
  br label %1103

1103:                                             ; preds = %.loopexit19, %1098, %1094
  %1104 = phi i32 [ %.lcssa20, %1098 ], [ %.lcssa20, %1094 ], [ %.lcssa26, %.loopexit19 ]
  %1105 = load i32, ptr %521, align 8, !tbaa !34
  %1106 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1105, i32 %1104), !nosanitize !20
  %1107 = extractvalue { i32, i1 } %1106, 1, !nosanitize !20
  br i1 %1107, label %1108, label %1109, !prof !21, !nosanitize !20

1108:                                             ; preds = %1103
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1109:                                             ; preds = %1103
  %1110 = extractvalue { i32, i1 } %1106, 0, !nosanitize !20
  store i32 %1110, ptr %521, align 8, !tbaa !34
  %1111 = load ptr, ptr %527, align 8, !tbaa !29
  store ptr %1111, ptr %526, align 8, !tbaa !35
  %1112 = icmp eq i32 %1110, 0
  br i1 %1112, label %1113, label %1117

1113:                                             ; preds = %1109, %1040
  %1114 = load i32, ptr %528, align 4, !tbaa !17
  %1115 = icmp eq i32 %1114, 0
  br i1 %1115, label %1116, label %1137

1116:                                             ; preds = %1113
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %1137

1117:                                             ; preds = %1109, %1034
  %1118 = tail call i32 @inflate(ptr noundef nonnull %526, i32 noundef 0) #13
  %1119 = load i32, ptr %524, align 8, !tbaa !48
  %1120 = icmp ult i32 %1119, %542
  br i1 %1120, label %1121, label %1122

1121:                                             ; preds = %1117
  store i32 0, ptr %530, align 4, !tbaa !33
  br label %1122

1122:                                             ; preds = %1121, %1117
  switch i32 %1118, label %1133 [
    i32 -2, label %1123
    i32 2, label %1123
    i32 -4, label %1124
    i32 -3, label %1125
  ]

1123:                                             ; preds = %1122, %1122
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %1137

1124:                                             ; preds = %1122
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1137

1125:                                             ; preds = %1122
  %1126 = load i32, ptr %530, align 4, !tbaa !33
  %1127 = icmp eq i32 %1126, 1
  br i1 %1127, label %1128, label %1129

1128:                                             ; preds = %1125
  store i32 0, ptr %521, align 8, !tbaa !34
  store i32 1, ptr %520, align 8, !tbaa !24
  store i32 0, ptr %522, align 8, !tbaa !26
  br label %1137

1129:                                             ; preds = %1125
  %1130 = load ptr, ptr %531, align 8, !tbaa !50
  %1131 = icmp eq ptr %1130, null
  %1132 = select i1 %1131, ptr @.str.6, ptr %1130
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1132) #13
  br label %1137

1133:                                             ; preds = %1122
  %1134 = icmp ne i32 %1119, 0
  %1135 = icmp ne i32 %1118, 1
  %1136 = select i1 %1134, i1 %1135, i1 false
  br i1 %1136, label %1034, label %1137, !llvm.loop !51

1137:                                             ; preds = %1133, %1129, %1128, %1124, %1123, %1116, %1113, %1099, %1038
  %1138 = phi i32 [ %1035, %1113 ], [ %1035, %1116 ], [ %1118, %1123 ], [ -4, %1124 ], [ 0, %1128 ], [ -3, %1129 ], [ %1102, %1099 ], [ %1118, %1133 ], [ %1039, %1038 ]
  %1139 = load i32, ptr %524, align 8, !tbaa !48
  %1140 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %542, i32 %1139), !nosanitize !20
  %1141 = extractvalue { i32, i1 } %1140, 1, !nosanitize !20
  br i1 %1141, label %1142, label %1143, !prof !21, !nosanitize !20

1142:                                             ; preds = %1137
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1143:                                             ; preds = %1137
  %1144 = extractvalue { i32, i1 } %1140, 0, !nosanitize !20
  %1145 = load ptr, ptr %525, align 8, !tbaa !49
  %1146 = zext i32 %1144 to i64
  %1147 = sub nsw i64 0, %1146
  %1148 = getelementptr inbounds i8, ptr %1145, i64 %1147
  store ptr %1148, ptr %519, align 8, !tbaa !22
  %1149 = icmp eq i32 %1138, 1
  br i1 %1149, label %1150, label %1151

1150:                                             ; preds = %1143
  store i32 0, ptr %530, align 4, !tbaa !33
  store i32 0, ptr %522, align 8, !tbaa !26
  br label %1154

1151:                                             ; preds = %1143
  %1152 = icmp ne i32 %1138, 0
  %1153 = sext i1 %1152 to i32
  br label %1154

1154:                                             ; preds = %1151, %1150
  %1155 = phi i32 [ 0, %1150 ], [ %1153, %1151 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1158

1156:                                             ; preds = %1017
  %1157 = zext i32 %1018 to i64
  br label %1158

1158:                                             ; preds = %1156, %1154, %1032, %1029, %1025, %555
  %1159 = phi i64 [ %1157, %1156 ], [ %1007, %1032 ], [ %1007, %1029 ], [ %1007, %1025 ], [ %548, %555 ], [ %1146, %1154 ]
  %1160 = phi i32 [ 0, %1156 ], [ 0, %1032 ], [ -1, %1029 ], [ 0, %1025 ], [ %559, %555 ], [ %1155, %1154 ]
  %1161 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %539, i64 %1159), !nosanitize !20
  %1162 = extractvalue { i64, i1 } %1161, 0, !nosanitize !20
  %1163 = extractvalue { i64, i1 } %1161, 1, !nosanitize !20
  br i1 %1163, label %1164, label %1165, !prof !21, !nosanitize !20

1164:                                             ; preds = %1158
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1165:                                             ; preds = %1158
  %1166 = getelementptr inbounds nuw i8, ptr %538, i64 %1159
  %1167 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %540, i64 %1159), !nosanitize !20
  %1168 = extractvalue { i64, i1 } %1167, 0, !nosanitize !20
  %1169 = extractvalue { i64, i1 } %1167, 1, !nosanitize !20
  br i1 %1169, label %1170, label %1171, !prof !21, !nosanitize !20

1170:                                             ; preds = %1171, %1165
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1171:                                             ; preds = %1165
  %1172 = load i64, ptr %532, align 8, !tbaa !23
  %1173 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1172, i64 %1159), !nosanitize !20
  %1174 = extractvalue { i64, i1 } %1173, 1, !nosanitize !20
  br i1 %1174, label %1170, label %1175, !prof !21, !nosanitize !20

1175:                                             ; preds = %1171
  %1176 = extractvalue { i64, i1 } %1173, 0, !nosanitize !20
  store i64 %1176, ptr %532, align 8, !tbaa !23
  br label %1177

1177:                                             ; preds = %1175, %990, %985, %979, %854, %809
  %1178 = phi ptr [ %1166, %1175 ], [ %538, %990 ], [ %538, %854 ], [ %538, %809 ], [ %538, %979 ], [ %538, %985 ]
  %1179 = phi i64 [ %1162, %1175 ], [ %539, %990 ], [ %539, %854 ], [ %539, %809 ], [ %539, %979 ], [ %539, %985 ]
  %1180 = phi i64 [ %1168, %1175 ], [ %540, %990 ], [ %540, %854 ], [ %540, %809 ], [ %540, %979 ], [ %540, %985 ]
  %1181 = phi i32 [ %1160, %1175 ], [ %993, %990 ], [ 0, %854 ], [ 0, %809 ], [ 0, %979 ], [ 0, %985 ]
  %1182 = icmp ne i64 %1179, 0
  %1183 = icmp eq i32 %1181, 0
  %1184 = select i1 %1182, i1 %1183, i1 false
  br i1 %1184, label %537, label %1185, !llvm.loop !60

1185:                                             ; preds = %1177, %563
  %1186 = phi i64 [ %1179, %1177 ], [ %539, %563 ]
  %1187 = phi i64 [ %1180, %1177 ], [ %540, %563 ]
  %1188 = icmp eq i64 %1186, 0
  br i1 %1188, label %1194, label %1189

1189:                                             ; preds = %1185
  %1190 = load i32, ptr %520, align 8, !tbaa !24
  %1191 = icmp eq i32 %1190, 0
  br i1 %1191, label %1194, label %1192

1192:                                             ; preds = %1189
  %1193 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1193, align 4, !tbaa !61
  br label %1194

1194:                                             ; preds = %1192, %1189, %1185
  %1195 = trunc i64 %1187 to i32
  %1196 = icmp eq i32 %1195, 0
  br i1 %1196, label %1197, label %1209

1197:                                             ; preds = %1194, %500, %493, %375, %289, %97, %93, %19
  %1198 = load i32, ptr %10, align 8, !tbaa !16
  br label %1199

1199:                                             ; preds = %1197, %111
  %1200 = phi i32 [ %1198, %1197 ], [ %112, %111 ]
  switch i32 %1200, label %1209 [
    i32 0, label %1201
    i32 -5, label %1201
  ]

1201:                                             ; preds = %1199, %1199
  %1202 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1203 = load i32, ptr %1202, align 4, !tbaa !17
  %1204 = icmp eq i32 %1203, 0
  br i1 %1204, label %1209, label %1205

1205:                                             ; preds = %1201
  %1206 = tail call ptr @__errno_location() #17
  %1207 = load i32, ptr %1206, align 4, !tbaa !45
  %1208 = tail call ptr @strerror(i32 noundef %1207) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1208) #13
  br label %1209

1209:                                             ; preds = %1205, %1201, %1199, %1194, %18, %12, %5, %3
  %1210 = phi i32 [ -1, %18 ], [ -1, %1205 ], [ -1, %3 ], [ -1, %5 ], [ -1, %12 ], [ -1, %1199 ], [ 0, %1201 ], [ %1195, %1194 ]
  ret i32 %1210
}

declare void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @gzfread(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %1205, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 7247
  br i1 %9, label %10, label %1205

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
  br i1 %16, label %1205, label %17

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
  br label %1205

28:                                               ; preds = %24, %22
  %29 = icmp eq i64 %19, 0
  br i1 %29, label %1205, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %32 = load i64, ptr %31, align 8, !tbaa !18
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %506, label %34

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

53:                                               ; preds = %503, %34
  %54 = phi i64 [ %504, %503 ], [ %32, %34 ]
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
  br label %503

79:                                               ; preds = %53
  %80 = load i32, ptr %37, align 8, !tbaa !24
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, ptr %38, align 8, !tbaa !25
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %506, label %85

85:                                               ; preds = %82, %79
  br label %86

86:                                               ; preds = %500, %85
  %87 = load i32, ptr %39, align 8, !tbaa !26
  switch i32 %87, label %488 [
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
  br label %1202

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
  br label %1202

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
  switch i32 %120, label %1202 [
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
  br i1 false, label %249, label %250, !prof !21, !nosanitize !20

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
  br label %1202

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
  br label %489

317:                                              ; preds = %311, %307, %303, %300, %297
  %318 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %318, ptr %35, align 8, !tbaa !22
  %319 = zext i32 %290 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %318, ptr align 1 %299, i64 %319, i1 false)
  %320 = load i32, ptr %38, align 8, !tbaa !34
  store i32 %320, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %38, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !26
  br label %491

321:                                              ; preds = %292, %289, %114
  %322 = load i32, ptr %39, align 8, !tbaa !26
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %501, label %489

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
  br i1 false, label %333, label %334, !prof !21, !nosanitize !20

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
  br label %1202

366:                                              ; preds = %362, %357, %349
  %367 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %367, ptr %35, align 8, !tbaa !22
  br label %501

368:                                              ; preds = %86
  %369 = load i32, ptr %40, align 8, !tbaa !27
  %370 = shl i32 %369, 1
  store i32 %370, ptr %41, align 8, !tbaa !48
  %371 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %371, ptr %43, align 8, !tbaa !49
  br label %372

372:                                              ; preds = %471, %368
  %373 = phi i32 [ 0, %368 ], [ %456, %471 ]
  %374 = load i32, ptr %38, align 8, !tbaa !34
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %455

376:                                              ; preds = %372
  %377 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %377, label %475 [
    i32 0, label %378
    i32 -5, label %378
  ]

378:                                              ; preds = %376, %376
  %379 = load i32, ptr %37, align 8, !tbaa !24
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %451

381:                                              ; preds = %378
  %382 = load i32, ptr %40, align 8, !tbaa !27
  %383 = load ptr, ptr %45, align 8, !tbaa !29
  store i32 0, ptr %46, align 4, !tbaa !17
  %384 = tail call ptr @__errno_location() #17
  store i32 0, ptr %384, align 4, !tbaa !45
  %mv.h16 = icmp sge i32 %382, 0
  %mv.h.fr17 = freeze i1 %mv.h16
  br i1 %mv.h.fr17, label %.mv.ph18.mv.fast, label %.mv.ph18

.mv.ph18.mv.fast:                                 ; preds = %381
  br label %385

385:                                              ; preds = %402, %.mv.ph18.mv.fast
  %386 = phi i32 [ 0, %.mv.ph18.mv.fast ], [ %403, %402 ]
  %387 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %382, i32 %386), !nosanitize !20
  %388 = extractvalue { i32, i1 } %387, 1, !nosanitize !20
  br i1 false, label %409, label %389, !prof !21, !nosanitize !20

389:                                              ; preds = %385
  %390 = extractvalue { i32, i1 } %387, 0, !nosanitize !20
  %391 = tail call i32 @llvm.umin.i32(i32 %390, i32 1073741824)
  %392 = load i32, ptr %47, align 4, !tbaa !46
  %393 = zext i32 %386 to i64
  %394 = getelementptr inbounds nuw i8, ptr %383, i64 %393
  %395 = zext nneg i32 %391 to i64
  %396 = tail call i64 @read(i32 noundef %392, ptr noundef %394, i64 noundef %395) #13
  %397 = trunc i64 %396 to i32
  %398 = icmp slt i32 %397, 1
  br i1 %398, label %427, label %399

399:                                              ; preds = %389
  %400 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %386, i32 %397), !nosanitize !20
  %401 = extractvalue { i32, i1 } %400, 1, !nosanitize !20
  br i1 false, label %423, label %402, !prof !21, !nosanitize !20

402:                                              ; preds = %399
  %403 = extractvalue { i32, i1 } %400, 0, !nosanitize !20
  %404 = icmp ult i32 %403, %382
  br i1 %404, label %385, label %.loopexit8, !llvm.loop !47

.mv.ph18:                                         ; preds = %381
  br label %405

405:                                              ; preds = %424, %.mv.ph18
  %406 = phi i32 [ 0, %.mv.ph18 ], [ %425, %424 ]
  %407 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %382, i32 %406), !nosanitize !20
  %408 = extractvalue { i32, i1 } %407, 1, !nosanitize !20
  br i1 false, label %409, label %410, !prof !21, !nosanitize !20

409:                                              ; preds = %385, %405
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

410:                                              ; preds = %405
  %411 = extractvalue { i32, i1 } %407, 0, !nosanitize !20
  %412 = tail call i32 @llvm.umin.i32(i32 %411, i32 1073741824)
  %413 = load i32, ptr %47, align 4, !tbaa !46
  %414 = zext i32 %406 to i64
  %415 = getelementptr inbounds nuw i8, ptr %383, i64 %414
  %416 = zext nneg i32 %412 to i64
  %417 = tail call i64 @read(i32 noundef %413, ptr noundef %415, i64 noundef %416) #13
  %418 = trunc i64 %417 to i32
  %419 = icmp slt i32 %418, 1
  br i1 %419, label %427, label %420

420:                                              ; preds = %410
  %421 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %406, i32 %418), !nosanitize !20
  %422 = extractvalue { i32, i1 } %421, 1, !nosanitize !20
  br i1 %422, label %423, label %424, !prof !21, !nosanitize !20

423:                                              ; preds = %399, %420
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

424:                                              ; preds = %420
  %425 = extractvalue { i32, i1 } %421, 0, !nosanitize !20
  %426 = icmp ult i32 %425, %382
  br i1 %426, label %405, label %.loopexit8, !llvm.loop !47

427:                                              ; preds = %389, %410
  %.lcssa12 = phi i32 [ %418, %410 ], [ %397, %389 ]
  %.lcssa9 = phi i32 [ %406, %410 ], [ %386, %389 ]
  %428 = icmp slt i32 %.lcssa12, 0
  br i1 %428, label %429, label %436

429:                                              ; preds = %427
  %430 = load i32, ptr %384, align 4, !tbaa !45
  %431 = icmp eq i32 %430, 11
  br i1 %431, label %432, label %437

432:                                              ; preds = %429
  store i32 1, ptr %46, align 4, !tbaa !17
  %433 = icmp eq i32 %.lcssa9, 0
  br i1 %433, label %434, label %441

434:                                              ; preds = %432
  %435 = load i32, ptr %384, align 4, !tbaa !45
  br label %437

436:                                              ; preds = %427
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %441

437:                                              ; preds = %434, %429
  %438 = phi i32 [ %435, %434 ], [ %430, %429 ]
  %439 = tail call ptr @strerror(i32 noundef %438) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %439) #13
  %440 = load i32, ptr %11, align 8, !tbaa !16
  br label %475

.loopexit8:                                       ; preds = %402, %424
  %.lcssa15 = phi i32 [ %425, %424 ], [ %403, %402 ]
  br label %441

441:                                              ; preds = %.loopexit8, %436, %432
  %442 = phi i32 [ %.lcssa9, %436 ], [ %.lcssa9, %432 ], [ %.lcssa15, %.loopexit8 ]
  %443 = load i32, ptr %38, align 8, !tbaa !34
  %444 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %443, i32 %442), !nosanitize !20
  %445 = extractvalue { i32, i1 } %444, 1, !nosanitize !20
  br i1 %445, label %446, label %447, !prof !21, !nosanitize !20

446:                                              ; preds = %441
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

447:                                              ; preds = %441
  %448 = extractvalue { i32, i1 } %444, 0, !nosanitize !20
  store i32 %448, ptr %38, align 8, !tbaa !34
  %449 = load ptr, ptr %45, align 8, !tbaa !29
  store ptr %449, ptr %44, align 8, !tbaa !35
  %450 = icmp eq i32 %448, 0
  br i1 %450, label %451, label %455

451:                                              ; preds = %447, %378
  %452 = load i32, ptr %46, align 4, !tbaa !17
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %475

454:                                              ; preds = %451
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %475

455:                                              ; preds = %447, %372
  %456 = tail call i32 @inflate(ptr noundef nonnull %44, i32 noundef 0) #13
  %457 = load i32, ptr %41, align 8, !tbaa !48
  %458 = icmp ult i32 %457, %370
  br i1 %458, label %459, label %460

459:                                              ; preds = %455
  store i32 0, ptr %48, align 4, !tbaa !33
  br label %460

460:                                              ; preds = %459, %455
  switch i32 %456, label %471 [
    i32 -2, label %461
    i32 2, label %461
    i32 -4, label %462
    i32 -3, label %463
  ]

461:                                              ; preds = %460, %460
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %475

462:                                              ; preds = %460
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %475

463:                                              ; preds = %460
  %464 = load i32, ptr %48, align 4, !tbaa !33
  %465 = icmp eq i32 %464, 1
  br i1 %465, label %466, label %467

466:                                              ; preds = %463
  store i32 0, ptr %38, align 8, !tbaa !34
  store i32 1, ptr %37, align 8, !tbaa !24
  store i32 0, ptr %39, align 8, !tbaa !26
  br label %475

467:                                              ; preds = %463
  %468 = load ptr, ptr %49, align 8, !tbaa !50
  %469 = icmp eq ptr %468, null
  %470 = select i1 %469, ptr @.str.6, ptr %468
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %470) #13
  br label %475

471:                                              ; preds = %460
  %472 = icmp ne i32 %457, 0
  %473 = icmp ne i32 %456, 1
  %474 = select i1 %472, i1 %473, i1 false
  br i1 %474, label %372, label %475, !llvm.loop !51

475:                                              ; preds = %471, %467, %466, %462, %461, %454, %451, %437, %376
  %476 = phi i32 [ %373, %451 ], [ %373, %454 ], [ %456, %461 ], [ -4, %462 ], [ 0, %466 ], [ -3, %467 ], [ %440, %437 ], [ %456, %471 ], [ %377, %376 ]
  %477 = load i32, ptr %41, align 8, !tbaa !48
  %478 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %370, i32 %477), !nosanitize !20
  %479 = extractvalue { i32, i1 } %478, 1, !nosanitize !20
  br i1 %479, label %480, label %481, !prof !21, !nosanitize !20

480:                                              ; preds = %475
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

481:                                              ; preds = %475
  %482 = extractvalue { i32, i1 } %478, 0, !nosanitize !20
  store i32 %482, ptr %3, align 8, !tbaa !19
  %483 = load ptr, ptr %43, align 8, !tbaa !49
  %484 = zext i32 %482 to i64
  %485 = sub nsw i64 0, %484
  %486 = getelementptr inbounds i8, ptr %483, i64 %485
  store ptr %486, ptr %35, align 8, !tbaa !22
  switch i32 %476, label %1202 [
    i32 1, label %487
    i32 0, label %489
  ]

487:                                              ; preds = %481
  store i32 0, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %39, align 8, !tbaa !26
  br label %489

488:                                              ; preds = %86
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1202

489:                                              ; preds = %487, %481, %321, %315
  %490 = load i32, ptr %3, align 8, !tbaa !19
  br label %491

491:                                              ; preds = %489, %317
  %492 = phi i32 [ %490, %489 ], [ %320, %317 ]
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %494, label %501

494:                                              ; preds = %491
  %495 = load i32, ptr %37, align 8, !tbaa !24
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %500, label %497

497:                                              ; preds = %494
  %498 = load i32, ptr %38, align 8, !tbaa !34
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %501, label %500

500:                                              ; preds = %497, %494
  br label %86, !llvm.loop !52

501:                                              ; preds = %497, %491, %366, %321
  %502 = load i64, ptr %31, align 8, !tbaa !18
  br label %503

503:                                              ; preds = %501, %77
  %504 = phi i64 [ %502, %501 ], [ %78, %77 ]
  %505 = icmp eq i64 %504, 0
  br i1 %505, label %506, label %53, !llvm.loop !53

506:                                              ; preds = %503, %82, %30
  %507 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %508 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %509 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %510 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %511 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %512 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %513 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %514 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %515 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %516 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %517 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %518 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %519 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %520 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %521 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %522 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %523 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %524 = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %525

525:                                              ; preds = %1185, %506
  %526 = phi ptr [ %0, %506 ], [ %1186, %1185 ]
  %527 = phi i64 [ %19, %506 ], [ %1187, %1185 ]
  %528 = phi i64 [ 0, %506 ], [ %1188, %1185 ]
  %529 = tail call i64 @llvm.umin.i64(i64 %527, i64 4294967295)
  %530 = trunc nuw i64 %529 to i32
  %531 = load i32, ptr %3, align 8, !tbaa !19
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %548, label %533

533:                                              ; preds = %525
  %534 = tail call i32 @llvm.umin.i32(i32 %531, i32 %530)
  %535 = load ptr, ptr %507, align 8, !tbaa !22
  %536 = zext i32 %534 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %526, ptr align 1 %535, i64 %536, i1 false)
  %537 = load ptr, ptr %507, align 8, !tbaa !22
  %538 = getelementptr inbounds nuw i8, ptr %537, i64 %536
  store ptr %538, ptr %507, align 8, !tbaa !22
  %539 = load i32, ptr %3, align 8, !tbaa !19
  %540 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %539, i32 %534), !nosanitize !20
  %541 = extractvalue { i32, i1 } %540, 1, !nosanitize !20
  br i1 %541, label %542, label %543, !prof !21, !nosanitize !20

542:                                              ; preds = %533
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

543:                                              ; preds = %533
  %544 = extractvalue { i32, i1 } %540, 0, !nosanitize !20
  store i32 %544, ptr %3, align 8, !tbaa !19
  %545 = load i32, ptr %11, align 8, !tbaa !16
  %546 = icmp ne i32 %545, 0
  %547 = sext i1 %546 to i32
  br label %1166

548:                                              ; preds = %525
  %549 = load i32, ptr %508, align 8, !tbaa !24
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %554, label %551

551:                                              ; preds = %548
  %552 = load i32, ptr %509, align 8, !tbaa !25
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %1193, label %554

554:                                              ; preds = %551, %548
  %555 = load i32, ptr %510, align 8, !tbaa !26
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %561, label %557

557:                                              ; preds = %554
  %558 = load i32, ptr %511, align 8, !tbaa !27
  %559 = shl i32 %558, 1
  %560 = icmp ugt i32 %559, %530
  br i1 %560, label %561, label %1002

561:                                              ; preds = %557, %554
  br label %562

562:                                              ; preds = %996, %561
  %563 = phi i32 [ %997, %996 ], [ %555, %561 ]
  switch i32 %563, label %984 [
    i32 0, label %564
    i32 1, label %820
    i32 2, label %864
  ]

564:                                              ; preds = %562
  %565 = load i32, ptr %511, align 8, !tbaa !27
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %567, label %584

567:                                              ; preds = %564
  %568 = load i32, ptr %522, align 4, !tbaa !28
  %569 = zext i32 %568 to i64
  %570 = tail call noalias ptr @malloc(i64 noundef %569) #16
  store ptr %570, ptr %515, align 8, !tbaa !29
  %571 = shl i32 %568, 1
  %572 = zext i32 %571 to i64
  %573 = tail call noalias ptr @malloc(i64 noundef %572) #16
  store ptr %573, ptr %521, align 8, !tbaa !30
  %574 = icmp eq ptr %570, null
  %575 = icmp eq ptr %573, null
  %576 = or i1 %574, %575
  br i1 %576, label %577, label %578

577:                                              ; preds = %567
  tail call void @free(ptr noundef %573) #13
  tail call void @free(ptr noundef %570) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %998

578:                                              ; preds = %567
  store i32 %568, ptr %511, align 8, !tbaa !27
  store i32 0, ptr %509, align 8, !tbaa !25
  store ptr null, ptr %514, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %523, i8 0, i64 24, i1 false)
  %579 = tail call i32 @inflateInit2_(ptr noundef nonnull %514, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %584, label %581

581:                                              ; preds = %578
  %582 = load ptr, ptr %521, align 8, !tbaa !30
  tail call void @free(ptr noundef %582) #13
  %583 = load ptr, ptr %515, align 8, !tbaa !29
  tail call void @free(ptr noundef %583) #13
  store i32 0, ptr %511, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %998

584:                                              ; preds = %578, %564
  %585 = load i32, ptr %524, align 8, !tbaa !32
  %586 = icmp eq i32 %585, -1
  br i1 %586, label %590, label %587

587:                                              ; preds = %584
  %588 = load i32, ptr %518, align 4, !tbaa !33
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %590, label %595

590:                                              ; preds = %587, %584
  %591 = tail call i32 @inflateReset(ptr noundef nonnull %514) #13
  store i32 2, ptr %510, align 8, !tbaa !26
  %592 = load i32, ptr %518, align 4, !tbaa !33
  %593 = icmp ne i32 %592, -1
  %594 = zext i1 %593 to i32
  store i32 %594, ptr %518, align 4, !tbaa !33
  store i32 0, ptr %524, align 8, !tbaa !32
  br label %817

595:                                              ; preds = %587
  %596 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %596, label %998 [
    i32 0, label %597
    i32 -5, label %597
  ]

597:                                              ; preds = %595, %595
  %598 = load i32, ptr %508, align 8, !tbaa !24
  %599 = icmp eq i32 %598, 0
  %600 = load i32, ptr %509, align 8, !tbaa !34
  br i1 %599, label %601, label %785

601:                                              ; preds = %597
  %602 = icmp eq i32 %600, 0
  br i1 %602, label %709, label %603

603:                                              ; preds = %601
  %604 = load ptr, ptr %515, align 8, !tbaa !29
  %605 = load ptr, ptr %514, align 8, !tbaa !35
  %606 = icmp eq ptr %605, %604
  br i1 %606, label %709, label %607

607:                                              ; preds = %603
  %608 = ptrtoint ptr %605 to i64
  %609 = ptrtoint ptr %604 to i64
  %610 = zext i32 %600 to i64
  %611 = icmp ult i32 %600, 4
  %612 = sub i64 %609, %608
  %613 = icmp ult i64 %612, 32
  %614 = or i1 %611, %613
  br i1 %614, label %654, label %615

615:                                              ; preds = %607
  %616 = icmp ult i32 %600, 32
  br i1 %616, label %638, label %617

617:                                              ; preds = %615
  %618 = and i64 %610, 4294967264
  br label %619

619:                                              ; preds = %619, %617
  %620 = phi i64 [ 0, %617 ], [ %627, %619 ]
  %621 = getelementptr i8, ptr %604, i64 %620
  %622 = getelementptr i8, ptr %605, i64 %620
  %623 = getelementptr i8, ptr %622, i64 16
  %624 = load <16 x i8>, ptr %622, align 1, !tbaa !36
  %625 = load <16 x i8>, ptr %623, align 1, !tbaa !36
  %626 = getelementptr i8, ptr %621, i64 16
  store <16 x i8> %624, ptr %621, align 1, !tbaa !36
  store <16 x i8> %625, ptr %626, align 1, !tbaa !36
  %627 = add nuw i64 %620, 32
  %628 = icmp eq i64 %627, %618
  br i1 %628, label %629, label %619, !llvm.loop !66

629:                                              ; preds = %619
  %630 = icmp eq i64 %618, %610
  br i1 %630, label %707, label %631

631:                                              ; preds = %629
  %632 = getelementptr i8, ptr %604, i64 %618
  %633 = getelementptr i8, ptr %605, i64 %618
  %634 = trunc nuw i64 %618 to i32
  %635 = sub i32 %600, %634
  %636 = and i64 %610, 28
  %637 = icmp eq i64 %636, 0
  br i1 %637, label %654, label %638

638:                                              ; preds = %631, %615
  %639 = phi i64 [ %618, %631 ], [ 0, %615 ]
  %640 = and i64 %610, 4294967292
  %641 = getelementptr i8, ptr %604, i64 %640
  %642 = getelementptr i8, ptr %605, i64 %640
  %643 = trunc nuw i64 %640 to i32
  %644 = sub i32 %600, %643
  br label %645

645:                                              ; preds = %645, %638
  %646 = phi i64 [ %639, %638 ], [ %650, %645 ]
  %647 = getelementptr i8, ptr %604, i64 %646
  %648 = getelementptr i8, ptr %605, i64 %646
  %649 = load <4 x i8>, ptr %648, align 1, !tbaa !36
  store <4 x i8> %649, ptr %647, align 1, !tbaa !36
  %650 = add nuw i64 %646, 4
  %651 = icmp eq i64 %650, %640
  br i1 %651, label %652, label %645, !llvm.loop !67

652:                                              ; preds = %645
  %653 = icmp eq i64 %640, %610
  br i1 %653, label %707, label %654

654:                                              ; preds = %652, %631, %607
  %655 = phi ptr [ %604, %607 ], [ %632, %631 ], [ %641, %652 ]
  %656 = phi ptr [ %605, %607 ], [ %633, %631 ], [ %642, %652 ]
  %657 = phi i32 [ %600, %607 ], [ %635, %631 ], [ %644, %652 ]
  %658 = add i32 %657, -1
  %659 = and i32 %657, 7
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %672, label %661

661:                                              ; preds = %661, %654
  %662 = phi ptr [ %668, %661 ], [ %655, %654 ]
  %663 = phi ptr [ %669, %661 ], [ %656, %654 ]
  %664 = phi i32 [ %667, %661 ], [ %657, %654 ]
  %665 = phi i32 [ %670, %661 ], [ 0, %654 ]
  %666 = load i8, ptr %663, align 1, !tbaa !36
  store i8 %666, ptr %662, align 1, !tbaa !36
  %667 = add i32 %664, -1
  %668 = getelementptr inbounds nuw i8, ptr %662, i64 1
  %669 = getelementptr inbounds nuw i8, ptr %663, i64 1
  %670 = add i32 %665, 1
  %671 = icmp eq i32 %670, %659
  br i1 %671, label %672, label %661, !llvm.loop !68

672:                                              ; preds = %661, %654
  %673 = phi ptr [ %655, %654 ], [ %668, %661 ]
  %674 = phi ptr [ %656, %654 ], [ %669, %661 ]
  %675 = phi i32 [ %657, %654 ], [ %667, %661 ]
  %676 = icmp ult i32 %658, 7
  br i1 %676, label %707, label %677

677:                                              ; preds = %677, %672
  %678 = phi ptr [ %704, %677 ], [ %673, %672 ]
  %679 = phi ptr [ %705, %677 ], [ %674, %672 ]
  %680 = phi i32 [ %703, %677 ], [ %675, %672 ]
  %681 = load i8, ptr %679, align 1, !tbaa !36
  store i8 %681, ptr %678, align 1, !tbaa !36
  %682 = getelementptr inbounds nuw i8, ptr %678, i64 1
  %683 = getelementptr inbounds nuw i8, ptr %679, i64 1
  %684 = load i8, ptr %683, align 1, !tbaa !36
  store i8 %684, ptr %682, align 1, !tbaa !36
  %685 = getelementptr inbounds nuw i8, ptr %678, i64 2
  %686 = getelementptr inbounds nuw i8, ptr %679, i64 2
  %687 = load i8, ptr %686, align 1, !tbaa !36
  store i8 %687, ptr %685, align 1, !tbaa !36
  %688 = getelementptr inbounds nuw i8, ptr %678, i64 3
  %689 = getelementptr inbounds nuw i8, ptr %679, i64 3
  %690 = load i8, ptr %689, align 1, !tbaa !36
  store i8 %690, ptr %688, align 1, !tbaa !36
  %691 = getelementptr inbounds nuw i8, ptr %678, i64 4
  %692 = getelementptr inbounds nuw i8, ptr %679, i64 4
  %693 = load i8, ptr %692, align 1, !tbaa !36
  store i8 %693, ptr %691, align 1, !tbaa !36
  %694 = getelementptr inbounds nuw i8, ptr %678, i64 5
  %695 = getelementptr inbounds nuw i8, ptr %679, i64 5
  %696 = load i8, ptr %695, align 1, !tbaa !36
  store i8 %696, ptr %694, align 1, !tbaa !36
  %697 = getelementptr inbounds nuw i8, ptr %678, i64 6
  %698 = getelementptr inbounds nuw i8, ptr %679, i64 6
  %699 = load i8, ptr %698, align 1, !tbaa !36
  store i8 %699, ptr %697, align 1, !tbaa !36
  %700 = getelementptr inbounds nuw i8, ptr %678, i64 7
  %701 = getelementptr inbounds nuw i8, ptr %679, i64 7
  %702 = load i8, ptr %701, align 1, !tbaa !36
  store i8 %702, ptr %700, align 1, !tbaa !36
  %703 = add i32 %680, -8
  %704 = getelementptr inbounds nuw i8, ptr %678, i64 8
  %705 = getelementptr inbounds nuw i8, ptr %679, i64 8
  %706 = icmp eq i32 %703, 0
  br i1 %706, label %707, label %677, !llvm.loop !69

707:                                              ; preds = %677, %672, %652, %629
  %708 = load i32, ptr %509, align 8, !tbaa !34
  br label %709

709:                                              ; preds = %707, %603, %601
  %710 = phi i32 [ %708, %707 ], [ %600, %603 ], [ 0, %601 ]
  %711 = load i32, ptr %511, align 8, !tbaa !27
  %712 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %711, i32 %710), !nosanitize !20
  %713 = extractvalue { i32, i1 } %712, 1, !nosanitize !20
  br i1 %713, label %714, label %715, !prof !21, !nosanitize !20

714:                                              ; preds = %709
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

715:                                              ; preds = %709
  %716 = extractvalue { i32, i1 } %712, 0, !nosanitize !20
  %717 = load ptr, ptr %515, align 8, !tbaa !29
  %718 = zext i32 %710 to i64
  %719 = getelementptr inbounds nuw i8, ptr %717, i64 %718
  store i32 0, ptr %516, align 4, !tbaa !17
  %720 = tail call ptr @__errno_location() #17
  store i32 0, ptr %720, align 4, !tbaa !45
  %mv.h27 = icmp sge i32 %711, 0
  %mv.h.fr28 = freeze i1 %mv.h27
  br i1 %mv.h.fr28, label %.mv.ph29.mv.fast, label %.mv.ph29

.mv.ph29.mv.fast:                                 ; preds = %715
  br label %721

721:                                              ; preds = %738, %.mv.ph29.mv.fast
  %722 = phi i32 [ 0, %.mv.ph29.mv.fast ], [ %739, %738 ]
  %723 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %716, i32 %722), !nosanitize !20
  %724 = extractvalue { i32, i1 } %723, 1, !nosanitize !20
  br i1 false, label %745, label %725, !prof !21, !nosanitize !20

725:                                              ; preds = %721
  %726 = extractvalue { i32, i1 } %723, 0, !nosanitize !20
  %727 = tail call i32 @llvm.umin.i32(i32 %726, i32 1073741824)
  %728 = load i32, ptr %517, align 4, !tbaa !46
  %729 = zext i32 %722 to i64
  %730 = getelementptr inbounds nuw i8, ptr %719, i64 %729
  %731 = zext nneg i32 %727 to i64
  %732 = tail call i64 @read(i32 noundef %728, ptr noundef %730, i64 noundef %731) #13
  %733 = trunc i64 %732 to i32
  %734 = icmp slt i32 %733, 1
  br i1 %734, label %763, label %735

735:                                              ; preds = %725
  %736 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %722, i32 %733), !nosanitize !20
  %737 = extractvalue { i32, i1 } %736, 1, !nosanitize !20
  br i1 false, label %759, label %738, !prof !21, !nosanitize !20

738:                                              ; preds = %735
  %739 = extractvalue { i32, i1 } %736, 0, !nosanitize !20
  %740 = icmp ult i32 %739, %716
  br i1 %740, label %721, label %.loopexit19, !llvm.loop !47

.mv.ph29:                                         ; preds = %715
  br label %741

741:                                              ; preds = %760, %.mv.ph29
  %742 = phi i32 [ 0, %.mv.ph29 ], [ %761, %760 ]
  %743 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %716, i32 %742), !nosanitize !20
  %744 = extractvalue { i32, i1 } %743, 1, !nosanitize !20
  br i1 false, label %745, label %746, !prof !21, !nosanitize !20

745:                                              ; preds = %721, %741
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

746:                                              ; preds = %741
  %747 = extractvalue { i32, i1 } %743, 0, !nosanitize !20
  %748 = tail call i32 @llvm.umin.i32(i32 %747, i32 1073741824)
  %749 = load i32, ptr %517, align 4, !tbaa !46
  %750 = zext i32 %742 to i64
  %751 = getelementptr inbounds nuw i8, ptr %719, i64 %750
  %752 = zext nneg i32 %748 to i64
  %753 = tail call i64 @read(i32 noundef %749, ptr noundef %751, i64 noundef %752) #13
  %754 = trunc i64 %753 to i32
  %755 = icmp slt i32 %754, 1
  br i1 %755, label %763, label %756

756:                                              ; preds = %746
  %757 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %742, i32 %754), !nosanitize !20
  %758 = extractvalue { i32, i1 } %757, 1, !nosanitize !20
  br i1 %758, label %759, label %760, !prof !21, !nosanitize !20

759:                                              ; preds = %735, %756
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

760:                                              ; preds = %756
  %761 = extractvalue { i32, i1 } %757, 0, !nosanitize !20
  %762 = icmp ult i32 %761, %716
  br i1 %762, label %741, label %.loopexit19, !llvm.loop !47

763:                                              ; preds = %725, %746
  %.lcssa23 = phi i32 [ %754, %746 ], [ %733, %725 ]
  %.lcssa20 = phi i32 [ %742, %746 ], [ %722, %725 ]
  %764 = icmp slt i32 %.lcssa23, 0
  br i1 %764, label %765, label %772

765:                                              ; preds = %763
  %766 = load i32, ptr %720, align 4, !tbaa !45
  %767 = icmp eq i32 %766, 11
  br i1 %767, label %768, label %773

768:                                              ; preds = %765
  store i32 1, ptr %516, align 4, !tbaa !17
  %769 = icmp eq i32 %.lcssa20, 0
  br i1 %769, label %770, label %776

770:                                              ; preds = %768
  %771 = load i32, ptr %720, align 4, !tbaa !45
  br label %773

772:                                              ; preds = %763
  store i32 1, ptr %508, align 8, !tbaa !24
  br label %776

773:                                              ; preds = %770, %765
  %774 = phi i32 [ %771, %770 ], [ %766, %765 ]
  %775 = tail call ptr @strerror(i32 noundef %774) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %775) #13
  br label %998

.loopexit19:                                      ; preds = %738, %760
  %.lcssa26 = phi i32 [ %761, %760 ], [ %739, %738 ]
  br label %776

776:                                              ; preds = %.loopexit19, %772, %768
  %777 = phi i32 [ %.lcssa20, %772 ], [ %.lcssa20, %768 ], [ %.lcssa26, %.loopexit19 ]
  %778 = load i32, ptr %509, align 8, !tbaa !34
  %779 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %778, i32 %777), !nosanitize !20
  %780 = extractvalue { i32, i1 } %779, 1, !nosanitize !20
  br i1 %780, label %781, label %782, !prof !21, !nosanitize !20

781:                                              ; preds = %776
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

782:                                              ; preds = %776
  %783 = extractvalue { i32, i1 } %779, 0, !nosanitize !20
  store i32 %783, ptr %509, align 8, !tbaa !34
  %784 = load ptr, ptr %515, align 8, !tbaa !29
  store ptr %784, ptr %514, align 8, !tbaa !35
  br label %785

785:                                              ; preds = %782, %597
  %786 = phi i32 [ %783, %782 ], [ %600, %597 ]
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %817, label %788

788:                                              ; preds = %785
  %789 = load i32, ptr %516, align 4, !tbaa !17
  %790 = icmp ne i32 %789, 0
  %791 = icmp ult i32 %786, 4
  %792 = and i1 %791, %790
  br i1 %792, label %817, label %793

793:                                              ; preds = %788
  %794 = icmp ugt i32 %786, 3
  %795 = load ptr, ptr %514, align 8, !tbaa !35
  br i1 %794, label %796, label %813

796:                                              ; preds = %793
  %797 = load i8, ptr %795, align 1, !tbaa !36
  %798 = icmp eq i8 %797, 31
  br i1 %798, label %799, label %813

799:                                              ; preds = %796
  %800 = getelementptr inbounds nuw i8, ptr %795, i64 1
  %801 = load i8, ptr %800, align 1, !tbaa !36
  %802 = icmp eq i8 %801, -117
  br i1 %802, label %803, label %813

803:                                              ; preds = %799
  %804 = getelementptr inbounds nuw i8, ptr %795, i64 2
  %805 = load i8, ptr %804, align 1, !tbaa !36
  %806 = icmp eq i8 %805, 8
  br i1 %806, label %807, label %813

807:                                              ; preds = %803
  %808 = getelementptr inbounds nuw i8, ptr %795, i64 3
  %809 = load i8, ptr %808, align 1, !tbaa !36
  %810 = icmp ult i8 %809, 32
  br i1 %810, label %811, label %813

811:                                              ; preds = %807
  %812 = tail call i32 @inflateReset(ptr noundef nonnull %514) #13
  store i32 2, ptr %510, align 8, !tbaa !26
  store i32 1, ptr %518, align 4, !tbaa !33
  store i32 0, ptr %524, align 8, !tbaa !32
  br label %985

813:                                              ; preds = %807, %803, %799, %796, %793
  %814 = load ptr, ptr %521, align 8, !tbaa !30
  store ptr %814, ptr %507, align 8, !tbaa !22
  %815 = zext i32 %786 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %814, ptr align 1 %795, i64 %815, i1 false)
  %816 = load i32, ptr %509, align 8, !tbaa !34
  store i32 %816, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %509, align 8, !tbaa !34
  store i32 1, ptr %510, align 8, !tbaa !26
  br label %987

817:                                              ; preds = %788, %785, %590
  %818 = load i32, ptr %510, align 8, !tbaa !26
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %1185, label %985

820:                                              ; preds = %562
  %821 = load ptr, ptr %521, align 8, !tbaa !30
  %822 = load i32, ptr %511, align 8, !tbaa !27
  %823 = shl i32 %822, 1
  store i32 0, ptr %516, align 4, !tbaa !17
  %824 = tail call ptr @__errno_location() #17
  store i32 0, ptr %824, align 4, !tbaa !45
  store i32 0, ptr %3, align 4, !tbaa !45
  br label %825

825:                                              ; preds = %845, %820
  %826 = phi i32 [ %846, %845 ], [ 0, %820 ]
  %827 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %823, i32 %826), !nosanitize !20
  %828 = extractvalue { i32, i1 } %827, 1, !nosanitize !20
  br i1 false, label %829, label %830, !prof !21, !nosanitize !20

829:                                              ; preds = %825
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

830:                                              ; preds = %825
  %831 = extractvalue { i32, i1 } %827, 0, !nosanitize !20
  %832 = tail call i32 @llvm.umin.i32(i32 %831, i32 1073741824)
  %833 = load i32, ptr %517, align 4, !tbaa !46
  %834 = zext i32 %826 to i64
  %835 = getelementptr inbounds nuw i8, ptr %821, i64 %834
  %836 = zext nneg i32 %832 to i64
  %837 = tail call i64 @read(i32 noundef %833, ptr noundef %835, i64 noundef %836) #13
  %838 = trunc i64 %837 to i32
  %839 = icmp slt i32 %838, 1
  br i1 %839, label %848, label %840

840:                                              ; preds = %830
  %841 = load i32, ptr %3, align 4, !tbaa !45
  %842 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %841, i32 %838), !nosanitize !20
  %843 = extractvalue { i32, i1 } %842, 1, !nosanitize !20
  br i1 %843, label %844, label %845, !prof !21, !nosanitize !20

844:                                              ; preds = %840
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

845:                                              ; preds = %840
  %846 = extractvalue { i32, i1 } %842, 0, !nosanitize !20
  store i32 %846, ptr %3, align 4, !tbaa !45
  %847 = icmp ult i32 %846, %823
  br i1 %847, label %825, label %862, !llvm.loop !47

848:                                              ; preds = %830
  %849 = icmp slt i32 %838, 0
  br i1 %849, label %850, label %858

850:                                              ; preds = %848
  %851 = load i32, ptr %824, align 4, !tbaa !45
  %852 = icmp eq i32 %851, 11
  br i1 %852, label %853, label %859

853:                                              ; preds = %850
  store i32 1, ptr %516, align 4, !tbaa !17
  %854 = load i32, ptr %3, align 4, !tbaa !45
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %856, label %862

856:                                              ; preds = %853
  %857 = load i32, ptr %824, align 4, !tbaa !45
  br label %859

858:                                              ; preds = %848
  store i32 1, ptr %508, align 8, !tbaa !24
  br label %862

859:                                              ; preds = %856, %850
  %860 = phi i32 [ %857, %856 ], [ %851, %850 ]
  %861 = tail call ptr @strerror(i32 noundef %860) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %861) #13
  br label %998

862:                                              ; preds = %858, %853, %845
  %863 = load ptr, ptr %521, align 8, !tbaa !30
  store ptr %863, ptr %507, align 8, !tbaa !22
  br label %1185

864:                                              ; preds = %562
  %865 = load i32, ptr %511, align 8, !tbaa !27
  %866 = shl i32 %865, 1
  store i32 %866, ptr %512, align 8, !tbaa !48
  %867 = load ptr, ptr %521, align 8, !tbaa !30
  store ptr %867, ptr %513, align 8, !tbaa !49
  br label %868

868:                                              ; preds = %967, %864
  %869 = phi i32 [ 0, %864 ], [ %952, %967 ]
  %870 = load i32, ptr %509, align 8, !tbaa !34
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %872, label %951

872:                                              ; preds = %868
  %873 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %873, label %971 [
    i32 0, label %874
    i32 -5, label %874
  ]

874:                                              ; preds = %872, %872
  %875 = load i32, ptr %508, align 8, !tbaa !24
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %877, label %947

877:                                              ; preds = %874
  %878 = load i32, ptr %511, align 8, !tbaa !27
  %879 = load ptr, ptr %515, align 8, !tbaa !29
  store i32 0, ptr %516, align 4, !tbaa !17
  %880 = tail call ptr @__errno_location() #17
  store i32 0, ptr %880, align 4, !tbaa !45
  %mv.h = icmp sge i32 %878, 0
  %mv.h.fr = freeze i1 %mv.h
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %877
  br label %881

881:                                              ; preds = %898, %.mv.ph.mv.fast
  %882 = phi i32 [ 0, %.mv.ph.mv.fast ], [ %899, %898 ]
  %883 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %878, i32 %882), !nosanitize !20
  %884 = extractvalue { i32, i1 } %883, 1, !nosanitize !20
  br i1 false, label %905, label %885, !prof !21, !nosanitize !20

885:                                              ; preds = %881
  %886 = extractvalue { i32, i1 } %883, 0, !nosanitize !20
  %887 = tail call i32 @llvm.umin.i32(i32 %886, i32 1073741824)
  %888 = load i32, ptr %517, align 4, !tbaa !46
  %889 = zext i32 %882 to i64
  %890 = getelementptr inbounds nuw i8, ptr %879, i64 %889
  %891 = zext nneg i32 %887 to i64
  %892 = tail call i64 @read(i32 noundef %888, ptr noundef %890, i64 noundef %891) #13
  %893 = trunc i64 %892 to i32
  %894 = icmp slt i32 %893, 1
  br i1 %894, label %923, label %895

895:                                              ; preds = %885
  %896 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %882, i32 %893), !nosanitize !20
  %897 = extractvalue { i32, i1 } %896, 1, !nosanitize !20
  br i1 false, label %919, label %898, !prof !21, !nosanitize !20

898:                                              ; preds = %895
  %899 = extractvalue { i32, i1 } %896, 0, !nosanitize !20
  %900 = icmp ult i32 %899, %878
  br i1 %900, label %881, label %.loopexit, !llvm.loop !47

.mv.ph:                                           ; preds = %877
  br label %901

901:                                              ; preds = %920, %.mv.ph
  %902 = phi i32 [ 0, %.mv.ph ], [ %921, %920 ]
  %903 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %878, i32 %902), !nosanitize !20
  %904 = extractvalue { i32, i1 } %903, 1, !nosanitize !20
  br i1 false, label %905, label %906, !prof !21, !nosanitize !20

905:                                              ; preds = %881, %901
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

906:                                              ; preds = %901
  %907 = extractvalue { i32, i1 } %903, 0, !nosanitize !20
  %908 = tail call i32 @llvm.umin.i32(i32 %907, i32 1073741824)
  %909 = load i32, ptr %517, align 4, !tbaa !46
  %910 = zext i32 %902 to i64
  %911 = getelementptr inbounds nuw i8, ptr %879, i64 %910
  %912 = zext nneg i32 %908 to i64
  %913 = tail call i64 @read(i32 noundef %909, ptr noundef %911, i64 noundef %912) #13
  %914 = trunc i64 %913 to i32
  %915 = icmp slt i32 %914, 1
  br i1 %915, label %923, label %916

916:                                              ; preds = %906
  %917 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %902, i32 %914), !nosanitize !20
  %918 = extractvalue { i32, i1 } %917, 1, !nosanitize !20
  br i1 %918, label %919, label %920, !prof !21, !nosanitize !20

919:                                              ; preds = %895, %916
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

920:                                              ; preds = %916
  %921 = extractvalue { i32, i1 } %917, 0, !nosanitize !20
  %922 = icmp ult i32 %921, %878
  br i1 %922, label %901, label %.loopexit, !llvm.loop !47

923:                                              ; preds = %885, %906
  %.lcssa4 = phi i32 [ %914, %906 ], [ %893, %885 ]
  %.lcssa1 = phi i32 [ %902, %906 ], [ %882, %885 ]
  %924 = icmp slt i32 %.lcssa4, 0
  br i1 %924, label %925, label %932

925:                                              ; preds = %923
  %926 = load i32, ptr %880, align 4, !tbaa !45
  %927 = icmp eq i32 %926, 11
  br i1 %927, label %928, label %933

928:                                              ; preds = %925
  store i32 1, ptr %516, align 4, !tbaa !17
  %929 = icmp eq i32 %.lcssa1, 0
  br i1 %929, label %930, label %937

930:                                              ; preds = %928
  %931 = load i32, ptr %880, align 4, !tbaa !45
  br label %933

932:                                              ; preds = %923
  store i32 1, ptr %508, align 8, !tbaa !24
  br label %937

933:                                              ; preds = %930, %925
  %934 = phi i32 [ %931, %930 ], [ %926, %925 ]
  %935 = tail call ptr @strerror(i32 noundef %934) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %935) #13
  %936 = load i32, ptr %11, align 8, !tbaa !16
  br label %971

.loopexit:                                        ; preds = %898, %920
  %.lcssa7 = phi i32 [ %921, %920 ], [ %899, %898 ]
  br label %937

937:                                              ; preds = %.loopexit, %932, %928
  %938 = phi i32 [ %.lcssa1, %932 ], [ %.lcssa1, %928 ], [ %.lcssa7, %.loopexit ]
  %939 = load i32, ptr %509, align 8, !tbaa !34
  %940 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %939, i32 %938), !nosanitize !20
  %941 = extractvalue { i32, i1 } %940, 1, !nosanitize !20
  br i1 %941, label %942, label %943, !prof !21, !nosanitize !20

942:                                              ; preds = %937
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

943:                                              ; preds = %937
  %944 = extractvalue { i32, i1 } %940, 0, !nosanitize !20
  store i32 %944, ptr %509, align 8, !tbaa !34
  %945 = load ptr, ptr %515, align 8, !tbaa !29
  store ptr %945, ptr %514, align 8, !tbaa !35
  %946 = icmp eq i32 %944, 0
  br i1 %946, label %947, label %951

947:                                              ; preds = %943, %874
  %948 = load i32, ptr %516, align 4, !tbaa !17
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %950, label %971

950:                                              ; preds = %947
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %971

951:                                              ; preds = %943, %868
  %952 = tail call i32 @inflate(ptr noundef nonnull %514, i32 noundef 0) #13
  %953 = load i32, ptr %512, align 8, !tbaa !48
  %954 = icmp ult i32 %953, %866
  br i1 %954, label %955, label %956

955:                                              ; preds = %951
  store i32 0, ptr %518, align 4, !tbaa !33
  br label %956

956:                                              ; preds = %955, %951
  switch i32 %952, label %967 [
    i32 -2, label %957
    i32 2, label %957
    i32 -4, label %958
    i32 -3, label %959
  ]

957:                                              ; preds = %956, %956
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %971

958:                                              ; preds = %956
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %971

959:                                              ; preds = %956
  %960 = load i32, ptr %518, align 4, !tbaa !33
  %961 = icmp eq i32 %960, 1
  br i1 %961, label %962, label %963

962:                                              ; preds = %959
  store i32 0, ptr %509, align 8, !tbaa !34
  store i32 1, ptr %508, align 8, !tbaa !24
  store i32 0, ptr %510, align 8, !tbaa !26
  br label %971

963:                                              ; preds = %959
  %964 = load ptr, ptr %519, align 8, !tbaa !50
  %965 = icmp eq ptr %964, null
  %966 = select i1 %965, ptr @.str.6, ptr %964
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %966) #13
  br label %971

967:                                              ; preds = %956
  %968 = icmp ne i32 %953, 0
  %969 = icmp ne i32 %952, 1
  %970 = select i1 %968, i1 %969, i1 false
  br i1 %970, label %868, label %971, !llvm.loop !51

971:                                              ; preds = %967, %963, %962, %958, %957, %950, %947, %933, %872
  %972 = phi i32 [ %869, %947 ], [ %869, %950 ], [ %952, %957 ], [ -4, %958 ], [ 0, %962 ], [ -3, %963 ], [ %936, %933 ], [ %873, %872 ], [ %952, %967 ]
  %973 = load i32, ptr %512, align 8, !tbaa !48
  %974 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %866, i32 %973), !nosanitize !20
  %975 = extractvalue { i32, i1 } %974, 1, !nosanitize !20
  br i1 %975, label %976, label %977, !prof !21, !nosanitize !20

976:                                              ; preds = %971
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

977:                                              ; preds = %971
  %978 = extractvalue { i32, i1 } %974, 0, !nosanitize !20
  store i32 %978, ptr %3, align 8, !tbaa !19
  %979 = load ptr, ptr %513, align 8, !tbaa !49
  %980 = zext i32 %978 to i64
  %981 = sub nsw i64 0, %980
  %982 = getelementptr inbounds i8, ptr %979, i64 %981
  store ptr %982, ptr %507, align 8, !tbaa !22
  switch i32 %972, label %998 [
    i32 1, label %983
    i32 0, label %985
  ]

983:                                              ; preds = %977
  store i32 0, ptr %518, align 4, !tbaa !33
  store i32 0, ptr %510, align 8, !tbaa !26
  br label %985

984:                                              ; preds = %562
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %998

985:                                              ; preds = %983, %977, %817, %811
  %986 = load i32, ptr %3, align 8, !tbaa !19
  br label %987

987:                                              ; preds = %985, %813
  %988 = phi i32 [ %986, %985 ], [ %816, %813 ]
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %990, label %1185

990:                                              ; preds = %987
  %991 = load i32, ptr %508, align 8, !tbaa !24
  %992 = icmp eq i32 %991, 0
  br i1 %992, label %996, label %993

993:                                              ; preds = %990
  %994 = load i32, ptr %509, align 8, !tbaa !34
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %1185, label %996

996:                                              ; preds = %993, %990
  %997 = load i32, ptr %510, align 8, !tbaa !26
  br label %562, !llvm.loop !52

998:                                              ; preds = %984, %977, %859, %773, %595, %581, %577
  %999 = load i32, ptr %3, align 8, !tbaa !19
  %1000 = icmp eq i32 %999, 0
  %1001 = sext i1 %1000 to i32
  br label %1185

1002:                                             ; preds = %557
  %1003 = icmp eq i32 %555, 1
  br i1 %1003, label %1004, label %1041

1004:                                             ; preds = %1002
  store i32 0, ptr %516, align 4, !tbaa !17
  %1005 = tail call ptr @__errno_location() #17
  store i32 0, ptr %1005, align 4, !tbaa !45
  br label %1006

1006:                                             ; preds = %1025, %1004
  %1007 = phi i32 [ 0, %1004 ], [ %1026, %1025 ]
  %1008 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %530, i32 %1007), !nosanitize !20
  %1009 = extractvalue { i32, i1 } %1008, 1, !nosanitize !20
  br i1 false, label %1010, label %1011, !prof !21, !nosanitize !20

1010:                                             ; preds = %1006
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1011:                                             ; preds = %1006
  %1012 = extractvalue { i32, i1 } %1008, 0, !nosanitize !20
  %1013 = tail call i32 @llvm.umin.i32(i32 %1012, i32 1073741824)
  %1014 = load i32, ptr %517, align 4, !tbaa !46
  %1015 = zext i32 %1007 to i64
  %1016 = getelementptr inbounds nuw i8, ptr %526, i64 %1015
  %1017 = zext nneg i32 %1013 to i64
  %1018 = tail call i64 @read(i32 noundef %1014, ptr noundef %1016, i64 noundef %1017) #13
  %1019 = trunc i64 %1018 to i32
  %1020 = icmp slt i32 %1019, 1
  br i1 %1020, label %1028, label %1021

1021:                                             ; preds = %1011
  %1022 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1007, i32 %1019), !nosanitize !20
  %1023 = extractvalue { i32, i1 } %1022, 1, !nosanitize !20
  br i1 %1023, label %1024, label %1025, !prof !21, !nosanitize !20

1024:                                             ; preds = %1021
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1025:                                             ; preds = %1021
  %1026 = extractvalue { i32, i1 } %1022, 0, !nosanitize !20
  %1027 = icmp ult i32 %1026, %530
  br i1 %1027, label %1006, label %1164, !llvm.loop !47

1028:                                             ; preds = %1011
  %1029 = icmp slt i32 %1019, 0
  br i1 %1029, label %1030, label %1040

1030:                                             ; preds = %1028
  %1031 = load i32, ptr %1005, align 4, !tbaa !45
  %1032 = icmp eq i32 %1031, 11
  br i1 %1032, label %1033, label %1037

1033:                                             ; preds = %1030
  store i32 1, ptr %516, align 4, !tbaa !17
  %1034 = icmp eq i32 %1007, 0
  br i1 %1034, label %1035, label %1166

1035:                                             ; preds = %1033
  %1036 = load i32, ptr %1005, align 4, !tbaa !45
  br label %1037

1037:                                             ; preds = %1035, %1030
  %1038 = phi i32 [ %1036, %1035 ], [ %1031, %1030 ]
  %1039 = tail call ptr @strerror(i32 noundef %1038) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %1039) #13
  br label %1166

1040:                                             ; preds = %1028
  store i32 1, ptr %508, align 8, !tbaa !24
  br label %1166

1041:                                             ; preds = %1002
  store i32 %530, ptr %512, align 8, !tbaa !58
  store ptr %526, ptr %513, align 8, !tbaa !59
  br label %1042

1042:                                             ; preds = %1141, %1041
  %1043 = phi i32 [ 0, %1041 ], [ %1126, %1141 ]
  %1044 = load i32, ptr %509, align 8, !tbaa !34
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1046, label %1125

1046:                                             ; preds = %1042
  %1047 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %1047, label %1145 [
    i32 0, label %1048
    i32 -5, label %1048
  ]

1048:                                             ; preds = %1046, %1046
  %1049 = load i32, ptr %508, align 8, !tbaa !24
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1051, label %1121

1051:                                             ; preds = %1048
  %1052 = load i32, ptr %511, align 8, !tbaa !27
  %1053 = load ptr, ptr %515, align 8, !tbaa !29
  store i32 0, ptr %516, align 4, !tbaa !17
  %1054 = tail call ptr @__errno_location() #17
  store i32 0, ptr %1054, align 4, !tbaa !45
  %mv.h38 = icmp sge i32 %1052, 0
  %mv.h.fr39 = freeze i1 %mv.h38
  br i1 %mv.h.fr39, label %.mv.ph40.mv.fast, label %.mv.ph40

.mv.ph40.mv.fast:                                 ; preds = %1051
  br label %1055

1055:                                             ; preds = %1072, %.mv.ph40.mv.fast
  %1056 = phi i32 [ 0, %.mv.ph40.mv.fast ], [ %1073, %1072 ]
  %1057 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1052, i32 %1056), !nosanitize !20
  %1058 = extractvalue { i32, i1 } %1057, 1, !nosanitize !20
  br i1 false, label %1079, label %1059, !prof !21, !nosanitize !20

1059:                                             ; preds = %1055
  %1060 = extractvalue { i32, i1 } %1057, 0, !nosanitize !20
  %1061 = tail call i32 @llvm.umin.i32(i32 %1060, i32 1073741824)
  %1062 = load i32, ptr %517, align 4, !tbaa !46
  %1063 = zext i32 %1056 to i64
  %1064 = getelementptr inbounds nuw i8, ptr %1053, i64 %1063
  %1065 = zext nneg i32 %1061 to i64
  %1066 = tail call i64 @read(i32 noundef %1062, ptr noundef %1064, i64 noundef %1065) #13
  %1067 = trunc i64 %1066 to i32
  %1068 = icmp slt i32 %1067, 1
  br i1 %1068, label %1097, label %1069

1069:                                             ; preds = %1059
  %1070 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1056, i32 %1067), !nosanitize !20
  %1071 = extractvalue { i32, i1 } %1070, 1, !nosanitize !20
  br i1 false, label %1093, label %1072, !prof !21, !nosanitize !20

1072:                                             ; preds = %1069
  %1073 = extractvalue { i32, i1 } %1070, 0, !nosanitize !20
  %1074 = icmp ult i32 %1073, %1052
  br i1 %1074, label %1055, label %.loopexit30, !llvm.loop !47

.mv.ph40:                                         ; preds = %1051
  br label %1075

1075:                                             ; preds = %1094, %.mv.ph40
  %1076 = phi i32 [ 0, %.mv.ph40 ], [ %1095, %1094 ]
  %1077 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1052, i32 %1076), !nosanitize !20
  %1078 = extractvalue { i32, i1 } %1077, 1, !nosanitize !20
  br i1 false, label %1079, label %1080, !prof !21, !nosanitize !20

1079:                                             ; preds = %1055, %1075
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1080:                                             ; preds = %1075
  %1081 = extractvalue { i32, i1 } %1077, 0, !nosanitize !20
  %1082 = tail call i32 @llvm.umin.i32(i32 %1081, i32 1073741824)
  %1083 = load i32, ptr %517, align 4, !tbaa !46
  %1084 = zext i32 %1076 to i64
  %1085 = getelementptr inbounds nuw i8, ptr %1053, i64 %1084
  %1086 = zext nneg i32 %1082 to i64
  %1087 = tail call i64 @read(i32 noundef %1083, ptr noundef %1085, i64 noundef %1086) #13
  %1088 = trunc i64 %1087 to i32
  %1089 = icmp slt i32 %1088, 1
  br i1 %1089, label %1097, label %1090

1090:                                             ; preds = %1080
  %1091 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1076, i32 %1088), !nosanitize !20
  %1092 = extractvalue { i32, i1 } %1091, 1, !nosanitize !20
  br i1 %1092, label %1093, label %1094, !prof !21, !nosanitize !20

1093:                                             ; preds = %1069, %1090
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1094:                                             ; preds = %1090
  %1095 = extractvalue { i32, i1 } %1091, 0, !nosanitize !20
  %1096 = icmp ult i32 %1095, %1052
  br i1 %1096, label %1075, label %.loopexit30, !llvm.loop !47

1097:                                             ; preds = %1059, %1080
  %.lcssa34 = phi i32 [ %1088, %1080 ], [ %1067, %1059 ]
  %.lcssa31 = phi i32 [ %1076, %1080 ], [ %1056, %1059 ]
  %1098 = icmp slt i32 %.lcssa34, 0
  br i1 %1098, label %1099, label %1106

1099:                                             ; preds = %1097
  %1100 = load i32, ptr %1054, align 4, !tbaa !45
  %1101 = icmp eq i32 %1100, 11
  br i1 %1101, label %1102, label %1107

1102:                                             ; preds = %1099
  store i32 1, ptr %516, align 4, !tbaa !17
  %1103 = icmp eq i32 %.lcssa31, 0
  br i1 %1103, label %1104, label %1111

1104:                                             ; preds = %1102
  %1105 = load i32, ptr %1054, align 4, !tbaa !45
  br label %1107

1106:                                             ; preds = %1097
  store i32 1, ptr %508, align 8, !tbaa !24
  br label %1111

1107:                                             ; preds = %1104, %1099
  %1108 = phi i32 [ %1105, %1104 ], [ %1100, %1099 ]
  %1109 = tail call ptr @strerror(i32 noundef %1108) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %1109) #13
  %1110 = load i32, ptr %11, align 8, !tbaa !16
  br label %1145

.loopexit30:                                      ; preds = %1072, %1094
  %.lcssa37 = phi i32 [ %1095, %1094 ], [ %1073, %1072 ]
  br label %1111

1111:                                             ; preds = %.loopexit30, %1106, %1102
  %1112 = phi i32 [ %.lcssa31, %1106 ], [ %.lcssa31, %1102 ], [ %.lcssa37, %.loopexit30 ]
  %1113 = load i32, ptr %509, align 8, !tbaa !34
  %1114 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1113, i32 %1112), !nosanitize !20
  %1115 = extractvalue { i32, i1 } %1114, 1, !nosanitize !20
  br i1 %1115, label %1116, label %1117, !prof !21, !nosanitize !20

1116:                                             ; preds = %1111
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1117:                                             ; preds = %1111
  %1118 = extractvalue { i32, i1 } %1114, 0, !nosanitize !20
  store i32 %1118, ptr %509, align 8, !tbaa !34
  %1119 = load ptr, ptr %515, align 8, !tbaa !29
  store ptr %1119, ptr %514, align 8, !tbaa !35
  %1120 = icmp eq i32 %1118, 0
  br i1 %1120, label %1121, label %1125

1121:                                             ; preds = %1117, %1048
  %1122 = load i32, ptr %516, align 4, !tbaa !17
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1124, label %1145

1124:                                             ; preds = %1121
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %1145

1125:                                             ; preds = %1117, %1042
  %1126 = tail call i32 @inflate(ptr noundef nonnull %514, i32 noundef 0) #13
  %1127 = load i32, ptr %512, align 8, !tbaa !48
  %1128 = icmp ult i32 %1127, %530
  br i1 %1128, label %1129, label %1130

1129:                                             ; preds = %1125
  store i32 0, ptr %518, align 4, !tbaa !33
  br label %1130

1130:                                             ; preds = %1129, %1125
  switch i32 %1126, label %1141 [
    i32 -2, label %1131
    i32 2, label %1131
    i32 -4, label %1132
    i32 -3, label %1133
  ]

1131:                                             ; preds = %1130, %1130
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %1145

1132:                                             ; preds = %1130
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1145

1133:                                             ; preds = %1130
  %1134 = load i32, ptr %518, align 4, !tbaa !33
  %1135 = icmp eq i32 %1134, 1
  br i1 %1135, label %1136, label %1137

1136:                                             ; preds = %1133
  store i32 0, ptr %509, align 8, !tbaa !34
  store i32 1, ptr %508, align 8, !tbaa !24
  store i32 0, ptr %510, align 8, !tbaa !26
  br label %1145

1137:                                             ; preds = %1133
  %1138 = load ptr, ptr %519, align 8, !tbaa !50
  %1139 = icmp eq ptr %1138, null
  %1140 = select i1 %1139, ptr @.str.6, ptr %1138
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %1140) #13
  br label %1145

1141:                                             ; preds = %1130
  %1142 = icmp ne i32 %1127, 0
  %1143 = icmp ne i32 %1126, 1
  %1144 = select i1 %1142, i1 %1143, i1 false
  br i1 %1144, label %1042, label %1145, !llvm.loop !51

1145:                                             ; preds = %1141, %1137, %1136, %1132, %1131, %1124, %1121, %1107, %1046
  %1146 = phi i32 [ %1043, %1121 ], [ %1043, %1124 ], [ %1126, %1131 ], [ -4, %1132 ], [ 0, %1136 ], [ -3, %1137 ], [ %1110, %1107 ], [ %1126, %1141 ], [ %1047, %1046 ]
  %1147 = load i32, ptr %512, align 8, !tbaa !48
  %1148 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %530, i32 %1147), !nosanitize !20
  %1149 = extractvalue { i32, i1 } %1148, 1, !nosanitize !20
  br i1 %1149, label %1150, label %1151, !prof !21, !nosanitize !20

1150:                                             ; preds = %1145
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1151:                                             ; preds = %1145
  %1152 = extractvalue { i32, i1 } %1148, 0, !nosanitize !20
  %1153 = load ptr, ptr %513, align 8, !tbaa !49
  %1154 = zext i32 %1152 to i64
  %1155 = sub nsw i64 0, %1154
  %1156 = getelementptr inbounds i8, ptr %1153, i64 %1155
  store ptr %1156, ptr %507, align 8, !tbaa !22
  %1157 = icmp eq i32 %1146, 1
  br i1 %1157, label %1158, label %1159

1158:                                             ; preds = %1151
  store i32 0, ptr %518, align 4, !tbaa !33
  store i32 0, ptr %510, align 8, !tbaa !26
  br label %1162

1159:                                             ; preds = %1151
  %1160 = icmp ne i32 %1146, 0
  %1161 = sext i1 %1160 to i32
  br label %1162

1162:                                             ; preds = %1159, %1158
  %1163 = phi i32 [ 0, %1158 ], [ %1161, %1159 ]
  store i32 0, ptr %3, align 8, !tbaa !19
  br label %1166

1164:                                             ; preds = %1025
  %1165 = zext i32 %1026 to i64
  br label %1166

1166:                                             ; preds = %1164, %1162, %1040, %1037, %1033, %543
  %1167 = phi i64 [ %1165, %1164 ], [ %1015, %1040 ], [ %1015, %1037 ], [ %1015, %1033 ], [ %536, %543 ], [ %1154, %1162 ]
  %1168 = phi i32 [ 0, %1164 ], [ 0, %1040 ], [ -1, %1037 ], [ 0, %1033 ], [ %547, %543 ], [ %1163, %1162 ]
  %1169 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %527, i64 %1167), !nosanitize !20
  %1170 = extractvalue { i64, i1 } %1169, 0, !nosanitize !20
  %1171 = extractvalue { i64, i1 } %1169, 1, !nosanitize !20
  br i1 %1171, label %1172, label %1173, !prof !21, !nosanitize !20

1172:                                             ; preds = %1166
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1173:                                             ; preds = %1166
  %1174 = getelementptr inbounds nuw i8, ptr %526, i64 %1167
  %1175 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %528, i64 %1167), !nosanitize !20
  %1176 = extractvalue { i64, i1 } %1175, 0, !nosanitize !20
  %1177 = extractvalue { i64, i1 } %1175, 1, !nosanitize !20
  br i1 %1177, label %1178, label %1179, !prof !21, !nosanitize !20

1178:                                             ; preds = %1179, %1173
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1179:                                             ; preds = %1173
  %1180 = load i64, ptr %520, align 8, !tbaa !23
  %1181 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1180, i64 %1167), !nosanitize !20
  %1182 = extractvalue { i64, i1 } %1181, 1, !nosanitize !20
  br i1 %1182, label %1178, label %1183, !prof !21, !nosanitize !20

1183:                                             ; preds = %1179
  %1184 = extractvalue { i64, i1 } %1181, 0, !nosanitize !20
  store i64 %1184, ptr %520, align 8, !tbaa !23
  br label %1185

1185:                                             ; preds = %1183, %998, %993, %987, %862, %817
  %1186 = phi ptr [ %1174, %1183 ], [ %526, %998 ], [ %526, %862 ], [ %526, %817 ], [ %526, %987 ], [ %526, %993 ]
  %1187 = phi i64 [ %1170, %1183 ], [ %527, %998 ], [ %527, %862 ], [ %527, %817 ], [ %527, %987 ], [ %527, %993 ]
  %1188 = phi i64 [ %1176, %1183 ], [ %528, %998 ], [ %528, %862 ], [ %528, %817 ], [ %528, %987 ], [ %528, %993 ]
  %1189 = phi i32 [ %1168, %1183 ], [ %1001, %998 ], [ 0, %862 ], [ 0, %817 ], [ 0, %987 ], [ 0, %993 ]
  %1190 = icmp ne i64 %1187, 0
  %1191 = icmp eq i32 %1189, 0
  %1192 = select i1 %1190, i1 %1191, i1 false
  br i1 %1192, label %525, label %1193, !llvm.loop !60

1193:                                             ; preds = %1185, %551
  %1194 = phi i64 [ %1187, %1185 ], [ %527, %551 ]
  %1195 = phi i64 [ %1188, %1185 ], [ %528, %551 ]
  %1196 = icmp eq i64 %1194, 0
  br i1 %1196, label %1202, label %1197

1197:                                             ; preds = %1193
  %1198 = load i32, ptr %508, align 8, !tbaa !24
  %1199 = icmp eq i32 %1198, 0
  br i1 %1199, label %1202, label %1200

1200:                                             ; preds = %1197
  %1201 = getelementptr inbounds nuw i8, ptr %3, i64 92
  store i32 1, ptr %1201, align 4, !tbaa !61
  br label %1202

1202:                                             ; preds = %1200, %1197, %1193, %488, %481, %363, %277, %119, %105, %101
  %1203 = phi i64 [ %1195, %1200 ], [ %1195, %1197 ], [ %1195, %1193 ], [ 0, %488 ], [ 0, %363 ], [ 0, %101 ], [ 0, %105 ], [ 0, %277 ], [ 0, %481 ], [ 0, %119 ]
  %1204 = udiv i64 %1203, %1
  br label %1205

1205:                                             ; preds = %1202, %28, %27, %13, %6, %4
  %1206 = phi i64 [ 0, %27 ], [ 0, %4 ], [ 0, %6 ], [ 0, %13 ], [ %1204, %1202 ], [ 0, %28 ]
  ret i64 %1206
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
  br i1 %3, label %1210, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1210

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
  br i1 %14, label %1210, label %15

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
  br label %1210

32:                                               ; preds = %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %34 = load i64, ptr %33, align 8, !tbaa !18
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %528, label %36

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

55:                                               ; preds = %525, %36
  %56 = phi i64 [ %526, %525 ], [ %34, %36 ]
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
  br label %525

81:                                               ; preds = %55
  %82 = load i32, ptr %39, align 8, !tbaa !24
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %40, align 8, !tbaa !25
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %528, label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %522, %87
  %89 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %89, label %510 [
    i32 0, label %90
    i32 1, label %346
    i32 2, label %390
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
  br label %1209

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
  br label %1209

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
  br label %343

121:                                              ; preds = %113
  %122 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %122, label %1209 [
    i32 0, label %123
    i32 -5, label %123
  ]

123:                                              ; preds = %121, %121
  %124 = load i32, ptr %39, align 8, !tbaa !24
  %125 = icmp eq i32 %124, 0
  %126 = load i32, ptr %40, align 8, !tbaa !34
  br i1 %125, label %127, label %311

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
  %mv.h27 = icmp sge i32 %237, 0
  %mv.h.fr28 = freeze i1 %mv.h27
  br i1 %mv.h.fr28, label %.mv.ph29.mv.fast, label %.mv.ph29

.mv.ph29.mv.fast:                                 ; preds = %241
  br label %247

247:                                              ; preds = %264, %.mv.ph29.mv.fast
  %248 = phi i32 [ 0, %.mv.ph29.mv.fast ], [ %265, %264 ]
  %249 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %242, i32 %248), !nosanitize !20
  %250 = extractvalue { i32, i1 } %249, 1, !nosanitize !20
  br i1 false, label %271, label %251, !prof !21, !nosanitize !20

251:                                              ; preds = %247
  %252 = extractvalue { i32, i1 } %249, 0, !nosanitize !20
  %253 = tail call i32 @llvm.umin.i32(i32 %252, i32 1073741824)
  %254 = load i32, ptr %49, align 4, !tbaa !46
  %255 = zext i32 %248 to i64
  %256 = getelementptr inbounds nuw i8, ptr %245, i64 %255
  %257 = zext nneg i32 %253 to i64
  %258 = tail call i64 @read(i32 noundef %254, ptr noundef %256, i64 noundef %257) #13
  %259 = trunc i64 %258 to i32
  %260 = icmp slt i32 %259, 1
  br i1 %260, label %289, label %261

261:                                              ; preds = %251
  %262 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %248, i32 %259), !nosanitize !20
  %263 = extractvalue { i32, i1 } %262, 1, !nosanitize !20
  br i1 false, label %285, label %264, !prof !21, !nosanitize !20

264:                                              ; preds = %261
  %265 = extractvalue { i32, i1 } %262, 0, !nosanitize !20
  %266 = icmp ult i32 %265, %242
  br i1 %266, label %247, label %.loopexit19, !llvm.loop !47

.mv.ph29:                                         ; preds = %241
  br label %267

267:                                              ; preds = %286, %.mv.ph29
  %268 = phi i32 [ 0, %.mv.ph29 ], [ %287, %286 ]
  %269 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %242, i32 %268), !nosanitize !20
  %270 = extractvalue { i32, i1 } %269, 1, !nosanitize !20
  br i1 false, label %271, label %272, !prof !21, !nosanitize !20

271:                                              ; preds = %247, %267
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

272:                                              ; preds = %267
  %273 = extractvalue { i32, i1 } %269, 0, !nosanitize !20
  %274 = tail call i32 @llvm.umin.i32(i32 %273, i32 1073741824)
  %275 = load i32, ptr %49, align 4, !tbaa !46
  %276 = zext i32 %268 to i64
  %277 = getelementptr inbounds nuw i8, ptr %245, i64 %276
  %278 = zext nneg i32 %274 to i64
  %279 = tail call i64 @read(i32 noundef %275, ptr noundef %277, i64 noundef %278) #13
  %280 = trunc i64 %279 to i32
  %281 = icmp slt i32 %280, 1
  br i1 %281, label %289, label %282

282:                                              ; preds = %272
  %283 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %268, i32 %280), !nosanitize !20
  %284 = extractvalue { i32, i1 } %283, 1, !nosanitize !20
  br i1 %284, label %285, label %286, !prof !21, !nosanitize !20

285:                                              ; preds = %261, %282
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

286:                                              ; preds = %282
  %287 = extractvalue { i32, i1 } %283, 0, !nosanitize !20
  %288 = icmp ult i32 %287, %242
  br i1 %288, label %267, label %.loopexit19, !llvm.loop !47

289:                                              ; preds = %251, %272
  %.lcssa23 = phi i32 [ %280, %272 ], [ %259, %251 ]
  %.lcssa20 = phi i32 [ %268, %272 ], [ %248, %251 ]
  %290 = icmp slt i32 %.lcssa23, 0
  br i1 %290, label %291, label %298

291:                                              ; preds = %289
  %292 = load i32, ptr %246, align 4, !tbaa !45
  %293 = icmp eq i32 %292, 11
  br i1 %293, label %294, label %299

294:                                              ; preds = %291
  store i32 1, ptr %48, align 4, !tbaa !17
  %295 = icmp eq i32 %.lcssa20, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %294
  %297 = load i32, ptr %246, align 4, !tbaa !45
  br label %299

298:                                              ; preds = %289
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %302

299:                                              ; preds = %296, %291
  %300 = phi i32 [ %297, %296 ], [ %292, %291 ]
  %301 = tail call ptr @strerror(i32 noundef %300) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %301) #13
  br label %1209

.loopexit19:                                      ; preds = %264, %286
  %.lcssa26 = phi i32 [ %287, %286 ], [ %265, %264 ]
  br label %302

302:                                              ; preds = %.loopexit19, %298, %294
  %303 = phi i32 [ %.lcssa20, %298 ], [ %.lcssa20, %294 ], [ %.lcssa26, %.loopexit19 ]
  %304 = load i32, ptr %40, align 8, !tbaa !34
  %305 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %304, i32 %303), !nosanitize !20
  %306 = extractvalue { i32, i1 } %305, 1, !nosanitize !20
  br i1 %306, label %307, label %308, !prof !21, !nosanitize !20

307:                                              ; preds = %302
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

308:                                              ; preds = %302
  %309 = extractvalue { i32, i1 } %305, 0, !nosanitize !20
  store i32 %309, ptr %40, align 8, !tbaa !34
  %310 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %310, ptr %46, align 8, !tbaa !35
  br label %311

311:                                              ; preds = %308, %123
  %312 = phi i32 [ %309, %308 ], [ %126, %123 ]
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %343, label %314

314:                                              ; preds = %311
  %315 = load i32, ptr %48, align 4, !tbaa !17
  %316 = icmp ne i32 %315, 0
  %317 = icmp ult i32 %312, 4
  %318 = and i1 %317, %316
  br i1 %318, label %343, label %319

319:                                              ; preds = %314
  %320 = icmp ugt i32 %312, 3
  %321 = load ptr, ptr %46, align 8, !tbaa !35
  br i1 %320, label %322, label %339

322:                                              ; preds = %319
  %323 = load i8, ptr %321, align 1, !tbaa !36
  %324 = icmp eq i8 %323, 31
  br i1 %324, label %325, label %339

325:                                              ; preds = %322
  %326 = getelementptr inbounds nuw i8, ptr %321, i64 1
  %327 = load i8, ptr %326, align 1, !tbaa !36
  %328 = icmp eq i8 %327, -117
  br i1 %328, label %329, label %339

329:                                              ; preds = %325
  %330 = getelementptr inbounds nuw i8, ptr %321, i64 2
  %331 = load i8, ptr %330, align 1, !tbaa !36
  %332 = icmp eq i8 %331, 8
  br i1 %332, label %333, label %339

333:                                              ; preds = %329
  %334 = getelementptr inbounds nuw i8, ptr %321, i64 3
  %335 = load i8, ptr %334, align 1, !tbaa !36
  %336 = icmp ult i8 %335, 32
  br i1 %336, label %337, label %339

337:                                              ; preds = %333
  %338 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  store i32 1, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %54, align 8, !tbaa !32
  br label %511

339:                                              ; preds = %333, %329, %325, %322, %319
  %340 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %340, ptr %37, align 8, !tbaa !22
  %341 = zext i32 %312 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %340, ptr align 1 %321, i64 %341, i1 false)
  %342 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %342, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %513

343:                                              ; preds = %314, %311, %116
  %344 = load i32, ptr %41, align 8, !tbaa !26
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %523, label %511

346:                                              ; preds = %88
  %347 = load ptr, ptr %44, align 8, !tbaa !30
  %348 = load i32, ptr %42, align 8, !tbaa !27
  %349 = shl i32 %348, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %350 = tail call ptr @__errno_location() #17
  store i32 0, ptr %350, align 4, !tbaa !45
  store i32 0, ptr %0, align 4, !tbaa !45
  br label %351

351:                                              ; preds = %371, %346
  %352 = phi i32 [ %372, %371 ], [ 0, %346 ]
  %353 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %349, i32 %352), !nosanitize !20
  %354 = extractvalue { i32, i1 } %353, 1, !nosanitize !20
  br i1 false, label %355, label %356, !prof !21, !nosanitize !20

355:                                              ; preds = %351
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

356:                                              ; preds = %351
  %357 = extractvalue { i32, i1 } %353, 0, !nosanitize !20
  %358 = tail call i32 @llvm.umin.i32(i32 %357, i32 1073741824)
  %359 = load i32, ptr %49, align 4, !tbaa !46
  %360 = zext i32 %352 to i64
  %361 = getelementptr inbounds nuw i8, ptr %347, i64 %360
  %362 = zext nneg i32 %358 to i64
  %363 = tail call i64 @read(i32 noundef %359, ptr noundef %361, i64 noundef %362) #13
  %364 = trunc i64 %363 to i32
  %365 = icmp slt i32 %364, 1
  br i1 %365, label %374, label %366

366:                                              ; preds = %356
  %367 = load i32, ptr %0, align 4, !tbaa !45
  %368 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %367, i32 %364), !nosanitize !20
  %369 = extractvalue { i32, i1 } %368, 1, !nosanitize !20
  br i1 %369, label %370, label %371, !prof !21, !nosanitize !20

370:                                              ; preds = %366
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

371:                                              ; preds = %366
  %372 = extractvalue { i32, i1 } %368, 0, !nosanitize !20
  store i32 %372, ptr %0, align 4, !tbaa !45
  %373 = icmp ult i32 %372, %349
  br i1 %373, label %351, label %388, !llvm.loop !47

374:                                              ; preds = %356
  %375 = icmp slt i32 %364, 0
  br i1 %375, label %376, label %384

376:                                              ; preds = %374
  %377 = load i32, ptr %350, align 4, !tbaa !45
  %378 = icmp eq i32 %377, 11
  br i1 %378, label %379, label %385

379:                                              ; preds = %376
  store i32 1, ptr %48, align 4, !tbaa !17
  %380 = load i32, ptr %0, align 4, !tbaa !45
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %388

382:                                              ; preds = %379
  %383 = load i32, ptr %350, align 4, !tbaa !45
  br label %385

384:                                              ; preds = %374
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %388

385:                                              ; preds = %382, %376
  %386 = phi i32 [ %383, %382 ], [ %377, %376 ]
  %387 = tail call ptr @strerror(i32 noundef %386) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %387) #13
  br label %1209

388:                                              ; preds = %384, %379, %371
  %389 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %389, ptr %37, align 8, !tbaa !22
  br label %523

390:                                              ; preds = %88
  %391 = load i32, ptr %42, align 8, !tbaa !27
  %392 = shl i32 %391, 1
  store i32 %392, ptr %43, align 8, !tbaa !48
  %393 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %393, ptr %45, align 8, !tbaa !49
  br label %394

394:                                              ; preds = %493, %390
  %395 = phi i32 [ 0, %390 ], [ %478, %493 ]
  %396 = load i32, ptr %40, align 8, !tbaa !34
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %477

398:                                              ; preds = %394
  %399 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %399, label %497 [
    i32 0, label %400
    i32 -5, label %400
  ]

400:                                              ; preds = %398, %398
  %401 = load i32, ptr %39, align 8, !tbaa !24
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %473

403:                                              ; preds = %400
  %404 = load i32, ptr %42, align 8, !tbaa !27
  %405 = load ptr, ptr %47, align 8, !tbaa !29
  store i32 0, ptr %48, align 4, !tbaa !17
  %406 = tail call ptr @__errno_location() #17
  store i32 0, ptr %406, align 4, !tbaa !45
  %mv.h = icmp sge i32 %404, 0
  %mv.h.fr = freeze i1 %mv.h
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %403
  br label %407

407:                                              ; preds = %424, %.mv.ph.mv.fast
  %408 = phi i32 [ 0, %.mv.ph.mv.fast ], [ %425, %424 ]
  %409 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %404, i32 %408), !nosanitize !20
  %410 = extractvalue { i32, i1 } %409, 1, !nosanitize !20
  br i1 false, label %431, label %411, !prof !21, !nosanitize !20

411:                                              ; preds = %407
  %412 = extractvalue { i32, i1 } %409, 0, !nosanitize !20
  %413 = tail call i32 @llvm.umin.i32(i32 %412, i32 1073741824)
  %414 = load i32, ptr %49, align 4, !tbaa !46
  %415 = zext i32 %408 to i64
  %416 = getelementptr inbounds nuw i8, ptr %405, i64 %415
  %417 = zext nneg i32 %413 to i64
  %418 = tail call i64 @read(i32 noundef %414, ptr noundef %416, i64 noundef %417) #13
  %419 = trunc i64 %418 to i32
  %420 = icmp slt i32 %419, 1
  br i1 %420, label %449, label %421

421:                                              ; preds = %411
  %422 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %408, i32 %419), !nosanitize !20
  %423 = extractvalue { i32, i1 } %422, 1, !nosanitize !20
  br i1 false, label %445, label %424, !prof !21, !nosanitize !20

424:                                              ; preds = %421
  %425 = extractvalue { i32, i1 } %422, 0, !nosanitize !20
  %426 = icmp ult i32 %425, %404
  br i1 %426, label %407, label %.loopexit, !llvm.loop !47

.mv.ph:                                           ; preds = %403
  br label %427

427:                                              ; preds = %446, %.mv.ph
  %428 = phi i32 [ 0, %.mv.ph ], [ %447, %446 ]
  %429 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %404, i32 %428), !nosanitize !20
  %430 = extractvalue { i32, i1 } %429, 1, !nosanitize !20
  br i1 false, label %431, label %432, !prof !21, !nosanitize !20

431:                                              ; preds = %407, %427
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

432:                                              ; preds = %427
  %433 = extractvalue { i32, i1 } %429, 0, !nosanitize !20
  %434 = tail call i32 @llvm.umin.i32(i32 %433, i32 1073741824)
  %435 = load i32, ptr %49, align 4, !tbaa !46
  %436 = zext i32 %428 to i64
  %437 = getelementptr inbounds nuw i8, ptr %405, i64 %436
  %438 = zext nneg i32 %434 to i64
  %439 = tail call i64 @read(i32 noundef %435, ptr noundef %437, i64 noundef %438) #13
  %440 = trunc i64 %439 to i32
  %441 = icmp slt i32 %440, 1
  br i1 %441, label %449, label %442

442:                                              ; preds = %432
  %443 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %428, i32 %440), !nosanitize !20
  %444 = extractvalue { i32, i1 } %443, 1, !nosanitize !20
  br i1 %444, label %445, label %446, !prof !21, !nosanitize !20

445:                                              ; preds = %421, %442
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

446:                                              ; preds = %442
  %447 = extractvalue { i32, i1 } %443, 0, !nosanitize !20
  %448 = icmp ult i32 %447, %404
  br i1 %448, label %427, label %.loopexit, !llvm.loop !47

449:                                              ; preds = %411, %432
  %.lcssa4 = phi i32 [ %440, %432 ], [ %419, %411 ]
  %.lcssa1 = phi i32 [ %428, %432 ], [ %408, %411 ]
  %450 = icmp slt i32 %.lcssa4, 0
  br i1 %450, label %451, label %458

451:                                              ; preds = %449
  %452 = load i32, ptr %406, align 4, !tbaa !45
  %453 = icmp eq i32 %452, 11
  br i1 %453, label %454, label %459

454:                                              ; preds = %451
  store i32 1, ptr %48, align 4, !tbaa !17
  %455 = icmp eq i32 %.lcssa1, 0
  br i1 %455, label %456, label %463

456:                                              ; preds = %454
  %457 = load i32, ptr %406, align 4, !tbaa !45
  br label %459

458:                                              ; preds = %449
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %463

459:                                              ; preds = %456, %451
  %460 = phi i32 [ %457, %456 ], [ %452, %451 ]
  %461 = tail call ptr @strerror(i32 noundef %460) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %461) #13
  %462 = load i32, ptr %9, align 8, !tbaa !16
  br label %497

.loopexit:                                        ; preds = %424, %446
  %.lcssa7 = phi i32 [ %447, %446 ], [ %425, %424 ]
  br label %463

463:                                              ; preds = %.loopexit, %458, %454
  %464 = phi i32 [ %.lcssa1, %458 ], [ %.lcssa1, %454 ], [ %.lcssa7, %.loopexit ]
  %465 = load i32, ptr %40, align 8, !tbaa !34
  %466 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %465, i32 %464), !nosanitize !20
  %467 = extractvalue { i32, i1 } %466, 1, !nosanitize !20
  br i1 %467, label %468, label %469, !prof !21, !nosanitize !20

468:                                              ; preds = %463
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

469:                                              ; preds = %463
  %470 = extractvalue { i32, i1 } %466, 0, !nosanitize !20
  store i32 %470, ptr %40, align 8, !tbaa !34
  %471 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %471, ptr %46, align 8, !tbaa !35
  %472 = icmp eq i32 %470, 0
  br i1 %472, label %473, label %477

473:                                              ; preds = %469, %400
  %474 = load i32, ptr %48, align 4, !tbaa !17
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %497

476:                                              ; preds = %473
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %497

477:                                              ; preds = %469, %394
  %478 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %479 = load i32, ptr %43, align 8, !tbaa !48
  %480 = icmp ult i32 %479, %392
  br i1 %480, label %481, label %482

481:                                              ; preds = %477
  store i32 0, ptr %50, align 4, !tbaa !33
  br label %482

482:                                              ; preds = %481, %477
  switch i32 %478, label %493 [
    i32 -2, label %483
    i32 2, label %483
    i32 -4, label %484
    i32 -3, label %485
  ]

483:                                              ; preds = %482, %482
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %497

484:                                              ; preds = %482
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %497

485:                                              ; preds = %482
  %486 = load i32, ptr %50, align 4, !tbaa !33
  %487 = icmp eq i32 %486, 1
  br i1 %487, label %488, label %489

488:                                              ; preds = %485
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %497

489:                                              ; preds = %485
  %490 = load ptr, ptr %51, align 8, !tbaa !50
  %491 = icmp eq ptr %490, null
  %492 = select i1 %491, ptr @.str.6, ptr %490
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %492) #13
  br label %497

493:                                              ; preds = %482
  %494 = icmp ne i32 %479, 0
  %495 = icmp ne i32 %478, 1
  %496 = select i1 %494, i1 %495, i1 false
  br i1 %496, label %394, label %497, !llvm.loop !51

497:                                              ; preds = %493, %489, %488, %484, %483, %476, %473, %459, %398
  %498 = phi i32 [ %395, %473 ], [ %395, %476 ], [ %478, %483 ], [ -4, %484 ], [ 0, %488 ], [ -3, %489 ], [ %462, %459 ], [ %478, %493 ], [ %399, %398 ]
  %499 = load i32, ptr %43, align 8, !tbaa !48
  %500 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %392, i32 %499), !nosanitize !20
  %501 = extractvalue { i32, i1 } %500, 1, !nosanitize !20
  br i1 %501, label %502, label %503, !prof !21, !nosanitize !20

502:                                              ; preds = %497
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

503:                                              ; preds = %497
  %504 = extractvalue { i32, i1 } %500, 0, !nosanitize !20
  store i32 %504, ptr %0, align 8, !tbaa !19
  %505 = load ptr, ptr %45, align 8, !tbaa !49
  %506 = zext i32 %504 to i64
  %507 = sub nsw i64 0, %506
  %508 = getelementptr inbounds i8, ptr %505, i64 %507
  store ptr %508, ptr %37, align 8, !tbaa !22
  switch i32 %498, label %1209 [
    i32 1, label %509
    i32 0, label %511
  ]

509:                                              ; preds = %503
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %511

510:                                              ; preds = %88
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1209

511:                                              ; preds = %509, %503, %343, %337
  %512 = load i32, ptr %0, align 8, !tbaa !19
  br label %513

513:                                              ; preds = %511, %339
  %514 = phi i32 [ %512, %511 ], [ %342, %339 ]
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %516, label %523

516:                                              ; preds = %513
  %517 = load i32, ptr %39, align 8, !tbaa !24
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %522, label %519

519:                                              ; preds = %516
  %520 = load i32, ptr %40, align 8, !tbaa !34
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %523, label %522

522:                                              ; preds = %519, %516
  br label %88, !llvm.loop !52

523:                                              ; preds = %519, %513, %388, %343
  %524 = load i64, ptr %33, align 8, !tbaa !18
  br label %525

525:                                              ; preds = %523, %79
  %526 = phi i64 [ %524, %523 ], [ %80, %79 ]
  %527 = icmp eq i64 %526, 0
  br i1 %527, label %528, label %55, !llvm.loop !53

528:                                              ; preds = %525, %84, %32
  %529 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %530 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %531 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %532 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %533 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %534 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %535 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %536 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %537 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %538 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %539 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %540 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %541 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %542 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %543 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %544 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %545 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %546 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %547

547:                                              ; preds = %1187, %528
  %548 = phi ptr [ %2, %528 ], [ %1188, %1187 ]
  %549 = phi i64 [ 1, %528 ], [ %1189, %1187 ]
  %550 = phi i64 [ 0, %528 ], [ %1190, %1187 ]
  %551 = call i64 @llvm.umin.i64(i64 %549, i64 4294967295)
  %552 = trunc nuw i64 %551 to i32
  %553 = load i32, ptr %0, align 8, !tbaa !19
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %570, label %555

555:                                              ; preds = %547
  %556 = call i32 @llvm.umin.i32(i32 %553, i32 %552)
  %557 = load ptr, ptr %529, align 8, !tbaa !22
  %558 = zext i32 %556 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %548, ptr align 1 %557, i64 %558, i1 false)
  %559 = load ptr, ptr %529, align 8, !tbaa !22
  %560 = getelementptr inbounds nuw i8, ptr %559, i64 %558
  store ptr %560, ptr %529, align 8, !tbaa !22
  %561 = load i32, ptr %0, align 8, !tbaa !19
  %562 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %561, i32 %556), !nosanitize !20
  %563 = extractvalue { i32, i1 } %562, 1, !nosanitize !20
  br i1 %563, label %564, label %565, !prof !21, !nosanitize !20

564:                                              ; preds = %555
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

565:                                              ; preds = %555
  %566 = extractvalue { i32, i1 } %562, 0, !nosanitize !20
  store i32 %566, ptr %0, align 8, !tbaa !19
  %567 = load i32, ptr %9, align 8, !tbaa !16
  %568 = icmp ne i32 %567, 0
  %569 = sext i1 %568 to i32
  br label %1168

570:                                              ; preds = %547
  %571 = load i32, ptr %530, align 8, !tbaa !24
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %576, label %573

573:                                              ; preds = %570
  %574 = load i32, ptr %531, align 8, !tbaa !25
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %1200, label %576

576:                                              ; preds = %573, %570
  %577 = load i32, ptr %532, align 8, !tbaa !26
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %583, label %579

579:                                              ; preds = %576
  %580 = load i32, ptr %533, align 8, !tbaa !27
  %581 = shl i32 %580, 1
  %582 = icmp ugt i32 %581, %552
  br i1 %582, label %583, label %1024

583:                                              ; preds = %579, %576
  br label %584

584:                                              ; preds = %1018, %583
  %585 = phi i32 [ %1019, %1018 ], [ %577, %583 ]
  switch i32 %585, label %1006 [
    i32 0, label %586
    i32 1, label %842
    i32 2, label %886
  ]

586:                                              ; preds = %584
  %587 = load i32, ptr %533, align 8, !tbaa !27
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %589, label %606

589:                                              ; preds = %586
  %590 = load i32, ptr %544, align 4, !tbaa !28
  %591 = zext i32 %590 to i64
  %592 = call noalias ptr @malloc(i64 noundef %591) #16
  store ptr %592, ptr %537, align 8, !tbaa !29
  %593 = shl i32 %590, 1
  %594 = zext i32 %593 to i64
  %595 = call noalias ptr @malloc(i64 noundef %594) #16
  store ptr %595, ptr %543, align 8, !tbaa !30
  %596 = icmp eq ptr %592, null
  %597 = icmp eq ptr %595, null
  %598 = or i1 %596, %597
  br i1 %598, label %599, label %600

599:                                              ; preds = %589
  call void @free(ptr noundef %595) #13
  call void @free(ptr noundef %592) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1020

600:                                              ; preds = %589
  store i32 %590, ptr %533, align 8, !tbaa !27
  store i32 0, ptr %531, align 8, !tbaa !25
  store ptr null, ptr %536, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %545, i8 0, i64 24, i1 false)
  %601 = call i32 @inflateInit2_(ptr noundef nonnull %536, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %606, label %603

603:                                              ; preds = %600
  %604 = load ptr, ptr %543, align 8, !tbaa !30
  call void @free(ptr noundef %604) #13
  %605 = load ptr, ptr %537, align 8, !tbaa !29
  call void @free(ptr noundef %605) #13
  store i32 0, ptr %533, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1020

606:                                              ; preds = %600, %586
  %607 = load i32, ptr %546, align 8, !tbaa !32
  %608 = icmp eq i32 %607, -1
  br i1 %608, label %612, label %609

609:                                              ; preds = %606
  %610 = load i32, ptr %540, align 4, !tbaa !33
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %612, label %617

612:                                              ; preds = %609, %606
  %613 = call i32 @inflateReset(ptr noundef nonnull %536) #13
  store i32 2, ptr %532, align 8, !tbaa !26
  %614 = load i32, ptr %540, align 4, !tbaa !33
  %615 = icmp ne i32 %614, -1
  %616 = zext i1 %615 to i32
  store i32 %616, ptr %540, align 4, !tbaa !33
  store i32 0, ptr %546, align 8, !tbaa !32
  br label %839

617:                                              ; preds = %609
  %618 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %618, label %1020 [
    i32 0, label %619
    i32 -5, label %619
  ]

619:                                              ; preds = %617, %617
  %620 = load i32, ptr %530, align 8, !tbaa !24
  %621 = icmp eq i32 %620, 0
  %622 = load i32, ptr %531, align 8, !tbaa !34
  br i1 %621, label %623, label %807

623:                                              ; preds = %619
  %624 = icmp eq i32 %622, 0
  br i1 %624, label %731, label %625

625:                                              ; preds = %623
  %626 = load ptr, ptr %537, align 8, !tbaa !29
  %627 = load ptr, ptr %536, align 8, !tbaa !35
  %628 = icmp eq ptr %627, %626
  br i1 %628, label %731, label %629

629:                                              ; preds = %625
  %630 = ptrtoint ptr %627 to i64
  %631 = ptrtoint ptr %626 to i64
  %632 = zext i32 %622 to i64
  %633 = icmp ult i32 %622, 4
  %634 = sub i64 %631, %630
  %635 = icmp ult i64 %634, 32
  %636 = or i1 %633, %635
  br i1 %636, label %676, label %637

637:                                              ; preds = %629
  %638 = icmp ult i32 %622, 32
  br i1 %638, label %660, label %639

639:                                              ; preds = %637
  %640 = and i64 %632, 4294967264
  br label %641

641:                                              ; preds = %641, %639
  %642 = phi i64 [ 0, %639 ], [ %649, %641 ]
  %643 = getelementptr i8, ptr %626, i64 %642
  %644 = getelementptr i8, ptr %627, i64 %642
  %645 = getelementptr i8, ptr %644, i64 16
  %646 = load <16 x i8>, ptr %644, align 1, !tbaa !36
  %647 = load <16 x i8>, ptr %645, align 1, !tbaa !36
  %648 = getelementptr i8, ptr %643, i64 16
  store <16 x i8> %646, ptr %643, align 1, !tbaa !36
  store <16 x i8> %647, ptr %648, align 1, !tbaa !36
  %649 = add nuw i64 %642, 32
  %650 = icmp eq i64 %649, %640
  br i1 %650, label %651, label %641, !llvm.loop !74

651:                                              ; preds = %641
  %652 = icmp eq i64 %640, %632
  br i1 %652, label %729, label %653

653:                                              ; preds = %651
  %654 = getelementptr i8, ptr %626, i64 %640
  %655 = getelementptr i8, ptr %627, i64 %640
  %656 = trunc nuw i64 %640 to i32
  %657 = sub i32 %622, %656
  %658 = and i64 %632, 28
  %659 = icmp eq i64 %658, 0
  br i1 %659, label %676, label %660

660:                                              ; preds = %653, %637
  %661 = phi i64 [ %640, %653 ], [ 0, %637 ]
  %662 = and i64 %632, 4294967292
  %663 = getelementptr i8, ptr %626, i64 %662
  %664 = getelementptr i8, ptr %627, i64 %662
  %665 = trunc nuw i64 %662 to i32
  %666 = sub i32 %622, %665
  br label %667

667:                                              ; preds = %667, %660
  %668 = phi i64 [ %661, %660 ], [ %672, %667 ]
  %669 = getelementptr i8, ptr %626, i64 %668
  %670 = getelementptr i8, ptr %627, i64 %668
  %671 = load <4 x i8>, ptr %670, align 1, !tbaa !36
  store <4 x i8> %671, ptr %669, align 1, !tbaa !36
  %672 = add nuw i64 %668, 4
  %673 = icmp eq i64 %672, %662
  br i1 %673, label %674, label %667, !llvm.loop !75

674:                                              ; preds = %667
  %675 = icmp eq i64 %662, %632
  br i1 %675, label %729, label %676

676:                                              ; preds = %674, %653, %629
  %677 = phi ptr [ %626, %629 ], [ %654, %653 ], [ %663, %674 ]
  %678 = phi ptr [ %627, %629 ], [ %655, %653 ], [ %664, %674 ]
  %679 = phi i32 [ %622, %629 ], [ %657, %653 ], [ %666, %674 ]
  %680 = add i32 %679, -1
  %681 = and i32 %679, 7
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %694, label %683

683:                                              ; preds = %683, %676
  %684 = phi ptr [ %690, %683 ], [ %677, %676 ]
  %685 = phi ptr [ %691, %683 ], [ %678, %676 ]
  %686 = phi i32 [ %689, %683 ], [ %679, %676 ]
  %687 = phi i32 [ %692, %683 ], [ 0, %676 ]
  %688 = load i8, ptr %685, align 1, !tbaa !36
  store i8 %688, ptr %684, align 1, !tbaa !36
  %689 = add i32 %686, -1
  %690 = getelementptr inbounds nuw i8, ptr %684, i64 1
  %691 = getelementptr inbounds nuw i8, ptr %685, i64 1
  %692 = add i32 %687, 1
  %693 = icmp eq i32 %692, %681
  br i1 %693, label %694, label %683, !llvm.loop !76

694:                                              ; preds = %683, %676
  %695 = phi ptr [ %677, %676 ], [ %690, %683 ]
  %696 = phi ptr [ %678, %676 ], [ %691, %683 ]
  %697 = phi i32 [ %679, %676 ], [ %689, %683 ]
  %698 = icmp ult i32 %680, 7
  br i1 %698, label %729, label %699

699:                                              ; preds = %699, %694
  %700 = phi ptr [ %726, %699 ], [ %695, %694 ]
  %701 = phi ptr [ %727, %699 ], [ %696, %694 ]
  %702 = phi i32 [ %725, %699 ], [ %697, %694 ]
  %703 = load i8, ptr %701, align 1, !tbaa !36
  store i8 %703, ptr %700, align 1, !tbaa !36
  %704 = getelementptr inbounds nuw i8, ptr %700, i64 1
  %705 = getelementptr inbounds nuw i8, ptr %701, i64 1
  %706 = load i8, ptr %705, align 1, !tbaa !36
  store i8 %706, ptr %704, align 1, !tbaa !36
  %707 = getelementptr inbounds nuw i8, ptr %700, i64 2
  %708 = getelementptr inbounds nuw i8, ptr %701, i64 2
  %709 = load i8, ptr %708, align 1, !tbaa !36
  store i8 %709, ptr %707, align 1, !tbaa !36
  %710 = getelementptr inbounds nuw i8, ptr %700, i64 3
  %711 = getelementptr inbounds nuw i8, ptr %701, i64 3
  %712 = load i8, ptr %711, align 1, !tbaa !36
  store i8 %712, ptr %710, align 1, !tbaa !36
  %713 = getelementptr inbounds nuw i8, ptr %700, i64 4
  %714 = getelementptr inbounds nuw i8, ptr %701, i64 4
  %715 = load i8, ptr %714, align 1, !tbaa !36
  store i8 %715, ptr %713, align 1, !tbaa !36
  %716 = getelementptr inbounds nuw i8, ptr %700, i64 5
  %717 = getelementptr inbounds nuw i8, ptr %701, i64 5
  %718 = load i8, ptr %717, align 1, !tbaa !36
  store i8 %718, ptr %716, align 1, !tbaa !36
  %719 = getelementptr inbounds nuw i8, ptr %700, i64 6
  %720 = getelementptr inbounds nuw i8, ptr %701, i64 6
  %721 = load i8, ptr %720, align 1, !tbaa !36
  store i8 %721, ptr %719, align 1, !tbaa !36
  %722 = getelementptr inbounds nuw i8, ptr %700, i64 7
  %723 = getelementptr inbounds nuw i8, ptr %701, i64 7
  %724 = load i8, ptr %723, align 1, !tbaa !36
  store i8 %724, ptr %722, align 1, !tbaa !36
  %725 = add i32 %702, -8
  %726 = getelementptr inbounds nuw i8, ptr %700, i64 8
  %727 = getelementptr inbounds nuw i8, ptr %701, i64 8
  %728 = icmp eq i32 %725, 0
  br i1 %728, label %729, label %699, !llvm.loop !77

729:                                              ; preds = %699, %694, %674, %651
  %730 = load i32, ptr %531, align 8, !tbaa !34
  br label %731

731:                                              ; preds = %729, %625, %623
  %732 = phi i32 [ %730, %729 ], [ %622, %625 ], [ 0, %623 ]
  %733 = load i32, ptr %533, align 8, !tbaa !27
  %734 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %733, i32 %732), !nosanitize !20
  %735 = extractvalue { i32, i1 } %734, 1, !nosanitize !20
  br i1 %735, label %736, label %737, !prof !21, !nosanitize !20

736:                                              ; preds = %731
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

737:                                              ; preds = %731
  %738 = extractvalue { i32, i1 } %734, 0, !nosanitize !20
  %739 = load ptr, ptr %537, align 8, !tbaa !29
  %740 = zext i32 %732 to i64
  %741 = getelementptr inbounds nuw i8, ptr %739, i64 %740
  store i32 0, ptr %538, align 4, !tbaa !17
  %742 = tail call ptr @__errno_location() #17
  store i32 0, ptr %742, align 4, !tbaa !45
  %mv.h38 = icmp sge i32 %733, 0
  %mv.h.fr39 = freeze i1 %mv.h38
  br i1 %mv.h.fr39, label %.mv.ph40.mv.fast, label %.mv.ph40

.mv.ph40.mv.fast:                                 ; preds = %737
  br label %743

743:                                              ; preds = %760, %.mv.ph40.mv.fast
  %744 = phi i32 [ 0, %.mv.ph40.mv.fast ], [ %761, %760 ]
  %745 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %738, i32 %744), !nosanitize !20
  %746 = extractvalue { i32, i1 } %745, 1, !nosanitize !20
  br i1 false, label %767, label %747, !prof !21, !nosanitize !20

747:                                              ; preds = %743
  %748 = extractvalue { i32, i1 } %745, 0, !nosanitize !20
  %749 = call i32 @llvm.umin.i32(i32 %748, i32 1073741824)
  %750 = load i32, ptr %539, align 4, !tbaa !46
  %751 = zext i32 %744 to i64
  %752 = getelementptr inbounds nuw i8, ptr %741, i64 %751
  %753 = zext nneg i32 %749 to i64
  %754 = call i64 @read(i32 noundef %750, ptr noundef %752, i64 noundef %753) #13
  %755 = trunc i64 %754 to i32
  %756 = icmp slt i32 %755, 1
  br i1 %756, label %785, label %757

757:                                              ; preds = %747
  %758 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %744, i32 %755), !nosanitize !20
  %759 = extractvalue { i32, i1 } %758, 1, !nosanitize !20
  br i1 false, label %781, label %760, !prof !21, !nosanitize !20

760:                                              ; preds = %757
  %761 = extractvalue { i32, i1 } %758, 0, !nosanitize !20
  %762 = icmp ult i32 %761, %738
  br i1 %762, label %743, label %.loopexit30, !llvm.loop !47

.mv.ph40:                                         ; preds = %737
  br label %763

763:                                              ; preds = %782, %.mv.ph40
  %764 = phi i32 [ 0, %.mv.ph40 ], [ %783, %782 ]
  %765 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %738, i32 %764), !nosanitize !20
  %766 = extractvalue { i32, i1 } %765, 1, !nosanitize !20
  br i1 false, label %767, label %768, !prof !21, !nosanitize !20

767:                                              ; preds = %743, %763
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

768:                                              ; preds = %763
  %769 = extractvalue { i32, i1 } %765, 0, !nosanitize !20
  %770 = call i32 @llvm.umin.i32(i32 %769, i32 1073741824)
  %771 = load i32, ptr %539, align 4, !tbaa !46
  %772 = zext i32 %764 to i64
  %773 = getelementptr inbounds nuw i8, ptr %741, i64 %772
  %774 = zext nneg i32 %770 to i64
  %775 = call i64 @read(i32 noundef %771, ptr noundef %773, i64 noundef %774) #13
  %776 = trunc i64 %775 to i32
  %777 = icmp slt i32 %776, 1
  br i1 %777, label %785, label %778

778:                                              ; preds = %768
  %779 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %764, i32 %776), !nosanitize !20
  %780 = extractvalue { i32, i1 } %779, 1, !nosanitize !20
  br i1 %780, label %781, label %782, !prof !21, !nosanitize !20

781:                                              ; preds = %757, %778
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

782:                                              ; preds = %778
  %783 = extractvalue { i32, i1 } %779, 0, !nosanitize !20
  %784 = icmp ult i32 %783, %738
  br i1 %784, label %763, label %.loopexit30, !llvm.loop !47

785:                                              ; preds = %747, %768
  %.lcssa34 = phi i32 [ %776, %768 ], [ %755, %747 ]
  %.lcssa31 = phi i32 [ %764, %768 ], [ %744, %747 ]
  %786 = icmp slt i32 %.lcssa34, 0
  br i1 %786, label %787, label %794

787:                                              ; preds = %785
  %788 = load i32, ptr %742, align 4, !tbaa !45
  %789 = icmp eq i32 %788, 11
  br i1 %789, label %790, label %795

790:                                              ; preds = %787
  store i32 1, ptr %538, align 4, !tbaa !17
  %791 = icmp eq i32 %.lcssa31, 0
  br i1 %791, label %792, label %798

792:                                              ; preds = %790
  %793 = load i32, ptr %742, align 4, !tbaa !45
  br label %795

794:                                              ; preds = %785
  store i32 1, ptr %530, align 8, !tbaa !24
  br label %798

795:                                              ; preds = %792, %787
  %796 = phi i32 [ %793, %792 ], [ %788, %787 ]
  %797 = call ptr @strerror(i32 noundef %796) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %797) #13
  br label %1020

.loopexit30:                                      ; preds = %760, %782
  %.lcssa37 = phi i32 [ %783, %782 ], [ %761, %760 ]
  br label %798

798:                                              ; preds = %.loopexit30, %794, %790
  %799 = phi i32 [ %.lcssa31, %794 ], [ %.lcssa31, %790 ], [ %.lcssa37, %.loopexit30 ]
  %800 = load i32, ptr %531, align 8, !tbaa !34
  %801 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %800, i32 %799), !nosanitize !20
  %802 = extractvalue { i32, i1 } %801, 1, !nosanitize !20
  br i1 %802, label %803, label %804, !prof !21, !nosanitize !20

803:                                              ; preds = %798
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

804:                                              ; preds = %798
  %805 = extractvalue { i32, i1 } %801, 0, !nosanitize !20
  store i32 %805, ptr %531, align 8, !tbaa !34
  %806 = load ptr, ptr %537, align 8, !tbaa !29
  store ptr %806, ptr %536, align 8, !tbaa !35
  br label %807

807:                                              ; preds = %804, %619
  %808 = phi i32 [ %805, %804 ], [ %622, %619 ]
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %839, label %810

810:                                              ; preds = %807
  %811 = load i32, ptr %538, align 4, !tbaa !17
  %812 = icmp ne i32 %811, 0
  %813 = icmp ult i32 %808, 4
  %814 = and i1 %813, %812
  br i1 %814, label %839, label %815

815:                                              ; preds = %810
  %816 = icmp ugt i32 %808, 3
  %817 = load ptr, ptr %536, align 8, !tbaa !35
  br i1 %816, label %818, label %835

818:                                              ; preds = %815
  %819 = load i8, ptr %817, align 1, !tbaa !36
  %820 = icmp eq i8 %819, 31
  br i1 %820, label %821, label %835

821:                                              ; preds = %818
  %822 = getelementptr inbounds nuw i8, ptr %817, i64 1
  %823 = load i8, ptr %822, align 1, !tbaa !36
  %824 = icmp eq i8 %823, -117
  br i1 %824, label %825, label %835

825:                                              ; preds = %821
  %826 = getelementptr inbounds nuw i8, ptr %817, i64 2
  %827 = load i8, ptr %826, align 1, !tbaa !36
  %828 = icmp eq i8 %827, 8
  br i1 %828, label %829, label %835

829:                                              ; preds = %825
  %830 = getelementptr inbounds nuw i8, ptr %817, i64 3
  %831 = load i8, ptr %830, align 1, !tbaa !36
  %832 = icmp ult i8 %831, 32
  br i1 %832, label %833, label %835

833:                                              ; preds = %829
  %834 = call i32 @inflateReset(ptr noundef nonnull %536) #13
  store i32 2, ptr %532, align 8, !tbaa !26
  store i32 1, ptr %540, align 4, !tbaa !33
  store i32 0, ptr %546, align 8, !tbaa !32
  br label %1007

835:                                              ; preds = %829, %825, %821, %818, %815
  %836 = load ptr, ptr %543, align 8, !tbaa !30
  store ptr %836, ptr %529, align 8, !tbaa !22
  %837 = zext i32 %808 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %836, ptr align 1 %817, i64 %837, i1 false)
  %838 = load i32, ptr %531, align 8, !tbaa !34
  store i32 %838, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %531, align 8, !tbaa !34
  store i32 1, ptr %532, align 8, !tbaa !26
  br label %1009

839:                                              ; preds = %810, %807, %612
  %840 = load i32, ptr %532, align 8, !tbaa !26
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %1187, label %1007

842:                                              ; preds = %584
  %843 = load ptr, ptr %543, align 8, !tbaa !30
  %844 = load i32, ptr %533, align 8, !tbaa !27
  %845 = shl i32 %844, 1
  store i32 0, ptr %538, align 4, !tbaa !17
  %846 = tail call ptr @__errno_location() #17
  store i32 0, ptr %846, align 4, !tbaa !45
  store i32 0, ptr %0, align 4, !tbaa !45
  br label %847

847:                                              ; preds = %867, %842
  %848 = phi i32 [ %868, %867 ], [ 0, %842 ]
  %849 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %845, i32 %848), !nosanitize !20
  %850 = extractvalue { i32, i1 } %849, 1, !nosanitize !20
  br i1 false, label %851, label %852, !prof !21, !nosanitize !20

851:                                              ; preds = %847
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

852:                                              ; preds = %847
  %853 = extractvalue { i32, i1 } %849, 0, !nosanitize !20
  %854 = call i32 @llvm.umin.i32(i32 %853, i32 1073741824)
  %855 = load i32, ptr %539, align 4, !tbaa !46
  %856 = zext i32 %848 to i64
  %857 = getelementptr inbounds nuw i8, ptr %843, i64 %856
  %858 = zext nneg i32 %854 to i64
  %859 = call i64 @read(i32 noundef %855, ptr noundef %857, i64 noundef %858) #13
  %860 = trunc i64 %859 to i32
  %861 = icmp slt i32 %860, 1
  br i1 %861, label %870, label %862

862:                                              ; preds = %852
  %863 = load i32, ptr %0, align 4, !tbaa !45
  %864 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %863, i32 %860), !nosanitize !20
  %865 = extractvalue { i32, i1 } %864, 1, !nosanitize !20
  br i1 %865, label %866, label %867, !prof !21, !nosanitize !20

866:                                              ; preds = %862
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

867:                                              ; preds = %862
  %868 = extractvalue { i32, i1 } %864, 0, !nosanitize !20
  store i32 %868, ptr %0, align 4, !tbaa !45
  %869 = icmp ult i32 %868, %845
  br i1 %869, label %847, label %884, !llvm.loop !47

870:                                              ; preds = %852
  %871 = icmp slt i32 %860, 0
  br i1 %871, label %872, label %880

872:                                              ; preds = %870
  %873 = load i32, ptr %846, align 4, !tbaa !45
  %874 = icmp eq i32 %873, 11
  br i1 %874, label %875, label %881

875:                                              ; preds = %872
  store i32 1, ptr %538, align 4, !tbaa !17
  %876 = load i32, ptr %0, align 4, !tbaa !45
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %878, label %884

878:                                              ; preds = %875
  %879 = load i32, ptr %846, align 4, !tbaa !45
  br label %881

880:                                              ; preds = %870
  store i32 1, ptr %530, align 8, !tbaa !24
  br label %884

881:                                              ; preds = %878, %872
  %882 = phi i32 [ %879, %878 ], [ %873, %872 ]
  %883 = call ptr @strerror(i32 noundef %882) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %883) #13
  br label %1020

884:                                              ; preds = %880, %875, %867
  %885 = load ptr, ptr %543, align 8, !tbaa !30
  store ptr %885, ptr %529, align 8, !tbaa !22
  br label %1187

886:                                              ; preds = %584
  %887 = load i32, ptr %533, align 8, !tbaa !27
  %888 = shl i32 %887, 1
  store i32 %888, ptr %534, align 8, !tbaa !48
  %889 = load ptr, ptr %543, align 8, !tbaa !30
  store ptr %889, ptr %535, align 8, !tbaa !49
  br label %890

890:                                              ; preds = %989, %886
  %891 = phi i32 [ 0, %886 ], [ %974, %989 ]
  %892 = load i32, ptr %531, align 8, !tbaa !34
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %894, label %973

894:                                              ; preds = %890
  %895 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %895, label %993 [
    i32 0, label %896
    i32 -5, label %896
  ]

896:                                              ; preds = %894, %894
  %897 = load i32, ptr %530, align 8, !tbaa !24
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %899, label %969

899:                                              ; preds = %896
  %900 = load i32, ptr %533, align 8, !tbaa !27
  %901 = load ptr, ptr %537, align 8, !tbaa !29
  store i32 0, ptr %538, align 4, !tbaa !17
  %902 = tail call ptr @__errno_location() #17
  store i32 0, ptr %902, align 4, !tbaa !45
  %mv.h16 = icmp sge i32 %900, 0
  %mv.h.fr17 = freeze i1 %mv.h16
  br i1 %mv.h.fr17, label %.mv.ph18.mv.fast, label %.mv.ph18

.mv.ph18.mv.fast:                                 ; preds = %899
  br label %903

903:                                              ; preds = %920, %.mv.ph18.mv.fast
  %904 = phi i32 [ 0, %.mv.ph18.mv.fast ], [ %921, %920 ]
  %905 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %900, i32 %904), !nosanitize !20
  %906 = extractvalue { i32, i1 } %905, 1, !nosanitize !20
  br i1 false, label %927, label %907, !prof !21, !nosanitize !20

907:                                              ; preds = %903
  %908 = extractvalue { i32, i1 } %905, 0, !nosanitize !20
  %909 = call i32 @llvm.umin.i32(i32 %908, i32 1073741824)
  %910 = load i32, ptr %539, align 4, !tbaa !46
  %911 = zext i32 %904 to i64
  %912 = getelementptr inbounds nuw i8, ptr %901, i64 %911
  %913 = zext nneg i32 %909 to i64
  %914 = call i64 @read(i32 noundef %910, ptr noundef %912, i64 noundef %913) #13
  %915 = trunc i64 %914 to i32
  %916 = icmp slt i32 %915, 1
  br i1 %916, label %945, label %917

917:                                              ; preds = %907
  %918 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %904, i32 %915), !nosanitize !20
  %919 = extractvalue { i32, i1 } %918, 1, !nosanitize !20
  br i1 false, label %941, label %920, !prof !21, !nosanitize !20

920:                                              ; preds = %917
  %921 = extractvalue { i32, i1 } %918, 0, !nosanitize !20
  %922 = icmp ult i32 %921, %900
  br i1 %922, label %903, label %.loopexit8, !llvm.loop !47

.mv.ph18:                                         ; preds = %899
  br label %923

923:                                              ; preds = %942, %.mv.ph18
  %924 = phi i32 [ 0, %.mv.ph18 ], [ %943, %942 ]
  %925 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %900, i32 %924), !nosanitize !20
  %926 = extractvalue { i32, i1 } %925, 1, !nosanitize !20
  br i1 false, label %927, label %928, !prof !21, !nosanitize !20

927:                                              ; preds = %903, %923
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

928:                                              ; preds = %923
  %929 = extractvalue { i32, i1 } %925, 0, !nosanitize !20
  %930 = call i32 @llvm.umin.i32(i32 %929, i32 1073741824)
  %931 = load i32, ptr %539, align 4, !tbaa !46
  %932 = zext i32 %924 to i64
  %933 = getelementptr inbounds nuw i8, ptr %901, i64 %932
  %934 = zext nneg i32 %930 to i64
  %935 = call i64 @read(i32 noundef %931, ptr noundef %933, i64 noundef %934) #13
  %936 = trunc i64 %935 to i32
  %937 = icmp slt i32 %936, 1
  br i1 %937, label %945, label %938

938:                                              ; preds = %928
  %939 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %924, i32 %936), !nosanitize !20
  %940 = extractvalue { i32, i1 } %939, 1, !nosanitize !20
  br i1 %940, label %941, label %942, !prof !21, !nosanitize !20

941:                                              ; preds = %917, %938
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

942:                                              ; preds = %938
  %943 = extractvalue { i32, i1 } %939, 0, !nosanitize !20
  %944 = icmp ult i32 %943, %900
  br i1 %944, label %923, label %.loopexit8, !llvm.loop !47

945:                                              ; preds = %907, %928
  %.lcssa12 = phi i32 [ %936, %928 ], [ %915, %907 ]
  %.lcssa9 = phi i32 [ %924, %928 ], [ %904, %907 ]
  %946 = icmp slt i32 %.lcssa12, 0
  br i1 %946, label %947, label %954

947:                                              ; preds = %945
  %948 = load i32, ptr %902, align 4, !tbaa !45
  %949 = icmp eq i32 %948, 11
  br i1 %949, label %950, label %955

950:                                              ; preds = %947
  store i32 1, ptr %538, align 4, !tbaa !17
  %951 = icmp eq i32 %.lcssa9, 0
  br i1 %951, label %952, label %959

952:                                              ; preds = %950
  %953 = load i32, ptr %902, align 4, !tbaa !45
  br label %955

954:                                              ; preds = %945
  store i32 1, ptr %530, align 8, !tbaa !24
  br label %959

955:                                              ; preds = %952, %947
  %956 = phi i32 [ %953, %952 ], [ %948, %947 ]
  %957 = call ptr @strerror(i32 noundef %956) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %957) #13
  %958 = load i32, ptr %9, align 8, !tbaa !16
  br label %993

.loopexit8:                                       ; preds = %920, %942
  %.lcssa15 = phi i32 [ %943, %942 ], [ %921, %920 ]
  br label %959

959:                                              ; preds = %.loopexit8, %954, %950
  %960 = phi i32 [ %.lcssa9, %954 ], [ %.lcssa9, %950 ], [ %.lcssa15, %.loopexit8 ]
  %961 = load i32, ptr %531, align 8, !tbaa !34
  %962 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %961, i32 %960), !nosanitize !20
  %963 = extractvalue { i32, i1 } %962, 1, !nosanitize !20
  br i1 %963, label %964, label %965, !prof !21, !nosanitize !20

964:                                              ; preds = %959
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

965:                                              ; preds = %959
  %966 = extractvalue { i32, i1 } %962, 0, !nosanitize !20
  store i32 %966, ptr %531, align 8, !tbaa !34
  %967 = load ptr, ptr %537, align 8, !tbaa !29
  store ptr %967, ptr %536, align 8, !tbaa !35
  %968 = icmp eq i32 %966, 0
  br i1 %968, label %969, label %973

969:                                              ; preds = %965, %896
  %970 = load i32, ptr %538, align 4, !tbaa !17
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %972, label %993

972:                                              ; preds = %969
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %993

973:                                              ; preds = %965, %890
  %974 = call i32 @inflate(ptr noundef nonnull %536, i32 noundef 0) #13
  %975 = load i32, ptr %534, align 8, !tbaa !48
  %976 = icmp ult i32 %975, %888
  br i1 %976, label %977, label %978

977:                                              ; preds = %973
  store i32 0, ptr %540, align 4, !tbaa !33
  br label %978

978:                                              ; preds = %977, %973
  switch i32 %974, label %989 [
    i32 -2, label %979
    i32 2, label %979
    i32 -4, label %980
    i32 -3, label %981
  ]

979:                                              ; preds = %978, %978
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %993

980:                                              ; preds = %978
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %993

981:                                              ; preds = %978
  %982 = load i32, ptr %540, align 4, !tbaa !33
  %983 = icmp eq i32 %982, 1
  br i1 %983, label %984, label %985

984:                                              ; preds = %981
  store i32 0, ptr %531, align 8, !tbaa !34
  store i32 1, ptr %530, align 8, !tbaa !24
  store i32 0, ptr %532, align 8, !tbaa !26
  br label %993

985:                                              ; preds = %981
  %986 = load ptr, ptr %541, align 8, !tbaa !50
  %987 = icmp eq ptr %986, null
  %988 = select i1 %987, ptr @.str.6, ptr %986
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %988) #13
  br label %993

989:                                              ; preds = %978
  %990 = icmp ne i32 %975, 0
  %991 = icmp ne i32 %974, 1
  %992 = select i1 %990, i1 %991, i1 false
  br i1 %992, label %890, label %993, !llvm.loop !51

993:                                              ; preds = %989, %985, %984, %980, %979, %972, %969, %955, %894
  %994 = phi i32 [ %891, %969 ], [ %891, %972 ], [ %974, %979 ], [ -4, %980 ], [ 0, %984 ], [ -3, %985 ], [ %958, %955 ], [ %895, %894 ], [ %974, %989 ]
  %995 = load i32, ptr %534, align 8, !tbaa !48
  %996 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %888, i32 %995), !nosanitize !20
  %997 = extractvalue { i32, i1 } %996, 1, !nosanitize !20
  br i1 %997, label %998, label %999, !prof !21, !nosanitize !20

998:                                              ; preds = %993
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

999:                                              ; preds = %993
  %1000 = extractvalue { i32, i1 } %996, 0, !nosanitize !20
  store i32 %1000, ptr %0, align 8, !tbaa !19
  %1001 = load ptr, ptr %535, align 8, !tbaa !49
  %1002 = zext i32 %1000 to i64
  %1003 = sub nsw i64 0, %1002
  %1004 = getelementptr inbounds i8, ptr %1001, i64 %1003
  store ptr %1004, ptr %529, align 8, !tbaa !22
  switch i32 %994, label %1020 [
    i32 1, label %1005
    i32 0, label %1007
  ]

1005:                                             ; preds = %999
  store i32 0, ptr %540, align 4, !tbaa !33
  store i32 0, ptr %532, align 8, !tbaa !26
  br label %1007

1006:                                             ; preds = %584
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1020

1007:                                             ; preds = %1005, %999, %839, %833
  %1008 = load i32, ptr %0, align 8, !tbaa !19
  br label %1009

1009:                                             ; preds = %1007, %835
  %1010 = phi i32 [ %1008, %1007 ], [ %838, %835 ]
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1012, label %1187

1012:                                             ; preds = %1009
  %1013 = load i32, ptr %530, align 8, !tbaa !24
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1018, label %1015

1015:                                             ; preds = %1012
  %1016 = load i32, ptr %531, align 8, !tbaa !34
  %1017 = icmp eq i32 %1016, 0
  br i1 %1017, label %1187, label %1018

1018:                                             ; preds = %1015, %1012
  %1019 = load i32, ptr %532, align 8, !tbaa !26
  br label %584, !llvm.loop !52

1020:                                             ; preds = %1006, %999, %881, %795, %617, %603, %599
  %1021 = load i32, ptr %0, align 8, !tbaa !19
  %1022 = icmp eq i32 %1021, 0
  %1023 = sext i1 %1022 to i32
  br label %1187

1024:                                             ; preds = %579
  %1025 = icmp eq i32 %577, 1
  br i1 %1025, label %1026, label %1063

1026:                                             ; preds = %1024
  store i32 0, ptr %538, align 4, !tbaa !17
  %1027 = tail call ptr @__errno_location() #17
  store i32 0, ptr %1027, align 4, !tbaa !45
  br label %1028

1028:                                             ; preds = %1047, %1026
  %1029 = phi i32 [ 0, %1026 ], [ %1048, %1047 ]
  %1030 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %552, i32 %1029), !nosanitize !20
  %1031 = extractvalue { i32, i1 } %1030, 1, !nosanitize !20
  br i1 false, label %1032, label %1033, !prof !21, !nosanitize !20

1032:                                             ; preds = %1028
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1033:                                             ; preds = %1028
  %1034 = extractvalue { i32, i1 } %1030, 0, !nosanitize !20
  %1035 = call i32 @llvm.umin.i32(i32 %1034, i32 1073741824)
  %1036 = load i32, ptr %539, align 4, !tbaa !46
  %1037 = zext i32 %1029 to i64
  %1038 = getelementptr inbounds nuw i8, ptr %548, i64 %1037
  %1039 = zext nneg i32 %1035 to i64
  %1040 = call i64 @read(i32 noundef %1036, ptr noundef %1038, i64 noundef %1039) #13
  %1041 = trunc i64 %1040 to i32
  %1042 = icmp slt i32 %1041, 1
  br i1 %1042, label %1050, label %1043

1043:                                             ; preds = %1033
  %1044 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1029, i32 %1041), !nosanitize !20
  %1045 = extractvalue { i32, i1 } %1044, 1, !nosanitize !20
  br i1 %1045, label %1046, label %1047, !prof !21, !nosanitize !20

1046:                                             ; preds = %1043
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1047:                                             ; preds = %1043
  %1048 = extractvalue { i32, i1 } %1044, 0, !nosanitize !20
  %1049 = icmp ult i32 %1048, %552
  br i1 %1049, label %1028, label %1166, !llvm.loop !47

1050:                                             ; preds = %1033
  %1051 = icmp slt i32 %1041, 0
  br i1 %1051, label %1052, label %1062

1052:                                             ; preds = %1050
  %1053 = load i32, ptr %1027, align 4, !tbaa !45
  %1054 = icmp eq i32 %1053, 11
  br i1 %1054, label %1055, label %1059

1055:                                             ; preds = %1052
  store i32 1, ptr %538, align 4, !tbaa !17
  %1056 = icmp eq i32 %1029, 0
  br i1 %1056, label %1057, label %1168

1057:                                             ; preds = %1055
  %1058 = load i32, ptr %1027, align 4, !tbaa !45
  br label %1059

1059:                                             ; preds = %1057, %1052
  %1060 = phi i32 [ %1058, %1057 ], [ %1053, %1052 ]
  %1061 = call ptr @strerror(i32 noundef %1060) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1061) #13
  br label %1168

1062:                                             ; preds = %1050
  store i32 1, ptr %530, align 8, !tbaa !24
  br label %1168

1063:                                             ; preds = %1024
  store i32 %552, ptr %534, align 8, !tbaa !58
  store ptr %548, ptr %535, align 8, !tbaa !59
  br label %1064

1064:                                             ; preds = %1143, %1063
  %1065 = phi i32 [ 0, %1063 ], [ %1128, %1143 ]
  %1066 = load i32, ptr %531, align 8, !tbaa !34
  %1067 = icmp eq i32 %1066, 0
  br i1 %1067, label %1068, label %1127

1068:                                             ; preds = %1064
  %1069 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %1069, label %1147 [
    i32 0, label %1070
    i32 -5, label %1070
  ]

1070:                                             ; preds = %1068, %1068
  %1071 = load i32, ptr %530, align 8, !tbaa !24
  %1072 = icmp eq i32 %1071, 0
  br i1 %1072, label %1073, label %1123

1073:                                             ; preds = %1070
  %1074 = load i32, ptr %533, align 8, !tbaa !27
  %1075 = load ptr, ptr %537, align 8, !tbaa !29
  store i32 0, ptr %538, align 4, !tbaa !17
  %1076 = tail call ptr @__errno_location() #17
  store i32 0, ptr %1076, align 4, !tbaa !45
  br label %1077

1077:                                             ; preds = %1096, %1073
  %1078 = phi i32 [ 0, %1073 ], [ %1097, %1096 ]
  %1079 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1074, i32 %1078), !nosanitize !20
  %1080 = extractvalue { i32, i1 } %1079, 1, !nosanitize !20
  br i1 false, label %1081, label %1082, !prof !21, !nosanitize !20

1081:                                             ; preds = %1077
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1082:                                             ; preds = %1077
  %1083 = extractvalue { i32, i1 } %1079, 0, !nosanitize !20
  %1084 = call i32 @llvm.umin.i32(i32 %1083, i32 1073741824)
  %1085 = load i32, ptr %539, align 4, !tbaa !46
  %1086 = zext i32 %1078 to i64
  %1087 = getelementptr inbounds nuw i8, ptr %1075, i64 %1086
  %1088 = zext nneg i32 %1084 to i64
  %1089 = call i64 @read(i32 noundef %1085, ptr noundef %1087, i64 noundef %1088) #13
  %1090 = trunc i64 %1089 to i32
  %1091 = icmp slt i32 %1090, 1
  br i1 %1091, label %1099, label %1092

1092:                                             ; preds = %1082
  %1093 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1078, i32 %1090), !nosanitize !20
  %1094 = extractvalue { i32, i1 } %1093, 1, !nosanitize !20
  br i1 %1094, label %1095, label %1096, !prof !21, !nosanitize !20

1095:                                             ; preds = %1092
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1096:                                             ; preds = %1092
  %1097 = extractvalue { i32, i1 } %1093, 0, !nosanitize !20
  %1098 = icmp ult i32 %1097, %1074
  br i1 %1098, label %1077, label %1113, !llvm.loop !47

1099:                                             ; preds = %1082
  %1100 = icmp slt i32 %1090, 0
  br i1 %1100, label %1101, label %1108

1101:                                             ; preds = %1099
  %1102 = load i32, ptr %1076, align 4, !tbaa !45
  %1103 = icmp eq i32 %1102, 11
  br i1 %1103, label %1104, label %1109

1104:                                             ; preds = %1101
  store i32 1, ptr %538, align 4, !tbaa !17
  %1105 = icmp eq i32 %1078, 0
  br i1 %1105, label %1106, label %1113

1106:                                             ; preds = %1104
  %1107 = load i32, ptr %1076, align 4, !tbaa !45
  br label %1109

1108:                                             ; preds = %1099
  store i32 1, ptr %530, align 8, !tbaa !24
  br label %1113

1109:                                             ; preds = %1106, %1101
  %1110 = phi i32 [ %1107, %1106 ], [ %1102, %1101 ]
  %1111 = call ptr @strerror(i32 noundef %1110) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1111) #13
  %1112 = load i32, ptr %9, align 8, !tbaa !16
  br label %1147

1113:                                             ; preds = %1108, %1104, %1096
  %1114 = phi i32 [ %1078, %1108 ], [ %1078, %1104 ], [ %1097, %1096 ]
  %1115 = load i32, ptr %531, align 8, !tbaa !34
  %1116 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1115, i32 %1114), !nosanitize !20
  %1117 = extractvalue { i32, i1 } %1116, 1, !nosanitize !20
  br i1 %1117, label %1118, label %1119, !prof !21, !nosanitize !20

1118:                                             ; preds = %1113
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1119:                                             ; preds = %1113
  %1120 = extractvalue { i32, i1 } %1116, 0, !nosanitize !20
  store i32 %1120, ptr %531, align 8, !tbaa !34
  %1121 = load ptr, ptr %537, align 8, !tbaa !29
  store ptr %1121, ptr %536, align 8, !tbaa !35
  %1122 = icmp eq i32 %1120, 0
  br i1 %1122, label %1123, label %1127

1123:                                             ; preds = %1119, %1070
  %1124 = load i32, ptr %538, align 4, !tbaa !17
  %1125 = icmp eq i32 %1124, 0
  br i1 %1125, label %1126, label %1147

1126:                                             ; preds = %1123
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %1147

1127:                                             ; preds = %1119, %1064
  %1128 = call i32 @inflate(ptr noundef nonnull %536, i32 noundef 0) #13
  %1129 = load i32, ptr %534, align 8, !tbaa !48
  %1130 = icmp ult i32 %1129, %552
  br i1 %1130, label %1131, label %1132

1131:                                             ; preds = %1127
  store i32 0, ptr %540, align 4, !tbaa !33
  br label %1132

1132:                                             ; preds = %1131, %1127
  switch i32 %1128, label %1143 [
    i32 -2, label %1133
    i32 2, label %1133
    i32 -4, label %1134
    i32 -3, label %1135
  ]

1133:                                             ; preds = %1132, %1132
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %1147

1134:                                             ; preds = %1132
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1147

1135:                                             ; preds = %1132
  %1136 = load i32, ptr %540, align 4, !tbaa !33
  %1137 = icmp eq i32 %1136, 1
  br i1 %1137, label %1138, label %1139

1138:                                             ; preds = %1135
  store i32 0, ptr %531, align 8, !tbaa !34
  store i32 1, ptr %530, align 8, !tbaa !24
  store i32 0, ptr %532, align 8, !tbaa !26
  br label %1147

1139:                                             ; preds = %1135
  %1140 = load ptr, ptr %541, align 8, !tbaa !50
  %1141 = icmp eq ptr %1140, null
  %1142 = select i1 %1141, ptr @.str.6, ptr %1140
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1142) #13
  br label %1147

1143:                                             ; preds = %1132
  %1144 = icmp ne i32 %1129, 0
  %1145 = icmp ne i32 %1128, 1
  %1146 = select i1 %1144, i1 %1145, i1 false
  br i1 %1146, label %1064, label %1147, !llvm.loop !51

1147:                                             ; preds = %1143, %1139, %1138, %1134, %1133, %1126, %1123, %1109, %1068
  %1148 = phi i32 [ %1065, %1123 ], [ %1065, %1126 ], [ %1128, %1133 ], [ -4, %1134 ], [ 0, %1138 ], [ -3, %1139 ], [ %1112, %1109 ], [ %1128, %1143 ], [ %1069, %1068 ]
  %1149 = load i32, ptr %534, align 8, !tbaa !48
  %1150 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %552, i32 %1149), !nosanitize !20
  %1151 = extractvalue { i32, i1 } %1150, 1, !nosanitize !20
  br i1 %1151, label %1152, label %1153, !prof !21, !nosanitize !20

1152:                                             ; preds = %1147
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1153:                                             ; preds = %1147
  %1154 = extractvalue { i32, i1 } %1150, 0, !nosanitize !20
  %1155 = load ptr, ptr %535, align 8, !tbaa !49
  %1156 = zext i32 %1154 to i64
  %1157 = sub nsw i64 0, %1156
  %1158 = getelementptr inbounds i8, ptr %1155, i64 %1157
  store ptr %1158, ptr %529, align 8, !tbaa !22
  %1159 = icmp eq i32 %1148, 1
  br i1 %1159, label %1160, label %1161

1160:                                             ; preds = %1153
  store i32 0, ptr %540, align 4, !tbaa !33
  store i32 0, ptr %532, align 8, !tbaa !26
  br label %1164

1161:                                             ; preds = %1153
  %1162 = icmp ne i32 %1148, 0
  %1163 = sext i1 %1162 to i32
  br label %1164

1164:                                             ; preds = %1161, %1160
  %1165 = phi i32 [ 0, %1160 ], [ %1163, %1161 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1168

1166:                                             ; preds = %1047
  %1167 = zext i32 %1048 to i64
  br label %1168

1168:                                             ; preds = %1166, %1164, %1062, %1059, %1055, %565
  %1169 = phi i64 [ %1167, %1166 ], [ %1037, %1062 ], [ %1037, %1059 ], [ %1037, %1055 ], [ %558, %565 ], [ %1156, %1164 ]
  %1170 = phi i32 [ 0, %1166 ], [ 0, %1062 ], [ -1, %1059 ], [ 0, %1055 ], [ %569, %565 ], [ %1165, %1164 ]
  %1171 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %549, i64 %1169), !nosanitize !20
  %1172 = extractvalue { i64, i1 } %1171, 0, !nosanitize !20
  %1173 = extractvalue { i64, i1 } %1171, 1, !nosanitize !20
  br i1 %1173, label %1174, label %1175, !prof !21, !nosanitize !20

1174:                                             ; preds = %1168
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1175:                                             ; preds = %1168
  %1176 = getelementptr inbounds nuw i8, ptr %548, i64 %1169
  %1177 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %550, i64 %1169), !nosanitize !20
  %1178 = extractvalue { i64, i1 } %1177, 0, !nosanitize !20
  %1179 = extractvalue { i64, i1 } %1177, 1, !nosanitize !20
  br i1 %1179, label %1180, label %1181, !prof !21, !nosanitize !20

1180:                                             ; preds = %1181, %1175
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1181:                                             ; preds = %1175
  %1182 = load i64, ptr %542, align 8, !tbaa !23
  %1183 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1182, i64 %1169), !nosanitize !20
  %1184 = extractvalue { i64, i1 } %1183, 1, !nosanitize !20
  br i1 %1184, label %1180, label %1185, !prof !21, !nosanitize !20

1185:                                             ; preds = %1181
  %1186 = extractvalue { i64, i1 } %1183, 0, !nosanitize !20
  store i64 %1186, ptr %542, align 8, !tbaa !23
  br label %1187

1187:                                             ; preds = %1185, %1020, %1015, %1009, %884, %839
  %1188 = phi ptr [ %1176, %1185 ], [ %548, %1020 ], [ %548, %884 ], [ %548, %839 ], [ %548, %1009 ], [ %548, %1015 ]
  %1189 = phi i64 [ %1172, %1185 ], [ %549, %1020 ], [ %549, %884 ], [ %549, %839 ], [ %549, %1009 ], [ %549, %1015 ]
  %1190 = phi i64 [ %1178, %1185 ], [ %550, %1020 ], [ %550, %884 ], [ %550, %839 ], [ %550, %1009 ], [ %550, %1015 ]
  %1191 = phi i32 [ %1170, %1185 ], [ %1023, %1020 ], [ 0, %884 ], [ 0, %839 ], [ 0, %1009 ], [ 0, %1015 ]
  %1192 = icmp ne i64 %1189, 0
  %1193 = icmp eq i32 %1191, 0
  %1194 = select i1 %1192, i1 %1193, i1 false
  br i1 %1194, label %547, label %1195, !llvm.loop !60

1195:                                             ; preds = %1187
  %1196 = icmp eq i64 %1189, 0
  br i1 %1196, label %1203, label %1197

1197:                                             ; preds = %1195
  %1198 = load i32, ptr %530, align 8, !tbaa !24
  %1199 = icmp eq i32 %1198, 0
  br i1 %1199, label %1203, label %1200

1200:                                             ; preds = %1197, %573
  %1201 = phi i64 [ %1190, %1197 ], [ %550, %573 ]
  %1202 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1202, align 4, !tbaa !61
  br label %1203

1203:                                             ; preds = %1200, %1197, %1195
  %1204 = phi i64 [ %1201, %1200 ], [ %1190, %1197 ], [ %1190, %1195 ]
  %1205 = freeze i64 %1204
  %1206 = icmp eq i64 %1205, 0
  %1207 = load i8, ptr %2, align 1
  %1208 = zext i8 %1207 to i32
  br i1 %1206, label %1209, label %1210

1209:                                             ; preds = %1203, %510, %503, %385, %299, %121, %107, %103
  br label %1210

1210:                                             ; preds = %1209, %1203, %25, %11, %4, %1
  %1211 = phi i32 [ %31, %25 ], [ -1, %1 ], [ -1, %4 ], [ -1, %11 ], [ -1, %1209 ], [ %1208, %1203 ]
  call void @llvm.lifetime.end.p0(ptr %2)
  ret i32 %1211
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
  br i1 %3, label %1210, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1210

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
  br i1 %14, label %1210, label %15

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
  br label %1210

32:                                               ; preds = %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %34 = load i64, ptr %33, align 8, !tbaa !18
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %528, label %36

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

55:                                               ; preds = %525, %36
  %56 = phi i64 [ %526, %525 ], [ %34, %36 ]
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
  br label %525

81:                                               ; preds = %55
  %82 = load i32, ptr %39, align 8, !tbaa !24
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %40, align 8, !tbaa !25
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %528, label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %522, %87
  %89 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %89, label %510 [
    i32 0, label %90
    i32 1, label %346
    i32 2, label %390
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
  br label %1209

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
  br label %1209

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
  br label %343

121:                                              ; preds = %113
  %122 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %122, label %1209 [
    i32 0, label %123
    i32 -5, label %123
  ]

123:                                              ; preds = %121, %121
  %124 = load i32, ptr %39, align 8, !tbaa !24
  %125 = icmp eq i32 %124, 0
  %126 = load i32, ptr %40, align 8, !tbaa !34
  br i1 %125, label %127, label %311

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
  %mv.h27 = icmp sge i32 %237, 0
  %mv.h.fr28 = freeze i1 %mv.h27
  br i1 %mv.h.fr28, label %.mv.ph29.mv.fast, label %.mv.ph29

.mv.ph29.mv.fast:                                 ; preds = %241
  br label %247

247:                                              ; preds = %264, %.mv.ph29.mv.fast
  %248 = phi i32 [ 0, %.mv.ph29.mv.fast ], [ %265, %264 ]
  %249 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %242, i32 %248), !nosanitize !20
  %250 = extractvalue { i32, i1 } %249, 1, !nosanitize !20
  br i1 false, label %271, label %251, !prof !21, !nosanitize !20

251:                                              ; preds = %247
  %252 = extractvalue { i32, i1 } %249, 0, !nosanitize !20
  %253 = tail call i32 @llvm.umin.i32(i32 %252, i32 1073741824)
  %254 = load i32, ptr %49, align 4, !tbaa !46
  %255 = zext i32 %248 to i64
  %256 = getelementptr inbounds nuw i8, ptr %245, i64 %255
  %257 = zext nneg i32 %253 to i64
  %258 = tail call i64 @read(i32 noundef %254, ptr noundef %256, i64 noundef %257) #13
  %259 = trunc i64 %258 to i32
  %260 = icmp slt i32 %259, 1
  br i1 %260, label %289, label %261

261:                                              ; preds = %251
  %262 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %248, i32 %259), !nosanitize !20
  %263 = extractvalue { i32, i1 } %262, 1, !nosanitize !20
  br i1 false, label %285, label %264, !prof !21, !nosanitize !20

264:                                              ; preds = %261
  %265 = extractvalue { i32, i1 } %262, 0, !nosanitize !20
  %266 = icmp ult i32 %265, %242
  br i1 %266, label %247, label %.loopexit19, !llvm.loop !47

.mv.ph29:                                         ; preds = %241
  br label %267

267:                                              ; preds = %286, %.mv.ph29
  %268 = phi i32 [ 0, %.mv.ph29 ], [ %287, %286 ]
  %269 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %242, i32 %268), !nosanitize !20
  %270 = extractvalue { i32, i1 } %269, 1, !nosanitize !20
  br i1 false, label %271, label %272, !prof !21, !nosanitize !20

271:                                              ; preds = %247, %267
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

272:                                              ; preds = %267
  %273 = extractvalue { i32, i1 } %269, 0, !nosanitize !20
  %274 = tail call i32 @llvm.umin.i32(i32 %273, i32 1073741824)
  %275 = load i32, ptr %49, align 4, !tbaa !46
  %276 = zext i32 %268 to i64
  %277 = getelementptr inbounds nuw i8, ptr %245, i64 %276
  %278 = zext nneg i32 %274 to i64
  %279 = tail call i64 @read(i32 noundef %275, ptr noundef %277, i64 noundef %278) #13
  %280 = trunc i64 %279 to i32
  %281 = icmp slt i32 %280, 1
  br i1 %281, label %289, label %282

282:                                              ; preds = %272
  %283 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %268, i32 %280), !nosanitize !20
  %284 = extractvalue { i32, i1 } %283, 1, !nosanitize !20
  br i1 %284, label %285, label %286, !prof !21, !nosanitize !20

285:                                              ; preds = %261, %282
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

286:                                              ; preds = %282
  %287 = extractvalue { i32, i1 } %283, 0, !nosanitize !20
  %288 = icmp ult i32 %287, %242
  br i1 %288, label %267, label %.loopexit19, !llvm.loop !47

289:                                              ; preds = %251, %272
  %.lcssa23 = phi i32 [ %280, %272 ], [ %259, %251 ]
  %.lcssa20 = phi i32 [ %268, %272 ], [ %248, %251 ]
  %290 = icmp slt i32 %.lcssa23, 0
  br i1 %290, label %291, label %298

291:                                              ; preds = %289
  %292 = load i32, ptr %246, align 4, !tbaa !45
  %293 = icmp eq i32 %292, 11
  br i1 %293, label %294, label %299

294:                                              ; preds = %291
  store i32 1, ptr %48, align 4, !tbaa !17
  %295 = icmp eq i32 %.lcssa20, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %294
  %297 = load i32, ptr %246, align 4, !tbaa !45
  br label %299

298:                                              ; preds = %289
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %302

299:                                              ; preds = %296, %291
  %300 = phi i32 [ %297, %296 ], [ %292, %291 ]
  %301 = tail call ptr @strerror(i32 noundef %300) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %301) #13
  br label %1209

.loopexit19:                                      ; preds = %264, %286
  %.lcssa26 = phi i32 [ %287, %286 ], [ %265, %264 ]
  br label %302

302:                                              ; preds = %.loopexit19, %298, %294
  %303 = phi i32 [ %.lcssa20, %298 ], [ %.lcssa20, %294 ], [ %.lcssa26, %.loopexit19 ]
  %304 = load i32, ptr %40, align 8, !tbaa !34
  %305 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %304, i32 %303), !nosanitize !20
  %306 = extractvalue { i32, i1 } %305, 1, !nosanitize !20
  br i1 %306, label %307, label %308, !prof !21, !nosanitize !20

307:                                              ; preds = %302
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

308:                                              ; preds = %302
  %309 = extractvalue { i32, i1 } %305, 0, !nosanitize !20
  store i32 %309, ptr %40, align 8, !tbaa !34
  %310 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %310, ptr %46, align 8, !tbaa !35
  br label %311

311:                                              ; preds = %308, %123
  %312 = phi i32 [ %309, %308 ], [ %126, %123 ]
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %343, label %314

314:                                              ; preds = %311
  %315 = load i32, ptr %48, align 4, !tbaa !17
  %316 = icmp ne i32 %315, 0
  %317 = icmp ult i32 %312, 4
  %318 = and i1 %317, %316
  br i1 %318, label %343, label %319

319:                                              ; preds = %314
  %320 = icmp ugt i32 %312, 3
  %321 = load ptr, ptr %46, align 8, !tbaa !35
  br i1 %320, label %322, label %339

322:                                              ; preds = %319
  %323 = load i8, ptr %321, align 1, !tbaa !36
  %324 = icmp eq i8 %323, 31
  br i1 %324, label %325, label %339

325:                                              ; preds = %322
  %326 = getelementptr inbounds nuw i8, ptr %321, i64 1
  %327 = load i8, ptr %326, align 1, !tbaa !36
  %328 = icmp eq i8 %327, -117
  br i1 %328, label %329, label %339

329:                                              ; preds = %325
  %330 = getelementptr inbounds nuw i8, ptr %321, i64 2
  %331 = load i8, ptr %330, align 1, !tbaa !36
  %332 = icmp eq i8 %331, 8
  br i1 %332, label %333, label %339

333:                                              ; preds = %329
  %334 = getelementptr inbounds nuw i8, ptr %321, i64 3
  %335 = load i8, ptr %334, align 1, !tbaa !36
  %336 = icmp ult i8 %335, 32
  br i1 %336, label %337, label %339

337:                                              ; preds = %333
  %338 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  store i32 1, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %54, align 8, !tbaa !32
  br label %511

339:                                              ; preds = %333, %329, %325, %322, %319
  %340 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %340, ptr %37, align 8, !tbaa !22
  %341 = zext i32 %312 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %340, ptr align 1 %321, i64 %341, i1 false)
  %342 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %342, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %513

343:                                              ; preds = %314, %311, %116
  %344 = load i32, ptr %41, align 8, !tbaa !26
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %523, label %511

346:                                              ; preds = %88
  %347 = load ptr, ptr %44, align 8, !tbaa !30
  %348 = load i32, ptr %42, align 8, !tbaa !27
  %349 = shl i32 %348, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %350 = tail call ptr @__errno_location() #17
  store i32 0, ptr %350, align 4, !tbaa !45
  store i32 0, ptr %0, align 4, !tbaa !45
  br label %351

351:                                              ; preds = %371, %346
  %352 = phi i32 [ %372, %371 ], [ 0, %346 ]
  %353 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %349, i32 %352), !nosanitize !20
  %354 = extractvalue { i32, i1 } %353, 1, !nosanitize !20
  br i1 false, label %355, label %356, !prof !21, !nosanitize !20

355:                                              ; preds = %351
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

356:                                              ; preds = %351
  %357 = extractvalue { i32, i1 } %353, 0, !nosanitize !20
  %358 = tail call i32 @llvm.umin.i32(i32 %357, i32 1073741824)
  %359 = load i32, ptr %49, align 4, !tbaa !46
  %360 = zext i32 %352 to i64
  %361 = getelementptr inbounds nuw i8, ptr %347, i64 %360
  %362 = zext nneg i32 %358 to i64
  %363 = tail call i64 @read(i32 noundef %359, ptr noundef %361, i64 noundef %362) #13
  %364 = trunc i64 %363 to i32
  %365 = icmp slt i32 %364, 1
  br i1 %365, label %374, label %366

366:                                              ; preds = %356
  %367 = load i32, ptr %0, align 4, !tbaa !45
  %368 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %367, i32 %364), !nosanitize !20
  %369 = extractvalue { i32, i1 } %368, 1, !nosanitize !20
  br i1 %369, label %370, label %371, !prof !21, !nosanitize !20

370:                                              ; preds = %366
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

371:                                              ; preds = %366
  %372 = extractvalue { i32, i1 } %368, 0, !nosanitize !20
  store i32 %372, ptr %0, align 4, !tbaa !45
  %373 = icmp ult i32 %372, %349
  br i1 %373, label %351, label %388, !llvm.loop !47

374:                                              ; preds = %356
  %375 = icmp slt i32 %364, 0
  br i1 %375, label %376, label %384

376:                                              ; preds = %374
  %377 = load i32, ptr %350, align 4, !tbaa !45
  %378 = icmp eq i32 %377, 11
  br i1 %378, label %379, label %385

379:                                              ; preds = %376
  store i32 1, ptr %48, align 4, !tbaa !17
  %380 = load i32, ptr %0, align 4, !tbaa !45
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %388

382:                                              ; preds = %379
  %383 = load i32, ptr %350, align 4, !tbaa !45
  br label %385

384:                                              ; preds = %374
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %388

385:                                              ; preds = %382, %376
  %386 = phi i32 [ %383, %382 ], [ %377, %376 ]
  %387 = tail call ptr @strerror(i32 noundef %386) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %387) #13
  br label %1209

388:                                              ; preds = %384, %379, %371
  %389 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %389, ptr %37, align 8, !tbaa !22
  br label %523

390:                                              ; preds = %88
  %391 = load i32, ptr %42, align 8, !tbaa !27
  %392 = shl i32 %391, 1
  store i32 %392, ptr %43, align 8, !tbaa !48
  %393 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %393, ptr %45, align 8, !tbaa !49
  br label %394

394:                                              ; preds = %493, %390
  %395 = phi i32 [ 0, %390 ], [ %478, %493 ]
  %396 = load i32, ptr %40, align 8, !tbaa !34
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %477

398:                                              ; preds = %394
  %399 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %399, label %497 [
    i32 0, label %400
    i32 -5, label %400
  ]

400:                                              ; preds = %398, %398
  %401 = load i32, ptr %39, align 8, !tbaa !24
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %473

403:                                              ; preds = %400
  %404 = load i32, ptr %42, align 8, !tbaa !27
  %405 = load ptr, ptr %47, align 8, !tbaa !29
  store i32 0, ptr %48, align 4, !tbaa !17
  %406 = tail call ptr @__errno_location() #17
  store i32 0, ptr %406, align 4, !tbaa !45
  %mv.h = icmp sge i32 %404, 0
  %mv.h.fr = freeze i1 %mv.h
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %403
  br label %407

407:                                              ; preds = %424, %.mv.ph.mv.fast
  %408 = phi i32 [ 0, %.mv.ph.mv.fast ], [ %425, %424 ]
  %409 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %404, i32 %408), !nosanitize !20
  %410 = extractvalue { i32, i1 } %409, 1, !nosanitize !20
  br i1 false, label %431, label %411, !prof !21, !nosanitize !20

411:                                              ; preds = %407
  %412 = extractvalue { i32, i1 } %409, 0, !nosanitize !20
  %413 = tail call i32 @llvm.umin.i32(i32 %412, i32 1073741824)
  %414 = load i32, ptr %49, align 4, !tbaa !46
  %415 = zext i32 %408 to i64
  %416 = getelementptr inbounds nuw i8, ptr %405, i64 %415
  %417 = zext nneg i32 %413 to i64
  %418 = tail call i64 @read(i32 noundef %414, ptr noundef %416, i64 noundef %417) #13
  %419 = trunc i64 %418 to i32
  %420 = icmp slt i32 %419, 1
  br i1 %420, label %449, label %421

421:                                              ; preds = %411
  %422 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %408, i32 %419), !nosanitize !20
  %423 = extractvalue { i32, i1 } %422, 1, !nosanitize !20
  br i1 false, label %445, label %424, !prof !21, !nosanitize !20

424:                                              ; preds = %421
  %425 = extractvalue { i32, i1 } %422, 0, !nosanitize !20
  %426 = icmp ult i32 %425, %404
  br i1 %426, label %407, label %.loopexit, !llvm.loop !47

.mv.ph:                                           ; preds = %403
  br label %427

427:                                              ; preds = %446, %.mv.ph
  %428 = phi i32 [ 0, %.mv.ph ], [ %447, %446 ]
  %429 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %404, i32 %428), !nosanitize !20
  %430 = extractvalue { i32, i1 } %429, 1, !nosanitize !20
  br i1 false, label %431, label %432, !prof !21, !nosanitize !20

431:                                              ; preds = %407, %427
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

432:                                              ; preds = %427
  %433 = extractvalue { i32, i1 } %429, 0, !nosanitize !20
  %434 = tail call i32 @llvm.umin.i32(i32 %433, i32 1073741824)
  %435 = load i32, ptr %49, align 4, !tbaa !46
  %436 = zext i32 %428 to i64
  %437 = getelementptr inbounds nuw i8, ptr %405, i64 %436
  %438 = zext nneg i32 %434 to i64
  %439 = tail call i64 @read(i32 noundef %435, ptr noundef %437, i64 noundef %438) #13
  %440 = trunc i64 %439 to i32
  %441 = icmp slt i32 %440, 1
  br i1 %441, label %449, label %442

442:                                              ; preds = %432
  %443 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %428, i32 %440), !nosanitize !20
  %444 = extractvalue { i32, i1 } %443, 1, !nosanitize !20
  br i1 %444, label %445, label %446, !prof !21, !nosanitize !20

445:                                              ; preds = %421, %442
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

446:                                              ; preds = %442
  %447 = extractvalue { i32, i1 } %443, 0, !nosanitize !20
  %448 = icmp ult i32 %447, %404
  br i1 %448, label %427, label %.loopexit, !llvm.loop !47

449:                                              ; preds = %411, %432
  %.lcssa4 = phi i32 [ %440, %432 ], [ %419, %411 ]
  %.lcssa1 = phi i32 [ %428, %432 ], [ %408, %411 ]
  %450 = icmp slt i32 %.lcssa4, 0
  br i1 %450, label %451, label %458

451:                                              ; preds = %449
  %452 = load i32, ptr %406, align 4, !tbaa !45
  %453 = icmp eq i32 %452, 11
  br i1 %453, label %454, label %459

454:                                              ; preds = %451
  store i32 1, ptr %48, align 4, !tbaa !17
  %455 = icmp eq i32 %.lcssa1, 0
  br i1 %455, label %456, label %463

456:                                              ; preds = %454
  %457 = load i32, ptr %406, align 4, !tbaa !45
  br label %459

458:                                              ; preds = %449
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %463

459:                                              ; preds = %456, %451
  %460 = phi i32 [ %457, %456 ], [ %452, %451 ]
  %461 = tail call ptr @strerror(i32 noundef %460) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %461) #13
  %462 = load i32, ptr %9, align 8, !tbaa !16
  br label %497

.loopexit:                                        ; preds = %424, %446
  %.lcssa7 = phi i32 [ %447, %446 ], [ %425, %424 ]
  br label %463

463:                                              ; preds = %.loopexit, %458, %454
  %464 = phi i32 [ %.lcssa1, %458 ], [ %.lcssa1, %454 ], [ %.lcssa7, %.loopexit ]
  %465 = load i32, ptr %40, align 8, !tbaa !34
  %466 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %465, i32 %464), !nosanitize !20
  %467 = extractvalue { i32, i1 } %466, 1, !nosanitize !20
  br i1 %467, label %468, label %469, !prof !21, !nosanitize !20

468:                                              ; preds = %463
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

469:                                              ; preds = %463
  %470 = extractvalue { i32, i1 } %466, 0, !nosanitize !20
  store i32 %470, ptr %40, align 8, !tbaa !34
  %471 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %471, ptr %46, align 8, !tbaa !35
  %472 = icmp eq i32 %470, 0
  br i1 %472, label %473, label %477

473:                                              ; preds = %469, %400
  %474 = load i32, ptr %48, align 4, !tbaa !17
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %497

476:                                              ; preds = %473
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %497

477:                                              ; preds = %469, %394
  %478 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %479 = load i32, ptr %43, align 8, !tbaa !48
  %480 = icmp ult i32 %479, %392
  br i1 %480, label %481, label %482

481:                                              ; preds = %477
  store i32 0, ptr %50, align 4, !tbaa !33
  br label %482

482:                                              ; preds = %481, %477
  switch i32 %478, label %493 [
    i32 -2, label %483
    i32 2, label %483
    i32 -4, label %484
    i32 -3, label %485
  ]

483:                                              ; preds = %482, %482
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %497

484:                                              ; preds = %482
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %497

485:                                              ; preds = %482
  %486 = load i32, ptr %50, align 4, !tbaa !33
  %487 = icmp eq i32 %486, 1
  br i1 %487, label %488, label %489

488:                                              ; preds = %485
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %497

489:                                              ; preds = %485
  %490 = load ptr, ptr %51, align 8, !tbaa !50
  %491 = icmp eq ptr %490, null
  %492 = select i1 %491, ptr @.str.6, ptr %490
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %492) #13
  br label %497

493:                                              ; preds = %482
  %494 = icmp ne i32 %479, 0
  %495 = icmp ne i32 %478, 1
  %496 = select i1 %494, i1 %495, i1 false
  br i1 %496, label %394, label %497, !llvm.loop !51

497:                                              ; preds = %493, %489, %488, %484, %483, %476, %473, %459, %398
  %498 = phi i32 [ %395, %473 ], [ %395, %476 ], [ %478, %483 ], [ -4, %484 ], [ 0, %488 ], [ -3, %489 ], [ %462, %459 ], [ %399, %398 ], [ %478, %493 ]
  %499 = load i32, ptr %43, align 8, !tbaa !48
  %500 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %392, i32 %499), !nosanitize !20
  %501 = extractvalue { i32, i1 } %500, 1, !nosanitize !20
  br i1 %501, label %502, label %503, !prof !21, !nosanitize !20

502:                                              ; preds = %497
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

503:                                              ; preds = %497
  %504 = extractvalue { i32, i1 } %500, 0, !nosanitize !20
  store i32 %504, ptr %0, align 8, !tbaa !19
  %505 = load ptr, ptr %45, align 8, !tbaa !49
  %506 = zext i32 %504 to i64
  %507 = sub nsw i64 0, %506
  %508 = getelementptr inbounds i8, ptr %505, i64 %507
  store ptr %508, ptr %37, align 8, !tbaa !22
  switch i32 %498, label %1209 [
    i32 1, label %509
    i32 0, label %511
  ]

509:                                              ; preds = %503
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %511

510:                                              ; preds = %88
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1209

511:                                              ; preds = %509, %503, %343, %337
  %512 = load i32, ptr %0, align 8, !tbaa !19
  br label %513

513:                                              ; preds = %511, %339
  %514 = phi i32 [ %512, %511 ], [ %342, %339 ]
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %516, label %523

516:                                              ; preds = %513
  %517 = load i32, ptr %39, align 8, !tbaa !24
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %522, label %519

519:                                              ; preds = %516
  %520 = load i32, ptr %40, align 8, !tbaa !34
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %523, label %522

522:                                              ; preds = %519, %516
  br label %88, !llvm.loop !52

523:                                              ; preds = %519, %513, %388, %343
  %524 = load i64, ptr %33, align 8, !tbaa !18
  br label %525

525:                                              ; preds = %523, %79
  %526 = phi i64 [ %524, %523 ], [ %80, %79 ]
  %527 = icmp eq i64 %526, 0
  br i1 %527, label %528, label %55, !llvm.loop !53

528:                                              ; preds = %525, %84, %32
  %529 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %530 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %531 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %532 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %533 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %534 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %535 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %536 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %537 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %538 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %539 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %540 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %541 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %542 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %543 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %544 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %545 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %546 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %547

547:                                              ; preds = %1187, %528
  %548 = phi ptr [ %2, %528 ], [ %1188, %1187 ]
  %549 = phi i64 [ 1, %528 ], [ %1189, %1187 ]
  %550 = phi i64 [ 0, %528 ], [ %1190, %1187 ]
  %551 = call i64 @llvm.umin.i64(i64 %549, i64 4294967295)
  %552 = trunc nuw i64 %551 to i32
  %553 = load i32, ptr %0, align 8, !tbaa !19
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %570, label %555

555:                                              ; preds = %547
  %556 = call i32 @llvm.umin.i32(i32 %553, i32 %552)
  %557 = load ptr, ptr %529, align 8, !tbaa !22
  %558 = zext i32 %556 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %548, ptr align 1 %557, i64 %558, i1 false)
  %559 = load ptr, ptr %529, align 8, !tbaa !22
  %560 = getelementptr inbounds nuw i8, ptr %559, i64 %558
  store ptr %560, ptr %529, align 8, !tbaa !22
  %561 = load i32, ptr %0, align 8, !tbaa !19
  %562 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %561, i32 %556), !nosanitize !20
  %563 = extractvalue { i32, i1 } %562, 1, !nosanitize !20
  br i1 %563, label %564, label %565, !prof !21, !nosanitize !20

564:                                              ; preds = %555
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

565:                                              ; preds = %555
  %566 = extractvalue { i32, i1 } %562, 0, !nosanitize !20
  store i32 %566, ptr %0, align 8, !tbaa !19
  %567 = load i32, ptr %9, align 8, !tbaa !16
  %568 = icmp ne i32 %567, 0
  %569 = sext i1 %568 to i32
  br label %1168

570:                                              ; preds = %547
  %571 = load i32, ptr %530, align 8, !tbaa !24
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %576, label %573

573:                                              ; preds = %570
  %574 = load i32, ptr %531, align 8, !tbaa !25
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %1200, label %576

576:                                              ; preds = %573, %570
  %577 = load i32, ptr %532, align 8, !tbaa !26
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %583, label %579

579:                                              ; preds = %576
  %580 = load i32, ptr %533, align 8, !tbaa !27
  %581 = shl i32 %580, 1
  %582 = icmp ugt i32 %581, %552
  br i1 %582, label %583, label %1004

583:                                              ; preds = %579, %576
  br label %584

584:                                              ; preds = %998, %583
  %585 = phi i32 [ %999, %998 ], [ %577, %583 ]
  switch i32 %585, label %986 [
    i32 0, label %586
    i32 1, label %822
    i32 2, label %866
  ]

586:                                              ; preds = %584
  %587 = load i32, ptr %533, align 8, !tbaa !27
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %589, label %606

589:                                              ; preds = %586
  %590 = load i32, ptr %544, align 4, !tbaa !28
  %591 = zext i32 %590 to i64
  %592 = call noalias ptr @malloc(i64 noundef %591) #16
  store ptr %592, ptr %537, align 8, !tbaa !29
  %593 = shl i32 %590, 1
  %594 = zext i32 %593 to i64
  %595 = call noalias ptr @malloc(i64 noundef %594) #16
  store ptr %595, ptr %543, align 8, !tbaa !30
  %596 = icmp eq ptr %592, null
  %597 = icmp eq ptr %595, null
  %598 = or i1 %596, %597
  br i1 %598, label %599, label %600

599:                                              ; preds = %589
  call void @free(ptr noundef %595) #13
  call void @free(ptr noundef %592) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1000

600:                                              ; preds = %589
  store i32 %590, ptr %533, align 8, !tbaa !27
  store i32 0, ptr %531, align 8, !tbaa !25
  store ptr null, ptr %536, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %545, i8 0, i64 24, i1 false)
  %601 = call i32 @inflateInit2_(ptr noundef nonnull %536, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %606, label %603

603:                                              ; preds = %600
  %604 = load ptr, ptr %543, align 8, !tbaa !30
  call void @free(ptr noundef %604) #13
  %605 = load ptr, ptr %537, align 8, !tbaa !29
  call void @free(ptr noundef %605) #13
  store i32 0, ptr %533, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1000

606:                                              ; preds = %600, %586
  %607 = load i32, ptr %546, align 8, !tbaa !32
  %608 = icmp eq i32 %607, -1
  br i1 %608, label %612, label %609

609:                                              ; preds = %606
  %610 = load i32, ptr %540, align 4, !tbaa !33
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %612, label %617

612:                                              ; preds = %609, %606
  %613 = call i32 @inflateReset(ptr noundef nonnull %536) #13
  store i32 2, ptr %532, align 8, !tbaa !26
  %614 = load i32, ptr %540, align 4, !tbaa !33
  %615 = icmp ne i32 %614, -1
  %616 = zext i1 %615 to i32
  store i32 %616, ptr %540, align 4, !tbaa !33
  store i32 0, ptr %546, align 8, !tbaa !32
  br label %819

617:                                              ; preds = %609
  %618 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %618, label %1000 [
    i32 0, label %619
    i32 -5, label %619
  ]

619:                                              ; preds = %617, %617
  %620 = load i32, ptr %530, align 8, !tbaa !24
  %621 = icmp eq i32 %620, 0
  %622 = load i32, ptr %531, align 8, !tbaa !34
  br i1 %621, label %623, label %787

623:                                              ; preds = %619
  %624 = icmp eq i32 %622, 0
  br i1 %624, label %731, label %625

625:                                              ; preds = %623
  %626 = load ptr, ptr %537, align 8, !tbaa !29
  %627 = load ptr, ptr %536, align 8, !tbaa !35
  %628 = icmp eq ptr %627, %626
  br i1 %628, label %731, label %629

629:                                              ; preds = %625
  %630 = ptrtoint ptr %627 to i64
  %631 = ptrtoint ptr %626 to i64
  %632 = zext i32 %622 to i64
  %633 = icmp ult i32 %622, 4
  %634 = sub i64 %631, %630
  %635 = icmp ult i64 %634, 32
  %636 = or i1 %633, %635
  br i1 %636, label %676, label %637

637:                                              ; preds = %629
  %638 = icmp ult i32 %622, 32
  br i1 %638, label %660, label %639

639:                                              ; preds = %637
  %640 = and i64 %632, 4294967264
  br label %641

641:                                              ; preds = %641, %639
  %642 = phi i64 [ 0, %639 ], [ %649, %641 ]
  %643 = getelementptr i8, ptr %626, i64 %642
  %644 = getelementptr i8, ptr %627, i64 %642
  %645 = getelementptr i8, ptr %644, i64 16
  %646 = load <16 x i8>, ptr %644, align 1, !tbaa !36
  %647 = load <16 x i8>, ptr %645, align 1, !tbaa !36
  %648 = getelementptr i8, ptr %643, i64 16
  store <16 x i8> %646, ptr %643, align 1, !tbaa !36
  store <16 x i8> %647, ptr %648, align 1, !tbaa !36
  %649 = add nuw i64 %642, 32
  %650 = icmp eq i64 %649, %640
  br i1 %650, label %651, label %641, !llvm.loop !82

651:                                              ; preds = %641
  %652 = icmp eq i64 %640, %632
  br i1 %652, label %729, label %653

653:                                              ; preds = %651
  %654 = getelementptr i8, ptr %626, i64 %640
  %655 = getelementptr i8, ptr %627, i64 %640
  %656 = trunc nuw i64 %640 to i32
  %657 = sub i32 %622, %656
  %658 = and i64 %632, 28
  %659 = icmp eq i64 %658, 0
  br i1 %659, label %676, label %660

660:                                              ; preds = %653, %637
  %661 = phi i64 [ %640, %653 ], [ 0, %637 ]
  %662 = and i64 %632, 4294967292
  %663 = getelementptr i8, ptr %626, i64 %662
  %664 = getelementptr i8, ptr %627, i64 %662
  %665 = trunc nuw i64 %662 to i32
  %666 = sub i32 %622, %665
  br label %667

667:                                              ; preds = %667, %660
  %668 = phi i64 [ %661, %660 ], [ %672, %667 ]
  %669 = getelementptr i8, ptr %626, i64 %668
  %670 = getelementptr i8, ptr %627, i64 %668
  %671 = load <4 x i8>, ptr %670, align 1, !tbaa !36
  store <4 x i8> %671, ptr %669, align 1, !tbaa !36
  %672 = add nuw i64 %668, 4
  %673 = icmp eq i64 %672, %662
  br i1 %673, label %674, label %667, !llvm.loop !83

674:                                              ; preds = %667
  %675 = icmp eq i64 %662, %632
  br i1 %675, label %729, label %676

676:                                              ; preds = %674, %653, %629
  %677 = phi ptr [ %626, %629 ], [ %654, %653 ], [ %663, %674 ]
  %678 = phi ptr [ %627, %629 ], [ %655, %653 ], [ %664, %674 ]
  %679 = phi i32 [ %622, %629 ], [ %657, %653 ], [ %666, %674 ]
  %680 = add i32 %679, -1
  %681 = and i32 %679, 7
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %694, label %683

683:                                              ; preds = %683, %676
  %684 = phi ptr [ %690, %683 ], [ %677, %676 ]
  %685 = phi ptr [ %691, %683 ], [ %678, %676 ]
  %686 = phi i32 [ %689, %683 ], [ %679, %676 ]
  %687 = phi i32 [ %692, %683 ], [ 0, %676 ]
  %688 = load i8, ptr %685, align 1, !tbaa !36
  store i8 %688, ptr %684, align 1, !tbaa !36
  %689 = add i32 %686, -1
  %690 = getelementptr inbounds nuw i8, ptr %684, i64 1
  %691 = getelementptr inbounds nuw i8, ptr %685, i64 1
  %692 = add i32 %687, 1
  %693 = icmp eq i32 %692, %681
  br i1 %693, label %694, label %683, !llvm.loop !84

694:                                              ; preds = %683, %676
  %695 = phi ptr [ %677, %676 ], [ %690, %683 ]
  %696 = phi ptr [ %678, %676 ], [ %691, %683 ]
  %697 = phi i32 [ %679, %676 ], [ %689, %683 ]
  %698 = icmp ult i32 %680, 7
  br i1 %698, label %729, label %699

699:                                              ; preds = %699, %694
  %700 = phi ptr [ %726, %699 ], [ %695, %694 ]
  %701 = phi ptr [ %727, %699 ], [ %696, %694 ]
  %702 = phi i32 [ %725, %699 ], [ %697, %694 ]
  %703 = load i8, ptr %701, align 1, !tbaa !36
  store i8 %703, ptr %700, align 1, !tbaa !36
  %704 = getelementptr inbounds nuw i8, ptr %700, i64 1
  %705 = getelementptr inbounds nuw i8, ptr %701, i64 1
  %706 = load i8, ptr %705, align 1, !tbaa !36
  store i8 %706, ptr %704, align 1, !tbaa !36
  %707 = getelementptr inbounds nuw i8, ptr %700, i64 2
  %708 = getelementptr inbounds nuw i8, ptr %701, i64 2
  %709 = load i8, ptr %708, align 1, !tbaa !36
  store i8 %709, ptr %707, align 1, !tbaa !36
  %710 = getelementptr inbounds nuw i8, ptr %700, i64 3
  %711 = getelementptr inbounds nuw i8, ptr %701, i64 3
  %712 = load i8, ptr %711, align 1, !tbaa !36
  store i8 %712, ptr %710, align 1, !tbaa !36
  %713 = getelementptr inbounds nuw i8, ptr %700, i64 4
  %714 = getelementptr inbounds nuw i8, ptr %701, i64 4
  %715 = load i8, ptr %714, align 1, !tbaa !36
  store i8 %715, ptr %713, align 1, !tbaa !36
  %716 = getelementptr inbounds nuw i8, ptr %700, i64 5
  %717 = getelementptr inbounds nuw i8, ptr %701, i64 5
  %718 = load i8, ptr %717, align 1, !tbaa !36
  store i8 %718, ptr %716, align 1, !tbaa !36
  %719 = getelementptr inbounds nuw i8, ptr %700, i64 6
  %720 = getelementptr inbounds nuw i8, ptr %701, i64 6
  %721 = load i8, ptr %720, align 1, !tbaa !36
  store i8 %721, ptr %719, align 1, !tbaa !36
  %722 = getelementptr inbounds nuw i8, ptr %700, i64 7
  %723 = getelementptr inbounds nuw i8, ptr %701, i64 7
  %724 = load i8, ptr %723, align 1, !tbaa !36
  store i8 %724, ptr %722, align 1, !tbaa !36
  %725 = add i32 %702, -8
  %726 = getelementptr inbounds nuw i8, ptr %700, i64 8
  %727 = getelementptr inbounds nuw i8, ptr %701, i64 8
  %728 = icmp eq i32 %725, 0
  br i1 %728, label %729, label %699, !llvm.loop !85

729:                                              ; preds = %699, %694, %674, %651
  %730 = load i32, ptr %531, align 8, !tbaa !34
  br label %731

731:                                              ; preds = %729, %625, %623
  %732 = phi i32 [ %730, %729 ], [ %622, %625 ], [ 0, %623 ]
  %733 = load i32, ptr %533, align 8, !tbaa !27
  %734 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %733, i32 %732), !nosanitize !20
  %735 = extractvalue { i32, i1 } %734, 1, !nosanitize !20
  br i1 %735, label %736, label %737, !prof !21, !nosanitize !20

736:                                              ; preds = %731
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

737:                                              ; preds = %731
  %738 = extractvalue { i32, i1 } %734, 0, !nosanitize !20
  %739 = load ptr, ptr %537, align 8, !tbaa !29
  %740 = zext i32 %732 to i64
  %741 = getelementptr inbounds nuw i8, ptr %739, i64 %740
  store i32 0, ptr %538, align 4, !tbaa !17
  %742 = tail call ptr @__errno_location() #17
  store i32 0, ptr %742, align 4, !tbaa !45
  br label %743

743:                                              ; preds = %762, %737
  %744 = phi i32 [ 0, %737 ], [ %763, %762 ]
  %745 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %738, i32 %744), !nosanitize !20
  %746 = extractvalue { i32, i1 } %745, 1, !nosanitize !20
  br i1 false, label %747, label %748, !prof !21, !nosanitize !20

747:                                              ; preds = %743
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

748:                                              ; preds = %743
  %749 = extractvalue { i32, i1 } %745, 0, !nosanitize !20
  %750 = call i32 @llvm.umin.i32(i32 %749, i32 1073741824)
  %751 = load i32, ptr %539, align 4, !tbaa !46
  %752 = zext i32 %744 to i64
  %753 = getelementptr inbounds nuw i8, ptr %741, i64 %752
  %754 = zext nneg i32 %750 to i64
  %755 = call i64 @read(i32 noundef %751, ptr noundef %753, i64 noundef %754) #13
  %756 = trunc i64 %755 to i32
  %757 = icmp slt i32 %756, 1
  br i1 %757, label %765, label %758

758:                                              ; preds = %748
  %759 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %744, i32 %756), !nosanitize !20
  %760 = extractvalue { i32, i1 } %759, 1, !nosanitize !20
  br i1 %760, label %761, label %762, !prof !21, !nosanitize !20

761:                                              ; preds = %758
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

762:                                              ; preds = %758
  %763 = extractvalue { i32, i1 } %759, 0, !nosanitize !20
  %764 = icmp ult i32 %763, %738
  br i1 %764, label %743, label %778, !llvm.loop !47

765:                                              ; preds = %748
  %766 = icmp slt i32 %756, 0
  br i1 %766, label %767, label %774

767:                                              ; preds = %765
  %768 = load i32, ptr %742, align 4, !tbaa !45
  %769 = icmp eq i32 %768, 11
  br i1 %769, label %770, label %775

770:                                              ; preds = %767
  store i32 1, ptr %538, align 4, !tbaa !17
  %771 = icmp eq i32 %744, 0
  br i1 %771, label %772, label %778

772:                                              ; preds = %770
  %773 = load i32, ptr %742, align 4, !tbaa !45
  br label %775

774:                                              ; preds = %765
  store i32 1, ptr %530, align 8, !tbaa !24
  br label %778

775:                                              ; preds = %772, %767
  %776 = phi i32 [ %773, %772 ], [ %768, %767 ]
  %777 = call ptr @strerror(i32 noundef %776) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %777) #13
  br label %1000

778:                                              ; preds = %774, %770, %762
  %779 = phi i32 [ %744, %774 ], [ %744, %770 ], [ %763, %762 ]
  %780 = load i32, ptr %531, align 8, !tbaa !34
  %781 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %780, i32 %779), !nosanitize !20
  %782 = extractvalue { i32, i1 } %781, 1, !nosanitize !20
  br i1 %782, label %783, label %784, !prof !21, !nosanitize !20

783:                                              ; preds = %778
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

784:                                              ; preds = %778
  %785 = extractvalue { i32, i1 } %781, 0, !nosanitize !20
  store i32 %785, ptr %531, align 8, !tbaa !34
  %786 = load ptr, ptr %537, align 8, !tbaa !29
  store ptr %786, ptr %536, align 8, !tbaa !35
  br label %787

787:                                              ; preds = %784, %619
  %788 = phi i32 [ %785, %784 ], [ %622, %619 ]
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %819, label %790

790:                                              ; preds = %787
  %791 = load i32, ptr %538, align 4, !tbaa !17
  %792 = icmp ne i32 %791, 0
  %793 = icmp ult i32 %788, 4
  %794 = and i1 %793, %792
  br i1 %794, label %819, label %795

795:                                              ; preds = %790
  %796 = icmp ugt i32 %788, 3
  %797 = load ptr, ptr %536, align 8, !tbaa !35
  br i1 %796, label %798, label %815

798:                                              ; preds = %795
  %799 = load i8, ptr %797, align 1, !tbaa !36
  %800 = icmp eq i8 %799, 31
  br i1 %800, label %801, label %815

801:                                              ; preds = %798
  %802 = getelementptr inbounds nuw i8, ptr %797, i64 1
  %803 = load i8, ptr %802, align 1, !tbaa !36
  %804 = icmp eq i8 %803, -117
  br i1 %804, label %805, label %815

805:                                              ; preds = %801
  %806 = getelementptr inbounds nuw i8, ptr %797, i64 2
  %807 = load i8, ptr %806, align 1, !tbaa !36
  %808 = icmp eq i8 %807, 8
  br i1 %808, label %809, label %815

809:                                              ; preds = %805
  %810 = getelementptr inbounds nuw i8, ptr %797, i64 3
  %811 = load i8, ptr %810, align 1, !tbaa !36
  %812 = icmp ult i8 %811, 32
  br i1 %812, label %813, label %815

813:                                              ; preds = %809
  %814 = call i32 @inflateReset(ptr noundef nonnull %536) #13
  store i32 2, ptr %532, align 8, !tbaa !26
  store i32 1, ptr %540, align 4, !tbaa !33
  store i32 0, ptr %546, align 8, !tbaa !32
  br label %987

815:                                              ; preds = %809, %805, %801, %798, %795
  %816 = load ptr, ptr %543, align 8, !tbaa !30
  store ptr %816, ptr %529, align 8, !tbaa !22
  %817 = zext i32 %788 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %816, ptr align 1 %797, i64 %817, i1 false)
  %818 = load i32, ptr %531, align 8, !tbaa !34
  store i32 %818, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %531, align 8, !tbaa !34
  store i32 1, ptr %532, align 8, !tbaa !26
  br label %989

819:                                              ; preds = %790, %787, %612
  %820 = load i32, ptr %532, align 8, !tbaa !26
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %1187, label %987

822:                                              ; preds = %584
  %823 = load ptr, ptr %543, align 8, !tbaa !30
  %824 = load i32, ptr %533, align 8, !tbaa !27
  %825 = shl i32 %824, 1
  store i32 0, ptr %538, align 4, !tbaa !17
  %826 = tail call ptr @__errno_location() #17
  store i32 0, ptr %826, align 4, !tbaa !45
  store i32 0, ptr %0, align 4, !tbaa !45
  br label %827

827:                                              ; preds = %847, %822
  %828 = phi i32 [ %848, %847 ], [ 0, %822 ]
  %829 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %825, i32 %828), !nosanitize !20
  %830 = extractvalue { i32, i1 } %829, 1, !nosanitize !20
  br i1 false, label %831, label %832, !prof !21, !nosanitize !20

831:                                              ; preds = %827
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

832:                                              ; preds = %827
  %833 = extractvalue { i32, i1 } %829, 0, !nosanitize !20
  %834 = call i32 @llvm.umin.i32(i32 %833, i32 1073741824)
  %835 = load i32, ptr %539, align 4, !tbaa !46
  %836 = zext i32 %828 to i64
  %837 = getelementptr inbounds nuw i8, ptr %823, i64 %836
  %838 = zext nneg i32 %834 to i64
  %839 = call i64 @read(i32 noundef %835, ptr noundef %837, i64 noundef %838) #13
  %840 = trunc i64 %839 to i32
  %841 = icmp slt i32 %840, 1
  br i1 %841, label %850, label %842

842:                                              ; preds = %832
  %843 = load i32, ptr %0, align 4, !tbaa !45
  %844 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %843, i32 %840), !nosanitize !20
  %845 = extractvalue { i32, i1 } %844, 1, !nosanitize !20
  br i1 %845, label %846, label %847, !prof !21, !nosanitize !20

846:                                              ; preds = %842
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

847:                                              ; preds = %842
  %848 = extractvalue { i32, i1 } %844, 0, !nosanitize !20
  store i32 %848, ptr %0, align 4, !tbaa !45
  %849 = icmp ult i32 %848, %825
  br i1 %849, label %827, label %864, !llvm.loop !47

850:                                              ; preds = %832
  %851 = icmp slt i32 %840, 0
  br i1 %851, label %852, label %860

852:                                              ; preds = %850
  %853 = load i32, ptr %826, align 4, !tbaa !45
  %854 = icmp eq i32 %853, 11
  br i1 %854, label %855, label %861

855:                                              ; preds = %852
  store i32 1, ptr %538, align 4, !tbaa !17
  %856 = load i32, ptr %0, align 4, !tbaa !45
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %858, label %864

858:                                              ; preds = %855
  %859 = load i32, ptr %826, align 4, !tbaa !45
  br label %861

860:                                              ; preds = %850
  store i32 1, ptr %530, align 8, !tbaa !24
  br label %864

861:                                              ; preds = %858, %852
  %862 = phi i32 [ %859, %858 ], [ %853, %852 ]
  %863 = call ptr @strerror(i32 noundef %862) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %863) #13
  br label %1000

864:                                              ; preds = %860, %855, %847
  %865 = load ptr, ptr %543, align 8, !tbaa !30
  store ptr %865, ptr %529, align 8, !tbaa !22
  br label %1187

866:                                              ; preds = %584
  %867 = load i32, ptr %533, align 8, !tbaa !27
  %868 = shl i32 %867, 1
  store i32 %868, ptr %534, align 8, !tbaa !48
  %869 = load ptr, ptr %543, align 8, !tbaa !30
  store ptr %869, ptr %535, align 8, !tbaa !49
  br label %870

870:                                              ; preds = %969, %866
  %871 = phi i32 [ 0, %866 ], [ %954, %969 ]
  %872 = load i32, ptr %531, align 8, !tbaa !34
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %874, label %953

874:                                              ; preds = %870
  %875 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %875, label %973 [
    i32 0, label %876
    i32 -5, label %876
  ]

876:                                              ; preds = %874, %874
  %877 = load i32, ptr %530, align 8, !tbaa !24
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %879, label %949

879:                                              ; preds = %876
  %880 = load i32, ptr %533, align 8, !tbaa !27
  %881 = load ptr, ptr %537, align 8, !tbaa !29
  store i32 0, ptr %538, align 4, !tbaa !17
  %882 = tail call ptr @__errno_location() #17
  store i32 0, ptr %882, align 4, !tbaa !45
  %mv.h16 = icmp sge i32 %880, 0
  %mv.h.fr17 = freeze i1 %mv.h16
  br i1 %mv.h.fr17, label %.mv.ph18.mv.fast, label %.mv.ph18

.mv.ph18.mv.fast:                                 ; preds = %879
  br label %883

883:                                              ; preds = %900, %.mv.ph18.mv.fast
  %884 = phi i32 [ 0, %.mv.ph18.mv.fast ], [ %901, %900 ]
  %885 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %880, i32 %884), !nosanitize !20
  %886 = extractvalue { i32, i1 } %885, 1, !nosanitize !20
  br i1 false, label %907, label %887, !prof !21, !nosanitize !20

887:                                              ; preds = %883
  %888 = extractvalue { i32, i1 } %885, 0, !nosanitize !20
  %889 = call i32 @llvm.umin.i32(i32 %888, i32 1073741824)
  %890 = load i32, ptr %539, align 4, !tbaa !46
  %891 = zext i32 %884 to i64
  %892 = getelementptr inbounds nuw i8, ptr %881, i64 %891
  %893 = zext nneg i32 %889 to i64
  %894 = call i64 @read(i32 noundef %890, ptr noundef %892, i64 noundef %893) #13
  %895 = trunc i64 %894 to i32
  %896 = icmp slt i32 %895, 1
  br i1 %896, label %925, label %897

897:                                              ; preds = %887
  %898 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %884, i32 %895), !nosanitize !20
  %899 = extractvalue { i32, i1 } %898, 1, !nosanitize !20
  br i1 false, label %921, label %900, !prof !21, !nosanitize !20

900:                                              ; preds = %897
  %901 = extractvalue { i32, i1 } %898, 0, !nosanitize !20
  %902 = icmp ult i32 %901, %880
  br i1 %902, label %883, label %.loopexit8, !llvm.loop !47

.mv.ph18:                                         ; preds = %879
  br label %903

903:                                              ; preds = %922, %.mv.ph18
  %904 = phi i32 [ 0, %.mv.ph18 ], [ %923, %922 ]
  %905 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %880, i32 %904), !nosanitize !20
  %906 = extractvalue { i32, i1 } %905, 1, !nosanitize !20
  br i1 false, label %907, label %908, !prof !21, !nosanitize !20

907:                                              ; preds = %883, %903
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

908:                                              ; preds = %903
  %909 = extractvalue { i32, i1 } %905, 0, !nosanitize !20
  %910 = call i32 @llvm.umin.i32(i32 %909, i32 1073741824)
  %911 = load i32, ptr %539, align 4, !tbaa !46
  %912 = zext i32 %904 to i64
  %913 = getelementptr inbounds nuw i8, ptr %881, i64 %912
  %914 = zext nneg i32 %910 to i64
  %915 = call i64 @read(i32 noundef %911, ptr noundef %913, i64 noundef %914) #13
  %916 = trunc i64 %915 to i32
  %917 = icmp slt i32 %916, 1
  br i1 %917, label %925, label %918

918:                                              ; preds = %908
  %919 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %904, i32 %916), !nosanitize !20
  %920 = extractvalue { i32, i1 } %919, 1, !nosanitize !20
  br i1 %920, label %921, label %922, !prof !21, !nosanitize !20

921:                                              ; preds = %897, %918
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

922:                                              ; preds = %918
  %923 = extractvalue { i32, i1 } %919, 0, !nosanitize !20
  %924 = icmp ult i32 %923, %880
  br i1 %924, label %903, label %.loopexit8, !llvm.loop !47

925:                                              ; preds = %887, %908
  %.lcssa12 = phi i32 [ %916, %908 ], [ %895, %887 ]
  %.lcssa9 = phi i32 [ %904, %908 ], [ %884, %887 ]
  %926 = icmp slt i32 %.lcssa12, 0
  br i1 %926, label %927, label %934

927:                                              ; preds = %925
  %928 = load i32, ptr %882, align 4, !tbaa !45
  %929 = icmp eq i32 %928, 11
  br i1 %929, label %930, label %935

930:                                              ; preds = %927
  store i32 1, ptr %538, align 4, !tbaa !17
  %931 = icmp eq i32 %.lcssa9, 0
  br i1 %931, label %932, label %939

932:                                              ; preds = %930
  %933 = load i32, ptr %882, align 4, !tbaa !45
  br label %935

934:                                              ; preds = %925
  store i32 1, ptr %530, align 8, !tbaa !24
  br label %939

935:                                              ; preds = %932, %927
  %936 = phi i32 [ %933, %932 ], [ %928, %927 ]
  %937 = call ptr @strerror(i32 noundef %936) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %937) #13
  %938 = load i32, ptr %9, align 8, !tbaa !16
  br label %973

.loopexit8:                                       ; preds = %900, %922
  %.lcssa15 = phi i32 [ %923, %922 ], [ %901, %900 ]
  br label %939

939:                                              ; preds = %.loopexit8, %934, %930
  %940 = phi i32 [ %.lcssa9, %934 ], [ %.lcssa9, %930 ], [ %.lcssa15, %.loopexit8 ]
  %941 = load i32, ptr %531, align 8, !tbaa !34
  %942 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %941, i32 %940), !nosanitize !20
  %943 = extractvalue { i32, i1 } %942, 1, !nosanitize !20
  br i1 %943, label %944, label %945, !prof !21, !nosanitize !20

944:                                              ; preds = %939
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

945:                                              ; preds = %939
  %946 = extractvalue { i32, i1 } %942, 0, !nosanitize !20
  store i32 %946, ptr %531, align 8, !tbaa !34
  %947 = load ptr, ptr %537, align 8, !tbaa !29
  store ptr %947, ptr %536, align 8, !tbaa !35
  %948 = icmp eq i32 %946, 0
  br i1 %948, label %949, label %953

949:                                              ; preds = %945, %876
  %950 = load i32, ptr %538, align 4, !tbaa !17
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %952, label %973

952:                                              ; preds = %949
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %973

953:                                              ; preds = %945, %870
  %954 = call i32 @inflate(ptr noundef nonnull %536, i32 noundef 0) #13
  %955 = load i32, ptr %534, align 8, !tbaa !48
  %956 = icmp ult i32 %955, %868
  br i1 %956, label %957, label %958

957:                                              ; preds = %953
  store i32 0, ptr %540, align 4, !tbaa !33
  br label %958

958:                                              ; preds = %957, %953
  switch i32 %954, label %969 [
    i32 -2, label %959
    i32 2, label %959
    i32 -4, label %960
    i32 -3, label %961
  ]

959:                                              ; preds = %958, %958
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %973

960:                                              ; preds = %958
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %973

961:                                              ; preds = %958
  %962 = load i32, ptr %540, align 4, !tbaa !33
  %963 = icmp eq i32 %962, 1
  br i1 %963, label %964, label %965

964:                                              ; preds = %961
  store i32 0, ptr %531, align 8, !tbaa !34
  store i32 1, ptr %530, align 8, !tbaa !24
  store i32 0, ptr %532, align 8, !tbaa !26
  br label %973

965:                                              ; preds = %961
  %966 = load ptr, ptr %541, align 8, !tbaa !50
  %967 = icmp eq ptr %966, null
  %968 = select i1 %967, ptr @.str.6, ptr %966
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %968) #13
  br label %973

969:                                              ; preds = %958
  %970 = icmp ne i32 %955, 0
  %971 = icmp ne i32 %954, 1
  %972 = select i1 %970, i1 %971, i1 false
  br i1 %972, label %870, label %973, !llvm.loop !51

973:                                              ; preds = %969, %965, %964, %960, %959, %952, %949, %935, %874
  %974 = phi i32 [ %871, %949 ], [ %871, %952 ], [ %954, %959 ], [ -4, %960 ], [ 0, %964 ], [ -3, %965 ], [ %938, %935 ], [ %954, %969 ], [ %875, %874 ]
  %975 = load i32, ptr %534, align 8, !tbaa !48
  %976 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %868, i32 %975), !nosanitize !20
  %977 = extractvalue { i32, i1 } %976, 1, !nosanitize !20
  br i1 %977, label %978, label %979, !prof !21, !nosanitize !20

978:                                              ; preds = %973
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

979:                                              ; preds = %973
  %980 = extractvalue { i32, i1 } %976, 0, !nosanitize !20
  store i32 %980, ptr %0, align 8, !tbaa !19
  %981 = load ptr, ptr %535, align 8, !tbaa !49
  %982 = zext i32 %980 to i64
  %983 = sub nsw i64 0, %982
  %984 = getelementptr inbounds i8, ptr %981, i64 %983
  store ptr %984, ptr %529, align 8, !tbaa !22
  switch i32 %974, label %1000 [
    i32 1, label %985
    i32 0, label %987
  ]

985:                                              ; preds = %979
  store i32 0, ptr %540, align 4, !tbaa !33
  store i32 0, ptr %532, align 8, !tbaa !26
  br label %987

986:                                              ; preds = %584
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1000

987:                                              ; preds = %985, %979, %819, %813
  %988 = load i32, ptr %0, align 8, !tbaa !19
  br label %989

989:                                              ; preds = %987, %815
  %990 = phi i32 [ %988, %987 ], [ %818, %815 ]
  %991 = icmp eq i32 %990, 0
  br i1 %991, label %992, label %1187

992:                                              ; preds = %989
  %993 = load i32, ptr %530, align 8, !tbaa !24
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %998, label %995

995:                                              ; preds = %992
  %996 = load i32, ptr %531, align 8, !tbaa !34
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %1187, label %998

998:                                              ; preds = %995, %992
  %999 = load i32, ptr %532, align 8, !tbaa !26
  br label %584, !llvm.loop !52

1000:                                             ; preds = %986, %979, %861, %775, %617, %603, %599
  %1001 = load i32, ptr %0, align 8, !tbaa !19
  %1002 = icmp eq i32 %1001, 0
  %1003 = sext i1 %1002 to i32
  br label %1187

1004:                                             ; preds = %579
  %1005 = icmp eq i32 %577, 1
  br i1 %1005, label %1006, label %1043

1006:                                             ; preds = %1004
  store i32 0, ptr %538, align 4, !tbaa !17
  %1007 = tail call ptr @__errno_location() #17
  store i32 0, ptr %1007, align 4, !tbaa !45
  br label %1008

1008:                                             ; preds = %1027, %1006
  %1009 = phi i32 [ 0, %1006 ], [ %1028, %1027 ]
  %1010 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %552, i32 %1009), !nosanitize !20
  %1011 = extractvalue { i32, i1 } %1010, 1, !nosanitize !20
  br i1 false, label %1012, label %1013, !prof !21, !nosanitize !20

1012:                                             ; preds = %1008
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1013:                                             ; preds = %1008
  %1014 = extractvalue { i32, i1 } %1010, 0, !nosanitize !20
  %1015 = call i32 @llvm.umin.i32(i32 %1014, i32 1073741824)
  %1016 = load i32, ptr %539, align 4, !tbaa !46
  %1017 = zext i32 %1009 to i64
  %1018 = getelementptr inbounds nuw i8, ptr %548, i64 %1017
  %1019 = zext nneg i32 %1015 to i64
  %1020 = call i64 @read(i32 noundef %1016, ptr noundef %1018, i64 noundef %1019) #13
  %1021 = trunc i64 %1020 to i32
  %1022 = icmp slt i32 %1021, 1
  br i1 %1022, label %1030, label %1023

1023:                                             ; preds = %1013
  %1024 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1009, i32 %1021), !nosanitize !20
  %1025 = extractvalue { i32, i1 } %1024, 1, !nosanitize !20
  br i1 %1025, label %1026, label %1027, !prof !21, !nosanitize !20

1026:                                             ; preds = %1023
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1027:                                             ; preds = %1023
  %1028 = extractvalue { i32, i1 } %1024, 0, !nosanitize !20
  %1029 = icmp ult i32 %1028, %552
  br i1 %1029, label %1008, label %1166, !llvm.loop !47

1030:                                             ; preds = %1013
  %1031 = icmp slt i32 %1021, 0
  br i1 %1031, label %1032, label %1042

1032:                                             ; preds = %1030
  %1033 = load i32, ptr %1007, align 4, !tbaa !45
  %1034 = icmp eq i32 %1033, 11
  br i1 %1034, label %1035, label %1039

1035:                                             ; preds = %1032
  store i32 1, ptr %538, align 4, !tbaa !17
  %1036 = icmp eq i32 %1009, 0
  br i1 %1036, label %1037, label %1168

1037:                                             ; preds = %1035
  %1038 = load i32, ptr %1007, align 4, !tbaa !45
  br label %1039

1039:                                             ; preds = %1037, %1032
  %1040 = phi i32 [ %1038, %1037 ], [ %1033, %1032 ]
  %1041 = call ptr @strerror(i32 noundef %1040) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1041) #13
  br label %1168

1042:                                             ; preds = %1030
  store i32 1, ptr %530, align 8, !tbaa !24
  br label %1168

1043:                                             ; preds = %1004
  store i32 %552, ptr %534, align 8, !tbaa !58
  store ptr %548, ptr %535, align 8, !tbaa !59
  br label %1044

1044:                                             ; preds = %1143, %1043
  %1045 = phi i32 [ 0, %1043 ], [ %1128, %1143 ]
  %1046 = load i32, ptr %531, align 8, !tbaa !34
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1048, label %1127

1048:                                             ; preds = %1044
  %1049 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %1049, label %1147 [
    i32 0, label %1050
    i32 -5, label %1050
  ]

1050:                                             ; preds = %1048, %1048
  %1051 = load i32, ptr %530, align 8, !tbaa !24
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1053, label %1123

1053:                                             ; preds = %1050
  %1054 = load i32, ptr %533, align 8, !tbaa !27
  %1055 = load ptr, ptr %537, align 8, !tbaa !29
  store i32 0, ptr %538, align 4, !tbaa !17
  %1056 = tail call ptr @__errno_location() #17
  store i32 0, ptr %1056, align 4, !tbaa !45
  %mv.h38 = icmp sge i32 %1054, 0
  %mv.h.fr39 = freeze i1 %mv.h38
  br i1 %mv.h.fr39, label %.mv.ph40.mv.fast, label %.mv.ph40

.mv.ph40.mv.fast:                                 ; preds = %1053
  br label %1057

1057:                                             ; preds = %1074, %.mv.ph40.mv.fast
  %1058 = phi i32 [ 0, %.mv.ph40.mv.fast ], [ %1075, %1074 ]
  %1059 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1054, i32 %1058), !nosanitize !20
  %1060 = extractvalue { i32, i1 } %1059, 1, !nosanitize !20
  br i1 false, label %1081, label %1061, !prof !21, !nosanitize !20

1061:                                             ; preds = %1057
  %1062 = extractvalue { i32, i1 } %1059, 0, !nosanitize !20
  %1063 = call i32 @llvm.umin.i32(i32 %1062, i32 1073741824)
  %1064 = load i32, ptr %539, align 4, !tbaa !46
  %1065 = zext i32 %1058 to i64
  %1066 = getelementptr inbounds nuw i8, ptr %1055, i64 %1065
  %1067 = zext nneg i32 %1063 to i64
  %1068 = call i64 @read(i32 noundef %1064, ptr noundef %1066, i64 noundef %1067) #13
  %1069 = trunc i64 %1068 to i32
  %1070 = icmp slt i32 %1069, 1
  br i1 %1070, label %1099, label %1071

1071:                                             ; preds = %1061
  %1072 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1058, i32 %1069), !nosanitize !20
  %1073 = extractvalue { i32, i1 } %1072, 1, !nosanitize !20
  br i1 false, label %1095, label %1074, !prof !21, !nosanitize !20

1074:                                             ; preds = %1071
  %1075 = extractvalue { i32, i1 } %1072, 0, !nosanitize !20
  %1076 = icmp ult i32 %1075, %1054
  br i1 %1076, label %1057, label %.loopexit30, !llvm.loop !47

.mv.ph40:                                         ; preds = %1053
  br label %1077

1077:                                             ; preds = %1096, %.mv.ph40
  %1078 = phi i32 [ 0, %.mv.ph40 ], [ %1097, %1096 ]
  %1079 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1054, i32 %1078), !nosanitize !20
  %1080 = extractvalue { i32, i1 } %1079, 1, !nosanitize !20
  br i1 false, label %1081, label %1082, !prof !21, !nosanitize !20

1081:                                             ; preds = %1057, %1077
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1082:                                             ; preds = %1077
  %1083 = extractvalue { i32, i1 } %1079, 0, !nosanitize !20
  %1084 = call i32 @llvm.umin.i32(i32 %1083, i32 1073741824)
  %1085 = load i32, ptr %539, align 4, !tbaa !46
  %1086 = zext i32 %1078 to i64
  %1087 = getelementptr inbounds nuw i8, ptr %1055, i64 %1086
  %1088 = zext nneg i32 %1084 to i64
  %1089 = call i64 @read(i32 noundef %1085, ptr noundef %1087, i64 noundef %1088) #13
  %1090 = trunc i64 %1089 to i32
  %1091 = icmp slt i32 %1090, 1
  br i1 %1091, label %1099, label %1092

1092:                                             ; preds = %1082
  %1093 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1078, i32 %1090), !nosanitize !20
  %1094 = extractvalue { i32, i1 } %1093, 1, !nosanitize !20
  br i1 %1094, label %1095, label %1096, !prof !21, !nosanitize !20

1095:                                             ; preds = %1071, %1092
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1096:                                             ; preds = %1092
  %1097 = extractvalue { i32, i1 } %1093, 0, !nosanitize !20
  %1098 = icmp ult i32 %1097, %1054
  br i1 %1098, label %1077, label %.loopexit30, !llvm.loop !47

1099:                                             ; preds = %1061, %1082
  %.lcssa34 = phi i32 [ %1090, %1082 ], [ %1069, %1061 ]
  %.lcssa31 = phi i32 [ %1078, %1082 ], [ %1058, %1061 ]
  %1100 = icmp slt i32 %.lcssa34, 0
  br i1 %1100, label %1101, label %1108

1101:                                             ; preds = %1099
  %1102 = load i32, ptr %1056, align 4, !tbaa !45
  %1103 = icmp eq i32 %1102, 11
  br i1 %1103, label %1104, label %1109

1104:                                             ; preds = %1101
  store i32 1, ptr %538, align 4, !tbaa !17
  %1105 = icmp eq i32 %.lcssa31, 0
  br i1 %1105, label %1106, label %1113

1106:                                             ; preds = %1104
  %1107 = load i32, ptr %1056, align 4, !tbaa !45
  br label %1109

1108:                                             ; preds = %1099
  store i32 1, ptr %530, align 8, !tbaa !24
  br label %1113

1109:                                             ; preds = %1106, %1101
  %1110 = phi i32 [ %1107, %1106 ], [ %1102, %1101 ]
  %1111 = call ptr @strerror(i32 noundef %1110) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1111) #13
  %1112 = load i32, ptr %9, align 8, !tbaa !16
  br label %1147

.loopexit30:                                      ; preds = %1074, %1096
  %.lcssa37 = phi i32 [ %1097, %1096 ], [ %1075, %1074 ]
  br label %1113

1113:                                             ; preds = %.loopexit30, %1108, %1104
  %1114 = phi i32 [ %.lcssa31, %1108 ], [ %.lcssa31, %1104 ], [ %.lcssa37, %.loopexit30 ]
  %1115 = load i32, ptr %531, align 8, !tbaa !34
  %1116 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1115, i32 %1114), !nosanitize !20
  %1117 = extractvalue { i32, i1 } %1116, 1, !nosanitize !20
  br i1 %1117, label %1118, label %1119, !prof !21, !nosanitize !20

1118:                                             ; preds = %1113
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1119:                                             ; preds = %1113
  %1120 = extractvalue { i32, i1 } %1116, 0, !nosanitize !20
  store i32 %1120, ptr %531, align 8, !tbaa !34
  %1121 = load ptr, ptr %537, align 8, !tbaa !29
  store ptr %1121, ptr %536, align 8, !tbaa !35
  %1122 = icmp eq i32 %1120, 0
  br i1 %1122, label %1123, label %1127

1123:                                             ; preds = %1119, %1050
  %1124 = load i32, ptr %538, align 4, !tbaa !17
  %1125 = icmp eq i32 %1124, 0
  br i1 %1125, label %1126, label %1147

1126:                                             ; preds = %1123
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %1147

1127:                                             ; preds = %1119, %1044
  %1128 = call i32 @inflate(ptr noundef nonnull %536, i32 noundef 0) #13
  %1129 = load i32, ptr %534, align 8, !tbaa !48
  %1130 = icmp ult i32 %1129, %552
  br i1 %1130, label %1131, label %1132

1131:                                             ; preds = %1127
  store i32 0, ptr %540, align 4, !tbaa !33
  br label %1132

1132:                                             ; preds = %1131, %1127
  switch i32 %1128, label %1143 [
    i32 -2, label %1133
    i32 2, label %1133
    i32 -4, label %1134
    i32 -3, label %1135
  ]

1133:                                             ; preds = %1132, %1132
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %1147

1134:                                             ; preds = %1132
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1147

1135:                                             ; preds = %1132
  %1136 = load i32, ptr %540, align 4, !tbaa !33
  %1137 = icmp eq i32 %1136, 1
  br i1 %1137, label %1138, label %1139

1138:                                             ; preds = %1135
  store i32 0, ptr %531, align 8, !tbaa !34
  store i32 1, ptr %530, align 8, !tbaa !24
  store i32 0, ptr %532, align 8, !tbaa !26
  br label %1147

1139:                                             ; preds = %1135
  %1140 = load ptr, ptr %541, align 8, !tbaa !50
  %1141 = icmp eq ptr %1140, null
  %1142 = select i1 %1141, ptr @.str.6, ptr %1140
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1142) #13
  br label %1147

1143:                                             ; preds = %1132
  %1144 = icmp ne i32 %1129, 0
  %1145 = icmp ne i32 %1128, 1
  %1146 = select i1 %1144, i1 %1145, i1 false
  br i1 %1146, label %1044, label %1147, !llvm.loop !51

1147:                                             ; preds = %1143, %1139, %1138, %1134, %1133, %1126, %1123, %1109, %1048
  %1148 = phi i32 [ %1045, %1123 ], [ %1045, %1126 ], [ %1128, %1133 ], [ -4, %1134 ], [ 0, %1138 ], [ -3, %1139 ], [ %1112, %1109 ], [ %1049, %1048 ], [ %1128, %1143 ]
  %1149 = load i32, ptr %534, align 8, !tbaa !48
  %1150 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %552, i32 %1149), !nosanitize !20
  %1151 = extractvalue { i32, i1 } %1150, 1, !nosanitize !20
  br i1 %1151, label %1152, label %1153, !prof !21, !nosanitize !20

1152:                                             ; preds = %1147
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1153:                                             ; preds = %1147
  %1154 = extractvalue { i32, i1 } %1150, 0, !nosanitize !20
  %1155 = load ptr, ptr %535, align 8, !tbaa !49
  %1156 = zext i32 %1154 to i64
  %1157 = sub nsw i64 0, %1156
  %1158 = getelementptr inbounds i8, ptr %1155, i64 %1157
  store ptr %1158, ptr %529, align 8, !tbaa !22
  %1159 = icmp eq i32 %1148, 1
  br i1 %1159, label %1160, label %1161

1160:                                             ; preds = %1153
  store i32 0, ptr %540, align 4, !tbaa !33
  store i32 0, ptr %532, align 8, !tbaa !26
  br label %1164

1161:                                             ; preds = %1153
  %1162 = icmp ne i32 %1148, 0
  %1163 = sext i1 %1162 to i32
  br label %1164

1164:                                             ; preds = %1161, %1160
  %1165 = phi i32 [ 0, %1160 ], [ %1163, %1161 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1168

1166:                                             ; preds = %1027
  %1167 = zext i32 %1028 to i64
  br label %1168

1168:                                             ; preds = %1166, %1164, %1042, %1039, %1035, %565
  %1169 = phi i64 [ %1167, %1166 ], [ %1017, %1042 ], [ %1017, %1039 ], [ %1017, %1035 ], [ %558, %565 ], [ %1156, %1164 ]
  %1170 = phi i32 [ 0, %1166 ], [ 0, %1042 ], [ -1, %1039 ], [ 0, %1035 ], [ %569, %565 ], [ %1165, %1164 ]
  %1171 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %549, i64 %1169), !nosanitize !20
  %1172 = extractvalue { i64, i1 } %1171, 0, !nosanitize !20
  %1173 = extractvalue { i64, i1 } %1171, 1, !nosanitize !20
  br i1 %1173, label %1174, label %1175, !prof !21, !nosanitize !20

1174:                                             ; preds = %1168
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1175:                                             ; preds = %1168
  %1176 = getelementptr inbounds nuw i8, ptr %548, i64 %1169
  %1177 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %550, i64 %1169), !nosanitize !20
  %1178 = extractvalue { i64, i1 } %1177, 0, !nosanitize !20
  %1179 = extractvalue { i64, i1 } %1177, 1, !nosanitize !20
  br i1 %1179, label %1180, label %1181, !prof !21, !nosanitize !20

1180:                                             ; preds = %1181, %1175
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1181:                                             ; preds = %1175
  %1182 = load i64, ptr %542, align 8, !tbaa !23
  %1183 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1182, i64 %1169), !nosanitize !20
  %1184 = extractvalue { i64, i1 } %1183, 1, !nosanitize !20
  br i1 %1184, label %1180, label %1185, !prof !21, !nosanitize !20

1185:                                             ; preds = %1181
  %1186 = extractvalue { i64, i1 } %1183, 0, !nosanitize !20
  store i64 %1186, ptr %542, align 8, !tbaa !23
  br label %1187

1187:                                             ; preds = %1185, %1000, %995, %989, %864, %819
  %1188 = phi ptr [ %1176, %1185 ], [ %548, %1000 ], [ %548, %864 ], [ %548, %819 ], [ %548, %989 ], [ %548, %995 ]
  %1189 = phi i64 [ %1172, %1185 ], [ %549, %1000 ], [ %549, %864 ], [ %549, %819 ], [ %549, %989 ], [ %549, %995 ]
  %1190 = phi i64 [ %1178, %1185 ], [ %550, %1000 ], [ %550, %864 ], [ %550, %819 ], [ %550, %989 ], [ %550, %995 ]
  %1191 = phi i32 [ %1170, %1185 ], [ %1003, %1000 ], [ 0, %864 ], [ 0, %819 ], [ 0, %989 ], [ 0, %995 ]
  %1192 = icmp ne i64 %1189, 0
  %1193 = icmp eq i32 %1191, 0
  %1194 = select i1 %1192, i1 %1193, i1 false
  br i1 %1194, label %547, label %1195, !llvm.loop !60

1195:                                             ; preds = %1187
  %1196 = icmp eq i64 %1189, 0
  br i1 %1196, label %1203, label %1197

1197:                                             ; preds = %1195
  %1198 = load i32, ptr %530, align 8, !tbaa !24
  %1199 = icmp eq i32 %1198, 0
  br i1 %1199, label %1203, label %1200

1200:                                             ; preds = %1197, %573
  %1201 = phi i64 [ %1190, %1197 ], [ %550, %573 ]
  %1202 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1202, align 4, !tbaa !61
  br label %1203

1203:                                             ; preds = %1200, %1197, %1195
  %1204 = phi i64 [ %1201, %1200 ], [ %1190, %1197 ], [ %1190, %1195 ]
  %1205 = freeze i64 %1204
  %1206 = icmp eq i64 %1205, 0
  %1207 = load i8, ptr %2, align 1
  %1208 = zext i8 %1207 to i32
  br i1 %1206, label %1209, label %1210

1209:                                             ; preds = %1203, %510, %503, %385, %299, %121, %107, %103
  br label %1210

1210:                                             ; preds = %1209, %1203, %25, %11, %4, %1
  %1211 = phi i32 [ %31, %25 ], [ -1, %1 ], [ -1, %4 ], [ -1, %11 ], [ -1, %1209 ], [ %1208, %1203 ]
  call void @llvm.lifetime.end.p0(ptr %2)
  ret i32 %1211
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @gzungetc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %860, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %860

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %10 = load i32, ptr %9, align 8, !tbaa !26
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %288

12:                                               ; preds = %8
  %13 = load i32, ptr %1, align 8, !tbaa !19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %288

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
  br label %288

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
  br label %288

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
  br label %288

56:                                               ; preds = %46
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %58 = load i32, ptr %57, align 8, !tbaa !16
  switch i32 %58, label %288 [
    i32 0, label %59
    i32 -5, label %59
  ]

59:                                               ; preds = %56, %56
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %61 = load i32, ptr %60, align 8, !tbaa !24
  %62 = icmp eq i32 %61, 0
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %64 = load i32, ptr %63, align 8, !tbaa !34
  br i1 %62, label %65, label %253

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
  %mv.h27 = icmp sge i32 %177, 0
  %mv.h.fr28 = freeze i1 %mv.h27
  br i1 %mv.h.fr28, label %.mv.ph29.mv.fast, label %.mv.ph29

.mv.ph29.mv.fast:                                 ; preds = %181
  br label %189

189:                                              ; preds = %206, %.mv.ph29.mv.fast
  %190 = phi i32 [ 0, %.mv.ph29.mv.fast ], [ %207, %206 ]
  %191 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %182, i32 %190), !nosanitize !20
  %192 = extractvalue { i32, i1 } %191, 1, !nosanitize !20
  br i1 false, label %213, label %193, !prof !21, !nosanitize !20

193:                                              ; preds = %189
  %194 = extractvalue { i32, i1 } %191, 0, !nosanitize !20
  %195 = tail call i32 @llvm.umin.i32(i32 %194, i32 1073741824)
  %196 = load i32, ptr %188, align 4, !tbaa !46
  %197 = zext i32 %190 to i64
  %198 = getelementptr inbounds nuw i8, ptr %185, i64 %197
  %199 = zext nneg i32 %195 to i64
  %200 = tail call i64 @read(i32 noundef %196, ptr noundef %198, i64 noundef %199) #13
  %201 = trunc i64 %200 to i32
  %202 = icmp slt i32 %201, 1
  br i1 %202, label %231, label %203

203:                                              ; preds = %193
  %204 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %190, i32 %201), !nosanitize !20
  %205 = extractvalue { i32, i1 } %204, 1, !nosanitize !20
  br i1 false, label %227, label %206, !prof !21, !nosanitize !20

206:                                              ; preds = %203
  %207 = extractvalue { i32, i1 } %204, 0, !nosanitize !20
  %208 = icmp ult i32 %207, %182
  br i1 %208, label %189, label %.loopexit19, !llvm.loop !47

.mv.ph29:                                         ; preds = %181
  br label %209

209:                                              ; preds = %228, %.mv.ph29
  %210 = phi i32 [ 0, %.mv.ph29 ], [ %229, %228 ]
  %211 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %182, i32 %210), !nosanitize !20
  %212 = extractvalue { i32, i1 } %211, 1, !nosanitize !20
  br i1 false, label %213, label %214, !prof !21, !nosanitize !20

213:                                              ; preds = %189, %209
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

214:                                              ; preds = %209
  %215 = extractvalue { i32, i1 } %211, 0, !nosanitize !20
  %216 = tail call i32 @llvm.umin.i32(i32 %215, i32 1073741824)
  %217 = load i32, ptr %188, align 4, !tbaa !46
  %218 = zext i32 %210 to i64
  %219 = getelementptr inbounds nuw i8, ptr %185, i64 %218
  %220 = zext nneg i32 %216 to i64
  %221 = tail call i64 @read(i32 noundef %217, ptr noundef %219, i64 noundef %220) #13
  %222 = trunc i64 %221 to i32
  %223 = icmp slt i32 %222, 1
  br i1 %223, label %231, label %224

224:                                              ; preds = %214
  %225 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %210, i32 %222), !nosanitize !20
  %226 = extractvalue { i32, i1 } %225, 1, !nosanitize !20
  br i1 %226, label %227, label %228, !prof !21, !nosanitize !20

227:                                              ; preds = %203, %224
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

228:                                              ; preds = %224
  %229 = extractvalue { i32, i1 } %225, 0, !nosanitize !20
  %230 = icmp ult i32 %229, %182
  br i1 %230, label %209, label %.loopexit19, !llvm.loop !47

231:                                              ; preds = %193, %214
  %.lcssa23 = phi i32 [ %222, %214 ], [ %201, %193 ]
  %.lcssa20 = phi i32 [ %210, %214 ], [ %190, %193 ]
  %232 = icmp slt i32 %.lcssa23, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %231
  %234 = load i32, ptr %187, align 4, !tbaa !45
  %235 = icmp eq i32 %234, 11
  br i1 %235, label %236, label %241

236:                                              ; preds = %233
  store i32 1, ptr %186, align 4, !tbaa !17
  %237 = icmp eq i32 %.lcssa20, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %236
  %239 = load i32, ptr %187, align 4, !tbaa !45
  br label %241

240:                                              ; preds = %231
  store i32 1, ptr %60, align 8, !tbaa !24
  br label %244

241:                                              ; preds = %238, %233
  %242 = phi i32 [ %239, %238 ], [ %234, %233 ]
  %243 = tail call ptr @strerror(i32 noundef %242) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %243) #13
  br label %288

.loopexit19:                                      ; preds = %206, %228
  %.lcssa26 = phi i32 [ %229, %228 ], [ %207, %206 ]
  br label %244

244:                                              ; preds = %.loopexit19, %240, %236
  %245 = phi i32 [ %.lcssa20, %240 ], [ %.lcssa20, %236 ], [ %.lcssa26, %.loopexit19 ]
  %246 = load i32, ptr %63, align 8, !tbaa !34
  %247 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %246, i32 %245), !nosanitize !20
  %248 = extractvalue { i32, i1 } %247, 1, !nosanitize !20
  br i1 %248, label %249, label %250, !prof !21, !nosanitize !20

249:                                              ; preds = %244
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

250:                                              ; preds = %244
  %251 = extractvalue { i32, i1 } %247, 0, !nosanitize !20
  store i32 %251, ptr %63, align 8, !tbaa !34
  %252 = load ptr, ptr %176, align 8, !tbaa !29
  store ptr %252, ptr %16, align 8, !tbaa !35
  br label %253

253:                                              ; preds = %250, %59
  %254 = phi i32 [ %251, %250 ], [ %64, %59 ]
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %288, label %256

256:                                              ; preds = %253
  %257 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %258 = load i32, ptr %257, align 4, !tbaa !17
  %259 = icmp ne i32 %258, 0
  %260 = icmp ult i32 %254, 4
  %261 = and i1 %260, %259
  br i1 %261, label %288, label %262

262:                                              ; preds = %256
  %263 = icmp ugt i32 %254, 3
  %264 = load ptr, ptr %16, align 8, !tbaa !35
  br i1 %263, label %265, label %282

265:                                              ; preds = %262
  %266 = load i8, ptr %264, align 1, !tbaa !36
  %267 = icmp eq i8 %266, 31
  br i1 %267, label %268, label %282

268:                                              ; preds = %265
  %269 = getelementptr inbounds nuw i8, ptr %264, i64 1
  %270 = load i8, ptr %269, align 1, !tbaa !36
  %271 = icmp eq i8 %270, -117
  br i1 %271, label %272, label %282

272:                                              ; preds = %268
  %273 = getelementptr inbounds nuw i8, ptr %264, i64 2
  %274 = load i8, ptr %273, align 1, !tbaa !36
  %275 = icmp eq i8 %274, 8
  br i1 %275, label %276, label %282

276:                                              ; preds = %272
  %277 = getelementptr inbounds nuw i8, ptr %264, i64 3
  %278 = load i8, ptr %277, align 1, !tbaa !36
  %279 = icmp ult i8 %278, 32
  br i1 %279, label %280, label %282

280:                                              ; preds = %276
  %281 = tail call i32 @inflateReset(ptr noundef nonnull %16) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  store i32 1, ptr %47, align 4, !tbaa !33
  store i32 0, ptr %43, align 8, !tbaa !32
  br label %288

282:                                              ; preds = %276, %272, %268, %265, %262
  %283 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %284 = load ptr, ptr %283, align 8, !tbaa !30
  %285 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %284, ptr %285, align 8, !tbaa !22
  %286 = zext i32 %254 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %284, ptr align 1 %264, i64 %286, i1 false)
  %287 = load i32, ptr %63, align 8, !tbaa !34
  store i32 %287, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %63, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %288

288:                                              ; preds = %282, %280, %256, %253, %241, %56, %50, %39, %33, %12, %8
  %289 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %290 = load i32, ptr %289, align 8, !tbaa !16
  switch i32 %290, label %291 [
    i32 0, label %295
    i32 -5, label %295
  ]

291:                                              ; preds = %288
  %292 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %293 = load i32, ptr %292, align 4, !tbaa !17
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %860, label %295

295:                                              ; preds = %291, %288, %288
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef 0, ptr noundef null) #13
  %296 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %297 = load i64, ptr %296, align 8, !tbaa !18
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %792, label %299

299:                                              ; preds = %295
  %300 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %301 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %302 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %303 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %304 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %305 = getelementptr inbounds nuw i8, ptr %1, i64 168
  %306 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %307 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %308 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %309 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %310 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %311 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %312 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %313 = getelementptr inbounds nuw i8, ptr %1, i64 184
  %314 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %315 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %316 = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %317

317:                                              ; preds = %787, %299
  %318 = phi i64 [ %788, %787 ], [ %297, %299 ]
  %319 = load i32, ptr %1, align 8, !tbaa !19
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %343, label %321

321:                                              ; preds = %317
  %322 = zext i32 %319 to i64
  %323 = tail call i64 @llvm.smin.i64(i64 %318, i64 %322)
  %324 = trunc i64 %323 to i32
  %325 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %319, i32 %324), !nosanitize !20
  %326 = extractvalue { i32, i1 } %325, 1, !nosanitize !20
  br i1 %326, label %327, label %328, !prof !21, !nosanitize !20

327:                                              ; preds = %337, %321
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

328:                                              ; preds = %321
  %329 = extractvalue { i32, i1 } %325, 0, !nosanitize !20
  store i32 %329, ptr %1, align 8, !tbaa !19
  %330 = load ptr, ptr %300, align 8, !tbaa !22
  %331 = and i64 %323, 4294967295
  %332 = getelementptr inbounds nuw i8, ptr %330, i64 %331
  store ptr %332, ptr %300, align 8, !tbaa !22
  %333 = load i64, ptr %301, align 8, !tbaa !23
  %334 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %333, i64 %331), !nosanitize !20
  %335 = extractvalue { i64, i1 } %334, 1, !nosanitize !20
  br i1 %335, label %336, label %337, !prof !21, !nosanitize !20

336:                                              ; preds = %328
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

337:                                              ; preds = %328
  %338 = extractvalue { i64, i1 } %334, 0, !nosanitize !20
  store i64 %338, ptr %301, align 8, !tbaa !23
  %339 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %318, i64 %331), !nosanitize !20
  %340 = extractvalue { i64, i1 } %339, 1, !nosanitize !20
  br i1 false, label %327, label %341, !prof !21, !nosanitize !20

341:                                              ; preds = %337
  %342 = extractvalue { i64, i1 } %339, 0, !nosanitize !20
  store i64 %342, ptr %296, align 8, !tbaa !18
  br label %787

343:                                              ; preds = %317
  %344 = load i32, ptr %302, align 8, !tbaa !24
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %349, label %346

346:                                              ; preds = %343
  %347 = load i32, ptr %303, align 8, !tbaa !25
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %790, label %349

349:                                              ; preds = %346, %343
  br label %350

350:                                              ; preds = %784, %349
  %351 = load i32, ptr %9, align 8, !tbaa !26
  switch i32 %351, label %772 [
    i32 0, label %352
    i32 1, label %608
    i32 2, label %652
  ]

352:                                              ; preds = %350
  %353 = load i32, ptr %304, align 8, !tbaa !27
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %372

355:                                              ; preds = %352
  %356 = load i32, ptr %314, align 4, !tbaa !28
  %357 = zext i32 %356 to i64
  %358 = tail call noalias ptr @malloc(i64 noundef %357) #16
  store ptr %358, ptr %309, align 8, !tbaa !29
  %359 = shl i32 %356, 1
  %360 = zext i32 %359 to i64
  %361 = tail call noalias ptr @malloc(i64 noundef %360) #16
  store ptr %361, ptr %306, align 8, !tbaa !30
  %362 = icmp eq ptr %358, null
  %363 = icmp eq ptr %361, null
  %364 = or i1 %362, %363
  br i1 %364, label %365, label %366

365:                                              ; preds = %355
  tail call void @free(ptr noundef %361) #13
  tail call void @free(ptr noundef %358) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %860

366:                                              ; preds = %355
  store i32 %356, ptr %304, align 8, !tbaa !27
  store i32 0, ptr %303, align 8, !tbaa !25
  store ptr null, ptr %308, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %315, i8 0, i64 24, i1 false)
  %367 = tail call i32 @inflateInit2_(ptr noundef nonnull %308, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %372, label %369

369:                                              ; preds = %366
  %370 = load ptr, ptr %306, align 8, !tbaa !30
  tail call void @free(ptr noundef %370) #13
  %371 = load ptr, ptr %309, align 8, !tbaa !29
  tail call void @free(ptr noundef %371) #13
  store i32 0, ptr %304, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %860

372:                                              ; preds = %366, %352
  %373 = load i32, ptr %316, align 8, !tbaa !32
  %374 = icmp eq i32 %373, -1
  br i1 %374, label %378, label %375

375:                                              ; preds = %372
  %376 = load i32, ptr %312, align 4, !tbaa !33
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %383

378:                                              ; preds = %375, %372
  %379 = tail call i32 @inflateReset(ptr noundef nonnull %308) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  %380 = load i32, ptr %312, align 4, !tbaa !33
  %381 = icmp ne i32 %380, -1
  %382 = zext i1 %381 to i32
  store i32 %382, ptr %312, align 4, !tbaa !33
  store i32 0, ptr %316, align 8, !tbaa !32
  br label %605

383:                                              ; preds = %375
  %384 = load i32, ptr %289, align 8, !tbaa !16
  switch i32 %384, label %860 [
    i32 0, label %385
    i32 -5, label %385
  ]

385:                                              ; preds = %383, %383
  %386 = load i32, ptr %302, align 8, !tbaa !24
  %387 = icmp eq i32 %386, 0
  %388 = load i32, ptr %303, align 8, !tbaa !34
  br i1 %387, label %389, label %573

389:                                              ; preds = %385
  %390 = icmp eq i32 %388, 0
  br i1 %390, label %497, label %391

391:                                              ; preds = %389
  %392 = load ptr, ptr %309, align 8, !tbaa !29
  %393 = load ptr, ptr %308, align 8, !tbaa !35
  %394 = icmp eq ptr %393, %392
  br i1 %394, label %497, label %395

395:                                              ; preds = %391
  %396 = ptrtoint ptr %393 to i64
  %397 = ptrtoint ptr %392 to i64
  %398 = zext i32 %388 to i64
  %399 = icmp ult i32 %388, 4
  %400 = sub i64 %397, %396
  %401 = icmp ult i64 %400, 32
  %402 = or i1 %399, %401
  br i1 %402, label %442, label %403

403:                                              ; preds = %395
  %404 = icmp ult i32 %388, 32
  br i1 %404, label %426, label %405

405:                                              ; preds = %403
  %406 = and i64 %398, 4294967264
  br label %407

407:                                              ; preds = %407, %405
  %408 = phi i64 [ 0, %405 ], [ %415, %407 ]
  %409 = getelementptr i8, ptr %392, i64 %408
  %410 = getelementptr i8, ptr %393, i64 %408
  %411 = getelementptr i8, ptr %410, i64 16
  %412 = load <16 x i8>, ptr %410, align 1, !tbaa !36
  %413 = load <16 x i8>, ptr %411, align 1, !tbaa !36
  %414 = getelementptr i8, ptr %409, i64 16
  store <16 x i8> %412, ptr %409, align 1, !tbaa !36
  store <16 x i8> %413, ptr %414, align 1, !tbaa !36
  %415 = add nuw i64 %408, 32
  %416 = icmp eq i64 %415, %406
  br i1 %416, label %417, label %407, !llvm.loop !90

417:                                              ; preds = %407
  %418 = icmp eq i64 %406, %398
  br i1 %418, label %495, label %419

419:                                              ; preds = %417
  %420 = getelementptr i8, ptr %392, i64 %406
  %421 = getelementptr i8, ptr %393, i64 %406
  %422 = trunc nuw i64 %406 to i32
  %423 = sub i32 %388, %422
  %424 = and i64 %398, 28
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %442, label %426

426:                                              ; preds = %419, %403
  %427 = phi i64 [ %406, %419 ], [ 0, %403 ]
  %428 = and i64 %398, 4294967292
  %429 = getelementptr i8, ptr %392, i64 %428
  %430 = getelementptr i8, ptr %393, i64 %428
  %431 = trunc nuw i64 %428 to i32
  %432 = sub i32 %388, %431
  br label %433

433:                                              ; preds = %433, %426
  %434 = phi i64 [ %427, %426 ], [ %438, %433 ]
  %435 = getelementptr i8, ptr %392, i64 %434
  %436 = getelementptr i8, ptr %393, i64 %434
  %437 = load <4 x i8>, ptr %436, align 1, !tbaa !36
  store <4 x i8> %437, ptr %435, align 1, !tbaa !36
  %438 = add nuw i64 %434, 4
  %439 = icmp eq i64 %438, %428
  br i1 %439, label %440, label %433, !llvm.loop !91

440:                                              ; preds = %433
  %441 = icmp eq i64 %428, %398
  br i1 %441, label %495, label %442

442:                                              ; preds = %440, %419, %395
  %443 = phi ptr [ %392, %395 ], [ %420, %419 ], [ %429, %440 ]
  %444 = phi ptr [ %393, %395 ], [ %421, %419 ], [ %430, %440 ]
  %445 = phi i32 [ %388, %395 ], [ %423, %419 ], [ %432, %440 ]
  %446 = add i32 %445, -1
  %447 = and i32 %445, 7
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %460, label %449

449:                                              ; preds = %449, %442
  %450 = phi ptr [ %456, %449 ], [ %443, %442 ]
  %451 = phi ptr [ %457, %449 ], [ %444, %442 ]
  %452 = phi i32 [ %455, %449 ], [ %445, %442 ]
  %453 = phi i32 [ %458, %449 ], [ 0, %442 ]
  %454 = load i8, ptr %451, align 1, !tbaa !36
  store i8 %454, ptr %450, align 1, !tbaa !36
  %455 = add i32 %452, -1
  %456 = getelementptr inbounds nuw i8, ptr %450, i64 1
  %457 = getelementptr inbounds nuw i8, ptr %451, i64 1
  %458 = add i32 %453, 1
  %459 = icmp eq i32 %458, %447
  br i1 %459, label %460, label %449, !llvm.loop !92

460:                                              ; preds = %449, %442
  %461 = phi ptr [ %443, %442 ], [ %456, %449 ]
  %462 = phi ptr [ %444, %442 ], [ %457, %449 ]
  %463 = phi i32 [ %445, %442 ], [ %455, %449 ]
  %464 = icmp ult i32 %446, 7
  br i1 %464, label %495, label %465

465:                                              ; preds = %465, %460
  %466 = phi ptr [ %492, %465 ], [ %461, %460 ]
  %467 = phi ptr [ %493, %465 ], [ %462, %460 ]
  %468 = phi i32 [ %491, %465 ], [ %463, %460 ]
  %469 = load i8, ptr %467, align 1, !tbaa !36
  store i8 %469, ptr %466, align 1, !tbaa !36
  %470 = getelementptr inbounds nuw i8, ptr %466, i64 1
  %471 = getelementptr inbounds nuw i8, ptr %467, i64 1
  %472 = load i8, ptr %471, align 1, !tbaa !36
  store i8 %472, ptr %470, align 1, !tbaa !36
  %473 = getelementptr inbounds nuw i8, ptr %466, i64 2
  %474 = getelementptr inbounds nuw i8, ptr %467, i64 2
  %475 = load i8, ptr %474, align 1, !tbaa !36
  store i8 %475, ptr %473, align 1, !tbaa !36
  %476 = getelementptr inbounds nuw i8, ptr %466, i64 3
  %477 = getelementptr inbounds nuw i8, ptr %467, i64 3
  %478 = load i8, ptr %477, align 1, !tbaa !36
  store i8 %478, ptr %476, align 1, !tbaa !36
  %479 = getelementptr inbounds nuw i8, ptr %466, i64 4
  %480 = getelementptr inbounds nuw i8, ptr %467, i64 4
  %481 = load i8, ptr %480, align 1, !tbaa !36
  store i8 %481, ptr %479, align 1, !tbaa !36
  %482 = getelementptr inbounds nuw i8, ptr %466, i64 5
  %483 = getelementptr inbounds nuw i8, ptr %467, i64 5
  %484 = load i8, ptr %483, align 1, !tbaa !36
  store i8 %484, ptr %482, align 1, !tbaa !36
  %485 = getelementptr inbounds nuw i8, ptr %466, i64 6
  %486 = getelementptr inbounds nuw i8, ptr %467, i64 6
  %487 = load i8, ptr %486, align 1, !tbaa !36
  store i8 %487, ptr %485, align 1, !tbaa !36
  %488 = getelementptr inbounds nuw i8, ptr %466, i64 7
  %489 = getelementptr inbounds nuw i8, ptr %467, i64 7
  %490 = load i8, ptr %489, align 1, !tbaa !36
  store i8 %490, ptr %488, align 1, !tbaa !36
  %491 = add i32 %468, -8
  %492 = getelementptr inbounds nuw i8, ptr %466, i64 8
  %493 = getelementptr inbounds nuw i8, ptr %467, i64 8
  %494 = icmp eq i32 %491, 0
  br i1 %494, label %495, label %465, !llvm.loop !93

495:                                              ; preds = %465, %460, %440, %417
  %496 = load i32, ptr %303, align 8, !tbaa !34
  br label %497

497:                                              ; preds = %495, %391, %389
  %498 = phi i32 [ %496, %495 ], [ %388, %391 ], [ 0, %389 ]
  %499 = load i32, ptr %304, align 8, !tbaa !27
  %500 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %499, i32 %498), !nosanitize !20
  %501 = extractvalue { i32, i1 } %500, 1, !nosanitize !20
  br i1 %501, label %502, label %503, !prof !21, !nosanitize !20

502:                                              ; preds = %497
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

503:                                              ; preds = %497
  %504 = extractvalue { i32, i1 } %500, 0, !nosanitize !20
  %505 = load ptr, ptr %309, align 8, !tbaa !29
  %506 = zext i32 %498 to i64
  %507 = getelementptr inbounds nuw i8, ptr %505, i64 %506
  store i32 0, ptr %310, align 4, !tbaa !17
  %508 = tail call ptr @__errno_location() #17
  store i32 0, ptr %508, align 4, !tbaa !45
  %mv.h16 = icmp sge i32 %499, 0
  %mv.h.fr17 = freeze i1 %mv.h16
  br i1 %mv.h.fr17, label %.mv.ph18.mv.fast, label %.mv.ph18

.mv.ph18.mv.fast:                                 ; preds = %503
  br label %509

509:                                              ; preds = %526, %.mv.ph18.mv.fast
  %510 = phi i32 [ 0, %.mv.ph18.mv.fast ], [ %527, %526 ]
  %511 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %504, i32 %510), !nosanitize !20
  %512 = extractvalue { i32, i1 } %511, 1, !nosanitize !20
  br i1 false, label %533, label %513, !prof !21, !nosanitize !20

513:                                              ; preds = %509
  %514 = extractvalue { i32, i1 } %511, 0, !nosanitize !20
  %515 = tail call i32 @llvm.umin.i32(i32 %514, i32 1073741824)
  %516 = load i32, ptr %311, align 4, !tbaa !46
  %517 = zext i32 %510 to i64
  %518 = getelementptr inbounds nuw i8, ptr %507, i64 %517
  %519 = zext nneg i32 %515 to i64
  %520 = tail call i64 @read(i32 noundef %516, ptr noundef %518, i64 noundef %519) #13
  %521 = trunc i64 %520 to i32
  %522 = icmp slt i32 %521, 1
  br i1 %522, label %551, label %523

523:                                              ; preds = %513
  %524 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %510, i32 %521), !nosanitize !20
  %525 = extractvalue { i32, i1 } %524, 1, !nosanitize !20
  br i1 false, label %547, label %526, !prof !21, !nosanitize !20

526:                                              ; preds = %523
  %527 = extractvalue { i32, i1 } %524, 0, !nosanitize !20
  %528 = icmp ult i32 %527, %504
  br i1 %528, label %509, label %.loopexit8, !llvm.loop !47

.mv.ph18:                                         ; preds = %503
  br label %529

529:                                              ; preds = %548, %.mv.ph18
  %530 = phi i32 [ 0, %.mv.ph18 ], [ %549, %548 ]
  %531 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %504, i32 %530), !nosanitize !20
  %532 = extractvalue { i32, i1 } %531, 1, !nosanitize !20
  br i1 false, label %533, label %534, !prof !21, !nosanitize !20

533:                                              ; preds = %509, %529
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

534:                                              ; preds = %529
  %535 = extractvalue { i32, i1 } %531, 0, !nosanitize !20
  %536 = tail call i32 @llvm.umin.i32(i32 %535, i32 1073741824)
  %537 = load i32, ptr %311, align 4, !tbaa !46
  %538 = zext i32 %530 to i64
  %539 = getelementptr inbounds nuw i8, ptr %507, i64 %538
  %540 = zext nneg i32 %536 to i64
  %541 = tail call i64 @read(i32 noundef %537, ptr noundef %539, i64 noundef %540) #13
  %542 = trunc i64 %541 to i32
  %543 = icmp slt i32 %542, 1
  br i1 %543, label %551, label %544

544:                                              ; preds = %534
  %545 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %530, i32 %542), !nosanitize !20
  %546 = extractvalue { i32, i1 } %545, 1, !nosanitize !20
  br i1 %546, label %547, label %548, !prof !21, !nosanitize !20

547:                                              ; preds = %523, %544
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

548:                                              ; preds = %544
  %549 = extractvalue { i32, i1 } %545, 0, !nosanitize !20
  %550 = icmp ult i32 %549, %504
  br i1 %550, label %529, label %.loopexit8, !llvm.loop !47

551:                                              ; preds = %513, %534
  %.lcssa12 = phi i32 [ %542, %534 ], [ %521, %513 ]
  %.lcssa9 = phi i32 [ %530, %534 ], [ %510, %513 ]
  %552 = icmp slt i32 %.lcssa12, 0
  br i1 %552, label %553, label %560

553:                                              ; preds = %551
  %554 = load i32, ptr %508, align 4, !tbaa !45
  %555 = icmp eq i32 %554, 11
  br i1 %555, label %556, label %561

556:                                              ; preds = %553
  store i32 1, ptr %310, align 4, !tbaa !17
  %557 = icmp eq i32 %.lcssa9, 0
  br i1 %557, label %558, label %564

558:                                              ; preds = %556
  %559 = load i32, ptr %508, align 4, !tbaa !45
  br label %561

560:                                              ; preds = %551
  store i32 1, ptr %302, align 8, !tbaa !24
  br label %564

561:                                              ; preds = %558, %553
  %562 = phi i32 [ %559, %558 ], [ %554, %553 ]
  %563 = tail call ptr @strerror(i32 noundef %562) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %563) #13
  br label %860

.loopexit8:                                       ; preds = %526, %548
  %.lcssa15 = phi i32 [ %549, %548 ], [ %527, %526 ]
  br label %564

564:                                              ; preds = %.loopexit8, %560, %556
  %565 = phi i32 [ %.lcssa9, %560 ], [ %.lcssa9, %556 ], [ %.lcssa15, %.loopexit8 ]
  %566 = load i32, ptr %303, align 8, !tbaa !34
  %567 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %566, i32 %565), !nosanitize !20
  %568 = extractvalue { i32, i1 } %567, 1, !nosanitize !20
  br i1 %568, label %569, label %570, !prof !21, !nosanitize !20

569:                                              ; preds = %564
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

570:                                              ; preds = %564
  %571 = extractvalue { i32, i1 } %567, 0, !nosanitize !20
  store i32 %571, ptr %303, align 8, !tbaa !34
  %572 = load ptr, ptr %309, align 8, !tbaa !29
  store ptr %572, ptr %308, align 8, !tbaa !35
  br label %573

573:                                              ; preds = %570, %385
  %574 = phi i32 [ %571, %570 ], [ %388, %385 ]
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %605, label %576

576:                                              ; preds = %573
  %577 = load i32, ptr %310, align 4, !tbaa !17
  %578 = icmp ne i32 %577, 0
  %579 = icmp ult i32 %574, 4
  %580 = and i1 %579, %578
  br i1 %580, label %605, label %581

581:                                              ; preds = %576
  %582 = icmp ugt i32 %574, 3
  %583 = load ptr, ptr %308, align 8, !tbaa !35
  br i1 %582, label %584, label %601

584:                                              ; preds = %581
  %585 = load i8, ptr %583, align 1, !tbaa !36
  %586 = icmp eq i8 %585, 31
  br i1 %586, label %587, label %601

587:                                              ; preds = %584
  %588 = getelementptr inbounds nuw i8, ptr %583, i64 1
  %589 = load i8, ptr %588, align 1, !tbaa !36
  %590 = icmp eq i8 %589, -117
  br i1 %590, label %591, label %601

591:                                              ; preds = %587
  %592 = getelementptr inbounds nuw i8, ptr %583, i64 2
  %593 = load i8, ptr %592, align 1, !tbaa !36
  %594 = icmp eq i8 %593, 8
  br i1 %594, label %595, label %601

595:                                              ; preds = %591
  %596 = getelementptr inbounds nuw i8, ptr %583, i64 3
  %597 = load i8, ptr %596, align 1, !tbaa !36
  %598 = icmp ult i8 %597, 32
  br i1 %598, label %599, label %601

599:                                              ; preds = %595
  %600 = tail call i32 @inflateReset(ptr noundef nonnull %308) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  store i32 1, ptr %312, align 4, !tbaa !33
  store i32 0, ptr %316, align 8, !tbaa !32
  br label %773

601:                                              ; preds = %595, %591, %587, %584, %581
  %602 = load ptr, ptr %306, align 8, !tbaa !30
  store ptr %602, ptr %300, align 8, !tbaa !22
  %603 = zext i32 %574 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %602, ptr align 1 %583, i64 %603, i1 false)
  %604 = load i32, ptr %303, align 8, !tbaa !34
  store i32 %604, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %303, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %775

605:                                              ; preds = %576, %573, %378
  %606 = load i32, ptr %9, align 8, !tbaa !26
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %785, label %773

608:                                              ; preds = %350
  %609 = load ptr, ptr %306, align 8, !tbaa !30
  %610 = load i32, ptr %304, align 8, !tbaa !27
  %611 = shl i32 %610, 1
  store i32 0, ptr %310, align 4, !tbaa !17
  %612 = tail call ptr @__errno_location() #17
  store i32 0, ptr %612, align 4, !tbaa !45
  store i32 0, ptr %1, align 4, !tbaa !45
  br label %613

613:                                              ; preds = %633, %608
  %614 = phi i32 [ %634, %633 ], [ 0, %608 ]
  %615 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %611, i32 %614), !nosanitize !20
  %616 = extractvalue { i32, i1 } %615, 1, !nosanitize !20
  br i1 false, label %617, label %618, !prof !21, !nosanitize !20

617:                                              ; preds = %613
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

618:                                              ; preds = %613
  %619 = extractvalue { i32, i1 } %615, 0, !nosanitize !20
  %620 = tail call i32 @llvm.umin.i32(i32 %619, i32 1073741824)
  %621 = load i32, ptr %311, align 4, !tbaa !46
  %622 = zext i32 %614 to i64
  %623 = getelementptr inbounds nuw i8, ptr %609, i64 %622
  %624 = zext nneg i32 %620 to i64
  %625 = tail call i64 @read(i32 noundef %621, ptr noundef %623, i64 noundef %624) #13
  %626 = trunc i64 %625 to i32
  %627 = icmp slt i32 %626, 1
  br i1 %627, label %636, label %628

628:                                              ; preds = %618
  %629 = load i32, ptr %1, align 4, !tbaa !45
  %630 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %629, i32 %626), !nosanitize !20
  %631 = extractvalue { i32, i1 } %630, 1, !nosanitize !20
  br i1 %631, label %632, label %633, !prof !21, !nosanitize !20

632:                                              ; preds = %628
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

633:                                              ; preds = %628
  %634 = extractvalue { i32, i1 } %630, 0, !nosanitize !20
  store i32 %634, ptr %1, align 4, !tbaa !45
  %635 = icmp ult i32 %634, %611
  br i1 %635, label %613, label %650, !llvm.loop !47

636:                                              ; preds = %618
  %637 = icmp slt i32 %626, 0
  br i1 %637, label %638, label %646

638:                                              ; preds = %636
  %639 = load i32, ptr %612, align 4, !tbaa !45
  %640 = icmp eq i32 %639, 11
  br i1 %640, label %641, label %647

641:                                              ; preds = %638
  store i32 1, ptr %310, align 4, !tbaa !17
  %642 = load i32, ptr %1, align 4, !tbaa !45
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %644, label %650

644:                                              ; preds = %641
  %645 = load i32, ptr %612, align 4, !tbaa !45
  br label %647

646:                                              ; preds = %636
  store i32 1, ptr %302, align 8, !tbaa !24
  br label %650

647:                                              ; preds = %644, %638
  %648 = phi i32 [ %645, %644 ], [ %639, %638 ]
  %649 = tail call ptr @strerror(i32 noundef %648) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %649) #13
  br label %860

650:                                              ; preds = %646, %641, %633
  %651 = load ptr, ptr %306, align 8, !tbaa !30
  store ptr %651, ptr %300, align 8, !tbaa !22
  br label %785

652:                                              ; preds = %350
  %653 = load i32, ptr %304, align 8, !tbaa !27
  %654 = shl i32 %653, 1
  store i32 %654, ptr %305, align 8, !tbaa !48
  %655 = load ptr, ptr %306, align 8, !tbaa !30
  store ptr %655, ptr %307, align 8, !tbaa !49
  br label %656

656:                                              ; preds = %755, %652
  %657 = phi i32 [ 0, %652 ], [ %740, %755 ]
  %658 = load i32, ptr %303, align 8, !tbaa !34
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %660, label %739

660:                                              ; preds = %656
  %661 = load i32, ptr %289, align 8, !tbaa !16
  switch i32 %661, label %759 [
    i32 0, label %662
    i32 -5, label %662
  ]

662:                                              ; preds = %660, %660
  %663 = load i32, ptr %302, align 8, !tbaa !24
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %665, label %735

665:                                              ; preds = %662
  %666 = load i32, ptr %304, align 8, !tbaa !27
  %667 = load ptr, ptr %309, align 8, !tbaa !29
  store i32 0, ptr %310, align 4, !tbaa !17
  %668 = tail call ptr @__errno_location() #17
  store i32 0, ptr %668, align 4, !tbaa !45
  %mv.h = icmp sge i32 %666, 0
  %mv.h.fr = freeze i1 %mv.h
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %665
  br label %669

669:                                              ; preds = %686, %.mv.ph.mv.fast
  %670 = phi i32 [ 0, %.mv.ph.mv.fast ], [ %687, %686 ]
  %671 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %666, i32 %670), !nosanitize !20
  %672 = extractvalue { i32, i1 } %671, 1, !nosanitize !20
  br i1 false, label %693, label %673, !prof !21, !nosanitize !20

673:                                              ; preds = %669
  %674 = extractvalue { i32, i1 } %671, 0, !nosanitize !20
  %675 = tail call i32 @llvm.umin.i32(i32 %674, i32 1073741824)
  %676 = load i32, ptr %311, align 4, !tbaa !46
  %677 = zext i32 %670 to i64
  %678 = getelementptr inbounds nuw i8, ptr %667, i64 %677
  %679 = zext nneg i32 %675 to i64
  %680 = tail call i64 @read(i32 noundef %676, ptr noundef %678, i64 noundef %679) #13
  %681 = trunc i64 %680 to i32
  %682 = icmp slt i32 %681, 1
  br i1 %682, label %711, label %683

683:                                              ; preds = %673
  %684 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %670, i32 %681), !nosanitize !20
  %685 = extractvalue { i32, i1 } %684, 1, !nosanitize !20
  br i1 false, label %707, label %686, !prof !21, !nosanitize !20

686:                                              ; preds = %683
  %687 = extractvalue { i32, i1 } %684, 0, !nosanitize !20
  %688 = icmp ult i32 %687, %666
  br i1 %688, label %669, label %.loopexit, !llvm.loop !47

.mv.ph:                                           ; preds = %665
  br label %689

689:                                              ; preds = %708, %.mv.ph
  %690 = phi i32 [ 0, %.mv.ph ], [ %709, %708 ]
  %691 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %666, i32 %690), !nosanitize !20
  %692 = extractvalue { i32, i1 } %691, 1, !nosanitize !20
  br i1 false, label %693, label %694, !prof !21, !nosanitize !20

693:                                              ; preds = %669, %689
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

694:                                              ; preds = %689
  %695 = extractvalue { i32, i1 } %691, 0, !nosanitize !20
  %696 = tail call i32 @llvm.umin.i32(i32 %695, i32 1073741824)
  %697 = load i32, ptr %311, align 4, !tbaa !46
  %698 = zext i32 %690 to i64
  %699 = getelementptr inbounds nuw i8, ptr %667, i64 %698
  %700 = zext nneg i32 %696 to i64
  %701 = tail call i64 @read(i32 noundef %697, ptr noundef %699, i64 noundef %700) #13
  %702 = trunc i64 %701 to i32
  %703 = icmp slt i32 %702, 1
  br i1 %703, label %711, label %704

704:                                              ; preds = %694
  %705 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %690, i32 %702), !nosanitize !20
  %706 = extractvalue { i32, i1 } %705, 1, !nosanitize !20
  br i1 %706, label %707, label %708, !prof !21, !nosanitize !20

707:                                              ; preds = %683, %704
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

708:                                              ; preds = %704
  %709 = extractvalue { i32, i1 } %705, 0, !nosanitize !20
  %710 = icmp ult i32 %709, %666
  br i1 %710, label %689, label %.loopexit, !llvm.loop !47

711:                                              ; preds = %673, %694
  %.lcssa4 = phi i32 [ %702, %694 ], [ %681, %673 ]
  %.lcssa1 = phi i32 [ %690, %694 ], [ %670, %673 ]
  %712 = icmp slt i32 %.lcssa4, 0
  br i1 %712, label %713, label %720

713:                                              ; preds = %711
  %714 = load i32, ptr %668, align 4, !tbaa !45
  %715 = icmp eq i32 %714, 11
  br i1 %715, label %716, label %721

716:                                              ; preds = %713
  store i32 1, ptr %310, align 4, !tbaa !17
  %717 = icmp eq i32 %.lcssa1, 0
  br i1 %717, label %718, label %725

718:                                              ; preds = %716
  %719 = load i32, ptr %668, align 4, !tbaa !45
  br label %721

720:                                              ; preds = %711
  store i32 1, ptr %302, align 8, !tbaa !24
  br label %725

721:                                              ; preds = %718, %713
  %722 = phi i32 [ %719, %718 ], [ %714, %713 ]
  %723 = tail call ptr @strerror(i32 noundef %722) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %723) #13
  %724 = load i32, ptr %289, align 8, !tbaa !16
  br label %759

.loopexit:                                        ; preds = %686, %708
  %.lcssa7 = phi i32 [ %709, %708 ], [ %687, %686 ]
  br label %725

725:                                              ; preds = %.loopexit, %720, %716
  %726 = phi i32 [ %.lcssa1, %720 ], [ %.lcssa1, %716 ], [ %.lcssa7, %.loopexit ]
  %727 = load i32, ptr %303, align 8, !tbaa !34
  %728 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %727, i32 %726), !nosanitize !20
  %729 = extractvalue { i32, i1 } %728, 1, !nosanitize !20
  br i1 %729, label %730, label %731, !prof !21, !nosanitize !20

730:                                              ; preds = %725
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

731:                                              ; preds = %725
  %732 = extractvalue { i32, i1 } %728, 0, !nosanitize !20
  store i32 %732, ptr %303, align 8, !tbaa !34
  %733 = load ptr, ptr %309, align 8, !tbaa !29
  store ptr %733, ptr %308, align 8, !tbaa !35
  %734 = icmp eq i32 %732, 0
  br i1 %734, label %735, label %739

735:                                              ; preds = %731, %662
  %736 = load i32, ptr %310, align 4, !tbaa !17
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %738, label %759

738:                                              ; preds = %735
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %759

739:                                              ; preds = %731, %656
  %740 = tail call i32 @inflate(ptr noundef nonnull %308, i32 noundef 0) #13
  %741 = load i32, ptr %305, align 8, !tbaa !48
  %742 = icmp ult i32 %741, %654
  br i1 %742, label %743, label %744

743:                                              ; preds = %739
  store i32 0, ptr %312, align 4, !tbaa !33
  br label %744

744:                                              ; preds = %743, %739
  switch i32 %740, label %755 [
    i32 -2, label %745
    i32 2, label %745
    i32 -4, label %746
    i32 -3, label %747
  ]

745:                                              ; preds = %744, %744
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %759

746:                                              ; preds = %744
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %759

747:                                              ; preds = %744
  %748 = load i32, ptr %312, align 4, !tbaa !33
  %749 = icmp eq i32 %748, 1
  br i1 %749, label %750, label %751

750:                                              ; preds = %747
  store i32 0, ptr %303, align 8, !tbaa !34
  store i32 1, ptr %302, align 8, !tbaa !24
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %759

751:                                              ; preds = %747
  %752 = load ptr, ptr %313, align 8, !tbaa !50
  %753 = icmp eq ptr %752, null
  %754 = select i1 %753, ptr @.str.6, ptr %752
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull %754) #13
  br label %759

755:                                              ; preds = %744
  %756 = icmp ne i32 %741, 0
  %757 = icmp ne i32 %740, 1
  %758 = select i1 %756, i1 %757, i1 false
  br i1 %758, label %656, label %759, !llvm.loop !51

759:                                              ; preds = %755, %751, %750, %746, %745, %738, %735, %721, %660
  %760 = phi i32 [ %657, %735 ], [ %657, %738 ], [ %740, %745 ], [ -4, %746 ], [ 0, %750 ], [ -3, %751 ], [ %724, %721 ], [ %661, %660 ], [ %740, %755 ]
  %761 = load i32, ptr %305, align 8, !tbaa !48
  %762 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %654, i32 %761), !nosanitize !20
  %763 = extractvalue { i32, i1 } %762, 1, !nosanitize !20
  br i1 %763, label %764, label %765, !prof !21, !nosanitize !20

764:                                              ; preds = %759
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

765:                                              ; preds = %759
  %766 = extractvalue { i32, i1 } %762, 0, !nosanitize !20
  store i32 %766, ptr %1, align 8, !tbaa !19
  %767 = load ptr, ptr %307, align 8, !tbaa !49
  %768 = zext i32 %766 to i64
  %769 = sub nsw i64 0, %768
  %770 = getelementptr inbounds i8, ptr %767, i64 %769
  store ptr %770, ptr %300, align 8, !tbaa !22
  switch i32 %760, label %860 [
    i32 1, label %771
    i32 0, label %773
  ]

771:                                              ; preds = %765
  store i32 0, ptr %312, align 4, !tbaa !33
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %773

772:                                              ; preds = %350
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %860

773:                                              ; preds = %771, %765, %605, %599
  %774 = load i32, ptr %1, align 8, !tbaa !19
  br label %775

775:                                              ; preds = %773, %601
  %776 = phi i32 [ %774, %773 ], [ %604, %601 ]
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %778, label %785

778:                                              ; preds = %775
  %779 = load i32, ptr %302, align 8, !tbaa !24
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %784, label %781

781:                                              ; preds = %778
  %782 = load i32, ptr %303, align 8, !tbaa !34
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %785, label %784

784:                                              ; preds = %781, %778
  br label %350, !llvm.loop !52

785:                                              ; preds = %781, %775, %650, %605
  %786 = load i64, ptr %296, align 8, !tbaa !18
  br label %787

787:                                              ; preds = %785, %341
  %788 = phi i64 [ %786, %785 ], [ %342, %341 ]
  %789 = icmp eq i64 %788, 0
  br i1 %789, label %790, label %317, !llvm.loop !53

790:                                              ; preds = %787, %346
  %791 = icmp slt i32 %0, 0
  br i1 %791, label %860, label %794

792:                                              ; preds = %295
  %793 = icmp slt i32 %0, 0
  br i1 %793, label %860, label %794

794:                                              ; preds = %792, %790
  %795 = load i32, ptr %1, align 8, !tbaa !19
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %797, label %816

797:                                              ; preds = %794
  store i32 1, ptr %1, align 8, !tbaa !19
  %798 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %799 = load ptr, ptr %798, align 8, !tbaa !30
  %800 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %801 = load i32, ptr %800, align 8, !tbaa !27
  %802 = shl i32 %801, 1
  %803 = zext i32 %802 to i64
  %804 = getelementptr inbounds nuw i8, ptr %799, i64 %803
  %805 = getelementptr inbounds i8, ptr %804, i64 -1
  %806 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %805, ptr %806, align 8, !tbaa !22
  %807 = trunc i32 %0 to i8
  store i8 %807, ptr %805, align 1, !tbaa !36
  %808 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %809 = load i64, ptr %808, align 8, !tbaa !23
  %810 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %809, i64 -1)
  %811 = extractvalue { i64, i1 } %810, 1, !nosanitize !20
  br i1 %811, label %812, label %813, !prof !21, !nosanitize !20

812:                                              ; preds = %849, %797
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

813:                                              ; preds = %797
  %814 = extractvalue { i64, i1 } %810, 0, !nosanitize !20
  store i64 %814, ptr %808, align 8, !tbaa !23
  %815 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %815, align 4, !tbaa !61
  br label %860

816:                                              ; preds = %794
  %817 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %818 = load i32, ptr %817, align 8, !tbaa !27
  %819 = shl i32 %818, 1
  %820 = icmp eq i32 %795, %819
  br i1 %820, label %821, label %822

821:                                              ; preds = %816
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull @.str.2) #13
  br label %860

822:                                              ; preds = %816
  %823 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %824 = load ptr, ptr %823, align 8, !tbaa !22
  %825 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %826 = load ptr, ptr %825, align 8, !tbaa !30
  %827 = icmp eq ptr %824, %826
  br i1 %827, label %828, label %843

828:                                              ; preds = %822
  %829 = zext i32 %795 to i64
  %830 = getelementptr inbounds nuw i8, ptr %826, i64 %829
  %831 = zext i32 %819 to i64
  %832 = getelementptr inbounds nuw i8, ptr %826, i64 %831
  br label %833

833:                                              ; preds = %833, %828
  %834 = phi ptr [ %838, %833 ], [ %832, %828 ]
  %835 = phi ptr [ %836, %833 ], [ %830, %828 ]
  %836 = getelementptr inbounds i8, ptr %835, i64 -1
  %837 = load i8, ptr %836, align 1, !tbaa !36
  %838 = getelementptr inbounds i8, ptr %834, i64 -1
  store i8 %837, ptr %838, align 1, !tbaa !36
  %839 = load ptr, ptr %825, align 8, !tbaa !30
  %840 = icmp ugt ptr %836, %839
  br i1 %840, label %833, label %841, !llvm.loop !94

841:                                              ; preds = %833
  %842 = load i32, ptr %1, align 8, !tbaa !19
  store ptr %838, ptr %823, align 8, !tbaa !22
  br label %843

843:                                              ; preds = %841, %822
  %844 = phi ptr [ %838, %841 ], [ %824, %822 ]
  %845 = phi i32 [ %842, %841 ], [ %795, %822 ]
  %846 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %845, i32 1), !nosanitize !20
  %847 = extractvalue { i32, i1 } %846, 1, !nosanitize !20
  br i1 %847, label %848, label %849, !prof !21, !nosanitize !20

848:                                              ; preds = %843
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

849:                                              ; preds = %843
  %850 = extractvalue { i32, i1 } %846, 0, !nosanitize !20
  store i32 %850, ptr %1, align 8, !tbaa !19
  %851 = getelementptr inbounds i8, ptr %844, i64 -1
  store ptr %851, ptr %823, align 8, !tbaa !22
  %852 = trunc i32 %0 to i8
  store i8 %852, ptr %851, align 1, !tbaa !36
  %853 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %854 = load i64, ptr %853, align 8, !tbaa !23
  %855 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %854, i64 -1)
  %856 = extractvalue { i64, i1 } %855, 1, !nosanitize !20
  br i1 %856, label %812, label %857, !prof !21, !nosanitize !20

857:                                              ; preds = %849
  %858 = extractvalue { i64, i1 } %855, 0, !nosanitize !20
  store i64 %858, ptr %853, align 8, !tbaa !23
  %859 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %859, align 4, !tbaa !61
  br label %860

860:                                              ; preds = %857, %821, %813, %792, %790, %772, %765, %647, %561, %383, %369, %365, %291, %4, %2
  %861 = phi i32 [ %0, %813 ], [ -1, %821 ], [ %0, %857 ], [ -1, %2 ], [ -1, %4 ], [ -1, %291 ], [ -1, %790 ], [ -1, %792 ], [ -1, %772 ], [ -1, %647 ], [ -1, %365 ], [ -1, %369 ], [ -1, %561 ], [ -1, %765 ], [ -1, %383 ]
  ret i32 %861
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
  br i1 %8, label %1030, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load i32, ptr %10, align 8, !tbaa !5
  %12 = icmp eq i32 %11, 7247
  br i1 %12, label %13, label %1030

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
  br i1 %19, label %1030, label %20

20:                                               ; preds = %16, %13, %13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %22 = load i64, ptr %21, align 8, !tbaa !18
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %516, label %24

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

43:                                               ; preds = %513, %24
  %44 = phi i64 [ %514, %513 ], [ %22, %24 ]
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
  br i1 false, label %53, label %67, !prof !21, !nosanitize !20

67:                                               ; preds = %63
  %68 = extractvalue { i64, i1 } %65, 0, !nosanitize !20
  store i64 %68, ptr %21, align 8, !tbaa !18
  br label %513

69:                                               ; preds = %43
  %70 = load i32, ptr %27, align 8, !tbaa !24
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %28, align 8, !tbaa !25
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %516, label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %510, %75
  %77 = load i32, ptr %29, align 8, !tbaa !26
  switch i32 %77, label %498 [
    i32 0, label %78
    i32 1, label %334
    i32 2, label %378
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
  br label %1030

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
  br label %1030

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
  br label %331

109:                                              ; preds = %101
  %110 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %110, label %1030 [
    i32 0, label %111
    i32 -5, label %111
  ]

111:                                              ; preds = %109, %109
  %112 = load i32, ptr %27, align 8, !tbaa !24
  %113 = icmp eq i32 %112, 0
  %114 = load i32, ptr %28, align 8, !tbaa !34
  br i1 %113, label %115, label %299

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
  %mv.h38 = icmp sge i32 %225, 0
  %mv.h.fr39 = freeze i1 %mv.h38
  br i1 %mv.h.fr39, label %.mv.ph40.mv.fast, label %.mv.ph40

.mv.ph40.mv.fast:                                 ; preds = %229
  br label %235

235:                                              ; preds = %252, %.mv.ph40.mv.fast
  %236 = phi i32 [ 0, %.mv.ph40.mv.fast ], [ %253, %252 ]
  %237 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %230, i32 %236), !nosanitize !20
  %238 = extractvalue { i32, i1 } %237, 1, !nosanitize !20
  br i1 false, label %259, label %239, !prof !21, !nosanitize !20

239:                                              ; preds = %235
  %240 = extractvalue { i32, i1 } %237, 0, !nosanitize !20
  %241 = tail call i32 @llvm.umin.i32(i32 %240, i32 1073741824)
  %242 = load i32, ptr %37, align 4, !tbaa !46
  %243 = zext i32 %236 to i64
  %244 = getelementptr inbounds nuw i8, ptr %233, i64 %243
  %245 = zext nneg i32 %241 to i64
  %246 = tail call i64 @read(i32 noundef %242, ptr noundef %244, i64 noundef %245) #13
  %247 = trunc i64 %246 to i32
  %248 = icmp slt i32 %247, 1
  br i1 %248, label %277, label %249

249:                                              ; preds = %239
  %250 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %236, i32 %247), !nosanitize !20
  %251 = extractvalue { i32, i1 } %250, 1, !nosanitize !20
  br i1 false, label %273, label %252, !prof !21, !nosanitize !20

252:                                              ; preds = %249
  %253 = extractvalue { i32, i1 } %250, 0, !nosanitize !20
  %254 = icmp ult i32 %253, %230
  br i1 %254, label %235, label %.loopexit30, !llvm.loop !47

.mv.ph40:                                         ; preds = %229
  br label %255

255:                                              ; preds = %274, %.mv.ph40
  %256 = phi i32 [ 0, %.mv.ph40 ], [ %275, %274 ]
  %257 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %230, i32 %256), !nosanitize !20
  %258 = extractvalue { i32, i1 } %257, 1, !nosanitize !20
  br i1 false, label %259, label %260, !prof !21, !nosanitize !20

259:                                              ; preds = %235, %255
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

260:                                              ; preds = %255
  %261 = extractvalue { i32, i1 } %257, 0, !nosanitize !20
  %262 = tail call i32 @llvm.umin.i32(i32 %261, i32 1073741824)
  %263 = load i32, ptr %37, align 4, !tbaa !46
  %264 = zext i32 %256 to i64
  %265 = getelementptr inbounds nuw i8, ptr %233, i64 %264
  %266 = zext nneg i32 %262 to i64
  %267 = tail call i64 @read(i32 noundef %263, ptr noundef %265, i64 noundef %266) #13
  %268 = trunc i64 %267 to i32
  %269 = icmp slt i32 %268, 1
  br i1 %269, label %277, label %270

270:                                              ; preds = %260
  %271 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %256, i32 %268), !nosanitize !20
  %272 = extractvalue { i32, i1 } %271, 1, !nosanitize !20
  br i1 %272, label %273, label %274, !prof !21, !nosanitize !20

273:                                              ; preds = %249, %270
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

274:                                              ; preds = %270
  %275 = extractvalue { i32, i1 } %271, 0, !nosanitize !20
  %276 = icmp ult i32 %275, %230
  br i1 %276, label %255, label %.loopexit30, !llvm.loop !47

277:                                              ; preds = %239, %260
  %.lcssa34 = phi i32 [ %268, %260 ], [ %247, %239 ]
  %.lcssa31 = phi i32 [ %256, %260 ], [ %236, %239 ]
  %278 = icmp slt i32 %.lcssa34, 0
  br i1 %278, label %279, label %286

279:                                              ; preds = %277
  %280 = load i32, ptr %234, align 4, !tbaa !45
  %281 = icmp eq i32 %280, 11
  br i1 %281, label %282, label %287

282:                                              ; preds = %279
  store i32 1, ptr %36, align 4, !tbaa !17
  %283 = icmp eq i32 %.lcssa31, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %282
  %285 = load i32, ptr %234, align 4, !tbaa !45
  br label %287

286:                                              ; preds = %277
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %290

287:                                              ; preds = %284, %279
  %288 = phi i32 [ %285, %284 ], [ %280, %279 ]
  %289 = tail call ptr @strerror(i32 noundef %288) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %289) #13
  br label %1030

.loopexit30:                                      ; preds = %252, %274
  %.lcssa37 = phi i32 [ %275, %274 ], [ %253, %252 ]
  br label %290

290:                                              ; preds = %.loopexit30, %286, %282
  %291 = phi i32 [ %.lcssa31, %286 ], [ %.lcssa31, %282 ], [ %.lcssa37, %.loopexit30 ]
  %292 = load i32, ptr %28, align 8, !tbaa !34
  %293 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %292, i32 %291), !nosanitize !20
  %294 = extractvalue { i32, i1 } %293, 1, !nosanitize !20
  br i1 %294, label %295, label %296, !prof !21, !nosanitize !20

295:                                              ; preds = %290
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

296:                                              ; preds = %290
  %297 = extractvalue { i32, i1 } %293, 0, !nosanitize !20
  store i32 %297, ptr %28, align 8, !tbaa !34
  %298 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %298, ptr %34, align 8, !tbaa !35
  br label %299

299:                                              ; preds = %296, %111
  %300 = phi i32 [ %297, %296 ], [ %114, %111 ]
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %331, label %302

302:                                              ; preds = %299
  %303 = load i32, ptr %36, align 4, !tbaa !17
  %304 = icmp ne i32 %303, 0
  %305 = icmp ult i32 %300, 4
  %306 = and i1 %305, %304
  br i1 %306, label %331, label %307

307:                                              ; preds = %302
  %308 = icmp ugt i32 %300, 3
  %309 = load ptr, ptr %34, align 8, !tbaa !35
  br i1 %308, label %310, label %327

310:                                              ; preds = %307
  %311 = load i8, ptr %309, align 1, !tbaa !36
  %312 = icmp eq i8 %311, 31
  br i1 %312, label %313, label %327

313:                                              ; preds = %310
  %314 = getelementptr inbounds nuw i8, ptr %309, i64 1
  %315 = load i8, ptr %314, align 1, !tbaa !36
  %316 = icmp eq i8 %315, -117
  br i1 %316, label %317, label %327

317:                                              ; preds = %313
  %318 = getelementptr inbounds nuw i8, ptr %309, i64 2
  %319 = load i8, ptr %318, align 1, !tbaa !36
  %320 = icmp eq i8 %319, 8
  br i1 %320, label %321, label %327

321:                                              ; preds = %317
  %322 = getelementptr inbounds nuw i8, ptr %309, i64 3
  %323 = load i8, ptr %322, align 1, !tbaa !36
  %324 = icmp ult i8 %323, 32
  br i1 %324, label %325, label %327

325:                                              ; preds = %321
  %326 = tail call i32 @inflateReset(ptr noundef nonnull %34) #13
  store i32 2, ptr %29, align 8, !tbaa !26
  store i32 1, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %42, align 8, !tbaa !32
  br label %499

327:                                              ; preds = %321, %317, %313, %310, %307
  %328 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %328, ptr %25, align 8, !tbaa !22
  %329 = zext i32 %300 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %328, ptr align 1 %309, i64 %329, i1 false)
  %330 = load i32, ptr %28, align 8, !tbaa !34
  store i32 %330, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !26
  br label %501

331:                                              ; preds = %302, %299, %104
  %332 = load i32, ptr %29, align 8, !tbaa !26
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %511, label %499

334:                                              ; preds = %76
  %335 = load ptr, ptr %32, align 8, !tbaa !30
  %336 = load i32, ptr %30, align 8, !tbaa !27
  %337 = shl i32 %336, 1
  store i32 0, ptr %36, align 4, !tbaa !17
  %338 = tail call ptr @__errno_location() #17
  store i32 0, ptr %338, align 4, !tbaa !45
  store i32 0, ptr %0, align 4, !tbaa !45
  br label %339

339:                                              ; preds = %359, %334
  %340 = phi i32 [ %360, %359 ], [ 0, %334 ]
  %341 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %337, i32 %340), !nosanitize !20
  %342 = extractvalue { i32, i1 } %341, 1, !nosanitize !20
  br i1 false, label %343, label %344, !prof !21, !nosanitize !20

343:                                              ; preds = %339
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

344:                                              ; preds = %339
  %345 = extractvalue { i32, i1 } %341, 0, !nosanitize !20
  %346 = tail call i32 @llvm.umin.i32(i32 %345, i32 1073741824)
  %347 = load i32, ptr %37, align 4, !tbaa !46
  %348 = zext i32 %340 to i64
  %349 = getelementptr inbounds nuw i8, ptr %335, i64 %348
  %350 = zext nneg i32 %346 to i64
  %351 = tail call i64 @read(i32 noundef %347, ptr noundef %349, i64 noundef %350) #13
  %352 = trunc i64 %351 to i32
  %353 = icmp slt i32 %352, 1
  br i1 %353, label %362, label %354

354:                                              ; preds = %344
  %355 = load i32, ptr %0, align 4, !tbaa !45
  %356 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %355, i32 %352), !nosanitize !20
  %357 = extractvalue { i32, i1 } %356, 1, !nosanitize !20
  br i1 %357, label %358, label %359, !prof !21, !nosanitize !20

358:                                              ; preds = %354
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

359:                                              ; preds = %354
  %360 = extractvalue { i32, i1 } %356, 0, !nosanitize !20
  store i32 %360, ptr %0, align 4, !tbaa !45
  %361 = icmp ult i32 %360, %337
  br i1 %361, label %339, label %376, !llvm.loop !47

362:                                              ; preds = %344
  %363 = icmp slt i32 %352, 0
  br i1 %363, label %364, label %372

364:                                              ; preds = %362
  %365 = load i32, ptr %338, align 4, !tbaa !45
  %366 = icmp eq i32 %365, 11
  br i1 %366, label %367, label %373

367:                                              ; preds = %364
  store i32 1, ptr %36, align 4, !tbaa !17
  %368 = load i32, ptr %0, align 4, !tbaa !45
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %376

370:                                              ; preds = %367
  %371 = load i32, ptr %338, align 4, !tbaa !45
  br label %373

372:                                              ; preds = %362
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %376

373:                                              ; preds = %370, %364
  %374 = phi i32 [ %371, %370 ], [ %365, %364 ]
  %375 = tail call ptr @strerror(i32 noundef %374) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %375) #13
  br label %1030

376:                                              ; preds = %372, %367, %359
  %377 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %377, ptr %25, align 8, !tbaa !22
  br label %511

378:                                              ; preds = %76
  %379 = load i32, ptr %30, align 8, !tbaa !27
  %380 = shl i32 %379, 1
  store i32 %380, ptr %31, align 8, !tbaa !48
  %381 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %381, ptr %33, align 8, !tbaa !49
  br label %382

382:                                              ; preds = %481, %378
  %383 = phi i32 [ 0, %378 ], [ %466, %481 ]
  %384 = load i32, ptr %28, align 8, !tbaa !34
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %465

386:                                              ; preds = %382
  %387 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %387, label %485 [
    i32 0, label %388
    i32 -5, label %388
  ]

388:                                              ; preds = %386, %386
  %389 = load i32, ptr %27, align 8, !tbaa !24
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %461

391:                                              ; preds = %388
  %392 = load i32, ptr %30, align 8, !tbaa !27
  %393 = load ptr, ptr %35, align 8, !tbaa !29
  store i32 0, ptr %36, align 4, !tbaa !17
  %394 = tail call ptr @__errno_location() #17
  store i32 0, ptr %394, align 4, !tbaa !45
  %mv.h16 = icmp sge i32 %392, 0
  %mv.h.fr17 = freeze i1 %mv.h16
  br i1 %mv.h.fr17, label %.mv.ph18.mv.fast, label %.mv.ph18

.mv.ph18.mv.fast:                                 ; preds = %391
  br label %395

395:                                              ; preds = %412, %.mv.ph18.mv.fast
  %396 = phi i32 [ 0, %.mv.ph18.mv.fast ], [ %413, %412 ]
  %397 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %392, i32 %396), !nosanitize !20
  %398 = extractvalue { i32, i1 } %397, 1, !nosanitize !20
  br i1 false, label %419, label %399, !prof !21, !nosanitize !20

399:                                              ; preds = %395
  %400 = extractvalue { i32, i1 } %397, 0, !nosanitize !20
  %401 = tail call i32 @llvm.umin.i32(i32 %400, i32 1073741824)
  %402 = load i32, ptr %37, align 4, !tbaa !46
  %403 = zext i32 %396 to i64
  %404 = getelementptr inbounds nuw i8, ptr %393, i64 %403
  %405 = zext nneg i32 %401 to i64
  %406 = tail call i64 @read(i32 noundef %402, ptr noundef %404, i64 noundef %405) #13
  %407 = trunc i64 %406 to i32
  %408 = icmp slt i32 %407, 1
  br i1 %408, label %437, label %409

409:                                              ; preds = %399
  %410 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %396, i32 %407), !nosanitize !20
  %411 = extractvalue { i32, i1 } %410, 1, !nosanitize !20
  br i1 false, label %433, label %412, !prof !21, !nosanitize !20

412:                                              ; preds = %409
  %413 = extractvalue { i32, i1 } %410, 0, !nosanitize !20
  %414 = icmp ult i32 %413, %392
  br i1 %414, label %395, label %.loopexit8, !llvm.loop !47

.mv.ph18:                                         ; preds = %391
  br label %415

415:                                              ; preds = %434, %.mv.ph18
  %416 = phi i32 [ 0, %.mv.ph18 ], [ %435, %434 ]
  %417 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %392, i32 %416), !nosanitize !20
  %418 = extractvalue { i32, i1 } %417, 1, !nosanitize !20
  br i1 false, label %419, label %420, !prof !21, !nosanitize !20

419:                                              ; preds = %395, %415
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

420:                                              ; preds = %415
  %421 = extractvalue { i32, i1 } %417, 0, !nosanitize !20
  %422 = tail call i32 @llvm.umin.i32(i32 %421, i32 1073741824)
  %423 = load i32, ptr %37, align 4, !tbaa !46
  %424 = zext i32 %416 to i64
  %425 = getelementptr inbounds nuw i8, ptr %393, i64 %424
  %426 = zext nneg i32 %422 to i64
  %427 = tail call i64 @read(i32 noundef %423, ptr noundef %425, i64 noundef %426) #13
  %428 = trunc i64 %427 to i32
  %429 = icmp slt i32 %428, 1
  br i1 %429, label %437, label %430

430:                                              ; preds = %420
  %431 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %416, i32 %428), !nosanitize !20
  %432 = extractvalue { i32, i1 } %431, 1, !nosanitize !20
  br i1 %432, label %433, label %434, !prof !21, !nosanitize !20

433:                                              ; preds = %409, %430
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

434:                                              ; preds = %430
  %435 = extractvalue { i32, i1 } %431, 0, !nosanitize !20
  %436 = icmp ult i32 %435, %392
  br i1 %436, label %415, label %.loopexit8, !llvm.loop !47

437:                                              ; preds = %399, %420
  %.lcssa12 = phi i32 [ %428, %420 ], [ %407, %399 ]
  %.lcssa9 = phi i32 [ %416, %420 ], [ %396, %399 ]
  %438 = icmp slt i32 %.lcssa12, 0
  br i1 %438, label %439, label %446

439:                                              ; preds = %437
  %440 = load i32, ptr %394, align 4, !tbaa !45
  %441 = icmp eq i32 %440, 11
  br i1 %441, label %442, label %447

442:                                              ; preds = %439
  store i32 1, ptr %36, align 4, !tbaa !17
  %443 = icmp eq i32 %.lcssa9, 0
  br i1 %443, label %444, label %451

444:                                              ; preds = %442
  %445 = load i32, ptr %394, align 4, !tbaa !45
  br label %447

446:                                              ; preds = %437
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %451

447:                                              ; preds = %444, %439
  %448 = phi i32 [ %445, %444 ], [ %440, %439 ]
  %449 = tail call ptr @strerror(i32 noundef %448) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %449) #13
  %450 = load i32, ptr %14, align 8, !tbaa !16
  br label %485

.loopexit8:                                       ; preds = %412, %434
  %.lcssa15 = phi i32 [ %435, %434 ], [ %413, %412 ]
  br label %451

451:                                              ; preds = %.loopexit8, %446, %442
  %452 = phi i32 [ %.lcssa9, %446 ], [ %.lcssa9, %442 ], [ %.lcssa15, %.loopexit8 ]
  %453 = load i32, ptr %28, align 8, !tbaa !34
  %454 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %453, i32 %452), !nosanitize !20
  %455 = extractvalue { i32, i1 } %454, 1, !nosanitize !20
  br i1 %455, label %456, label %457, !prof !21, !nosanitize !20

456:                                              ; preds = %451
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

457:                                              ; preds = %451
  %458 = extractvalue { i32, i1 } %454, 0, !nosanitize !20
  store i32 %458, ptr %28, align 8, !tbaa !34
  %459 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %459, ptr %34, align 8, !tbaa !35
  %460 = icmp eq i32 %458, 0
  br i1 %460, label %461, label %465

461:                                              ; preds = %457, %388
  %462 = load i32, ptr %36, align 4, !tbaa !17
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %464, label %485

464:                                              ; preds = %461
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %485

465:                                              ; preds = %457, %382
  %466 = tail call i32 @inflate(ptr noundef nonnull %34, i32 noundef 0) #13
  %467 = load i32, ptr %31, align 8, !tbaa !48
  %468 = icmp ult i32 %467, %380
  br i1 %468, label %469, label %470

469:                                              ; preds = %465
  store i32 0, ptr %38, align 4, !tbaa !33
  br label %470

470:                                              ; preds = %469, %465
  switch i32 %466, label %481 [
    i32 -2, label %471
    i32 2, label %471
    i32 -4, label %472
    i32 -3, label %473
  ]

471:                                              ; preds = %470, %470
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %485

472:                                              ; preds = %470
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %485

473:                                              ; preds = %470
  %474 = load i32, ptr %38, align 4, !tbaa !33
  %475 = icmp eq i32 %474, 1
  br i1 %475, label %476, label %477

476:                                              ; preds = %473
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %27, align 8, !tbaa !24
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %485

477:                                              ; preds = %473
  %478 = load ptr, ptr %39, align 8, !tbaa !50
  %479 = icmp eq ptr %478, null
  %480 = select i1 %479, ptr @.str.6, ptr %478
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %480) #13
  br label %485

481:                                              ; preds = %470
  %482 = icmp ne i32 %467, 0
  %483 = icmp ne i32 %466, 1
  %484 = select i1 %482, i1 %483, i1 false
  br i1 %484, label %382, label %485, !llvm.loop !51

485:                                              ; preds = %481, %477, %476, %472, %471, %464, %461, %447, %386
  %486 = phi i32 [ %383, %461 ], [ %383, %464 ], [ %466, %471 ], [ -4, %472 ], [ 0, %476 ], [ -3, %477 ], [ %450, %447 ], [ %387, %386 ], [ %466, %481 ]
  %487 = load i32, ptr %31, align 8, !tbaa !48
  %488 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %380, i32 %487), !nosanitize !20
  %489 = extractvalue { i32, i1 } %488, 1, !nosanitize !20
  br i1 %489, label %490, label %491, !prof !21, !nosanitize !20

490:                                              ; preds = %485
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

491:                                              ; preds = %485
  %492 = extractvalue { i32, i1 } %488, 0, !nosanitize !20
  store i32 %492, ptr %0, align 8, !tbaa !19
  %493 = load ptr, ptr %33, align 8, !tbaa !49
  %494 = zext i32 %492 to i64
  %495 = sub nsw i64 0, %494
  %496 = getelementptr inbounds i8, ptr %493, i64 %495
  store ptr %496, ptr %25, align 8, !tbaa !22
  switch i32 %486, label %1030 [
    i32 1, label %497
    i32 0, label %499
  ]

497:                                              ; preds = %491
  store i32 0, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %499

498:                                              ; preds = %76
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1030

499:                                              ; preds = %497, %491, %331, %325
  %500 = load i32, ptr %0, align 8, !tbaa !19
  br label %501

501:                                              ; preds = %499, %327
  %502 = phi i32 [ %500, %499 ], [ %330, %327 ]
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %504, label %511

504:                                              ; preds = %501
  %505 = load i32, ptr %27, align 8, !tbaa !24
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %510, label %507

507:                                              ; preds = %504
  %508 = load i32, ptr %28, align 8, !tbaa !34
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %511, label %510

510:                                              ; preds = %507, %504
  br label %76, !llvm.loop !52

511:                                              ; preds = %507, %501, %376, %331
  %512 = load i64, ptr %21, align 8, !tbaa !18
  br label %513

513:                                              ; preds = %511, %67
  %514 = phi i64 [ %512, %511 ], [ %68, %67 ]
  %515 = icmp eq i64 %514, 0
  br i1 %515, label %516, label %43, !llvm.loop !53

516:                                              ; preds = %513, %72, %20
  %517 = add nsw i32 %2, -1
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %1030, label %519

519:                                              ; preds = %516
  %520 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %521 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %522 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %523 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %524 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %525 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %526 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %527 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %528 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %529 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %530 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %531 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %532 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %533 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %534 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %535 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %536 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %537 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %538 = load i32, ptr %0, align 8, !tbaa !19
  br label %539

539:                                              ; preds = %1021, %519
  %540 = phi i32 [ %1010, %1021 ], [ %538, %519 ]
  %541 = phi i32 [ %1022, %1021 ], [ %517, %519 ]
  %542 = phi ptr [ %1023, %1021 ], [ %1, %519 ]
  %543 = icmp eq i32 %540, 0
  br i1 %543, label %544, label %984

544:                                              ; preds = %978, %539
  %545 = load i32, ptr %520, align 8, !tbaa !26
  switch i32 %545, label %966 [
    i32 0, label %546
    i32 1, label %802
    i32 2, label %846
  ]

546:                                              ; preds = %544
  %547 = load i32, ptr %521, align 8, !tbaa !27
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %566

549:                                              ; preds = %546
  %550 = load i32, ptr %534, align 4, !tbaa !28
  %551 = zext i32 %550 to i64
  %552 = tail call noalias ptr @malloc(i64 noundef %551) #16
  store ptr %552, ptr %528, align 8, !tbaa !29
  %553 = shl i32 %550, 1
  %554 = zext i32 %553 to i64
  %555 = tail call noalias ptr @malloc(i64 noundef %554) #16
  store ptr %555, ptr %523, align 8, !tbaa !30
  %556 = icmp eq ptr %552, null
  %557 = icmp eq ptr %555, null
  %558 = or i1 %556, %557
  br i1 %558, label %559, label %560

559:                                              ; preds = %549
  tail call void @free(ptr noundef %555) #13
  tail call void @free(ptr noundef %552) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1026

560:                                              ; preds = %549
  store i32 %550, ptr %521, align 8, !tbaa !27
  store i32 0, ptr %526, align 8, !tbaa !25
  store ptr null, ptr %525, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %535, i8 0, i64 24, i1 false)
  %561 = tail call i32 @inflateInit2_(ptr noundef nonnull %525, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %566, label %563

563:                                              ; preds = %560
  %564 = load ptr, ptr %523, align 8, !tbaa !30
  tail call void @free(ptr noundef %564) #13
  %565 = load ptr, ptr %528, align 8, !tbaa !29
  tail call void @free(ptr noundef %565) #13
  store i32 0, ptr %521, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1026

566:                                              ; preds = %560, %546
  %567 = load i32, ptr %536, align 8, !tbaa !32
  %568 = icmp eq i32 %567, -1
  br i1 %568, label %572, label %569

569:                                              ; preds = %566
  %570 = load i32, ptr %531, align 4, !tbaa !33
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %572, label %577

572:                                              ; preds = %569, %566
  %573 = tail call i32 @inflateReset(ptr noundef nonnull %525) #13
  store i32 2, ptr %520, align 8, !tbaa !26
  %574 = load i32, ptr %531, align 4, !tbaa !33
  %575 = icmp ne i32 %574, -1
  %576 = zext i1 %575 to i32
  store i32 %576, ptr %531, align 4, !tbaa !33
  store i32 0, ptr %536, align 8, !tbaa !32
  br label %799

577:                                              ; preds = %569
  %578 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %578, label %1026 [
    i32 0, label %579
    i32 -5, label %579
  ]

579:                                              ; preds = %577, %577
  %580 = load i32, ptr %527, align 8, !tbaa !24
  %581 = icmp eq i32 %580, 0
  %582 = load i32, ptr %526, align 8, !tbaa !34
  br i1 %581, label %583, label %767

583:                                              ; preds = %579
  %584 = icmp eq i32 %582, 0
  br i1 %584, label %691, label %585

585:                                              ; preds = %583
  %586 = load ptr, ptr %528, align 8, !tbaa !29
  %587 = load ptr, ptr %525, align 8, !tbaa !35
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
  br i1 %610, label %611, label %601, !llvm.loop !99

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
  br i1 %633, label %634, label %627, !llvm.loop !100

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
  br i1 %653, label %654, label %643, !llvm.loop !101

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
  br i1 %688, label %689, label %659, !llvm.loop !102

689:                                              ; preds = %659, %654, %634, %611
  %690 = load i32, ptr %526, align 8, !tbaa !34
  br label %691

691:                                              ; preds = %689, %585, %583
  %692 = phi i32 [ %690, %689 ], [ %582, %585 ], [ 0, %583 ]
  %693 = load i32, ptr %521, align 8, !tbaa !27
  %694 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %693, i32 %692), !nosanitize !20
  %695 = extractvalue { i32, i1 } %694, 1, !nosanitize !20
  br i1 %695, label %696, label %697, !prof !21, !nosanitize !20

696:                                              ; preds = %691
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

697:                                              ; preds = %691
  %698 = extractvalue { i32, i1 } %694, 0, !nosanitize !20
  %699 = load ptr, ptr %528, align 8, !tbaa !29
  %700 = zext i32 %692 to i64
  %701 = getelementptr inbounds nuw i8, ptr %699, i64 %700
  store i32 0, ptr %529, align 4, !tbaa !17
  %702 = tail call ptr @__errno_location() #17
  store i32 0, ptr %702, align 4, !tbaa !45
  %mv.h27 = icmp sge i32 %693, 0
  %mv.h.fr28 = freeze i1 %mv.h27
  br i1 %mv.h.fr28, label %.mv.ph29.mv.fast, label %.mv.ph29

.mv.ph29.mv.fast:                                 ; preds = %697
  br label %703

703:                                              ; preds = %720, %.mv.ph29.mv.fast
  %704 = phi i32 [ 0, %.mv.ph29.mv.fast ], [ %721, %720 ]
  %705 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %698, i32 %704), !nosanitize !20
  %706 = extractvalue { i32, i1 } %705, 1, !nosanitize !20
  br i1 false, label %727, label %707, !prof !21, !nosanitize !20

707:                                              ; preds = %703
  %708 = extractvalue { i32, i1 } %705, 0, !nosanitize !20
  %709 = tail call i32 @llvm.umin.i32(i32 %708, i32 1073741824)
  %710 = load i32, ptr %530, align 4, !tbaa !46
  %711 = zext i32 %704 to i64
  %712 = getelementptr inbounds nuw i8, ptr %701, i64 %711
  %713 = zext nneg i32 %709 to i64
  %714 = tail call i64 @read(i32 noundef %710, ptr noundef %712, i64 noundef %713) #13
  %715 = trunc i64 %714 to i32
  %716 = icmp slt i32 %715, 1
  br i1 %716, label %745, label %717

717:                                              ; preds = %707
  %718 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %704, i32 %715), !nosanitize !20
  %719 = extractvalue { i32, i1 } %718, 1, !nosanitize !20
  br i1 false, label %741, label %720, !prof !21, !nosanitize !20

720:                                              ; preds = %717
  %721 = extractvalue { i32, i1 } %718, 0, !nosanitize !20
  %722 = icmp ult i32 %721, %698
  br i1 %722, label %703, label %.loopexit19, !llvm.loop !47

.mv.ph29:                                         ; preds = %697
  br label %723

723:                                              ; preds = %742, %.mv.ph29
  %724 = phi i32 [ 0, %.mv.ph29 ], [ %743, %742 ]
  %725 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %698, i32 %724), !nosanitize !20
  %726 = extractvalue { i32, i1 } %725, 1, !nosanitize !20
  br i1 false, label %727, label %728, !prof !21, !nosanitize !20

727:                                              ; preds = %703, %723
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

728:                                              ; preds = %723
  %729 = extractvalue { i32, i1 } %725, 0, !nosanitize !20
  %730 = tail call i32 @llvm.umin.i32(i32 %729, i32 1073741824)
  %731 = load i32, ptr %530, align 4, !tbaa !46
  %732 = zext i32 %724 to i64
  %733 = getelementptr inbounds nuw i8, ptr %701, i64 %732
  %734 = zext nneg i32 %730 to i64
  %735 = tail call i64 @read(i32 noundef %731, ptr noundef %733, i64 noundef %734) #13
  %736 = trunc i64 %735 to i32
  %737 = icmp slt i32 %736, 1
  br i1 %737, label %745, label %738

738:                                              ; preds = %728
  %739 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %724, i32 %736), !nosanitize !20
  %740 = extractvalue { i32, i1 } %739, 1, !nosanitize !20
  br i1 %740, label %741, label %742, !prof !21, !nosanitize !20

741:                                              ; preds = %717, %738
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

742:                                              ; preds = %738
  %743 = extractvalue { i32, i1 } %739, 0, !nosanitize !20
  %744 = icmp ult i32 %743, %698
  br i1 %744, label %723, label %.loopexit19, !llvm.loop !47

745:                                              ; preds = %707, %728
  %.lcssa23 = phi i32 [ %736, %728 ], [ %715, %707 ]
  %.lcssa20 = phi i32 [ %724, %728 ], [ %704, %707 ]
  %746 = icmp slt i32 %.lcssa23, 0
  br i1 %746, label %747, label %754

747:                                              ; preds = %745
  %748 = load i32, ptr %702, align 4, !tbaa !45
  %749 = icmp eq i32 %748, 11
  br i1 %749, label %750, label %755

750:                                              ; preds = %747
  store i32 1, ptr %529, align 4, !tbaa !17
  %751 = icmp eq i32 %.lcssa20, 0
  br i1 %751, label %752, label %758

752:                                              ; preds = %750
  %753 = load i32, ptr %702, align 4, !tbaa !45
  br label %755

754:                                              ; preds = %745
  store i32 1, ptr %527, align 8, !tbaa !24
  br label %758

755:                                              ; preds = %752, %747
  %756 = phi i32 [ %753, %752 ], [ %748, %747 ]
  %757 = tail call ptr @strerror(i32 noundef %756) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %757) #13
  br label %1026

.loopexit19:                                      ; preds = %720, %742
  %.lcssa26 = phi i32 [ %743, %742 ], [ %721, %720 ]
  br label %758

758:                                              ; preds = %.loopexit19, %754, %750
  %759 = phi i32 [ %.lcssa20, %754 ], [ %.lcssa20, %750 ], [ %.lcssa26, %.loopexit19 ]
  %760 = load i32, ptr %526, align 8, !tbaa !34
  %761 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %760, i32 %759), !nosanitize !20
  %762 = extractvalue { i32, i1 } %761, 1, !nosanitize !20
  br i1 %762, label %763, label %764, !prof !21, !nosanitize !20

763:                                              ; preds = %758
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

764:                                              ; preds = %758
  %765 = extractvalue { i32, i1 } %761, 0, !nosanitize !20
  store i32 %765, ptr %526, align 8, !tbaa !34
  %766 = load ptr, ptr %528, align 8, !tbaa !29
  store ptr %766, ptr %525, align 8, !tbaa !35
  br label %767

767:                                              ; preds = %764, %579
  %768 = phi i32 [ %765, %764 ], [ %582, %579 ]
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %799, label %770

770:                                              ; preds = %767
  %771 = load i32, ptr %529, align 4, !tbaa !17
  %772 = icmp ne i32 %771, 0
  %773 = icmp ult i32 %768, 4
  %774 = and i1 %773, %772
  br i1 %774, label %799, label %775

775:                                              ; preds = %770
  %776 = icmp ugt i32 %768, 3
  %777 = load ptr, ptr %525, align 8, !tbaa !35
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
  %794 = tail call i32 @inflateReset(ptr noundef nonnull %525) #13
  store i32 2, ptr %520, align 8, !tbaa !26
  store i32 1, ptr %531, align 4, !tbaa !33
  store i32 0, ptr %536, align 8, !tbaa !32
  br label %967

795:                                              ; preds = %789, %785, %781, %778, %775
  %796 = load ptr, ptr %523, align 8, !tbaa !30
  store ptr %796, ptr %533, align 8, !tbaa !22
  %797 = zext i32 %768 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %796, ptr align 1 %777, i64 %797, i1 false)
  %798 = load i32, ptr %526, align 8, !tbaa !34
  store i32 %798, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %526, align 8, !tbaa !34
  store i32 1, ptr %520, align 8, !tbaa !26
  br label %969

799:                                              ; preds = %770, %767, %572
  %800 = load i32, ptr %520, align 8, !tbaa !26
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %979, label %967

802:                                              ; preds = %544
  %803 = load ptr, ptr %523, align 8, !tbaa !30
  %804 = load i32, ptr %521, align 8, !tbaa !27
  %805 = shl i32 %804, 1
  store i32 0, ptr %529, align 4, !tbaa !17
  %806 = tail call ptr @__errno_location() #17
  store i32 0, ptr %806, align 4, !tbaa !45
  store i32 0, ptr %0, align 4, !tbaa !45
  br label %807

807:                                              ; preds = %827, %802
  %808 = phi i32 [ %828, %827 ], [ 0, %802 ]
  %809 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %805, i32 %808), !nosanitize !20
  %810 = extractvalue { i32, i1 } %809, 1, !nosanitize !20
  br i1 false, label %811, label %812, !prof !21, !nosanitize !20

811:                                              ; preds = %807
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

812:                                              ; preds = %807
  %813 = extractvalue { i32, i1 } %809, 0, !nosanitize !20
  %814 = tail call i32 @llvm.umin.i32(i32 %813, i32 1073741824)
  %815 = load i32, ptr %530, align 4, !tbaa !46
  %816 = zext i32 %808 to i64
  %817 = getelementptr inbounds nuw i8, ptr %803, i64 %816
  %818 = zext nneg i32 %814 to i64
  %819 = tail call i64 @read(i32 noundef %815, ptr noundef %817, i64 noundef %818) #13
  %820 = trunc i64 %819 to i32
  %821 = icmp slt i32 %820, 1
  br i1 %821, label %830, label %822

822:                                              ; preds = %812
  %823 = load i32, ptr %0, align 4, !tbaa !45
  %824 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %823, i32 %820), !nosanitize !20
  %825 = extractvalue { i32, i1 } %824, 1, !nosanitize !20
  br i1 %825, label %826, label %827, !prof !21, !nosanitize !20

826:                                              ; preds = %822
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
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
  store i32 1, ptr %529, align 4, !tbaa !17
  %836 = load i32, ptr %0, align 4, !tbaa !45
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %838, label %844

838:                                              ; preds = %835
  %839 = load i32, ptr %806, align 4, !tbaa !45
  br label %841

840:                                              ; preds = %830
  store i32 1, ptr %527, align 8, !tbaa !24
  br label %844

841:                                              ; preds = %838, %832
  %842 = phi i32 [ %839, %838 ], [ %833, %832 ]
  %843 = tail call ptr @strerror(i32 noundef %842) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %843) #13
  br label %1026

844:                                              ; preds = %840, %835, %827
  %845 = load ptr, ptr %523, align 8, !tbaa !30
  store ptr %845, ptr %533, align 8, !tbaa !22
  br label %979

846:                                              ; preds = %544
  %847 = load i32, ptr %521, align 8, !tbaa !27
  %848 = shl i32 %847, 1
  store i32 %848, ptr %522, align 8, !tbaa !48
  %849 = load ptr, ptr %523, align 8, !tbaa !30
  store ptr %849, ptr %524, align 8, !tbaa !49
  br label %850

850:                                              ; preds = %949, %846
  %851 = phi i32 [ 0, %846 ], [ %934, %949 ]
  %852 = load i32, ptr %526, align 8, !tbaa !34
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %854, label %933

854:                                              ; preds = %850
  %855 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %855, label %953 [
    i32 0, label %856
    i32 -5, label %856
  ]

856:                                              ; preds = %854, %854
  %857 = load i32, ptr %527, align 8, !tbaa !24
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %859, label %929

859:                                              ; preds = %856
  %860 = load i32, ptr %521, align 8, !tbaa !27
  %861 = load ptr, ptr %528, align 8, !tbaa !29
  store i32 0, ptr %529, align 4, !tbaa !17
  %862 = tail call ptr @__errno_location() #17
  store i32 0, ptr %862, align 4, !tbaa !45
  %mv.h = icmp sge i32 %860, 0
  %mv.h.fr = freeze i1 %mv.h
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %859
  br label %863

863:                                              ; preds = %880, %.mv.ph.mv.fast
  %864 = phi i32 [ 0, %.mv.ph.mv.fast ], [ %881, %880 ]
  %865 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %860, i32 %864), !nosanitize !20
  %866 = extractvalue { i32, i1 } %865, 1, !nosanitize !20
  br i1 false, label %887, label %867, !prof !21, !nosanitize !20

867:                                              ; preds = %863
  %868 = extractvalue { i32, i1 } %865, 0, !nosanitize !20
  %869 = tail call i32 @llvm.umin.i32(i32 %868, i32 1073741824)
  %870 = load i32, ptr %530, align 4, !tbaa !46
  %871 = zext i32 %864 to i64
  %872 = getelementptr inbounds nuw i8, ptr %861, i64 %871
  %873 = zext nneg i32 %869 to i64
  %874 = tail call i64 @read(i32 noundef %870, ptr noundef %872, i64 noundef %873) #13
  %875 = trunc i64 %874 to i32
  %876 = icmp slt i32 %875, 1
  br i1 %876, label %905, label %877

877:                                              ; preds = %867
  %878 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %864, i32 %875), !nosanitize !20
  %879 = extractvalue { i32, i1 } %878, 1, !nosanitize !20
  br i1 false, label %901, label %880, !prof !21, !nosanitize !20

880:                                              ; preds = %877
  %881 = extractvalue { i32, i1 } %878, 0, !nosanitize !20
  %882 = icmp ult i32 %881, %860
  br i1 %882, label %863, label %.loopexit, !llvm.loop !47

.mv.ph:                                           ; preds = %859
  br label %883

883:                                              ; preds = %902, %.mv.ph
  %884 = phi i32 [ 0, %.mv.ph ], [ %903, %902 ]
  %885 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %860, i32 %884), !nosanitize !20
  %886 = extractvalue { i32, i1 } %885, 1, !nosanitize !20
  br i1 false, label %887, label %888, !prof !21, !nosanitize !20

887:                                              ; preds = %863, %883
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

888:                                              ; preds = %883
  %889 = extractvalue { i32, i1 } %885, 0, !nosanitize !20
  %890 = tail call i32 @llvm.umin.i32(i32 %889, i32 1073741824)
  %891 = load i32, ptr %530, align 4, !tbaa !46
  %892 = zext i32 %884 to i64
  %893 = getelementptr inbounds nuw i8, ptr %861, i64 %892
  %894 = zext nneg i32 %890 to i64
  %895 = tail call i64 @read(i32 noundef %891, ptr noundef %893, i64 noundef %894) #13
  %896 = trunc i64 %895 to i32
  %897 = icmp slt i32 %896, 1
  br i1 %897, label %905, label %898

898:                                              ; preds = %888
  %899 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %884, i32 %896), !nosanitize !20
  %900 = extractvalue { i32, i1 } %899, 1, !nosanitize !20
  br i1 %900, label %901, label %902, !prof !21, !nosanitize !20

901:                                              ; preds = %877, %898
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

902:                                              ; preds = %898
  %903 = extractvalue { i32, i1 } %899, 0, !nosanitize !20
  %904 = icmp ult i32 %903, %860
  br i1 %904, label %883, label %.loopexit, !llvm.loop !47

905:                                              ; preds = %867, %888
  %.lcssa4 = phi i32 [ %896, %888 ], [ %875, %867 ]
  %.lcssa1 = phi i32 [ %884, %888 ], [ %864, %867 ]
  %906 = icmp slt i32 %.lcssa4, 0
  br i1 %906, label %907, label %914

907:                                              ; preds = %905
  %908 = load i32, ptr %862, align 4, !tbaa !45
  %909 = icmp eq i32 %908, 11
  br i1 %909, label %910, label %915

910:                                              ; preds = %907
  store i32 1, ptr %529, align 4, !tbaa !17
  %911 = icmp eq i32 %.lcssa1, 0
  br i1 %911, label %912, label %919

912:                                              ; preds = %910
  %913 = load i32, ptr %862, align 4, !tbaa !45
  br label %915

914:                                              ; preds = %905
  store i32 1, ptr %527, align 8, !tbaa !24
  br label %919

915:                                              ; preds = %912, %907
  %916 = phi i32 [ %913, %912 ], [ %908, %907 ]
  %917 = tail call ptr @strerror(i32 noundef %916) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %917) #13
  %918 = load i32, ptr %14, align 8, !tbaa !16
  br label %953

.loopexit:                                        ; preds = %880, %902
  %.lcssa7 = phi i32 [ %903, %902 ], [ %881, %880 ]
  br label %919

919:                                              ; preds = %.loopexit, %914, %910
  %920 = phi i32 [ %.lcssa1, %914 ], [ %.lcssa1, %910 ], [ %.lcssa7, %.loopexit ]
  %921 = load i32, ptr %526, align 8, !tbaa !34
  %922 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %921, i32 %920), !nosanitize !20
  %923 = extractvalue { i32, i1 } %922, 1, !nosanitize !20
  br i1 %923, label %924, label %925, !prof !21, !nosanitize !20

924:                                              ; preds = %919
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

925:                                              ; preds = %919
  %926 = extractvalue { i32, i1 } %922, 0, !nosanitize !20
  store i32 %926, ptr %526, align 8, !tbaa !34
  %927 = load ptr, ptr %528, align 8, !tbaa !29
  store ptr %927, ptr %525, align 8, !tbaa !35
  %928 = icmp eq i32 %926, 0
  br i1 %928, label %929, label %933

929:                                              ; preds = %925, %856
  %930 = load i32, ptr %529, align 4, !tbaa !17
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %932, label %953

932:                                              ; preds = %929
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %953

933:                                              ; preds = %925, %850
  %934 = tail call i32 @inflate(ptr noundef nonnull %525, i32 noundef 0) #13
  %935 = load i32, ptr %522, align 8, !tbaa !48
  %936 = icmp ult i32 %935, %848
  br i1 %936, label %937, label %938

937:                                              ; preds = %933
  store i32 0, ptr %531, align 4, !tbaa !33
  br label %938

938:                                              ; preds = %937, %933
  switch i32 %934, label %949 [
    i32 -2, label %939
    i32 2, label %939
    i32 -4, label %940
    i32 -3, label %941
  ]

939:                                              ; preds = %938, %938
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %953

940:                                              ; preds = %938
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %953

941:                                              ; preds = %938
  %942 = load i32, ptr %531, align 4, !tbaa !33
  %943 = icmp eq i32 %942, 1
  br i1 %943, label %944, label %945

944:                                              ; preds = %941
  store i32 0, ptr %526, align 8, !tbaa !34
  store i32 1, ptr %527, align 8, !tbaa !24
  store i32 0, ptr %520, align 8, !tbaa !26
  br label %953

945:                                              ; preds = %941
  %946 = load ptr, ptr %532, align 8, !tbaa !50
  %947 = icmp eq ptr %946, null
  %948 = select i1 %947, ptr @.str.6, ptr %946
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %948) #13
  br label %953

949:                                              ; preds = %938
  %950 = icmp ne i32 %935, 0
  %951 = icmp ne i32 %934, 1
  %952 = select i1 %950, i1 %951, i1 false
  br i1 %952, label %850, label %953, !llvm.loop !51

953:                                              ; preds = %949, %945, %944, %940, %939, %932, %929, %915, %854
  %954 = phi i32 [ %851, %929 ], [ %851, %932 ], [ %934, %939 ], [ -4, %940 ], [ 0, %944 ], [ -3, %945 ], [ %918, %915 ], [ %934, %949 ], [ %855, %854 ]
  %955 = load i32, ptr %522, align 8, !tbaa !48
  %956 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %848, i32 %955), !nosanitize !20
  %957 = extractvalue { i32, i1 } %956, 1, !nosanitize !20
  br i1 %957, label %958, label %959, !prof !21, !nosanitize !20

958:                                              ; preds = %953
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

959:                                              ; preds = %953
  %960 = extractvalue { i32, i1 } %956, 0, !nosanitize !20
  store i32 %960, ptr %0, align 8, !tbaa !19
  %961 = load ptr, ptr %524, align 8, !tbaa !49
  %962 = zext i32 %960 to i64
  %963 = sub nsw i64 0, %962
  %964 = getelementptr inbounds i8, ptr %961, i64 %963
  store ptr %964, ptr %533, align 8, !tbaa !22
  switch i32 %954, label %1026 [
    i32 1, label %965
    i32 0, label %967
  ]

965:                                              ; preds = %959
  store i32 0, ptr %531, align 4, !tbaa !33
  store i32 0, ptr %520, align 8, !tbaa !26
  br label %967

966:                                              ; preds = %544
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1026

967:                                              ; preds = %965, %959, %799, %793
  %968 = load i32, ptr %0, align 8, !tbaa !19
  br label %969

969:                                              ; preds = %967, %795
  %970 = phi i32 [ %968, %967 ], [ %798, %795 ]
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %972, label %979

972:                                              ; preds = %969
  %973 = load i32, ptr %527, align 8, !tbaa !24
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %978, label %975

975:                                              ; preds = %972
  %976 = load i32, ptr %526, align 8, !tbaa !34
  %977 = icmp eq i32 %976, 0
  br i1 %977, label %979, label %978

978:                                              ; preds = %975, %972
  br label %544, !llvm.loop !52

979:                                              ; preds = %975, %969, %844, %799
  %980 = load i32, ptr %0, align 8, !tbaa !19
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %982, label %984

982:                                              ; preds = %979
  %983 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %983, align 4, !tbaa !61
  br label %1026

984:                                              ; preds = %979, %539
  %985 = phi i32 [ %980, %979 ], [ %540, %539 ]
  %986 = tail call i32 @llvm.umin.i32(i32 %985, i32 %541)
  %987 = load ptr, ptr %533, align 8, !tbaa !22
  %988 = zext i32 %986 to i64
  %989 = tail call ptr @memchr(ptr noundef %987, i32 noundef 10, i64 noundef %988) #18
  %990 = icmp eq ptr %989, null
  br i1 %990, label %1002, label %991

991:                                              ; preds = %984
  %992 = ptrtoint ptr %989 to i64
  %993 = ptrtoint ptr %987 to i64
  %994 = sub i64 %992, %993
  %995 = trunc i64 %994 to i32
  %996 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %995, i32 1), !nosanitize !20
  %997 = extractvalue { i32, i1 } %996, 1, !nosanitize !20
  br i1 %997, label %998, label %999, !prof !21, !nosanitize !20

998:                                              ; preds = %1009, %991
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

999:                                              ; preds = %991
  %1000 = extractvalue { i32, i1 } %996, 0, !nosanitize !20
  %1001 = zext i32 %1000 to i64
  br label %1002

1002:                                             ; preds = %999, %984
  %1003 = phi i64 [ %1001, %999 ], [ %988, %984 ]
  %1004 = phi i32 [ %1000, %999 ], [ %986, %984 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %542, ptr align 1 %987, i64 %1003, i1 false)
  %1005 = load i32, ptr %0, align 8, !tbaa !19
  %1006 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1005, i32 %1004), !nosanitize !20
  %1007 = extractvalue { i32, i1 } %1006, 1, !nosanitize !20
  br i1 %1007, label %1008, label %1009, !prof !21, !nosanitize !20

1008:                                             ; preds = %1002
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1009:                                             ; preds = %1002
  %1010 = extractvalue { i32, i1 } %1006, 0, !nosanitize !20
  store i32 %1010, ptr %0, align 8, !tbaa !19
  %1011 = load ptr, ptr %533, align 8, !tbaa !22
  %1012 = getelementptr inbounds nuw i8, ptr %1011, i64 %1003
  store ptr %1012, ptr %533, align 8, !tbaa !22
  %1013 = load i64, ptr %537, align 8, !tbaa !23
  %1014 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1013, i64 %1003), !nosanitize !20
  %1015 = extractvalue { i64, i1 } %1014, 1, !nosanitize !20
  br i1 %1015, label %998, label %1016, !prof !21, !nosanitize !20

1016:                                             ; preds = %1009
  %1017 = extractvalue { i64, i1 } %1014, 0, !nosanitize !20
  store i64 %1017, ptr %537, align 8, !tbaa !23
  %1018 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %541, i32 %1004), !nosanitize !20
  %1019 = extractvalue { i32, i1 } %1018, 1, !nosanitize !20
  br i1 %1019, label %1020, label %1021, !prof !21, !nosanitize !20

1020:                                             ; preds = %1016
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1021:                                             ; preds = %1016
  %1022 = extractvalue { i32, i1 } %1018, 0, !nosanitize !20
  %1023 = getelementptr inbounds nuw i8, ptr %542, i64 %1003
  %1024 = icmp ne i32 %1022, 0
  %1025 = and i1 %990, %1024
  br i1 %1025, label %539, label %1026, !llvm.loop !103

1026:                                             ; preds = %1021, %982, %966, %959, %841, %755, %577, %563, %559
  %1027 = phi ptr [ %542, %982 ], [ %542, %966 ], [ %542, %841 ], [ %542, %559 ], [ %542, %563 ], [ %542, %755 ], [ %542, %959 ], [ %542, %577 ], [ %1023, %1021 ]
  %1028 = icmp eq ptr %1027, %1
  br i1 %1028, label %1030, label %1029

1029:                                             ; preds = %1026
  store i8 0, ptr %1027, align 1, !tbaa !36
  br label %1030

1030:                                             ; preds = %1029, %1026, %516, %498, %491, %373, %287, %109, %95, %91, %16, %9, %3
  %1031 = phi ptr [ %1, %1029 ], [ null, %3 ], [ null, %9 ], [ null, %16 ], [ null, %1026 ], [ null, %498 ], [ null, %373 ], [ null, %91 ], [ null, %95 ], [ null, %287 ], [ null, %516 ], [ null, %491 ], [ null, %109 ]
  ret ptr %1031
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @gzdirect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %292, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %287

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load i32, ptr %8, align 8, !tbaa !26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %287

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 8, !tbaa !19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %287

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
  br label %287

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
  br label %287

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
  br label %287

55:                                               ; preds = %45
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %57 = load i32, ptr %56, align 8, !tbaa !16
  switch i32 %57, label %287 [
    i32 0, label %58
    i32 -5, label %58
  ]

58:                                               ; preds = %55, %55
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %60 = load i32, ptr %59, align 8, !tbaa !24
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %63 = load i32, ptr %62, align 8, !tbaa !34
  br i1 %61, label %64, label %252

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
  %mv.h = icmp sge i32 %176, 0
  %mv.h.fr = freeze i1 %mv.h
  br i1 %mv.h.fr, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %180
  br label %188

188:                                              ; preds = %205, %.mv.ph.mv.fast
  %189 = phi i32 [ 0, %.mv.ph.mv.fast ], [ %206, %205 ]
  %190 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %181, i32 %189), !nosanitize !20
  %191 = extractvalue { i32, i1 } %190, 1, !nosanitize !20
  br i1 false, label %212, label %192, !prof !21, !nosanitize !20

192:                                              ; preds = %188
  %193 = extractvalue { i32, i1 } %190, 0, !nosanitize !20
  %194 = tail call i32 @llvm.umin.i32(i32 %193, i32 1073741824)
  %195 = load i32, ptr %187, align 4, !tbaa !46
  %196 = zext i32 %189 to i64
  %197 = getelementptr inbounds nuw i8, ptr %184, i64 %196
  %198 = zext nneg i32 %194 to i64
  %199 = tail call i64 @read(i32 noundef %195, ptr noundef %197, i64 noundef %198) #13
  %200 = trunc i64 %199 to i32
  %201 = icmp slt i32 %200, 1
  br i1 %201, label %230, label %202

202:                                              ; preds = %192
  %203 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %189, i32 %200), !nosanitize !20
  %204 = extractvalue { i32, i1 } %203, 1, !nosanitize !20
  br i1 false, label %226, label %205, !prof !21, !nosanitize !20

205:                                              ; preds = %202
  %206 = extractvalue { i32, i1 } %203, 0, !nosanitize !20
  %207 = icmp ult i32 %206, %181
  br i1 %207, label %188, label %.loopexit, !llvm.loop !47

.mv.ph:                                           ; preds = %180
  br label %208

208:                                              ; preds = %227, %.mv.ph
  %209 = phi i32 [ 0, %.mv.ph ], [ %228, %227 ]
  %210 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %181, i32 %209), !nosanitize !20
  %211 = extractvalue { i32, i1 } %210, 1, !nosanitize !20
  br i1 false, label %212, label %213, !prof !21, !nosanitize !20

212:                                              ; preds = %188, %208
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

213:                                              ; preds = %208
  %214 = extractvalue { i32, i1 } %210, 0, !nosanitize !20
  %215 = tail call i32 @llvm.umin.i32(i32 %214, i32 1073741824)
  %216 = load i32, ptr %187, align 4, !tbaa !46
  %217 = zext i32 %209 to i64
  %218 = getelementptr inbounds nuw i8, ptr %184, i64 %217
  %219 = zext nneg i32 %215 to i64
  %220 = tail call i64 @read(i32 noundef %216, ptr noundef %218, i64 noundef %219) #13
  %221 = trunc i64 %220 to i32
  %222 = icmp slt i32 %221, 1
  br i1 %222, label %230, label %223

223:                                              ; preds = %213
  %224 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %209, i32 %221), !nosanitize !20
  %225 = extractvalue { i32, i1 } %224, 1, !nosanitize !20
  br i1 %225, label %226, label %227, !prof !21, !nosanitize !20

226:                                              ; preds = %202, %223
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

227:                                              ; preds = %223
  %228 = extractvalue { i32, i1 } %224, 0, !nosanitize !20
  %229 = icmp ult i32 %228, %181
  br i1 %229, label %208, label %.loopexit, !llvm.loop !47

230:                                              ; preds = %192, %213
  %.lcssa4 = phi i32 [ %221, %213 ], [ %200, %192 ]
  %.lcssa1 = phi i32 [ %209, %213 ], [ %189, %192 ]
  %231 = icmp slt i32 %.lcssa4, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %230
  %233 = load i32, ptr %186, align 4, !tbaa !45
  %234 = icmp eq i32 %233, 11
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  store i32 1, ptr %185, align 4, !tbaa !17
  %236 = icmp eq i32 %.lcssa1, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %235
  %238 = load i32, ptr %186, align 4, !tbaa !45
  br label %240

239:                                              ; preds = %230
  store i32 1, ptr %59, align 8, !tbaa !24
  br label %243

240:                                              ; preds = %237, %232
  %241 = phi i32 [ %238, %237 ], [ %233, %232 ]
  %242 = tail call ptr @strerror(i32 noundef %241) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %242) #13
  br label %287

.loopexit:                                        ; preds = %205, %227
  %.lcssa7 = phi i32 [ %228, %227 ], [ %206, %205 ]
  br label %243

243:                                              ; preds = %.loopexit, %239, %235
  %244 = phi i32 [ %.lcssa1, %239 ], [ %.lcssa1, %235 ], [ %.lcssa7, %.loopexit ]
  %245 = load i32, ptr %62, align 8, !tbaa !34
  %246 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %245, i32 %244), !nosanitize !20
  %247 = extractvalue { i32, i1 } %246, 1, !nosanitize !20
  br i1 %247, label %248, label %249, !prof !21, !nosanitize !20

248:                                              ; preds = %243
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

249:                                              ; preds = %243
  %250 = extractvalue { i32, i1 } %246, 0, !nosanitize !20
  store i32 %250, ptr %62, align 8, !tbaa !34
  %251 = load ptr, ptr %175, align 8, !tbaa !29
  store ptr %251, ptr %15, align 8, !tbaa !35
  br label %252

252:                                              ; preds = %249, %58
  %253 = phi i32 [ %250, %249 ], [ %63, %58 ]
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %287, label %255

255:                                              ; preds = %252
  %256 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %257 = load i32, ptr %256, align 4, !tbaa !17
  %258 = icmp ne i32 %257, 0
  %259 = icmp ult i32 %253, 4
  %260 = and i1 %259, %258
  br i1 %260, label %287, label %261

261:                                              ; preds = %255
  %262 = icmp ugt i32 %253, 3
  %263 = load ptr, ptr %15, align 8, !tbaa !35
  br i1 %262, label %264, label %281

264:                                              ; preds = %261
  %265 = load i8, ptr %263, align 1, !tbaa !36
  %266 = icmp eq i8 %265, 31
  br i1 %266, label %267, label %281

267:                                              ; preds = %264
  %268 = getelementptr inbounds nuw i8, ptr %263, i64 1
  %269 = load i8, ptr %268, align 1, !tbaa !36
  %270 = icmp eq i8 %269, -117
  br i1 %270, label %271, label %281

271:                                              ; preds = %267
  %272 = getelementptr inbounds nuw i8, ptr %263, i64 2
  %273 = load i8, ptr %272, align 1, !tbaa !36
  %274 = icmp eq i8 %273, 8
  br i1 %274, label %275, label %281

275:                                              ; preds = %271
  %276 = getelementptr inbounds nuw i8, ptr %263, i64 3
  %277 = load i8, ptr %276, align 1, !tbaa !36
  %278 = icmp ult i8 %277, 32
  br i1 %278, label %279, label %281

279:                                              ; preds = %275
  %280 = tail call i32 @inflateReset(ptr noundef nonnull %15) #13
  store i32 2, ptr %8, align 8, !tbaa !26
  store i32 1, ptr %46, align 4, !tbaa !33
  store i32 0, ptr %42, align 8, !tbaa !32
  br label %287

281:                                              ; preds = %275, %271, %267, %264, %261
  %282 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %283 = load ptr, ptr %282, align 8, !tbaa !30
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %283, ptr %284, align 8, !tbaa !22
  %285 = zext i32 %253 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %283, ptr align 1 %263, i64 %285, i1 false)
  %286 = load i32, ptr %62, align 8, !tbaa !34
  store i32 %286, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %62, align 8, !tbaa !34
  store i32 1, ptr %8, align 8, !tbaa !26
  br label %287

287:                                              ; preds = %281, %279, %255, %252, %240, %55, %49, %38, %32, %11, %7, %3
  %288 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %289 = load i32, ptr %288, align 8, !tbaa !32
  %290 = icmp eq i32 %289, 1
  %291 = zext i1 %290 to i32
  br label %292

292:                                              ; preds = %287, %1
  %293 = phi i32 [ %291, %287 ], [ 0, %1 ]
  ret i32 %293
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
