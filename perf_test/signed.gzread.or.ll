; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/signed.gzread.ll'
source_filename = "/home/amiralie1380/michigan/pl/zlib/gzread.c"
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
  br i1 %4, label %1050, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !8
  %8 = icmp eq i32 %7, 7247
  br i1 %8, label %9, label %1050

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
  br i1 %15, label %1050, label %16

16:                                               ; preds = %12, %9, %9
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %17 = icmp slt i32 %2, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str) #13
  br label %1050

19:                                               ; preds = %16
  %20 = zext nneg i32 %2 to i64
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %1038, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load i64, ptr %23, align 8, !tbaa !18
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %450, label %26

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
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %44

44:                                               ; preds = %447, %26
  %45 = phi i64 [ %448, %447 ], [ %24, %26 ]
  %46 = load i32, ptr %0, align 8, !tbaa !19
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %44
  %49 = zext i32 %46 to i64
  %50 = tail call i64 @llvm.smin.i64(i64 %45, i64 %49)
  %51 = trunc i64 %50 to i32
  %52 = sub i32 %46, %51
  store i32 %52, ptr %0, align 8, !tbaa !19
  %53 = load ptr, ptr %27, align 8, !tbaa !20
  %54 = and i64 %50, 4294967295
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 %54
  store ptr %55, ptr %27, align 8, !tbaa !20
  %56 = load i64, ptr %28, align 8, !tbaa !21
  %57 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %56, i64 %54), !nosanitize !22
  %58 = extractvalue { i64, i1 } %57, 1, !nosanitize !22
  br i1 %58, label %59, label %60, !prof !23, !nosanitize !22

59:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

60:                                               ; preds = %48
  %61 = extractvalue { i64, i1 } %57, 0, !nosanitize !22
  store i64 %61, ptr %28, align 8, !tbaa !21
  %62 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %45, i64 %54), !nosanitize !22
  %63 = extractvalue { i64, i1 } %62, 1, !nosanitize !22
  br i1 %63, label %64, label %65, !prof !23, !nosanitize !22

64:                                               ; preds = %60
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !22
  unreachable, !nosanitize !22

65:                                               ; preds = %60
  %66 = extractvalue { i64, i1 } %62, 0, !nosanitize !22
  store i64 %66, ptr %23, align 8, !tbaa !18
  br label %447

67:                                               ; preds = %44
  %68 = load i32, ptr %29, align 8, !tbaa !24
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %30, align 8, !tbaa !25
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %450, label %73

73:                                               ; preds = %70, %67
  br label %74

74:                                               ; preds = %444, %73
  %75 = load i32, ptr %31, align 8, !tbaa !26
  switch i32 %75, label %432 [
    i32 0, label %76
    i32 1, label %299
    i32 2, label %335
  ]

76:                                               ; preds = %74
  %77 = load i32, ptr %32, align 8, !tbaa !27
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %76
  %80 = load i32, ptr %41, align 4, !tbaa !28
  %81 = zext i32 %80 to i64
  %82 = tail call noalias ptr @malloc(i64 noundef %81) #15
  store ptr %82, ptr %37, align 8, !tbaa !29
  %83 = load i32, ptr %41, align 4, !tbaa !28
  %84 = shl i32 %83, 1
  %85 = zext i32 %84 to i64
  %86 = tail call noalias ptr @malloc(i64 noundef %85) #15
  store ptr %86, ptr %34, align 8, !tbaa !30
  %87 = icmp eq ptr %82, null
  %88 = icmp eq ptr %86, null
  %89 = or i1 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  tail call void @free(ptr noundef %86) #13
  tail call void @free(ptr noundef %82) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1038

91:                                               ; preds = %79
  %92 = load i32, ptr %41, align 4, !tbaa !28
  store i32 %92, ptr %32, align 8, !tbaa !27
  store i32 0, ptr %30, align 8, !tbaa !25
  store ptr null, ptr %36, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %93 = tail call i32 @inflateInit2_(ptr noundef nonnull %36, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr %34, align 8, !tbaa !30
  tail call void @free(ptr noundef %96) #13
  %97 = load ptr, ptr %37, align 8, !tbaa !29
  tail call void @free(ptr noundef %97) #13
  store i32 0, ptr %32, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1038

98:                                               ; preds = %91, %76
  %99 = load i32, ptr %43, align 8, !tbaa !32
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, ptr %40, align 4, !tbaa !33
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101, %98
  %105 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  %106 = load i32, ptr %40, align 4, !tbaa !33
  %107 = icmp ne i32 %106, -1
  %108 = zext i1 %107 to i32
  store i32 %108, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %43, align 8, !tbaa !32
  br label %296

109:                                              ; preds = %101
  %110 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %110, label %1040 [
    i32 0, label %111
    i32 -5, label %111
  ]

111:                                              ; preds = %109, %109
  %112 = load i32, ptr %29, align 8, !tbaa !24
  %113 = icmp eq i32 %112, 0
  %114 = load i32, ptr %30, align 8, !tbaa !34
  br i1 %113, label %115, label %264

115:                                              ; preds = %111
  %116 = icmp eq i32 %114, 0
  %117 = load ptr, ptr %37, align 8, !tbaa !29
  %118 = ptrtoaddr ptr %117 to i64
  br i1 %116, label %224, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr %36, align 8, !tbaa !35
  %121 = icmp eq ptr %120, %117
  br i1 %121, label %224, label %122

122:                                              ; preds = %119
  %123 = ptrtoaddr ptr %120 to i64
  %124 = zext i32 %114 to i64
  %125 = icmp ult i32 %114, 4
  %126 = sub i64 %118, %123
  %127 = icmp ult i64 %126, 32
  %128 = select i1 %125, i1 true, i1 %127
  br i1 %128, label %168, label %129

129:                                              ; preds = %122
  %130 = icmp ult i32 %114, 32
  br i1 %130, label %152, label %131

131:                                              ; preds = %129
  %132 = and i64 %124, 28
  %133 = and i64 %124, 4294967264
  %134 = getelementptr i8, ptr %117, i64 %133
  %135 = getelementptr i8, ptr %120, i64 %133
  %136 = trunc nuw i64 %133 to i32
  %137 = sub i32 %114, %136
  br label %138

138:                                              ; preds = %138, %131
  %139 = phi i64 [ 0, %131 ], [ %146, %138 ]
  %140 = getelementptr i8, ptr %117, i64 %139
  %141 = getelementptr i8, ptr %120, i64 %139
  %142 = getelementptr i8, ptr %141, i64 16
  %143 = load <16 x i8>, ptr %141, align 1, !tbaa !36
  %144 = load <16 x i8>, ptr %142, align 1, !tbaa !36
  %145 = getelementptr i8, ptr %140, i64 16
  store <16 x i8> %143, ptr %140, align 1, !tbaa !36
  store <16 x i8> %144, ptr %145, align 1, !tbaa !36
  %146 = add nuw i64 %139, 32
  %147 = icmp eq i64 %146, %133
  br i1 %147, label %148, label %138, !llvm.loop !37

148:                                              ; preds = %138
  %149 = icmp eq i64 %133, %124
  br i1 %149, label %221, label %150

150:                                              ; preds = %148
  %151 = icmp eq i64 %132, 0
  br i1 %151, label %168, label %152, !prof !41

152:                                              ; preds = %150, %129
  %153 = phi i64 [ %133, %150 ], [ 0, %129 ]
  %154 = and i64 %124, 4294967292
  %155 = getelementptr i8, ptr %117, i64 %154
  %156 = getelementptr i8, ptr %120, i64 %154
  %157 = trunc nuw i64 %154 to i32
  %158 = sub i32 %114, %157
  br label %159

159:                                              ; preds = %159, %152
  %160 = phi i64 [ %153, %152 ], [ %164, %159 ]
  %161 = getelementptr i8, ptr %117, i64 %160
  %162 = getelementptr i8, ptr %120, i64 %160
  %163 = load <4 x i8>, ptr %162, align 1, !tbaa !36
  store <4 x i8> %163, ptr %161, align 1, !tbaa !36
  %164 = add nuw i64 %160, 4
  %165 = icmp eq i64 %164, %154
  br i1 %165, label %166, label %159, !llvm.loop !42

166:                                              ; preds = %159
  %167 = icmp eq i64 %154, %124
  br i1 %167, label %221, label %168

168:                                              ; preds = %166, %150, %122
  %169 = phi ptr [ %117, %122 ], [ %134, %150 ], [ %155, %166 ]
  %170 = phi ptr [ %120, %122 ], [ %135, %150 ], [ %156, %166 ]
  %171 = phi i32 [ %114, %122 ], [ %137, %150 ], [ %158, %166 ]
  %172 = add i32 %171, -1
  %173 = and i32 %171, 7
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %186, label %175

175:                                              ; preds = %175, %168
  %176 = phi ptr [ %182, %175 ], [ %169, %168 ]
  %177 = phi ptr [ %180, %175 ], [ %170, %168 ]
  %178 = phi i32 [ %183, %175 ], [ %171, %168 ]
  %179 = phi i32 [ %184, %175 ], [ 0, %168 ]
  %180 = getelementptr inbounds nuw i8, ptr %177, i64 1
  %181 = load i8, ptr %177, align 1, !tbaa !36
  %182 = getelementptr inbounds nuw i8, ptr %176, i64 1
  store i8 %181, ptr %176, align 1, !tbaa !36
  %183 = add i32 %178, -1
  %184 = add i32 %179, 1
  %185 = icmp eq i32 %184, %173
  br i1 %185, label %186, label %175, !llvm.loop !43

186:                                              ; preds = %175, %168
  %187 = phi ptr [ %169, %168 ], [ %182, %175 ]
  %188 = phi ptr [ %170, %168 ], [ %180, %175 ]
  %189 = phi i32 [ %171, %168 ], [ %183, %175 ]
  %190 = icmp ult i32 %172, 7
  br i1 %190, label %221, label %191

191:                                              ; preds = %191, %186
  %192 = phi ptr [ %218, %191 ], [ %187, %186 ]
  %193 = phi ptr [ %216, %191 ], [ %188, %186 ]
  %194 = phi i32 [ %219, %191 ], [ %189, %186 ]
  %195 = getelementptr inbounds nuw i8, ptr %193, i64 1
  %196 = load i8, ptr %193, align 1, !tbaa !36
  %197 = getelementptr inbounds nuw i8, ptr %192, i64 1
  store i8 %196, ptr %192, align 1, !tbaa !36
  %198 = getelementptr inbounds nuw i8, ptr %193, i64 2
  %199 = load i8, ptr %195, align 1, !tbaa !36
  %200 = getelementptr inbounds nuw i8, ptr %192, i64 2
  store i8 %199, ptr %197, align 1, !tbaa !36
  %201 = getelementptr inbounds nuw i8, ptr %193, i64 3
  %202 = load i8, ptr %198, align 1, !tbaa !36
  %203 = getelementptr inbounds nuw i8, ptr %192, i64 3
  store i8 %202, ptr %200, align 1, !tbaa !36
  %204 = getelementptr inbounds nuw i8, ptr %193, i64 4
  %205 = load i8, ptr %201, align 1, !tbaa !36
  %206 = getelementptr inbounds nuw i8, ptr %192, i64 4
  store i8 %205, ptr %203, align 1, !tbaa !36
  %207 = getelementptr inbounds nuw i8, ptr %193, i64 5
  %208 = load i8, ptr %204, align 1, !tbaa !36
  %209 = getelementptr inbounds nuw i8, ptr %192, i64 5
  store i8 %208, ptr %206, align 1, !tbaa !36
  %210 = getelementptr inbounds nuw i8, ptr %193, i64 6
  %211 = load i8, ptr %207, align 1, !tbaa !36
  %212 = getelementptr inbounds nuw i8, ptr %192, i64 6
  store i8 %211, ptr %209, align 1, !tbaa !36
  %213 = getelementptr inbounds nuw i8, ptr %193, i64 7
  %214 = load i8, ptr %210, align 1, !tbaa !36
  %215 = getelementptr inbounds nuw i8, ptr %192, i64 7
  store i8 %214, ptr %212, align 1, !tbaa !36
  %216 = getelementptr inbounds nuw i8, ptr %193, i64 8
  %217 = load i8, ptr %213, align 1, !tbaa !36
  %218 = getelementptr inbounds nuw i8, ptr %192, i64 8
  store i8 %217, ptr %215, align 1, !tbaa !36
  %219 = add i32 %194, -8
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %191, !llvm.loop !45

221:                                              ; preds = %191, %186, %166, %148
  %222 = load i32, ptr %30, align 8, !tbaa !34
  %223 = load ptr, ptr %37, align 8, !tbaa !29
  br label %224

224:                                              ; preds = %221, %119, %115
  %225 = phi ptr [ %223, %221 ], [ %117, %119 ], [ %117, %115 ]
  %226 = phi i32 [ %222, %221 ], [ %114, %119 ], [ 0, %115 ]
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds nuw i8, ptr %225, i64 %227
  %229 = load i32, ptr %32, align 8, !tbaa !27
  %230 = sub i32 %229, %226
  store i32 0, ptr %38, align 4, !tbaa !17
  %231 = tail call ptr @__errno_location() #16
  store i32 0, ptr %231, align 4, !tbaa !4
  br label %232

232:                                              ; preds = %243, %224
  %233 = phi i32 [ 0, %224 ], [ %244, %243 ]
  %234 = sub i32 %230, %233
  %235 = tail call i32 @llvm.umin.i32(i32 %234, i32 1073741824)
  %236 = load i32, ptr %39, align 4, !tbaa !46
  %237 = zext i32 %233 to i64
  %238 = getelementptr inbounds nuw i8, ptr %228, i64 %237
  %239 = zext nneg i32 %235 to i64
  %240 = tail call i64 @read(i32 noundef %236, ptr noundef %238, i64 noundef %239) #13
  %241 = trunc i64 %240 to i32
  %242 = icmp slt i32 %241, 1
  br i1 %242, label %246, label %243

243:                                              ; preds = %232
  %244 = add i32 %233, %241
  %245 = icmp ult i32 %244, %230
  br i1 %245, label %232, label %259, !llvm.loop !47

246:                                              ; preds = %232
  %247 = icmp slt i32 %241, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %246
  %249 = load i32, ptr %231, align 4, !tbaa !4
  %250 = icmp eq i32 %249, 11
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  store i32 1, ptr %38, align 4, !tbaa !17
  %252 = icmp eq i32 %233, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %251
  %254 = load i32, ptr %231, align 4, !tbaa !4
  br label %256

255:                                              ; preds = %246
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %259

256:                                              ; preds = %253, %248
  %257 = phi i32 [ %254, %253 ], [ %249, %248 ]
  %258 = tail call ptr @strerror(i32 noundef %257) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %258) #13
  br label %1038

259:                                              ; preds = %255, %251, %243
  %260 = phi i32 [ %233, %251 ], [ %233, %255 ], [ %244, %243 ]
  %261 = load i32, ptr %30, align 8, !tbaa !34
  %262 = add i32 %261, %260
  store i32 %262, ptr %30, align 8, !tbaa !34
  %263 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %263, ptr %36, align 8, !tbaa !35
  br label %264

264:                                              ; preds = %259, %111
  %265 = phi i32 [ %262, %259 ], [ %114, %111 ]
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %296, label %267

267:                                              ; preds = %264
  %268 = load i32, ptr %38, align 4, !tbaa !17
  %269 = icmp ne i32 %268, 0
  %270 = icmp ult i32 %265, 4
  %271 = and i1 %270, %269
  br i1 %271, label %296, label %272

272:                                              ; preds = %267
  %273 = icmp ugt i32 %265, 3
  %274 = load ptr, ptr %36, align 8, !tbaa !35
  br i1 %273, label %275, label %292

275:                                              ; preds = %272
  %276 = load i8, ptr %274, align 1, !tbaa !36
  %277 = icmp eq i8 %276, 31
  br i1 %277, label %278, label %292

278:                                              ; preds = %275
  %279 = getelementptr inbounds nuw i8, ptr %274, i64 1
  %280 = load i8, ptr %279, align 1, !tbaa !36
  %281 = icmp eq i8 %280, -117
  br i1 %281, label %282, label %292

282:                                              ; preds = %278
  %283 = getelementptr inbounds nuw i8, ptr %274, i64 2
  %284 = load i8, ptr %283, align 1, !tbaa !36
  %285 = icmp eq i8 %284, 8
  br i1 %285, label %286, label %292

286:                                              ; preds = %282
  %287 = getelementptr inbounds nuw i8, ptr %274, i64 3
  %288 = load i8, ptr %287, align 1, !tbaa !36
  %289 = icmp ult i8 %288, 32
  br i1 %289, label %290, label %292

290:                                              ; preds = %286
  %291 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  store i32 1, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %43, align 8, !tbaa !32
  br label %433

292:                                              ; preds = %286, %282, %278, %275, %272
  %293 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %293, ptr %27, align 8, !tbaa !20
  %294 = zext i32 %265 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %293, ptr align 1 %274, i64 %294, i1 false)
  %295 = load i32, ptr %30, align 8, !tbaa !34
  store i32 %295, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %31, align 8, !tbaa !26
  br label %435

296:                                              ; preds = %267, %264, %104
  %297 = load i32, ptr %31, align 8, !tbaa !26
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %445, label %433

299:                                              ; preds = %74
  %300 = load ptr, ptr %34, align 8, !tbaa !30
  %301 = load i32, ptr %32, align 8, !tbaa !27
  %302 = shl i32 %301, 1
  store i32 0, ptr %38, align 4, !tbaa !17
  %303 = tail call ptr @__errno_location() #16
  store i32 0, ptr %303, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %304

304:                                              ; preds = %315, %299
  %305 = phi i32 [ %317, %315 ], [ 0, %299 ]
  %306 = sub i32 %302, %305
  %307 = tail call i32 @llvm.umin.i32(i32 %306, i32 1073741824)
  %308 = load i32, ptr %39, align 4, !tbaa !46
  %309 = zext i32 %305 to i64
  %310 = getelementptr inbounds nuw i8, ptr %300, i64 %309
  %311 = zext nneg i32 %307 to i64
  %312 = tail call i64 @read(i32 noundef %308, ptr noundef %310, i64 noundef %311) #13
  %313 = trunc i64 %312 to i32
  %314 = icmp slt i32 %313, 1
  br i1 %314, label %319, label %315

315:                                              ; preds = %304
  %316 = load i32, ptr %0, align 4, !tbaa !4
  %317 = add i32 %316, %313
  store i32 %317, ptr %0, align 4, !tbaa !4
  %318 = icmp ult i32 %317, %302
  br i1 %318, label %304, label %333, !llvm.loop !47

319:                                              ; preds = %304
  %320 = icmp slt i32 %313, 0
  br i1 %320, label %321, label %329

321:                                              ; preds = %319
  %322 = load i32, ptr %303, align 4, !tbaa !4
  %323 = icmp eq i32 %322, 11
  br i1 %323, label %324, label %330

324:                                              ; preds = %321
  store i32 1, ptr %38, align 4, !tbaa !17
  %325 = load i32, ptr %0, align 4, !tbaa !4
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %333

327:                                              ; preds = %324
  %328 = load i32, ptr %303, align 4, !tbaa !4
  br label %330

329:                                              ; preds = %319
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %333

330:                                              ; preds = %327, %321
  %331 = phi i32 [ %328, %327 ], [ %322, %321 ]
  %332 = tail call ptr @strerror(i32 noundef %331) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %332) #13
  br label %1038

333:                                              ; preds = %329, %324, %315
  %334 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %334, ptr %27, align 8, !tbaa !20
  br label %445

335:                                              ; preds = %74
  %336 = load i32, ptr %32, align 8, !tbaa !27
  %337 = shl i32 %336, 1
  store i32 %337, ptr %33, align 8, !tbaa !48
  %338 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %338, ptr %35, align 8, !tbaa !49
  br label %339

339:                                              ; preds = %412, %335
  %340 = phi i32 [ 0, %335 ], [ %391, %412 ]
  %341 = load i32, ptr %30, align 8, !tbaa !34
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %390

343:                                              ; preds = %339
  %344 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %344, label %423 [
    i32 0, label %345
    i32 -5, label %345
  ]

345:                                              ; preds = %343, %343
  %346 = load i32, ptr %29, align 8, !tbaa !24
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %386

348:                                              ; preds = %345
  %349 = load ptr, ptr %37, align 8, !tbaa !29
  %350 = load i32, ptr %32, align 8, !tbaa !27
  store i32 0, ptr %38, align 4, !tbaa !17
  %351 = tail call ptr @__errno_location() #16
  store i32 0, ptr %351, align 4, !tbaa !4
  br label %352

352:                                              ; preds = %363, %348
  %353 = phi i32 [ 0, %348 ], [ %364, %363 ]
  %354 = sub i32 %350, %353
  %355 = tail call i32 @llvm.umin.i32(i32 %354, i32 1073741824)
  %356 = load i32, ptr %39, align 4, !tbaa !46
  %357 = zext i32 %353 to i64
  %358 = getelementptr inbounds nuw i8, ptr %349, i64 %357
  %359 = zext nneg i32 %355 to i64
  %360 = tail call i64 @read(i32 noundef %356, ptr noundef %358, i64 noundef %359) #13
  %361 = trunc i64 %360 to i32
  %362 = icmp slt i32 %361, 1
  br i1 %362, label %366, label %363

363:                                              ; preds = %352
  %364 = add i32 %353, %361
  %365 = icmp ult i32 %364, %350
  br i1 %365, label %352, label %380, !llvm.loop !47

366:                                              ; preds = %352
  %367 = icmp slt i32 %361, 0
  br i1 %367, label %368, label %375

368:                                              ; preds = %366
  %369 = load i32, ptr %351, align 4, !tbaa !4
  %370 = icmp eq i32 %369, 11
  br i1 %370, label %371, label %376

371:                                              ; preds = %368
  store i32 1, ptr %38, align 4, !tbaa !17
  %372 = icmp eq i32 %353, 0
  br i1 %372, label %373, label %380

373:                                              ; preds = %371
  %374 = load i32, ptr %351, align 4, !tbaa !4
  br label %376

375:                                              ; preds = %366
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %380

376:                                              ; preds = %373, %368
  %377 = phi i32 [ %374, %373 ], [ %369, %368 ]
  %378 = tail call ptr @strerror(i32 noundef %377) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %378) #13
  %379 = load i32, ptr %10, align 8, !tbaa !16
  br label %423

380:                                              ; preds = %375, %371, %363
  %381 = phi i32 [ %353, %371 ], [ %353, %375 ], [ %364, %363 ]
  %382 = load i32, ptr %30, align 8, !tbaa !34
  %383 = add i32 %382, %381
  store i32 %383, ptr %30, align 8, !tbaa !34
  %384 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %384, ptr %36, align 8, !tbaa !35
  %385 = icmp eq i32 %383, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %380, %345
  %387 = load i32, ptr %38, align 4, !tbaa !17
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %423

389:                                              ; preds = %386
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %423

390:                                              ; preds = %380, %339
  %391 = tail call i32 @inflate(ptr noundef nonnull %36, i32 noundef 0) #13
  %392 = load i32, ptr %33, align 8, !tbaa !48
  %393 = icmp ult i32 %392, %337
  br i1 %393, label %394, label %395

394:                                              ; preds = %390
  store i32 0, ptr %40, align 4, !tbaa !33
  br label %395

395:                                              ; preds = %394, %390
  switch i32 %391, label %412 [
    i32 -2, label %396
    i32 2, label %396
    i32 -4, label %397
    i32 -3, label %398
  ]

396:                                              ; preds = %395, %395
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %423

397:                                              ; preds = %395
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %416

398:                                              ; preds = %395
  %399 = load i32, ptr %40, align 4, !tbaa !33
  %400 = icmp eq i32 %399, 1
  br i1 %400, label %401, label %407

401:                                              ; preds = %398
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !24
  store i32 0, ptr %31, align 8, !tbaa !26
  %402 = sub i32 %337, %392
  store i32 %402, ptr %0, align 8, !tbaa !19
  %403 = load ptr, ptr %35, align 8, !tbaa !49
  %404 = zext i32 %402 to i64
  %405 = sub nsw i64 0, %404
  %406 = getelementptr inbounds i8, ptr %403, i64 %405
  store ptr %406, ptr %27, align 8, !tbaa !20
  br label %433

407:                                              ; preds = %398
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %409 = load ptr, ptr %408, align 8, !tbaa !50
  %410 = icmp eq ptr %409, null
  %411 = select i1 %410, ptr @.str.6, ptr %409
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %411) #13
  br label %416

412:                                              ; preds = %395
  %413 = icmp ne i32 %392, 0
  %414 = icmp ne i32 %391, 1
  %415 = select i1 %413, i1 %414, i1 false
  br i1 %415, label %339, label %423, !llvm.loop !51

416:                                              ; preds = %407, %397
  %417 = load i32, ptr %33, align 8, !tbaa !48
  %418 = sub i32 %337, %417
  store i32 %418, ptr %0, align 8, !tbaa !19
  %419 = load ptr, ptr %35, align 8, !tbaa !49
  %420 = zext i32 %418 to i64
  %421 = sub nsw i64 0, %420
  %422 = getelementptr inbounds i8, ptr %419, i64 %421
  store ptr %422, ptr %27, align 8, !tbaa !20
  br label %1038

423:                                              ; preds = %412, %396, %389, %386, %376, %343
  %424 = phi i32 [ %379, %376 ], [ %340, %386 ], [ %340, %389 ], [ %391, %396 ], [ %391, %412 ], [ %344, %343 ]
  %425 = load i32, ptr %33, align 8, !tbaa !48
  %426 = sub i32 %337, %425
  store i32 %426, ptr %0, align 8, !tbaa !19
  %427 = load ptr, ptr %35, align 8, !tbaa !49
  %428 = zext i32 %426 to i64
  %429 = sub nsw i64 0, %428
  %430 = getelementptr inbounds i8, ptr %427, i64 %429
  store ptr %430, ptr %27, align 8, !tbaa !20
  switch i32 %424, label %1038 [
    i32 1, label %431
    i32 0, label %433
  ]

431:                                              ; preds = %423
  store i32 0, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %433

432:                                              ; preds = %74
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1038

433:                                              ; preds = %431, %423, %401, %296, %290
  %434 = load i32, ptr %0, align 8, !tbaa !19
  br label %435

435:                                              ; preds = %433, %292
  %436 = phi i32 [ %434, %433 ], [ %295, %292 ]
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %445

438:                                              ; preds = %435
  %439 = load i32, ptr %29, align 8, !tbaa !24
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %444, label %441

441:                                              ; preds = %438
  %442 = load i32, ptr %30, align 8, !tbaa !34
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %445, label %444

444:                                              ; preds = %441, %438
  br label %74, !llvm.loop !52

445:                                              ; preds = %441, %435, %333, %296
  %446 = load i64, ptr %23, align 8, !tbaa !18
  br label %447

447:                                              ; preds = %445, %65
  %448 = phi i64 [ %446, %445 ], [ %66, %65 ]
  %449 = icmp eq i64 %448, 0
  br i1 %449, label %450, label %44, !llvm.loop !53

450:                                              ; preds = %447, %70, %22
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %455 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %456 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %469

469:                                              ; preds = %1026, %450
  %470 = phi ptr [ %1, %450 ], [ %1021, %1026 ]
  %471 = phi i64 [ %20, %450 ], [ %1022, %1026 ]
  %472 = phi i64 [ 0, %450 ], [ %1023, %1026 ]
  %473 = tail call i64 @llvm.umin.i64(i64 %471, i64 4294967295)
  %474 = trunc nuw i64 %473 to i32
  %475 = load i32, ptr %0, align 8, !tbaa !19
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %488, label %477

477:                                              ; preds = %469
  %478 = tail call i32 @llvm.umin.i32(i32 %475, i32 %474)
  %479 = load ptr, ptr %451, align 8, !tbaa !20
  %480 = zext i32 %478 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %470, ptr align 1 %479, i64 %480, i1 false)
  %481 = load ptr, ptr %451, align 8, !tbaa !20
  %482 = getelementptr inbounds nuw i8, ptr %481, i64 %480
  store ptr %482, ptr %451, align 8, !tbaa !20
  %483 = load i32, ptr %0, align 8, !tbaa !19
  %484 = sub i32 %483, %478
  store i32 %484, ptr %0, align 8, !tbaa !19
  %485 = load i32, ptr %10, align 8, !tbaa !16
  %486 = icmp ne i32 %485, 0
  %487 = sext i1 %486 to i32
  br label %1008

488:                                              ; preds = %469
  %489 = load i32, ptr %452, align 8, !tbaa !24
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %494, label %491

491:                                              ; preds = %488
  %492 = load i32, ptr %453, align 8, !tbaa !25
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %1031, label %494

494:                                              ; preds = %491, %488
  %495 = load i32, ptr %454, align 8, !tbaa !26
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %501, label %497

497:                                              ; preds = %494
  %498 = load i32, ptr %455, align 8, !tbaa !27
  %499 = shl i32 %498, 1
  %500 = icmp ugt i32 %499, %474
  br i1 %500, label %501, label %877

501:                                              ; preds = %497, %494
  br label %502

502:                                              ; preds = %871, %501
  %503 = phi i32 [ %872, %871 ], [ %495, %501 ]
  switch i32 %503, label %859 [
    i32 0, label %504
    i32 1, label %727
    i32 2, label %763
  ]

504:                                              ; preds = %502
  %505 = load i32, ptr %455, align 8, !tbaa !27
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %526

507:                                              ; preds = %504
  %508 = load i32, ptr %466, align 4, !tbaa !28
  %509 = zext i32 %508 to i64
  %510 = tail call noalias ptr @malloc(i64 noundef %509) #15
  store ptr %510, ptr %459, align 8, !tbaa !29
  %511 = load i32, ptr %466, align 4, !tbaa !28
  %512 = shl i32 %511, 1
  %513 = zext i32 %512 to i64
  %514 = tail call noalias ptr @malloc(i64 noundef %513) #15
  store ptr %514, ptr %465, align 8, !tbaa !30
  %515 = icmp eq ptr %510, null
  %516 = icmp eq ptr %514, null
  %517 = or i1 %515, %516
  br i1 %517, label %518, label %519

518:                                              ; preds = %507
  tail call void @free(ptr noundef %514) #13
  tail call void @free(ptr noundef %510) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %873

519:                                              ; preds = %507
  %520 = load i32, ptr %466, align 4, !tbaa !28
  store i32 %520, ptr %455, align 8, !tbaa !27
  store i32 0, ptr %453, align 8, !tbaa !25
  store ptr null, ptr %458, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %467, i8 0, i64 24, i1 false)
  %521 = tail call i32 @inflateInit2_(ptr noundef nonnull %458, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %526, label %523

523:                                              ; preds = %519
  %524 = load ptr, ptr %465, align 8, !tbaa !30
  tail call void @free(ptr noundef %524) #13
  %525 = load ptr, ptr %459, align 8, !tbaa !29
  tail call void @free(ptr noundef %525) #13
  store i32 0, ptr %455, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %873

526:                                              ; preds = %519, %504
  %527 = load i32, ptr %468, align 8, !tbaa !32
  %528 = icmp eq i32 %527, -1
  br i1 %528, label %532, label %529

529:                                              ; preds = %526
  %530 = load i32, ptr %462, align 4, !tbaa !33
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %532, label %537

532:                                              ; preds = %529, %526
  %533 = tail call i32 @inflateReset(ptr noundef nonnull %458) #13
  store i32 2, ptr %454, align 8, !tbaa !26
  %534 = load i32, ptr %462, align 4, !tbaa !33
  %535 = icmp ne i32 %534, -1
  %536 = zext i1 %535 to i32
  store i32 %536, ptr %462, align 4, !tbaa !33
  store i32 0, ptr %468, align 8, !tbaa !32
  br label %724

537:                                              ; preds = %529
  %538 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %538, label %873 [
    i32 0, label %539
    i32 -5, label %539
  ]

539:                                              ; preds = %537, %537
  %540 = load i32, ptr %452, align 8, !tbaa !24
  %541 = icmp eq i32 %540, 0
  %542 = load i32, ptr %453, align 8, !tbaa !34
  br i1 %541, label %543, label %692

543:                                              ; preds = %539
  %544 = icmp eq i32 %542, 0
  %545 = load ptr, ptr %459, align 8, !tbaa !29
  %546 = ptrtoaddr ptr %545 to i64
  br i1 %544, label %652, label %547

547:                                              ; preds = %543
  %548 = load ptr, ptr %458, align 8, !tbaa !35
  %549 = icmp eq ptr %548, %545
  br i1 %549, label %652, label %550

550:                                              ; preds = %547
  %551 = ptrtoaddr ptr %548 to i64
  %552 = zext i32 %542 to i64
  %553 = icmp ult i32 %542, 4
  %554 = sub i64 %546, %551
  %555 = icmp ult i64 %554, 32
  %556 = select i1 %553, i1 true, i1 %555
  br i1 %556, label %596, label %557

557:                                              ; preds = %550
  %558 = icmp ult i32 %542, 32
  br i1 %558, label %580, label %559

559:                                              ; preds = %557
  %560 = and i64 %552, 28
  %561 = and i64 %552, 4294967264
  %562 = getelementptr i8, ptr %545, i64 %561
  %563 = getelementptr i8, ptr %548, i64 %561
  %564 = trunc nuw i64 %561 to i32
  %565 = sub i32 %542, %564
  br label %566

566:                                              ; preds = %566, %559
  %567 = phi i64 [ 0, %559 ], [ %574, %566 ]
  %568 = getelementptr i8, ptr %545, i64 %567
  %569 = getelementptr i8, ptr %548, i64 %567
  %570 = getelementptr i8, ptr %569, i64 16
  %571 = load <16 x i8>, ptr %569, align 1, !tbaa !36
  %572 = load <16 x i8>, ptr %570, align 1, !tbaa !36
  %573 = getelementptr i8, ptr %568, i64 16
  store <16 x i8> %571, ptr %568, align 1, !tbaa !36
  store <16 x i8> %572, ptr %573, align 1, !tbaa !36
  %574 = add nuw i64 %567, 32
  %575 = icmp eq i64 %574, %561
  br i1 %575, label %576, label %566, !llvm.loop !54

576:                                              ; preds = %566
  %577 = icmp eq i64 %561, %552
  br i1 %577, label %649, label %578

578:                                              ; preds = %576
  %579 = icmp eq i64 %560, 0
  br i1 %579, label %596, label %580, !prof !41

580:                                              ; preds = %578, %557
  %581 = phi i64 [ %561, %578 ], [ 0, %557 ]
  %582 = and i64 %552, 4294967292
  %583 = getelementptr i8, ptr %545, i64 %582
  %584 = getelementptr i8, ptr %548, i64 %582
  %585 = trunc nuw i64 %582 to i32
  %586 = sub i32 %542, %585
  br label %587

587:                                              ; preds = %587, %580
  %588 = phi i64 [ %581, %580 ], [ %592, %587 ]
  %589 = getelementptr i8, ptr %545, i64 %588
  %590 = getelementptr i8, ptr %548, i64 %588
  %591 = load <4 x i8>, ptr %590, align 1, !tbaa !36
  store <4 x i8> %591, ptr %589, align 1, !tbaa !36
  %592 = add nuw i64 %588, 4
  %593 = icmp eq i64 %592, %582
  br i1 %593, label %594, label %587, !llvm.loop !55

594:                                              ; preds = %587
  %595 = icmp eq i64 %582, %552
  br i1 %595, label %649, label %596

596:                                              ; preds = %594, %578, %550
  %597 = phi ptr [ %545, %550 ], [ %562, %578 ], [ %583, %594 ]
  %598 = phi ptr [ %548, %550 ], [ %563, %578 ], [ %584, %594 ]
  %599 = phi i32 [ %542, %550 ], [ %565, %578 ], [ %586, %594 ]
  %600 = add i32 %599, -1
  %601 = and i32 %599, 7
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %614, label %603

603:                                              ; preds = %603, %596
  %604 = phi ptr [ %610, %603 ], [ %597, %596 ]
  %605 = phi ptr [ %608, %603 ], [ %598, %596 ]
  %606 = phi i32 [ %611, %603 ], [ %599, %596 ]
  %607 = phi i32 [ %612, %603 ], [ 0, %596 ]
  %608 = getelementptr inbounds nuw i8, ptr %605, i64 1
  %609 = load i8, ptr %605, align 1, !tbaa !36
  %610 = getelementptr inbounds nuw i8, ptr %604, i64 1
  store i8 %609, ptr %604, align 1, !tbaa !36
  %611 = add i32 %606, -1
  %612 = add i32 %607, 1
  %613 = icmp eq i32 %612, %601
  br i1 %613, label %614, label %603, !llvm.loop !56

614:                                              ; preds = %603, %596
  %615 = phi ptr [ %597, %596 ], [ %610, %603 ]
  %616 = phi ptr [ %598, %596 ], [ %608, %603 ]
  %617 = phi i32 [ %599, %596 ], [ %611, %603 ]
  %618 = icmp ult i32 %600, 7
  br i1 %618, label %649, label %619

619:                                              ; preds = %619, %614
  %620 = phi ptr [ %646, %619 ], [ %615, %614 ]
  %621 = phi ptr [ %644, %619 ], [ %616, %614 ]
  %622 = phi i32 [ %647, %619 ], [ %617, %614 ]
  %623 = getelementptr inbounds nuw i8, ptr %621, i64 1
  %624 = load i8, ptr %621, align 1, !tbaa !36
  %625 = getelementptr inbounds nuw i8, ptr %620, i64 1
  store i8 %624, ptr %620, align 1, !tbaa !36
  %626 = getelementptr inbounds nuw i8, ptr %621, i64 2
  %627 = load i8, ptr %623, align 1, !tbaa !36
  %628 = getelementptr inbounds nuw i8, ptr %620, i64 2
  store i8 %627, ptr %625, align 1, !tbaa !36
  %629 = getelementptr inbounds nuw i8, ptr %621, i64 3
  %630 = load i8, ptr %626, align 1, !tbaa !36
  %631 = getelementptr inbounds nuw i8, ptr %620, i64 3
  store i8 %630, ptr %628, align 1, !tbaa !36
  %632 = getelementptr inbounds nuw i8, ptr %621, i64 4
  %633 = load i8, ptr %629, align 1, !tbaa !36
  %634 = getelementptr inbounds nuw i8, ptr %620, i64 4
  store i8 %633, ptr %631, align 1, !tbaa !36
  %635 = getelementptr inbounds nuw i8, ptr %621, i64 5
  %636 = load i8, ptr %632, align 1, !tbaa !36
  %637 = getelementptr inbounds nuw i8, ptr %620, i64 5
  store i8 %636, ptr %634, align 1, !tbaa !36
  %638 = getelementptr inbounds nuw i8, ptr %621, i64 6
  %639 = load i8, ptr %635, align 1, !tbaa !36
  %640 = getelementptr inbounds nuw i8, ptr %620, i64 6
  store i8 %639, ptr %637, align 1, !tbaa !36
  %641 = getelementptr inbounds nuw i8, ptr %621, i64 7
  %642 = load i8, ptr %638, align 1, !tbaa !36
  %643 = getelementptr inbounds nuw i8, ptr %620, i64 7
  store i8 %642, ptr %640, align 1, !tbaa !36
  %644 = getelementptr inbounds nuw i8, ptr %621, i64 8
  %645 = load i8, ptr %641, align 1, !tbaa !36
  %646 = getelementptr inbounds nuw i8, ptr %620, i64 8
  store i8 %645, ptr %643, align 1, !tbaa !36
  %647 = add i32 %622, -8
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %649, label %619, !llvm.loop !57

649:                                              ; preds = %619, %614, %594, %576
  %650 = load i32, ptr %453, align 8, !tbaa !34
  %651 = load ptr, ptr %459, align 8, !tbaa !29
  br label %652

652:                                              ; preds = %649, %547, %543
  %653 = phi ptr [ %651, %649 ], [ %545, %547 ], [ %545, %543 ]
  %654 = phi i32 [ %650, %649 ], [ %542, %547 ], [ 0, %543 ]
  %655 = zext i32 %654 to i64
  %656 = getelementptr inbounds nuw i8, ptr %653, i64 %655
  %657 = load i32, ptr %455, align 8, !tbaa !27
  %658 = sub i32 %657, %654
  store i32 0, ptr %460, align 4, !tbaa !17
  %659 = tail call ptr @__errno_location() #16
  store i32 0, ptr %659, align 4, !tbaa !4
  br label %660

660:                                              ; preds = %671, %652
  %661 = phi i32 [ 0, %652 ], [ %672, %671 ]
  %662 = sub i32 %658, %661
  %663 = tail call i32 @llvm.umin.i32(i32 %662, i32 1073741824)
  %664 = load i32, ptr %461, align 4, !tbaa !46
  %665 = zext i32 %661 to i64
  %666 = getelementptr inbounds nuw i8, ptr %656, i64 %665
  %667 = zext nneg i32 %663 to i64
  %668 = tail call i64 @read(i32 noundef %664, ptr noundef %666, i64 noundef %667) #13
  %669 = trunc i64 %668 to i32
  %670 = icmp slt i32 %669, 1
  br i1 %670, label %674, label %671

671:                                              ; preds = %660
  %672 = add i32 %661, %669
  %673 = icmp ult i32 %672, %658
  br i1 %673, label %660, label %687, !llvm.loop !47

674:                                              ; preds = %660
  %675 = icmp slt i32 %669, 0
  br i1 %675, label %676, label %683

676:                                              ; preds = %674
  %677 = load i32, ptr %659, align 4, !tbaa !4
  %678 = icmp eq i32 %677, 11
  br i1 %678, label %679, label %684

679:                                              ; preds = %676
  store i32 1, ptr %460, align 4, !tbaa !17
  %680 = icmp eq i32 %661, 0
  br i1 %680, label %681, label %687

681:                                              ; preds = %679
  %682 = load i32, ptr %659, align 4, !tbaa !4
  br label %684

683:                                              ; preds = %674
  store i32 1, ptr %452, align 8, !tbaa !24
  br label %687

684:                                              ; preds = %681, %676
  %685 = phi i32 [ %682, %681 ], [ %677, %676 ]
  %686 = tail call ptr @strerror(i32 noundef %685) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %686) #13
  br label %873

687:                                              ; preds = %683, %679, %671
  %688 = phi i32 [ %661, %679 ], [ %661, %683 ], [ %672, %671 ]
  %689 = load i32, ptr %453, align 8, !tbaa !34
  %690 = add i32 %689, %688
  store i32 %690, ptr %453, align 8, !tbaa !34
  %691 = load ptr, ptr %459, align 8, !tbaa !29
  store ptr %691, ptr %458, align 8, !tbaa !35
  br label %692

692:                                              ; preds = %687, %539
  %693 = phi i32 [ %690, %687 ], [ %542, %539 ]
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %724, label %695

695:                                              ; preds = %692
  %696 = load i32, ptr %460, align 4, !tbaa !17
  %697 = icmp ne i32 %696, 0
  %698 = icmp ult i32 %693, 4
  %699 = and i1 %698, %697
  br i1 %699, label %724, label %700

700:                                              ; preds = %695
  %701 = icmp ugt i32 %693, 3
  %702 = load ptr, ptr %458, align 8, !tbaa !35
  br i1 %701, label %703, label %720

703:                                              ; preds = %700
  %704 = load i8, ptr %702, align 1, !tbaa !36
  %705 = icmp eq i8 %704, 31
  br i1 %705, label %706, label %720

706:                                              ; preds = %703
  %707 = getelementptr inbounds nuw i8, ptr %702, i64 1
  %708 = load i8, ptr %707, align 1, !tbaa !36
  %709 = icmp eq i8 %708, -117
  br i1 %709, label %710, label %720

710:                                              ; preds = %706
  %711 = getelementptr inbounds nuw i8, ptr %702, i64 2
  %712 = load i8, ptr %711, align 1, !tbaa !36
  %713 = icmp eq i8 %712, 8
  br i1 %713, label %714, label %720

714:                                              ; preds = %710
  %715 = getelementptr inbounds nuw i8, ptr %702, i64 3
  %716 = load i8, ptr %715, align 1, !tbaa !36
  %717 = icmp ult i8 %716, 32
  br i1 %717, label %718, label %720

718:                                              ; preds = %714
  %719 = tail call i32 @inflateReset(ptr noundef nonnull %458) #13
  store i32 2, ptr %454, align 8, !tbaa !26
  store i32 1, ptr %462, align 4, !tbaa !33
  store i32 0, ptr %468, align 8, !tbaa !32
  br label %860

720:                                              ; preds = %714, %710, %706, %703, %700
  %721 = load ptr, ptr %465, align 8, !tbaa !30
  store ptr %721, ptr %451, align 8, !tbaa !20
  %722 = zext i32 %693 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %721, ptr align 1 %702, i64 %722, i1 false)
  %723 = load i32, ptr %453, align 8, !tbaa !34
  store i32 %723, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %453, align 8, !tbaa !34
  store i32 1, ptr %454, align 8, !tbaa !26
  br label %862

724:                                              ; preds = %695, %692, %532
  %725 = load i32, ptr %454, align 8, !tbaa !26
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %1020, label %860

727:                                              ; preds = %502
  %728 = load ptr, ptr %465, align 8, !tbaa !30
  %729 = load i32, ptr %455, align 8, !tbaa !27
  %730 = shl i32 %729, 1
  store i32 0, ptr %460, align 4, !tbaa !17
  %731 = tail call ptr @__errno_location() #16
  store i32 0, ptr %731, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %732

732:                                              ; preds = %743, %727
  %733 = phi i32 [ %745, %743 ], [ 0, %727 ]
  %734 = sub i32 %730, %733
  %735 = tail call i32 @llvm.umin.i32(i32 %734, i32 1073741824)
  %736 = load i32, ptr %461, align 4, !tbaa !46
  %737 = zext i32 %733 to i64
  %738 = getelementptr inbounds nuw i8, ptr %728, i64 %737
  %739 = zext nneg i32 %735 to i64
  %740 = tail call i64 @read(i32 noundef %736, ptr noundef %738, i64 noundef %739) #13
  %741 = trunc i64 %740 to i32
  %742 = icmp slt i32 %741, 1
  br i1 %742, label %747, label %743

743:                                              ; preds = %732
  %744 = load i32, ptr %0, align 4, !tbaa !4
  %745 = add i32 %744, %741
  store i32 %745, ptr %0, align 4, !tbaa !4
  %746 = icmp ult i32 %745, %730
  br i1 %746, label %732, label %761, !llvm.loop !47

747:                                              ; preds = %732
  %748 = icmp slt i32 %741, 0
  br i1 %748, label %749, label %757

749:                                              ; preds = %747
  %750 = load i32, ptr %731, align 4, !tbaa !4
  %751 = icmp eq i32 %750, 11
  br i1 %751, label %752, label %758

752:                                              ; preds = %749
  store i32 1, ptr %460, align 4, !tbaa !17
  %753 = load i32, ptr %0, align 4, !tbaa !4
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %755, label %761

755:                                              ; preds = %752
  %756 = load i32, ptr %731, align 4, !tbaa !4
  br label %758

757:                                              ; preds = %747
  store i32 1, ptr %452, align 8, !tbaa !24
  br label %761

758:                                              ; preds = %755, %749
  %759 = phi i32 [ %756, %755 ], [ %750, %749 ]
  %760 = tail call ptr @strerror(i32 noundef %759) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %760) #13
  br label %873

761:                                              ; preds = %757, %752, %743
  %762 = load ptr, ptr %465, align 8, !tbaa !30
  store ptr %762, ptr %451, align 8, !tbaa !20
  br label %1020

763:                                              ; preds = %502
  %764 = load i32, ptr %455, align 8, !tbaa !27
  %765 = shl i32 %764, 1
  store i32 %765, ptr %456, align 8, !tbaa !48
  %766 = load ptr, ptr %465, align 8, !tbaa !30
  store ptr %766, ptr %457, align 8, !tbaa !49
  br label %767

767:                                              ; preds = %839, %763
  %768 = phi i32 [ 0, %763 ], [ %819, %839 ]
  %769 = load i32, ptr %453, align 8, !tbaa !34
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %771, label %818

771:                                              ; preds = %767
  %772 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %772, label %850 [
    i32 0, label %773
    i32 -5, label %773
  ]

773:                                              ; preds = %771, %771
  %774 = load i32, ptr %452, align 8, !tbaa !24
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %776, label %814

776:                                              ; preds = %773
  %777 = load ptr, ptr %459, align 8, !tbaa !29
  %778 = load i32, ptr %455, align 8, !tbaa !27
  store i32 0, ptr %460, align 4, !tbaa !17
  %779 = tail call ptr @__errno_location() #16
  store i32 0, ptr %779, align 4, !tbaa !4
  br label %780

780:                                              ; preds = %791, %776
  %781 = phi i32 [ 0, %776 ], [ %792, %791 ]
  %782 = sub i32 %778, %781
  %783 = tail call i32 @llvm.umin.i32(i32 %782, i32 1073741824)
  %784 = load i32, ptr %461, align 4, !tbaa !46
  %785 = zext i32 %781 to i64
  %786 = getelementptr inbounds nuw i8, ptr %777, i64 %785
  %787 = zext nneg i32 %783 to i64
  %788 = tail call i64 @read(i32 noundef %784, ptr noundef %786, i64 noundef %787) #13
  %789 = trunc i64 %788 to i32
  %790 = icmp slt i32 %789, 1
  br i1 %790, label %794, label %791

791:                                              ; preds = %780
  %792 = add i32 %781, %789
  %793 = icmp ult i32 %792, %778
  br i1 %793, label %780, label %808, !llvm.loop !47

794:                                              ; preds = %780
  %795 = icmp slt i32 %789, 0
  br i1 %795, label %796, label %803

796:                                              ; preds = %794
  %797 = load i32, ptr %779, align 4, !tbaa !4
  %798 = icmp eq i32 %797, 11
  br i1 %798, label %799, label %804

799:                                              ; preds = %796
  store i32 1, ptr %460, align 4, !tbaa !17
  %800 = icmp eq i32 %781, 0
  br i1 %800, label %801, label %808

801:                                              ; preds = %799
  %802 = load i32, ptr %779, align 4, !tbaa !4
  br label %804

803:                                              ; preds = %794
  store i32 1, ptr %452, align 8, !tbaa !24
  br label %808

804:                                              ; preds = %801, %796
  %805 = phi i32 [ %802, %801 ], [ %797, %796 ]
  %806 = tail call ptr @strerror(i32 noundef %805) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %806) #13
  %807 = load i32, ptr %10, align 8, !tbaa !16
  br label %850

808:                                              ; preds = %803, %799, %791
  %809 = phi i32 [ %781, %799 ], [ %781, %803 ], [ %792, %791 ]
  %810 = load i32, ptr %453, align 8, !tbaa !34
  %811 = add i32 %810, %809
  store i32 %811, ptr %453, align 8, !tbaa !34
  %812 = load ptr, ptr %459, align 8, !tbaa !29
  store ptr %812, ptr %458, align 8, !tbaa !35
  %813 = icmp eq i32 %811, 0
  br i1 %813, label %814, label %818

814:                                              ; preds = %808, %773
  %815 = load i32, ptr %460, align 4, !tbaa !17
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %817, label %850

817:                                              ; preds = %814
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %850

818:                                              ; preds = %808, %767
  %819 = tail call i32 @inflate(ptr noundef nonnull %458, i32 noundef 0) #13
  %820 = load i32, ptr %456, align 8, !tbaa !48
  %821 = icmp ult i32 %820, %765
  br i1 %821, label %822, label %823

822:                                              ; preds = %818
  store i32 0, ptr %462, align 4, !tbaa !33
  br label %823

823:                                              ; preds = %822, %818
  switch i32 %819, label %839 [
    i32 -2, label %824
    i32 2, label %824
    i32 -4, label %825
    i32 -3, label %826
  ]

824:                                              ; preds = %823, %823
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %850

825:                                              ; preds = %823
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %843

826:                                              ; preds = %823
  %827 = load i32, ptr %462, align 4, !tbaa !33
  %828 = icmp eq i32 %827, 1
  br i1 %828, label %829, label %835

829:                                              ; preds = %826
  store i32 0, ptr %453, align 8, !tbaa !34
  store i32 1, ptr %452, align 8, !tbaa !24
  store i32 0, ptr %454, align 8, !tbaa !26
  %830 = sub i32 %765, %820
  store i32 %830, ptr %0, align 8, !tbaa !19
  %831 = load ptr, ptr %457, align 8, !tbaa !49
  %832 = zext i32 %830 to i64
  %833 = sub nsw i64 0, %832
  %834 = getelementptr inbounds i8, ptr %831, i64 %833
  store ptr %834, ptr %451, align 8, !tbaa !20
  br label %860

835:                                              ; preds = %826
  %836 = load ptr, ptr %463, align 8, !tbaa !50
  %837 = icmp eq ptr %836, null
  %838 = select i1 %837, ptr @.str.6, ptr %836
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %838) #13
  br label %843

839:                                              ; preds = %823
  %840 = icmp ne i32 %820, 0
  %841 = icmp ne i32 %819, 1
  %842 = select i1 %840, i1 %841, i1 false
  br i1 %842, label %767, label %850, !llvm.loop !51

843:                                              ; preds = %835, %825
  %844 = load i32, ptr %456, align 8, !tbaa !48
  %845 = sub i32 %765, %844
  store i32 %845, ptr %0, align 8, !tbaa !19
  %846 = load ptr, ptr %457, align 8, !tbaa !49
  %847 = zext i32 %845 to i64
  %848 = sub nsw i64 0, %847
  %849 = getelementptr inbounds i8, ptr %846, i64 %848
  store ptr %849, ptr %451, align 8, !tbaa !20
  br label %873

850:                                              ; preds = %839, %824, %817, %814, %804, %771
  %851 = phi i32 [ %807, %804 ], [ %768, %814 ], [ %768, %817 ], [ %819, %824 ], [ %772, %771 ], [ %819, %839 ]
  %852 = load i32, ptr %456, align 8, !tbaa !48
  %853 = sub i32 %765, %852
  store i32 %853, ptr %0, align 8, !tbaa !19
  %854 = load ptr, ptr %457, align 8, !tbaa !49
  %855 = zext i32 %853 to i64
  %856 = sub nsw i64 0, %855
  %857 = getelementptr inbounds i8, ptr %854, i64 %856
  store ptr %857, ptr %451, align 8, !tbaa !20
  switch i32 %851, label %873 [
    i32 1, label %858
    i32 0, label %860
  ]

858:                                              ; preds = %850
  store i32 0, ptr %462, align 4, !tbaa !33
  store i32 0, ptr %454, align 8, !tbaa !26
  br label %860

859:                                              ; preds = %502
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %873

860:                                              ; preds = %858, %850, %829, %724, %718
  %861 = load i32, ptr %0, align 8, !tbaa !19
  br label %862

862:                                              ; preds = %860, %720
  %863 = phi i32 [ %861, %860 ], [ %723, %720 ]
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %865, label %1020

865:                                              ; preds = %862
  %866 = load i32, ptr %452, align 8, !tbaa !24
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %871, label %868

868:                                              ; preds = %865
  %869 = load i32, ptr %453, align 8, !tbaa !34
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %1020, label %871

871:                                              ; preds = %868, %865
  %872 = load i32, ptr %454, align 8, !tbaa !26
  br label %502, !llvm.loop !52

873:                                              ; preds = %859, %850, %843, %758, %684, %537, %523, %518
  %874 = load i32, ptr %0, align 8, !tbaa !19
  %875 = icmp eq i32 %874, 0
  %876 = sext i1 %875 to i32
  br label %1020

877:                                              ; preds = %497
  %878 = icmp eq i32 %495, 1
  br i1 %878, label %879, label %908

879:                                              ; preds = %877
  store i32 0, ptr %460, align 4, !tbaa !17
  %880 = tail call ptr @__errno_location() #16
  store i32 0, ptr %880, align 4, !tbaa !4
  br label %881

881:                                              ; preds = %892, %879
  %882 = phi i32 [ 0, %879 ], [ %893, %892 ]
  %883 = sub i32 %474, %882
  %884 = tail call i32 @llvm.umin.i32(i32 %883, i32 1073741824)
  %885 = load i32, ptr %461, align 4, !tbaa !46
  %886 = zext i32 %882 to i64
  %887 = getelementptr inbounds nuw i8, ptr %470, i64 %886
  %888 = zext nneg i32 %884 to i64
  %889 = tail call i64 @read(i32 noundef %885, ptr noundef %887, i64 noundef %888) #13
  %890 = trunc i64 %889 to i32
  %891 = icmp slt i32 %890, 1
  br i1 %891, label %895, label %892

892:                                              ; preds = %881
  %893 = add i32 %882, %890
  %894 = icmp ult i32 %893, %474
  br i1 %894, label %881, label %1006, !llvm.loop !47

895:                                              ; preds = %881
  %896 = icmp slt i32 %890, 0
  br i1 %896, label %897, label %907

897:                                              ; preds = %895
  %898 = load i32, ptr %880, align 4, !tbaa !4
  %899 = icmp eq i32 %898, 11
  br i1 %899, label %900, label %904

900:                                              ; preds = %897
  store i32 1, ptr %460, align 4, !tbaa !17
  %901 = icmp eq i32 %882, 0
  br i1 %901, label %902, label %1008

902:                                              ; preds = %900
  %903 = load i32, ptr %880, align 4, !tbaa !4
  br label %904

904:                                              ; preds = %902, %897
  %905 = phi i32 [ %903, %902 ], [ %898, %897 ]
  %906 = tail call ptr @strerror(i32 noundef %905) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %906) #13
  br label %1008

907:                                              ; preds = %895
  store i32 1, ptr %452, align 8, !tbaa !24
  br label %1008

908:                                              ; preds = %877
  store i32 %474, ptr %456, align 8, !tbaa !58
  store ptr %470, ptr %457, align 8, !tbaa !59
  br label %909

909:                                              ; preds = %976, %908
  %910 = phi i32 [ 0, %908 ], [ %961, %976 ]
  %911 = load i32, ptr %453, align 8, !tbaa !34
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %913, label %960

913:                                              ; preds = %909
  %914 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %914, label %988 [
    i32 0, label %915
    i32 -5, label %915
  ]

915:                                              ; preds = %913, %913
  %916 = load i32, ptr %452, align 8, !tbaa !24
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %918, label %956

918:                                              ; preds = %915
  %919 = load ptr, ptr %459, align 8, !tbaa !29
  %920 = load i32, ptr %455, align 8, !tbaa !27
  store i32 0, ptr %460, align 4, !tbaa !17
  %921 = tail call ptr @__errno_location() #16
  store i32 0, ptr %921, align 4, !tbaa !4
  br label %922

922:                                              ; preds = %933, %918
  %923 = phi i32 [ 0, %918 ], [ %934, %933 ]
  %924 = sub i32 %920, %923
  %925 = tail call i32 @llvm.umin.i32(i32 %924, i32 1073741824)
  %926 = load i32, ptr %461, align 4, !tbaa !46
  %927 = zext i32 %923 to i64
  %928 = getelementptr inbounds nuw i8, ptr %919, i64 %927
  %929 = zext nneg i32 %925 to i64
  %930 = tail call i64 @read(i32 noundef %926, ptr noundef %928, i64 noundef %929) #13
  %931 = trunc i64 %930 to i32
  %932 = icmp slt i32 %931, 1
  br i1 %932, label %936, label %933

933:                                              ; preds = %922
  %934 = add i32 %923, %931
  %935 = icmp ult i32 %934, %920
  br i1 %935, label %922, label %950, !llvm.loop !47

936:                                              ; preds = %922
  %937 = icmp slt i32 %931, 0
  br i1 %937, label %938, label %945

938:                                              ; preds = %936
  %939 = load i32, ptr %921, align 4, !tbaa !4
  %940 = icmp eq i32 %939, 11
  br i1 %940, label %941, label %946

941:                                              ; preds = %938
  store i32 1, ptr %460, align 4, !tbaa !17
  %942 = icmp eq i32 %923, 0
  br i1 %942, label %943, label %950

943:                                              ; preds = %941
  %944 = load i32, ptr %921, align 4, !tbaa !4
  br label %946

945:                                              ; preds = %936
  store i32 1, ptr %452, align 8, !tbaa !24
  br label %950

946:                                              ; preds = %943, %938
  %947 = phi i32 [ %944, %943 ], [ %939, %938 ]
  %948 = tail call ptr @strerror(i32 noundef %947) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %948) #13
  %949 = load i32, ptr %10, align 8, !tbaa !16
  br label %988

950:                                              ; preds = %945, %941, %933
  %951 = phi i32 [ %923, %941 ], [ %923, %945 ], [ %934, %933 ]
  %952 = load i32, ptr %453, align 8, !tbaa !34
  %953 = add i32 %952, %951
  store i32 %953, ptr %453, align 8, !tbaa !34
  %954 = load ptr, ptr %459, align 8, !tbaa !29
  store ptr %954, ptr %458, align 8, !tbaa !35
  %955 = icmp eq i32 %953, 0
  br i1 %955, label %956, label %960

956:                                              ; preds = %950, %915
  %957 = load i32, ptr %460, align 4, !tbaa !17
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %959, label %988

959:                                              ; preds = %956
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %988

960:                                              ; preds = %950, %909
  %961 = tail call i32 @inflate(ptr noundef nonnull %458, i32 noundef 0) #13
  %962 = load i32, ptr %456, align 8, !tbaa !48
  %963 = icmp ult i32 %962, %474
  br i1 %963, label %964, label %965

964:                                              ; preds = %960
  store i32 0, ptr %462, align 4, !tbaa !33
  br label %965

965:                                              ; preds = %964, %960
  switch i32 %961, label %976 [
    i32 -2, label %966
    i32 2, label %966
    i32 -4, label %967
    i32 -3, label %968
  ]

966:                                              ; preds = %965, %965
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %988

967:                                              ; preds = %965
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %980

968:                                              ; preds = %965
  %969 = load i32, ptr %462, align 4, !tbaa !33
  %970 = icmp eq i32 %969, 1
  br i1 %970, label %971, label %972

971:                                              ; preds = %968
  store i32 0, ptr %453, align 8, !tbaa !34
  store i32 1, ptr %452, align 8, !tbaa !24
  store i32 0, ptr %454, align 8, !tbaa !26
  br label %980

972:                                              ; preds = %968
  %973 = load ptr, ptr %463, align 8, !tbaa !50
  %974 = icmp eq ptr %973, null
  %975 = select i1 %974, ptr @.str.6, ptr %973
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %975) #13
  br label %980

976:                                              ; preds = %965
  %977 = icmp ne i32 %962, 0
  %978 = icmp ne i32 %961, 1
  %979 = select i1 %977, i1 %978, i1 false
  br i1 %979, label %909, label %988, !llvm.loop !51

980:                                              ; preds = %972, %971, %967
  %981 = phi i32 [ -3, %972 ], [ 0, %971 ], [ -4, %967 ]
  %982 = load i32, ptr %456, align 8, !tbaa !48
  %983 = sub i32 %474, %982
  %984 = load ptr, ptr %457, align 8, !tbaa !49
  %985 = zext i32 %983 to i64
  %986 = sub nsw i64 0, %985
  %987 = getelementptr inbounds i8, ptr %984, i64 %986
  store ptr %987, ptr %451, align 8, !tbaa !20
  br label %998

988:                                              ; preds = %976, %966, %959, %956, %946, %913
  %989 = phi i32 [ %949, %946 ], [ %910, %956 ], [ %910, %959 ], [ %961, %966 ], [ %914, %913 ], [ %961, %976 ]
  %990 = load i32, ptr %456, align 8, !tbaa !48
  %991 = sub i32 %474, %990
  %992 = load ptr, ptr %457, align 8, !tbaa !49
  %993 = zext i32 %991 to i64
  %994 = sub nsw i64 0, %993
  %995 = getelementptr inbounds i8, ptr %992, i64 %994
  store ptr %995, ptr %451, align 8, !tbaa !20
  %996 = icmp eq i32 %989, 1
  br i1 %996, label %997, label %998

997:                                              ; preds = %988
  store i32 0, ptr %462, align 4, !tbaa !33
  store i32 0, ptr %454, align 8, !tbaa !26
  br label %1003

998:                                              ; preds = %988, %980
  %999 = phi i64 [ %985, %980 ], [ %993, %988 ]
  %1000 = phi i32 [ %981, %980 ], [ %989, %988 ]
  %1001 = icmp ne i32 %1000, 0
  %1002 = sext i1 %1001 to i32
  br label %1003

1003:                                             ; preds = %998, %997
  %1004 = phi i64 [ %993, %997 ], [ %999, %998 ]
  %1005 = phi i32 [ 0, %997 ], [ %1002, %998 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1008

1006:                                             ; preds = %892
  %1007 = zext i32 %893 to i64
  br label %1008

1008:                                             ; preds = %1006, %1003, %907, %904, %900, %477
  %1009 = phi i64 [ %1007, %1006 ], [ %886, %907 ], [ %886, %904 ], [ %886, %900 ], [ %480, %477 ], [ %1004, %1003 ]
  %1010 = phi i32 [ 0, %1006 ], [ 0, %907 ], [ -1, %904 ], [ 0, %900 ], [ %487, %477 ], [ %1005, %1003 ]
  %1011 = load i64, ptr %464, align 8, !tbaa !21
  %1012 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1011, i64 %1009), !nosanitize !22
  %1013 = extractvalue { i64, i1 } %1012, 1, !nosanitize !22
  br i1 %1013, label %1014, label %1015, !prof !23, !nosanitize !22

1014:                                             ; preds = %1008
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

1015:                                             ; preds = %1008
  %1016 = extractvalue { i64, i1 } %1012, 0, !nosanitize !22
  %1017 = add i64 %1009, %472
  %1018 = getelementptr inbounds nuw i8, ptr %470, i64 %1009
  %1019 = sub i64 %471, %1009
  store i64 %1016, ptr %464, align 8, !tbaa !21
  br label %1020

1020:                                             ; preds = %1015, %873, %868, %862, %761, %724
  %1021 = phi ptr [ %1018, %1015 ], [ %470, %873 ], [ %470, %761 ], [ %470, %724 ], [ %470, %862 ], [ %470, %868 ]
  %1022 = phi i64 [ %1019, %1015 ], [ %471, %873 ], [ %471, %761 ], [ %471, %724 ], [ %471, %862 ], [ %471, %868 ]
  %1023 = phi i64 [ %1017, %1015 ], [ %472, %873 ], [ %472, %761 ], [ %472, %724 ], [ %472, %862 ], [ %472, %868 ]
  %1024 = phi i32 [ %1010, %1015 ], [ %876, %873 ], [ 0, %761 ], [ 0, %724 ], [ 0, %862 ], [ 0, %868 ]
  %1025 = icmp eq i64 %1022, 0
  br i1 %1025, label %1034, label %1026

1026:                                             ; preds = %1020
  %1027 = icmp eq i32 %1024, 0
  br i1 %1027, label %469, label %1028, !llvm.loop !60

1028:                                             ; preds = %1026
  %1029 = load i32, ptr %452, align 8, !tbaa !24
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1034, label %1031

1031:                                             ; preds = %1028, %491
  %1032 = phi i64 [ %1023, %1028 ], [ %472, %491 ]
  %1033 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1033, align 4, !tbaa !61
  br label %1034

1034:                                             ; preds = %1031, %1028, %1020
  %1035 = phi i64 [ %1023, %1028 ], [ %1032, %1031 ], [ %1023, %1020 ]
  %1036 = trunc i64 %1035 to i32
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1038, label %1050

1038:                                             ; preds = %1034, %432, %423, %416, %330, %256, %95, %90, %19
  %1039 = load i32, ptr %10, align 8, !tbaa !16
  br label %1040

1040:                                             ; preds = %1038, %109
  %1041 = phi i32 [ %1039, %1038 ], [ %110, %109 ]
  switch i32 %1041, label %1050 [
    i32 0, label %1042
    i32 -5, label %1042
  ]

1042:                                             ; preds = %1040, %1040
  %1043 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1044 = load i32, ptr %1043, align 4, !tbaa !17
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1050, label %1046

1046:                                             ; preds = %1042
  %1047 = tail call ptr @__errno_location() #16
  %1048 = load i32, ptr %1047, align 4, !tbaa !4
  %1049 = tail call ptr @strerror(i32 noundef %1048) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1049) #13
  br label %1050

1050:                                             ; preds = %1046, %1042, %1040, %1034, %18, %12, %5, %3
  %1051 = phi i32 [ -1, %5 ], [ -1, %3 ], [ -1, %18 ], [ -1, %12 ], [ -1, %1046 ], [ -1, %1040 ], [ 0, %1042 ], [ %1036, %1034 ]
  ret i32 %1051
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @gzfread(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %1041, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 7247
  br i1 %9, label %10, label %1041

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
  br i1 %16, label %1041, label %17

17:                                               ; preds = %13, %10, %10
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef 0, ptr noundef null) #13
  %18 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2)
  %19 = extractvalue { i64, i1 } %18, 0
  %20 = icmp eq i64 %1, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = extractvalue { i64, i1 } %18, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.1) #13
  br label %1041

24:                                               ; preds = %21, %17
  %25 = icmp eq i64 %19, 0
  br i1 %25, label %1041, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %28 = load i64, ptr %27, align 8, !tbaa !18
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %454, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %43 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %48

48:                                               ; preds = %451, %30
  %49 = phi i64 [ %452, %451 ], [ %28, %30 ]
  %50 = load i32, ptr %3, align 8, !tbaa !19
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %48
  %53 = zext i32 %50 to i64
  %54 = tail call i64 @llvm.smin.i64(i64 %49, i64 %53)
  %55 = trunc i64 %54 to i32
  %56 = sub i32 %50, %55
  store i32 %56, ptr %3, align 8, !tbaa !19
  %57 = load ptr, ptr %31, align 8, !tbaa !20
  %58 = and i64 %54, 4294967295
  %59 = getelementptr inbounds nuw i8, ptr %57, i64 %58
  store ptr %59, ptr %31, align 8, !tbaa !20
  %60 = load i64, ptr %32, align 8, !tbaa !21
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %60, i64 %58), !nosanitize !22
  %62 = extractvalue { i64, i1 } %61, 1, !nosanitize !22
  br i1 %62, label %63, label %64, !prof !23, !nosanitize !22

63:                                               ; preds = %52
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

64:                                               ; preds = %52
  %65 = extractvalue { i64, i1 } %61, 0, !nosanitize !22
  store i64 %65, ptr %32, align 8, !tbaa !21
  %66 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %49, i64 %58), !nosanitize !22
  %67 = extractvalue { i64, i1 } %66, 1, !nosanitize !22
  br i1 %67, label %68, label %69, !prof !23, !nosanitize !22

68:                                               ; preds = %64
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !22
  unreachable, !nosanitize !22

69:                                               ; preds = %64
  %70 = extractvalue { i64, i1 } %66, 0, !nosanitize !22
  store i64 %70, ptr %27, align 8, !tbaa !18
  br label %451

71:                                               ; preds = %48
  %72 = load i32, ptr %33, align 8, !tbaa !24
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %34, align 8, !tbaa !25
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %454, label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %448, %77
  %79 = load i32, ptr %35, align 8, !tbaa !26
  switch i32 %79, label %436 [
    i32 0, label %80
    i32 1, label %303
    i32 2, label %339
  ]

80:                                               ; preds = %78
  %81 = load i32, ptr %36, align 8, !tbaa !27
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %80
  %84 = load i32, ptr %45, align 4, !tbaa !28
  %85 = zext i32 %84 to i64
  %86 = tail call noalias ptr @malloc(i64 noundef %85) #15
  store ptr %86, ptr %41, align 8, !tbaa !29
  %87 = load i32, ptr %45, align 4, !tbaa !28
  %88 = shl i32 %87, 1
  %89 = zext i32 %88 to i64
  %90 = tail call noalias ptr @malloc(i64 noundef %89) #15
  store ptr %90, ptr %38, align 8, !tbaa !30
  %91 = icmp eq ptr %86, null
  %92 = icmp eq ptr %90, null
  %93 = or i1 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  tail call void @free(ptr noundef %90) #13
  tail call void @free(ptr noundef %86) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1038

95:                                               ; preds = %83
  %96 = load i32, ptr %45, align 4, !tbaa !28
  store i32 %96, ptr %36, align 8, !tbaa !27
  store i32 0, ptr %34, align 8, !tbaa !25
  store ptr null, ptr %40, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, i8 0, i64 24, i1 false)
  %97 = tail call i32 @inflateInit2_(ptr noundef nonnull %40, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %38, align 8, !tbaa !30
  tail call void @free(ptr noundef %100) #13
  %101 = load ptr, ptr %41, align 8, !tbaa !29
  tail call void @free(ptr noundef %101) #13
  store i32 0, ptr %36, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1038

102:                                              ; preds = %95, %80
  %103 = load i32, ptr %47, align 8, !tbaa !32
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %44, align 4, !tbaa !33
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105, %102
  %109 = tail call i32 @inflateReset(ptr noundef nonnull %40) #13
  store i32 2, ptr %35, align 8, !tbaa !26
  %110 = load i32, ptr %44, align 4, !tbaa !33
  %111 = icmp ne i32 %110, -1
  %112 = zext i1 %111 to i32
  store i32 %112, ptr %44, align 4, !tbaa !33
  store i32 0, ptr %47, align 8, !tbaa !32
  br label %300

113:                                              ; preds = %105
  %114 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %114, label %1038 [
    i32 0, label %115
    i32 -5, label %115
  ]

115:                                              ; preds = %113, %113
  %116 = load i32, ptr %33, align 8, !tbaa !24
  %117 = icmp eq i32 %116, 0
  %118 = load i32, ptr %34, align 8, !tbaa !34
  br i1 %117, label %119, label %268

119:                                              ; preds = %115
  %120 = icmp eq i32 %118, 0
  %121 = load ptr, ptr %41, align 8, !tbaa !29
  %122 = ptrtoaddr ptr %121 to i64
  br i1 %120, label %228, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr %40, align 8, !tbaa !35
  %125 = icmp eq ptr %124, %121
  br i1 %125, label %228, label %126

126:                                              ; preds = %123
  %127 = ptrtoaddr ptr %124 to i64
  %128 = zext i32 %118 to i64
  %129 = icmp ult i32 %118, 4
  %130 = sub i64 %122, %127
  %131 = icmp ult i64 %130, 32
  %132 = select i1 %129, i1 true, i1 %131
  br i1 %132, label %172, label %133

133:                                              ; preds = %126
  %134 = icmp ult i32 %118, 32
  br i1 %134, label %156, label %135

135:                                              ; preds = %133
  %136 = and i64 %128, 28
  %137 = and i64 %128, 4294967264
  %138 = getelementptr i8, ptr %121, i64 %137
  %139 = getelementptr i8, ptr %124, i64 %137
  %140 = trunc nuw i64 %137 to i32
  %141 = sub i32 %118, %140
  br label %142

142:                                              ; preds = %142, %135
  %143 = phi i64 [ 0, %135 ], [ %150, %142 ]
  %144 = getelementptr i8, ptr %121, i64 %143
  %145 = getelementptr i8, ptr %124, i64 %143
  %146 = getelementptr i8, ptr %145, i64 16
  %147 = load <16 x i8>, ptr %145, align 1, !tbaa !36
  %148 = load <16 x i8>, ptr %146, align 1, !tbaa !36
  %149 = getelementptr i8, ptr %144, i64 16
  store <16 x i8> %147, ptr %144, align 1, !tbaa !36
  store <16 x i8> %148, ptr %149, align 1, !tbaa !36
  %150 = add nuw i64 %143, 32
  %151 = icmp eq i64 %150, %137
  br i1 %151, label %152, label %142, !llvm.loop !62

152:                                              ; preds = %142
  %153 = icmp eq i64 %137, %128
  br i1 %153, label %225, label %154

154:                                              ; preds = %152
  %155 = icmp eq i64 %136, 0
  br i1 %155, label %172, label %156, !prof !41

156:                                              ; preds = %154, %133
  %157 = phi i64 [ %137, %154 ], [ 0, %133 ]
  %158 = and i64 %128, 4294967292
  %159 = getelementptr i8, ptr %121, i64 %158
  %160 = getelementptr i8, ptr %124, i64 %158
  %161 = trunc nuw i64 %158 to i32
  %162 = sub i32 %118, %161
  br label %163

163:                                              ; preds = %163, %156
  %164 = phi i64 [ %157, %156 ], [ %168, %163 ]
  %165 = getelementptr i8, ptr %121, i64 %164
  %166 = getelementptr i8, ptr %124, i64 %164
  %167 = load <4 x i8>, ptr %166, align 1, !tbaa !36
  store <4 x i8> %167, ptr %165, align 1, !tbaa !36
  %168 = add nuw i64 %164, 4
  %169 = icmp eq i64 %168, %158
  br i1 %169, label %170, label %163, !llvm.loop !63

170:                                              ; preds = %163
  %171 = icmp eq i64 %158, %128
  br i1 %171, label %225, label %172

172:                                              ; preds = %170, %154, %126
  %173 = phi ptr [ %121, %126 ], [ %138, %154 ], [ %159, %170 ]
  %174 = phi ptr [ %124, %126 ], [ %139, %154 ], [ %160, %170 ]
  %175 = phi i32 [ %118, %126 ], [ %141, %154 ], [ %162, %170 ]
  %176 = add i32 %175, -1
  %177 = and i32 %175, 7
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %190, label %179

179:                                              ; preds = %179, %172
  %180 = phi ptr [ %186, %179 ], [ %173, %172 ]
  %181 = phi ptr [ %184, %179 ], [ %174, %172 ]
  %182 = phi i32 [ %187, %179 ], [ %175, %172 ]
  %183 = phi i32 [ %188, %179 ], [ 0, %172 ]
  %184 = getelementptr inbounds nuw i8, ptr %181, i64 1
  %185 = load i8, ptr %181, align 1, !tbaa !36
  %186 = getelementptr inbounds nuw i8, ptr %180, i64 1
  store i8 %185, ptr %180, align 1, !tbaa !36
  %187 = add i32 %182, -1
  %188 = add i32 %183, 1
  %189 = icmp eq i32 %188, %177
  br i1 %189, label %190, label %179, !llvm.loop !64

190:                                              ; preds = %179, %172
  %191 = phi ptr [ %173, %172 ], [ %186, %179 ]
  %192 = phi ptr [ %174, %172 ], [ %184, %179 ]
  %193 = phi i32 [ %175, %172 ], [ %187, %179 ]
  %194 = icmp ult i32 %176, 7
  br i1 %194, label %225, label %195

195:                                              ; preds = %195, %190
  %196 = phi ptr [ %222, %195 ], [ %191, %190 ]
  %197 = phi ptr [ %220, %195 ], [ %192, %190 ]
  %198 = phi i32 [ %223, %195 ], [ %193, %190 ]
  %199 = getelementptr inbounds nuw i8, ptr %197, i64 1
  %200 = load i8, ptr %197, align 1, !tbaa !36
  %201 = getelementptr inbounds nuw i8, ptr %196, i64 1
  store i8 %200, ptr %196, align 1, !tbaa !36
  %202 = getelementptr inbounds nuw i8, ptr %197, i64 2
  %203 = load i8, ptr %199, align 1, !tbaa !36
  %204 = getelementptr inbounds nuw i8, ptr %196, i64 2
  store i8 %203, ptr %201, align 1, !tbaa !36
  %205 = getelementptr inbounds nuw i8, ptr %197, i64 3
  %206 = load i8, ptr %202, align 1, !tbaa !36
  %207 = getelementptr inbounds nuw i8, ptr %196, i64 3
  store i8 %206, ptr %204, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %197, i64 4
  %209 = load i8, ptr %205, align 1, !tbaa !36
  %210 = getelementptr inbounds nuw i8, ptr %196, i64 4
  store i8 %209, ptr %207, align 1, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %197, i64 5
  %212 = load i8, ptr %208, align 1, !tbaa !36
  %213 = getelementptr inbounds nuw i8, ptr %196, i64 5
  store i8 %212, ptr %210, align 1, !tbaa !36
  %214 = getelementptr inbounds nuw i8, ptr %197, i64 6
  %215 = load i8, ptr %211, align 1, !tbaa !36
  %216 = getelementptr inbounds nuw i8, ptr %196, i64 6
  store i8 %215, ptr %213, align 1, !tbaa !36
  %217 = getelementptr inbounds nuw i8, ptr %197, i64 7
  %218 = load i8, ptr %214, align 1, !tbaa !36
  %219 = getelementptr inbounds nuw i8, ptr %196, i64 7
  store i8 %218, ptr %216, align 1, !tbaa !36
  %220 = getelementptr inbounds nuw i8, ptr %197, i64 8
  %221 = load i8, ptr %217, align 1, !tbaa !36
  %222 = getelementptr inbounds nuw i8, ptr %196, i64 8
  store i8 %221, ptr %219, align 1, !tbaa !36
  %223 = add i32 %198, -8
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %195, !llvm.loop !65

225:                                              ; preds = %195, %190, %170, %152
  %226 = load i32, ptr %34, align 8, !tbaa !34
  %227 = load ptr, ptr %41, align 8, !tbaa !29
  br label %228

228:                                              ; preds = %225, %123, %119
  %229 = phi ptr [ %227, %225 ], [ %121, %123 ], [ %121, %119 ]
  %230 = phi i32 [ %226, %225 ], [ %118, %123 ], [ 0, %119 ]
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds nuw i8, ptr %229, i64 %231
  %233 = load i32, ptr %36, align 8, !tbaa !27
  %234 = sub i32 %233, %230
  store i32 0, ptr %42, align 4, !tbaa !17
  %235 = tail call ptr @__errno_location() #16
  store i32 0, ptr %235, align 4, !tbaa !4
  br label %236

236:                                              ; preds = %247, %228
  %237 = phi i32 [ 0, %228 ], [ %248, %247 ]
  %238 = sub i32 %234, %237
  %239 = tail call i32 @llvm.umin.i32(i32 %238, i32 1073741824)
  %240 = load i32, ptr %43, align 4, !tbaa !46
  %241 = zext i32 %237 to i64
  %242 = getelementptr inbounds nuw i8, ptr %232, i64 %241
  %243 = zext nneg i32 %239 to i64
  %244 = tail call i64 @read(i32 noundef %240, ptr noundef %242, i64 noundef %243) #13
  %245 = trunc i64 %244 to i32
  %246 = icmp slt i32 %245, 1
  br i1 %246, label %250, label %247

247:                                              ; preds = %236
  %248 = add i32 %237, %245
  %249 = icmp ult i32 %248, %234
  br i1 %249, label %236, label %263, !llvm.loop !47

250:                                              ; preds = %236
  %251 = icmp slt i32 %245, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %250
  %253 = load i32, ptr %235, align 4, !tbaa !4
  %254 = icmp eq i32 %253, 11
  br i1 %254, label %255, label %260

255:                                              ; preds = %252
  store i32 1, ptr %42, align 4, !tbaa !17
  %256 = icmp eq i32 %237, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %255
  %258 = load i32, ptr %235, align 4, !tbaa !4
  br label %260

259:                                              ; preds = %250
  store i32 1, ptr %33, align 8, !tbaa !24
  br label %263

260:                                              ; preds = %257, %252
  %261 = phi i32 [ %258, %257 ], [ %253, %252 ]
  %262 = tail call ptr @strerror(i32 noundef %261) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %262) #13
  br label %1038

263:                                              ; preds = %259, %255, %247
  %264 = phi i32 [ %237, %255 ], [ %237, %259 ], [ %248, %247 ]
  %265 = load i32, ptr %34, align 8, !tbaa !34
  %266 = add i32 %265, %264
  store i32 %266, ptr %34, align 8, !tbaa !34
  %267 = load ptr, ptr %41, align 8, !tbaa !29
  store ptr %267, ptr %40, align 8, !tbaa !35
  br label %268

268:                                              ; preds = %263, %115
  %269 = phi i32 [ %266, %263 ], [ %118, %115 ]
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %300, label %271

271:                                              ; preds = %268
  %272 = load i32, ptr %42, align 4, !tbaa !17
  %273 = icmp ne i32 %272, 0
  %274 = icmp ult i32 %269, 4
  %275 = and i1 %274, %273
  br i1 %275, label %300, label %276

276:                                              ; preds = %271
  %277 = icmp ugt i32 %269, 3
  %278 = load ptr, ptr %40, align 8, !tbaa !35
  br i1 %277, label %279, label %296

279:                                              ; preds = %276
  %280 = load i8, ptr %278, align 1, !tbaa !36
  %281 = icmp eq i8 %280, 31
  br i1 %281, label %282, label %296

282:                                              ; preds = %279
  %283 = getelementptr inbounds nuw i8, ptr %278, i64 1
  %284 = load i8, ptr %283, align 1, !tbaa !36
  %285 = icmp eq i8 %284, -117
  br i1 %285, label %286, label %296

286:                                              ; preds = %282
  %287 = getelementptr inbounds nuw i8, ptr %278, i64 2
  %288 = load i8, ptr %287, align 1, !tbaa !36
  %289 = icmp eq i8 %288, 8
  br i1 %289, label %290, label %296

290:                                              ; preds = %286
  %291 = getelementptr inbounds nuw i8, ptr %278, i64 3
  %292 = load i8, ptr %291, align 1, !tbaa !36
  %293 = icmp ult i8 %292, 32
  br i1 %293, label %294, label %296

294:                                              ; preds = %290
  %295 = tail call i32 @inflateReset(ptr noundef nonnull %40) #13
  store i32 2, ptr %35, align 8, !tbaa !26
  store i32 1, ptr %44, align 4, !tbaa !33
  store i32 0, ptr %47, align 8, !tbaa !32
  br label %437

296:                                              ; preds = %290, %286, %282, %279, %276
  %297 = load ptr, ptr %38, align 8, !tbaa !30
  store ptr %297, ptr %31, align 8, !tbaa !20
  %298 = zext i32 %269 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %297, ptr align 1 %278, i64 %298, i1 false)
  %299 = load i32, ptr %34, align 8, !tbaa !34
  store i32 %299, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %34, align 8, !tbaa !34
  store i32 1, ptr %35, align 8, !tbaa !26
  br label %439

300:                                              ; preds = %271, %268, %108
  %301 = load i32, ptr %35, align 8, !tbaa !26
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %449, label %437

303:                                              ; preds = %78
  %304 = load ptr, ptr %38, align 8, !tbaa !30
  %305 = load i32, ptr %36, align 8, !tbaa !27
  %306 = shl i32 %305, 1
  store i32 0, ptr %42, align 4, !tbaa !17
  %307 = tail call ptr @__errno_location() #16
  store i32 0, ptr %307, align 4, !tbaa !4
  store i32 0, ptr %3, align 8, !tbaa !4
  br label %308

308:                                              ; preds = %319, %303
  %309 = phi i32 [ %321, %319 ], [ 0, %303 ]
  %310 = sub i32 %306, %309
  %311 = tail call i32 @llvm.umin.i32(i32 %310, i32 1073741824)
  %312 = load i32, ptr %43, align 4, !tbaa !46
  %313 = zext i32 %309 to i64
  %314 = getelementptr inbounds nuw i8, ptr %304, i64 %313
  %315 = zext nneg i32 %311 to i64
  %316 = tail call i64 @read(i32 noundef %312, ptr noundef %314, i64 noundef %315) #13
  %317 = trunc i64 %316 to i32
  %318 = icmp slt i32 %317, 1
  br i1 %318, label %323, label %319

319:                                              ; preds = %308
  %320 = load i32, ptr %3, align 4, !tbaa !4
  %321 = add i32 %320, %317
  store i32 %321, ptr %3, align 4, !tbaa !4
  %322 = icmp ult i32 %321, %306
  br i1 %322, label %308, label %337, !llvm.loop !47

323:                                              ; preds = %308
  %324 = icmp slt i32 %317, 0
  br i1 %324, label %325, label %333

325:                                              ; preds = %323
  %326 = load i32, ptr %307, align 4, !tbaa !4
  %327 = icmp eq i32 %326, 11
  br i1 %327, label %328, label %334

328:                                              ; preds = %325
  store i32 1, ptr %42, align 4, !tbaa !17
  %329 = load i32, ptr %3, align 4, !tbaa !4
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %337

331:                                              ; preds = %328
  %332 = load i32, ptr %307, align 4, !tbaa !4
  br label %334

333:                                              ; preds = %323
  store i32 1, ptr %33, align 8, !tbaa !24
  br label %337

334:                                              ; preds = %331, %325
  %335 = phi i32 [ %332, %331 ], [ %326, %325 ]
  %336 = tail call ptr @strerror(i32 noundef %335) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %336) #13
  br label %1038

337:                                              ; preds = %333, %328, %319
  %338 = load ptr, ptr %38, align 8, !tbaa !30
  store ptr %338, ptr %31, align 8, !tbaa !20
  br label %449

339:                                              ; preds = %78
  %340 = load i32, ptr %36, align 8, !tbaa !27
  %341 = shl i32 %340, 1
  store i32 %341, ptr %37, align 8, !tbaa !48
  %342 = load ptr, ptr %38, align 8, !tbaa !30
  store ptr %342, ptr %39, align 8, !tbaa !49
  br label %343

343:                                              ; preds = %416, %339
  %344 = phi i32 [ 0, %339 ], [ %395, %416 ]
  %345 = load i32, ptr %34, align 8, !tbaa !34
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %394

347:                                              ; preds = %343
  %348 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %348, label %427 [
    i32 0, label %349
    i32 -5, label %349
  ]

349:                                              ; preds = %347, %347
  %350 = load i32, ptr %33, align 8, !tbaa !24
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %390

352:                                              ; preds = %349
  %353 = load ptr, ptr %41, align 8, !tbaa !29
  %354 = load i32, ptr %36, align 8, !tbaa !27
  store i32 0, ptr %42, align 4, !tbaa !17
  %355 = tail call ptr @__errno_location() #16
  store i32 0, ptr %355, align 4, !tbaa !4
  br label %356

356:                                              ; preds = %367, %352
  %357 = phi i32 [ 0, %352 ], [ %368, %367 ]
  %358 = sub i32 %354, %357
  %359 = tail call i32 @llvm.umin.i32(i32 %358, i32 1073741824)
  %360 = load i32, ptr %43, align 4, !tbaa !46
  %361 = zext i32 %357 to i64
  %362 = getelementptr inbounds nuw i8, ptr %353, i64 %361
  %363 = zext nneg i32 %359 to i64
  %364 = tail call i64 @read(i32 noundef %360, ptr noundef %362, i64 noundef %363) #13
  %365 = trunc i64 %364 to i32
  %366 = icmp slt i32 %365, 1
  br i1 %366, label %370, label %367

367:                                              ; preds = %356
  %368 = add i32 %357, %365
  %369 = icmp ult i32 %368, %354
  br i1 %369, label %356, label %384, !llvm.loop !47

370:                                              ; preds = %356
  %371 = icmp slt i32 %365, 0
  br i1 %371, label %372, label %379

372:                                              ; preds = %370
  %373 = load i32, ptr %355, align 4, !tbaa !4
  %374 = icmp eq i32 %373, 11
  br i1 %374, label %375, label %380

375:                                              ; preds = %372
  store i32 1, ptr %42, align 4, !tbaa !17
  %376 = icmp eq i32 %357, 0
  br i1 %376, label %377, label %384

377:                                              ; preds = %375
  %378 = load i32, ptr %355, align 4, !tbaa !4
  br label %380

379:                                              ; preds = %370
  store i32 1, ptr %33, align 8, !tbaa !24
  br label %384

380:                                              ; preds = %377, %372
  %381 = phi i32 [ %378, %377 ], [ %373, %372 ]
  %382 = tail call ptr @strerror(i32 noundef %381) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %382) #13
  %383 = load i32, ptr %11, align 8, !tbaa !16
  br label %427

384:                                              ; preds = %379, %375, %367
  %385 = phi i32 [ %357, %375 ], [ %357, %379 ], [ %368, %367 ]
  %386 = load i32, ptr %34, align 8, !tbaa !34
  %387 = add i32 %386, %385
  store i32 %387, ptr %34, align 8, !tbaa !34
  %388 = load ptr, ptr %41, align 8, !tbaa !29
  store ptr %388, ptr %40, align 8, !tbaa !35
  %389 = icmp eq i32 %387, 0
  br i1 %389, label %390, label %394

390:                                              ; preds = %384, %349
  %391 = load i32, ptr %42, align 4, !tbaa !17
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %427

393:                                              ; preds = %390
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %427

394:                                              ; preds = %384, %343
  %395 = tail call i32 @inflate(ptr noundef nonnull %40, i32 noundef 0) #13
  %396 = load i32, ptr %37, align 8, !tbaa !48
  %397 = icmp ult i32 %396, %341
  br i1 %397, label %398, label %399

398:                                              ; preds = %394
  store i32 0, ptr %44, align 4, !tbaa !33
  br label %399

399:                                              ; preds = %398, %394
  switch i32 %395, label %416 [
    i32 -2, label %400
    i32 2, label %400
    i32 -4, label %401
    i32 -3, label %402
  ]

400:                                              ; preds = %399, %399
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %427

401:                                              ; preds = %399
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %420

402:                                              ; preds = %399
  %403 = load i32, ptr %44, align 4, !tbaa !33
  %404 = icmp eq i32 %403, 1
  br i1 %404, label %405, label %411

405:                                              ; preds = %402
  store i32 0, ptr %34, align 8, !tbaa !34
  store i32 1, ptr %33, align 8, !tbaa !24
  store i32 0, ptr %35, align 8, !tbaa !26
  %406 = sub i32 %341, %396
  store i32 %406, ptr %3, align 8, !tbaa !19
  %407 = load ptr, ptr %39, align 8, !tbaa !49
  %408 = zext i32 %406 to i64
  %409 = sub nsw i64 0, %408
  %410 = getelementptr inbounds i8, ptr %407, i64 %409
  store ptr %410, ptr %31, align 8, !tbaa !20
  br label %437

411:                                              ; preds = %402
  %412 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %413 = load ptr, ptr %412, align 8, !tbaa !50
  %414 = icmp eq ptr %413, null
  %415 = select i1 %414, ptr @.str.6, ptr %413
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %415) #13
  br label %420

416:                                              ; preds = %399
  %417 = icmp ne i32 %396, 0
  %418 = icmp ne i32 %395, 1
  %419 = select i1 %417, i1 %418, i1 false
  br i1 %419, label %343, label %427, !llvm.loop !51

420:                                              ; preds = %411, %401
  %421 = load i32, ptr %37, align 8, !tbaa !48
  %422 = sub i32 %341, %421
  store i32 %422, ptr %3, align 8, !tbaa !19
  %423 = load ptr, ptr %39, align 8, !tbaa !49
  %424 = zext i32 %422 to i64
  %425 = sub nsw i64 0, %424
  %426 = getelementptr inbounds i8, ptr %423, i64 %425
  store ptr %426, ptr %31, align 8, !tbaa !20
  br label %1038

427:                                              ; preds = %416, %400, %393, %390, %380, %347
  %428 = phi i32 [ %383, %380 ], [ %344, %390 ], [ %344, %393 ], [ %395, %400 ], [ %395, %416 ], [ %348, %347 ]
  %429 = load i32, ptr %37, align 8, !tbaa !48
  %430 = sub i32 %341, %429
  store i32 %430, ptr %3, align 8, !tbaa !19
  %431 = load ptr, ptr %39, align 8, !tbaa !49
  %432 = zext i32 %430 to i64
  %433 = sub nsw i64 0, %432
  %434 = getelementptr inbounds i8, ptr %431, i64 %433
  store ptr %434, ptr %31, align 8, !tbaa !20
  switch i32 %428, label %1038 [
    i32 1, label %435
    i32 0, label %437
  ]

435:                                              ; preds = %427
  store i32 0, ptr %44, align 4, !tbaa !33
  store i32 0, ptr %35, align 8, !tbaa !26
  br label %437

436:                                              ; preds = %78
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1038

437:                                              ; preds = %435, %427, %405, %300, %294
  %438 = load i32, ptr %3, align 8, !tbaa !19
  br label %439

439:                                              ; preds = %437, %296
  %440 = phi i32 [ %438, %437 ], [ %299, %296 ]
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %442, label %449

442:                                              ; preds = %439
  %443 = load i32, ptr %33, align 8, !tbaa !24
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %448, label %445

445:                                              ; preds = %442
  %446 = load i32, ptr %34, align 8, !tbaa !34
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %449, label %448

448:                                              ; preds = %445, %442
  br label %78, !llvm.loop !52

449:                                              ; preds = %445, %439, %337, %300
  %450 = load i64, ptr %27, align 8, !tbaa !18
  br label %451

451:                                              ; preds = %449, %69
  %452 = phi i64 [ %450, %449 ], [ %70, %69 ]
  %453 = icmp eq i64 %452, 0
  br i1 %453, label %454, label %48, !llvm.loop !53

454:                                              ; preds = %451, %74, %26
  %455 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %456 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %457 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %458 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %459 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %460 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %461 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %462 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %463 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %464 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %465 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %466 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %467 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %468 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %469 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %470 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %471 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %472 = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %473

473:                                              ; preds = %1030, %454
  %474 = phi ptr [ %0, %454 ], [ %1025, %1030 ]
  %475 = phi i64 [ %19, %454 ], [ %1026, %1030 ]
  %476 = phi i64 [ 0, %454 ], [ %1027, %1030 ]
  %477 = tail call i64 @llvm.umin.i64(i64 %475, i64 4294967295)
  %478 = trunc nuw i64 %477 to i32
  %479 = load i32, ptr %3, align 8, !tbaa !19
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %492, label %481

481:                                              ; preds = %473
  %482 = tail call i32 @llvm.umin.i32(i32 %479, i32 %478)
  %483 = load ptr, ptr %455, align 8, !tbaa !20
  %484 = zext i32 %482 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %474, ptr align 1 %483, i64 %484, i1 false)
  %485 = load ptr, ptr %455, align 8, !tbaa !20
  %486 = getelementptr inbounds nuw i8, ptr %485, i64 %484
  store ptr %486, ptr %455, align 8, !tbaa !20
  %487 = load i32, ptr %3, align 8, !tbaa !19
  %488 = sub i32 %487, %482
  store i32 %488, ptr %3, align 8, !tbaa !19
  %489 = load i32, ptr %11, align 8, !tbaa !16
  %490 = icmp ne i32 %489, 0
  %491 = sext i1 %490 to i32
  br label %1012

492:                                              ; preds = %473
  %493 = load i32, ptr %456, align 8, !tbaa !24
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %498, label %495

495:                                              ; preds = %492
  %496 = load i32, ptr %457, align 8, !tbaa !25
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %1035, label %498

498:                                              ; preds = %495, %492
  %499 = load i32, ptr %458, align 8, !tbaa !26
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %505, label %501

501:                                              ; preds = %498
  %502 = load i32, ptr %459, align 8, !tbaa !27
  %503 = shl i32 %502, 1
  %504 = icmp ugt i32 %503, %478
  br i1 %504, label %505, label %881

505:                                              ; preds = %501, %498
  br label %506

506:                                              ; preds = %875, %505
  %507 = phi i32 [ %876, %875 ], [ %499, %505 ]
  switch i32 %507, label %863 [
    i32 0, label %508
    i32 1, label %731
    i32 2, label %767
  ]

508:                                              ; preds = %506
  %509 = load i32, ptr %459, align 8, !tbaa !27
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %530

511:                                              ; preds = %508
  %512 = load i32, ptr %470, align 4, !tbaa !28
  %513 = zext i32 %512 to i64
  %514 = tail call noalias ptr @malloc(i64 noundef %513) #15
  store ptr %514, ptr %463, align 8, !tbaa !29
  %515 = load i32, ptr %470, align 4, !tbaa !28
  %516 = shl i32 %515, 1
  %517 = zext i32 %516 to i64
  %518 = tail call noalias ptr @malloc(i64 noundef %517) #15
  store ptr %518, ptr %469, align 8, !tbaa !30
  %519 = icmp eq ptr %514, null
  %520 = icmp eq ptr %518, null
  %521 = or i1 %519, %520
  br i1 %521, label %522, label %523

522:                                              ; preds = %511
  tail call void @free(ptr noundef %518) #13
  tail call void @free(ptr noundef %514) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %877

523:                                              ; preds = %511
  %524 = load i32, ptr %470, align 4, !tbaa !28
  store i32 %524, ptr %459, align 8, !tbaa !27
  store i32 0, ptr %457, align 8, !tbaa !25
  store ptr null, ptr %462, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %471, i8 0, i64 24, i1 false)
  %525 = tail call i32 @inflateInit2_(ptr noundef nonnull %462, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %530, label %527

527:                                              ; preds = %523
  %528 = load ptr, ptr %469, align 8, !tbaa !30
  tail call void @free(ptr noundef %528) #13
  %529 = load ptr, ptr %463, align 8, !tbaa !29
  tail call void @free(ptr noundef %529) #13
  store i32 0, ptr %459, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %877

530:                                              ; preds = %523, %508
  %531 = load i32, ptr %472, align 8, !tbaa !32
  %532 = icmp eq i32 %531, -1
  br i1 %532, label %536, label %533

533:                                              ; preds = %530
  %534 = load i32, ptr %466, align 4, !tbaa !33
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %536, label %541

536:                                              ; preds = %533, %530
  %537 = tail call i32 @inflateReset(ptr noundef nonnull %462) #13
  store i32 2, ptr %458, align 8, !tbaa !26
  %538 = load i32, ptr %466, align 4, !tbaa !33
  %539 = icmp ne i32 %538, -1
  %540 = zext i1 %539 to i32
  store i32 %540, ptr %466, align 4, !tbaa !33
  store i32 0, ptr %472, align 8, !tbaa !32
  br label %728

541:                                              ; preds = %533
  %542 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %542, label %877 [
    i32 0, label %543
    i32 -5, label %543
  ]

543:                                              ; preds = %541, %541
  %544 = load i32, ptr %456, align 8, !tbaa !24
  %545 = icmp eq i32 %544, 0
  %546 = load i32, ptr %457, align 8, !tbaa !34
  br i1 %545, label %547, label %696

547:                                              ; preds = %543
  %548 = icmp eq i32 %546, 0
  %549 = load ptr, ptr %463, align 8, !tbaa !29
  %550 = ptrtoaddr ptr %549 to i64
  br i1 %548, label %656, label %551

551:                                              ; preds = %547
  %552 = load ptr, ptr %462, align 8, !tbaa !35
  %553 = icmp eq ptr %552, %549
  br i1 %553, label %656, label %554

554:                                              ; preds = %551
  %555 = ptrtoaddr ptr %552 to i64
  %556 = zext i32 %546 to i64
  %557 = icmp ult i32 %546, 4
  %558 = sub i64 %550, %555
  %559 = icmp ult i64 %558, 32
  %560 = select i1 %557, i1 true, i1 %559
  br i1 %560, label %600, label %561

561:                                              ; preds = %554
  %562 = icmp ult i32 %546, 32
  br i1 %562, label %584, label %563

563:                                              ; preds = %561
  %564 = and i64 %556, 28
  %565 = and i64 %556, 4294967264
  %566 = getelementptr i8, ptr %549, i64 %565
  %567 = getelementptr i8, ptr %552, i64 %565
  %568 = trunc nuw i64 %565 to i32
  %569 = sub i32 %546, %568
  br label %570

570:                                              ; preds = %570, %563
  %571 = phi i64 [ 0, %563 ], [ %578, %570 ]
  %572 = getelementptr i8, ptr %549, i64 %571
  %573 = getelementptr i8, ptr %552, i64 %571
  %574 = getelementptr i8, ptr %573, i64 16
  %575 = load <16 x i8>, ptr %573, align 1, !tbaa !36
  %576 = load <16 x i8>, ptr %574, align 1, !tbaa !36
  %577 = getelementptr i8, ptr %572, i64 16
  store <16 x i8> %575, ptr %572, align 1, !tbaa !36
  store <16 x i8> %576, ptr %577, align 1, !tbaa !36
  %578 = add nuw i64 %571, 32
  %579 = icmp eq i64 %578, %565
  br i1 %579, label %580, label %570, !llvm.loop !66

580:                                              ; preds = %570
  %581 = icmp eq i64 %565, %556
  br i1 %581, label %653, label %582

582:                                              ; preds = %580
  %583 = icmp eq i64 %564, 0
  br i1 %583, label %600, label %584, !prof !41

584:                                              ; preds = %582, %561
  %585 = phi i64 [ %565, %582 ], [ 0, %561 ]
  %586 = and i64 %556, 4294967292
  %587 = getelementptr i8, ptr %549, i64 %586
  %588 = getelementptr i8, ptr %552, i64 %586
  %589 = trunc nuw i64 %586 to i32
  %590 = sub i32 %546, %589
  br label %591

591:                                              ; preds = %591, %584
  %592 = phi i64 [ %585, %584 ], [ %596, %591 ]
  %593 = getelementptr i8, ptr %549, i64 %592
  %594 = getelementptr i8, ptr %552, i64 %592
  %595 = load <4 x i8>, ptr %594, align 1, !tbaa !36
  store <4 x i8> %595, ptr %593, align 1, !tbaa !36
  %596 = add nuw i64 %592, 4
  %597 = icmp eq i64 %596, %586
  br i1 %597, label %598, label %591, !llvm.loop !67

598:                                              ; preds = %591
  %599 = icmp eq i64 %586, %556
  br i1 %599, label %653, label %600

600:                                              ; preds = %598, %582, %554
  %601 = phi ptr [ %549, %554 ], [ %566, %582 ], [ %587, %598 ]
  %602 = phi ptr [ %552, %554 ], [ %567, %582 ], [ %588, %598 ]
  %603 = phi i32 [ %546, %554 ], [ %569, %582 ], [ %590, %598 ]
  %604 = add i32 %603, -1
  %605 = and i32 %603, 7
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %618, label %607

607:                                              ; preds = %607, %600
  %608 = phi ptr [ %614, %607 ], [ %601, %600 ]
  %609 = phi ptr [ %612, %607 ], [ %602, %600 ]
  %610 = phi i32 [ %615, %607 ], [ %603, %600 ]
  %611 = phi i32 [ %616, %607 ], [ 0, %600 ]
  %612 = getelementptr inbounds nuw i8, ptr %609, i64 1
  %613 = load i8, ptr %609, align 1, !tbaa !36
  %614 = getelementptr inbounds nuw i8, ptr %608, i64 1
  store i8 %613, ptr %608, align 1, !tbaa !36
  %615 = add i32 %610, -1
  %616 = add i32 %611, 1
  %617 = icmp eq i32 %616, %605
  br i1 %617, label %618, label %607, !llvm.loop !68

618:                                              ; preds = %607, %600
  %619 = phi ptr [ %601, %600 ], [ %614, %607 ]
  %620 = phi ptr [ %602, %600 ], [ %612, %607 ]
  %621 = phi i32 [ %603, %600 ], [ %615, %607 ]
  %622 = icmp ult i32 %604, 7
  br i1 %622, label %653, label %623

623:                                              ; preds = %623, %618
  %624 = phi ptr [ %650, %623 ], [ %619, %618 ]
  %625 = phi ptr [ %648, %623 ], [ %620, %618 ]
  %626 = phi i32 [ %651, %623 ], [ %621, %618 ]
  %627 = getelementptr inbounds nuw i8, ptr %625, i64 1
  %628 = load i8, ptr %625, align 1, !tbaa !36
  %629 = getelementptr inbounds nuw i8, ptr %624, i64 1
  store i8 %628, ptr %624, align 1, !tbaa !36
  %630 = getelementptr inbounds nuw i8, ptr %625, i64 2
  %631 = load i8, ptr %627, align 1, !tbaa !36
  %632 = getelementptr inbounds nuw i8, ptr %624, i64 2
  store i8 %631, ptr %629, align 1, !tbaa !36
  %633 = getelementptr inbounds nuw i8, ptr %625, i64 3
  %634 = load i8, ptr %630, align 1, !tbaa !36
  %635 = getelementptr inbounds nuw i8, ptr %624, i64 3
  store i8 %634, ptr %632, align 1, !tbaa !36
  %636 = getelementptr inbounds nuw i8, ptr %625, i64 4
  %637 = load i8, ptr %633, align 1, !tbaa !36
  %638 = getelementptr inbounds nuw i8, ptr %624, i64 4
  store i8 %637, ptr %635, align 1, !tbaa !36
  %639 = getelementptr inbounds nuw i8, ptr %625, i64 5
  %640 = load i8, ptr %636, align 1, !tbaa !36
  %641 = getelementptr inbounds nuw i8, ptr %624, i64 5
  store i8 %640, ptr %638, align 1, !tbaa !36
  %642 = getelementptr inbounds nuw i8, ptr %625, i64 6
  %643 = load i8, ptr %639, align 1, !tbaa !36
  %644 = getelementptr inbounds nuw i8, ptr %624, i64 6
  store i8 %643, ptr %641, align 1, !tbaa !36
  %645 = getelementptr inbounds nuw i8, ptr %625, i64 7
  %646 = load i8, ptr %642, align 1, !tbaa !36
  %647 = getelementptr inbounds nuw i8, ptr %624, i64 7
  store i8 %646, ptr %644, align 1, !tbaa !36
  %648 = getelementptr inbounds nuw i8, ptr %625, i64 8
  %649 = load i8, ptr %645, align 1, !tbaa !36
  %650 = getelementptr inbounds nuw i8, ptr %624, i64 8
  store i8 %649, ptr %647, align 1, !tbaa !36
  %651 = add i32 %626, -8
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %653, label %623, !llvm.loop !69

653:                                              ; preds = %623, %618, %598, %580
  %654 = load i32, ptr %457, align 8, !tbaa !34
  %655 = load ptr, ptr %463, align 8, !tbaa !29
  br label %656

656:                                              ; preds = %653, %551, %547
  %657 = phi ptr [ %655, %653 ], [ %549, %551 ], [ %549, %547 ]
  %658 = phi i32 [ %654, %653 ], [ %546, %551 ], [ 0, %547 ]
  %659 = zext i32 %658 to i64
  %660 = getelementptr inbounds nuw i8, ptr %657, i64 %659
  %661 = load i32, ptr %459, align 8, !tbaa !27
  %662 = sub i32 %661, %658
  store i32 0, ptr %464, align 4, !tbaa !17
  %663 = tail call ptr @__errno_location() #16
  store i32 0, ptr %663, align 4, !tbaa !4
  br label %664

664:                                              ; preds = %675, %656
  %665 = phi i32 [ 0, %656 ], [ %676, %675 ]
  %666 = sub i32 %662, %665
  %667 = tail call i32 @llvm.umin.i32(i32 %666, i32 1073741824)
  %668 = load i32, ptr %465, align 4, !tbaa !46
  %669 = zext i32 %665 to i64
  %670 = getelementptr inbounds nuw i8, ptr %660, i64 %669
  %671 = zext nneg i32 %667 to i64
  %672 = tail call i64 @read(i32 noundef %668, ptr noundef %670, i64 noundef %671) #13
  %673 = trunc i64 %672 to i32
  %674 = icmp slt i32 %673, 1
  br i1 %674, label %678, label %675

675:                                              ; preds = %664
  %676 = add i32 %665, %673
  %677 = icmp ult i32 %676, %662
  br i1 %677, label %664, label %691, !llvm.loop !47

678:                                              ; preds = %664
  %679 = icmp slt i32 %673, 0
  br i1 %679, label %680, label %687

680:                                              ; preds = %678
  %681 = load i32, ptr %663, align 4, !tbaa !4
  %682 = icmp eq i32 %681, 11
  br i1 %682, label %683, label %688

683:                                              ; preds = %680
  store i32 1, ptr %464, align 4, !tbaa !17
  %684 = icmp eq i32 %665, 0
  br i1 %684, label %685, label %691

685:                                              ; preds = %683
  %686 = load i32, ptr %663, align 4, !tbaa !4
  br label %688

687:                                              ; preds = %678
  store i32 1, ptr %456, align 8, !tbaa !24
  br label %691

688:                                              ; preds = %685, %680
  %689 = phi i32 [ %686, %685 ], [ %681, %680 ]
  %690 = tail call ptr @strerror(i32 noundef %689) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %690) #13
  br label %877

691:                                              ; preds = %687, %683, %675
  %692 = phi i32 [ %665, %683 ], [ %665, %687 ], [ %676, %675 ]
  %693 = load i32, ptr %457, align 8, !tbaa !34
  %694 = add i32 %693, %692
  store i32 %694, ptr %457, align 8, !tbaa !34
  %695 = load ptr, ptr %463, align 8, !tbaa !29
  store ptr %695, ptr %462, align 8, !tbaa !35
  br label %696

696:                                              ; preds = %691, %543
  %697 = phi i32 [ %694, %691 ], [ %546, %543 ]
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %728, label %699

699:                                              ; preds = %696
  %700 = load i32, ptr %464, align 4, !tbaa !17
  %701 = icmp ne i32 %700, 0
  %702 = icmp ult i32 %697, 4
  %703 = and i1 %702, %701
  br i1 %703, label %728, label %704

704:                                              ; preds = %699
  %705 = icmp ugt i32 %697, 3
  %706 = load ptr, ptr %462, align 8, !tbaa !35
  br i1 %705, label %707, label %724

707:                                              ; preds = %704
  %708 = load i8, ptr %706, align 1, !tbaa !36
  %709 = icmp eq i8 %708, 31
  br i1 %709, label %710, label %724

710:                                              ; preds = %707
  %711 = getelementptr inbounds nuw i8, ptr %706, i64 1
  %712 = load i8, ptr %711, align 1, !tbaa !36
  %713 = icmp eq i8 %712, -117
  br i1 %713, label %714, label %724

714:                                              ; preds = %710
  %715 = getelementptr inbounds nuw i8, ptr %706, i64 2
  %716 = load i8, ptr %715, align 1, !tbaa !36
  %717 = icmp eq i8 %716, 8
  br i1 %717, label %718, label %724

718:                                              ; preds = %714
  %719 = getelementptr inbounds nuw i8, ptr %706, i64 3
  %720 = load i8, ptr %719, align 1, !tbaa !36
  %721 = icmp ult i8 %720, 32
  br i1 %721, label %722, label %724

722:                                              ; preds = %718
  %723 = tail call i32 @inflateReset(ptr noundef nonnull %462) #13
  store i32 2, ptr %458, align 8, !tbaa !26
  store i32 1, ptr %466, align 4, !tbaa !33
  store i32 0, ptr %472, align 8, !tbaa !32
  br label %864

724:                                              ; preds = %718, %714, %710, %707, %704
  %725 = load ptr, ptr %469, align 8, !tbaa !30
  store ptr %725, ptr %455, align 8, !tbaa !20
  %726 = zext i32 %697 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %725, ptr align 1 %706, i64 %726, i1 false)
  %727 = load i32, ptr %457, align 8, !tbaa !34
  store i32 %727, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %457, align 8, !tbaa !34
  store i32 1, ptr %458, align 8, !tbaa !26
  br label %866

728:                                              ; preds = %699, %696, %536
  %729 = load i32, ptr %458, align 8, !tbaa !26
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %1024, label %864

731:                                              ; preds = %506
  %732 = load ptr, ptr %469, align 8, !tbaa !30
  %733 = load i32, ptr %459, align 8, !tbaa !27
  %734 = shl i32 %733, 1
  store i32 0, ptr %464, align 4, !tbaa !17
  %735 = tail call ptr @__errno_location() #16
  store i32 0, ptr %735, align 4, !tbaa !4
  store i32 0, ptr %3, align 8, !tbaa !4
  br label %736

736:                                              ; preds = %747, %731
  %737 = phi i32 [ %749, %747 ], [ 0, %731 ]
  %738 = sub i32 %734, %737
  %739 = tail call i32 @llvm.umin.i32(i32 %738, i32 1073741824)
  %740 = load i32, ptr %465, align 4, !tbaa !46
  %741 = zext i32 %737 to i64
  %742 = getelementptr inbounds nuw i8, ptr %732, i64 %741
  %743 = zext nneg i32 %739 to i64
  %744 = tail call i64 @read(i32 noundef %740, ptr noundef %742, i64 noundef %743) #13
  %745 = trunc i64 %744 to i32
  %746 = icmp slt i32 %745, 1
  br i1 %746, label %751, label %747

747:                                              ; preds = %736
  %748 = load i32, ptr %3, align 4, !tbaa !4
  %749 = add i32 %748, %745
  store i32 %749, ptr %3, align 4, !tbaa !4
  %750 = icmp ult i32 %749, %734
  br i1 %750, label %736, label %765, !llvm.loop !47

751:                                              ; preds = %736
  %752 = icmp slt i32 %745, 0
  br i1 %752, label %753, label %761

753:                                              ; preds = %751
  %754 = load i32, ptr %735, align 4, !tbaa !4
  %755 = icmp eq i32 %754, 11
  br i1 %755, label %756, label %762

756:                                              ; preds = %753
  store i32 1, ptr %464, align 4, !tbaa !17
  %757 = load i32, ptr %3, align 4, !tbaa !4
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %759, label %765

759:                                              ; preds = %756
  %760 = load i32, ptr %735, align 4, !tbaa !4
  br label %762

761:                                              ; preds = %751
  store i32 1, ptr %456, align 8, !tbaa !24
  br label %765

762:                                              ; preds = %759, %753
  %763 = phi i32 [ %760, %759 ], [ %754, %753 ]
  %764 = tail call ptr @strerror(i32 noundef %763) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %764) #13
  br label %877

765:                                              ; preds = %761, %756, %747
  %766 = load ptr, ptr %469, align 8, !tbaa !30
  store ptr %766, ptr %455, align 8, !tbaa !20
  br label %1024

767:                                              ; preds = %506
  %768 = load i32, ptr %459, align 8, !tbaa !27
  %769 = shl i32 %768, 1
  store i32 %769, ptr %460, align 8, !tbaa !48
  %770 = load ptr, ptr %469, align 8, !tbaa !30
  store ptr %770, ptr %461, align 8, !tbaa !49
  br label %771

771:                                              ; preds = %843, %767
  %772 = phi i32 [ 0, %767 ], [ %823, %843 ]
  %773 = load i32, ptr %457, align 8, !tbaa !34
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %775, label %822

775:                                              ; preds = %771
  %776 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %776, label %854 [
    i32 0, label %777
    i32 -5, label %777
  ]

777:                                              ; preds = %775, %775
  %778 = load i32, ptr %456, align 8, !tbaa !24
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %780, label %818

780:                                              ; preds = %777
  %781 = load ptr, ptr %463, align 8, !tbaa !29
  %782 = load i32, ptr %459, align 8, !tbaa !27
  store i32 0, ptr %464, align 4, !tbaa !17
  %783 = tail call ptr @__errno_location() #16
  store i32 0, ptr %783, align 4, !tbaa !4
  br label %784

784:                                              ; preds = %795, %780
  %785 = phi i32 [ 0, %780 ], [ %796, %795 ]
  %786 = sub i32 %782, %785
  %787 = tail call i32 @llvm.umin.i32(i32 %786, i32 1073741824)
  %788 = load i32, ptr %465, align 4, !tbaa !46
  %789 = zext i32 %785 to i64
  %790 = getelementptr inbounds nuw i8, ptr %781, i64 %789
  %791 = zext nneg i32 %787 to i64
  %792 = tail call i64 @read(i32 noundef %788, ptr noundef %790, i64 noundef %791) #13
  %793 = trunc i64 %792 to i32
  %794 = icmp slt i32 %793, 1
  br i1 %794, label %798, label %795

795:                                              ; preds = %784
  %796 = add i32 %785, %793
  %797 = icmp ult i32 %796, %782
  br i1 %797, label %784, label %812, !llvm.loop !47

798:                                              ; preds = %784
  %799 = icmp slt i32 %793, 0
  br i1 %799, label %800, label %807

800:                                              ; preds = %798
  %801 = load i32, ptr %783, align 4, !tbaa !4
  %802 = icmp eq i32 %801, 11
  br i1 %802, label %803, label %808

803:                                              ; preds = %800
  store i32 1, ptr %464, align 4, !tbaa !17
  %804 = icmp eq i32 %785, 0
  br i1 %804, label %805, label %812

805:                                              ; preds = %803
  %806 = load i32, ptr %783, align 4, !tbaa !4
  br label %808

807:                                              ; preds = %798
  store i32 1, ptr %456, align 8, !tbaa !24
  br label %812

808:                                              ; preds = %805, %800
  %809 = phi i32 [ %806, %805 ], [ %801, %800 ]
  %810 = tail call ptr @strerror(i32 noundef %809) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %810) #13
  %811 = load i32, ptr %11, align 8, !tbaa !16
  br label %854

812:                                              ; preds = %807, %803, %795
  %813 = phi i32 [ %785, %803 ], [ %785, %807 ], [ %796, %795 ]
  %814 = load i32, ptr %457, align 8, !tbaa !34
  %815 = add i32 %814, %813
  store i32 %815, ptr %457, align 8, !tbaa !34
  %816 = load ptr, ptr %463, align 8, !tbaa !29
  store ptr %816, ptr %462, align 8, !tbaa !35
  %817 = icmp eq i32 %815, 0
  br i1 %817, label %818, label %822

818:                                              ; preds = %812, %777
  %819 = load i32, ptr %464, align 4, !tbaa !17
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %821, label %854

821:                                              ; preds = %818
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %854

822:                                              ; preds = %812, %771
  %823 = tail call i32 @inflate(ptr noundef nonnull %462, i32 noundef 0) #13
  %824 = load i32, ptr %460, align 8, !tbaa !48
  %825 = icmp ult i32 %824, %769
  br i1 %825, label %826, label %827

826:                                              ; preds = %822
  store i32 0, ptr %466, align 4, !tbaa !33
  br label %827

827:                                              ; preds = %826, %822
  switch i32 %823, label %843 [
    i32 -2, label %828
    i32 2, label %828
    i32 -4, label %829
    i32 -3, label %830
  ]

828:                                              ; preds = %827, %827
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %854

829:                                              ; preds = %827
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %847

830:                                              ; preds = %827
  %831 = load i32, ptr %466, align 4, !tbaa !33
  %832 = icmp eq i32 %831, 1
  br i1 %832, label %833, label %839

833:                                              ; preds = %830
  store i32 0, ptr %457, align 8, !tbaa !34
  store i32 1, ptr %456, align 8, !tbaa !24
  store i32 0, ptr %458, align 8, !tbaa !26
  %834 = sub i32 %769, %824
  store i32 %834, ptr %3, align 8, !tbaa !19
  %835 = load ptr, ptr %461, align 8, !tbaa !49
  %836 = zext i32 %834 to i64
  %837 = sub nsw i64 0, %836
  %838 = getelementptr inbounds i8, ptr %835, i64 %837
  store ptr %838, ptr %455, align 8, !tbaa !20
  br label %864

839:                                              ; preds = %830
  %840 = load ptr, ptr %467, align 8, !tbaa !50
  %841 = icmp eq ptr %840, null
  %842 = select i1 %841, ptr @.str.6, ptr %840
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %842) #13
  br label %847

843:                                              ; preds = %827
  %844 = icmp ne i32 %824, 0
  %845 = icmp ne i32 %823, 1
  %846 = select i1 %844, i1 %845, i1 false
  br i1 %846, label %771, label %854, !llvm.loop !51

847:                                              ; preds = %839, %829
  %848 = load i32, ptr %460, align 8, !tbaa !48
  %849 = sub i32 %769, %848
  store i32 %849, ptr %3, align 8, !tbaa !19
  %850 = load ptr, ptr %461, align 8, !tbaa !49
  %851 = zext i32 %849 to i64
  %852 = sub nsw i64 0, %851
  %853 = getelementptr inbounds i8, ptr %850, i64 %852
  store ptr %853, ptr %455, align 8, !tbaa !20
  br label %877

854:                                              ; preds = %843, %828, %821, %818, %808, %775
  %855 = phi i32 [ %811, %808 ], [ %772, %818 ], [ %772, %821 ], [ %823, %828 ], [ %776, %775 ], [ %823, %843 ]
  %856 = load i32, ptr %460, align 8, !tbaa !48
  %857 = sub i32 %769, %856
  store i32 %857, ptr %3, align 8, !tbaa !19
  %858 = load ptr, ptr %461, align 8, !tbaa !49
  %859 = zext i32 %857 to i64
  %860 = sub nsw i64 0, %859
  %861 = getelementptr inbounds i8, ptr %858, i64 %860
  store ptr %861, ptr %455, align 8, !tbaa !20
  switch i32 %855, label %877 [
    i32 1, label %862
    i32 0, label %864
  ]

862:                                              ; preds = %854
  store i32 0, ptr %466, align 4, !tbaa !33
  store i32 0, ptr %458, align 8, !tbaa !26
  br label %864

863:                                              ; preds = %506
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %877

864:                                              ; preds = %862, %854, %833, %728, %722
  %865 = load i32, ptr %3, align 8, !tbaa !19
  br label %866

866:                                              ; preds = %864, %724
  %867 = phi i32 [ %865, %864 ], [ %727, %724 ]
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %869, label %1024

869:                                              ; preds = %866
  %870 = load i32, ptr %456, align 8, !tbaa !24
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %875, label %872

872:                                              ; preds = %869
  %873 = load i32, ptr %457, align 8, !tbaa !34
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %1024, label %875

875:                                              ; preds = %872, %869
  %876 = load i32, ptr %458, align 8, !tbaa !26
  br label %506, !llvm.loop !52

877:                                              ; preds = %863, %854, %847, %762, %688, %541, %527, %522
  %878 = load i32, ptr %3, align 8, !tbaa !19
  %879 = icmp eq i32 %878, 0
  %880 = sext i1 %879 to i32
  br label %1024

881:                                              ; preds = %501
  %882 = icmp eq i32 %499, 1
  br i1 %882, label %883, label %912

883:                                              ; preds = %881
  store i32 0, ptr %464, align 4, !tbaa !17
  %884 = tail call ptr @__errno_location() #16
  store i32 0, ptr %884, align 4, !tbaa !4
  br label %885

885:                                              ; preds = %896, %883
  %886 = phi i32 [ 0, %883 ], [ %897, %896 ]
  %887 = sub i32 %478, %886
  %888 = tail call i32 @llvm.umin.i32(i32 %887, i32 1073741824)
  %889 = load i32, ptr %465, align 4, !tbaa !46
  %890 = zext i32 %886 to i64
  %891 = getelementptr inbounds nuw i8, ptr %474, i64 %890
  %892 = zext nneg i32 %888 to i64
  %893 = tail call i64 @read(i32 noundef %889, ptr noundef %891, i64 noundef %892) #13
  %894 = trunc i64 %893 to i32
  %895 = icmp slt i32 %894, 1
  br i1 %895, label %899, label %896

896:                                              ; preds = %885
  %897 = add i32 %886, %894
  %898 = icmp ult i32 %897, %478
  br i1 %898, label %885, label %1010, !llvm.loop !47

899:                                              ; preds = %885
  %900 = icmp slt i32 %894, 0
  br i1 %900, label %901, label %911

901:                                              ; preds = %899
  %902 = load i32, ptr %884, align 4, !tbaa !4
  %903 = icmp eq i32 %902, 11
  br i1 %903, label %904, label %908

904:                                              ; preds = %901
  store i32 1, ptr %464, align 4, !tbaa !17
  %905 = icmp eq i32 %886, 0
  br i1 %905, label %906, label %1012

906:                                              ; preds = %904
  %907 = load i32, ptr %884, align 4, !tbaa !4
  br label %908

908:                                              ; preds = %906, %901
  %909 = phi i32 [ %907, %906 ], [ %902, %901 ]
  %910 = tail call ptr @strerror(i32 noundef %909) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %910) #13
  br label %1012

911:                                              ; preds = %899
  store i32 1, ptr %456, align 8, !tbaa !24
  br label %1012

912:                                              ; preds = %881
  store i32 %478, ptr %460, align 8, !tbaa !58
  store ptr %474, ptr %461, align 8, !tbaa !59
  br label %913

913:                                              ; preds = %980, %912
  %914 = phi i32 [ 0, %912 ], [ %965, %980 ]
  %915 = load i32, ptr %457, align 8, !tbaa !34
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %917, label %964

917:                                              ; preds = %913
  %918 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %918, label %992 [
    i32 0, label %919
    i32 -5, label %919
  ]

919:                                              ; preds = %917, %917
  %920 = load i32, ptr %456, align 8, !tbaa !24
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %922, label %960

922:                                              ; preds = %919
  %923 = load ptr, ptr %463, align 8, !tbaa !29
  %924 = load i32, ptr %459, align 8, !tbaa !27
  store i32 0, ptr %464, align 4, !tbaa !17
  %925 = tail call ptr @__errno_location() #16
  store i32 0, ptr %925, align 4, !tbaa !4
  br label %926

926:                                              ; preds = %937, %922
  %927 = phi i32 [ 0, %922 ], [ %938, %937 ]
  %928 = sub i32 %924, %927
  %929 = tail call i32 @llvm.umin.i32(i32 %928, i32 1073741824)
  %930 = load i32, ptr %465, align 4, !tbaa !46
  %931 = zext i32 %927 to i64
  %932 = getelementptr inbounds nuw i8, ptr %923, i64 %931
  %933 = zext nneg i32 %929 to i64
  %934 = tail call i64 @read(i32 noundef %930, ptr noundef %932, i64 noundef %933) #13
  %935 = trunc i64 %934 to i32
  %936 = icmp slt i32 %935, 1
  br i1 %936, label %940, label %937

937:                                              ; preds = %926
  %938 = add i32 %927, %935
  %939 = icmp ult i32 %938, %924
  br i1 %939, label %926, label %954, !llvm.loop !47

940:                                              ; preds = %926
  %941 = icmp slt i32 %935, 0
  br i1 %941, label %942, label %949

942:                                              ; preds = %940
  %943 = load i32, ptr %925, align 4, !tbaa !4
  %944 = icmp eq i32 %943, 11
  br i1 %944, label %945, label %950

945:                                              ; preds = %942
  store i32 1, ptr %464, align 4, !tbaa !17
  %946 = icmp eq i32 %927, 0
  br i1 %946, label %947, label %954

947:                                              ; preds = %945
  %948 = load i32, ptr %925, align 4, !tbaa !4
  br label %950

949:                                              ; preds = %940
  store i32 1, ptr %456, align 8, !tbaa !24
  br label %954

950:                                              ; preds = %947, %942
  %951 = phi i32 [ %948, %947 ], [ %943, %942 ]
  %952 = tail call ptr @strerror(i32 noundef %951) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %952) #13
  %953 = load i32, ptr %11, align 8, !tbaa !16
  br label %992

954:                                              ; preds = %949, %945, %937
  %955 = phi i32 [ %927, %945 ], [ %927, %949 ], [ %938, %937 ]
  %956 = load i32, ptr %457, align 8, !tbaa !34
  %957 = add i32 %956, %955
  store i32 %957, ptr %457, align 8, !tbaa !34
  %958 = load ptr, ptr %463, align 8, !tbaa !29
  store ptr %958, ptr %462, align 8, !tbaa !35
  %959 = icmp eq i32 %957, 0
  br i1 %959, label %960, label %964

960:                                              ; preds = %954, %919
  %961 = load i32, ptr %464, align 4, !tbaa !17
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %963, label %992

963:                                              ; preds = %960
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %992

964:                                              ; preds = %954, %913
  %965 = tail call i32 @inflate(ptr noundef nonnull %462, i32 noundef 0) #13
  %966 = load i32, ptr %460, align 8, !tbaa !48
  %967 = icmp ult i32 %966, %478
  br i1 %967, label %968, label %969

968:                                              ; preds = %964
  store i32 0, ptr %466, align 4, !tbaa !33
  br label %969

969:                                              ; preds = %968, %964
  switch i32 %965, label %980 [
    i32 -2, label %970
    i32 2, label %970
    i32 -4, label %971
    i32 -3, label %972
  ]

970:                                              ; preds = %969, %969
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %992

971:                                              ; preds = %969
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %984

972:                                              ; preds = %969
  %973 = load i32, ptr %466, align 4, !tbaa !33
  %974 = icmp eq i32 %973, 1
  br i1 %974, label %975, label %976

975:                                              ; preds = %972
  store i32 0, ptr %457, align 8, !tbaa !34
  store i32 1, ptr %456, align 8, !tbaa !24
  store i32 0, ptr %458, align 8, !tbaa !26
  br label %984

976:                                              ; preds = %972
  %977 = load ptr, ptr %467, align 8, !tbaa !50
  %978 = icmp eq ptr %977, null
  %979 = select i1 %978, ptr @.str.6, ptr %977
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %979) #13
  br label %984

980:                                              ; preds = %969
  %981 = icmp ne i32 %966, 0
  %982 = icmp ne i32 %965, 1
  %983 = select i1 %981, i1 %982, i1 false
  br i1 %983, label %913, label %992, !llvm.loop !51

984:                                              ; preds = %976, %975, %971
  %985 = phi i32 [ -3, %976 ], [ 0, %975 ], [ -4, %971 ]
  %986 = load i32, ptr %460, align 8, !tbaa !48
  %987 = sub i32 %478, %986
  %988 = load ptr, ptr %461, align 8, !tbaa !49
  %989 = zext i32 %987 to i64
  %990 = sub nsw i64 0, %989
  %991 = getelementptr inbounds i8, ptr %988, i64 %990
  store ptr %991, ptr %455, align 8, !tbaa !20
  br label %1002

992:                                              ; preds = %980, %970, %963, %960, %950, %917
  %993 = phi i32 [ %953, %950 ], [ %914, %960 ], [ %914, %963 ], [ %965, %970 ], [ %918, %917 ], [ %965, %980 ]
  %994 = load i32, ptr %460, align 8, !tbaa !48
  %995 = sub i32 %478, %994
  %996 = load ptr, ptr %461, align 8, !tbaa !49
  %997 = zext i32 %995 to i64
  %998 = sub nsw i64 0, %997
  %999 = getelementptr inbounds i8, ptr %996, i64 %998
  store ptr %999, ptr %455, align 8, !tbaa !20
  %1000 = icmp eq i32 %993, 1
  br i1 %1000, label %1001, label %1002

1001:                                             ; preds = %992
  store i32 0, ptr %466, align 4, !tbaa !33
  store i32 0, ptr %458, align 8, !tbaa !26
  br label %1007

1002:                                             ; preds = %992, %984
  %1003 = phi i64 [ %989, %984 ], [ %997, %992 ]
  %1004 = phi i32 [ %985, %984 ], [ %993, %992 ]
  %1005 = icmp ne i32 %1004, 0
  %1006 = sext i1 %1005 to i32
  br label %1007

1007:                                             ; preds = %1002, %1001
  %1008 = phi i64 [ %997, %1001 ], [ %1003, %1002 ]
  %1009 = phi i32 [ 0, %1001 ], [ %1006, %1002 ]
  store i32 0, ptr %3, align 8, !tbaa !19
  br label %1012

1010:                                             ; preds = %896
  %1011 = zext i32 %897 to i64
  br label %1012

1012:                                             ; preds = %1010, %1007, %911, %908, %904, %481
  %1013 = phi i64 [ %1011, %1010 ], [ %890, %911 ], [ %890, %908 ], [ %890, %904 ], [ %484, %481 ], [ %1008, %1007 ]
  %1014 = phi i32 [ 0, %1010 ], [ 0, %911 ], [ -1, %908 ], [ 0, %904 ], [ %491, %481 ], [ %1009, %1007 ]
  %1015 = load i64, ptr %468, align 8, !tbaa !21
  %1016 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1015, i64 %1013), !nosanitize !22
  %1017 = extractvalue { i64, i1 } %1016, 1, !nosanitize !22
  br i1 %1017, label %1018, label %1019, !prof !23, !nosanitize !22

1018:                                             ; preds = %1012
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

1019:                                             ; preds = %1012
  %1020 = extractvalue { i64, i1 } %1016, 0, !nosanitize !22
  %1021 = add i64 %1013, %476
  %1022 = getelementptr inbounds nuw i8, ptr %474, i64 %1013
  %1023 = sub i64 %475, %1013
  store i64 %1020, ptr %468, align 8, !tbaa !21
  br label %1024

1024:                                             ; preds = %1019, %877, %872, %866, %765, %728
  %1025 = phi ptr [ %1022, %1019 ], [ %474, %877 ], [ %474, %765 ], [ %474, %728 ], [ %474, %866 ], [ %474, %872 ]
  %1026 = phi i64 [ %1023, %1019 ], [ %475, %877 ], [ %475, %765 ], [ %475, %728 ], [ %475, %866 ], [ %475, %872 ]
  %1027 = phi i64 [ %1021, %1019 ], [ %476, %877 ], [ %476, %765 ], [ %476, %728 ], [ %476, %866 ], [ %476, %872 ]
  %1028 = phi i32 [ %1014, %1019 ], [ %880, %877 ], [ 0, %765 ], [ 0, %728 ], [ 0, %866 ], [ 0, %872 ]
  %1029 = icmp eq i64 %1026, 0
  br i1 %1029, label %1038, label %1030

1030:                                             ; preds = %1024
  %1031 = icmp eq i32 %1028, 0
  br i1 %1031, label %473, label %1032, !llvm.loop !60

1032:                                             ; preds = %1030
  %1033 = load i32, ptr %456, align 8, !tbaa !24
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1038, label %1035

1035:                                             ; preds = %1032, %495
  %1036 = phi i64 [ %1027, %1032 ], [ %476, %495 ]
  %1037 = getelementptr inbounds nuw i8, ptr %3, i64 92
  store i32 1, ptr %1037, align 4, !tbaa !61
  br label %1038

1038:                                             ; preds = %1035, %1032, %1024, %436, %427, %420, %334, %260, %113, %99, %94
  %1039 = phi i64 [ 0, %99 ], [ 0, %94 ], [ %1036, %1035 ], [ %1027, %1032 ], [ 0, %420 ], [ %1027, %1024 ], [ 0, %436 ], [ 0, %334 ], [ 0, %260 ], [ 0, %427 ], [ 0, %113 ]
  %1040 = udiv i64 %1039, %1
  br label %1041

1041:                                             ; preds = %1038, %24, %23, %13, %6, %4
  %1042 = phi i64 [ 0, %6 ], [ 0, %4 ], [ 0, %23 ], [ 0, %13 ], [ %1040, %1038 ], [ 0, %24 ]
  ret i64 %1042
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzgetc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1050, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1050

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
  br i1 %14, label %1050, label %15

15:                                               ; preds = %11, %8, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %16 = load i32, ptr %0, align 8, !tbaa !19
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %15
  %19 = add i32 %16, -1
  store i32 %19, ptr %0, align 8, !tbaa !19
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = load i64, ptr %20, align 8, !tbaa !21
  %22 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %21, i64 1), !nosanitize !22
  %23 = extractvalue { i64, i1 } %22, 1, !nosanitize !22
  br i1 %23, label %24, label %25, !prof !23, !nosanitize !22

24:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

25:                                               ; preds = %18
  %26 = extractvalue { i64, i1 } %22, 0, !nosanitize !22
  store i64 %26, ptr %20, align 8, !tbaa !21
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load ptr, ptr %27, align 8, !tbaa !20
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 1
  store ptr %29, ptr %27, align 8, !tbaa !20
  %30 = load i8, ptr %28, align 1, !tbaa !36
  %31 = zext i8 %30 to i32
  br label %1050

32:                                               ; preds = %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %34 = load i64, ptr %33, align 8, !tbaa !18
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %460, label %36

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
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %54

54:                                               ; preds = %457, %36
  %55 = phi i64 [ %458, %457 ], [ %34, %36 ]
  %56 = load i32, ptr %0, align 8, !tbaa !19
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %77, label %58

58:                                               ; preds = %54
  %59 = zext i32 %56 to i64
  %60 = tail call i64 @llvm.smin.i64(i64 %55, i64 %59)
  %61 = trunc i64 %60 to i32
  %62 = sub i32 %56, %61
  store i32 %62, ptr %0, align 8, !tbaa !19
  %63 = load ptr, ptr %37, align 8, !tbaa !20
  %64 = and i64 %60, 4294967295
  %65 = getelementptr inbounds nuw i8, ptr %63, i64 %64
  store ptr %65, ptr %37, align 8, !tbaa !20
  %66 = load i64, ptr %38, align 8, !tbaa !21
  %67 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %66, i64 %64), !nosanitize !22
  %68 = extractvalue { i64, i1 } %67, 1, !nosanitize !22
  br i1 %68, label %69, label %70, !prof !23, !nosanitize !22

69:                                               ; preds = %58
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

70:                                               ; preds = %58
  %71 = extractvalue { i64, i1 } %67, 0, !nosanitize !22
  store i64 %71, ptr %38, align 8, !tbaa !21
  %72 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %55, i64 %64), !nosanitize !22
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !22
  br i1 %73, label %74, label %75, !prof !23, !nosanitize !22

74:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !22
  unreachable, !nosanitize !22

75:                                               ; preds = %70
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !22
  store i64 %76, ptr %33, align 8, !tbaa !18
  br label %457

77:                                               ; preds = %54
  %78 = load i32, ptr %39, align 8, !tbaa !24
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr %40, align 8, !tbaa !25
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %460, label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %454, %83
  %85 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %85, label %442 [
    i32 0, label %86
    i32 1, label %309
    i32 2, label %345
  ]

86:                                               ; preds = %84
  %87 = load i32, ptr %42, align 8, !tbaa !27
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %86
  %90 = load i32, ptr %51, align 4, !tbaa !28
  %91 = zext i32 %90 to i64
  %92 = tail call noalias ptr @malloc(i64 noundef %91) #15
  store ptr %92, ptr %47, align 8, !tbaa !29
  %93 = load i32, ptr %51, align 4, !tbaa !28
  %94 = shl i32 %93, 1
  %95 = zext i32 %94 to i64
  %96 = tail call noalias ptr @malloc(i64 noundef %95) #15
  store ptr %96, ptr %44, align 8, !tbaa !30
  %97 = icmp eq ptr %92, null
  %98 = icmp eq ptr %96, null
  %99 = or i1 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  tail call void @free(ptr noundef %96) #13
  tail call void @free(ptr noundef %92) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1049

101:                                              ; preds = %89
  %102 = load i32, ptr %51, align 4, !tbaa !28
  store i32 %102, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %40, align 8, !tbaa !25
  store ptr null, ptr %46, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  %103 = tail call i32 @inflateInit2_(ptr noundef nonnull %46, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %44, align 8, !tbaa !30
  tail call void @free(ptr noundef %106) #13
  %107 = load ptr, ptr %47, align 8, !tbaa !29
  tail call void @free(ptr noundef %107) #13
  store i32 0, ptr %42, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1049

108:                                              ; preds = %101, %86
  %109 = load i32, ptr %53, align 8, !tbaa !32
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, ptr %50, align 4, !tbaa !33
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111, %108
  %115 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  %116 = load i32, ptr %50, align 4, !tbaa !33
  %117 = icmp ne i32 %116, -1
  %118 = zext i1 %117 to i32
  store i32 %118, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %53, align 8, !tbaa !32
  br label %306

119:                                              ; preds = %111
  %120 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %120, label %1049 [
    i32 0, label %121
    i32 -5, label %121
  ]

121:                                              ; preds = %119, %119
  %122 = load i32, ptr %39, align 8, !tbaa !24
  %123 = icmp eq i32 %122, 0
  %124 = load i32, ptr %40, align 8, !tbaa !34
  br i1 %123, label %125, label %274

125:                                              ; preds = %121
  %126 = icmp eq i32 %124, 0
  %127 = load ptr, ptr %47, align 8, !tbaa !29
  %128 = ptrtoaddr ptr %127 to i64
  br i1 %126, label %234, label %129

129:                                              ; preds = %125
  %130 = load ptr, ptr %46, align 8, !tbaa !35
  %131 = icmp eq ptr %130, %127
  br i1 %131, label %234, label %132

132:                                              ; preds = %129
  %133 = ptrtoaddr ptr %130 to i64
  %134 = zext i32 %124 to i64
  %135 = icmp ult i32 %124, 4
  %136 = sub i64 %128, %133
  %137 = icmp ult i64 %136, 32
  %138 = select i1 %135, i1 true, i1 %137
  br i1 %138, label %178, label %139

139:                                              ; preds = %132
  %140 = icmp ult i32 %124, 32
  br i1 %140, label %162, label %141

141:                                              ; preds = %139
  %142 = and i64 %134, 28
  %143 = and i64 %134, 4294967264
  %144 = getelementptr i8, ptr %127, i64 %143
  %145 = getelementptr i8, ptr %130, i64 %143
  %146 = trunc nuw i64 %143 to i32
  %147 = sub i32 %124, %146
  br label %148

148:                                              ; preds = %148, %141
  %149 = phi i64 [ 0, %141 ], [ %156, %148 ]
  %150 = getelementptr i8, ptr %127, i64 %149
  %151 = getelementptr i8, ptr %130, i64 %149
  %152 = getelementptr i8, ptr %151, i64 16
  %153 = load <16 x i8>, ptr %151, align 1, !tbaa !36
  %154 = load <16 x i8>, ptr %152, align 1, !tbaa !36
  %155 = getelementptr i8, ptr %150, i64 16
  store <16 x i8> %153, ptr %150, align 1, !tbaa !36
  store <16 x i8> %154, ptr %155, align 1, !tbaa !36
  %156 = add nuw i64 %149, 32
  %157 = icmp eq i64 %156, %143
  br i1 %157, label %158, label %148, !llvm.loop !70

158:                                              ; preds = %148
  %159 = icmp eq i64 %143, %134
  br i1 %159, label %231, label %160

160:                                              ; preds = %158
  %161 = icmp eq i64 %142, 0
  br i1 %161, label %178, label %162, !prof !41

162:                                              ; preds = %160, %139
  %163 = phi i64 [ %143, %160 ], [ 0, %139 ]
  %164 = and i64 %134, 4294967292
  %165 = getelementptr i8, ptr %127, i64 %164
  %166 = getelementptr i8, ptr %130, i64 %164
  %167 = trunc nuw i64 %164 to i32
  %168 = sub i32 %124, %167
  br label %169

169:                                              ; preds = %169, %162
  %170 = phi i64 [ %163, %162 ], [ %174, %169 ]
  %171 = getelementptr i8, ptr %127, i64 %170
  %172 = getelementptr i8, ptr %130, i64 %170
  %173 = load <4 x i8>, ptr %172, align 1, !tbaa !36
  store <4 x i8> %173, ptr %171, align 1, !tbaa !36
  %174 = add nuw i64 %170, 4
  %175 = icmp eq i64 %174, %164
  br i1 %175, label %176, label %169, !llvm.loop !71

176:                                              ; preds = %169
  %177 = icmp eq i64 %164, %134
  br i1 %177, label %231, label %178

178:                                              ; preds = %176, %160, %132
  %179 = phi ptr [ %127, %132 ], [ %144, %160 ], [ %165, %176 ]
  %180 = phi ptr [ %130, %132 ], [ %145, %160 ], [ %166, %176 ]
  %181 = phi i32 [ %124, %132 ], [ %147, %160 ], [ %168, %176 ]
  %182 = add i32 %181, -1
  %183 = and i32 %181, 7
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %196, label %185

185:                                              ; preds = %185, %178
  %186 = phi ptr [ %192, %185 ], [ %179, %178 ]
  %187 = phi ptr [ %190, %185 ], [ %180, %178 ]
  %188 = phi i32 [ %193, %185 ], [ %181, %178 ]
  %189 = phi i32 [ %194, %185 ], [ 0, %178 ]
  %190 = getelementptr inbounds nuw i8, ptr %187, i64 1
  %191 = load i8, ptr %187, align 1, !tbaa !36
  %192 = getelementptr inbounds nuw i8, ptr %186, i64 1
  store i8 %191, ptr %186, align 1, !tbaa !36
  %193 = add i32 %188, -1
  %194 = add i32 %189, 1
  %195 = icmp eq i32 %194, %183
  br i1 %195, label %196, label %185, !llvm.loop !72

196:                                              ; preds = %185, %178
  %197 = phi ptr [ %179, %178 ], [ %192, %185 ]
  %198 = phi ptr [ %180, %178 ], [ %190, %185 ]
  %199 = phi i32 [ %181, %178 ], [ %193, %185 ]
  %200 = icmp ult i32 %182, 7
  br i1 %200, label %231, label %201

201:                                              ; preds = %201, %196
  %202 = phi ptr [ %228, %201 ], [ %197, %196 ]
  %203 = phi ptr [ %226, %201 ], [ %198, %196 ]
  %204 = phi i32 [ %229, %201 ], [ %199, %196 ]
  %205 = getelementptr inbounds nuw i8, ptr %203, i64 1
  %206 = load i8, ptr %203, align 1, !tbaa !36
  %207 = getelementptr inbounds nuw i8, ptr %202, i64 1
  store i8 %206, ptr %202, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %203, i64 2
  %209 = load i8, ptr %205, align 1, !tbaa !36
  %210 = getelementptr inbounds nuw i8, ptr %202, i64 2
  store i8 %209, ptr %207, align 1, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %203, i64 3
  %212 = load i8, ptr %208, align 1, !tbaa !36
  %213 = getelementptr inbounds nuw i8, ptr %202, i64 3
  store i8 %212, ptr %210, align 1, !tbaa !36
  %214 = getelementptr inbounds nuw i8, ptr %203, i64 4
  %215 = load i8, ptr %211, align 1, !tbaa !36
  %216 = getelementptr inbounds nuw i8, ptr %202, i64 4
  store i8 %215, ptr %213, align 1, !tbaa !36
  %217 = getelementptr inbounds nuw i8, ptr %203, i64 5
  %218 = load i8, ptr %214, align 1, !tbaa !36
  %219 = getelementptr inbounds nuw i8, ptr %202, i64 5
  store i8 %218, ptr %216, align 1, !tbaa !36
  %220 = getelementptr inbounds nuw i8, ptr %203, i64 6
  %221 = load i8, ptr %217, align 1, !tbaa !36
  %222 = getelementptr inbounds nuw i8, ptr %202, i64 6
  store i8 %221, ptr %219, align 1, !tbaa !36
  %223 = getelementptr inbounds nuw i8, ptr %203, i64 7
  %224 = load i8, ptr %220, align 1, !tbaa !36
  %225 = getelementptr inbounds nuw i8, ptr %202, i64 7
  store i8 %224, ptr %222, align 1, !tbaa !36
  %226 = getelementptr inbounds nuw i8, ptr %203, i64 8
  %227 = load i8, ptr %223, align 1, !tbaa !36
  %228 = getelementptr inbounds nuw i8, ptr %202, i64 8
  store i8 %227, ptr %225, align 1, !tbaa !36
  %229 = add i32 %204, -8
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %201, !llvm.loop !73

231:                                              ; preds = %201, %196, %176, %158
  %232 = load i32, ptr %40, align 8, !tbaa !34
  %233 = load ptr, ptr %47, align 8, !tbaa !29
  br label %234

234:                                              ; preds = %231, %129, %125
  %235 = phi ptr [ %233, %231 ], [ %127, %129 ], [ %127, %125 ]
  %236 = phi i32 [ %232, %231 ], [ %124, %129 ], [ 0, %125 ]
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds nuw i8, ptr %235, i64 %237
  %239 = load i32, ptr %42, align 8, !tbaa !27
  %240 = sub i32 %239, %236
  store i32 0, ptr %48, align 4, !tbaa !17
  %241 = tail call ptr @__errno_location() #16
  store i32 0, ptr %241, align 4, !tbaa !4
  br label %242

242:                                              ; preds = %253, %234
  %243 = phi i32 [ 0, %234 ], [ %254, %253 ]
  %244 = sub i32 %240, %243
  %245 = tail call i32 @llvm.umin.i32(i32 %244, i32 1073741824)
  %246 = load i32, ptr %49, align 4, !tbaa !46
  %247 = zext i32 %243 to i64
  %248 = getelementptr inbounds nuw i8, ptr %238, i64 %247
  %249 = zext nneg i32 %245 to i64
  %250 = tail call i64 @read(i32 noundef %246, ptr noundef %248, i64 noundef %249) #13
  %251 = trunc i64 %250 to i32
  %252 = icmp slt i32 %251, 1
  br i1 %252, label %256, label %253

253:                                              ; preds = %242
  %254 = add i32 %243, %251
  %255 = icmp ult i32 %254, %240
  br i1 %255, label %242, label %269, !llvm.loop !47

256:                                              ; preds = %242
  %257 = icmp slt i32 %251, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %256
  %259 = load i32, ptr %241, align 4, !tbaa !4
  %260 = icmp eq i32 %259, 11
  br i1 %260, label %261, label %266

261:                                              ; preds = %258
  store i32 1, ptr %48, align 4, !tbaa !17
  %262 = icmp eq i32 %243, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %261
  %264 = load i32, ptr %241, align 4, !tbaa !4
  br label %266

265:                                              ; preds = %256
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %269

266:                                              ; preds = %263, %258
  %267 = phi i32 [ %264, %263 ], [ %259, %258 ]
  %268 = tail call ptr @strerror(i32 noundef %267) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %268) #13
  br label %1049

269:                                              ; preds = %265, %261, %253
  %270 = phi i32 [ %243, %261 ], [ %243, %265 ], [ %254, %253 ]
  %271 = load i32, ptr %40, align 8, !tbaa !34
  %272 = add i32 %271, %270
  store i32 %272, ptr %40, align 8, !tbaa !34
  %273 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %273, ptr %46, align 8, !tbaa !35
  br label %274

274:                                              ; preds = %269, %121
  %275 = phi i32 [ %272, %269 ], [ %124, %121 ]
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %306, label %277

277:                                              ; preds = %274
  %278 = load i32, ptr %48, align 4, !tbaa !17
  %279 = icmp ne i32 %278, 0
  %280 = icmp ult i32 %275, 4
  %281 = and i1 %280, %279
  br i1 %281, label %306, label %282

282:                                              ; preds = %277
  %283 = icmp ugt i32 %275, 3
  %284 = load ptr, ptr %46, align 8, !tbaa !35
  br i1 %283, label %285, label %302

285:                                              ; preds = %282
  %286 = load i8, ptr %284, align 1, !tbaa !36
  %287 = icmp eq i8 %286, 31
  br i1 %287, label %288, label %302

288:                                              ; preds = %285
  %289 = getelementptr inbounds nuw i8, ptr %284, i64 1
  %290 = load i8, ptr %289, align 1, !tbaa !36
  %291 = icmp eq i8 %290, -117
  br i1 %291, label %292, label %302

292:                                              ; preds = %288
  %293 = getelementptr inbounds nuw i8, ptr %284, i64 2
  %294 = load i8, ptr %293, align 1, !tbaa !36
  %295 = icmp eq i8 %294, 8
  br i1 %295, label %296, label %302

296:                                              ; preds = %292
  %297 = getelementptr inbounds nuw i8, ptr %284, i64 3
  %298 = load i8, ptr %297, align 1, !tbaa !36
  %299 = icmp ult i8 %298, 32
  br i1 %299, label %300, label %302

300:                                              ; preds = %296
  %301 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  store i32 1, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %53, align 8, !tbaa !32
  br label %443

302:                                              ; preds = %296, %292, %288, %285, %282
  %303 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %303, ptr %37, align 8, !tbaa !20
  %304 = zext i32 %275 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %303, ptr align 1 %284, i64 %304, i1 false)
  %305 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %305, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %445

306:                                              ; preds = %277, %274, %114
  %307 = load i32, ptr %41, align 8, !tbaa !26
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %455, label %443

309:                                              ; preds = %84
  %310 = load ptr, ptr %44, align 8, !tbaa !30
  %311 = load i32, ptr %42, align 8, !tbaa !27
  %312 = shl i32 %311, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %313 = tail call ptr @__errno_location() #16
  store i32 0, ptr %313, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %314

314:                                              ; preds = %325, %309
  %315 = phi i32 [ %327, %325 ], [ 0, %309 ]
  %316 = sub i32 %312, %315
  %317 = tail call i32 @llvm.umin.i32(i32 %316, i32 1073741824)
  %318 = load i32, ptr %49, align 4, !tbaa !46
  %319 = zext i32 %315 to i64
  %320 = getelementptr inbounds nuw i8, ptr %310, i64 %319
  %321 = zext nneg i32 %317 to i64
  %322 = tail call i64 @read(i32 noundef %318, ptr noundef %320, i64 noundef %321) #13
  %323 = trunc i64 %322 to i32
  %324 = icmp slt i32 %323, 1
  br i1 %324, label %329, label %325

325:                                              ; preds = %314
  %326 = load i32, ptr %0, align 4, !tbaa !4
  %327 = add i32 %326, %323
  store i32 %327, ptr %0, align 4, !tbaa !4
  %328 = icmp ult i32 %327, %312
  br i1 %328, label %314, label %343, !llvm.loop !47

329:                                              ; preds = %314
  %330 = icmp slt i32 %323, 0
  br i1 %330, label %331, label %339

331:                                              ; preds = %329
  %332 = load i32, ptr %313, align 4, !tbaa !4
  %333 = icmp eq i32 %332, 11
  br i1 %333, label %334, label %340

334:                                              ; preds = %331
  store i32 1, ptr %48, align 4, !tbaa !17
  %335 = load i32, ptr %0, align 4, !tbaa !4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %343

337:                                              ; preds = %334
  %338 = load i32, ptr %313, align 4, !tbaa !4
  br label %340

339:                                              ; preds = %329
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %343

340:                                              ; preds = %337, %331
  %341 = phi i32 [ %338, %337 ], [ %332, %331 ]
  %342 = tail call ptr @strerror(i32 noundef %341) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %342) #13
  br label %1049

343:                                              ; preds = %339, %334, %325
  %344 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %344, ptr %37, align 8, !tbaa !20
  br label %455

345:                                              ; preds = %84
  %346 = load i32, ptr %42, align 8, !tbaa !27
  %347 = shl i32 %346, 1
  store i32 %347, ptr %43, align 8, !tbaa !48
  %348 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %348, ptr %45, align 8, !tbaa !49
  br label %349

349:                                              ; preds = %422, %345
  %350 = phi i32 [ 0, %345 ], [ %401, %422 ]
  %351 = load i32, ptr %40, align 8, !tbaa !34
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %400

353:                                              ; preds = %349
  %354 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %354, label %433 [
    i32 0, label %355
    i32 -5, label %355
  ]

355:                                              ; preds = %353, %353
  %356 = load i32, ptr %39, align 8, !tbaa !24
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %396

358:                                              ; preds = %355
  %359 = load ptr, ptr %47, align 8, !tbaa !29
  %360 = load i32, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %48, align 4, !tbaa !17
  %361 = tail call ptr @__errno_location() #16
  store i32 0, ptr %361, align 4, !tbaa !4
  br label %362

362:                                              ; preds = %373, %358
  %363 = phi i32 [ 0, %358 ], [ %374, %373 ]
  %364 = sub i32 %360, %363
  %365 = tail call i32 @llvm.umin.i32(i32 %364, i32 1073741824)
  %366 = load i32, ptr %49, align 4, !tbaa !46
  %367 = zext i32 %363 to i64
  %368 = getelementptr inbounds nuw i8, ptr %359, i64 %367
  %369 = zext nneg i32 %365 to i64
  %370 = tail call i64 @read(i32 noundef %366, ptr noundef %368, i64 noundef %369) #13
  %371 = trunc i64 %370 to i32
  %372 = icmp slt i32 %371, 1
  br i1 %372, label %376, label %373

373:                                              ; preds = %362
  %374 = add i32 %363, %371
  %375 = icmp ult i32 %374, %360
  br i1 %375, label %362, label %390, !llvm.loop !47

376:                                              ; preds = %362
  %377 = icmp slt i32 %371, 0
  br i1 %377, label %378, label %385

378:                                              ; preds = %376
  %379 = load i32, ptr %361, align 4, !tbaa !4
  %380 = icmp eq i32 %379, 11
  br i1 %380, label %381, label %386

381:                                              ; preds = %378
  store i32 1, ptr %48, align 4, !tbaa !17
  %382 = icmp eq i32 %363, 0
  br i1 %382, label %383, label %390

383:                                              ; preds = %381
  %384 = load i32, ptr %361, align 4, !tbaa !4
  br label %386

385:                                              ; preds = %376
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %390

386:                                              ; preds = %383, %378
  %387 = phi i32 [ %384, %383 ], [ %379, %378 ]
  %388 = tail call ptr @strerror(i32 noundef %387) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %388) #13
  %389 = load i32, ptr %9, align 8, !tbaa !16
  br label %433

390:                                              ; preds = %385, %381, %373
  %391 = phi i32 [ %363, %381 ], [ %363, %385 ], [ %374, %373 ]
  %392 = load i32, ptr %40, align 8, !tbaa !34
  %393 = add i32 %392, %391
  store i32 %393, ptr %40, align 8, !tbaa !34
  %394 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %394, ptr %46, align 8, !tbaa !35
  %395 = icmp eq i32 %393, 0
  br i1 %395, label %396, label %400

396:                                              ; preds = %390, %355
  %397 = load i32, ptr %48, align 4, !tbaa !17
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %433

399:                                              ; preds = %396
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %433

400:                                              ; preds = %390, %349
  %401 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %402 = load i32, ptr %43, align 8, !tbaa !48
  %403 = icmp ult i32 %402, %347
  br i1 %403, label %404, label %405

404:                                              ; preds = %400
  store i32 0, ptr %50, align 4, !tbaa !33
  br label %405

405:                                              ; preds = %404, %400
  switch i32 %401, label %422 [
    i32 -2, label %406
    i32 2, label %406
    i32 -4, label %407
    i32 -3, label %408
  ]

406:                                              ; preds = %405, %405
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %433

407:                                              ; preds = %405
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %426

408:                                              ; preds = %405
  %409 = load i32, ptr %50, align 4, !tbaa !33
  %410 = icmp eq i32 %409, 1
  br i1 %410, label %411, label %417

411:                                              ; preds = %408
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  %412 = sub i32 %347, %402
  store i32 %412, ptr %0, align 8, !tbaa !19
  %413 = load ptr, ptr %45, align 8, !tbaa !49
  %414 = zext i32 %412 to i64
  %415 = sub nsw i64 0, %414
  %416 = getelementptr inbounds i8, ptr %413, i64 %415
  store ptr %416, ptr %37, align 8, !tbaa !20
  br label %443

417:                                              ; preds = %408
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %419 = load ptr, ptr %418, align 8, !tbaa !50
  %420 = icmp eq ptr %419, null
  %421 = select i1 %420, ptr @.str.6, ptr %419
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %421) #13
  br label %426

422:                                              ; preds = %405
  %423 = icmp ne i32 %402, 0
  %424 = icmp ne i32 %401, 1
  %425 = select i1 %423, i1 %424, i1 false
  br i1 %425, label %349, label %433, !llvm.loop !51

426:                                              ; preds = %417, %407
  %427 = load i32, ptr %43, align 8, !tbaa !48
  %428 = sub i32 %347, %427
  store i32 %428, ptr %0, align 8, !tbaa !19
  %429 = load ptr, ptr %45, align 8, !tbaa !49
  %430 = zext i32 %428 to i64
  %431 = sub nsw i64 0, %430
  %432 = getelementptr inbounds i8, ptr %429, i64 %431
  store ptr %432, ptr %37, align 8, !tbaa !20
  br label %1049

433:                                              ; preds = %422, %406, %399, %396, %386, %353
  %434 = phi i32 [ %389, %386 ], [ %350, %396 ], [ %350, %399 ], [ %401, %406 ], [ %401, %422 ], [ %354, %353 ]
  %435 = load i32, ptr %43, align 8, !tbaa !48
  %436 = sub i32 %347, %435
  store i32 %436, ptr %0, align 8, !tbaa !19
  %437 = load ptr, ptr %45, align 8, !tbaa !49
  %438 = zext i32 %436 to i64
  %439 = sub nsw i64 0, %438
  %440 = getelementptr inbounds i8, ptr %437, i64 %439
  store ptr %440, ptr %37, align 8, !tbaa !20
  switch i32 %434, label %1049 [
    i32 1, label %441
    i32 0, label %443
  ]

441:                                              ; preds = %433
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %443

442:                                              ; preds = %84
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1049

443:                                              ; preds = %441, %433, %411, %306, %300
  %444 = load i32, ptr %0, align 8, !tbaa !19
  br label %445

445:                                              ; preds = %443, %302
  %446 = phi i32 [ %444, %443 ], [ %305, %302 ]
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %455

448:                                              ; preds = %445
  %449 = load i32, ptr %39, align 8, !tbaa !24
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %454, label %451

451:                                              ; preds = %448
  %452 = load i32, ptr %40, align 8, !tbaa !34
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %455, label %454

454:                                              ; preds = %451, %448
  br label %84, !llvm.loop !52

455:                                              ; preds = %451, %445, %343, %306
  %456 = load i64, ptr %33, align 8, !tbaa !18
  br label %457

457:                                              ; preds = %455, %75
  %458 = phi i64 [ %456, %455 ], [ %76, %75 ]
  %459 = icmp eq i64 %458, 0
  br i1 %459, label %460, label %54, !llvm.loop !53

460:                                              ; preds = %457, %80, %32
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %479

479:                                              ; preds = %1031, %460
  %480 = phi ptr [ %2, %460 ], [ %1035, %1031 ]
  %481 = phi i64 [ 1, %460 ], [ %1034, %1031 ]
  %482 = phi i64 [ 0, %460 ], [ %1033, %1031 ]
  %483 = call i64 @llvm.umin.i64(i64 %481, i64 4294967295)
  %484 = trunc nuw i64 %483 to i32
  %485 = load i32, ptr %0, align 8, !tbaa !19
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %498, label %487

487:                                              ; preds = %479
  %488 = call i32 @llvm.umin.i32(i32 %485, i32 %484)
  %489 = load ptr, ptr %461, align 8, !tbaa !20
  %490 = zext i32 %488 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %480, ptr align 1 %489, i64 %490, i1 false)
  %491 = load ptr, ptr %461, align 8, !tbaa !20
  %492 = getelementptr inbounds nuw i8, ptr %491, i64 %490
  store ptr %492, ptr %461, align 8, !tbaa !20
  %493 = load i32, ptr %0, align 8, !tbaa !19
  %494 = sub i32 %493, %488
  store i32 %494, ptr %0, align 8, !tbaa !19
  %495 = load i32, ptr %9, align 8, !tbaa !16
  %496 = icmp ne i32 %495, 0
  %497 = sext i1 %496 to i32
  br label %1018

498:                                              ; preds = %479
  %499 = load i32, ptr %462, align 8, !tbaa !24
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %504, label %501

501:                                              ; preds = %498
  %502 = load i32, ptr %463, align 8, !tbaa !25
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %1040, label %504

504:                                              ; preds = %501, %498
  %505 = load i32, ptr %464, align 8, !tbaa !26
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %511, label %507

507:                                              ; preds = %504
  %508 = load i32, ptr %465, align 8, !tbaa !27
  %509 = shl i32 %508, 1
  %510 = icmp ugt i32 %509, %484
  br i1 %510, label %511, label %887

511:                                              ; preds = %507, %504
  br label %512

512:                                              ; preds = %881, %511
  %513 = phi i32 [ %882, %881 ], [ %505, %511 ]
  switch i32 %513, label %869 [
    i32 0, label %514
    i32 1, label %737
    i32 2, label %773
  ]

514:                                              ; preds = %512
  %515 = load i32, ptr %465, align 8, !tbaa !27
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %536

517:                                              ; preds = %514
  %518 = load i32, ptr %476, align 4, !tbaa !28
  %519 = zext i32 %518 to i64
  %520 = call noalias ptr @malloc(i64 noundef %519) #15
  store ptr %520, ptr %469, align 8, !tbaa !29
  %521 = load i32, ptr %476, align 4, !tbaa !28
  %522 = shl i32 %521, 1
  %523 = zext i32 %522 to i64
  %524 = call noalias ptr @malloc(i64 noundef %523) #15
  store ptr %524, ptr %475, align 8, !tbaa !30
  %525 = icmp eq ptr %520, null
  %526 = icmp eq ptr %524, null
  %527 = or i1 %525, %526
  br i1 %527, label %528, label %529

528:                                              ; preds = %517
  call void @free(ptr noundef %524) #13
  call void @free(ptr noundef %520) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %883

529:                                              ; preds = %517
  %530 = load i32, ptr %476, align 4, !tbaa !28
  store i32 %530, ptr %465, align 8, !tbaa !27
  store i32 0, ptr %463, align 8, !tbaa !25
  store ptr null, ptr %468, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %477, i8 0, i64 24, i1 false)
  %531 = call i32 @inflateInit2_(ptr noundef nonnull %468, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %536, label %533

533:                                              ; preds = %529
  %534 = load ptr, ptr %475, align 8, !tbaa !30
  call void @free(ptr noundef %534) #13
  %535 = load ptr, ptr %469, align 8, !tbaa !29
  call void @free(ptr noundef %535) #13
  store i32 0, ptr %465, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %883

536:                                              ; preds = %529, %514
  %537 = load i32, ptr %478, align 8, !tbaa !32
  %538 = icmp eq i32 %537, -1
  br i1 %538, label %542, label %539

539:                                              ; preds = %536
  %540 = load i32, ptr %472, align 4, !tbaa !33
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %542, label %547

542:                                              ; preds = %539, %536
  %543 = call i32 @inflateReset(ptr noundef nonnull %468) #13
  store i32 2, ptr %464, align 8, !tbaa !26
  %544 = load i32, ptr %472, align 4, !tbaa !33
  %545 = icmp ne i32 %544, -1
  %546 = zext i1 %545 to i32
  store i32 %546, ptr %472, align 4, !tbaa !33
  store i32 0, ptr %478, align 8, !tbaa !32
  br label %734

547:                                              ; preds = %539
  %548 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %548, label %883 [
    i32 0, label %549
    i32 -5, label %549
  ]

549:                                              ; preds = %547, %547
  %550 = load i32, ptr %462, align 8, !tbaa !24
  %551 = icmp eq i32 %550, 0
  %552 = load i32, ptr %463, align 8, !tbaa !34
  br i1 %551, label %553, label %702

553:                                              ; preds = %549
  %554 = icmp eq i32 %552, 0
  %555 = load ptr, ptr %469, align 8, !tbaa !29
  %556 = ptrtoaddr ptr %555 to i64
  br i1 %554, label %662, label %557

557:                                              ; preds = %553
  %558 = load ptr, ptr %468, align 8, !tbaa !35
  %559 = icmp eq ptr %558, %555
  br i1 %559, label %662, label %560

560:                                              ; preds = %557
  %561 = ptrtoaddr ptr %558 to i64
  %562 = zext i32 %552 to i64
  %563 = icmp ult i32 %552, 4
  %564 = sub i64 %556, %561
  %565 = icmp ult i64 %564, 32
  %566 = select i1 %563, i1 true, i1 %565
  br i1 %566, label %606, label %567

567:                                              ; preds = %560
  %568 = icmp ult i32 %552, 32
  br i1 %568, label %590, label %569

569:                                              ; preds = %567
  %570 = and i64 %562, 28
  %571 = and i64 %562, 4294967264
  %572 = getelementptr i8, ptr %555, i64 %571
  %573 = getelementptr i8, ptr %558, i64 %571
  %574 = trunc nuw i64 %571 to i32
  %575 = sub i32 %552, %574
  br label %576

576:                                              ; preds = %576, %569
  %577 = phi i64 [ 0, %569 ], [ %584, %576 ]
  %578 = getelementptr i8, ptr %555, i64 %577
  %579 = getelementptr i8, ptr %558, i64 %577
  %580 = getelementptr i8, ptr %579, i64 16
  %581 = load <16 x i8>, ptr %579, align 1, !tbaa !36
  %582 = load <16 x i8>, ptr %580, align 1, !tbaa !36
  %583 = getelementptr i8, ptr %578, i64 16
  store <16 x i8> %581, ptr %578, align 1, !tbaa !36
  store <16 x i8> %582, ptr %583, align 1, !tbaa !36
  %584 = add nuw i64 %577, 32
  %585 = icmp eq i64 %584, %571
  br i1 %585, label %586, label %576, !llvm.loop !74

586:                                              ; preds = %576
  %587 = icmp eq i64 %571, %562
  br i1 %587, label %659, label %588

588:                                              ; preds = %586
  %589 = icmp eq i64 %570, 0
  br i1 %589, label %606, label %590, !prof !41

590:                                              ; preds = %588, %567
  %591 = phi i64 [ %571, %588 ], [ 0, %567 ]
  %592 = and i64 %562, 4294967292
  %593 = getelementptr i8, ptr %555, i64 %592
  %594 = getelementptr i8, ptr %558, i64 %592
  %595 = trunc nuw i64 %592 to i32
  %596 = sub i32 %552, %595
  br label %597

597:                                              ; preds = %597, %590
  %598 = phi i64 [ %591, %590 ], [ %602, %597 ]
  %599 = getelementptr i8, ptr %555, i64 %598
  %600 = getelementptr i8, ptr %558, i64 %598
  %601 = load <4 x i8>, ptr %600, align 1, !tbaa !36
  store <4 x i8> %601, ptr %599, align 1, !tbaa !36
  %602 = add nuw i64 %598, 4
  %603 = icmp eq i64 %602, %592
  br i1 %603, label %604, label %597, !llvm.loop !75

604:                                              ; preds = %597
  %605 = icmp eq i64 %592, %562
  br i1 %605, label %659, label %606

606:                                              ; preds = %604, %588, %560
  %607 = phi ptr [ %555, %560 ], [ %572, %588 ], [ %593, %604 ]
  %608 = phi ptr [ %558, %560 ], [ %573, %588 ], [ %594, %604 ]
  %609 = phi i32 [ %552, %560 ], [ %575, %588 ], [ %596, %604 ]
  %610 = add i32 %609, -1
  %611 = and i32 %609, 7
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %624, label %613

613:                                              ; preds = %613, %606
  %614 = phi ptr [ %620, %613 ], [ %607, %606 ]
  %615 = phi ptr [ %618, %613 ], [ %608, %606 ]
  %616 = phi i32 [ %621, %613 ], [ %609, %606 ]
  %617 = phi i32 [ %622, %613 ], [ 0, %606 ]
  %618 = getelementptr inbounds nuw i8, ptr %615, i64 1
  %619 = load i8, ptr %615, align 1, !tbaa !36
  %620 = getelementptr inbounds nuw i8, ptr %614, i64 1
  store i8 %619, ptr %614, align 1, !tbaa !36
  %621 = add i32 %616, -1
  %622 = add i32 %617, 1
  %623 = icmp eq i32 %622, %611
  br i1 %623, label %624, label %613, !llvm.loop !76

624:                                              ; preds = %613, %606
  %625 = phi ptr [ %607, %606 ], [ %620, %613 ]
  %626 = phi ptr [ %608, %606 ], [ %618, %613 ]
  %627 = phi i32 [ %609, %606 ], [ %621, %613 ]
  %628 = icmp ult i32 %610, 7
  br i1 %628, label %659, label %629

629:                                              ; preds = %629, %624
  %630 = phi ptr [ %656, %629 ], [ %625, %624 ]
  %631 = phi ptr [ %654, %629 ], [ %626, %624 ]
  %632 = phi i32 [ %657, %629 ], [ %627, %624 ]
  %633 = getelementptr inbounds nuw i8, ptr %631, i64 1
  %634 = load i8, ptr %631, align 1, !tbaa !36
  %635 = getelementptr inbounds nuw i8, ptr %630, i64 1
  store i8 %634, ptr %630, align 1, !tbaa !36
  %636 = getelementptr inbounds nuw i8, ptr %631, i64 2
  %637 = load i8, ptr %633, align 1, !tbaa !36
  %638 = getelementptr inbounds nuw i8, ptr %630, i64 2
  store i8 %637, ptr %635, align 1, !tbaa !36
  %639 = getelementptr inbounds nuw i8, ptr %631, i64 3
  %640 = load i8, ptr %636, align 1, !tbaa !36
  %641 = getelementptr inbounds nuw i8, ptr %630, i64 3
  store i8 %640, ptr %638, align 1, !tbaa !36
  %642 = getelementptr inbounds nuw i8, ptr %631, i64 4
  %643 = load i8, ptr %639, align 1, !tbaa !36
  %644 = getelementptr inbounds nuw i8, ptr %630, i64 4
  store i8 %643, ptr %641, align 1, !tbaa !36
  %645 = getelementptr inbounds nuw i8, ptr %631, i64 5
  %646 = load i8, ptr %642, align 1, !tbaa !36
  %647 = getelementptr inbounds nuw i8, ptr %630, i64 5
  store i8 %646, ptr %644, align 1, !tbaa !36
  %648 = getelementptr inbounds nuw i8, ptr %631, i64 6
  %649 = load i8, ptr %645, align 1, !tbaa !36
  %650 = getelementptr inbounds nuw i8, ptr %630, i64 6
  store i8 %649, ptr %647, align 1, !tbaa !36
  %651 = getelementptr inbounds nuw i8, ptr %631, i64 7
  %652 = load i8, ptr %648, align 1, !tbaa !36
  %653 = getelementptr inbounds nuw i8, ptr %630, i64 7
  store i8 %652, ptr %650, align 1, !tbaa !36
  %654 = getelementptr inbounds nuw i8, ptr %631, i64 8
  %655 = load i8, ptr %651, align 1, !tbaa !36
  %656 = getelementptr inbounds nuw i8, ptr %630, i64 8
  store i8 %655, ptr %653, align 1, !tbaa !36
  %657 = add i32 %632, -8
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %629, !llvm.loop !77

659:                                              ; preds = %629, %624, %604, %586
  %660 = load i32, ptr %463, align 8, !tbaa !34
  %661 = load ptr, ptr %469, align 8, !tbaa !29
  br label %662

662:                                              ; preds = %659, %557, %553
  %663 = phi ptr [ %661, %659 ], [ %555, %557 ], [ %555, %553 ]
  %664 = phi i32 [ %660, %659 ], [ %552, %557 ], [ 0, %553 ]
  %665 = zext i32 %664 to i64
  %666 = getelementptr inbounds nuw i8, ptr %663, i64 %665
  %667 = load i32, ptr %465, align 8, !tbaa !27
  %668 = sub i32 %667, %664
  store i32 0, ptr %470, align 4, !tbaa !17
  %669 = tail call ptr @__errno_location() #16
  store i32 0, ptr %669, align 4, !tbaa !4
  br label %670

670:                                              ; preds = %681, %662
  %671 = phi i32 [ 0, %662 ], [ %682, %681 ]
  %672 = sub i32 %668, %671
  %673 = call i32 @llvm.umin.i32(i32 %672, i32 1073741824)
  %674 = load i32, ptr %471, align 4, !tbaa !46
  %675 = zext i32 %671 to i64
  %676 = getelementptr inbounds nuw i8, ptr %666, i64 %675
  %677 = zext nneg i32 %673 to i64
  %678 = call i64 @read(i32 noundef %674, ptr noundef %676, i64 noundef %677) #13
  %679 = trunc i64 %678 to i32
  %680 = icmp slt i32 %679, 1
  br i1 %680, label %684, label %681

681:                                              ; preds = %670
  %682 = add i32 %671, %679
  %683 = icmp ult i32 %682, %668
  br i1 %683, label %670, label %697, !llvm.loop !47

684:                                              ; preds = %670
  %685 = icmp slt i32 %679, 0
  br i1 %685, label %686, label %693

686:                                              ; preds = %684
  %687 = load i32, ptr %669, align 4, !tbaa !4
  %688 = icmp eq i32 %687, 11
  br i1 %688, label %689, label %694

689:                                              ; preds = %686
  store i32 1, ptr %470, align 4, !tbaa !17
  %690 = icmp eq i32 %671, 0
  br i1 %690, label %691, label %697

691:                                              ; preds = %689
  %692 = load i32, ptr %669, align 4, !tbaa !4
  br label %694

693:                                              ; preds = %684
  store i32 1, ptr %462, align 8, !tbaa !24
  br label %697

694:                                              ; preds = %691, %686
  %695 = phi i32 [ %692, %691 ], [ %687, %686 ]
  %696 = call ptr @strerror(i32 noundef %695) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %696) #13
  br label %883

697:                                              ; preds = %693, %689, %681
  %698 = phi i32 [ %671, %689 ], [ %671, %693 ], [ %682, %681 ]
  %699 = load i32, ptr %463, align 8, !tbaa !34
  %700 = add i32 %699, %698
  store i32 %700, ptr %463, align 8, !tbaa !34
  %701 = load ptr, ptr %469, align 8, !tbaa !29
  store ptr %701, ptr %468, align 8, !tbaa !35
  br label %702

702:                                              ; preds = %697, %549
  %703 = phi i32 [ %700, %697 ], [ %552, %549 ]
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %734, label %705

705:                                              ; preds = %702
  %706 = load i32, ptr %470, align 4, !tbaa !17
  %707 = icmp ne i32 %706, 0
  %708 = icmp ult i32 %703, 4
  %709 = and i1 %708, %707
  br i1 %709, label %734, label %710

710:                                              ; preds = %705
  %711 = icmp ugt i32 %703, 3
  %712 = load ptr, ptr %468, align 8, !tbaa !35
  br i1 %711, label %713, label %730

713:                                              ; preds = %710
  %714 = load i8, ptr %712, align 1, !tbaa !36
  %715 = icmp eq i8 %714, 31
  br i1 %715, label %716, label %730

716:                                              ; preds = %713
  %717 = getelementptr inbounds nuw i8, ptr %712, i64 1
  %718 = load i8, ptr %717, align 1, !tbaa !36
  %719 = icmp eq i8 %718, -117
  br i1 %719, label %720, label %730

720:                                              ; preds = %716
  %721 = getelementptr inbounds nuw i8, ptr %712, i64 2
  %722 = load i8, ptr %721, align 1, !tbaa !36
  %723 = icmp eq i8 %722, 8
  br i1 %723, label %724, label %730

724:                                              ; preds = %720
  %725 = getelementptr inbounds nuw i8, ptr %712, i64 3
  %726 = load i8, ptr %725, align 1, !tbaa !36
  %727 = icmp ult i8 %726, 32
  br i1 %727, label %728, label %730

728:                                              ; preds = %724
  %729 = call i32 @inflateReset(ptr noundef nonnull %468) #13
  store i32 2, ptr %464, align 8, !tbaa !26
  store i32 1, ptr %472, align 4, !tbaa !33
  store i32 0, ptr %478, align 8, !tbaa !32
  br label %870

730:                                              ; preds = %724, %720, %716, %713, %710
  %731 = load ptr, ptr %475, align 8, !tbaa !30
  store ptr %731, ptr %461, align 8, !tbaa !20
  %732 = zext i32 %703 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %731, ptr align 1 %712, i64 %732, i1 false)
  %733 = load i32, ptr %463, align 8, !tbaa !34
  store i32 %733, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %463, align 8, !tbaa !34
  store i32 1, ptr %464, align 8, !tbaa !26
  br label %872

734:                                              ; preds = %705, %702, %542
  %735 = load i32, ptr %464, align 8, !tbaa !26
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %1031, label %870

737:                                              ; preds = %512
  %738 = load ptr, ptr %475, align 8, !tbaa !30
  %739 = load i32, ptr %465, align 8, !tbaa !27
  %740 = shl i32 %739, 1
  store i32 0, ptr %470, align 4, !tbaa !17
  %741 = tail call ptr @__errno_location() #16
  store i32 0, ptr %741, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %742

742:                                              ; preds = %753, %737
  %743 = phi i32 [ %755, %753 ], [ 0, %737 ]
  %744 = sub i32 %740, %743
  %745 = call i32 @llvm.umin.i32(i32 %744, i32 1073741824)
  %746 = load i32, ptr %471, align 4, !tbaa !46
  %747 = zext i32 %743 to i64
  %748 = getelementptr inbounds nuw i8, ptr %738, i64 %747
  %749 = zext nneg i32 %745 to i64
  %750 = call i64 @read(i32 noundef %746, ptr noundef %748, i64 noundef %749) #13
  %751 = trunc i64 %750 to i32
  %752 = icmp slt i32 %751, 1
  br i1 %752, label %757, label %753

753:                                              ; preds = %742
  %754 = load i32, ptr %0, align 4, !tbaa !4
  %755 = add i32 %754, %751
  store i32 %755, ptr %0, align 4, !tbaa !4
  %756 = icmp ult i32 %755, %740
  br i1 %756, label %742, label %771, !llvm.loop !47

757:                                              ; preds = %742
  %758 = icmp slt i32 %751, 0
  br i1 %758, label %759, label %767

759:                                              ; preds = %757
  %760 = load i32, ptr %741, align 4, !tbaa !4
  %761 = icmp eq i32 %760, 11
  br i1 %761, label %762, label %768

762:                                              ; preds = %759
  store i32 1, ptr %470, align 4, !tbaa !17
  %763 = load i32, ptr %0, align 4, !tbaa !4
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %765, label %771

765:                                              ; preds = %762
  %766 = load i32, ptr %741, align 4, !tbaa !4
  br label %768

767:                                              ; preds = %757
  store i32 1, ptr %462, align 8, !tbaa !24
  br label %771

768:                                              ; preds = %765, %759
  %769 = phi i32 [ %766, %765 ], [ %760, %759 ]
  %770 = call ptr @strerror(i32 noundef %769) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %770) #13
  br label %883

771:                                              ; preds = %767, %762, %753
  %772 = load ptr, ptr %475, align 8, !tbaa !30
  store ptr %772, ptr %461, align 8, !tbaa !20
  br label %1031

773:                                              ; preds = %512
  %774 = load i32, ptr %465, align 8, !tbaa !27
  %775 = shl i32 %774, 1
  store i32 %775, ptr %466, align 8, !tbaa !48
  %776 = load ptr, ptr %475, align 8, !tbaa !30
  store ptr %776, ptr %467, align 8, !tbaa !49
  br label %777

777:                                              ; preds = %849, %773
  %778 = phi i32 [ 0, %773 ], [ %829, %849 ]
  %779 = load i32, ptr %463, align 8, !tbaa !34
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %781, label %828

781:                                              ; preds = %777
  %782 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %782, label %860 [
    i32 0, label %783
    i32 -5, label %783
  ]

783:                                              ; preds = %781, %781
  %784 = load i32, ptr %462, align 8, !tbaa !24
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %786, label %824

786:                                              ; preds = %783
  %787 = load ptr, ptr %469, align 8, !tbaa !29
  %788 = load i32, ptr %465, align 8, !tbaa !27
  store i32 0, ptr %470, align 4, !tbaa !17
  %789 = tail call ptr @__errno_location() #16
  store i32 0, ptr %789, align 4, !tbaa !4
  br label %790

790:                                              ; preds = %801, %786
  %791 = phi i32 [ 0, %786 ], [ %802, %801 ]
  %792 = sub i32 %788, %791
  %793 = call i32 @llvm.umin.i32(i32 %792, i32 1073741824)
  %794 = load i32, ptr %471, align 4, !tbaa !46
  %795 = zext i32 %791 to i64
  %796 = getelementptr inbounds nuw i8, ptr %787, i64 %795
  %797 = zext nneg i32 %793 to i64
  %798 = call i64 @read(i32 noundef %794, ptr noundef %796, i64 noundef %797) #13
  %799 = trunc i64 %798 to i32
  %800 = icmp slt i32 %799, 1
  br i1 %800, label %804, label %801

801:                                              ; preds = %790
  %802 = add i32 %791, %799
  %803 = icmp ult i32 %802, %788
  br i1 %803, label %790, label %818, !llvm.loop !47

804:                                              ; preds = %790
  %805 = icmp slt i32 %799, 0
  br i1 %805, label %806, label %813

806:                                              ; preds = %804
  %807 = load i32, ptr %789, align 4, !tbaa !4
  %808 = icmp eq i32 %807, 11
  br i1 %808, label %809, label %814

809:                                              ; preds = %806
  store i32 1, ptr %470, align 4, !tbaa !17
  %810 = icmp eq i32 %791, 0
  br i1 %810, label %811, label %818

811:                                              ; preds = %809
  %812 = load i32, ptr %789, align 4, !tbaa !4
  br label %814

813:                                              ; preds = %804
  store i32 1, ptr %462, align 8, !tbaa !24
  br label %818

814:                                              ; preds = %811, %806
  %815 = phi i32 [ %812, %811 ], [ %807, %806 ]
  %816 = call ptr @strerror(i32 noundef %815) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %816) #13
  %817 = load i32, ptr %9, align 8, !tbaa !16
  br label %860

818:                                              ; preds = %813, %809, %801
  %819 = phi i32 [ %791, %809 ], [ %791, %813 ], [ %802, %801 ]
  %820 = load i32, ptr %463, align 8, !tbaa !34
  %821 = add i32 %820, %819
  store i32 %821, ptr %463, align 8, !tbaa !34
  %822 = load ptr, ptr %469, align 8, !tbaa !29
  store ptr %822, ptr %468, align 8, !tbaa !35
  %823 = icmp eq i32 %821, 0
  br i1 %823, label %824, label %828

824:                                              ; preds = %818, %783
  %825 = load i32, ptr %470, align 4, !tbaa !17
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %827, label %860

827:                                              ; preds = %824
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %860

828:                                              ; preds = %818, %777
  %829 = call i32 @inflate(ptr noundef nonnull %468, i32 noundef 0) #13
  %830 = load i32, ptr %466, align 8, !tbaa !48
  %831 = icmp ult i32 %830, %775
  br i1 %831, label %832, label %833

832:                                              ; preds = %828
  store i32 0, ptr %472, align 4, !tbaa !33
  br label %833

833:                                              ; preds = %832, %828
  switch i32 %829, label %849 [
    i32 -2, label %834
    i32 2, label %834
    i32 -4, label %835
    i32 -3, label %836
  ]

834:                                              ; preds = %833, %833
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %860

835:                                              ; preds = %833
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %853

836:                                              ; preds = %833
  %837 = load i32, ptr %472, align 4, !tbaa !33
  %838 = icmp eq i32 %837, 1
  br i1 %838, label %839, label %845

839:                                              ; preds = %836
  store i32 0, ptr %463, align 8, !tbaa !34
  store i32 1, ptr %462, align 8, !tbaa !24
  store i32 0, ptr %464, align 8, !tbaa !26
  %840 = sub i32 %775, %830
  store i32 %840, ptr %0, align 8, !tbaa !19
  %841 = load ptr, ptr %467, align 8, !tbaa !49
  %842 = zext i32 %840 to i64
  %843 = sub nsw i64 0, %842
  %844 = getelementptr inbounds i8, ptr %841, i64 %843
  store ptr %844, ptr %461, align 8, !tbaa !20
  br label %870

845:                                              ; preds = %836
  %846 = load ptr, ptr %473, align 8, !tbaa !50
  %847 = icmp eq ptr %846, null
  %848 = select i1 %847, ptr @.str.6, ptr %846
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %848) #13
  br label %853

849:                                              ; preds = %833
  %850 = icmp ne i32 %830, 0
  %851 = icmp ne i32 %829, 1
  %852 = select i1 %850, i1 %851, i1 false
  br i1 %852, label %777, label %860, !llvm.loop !51

853:                                              ; preds = %845, %835
  %854 = load i32, ptr %466, align 8, !tbaa !48
  %855 = sub i32 %775, %854
  store i32 %855, ptr %0, align 8, !tbaa !19
  %856 = load ptr, ptr %467, align 8, !tbaa !49
  %857 = zext i32 %855 to i64
  %858 = sub nsw i64 0, %857
  %859 = getelementptr inbounds i8, ptr %856, i64 %858
  store ptr %859, ptr %461, align 8, !tbaa !20
  br label %883

860:                                              ; preds = %849, %834, %827, %824, %814, %781
  %861 = phi i32 [ %817, %814 ], [ %778, %824 ], [ %778, %827 ], [ %829, %834 ], [ %782, %781 ], [ %829, %849 ]
  %862 = load i32, ptr %466, align 8, !tbaa !48
  %863 = sub i32 %775, %862
  store i32 %863, ptr %0, align 8, !tbaa !19
  %864 = load ptr, ptr %467, align 8, !tbaa !49
  %865 = zext i32 %863 to i64
  %866 = sub nsw i64 0, %865
  %867 = getelementptr inbounds i8, ptr %864, i64 %866
  store ptr %867, ptr %461, align 8, !tbaa !20
  switch i32 %861, label %883 [
    i32 1, label %868
    i32 0, label %870
  ]

868:                                              ; preds = %860
  store i32 0, ptr %472, align 4, !tbaa !33
  store i32 0, ptr %464, align 8, !tbaa !26
  br label %870

869:                                              ; preds = %512
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %883

870:                                              ; preds = %868, %860, %839, %734, %728
  %871 = load i32, ptr %0, align 8, !tbaa !19
  br label %872

872:                                              ; preds = %870, %730
  %873 = phi i32 [ %871, %870 ], [ %733, %730 ]
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %875, label %1031

875:                                              ; preds = %872
  %876 = load i32, ptr %462, align 8, !tbaa !24
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %881, label %878

878:                                              ; preds = %875
  %879 = load i32, ptr %463, align 8, !tbaa !34
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %1031, label %881

881:                                              ; preds = %878, %875
  %882 = load i32, ptr %464, align 8, !tbaa !26
  br label %512, !llvm.loop !52

883:                                              ; preds = %869, %860, %853, %768, %694, %547, %533, %528
  %884 = load i32, ptr %0, align 8, !tbaa !19
  %885 = icmp eq i32 %884, 0
  %886 = sext i1 %885 to i32
  br label %1031

887:                                              ; preds = %507
  %888 = icmp eq i32 %505, 1
  br i1 %888, label %889, label %918

889:                                              ; preds = %887
  store i32 0, ptr %470, align 4, !tbaa !17
  %890 = tail call ptr @__errno_location() #16
  store i32 0, ptr %890, align 4, !tbaa !4
  br label %891

891:                                              ; preds = %902, %889
  %892 = phi i32 [ 0, %889 ], [ %903, %902 ]
  %893 = sub i32 %484, %892
  %894 = call i32 @llvm.umin.i32(i32 %893, i32 1073741824)
  %895 = load i32, ptr %471, align 4, !tbaa !46
  %896 = zext i32 %892 to i64
  %897 = getelementptr inbounds nuw i8, ptr %480, i64 %896
  %898 = zext nneg i32 %894 to i64
  %899 = call i64 @read(i32 noundef %895, ptr noundef %897, i64 noundef %898) #13
  %900 = trunc i64 %899 to i32
  %901 = icmp slt i32 %900, 1
  br i1 %901, label %905, label %902

902:                                              ; preds = %891
  %903 = add i32 %892, %900
  %904 = icmp ult i32 %903, %484
  br i1 %904, label %891, label %1016, !llvm.loop !47

905:                                              ; preds = %891
  %906 = icmp slt i32 %900, 0
  br i1 %906, label %907, label %917

907:                                              ; preds = %905
  %908 = load i32, ptr %890, align 4, !tbaa !4
  %909 = icmp eq i32 %908, 11
  br i1 %909, label %910, label %914

910:                                              ; preds = %907
  store i32 1, ptr %470, align 4, !tbaa !17
  %911 = icmp eq i32 %892, 0
  br i1 %911, label %912, label %1018

912:                                              ; preds = %910
  %913 = load i32, ptr %890, align 4, !tbaa !4
  br label %914

914:                                              ; preds = %912, %907
  %915 = phi i32 [ %913, %912 ], [ %908, %907 ]
  %916 = call ptr @strerror(i32 noundef %915) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %916) #13
  br label %1018

917:                                              ; preds = %905
  store i32 1, ptr %462, align 8, !tbaa !24
  br label %1018

918:                                              ; preds = %887
  store i32 %484, ptr %466, align 8, !tbaa !58
  store ptr %480, ptr %467, align 8, !tbaa !59
  br label %919

919:                                              ; preds = %986, %918
  %920 = phi i32 [ 0, %918 ], [ %971, %986 ]
  %921 = load i32, ptr %463, align 8, !tbaa !34
  %922 = icmp eq i32 %921, 0
  br i1 %922, label %923, label %970

923:                                              ; preds = %919
  %924 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %924, label %998 [
    i32 0, label %925
    i32 -5, label %925
  ]

925:                                              ; preds = %923, %923
  %926 = load i32, ptr %462, align 8, !tbaa !24
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %928, label %966

928:                                              ; preds = %925
  %929 = load ptr, ptr %469, align 8, !tbaa !29
  %930 = load i32, ptr %465, align 8, !tbaa !27
  store i32 0, ptr %470, align 4, !tbaa !17
  %931 = tail call ptr @__errno_location() #16
  store i32 0, ptr %931, align 4, !tbaa !4
  br label %932

932:                                              ; preds = %943, %928
  %933 = phi i32 [ 0, %928 ], [ %944, %943 ]
  %934 = sub i32 %930, %933
  %935 = call i32 @llvm.umin.i32(i32 %934, i32 1073741824)
  %936 = load i32, ptr %471, align 4, !tbaa !46
  %937 = zext i32 %933 to i64
  %938 = getelementptr inbounds nuw i8, ptr %929, i64 %937
  %939 = zext nneg i32 %935 to i64
  %940 = call i64 @read(i32 noundef %936, ptr noundef %938, i64 noundef %939) #13
  %941 = trunc i64 %940 to i32
  %942 = icmp slt i32 %941, 1
  br i1 %942, label %946, label %943

943:                                              ; preds = %932
  %944 = add i32 %933, %941
  %945 = icmp ult i32 %944, %930
  br i1 %945, label %932, label %960, !llvm.loop !47

946:                                              ; preds = %932
  %947 = icmp slt i32 %941, 0
  br i1 %947, label %948, label %955

948:                                              ; preds = %946
  %949 = load i32, ptr %931, align 4, !tbaa !4
  %950 = icmp eq i32 %949, 11
  br i1 %950, label %951, label %956

951:                                              ; preds = %948
  store i32 1, ptr %470, align 4, !tbaa !17
  %952 = icmp eq i32 %933, 0
  br i1 %952, label %953, label %960

953:                                              ; preds = %951
  %954 = load i32, ptr %931, align 4, !tbaa !4
  br label %956

955:                                              ; preds = %946
  store i32 1, ptr %462, align 8, !tbaa !24
  br label %960

956:                                              ; preds = %953, %948
  %957 = phi i32 [ %954, %953 ], [ %949, %948 ]
  %958 = call ptr @strerror(i32 noundef %957) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %958) #13
  %959 = load i32, ptr %9, align 8, !tbaa !16
  br label %998

960:                                              ; preds = %955, %951, %943
  %961 = phi i32 [ %933, %951 ], [ %933, %955 ], [ %944, %943 ]
  %962 = load i32, ptr %463, align 8, !tbaa !34
  %963 = add i32 %962, %961
  store i32 %963, ptr %463, align 8, !tbaa !34
  %964 = load ptr, ptr %469, align 8, !tbaa !29
  store ptr %964, ptr %468, align 8, !tbaa !35
  %965 = icmp eq i32 %963, 0
  br i1 %965, label %966, label %970

966:                                              ; preds = %960, %925
  %967 = load i32, ptr %470, align 4, !tbaa !17
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %969, label %998

969:                                              ; preds = %966
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %998

970:                                              ; preds = %960, %919
  %971 = call i32 @inflate(ptr noundef nonnull %468, i32 noundef 0) #13
  %972 = load i32, ptr %466, align 8, !tbaa !48
  %973 = icmp ult i32 %972, %484
  br i1 %973, label %974, label %975

974:                                              ; preds = %970
  store i32 0, ptr %472, align 4, !tbaa !33
  br label %975

975:                                              ; preds = %974, %970
  switch i32 %971, label %986 [
    i32 -2, label %976
    i32 2, label %976
    i32 -4, label %977
    i32 -3, label %978
  ]

976:                                              ; preds = %975, %975
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %998

977:                                              ; preds = %975
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %990

978:                                              ; preds = %975
  %979 = load i32, ptr %472, align 4, !tbaa !33
  %980 = icmp eq i32 %979, 1
  br i1 %980, label %981, label %982

981:                                              ; preds = %978
  store i32 0, ptr %463, align 8, !tbaa !34
  store i32 1, ptr %462, align 8, !tbaa !24
  store i32 0, ptr %464, align 8, !tbaa !26
  br label %990

982:                                              ; preds = %978
  %983 = load ptr, ptr %473, align 8, !tbaa !50
  %984 = icmp eq ptr %983, null
  %985 = select i1 %984, ptr @.str.6, ptr %983
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %985) #13
  br label %990

986:                                              ; preds = %975
  %987 = icmp ne i32 %972, 0
  %988 = icmp ne i32 %971, 1
  %989 = select i1 %987, i1 %988, i1 false
  br i1 %989, label %919, label %998, !llvm.loop !51

990:                                              ; preds = %982, %981, %977
  %991 = phi i32 [ -3, %982 ], [ 0, %981 ], [ -4, %977 ]
  %992 = load i32, ptr %466, align 8, !tbaa !48
  %993 = sub i32 %484, %992
  %994 = load ptr, ptr %467, align 8, !tbaa !49
  %995 = zext i32 %993 to i64
  %996 = sub nsw i64 0, %995
  %997 = getelementptr inbounds i8, ptr %994, i64 %996
  store ptr %997, ptr %461, align 8, !tbaa !20
  br label %1008

998:                                              ; preds = %986, %976, %969, %966, %956, %923
  %999 = phi i32 [ %959, %956 ], [ %920, %966 ], [ %920, %969 ], [ %971, %976 ], [ %924, %923 ], [ %971, %986 ]
  %1000 = load i32, ptr %466, align 8, !tbaa !48
  %1001 = sub i32 %484, %1000
  %1002 = load ptr, ptr %467, align 8, !tbaa !49
  %1003 = zext i32 %1001 to i64
  %1004 = sub nsw i64 0, %1003
  %1005 = getelementptr inbounds i8, ptr %1002, i64 %1004
  store ptr %1005, ptr %461, align 8, !tbaa !20
  %1006 = icmp eq i32 %999, 1
  br i1 %1006, label %1007, label %1008

1007:                                             ; preds = %998
  store i32 0, ptr %472, align 4, !tbaa !33
  store i32 0, ptr %464, align 8, !tbaa !26
  br label %1013

1008:                                             ; preds = %998, %990
  %1009 = phi i64 [ %995, %990 ], [ %1003, %998 ]
  %1010 = phi i32 [ %991, %990 ], [ %999, %998 ]
  %1011 = icmp ne i32 %1010, 0
  %1012 = sext i1 %1011 to i32
  br label %1013

1013:                                             ; preds = %1008, %1007
  %1014 = phi i64 [ %1003, %1007 ], [ %1009, %1008 ]
  %1015 = phi i32 [ 0, %1007 ], [ %1012, %1008 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1018

1016:                                             ; preds = %902
  %1017 = zext i32 %903 to i64
  br label %1018

1018:                                             ; preds = %1016, %1013, %917, %914, %910, %487
  %1019 = phi i64 [ %1017, %1016 ], [ %896, %917 ], [ %896, %914 ], [ %896, %910 ], [ %490, %487 ], [ %1014, %1013 ]
  %1020 = phi i32 [ 0, %1016 ], [ 0, %917 ], [ -1, %914 ], [ 0, %910 ], [ %497, %487 ], [ %1015, %1013 ]
  %1021 = load i64, ptr %474, align 8, !tbaa !21
  %1022 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1021, i64 %1019), !nosanitize !22
  %1023 = extractvalue { i64, i1 } %1022, 1, !nosanitize !22
  br i1 %1023, label %1024, label %1025, !prof !23, !nosanitize !22

1024:                                             ; preds = %1018
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

1025:                                             ; preds = %1018
  %1026 = extractvalue { i64, i1 } %1022, 0, !nosanitize !22
  %1027 = add i64 %1019, %482
  %1028 = getelementptr inbounds nuw i8, ptr %480, i64 %1019
  %1029 = sub i64 %481, %1019
  store i64 %1026, ptr %474, align 8, !tbaa !21
  %1030 = icmp eq i64 %1029, 0
  br i1 %1030, label %1043, label %1031

1031:                                             ; preds = %1025, %883, %878, %872, %771, %734
  %1032 = phi i32 [ %1020, %1025 ], [ %886, %883 ], [ 0, %771 ], [ 0, %734 ], [ 0, %872 ], [ 0, %878 ]
  %1033 = phi i64 [ %1027, %1025 ], [ %482, %883 ], [ %482, %771 ], [ %482, %734 ], [ %482, %872 ], [ %482, %878 ]
  %1034 = phi i64 [ %1029, %1025 ], [ %481, %883 ], [ %481, %771 ], [ %481, %734 ], [ %481, %872 ], [ %481, %878 ]
  %1035 = phi ptr [ %1028, %1025 ], [ %480, %883 ], [ %480, %771 ], [ %480, %734 ], [ %480, %872 ], [ %480, %878 ]
  %1036 = icmp eq i32 %1032, 0
  br i1 %1036, label %479, label %1037, !llvm.loop !60

1037:                                             ; preds = %1031
  %1038 = load i32, ptr %462, align 8, !tbaa !24
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1043, label %1040

1040:                                             ; preds = %1037, %501
  %1041 = phi i64 [ %1033, %1037 ], [ %482, %501 ]
  %1042 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1042, align 4, !tbaa !61
  br label %1043

1043:                                             ; preds = %1040, %1037, %1025
  %1044 = phi i64 [ %1033, %1037 ], [ %1041, %1040 ], [ %1027, %1025 ]
  %1045 = freeze i64 %1044
  %1046 = icmp eq i64 %1045, 0
  %1047 = load i8, ptr %2, align 1
  %1048 = zext i8 %1047 to i32
  br i1 %1046, label %1049, label %1050

1049:                                             ; preds = %1043, %442, %433, %426, %340, %266, %119, %105, %100
  br label %1050

1050:                                             ; preds = %1049, %1043, %25, %11, %4, %1
  %1051 = phi i32 [ -1, %4 ], [ -1, %1 ], [ %31, %25 ], [ -1, %11 ], [ -1, %1049 ], [ %1048, %1043 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %1051
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #5

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzgetc_(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1050, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1050

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
  br i1 %14, label %1050, label %15

15:                                               ; preds = %11, %8, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %16 = load i32, ptr %0, align 8, !tbaa !19
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %15
  %19 = add i32 %16, -1
  store i32 %19, ptr %0, align 8, !tbaa !19
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = load i64, ptr %20, align 8, !tbaa !21
  %22 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %21, i64 1), !nosanitize !22
  %23 = extractvalue { i64, i1 } %22, 1, !nosanitize !22
  br i1 %23, label %24, label %25, !prof !23, !nosanitize !22

24:                                               ; preds = %18
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

25:                                               ; preds = %18
  %26 = extractvalue { i64, i1 } %22, 0, !nosanitize !22
  store i64 %26, ptr %20, align 8, !tbaa !21
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load ptr, ptr %27, align 8, !tbaa !20
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 1
  store ptr %29, ptr %27, align 8, !tbaa !20
  %30 = load i8, ptr %28, align 1, !tbaa !36
  %31 = zext i8 %30 to i32
  br label %1050

32:                                               ; preds = %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %34 = load i64, ptr %33, align 8, !tbaa !18
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %460, label %36

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
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %54

54:                                               ; preds = %457, %36
  %55 = phi i64 [ %458, %457 ], [ %34, %36 ]
  %56 = load i32, ptr %0, align 8, !tbaa !19
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %77, label %58

58:                                               ; preds = %54
  %59 = zext i32 %56 to i64
  %60 = tail call i64 @llvm.smin.i64(i64 %55, i64 %59)
  %61 = trunc i64 %60 to i32
  %62 = sub i32 %56, %61
  store i32 %62, ptr %0, align 8, !tbaa !19
  %63 = load ptr, ptr %37, align 8, !tbaa !20
  %64 = and i64 %60, 4294967295
  %65 = getelementptr inbounds nuw i8, ptr %63, i64 %64
  store ptr %65, ptr %37, align 8, !tbaa !20
  %66 = load i64, ptr %38, align 8, !tbaa !21
  %67 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %66, i64 %64), !nosanitize !22
  %68 = extractvalue { i64, i1 } %67, 1, !nosanitize !22
  br i1 %68, label %69, label %70, !prof !23, !nosanitize !22

69:                                               ; preds = %58
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

70:                                               ; preds = %58
  %71 = extractvalue { i64, i1 } %67, 0, !nosanitize !22
  store i64 %71, ptr %38, align 8, !tbaa !21
  %72 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %55, i64 %64), !nosanitize !22
  %73 = extractvalue { i64, i1 } %72, 1, !nosanitize !22
  br i1 %73, label %74, label %75, !prof !23, !nosanitize !22

74:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !22
  unreachable, !nosanitize !22

75:                                               ; preds = %70
  %76 = extractvalue { i64, i1 } %72, 0, !nosanitize !22
  store i64 %76, ptr %33, align 8, !tbaa !18
  br label %457

77:                                               ; preds = %54
  %78 = load i32, ptr %39, align 8, !tbaa !24
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr %40, align 8, !tbaa !25
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %460, label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %454, %83
  %85 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %85, label %442 [
    i32 0, label %86
    i32 1, label %309
    i32 2, label %345
  ]

86:                                               ; preds = %84
  %87 = load i32, ptr %42, align 8, !tbaa !27
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %86
  %90 = load i32, ptr %51, align 4, !tbaa !28
  %91 = zext i32 %90 to i64
  %92 = tail call noalias ptr @malloc(i64 noundef %91) #15
  store ptr %92, ptr %47, align 8, !tbaa !29
  %93 = load i32, ptr %51, align 4, !tbaa !28
  %94 = shl i32 %93, 1
  %95 = zext i32 %94 to i64
  %96 = tail call noalias ptr @malloc(i64 noundef %95) #15
  store ptr %96, ptr %44, align 8, !tbaa !30
  %97 = icmp eq ptr %92, null
  %98 = icmp eq ptr %96, null
  %99 = or i1 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  tail call void @free(ptr noundef %96) #13
  tail call void @free(ptr noundef %92) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1049

101:                                              ; preds = %89
  %102 = load i32, ptr %51, align 4, !tbaa !28
  store i32 %102, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %40, align 8, !tbaa !25
  store ptr null, ptr %46, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  %103 = tail call i32 @inflateInit2_(ptr noundef nonnull %46, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %44, align 8, !tbaa !30
  tail call void @free(ptr noundef %106) #13
  %107 = load ptr, ptr %47, align 8, !tbaa !29
  tail call void @free(ptr noundef %107) #13
  store i32 0, ptr %42, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1049

108:                                              ; preds = %101, %86
  %109 = load i32, ptr %53, align 8, !tbaa !32
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, ptr %50, align 4, !tbaa !33
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111, %108
  %115 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  %116 = load i32, ptr %50, align 4, !tbaa !33
  %117 = icmp ne i32 %116, -1
  %118 = zext i1 %117 to i32
  store i32 %118, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %53, align 8, !tbaa !32
  br label %306

119:                                              ; preds = %111
  %120 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %120, label %1049 [
    i32 0, label %121
    i32 -5, label %121
  ]

121:                                              ; preds = %119, %119
  %122 = load i32, ptr %39, align 8, !tbaa !24
  %123 = icmp eq i32 %122, 0
  %124 = load i32, ptr %40, align 8, !tbaa !34
  br i1 %123, label %125, label %274

125:                                              ; preds = %121
  %126 = icmp eq i32 %124, 0
  %127 = load ptr, ptr %47, align 8, !tbaa !29
  %128 = ptrtoaddr ptr %127 to i64
  br i1 %126, label %234, label %129

129:                                              ; preds = %125
  %130 = load ptr, ptr %46, align 8, !tbaa !35
  %131 = icmp eq ptr %130, %127
  br i1 %131, label %234, label %132

132:                                              ; preds = %129
  %133 = ptrtoaddr ptr %130 to i64
  %134 = zext i32 %124 to i64
  %135 = icmp ult i32 %124, 4
  %136 = sub i64 %128, %133
  %137 = icmp ult i64 %136, 32
  %138 = select i1 %135, i1 true, i1 %137
  br i1 %138, label %178, label %139

139:                                              ; preds = %132
  %140 = icmp ult i32 %124, 32
  br i1 %140, label %162, label %141

141:                                              ; preds = %139
  %142 = and i64 %134, 28
  %143 = and i64 %134, 4294967264
  %144 = getelementptr i8, ptr %127, i64 %143
  %145 = getelementptr i8, ptr %130, i64 %143
  %146 = trunc nuw i64 %143 to i32
  %147 = sub i32 %124, %146
  br label %148

148:                                              ; preds = %148, %141
  %149 = phi i64 [ 0, %141 ], [ %156, %148 ]
  %150 = getelementptr i8, ptr %127, i64 %149
  %151 = getelementptr i8, ptr %130, i64 %149
  %152 = getelementptr i8, ptr %151, i64 16
  %153 = load <16 x i8>, ptr %151, align 1, !tbaa !36
  %154 = load <16 x i8>, ptr %152, align 1, !tbaa !36
  %155 = getelementptr i8, ptr %150, i64 16
  store <16 x i8> %153, ptr %150, align 1, !tbaa !36
  store <16 x i8> %154, ptr %155, align 1, !tbaa !36
  %156 = add nuw i64 %149, 32
  %157 = icmp eq i64 %156, %143
  br i1 %157, label %158, label %148, !llvm.loop !78

158:                                              ; preds = %148
  %159 = icmp eq i64 %143, %134
  br i1 %159, label %231, label %160

160:                                              ; preds = %158
  %161 = icmp eq i64 %142, 0
  br i1 %161, label %178, label %162, !prof !41

162:                                              ; preds = %160, %139
  %163 = phi i64 [ %143, %160 ], [ 0, %139 ]
  %164 = and i64 %134, 4294967292
  %165 = getelementptr i8, ptr %127, i64 %164
  %166 = getelementptr i8, ptr %130, i64 %164
  %167 = trunc nuw i64 %164 to i32
  %168 = sub i32 %124, %167
  br label %169

169:                                              ; preds = %169, %162
  %170 = phi i64 [ %163, %162 ], [ %174, %169 ]
  %171 = getelementptr i8, ptr %127, i64 %170
  %172 = getelementptr i8, ptr %130, i64 %170
  %173 = load <4 x i8>, ptr %172, align 1, !tbaa !36
  store <4 x i8> %173, ptr %171, align 1, !tbaa !36
  %174 = add nuw i64 %170, 4
  %175 = icmp eq i64 %174, %164
  br i1 %175, label %176, label %169, !llvm.loop !79

176:                                              ; preds = %169
  %177 = icmp eq i64 %164, %134
  br i1 %177, label %231, label %178

178:                                              ; preds = %176, %160, %132
  %179 = phi ptr [ %127, %132 ], [ %144, %160 ], [ %165, %176 ]
  %180 = phi ptr [ %130, %132 ], [ %145, %160 ], [ %166, %176 ]
  %181 = phi i32 [ %124, %132 ], [ %147, %160 ], [ %168, %176 ]
  %182 = add i32 %181, -1
  %183 = and i32 %181, 7
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %196, label %185

185:                                              ; preds = %185, %178
  %186 = phi ptr [ %192, %185 ], [ %179, %178 ]
  %187 = phi ptr [ %190, %185 ], [ %180, %178 ]
  %188 = phi i32 [ %193, %185 ], [ %181, %178 ]
  %189 = phi i32 [ %194, %185 ], [ 0, %178 ]
  %190 = getelementptr inbounds nuw i8, ptr %187, i64 1
  %191 = load i8, ptr %187, align 1, !tbaa !36
  %192 = getelementptr inbounds nuw i8, ptr %186, i64 1
  store i8 %191, ptr %186, align 1, !tbaa !36
  %193 = add i32 %188, -1
  %194 = add i32 %189, 1
  %195 = icmp eq i32 %194, %183
  br i1 %195, label %196, label %185, !llvm.loop !80

196:                                              ; preds = %185, %178
  %197 = phi ptr [ %179, %178 ], [ %192, %185 ]
  %198 = phi ptr [ %180, %178 ], [ %190, %185 ]
  %199 = phi i32 [ %181, %178 ], [ %193, %185 ]
  %200 = icmp ult i32 %182, 7
  br i1 %200, label %231, label %201

201:                                              ; preds = %201, %196
  %202 = phi ptr [ %228, %201 ], [ %197, %196 ]
  %203 = phi ptr [ %226, %201 ], [ %198, %196 ]
  %204 = phi i32 [ %229, %201 ], [ %199, %196 ]
  %205 = getelementptr inbounds nuw i8, ptr %203, i64 1
  %206 = load i8, ptr %203, align 1, !tbaa !36
  %207 = getelementptr inbounds nuw i8, ptr %202, i64 1
  store i8 %206, ptr %202, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %203, i64 2
  %209 = load i8, ptr %205, align 1, !tbaa !36
  %210 = getelementptr inbounds nuw i8, ptr %202, i64 2
  store i8 %209, ptr %207, align 1, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %203, i64 3
  %212 = load i8, ptr %208, align 1, !tbaa !36
  %213 = getelementptr inbounds nuw i8, ptr %202, i64 3
  store i8 %212, ptr %210, align 1, !tbaa !36
  %214 = getelementptr inbounds nuw i8, ptr %203, i64 4
  %215 = load i8, ptr %211, align 1, !tbaa !36
  %216 = getelementptr inbounds nuw i8, ptr %202, i64 4
  store i8 %215, ptr %213, align 1, !tbaa !36
  %217 = getelementptr inbounds nuw i8, ptr %203, i64 5
  %218 = load i8, ptr %214, align 1, !tbaa !36
  %219 = getelementptr inbounds nuw i8, ptr %202, i64 5
  store i8 %218, ptr %216, align 1, !tbaa !36
  %220 = getelementptr inbounds nuw i8, ptr %203, i64 6
  %221 = load i8, ptr %217, align 1, !tbaa !36
  %222 = getelementptr inbounds nuw i8, ptr %202, i64 6
  store i8 %221, ptr %219, align 1, !tbaa !36
  %223 = getelementptr inbounds nuw i8, ptr %203, i64 7
  %224 = load i8, ptr %220, align 1, !tbaa !36
  %225 = getelementptr inbounds nuw i8, ptr %202, i64 7
  store i8 %224, ptr %222, align 1, !tbaa !36
  %226 = getelementptr inbounds nuw i8, ptr %203, i64 8
  %227 = load i8, ptr %223, align 1, !tbaa !36
  %228 = getelementptr inbounds nuw i8, ptr %202, i64 8
  store i8 %227, ptr %225, align 1, !tbaa !36
  %229 = add i32 %204, -8
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %201, !llvm.loop !81

231:                                              ; preds = %201, %196, %176, %158
  %232 = load i32, ptr %40, align 8, !tbaa !34
  %233 = load ptr, ptr %47, align 8, !tbaa !29
  br label %234

234:                                              ; preds = %231, %129, %125
  %235 = phi ptr [ %233, %231 ], [ %127, %129 ], [ %127, %125 ]
  %236 = phi i32 [ %232, %231 ], [ %124, %129 ], [ 0, %125 ]
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds nuw i8, ptr %235, i64 %237
  %239 = load i32, ptr %42, align 8, !tbaa !27
  %240 = sub i32 %239, %236
  store i32 0, ptr %48, align 4, !tbaa !17
  %241 = tail call ptr @__errno_location() #16
  store i32 0, ptr %241, align 4, !tbaa !4
  br label %242

242:                                              ; preds = %253, %234
  %243 = phi i32 [ 0, %234 ], [ %254, %253 ]
  %244 = sub i32 %240, %243
  %245 = tail call i32 @llvm.umin.i32(i32 %244, i32 1073741824)
  %246 = load i32, ptr %49, align 4, !tbaa !46
  %247 = zext i32 %243 to i64
  %248 = getelementptr inbounds nuw i8, ptr %238, i64 %247
  %249 = zext nneg i32 %245 to i64
  %250 = tail call i64 @read(i32 noundef %246, ptr noundef %248, i64 noundef %249) #13
  %251 = trunc i64 %250 to i32
  %252 = icmp slt i32 %251, 1
  br i1 %252, label %256, label %253

253:                                              ; preds = %242
  %254 = add i32 %243, %251
  %255 = icmp ult i32 %254, %240
  br i1 %255, label %242, label %269, !llvm.loop !47

256:                                              ; preds = %242
  %257 = icmp slt i32 %251, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %256
  %259 = load i32, ptr %241, align 4, !tbaa !4
  %260 = icmp eq i32 %259, 11
  br i1 %260, label %261, label %266

261:                                              ; preds = %258
  store i32 1, ptr %48, align 4, !tbaa !17
  %262 = icmp eq i32 %243, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %261
  %264 = load i32, ptr %241, align 4, !tbaa !4
  br label %266

265:                                              ; preds = %256
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %269

266:                                              ; preds = %263, %258
  %267 = phi i32 [ %264, %263 ], [ %259, %258 ]
  %268 = tail call ptr @strerror(i32 noundef %267) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %268) #13
  br label %1049

269:                                              ; preds = %265, %261, %253
  %270 = phi i32 [ %243, %261 ], [ %243, %265 ], [ %254, %253 ]
  %271 = load i32, ptr %40, align 8, !tbaa !34
  %272 = add i32 %271, %270
  store i32 %272, ptr %40, align 8, !tbaa !34
  %273 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %273, ptr %46, align 8, !tbaa !35
  br label %274

274:                                              ; preds = %269, %121
  %275 = phi i32 [ %272, %269 ], [ %124, %121 ]
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %306, label %277

277:                                              ; preds = %274
  %278 = load i32, ptr %48, align 4, !tbaa !17
  %279 = icmp ne i32 %278, 0
  %280 = icmp ult i32 %275, 4
  %281 = and i1 %280, %279
  br i1 %281, label %306, label %282

282:                                              ; preds = %277
  %283 = icmp ugt i32 %275, 3
  %284 = load ptr, ptr %46, align 8, !tbaa !35
  br i1 %283, label %285, label %302

285:                                              ; preds = %282
  %286 = load i8, ptr %284, align 1, !tbaa !36
  %287 = icmp eq i8 %286, 31
  br i1 %287, label %288, label %302

288:                                              ; preds = %285
  %289 = getelementptr inbounds nuw i8, ptr %284, i64 1
  %290 = load i8, ptr %289, align 1, !tbaa !36
  %291 = icmp eq i8 %290, -117
  br i1 %291, label %292, label %302

292:                                              ; preds = %288
  %293 = getelementptr inbounds nuw i8, ptr %284, i64 2
  %294 = load i8, ptr %293, align 1, !tbaa !36
  %295 = icmp eq i8 %294, 8
  br i1 %295, label %296, label %302

296:                                              ; preds = %292
  %297 = getelementptr inbounds nuw i8, ptr %284, i64 3
  %298 = load i8, ptr %297, align 1, !tbaa !36
  %299 = icmp ult i8 %298, 32
  br i1 %299, label %300, label %302

300:                                              ; preds = %296
  %301 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  store i32 1, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %53, align 8, !tbaa !32
  br label %443

302:                                              ; preds = %296, %292, %288, %285, %282
  %303 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %303, ptr %37, align 8, !tbaa !20
  %304 = zext i32 %275 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %303, ptr align 1 %284, i64 %304, i1 false)
  %305 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %305, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %445

306:                                              ; preds = %277, %274, %114
  %307 = load i32, ptr %41, align 8, !tbaa !26
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %455, label %443

309:                                              ; preds = %84
  %310 = load ptr, ptr %44, align 8, !tbaa !30
  %311 = load i32, ptr %42, align 8, !tbaa !27
  %312 = shl i32 %311, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %313 = tail call ptr @__errno_location() #16
  store i32 0, ptr %313, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %314

314:                                              ; preds = %325, %309
  %315 = phi i32 [ %327, %325 ], [ 0, %309 ]
  %316 = sub i32 %312, %315
  %317 = tail call i32 @llvm.umin.i32(i32 %316, i32 1073741824)
  %318 = load i32, ptr %49, align 4, !tbaa !46
  %319 = zext i32 %315 to i64
  %320 = getelementptr inbounds nuw i8, ptr %310, i64 %319
  %321 = zext nneg i32 %317 to i64
  %322 = tail call i64 @read(i32 noundef %318, ptr noundef %320, i64 noundef %321) #13
  %323 = trunc i64 %322 to i32
  %324 = icmp slt i32 %323, 1
  br i1 %324, label %329, label %325

325:                                              ; preds = %314
  %326 = load i32, ptr %0, align 4, !tbaa !4
  %327 = add i32 %326, %323
  store i32 %327, ptr %0, align 4, !tbaa !4
  %328 = icmp ult i32 %327, %312
  br i1 %328, label %314, label %343, !llvm.loop !47

329:                                              ; preds = %314
  %330 = icmp slt i32 %323, 0
  br i1 %330, label %331, label %339

331:                                              ; preds = %329
  %332 = load i32, ptr %313, align 4, !tbaa !4
  %333 = icmp eq i32 %332, 11
  br i1 %333, label %334, label %340

334:                                              ; preds = %331
  store i32 1, ptr %48, align 4, !tbaa !17
  %335 = load i32, ptr %0, align 4, !tbaa !4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %343

337:                                              ; preds = %334
  %338 = load i32, ptr %313, align 4, !tbaa !4
  br label %340

339:                                              ; preds = %329
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %343

340:                                              ; preds = %337, %331
  %341 = phi i32 [ %338, %337 ], [ %332, %331 ]
  %342 = tail call ptr @strerror(i32 noundef %341) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %342) #13
  br label %1049

343:                                              ; preds = %339, %334, %325
  %344 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %344, ptr %37, align 8, !tbaa !20
  br label %455

345:                                              ; preds = %84
  %346 = load i32, ptr %42, align 8, !tbaa !27
  %347 = shl i32 %346, 1
  store i32 %347, ptr %43, align 8, !tbaa !48
  %348 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %348, ptr %45, align 8, !tbaa !49
  br label %349

349:                                              ; preds = %422, %345
  %350 = phi i32 [ 0, %345 ], [ %401, %422 ]
  %351 = load i32, ptr %40, align 8, !tbaa !34
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %400

353:                                              ; preds = %349
  %354 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %354, label %433 [
    i32 0, label %355
    i32 -5, label %355
  ]

355:                                              ; preds = %353, %353
  %356 = load i32, ptr %39, align 8, !tbaa !24
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %396

358:                                              ; preds = %355
  %359 = load ptr, ptr %47, align 8, !tbaa !29
  %360 = load i32, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %48, align 4, !tbaa !17
  %361 = tail call ptr @__errno_location() #16
  store i32 0, ptr %361, align 4, !tbaa !4
  br label %362

362:                                              ; preds = %373, %358
  %363 = phi i32 [ 0, %358 ], [ %374, %373 ]
  %364 = sub i32 %360, %363
  %365 = tail call i32 @llvm.umin.i32(i32 %364, i32 1073741824)
  %366 = load i32, ptr %49, align 4, !tbaa !46
  %367 = zext i32 %363 to i64
  %368 = getelementptr inbounds nuw i8, ptr %359, i64 %367
  %369 = zext nneg i32 %365 to i64
  %370 = tail call i64 @read(i32 noundef %366, ptr noundef %368, i64 noundef %369) #13
  %371 = trunc i64 %370 to i32
  %372 = icmp slt i32 %371, 1
  br i1 %372, label %376, label %373

373:                                              ; preds = %362
  %374 = add i32 %363, %371
  %375 = icmp ult i32 %374, %360
  br i1 %375, label %362, label %390, !llvm.loop !47

376:                                              ; preds = %362
  %377 = icmp slt i32 %371, 0
  br i1 %377, label %378, label %385

378:                                              ; preds = %376
  %379 = load i32, ptr %361, align 4, !tbaa !4
  %380 = icmp eq i32 %379, 11
  br i1 %380, label %381, label %386

381:                                              ; preds = %378
  store i32 1, ptr %48, align 4, !tbaa !17
  %382 = icmp eq i32 %363, 0
  br i1 %382, label %383, label %390

383:                                              ; preds = %381
  %384 = load i32, ptr %361, align 4, !tbaa !4
  br label %386

385:                                              ; preds = %376
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %390

386:                                              ; preds = %383, %378
  %387 = phi i32 [ %384, %383 ], [ %379, %378 ]
  %388 = tail call ptr @strerror(i32 noundef %387) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %388) #13
  %389 = load i32, ptr %9, align 8, !tbaa !16
  br label %433

390:                                              ; preds = %385, %381, %373
  %391 = phi i32 [ %363, %381 ], [ %363, %385 ], [ %374, %373 ]
  %392 = load i32, ptr %40, align 8, !tbaa !34
  %393 = add i32 %392, %391
  store i32 %393, ptr %40, align 8, !tbaa !34
  %394 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %394, ptr %46, align 8, !tbaa !35
  %395 = icmp eq i32 %393, 0
  br i1 %395, label %396, label %400

396:                                              ; preds = %390, %355
  %397 = load i32, ptr %48, align 4, !tbaa !17
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %433

399:                                              ; preds = %396
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %433

400:                                              ; preds = %390, %349
  %401 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %402 = load i32, ptr %43, align 8, !tbaa !48
  %403 = icmp ult i32 %402, %347
  br i1 %403, label %404, label %405

404:                                              ; preds = %400
  store i32 0, ptr %50, align 4, !tbaa !33
  br label %405

405:                                              ; preds = %404, %400
  switch i32 %401, label %422 [
    i32 -2, label %406
    i32 2, label %406
    i32 -4, label %407
    i32 -3, label %408
  ]

406:                                              ; preds = %405, %405
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %433

407:                                              ; preds = %405
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %426

408:                                              ; preds = %405
  %409 = load i32, ptr %50, align 4, !tbaa !33
  %410 = icmp eq i32 %409, 1
  br i1 %410, label %411, label %417

411:                                              ; preds = %408
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  %412 = sub i32 %347, %402
  store i32 %412, ptr %0, align 8, !tbaa !19
  %413 = load ptr, ptr %45, align 8, !tbaa !49
  %414 = zext i32 %412 to i64
  %415 = sub nsw i64 0, %414
  %416 = getelementptr inbounds i8, ptr %413, i64 %415
  store ptr %416, ptr %37, align 8, !tbaa !20
  br label %443

417:                                              ; preds = %408
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %419 = load ptr, ptr %418, align 8, !tbaa !50
  %420 = icmp eq ptr %419, null
  %421 = select i1 %420, ptr @.str.6, ptr %419
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %421) #13
  br label %426

422:                                              ; preds = %405
  %423 = icmp ne i32 %402, 0
  %424 = icmp ne i32 %401, 1
  %425 = select i1 %423, i1 %424, i1 false
  br i1 %425, label %349, label %433, !llvm.loop !51

426:                                              ; preds = %417, %407
  %427 = load i32, ptr %43, align 8, !tbaa !48
  %428 = sub i32 %347, %427
  store i32 %428, ptr %0, align 8, !tbaa !19
  %429 = load ptr, ptr %45, align 8, !tbaa !49
  %430 = zext i32 %428 to i64
  %431 = sub nsw i64 0, %430
  %432 = getelementptr inbounds i8, ptr %429, i64 %431
  store ptr %432, ptr %37, align 8, !tbaa !20
  br label %1049

433:                                              ; preds = %422, %406, %399, %396, %386, %353
  %434 = phi i32 [ %389, %386 ], [ %350, %396 ], [ %350, %399 ], [ %401, %406 ], [ %354, %353 ], [ %401, %422 ]
  %435 = load i32, ptr %43, align 8, !tbaa !48
  %436 = sub i32 %347, %435
  store i32 %436, ptr %0, align 8, !tbaa !19
  %437 = load ptr, ptr %45, align 8, !tbaa !49
  %438 = zext i32 %436 to i64
  %439 = sub nsw i64 0, %438
  %440 = getelementptr inbounds i8, ptr %437, i64 %439
  store ptr %440, ptr %37, align 8, !tbaa !20
  switch i32 %434, label %1049 [
    i32 1, label %441
    i32 0, label %443
  ]

441:                                              ; preds = %433
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %443

442:                                              ; preds = %84
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1049

443:                                              ; preds = %441, %433, %411, %306, %300
  %444 = load i32, ptr %0, align 8, !tbaa !19
  br label %445

445:                                              ; preds = %443, %302
  %446 = phi i32 [ %444, %443 ], [ %305, %302 ]
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %455

448:                                              ; preds = %445
  %449 = load i32, ptr %39, align 8, !tbaa !24
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %454, label %451

451:                                              ; preds = %448
  %452 = load i32, ptr %40, align 8, !tbaa !34
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %455, label %454

454:                                              ; preds = %451, %448
  br label %84, !llvm.loop !52

455:                                              ; preds = %451, %445, %343, %306
  %456 = load i64, ptr %33, align 8, !tbaa !18
  br label %457

457:                                              ; preds = %455, %75
  %458 = phi i64 [ %456, %455 ], [ %76, %75 ]
  %459 = icmp eq i64 %458, 0
  br i1 %459, label %460, label %54, !llvm.loop !53

460:                                              ; preds = %457, %80, %32
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %479

479:                                              ; preds = %1031, %460
  %480 = phi ptr [ %2, %460 ], [ %1035, %1031 ]
  %481 = phi i64 [ 1, %460 ], [ %1034, %1031 ]
  %482 = phi i64 [ 0, %460 ], [ %1033, %1031 ]
  %483 = call i64 @llvm.umin.i64(i64 %481, i64 4294967295)
  %484 = trunc nuw i64 %483 to i32
  %485 = load i32, ptr %0, align 8, !tbaa !19
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %498, label %487

487:                                              ; preds = %479
  %488 = call i32 @llvm.umin.i32(i32 %485, i32 %484)
  %489 = load ptr, ptr %461, align 8, !tbaa !20
  %490 = zext i32 %488 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %480, ptr align 1 %489, i64 %490, i1 false)
  %491 = load ptr, ptr %461, align 8, !tbaa !20
  %492 = getelementptr inbounds nuw i8, ptr %491, i64 %490
  store ptr %492, ptr %461, align 8, !tbaa !20
  %493 = load i32, ptr %0, align 8, !tbaa !19
  %494 = sub i32 %493, %488
  store i32 %494, ptr %0, align 8, !tbaa !19
  %495 = load i32, ptr %9, align 8, !tbaa !16
  %496 = icmp ne i32 %495, 0
  %497 = sext i1 %496 to i32
  br label %1018

498:                                              ; preds = %479
  %499 = load i32, ptr %462, align 8, !tbaa !24
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %504, label %501

501:                                              ; preds = %498
  %502 = load i32, ptr %463, align 8, !tbaa !25
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %1040, label %504

504:                                              ; preds = %501, %498
  %505 = load i32, ptr %464, align 8, !tbaa !26
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %511, label %507

507:                                              ; preds = %504
  %508 = load i32, ptr %465, align 8, !tbaa !27
  %509 = shl i32 %508, 1
  %510 = icmp ugt i32 %509, %484
  br i1 %510, label %511, label %887

511:                                              ; preds = %507, %504
  br label %512

512:                                              ; preds = %881, %511
  %513 = phi i32 [ %882, %881 ], [ %505, %511 ]
  switch i32 %513, label %869 [
    i32 0, label %514
    i32 1, label %737
    i32 2, label %773
  ]

514:                                              ; preds = %512
  %515 = load i32, ptr %465, align 8, !tbaa !27
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %536

517:                                              ; preds = %514
  %518 = load i32, ptr %476, align 4, !tbaa !28
  %519 = zext i32 %518 to i64
  %520 = call noalias ptr @malloc(i64 noundef %519) #15
  store ptr %520, ptr %469, align 8, !tbaa !29
  %521 = load i32, ptr %476, align 4, !tbaa !28
  %522 = shl i32 %521, 1
  %523 = zext i32 %522 to i64
  %524 = call noalias ptr @malloc(i64 noundef %523) #15
  store ptr %524, ptr %475, align 8, !tbaa !30
  %525 = icmp eq ptr %520, null
  %526 = icmp eq ptr %524, null
  %527 = or i1 %525, %526
  br i1 %527, label %528, label %529

528:                                              ; preds = %517
  call void @free(ptr noundef %524) #13
  call void @free(ptr noundef %520) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %883

529:                                              ; preds = %517
  %530 = load i32, ptr %476, align 4, !tbaa !28
  store i32 %530, ptr %465, align 8, !tbaa !27
  store i32 0, ptr %463, align 8, !tbaa !25
  store ptr null, ptr %468, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %477, i8 0, i64 24, i1 false)
  %531 = call i32 @inflateInit2_(ptr noundef nonnull %468, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %536, label %533

533:                                              ; preds = %529
  %534 = load ptr, ptr %475, align 8, !tbaa !30
  call void @free(ptr noundef %534) #13
  %535 = load ptr, ptr %469, align 8, !tbaa !29
  call void @free(ptr noundef %535) #13
  store i32 0, ptr %465, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %883

536:                                              ; preds = %529, %514
  %537 = load i32, ptr %478, align 8, !tbaa !32
  %538 = icmp eq i32 %537, -1
  br i1 %538, label %542, label %539

539:                                              ; preds = %536
  %540 = load i32, ptr %472, align 4, !tbaa !33
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %542, label %547

542:                                              ; preds = %539, %536
  %543 = call i32 @inflateReset(ptr noundef nonnull %468) #13
  store i32 2, ptr %464, align 8, !tbaa !26
  %544 = load i32, ptr %472, align 4, !tbaa !33
  %545 = icmp ne i32 %544, -1
  %546 = zext i1 %545 to i32
  store i32 %546, ptr %472, align 4, !tbaa !33
  store i32 0, ptr %478, align 8, !tbaa !32
  br label %734

547:                                              ; preds = %539
  %548 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %548, label %883 [
    i32 0, label %549
    i32 -5, label %549
  ]

549:                                              ; preds = %547, %547
  %550 = load i32, ptr %462, align 8, !tbaa !24
  %551 = icmp eq i32 %550, 0
  %552 = load i32, ptr %463, align 8, !tbaa !34
  br i1 %551, label %553, label %702

553:                                              ; preds = %549
  %554 = icmp eq i32 %552, 0
  %555 = load ptr, ptr %469, align 8, !tbaa !29
  %556 = ptrtoaddr ptr %555 to i64
  br i1 %554, label %662, label %557

557:                                              ; preds = %553
  %558 = load ptr, ptr %468, align 8, !tbaa !35
  %559 = icmp eq ptr %558, %555
  br i1 %559, label %662, label %560

560:                                              ; preds = %557
  %561 = ptrtoaddr ptr %558 to i64
  %562 = zext i32 %552 to i64
  %563 = icmp ult i32 %552, 4
  %564 = sub i64 %556, %561
  %565 = icmp ult i64 %564, 32
  %566 = select i1 %563, i1 true, i1 %565
  br i1 %566, label %606, label %567

567:                                              ; preds = %560
  %568 = icmp ult i32 %552, 32
  br i1 %568, label %590, label %569

569:                                              ; preds = %567
  %570 = and i64 %562, 28
  %571 = and i64 %562, 4294967264
  %572 = getelementptr i8, ptr %555, i64 %571
  %573 = getelementptr i8, ptr %558, i64 %571
  %574 = trunc nuw i64 %571 to i32
  %575 = sub i32 %552, %574
  br label %576

576:                                              ; preds = %576, %569
  %577 = phi i64 [ 0, %569 ], [ %584, %576 ]
  %578 = getelementptr i8, ptr %555, i64 %577
  %579 = getelementptr i8, ptr %558, i64 %577
  %580 = getelementptr i8, ptr %579, i64 16
  %581 = load <16 x i8>, ptr %579, align 1, !tbaa !36
  %582 = load <16 x i8>, ptr %580, align 1, !tbaa !36
  %583 = getelementptr i8, ptr %578, i64 16
  store <16 x i8> %581, ptr %578, align 1, !tbaa !36
  store <16 x i8> %582, ptr %583, align 1, !tbaa !36
  %584 = add nuw i64 %577, 32
  %585 = icmp eq i64 %584, %571
  br i1 %585, label %586, label %576, !llvm.loop !82

586:                                              ; preds = %576
  %587 = icmp eq i64 %571, %562
  br i1 %587, label %659, label %588

588:                                              ; preds = %586
  %589 = icmp eq i64 %570, 0
  br i1 %589, label %606, label %590, !prof !41

590:                                              ; preds = %588, %567
  %591 = phi i64 [ %571, %588 ], [ 0, %567 ]
  %592 = and i64 %562, 4294967292
  %593 = getelementptr i8, ptr %555, i64 %592
  %594 = getelementptr i8, ptr %558, i64 %592
  %595 = trunc nuw i64 %592 to i32
  %596 = sub i32 %552, %595
  br label %597

597:                                              ; preds = %597, %590
  %598 = phi i64 [ %591, %590 ], [ %602, %597 ]
  %599 = getelementptr i8, ptr %555, i64 %598
  %600 = getelementptr i8, ptr %558, i64 %598
  %601 = load <4 x i8>, ptr %600, align 1, !tbaa !36
  store <4 x i8> %601, ptr %599, align 1, !tbaa !36
  %602 = add nuw i64 %598, 4
  %603 = icmp eq i64 %602, %592
  br i1 %603, label %604, label %597, !llvm.loop !83

604:                                              ; preds = %597
  %605 = icmp eq i64 %592, %562
  br i1 %605, label %659, label %606

606:                                              ; preds = %604, %588, %560
  %607 = phi ptr [ %555, %560 ], [ %572, %588 ], [ %593, %604 ]
  %608 = phi ptr [ %558, %560 ], [ %573, %588 ], [ %594, %604 ]
  %609 = phi i32 [ %552, %560 ], [ %575, %588 ], [ %596, %604 ]
  %610 = add i32 %609, -1
  %611 = and i32 %609, 7
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %624, label %613

613:                                              ; preds = %613, %606
  %614 = phi ptr [ %620, %613 ], [ %607, %606 ]
  %615 = phi ptr [ %618, %613 ], [ %608, %606 ]
  %616 = phi i32 [ %621, %613 ], [ %609, %606 ]
  %617 = phi i32 [ %622, %613 ], [ 0, %606 ]
  %618 = getelementptr inbounds nuw i8, ptr %615, i64 1
  %619 = load i8, ptr %615, align 1, !tbaa !36
  %620 = getelementptr inbounds nuw i8, ptr %614, i64 1
  store i8 %619, ptr %614, align 1, !tbaa !36
  %621 = add i32 %616, -1
  %622 = add i32 %617, 1
  %623 = icmp eq i32 %622, %611
  br i1 %623, label %624, label %613, !llvm.loop !84

624:                                              ; preds = %613, %606
  %625 = phi ptr [ %607, %606 ], [ %620, %613 ]
  %626 = phi ptr [ %608, %606 ], [ %618, %613 ]
  %627 = phi i32 [ %609, %606 ], [ %621, %613 ]
  %628 = icmp ult i32 %610, 7
  br i1 %628, label %659, label %629

629:                                              ; preds = %629, %624
  %630 = phi ptr [ %656, %629 ], [ %625, %624 ]
  %631 = phi ptr [ %654, %629 ], [ %626, %624 ]
  %632 = phi i32 [ %657, %629 ], [ %627, %624 ]
  %633 = getelementptr inbounds nuw i8, ptr %631, i64 1
  %634 = load i8, ptr %631, align 1, !tbaa !36
  %635 = getelementptr inbounds nuw i8, ptr %630, i64 1
  store i8 %634, ptr %630, align 1, !tbaa !36
  %636 = getelementptr inbounds nuw i8, ptr %631, i64 2
  %637 = load i8, ptr %633, align 1, !tbaa !36
  %638 = getelementptr inbounds nuw i8, ptr %630, i64 2
  store i8 %637, ptr %635, align 1, !tbaa !36
  %639 = getelementptr inbounds nuw i8, ptr %631, i64 3
  %640 = load i8, ptr %636, align 1, !tbaa !36
  %641 = getelementptr inbounds nuw i8, ptr %630, i64 3
  store i8 %640, ptr %638, align 1, !tbaa !36
  %642 = getelementptr inbounds nuw i8, ptr %631, i64 4
  %643 = load i8, ptr %639, align 1, !tbaa !36
  %644 = getelementptr inbounds nuw i8, ptr %630, i64 4
  store i8 %643, ptr %641, align 1, !tbaa !36
  %645 = getelementptr inbounds nuw i8, ptr %631, i64 5
  %646 = load i8, ptr %642, align 1, !tbaa !36
  %647 = getelementptr inbounds nuw i8, ptr %630, i64 5
  store i8 %646, ptr %644, align 1, !tbaa !36
  %648 = getelementptr inbounds nuw i8, ptr %631, i64 6
  %649 = load i8, ptr %645, align 1, !tbaa !36
  %650 = getelementptr inbounds nuw i8, ptr %630, i64 6
  store i8 %649, ptr %647, align 1, !tbaa !36
  %651 = getelementptr inbounds nuw i8, ptr %631, i64 7
  %652 = load i8, ptr %648, align 1, !tbaa !36
  %653 = getelementptr inbounds nuw i8, ptr %630, i64 7
  store i8 %652, ptr %650, align 1, !tbaa !36
  %654 = getelementptr inbounds nuw i8, ptr %631, i64 8
  %655 = load i8, ptr %651, align 1, !tbaa !36
  %656 = getelementptr inbounds nuw i8, ptr %630, i64 8
  store i8 %655, ptr %653, align 1, !tbaa !36
  %657 = add i32 %632, -8
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %629, !llvm.loop !85

659:                                              ; preds = %629, %624, %604, %586
  %660 = load i32, ptr %463, align 8, !tbaa !34
  %661 = load ptr, ptr %469, align 8, !tbaa !29
  br label %662

662:                                              ; preds = %659, %557, %553
  %663 = phi ptr [ %661, %659 ], [ %555, %557 ], [ %555, %553 ]
  %664 = phi i32 [ %660, %659 ], [ %552, %557 ], [ 0, %553 ]
  %665 = zext i32 %664 to i64
  %666 = getelementptr inbounds nuw i8, ptr %663, i64 %665
  %667 = load i32, ptr %465, align 8, !tbaa !27
  %668 = sub i32 %667, %664
  store i32 0, ptr %470, align 4, !tbaa !17
  %669 = tail call ptr @__errno_location() #16
  store i32 0, ptr %669, align 4, !tbaa !4
  br label %670

670:                                              ; preds = %681, %662
  %671 = phi i32 [ 0, %662 ], [ %682, %681 ]
  %672 = sub i32 %668, %671
  %673 = call i32 @llvm.umin.i32(i32 %672, i32 1073741824)
  %674 = load i32, ptr %471, align 4, !tbaa !46
  %675 = zext i32 %671 to i64
  %676 = getelementptr inbounds nuw i8, ptr %666, i64 %675
  %677 = zext nneg i32 %673 to i64
  %678 = call i64 @read(i32 noundef %674, ptr noundef %676, i64 noundef %677) #13
  %679 = trunc i64 %678 to i32
  %680 = icmp slt i32 %679, 1
  br i1 %680, label %684, label %681

681:                                              ; preds = %670
  %682 = add i32 %671, %679
  %683 = icmp ult i32 %682, %668
  br i1 %683, label %670, label %697, !llvm.loop !47

684:                                              ; preds = %670
  %685 = icmp slt i32 %679, 0
  br i1 %685, label %686, label %693

686:                                              ; preds = %684
  %687 = load i32, ptr %669, align 4, !tbaa !4
  %688 = icmp eq i32 %687, 11
  br i1 %688, label %689, label %694

689:                                              ; preds = %686
  store i32 1, ptr %470, align 4, !tbaa !17
  %690 = icmp eq i32 %671, 0
  br i1 %690, label %691, label %697

691:                                              ; preds = %689
  %692 = load i32, ptr %669, align 4, !tbaa !4
  br label %694

693:                                              ; preds = %684
  store i32 1, ptr %462, align 8, !tbaa !24
  br label %697

694:                                              ; preds = %691, %686
  %695 = phi i32 [ %692, %691 ], [ %687, %686 ]
  %696 = call ptr @strerror(i32 noundef %695) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %696) #13
  br label %883

697:                                              ; preds = %693, %689, %681
  %698 = phi i32 [ %671, %689 ], [ %671, %693 ], [ %682, %681 ]
  %699 = load i32, ptr %463, align 8, !tbaa !34
  %700 = add i32 %699, %698
  store i32 %700, ptr %463, align 8, !tbaa !34
  %701 = load ptr, ptr %469, align 8, !tbaa !29
  store ptr %701, ptr %468, align 8, !tbaa !35
  br label %702

702:                                              ; preds = %697, %549
  %703 = phi i32 [ %700, %697 ], [ %552, %549 ]
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %734, label %705

705:                                              ; preds = %702
  %706 = load i32, ptr %470, align 4, !tbaa !17
  %707 = icmp ne i32 %706, 0
  %708 = icmp ult i32 %703, 4
  %709 = and i1 %708, %707
  br i1 %709, label %734, label %710

710:                                              ; preds = %705
  %711 = icmp ugt i32 %703, 3
  %712 = load ptr, ptr %468, align 8, !tbaa !35
  br i1 %711, label %713, label %730

713:                                              ; preds = %710
  %714 = load i8, ptr %712, align 1, !tbaa !36
  %715 = icmp eq i8 %714, 31
  br i1 %715, label %716, label %730

716:                                              ; preds = %713
  %717 = getelementptr inbounds nuw i8, ptr %712, i64 1
  %718 = load i8, ptr %717, align 1, !tbaa !36
  %719 = icmp eq i8 %718, -117
  br i1 %719, label %720, label %730

720:                                              ; preds = %716
  %721 = getelementptr inbounds nuw i8, ptr %712, i64 2
  %722 = load i8, ptr %721, align 1, !tbaa !36
  %723 = icmp eq i8 %722, 8
  br i1 %723, label %724, label %730

724:                                              ; preds = %720
  %725 = getelementptr inbounds nuw i8, ptr %712, i64 3
  %726 = load i8, ptr %725, align 1, !tbaa !36
  %727 = icmp ult i8 %726, 32
  br i1 %727, label %728, label %730

728:                                              ; preds = %724
  %729 = call i32 @inflateReset(ptr noundef nonnull %468) #13
  store i32 2, ptr %464, align 8, !tbaa !26
  store i32 1, ptr %472, align 4, !tbaa !33
  store i32 0, ptr %478, align 8, !tbaa !32
  br label %870

730:                                              ; preds = %724, %720, %716, %713, %710
  %731 = load ptr, ptr %475, align 8, !tbaa !30
  store ptr %731, ptr %461, align 8, !tbaa !20
  %732 = zext i32 %703 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %731, ptr align 1 %712, i64 %732, i1 false)
  %733 = load i32, ptr %463, align 8, !tbaa !34
  store i32 %733, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %463, align 8, !tbaa !34
  store i32 1, ptr %464, align 8, !tbaa !26
  br label %872

734:                                              ; preds = %705, %702, %542
  %735 = load i32, ptr %464, align 8, !tbaa !26
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %1031, label %870

737:                                              ; preds = %512
  %738 = load ptr, ptr %475, align 8, !tbaa !30
  %739 = load i32, ptr %465, align 8, !tbaa !27
  %740 = shl i32 %739, 1
  store i32 0, ptr %470, align 4, !tbaa !17
  %741 = tail call ptr @__errno_location() #16
  store i32 0, ptr %741, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %742

742:                                              ; preds = %753, %737
  %743 = phi i32 [ %755, %753 ], [ 0, %737 ]
  %744 = sub i32 %740, %743
  %745 = call i32 @llvm.umin.i32(i32 %744, i32 1073741824)
  %746 = load i32, ptr %471, align 4, !tbaa !46
  %747 = zext i32 %743 to i64
  %748 = getelementptr inbounds nuw i8, ptr %738, i64 %747
  %749 = zext nneg i32 %745 to i64
  %750 = call i64 @read(i32 noundef %746, ptr noundef %748, i64 noundef %749) #13
  %751 = trunc i64 %750 to i32
  %752 = icmp slt i32 %751, 1
  br i1 %752, label %757, label %753

753:                                              ; preds = %742
  %754 = load i32, ptr %0, align 4, !tbaa !4
  %755 = add i32 %754, %751
  store i32 %755, ptr %0, align 4, !tbaa !4
  %756 = icmp ult i32 %755, %740
  br i1 %756, label %742, label %771, !llvm.loop !47

757:                                              ; preds = %742
  %758 = icmp slt i32 %751, 0
  br i1 %758, label %759, label %767

759:                                              ; preds = %757
  %760 = load i32, ptr %741, align 4, !tbaa !4
  %761 = icmp eq i32 %760, 11
  br i1 %761, label %762, label %768

762:                                              ; preds = %759
  store i32 1, ptr %470, align 4, !tbaa !17
  %763 = load i32, ptr %0, align 4, !tbaa !4
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %765, label %771

765:                                              ; preds = %762
  %766 = load i32, ptr %741, align 4, !tbaa !4
  br label %768

767:                                              ; preds = %757
  store i32 1, ptr %462, align 8, !tbaa !24
  br label %771

768:                                              ; preds = %765, %759
  %769 = phi i32 [ %766, %765 ], [ %760, %759 ]
  %770 = call ptr @strerror(i32 noundef %769) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %770) #13
  br label %883

771:                                              ; preds = %767, %762, %753
  %772 = load ptr, ptr %475, align 8, !tbaa !30
  store ptr %772, ptr %461, align 8, !tbaa !20
  br label %1031

773:                                              ; preds = %512
  %774 = load i32, ptr %465, align 8, !tbaa !27
  %775 = shl i32 %774, 1
  store i32 %775, ptr %466, align 8, !tbaa !48
  %776 = load ptr, ptr %475, align 8, !tbaa !30
  store ptr %776, ptr %467, align 8, !tbaa !49
  br label %777

777:                                              ; preds = %849, %773
  %778 = phi i32 [ 0, %773 ], [ %829, %849 ]
  %779 = load i32, ptr %463, align 8, !tbaa !34
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %781, label %828

781:                                              ; preds = %777
  %782 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %782, label %860 [
    i32 0, label %783
    i32 -5, label %783
  ]

783:                                              ; preds = %781, %781
  %784 = load i32, ptr %462, align 8, !tbaa !24
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %786, label %824

786:                                              ; preds = %783
  %787 = load ptr, ptr %469, align 8, !tbaa !29
  %788 = load i32, ptr %465, align 8, !tbaa !27
  store i32 0, ptr %470, align 4, !tbaa !17
  %789 = tail call ptr @__errno_location() #16
  store i32 0, ptr %789, align 4, !tbaa !4
  br label %790

790:                                              ; preds = %801, %786
  %791 = phi i32 [ 0, %786 ], [ %802, %801 ]
  %792 = sub i32 %788, %791
  %793 = call i32 @llvm.umin.i32(i32 %792, i32 1073741824)
  %794 = load i32, ptr %471, align 4, !tbaa !46
  %795 = zext i32 %791 to i64
  %796 = getelementptr inbounds nuw i8, ptr %787, i64 %795
  %797 = zext nneg i32 %793 to i64
  %798 = call i64 @read(i32 noundef %794, ptr noundef %796, i64 noundef %797) #13
  %799 = trunc i64 %798 to i32
  %800 = icmp slt i32 %799, 1
  br i1 %800, label %804, label %801

801:                                              ; preds = %790
  %802 = add i32 %791, %799
  %803 = icmp ult i32 %802, %788
  br i1 %803, label %790, label %818, !llvm.loop !47

804:                                              ; preds = %790
  %805 = icmp slt i32 %799, 0
  br i1 %805, label %806, label %813

806:                                              ; preds = %804
  %807 = load i32, ptr %789, align 4, !tbaa !4
  %808 = icmp eq i32 %807, 11
  br i1 %808, label %809, label %814

809:                                              ; preds = %806
  store i32 1, ptr %470, align 4, !tbaa !17
  %810 = icmp eq i32 %791, 0
  br i1 %810, label %811, label %818

811:                                              ; preds = %809
  %812 = load i32, ptr %789, align 4, !tbaa !4
  br label %814

813:                                              ; preds = %804
  store i32 1, ptr %462, align 8, !tbaa !24
  br label %818

814:                                              ; preds = %811, %806
  %815 = phi i32 [ %812, %811 ], [ %807, %806 ]
  %816 = call ptr @strerror(i32 noundef %815) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %816) #13
  %817 = load i32, ptr %9, align 8, !tbaa !16
  br label %860

818:                                              ; preds = %813, %809, %801
  %819 = phi i32 [ %791, %809 ], [ %791, %813 ], [ %802, %801 ]
  %820 = load i32, ptr %463, align 8, !tbaa !34
  %821 = add i32 %820, %819
  store i32 %821, ptr %463, align 8, !tbaa !34
  %822 = load ptr, ptr %469, align 8, !tbaa !29
  store ptr %822, ptr %468, align 8, !tbaa !35
  %823 = icmp eq i32 %821, 0
  br i1 %823, label %824, label %828

824:                                              ; preds = %818, %783
  %825 = load i32, ptr %470, align 4, !tbaa !17
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %827, label %860

827:                                              ; preds = %824
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %860

828:                                              ; preds = %818, %777
  %829 = call i32 @inflate(ptr noundef nonnull %468, i32 noundef 0) #13
  %830 = load i32, ptr %466, align 8, !tbaa !48
  %831 = icmp ult i32 %830, %775
  br i1 %831, label %832, label %833

832:                                              ; preds = %828
  store i32 0, ptr %472, align 4, !tbaa !33
  br label %833

833:                                              ; preds = %832, %828
  switch i32 %829, label %849 [
    i32 -2, label %834
    i32 2, label %834
    i32 -4, label %835
    i32 -3, label %836
  ]

834:                                              ; preds = %833, %833
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %860

835:                                              ; preds = %833
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %853

836:                                              ; preds = %833
  %837 = load i32, ptr %472, align 4, !tbaa !33
  %838 = icmp eq i32 %837, 1
  br i1 %838, label %839, label %845

839:                                              ; preds = %836
  store i32 0, ptr %463, align 8, !tbaa !34
  store i32 1, ptr %462, align 8, !tbaa !24
  store i32 0, ptr %464, align 8, !tbaa !26
  %840 = sub i32 %775, %830
  store i32 %840, ptr %0, align 8, !tbaa !19
  %841 = load ptr, ptr %467, align 8, !tbaa !49
  %842 = zext i32 %840 to i64
  %843 = sub nsw i64 0, %842
  %844 = getelementptr inbounds i8, ptr %841, i64 %843
  store ptr %844, ptr %461, align 8, !tbaa !20
  br label %870

845:                                              ; preds = %836
  %846 = load ptr, ptr %473, align 8, !tbaa !50
  %847 = icmp eq ptr %846, null
  %848 = select i1 %847, ptr @.str.6, ptr %846
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %848) #13
  br label %853

849:                                              ; preds = %833
  %850 = icmp ne i32 %830, 0
  %851 = icmp ne i32 %829, 1
  %852 = select i1 %850, i1 %851, i1 false
  br i1 %852, label %777, label %860, !llvm.loop !51

853:                                              ; preds = %845, %835
  %854 = load i32, ptr %466, align 8, !tbaa !48
  %855 = sub i32 %775, %854
  store i32 %855, ptr %0, align 8, !tbaa !19
  %856 = load ptr, ptr %467, align 8, !tbaa !49
  %857 = zext i32 %855 to i64
  %858 = sub nsw i64 0, %857
  %859 = getelementptr inbounds i8, ptr %856, i64 %858
  store ptr %859, ptr %461, align 8, !tbaa !20
  br label %883

860:                                              ; preds = %849, %834, %827, %824, %814, %781
  %861 = phi i32 [ %817, %814 ], [ %778, %824 ], [ %778, %827 ], [ %829, %834 ], [ %829, %849 ], [ %782, %781 ]
  %862 = load i32, ptr %466, align 8, !tbaa !48
  %863 = sub i32 %775, %862
  store i32 %863, ptr %0, align 8, !tbaa !19
  %864 = load ptr, ptr %467, align 8, !tbaa !49
  %865 = zext i32 %863 to i64
  %866 = sub nsw i64 0, %865
  %867 = getelementptr inbounds i8, ptr %864, i64 %866
  store ptr %867, ptr %461, align 8, !tbaa !20
  switch i32 %861, label %883 [
    i32 1, label %868
    i32 0, label %870
  ]

868:                                              ; preds = %860
  store i32 0, ptr %472, align 4, !tbaa !33
  store i32 0, ptr %464, align 8, !tbaa !26
  br label %870

869:                                              ; preds = %512
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %883

870:                                              ; preds = %868, %860, %839, %734, %728
  %871 = load i32, ptr %0, align 8, !tbaa !19
  br label %872

872:                                              ; preds = %870, %730
  %873 = phi i32 [ %871, %870 ], [ %733, %730 ]
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %875, label %1031

875:                                              ; preds = %872
  %876 = load i32, ptr %462, align 8, !tbaa !24
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %881, label %878

878:                                              ; preds = %875
  %879 = load i32, ptr %463, align 8, !tbaa !34
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %1031, label %881

881:                                              ; preds = %878, %875
  %882 = load i32, ptr %464, align 8, !tbaa !26
  br label %512, !llvm.loop !52

883:                                              ; preds = %869, %860, %853, %768, %694, %547, %533, %528
  %884 = load i32, ptr %0, align 8, !tbaa !19
  %885 = icmp eq i32 %884, 0
  %886 = sext i1 %885 to i32
  br label %1031

887:                                              ; preds = %507
  %888 = icmp eq i32 %505, 1
  br i1 %888, label %889, label %918

889:                                              ; preds = %887
  store i32 0, ptr %470, align 4, !tbaa !17
  %890 = tail call ptr @__errno_location() #16
  store i32 0, ptr %890, align 4, !tbaa !4
  br label %891

891:                                              ; preds = %902, %889
  %892 = phi i32 [ 0, %889 ], [ %903, %902 ]
  %893 = sub i32 %484, %892
  %894 = call i32 @llvm.umin.i32(i32 %893, i32 1073741824)
  %895 = load i32, ptr %471, align 4, !tbaa !46
  %896 = zext i32 %892 to i64
  %897 = getelementptr inbounds nuw i8, ptr %480, i64 %896
  %898 = zext nneg i32 %894 to i64
  %899 = call i64 @read(i32 noundef %895, ptr noundef %897, i64 noundef %898) #13
  %900 = trunc i64 %899 to i32
  %901 = icmp slt i32 %900, 1
  br i1 %901, label %905, label %902

902:                                              ; preds = %891
  %903 = add i32 %892, %900
  %904 = icmp ult i32 %903, %484
  br i1 %904, label %891, label %1016, !llvm.loop !47

905:                                              ; preds = %891
  %906 = icmp slt i32 %900, 0
  br i1 %906, label %907, label %917

907:                                              ; preds = %905
  %908 = load i32, ptr %890, align 4, !tbaa !4
  %909 = icmp eq i32 %908, 11
  br i1 %909, label %910, label %914

910:                                              ; preds = %907
  store i32 1, ptr %470, align 4, !tbaa !17
  %911 = icmp eq i32 %892, 0
  br i1 %911, label %912, label %1018

912:                                              ; preds = %910
  %913 = load i32, ptr %890, align 4, !tbaa !4
  br label %914

914:                                              ; preds = %912, %907
  %915 = phi i32 [ %913, %912 ], [ %908, %907 ]
  %916 = call ptr @strerror(i32 noundef %915) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %916) #13
  br label %1018

917:                                              ; preds = %905
  store i32 1, ptr %462, align 8, !tbaa !24
  br label %1018

918:                                              ; preds = %887
  store i32 %484, ptr %466, align 8, !tbaa !58
  store ptr %480, ptr %467, align 8, !tbaa !59
  br label %919

919:                                              ; preds = %986, %918
  %920 = phi i32 [ 0, %918 ], [ %971, %986 ]
  %921 = load i32, ptr %463, align 8, !tbaa !34
  %922 = icmp eq i32 %921, 0
  br i1 %922, label %923, label %970

923:                                              ; preds = %919
  %924 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %924, label %998 [
    i32 0, label %925
    i32 -5, label %925
  ]

925:                                              ; preds = %923, %923
  %926 = load i32, ptr %462, align 8, !tbaa !24
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %928, label %966

928:                                              ; preds = %925
  %929 = load ptr, ptr %469, align 8, !tbaa !29
  %930 = load i32, ptr %465, align 8, !tbaa !27
  store i32 0, ptr %470, align 4, !tbaa !17
  %931 = tail call ptr @__errno_location() #16
  store i32 0, ptr %931, align 4, !tbaa !4
  br label %932

932:                                              ; preds = %943, %928
  %933 = phi i32 [ 0, %928 ], [ %944, %943 ]
  %934 = sub i32 %930, %933
  %935 = call i32 @llvm.umin.i32(i32 %934, i32 1073741824)
  %936 = load i32, ptr %471, align 4, !tbaa !46
  %937 = zext i32 %933 to i64
  %938 = getelementptr inbounds nuw i8, ptr %929, i64 %937
  %939 = zext nneg i32 %935 to i64
  %940 = call i64 @read(i32 noundef %936, ptr noundef %938, i64 noundef %939) #13
  %941 = trunc i64 %940 to i32
  %942 = icmp slt i32 %941, 1
  br i1 %942, label %946, label %943

943:                                              ; preds = %932
  %944 = add i32 %933, %941
  %945 = icmp ult i32 %944, %930
  br i1 %945, label %932, label %960, !llvm.loop !47

946:                                              ; preds = %932
  %947 = icmp slt i32 %941, 0
  br i1 %947, label %948, label %955

948:                                              ; preds = %946
  %949 = load i32, ptr %931, align 4, !tbaa !4
  %950 = icmp eq i32 %949, 11
  br i1 %950, label %951, label %956

951:                                              ; preds = %948
  store i32 1, ptr %470, align 4, !tbaa !17
  %952 = icmp eq i32 %933, 0
  br i1 %952, label %953, label %960

953:                                              ; preds = %951
  %954 = load i32, ptr %931, align 4, !tbaa !4
  br label %956

955:                                              ; preds = %946
  store i32 1, ptr %462, align 8, !tbaa !24
  br label %960

956:                                              ; preds = %953, %948
  %957 = phi i32 [ %954, %953 ], [ %949, %948 ]
  %958 = call ptr @strerror(i32 noundef %957) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %958) #13
  %959 = load i32, ptr %9, align 8, !tbaa !16
  br label %998

960:                                              ; preds = %955, %951, %943
  %961 = phi i32 [ %933, %951 ], [ %933, %955 ], [ %944, %943 ]
  %962 = load i32, ptr %463, align 8, !tbaa !34
  %963 = add i32 %962, %961
  store i32 %963, ptr %463, align 8, !tbaa !34
  %964 = load ptr, ptr %469, align 8, !tbaa !29
  store ptr %964, ptr %468, align 8, !tbaa !35
  %965 = icmp eq i32 %963, 0
  br i1 %965, label %966, label %970

966:                                              ; preds = %960, %925
  %967 = load i32, ptr %470, align 4, !tbaa !17
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %969, label %998

969:                                              ; preds = %966
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %998

970:                                              ; preds = %960, %919
  %971 = call i32 @inflate(ptr noundef nonnull %468, i32 noundef 0) #13
  %972 = load i32, ptr %466, align 8, !tbaa !48
  %973 = icmp ult i32 %972, %484
  br i1 %973, label %974, label %975

974:                                              ; preds = %970
  store i32 0, ptr %472, align 4, !tbaa !33
  br label %975

975:                                              ; preds = %974, %970
  switch i32 %971, label %986 [
    i32 -2, label %976
    i32 2, label %976
    i32 -4, label %977
    i32 -3, label %978
  ]

976:                                              ; preds = %975, %975
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %998

977:                                              ; preds = %975
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %990

978:                                              ; preds = %975
  %979 = load i32, ptr %472, align 4, !tbaa !33
  %980 = icmp eq i32 %979, 1
  br i1 %980, label %981, label %982

981:                                              ; preds = %978
  store i32 0, ptr %463, align 8, !tbaa !34
  store i32 1, ptr %462, align 8, !tbaa !24
  store i32 0, ptr %464, align 8, !tbaa !26
  br label %990

982:                                              ; preds = %978
  %983 = load ptr, ptr %473, align 8, !tbaa !50
  %984 = icmp eq ptr %983, null
  %985 = select i1 %984, ptr @.str.6, ptr %983
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %985) #13
  br label %990

986:                                              ; preds = %975
  %987 = icmp ne i32 %972, 0
  %988 = icmp ne i32 %971, 1
  %989 = select i1 %987, i1 %988, i1 false
  br i1 %989, label %919, label %998, !llvm.loop !51

990:                                              ; preds = %982, %981, %977
  %991 = phi i32 [ -3, %982 ], [ 0, %981 ], [ -4, %977 ]
  %992 = load i32, ptr %466, align 8, !tbaa !48
  %993 = sub i32 %484, %992
  %994 = load ptr, ptr %467, align 8, !tbaa !49
  %995 = zext i32 %993 to i64
  %996 = sub nsw i64 0, %995
  %997 = getelementptr inbounds i8, ptr %994, i64 %996
  store ptr %997, ptr %461, align 8, !tbaa !20
  br label %1008

998:                                              ; preds = %986, %976, %969, %966, %956, %923
  %999 = phi i32 [ %959, %956 ], [ %920, %966 ], [ %920, %969 ], [ %971, %976 ], [ %971, %986 ], [ %924, %923 ]
  %1000 = load i32, ptr %466, align 8, !tbaa !48
  %1001 = sub i32 %484, %1000
  %1002 = load ptr, ptr %467, align 8, !tbaa !49
  %1003 = zext i32 %1001 to i64
  %1004 = sub nsw i64 0, %1003
  %1005 = getelementptr inbounds i8, ptr %1002, i64 %1004
  store ptr %1005, ptr %461, align 8, !tbaa !20
  %1006 = icmp eq i32 %999, 1
  br i1 %1006, label %1007, label %1008

1007:                                             ; preds = %998
  store i32 0, ptr %472, align 4, !tbaa !33
  store i32 0, ptr %464, align 8, !tbaa !26
  br label %1013

1008:                                             ; preds = %998, %990
  %1009 = phi i64 [ %995, %990 ], [ %1003, %998 ]
  %1010 = phi i32 [ %991, %990 ], [ %999, %998 ]
  %1011 = icmp ne i32 %1010, 0
  %1012 = sext i1 %1011 to i32
  br label %1013

1013:                                             ; preds = %1008, %1007
  %1014 = phi i64 [ %1003, %1007 ], [ %1009, %1008 ]
  %1015 = phi i32 [ 0, %1007 ], [ %1012, %1008 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1018

1016:                                             ; preds = %902
  %1017 = zext i32 %903 to i64
  br label %1018

1018:                                             ; preds = %1016, %1013, %917, %914, %910, %487
  %1019 = phi i64 [ %1017, %1016 ], [ %896, %917 ], [ %896, %914 ], [ %896, %910 ], [ %490, %487 ], [ %1014, %1013 ]
  %1020 = phi i32 [ 0, %1016 ], [ 0, %917 ], [ -1, %914 ], [ 0, %910 ], [ %497, %487 ], [ %1015, %1013 ]
  %1021 = load i64, ptr %474, align 8, !tbaa !21
  %1022 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1021, i64 %1019), !nosanitize !22
  %1023 = extractvalue { i64, i1 } %1022, 1, !nosanitize !22
  br i1 %1023, label %1024, label %1025, !prof !23, !nosanitize !22

1024:                                             ; preds = %1018
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

1025:                                             ; preds = %1018
  %1026 = extractvalue { i64, i1 } %1022, 0, !nosanitize !22
  %1027 = add i64 %1019, %482
  %1028 = getelementptr inbounds nuw i8, ptr %480, i64 %1019
  %1029 = sub i64 %481, %1019
  store i64 %1026, ptr %474, align 8, !tbaa !21
  %1030 = icmp eq i64 %1029, 0
  br i1 %1030, label %1043, label %1031

1031:                                             ; preds = %1025, %883, %878, %872, %771, %734
  %1032 = phi i32 [ %1020, %1025 ], [ %886, %883 ], [ 0, %771 ], [ 0, %734 ], [ 0, %872 ], [ 0, %878 ]
  %1033 = phi i64 [ %1027, %1025 ], [ %482, %883 ], [ %482, %771 ], [ %482, %734 ], [ %482, %872 ], [ %482, %878 ]
  %1034 = phi i64 [ %1029, %1025 ], [ %481, %883 ], [ %481, %771 ], [ %481, %734 ], [ %481, %872 ], [ %481, %878 ]
  %1035 = phi ptr [ %1028, %1025 ], [ %480, %883 ], [ %480, %771 ], [ %480, %734 ], [ %480, %872 ], [ %480, %878 ]
  %1036 = icmp eq i32 %1032, 0
  br i1 %1036, label %479, label %1037, !llvm.loop !60

1037:                                             ; preds = %1031
  %1038 = load i32, ptr %462, align 8, !tbaa !24
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1043, label %1040

1040:                                             ; preds = %1037, %501
  %1041 = phi i64 [ %1033, %1037 ], [ %482, %501 ]
  %1042 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1042, align 4, !tbaa !61
  br label %1043

1043:                                             ; preds = %1040, %1037, %1025
  %1044 = phi i64 [ %1033, %1037 ], [ %1041, %1040 ], [ %1027, %1025 ]
  %1045 = freeze i64 %1044
  %1046 = icmp eq i64 %1045, 0
  %1047 = load i8, ptr %2, align 1
  %1048 = zext i8 %1047 to i32
  br i1 %1046, label %1049, label %1050

1049:                                             ; preds = %1043, %442, %433, %426, %340, %266, %119, %105, %100
  br label %1050

1050:                                             ; preds = %1049, %1043, %25, %11, %4, %1
  %1051 = phi i32 [ -1, %4 ], [ -1, %1 ], [ %31, %25 ], [ -1, %11 ], [ -1, %1049 ], [ %1048, %1043 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %1051
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @gzungetc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %755, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %755

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %10 = load i32, ptr %9, align 8, !tbaa !26
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %254

12:                                               ; preds = %8
  %13 = load i32, ptr %1, align 8, !tbaa !19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %254

15:                                               ; preds = %12
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %18 = load i32, ptr %17, align 8, !tbaa !27
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %22 = load i32, ptr %21, align 4, !tbaa !28
  %23 = zext i32 %22 to i64
  %24 = tail call noalias ptr @malloc(i64 noundef %23) #15
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %24, ptr %25, align 8, !tbaa !29
  %26 = load i32, ptr %21, align 4, !tbaa !28
  %27 = shl i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #15
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %29, ptr %30, align 8, !tbaa !30
  %31 = icmp eq ptr %24, null
  %32 = icmp eq ptr %29, null
  %33 = or i1 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  tail call void @free(ptr noundef %29) #13
  tail call void @free(ptr noundef %24) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %254

35:                                               ; preds = %20
  %36 = load i32, ptr %21, align 4, !tbaa !28
  store i32 %36, ptr %17, align 8, !tbaa !27
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 0, ptr %38, align 8, !tbaa !25
  store ptr null, ptr %16, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false)
  %39 = tail call i32 @inflateInit2_(ptr noundef nonnull %16, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %30, align 8, !tbaa !30
  tail call void @free(ptr noundef %42) #13
  %43 = load ptr, ptr %25, align 8, !tbaa !29
  tail call void @free(ptr noundef %43) #13
  store i32 0, ptr %17, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %254

44:                                               ; preds = %35, %15
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %46 = load i32, ptr %45, align 8, !tbaa !32
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %50 = load i32, ptr %49, align 4, !tbaa !33
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48, %44
  %53 = tail call i32 @inflateReset(ptr noundef nonnull %16) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %55 = load i32, ptr %54, align 4, !tbaa !33
  %56 = icmp ne i32 %55, -1
  %57 = zext i1 %56 to i32
  store i32 %57, ptr %54, align 4, !tbaa !33
  store i32 0, ptr %45, align 8, !tbaa !32
  br label %254

58:                                               ; preds = %48
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %60 = load i32, ptr %59, align 8, !tbaa !16
  switch i32 %60, label %254 [
    i32 0, label %61
    i32 -5, label %61
  ]

61:                                               ; preds = %58, %58
  %62 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %63 = load i32, ptr %62, align 8, !tbaa !24
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %66 = load i32, ptr %65, align 8, !tbaa !34
  br i1 %64, label %67, label %219

67:                                               ; preds = %61
  %68 = icmp eq i32 %66, 0
  br i1 %68, label %176, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %71 = load ptr, ptr %70, align 8, !tbaa !29
  %72 = load ptr, ptr %16, align 8, !tbaa !35
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %176, label %74

74:                                               ; preds = %69
  %75 = ptrtoaddr ptr %72 to i64
  %76 = ptrtoaddr ptr %71 to i64
  %77 = zext i32 %66 to i64
  %78 = icmp ult i32 %66, 4
  %79 = sub i64 %76, %75
  %80 = icmp ult i64 %79, 32
  %81 = or i1 %78, %80
  br i1 %81, label %121, label %82

82:                                               ; preds = %74
  %83 = icmp ult i32 %66, 32
  br i1 %83, label %105, label %84

84:                                               ; preds = %82
  %85 = and i64 %77, 28
  %86 = and i64 %77, 4294967264
  %87 = getelementptr i8, ptr %71, i64 %86
  %88 = getelementptr i8, ptr %72, i64 %86
  %89 = trunc nuw i64 %86 to i32
  %90 = sub i32 %66, %89
  br label %91

91:                                               ; preds = %91, %84
  %92 = phi i64 [ 0, %84 ], [ %99, %91 ]
  %93 = getelementptr i8, ptr %71, i64 %92
  %94 = getelementptr i8, ptr %72, i64 %92
  %95 = getelementptr i8, ptr %94, i64 16
  %96 = load <16 x i8>, ptr %94, align 1, !tbaa !36
  %97 = load <16 x i8>, ptr %95, align 1, !tbaa !36
  %98 = getelementptr i8, ptr %93, i64 16
  store <16 x i8> %96, ptr %93, align 1, !tbaa !36
  store <16 x i8> %97, ptr %98, align 1, !tbaa !36
  %99 = add nuw i64 %92, 32
  %100 = icmp eq i64 %99, %86
  br i1 %100, label %101, label %91, !llvm.loop !86

101:                                              ; preds = %91
  %102 = icmp eq i64 %86, %77
  br i1 %102, label %174, label %103

103:                                              ; preds = %101
  %104 = icmp eq i64 %85, 0
  br i1 %104, label %121, label %105, !prof !41

105:                                              ; preds = %103, %82
  %106 = phi i64 [ %86, %103 ], [ 0, %82 ]
  %107 = and i64 %77, 4294967292
  %108 = getelementptr i8, ptr %71, i64 %107
  %109 = getelementptr i8, ptr %72, i64 %107
  %110 = trunc nuw i64 %107 to i32
  %111 = sub i32 %66, %110
  br label %112

112:                                              ; preds = %112, %105
  %113 = phi i64 [ %106, %105 ], [ %117, %112 ]
  %114 = getelementptr i8, ptr %71, i64 %113
  %115 = getelementptr i8, ptr %72, i64 %113
  %116 = load <4 x i8>, ptr %115, align 1, !tbaa !36
  store <4 x i8> %116, ptr %114, align 1, !tbaa !36
  %117 = add nuw i64 %113, 4
  %118 = icmp eq i64 %117, %107
  br i1 %118, label %119, label %112, !llvm.loop !87

119:                                              ; preds = %112
  %120 = icmp eq i64 %107, %77
  br i1 %120, label %174, label %121

121:                                              ; preds = %119, %103, %74
  %122 = phi ptr [ %71, %74 ], [ %87, %103 ], [ %108, %119 ]
  %123 = phi ptr [ %72, %74 ], [ %88, %103 ], [ %109, %119 ]
  %124 = phi i32 [ %66, %74 ], [ %90, %103 ], [ %111, %119 ]
  %125 = add i32 %124, -1
  %126 = and i32 %124, 7
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %128, %121
  %129 = phi ptr [ %135, %128 ], [ %122, %121 ]
  %130 = phi ptr [ %133, %128 ], [ %123, %121 ]
  %131 = phi i32 [ %136, %128 ], [ %124, %121 ]
  %132 = phi i32 [ %137, %128 ], [ 0, %121 ]
  %133 = getelementptr inbounds nuw i8, ptr %130, i64 1
  %134 = load i8, ptr %130, align 1, !tbaa !36
  %135 = getelementptr inbounds nuw i8, ptr %129, i64 1
  store i8 %134, ptr %129, align 1, !tbaa !36
  %136 = add i32 %131, -1
  %137 = add i32 %132, 1
  %138 = icmp eq i32 %137, %126
  br i1 %138, label %139, label %128, !llvm.loop !88

139:                                              ; preds = %128, %121
  %140 = phi ptr [ %122, %121 ], [ %135, %128 ]
  %141 = phi ptr [ %123, %121 ], [ %133, %128 ]
  %142 = phi i32 [ %124, %121 ], [ %136, %128 ]
  %143 = icmp ult i32 %125, 7
  br i1 %143, label %174, label %144

144:                                              ; preds = %144, %139
  %145 = phi ptr [ %171, %144 ], [ %140, %139 ]
  %146 = phi ptr [ %169, %144 ], [ %141, %139 ]
  %147 = phi i32 [ %172, %144 ], [ %142, %139 ]
  %148 = getelementptr inbounds nuw i8, ptr %146, i64 1
  %149 = load i8, ptr %146, align 1, !tbaa !36
  %150 = getelementptr inbounds nuw i8, ptr %145, i64 1
  store i8 %149, ptr %145, align 1, !tbaa !36
  %151 = getelementptr inbounds nuw i8, ptr %146, i64 2
  %152 = load i8, ptr %148, align 1, !tbaa !36
  %153 = getelementptr inbounds nuw i8, ptr %145, i64 2
  store i8 %152, ptr %150, align 1, !tbaa !36
  %154 = getelementptr inbounds nuw i8, ptr %146, i64 3
  %155 = load i8, ptr %151, align 1, !tbaa !36
  %156 = getelementptr inbounds nuw i8, ptr %145, i64 3
  store i8 %155, ptr %153, align 1, !tbaa !36
  %157 = getelementptr inbounds nuw i8, ptr %146, i64 4
  %158 = load i8, ptr %154, align 1, !tbaa !36
  %159 = getelementptr inbounds nuw i8, ptr %145, i64 4
  store i8 %158, ptr %156, align 1, !tbaa !36
  %160 = getelementptr inbounds nuw i8, ptr %146, i64 5
  %161 = load i8, ptr %157, align 1, !tbaa !36
  %162 = getelementptr inbounds nuw i8, ptr %145, i64 5
  store i8 %161, ptr %159, align 1, !tbaa !36
  %163 = getelementptr inbounds nuw i8, ptr %146, i64 6
  %164 = load i8, ptr %160, align 1, !tbaa !36
  %165 = getelementptr inbounds nuw i8, ptr %145, i64 6
  store i8 %164, ptr %162, align 1, !tbaa !36
  %166 = getelementptr inbounds nuw i8, ptr %146, i64 7
  %167 = load i8, ptr %163, align 1, !tbaa !36
  %168 = getelementptr inbounds nuw i8, ptr %145, i64 7
  store i8 %167, ptr %165, align 1, !tbaa !36
  %169 = getelementptr inbounds nuw i8, ptr %146, i64 8
  %170 = load i8, ptr %166, align 1, !tbaa !36
  %171 = getelementptr inbounds nuw i8, ptr %145, i64 8
  store i8 %170, ptr %168, align 1, !tbaa !36
  %172 = add i32 %147, -8
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %144, !llvm.loop !89

174:                                              ; preds = %144, %139, %119, %101
  %175 = load i32, ptr %65, align 8, !tbaa !34
  br label %176

176:                                              ; preds = %174, %69, %67
  %177 = phi i32 [ %175, %174 ], [ %66, %69 ], [ 0, %67 ]
  %178 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %179 = load ptr, ptr %178, align 8, !tbaa !29
  %180 = zext i32 %177 to i64
  %181 = getelementptr inbounds nuw i8, ptr %179, i64 %180
  %182 = load i32, ptr %17, align 8, !tbaa !27
  %183 = sub i32 %182, %177
  %184 = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 0, ptr %184, align 4, !tbaa !17
  %185 = tail call ptr @__errno_location() #16
  store i32 0, ptr %185, align 4, !tbaa !4
  %186 = getelementptr inbounds nuw i8, ptr %1, i64 28
  br label %187

187:                                              ; preds = %198, %176
  %188 = phi i32 [ 0, %176 ], [ %199, %198 ]
  %189 = sub i32 %183, %188
  %190 = tail call i32 @llvm.umin.i32(i32 %189, i32 1073741824)
  %191 = load i32, ptr %186, align 4, !tbaa !46
  %192 = zext i32 %188 to i64
  %193 = getelementptr inbounds nuw i8, ptr %181, i64 %192
  %194 = zext nneg i32 %190 to i64
  %195 = tail call i64 @read(i32 noundef %191, ptr noundef %193, i64 noundef %194) #13
  %196 = trunc i64 %195 to i32
  %197 = icmp slt i32 %196, 1
  br i1 %197, label %201, label %198

198:                                              ; preds = %187
  %199 = add i32 %188, %196
  %200 = icmp ult i32 %199, %183
  br i1 %200, label %187, label %214, !llvm.loop !47

201:                                              ; preds = %187
  %202 = icmp slt i32 %196, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %201
  %204 = load i32, ptr %185, align 4, !tbaa !4
  %205 = icmp eq i32 %204, 11
  br i1 %205, label %206, label %211

206:                                              ; preds = %203
  store i32 1, ptr %184, align 4, !tbaa !17
  %207 = icmp eq i32 %188, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %206
  %209 = load i32, ptr %185, align 4, !tbaa !4
  br label %211

210:                                              ; preds = %201
  store i32 1, ptr %62, align 8, !tbaa !24
  br label %214

211:                                              ; preds = %208, %203
  %212 = phi i32 [ %209, %208 ], [ %204, %203 ]
  %213 = tail call ptr @strerror(i32 noundef %212) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %213) #13
  br label %254

214:                                              ; preds = %210, %206, %198
  %215 = phi i32 [ %188, %206 ], [ %188, %210 ], [ %199, %198 ]
  %216 = load i32, ptr %65, align 8, !tbaa !34
  %217 = add i32 %216, %215
  store i32 %217, ptr %65, align 8, !tbaa !34
  %218 = load ptr, ptr %178, align 8, !tbaa !29
  store ptr %218, ptr %16, align 8, !tbaa !35
  br label %219

219:                                              ; preds = %214, %61
  %220 = phi i32 [ %217, %214 ], [ %66, %61 ]
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %254, label %222

222:                                              ; preds = %219
  %223 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %224 = load i32, ptr %223, align 4, !tbaa !17
  %225 = icmp ne i32 %224, 0
  %226 = icmp ult i32 %220, 4
  %227 = and i1 %226, %225
  br i1 %227, label %254, label %228

228:                                              ; preds = %222
  %229 = icmp ugt i32 %220, 3
  %230 = load ptr, ptr %16, align 8, !tbaa !35
  br i1 %229, label %231, label %248

231:                                              ; preds = %228
  %232 = load i8, ptr %230, align 1, !tbaa !36
  %233 = icmp eq i8 %232, 31
  br i1 %233, label %234, label %248

234:                                              ; preds = %231
  %235 = getelementptr inbounds nuw i8, ptr %230, i64 1
  %236 = load i8, ptr %235, align 1, !tbaa !36
  %237 = icmp eq i8 %236, -117
  br i1 %237, label %238, label %248

238:                                              ; preds = %234
  %239 = getelementptr inbounds nuw i8, ptr %230, i64 2
  %240 = load i8, ptr %239, align 1, !tbaa !36
  %241 = icmp eq i8 %240, 8
  br i1 %241, label %242, label %248

242:                                              ; preds = %238
  %243 = getelementptr inbounds nuw i8, ptr %230, i64 3
  %244 = load i8, ptr %243, align 1, !tbaa !36
  %245 = icmp ult i8 %244, 32
  br i1 %245, label %246, label %248

246:                                              ; preds = %242
  %247 = tail call i32 @inflateReset(ptr noundef nonnull %16) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  store i32 1, ptr %49, align 4, !tbaa !33
  store i32 0, ptr %45, align 8, !tbaa !32
  br label %254

248:                                              ; preds = %242, %238, %234, %231, %228
  %249 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %250 = load ptr, ptr %249, align 8, !tbaa !30
  %251 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %250, ptr %251, align 8, !tbaa !20
  %252 = zext i32 %220 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %250, ptr align 1 %230, i64 %252, i1 false)
  %253 = load i32, ptr %65, align 8, !tbaa !34
  store i32 %253, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %65, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %254

254:                                              ; preds = %248, %246, %222, %219, %211, %58, %52, %41, %34, %12, %8
  %255 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %256 = load i32, ptr %255, align 8, !tbaa !16
  switch i32 %256, label %257 [
    i32 0, label %261
    i32 -5, label %261
  ]

257:                                              ; preds = %254
  %258 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %259 = load i32, ptr %258, align 4, !tbaa !17
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %755, label %261

261:                                              ; preds = %257, %254, %254
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef 0, ptr noundef null) #13
  %262 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %263 = load i64, ptr %262, align 8, !tbaa !18
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %690, label %265

265:                                              ; preds = %261
  %266 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %267 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %268 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %269 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %270 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %271 = getelementptr inbounds nuw i8, ptr %1, i64 168
  %272 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %273 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %274 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %275 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %276 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %277 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %278 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %279 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %280 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %281 = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %282

282:                                              ; preds = %685, %265
  %283 = phi i64 [ %686, %685 ], [ %263, %265 ]
  %284 = load i32, ptr %1, align 8, !tbaa !19
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %305, label %286

286:                                              ; preds = %282
  %287 = zext i32 %284 to i64
  %288 = tail call i64 @llvm.smin.i64(i64 %283, i64 %287)
  %289 = trunc i64 %288 to i32
  %290 = sub i32 %284, %289
  store i32 %290, ptr %1, align 8, !tbaa !19
  %291 = load ptr, ptr %266, align 8, !tbaa !20
  %292 = and i64 %288, 4294967295
  %293 = getelementptr inbounds nuw i8, ptr %291, i64 %292
  store ptr %293, ptr %266, align 8, !tbaa !20
  %294 = load i64, ptr %267, align 8, !tbaa !21
  %295 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %294, i64 %292), !nosanitize !22
  %296 = extractvalue { i64, i1 } %295, 1, !nosanitize !22
  br i1 %296, label %297, label %298, !prof !23, !nosanitize !22

297:                                              ; preds = %286
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

298:                                              ; preds = %286
  %299 = extractvalue { i64, i1 } %295, 0, !nosanitize !22
  store i64 %299, ptr %267, align 8, !tbaa !21
  %300 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %283, i64 %292), !nosanitize !22
  %301 = extractvalue { i64, i1 } %300, 1, !nosanitize !22
  br i1 %301, label %302, label %303, !prof !23, !nosanitize !22

302:                                              ; preds = %298
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !22
  unreachable, !nosanitize !22

303:                                              ; preds = %298
  %304 = extractvalue { i64, i1 } %300, 0, !nosanitize !22
  store i64 %304, ptr %262, align 8, !tbaa !18
  br label %685

305:                                              ; preds = %282
  %306 = load i32, ptr %268, align 8, !tbaa !24
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %311, label %308

308:                                              ; preds = %305
  %309 = load i32, ptr %269, align 8, !tbaa !25
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %688, label %311

311:                                              ; preds = %308, %305
  br label %312

312:                                              ; preds = %682, %311
  %313 = load i32, ptr %9, align 8, !tbaa !26
  switch i32 %313, label %670 [
    i32 0, label %314
    i32 1, label %537
    i32 2, label %573
  ]

314:                                              ; preds = %312
  %315 = load i32, ptr %270, align 8, !tbaa !27
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %336

317:                                              ; preds = %314
  %318 = load i32, ptr %279, align 4, !tbaa !28
  %319 = zext i32 %318 to i64
  %320 = tail call noalias ptr @malloc(i64 noundef %319) #15
  store ptr %320, ptr %275, align 8, !tbaa !29
  %321 = load i32, ptr %279, align 4, !tbaa !28
  %322 = shl i32 %321, 1
  %323 = zext i32 %322 to i64
  %324 = tail call noalias ptr @malloc(i64 noundef %323) #15
  store ptr %324, ptr %272, align 8, !tbaa !30
  %325 = icmp eq ptr %320, null
  %326 = icmp eq ptr %324, null
  %327 = or i1 %325, %326
  br i1 %327, label %328, label %329

328:                                              ; preds = %317
  tail call void @free(ptr noundef %324) #13
  tail call void @free(ptr noundef %320) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %755

329:                                              ; preds = %317
  %330 = load i32, ptr %279, align 4, !tbaa !28
  store i32 %330, ptr %270, align 8, !tbaa !27
  store i32 0, ptr %269, align 8, !tbaa !25
  store ptr null, ptr %274, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %280, i8 0, i64 24, i1 false)
  %331 = tail call i32 @inflateInit2_(ptr noundef nonnull %274, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %336, label %333

333:                                              ; preds = %329
  %334 = load ptr, ptr %272, align 8, !tbaa !30
  tail call void @free(ptr noundef %334) #13
  %335 = load ptr, ptr %275, align 8, !tbaa !29
  tail call void @free(ptr noundef %335) #13
  store i32 0, ptr %270, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %755

336:                                              ; preds = %329, %314
  %337 = load i32, ptr %281, align 8, !tbaa !32
  %338 = icmp eq i32 %337, -1
  br i1 %338, label %342, label %339

339:                                              ; preds = %336
  %340 = load i32, ptr %278, align 4, !tbaa !33
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %339, %336
  %343 = tail call i32 @inflateReset(ptr noundef nonnull %274) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  %344 = load i32, ptr %278, align 4, !tbaa !33
  %345 = icmp ne i32 %344, -1
  %346 = zext i1 %345 to i32
  store i32 %346, ptr %278, align 4, !tbaa !33
  store i32 0, ptr %281, align 8, !tbaa !32
  br label %534

347:                                              ; preds = %339
  %348 = load i32, ptr %255, align 8, !tbaa !16
  switch i32 %348, label %755 [
    i32 0, label %349
    i32 -5, label %349
  ]

349:                                              ; preds = %347, %347
  %350 = load i32, ptr %268, align 8, !tbaa !24
  %351 = icmp eq i32 %350, 0
  %352 = load i32, ptr %269, align 8, !tbaa !34
  br i1 %351, label %353, label %502

353:                                              ; preds = %349
  %354 = icmp eq i32 %352, 0
  %355 = load ptr, ptr %275, align 8, !tbaa !29
  %356 = ptrtoaddr ptr %355 to i64
  br i1 %354, label %462, label %357

357:                                              ; preds = %353
  %358 = load ptr, ptr %274, align 8, !tbaa !35
  %359 = icmp eq ptr %358, %355
  br i1 %359, label %462, label %360

360:                                              ; preds = %357
  %361 = ptrtoaddr ptr %358 to i64
  %362 = zext i32 %352 to i64
  %363 = icmp ult i32 %352, 4
  %364 = sub i64 %356, %361
  %365 = icmp ult i64 %364, 32
  %366 = select i1 %363, i1 true, i1 %365
  br i1 %366, label %406, label %367

367:                                              ; preds = %360
  %368 = icmp ult i32 %352, 32
  br i1 %368, label %390, label %369

369:                                              ; preds = %367
  %370 = and i64 %362, 28
  %371 = and i64 %362, 4294967264
  %372 = getelementptr i8, ptr %355, i64 %371
  %373 = getelementptr i8, ptr %358, i64 %371
  %374 = trunc nuw i64 %371 to i32
  %375 = sub i32 %352, %374
  br label %376

376:                                              ; preds = %376, %369
  %377 = phi i64 [ 0, %369 ], [ %384, %376 ]
  %378 = getelementptr i8, ptr %355, i64 %377
  %379 = getelementptr i8, ptr %358, i64 %377
  %380 = getelementptr i8, ptr %379, i64 16
  %381 = load <16 x i8>, ptr %379, align 1, !tbaa !36
  %382 = load <16 x i8>, ptr %380, align 1, !tbaa !36
  %383 = getelementptr i8, ptr %378, i64 16
  store <16 x i8> %381, ptr %378, align 1, !tbaa !36
  store <16 x i8> %382, ptr %383, align 1, !tbaa !36
  %384 = add nuw i64 %377, 32
  %385 = icmp eq i64 %384, %371
  br i1 %385, label %386, label %376, !llvm.loop !90

386:                                              ; preds = %376
  %387 = icmp eq i64 %371, %362
  br i1 %387, label %459, label %388

388:                                              ; preds = %386
  %389 = icmp eq i64 %370, 0
  br i1 %389, label %406, label %390, !prof !41

390:                                              ; preds = %388, %367
  %391 = phi i64 [ %371, %388 ], [ 0, %367 ]
  %392 = and i64 %362, 4294967292
  %393 = getelementptr i8, ptr %355, i64 %392
  %394 = getelementptr i8, ptr %358, i64 %392
  %395 = trunc nuw i64 %392 to i32
  %396 = sub i32 %352, %395
  br label %397

397:                                              ; preds = %397, %390
  %398 = phi i64 [ %391, %390 ], [ %402, %397 ]
  %399 = getelementptr i8, ptr %355, i64 %398
  %400 = getelementptr i8, ptr %358, i64 %398
  %401 = load <4 x i8>, ptr %400, align 1, !tbaa !36
  store <4 x i8> %401, ptr %399, align 1, !tbaa !36
  %402 = add nuw i64 %398, 4
  %403 = icmp eq i64 %402, %392
  br i1 %403, label %404, label %397, !llvm.loop !91

404:                                              ; preds = %397
  %405 = icmp eq i64 %392, %362
  br i1 %405, label %459, label %406

406:                                              ; preds = %404, %388, %360
  %407 = phi ptr [ %355, %360 ], [ %372, %388 ], [ %393, %404 ]
  %408 = phi ptr [ %358, %360 ], [ %373, %388 ], [ %394, %404 ]
  %409 = phi i32 [ %352, %360 ], [ %375, %388 ], [ %396, %404 ]
  %410 = add i32 %409, -1
  %411 = and i32 %409, 7
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %424, label %413

413:                                              ; preds = %413, %406
  %414 = phi ptr [ %420, %413 ], [ %407, %406 ]
  %415 = phi ptr [ %418, %413 ], [ %408, %406 ]
  %416 = phi i32 [ %421, %413 ], [ %409, %406 ]
  %417 = phi i32 [ %422, %413 ], [ 0, %406 ]
  %418 = getelementptr inbounds nuw i8, ptr %415, i64 1
  %419 = load i8, ptr %415, align 1, !tbaa !36
  %420 = getelementptr inbounds nuw i8, ptr %414, i64 1
  store i8 %419, ptr %414, align 1, !tbaa !36
  %421 = add i32 %416, -1
  %422 = add i32 %417, 1
  %423 = icmp eq i32 %422, %411
  br i1 %423, label %424, label %413, !llvm.loop !92

424:                                              ; preds = %413, %406
  %425 = phi ptr [ %407, %406 ], [ %420, %413 ]
  %426 = phi ptr [ %408, %406 ], [ %418, %413 ]
  %427 = phi i32 [ %409, %406 ], [ %421, %413 ]
  %428 = icmp ult i32 %410, 7
  br i1 %428, label %459, label %429

429:                                              ; preds = %429, %424
  %430 = phi ptr [ %456, %429 ], [ %425, %424 ]
  %431 = phi ptr [ %454, %429 ], [ %426, %424 ]
  %432 = phi i32 [ %457, %429 ], [ %427, %424 ]
  %433 = getelementptr inbounds nuw i8, ptr %431, i64 1
  %434 = load i8, ptr %431, align 1, !tbaa !36
  %435 = getelementptr inbounds nuw i8, ptr %430, i64 1
  store i8 %434, ptr %430, align 1, !tbaa !36
  %436 = getelementptr inbounds nuw i8, ptr %431, i64 2
  %437 = load i8, ptr %433, align 1, !tbaa !36
  %438 = getelementptr inbounds nuw i8, ptr %430, i64 2
  store i8 %437, ptr %435, align 1, !tbaa !36
  %439 = getelementptr inbounds nuw i8, ptr %431, i64 3
  %440 = load i8, ptr %436, align 1, !tbaa !36
  %441 = getelementptr inbounds nuw i8, ptr %430, i64 3
  store i8 %440, ptr %438, align 1, !tbaa !36
  %442 = getelementptr inbounds nuw i8, ptr %431, i64 4
  %443 = load i8, ptr %439, align 1, !tbaa !36
  %444 = getelementptr inbounds nuw i8, ptr %430, i64 4
  store i8 %443, ptr %441, align 1, !tbaa !36
  %445 = getelementptr inbounds nuw i8, ptr %431, i64 5
  %446 = load i8, ptr %442, align 1, !tbaa !36
  %447 = getelementptr inbounds nuw i8, ptr %430, i64 5
  store i8 %446, ptr %444, align 1, !tbaa !36
  %448 = getelementptr inbounds nuw i8, ptr %431, i64 6
  %449 = load i8, ptr %445, align 1, !tbaa !36
  %450 = getelementptr inbounds nuw i8, ptr %430, i64 6
  store i8 %449, ptr %447, align 1, !tbaa !36
  %451 = getelementptr inbounds nuw i8, ptr %431, i64 7
  %452 = load i8, ptr %448, align 1, !tbaa !36
  %453 = getelementptr inbounds nuw i8, ptr %430, i64 7
  store i8 %452, ptr %450, align 1, !tbaa !36
  %454 = getelementptr inbounds nuw i8, ptr %431, i64 8
  %455 = load i8, ptr %451, align 1, !tbaa !36
  %456 = getelementptr inbounds nuw i8, ptr %430, i64 8
  store i8 %455, ptr %453, align 1, !tbaa !36
  %457 = add i32 %432, -8
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %429, !llvm.loop !93

459:                                              ; preds = %429, %424, %404, %386
  %460 = load i32, ptr %269, align 8, !tbaa !34
  %461 = load ptr, ptr %275, align 8, !tbaa !29
  br label %462

462:                                              ; preds = %459, %357, %353
  %463 = phi ptr [ %461, %459 ], [ %355, %357 ], [ %355, %353 ]
  %464 = phi i32 [ %460, %459 ], [ %352, %357 ], [ 0, %353 ]
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds nuw i8, ptr %463, i64 %465
  %467 = load i32, ptr %270, align 8, !tbaa !27
  %468 = sub i32 %467, %464
  store i32 0, ptr %276, align 4, !tbaa !17
  %469 = tail call ptr @__errno_location() #16
  store i32 0, ptr %469, align 4, !tbaa !4
  br label %470

470:                                              ; preds = %481, %462
  %471 = phi i32 [ 0, %462 ], [ %482, %481 ]
  %472 = sub i32 %468, %471
  %473 = tail call i32 @llvm.umin.i32(i32 %472, i32 1073741824)
  %474 = load i32, ptr %277, align 4, !tbaa !46
  %475 = zext i32 %471 to i64
  %476 = getelementptr inbounds nuw i8, ptr %466, i64 %475
  %477 = zext nneg i32 %473 to i64
  %478 = tail call i64 @read(i32 noundef %474, ptr noundef %476, i64 noundef %477) #13
  %479 = trunc i64 %478 to i32
  %480 = icmp slt i32 %479, 1
  br i1 %480, label %484, label %481

481:                                              ; preds = %470
  %482 = add i32 %471, %479
  %483 = icmp ult i32 %482, %468
  br i1 %483, label %470, label %497, !llvm.loop !47

484:                                              ; preds = %470
  %485 = icmp slt i32 %479, 0
  br i1 %485, label %486, label %493

486:                                              ; preds = %484
  %487 = load i32, ptr %469, align 4, !tbaa !4
  %488 = icmp eq i32 %487, 11
  br i1 %488, label %489, label %494

489:                                              ; preds = %486
  store i32 1, ptr %276, align 4, !tbaa !17
  %490 = icmp eq i32 %471, 0
  br i1 %490, label %491, label %497

491:                                              ; preds = %489
  %492 = load i32, ptr %469, align 4, !tbaa !4
  br label %494

493:                                              ; preds = %484
  store i32 1, ptr %268, align 8, !tbaa !24
  br label %497

494:                                              ; preds = %491, %486
  %495 = phi i32 [ %492, %491 ], [ %487, %486 ]
  %496 = tail call ptr @strerror(i32 noundef %495) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %496) #13
  br label %755

497:                                              ; preds = %493, %489, %481
  %498 = phi i32 [ %471, %489 ], [ %471, %493 ], [ %482, %481 ]
  %499 = load i32, ptr %269, align 8, !tbaa !34
  %500 = add i32 %499, %498
  store i32 %500, ptr %269, align 8, !tbaa !34
  %501 = load ptr, ptr %275, align 8, !tbaa !29
  store ptr %501, ptr %274, align 8, !tbaa !35
  br label %502

502:                                              ; preds = %497, %349
  %503 = phi i32 [ %500, %497 ], [ %352, %349 ]
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %534, label %505

505:                                              ; preds = %502
  %506 = load i32, ptr %276, align 4, !tbaa !17
  %507 = icmp ne i32 %506, 0
  %508 = icmp ult i32 %503, 4
  %509 = and i1 %508, %507
  br i1 %509, label %534, label %510

510:                                              ; preds = %505
  %511 = icmp ugt i32 %503, 3
  %512 = load ptr, ptr %274, align 8, !tbaa !35
  br i1 %511, label %513, label %530

513:                                              ; preds = %510
  %514 = load i8, ptr %512, align 1, !tbaa !36
  %515 = icmp eq i8 %514, 31
  br i1 %515, label %516, label %530

516:                                              ; preds = %513
  %517 = getelementptr inbounds nuw i8, ptr %512, i64 1
  %518 = load i8, ptr %517, align 1, !tbaa !36
  %519 = icmp eq i8 %518, -117
  br i1 %519, label %520, label %530

520:                                              ; preds = %516
  %521 = getelementptr inbounds nuw i8, ptr %512, i64 2
  %522 = load i8, ptr %521, align 1, !tbaa !36
  %523 = icmp eq i8 %522, 8
  br i1 %523, label %524, label %530

524:                                              ; preds = %520
  %525 = getelementptr inbounds nuw i8, ptr %512, i64 3
  %526 = load i8, ptr %525, align 1, !tbaa !36
  %527 = icmp ult i8 %526, 32
  br i1 %527, label %528, label %530

528:                                              ; preds = %524
  %529 = tail call i32 @inflateReset(ptr noundef nonnull %274) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  store i32 1, ptr %278, align 4, !tbaa !33
  store i32 0, ptr %281, align 8, !tbaa !32
  br label %671

530:                                              ; preds = %524, %520, %516, %513, %510
  %531 = load ptr, ptr %272, align 8, !tbaa !30
  store ptr %531, ptr %266, align 8, !tbaa !20
  %532 = zext i32 %503 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %531, ptr align 1 %512, i64 %532, i1 false)
  %533 = load i32, ptr %269, align 8, !tbaa !34
  store i32 %533, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %269, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %673

534:                                              ; preds = %505, %502, %342
  %535 = load i32, ptr %9, align 8, !tbaa !26
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %683, label %671

537:                                              ; preds = %312
  %538 = load ptr, ptr %272, align 8, !tbaa !30
  %539 = load i32, ptr %270, align 8, !tbaa !27
  %540 = shl i32 %539, 1
  store i32 0, ptr %276, align 4, !tbaa !17
  %541 = tail call ptr @__errno_location() #16
  store i32 0, ptr %541, align 4, !tbaa !4
  store i32 0, ptr %1, align 8, !tbaa !4
  br label %542

542:                                              ; preds = %553, %537
  %543 = phi i32 [ %555, %553 ], [ 0, %537 ]
  %544 = sub i32 %540, %543
  %545 = tail call i32 @llvm.umin.i32(i32 %544, i32 1073741824)
  %546 = load i32, ptr %277, align 4, !tbaa !46
  %547 = zext i32 %543 to i64
  %548 = getelementptr inbounds nuw i8, ptr %538, i64 %547
  %549 = zext nneg i32 %545 to i64
  %550 = tail call i64 @read(i32 noundef %546, ptr noundef %548, i64 noundef %549) #13
  %551 = trunc i64 %550 to i32
  %552 = icmp slt i32 %551, 1
  br i1 %552, label %557, label %553

553:                                              ; preds = %542
  %554 = load i32, ptr %1, align 4, !tbaa !4
  %555 = add i32 %554, %551
  store i32 %555, ptr %1, align 4, !tbaa !4
  %556 = icmp ult i32 %555, %540
  br i1 %556, label %542, label %571, !llvm.loop !47

557:                                              ; preds = %542
  %558 = icmp slt i32 %551, 0
  br i1 %558, label %559, label %567

559:                                              ; preds = %557
  %560 = load i32, ptr %541, align 4, !tbaa !4
  %561 = icmp eq i32 %560, 11
  br i1 %561, label %562, label %568

562:                                              ; preds = %559
  store i32 1, ptr %276, align 4, !tbaa !17
  %563 = load i32, ptr %1, align 4, !tbaa !4
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %571

565:                                              ; preds = %562
  %566 = load i32, ptr %541, align 4, !tbaa !4
  br label %568

567:                                              ; preds = %557
  store i32 1, ptr %268, align 8, !tbaa !24
  br label %571

568:                                              ; preds = %565, %559
  %569 = phi i32 [ %566, %565 ], [ %560, %559 ]
  %570 = tail call ptr @strerror(i32 noundef %569) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %570) #13
  br label %755

571:                                              ; preds = %567, %562, %553
  %572 = load ptr, ptr %272, align 8, !tbaa !30
  store ptr %572, ptr %266, align 8, !tbaa !20
  br label %683

573:                                              ; preds = %312
  %574 = load i32, ptr %270, align 8, !tbaa !27
  %575 = shl i32 %574, 1
  store i32 %575, ptr %271, align 8, !tbaa !48
  %576 = load ptr, ptr %272, align 8, !tbaa !30
  store ptr %576, ptr %273, align 8, !tbaa !49
  br label %577

577:                                              ; preds = %650, %573
  %578 = phi i32 [ 0, %573 ], [ %629, %650 ]
  %579 = load i32, ptr %269, align 8, !tbaa !34
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %581, label %628

581:                                              ; preds = %577
  %582 = load i32, ptr %255, align 8, !tbaa !16
  switch i32 %582, label %661 [
    i32 0, label %583
    i32 -5, label %583
  ]

583:                                              ; preds = %581, %581
  %584 = load i32, ptr %268, align 8, !tbaa !24
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %586, label %624

586:                                              ; preds = %583
  %587 = load ptr, ptr %275, align 8, !tbaa !29
  %588 = load i32, ptr %270, align 8, !tbaa !27
  store i32 0, ptr %276, align 4, !tbaa !17
  %589 = tail call ptr @__errno_location() #16
  store i32 0, ptr %589, align 4, !tbaa !4
  br label %590

590:                                              ; preds = %601, %586
  %591 = phi i32 [ 0, %586 ], [ %602, %601 ]
  %592 = sub i32 %588, %591
  %593 = tail call i32 @llvm.umin.i32(i32 %592, i32 1073741824)
  %594 = load i32, ptr %277, align 4, !tbaa !46
  %595 = zext i32 %591 to i64
  %596 = getelementptr inbounds nuw i8, ptr %587, i64 %595
  %597 = zext nneg i32 %593 to i64
  %598 = tail call i64 @read(i32 noundef %594, ptr noundef %596, i64 noundef %597) #13
  %599 = trunc i64 %598 to i32
  %600 = icmp slt i32 %599, 1
  br i1 %600, label %604, label %601

601:                                              ; preds = %590
  %602 = add i32 %591, %599
  %603 = icmp ult i32 %602, %588
  br i1 %603, label %590, label %618, !llvm.loop !47

604:                                              ; preds = %590
  %605 = icmp slt i32 %599, 0
  br i1 %605, label %606, label %613

606:                                              ; preds = %604
  %607 = load i32, ptr %589, align 4, !tbaa !4
  %608 = icmp eq i32 %607, 11
  br i1 %608, label %609, label %614

609:                                              ; preds = %606
  store i32 1, ptr %276, align 4, !tbaa !17
  %610 = icmp eq i32 %591, 0
  br i1 %610, label %611, label %618

611:                                              ; preds = %609
  %612 = load i32, ptr %589, align 4, !tbaa !4
  br label %614

613:                                              ; preds = %604
  store i32 1, ptr %268, align 8, !tbaa !24
  br label %618

614:                                              ; preds = %611, %606
  %615 = phi i32 [ %612, %611 ], [ %607, %606 ]
  %616 = tail call ptr @strerror(i32 noundef %615) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %616) #13
  %617 = load i32, ptr %255, align 8, !tbaa !16
  br label %661

618:                                              ; preds = %613, %609, %601
  %619 = phi i32 [ %591, %609 ], [ %591, %613 ], [ %602, %601 ]
  %620 = load i32, ptr %269, align 8, !tbaa !34
  %621 = add i32 %620, %619
  store i32 %621, ptr %269, align 8, !tbaa !34
  %622 = load ptr, ptr %275, align 8, !tbaa !29
  store ptr %622, ptr %274, align 8, !tbaa !35
  %623 = icmp eq i32 %621, 0
  br i1 %623, label %624, label %628

624:                                              ; preds = %618, %583
  %625 = load i32, ptr %276, align 4, !tbaa !17
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %627, label %661

627:                                              ; preds = %624
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %661

628:                                              ; preds = %618, %577
  %629 = tail call i32 @inflate(ptr noundef nonnull %274, i32 noundef 0) #13
  %630 = load i32, ptr %271, align 8, !tbaa !48
  %631 = icmp ult i32 %630, %575
  br i1 %631, label %632, label %633

632:                                              ; preds = %628
  store i32 0, ptr %278, align 4, !tbaa !33
  br label %633

633:                                              ; preds = %632, %628
  switch i32 %629, label %650 [
    i32 -2, label %634
    i32 2, label %634
    i32 -4, label %635
    i32 -3, label %636
  ]

634:                                              ; preds = %633, %633
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %661

635:                                              ; preds = %633
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %654

636:                                              ; preds = %633
  %637 = load i32, ptr %278, align 4, !tbaa !33
  %638 = icmp eq i32 %637, 1
  br i1 %638, label %639, label %645

639:                                              ; preds = %636
  store i32 0, ptr %269, align 8, !tbaa !34
  store i32 1, ptr %268, align 8, !tbaa !24
  store i32 0, ptr %9, align 8, !tbaa !26
  %640 = sub i32 %575, %630
  store i32 %640, ptr %1, align 8, !tbaa !19
  %641 = load ptr, ptr %273, align 8, !tbaa !49
  %642 = zext i32 %640 to i64
  %643 = sub nsw i64 0, %642
  %644 = getelementptr inbounds i8, ptr %641, i64 %643
  store ptr %644, ptr %266, align 8, !tbaa !20
  br label %671

645:                                              ; preds = %636
  %646 = getelementptr inbounds nuw i8, ptr %1, i64 184
  %647 = load ptr, ptr %646, align 8, !tbaa !50
  %648 = icmp eq ptr %647, null
  %649 = select i1 %648, ptr @.str.6, ptr %647
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull %649) #13
  br label %654

650:                                              ; preds = %633
  %651 = icmp ne i32 %630, 0
  %652 = icmp ne i32 %629, 1
  %653 = select i1 %651, i1 %652, i1 false
  br i1 %653, label %577, label %661, !llvm.loop !51

654:                                              ; preds = %645, %635
  %655 = load i32, ptr %271, align 8, !tbaa !48
  %656 = sub i32 %575, %655
  store i32 %656, ptr %1, align 8, !tbaa !19
  %657 = load ptr, ptr %273, align 8, !tbaa !49
  %658 = zext i32 %656 to i64
  %659 = sub nsw i64 0, %658
  %660 = getelementptr inbounds i8, ptr %657, i64 %659
  store ptr %660, ptr %266, align 8, !tbaa !20
  br label %755

661:                                              ; preds = %650, %634, %627, %624, %614, %581
  %662 = phi i32 [ %617, %614 ], [ %578, %624 ], [ %578, %627 ], [ %629, %634 ], [ %582, %581 ], [ %629, %650 ]
  %663 = load i32, ptr %271, align 8, !tbaa !48
  %664 = sub i32 %575, %663
  store i32 %664, ptr %1, align 8, !tbaa !19
  %665 = load ptr, ptr %273, align 8, !tbaa !49
  %666 = zext i32 %664 to i64
  %667 = sub nsw i64 0, %666
  %668 = getelementptr inbounds i8, ptr %665, i64 %667
  store ptr %668, ptr %266, align 8, !tbaa !20
  switch i32 %662, label %755 [
    i32 1, label %669
    i32 0, label %671
  ]

669:                                              ; preds = %661
  store i32 0, ptr %278, align 4, !tbaa !33
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %671

670:                                              ; preds = %312
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %755

671:                                              ; preds = %669, %661, %639, %534, %528
  %672 = load i32, ptr %1, align 8, !tbaa !19
  br label %673

673:                                              ; preds = %671, %530
  %674 = phi i32 [ %672, %671 ], [ %533, %530 ]
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %676, label %683

676:                                              ; preds = %673
  %677 = load i32, ptr %268, align 8, !tbaa !24
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %682, label %679

679:                                              ; preds = %676
  %680 = load i32, ptr %269, align 8, !tbaa !34
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %683, label %682

682:                                              ; preds = %679, %676
  br label %312, !llvm.loop !52

683:                                              ; preds = %679, %673, %571, %534
  %684 = load i64, ptr %262, align 8, !tbaa !18
  br label %685

685:                                              ; preds = %683, %303
  %686 = phi i64 [ %684, %683 ], [ %304, %303 ]
  %687 = icmp eq i64 %686, 0
  br i1 %687, label %688, label %282, !llvm.loop !53

688:                                              ; preds = %685, %308
  %689 = icmp slt i32 %0, 0
  br i1 %689, label %755, label %692

690:                                              ; preds = %261
  %691 = icmp slt i32 %0, 0
  br i1 %691, label %755, label %692

692:                                              ; preds = %690, %688
  %693 = load i32, ptr %1, align 8, !tbaa !19
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %695, label %714

695:                                              ; preds = %692
  store i32 1, ptr %1, align 8, !tbaa !19
  %696 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %697 = load ptr, ptr %696, align 8, !tbaa !30
  %698 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %699 = load i32, ptr %698, align 8, !tbaa !27
  %700 = shl i32 %699, 1
  %701 = zext i32 %700 to i64
  %702 = getelementptr inbounds nuw i8, ptr %697, i64 %701
  %703 = getelementptr inbounds i8, ptr %702, i64 -1
  %704 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %703, ptr %704, align 8, !tbaa !20
  %705 = trunc i32 %0 to i8
  store i8 %705, ptr %703, align 1, !tbaa !36
  %706 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %707 = load i64, ptr %706, align 8, !tbaa !21
  %708 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %707, i64 -1)
  %709 = extractvalue { i64, i1 } %708, 1, !nosanitize !22
  br i1 %709, label %710, label %711, !prof !23, !nosanitize !22

710:                                              ; preds = %742, %695
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !22
  unreachable, !nosanitize !22

711:                                              ; preds = %695
  %712 = extractvalue { i64, i1 } %708, 0, !nosanitize !22
  store i64 %712, ptr %706, align 8, !tbaa !21
  %713 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %713, align 4, !tbaa !61
  br label %755

714:                                              ; preds = %692
  %715 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %716 = load i32, ptr %715, align 8, !tbaa !27
  %717 = shl i32 %716, 1
  %718 = icmp eq i32 %693, %717
  br i1 %718, label %719, label %720

719:                                              ; preds = %714
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull @.str.2) #13
  br label %755

720:                                              ; preds = %714
  %721 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %722 = load ptr, ptr %721, align 8, !tbaa !20
  %723 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %724 = load ptr, ptr %723, align 8, !tbaa !30
  %725 = icmp eq ptr %722, %724
  br i1 %725, label %726, label %742

726:                                              ; preds = %720
  %727 = zext i32 %693 to i64
  %728 = getelementptr inbounds nuw i8, ptr %724, i64 %727
  %729 = zext i32 %717 to i64
  %730 = getelementptr inbounds nuw i8, ptr %724, i64 %729
  %731 = icmp ugt ptr %728, %722
  br i1 %731, label %732, label %742

732:                                              ; preds = %732, %726
  %733 = phi ptr [ %737, %732 ], [ %730, %726 ]
  %734 = phi ptr [ %735, %732 ], [ %728, %726 ]
  %735 = getelementptr inbounds i8, ptr %734, i64 -1
  %736 = load i8, ptr %735, align 1, !tbaa !36
  %737 = getelementptr inbounds i8, ptr %733, i64 -1
  store i8 %736, ptr %737, align 1, !tbaa !36
  %738 = load ptr, ptr %723, align 8, !tbaa !30
  %739 = icmp ugt ptr %735, %738
  br i1 %739, label %732, label %740, !llvm.loop !94

740:                                              ; preds = %732
  %741 = load i32, ptr %1, align 8, !tbaa !19
  br label %742

742:                                              ; preds = %740, %726, %720
  %743 = phi ptr [ %722, %720 ], [ %730, %726 ], [ %737, %740 ]
  %744 = phi i32 [ %693, %720 ], [ %693, %726 ], [ %741, %740 ]
  %745 = add i32 %744, 1
  store i32 %745, ptr %1, align 8, !tbaa !19
  %746 = getelementptr inbounds i8, ptr %743, i64 -1
  store ptr %746, ptr %721, align 8, !tbaa !20
  %747 = trunc i32 %0 to i8
  store i8 %747, ptr %746, align 1, !tbaa !36
  %748 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %749 = load i64, ptr %748, align 8, !tbaa !21
  %750 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %749, i64 -1)
  %751 = extractvalue { i64, i1 } %750, 1, !nosanitize !22
  br i1 %751, label %710, label %752, !prof !23, !nosanitize !22

752:                                              ; preds = %742
  %753 = extractvalue { i64, i1 } %750, 0, !nosanitize !22
  store i64 %753, ptr %748, align 8, !tbaa !21
  %754 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %754, align 4, !tbaa !61
  br label %755

755:                                              ; preds = %752, %719, %711, %690, %688, %670, %661, %654, %568, %494, %347, %333, %328, %257, %4, %2
  %756 = phi i32 [ -1, %4 ], [ -1, %2 ], [ -1, %257 ], [ -1, %688 ], [ %0, %711 ], [ -1, %719 ], [ %0, %752 ], [ -1, %690 ], [ -1, %654 ], [ -1, %333 ], [ -1, %670 ], [ -1, %568 ], [ -1, %494 ], [ -1, %328 ], [ -1, %661 ], [ -1, %347 ]
  ret i32 %756
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #5

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gzgets(ptr noundef %0, ptr noundef writeonly captures(address, ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  %7 = icmp slt i32 %2, 1
  %8 = or i1 %6, %7
  br i1 %8, label %883, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load i32, ptr %10, align 8, !tbaa !8
  %12 = icmp eq i32 %11, 7247
  br i1 %12, label %13, label %883

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
  br i1 %19, label %883, label %20

20:                                               ; preds = %16, %13, %13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %22 = load i64, ptr %21, align 8, !tbaa !18
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %448, label %24

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
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %42

42:                                               ; preds = %445, %24
  %43 = phi i64 [ %446, %445 ], [ %22, %24 ]
  %44 = load i32, ptr %0, align 8, !tbaa !19
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %42
  %47 = zext i32 %44 to i64
  %48 = tail call i64 @llvm.smin.i64(i64 %43, i64 %47)
  %49 = trunc i64 %48 to i32
  %50 = sub i32 %44, %49
  store i32 %50, ptr %0, align 8, !tbaa !19
  %51 = load ptr, ptr %25, align 8, !tbaa !20
  %52 = and i64 %48, 4294967295
  %53 = getelementptr inbounds nuw i8, ptr %51, i64 %52
  store ptr %53, ptr %25, align 8, !tbaa !20
  %54 = load i64, ptr %26, align 8, !tbaa !21
  %55 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %54, i64 %52), !nosanitize !22
  %56 = extractvalue { i64, i1 } %55, 1, !nosanitize !22
  br i1 %56, label %57, label %58, !prof !23, !nosanitize !22

57:                                               ; preds = %46
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

58:                                               ; preds = %46
  %59 = extractvalue { i64, i1 } %55, 0, !nosanitize !22
  store i64 %59, ptr %26, align 8, !tbaa !21
  %60 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %43, i64 %52), !nosanitize !22
  %61 = extractvalue { i64, i1 } %60, 1, !nosanitize !22
  br i1 %61, label %62, label %63, !prof !23, !nosanitize !22

62:                                               ; preds = %58
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !22
  unreachable, !nosanitize !22

63:                                               ; preds = %58
  %64 = extractvalue { i64, i1 } %60, 0, !nosanitize !22
  store i64 %64, ptr %21, align 8, !tbaa !18
  br label %445

65:                                               ; preds = %42
  %66 = load i32, ptr %27, align 8, !tbaa !24
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr %28, align 8, !tbaa !25
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %448, label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %442, %71
  %73 = load i32, ptr %29, align 8, !tbaa !26
  switch i32 %73, label %430 [
    i32 0, label %74
    i32 1, label %297
    i32 2, label %333
  ]

74:                                               ; preds = %72
  %75 = load i32, ptr %30, align 8, !tbaa !27
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %74
  %78 = load i32, ptr %39, align 4, !tbaa !28
  %79 = zext i32 %78 to i64
  %80 = tail call noalias ptr @malloc(i64 noundef %79) #15
  store ptr %80, ptr %35, align 8, !tbaa !29
  %81 = load i32, ptr %39, align 4, !tbaa !28
  %82 = shl i32 %81, 1
  %83 = zext i32 %82 to i64
  %84 = tail call noalias ptr @malloc(i64 noundef %83) #15
  store ptr %84, ptr %32, align 8, !tbaa !30
  %85 = icmp eq ptr %80, null
  %86 = icmp eq ptr %84, null
  %87 = or i1 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  tail call void @free(ptr noundef %84) #13
  tail call void @free(ptr noundef %80) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %883

89:                                               ; preds = %77
  %90 = load i32, ptr %39, align 4, !tbaa !28
  store i32 %90, ptr %30, align 8, !tbaa !27
  store i32 0, ptr %28, align 8, !tbaa !25
  store ptr null, ptr %34, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  %91 = tail call i32 @inflateInit2_(ptr noundef nonnull %34, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %32, align 8, !tbaa !30
  tail call void @free(ptr noundef %94) #13
  %95 = load ptr, ptr %35, align 8, !tbaa !29
  tail call void @free(ptr noundef %95) #13
  store i32 0, ptr %30, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %883

96:                                               ; preds = %89, %74
  %97 = load i32, ptr %41, align 8, !tbaa !32
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, ptr %38, align 4, !tbaa !33
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99, %96
  %103 = tail call i32 @inflateReset(ptr noundef nonnull %34) #13
  store i32 2, ptr %29, align 8, !tbaa !26
  %104 = load i32, ptr %38, align 4, !tbaa !33
  %105 = icmp ne i32 %104, -1
  %106 = zext i1 %105 to i32
  store i32 %106, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !32
  br label %294

107:                                              ; preds = %99
  %108 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %108, label %883 [
    i32 0, label %109
    i32 -5, label %109
  ]

109:                                              ; preds = %107, %107
  %110 = load i32, ptr %27, align 8, !tbaa !24
  %111 = icmp eq i32 %110, 0
  %112 = load i32, ptr %28, align 8, !tbaa !34
  br i1 %111, label %113, label %262

113:                                              ; preds = %109
  %114 = icmp eq i32 %112, 0
  %115 = load ptr, ptr %35, align 8, !tbaa !29
  %116 = ptrtoaddr ptr %115 to i64
  br i1 %114, label %222, label %117

117:                                              ; preds = %113
  %118 = load ptr, ptr %34, align 8, !tbaa !35
  %119 = icmp eq ptr %118, %115
  br i1 %119, label %222, label %120

120:                                              ; preds = %117
  %121 = ptrtoaddr ptr %118 to i64
  %122 = zext i32 %112 to i64
  %123 = icmp ult i32 %112, 4
  %124 = sub i64 %116, %121
  %125 = icmp ult i64 %124, 32
  %126 = select i1 %123, i1 true, i1 %125
  br i1 %126, label %166, label %127

127:                                              ; preds = %120
  %128 = icmp ult i32 %112, 32
  br i1 %128, label %150, label %129

129:                                              ; preds = %127
  %130 = and i64 %122, 28
  %131 = and i64 %122, 4294967264
  %132 = getelementptr i8, ptr %115, i64 %131
  %133 = getelementptr i8, ptr %118, i64 %131
  %134 = trunc nuw i64 %131 to i32
  %135 = sub i32 %112, %134
  br label %136

136:                                              ; preds = %136, %129
  %137 = phi i64 [ 0, %129 ], [ %144, %136 ]
  %138 = getelementptr i8, ptr %115, i64 %137
  %139 = getelementptr i8, ptr %118, i64 %137
  %140 = getelementptr i8, ptr %139, i64 16
  %141 = load <16 x i8>, ptr %139, align 1, !tbaa !36
  %142 = load <16 x i8>, ptr %140, align 1, !tbaa !36
  %143 = getelementptr i8, ptr %138, i64 16
  store <16 x i8> %141, ptr %138, align 1, !tbaa !36
  store <16 x i8> %142, ptr %143, align 1, !tbaa !36
  %144 = add nuw i64 %137, 32
  %145 = icmp eq i64 %144, %131
  br i1 %145, label %146, label %136, !llvm.loop !95

146:                                              ; preds = %136
  %147 = icmp eq i64 %131, %122
  br i1 %147, label %219, label %148

148:                                              ; preds = %146
  %149 = icmp eq i64 %130, 0
  br i1 %149, label %166, label %150, !prof !41

150:                                              ; preds = %148, %127
  %151 = phi i64 [ %131, %148 ], [ 0, %127 ]
  %152 = and i64 %122, 4294967292
  %153 = getelementptr i8, ptr %115, i64 %152
  %154 = getelementptr i8, ptr %118, i64 %152
  %155 = trunc nuw i64 %152 to i32
  %156 = sub i32 %112, %155
  br label %157

157:                                              ; preds = %157, %150
  %158 = phi i64 [ %151, %150 ], [ %162, %157 ]
  %159 = getelementptr i8, ptr %115, i64 %158
  %160 = getelementptr i8, ptr %118, i64 %158
  %161 = load <4 x i8>, ptr %160, align 1, !tbaa !36
  store <4 x i8> %161, ptr %159, align 1, !tbaa !36
  %162 = add nuw i64 %158, 4
  %163 = icmp eq i64 %162, %152
  br i1 %163, label %164, label %157, !llvm.loop !96

164:                                              ; preds = %157
  %165 = icmp eq i64 %152, %122
  br i1 %165, label %219, label %166

166:                                              ; preds = %164, %148, %120
  %167 = phi ptr [ %115, %120 ], [ %132, %148 ], [ %153, %164 ]
  %168 = phi ptr [ %118, %120 ], [ %133, %148 ], [ %154, %164 ]
  %169 = phi i32 [ %112, %120 ], [ %135, %148 ], [ %156, %164 ]
  %170 = add i32 %169, -1
  %171 = and i32 %169, 7
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %184, label %173

173:                                              ; preds = %173, %166
  %174 = phi ptr [ %180, %173 ], [ %167, %166 ]
  %175 = phi ptr [ %178, %173 ], [ %168, %166 ]
  %176 = phi i32 [ %181, %173 ], [ %169, %166 ]
  %177 = phi i32 [ %182, %173 ], [ 0, %166 ]
  %178 = getelementptr inbounds nuw i8, ptr %175, i64 1
  %179 = load i8, ptr %175, align 1, !tbaa !36
  %180 = getelementptr inbounds nuw i8, ptr %174, i64 1
  store i8 %179, ptr %174, align 1, !tbaa !36
  %181 = add i32 %176, -1
  %182 = add i32 %177, 1
  %183 = icmp eq i32 %182, %171
  br i1 %183, label %184, label %173, !llvm.loop !97

184:                                              ; preds = %173, %166
  %185 = phi ptr [ %167, %166 ], [ %180, %173 ]
  %186 = phi ptr [ %168, %166 ], [ %178, %173 ]
  %187 = phi i32 [ %169, %166 ], [ %181, %173 ]
  %188 = icmp ult i32 %170, 7
  br i1 %188, label %219, label %189

189:                                              ; preds = %189, %184
  %190 = phi ptr [ %216, %189 ], [ %185, %184 ]
  %191 = phi ptr [ %214, %189 ], [ %186, %184 ]
  %192 = phi i32 [ %217, %189 ], [ %187, %184 ]
  %193 = getelementptr inbounds nuw i8, ptr %191, i64 1
  %194 = load i8, ptr %191, align 1, !tbaa !36
  %195 = getelementptr inbounds nuw i8, ptr %190, i64 1
  store i8 %194, ptr %190, align 1, !tbaa !36
  %196 = getelementptr inbounds nuw i8, ptr %191, i64 2
  %197 = load i8, ptr %193, align 1, !tbaa !36
  %198 = getelementptr inbounds nuw i8, ptr %190, i64 2
  store i8 %197, ptr %195, align 1, !tbaa !36
  %199 = getelementptr inbounds nuw i8, ptr %191, i64 3
  %200 = load i8, ptr %196, align 1, !tbaa !36
  %201 = getelementptr inbounds nuw i8, ptr %190, i64 3
  store i8 %200, ptr %198, align 1, !tbaa !36
  %202 = getelementptr inbounds nuw i8, ptr %191, i64 4
  %203 = load i8, ptr %199, align 1, !tbaa !36
  %204 = getelementptr inbounds nuw i8, ptr %190, i64 4
  store i8 %203, ptr %201, align 1, !tbaa !36
  %205 = getelementptr inbounds nuw i8, ptr %191, i64 5
  %206 = load i8, ptr %202, align 1, !tbaa !36
  %207 = getelementptr inbounds nuw i8, ptr %190, i64 5
  store i8 %206, ptr %204, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %191, i64 6
  %209 = load i8, ptr %205, align 1, !tbaa !36
  %210 = getelementptr inbounds nuw i8, ptr %190, i64 6
  store i8 %209, ptr %207, align 1, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %191, i64 7
  %212 = load i8, ptr %208, align 1, !tbaa !36
  %213 = getelementptr inbounds nuw i8, ptr %190, i64 7
  store i8 %212, ptr %210, align 1, !tbaa !36
  %214 = getelementptr inbounds nuw i8, ptr %191, i64 8
  %215 = load i8, ptr %211, align 1, !tbaa !36
  %216 = getelementptr inbounds nuw i8, ptr %190, i64 8
  store i8 %215, ptr %213, align 1, !tbaa !36
  %217 = add i32 %192, -8
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %189, !llvm.loop !98

219:                                              ; preds = %189, %184, %164, %146
  %220 = load i32, ptr %28, align 8, !tbaa !34
  %221 = load ptr, ptr %35, align 8, !tbaa !29
  br label %222

222:                                              ; preds = %219, %117, %113
  %223 = phi ptr [ %221, %219 ], [ %115, %117 ], [ %115, %113 ]
  %224 = phi i32 [ %220, %219 ], [ %112, %117 ], [ 0, %113 ]
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds nuw i8, ptr %223, i64 %225
  %227 = load i32, ptr %30, align 8, !tbaa !27
  %228 = sub i32 %227, %224
  store i32 0, ptr %36, align 4, !tbaa !17
  %229 = tail call ptr @__errno_location() #16
  store i32 0, ptr %229, align 4, !tbaa !4
  br label %230

230:                                              ; preds = %241, %222
  %231 = phi i32 [ 0, %222 ], [ %242, %241 ]
  %232 = sub i32 %228, %231
  %233 = tail call i32 @llvm.umin.i32(i32 %232, i32 1073741824)
  %234 = load i32, ptr %37, align 4, !tbaa !46
  %235 = zext i32 %231 to i64
  %236 = getelementptr inbounds nuw i8, ptr %226, i64 %235
  %237 = zext nneg i32 %233 to i64
  %238 = tail call i64 @read(i32 noundef %234, ptr noundef %236, i64 noundef %237) #13
  %239 = trunc i64 %238 to i32
  %240 = icmp slt i32 %239, 1
  br i1 %240, label %244, label %241

241:                                              ; preds = %230
  %242 = add i32 %231, %239
  %243 = icmp ult i32 %242, %228
  br i1 %243, label %230, label %257, !llvm.loop !47

244:                                              ; preds = %230
  %245 = icmp slt i32 %239, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %244
  %247 = load i32, ptr %229, align 4, !tbaa !4
  %248 = icmp eq i32 %247, 11
  br i1 %248, label %249, label %254

249:                                              ; preds = %246
  store i32 1, ptr %36, align 4, !tbaa !17
  %250 = icmp eq i32 %231, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %249
  %252 = load i32, ptr %229, align 4, !tbaa !4
  br label %254

253:                                              ; preds = %244
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %257

254:                                              ; preds = %251, %246
  %255 = phi i32 [ %252, %251 ], [ %247, %246 ]
  %256 = tail call ptr @strerror(i32 noundef %255) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %256) #13
  br label %883

257:                                              ; preds = %253, %249, %241
  %258 = phi i32 [ %231, %249 ], [ %231, %253 ], [ %242, %241 ]
  %259 = load i32, ptr %28, align 8, !tbaa !34
  %260 = add i32 %259, %258
  store i32 %260, ptr %28, align 8, !tbaa !34
  %261 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %261, ptr %34, align 8, !tbaa !35
  br label %262

262:                                              ; preds = %257, %109
  %263 = phi i32 [ %260, %257 ], [ %112, %109 ]
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %294, label %265

265:                                              ; preds = %262
  %266 = load i32, ptr %36, align 4, !tbaa !17
  %267 = icmp ne i32 %266, 0
  %268 = icmp ult i32 %263, 4
  %269 = and i1 %268, %267
  br i1 %269, label %294, label %270

270:                                              ; preds = %265
  %271 = icmp ugt i32 %263, 3
  %272 = load ptr, ptr %34, align 8, !tbaa !35
  br i1 %271, label %273, label %290

273:                                              ; preds = %270
  %274 = load i8, ptr %272, align 1, !tbaa !36
  %275 = icmp eq i8 %274, 31
  br i1 %275, label %276, label %290

276:                                              ; preds = %273
  %277 = getelementptr inbounds nuw i8, ptr %272, i64 1
  %278 = load i8, ptr %277, align 1, !tbaa !36
  %279 = icmp eq i8 %278, -117
  br i1 %279, label %280, label %290

280:                                              ; preds = %276
  %281 = getelementptr inbounds nuw i8, ptr %272, i64 2
  %282 = load i8, ptr %281, align 1, !tbaa !36
  %283 = icmp eq i8 %282, 8
  br i1 %283, label %284, label %290

284:                                              ; preds = %280
  %285 = getelementptr inbounds nuw i8, ptr %272, i64 3
  %286 = load i8, ptr %285, align 1, !tbaa !36
  %287 = icmp ult i8 %286, 32
  br i1 %287, label %288, label %290

288:                                              ; preds = %284
  %289 = tail call i32 @inflateReset(ptr noundef nonnull %34) #13
  store i32 2, ptr %29, align 8, !tbaa !26
  store i32 1, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !32
  br label %431

290:                                              ; preds = %284, %280, %276, %273, %270
  %291 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %291, ptr %25, align 8, !tbaa !20
  %292 = zext i32 %263 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %291, ptr align 1 %272, i64 %292, i1 false)
  %293 = load i32, ptr %28, align 8, !tbaa !34
  store i32 %293, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !26
  br label %433

294:                                              ; preds = %265, %262, %102
  %295 = load i32, ptr %29, align 8, !tbaa !26
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %443, label %431

297:                                              ; preds = %72
  %298 = load ptr, ptr %32, align 8, !tbaa !30
  %299 = load i32, ptr %30, align 8, !tbaa !27
  %300 = shl i32 %299, 1
  store i32 0, ptr %36, align 4, !tbaa !17
  %301 = tail call ptr @__errno_location() #16
  store i32 0, ptr %301, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %302

302:                                              ; preds = %313, %297
  %303 = phi i32 [ %315, %313 ], [ 0, %297 ]
  %304 = sub i32 %300, %303
  %305 = tail call i32 @llvm.umin.i32(i32 %304, i32 1073741824)
  %306 = load i32, ptr %37, align 4, !tbaa !46
  %307 = zext i32 %303 to i64
  %308 = getelementptr inbounds nuw i8, ptr %298, i64 %307
  %309 = zext nneg i32 %305 to i64
  %310 = tail call i64 @read(i32 noundef %306, ptr noundef %308, i64 noundef %309) #13
  %311 = trunc i64 %310 to i32
  %312 = icmp slt i32 %311, 1
  br i1 %312, label %317, label %313

313:                                              ; preds = %302
  %314 = load i32, ptr %0, align 4, !tbaa !4
  %315 = add i32 %314, %311
  store i32 %315, ptr %0, align 4, !tbaa !4
  %316 = icmp ult i32 %315, %300
  br i1 %316, label %302, label %331, !llvm.loop !47

317:                                              ; preds = %302
  %318 = icmp slt i32 %311, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %317
  %320 = load i32, ptr %301, align 4, !tbaa !4
  %321 = icmp eq i32 %320, 11
  br i1 %321, label %322, label %328

322:                                              ; preds = %319
  store i32 1, ptr %36, align 4, !tbaa !17
  %323 = load i32, ptr %0, align 4, !tbaa !4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %322
  %326 = load i32, ptr %301, align 4, !tbaa !4
  br label %328

327:                                              ; preds = %317
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %331

328:                                              ; preds = %325, %319
  %329 = phi i32 [ %326, %325 ], [ %320, %319 ]
  %330 = tail call ptr @strerror(i32 noundef %329) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %330) #13
  br label %883

331:                                              ; preds = %327, %322, %313
  %332 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %332, ptr %25, align 8, !tbaa !20
  br label %443

333:                                              ; preds = %72
  %334 = load i32, ptr %30, align 8, !tbaa !27
  %335 = shl i32 %334, 1
  store i32 %335, ptr %31, align 8, !tbaa !48
  %336 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %336, ptr %33, align 8, !tbaa !49
  br label %337

337:                                              ; preds = %410, %333
  %338 = phi i32 [ 0, %333 ], [ %389, %410 ]
  %339 = load i32, ptr %28, align 8, !tbaa !34
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %388

341:                                              ; preds = %337
  %342 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %342, label %421 [
    i32 0, label %343
    i32 -5, label %343
  ]

343:                                              ; preds = %341, %341
  %344 = load i32, ptr %27, align 8, !tbaa !24
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %384

346:                                              ; preds = %343
  %347 = load ptr, ptr %35, align 8, !tbaa !29
  %348 = load i32, ptr %30, align 8, !tbaa !27
  store i32 0, ptr %36, align 4, !tbaa !17
  %349 = tail call ptr @__errno_location() #16
  store i32 0, ptr %349, align 4, !tbaa !4
  br label %350

350:                                              ; preds = %361, %346
  %351 = phi i32 [ 0, %346 ], [ %362, %361 ]
  %352 = sub i32 %348, %351
  %353 = tail call i32 @llvm.umin.i32(i32 %352, i32 1073741824)
  %354 = load i32, ptr %37, align 4, !tbaa !46
  %355 = zext i32 %351 to i64
  %356 = getelementptr inbounds nuw i8, ptr %347, i64 %355
  %357 = zext nneg i32 %353 to i64
  %358 = tail call i64 @read(i32 noundef %354, ptr noundef %356, i64 noundef %357) #13
  %359 = trunc i64 %358 to i32
  %360 = icmp slt i32 %359, 1
  br i1 %360, label %364, label %361

361:                                              ; preds = %350
  %362 = add i32 %351, %359
  %363 = icmp ult i32 %362, %348
  br i1 %363, label %350, label %378, !llvm.loop !47

364:                                              ; preds = %350
  %365 = icmp slt i32 %359, 0
  br i1 %365, label %366, label %373

366:                                              ; preds = %364
  %367 = load i32, ptr %349, align 4, !tbaa !4
  %368 = icmp eq i32 %367, 11
  br i1 %368, label %369, label %374

369:                                              ; preds = %366
  store i32 1, ptr %36, align 4, !tbaa !17
  %370 = icmp eq i32 %351, 0
  br i1 %370, label %371, label %378

371:                                              ; preds = %369
  %372 = load i32, ptr %349, align 4, !tbaa !4
  br label %374

373:                                              ; preds = %364
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %378

374:                                              ; preds = %371, %366
  %375 = phi i32 [ %372, %371 ], [ %367, %366 ]
  %376 = tail call ptr @strerror(i32 noundef %375) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %376) #13
  %377 = load i32, ptr %14, align 8, !tbaa !16
  br label %421

378:                                              ; preds = %373, %369, %361
  %379 = phi i32 [ %351, %369 ], [ %351, %373 ], [ %362, %361 ]
  %380 = load i32, ptr %28, align 8, !tbaa !34
  %381 = add i32 %380, %379
  store i32 %381, ptr %28, align 8, !tbaa !34
  %382 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %382, ptr %34, align 8, !tbaa !35
  %383 = icmp eq i32 %381, 0
  br i1 %383, label %384, label %388

384:                                              ; preds = %378, %343
  %385 = load i32, ptr %36, align 4, !tbaa !17
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %421

387:                                              ; preds = %384
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %421

388:                                              ; preds = %378, %337
  %389 = tail call i32 @inflate(ptr noundef nonnull %34, i32 noundef 0) #13
  %390 = load i32, ptr %31, align 8, !tbaa !48
  %391 = icmp ult i32 %390, %335
  br i1 %391, label %392, label %393

392:                                              ; preds = %388
  store i32 0, ptr %38, align 4, !tbaa !33
  br label %393

393:                                              ; preds = %392, %388
  switch i32 %389, label %410 [
    i32 -2, label %394
    i32 2, label %394
    i32 -4, label %395
    i32 -3, label %396
  ]

394:                                              ; preds = %393, %393
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %421

395:                                              ; preds = %393
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %414

396:                                              ; preds = %393
  %397 = load i32, ptr %38, align 4, !tbaa !33
  %398 = icmp eq i32 %397, 1
  br i1 %398, label %399, label %405

399:                                              ; preds = %396
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %27, align 8, !tbaa !24
  store i32 0, ptr %29, align 8, !tbaa !26
  %400 = sub i32 %335, %390
  store i32 %400, ptr %0, align 8, !tbaa !19
  %401 = load ptr, ptr %33, align 8, !tbaa !49
  %402 = zext i32 %400 to i64
  %403 = sub nsw i64 0, %402
  %404 = getelementptr inbounds i8, ptr %401, i64 %403
  store ptr %404, ptr %25, align 8, !tbaa !20
  br label %431

405:                                              ; preds = %396
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %407 = load ptr, ptr %406, align 8, !tbaa !50
  %408 = icmp eq ptr %407, null
  %409 = select i1 %408, ptr @.str.6, ptr %407
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %409) #13
  br label %414

410:                                              ; preds = %393
  %411 = icmp ne i32 %390, 0
  %412 = icmp ne i32 %389, 1
  %413 = select i1 %411, i1 %412, i1 false
  br i1 %413, label %337, label %421, !llvm.loop !51

414:                                              ; preds = %405, %395
  %415 = load i32, ptr %31, align 8, !tbaa !48
  %416 = sub i32 %335, %415
  store i32 %416, ptr %0, align 8, !tbaa !19
  %417 = load ptr, ptr %33, align 8, !tbaa !49
  %418 = zext i32 %416 to i64
  %419 = sub nsw i64 0, %418
  %420 = getelementptr inbounds i8, ptr %417, i64 %419
  store ptr %420, ptr %25, align 8, !tbaa !20
  br label %883

421:                                              ; preds = %410, %394, %387, %384, %374, %341
  %422 = phi i32 [ %377, %374 ], [ %338, %384 ], [ %338, %387 ], [ %389, %394 ], [ %342, %341 ], [ %389, %410 ]
  %423 = load i32, ptr %31, align 8, !tbaa !48
  %424 = sub i32 %335, %423
  store i32 %424, ptr %0, align 8, !tbaa !19
  %425 = load ptr, ptr %33, align 8, !tbaa !49
  %426 = zext i32 %424 to i64
  %427 = sub nsw i64 0, %426
  %428 = getelementptr inbounds i8, ptr %425, i64 %427
  store ptr %428, ptr %25, align 8, !tbaa !20
  switch i32 %422, label %883 [
    i32 1, label %429
    i32 0, label %431
  ]

429:                                              ; preds = %421
  store i32 0, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %431

430:                                              ; preds = %72
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %883

431:                                              ; preds = %429, %421, %399, %294, %288
  %432 = load i32, ptr %0, align 8, !tbaa !19
  br label %433

433:                                              ; preds = %431, %290
  %434 = phi i32 [ %432, %431 ], [ %293, %290 ]
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %443

436:                                              ; preds = %433
  %437 = load i32, ptr %27, align 8, !tbaa !24
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %442, label %439

439:                                              ; preds = %436
  %440 = load i32, ptr %28, align 8, !tbaa !34
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %443, label %442

442:                                              ; preds = %439, %436
  br label %72, !llvm.loop !52

443:                                              ; preds = %439, %433, %331, %294
  %444 = load i64, ptr %21, align 8, !tbaa !18
  br label %445

445:                                              ; preds = %443, %63
  %446 = phi i64 [ %444, %443 ], [ %64, %63 ]
  %447 = icmp eq i64 %446, 0
  br i1 %447, label %448, label %42, !llvm.loop !53

448:                                              ; preds = %445, %68, %20
  %449 = add nsw i32 %2, -1
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %883, label %451

451:                                              ; preds = %448
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %455 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %456 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %469 = load i32, ptr %0, align 8, !tbaa !19
  br label %470

470:                                              ; preds = %873, %451
  %471 = phi i32 [ %866, %873 ], [ %469, %451 ]
  %472 = phi i32 [ %875, %873 ], [ %449, %451 ]
  %473 = phi ptr [ %876, %873 ], [ %1, %451 ]
  %474 = icmp eq i32 %471, 0
  br i1 %474, label %475, label %851

475:                                              ; preds = %845, %470
  %476 = load i32, ptr %452, align 8, !tbaa !26
  switch i32 %476, label %833 [
    i32 0, label %477
    i32 1, label %700
    i32 2, label %736
  ]

477:                                              ; preds = %475
  %478 = load i32, ptr %453, align 8, !tbaa !27
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %499

480:                                              ; preds = %477
  %481 = load i32, ptr %465, align 4, !tbaa !28
  %482 = zext i32 %481 to i64
  %483 = tail call noalias ptr @malloc(i64 noundef %482) #15
  store ptr %483, ptr %460, align 8, !tbaa !29
  %484 = load i32, ptr %465, align 4, !tbaa !28
  %485 = shl i32 %484, 1
  %486 = zext i32 %485 to i64
  %487 = tail call noalias ptr @malloc(i64 noundef %486) #15
  store ptr %487, ptr %455, align 8, !tbaa !30
  %488 = icmp eq ptr %483, null
  %489 = icmp eq ptr %487, null
  %490 = or i1 %488, %489
  br i1 %490, label %491, label %492

491:                                              ; preds = %480
  tail call void @free(ptr noundef %487) #13
  tail call void @free(ptr noundef %483) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %879

492:                                              ; preds = %480
  %493 = load i32, ptr %465, align 4, !tbaa !28
  store i32 %493, ptr %453, align 8, !tbaa !27
  store i32 0, ptr %458, align 8, !tbaa !25
  store ptr null, ptr %457, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %466, i8 0, i64 24, i1 false)
  %494 = tail call i32 @inflateInit2_(ptr noundef nonnull %457, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %499, label %496

496:                                              ; preds = %492
  %497 = load ptr, ptr %455, align 8, !tbaa !30
  tail call void @free(ptr noundef %497) #13
  %498 = load ptr, ptr %460, align 8, !tbaa !29
  tail call void @free(ptr noundef %498) #13
  store i32 0, ptr %453, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %879

499:                                              ; preds = %492, %477
  %500 = load i32, ptr %467, align 8, !tbaa !32
  %501 = icmp eq i32 %500, -1
  br i1 %501, label %505, label %502

502:                                              ; preds = %499
  %503 = load i32, ptr %463, align 4, !tbaa !33
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %510

505:                                              ; preds = %502, %499
  %506 = tail call i32 @inflateReset(ptr noundef nonnull %457) #13
  store i32 2, ptr %452, align 8, !tbaa !26
  %507 = load i32, ptr %463, align 4, !tbaa !33
  %508 = icmp ne i32 %507, -1
  %509 = zext i1 %508 to i32
  store i32 %509, ptr %463, align 4, !tbaa !33
  store i32 0, ptr %467, align 8, !tbaa !32
  br label %697

510:                                              ; preds = %502
  %511 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %511, label %879 [
    i32 0, label %512
    i32 -5, label %512
  ]

512:                                              ; preds = %510, %510
  %513 = load i32, ptr %459, align 8, !tbaa !24
  %514 = icmp eq i32 %513, 0
  %515 = load i32, ptr %458, align 8, !tbaa !34
  br i1 %514, label %516, label %665

516:                                              ; preds = %512
  %517 = icmp eq i32 %515, 0
  %518 = load ptr, ptr %460, align 8, !tbaa !29
  %519 = ptrtoaddr ptr %518 to i64
  br i1 %517, label %625, label %520

520:                                              ; preds = %516
  %521 = load ptr, ptr %457, align 8, !tbaa !35
  %522 = icmp eq ptr %521, %518
  br i1 %522, label %625, label %523

523:                                              ; preds = %520
  %524 = ptrtoaddr ptr %521 to i64
  %525 = zext i32 %515 to i64
  %526 = icmp ult i32 %515, 4
  %527 = sub i64 %519, %524
  %528 = icmp ult i64 %527, 32
  %529 = select i1 %526, i1 true, i1 %528
  br i1 %529, label %569, label %530

530:                                              ; preds = %523
  %531 = icmp ult i32 %515, 32
  br i1 %531, label %553, label %532

532:                                              ; preds = %530
  %533 = and i64 %525, 28
  %534 = and i64 %525, 4294967264
  %535 = getelementptr i8, ptr %518, i64 %534
  %536 = getelementptr i8, ptr %521, i64 %534
  %537 = trunc nuw i64 %534 to i32
  %538 = sub i32 %515, %537
  br label %539

539:                                              ; preds = %539, %532
  %540 = phi i64 [ 0, %532 ], [ %547, %539 ]
  %541 = getelementptr i8, ptr %518, i64 %540
  %542 = getelementptr i8, ptr %521, i64 %540
  %543 = getelementptr i8, ptr %542, i64 16
  %544 = load <16 x i8>, ptr %542, align 1, !tbaa !36
  %545 = load <16 x i8>, ptr %543, align 1, !tbaa !36
  %546 = getelementptr i8, ptr %541, i64 16
  store <16 x i8> %544, ptr %541, align 1, !tbaa !36
  store <16 x i8> %545, ptr %546, align 1, !tbaa !36
  %547 = add nuw i64 %540, 32
  %548 = icmp eq i64 %547, %534
  br i1 %548, label %549, label %539, !llvm.loop !99

549:                                              ; preds = %539
  %550 = icmp eq i64 %534, %525
  br i1 %550, label %622, label %551

551:                                              ; preds = %549
  %552 = icmp eq i64 %533, 0
  br i1 %552, label %569, label %553, !prof !41

553:                                              ; preds = %551, %530
  %554 = phi i64 [ %534, %551 ], [ 0, %530 ]
  %555 = and i64 %525, 4294967292
  %556 = getelementptr i8, ptr %518, i64 %555
  %557 = getelementptr i8, ptr %521, i64 %555
  %558 = trunc nuw i64 %555 to i32
  %559 = sub i32 %515, %558
  br label %560

560:                                              ; preds = %560, %553
  %561 = phi i64 [ %554, %553 ], [ %565, %560 ]
  %562 = getelementptr i8, ptr %518, i64 %561
  %563 = getelementptr i8, ptr %521, i64 %561
  %564 = load <4 x i8>, ptr %563, align 1, !tbaa !36
  store <4 x i8> %564, ptr %562, align 1, !tbaa !36
  %565 = add nuw i64 %561, 4
  %566 = icmp eq i64 %565, %555
  br i1 %566, label %567, label %560, !llvm.loop !100

567:                                              ; preds = %560
  %568 = icmp eq i64 %555, %525
  br i1 %568, label %622, label %569

569:                                              ; preds = %567, %551, %523
  %570 = phi ptr [ %518, %523 ], [ %535, %551 ], [ %556, %567 ]
  %571 = phi ptr [ %521, %523 ], [ %536, %551 ], [ %557, %567 ]
  %572 = phi i32 [ %515, %523 ], [ %538, %551 ], [ %559, %567 ]
  %573 = add i32 %572, -1
  %574 = and i32 %572, 7
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %587, label %576

576:                                              ; preds = %576, %569
  %577 = phi ptr [ %583, %576 ], [ %570, %569 ]
  %578 = phi ptr [ %581, %576 ], [ %571, %569 ]
  %579 = phi i32 [ %584, %576 ], [ %572, %569 ]
  %580 = phi i32 [ %585, %576 ], [ 0, %569 ]
  %581 = getelementptr inbounds nuw i8, ptr %578, i64 1
  %582 = load i8, ptr %578, align 1, !tbaa !36
  %583 = getelementptr inbounds nuw i8, ptr %577, i64 1
  store i8 %582, ptr %577, align 1, !tbaa !36
  %584 = add i32 %579, -1
  %585 = add i32 %580, 1
  %586 = icmp eq i32 %585, %574
  br i1 %586, label %587, label %576, !llvm.loop !101

587:                                              ; preds = %576, %569
  %588 = phi ptr [ %570, %569 ], [ %583, %576 ]
  %589 = phi ptr [ %571, %569 ], [ %581, %576 ]
  %590 = phi i32 [ %572, %569 ], [ %584, %576 ]
  %591 = icmp ult i32 %573, 7
  br i1 %591, label %622, label %592

592:                                              ; preds = %592, %587
  %593 = phi ptr [ %619, %592 ], [ %588, %587 ]
  %594 = phi ptr [ %617, %592 ], [ %589, %587 ]
  %595 = phi i32 [ %620, %592 ], [ %590, %587 ]
  %596 = getelementptr inbounds nuw i8, ptr %594, i64 1
  %597 = load i8, ptr %594, align 1, !tbaa !36
  %598 = getelementptr inbounds nuw i8, ptr %593, i64 1
  store i8 %597, ptr %593, align 1, !tbaa !36
  %599 = getelementptr inbounds nuw i8, ptr %594, i64 2
  %600 = load i8, ptr %596, align 1, !tbaa !36
  %601 = getelementptr inbounds nuw i8, ptr %593, i64 2
  store i8 %600, ptr %598, align 1, !tbaa !36
  %602 = getelementptr inbounds nuw i8, ptr %594, i64 3
  %603 = load i8, ptr %599, align 1, !tbaa !36
  %604 = getelementptr inbounds nuw i8, ptr %593, i64 3
  store i8 %603, ptr %601, align 1, !tbaa !36
  %605 = getelementptr inbounds nuw i8, ptr %594, i64 4
  %606 = load i8, ptr %602, align 1, !tbaa !36
  %607 = getelementptr inbounds nuw i8, ptr %593, i64 4
  store i8 %606, ptr %604, align 1, !tbaa !36
  %608 = getelementptr inbounds nuw i8, ptr %594, i64 5
  %609 = load i8, ptr %605, align 1, !tbaa !36
  %610 = getelementptr inbounds nuw i8, ptr %593, i64 5
  store i8 %609, ptr %607, align 1, !tbaa !36
  %611 = getelementptr inbounds nuw i8, ptr %594, i64 6
  %612 = load i8, ptr %608, align 1, !tbaa !36
  %613 = getelementptr inbounds nuw i8, ptr %593, i64 6
  store i8 %612, ptr %610, align 1, !tbaa !36
  %614 = getelementptr inbounds nuw i8, ptr %594, i64 7
  %615 = load i8, ptr %611, align 1, !tbaa !36
  %616 = getelementptr inbounds nuw i8, ptr %593, i64 7
  store i8 %615, ptr %613, align 1, !tbaa !36
  %617 = getelementptr inbounds nuw i8, ptr %594, i64 8
  %618 = load i8, ptr %614, align 1, !tbaa !36
  %619 = getelementptr inbounds nuw i8, ptr %593, i64 8
  store i8 %618, ptr %616, align 1, !tbaa !36
  %620 = add i32 %595, -8
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %622, label %592, !llvm.loop !102

622:                                              ; preds = %592, %587, %567, %549
  %623 = load i32, ptr %458, align 8, !tbaa !34
  %624 = load ptr, ptr %460, align 8, !tbaa !29
  br label %625

625:                                              ; preds = %622, %520, %516
  %626 = phi ptr [ %624, %622 ], [ %518, %520 ], [ %518, %516 ]
  %627 = phi i32 [ %623, %622 ], [ %515, %520 ], [ 0, %516 ]
  %628 = zext i32 %627 to i64
  %629 = getelementptr inbounds nuw i8, ptr %626, i64 %628
  %630 = load i32, ptr %453, align 8, !tbaa !27
  %631 = sub i32 %630, %627
  store i32 0, ptr %461, align 4, !tbaa !17
  %632 = tail call ptr @__errno_location() #16
  store i32 0, ptr %632, align 4, !tbaa !4
  br label %633

633:                                              ; preds = %644, %625
  %634 = phi i32 [ 0, %625 ], [ %645, %644 ]
  %635 = sub i32 %631, %634
  %636 = tail call i32 @llvm.umin.i32(i32 %635, i32 1073741824)
  %637 = load i32, ptr %462, align 4, !tbaa !46
  %638 = zext i32 %634 to i64
  %639 = getelementptr inbounds nuw i8, ptr %629, i64 %638
  %640 = zext nneg i32 %636 to i64
  %641 = tail call i64 @read(i32 noundef %637, ptr noundef %639, i64 noundef %640) #13
  %642 = trunc i64 %641 to i32
  %643 = icmp slt i32 %642, 1
  br i1 %643, label %647, label %644

644:                                              ; preds = %633
  %645 = add i32 %634, %642
  %646 = icmp ult i32 %645, %631
  br i1 %646, label %633, label %660, !llvm.loop !47

647:                                              ; preds = %633
  %648 = icmp slt i32 %642, 0
  br i1 %648, label %649, label %656

649:                                              ; preds = %647
  %650 = load i32, ptr %632, align 4, !tbaa !4
  %651 = icmp eq i32 %650, 11
  br i1 %651, label %652, label %657

652:                                              ; preds = %649
  store i32 1, ptr %461, align 4, !tbaa !17
  %653 = icmp eq i32 %634, 0
  br i1 %653, label %654, label %660

654:                                              ; preds = %652
  %655 = load i32, ptr %632, align 4, !tbaa !4
  br label %657

656:                                              ; preds = %647
  store i32 1, ptr %459, align 8, !tbaa !24
  br label %660

657:                                              ; preds = %654, %649
  %658 = phi i32 [ %655, %654 ], [ %650, %649 ]
  %659 = tail call ptr @strerror(i32 noundef %658) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %659) #13
  br label %879

660:                                              ; preds = %656, %652, %644
  %661 = phi i32 [ %634, %652 ], [ %634, %656 ], [ %645, %644 ]
  %662 = load i32, ptr %458, align 8, !tbaa !34
  %663 = add i32 %662, %661
  store i32 %663, ptr %458, align 8, !tbaa !34
  %664 = load ptr, ptr %460, align 8, !tbaa !29
  store ptr %664, ptr %457, align 8, !tbaa !35
  br label %665

665:                                              ; preds = %660, %512
  %666 = phi i32 [ %663, %660 ], [ %515, %512 ]
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %697, label %668

668:                                              ; preds = %665
  %669 = load i32, ptr %461, align 4, !tbaa !17
  %670 = icmp ne i32 %669, 0
  %671 = icmp ult i32 %666, 4
  %672 = and i1 %671, %670
  br i1 %672, label %697, label %673

673:                                              ; preds = %668
  %674 = icmp ugt i32 %666, 3
  %675 = load ptr, ptr %457, align 8, !tbaa !35
  br i1 %674, label %676, label %693

676:                                              ; preds = %673
  %677 = load i8, ptr %675, align 1, !tbaa !36
  %678 = icmp eq i8 %677, 31
  br i1 %678, label %679, label %693

679:                                              ; preds = %676
  %680 = getelementptr inbounds nuw i8, ptr %675, i64 1
  %681 = load i8, ptr %680, align 1, !tbaa !36
  %682 = icmp eq i8 %681, -117
  br i1 %682, label %683, label %693

683:                                              ; preds = %679
  %684 = getelementptr inbounds nuw i8, ptr %675, i64 2
  %685 = load i8, ptr %684, align 1, !tbaa !36
  %686 = icmp eq i8 %685, 8
  br i1 %686, label %687, label %693

687:                                              ; preds = %683
  %688 = getelementptr inbounds nuw i8, ptr %675, i64 3
  %689 = load i8, ptr %688, align 1, !tbaa !36
  %690 = icmp ult i8 %689, 32
  br i1 %690, label %691, label %693

691:                                              ; preds = %687
  %692 = tail call i32 @inflateReset(ptr noundef nonnull %457) #13
  store i32 2, ptr %452, align 8, !tbaa !26
  store i32 1, ptr %463, align 4, !tbaa !33
  store i32 0, ptr %467, align 8, !tbaa !32
  br label %834

693:                                              ; preds = %687, %683, %679, %676, %673
  %694 = load ptr, ptr %455, align 8, !tbaa !30
  store ptr %694, ptr %464, align 8, !tbaa !20
  %695 = zext i32 %666 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %694, ptr align 1 %675, i64 %695, i1 false)
  %696 = load i32, ptr %458, align 8, !tbaa !34
  store i32 %696, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %458, align 8, !tbaa !34
  store i32 1, ptr %452, align 8, !tbaa !26
  br label %836

697:                                              ; preds = %668, %665, %505
  %698 = load i32, ptr %452, align 8, !tbaa !26
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %846, label %834

700:                                              ; preds = %475
  %701 = load ptr, ptr %455, align 8, !tbaa !30
  %702 = load i32, ptr %453, align 8, !tbaa !27
  %703 = shl i32 %702, 1
  store i32 0, ptr %461, align 4, !tbaa !17
  %704 = tail call ptr @__errno_location() #16
  store i32 0, ptr %704, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %705

705:                                              ; preds = %716, %700
  %706 = phi i32 [ %718, %716 ], [ 0, %700 ]
  %707 = sub i32 %703, %706
  %708 = tail call i32 @llvm.umin.i32(i32 %707, i32 1073741824)
  %709 = load i32, ptr %462, align 4, !tbaa !46
  %710 = zext i32 %706 to i64
  %711 = getelementptr inbounds nuw i8, ptr %701, i64 %710
  %712 = zext nneg i32 %708 to i64
  %713 = tail call i64 @read(i32 noundef %709, ptr noundef %711, i64 noundef %712) #13
  %714 = trunc i64 %713 to i32
  %715 = icmp slt i32 %714, 1
  br i1 %715, label %720, label %716

716:                                              ; preds = %705
  %717 = load i32, ptr %0, align 4, !tbaa !4
  %718 = add i32 %717, %714
  store i32 %718, ptr %0, align 4, !tbaa !4
  %719 = icmp ult i32 %718, %703
  br i1 %719, label %705, label %734, !llvm.loop !47

720:                                              ; preds = %705
  %721 = icmp slt i32 %714, 0
  br i1 %721, label %722, label %730

722:                                              ; preds = %720
  %723 = load i32, ptr %704, align 4, !tbaa !4
  %724 = icmp eq i32 %723, 11
  br i1 %724, label %725, label %731

725:                                              ; preds = %722
  store i32 1, ptr %461, align 4, !tbaa !17
  %726 = load i32, ptr %0, align 4, !tbaa !4
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %728, label %734

728:                                              ; preds = %725
  %729 = load i32, ptr %704, align 4, !tbaa !4
  br label %731

730:                                              ; preds = %720
  store i32 1, ptr %459, align 8, !tbaa !24
  br label %734

731:                                              ; preds = %728, %722
  %732 = phi i32 [ %729, %728 ], [ %723, %722 ]
  %733 = tail call ptr @strerror(i32 noundef %732) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %733) #13
  br label %879

734:                                              ; preds = %730, %725, %716
  %735 = load ptr, ptr %455, align 8, !tbaa !30
  store ptr %735, ptr %464, align 8, !tbaa !20
  br label %846

736:                                              ; preds = %475
  %737 = load i32, ptr %453, align 8, !tbaa !27
  %738 = shl i32 %737, 1
  store i32 %738, ptr %454, align 8, !tbaa !48
  %739 = load ptr, ptr %455, align 8, !tbaa !30
  store ptr %739, ptr %456, align 8, !tbaa !49
  br label %740

740:                                              ; preds = %813, %736
  %741 = phi i32 [ 0, %736 ], [ %792, %813 ]
  %742 = load i32, ptr %458, align 8, !tbaa !34
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %744, label %791

744:                                              ; preds = %740
  %745 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %745, label %824 [
    i32 0, label %746
    i32 -5, label %746
  ]

746:                                              ; preds = %744, %744
  %747 = load i32, ptr %459, align 8, !tbaa !24
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %749, label %787

749:                                              ; preds = %746
  %750 = load ptr, ptr %460, align 8, !tbaa !29
  %751 = load i32, ptr %453, align 8, !tbaa !27
  store i32 0, ptr %461, align 4, !tbaa !17
  %752 = tail call ptr @__errno_location() #16
  store i32 0, ptr %752, align 4, !tbaa !4
  br label %753

753:                                              ; preds = %764, %749
  %754 = phi i32 [ 0, %749 ], [ %765, %764 ]
  %755 = sub i32 %751, %754
  %756 = tail call i32 @llvm.umin.i32(i32 %755, i32 1073741824)
  %757 = load i32, ptr %462, align 4, !tbaa !46
  %758 = zext i32 %754 to i64
  %759 = getelementptr inbounds nuw i8, ptr %750, i64 %758
  %760 = zext nneg i32 %756 to i64
  %761 = tail call i64 @read(i32 noundef %757, ptr noundef %759, i64 noundef %760) #13
  %762 = trunc i64 %761 to i32
  %763 = icmp slt i32 %762, 1
  br i1 %763, label %767, label %764

764:                                              ; preds = %753
  %765 = add i32 %754, %762
  %766 = icmp ult i32 %765, %751
  br i1 %766, label %753, label %781, !llvm.loop !47

767:                                              ; preds = %753
  %768 = icmp slt i32 %762, 0
  br i1 %768, label %769, label %776

769:                                              ; preds = %767
  %770 = load i32, ptr %752, align 4, !tbaa !4
  %771 = icmp eq i32 %770, 11
  br i1 %771, label %772, label %777

772:                                              ; preds = %769
  store i32 1, ptr %461, align 4, !tbaa !17
  %773 = icmp eq i32 %754, 0
  br i1 %773, label %774, label %781

774:                                              ; preds = %772
  %775 = load i32, ptr %752, align 4, !tbaa !4
  br label %777

776:                                              ; preds = %767
  store i32 1, ptr %459, align 8, !tbaa !24
  br label %781

777:                                              ; preds = %774, %769
  %778 = phi i32 [ %775, %774 ], [ %770, %769 ]
  %779 = tail call ptr @strerror(i32 noundef %778) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %779) #13
  %780 = load i32, ptr %14, align 8, !tbaa !16
  br label %824

781:                                              ; preds = %776, %772, %764
  %782 = phi i32 [ %754, %772 ], [ %754, %776 ], [ %765, %764 ]
  %783 = load i32, ptr %458, align 8, !tbaa !34
  %784 = add i32 %783, %782
  store i32 %784, ptr %458, align 8, !tbaa !34
  %785 = load ptr, ptr %460, align 8, !tbaa !29
  store ptr %785, ptr %457, align 8, !tbaa !35
  %786 = icmp eq i32 %784, 0
  br i1 %786, label %787, label %791

787:                                              ; preds = %781, %746
  %788 = load i32, ptr %461, align 4, !tbaa !17
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %790, label %824

790:                                              ; preds = %787
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %824

791:                                              ; preds = %781, %740
  %792 = tail call i32 @inflate(ptr noundef nonnull %457, i32 noundef 0) #13
  %793 = load i32, ptr %454, align 8, !tbaa !48
  %794 = icmp ult i32 %793, %738
  br i1 %794, label %795, label %796

795:                                              ; preds = %791
  store i32 0, ptr %463, align 4, !tbaa !33
  br label %796

796:                                              ; preds = %795, %791
  switch i32 %792, label %813 [
    i32 -2, label %797
    i32 2, label %797
    i32 -4, label %798
    i32 -3, label %799
  ]

797:                                              ; preds = %796, %796
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %824

798:                                              ; preds = %796
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %817

799:                                              ; preds = %796
  %800 = load i32, ptr %463, align 4, !tbaa !33
  %801 = icmp eq i32 %800, 1
  br i1 %801, label %802, label %808

802:                                              ; preds = %799
  store i32 0, ptr %458, align 8, !tbaa !34
  store i32 1, ptr %459, align 8, !tbaa !24
  store i32 0, ptr %452, align 8, !tbaa !26
  %803 = sub i32 %738, %793
  store i32 %803, ptr %0, align 8, !tbaa !19
  %804 = load ptr, ptr %456, align 8, !tbaa !49
  %805 = zext i32 %803 to i64
  %806 = sub nsw i64 0, %805
  %807 = getelementptr inbounds i8, ptr %804, i64 %806
  store ptr %807, ptr %464, align 8, !tbaa !20
  br label %834

808:                                              ; preds = %799
  %809 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %810 = load ptr, ptr %809, align 8, !tbaa !50
  %811 = icmp eq ptr %810, null
  %812 = select i1 %811, ptr @.str.6, ptr %810
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %812) #13
  br label %817

813:                                              ; preds = %796
  %814 = icmp ne i32 %793, 0
  %815 = icmp ne i32 %792, 1
  %816 = select i1 %814, i1 %815, i1 false
  br i1 %816, label %740, label %824, !llvm.loop !51

817:                                              ; preds = %808, %798
  %818 = load i32, ptr %454, align 8, !tbaa !48
  %819 = sub i32 %738, %818
  store i32 %819, ptr %0, align 8, !tbaa !19
  %820 = load ptr, ptr %456, align 8, !tbaa !49
  %821 = zext i32 %819 to i64
  %822 = sub nsw i64 0, %821
  %823 = getelementptr inbounds i8, ptr %820, i64 %822
  store ptr %823, ptr %464, align 8, !tbaa !20
  br label %879

824:                                              ; preds = %813, %797, %790, %787, %777, %744
  %825 = phi i32 [ %780, %777 ], [ %741, %787 ], [ %741, %790 ], [ %792, %797 ], [ %792, %813 ], [ %745, %744 ]
  %826 = load i32, ptr %454, align 8, !tbaa !48
  %827 = sub i32 %738, %826
  store i32 %827, ptr %0, align 8, !tbaa !19
  %828 = load ptr, ptr %456, align 8, !tbaa !49
  %829 = zext i32 %827 to i64
  %830 = sub nsw i64 0, %829
  %831 = getelementptr inbounds i8, ptr %828, i64 %830
  store ptr %831, ptr %464, align 8, !tbaa !20
  switch i32 %825, label %879 [
    i32 1, label %832
    i32 0, label %834
  ]

832:                                              ; preds = %824
  store i32 0, ptr %463, align 4, !tbaa !33
  store i32 0, ptr %452, align 8, !tbaa !26
  br label %834

833:                                              ; preds = %475
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %879

834:                                              ; preds = %832, %824, %802, %697, %691
  %835 = load i32, ptr %0, align 8, !tbaa !19
  br label %836

836:                                              ; preds = %834, %693
  %837 = phi i32 [ %835, %834 ], [ %696, %693 ]
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %839, label %846

839:                                              ; preds = %836
  %840 = load i32, ptr %459, align 8, !tbaa !24
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %845, label %842

842:                                              ; preds = %839
  %843 = load i32, ptr %458, align 8, !tbaa !34
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %846, label %845

845:                                              ; preds = %842, %839
  br label %475, !llvm.loop !52

846:                                              ; preds = %842, %836, %734, %697
  %847 = load i32, ptr %0, align 8, !tbaa !19
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %849, label %851

849:                                              ; preds = %846
  %850 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %850, align 4, !tbaa !61
  br label %879

851:                                              ; preds = %846, %470
  %852 = phi i32 [ %847, %846 ], [ %471, %470 ]
  %853 = tail call i32 @llvm.umin.i32(i32 %852, i32 %472)
  %854 = load ptr, ptr %464, align 8, !tbaa !20
  %855 = zext i32 %853 to i64
  %856 = tail call ptr @memchr(ptr noundef %854, i32 noundef 10, i64 noundef %855) #17
  %857 = icmp eq ptr %856, null
  %858 = ptrtoint ptr %856 to i64
  %859 = ptrtoint ptr %854 to i64
  %860 = sub i64 %858, %859
  %861 = trunc i64 %860 to i32
  %862 = add i32 %861, 1
  %863 = select i1 %857, i32 %853, i32 %862
  %864 = zext i32 %863 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %473, ptr align 1 %854, i64 %864, i1 false)
  %865 = load i32, ptr %0, align 8, !tbaa !19
  %866 = sub i32 %865, %863
  store i32 %866, ptr %0, align 8, !tbaa !19
  %867 = load ptr, ptr %464, align 8, !tbaa !20
  %868 = getelementptr inbounds nuw i8, ptr %867, i64 %864
  store ptr %868, ptr %464, align 8, !tbaa !20
  %869 = load i64, ptr %468, align 8, !tbaa !21
  %870 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %869, i64 %864), !nosanitize !22
  %871 = extractvalue { i64, i1 } %870, 1, !nosanitize !22
  br i1 %871, label %872, label %873, !prof !23, !nosanitize !22

872:                                              ; preds = %851
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

873:                                              ; preds = %851
  %874 = extractvalue { i64, i1 } %870, 0, !nosanitize !22
  store i64 %874, ptr %468, align 8, !tbaa !21
  %875 = sub i32 %472, %863
  %876 = getelementptr inbounds nuw i8, ptr %473, i64 %864
  %877 = icmp ne i32 %875, 0
  %878 = and i1 %857, %877
  br i1 %878, label %470, label %879, !llvm.loop !103

879:                                              ; preds = %873, %849, %833, %824, %817, %731, %657, %510, %496, %491
  %880 = phi ptr [ %473, %824 ], [ %473, %849 ], [ %473, %833 ], [ %473, %731 ], [ %473, %657 ], [ %473, %491 ], [ %473, %496 ], [ %473, %817 ], [ %473, %510 ], [ %876, %873 ]
  %881 = icmp eq ptr %880, %1
  br i1 %881, label %883, label %882

882:                                              ; preds = %879
  store i8 0, ptr %880, align 1, !tbaa !36
  br label %883

883:                                              ; preds = %882, %879, %448, %430, %421, %414, %328, %254, %107, %93, %88, %16, %9, %3
  %884 = phi ptr [ null, %9 ], [ null, %3 ], [ null, %16 ], [ null, %93 ], [ %1, %882 ], [ null, %879 ], [ null, %414 ], [ null, %448 ], [ null, %430 ], [ null, %328 ], [ null, %254 ], [ null, %88 ], [ null, %421 ], [ null, %107 ]
  ret ptr %884
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @gzdirect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %258, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !8
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %253

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load i32, ptr %8, align 8, !tbaa !26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %253

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 8, !tbaa !19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %253

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %17 = load i32, ptr %16, align 8, !tbaa !27
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %14
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %21 = load i32, ptr %20, align 4, !tbaa !28
  %22 = zext i32 %21 to i64
  %23 = tail call noalias ptr @malloc(i64 noundef %22) #15
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %23, ptr %24, align 8, !tbaa !29
  %25 = load i32, ptr %20, align 4, !tbaa !28
  %26 = shl i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = tail call noalias ptr @malloc(i64 noundef %27) #15
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %28, ptr %29, align 8, !tbaa !30
  %30 = icmp eq ptr %23, null
  %31 = icmp eq ptr %28, null
  %32 = or i1 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  tail call void @free(ptr noundef %28) #13
  tail call void @free(ptr noundef %23) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %253

34:                                               ; preds = %19
  %35 = load i32, ptr %20, align 4, !tbaa !28
  store i32 %35, ptr %16, align 8, !tbaa !27
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %37, align 8, !tbaa !25
  store ptr null, ptr %15, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  %38 = tail call i32 @inflateInit2_(ptr noundef nonnull %15, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %29, align 8, !tbaa !30
  tail call void @free(ptr noundef %41) #13
  %42 = load ptr, ptr %24, align 8, !tbaa !29
  tail call void @free(ptr noundef %42) #13
  store i32 0, ptr %16, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %253

43:                                               ; preds = %34, %14
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %45 = load i32, ptr %44, align 8, !tbaa !32
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %49 = load i32, ptr %48, align 4, !tbaa !33
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47, %43
  %52 = tail call i32 @inflateReset(ptr noundef nonnull %15) #13
  store i32 2, ptr %8, align 8, !tbaa !26
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %54 = load i32, ptr %53, align 4, !tbaa !33
  %55 = icmp ne i32 %54, -1
  %56 = zext i1 %55 to i32
  store i32 %56, ptr %53, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %253

57:                                               ; preds = %47
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %59 = load i32, ptr %58, align 8, !tbaa !16
  switch i32 %59, label %253 [
    i32 0, label %60
    i32 -5, label %60
  ]

60:                                               ; preds = %57, %57
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %62 = load i32, ptr %61, align 8, !tbaa !24
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %65 = load i32, ptr %64, align 8, !tbaa !34
  br i1 %63, label %66, label %218

66:                                               ; preds = %60
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %175, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %70 = load ptr, ptr %69, align 8, !tbaa !29
  %71 = load ptr, ptr %15, align 8, !tbaa !35
  %72 = icmp eq ptr %71, %70
  br i1 %72, label %175, label %73

73:                                               ; preds = %68
  %74 = ptrtoaddr ptr %71 to i64
  %75 = ptrtoaddr ptr %70 to i64
  %76 = zext i32 %65 to i64
  %77 = icmp ult i32 %65, 4
  %78 = sub i64 %75, %74
  %79 = icmp ult i64 %78, 32
  %80 = or i1 %77, %79
  br i1 %80, label %120, label %81

81:                                               ; preds = %73
  %82 = icmp ult i32 %65, 32
  br i1 %82, label %104, label %83

83:                                               ; preds = %81
  %84 = and i64 %76, 28
  %85 = and i64 %76, 4294967264
  %86 = getelementptr i8, ptr %70, i64 %85
  %87 = getelementptr i8, ptr %71, i64 %85
  %88 = trunc nuw i64 %85 to i32
  %89 = sub i32 %65, %88
  br label %90

90:                                               ; preds = %90, %83
  %91 = phi i64 [ 0, %83 ], [ %98, %90 ]
  %92 = getelementptr i8, ptr %70, i64 %91
  %93 = getelementptr i8, ptr %71, i64 %91
  %94 = getelementptr i8, ptr %93, i64 16
  %95 = load <16 x i8>, ptr %93, align 1, !tbaa !36
  %96 = load <16 x i8>, ptr %94, align 1, !tbaa !36
  %97 = getelementptr i8, ptr %92, i64 16
  store <16 x i8> %95, ptr %92, align 1, !tbaa !36
  store <16 x i8> %96, ptr %97, align 1, !tbaa !36
  %98 = add nuw i64 %91, 32
  %99 = icmp eq i64 %98, %85
  br i1 %99, label %100, label %90, !llvm.loop !104

100:                                              ; preds = %90
  %101 = icmp eq i64 %85, %76
  br i1 %101, label %173, label %102

102:                                              ; preds = %100
  %103 = icmp eq i64 %84, 0
  br i1 %103, label %120, label %104, !prof !41

104:                                              ; preds = %102, %81
  %105 = phi i64 [ %85, %102 ], [ 0, %81 ]
  %106 = and i64 %76, 4294967292
  %107 = getelementptr i8, ptr %70, i64 %106
  %108 = getelementptr i8, ptr %71, i64 %106
  %109 = trunc nuw i64 %106 to i32
  %110 = sub i32 %65, %109
  br label %111

111:                                              ; preds = %111, %104
  %112 = phi i64 [ %105, %104 ], [ %116, %111 ]
  %113 = getelementptr i8, ptr %70, i64 %112
  %114 = getelementptr i8, ptr %71, i64 %112
  %115 = load <4 x i8>, ptr %114, align 1, !tbaa !36
  store <4 x i8> %115, ptr %113, align 1, !tbaa !36
  %116 = add nuw i64 %112, 4
  %117 = icmp eq i64 %116, %106
  br i1 %117, label %118, label %111, !llvm.loop !105

118:                                              ; preds = %111
  %119 = icmp eq i64 %106, %76
  br i1 %119, label %173, label %120

120:                                              ; preds = %118, %102, %73
  %121 = phi ptr [ %70, %73 ], [ %86, %102 ], [ %107, %118 ]
  %122 = phi ptr [ %71, %73 ], [ %87, %102 ], [ %108, %118 ]
  %123 = phi i32 [ %65, %73 ], [ %89, %102 ], [ %110, %118 ]
  %124 = add i32 %123, -1
  %125 = and i32 %123, 7
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %138, label %127

127:                                              ; preds = %127, %120
  %128 = phi ptr [ %134, %127 ], [ %121, %120 ]
  %129 = phi ptr [ %132, %127 ], [ %122, %120 ]
  %130 = phi i32 [ %135, %127 ], [ %123, %120 ]
  %131 = phi i32 [ %136, %127 ], [ 0, %120 ]
  %132 = getelementptr inbounds nuw i8, ptr %129, i64 1
  %133 = load i8, ptr %129, align 1, !tbaa !36
  %134 = getelementptr inbounds nuw i8, ptr %128, i64 1
  store i8 %133, ptr %128, align 1, !tbaa !36
  %135 = add i32 %130, -1
  %136 = add i32 %131, 1
  %137 = icmp eq i32 %136, %125
  br i1 %137, label %138, label %127, !llvm.loop !106

138:                                              ; preds = %127, %120
  %139 = phi ptr [ %121, %120 ], [ %134, %127 ]
  %140 = phi ptr [ %122, %120 ], [ %132, %127 ]
  %141 = phi i32 [ %123, %120 ], [ %135, %127 ]
  %142 = icmp ult i32 %124, 7
  br i1 %142, label %173, label %143

143:                                              ; preds = %143, %138
  %144 = phi ptr [ %170, %143 ], [ %139, %138 ]
  %145 = phi ptr [ %168, %143 ], [ %140, %138 ]
  %146 = phi i32 [ %171, %143 ], [ %141, %138 ]
  %147 = getelementptr inbounds nuw i8, ptr %145, i64 1
  %148 = load i8, ptr %145, align 1, !tbaa !36
  %149 = getelementptr inbounds nuw i8, ptr %144, i64 1
  store i8 %148, ptr %144, align 1, !tbaa !36
  %150 = getelementptr inbounds nuw i8, ptr %145, i64 2
  %151 = load i8, ptr %147, align 1, !tbaa !36
  %152 = getelementptr inbounds nuw i8, ptr %144, i64 2
  store i8 %151, ptr %149, align 1, !tbaa !36
  %153 = getelementptr inbounds nuw i8, ptr %145, i64 3
  %154 = load i8, ptr %150, align 1, !tbaa !36
  %155 = getelementptr inbounds nuw i8, ptr %144, i64 3
  store i8 %154, ptr %152, align 1, !tbaa !36
  %156 = getelementptr inbounds nuw i8, ptr %145, i64 4
  %157 = load i8, ptr %153, align 1, !tbaa !36
  %158 = getelementptr inbounds nuw i8, ptr %144, i64 4
  store i8 %157, ptr %155, align 1, !tbaa !36
  %159 = getelementptr inbounds nuw i8, ptr %145, i64 5
  %160 = load i8, ptr %156, align 1, !tbaa !36
  %161 = getelementptr inbounds nuw i8, ptr %144, i64 5
  store i8 %160, ptr %158, align 1, !tbaa !36
  %162 = getelementptr inbounds nuw i8, ptr %145, i64 6
  %163 = load i8, ptr %159, align 1, !tbaa !36
  %164 = getelementptr inbounds nuw i8, ptr %144, i64 6
  store i8 %163, ptr %161, align 1, !tbaa !36
  %165 = getelementptr inbounds nuw i8, ptr %145, i64 7
  %166 = load i8, ptr %162, align 1, !tbaa !36
  %167 = getelementptr inbounds nuw i8, ptr %144, i64 7
  store i8 %166, ptr %164, align 1, !tbaa !36
  %168 = getelementptr inbounds nuw i8, ptr %145, i64 8
  %169 = load i8, ptr %165, align 1, !tbaa !36
  %170 = getelementptr inbounds nuw i8, ptr %144, i64 8
  store i8 %169, ptr %167, align 1, !tbaa !36
  %171 = add i32 %146, -8
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %143, !llvm.loop !107

173:                                              ; preds = %143, %138, %118, %100
  %174 = load i32, ptr %64, align 8, !tbaa !34
  br label %175

175:                                              ; preds = %173, %68, %66
  %176 = phi i32 [ %174, %173 ], [ %65, %68 ], [ 0, %66 ]
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %178 = load ptr, ptr %177, align 8, !tbaa !29
  %179 = zext i32 %176 to i64
  %180 = getelementptr inbounds nuw i8, ptr %178, i64 %179
  %181 = load i32, ptr %16, align 8, !tbaa !27
  %182 = sub i32 %181, %176
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %183, align 4, !tbaa !17
  %184 = tail call ptr @__errno_location() #16
  store i32 0, ptr %184, align 4, !tbaa !4
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %186

186:                                              ; preds = %197, %175
  %187 = phi i32 [ 0, %175 ], [ %198, %197 ]
  %188 = sub i32 %182, %187
  %189 = tail call i32 @llvm.umin.i32(i32 %188, i32 1073741824)
  %190 = load i32, ptr %185, align 4, !tbaa !46
  %191 = zext i32 %187 to i64
  %192 = getelementptr inbounds nuw i8, ptr %180, i64 %191
  %193 = zext nneg i32 %189 to i64
  %194 = tail call i64 @read(i32 noundef %190, ptr noundef %192, i64 noundef %193) #13
  %195 = trunc i64 %194 to i32
  %196 = icmp slt i32 %195, 1
  br i1 %196, label %200, label %197

197:                                              ; preds = %186
  %198 = add i32 %187, %195
  %199 = icmp ult i32 %198, %182
  br i1 %199, label %186, label %213, !llvm.loop !47

200:                                              ; preds = %186
  %201 = icmp slt i32 %195, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %200
  %203 = load i32, ptr %184, align 4, !tbaa !4
  %204 = icmp eq i32 %203, 11
  br i1 %204, label %205, label %210

205:                                              ; preds = %202
  store i32 1, ptr %183, align 4, !tbaa !17
  %206 = icmp eq i32 %187, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %205
  %208 = load i32, ptr %184, align 4, !tbaa !4
  br label %210

209:                                              ; preds = %200
  store i32 1, ptr %61, align 8, !tbaa !24
  br label %213

210:                                              ; preds = %207, %202
  %211 = phi i32 [ %208, %207 ], [ %203, %202 ]
  %212 = tail call ptr @strerror(i32 noundef %211) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %212) #13
  br label %253

213:                                              ; preds = %209, %205, %197
  %214 = phi i32 [ %187, %205 ], [ %187, %209 ], [ %198, %197 ]
  %215 = load i32, ptr %64, align 8, !tbaa !34
  %216 = add i32 %215, %214
  store i32 %216, ptr %64, align 8, !tbaa !34
  %217 = load ptr, ptr %177, align 8, !tbaa !29
  store ptr %217, ptr %15, align 8, !tbaa !35
  br label %218

218:                                              ; preds = %213, %60
  %219 = phi i32 [ %216, %213 ], [ %65, %60 ]
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %253, label %221

221:                                              ; preds = %218
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %223 = load i32, ptr %222, align 4, !tbaa !17
  %224 = icmp ne i32 %223, 0
  %225 = icmp ult i32 %219, 4
  %226 = and i1 %225, %224
  br i1 %226, label %253, label %227

227:                                              ; preds = %221
  %228 = icmp ugt i32 %219, 3
  %229 = load ptr, ptr %15, align 8, !tbaa !35
  br i1 %228, label %230, label %247

230:                                              ; preds = %227
  %231 = load i8, ptr %229, align 1, !tbaa !36
  %232 = icmp eq i8 %231, 31
  br i1 %232, label %233, label %247

233:                                              ; preds = %230
  %234 = getelementptr inbounds nuw i8, ptr %229, i64 1
  %235 = load i8, ptr %234, align 1, !tbaa !36
  %236 = icmp eq i8 %235, -117
  br i1 %236, label %237, label %247

237:                                              ; preds = %233
  %238 = getelementptr inbounds nuw i8, ptr %229, i64 2
  %239 = load i8, ptr %238, align 1, !tbaa !36
  %240 = icmp eq i8 %239, 8
  br i1 %240, label %241, label %247

241:                                              ; preds = %237
  %242 = getelementptr inbounds nuw i8, ptr %229, i64 3
  %243 = load i8, ptr %242, align 1, !tbaa !36
  %244 = icmp ult i8 %243, 32
  br i1 %244, label %245, label %247

245:                                              ; preds = %241
  %246 = tail call i32 @inflateReset(ptr noundef nonnull %15) #13
  store i32 2, ptr %8, align 8, !tbaa !26
  store i32 1, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %253

247:                                              ; preds = %241, %237, %233, %230, %227
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %249 = load ptr, ptr %248, align 8, !tbaa !30
  %250 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %249, ptr %250, align 8, !tbaa !20
  %251 = zext i32 %219 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %249, ptr align 1 %229, i64 %251, i1 false)
  %252 = load i32, ptr %64, align 8, !tbaa !34
  store i32 %252, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %64, align 8, !tbaa !34
  store i32 1, ptr %8, align 8, !tbaa !26
  br label %253

253:                                              ; preds = %247, %245, %221, %218, %210, %57, %51, %40, %33, %11, %7, %3
  %254 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %255 = load i32, ptr %254, align 8, !tbaa !32
  %256 = icmp eq i32 %255, 1
  %257 = zext i1 %256 to i32
  br label %258

258:                                              ; preds = %253, %1
  %259 = phi i32 [ %257, %253 ], [ 0, %1 ]
  ret i32 %259
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @gzclose_r(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !8
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

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflateReset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git 3cab3bc6384b5f58cab7140d00d7a527eade010e)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 24}
!9 = !{!"", !10, i64 0, !5, i64 24, !5, i64 28, !11, i64 32, !5, i64 40, !5, i64 44, !11, i64 48, !11, i64 56, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !13, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !13, i64 112, !5, i64 120, !11, i64 128, !14, i64 136}
!10 = !{!"gzFile_s", !5, i64 0, !11, i64 8, !13, i64 16}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"z_stream_s", !11, i64 0, !5, i64 8, !13, i64 16, !11, i64 24, !5, i64 32, !13, i64 40, !11, i64 48, !15, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !5, i64 88, !13, i64 96, !13, i64 104}
!15 = !{!"p1 _ZTS14internal_state", !12, i64 0}
!16 = !{!9, !5, i64 120}
!17 = !{!9, !5, i64 76}
!18 = !{!9, !13, i64 112}
!19 = !{!9, !5, i64 0}
!20 = !{!9, !11, i64 8}
!21 = !{!9, !13, i64 16}
!22 = !{}
!23 = !{!"branch_weights", i32 1, i32 1048575}
!24 = !{!9, !5, i64 88}
!25 = !{!9, !5, i64 144}
!26 = !{!9, !5, i64 72}
!27 = !{!9, !5, i64 40}
!28 = !{!9, !5, i64 44}
!29 = !{!9, !11, i64 48}
!30 = !{!9, !11, i64 56}
!31 = !{!9, !11, i64 136}
!32 = !{!9, !5, i64 64}
!33 = !{!9, !5, i64 68}
!34 = !{!14, !5, i64 8}
!35 = !{!14, !11, i64 0}
!36 = !{!6, !6, i64 0}
!37 = distinct !{!37, !38, !39, !40}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"branch_weights", i32 4, i32 28}
!42 = distinct !{!42, !38, !39, !40}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = distinct !{!45, !38, !39}
!46 = !{!9, !5, i64 28}
!47 = distinct !{!47, !38}
!48 = !{!14, !5, i64 32}
!49 = !{!14, !11, i64 24}
!50 = !{!14, !11, i64 48}
!51 = distinct !{!51, !38}
!52 = distinct !{!52, !38}
!53 = distinct !{!53, !38}
!54 = distinct !{!54, !38, !39, !40}
!55 = distinct !{!55, !38, !39, !40}
!56 = distinct !{!56, !44}
!57 = distinct !{!57, !38, !39}
!58 = !{!9, !5, i64 168}
!59 = !{!9, !11, i64 160}
!60 = distinct !{!60, !38}
!61 = !{!9, !5, i64 92}
!62 = distinct !{!62, !38, !39, !40}
!63 = distinct !{!63, !38, !39, !40}
!64 = distinct !{!64, !44}
!65 = distinct !{!65, !38, !39}
!66 = distinct !{!66, !38, !39, !40}
!67 = distinct !{!67, !38, !39, !40}
!68 = distinct !{!68, !44}
!69 = distinct !{!69, !38, !39}
!70 = distinct !{!70, !38, !39, !40}
!71 = distinct !{!71, !38, !39, !40}
!72 = distinct !{!72, !44}
!73 = distinct !{!73, !38, !39}
!74 = distinct !{!74, !38, !39, !40}
!75 = distinct !{!75, !38, !39, !40}
!76 = distinct !{!76, !44}
!77 = distinct !{!77, !38, !39}
!78 = distinct !{!78, !38, !39, !40}
!79 = distinct !{!79, !38, !39, !40}
!80 = distinct !{!80, !44}
!81 = distinct !{!81, !38, !39}
!82 = distinct !{!82, !38, !39, !40}
!83 = distinct !{!83, !38, !39, !40}
!84 = distinct !{!84, !44}
!85 = distinct !{!85, !38, !39}
!86 = distinct !{!86, !38, !39, !40}
!87 = distinct !{!87, !38, !39, !40}
!88 = distinct !{!88, !44}
!89 = distinct !{!89, !38, !39}
!90 = distinct !{!90, !38, !39, !40}
!91 = distinct !{!91, !38, !39, !40}
!92 = distinct !{!92, !44}
!93 = distinct !{!93, !38, !39}
!94 = distinct !{!94, !38}
!95 = distinct !{!95, !38, !39, !40}
!96 = distinct !{!96, !38, !39, !40}
!97 = distinct !{!97, !44}
!98 = distinct !{!98, !38, !39}
!99 = distinct !{!99, !38, !39, !40}
!100 = distinct !{!100, !38, !39, !40}
!101 = distinct !{!101, !44}
!102 = distinct !{!102, !38, !39}
!103 = distinct !{!103, !38}
!104 = distinct !{!104, !38, !39, !40}
!105 = distinct !{!105, !38, !39, !40}
!106 = distinct !{!106, !44}
!107 = distinct !{!107, !38, !39}
!108 = !{!9, !11, i64 32}
