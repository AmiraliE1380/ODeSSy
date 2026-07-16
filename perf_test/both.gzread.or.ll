; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/both.gzread.ll'
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
  br i1 %4, label %1131, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !8
  %8 = icmp eq i32 %7, 7247
  br i1 %8, label %9, label %1131

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
  br i1 %15, label %1131, label %16

16:                                               ; preds = %12, %9, %9
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %17 = icmp slt i32 %2, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str) #13
  br label %1131

19:                                               ; preds = %16
  %20 = zext nneg i32 %2 to i64
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %1119, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load i64, ptr %23, align 8, !tbaa !18
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %480, label %26

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

45:                                               ; preds = %477, %26
  %46 = phi i64 [ %478, %477 ], [ %24, %26 ]
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
  br i1 %68, label %55, label %69, !prof !21, !nosanitize !20

69:                                               ; preds = %65
  %70 = extractvalue { i64, i1 } %67, 0, !nosanitize !20
  store i64 %70, ptr %23, align 8, !tbaa !18
  br label %477

71:                                               ; preds = %45
  %72 = load i32, ptr %29, align 8, !tbaa !24
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %30, align 8, !tbaa !25
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %480, label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %474, %77
  %79 = load i32, ptr %31, align 8, !tbaa !26
  switch i32 %79, label %462 [
    i32 0, label %80
    i32 1, label %318
    i32 2, label %362
  ]

80:                                               ; preds = %78
  %81 = load i32, ptr %32, align 8, !tbaa !27
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %80
  %84 = load i32, ptr %42, align 4, !tbaa !28
  %85 = zext i32 %84 to i64
  %86 = tail call noalias ptr @malloc(i64 noundef %85) #16
  store ptr %86, ptr %37, align 8, !tbaa !29
  %87 = load i32, ptr %42, align 4, !tbaa !28
  %88 = shl i32 %87, 1
  %89 = zext i32 %88 to i64
  %90 = tail call noalias ptr @malloc(i64 noundef %89) #16
  store ptr %90, ptr %34, align 8, !tbaa !30
  %91 = icmp eq ptr %86, null
  %92 = icmp eq ptr %90, null
  %93 = or i1 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  tail call void @free(ptr noundef %90) #13
  tail call void @free(ptr noundef %86) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1119

95:                                               ; preds = %83
  %96 = load i32, ptr %42, align 4, !tbaa !28
  store i32 %96, ptr %32, align 8, !tbaa !27
  store i32 0, ptr %30, align 8, !tbaa !25
  store ptr null, ptr %36, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  %97 = tail call i32 @inflateInit2_(ptr noundef nonnull %36, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %34, align 8, !tbaa !30
  tail call void @free(ptr noundef %100) #13
  %101 = load ptr, ptr %37, align 8, !tbaa !29
  tail call void @free(ptr noundef %101) #13
  store i32 0, ptr %32, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1119

102:                                              ; preds = %95, %80
  %103 = load i32, ptr %44, align 8, !tbaa !32
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %40, align 4, !tbaa !33
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105, %102
  %109 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  %110 = load i32, ptr %40, align 4, !tbaa !33
  %111 = icmp ne i32 %110, -1
  %112 = zext i1 %111 to i32
  store i32 %112, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %315

113:                                              ; preds = %105
  %114 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %114, label %1121 [
    i32 0, label %115
    i32 -5, label %115
  ]

115:                                              ; preds = %113, %113
  %116 = load i32, ptr %29, align 8, !tbaa !24
  %117 = icmp eq i32 %116, 0
  %118 = load i32, ptr %30, align 8, !tbaa !34
  br i1 %117, label %119, label %283

119:                                              ; preds = %115
  %120 = icmp eq i32 %118, 0
  br i1 %120, label %227, label %121

121:                                              ; preds = %119
  %122 = load ptr, ptr %37, align 8, !tbaa !29
  %123 = load ptr, ptr %36, align 8, !tbaa !35
  %124 = icmp eq ptr %123, %122
  br i1 %124, label %227, label %125

125:                                              ; preds = %121
  %126 = ptrtoaddr ptr %123 to i64
  %127 = ptrtoaddr ptr %122 to i64
  %128 = zext i32 %118 to i64
  %129 = icmp ult i32 %118, 4
  %130 = sub i64 %127, %126
  %131 = icmp ult i64 %130, 32
  %132 = or i1 %129, %131
  br i1 %132, label %172, label %133

133:                                              ; preds = %125
  %134 = icmp ult i32 %118, 32
  br i1 %134, label %156, label %135

135:                                              ; preds = %133
  %136 = and i64 %128, 28
  %137 = and i64 %128, 4294967264
  %138 = getelementptr i8, ptr %122, i64 %137
  %139 = getelementptr i8, ptr %123, i64 %137
  %140 = trunc nuw i64 %137 to i32
  %141 = sub i32 %118, %140
  br label %142

142:                                              ; preds = %142, %135
  %143 = phi i64 [ 0, %135 ], [ %150, %142 ]
  %144 = getelementptr i8, ptr %122, i64 %143
  %145 = getelementptr i8, ptr %123, i64 %143
  %146 = getelementptr i8, ptr %145, i64 16
  %147 = load <16 x i8>, ptr %145, align 1, !tbaa !36
  %148 = load <16 x i8>, ptr %146, align 1, !tbaa !36
  %149 = getelementptr i8, ptr %144, i64 16
  store <16 x i8> %147, ptr %144, align 1, !tbaa !36
  store <16 x i8> %148, ptr %149, align 1, !tbaa !36
  %150 = add nuw i64 %143, 32
  %151 = icmp eq i64 %150, %137
  br i1 %151, label %152, label %142, !llvm.loop !37

152:                                              ; preds = %142
  %153 = icmp eq i64 %137, %128
  br i1 %153, label %225, label %154

154:                                              ; preds = %152
  %155 = icmp eq i64 %136, 0
  br i1 %155, label %172, label %156, !prof !41

156:                                              ; preds = %154, %133
  %157 = phi i64 [ %137, %154 ], [ 0, %133 ]
  %158 = and i64 %128, 4294967292
  %159 = getelementptr i8, ptr %122, i64 %158
  %160 = getelementptr i8, ptr %123, i64 %158
  %161 = trunc nuw i64 %158 to i32
  %162 = sub i32 %118, %161
  br label %163

163:                                              ; preds = %163, %156
  %164 = phi i64 [ %157, %156 ], [ %168, %163 ]
  %165 = getelementptr i8, ptr %122, i64 %164
  %166 = getelementptr i8, ptr %123, i64 %164
  %167 = load <4 x i8>, ptr %166, align 1, !tbaa !36
  store <4 x i8> %167, ptr %165, align 1, !tbaa !36
  %168 = add nuw i64 %164, 4
  %169 = icmp eq i64 %168, %158
  br i1 %169, label %170, label %163, !llvm.loop !42

170:                                              ; preds = %163
  %171 = icmp eq i64 %158, %128
  br i1 %171, label %225, label %172

172:                                              ; preds = %170, %154, %125
  %173 = phi ptr [ %122, %125 ], [ %138, %154 ], [ %159, %170 ]
  %174 = phi ptr [ %123, %125 ], [ %139, %154 ], [ %160, %170 ]
  %175 = phi i32 [ %118, %125 ], [ %141, %154 ], [ %162, %170 ]
  %176 = add i32 %175, -1
  %177 = and i32 %175, 7
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %190, label %179

179:                                              ; preds = %179, %172
  %180 = phi ptr [ %186, %179 ], [ %173, %172 ]
  %181 = phi ptr [ %187, %179 ], [ %174, %172 ]
  %182 = phi i32 [ %185, %179 ], [ %175, %172 ]
  %183 = phi i32 [ %188, %179 ], [ 0, %172 ]
  %184 = load i8, ptr %181, align 1, !tbaa !36
  store i8 %184, ptr %180, align 1, !tbaa !36
  %185 = add i32 %182, -1
  %186 = getelementptr inbounds nuw i8, ptr %180, i64 1
  %187 = getelementptr inbounds nuw i8, ptr %181, i64 1
  %188 = add i32 %183, 1
  %189 = icmp eq i32 %188, %177
  br i1 %189, label %190, label %179, !llvm.loop !43

190:                                              ; preds = %179, %172
  %191 = phi ptr [ %173, %172 ], [ %186, %179 ]
  %192 = phi ptr [ %174, %172 ], [ %187, %179 ]
  %193 = phi i32 [ %175, %172 ], [ %185, %179 ]
  %194 = icmp ult i32 %176, 7
  br i1 %194, label %225, label %195

195:                                              ; preds = %195, %190
  %196 = phi ptr [ %222, %195 ], [ %191, %190 ]
  %197 = phi ptr [ %223, %195 ], [ %192, %190 ]
  %198 = phi i32 [ %221, %195 ], [ %193, %190 ]
  %199 = load i8, ptr %197, align 1, !tbaa !36
  store i8 %199, ptr %196, align 1, !tbaa !36
  %200 = getelementptr inbounds nuw i8, ptr %196, i64 1
  %201 = getelementptr inbounds nuw i8, ptr %197, i64 1
  %202 = load i8, ptr %201, align 1, !tbaa !36
  store i8 %202, ptr %200, align 1, !tbaa !36
  %203 = getelementptr inbounds nuw i8, ptr %196, i64 2
  %204 = getelementptr inbounds nuw i8, ptr %197, i64 2
  %205 = load i8, ptr %204, align 1, !tbaa !36
  store i8 %205, ptr %203, align 1, !tbaa !36
  %206 = getelementptr inbounds nuw i8, ptr %196, i64 3
  %207 = getelementptr inbounds nuw i8, ptr %197, i64 3
  %208 = load i8, ptr %207, align 1, !tbaa !36
  store i8 %208, ptr %206, align 1, !tbaa !36
  %209 = getelementptr inbounds nuw i8, ptr %196, i64 4
  %210 = getelementptr inbounds nuw i8, ptr %197, i64 4
  %211 = load i8, ptr %210, align 1, !tbaa !36
  store i8 %211, ptr %209, align 1, !tbaa !36
  %212 = getelementptr inbounds nuw i8, ptr %196, i64 5
  %213 = getelementptr inbounds nuw i8, ptr %197, i64 5
  %214 = load i8, ptr %213, align 1, !tbaa !36
  store i8 %214, ptr %212, align 1, !tbaa !36
  %215 = getelementptr inbounds nuw i8, ptr %196, i64 6
  %216 = getelementptr inbounds nuw i8, ptr %197, i64 6
  %217 = load i8, ptr %216, align 1, !tbaa !36
  store i8 %217, ptr %215, align 1, !tbaa !36
  %218 = getelementptr inbounds nuw i8, ptr %196, i64 7
  %219 = getelementptr inbounds nuw i8, ptr %197, i64 7
  %220 = load i8, ptr %219, align 1, !tbaa !36
  store i8 %220, ptr %218, align 1, !tbaa !36
  %221 = add i32 %198, -8
  %222 = getelementptr inbounds nuw i8, ptr %196, i64 8
  %223 = getelementptr inbounds nuw i8, ptr %197, i64 8
  %224 = icmp eq i32 %221, 0
  br i1 %224, label %225, label %195, !llvm.loop !45

225:                                              ; preds = %195, %190, %170, %152
  %226 = load i32, ptr %30, align 8, !tbaa !34
  br label %227

227:                                              ; preds = %225, %121, %119
  %228 = phi i32 [ %226, %225 ], [ %118, %121 ], [ 0, %119 ]
  %229 = load i32, ptr %32, align 8, !tbaa !27
  %230 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %229, i32 %228), !nosanitize !20
  %231 = extractvalue { i32, i1 } %230, 1, !nosanitize !20
  br i1 %231, label %232, label %233, !prof !21, !nosanitize !20

232:                                              ; preds = %227
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

233:                                              ; preds = %227
  %234 = extractvalue { i32, i1 } %230, 0, !nosanitize !20
  %235 = load ptr, ptr %37, align 8, !tbaa !29
  %236 = zext i32 %228 to i64
  %237 = getelementptr inbounds nuw i8, ptr %235, i64 %236
  store i32 0, ptr %38, align 4, !tbaa !17
  %238 = tail call ptr @__errno_location() #17
  store i32 0, ptr %238, align 4, !tbaa !4
  br label %239

239:                                              ; preds = %258, %233
  %240 = phi i32 [ 0, %233 ], [ %259, %258 ]
  %241 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %234, i32 %240), !nosanitize !20
  %242 = extractvalue { i32, i1 } %241, 1, !nosanitize !20
  br i1 %242, label %243, label %244, !prof !21, !nosanitize !20

243:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

244:                                              ; preds = %239
  %245 = extractvalue { i32, i1 } %241, 0, !nosanitize !20
  %246 = tail call i32 @llvm.umin.i32(i32 %245, i32 1073741824)
  %247 = load i32, ptr %39, align 4, !tbaa !46
  %248 = zext i32 %240 to i64
  %249 = getelementptr inbounds nuw i8, ptr %237, i64 %248
  %250 = zext nneg i32 %246 to i64
  %251 = tail call i64 @read(i32 noundef %247, ptr noundef %249, i64 noundef %250) #13
  %252 = trunc i64 %251 to i32
  %253 = icmp slt i32 %252, 1
  br i1 %253, label %261, label %254

254:                                              ; preds = %244
  %255 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %240, i32 %252), !nosanitize !20
  %256 = extractvalue { i32, i1 } %255, 1, !nosanitize !20
  br i1 %256, label %257, label %258, !prof !21, !nosanitize !20

257:                                              ; preds = %254
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

258:                                              ; preds = %254
  %259 = extractvalue { i32, i1 } %255, 0, !nosanitize !20
  %260 = icmp ult i32 %259, %234
  br i1 %260, label %239, label %274, !llvm.loop !47

261:                                              ; preds = %244
  %262 = icmp slt i32 %252, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %261
  %264 = load i32, ptr %238, align 4, !tbaa !4
  %265 = icmp eq i32 %264, 11
  br i1 %265, label %266, label %271

266:                                              ; preds = %263
  store i32 1, ptr %38, align 4, !tbaa !17
  %267 = icmp eq i32 %240, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %266
  %269 = load i32, ptr %238, align 4, !tbaa !4
  br label %271

270:                                              ; preds = %261
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %274

271:                                              ; preds = %268, %263
  %272 = phi i32 [ %269, %268 ], [ %264, %263 ]
  %273 = tail call ptr @strerror(i32 noundef %272) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %273) #13
  br label %1119

274:                                              ; preds = %270, %266, %258
  %275 = phi i32 [ %240, %266 ], [ %240, %270 ], [ %259, %258 ]
  %276 = load i32, ptr %30, align 8, !tbaa !34
  %277 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %276, i32 %275), !nosanitize !20
  %278 = extractvalue { i32, i1 } %277, 1, !nosanitize !20
  br i1 %278, label %279, label %280, !prof !21, !nosanitize !20

279:                                              ; preds = %274
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

280:                                              ; preds = %274
  %281 = extractvalue { i32, i1 } %277, 0, !nosanitize !20
  store i32 %281, ptr %30, align 8, !tbaa !34
  %282 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %282, ptr %36, align 8, !tbaa !35
  br label %283

283:                                              ; preds = %280, %115
  %284 = phi i32 [ %281, %280 ], [ %118, %115 ]
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %315, label %286

286:                                              ; preds = %283
  %287 = load i32, ptr %38, align 4, !tbaa !17
  %288 = icmp ne i32 %287, 0
  %289 = icmp ult i32 %284, 4
  %290 = and i1 %289, %288
  br i1 %290, label %315, label %291

291:                                              ; preds = %286
  %292 = icmp ugt i32 %284, 3
  %293 = load ptr, ptr %36, align 8, !tbaa !35
  br i1 %292, label %294, label %311

294:                                              ; preds = %291
  %295 = load i8, ptr %293, align 1, !tbaa !36
  %296 = icmp eq i8 %295, 31
  br i1 %296, label %297, label %311

297:                                              ; preds = %294
  %298 = getelementptr inbounds nuw i8, ptr %293, i64 1
  %299 = load i8, ptr %298, align 1, !tbaa !36
  %300 = icmp eq i8 %299, -117
  br i1 %300, label %301, label %311

301:                                              ; preds = %297
  %302 = getelementptr inbounds nuw i8, ptr %293, i64 2
  %303 = load i8, ptr %302, align 1, !tbaa !36
  %304 = icmp eq i8 %303, 8
  br i1 %304, label %305, label %311

305:                                              ; preds = %301
  %306 = getelementptr inbounds nuw i8, ptr %293, i64 3
  %307 = load i8, ptr %306, align 1, !tbaa !36
  %308 = icmp ult i8 %307, 32
  br i1 %308, label %309, label %311

309:                                              ; preds = %305
  %310 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  store i32 1, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %463

311:                                              ; preds = %305, %301, %297, %294, %291
  %312 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %312, ptr %27, align 8, !tbaa !22
  %313 = zext i32 %284 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %312, ptr align 1 %293, i64 %313, i1 false)
  %314 = load i32, ptr %30, align 8, !tbaa !34
  store i32 %314, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %31, align 8, !tbaa !26
  br label %465

315:                                              ; preds = %286, %283, %108
  %316 = load i32, ptr %31, align 8, !tbaa !26
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %475, label %463

318:                                              ; preds = %78
  %319 = load ptr, ptr %34, align 8, !tbaa !30
  %320 = load i32, ptr %32, align 8, !tbaa !27
  %321 = shl i32 %320, 1
  store i32 0, ptr %38, align 4, !tbaa !17
  %322 = tail call ptr @__errno_location() #17
  store i32 0, ptr %322, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %323

323:                                              ; preds = %343, %318
  %324 = phi i32 [ %344, %343 ], [ 0, %318 ]
  %325 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %321, i32 %324), !nosanitize !20
  %326 = extractvalue { i32, i1 } %325, 1, !nosanitize !20
  br i1 %326, label %327, label %328, !prof !21, !nosanitize !20

327:                                              ; preds = %323
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

328:                                              ; preds = %323
  %329 = extractvalue { i32, i1 } %325, 0, !nosanitize !20
  %330 = tail call i32 @llvm.umin.i32(i32 %329, i32 1073741824)
  %331 = load i32, ptr %39, align 4, !tbaa !46
  %332 = zext i32 %324 to i64
  %333 = getelementptr inbounds nuw i8, ptr %319, i64 %332
  %334 = zext nneg i32 %330 to i64
  %335 = tail call i64 @read(i32 noundef %331, ptr noundef %333, i64 noundef %334) #13
  %336 = trunc i64 %335 to i32
  %337 = icmp slt i32 %336, 1
  br i1 %337, label %346, label %338

338:                                              ; preds = %328
  %339 = load i32, ptr %0, align 4, !tbaa !4
  %340 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %339, i32 %336), !nosanitize !20
  %341 = extractvalue { i32, i1 } %340, 1, !nosanitize !20
  br i1 %341, label %342, label %343, !prof !21, !nosanitize !20

342:                                              ; preds = %338
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

343:                                              ; preds = %338
  %344 = extractvalue { i32, i1 } %340, 0, !nosanitize !20
  store i32 %344, ptr %0, align 4, !tbaa !4
  %345 = icmp ult i32 %344, %321
  br i1 %345, label %323, label %360, !llvm.loop !47

346:                                              ; preds = %328
  %347 = icmp slt i32 %336, 0
  br i1 %347, label %348, label %356

348:                                              ; preds = %346
  %349 = load i32, ptr %322, align 4, !tbaa !4
  %350 = icmp eq i32 %349, 11
  br i1 %350, label %351, label %357

351:                                              ; preds = %348
  store i32 1, ptr %38, align 4, !tbaa !17
  %352 = load i32, ptr %0, align 4, !tbaa !4
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %360

354:                                              ; preds = %351
  %355 = load i32, ptr %322, align 4, !tbaa !4
  br label %357

356:                                              ; preds = %346
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %360

357:                                              ; preds = %354, %348
  %358 = phi i32 [ %355, %354 ], [ %349, %348 ]
  %359 = tail call ptr @strerror(i32 noundef %358) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %359) #13
  br label %1119

360:                                              ; preds = %356, %351, %343
  %361 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %361, ptr %27, align 8, !tbaa !22
  br label %475

362:                                              ; preds = %78
  %363 = load i32, ptr %32, align 8, !tbaa !27
  %364 = shl i32 %363, 1
  store i32 %364, ptr %33, align 8, !tbaa !48
  %365 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %365, ptr %35, align 8, !tbaa !49
  br label %366

366:                                              ; preds = %445, %362
  %367 = phi i32 [ 0, %362 ], [ %430, %445 ]
  %368 = load i32, ptr %30, align 8, !tbaa !34
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %429

370:                                              ; preds = %366
  %371 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %371, label %449 [
    i32 0, label %372
    i32 -5, label %372
  ]

372:                                              ; preds = %370, %370
  %373 = load i32, ptr %29, align 8, !tbaa !24
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %425

375:                                              ; preds = %372
  %376 = load i32, ptr %32, align 8, !tbaa !27
  %377 = load ptr, ptr %37, align 8, !tbaa !29
  store i32 0, ptr %38, align 4, !tbaa !17
  %378 = tail call ptr @__errno_location() #17
  store i32 0, ptr %378, align 4, !tbaa !4
  br label %379

379:                                              ; preds = %398, %375
  %380 = phi i32 [ 0, %375 ], [ %399, %398 ]
  %381 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %376, i32 %380), !nosanitize !20
  %382 = extractvalue { i32, i1 } %381, 1, !nosanitize !20
  br i1 %382, label %383, label %384, !prof !21, !nosanitize !20

383:                                              ; preds = %379
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

384:                                              ; preds = %379
  %385 = extractvalue { i32, i1 } %381, 0, !nosanitize !20
  %386 = tail call i32 @llvm.umin.i32(i32 %385, i32 1073741824)
  %387 = load i32, ptr %39, align 4, !tbaa !46
  %388 = zext i32 %380 to i64
  %389 = getelementptr inbounds nuw i8, ptr %377, i64 %388
  %390 = zext nneg i32 %386 to i64
  %391 = tail call i64 @read(i32 noundef %387, ptr noundef %389, i64 noundef %390) #13
  %392 = trunc i64 %391 to i32
  %393 = icmp slt i32 %392, 1
  br i1 %393, label %401, label %394

394:                                              ; preds = %384
  %395 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %380, i32 %392), !nosanitize !20
  %396 = extractvalue { i32, i1 } %395, 1, !nosanitize !20
  br i1 %396, label %397, label %398, !prof !21, !nosanitize !20

397:                                              ; preds = %394
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

398:                                              ; preds = %394
  %399 = extractvalue { i32, i1 } %395, 0, !nosanitize !20
  %400 = icmp ult i32 %399, %376
  br i1 %400, label %379, label %415, !llvm.loop !47

401:                                              ; preds = %384
  %402 = icmp slt i32 %392, 0
  br i1 %402, label %403, label %410

403:                                              ; preds = %401
  %404 = load i32, ptr %378, align 4, !tbaa !4
  %405 = icmp eq i32 %404, 11
  br i1 %405, label %406, label %411

406:                                              ; preds = %403
  store i32 1, ptr %38, align 4, !tbaa !17
  %407 = icmp eq i32 %380, 0
  br i1 %407, label %408, label %415

408:                                              ; preds = %406
  %409 = load i32, ptr %378, align 4, !tbaa !4
  br label %411

410:                                              ; preds = %401
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %415

411:                                              ; preds = %408, %403
  %412 = phi i32 [ %409, %408 ], [ %404, %403 ]
  %413 = tail call ptr @strerror(i32 noundef %412) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %413) #13
  %414 = load i32, ptr %10, align 8, !tbaa !16
  br label %449

415:                                              ; preds = %410, %406, %398
  %416 = phi i32 [ %380, %406 ], [ %380, %410 ], [ %399, %398 ]
  %417 = load i32, ptr %30, align 8, !tbaa !34
  %418 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %417, i32 %416), !nosanitize !20
  %419 = extractvalue { i32, i1 } %418, 1, !nosanitize !20
  br i1 %419, label %420, label %421, !prof !21, !nosanitize !20

420:                                              ; preds = %415
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

421:                                              ; preds = %415
  %422 = extractvalue { i32, i1 } %418, 0, !nosanitize !20
  store i32 %422, ptr %30, align 8, !tbaa !34
  %423 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %423, ptr %36, align 8, !tbaa !35
  %424 = icmp eq i32 %422, 0
  br i1 %424, label %425, label %429

425:                                              ; preds = %421, %372
  %426 = load i32, ptr %38, align 4, !tbaa !17
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %449

428:                                              ; preds = %425
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %449

429:                                              ; preds = %421, %366
  %430 = tail call i32 @inflate(ptr noundef nonnull %36, i32 noundef 0) #13
  %431 = load i32, ptr %33, align 8, !tbaa !48
  %432 = icmp ult i32 %431, %364
  br i1 %432, label %433, label %434

433:                                              ; preds = %429
  store i32 0, ptr %40, align 4, !tbaa !33
  br label %434

434:                                              ; preds = %433, %429
  switch i32 %430, label %445 [
    i32 -2, label %435
    i32 2, label %435
    i32 -4, label %436
    i32 -3, label %437
  ]

435:                                              ; preds = %434, %434
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %449

436:                                              ; preds = %434
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %449

437:                                              ; preds = %434
  %438 = load i32, ptr %40, align 4, !tbaa !33
  %439 = icmp eq i32 %438, 1
  br i1 %439, label %440, label %441

440:                                              ; preds = %437
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !24
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %449

441:                                              ; preds = %437
  %442 = load ptr, ptr %41, align 8, !tbaa !50
  %443 = icmp eq ptr %442, null
  %444 = select i1 %443, ptr @.str.6, ptr %442
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %444) #13
  br label %449

445:                                              ; preds = %434
  %446 = icmp ne i32 %431, 0
  %447 = icmp ne i32 %430, 1
  %448 = select i1 %446, i1 %447, i1 false
  br i1 %448, label %366, label %449, !llvm.loop !51

449:                                              ; preds = %445, %441, %440, %436, %435, %428, %425, %411, %370
  %450 = phi i32 [ %414, %411 ], [ %367, %425 ], [ %367, %428 ], [ %430, %435 ], [ -4, %436 ], [ 0, %440 ], [ -3, %441 ], [ %430, %445 ], [ %371, %370 ]
  %451 = load i32, ptr %33, align 8, !tbaa !48
  %452 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %364, i32 %451), !nosanitize !20
  %453 = extractvalue { i32, i1 } %452, 1, !nosanitize !20
  br i1 %453, label %454, label %455, !prof !21, !nosanitize !20

454:                                              ; preds = %449
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

455:                                              ; preds = %449
  %456 = extractvalue { i32, i1 } %452, 0, !nosanitize !20
  store i32 %456, ptr %0, align 8, !tbaa !19
  %457 = load ptr, ptr %35, align 8, !tbaa !49
  %458 = zext i32 %456 to i64
  %459 = sub nsw i64 0, %458
  %460 = getelementptr inbounds i8, ptr %457, i64 %459
  store ptr %460, ptr %27, align 8, !tbaa !22
  switch i32 %450, label %1119 [
    i32 1, label %461
    i32 0, label %463
  ]

461:                                              ; preds = %455
  store i32 0, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %463

462:                                              ; preds = %78
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1119

463:                                              ; preds = %461, %455, %315, %309
  %464 = load i32, ptr %0, align 8, !tbaa !19
  br label %465

465:                                              ; preds = %463, %311
  %466 = phi i32 [ %464, %463 ], [ %314, %311 ]
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %475

468:                                              ; preds = %465
  %469 = load i32, ptr %29, align 8, !tbaa !24
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %474, label %471

471:                                              ; preds = %468
  %472 = load i32, ptr %30, align 8, !tbaa !34
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %475, label %474

474:                                              ; preds = %471, %468
  br label %78, !llvm.loop !52

475:                                              ; preds = %471, %465, %360, %315
  %476 = load i64, ptr %23, align 8, !tbaa !18
  br label %477

477:                                              ; preds = %475, %69
  %478 = phi i64 [ %476, %475 ], [ %70, %69 ]
  %479 = icmp eq i64 %478, 0
  br i1 %479, label %480, label %45, !llvm.loop !53

480:                                              ; preds = %477, %74, %22
  %481 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %483 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %485 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %486 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %487 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %488 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %490 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %492 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %493 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %495 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %496 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %497 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %498 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %499

499:                                              ; preds = %1107, %480
  %500 = phi ptr [ %1, %480 ], [ %1102, %1107 ]
  %501 = phi i64 [ %20, %480 ], [ %1103, %1107 ]
  %502 = phi i64 [ 0, %480 ], [ %1104, %1107 ]
  %503 = tail call i64 @llvm.umin.i64(i64 %501, i64 4294967295)
  %504 = trunc nuw i64 %503 to i32
  %505 = load i32, ptr %0, align 8, !tbaa !19
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %522, label %507

507:                                              ; preds = %499
  %508 = tail call i32 @llvm.umin.i32(i32 %505, i32 %504)
  %509 = load ptr, ptr %481, align 8, !tbaa !22
  %510 = zext i32 %508 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %500, ptr align 1 %509, i64 %510, i1 false)
  %511 = load ptr, ptr %481, align 8, !tbaa !22
  %512 = getelementptr inbounds nuw i8, ptr %511, i64 %510
  store ptr %512, ptr %481, align 8, !tbaa !22
  %513 = load i32, ptr %0, align 8, !tbaa !19
  %514 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %513, i32 %508), !nosanitize !20
  %515 = extractvalue { i32, i1 } %514, 1, !nosanitize !20
  br i1 %515, label %516, label %517, !prof !21, !nosanitize !20

516:                                              ; preds = %507
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

517:                                              ; preds = %507
  %518 = extractvalue { i32, i1 } %514, 0, !nosanitize !20
  store i32 %518, ptr %0, align 8, !tbaa !19
  %519 = load i32, ptr %10, align 8, !tbaa !16
  %520 = icmp ne i32 %519, 0
  %521 = sext i1 %520 to i32
  br label %1082

522:                                              ; preds = %499
  %523 = load i32, ptr %482, align 8, !tbaa !24
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %528, label %525

525:                                              ; preds = %522
  %526 = load i32, ptr %483, align 8, !tbaa !25
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %1112, label %528

528:                                              ; preds = %525, %522
  %529 = load i32, ptr %484, align 8, !tbaa !26
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %535, label %531

531:                                              ; preds = %528
  %532 = load i32, ptr %485, align 8, !tbaa !27
  %533 = shl i32 %532, 1
  %534 = icmp ugt i32 %533, %504
  br i1 %534, label %535, label %938

535:                                              ; preds = %531, %528
  br label %536

536:                                              ; preds = %932, %535
  %537 = phi i32 [ %933, %932 ], [ %529, %535 ]
  switch i32 %537, label %920 [
    i32 0, label %538
    i32 1, label %776
    i32 2, label %820
  ]

538:                                              ; preds = %536
  %539 = load i32, ptr %485, align 8, !tbaa !27
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %560

541:                                              ; preds = %538
  %542 = load i32, ptr %496, align 4, !tbaa !28
  %543 = zext i32 %542 to i64
  %544 = tail call noalias ptr @malloc(i64 noundef %543) #16
  store ptr %544, ptr %489, align 8, !tbaa !29
  %545 = load i32, ptr %496, align 4, !tbaa !28
  %546 = shl i32 %545, 1
  %547 = zext i32 %546 to i64
  %548 = tail call noalias ptr @malloc(i64 noundef %547) #16
  store ptr %548, ptr %495, align 8, !tbaa !30
  %549 = icmp eq ptr %544, null
  %550 = icmp eq ptr %548, null
  %551 = or i1 %549, %550
  br i1 %551, label %552, label %553

552:                                              ; preds = %541
  tail call void @free(ptr noundef %548) #13
  tail call void @free(ptr noundef %544) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %934

553:                                              ; preds = %541
  %554 = load i32, ptr %496, align 4, !tbaa !28
  store i32 %554, ptr %485, align 8, !tbaa !27
  store i32 0, ptr %483, align 8, !tbaa !25
  store ptr null, ptr %488, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %497, i8 0, i64 24, i1 false)
  %555 = tail call i32 @inflateInit2_(ptr noundef nonnull %488, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %560, label %557

557:                                              ; preds = %553
  %558 = load ptr, ptr %495, align 8, !tbaa !30
  tail call void @free(ptr noundef %558) #13
  %559 = load ptr, ptr %489, align 8, !tbaa !29
  tail call void @free(ptr noundef %559) #13
  store i32 0, ptr %485, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %934

560:                                              ; preds = %553, %538
  %561 = load i32, ptr %498, align 8, !tbaa !32
  %562 = icmp eq i32 %561, -1
  br i1 %562, label %566, label %563

563:                                              ; preds = %560
  %564 = load i32, ptr %492, align 4, !tbaa !33
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %571

566:                                              ; preds = %563, %560
  %567 = tail call i32 @inflateReset(ptr noundef nonnull %488) #13
  store i32 2, ptr %484, align 8, !tbaa !26
  %568 = load i32, ptr %492, align 4, !tbaa !33
  %569 = icmp ne i32 %568, -1
  %570 = zext i1 %569 to i32
  store i32 %570, ptr %492, align 4, !tbaa !33
  store i32 0, ptr %498, align 8, !tbaa !32
  br label %773

571:                                              ; preds = %563
  %572 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %572, label %934 [
    i32 0, label %573
    i32 -5, label %573
  ]

573:                                              ; preds = %571, %571
  %574 = load i32, ptr %482, align 8, !tbaa !24
  %575 = icmp eq i32 %574, 0
  %576 = load i32, ptr %483, align 8, !tbaa !34
  br i1 %575, label %577, label %741

577:                                              ; preds = %573
  %578 = icmp eq i32 %576, 0
  br i1 %578, label %685, label %579

579:                                              ; preds = %577
  %580 = load ptr, ptr %489, align 8, !tbaa !29
  %581 = load ptr, ptr %488, align 8, !tbaa !35
  %582 = icmp eq ptr %581, %580
  br i1 %582, label %685, label %583

583:                                              ; preds = %579
  %584 = ptrtoaddr ptr %581 to i64
  %585 = ptrtoaddr ptr %580 to i64
  %586 = zext i32 %576 to i64
  %587 = icmp ult i32 %576, 4
  %588 = sub i64 %585, %584
  %589 = icmp ult i64 %588, 32
  %590 = or i1 %587, %589
  br i1 %590, label %630, label %591

591:                                              ; preds = %583
  %592 = icmp ult i32 %576, 32
  br i1 %592, label %614, label %593

593:                                              ; preds = %591
  %594 = and i64 %586, 28
  %595 = and i64 %586, 4294967264
  %596 = getelementptr i8, ptr %580, i64 %595
  %597 = getelementptr i8, ptr %581, i64 %595
  %598 = trunc nuw i64 %595 to i32
  %599 = sub i32 %576, %598
  br label %600

600:                                              ; preds = %600, %593
  %601 = phi i64 [ 0, %593 ], [ %608, %600 ]
  %602 = getelementptr i8, ptr %580, i64 %601
  %603 = getelementptr i8, ptr %581, i64 %601
  %604 = getelementptr i8, ptr %603, i64 16
  %605 = load <16 x i8>, ptr %603, align 1, !tbaa !36
  %606 = load <16 x i8>, ptr %604, align 1, !tbaa !36
  %607 = getelementptr i8, ptr %602, i64 16
  store <16 x i8> %605, ptr %602, align 1, !tbaa !36
  store <16 x i8> %606, ptr %607, align 1, !tbaa !36
  %608 = add nuw i64 %601, 32
  %609 = icmp eq i64 %608, %595
  br i1 %609, label %610, label %600, !llvm.loop !54

610:                                              ; preds = %600
  %611 = icmp eq i64 %595, %586
  br i1 %611, label %683, label %612

612:                                              ; preds = %610
  %613 = icmp eq i64 %594, 0
  br i1 %613, label %630, label %614, !prof !41

614:                                              ; preds = %612, %591
  %615 = phi i64 [ %595, %612 ], [ 0, %591 ]
  %616 = and i64 %586, 4294967292
  %617 = getelementptr i8, ptr %580, i64 %616
  %618 = getelementptr i8, ptr %581, i64 %616
  %619 = trunc nuw i64 %616 to i32
  %620 = sub i32 %576, %619
  br label %621

621:                                              ; preds = %621, %614
  %622 = phi i64 [ %615, %614 ], [ %626, %621 ]
  %623 = getelementptr i8, ptr %580, i64 %622
  %624 = getelementptr i8, ptr %581, i64 %622
  %625 = load <4 x i8>, ptr %624, align 1, !tbaa !36
  store <4 x i8> %625, ptr %623, align 1, !tbaa !36
  %626 = add nuw i64 %622, 4
  %627 = icmp eq i64 %626, %616
  br i1 %627, label %628, label %621, !llvm.loop !55

628:                                              ; preds = %621
  %629 = icmp eq i64 %616, %586
  br i1 %629, label %683, label %630

630:                                              ; preds = %628, %612, %583
  %631 = phi ptr [ %580, %583 ], [ %596, %612 ], [ %617, %628 ]
  %632 = phi ptr [ %581, %583 ], [ %597, %612 ], [ %618, %628 ]
  %633 = phi i32 [ %576, %583 ], [ %599, %612 ], [ %620, %628 ]
  %634 = add i32 %633, -1
  %635 = and i32 %633, 7
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %648, label %637

637:                                              ; preds = %637, %630
  %638 = phi ptr [ %644, %637 ], [ %631, %630 ]
  %639 = phi ptr [ %645, %637 ], [ %632, %630 ]
  %640 = phi i32 [ %643, %637 ], [ %633, %630 ]
  %641 = phi i32 [ %646, %637 ], [ 0, %630 ]
  %642 = load i8, ptr %639, align 1, !tbaa !36
  store i8 %642, ptr %638, align 1, !tbaa !36
  %643 = add i32 %640, -1
  %644 = getelementptr inbounds nuw i8, ptr %638, i64 1
  %645 = getelementptr inbounds nuw i8, ptr %639, i64 1
  %646 = add i32 %641, 1
  %647 = icmp eq i32 %646, %635
  br i1 %647, label %648, label %637, !llvm.loop !56

648:                                              ; preds = %637, %630
  %649 = phi ptr [ %631, %630 ], [ %644, %637 ]
  %650 = phi ptr [ %632, %630 ], [ %645, %637 ]
  %651 = phi i32 [ %633, %630 ], [ %643, %637 ]
  %652 = icmp ult i32 %634, 7
  br i1 %652, label %683, label %653

653:                                              ; preds = %653, %648
  %654 = phi ptr [ %680, %653 ], [ %649, %648 ]
  %655 = phi ptr [ %681, %653 ], [ %650, %648 ]
  %656 = phi i32 [ %679, %653 ], [ %651, %648 ]
  %657 = load i8, ptr %655, align 1, !tbaa !36
  store i8 %657, ptr %654, align 1, !tbaa !36
  %658 = getelementptr inbounds nuw i8, ptr %654, i64 1
  %659 = getelementptr inbounds nuw i8, ptr %655, i64 1
  %660 = load i8, ptr %659, align 1, !tbaa !36
  store i8 %660, ptr %658, align 1, !tbaa !36
  %661 = getelementptr inbounds nuw i8, ptr %654, i64 2
  %662 = getelementptr inbounds nuw i8, ptr %655, i64 2
  %663 = load i8, ptr %662, align 1, !tbaa !36
  store i8 %663, ptr %661, align 1, !tbaa !36
  %664 = getelementptr inbounds nuw i8, ptr %654, i64 3
  %665 = getelementptr inbounds nuw i8, ptr %655, i64 3
  %666 = load i8, ptr %665, align 1, !tbaa !36
  store i8 %666, ptr %664, align 1, !tbaa !36
  %667 = getelementptr inbounds nuw i8, ptr %654, i64 4
  %668 = getelementptr inbounds nuw i8, ptr %655, i64 4
  %669 = load i8, ptr %668, align 1, !tbaa !36
  store i8 %669, ptr %667, align 1, !tbaa !36
  %670 = getelementptr inbounds nuw i8, ptr %654, i64 5
  %671 = getelementptr inbounds nuw i8, ptr %655, i64 5
  %672 = load i8, ptr %671, align 1, !tbaa !36
  store i8 %672, ptr %670, align 1, !tbaa !36
  %673 = getelementptr inbounds nuw i8, ptr %654, i64 6
  %674 = getelementptr inbounds nuw i8, ptr %655, i64 6
  %675 = load i8, ptr %674, align 1, !tbaa !36
  store i8 %675, ptr %673, align 1, !tbaa !36
  %676 = getelementptr inbounds nuw i8, ptr %654, i64 7
  %677 = getelementptr inbounds nuw i8, ptr %655, i64 7
  %678 = load i8, ptr %677, align 1, !tbaa !36
  store i8 %678, ptr %676, align 1, !tbaa !36
  %679 = add i32 %656, -8
  %680 = getelementptr inbounds nuw i8, ptr %654, i64 8
  %681 = getelementptr inbounds nuw i8, ptr %655, i64 8
  %682 = icmp eq i32 %679, 0
  br i1 %682, label %683, label %653, !llvm.loop !57

683:                                              ; preds = %653, %648, %628, %610
  %684 = load i32, ptr %483, align 8, !tbaa !34
  br label %685

685:                                              ; preds = %683, %579, %577
  %686 = phi i32 [ %684, %683 ], [ %576, %579 ], [ 0, %577 ]
  %687 = load i32, ptr %485, align 8, !tbaa !27
  %688 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %687, i32 %686), !nosanitize !20
  %689 = extractvalue { i32, i1 } %688, 1, !nosanitize !20
  br i1 %689, label %690, label %691, !prof !21, !nosanitize !20

690:                                              ; preds = %685
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

691:                                              ; preds = %685
  %692 = extractvalue { i32, i1 } %688, 0, !nosanitize !20
  %693 = load ptr, ptr %489, align 8, !tbaa !29
  %694 = zext i32 %686 to i64
  %695 = getelementptr inbounds nuw i8, ptr %693, i64 %694
  store i32 0, ptr %490, align 4, !tbaa !17
  %696 = tail call ptr @__errno_location() #17
  store i32 0, ptr %696, align 4, !tbaa !4
  br label %697

697:                                              ; preds = %716, %691
  %698 = phi i32 [ 0, %691 ], [ %717, %716 ]
  %699 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %692, i32 %698), !nosanitize !20
  %700 = extractvalue { i32, i1 } %699, 1, !nosanitize !20
  br i1 %700, label %701, label %702, !prof !21, !nosanitize !20

701:                                              ; preds = %697
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

702:                                              ; preds = %697
  %703 = extractvalue { i32, i1 } %699, 0, !nosanitize !20
  %704 = tail call i32 @llvm.umin.i32(i32 %703, i32 1073741824)
  %705 = load i32, ptr %491, align 4, !tbaa !46
  %706 = zext i32 %698 to i64
  %707 = getelementptr inbounds nuw i8, ptr %695, i64 %706
  %708 = zext nneg i32 %704 to i64
  %709 = tail call i64 @read(i32 noundef %705, ptr noundef %707, i64 noundef %708) #13
  %710 = trunc i64 %709 to i32
  %711 = icmp slt i32 %710, 1
  br i1 %711, label %719, label %712

712:                                              ; preds = %702
  %713 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %698, i32 %710), !nosanitize !20
  %714 = extractvalue { i32, i1 } %713, 1, !nosanitize !20
  br i1 %714, label %715, label %716, !prof !21, !nosanitize !20

715:                                              ; preds = %712
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

716:                                              ; preds = %712
  %717 = extractvalue { i32, i1 } %713, 0, !nosanitize !20
  %718 = icmp ult i32 %717, %692
  br i1 %718, label %697, label %732, !llvm.loop !47

719:                                              ; preds = %702
  %720 = icmp slt i32 %710, 0
  br i1 %720, label %721, label %728

721:                                              ; preds = %719
  %722 = load i32, ptr %696, align 4, !tbaa !4
  %723 = icmp eq i32 %722, 11
  br i1 %723, label %724, label %729

724:                                              ; preds = %721
  store i32 1, ptr %490, align 4, !tbaa !17
  %725 = icmp eq i32 %698, 0
  br i1 %725, label %726, label %732

726:                                              ; preds = %724
  %727 = load i32, ptr %696, align 4, !tbaa !4
  br label %729

728:                                              ; preds = %719
  store i32 1, ptr %482, align 8, !tbaa !24
  br label %732

729:                                              ; preds = %726, %721
  %730 = phi i32 [ %727, %726 ], [ %722, %721 ]
  %731 = tail call ptr @strerror(i32 noundef %730) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %731) #13
  br label %934

732:                                              ; preds = %728, %724, %716
  %733 = phi i32 [ %698, %724 ], [ %698, %728 ], [ %717, %716 ]
  %734 = load i32, ptr %483, align 8, !tbaa !34
  %735 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %734, i32 %733), !nosanitize !20
  %736 = extractvalue { i32, i1 } %735, 1, !nosanitize !20
  br i1 %736, label %737, label %738, !prof !21, !nosanitize !20

737:                                              ; preds = %732
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

738:                                              ; preds = %732
  %739 = extractvalue { i32, i1 } %735, 0, !nosanitize !20
  store i32 %739, ptr %483, align 8, !tbaa !34
  %740 = load ptr, ptr %489, align 8, !tbaa !29
  store ptr %740, ptr %488, align 8, !tbaa !35
  br label %741

741:                                              ; preds = %738, %573
  %742 = phi i32 [ %739, %738 ], [ %576, %573 ]
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %773, label %744

744:                                              ; preds = %741
  %745 = load i32, ptr %490, align 4, !tbaa !17
  %746 = icmp ne i32 %745, 0
  %747 = icmp ult i32 %742, 4
  %748 = and i1 %747, %746
  br i1 %748, label %773, label %749

749:                                              ; preds = %744
  %750 = icmp ugt i32 %742, 3
  %751 = load ptr, ptr %488, align 8, !tbaa !35
  br i1 %750, label %752, label %769

752:                                              ; preds = %749
  %753 = load i8, ptr %751, align 1, !tbaa !36
  %754 = icmp eq i8 %753, 31
  br i1 %754, label %755, label %769

755:                                              ; preds = %752
  %756 = getelementptr inbounds nuw i8, ptr %751, i64 1
  %757 = load i8, ptr %756, align 1, !tbaa !36
  %758 = icmp eq i8 %757, -117
  br i1 %758, label %759, label %769

759:                                              ; preds = %755
  %760 = getelementptr inbounds nuw i8, ptr %751, i64 2
  %761 = load i8, ptr %760, align 1, !tbaa !36
  %762 = icmp eq i8 %761, 8
  br i1 %762, label %763, label %769

763:                                              ; preds = %759
  %764 = getelementptr inbounds nuw i8, ptr %751, i64 3
  %765 = load i8, ptr %764, align 1, !tbaa !36
  %766 = icmp ult i8 %765, 32
  br i1 %766, label %767, label %769

767:                                              ; preds = %763
  %768 = tail call i32 @inflateReset(ptr noundef nonnull %488) #13
  store i32 2, ptr %484, align 8, !tbaa !26
  store i32 1, ptr %492, align 4, !tbaa !33
  store i32 0, ptr %498, align 8, !tbaa !32
  br label %921

769:                                              ; preds = %763, %759, %755, %752, %749
  %770 = load ptr, ptr %495, align 8, !tbaa !30
  store ptr %770, ptr %481, align 8, !tbaa !22
  %771 = zext i32 %742 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %770, ptr align 1 %751, i64 %771, i1 false)
  %772 = load i32, ptr %483, align 8, !tbaa !34
  store i32 %772, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %483, align 8, !tbaa !34
  store i32 1, ptr %484, align 8, !tbaa !26
  br label %923

773:                                              ; preds = %744, %741, %566
  %774 = load i32, ptr %484, align 8, !tbaa !26
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %1101, label %921

776:                                              ; preds = %536
  %777 = load ptr, ptr %495, align 8, !tbaa !30
  %778 = load i32, ptr %485, align 8, !tbaa !27
  %779 = shl i32 %778, 1
  store i32 0, ptr %490, align 4, !tbaa !17
  %780 = tail call ptr @__errno_location() #17
  store i32 0, ptr %780, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %781

781:                                              ; preds = %801, %776
  %782 = phi i32 [ %802, %801 ], [ 0, %776 ]
  %783 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %779, i32 %782), !nosanitize !20
  %784 = extractvalue { i32, i1 } %783, 1, !nosanitize !20
  br i1 %784, label %785, label %786, !prof !21, !nosanitize !20

785:                                              ; preds = %781
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

786:                                              ; preds = %781
  %787 = extractvalue { i32, i1 } %783, 0, !nosanitize !20
  %788 = tail call i32 @llvm.umin.i32(i32 %787, i32 1073741824)
  %789 = load i32, ptr %491, align 4, !tbaa !46
  %790 = zext i32 %782 to i64
  %791 = getelementptr inbounds nuw i8, ptr %777, i64 %790
  %792 = zext nneg i32 %788 to i64
  %793 = tail call i64 @read(i32 noundef %789, ptr noundef %791, i64 noundef %792) #13
  %794 = trunc i64 %793 to i32
  %795 = icmp slt i32 %794, 1
  br i1 %795, label %804, label %796

796:                                              ; preds = %786
  %797 = load i32, ptr %0, align 4, !tbaa !4
  %798 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %797, i32 %794), !nosanitize !20
  %799 = extractvalue { i32, i1 } %798, 1, !nosanitize !20
  br i1 %799, label %800, label %801, !prof !21, !nosanitize !20

800:                                              ; preds = %796
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

801:                                              ; preds = %796
  %802 = extractvalue { i32, i1 } %798, 0, !nosanitize !20
  store i32 %802, ptr %0, align 4, !tbaa !4
  %803 = icmp ult i32 %802, %779
  br i1 %803, label %781, label %818, !llvm.loop !47

804:                                              ; preds = %786
  %805 = icmp slt i32 %794, 0
  br i1 %805, label %806, label %814

806:                                              ; preds = %804
  %807 = load i32, ptr %780, align 4, !tbaa !4
  %808 = icmp eq i32 %807, 11
  br i1 %808, label %809, label %815

809:                                              ; preds = %806
  store i32 1, ptr %490, align 4, !tbaa !17
  %810 = load i32, ptr %0, align 4, !tbaa !4
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %812, label %818

812:                                              ; preds = %809
  %813 = load i32, ptr %780, align 4, !tbaa !4
  br label %815

814:                                              ; preds = %804
  store i32 1, ptr %482, align 8, !tbaa !24
  br label %818

815:                                              ; preds = %812, %806
  %816 = phi i32 [ %813, %812 ], [ %807, %806 ]
  %817 = tail call ptr @strerror(i32 noundef %816) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %817) #13
  br label %934

818:                                              ; preds = %814, %809, %801
  %819 = load ptr, ptr %495, align 8, !tbaa !30
  store ptr %819, ptr %481, align 8, !tbaa !22
  br label %1101

820:                                              ; preds = %536
  %821 = load i32, ptr %485, align 8, !tbaa !27
  %822 = shl i32 %821, 1
  store i32 %822, ptr %486, align 8, !tbaa !48
  %823 = load ptr, ptr %495, align 8, !tbaa !30
  store ptr %823, ptr %487, align 8, !tbaa !49
  br label %824

824:                                              ; preds = %903, %820
  %825 = phi i32 [ 0, %820 ], [ %888, %903 ]
  %826 = load i32, ptr %483, align 8, !tbaa !34
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %828, label %887

828:                                              ; preds = %824
  %829 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %829, label %907 [
    i32 0, label %830
    i32 -5, label %830
  ]

830:                                              ; preds = %828, %828
  %831 = load i32, ptr %482, align 8, !tbaa !24
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %833, label %883

833:                                              ; preds = %830
  %834 = load i32, ptr %485, align 8, !tbaa !27
  %835 = load ptr, ptr %489, align 8, !tbaa !29
  store i32 0, ptr %490, align 4, !tbaa !17
  %836 = tail call ptr @__errno_location() #17
  store i32 0, ptr %836, align 4, !tbaa !4
  br label %837

837:                                              ; preds = %856, %833
  %838 = phi i32 [ 0, %833 ], [ %857, %856 ]
  %839 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %834, i32 %838), !nosanitize !20
  %840 = extractvalue { i32, i1 } %839, 1, !nosanitize !20
  br i1 %840, label %841, label %842, !prof !21, !nosanitize !20

841:                                              ; preds = %837
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

842:                                              ; preds = %837
  %843 = extractvalue { i32, i1 } %839, 0, !nosanitize !20
  %844 = tail call i32 @llvm.umin.i32(i32 %843, i32 1073741824)
  %845 = load i32, ptr %491, align 4, !tbaa !46
  %846 = zext i32 %838 to i64
  %847 = getelementptr inbounds nuw i8, ptr %835, i64 %846
  %848 = zext nneg i32 %844 to i64
  %849 = tail call i64 @read(i32 noundef %845, ptr noundef %847, i64 noundef %848) #13
  %850 = trunc i64 %849 to i32
  %851 = icmp slt i32 %850, 1
  br i1 %851, label %859, label %852

852:                                              ; preds = %842
  %853 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %838, i32 %850), !nosanitize !20
  %854 = extractvalue { i32, i1 } %853, 1, !nosanitize !20
  br i1 %854, label %855, label %856, !prof !21, !nosanitize !20

855:                                              ; preds = %852
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

856:                                              ; preds = %852
  %857 = extractvalue { i32, i1 } %853, 0, !nosanitize !20
  %858 = icmp ult i32 %857, %834
  br i1 %858, label %837, label %873, !llvm.loop !47

859:                                              ; preds = %842
  %860 = icmp slt i32 %850, 0
  br i1 %860, label %861, label %868

861:                                              ; preds = %859
  %862 = load i32, ptr %836, align 4, !tbaa !4
  %863 = icmp eq i32 %862, 11
  br i1 %863, label %864, label %869

864:                                              ; preds = %861
  store i32 1, ptr %490, align 4, !tbaa !17
  %865 = icmp eq i32 %838, 0
  br i1 %865, label %866, label %873

866:                                              ; preds = %864
  %867 = load i32, ptr %836, align 4, !tbaa !4
  br label %869

868:                                              ; preds = %859
  store i32 1, ptr %482, align 8, !tbaa !24
  br label %873

869:                                              ; preds = %866, %861
  %870 = phi i32 [ %867, %866 ], [ %862, %861 ]
  %871 = tail call ptr @strerror(i32 noundef %870) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %871) #13
  %872 = load i32, ptr %10, align 8, !tbaa !16
  br label %907

873:                                              ; preds = %868, %864, %856
  %874 = phi i32 [ %838, %864 ], [ %838, %868 ], [ %857, %856 ]
  %875 = load i32, ptr %483, align 8, !tbaa !34
  %876 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %875, i32 %874), !nosanitize !20
  %877 = extractvalue { i32, i1 } %876, 1, !nosanitize !20
  br i1 %877, label %878, label %879, !prof !21, !nosanitize !20

878:                                              ; preds = %873
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

879:                                              ; preds = %873
  %880 = extractvalue { i32, i1 } %876, 0, !nosanitize !20
  store i32 %880, ptr %483, align 8, !tbaa !34
  %881 = load ptr, ptr %489, align 8, !tbaa !29
  store ptr %881, ptr %488, align 8, !tbaa !35
  %882 = icmp eq i32 %880, 0
  br i1 %882, label %883, label %887

883:                                              ; preds = %879, %830
  %884 = load i32, ptr %490, align 4, !tbaa !17
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %886, label %907

886:                                              ; preds = %883
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %907

887:                                              ; preds = %879, %824
  %888 = tail call i32 @inflate(ptr noundef nonnull %488, i32 noundef 0) #13
  %889 = load i32, ptr %486, align 8, !tbaa !48
  %890 = icmp ult i32 %889, %822
  br i1 %890, label %891, label %892

891:                                              ; preds = %887
  store i32 0, ptr %492, align 4, !tbaa !33
  br label %892

892:                                              ; preds = %891, %887
  switch i32 %888, label %903 [
    i32 -2, label %893
    i32 2, label %893
    i32 -4, label %894
    i32 -3, label %895
  ]

893:                                              ; preds = %892, %892
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %907

894:                                              ; preds = %892
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %907

895:                                              ; preds = %892
  %896 = load i32, ptr %492, align 4, !tbaa !33
  %897 = icmp eq i32 %896, 1
  br i1 %897, label %898, label %899

898:                                              ; preds = %895
  store i32 0, ptr %483, align 8, !tbaa !34
  store i32 1, ptr %482, align 8, !tbaa !24
  store i32 0, ptr %484, align 8, !tbaa !26
  br label %907

899:                                              ; preds = %895
  %900 = load ptr, ptr %493, align 8, !tbaa !50
  %901 = icmp eq ptr %900, null
  %902 = select i1 %901, ptr @.str.6, ptr %900
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %902) #13
  br label %907

903:                                              ; preds = %892
  %904 = icmp ne i32 %889, 0
  %905 = icmp ne i32 %888, 1
  %906 = select i1 %904, i1 %905, i1 false
  br i1 %906, label %824, label %907, !llvm.loop !51

907:                                              ; preds = %903, %899, %898, %894, %893, %886, %883, %869, %828
  %908 = phi i32 [ %872, %869 ], [ %825, %883 ], [ %825, %886 ], [ %888, %893 ], [ -4, %894 ], [ 0, %898 ], [ -3, %899 ], [ %829, %828 ], [ %888, %903 ]
  %909 = load i32, ptr %486, align 8, !tbaa !48
  %910 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %822, i32 %909), !nosanitize !20
  %911 = extractvalue { i32, i1 } %910, 1, !nosanitize !20
  br i1 %911, label %912, label %913, !prof !21, !nosanitize !20

912:                                              ; preds = %907
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

913:                                              ; preds = %907
  %914 = extractvalue { i32, i1 } %910, 0, !nosanitize !20
  store i32 %914, ptr %0, align 8, !tbaa !19
  %915 = load ptr, ptr %487, align 8, !tbaa !49
  %916 = zext i32 %914 to i64
  %917 = sub nsw i64 0, %916
  %918 = getelementptr inbounds i8, ptr %915, i64 %917
  store ptr %918, ptr %481, align 8, !tbaa !22
  switch i32 %908, label %934 [
    i32 1, label %919
    i32 0, label %921
  ]

919:                                              ; preds = %913
  store i32 0, ptr %492, align 4, !tbaa !33
  store i32 0, ptr %484, align 8, !tbaa !26
  br label %921

920:                                              ; preds = %536
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %934

921:                                              ; preds = %919, %913, %773, %767
  %922 = load i32, ptr %0, align 8, !tbaa !19
  br label %923

923:                                              ; preds = %921, %769
  %924 = phi i32 [ %922, %921 ], [ %772, %769 ]
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %926, label %1101

926:                                              ; preds = %923
  %927 = load i32, ptr %482, align 8, !tbaa !24
  %928 = icmp eq i32 %927, 0
  br i1 %928, label %932, label %929

929:                                              ; preds = %926
  %930 = load i32, ptr %483, align 8, !tbaa !34
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %1101, label %932

932:                                              ; preds = %929, %926
  %933 = load i32, ptr %484, align 8, !tbaa !26
  br label %536, !llvm.loop !52

934:                                              ; preds = %920, %913, %815, %729, %571, %557, %552
  %935 = load i32, ptr %0, align 8, !tbaa !19
  %936 = icmp eq i32 %935, 0
  %937 = sext i1 %936 to i32
  br label %1101

938:                                              ; preds = %531
  %939 = icmp eq i32 %529, 1
  br i1 %939, label %940, label %977

940:                                              ; preds = %938
  store i32 0, ptr %490, align 4, !tbaa !17
  %941 = tail call ptr @__errno_location() #17
  store i32 0, ptr %941, align 4, !tbaa !4
  br label %942

942:                                              ; preds = %961, %940
  %943 = phi i32 [ 0, %940 ], [ %962, %961 ]
  %944 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %504, i32 %943), !nosanitize !20
  %945 = extractvalue { i32, i1 } %944, 1, !nosanitize !20
  br i1 %945, label %946, label %947, !prof !21, !nosanitize !20

946:                                              ; preds = %942
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

947:                                              ; preds = %942
  %948 = extractvalue { i32, i1 } %944, 0, !nosanitize !20
  %949 = tail call i32 @llvm.umin.i32(i32 %948, i32 1073741824)
  %950 = load i32, ptr %491, align 4, !tbaa !46
  %951 = zext i32 %943 to i64
  %952 = getelementptr inbounds nuw i8, ptr %500, i64 %951
  %953 = zext nneg i32 %949 to i64
  %954 = tail call i64 @read(i32 noundef %950, ptr noundef %952, i64 noundef %953) #13
  %955 = trunc i64 %954 to i32
  %956 = icmp slt i32 %955, 1
  br i1 %956, label %964, label %957

957:                                              ; preds = %947
  %958 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %943, i32 %955), !nosanitize !20
  %959 = extractvalue { i32, i1 } %958, 1, !nosanitize !20
  br i1 %959, label %960, label %961, !prof !21, !nosanitize !20

960:                                              ; preds = %957
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

961:                                              ; preds = %957
  %962 = extractvalue { i32, i1 } %958, 0, !nosanitize !20
  %963 = icmp ult i32 %962, %504
  br i1 %963, label %942, label %1080, !llvm.loop !47

964:                                              ; preds = %947
  %965 = icmp slt i32 %955, 0
  br i1 %965, label %966, label %976

966:                                              ; preds = %964
  %967 = load i32, ptr %941, align 4, !tbaa !4
  %968 = icmp eq i32 %967, 11
  br i1 %968, label %969, label %973

969:                                              ; preds = %966
  store i32 1, ptr %490, align 4, !tbaa !17
  %970 = icmp eq i32 %943, 0
  br i1 %970, label %971, label %1082

971:                                              ; preds = %969
  %972 = load i32, ptr %941, align 4, !tbaa !4
  br label %973

973:                                              ; preds = %971, %966
  %974 = phi i32 [ %972, %971 ], [ %967, %966 ]
  %975 = tail call ptr @strerror(i32 noundef %974) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %975) #13
  br label %1082

976:                                              ; preds = %964
  store i32 1, ptr %482, align 8, !tbaa !24
  br label %1082

977:                                              ; preds = %938
  store i32 %504, ptr %486, align 8, !tbaa !58
  store ptr %500, ptr %487, align 8, !tbaa !59
  br label %978

978:                                              ; preds = %1057, %977
  %979 = phi i32 [ 0, %977 ], [ %1042, %1057 ]
  %980 = load i32, ptr %483, align 8, !tbaa !34
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %982, label %1041

982:                                              ; preds = %978
  %983 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %983, label %1061 [
    i32 0, label %984
    i32 -5, label %984
  ]

984:                                              ; preds = %982, %982
  %985 = load i32, ptr %482, align 8, !tbaa !24
  %986 = icmp eq i32 %985, 0
  br i1 %986, label %987, label %1037

987:                                              ; preds = %984
  %988 = load i32, ptr %485, align 8, !tbaa !27
  %989 = load ptr, ptr %489, align 8, !tbaa !29
  store i32 0, ptr %490, align 4, !tbaa !17
  %990 = tail call ptr @__errno_location() #17
  store i32 0, ptr %990, align 4, !tbaa !4
  br label %991

991:                                              ; preds = %1010, %987
  %992 = phi i32 [ 0, %987 ], [ %1011, %1010 ]
  %993 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %988, i32 %992), !nosanitize !20
  %994 = extractvalue { i32, i1 } %993, 1, !nosanitize !20
  br i1 %994, label %995, label %996, !prof !21, !nosanitize !20

995:                                              ; preds = %991
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

996:                                              ; preds = %991
  %997 = extractvalue { i32, i1 } %993, 0, !nosanitize !20
  %998 = tail call i32 @llvm.umin.i32(i32 %997, i32 1073741824)
  %999 = load i32, ptr %491, align 4, !tbaa !46
  %1000 = zext i32 %992 to i64
  %1001 = getelementptr inbounds nuw i8, ptr %989, i64 %1000
  %1002 = zext nneg i32 %998 to i64
  %1003 = tail call i64 @read(i32 noundef %999, ptr noundef %1001, i64 noundef %1002) #13
  %1004 = trunc i64 %1003 to i32
  %1005 = icmp slt i32 %1004, 1
  br i1 %1005, label %1013, label %1006

1006:                                             ; preds = %996
  %1007 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %992, i32 %1004), !nosanitize !20
  %1008 = extractvalue { i32, i1 } %1007, 1, !nosanitize !20
  br i1 %1008, label %1009, label %1010, !prof !21, !nosanitize !20

1009:                                             ; preds = %1006
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1010:                                             ; preds = %1006
  %1011 = extractvalue { i32, i1 } %1007, 0, !nosanitize !20
  %1012 = icmp ult i32 %1011, %988
  br i1 %1012, label %991, label %1027, !llvm.loop !47

1013:                                             ; preds = %996
  %1014 = icmp slt i32 %1004, 0
  br i1 %1014, label %1015, label %1022

1015:                                             ; preds = %1013
  %1016 = load i32, ptr %990, align 4, !tbaa !4
  %1017 = icmp eq i32 %1016, 11
  br i1 %1017, label %1018, label %1023

1018:                                             ; preds = %1015
  store i32 1, ptr %490, align 4, !tbaa !17
  %1019 = icmp eq i32 %992, 0
  br i1 %1019, label %1020, label %1027

1020:                                             ; preds = %1018
  %1021 = load i32, ptr %990, align 4, !tbaa !4
  br label %1023

1022:                                             ; preds = %1013
  store i32 1, ptr %482, align 8, !tbaa !24
  br label %1027

1023:                                             ; preds = %1020, %1015
  %1024 = phi i32 [ %1021, %1020 ], [ %1016, %1015 ]
  %1025 = tail call ptr @strerror(i32 noundef %1024) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1025) #13
  %1026 = load i32, ptr %10, align 8, !tbaa !16
  br label %1061

1027:                                             ; preds = %1022, %1018, %1010
  %1028 = phi i32 [ %992, %1018 ], [ %992, %1022 ], [ %1011, %1010 ]
  %1029 = load i32, ptr %483, align 8, !tbaa !34
  %1030 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1029, i32 %1028), !nosanitize !20
  %1031 = extractvalue { i32, i1 } %1030, 1, !nosanitize !20
  br i1 %1031, label %1032, label %1033, !prof !21, !nosanitize !20

1032:                                             ; preds = %1027
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1033:                                             ; preds = %1027
  %1034 = extractvalue { i32, i1 } %1030, 0, !nosanitize !20
  store i32 %1034, ptr %483, align 8, !tbaa !34
  %1035 = load ptr, ptr %489, align 8, !tbaa !29
  store ptr %1035, ptr %488, align 8, !tbaa !35
  %1036 = icmp eq i32 %1034, 0
  br i1 %1036, label %1037, label %1041

1037:                                             ; preds = %1033, %984
  %1038 = load i32, ptr %490, align 4, !tbaa !17
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1040, label %1061

1040:                                             ; preds = %1037
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %1061

1041:                                             ; preds = %1033, %978
  %1042 = tail call i32 @inflate(ptr noundef nonnull %488, i32 noundef 0) #13
  %1043 = load i32, ptr %486, align 8, !tbaa !48
  %1044 = icmp ult i32 %1043, %504
  br i1 %1044, label %1045, label %1046

1045:                                             ; preds = %1041
  store i32 0, ptr %492, align 4, !tbaa !33
  br label %1046

1046:                                             ; preds = %1045, %1041
  switch i32 %1042, label %1057 [
    i32 -2, label %1047
    i32 2, label %1047
    i32 -4, label %1048
    i32 -3, label %1049
  ]

1047:                                             ; preds = %1046, %1046
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %1061

1048:                                             ; preds = %1046
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1061

1049:                                             ; preds = %1046
  %1050 = load i32, ptr %492, align 4, !tbaa !33
  %1051 = icmp eq i32 %1050, 1
  br i1 %1051, label %1052, label %1053

1052:                                             ; preds = %1049
  store i32 0, ptr %483, align 8, !tbaa !34
  store i32 1, ptr %482, align 8, !tbaa !24
  store i32 0, ptr %484, align 8, !tbaa !26
  br label %1061

1053:                                             ; preds = %1049
  %1054 = load ptr, ptr %493, align 8, !tbaa !50
  %1055 = icmp eq ptr %1054, null
  %1056 = select i1 %1055, ptr @.str.6, ptr %1054
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1056) #13
  br label %1061

1057:                                             ; preds = %1046
  %1058 = icmp ne i32 %1043, 0
  %1059 = icmp ne i32 %1042, 1
  %1060 = select i1 %1058, i1 %1059, i1 false
  br i1 %1060, label %978, label %1061, !llvm.loop !51

1061:                                             ; preds = %1057, %1053, %1052, %1048, %1047, %1040, %1037, %1023, %982
  %1062 = phi i32 [ %1026, %1023 ], [ %979, %1037 ], [ %979, %1040 ], [ %1042, %1047 ], [ -4, %1048 ], [ 0, %1052 ], [ -3, %1053 ], [ %1042, %1057 ], [ %983, %982 ]
  %1063 = load i32, ptr %486, align 8, !tbaa !48
  %1064 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %504, i32 %1063), !nosanitize !20
  %1065 = extractvalue { i32, i1 } %1064, 1, !nosanitize !20
  br i1 %1065, label %1066, label %1067, !prof !21, !nosanitize !20

1066:                                             ; preds = %1061
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1067:                                             ; preds = %1061
  %1068 = extractvalue { i32, i1 } %1064, 0, !nosanitize !20
  %1069 = load ptr, ptr %487, align 8, !tbaa !49
  %1070 = zext i32 %1068 to i64
  %1071 = sub nsw i64 0, %1070
  %1072 = getelementptr inbounds i8, ptr %1069, i64 %1071
  store ptr %1072, ptr %481, align 8, !tbaa !22
  %1073 = icmp eq i32 %1062, 1
  br i1 %1073, label %1074, label %1075

1074:                                             ; preds = %1067
  store i32 0, ptr %492, align 4, !tbaa !33
  store i32 0, ptr %484, align 8, !tbaa !26
  br label %1078

1075:                                             ; preds = %1067
  %1076 = icmp ne i32 %1062, 0
  %1077 = sext i1 %1076 to i32
  br label %1078

1078:                                             ; preds = %1075, %1074
  %1079 = phi i32 [ 0, %1074 ], [ %1077, %1075 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1082

1080:                                             ; preds = %961
  %1081 = zext i32 %962 to i64
  br label %1082

1082:                                             ; preds = %1080, %1078, %976, %973, %969, %517
  %1083 = phi i64 [ %1081, %1080 ], [ %951, %976 ], [ %951, %973 ], [ %951, %969 ], [ %510, %517 ], [ %1070, %1078 ]
  %1084 = phi i32 [ 0, %1080 ], [ 0, %976 ], [ -1, %973 ], [ 0, %969 ], [ %521, %517 ], [ %1079, %1078 ]
  %1085 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %501, i64 %1083), !nosanitize !20
  %1086 = extractvalue { i64, i1 } %1085, 0, !nosanitize !20
  %1087 = extractvalue { i64, i1 } %1085, 1, !nosanitize !20
  br i1 %1087, label %1088, label %1089, !prof !21, !nosanitize !20

1088:                                             ; preds = %1082
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1089:                                             ; preds = %1082
  %1090 = getelementptr inbounds nuw i8, ptr %500, i64 %1083
  %1091 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %502, i64 %1083), !nosanitize !20
  %1092 = extractvalue { i64, i1 } %1091, 0, !nosanitize !20
  %1093 = extractvalue { i64, i1 } %1091, 1, !nosanitize !20
  br i1 %1093, label %1094, label %1095, !prof !21, !nosanitize !20

1094:                                             ; preds = %1095, %1089
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1095:                                             ; preds = %1089
  %1096 = load i64, ptr %494, align 8, !tbaa !23
  %1097 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1096, i64 %1083), !nosanitize !20
  %1098 = extractvalue { i64, i1 } %1097, 1, !nosanitize !20
  br i1 %1098, label %1094, label %1099, !prof !21, !nosanitize !20

1099:                                             ; preds = %1095
  %1100 = extractvalue { i64, i1 } %1097, 0, !nosanitize !20
  store i64 %1100, ptr %494, align 8, !tbaa !23
  br label %1101

1101:                                             ; preds = %1099, %934, %929, %923, %818, %773
  %1102 = phi ptr [ %1090, %1099 ], [ %500, %934 ], [ %500, %818 ], [ %500, %773 ], [ %500, %923 ], [ %500, %929 ]
  %1103 = phi i64 [ %1086, %1099 ], [ %501, %934 ], [ %501, %818 ], [ %501, %773 ], [ %501, %923 ], [ %501, %929 ]
  %1104 = phi i64 [ %1092, %1099 ], [ %502, %934 ], [ %502, %818 ], [ %502, %773 ], [ %502, %923 ], [ %502, %929 ]
  %1105 = phi i32 [ %1084, %1099 ], [ %937, %934 ], [ 0, %818 ], [ 0, %773 ], [ 0, %923 ], [ 0, %929 ]
  %1106 = icmp eq i64 %1103, 0
  br i1 %1106, label %1115, label %1107

1107:                                             ; preds = %1101
  %1108 = icmp eq i32 %1105, 0
  br i1 %1108, label %499, label %1109, !llvm.loop !60

1109:                                             ; preds = %1107
  %1110 = load i32, ptr %482, align 8, !tbaa !24
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %1115, label %1112

1112:                                             ; preds = %1109, %525
  %1113 = phi i64 [ %1104, %1109 ], [ %502, %525 ]
  %1114 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1114, align 4, !tbaa !61
  br label %1115

1115:                                             ; preds = %1112, %1109, %1101
  %1116 = phi i64 [ %1104, %1109 ], [ %1113, %1112 ], [ %1104, %1101 ]
  %1117 = trunc i64 %1116 to i32
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1119, label %1131

1119:                                             ; preds = %1115, %462, %455, %357, %271, %99, %94, %19
  %1120 = load i32, ptr %10, align 8, !tbaa !16
  br label %1121

1121:                                             ; preds = %1119, %113
  %1122 = phi i32 [ %1120, %1119 ], [ %114, %113 ]
  switch i32 %1122, label %1131 [
    i32 0, label %1123
    i32 -5, label %1123
  ]

1123:                                             ; preds = %1121, %1121
  %1124 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1125 = load i32, ptr %1124, align 4, !tbaa !17
  %1126 = icmp eq i32 %1125, 0
  br i1 %1126, label %1131, label %1127

1127:                                             ; preds = %1123
  %1128 = tail call ptr @__errno_location() #17
  %1129 = load i32, ptr %1128, align 4, !tbaa !4
  %1130 = tail call ptr @strerror(i32 noundef %1129) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1130) #13
  br label %1131

1131:                                             ; preds = %1127, %1123, %1121, %1115, %18, %12, %5, %3
  %1132 = phi i32 [ -1, %5 ], [ -1, %3 ], [ -1, %18 ], [ -1, %12 ], [ -1, %1127 ], [ -1, %1121 ], [ 0, %1123 ], [ %1117, %1115 ]
  ret i32 %1132
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
  br i1 %5, label %1126, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 7247
  br i1 %9, label %10, label %1126

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
  br i1 %16, label %1126, label %17

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
  br label %1126

28:                                               ; preds = %24, %22
  %29 = icmp eq i64 %19, 0
  br i1 %29, label %1126, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %32 = load i64, ptr %31, align 8, !tbaa !18
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %488, label %34

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

53:                                               ; preds = %485, %34
  %54 = phi i64 [ %486, %485 ], [ %32, %34 ]
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
  br i1 %76, label %63, label %77, !prof !21, !nosanitize !20

77:                                               ; preds = %73
  %78 = extractvalue { i64, i1 } %75, 0, !nosanitize !20
  store i64 %78, ptr %31, align 8, !tbaa !18
  br label %485

79:                                               ; preds = %53
  %80 = load i32, ptr %37, align 8, !tbaa !24
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, ptr %38, align 8, !tbaa !25
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %488, label %85

85:                                               ; preds = %82, %79
  br label %86

86:                                               ; preds = %482, %85
  %87 = load i32, ptr %39, align 8, !tbaa !26
  switch i32 %87, label %470 [
    i32 0, label %88
    i32 1, label %326
    i32 2, label %370
  ]

88:                                               ; preds = %86
  %89 = load i32, ptr %40, align 8, !tbaa !27
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %88
  %92 = load i32, ptr %50, align 4, !tbaa !28
  %93 = zext i32 %92 to i64
  %94 = tail call noalias ptr @malloc(i64 noundef %93) #16
  store ptr %94, ptr %45, align 8, !tbaa !29
  %95 = load i32, ptr %50, align 4, !tbaa !28
  %96 = shl i32 %95, 1
  %97 = zext i32 %96 to i64
  %98 = tail call noalias ptr @malloc(i64 noundef %97) #16
  store ptr %98, ptr %42, align 8, !tbaa !30
  %99 = icmp eq ptr %94, null
  %100 = icmp eq ptr %98, null
  %101 = or i1 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  tail call void @free(ptr noundef %98) #13
  tail call void @free(ptr noundef %94) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1123

103:                                              ; preds = %91
  %104 = load i32, ptr %50, align 4, !tbaa !28
  store i32 %104, ptr %40, align 8, !tbaa !27
  store i32 0, ptr %38, align 8, !tbaa !25
  store ptr null, ptr %44, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  %105 = tail call i32 @inflateInit2_(ptr noundef nonnull %44, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %42, align 8, !tbaa !30
  tail call void @free(ptr noundef %108) #13
  %109 = load ptr, ptr %45, align 8, !tbaa !29
  tail call void @free(ptr noundef %109) #13
  store i32 0, ptr %40, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1123

110:                                              ; preds = %103, %88
  %111 = load i32, ptr %52, align 8, !tbaa !32
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr %48, align 4, !tbaa !33
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113, %110
  %117 = tail call i32 @inflateReset(ptr noundef nonnull %44) #13
  store i32 2, ptr %39, align 8, !tbaa !26
  %118 = load i32, ptr %48, align 4, !tbaa !33
  %119 = icmp ne i32 %118, -1
  %120 = zext i1 %119 to i32
  store i32 %120, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %52, align 8, !tbaa !32
  br label %323

121:                                              ; preds = %113
  %122 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %122, label %1123 [
    i32 0, label %123
    i32 -5, label %123
  ]

123:                                              ; preds = %121, %121
  %124 = load i32, ptr %37, align 8, !tbaa !24
  %125 = icmp eq i32 %124, 0
  %126 = load i32, ptr %38, align 8, !tbaa !34
  br i1 %125, label %127, label %291

127:                                              ; preds = %123
  %128 = icmp eq i32 %126, 0
  br i1 %128, label %235, label %129

129:                                              ; preds = %127
  %130 = load ptr, ptr %45, align 8, !tbaa !29
  %131 = load ptr, ptr %44, align 8, !tbaa !35
  %132 = icmp eq ptr %131, %130
  br i1 %132, label %235, label %133

133:                                              ; preds = %129
  %134 = ptrtoaddr ptr %131 to i64
  %135 = ptrtoaddr ptr %130 to i64
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
  %144 = and i64 %136, 28
  %145 = and i64 %136, 4294967264
  %146 = getelementptr i8, ptr %130, i64 %145
  %147 = getelementptr i8, ptr %131, i64 %145
  %148 = trunc nuw i64 %145 to i32
  %149 = sub i32 %126, %148
  br label %150

150:                                              ; preds = %150, %143
  %151 = phi i64 [ 0, %143 ], [ %158, %150 ]
  %152 = getelementptr i8, ptr %130, i64 %151
  %153 = getelementptr i8, ptr %131, i64 %151
  %154 = getelementptr i8, ptr %153, i64 16
  %155 = load <16 x i8>, ptr %153, align 1, !tbaa !36
  %156 = load <16 x i8>, ptr %154, align 1, !tbaa !36
  %157 = getelementptr i8, ptr %152, i64 16
  store <16 x i8> %155, ptr %152, align 1, !tbaa !36
  store <16 x i8> %156, ptr %157, align 1, !tbaa !36
  %158 = add nuw i64 %151, 32
  %159 = icmp eq i64 %158, %145
  br i1 %159, label %160, label %150, !llvm.loop !62

160:                                              ; preds = %150
  %161 = icmp eq i64 %145, %136
  br i1 %161, label %233, label %162

162:                                              ; preds = %160
  %163 = icmp eq i64 %144, 0
  br i1 %163, label %180, label %164, !prof !41

164:                                              ; preds = %162, %141
  %165 = phi i64 [ %145, %162 ], [ 0, %141 ]
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
  br i1 %177, label %178, label %171, !llvm.loop !63

178:                                              ; preds = %171
  %179 = icmp eq i64 %166, %136
  br i1 %179, label %233, label %180

180:                                              ; preds = %178, %162, %133
  %181 = phi ptr [ %130, %133 ], [ %146, %162 ], [ %167, %178 ]
  %182 = phi ptr [ %131, %133 ], [ %147, %162 ], [ %168, %178 ]
  %183 = phi i32 [ %126, %133 ], [ %149, %162 ], [ %170, %178 ]
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
  br i1 %197, label %198, label %187, !llvm.loop !64

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
  br i1 %232, label %233, label %203, !llvm.loop !65

233:                                              ; preds = %203, %198, %178, %160
  %234 = load i32, ptr %38, align 8, !tbaa !34
  br label %235

235:                                              ; preds = %233, %129, %127
  %236 = phi i32 [ %234, %233 ], [ %126, %129 ], [ 0, %127 ]
  %237 = load i32, ptr %40, align 8, !tbaa !27
  %238 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %237, i32 %236), !nosanitize !20
  %239 = extractvalue { i32, i1 } %238, 1, !nosanitize !20
  br i1 %239, label %240, label %241, !prof !21, !nosanitize !20

240:                                              ; preds = %235
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

241:                                              ; preds = %235
  %242 = extractvalue { i32, i1 } %238, 0, !nosanitize !20
  %243 = load ptr, ptr %45, align 8, !tbaa !29
  %244 = zext i32 %236 to i64
  %245 = getelementptr inbounds nuw i8, ptr %243, i64 %244
  store i32 0, ptr %46, align 4, !tbaa !17
  %246 = tail call ptr @__errno_location() #17
  store i32 0, ptr %246, align 4, !tbaa !4
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
  %255 = load i32, ptr %47, align 4, !tbaa !46
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
  %272 = load i32, ptr %246, align 4, !tbaa !4
  %273 = icmp eq i32 %272, 11
  br i1 %273, label %274, label %279

274:                                              ; preds = %271
  store i32 1, ptr %46, align 4, !tbaa !17
  %275 = icmp eq i32 %248, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %274
  %277 = load i32, ptr %246, align 4, !tbaa !4
  br label %279

278:                                              ; preds = %269
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %282

279:                                              ; preds = %276, %271
  %280 = phi i32 [ %277, %276 ], [ %272, %271 ]
  %281 = tail call ptr @strerror(i32 noundef %280) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %281) #13
  br label %1123

282:                                              ; preds = %278, %274, %266
  %283 = phi i32 [ %248, %274 ], [ %248, %278 ], [ %267, %266 ]
  %284 = load i32, ptr %38, align 8, !tbaa !34
  %285 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %284, i32 %283), !nosanitize !20
  %286 = extractvalue { i32, i1 } %285, 1, !nosanitize !20
  br i1 %286, label %287, label %288, !prof !21, !nosanitize !20

287:                                              ; preds = %282
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

288:                                              ; preds = %282
  %289 = extractvalue { i32, i1 } %285, 0, !nosanitize !20
  store i32 %289, ptr %38, align 8, !tbaa !34
  %290 = load ptr, ptr %45, align 8, !tbaa !29
  store ptr %290, ptr %44, align 8, !tbaa !35
  br label %291

291:                                              ; preds = %288, %123
  %292 = phi i32 [ %289, %288 ], [ %126, %123 ]
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %323, label %294

294:                                              ; preds = %291
  %295 = load i32, ptr %46, align 4, !tbaa !17
  %296 = icmp ne i32 %295, 0
  %297 = icmp ult i32 %292, 4
  %298 = and i1 %297, %296
  br i1 %298, label %323, label %299

299:                                              ; preds = %294
  %300 = icmp ugt i32 %292, 3
  %301 = load ptr, ptr %44, align 8, !tbaa !35
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
  %318 = tail call i32 @inflateReset(ptr noundef nonnull %44) #13
  store i32 2, ptr %39, align 8, !tbaa !26
  store i32 1, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %52, align 8, !tbaa !32
  br label %471

319:                                              ; preds = %313, %309, %305, %302, %299
  %320 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %320, ptr %35, align 8, !tbaa !22
  %321 = zext i32 %292 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %320, ptr align 1 %301, i64 %321, i1 false)
  %322 = load i32, ptr %38, align 8, !tbaa !34
  store i32 %322, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %38, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !26
  br label %473

323:                                              ; preds = %294, %291, %116
  %324 = load i32, ptr %39, align 8, !tbaa !26
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %483, label %471

326:                                              ; preds = %86
  %327 = load ptr, ptr %42, align 8, !tbaa !30
  %328 = load i32, ptr %40, align 8, !tbaa !27
  %329 = shl i32 %328, 1
  store i32 0, ptr %46, align 4, !tbaa !17
  %330 = tail call ptr @__errno_location() #17
  store i32 0, ptr %330, align 4, !tbaa !4
  store i32 0, ptr %3, align 8, !tbaa !4
  br label %331

331:                                              ; preds = %351, %326
  %332 = phi i32 [ %352, %351 ], [ 0, %326 ]
  %333 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %329, i32 %332), !nosanitize !20
  %334 = extractvalue { i32, i1 } %333, 1, !nosanitize !20
  br i1 %334, label %335, label %336, !prof !21, !nosanitize !20

335:                                              ; preds = %331
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

336:                                              ; preds = %331
  %337 = extractvalue { i32, i1 } %333, 0, !nosanitize !20
  %338 = tail call i32 @llvm.umin.i32(i32 %337, i32 1073741824)
  %339 = load i32, ptr %47, align 4, !tbaa !46
  %340 = zext i32 %332 to i64
  %341 = getelementptr inbounds nuw i8, ptr %327, i64 %340
  %342 = zext nneg i32 %338 to i64
  %343 = tail call i64 @read(i32 noundef %339, ptr noundef %341, i64 noundef %342) #13
  %344 = trunc i64 %343 to i32
  %345 = icmp slt i32 %344, 1
  br i1 %345, label %354, label %346

346:                                              ; preds = %336
  %347 = load i32, ptr %3, align 4, !tbaa !4
  %348 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %347, i32 %344), !nosanitize !20
  %349 = extractvalue { i32, i1 } %348, 1, !nosanitize !20
  br i1 %349, label %350, label %351, !prof !21, !nosanitize !20

350:                                              ; preds = %346
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

351:                                              ; preds = %346
  %352 = extractvalue { i32, i1 } %348, 0, !nosanitize !20
  store i32 %352, ptr %3, align 4, !tbaa !4
  %353 = icmp ult i32 %352, %329
  br i1 %353, label %331, label %368, !llvm.loop !47

354:                                              ; preds = %336
  %355 = icmp slt i32 %344, 0
  br i1 %355, label %356, label %364

356:                                              ; preds = %354
  %357 = load i32, ptr %330, align 4, !tbaa !4
  %358 = icmp eq i32 %357, 11
  br i1 %358, label %359, label %365

359:                                              ; preds = %356
  store i32 1, ptr %46, align 4, !tbaa !17
  %360 = load i32, ptr %3, align 4, !tbaa !4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %368

362:                                              ; preds = %359
  %363 = load i32, ptr %330, align 4, !tbaa !4
  br label %365

364:                                              ; preds = %354
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %368

365:                                              ; preds = %362, %356
  %366 = phi i32 [ %363, %362 ], [ %357, %356 ]
  %367 = tail call ptr @strerror(i32 noundef %366) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %367) #13
  br label %1123

368:                                              ; preds = %364, %359, %351
  %369 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %369, ptr %35, align 8, !tbaa !22
  br label %483

370:                                              ; preds = %86
  %371 = load i32, ptr %40, align 8, !tbaa !27
  %372 = shl i32 %371, 1
  store i32 %372, ptr %41, align 8, !tbaa !48
  %373 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %373, ptr %43, align 8, !tbaa !49
  br label %374

374:                                              ; preds = %453, %370
  %375 = phi i32 [ 0, %370 ], [ %438, %453 ]
  %376 = load i32, ptr %38, align 8, !tbaa !34
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %437

378:                                              ; preds = %374
  %379 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %379, label %457 [
    i32 0, label %380
    i32 -5, label %380
  ]

380:                                              ; preds = %378, %378
  %381 = load i32, ptr %37, align 8, !tbaa !24
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %433

383:                                              ; preds = %380
  %384 = load i32, ptr %40, align 8, !tbaa !27
  %385 = load ptr, ptr %45, align 8, !tbaa !29
  store i32 0, ptr %46, align 4, !tbaa !17
  %386 = tail call ptr @__errno_location() #17
  store i32 0, ptr %386, align 4, !tbaa !4
  br label %387

387:                                              ; preds = %406, %383
  %388 = phi i32 [ 0, %383 ], [ %407, %406 ]
  %389 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %384, i32 %388), !nosanitize !20
  %390 = extractvalue { i32, i1 } %389, 1, !nosanitize !20
  br i1 %390, label %391, label %392, !prof !21, !nosanitize !20

391:                                              ; preds = %387
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

392:                                              ; preds = %387
  %393 = extractvalue { i32, i1 } %389, 0, !nosanitize !20
  %394 = tail call i32 @llvm.umin.i32(i32 %393, i32 1073741824)
  %395 = load i32, ptr %47, align 4, !tbaa !46
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
  %412 = load i32, ptr %386, align 4, !tbaa !4
  %413 = icmp eq i32 %412, 11
  br i1 %413, label %414, label %419

414:                                              ; preds = %411
  store i32 1, ptr %46, align 4, !tbaa !17
  %415 = icmp eq i32 %388, 0
  br i1 %415, label %416, label %423

416:                                              ; preds = %414
  %417 = load i32, ptr %386, align 4, !tbaa !4
  br label %419

418:                                              ; preds = %409
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %423

419:                                              ; preds = %416, %411
  %420 = phi i32 [ %417, %416 ], [ %412, %411 ]
  %421 = tail call ptr @strerror(i32 noundef %420) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %421) #13
  %422 = load i32, ptr %11, align 8, !tbaa !16
  br label %457

423:                                              ; preds = %418, %414, %406
  %424 = phi i32 [ %388, %414 ], [ %388, %418 ], [ %407, %406 ]
  %425 = load i32, ptr %38, align 8, !tbaa !34
  %426 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %425, i32 %424), !nosanitize !20
  %427 = extractvalue { i32, i1 } %426, 1, !nosanitize !20
  br i1 %427, label %428, label %429, !prof !21, !nosanitize !20

428:                                              ; preds = %423
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

429:                                              ; preds = %423
  %430 = extractvalue { i32, i1 } %426, 0, !nosanitize !20
  store i32 %430, ptr %38, align 8, !tbaa !34
  %431 = load ptr, ptr %45, align 8, !tbaa !29
  store ptr %431, ptr %44, align 8, !tbaa !35
  %432 = icmp eq i32 %430, 0
  br i1 %432, label %433, label %437

433:                                              ; preds = %429, %380
  %434 = load i32, ptr %46, align 4, !tbaa !17
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %457

436:                                              ; preds = %433
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %457

437:                                              ; preds = %429, %374
  %438 = tail call i32 @inflate(ptr noundef nonnull %44, i32 noundef 0) #13
  %439 = load i32, ptr %41, align 8, !tbaa !48
  %440 = icmp ult i32 %439, %372
  br i1 %440, label %441, label %442

441:                                              ; preds = %437
  store i32 0, ptr %48, align 4, !tbaa !33
  br label %442

442:                                              ; preds = %441, %437
  switch i32 %438, label %453 [
    i32 -2, label %443
    i32 2, label %443
    i32 -4, label %444
    i32 -3, label %445
  ]

443:                                              ; preds = %442, %442
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %457

444:                                              ; preds = %442
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %457

445:                                              ; preds = %442
  %446 = load i32, ptr %48, align 4, !tbaa !33
  %447 = icmp eq i32 %446, 1
  br i1 %447, label %448, label %449

448:                                              ; preds = %445
  store i32 0, ptr %38, align 8, !tbaa !34
  store i32 1, ptr %37, align 8, !tbaa !24
  store i32 0, ptr %39, align 8, !tbaa !26
  br label %457

449:                                              ; preds = %445
  %450 = load ptr, ptr %49, align 8, !tbaa !50
  %451 = icmp eq ptr %450, null
  %452 = select i1 %451, ptr @.str.6, ptr %450
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %452) #13
  br label %457

453:                                              ; preds = %442
  %454 = icmp ne i32 %439, 0
  %455 = icmp ne i32 %438, 1
  %456 = select i1 %454, i1 %455, i1 false
  br i1 %456, label %374, label %457, !llvm.loop !51

457:                                              ; preds = %453, %449, %448, %444, %443, %436, %433, %419, %378
  %458 = phi i32 [ %422, %419 ], [ %375, %433 ], [ %375, %436 ], [ %438, %443 ], [ -4, %444 ], [ 0, %448 ], [ -3, %449 ], [ %438, %453 ], [ %379, %378 ]
  %459 = load i32, ptr %41, align 8, !tbaa !48
  %460 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %372, i32 %459), !nosanitize !20
  %461 = extractvalue { i32, i1 } %460, 1, !nosanitize !20
  br i1 %461, label %462, label %463, !prof !21, !nosanitize !20

462:                                              ; preds = %457
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

463:                                              ; preds = %457
  %464 = extractvalue { i32, i1 } %460, 0, !nosanitize !20
  store i32 %464, ptr %3, align 8, !tbaa !19
  %465 = load ptr, ptr %43, align 8, !tbaa !49
  %466 = zext i32 %464 to i64
  %467 = sub nsw i64 0, %466
  %468 = getelementptr inbounds i8, ptr %465, i64 %467
  store ptr %468, ptr %35, align 8, !tbaa !22
  switch i32 %458, label %1123 [
    i32 1, label %469
    i32 0, label %471
  ]

469:                                              ; preds = %463
  store i32 0, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %39, align 8, !tbaa !26
  br label %471

470:                                              ; preds = %86
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1123

471:                                              ; preds = %469, %463, %323, %317
  %472 = load i32, ptr %3, align 8, !tbaa !19
  br label %473

473:                                              ; preds = %471, %319
  %474 = phi i32 [ %472, %471 ], [ %322, %319 ]
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %483

476:                                              ; preds = %473
  %477 = load i32, ptr %37, align 8, !tbaa !24
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %482, label %479

479:                                              ; preds = %476
  %480 = load i32, ptr %38, align 8, !tbaa !34
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %483, label %482

482:                                              ; preds = %479, %476
  br label %86, !llvm.loop !52

483:                                              ; preds = %479, %473, %368, %323
  %484 = load i64, ptr %31, align 8, !tbaa !18
  br label %485

485:                                              ; preds = %483, %77
  %486 = phi i64 [ %484, %483 ], [ %78, %77 ]
  %487 = icmp eq i64 %486, 0
  br i1 %487, label %488, label %53, !llvm.loop !53

488:                                              ; preds = %485, %82, %30
  %489 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %490 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %491 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %492 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %493 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %494 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %495 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %496 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %497 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %498 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %499 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %500 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %501 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %502 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %503 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %504 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %505 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %506 = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %507

507:                                              ; preds = %1115, %488
  %508 = phi ptr [ %0, %488 ], [ %1110, %1115 ]
  %509 = phi i64 [ %19, %488 ], [ %1111, %1115 ]
  %510 = phi i64 [ 0, %488 ], [ %1112, %1115 ]
  %511 = tail call i64 @llvm.umin.i64(i64 %509, i64 4294967295)
  %512 = trunc nuw i64 %511 to i32
  %513 = load i32, ptr %3, align 8, !tbaa !19
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %530, label %515

515:                                              ; preds = %507
  %516 = tail call i32 @llvm.umin.i32(i32 %513, i32 %512)
  %517 = load ptr, ptr %489, align 8, !tbaa !22
  %518 = zext i32 %516 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %508, ptr align 1 %517, i64 %518, i1 false)
  %519 = load ptr, ptr %489, align 8, !tbaa !22
  %520 = getelementptr inbounds nuw i8, ptr %519, i64 %518
  store ptr %520, ptr %489, align 8, !tbaa !22
  %521 = load i32, ptr %3, align 8, !tbaa !19
  %522 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %521, i32 %516), !nosanitize !20
  %523 = extractvalue { i32, i1 } %522, 1, !nosanitize !20
  br i1 %523, label %524, label %525, !prof !21, !nosanitize !20

524:                                              ; preds = %515
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

525:                                              ; preds = %515
  %526 = extractvalue { i32, i1 } %522, 0, !nosanitize !20
  store i32 %526, ptr %3, align 8, !tbaa !19
  %527 = load i32, ptr %11, align 8, !tbaa !16
  %528 = icmp ne i32 %527, 0
  %529 = sext i1 %528 to i32
  br label %1090

530:                                              ; preds = %507
  %531 = load i32, ptr %490, align 8, !tbaa !24
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %536, label %533

533:                                              ; preds = %530
  %534 = load i32, ptr %491, align 8, !tbaa !25
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %1120, label %536

536:                                              ; preds = %533, %530
  %537 = load i32, ptr %492, align 8, !tbaa !26
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %543, label %539

539:                                              ; preds = %536
  %540 = load i32, ptr %493, align 8, !tbaa !27
  %541 = shl i32 %540, 1
  %542 = icmp ugt i32 %541, %512
  br i1 %542, label %543, label %946

543:                                              ; preds = %539, %536
  br label %544

544:                                              ; preds = %940, %543
  %545 = phi i32 [ %941, %940 ], [ %537, %543 ]
  switch i32 %545, label %928 [
    i32 0, label %546
    i32 1, label %784
    i32 2, label %828
  ]

546:                                              ; preds = %544
  %547 = load i32, ptr %493, align 8, !tbaa !27
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %568

549:                                              ; preds = %546
  %550 = load i32, ptr %504, align 4, !tbaa !28
  %551 = zext i32 %550 to i64
  %552 = tail call noalias ptr @malloc(i64 noundef %551) #16
  store ptr %552, ptr %497, align 8, !tbaa !29
  %553 = load i32, ptr %504, align 4, !tbaa !28
  %554 = shl i32 %553, 1
  %555 = zext i32 %554 to i64
  %556 = tail call noalias ptr @malloc(i64 noundef %555) #16
  store ptr %556, ptr %503, align 8, !tbaa !30
  %557 = icmp eq ptr %552, null
  %558 = icmp eq ptr %556, null
  %559 = or i1 %557, %558
  br i1 %559, label %560, label %561

560:                                              ; preds = %549
  tail call void @free(ptr noundef %556) #13
  tail call void @free(ptr noundef %552) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %942

561:                                              ; preds = %549
  %562 = load i32, ptr %504, align 4, !tbaa !28
  store i32 %562, ptr %493, align 8, !tbaa !27
  store i32 0, ptr %491, align 8, !tbaa !25
  store ptr null, ptr %496, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %505, i8 0, i64 24, i1 false)
  %563 = tail call i32 @inflateInit2_(ptr noundef nonnull %496, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %568, label %565

565:                                              ; preds = %561
  %566 = load ptr, ptr %503, align 8, !tbaa !30
  tail call void @free(ptr noundef %566) #13
  %567 = load ptr, ptr %497, align 8, !tbaa !29
  tail call void @free(ptr noundef %567) #13
  store i32 0, ptr %493, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %942

568:                                              ; preds = %561, %546
  %569 = load i32, ptr %506, align 8, !tbaa !32
  %570 = icmp eq i32 %569, -1
  br i1 %570, label %574, label %571

571:                                              ; preds = %568
  %572 = load i32, ptr %500, align 4, !tbaa !33
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %574, label %579

574:                                              ; preds = %571, %568
  %575 = tail call i32 @inflateReset(ptr noundef nonnull %496) #13
  store i32 2, ptr %492, align 8, !tbaa !26
  %576 = load i32, ptr %500, align 4, !tbaa !33
  %577 = icmp ne i32 %576, -1
  %578 = zext i1 %577 to i32
  store i32 %578, ptr %500, align 4, !tbaa !33
  store i32 0, ptr %506, align 8, !tbaa !32
  br label %781

579:                                              ; preds = %571
  %580 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %580, label %942 [
    i32 0, label %581
    i32 -5, label %581
  ]

581:                                              ; preds = %579, %579
  %582 = load i32, ptr %490, align 8, !tbaa !24
  %583 = icmp eq i32 %582, 0
  %584 = load i32, ptr %491, align 8, !tbaa !34
  br i1 %583, label %585, label %749

585:                                              ; preds = %581
  %586 = icmp eq i32 %584, 0
  br i1 %586, label %693, label %587

587:                                              ; preds = %585
  %588 = load ptr, ptr %497, align 8, !tbaa !29
  %589 = load ptr, ptr %496, align 8, !tbaa !35
  %590 = icmp eq ptr %589, %588
  br i1 %590, label %693, label %591

591:                                              ; preds = %587
  %592 = ptrtoaddr ptr %589 to i64
  %593 = ptrtoaddr ptr %588 to i64
  %594 = zext i32 %584 to i64
  %595 = icmp ult i32 %584, 4
  %596 = sub i64 %593, %592
  %597 = icmp ult i64 %596, 32
  %598 = or i1 %595, %597
  br i1 %598, label %638, label %599

599:                                              ; preds = %591
  %600 = icmp ult i32 %584, 32
  br i1 %600, label %622, label %601

601:                                              ; preds = %599
  %602 = and i64 %594, 28
  %603 = and i64 %594, 4294967264
  %604 = getelementptr i8, ptr %588, i64 %603
  %605 = getelementptr i8, ptr %589, i64 %603
  %606 = trunc nuw i64 %603 to i32
  %607 = sub i32 %584, %606
  br label %608

608:                                              ; preds = %608, %601
  %609 = phi i64 [ 0, %601 ], [ %616, %608 ]
  %610 = getelementptr i8, ptr %588, i64 %609
  %611 = getelementptr i8, ptr %589, i64 %609
  %612 = getelementptr i8, ptr %611, i64 16
  %613 = load <16 x i8>, ptr %611, align 1, !tbaa !36
  %614 = load <16 x i8>, ptr %612, align 1, !tbaa !36
  %615 = getelementptr i8, ptr %610, i64 16
  store <16 x i8> %613, ptr %610, align 1, !tbaa !36
  store <16 x i8> %614, ptr %615, align 1, !tbaa !36
  %616 = add nuw i64 %609, 32
  %617 = icmp eq i64 %616, %603
  br i1 %617, label %618, label %608, !llvm.loop !66

618:                                              ; preds = %608
  %619 = icmp eq i64 %603, %594
  br i1 %619, label %691, label %620

620:                                              ; preds = %618
  %621 = icmp eq i64 %602, 0
  br i1 %621, label %638, label %622, !prof !41

622:                                              ; preds = %620, %599
  %623 = phi i64 [ %603, %620 ], [ 0, %599 ]
  %624 = and i64 %594, 4294967292
  %625 = getelementptr i8, ptr %588, i64 %624
  %626 = getelementptr i8, ptr %589, i64 %624
  %627 = trunc nuw i64 %624 to i32
  %628 = sub i32 %584, %627
  br label %629

629:                                              ; preds = %629, %622
  %630 = phi i64 [ %623, %622 ], [ %634, %629 ]
  %631 = getelementptr i8, ptr %588, i64 %630
  %632 = getelementptr i8, ptr %589, i64 %630
  %633 = load <4 x i8>, ptr %632, align 1, !tbaa !36
  store <4 x i8> %633, ptr %631, align 1, !tbaa !36
  %634 = add nuw i64 %630, 4
  %635 = icmp eq i64 %634, %624
  br i1 %635, label %636, label %629, !llvm.loop !67

636:                                              ; preds = %629
  %637 = icmp eq i64 %624, %594
  br i1 %637, label %691, label %638

638:                                              ; preds = %636, %620, %591
  %639 = phi ptr [ %588, %591 ], [ %604, %620 ], [ %625, %636 ]
  %640 = phi ptr [ %589, %591 ], [ %605, %620 ], [ %626, %636 ]
  %641 = phi i32 [ %584, %591 ], [ %607, %620 ], [ %628, %636 ]
  %642 = add i32 %641, -1
  %643 = and i32 %641, 7
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %656, label %645

645:                                              ; preds = %645, %638
  %646 = phi ptr [ %652, %645 ], [ %639, %638 ]
  %647 = phi ptr [ %653, %645 ], [ %640, %638 ]
  %648 = phi i32 [ %651, %645 ], [ %641, %638 ]
  %649 = phi i32 [ %654, %645 ], [ 0, %638 ]
  %650 = load i8, ptr %647, align 1, !tbaa !36
  store i8 %650, ptr %646, align 1, !tbaa !36
  %651 = add i32 %648, -1
  %652 = getelementptr inbounds nuw i8, ptr %646, i64 1
  %653 = getelementptr inbounds nuw i8, ptr %647, i64 1
  %654 = add i32 %649, 1
  %655 = icmp eq i32 %654, %643
  br i1 %655, label %656, label %645, !llvm.loop !68

656:                                              ; preds = %645, %638
  %657 = phi ptr [ %639, %638 ], [ %652, %645 ]
  %658 = phi ptr [ %640, %638 ], [ %653, %645 ]
  %659 = phi i32 [ %641, %638 ], [ %651, %645 ]
  %660 = icmp ult i32 %642, 7
  br i1 %660, label %691, label %661

661:                                              ; preds = %661, %656
  %662 = phi ptr [ %688, %661 ], [ %657, %656 ]
  %663 = phi ptr [ %689, %661 ], [ %658, %656 ]
  %664 = phi i32 [ %687, %661 ], [ %659, %656 ]
  %665 = load i8, ptr %663, align 1, !tbaa !36
  store i8 %665, ptr %662, align 1, !tbaa !36
  %666 = getelementptr inbounds nuw i8, ptr %662, i64 1
  %667 = getelementptr inbounds nuw i8, ptr %663, i64 1
  %668 = load i8, ptr %667, align 1, !tbaa !36
  store i8 %668, ptr %666, align 1, !tbaa !36
  %669 = getelementptr inbounds nuw i8, ptr %662, i64 2
  %670 = getelementptr inbounds nuw i8, ptr %663, i64 2
  %671 = load i8, ptr %670, align 1, !tbaa !36
  store i8 %671, ptr %669, align 1, !tbaa !36
  %672 = getelementptr inbounds nuw i8, ptr %662, i64 3
  %673 = getelementptr inbounds nuw i8, ptr %663, i64 3
  %674 = load i8, ptr %673, align 1, !tbaa !36
  store i8 %674, ptr %672, align 1, !tbaa !36
  %675 = getelementptr inbounds nuw i8, ptr %662, i64 4
  %676 = getelementptr inbounds nuw i8, ptr %663, i64 4
  %677 = load i8, ptr %676, align 1, !tbaa !36
  store i8 %677, ptr %675, align 1, !tbaa !36
  %678 = getelementptr inbounds nuw i8, ptr %662, i64 5
  %679 = getelementptr inbounds nuw i8, ptr %663, i64 5
  %680 = load i8, ptr %679, align 1, !tbaa !36
  store i8 %680, ptr %678, align 1, !tbaa !36
  %681 = getelementptr inbounds nuw i8, ptr %662, i64 6
  %682 = getelementptr inbounds nuw i8, ptr %663, i64 6
  %683 = load i8, ptr %682, align 1, !tbaa !36
  store i8 %683, ptr %681, align 1, !tbaa !36
  %684 = getelementptr inbounds nuw i8, ptr %662, i64 7
  %685 = getelementptr inbounds nuw i8, ptr %663, i64 7
  %686 = load i8, ptr %685, align 1, !tbaa !36
  store i8 %686, ptr %684, align 1, !tbaa !36
  %687 = add i32 %664, -8
  %688 = getelementptr inbounds nuw i8, ptr %662, i64 8
  %689 = getelementptr inbounds nuw i8, ptr %663, i64 8
  %690 = icmp eq i32 %687, 0
  br i1 %690, label %691, label %661, !llvm.loop !69

691:                                              ; preds = %661, %656, %636, %618
  %692 = load i32, ptr %491, align 8, !tbaa !34
  br label %693

693:                                              ; preds = %691, %587, %585
  %694 = phi i32 [ %692, %691 ], [ %584, %587 ], [ 0, %585 ]
  %695 = load i32, ptr %493, align 8, !tbaa !27
  %696 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %695, i32 %694), !nosanitize !20
  %697 = extractvalue { i32, i1 } %696, 1, !nosanitize !20
  br i1 %697, label %698, label %699, !prof !21, !nosanitize !20

698:                                              ; preds = %693
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

699:                                              ; preds = %693
  %700 = extractvalue { i32, i1 } %696, 0, !nosanitize !20
  %701 = load ptr, ptr %497, align 8, !tbaa !29
  %702 = zext i32 %694 to i64
  %703 = getelementptr inbounds nuw i8, ptr %701, i64 %702
  store i32 0, ptr %498, align 4, !tbaa !17
  %704 = tail call ptr @__errno_location() #17
  store i32 0, ptr %704, align 4, !tbaa !4
  br label %705

705:                                              ; preds = %724, %699
  %706 = phi i32 [ 0, %699 ], [ %725, %724 ]
  %707 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %700, i32 %706), !nosanitize !20
  %708 = extractvalue { i32, i1 } %707, 1, !nosanitize !20
  br i1 %708, label %709, label %710, !prof !21, !nosanitize !20

709:                                              ; preds = %705
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

710:                                              ; preds = %705
  %711 = extractvalue { i32, i1 } %707, 0, !nosanitize !20
  %712 = tail call i32 @llvm.umin.i32(i32 %711, i32 1073741824)
  %713 = load i32, ptr %499, align 4, !tbaa !46
  %714 = zext i32 %706 to i64
  %715 = getelementptr inbounds nuw i8, ptr %703, i64 %714
  %716 = zext nneg i32 %712 to i64
  %717 = tail call i64 @read(i32 noundef %713, ptr noundef %715, i64 noundef %716) #13
  %718 = trunc i64 %717 to i32
  %719 = icmp slt i32 %718, 1
  br i1 %719, label %727, label %720

720:                                              ; preds = %710
  %721 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %706, i32 %718), !nosanitize !20
  %722 = extractvalue { i32, i1 } %721, 1, !nosanitize !20
  br i1 %722, label %723, label %724, !prof !21, !nosanitize !20

723:                                              ; preds = %720
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

724:                                              ; preds = %720
  %725 = extractvalue { i32, i1 } %721, 0, !nosanitize !20
  %726 = icmp ult i32 %725, %700
  br i1 %726, label %705, label %740, !llvm.loop !47

727:                                              ; preds = %710
  %728 = icmp slt i32 %718, 0
  br i1 %728, label %729, label %736

729:                                              ; preds = %727
  %730 = load i32, ptr %704, align 4, !tbaa !4
  %731 = icmp eq i32 %730, 11
  br i1 %731, label %732, label %737

732:                                              ; preds = %729
  store i32 1, ptr %498, align 4, !tbaa !17
  %733 = icmp eq i32 %706, 0
  br i1 %733, label %734, label %740

734:                                              ; preds = %732
  %735 = load i32, ptr %704, align 4, !tbaa !4
  br label %737

736:                                              ; preds = %727
  store i32 1, ptr %490, align 8, !tbaa !24
  br label %740

737:                                              ; preds = %734, %729
  %738 = phi i32 [ %735, %734 ], [ %730, %729 ]
  %739 = tail call ptr @strerror(i32 noundef %738) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %739) #13
  br label %942

740:                                              ; preds = %736, %732, %724
  %741 = phi i32 [ %706, %732 ], [ %706, %736 ], [ %725, %724 ]
  %742 = load i32, ptr %491, align 8, !tbaa !34
  %743 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %742, i32 %741), !nosanitize !20
  %744 = extractvalue { i32, i1 } %743, 1, !nosanitize !20
  br i1 %744, label %745, label %746, !prof !21, !nosanitize !20

745:                                              ; preds = %740
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

746:                                              ; preds = %740
  %747 = extractvalue { i32, i1 } %743, 0, !nosanitize !20
  store i32 %747, ptr %491, align 8, !tbaa !34
  %748 = load ptr, ptr %497, align 8, !tbaa !29
  store ptr %748, ptr %496, align 8, !tbaa !35
  br label %749

749:                                              ; preds = %746, %581
  %750 = phi i32 [ %747, %746 ], [ %584, %581 ]
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %781, label %752

752:                                              ; preds = %749
  %753 = load i32, ptr %498, align 4, !tbaa !17
  %754 = icmp ne i32 %753, 0
  %755 = icmp ult i32 %750, 4
  %756 = and i1 %755, %754
  br i1 %756, label %781, label %757

757:                                              ; preds = %752
  %758 = icmp ugt i32 %750, 3
  %759 = load ptr, ptr %496, align 8, !tbaa !35
  br i1 %758, label %760, label %777

760:                                              ; preds = %757
  %761 = load i8, ptr %759, align 1, !tbaa !36
  %762 = icmp eq i8 %761, 31
  br i1 %762, label %763, label %777

763:                                              ; preds = %760
  %764 = getelementptr inbounds nuw i8, ptr %759, i64 1
  %765 = load i8, ptr %764, align 1, !tbaa !36
  %766 = icmp eq i8 %765, -117
  br i1 %766, label %767, label %777

767:                                              ; preds = %763
  %768 = getelementptr inbounds nuw i8, ptr %759, i64 2
  %769 = load i8, ptr %768, align 1, !tbaa !36
  %770 = icmp eq i8 %769, 8
  br i1 %770, label %771, label %777

771:                                              ; preds = %767
  %772 = getelementptr inbounds nuw i8, ptr %759, i64 3
  %773 = load i8, ptr %772, align 1, !tbaa !36
  %774 = icmp ult i8 %773, 32
  br i1 %774, label %775, label %777

775:                                              ; preds = %771
  %776 = tail call i32 @inflateReset(ptr noundef nonnull %496) #13
  store i32 2, ptr %492, align 8, !tbaa !26
  store i32 1, ptr %500, align 4, !tbaa !33
  store i32 0, ptr %506, align 8, !tbaa !32
  br label %929

777:                                              ; preds = %771, %767, %763, %760, %757
  %778 = load ptr, ptr %503, align 8, !tbaa !30
  store ptr %778, ptr %489, align 8, !tbaa !22
  %779 = zext i32 %750 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %778, ptr align 1 %759, i64 %779, i1 false)
  %780 = load i32, ptr %491, align 8, !tbaa !34
  store i32 %780, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %491, align 8, !tbaa !34
  store i32 1, ptr %492, align 8, !tbaa !26
  br label %931

781:                                              ; preds = %752, %749, %574
  %782 = load i32, ptr %492, align 8, !tbaa !26
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %1109, label %929

784:                                              ; preds = %544
  %785 = load ptr, ptr %503, align 8, !tbaa !30
  %786 = load i32, ptr %493, align 8, !tbaa !27
  %787 = shl i32 %786, 1
  store i32 0, ptr %498, align 4, !tbaa !17
  %788 = tail call ptr @__errno_location() #17
  store i32 0, ptr %788, align 4, !tbaa !4
  store i32 0, ptr %3, align 8, !tbaa !4
  br label %789

789:                                              ; preds = %809, %784
  %790 = phi i32 [ %810, %809 ], [ 0, %784 ]
  %791 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %787, i32 %790), !nosanitize !20
  %792 = extractvalue { i32, i1 } %791, 1, !nosanitize !20
  br i1 %792, label %793, label %794, !prof !21, !nosanitize !20

793:                                              ; preds = %789
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

794:                                              ; preds = %789
  %795 = extractvalue { i32, i1 } %791, 0, !nosanitize !20
  %796 = tail call i32 @llvm.umin.i32(i32 %795, i32 1073741824)
  %797 = load i32, ptr %499, align 4, !tbaa !46
  %798 = zext i32 %790 to i64
  %799 = getelementptr inbounds nuw i8, ptr %785, i64 %798
  %800 = zext nneg i32 %796 to i64
  %801 = tail call i64 @read(i32 noundef %797, ptr noundef %799, i64 noundef %800) #13
  %802 = trunc i64 %801 to i32
  %803 = icmp slt i32 %802, 1
  br i1 %803, label %812, label %804

804:                                              ; preds = %794
  %805 = load i32, ptr %3, align 4, !tbaa !4
  %806 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %805, i32 %802), !nosanitize !20
  %807 = extractvalue { i32, i1 } %806, 1, !nosanitize !20
  br i1 %807, label %808, label %809, !prof !21, !nosanitize !20

808:                                              ; preds = %804
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

809:                                              ; preds = %804
  %810 = extractvalue { i32, i1 } %806, 0, !nosanitize !20
  store i32 %810, ptr %3, align 4, !tbaa !4
  %811 = icmp ult i32 %810, %787
  br i1 %811, label %789, label %826, !llvm.loop !47

812:                                              ; preds = %794
  %813 = icmp slt i32 %802, 0
  br i1 %813, label %814, label %822

814:                                              ; preds = %812
  %815 = load i32, ptr %788, align 4, !tbaa !4
  %816 = icmp eq i32 %815, 11
  br i1 %816, label %817, label %823

817:                                              ; preds = %814
  store i32 1, ptr %498, align 4, !tbaa !17
  %818 = load i32, ptr %3, align 4, !tbaa !4
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %820, label %826

820:                                              ; preds = %817
  %821 = load i32, ptr %788, align 4, !tbaa !4
  br label %823

822:                                              ; preds = %812
  store i32 1, ptr %490, align 8, !tbaa !24
  br label %826

823:                                              ; preds = %820, %814
  %824 = phi i32 [ %821, %820 ], [ %815, %814 ]
  %825 = tail call ptr @strerror(i32 noundef %824) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %825) #13
  br label %942

826:                                              ; preds = %822, %817, %809
  %827 = load ptr, ptr %503, align 8, !tbaa !30
  store ptr %827, ptr %489, align 8, !tbaa !22
  br label %1109

828:                                              ; preds = %544
  %829 = load i32, ptr %493, align 8, !tbaa !27
  %830 = shl i32 %829, 1
  store i32 %830, ptr %494, align 8, !tbaa !48
  %831 = load ptr, ptr %503, align 8, !tbaa !30
  store ptr %831, ptr %495, align 8, !tbaa !49
  br label %832

832:                                              ; preds = %911, %828
  %833 = phi i32 [ 0, %828 ], [ %896, %911 ]
  %834 = load i32, ptr %491, align 8, !tbaa !34
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %836, label %895

836:                                              ; preds = %832
  %837 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %837, label %915 [
    i32 0, label %838
    i32 -5, label %838
  ]

838:                                              ; preds = %836, %836
  %839 = load i32, ptr %490, align 8, !tbaa !24
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %841, label %891

841:                                              ; preds = %838
  %842 = load i32, ptr %493, align 8, !tbaa !27
  %843 = load ptr, ptr %497, align 8, !tbaa !29
  store i32 0, ptr %498, align 4, !tbaa !17
  %844 = tail call ptr @__errno_location() #17
  store i32 0, ptr %844, align 4, !tbaa !4
  br label %845

845:                                              ; preds = %864, %841
  %846 = phi i32 [ 0, %841 ], [ %865, %864 ]
  %847 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %842, i32 %846), !nosanitize !20
  %848 = extractvalue { i32, i1 } %847, 1, !nosanitize !20
  br i1 %848, label %849, label %850, !prof !21, !nosanitize !20

849:                                              ; preds = %845
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

850:                                              ; preds = %845
  %851 = extractvalue { i32, i1 } %847, 0, !nosanitize !20
  %852 = tail call i32 @llvm.umin.i32(i32 %851, i32 1073741824)
  %853 = load i32, ptr %499, align 4, !tbaa !46
  %854 = zext i32 %846 to i64
  %855 = getelementptr inbounds nuw i8, ptr %843, i64 %854
  %856 = zext nneg i32 %852 to i64
  %857 = tail call i64 @read(i32 noundef %853, ptr noundef %855, i64 noundef %856) #13
  %858 = trunc i64 %857 to i32
  %859 = icmp slt i32 %858, 1
  br i1 %859, label %867, label %860

860:                                              ; preds = %850
  %861 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %846, i32 %858), !nosanitize !20
  %862 = extractvalue { i32, i1 } %861, 1, !nosanitize !20
  br i1 %862, label %863, label %864, !prof !21, !nosanitize !20

863:                                              ; preds = %860
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

864:                                              ; preds = %860
  %865 = extractvalue { i32, i1 } %861, 0, !nosanitize !20
  %866 = icmp ult i32 %865, %842
  br i1 %866, label %845, label %881, !llvm.loop !47

867:                                              ; preds = %850
  %868 = icmp slt i32 %858, 0
  br i1 %868, label %869, label %876

869:                                              ; preds = %867
  %870 = load i32, ptr %844, align 4, !tbaa !4
  %871 = icmp eq i32 %870, 11
  br i1 %871, label %872, label %877

872:                                              ; preds = %869
  store i32 1, ptr %498, align 4, !tbaa !17
  %873 = icmp eq i32 %846, 0
  br i1 %873, label %874, label %881

874:                                              ; preds = %872
  %875 = load i32, ptr %844, align 4, !tbaa !4
  br label %877

876:                                              ; preds = %867
  store i32 1, ptr %490, align 8, !tbaa !24
  br label %881

877:                                              ; preds = %874, %869
  %878 = phi i32 [ %875, %874 ], [ %870, %869 ]
  %879 = tail call ptr @strerror(i32 noundef %878) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %879) #13
  %880 = load i32, ptr %11, align 8, !tbaa !16
  br label %915

881:                                              ; preds = %876, %872, %864
  %882 = phi i32 [ %846, %872 ], [ %846, %876 ], [ %865, %864 ]
  %883 = load i32, ptr %491, align 8, !tbaa !34
  %884 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %883, i32 %882), !nosanitize !20
  %885 = extractvalue { i32, i1 } %884, 1, !nosanitize !20
  br i1 %885, label %886, label %887, !prof !21, !nosanitize !20

886:                                              ; preds = %881
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

887:                                              ; preds = %881
  %888 = extractvalue { i32, i1 } %884, 0, !nosanitize !20
  store i32 %888, ptr %491, align 8, !tbaa !34
  %889 = load ptr, ptr %497, align 8, !tbaa !29
  store ptr %889, ptr %496, align 8, !tbaa !35
  %890 = icmp eq i32 %888, 0
  br i1 %890, label %891, label %895

891:                                              ; preds = %887, %838
  %892 = load i32, ptr %498, align 4, !tbaa !17
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %894, label %915

894:                                              ; preds = %891
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %915

895:                                              ; preds = %887, %832
  %896 = tail call i32 @inflate(ptr noundef nonnull %496, i32 noundef 0) #13
  %897 = load i32, ptr %494, align 8, !tbaa !48
  %898 = icmp ult i32 %897, %830
  br i1 %898, label %899, label %900

899:                                              ; preds = %895
  store i32 0, ptr %500, align 4, !tbaa !33
  br label %900

900:                                              ; preds = %899, %895
  switch i32 %896, label %911 [
    i32 -2, label %901
    i32 2, label %901
    i32 -4, label %902
    i32 -3, label %903
  ]

901:                                              ; preds = %900, %900
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %915

902:                                              ; preds = %900
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %915

903:                                              ; preds = %900
  %904 = load i32, ptr %500, align 4, !tbaa !33
  %905 = icmp eq i32 %904, 1
  br i1 %905, label %906, label %907

906:                                              ; preds = %903
  store i32 0, ptr %491, align 8, !tbaa !34
  store i32 1, ptr %490, align 8, !tbaa !24
  store i32 0, ptr %492, align 8, !tbaa !26
  br label %915

907:                                              ; preds = %903
  %908 = load ptr, ptr %501, align 8, !tbaa !50
  %909 = icmp eq ptr %908, null
  %910 = select i1 %909, ptr @.str.6, ptr %908
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %910) #13
  br label %915

911:                                              ; preds = %900
  %912 = icmp ne i32 %897, 0
  %913 = icmp ne i32 %896, 1
  %914 = select i1 %912, i1 %913, i1 false
  br i1 %914, label %832, label %915, !llvm.loop !51

915:                                              ; preds = %911, %907, %906, %902, %901, %894, %891, %877, %836
  %916 = phi i32 [ %880, %877 ], [ %833, %891 ], [ %833, %894 ], [ %896, %901 ], [ -4, %902 ], [ 0, %906 ], [ -3, %907 ], [ %837, %836 ], [ %896, %911 ]
  %917 = load i32, ptr %494, align 8, !tbaa !48
  %918 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %830, i32 %917), !nosanitize !20
  %919 = extractvalue { i32, i1 } %918, 1, !nosanitize !20
  br i1 %919, label %920, label %921, !prof !21, !nosanitize !20

920:                                              ; preds = %915
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

921:                                              ; preds = %915
  %922 = extractvalue { i32, i1 } %918, 0, !nosanitize !20
  store i32 %922, ptr %3, align 8, !tbaa !19
  %923 = load ptr, ptr %495, align 8, !tbaa !49
  %924 = zext i32 %922 to i64
  %925 = sub nsw i64 0, %924
  %926 = getelementptr inbounds i8, ptr %923, i64 %925
  store ptr %926, ptr %489, align 8, !tbaa !22
  switch i32 %916, label %942 [
    i32 1, label %927
    i32 0, label %929
  ]

927:                                              ; preds = %921
  store i32 0, ptr %500, align 4, !tbaa !33
  store i32 0, ptr %492, align 8, !tbaa !26
  br label %929

928:                                              ; preds = %544
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %942

929:                                              ; preds = %927, %921, %781, %775
  %930 = load i32, ptr %3, align 8, !tbaa !19
  br label %931

931:                                              ; preds = %929, %777
  %932 = phi i32 [ %930, %929 ], [ %780, %777 ]
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %934, label %1109

934:                                              ; preds = %931
  %935 = load i32, ptr %490, align 8, !tbaa !24
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %940, label %937

937:                                              ; preds = %934
  %938 = load i32, ptr %491, align 8, !tbaa !34
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %1109, label %940

940:                                              ; preds = %937, %934
  %941 = load i32, ptr %492, align 8, !tbaa !26
  br label %544, !llvm.loop !52

942:                                              ; preds = %928, %921, %823, %737, %579, %565, %560
  %943 = load i32, ptr %3, align 8, !tbaa !19
  %944 = icmp eq i32 %943, 0
  %945 = sext i1 %944 to i32
  br label %1109

946:                                              ; preds = %539
  %947 = icmp eq i32 %537, 1
  br i1 %947, label %948, label %985

948:                                              ; preds = %946
  store i32 0, ptr %498, align 4, !tbaa !17
  %949 = tail call ptr @__errno_location() #17
  store i32 0, ptr %949, align 4, !tbaa !4
  br label %950

950:                                              ; preds = %969, %948
  %951 = phi i32 [ 0, %948 ], [ %970, %969 ]
  %952 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %512, i32 %951), !nosanitize !20
  %953 = extractvalue { i32, i1 } %952, 1, !nosanitize !20
  br i1 %953, label %954, label %955, !prof !21, !nosanitize !20

954:                                              ; preds = %950
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

955:                                              ; preds = %950
  %956 = extractvalue { i32, i1 } %952, 0, !nosanitize !20
  %957 = tail call i32 @llvm.umin.i32(i32 %956, i32 1073741824)
  %958 = load i32, ptr %499, align 4, !tbaa !46
  %959 = zext i32 %951 to i64
  %960 = getelementptr inbounds nuw i8, ptr %508, i64 %959
  %961 = zext nneg i32 %957 to i64
  %962 = tail call i64 @read(i32 noundef %958, ptr noundef %960, i64 noundef %961) #13
  %963 = trunc i64 %962 to i32
  %964 = icmp slt i32 %963, 1
  br i1 %964, label %972, label %965

965:                                              ; preds = %955
  %966 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %951, i32 %963), !nosanitize !20
  %967 = extractvalue { i32, i1 } %966, 1, !nosanitize !20
  br i1 %967, label %968, label %969, !prof !21, !nosanitize !20

968:                                              ; preds = %965
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

969:                                              ; preds = %965
  %970 = extractvalue { i32, i1 } %966, 0, !nosanitize !20
  %971 = icmp ult i32 %970, %512
  br i1 %971, label %950, label %1088, !llvm.loop !47

972:                                              ; preds = %955
  %973 = icmp slt i32 %963, 0
  br i1 %973, label %974, label %984

974:                                              ; preds = %972
  %975 = load i32, ptr %949, align 4, !tbaa !4
  %976 = icmp eq i32 %975, 11
  br i1 %976, label %977, label %981

977:                                              ; preds = %974
  store i32 1, ptr %498, align 4, !tbaa !17
  %978 = icmp eq i32 %951, 0
  br i1 %978, label %979, label %1090

979:                                              ; preds = %977
  %980 = load i32, ptr %949, align 4, !tbaa !4
  br label %981

981:                                              ; preds = %979, %974
  %982 = phi i32 [ %980, %979 ], [ %975, %974 ]
  %983 = tail call ptr @strerror(i32 noundef %982) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %983) #13
  br label %1090

984:                                              ; preds = %972
  store i32 1, ptr %490, align 8, !tbaa !24
  br label %1090

985:                                              ; preds = %946
  store i32 %512, ptr %494, align 8, !tbaa !58
  store ptr %508, ptr %495, align 8, !tbaa !59
  br label %986

986:                                              ; preds = %1065, %985
  %987 = phi i32 [ 0, %985 ], [ %1050, %1065 ]
  %988 = load i32, ptr %491, align 8, !tbaa !34
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %990, label %1049

990:                                              ; preds = %986
  %991 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %991, label %1069 [
    i32 0, label %992
    i32 -5, label %992
  ]

992:                                              ; preds = %990, %990
  %993 = load i32, ptr %490, align 8, !tbaa !24
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %995, label %1045

995:                                              ; preds = %992
  %996 = load i32, ptr %493, align 8, !tbaa !27
  %997 = load ptr, ptr %497, align 8, !tbaa !29
  store i32 0, ptr %498, align 4, !tbaa !17
  %998 = tail call ptr @__errno_location() #17
  store i32 0, ptr %998, align 4, !tbaa !4
  br label %999

999:                                              ; preds = %1018, %995
  %1000 = phi i32 [ 0, %995 ], [ %1019, %1018 ]
  %1001 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %996, i32 %1000), !nosanitize !20
  %1002 = extractvalue { i32, i1 } %1001, 1, !nosanitize !20
  br i1 %1002, label %1003, label %1004, !prof !21, !nosanitize !20

1003:                                             ; preds = %999
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1004:                                             ; preds = %999
  %1005 = extractvalue { i32, i1 } %1001, 0, !nosanitize !20
  %1006 = tail call i32 @llvm.umin.i32(i32 %1005, i32 1073741824)
  %1007 = load i32, ptr %499, align 4, !tbaa !46
  %1008 = zext i32 %1000 to i64
  %1009 = getelementptr inbounds nuw i8, ptr %997, i64 %1008
  %1010 = zext nneg i32 %1006 to i64
  %1011 = tail call i64 @read(i32 noundef %1007, ptr noundef %1009, i64 noundef %1010) #13
  %1012 = trunc i64 %1011 to i32
  %1013 = icmp slt i32 %1012, 1
  br i1 %1013, label %1021, label %1014

1014:                                             ; preds = %1004
  %1015 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1000, i32 %1012), !nosanitize !20
  %1016 = extractvalue { i32, i1 } %1015, 1, !nosanitize !20
  br i1 %1016, label %1017, label %1018, !prof !21, !nosanitize !20

1017:                                             ; preds = %1014
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1018:                                             ; preds = %1014
  %1019 = extractvalue { i32, i1 } %1015, 0, !nosanitize !20
  %1020 = icmp ult i32 %1019, %996
  br i1 %1020, label %999, label %1035, !llvm.loop !47

1021:                                             ; preds = %1004
  %1022 = icmp slt i32 %1012, 0
  br i1 %1022, label %1023, label %1030

1023:                                             ; preds = %1021
  %1024 = load i32, ptr %998, align 4, !tbaa !4
  %1025 = icmp eq i32 %1024, 11
  br i1 %1025, label %1026, label %1031

1026:                                             ; preds = %1023
  store i32 1, ptr %498, align 4, !tbaa !17
  %1027 = icmp eq i32 %1000, 0
  br i1 %1027, label %1028, label %1035

1028:                                             ; preds = %1026
  %1029 = load i32, ptr %998, align 4, !tbaa !4
  br label %1031

1030:                                             ; preds = %1021
  store i32 1, ptr %490, align 8, !tbaa !24
  br label %1035

1031:                                             ; preds = %1028, %1023
  %1032 = phi i32 [ %1029, %1028 ], [ %1024, %1023 ]
  %1033 = tail call ptr @strerror(i32 noundef %1032) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %1033) #13
  %1034 = load i32, ptr %11, align 8, !tbaa !16
  br label %1069

1035:                                             ; preds = %1030, %1026, %1018
  %1036 = phi i32 [ %1000, %1026 ], [ %1000, %1030 ], [ %1019, %1018 ]
  %1037 = load i32, ptr %491, align 8, !tbaa !34
  %1038 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1037, i32 %1036), !nosanitize !20
  %1039 = extractvalue { i32, i1 } %1038, 1, !nosanitize !20
  br i1 %1039, label %1040, label %1041, !prof !21, !nosanitize !20

1040:                                             ; preds = %1035
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1041:                                             ; preds = %1035
  %1042 = extractvalue { i32, i1 } %1038, 0, !nosanitize !20
  store i32 %1042, ptr %491, align 8, !tbaa !34
  %1043 = load ptr, ptr %497, align 8, !tbaa !29
  store ptr %1043, ptr %496, align 8, !tbaa !35
  %1044 = icmp eq i32 %1042, 0
  br i1 %1044, label %1045, label %1049

1045:                                             ; preds = %1041, %992
  %1046 = load i32, ptr %498, align 4, !tbaa !17
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1048, label %1069

1048:                                             ; preds = %1045
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %1069

1049:                                             ; preds = %1041, %986
  %1050 = tail call i32 @inflate(ptr noundef nonnull %496, i32 noundef 0) #13
  %1051 = load i32, ptr %494, align 8, !tbaa !48
  %1052 = icmp ult i32 %1051, %512
  br i1 %1052, label %1053, label %1054

1053:                                             ; preds = %1049
  store i32 0, ptr %500, align 4, !tbaa !33
  br label %1054

1054:                                             ; preds = %1053, %1049
  switch i32 %1050, label %1065 [
    i32 -2, label %1055
    i32 2, label %1055
    i32 -4, label %1056
    i32 -3, label %1057
  ]

1055:                                             ; preds = %1054, %1054
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %1069

1056:                                             ; preds = %1054
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1069

1057:                                             ; preds = %1054
  %1058 = load i32, ptr %500, align 4, !tbaa !33
  %1059 = icmp eq i32 %1058, 1
  br i1 %1059, label %1060, label %1061

1060:                                             ; preds = %1057
  store i32 0, ptr %491, align 8, !tbaa !34
  store i32 1, ptr %490, align 8, !tbaa !24
  store i32 0, ptr %492, align 8, !tbaa !26
  br label %1069

1061:                                             ; preds = %1057
  %1062 = load ptr, ptr %501, align 8, !tbaa !50
  %1063 = icmp eq ptr %1062, null
  %1064 = select i1 %1063, ptr @.str.6, ptr %1062
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %1064) #13
  br label %1069

1065:                                             ; preds = %1054
  %1066 = icmp ne i32 %1051, 0
  %1067 = icmp ne i32 %1050, 1
  %1068 = select i1 %1066, i1 %1067, i1 false
  br i1 %1068, label %986, label %1069, !llvm.loop !51

1069:                                             ; preds = %1065, %1061, %1060, %1056, %1055, %1048, %1045, %1031, %990
  %1070 = phi i32 [ %1034, %1031 ], [ %987, %1045 ], [ %987, %1048 ], [ %1050, %1055 ], [ -4, %1056 ], [ 0, %1060 ], [ -3, %1061 ], [ %1050, %1065 ], [ %991, %990 ]
  %1071 = load i32, ptr %494, align 8, !tbaa !48
  %1072 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %512, i32 %1071), !nosanitize !20
  %1073 = extractvalue { i32, i1 } %1072, 1, !nosanitize !20
  br i1 %1073, label %1074, label %1075, !prof !21, !nosanitize !20

1074:                                             ; preds = %1069
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1075:                                             ; preds = %1069
  %1076 = extractvalue { i32, i1 } %1072, 0, !nosanitize !20
  %1077 = load ptr, ptr %495, align 8, !tbaa !49
  %1078 = zext i32 %1076 to i64
  %1079 = sub nsw i64 0, %1078
  %1080 = getelementptr inbounds i8, ptr %1077, i64 %1079
  store ptr %1080, ptr %489, align 8, !tbaa !22
  %1081 = icmp eq i32 %1070, 1
  br i1 %1081, label %1082, label %1083

1082:                                             ; preds = %1075
  store i32 0, ptr %500, align 4, !tbaa !33
  store i32 0, ptr %492, align 8, !tbaa !26
  br label %1086

1083:                                             ; preds = %1075
  %1084 = icmp ne i32 %1070, 0
  %1085 = sext i1 %1084 to i32
  br label %1086

1086:                                             ; preds = %1083, %1082
  %1087 = phi i32 [ 0, %1082 ], [ %1085, %1083 ]
  store i32 0, ptr %3, align 8, !tbaa !19
  br label %1090

1088:                                             ; preds = %969
  %1089 = zext i32 %970 to i64
  br label %1090

1090:                                             ; preds = %1088, %1086, %984, %981, %977, %525
  %1091 = phi i64 [ %1089, %1088 ], [ %959, %984 ], [ %959, %981 ], [ %959, %977 ], [ %518, %525 ], [ %1078, %1086 ]
  %1092 = phi i32 [ 0, %1088 ], [ 0, %984 ], [ -1, %981 ], [ 0, %977 ], [ %529, %525 ], [ %1087, %1086 ]
  %1093 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %509, i64 %1091), !nosanitize !20
  %1094 = extractvalue { i64, i1 } %1093, 0, !nosanitize !20
  %1095 = extractvalue { i64, i1 } %1093, 1, !nosanitize !20
  br i1 %1095, label %1096, label %1097, !prof !21, !nosanitize !20

1096:                                             ; preds = %1090
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1097:                                             ; preds = %1090
  %1098 = getelementptr inbounds nuw i8, ptr %508, i64 %1091
  %1099 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %510, i64 %1091), !nosanitize !20
  %1100 = extractvalue { i64, i1 } %1099, 0, !nosanitize !20
  %1101 = extractvalue { i64, i1 } %1099, 1, !nosanitize !20
  br i1 %1101, label %1102, label %1103, !prof !21, !nosanitize !20

1102:                                             ; preds = %1103, %1097
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1103:                                             ; preds = %1097
  %1104 = load i64, ptr %502, align 8, !tbaa !23
  %1105 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1104, i64 %1091), !nosanitize !20
  %1106 = extractvalue { i64, i1 } %1105, 1, !nosanitize !20
  br i1 %1106, label %1102, label %1107, !prof !21, !nosanitize !20

1107:                                             ; preds = %1103
  %1108 = extractvalue { i64, i1 } %1105, 0, !nosanitize !20
  store i64 %1108, ptr %502, align 8, !tbaa !23
  br label %1109

1109:                                             ; preds = %1107, %942, %937, %931, %826, %781
  %1110 = phi ptr [ %1098, %1107 ], [ %508, %942 ], [ %508, %826 ], [ %508, %781 ], [ %508, %931 ], [ %508, %937 ]
  %1111 = phi i64 [ %1094, %1107 ], [ %509, %942 ], [ %509, %826 ], [ %509, %781 ], [ %509, %931 ], [ %509, %937 ]
  %1112 = phi i64 [ %1100, %1107 ], [ %510, %942 ], [ %510, %826 ], [ %510, %781 ], [ %510, %931 ], [ %510, %937 ]
  %1113 = phi i32 [ %1092, %1107 ], [ %945, %942 ], [ 0, %826 ], [ 0, %781 ], [ 0, %931 ], [ 0, %937 ]
  %1114 = icmp eq i64 %1111, 0
  br i1 %1114, label %1123, label %1115

1115:                                             ; preds = %1109
  %1116 = icmp eq i32 %1113, 0
  br i1 %1116, label %507, label %1117, !llvm.loop !60

1117:                                             ; preds = %1115
  %1118 = load i32, ptr %490, align 8, !tbaa !24
  %1119 = icmp eq i32 %1118, 0
  br i1 %1119, label %1123, label %1120

1120:                                             ; preds = %1117, %533
  %1121 = phi i64 [ %1112, %1117 ], [ %510, %533 ]
  %1122 = getelementptr inbounds nuw i8, ptr %3, i64 92
  store i32 1, ptr %1122, align 4, !tbaa !61
  br label %1123

1123:                                             ; preds = %1120, %1117, %1109, %470, %463, %365, %279, %121, %107, %102
  %1124 = phi i64 [ 0, %102 ], [ 0, %279 ], [ %1121, %1120 ], [ %1112, %1117 ], [ 0, %107 ], [ %1112, %1109 ], [ 0, %470 ], [ 0, %365 ], [ 0, %463 ], [ 0, %121 ]
  %1125 = udiv i64 %1124, %1
  br label %1126

1126:                                             ; preds = %1123, %28, %27, %13, %6, %4
  %1127 = phi i64 [ 0, %6 ], [ 0, %4 ], [ 0, %27 ], [ 0, %13 ], [ %1125, %1123 ], [ 0, %28 ]
  ret i64 %1127
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzgetc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1131, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1131

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
  br i1 %14, label %1131, label %15

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
  br label %1131

32:                                               ; preds = %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %34 = load i64, ptr %33, align 8, !tbaa !18
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %490, label %36

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

55:                                               ; preds = %487, %36
  %56 = phi i64 [ %488, %487 ], [ %34, %36 ]
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
  br label %487

81:                                               ; preds = %55
  %82 = load i32, ptr %39, align 8, !tbaa !24
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %40, align 8, !tbaa !25
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %490, label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %484, %87
  %89 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %89, label %472 [
    i32 0, label %90
    i32 1, label %328
    i32 2, label %372
  ]

90:                                               ; preds = %88
  %91 = load i32, ptr %42, align 8, !tbaa !27
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %90
  %94 = load i32, ptr %52, align 4, !tbaa !28
  %95 = zext i32 %94 to i64
  %96 = tail call noalias ptr @malloc(i64 noundef %95) #16
  store ptr %96, ptr %47, align 8, !tbaa !29
  %97 = load i32, ptr %52, align 4, !tbaa !28
  %98 = shl i32 %97, 1
  %99 = zext i32 %98 to i64
  %100 = tail call noalias ptr @malloc(i64 noundef %99) #16
  store ptr %100, ptr %44, align 8, !tbaa !30
  %101 = icmp eq ptr %96, null
  %102 = icmp eq ptr %100, null
  %103 = or i1 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  tail call void @free(ptr noundef %100) #13
  tail call void @free(ptr noundef %96) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1130

105:                                              ; preds = %93
  %106 = load i32, ptr %52, align 4, !tbaa !28
  store i32 %106, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %40, align 8, !tbaa !25
  store ptr null, ptr %46, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  %107 = tail call i32 @inflateInit2_(ptr noundef nonnull %46, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = load ptr, ptr %44, align 8, !tbaa !30
  tail call void @free(ptr noundef %110) #13
  %111 = load ptr, ptr %47, align 8, !tbaa !29
  tail call void @free(ptr noundef %111) #13
  store i32 0, ptr %42, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1130

112:                                              ; preds = %105, %90
  %113 = load i32, ptr %54, align 8, !tbaa !32
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i32, ptr %50, align 4, !tbaa !33
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115, %112
  %119 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  %120 = load i32, ptr %50, align 4, !tbaa !33
  %121 = icmp ne i32 %120, -1
  %122 = zext i1 %121 to i32
  store i32 %122, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %54, align 8, !tbaa !32
  br label %325

123:                                              ; preds = %115
  %124 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %124, label %1130 [
    i32 0, label %125
    i32 -5, label %125
  ]

125:                                              ; preds = %123, %123
  %126 = load i32, ptr %39, align 8, !tbaa !24
  %127 = icmp eq i32 %126, 0
  %128 = load i32, ptr %40, align 8, !tbaa !34
  br i1 %127, label %129, label %293

129:                                              ; preds = %125
  %130 = icmp eq i32 %128, 0
  br i1 %130, label %237, label %131

131:                                              ; preds = %129
  %132 = load ptr, ptr %47, align 8, !tbaa !29
  %133 = load ptr, ptr %46, align 8, !tbaa !35
  %134 = icmp eq ptr %133, %132
  br i1 %134, label %237, label %135

135:                                              ; preds = %131
  %136 = ptrtoaddr ptr %133 to i64
  %137 = ptrtoaddr ptr %132 to i64
  %138 = zext i32 %128 to i64
  %139 = icmp ult i32 %128, 4
  %140 = sub i64 %137, %136
  %141 = icmp ult i64 %140, 32
  %142 = or i1 %139, %141
  br i1 %142, label %182, label %143

143:                                              ; preds = %135
  %144 = icmp ult i32 %128, 32
  br i1 %144, label %166, label %145

145:                                              ; preds = %143
  %146 = and i64 %138, 28
  %147 = and i64 %138, 4294967264
  %148 = getelementptr i8, ptr %132, i64 %147
  %149 = getelementptr i8, ptr %133, i64 %147
  %150 = trunc nuw i64 %147 to i32
  %151 = sub i32 %128, %150
  br label %152

152:                                              ; preds = %152, %145
  %153 = phi i64 [ 0, %145 ], [ %160, %152 ]
  %154 = getelementptr i8, ptr %132, i64 %153
  %155 = getelementptr i8, ptr %133, i64 %153
  %156 = getelementptr i8, ptr %155, i64 16
  %157 = load <16 x i8>, ptr %155, align 1, !tbaa !36
  %158 = load <16 x i8>, ptr %156, align 1, !tbaa !36
  %159 = getelementptr i8, ptr %154, i64 16
  store <16 x i8> %157, ptr %154, align 1, !tbaa !36
  store <16 x i8> %158, ptr %159, align 1, !tbaa !36
  %160 = add nuw i64 %153, 32
  %161 = icmp eq i64 %160, %147
  br i1 %161, label %162, label %152, !llvm.loop !70

162:                                              ; preds = %152
  %163 = icmp eq i64 %147, %138
  br i1 %163, label %235, label %164

164:                                              ; preds = %162
  %165 = icmp eq i64 %146, 0
  br i1 %165, label %182, label %166, !prof !41

166:                                              ; preds = %164, %143
  %167 = phi i64 [ %147, %164 ], [ 0, %143 ]
  %168 = and i64 %138, 4294967292
  %169 = getelementptr i8, ptr %132, i64 %168
  %170 = getelementptr i8, ptr %133, i64 %168
  %171 = trunc nuw i64 %168 to i32
  %172 = sub i32 %128, %171
  br label %173

173:                                              ; preds = %173, %166
  %174 = phi i64 [ %167, %166 ], [ %178, %173 ]
  %175 = getelementptr i8, ptr %132, i64 %174
  %176 = getelementptr i8, ptr %133, i64 %174
  %177 = load <4 x i8>, ptr %176, align 1, !tbaa !36
  store <4 x i8> %177, ptr %175, align 1, !tbaa !36
  %178 = add nuw i64 %174, 4
  %179 = icmp eq i64 %178, %168
  br i1 %179, label %180, label %173, !llvm.loop !71

180:                                              ; preds = %173
  %181 = icmp eq i64 %168, %138
  br i1 %181, label %235, label %182

182:                                              ; preds = %180, %164, %135
  %183 = phi ptr [ %132, %135 ], [ %148, %164 ], [ %169, %180 ]
  %184 = phi ptr [ %133, %135 ], [ %149, %164 ], [ %170, %180 ]
  %185 = phi i32 [ %128, %135 ], [ %151, %164 ], [ %172, %180 ]
  %186 = add i32 %185, -1
  %187 = and i32 %185, 7
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %200, label %189

189:                                              ; preds = %189, %182
  %190 = phi ptr [ %196, %189 ], [ %183, %182 ]
  %191 = phi ptr [ %197, %189 ], [ %184, %182 ]
  %192 = phi i32 [ %195, %189 ], [ %185, %182 ]
  %193 = phi i32 [ %198, %189 ], [ 0, %182 ]
  %194 = load i8, ptr %191, align 1, !tbaa !36
  store i8 %194, ptr %190, align 1, !tbaa !36
  %195 = add i32 %192, -1
  %196 = getelementptr inbounds nuw i8, ptr %190, i64 1
  %197 = getelementptr inbounds nuw i8, ptr %191, i64 1
  %198 = add i32 %193, 1
  %199 = icmp eq i32 %198, %187
  br i1 %199, label %200, label %189, !llvm.loop !72

200:                                              ; preds = %189, %182
  %201 = phi ptr [ %183, %182 ], [ %196, %189 ]
  %202 = phi ptr [ %184, %182 ], [ %197, %189 ]
  %203 = phi i32 [ %185, %182 ], [ %195, %189 ]
  %204 = icmp ult i32 %186, 7
  br i1 %204, label %235, label %205

205:                                              ; preds = %205, %200
  %206 = phi ptr [ %232, %205 ], [ %201, %200 ]
  %207 = phi ptr [ %233, %205 ], [ %202, %200 ]
  %208 = phi i32 [ %231, %205 ], [ %203, %200 ]
  %209 = load i8, ptr %207, align 1, !tbaa !36
  store i8 %209, ptr %206, align 1, !tbaa !36
  %210 = getelementptr inbounds nuw i8, ptr %206, i64 1
  %211 = getelementptr inbounds nuw i8, ptr %207, i64 1
  %212 = load i8, ptr %211, align 1, !tbaa !36
  store i8 %212, ptr %210, align 1, !tbaa !36
  %213 = getelementptr inbounds nuw i8, ptr %206, i64 2
  %214 = getelementptr inbounds nuw i8, ptr %207, i64 2
  %215 = load i8, ptr %214, align 1, !tbaa !36
  store i8 %215, ptr %213, align 1, !tbaa !36
  %216 = getelementptr inbounds nuw i8, ptr %206, i64 3
  %217 = getelementptr inbounds nuw i8, ptr %207, i64 3
  %218 = load i8, ptr %217, align 1, !tbaa !36
  store i8 %218, ptr %216, align 1, !tbaa !36
  %219 = getelementptr inbounds nuw i8, ptr %206, i64 4
  %220 = getelementptr inbounds nuw i8, ptr %207, i64 4
  %221 = load i8, ptr %220, align 1, !tbaa !36
  store i8 %221, ptr %219, align 1, !tbaa !36
  %222 = getelementptr inbounds nuw i8, ptr %206, i64 5
  %223 = getelementptr inbounds nuw i8, ptr %207, i64 5
  %224 = load i8, ptr %223, align 1, !tbaa !36
  store i8 %224, ptr %222, align 1, !tbaa !36
  %225 = getelementptr inbounds nuw i8, ptr %206, i64 6
  %226 = getelementptr inbounds nuw i8, ptr %207, i64 6
  %227 = load i8, ptr %226, align 1, !tbaa !36
  store i8 %227, ptr %225, align 1, !tbaa !36
  %228 = getelementptr inbounds nuw i8, ptr %206, i64 7
  %229 = getelementptr inbounds nuw i8, ptr %207, i64 7
  %230 = load i8, ptr %229, align 1, !tbaa !36
  store i8 %230, ptr %228, align 1, !tbaa !36
  %231 = add i32 %208, -8
  %232 = getelementptr inbounds nuw i8, ptr %206, i64 8
  %233 = getelementptr inbounds nuw i8, ptr %207, i64 8
  %234 = icmp eq i32 %231, 0
  br i1 %234, label %235, label %205, !llvm.loop !73

235:                                              ; preds = %205, %200, %180, %162
  %236 = load i32, ptr %40, align 8, !tbaa !34
  br label %237

237:                                              ; preds = %235, %131, %129
  %238 = phi i32 [ %236, %235 ], [ %128, %131 ], [ 0, %129 ]
  %239 = load i32, ptr %42, align 8, !tbaa !27
  %240 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %239, i32 %238), !nosanitize !20
  %241 = extractvalue { i32, i1 } %240, 1, !nosanitize !20
  br i1 %241, label %242, label %243, !prof !21, !nosanitize !20

242:                                              ; preds = %237
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

243:                                              ; preds = %237
  %244 = extractvalue { i32, i1 } %240, 0, !nosanitize !20
  %245 = load ptr, ptr %47, align 8, !tbaa !29
  %246 = zext i32 %238 to i64
  %247 = getelementptr inbounds nuw i8, ptr %245, i64 %246
  store i32 0, ptr %48, align 4, !tbaa !17
  %248 = tail call ptr @__errno_location() #17
  store i32 0, ptr %248, align 4, !tbaa !4
  br label %249

249:                                              ; preds = %268, %243
  %250 = phi i32 [ 0, %243 ], [ %269, %268 ]
  %251 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %244, i32 %250), !nosanitize !20
  %252 = extractvalue { i32, i1 } %251, 1, !nosanitize !20
  br i1 %252, label %253, label %254, !prof !21, !nosanitize !20

253:                                              ; preds = %249
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

254:                                              ; preds = %249
  %255 = extractvalue { i32, i1 } %251, 0, !nosanitize !20
  %256 = tail call i32 @llvm.umin.i32(i32 %255, i32 1073741824)
  %257 = load i32, ptr %49, align 4, !tbaa !46
  %258 = zext i32 %250 to i64
  %259 = getelementptr inbounds nuw i8, ptr %247, i64 %258
  %260 = zext nneg i32 %256 to i64
  %261 = tail call i64 @read(i32 noundef %257, ptr noundef %259, i64 noundef %260) #13
  %262 = trunc i64 %261 to i32
  %263 = icmp slt i32 %262, 1
  br i1 %263, label %271, label %264

264:                                              ; preds = %254
  %265 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %250, i32 %262), !nosanitize !20
  %266 = extractvalue { i32, i1 } %265, 1, !nosanitize !20
  br i1 %266, label %267, label %268, !prof !21, !nosanitize !20

267:                                              ; preds = %264
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

268:                                              ; preds = %264
  %269 = extractvalue { i32, i1 } %265, 0, !nosanitize !20
  %270 = icmp ult i32 %269, %244
  br i1 %270, label %249, label %284, !llvm.loop !47

271:                                              ; preds = %254
  %272 = icmp slt i32 %262, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %271
  %274 = load i32, ptr %248, align 4, !tbaa !4
  %275 = icmp eq i32 %274, 11
  br i1 %275, label %276, label %281

276:                                              ; preds = %273
  store i32 1, ptr %48, align 4, !tbaa !17
  %277 = icmp eq i32 %250, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %276
  %279 = load i32, ptr %248, align 4, !tbaa !4
  br label %281

280:                                              ; preds = %271
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %284

281:                                              ; preds = %278, %273
  %282 = phi i32 [ %279, %278 ], [ %274, %273 ]
  %283 = tail call ptr @strerror(i32 noundef %282) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %283) #13
  br label %1130

284:                                              ; preds = %280, %276, %268
  %285 = phi i32 [ %250, %276 ], [ %250, %280 ], [ %269, %268 ]
  %286 = load i32, ptr %40, align 8, !tbaa !34
  %287 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %286, i32 %285), !nosanitize !20
  %288 = extractvalue { i32, i1 } %287, 1, !nosanitize !20
  br i1 %288, label %289, label %290, !prof !21, !nosanitize !20

289:                                              ; preds = %284
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

290:                                              ; preds = %284
  %291 = extractvalue { i32, i1 } %287, 0, !nosanitize !20
  store i32 %291, ptr %40, align 8, !tbaa !34
  %292 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %292, ptr %46, align 8, !tbaa !35
  br label %293

293:                                              ; preds = %290, %125
  %294 = phi i32 [ %291, %290 ], [ %128, %125 ]
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %325, label %296

296:                                              ; preds = %293
  %297 = load i32, ptr %48, align 4, !tbaa !17
  %298 = icmp ne i32 %297, 0
  %299 = icmp ult i32 %294, 4
  %300 = and i1 %299, %298
  br i1 %300, label %325, label %301

301:                                              ; preds = %296
  %302 = icmp ugt i32 %294, 3
  %303 = load ptr, ptr %46, align 8, !tbaa !35
  br i1 %302, label %304, label %321

304:                                              ; preds = %301
  %305 = load i8, ptr %303, align 1, !tbaa !36
  %306 = icmp eq i8 %305, 31
  br i1 %306, label %307, label %321

307:                                              ; preds = %304
  %308 = getelementptr inbounds nuw i8, ptr %303, i64 1
  %309 = load i8, ptr %308, align 1, !tbaa !36
  %310 = icmp eq i8 %309, -117
  br i1 %310, label %311, label %321

311:                                              ; preds = %307
  %312 = getelementptr inbounds nuw i8, ptr %303, i64 2
  %313 = load i8, ptr %312, align 1, !tbaa !36
  %314 = icmp eq i8 %313, 8
  br i1 %314, label %315, label %321

315:                                              ; preds = %311
  %316 = getelementptr inbounds nuw i8, ptr %303, i64 3
  %317 = load i8, ptr %316, align 1, !tbaa !36
  %318 = icmp ult i8 %317, 32
  br i1 %318, label %319, label %321

319:                                              ; preds = %315
  %320 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  store i32 1, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %54, align 8, !tbaa !32
  br label %473

321:                                              ; preds = %315, %311, %307, %304, %301
  %322 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %322, ptr %37, align 8, !tbaa !22
  %323 = zext i32 %294 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %322, ptr align 1 %303, i64 %323, i1 false)
  %324 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %324, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %475

325:                                              ; preds = %296, %293, %118
  %326 = load i32, ptr %41, align 8, !tbaa !26
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %485, label %473

328:                                              ; preds = %88
  %329 = load ptr, ptr %44, align 8, !tbaa !30
  %330 = load i32, ptr %42, align 8, !tbaa !27
  %331 = shl i32 %330, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %332 = tail call ptr @__errno_location() #17
  store i32 0, ptr %332, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %333

333:                                              ; preds = %353, %328
  %334 = phi i32 [ %354, %353 ], [ 0, %328 ]
  %335 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %331, i32 %334), !nosanitize !20
  %336 = extractvalue { i32, i1 } %335, 1, !nosanitize !20
  br i1 %336, label %337, label %338, !prof !21, !nosanitize !20

337:                                              ; preds = %333
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

338:                                              ; preds = %333
  %339 = extractvalue { i32, i1 } %335, 0, !nosanitize !20
  %340 = tail call i32 @llvm.umin.i32(i32 %339, i32 1073741824)
  %341 = load i32, ptr %49, align 4, !tbaa !46
  %342 = zext i32 %334 to i64
  %343 = getelementptr inbounds nuw i8, ptr %329, i64 %342
  %344 = zext nneg i32 %340 to i64
  %345 = tail call i64 @read(i32 noundef %341, ptr noundef %343, i64 noundef %344) #13
  %346 = trunc i64 %345 to i32
  %347 = icmp slt i32 %346, 1
  br i1 %347, label %356, label %348

348:                                              ; preds = %338
  %349 = load i32, ptr %0, align 4, !tbaa !4
  %350 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %349, i32 %346), !nosanitize !20
  %351 = extractvalue { i32, i1 } %350, 1, !nosanitize !20
  br i1 %351, label %352, label %353, !prof !21, !nosanitize !20

352:                                              ; preds = %348
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

353:                                              ; preds = %348
  %354 = extractvalue { i32, i1 } %350, 0, !nosanitize !20
  store i32 %354, ptr %0, align 4, !tbaa !4
  %355 = icmp ult i32 %354, %331
  br i1 %355, label %333, label %370, !llvm.loop !47

356:                                              ; preds = %338
  %357 = icmp slt i32 %346, 0
  br i1 %357, label %358, label %366

358:                                              ; preds = %356
  %359 = load i32, ptr %332, align 4, !tbaa !4
  %360 = icmp eq i32 %359, 11
  br i1 %360, label %361, label %367

361:                                              ; preds = %358
  store i32 1, ptr %48, align 4, !tbaa !17
  %362 = load i32, ptr %0, align 4, !tbaa !4
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %361
  %365 = load i32, ptr %332, align 4, !tbaa !4
  br label %367

366:                                              ; preds = %356
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %370

367:                                              ; preds = %364, %358
  %368 = phi i32 [ %365, %364 ], [ %359, %358 ]
  %369 = tail call ptr @strerror(i32 noundef %368) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %369) #13
  br label %1130

370:                                              ; preds = %366, %361, %353
  %371 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %371, ptr %37, align 8, !tbaa !22
  br label %485

372:                                              ; preds = %88
  %373 = load i32, ptr %42, align 8, !tbaa !27
  %374 = shl i32 %373, 1
  store i32 %374, ptr %43, align 8, !tbaa !48
  %375 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %375, ptr %45, align 8, !tbaa !49
  br label %376

376:                                              ; preds = %455, %372
  %377 = phi i32 [ 0, %372 ], [ %440, %455 ]
  %378 = load i32, ptr %40, align 8, !tbaa !34
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %439

380:                                              ; preds = %376
  %381 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %381, label %459 [
    i32 0, label %382
    i32 -5, label %382
  ]

382:                                              ; preds = %380, %380
  %383 = load i32, ptr %39, align 8, !tbaa !24
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %435

385:                                              ; preds = %382
  %386 = load i32, ptr %42, align 8, !tbaa !27
  %387 = load ptr, ptr %47, align 8, !tbaa !29
  store i32 0, ptr %48, align 4, !tbaa !17
  %388 = tail call ptr @__errno_location() #17
  store i32 0, ptr %388, align 4, !tbaa !4
  br label %389

389:                                              ; preds = %408, %385
  %390 = phi i32 [ 0, %385 ], [ %409, %408 ]
  %391 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %386, i32 %390), !nosanitize !20
  %392 = extractvalue { i32, i1 } %391, 1, !nosanitize !20
  br i1 %392, label %393, label %394, !prof !21, !nosanitize !20

393:                                              ; preds = %389
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

394:                                              ; preds = %389
  %395 = extractvalue { i32, i1 } %391, 0, !nosanitize !20
  %396 = tail call i32 @llvm.umin.i32(i32 %395, i32 1073741824)
  %397 = load i32, ptr %49, align 4, !tbaa !46
  %398 = zext i32 %390 to i64
  %399 = getelementptr inbounds nuw i8, ptr %387, i64 %398
  %400 = zext nneg i32 %396 to i64
  %401 = tail call i64 @read(i32 noundef %397, ptr noundef %399, i64 noundef %400) #13
  %402 = trunc i64 %401 to i32
  %403 = icmp slt i32 %402, 1
  br i1 %403, label %411, label %404

404:                                              ; preds = %394
  %405 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %390, i32 %402), !nosanitize !20
  %406 = extractvalue { i32, i1 } %405, 1, !nosanitize !20
  br i1 %406, label %407, label %408, !prof !21, !nosanitize !20

407:                                              ; preds = %404
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

408:                                              ; preds = %404
  %409 = extractvalue { i32, i1 } %405, 0, !nosanitize !20
  %410 = icmp ult i32 %409, %386
  br i1 %410, label %389, label %425, !llvm.loop !47

411:                                              ; preds = %394
  %412 = icmp slt i32 %402, 0
  br i1 %412, label %413, label %420

413:                                              ; preds = %411
  %414 = load i32, ptr %388, align 4, !tbaa !4
  %415 = icmp eq i32 %414, 11
  br i1 %415, label %416, label %421

416:                                              ; preds = %413
  store i32 1, ptr %48, align 4, !tbaa !17
  %417 = icmp eq i32 %390, 0
  br i1 %417, label %418, label %425

418:                                              ; preds = %416
  %419 = load i32, ptr %388, align 4, !tbaa !4
  br label %421

420:                                              ; preds = %411
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %425

421:                                              ; preds = %418, %413
  %422 = phi i32 [ %419, %418 ], [ %414, %413 ]
  %423 = tail call ptr @strerror(i32 noundef %422) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %423) #13
  %424 = load i32, ptr %9, align 8, !tbaa !16
  br label %459

425:                                              ; preds = %420, %416, %408
  %426 = phi i32 [ %390, %416 ], [ %390, %420 ], [ %409, %408 ]
  %427 = load i32, ptr %40, align 8, !tbaa !34
  %428 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %427, i32 %426), !nosanitize !20
  %429 = extractvalue { i32, i1 } %428, 1, !nosanitize !20
  br i1 %429, label %430, label %431, !prof !21, !nosanitize !20

430:                                              ; preds = %425
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

431:                                              ; preds = %425
  %432 = extractvalue { i32, i1 } %428, 0, !nosanitize !20
  store i32 %432, ptr %40, align 8, !tbaa !34
  %433 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %433, ptr %46, align 8, !tbaa !35
  %434 = icmp eq i32 %432, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %431, %382
  %436 = load i32, ptr %48, align 4, !tbaa !17
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %459

438:                                              ; preds = %435
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %459

439:                                              ; preds = %431, %376
  %440 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %441 = load i32, ptr %43, align 8, !tbaa !48
  %442 = icmp ult i32 %441, %374
  br i1 %442, label %443, label %444

443:                                              ; preds = %439
  store i32 0, ptr %50, align 4, !tbaa !33
  br label %444

444:                                              ; preds = %443, %439
  switch i32 %440, label %455 [
    i32 -2, label %445
    i32 2, label %445
    i32 -4, label %446
    i32 -3, label %447
  ]

445:                                              ; preds = %444, %444
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %459

446:                                              ; preds = %444
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %459

447:                                              ; preds = %444
  %448 = load i32, ptr %50, align 4, !tbaa !33
  %449 = icmp eq i32 %448, 1
  br i1 %449, label %450, label %451

450:                                              ; preds = %447
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %459

451:                                              ; preds = %447
  %452 = load ptr, ptr %51, align 8, !tbaa !50
  %453 = icmp eq ptr %452, null
  %454 = select i1 %453, ptr @.str.6, ptr %452
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %454) #13
  br label %459

455:                                              ; preds = %444
  %456 = icmp ne i32 %441, 0
  %457 = icmp ne i32 %440, 1
  %458 = select i1 %456, i1 %457, i1 false
  br i1 %458, label %376, label %459, !llvm.loop !51

459:                                              ; preds = %455, %451, %450, %446, %445, %438, %435, %421, %380
  %460 = phi i32 [ %424, %421 ], [ %377, %435 ], [ %377, %438 ], [ %440, %445 ], [ -4, %446 ], [ 0, %450 ], [ -3, %451 ], [ %440, %455 ], [ %381, %380 ]
  %461 = load i32, ptr %43, align 8, !tbaa !48
  %462 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %374, i32 %461), !nosanitize !20
  %463 = extractvalue { i32, i1 } %462, 1, !nosanitize !20
  br i1 %463, label %464, label %465, !prof !21, !nosanitize !20

464:                                              ; preds = %459
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

465:                                              ; preds = %459
  %466 = extractvalue { i32, i1 } %462, 0, !nosanitize !20
  store i32 %466, ptr %0, align 8, !tbaa !19
  %467 = load ptr, ptr %45, align 8, !tbaa !49
  %468 = zext i32 %466 to i64
  %469 = sub nsw i64 0, %468
  %470 = getelementptr inbounds i8, ptr %467, i64 %469
  store ptr %470, ptr %37, align 8, !tbaa !22
  switch i32 %460, label %1130 [
    i32 1, label %471
    i32 0, label %473
  ]

471:                                              ; preds = %465
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %473

472:                                              ; preds = %88
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1130

473:                                              ; preds = %471, %465, %325, %319
  %474 = load i32, ptr %0, align 8, !tbaa !19
  br label %475

475:                                              ; preds = %473, %321
  %476 = phi i32 [ %474, %473 ], [ %324, %321 ]
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %485

478:                                              ; preds = %475
  %479 = load i32, ptr %39, align 8, !tbaa !24
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %484, label %481

481:                                              ; preds = %478
  %482 = load i32, ptr %40, align 8, !tbaa !34
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %485, label %484

484:                                              ; preds = %481, %478
  br label %88, !llvm.loop !52

485:                                              ; preds = %481, %475, %370, %325
  %486 = load i64, ptr %33, align 8, !tbaa !18
  br label %487

487:                                              ; preds = %485, %79
  %488 = phi i64 [ %486, %485 ], [ %80, %79 ]
  %489 = icmp eq i64 %488, 0
  br i1 %489, label %490, label %55, !llvm.loop !53

490:                                              ; preds = %487, %84, %32
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %492 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %493 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %495 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %496 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %497 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %498 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %499 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %500 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %501 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %502 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %503 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %504 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %505 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %506 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %507 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %508 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %509

509:                                              ; preds = %1112, %490
  %510 = phi ptr [ %2, %490 ], [ %1116, %1112 ]
  %511 = phi i64 [ 1, %490 ], [ %1115, %1112 ]
  %512 = phi i64 [ 0, %490 ], [ %1114, %1112 ]
  %513 = call i64 @llvm.umin.i64(i64 %511, i64 4294967295)
  %514 = trunc nuw i64 %513 to i32
  %515 = load i32, ptr %0, align 8, !tbaa !19
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %532, label %517

517:                                              ; preds = %509
  %518 = call i32 @llvm.umin.i32(i32 %515, i32 %514)
  %519 = load ptr, ptr %491, align 8, !tbaa !22
  %520 = zext i32 %518 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %510, ptr align 1 %519, i64 %520, i1 false)
  %521 = load ptr, ptr %491, align 8, !tbaa !22
  %522 = getelementptr inbounds nuw i8, ptr %521, i64 %520
  store ptr %522, ptr %491, align 8, !tbaa !22
  %523 = load i32, ptr %0, align 8, !tbaa !19
  %524 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %523, i32 %518), !nosanitize !20
  %525 = extractvalue { i32, i1 } %524, 1, !nosanitize !20
  br i1 %525, label %526, label %527, !prof !21, !nosanitize !20

526:                                              ; preds = %517
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

527:                                              ; preds = %517
  %528 = extractvalue { i32, i1 } %524, 0, !nosanitize !20
  store i32 %528, ptr %0, align 8, !tbaa !19
  %529 = load i32, ptr %9, align 8, !tbaa !16
  %530 = icmp ne i32 %529, 0
  %531 = sext i1 %530 to i32
  br label %1092

532:                                              ; preds = %509
  %533 = load i32, ptr %492, align 8, !tbaa !24
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %538, label %535

535:                                              ; preds = %532
  %536 = load i32, ptr %493, align 8, !tbaa !25
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %1121, label %538

538:                                              ; preds = %535, %532
  %539 = load i32, ptr %494, align 8, !tbaa !26
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %545, label %541

541:                                              ; preds = %538
  %542 = load i32, ptr %495, align 8, !tbaa !27
  %543 = shl i32 %542, 1
  %544 = icmp ugt i32 %543, %514
  br i1 %544, label %545, label %948

545:                                              ; preds = %541, %538
  br label %546

546:                                              ; preds = %942, %545
  %547 = phi i32 [ %943, %942 ], [ %539, %545 ]
  switch i32 %547, label %930 [
    i32 0, label %548
    i32 1, label %786
    i32 2, label %830
  ]

548:                                              ; preds = %546
  %549 = load i32, ptr %495, align 8, !tbaa !27
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %570

551:                                              ; preds = %548
  %552 = load i32, ptr %506, align 4, !tbaa !28
  %553 = zext i32 %552 to i64
  %554 = call noalias ptr @malloc(i64 noundef %553) #16
  store ptr %554, ptr %499, align 8, !tbaa !29
  %555 = load i32, ptr %506, align 4, !tbaa !28
  %556 = shl i32 %555, 1
  %557 = zext i32 %556 to i64
  %558 = call noalias ptr @malloc(i64 noundef %557) #16
  store ptr %558, ptr %505, align 8, !tbaa !30
  %559 = icmp eq ptr %554, null
  %560 = icmp eq ptr %558, null
  %561 = or i1 %559, %560
  br i1 %561, label %562, label %563

562:                                              ; preds = %551
  call void @free(ptr noundef %558) #13
  call void @free(ptr noundef %554) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %944

563:                                              ; preds = %551
  %564 = load i32, ptr %506, align 4, !tbaa !28
  store i32 %564, ptr %495, align 8, !tbaa !27
  store i32 0, ptr %493, align 8, !tbaa !25
  store ptr null, ptr %498, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %507, i8 0, i64 24, i1 false)
  %565 = call i32 @inflateInit2_(ptr noundef nonnull %498, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %570, label %567

567:                                              ; preds = %563
  %568 = load ptr, ptr %505, align 8, !tbaa !30
  call void @free(ptr noundef %568) #13
  %569 = load ptr, ptr %499, align 8, !tbaa !29
  call void @free(ptr noundef %569) #13
  store i32 0, ptr %495, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %944

570:                                              ; preds = %563, %548
  %571 = load i32, ptr %508, align 8, !tbaa !32
  %572 = icmp eq i32 %571, -1
  br i1 %572, label %576, label %573

573:                                              ; preds = %570
  %574 = load i32, ptr %502, align 4, !tbaa !33
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %581

576:                                              ; preds = %573, %570
  %577 = call i32 @inflateReset(ptr noundef nonnull %498) #13
  store i32 2, ptr %494, align 8, !tbaa !26
  %578 = load i32, ptr %502, align 4, !tbaa !33
  %579 = icmp ne i32 %578, -1
  %580 = zext i1 %579 to i32
  store i32 %580, ptr %502, align 4, !tbaa !33
  store i32 0, ptr %508, align 8, !tbaa !32
  br label %783

581:                                              ; preds = %573
  %582 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %582, label %944 [
    i32 0, label %583
    i32 -5, label %583
  ]

583:                                              ; preds = %581, %581
  %584 = load i32, ptr %492, align 8, !tbaa !24
  %585 = icmp eq i32 %584, 0
  %586 = load i32, ptr %493, align 8, !tbaa !34
  br i1 %585, label %587, label %751

587:                                              ; preds = %583
  %588 = icmp eq i32 %586, 0
  br i1 %588, label %695, label %589

589:                                              ; preds = %587
  %590 = load ptr, ptr %499, align 8, !tbaa !29
  %591 = load ptr, ptr %498, align 8, !tbaa !35
  %592 = icmp eq ptr %591, %590
  br i1 %592, label %695, label %593

593:                                              ; preds = %589
  %594 = ptrtoaddr ptr %591 to i64
  %595 = ptrtoaddr ptr %590 to i64
  %596 = zext i32 %586 to i64
  %597 = icmp ult i32 %586, 4
  %598 = sub i64 %595, %594
  %599 = icmp ult i64 %598, 32
  %600 = or i1 %597, %599
  br i1 %600, label %640, label %601

601:                                              ; preds = %593
  %602 = icmp ult i32 %586, 32
  br i1 %602, label %624, label %603

603:                                              ; preds = %601
  %604 = and i64 %596, 28
  %605 = and i64 %596, 4294967264
  %606 = getelementptr i8, ptr %590, i64 %605
  %607 = getelementptr i8, ptr %591, i64 %605
  %608 = trunc nuw i64 %605 to i32
  %609 = sub i32 %586, %608
  br label %610

610:                                              ; preds = %610, %603
  %611 = phi i64 [ 0, %603 ], [ %618, %610 ]
  %612 = getelementptr i8, ptr %590, i64 %611
  %613 = getelementptr i8, ptr %591, i64 %611
  %614 = getelementptr i8, ptr %613, i64 16
  %615 = load <16 x i8>, ptr %613, align 1, !tbaa !36
  %616 = load <16 x i8>, ptr %614, align 1, !tbaa !36
  %617 = getelementptr i8, ptr %612, i64 16
  store <16 x i8> %615, ptr %612, align 1, !tbaa !36
  store <16 x i8> %616, ptr %617, align 1, !tbaa !36
  %618 = add nuw i64 %611, 32
  %619 = icmp eq i64 %618, %605
  br i1 %619, label %620, label %610, !llvm.loop !74

620:                                              ; preds = %610
  %621 = icmp eq i64 %605, %596
  br i1 %621, label %693, label %622

622:                                              ; preds = %620
  %623 = icmp eq i64 %604, 0
  br i1 %623, label %640, label %624, !prof !41

624:                                              ; preds = %622, %601
  %625 = phi i64 [ %605, %622 ], [ 0, %601 ]
  %626 = and i64 %596, 4294967292
  %627 = getelementptr i8, ptr %590, i64 %626
  %628 = getelementptr i8, ptr %591, i64 %626
  %629 = trunc nuw i64 %626 to i32
  %630 = sub i32 %586, %629
  br label %631

631:                                              ; preds = %631, %624
  %632 = phi i64 [ %625, %624 ], [ %636, %631 ]
  %633 = getelementptr i8, ptr %590, i64 %632
  %634 = getelementptr i8, ptr %591, i64 %632
  %635 = load <4 x i8>, ptr %634, align 1, !tbaa !36
  store <4 x i8> %635, ptr %633, align 1, !tbaa !36
  %636 = add nuw i64 %632, 4
  %637 = icmp eq i64 %636, %626
  br i1 %637, label %638, label %631, !llvm.loop !75

638:                                              ; preds = %631
  %639 = icmp eq i64 %626, %596
  br i1 %639, label %693, label %640

640:                                              ; preds = %638, %622, %593
  %641 = phi ptr [ %590, %593 ], [ %606, %622 ], [ %627, %638 ]
  %642 = phi ptr [ %591, %593 ], [ %607, %622 ], [ %628, %638 ]
  %643 = phi i32 [ %586, %593 ], [ %609, %622 ], [ %630, %638 ]
  %644 = add i32 %643, -1
  %645 = and i32 %643, 7
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %658, label %647

647:                                              ; preds = %647, %640
  %648 = phi ptr [ %654, %647 ], [ %641, %640 ]
  %649 = phi ptr [ %655, %647 ], [ %642, %640 ]
  %650 = phi i32 [ %653, %647 ], [ %643, %640 ]
  %651 = phi i32 [ %656, %647 ], [ 0, %640 ]
  %652 = load i8, ptr %649, align 1, !tbaa !36
  store i8 %652, ptr %648, align 1, !tbaa !36
  %653 = add i32 %650, -1
  %654 = getelementptr inbounds nuw i8, ptr %648, i64 1
  %655 = getelementptr inbounds nuw i8, ptr %649, i64 1
  %656 = add i32 %651, 1
  %657 = icmp eq i32 %656, %645
  br i1 %657, label %658, label %647, !llvm.loop !76

658:                                              ; preds = %647, %640
  %659 = phi ptr [ %641, %640 ], [ %654, %647 ]
  %660 = phi ptr [ %642, %640 ], [ %655, %647 ]
  %661 = phi i32 [ %643, %640 ], [ %653, %647 ]
  %662 = icmp ult i32 %644, 7
  br i1 %662, label %693, label %663

663:                                              ; preds = %663, %658
  %664 = phi ptr [ %690, %663 ], [ %659, %658 ]
  %665 = phi ptr [ %691, %663 ], [ %660, %658 ]
  %666 = phi i32 [ %689, %663 ], [ %661, %658 ]
  %667 = load i8, ptr %665, align 1, !tbaa !36
  store i8 %667, ptr %664, align 1, !tbaa !36
  %668 = getelementptr inbounds nuw i8, ptr %664, i64 1
  %669 = getelementptr inbounds nuw i8, ptr %665, i64 1
  %670 = load i8, ptr %669, align 1, !tbaa !36
  store i8 %670, ptr %668, align 1, !tbaa !36
  %671 = getelementptr inbounds nuw i8, ptr %664, i64 2
  %672 = getelementptr inbounds nuw i8, ptr %665, i64 2
  %673 = load i8, ptr %672, align 1, !tbaa !36
  store i8 %673, ptr %671, align 1, !tbaa !36
  %674 = getelementptr inbounds nuw i8, ptr %664, i64 3
  %675 = getelementptr inbounds nuw i8, ptr %665, i64 3
  %676 = load i8, ptr %675, align 1, !tbaa !36
  store i8 %676, ptr %674, align 1, !tbaa !36
  %677 = getelementptr inbounds nuw i8, ptr %664, i64 4
  %678 = getelementptr inbounds nuw i8, ptr %665, i64 4
  %679 = load i8, ptr %678, align 1, !tbaa !36
  store i8 %679, ptr %677, align 1, !tbaa !36
  %680 = getelementptr inbounds nuw i8, ptr %664, i64 5
  %681 = getelementptr inbounds nuw i8, ptr %665, i64 5
  %682 = load i8, ptr %681, align 1, !tbaa !36
  store i8 %682, ptr %680, align 1, !tbaa !36
  %683 = getelementptr inbounds nuw i8, ptr %664, i64 6
  %684 = getelementptr inbounds nuw i8, ptr %665, i64 6
  %685 = load i8, ptr %684, align 1, !tbaa !36
  store i8 %685, ptr %683, align 1, !tbaa !36
  %686 = getelementptr inbounds nuw i8, ptr %664, i64 7
  %687 = getelementptr inbounds nuw i8, ptr %665, i64 7
  %688 = load i8, ptr %687, align 1, !tbaa !36
  store i8 %688, ptr %686, align 1, !tbaa !36
  %689 = add i32 %666, -8
  %690 = getelementptr inbounds nuw i8, ptr %664, i64 8
  %691 = getelementptr inbounds nuw i8, ptr %665, i64 8
  %692 = icmp eq i32 %689, 0
  br i1 %692, label %693, label %663, !llvm.loop !77

693:                                              ; preds = %663, %658, %638, %620
  %694 = load i32, ptr %493, align 8, !tbaa !34
  br label %695

695:                                              ; preds = %693, %589, %587
  %696 = phi i32 [ %694, %693 ], [ %586, %589 ], [ 0, %587 ]
  %697 = load i32, ptr %495, align 8, !tbaa !27
  %698 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %697, i32 %696), !nosanitize !20
  %699 = extractvalue { i32, i1 } %698, 1, !nosanitize !20
  br i1 %699, label %700, label %701, !prof !21, !nosanitize !20

700:                                              ; preds = %695
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

701:                                              ; preds = %695
  %702 = extractvalue { i32, i1 } %698, 0, !nosanitize !20
  %703 = load ptr, ptr %499, align 8, !tbaa !29
  %704 = zext i32 %696 to i64
  %705 = getelementptr inbounds nuw i8, ptr %703, i64 %704
  store i32 0, ptr %500, align 4, !tbaa !17
  %706 = tail call ptr @__errno_location() #17
  store i32 0, ptr %706, align 4, !tbaa !4
  br label %707

707:                                              ; preds = %726, %701
  %708 = phi i32 [ 0, %701 ], [ %727, %726 ]
  %709 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %702, i32 %708), !nosanitize !20
  %710 = extractvalue { i32, i1 } %709, 1, !nosanitize !20
  br i1 %710, label %711, label %712, !prof !21, !nosanitize !20

711:                                              ; preds = %707
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

712:                                              ; preds = %707
  %713 = extractvalue { i32, i1 } %709, 0, !nosanitize !20
  %714 = call i32 @llvm.umin.i32(i32 %713, i32 1073741824)
  %715 = load i32, ptr %501, align 4, !tbaa !46
  %716 = zext i32 %708 to i64
  %717 = getelementptr inbounds nuw i8, ptr %705, i64 %716
  %718 = zext nneg i32 %714 to i64
  %719 = call i64 @read(i32 noundef %715, ptr noundef %717, i64 noundef %718) #13
  %720 = trunc i64 %719 to i32
  %721 = icmp slt i32 %720, 1
  br i1 %721, label %729, label %722

722:                                              ; preds = %712
  %723 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %708, i32 %720), !nosanitize !20
  %724 = extractvalue { i32, i1 } %723, 1, !nosanitize !20
  br i1 %724, label %725, label %726, !prof !21, !nosanitize !20

725:                                              ; preds = %722
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

726:                                              ; preds = %722
  %727 = extractvalue { i32, i1 } %723, 0, !nosanitize !20
  %728 = icmp ult i32 %727, %702
  br i1 %728, label %707, label %742, !llvm.loop !47

729:                                              ; preds = %712
  %730 = icmp slt i32 %720, 0
  br i1 %730, label %731, label %738

731:                                              ; preds = %729
  %732 = load i32, ptr %706, align 4, !tbaa !4
  %733 = icmp eq i32 %732, 11
  br i1 %733, label %734, label %739

734:                                              ; preds = %731
  store i32 1, ptr %500, align 4, !tbaa !17
  %735 = icmp eq i32 %708, 0
  br i1 %735, label %736, label %742

736:                                              ; preds = %734
  %737 = load i32, ptr %706, align 4, !tbaa !4
  br label %739

738:                                              ; preds = %729
  store i32 1, ptr %492, align 8, !tbaa !24
  br label %742

739:                                              ; preds = %736, %731
  %740 = phi i32 [ %737, %736 ], [ %732, %731 ]
  %741 = call ptr @strerror(i32 noundef %740) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %741) #13
  br label %944

742:                                              ; preds = %738, %734, %726
  %743 = phi i32 [ %708, %734 ], [ %708, %738 ], [ %727, %726 ]
  %744 = load i32, ptr %493, align 8, !tbaa !34
  %745 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %744, i32 %743), !nosanitize !20
  %746 = extractvalue { i32, i1 } %745, 1, !nosanitize !20
  br i1 %746, label %747, label %748, !prof !21, !nosanitize !20

747:                                              ; preds = %742
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

748:                                              ; preds = %742
  %749 = extractvalue { i32, i1 } %745, 0, !nosanitize !20
  store i32 %749, ptr %493, align 8, !tbaa !34
  %750 = load ptr, ptr %499, align 8, !tbaa !29
  store ptr %750, ptr %498, align 8, !tbaa !35
  br label %751

751:                                              ; preds = %748, %583
  %752 = phi i32 [ %749, %748 ], [ %586, %583 ]
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %783, label %754

754:                                              ; preds = %751
  %755 = load i32, ptr %500, align 4, !tbaa !17
  %756 = icmp ne i32 %755, 0
  %757 = icmp ult i32 %752, 4
  %758 = and i1 %757, %756
  br i1 %758, label %783, label %759

759:                                              ; preds = %754
  %760 = icmp ugt i32 %752, 3
  %761 = load ptr, ptr %498, align 8, !tbaa !35
  br i1 %760, label %762, label %779

762:                                              ; preds = %759
  %763 = load i8, ptr %761, align 1, !tbaa !36
  %764 = icmp eq i8 %763, 31
  br i1 %764, label %765, label %779

765:                                              ; preds = %762
  %766 = getelementptr inbounds nuw i8, ptr %761, i64 1
  %767 = load i8, ptr %766, align 1, !tbaa !36
  %768 = icmp eq i8 %767, -117
  br i1 %768, label %769, label %779

769:                                              ; preds = %765
  %770 = getelementptr inbounds nuw i8, ptr %761, i64 2
  %771 = load i8, ptr %770, align 1, !tbaa !36
  %772 = icmp eq i8 %771, 8
  br i1 %772, label %773, label %779

773:                                              ; preds = %769
  %774 = getelementptr inbounds nuw i8, ptr %761, i64 3
  %775 = load i8, ptr %774, align 1, !tbaa !36
  %776 = icmp ult i8 %775, 32
  br i1 %776, label %777, label %779

777:                                              ; preds = %773
  %778 = call i32 @inflateReset(ptr noundef nonnull %498) #13
  store i32 2, ptr %494, align 8, !tbaa !26
  store i32 1, ptr %502, align 4, !tbaa !33
  store i32 0, ptr %508, align 8, !tbaa !32
  br label %931

779:                                              ; preds = %773, %769, %765, %762, %759
  %780 = load ptr, ptr %505, align 8, !tbaa !30
  store ptr %780, ptr %491, align 8, !tbaa !22
  %781 = zext i32 %752 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %780, ptr align 1 %761, i64 %781, i1 false)
  %782 = load i32, ptr %493, align 8, !tbaa !34
  store i32 %782, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %493, align 8, !tbaa !34
  store i32 1, ptr %494, align 8, !tbaa !26
  br label %933

783:                                              ; preds = %754, %751, %576
  %784 = load i32, ptr %494, align 8, !tbaa !26
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %1112, label %931

786:                                              ; preds = %546
  %787 = load ptr, ptr %505, align 8, !tbaa !30
  %788 = load i32, ptr %495, align 8, !tbaa !27
  %789 = shl i32 %788, 1
  store i32 0, ptr %500, align 4, !tbaa !17
  %790 = tail call ptr @__errno_location() #17
  store i32 0, ptr %790, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %791

791:                                              ; preds = %811, %786
  %792 = phi i32 [ %812, %811 ], [ 0, %786 ]
  %793 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %789, i32 %792), !nosanitize !20
  %794 = extractvalue { i32, i1 } %793, 1, !nosanitize !20
  br i1 %794, label %795, label %796, !prof !21, !nosanitize !20

795:                                              ; preds = %791
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

796:                                              ; preds = %791
  %797 = extractvalue { i32, i1 } %793, 0, !nosanitize !20
  %798 = call i32 @llvm.umin.i32(i32 %797, i32 1073741824)
  %799 = load i32, ptr %501, align 4, !tbaa !46
  %800 = zext i32 %792 to i64
  %801 = getelementptr inbounds nuw i8, ptr %787, i64 %800
  %802 = zext nneg i32 %798 to i64
  %803 = call i64 @read(i32 noundef %799, ptr noundef %801, i64 noundef %802) #13
  %804 = trunc i64 %803 to i32
  %805 = icmp slt i32 %804, 1
  br i1 %805, label %814, label %806

806:                                              ; preds = %796
  %807 = load i32, ptr %0, align 4, !tbaa !4
  %808 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %807, i32 %804), !nosanitize !20
  %809 = extractvalue { i32, i1 } %808, 1, !nosanitize !20
  br i1 %809, label %810, label %811, !prof !21, !nosanitize !20

810:                                              ; preds = %806
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

811:                                              ; preds = %806
  %812 = extractvalue { i32, i1 } %808, 0, !nosanitize !20
  store i32 %812, ptr %0, align 4, !tbaa !4
  %813 = icmp ult i32 %812, %789
  br i1 %813, label %791, label %828, !llvm.loop !47

814:                                              ; preds = %796
  %815 = icmp slt i32 %804, 0
  br i1 %815, label %816, label %824

816:                                              ; preds = %814
  %817 = load i32, ptr %790, align 4, !tbaa !4
  %818 = icmp eq i32 %817, 11
  br i1 %818, label %819, label %825

819:                                              ; preds = %816
  store i32 1, ptr %500, align 4, !tbaa !17
  %820 = load i32, ptr %0, align 4, !tbaa !4
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %822, label %828

822:                                              ; preds = %819
  %823 = load i32, ptr %790, align 4, !tbaa !4
  br label %825

824:                                              ; preds = %814
  store i32 1, ptr %492, align 8, !tbaa !24
  br label %828

825:                                              ; preds = %822, %816
  %826 = phi i32 [ %823, %822 ], [ %817, %816 ]
  %827 = call ptr @strerror(i32 noundef %826) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %827) #13
  br label %944

828:                                              ; preds = %824, %819, %811
  %829 = load ptr, ptr %505, align 8, !tbaa !30
  store ptr %829, ptr %491, align 8, !tbaa !22
  br label %1112

830:                                              ; preds = %546
  %831 = load i32, ptr %495, align 8, !tbaa !27
  %832 = shl i32 %831, 1
  store i32 %832, ptr %496, align 8, !tbaa !48
  %833 = load ptr, ptr %505, align 8, !tbaa !30
  store ptr %833, ptr %497, align 8, !tbaa !49
  br label %834

834:                                              ; preds = %913, %830
  %835 = phi i32 [ 0, %830 ], [ %898, %913 ]
  %836 = load i32, ptr %493, align 8, !tbaa !34
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %838, label %897

838:                                              ; preds = %834
  %839 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %839, label %917 [
    i32 0, label %840
    i32 -5, label %840
  ]

840:                                              ; preds = %838, %838
  %841 = load i32, ptr %492, align 8, !tbaa !24
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %843, label %893

843:                                              ; preds = %840
  %844 = load i32, ptr %495, align 8, !tbaa !27
  %845 = load ptr, ptr %499, align 8, !tbaa !29
  store i32 0, ptr %500, align 4, !tbaa !17
  %846 = tail call ptr @__errno_location() #17
  store i32 0, ptr %846, align 4, !tbaa !4
  br label %847

847:                                              ; preds = %866, %843
  %848 = phi i32 [ 0, %843 ], [ %867, %866 ]
  %849 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %844, i32 %848), !nosanitize !20
  %850 = extractvalue { i32, i1 } %849, 1, !nosanitize !20
  br i1 %850, label %851, label %852, !prof !21, !nosanitize !20

851:                                              ; preds = %847
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

852:                                              ; preds = %847
  %853 = extractvalue { i32, i1 } %849, 0, !nosanitize !20
  %854 = call i32 @llvm.umin.i32(i32 %853, i32 1073741824)
  %855 = load i32, ptr %501, align 4, !tbaa !46
  %856 = zext i32 %848 to i64
  %857 = getelementptr inbounds nuw i8, ptr %845, i64 %856
  %858 = zext nneg i32 %854 to i64
  %859 = call i64 @read(i32 noundef %855, ptr noundef %857, i64 noundef %858) #13
  %860 = trunc i64 %859 to i32
  %861 = icmp slt i32 %860, 1
  br i1 %861, label %869, label %862

862:                                              ; preds = %852
  %863 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %848, i32 %860), !nosanitize !20
  %864 = extractvalue { i32, i1 } %863, 1, !nosanitize !20
  br i1 %864, label %865, label %866, !prof !21, !nosanitize !20

865:                                              ; preds = %862
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

866:                                              ; preds = %862
  %867 = extractvalue { i32, i1 } %863, 0, !nosanitize !20
  %868 = icmp ult i32 %867, %844
  br i1 %868, label %847, label %883, !llvm.loop !47

869:                                              ; preds = %852
  %870 = icmp slt i32 %860, 0
  br i1 %870, label %871, label %878

871:                                              ; preds = %869
  %872 = load i32, ptr %846, align 4, !tbaa !4
  %873 = icmp eq i32 %872, 11
  br i1 %873, label %874, label %879

874:                                              ; preds = %871
  store i32 1, ptr %500, align 4, !tbaa !17
  %875 = icmp eq i32 %848, 0
  br i1 %875, label %876, label %883

876:                                              ; preds = %874
  %877 = load i32, ptr %846, align 4, !tbaa !4
  br label %879

878:                                              ; preds = %869
  store i32 1, ptr %492, align 8, !tbaa !24
  br label %883

879:                                              ; preds = %876, %871
  %880 = phi i32 [ %877, %876 ], [ %872, %871 ]
  %881 = call ptr @strerror(i32 noundef %880) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %881) #13
  %882 = load i32, ptr %9, align 8, !tbaa !16
  br label %917

883:                                              ; preds = %878, %874, %866
  %884 = phi i32 [ %848, %874 ], [ %848, %878 ], [ %867, %866 ]
  %885 = load i32, ptr %493, align 8, !tbaa !34
  %886 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %885, i32 %884), !nosanitize !20
  %887 = extractvalue { i32, i1 } %886, 1, !nosanitize !20
  br i1 %887, label %888, label %889, !prof !21, !nosanitize !20

888:                                              ; preds = %883
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

889:                                              ; preds = %883
  %890 = extractvalue { i32, i1 } %886, 0, !nosanitize !20
  store i32 %890, ptr %493, align 8, !tbaa !34
  %891 = load ptr, ptr %499, align 8, !tbaa !29
  store ptr %891, ptr %498, align 8, !tbaa !35
  %892 = icmp eq i32 %890, 0
  br i1 %892, label %893, label %897

893:                                              ; preds = %889, %840
  %894 = load i32, ptr %500, align 4, !tbaa !17
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %896, label %917

896:                                              ; preds = %893
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %917

897:                                              ; preds = %889, %834
  %898 = call i32 @inflate(ptr noundef nonnull %498, i32 noundef 0) #13
  %899 = load i32, ptr %496, align 8, !tbaa !48
  %900 = icmp ult i32 %899, %832
  br i1 %900, label %901, label %902

901:                                              ; preds = %897
  store i32 0, ptr %502, align 4, !tbaa !33
  br label %902

902:                                              ; preds = %901, %897
  switch i32 %898, label %913 [
    i32 -2, label %903
    i32 2, label %903
    i32 -4, label %904
    i32 -3, label %905
  ]

903:                                              ; preds = %902, %902
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %917

904:                                              ; preds = %902
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %917

905:                                              ; preds = %902
  %906 = load i32, ptr %502, align 4, !tbaa !33
  %907 = icmp eq i32 %906, 1
  br i1 %907, label %908, label %909

908:                                              ; preds = %905
  store i32 0, ptr %493, align 8, !tbaa !34
  store i32 1, ptr %492, align 8, !tbaa !24
  store i32 0, ptr %494, align 8, !tbaa !26
  br label %917

909:                                              ; preds = %905
  %910 = load ptr, ptr %503, align 8, !tbaa !50
  %911 = icmp eq ptr %910, null
  %912 = select i1 %911, ptr @.str.6, ptr %910
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %912) #13
  br label %917

913:                                              ; preds = %902
  %914 = icmp ne i32 %899, 0
  %915 = icmp ne i32 %898, 1
  %916 = select i1 %914, i1 %915, i1 false
  br i1 %916, label %834, label %917, !llvm.loop !51

917:                                              ; preds = %913, %909, %908, %904, %903, %896, %893, %879, %838
  %918 = phi i32 [ %882, %879 ], [ %835, %893 ], [ %835, %896 ], [ %898, %903 ], [ -4, %904 ], [ 0, %908 ], [ -3, %909 ], [ %839, %838 ], [ %898, %913 ]
  %919 = load i32, ptr %496, align 8, !tbaa !48
  %920 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %832, i32 %919), !nosanitize !20
  %921 = extractvalue { i32, i1 } %920, 1, !nosanitize !20
  br i1 %921, label %922, label %923, !prof !21, !nosanitize !20

922:                                              ; preds = %917
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

923:                                              ; preds = %917
  %924 = extractvalue { i32, i1 } %920, 0, !nosanitize !20
  store i32 %924, ptr %0, align 8, !tbaa !19
  %925 = load ptr, ptr %497, align 8, !tbaa !49
  %926 = zext i32 %924 to i64
  %927 = sub nsw i64 0, %926
  %928 = getelementptr inbounds i8, ptr %925, i64 %927
  store ptr %928, ptr %491, align 8, !tbaa !22
  switch i32 %918, label %944 [
    i32 1, label %929
    i32 0, label %931
  ]

929:                                              ; preds = %923
  store i32 0, ptr %502, align 4, !tbaa !33
  store i32 0, ptr %494, align 8, !tbaa !26
  br label %931

930:                                              ; preds = %546
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %944

931:                                              ; preds = %929, %923, %783, %777
  %932 = load i32, ptr %0, align 8, !tbaa !19
  br label %933

933:                                              ; preds = %931, %779
  %934 = phi i32 [ %932, %931 ], [ %782, %779 ]
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %936, label %1112

936:                                              ; preds = %933
  %937 = load i32, ptr %492, align 8, !tbaa !24
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %942, label %939

939:                                              ; preds = %936
  %940 = load i32, ptr %493, align 8, !tbaa !34
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %1112, label %942

942:                                              ; preds = %939, %936
  %943 = load i32, ptr %494, align 8, !tbaa !26
  br label %546, !llvm.loop !52

944:                                              ; preds = %930, %923, %825, %739, %581, %567, %562
  %945 = load i32, ptr %0, align 8, !tbaa !19
  %946 = icmp eq i32 %945, 0
  %947 = sext i1 %946 to i32
  br label %1112

948:                                              ; preds = %541
  %949 = icmp eq i32 %539, 1
  br i1 %949, label %950, label %987

950:                                              ; preds = %948
  store i32 0, ptr %500, align 4, !tbaa !17
  %951 = tail call ptr @__errno_location() #17
  store i32 0, ptr %951, align 4, !tbaa !4
  br label %952

952:                                              ; preds = %971, %950
  %953 = phi i32 [ 0, %950 ], [ %972, %971 ]
  %954 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %514, i32 %953), !nosanitize !20
  %955 = extractvalue { i32, i1 } %954, 1, !nosanitize !20
  br i1 %955, label %956, label %957, !prof !21, !nosanitize !20

956:                                              ; preds = %952
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

957:                                              ; preds = %952
  %958 = extractvalue { i32, i1 } %954, 0, !nosanitize !20
  %959 = call i32 @llvm.umin.i32(i32 %958, i32 1073741824)
  %960 = load i32, ptr %501, align 4, !tbaa !46
  %961 = zext i32 %953 to i64
  %962 = getelementptr inbounds nuw i8, ptr %510, i64 %961
  %963 = zext nneg i32 %959 to i64
  %964 = call i64 @read(i32 noundef %960, ptr noundef %962, i64 noundef %963) #13
  %965 = trunc i64 %964 to i32
  %966 = icmp slt i32 %965, 1
  br i1 %966, label %974, label %967

967:                                              ; preds = %957
  %968 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %953, i32 %965), !nosanitize !20
  %969 = extractvalue { i32, i1 } %968, 1, !nosanitize !20
  br i1 %969, label %970, label %971, !prof !21, !nosanitize !20

970:                                              ; preds = %967
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

971:                                              ; preds = %967
  %972 = extractvalue { i32, i1 } %968, 0, !nosanitize !20
  %973 = icmp ult i32 %972, %514
  br i1 %973, label %952, label %1090, !llvm.loop !47

974:                                              ; preds = %957
  %975 = icmp slt i32 %965, 0
  br i1 %975, label %976, label %986

976:                                              ; preds = %974
  %977 = load i32, ptr %951, align 4, !tbaa !4
  %978 = icmp eq i32 %977, 11
  br i1 %978, label %979, label %983

979:                                              ; preds = %976
  store i32 1, ptr %500, align 4, !tbaa !17
  %980 = icmp eq i32 %953, 0
  br i1 %980, label %981, label %1092

981:                                              ; preds = %979
  %982 = load i32, ptr %951, align 4, !tbaa !4
  br label %983

983:                                              ; preds = %981, %976
  %984 = phi i32 [ %982, %981 ], [ %977, %976 ]
  %985 = call ptr @strerror(i32 noundef %984) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %985) #13
  br label %1092

986:                                              ; preds = %974
  store i32 1, ptr %492, align 8, !tbaa !24
  br label %1092

987:                                              ; preds = %948
  store i32 %514, ptr %496, align 8, !tbaa !58
  store ptr %510, ptr %497, align 8, !tbaa !59
  br label %988

988:                                              ; preds = %1067, %987
  %989 = phi i32 [ 0, %987 ], [ %1052, %1067 ]
  %990 = load i32, ptr %493, align 8, !tbaa !34
  %991 = icmp eq i32 %990, 0
  br i1 %991, label %992, label %1051

992:                                              ; preds = %988
  %993 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %993, label %1071 [
    i32 0, label %994
    i32 -5, label %994
  ]

994:                                              ; preds = %992, %992
  %995 = load i32, ptr %492, align 8, !tbaa !24
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %997, label %1047

997:                                              ; preds = %994
  %998 = load i32, ptr %495, align 8, !tbaa !27
  %999 = load ptr, ptr %499, align 8, !tbaa !29
  store i32 0, ptr %500, align 4, !tbaa !17
  %1000 = tail call ptr @__errno_location() #17
  store i32 0, ptr %1000, align 4, !tbaa !4
  br label %1001

1001:                                             ; preds = %1020, %997
  %1002 = phi i32 [ 0, %997 ], [ %1021, %1020 ]
  %1003 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %998, i32 %1002), !nosanitize !20
  %1004 = extractvalue { i32, i1 } %1003, 1, !nosanitize !20
  br i1 %1004, label %1005, label %1006, !prof !21, !nosanitize !20

1005:                                             ; preds = %1001
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1006:                                             ; preds = %1001
  %1007 = extractvalue { i32, i1 } %1003, 0, !nosanitize !20
  %1008 = call i32 @llvm.umin.i32(i32 %1007, i32 1073741824)
  %1009 = load i32, ptr %501, align 4, !tbaa !46
  %1010 = zext i32 %1002 to i64
  %1011 = getelementptr inbounds nuw i8, ptr %999, i64 %1010
  %1012 = zext nneg i32 %1008 to i64
  %1013 = call i64 @read(i32 noundef %1009, ptr noundef %1011, i64 noundef %1012) #13
  %1014 = trunc i64 %1013 to i32
  %1015 = icmp slt i32 %1014, 1
  br i1 %1015, label %1023, label %1016

1016:                                             ; preds = %1006
  %1017 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1002, i32 %1014), !nosanitize !20
  %1018 = extractvalue { i32, i1 } %1017, 1, !nosanitize !20
  br i1 %1018, label %1019, label %1020, !prof !21, !nosanitize !20

1019:                                             ; preds = %1016
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1020:                                             ; preds = %1016
  %1021 = extractvalue { i32, i1 } %1017, 0, !nosanitize !20
  %1022 = icmp ult i32 %1021, %998
  br i1 %1022, label %1001, label %1037, !llvm.loop !47

1023:                                             ; preds = %1006
  %1024 = icmp slt i32 %1014, 0
  br i1 %1024, label %1025, label %1032

1025:                                             ; preds = %1023
  %1026 = load i32, ptr %1000, align 4, !tbaa !4
  %1027 = icmp eq i32 %1026, 11
  br i1 %1027, label %1028, label %1033

1028:                                             ; preds = %1025
  store i32 1, ptr %500, align 4, !tbaa !17
  %1029 = icmp eq i32 %1002, 0
  br i1 %1029, label %1030, label %1037

1030:                                             ; preds = %1028
  %1031 = load i32, ptr %1000, align 4, !tbaa !4
  br label %1033

1032:                                             ; preds = %1023
  store i32 1, ptr %492, align 8, !tbaa !24
  br label %1037

1033:                                             ; preds = %1030, %1025
  %1034 = phi i32 [ %1031, %1030 ], [ %1026, %1025 ]
  %1035 = call ptr @strerror(i32 noundef %1034) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1035) #13
  %1036 = load i32, ptr %9, align 8, !tbaa !16
  br label %1071

1037:                                             ; preds = %1032, %1028, %1020
  %1038 = phi i32 [ %1002, %1028 ], [ %1002, %1032 ], [ %1021, %1020 ]
  %1039 = load i32, ptr %493, align 8, !tbaa !34
  %1040 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1039, i32 %1038), !nosanitize !20
  %1041 = extractvalue { i32, i1 } %1040, 1, !nosanitize !20
  br i1 %1041, label %1042, label %1043, !prof !21, !nosanitize !20

1042:                                             ; preds = %1037
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1043:                                             ; preds = %1037
  %1044 = extractvalue { i32, i1 } %1040, 0, !nosanitize !20
  store i32 %1044, ptr %493, align 8, !tbaa !34
  %1045 = load ptr, ptr %499, align 8, !tbaa !29
  store ptr %1045, ptr %498, align 8, !tbaa !35
  %1046 = icmp eq i32 %1044, 0
  br i1 %1046, label %1047, label %1051

1047:                                             ; preds = %1043, %994
  %1048 = load i32, ptr %500, align 4, !tbaa !17
  %1049 = icmp eq i32 %1048, 0
  br i1 %1049, label %1050, label %1071

1050:                                             ; preds = %1047
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %1071

1051:                                             ; preds = %1043, %988
  %1052 = call i32 @inflate(ptr noundef nonnull %498, i32 noundef 0) #13
  %1053 = load i32, ptr %496, align 8, !tbaa !48
  %1054 = icmp ult i32 %1053, %514
  br i1 %1054, label %1055, label %1056

1055:                                             ; preds = %1051
  store i32 0, ptr %502, align 4, !tbaa !33
  br label %1056

1056:                                             ; preds = %1055, %1051
  switch i32 %1052, label %1067 [
    i32 -2, label %1057
    i32 2, label %1057
    i32 -4, label %1058
    i32 -3, label %1059
  ]

1057:                                             ; preds = %1056, %1056
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %1071

1058:                                             ; preds = %1056
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1071

1059:                                             ; preds = %1056
  %1060 = load i32, ptr %502, align 4, !tbaa !33
  %1061 = icmp eq i32 %1060, 1
  br i1 %1061, label %1062, label %1063

1062:                                             ; preds = %1059
  store i32 0, ptr %493, align 8, !tbaa !34
  store i32 1, ptr %492, align 8, !tbaa !24
  store i32 0, ptr %494, align 8, !tbaa !26
  br label %1071

1063:                                             ; preds = %1059
  %1064 = load ptr, ptr %503, align 8, !tbaa !50
  %1065 = icmp eq ptr %1064, null
  %1066 = select i1 %1065, ptr @.str.6, ptr %1064
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1066) #13
  br label %1071

1067:                                             ; preds = %1056
  %1068 = icmp ne i32 %1053, 0
  %1069 = icmp ne i32 %1052, 1
  %1070 = select i1 %1068, i1 %1069, i1 false
  br i1 %1070, label %988, label %1071, !llvm.loop !51

1071:                                             ; preds = %1067, %1063, %1062, %1058, %1057, %1050, %1047, %1033, %992
  %1072 = phi i32 [ %1036, %1033 ], [ %989, %1047 ], [ %989, %1050 ], [ %1052, %1057 ], [ -4, %1058 ], [ 0, %1062 ], [ -3, %1063 ], [ %1052, %1067 ], [ %993, %992 ]
  %1073 = load i32, ptr %496, align 8, !tbaa !48
  %1074 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %514, i32 %1073), !nosanitize !20
  %1075 = extractvalue { i32, i1 } %1074, 1, !nosanitize !20
  br i1 %1075, label %1076, label %1077, !prof !21, !nosanitize !20

1076:                                             ; preds = %1071
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1077:                                             ; preds = %1071
  %1078 = extractvalue { i32, i1 } %1074, 0, !nosanitize !20
  %1079 = load ptr, ptr %497, align 8, !tbaa !49
  %1080 = zext i32 %1078 to i64
  %1081 = sub nsw i64 0, %1080
  %1082 = getelementptr inbounds i8, ptr %1079, i64 %1081
  store ptr %1082, ptr %491, align 8, !tbaa !22
  %1083 = icmp eq i32 %1072, 1
  br i1 %1083, label %1084, label %1085

1084:                                             ; preds = %1077
  store i32 0, ptr %502, align 4, !tbaa !33
  store i32 0, ptr %494, align 8, !tbaa !26
  br label %1088

1085:                                             ; preds = %1077
  %1086 = icmp ne i32 %1072, 0
  %1087 = sext i1 %1086 to i32
  br label %1088

1088:                                             ; preds = %1085, %1084
  %1089 = phi i32 [ 0, %1084 ], [ %1087, %1085 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1092

1090:                                             ; preds = %971
  %1091 = zext i32 %972 to i64
  br label %1092

1092:                                             ; preds = %1090, %1088, %986, %983, %979, %527
  %1093 = phi i64 [ %1091, %1090 ], [ %961, %986 ], [ %961, %983 ], [ %961, %979 ], [ %520, %527 ], [ %1080, %1088 ]
  %1094 = phi i32 [ 0, %1090 ], [ 0, %986 ], [ -1, %983 ], [ 0, %979 ], [ %531, %527 ], [ %1089, %1088 ]
  %1095 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %511, i64 %1093), !nosanitize !20
  %1096 = extractvalue { i64, i1 } %1095, 0, !nosanitize !20
  %1097 = extractvalue { i64, i1 } %1095, 1, !nosanitize !20
  br i1 %1097, label %1098, label %1099, !prof !21, !nosanitize !20

1098:                                             ; preds = %1092
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1099:                                             ; preds = %1092
  %1100 = getelementptr inbounds nuw i8, ptr %510, i64 %1093
  %1101 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %512, i64 %1093), !nosanitize !20
  %1102 = extractvalue { i64, i1 } %1101, 0, !nosanitize !20
  %1103 = extractvalue { i64, i1 } %1101, 1, !nosanitize !20
  br i1 %1103, label %1104, label %1105, !prof !21, !nosanitize !20

1104:                                             ; preds = %1105, %1099
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1105:                                             ; preds = %1099
  %1106 = load i64, ptr %504, align 8, !tbaa !23
  %1107 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1106, i64 %1093), !nosanitize !20
  %1108 = extractvalue { i64, i1 } %1107, 1, !nosanitize !20
  br i1 %1108, label %1104, label %1109, !prof !21, !nosanitize !20

1109:                                             ; preds = %1105
  %1110 = extractvalue { i64, i1 } %1107, 0, !nosanitize !20
  store i64 %1110, ptr %504, align 8, !tbaa !23
  %1111 = icmp eq i64 %1096, 0
  br i1 %1111, label %1124, label %1112

1112:                                             ; preds = %1109, %944, %939, %933, %828, %783
  %1113 = phi i32 [ %1094, %1109 ], [ %947, %944 ], [ 0, %828 ], [ 0, %783 ], [ 0, %933 ], [ 0, %939 ]
  %1114 = phi i64 [ %1102, %1109 ], [ %512, %944 ], [ %512, %828 ], [ %512, %783 ], [ %512, %933 ], [ %512, %939 ]
  %1115 = phi i64 [ %1096, %1109 ], [ %511, %944 ], [ %511, %828 ], [ %511, %783 ], [ %511, %933 ], [ %511, %939 ]
  %1116 = phi ptr [ %1100, %1109 ], [ %510, %944 ], [ %510, %828 ], [ %510, %783 ], [ %510, %933 ], [ %510, %939 ]
  %1117 = icmp eq i32 %1113, 0
  br i1 %1117, label %509, label %1118, !llvm.loop !60

1118:                                             ; preds = %1112
  %1119 = load i32, ptr %492, align 8, !tbaa !24
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1124, label %1121

1121:                                             ; preds = %1118, %535
  %1122 = phi i64 [ %1114, %1118 ], [ %512, %535 ]
  %1123 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1123, align 4, !tbaa !61
  br label %1124

1124:                                             ; preds = %1121, %1118, %1109
  %1125 = phi i64 [ %1114, %1118 ], [ %1122, %1121 ], [ %1102, %1109 ]
  %1126 = freeze i64 %1125
  %1127 = icmp eq i64 %1126, 0
  %1128 = load i8, ptr %2, align 1
  %1129 = zext i8 %1128 to i32
  br i1 %1127, label %1130, label %1131

1130:                                             ; preds = %1124, %472, %465, %367, %281, %123, %109, %104
  br label %1131

1131:                                             ; preds = %1130, %1124, %25, %11, %4, %1
  %1132 = phi i32 [ -1, %4 ], [ -1, %1 ], [ %31, %25 ], [ -1, %11 ], [ -1, %1130 ], [ %1129, %1124 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %1132
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzgetc_(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1131, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1131

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
  br i1 %14, label %1131, label %15

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
  br label %1131

32:                                               ; preds = %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %34 = load i64, ptr %33, align 8, !tbaa !18
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %490, label %36

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

55:                                               ; preds = %487, %36
  %56 = phi i64 [ %488, %487 ], [ %34, %36 ]
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
  br label %487

81:                                               ; preds = %55
  %82 = load i32, ptr %39, align 8, !tbaa !24
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %40, align 8, !tbaa !25
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %490, label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %484, %87
  %89 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %89, label %472 [
    i32 0, label %90
    i32 1, label %328
    i32 2, label %372
  ]

90:                                               ; preds = %88
  %91 = load i32, ptr %42, align 8, !tbaa !27
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %90
  %94 = load i32, ptr %52, align 4, !tbaa !28
  %95 = zext i32 %94 to i64
  %96 = tail call noalias ptr @malloc(i64 noundef %95) #16
  store ptr %96, ptr %47, align 8, !tbaa !29
  %97 = load i32, ptr %52, align 4, !tbaa !28
  %98 = shl i32 %97, 1
  %99 = zext i32 %98 to i64
  %100 = tail call noalias ptr @malloc(i64 noundef %99) #16
  store ptr %100, ptr %44, align 8, !tbaa !30
  %101 = icmp eq ptr %96, null
  %102 = icmp eq ptr %100, null
  %103 = or i1 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  tail call void @free(ptr noundef %100) #13
  tail call void @free(ptr noundef %96) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1130

105:                                              ; preds = %93
  %106 = load i32, ptr %52, align 4, !tbaa !28
  store i32 %106, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %40, align 8, !tbaa !25
  store ptr null, ptr %46, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  %107 = tail call i32 @inflateInit2_(ptr noundef nonnull %46, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = load ptr, ptr %44, align 8, !tbaa !30
  tail call void @free(ptr noundef %110) #13
  %111 = load ptr, ptr %47, align 8, !tbaa !29
  tail call void @free(ptr noundef %111) #13
  store i32 0, ptr %42, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1130

112:                                              ; preds = %105, %90
  %113 = load i32, ptr %54, align 8, !tbaa !32
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i32, ptr %50, align 4, !tbaa !33
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115, %112
  %119 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  %120 = load i32, ptr %50, align 4, !tbaa !33
  %121 = icmp ne i32 %120, -1
  %122 = zext i1 %121 to i32
  store i32 %122, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %54, align 8, !tbaa !32
  br label %325

123:                                              ; preds = %115
  %124 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %124, label %1130 [
    i32 0, label %125
    i32 -5, label %125
  ]

125:                                              ; preds = %123, %123
  %126 = load i32, ptr %39, align 8, !tbaa !24
  %127 = icmp eq i32 %126, 0
  %128 = load i32, ptr %40, align 8, !tbaa !34
  br i1 %127, label %129, label %293

129:                                              ; preds = %125
  %130 = icmp eq i32 %128, 0
  br i1 %130, label %237, label %131

131:                                              ; preds = %129
  %132 = load ptr, ptr %47, align 8, !tbaa !29
  %133 = load ptr, ptr %46, align 8, !tbaa !35
  %134 = icmp eq ptr %133, %132
  br i1 %134, label %237, label %135

135:                                              ; preds = %131
  %136 = ptrtoaddr ptr %133 to i64
  %137 = ptrtoaddr ptr %132 to i64
  %138 = zext i32 %128 to i64
  %139 = icmp ult i32 %128, 4
  %140 = sub i64 %137, %136
  %141 = icmp ult i64 %140, 32
  %142 = or i1 %139, %141
  br i1 %142, label %182, label %143

143:                                              ; preds = %135
  %144 = icmp ult i32 %128, 32
  br i1 %144, label %166, label %145

145:                                              ; preds = %143
  %146 = and i64 %138, 28
  %147 = and i64 %138, 4294967264
  %148 = getelementptr i8, ptr %132, i64 %147
  %149 = getelementptr i8, ptr %133, i64 %147
  %150 = trunc nuw i64 %147 to i32
  %151 = sub i32 %128, %150
  br label %152

152:                                              ; preds = %152, %145
  %153 = phi i64 [ 0, %145 ], [ %160, %152 ]
  %154 = getelementptr i8, ptr %132, i64 %153
  %155 = getelementptr i8, ptr %133, i64 %153
  %156 = getelementptr i8, ptr %155, i64 16
  %157 = load <16 x i8>, ptr %155, align 1, !tbaa !36
  %158 = load <16 x i8>, ptr %156, align 1, !tbaa !36
  %159 = getelementptr i8, ptr %154, i64 16
  store <16 x i8> %157, ptr %154, align 1, !tbaa !36
  store <16 x i8> %158, ptr %159, align 1, !tbaa !36
  %160 = add nuw i64 %153, 32
  %161 = icmp eq i64 %160, %147
  br i1 %161, label %162, label %152, !llvm.loop !78

162:                                              ; preds = %152
  %163 = icmp eq i64 %147, %138
  br i1 %163, label %235, label %164

164:                                              ; preds = %162
  %165 = icmp eq i64 %146, 0
  br i1 %165, label %182, label %166, !prof !41

166:                                              ; preds = %164, %143
  %167 = phi i64 [ %147, %164 ], [ 0, %143 ]
  %168 = and i64 %138, 4294967292
  %169 = getelementptr i8, ptr %132, i64 %168
  %170 = getelementptr i8, ptr %133, i64 %168
  %171 = trunc nuw i64 %168 to i32
  %172 = sub i32 %128, %171
  br label %173

173:                                              ; preds = %173, %166
  %174 = phi i64 [ %167, %166 ], [ %178, %173 ]
  %175 = getelementptr i8, ptr %132, i64 %174
  %176 = getelementptr i8, ptr %133, i64 %174
  %177 = load <4 x i8>, ptr %176, align 1, !tbaa !36
  store <4 x i8> %177, ptr %175, align 1, !tbaa !36
  %178 = add nuw i64 %174, 4
  %179 = icmp eq i64 %178, %168
  br i1 %179, label %180, label %173, !llvm.loop !79

180:                                              ; preds = %173
  %181 = icmp eq i64 %168, %138
  br i1 %181, label %235, label %182

182:                                              ; preds = %180, %164, %135
  %183 = phi ptr [ %132, %135 ], [ %148, %164 ], [ %169, %180 ]
  %184 = phi ptr [ %133, %135 ], [ %149, %164 ], [ %170, %180 ]
  %185 = phi i32 [ %128, %135 ], [ %151, %164 ], [ %172, %180 ]
  %186 = add i32 %185, -1
  %187 = and i32 %185, 7
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %200, label %189

189:                                              ; preds = %189, %182
  %190 = phi ptr [ %196, %189 ], [ %183, %182 ]
  %191 = phi ptr [ %197, %189 ], [ %184, %182 ]
  %192 = phi i32 [ %195, %189 ], [ %185, %182 ]
  %193 = phi i32 [ %198, %189 ], [ 0, %182 ]
  %194 = load i8, ptr %191, align 1, !tbaa !36
  store i8 %194, ptr %190, align 1, !tbaa !36
  %195 = add i32 %192, -1
  %196 = getelementptr inbounds nuw i8, ptr %190, i64 1
  %197 = getelementptr inbounds nuw i8, ptr %191, i64 1
  %198 = add i32 %193, 1
  %199 = icmp eq i32 %198, %187
  br i1 %199, label %200, label %189, !llvm.loop !80

200:                                              ; preds = %189, %182
  %201 = phi ptr [ %183, %182 ], [ %196, %189 ]
  %202 = phi ptr [ %184, %182 ], [ %197, %189 ]
  %203 = phi i32 [ %185, %182 ], [ %195, %189 ]
  %204 = icmp ult i32 %186, 7
  br i1 %204, label %235, label %205

205:                                              ; preds = %205, %200
  %206 = phi ptr [ %232, %205 ], [ %201, %200 ]
  %207 = phi ptr [ %233, %205 ], [ %202, %200 ]
  %208 = phi i32 [ %231, %205 ], [ %203, %200 ]
  %209 = load i8, ptr %207, align 1, !tbaa !36
  store i8 %209, ptr %206, align 1, !tbaa !36
  %210 = getelementptr inbounds nuw i8, ptr %206, i64 1
  %211 = getelementptr inbounds nuw i8, ptr %207, i64 1
  %212 = load i8, ptr %211, align 1, !tbaa !36
  store i8 %212, ptr %210, align 1, !tbaa !36
  %213 = getelementptr inbounds nuw i8, ptr %206, i64 2
  %214 = getelementptr inbounds nuw i8, ptr %207, i64 2
  %215 = load i8, ptr %214, align 1, !tbaa !36
  store i8 %215, ptr %213, align 1, !tbaa !36
  %216 = getelementptr inbounds nuw i8, ptr %206, i64 3
  %217 = getelementptr inbounds nuw i8, ptr %207, i64 3
  %218 = load i8, ptr %217, align 1, !tbaa !36
  store i8 %218, ptr %216, align 1, !tbaa !36
  %219 = getelementptr inbounds nuw i8, ptr %206, i64 4
  %220 = getelementptr inbounds nuw i8, ptr %207, i64 4
  %221 = load i8, ptr %220, align 1, !tbaa !36
  store i8 %221, ptr %219, align 1, !tbaa !36
  %222 = getelementptr inbounds nuw i8, ptr %206, i64 5
  %223 = getelementptr inbounds nuw i8, ptr %207, i64 5
  %224 = load i8, ptr %223, align 1, !tbaa !36
  store i8 %224, ptr %222, align 1, !tbaa !36
  %225 = getelementptr inbounds nuw i8, ptr %206, i64 6
  %226 = getelementptr inbounds nuw i8, ptr %207, i64 6
  %227 = load i8, ptr %226, align 1, !tbaa !36
  store i8 %227, ptr %225, align 1, !tbaa !36
  %228 = getelementptr inbounds nuw i8, ptr %206, i64 7
  %229 = getelementptr inbounds nuw i8, ptr %207, i64 7
  %230 = load i8, ptr %229, align 1, !tbaa !36
  store i8 %230, ptr %228, align 1, !tbaa !36
  %231 = add i32 %208, -8
  %232 = getelementptr inbounds nuw i8, ptr %206, i64 8
  %233 = getelementptr inbounds nuw i8, ptr %207, i64 8
  %234 = icmp eq i32 %231, 0
  br i1 %234, label %235, label %205, !llvm.loop !81

235:                                              ; preds = %205, %200, %180, %162
  %236 = load i32, ptr %40, align 8, !tbaa !34
  br label %237

237:                                              ; preds = %235, %131, %129
  %238 = phi i32 [ %236, %235 ], [ %128, %131 ], [ 0, %129 ]
  %239 = load i32, ptr %42, align 8, !tbaa !27
  %240 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %239, i32 %238), !nosanitize !20
  %241 = extractvalue { i32, i1 } %240, 1, !nosanitize !20
  br i1 %241, label %242, label %243, !prof !21, !nosanitize !20

242:                                              ; preds = %237
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

243:                                              ; preds = %237
  %244 = extractvalue { i32, i1 } %240, 0, !nosanitize !20
  %245 = load ptr, ptr %47, align 8, !tbaa !29
  %246 = zext i32 %238 to i64
  %247 = getelementptr inbounds nuw i8, ptr %245, i64 %246
  store i32 0, ptr %48, align 4, !tbaa !17
  %248 = tail call ptr @__errno_location() #17
  store i32 0, ptr %248, align 4, !tbaa !4
  br label %249

249:                                              ; preds = %268, %243
  %250 = phi i32 [ 0, %243 ], [ %269, %268 ]
  %251 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %244, i32 %250), !nosanitize !20
  %252 = extractvalue { i32, i1 } %251, 1, !nosanitize !20
  br i1 %252, label %253, label %254, !prof !21, !nosanitize !20

253:                                              ; preds = %249
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

254:                                              ; preds = %249
  %255 = extractvalue { i32, i1 } %251, 0, !nosanitize !20
  %256 = tail call i32 @llvm.umin.i32(i32 %255, i32 1073741824)
  %257 = load i32, ptr %49, align 4, !tbaa !46
  %258 = zext i32 %250 to i64
  %259 = getelementptr inbounds nuw i8, ptr %247, i64 %258
  %260 = zext nneg i32 %256 to i64
  %261 = tail call i64 @read(i32 noundef %257, ptr noundef %259, i64 noundef %260) #13
  %262 = trunc i64 %261 to i32
  %263 = icmp slt i32 %262, 1
  br i1 %263, label %271, label %264

264:                                              ; preds = %254
  %265 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %250, i32 %262), !nosanitize !20
  %266 = extractvalue { i32, i1 } %265, 1, !nosanitize !20
  br i1 %266, label %267, label %268, !prof !21, !nosanitize !20

267:                                              ; preds = %264
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

268:                                              ; preds = %264
  %269 = extractvalue { i32, i1 } %265, 0, !nosanitize !20
  %270 = icmp ult i32 %269, %244
  br i1 %270, label %249, label %284, !llvm.loop !47

271:                                              ; preds = %254
  %272 = icmp slt i32 %262, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %271
  %274 = load i32, ptr %248, align 4, !tbaa !4
  %275 = icmp eq i32 %274, 11
  br i1 %275, label %276, label %281

276:                                              ; preds = %273
  store i32 1, ptr %48, align 4, !tbaa !17
  %277 = icmp eq i32 %250, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %276
  %279 = load i32, ptr %248, align 4, !tbaa !4
  br label %281

280:                                              ; preds = %271
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %284

281:                                              ; preds = %278, %273
  %282 = phi i32 [ %279, %278 ], [ %274, %273 ]
  %283 = tail call ptr @strerror(i32 noundef %282) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %283) #13
  br label %1130

284:                                              ; preds = %280, %276, %268
  %285 = phi i32 [ %250, %276 ], [ %250, %280 ], [ %269, %268 ]
  %286 = load i32, ptr %40, align 8, !tbaa !34
  %287 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %286, i32 %285), !nosanitize !20
  %288 = extractvalue { i32, i1 } %287, 1, !nosanitize !20
  br i1 %288, label %289, label %290, !prof !21, !nosanitize !20

289:                                              ; preds = %284
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

290:                                              ; preds = %284
  %291 = extractvalue { i32, i1 } %287, 0, !nosanitize !20
  store i32 %291, ptr %40, align 8, !tbaa !34
  %292 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %292, ptr %46, align 8, !tbaa !35
  br label %293

293:                                              ; preds = %290, %125
  %294 = phi i32 [ %291, %290 ], [ %128, %125 ]
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %325, label %296

296:                                              ; preds = %293
  %297 = load i32, ptr %48, align 4, !tbaa !17
  %298 = icmp ne i32 %297, 0
  %299 = icmp ult i32 %294, 4
  %300 = and i1 %299, %298
  br i1 %300, label %325, label %301

301:                                              ; preds = %296
  %302 = icmp ugt i32 %294, 3
  %303 = load ptr, ptr %46, align 8, !tbaa !35
  br i1 %302, label %304, label %321

304:                                              ; preds = %301
  %305 = load i8, ptr %303, align 1, !tbaa !36
  %306 = icmp eq i8 %305, 31
  br i1 %306, label %307, label %321

307:                                              ; preds = %304
  %308 = getelementptr inbounds nuw i8, ptr %303, i64 1
  %309 = load i8, ptr %308, align 1, !tbaa !36
  %310 = icmp eq i8 %309, -117
  br i1 %310, label %311, label %321

311:                                              ; preds = %307
  %312 = getelementptr inbounds nuw i8, ptr %303, i64 2
  %313 = load i8, ptr %312, align 1, !tbaa !36
  %314 = icmp eq i8 %313, 8
  br i1 %314, label %315, label %321

315:                                              ; preds = %311
  %316 = getelementptr inbounds nuw i8, ptr %303, i64 3
  %317 = load i8, ptr %316, align 1, !tbaa !36
  %318 = icmp ult i8 %317, 32
  br i1 %318, label %319, label %321

319:                                              ; preds = %315
  %320 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  store i32 1, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %54, align 8, !tbaa !32
  br label %473

321:                                              ; preds = %315, %311, %307, %304, %301
  %322 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %322, ptr %37, align 8, !tbaa !22
  %323 = zext i32 %294 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %322, ptr align 1 %303, i64 %323, i1 false)
  %324 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %324, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %475

325:                                              ; preds = %296, %293, %118
  %326 = load i32, ptr %41, align 8, !tbaa !26
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %485, label %473

328:                                              ; preds = %88
  %329 = load ptr, ptr %44, align 8, !tbaa !30
  %330 = load i32, ptr %42, align 8, !tbaa !27
  %331 = shl i32 %330, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %332 = tail call ptr @__errno_location() #17
  store i32 0, ptr %332, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %333

333:                                              ; preds = %353, %328
  %334 = phi i32 [ %354, %353 ], [ 0, %328 ]
  %335 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %331, i32 %334), !nosanitize !20
  %336 = extractvalue { i32, i1 } %335, 1, !nosanitize !20
  br i1 %336, label %337, label %338, !prof !21, !nosanitize !20

337:                                              ; preds = %333
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

338:                                              ; preds = %333
  %339 = extractvalue { i32, i1 } %335, 0, !nosanitize !20
  %340 = tail call i32 @llvm.umin.i32(i32 %339, i32 1073741824)
  %341 = load i32, ptr %49, align 4, !tbaa !46
  %342 = zext i32 %334 to i64
  %343 = getelementptr inbounds nuw i8, ptr %329, i64 %342
  %344 = zext nneg i32 %340 to i64
  %345 = tail call i64 @read(i32 noundef %341, ptr noundef %343, i64 noundef %344) #13
  %346 = trunc i64 %345 to i32
  %347 = icmp slt i32 %346, 1
  br i1 %347, label %356, label %348

348:                                              ; preds = %338
  %349 = load i32, ptr %0, align 4, !tbaa !4
  %350 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %349, i32 %346), !nosanitize !20
  %351 = extractvalue { i32, i1 } %350, 1, !nosanitize !20
  br i1 %351, label %352, label %353, !prof !21, !nosanitize !20

352:                                              ; preds = %348
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

353:                                              ; preds = %348
  %354 = extractvalue { i32, i1 } %350, 0, !nosanitize !20
  store i32 %354, ptr %0, align 4, !tbaa !4
  %355 = icmp ult i32 %354, %331
  br i1 %355, label %333, label %370, !llvm.loop !47

356:                                              ; preds = %338
  %357 = icmp slt i32 %346, 0
  br i1 %357, label %358, label %366

358:                                              ; preds = %356
  %359 = load i32, ptr %332, align 4, !tbaa !4
  %360 = icmp eq i32 %359, 11
  br i1 %360, label %361, label %367

361:                                              ; preds = %358
  store i32 1, ptr %48, align 4, !tbaa !17
  %362 = load i32, ptr %0, align 4, !tbaa !4
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %361
  %365 = load i32, ptr %332, align 4, !tbaa !4
  br label %367

366:                                              ; preds = %356
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %370

367:                                              ; preds = %364, %358
  %368 = phi i32 [ %365, %364 ], [ %359, %358 ]
  %369 = tail call ptr @strerror(i32 noundef %368) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %369) #13
  br label %1130

370:                                              ; preds = %366, %361, %353
  %371 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %371, ptr %37, align 8, !tbaa !22
  br label %485

372:                                              ; preds = %88
  %373 = load i32, ptr %42, align 8, !tbaa !27
  %374 = shl i32 %373, 1
  store i32 %374, ptr %43, align 8, !tbaa !48
  %375 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %375, ptr %45, align 8, !tbaa !49
  br label %376

376:                                              ; preds = %455, %372
  %377 = phi i32 [ 0, %372 ], [ %440, %455 ]
  %378 = load i32, ptr %40, align 8, !tbaa !34
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %439

380:                                              ; preds = %376
  %381 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %381, label %459 [
    i32 0, label %382
    i32 -5, label %382
  ]

382:                                              ; preds = %380, %380
  %383 = load i32, ptr %39, align 8, !tbaa !24
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %435

385:                                              ; preds = %382
  %386 = load i32, ptr %42, align 8, !tbaa !27
  %387 = load ptr, ptr %47, align 8, !tbaa !29
  store i32 0, ptr %48, align 4, !tbaa !17
  %388 = tail call ptr @__errno_location() #17
  store i32 0, ptr %388, align 4, !tbaa !4
  br label %389

389:                                              ; preds = %408, %385
  %390 = phi i32 [ 0, %385 ], [ %409, %408 ]
  %391 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %386, i32 %390), !nosanitize !20
  %392 = extractvalue { i32, i1 } %391, 1, !nosanitize !20
  br i1 %392, label %393, label %394, !prof !21, !nosanitize !20

393:                                              ; preds = %389
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

394:                                              ; preds = %389
  %395 = extractvalue { i32, i1 } %391, 0, !nosanitize !20
  %396 = tail call i32 @llvm.umin.i32(i32 %395, i32 1073741824)
  %397 = load i32, ptr %49, align 4, !tbaa !46
  %398 = zext i32 %390 to i64
  %399 = getelementptr inbounds nuw i8, ptr %387, i64 %398
  %400 = zext nneg i32 %396 to i64
  %401 = tail call i64 @read(i32 noundef %397, ptr noundef %399, i64 noundef %400) #13
  %402 = trunc i64 %401 to i32
  %403 = icmp slt i32 %402, 1
  br i1 %403, label %411, label %404

404:                                              ; preds = %394
  %405 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %390, i32 %402), !nosanitize !20
  %406 = extractvalue { i32, i1 } %405, 1, !nosanitize !20
  br i1 %406, label %407, label %408, !prof !21, !nosanitize !20

407:                                              ; preds = %404
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

408:                                              ; preds = %404
  %409 = extractvalue { i32, i1 } %405, 0, !nosanitize !20
  %410 = icmp ult i32 %409, %386
  br i1 %410, label %389, label %425, !llvm.loop !47

411:                                              ; preds = %394
  %412 = icmp slt i32 %402, 0
  br i1 %412, label %413, label %420

413:                                              ; preds = %411
  %414 = load i32, ptr %388, align 4, !tbaa !4
  %415 = icmp eq i32 %414, 11
  br i1 %415, label %416, label %421

416:                                              ; preds = %413
  store i32 1, ptr %48, align 4, !tbaa !17
  %417 = icmp eq i32 %390, 0
  br i1 %417, label %418, label %425

418:                                              ; preds = %416
  %419 = load i32, ptr %388, align 4, !tbaa !4
  br label %421

420:                                              ; preds = %411
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %425

421:                                              ; preds = %418, %413
  %422 = phi i32 [ %419, %418 ], [ %414, %413 ]
  %423 = tail call ptr @strerror(i32 noundef %422) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %423) #13
  %424 = load i32, ptr %9, align 8, !tbaa !16
  br label %459

425:                                              ; preds = %420, %416, %408
  %426 = phi i32 [ %390, %416 ], [ %390, %420 ], [ %409, %408 ]
  %427 = load i32, ptr %40, align 8, !tbaa !34
  %428 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %427, i32 %426), !nosanitize !20
  %429 = extractvalue { i32, i1 } %428, 1, !nosanitize !20
  br i1 %429, label %430, label %431, !prof !21, !nosanitize !20

430:                                              ; preds = %425
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

431:                                              ; preds = %425
  %432 = extractvalue { i32, i1 } %428, 0, !nosanitize !20
  store i32 %432, ptr %40, align 8, !tbaa !34
  %433 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %433, ptr %46, align 8, !tbaa !35
  %434 = icmp eq i32 %432, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %431, %382
  %436 = load i32, ptr %48, align 4, !tbaa !17
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %459

438:                                              ; preds = %435
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %459

439:                                              ; preds = %431, %376
  %440 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %441 = load i32, ptr %43, align 8, !tbaa !48
  %442 = icmp ult i32 %441, %374
  br i1 %442, label %443, label %444

443:                                              ; preds = %439
  store i32 0, ptr %50, align 4, !tbaa !33
  br label %444

444:                                              ; preds = %443, %439
  switch i32 %440, label %455 [
    i32 -2, label %445
    i32 2, label %445
    i32 -4, label %446
    i32 -3, label %447
  ]

445:                                              ; preds = %444, %444
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %459

446:                                              ; preds = %444
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %459

447:                                              ; preds = %444
  %448 = load i32, ptr %50, align 4, !tbaa !33
  %449 = icmp eq i32 %448, 1
  br i1 %449, label %450, label %451

450:                                              ; preds = %447
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %459

451:                                              ; preds = %447
  %452 = load ptr, ptr %51, align 8, !tbaa !50
  %453 = icmp eq ptr %452, null
  %454 = select i1 %453, ptr @.str.6, ptr %452
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %454) #13
  br label %459

455:                                              ; preds = %444
  %456 = icmp ne i32 %441, 0
  %457 = icmp ne i32 %440, 1
  %458 = select i1 %456, i1 %457, i1 false
  br i1 %458, label %376, label %459, !llvm.loop !51

459:                                              ; preds = %455, %451, %450, %446, %445, %438, %435, %421, %380
  %460 = phi i32 [ %424, %421 ], [ %377, %435 ], [ %377, %438 ], [ %440, %445 ], [ -4, %446 ], [ 0, %450 ], [ -3, %451 ], [ %381, %380 ], [ %440, %455 ]
  %461 = load i32, ptr %43, align 8, !tbaa !48
  %462 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %374, i32 %461), !nosanitize !20
  %463 = extractvalue { i32, i1 } %462, 1, !nosanitize !20
  br i1 %463, label %464, label %465, !prof !21, !nosanitize !20

464:                                              ; preds = %459
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

465:                                              ; preds = %459
  %466 = extractvalue { i32, i1 } %462, 0, !nosanitize !20
  store i32 %466, ptr %0, align 8, !tbaa !19
  %467 = load ptr, ptr %45, align 8, !tbaa !49
  %468 = zext i32 %466 to i64
  %469 = sub nsw i64 0, %468
  %470 = getelementptr inbounds i8, ptr %467, i64 %469
  store ptr %470, ptr %37, align 8, !tbaa !22
  switch i32 %460, label %1130 [
    i32 1, label %471
    i32 0, label %473
  ]

471:                                              ; preds = %465
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %473

472:                                              ; preds = %88
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1130

473:                                              ; preds = %471, %465, %325, %319
  %474 = load i32, ptr %0, align 8, !tbaa !19
  br label %475

475:                                              ; preds = %473, %321
  %476 = phi i32 [ %474, %473 ], [ %324, %321 ]
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %485

478:                                              ; preds = %475
  %479 = load i32, ptr %39, align 8, !tbaa !24
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %484, label %481

481:                                              ; preds = %478
  %482 = load i32, ptr %40, align 8, !tbaa !34
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %485, label %484

484:                                              ; preds = %481, %478
  br label %88, !llvm.loop !52

485:                                              ; preds = %481, %475, %370, %325
  %486 = load i64, ptr %33, align 8, !tbaa !18
  br label %487

487:                                              ; preds = %485, %79
  %488 = phi i64 [ %486, %485 ], [ %80, %79 ]
  %489 = icmp eq i64 %488, 0
  br i1 %489, label %490, label %55, !llvm.loop !53

490:                                              ; preds = %487, %84, %32
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %492 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %493 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %495 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %496 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %497 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %498 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %499 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %500 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %501 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %502 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %503 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %504 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %505 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %506 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %507 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %508 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %509

509:                                              ; preds = %1112, %490
  %510 = phi ptr [ %2, %490 ], [ %1116, %1112 ]
  %511 = phi i64 [ 1, %490 ], [ %1115, %1112 ]
  %512 = phi i64 [ 0, %490 ], [ %1114, %1112 ]
  %513 = call i64 @llvm.umin.i64(i64 %511, i64 4294967295)
  %514 = trunc nuw i64 %513 to i32
  %515 = load i32, ptr %0, align 8, !tbaa !19
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %532, label %517

517:                                              ; preds = %509
  %518 = call i32 @llvm.umin.i32(i32 %515, i32 %514)
  %519 = load ptr, ptr %491, align 8, !tbaa !22
  %520 = zext i32 %518 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %510, ptr align 1 %519, i64 %520, i1 false)
  %521 = load ptr, ptr %491, align 8, !tbaa !22
  %522 = getelementptr inbounds nuw i8, ptr %521, i64 %520
  store ptr %522, ptr %491, align 8, !tbaa !22
  %523 = load i32, ptr %0, align 8, !tbaa !19
  %524 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %523, i32 %518), !nosanitize !20
  %525 = extractvalue { i32, i1 } %524, 1, !nosanitize !20
  br i1 %525, label %526, label %527, !prof !21, !nosanitize !20

526:                                              ; preds = %517
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

527:                                              ; preds = %517
  %528 = extractvalue { i32, i1 } %524, 0, !nosanitize !20
  store i32 %528, ptr %0, align 8, !tbaa !19
  %529 = load i32, ptr %9, align 8, !tbaa !16
  %530 = icmp ne i32 %529, 0
  %531 = sext i1 %530 to i32
  br label %1092

532:                                              ; preds = %509
  %533 = load i32, ptr %492, align 8, !tbaa !24
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %538, label %535

535:                                              ; preds = %532
  %536 = load i32, ptr %493, align 8, !tbaa !25
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %1121, label %538

538:                                              ; preds = %535, %532
  %539 = load i32, ptr %494, align 8, !tbaa !26
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %545, label %541

541:                                              ; preds = %538
  %542 = load i32, ptr %495, align 8, !tbaa !27
  %543 = shl i32 %542, 1
  %544 = icmp ugt i32 %543, %514
  br i1 %544, label %545, label %948

545:                                              ; preds = %541, %538
  br label %546

546:                                              ; preds = %942, %545
  %547 = phi i32 [ %943, %942 ], [ %539, %545 ]
  switch i32 %547, label %930 [
    i32 0, label %548
    i32 1, label %786
    i32 2, label %830
  ]

548:                                              ; preds = %546
  %549 = load i32, ptr %495, align 8, !tbaa !27
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %570

551:                                              ; preds = %548
  %552 = load i32, ptr %506, align 4, !tbaa !28
  %553 = zext i32 %552 to i64
  %554 = call noalias ptr @malloc(i64 noundef %553) #16
  store ptr %554, ptr %499, align 8, !tbaa !29
  %555 = load i32, ptr %506, align 4, !tbaa !28
  %556 = shl i32 %555, 1
  %557 = zext i32 %556 to i64
  %558 = call noalias ptr @malloc(i64 noundef %557) #16
  store ptr %558, ptr %505, align 8, !tbaa !30
  %559 = icmp eq ptr %554, null
  %560 = icmp eq ptr %558, null
  %561 = or i1 %559, %560
  br i1 %561, label %562, label %563

562:                                              ; preds = %551
  call void @free(ptr noundef %558) #13
  call void @free(ptr noundef %554) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %944

563:                                              ; preds = %551
  %564 = load i32, ptr %506, align 4, !tbaa !28
  store i32 %564, ptr %495, align 8, !tbaa !27
  store i32 0, ptr %493, align 8, !tbaa !25
  store ptr null, ptr %498, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %507, i8 0, i64 24, i1 false)
  %565 = call i32 @inflateInit2_(ptr noundef nonnull %498, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %570, label %567

567:                                              ; preds = %563
  %568 = load ptr, ptr %505, align 8, !tbaa !30
  call void @free(ptr noundef %568) #13
  %569 = load ptr, ptr %499, align 8, !tbaa !29
  call void @free(ptr noundef %569) #13
  store i32 0, ptr %495, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %944

570:                                              ; preds = %563, %548
  %571 = load i32, ptr %508, align 8, !tbaa !32
  %572 = icmp eq i32 %571, -1
  br i1 %572, label %576, label %573

573:                                              ; preds = %570
  %574 = load i32, ptr %502, align 4, !tbaa !33
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %581

576:                                              ; preds = %573, %570
  %577 = call i32 @inflateReset(ptr noundef nonnull %498) #13
  store i32 2, ptr %494, align 8, !tbaa !26
  %578 = load i32, ptr %502, align 4, !tbaa !33
  %579 = icmp ne i32 %578, -1
  %580 = zext i1 %579 to i32
  store i32 %580, ptr %502, align 4, !tbaa !33
  store i32 0, ptr %508, align 8, !tbaa !32
  br label %783

581:                                              ; preds = %573
  %582 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %582, label %944 [
    i32 0, label %583
    i32 -5, label %583
  ]

583:                                              ; preds = %581, %581
  %584 = load i32, ptr %492, align 8, !tbaa !24
  %585 = icmp eq i32 %584, 0
  %586 = load i32, ptr %493, align 8, !tbaa !34
  br i1 %585, label %587, label %751

587:                                              ; preds = %583
  %588 = icmp eq i32 %586, 0
  br i1 %588, label %695, label %589

589:                                              ; preds = %587
  %590 = load ptr, ptr %499, align 8, !tbaa !29
  %591 = load ptr, ptr %498, align 8, !tbaa !35
  %592 = icmp eq ptr %591, %590
  br i1 %592, label %695, label %593

593:                                              ; preds = %589
  %594 = ptrtoaddr ptr %591 to i64
  %595 = ptrtoaddr ptr %590 to i64
  %596 = zext i32 %586 to i64
  %597 = icmp ult i32 %586, 4
  %598 = sub i64 %595, %594
  %599 = icmp ult i64 %598, 32
  %600 = or i1 %597, %599
  br i1 %600, label %640, label %601

601:                                              ; preds = %593
  %602 = icmp ult i32 %586, 32
  br i1 %602, label %624, label %603

603:                                              ; preds = %601
  %604 = and i64 %596, 28
  %605 = and i64 %596, 4294967264
  %606 = getelementptr i8, ptr %590, i64 %605
  %607 = getelementptr i8, ptr %591, i64 %605
  %608 = trunc nuw i64 %605 to i32
  %609 = sub i32 %586, %608
  br label %610

610:                                              ; preds = %610, %603
  %611 = phi i64 [ 0, %603 ], [ %618, %610 ]
  %612 = getelementptr i8, ptr %590, i64 %611
  %613 = getelementptr i8, ptr %591, i64 %611
  %614 = getelementptr i8, ptr %613, i64 16
  %615 = load <16 x i8>, ptr %613, align 1, !tbaa !36
  %616 = load <16 x i8>, ptr %614, align 1, !tbaa !36
  %617 = getelementptr i8, ptr %612, i64 16
  store <16 x i8> %615, ptr %612, align 1, !tbaa !36
  store <16 x i8> %616, ptr %617, align 1, !tbaa !36
  %618 = add nuw i64 %611, 32
  %619 = icmp eq i64 %618, %605
  br i1 %619, label %620, label %610, !llvm.loop !82

620:                                              ; preds = %610
  %621 = icmp eq i64 %605, %596
  br i1 %621, label %693, label %622

622:                                              ; preds = %620
  %623 = icmp eq i64 %604, 0
  br i1 %623, label %640, label %624, !prof !41

624:                                              ; preds = %622, %601
  %625 = phi i64 [ %605, %622 ], [ 0, %601 ]
  %626 = and i64 %596, 4294967292
  %627 = getelementptr i8, ptr %590, i64 %626
  %628 = getelementptr i8, ptr %591, i64 %626
  %629 = trunc nuw i64 %626 to i32
  %630 = sub i32 %586, %629
  br label %631

631:                                              ; preds = %631, %624
  %632 = phi i64 [ %625, %624 ], [ %636, %631 ]
  %633 = getelementptr i8, ptr %590, i64 %632
  %634 = getelementptr i8, ptr %591, i64 %632
  %635 = load <4 x i8>, ptr %634, align 1, !tbaa !36
  store <4 x i8> %635, ptr %633, align 1, !tbaa !36
  %636 = add nuw i64 %632, 4
  %637 = icmp eq i64 %636, %626
  br i1 %637, label %638, label %631, !llvm.loop !83

638:                                              ; preds = %631
  %639 = icmp eq i64 %626, %596
  br i1 %639, label %693, label %640

640:                                              ; preds = %638, %622, %593
  %641 = phi ptr [ %590, %593 ], [ %606, %622 ], [ %627, %638 ]
  %642 = phi ptr [ %591, %593 ], [ %607, %622 ], [ %628, %638 ]
  %643 = phi i32 [ %586, %593 ], [ %609, %622 ], [ %630, %638 ]
  %644 = add i32 %643, -1
  %645 = and i32 %643, 7
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %658, label %647

647:                                              ; preds = %647, %640
  %648 = phi ptr [ %654, %647 ], [ %641, %640 ]
  %649 = phi ptr [ %655, %647 ], [ %642, %640 ]
  %650 = phi i32 [ %653, %647 ], [ %643, %640 ]
  %651 = phi i32 [ %656, %647 ], [ 0, %640 ]
  %652 = load i8, ptr %649, align 1, !tbaa !36
  store i8 %652, ptr %648, align 1, !tbaa !36
  %653 = add i32 %650, -1
  %654 = getelementptr inbounds nuw i8, ptr %648, i64 1
  %655 = getelementptr inbounds nuw i8, ptr %649, i64 1
  %656 = add i32 %651, 1
  %657 = icmp eq i32 %656, %645
  br i1 %657, label %658, label %647, !llvm.loop !84

658:                                              ; preds = %647, %640
  %659 = phi ptr [ %641, %640 ], [ %654, %647 ]
  %660 = phi ptr [ %642, %640 ], [ %655, %647 ]
  %661 = phi i32 [ %643, %640 ], [ %653, %647 ]
  %662 = icmp ult i32 %644, 7
  br i1 %662, label %693, label %663

663:                                              ; preds = %663, %658
  %664 = phi ptr [ %690, %663 ], [ %659, %658 ]
  %665 = phi ptr [ %691, %663 ], [ %660, %658 ]
  %666 = phi i32 [ %689, %663 ], [ %661, %658 ]
  %667 = load i8, ptr %665, align 1, !tbaa !36
  store i8 %667, ptr %664, align 1, !tbaa !36
  %668 = getelementptr inbounds nuw i8, ptr %664, i64 1
  %669 = getelementptr inbounds nuw i8, ptr %665, i64 1
  %670 = load i8, ptr %669, align 1, !tbaa !36
  store i8 %670, ptr %668, align 1, !tbaa !36
  %671 = getelementptr inbounds nuw i8, ptr %664, i64 2
  %672 = getelementptr inbounds nuw i8, ptr %665, i64 2
  %673 = load i8, ptr %672, align 1, !tbaa !36
  store i8 %673, ptr %671, align 1, !tbaa !36
  %674 = getelementptr inbounds nuw i8, ptr %664, i64 3
  %675 = getelementptr inbounds nuw i8, ptr %665, i64 3
  %676 = load i8, ptr %675, align 1, !tbaa !36
  store i8 %676, ptr %674, align 1, !tbaa !36
  %677 = getelementptr inbounds nuw i8, ptr %664, i64 4
  %678 = getelementptr inbounds nuw i8, ptr %665, i64 4
  %679 = load i8, ptr %678, align 1, !tbaa !36
  store i8 %679, ptr %677, align 1, !tbaa !36
  %680 = getelementptr inbounds nuw i8, ptr %664, i64 5
  %681 = getelementptr inbounds nuw i8, ptr %665, i64 5
  %682 = load i8, ptr %681, align 1, !tbaa !36
  store i8 %682, ptr %680, align 1, !tbaa !36
  %683 = getelementptr inbounds nuw i8, ptr %664, i64 6
  %684 = getelementptr inbounds nuw i8, ptr %665, i64 6
  %685 = load i8, ptr %684, align 1, !tbaa !36
  store i8 %685, ptr %683, align 1, !tbaa !36
  %686 = getelementptr inbounds nuw i8, ptr %664, i64 7
  %687 = getelementptr inbounds nuw i8, ptr %665, i64 7
  %688 = load i8, ptr %687, align 1, !tbaa !36
  store i8 %688, ptr %686, align 1, !tbaa !36
  %689 = add i32 %666, -8
  %690 = getelementptr inbounds nuw i8, ptr %664, i64 8
  %691 = getelementptr inbounds nuw i8, ptr %665, i64 8
  %692 = icmp eq i32 %689, 0
  br i1 %692, label %693, label %663, !llvm.loop !85

693:                                              ; preds = %663, %658, %638, %620
  %694 = load i32, ptr %493, align 8, !tbaa !34
  br label %695

695:                                              ; preds = %693, %589, %587
  %696 = phi i32 [ %694, %693 ], [ %586, %589 ], [ 0, %587 ]
  %697 = load i32, ptr %495, align 8, !tbaa !27
  %698 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %697, i32 %696), !nosanitize !20
  %699 = extractvalue { i32, i1 } %698, 1, !nosanitize !20
  br i1 %699, label %700, label %701, !prof !21, !nosanitize !20

700:                                              ; preds = %695
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

701:                                              ; preds = %695
  %702 = extractvalue { i32, i1 } %698, 0, !nosanitize !20
  %703 = load ptr, ptr %499, align 8, !tbaa !29
  %704 = zext i32 %696 to i64
  %705 = getelementptr inbounds nuw i8, ptr %703, i64 %704
  store i32 0, ptr %500, align 4, !tbaa !17
  %706 = tail call ptr @__errno_location() #17
  store i32 0, ptr %706, align 4, !tbaa !4
  br label %707

707:                                              ; preds = %726, %701
  %708 = phi i32 [ 0, %701 ], [ %727, %726 ]
  %709 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %702, i32 %708), !nosanitize !20
  %710 = extractvalue { i32, i1 } %709, 1, !nosanitize !20
  br i1 %710, label %711, label %712, !prof !21, !nosanitize !20

711:                                              ; preds = %707
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

712:                                              ; preds = %707
  %713 = extractvalue { i32, i1 } %709, 0, !nosanitize !20
  %714 = call i32 @llvm.umin.i32(i32 %713, i32 1073741824)
  %715 = load i32, ptr %501, align 4, !tbaa !46
  %716 = zext i32 %708 to i64
  %717 = getelementptr inbounds nuw i8, ptr %705, i64 %716
  %718 = zext nneg i32 %714 to i64
  %719 = call i64 @read(i32 noundef %715, ptr noundef %717, i64 noundef %718) #13
  %720 = trunc i64 %719 to i32
  %721 = icmp slt i32 %720, 1
  br i1 %721, label %729, label %722

722:                                              ; preds = %712
  %723 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %708, i32 %720), !nosanitize !20
  %724 = extractvalue { i32, i1 } %723, 1, !nosanitize !20
  br i1 %724, label %725, label %726, !prof !21, !nosanitize !20

725:                                              ; preds = %722
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

726:                                              ; preds = %722
  %727 = extractvalue { i32, i1 } %723, 0, !nosanitize !20
  %728 = icmp ult i32 %727, %702
  br i1 %728, label %707, label %742, !llvm.loop !47

729:                                              ; preds = %712
  %730 = icmp slt i32 %720, 0
  br i1 %730, label %731, label %738

731:                                              ; preds = %729
  %732 = load i32, ptr %706, align 4, !tbaa !4
  %733 = icmp eq i32 %732, 11
  br i1 %733, label %734, label %739

734:                                              ; preds = %731
  store i32 1, ptr %500, align 4, !tbaa !17
  %735 = icmp eq i32 %708, 0
  br i1 %735, label %736, label %742

736:                                              ; preds = %734
  %737 = load i32, ptr %706, align 4, !tbaa !4
  br label %739

738:                                              ; preds = %729
  store i32 1, ptr %492, align 8, !tbaa !24
  br label %742

739:                                              ; preds = %736, %731
  %740 = phi i32 [ %737, %736 ], [ %732, %731 ]
  %741 = call ptr @strerror(i32 noundef %740) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %741) #13
  br label %944

742:                                              ; preds = %738, %734, %726
  %743 = phi i32 [ %708, %734 ], [ %708, %738 ], [ %727, %726 ]
  %744 = load i32, ptr %493, align 8, !tbaa !34
  %745 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %744, i32 %743), !nosanitize !20
  %746 = extractvalue { i32, i1 } %745, 1, !nosanitize !20
  br i1 %746, label %747, label %748, !prof !21, !nosanitize !20

747:                                              ; preds = %742
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

748:                                              ; preds = %742
  %749 = extractvalue { i32, i1 } %745, 0, !nosanitize !20
  store i32 %749, ptr %493, align 8, !tbaa !34
  %750 = load ptr, ptr %499, align 8, !tbaa !29
  store ptr %750, ptr %498, align 8, !tbaa !35
  br label %751

751:                                              ; preds = %748, %583
  %752 = phi i32 [ %749, %748 ], [ %586, %583 ]
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %783, label %754

754:                                              ; preds = %751
  %755 = load i32, ptr %500, align 4, !tbaa !17
  %756 = icmp ne i32 %755, 0
  %757 = icmp ult i32 %752, 4
  %758 = and i1 %757, %756
  br i1 %758, label %783, label %759

759:                                              ; preds = %754
  %760 = icmp ugt i32 %752, 3
  %761 = load ptr, ptr %498, align 8, !tbaa !35
  br i1 %760, label %762, label %779

762:                                              ; preds = %759
  %763 = load i8, ptr %761, align 1, !tbaa !36
  %764 = icmp eq i8 %763, 31
  br i1 %764, label %765, label %779

765:                                              ; preds = %762
  %766 = getelementptr inbounds nuw i8, ptr %761, i64 1
  %767 = load i8, ptr %766, align 1, !tbaa !36
  %768 = icmp eq i8 %767, -117
  br i1 %768, label %769, label %779

769:                                              ; preds = %765
  %770 = getelementptr inbounds nuw i8, ptr %761, i64 2
  %771 = load i8, ptr %770, align 1, !tbaa !36
  %772 = icmp eq i8 %771, 8
  br i1 %772, label %773, label %779

773:                                              ; preds = %769
  %774 = getelementptr inbounds nuw i8, ptr %761, i64 3
  %775 = load i8, ptr %774, align 1, !tbaa !36
  %776 = icmp ult i8 %775, 32
  br i1 %776, label %777, label %779

777:                                              ; preds = %773
  %778 = call i32 @inflateReset(ptr noundef nonnull %498) #13
  store i32 2, ptr %494, align 8, !tbaa !26
  store i32 1, ptr %502, align 4, !tbaa !33
  store i32 0, ptr %508, align 8, !tbaa !32
  br label %931

779:                                              ; preds = %773, %769, %765, %762, %759
  %780 = load ptr, ptr %505, align 8, !tbaa !30
  store ptr %780, ptr %491, align 8, !tbaa !22
  %781 = zext i32 %752 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %780, ptr align 1 %761, i64 %781, i1 false)
  %782 = load i32, ptr %493, align 8, !tbaa !34
  store i32 %782, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %493, align 8, !tbaa !34
  store i32 1, ptr %494, align 8, !tbaa !26
  br label %933

783:                                              ; preds = %754, %751, %576
  %784 = load i32, ptr %494, align 8, !tbaa !26
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %1112, label %931

786:                                              ; preds = %546
  %787 = load ptr, ptr %505, align 8, !tbaa !30
  %788 = load i32, ptr %495, align 8, !tbaa !27
  %789 = shl i32 %788, 1
  store i32 0, ptr %500, align 4, !tbaa !17
  %790 = tail call ptr @__errno_location() #17
  store i32 0, ptr %790, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %791

791:                                              ; preds = %811, %786
  %792 = phi i32 [ %812, %811 ], [ 0, %786 ]
  %793 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %789, i32 %792), !nosanitize !20
  %794 = extractvalue { i32, i1 } %793, 1, !nosanitize !20
  br i1 %794, label %795, label %796, !prof !21, !nosanitize !20

795:                                              ; preds = %791
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

796:                                              ; preds = %791
  %797 = extractvalue { i32, i1 } %793, 0, !nosanitize !20
  %798 = call i32 @llvm.umin.i32(i32 %797, i32 1073741824)
  %799 = load i32, ptr %501, align 4, !tbaa !46
  %800 = zext i32 %792 to i64
  %801 = getelementptr inbounds nuw i8, ptr %787, i64 %800
  %802 = zext nneg i32 %798 to i64
  %803 = call i64 @read(i32 noundef %799, ptr noundef %801, i64 noundef %802) #13
  %804 = trunc i64 %803 to i32
  %805 = icmp slt i32 %804, 1
  br i1 %805, label %814, label %806

806:                                              ; preds = %796
  %807 = load i32, ptr %0, align 4, !tbaa !4
  %808 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %807, i32 %804), !nosanitize !20
  %809 = extractvalue { i32, i1 } %808, 1, !nosanitize !20
  br i1 %809, label %810, label %811, !prof !21, !nosanitize !20

810:                                              ; preds = %806
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

811:                                              ; preds = %806
  %812 = extractvalue { i32, i1 } %808, 0, !nosanitize !20
  store i32 %812, ptr %0, align 4, !tbaa !4
  %813 = icmp ult i32 %812, %789
  br i1 %813, label %791, label %828, !llvm.loop !47

814:                                              ; preds = %796
  %815 = icmp slt i32 %804, 0
  br i1 %815, label %816, label %824

816:                                              ; preds = %814
  %817 = load i32, ptr %790, align 4, !tbaa !4
  %818 = icmp eq i32 %817, 11
  br i1 %818, label %819, label %825

819:                                              ; preds = %816
  store i32 1, ptr %500, align 4, !tbaa !17
  %820 = load i32, ptr %0, align 4, !tbaa !4
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %822, label %828

822:                                              ; preds = %819
  %823 = load i32, ptr %790, align 4, !tbaa !4
  br label %825

824:                                              ; preds = %814
  store i32 1, ptr %492, align 8, !tbaa !24
  br label %828

825:                                              ; preds = %822, %816
  %826 = phi i32 [ %823, %822 ], [ %817, %816 ]
  %827 = call ptr @strerror(i32 noundef %826) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %827) #13
  br label %944

828:                                              ; preds = %824, %819, %811
  %829 = load ptr, ptr %505, align 8, !tbaa !30
  store ptr %829, ptr %491, align 8, !tbaa !22
  br label %1112

830:                                              ; preds = %546
  %831 = load i32, ptr %495, align 8, !tbaa !27
  %832 = shl i32 %831, 1
  store i32 %832, ptr %496, align 8, !tbaa !48
  %833 = load ptr, ptr %505, align 8, !tbaa !30
  store ptr %833, ptr %497, align 8, !tbaa !49
  br label %834

834:                                              ; preds = %913, %830
  %835 = phi i32 [ 0, %830 ], [ %898, %913 ]
  %836 = load i32, ptr %493, align 8, !tbaa !34
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %838, label %897

838:                                              ; preds = %834
  %839 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %839, label %917 [
    i32 0, label %840
    i32 -5, label %840
  ]

840:                                              ; preds = %838, %838
  %841 = load i32, ptr %492, align 8, !tbaa !24
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %843, label %893

843:                                              ; preds = %840
  %844 = load i32, ptr %495, align 8, !tbaa !27
  %845 = load ptr, ptr %499, align 8, !tbaa !29
  store i32 0, ptr %500, align 4, !tbaa !17
  %846 = tail call ptr @__errno_location() #17
  store i32 0, ptr %846, align 4, !tbaa !4
  br label %847

847:                                              ; preds = %866, %843
  %848 = phi i32 [ 0, %843 ], [ %867, %866 ]
  %849 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %844, i32 %848), !nosanitize !20
  %850 = extractvalue { i32, i1 } %849, 1, !nosanitize !20
  br i1 %850, label %851, label %852, !prof !21, !nosanitize !20

851:                                              ; preds = %847
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

852:                                              ; preds = %847
  %853 = extractvalue { i32, i1 } %849, 0, !nosanitize !20
  %854 = call i32 @llvm.umin.i32(i32 %853, i32 1073741824)
  %855 = load i32, ptr %501, align 4, !tbaa !46
  %856 = zext i32 %848 to i64
  %857 = getelementptr inbounds nuw i8, ptr %845, i64 %856
  %858 = zext nneg i32 %854 to i64
  %859 = call i64 @read(i32 noundef %855, ptr noundef %857, i64 noundef %858) #13
  %860 = trunc i64 %859 to i32
  %861 = icmp slt i32 %860, 1
  br i1 %861, label %869, label %862

862:                                              ; preds = %852
  %863 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %848, i32 %860), !nosanitize !20
  %864 = extractvalue { i32, i1 } %863, 1, !nosanitize !20
  br i1 %864, label %865, label %866, !prof !21, !nosanitize !20

865:                                              ; preds = %862
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

866:                                              ; preds = %862
  %867 = extractvalue { i32, i1 } %863, 0, !nosanitize !20
  %868 = icmp ult i32 %867, %844
  br i1 %868, label %847, label %883, !llvm.loop !47

869:                                              ; preds = %852
  %870 = icmp slt i32 %860, 0
  br i1 %870, label %871, label %878

871:                                              ; preds = %869
  %872 = load i32, ptr %846, align 4, !tbaa !4
  %873 = icmp eq i32 %872, 11
  br i1 %873, label %874, label %879

874:                                              ; preds = %871
  store i32 1, ptr %500, align 4, !tbaa !17
  %875 = icmp eq i32 %848, 0
  br i1 %875, label %876, label %883

876:                                              ; preds = %874
  %877 = load i32, ptr %846, align 4, !tbaa !4
  br label %879

878:                                              ; preds = %869
  store i32 1, ptr %492, align 8, !tbaa !24
  br label %883

879:                                              ; preds = %876, %871
  %880 = phi i32 [ %877, %876 ], [ %872, %871 ]
  %881 = call ptr @strerror(i32 noundef %880) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %881) #13
  %882 = load i32, ptr %9, align 8, !tbaa !16
  br label %917

883:                                              ; preds = %878, %874, %866
  %884 = phi i32 [ %848, %874 ], [ %848, %878 ], [ %867, %866 ]
  %885 = load i32, ptr %493, align 8, !tbaa !34
  %886 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %885, i32 %884), !nosanitize !20
  %887 = extractvalue { i32, i1 } %886, 1, !nosanitize !20
  br i1 %887, label %888, label %889, !prof !21, !nosanitize !20

888:                                              ; preds = %883
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

889:                                              ; preds = %883
  %890 = extractvalue { i32, i1 } %886, 0, !nosanitize !20
  store i32 %890, ptr %493, align 8, !tbaa !34
  %891 = load ptr, ptr %499, align 8, !tbaa !29
  store ptr %891, ptr %498, align 8, !tbaa !35
  %892 = icmp eq i32 %890, 0
  br i1 %892, label %893, label %897

893:                                              ; preds = %889, %840
  %894 = load i32, ptr %500, align 4, !tbaa !17
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %896, label %917

896:                                              ; preds = %893
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %917

897:                                              ; preds = %889, %834
  %898 = call i32 @inflate(ptr noundef nonnull %498, i32 noundef 0) #13
  %899 = load i32, ptr %496, align 8, !tbaa !48
  %900 = icmp ult i32 %899, %832
  br i1 %900, label %901, label %902

901:                                              ; preds = %897
  store i32 0, ptr %502, align 4, !tbaa !33
  br label %902

902:                                              ; preds = %901, %897
  switch i32 %898, label %913 [
    i32 -2, label %903
    i32 2, label %903
    i32 -4, label %904
    i32 -3, label %905
  ]

903:                                              ; preds = %902, %902
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %917

904:                                              ; preds = %902
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %917

905:                                              ; preds = %902
  %906 = load i32, ptr %502, align 4, !tbaa !33
  %907 = icmp eq i32 %906, 1
  br i1 %907, label %908, label %909

908:                                              ; preds = %905
  store i32 0, ptr %493, align 8, !tbaa !34
  store i32 1, ptr %492, align 8, !tbaa !24
  store i32 0, ptr %494, align 8, !tbaa !26
  br label %917

909:                                              ; preds = %905
  %910 = load ptr, ptr %503, align 8, !tbaa !50
  %911 = icmp eq ptr %910, null
  %912 = select i1 %911, ptr @.str.6, ptr %910
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %912) #13
  br label %917

913:                                              ; preds = %902
  %914 = icmp ne i32 %899, 0
  %915 = icmp ne i32 %898, 1
  %916 = select i1 %914, i1 %915, i1 false
  br i1 %916, label %834, label %917, !llvm.loop !51

917:                                              ; preds = %913, %909, %908, %904, %903, %896, %893, %879, %838
  %918 = phi i32 [ %882, %879 ], [ %835, %893 ], [ %835, %896 ], [ %898, %903 ], [ -4, %904 ], [ 0, %908 ], [ -3, %909 ], [ %898, %913 ], [ %839, %838 ]
  %919 = load i32, ptr %496, align 8, !tbaa !48
  %920 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %832, i32 %919), !nosanitize !20
  %921 = extractvalue { i32, i1 } %920, 1, !nosanitize !20
  br i1 %921, label %922, label %923, !prof !21, !nosanitize !20

922:                                              ; preds = %917
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

923:                                              ; preds = %917
  %924 = extractvalue { i32, i1 } %920, 0, !nosanitize !20
  store i32 %924, ptr %0, align 8, !tbaa !19
  %925 = load ptr, ptr %497, align 8, !tbaa !49
  %926 = zext i32 %924 to i64
  %927 = sub nsw i64 0, %926
  %928 = getelementptr inbounds i8, ptr %925, i64 %927
  store ptr %928, ptr %491, align 8, !tbaa !22
  switch i32 %918, label %944 [
    i32 1, label %929
    i32 0, label %931
  ]

929:                                              ; preds = %923
  store i32 0, ptr %502, align 4, !tbaa !33
  store i32 0, ptr %494, align 8, !tbaa !26
  br label %931

930:                                              ; preds = %546
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %944

931:                                              ; preds = %929, %923, %783, %777
  %932 = load i32, ptr %0, align 8, !tbaa !19
  br label %933

933:                                              ; preds = %931, %779
  %934 = phi i32 [ %932, %931 ], [ %782, %779 ]
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %936, label %1112

936:                                              ; preds = %933
  %937 = load i32, ptr %492, align 8, !tbaa !24
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %942, label %939

939:                                              ; preds = %936
  %940 = load i32, ptr %493, align 8, !tbaa !34
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %1112, label %942

942:                                              ; preds = %939, %936
  %943 = load i32, ptr %494, align 8, !tbaa !26
  br label %546, !llvm.loop !52

944:                                              ; preds = %930, %923, %825, %739, %581, %567, %562
  %945 = load i32, ptr %0, align 8, !tbaa !19
  %946 = icmp eq i32 %945, 0
  %947 = sext i1 %946 to i32
  br label %1112

948:                                              ; preds = %541
  %949 = icmp eq i32 %539, 1
  br i1 %949, label %950, label %987

950:                                              ; preds = %948
  store i32 0, ptr %500, align 4, !tbaa !17
  %951 = tail call ptr @__errno_location() #17
  store i32 0, ptr %951, align 4, !tbaa !4
  br label %952

952:                                              ; preds = %971, %950
  %953 = phi i32 [ 0, %950 ], [ %972, %971 ]
  %954 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %514, i32 %953), !nosanitize !20
  %955 = extractvalue { i32, i1 } %954, 1, !nosanitize !20
  br i1 %955, label %956, label %957, !prof !21, !nosanitize !20

956:                                              ; preds = %952
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

957:                                              ; preds = %952
  %958 = extractvalue { i32, i1 } %954, 0, !nosanitize !20
  %959 = call i32 @llvm.umin.i32(i32 %958, i32 1073741824)
  %960 = load i32, ptr %501, align 4, !tbaa !46
  %961 = zext i32 %953 to i64
  %962 = getelementptr inbounds nuw i8, ptr %510, i64 %961
  %963 = zext nneg i32 %959 to i64
  %964 = call i64 @read(i32 noundef %960, ptr noundef %962, i64 noundef %963) #13
  %965 = trunc i64 %964 to i32
  %966 = icmp slt i32 %965, 1
  br i1 %966, label %974, label %967

967:                                              ; preds = %957
  %968 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %953, i32 %965), !nosanitize !20
  %969 = extractvalue { i32, i1 } %968, 1, !nosanitize !20
  br i1 %969, label %970, label %971, !prof !21, !nosanitize !20

970:                                              ; preds = %967
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

971:                                              ; preds = %967
  %972 = extractvalue { i32, i1 } %968, 0, !nosanitize !20
  %973 = icmp ult i32 %972, %514
  br i1 %973, label %952, label %1090, !llvm.loop !47

974:                                              ; preds = %957
  %975 = icmp slt i32 %965, 0
  br i1 %975, label %976, label %986

976:                                              ; preds = %974
  %977 = load i32, ptr %951, align 4, !tbaa !4
  %978 = icmp eq i32 %977, 11
  br i1 %978, label %979, label %983

979:                                              ; preds = %976
  store i32 1, ptr %500, align 4, !tbaa !17
  %980 = icmp eq i32 %953, 0
  br i1 %980, label %981, label %1092

981:                                              ; preds = %979
  %982 = load i32, ptr %951, align 4, !tbaa !4
  br label %983

983:                                              ; preds = %981, %976
  %984 = phi i32 [ %982, %981 ], [ %977, %976 ]
  %985 = call ptr @strerror(i32 noundef %984) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %985) #13
  br label %1092

986:                                              ; preds = %974
  store i32 1, ptr %492, align 8, !tbaa !24
  br label %1092

987:                                              ; preds = %948
  store i32 %514, ptr %496, align 8, !tbaa !58
  store ptr %510, ptr %497, align 8, !tbaa !59
  br label %988

988:                                              ; preds = %1067, %987
  %989 = phi i32 [ 0, %987 ], [ %1052, %1067 ]
  %990 = load i32, ptr %493, align 8, !tbaa !34
  %991 = icmp eq i32 %990, 0
  br i1 %991, label %992, label %1051

992:                                              ; preds = %988
  %993 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %993, label %1071 [
    i32 0, label %994
    i32 -5, label %994
  ]

994:                                              ; preds = %992, %992
  %995 = load i32, ptr %492, align 8, !tbaa !24
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %997, label %1047

997:                                              ; preds = %994
  %998 = load i32, ptr %495, align 8, !tbaa !27
  %999 = load ptr, ptr %499, align 8, !tbaa !29
  store i32 0, ptr %500, align 4, !tbaa !17
  %1000 = tail call ptr @__errno_location() #17
  store i32 0, ptr %1000, align 4, !tbaa !4
  br label %1001

1001:                                             ; preds = %1020, %997
  %1002 = phi i32 [ 0, %997 ], [ %1021, %1020 ]
  %1003 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %998, i32 %1002), !nosanitize !20
  %1004 = extractvalue { i32, i1 } %1003, 1, !nosanitize !20
  br i1 %1004, label %1005, label %1006, !prof !21, !nosanitize !20

1005:                                             ; preds = %1001
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1006:                                             ; preds = %1001
  %1007 = extractvalue { i32, i1 } %1003, 0, !nosanitize !20
  %1008 = call i32 @llvm.umin.i32(i32 %1007, i32 1073741824)
  %1009 = load i32, ptr %501, align 4, !tbaa !46
  %1010 = zext i32 %1002 to i64
  %1011 = getelementptr inbounds nuw i8, ptr %999, i64 %1010
  %1012 = zext nneg i32 %1008 to i64
  %1013 = call i64 @read(i32 noundef %1009, ptr noundef %1011, i64 noundef %1012) #13
  %1014 = trunc i64 %1013 to i32
  %1015 = icmp slt i32 %1014, 1
  br i1 %1015, label %1023, label %1016

1016:                                             ; preds = %1006
  %1017 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1002, i32 %1014), !nosanitize !20
  %1018 = extractvalue { i32, i1 } %1017, 1, !nosanitize !20
  br i1 %1018, label %1019, label %1020, !prof !21, !nosanitize !20

1019:                                             ; preds = %1016
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1020:                                             ; preds = %1016
  %1021 = extractvalue { i32, i1 } %1017, 0, !nosanitize !20
  %1022 = icmp ult i32 %1021, %998
  br i1 %1022, label %1001, label %1037, !llvm.loop !47

1023:                                             ; preds = %1006
  %1024 = icmp slt i32 %1014, 0
  br i1 %1024, label %1025, label %1032

1025:                                             ; preds = %1023
  %1026 = load i32, ptr %1000, align 4, !tbaa !4
  %1027 = icmp eq i32 %1026, 11
  br i1 %1027, label %1028, label %1033

1028:                                             ; preds = %1025
  store i32 1, ptr %500, align 4, !tbaa !17
  %1029 = icmp eq i32 %1002, 0
  br i1 %1029, label %1030, label %1037

1030:                                             ; preds = %1028
  %1031 = load i32, ptr %1000, align 4, !tbaa !4
  br label %1033

1032:                                             ; preds = %1023
  store i32 1, ptr %492, align 8, !tbaa !24
  br label %1037

1033:                                             ; preds = %1030, %1025
  %1034 = phi i32 [ %1031, %1030 ], [ %1026, %1025 ]
  %1035 = call ptr @strerror(i32 noundef %1034) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1035) #13
  %1036 = load i32, ptr %9, align 8, !tbaa !16
  br label %1071

1037:                                             ; preds = %1032, %1028, %1020
  %1038 = phi i32 [ %1002, %1028 ], [ %1002, %1032 ], [ %1021, %1020 ]
  %1039 = load i32, ptr %493, align 8, !tbaa !34
  %1040 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1039, i32 %1038), !nosanitize !20
  %1041 = extractvalue { i32, i1 } %1040, 1, !nosanitize !20
  br i1 %1041, label %1042, label %1043, !prof !21, !nosanitize !20

1042:                                             ; preds = %1037
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1043:                                             ; preds = %1037
  %1044 = extractvalue { i32, i1 } %1040, 0, !nosanitize !20
  store i32 %1044, ptr %493, align 8, !tbaa !34
  %1045 = load ptr, ptr %499, align 8, !tbaa !29
  store ptr %1045, ptr %498, align 8, !tbaa !35
  %1046 = icmp eq i32 %1044, 0
  br i1 %1046, label %1047, label %1051

1047:                                             ; preds = %1043, %994
  %1048 = load i32, ptr %500, align 4, !tbaa !17
  %1049 = icmp eq i32 %1048, 0
  br i1 %1049, label %1050, label %1071

1050:                                             ; preds = %1047
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %1071

1051:                                             ; preds = %1043, %988
  %1052 = call i32 @inflate(ptr noundef nonnull %498, i32 noundef 0) #13
  %1053 = load i32, ptr %496, align 8, !tbaa !48
  %1054 = icmp ult i32 %1053, %514
  br i1 %1054, label %1055, label %1056

1055:                                             ; preds = %1051
  store i32 0, ptr %502, align 4, !tbaa !33
  br label %1056

1056:                                             ; preds = %1055, %1051
  switch i32 %1052, label %1067 [
    i32 -2, label %1057
    i32 2, label %1057
    i32 -4, label %1058
    i32 -3, label %1059
  ]

1057:                                             ; preds = %1056, %1056
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %1071

1058:                                             ; preds = %1056
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1071

1059:                                             ; preds = %1056
  %1060 = load i32, ptr %502, align 4, !tbaa !33
  %1061 = icmp eq i32 %1060, 1
  br i1 %1061, label %1062, label %1063

1062:                                             ; preds = %1059
  store i32 0, ptr %493, align 8, !tbaa !34
  store i32 1, ptr %492, align 8, !tbaa !24
  store i32 0, ptr %494, align 8, !tbaa !26
  br label %1071

1063:                                             ; preds = %1059
  %1064 = load ptr, ptr %503, align 8, !tbaa !50
  %1065 = icmp eq ptr %1064, null
  %1066 = select i1 %1065, ptr @.str.6, ptr %1064
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1066) #13
  br label %1071

1067:                                             ; preds = %1056
  %1068 = icmp ne i32 %1053, 0
  %1069 = icmp ne i32 %1052, 1
  %1070 = select i1 %1068, i1 %1069, i1 false
  br i1 %1070, label %988, label %1071, !llvm.loop !51

1071:                                             ; preds = %1067, %1063, %1062, %1058, %1057, %1050, %1047, %1033, %992
  %1072 = phi i32 [ %1036, %1033 ], [ %989, %1047 ], [ %989, %1050 ], [ %1052, %1057 ], [ -4, %1058 ], [ 0, %1062 ], [ -3, %1063 ], [ %993, %992 ], [ %1052, %1067 ]
  %1073 = load i32, ptr %496, align 8, !tbaa !48
  %1074 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %514, i32 %1073), !nosanitize !20
  %1075 = extractvalue { i32, i1 } %1074, 1, !nosanitize !20
  br i1 %1075, label %1076, label %1077, !prof !21, !nosanitize !20

1076:                                             ; preds = %1071
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1077:                                             ; preds = %1071
  %1078 = extractvalue { i32, i1 } %1074, 0, !nosanitize !20
  %1079 = load ptr, ptr %497, align 8, !tbaa !49
  %1080 = zext i32 %1078 to i64
  %1081 = sub nsw i64 0, %1080
  %1082 = getelementptr inbounds i8, ptr %1079, i64 %1081
  store ptr %1082, ptr %491, align 8, !tbaa !22
  %1083 = icmp eq i32 %1072, 1
  br i1 %1083, label %1084, label %1085

1084:                                             ; preds = %1077
  store i32 0, ptr %502, align 4, !tbaa !33
  store i32 0, ptr %494, align 8, !tbaa !26
  br label %1088

1085:                                             ; preds = %1077
  %1086 = icmp ne i32 %1072, 0
  %1087 = sext i1 %1086 to i32
  br label %1088

1088:                                             ; preds = %1085, %1084
  %1089 = phi i32 [ 0, %1084 ], [ %1087, %1085 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1092

1090:                                             ; preds = %971
  %1091 = zext i32 %972 to i64
  br label %1092

1092:                                             ; preds = %1090, %1088, %986, %983, %979, %527
  %1093 = phi i64 [ %1091, %1090 ], [ %961, %986 ], [ %961, %983 ], [ %961, %979 ], [ %520, %527 ], [ %1080, %1088 ]
  %1094 = phi i32 [ 0, %1090 ], [ 0, %986 ], [ -1, %983 ], [ 0, %979 ], [ %531, %527 ], [ %1089, %1088 ]
  %1095 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %511, i64 %1093), !nosanitize !20
  %1096 = extractvalue { i64, i1 } %1095, 0, !nosanitize !20
  %1097 = extractvalue { i64, i1 } %1095, 1, !nosanitize !20
  br i1 %1097, label %1098, label %1099, !prof !21, !nosanitize !20

1098:                                             ; preds = %1092
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1099:                                             ; preds = %1092
  %1100 = getelementptr inbounds nuw i8, ptr %510, i64 %1093
  %1101 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %512, i64 %1093), !nosanitize !20
  %1102 = extractvalue { i64, i1 } %1101, 0, !nosanitize !20
  %1103 = extractvalue { i64, i1 } %1101, 1, !nosanitize !20
  br i1 %1103, label %1104, label %1105, !prof !21, !nosanitize !20

1104:                                             ; preds = %1105, %1099
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1105:                                             ; preds = %1099
  %1106 = load i64, ptr %504, align 8, !tbaa !23
  %1107 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1106, i64 %1093), !nosanitize !20
  %1108 = extractvalue { i64, i1 } %1107, 1, !nosanitize !20
  br i1 %1108, label %1104, label %1109, !prof !21, !nosanitize !20

1109:                                             ; preds = %1105
  %1110 = extractvalue { i64, i1 } %1107, 0, !nosanitize !20
  store i64 %1110, ptr %504, align 8, !tbaa !23
  %1111 = icmp eq i64 %1096, 0
  br i1 %1111, label %1124, label %1112

1112:                                             ; preds = %1109, %944, %939, %933, %828, %783
  %1113 = phi i32 [ %1094, %1109 ], [ %947, %944 ], [ 0, %828 ], [ 0, %783 ], [ 0, %933 ], [ 0, %939 ]
  %1114 = phi i64 [ %1102, %1109 ], [ %512, %944 ], [ %512, %828 ], [ %512, %783 ], [ %512, %933 ], [ %512, %939 ]
  %1115 = phi i64 [ %1096, %1109 ], [ %511, %944 ], [ %511, %828 ], [ %511, %783 ], [ %511, %933 ], [ %511, %939 ]
  %1116 = phi ptr [ %1100, %1109 ], [ %510, %944 ], [ %510, %828 ], [ %510, %783 ], [ %510, %933 ], [ %510, %939 ]
  %1117 = icmp eq i32 %1113, 0
  br i1 %1117, label %509, label %1118, !llvm.loop !60

1118:                                             ; preds = %1112
  %1119 = load i32, ptr %492, align 8, !tbaa !24
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1124, label %1121

1121:                                             ; preds = %1118, %535
  %1122 = phi i64 [ %1114, %1118 ], [ %512, %535 ]
  %1123 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1123, align 4, !tbaa !61
  br label %1124

1124:                                             ; preds = %1121, %1118, %1109
  %1125 = phi i64 [ %1114, %1118 ], [ %1122, %1121 ], [ %1102, %1109 ]
  %1126 = freeze i64 %1125
  %1127 = icmp eq i64 %1126, 0
  %1128 = load i8, ptr %2, align 1
  %1129 = zext i8 %1128 to i32
  br i1 %1127, label %1130, label %1131

1130:                                             ; preds = %1124, %472, %465, %367, %281, %123, %109, %104
  br label %1131

1131:                                             ; preds = %1130, %1124, %25, %11, %4, %1
  %1132 = phi i32 [ -1, %4 ], [ -1, %1 ], [ %31, %25 ], [ -1, %11 ], [ -1, %1130 ], [ %1129, %1124 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %1132
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @gzungetc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %808, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %808

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %10 = load i32, ptr %9, align 8, !tbaa !26
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %270

12:                                               ; preds = %8
  %13 = load i32, ptr %1, align 8, !tbaa !19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %270

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
  %24 = tail call noalias ptr @malloc(i64 noundef %23) #16
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %24, ptr %25, align 8, !tbaa !29
  %26 = load i32, ptr %21, align 4, !tbaa !28
  %27 = shl i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #16
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
  br label %270

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
  br label %270

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
  br label %270

58:                                               ; preds = %48
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %60 = load i32, ptr %59, align 8, !tbaa !16
  switch i32 %60, label %270 [
    i32 0, label %61
    i32 -5, label %61
  ]

61:                                               ; preds = %58, %58
  %62 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %63 = load i32, ptr %62, align 8, !tbaa !24
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %66 = load i32, ptr %65, align 8, !tbaa !34
  br i1 %64, label %67, label %235

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
  %130 = phi ptr [ %136, %128 ], [ %123, %121 ]
  %131 = phi i32 [ %134, %128 ], [ %124, %121 ]
  %132 = phi i32 [ %137, %128 ], [ 0, %121 ]
  %133 = load i8, ptr %130, align 1, !tbaa !36
  store i8 %133, ptr %129, align 1, !tbaa !36
  %134 = add i32 %131, -1
  %135 = getelementptr inbounds nuw i8, ptr %129, i64 1
  %136 = getelementptr inbounds nuw i8, ptr %130, i64 1
  %137 = add i32 %132, 1
  %138 = icmp eq i32 %137, %126
  br i1 %138, label %139, label %128, !llvm.loop !88

139:                                              ; preds = %128, %121
  %140 = phi ptr [ %122, %121 ], [ %135, %128 ]
  %141 = phi ptr [ %123, %121 ], [ %136, %128 ]
  %142 = phi i32 [ %124, %121 ], [ %134, %128 ]
  %143 = icmp ult i32 %125, 7
  br i1 %143, label %174, label %144

144:                                              ; preds = %144, %139
  %145 = phi ptr [ %171, %144 ], [ %140, %139 ]
  %146 = phi ptr [ %172, %144 ], [ %141, %139 ]
  %147 = phi i32 [ %170, %144 ], [ %142, %139 ]
  %148 = load i8, ptr %146, align 1, !tbaa !36
  store i8 %148, ptr %145, align 1, !tbaa !36
  %149 = getelementptr inbounds nuw i8, ptr %145, i64 1
  %150 = getelementptr inbounds nuw i8, ptr %146, i64 1
  %151 = load i8, ptr %150, align 1, !tbaa !36
  store i8 %151, ptr %149, align 1, !tbaa !36
  %152 = getelementptr inbounds nuw i8, ptr %145, i64 2
  %153 = getelementptr inbounds nuw i8, ptr %146, i64 2
  %154 = load i8, ptr %153, align 1, !tbaa !36
  store i8 %154, ptr %152, align 1, !tbaa !36
  %155 = getelementptr inbounds nuw i8, ptr %145, i64 3
  %156 = getelementptr inbounds nuw i8, ptr %146, i64 3
  %157 = load i8, ptr %156, align 1, !tbaa !36
  store i8 %157, ptr %155, align 1, !tbaa !36
  %158 = getelementptr inbounds nuw i8, ptr %145, i64 4
  %159 = getelementptr inbounds nuw i8, ptr %146, i64 4
  %160 = load i8, ptr %159, align 1, !tbaa !36
  store i8 %160, ptr %158, align 1, !tbaa !36
  %161 = getelementptr inbounds nuw i8, ptr %145, i64 5
  %162 = getelementptr inbounds nuw i8, ptr %146, i64 5
  %163 = load i8, ptr %162, align 1, !tbaa !36
  store i8 %163, ptr %161, align 1, !tbaa !36
  %164 = getelementptr inbounds nuw i8, ptr %145, i64 6
  %165 = getelementptr inbounds nuw i8, ptr %146, i64 6
  %166 = load i8, ptr %165, align 1, !tbaa !36
  store i8 %166, ptr %164, align 1, !tbaa !36
  %167 = getelementptr inbounds nuw i8, ptr %145, i64 7
  %168 = getelementptr inbounds nuw i8, ptr %146, i64 7
  %169 = load i8, ptr %168, align 1, !tbaa !36
  store i8 %169, ptr %167, align 1, !tbaa !36
  %170 = add i32 %147, -8
  %171 = getelementptr inbounds nuw i8, ptr %145, i64 8
  %172 = getelementptr inbounds nuw i8, ptr %146, i64 8
  %173 = icmp eq i32 %170, 0
  br i1 %173, label %174, label %144, !llvm.loop !89

174:                                              ; preds = %144, %139, %119, %101
  %175 = load i32, ptr %65, align 8, !tbaa !34
  br label %176

176:                                              ; preds = %174, %69, %67
  %177 = phi i32 [ %175, %174 ], [ %66, %69 ], [ 0, %67 ]
  %178 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %179 = load i32, ptr %17, align 8, !tbaa !27
  %180 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %179, i32 %177), !nosanitize !20
  %181 = extractvalue { i32, i1 } %180, 1, !nosanitize !20
  br i1 %181, label %182, label %183, !prof !21, !nosanitize !20

182:                                              ; preds = %176
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

183:                                              ; preds = %176
  %184 = extractvalue { i32, i1 } %180, 0, !nosanitize !20
  %185 = load ptr, ptr %178, align 8, !tbaa !29
  %186 = zext i32 %177 to i64
  %187 = getelementptr inbounds nuw i8, ptr %185, i64 %186
  %188 = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 0, ptr %188, align 4, !tbaa !17
  %189 = tail call ptr @__errno_location() #17
  store i32 0, ptr %189, align 4, !tbaa !4
  %190 = getelementptr inbounds nuw i8, ptr %1, i64 28
  br label %191

191:                                              ; preds = %210, %183
  %192 = phi i32 [ 0, %183 ], [ %211, %210 ]
  %193 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %184, i32 %192), !nosanitize !20
  %194 = extractvalue { i32, i1 } %193, 1, !nosanitize !20
  br i1 %194, label %195, label %196, !prof !21, !nosanitize !20

195:                                              ; preds = %191
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

196:                                              ; preds = %191
  %197 = extractvalue { i32, i1 } %193, 0, !nosanitize !20
  %198 = tail call i32 @llvm.umin.i32(i32 %197, i32 1073741824)
  %199 = load i32, ptr %190, align 4, !tbaa !46
  %200 = zext i32 %192 to i64
  %201 = getelementptr inbounds nuw i8, ptr %187, i64 %200
  %202 = zext nneg i32 %198 to i64
  %203 = tail call i64 @read(i32 noundef %199, ptr noundef %201, i64 noundef %202) #13
  %204 = trunc i64 %203 to i32
  %205 = icmp slt i32 %204, 1
  br i1 %205, label %213, label %206

206:                                              ; preds = %196
  %207 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %192, i32 %204), !nosanitize !20
  %208 = extractvalue { i32, i1 } %207, 1, !nosanitize !20
  br i1 %208, label %209, label %210, !prof !21, !nosanitize !20

209:                                              ; preds = %206
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

210:                                              ; preds = %206
  %211 = extractvalue { i32, i1 } %207, 0, !nosanitize !20
  %212 = icmp ult i32 %211, %184
  br i1 %212, label %191, label %226, !llvm.loop !47

213:                                              ; preds = %196
  %214 = icmp slt i32 %204, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %213
  %216 = load i32, ptr %189, align 4, !tbaa !4
  %217 = icmp eq i32 %216, 11
  br i1 %217, label %218, label %223

218:                                              ; preds = %215
  store i32 1, ptr %188, align 4, !tbaa !17
  %219 = icmp eq i32 %192, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %218
  %221 = load i32, ptr %189, align 4, !tbaa !4
  br label %223

222:                                              ; preds = %213
  store i32 1, ptr %62, align 8, !tbaa !24
  br label %226

223:                                              ; preds = %220, %215
  %224 = phi i32 [ %221, %220 ], [ %216, %215 ]
  %225 = tail call ptr @strerror(i32 noundef %224) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %225) #13
  br label %270

226:                                              ; preds = %222, %218, %210
  %227 = phi i32 [ %192, %218 ], [ %192, %222 ], [ %211, %210 ]
  %228 = load i32, ptr %65, align 8, !tbaa !34
  %229 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %228, i32 %227), !nosanitize !20
  %230 = extractvalue { i32, i1 } %229, 1, !nosanitize !20
  br i1 %230, label %231, label %232, !prof !21, !nosanitize !20

231:                                              ; preds = %226
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

232:                                              ; preds = %226
  %233 = extractvalue { i32, i1 } %229, 0, !nosanitize !20
  store i32 %233, ptr %65, align 8, !tbaa !34
  %234 = load ptr, ptr %178, align 8, !tbaa !29
  store ptr %234, ptr %16, align 8, !tbaa !35
  br label %235

235:                                              ; preds = %232, %61
  %236 = phi i32 [ %233, %232 ], [ %66, %61 ]
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %270, label %238

238:                                              ; preds = %235
  %239 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %240 = load i32, ptr %239, align 4, !tbaa !17
  %241 = icmp ne i32 %240, 0
  %242 = icmp ult i32 %236, 4
  %243 = and i1 %242, %241
  br i1 %243, label %270, label %244

244:                                              ; preds = %238
  %245 = icmp ugt i32 %236, 3
  %246 = load ptr, ptr %16, align 8, !tbaa !35
  br i1 %245, label %247, label %264

247:                                              ; preds = %244
  %248 = load i8, ptr %246, align 1, !tbaa !36
  %249 = icmp eq i8 %248, 31
  br i1 %249, label %250, label %264

250:                                              ; preds = %247
  %251 = getelementptr inbounds nuw i8, ptr %246, i64 1
  %252 = load i8, ptr %251, align 1, !tbaa !36
  %253 = icmp eq i8 %252, -117
  br i1 %253, label %254, label %264

254:                                              ; preds = %250
  %255 = getelementptr inbounds nuw i8, ptr %246, i64 2
  %256 = load i8, ptr %255, align 1, !tbaa !36
  %257 = icmp eq i8 %256, 8
  br i1 %257, label %258, label %264

258:                                              ; preds = %254
  %259 = getelementptr inbounds nuw i8, ptr %246, i64 3
  %260 = load i8, ptr %259, align 1, !tbaa !36
  %261 = icmp ult i8 %260, 32
  br i1 %261, label %262, label %264

262:                                              ; preds = %258
  %263 = tail call i32 @inflateReset(ptr noundef nonnull %16) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  store i32 1, ptr %49, align 4, !tbaa !33
  store i32 0, ptr %45, align 8, !tbaa !32
  br label %270

264:                                              ; preds = %258, %254, %250, %247, %244
  %265 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %266 = load ptr, ptr %265, align 8, !tbaa !30
  %267 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %266, ptr %267, align 8, !tbaa !22
  %268 = zext i32 %236 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %266, ptr align 1 %246, i64 %268, i1 false)
  %269 = load i32, ptr %65, align 8, !tbaa !34
  store i32 %269, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %65, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %270

270:                                              ; preds = %264, %262, %238, %235, %223, %58, %52, %41, %34, %12, %8
  %271 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %272 = load i32, ptr %271, align 8, !tbaa !16
  switch i32 %272, label %273 [
    i32 0, label %277
    i32 -5, label %277
  ]

273:                                              ; preds = %270
  %274 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %275 = load i32, ptr %274, align 4, !tbaa !17
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %808, label %277

277:                                              ; preds = %273, %270, %270
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef 0, ptr noundef null) #13
  %278 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %279 = load i64, ptr %278, align 8, !tbaa !18
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %736, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %283 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %284 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %285 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %286 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %287 = getelementptr inbounds nuw i8, ptr %1, i64 168
  %288 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %289 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %290 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %291 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %292 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %293 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %294 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %295 = getelementptr inbounds nuw i8, ptr %1, i64 184
  %296 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %297 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %298 = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %299

299:                                              ; preds = %731, %281
  %300 = phi i64 [ %732, %731 ], [ %279, %281 ]
  %301 = load i32, ptr %1, align 8, !tbaa !19
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %325, label %303

303:                                              ; preds = %299
  %304 = zext i32 %301 to i64
  %305 = tail call i64 @llvm.smin.i64(i64 %300, i64 %304)
  %306 = trunc i64 %305 to i32
  %307 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %301, i32 %306), !nosanitize !20
  %308 = extractvalue { i32, i1 } %307, 1, !nosanitize !20
  br i1 %308, label %309, label %310, !prof !21, !nosanitize !20

309:                                              ; preds = %319, %303
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

310:                                              ; preds = %303
  %311 = extractvalue { i32, i1 } %307, 0, !nosanitize !20
  store i32 %311, ptr %1, align 8, !tbaa !19
  %312 = load ptr, ptr %282, align 8, !tbaa !22
  %313 = and i64 %305, 4294967295
  %314 = getelementptr inbounds nuw i8, ptr %312, i64 %313
  store ptr %314, ptr %282, align 8, !tbaa !22
  %315 = load i64, ptr %283, align 8, !tbaa !23
  %316 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %315, i64 %313), !nosanitize !20
  %317 = extractvalue { i64, i1 } %316, 1, !nosanitize !20
  br i1 %317, label %318, label %319, !prof !21, !nosanitize !20

318:                                              ; preds = %310
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

319:                                              ; preds = %310
  %320 = extractvalue { i64, i1 } %316, 0, !nosanitize !20
  store i64 %320, ptr %283, align 8, !tbaa !23
  %321 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %300, i64 %313), !nosanitize !20
  %322 = extractvalue { i64, i1 } %321, 1, !nosanitize !20
  br i1 %322, label %309, label %323, !prof !21, !nosanitize !20

323:                                              ; preds = %319
  %324 = extractvalue { i64, i1 } %321, 0, !nosanitize !20
  store i64 %324, ptr %278, align 8, !tbaa !18
  br label %731

325:                                              ; preds = %299
  %326 = load i32, ptr %284, align 8, !tbaa !24
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %331, label %328

328:                                              ; preds = %325
  %329 = load i32, ptr %285, align 8, !tbaa !25
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %734, label %331

331:                                              ; preds = %328, %325
  br label %332

332:                                              ; preds = %728, %331
  %333 = load i32, ptr %9, align 8, !tbaa !26
  switch i32 %333, label %716 [
    i32 0, label %334
    i32 1, label %572
    i32 2, label %616
  ]

334:                                              ; preds = %332
  %335 = load i32, ptr %286, align 8, !tbaa !27
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %356

337:                                              ; preds = %334
  %338 = load i32, ptr %296, align 4, !tbaa !28
  %339 = zext i32 %338 to i64
  %340 = tail call noalias ptr @malloc(i64 noundef %339) #16
  store ptr %340, ptr %291, align 8, !tbaa !29
  %341 = load i32, ptr %296, align 4, !tbaa !28
  %342 = shl i32 %341, 1
  %343 = zext i32 %342 to i64
  %344 = tail call noalias ptr @malloc(i64 noundef %343) #16
  store ptr %344, ptr %288, align 8, !tbaa !30
  %345 = icmp eq ptr %340, null
  %346 = icmp eq ptr %344, null
  %347 = or i1 %345, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %337
  tail call void @free(ptr noundef %344) #13
  tail call void @free(ptr noundef %340) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %808

349:                                              ; preds = %337
  %350 = load i32, ptr %296, align 4, !tbaa !28
  store i32 %350, ptr %286, align 8, !tbaa !27
  store i32 0, ptr %285, align 8, !tbaa !25
  store ptr null, ptr %290, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %297, i8 0, i64 24, i1 false)
  %351 = tail call i32 @inflateInit2_(ptr noundef nonnull %290, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %356, label %353

353:                                              ; preds = %349
  %354 = load ptr, ptr %288, align 8, !tbaa !30
  tail call void @free(ptr noundef %354) #13
  %355 = load ptr, ptr %291, align 8, !tbaa !29
  tail call void @free(ptr noundef %355) #13
  store i32 0, ptr %286, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %808

356:                                              ; preds = %349, %334
  %357 = load i32, ptr %298, align 8, !tbaa !32
  %358 = icmp eq i32 %357, -1
  br i1 %358, label %362, label %359

359:                                              ; preds = %356
  %360 = load i32, ptr %294, align 4, !tbaa !33
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %367

362:                                              ; preds = %359, %356
  %363 = tail call i32 @inflateReset(ptr noundef nonnull %290) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  %364 = load i32, ptr %294, align 4, !tbaa !33
  %365 = icmp ne i32 %364, -1
  %366 = zext i1 %365 to i32
  store i32 %366, ptr %294, align 4, !tbaa !33
  store i32 0, ptr %298, align 8, !tbaa !32
  br label %569

367:                                              ; preds = %359
  %368 = load i32, ptr %271, align 8, !tbaa !16
  switch i32 %368, label %808 [
    i32 0, label %369
    i32 -5, label %369
  ]

369:                                              ; preds = %367, %367
  %370 = load i32, ptr %284, align 8, !tbaa !24
  %371 = icmp eq i32 %370, 0
  %372 = load i32, ptr %285, align 8, !tbaa !34
  br i1 %371, label %373, label %537

373:                                              ; preds = %369
  %374 = icmp eq i32 %372, 0
  br i1 %374, label %481, label %375

375:                                              ; preds = %373
  %376 = load ptr, ptr %291, align 8, !tbaa !29
  %377 = load ptr, ptr %290, align 8, !tbaa !35
  %378 = icmp eq ptr %377, %376
  br i1 %378, label %481, label %379

379:                                              ; preds = %375
  %380 = ptrtoaddr ptr %377 to i64
  %381 = ptrtoaddr ptr %376 to i64
  %382 = zext i32 %372 to i64
  %383 = icmp ult i32 %372, 4
  %384 = sub i64 %381, %380
  %385 = icmp ult i64 %384, 32
  %386 = or i1 %383, %385
  br i1 %386, label %426, label %387

387:                                              ; preds = %379
  %388 = icmp ult i32 %372, 32
  br i1 %388, label %410, label %389

389:                                              ; preds = %387
  %390 = and i64 %382, 28
  %391 = and i64 %382, 4294967264
  %392 = getelementptr i8, ptr %376, i64 %391
  %393 = getelementptr i8, ptr %377, i64 %391
  %394 = trunc nuw i64 %391 to i32
  %395 = sub i32 %372, %394
  br label %396

396:                                              ; preds = %396, %389
  %397 = phi i64 [ 0, %389 ], [ %404, %396 ]
  %398 = getelementptr i8, ptr %376, i64 %397
  %399 = getelementptr i8, ptr %377, i64 %397
  %400 = getelementptr i8, ptr %399, i64 16
  %401 = load <16 x i8>, ptr %399, align 1, !tbaa !36
  %402 = load <16 x i8>, ptr %400, align 1, !tbaa !36
  %403 = getelementptr i8, ptr %398, i64 16
  store <16 x i8> %401, ptr %398, align 1, !tbaa !36
  store <16 x i8> %402, ptr %403, align 1, !tbaa !36
  %404 = add nuw i64 %397, 32
  %405 = icmp eq i64 %404, %391
  br i1 %405, label %406, label %396, !llvm.loop !90

406:                                              ; preds = %396
  %407 = icmp eq i64 %391, %382
  br i1 %407, label %479, label %408

408:                                              ; preds = %406
  %409 = icmp eq i64 %390, 0
  br i1 %409, label %426, label %410, !prof !41

410:                                              ; preds = %408, %387
  %411 = phi i64 [ %391, %408 ], [ 0, %387 ]
  %412 = and i64 %382, 4294967292
  %413 = getelementptr i8, ptr %376, i64 %412
  %414 = getelementptr i8, ptr %377, i64 %412
  %415 = trunc nuw i64 %412 to i32
  %416 = sub i32 %372, %415
  br label %417

417:                                              ; preds = %417, %410
  %418 = phi i64 [ %411, %410 ], [ %422, %417 ]
  %419 = getelementptr i8, ptr %376, i64 %418
  %420 = getelementptr i8, ptr %377, i64 %418
  %421 = load <4 x i8>, ptr %420, align 1, !tbaa !36
  store <4 x i8> %421, ptr %419, align 1, !tbaa !36
  %422 = add nuw i64 %418, 4
  %423 = icmp eq i64 %422, %412
  br i1 %423, label %424, label %417, !llvm.loop !91

424:                                              ; preds = %417
  %425 = icmp eq i64 %412, %382
  br i1 %425, label %479, label %426

426:                                              ; preds = %424, %408, %379
  %427 = phi ptr [ %376, %379 ], [ %392, %408 ], [ %413, %424 ]
  %428 = phi ptr [ %377, %379 ], [ %393, %408 ], [ %414, %424 ]
  %429 = phi i32 [ %372, %379 ], [ %395, %408 ], [ %416, %424 ]
  %430 = add i32 %429, -1
  %431 = and i32 %429, 7
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %444, label %433

433:                                              ; preds = %433, %426
  %434 = phi ptr [ %440, %433 ], [ %427, %426 ]
  %435 = phi ptr [ %441, %433 ], [ %428, %426 ]
  %436 = phi i32 [ %439, %433 ], [ %429, %426 ]
  %437 = phi i32 [ %442, %433 ], [ 0, %426 ]
  %438 = load i8, ptr %435, align 1, !tbaa !36
  store i8 %438, ptr %434, align 1, !tbaa !36
  %439 = add i32 %436, -1
  %440 = getelementptr inbounds nuw i8, ptr %434, i64 1
  %441 = getelementptr inbounds nuw i8, ptr %435, i64 1
  %442 = add i32 %437, 1
  %443 = icmp eq i32 %442, %431
  br i1 %443, label %444, label %433, !llvm.loop !92

444:                                              ; preds = %433, %426
  %445 = phi ptr [ %427, %426 ], [ %440, %433 ]
  %446 = phi ptr [ %428, %426 ], [ %441, %433 ]
  %447 = phi i32 [ %429, %426 ], [ %439, %433 ]
  %448 = icmp ult i32 %430, 7
  br i1 %448, label %479, label %449

449:                                              ; preds = %449, %444
  %450 = phi ptr [ %476, %449 ], [ %445, %444 ]
  %451 = phi ptr [ %477, %449 ], [ %446, %444 ]
  %452 = phi i32 [ %475, %449 ], [ %447, %444 ]
  %453 = load i8, ptr %451, align 1, !tbaa !36
  store i8 %453, ptr %450, align 1, !tbaa !36
  %454 = getelementptr inbounds nuw i8, ptr %450, i64 1
  %455 = getelementptr inbounds nuw i8, ptr %451, i64 1
  %456 = load i8, ptr %455, align 1, !tbaa !36
  store i8 %456, ptr %454, align 1, !tbaa !36
  %457 = getelementptr inbounds nuw i8, ptr %450, i64 2
  %458 = getelementptr inbounds nuw i8, ptr %451, i64 2
  %459 = load i8, ptr %458, align 1, !tbaa !36
  store i8 %459, ptr %457, align 1, !tbaa !36
  %460 = getelementptr inbounds nuw i8, ptr %450, i64 3
  %461 = getelementptr inbounds nuw i8, ptr %451, i64 3
  %462 = load i8, ptr %461, align 1, !tbaa !36
  store i8 %462, ptr %460, align 1, !tbaa !36
  %463 = getelementptr inbounds nuw i8, ptr %450, i64 4
  %464 = getelementptr inbounds nuw i8, ptr %451, i64 4
  %465 = load i8, ptr %464, align 1, !tbaa !36
  store i8 %465, ptr %463, align 1, !tbaa !36
  %466 = getelementptr inbounds nuw i8, ptr %450, i64 5
  %467 = getelementptr inbounds nuw i8, ptr %451, i64 5
  %468 = load i8, ptr %467, align 1, !tbaa !36
  store i8 %468, ptr %466, align 1, !tbaa !36
  %469 = getelementptr inbounds nuw i8, ptr %450, i64 6
  %470 = getelementptr inbounds nuw i8, ptr %451, i64 6
  %471 = load i8, ptr %470, align 1, !tbaa !36
  store i8 %471, ptr %469, align 1, !tbaa !36
  %472 = getelementptr inbounds nuw i8, ptr %450, i64 7
  %473 = getelementptr inbounds nuw i8, ptr %451, i64 7
  %474 = load i8, ptr %473, align 1, !tbaa !36
  store i8 %474, ptr %472, align 1, !tbaa !36
  %475 = add i32 %452, -8
  %476 = getelementptr inbounds nuw i8, ptr %450, i64 8
  %477 = getelementptr inbounds nuw i8, ptr %451, i64 8
  %478 = icmp eq i32 %475, 0
  br i1 %478, label %479, label %449, !llvm.loop !93

479:                                              ; preds = %449, %444, %424, %406
  %480 = load i32, ptr %285, align 8, !tbaa !34
  br label %481

481:                                              ; preds = %479, %375, %373
  %482 = phi i32 [ %480, %479 ], [ %372, %375 ], [ 0, %373 ]
  %483 = load i32, ptr %286, align 8, !tbaa !27
  %484 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %483, i32 %482), !nosanitize !20
  %485 = extractvalue { i32, i1 } %484, 1, !nosanitize !20
  br i1 %485, label %486, label %487, !prof !21, !nosanitize !20

486:                                              ; preds = %481
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

487:                                              ; preds = %481
  %488 = extractvalue { i32, i1 } %484, 0, !nosanitize !20
  %489 = load ptr, ptr %291, align 8, !tbaa !29
  %490 = zext i32 %482 to i64
  %491 = getelementptr inbounds nuw i8, ptr %489, i64 %490
  store i32 0, ptr %292, align 4, !tbaa !17
  %492 = tail call ptr @__errno_location() #17
  store i32 0, ptr %492, align 4, !tbaa !4
  br label %493

493:                                              ; preds = %512, %487
  %494 = phi i32 [ 0, %487 ], [ %513, %512 ]
  %495 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %488, i32 %494), !nosanitize !20
  %496 = extractvalue { i32, i1 } %495, 1, !nosanitize !20
  br i1 %496, label %497, label %498, !prof !21, !nosanitize !20

497:                                              ; preds = %493
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

498:                                              ; preds = %493
  %499 = extractvalue { i32, i1 } %495, 0, !nosanitize !20
  %500 = tail call i32 @llvm.umin.i32(i32 %499, i32 1073741824)
  %501 = load i32, ptr %293, align 4, !tbaa !46
  %502 = zext i32 %494 to i64
  %503 = getelementptr inbounds nuw i8, ptr %491, i64 %502
  %504 = zext nneg i32 %500 to i64
  %505 = tail call i64 @read(i32 noundef %501, ptr noundef %503, i64 noundef %504) #13
  %506 = trunc i64 %505 to i32
  %507 = icmp slt i32 %506, 1
  br i1 %507, label %515, label %508

508:                                              ; preds = %498
  %509 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %494, i32 %506), !nosanitize !20
  %510 = extractvalue { i32, i1 } %509, 1, !nosanitize !20
  br i1 %510, label %511, label %512, !prof !21, !nosanitize !20

511:                                              ; preds = %508
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

512:                                              ; preds = %508
  %513 = extractvalue { i32, i1 } %509, 0, !nosanitize !20
  %514 = icmp ult i32 %513, %488
  br i1 %514, label %493, label %528, !llvm.loop !47

515:                                              ; preds = %498
  %516 = icmp slt i32 %506, 0
  br i1 %516, label %517, label %524

517:                                              ; preds = %515
  %518 = load i32, ptr %492, align 4, !tbaa !4
  %519 = icmp eq i32 %518, 11
  br i1 %519, label %520, label %525

520:                                              ; preds = %517
  store i32 1, ptr %292, align 4, !tbaa !17
  %521 = icmp eq i32 %494, 0
  br i1 %521, label %522, label %528

522:                                              ; preds = %520
  %523 = load i32, ptr %492, align 4, !tbaa !4
  br label %525

524:                                              ; preds = %515
  store i32 1, ptr %284, align 8, !tbaa !24
  br label %528

525:                                              ; preds = %522, %517
  %526 = phi i32 [ %523, %522 ], [ %518, %517 ]
  %527 = tail call ptr @strerror(i32 noundef %526) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %527) #13
  br label %808

528:                                              ; preds = %524, %520, %512
  %529 = phi i32 [ %494, %520 ], [ %494, %524 ], [ %513, %512 ]
  %530 = load i32, ptr %285, align 8, !tbaa !34
  %531 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %530, i32 %529), !nosanitize !20
  %532 = extractvalue { i32, i1 } %531, 1, !nosanitize !20
  br i1 %532, label %533, label %534, !prof !21, !nosanitize !20

533:                                              ; preds = %528
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

534:                                              ; preds = %528
  %535 = extractvalue { i32, i1 } %531, 0, !nosanitize !20
  store i32 %535, ptr %285, align 8, !tbaa !34
  %536 = load ptr, ptr %291, align 8, !tbaa !29
  store ptr %536, ptr %290, align 8, !tbaa !35
  br label %537

537:                                              ; preds = %534, %369
  %538 = phi i32 [ %535, %534 ], [ %372, %369 ]
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %569, label %540

540:                                              ; preds = %537
  %541 = load i32, ptr %292, align 4, !tbaa !17
  %542 = icmp ne i32 %541, 0
  %543 = icmp ult i32 %538, 4
  %544 = and i1 %543, %542
  br i1 %544, label %569, label %545

545:                                              ; preds = %540
  %546 = icmp ugt i32 %538, 3
  %547 = load ptr, ptr %290, align 8, !tbaa !35
  br i1 %546, label %548, label %565

548:                                              ; preds = %545
  %549 = load i8, ptr %547, align 1, !tbaa !36
  %550 = icmp eq i8 %549, 31
  br i1 %550, label %551, label %565

551:                                              ; preds = %548
  %552 = getelementptr inbounds nuw i8, ptr %547, i64 1
  %553 = load i8, ptr %552, align 1, !tbaa !36
  %554 = icmp eq i8 %553, -117
  br i1 %554, label %555, label %565

555:                                              ; preds = %551
  %556 = getelementptr inbounds nuw i8, ptr %547, i64 2
  %557 = load i8, ptr %556, align 1, !tbaa !36
  %558 = icmp eq i8 %557, 8
  br i1 %558, label %559, label %565

559:                                              ; preds = %555
  %560 = getelementptr inbounds nuw i8, ptr %547, i64 3
  %561 = load i8, ptr %560, align 1, !tbaa !36
  %562 = icmp ult i8 %561, 32
  br i1 %562, label %563, label %565

563:                                              ; preds = %559
  %564 = tail call i32 @inflateReset(ptr noundef nonnull %290) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  store i32 1, ptr %294, align 4, !tbaa !33
  store i32 0, ptr %298, align 8, !tbaa !32
  br label %717

565:                                              ; preds = %559, %555, %551, %548, %545
  %566 = load ptr, ptr %288, align 8, !tbaa !30
  store ptr %566, ptr %282, align 8, !tbaa !22
  %567 = zext i32 %538 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %566, ptr align 1 %547, i64 %567, i1 false)
  %568 = load i32, ptr %285, align 8, !tbaa !34
  store i32 %568, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %285, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %719

569:                                              ; preds = %540, %537, %362
  %570 = load i32, ptr %9, align 8, !tbaa !26
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %729, label %717

572:                                              ; preds = %332
  %573 = load ptr, ptr %288, align 8, !tbaa !30
  %574 = load i32, ptr %286, align 8, !tbaa !27
  %575 = shl i32 %574, 1
  store i32 0, ptr %292, align 4, !tbaa !17
  %576 = tail call ptr @__errno_location() #17
  store i32 0, ptr %576, align 4, !tbaa !4
  store i32 0, ptr %1, align 8, !tbaa !4
  br label %577

577:                                              ; preds = %597, %572
  %578 = phi i32 [ %598, %597 ], [ 0, %572 ]
  %579 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %575, i32 %578), !nosanitize !20
  %580 = extractvalue { i32, i1 } %579, 1, !nosanitize !20
  br i1 %580, label %581, label %582, !prof !21, !nosanitize !20

581:                                              ; preds = %577
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

582:                                              ; preds = %577
  %583 = extractvalue { i32, i1 } %579, 0, !nosanitize !20
  %584 = tail call i32 @llvm.umin.i32(i32 %583, i32 1073741824)
  %585 = load i32, ptr %293, align 4, !tbaa !46
  %586 = zext i32 %578 to i64
  %587 = getelementptr inbounds nuw i8, ptr %573, i64 %586
  %588 = zext nneg i32 %584 to i64
  %589 = tail call i64 @read(i32 noundef %585, ptr noundef %587, i64 noundef %588) #13
  %590 = trunc i64 %589 to i32
  %591 = icmp slt i32 %590, 1
  br i1 %591, label %600, label %592

592:                                              ; preds = %582
  %593 = load i32, ptr %1, align 4, !tbaa !4
  %594 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %593, i32 %590), !nosanitize !20
  %595 = extractvalue { i32, i1 } %594, 1, !nosanitize !20
  br i1 %595, label %596, label %597, !prof !21, !nosanitize !20

596:                                              ; preds = %592
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

597:                                              ; preds = %592
  %598 = extractvalue { i32, i1 } %594, 0, !nosanitize !20
  store i32 %598, ptr %1, align 4, !tbaa !4
  %599 = icmp ult i32 %598, %575
  br i1 %599, label %577, label %614, !llvm.loop !47

600:                                              ; preds = %582
  %601 = icmp slt i32 %590, 0
  br i1 %601, label %602, label %610

602:                                              ; preds = %600
  %603 = load i32, ptr %576, align 4, !tbaa !4
  %604 = icmp eq i32 %603, 11
  br i1 %604, label %605, label %611

605:                                              ; preds = %602
  store i32 1, ptr %292, align 4, !tbaa !17
  %606 = load i32, ptr %1, align 4, !tbaa !4
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %608, label %614

608:                                              ; preds = %605
  %609 = load i32, ptr %576, align 4, !tbaa !4
  br label %611

610:                                              ; preds = %600
  store i32 1, ptr %284, align 8, !tbaa !24
  br label %614

611:                                              ; preds = %608, %602
  %612 = phi i32 [ %609, %608 ], [ %603, %602 ]
  %613 = tail call ptr @strerror(i32 noundef %612) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %613) #13
  br label %808

614:                                              ; preds = %610, %605, %597
  %615 = load ptr, ptr %288, align 8, !tbaa !30
  store ptr %615, ptr %282, align 8, !tbaa !22
  br label %729

616:                                              ; preds = %332
  %617 = load i32, ptr %286, align 8, !tbaa !27
  %618 = shl i32 %617, 1
  store i32 %618, ptr %287, align 8, !tbaa !48
  %619 = load ptr, ptr %288, align 8, !tbaa !30
  store ptr %619, ptr %289, align 8, !tbaa !49
  br label %620

620:                                              ; preds = %699, %616
  %621 = phi i32 [ 0, %616 ], [ %684, %699 ]
  %622 = load i32, ptr %285, align 8, !tbaa !34
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %624, label %683

624:                                              ; preds = %620
  %625 = load i32, ptr %271, align 8, !tbaa !16
  switch i32 %625, label %703 [
    i32 0, label %626
    i32 -5, label %626
  ]

626:                                              ; preds = %624, %624
  %627 = load i32, ptr %284, align 8, !tbaa !24
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %679

629:                                              ; preds = %626
  %630 = load i32, ptr %286, align 8, !tbaa !27
  %631 = load ptr, ptr %291, align 8, !tbaa !29
  store i32 0, ptr %292, align 4, !tbaa !17
  %632 = tail call ptr @__errno_location() #17
  store i32 0, ptr %632, align 4, !tbaa !4
  br label %633

633:                                              ; preds = %652, %629
  %634 = phi i32 [ 0, %629 ], [ %653, %652 ]
  %635 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %630, i32 %634), !nosanitize !20
  %636 = extractvalue { i32, i1 } %635, 1, !nosanitize !20
  br i1 %636, label %637, label %638, !prof !21, !nosanitize !20

637:                                              ; preds = %633
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

638:                                              ; preds = %633
  %639 = extractvalue { i32, i1 } %635, 0, !nosanitize !20
  %640 = tail call i32 @llvm.umin.i32(i32 %639, i32 1073741824)
  %641 = load i32, ptr %293, align 4, !tbaa !46
  %642 = zext i32 %634 to i64
  %643 = getelementptr inbounds nuw i8, ptr %631, i64 %642
  %644 = zext nneg i32 %640 to i64
  %645 = tail call i64 @read(i32 noundef %641, ptr noundef %643, i64 noundef %644) #13
  %646 = trunc i64 %645 to i32
  %647 = icmp slt i32 %646, 1
  br i1 %647, label %655, label %648

648:                                              ; preds = %638
  %649 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %634, i32 %646), !nosanitize !20
  %650 = extractvalue { i32, i1 } %649, 1, !nosanitize !20
  br i1 %650, label %651, label %652, !prof !21, !nosanitize !20

651:                                              ; preds = %648
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

652:                                              ; preds = %648
  %653 = extractvalue { i32, i1 } %649, 0, !nosanitize !20
  %654 = icmp ult i32 %653, %630
  br i1 %654, label %633, label %669, !llvm.loop !47

655:                                              ; preds = %638
  %656 = icmp slt i32 %646, 0
  br i1 %656, label %657, label %664

657:                                              ; preds = %655
  %658 = load i32, ptr %632, align 4, !tbaa !4
  %659 = icmp eq i32 %658, 11
  br i1 %659, label %660, label %665

660:                                              ; preds = %657
  store i32 1, ptr %292, align 4, !tbaa !17
  %661 = icmp eq i32 %634, 0
  br i1 %661, label %662, label %669

662:                                              ; preds = %660
  %663 = load i32, ptr %632, align 4, !tbaa !4
  br label %665

664:                                              ; preds = %655
  store i32 1, ptr %284, align 8, !tbaa !24
  br label %669

665:                                              ; preds = %662, %657
  %666 = phi i32 [ %663, %662 ], [ %658, %657 ]
  %667 = tail call ptr @strerror(i32 noundef %666) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %667) #13
  %668 = load i32, ptr %271, align 8, !tbaa !16
  br label %703

669:                                              ; preds = %664, %660, %652
  %670 = phi i32 [ %634, %660 ], [ %634, %664 ], [ %653, %652 ]
  %671 = load i32, ptr %285, align 8, !tbaa !34
  %672 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %671, i32 %670), !nosanitize !20
  %673 = extractvalue { i32, i1 } %672, 1, !nosanitize !20
  br i1 %673, label %674, label %675, !prof !21, !nosanitize !20

674:                                              ; preds = %669
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

675:                                              ; preds = %669
  %676 = extractvalue { i32, i1 } %672, 0, !nosanitize !20
  store i32 %676, ptr %285, align 8, !tbaa !34
  %677 = load ptr, ptr %291, align 8, !tbaa !29
  store ptr %677, ptr %290, align 8, !tbaa !35
  %678 = icmp eq i32 %676, 0
  br i1 %678, label %679, label %683

679:                                              ; preds = %675, %626
  %680 = load i32, ptr %292, align 4, !tbaa !17
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %682, label %703

682:                                              ; preds = %679
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %703

683:                                              ; preds = %675, %620
  %684 = tail call i32 @inflate(ptr noundef nonnull %290, i32 noundef 0) #13
  %685 = load i32, ptr %287, align 8, !tbaa !48
  %686 = icmp ult i32 %685, %618
  br i1 %686, label %687, label %688

687:                                              ; preds = %683
  store i32 0, ptr %294, align 4, !tbaa !33
  br label %688

688:                                              ; preds = %687, %683
  switch i32 %684, label %699 [
    i32 -2, label %689
    i32 2, label %689
    i32 -4, label %690
    i32 -3, label %691
  ]

689:                                              ; preds = %688, %688
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %703

690:                                              ; preds = %688
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %703

691:                                              ; preds = %688
  %692 = load i32, ptr %294, align 4, !tbaa !33
  %693 = icmp eq i32 %692, 1
  br i1 %693, label %694, label %695

694:                                              ; preds = %691
  store i32 0, ptr %285, align 8, !tbaa !34
  store i32 1, ptr %284, align 8, !tbaa !24
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %703

695:                                              ; preds = %691
  %696 = load ptr, ptr %295, align 8, !tbaa !50
  %697 = icmp eq ptr %696, null
  %698 = select i1 %697, ptr @.str.6, ptr %696
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull %698) #13
  br label %703

699:                                              ; preds = %688
  %700 = icmp ne i32 %685, 0
  %701 = icmp ne i32 %684, 1
  %702 = select i1 %700, i1 %701, i1 false
  br i1 %702, label %620, label %703, !llvm.loop !51

703:                                              ; preds = %699, %695, %694, %690, %689, %682, %679, %665, %624
  %704 = phi i32 [ %668, %665 ], [ %621, %679 ], [ %621, %682 ], [ %684, %689 ], [ -4, %690 ], [ 0, %694 ], [ -3, %695 ], [ %625, %624 ], [ %684, %699 ]
  %705 = load i32, ptr %287, align 8, !tbaa !48
  %706 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %618, i32 %705), !nosanitize !20
  %707 = extractvalue { i32, i1 } %706, 1, !nosanitize !20
  br i1 %707, label %708, label %709, !prof !21, !nosanitize !20

708:                                              ; preds = %703
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

709:                                              ; preds = %703
  %710 = extractvalue { i32, i1 } %706, 0, !nosanitize !20
  store i32 %710, ptr %1, align 8, !tbaa !19
  %711 = load ptr, ptr %289, align 8, !tbaa !49
  %712 = zext i32 %710 to i64
  %713 = sub nsw i64 0, %712
  %714 = getelementptr inbounds i8, ptr %711, i64 %713
  store ptr %714, ptr %282, align 8, !tbaa !22
  switch i32 %704, label %808 [
    i32 1, label %715
    i32 0, label %717
  ]

715:                                              ; preds = %709
  store i32 0, ptr %294, align 4, !tbaa !33
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %717

716:                                              ; preds = %332
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %808

717:                                              ; preds = %715, %709, %569, %563
  %718 = load i32, ptr %1, align 8, !tbaa !19
  br label %719

719:                                              ; preds = %717, %565
  %720 = phi i32 [ %718, %717 ], [ %568, %565 ]
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %722, label %729

722:                                              ; preds = %719
  %723 = load i32, ptr %284, align 8, !tbaa !24
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %728, label %725

725:                                              ; preds = %722
  %726 = load i32, ptr %285, align 8, !tbaa !34
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %729, label %728

728:                                              ; preds = %725, %722
  br label %332, !llvm.loop !52

729:                                              ; preds = %725, %719, %614, %569
  %730 = load i64, ptr %278, align 8, !tbaa !18
  br label %731

731:                                              ; preds = %729, %323
  %732 = phi i64 [ %730, %729 ], [ %324, %323 ]
  %733 = icmp eq i64 %732, 0
  br i1 %733, label %734, label %299, !llvm.loop !53

734:                                              ; preds = %731, %328
  %735 = icmp slt i32 %0, 0
  br i1 %735, label %808, label %738

736:                                              ; preds = %277
  %737 = icmp slt i32 %0, 0
  br i1 %737, label %808, label %738

738:                                              ; preds = %736, %734
  %739 = load i32, ptr %1, align 8, !tbaa !19
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %741, label %760

741:                                              ; preds = %738
  store i32 1, ptr %1, align 8, !tbaa !19
  %742 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %743 = load ptr, ptr %742, align 8, !tbaa !30
  %744 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %745 = load i32, ptr %744, align 8, !tbaa !27
  %746 = shl i32 %745, 1
  %747 = zext i32 %746 to i64
  %748 = getelementptr inbounds nuw i8, ptr %743, i64 %747
  %749 = getelementptr inbounds i8, ptr %748, i64 -1
  %750 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %749, ptr %750, align 8, !tbaa !22
  %751 = trunc i32 %0 to i8
  store i8 %751, ptr %749, align 1, !tbaa !36
  %752 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %753 = load i64, ptr %752, align 8, !tbaa !23
  %754 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %753, i64 -1)
  %755 = extractvalue { i64, i1 } %754, 1, !nosanitize !20
  br i1 %755, label %756, label %757, !prof !21, !nosanitize !20

756:                                              ; preds = %797, %741
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

757:                                              ; preds = %741
  %758 = extractvalue { i64, i1 } %754, 0, !nosanitize !20
  store i64 %758, ptr %752, align 8, !tbaa !23
  %759 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %759, align 4, !tbaa !61
  br label %808

760:                                              ; preds = %738
  %761 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %762 = load i32, ptr %761, align 8, !tbaa !27
  %763 = shl i32 %762, 1
  %764 = icmp eq i32 %739, %763
  br i1 %764, label %765, label %766

765:                                              ; preds = %760
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull @.str.2) #13
  br label %808

766:                                              ; preds = %760
  %767 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %768 = load ptr, ptr %767, align 8, !tbaa !22
  %769 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %770 = load ptr, ptr %769, align 8, !tbaa !30
  %771 = icmp eq ptr %768, %770
  br i1 %771, label %772, label %791

772:                                              ; preds = %766
  %773 = zext i32 %739 to i64
  %774 = getelementptr inbounds nuw i8, ptr %770, i64 %773
  %775 = zext i32 %763 to i64
  %776 = getelementptr inbounds nuw i8, ptr %770, i64 %775
  %777 = icmp ugt ptr %774, %768
  br i1 %777, label %778, label %788

778:                                              ; preds = %778, %772
  %779 = phi ptr [ %783, %778 ], [ %776, %772 ]
  %780 = phi ptr [ %781, %778 ], [ %774, %772 ]
  %781 = getelementptr inbounds i8, ptr %780, i64 -1
  %782 = load i8, ptr %781, align 1, !tbaa !36
  %783 = getelementptr inbounds i8, ptr %779, i64 -1
  store i8 %782, ptr %783, align 1, !tbaa !36
  %784 = load ptr, ptr %769, align 8, !tbaa !30
  %785 = icmp ugt ptr %781, %784
  br i1 %785, label %778, label %786, !llvm.loop !94

786:                                              ; preds = %778
  %787 = load i32, ptr %1, align 8, !tbaa !19
  br label %788

788:                                              ; preds = %786, %772
  %789 = phi i32 [ %739, %772 ], [ %787, %786 ]
  %790 = phi ptr [ %776, %772 ], [ %783, %786 ]
  store ptr %790, ptr %767, align 8, !tbaa !22
  br label %791

791:                                              ; preds = %788, %766
  %792 = phi ptr [ %790, %788 ], [ %768, %766 ]
  %793 = phi i32 [ %789, %788 ], [ %739, %766 ]
  %794 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %793, i32 1), !nosanitize !20
  %795 = extractvalue { i32, i1 } %794, 1, !nosanitize !20
  br i1 %795, label %796, label %797, !prof !21, !nosanitize !20

796:                                              ; preds = %791
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

797:                                              ; preds = %791
  %798 = extractvalue { i32, i1 } %794, 0, !nosanitize !20
  store i32 %798, ptr %1, align 8, !tbaa !19
  %799 = getelementptr inbounds i8, ptr %792, i64 -1
  store ptr %799, ptr %767, align 8, !tbaa !22
  %800 = trunc i32 %0 to i8
  store i8 %800, ptr %799, align 1, !tbaa !36
  %801 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %802 = load i64, ptr %801, align 8, !tbaa !23
  %803 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %802, i64 -1)
  %804 = extractvalue { i64, i1 } %803, 1, !nosanitize !20
  br i1 %804, label %756, label %805, !prof !21, !nosanitize !20

805:                                              ; preds = %797
  %806 = extractvalue { i64, i1 } %803, 0, !nosanitize !20
  store i64 %806, ptr %801, align 8, !tbaa !23
  %807 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %807, align 4, !tbaa !61
  br label %808

808:                                              ; preds = %805, %765, %757, %736, %734, %716, %709, %611, %525, %367, %353, %348, %273, %4, %2
  %809 = phi i32 [ -1, %4 ], [ -1, %2 ], [ -1, %273 ], [ -1, %734 ], [ %0, %757 ], [ -1, %765 ], [ %0, %805 ], [ -1, %736 ], [ -1, %353 ], [ -1, %348 ], [ -1, %716 ], [ -1, %611 ], [ -1, %525 ], [ -1, %709 ], [ -1, %367 ]
  ret i32 %809
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gzgets(ptr noundef %0, ptr noundef writeonly captures(address, ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  %7 = icmp slt i32 %2, 1
  %8 = or i1 %6, %7
  br i1 %8, label %954, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load i32, ptr %10, align 8, !tbaa !8
  %12 = icmp eq i32 %11, 7247
  br i1 %12, label %13, label %954

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
  br i1 %19, label %954, label %20

20:                                               ; preds = %16, %13, %13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %22 = load i64, ptr %21, align 8, !tbaa !18
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %478, label %24

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

43:                                               ; preds = %475, %24
  %44 = phi i64 [ %476, %475 ], [ %22, %24 ]
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
  br label %475

69:                                               ; preds = %43
  %70 = load i32, ptr %27, align 8, !tbaa !24
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %28, align 8, !tbaa !25
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %478, label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %472, %75
  %77 = load i32, ptr %29, align 8, !tbaa !26
  switch i32 %77, label %460 [
    i32 0, label %78
    i32 1, label %316
    i32 2, label %360
  ]

78:                                               ; preds = %76
  %79 = load i32, ptr %30, align 8, !tbaa !27
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %78
  %82 = load i32, ptr %40, align 4, !tbaa !28
  %83 = zext i32 %82 to i64
  %84 = tail call noalias ptr @malloc(i64 noundef %83) #16
  store ptr %84, ptr %35, align 8, !tbaa !29
  %85 = load i32, ptr %40, align 4, !tbaa !28
  %86 = shl i32 %85, 1
  %87 = zext i32 %86 to i64
  %88 = tail call noalias ptr @malloc(i64 noundef %87) #16
  store ptr %88, ptr %32, align 8, !tbaa !30
  %89 = icmp eq ptr %84, null
  %90 = icmp eq ptr %88, null
  %91 = or i1 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  tail call void @free(ptr noundef %88) #13
  tail call void @free(ptr noundef %84) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %954

93:                                               ; preds = %81
  %94 = load i32, ptr %40, align 4, !tbaa !28
  store i32 %94, ptr %30, align 8, !tbaa !27
  store i32 0, ptr %28, align 8, !tbaa !25
  store ptr null, ptr %34, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  %95 = tail call i32 @inflateInit2_(ptr noundef nonnull %34, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %32, align 8, !tbaa !30
  tail call void @free(ptr noundef %98) #13
  %99 = load ptr, ptr %35, align 8, !tbaa !29
  tail call void @free(ptr noundef %99) #13
  store i32 0, ptr %30, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %954

100:                                              ; preds = %93, %78
  %101 = load i32, ptr %42, align 8, !tbaa !32
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, ptr %38, align 4, !tbaa !33
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103, %100
  %107 = tail call i32 @inflateReset(ptr noundef nonnull %34) #13
  store i32 2, ptr %29, align 8, !tbaa !26
  %108 = load i32, ptr %38, align 4, !tbaa !33
  %109 = icmp ne i32 %108, -1
  %110 = zext i1 %109 to i32
  store i32 %110, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %42, align 8, !tbaa !32
  br label %313

111:                                              ; preds = %103
  %112 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %112, label %954 [
    i32 0, label %113
    i32 -5, label %113
  ]

113:                                              ; preds = %111, %111
  %114 = load i32, ptr %27, align 8, !tbaa !24
  %115 = icmp eq i32 %114, 0
  %116 = load i32, ptr %28, align 8, !tbaa !34
  br i1 %115, label %117, label %281

117:                                              ; preds = %113
  %118 = icmp eq i32 %116, 0
  br i1 %118, label %225, label %119

119:                                              ; preds = %117
  %120 = load ptr, ptr %35, align 8, !tbaa !29
  %121 = load ptr, ptr %34, align 8, !tbaa !35
  %122 = icmp eq ptr %121, %120
  br i1 %122, label %225, label %123

123:                                              ; preds = %119
  %124 = ptrtoaddr ptr %121 to i64
  %125 = ptrtoaddr ptr %120 to i64
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
  %134 = and i64 %126, 28
  %135 = and i64 %126, 4294967264
  %136 = getelementptr i8, ptr %120, i64 %135
  %137 = getelementptr i8, ptr %121, i64 %135
  %138 = trunc nuw i64 %135 to i32
  %139 = sub i32 %116, %138
  br label %140

140:                                              ; preds = %140, %133
  %141 = phi i64 [ 0, %133 ], [ %148, %140 ]
  %142 = getelementptr i8, ptr %120, i64 %141
  %143 = getelementptr i8, ptr %121, i64 %141
  %144 = getelementptr i8, ptr %143, i64 16
  %145 = load <16 x i8>, ptr %143, align 1, !tbaa !36
  %146 = load <16 x i8>, ptr %144, align 1, !tbaa !36
  %147 = getelementptr i8, ptr %142, i64 16
  store <16 x i8> %145, ptr %142, align 1, !tbaa !36
  store <16 x i8> %146, ptr %147, align 1, !tbaa !36
  %148 = add nuw i64 %141, 32
  %149 = icmp eq i64 %148, %135
  br i1 %149, label %150, label %140, !llvm.loop !95

150:                                              ; preds = %140
  %151 = icmp eq i64 %135, %126
  br i1 %151, label %223, label %152

152:                                              ; preds = %150
  %153 = icmp eq i64 %134, 0
  br i1 %153, label %170, label %154, !prof !41

154:                                              ; preds = %152, %131
  %155 = phi i64 [ %135, %152 ], [ 0, %131 ]
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
  br i1 %167, label %168, label %161, !llvm.loop !96

168:                                              ; preds = %161
  %169 = icmp eq i64 %156, %126
  br i1 %169, label %223, label %170

170:                                              ; preds = %168, %152, %123
  %171 = phi ptr [ %120, %123 ], [ %136, %152 ], [ %157, %168 ]
  %172 = phi ptr [ %121, %123 ], [ %137, %152 ], [ %158, %168 ]
  %173 = phi i32 [ %116, %123 ], [ %139, %152 ], [ %160, %168 ]
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
  br i1 %187, label %188, label %177, !llvm.loop !97

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
  br i1 %222, label %223, label %193, !llvm.loop !98

223:                                              ; preds = %193, %188, %168, %150
  %224 = load i32, ptr %28, align 8, !tbaa !34
  br label %225

225:                                              ; preds = %223, %119, %117
  %226 = phi i32 [ %224, %223 ], [ %116, %119 ], [ 0, %117 ]
  %227 = load i32, ptr %30, align 8, !tbaa !27
  %228 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %227, i32 %226), !nosanitize !20
  %229 = extractvalue { i32, i1 } %228, 1, !nosanitize !20
  br i1 %229, label %230, label %231, !prof !21, !nosanitize !20

230:                                              ; preds = %225
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

231:                                              ; preds = %225
  %232 = extractvalue { i32, i1 } %228, 0, !nosanitize !20
  %233 = load ptr, ptr %35, align 8, !tbaa !29
  %234 = zext i32 %226 to i64
  %235 = getelementptr inbounds nuw i8, ptr %233, i64 %234
  store i32 0, ptr %36, align 4, !tbaa !17
  %236 = tail call ptr @__errno_location() #17
  store i32 0, ptr %236, align 4, !tbaa !4
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
  %245 = load i32, ptr %37, align 4, !tbaa !46
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
  %262 = load i32, ptr %236, align 4, !tbaa !4
  %263 = icmp eq i32 %262, 11
  br i1 %263, label %264, label %269

264:                                              ; preds = %261
  store i32 1, ptr %36, align 4, !tbaa !17
  %265 = icmp eq i32 %238, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %264
  %267 = load i32, ptr %236, align 4, !tbaa !4
  br label %269

268:                                              ; preds = %259
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %272

269:                                              ; preds = %266, %261
  %270 = phi i32 [ %267, %266 ], [ %262, %261 ]
  %271 = tail call ptr @strerror(i32 noundef %270) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %271) #13
  br label %954

272:                                              ; preds = %268, %264, %256
  %273 = phi i32 [ %238, %264 ], [ %238, %268 ], [ %257, %256 ]
  %274 = load i32, ptr %28, align 8, !tbaa !34
  %275 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %274, i32 %273), !nosanitize !20
  %276 = extractvalue { i32, i1 } %275, 1, !nosanitize !20
  br i1 %276, label %277, label %278, !prof !21, !nosanitize !20

277:                                              ; preds = %272
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

278:                                              ; preds = %272
  %279 = extractvalue { i32, i1 } %275, 0, !nosanitize !20
  store i32 %279, ptr %28, align 8, !tbaa !34
  %280 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %280, ptr %34, align 8, !tbaa !35
  br label %281

281:                                              ; preds = %278, %113
  %282 = phi i32 [ %279, %278 ], [ %116, %113 ]
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %313, label %284

284:                                              ; preds = %281
  %285 = load i32, ptr %36, align 4, !tbaa !17
  %286 = icmp ne i32 %285, 0
  %287 = icmp ult i32 %282, 4
  %288 = and i1 %287, %286
  br i1 %288, label %313, label %289

289:                                              ; preds = %284
  %290 = icmp ugt i32 %282, 3
  %291 = load ptr, ptr %34, align 8, !tbaa !35
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
  %308 = tail call i32 @inflateReset(ptr noundef nonnull %34) #13
  store i32 2, ptr %29, align 8, !tbaa !26
  store i32 1, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %42, align 8, !tbaa !32
  br label %461

309:                                              ; preds = %303, %299, %295, %292, %289
  %310 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %310, ptr %25, align 8, !tbaa !22
  %311 = zext i32 %282 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %310, ptr align 1 %291, i64 %311, i1 false)
  %312 = load i32, ptr %28, align 8, !tbaa !34
  store i32 %312, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !26
  br label %463

313:                                              ; preds = %284, %281, %106
  %314 = load i32, ptr %29, align 8, !tbaa !26
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %473, label %461

316:                                              ; preds = %76
  %317 = load ptr, ptr %32, align 8, !tbaa !30
  %318 = load i32, ptr %30, align 8, !tbaa !27
  %319 = shl i32 %318, 1
  store i32 0, ptr %36, align 4, !tbaa !17
  %320 = tail call ptr @__errno_location() #17
  store i32 0, ptr %320, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %321

321:                                              ; preds = %341, %316
  %322 = phi i32 [ %342, %341 ], [ 0, %316 ]
  %323 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %319, i32 %322), !nosanitize !20
  %324 = extractvalue { i32, i1 } %323, 1, !nosanitize !20
  br i1 %324, label %325, label %326, !prof !21, !nosanitize !20

325:                                              ; preds = %321
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

326:                                              ; preds = %321
  %327 = extractvalue { i32, i1 } %323, 0, !nosanitize !20
  %328 = tail call i32 @llvm.umin.i32(i32 %327, i32 1073741824)
  %329 = load i32, ptr %37, align 4, !tbaa !46
  %330 = zext i32 %322 to i64
  %331 = getelementptr inbounds nuw i8, ptr %317, i64 %330
  %332 = zext nneg i32 %328 to i64
  %333 = tail call i64 @read(i32 noundef %329, ptr noundef %331, i64 noundef %332) #13
  %334 = trunc i64 %333 to i32
  %335 = icmp slt i32 %334, 1
  br i1 %335, label %344, label %336

336:                                              ; preds = %326
  %337 = load i32, ptr %0, align 4, !tbaa !4
  %338 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %337, i32 %334), !nosanitize !20
  %339 = extractvalue { i32, i1 } %338, 1, !nosanitize !20
  br i1 %339, label %340, label %341, !prof !21, !nosanitize !20

340:                                              ; preds = %336
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

341:                                              ; preds = %336
  %342 = extractvalue { i32, i1 } %338, 0, !nosanitize !20
  store i32 %342, ptr %0, align 4, !tbaa !4
  %343 = icmp ult i32 %342, %319
  br i1 %343, label %321, label %358, !llvm.loop !47

344:                                              ; preds = %326
  %345 = icmp slt i32 %334, 0
  br i1 %345, label %346, label %354

346:                                              ; preds = %344
  %347 = load i32, ptr %320, align 4, !tbaa !4
  %348 = icmp eq i32 %347, 11
  br i1 %348, label %349, label %355

349:                                              ; preds = %346
  store i32 1, ptr %36, align 4, !tbaa !17
  %350 = load i32, ptr %0, align 4, !tbaa !4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %349
  %353 = load i32, ptr %320, align 4, !tbaa !4
  br label %355

354:                                              ; preds = %344
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %358

355:                                              ; preds = %352, %346
  %356 = phi i32 [ %353, %352 ], [ %347, %346 ]
  %357 = tail call ptr @strerror(i32 noundef %356) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %357) #13
  br label %954

358:                                              ; preds = %354, %349, %341
  %359 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %359, ptr %25, align 8, !tbaa !22
  br label %473

360:                                              ; preds = %76
  %361 = load i32, ptr %30, align 8, !tbaa !27
  %362 = shl i32 %361, 1
  store i32 %362, ptr %31, align 8, !tbaa !48
  %363 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %363, ptr %33, align 8, !tbaa !49
  br label %364

364:                                              ; preds = %443, %360
  %365 = phi i32 [ 0, %360 ], [ %428, %443 ]
  %366 = load i32, ptr %28, align 8, !tbaa !34
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %427

368:                                              ; preds = %364
  %369 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %369, label %447 [
    i32 0, label %370
    i32 -5, label %370
  ]

370:                                              ; preds = %368, %368
  %371 = load i32, ptr %27, align 8, !tbaa !24
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %423

373:                                              ; preds = %370
  %374 = load i32, ptr %30, align 8, !tbaa !27
  %375 = load ptr, ptr %35, align 8, !tbaa !29
  store i32 0, ptr %36, align 4, !tbaa !17
  %376 = tail call ptr @__errno_location() #17
  store i32 0, ptr %376, align 4, !tbaa !4
  br label %377

377:                                              ; preds = %396, %373
  %378 = phi i32 [ 0, %373 ], [ %397, %396 ]
  %379 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %374, i32 %378), !nosanitize !20
  %380 = extractvalue { i32, i1 } %379, 1, !nosanitize !20
  br i1 %380, label %381, label %382, !prof !21, !nosanitize !20

381:                                              ; preds = %377
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

382:                                              ; preds = %377
  %383 = extractvalue { i32, i1 } %379, 0, !nosanitize !20
  %384 = tail call i32 @llvm.umin.i32(i32 %383, i32 1073741824)
  %385 = load i32, ptr %37, align 4, !tbaa !46
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
  %402 = load i32, ptr %376, align 4, !tbaa !4
  %403 = icmp eq i32 %402, 11
  br i1 %403, label %404, label %409

404:                                              ; preds = %401
  store i32 1, ptr %36, align 4, !tbaa !17
  %405 = icmp eq i32 %378, 0
  br i1 %405, label %406, label %413

406:                                              ; preds = %404
  %407 = load i32, ptr %376, align 4, !tbaa !4
  br label %409

408:                                              ; preds = %399
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %413

409:                                              ; preds = %406, %401
  %410 = phi i32 [ %407, %406 ], [ %402, %401 ]
  %411 = tail call ptr @strerror(i32 noundef %410) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %411) #13
  %412 = load i32, ptr %14, align 8, !tbaa !16
  br label %447

413:                                              ; preds = %408, %404, %396
  %414 = phi i32 [ %378, %404 ], [ %378, %408 ], [ %397, %396 ]
  %415 = load i32, ptr %28, align 8, !tbaa !34
  %416 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %415, i32 %414), !nosanitize !20
  %417 = extractvalue { i32, i1 } %416, 1, !nosanitize !20
  br i1 %417, label %418, label %419, !prof !21, !nosanitize !20

418:                                              ; preds = %413
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

419:                                              ; preds = %413
  %420 = extractvalue { i32, i1 } %416, 0, !nosanitize !20
  store i32 %420, ptr %28, align 8, !tbaa !34
  %421 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %421, ptr %34, align 8, !tbaa !35
  %422 = icmp eq i32 %420, 0
  br i1 %422, label %423, label %427

423:                                              ; preds = %419, %370
  %424 = load i32, ptr %36, align 4, !tbaa !17
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %447

426:                                              ; preds = %423
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %447

427:                                              ; preds = %419, %364
  %428 = tail call i32 @inflate(ptr noundef nonnull %34, i32 noundef 0) #13
  %429 = load i32, ptr %31, align 8, !tbaa !48
  %430 = icmp ult i32 %429, %362
  br i1 %430, label %431, label %432

431:                                              ; preds = %427
  store i32 0, ptr %38, align 4, !tbaa !33
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
  %436 = load i32, ptr %38, align 4, !tbaa !33
  %437 = icmp eq i32 %436, 1
  br i1 %437, label %438, label %439

438:                                              ; preds = %435
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %27, align 8, !tbaa !24
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %447

439:                                              ; preds = %435
  %440 = load ptr, ptr %39, align 8, !tbaa !50
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
  %448 = phi i32 [ %412, %409 ], [ %365, %423 ], [ %365, %426 ], [ %428, %433 ], [ -4, %434 ], [ 0, %438 ], [ -3, %439 ], [ %369, %368 ], [ %428, %443 ]
  %449 = load i32, ptr %31, align 8, !tbaa !48
  %450 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %362, i32 %449), !nosanitize !20
  %451 = extractvalue { i32, i1 } %450, 1, !nosanitize !20
  br i1 %451, label %452, label %453, !prof !21, !nosanitize !20

452:                                              ; preds = %447
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

453:                                              ; preds = %447
  %454 = extractvalue { i32, i1 } %450, 0, !nosanitize !20
  store i32 %454, ptr %0, align 8, !tbaa !19
  %455 = load ptr, ptr %33, align 8, !tbaa !49
  %456 = zext i32 %454 to i64
  %457 = sub nsw i64 0, %456
  %458 = getelementptr inbounds i8, ptr %455, i64 %457
  store ptr %458, ptr %25, align 8, !tbaa !22
  switch i32 %448, label %954 [
    i32 1, label %459
    i32 0, label %461
  ]

459:                                              ; preds = %453
  store i32 0, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %461

460:                                              ; preds = %76
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %954

461:                                              ; preds = %459, %453, %313, %307
  %462 = load i32, ptr %0, align 8, !tbaa !19
  br label %463

463:                                              ; preds = %461, %309
  %464 = phi i32 [ %462, %461 ], [ %312, %309 ]
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %473

466:                                              ; preds = %463
  %467 = load i32, ptr %27, align 8, !tbaa !24
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %472, label %469

469:                                              ; preds = %466
  %470 = load i32, ptr %28, align 8, !tbaa !34
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %473, label %472

472:                                              ; preds = %469, %466
  br label %76, !llvm.loop !52

473:                                              ; preds = %469, %463, %358, %313
  %474 = load i64, ptr %21, align 8, !tbaa !18
  br label %475

475:                                              ; preds = %473, %67
  %476 = phi i64 [ %474, %473 ], [ %68, %67 ]
  %477 = icmp eq i64 %476, 0
  br i1 %477, label %478, label %43, !llvm.loop !53

478:                                              ; preds = %475, %72, %20
  %479 = add nsw i32 %2, -1
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %954, label %481

481:                                              ; preds = %478
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %483 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %485 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %486 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %487 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %488 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %490 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %492 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %493 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %495 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %496 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %497 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %498 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %499 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %500 = load i32, ptr %0, align 8, !tbaa !19
  br label %501

501:                                              ; preds = %945, %481
  %502 = phi i32 [ %934, %945 ], [ %500, %481 ]
  %503 = phi i32 [ %946, %945 ], [ %479, %481 ]
  %504 = phi ptr [ %947, %945 ], [ %1, %481 ]
  %505 = icmp eq i32 %502, 0
  br i1 %505, label %506, label %908

506:                                              ; preds = %902, %501
  %507 = load i32, ptr %482, align 8, !tbaa !26
  switch i32 %507, label %890 [
    i32 0, label %508
    i32 1, label %746
    i32 2, label %790
  ]

508:                                              ; preds = %506
  %509 = load i32, ptr %483, align 8, !tbaa !27
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %530

511:                                              ; preds = %508
  %512 = load i32, ptr %496, align 4, !tbaa !28
  %513 = zext i32 %512 to i64
  %514 = tail call noalias ptr @malloc(i64 noundef %513) #16
  store ptr %514, ptr %490, align 8, !tbaa !29
  %515 = load i32, ptr %496, align 4, !tbaa !28
  %516 = shl i32 %515, 1
  %517 = zext i32 %516 to i64
  %518 = tail call noalias ptr @malloc(i64 noundef %517) #16
  store ptr %518, ptr %485, align 8, !tbaa !30
  %519 = icmp eq ptr %514, null
  %520 = icmp eq ptr %518, null
  %521 = or i1 %519, %520
  br i1 %521, label %522, label %523

522:                                              ; preds = %511
  tail call void @free(ptr noundef %518) #13
  tail call void @free(ptr noundef %514) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %950

523:                                              ; preds = %511
  %524 = load i32, ptr %496, align 4, !tbaa !28
  store i32 %524, ptr %483, align 8, !tbaa !27
  store i32 0, ptr %488, align 8, !tbaa !25
  store ptr null, ptr %487, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %497, i8 0, i64 24, i1 false)
  %525 = tail call i32 @inflateInit2_(ptr noundef nonnull %487, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %530, label %527

527:                                              ; preds = %523
  %528 = load ptr, ptr %485, align 8, !tbaa !30
  tail call void @free(ptr noundef %528) #13
  %529 = load ptr, ptr %490, align 8, !tbaa !29
  tail call void @free(ptr noundef %529) #13
  store i32 0, ptr %483, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %950

530:                                              ; preds = %523, %508
  %531 = load i32, ptr %498, align 8, !tbaa !32
  %532 = icmp eq i32 %531, -1
  br i1 %532, label %536, label %533

533:                                              ; preds = %530
  %534 = load i32, ptr %493, align 4, !tbaa !33
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %536, label %541

536:                                              ; preds = %533, %530
  %537 = tail call i32 @inflateReset(ptr noundef nonnull %487) #13
  store i32 2, ptr %482, align 8, !tbaa !26
  %538 = load i32, ptr %493, align 4, !tbaa !33
  %539 = icmp ne i32 %538, -1
  %540 = zext i1 %539 to i32
  store i32 %540, ptr %493, align 4, !tbaa !33
  store i32 0, ptr %498, align 8, !tbaa !32
  br label %743

541:                                              ; preds = %533
  %542 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %542, label %950 [
    i32 0, label %543
    i32 -5, label %543
  ]

543:                                              ; preds = %541, %541
  %544 = load i32, ptr %489, align 8, !tbaa !24
  %545 = icmp eq i32 %544, 0
  %546 = load i32, ptr %488, align 8, !tbaa !34
  br i1 %545, label %547, label %711

547:                                              ; preds = %543
  %548 = icmp eq i32 %546, 0
  br i1 %548, label %655, label %549

549:                                              ; preds = %547
  %550 = load ptr, ptr %490, align 8, !tbaa !29
  %551 = load ptr, ptr %487, align 8, !tbaa !35
  %552 = icmp eq ptr %551, %550
  br i1 %552, label %655, label %553

553:                                              ; preds = %549
  %554 = ptrtoaddr ptr %551 to i64
  %555 = ptrtoaddr ptr %550 to i64
  %556 = zext i32 %546 to i64
  %557 = icmp ult i32 %546, 4
  %558 = sub i64 %555, %554
  %559 = icmp ult i64 %558, 32
  %560 = or i1 %557, %559
  br i1 %560, label %600, label %561

561:                                              ; preds = %553
  %562 = icmp ult i32 %546, 32
  br i1 %562, label %584, label %563

563:                                              ; preds = %561
  %564 = and i64 %556, 28
  %565 = and i64 %556, 4294967264
  %566 = getelementptr i8, ptr %550, i64 %565
  %567 = getelementptr i8, ptr %551, i64 %565
  %568 = trunc nuw i64 %565 to i32
  %569 = sub i32 %546, %568
  br label %570

570:                                              ; preds = %570, %563
  %571 = phi i64 [ 0, %563 ], [ %578, %570 ]
  %572 = getelementptr i8, ptr %550, i64 %571
  %573 = getelementptr i8, ptr %551, i64 %571
  %574 = getelementptr i8, ptr %573, i64 16
  %575 = load <16 x i8>, ptr %573, align 1, !tbaa !36
  %576 = load <16 x i8>, ptr %574, align 1, !tbaa !36
  %577 = getelementptr i8, ptr %572, i64 16
  store <16 x i8> %575, ptr %572, align 1, !tbaa !36
  store <16 x i8> %576, ptr %577, align 1, !tbaa !36
  %578 = add nuw i64 %571, 32
  %579 = icmp eq i64 %578, %565
  br i1 %579, label %580, label %570, !llvm.loop !99

580:                                              ; preds = %570
  %581 = icmp eq i64 %565, %556
  br i1 %581, label %653, label %582

582:                                              ; preds = %580
  %583 = icmp eq i64 %564, 0
  br i1 %583, label %600, label %584, !prof !41

584:                                              ; preds = %582, %561
  %585 = phi i64 [ %565, %582 ], [ 0, %561 ]
  %586 = and i64 %556, 4294967292
  %587 = getelementptr i8, ptr %550, i64 %586
  %588 = getelementptr i8, ptr %551, i64 %586
  %589 = trunc nuw i64 %586 to i32
  %590 = sub i32 %546, %589
  br label %591

591:                                              ; preds = %591, %584
  %592 = phi i64 [ %585, %584 ], [ %596, %591 ]
  %593 = getelementptr i8, ptr %550, i64 %592
  %594 = getelementptr i8, ptr %551, i64 %592
  %595 = load <4 x i8>, ptr %594, align 1, !tbaa !36
  store <4 x i8> %595, ptr %593, align 1, !tbaa !36
  %596 = add nuw i64 %592, 4
  %597 = icmp eq i64 %596, %586
  br i1 %597, label %598, label %591, !llvm.loop !100

598:                                              ; preds = %591
  %599 = icmp eq i64 %586, %556
  br i1 %599, label %653, label %600

600:                                              ; preds = %598, %582, %553
  %601 = phi ptr [ %550, %553 ], [ %566, %582 ], [ %587, %598 ]
  %602 = phi ptr [ %551, %553 ], [ %567, %582 ], [ %588, %598 ]
  %603 = phi i32 [ %546, %553 ], [ %569, %582 ], [ %590, %598 ]
  %604 = add i32 %603, -1
  %605 = and i32 %603, 7
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %618, label %607

607:                                              ; preds = %607, %600
  %608 = phi ptr [ %614, %607 ], [ %601, %600 ]
  %609 = phi ptr [ %615, %607 ], [ %602, %600 ]
  %610 = phi i32 [ %613, %607 ], [ %603, %600 ]
  %611 = phi i32 [ %616, %607 ], [ 0, %600 ]
  %612 = load i8, ptr %609, align 1, !tbaa !36
  store i8 %612, ptr %608, align 1, !tbaa !36
  %613 = add i32 %610, -1
  %614 = getelementptr inbounds nuw i8, ptr %608, i64 1
  %615 = getelementptr inbounds nuw i8, ptr %609, i64 1
  %616 = add i32 %611, 1
  %617 = icmp eq i32 %616, %605
  br i1 %617, label %618, label %607, !llvm.loop !101

618:                                              ; preds = %607, %600
  %619 = phi ptr [ %601, %600 ], [ %614, %607 ]
  %620 = phi ptr [ %602, %600 ], [ %615, %607 ]
  %621 = phi i32 [ %603, %600 ], [ %613, %607 ]
  %622 = icmp ult i32 %604, 7
  br i1 %622, label %653, label %623

623:                                              ; preds = %623, %618
  %624 = phi ptr [ %650, %623 ], [ %619, %618 ]
  %625 = phi ptr [ %651, %623 ], [ %620, %618 ]
  %626 = phi i32 [ %649, %623 ], [ %621, %618 ]
  %627 = load i8, ptr %625, align 1, !tbaa !36
  store i8 %627, ptr %624, align 1, !tbaa !36
  %628 = getelementptr inbounds nuw i8, ptr %624, i64 1
  %629 = getelementptr inbounds nuw i8, ptr %625, i64 1
  %630 = load i8, ptr %629, align 1, !tbaa !36
  store i8 %630, ptr %628, align 1, !tbaa !36
  %631 = getelementptr inbounds nuw i8, ptr %624, i64 2
  %632 = getelementptr inbounds nuw i8, ptr %625, i64 2
  %633 = load i8, ptr %632, align 1, !tbaa !36
  store i8 %633, ptr %631, align 1, !tbaa !36
  %634 = getelementptr inbounds nuw i8, ptr %624, i64 3
  %635 = getelementptr inbounds nuw i8, ptr %625, i64 3
  %636 = load i8, ptr %635, align 1, !tbaa !36
  store i8 %636, ptr %634, align 1, !tbaa !36
  %637 = getelementptr inbounds nuw i8, ptr %624, i64 4
  %638 = getelementptr inbounds nuw i8, ptr %625, i64 4
  %639 = load i8, ptr %638, align 1, !tbaa !36
  store i8 %639, ptr %637, align 1, !tbaa !36
  %640 = getelementptr inbounds nuw i8, ptr %624, i64 5
  %641 = getelementptr inbounds nuw i8, ptr %625, i64 5
  %642 = load i8, ptr %641, align 1, !tbaa !36
  store i8 %642, ptr %640, align 1, !tbaa !36
  %643 = getelementptr inbounds nuw i8, ptr %624, i64 6
  %644 = getelementptr inbounds nuw i8, ptr %625, i64 6
  %645 = load i8, ptr %644, align 1, !tbaa !36
  store i8 %645, ptr %643, align 1, !tbaa !36
  %646 = getelementptr inbounds nuw i8, ptr %624, i64 7
  %647 = getelementptr inbounds nuw i8, ptr %625, i64 7
  %648 = load i8, ptr %647, align 1, !tbaa !36
  store i8 %648, ptr %646, align 1, !tbaa !36
  %649 = add i32 %626, -8
  %650 = getelementptr inbounds nuw i8, ptr %624, i64 8
  %651 = getelementptr inbounds nuw i8, ptr %625, i64 8
  %652 = icmp eq i32 %649, 0
  br i1 %652, label %653, label %623, !llvm.loop !102

653:                                              ; preds = %623, %618, %598, %580
  %654 = load i32, ptr %488, align 8, !tbaa !34
  br label %655

655:                                              ; preds = %653, %549, %547
  %656 = phi i32 [ %654, %653 ], [ %546, %549 ], [ 0, %547 ]
  %657 = load i32, ptr %483, align 8, !tbaa !27
  %658 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %657, i32 %656), !nosanitize !20
  %659 = extractvalue { i32, i1 } %658, 1, !nosanitize !20
  br i1 %659, label %660, label %661, !prof !21, !nosanitize !20

660:                                              ; preds = %655
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

661:                                              ; preds = %655
  %662 = extractvalue { i32, i1 } %658, 0, !nosanitize !20
  %663 = load ptr, ptr %490, align 8, !tbaa !29
  %664 = zext i32 %656 to i64
  %665 = getelementptr inbounds nuw i8, ptr %663, i64 %664
  store i32 0, ptr %491, align 4, !tbaa !17
  %666 = tail call ptr @__errno_location() #17
  store i32 0, ptr %666, align 4, !tbaa !4
  br label %667

667:                                              ; preds = %686, %661
  %668 = phi i32 [ 0, %661 ], [ %687, %686 ]
  %669 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %662, i32 %668), !nosanitize !20
  %670 = extractvalue { i32, i1 } %669, 1, !nosanitize !20
  br i1 %670, label %671, label %672, !prof !21, !nosanitize !20

671:                                              ; preds = %667
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

672:                                              ; preds = %667
  %673 = extractvalue { i32, i1 } %669, 0, !nosanitize !20
  %674 = tail call i32 @llvm.umin.i32(i32 %673, i32 1073741824)
  %675 = load i32, ptr %492, align 4, !tbaa !46
  %676 = zext i32 %668 to i64
  %677 = getelementptr inbounds nuw i8, ptr %665, i64 %676
  %678 = zext nneg i32 %674 to i64
  %679 = tail call i64 @read(i32 noundef %675, ptr noundef %677, i64 noundef %678) #13
  %680 = trunc i64 %679 to i32
  %681 = icmp slt i32 %680, 1
  br i1 %681, label %689, label %682

682:                                              ; preds = %672
  %683 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %668, i32 %680), !nosanitize !20
  %684 = extractvalue { i32, i1 } %683, 1, !nosanitize !20
  br i1 %684, label %685, label %686, !prof !21, !nosanitize !20

685:                                              ; preds = %682
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

686:                                              ; preds = %682
  %687 = extractvalue { i32, i1 } %683, 0, !nosanitize !20
  %688 = icmp ult i32 %687, %662
  br i1 %688, label %667, label %702, !llvm.loop !47

689:                                              ; preds = %672
  %690 = icmp slt i32 %680, 0
  br i1 %690, label %691, label %698

691:                                              ; preds = %689
  %692 = load i32, ptr %666, align 4, !tbaa !4
  %693 = icmp eq i32 %692, 11
  br i1 %693, label %694, label %699

694:                                              ; preds = %691
  store i32 1, ptr %491, align 4, !tbaa !17
  %695 = icmp eq i32 %668, 0
  br i1 %695, label %696, label %702

696:                                              ; preds = %694
  %697 = load i32, ptr %666, align 4, !tbaa !4
  br label %699

698:                                              ; preds = %689
  store i32 1, ptr %489, align 8, !tbaa !24
  br label %702

699:                                              ; preds = %696, %691
  %700 = phi i32 [ %697, %696 ], [ %692, %691 ]
  %701 = tail call ptr @strerror(i32 noundef %700) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %701) #13
  br label %950

702:                                              ; preds = %698, %694, %686
  %703 = phi i32 [ %668, %694 ], [ %668, %698 ], [ %687, %686 ]
  %704 = load i32, ptr %488, align 8, !tbaa !34
  %705 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %704, i32 %703), !nosanitize !20
  %706 = extractvalue { i32, i1 } %705, 1, !nosanitize !20
  br i1 %706, label %707, label %708, !prof !21, !nosanitize !20

707:                                              ; preds = %702
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

708:                                              ; preds = %702
  %709 = extractvalue { i32, i1 } %705, 0, !nosanitize !20
  store i32 %709, ptr %488, align 8, !tbaa !34
  %710 = load ptr, ptr %490, align 8, !tbaa !29
  store ptr %710, ptr %487, align 8, !tbaa !35
  br label %711

711:                                              ; preds = %708, %543
  %712 = phi i32 [ %709, %708 ], [ %546, %543 ]
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %743, label %714

714:                                              ; preds = %711
  %715 = load i32, ptr %491, align 4, !tbaa !17
  %716 = icmp ne i32 %715, 0
  %717 = icmp ult i32 %712, 4
  %718 = and i1 %717, %716
  br i1 %718, label %743, label %719

719:                                              ; preds = %714
  %720 = icmp ugt i32 %712, 3
  %721 = load ptr, ptr %487, align 8, !tbaa !35
  br i1 %720, label %722, label %739

722:                                              ; preds = %719
  %723 = load i8, ptr %721, align 1, !tbaa !36
  %724 = icmp eq i8 %723, 31
  br i1 %724, label %725, label %739

725:                                              ; preds = %722
  %726 = getelementptr inbounds nuw i8, ptr %721, i64 1
  %727 = load i8, ptr %726, align 1, !tbaa !36
  %728 = icmp eq i8 %727, -117
  br i1 %728, label %729, label %739

729:                                              ; preds = %725
  %730 = getelementptr inbounds nuw i8, ptr %721, i64 2
  %731 = load i8, ptr %730, align 1, !tbaa !36
  %732 = icmp eq i8 %731, 8
  br i1 %732, label %733, label %739

733:                                              ; preds = %729
  %734 = getelementptr inbounds nuw i8, ptr %721, i64 3
  %735 = load i8, ptr %734, align 1, !tbaa !36
  %736 = icmp ult i8 %735, 32
  br i1 %736, label %737, label %739

737:                                              ; preds = %733
  %738 = tail call i32 @inflateReset(ptr noundef nonnull %487) #13
  store i32 2, ptr %482, align 8, !tbaa !26
  store i32 1, ptr %493, align 4, !tbaa !33
  store i32 0, ptr %498, align 8, !tbaa !32
  br label %891

739:                                              ; preds = %733, %729, %725, %722, %719
  %740 = load ptr, ptr %485, align 8, !tbaa !30
  store ptr %740, ptr %495, align 8, !tbaa !22
  %741 = zext i32 %712 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %740, ptr align 1 %721, i64 %741, i1 false)
  %742 = load i32, ptr %488, align 8, !tbaa !34
  store i32 %742, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %488, align 8, !tbaa !34
  store i32 1, ptr %482, align 8, !tbaa !26
  br label %893

743:                                              ; preds = %714, %711, %536
  %744 = load i32, ptr %482, align 8, !tbaa !26
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %903, label %891

746:                                              ; preds = %506
  %747 = load ptr, ptr %485, align 8, !tbaa !30
  %748 = load i32, ptr %483, align 8, !tbaa !27
  %749 = shl i32 %748, 1
  store i32 0, ptr %491, align 4, !tbaa !17
  %750 = tail call ptr @__errno_location() #17
  store i32 0, ptr %750, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %751

751:                                              ; preds = %771, %746
  %752 = phi i32 [ %772, %771 ], [ 0, %746 ]
  %753 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %749, i32 %752), !nosanitize !20
  %754 = extractvalue { i32, i1 } %753, 1, !nosanitize !20
  br i1 %754, label %755, label %756, !prof !21, !nosanitize !20

755:                                              ; preds = %751
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

756:                                              ; preds = %751
  %757 = extractvalue { i32, i1 } %753, 0, !nosanitize !20
  %758 = tail call i32 @llvm.umin.i32(i32 %757, i32 1073741824)
  %759 = load i32, ptr %492, align 4, !tbaa !46
  %760 = zext i32 %752 to i64
  %761 = getelementptr inbounds nuw i8, ptr %747, i64 %760
  %762 = zext nneg i32 %758 to i64
  %763 = tail call i64 @read(i32 noundef %759, ptr noundef %761, i64 noundef %762) #13
  %764 = trunc i64 %763 to i32
  %765 = icmp slt i32 %764, 1
  br i1 %765, label %774, label %766

766:                                              ; preds = %756
  %767 = load i32, ptr %0, align 4, !tbaa !4
  %768 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %767, i32 %764), !nosanitize !20
  %769 = extractvalue { i32, i1 } %768, 1, !nosanitize !20
  br i1 %769, label %770, label %771, !prof !21, !nosanitize !20

770:                                              ; preds = %766
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

771:                                              ; preds = %766
  %772 = extractvalue { i32, i1 } %768, 0, !nosanitize !20
  store i32 %772, ptr %0, align 4, !tbaa !4
  %773 = icmp ult i32 %772, %749
  br i1 %773, label %751, label %788, !llvm.loop !47

774:                                              ; preds = %756
  %775 = icmp slt i32 %764, 0
  br i1 %775, label %776, label %784

776:                                              ; preds = %774
  %777 = load i32, ptr %750, align 4, !tbaa !4
  %778 = icmp eq i32 %777, 11
  br i1 %778, label %779, label %785

779:                                              ; preds = %776
  store i32 1, ptr %491, align 4, !tbaa !17
  %780 = load i32, ptr %0, align 4, !tbaa !4
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %782, label %788

782:                                              ; preds = %779
  %783 = load i32, ptr %750, align 4, !tbaa !4
  br label %785

784:                                              ; preds = %774
  store i32 1, ptr %489, align 8, !tbaa !24
  br label %788

785:                                              ; preds = %782, %776
  %786 = phi i32 [ %783, %782 ], [ %777, %776 ]
  %787 = tail call ptr @strerror(i32 noundef %786) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %787) #13
  br label %950

788:                                              ; preds = %784, %779, %771
  %789 = load ptr, ptr %485, align 8, !tbaa !30
  store ptr %789, ptr %495, align 8, !tbaa !22
  br label %903

790:                                              ; preds = %506
  %791 = load i32, ptr %483, align 8, !tbaa !27
  %792 = shl i32 %791, 1
  store i32 %792, ptr %484, align 8, !tbaa !48
  %793 = load ptr, ptr %485, align 8, !tbaa !30
  store ptr %793, ptr %486, align 8, !tbaa !49
  br label %794

794:                                              ; preds = %873, %790
  %795 = phi i32 [ 0, %790 ], [ %858, %873 ]
  %796 = load i32, ptr %488, align 8, !tbaa !34
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %798, label %857

798:                                              ; preds = %794
  %799 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %799, label %877 [
    i32 0, label %800
    i32 -5, label %800
  ]

800:                                              ; preds = %798, %798
  %801 = load i32, ptr %489, align 8, !tbaa !24
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %803, label %853

803:                                              ; preds = %800
  %804 = load i32, ptr %483, align 8, !tbaa !27
  %805 = load ptr, ptr %490, align 8, !tbaa !29
  store i32 0, ptr %491, align 4, !tbaa !17
  %806 = tail call ptr @__errno_location() #17
  store i32 0, ptr %806, align 4, !tbaa !4
  br label %807

807:                                              ; preds = %826, %803
  %808 = phi i32 [ 0, %803 ], [ %827, %826 ]
  %809 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %804, i32 %808), !nosanitize !20
  %810 = extractvalue { i32, i1 } %809, 1, !nosanitize !20
  br i1 %810, label %811, label %812, !prof !21, !nosanitize !20

811:                                              ; preds = %807
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

812:                                              ; preds = %807
  %813 = extractvalue { i32, i1 } %809, 0, !nosanitize !20
  %814 = tail call i32 @llvm.umin.i32(i32 %813, i32 1073741824)
  %815 = load i32, ptr %492, align 4, !tbaa !46
  %816 = zext i32 %808 to i64
  %817 = getelementptr inbounds nuw i8, ptr %805, i64 %816
  %818 = zext nneg i32 %814 to i64
  %819 = tail call i64 @read(i32 noundef %815, ptr noundef %817, i64 noundef %818) #13
  %820 = trunc i64 %819 to i32
  %821 = icmp slt i32 %820, 1
  br i1 %821, label %829, label %822

822:                                              ; preds = %812
  %823 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %808, i32 %820), !nosanitize !20
  %824 = extractvalue { i32, i1 } %823, 1, !nosanitize !20
  br i1 %824, label %825, label %826, !prof !21, !nosanitize !20

825:                                              ; preds = %822
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

826:                                              ; preds = %822
  %827 = extractvalue { i32, i1 } %823, 0, !nosanitize !20
  %828 = icmp ult i32 %827, %804
  br i1 %828, label %807, label %843, !llvm.loop !47

829:                                              ; preds = %812
  %830 = icmp slt i32 %820, 0
  br i1 %830, label %831, label %838

831:                                              ; preds = %829
  %832 = load i32, ptr %806, align 4, !tbaa !4
  %833 = icmp eq i32 %832, 11
  br i1 %833, label %834, label %839

834:                                              ; preds = %831
  store i32 1, ptr %491, align 4, !tbaa !17
  %835 = icmp eq i32 %808, 0
  br i1 %835, label %836, label %843

836:                                              ; preds = %834
  %837 = load i32, ptr %806, align 4, !tbaa !4
  br label %839

838:                                              ; preds = %829
  store i32 1, ptr %489, align 8, !tbaa !24
  br label %843

839:                                              ; preds = %836, %831
  %840 = phi i32 [ %837, %836 ], [ %832, %831 ]
  %841 = tail call ptr @strerror(i32 noundef %840) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %841) #13
  %842 = load i32, ptr %14, align 8, !tbaa !16
  br label %877

843:                                              ; preds = %838, %834, %826
  %844 = phi i32 [ %808, %834 ], [ %808, %838 ], [ %827, %826 ]
  %845 = load i32, ptr %488, align 8, !tbaa !34
  %846 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %845, i32 %844), !nosanitize !20
  %847 = extractvalue { i32, i1 } %846, 1, !nosanitize !20
  br i1 %847, label %848, label %849, !prof !21, !nosanitize !20

848:                                              ; preds = %843
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

849:                                              ; preds = %843
  %850 = extractvalue { i32, i1 } %846, 0, !nosanitize !20
  store i32 %850, ptr %488, align 8, !tbaa !34
  %851 = load ptr, ptr %490, align 8, !tbaa !29
  store ptr %851, ptr %487, align 8, !tbaa !35
  %852 = icmp eq i32 %850, 0
  br i1 %852, label %853, label %857

853:                                              ; preds = %849, %800
  %854 = load i32, ptr %491, align 4, !tbaa !17
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %856, label %877

856:                                              ; preds = %853
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %877

857:                                              ; preds = %849, %794
  %858 = tail call i32 @inflate(ptr noundef nonnull %487, i32 noundef 0) #13
  %859 = load i32, ptr %484, align 8, !tbaa !48
  %860 = icmp ult i32 %859, %792
  br i1 %860, label %861, label %862

861:                                              ; preds = %857
  store i32 0, ptr %493, align 4, !tbaa !33
  br label %862

862:                                              ; preds = %861, %857
  switch i32 %858, label %873 [
    i32 -2, label %863
    i32 2, label %863
    i32 -4, label %864
    i32 -3, label %865
  ]

863:                                              ; preds = %862, %862
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %877

864:                                              ; preds = %862
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %877

865:                                              ; preds = %862
  %866 = load i32, ptr %493, align 4, !tbaa !33
  %867 = icmp eq i32 %866, 1
  br i1 %867, label %868, label %869

868:                                              ; preds = %865
  store i32 0, ptr %488, align 8, !tbaa !34
  store i32 1, ptr %489, align 8, !tbaa !24
  store i32 0, ptr %482, align 8, !tbaa !26
  br label %877

869:                                              ; preds = %865
  %870 = load ptr, ptr %494, align 8, !tbaa !50
  %871 = icmp eq ptr %870, null
  %872 = select i1 %871, ptr @.str.6, ptr %870
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %872) #13
  br label %877

873:                                              ; preds = %862
  %874 = icmp ne i32 %859, 0
  %875 = icmp ne i32 %858, 1
  %876 = select i1 %874, i1 %875, i1 false
  br i1 %876, label %794, label %877, !llvm.loop !51

877:                                              ; preds = %873, %869, %868, %864, %863, %856, %853, %839, %798
  %878 = phi i32 [ %842, %839 ], [ %795, %853 ], [ %795, %856 ], [ %858, %863 ], [ -4, %864 ], [ 0, %868 ], [ -3, %869 ], [ %858, %873 ], [ %799, %798 ]
  %879 = load i32, ptr %484, align 8, !tbaa !48
  %880 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %792, i32 %879), !nosanitize !20
  %881 = extractvalue { i32, i1 } %880, 1, !nosanitize !20
  br i1 %881, label %882, label %883, !prof !21, !nosanitize !20

882:                                              ; preds = %877
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

883:                                              ; preds = %877
  %884 = extractvalue { i32, i1 } %880, 0, !nosanitize !20
  store i32 %884, ptr %0, align 8, !tbaa !19
  %885 = load ptr, ptr %486, align 8, !tbaa !49
  %886 = zext i32 %884 to i64
  %887 = sub nsw i64 0, %886
  %888 = getelementptr inbounds i8, ptr %885, i64 %887
  store ptr %888, ptr %495, align 8, !tbaa !22
  switch i32 %878, label %950 [
    i32 1, label %889
    i32 0, label %891
  ]

889:                                              ; preds = %883
  store i32 0, ptr %493, align 4, !tbaa !33
  store i32 0, ptr %482, align 8, !tbaa !26
  br label %891

890:                                              ; preds = %506
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %950

891:                                              ; preds = %889, %883, %743, %737
  %892 = load i32, ptr %0, align 8, !tbaa !19
  br label %893

893:                                              ; preds = %891, %739
  %894 = phi i32 [ %892, %891 ], [ %742, %739 ]
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %896, label %903

896:                                              ; preds = %893
  %897 = load i32, ptr %489, align 8, !tbaa !24
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %902, label %899

899:                                              ; preds = %896
  %900 = load i32, ptr %488, align 8, !tbaa !34
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %903, label %902

902:                                              ; preds = %899, %896
  br label %506, !llvm.loop !52

903:                                              ; preds = %899, %893, %788, %743
  %904 = load i32, ptr %0, align 8, !tbaa !19
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %906, label %908

906:                                              ; preds = %903
  %907 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %907, align 4, !tbaa !61
  br label %950

908:                                              ; preds = %903, %501
  %909 = phi i32 [ %904, %903 ], [ %502, %501 ]
  %910 = tail call i32 @llvm.umin.i32(i32 %909, i32 %503)
  %911 = load ptr, ptr %495, align 8, !tbaa !22
  %912 = zext i32 %910 to i64
  %913 = tail call ptr @memchr(ptr noundef %911, i32 noundef 10, i64 noundef %912) #18
  %914 = icmp eq ptr %913, null
  br i1 %914, label %926, label %915

915:                                              ; preds = %908
  %916 = ptrtoint ptr %913 to i64
  %917 = ptrtoint ptr %911 to i64
  %918 = sub i64 %916, %917
  %919 = trunc i64 %918 to i32
  %920 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %919, i32 1), !nosanitize !20
  %921 = extractvalue { i32, i1 } %920, 1, !nosanitize !20
  br i1 %921, label %922, label %923, !prof !21, !nosanitize !20

922:                                              ; preds = %933, %915
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

923:                                              ; preds = %915
  %924 = extractvalue { i32, i1 } %920, 0, !nosanitize !20
  %925 = zext i32 %924 to i64
  br label %926

926:                                              ; preds = %923, %908
  %927 = phi i64 [ %925, %923 ], [ %912, %908 ]
  %928 = phi i32 [ %924, %923 ], [ %910, %908 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %504, ptr align 1 %911, i64 %927, i1 false)
  %929 = load i32, ptr %0, align 8, !tbaa !19
  %930 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %929, i32 %928), !nosanitize !20
  %931 = extractvalue { i32, i1 } %930, 1, !nosanitize !20
  br i1 %931, label %932, label %933, !prof !21, !nosanitize !20

932:                                              ; preds = %926
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

933:                                              ; preds = %926
  %934 = extractvalue { i32, i1 } %930, 0, !nosanitize !20
  store i32 %934, ptr %0, align 8, !tbaa !19
  %935 = load ptr, ptr %495, align 8, !tbaa !22
  %936 = getelementptr inbounds nuw i8, ptr %935, i64 %927
  store ptr %936, ptr %495, align 8, !tbaa !22
  %937 = load i64, ptr %499, align 8, !tbaa !23
  %938 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %937, i64 %927), !nosanitize !20
  %939 = extractvalue { i64, i1 } %938, 1, !nosanitize !20
  br i1 %939, label %922, label %940, !prof !21, !nosanitize !20

940:                                              ; preds = %933
  %941 = extractvalue { i64, i1 } %938, 0, !nosanitize !20
  store i64 %941, ptr %499, align 8, !tbaa !23
  %942 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %503, i32 %928), !nosanitize !20
  %943 = extractvalue { i32, i1 } %942, 1, !nosanitize !20
  br i1 %943, label %944, label %945, !prof !21, !nosanitize !20

944:                                              ; preds = %940
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

945:                                              ; preds = %940
  %946 = extractvalue { i32, i1 } %942, 0, !nosanitize !20
  %947 = getelementptr inbounds nuw i8, ptr %504, i64 %927
  %948 = icmp ne i32 %946, 0
  %949 = and i1 %914, %948
  br i1 %949, label %501, label %950, !llvm.loop !103

950:                                              ; preds = %945, %906, %890, %883, %785, %699, %541, %527, %522
  %951 = phi ptr [ %504, %883 ], [ %504, %906 ], [ %504, %890 ], [ %504, %785 ], [ %504, %699 ], [ %504, %522 ], [ %504, %527 ], [ %504, %541 ], [ %947, %945 ]
  %952 = icmp eq ptr %951, %1
  br i1 %952, label %954, label %953

953:                                              ; preds = %950
  store i8 0, ptr %951, align 1, !tbaa !36
  br label %954

954:                                              ; preds = %953, %950, %478, %460, %453, %355, %269, %111, %97, %92, %16, %9, %3
  %955 = phi ptr [ null, %9 ], [ null, %3 ], [ null, %16 ], [ null, %92 ], [ %1, %953 ], [ null, %950 ], [ null, %97 ], [ null, %478 ], [ null, %460 ], [ null, %355 ], [ null, %269 ], [ null, %453 ], [ null, %111 ]
  ret ptr %955
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @gzdirect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %274, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !8
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %269

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load i32, ptr %8, align 8, !tbaa !26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %269

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 8, !tbaa !19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %269

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
  %23 = tail call noalias ptr @malloc(i64 noundef %22) #16
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %23, ptr %24, align 8, !tbaa !29
  %25 = load i32, ptr %20, align 4, !tbaa !28
  %26 = shl i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = tail call noalias ptr @malloc(i64 noundef %27) #16
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
  br label %269

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
  br label %269

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
  br label %269

57:                                               ; preds = %47
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %59 = load i32, ptr %58, align 8, !tbaa !16
  switch i32 %59, label %269 [
    i32 0, label %60
    i32 -5, label %60
  ]

60:                                               ; preds = %57, %57
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %62 = load i32, ptr %61, align 8, !tbaa !24
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %65 = load i32, ptr %64, align 8, !tbaa !34
  br i1 %63, label %66, label %234

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
  %129 = phi ptr [ %135, %127 ], [ %122, %120 ]
  %130 = phi i32 [ %133, %127 ], [ %123, %120 ]
  %131 = phi i32 [ %136, %127 ], [ 0, %120 ]
  %132 = load i8, ptr %129, align 1, !tbaa !36
  store i8 %132, ptr %128, align 1, !tbaa !36
  %133 = add i32 %130, -1
  %134 = getelementptr inbounds nuw i8, ptr %128, i64 1
  %135 = getelementptr inbounds nuw i8, ptr %129, i64 1
  %136 = add i32 %131, 1
  %137 = icmp eq i32 %136, %125
  br i1 %137, label %138, label %127, !llvm.loop !106

138:                                              ; preds = %127, %120
  %139 = phi ptr [ %121, %120 ], [ %134, %127 ]
  %140 = phi ptr [ %122, %120 ], [ %135, %127 ]
  %141 = phi i32 [ %123, %120 ], [ %133, %127 ]
  %142 = icmp ult i32 %124, 7
  br i1 %142, label %173, label %143

143:                                              ; preds = %143, %138
  %144 = phi ptr [ %170, %143 ], [ %139, %138 ]
  %145 = phi ptr [ %171, %143 ], [ %140, %138 ]
  %146 = phi i32 [ %169, %143 ], [ %141, %138 ]
  %147 = load i8, ptr %145, align 1, !tbaa !36
  store i8 %147, ptr %144, align 1, !tbaa !36
  %148 = getelementptr inbounds nuw i8, ptr %144, i64 1
  %149 = getelementptr inbounds nuw i8, ptr %145, i64 1
  %150 = load i8, ptr %149, align 1, !tbaa !36
  store i8 %150, ptr %148, align 1, !tbaa !36
  %151 = getelementptr inbounds nuw i8, ptr %144, i64 2
  %152 = getelementptr inbounds nuw i8, ptr %145, i64 2
  %153 = load i8, ptr %152, align 1, !tbaa !36
  store i8 %153, ptr %151, align 1, !tbaa !36
  %154 = getelementptr inbounds nuw i8, ptr %144, i64 3
  %155 = getelementptr inbounds nuw i8, ptr %145, i64 3
  %156 = load i8, ptr %155, align 1, !tbaa !36
  store i8 %156, ptr %154, align 1, !tbaa !36
  %157 = getelementptr inbounds nuw i8, ptr %144, i64 4
  %158 = getelementptr inbounds nuw i8, ptr %145, i64 4
  %159 = load i8, ptr %158, align 1, !tbaa !36
  store i8 %159, ptr %157, align 1, !tbaa !36
  %160 = getelementptr inbounds nuw i8, ptr %144, i64 5
  %161 = getelementptr inbounds nuw i8, ptr %145, i64 5
  %162 = load i8, ptr %161, align 1, !tbaa !36
  store i8 %162, ptr %160, align 1, !tbaa !36
  %163 = getelementptr inbounds nuw i8, ptr %144, i64 6
  %164 = getelementptr inbounds nuw i8, ptr %145, i64 6
  %165 = load i8, ptr %164, align 1, !tbaa !36
  store i8 %165, ptr %163, align 1, !tbaa !36
  %166 = getelementptr inbounds nuw i8, ptr %144, i64 7
  %167 = getelementptr inbounds nuw i8, ptr %145, i64 7
  %168 = load i8, ptr %167, align 1, !tbaa !36
  store i8 %168, ptr %166, align 1, !tbaa !36
  %169 = add i32 %146, -8
  %170 = getelementptr inbounds nuw i8, ptr %144, i64 8
  %171 = getelementptr inbounds nuw i8, ptr %145, i64 8
  %172 = icmp eq i32 %169, 0
  br i1 %172, label %173, label %143, !llvm.loop !107

173:                                              ; preds = %143, %138, %118, %100
  %174 = load i32, ptr %64, align 8, !tbaa !34
  br label %175

175:                                              ; preds = %173, %68, %66
  %176 = phi i32 [ %174, %173 ], [ %65, %68 ], [ 0, %66 ]
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %178 = load i32, ptr %16, align 8, !tbaa !27
  %179 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %178, i32 %176), !nosanitize !20
  %180 = extractvalue { i32, i1 } %179, 1, !nosanitize !20
  br i1 %180, label %181, label %182, !prof !21, !nosanitize !20

181:                                              ; preds = %175
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

182:                                              ; preds = %175
  %183 = extractvalue { i32, i1 } %179, 0, !nosanitize !20
  %184 = load ptr, ptr %177, align 8, !tbaa !29
  %185 = zext i32 %176 to i64
  %186 = getelementptr inbounds nuw i8, ptr %184, i64 %185
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %187, align 4, !tbaa !17
  %188 = tail call ptr @__errno_location() #17
  store i32 0, ptr %188, align 4, !tbaa !4
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %190

190:                                              ; preds = %209, %182
  %191 = phi i32 [ 0, %182 ], [ %210, %209 ]
  %192 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %183, i32 %191), !nosanitize !20
  %193 = extractvalue { i32, i1 } %192, 1, !nosanitize !20
  br i1 %193, label %194, label %195, !prof !21, !nosanitize !20

194:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

195:                                              ; preds = %190
  %196 = extractvalue { i32, i1 } %192, 0, !nosanitize !20
  %197 = tail call i32 @llvm.umin.i32(i32 %196, i32 1073741824)
  %198 = load i32, ptr %189, align 4, !tbaa !46
  %199 = zext i32 %191 to i64
  %200 = getelementptr inbounds nuw i8, ptr %186, i64 %199
  %201 = zext nneg i32 %197 to i64
  %202 = tail call i64 @read(i32 noundef %198, ptr noundef %200, i64 noundef %201) #13
  %203 = trunc i64 %202 to i32
  %204 = icmp slt i32 %203, 1
  br i1 %204, label %212, label %205

205:                                              ; preds = %195
  %206 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %191, i32 %203), !nosanitize !20
  %207 = extractvalue { i32, i1 } %206, 1, !nosanitize !20
  br i1 %207, label %208, label %209, !prof !21, !nosanitize !20

208:                                              ; preds = %205
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

209:                                              ; preds = %205
  %210 = extractvalue { i32, i1 } %206, 0, !nosanitize !20
  %211 = icmp ult i32 %210, %183
  br i1 %211, label %190, label %225, !llvm.loop !47

212:                                              ; preds = %195
  %213 = icmp slt i32 %203, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %212
  %215 = load i32, ptr %188, align 4, !tbaa !4
  %216 = icmp eq i32 %215, 11
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  store i32 1, ptr %187, align 4, !tbaa !17
  %218 = icmp eq i32 %191, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %217
  %220 = load i32, ptr %188, align 4, !tbaa !4
  br label %222

221:                                              ; preds = %212
  store i32 1, ptr %61, align 8, !tbaa !24
  br label %225

222:                                              ; preds = %219, %214
  %223 = phi i32 [ %220, %219 ], [ %215, %214 ]
  %224 = tail call ptr @strerror(i32 noundef %223) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %224) #13
  br label %269

225:                                              ; preds = %221, %217, %209
  %226 = phi i32 [ %191, %217 ], [ %191, %221 ], [ %210, %209 ]
  %227 = load i32, ptr %64, align 8, !tbaa !34
  %228 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %227, i32 %226), !nosanitize !20
  %229 = extractvalue { i32, i1 } %228, 1, !nosanitize !20
  br i1 %229, label %230, label %231, !prof !21, !nosanitize !20

230:                                              ; preds = %225
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

231:                                              ; preds = %225
  %232 = extractvalue { i32, i1 } %228, 0, !nosanitize !20
  store i32 %232, ptr %64, align 8, !tbaa !34
  %233 = load ptr, ptr %177, align 8, !tbaa !29
  store ptr %233, ptr %15, align 8, !tbaa !35
  br label %234

234:                                              ; preds = %231, %60
  %235 = phi i32 [ %232, %231 ], [ %65, %60 ]
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %269, label %237

237:                                              ; preds = %234
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %239 = load i32, ptr %238, align 4, !tbaa !17
  %240 = icmp ne i32 %239, 0
  %241 = icmp ult i32 %235, 4
  %242 = and i1 %241, %240
  br i1 %242, label %269, label %243

243:                                              ; preds = %237
  %244 = icmp ugt i32 %235, 3
  %245 = load ptr, ptr %15, align 8, !tbaa !35
  br i1 %244, label %246, label %263

246:                                              ; preds = %243
  %247 = load i8, ptr %245, align 1, !tbaa !36
  %248 = icmp eq i8 %247, 31
  br i1 %248, label %249, label %263

249:                                              ; preds = %246
  %250 = getelementptr inbounds nuw i8, ptr %245, i64 1
  %251 = load i8, ptr %250, align 1, !tbaa !36
  %252 = icmp eq i8 %251, -117
  br i1 %252, label %253, label %263

253:                                              ; preds = %249
  %254 = getelementptr inbounds nuw i8, ptr %245, i64 2
  %255 = load i8, ptr %254, align 1, !tbaa !36
  %256 = icmp eq i8 %255, 8
  br i1 %256, label %257, label %263

257:                                              ; preds = %253
  %258 = getelementptr inbounds nuw i8, ptr %245, i64 3
  %259 = load i8, ptr %258, align 1, !tbaa !36
  %260 = icmp ult i8 %259, 32
  br i1 %260, label %261, label %263

261:                                              ; preds = %257
  %262 = tail call i32 @inflateReset(ptr noundef nonnull %15) #13
  store i32 2, ptr %8, align 8, !tbaa !26
  store i32 1, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %269

263:                                              ; preds = %257, %253, %249, %246, %243
  %264 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %265 = load ptr, ptr %264, align 8, !tbaa !30
  %266 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %265, ptr %266, align 8, !tbaa !22
  %267 = zext i32 %235 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %265, ptr align 1 %245, i64 %267, i1 false)
  %268 = load i32, ptr %64, align 8, !tbaa !34
  store i32 %268, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %64, align 8, !tbaa !34
  store i32 1, ptr %8, align 8, !tbaa !26
  br label %269

269:                                              ; preds = %263, %261, %237, %234, %222, %57, %51, %40, %33, %11, %7, %3
  %270 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %271 = load i32, ptr %270, align 8, !tbaa !32
  %272 = icmp eq i32 %271, 1
  %273 = zext i1 %272 to i32
  br label %274

274:                                              ; preds = %269, %1
  %275 = phi i32 [ %273, %269 ], [ 0, %1 ]
  ret i32 %275
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #5

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflateReset(ptr noundef) local_unnamed_addr #2

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
attributes #14 = { nomerge noreturn nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { nounwind willreturn memory(read) }

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
!20 = !{}
!21 = !{!"branch_weights", i32 1, i32 1048575}
!22 = !{!9, !11, i64 8}
!23 = !{!9, !13, i64 16}
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
